@interface CKTransientAttachmentMessagePartChatItem
- (CKTransientAttachmentMessagePartChatItem)initWithParentChatItem:(id)item;
- (id)IMChatItem;
@end

@implementation CKTransientAttachmentMessagePartChatItem

- (CKTransientAttachmentMessagePartChatItem)initWithParentChatItem:(id)item
{
  itemCopy = item;
  v9.receiver = self;
  v9.super_class = CKTransientAttachmentMessagePartChatItem;
  v6 = [(CKMessagePartChatItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_parentGUID, item);
  }

  return v7;
}

- (id)IMChatItem
{
  v3 = objc_alloc(MEMORY[0x1E69A5D10]);
  parentGUID = [(CKTransientAttachmentMessagePartChatItem *)self parentGUID];
  v5 = [v3 initWithGUID:parentGUID];

  return v5;
}

@end