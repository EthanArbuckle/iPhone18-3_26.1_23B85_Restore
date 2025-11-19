@interface CKCachedAttachmentItem
- (CKAttachmentItem)attachmentItem;
- (CKCachedAttachmentItem)init;
- (CKCachedAttachmentItemDelegate)delegate;
- (void)generatePreview;
- (void)setAttachmentItem:(id)a3;
@end

@implementation CKCachedAttachmentItem

- (CKCachedAttachmentItemDelegate)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (CKAttachmentItem)attachmentItem
{
  v3 = OBJC_IVAR___CKCachedAttachmentItem_attachmentItem;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setAttachmentItem:(id)a3
{
  v5 = OBJC_IVAR___CKCachedAttachmentItem_attachmentItem;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = a3;
  v7 = a3;
}

- (void)generatePreview
{
  v2 = self;
  CKCachedAttachmentItem.generatePreview()();
}

- (CKCachedAttachmentItem)init
{
  swift_unknownObjectWeakInit();
  *(self + OBJC_IVAR___CKCachedAttachmentItem_attachmentItem) = 0;
  v4.receiver = self;
  v4.super_class = CKCachedAttachmentItem;
  return [(CKCachedAttachmentItem *)&v4 init];
}

@end