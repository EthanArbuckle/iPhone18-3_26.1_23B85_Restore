@interface UIColor(DOCExtensions)
+ (id)_doc_safeTintColor:()DOCExtensions;
- (id)_doc_invertedColor;
- (void)doc_readableFromColor:()DOCExtensions fallbackColor:;
@end

@implementation UIColor(DOCExtensions)

+ (id)_doc_safeTintColor:()DOCExtensions
{
  v3 = a3;
  whiteColor = [MEMORY[0x277D75348] whiteColor];
  [whiteColor _colorDifferenceFromColor:v3];
  if (v5 >= 0.2)
  {
    systemBlueColor = v3;
  }

  else
  {
    systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
  }

  v7 = systemBlueColor;

  return v7;
}

- (id)_doc_invertedColor
{
  v6 = *MEMORY[0x277D85DE8];
  v4 = 0u;
  *v5 = 0u;
  [self getRed:&v4 green:&v4 + 8 blue:v5 alpha:&v5[1]];
  v1 = [MEMORY[0x277D75348] colorWithRed:1.0 - *&v4 green:1.0 - *(&v4 + 1) blue:1.0 - v5[0] alpha:v5[1]];
  v2 = *MEMORY[0x277D85DE8];

  return v1;
}

- (void)doc_readableFromColor:()DOCExtensions fallbackColor:
{
  v6 = a4;
  [self _colorDifferenceFromColor:a3];
  if (v7 < 0.2)
  {
    selfCopy = v6;
  }

  else
  {
    selfCopy = self;
  }

  v9 = selfCopy;

  return selfCopy;
}

@end