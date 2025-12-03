@interface FedStatsCategoricalType
+ (id)createFromDict:(id)dict possibleError:(id *)error;
- (FedStatsCategoricalType)initWithCategories:(id)categories;
- (FedStatsCategoricalType)initWithCategoryFile:(id)file;
- (FedStatsCategoricalType)initWithCategoryMap:(id)map categories:(id)categories;
- (FedStatsCategoricalType)initWithPrefixSize:(id)size fragmentSize:(id)fragmentSize prefixTree:(id)tree filters:(id)filters tokenizer:(id)tokenizer preEncoder:(id)encoder;
- (id)decodeFromIndex:(id)index possibleError:(id *)error;
- (id)encodeToIndex:(id)index possibleError:(id *)error;
- (id)sampleForIndex:(unint64_t)index;
- (void)setVersion:(unint64_t)version;
@end

@implementation FedStatsCategoricalType

- (void)setVersion:(unint64_t)version
{
  self->_version = version;
  categories = self->_categories;
  self->_categories = 0;

  categoryMap = self->_categoryMap;
  self->_categoryMap = 0;

  categoryFile = self->_categoryFile;
  self->_categoryFile = 0;

  preEncoder = self->_preEncoder;
  self->_preEncoder = 0;

  filters = self->_filters;
  self->_filters = 0;

  prefixSize = self->_prefixSize;
  self->_prefixSize = 0;

  fragmentSize = self->_fragmentSize;
  self->_fragmentSize = 0;
}

- (FedStatsCategoricalType)initWithCategories:(id)categories
{
  categoriesCopy = categories;
  v9.receiver = self;
  v9.super_class = FedStatsCategoricalType;
  v6 = -[FedStatsBoundedULongType initWithBound:](&v9, sel_initWithBound_, [categoriesCopy count]);
  v7 = v6;
  if (v6)
  {
    [(FedStatsCategoricalType *)v6 setVersion:1];
    objc_storeStrong(&v7->_categories, categories);
  }

  return v7;
}

- (FedStatsCategoricalType)initWithCategoryMap:(id)map categories:(id)categories
{
  mapCopy = map;
  categoriesCopy = categories;
  v12.receiver = self;
  v12.super_class = FedStatsCategoricalType;
  v9 = -[FedStatsBoundedULongType initWithBound:](&v12, sel_initWithBound_, [categoriesCopy count]);
  v10 = v9;
  if (v9)
  {
    [(FedStatsCategoricalType *)v9 setVersion:2];
    objc_storeStrong(&v10->_categoryMap, map);
    objc_storeStrong(&v10->_categories, categories);
  }

  return v10;
}

- (FedStatsCategoricalType)initWithCategoryFile:(id)file
{
  fileCopy = file;
  v9.receiver = self;
  v9.super_class = FedStatsCategoricalType;
  v6 = -[FedStatsBoundedULongType initWithBound:](&v9, sel_initWithBound_, [fileCopy dimensionality]);
  v7 = v6;
  if (v6)
  {
    [(FedStatsCategoricalType *)v6 setVersion:3];
    objc_storeStrong(&v7->_categoryFile, file);
  }

  return v7;
}

- (FedStatsCategoricalType)initWithPrefixSize:(id)size fragmentSize:(id)fragmentSize prefixTree:(id)tree filters:(id)filters tokenizer:(id)tokenizer preEncoder:(id)encoder
{
  sizeCopy = size;
  fragmentSizeCopy = fragmentSize;
  treeCopy = tree;
  filtersCopy = filters;
  tokenizerCopy = tokenizer;
  encoderCopy = encoder;
  if (treeCopy)
  {
    dimensionality = [treeCopy dimensionality];
  }

  else
  {
    dimensionality = 1;
  }

  v26.receiver = self;
  v26.super_class = FedStatsCategoricalType;
  v18 = -[FedStatsBoundedULongType initWithBound:](&v26, sel_initWithBound_, (dimensionality << [fragmentSizeCopy unsignedIntegerValue]) + 1);
  v19 = v18;
  if (v18)
  {
    [(FedStatsCategoricalType *)v18 setVersion:4];
    objc_storeStrong(&v19->_categoryFile, tree);
    objc_storeStrong(&v19->_prefixSize, size);
    objc_storeStrong(&v19->_fragmentSize, fragmentSize);
    objc_storeStrong(&v19->_filters, filters);
    objc_storeStrong(&v19->_tokenizer, tokenizer);
    objc_storeStrong(&v19->_preEncoder, encoder);
  }

  return v19;
}

