@interface OS_REMeshInstanceCollectionStorage
- (void)dealloc;
@end

@implementation OS_REMeshInstanceCollectionStorage

- (void)dealloc
{
  re::DynamicArray<unsigned long>::deinit(&self[17]);
  re::DynamicArray<re::StringID>::deinit(&self[12]);
  re::DynamicArray<re::StringID>::deinit(&self[7]);
  v3 = re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(&self[1]);
  v4.receiver = self;
  v4.super_class = OS_REMeshInstanceCollectionStorage;
  [(OS_REMeshInstanceCollectionStorage *)&v4 dealloc];
}

@end