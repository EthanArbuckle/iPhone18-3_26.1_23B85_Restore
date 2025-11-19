@interface FedStatsCategoricalType
+ (id)createFromDict:(id)a3 possibleError:(id *)a4;
- (FedStatsCategoricalType)initWithCategories:(id)a3;
- (FedStatsCategoricalType)initWithCategoryFile:(id)a3;
- (FedStatsCategoricalType)initWithCategoryMap:(id)a3 categories:(id)a4;
- (FedStatsCategoricalType)initWithPrefixSize:(id)a3 fragmentSize:(id)a4 prefixTree:(id)a5 filters:(id)a6 tokenizer:(id)a7 preEncoder:(id)a8;
- (id)decodeFromIndex:(id)a3 possibleError:(id *)a4;
- (id)encodeToIndex:(id)a3 possibleError:(id *)a4;
- (id)sampleForIndex:(unint64_t)a3;
- (void)setVersion:(unint64_t)a3;
@end

@implementation FedStatsCategoricalType

- (void)setVersion:(unint64_t)a3
{
  self->_version = a3;
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

- (FedStatsCategoricalType)initWithCategories:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = FedStatsCategoricalType;
  v6 = -[FedStatsBoundedULongType initWithBound:](&v9, sel_initWithBound_, [v5 count]);
  v7 = v6;
  if (v6)
  {
    [(FedStatsCategoricalType *)v6 setVersion:1];
    objc_storeStrong(&v7->_categories, a3);
  }

  return v7;
}

- (FedStatsCategoricalType)initWithCategoryMap:(id)a3 categories:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = FedStatsCategoricalType;
  v9 = -[FedStatsBoundedULongType initWithBound:](&v12, sel_initWithBound_, [v8 count]);
  v10 = v9;
  if (v9)
  {
    [(FedStatsCategoricalType *)v9 setVersion:2];
    objc_storeStrong(&v10->_categoryMap, a3);
    objc_storeStrong(&v10->_categories, a4);
  }

  return v10;
}

- (FedStatsCategoricalType)initWithCategoryFile:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = FedStatsCategoricalType;
  v6 = -[FedStatsBoundedULongType initWithBound:](&v9, sel_initWithBound_, [v5 dimensionality]);
  v7 = v6;
  if (v6)
  {
    [(FedStatsCategoricalType *)v6 setVersion:3];
    objc_storeStrong(&v7->_categoryFile, a3);
  }

  return v7;
}

- (FedStatsCategoricalType)initWithPrefixSize:(id)a3 fragmentSize:(id)a4 prefixTree:(id)a5 filters:(id)a6 tokenizer:(id)a7 preEncoder:(id)a8
{
  v25 = a3;
  v15 = a4;
  v16 = a5;
  v24 = a6;
  v23 = a7;
  v21 = a8;
  if (v16)
  {
    v17 = [v16 dimensionality];
  }

  else
  {
    v17 = 1;
  }

  v26.receiver = self;
  v26.super_class = FedStatsCategoricalType;
  v18 = -[FedStatsBoundedULongType initWithBound:](&v26, sel_initWithBound_, (v17 << [v15 unsignedIntegerValue]) + 1);
  v19 = v18;
  if (v18)
  {
    [(FedStatsCategoricalType *)v18 setVersion:4];
    objc_storeStrong(&v19->_categoryFile, a5);
    objc_storeStrong(&v19->_prefixSize, a3);
    objc_storeStrong(&v19->_fragmentSize, a4);
    objc_storeStrong(&v19->_filters, a6);
    objc_storeStrong(&v19->_tokenizer, a7);
    objc_storeStrong(&v19->_preEncoder, a8);
  }

  return v19;
}

+ (id)createFromDict:(id)a3 possibleError:(id *)a4
{
  v149[4] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [v5 objectForKey:@"categories"];

  v7 = [v5 objectForKey:@"categoryMap"];

  v8 = [v5 objectForKey:@"categoryFile"];

  v9 = [v5 objectForKey:@"prefixSize"];

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
    if (a4)
    {
      v23 = a4;
      v149[0] = @"categories";
      v149[1] = @"categoryMap";
      v149[2] = @"categoryFile";
      v149[3] = @"prefixTreeParameters";
      v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v149 count:4];
      v24 = MEMORY[0x277CCACA8];
      v25 = [v11 componentsJoinedByString:{@", "}];
      v26 = [v24 stringWithFormat:@"You're allowed to have exactly one of {%@} as key in parameters", v25];
      *v23 = [FedStatsError errorWithCode:301 description:v26];

      goto LABEL_23;
    }