+ (id)createFromDict:(id)dict possibleError:(id *)error
{
  v149[4] = *MEMORY[0x277D85DE8];
  dictCopy = dict;
  v6 = [dictCopy objectForKey:@"categories"];

  v7 = [dictCopy objectForKey:@"categoryMap"];

  v8 = [dictCopy objectForKey:@"categoryFile"];

  v9 = [dictCopy objectForKey:@"prefixSize"];

  if (v7)
  {
    v10 = (v6 != 0) + 1;
  }

  else
  {
    v10 = v6 != 0;
  }

  if (v8)
  {
    ++v10;
  }

  if (v9)
  {
    ++v10;
  }

  if (v10 != 1)
  {
    if (error)
    {
      errorCopy = error;
      v149[0] = @"categories";
      v149[1] = @"categoryMap";
      v149[2] = @"categoryFile";
      v149[3] = @"prefixTreeParameters";
      v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v149 count:4];
      v24 = MEMORY[0x277CCACA8];
      v25 = [v11 componentsJoinedByString:{@", "}];
      v26 = [v24 stringWithFormat:@"You're allowed to have exactly one of {%@} as key in parameters", v25];
      *errorCopy = [FedStatsError errorWithCode:301 description:v26];

      goto LABEL_23;
    }

LABEL_81:
    v22 = 0;
    goto LABEL_102;
  }

  errorCopy2 = error;
  if (v6)
  {
    v11 = [dictCopy objectForKey:@"categories"];
    v12 = objc_claimAutoreleasedReturnValue();
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v142 = 0u;
      v143 = 0u;
      v140 = 0u;
      v141 = 0u;
      v13 = v11;
      v14 = [v13 countByEnumeratingWithState:&v140 objects:v148 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v141;
        while (2)
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v141 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v140 + 1) + 8 * i);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              if (errorCopy2)
              {
                *errorCopy2 = [FedStatsError errorWithCode:302 description:v12];
              }

              goto LABEL_58;
            }
          }

          v15 = [v13 countByEnumeratingWithState:&v140 objects:v148 count:16];
          if (v15)
          {
            continue;
          }

          break;
        }
      }

      v19 = [MEMORY[0x277CBEB98] setWithArray:v13];
      v20 = [v19 count];
      v21 = [v13 count];

      if (v20 == v21)
      {
        v22 = [[self alloc] initWithCategories:v13];
        goto LABEL_59;
      }
    }

    errorCopy3 = errorCopy2;
    goto LABEL_53;
  }

  if (!v7)
  {
    errorCopy3 = error;
    if (v8)
    {
      v11 = [dictCopy objectForKey:@"categoryFile"];
      v12 = objc_claimAutoreleasedReturnValue();
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v52 = [dictCopy objectForKey:@"minIndex"];
        v53 = v52;
        if (v52)
        {
          unsignedIntegerValue = [v52 unsignedIntegerValue];
        }

        else
        {
          unsignedIntegerValue = 0x7FFFFFFFFFFFFFFFLL;
        }

        v63 = [dictCopy objectForKey:@"maxIndex"];
        v64 = v63;
        if (v63)
        {
          unsignedIntegerValue2 = [v63 unsignedIntegerValue];
        }

        else
        {
          unsignedIntegerValue2 = 0x7FFFFFFFFFFFFFFFLL;
        }

        v127 = 0;
        v66 = [FedStatsSQLiteCategoryDatabase databaseWithFileURL:v11 minIndex:unsignedIntegerValue maxIndex:unsignedIntegerValue2 checkForPrimaryKey:1 error:&v127];
        v67 = v127;
        if (v66)
        {
          v22 = [[self alloc] initWithCategoryFile:v66];
        }

        else if (errorCopy2)
        {
          [FedStatsError errorWithCode:302 underlyingError:v67 description:@"Cannot create database from the provided URL"];
          *errorCopy2 = v22 = 0;
        }

        else
        {
          v22 = 0;
        }

        goto LABEL_59;
      }

LABEL_53:
      if (errorCopy3)
      {
        [FedStatsError errorWithCode:302 description:v12];
        *errorCopy3 = v22 = 0;
        goto LABEL_59;
      }

LABEL_58:
      v22 = 0;
      goto LABEL_59;
    }

    if (v9)
    {
      v55 = [dictCopy objectForKey:@"prefixSize"];
      v11 = v55;
      if (v55 && ([v55 integerValue] & 0x8000000000000000) == 0)
      {
        v56 = [dictCopy objectForKey:@"fragmentSize"];
        v12 = v56;
        if (!v56 || [v56 integerValue] <= 0)
        {
          if (errorCopy2)
            v72 = {;
            *errorCopy2 = [FedStatsError errorWithCode:101 description:v72];
          }

          goto LABEL_58;
        }

        if ([v11 unsignedIntegerValue])
        {
          v57 = [dictCopy objectForKey:@"prefixTreeParameters"];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (errorCopy2)
              v90 = {;
              *errorCopy2 = [FedStatsError errorWithCode:302 description:v90];
            }

            goto LABEL_147;
          }

          v58 = [v57 objectForKey:@"fileName"];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (!errorCopy2)
            {
LABEL_146:

LABEL_147:
              goto LABEL_58;
            }
            v61 = ;
            *errorCopy2 = [FedStatsError errorWithCode:302 description:v61];
LABEL_145:

            goto LABEL_146;
          }

          v126 = 0;
          v59 = [FedStatsSQLiteCategoryDatabase databaseWithFileURL:v58 minIndex:0 maxIndex:0x7FFFFFFFFFFFFFFFLL checkForPrimaryKey:0 error:&v126];
          v60 = v126;
          v61 = v60;
          if (errorCopy2 && !v59)
          {
            *errorCopy2 = [FedStatsError errorWithCode:302 underlyingError:v60 description:@"Cannot load prefix tree as database"];
            goto LABEL_145;
          }

          if (!v59)
          {
            goto LABEL_58;
          }
        }

        else
        {
          v59 = 0;
        }

        v73 = [dictCopy objectForKey:@"filters"];
        if (v73)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (errorCopy2)
              v116 = {;
              [FedStatsError errorWithCode:101 description:?];
              *errorCopy2 = v22 = 0;
            }

            else
            {
              v22 = 0;
            }

            goto LABEL_198;
          }
        }

        array = [MEMORY[0x277CBEB18] array];
        v107 = v11;
        if (v73)
        {
          obja = v73;
          v124 = 0u;
          v125 = 0u;
          v122 = 0u;
          v123 = 0u;
          v113 = v73;
          v74 = [v113 countByEnumeratingWithState:&v122 objects:v144 count:16];
          if (v74)
          {
            v75 = v74;
            v76 = *v123;
            do
            {
              for (j = 0; j != v75; ++j)
              {
                if (*v123 != v76)
                {
                  objc_enumerationMutation(v113);
                }

                v78 = *(*(&v122 + 1) + 8 * j);
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  v73 = obja;
                  if (errorCopy2)
                    v79 = {;
                    *errorCopy2 = [FedStatsError errorWithCode:101 description:v79];
                    goto LABEL_184;
                  }

                  goto LABEL_185;
                }

                v79 = [v78 objectForKey:@"filterVariant"];
                if (v79)
                {
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
                    if (errorCopy2)
                      v81 = {;
                      *errorCopy2 = [FedStatsError errorWithCode:101 description:v81];
                      goto LABEL_183;
                    }

                    v73 = obja;
                    goto LABEL_184;
                  }

                  v80 = [v78 objectForKey:@"filterParameters"];
                  if (v80)
                  {
                    v81 = v80;
                  }

                  else
                  {
                    v81 = MEMORY[0x277CBEC10];
                  }

                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
                    if (errorCopy2)
                      v83 = {;
                      v99 = [FedStatsError errorWithCode:101 description:v83];
                      goto LABEL_181;
                    }

LABEL_183:
                    v73 = obja;

LABEL_184:
LABEL_185:

                    v22 = 0;
                    v11 = v107;
LABEL_197:

LABEL_198:
LABEL_59:

                    goto LABEL_101;
                  }

                  v121 = 0;
                  v82 = [FedStatsCategoricalTypeFilterFactory filterForVariant:v79 parameters:v81 error:&v121];
                  v83 = v121;
                  if (!v82)
                  {
                    if (errorCopy2)
                    {
                      v99 = [FedStatsError errorWithCode:101 underlyingError:v83 description:@"Cannot create filter with given parameters"];
LABEL_181:
                      *errorCopy2 = v99;
                    }

                    goto LABEL_183;
                  }

                  [array addObject:v82];
                }
              }

              v75 = [v113 countByEnumeratingWithState:&v122 objects:v144 count:16];
            }

            while (v75);
          }

          errorCopy3 = errorCopy2;
          v73 = obja;
        }

        v84 = [dictCopy objectForKey:@"tokenizerVariant"];
        if (v84)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (errorCopy3)
              v87 = {;
              [FedStatsError errorWithCode:101 description:v87];
              *errorCopy3 = v22 = 0;
LABEL_195:

              goto LABEL_196;
            }

            v22 = 0;
