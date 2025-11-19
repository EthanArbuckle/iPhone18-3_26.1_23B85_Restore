@interface OBButtonTrayLinkURLAction
- (OBButtonTrayLinkURLAction)initWithURL:(id)a3;
- (void)performButtonTrayLinkAction;
@end

@implementation OBButtonTrayLinkURLAction

- (OBButtonTrayLinkURLAction)initWithURL:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = OBButtonTrayLinkURLAction;
  v6 = [(OBButtonTrayLinkURLAction *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_url, a3);
  }

  return v7;
}

- (void)performButtonTrayLinkAction
{
  v4 = [MEMORY[0x1E69DC668] sharedApplication];
  v3 = [(OBButtonTrayLinkURLAction *)self url];
  [v4 openURL:v3 options:MEMORY[0x1E695E0F8] completionHandler:0];
}

@end