@interface HDCloudSyncSerializedField
+ (id)fieldForKey:(id)a3 classes:(id)a4 encrypted:(BOOL)a5;
@end

@implementation HDCloudSyncSerializedField

+ (id)fieldForKey:(id)a3 classes:(id)a4 encrypted:(BOOL)a5
{
  v7 = a4;
  v8 = a3;
  v9 = objc_alloc_init(HDCloudSyncSerializedField);
  v10 = [v8 copy];

  key = v9->_key;
  v9->_key = v10;

  v12 = [MEMORY[0x277CBEB98] setWithArray:v7];

  classes = v9->_classes;
  v9->_classes = v12;

  v9->_encrypted = a5;

  return v9;
}

@end