@interface OITSUCustomFormat
- (BOOL)p_isEqual:(id)a3 matchingFullName:(BOOL)a4;
- (NSString)currencyCode;
- (NSString)formatNameStem;
- (NSString)formatNameTag;
- (OITSUCustomFormat)customFormatWithNewName:(id)a3;
- (OITSUCustomFormat)initWithName:(id)a3 formatType:(int)a4 data:(id)a5 conditionList:(id)a6;
- (id)conditionalFormatAtIndex:(unint64_t)a3;
- (id)conditionalFormatDataForKey:(unint64_t)a3;
- (id)conditionalFormatDataForValue:(double)a3 outKey:(unint64_t *)a4;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)conditionCount;
- (unint64_t)hash;
- (void)p_addConditionOfType:(int)a3 value:(double)a4 data:(id)a5;
- (void)p_makeFormatNameStemAndTag;
@end

@implementation OITSUCustomFormat

- (OITSUCustomFormat)initWithName:(id)a3 formatType:(int)a4 data:(id)a5 conditionList:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v25.receiver = self;
  v25.super_class = OITSUCustomFormat;
  v13 = [(OITSUCustomFormat *)&v25 init];
  if (v13)
  {
    if ((a4 - 270) >= 3)
    {
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OITSUCustomFormat initWithName:formatType:data:conditionList:]"];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUCustomFormat.m"];
      [OITSUAssertionHandler handleFailureInFunction:v14 file:v15 lineNumber:234 isFatal:0 description:"Creating a custom format without a correct custom format type."];

      +[OITSUAssertionHandler logBacktraceThrottled];
    }

    if (!v11)
    {
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OITSUCustomFormat initWithName:formatType:data:conditionList:]"];
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUCustomFormat.m"];
      [OITSUAssertionHandler handleFailureInFunction:v16 file:v17 lineNumber:235 isFatal:0 description:"invalid nil value for '%{public}s'", "customFormatData"];

      +[OITSUAssertionHandler logBacktraceThrottled];
    }

    v18 = [v10 copy];
    formatName = v13->_formatName;
    v13->_formatName = v18;

    v13->_formatType = a4;
    v20 = [v11 copy];
    defaultFormatData = v13->_defaultFormatData;
    v13->_defaultFormatData = v20;

    [(OITSUCustomFormatData *)v13->_defaultFormatData setIsConditional:0];
    if (v12)
    {
      if (a4 != 270)
      {
        v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OITSUCustomFormat initWithName:formatType:data:conditionList:]"];
        v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUCustomFormat.m"];
        [OITSUAssertionHandler handleFailureInFunction:v22 file:v23 lineNumber:244 isFatal:0 description:"Conditions are only allowed for number custom formats."];

        +[OITSUAssertionHandler logBacktraceThrottled];
      }

      objc_storeStrong(&v13->_conditionList, a6);
    }
  }

  return v13;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = [OITSUMutableCustomFormat allocWithZone:a3];
  v5 = [(OITSUCustomFormat *)self formatName];
  v6 = [(OITSUCustomFormat *)self formatType];
  v7 = [(OITSUCustomFormat *)self defaultFormatData];
  v8 = [(OITSUCustomFormat *)v4 initWithName:v5 formatType:v6 data:v7];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = [(OITSUCustomFormat *)self conditionList];
  v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v21;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v20 + 1) + 8 * i);
        v15 = [v14 conditionType];
        [v14 conditionValue];
        v17 = v16;
        v18 = [v14 data];
        [(OITSUCustomFormat *)v8 p_addConditionOfType:v15 value:v18 data:v17];
      }

      v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v11);
  }

  return v8;
}

- (OITSUCustomFormat)customFormatWithNewName:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [OITSUCustomFormat alloc];
  v6 = [(OITSUCustomFormat *)self formatType];
  v7 = [(OITSUCustomFormat *)self defaultFormatData];
  v8 = [(OITSUCustomFormat *)v5 initWithName:v4 formatType:v6 data:v7];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = [(OITSUCustomFormat *)self conditionList];
  v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v21;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v20 + 1) + 8 * i);
        v15 = [v14 conditionType];
        [v14 conditionValue];
        v17 = v16;
        v18 = [v14 data];
        [(OITSUCustomFormat *)v8 p_addConditionOfType:v15 value:v18 data:v17];
      }

      v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v11);
  }

  return v8;
}

- (unint64_t)conditionCount
{
  v2 = [(OITSUCustomFormat *)self conditionList];
  v3 = [v2 count];

  return v3;
}

