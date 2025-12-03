@interface BRLTSTranslator
- (BRLTSTranslator)initWithBundle:(id)bundle;
- (BRLTTranslatorProtocol)translator;
- (id)brailleForText:(id)text parameters:(id)parameters locations:(id *)locations;
- (id)textForBraille:(id)braille parameters:(id)parameters locations:(id *)locations;
- (void)translator;
@end

@implementation BRLTSTranslator

- (BRLTSTranslator)initWithBundle:(id)bundle
{
  bundleCopy = bundle;
  v10.receiver = self;
  v10.super_class = BRLTSTranslator;
  v6 = [(BRLTSTranslator *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bundle, bundle);
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

  bundle = [(BRLTSTranslator *)self bundle];
  principalClass = [bundle principalClass];

  if (principalClass)
  {
    if ((BRLTTranslatorClassIsValid(principalClass) & 1) == 0)
    {
      v12 = BRLTLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [(BRLTSTranslator *)principalClass translator];
      }

      goto LABEL_18;
    }

    v7 = objc_alloc_init(principalClass);
    interfaceVersion = [v7 interfaceVersion];
    v9 = BRLTLog();
    v10 = v9;
    if (interfaceVersion == 7)
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

- (id)brailleForText:(id)text parameters:(id)parameters locations:(id *)locations
{
  v33 = *MEMORY[0x277D85DE8];
  textCopy = text;
  parametersCopy = parameters;
  translator = [(BRLTSTranslator *)self translator];
  language = [parametersCopy language];
  [translator setActiveTable:language];

  if (textCopy)
  {
    translator2 = [(BRLTSTranslator *)self translator];
    mode = [parametersCopy mode];
    textPositionsRange = [parametersCopy textPositionsRange];
    v16 = v15;
    textFormattingRanges = [parametersCopy textFormattingRanges];
    v18 = [translator2 printBrailleForText:textCopy mode:mode locations:locations textPositionsRange:textPositionsRange textFormattingRanges:{v16, textFormattingRanges}];
  }

  else
  {
    v18 = 0;
  }

  v19 = BRLTLog();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    language2 = [parametersCopy language];
    v23 = language2;
    if (locations)
    {
      v24 = *locations;
    }

    else
    {
      v24 = 0;
    }

    v25 = 138413058;
    v26 = textCopy;
    v27 = 2112;
    v28 = v18;
    v29 = 2112;
    v30 = language2;
    v31 = 2112;
    v32 = v24;
    _os_log_debug_impl(&dword_241DFD000, v19, OS_LOG_TYPE_DEBUG, "Translated text:'%@' -> '%@' lang:%@ positions:%@", &v25, 0x2Au);
  }

  v20 = *MEMORY[0x277D85DE8];

  return v18;
}

- (id)textForBraille:(id)braille parameters:(id)parameters locations:(id *)locations
{
  v28 = *MEMORY[0x277D85DE8];
  brailleCopy = braille;
  parametersCopy = parameters;
  translator = [(BRLTSTranslator *)self translator];
  language = [parametersCopy language];
  [translator setActiveTable:language];

  if (brailleCopy)
  {
    translator2 = [(BRLTSTranslator *)self translator];
    v13 = [translator2 textForPrintBraille:brailleCopy mode:objc_msgSend(parametersCopy locations:{"mode"), locations}];
  }

  else
  {
    v13 = 0;
  }

  v14 = BRLTLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    language2 = [parametersCopy language];
    v18 = language2;
    if (locations)
    {
      v19 = *locations;
    }

    else
    {
      v19 = 0;
    }

    v20 = 138413058;
    v21 = brailleCopy;
    v22 = 2112;
    v23 = v13;
    v24 = 2112;
    v25 = language2;
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
  bundle = [self bundle];
  bundleIdentifier = [bundle bundleIdentifier];
  v6 = 138412290;
  v7 = bundleIdentifier;
  _os_log_error_impl(&dword_241DFD000, a2, OS_LOG_TYPE_ERROR, "Couldn't load braille bundle for identifier: %@", &v6, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

@end