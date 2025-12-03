@interface LACDTOTimerConfigurationProvider
- (LACDTOTimerConfigurationProvider)initWithSEP:(id)p;
- (id)currentConfiguration;
- (id)defaultConfiguration;
- (void)currentConfiguration;
@end

@implementation LACDTOTimerConfigurationProvider

- (LACDTOTimerConfigurationProvider)initWithSEP:(id)p
{
  pCopy = p;
  v9.receiver = self;
  v9.super_class = LACDTOTimerConfigurationProvider;
  v6 = [(LACDTOTimerConfigurationProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sep, p);
  }

  return v7;
}

- (id)currentConfiguration
{
  v3 = objc_alloc_init(LACDTORatchetSEPStateParser);
  sep = self->_sep;
  v11 = 0;
  v5 = [(LACDTORatchetSEPInterface *)sep fetchConfigurationAndStatus:&v11];
  v6 = v11;
  if (v5)
  {
    defaultConfiguration = [(LACDTORatchetSEPStateParser *)v3 timerConfigurationFromState:v5];
  }

  else
  {
    v8 = LACLogDTO();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(LACDTOTimerConfigurationProvider *)v6 currentConfiguration];
    }

    defaultConfiguration = [(LACDTOTimerConfigurationProvider *)self defaultConfiguration];
  }

  v9 = defaultConfiguration;

  return v9;
}

- (id)defaultConfiguration
{
  v2 = objc_alloc_init(LACDTOMutableTimerConfiguration);
  [(LACDTOMutableTimerConfiguration *)v2 setValue:&unk_1F26935E0 forTimer:0];
  [(LACDTOMutableTimerConfiguration *)v2 setValue:&unk_1F26935E0 forTimer:1];
  [(LACDTOMutableTimerConfiguration *)v2 setValue:&unk_1F26935F8 forTimer:2];
  [(LACDTOMutableTimerConfiguration *)v2 setValue:&unk_1F2693610 forTimer:3];
  [(LACDTOMutableTimerConfiguration *)v2 setValue:&unk_1F2693628 forTimer:5];
  [(LACDTOMutableTimerConfiguration *)v2 setValue:&unk_1F2693640 forTimer:4];
  [(LACDTOMutableTimerConfiguration *)v2 setValue:&unk_1F26935F8 forTimer:6];

  return v2;
}

- (void)currentConfiguration
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  selfCopy = self;
  _os_log_error_impl(&dword_1B0233000, a2, OS_LOG_TYPE_ERROR, "Could not fetch current configuration (%@). Falling back to default", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end