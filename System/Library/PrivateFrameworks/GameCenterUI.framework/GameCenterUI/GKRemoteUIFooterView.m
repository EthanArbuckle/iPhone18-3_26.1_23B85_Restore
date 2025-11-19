@interface GKRemoteUIFooterView
- (GKRemoteUIFooterView)initWithAttributes:(id)a3;
- (double)footerHeightForWidth:(double)a3 inTableView:(id)a4;
- (id)attributedStringForString:(id)a3 withStyle:(id)a4;
@end

@implementation GKRemoteUIFooterView

- (GKRemoteUIFooterView)initWithAttributes:(id)a3
{
  v52[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v50.receiver = self;
  v50.super_class = GKRemoteUIFooterView;
  v5 = *MEMORY[0x277CBF3A0];
  v6 = *(MEMORY[0x277CBF3A0] + 8);
  v7 = *(MEMORY[0x277CBF3A0] + 16);
  v8 = *(MEMORY[0x277CBF3A0] + 24);
  v9 = [(GKRemoteUIFooterView *)&v50 initWithFrame:*MEMORY[0x277CBF3A0], v6, v7, v8];
  if (!v9)
  {
    goto LABEL_14;
  }

  v10 = [v4 objectForKeyedSubscript:@"GKApplyTheme"];
  v9->_shouldApplyGameCenterTheme = [v10 BOOLValue];

  v11 = [v4 objectForKeyedSubscript:@"GKLayoutStyle"];
  v9->_layoutStyle = [v11 integerValue];

  if (v9->_shouldApplyGameCenterTheme)
  {
    v12 = @"remoteUISectionFooter";
  }

  else
  {
    v12 = @"settingsFooter";
  }

  v13 = MEMORY[0x277D0C8B0];
  v14 = v12;
  v15 = [v13 textStyle];
  v16 = [v4 objectForKeyedSubscript:@"footerStyle"];
  v49 = v15;
  v17 = [v15 styleWithName:v16 fallback:v14 layoutMode:v9->_layoutStyle];

  v18 = [v4 objectForKeyedSubscript:@"addBullets"];
  v19 = [v18 BOOLValue];

  if (!v9->_shouldApplyGameCenterTheme)
  {
    v9->_leftMargin = 15.0;
    v9->_rightMargin = 15.0;
    v22 = 22.0;
    v21 = 18.0;
    goto LABEL_9;
  }

  v9->_leftMargin = 0.0;
  v9->_rightMargin = 0.0;
  layoutStyle = v9->_layoutStyle;
  if (layoutStyle < 3)
  {
    v21 = dbl_24E3676D8[layoutStyle];
    v22 = dbl_24E3676F0[layoutStyle];
LABEL_9:
    v9->_paragraphMargin = v21;
    v9->_bottomMargin = v22;
  }

  v23 = [[GKLabel alloc] initWithFrame:v5, v6, v7, v8];
  textLabel = v9->_textLabel;
  v9->_textLabel = v23;

  [(GKRemoteUIFooterView *)v9 addSubview:v9->_textLabel];
  v25 = [v4 objectForKeyedSubscript:@"footer"];
  v26 = [v25 stringByReplacingOccurrencesOfString:@"\\n" withString:@"\n"];

  [(GKLabel *)v9->_textLabel setNumberOfLines:0];
  [(GKLabel *)v9->_textLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v48 = v17;
  if (v19)
  {
    [(GKRemoteUIFooterView *)v9 attributedStringForString:v26 withStyle:v17];
  }

  else
  {
    [v26 _gkAttributedStringByApplyingStyle:v17];
  }
  v27 = ;
  [(GKLabel *)v9->_textLabel setAttributedText:v27];

  v28 = [MEMORY[0x277CBEB18] array];
  v29 = _NSDictionaryOfVariableBindings(&cfstr_Textlabel.isa, v9->_textLabel, 0);
  v51[0] = @"top";
  v30 = [MEMORY[0x277CCABB0] numberWithDouble:v9->_paragraphMargin];
  v51[1] = @"bottom";
  v52[0] = v30;
  v31 = MEMORY[0x277CCABB0];
  bottomMargin = v9->_bottomMargin;
  v33 = [(GKLabel *)v9->_textLabel font];
  [v33 descender];
  v35 = [v31 numberWithDouble:bottomMargin - fabs(v34)];
  v52[1] = v35;
  v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v52 forKeys:v51 count:2];

  v37 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|-(top)-[_textLabel]-(bottom)-|" options:0 metrics:v36 views:v29];
  [v28 addObjectsFromArray:v37];

  v38 = MEMORY[0x277CCAAD0];
  v39 = v9->_textLabel;
  [(GKRemoteUIFooterView *)v9 leftMargin];
  v41 = [v38 constraintWithItem:v39 attribute:1 relatedBy:0 toItem:v9 attribute:1 multiplier:1.0 constant:v40];
  [v28 addObject:v41];

  v42 = MEMORY[0x277CCAAD0];
  v43 = v9->_textLabel;
  [(GKRemoteUIFooterView *)v9 rightMargin];
  v45 = [v42 constraintWithItem:v43 attribute:2 relatedBy:0 toItem:v9 attribute:2 multiplier:1.0 constant:-v44];
  [v28 addObject:v45];

  [(GKRemoteUIFooterView *)v9 addConstraints:v28];
  v46 = v9;

LABEL_14:
  return v9;
}

- (double)footerHeightForWidth:(double)a3 inTableView:(id)a4
{
  v5 = a4;
  [(GKRemoteUIFooterView *)self layoutIfNeeded];
  v6 = [(GKRemoteUIFooterView *)self textLabel];
  v7 = [v6 font];

  [v5 frame];
  v9 = v8;

  [(GKRemoteUIFooterView *)self leftMargin];
  v11 = v9 - v10;
  [(GKRemoteUIFooterView *)self rightMargin];
  v13 = v11 - v12;
  v14 = [(GKRemoteUIFooterView *)self textLabel];
  [v14 setPreferredMaxLayoutWidth:v13];

  v15 = [(GKRemoteUIFooterView *)self textLabel];
  [v15 intrinsicContentSize];
  v17 = v16;

  v18 = v17 + self->_paragraphMargin + self->_bottomMargin;
  [v7 descender];
  v20 = v18 - fabs(v19);

  return v20;
}

- (id)attributedStringForString:(id)a3 withStyle:(id)a4
{
  v6 = MEMORY[0x277D75418];
  v7 = a4;
  v8 = a3;
  v9 = [v6 currentDevice];
  v10 = [v9 userInterfaceIdiom];

  v11 = 0x277D0C8C0;
  if (v10 == 1 && *MEMORY[0x277D0C8F0] & 1 | ((*MEMORY[0x277D0C258] & 1) == 0))
  {
    v11 = 0x277D0C8B8;
  }

  v12 = objc_alloc_init(*v11);
  v13 = [v7 replayOnBaseStyle:v12 systemContentSizeDidChange:0];

  v14 = [MEMORY[0x277D74248] defaultParagraphStyle];
  v15 = [v14 mutableCopy];

  v16 = objc_alloc(MEMORY[0x277CCA898]);
  v17 = [v13 attributes];
  v18 = [v16 initWithString:@"•  " attributes:v17];

  [v18 size];
  [v15 setHeadIndent:?];
  [v15 setFirstLineHeadIndent:0.0];
  [v15 setParagraphSpacing:self->_paragraphMargin];
  v19 = [v8 componentsSeparatedByString:@"\n"];

  v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"\n%@", @"•  "];
  v21 = [v19 componentsJoinedByString:v20];
  v22 = [@"•  " stringByAppendingString:v21];

  v23 = objc_alloc(MEMORY[0x277CCAB48]);
  v24 = [v13 attributes];
  v25 = [v23 initWithString:v22 attributes:v24];

  [v25 addAttribute:*MEMORY[0x277D74118] value:v15 range:{0, objc_msgSend(v22, "length")}];

  return v25;
}

@end