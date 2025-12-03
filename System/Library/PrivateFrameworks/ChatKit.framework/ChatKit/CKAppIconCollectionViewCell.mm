@interface CKAppIconCollectionViewCell
- (id)appIconForBundleID:(id)d;
- (void)configureWithAppName:(int64_t)name;
- (void)prepareForReuse;
- (void)updateConstraints;
@end

@implementation CKAppIconCollectionViewCell

- (void)configureWithAppName:(int64_t)name
{
  [(CKAppIconCollectionViewCell *)self setAppName:?];
  if (name > 5)
  {
    v23 = 0;
  }

  else
  {
    v23 = [(CKAppIconCollectionViewCell *)self appIconForBundleID:off_1E72F6990[name]];
  }

  v5 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v23];
  [(CKAppIconCollectionViewCell *)self setAppIconView:v5];

  appIconView = [(CKAppIconCollectionViewCell *)self appIconView];
  [appIconView setTranslatesAutoresizingMaskIntoConstraints:0];

  appIconView2 = [(CKAppIconCollectionViewCell *)self appIconView];
  layer = [appIconView2 layer];
  blackColor = [MEMORY[0x1E69DC888] blackColor];
  [layer setShadowColor:{objc_msgSend(blackColor, "CGColor")}];

  appIconView3 = [(CKAppIconCollectionViewCell *)self appIconView];
  layer2 = [appIconView3 layer];
  LODWORD(v12) = 1050253722;
  [layer2 setShadowOpacity:v12];

  appIconView4 = [(CKAppIconCollectionViewCell *)self appIconView];
  layer3 = [appIconView4 layer];
  [layer3 setShadowRadius:4.0];

  appIconView5 = [(CKAppIconCollectionViewCell *)self appIconView];
  layer4 = [appIconView5 layer];
  [layer4 setShadowOffset:{0.0, 1.0}];

  contentView = [(CKAppIconCollectionViewCell *)self contentView];
  appIconView6 = [(CKAppIconCollectionViewCell *)self appIconView];
  [contentView addSubview:appIconView6];

  v19 = [CKAppIconView alloc];
  appName = [(CKAppIconCollectionViewCell *)self appName];
  v21 = [(CKAppIconView *)v19 initWithFrame:appName withAppName:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [(CKAppIconView *)v21 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(CKAppIconView *)v21 setSemanticContentAttribute:3];
  [(CKAppIconCollectionViewCell *)self setAppContentView:v21];
  contentView2 = [(CKAppIconCollectionViewCell *)self contentView];
  [contentView2 addSubview:v21];

  [(CKAppIconCollectionViewCell *)self bringSubviewToFront:v21];
  [(CKAppIconCollectionViewCell *)self setTranslatesAutoresizingMaskIntoConstraints:0];
}

