@interface EDRichLinkData
- (EDRichLinkData)initWithPersistentID:(id)d title:(id)title url:(id)url;
- (EDRichLinkData)initWithTitle:(id)title url:(id)url;
@end

@implementation EDRichLinkData

- (EDRichLinkData)initWithPersistentID:(id)d title:(id)title url:(id)url
{
  dCopy = d;
  titleCopy = title;
  urlCopy = url;
  v15.receiver = self;
  v15.super_class = EDRichLinkData;
  v12 = [(EDRichLinkData *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_persistentID, d);
    objc_storeStrong(&v13->_title, title);
    objc_storeStrong(&v13->_url, url);
  }

  return v13;
}

- (EDRichLinkData)initWithTitle:(id)title url:(id)url
{
  titleCopy = title;
  urlCopy = url;
  v12.receiver = self;
  v12.super_class = EDRichLinkData;
  v9 = [(EDRichLinkData *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_title, title);
    objc_storeStrong(&v10->_url, url);
  }

  return v10;
}

@end