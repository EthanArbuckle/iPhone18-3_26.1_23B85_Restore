@interface HKTitledContactBuddyHeaderView
- (HKTitledContactBuddyHeaderView)initWithTopInset:(double)inset parentViewController:(id)controller;
- (void)_updateForCurrentSizeCategory;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation HKTitledContactBuddyHeaderView

- (HKTitledContactBuddyHeaderView)initWithTopInset:(double)inset parentViewController:(id)controller
{
  v51[1] = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  v41.receiver = self;
  v41.super_class = HKTitledContactBuddyHeaderView;
  v7 = [(HKTitledBuddyHeaderView *)&v41 initWithTopInset:0 linkButtonTitle:inset];
  v8 = v7;
  if (v7)
  {
    [(HKTitledContactBuddyHeaderView *)v7 setTranslatesAutoresizingMaskIntoConstraints:1];
    v9 = objc_alloc_init(MEMORY[0x1E698BB40]);
    profilePictureForAccountOwnerWithoutMonogramFallback = [v9 profilePictureForAccountOwnerWithoutMonogramFallback];
    v11 = [profilePictureForAccountOwnerWithoutMonogramFallback hk_resizedInterfaceImageWithSize:{82.0, 82.0}];
    if (!v11)
    {
      _applicationKeyWindow = [MEMORY[0x1E69DD2E8] _applicationKeyWindow];
      effectiveUserInterfaceLayoutDirection = [_applicationKeyWindow effectiveUserInterfaceLayoutDirection];

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
      mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
      [mainScreen scale];
      v21 = [v17 scopeWithPointSize:effectiveUserInterfaceLayoutDirection == 1 scale:0 rightToLeft:82.0 style:{82.0, v20}];

      v22 = objc_alloc_init(MEMORY[0x1E695CD58]);
      v51[0] = v22;
      v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:1];
      v11 = [v16 avatarImageForContacts:v23 scope:v21];
    }

    v24 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v11];
    [v24 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(HKTitledContactBuddyHeaderView *)v8 addSubview:v24];
    [(HKTitledBuddyHeaderView *)v8 deactivateDefaultTitleLabelBaselineConstraint];
    topAnchor = [v24 topAnchor];
    topAnchor2 = [(HKTitledContactBuddyHeaderView *)v8 topAnchor];
    v27 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:12.0];
    [v27 setActive:1];

    centerXAnchor = [v24 centerXAnchor];
    centerXAnchor2 = [(HKTitledContactBuddyHeaderView *)v8 centerXAnchor];
    v30 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    [v30 setActive:1];

    widthAnchor = [v24 widthAnchor];
    v32 = [widthAnchor constraintEqualToConstant:82.0];
    [v32 setActive:1];

    heightAnchor = [v24 heightAnchor];
    v34 = [heightAnchor constraintEqualToConstant:82.0];
    [v34 setActive:1];

    titleLabel = [(HKTitledBuddyHeaderView *)v8 titleLabel];
    firstBaselineAnchor = [titleLabel firstBaselineAnchor];
    bottomAnchor = [v24 bottomAnchor];
    v38 = [firstBaselineAnchor constraintEqualToAnchor:bottomAnchor constant:0.0];
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
  useSolariumDesign = [(HKTitledBuddyHeaderView *)self useSolariumDesign];
  v5 = MEMORY[0x1E69DDDC0];
  if (!useSolariumDesign)
  {
    v5 = MEMORY[0x1E69DDDB8];
  }

  v6 = [v3 preferredFontForTextStyle:*v5];
  [v6 _scaledValueForValue:44.0];
  [(NSLayoutConstraint *)self->_titleBaselineConstraint setConstant:?];
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  if (changeCopy)
  {
    v9 = changeCopy;
    traitCollection = [(HKTitledContactBuddyHeaderView *)self traitCollection];
    preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
    preferredContentSizeCategory2 = [v9 preferredContentSizeCategory];
    v8 = [preferredContentSizeCategory isEqualToString:preferredContentSizeCategory2];

    changeCopy = v9;
    if ((v8 & 1) == 0)
    {
      [(HKTitledContactBuddyHeaderView *)self _updateForCurrentSizeCategory];
      changeCopy = v9;
    }
  }
}

@end