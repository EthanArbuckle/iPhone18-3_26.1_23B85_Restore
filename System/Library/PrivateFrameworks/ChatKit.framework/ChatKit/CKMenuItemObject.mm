@interface CKMenuItemObject
- (CKMenuItemObject)initWithTitle:(id)title imageName:(id)name handler:(id)handler;
- (id)uiAction;
@end

@implementation CKMenuItemObject

- (CKMenuItemObject)initWithTitle:(id)title imageName:(id)name handler:(id)handler
{
  titleCopy = title;
  nameCopy = name;
  handlerCopy = handler;
  v14.receiver = self;
  v14.super_class = CKMenuItemObject;
  v11 = [(CKMenuItemObject *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(CKMenuItemObject *)v11 setTitle:titleCopy];
    [(CKMenuItemObject *)v12 setImageName:nameCopy];
    [(CKMenuItemObject *)v12 setHandler:handlerCopy];
  }

  return v12;
}

- (id)uiAction
{
  v3 = MEMORY[0x1E69DCAB8];
  imageName = [(CKMenuItemObject *)self imageName];
  v5 = [v3 systemImageNamed:imageName];

  v6 = MEMORY[0x1E69DC628];
  title = [(CKMenuItemObject *)self title];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __28__CKMenuItemObject_uiAction__block_invoke;
  v10[3] = &unk_1E72EC060;
  v10[4] = self;
  v8 = [v6 actionWithTitle:title image:v5 identifier:0 handler:v10];

  return v8;
}

void __28__CKMenuItemObject_uiAction__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) handler];
  v1[2]();
}

@end