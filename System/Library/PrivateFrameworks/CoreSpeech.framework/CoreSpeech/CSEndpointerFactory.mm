@interface CSEndpointerFactory
+ (id)endpointAnalyzer:(BOOL)analyzer;
@end

@implementation CSEndpointerFactory

+ (id)endpointAnalyzer:(BOOL)analyzer
{
  v13 = *MEMORY[0x277D85DE8];
  isAttentiveSiriEnabled = [MEMORY[0x277D018F8] isAttentiveSiriEnabled];
  v5 = *MEMORY[0x277D015B8];
  v6 = os_log_type_enabled(*MEMORY[0x277D015B8], OS_LOG_TYPE_DEFAULT);
  if (!isAttentiveSiriEnabled || analyzer)
  {
    if (v6)
    {
      v11 = 136315138;
      v12 = "+[CSEndpointerFactory endpointAnalyzer:]";
      _os_log_impl(&dword_222E4D000, v5, OS_LOG_TYPE_DEFAULT, "%s Endpointer running on assistantd", &v11, 0xCu);
    }

    v7 = off_2784C17B0;
  }

  else
  {
    if (v6)
    {
      v11 = 136315138;
      v12 = "+[CSEndpointerFactory endpointAnalyzer:]";
      _os_log_impl(&dword_222E4D000, v5, OS_LOG_TYPE_DEFAULT, "%s Endpointer running on corespeechd", &v11, 0xCu);
    }

    v7 = off_2784C1658;
  }

  v8 = objc_alloc_init(*v7);
  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

@end