@interface EMHMERecipientCreationRequest
+ (BOOL)canCreateHMEReplyToAddress:(id)a3;
+ (id)log;
- (EMHMERecipientCreationRequest)initWithAccount:(id)a3 recipient:(id)a4 hmeAddress:(id)a5;
- (id)_httpBody;
- (id)urlRequest;
- (id)urlString;
- (void)_httpBody;
@end

@implementation EMHMERecipientCreationRequest

+ (id)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__EMHMERecipientCreationRequest_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken_17 != -1)
  {
    dispatch_once(&log_onceToken_17, block);
  }

  v2 = log_log_17;

  return v2;
}

void __36__EMHMERecipientCreationRequest_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_17;
  log_log_17 = v1;
}

- (EMHMERecipientCreationRequest)initWithAccount:(id)a3 recipient:(id)a4 hmeAddress:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v19.receiver = self;
  v19.super_class = EMHMERecipientCreationRequest;
  v12 = [(EMHMERecipientCreationRequest *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_account, a3);
    v14 = [v10 copy];
    recipient = v13->_recipient;
    v13->_recipient = v14;

    v16 = [v11 copy];
    hmeAddress = v13->_hmeAddress;
    v13->_hmeAddress = v16;
  }

  return v13;
}

+ (BOOL)canCreateHMEReplyToAddress:(id)a3
{
  v3 = [a3 propertiesForDataclass:@"com.apple.Dataclass.PremiumMailSettings"];
  v4 = [v3 objectForKeyedSubscript:@"hmeGetReplyToAddress"];

  LOBYTE(v3) = [v4 length] != 0;
  return v3;
}

- (id)urlString
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = [(ACAccount *)self->_account propertiesForDataclass:@"com.apple.Dataclass.PremiumMailSettings"];
  v3 = [v2 objectForKeyedSubscript:@"hmeGetReplyToAddress"];

  v4 = +[EMHMERecipientCreationRequest log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&dword_1C6655000, v4, OS_LOG_TYPE_DEFAULT, "HME replyTo URL %@", &v7, 0xCu);
  }

  v5 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)_httpBody
{
  v12[2] = *MEMORY[0x1E69E9840];
  hmeAddress = self->_hmeAddress;
  v11[0] = @"hme";
  v11[1] = @"recipientEmail";
  recipient = self->_recipient;
  v12[0] = hmeAddress;
  v12[1] = recipient;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v10 = 0;
  v5 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v4 options:1 error:&v10];
  v6 = v10;
  if (v6)
  {
    v7 = +[EMHMERecipientCreationRequest log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(EMHMERecipientCreationRequest *)v6 _httpBody];
    }
  }

  v8 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)urlRequest
{
  v15.receiver = self;
  v15.super_class = EMHMERecipientCreationRequest;
  v3 = [(AARequest *)&v15 urlRequest];
  v4 = [v3 mutableCopy];

  [v4 setHTTPMethod:@"POST"];
  v5 = [(EMHMERecipientCreationRequest *)self _httpBody];
  [v4 setHTTPBody:v5];

  [v4 aa_addBasicAuthorizationHeaderWithAccount:self->_account preferUsingPassword:0];
  v6 = [MEMORY[0x1E698B890] udid];
  [v4 setValue:v6 forHTTPHeaderField:@"X-Client-UDID"];

  v7 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfFile:@"/System/Library/CoreServices/SystemVersion.plist"];
  v8 = [MEMORY[0x1E696AAE8] mainBundle];
  v9 = [v8 infoDictionary];

  v10 = [v7 objectForKey:@"ProductVersion"];
  v11 = [v9 objectForKey:@"CFBundleName"];
  v12 = [v9 objectForKey:@"CFBundleVersion"];
  v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%@ iOS/%@", v11, v12, v10];
  [v4 setValue:v13 forHTTPHeaderField:@"User-agent"];

  return v4;
}

- (void)_httpBody
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1C6655000, a2, OS_LOG_TYPE_ERROR, "JSONSerialization error for body %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end