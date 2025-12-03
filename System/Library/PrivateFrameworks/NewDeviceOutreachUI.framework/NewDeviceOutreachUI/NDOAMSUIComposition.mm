@interface NDOAMSUIComposition
+ (void)makeFollowUpAMSViewControllerWithAgent:(id)agent url:(id)url presenter:(id)presenter headers:(id)headers body:(id)body onDismiss:(id)dismiss completion:(id)completion;
- (NDOAMSUIComposition)init;
@end

@implementation NDOAMSUIComposition

+ (void)makeFollowUpAMSViewControllerWithAgent:(id)agent url:(id)url presenter:(id)presenter headers:(id)headers body:(id)body onDismiss:(id)dismiss completion:(id)completion
{
  presenterCopy = presenter;
  v24 = sub_25BDDF408();
  v11 = *(v24 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v24);
  v14 = &presenterCopy - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = _Block_copy(dismiss);
  v16 = _Block_copy(completion);
  sub_25BDDF3E8();
  v17 = sub_25BDDFE08();
  v18 = sub_25BDDFE08();
  v19 = swift_allocObject();
  *(v19 + 16) = v15;
  v20 = swift_allocObject();
  *(v20 + 16) = v16;
  agentCopy = agent;
  v22 = presenterCopy;
  sub_25BDAC334(agentCopy, v14, v22, v17, v18, sub_25BDAAFB0, v19, sub_25BDAC798, v20);

  (*(v11 + 8))(v14, v24);
}

- (NDOAMSUIComposition)init
{
  v3.receiver = self;
  v3.super_class = NDOAMSUIComposition;
  return [(NDOAMSUIComposition *)&v3 init];
}

@end