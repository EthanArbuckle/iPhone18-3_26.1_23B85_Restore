@interface DKNotableUserDataWalletCardView
- (CGSize)setupAssistantCredentialCardArtSize;
- (DKNotableUserDataWalletCardView)initWithTitle:(id)a3 subtitle:(id)a4 icon:(id)a5;
- (void)addCardCell:(id)a3;
- (void)setupAssistantCredentialUpdatedCardArt:(id)a3;
@end

@implementation DKNotableUserDataWalletCardView

- (DKNotableUserDataWalletCardView)initWithTitle:(id)a3 subtitle:(id)a4 icon:(id)a5
{
  v9.receiver = self;
  v9.super_class = DKNotableUserDataWalletCardView;
  v5 = [(DKNotableUserDataCardView *)&v9 initWithTitle:a3 subtitle:a4 icon:a5];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB38] dictionary];
    featureCardCellMap = v5->_featureCardCellMap;
    v5->_featureCardCellMap = v6;
  }

  return v5;
}

- (void)addCardCell:(id)a3
{
  v4 = a3;
  v5 = [v4 uniqueIdentifier];

  if (v5)
  {
    v6 = [(DKNotableUserDataWalletCardView *)self featureCardCellMap];
    v7 = [v4 uniqueIdentifier];
    [v6 setObject:v4 forKeyedSubscript:v7];
  }

  v8.receiver = self;
  v8.super_class = DKNotableUserDataWalletCardView;
  [(DKNotableUserDataCardView *)&v8 addCardCell:v4];
}

- (CGSize)setupAssistantCredentialCardArtSize
{
  v2 = 40.0;
  v3 = 40.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)setupAssistantCredentialUpdatedCardArt:(id)a3
{
  v9 = a3;
  v4 = [(DKNotableUserDataWalletCardView *)self featureCardCellMap];
  v5 = [v9 uniqueIdentifier];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (v6)
  {
    v7 = [v6 accessoryView];
    v8 = [v9 passSnapshot];
    [v7 setImage:v8];
  }
}

@end