LABEL_196:

            v11 = v107;
            goto LABEL_197;
          }

          v85 = [dictCopy objectForKey:@"tokenizerParameters"];
          if (v85)
          {
            v86 = v85;
          }

          else
          {
            v86 = MEMORY[0x277CBEC10];
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (!errorCopy3)
            {
LABEL_172:
              v22 = 0;
              v87 = v86;
              goto LABEL_195;
            }
            v89 = ;
            *errorCopy2 = [FedStatsError errorWithCode:101 description:v89];
LABEL_171:

            goto LABEL_172;
          }

          v120 = 0;
          v87 = [FedStatsCategoricalTypeTokenizerFactory tokenizerForVariant:v84 parameters:v86 error:&v120];
          v88 = v120;
          v89 = v88;
          if (errorCopy3 && !v87)
          {
            *errorCopy3 = [FedStatsError errorWithCode:101 underlyingError:v88 description:@"Cannot create tokenizer with given parameters"];
            goto LABEL_171;
          }

          if (!v87)
          {
            v22 = 0;
            goto LABEL_196;
          }
        }

        else
        {
          v87 = 0;
        }

        objb = v73;
        v91 = [dictCopy objectForKey:@"preEncodingVariant"];
        if (v91)
        {
          objc_opt_class();
          v92 = v91;
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (!errorCopy3)
            {
              v22 = 0;
              goto LABEL_194;
            }
            v94 = ;
            [FedStatsError errorWithCode:101 description:v94];
            *errorCopy2 = v22 = 0;
LABEL_193:

LABEL_194:
            v73 = objb;

            goto LABEL_195;
          }

          v93 = [dictCopy objectForKey:@"preEncodingParameters"];
          if (v93)
          {
            v94 = v93;
          }

          else
          {
            v94 = MEMORY[0x277CBEC10];
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (!errorCopy2)
            {
LABEL_192:
              v22 = 0;
              goto LABEL_193;
            }
            v97 = ;
            v98 = [FedStatsError errorWithCode:101 description:v97];
LABEL_191:
            *errorCopy2 = v98;

            goto LABEL_192;
          }

          v119 = 0;
          v95 = [FedStatsCategoricalTypePreEncoderFactory preEncoderForVariant:v92 parameters:v94 error:&v119];
          v96 = v119;
          v97 = v96;
          if (errorCopy2 && !v95)
          {
            v98 = [FedStatsError errorWithCode:101 underlyingError:v96 description:@"Cannot create pre-encoder with given parameters"];
            goto LABEL_191;
          }

          if (!v95)
          {
            v22 = 0;
            goto LABEL_194;
          }
        }

        else
        {
          v92 = 0;
          v95 = 0;
        }

        v22 = [[self alloc] initWithPrefixSize:v107 fragmentSize:v12 prefixTree:v59 filters:array tokenizer:v87 preEncoder:v95];
        v94 = v95;
        goto LABEL_193;
      }

      if (errorCopy2)
        v62 = {;
        *errorCopy2 = [FedStatsError errorWithCode:101 description:v62];
      }

