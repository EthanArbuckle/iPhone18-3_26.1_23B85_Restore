@interface BCSPersistentBusinessItemObject
- (BCSPersistentBusinessItemObject)initWithBusinessItem:(id)a3 lastRetrievedDate:(id)a4 TTLDate:(id)a5;
@end

@implementation BCSPersistentBusinessItemObject

- (BCSPersistentBusinessItemObject)initWithBusinessItem:(id)a3 lastRetrievedDate:(id)a4 TTLDate:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = BCSPersistentBusinessItemObject;
  v12 = [(BCSPersistentBusinessItemObject *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_businessItem, a3);
    objc_storeStrong(&v13->_lastRetrievedDate, a4);
    objc_storeStrong(&v13->_TTLDate, a5);
  }

  return v13;
}

@end