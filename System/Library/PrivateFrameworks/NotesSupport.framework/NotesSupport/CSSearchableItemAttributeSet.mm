@interface CSSearchableItemAttributeSet
@end

@implementation CSSearchableItemAttributeSet

uint64_t __67__CSSearchableItemAttributeSet_IC__ic_customAttributeKeyDictionary__block_invoke()
{
  ic_customAttributeKeyDictionary_sCustomAttributeKeyDictionary = objc_alloc_init(MEMORY[0x1E695DF90]);

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __68__CSSearchableItemAttributeSet_IC__ic_dataSourceIdentifierCustomKey__block_invoke()
{
  ic_dataSourceIdentifierCustomKey_sDataSourceIdentifierCustomKey = [objc_alloc(MEMORY[0x1E6964E00]) initWithKeyName:@"DataSourceIdentifier" searchable:0 searchableByDefault:0 unique:0 multiValued:0];

  return MEMORY[0x1EEE66BB8]();
}

@end