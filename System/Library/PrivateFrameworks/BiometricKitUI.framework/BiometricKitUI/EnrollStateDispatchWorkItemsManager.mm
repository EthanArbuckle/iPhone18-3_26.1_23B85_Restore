@interface EnrollStateDispatchWorkItemsManager
- (void)removeAllWorkItems;
- (void)submitWorkItemFor:(int)a3 startState:(int)a4 work:(id)a5;
@end

@implementation EnrollStateDispatchWorkItemsManager

- (void)submitWorkItemFor:(int)a3 startState:(int)a4 work:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = self;
  sub_241B66E40(a3, a4, sub_241B67B54, v9);
}

- (void)removeAllWorkItems
{
  v2 = self;
  sub_241B67550();
}

@end