LABEL_23:
      v22 = 0;
      goto LABEL_101;
    }

    goto LABEL_81;
  }

  v11 = [dictCopy objectForKey:@"categoryMap"];
  v27 = objc_claimAutoreleasedReturnValue();
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (errorCopy2)
    {
      [FedStatsError errorWithCode:302 description:v27];
      *errorCopy2 = v22 = 0;
      goto LABEL_100;
    }

    goto LABEL_69;
  }

  v138 = 0u;
  v139 = 0u;
  v136 = 0u;
  v137 = 0u;
  v28 = v11;
  v29 = [v28 countByEnumeratingWithState:&v136 objects:v147 count:16];
  if (!v29)
  {
    goto LABEL_34;
  }

  v30 = v29;
  v31 = *v137;
  do
  {
    for (k = 0; k != v30; ++k)
    {
      if (*v137 != v31)
      {
        objc_enumerationMutation(v28);
      }

      v33 = *(*(&v136 + 1) + 8 * k);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (errorCopy2)
        {
          *errorCopy2 = [FedStatsError errorWithCode:302 description:v27];
        }

LABEL_69:
        v22 = 0;
        goto LABEL_100;
      }
    }

    v30 = [v28 countByEnumeratingWithState:&v136 objects:v147 count:16];
  }

  while (v30);
