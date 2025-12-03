@interface HUMediaServiceAccountView
- (HUMediaServiceAccountView)initWithFrame:(CGRect)frame;
- (void)_loadServiceIconImage;
- (void)updateConstraints;
- (void)updateUIWithAnimation:(BOOL)animation;
@end

@implementation HUMediaServiceAccountView

- (HUMediaServiceAccountView)initWithFrame:(CGRect)frame
{
  v35.receiver = self;
  v35.super_class = HUMediaServiceAccountView;
  v3 = [(HUMediaServiceAccountView *)&v35 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_opt_new();
    [(HUMediaServiceAccountView *)v3 setIconView:v4];

    iconView = [(HUMediaServiceAccountView *)v3 iconView];
    [iconView setTranslatesAutoresizingMaskIntoConstraints:0];

    iconView2 = [(HUMediaServiceAccountView *)v3 iconView];
    LODWORD(v7) = 1148846080;
    [iconView2 setContentHuggingPriority:1 forAxis:v7];

    iconView3 = [(HUMediaServiceAccountView *)v3 iconView];
    LODWORD(v9) = 1148846080;
    [iconView3 setContentHuggingPriority:0 forAxis:v9];

    iconView4 = [(HUMediaServiceAccountView *)v3 iconView];
    layer = [iconView4 layer];
    [layer setCornerRadius:15.0];

    iconView5 = [(HUMediaServiceAccountView *)v3 iconView];
    [iconView5 setClipsToBounds:1];

    iconView6 = [(HUMediaServiceAccountView *)v3 iconView];
    [(HUMediaServiceAccountView *)v3 addSubview:iconView6];

    v14 = objc_opt_new();
    [(HUMediaServiceAccountView *)v3 setServiceNameLabel:v14];

    v15 = [MEMORY[0x277D74300] boldSystemFontOfSize:16.0];
    serviceNameLabel = [(HUMediaServiceAccountView *)v3 serviceNameLabel];
    [serviceNameLabel setFont:v15];

    serviceNameLabel2 = [(HUMediaServiceAccountView *)v3 serviceNameLabel];
    [serviceNameLabel2 setTranslatesAutoresizingMaskIntoConstraints:0];

    v18 = objc_opt_new();
    [(HUMediaServiceAccountView *)v3 setAccountHandleLabel:v18];

    v19 = [MEMORY[0x277D74300] systemFontOfSize:12.0];
    accountHandleLabel = [(HUMediaServiceAccountView *)v3 accountHandleLabel];
    [accountHandleLabel setFont:v19];

    systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
    accountHandleLabel2 = [(HUMediaServiceAccountView *)v3 accountHandleLabel];
    [accountHandleLabel2 setTextColor:systemGrayColor];

    accountHandleLabel3 = [(HUMediaServiceAccountView *)v3 accountHandleLabel];
    [accountHandleLabel3 setTranslatesAutoresizingMaskIntoConstraints:0];

    v24 = objc_opt_new();
    [(HUMediaServiceAccountView *)v3 setLabelStackView:v24];

    labelStackView = [(HUMediaServiceAccountView *)v3 labelStackView];
    [labelStackView setAxis:1];

    labelStackView2 = [(HUMediaServiceAccountView *)v3 labelStackView];
    [labelStackView2 setAlignment:1];

    labelStackView3 = [(HUMediaServiceAccountView *)v3 labelStackView];
    [labelStackView3 setSpacing:4.0];

    labelStackView4 = [(HUMediaServiceAccountView *)v3 labelStackView];
    [labelStackView4 setTranslatesAutoresizingMaskIntoConstraints:0];

    labelStackView5 = [(HUMediaServiceAccountView *)v3 labelStackView];
    serviceNameLabel3 = [(HUMediaServiceAccountView *)v3 serviceNameLabel];
    [labelStackView5 addArrangedSubview:serviceNameLabel3];

    labelStackView6 = [(HUMediaServiceAccountView *)v3 labelStackView];
    accountHandleLabel4 = [(HUMediaServiceAccountView *)v3 accountHandleLabel];
    [labelStackView6 addArrangedSubview:accountHandleLabel4];

    labelStackView7 = [(HUMediaServiceAccountView *)v3 labelStackView];
    [(HUMediaServiceAccountView *)v3 addSubview:labelStackView7];

    [(HUMediaServiceAccountView *)v3 setNeedsUpdateConstraints];
  }

  return v3;
}

