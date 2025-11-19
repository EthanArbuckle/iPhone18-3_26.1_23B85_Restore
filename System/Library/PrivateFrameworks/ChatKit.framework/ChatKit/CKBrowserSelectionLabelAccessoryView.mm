@interface CKBrowserSelectionLabelAccessoryView
- (CGSize)sizeThatFits:(CGSize)a3;
- (CKBrowserSelectionLabelAccessoryView)initWithCoder:(id)a3;
- (CKBrowserSelectionLabelAccessoryView)initWithLabelAccessoryType:(unint64_t)a3;
@end

@implementation CKBrowserSelectionLabelAccessoryView

- (CKBrowserSelectionLabelAccessoryView)initWithLabelAccessoryType:(unint64_t)a3
{
  v12.receiver = self;
  v12.super_class = CKBrowserSelectionLabelAccessoryView;
  v4 = [(CKBrowserSelectionLabelAccessoryView *)&v12 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v5 = v4;
  if (v4)
  {
    v6 = [(CKBrowserSelectionLabelAccessoryView *)v4 layer];
    [v6 setAllowsGroupBlending:0];

    if (a3 == 2)
    {
      if (initWithLabelAccessoryType__onceToken_39 != -1)
      {
        [CKBrowserSelectionLabelAccessoryView initWithLabelAccessoryType:];
      }

      v7 = &initWithLabelAccessoryType____plusDImage_38;
      v8 = &initWithLabelAccessoryType____plusLImage_37;
    }

    else
    {
      if (a3 != 1)
      {
        v9 = 0;
        v10 = 0;
        goto LABEL_12;
      }

      if (initWithLabelAccessoryType__onceToken != -1)
      {
        [CKBrowserSelectionLabelAccessoryView initWithLabelAccessoryType:];
      }

      v7 = &initWithLabelAccessoryType____plusDImage;
      v8 = &initWithLabelAccessoryType____plusLImage;
    }

    v9 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:*v8];
    v10 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:*v7];
LABEL_12:
    [(CKBrowserSelectionLabelAccessoryView *)v5 setPlusLView:v9];
    [(CKBrowserSelectionLabelAccessoryView *)v5 setPlusDView:v10];
    [(CKBrowserSelectionLabelAccessoryView *)v5 addSubview:v9];
    [(CKBrowserSelectionLabelAccessoryView *)v5 addSubview:v10];
  }

  return v5;
}

void __67__CKBrowserSelectionLabelAccessoryView_initWithLabelAccessoryType___block_invoke()
{
  v6 = [MEMORY[0x1E69DCAB8] ckImageNamed:@"IconNewDot"];
  v0 = [MEMORY[0x1E69DC888] colorWithRed:0.0 green:0.393 blue:1.0 alpha:1.0];
  v1 = [v6 _flatImageWithColor:v0];
  v2 = initWithLabelAccessoryType____plusLImage;
  initWithLabelAccessoryType____plusLImage = v1;

  v3 = [MEMORY[0x1E69DC888] colorWithRed:0.0 green:0.393 blue:1.0 alpha:0.100000001];
  v4 = [v6 _flatImageWithColor:v3];
  v5 = initWithLabelAccessoryType____plusDImage;
  initWithLabelAccessoryType____plusDImage = v4;
}

void __67__CKBrowserSelectionLabelAccessoryView_initWithLabelAccessoryType___block_invoke_2()
{
  v6 = [MEMORY[0x1E69DCAB8] ckImageNamed:@"IconNewDot"];
  v0 = [MEMORY[0x1E69DC888] colorWithRed:0.992 green:0.51 blue:0.031 alpha:0.62];
  v1 = [v6 _flatImageWithColor:v0];
  v2 = initWithLabelAccessoryType____plusLImage_37;
  initWithLabelAccessoryType____plusLImage_37 = v1;

  v3 = [MEMORY[0x1E69DC888] colorWithRed:0.992 green:0.51 blue:0.031 alpha:0.398];
  v4 = [v6 _flatImageWithColor:v3];
  v5 = initWithLabelAccessoryType____plusDImage_38;
  initWithLabelAccessoryType____plusDImage_38 = v4;
}

- (CKBrowserSelectionLabelAccessoryView)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"This class does not support unarchiving from a nib" userInfo:0];
  objc_exception_throw(v4);
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = [(CKBrowserSelectionLabelAccessoryView *)self plusLView];
  [v5 sizeThatFits:{width, height}];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

@end