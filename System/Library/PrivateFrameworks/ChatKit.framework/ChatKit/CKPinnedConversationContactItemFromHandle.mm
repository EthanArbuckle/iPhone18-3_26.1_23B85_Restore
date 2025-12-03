@interface CKPinnedConversationContactItemFromHandle
- (CKPinnedConversationContactItemFromHandle)initWithEntity:(id)entity;
- (id)contactItemView;
@end

@implementation CKPinnedConversationContactItemFromHandle

- (CKPinnedConversationContactItemFromHandle)initWithEntity:(id)entity
{
  entityCopy = entity;
  v9.receiver = self;
  v9.super_class = CKPinnedConversationContactItemFromHandle;
  v6 = [(CKPinnedConversationContactItemFromHandle *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_entity, entity);
  }

  return v7;
}

- (id)contactItemView
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(CKPinnedConversationContactItemAvatarView);
  v4 = [MEMORY[0x1E695D0C0] descriptorForRequiredKeysWithThreeDTouchEnabled:0];
  v8[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];

  v6 = [(CKEntity *)self->_entity cnContactWithKeys:v5];
  [(CNAvatarView *)v3 setContact:v6];
  [(CKPinnedConversationContactItemAvatarView *)v3 setPinnedConversationContactItem:self];

  return v3;
}

@end