@interface ICInlineDrawingUpgradeHelper
- (UITextView)textView;
- (_TtC11NotesEditor28ICInlineDrawingUpgradeHelper)init;
- (_TtC11NotesEditor28ICInlineDrawingUpgradeHelper)initWithNote:(id)note managedObjectContext:(id)context textView:(id)view;
- (id)upgradeWithAttachment:(id)attachment itemProviders:(id)providers itemsAnchor:(int64_t)anchor;
- (id)upgradeWithAttachment:(id)attachment itemProviders:(id)providers itemsLocation:(CGPoint)location;
- (void)cancelUpgrade;
- (void)upgradeAllAttachmentsInNote;
@end

@implementation ICInlineDrawingUpgradeHelper

- (UITextView)textView
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (_TtC11NotesEditor28ICInlineDrawingUpgradeHelper)initWithNote:(id)note managedObjectContext:(id)context textView:(id)view
{
  noteCopy = note;
  contextCopy = context;
  viewCopy = view;
  v10 = sub_21539A6A0(noteCopy, contextCopy);

  return v10;
}

- (id)upgradeWithAttachment:(id)attachment itemProviders:(id)providers itemsLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  sub_2151A6C9C(0, &qword_27CA5A360);
  v9 = sub_2154A1F4C();
  attachmentCopy = attachment;
  selfCopy = self;
  v12 = ICInlineDrawingUpgradeHelper.upgrade(attachment:itemProviders:itemsLocation:)(attachmentCopy, v9, x, y);

  return v12;
}

- (id)upgradeWithAttachment:(id)attachment itemProviders:(id)providers itemsAnchor:(int64_t)anchor
{
  sub_2151A6C9C(0, &qword_27CA5A360);
  v8 = sub_2154A1F4C();
  attachmentCopy = attachment;
  selfCopy = self;
  v11 = ICInlineDrawingUpgradeHelper.upgrade(attachment:itemProviders:itemsAnchor:)(attachmentCopy, v8, anchor);

  return v11;
}

- (void)cancelUpgrade
{
  selfCopy = self;
  ICInlineDrawingUpgradeHelper.cancelUpgrade()();
}

- (void)upgradeAllAttachmentsInNote
{
  selfCopy = self;
  ICInlineDrawingUpgradeHelper.upgradeAllAttachmentsInNote()();
}

- (_TtC11NotesEditor28ICInlineDrawingUpgradeHelper)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end