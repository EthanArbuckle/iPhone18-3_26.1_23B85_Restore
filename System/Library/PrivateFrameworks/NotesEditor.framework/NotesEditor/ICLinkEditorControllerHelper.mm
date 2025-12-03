@interface ICLinkEditorControllerHelper
+ (id)presentFromViewController:(id)controller delegate:(id)delegate text:(id)text url:(id)url attachment:(id)attachment stringSelection:(id)selection range:(_NSRange)range addApproach:(int64_t)self0;
- (ICLinkEditorControllerHelper)init;
@end

@implementation ICLinkEditorControllerHelper

+ (id)presentFromViewController:(id)controller delegate:(id)delegate text:(id)text url:(id)url attachment:(id)attachment stringSelection:(id)selection range:(_NSRange)range addApproach:(int64_t)self0
{
  location = range.location;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5B090);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v28 - v17;
  if (text)
  {
    v19 = sub_2154A1D6C();
    text = v20;
    if (url)
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
    if (url)
    {
      goto LABEL_3;
    }
  }

  v22 = sub_21549E56C();
  (*(*(v22 - 8) + 56))(v18, 1, 1, v22);
LABEL_6:
  controllerCopy = controller;
  swift_unknownObjectRetain();
  attachmentCopy = attachment;
  selectionCopy = selection;
  v26 = sub_21547D760(controllerCopy, delegate, v19, text, v18, attachment, selectionCopy, location, range.length, approach);

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