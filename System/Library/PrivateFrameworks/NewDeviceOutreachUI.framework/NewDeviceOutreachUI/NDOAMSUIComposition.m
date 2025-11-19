@interface NDOAMSUIComposition
+ (void)makeFollowUpAMSViewControllerWithAgent:(id)a3 url:(id)a4 presenter:(id)a5 headers:(id)a6 body:(id)a7 onDismiss:(id)a8 completion:(id)a9;
- (NDOAMSUIComposition)init;
@end

@implementation NDOAMSUIComposition

+ (void)makeFollowUpAMSViewControllerWithAgent:(id)a3 url:(id)a4 presenter:(id)a5 headers:(id)a6 body:(id)a7 onDismiss:(id)a8 completion:(id)a9
{
  v23 = a5;
  v24 = sub_25BDDF408();
  v11 = *(v24 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v24);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = _Block_copy(a8);
  v16 = _Block_copy(a9);
  sub_25BDDF3E8();
  v17 = sub_25BDDFE08();
  v18 = sub_25BDDFE08();
  v19 = swift_allocObject();
  *(v19 + 16) = v15;
  v20 = swift_allocObject();
  *(v20 + 16) = v16;
  v21 = a3;
  v22 = v23;
  sub_25BDAC334(v21, v14, v22, v17, v18, sub_25BDAAFB0, v19, sub_25BDAC798, v20);

  (*(v11 + 8))(v14, v24);
}

- (NDOAMSUIComposition)init
{
  v3.receiver = self;
  v3.super_class = NDOAMSUIComposition;
  return [(NDOAMSUIComposition *)&v3 init];
}

@end