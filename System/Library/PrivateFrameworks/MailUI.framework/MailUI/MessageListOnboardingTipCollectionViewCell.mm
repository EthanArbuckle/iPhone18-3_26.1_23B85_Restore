@interface MessageListOnboardingTipCollectionViewCell
- (UIButton)cancelButton;
- (UIButton)customizeButton;
- (UIButton)okButton;
- (UIButton)tryCategoriesButton;
- (UIButton)turnOffCategoriesButton;
- (void)configureForBucket:(int64_t)a3 primaryUnreadCount:(int64_t)a4 otherUnreadCount:(int64_t)a5;
- (void)setCancelButton:(id)a3;
- (void)setCustomizeButton:(id)a3;
- (void)setOkButton:(id)a3;
- (void)setTryCategoriesButton:(id)a3;
- (void)setTurnOffCategoriesButton:(id)a3;
@end

@implementation MessageListOnboardingTipCollectionViewCell

- (UIButton)tryCategoriesButton
{
  MEMORY[0x277D82BE0](self);
  v4 = MessageListOnboardingTipCollectionViewCell.tryCategoriesButton.getter();
  MEMORY[0x277D82BD8](self);

  return v4;
}

- (void)setTryCategoriesButton:(id)a3
{
  MEMORY[0x277D82BE0](a3);
  MEMORY[0x277D82BE0](self);
  sub_214BF2D6C(a3);
  MEMORY[0x277D82BD8](self);
}

- (UIButton)turnOffCategoriesButton
{
  MEMORY[0x277D82BE0](self);
  v4 = MessageListOnboardingTipCollectionViewCell.turnOffCategoriesButton.getter();
  MEMORY[0x277D82BD8](self);

  return v4;
}

- (void)setTurnOffCategoriesButton:(id)a3
{
  MEMORY[0x277D82BE0](a3);
  MEMORY[0x277D82BE0](self);
  sub_214BF34E4(a3);
  MEMORY[0x277D82BD8](self);
}

- (UIButton)okButton
{
  MEMORY[0x277D82BE0](self);
  v4 = MessageListOnboardingTipCollectionViewCell.okButton.getter();
  MEMORY[0x277D82BD8](self);

  return v4;
}

- (void)setOkButton:(id)a3
{
  MEMORY[0x277D82BE0](a3);
  MEMORY[0x277D82BE0](self);
  sub_214BF3AC4(a3);
  MEMORY[0x277D82BD8](self);
}

- (UIButton)customizeButton
{
  MEMORY[0x277D82BE0](self);
  v4 = MessageListOnboardingTipCollectionViewCell.customizeButton.getter();
  MEMORY[0x277D82BD8](self);

  return v4;
}

- (void)setCustomizeButton:(id)a3
{
  MEMORY[0x277D82BE0](a3);
  MEMORY[0x277D82BE0](self);
  sub_214BF3E44(a3);
  MEMORY[0x277D82BD8](self);
}

- (UIButton)cancelButton
{
  MEMORY[0x277D82BE0](self);
  v4 = MessageListOnboardingTipCollectionViewCell.cancelButton.getter();
  MEMORY[0x277D82BD8](self);

  return v4;
}

- (void)setCancelButton:(id)a3
{
  MEMORY[0x277D82BE0](a3);
  MEMORY[0x277D82BE0](self);
  sub_214BF41C4(a3);
  MEMORY[0x277D82BD8](self);
}

- (void)configureForBucket:(int64_t)a3 primaryUnreadCount:(int64_t)a4 otherUnreadCount:(int64_t)a5
{
  MEMORY[0x277D82BE0](self);
  MessageListOnboardingTipCollectionViewCell.configure(forBucket:primaryUnreadCount:otherUnreadCount:)(a3, a4, a5);
  MEMORY[0x277D82BD8](self);
}

@end