@interface _HPSUICarrySettingsViewController
+ (void)shouldShowCarrySettingsButtonForHomeID:(id)d homeKitIdentifiers:(id)identifiers withCompletion:(id)completion;
+ (void)shouldShowCarrySettingsButtonForHomeID:(id)d withCompletion:(id)completion;
- (_HPSUICarrySettingsViewController)init;
- (_HPSUICarrySettingsViewController)initWithHomeID:(id)d;
- (_HPSUICarrySettingsViewController)initWithHomeID:(id)d homeKitIdentifiers:(id)identifiers;
@end

@implementation _HPSUICarrySettingsViewController

- (_HPSUICarrySettingsViewController)initWithHomeID:(id)d
{
  v3 = sub_2542AD50C();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2542AD4FC();
  return CarrySettingsViewController.init(withHomeID:)(v6);
}

- (_HPSUICarrySettingsViewController)initWithHomeID:(id)d homeKitIdentifiers:(id)identifiers
{
  v4 = sub_2542AD50C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2542AD4FC();
  sub_2542A3C68(&qword_27F5DD6D8, MEMORY[0x277CC95F0]);
  v8 = sub_2542AD84C();
  return CarrySettingsViewController.init(withHomeID:homeKitIdentifiers:)(v7, v8);
}

- (_HPSUICarrySettingsViewController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

+ (void)shouldShowCarrySettingsButtonForHomeID:(id)d withCompletion:(id)completion
{
  v5 = sub_2542AD50C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _Block_copy(completion);
  sub_2542AD4FC();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  swift_getObjCClassMetadata();
  _s22HomePlatformSettingsUI05CarryC14ViewControllerC010shouldShoweC6Button03forA2ID14withCompletiony10Foundation4UUIDV_ySb_So7NSErrorCSgtYbctFZ_0(v9, sub_2542A3DE0, v11);

  (*(v6 + 8))(v9, v5);
}

+ (void)shouldShowCarrySettingsButtonForHomeID:(id)d homeKitIdentifiers:(id)identifiers withCompletion:(id)completion
{
  v6 = sub_2542AD50C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _Block_copy(completion);
  sub_2542AD4FC();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  swift_getObjCClassMetadata();
  _s22HomePlatformSettingsUI05CarryC14ViewControllerC010shouldShoweC6Button03forA2ID14withCompletiony10Foundation4UUIDV_ySb_So7NSErrorCSgtYbctFZ_0(v10, sub_2542A39E8, v12);

  (*(v7 + 8))(v10, v6);
}

@end