@interface ClassificationControllerDelegate
- (_TtC10CallsAppUI32ClassificationControllerDelegate)init;
- (void)controller:(id)a3 didCompleteClassificationRequest:(id)a4 withResponse:(id)a5;
@end

@implementation ClassificationControllerDelegate

- (void)controller:(id)a3 didCompleteClassificationRequest:(id)a4 withResponse:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_1CFBD44D4(v9, a5);
}

- (_TtC10CallsAppUI32ClassificationControllerDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end