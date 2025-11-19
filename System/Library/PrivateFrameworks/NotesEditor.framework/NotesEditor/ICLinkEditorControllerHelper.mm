@interface ICLinkEditorControllerHelper
+ (id)presentFromViewController:(id)a3 delegate:(id)a4 text:(id)a5 url:(id)a6 attachment:(id)a7 stringSelection:(id)a8 range:(_NSRange)a9 addApproach:(int64_t)a10;
- (ICLinkEditorControllerHelper)init;
@end

@implementation ICLinkEditorControllerHelper

+ (id)presentFromViewController:(id)a3 delegate:(id)a4 text:(id)a5 url:(id)a6 attachment:(id)a7 stringSelection:(id)a8 range:(_NSRange)a9 addApproach:(int64_t)a10
{
  location = a9.location;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5B090);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v28 - v17;
  if (a5)
  {
    v19 = sub_2154A1D6C();
    a5 = v20;
    if (a6)
    {
LABEL_3:
      sub_21549E51C();
      v21 = sub_21549E56C();
      (*(*(v21 - 8) + 56))(v18, 0, 1, v21);
      goto LABEL_6;
    }
  }

  else
  {
    v19 = 0;
    if (a6)
    {
      goto LABEL_3;
    }
  }

  v22 = sub_21549E56C();
  (*(*(v22 - 8) + 56))(v18, 1, 1, v22);
LABEL_6:
  v23 = a3;
  swift_unknownObjectRetain();
  v24 = a7;
  v25 = a8;
  v26 = sub_21547D760(v23, a4, v19, a5, v18, a7, v25, location, a9.length, a10);

  swift_unknownObjectRelease();

  sub_2153DE3C0(v18);

  return v26;
}

- (ICLinkEditorControllerHelper)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for LinkEditorControllerHelper();
  return [(ICLinkEditorControllerHelper *)&v3 init];
}

@end