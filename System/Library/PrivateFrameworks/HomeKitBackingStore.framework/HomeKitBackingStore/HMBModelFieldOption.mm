@interface HMBModelFieldOption
+ (id)encryptedExternalRecordField:(id)a3;
+ (id)excludeFromCloudStorage;
+ (id)externalRecordField:(id)a3;
+ (id)queryableField;
+ (id)queryableFieldWithEncodeBlock:(id)a3 decodeBlock:(id)a4;
+ (id)queryableFieldWithEncodeBlock:(id)a3 decodeBlock:(id)a4 descriptionBlock:(id)a5;
- (void)applyTo:(id)a3;
@end

@implementation HMBModelFieldOption

- (void)applyTo:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE658];
  v7 = MEMORY[0x277CCACA8];
  v8 = NSStringFromSelector(a2);
  v9 = [v7 stringWithFormat:@"You must override %@ in a subclass", v8];
  v10 = [v5 exceptionWithName:v6 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

+ (id)queryableFieldWithEncodeBlock:(id)a3 decodeBlock:(id)a4 descriptionBlock:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[HMBModelFieldOptionQueryable alloc] initWithEncodingBlock:v9 decodingBlock:v8 descriptionBlock:v7];

  return v10;
}

+ (id)queryableFieldWithEncodeBlock:(id)a3 decodeBlock:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[HMBModelFieldOptionQueryable alloc] initWithEncodingBlock:v6 decodingBlock:v5 descriptionBlock:&__block_literal_global_262];

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

+ (id)encryptedExternalRecordField:(id)a3
{
  v3 = a3;
  v4 = [[HMBModelFieldOptionExternalRecordField alloc] initWithExternalRecordField:v3 encrypted:1];

  return v4;
}

+ (id)externalRecordField:(id)a3
{
  v3 = a3;
  v4 = [[HMBModelFieldOptionExternalRecordField alloc] initWithExternalRecordField:v3 encrypted:0];

  return v4;
}

@end