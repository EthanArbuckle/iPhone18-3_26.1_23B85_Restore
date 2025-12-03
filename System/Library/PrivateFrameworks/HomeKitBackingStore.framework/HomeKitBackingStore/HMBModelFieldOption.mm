@interface HMBModelFieldOption
+ (id)encryptedExternalRecordField:(id)field;
+ (id)excludeFromCloudStorage;
+ (id)externalRecordField:(id)field;
+ (id)queryableField;
+ (id)queryableFieldWithEncodeBlock:(id)block decodeBlock:(id)decodeBlock;
+ (id)queryableFieldWithEncodeBlock:(id)block decodeBlock:(id)decodeBlock descriptionBlock:(id)descriptionBlock;
- (void)applyTo:(id)to;
@end

@implementation HMBModelFieldOption

- (void)applyTo:(id)to
{
  toCopy = to;
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE658];
  v7 = MEMORY[0x277CCACA8];
  v8 = NSStringFromSelector(a2);
  v9 = [v7 stringWithFormat:@"You must override %@ in a subclass", v8];
  v10 = [v5 exceptionWithName:v6 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

+ (id)queryableFieldWithEncodeBlock:(id)block decodeBlock:(id)decodeBlock descriptionBlock:(id)descriptionBlock
{
  descriptionBlockCopy = descriptionBlock;
  decodeBlockCopy = decodeBlock;
  blockCopy = block;
  v10 = [[HMBModelFieldOptionQueryable alloc] initWithEncodingBlock:blockCopy decodingBlock:decodeBlockCopy descriptionBlock:descriptionBlockCopy];

  return v10;
}

+ (id)queryableFieldWithEncodeBlock:(id)block decodeBlock:(id)decodeBlock
{
  decodeBlockCopy = decodeBlock;
  blockCopy = block;
  v7 = [[HMBModelFieldOptionQueryable alloc] initWithEncodingBlock:blockCopy decodingBlock:decodeBlockCopy descriptionBlock:&__block_literal_global_262];

  return v7;
}

+ (id)queryableField
{
  v2 = objc_alloc_init(HMBModelFieldOptionQueryable);

  return v2;
}

+ (id)excludeFromCloudStorage
{
  v2 = objc_alloc_init(HMBModelFieldOptionExcludeFromCloudStorage);

  return v2;
}

+ (id)encryptedExternalRecordField:(id)field
{
  fieldCopy = field;
  v4 = [[HMBModelFieldOptionExternalRecordField alloc] initWithExternalRecordField:fieldCopy encrypted:1];

  return v4;
}

+ (id)externalRecordField:(id)field
{
  fieldCopy = field;
  v4 = [[HMBModelFieldOptionExternalRecordField alloc] initWithExternalRecordField:fieldCopy encrypted:0];

  return v4;
}

@end