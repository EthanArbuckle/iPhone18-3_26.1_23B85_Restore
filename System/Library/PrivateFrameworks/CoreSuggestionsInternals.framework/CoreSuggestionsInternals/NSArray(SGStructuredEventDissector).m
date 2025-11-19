@interface NSArray(SGStructuredEventDissector)
- (BOOL)sg_isEmptySchemaObject;
@end

@implementation NSArray(SGStructuredEventDissector)

- (BOOL)sg_isEmptySchemaObject
{
  v1 = [a1 sg_deepCopyWithoutEmptySchemaObjects];
  v2 = [v1 count] == 0;

  return v2;
}

@end