- (void)updateConstraints
{
  v3 = objc_opt_new();
  iconView = [(HUMediaServiceAccountView *)self iconView];
  topAnchor = [iconView topAnchor];
  topAnchor2 = [(HUMediaServiceAccountView *)self topAnchor];
  v7 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v3 addObject:v7];

  iconView2 = [(HUMediaServiceAccountView *)self iconView];
  leadingAnchor = [iconView2 leadingAnchor];
  leadingAnchor2 = [(HUMediaServiceAccountView *)self leadingAnchor];
  v11 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:8.0];
  [v3 addObject:v11];

  iconView3 = [(HUMediaServiceAccountView *)self iconView];
  centerYAnchor = [iconView3 centerYAnchor];
  centerYAnchor2 = [(HUMediaServiceAccountView *)self centerYAnchor];
  v15 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  [v3 addObject:v15];

  iconView4 = [(HUMediaServiceAccountView *)self iconView];
  heightAnchor = [iconView4 heightAnchor];
  v18 = [heightAnchor constraintEqualToConstant:56.0];
  [v3 addObject:v18];

  iconView5 = [(HUMediaServiceAccountView *)self iconView];
  widthAnchor = [iconView5 widthAnchor];
  v21 = [widthAnchor constraintEqualToConstant:56.0];
  [v3 addObject:v21];

  labelStackView = [(HUMediaServiceAccountView *)self labelStackView];
  centerYAnchor3 = [labelStackView centerYAnchor];
  iconView6 = [(HUMediaServiceAccountView *)self iconView];
  centerYAnchor4 = [iconView6 centerYAnchor];
  v26 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
  [v3 addObject:v26];

  labelStackView2 = [(HUMediaServiceAccountView *)self labelStackView];
  leadingAnchor3 = [labelStackView2 leadingAnchor];
  iconView7 = [(HUMediaServiceAccountView *)self iconView];
  trailingAnchor = [iconView7 trailingAnchor];
  v31 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor constant:15.0];
  [v3 addObject:v31];

  v32 = MEMORY[0x277CCAAD0];
  currentConstraints = [(HUMediaServiceAccountView *)self currentConstraints];
  [v32 deactivateConstraints:currentConstraints];

  [(HUMediaServiceAccountView *)self setCurrentConstraints:v3];
  v34 = MEMORY[0x277CCAAD0];
  currentConstraints2 = [(HUMediaServiceAccountView *)self currentConstraints];
  [v34 activateConstraints:currentConstraints2];

  v36.receiver = self;
  v36.super_class = HUMediaServiceAccountView;
  [(HUMediaServiceAccountView *)&v36 updateConstraints];
}

- (void)updateUIWithAnimation:(BOOL)animation
{
  v4 = objc_opt_class();
  item = [(HUMediaServiceAccountView *)self item];
  if (item)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = item;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;
    v8 = item;
    if (v7)
    {
      goto LABEL_8;
    }

    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [currentHandler handleFailureInFunction:v10 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v4, objc_opt_class()}];
  }

  v8 = 0;
LABEL_8:
  v17 = v8;

  mediaService = [v17 mediaService];
  serviceName = [mediaService serviceName];
  serviceNameLabel = [(HUMediaServiceAccountView *)self serviceNameLabel];
  [serviceNameLabel setText:serviceName];

  mediaService2 = [v17 mediaService];
  accountName = [mediaService2 accountName];
  accountHandleLabel = [(HUMediaServiceAccountView *)self accountHandleLabel];
  [accountHandleLabel setText:accountName];

  [(HUMediaServiceAccountView *)self _loadServiceIconImage];
  [(HUMediaServiceAccountView *)self setNeedsUpdateConstraints];
}

- (void)_loadServiceIconImage
{
  if (![(HUMediaServiceAccountView *)self iconImageLoadingInProgress])
  {
    [(HUMediaServiceAccountView *)self setIconImageLoadingInProgress:1];
    v3 = objc_opt_class();
    item = [(HUMediaServiceAccountView *)self item];
    if (item)
    {
      if (objc_opt_isKindOfClass())
      {
        v5 = item;
      }

      else
      {
        v5 = 0;
      }

      v6 = item;
      if (v5)
      {
        goto LABEL_9;
      }

      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
      [currentHandler handleFailureInFunction:v8 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v3, objc_opt_class()}];
    }

    v6 = 0;
LABEL_9:

    mediaService = [v6 mediaService];
    iconImageURL = [mediaService iconImageURL];

    v11 = [MEMORY[0x277D755B8] hf_fetchImageFromURL:iconImageURL];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __50__HUMediaServiceAccountView__loadServiceIconImage__block_invoke;
    v13[3] = &unk_277DBD728;
    v13[4] = self;
    v12 = [v11 addCompletionBlock:v13];
  }
}

void __50__HUMediaServiceAccountView__loadServiceIconImage__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = a2;
  if (a3)
  {
    v5 = HUIconImageNamed();
    v6 = [*(a1 + 32) iconView];
    [v6 setImage:v5];
  }

  else
  {
    v5 = [*(a1 + 32) iconView];
    [v5 setImage:v7];
  }

  [*(a1 + 32) setIconImageLoadingInProgress:0];
}

@end