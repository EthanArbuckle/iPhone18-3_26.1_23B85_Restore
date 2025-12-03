@interface SFSectionDisclosureButton
- (CGSize)sizeIncludingLabels;
- (SFSectionDisclosureButton)initWithFrame:(CGRect)frame expanded:(BOOL)expanded modally:(BOOL)modally;
- (void)buttonShapesEnabledDidChange;
- (void)dealloc;
- (void)setExpanded:(BOOL)expanded;
- (void)setLabelHidden:(BOOL)hidden;
- (void)toggleExpanded;
- (void)updateExpanded;
@end

@implementation SFSectionDisclosureButton

- (SFSectionDisclosureButton)initWithFrame:(CGRect)frame expanded:(BOOL)expanded modally:(BOOL)modally
{
  v76[15] = *MEMORY[0x1E69E9840];
  v75.receiver = self;
  v75.super_class = SFSectionDisclosureButton;
  v7 = [(SFSectionDisclosureButton *)&v75 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v8 = v7;
  if (v7)
  {
    v7->_expanded = expanded;
    v7->_expandsModally = modally;
    v9 = makeLabel();
    labelWhenExpanded = v8->_labelWhenExpanded;
    v8->_labelWhenExpanded = v9;

    leadingAnchor = [(UILabel *)v8->_labelWhenExpanded leadingAnchor];
    leadingAnchor2 = [(SFSectionDisclosureButton *)v8 leadingAnchor];
    v13 = [leadingAnchor constraintGreaterThanOrEqualToAnchor:leadingAnchor2];
    labelWhenExpandedLeadingConstraint = v8->_labelWhenExpandedLeadingConstraint;
    v8->_labelWhenExpandedLeadingConstraint = v13;

    [(SFSectionDisclosureButton *)v8 addSubview:v8->_labelWhenExpanded];
    v15 = makeLabel();
    labelWhenCollapsed = v8->_labelWhenCollapsed;
    v8->_labelWhenCollapsed = v15;

    leadingAnchor3 = [(UILabel *)v8->_labelWhenCollapsed leadingAnchor];
    leadingAnchor4 = [(SFSectionDisclosureButton *)v8 leadingAnchor];
    v19 = [leadingAnchor3 constraintGreaterThanOrEqualToAnchor:leadingAnchor4];
    labelWhenCollapsedLeadingConstraint = v8->_labelWhenCollapsedLeadingConstraint;
    v8->_labelWhenCollapsedLeadingConstraint = v19;

    [(SFSectionDisclosureButton *)v8 addSubview:v8->_labelWhenCollapsed];
    v21 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:0];
    imageView = v8->_imageView;
    v8->_imageView = v21;

    [(UIImageView *)v8->_imageView setTranslatesAutoresizingMaskIntoConstraints:0];
    v23 = [MEMORY[0x1E69DCAD8] configurationWithTextStyle:*MEMORY[0x1E69DDD00] scale:1];
    [(UIImageView *)v8->_imageView setPreferredSymbolConfiguration:v23];

    [(SFSectionDisclosureButton *)v8 addSubview:v8->_imageView];
    v57 = MEMORY[0x1E696ACD8];
    centerYAnchor = [(UILabel *)v8->_labelWhenExpanded centerYAnchor];
    centerYAnchor2 = [(SFSectionDisclosureButton *)v8 centerYAnchor];
    v72 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v76[0] = v72;
    centerYAnchor3 = [(UILabel *)v8->_labelWhenCollapsed centerYAnchor];
    centerYAnchor4 = [(SFSectionDisclosureButton *)v8 centerYAnchor];
    v69 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
    v76[1] = v69;
    centerYAnchor5 = [(UIImageView *)v8->_imageView centerYAnchor];
    centerYAnchor6 = [(SFSectionDisclosureButton *)v8 centerYAnchor];
    v66 = [centerYAnchor5 constraintEqualToAnchor:centerYAnchor6];
    v76[2] = v66;
    heightAnchor = [(UILabel *)v8->_labelWhenExpanded heightAnchor];
    heightAnchor2 = [(SFSectionDisclosureButton *)v8 heightAnchor];
    v63 = [heightAnchor constraintLessThanOrEqualToAnchor:heightAnchor2];
    v76[3] = v63;
    heightAnchor3 = [(UILabel *)v8->_labelWhenCollapsed heightAnchor];
    heightAnchor4 = [(SFSectionDisclosureButton *)v8 heightAnchor];
    v60 = [heightAnchor3 constraintLessThanOrEqualToAnchor:heightAnchor4];
    v76[4] = v60;
    heightAnchor5 = [(UIImageView *)v8->_imageView heightAnchor];
    heightAnchor6 = [(SFSectionDisclosureButton *)v8 heightAnchor];
    v56 = [heightAnchor5 constraintLessThanOrEqualToAnchor:heightAnchor6];
    v76[5] = v56;
    heightAnchor7 = [(SFSectionDisclosureButton *)v8 heightAnchor];
    v54 = [heightAnchor7 constraintEqualToConstant:0.0];
    LODWORD(v24) = 1132068864;
    v53 = [v54 sf_withPriority:v24];
    v76[6] = v53;
    leadingAnchor5 = [(UILabel *)v8->_labelWhenExpanded leadingAnchor];
    leadingAnchor6 = [(SFSectionDisclosureButton *)v8 leadingAnchor];
    v50 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
    LODWORD(v25) = 1131413504;
    v49 = [v50 sf_withPriority:v25];
    v76[7] = v49;
    v76[8] = v8->_labelWhenExpandedLeadingConstraint;
    leadingAnchor7 = [(UILabel *)v8->_labelWhenCollapsed leadingAnchor];
    leadingAnchor8 = [(SFSectionDisclosureButton *)v8 leadingAnchor];
    v46 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8];
    LODWORD(v26) = 1131413504;
    v45 = [v46 sf_withPriority:v26];
    v76[9] = v45;
    v76[10] = v8->_labelWhenCollapsedLeadingConstraint;
    leadingAnchor9 = [(UIImageView *)v8->_imageView leadingAnchor];
    trailingAnchor = [(UILabel *)v8->_labelWhenExpanded trailingAnchor];
    v42 = [leadingAnchor9 constraintEqualToSystemSpacingAfterAnchor:trailingAnchor multiplier:0.75];
    v76[11] = v42;
    leadingAnchor10 = [(UIImageView *)v8->_imageView leadingAnchor];
    trailingAnchor2 = [(UILabel *)v8->_labelWhenCollapsed trailingAnchor];
    v27 = [leadingAnchor10 constraintEqualToSystemSpacingAfterAnchor:trailingAnchor2 multiplier:0.75];
    v76[12] = v27;
    leadingAnchor11 = [(UIImageView *)v8->_imageView leadingAnchor];
    leadingAnchor12 = [(SFSectionDisclosureButton *)v8 leadingAnchor];
    v30 = [leadingAnchor11 constraintEqualToAnchor:leadingAnchor12];
    LODWORD(v31) = 1132068864;
    v32 = [v30 sf_withPriority:v31];
    v76[13] = v32;
    trailingAnchor3 = [(UIImageView *)v8->_imageView trailingAnchor];
    trailingAnchor4 = [(SFSectionDisclosureButton *)v8 trailingAnchor];
    v35 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v76[14] = v35;
    v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v76 count:15];
    [v57 activateConstraints:v36];

    [(SFSectionDisclosureButton *)v8 buttonShapesEnabledDidChange];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v8 selector:sel_buttonShapesEnabledDidChange name:*MEMORY[0x1E69DD8A8] object:0];

    [(SFSectionDisclosureButton *)v8 updateExpanded];
    [(SFSectionDisclosureButton *)v8 addTarget:v8 action:sel_toggleExpanded forControlEvents:0x2000];
    v38 = v8;
  }

  return v8;
}

