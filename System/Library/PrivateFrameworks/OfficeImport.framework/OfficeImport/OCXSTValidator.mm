@interface OCXSTValidator
+ (BOOL)isValidValue:(id)a3 simpleType:(unint64_t)a4;
+ (id)simpleType:(unint64_t)a3 integerValue:(int64_t)a4;
+ (id)simpleType:(unint64_t)a3 stringValue:(id)a4;
+ (id)validateIntegerValue:(int64_t)a3 minValue:(int64_t)a4 maxValue:(int64_t)a5;
+ (id)validator;
- (OCXSTValidator)init;
@end

@implementation OCXSTValidator

+ (id)validateIntegerValue:(int64_t)a3 minValue:(int64_t)a4 maxValue:(int64_t)a5
{
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:?];
  v9 = v8;
  if (a3 >= a4)
  {
    if (a3 <= a5)
    {
      v10 = v8;
    }

    else
    {
      v10 = [MEMORY[0x277CCABB0] numberWithInteger:a5];

      if (TSUDefaultCat_init_token != -1)
      {
        +[OCXSTValidator validateIntegerValue:minValue:maxValue:];
      }
    }
  }

  else
  {
    v10 = [MEMORY[0x277CCABB0] numberWithInteger:a4];

    if (TSUDefaultCat_init_token != -1)
    {
      +[OCXSTValidator validateIntegerValue:minValue:maxValue:];
    }
  }

  return v10;
}

void __57__OCXSTValidator_validateIntegerValue_minValue_maxValue___block_invoke()
{
  v0 = TSULogCreateCategory("TSUDefaultCat");
  v1 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v0;
}

void __57__OCXSTValidator_validateIntegerValue_minValue_maxValue___block_invoke_2()
{
  v0 = TSULogCreateCategory("TSUDefaultCat");
  v1 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v0;
}

+ (BOOL)isValidValue:(id)a3 simpleType:(unint64_t)a4
{
  v6 = a3;
  v7 = [a1 validator];
  v8 = objc_opt_class();
  v9 = [v7 simpleTypeMap];
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
  v11 = [v9 objectForKeyedSubscript:v10];
  v12 = TSUDynamicCast(v8, v11);

  if (v12)
  {
    v13 = objc_opt_class();
    v14 = [v12 objectAtIndexedSubscript:0];
    v15 = TSUDynamicCast(v13, v14);

    v16 = objc_opt_class();
    v17 = [v12 objectAtIndexedSubscript:1];
    v18 = TSUDynamicCast(v16, v17);

    v19 = 0;
    if (v15 && v18)
    {
      v20 = [v15 compare:v6];
      v21 = [v18 compare:v6];
      v19 = (v20 + 1) < 2 && v21 < 2;
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

+ (id)validator
{
  v2 = a1;
  objc_sync_enter(v2);
  if (!+[OCXSTValidator validator]::validator)
  {
    v3 = objc_opt_new();
    v4 = +[OCXSTValidator validator]::validator;
    +[OCXSTValidator validator]::validator = v3;
  }

  objc_sync_exit(v2);

  v5 = +[OCXSTValidator validator]::validator;

  return v5;
}

+ (id)simpleType:(unint64_t)a3 integerValue:(int64_t)a4
{
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
  v8 = [a1 validator];
  if (v8)
  {
    v9 = objc_opt_class();
    v10 = [v8 simpleTypeMap];
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
    v12 = [v10 objectForKeyedSubscript:v11];
    v13 = TSUDynamicCast(v9, v12);

    if (v13)
    {
      v14 = objc_opt_class();
      v15 = [v13 objectAtIndexedSubscript:0];
      v16 = TSUDynamicCast(v14, v15);

      v17 = objc_opt_class();
      v18 = [v13 objectAtIndexedSubscript:1];
      v19 = TSUDynamicCast(v17, v18);

      if (v16 && v19)
      {
        v20 = [a1 validateIntegerValue:a4 minValue:objc_msgSend(v16 maxValue:{"integerValue"), objc_msgSend(v19, "integerValue")}];

        v7 = v20;
      }
    }
  }

  return v7;
}

+ (id)simpleType:(unint64_t)a3 stringValue:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [MEMORY[0x277CCACA8] stringWithString:v6];
  v8 = [a1 validator];
  if (v8)
  {
    v9 = objc_opt_class();
    v10 = [v8 simpleTypeMap];
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
    v12 = [v10 objectForKeyedSubscript:v11];
    v13 = TSUDynamicCast(v9, v12);

    if (!v13)
    {
      goto LABEL_16;
    }

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v14 = v13;
    v15 = [v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v15)
    {
      v16 = *v24;
      while (2)
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v24 != v16)
          {
            objc_enumerationMutation(v14);
          }

          if (![*(*(&v23 + 1) + 8 * i) caseInsensitiveCompare:{v6, v23}])
          {
            v20 = v14;
            goto LABEL_18;
          }
        }

        v15 = [v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }
    }

    if ([v14 count])
    {
      v18 = objc_opt_class();
      v19 = [v14 objectAtIndexedSubscript:0];
      v20 = TSUDynamicCast(v18, v19);

      if (v20)
      {
        v21 = [MEMORY[0x277CCACA8] stringWithString:v20];

        if (TSUDefaultCat_init_token != -1)
        {
          +[OCXSTValidator simpleType:stringValue:];
        }
      }

      else
      {
LABEL_18:
        v21 = v7;
      }
    }

    else
    {
LABEL_16:
      v21 = v7;
    }
  }

  else
  {
    v21 = v7;
  }

  return v21;
}

void __41__OCXSTValidator_simpleType_stringValue___block_invoke()
{
  v0 = TSULogCreateCategory("TSUDefaultCat");
  v1 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v0;
}

- (OCXSTValidator)init
{
  v9[11] = *MEMORY[0x277D85DE8];
  v7.receiver = self;
  v7.super_class = OCXSTValidator;
  v2 = [(OCXSTValidator *)&v7 init];
  if (v2)
  {
    v8[0] = &unk_286F6DAB8;
    v8[1] = &unk_286F6DB00;
    v9[0] = &unk_286F6D5C0;
    v9[1] = &unk_286F6D5D8;
    v8[2] = &unk_286F6DB30;
    v8[3] = &unk_286F6DB60;
    v9[2] = &unk_286F6D5F0;
    v9[3] = &unk_286F6D608;
    v8[4] = &unk_286F6DBA8;
    v8[5] = &unk_286F6DBF0;
    v9[4] = &unk_286F6D620;
    v9[5] = &unk_286F6D638;
    v8[6] = &unk_286F6DC38;
    v8[7] = &unk_286F6DC68;
    v9[6] = &unk_286F6D650;
    v9[7] = &unk_286F6D668;
    v8[8] = &unk_286F6DC98;
    v8[9] = &unk_286F6DCC8;
    v9[8] = &unk_286F6D680;
    v9[9] = &unk_286F6D698;
    v8[10] = &unk_286F6DCF8;
    v9[10] = &unk_286F6D6B0;
    v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:11];
    v4 = objc_opt_new();
    simpleTypeMap = v2->_simpleTypeMap;
    v2->_simpleTypeMap = v4;

    [(NSMutableDictionary *)v2->_simpleTypeMap addEntriesFromDictionary:v3];
  }

  return v2;
}

@end