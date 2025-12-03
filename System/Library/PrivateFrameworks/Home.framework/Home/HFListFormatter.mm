@interface HFListFormatter
- (NSLocale)locale;
- (id)_formatAndListWithElements:(id)elements;
- (id)_formatOrListWithElements:(id)elements;
- (id)_formatSentenceListWithElements:(id)elements;
- (id)stringForObjectValue:(id)value;
- (void)_invaildateFormatter;
- (void)dealloc;
- (void)setLocale:(id)locale;
@end

@implementation HFListFormatter

- (void)dealloc
{
  [(HFListFormatter *)self _invaildateFormatter];
  v3.receiver = self;
  v3.super_class = HFListFormatter;
  [(HFListFormatter *)&v3 dealloc];
}

- (void)_invaildateFormatter
{
  if ([(HFListFormatter *)self formatter])
  {
    [(HFListFormatter *)self formatter];
    ulistfmt_close();

    [(HFListFormatter *)self setFormatter:0];
  }
}

- (NSLocale)locale
{
  locale = self->_locale;
  if (locale)
  {
    currentLocale = locale;
  }

  else
  {
    currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  }

  return currentLocale;
}

- (void)setLocale:(id)locale
{
  localeCopy = locale;
  if (self->_locale != localeCopy)
  {
    v6 = localeCopy;
    objc_storeStrong(&self->_locale, locale);
    [(HFListFormatter *)self _invaildateFormatter];
    localeCopy = v6;
  }
}

- (id)stringForObjectValue:(id)value
{
  valueCopy = value;
  if (!valueCopy || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v7 = 0;
    goto LABEL_12;
  }

  v5 = valueCopy;
  if ([(HFListFormatter *)self listStyle]== 1)
  {
    v6 = [(HFListFormatter *)self _formatOrListWithElements:v5];
  }

  else if ([(HFListFormatter *)self listStyle])
  {
    if ([(HFListFormatter *)self listStyle]!= 2)
    {
      v7 = 0;
      goto LABEL_11;
    }

    v6 = [(HFListFormatter *)self _formatSentenceListWithElements:v5];
  }

  else
  {
    v6 = [(HFListFormatter *)self _formatAndListWithElements:v5];
  }

  v7 = v6;
LABEL_11:

LABEL_12:

  return v7;
}

- (id)_formatSentenceListWithElements:(id)elements
{
  elementsCopy = elements;
  v4 = objc_opt_new();
  v5 = [elementsCopy count];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __51__HFListFormatter__formatSentenceListWithElements___block_invoke;
  v8[3] = &unk_277DFFA48;
  v6 = v4;
  v9 = v6;
  v10 = v5;
  [elementsCopy enumerateObjectsUsingBlock:v8];

  return v6;
}

void __51__HFListFormatter__formatSentenceListWithElements___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  [*(a1 + 32) appendFormat:@"%@", a2];
  v6 = a1 + 32;
  v5 = *(a1 + 32);
  if (*(v6 + 8) - 1 == a3)
  {
    v7 = @"HFSentenceListFormatTerminator";
  }

  else
  {
    v7 = @"HFSentenceListFormatSeparator";
  }

  v8 = _HFLocalizedStringWithDefaultValue(v7, v7, 1);
  [v5 appendFormat:@"%@", v8];
}

- (id)_formatOrListWithElements:(id)elements
{
  elementsCopy = elements;
  v4 = objc_opt_new();
  v5 = [elementsCopy count];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __45__HFListFormatter__formatOrListWithElements___block_invoke;
  v8[3] = &unk_277DFFA48;
  v6 = v4;
  v9 = v6;
  v10 = v5;
  [elementsCopy enumerateObjectsUsingBlock:v8];

  return v6;
}

void __45__HFListFormatter__formatOrListWithElements___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  [*(a1 + 32) appendFormat:@"%@", a2];
  v5 = *(a1 + 40);
  if (v5 - a3 <= 2)
  {
    if (v5 >= 3 && v5 - a3 == 2)
    {
      v6 = @"HFOrListFormatSeparatorFinal";
    }

    else
    {
      if (a3 || v5 != 2)
      {
        return;
      }

      v6 = @"HFOrListFormatSeparatorFinalTwoElements";
    }
  }

  else
  {
    v6 = @"HFOrListFormatSeparator";
  }

  v8 = *(a1 + 32);
  v9 = _HFLocalizedStringWithDefaultValue(v6, v6, 1);
  [v8 appendFormat:@"%@", v9];
}

- (id)_formatAndListWithElements:(id)elements
{
  v35[500] = *MEMORY[0x277D85DE8];
  elementsCopy = elements;
  v34 = 0;
  if ([(HFListFormatter *)self formatter])
  {
    goto LABEL_3;
  }

  locale = [(HFListFormatter *)self locale];
  localeIdentifier = [locale localeIdentifier];
  [localeIdentifier getCString:v35 maxLength:100 encoding:4];

  [(HFListFormatter *)self setFormatter:ulistfmt_open()];
  v6 = 0;
  if ([(HFListFormatter *)self formatter])
  {
LABEL_3:
    selfCopy = self;
    v7 = elementsCopy;
    v8 = [elementsCopy count];
    v9 = v8;
    if (v8 >= 0x64)
    {
      v10 = 100;
    }

    else
    {
      v10 = v8;
    }

    v11 = [elementsCopy count];
    v32 = &v29;
    MEMORY[0x28223BE20](v11);
    v14 = (&v29 - v13);
    if (v12 >= 0x200)
    {
      v15 = 512;
    }

    else
    {
      v15 = v12;
    }

    bzero(&v29 - v13, v15);
    v16 = [v7 count];
    MEMORY[0x28223BE20](v16);
    v18 = &v29 - v17;
    v30 = v9;
    if (v9)
    {
      v19 = 0;
      while (1)
      {
        v20 = [elementsCopy objectAtIndexedSubscript:v19];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          break;
        }

        v21 = [v20 length];
        if (v21 >= 0x1F4)
        {
          v22 = 500;
        }

        else
        {
          v22 = v21;
        }

        v23 = malloc_type_malloc(2 * v22, 0x1000040BDFB0063uLL);
        [v20 getCharacters:v23 range:{0, v22}];
        v14[v19] = v23;
        *&v18[4 * v19] = v22;

        if (v10 == ++v19)
        {
          goto LABEL_16;
        }
      }

      if (v19)
      {
        for (i = 0; i != v19; ++i)
        {
          v26 = v14[i];
          if (v26)
          {
            free(v26);
          }
        }
      }
    }

    else
    {
LABEL_16:
      [(HFListFormatter *)selfCopy formatter];
      v24 = ulistfmt_format();
      if (v30)
      {
        do
        {
          if (*v14)
          {
            free(*v14);
          }

          ++v14;
          --v10;
        }

        while (v10);
      }

      if (v34 < 1)
      {
        v6 = [MEMORY[0x277CCACA8] stringWithCharacters:v35 length:v24];
        goto LABEL_29;
      }
    }

    v6 = 0;
  }

LABEL_29:

  v27 = *MEMORY[0x277D85DE8];

  return v6;
}

@end