@interface HUMediaSourceListItemCell
- (HUMediaSourceListItemCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)prepareForReuse;
- (void)updateUIWithAnimation:(BOOL)animation;
@end

@implementation HUMediaSourceListItemCell

- (HUMediaSourceListItemCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v17.receiver = self;
  v17.super_class = HUMediaSourceListItemCell;
  v4 = [(HUTitleDescriptionCell *)&v17 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x277D755E8]);
    iconView = [(HUIconCell *)v4 iconView];
    [iconView bounds];
    v7 = [v5 initWithFrame:?];
    [(HUMediaSourceListItemCell *)v4 setServiceIconView:v7];

    serviceIconView = [(HUMediaSourceListItemCell *)v4 serviceIconView];
    [serviceIconView setAutoresizingMask:18];

    serviceIconView2 = [(HUMediaSourceListItemCell *)v4 serviceIconView];
    layer = [serviceIconView2 layer];
    [layer setCornerRadius:5.0];

    serviceIconView3 = [(HUMediaSourceListItemCell *)v4 serviceIconView];
    [serviceIconView3 setClipsToBounds:1];

    v12 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
    spinner = v4->_spinner;
    v4->_spinner = v12;

    iconView2 = [(HUIconCell *)v4 iconView];
    serviceIconView4 = [(HUMediaSourceListItemCell *)v4 serviceIconView];
    [iconView2 addSubview:serviceIconView4];
  }

  return v4;
}

- (void)updateUIWithAnimation:(BOOL)animation
{
  v21.receiver = self;
  v21.super_class = HUMediaSourceListItemCell;
  [(HUTitleDescriptionCell *)&v21 updateUIWithAnimation:animation];
  item = [(HUIconCell *)self item];
  latestResults = [item latestResults];
  v6 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13E98]];
  serviceIconView = [(HUMediaSourceListItemCell *)self serviceIconView];
  [serviceIconView setImage:v6];

  item2 = [(HUIconCell *)self item];
  loadingState = [item2 loadingState];

  if (loadingState)
  {
    spinner = [(HUMediaSourceListItemCell *)self spinner];
    [(HUMediaSourceListItemCell *)self setAccessoryView:spinner];

    spinner2 = [(HUMediaSourceListItemCell *)self spinner];
    [spinner2 startAnimating];
  }

  else
  {
    [(HUMediaSourceListItemCell *)self setAccessoryView:0];
    spinner3 = [(HUMediaSourceListItemCell *)self spinner];
    [spinner3 stopAnimating];

    objc_opt_class();
    item3 = [(HUIconCell *)self item];
    if (objc_opt_isKindOfClass())
    {
      v14 = item3;
    }

    else
    {
      v14 = 0;
    }

    v15 = v14;

    success = [v15 success];
    if (success)
    {
      v17 = 1;
      [(HUMediaSourceListItemCell *)self setAccessoryType:1];
      labelColor = [MEMORY[0x277D75348] labelColor];
      v19 = 0;
      goto LABEL_10;
    }

    [(HUMediaSourceListItemCell *)self setAccessoryType:0];
  }

  labelColor = [MEMORY[0x277D75348] systemGrayColor];
  v17 = 0;
  v19 = 1;
LABEL_10:
  titleLabel = [(HUTitleDescriptionCell *)self titleLabel];
  [titleLabel setTextColor:labelColor];

  if (v19)
  {
  }

  if (v17)
  {
  }
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = HUMediaSourceListItemCell;
  [(HUTitleDescriptionCell *)&v4 prepareForReuse];
  serviceIconView = [(HUMediaSourceListItemCell *)self serviceIconView];
  [serviceIconView setImage:0];

  [(HUMediaSourceListItemCell *)self setAccessoryView:0];
}

@end