@interface ICNAOptedInObject
+ (BOOL)isOptedInForAnalytics;
+ (void)isOptedInForAnalytics;
- (ICNAOptedInObject)init;
@end

@implementation ICNAOptedInObject

- (ICNAOptedInObject)init
{
  if (+[ICNAOptedInObject isOptedInForAnalytics])
  {
    v6.receiver = self;
    v6.super_class = ICNAOptedInObject;
    self = [(ICNAOptedInObject *)&v6 init];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  v4 = selfCopy;

  return v4;
}

+ (BOOL)isOptedInForAnalytics
{
  if (_analtyicsDisabled)
  {
    return 0;
  }

  v12 = v2;
  v8 = _isOptedInNumber;
  if (!_isOptedInNumber)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithBool:DiagnosticLogSubmissionEnabled_delayInitStub(v6)];
    v10 = _isOptedInNumber;
    _isOptedInNumber = v9;

    v11 = os_log_create("com.apple.notes", "Analytics");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      +[(ICNAOptedInObject *)v11];
    }

    v8 = _isOptedInNumber;
  }

  return [v8 BOOLValue];
}

+ (void)isOptedInForAnalytics
{
  v7 = *MEMORY[0x277D85DE8];
  bOOLValue = [_isOptedInNumber BOOLValue];
  v3 = @"NO";
  if (bOOLValue)
  {
    v3 = @"YES";
  }

  v5 = 138412290;
  v6 = v3;
  _os_log_debug_impl(&dword_25C6BF000, self, OS_LOG_TYPE_DEBUG, "D&U check result: %@", &v5, 0xCu);
  v4 = *MEMORY[0x277D85DE8];
}

@end