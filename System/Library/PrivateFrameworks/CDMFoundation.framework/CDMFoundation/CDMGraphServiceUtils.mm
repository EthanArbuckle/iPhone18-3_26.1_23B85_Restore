@interface CDMGraphServiceUtils
+ (void)setupGraphServices:(NSArray *)services completionHandler:(id)handler;
@end

@implementation CDMGraphServiceUtils

+ (void)setupGraphServices:(NSArray *)services completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = swift_allocObject();
  v7[2] = services;
  v7[3] = v6;
  v7[4] = self;
  servicesCopy = services;

  sub_1DC40EF60(&unk_1DC52A050, v7);
}

@end