LABEL_34:

  allKeys = [v28 allKeys];
  v35 = [allKeys sortedArrayUsingSelector:sel_compare_];

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v132 = 0u;
  v133 = 0u;
  v134 = 0u;
  v135 = 0u;
  v36 = v35;
  v37 = [v36 countByEnumeratingWithState:&v132 objects:v146 count:16];
  if (!v37)
  {
    goto LABEL_51;
  }

  v114 = 0;
  v38 = *v133;
  v105 = v36;
  v106 = v11;
LABEL_36:
  v39 = 0;
  v40 = errorCopy2;
  v101 = v37;
LABEL_37:
  if (*v133 != v38)
  {
    objc_enumerationMutation(v36);
  }

  v102 = v39;
  v112 = *(*(&v132 + 1) + 8 * v39);
  v41 = [v28 objectForKey:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v130 = 0u;
    v131 = 0u;
    v128 = 0u;
    v129 = 0u;
    v104 = v41;
    obj = v41;
    v42 = [obj countByEnumeratingWithState:&v128 objects:v145 count:16];
    if (!v42)
    {
      goto LABEL_49;
    }

    v43 = v42;
    v44 = *v129;
    v103 = v27;
    v100 = v38;
LABEL_42:
    v45 = 0;
    while (1)
    {
      if (*v129 != v44)
      {
        objc_enumerationMutation(obj);
      }

      v46 = *(*(&v128 + 1) + 8 * v45);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        break;
      }

      allKeys2 = [dictionary allKeys];
      v48 = [allKeys2 containsObject:v46];

      if (v48)
      {
        v36 = v105;
        v11 = v106;
        v68 = errorCopy2;
        v27 = v103;
        v41 = v104;
        if (errorCopy2)
        {
          v69 = @"Subcategories must be distinct";
LABEL_96:
          *v68 = [FedStatsError errorWithCode:302 description:v69];
        }

        goto LABEL_97;
      }

      v49 = [FedStatsCategoricalTypeSubcategory categoryWithSuperCategory:v112 index:v114];
      [dictionary setObject:v49 forKey:v46];

      if (v43 == ++v45)
      {
        v43 = [obj countByEnumeratingWithState:&v128 objects:v145 count:16];
        v40 = errorCopy2;
        v27 = v103;
        v38 = v100;
        if (v43)
        {
          goto LABEL_42;
        }

LABEL_49:

        ++v114;
        v39 = v102 + 1;
        v36 = v105;
        v11 = v106;
        if (v102 + 1 == v101)
        {
          v37 = [v105 countByEnumeratingWithState:&v132 objects:v146 count:16];
          if (!v37)
          {
LABEL_51:

            v50 = dictionary;
            v22 = [[self alloc] initWithCategoryMap:dictionary categories:v36];
            goto LABEL_99;
          }

          goto LABEL_36;
        }

        goto LABEL_37;
      }
    }

    v36 = v105;
    v11 = v106;
    v68 = errorCopy2;
    v27 = v103;
    v41 = v104;
    if (errorCopy2)
    {
      v69 = v103;
      goto LABEL_96;
    }

