@interface HFMatterAccessoryLikeItemProvider
+ (id)itemProviderInHome:(id)home inRoom:(id)room;
- (HFMatterAccessoryLikeItemProvider)init;
@end

@implementation HFMatterAccessoryLikeItemProvider

+ (id)itemProviderInHome:(id)home inRoom:(id)room
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843A70, &qword_20DD94260);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v21 - v11;
  if (room)
  {
    sub_20DD63714();
    v13 = sub_20DD63744();
    (*(*(v13 - 8) + 56))(v12, 0, 1, v13);
  }

  else
  {
    v14 = sub_20DD63744();
    (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
  }

  sub_20D9C90A8(v12, v10);
  v15 = type metadata accessor for MatterAccessoryLikeItemProvider();
  v16 = objc_allocWithZone(v15);
  *&v16[qword_27C84C680] = home;
  v17 = &v16[qword_27C844CB8];
  *v17 = 0;
  *(v17 + 1) = 0;
  sub_20D9C90A8(v10, &v16[qword_27C84C688]);
  v21.receiver = v16;
  v21.super_class = v15;
  homeCopy = home;
  v19 = objc_msgSendSuper2(&v21, sel_init);
  sub_20D9C9040(v10);

  sub_20D9C9040(v12);

  return v19;
}

- (HFMatterAccessoryLikeItemProvider)init
{
  v3.receiver = self;
  v3.super_class = HFMatterAccessoryLikeItemProvider;
  return [(HFMatterAccessoryLikeItemProvider *)&v3 init];
}

@end