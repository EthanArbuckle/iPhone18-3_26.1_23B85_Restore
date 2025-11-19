@interface CKTransientAttachmentMessagePartChatItem
- (CKTransientAttachmentMessagePartChatItem)initWithParentChatItem:(id)a3;
- (id)IMChatItem;
@end

@implementation CKTransientAttachmentMessagePartChatItem

- (CKTransientAttachmentMessagePartChatItem)initWithParentChatItem:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CKTransientAttachmentMessagePartChatItem;
  v6 = [(CKMessagePartChatItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_parentGUID, a3);
  }

  return v7;
}

- (id)IMChatItem
{
  v3 = objc_alloc(MEMORY[0x1E69A5D10]);
  v4 = [(CKTransientAttachmentMessagePartChatItem *)self parentGUID];
  v5 = [v3 initWithGUID:v4];

  return v5;
}

@end