LABEL_97:

    goto LABEL_98;
  }

  if (v40)
  {
    *v40 = [FedStatsError errorWithCode:302 description:v27];
  }

LABEL_98:

  v22 = 0;
  v50 = dictionary;
LABEL_99:

LABEL_100:
LABEL_101:

LABEL_102:
  v70 = *MEMORY[0x277D85DE8];

  return v22;
}

- (id)encodeToIndex:(id)index possibleError:(id *)error
{
  v62 = *MEMORY[0x277D85DE8];
  indexCopy = index;
  null = [MEMORY[0x277CBEB68] null];
  v8 = [indexCopy isEqual:null];

  if (v8)
  {
    goto LABEL_2;
  }

  version = [(FedStatsCategoricalType *)self version];
  if (version > 2)
  {
    if (version == 3)
    {
      categoryFile = [(FedStatsCategoricalType *)self categoryFile];
      v59 = 0;
      v9 = [categoryFile encode:indexCopy error:&v59];
      v30 = v59;

      if (v9)
      {
        v31 = v9;
      }

      else if (error)
      {
        *error = [FedStatsError errorWithCode:401 underlyingError:v30 description:@"Error when encoding categorical type over database"];
      }

      goto LABEL_3;
    }

    if (version != 4)
    {
LABEL_23:
      if (error)
      {
        [FedStatsError errorWithCode:900 description:@"The categorical type version is not supported"];
        *error = v9 = 0;
      }

      else
      {
        v9 = 0;
      }

      goto LABEL_3;
    }

    errorCopy = error;
    v15 = indexCopy;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    filters = [(FedStatsCategoricalType *)self filters];
    v17 = [filters countByEnumeratingWithState:&v55 objects:v61 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = 0;
      v20 = *v56;
LABEL_15:
      v21 = 0;
      v22 = v19;
      v19 += v18;
      v23 = v15;
      while (1)
      {
        if (*v56 != v20)
        {
          objc_enumerationMutation(filters);
        }

        v15 = [*(*(&v55 + 1) + 8 * v21) filter:v23];

        if (!v15)
        {
          break;
        }

        ++v22;
        ++v21;
        v23 = v15;
        if (v18 == v21)
        {
          v18 = [filters countByEnumeratingWithState:&v55 objects:v61 count:16];
          if (v18)
          {
            goto LABEL_15;
          }

          goto LABEL_21;
        }
      }

      if (errorCopy)
      {
        v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"Data point filtered out at Stage %lu (not necessarily an error)", v22];
        [FedStatsError errorWithCode:401 description:v26];
        *errorCopy = v9 = 0;
        goto LABEL_67;
      }

      v9 = 0;
      goto LABEL_68;
    }

LABEL_21:

    tokenizer = [(FedStatsCategoricalType *)self tokenizer];
    if (tokenizer)
    {
      tokenizer2 = [(FedStatsCategoricalType *)self tokenizer];
      v26 = [tokenizer2 tokenize:v15];
    }

    else
    {
      v60 = v15;
      v26 = [MEMORY[0x277CBEA60] arrayWithObjects:&v60 count:1];
    }

    preEncoder = [(FedStatsCategoricalType *)self preEncoder];
    if (preEncoder)
    {
      preEncoder2 = [(FedStatsCategoricalType *)self preEncoder];
      firstObject = [preEncoder2 preEncode:v26];
    }

    else
    {
      firstObject = [v26 firstObject];
    }

    if (!firstObject)
    {
      if (errorCopy)
      {
        [FedStatsError errorWithCode:401 description:@"Data point cannot be tokenized and pre-encoded (not necessarily an error)"];
        *errorCopy = v9 = 0;
      }

      else
      {
        v9 = 0;
      }

LABEL_66:

      filters = v15;
LABEL_67:

LABEL_68:
      goto LABEL_3;
    }

    v35 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", firstObject];
    prefixSize = [(FedStatsCategoricalType *)self prefixSize];
    unsignedIntegerValue = [prefixSize unsignedIntegerValue];

    fragmentSize = [(FedStatsCategoricalType *)self fragmentSize];
    unsignedIntegerValue2 = [fragmentSize unsignedIntegerValue];

    if ([v35 length] <= unsignedIntegerValue)
    {
      if (errorCopy)
      {
        [FedStatsError errorWithCode:401 description:@"Pre-encoded data length shorter than prefix (not necessarily an error)"];
        *errorCopy = v9 = 0;
      }

      else
      {
        v9 = 0;
      }

      goto LABEL_65;
    }

    v40 = [v35 stringByPaddingToLength:unsignedIntegerValue2 + unsignedIntegerValue withString:@"0" startingAtIndex:0];

    v52 = v40;
    if (unsignedIntegerValue)
    {
      v41 = [v40 substringToIndex:unsignedIntegerValue];
      categoryFile2 = [(FedStatsCategoricalType *)self categoryFile];
      v54 = 0;
      v43 = [categoryFile2 encode:v41 error:&v54];
      v51 = v54;

      if (v43)
      {
        if ([v43 unsignedIntegerValue])
        {
          v44 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v43, "unsignedIntegerValue") - 1}];

          v43 = v44;
          v40 = v52;
          goto LABEL_54;
        }

        v48 = errorCopy;
        if (!errorCopy)
        {
          goto LABEL_62;
        }

        v50 = [FedStatsError errorWithCode:401 description:@"Pre-encoded data does not match a prefix (not necessarily an error)"];
        v49 = v51;
      }

      else
      {
        v48 = errorCopy;
        if (!errorCopy)
        {
          goto LABEL_62;
        }

        v49 = v51;
        v50 = [FedStatsError errorWithCode:401 underlyingError:v51 description:@"Error when encoding prefix over prefix tree"];
      }

      v9 = 0;
      *v48 = v50;
