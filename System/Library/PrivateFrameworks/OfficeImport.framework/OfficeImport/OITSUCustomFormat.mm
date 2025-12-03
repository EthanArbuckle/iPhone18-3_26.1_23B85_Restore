@interface OITSUCustomFormat
- (BOOL)p_isEqual:(id)equal matchingFullName:(BOOL)name;
- (NSString)currencyCode;
- (NSString)formatNameStem;
- (NSString)formatNameTag;
- (OITSUCustomFormat)customFormatWithNewName:(id)name;
- (OITSUCustomFormat)initWithName:(id)name formatType:(int)type data:(id)data conditionList:(id)list;
- (id)conditionalFormatAtIndex:(unint64_t)index;
- (id)conditionalFormatDataForKey:(unint64_t)key;
- (id)conditionalFormatDataForValue:(double)value outKey:(unint64_t *)key;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)conditionCount;
- (unint64_t)hash;
- (void)p_addConditionOfType:(int)type value:(double)value data:(id)data;
- (void)p_makeFormatNameStemAndTag;
@end

@implementation OITSUCustomFormat

- (OITSUCustomFormat)initWithName:(id)name formatType:(int)type data:(id)data conditionList:(id)list
{
  nameCopy = name;
  dataCopy = data;
  listCopy = list;
  v25.receiver = self;
  v25.super_class = OITSUCustomFormat;
  v13 = [(OITSUCustomFormat *)&v25 init];
  if (v13)
  {
    if ((type - 270) >= 3)
    {
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OITSUCustomFormat initWithName:formatType:data:conditionList:]"];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUCustomFormat.m"];
      [OITSUAssertionHandler handleFailureInFunction:v14 file:v15 lineNumber:234 isFatal:0 description:"Creating a custom format without a correct custom format type."];

      +[OITSUAssertionHandler logBacktraceThrottled];
    }

    if (!dataCopy)
    {
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OITSUCustomFormat initWithName:formatType:data:conditionList:]"];
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUCustomFormat.m"];
      [OITSUAssertionHandler handleFailureInFunction:v16 file:v17 lineNumber:235 isFatal:0 description:"invalid nil value for '%{public}s'", "customFormatData"];

      +[OITSUAssertionHandler logBacktraceThrottled];
    }

    v18 = [nameCopy copy];
    formatName = v13->_formatName;
    v13->_formatName = v18;

    v13->_formatType = type;
    v20 = [dataCopy copy];
    defaultFormatData = v13->_defaultFormatData;
    v13->_defaultFormatData = v20;

    [(OITSUCustomFormatData *)v13->_defaultFormatData setIsConditional:0];
    if (listCopy)
    {
      if (type != 270)
      {
        v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OITSUCustomFormat initWithName:formatType:data:conditionList:]"];
        v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUCustomFormat.m"];
        [OITSUAssertionHandler handleFailureInFunction:v22 file:v23 lineNumber:244 isFatal:0 description:"Conditions are only allowed for number custom formats."];

        +[OITSUAssertionHandler logBacktraceThrottled];
      }

      objc_storeStrong(&v13->_conditionList, list);
    }
  }

  return v13;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = [OITSUMutableCustomFormat allocWithZone:zone];
  formatName = [(OITSUCustomFormat *)self formatName];
  formatType = [(OITSUCustomFormat *)self formatType];
  defaultFormatData = [(OITSUCustomFormat *)self defaultFormatData];
  v8 = [(OITSUCustomFormat *)v4 initWithName:formatName formatType:formatType data:defaultFormatData];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  conditionList = [(OITSUCustomFormat *)self conditionList];
  v10 = [conditionList countByEnumeratingWithState:&v20 objects:v24 count:16];
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
          objc_enumerationMutation(conditionList);
        }

        v14 = *(*(&v20 + 1) + 8 * i);
        conditionType = [v14 conditionType];
        [v14 conditionValue];
        v17 = v16;
        data = [v14 data];
        [(OITSUCustomFormat *)v8 p_addConditionOfType:conditionType value:data data:v17];
      }

      v11 = [conditionList countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v11);
  }

  return v8;
}

- (OITSUCustomFormat)customFormatWithNewName:(id)name
{
  v25 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v5 = [OITSUCustomFormat alloc];
  formatType = [(OITSUCustomFormat *)self formatType];
  defaultFormatData = [(OITSUCustomFormat *)self defaultFormatData];
  v8 = [(OITSUCustomFormat *)v5 initWithName:nameCopy formatType:formatType data:defaultFormatData];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  conditionList = [(OITSUCustomFormat *)self conditionList];
  v10 = [conditionList countByEnumeratingWithState:&v20 objects:v24 count:16];
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
          objc_enumerationMutation(conditionList);
        }

        v14 = *(*(&v20 + 1) + 8 * i);
        conditionType = [v14 conditionType];
        [v14 conditionValue];
        v17 = v16;
        data = [v14 data];
        [(OITSUCustomFormat *)v8 p_addConditionOfType:conditionType value:data data:v17];
      }

      v11 = [conditionList countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v11);
  }

  return v8;
}

