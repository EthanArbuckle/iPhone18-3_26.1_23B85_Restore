@interface TDModelAsset
+ (id)fetchRequest;
@end

@implementation TDModelAsset

+ (id)fetchRequest
{
  v2 = [objc_alloc(MEMORY[0x277CBE428]) initWithEntityName:@"ModelIOAsset"];

  return v2;
}

@end