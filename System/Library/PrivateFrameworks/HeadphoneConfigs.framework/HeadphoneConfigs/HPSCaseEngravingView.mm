@interface HPSCaseEngravingView
+ (void)getEngravedCaseImage:(NSString *)image productID:(unsigned int)d completionHandler:(id)handler;
- (_TtC16HeadphoneConfigs20HPSCaseEngravingView)init;
@end

@implementation HPSCaseEngravingView

+ (void)getEngravedCaseImage:(NSString *)image productID:(unsigned int)d completionHandler:(id)handler
{
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4226D0, &qword_251217DE8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = &v18 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  *(v13 + 16) = image;
  *(v13 + 24) = d;
  *(v13 + 32) = v12;
  *(v13 + 40) = self;
  v14 = sub_2512118FC();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_251217DF8;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_251217E08;
  v16[5] = v15;
  imageCopy = image;
  sub_2511C264C(0, 0, v11, &unk_251217E18, v16);
}

- (_TtC16HeadphoneConfigs20HPSCaseEngravingView)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for HPSCaseEngravingView();
  return [(HPSCaseEngravingView *)&v3 init];
}

@end