@interface CUIKAvatarImageRenderer
- (CUIKAvatarImageRenderer)init;
- (id)imageForContact:(id)a3 size:(CGSize)a4;
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

- (id)imageForContact:(id)a3 size:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v12[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = [MEMORY[0x1E695D0B8] scopeWithPointSize:0 scale:0 rightToLeft:width style:{height, 3.0}];
  if (v7)
  {
    v12[0] = v7;
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