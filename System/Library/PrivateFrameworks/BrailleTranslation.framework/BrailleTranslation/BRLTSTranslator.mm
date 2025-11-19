@interface BRLTSTranslator
- (BRLTSTranslator)initWithBundle:(id)a3;
- (BRLTTranslatorProtocol)translator;
- (id)brailleForText:(id)a3 parameters:(id)a4 locations:(id *)a5;
- (id)textForBraille:(id)a3 parameters:(id)a4 locations:(id *)a5;
- (void)translator;
@end

@implementation BRLTSTranslator

- (BRLTSTranslator)initWithBundle:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = BRLTSTranslator;
  v6 = [(BRLTSTranslator *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bundle, a3);
    translator = v7->_translator;
    v7->_translator = 0;
  }

  return v7;
}

- (BRLTTranslatorProtocol)translator
{
  translator = self->_translator;
  if (translator)
  {
LABEL_2:
    v3 = translator;
    goto LABEL_19;
  }

  v5 = [(BRLTSTranslator *)self bundle];
  v6 = [v5 principalClass];

  if (v6)
  {
    if ((BRLTTranslatorClassIsValid(v6) & 1) == 0)
    {
      v12 = BRLTLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [(BRLTSTranslator *)v6 translator];
      }

      goto LABEL_18;
    }

    v7 = objc_alloc_init(v6);
    v8 = [v7 interfaceVersion];
    v9 = BRLTLog();
    v10 = v9;
    if (v8 == 7)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        [(BRLTSTranslator *)v7 translator];
      }

      v11 = self->_translator;
      self->_translator = v7;

      translator = self->_translator;
      goto LABEL_2;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(BRLTSTranslator *)v7 translator];
    }
  }

  else
  {
    v7 = BRLTLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(BRLTSTranslator *)self translator];
    }
  }

LABEL_18:
  v3 = 0;
LABEL_19:

  return v3;
}

- (id)brailleForText:(id)a3 parameters:(id)a4 locations:(id *)a5
{
  v33 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [(BRLTSTranslator *)self translator];
  v11 = [v9 language];
  [v10 setActiveTable:v11];

  if (v8)
  {
    v12 = [(BRLTSTranslator *)self translator];
    v13 = [v9 mode];
    v14 = [v9 textPositionsRange];
    v16 = v15;
    v17 = [v9 textFormattingRanges];
    v18 = [v12 printBrailleForText:v8 mode:v13 locations:a5 textPositionsRange:v14 textFormattingRanges:{v16, v17}];
  }

  else
  {
    v18 = 0;
  }

  v19 = BRLTLog();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    v22 = [v9 language];
    v23 = v22;
    if (a5)
    {
      v24 = *a5;
    }

    else
    {
      v24 = 0;
    }

    v25 = 138413058;
    v26 = v8;
    v27 = 2112;
    v28 = v18;
    v29 = 2112;
    v30 = v22;
    v31 = 2112;
    v32 = v24;
    _os_log_debug_impl(&dword_241DFD000, v19, OS_LOG_TYPE_DEBUG, "Translated text:'%@' -> '%@' lang:%@ positions:%@", &v25, 0x2Au);
  }

  v20 = *MEMORY[0x277D85DE8];

  return v18;
}

- (id)textForBraille:(id)a3 parameters:(id)a4 locations:(id *)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [(BRLTSTranslator *)self translator];
  v11 = [v9 language];
  [v10 setActiveTable:v11];

  if (v8)
  {
    v12 = [(BRLTSTranslator *)self translator];
    v13 = [v12 textForPrintBraille:v8 mode:objc_msgSend(v9 locations:{"mode"), a5}];
  }

  else
  {
    v13 = 0;
  }

  v14 = BRLTLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v17 = [v9 language];
    v18 = v17;
    if (a5)
    {
      v19 = *a5;
    }

    else
    {
      v19 = 0;
    }

    v20 = 138413058;
    v21 = v8;
    v22 = 2112;
    v23 = v13;
    v24 = 2112;
    v25 = v17;
    v26 = 2112;
    v27 = v19;
    _os_log_debug_impl(&dword_241DFD000, v14, OS_LOG_TYPE_DEBUG, "Translated braille: '%@' -> '%@' lang:%@ positions:%@", &v20, 0x2Au);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v13;
}

- (void)translator
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = [a1 bundle];
  v4 = [v3 bundleIdentifier];
  v6 = 138412290;
  v7 = v4;
  _os_log_error_impl(&dword_241DFD000, a2, OS_LOG_TYPE_ERROR, "Couldn't load braille bundle for identifier: %@", &v6, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

@end