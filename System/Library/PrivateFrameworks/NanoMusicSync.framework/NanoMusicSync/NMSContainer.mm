@interface NMSContainer
- (NMSContainer)initWithPersistentID:(id)d name:(id)name type:(unint64_t)type;
@end

@implementation NMSContainer

- (NMSContainer)initWithPersistentID:(id)d name:(id)name type:(unint64_t)type
{
  dCopy = d;
  nameCopy = name;
  v14.receiver = self;
  v14.super_class = NMSContainer;
  v11 = [(NMSContainer *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_persistentID, d);
    objc_storeStrong(&v12->_name, name);
    v12->_type = type;
  }

  return v12;
}

@end