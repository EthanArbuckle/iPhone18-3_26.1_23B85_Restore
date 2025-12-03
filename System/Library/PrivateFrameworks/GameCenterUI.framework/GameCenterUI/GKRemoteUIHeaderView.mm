@interface GKRemoteUIHeaderView
- (GKRemoteUIHeaderView)initWithAttributes:(id)attributes;
- (void)setSectionIsFirst:(BOOL)first;
@end

@implementation GKRemoteUIHeaderView

- (GKRemoteUIHeaderView)initWithAttributes:(id)attributes
{
  v39[3] = *MEMORY[0x277D85DE8];
  attributesCopy = attributes;
  v38.receiver = self;
  v38.super_class = GKRemoteUIHeaderView;
  v5 = *MEMORY[0x277CBF3A0];
  v6 = *(MEMORY[0x277CBF3A0] + 8);
  v7 = *(MEMORY[0x277CBF3A0] + 16);
  v8 = *(MEMORY[0x277CBF3A0] + 24);
  v9 = [(GKRemoteUIHeaderView *)&v38 initWithFrame:*MEMORY[0x277CBF3A0], v6, v7, v8];
  if (v9)
  {
    v10 = [attributesCopy objectForKeyedSubscript:@"GKLayoutStyle"];
    intValue = [v10 intValue];

    v12 = [attributesCopy objectForKeyedSubscript:@"GKApplyTheme"];
    bOOLValue = [v12 BOOLValue];

    v14 = @"settingsHeader";
    if (bOOLValue)
    {
      v14 = @"remoteUISectionHeader";
    }

    v15 = MEMORY[0x277D0C8B0];
    v16 = v14;
    textStyle = [v15 textStyle];
    v18 = [attributesCopy objectForKeyedSubscript:@"headerStyle"];
    v19 = [textStyle styleWithName:v18 fallback:v16 layoutMode:intValue];

    v20 = [v19 lineBreakMode:0];

    v21 = [[GKLabel alloc] initWithFrame:v5, v6, v7, v8];
    textLabel = v9->_textLabel;
    v9->_textLabel = v21;

    v23 = [attributesCopy objectForKeyedSubscript:@"header"];
    [(GKLabel *)v9->_textLabel setText:v23];

    [(GKLabel *)v9->_textLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(GKLabel *)v9->_textLabel setNumberOfLines:0];
    if (v20)
    {
      [(GKLabel *)v9->_textLabel applyTextStyle:v20];
    }

    v24 = [attributesCopy objectForKeyedSubscript:@"headerHeight"];
    v25 = v24;
    if (v24)
    {
      [v24 floatValue];
      v27 = v26;
    }

    else
    {
      v27 = 45.0;
    }

    v9->_height = v27;
    v28 = [attributesCopy objectForKeyedSubscript:@"headerBottomMargin"];
    v29 = v28;
    if (v28)
    {
      [v28 floatValue];
      v31 = v30;
    }

    else
    {
      v31 = 10.0;
    }

    v9->_bottomMargin = v31;
    [(GKRemoteUIHeaderView *)v9 addSubview:v9->_textLabel];
    v32 = [MEMORY[0x277CCAAD0] constraintWithItem:v9->_textLabel attribute:11 relatedBy:0 toItem:v9 attribute:4 multiplier:1.0 constant:-v9->_bottomMargin];
    v33 = [MEMORY[0x277CCAAD0] constraintWithItem:v9->_textLabel attribute:1 relatedBy:0 toItem:v9 attribute:1 multiplier:1.0 constant:0.0];
    v34 = [MEMORY[0x277CCAAD0] constraintWithItem:v9->_textLabel attribute:2 relatedBy:0 toItem:v9 attribute:2 multiplier:1.0 constant:0.0];
    v39[0] = v32;
    v39[1] = v33;
    v39[2] = v34;
    v35 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:3];
    [(GKRemoteUIHeaderView *)v9 addConstraints:v35];

    v36 = v9;
  }

  return v9;
}

- (void)setSectionIsFirst:(BOOL)first
{
  if (self->_isFirstSection != first)
  {
    self->_isFirstSection = first;
  }
}

@end