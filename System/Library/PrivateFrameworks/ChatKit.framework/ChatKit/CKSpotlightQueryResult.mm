@interface CKSpotlightQueryResult
- (BOOL)isEqual:(id)a3;
- (BOOL)isFromMe;
- (CKSpotlightQueryResult)initWithSearchableItem:(id)a3 queryType:(id)a4 withConversation:(id)a5;
- (NSString)description;
- (NSString)messageGUID;
- (NSString)previewItemTitle;
- (NSURL)previewItemURL;
@end

@implementation CKSpotlightQueryResult

- (CKSpotlightQueryResult)initWithSearchableItem:(id)a3 queryType:(id)a4 withConversation:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v20.receiver = self;
  v20.super_class = CKSpotlightQueryResult;
  v11 = [(CKSpotlightQueryResult *)&v20 init];
  if (v11)
  {
    v12 = MEMORY[0x1E696AEC0];
    v13 = [v8 uniqueIdentifier];
    v14 = [v12 stringWithFormat:@"%@-%@", v9, v13];

    [(CKSpotlightQueryResult *)v11 setIdentifier:v14];
    [(CKSpotlightQueryResult *)v11 setItem:v8];
    [(CKSpotlightQueryResult *)v11 setConversation:v10];
    v15 = MEMORY[0x1E69A5C90];
    v16 = [v8 attributeSet];
    v17 = [v16 messageService];
    v18 = [v15 serviceWithName:v17];
    [(CKSpotlightQueryResult *)v11 setService:v18];
  }

  return v11;
}

- (NSString)messageGUID
{
  v3 = [(CKSpotlightQueryResult *)self item];
  v4 = [v3 domainIdentifier];
  v5 = [v4 isEqualToString:@"chatDomain"];

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v7 = [(CKSpotlightQueryResult *)self item];
    v8 = [v7 domainIdentifier];
    v9 = [v8 isEqualToString:@"attachmentDomain"];

    v10 = [(CKSpotlightQueryResult *)self item];
    v11 = v10;
    if (v9)
    {
      v12 = [v10 attributeSet];
      v6 = [v12 ownerIdentifier];
    }

    else
    {
      v6 = [v10 uniqueIdentifier];
    }
  }

  return v6;
}

- (NSURL)previewItemURL
{
  v3 = [(CKSpotlightQueryResult *)self item];
  v4 = [v3 domainIdentifier];
  v5 = [v4 isEqualToString:@"attachmentDomain"];

  if (v5)
  {
    v6 = [(CKSpotlightQueryResult *)self item];
    v7 = [v6 attributeSet];

    v8 = [v7 contentURL];
    v9 = [v7 messageType];
    v10 = [v9 isEqualToString:@"pto"];

    if (v10)
    {
      v11 = [CKLivePhotoBundleUtilities getLivePhotoBundleURL:v8];
      if (v11)
      {
        v12 = v11;

        goto LABEL_8;
      }
    }
  }

  else
  {
    v8 = 0;
  }

  v8 = v8;
  v12 = v8;
LABEL_8:

  return v12;
}

- (NSString)previewItemTitle
{
  v3 = [(CKSpotlightQueryResult *)self item];
  v4 = [v3 domainIdentifier];
  v5 = [v4 isEqualToString:@"attachmentDomain"];

  if (v5)
  {
    v6 = [(CKSpotlightQueryResult *)self item];
    v7 = [v6 attributeSet];
    v8 = [v7 __ck_spotlightItemSnippet];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    v7 = v4;
    v8 = [(CKSpotlightQueryResult *)self identifier];
    v9 = [v7 identifier];

    v6 = [v8 isEqualToString:v9];
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
  v5 = [(CKSpotlightQueryResult *)self messageGUID];
  v6 = [(CKSpotlightQueryResult *)self previewItemTitle];
  v7 = [(CKSpotlightQueryResult *)self previewItemURL];
  v8 = [(CKSpotlightQueryResult *)self item];
  v9 = [(CKSpotlightQueryResult *)self item];
  v10 = [v9 attributeSet];
  v11 = [v10 attributeDictionary];
  v12 = [v3 stringWithFormat:@"%@: messageGUID: %@, title: %@, url: %@, item: %@, item attributes: %@", v4, v5, v6, v7, v8, v11];

  return v12;
}

- (BOOL)isFromMe
{
  v2 = [(CKSpotlightQueryResult *)self item];
  v3 = [v2 attributeSet];

  v4 = [v3 isFromMe];
  v5 = [v4 BOOLValue];

  return v5;
}

@end