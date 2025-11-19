@interface CSLPRFAppViewChoiceButton
- (CGSize)intrinsicContentSize;
- (CSLPRFAppViewChoiceButton)init;
@end

@implementation CSLPRFAppViewChoiceButton

- (CGSize)intrinsicContentSize
{
  v2 = 44.0;
  v3 = 44.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (CSLPRFAppViewChoiceButton)init
{
  v9.receiver = self;
  v9.super_class = CSLPRFAppViewChoiceButton;
  v2 = [(CSLPRFAppViewChoiceButton *)&v9 init];
  if (v2)
  {
    v3 = [MEMORY[0x277D755D0] configurationWithPointSize:6 weight:24.0];
    v4 = [MEMORY[0x277D755B8] systemImageNamed:@"checkmark.circle.fill" withConfiguration:v3];
    v5 = [MEMORY[0x277D755D0] configurationWithPointSize:2 weight:24.0];
    v6 = [MEMORY[0x277D755B8] systemImageNamed:@"circle" withConfiguration:v5];
    [(CSLPRFAppViewChoiceButton *)v2 setImage:v6 forState:0];
    [(CSLPRFAppViewChoiceButton *)v2 setImage:v4 forState:4];
    v7 = [MEMORY[0x277D75348] systemGrayColor];
    [(CSLPRFAppViewChoiceButton *)v2 setTintColor:v7];

    [(CSLPRFAppViewChoiceButton *)v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  }

  return v2;
}

@end