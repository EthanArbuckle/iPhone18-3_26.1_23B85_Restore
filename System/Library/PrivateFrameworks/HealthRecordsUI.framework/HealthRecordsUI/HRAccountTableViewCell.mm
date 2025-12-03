@interface HRAccountTableViewCell
+ (NSString)reuseIdentifier;
- (HRAccountTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)configureIgnoreActionWithAccount:(id)account dataProvider:(id)provider;
- (void)configureWithAccount:(id)account dataProvider:(id)provider;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation HRAccountTableViewCell

+ (NSString)reuseIdentifier
{
  v2 = sub_1D139012C();

  return v2;
}

- (HRAccountTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  if (identifier)
  {
    v4 = sub_1D139016C();
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  return sub_1D1233510(v4, v5);
}

- (void)configureWithAccount:(id)account dataProvider:(id)provider
{
  accountCopy = account;
  providerCopy = provider;
  selfCopy = self;
  sub_1D1232D4C(accountCopy, 0, providerCopy, 0, 0, 0);
}

- (void)configureIgnoreActionWithAccount:(id)account dataProvider:(id)provider
{
  accountCopy = account;
  providerCopy = provider;
  selfCopy = self;
  sub_1D1232B84(accountCopy, providerCopy);
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for AccountTableViewCell();
  v2 = v3.receiver;
  [(HRAccountTableViewCell *)&v3 prepareForReuse];
  [*&v2[OBJC_IVAR___HRAccountTableViewCell_brandView] setBrandable:0 dataProvider:{0, v3.receiver, v3.super_class}];
}

- (void)layoutSubviews
{
  v16.receiver = self;
  v16.super_class = type metadata accessor for AccountTableViewCell();
  v2 = v16.receiver;
  [(HRAccountTableViewCell *)&v16 layoutSubviews];
  v3 = OBJC_IVAR___HRAccountTableViewCell_brandView;
  brandTitleLabel = [*&v2[OBJC_IVAR___HRAccountTableViewCell_brandView] brandTitleLabel];
  [brandTitleLabel bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  brandTitleLabel2 = [*&v2[v3] brandTitleLabel];
  [v2 convertRect:brandTitleLabel2 fromCoordinateSpace:{v6, v8, v10, v12}];
  v15 = v14;

  [v2 setSeparatorInset_];
}

@end