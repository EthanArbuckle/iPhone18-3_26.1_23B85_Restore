@interface NSURL
+ (id)mf_URLForMessageLibraryID:(id)d externalID:(id)iD;
+ (id)mf_fileURLInTempAppendingTimestampedPathComponent:(id)component withExtension:(id)extension;
- (BOOL)mf_isDocumentURL;
- (BOOL)mf_isInternallyHandleable;
- (BOOL)mf_isMailCleanupDashboardURL;
- (BOOL)mf_isOAuthRedirectURL;
- (id)mf_conversationCriterion;
- (id)mf_messageCriterion;
@end

@implementation NSURL

+ (id)mf_URLForMessageLibraryID:(id)d externalID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v7 = objc_alloc_init(NSURLComponents);
  [v7 setScheme:EMAppleMailURLScheme];
  [v7 setHost:@"message"];
  dCopy = [NSString stringWithFormat:@"/%@", dCopy];
  [v7 setPath:dCopy];

  if (iDCopy)
  {
    v9 = [NSURLQueryItem queryItemWithName:@"uuid" value:iDCopy];
    v13 = v9;
    v10 = [NSArray arrayWithObjects:&v13 count:1];
    [v7 setQueryItems:v10];
  }

  v11 = [v7 URL];

  return v11;
}

+ (id)mf_fileURLInTempAppendingTimestampedPathComponent:(id)component withExtension:(id)extension
{
  componentCopy = component;
  extensionCopy = extension;
  v7 = NSTemporaryDirectory();
  v8 = [NSURL fileURLWithPath:v7];
  v9 = [v8 ef_URLByAppendingTimestampedPathComponent:componentCopy withExtension:extensionCopy];

  return v9;
}

- (BOOL)mf_isInternallyHandleable
{
  scheme = [(NSURL *)self scheme];
  if ([scheme caseInsensitiveCompare:EMMailToURLScheme] && objc_msgSend(scheme, "caseInsensitiveCompare:", EMAppleMailReplyURLScheme) && objc_msgSend(scheme, "caseInsensitiveCompare:", EMAppleMailForwardURLScheme) && objc_msgSend(scheme, "caseInsensitiveCompare:", EMMessageIDURLScheme) && objc_msgSend(scheme, "caseInsensitiveCompare:", EMAppleMailHandoffPayloadURLScheme) && objc_msgSend(scheme, "caseInsensitiveCompare:", EMAppleMailShowVIPMessagesURLScheme) && objc_msgSend(scheme, "caseInsensitiveCompare:", EMAppleMailShowVIPSettingsURLScheme))
  {
    searchResultIdentifier = [(NSURL *)self searchResultIdentifier];
    v5 = searchResultIdentifier == 0;
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

  pathComponents = [(NSURL *)self pathComponents];
  v4 = [pathComponents count] > 1;

  return v4;
}

- (BOOL)mf_isOAuthRedirectURL
{
  if (qword_100185B38 != -1)
  {
    sub_1000D5A64();
  }

  v3 = qword_100185B30;
  scheme = [(NSURL *)self scheme];
  LOBYTE(v3) = [v3 ef_caseInsensitiveIsEqualToString:scheme];

  return v3;
}

- (BOOL)mf_isMailCleanupDashboardURL
{
  absoluteString = [(NSURL *)self absoluteString];
  v3 = [absoluteString containsString:@"origin=mailCleanupDashboard"];

  return v3;
}

- (id)mf_messageCriterion
{
  em_internalMessageID = [(NSURL *)self em_internalMessageID];
  if (em_internalMessageID)
  {
    v4 = [[NSString alloc] initWithFormat:@"%lld", objc_msgSend(em_internalMessageID, "databaseID")];
    v5 = [MFMessageCriterion criterionForLibraryID:v4];
    externalID = [em_internalMessageID externalID];
    if (externalID)
    {
      v7 = [[MFMessageCriterion alloc] initWithType:36 qualifier:3 expression:externalID];
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

  em_messageIDHeader = [(NSURL *)self em_messageIDHeader];
  if (em_messageIDHeader)
  {
    v9 = [[MFMessageCriterion alloc] initWithType:1 qualifier:3 expression:em_messageIDHeader];
    [v9 setCriterionIdentifier:ECMessageHeaderKeyMessageID];
LABEL_12:

    goto LABEL_13;
  }

  if (![(NSURL *)self mf_isDocumentURL])
  {
    v9 = 0;
    goto LABEL_12;
  }

  lastPathComponent = [(NSURL *)self lastPathComponent];
  if (lastPathComponent)
  {
    v9 = [MFMessageCriterion criterionForDocumentID:lastPathComponent];

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
    pathComponents = [(NSURL *)self pathComponents];
    if ([pathComponents count] == 2)
    {
      lastObject = [pathComponents lastObject];
      v5 = [[MFMessageCriterion alloc] initWithType:34 qualifier:3 expression:lastObject];
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