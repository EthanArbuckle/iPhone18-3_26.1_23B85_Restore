@interface MessageListOnboardingTipCollectionViewCell
- (UIButton)cancelButton;
- (UIButton)customizeButton;
- (UIButton)okButton;
- (UIButton)tryCategoriesButton;
- (UIButton)turnOffCategoriesButton;
- (void)configureForBucket:(int64_t)bucket primaryUnreadCount:(int64_t)count otherUnreadCount:(int64_t)unreadCount;
- (void)setCancelButton:(id)button;
- (void)setCustomizeButton:(id)button;
- (void)setOkButton:(id)button;
- (void)setTryCategoriesButton:(id)button;
- (void)setTurnOffCategoriesButton:(id)button;
@end

@implementation MessageListOnboardingTipCollectionViewCell

- (UIButton)tryCategoriesButton
{
  MEMORY[0x277D82BE0](self);
  v4 = MessageListOnboardingTipCollectionViewCell.tryCategoriesButton.getter();
  MEMORY[0x277D82BD8](self);

  return v4;
}

- (void)setTryCategoriesButton:(id)button
{
  MEMORY[0x277D82BE0](button);
  MEMORY[0x277D82BE0](self);
  sub_214BF2D6C(button);
  MEMORY[0x277D82BD8](self);
}

- (UIButton)turnOffCategoriesButton
{
  MEMORY[0x277D82BE0](self);
  v4 = MessageListOnboardingTipCollectionViewCell.turnOffCategoriesButton.getter();
  MEMORY[0x277D82BD8](self);

  return v4;
}

- (void)setTurnOffCategoriesButton:(id)button
{
  MEMORY[0x277D82BE0](button);
  MEMORY[0x277D82BE0](self);
  sub_214BF34E4(button);
  MEMORY[0x277D82BD8](self);
}

- (UIButton)okButton
{
  MEMORY[0x277D82BE0](self);
  v4 = MessageListOnboardingTipCollectionViewCell.okButton.getter();
  MEMORY[0x277D82BD8](self);

  return v4;
}

- (void)setOkButton:(id)button
{
  MEMORY[0x277D82BE0](button);
  MEMORY[0x277D82BE0](self);
  sub_214BF3AC4(button);
  MEMORY[0x277D82BD8](self);
}

- (UIButton)customizeButton
{
  MEMORY[0x277D82BE0](self);
  v4 = MessageListOnboardingTipCollectionViewCell.customizeButton.getter();
  MEMORY[0x277D82BD8](self);

  return v4;
}

- (void)setCustomizeButton:(id)button
{
  MEMORY[0x277D82BE0](button);
  MEMORY[0x277D82BE0](self);
  sub_214BF3E44(button);
  MEMORY[0x277D82BD8](self);
}

- (UIButton)cancelButton
{
  MEMORY[0x277D82BE0](self);
  v4 = MessageListOnboardingTipCollectionViewCell.cancelButton.getter();
  MEMORY[0x277D82BD8](self);

  return v4;
}

- (void)setCancelButton:(id)button
{
  MEMORY[0x277D82BE0](button);
  MEMORY[0x277D82BE0](self);
  sub_214BF41C4(button);
  MEMORY[0x277D82BD8](self);
}

- (void)configureForBucket:(int64_t)bucket primaryUnreadCount:(int64_t)count otherUnreadCount:(int64_t)unreadCount
{
  MEMORY[0x277D82BE0](self);
  MessageListOnboardingTipCollectionViewCell.configure(forBucket:primaryUnreadCount:otherUnreadCount:)(bucket, count, unreadCount);
  MEMORY[0x277D82BD8](self);
}

@end