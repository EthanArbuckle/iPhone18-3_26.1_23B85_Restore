@interface CKCachedAttachmentItem
- (CKAttachmentItem)attachmentItem;
- (CKCachedAttachmentItem)init;
- (CKCachedAttachmentItemDelegate)delegate;
- (void)generatePreview;
- (void)setAttachmentItem:(id)item;
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

- (void)setAttachmentItem:(id)item
{
  v5 = OBJC_IVAR___CKCachedAttachmentItem_attachmentItem;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = item;
  itemCopy = item;
}

- (void)generatePreview
{
  selfCopy = self;
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