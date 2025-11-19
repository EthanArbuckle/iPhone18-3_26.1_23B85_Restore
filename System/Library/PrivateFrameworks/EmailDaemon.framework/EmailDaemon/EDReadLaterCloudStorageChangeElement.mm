@interface EDReadLaterCloudStorageChangeElement
- (EDReadLaterCloudStorageChangeElement)initWithMessageID:(id)a3 readLaterDate:(id)a4 displayDate:(id)a5;
@end

@implementation EDReadLaterCloudStorageChangeElement

- (EDReadLaterCloudStorageChangeElement)initWithMessageID:(id)a3 readLaterDate:(id)a4 displayDate:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = EDReadLaterCloudStorageChangeElement;
  v12 = [(EDReadLaterCloudStorageChangeElement *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_messageID, a3);
    objc_storeStrong(&v13->_readLaterDate, a4);
    objc_storeStrong(&v13->_displayDate, a5);
  }

  return v13;
}

@end