- (void)p_addConditionOfType:(int)a3 value:(double)a4 data:(id)a5
{
  v6 = *&a3;
  v8 = a5;
  if ([(OITSUCustomFormat *)self formatType]!= 270)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OITSUCustomFormat p_addConditionOfType:value:data:]"];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUCustomFormat.m"];
    [OITSUAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:284 isFatal:0 description:"Adding conditions is only allowed for Custom Numbers."];

    +[OITSUAssertionHandler logBacktraceThrottled];
  }

  if (!v8)
  {
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OITSUCustomFormat p_addConditionOfType:value:data:]"];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUCustomFormat.m"];
    [OITSUAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:285 isFatal:0 description:"invalid nil value for '%{public}s'", "data"];

    +[OITSUAssertionHandler logBacktraceThrottled];
  }

  v13 = [(OITSUCustomFormat *)self conditionList];

  if (!v13)
  {
    v14 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:10];
    conditionList = self->_conditionList;
    self->_conditionList = v14;
  }

  v17 = [[OITSUCustomFormatCondition alloc] initWithType:v6 value:v8 data:a4];

  v16 = [(OITSUCustomFormat *)self conditionList];
  [v16 addObject:v17];
}

- (unint64_t)hash
{
  v3 = [(OITSUCustomFormat *)self defaultFormatData];
  v4 = [v3 formatString];
  v5 = [v4 hash];
  v6 = [(OITSUCustomFormat *)self formatType];

  return v5 ^ v6;
}

- (void)p_makeFormatNameStemAndTag
{
  v3 = [(OITSUCustomFormat *)self formatName];

  if (v3)
  {
    v4 = [(OITSUCustomFormat *)self formatName];
    v5 = +[OITSULocale currentLocale];
    v6 = [v5 locale];
    v13 = 0;
    TSUNumberFormatterExtractBaseStemFromString(v4, v6, &v13);
    v7 = v13;

    formatNameStem = self->_formatNameStem;
    self->_formatNameStem = v7;
    v9 = v7;

    v10 = [(OITSUCustomFormat *)self formatName];
    v11 = [v10 substringFromIndex:{-[NSString length](v9, "length")}];
    formatNameTag = self->_formatNameTag;
    self->_formatNameTag = v11;
  }
}

- (NSString)formatNameStem
{
  formatNameStem = self->_formatNameStem;
  if (!formatNameStem)
  {
    [(OITSUCustomFormat *)self p_makeFormatNameStemAndTag];
    formatNameStem = self->_formatNameStem;
  }

  return formatNameStem;
}

- (NSString)formatNameTag
{
  formatNameTag = self->_formatNameTag;
  if (!formatNameTag)
  {
    [(OITSUCustomFormat *)self p_makeFormatNameStemAndTag];
    formatNameTag = self->_formatNameTag;
  }

  return formatNameTag;
}

- (BOOL)p_isEqual:(id)a3 matchingFullName:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (self != v6)
  {
    v7 = objc_opt_class();
    v8 = TSUDynamicCast(v7, v6);
    if (!v8)
    {
      goto LABEL_20;
    }

    v9 = [(OITSUCustomFormat *)self formatType];
    if (v9 != [v8 formatType])
    {
      goto LABEL_20;
    }

    v10 = [(OITSUCustomFormat *)self conditionList];
    v11 = [v10 count];
    v12 = [v8 conditionList];
    v13 = [v12 count];

    if (v11 != v13)
    {
      goto LABEL_20;
    }

    if (v4)
    {
      v14 = [v8 formatName];
      v15 = [(OITSUCustomFormat *)self formatName];
      v16 = [v14 isEqualToString:v15];

      if ((v16 & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v18 = [(OITSUCustomFormat *)self formatNameStem];
      v19 = [v8 formatNameStem];
      v20 = [v18 isEqual:v19];

      if (!v20)
      {
        goto LABEL_20;
      }
    }

    v21 = [(OITSUCustomFormat *)self defaultFormatData];
    v22 = [v8 defaultFormatData];
    v23 = [v21 isEqual:v22];

    if (v23)
    {
      v24 = [(OITSUCustomFormat *)self conditionList];
      v25 = [v24 count];

      if (!v25)
      {
        v17 = 1;
        goto LABEL_21;
      }

      v26 = 0;
      while (1)
      {
        v27 = [(OITSUCustomFormat *)self conditionList];
        v28 = [v27 objectAtIndex:v26];

        v29 = [v8 conditionList];
        v30 = [v29 objectAtIndex:v26];

        if (v28)
        {
          if (v30)
          {
            goto LABEL_15;
          }
        }

        else
        {
          v33 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OITSUCustomFormat p_isEqual:matchingFullName:]"];
          v34 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUCustomFormat.m"];
          [OITSUAssertionHandler handleFailureInFunction:v33 file:v34 lineNumber:366 isFatal:0 description:"invalid nil value for '%{public}s'", "thisCondition"];

          +[OITSUAssertionHandler logBacktraceThrottled];
          if (v30)
          {
            goto LABEL_15;
          }
        }

        v35 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OITSUCustomFormat p_isEqual:matchingFullName:]"];
        v36 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUCustomFormat.m"];
        [OITSUAssertionHandler handleFailureInFunction:v35 file:v36 lineNumber:367 isFatal:0 description:"invalid nil value for '%{public}s'", "otherCondition"];

        +[OITSUAssertionHandler logBacktraceThrottled];
LABEL_15:
        v17 = [v28 isEqual:v30];

        if (v17)
        {
          ++v26;
          v31 = [(OITSUCustomFormat *)self conditionList];
          v32 = [v31 count];

          if (v26 < v32)
          {
            continue;
          }
        }

        goto LABEL_21;
      }
    }

LABEL_20:
    v17 = 0;
LABEL_21:

    goto LABEL_22;
  }

  v17 = 1;
