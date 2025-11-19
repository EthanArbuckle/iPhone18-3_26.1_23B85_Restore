@interface BRLTServiceTranslator
- (BRLTServiceTranslator)initWithTable:(id)a3;
- (id)_arrayFromData:(id)a3;
- (id)_locationMapWithLength:(int64_t)a3 forArray:(id)a4 defaultLocation:(int64_t)a5;
- (id)brailleForText:(id)a3 locations:(id *)a4;
- (id)textForBraille:(id)a3 locations:(id *)a4;
@end

@implementation BRLTServiceTranslator

- (BRLTServiceTranslator)initWithTable:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v29.receiver = self;
  v29.super_class = BRLTServiceTranslator;
  v6 = [(BRLTServiceTranslator *)&v29 init];
  v7 = v6;
  if (!v6)
  {
LABEL_13:
    v20 = v7;
    goto LABEL_17;
  }

  objc_storeStrong(&v6->_table, a3);
  +[BRLTTableEnumerator tableEnumeratorWithSystemBundlePath];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = v28 = 0u;
  v8 = [v24 translatorBundles];
  v9 = [v8 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v26;
LABEL_4:
    v12 = 0;
    while (1)
    {
      if (*v26 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v25 + 1) + 8 * v12);
      v14 = [v13 bundleIdentifier];
      v15 = [v5 serviceIdentifier];
      v16 = [v14 isEqualToString:v15];

      if (v16)
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [v8 countByEnumeratingWithState:&v25 objects:v30 count:16];
        if (v10)
        {
          goto LABEL_4;
        }

        goto LABEL_10;
      }
    }

    v17 = v13;

    if (!v17)
    {
      goto LABEL_14;
    }

    v18 = [[BRLTSTranslator alloc] initWithBundle:v17];
    translator = v7->_translator;
    v7->_translator = v18;

    goto LABEL_13;
  }

LABEL_10:

LABEL_14:
  v21 = BRLTLog();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    [(BRLTServiceTranslator *)v5 initWithTable:v21];
  }

  v20 = 0;
LABEL_17:

  v22 = *MEMORY[0x277D85DE8];
  return v20;
}

- (id)brailleForText:(id)a3 locations:(id *)a4
{
  v6 = a3;
  if ([v6 length])
  {
    v7 = [BRLTTranslationParameters alloc];
    v8 = [(BRLTTable *)self->_table tableIdentifier];
    v9 = [(BRLTTranslationParameters *)v7 initWithLanguage:v8 mode:1 partial:0 useTechnicalTable:0 textPositionsRange:0x7FFFFFFFFFFFFFFFLL textFormattingRanges:0, 0];

    v10 = [(BRLTServiceTranslator *)self translator];
    v15 = 0;
    v11 = [v10 brailleForText:v6 parameters:v9 locations:&v15];
    v12 = v15;

    if (a4)
    {
      v13 = [(BRLTServiceTranslator *)self _arrayFromData:v12];
      *a4 = -[BRLTServiceTranslator _locationMapWithLength:forArray:defaultLocation:](self, "_locationMapWithLength:forArray:defaultLocation:", -[__CFString length](v11, "length"), v13, [v6 length] - 1);
    }
  }

  else
  {
    if (a4)
    {
      *a4 = MEMORY[0x277CBEBF8];
    }

    v11 = &stru_2853FD1A8;
  }

  return v11;
}

- (id)textForBraille:(id)a3 locations:(id *)a4
{
  v6 = a3;
  if ([v6 length])
  {
    v7 = [BRLTTranslationParameters alloc];
    v8 = [(BRLTTable *)self->_table tableIdentifier];
    v9 = [(BRLTTranslationParameters *)v7 initWithLanguage:v8 mode:1 partial:0 useTechnicalTable:0 textPositionsRange:0x7FFFFFFFFFFFFFFFLL textFormattingRanges:0, 0];

    v10 = [(BRLTServiceTranslator *)self translator];
    v15 = 0;
    v11 = [v10 textForBraille:v6 parameters:v9 locations:&v15];
    v12 = v15;

    if (a4)
    {
      v13 = [(BRLTServiceTranslator *)self _arrayFromData:v12];
      *a4 = -[BRLTServiceTranslator _locationMapWithLength:forArray:defaultLocation:](self, "_locationMapWithLength:forArray:defaultLocation:", -[__CFString length](v11, "length"), v13, [v6 length] - 1);
    }
  }

  else
  {
    if (a4)
    {
      *a4 = MEMORY[0x277CBEBF8];
    }

    v11 = &stru_2853FD1A8;
  }

  return v11;
}

- (id)_arrayFromData:(id)a3
{
  v3 = a3;
  v4 = [v3 length];
  v5 = v4 >> 3;
  v6 = [v3 bytes];
  v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v4 >> 3];
  if (v4 >= 8)
  {
    do
    {
      v8 = *v6++;
      v9 = [MEMORY[0x277CCABB0] numberWithInteger:v8];
      [v7 addObject:v9];

      --v5;
    }

    while (v5);
  }

  return v7;
}

- (id)_locationMapWithLength:(int64_t)a3 forArray:(id)a4 defaultLocation:(int64_t)a5
{
  v7 = a4;
  if ([v7 count] > a3)
  {
    v8 = [v7 subarrayWithRange:{0, a3}];
LABEL_5:
    v9 = v8;
    goto LABEL_6;
  }

  if ([v7 count] == a3)
  {
    v8 = v7;
    goto LABEL_5;
  }

  v11 = a3 - [v7 count];
  v9 = [MEMORY[0x277CBEB18] arrayWithArray:v7];
  if (v11 >= 1)
  {
    do
    {
      v12 = [MEMORY[0x277CCABB0] numberWithInteger:a5];
      [v9 addObject:v12];

      --v11;
    }

    while (v11);
  }

LABEL_6:

  return v9;
}

- (void)initWithTable:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 serviceIdentifier];
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_241DFD000, a2, OS_LOG_TYPE_ERROR, "Couldn't load braille bundle for identifier: %@", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

@end