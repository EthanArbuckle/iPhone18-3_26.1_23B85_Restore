@interface CKSpotlightQueryResult
- (BOOL)isEqual:(id)equal;
- (BOOL)isFromMe;
- (CKSpotlightQueryResult)initWithSearchableItem:(id)item queryType:(id)type withConversation:(id)conversation;
- (NSString)description;
- (NSString)messageGUID;
- (NSString)previewItemTitle;
- (NSURL)previewItemURL;
@end

@implementation CKSpotlightQueryResult

- (CKSpotlightQueryResult)initWithSearchableItem:(id)item queryType:(id)type withConversation:(id)conversation
{
  itemCopy = item;
  typeCopy = type;
  conversationCopy = conversation;
  v20.receiver = self;
  v20.super_class = CKSpotlightQueryResult;
  v11 = [(CKSpotlightQueryResult *)&v20 init];
  if (v11)
  {
    v12 = MEMORY[0x1E696AEC0];
    uniqueIdentifier = [itemCopy uniqueIdentifier];
    v14 = [v12 stringWithFormat:@"%@-%@", typeCopy, uniqueIdentifier];

    [(CKSpotlightQueryResult *)v11 setIdentifier:v14];
    [(CKSpotlightQueryResult *)v11 setItem:itemCopy];
    [(CKSpotlightQueryResult *)v11 setConversation:conversationCopy];
    v15 = MEMORY[0x1E69A5C90];
    attributeSet = [itemCopy attributeSet];
    messageService = [attributeSet messageService];
    v18 = [v15 serviceWithName:messageService];
    [(CKSpotlightQueryResult *)v11 setService:v18];
  }

  return v11;
}

- (NSString)messageGUID
{
  item = [(CKSpotlightQueryResult *)self item];
  domainIdentifier = [item domainIdentifier];
  v5 = [domainIdentifier isEqualToString:@"chatDomain"];

  if (v5)
  {
    ownerIdentifier = 0;
  }

  else
  {
    item2 = [(CKSpotlightQueryResult *)self item];
    domainIdentifier2 = [item2 domainIdentifier];
    v9 = [domainIdentifier2 isEqualToString:@"attachmentDomain"];

    item3 = [(CKSpotlightQueryResult *)self item];
    v11 = item3;
    if (v9)
    {
      attributeSet = [item3 attributeSet];
      ownerIdentifier = [attributeSet ownerIdentifier];
    }

    else
    {
      ownerIdentifier = [item3 uniqueIdentifier];
    }
  }

  return ownerIdentifier;
}

- (NSURL)previewItemURL
{
  item = [(CKSpotlightQueryResult *)self item];
  domainIdentifier = [item domainIdentifier];
  v5 = [domainIdentifier isEqualToString:@"attachmentDomain"];

  if (v5)
  {
    item2 = [(CKSpotlightQueryResult *)self item];
    attributeSet = [item2 attributeSet];

    contentURL = [attributeSet contentURL];
    messageType = [attributeSet messageType];
    v10 = [messageType isEqualToString:@"pto"];

    if (v10)
    {
      v11 = [CKLivePhotoBundleUtilities getLivePhotoBundleURL:contentURL];
      if (v11)
      {
        v12 = v11;

        goto LABEL_8;
      }
    }
  }

  else
  {
    contentURL = 0;
  }

  contentURL = contentURL;
  v12 = contentURL;
LABEL_8:

  return v12;
}

- (NSString)previewItemTitle
{
  item = [(CKSpotlightQueryResult *)self item];
  domainIdentifier = [item domainIdentifier];
  v5 = [domainIdentifier isEqualToString:@"attachmentDomain"];

  if (v5)
  {
    item2 = [(CKSpotlightQueryResult *)self item];
    attributeSet = [item2 attributeSet];
    __ck_spotlightItemSnippet = [attributeSet __ck_spotlightItemSnippet];
  }

  else
  {
    __ck_spotlightItemSnippet = 0;
  }

  return __ck_spotlightItemSnippet;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    v7 = equalCopy;
    identifier = [(CKSpotlightQueryResult *)self identifier];
    identifier2 = [v7 identifier];

    v6 = [identifier isEqualToString:identifier2];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v14.receiver = self;
  v14.super_class = CKSpotlightQueryResult;
  v4 = [(CKSpotlightQueryResult *)&v14 description];
  messageGUID = [(CKSpotlightQueryResult *)self messageGUID];
  previewItemTitle = [(CKSpotlightQueryResult *)self previewItemTitle];
  previewItemURL = [(CKSpotlightQueryResult *)self previewItemURL];
  item = [(CKSpotlightQueryResult *)self item];
  item2 = [(CKSpotlightQueryResult *)self item];
  attributeSet = [item2 attributeSet];
  attributeDictionary = [attributeSet attributeDictionary];
  v12 = [v3 stringWithFormat:@"%@: messageGUID: %@, title: %@, url: %@, item: %@, item attributes: %@", v4, messageGUID, previewItemTitle, previewItemURL, item, attributeDictionary];

  return v12;
}

- (BOOL)isFromMe
{
  item = [(CKSpotlightQueryResult *)self item];
  attributeSet = [item attributeSet];

  isFromMe = [attributeSet isFromMe];
  bOOLValue = [isFromMe BOOLValue];

  return bOOLValue;
}

@end