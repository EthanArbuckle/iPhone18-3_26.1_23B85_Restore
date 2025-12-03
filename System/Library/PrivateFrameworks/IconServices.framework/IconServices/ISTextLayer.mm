@interface ISTextLayer
- (ISTextLayer)init;
@end

@implementation ISTextLayer

- (ISTextLayer)init
{
  v11.receiver = self;
  v11.super_class = ISTextLayer;
  v2 = [(ISLayer *)&v11 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E69A8968]) initWithWhite:0.0 alpha:1.0];
    color = v2->_color;
    v2->_color = v3;

    v5 = +[ISDefaults sharedInstance];
    isSolariumEnabled = [v5 isSolariumEnabled];

    if (isSolariumEnabled)
    {
      v7 = [MEMORY[0x1E6999378] colorWithName:17 designSystem:0 palette:0 colorScheme:0 contrast:0 styling:0 displayGamut:0 error:0];
      v8 = [objc_alloc(MEMORY[0x1E69A8968]) initWithCGColor:{objc_msgSend(v7, "cgColor")}];
      v9 = v2->_color;
      v2->_color = v8;
    }
  }

  return v2;
}

@end