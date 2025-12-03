@interface BCSPersistentBusinessItemObject
- (BCSPersistentBusinessItemObject)initWithBusinessItem:(id)item lastRetrievedDate:(id)date TTLDate:(id)lDate;
@end

@implementation BCSPersistentBusinessItemObject

- (BCSPersistentBusinessItemObject)initWithBusinessItem:(id)item lastRetrievedDate:(id)date TTLDate:(id)lDate
{
  itemCopy = item;
  dateCopy = date;
  lDateCopy = lDate;
  v15.receiver = self;
  v15.super_class = BCSPersistentBusinessItemObject;
  v12 = [(BCSPersistentBusinessItemObject *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_businessItem, item);
    objc_storeStrong(&v13->_lastRetrievedDate, date);
    objc_storeStrong(&v13->_TTLDate, lDate);
  }

  return v13;
}

@end