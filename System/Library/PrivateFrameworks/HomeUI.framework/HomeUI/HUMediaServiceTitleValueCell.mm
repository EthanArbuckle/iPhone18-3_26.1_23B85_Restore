@interface HUMediaServiceTitleValueCell
- (HUMediaServiceTitleValueCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)_loadServiceIconImage;
- (void)_updateContentMetrics;
- (void)updateConstraints;
- (void)updateUIWithAnimation:(BOOL)animation;
@end

@implementation HUMediaServiceTitleValueCell

- (HUMediaServiceTitleValueCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v12.receiver = self;
  v12.super_class = HUMediaServiceTitleValueCell;
  v4 = [(HUTitleValueCell *)&v12 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = objc_opt_new();
    serviceIconView = v4->_serviceIconView;
    v4->_serviceIconView = v5;

    [(UIImageView *)v4->_serviceIconView setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v7) = 1148846080;
    [(UIImageView *)v4->_serviceIconView setContentHuggingPriority:1 forAxis:v7];
    LODWORD(v8) = 1148846080;
    [(UIImageView *)v4->_serviceIconView setContentHuggingPriority:0 forAxis:v8];
    layer = [(UIImageView *)v4->_serviceIconView layer];
    [layer setCornerRadius:5.0];

    [(UIImageView *)v4->_serviceIconView setClipsToBounds:1];
    iconView = [(HUIconCell *)v4 iconView];
    [iconView addSubview:v4->_serviceIconView];
  }

  return v4;
}

- (void)updateConstraints
{
  v32[3] = *MEMORY[0x277D85DE8];
  contentMetrics = [(HUIconCell *)self contentMetrics];
  [contentMetrics iconSize];
  v5 = v4;

  if (v5 != 32.0)
  {
    [(HUMediaServiceTitleValueCell *)self _updateContentMetrics];
  }

  constraints = [(HUMediaServiceTitleValueCell *)self constraints];

  if (constraints)
  {
    v7 = MEMORY[0x277CCAAD0];
    constraints2 = [(HUMediaServiceTitleValueCell *)self constraints];
    [v7 deactivateConstraints:constraints2];
  }

  cellConfiguration = [MEMORY[0x277D756E0] cellConfiguration];
  traitCollection = [(HUMediaServiceTitleValueCell *)self traitCollection];
  [cellConfiguration _minimumHeightForTraitCollection:traitCollection];
  v12 = v11;

  contentView = [(HUMediaServiceTitleValueCell *)self contentView];
  heightAnchor = [contentView heightAnchor];
  v15 = [heightAnchor constraintGreaterThanOrEqualToConstant:v12];

  LODWORD(v16) = 1148829696;
  v30 = v15;
  [v15 setPriority:v16];
  v32[0] = v15;
  serviceIconView = [(HUMediaServiceTitleValueCell *)self serviceIconView];
  heightAnchor2 = [serviceIconView heightAnchor];
  iconView = [(HUIconCell *)self iconView];
  heightAnchor3 = [iconView heightAnchor];
  v19 = [heightAnchor2 constraintEqualToAnchor:heightAnchor3];
  v32[1] = v19;
  serviceIconView2 = [(HUMediaServiceTitleValueCell *)self serviceIconView];
  widthAnchor = [serviceIconView2 widthAnchor];
  iconView2 = [(HUIconCell *)self iconView];
  widthAnchor2 = [iconView2 widthAnchor];
  v24 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  v32[2] = v24;
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:3];
  [(HUMediaServiceTitleValueCell *)self setConstraints:v25];

  v26 = MEMORY[0x277CCAAD0];
  constraints3 = [(HUMediaServiceTitleValueCell *)self constraints];
  [v26 activateConstraints:constraints3];

  v31.receiver = self;
  v31.super_class = HUMediaServiceTitleValueCell;
  [(HUTitleValueCell *)&v31 updateConstraints];
}

- (void)updateUIWithAnimation:(BOOL)animation
{
  v4.receiver = self;
  v4.super_class = HUMediaServiceTitleValueCell;
  [(HUTitleValueCell *)&v4 updateUIWithAnimation:animation];
  [(HUMediaServiceTitleValueCell *)self _loadServiceIconImage];
}

- (void)_loadServiceIconImage
{
  if (![(HUMediaServiceTitleValueCell *)self iconImageLoadingInProgress])
  {
    [(HUMediaServiceTitleValueCell *)self setIconImageLoadingInProgress:1];
    v3 = objc_opt_class();
    item = [(HUIconCell *)self item];
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
    v13[2] = __53__HUMediaServiceTitleValueCell__loadServiceIconImage__block_invoke;
    v13[3] = &unk_277DBD728;
    v13[4] = self;
    v12 = [v11 addCompletionBlock:v13];
  }
}

void __53__HUMediaServiceTitleValueCell__loadServiceIconImage__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [*(a1 + 32) serviceIconView];
    [v7 setImage:v5];

    [*(a1 + 32) setIconImageLoadingInProgress:0];
  }

  else
  {
    v8 = HFLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = v6;
      _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "Failed to load media service icon with error: %@", buf, 0xCu);
    }

    v9 = [MEMORY[0x277D759A0] mainScreen];
    [v9 scale];
    v11 = v10;

    v12 = [MEMORY[0x277D1B1A8] genericApplicationIcon];
    v13 = [objc_alloc(MEMORY[0x277D1B1C8]) initWithSize:64.0 scale:{64.0, v11}];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __53__HUMediaServiceTitleValueCell__loadServiceIconImage__block_invoke_13;
    v14[3] = &unk_277DBD860;
    *&v14[5] = v11;
    v14[4] = *(a1 + 32);
    [v12 getImageForImageDescriptor:v13 completion:v14];
  }
}

void __53__HUMediaServiceTitleValueCell__loadServiceIconImage__block_invoke_13(uint64_t a1, void *a2)
{
  v4 = [MEMORY[0x277D755B8] imageWithCGImage:objc_msgSend(a2 scale:"CGImage") orientation:{0, *(a1 + 40)}];
  v3 = [*(a1 + 32) serviceIconView];
  [v3 setImage:v4];

  [*(a1 + 32) setIconImageLoadingInProgress:0];
}

- (void)_updateContentMetrics
{
  v3 = +[HUIconCellContentMetrics defaultMetrics];
  [v3 setIconSize:{32.0, 32.0}];
  [(HUIconCell *)self setContentMetrics:v3];
}

@end