LABEL_81:
    v22 = 0;
    goto LABEL_102;
  }

  v117 = a4;
  if (v6)
  {
    v11 = [v5 objectForKey:@"categories"];
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
              if (v117)
              {
                *v117 = [FedStatsError errorWithCode:302 description:v12];
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
        v22 = [[a1 alloc] initWithCategories:v13];
        goto LABEL_59;
      }
    }

    v51 = v117;
    goto LABEL_53;
  }

  if (!v7)
  {
    v51 = a4;
    if (v8)
    {
      v11 = [v5 objectForKey:@"categoryFile"];
      v12 = objc_claimAutoreleasedReturnValue();
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v52 = [v5 objectForKey:@"minIndex"];
        v53 = v52;
        if (v52)
        {
          v54 = [v52 unsignedIntegerValue];
        }

        else
        {
          v54 = 0x7FFFFFFFFFFFFFFFLL;
        }

        v63 = [v5 objectForKey:@"maxIndex"];
        v64 = v63;
        if (v63)
        {
          v65 = [v63 unsignedIntegerValue];
        }

        else
        {
          v65 = 0x7FFFFFFFFFFFFFFFLL;
        }

        v127 = 0;
        v66 = [FedStatsSQLiteCategoryDatabase databaseWithFileURL:v11 minIndex:v54 maxIndex:v65 checkForPrimaryKey:1 error:&v127];
        v67 = v127;
        if (v66)
        {
          v22 = [[a1 alloc] initWithCategoryFile:v66];
        }

        else if (v117)
        {
          [FedStatsError errorWithCode:302 underlyingError:v67 description:@"Cannot create database from the provided URL"];
          *v117 = v22 = 0;
        }

        else
        {
          v22 = 0;
        }

        goto LABEL_59;
      }

LABEL_53:
      if (v51)
      {
        [FedStatsError errorWithCode:302 description:v12];
        *v51 = v22 = 0;
        goto LABEL_59;
      }

LABEL_58:
      v22 = 0;
      goto LABEL_59;
    }

    if (v9)
    {
      v55 = [v5 objectForKey:@"prefixSize"];
      v11 = v55;
      if (v55 && ([v55 integerValue] & 0x8000000000000000) == 0)
      {
        v56 = [v5 objectForKey:@"fragmentSize"];
        v12 = v56;
        if (!v56 || [v56 integerValue] <= 0)
        {
          if (v117)
            v72 = {;
            *v117 = [FedStatsError errorWithCode:101 description:v72];
          }

          goto LABEL_58;
        }

        if ([v11 unsignedIntegerValue])
        {
          v57 = [v5 objectForKey:@"prefixTreeParameters"];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (v117)
              v90 = {;
              *v117 = [FedStatsError errorWithCode:302 description:v90];
            }

            goto LABEL_147;
          }

          v58 = [v57 objectForKey:@"fileName"];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (!v117)
            {
LABEL_146:

LABEL_147:
              goto LABEL_58;
            }
            v61 = ;
            *v117 = [FedStatsError errorWithCode:302 description:v61];
LABEL_145:

            goto LABEL_146;
          }

          v126 = 0;
          v59 = [FedStatsSQLiteCategoryDatabase databaseWithFileURL:v58 minIndex:0 maxIndex:0x7FFFFFFFFFFFFFFFLL checkForPrimaryKey:0 error:&v126];
          v60 = v126;
          v61 = v60;
          if (v117 && !v59)
          {
            *v117 = [FedStatsError errorWithCode:302 underlyingError:v60 description:@"Cannot load prefix tree as database"];
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

        v73 = [v5 objectForKey:@"filters"];
        if (v73)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (v117)
              v116 = {;
              [FedStatsError errorWithCode:101 description:?];
              *v117 = v22 = 0;
            }

            else
            {
              v22 = 0;
            }

            goto LABEL_198;
          }
        }

        v115 = [MEMORY[0x277CBEB18] array];
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
                  if (v117)
                    v79 = {;
                    *v117 = [FedStatsError errorWithCode:101 description:v79];
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
                    if (v117)
                      v81 = {;
                      *v117 = [FedStatsError errorWithCode:101 description:v81];
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
                    if (v117)
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
                    if (v117)
                    {
                      v99 = [FedStatsError errorWithCode:101 underlyingError:v83 description:@"Cannot create filter with given parameters"];
LABEL_181:
                      *v117 = v99;
                    }

                    goto LABEL_183;
                  }

                  [v115 addObject:v82];
                }
              }

              v75 = [v113 countByEnumeratingWithState:&v122 objects:v144 count:16];
            }

            while (v75);
          }

          v51 = v117;
          v73 = obja;
        }

        v84 = [v5 objectForKey:@"tokenizerVariant"];
        if (v84)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (v51)
              v87 = {;
              [FedStatsError errorWithCode:101 description:v87];
              *v51 = v22 = 0;
LABEL_195:

              goto LABEL_196;
            }

            v22 = 0;
