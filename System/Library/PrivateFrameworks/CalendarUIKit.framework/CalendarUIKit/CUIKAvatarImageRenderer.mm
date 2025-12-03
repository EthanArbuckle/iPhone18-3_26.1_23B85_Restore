@interface CUIKAvatarImageRenderer
- (CUIKAvatarImageRenderer)init;
- (id)imageForContact:(id)contact size:(CGSize)size;
@end

@implementation CUIKAvatarImageRenderer

- (CUIKAvatarImageRenderer)init
{
  v6.receiver = self;
  v6.super_class = CUIKAvatarImageRenderer;
  v2 = [(CUIKAvatarImageRenderer *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695D0A0]);
    internalRenderer = v2->_internalRenderer;
    v2->_internalRenderer = v3;
  }

  return v2;
}

- (id)imageForContact:(id)contact size:(CGSize)size
{
  height = size.height;
  width = size.width;
  v12[1] = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  v8 = [MEMORY[0x1E695D0B8] scopeWithPointSize:0 scale:0 rightToLeft:width style:{height, 3.0}];
  if (contactCopy)
  {
    v12[0] = contactCopy;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  }

  else
  {
    v9 = MEMORY[0x1E695E0F0];
  }

  v10 = [(CNAvatarImageRenderer *)self->_internalRenderer avatarImageForContacts:v9 scope:v8];

  return v10;
}

@end