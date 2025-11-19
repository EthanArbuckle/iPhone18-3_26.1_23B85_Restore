@interface DOCDateParser
- (DOCDateParser)init;
- (id)parse:(id)a3;
- (void)dealloc;
@end

@implementation DOCDateParser

- (DOCDateParser)init
{
  v7.receiver = self;
  v7.super_class = DOCDateParser;
  v2 = [(DOCDateParser *)&v7 init];
  if (v2)
  {
    v3 = objc_opt_new();
    v2->_searchParser = NLSearchParserCreate();
    NLSearchParserSetContext();
    searchParser = v2->_searchParser;
    NLSearchParserSetIndex();
    v5 = v2;
  }

  return v2;
}

- (id)parse:(id)a3
{
  v4 = a3;
  searchParser = self->_searchParser;
  NLSearchParserSetString();
  v6 = self->_searchParser;
  v7 = NLSearchParserCopyParseWithOptions();
  v8 = NLSearchParseCandidateCopyAttributedInput();
  CFRelease(v7);
  v9 = [v8 firstObject];
  v10 = MEMORY[0x277D06310];
  v11 = *MEMORY[0x277D06310];
  if (!*MEMORY[0x277D06310])
  {
    DOCInitLogging();
    v11 = *v10;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [(DOCDateParser *)v4 parse:v9, v11];
  }

  return v9;
}

- (void)dealloc
{
  searchParser = self->_searchParser;
  if (searchParser)
  {
    CFRelease(searchParser);
  }

  v4.receiver = self;
  v4.super_class = DOCDateParser;
  [(DOCDateParser *)&v4 dealloc];
}

- (void)parse:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = @"YES";
  if (a2)
  {
    v3 = @"NO";
  }

  v5 = 138412546;
  v6 = a1;
  v7 = 2112;
  v8 = v3;
  _os_log_debug_impl(&dword_249CE0000, log, OS_LOG_TYPE_DEBUG, "DOCDateParser: Did find an NLP annotation in the current input '%@': %@", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

@end