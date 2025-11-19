@interface NMSContainer
- (NMSContainer)initWithPersistentID:(id)a3 name:(id)a4 type:(unint64_t)a5;
@end

@implementation NMSContainer

- (NMSContainer)initWithPersistentID:(id)a3 name:(id)a4 type:(unint64_t)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = NMSContainer;
  v11 = [(NMSContainer *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_persistentID, a3);
    objc_storeStrong(&v12->_name, a4);
    v12->_type = a5;
  }

  return v12;
}

@end