@interface OITSUDateFormatCategoryEntry
- (OITSUDateFormatCategoryEntry)initWithSeparator:(unsigned __int16)separator;
- (id)formatStrings;
- (id)newDateFromString:(id)string forceAllowAMPM:(BOOL)m successfulFormatString:(id *)formatString perfect:(BOOL *)perfect;
- (void)addFormat:(id)format locale:(id)locale;
@end

@implementation OITSUDateFormatCategoryEntry

- (OITSUDateFormatCategoryEntry)initWithSeparator:(unsigned __int16)separator
{
  v11.receiver = self;
  v11.super_class = OITSUDateFormatCategoryEntry;
  v4 = [(OITSUDateFormatCategoryEntry *)&v11 init];
  v5 = v4;
  if (v4)
  {
    v4->_separator = separator;
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    formatters = v5->_formatters;
    v5->_formatters = v6;

    v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
    formatStrings = v5->_formatStrings;
    v5->_formatStrings = v8;
  }

  return v5;
}

- (id)formatStrings
{
  array = [MEMORY[0x277CBEB18] array];
  if ([(NSMutableArray *)self->_formatters count])
  {
    v4 = 0;
    do
    {
      v5 = CFDateFormatterGetFormat([(NSMutableArray *)self->_formatters objectAtIndex:v4]);
      [array addObject:v5];

      ++v4;
    }

    while (v4 < [(NSMutableArray *)self->_formatters count]);
  }

  return array;
}

- (void)addFormat:(id)format locale:(id)locale
{
  formatString = format;
  localeCopy = locale;
  if (([(NSMutableSet *)self->_formatStrings containsObject:formatString]& 1) == 0)
  {
    [(NSMutableSet *)self->_formatStrings addObject:formatString];
    ADateFormatter = p_createADateFormatter(localeCopy);
    CFDateFormatterSetFormat(ADateFormatter, formatString);
    [(NSMutableArray *)self->_formatters addObject:ADateFormatter];
  }
}

- (id)newDateFromString:(id)string forceAllowAMPM:(BOOL)m successfulFormatString:(id *)formatString perfect:(BOOL *)perfect
{
  mCopy = m;
  stringCopy = string;
  v10 = [(__CFString *)stringCopy length];
  selfCopy = self;
  v11 = [(NSMutableArray *)self->_formatters count];
  perfectCopy = perfect;
  *perfect = 0;
  v36 = v11;
  if (!v11)
  {
    v28 = 0;
    v27 = 0;
    v16 = 0;
    goto LABEL_34;
  }

  v35 = 0;
  v33 = 0;
  v12 = *MEMORY[0x277CBED70];
  v13 = *MEMORY[0x277CBEDA0];
  v14 = 1;
  do
  {
    v15 = [(NSMutableArray *)selfCopy->_formatters objectAtIndex:v14 - 1, v33];
    rangep.location = 0;
    rangep.length = v10;
    v16 = CFDateFormatterCreateDateFromString(0, v15, stringCopy, &rangep);
    if (v16)
    {
      v17 = 1;
    }

    else
    {
      v17 = !mCopy;
    }

    if (!v17)
    {
      v18 = CFDateFormatterCopyProperty(v15, v12);
      v19 = CFDateFormatterCopyProperty(v15, v13);
      CFDateFormatterSetProperty(v15, v12, @"AM");
      CFDateFormatterSetProperty(v15, v13, @"PM");
      rangep.location = 0;
      rangep.length = v10;
      v16 = CFDateFormatterCreateDateFromString(0, v15, stringCopy, &rangep);
      CFDateFormatterSetProperty(v15, v12, v18);
      CFDateFormatterSetProperty(v15, v13, v19);
    }

    if (v16)
    {
      v20 = CFDateFormatterGetFormat(v15);
      v21 = TSUCreateDateWithGregorianUnitsSetToDefaultValue(v16, v20);

      if (formatString)
      {
        v22 = v20;
        *formatString = v20;
      }

      StringWithDate = CFDateFormatterCreateStringWithDate(0, v15, v21);
      if (![(__CFString *)stringCopy compare:StringWithDate options:1])
      {
        *perfectCopy = 1;
        v16 = v21;
LABEL_23:

        goto LABEL_24;
      }

      v24 = v35;
      if (!v35 && !rangep.location)
      {
        if (rangep.length == v10)
        {
          if (!formatString)
          {
            v16 = 0;
            v35 = v21;
            goto LABEL_23;
          }

          v25 = *formatString;

          v35 = v21;
          v33 = v25;
LABEL_20:
          v16 = 0;
          *formatString = 0;
          goto LABEL_23;
        }

        v24 = 0;
      }

      v35 = v24;

      if (!formatString)
      {
        v16 = 0;
        goto LABEL_23;
      }

      goto LABEL_20;
    }

LABEL_24:
    if (v16)
    {
      break;
    }
  }

  while (v14++ < v36);
  if (v16)
  {
    v27 = v33;
    v28 = v35;
  }

  else
  {
    v27 = v33;
    v28 = v35;
    if (v35)
    {
      v29 = v35;
      if (formatString)
      {
        v28 = v29;
        v30 = v33;
        *formatString = v33;
        v16 = v28;
      }

      else
      {
        v16 = v29;
        v28 = v29;
      }
    }
  }

LABEL_34:
  v31 = v16;

  return v31;
}

@end