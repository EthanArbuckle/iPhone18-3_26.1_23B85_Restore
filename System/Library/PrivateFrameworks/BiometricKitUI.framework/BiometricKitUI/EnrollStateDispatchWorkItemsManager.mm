@interface EnrollStateDispatchWorkItemsManager
- (void)removeAllWorkItems;
- (void)submitWorkItemFor:(int)for startState:(int)state work:(id)work;
@end

@implementation EnrollStateDispatchWorkItemsManager

- (void)submitWorkItemFor:(int)for startState:(int)state work:(id)work
{
  v8 = _Block_copy(work);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  selfCopy = self;
  sub_241B66E40(for, state, sub_241B67B54, v9);
}

- (void)removeAllWorkItems
{
  selfCopy = self;
  sub_241B67550();
}

@end