LABEL_64:

      v35 = v52;
LABEL_65:

      goto LABEL_66;
    }

    v51 = 0;
    v43 = &unk_285E12CE0;
LABEL_54:
    v45 = [v40 substringWithRange:{unsignedIntegerValue, unsignedIntegerValue2}];
    v41 = [FedStatsUtils bitStringToInt:v45];

    if (v41)
    {
      v46 = [v43 unsignedIntegerValue] << unsignedIntegerValue2;
      unsignedIntegerValue3 = [v41 unsignedIntegerValue];
      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntegerValue3 + v46 + 1];
LABEL_63:
      v49 = v51;
      goto LABEL_64;
    }

LABEL_62:
    v9 = 0;
    goto LABEL_63;
  }

  if (version != 1)
  {
    if (version == 2)
    {
      categoryMap = [(FedStatsCategoricalType *)self categoryMap];
      v14 = [categoryMap objectForKey:indexCopy];

      if (v14)
      {
        v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v14, "index") + 1}];
      }

      else
      {
        v9 = &unk_285E12CE0;
      }

      goto LABEL_3;
    }

    goto LABEL_23;
  }

  categories = [(FedStatsCategoricalType *)self categories];
  v28 = [categories indexOfObject:indexCopy];

  if (v28 == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_2:
    v9 = &unk_285E12CE0;
    goto LABEL_3;
  }

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v28 + 1];
LABEL_3:

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)decodeFromIndex:(id)index possibleError:(id *)error
{
  indexCopy = index;
  if (!indexCopy || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    if (error)
    {
      v10 = @"The decoder can only work with a non-null number type";
      v11 = 500;
LABEL_8:
      [FedStatsError errorWithCode:v11 description:v10];
      *error = v9 = 0;
      goto LABEL_16;
    }

LABEL_15:
    v9 = 0;
    goto LABEL_16;
  }

  version = [(FedStatsCategoricalType *)self version];
  if (version - 1 < 2)
  {
    if ([indexCopy unsignedLongValue])
    {
      categories = [(FedStatsCategoricalType *)self categories];
      v9 = [categories objectAtIndex:{objc_msgSend(indexCopy, "unsignedLongValue") - 1}];
    }

    else
    {
      v9 = +[FedStatsCategoricalType kOutOfCategories];
    }

    goto LABEL_16;
  }

  if (version != 3)
  {
    if (error)
    {
      v10 = @"The categorical type version is not supported";
      v11 = 900;
      goto LABEL_8;
    }

    goto LABEL_15;
  }

  categoryFile = [(FedStatsCategoricalType *)self categoryFile];
  v15 = 0;
  v9 = [categoryFile decode:objc_msgSend(indexCopy error:{"unsignedLongValue"), &v15}];

  if (v9)
  {
    v13 = v9;
  }

LABEL_16:

  return v9;
}

