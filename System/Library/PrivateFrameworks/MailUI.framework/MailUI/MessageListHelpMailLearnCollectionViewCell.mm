@interface MessageListHelpMailLearnCollectionViewCell
- (UIButton)cancelButton;
- (UIButton)helpMailLearnButton;
@end

@implementation MessageListHelpMailLearnCollectionViewCell

- (UIButton)helpMailLearnButton
{
  MEMORY[0x277D82BE0](self);
  v4 = MessageListHelpMailLearnCollectionViewCell.helpMailLearnButton.getter();
  MEMORY[0x277D82BD8](self);

  return v4;
}

- (UIButton)cancelButton
{
  MEMORY[0x277D82BE0](self);
  v4 = MessageListHelpMailLearnCollectionViewCell.cancelButton.getter();
  MEMORY[0x277D82BD8](self);

  return v4;
}

@end