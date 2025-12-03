@interface CPMLSchema
- (BOOL)hasOptions:(unint64_t)options;
- (BOOL)isColumnContinous:(unsigned int)continous;
- (BOOL)isIntType:(unint64_t)type;
- (BOOL)isNumType:(unint64_t)type;
- (BOOL)isRealType:(unint64_t)type;
- (BOOL)isStringType:(unint64_t)type;
- (BOOL)isVectorType:(unint64_t)type;
- (BOOL)matchSubstituteValue:(unint64_t)value theValue:(id)theValue;
- (CPMLSchema)initWithPlist:(id)plist;
- (id)getSubstituteValue:(unint64_t)value;
- (id)getUserDefinedCategoricalData:(unint64_t)data;
- (id)init:(id)init;
- (int)getColumnPosition:(id)position;
- (int)getSchemaType:(unint64_t)type;
- (int)getVectorContent:(unint64_t)content;
- (unint64_t)getUserDefinedCategoricalDataCount:(unint64_t)count;
@end

@implementation CPMLSchema

- (id)init:(id)init
{
  v5.receiver = self;
  v5.super_class = CPMLSchema;
  v3 = [(CPMLSchema *)&v5 init];
  if (v3)
  {
    NSLog(&cfstr_WarningNoSchem.isa);
  }

  return v3;
}

