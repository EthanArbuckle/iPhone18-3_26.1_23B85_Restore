@interface NTKCFaceDetailToggleCell
+ (id)reuseIdentifier;
- (NTKCFaceDetailToggleCell)init;
- (NTKCFaceDetailToggleCellDelegate)delegate;
- (double)rowHeight;
- (void)_switchToggled;
- (void)layoutSubviews;
@end

@implementation NTKCFaceDetailToggleCell

+ (id)reuseIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (double)rowHeight
{
  v2 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  [v2 _scaledValueForValue:44.0];
  v4 = v3;

  return v4;
}

- (NTKCFaceDetailToggleCell)init
{
  v7.receiver = self;
  v7.super_class = NTKCFaceDetailToggleCell;
  v2 = [(NTKCDetailTableViewCell *)&v7 initWithStyle:0];
  if (v2)
  {
    v3 = objc_opt_new();
    toggle = v2->_toggle;
    v2->_toggle = v3;

    [(UISwitch *)v2->_toggle addTarget:v2 action:sel__switchToggled forControlEvents:4096];
    contentView = [(NTKCFaceDetailToggleCell *)v2 contentView];
    [contentView addSubview:v2->_toggle];

    [(NTKCDetailTableViewCell *)v2 setShowsSeparator:1];
  }

  return v2;
}

- (void)_switchToggled
{
  delegate = [(NTKCFaceDetailToggleCell *)self delegate];
  [delegate toggleCell:self didToggle:{-[UISwitch isOn](self->_toggle, "isOn")}];
}

- (void)layoutSubviews
{
  v50.receiver = self;
  v50.super_class = NTKCFaceDetailToggleCell;
  [(NTKCDetailTableViewCell *)&v50 layoutSubviews];
  contentView = [(NTKCFaceDetailToggleCell *)self contentView];
  [contentView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  rect = v10;

  v11 = NTKCScreenEdgeMargin();
  IsRTL = CLKLayoutIsRTL();
  [(UISwitch *)self->_toggle frame];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v47 = v5;
  v48 = v11;
  if (!IsRTL)
  {
    v20 = v13;
    v51.origin.x = v5;
    v51.origin.y = v7;
    v51.size.width = v9;
    v51.size.height = rect;
    CGRectGetWidth(v51);
    v52.origin.x = v20;
    v52.origin.y = v15;
    v52.size.width = v17;
    v52.size.height = v19;
    CGRectGetWidth(v52);
  }

  UIRectCenteredYInRectScale();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  [(UISwitch *)self->_toggle setFrame:0];
  v29 = v9;
  v46 = v7;
  if (IsRTL)
  {
    v53.origin.x = v5;
    v53.origin.y = v7;
    v53.size.width = v9;
    v30 = rect;
    v53.size.height = rect;
    Width = CGRectGetWidth(v53);
    v54.origin.x = v22;
    v54.origin.y = v24;
    v54.size.width = v26;
    v54.size.height = v28;
    MinX = Width - CGRectGetMaxX(v54);
  }

  else
  {
    v55.origin.x = v22;
    v55.origin.y = v24;
    v55.size.width = v26;
    v55.size.height = v28;
    MinX = CGRectGetMinX(v55);
    v30 = rect;
  }

  v33 = v48;
  v34 = MinX + -16.0 - v48;
  textLabel = [(NTKCFaceDetailToggleCell *)self textLabel];
  [textLabel frame];
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;

  v56.origin.x = v37;
  v56.origin.y = v39;
  v56.size.width = v41;
  v56.size.height = v43;
  if (CGRectGetWidth(v56) > v34)
  {
    if (IsRTL)
    {
      v57.origin.y = v46;
      v57.origin.x = v47;
      v57.size.width = v29;
      v57.size.height = v30;
      v44 = CGRectGetWidth(v57);
      v58.origin.x = v37;
      v58.origin.y = v39;
      v58.size.width = v34;
      v58.size.height = v43;
      v33 = v44 - CGRectGetWidth(v58) - v48;
    }

    textLabel2 = [(NTKCFaceDetailToggleCell *)self textLabel];
    [textLabel2 setFrame:{v33, v39, v34, v43}];
  }
}

- (NTKCFaceDetailToggleCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end