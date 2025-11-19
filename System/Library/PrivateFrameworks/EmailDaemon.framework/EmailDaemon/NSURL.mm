@interface NSURL
+ (id)mf_URLForMessageLibraryID:(id)a3 externalID:(id)a4;
+ (id)mf_fileURLInTempAppendingTimestampedPathComponent:(id)a3 withExtension:(id)a4;
- (BOOL)mf_isDocumentURL;
- (BOOL)mf_isInternallyHandleable;
- (BOOL)mf_isMailCleanupDashboardURL;
- (BOOL)mf_isOAuthRedirectURL;
- (id)mf_conversationCriterion;
- (id)mf_messageCriterion;
@end

@implementation NSURL

+ (id)mf_URLForMessageLibraryID:(id)a3 externalID:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(NSURLComponents);
  [v7 setScheme:EMAppleMailURLScheme];
  [v7 setHost:@"message"];
  v8 = [NSString stringWithFormat:@"/%@", v5];
  [v7 setPath:v8];

  if (v6)
  {
    v9 = [NSURLQueryItem queryItemWithName:@"uuid" value:v6];
    v13 = v9;
    v10 = [NSArray arrayWithObjects:&v13 count:1];
    [v7 setQueryItems:v10];
  }

  v11 = [v7 URL];

  return v11;
}

+ (id)mf_fileURLInTempAppendingTimestampedPathComponent:(id)a3 withExtension:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = NSTemporaryDirectory();
  v8 = [NSURL fileURLWithPath:v7];
  v9 = [v8 ef_URLByAppendingTimestampedPathComponent:v5 withExtension:v6];

  return v9;
}

- (BOOL)mf_isInternallyHandleable
{
  v3 = [(NSURL *)self scheme];
  if ([v3 caseInsensitiveCompare:EMMailToURLScheme] && objc_msgSend(v3, "caseInsensitiveCompare:", EMAppleMailReplyURLScheme) && objc_msgSend(v3, "caseInsensitiveCompare:", EMAppleMailForwardURLScheme) && objc_msgSend(v3, "caseInsensitiveCompare:", EMMessageIDURLScheme) && objc_msgSend(v3, "caseInsensitiveCompare:", EMAppleMailHandoffPayloadURLScheme) && objc_msgSend(v3, "caseInsensitiveCompare:", EMAppleMailShowVIPMessagesURLScheme) && objc_msgSend(v3, "caseInsensitiveCompare:", EMAppleMailShowVIPSettingsURLScheme))
  {
    v4 = [(NSURL *)self searchResultIdentifier];
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (BOOL)mf_isDocumentURL
{
  if (![(NSURL *)self ef_hasScheme:EMAppleMailURLScheme]|| ![(NSURL *)self ef_hasHost:@"document"])
  {
    return 0;
  }

  v3 = [(NSURL *)self pathComponents];
  v4 = [v3 count] > 1;

  return v4;
}

- (BOOL)mf_isOAuthRedirectURL
{
  if (qword_100185B38 != -1)
  {
    sub_1000D5A64();
  }

  v3 = qword_100185B30;
  v4 = [(NSURL *)self scheme];
  LOBYTE(v3) = [v3 ef_caseInsensitiveIsEqualToString:v4];

  return v3;
}

- (BOOL)mf_isMailCleanupDashboardURL
{
  v2 = [(NSURL *)self absoluteString];
  v3 = [v2 containsString:@"origin=mailCleanupDashboard"];

  return v3;
}

- (id)mf_messageCriterion
{
  v3 = [(NSURL *)self em_internalMessageID];
  if (v3)
  {
    v4 = [[NSString alloc] initWithFormat:@"%lld", objc_msgSend(v3, "databaseID")];
    v5 = [MFMessageCriterion criterionForLibraryID:v4];
    v6 = [v3 externalID];
    if (v6)
    {
      v7 = [[MFMessageCriterion alloc] initWithType:36 qualifier:3 expression:v6];
      v13[0] = v5;
      v13[1] = v7;
      v8 = [NSArray arrayWithObjects:v13 count:2];
      v9 = [MFMessageCriterion andCompoundCriterionWithCriteria:v8];
    }

    else
    {
      v9 = v5;
    }

    goto LABEL_13;
  }

  v10 = [(NSURL *)self em_messageIDHeader];
  if (v10)
  {
    v9 = [[MFMessageCriterion alloc] initWithType:1 qualifier:3 expression:v10];
    [v9 setCriterionIdentifier:ECMessageHeaderKeyMessageID];
LABEL_12:

    goto LABEL_13;
  }

  if (![(NSURL *)self mf_isDocumentURL])
  {
    v9 = 0;
    goto LABEL_12;
  }

  v11 = [(NSURL *)self lastPathComponent];
  if (v11)
  {
    v9 = [MFMessageCriterion criterionForDocumentID:v11];

    goto LABEL_12;
  }

  v9 = 0;
LABEL_13:

  return v9;
}

- (id)mf_conversationCriterion
{
  if ([(NSURL *)self ef_hasScheme:EMAppleMailURLScheme]&& [(NSURL *)self ef_hasHost:@"conversation"])
  {
    v3 = [(NSURL *)self pathComponents];
    if ([v3 count] == 2)
    {
      v4 = [v3 lastObject];
      v5 = [[MFMessageCriterion alloc] initWithType:34 qualifier:3 expression:v4];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end