- (void)setExpanded:(BOOL)expanded
{
  if (self->_expanded != expanded)
  {
    self->_expanded = expanded;
    [(SFSectionDisclosureButton *)self updateExpanded];
  }
}

- (void)updateExpanded
{
  LOBYTE(v2) = self->_expanded;
  [(UILabel *)self->_labelWhenExpanded setAlpha:v2];
  [(UILabel *)self->_labelWhenCollapsed setAlpha:!self->_expanded];
  v4 = *(MEMORY[0x1E695EFD0] + 16);
  *&v9.a = *MEMORY[0x1E695EFD0];
  *&v9.c = v4;
  *&v9.tx = *(MEMORY[0x1E695EFD0] + 32);
  if (self->_expanded)
  {
    v5 = 1.57079633;
LABEL_5:
    CGAffineTransformMakeRotation(&v9, v5);
    goto LABEL_6;
  }

  if (![(UIView *)self _sf_usesLeftToRightLayout])
  {
    v5 = 3.14159265;
    goto LABEL_5;
  }

LABEL_6:
  v8 = v9;
  chevron = [(SFSectionDisclosureButton *)self chevron];
  v7 = v8;
  [chevron setTransform:&v7];
}

- (void)toggleExpanded
{
  if (!self->_expandsModally)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __43__SFSectionDisclosureButton_toggleExpanded__block_invoke;
    v2[3] = &unk_1E721B360;
    v2[4] = self;
    [MEMORY[0x1E69DD250] _animateUsingDefaultTimingWithOptions:0 animations:v2 completion:0];
  }
}

