@interface CDMSpanMatchDataUpdateCommand
- (CDMSpanMatchDataUpdateCommand)init;
@end

@implementation CDMSpanMatchDataUpdateCommand

- (CDMSpanMatchDataUpdateCommand)init
{
  v13 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = CDMSpanMatchDataUpdateCommand;
  v2 = [(CDMBaseCommand *)&v8 init];
  if (v2)
  {
    v3 = CDMLogContext;
    if (os_log_type_enabled(CDMLogContext, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v10 = "[CDMSpanMatchDataUpdateCommand init]";
      v11 = 2112;
      v12 = @"spanmatch";
      _os_log_impl(&dword_1DC287000, v3, OS_LOG_TYPE_INFO, "%s [insights-cdm-%@]:\nSiriVocabularyProtoSpanMatcher initialized", buf, 0x16u);
    }

    indexMatcher = [MEMORY[0x1E69CE410] indexMatcher];
    semSpanMatcher = v2->_semSpanMatcher;
    v2->_semSpanMatcher = indexMatcher;
  }

  v6 = *MEMORY[0x1E69E9840];
  return v2;
}

@end