@interface CKPollDetailsViewControllerBuilder
+ (id)buildViewControllerWithOptions:(id)options responses:(id)responses chat:(id)chat;
- (CKPollDetailsViewControllerBuilder)init;
@end

@implementation CKPollDetailsViewControllerBuilder

+ (id)buildViewControllerWithOptions:(id)options responses:(id)responses chat:(id)chat
{
  sub_190D57630();
  v6 = sub_190D57180();
  sub_19086E9EC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD57920);
  sub_190BF6828();
  v7 = sub_190D56D90();
  v8 = objc_allocWithZone(type metadata accessor for PollDetailsViewController(0));
  chatCopy = chat;
  v10 = sub_190BF5440(v6, v7, chatCopy);
  v12 = v11;

  if (qword_1EAD51B88 != -1)
  {
    swift_once();
  }

  sub_1909E4040(&unk_1EAD9DD40, &v17);
  v16[0] = v10;
  v16[1] = v12;
  sub_1909E3A70(v16, &v15);
  v13 = sub_190D54B60();
  sub_190BF6768(v16);

  return v13;
}

- (CKPollDetailsViewControllerBuilder)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for PollDetailsViewControllerBuilder();
  return [(CKPollDetailsViewControllerBuilder *)&v3 init];
}

@end