- (void)updateConstraints
{
  v75[6] = *MEMORY[0x1E69E9840];
  constraints = [(CKAppIconCollectionViewCell *)self constraints];
  v4 = [constraints count];

  if (v4)
  {
    v5 = MEMORY[0x1E696ACD8];
    constraints2 = [(CKAppIconCollectionViewCell *)self constraints];
    [v5 deactivateConstraints:constraints2];
  }

  array = [MEMORY[0x1E695DF70] array];
  [(CKAppIconCollectionViewCell *)self setConstraints:array];

  constraints3 = [(CKAppIconCollectionViewCell *)self constraints];
  appIconView = [(CKAppIconCollectionViewCell *)self appIconView];
  widthAnchor = [appIconView widthAnchor];
  contentView = [(CKAppIconCollectionViewCell *)self contentView];
  widthAnchor2 = [contentView widthAnchor];
  v56 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  v75[0] = v56;
  appIconView2 = [(CKAppIconCollectionViewCell *)self appIconView];
  heightAnchor = [appIconView2 heightAnchor];
  contentView2 = [(CKAppIconCollectionViewCell *)self contentView];
  heightAnchor2 = [contentView2 heightAnchor];
  v51 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
  v75[1] = v51;
  appIconView3 = [(CKAppIconCollectionViewCell *)self appIconView];
  centerXAnchor = [appIconView3 centerXAnchor];
  contentView3 = [(CKAppIconCollectionViewCell *)self contentView];
  centerXAnchor2 = [contentView3 centerXAnchor];
  v46 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v75[2] = v46;
  appIconView4 = [(CKAppIconCollectionViewCell *)self appIconView];
  centerYAnchor = [appIconView4 centerYAnchor];
  contentView4 = [(CKAppIconCollectionViewCell *)self contentView];
  centerYAnchor2 = [contentView4 centerYAnchor];
  v41 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v75[3] = v41;
  appContentView = [(CKAppIconCollectionViewCell *)self appContentView];
  widthAnchor3 = [appContentView widthAnchor];
  contentView5 = [(CKAppIconCollectionViewCell *)self contentView];
  widthAnchor4 = [contentView5 widthAnchor];
  v11 = [widthAnchor3 constraintEqualToAnchor:widthAnchor4];
  v75[4] = v11;
  appContentView2 = [(CKAppIconCollectionViewCell *)self appContentView];
  heightAnchor3 = [appContentView2 heightAnchor];
  contentView6 = [(CKAppIconCollectionViewCell *)self contentView];
  [contentView6 heightAnchor];
  v15 = v65 = self;
  v16 = [heightAnchor3 constraintEqualToAnchor:v15];
  v75[5] = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v75 count:6];
  [constraints3 addObjectsFromArray:v17];

  v18 = v65;
  appName = [(CKAppIconCollectionViewCell *)v65 appName];
  if (appName > 2)
  {
    switch(appName)
    {
      case 3:
        constraints4 = [(CKAppIconCollectionViewCell *)v65 constraints];
        appContentView3 = [(CKAppIconCollectionViewCell *)v65 appContentView];
        contactItemView = [appContentView3 contactItemView];
        leadingAnchor = [contactItemView leadingAnchor];
        appIconView5 = [(CKAppIconCollectionViewCell *)v65 appIconView];
        leadingAnchor2 = [appIconView5 leadingAnchor];
        v60 = leadingAnchor;
        v22 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
        v71[0] = v22;
        appContentView4 = [(CKAppIconCollectionViewCell *)v65 appContentView];
        contactItemView2 = [appContentView4 contactItemView];
        topAnchor = [contactItemView2 topAnchor];
        appIconView6 = [(CKAppIconCollectionViewCell *)v65 appIconView];
        topAnchor2 = [appIconView6 topAnchor];
        v28 = [topAnchor constraintEqualToAnchor:topAnchor2];
        v71[1] = v28;
        v29 = v71;
        break;
      case 4:
        constraints4 = [(CKAppIconCollectionViewCell *)v65 constraints];
        appContentView3 = [(CKAppIconCollectionViewCell *)v65 appContentView];
        contactItemView = [appContentView3 contactItemView];
        leadingAnchor3 = [contactItemView leadingAnchor];
        appIconView5 = [(CKAppIconCollectionViewCell *)v65 appIconView];
        leadingAnchor2 = [appIconView5 leadingAnchor];
        v60 = leadingAnchor3;
        v22 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor2];
        v70[0] = v22;
        appContentView4 = [(CKAppIconCollectionViewCell *)v65 appContentView];
        contactItemView2 = [appContentView4 contactItemView];
        topAnchor = [contactItemView2 bottomAnchor];
        appIconView6 = [(CKAppIconCollectionViewCell *)v65 appIconView];
        topAnchor2 = [appIconView6 bottomAnchor];
        v28 = [topAnchor constraintEqualToAnchor:topAnchor2];
        v70[1] = v28;
        v29 = v70;
        break;
      case 5:
        constraints4 = [(CKAppIconCollectionViewCell *)v65 constraints];
        appContentView3 = [(CKAppIconCollectionViewCell *)v65 appContentView];
        contactItemView = [appContentView3 contactItemView];
        leadingAnchor4 = [contactItemView leadingAnchor];
        appIconView5 = [(CKAppIconCollectionViewCell *)v65 appIconView];
        leadingAnchor2 = [appIconView5 leadingAnchor];
        v60 = leadingAnchor4;
        v22 = [leadingAnchor4 constraintEqualToAnchor:leadingAnchor2];
        v69[0] = v22;
        appContentView4 = [(CKAppIconCollectionViewCell *)v65 appContentView];
        contactItemView2 = [appContentView4 contactItemView];
        topAnchor = [contactItemView2 topAnchor];
        appIconView6 = [(CKAppIconCollectionViewCell *)v65 appIconView];
        topAnchor2 = [appIconView6 centerYAnchor];
        v28 = [topAnchor constraintEqualToAnchor:topAnchor2];
        v69[1] = v28;
        v29 = v69;
        break;
      default:
        goto LABEL_17;
    }
  }

  else if (appName)
  {
    if (appName == 1)
    {
      constraints4 = [(CKAppIconCollectionViewCell *)v65 constraints];
      appContentView3 = [(CKAppIconCollectionViewCell *)v65 appContentView];
      contactItemView = [appContentView3 contactItemView];
      centerXAnchor3 = [contactItemView centerXAnchor];
      appIconView5 = [(CKAppIconCollectionViewCell *)v65 appIconView];
      leadingAnchor2 = [appIconView5 trailingAnchor];
      v60 = centerXAnchor3;
      v22 = [centerXAnchor3 constraintEqualToAnchor:leadingAnchor2];
      v73[0] = v22;
      appContentView4 = [(CKAppIconCollectionViewCell *)v65 appContentView];
      contactItemView2 = [appContentView4 contactItemView];
      topAnchor = [contactItemView2 centerYAnchor];
      appIconView6 = [(CKAppIconCollectionViewCell *)v65 appIconView];
      topAnchor2 = [appIconView6 centerYAnchor];
      v28 = [topAnchor constraintEqualToAnchor:topAnchor2];
      v73[1] = v28;
      v29 = v73;
    }

    else
    {
      if (appName != 2)
      {
        goto LABEL_17;
      }

      constraints4 = [(CKAppIconCollectionViewCell *)v65 constraints];
      appContentView3 = [(CKAppIconCollectionViewCell *)v65 appContentView];
      contactItemView = [appContentView3 contactItemView];
      trailingAnchor = [contactItemView trailingAnchor];
      appIconView5 = [(CKAppIconCollectionViewCell *)v65 appIconView];
      leadingAnchor2 = [appIconView5 trailingAnchor];
      v60 = trailingAnchor;
      v22 = [trailingAnchor constraintEqualToAnchor:leadingAnchor2];
      v72[0] = v22;
      appContentView4 = [(CKAppIconCollectionViewCell *)v65 appContentView];
      contactItemView2 = [appContentView4 contactItemView];
      topAnchor = [contactItemView2 centerYAnchor];
      appIconView6 = [(CKAppIconCollectionViewCell *)v65 appIconView];
      topAnchor2 = [appIconView6 topAnchor];
      v28 = [topAnchor constraintEqualToAnchor:topAnchor2];
      v72[1] = v28;
      v29 = v72;
    }
  }

  else
  {
    constraints4 = [(CKAppIconCollectionViewCell *)v65 constraints];
    appContentView3 = [(CKAppIconCollectionViewCell *)v65 appContentView];
    contactItemView = [appContentView3 contactItemView];
    centerXAnchor4 = [contactItemView centerXAnchor];
    appIconView5 = [(CKAppIconCollectionViewCell *)v65 appIconView];
    leadingAnchor2 = [appIconView5 centerXAnchor];
    v60 = centerXAnchor4;
    v22 = [centerXAnchor4 constraintEqualToAnchor:leadingAnchor2];
    v74[0] = v22;
    appContentView4 = [(CKAppIconCollectionViewCell *)v65 appContentView];
    contactItemView2 = [appContentView4 contactItemView];
    topAnchor = [contactItemView2 centerYAnchor];
    appIconView6 = [(CKAppIconCollectionViewCell *)v65 appIconView];
    topAnchor2 = [appIconView6 topAnchor];
    v28 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v74[1] = v28;
    v29 = v74;
  }

  v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:2];
  [constraints4 addObjectsFromArray:v35];

  v18 = v65;