uint64_t __43__SFSectionDisclosureButton_toggleExpanded__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) isExpanded] ^ 1;
  v3 = *(a1 + 32);

  return [v3 setExpanded:v2];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69DD8A8] object:0];

  v4.receiver = self;
  v4.super_class = SFSectionDisclosureButton;
  [(SFSectionDisclosureButton *)&v4 dealloc];
}

- (void)buttonShapesEnabledDidChange
{
  v14[1] = *MEMORY[0x1E69E9840];
  v3 = UIAccessibilityButtonShapesEnabled();
  if (v3)
  {
    v4 = @"chevron.right.circle.fill";
  }

  else
  {
    v4 = @"chevron.right";
  }

  v5 = [MEMORY[0x1E69DCAB8] systemImageNamed:v4];
  [(UIImageView *)self->_imageView setImage:v5];

  if (v3)
  {
    v13 = *MEMORY[0x1E69DB758];
    v14[0] = &unk_1EFF73F10;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  }

  else
  {
    v6 = MEMORY[0x1E695E0F8];
  }

  v7 = objc_alloc(MEMORY[0x1E696AAB0]);
  v8 = _WBSLocalizedString();
  v9 = [v7 initWithString:v8 attributes:v6];
  [(UILabel *)self->_labelWhenCollapsed setAttributedText:v9];

  v10 = objc_alloc(MEMORY[0x1E696AAB0]);
  v11 = _WBSLocalizedString();
  v12 = [v10 initWithString:v11 attributes:v6];
  [(UILabel *)self->_labelWhenExpanded setAttributedText:v12];
}

- (CGSize)sizeIncludingLabels
{
  [(UIImageView *)self->_imageView frame];
  x = v3;
  y = v4;
  width = v5;
  height = v6;
  if (self->_expanded)
  {
    memset(&v34, 0, sizeof(v34));
    MidX = CGRectGetMidX(*&v3);
    v36.origin.x = x;
    v36.origin.y = y;
    v36.size.width = width;
    v36.size.height = height;
    MidY = CGRectGetMidY(v36);
    memset(&v33, 0, sizeof(v33));
    CGAffineTransformMakeTranslation(&v33, MidX, MidY);
    v31 = v33;
    CGAffineTransformRotate(&v32, &v31, 1.57079633);
    v33 = v32;
    CGAffineTransformTranslate(&v34, &v32, -MidX, -MidY);
    v33 = v34;
    v37.origin.x = x;
    v37.origin.y = y;
    v37.size.width = width;
    v37.size.height = height;
    v38 = CGRectApplyAffineTransform(v37, &v33);
    x = v38.origin.x;
    y = v38.origin.y;
    width = v38.size.width;
    height = v38.size.height;
  }

  if (self->_expandsModally)
  {
    [(UILabel *)self->_labelWhenCollapsed frame];
  }

  else
  {
    [(UILabel *)self->_labelWhenExpanded frame];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;
    [(UILabel *)self->_labelWhenCollapsed frame];
    v41.origin.x = v25;
    v41.origin.y = v26;
    v41.size.width = v27;
    v41.size.height = v28;
    v39.origin.x = v18;
    v39.origin.y = v20;
    v39.size.width = v22;
    v39.size.height = v24;
    *&v13 = CGRectUnion(v39, v41);
  }

  v42.origin.x = x;
  v42.origin.y = y;
  v42.size.width = width;
  v42.size.height = height;
  v40 = CGRectUnion(*&v13, v42);
  v29 = v40.size.width;
  v30 = v40.size.height;
  result.height = v30;
  result.width = v29;
  return result;
}

- (void)setLabelHidden:(BOOL)hidden
{
  if (self->_labelHidden != hidden)
  {
    hiddenCopy = hidden;
    self->_labelHidden = hidden;
    [(UILabel *)self->_labelWhenExpanded setHidden:?];
    [(UILabel *)self->_labelWhenCollapsed setHidden:hiddenCopy];
    [(NSLayoutConstraint *)self->_labelWhenExpandedLeadingConstraint setActive:hiddenCopy ^ 1];
    labelWhenCollapsedLeadingConstraint = self->_labelWhenCollapsedLeadingConstraint;

    [(NSLayoutConstraint *)labelWhenCollapsedLeadingConstraint setActive:hiddenCopy ^ 1];
  }
}

@end