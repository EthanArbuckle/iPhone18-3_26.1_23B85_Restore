@interface BRLTServiceTranslator
- (BRLTServiceTranslator)initWithTable:(id)table;
- (id)_arrayFromData:(id)data;
- (id)_locationMapWithLength:(int64_t)length forArray:(id)array defaultLocation:(int64_t)location;
- (id)brailleForText:(id)text locations:(id *)locations;
- (id)textForBraille:(id)braille locations:(id *)locations;
@end

@implementation BRLTServiceTranslator

- (BRLTServiceTranslator)initWithTable:(id)table
{
  v31 = *MEMORY[0x277D85DE8];
  tableCopy = table;
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

  objc_storeStrong(&v6->_table, table);
  +[BRLTTableEnumerator tableEnumeratorWithSystemBundlePath];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = v28 = 0u;
  translatorBundles = [v24 translatorBundles];
  v9 = [translatorBundles countByEnumeratingWithState:&v25 objects:v30 count:16];
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
        objc_enumerationMutation(translatorBundles);
      }

      v13 = *(*(&v25 + 1) + 8 * v12);
      bundleIdentifier = [v13 bundleIdentifier];
      serviceIdentifier = [tableCopy serviceIdentifier];
      v16 = [bundleIdentifier isEqualToString:serviceIdentifier];

      if (v16)
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [translatorBundles countByEnumeratingWithState:&v25 objects:v30 count:16];
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
    [(BRLTServiceTranslator *)tableCopy initWithTable:v21];
  }

  v20 = 0;
LABEL_17:

  v22 = *MEMORY[0x277D85DE8];
  return v20;
}

- (id)brailleForText:(id)text locations:(id *)locations
{
  textCopy = text;
  if ([textCopy length])
  {
    v7 = [BRLTTranslationParameters alloc];
    tableIdentifier = [(BRLTTable *)self->_table tableIdentifier];
    v9 = [(BRLTTranslationParameters *)v7 initWithLanguage:tableIdentifier mode:1 partial:0 useTechnicalTable:0 textPositionsRange:0x7FFFFFFFFFFFFFFFLL textFormattingRanges:0, 0];

    translator = [(BRLTServiceTranslator *)self translator];
    v15 = 0;
    v11 = [translator brailleForText:textCopy parameters:v9 locations:&v15];
    v12 = v15;

    if (locations)
    {
      v13 = [(BRLTServiceTranslator *)self _arrayFromData:v12];
      *locations = -[BRLTServiceTranslator _locationMapWithLength:forArray:defaultLocation:](self, "_locationMapWithLength:forArray:defaultLocation:", -[__CFString length](v11, "length"), v13, [textCopy length] - 1);
    }
  }

  else
  {
    if (locations)
    {
      *locations = MEMORY[0x277CBEBF8];
    }

    v11 = &stru_2853FD1A8;
  }

  return v11;
}

- (id)textForBraille:(id)braille locations:(id *)locations
{
  brailleCopy = braille;
  if ([brailleCopy length])
  {
    v7 = [BRLTTranslationParameters alloc];
    tableIdentifier = [(BRLTTable *)self->_table tableIdentifier];
    v9 = [(BRLTTranslationParameters *)v7 initWithLanguage:tableIdentifier mode:1 partial:0 useTechnicalTable:0 textPositionsRange:0x7FFFFFFFFFFFFFFFLL textFormattingRanges:0, 0];

    translator = [(BRLTServiceTranslator *)self translator];
    v15 = 0;
    v11 = [translator textForBraille:brailleCopy parameters:v9 locations:&v15];
    v12 = v15;

    if (locations)
    {
      v13 = [(BRLTServiceTranslator *)self _arrayFromData:v12];
      *locations = -[BRLTServiceTranslator _locationMapWithLength:forArray:defaultLocation:](self, "_locationMapWithLength:forArray:defaultLocation:", -[__CFString length](v11, "length"), v13, [brailleCopy length] - 1);
    }
  }

  else
  {
    if (locations)
    {
      *locations = MEMORY[0x277CBEBF8];
    }

    v11 = &stru_2853FD1A8;
  }

  return v11;
}

- (id)_arrayFromData:(id)data
{
  dataCopy = data;
  v4 = [dataCopy length];
  v5 = v4 >> 3;
  bytes = [dataCopy bytes];
  v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v4 >> 3];
  if (v4 >= 8)
  {
    do
    {
      v8 = *bytes++;
      v9 = [MEMORY[0x277CCABB0] numberWithInteger:v8];
      [v7 addObject:v9];

      --v5;
    }

    while (v5);
  }

  return v7;
}

- (id)_locationMapWithLength:(int64_t)length forArray:(id)array defaultLocation:(int64_t)location
{
  arrayCopy = array;
  if ([arrayCopy count] > length)
  {
    v8 = [arrayCopy subarrayWithRange:{0, length}];
LABEL_5:
    v9 = v8;
    goto LABEL_6;
  }

  if ([arrayCopy count] == length)
  {
    v8 = arrayCopy;
    goto LABEL_5;
  }

  v11 = length - [arrayCopy count];
  v9 = [MEMORY[0x277CBEB18] arrayWithArray:arrayCopy];
  if (v11 >= 1)
  {
    do
    {
      v12 = [MEMORY[0x277CCABB0] numberWithInteger:location];
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