- (id)sampleForIndex:(unint64_t)index
{
  if (!index)
  {
LABEL_6:
    v7 = +[FedStatsCategoricalType kOutOfCategories];
    goto LABEL_8;
  }

  version = [(FedStatsCategoricalType *)self version];
  if (version == 3)
  {
LABEL_5:
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:index];
    v7 = [(FedStatsCategoricalType *)self decodeFromIndex:v6 possibleError:0];

    goto LABEL_8;
  }

  if (version != 2)
  {
    if (version == 1)
    {
      goto LABEL_5;
    }

    goto LABEL_6;
  }

  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy_;
  v15 = __Block_byref_object_dispose_;
  array = [MEMORY[0x277CBEB18] array];
  categoryMap = [(FedStatsCategoricalType *)self categoryMap];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __42__FedStatsCategoricalType_sampleForIndex___block_invoke;
  v10[3] = &unk_278FF6218;
  v10[4] = &v11;
  v10[5] = index;
  [categoryMap enumerateKeysAndObjectsUsingBlock:v10];

  v7 = [v12[5] objectAtIndex:{arc4random_uniform(objc_msgSend(v12[5], "count"))}];
  _Block_object_dispose(&v11, 8);

LABEL_8:

  return v7;
}

void __42__FedStatsCategoricalType_sampleForIndex___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = *(a1 + 40) - 1;
  if (v5 == [a3 index])
  {
    [*(*(*(a1 + 32) + 8) + 40) addObject:v6];
  }
}

@end