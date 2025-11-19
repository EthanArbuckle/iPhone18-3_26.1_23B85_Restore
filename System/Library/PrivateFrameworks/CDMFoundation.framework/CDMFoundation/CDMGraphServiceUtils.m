@interface CDMGraphServiceUtils
+ (void)setupGraphServices:(NSArray *)a3 completionHandler:(id)a4;
@end

@implementation CDMGraphServiceUtils

+ (void)setupGraphServices:(NSArray *)a3 completionHandler:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v6;
  v7[4] = a1;
  v8 = a3;

  sub_1DC40EF60(&unk_1DC52A050, v7);
}

@end