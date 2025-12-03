@interface NSArray(SGStructuredEventDissector)
- (BOOL)sg_isEmptySchemaObject;
@end

@implementation NSArray(SGStructuredEventDissector)

- (BOOL)sg_isEmptySchemaObject
{
  sg_deepCopyWithoutEmptySchemaObjects = [self sg_deepCopyWithoutEmptySchemaObjects];
  v2 = [sg_deepCopyWithoutEmptySchemaObjects count] == 0;

  return v2;
}

@end