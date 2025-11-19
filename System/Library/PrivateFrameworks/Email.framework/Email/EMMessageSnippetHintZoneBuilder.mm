@interface EMMessageSnippetHintZoneBuilder
+ (OS_os_log)log;
+ (id)authorHintsFromHintsBySnippetZone:(id)a3;
+ (id)snippetHintZoneFromString:(id)a3;
@end

@implementation EMMessageSnippetHintZoneBuilder

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__EMMessageSnippetHintZoneBuilder_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken_26 != -1)
  {
    dispatch_once(&log_onceToken_26, block);
  }

  v2 = log_log_26;

  return v2;
}

void __38__EMMessageSnippetHintZoneBuilder_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_26;
  log_log_26 = v1;
}

+ (id)snippetHintZoneFromString:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:*MEMORY[0x1E6963D18]] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"EMMessageSnippetHintZoneAuthor"))
  {
    v4 = @"EMMessageSnippetHintZoneAuthor";
  }

  else if ([v3 isEqualToString:*MEMORY[0x1E6963D00]] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"EMMessageSnippetHintZoneAuthorEmailAddresses"))
  {
    v4 = @"EMMessageSnippetHintZoneAuthorEmailAddresses";
  }

  else if ([v3 isEqualToString:*MEMORY[0x1E6964B58]] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"EMMessageSnippetHintZoneSubject"))
  {
    v4 = @"EMMessageSnippetHintZoneSubject";
  }

  else if ([v3 isEqualToString:*MEMORY[0x1E6964BB0]] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"EMMessageSnippetHintZoneTextContent"))
  {
    v4 = @"EMMessageSnippetHintZoneTextContent";
  }

  else if ([v3 isEqualToString:*MEMORY[0x1E69649F8]] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"EMMessageSnippetHintZoneRecipients"))
  {
    v4 = @"EMMessageSnippetHintZoneRecipients";
  }

  else if ([v3 isEqualToString:*MEMORY[0x1E69649F0]] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"EMMessageSnippetHintZoneRecipientEmailAddresses"))
  {
    v4 = @"EMMessageSnippetHintZoneRecipientEmailAddresses";
  }

  else if ([v3 isEqualToString:*MEMORY[0x1E6963FC8]] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"EMMessageSnippetHintZoneEmailAddresses"))
  {
    v4 = @"EMMessageSnippetHintZoneEmailAddresses";
  }

  else if ([v3 isEqualToString:*MEMORY[0x1E6963C98]] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"EMMessageSnippetHintZoneAttachmentNames"))
  {
    v4 = @"EMMessageSnippetHintZoneAttachmentNames";
  }

  else if ([v3 isEqualToString:*MEMORY[0x1E6963CA8]] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"EMMessageSnippetHintZoneAttachmentTypes"))
  {
    v4 = @"EMMessageSnippetHintZoneAttachmentTypes";
  }

  else
  {
    v6 = +[EMMessageSnippetHintZoneBuilder log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(EMMessageSnippetHintZoneBuilder *)v3 snippetHintZoneFromString:v6];
    }

    v4 = @"EMMessageSnippetHintZoneOther";
  }

  return v4;
}

+ (id)authorHintsFromHintsBySnippetZone:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = objc_opt_new();
    v5 = [v3 objectForKeyedSubscript:@"EMMessageSnippetHintZoneAuthor"];
    [v4 addObjectsFromArray:v5];

    v6 = [v3 objectForKeyedSubscript:@"EMMessageSnippetHintZoneAuthorEmailAddresses"];
    [v4 addObjectsFromArray:v6];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (void)snippetHintZoneFromString:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1C6655000, a2, OS_LOG_TYPE_ERROR, "[Snippet Hints] Unsupported snippet hint zone: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end