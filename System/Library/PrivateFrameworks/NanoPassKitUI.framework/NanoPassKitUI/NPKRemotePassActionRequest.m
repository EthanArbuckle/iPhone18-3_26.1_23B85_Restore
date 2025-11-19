@interface NPKRemotePassActionRequest
- (NSString)actionText;
- (NSString)identifier;
- (PKPaymentPassAction)action;
- (id)description;
@end

@implementation NPKRemotePassActionRequest

- (id)description
{
  v8.receiver = self;
  v8.super_class = NPKRemotePassActionRequest;
  v3 = [(NPKRemotePassAction *)&v8 description];
  v4 = [(NPKRemotePassActionRequest *)self identifier];
  v5 = [(NPKRemotePassActionRequest *)self action];
  v6 = [v3 stringByAppendingFormat:@" (ID:%@, action:%@)", v4, v5];

  return v6;
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
      v8 = "[NPKRemotePassActionRequest identifier]";
      v9 = 2082;
      v10 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKitUI/NPKRemotePassActionRequest.m";
      v11 = 2048;
      v12 = 29;
      _os_log_impl(&dword_25B64D000, v4, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Subclasses must override)", &v7, 0x20u);
    }
  }

  _NPKAssertAbort();
  v5 = *MEMORY[0x277D85DE8];
  return &stru_286CE7B58;
}

- (PKPaymentPassAction)action
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = pk_General_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);

  if (v3)
  {
    v4 = pk_General_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v8 = 136446722;
      v9 = "[NPKRemotePassActionRequest action]";
      v10 = 2082;
      v11 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKitUI/NPKRemotePassActionRequest.m";
      v12 = 2048;
      v13 = 35;
      _os_log_impl(&dword_25B64D000, v4, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Subclasses must override)", &v8, 0x20u);
    }
  }

  _NPKAssertAbort();
  v5 = objc_alloc_init(MEMORY[0x277D38088]);
  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (NSString)actionText
{
  v2 = [(NPKRemotePassActionRequest *)self action];
  v3 = [v2 title];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [v2 confirmationTitle];
  }

  v6 = v5;

  return v6;
}

@end