@interface HKTitledContactBuddyHeaderView
- (HKTitledContactBuddyHeaderView)initWithTopInset:(double)a3 parentViewController:(id)a4;
- (void)_updateForCurrentSizeCategory;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation HKTitledContactBuddyHeaderView

- (HKTitledContactBuddyHeaderView)initWithTopInset:(double)a3 parentViewController:(id)a4
{
  v51[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v41.receiver = self;
  v41.super_class = HKTitledContactBuddyHeaderView;
  v7 = [(HKTitledBuddyHeaderView *)&v41 initWithTopInset:0 linkButtonTitle:a3];
  v8 = v7;
  if (v7)
  {
    [(HKTitledContactBuddyHeaderView *)v7 setTranslatesAutoresizingMaskIntoConstraints:1];
    v9 = objc_alloc_init(MEMORY[0x1E698BB40]);
    v10 = [v9 profilePictureForAccountOwnerWithoutMonogramFallback];
    v11 = [v10 hk_resizedInterfaceImageWithSize:{82.0, 82.0}];
    if (!v11)
    {
      v12 = [MEMORY[0x1E69DD2E8] _applicationKeyWindow];
      v13 = [v12 effectiveUserInterfaceLayoutDirection];

      v47 = 0;
      v48 = &v47;
      v49 = 0x2050000000;
      v14 = getCNAvatarImageRendererClass_softClass;
      v50 = getCNAvatarImageRendererClass_softClass;
      if (!getCNAvatarImageRendererClass_softClass)
      {
        v42 = MEMORY[0x1E69E9820];
        v43 = 3221225472;
        v44 = __getCNAvatarImageRendererClass_block_invoke;
        v45 = &unk_1E81B5C18;
        v46 = &v47;
        __getCNAvatarImageRendererClass_block_invoke(&v42);
        v14 = v48[3];
      }

      v15 = v14;
      _Block_object_dispose(&v47, 8);
      v16 = objc_alloc_init(v14);
      v47 = 0;
      v48 = &v47;
      v49 = 0x2050000000;
      v17 = getCNAvatarImageRenderingScopeClass_softClass;
      v50 = getCNAvatarImageRenderingScopeClass_softClass;
      if (!getCNAvatarImageRenderingScopeClass_softClass)
      {
        v42 = MEMORY[0x1E69E9820];
        v43 = 3221225472;
        v44 = __getCNAvatarImageRenderingScopeClass_block_invoke;
        v45 = &unk_1E81B5C18;
        v46 = &v47;
        __getCNAvatarImageRenderingScopeClass_block_invoke(&v42);
        v17 = v48[3];
      }

      v18 = v17;
      _Block_object_dispose(&v47, 8);
      v19 = [MEMORY[0x1E69DCEB0] mainScreen];
      [v19 scale];
      v21 = [v17 scopeWithPointSize:v13 == 1 scale:0 rightToLeft:82.0 style:{82.0, v20}];

      v22 = objc_alloc_init(MEMORY[0x1E695CD58]);
      v51[0] = v22;
      v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:1];
      v11 = [v16 avatarImageForContacts:v23 scope:v21];
    }

    v24 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v11];
    [v24 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(HKTitledContactBuddyHeaderView *)v8 addSubview:v24];
    [(HKTitledBuddyHeaderView *)v8 deactivateDefaultTitleLabelBaselineConstraint];
    v25 = [v24 topAnchor];
    v26 = [(HKTitledContactBuddyHeaderView *)v8 topAnchor];
    v27 = [v25 constraintEqualToAnchor:v26 constant:12.0];
    [v27 setActive:1];

    v28 = [v24 centerXAnchor];
    v29 = [(HKTitledContactBuddyHeaderView *)v8 centerXAnchor];
    v30 = [v28 constraintEqualToAnchor:v29];
    [v30 setActive:1];

    v31 = [v24 widthAnchor];
    v32 = [v31 constraintEqualToConstant:82.0];
    [v32 setActive:1];

    v33 = [v24 heightAnchor];
    v34 = [v33 constraintEqualToConstant:82.0];
    [v34 setActive:1];

    v35 = [(HKTitledBuddyHeaderView *)v8 titleLabel];
    v36 = [v35 firstBaselineAnchor];
    v37 = [v24 bottomAnchor];
    v38 = [v36 constraintEqualToAnchor:v37 constant:0.0];
    titleBaselineConstraint = v8->_titleBaselineConstraint;
    v8->_titleBaselineConstraint = v38;

    [(NSLayoutConstraint *)v8->_titleBaselineConstraint setActive:1];
    [(HKTitledContactBuddyHeaderView *)v8 _updateForCurrentSizeCategory];
  }

  return v8;
}

- (void)_updateForCurrentSizeCategory
{
  v7.receiver = self;
  v7.super_class = HKTitledContactBuddyHeaderView;
  [(HKTitledBuddyHeaderView *)&v7 _updateForCurrentSizeCategory];
  v3 = MEMORY[0x1E69DB878];
  v4 = [(HKTitledBuddyHeaderView *)self useSolariumDesign];
  v5 = MEMORY[0x1E69DDDC0];
  if (!v4)
  {
    v5 = MEMORY[0x1E69DDDB8];
  }

  v6 = [v3 preferredFontForTextStyle:*v5];
  [v6 _scaledValueForValue:44.0];
  [(NSLayoutConstraint *)self->_titleBaselineConstraint setConstant:?];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v9 = v4;
    v5 = [(HKTitledContactBuddyHeaderView *)self traitCollection];
    v6 = [v5 preferredContentSizeCategory];
    v7 = [v9 preferredContentSizeCategory];
    v8 = [v6 isEqualToString:v7];

    v4 = v9;
    if ((v8 & 1) == 0)
    {
      [(HKTitledContactBuddyHeaderView *)self _updateForCurrentSizeCategory];
      v4 = v9;
    }
  }
}

@end