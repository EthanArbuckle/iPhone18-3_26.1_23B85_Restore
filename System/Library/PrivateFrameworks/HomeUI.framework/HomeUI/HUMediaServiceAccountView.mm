@interface HUMediaServiceAccountView
- (HUMediaServiceAccountView)initWithFrame:(CGRect)a3;
- (void)_loadServiceIconImage;
- (void)updateConstraints;
- (void)updateUIWithAnimation:(BOOL)a3;
@end

@implementation HUMediaServiceAccountView

- (HUMediaServiceAccountView)initWithFrame:(CGRect)a3
{
  v35.receiver = self;
  v35.super_class = HUMediaServiceAccountView;
  v3 = [(HUMediaServiceAccountView *)&v35 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_opt_new();
    [(HUMediaServiceAccountView *)v3 setIconView:v4];

    v5 = [(HUMediaServiceAccountView *)v3 iconView];
    [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

    v6 = [(HUMediaServiceAccountView *)v3 iconView];
    LODWORD(v7) = 1148846080;
    [v6 setContentHuggingPriority:1 forAxis:v7];

    v8 = [(HUMediaServiceAccountView *)v3 iconView];
    LODWORD(v9) = 1148846080;
    [v8 setContentHuggingPriority:0 forAxis:v9];

    v10 = [(HUMediaServiceAccountView *)v3 iconView];
    v11 = [v10 layer];
    [v11 setCornerRadius:15.0];

    v12 = [(HUMediaServiceAccountView *)v3 iconView];
    [v12 setClipsToBounds:1];

    v13 = [(HUMediaServiceAccountView *)v3 iconView];
    [(HUMediaServiceAccountView *)v3 addSubview:v13];

    v14 = objc_opt_new();
    [(HUMediaServiceAccountView *)v3 setServiceNameLabel:v14];

    v15 = [MEMORY[0x277D74300] boldSystemFontOfSize:16.0];
    v16 = [(HUMediaServiceAccountView *)v3 serviceNameLabel];
    [v16 setFont:v15];

    v17 = [(HUMediaServiceAccountView *)v3 serviceNameLabel];
    [v17 setTranslatesAutoresizingMaskIntoConstraints:0];

    v18 = objc_opt_new();
    [(HUMediaServiceAccountView *)v3 setAccountHandleLabel:v18];

    v19 = [MEMORY[0x277D74300] systemFontOfSize:12.0];
    v20 = [(HUMediaServiceAccountView *)v3 accountHandleLabel];
    [v20 setFont:v19];

    v21 = [MEMORY[0x277D75348] systemGrayColor];
    v22 = [(HUMediaServiceAccountView *)v3 accountHandleLabel];
    [v22 setTextColor:v21];

    v23 = [(HUMediaServiceAccountView *)v3 accountHandleLabel];
    [v23 setTranslatesAutoresizingMaskIntoConstraints:0];

    v24 = objc_opt_new();
    [(HUMediaServiceAccountView *)v3 setLabelStackView:v24];

    v25 = [(HUMediaServiceAccountView *)v3 labelStackView];
    [v25 setAxis:1];

    v26 = [(HUMediaServiceAccountView *)v3 labelStackView];
    [v26 setAlignment:1];

    v27 = [(HUMediaServiceAccountView *)v3 labelStackView];
    [v27 setSpacing:4.0];

    v28 = [(HUMediaServiceAccountView *)v3 labelStackView];
    [v28 setTranslatesAutoresizingMaskIntoConstraints:0];

    v29 = [(HUMediaServiceAccountView *)v3 labelStackView];
    v30 = [(HUMediaServiceAccountView *)v3 serviceNameLabel];
    [v29 addArrangedSubview:v30];

    v31 = [(HUMediaServiceAccountView *)v3 labelStackView];
    v32 = [(HUMediaServiceAccountView *)v3 accountHandleLabel];
    [v31 addArrangedSubview:v32];

    v33 = [(HUMediaServiceAccountView *)v3 labelStackView];
    [(HUMediaServiceAccountView *)v3 addSubview:v33];

    [(HUMediaServiceAccountView *)v3 setNeedsUpdateConstraints];
  }

  return v3;
}

- (void)updateConstraints
{
  v3 = objc_opt_new();
  v4 = [(HUMediaServiceAccountView *)self iconView];
  v5 = [v4 topAnchor];
  v6 = [(HUMediaServiceAccountView *)self topAnchor];
  v7 = [v5 constraintEqualToAnchor:v6];
  [v3 addObject:v7];

  v8 = [(HUMediaServiceAccountView *)self iconView];
  v9 = [v8 leadingAnchor];
  v10 = [(HUMediaServiceAccountView *)self leadingAnchor];
  v11 = [v9 constraintEqualToAnchor:v10 constant:8.0];
  [v3 addObject:v11];

  v12 = [(HUMediaServiceAccountView *)self iconView];
  v13 = [v12 centerYAnchor];
  v14 = [(HUMediaServiceAccountView *)self centerYAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];
  [v3 addObject:v15];

  v16 = [(HUMediaServiceAccountView *)self iconView];
  v17 = [v16 heightAnchor];
  v18 = [v17 constraintEqualToConstant:56.0];
  [v3 addObject:v18];

  v19 = [(HUMediaServiceAccountView *)self iconView];
  v20 = [v19 widthAnchor];
  v21 = [v20 constraintEqualToConstant:56.0];
  [v3 addObject:v21];

  v22 = [(HUMediaServiceAccountView *)self labelStackView];
  v23 = [v22 centerYAnchor];
  v24 = [(HUMediaServiceAccountView *)self iconView];
  v25 = [v24 centerYAnchor];
  v26 = [v23 constraintEqualToAnchor:v25];
  [v3 addObject:v26];

  v27 = [(HUMediaServiceAccountView *)self labelStackView];
  v28 = [v27 leadingAnchor];
  v29 = [(HUMediaServiceAccountView *)self iconView];
  v30 = [v29 trailingAnchor];
  v31 = [v28 constraintEqualToAnchor:v30 constant:15.0];
  [v3 addObject:v31];

  v32 = MEMORY[0x277CCAAD0];
  v33 = [(HUMediaServiceAccountView *)self currentConstraints];
  [v32 deactivateConstraints:v33];

  [(HUMediaServiceAccountView *)self setCurrentConstraints:v3];
  v34 = MEMORY[0x277CCAAD0];
  v35 = [(HUMediaServiceAccountView *)self currentConstraints];
  [v34 activateConstraints:v35];

  v36.receiver = self;
  v36.super_class = HUMediaServiceAccountView;
  [(HUMediaServiceAccountView *)&v36 updateConstraints];
}

- (void)updateUIWithAnimation:(BOOL)a3
{
  v4 = objc_opt_class();
  v5 = [(HUMediaServiceAccountView *)self item];
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;
    v8 = v5;
    if (v7)
    {
      goto LABEL_8;
    }

    v9 = [MEMORY[0x277CCA890] currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [v9 handleFailureInFunction:v10 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v4, objc_opt_class()}];
  }

  v8 = 0;
LABEL_8:
  v17 = v8;

  v11 = [v17 mediaService];
  v12 = [v11 serviceName];
  v13 = [(HUMediaServiceAccountView *)self serviceNameLabel];
  [v13 setText:v12];

  v14 = [v17 mediaService];
  v15 = [v14 accountName];
  v16 = [(HUMediaServiceAccountView *)self accountHandleLabel];
  [v16 setText:v15];

  [(HUMediaServiceAccountView *)self _loadServiceIconImage];
  [(HUMediaServiceAccountView *)self setNeedsUpdateConstraints];
}

- (void)_loadServiceIconImage
{
  if (![(HUMediaServiceAccountView *)self iconImageLoadingInProgress])
  {
    [(HUMediaServiceAccountView *)self setIconImageLoadingInProgress:1];
    v3 = objc_opt_class();
    v4 = [(HUMediaServiceAccountView *)self item];
    if (v4)
    {
      if (objc_opt_isKindOfClass())
      {
        v5 = v4;
      }

      else
      {
        v5 = 0;
      }

      v6 = v4;
      if (v5)
      {
        goto LABEL_9;
      }

      v7 = [MEMORY[0x277CCA890] currentHandler];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
      [v7 handleFailureInFunction:v8 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v3, objc_opt_class()}];
    }

    v6 = 0;
LABEL_9:

    v9 = [v6 mediaService];
    v10 = [v9 iconImageURL];

    v11 = [MEMORY[0x277D755B8] hf_fetchImageFromURL:v10];
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