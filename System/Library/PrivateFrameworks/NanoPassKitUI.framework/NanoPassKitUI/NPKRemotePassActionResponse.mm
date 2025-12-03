@interface NPKRemotePassActionResponse
- (NSString)identifier;
- (PKCurrencyAmount)currencyAmount;
- (id)description;
- (int)result;
@end

@implementation NPKRemotePassActionResponse

- (id)description
{
  v7.receiver = self;
  v7.super_class = NPKRemotePassActionResponse;
  v3 = [(NPKRemotePassAction *)&v7 description];
  identifier = [(NPKRemotePassActionResponse *)self identifier];
  v5 = [v3 stringByAppendingFormat:@" (ID:%@, result:%d)", identifier, -[NPKRemotePassActionResponse result](self, "result")];

  return v5;
}

- (NSString)identifier
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = pk_General_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);

  if (v3)
  {
    v4 = pk_General_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v7 = 136446722;
      v8 = "[NPKRemotePassActionResponse identifier]";
      v9 = 2082;
      v10 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKitUI/NPKRemotePassActionResponse.m";
      v11 = 2048;
      v12 = 63;
      _os_log_impl(&dword_25B64D000, v4, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Subclasses must override)", &v7, 0x20u);
    }
  }

  _NPKAssertAbort();
  v5 = *MEMORY[0x277D85DE8];
  return &stru_286CE7B58;
}

- (int)result
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = pk_General_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);

  if (v3)
  {
    v4 = pk_General_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v7 = 136446722;
      v8 = "[NPKRemotePassActionResponse result]";
      v9 = 2082;
      v10 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKitUI/NPKRemotePassActionResponse.m";
      v11 = 2048;
      v12 = 69;
      _os_log_impl(&dword_25B64D000, v4, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Subclasses must override)", &v7, 0x20u);
    }
  }

  _NPKAssertAbort();
  v5 = *MEMORY[0x277D85DE8];
  return 0;
}

- (PKCurrencyAmount)currencyAmount
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = pk_General_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);

  if (v3)
  {
    v4 = pk_General_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v7 = 136446722;
      v8 = "[NPKRemotePassActionResponse currencyAmount]";
      v9 = 2082;
      v10 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKitUI/NPKRemotePassActionResponse.m";
      v11 = 2048;
      v12 = 75;
      _os_log_impl(&dword_25B64D000, v4, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Subclasses must override)", &v7, 0x20u);
    }
  }

  _NPKAssertAbort();
  v5 = *MEMORY[0x277D85DE8];
  return 0;
}

@end