@interface CKMenuItemObject
- (CKMenuItemObject)initWithTitle:(id)a3 imageName:(id)a4 handler:(id)a5;
- (id)uiAction;
@end

@implementation CKMenuItemObject

- (CKMenuItemObject)initWithTitle:(id)a3 imageName:(id)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = CKMenuItemObject;
  v11 = [(CKMenuItemObject *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(CKMenuItemObject *)v11 setTitle:v8];
    [(CKMenuItemObject *)v12 setImageName:v9];
    [(CKMenuItemObject *)v12 setHandler:v10];
  }

  return v12;
}

- (id)uiAction
{
  v3 = MEMORY[0x1E69DCAB8];
  v4 = [(CKMenuItemObject *)self imageName];
  v5 = [v3 systemImageNamed:v4];

  v6 = MEMORY[0x1E69DC628];
  v7 = [(CKMenuItemObject *)self title];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __28__CKMenuItemObject_uiAction__block_invoke;
  v10[3] = &unk_1E72EC060;
  v10[4] = self;
  v8 = [v6 actionWithTitle:v7 image:v5 identifier:0 handler:v10];

  return v8;
}

void __28__CKMenuItemObject_uiAction__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) handler];
  v1[2]();
}

@end