LABEL_196:

            v11 = v107;
            goto LABEL_197;
          }

          v85 = [v5 objectForKey:@"tokenizerParameters"];
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
            if (!v51)
            {
LABEL_172:
              v22 = 0;
              v87 = v86;
              goto LABEL_195;
            }
            v89 = ;
            *v117 = [FedStatsError errorWithCode:101 description:v89];
LABEL_171:

            goto LABEL_172;
          }

          v120 = 0;
          v87 = [FedStatsCategoricalTypeTokenizerFactory tokenizerForVariant:v84 parameters:v86 error:&v120];
          v88 = v120;
          v89 = v88;
          if (v51 && !v87)
          {
            *v51 = [FedStatsError errorWithCode:101 underlyingError:v88 description:@"Cannot create tokenizer with given parameters"];
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
        v91 = [v5 objectForKey:@"preEncodingVariant"];
        if (v91)
        {
          objc_opt_class();
          v92 = v91;
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (!v51)
            {
              v22 = 0;
              goto LABEL_194;
            }
            v94 = ;
            [FedStatsError errorWithCode:101 description:v94];
            *v117 = v22 = 0;
LABEL_193:

LABEL_194:
            v73 = objb;

            goto LABEL_195;
          }

          v93 = [v5 objectForKey:@"preEncodingParameters"];
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
            if (!v117)
            {
LABEL_192:
              v22 = 0;
              goto LABEL_193;
            }
            v97 = ;
            v98 = [FedStatsError errorWithCode:101 description:v97];
LABEL_191:
            *v117 = v98;

            goto LABEL_192;
          }

          v119 = 0;
          v95 = [FedStatsCategoricalTypePreEncoderFactory preEncoderForVariant:v92 parameters:v94 error:&v119];
          v96 = v119;
          v97 = v96;
          if (v117 && !v95)
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

        v22 = [[a1 alloc] initWithPrefixSize:v107 fragmentSize:v12 prefixTree:v59 filters:v115 tokenizer:v87 preEncoder:v95];
        v94 = v95;
        goto LABEL_193;
      }

      if (v117)
        v62 = {;
        *v117 = [FedStatsError errorWithCode:101 description:v62];
      }

