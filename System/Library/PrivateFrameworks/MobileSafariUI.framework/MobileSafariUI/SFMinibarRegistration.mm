@interface SFMinibarRegistration
+ (id)makeLeadingButtonWithManager:(id)manager sizeUpdateHandler:(id)handler;
+ (id)makeTrailingButtonWithManager:(id)manager sizeUpdateHandler:(id)handler menuPresentationHandler:(id)presentationHandler;
- (SFMinibarRegistration)init;
@end

@implementation SFMinibarRegistration

+ (id)makeLeadingButtonWithManager:(id)manager sizeUpdateHandler:(id)handler
{
  v5 = _Block_copy(handler);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v7 = objc_allocWithZone(_s12LeadingTokenCMa());
  managerCopy = manager;
  v9 = sub_215A0AF2C(managerCopy, &unk_2827BBA28, sub_215A0BE4C, v6);
  v10 = OBJC_IVAR____TtCE14MobileSafariUICSo21SFMinibarRegistration5Token_buttonStack;
  [managerCopy registerBar:*&v9[OBJC_IVAR____TtCE14MobileSafariUICSo21SFMinibarRegistration5Token_buttonStack] withToken:v9];
  v11 = *&v9[v10];

  return v11;
}

+ (id)makeTrailingButtonWithManager:(id)manager sizeUpdateHandler:(id)handler menuPresentationHandler:(id)presentationHandler
{
  v7 = _Block_copy(handler);
  v8 = _Block_copy(presentationHandler);
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  v11 = objc_allocWithZone(_s13TrailingTokenCMa());
  managerCopy = manager;

  v13 = sub_215A098FC(managerCopy, &unk_2827BBA58, sub_2159F7D34, v9);

  sub_215A09D90(sub_215A0AC9C, v10);
  v14 = OBJC_IVAR____TtCE14MobileSafariUICSo21SFMinibarRegistration5Token_buttonStack;
  [managerCopy registerBar:*&v13[OBJC_IVAR____TtCE14MobileSafariUICSo21SFMinibarRegistration5Token_buttonStack] withToken:v13];
  v15 = *&v13[v14];

  return v15;
}

- (SFMinibarRegistration)init
{
  v3.receiver = self;
  v3.super_class = SFMinibarRegistration;
  return [(SFMinibarRegistration *)&v3 init];
}

@end