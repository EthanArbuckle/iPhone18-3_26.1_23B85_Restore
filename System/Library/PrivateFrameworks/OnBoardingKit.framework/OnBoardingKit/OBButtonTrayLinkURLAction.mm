@interface OBButtonTrayLinkURLAction
- (OBButtonTrayLinkURLAction)initWithURL:(id)l;
- (void)performButtonTrayLinkAction;
@end

@implementation OBButtonTrayLinkURLAction

- (OBButtonTrayLinkURLAction)initWithURL:(id)l
{
  lCopy = l;
  v9.receiver = self;
  v9.super_class = OBButtonTrayLinkURLAction;
  v6 = [(OBButtonTrayLinkURLAction *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_url, l);
  }

  return v7;
}

- (void)performButtonTrayLinkAction
{
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  v3 = [(OBButtonTrayLinkURLAction *)self url];
  [mEMORY[0x1E69DC668] openURL:v3 options:MEMORY[0x1E695E0F8] completionHandler:0];
}

@end