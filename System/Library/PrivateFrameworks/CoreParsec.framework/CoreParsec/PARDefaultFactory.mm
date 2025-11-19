@interface PARDefaultFactory
- (id)createResultObject;
@end

@implementation PARDefaultFactory

- (id)createResultObject
{
  v2 = objc_alloc_init(MEMORY[0x1E69CA3E8]);

  return v2;
}

@end