- (unint64_t)conditionCount
{
  conditionList = [(OITSUCustomFormat *)self conditionList];
  v3 = [conditionList count];

  return v3;
}

- (void)p_addConditionOfType:(int)type value:(double)value data:(id)data
{
  v6 = *&type;
  dataCopy = data;
  if ([(OITSUCustomFormat *)self formatType]!= 270)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OITSUCustomFormat p_addConditionOfType:value:data:]"];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUCustomFormat.m"];
    [OITSUAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:284 isFatal:0 description:"Adding conditions is only allowed for Custom Numbers."];

    +[OITSUAssertionHandler logBacktraceThrottled];
  }

  if (!dataCopy)
  {
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OITSUCustomFormat p_addConditionOfType:value:data:]"];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUCustomFormat.m"];
    [OITSUAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:285 isFatal:0 description:"invalid nil value for '%{public}s'", "data"];

    +[OITSUAssertionHandler logBacktraceThrottled];
  }

  conditionList = [(OITSUCustomFormat *)self conditionList];

  if (!conditionList)
  {
    v14 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:10];
    conditionList = self->_conditionList;
    self->_conditionList = v14;
  }

  v17 = [[OITSUCustomFormatCondition alloc] initWithType:v6 value:dataCopy data:value];

  conditionList2 = [(OITSUCustomFormat *)self conditionList];
  [conditionList2 addObject:v17];
}

- (unint64_t)hash
{
  defaultFormatData = [(OITSUCustomFormat *)self defaultFormatData];
  formatString = [defaultFormatData formatString];
  v5 = [formatString hash];
  formatType = [(OITSUCustomFormat *)self formatType];

  return v5 ^ formatType;
}