- (CPMLSchema)initWithPlist:(id)plist
{
  v85 = *MEMORY[0x277D85DE8];
  plistCopy = plist;
  v83.receiver = self;
  v83.super_class = CPMLSchema;
  v5 = [(CPMLSchema *)&v83 init];
  if (v5)
  {
    v65 = plistCopy;
    v6 = [plistCopy objectForKey:@"schema"];
    schema = v5->schema;
    v5->schema = v6;

    v8 = objc_opt_new();
    attribute = v5->attribute;
    v5->attribute = v8;

    v10 = objc_opt_new();
    schemaHDef = v5->schemaHDef;
    v5->schemaHDef = v10;

    v12 = objc_opt_new();
    schemaHeaderWithType = v5->schemaHeaderWithType;
    v5->schemaHeaderWithType = v12;

    v14 = objc_opt_new();
    nsRemapTable = v5->nsRemapTable;
    v5->nsRemapTable = v14;

    v16 = objc_opt_new();
    availableOptions = v5->availableOptions;
    v5->availableOptions = v16;

    v18 = objc_opt_new();
    categoricalDataList = v5->_categoricalDataList;
    v5->_categoricalDataList = v18;

    v20 = objc_opt_new();
    replaceMissingValue = v5->_replaceMissingValue;
    v5->_replaceMissingValue = v20;

    v22 = objc_opt_new();
    matchReplaceValue = v5->_matchReplaceValue;
    v5->_matchReplaceValue = v22;

    v5->yColumnPosition = [(NSMutableArray *)v5->schema count]- 1;
    if ([(NSMutableArray *)v5->schema count])
    {
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v66 = v5;
      do
      {
        v76 = v24;
        v27 = [(NSMutableArray *)v5->schema objectAtIndexedSubscript:v26];
        v28 = [v27 objectForKey:@"Header"];
        v29 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"CPMLcol%ld_", v26];
        v75 = v28;
        v30 = [v28 stringByReplacingOccurrencesOfString:@" " withString:@"_"];
        v31 = [v30 stringByReplacingOccurrencesOfString:@"-" withString:@"_"];

        v32 = objc_opt_new();
        v74 = v29;
        [v32 appendString:v29];
        v73 = v31;
        [v32 appendString:v31];
        v72 = v32;
        [(NSMutableArray *)v5->attribute addObject:v32];
        v71 = [v27 objectForKey:@"HeaderDef"];
        [(NSMutableArray *)v5->schemaHDef addObject:?];
        v78 = v27;
        v33 = [v27 objectForKey:@"reMapTable"];
        v34 = v5->nsRemapTable;
        v70 = v33;
        if (v33)
        {
          [(NSMutableArray *)v34 addObject:v33];
        }

        else
        {
          v35 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:v25];
          [(NSMutableArray *)v34 addObject:v35];
        }

        v24 = v76;
        v36 = [v27 objectForKey:@"predictedValue"];
        v37 = v36;
        if (!((v36 == 0) | v76 & 1))
        {
          if ([v36 BOOLValue])
          {
            v5->yColumnPosition = v25;
            v24 = 1;
          }

          else
          {
            v24 = 0;
          }
        }

        v38 = [v27 objectForKey:@"Options"];
        v39 = v5->availableOptions;
        if (v38)
        {
          [(NSMutableArray *)v5->availableOptions addObject:v38];
        }

        else
        {
          null = [MEMORY[0x277CBEB68] null];
          [(NSMutableArray *)v39 addObject:null];
        }

        v41 = [v78 objectForKey:@"categoricalData"];
        v69 = v41;
        if (v41)
        {
          v42 = v41;
          v77 = v24;
          v67 = v26;
          v68 = v25;
          v43 = objc_opt_new();
          v79 = 0u;
          v80 = 0u;
          v81 = 0u;
          v82 = 0u;
          v44 = v42;
          v45 = [v44 countByEnumeratingWithState:&v79 objects:v84 count:16];
          if (v45)
          {
            v46 = v45;
            v47 = *v80;
            do
            {
              for (i = 0; i != v46; ++i)
              {
                if (*v80 != v47)
                {
                  objc_enumerationMutation(v44);
                }

                v49 = *(*(&v79 + 1) + 8 * i);
                v50 = [v43 objectForKey:v49];
                if (v50)
                {
                  NSLog(&cfstr_SCannotHaveDup.isa, "[CPMLSchema initWithPlist:]");
                }

                else
                {
                  [v43 setValue:@"1" forKey:v49];
                }
              }

              v46 = [v44 countByEnumeratingWithState:&v79 objects:v84 count:16];
            }

            while (v46);
          }

          v5 = v66;
          [(NSMutableArray *)v66->_categoricalDataList addObject:v44];
          LODWORD(v25) = v68;
          v26 = v67;
          v24 = v77;
        }

        else
        {
          v51 = v5->_categoricalDataList;
          v43 = objc_opt_new();
          [(NSMutableArray *)v51 addObject:v43];
        }

        v25 = (v25 + 1);

        v52 = [v78 objectForKey:@"substituteValue"];
        v53 = [v78 objectForKey:@"substitutionMatch"];
        if (!v52)
        {
          v52 = &stru_2859288F8;
        }

        if (v53)
        {
          v54 = v53;
        }

        else
        {
          v54 = &stru_2859288F8;
        }

        [(NSMutableArray *)v5->_replaceMissingValue addObject:v52];
        [(NSMutableArray *)v5->_matchReplaceValue addObject:v54];

        ++v26;
      }

      while (v26 < [(NSMutableArray *)v5->schema count]);
    }

    v55 = objc_alloc_init(MEMORY[0x277CCAB68]);
    if ([(NSMutableArray *)v5->schemaHDef count])
    {
      v56 = 0;
      do
      {
        v57 = [(NSMutableArray *)v5->attribute objectAtIndex:v56];
        [(NSMutableString *)v5->schemaHeaderWithType appendString:v57];
        [(NSMutableString *)v5->schemaHeaderWithType appendString:@" "];
        v58 = v5->schemaHeaderWithType;
        v59 = [(NSMutableArray *)v5->schemaHDef objectAtIndex:v56];
        [(NSMutableString *)v58 appendString:v59];

        v60 = [(NSMutableArray *)v5->attribute objectAtIndex:v56];
        [v55 appendString:v60];

        if (++v56 < [(NSMutableArray *)v5->schemaHDef count])
        {
          [(NSMutableString *)v5->schemaHeaderWithType appendString:@", "];
          [v55 appendString:{@", "}];
        }
      }

      while (v56 < [(NSMutableArray *)v5->schemaHDef count]);
    }

    v61 = [objc_alloc(MEMORY[0x277CCAB68]) initWithFormat:@" (%@) ", v55];
    schemaHeader = v5->schemaHeader;
    v5->schemaHeader = v61;

    plistCopy = v65;
  }

  v63 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isNumType:(unint64_t)type
{
  v3 = [(NSMutableArray *)self->schemaHDef objectAtIndex:type];
  if ([v3 isEqualToString:@"INTEGER"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"REAL"))
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isEqualToString:@"BOOLEAN"];
  }

  return v4;
}

- (BOOL)isIntType:(unint64_t)type
{
  v3 = [(NSMutableArray *)self->schemaHDef objectAtIndex:type];
  if ([v3 isEqualToString:@"INTEGER"])
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isEqualToString:@"BOOLEAN"];
  }

  return v4;
}

- (BOOL)isRealType:(unint64_t)type
{
  v3 = [(NSMutableArray *)self->schemaHDef objectAtIndex:type];
  v4 = [v3 isEqualToString:@"REAL"];

  return v4;
}

- (BOOL)isStringType:(unint64_t)type
{
  v3 = [(NSMutableArray *)self->schemaHDef objectAtIndex:type];
  if ([v3 isEqualToString:@"BOOLEAN"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"INTEGER") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"REAL"))
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v4 = [v3 isEqualToString:@"BLOB"] ^ 1;
  }

  return v4;
}

