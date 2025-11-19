@interface ErrorControllerImplementation
- (void)reportCriticalError:(id)a3 forItem:(id)a4;
- (void)resetWithReason:(id)a3;
- (void)resolveError:(id)a3 forItem:(id)a4 completion:(id)a5;
@end

@implementation ErrorControllerImplementation

- (void)resolveError:(id)a3 forItem:(id)a4 completion:(id)a5
{
  v8 = _Block_copy(a5);
  _Block_copy(v8);
  v9 = a3;
  swift_unknownObjectRetain();

  sub_1C5DBB834(v9, a4, self, v8);
  _Block_release(v8);
  swift_unknownObjectRelease();
}

- (void)reportCriticalError:(id)a3 forItem:(id)a4
{
  v5 = a3;
  swift_unknownObjectRetain();

  sub_1C5DBBC74(v5, a4);
  swift_unknownObjectRelease();
}

- (void)resetWithReason:(id)a3
{
  v3 = a3;

  sub_1C5DBBDF8();
}

@end