- (void)p_makeFormatNameStemAndTag
{
  formatName = [(OITSUCustomFormat *)self formatName];

  if (formatName)
  {
    formatName2 = [(OITSUCustomFormat *)self formatName];
    v5 = +[OITSULocale currentLocale];
    locale = [v5 locale];
    v13 = 0;
    TSUNumberFormatterExtractBaseStemFromString(formatName2, locale, &v13);
    v7 = v13;

    formatNameStem = self->_formatNameStem;
    self->_formatNameStem = v7;
    v9 = v7;

    formatName3 = [(OITSUCustomFormat *)self formatName];
    v11 = [formatName3 substringFromIndex:{-[NSString length](v9, "length")}];
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

- (BOOL)p_isEqual:(id)equal matchingFullName:(BOOL)name
{
  nameCopy = name;
  equalCopy = equal;
  if (self != equalCopy)
  {
    v7 = objc_opt_class();
    v8 = TSUDynamicCast(v7, equalCopy);
    if (!v8)
    {
      goto LABEL_20;
    }

    formatType = [(OITSUCustomFormat *)self formatType];
    if (formatType != [v8 formatType])
    {
      goto LABEL_20;
    }

    conditionList = [(OITSUCustomFormat *)self conditionList];
    v11 = [conditionList count];
    conditionList2 = [v8 conditionList];
    v13 = [conditionList2 count];

    if (v11 != v13)
    {
      goto LABEL_20;
    }

    if (nameCopy)
    {
      formatName = [v8 formatName];
      formatName2 = [(OITSUCustomFormat *)self formatName];
      v16 = [formatName isEqualToString:formatName2];

      if ((v16 & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    else
    {
      formatNameStem = [(OITSUCustomFormat *)self formatNameStem];
      formatNameStem2 = [v8 formatNameStem];
      v20 = [formatNameStem isEqual:formatNameStem2];

      if (!v20)
      {
        goto LABEL_20;
      }
    }

    defaultFormatData = [(OITSUCustomFormat *)self defaultFormatData];
    defaultFormatData2 = [v8 defaultFormatData];
    v23 = [defaultFormatData isEqual:defaultFormatData2];

    if (v23)
    {
      conditionList3 = [(OITSUCustomFormat *)self conditionList];
      v25 = [conditionList3 count];

      if (!v25)
      {
        v17 = 1;
        goto LABEL_21;
      }

      v26 = 0;
      while (1)
      {
        conditionList4 = [(OITSUCustomFormat *)self conditionList];
        v28 = [conditionList4 objectAtIndex:v26];

        conditionList5 = [v8 conditionList];
        v30 = [conditionList5 objectAtIndex:v26];

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
          conditionList6 = [(OITSUCustomFormat *)self conditionList];
          v32 = [conditionList6 count];

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

- (id)conditionalFormatDataForValue:(double)value outKey:(unint64_t *)key
{
  if ([(OITSUCustomFormat *)self formatType]!= 270 || (v7 = [(OITSUCustomFormat *)self conditionCount]) == 0)
  {
LABEL_24:
    defaultFormatData = [(OITSUCustomFormat *)self defaultFormatData];
    v18 = 0;
    if (!key)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  v8 = v7;
  v9 = 0;
  while (1)
  {
    conditionList = [(OITSUCustomFormat *)self conditionList];
    v11 = [conditionList objectAtIndexedSubscript:v9];

    [v11 conditionValue];
    v13 = v12;
    conditionType = [v11 conditionType];
    if (conditionType <= 1)
    {
      if (conditionType)
      {
        if (conditionType != 1)
        {
LABEL_21:
          v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OITSUCustomFormat conditionalFormatDataForValue:outKey:]"];
          v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUCustomFormat.m"];
          [OITSUAssertionHandler handleFailureInFunction:v16 file:v17 lineNumber:424 isFatal:0 description:"Unexpected condition type in conditional number format!"];

          +[OITSUAssertionHandler logBacktraceThrottled];
LABEL_22:

          goto LABEL_23;
        }

        if (v13 <= value)
        {
          goto LABEL_22;
        }
      }

      else if (vabdd_f64(value, v13) >= 1.0e-14)
      {
        goto LABEL_22;
      }
    }

    else
    {
      switch(conditionType)
      {
        case 2:
          if (v13 < value)
          {
            goto LABEL_22;
          }

          break;
        case 3:
          if (v13 >= value)
          {
            goto LABEL_22;
          }

          break;
        case 4:
          if (v13 > value)
          {
            goto LABEL_22;
          }

          break;
        default:
          goto LABEL_21;
      }
    }

    defaultFormatData = [v11 data];

    if (defaultFormatData)
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
  if (key)
  {
LABEL_25:
    *key = v18;
  }

LABEL_26:

  return defaultFormatData;
}

- (id)conditionalFormatAtIndex:(unint64_t)index
{
  conditionList = [(OITSUCustomFormat *)self conditionList];
  v5 = [conditionList objectAtIndexedSubscript:index];

  return v5;
}

- (id)conditionalFormatDataForKey:(unint64_t)key
{
  if (key)
  {
    conditionList = [(OITSUCustomFormat *)self conditionList];
    v5 = [conditionList objectAtIndexedSubscript:key - 1];
    data = [v5 data];
  }

  else
  {
    data = [(OITSUCustomFormat *)self defaultFormatData];
  }

  return data;
}

- (NSString)currencyCode
{
  if (!self->_currencyCodeComputed)
  {
    defaultFormatData = [(OITSUCustomFormat *)self defaultFormatData];
    currencyCodeIndex = [defaultFormatData currencyCodeIndex];

    if ([(OITSUCustomFormat *)self conditionCount])
    {
      v5 = 0;
      v6 = 0;
      while (1)
      {
        v7 = [(OITSUCustomFormat *)self conditionalFormatAtIndex:v5];
        data = [v7 data];
        currencyCodeIndex2 = [data currencyCodeIndex];

        if (currencyCodeIndex)
        {
          if (currencyCodeIndex2 && currencyCodeIndex2 != currencyCodeIndex)
          {
            break;
          }
        }

        if (currencyCodeIndex2 == v6)
        {
          v10 = currencyCodeIndex2;
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
          v11 = currencyCodeIndex2;
        }

        if (!v5)
        {
          v10 = 0;
        }

        if (!currencyCodeIndex)
        {
          v6 = v11;
          currencyCodeIndex = v10;
        }

        if (++v5 >= [(OITSUCustomFormat *)self conditionCount])
        {
          goto LABEL_22;
        }
      }

      currencyCodeIndex = 0;
    }

LABEL_22:
    v12 = TSUCurrencyCodeForIndex(currencyCodeIndex);
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
  formatName = [(OITSUCustomFormat *)self formatName];
  defaultFormatData = [(OITSUCustomFormat *)self defaultFormatData];
  formatString = [defaultFormatData formatString];
  v7 = [v3 stringWithFormat:@"TSUCustomFormat:%@, %@", formatName, formatString];

  return v7;
}

@end