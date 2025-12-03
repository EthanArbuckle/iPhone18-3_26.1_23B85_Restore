@interface _UIShareHeaderTableViewCell
- (_UIShareHeaderTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)didAddSubview:(id)subview;
@end

@implementation _UIShareHeaderTableViewCell

- (_UIShareHeaderTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v73.receiver = self;
  v73.super_class = _UIShareHeaderTableViewCell;
  v4 = [(_UIShareHeaderTableViewCell *)&v73 initWithStyle:0 reuseIdentifier:identifier];
  if (v4)
  {
    v5 = objc_alloc_init(UILabel);
    [(_UIShareHeaderTableViewCell *)v4 setSharedItemLabel:v5];

    v6 = [UIFont preferredFontForTextStyle:UIFontTextStyleHeadline];
    [(_UIShareHeaderTableViewCell *)v4 sharedItemLabel];
    v7 = v72 = v4;
    [v7 setFont:v6];

    v8 = objc_alloc_init(UILabel);
    [(_UIShareHeaderTableViewCell *)v72 setSharedWithinLabel:v8];

    v9 = [UIFont preferredFontForTextStyle:UIFontTextStyleFootnote];
    sharedWithinLabel = [(_UIShareHeaderTableViewCell *)v72 sharedWithinLabel];
    [sharedWithinLabel setFont:v9];

    v11 = objc_alloc_init(UILabel);
    [(_UIShareHeaderTableViewCell *)v72 setSharedByModifiedByLabel:v11];

    v12 = [UIFont preferredFontForTextStyle:UIFontTextStyleFootnote];
    sharedByModifiedByLabel = [(_UIShareHeaderTableViewCell *)v72 sharedByModifiedByLabel];
    [sharedByModifiedByLabel setFont:v12];

    v14 = +[UIColor secondaryLabelColor];
    sharedByModifiedByLabel2 = [(_UIShareHeaderTableViewCell *)v72 sharedByModifiedByLabel];
    [sharedByModifiedByLabel2 setTextColor:v14];

    sharedItemLabel = [(_UIShareHeaderTableViewCell *)v72 sharedItemLabel];
    [sharedItemLabel setTranslatesAutoresizingMaskIntoConstraints:0];

    sharedWithinLabel2 = [(_UIShareHeaderTableViewCell *)v72 sharedWithinLabel];
    [sharedWithinLabel2 setTranslatesAutoresizingMaskIntoConstraints:0];

    sharedByModifiedByLabel3 = [(_UIShareHeaderTableViewCell *)v72 sharedByModifiedByLabel];
    [sharedByModifiedByLabel3 setTranslatesAutoresizingMaskIntoConstraints:0];

    v19 = [NSMutableArray arrayWithCapacity:8];
    v20 = objc_alloc_init(UIStackView);
    [v20 setAxis:1];
    [v20 setDistribution:0];
    [v20 setAlignment:1];
    [v20 setTranslatesAutoresizingMaskIntoConstraints:0];
    sharedItemLabel2 = [(_UIShareHeaderTableViewCell *)v72 sharedItemLabel];
    v71 = v20;
    [v20 addArrangedSubview:sharedItemLabel2];

    sharedWithinLabel3 = [(_UIShareHeaderTableViewCell *)v72 sharedWithinLabel];
    [v20 addArrangedSubview:sharedWithinLabel3];

    sharedByModifiedByLabel4 = [(_UIShareHeaderTableViewCell *)v72 sharedByModifiedByLabel];
    [v20 addArrangedSubview:sharedByModifiedByLabel4];

    v24 = objc_alloc_init(UIImageView);
    [v24 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v24 setContentMode:1];
    widthAnchor = [v24 widthAnchor];
    v26 = [widthAnchor constraintEqualToConstant:21.0];
    v76[0] = v26;
    heightAnchor = [v24 heightAnchor];
    v28 = [heightAnchor constraintEqualToConstant:17.0];
    v76[1] = v28;
    v29 = [NSArray arrayWithObjects:v76 count:2];
    v30 = v19;
    v68 = v19;
    [v19 addObjectsFromArray:v29];

    [(_UIShareHeaderTableViewCell *)v72 setSharedItemBadge:v24];
    v31 = objc_alloc_init(UIImageView);
    [v31 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v31 setContentMode:1];
    [v31 addSubview:v24];
    widthAnchor2 = [v31 widthAnchor];
    v64 = [widthAnchor2 constraintEqualToConstant:54.0];
    v75[0] = v64;
    heightAnchor2 = [v31 heightAnchor];
    v32 = [heightAnchor2 constraintEqualToConstant:54.0];
    v75[1] = v32;
    bottomAnchor = [v31 bottomAnchor];
    v34 = v24;
    v70 = v24;
    bottomAnchor2 = [v24 bottomAnchor];
    v36 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v75[2] = v36;
    v69 = v31;
    trailingAnchor = [v31 trailingAnchor];
    trailingAnchor2 = [v34 trailingAnchor];
    v39 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v75[3] = v39;
    v40 = [NSArray arrayWithObjects:v75 count:4];
    [v30 addObjectsFromArray:v40];

    [(_UIShareHeaderTableViewCell *)v72 setSharedItemThumnail:v31];
    v41 = [UIStackView alloc];
    contentView = [(_UIShareHeaderTableViewCell *)v72 contentView];
    [contentView bounds];
    v43 = [v41 initWithFrame:?];

    [v43 setAxis:0];
    [v43 setDistribution:0];
    [v43 setAlignment:3];
    [v43 setSpacing:20.0];
    sharedItemThumnail = [(_UIShareHeaderTableViewCell *)v72 sharedItemThumnail];
    [v43 addArrangedSubview:sharedItemThumnail];

    [v43 addArrangedSubview:v71];
    [v43 setAutoresizingMask:18];
    [v43 setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView2 = [(_UIShareHeaderTableViewCell *)v72 contentView];
    [contentView2 addSubview:v43];

    contentView3 = [(_UIShareHeaderTableViewCell *)v72 contentView];
    layoutMarginsGuide = [contentView3 layoutMarginsGuide];
    leadingAnchor = [layoutMarginsGuide leadingAnchor];
    leadingAnchor2 = [v43 leadingAnchor];
    v61 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v74[0] = v61;
    layoutMarginsGuide2 = [contentView3 layoutMarginsGuide];
    bottomAnchor3 = [layoutMarginsGuide2 bottomAnchor];
    bottomAnchor4 = [v43 bottomAnchor];
    v57 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    v74[1] = v57;
    layoutMarginsGuide3 = [contentView3 layoutMarginsGuide];
    trailingAnchor3 = [layoutMarginsGuide3 trailingAnchor];
    trailingAnchor4 = [v43 trailingAnchor];
    v48 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v74[2] = v48;
    layoutMarginsGuide4 = [contentView3 layoutMarginsGuide];
    topAnchor = [layoutMarginsGuide4 topAnchor];
    topAnchor2 = [v43 topAnchor];
    v52 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v74[3] = v52;
    v53 = [NSArray arrayWithObjects:v74 count:4];
    [v68 addObjectsFromArray:v53];

    v4 = v72;
    [NSLayoutConstraint activateConstraints:v68];
  }

  return v4;
}

- (void)didAddSubview:(id)subview
{
  subviewCopy = subview;
  v10.receiver = self;
  v10.super_class = _UIShareHeaderTableViewCell;
  [(_UIShareHeaderTableViewCell *)&v10 didAddSubview:subviewCopy];
  v5 = NSStringFromClass([subviewCopy classForCoder]);
  if ([v5 isEqualToString:@"_UITableViewCellSeparatorView"])
  {
    [subviewCopy frame];
    v7 = v6;
    [(_UIShareHeaderTableViewCell *)self frame];
    v9 = v8;

    if (v7 == v9)
    {
      [subviewCopy setHidden:1];
    }
  }

  else
  {
  }
}

@end