@interface HDCloudSyncSerializedField
+ (id)fieldForKey:(id)key classes:(id)classes encrypted:(BOOL)encrypted;
@end

@implementation HDCloudSyncSerializedField

+ (id)fieldForKey:(id)key classes:(id)classes encrypted:(BOOL)encrypted
{
  classesCopy = classes;
  keyCopy = key;
  v9 = objc_alloc_init(HDCloudSyncSerializedField);
  v10 = [keyCopy copy];

  key = v9->_key;
  v9->_key = v10;

  v12 = [MEMORY[0x277CBEB98] setWithArray:classesCopy];

  classes = v9->_classes;
  v9->_classes = v12;

  v9->_encrypted = encrypted;

  return v9;
}

@end