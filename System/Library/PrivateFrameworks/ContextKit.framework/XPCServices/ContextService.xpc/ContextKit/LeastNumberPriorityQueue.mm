@interface LeastNumberPriorityQueue
- (BOOL)lessThanWithId:(id)id withId:(id)withId;
@end

@implementation LeastNumberPriorityQueue

- (BOOL)lessThanWithId:(id)id withId:(id)withId
{
  withIdCopy = withId;
  LODWORD(id) = [id unsignedIntValue];
  unsignedIntValue = [withIdCopy unsignedIntValue];

  return id >= unsignedIntValue;
}

@end