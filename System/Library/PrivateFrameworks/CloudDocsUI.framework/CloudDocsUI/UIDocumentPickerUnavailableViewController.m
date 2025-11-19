@interface UIDocumentPickerUnavailableViewController
@end

@implementation UIDocumentPickerUnavailableViewController

void __84___UIDocumentPickerUnavailableViewController__buttonBackgroundImageForState_traits___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277D75208];
  v7.origin.x = *MEMORY[0x277CBF348];
  v7.origin.y = *(MEMORY[0x277CBF348] + 8);
  v7.size.width = *(a1 + 32);
  v7.size.height = *(a1 + 40);
  v8 = CGRectInset(v7, 0.5, 0.5);
  v5 = [v2 bezierPathWithRoundedRect:v8.origin.x cornerRadius:{v8.origin.y, v8.size.width, v8.size.height, 3.0}];
  [v5 setLineWidth:1.0];
  v3 = *(a1 + 48);
  if (v3 == 1)
  {
    [v5 fill];
  }

  else
  {
    v4 = v5;
    if (v3)
    {
      goto LABEL_6;
    }

    [v5 stroke];
  }

  v4 = v5;
LABEL_6:
}

@end