LABEL_22:

  return v17;
}

- (id)conditionalFormatDataForValue:(double)a3 outKey:(unint64_t *)a4
{
  if ([(OITSUCustomFormat *)self formatType]!= 270 || (v7 = [(OITSUCustomFormat *)self conditionCount]) == 0)
  {
LABEL_24:
    v15 = [(OITSUCustomFormat *)self defaultFormatData];
    v18 = 0;
    if (!a4)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  v8 = v7;
  v9 = 0;
  while (1)
  {
    v10 = [(OITSUCustomFormat *)self conditionList];
    v11 = [v10 objectAtIndexedSubscript:v9];

    [v11 conditionValue];
    v13 = v12;
    v14 = [v11 conditionType];
    if (v14 <= 1)
    {
      if (v14)
      {
        if (v14 != 1)
        {
LABEL_21:
          v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OITSUCustomFormat conditionalFormatDataForValue:outKey:]"];
          v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUCustomFormat.m"];
          [OITSUAssertionHandler handleFailureInFunction:v16 file:v17 lineNumber:424 isFatal:0 description:"Unexpected condition type in conditional number format!"];

          +[OITSUAssertionHandler logBacktraceThrottled];
LABEL_22:

          goto LABEL_23;
        }

        if (v13 <= a3)
        {
          goto LABEL_22;
        }
      }

      else if (vabdd_f64(a3, v13) >= 1.0e-14)
      {
        goto LABEL_22;
      }
    }

    else
    {
      switch(v14)
      {
        case 2:
          if (v13 < a3)
          {
            goto LABEL_22;
          }

          break;
        case 3:
          if (v13 >= a3)
          {
            goto LABEL_22;
          }

          break;
        case 4:
          if (v13 > a3)
          {
            goto LABEL_22;
          }

          break;
        default:
          goto LABEL_21;
      }
    }

    v15 = [v11 data];

    if (v15)
    {
      break;
    }

LABEL_23:
    if (v8 == ++v9)
    {
      goto LABEL_24;
    }
  }

  v18 = v9 + 1;
  if (a4)
  {
LABEL_25:
    *a4 = v18;
  }

LABEL_26:

  return v15;
}

- (id)conditionalFormatAtIndex:(unint64_t)a3
{
  v4 = [(OITSUCustomFormat *)self conditionList];
  v5 = [v4 objectAtIndexedSubscript:a3];

  return v5;
}

- (id)conditionalFormatDataForKey:(unint64_t)a3
{
  if (a3)
  {
    v4 = [(OITSUCustomFormat *)self conditionList];
    v5 = [v4 objectAtIndexedSubscript:a3 - 1];
    v6 = [v5 data];
  }

  else
  {
    v6 = [(OITSUCustomFormat *)self defaultFormatData];
  }

  return v6;
}

- (NSString)currencyCode
{
  if (!self->_currencyCodeComputed)
  {
    v3 = [(OITSUCustomFormat *)self defaultFormatData];
    v4 = [v3 currencyCodeIndex];

    if ([(OITSUCustomFormat *)self conditionCount])
    {
      v5 = 0;
      v6 = 0;
      while (1)
      {
        v7 = [(OITSUCustomFormat *)self conditionalFormatAtIndex:v5];
        v8 = [v7 data];
        v9 = [v8 currencyCodeIndex];

        if (v4)
        {
          if (v9 && v9 != v4)
          {
            break;
          }
        }

        if (v9 == v6)
        {
          v10 = v9;
        }

        else
        {
          v10 = 0;
        }

        if (v5 != 1)
        {
          v10 = 0;
        }

        if (v5)
        {
          v11 = v6;
        }

        else
        {
          v11 = v9;
        }

        if (!v5)
        {
          v10 = 0;
        }

        if (!v4)
        {
          v6 = v11;
          v4 = v10;
        }

        if (++v5 >= [(OITSUCustomFormat *)self conditionCount])
        {
          goto LABEL_22;
        }
      }

      v4 = 0;
    }

LABEL_22:
    v12 = TSUCurrencyCodeForIndex(v4);
    currencyCode = self->_currencyCode;
    self->_currencyCode = v12;

    self->_currencyCodeComputed = 1;
  }

  v14 = self->_currencyCode;

  return v14;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(OITSUCustomFormat *)self formatName];
  v5 = [(OITSUCustomFormat *)self defaultFormatData];
  v6 = [v5 formatString];
  v7 = [v3 stringWithFormat:@"TSUCustomFormat:%@, %@", v4, v6];

  return v7;
}

@end