LABEL_23:
      v22 = 0;
      goto LABEL_101;
    }

    goto LABEL_81;
  }

  v11 = [v5 objectForKey:@"categoryMap"];
  v27 = objc_claimAutoreleasedReturnValue();
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (v117)
    {
      [FedStatsError errorWithCode:302 description:v27];
      *v117 = v22 = 0;
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
        if (v117)
        {
          *v117 = [FedStatsError errorWithCode:302 description:v27];
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

  v34 = [v28 allKeys];
  v35 = [v34 sortedArrayUsingSelector:sel_compare_];

  v108 = [MEMORY[0x277CBEB38] dictionary];
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
  v40 = v117;
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

      v47 = [v108 allKeys];
      v48 = [v47 containsObject:v46];

      if (v48)
      {
        v36 = v105;
        v11 = v106;
        v68 = v117;
        v27 = v103;
        v41 = v104;
        if (v117)
        {
          v69 = @"Subcategories must be distinct";
LABEL_96:
          *v68 = [FedStatsError errorWithCode:302 description:v69];
        }

        goto LABEL_97;
      }

      v49 = [FedStatsCategoricalTypeSubcategory categoryWithSuperCategory:v112 index:v114];
      [v108 setObject:v49 forKey:v46];

      if (v43 == ++v45)
      {
        v43 = [obj countByEnumeratingWithState:&v128 objects:v145 count:16];
        v40 = v117;
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

            v50 = v108;
            v22 = [[a1 alloc] initWithCategoryMap:v108 categories:v36];
            goto LABEL_99;
          }

          goto LABEL_36;
        }

        goto LABEL_37;
      }
    }

    v36 = v105;
    v11 = v106;
    v68 = v117;
    v27 = v103;
    v41 = v104;
    if (v117)
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
  v50 = v108;
LABEL_99:

LABEL_100:
LABEL_101:

LABEL_102:
  v70 = *MEMORY[0x277D85DE8];

  return v22;
}

- (id)encodeToIndex:(id)a3 possibleError:(id *)a4
{
  v62 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [MEMORY[0x277CBEB68] null];
  v8 = [v6 isEqual:v7];

  if (v8)
  {
    goto LABEL_2;
  }

  v12 = [(FedStatsCategoricalType *)self version];
  if (v12 > 2)
  {
    if (v12 == 3)
    {
      v29 = [(FedStatsCategoricalType *)self categoryFile];
      v59 = 0;
      v9 = [v29 encode:v6 error:&v59];
      v30 = v59;

      if (v9)
      {
        v31 = v9;
      }

      else if (a4)
      {
        *a4 = [FedStatsError errorWithCode:401 underlyingError:v30 description:@"Error when encoding categorical type over database"];
      }

      goto LABEL_3;
    }

    if (v12 != 4)
    {
LABEL_23:
      if (a4)
      {
        [FedStatsError errorWithCode:900 description:@"The categorical type version is not supported"];
        *a4 = v9 = 0;
      }

      else
      {
        v9 = 0;
      }

      goto LABEL_3;
    }

    v53 = a4;
    v15 = v6;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v16 = [(FedStatsCategoricalType *)self filters];
    v17 = [v16 countByEnumeratingWithState:&v55 objects:v61 count:16];
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
          objc_enumerationMutation(v16);
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
          v18 = [v16 countByEnumeratingWithState:&v55 objects:v61 count:16];
          if (v18)
          {
            goto LABEL_15;
          }

          goto LABEL_21;
        }
      }

      if (v53)
      {
        v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"Data point filtered out at Stage %lu (not necessarily an error)", v22];
        [FedStatsError errorWithCode:401 description:v26];
        *v53 = v9 = 0;
        goto LABEL_67;
      }

      v9 = 0;
      goto LABEL_68;
    }

