@interface EMMessageSnippetHintZoneBuilder
+ (OS_os_log)log;
+ (id)authorHintsFromHintsBySnippetZone:(id)zone;
+ (id)snippetHintZoneFromString:(id)string;
@end

@implementation EMMessageSnippetHintZoneBuilder

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__EMMessageSnippetHintZoneBuilder_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
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

+ (id)snippetHintZoneFromString:(id)string
{
  stringCopy = string;
  if ([stringCopy isEqualToString:*MEMORY[0x1E6963D18]] & 1) != 0 || (objc_msgSend(stringCopy, "isEqualToString:", @"EMMessageSnippetHintZoneAuthor"))
  {
    v4 = @"EMMessageSnippetHintZoneAuthor";
  }

  else if ([stringCopy isEqualToString:*MEMORY[0x1E6963D00]] & 1) != 0 || (objc_msgSend(stringCopy, "isEqualToString:", @"EMMessageSnippetHintZoneAuthorEmailAddresses"))
  {
    v4 = @"EMMessageSnippetHintZoneAuthorEmailAddresses";
  }

  else if ([stringCopy isEqualToString:*MEMORY[0x1E6964B58]] & 1) != 0 || (objc_msgSend(stringCopy, "isEqualToString:", @"EMMessageSnippetHintZoneSubject"))
  {
    v4 = @"EMMessageSnippetHintZoneSubject";
  }

  else if ([stringCopy isEqualToString:*MEMORY[0x1E6964BB0]] & 1) != 0 || (objc_msgSend(stringCopy, "isEqualToString:", @"EMMessageSnippetHintZoneTextContent"))
  {
    v4 = @"EMMessageSnippetHintZoneTextContent";
  }

  else if ([stringCopy isEqualToString:*MEMORY[0x1E69649F8]] & 1) != 0 || (objc_msgSend(stringCopy, "isEqualToString:", @"EMMessageSnippetHintZoneRecipients"))
  {
    v4 = @"EMMessageSnippetHintZoneRecipients";
  }

  else if ([stringCopy isEqualToString:*MEMORY[0x1E69649F0]] & 1) != 0 || (objc_msgSend(stringCopy, "isEqualToString:", @"EMMessageSnippetHintZoneRecipientEmailAddresses"))
  {
    v4 = @"EMMessageSnippetHintZoneRecipientEmailAddresses";
  }

  else if ([stringCopy isEqualToString:*MEMORY[0x1E6963FC8]] & 1) != 0 || (objc_msgSend(stringCopy, "isEqualToString:", @"EMMessageSnippetHintZoneEmailAddresses"))
  {
    v4 = @"EMMessageSnippetHintZoneEmailAddresses";
  }

  else if ([stringCopy isEqualToString:*MEMORY[0x1E6963C98]] & 1) != 0 || (objc_msgSend(stringCopy, "isEqualToString:", @"EMMessageSnippetHintZoneAttachmentNames"))
  {
    v4 = @"EMMessageSnippetHintZoneAttachmentNames";
  }

  else if ([stringCopy isEqualToString:*MEMORY[0x1E6963CA8]] & 1) != 0 || (objc_msgSend(stringCopy, "isEqualToString:", @"EMMessageSnippetHintZoneAttachmentTypes"))
  {
    v4 = @"EMMessageSnippetHintZoneAttachmentTypes";
  }

  else
  {
    v6 = +[EMMessageSnippetHintZoneBuilder log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(EMMessageSnippetHintZoneBuilder *)stringCopy snippetHintZoneFromString:v6];
    }

    v4 = @"EMMessageSnippetHintZoneOther";
  }

  return v4;
}

+ (id)authorHintsFromHintsBySnippetZone:(id)zone
{
  zoneCopy = zone;
  if (zoneCopy)
  {
    v4 = objc_opt_new();
    v5 = [zoneCopy objectForKeyedSubscript:@"EMMessageSnippetHintZoneAuthor"];
    [v4 addObjectsFromArray:v5];

    v6 = [zoneCopy objectForKeyedSubscript:@"EMMessageSnippetHintZoneAuthorEmailAddresses"];
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