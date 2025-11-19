@interface _FCUIFocusSelectionFooterView
- (id)_attributedTextForText:(id)a3;
- (void)_configureLabel:(id)a3;
- (void)_handleLabelTap:(id)a3;
- (void)_layoutLabel:(id)a3 inBounds:(CGRect)a4 measuringOnly:(CGSize *)a5;
- (void)_openURL:(id)a3;
@end

@implementation _FCUIFocusSelectionFooterView

- (id)_attributedTextForText:(id)a3
{
  v4 = MEMORY[0x277D74270];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v7 = MEMORY[0x277D755D0];
  v8 = [MEMORY[0x277D75348] secondaryLabelColor];
  v9 = [v7 configurationWithHierarchicalColor:v8];

  v10 = MEMORY[0x277D755D0];
  v11 = [(_FCUIFocusSelectionHeaderFooterView *)self _labelFont];
  v12 = [v10 configurationWithFont:v11];
  v13 = [v9 configurationByApplyingConfiguration:v12];

  v14 = [MEMORY[0x277D755B8] systemImageNamed:@"chevron.forward" withConfiguration:v13];
  [v6 setImage:v14];

  v15 = objc_alloc(MEMORY[0x277CCAB48]);
  v16 = [v5 stringByAppendingString:@" "];

  v17 = [v15 initWithString:v16];
  v18 = [MEMORY[0x277CCA898] attributedStringWithAttachment:v6];
  [v17 appendAttributedString:v18];

  return v17;
}

- (void)_layoutLabel:(id)a3 inBounds:(CGRect)a4 measuringOnly:(CGSize *)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v32 = a4.origin.x;
  v33 = a3;
  [v33 sizeThatFits:{width, height}];
  BSRectWithSize();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v35.origin.x = x;
  v35.origin.y = y;
  v35.size.width = width;
  v35.size.height = height;
  CGRectGetMaxY(v35);
  v36.origin.x = v12;
  v36.origin.y = v14;
  v36.size.width = v16;
  v36.size.height = v18;
  CGRectGetHeight(v36);
  v19 = [(_FCUIFocusSelectionFooterView *)self traitCollection];
  [v19 displayScale];
  v31 = v20;
  UIRectCenteredXInRectScale();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;

  if (a5)
  {
    v37.origin.x = v32;
    v37.origin.y = y;
    v37.size.width = width;
    v37.size.height = height;
    v29 = CGRectGetWidth(v37);
    v38.origin.x = v22;
    v38.origin.y = v24;
    v38.size.width = v26;
    v38.size.height = v28;
    v30 = CGRectGetHeight(v38);
    a5->width = v29;
    a5->height = v30 + 29.0;
  }

  else
  {
    [v33 setFrame:{v22, v24, v26, v28, v31}];
  }
}

- (void)_configureLabel:(id)a3
{
  v6.receiver = self;
  v6.super_class = _FCUIFocusSelectionFooterView;
  v4 = a3;
  [(_FCUIFocusSelectionHeaderFooterView *)&v6 _configureLabel:v4];
  [v4 setUserInteractionEnabled:{1, v6.receiver, v6.super_class}];
  v5 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__handleLabelTap_];
  [v4 addGestureRecognizer:v5];
}

- (void)_openURL:(id)a3
{
  v3 = a3;
  v4 = dispatch_get_global_queue(25, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42___FCUIFocusSelectionFooterView__openURL___block_invoke;
  block[3] = &unk_27901A470;
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, block);
}

- (void)_handleLabelTap:(id)a3
{
  v4 = [MEMORY[0x277D0A9E8] activitiesSettingsURL];
  [(_FCUIFocusSelectionFooterView *)self _openURL:v4];
}

@end