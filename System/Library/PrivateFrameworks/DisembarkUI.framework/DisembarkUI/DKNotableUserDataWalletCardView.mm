@interface DKNotableUserDataWalletCardView
- (CGSize)setupAssistantCredentialCardArtSize;
- (DKNotableUserDataWalletCardView)initWithTitle:(id)title subtitle:(id)subtitle icon:(id)icon;
- (void)addCardCell:(id)cell;
- (void)setupAssistantCredentialUpdatedCardArt:(id)art;
@end

@implementation DKNotableUserDataWalletCardView

- (DKNotableUserDataWalletCardView)initWithTitle:(id)title subtitle:(id)subtitle icon:(id)icon
{
  v9.receiver = self;
  v9.super_class = DKNotableUserDataWalletCardView;
  v5 = [(DKNotableUserDataCardView *)&v9 initWithTitle:title subtitle:subtitle icon:icon];
  if (v5)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    featureCardCellMap = v5->_featureCardCellMap;
    v5->_featureCardCellMap = dictionary;
  }

  return v5;
}

- (void)addCardCell:(id)cell
{
  cellCopy = cell;
  uniqueIdentifier = [cellCopy uniqueIdentifier];

  if (uniqueIdentifier)
  {
    featureCardCellMap = [(DKNotableUserDataWalletCardView *)self featureCardCellMap];
    uniqueIdentifier2 = [cellCopy uniqueIdentifier];
    [featureCardCellMap setObject:cellCopy forKeyedSubscript:uniqueIdentifier2];
  }

  v8.receiver = self;
  v8.super_class = DKNotableUserDataWalletCardView;
  [(DKNotableUserDataCardView *)&v8 addCardCell:cellCopy];
}

- (CGSize)setupAssistantCredentialCardArtSize
{
  v2 = 40.0;
  v3 = 40.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)setupAssistantCredentialUpdatedCardArt:(id)art
{
  artCopy = art;
  featureCardCellMap = [(DKNotableUserDataWalletCardView *)self featureCardCellMap];
  uniqueIdentifier = [artCopy uniqueIdentifier];
  v6 = [featureCardCellMap objectForKeyedSubscript:uniqueIdentifier];

  if (v6)
  {
    accessoryView = [v6 accessoryView];
    passSnapshot = [artCopy passSnapshot];
    [accessoryView setImage:passSnapshot];
  }
}

@end