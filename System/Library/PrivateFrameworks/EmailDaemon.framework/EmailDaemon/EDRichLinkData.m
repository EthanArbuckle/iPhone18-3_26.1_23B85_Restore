@interface EDRichLinkData
- (EDRichLinkData)initWithPersistentID:(id)a3 title:(id)a4 url:(id)a5;
- (EDRichLinkData)initWithTitle:(id)a3 url:(id)a4;
@end

@implementation EDRichLinkData

- (EDRichLinkData)initWithPersistentID:(id)a3 title:(id)a4 url:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = EDRichLinkData;
  v12 = [(EDRichLinkData *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_persistentID, a3);
    objc_storeStrong(&v13->_title, a4);
    objc_storeStrong(&v13->_url, a5);
  }

  return v13;
}

- (EDRichLinkData)initWithTitle:(id)a3 url:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = EDRichLinkData;
  v9 = [(EDRichLinkData *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_title, a3);
    objc_storeStrong(&v10->_url, a4);
  }

  return v10;
}

@end