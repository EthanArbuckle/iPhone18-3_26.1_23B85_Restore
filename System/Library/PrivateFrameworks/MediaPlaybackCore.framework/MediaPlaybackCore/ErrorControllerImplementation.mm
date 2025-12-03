@interface ErrorControllerImplementation
- (void)reportCriticalError:(id)error forItem:(id)item;
- (void)resetWithReason:(id)reason;
- (void)resolveError:(id)error forItem:(id)item completion:(id)completion;
@end

@implementation ErrorControllerImplementation

- (void)resolveError:(id)error forItem:(id)item completion:(id)completion
{
  v8 = _Block_copy(completion);
  _Block_copy(v8);
  errorCopy = error;
  swift_unknownObjectRetain();

  sub_1C5DBB834(errorCopy, item, self, v8);
  _Block_release(v8);
  swift_unknownObjectRelease();
}

- (void)reportCriticalError:(id)error forItem:(id)item
{
  errorCopy = error;
  swift_unknownObjectRetain();

  sub_1C5DBBC74(errorCopy, item);
  swift_unknownObjectRelease();
}

- (void)resetWithReason:(id)reason
{
  reasonCopy = reason;

  sub_1C5DBBDF8();
}

@end