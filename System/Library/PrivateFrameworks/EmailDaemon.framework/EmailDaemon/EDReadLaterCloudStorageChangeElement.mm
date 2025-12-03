@interface EDReadLaterCloudStorageChangeElement
- (EDReadLaterCloudStorageChangeElement)initWithMessageID:(id)d readLaterDate:(id)date displayDate:(id)displayDate;
@end

@implementation EDReadLaterCloudStorageChangeElement

- (EDReadLaterCloudStorageChangeElement)initWithMessageID:(id)d readLaterDate:(id)date displayDate:(id)displayDate
{
  dCopy = d;
  dateCopy = date;
  displayDateCopy = displayDate;
  v15.receiver = self;
  v15.super_class = EDReadLaterCloudStorageChangeElement;
  v12 = [(EDReadLaterCloudStorageChangeElement *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_messageID, d);
    objc_storeStrong(&v13->_readLaterDate, date);
    objc_storeStrong(&v13->_displayDate, displayDate);
  }

  return v13;
}

@end