- (BOOL)isVectorType:(unint64_t)type
{
  v3 = [(NSMutableArray *)self->schemaHDef objectAtIndex:type];
  v4 = [v3 isEqualToString:@"BLOB"];

  return v4;
}

- (BOOL)isColumnContinous:(unsigned int)continous
{
  v3 = [(NSMutableArray *)self->schemaHDef objectAtIndex:continous];
  if ([v3 isEqualToString:@"REAL"])
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isEqualToString:@"INTEGER"];
  }

  return v4;
}

- (int)getColumnPosition:(id)position
{
  positionCopy = position;
  if ([(NSMutableArray *)self->attribute count])
  {
    v5 = 0;
    while (1)
    {
      v6 = [(NSMutableArray *)self->attribute objectAtIndex:v5];
      v7 = [objc_alloc(MEMORY[0x277CCAB68]) initWithFormat:@"CPMLcol%d_", v5];
      [v7 appendString:positionCopy];
      if ([v7 isEqualToString:v6])
      {
        break;
      }

      v8 = [positionCopy isEqualToString:v6];

      if (v8)
      {
        goto LABEL_8;
      }

      if (++v5 >= [(NSMutableArray *)self->attribute count])
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    LODWORD(v5) = -1;
  }

LABEL_8:

  return v5;
}

- (int)getSchemaType:(unint64_t)type
{
  if ([(CPMLSchema *)self isStringType:?])
  {
    return 5;
  }

  if ([(CPMLSchema *)self isIntType:type])
  {
    return 3;
  }

  if ([(CPMLSchema *)self isRealType:type])
  {
    return 4;
  }

  if ([(CPMLSchema *)self isVectorType:type])
  {
    return 7;
  }

  NSLog(&cfstr_SUnknownSchema.isa, "[CPMLSchema getSchemaType:]");
  return 8;
}

- (int)getVectorContent:(unint64_t)content
{
  if ([(NSMutableArray *)self->schema count]>= content)
  {
    v6 = [(NSMutableArray *)self->schema objectAtIndex:content];
    v7 = [v6 objectForKey:@"VectorType"];
    if ([v7 isEqualToString:@"INTEGER"])
    {
      v5 = 3;
    }

    else if ([v7 isEqualToString:@"REAL"])
    {
      v5 = 4;
    }

    else if ([v7 isEqualToString:@"TEXT"])
    {
      v5 = 5;
    }

    else
    {
      v5 = 8;
    }
  }

  else
  {
    NSLog(&cfstr_SIndexGreaterT.isa, "[CPMLSchema getVectorContent:]");
    return 8;
  }

  return v5;
}

- (BOOL)hasOptions:(unint64_t)options
{
  v3 = [(NSMutableArray *)self->availableOptions objectAtIndexedSubscript:options];
  null = [MEMORY[0x277CBEB68] null];
  v5 = v3 != null;

  return v5;
}

- (id)getUserDefinedCategoricalData:(unint64_t)data
{
  if ([(NSMutableArray *)self->_categoricalDataList count]<= data)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSMutableArray *)self->_categoricalDataList objectAtIndex:data];
  }

  return v5;
}

- (unint64_t)getUserDefinedCategoricalDataCount:(unint64_t)count
{
  v3 = [(NSMutableArray *)self->_categoricalDataList objectAtIndex:count];
  v4 = [v3 count];

  return v4;
}

- (BOOL)matchSubstituteValue:(unint64_t)value theValue:(id)theValue
{
  matchReplaceValue = self->_matchReplaceValue;
  theValueCopy = theValue;
  v7 = [(NSMutableArray *)matchReplaceValue objectAtIndex:value];
  LOBYTE(matchReplaceValue) = [v7 isEqualToString:theValueCopy];

  return matchReplaceValue;
}

- (id)getSubstituteValue:(unint64_t)value
{
  if ([(NSMutableArray *)self->schema count]>= value)
  {
    v6 = [(NSMutableArray *)self->_replaceMissingValue objectAtIndex:value];
    v7 = [(CPMLSchema *)self isStringType:value];
    if (v6 || !v7)
    {
      if ([v6 isEqualToString:&stru_2859288F8])
      {
        v8 = 0;
      }

      else
      {
        v8 = v6;
      }

      v5 = v8;
    }

    else
    {
      v5 = @"0";
    }
  }

  else
  {
    NSLog(&cfstr_SColAccessGrea.isa, "[CPMLSchema getSubstituteValue:]");
    v5 = 0;
  }

  return v5;
}

@end