LABEL_17:
  constraints5 = [(CKAppIconCollectionViewCell *)v18 constraints];
  v37 = [constraints5 count];

  if (v37)
  {
    v38 = MEMORY[0x1E696ACD8];
    constraints6 = [(CKAppIconCollectionViewCell *)v18 constraints];
    [v38 activateConstraints:constraints6];
  }

  v68.receiver = v18;
  v68.super_class = CKAppIconCollectionViewCell;
  [(CKAppIconCollectionViewCell *)&v68 updateConstraints];
}

- (id)appIconForBundleID:(id)d
{
  v3 = MEMORY[0x1E69DCEB0];
  dCopy = d;
  mainScreen = [v3 mainScreen];
  [mainScreen scale];
  v7 = v6;

  v8 = [objc_alloc(MEMORY[0x1E69A8A00]) initWithBundleIdentifier:dCopy];
  v9 = [objc_alloc(MEMORY[0x1E69A8A30]) initWithSize:60.0 scale:{60.0, v7}];
  v10 = [v8 prepareImageForDescriptor:v9];
  v11 = [v8 imageForDescriptor:v9];
  v12 = [MEMORY[0x1E69DCAB8] imageWithCGImage:objc_msgSend(v11 scale:"CGImage") orientation:{0, v7}];

  return v12;
}

- (void)prepareForReuse
{
  v9.receiver = self;
  v9.super_class = CKAppIconCollectionViewCell;
  [(CKAppIconCollectionViewCell *)&v9 prepareForReuse];
  constraints = [(CKAppIconCollectionViewCell *)self constraints];
  v4 = [constraints count];

  if (v4)
  {
    v5 = MEMORY[0x1E696ACD8];
    constraints2 = [(CKAppIconCollectionViewCell *)self constraints];
    [v5 deactivateConstraints:constraints2];
  }

  appIconView = [(CKAppIconCollectionViewCell *)self appIconView];
  [appIconView removeFromSuperview];

  appContentView = [(CKAppIconCollectionViewCell *)self appContentView];
  [appContentView removeFromSuperview];

  [(CKAppIconCollectionViewCell *)self setAppIconView:0];
  [(CKAppIconCollectionViewCell *)self setAppContentView:0];
  [(CKAppIconCollectionViewCell *)self setAppName:-1];
}

@end