LABEL_21:

    v24 = [(FedStatsCategoricalType *)self tokenizer];
    if (v24)
    {
      v25 = [(FedStatsCategoricalType *)self tokenizer];
      v26 = [v25 tokenize:v15];
    }

    else
    {
      v60 = v15;
      v26 = [MEMORY[0x277CBEA60] arrayWithObjects:&v60 count:1];
    }

    v32 = [(FedStatsCategoricalType *)self preEncoder];
    if (v32)
    {
      v33 = [(FedStatsCategoricalType *)self preEncoder];
      v34 = [v33 preEncode:v26];
    }

    else
    {
      v34 = [v26 firstObject];
    }

    if (!v34)
    {
      if (v53)
      {
        [FedStatsError errorWithCode:401 description:@"Data point cannot be tokenized and pre-encoded (not necessarily an error)"];
        *v53 = v9 = 0;
      }

      else
      {
        v9 = 0;
      }

LABEL_66:

      v16 = v15;
LABEL_67:

LABEL_68:
      goto LABEL_3;
    }

    v35 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v34];
    v36 = [(FedStatsCategoricalType *)self prefixSize];
    v37 = [v36 unsignedIntegerValue];

    v38 = [(FedStatsCategoricalType *)self fragmentSize];
    v39 = [v38 unsignedIntegerValue];

    if ([v35 length] <= v37)
    {
      if (v53)
      {
        [FedStatsError errorWithCode:401 description:@"Pre-encoded data length shorter than prefix (not necessarily an error)"];
        *v53 = v9 = 0;
      }

      else
      {
        v9 = 0;
      }

      goto LABEL_65;
    }

    v40 = [v35 stringByPaddingToLength:v39 + v37 withString:@"0" startingAtIndex:0];

    v52 = v40;
    if (v37)
    {
      v41 = [v40 substringToIndex:v37];
      v42 = [(FedStatsCategoricalType *)self categoryFile];
      v54 = 0;
      v43 = [v42 encode:v41 error:&v54];
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

        v48 = v53;
        if (!v53)
        {
          goto LABEL_62;
        }

        v50 = [FedStatsError errorWithCode:401 description:@"Pre-encoded data does not match a prefix (not necessarily an error)"];
        v49 = v51;
      }

      else
      {
        v48 = v53;
        if (!v53)
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
    v45 = [v40 substringWithRange:{v37, v39}];
    v41 = [FedStatsUtils bitStringToInt:v45];

    if (v41)
    {
      v46 = [v43 unsignedIntegerValue] << v39;
      v47 = [v41 unsignedIntegerValue];
      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v47 + v46 + 1];
LABEL_63:
      v49 = v51;
      goto LABEL_64;
    }

LABEL_62:
    v9 = 0;
    goto LABEL_63;
  }

  if (v12 != 1)
  {
    if (v12 == 2)
    {
      v13 = [(FedStatsCategoricalType *)self categoryMap];
      v14 = [v13 objectForKey:v6];

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

  v27 = [(FedStatsCategoricalType *)self categories];
  v28 = [v27 indexOfObject:v6];

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

- (id)decodeFromIndex:(id)a3 possibleError:(id *)a4
{
  v6 = a3;
  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    if (a4)
    {
      v10 = @"The decoder can only work with a non-null number type";
      v11 = 500;
LABEL_8:
      [FedStatsError errorWithCode:v11 description:v10];
      *a4 = v9 = 0;
      goto LABEL_16;
    }

LABEL_15:
    v9 = 0;
    goto LABEL_16;
  }

  v7 = [(FedStatsCategoricalType *)self version];
  if (v7 - 1 < 2)
  {
    if ([v6 unsignedLongValue])
    {
      v8 = [(FedStatsCategoricalType *)self categories];
      v9 = [v8 objectAtIndex:{objc_msgSend(v6, "unsignedLongValue") - 1}];
    }

    else
    {
      v9 = +[FedStatsCategoricalType kOutOfCategories];
    }

    goto LABEL_16;
  }

  if (v7 != 3)
  {
    if (a4)
    {
      v10 = @"The categorical type version is not supported";
      v11 = 900;
      goto LABEL_8;
    }

    goto LABEL_15;
  }

  v12 = [(FedStatsCategoricalType *)self categoryFile];
  v15 = 0;
  v9 = [v12 decode:objc_msgSend(v6 error:{"unsignedLongValue"), &v15}];

  if (v9)
  {
    v13 = v9;
  }

LABEL_16:

  return v9;
}

- (id)sampleForIndex:(unint64_t)a3
{
  if (!a3)
  {
LABEL_6:
    v7 = +[FedStatsCategoricalType kOutOfCategories];
    goto LABEL_8;
  }

  v5 = [(FedStatsCategoricalType *)self version];
  if (v5 == 3)
  {
LABEL_5:
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:a3];
    v7 = [(FedStatsCategoricalType *)self decodeFromIndex:v6 possibleError:0];

    goto LABEL_8;
  }

  if (v5 != 2)
  {
    if (v5 == 1)
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
  v16 = [MEMORY[0x277CBEB18] array];
  v8 = [(FedStatsCategoricalType *)self categoryMap];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __42__FedStatsCategoricalType_sampleForIndex___block_invoke;
  v10[3] = &unk_278FF6218;
  v10[4] = &v11;
  v10[5] = a3;
  [v8 enumerateKeysAndObjectsUsingBlock:v10];

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