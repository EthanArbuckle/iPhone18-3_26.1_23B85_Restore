@interface ICInlineDrawingUpgradeHelper
- (UITextView)textView;
- (_TtC11NotesEditor28ICInlineDrawingUpgradeHelper)init;
- (_TtC11NotesEditor28ICInlineDrawingUpgradeHelper)initWithNote:(id)a3 managedObjectContext:(id)a4 textView:(id)a5;
- (id)upgradeWithAttachment:(id)a3 itemProviders:(id)a4 itemsAnchor:(int64_t)a5;
- (id)upgradeWithAttachment:(id)a3 itemProviders:(id)a4 itemsLocation:(CGPoint)a5;
- (void)cancelUpgrade;
- (void)upgradeAllAttachmentsInNote;
@end

@implementation ICInlineDrawingUpgradeHelper

- (UITextView)textView
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (_TtC11NotesEditor28ICInlineDrawingUpgradeHelper)initWithNote:(id)a3 managedObjectContext:(id)a4 textView:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = sub_21539A6A0(v7, v8);

  return v10;
}

- (id)upgradeWithAttachment:(id)a3 itemProviders:(id)a4 itemsLocation:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  sub_2151A6C9C(0, &qword_27CA5A360);
  v9 = sub_2154A1F4C();
  v10 = a3;
  v11 = self;
  v12 = ICInlineDrawingUpgradeHelper.upgrade(attachment:itemProviders:itemsLocation:)(v10, v9, x, y);

  return v12;
}

- (id)upgradeWithAttachment:(id)a3 itemProviders:(id)a4 itemsAnchor:(int64_t)a5
{
  sub_2151A6C9C(0, &qword_27CA5A360);
  v8 = sub_2154A1F4C();
  v9 = a3;
  v10 = self;
  v11 = ICInlineDrawingUpgradeHelper.upgrade(attachment:itemProviders:itemsAnchor:)(v9, v8, a5);

  return v11;
}

- (void)cancelUpgrade
{
  v2 = self;
  ICInlineDrawingUpgradeHelper.cancelUpgrade()();
}

- (void)upgradeAllAttachmentsInNote
{
  v2 = self;
  ICInlineDrawingUpgradeHelper.upgradeAllAttachmentsInNote()();
}

- (_TtC11NotesEditor28ICInlineDrawingUpgradeHelper)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end