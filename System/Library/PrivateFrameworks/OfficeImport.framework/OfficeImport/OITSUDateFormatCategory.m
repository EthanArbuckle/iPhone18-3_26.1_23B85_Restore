@interface OITSUDateFormatCategory
- (OITSUDateFormatCategory)initWithInitialPattern:(id)a3 locale:(id)a4;
- (id)entryForSeparator:(unsigned __int16)a3;
- (id)formatStringsDictionary;
- (id)initialPattern;
- (id)newDateFromString:(id)a3 forceAllowAMPM:(BOOL)a4 successfulFormatString:(id *)a5 perfect:(BOOL *)a6;
- (void)addSeparator:(unsigned __int16)a3 format:(id)a4 locale:(id)a5;
- (void)dealloc;
@end

@implementation OITSUDateFormatCategory

- (OITSUDateFormatCategory)initWithInitialPattern:(id)a3 locale:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = OITSUDateFormatCategory;
  v8 = [(OITSUDateFormatCategory *)&v13 init];
  if (v8)
  {
    ADateFormatter = p_createADateFormatter(v7);
    v8->_initialFormatter = ADateFormatter;
    CFDateFormatterSetFormat(ADateFormatter, v6);
    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    entries = v8->_entries;
    v8->_entries = v10;
  }

  return v8;
}

- (void)dealloc
{
  CFRelease(self->_initialFormatter);
  v3.receiver = self;
  v3.super_class = OITSUDateFormatCategory;
  [(OITSUDateFormatCategory *)&v3 dealloc];
}

- (id)initialPattern
{
  v2 = [(__CFString *)CFDateFormatterGetFormat(self->_initialFormatter) copy];

  return v2;
}

- (id)formatStringsDictionary
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [MEMORY[0x277CBEB18] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = self->_entries;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v15 = [v10 separator];
        v11 = [MEMORY[0x277CCACA8] stringWithCharacters:&v15 length:1];
        [v3 addObject:v11];

        v12 = [v10 formatStrings];
        [v4 addObject:v12];
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v7);
  }

  v20[0] = @"keys";
  v20[1] = @"values";
  v21[0] = v3;
  v21[1] = v4;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];

  return v13;
}

- (void)addSeparator:(unsigned __int16)a3 format:(id)a4 locale:(id)a5
{
  v6 = a3;
  v10 = a4;
  v8 = a5;
  v9 = [(OITSUDateFormatCategory *)self entryForSeparator:v6];
  if (!v9)
  {
    v9 = [[OITSUDateFormatCategoryEntry alloc] initWithSeparator:v6];
    [(NSMutableArray *)self->_entries addObject:v9];
  }

  [(OITSUDateFormatCategoryEntry *)v9 addFormat:v10 locale:v8];
}

- (id)entryForSeparator:(unsigned __int16)a3
{
  v3 = a3;
  v5 = [(NSMutableArray *)self->_entries count];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    while (1)
    {
      v8 = [(NSMutableArray *)self->_entries objectAtIndex:v7];
      if ([v8 separator] == v3)
      {
        break;
      }

      if (v6 == ++v7)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v8 = 0;
  }

  return v8;
}

- (id)newDateFromString:(id)a3 forceAllowAMPM:(BOOL)a4 successfulFormatString:(id *)a5 perfect:(BOOL *)a6
{
  v8 = a4;
  v10 = a3;
  v11 = [(__CFString *)v10 length];
  v19.location = 0;
  v19.length = v11;
  v12 = 0;
  if (CFDateFormatterGetAbsoluteTimeFromString(self->_initialFormatter, v10, &v19, 0))
  {
    v13 = v19.location == 0;
  }

  else
  {
    v13 = 0;
  }

  if (v13 && v19.length >= 1)
  {
    if (v19.length >= v11)
    {
      v15 = 0;
    }

    else
    {
      v15 = [(__CFString *)v10 characterAtIndex:v19.length];
    }

    v16 = [(OITSUDateFormatCategory *)self entryForSeparator:v15];
    v17 = v16;
    if (v16)
    {
      v12 = [v16 newDateFromString:v10 forceAllowAMPM:v8 successfulFormatString:a5 perfect:a6];
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

@end