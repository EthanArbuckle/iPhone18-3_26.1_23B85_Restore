@interface GKDashboardPickerPlayerGroupCell
+ (CGSize)defaultSize;
- (BOOL)lineVisible;
- (GKDashboardPickerPlayerGroupCellDelegate)groupCellDelegate;
- (UIImageView)checkmark;
- (UIImageView)messageIcon;
- (UILabel)subtitle;
- (UILabel)title;
- (UIView)bottomLine;
- (UIView)container;
- (UIView)iconContainer;
- (UIView)ringView;
- (void)awakeFromNib;
- (void)configureWithPlayers:(id)a3 title:(id)a4 subtitle:(id)a5 messagesGroupIdentifier:(id)a6 source:(int64_t)a7 playerSelectionProxy:(id)a8;
- (void)dealloc;
- (void)handleLongPress:(id)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setLineVisible:(BOOL)a3;
- (void)setSelected:(BOOL)a3;
- (void)updateCellBackground;
- (void)updateLayerMask:(id)a3;
- (void)updateTitleForSearchText;
@end

@implementation GKDashboardPickerPlayerGroupCell

+ (CGSize)defaultSize
{
  v2 = 60.0;
  v3 = 0.0;
  result.height = v2;
  result.width = v3;
  return result;
}

- (void)awakeFromNib
{
  v38.receiver = self;
  v38.super_class = GKDashboardPickerPlayerGroupCell;
  [(GKDashboardPickerPlayerGroupCell *)&v38 awakeFromNib];
  v3 = [(GKDashboardPickerPlayerGroupCell *)self cellBackgroundColor];
  v4 = [(GKDashboardPickerPlayerGroupCell *)self contentView];
  [v4 setBackgroundColor:v3];

  v5 = [MEMORY[0x277D755D0] configurationWithWeight:5];
  v6 = [MEMORY[0x277D755B8] systemImageNamed:@"chevron.forward.circle" withConfiguration:v5];
  v7 = [(GKDashboardPickerPlayerGroupCell *)self checkmark];
  [v7 setImage:v6];

  v8 = [MEMORY[0x277D75348] whiteColor];
  v9 = [v8 colorWithAlphaComponent:0.1];
  v10 = [(GKDashboardPickerPlayerGroupCell *)self bottomLine];
  [v10 setBackgroundColor:v9];

  v11 = *MEMORY[0x277CDA5E8];
  v12 = [(GKDashboardPickerPlayerGroupCell *)self checkmark];
  v13 = [v12 layer];
  [v13 setCompositingFilter:v11];

  v14 = [(GKDashboardPickerPlayerGroupCell *)self subtitle];
  v15 = [v14 layer];
  [v15 setCompositingFilter:v11];

  v16 = +[_TtC12GameCenterUI17GKPlayerGroupView create];
  if (v16)
  {
    v17 = [(GKDashboardPickerPlayerGroupCell *)self iconContainer];
    [v17 addSubview:v16];

    [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
    v18 = MEMORY[0x277CCAAD0];
    v19 = [(GKDashboardPickerPlayerGroupCell *)self iconContainer];
    [v18 _gkInstallEdgeConstraintsForView:v16 containedWithinParentView:v19];

    [(GKDashboardPickerPlayerGroupCell *)self setPlayerGroupView:v16];
  }

  v20 = objc_opt_new();
  v21 = MEMORY[0x277D75208];
  v22 = [(GKDashboardPickerPlayerGroupCell *)self ringView];
  [v22 frame];
  v24 = v23;
  v25 = [(GKDashboardPickerPlayerGroupCell *)self ringView];
  [v25 frame];
  v26 = [v21 bezierPathWithOvalInRect:{0.0, 0.0, v24}];
  [v20 setPath:{objc_msgSend(v26, "CGPath")}];

  v27 = [(GKDashboardPickerPlayerGroupCell *)self ringView];
  v28 = [v27 layer];
  [v28 addSublayer:v20];

  v29 = [MEMORY[0x277D75348] whiteColor];
  v30 = [v29 colorWithAlphaComponent:0.6];
  [v20 setStrokeColor:{objc_msgSend(v30, "CGColor")}];

  v31 = [MEMORY[0x277D75348] clearColor];
  [v20 setFillColor:{objc_msgSend(v31, "CGColor")}];

  [v20 setLineWidth:2.0];
  v32 = [(GKDashboardPickerPlayerGroupCell *)self ringView];
  v33 = [v32 layer];
  [v33 setCompositingFilter:v11];

  v34 = [(GKDashboardPickerPlayerGroupCell *)self ringView];
  [v34 setHidden:1];

  v35 = GKGameCenterUIFrameworkBundle();
  v36 = GKGetLocalizedStringFromTableInBundle();
  v37 = [(GKDashboardPickerPlayerGroupCell *)self ringView];
  [v37 setAccessibilityLabel:v36];
}

- (void)dealloc
{
  v3 = [(GKDashboardPickerPlayerGroupCell *)self longPressRecognizer];

  if (v3)
  {
    v4 = [(GKDashboardPickerPlayerGroupCell *)self longPressRecognizer];
    [(GKDashboardPickerPlayerGroupCell *)self removeGestureRecognizer:v4];
  }

  v5.receiver = self;
  v5.super_class = GKDashboardPickerPlayerGroupCell;
  [(GKDashboardPickerPlayerGroupCell *)&v5 dealloc];
}

- (void)configureWithPlayers:(id)a3 title:(id)a4 subtitle:(id)a5 messagesGroupIdentifier:(id)a6 source:(int64_t)a7 playerSelectionProxy:(id)a8
{
  v58 = a3;
  v15 = a5;
  v16 = a8;
  v17 = a6;
  v18 = a4;
  v19 = [(GKDashboardPickerPlayerGroupCell *)self title];
  [v19 setText:v18];

  v20 = [(GKDashboardPickerPlayerGroupCell *)self subtitle];
  [v20 setText:v15];

  if ([v15 length] || objc_msgSend(v58, "count") != 1)
  {
    goto LABEL_16;
  }

  v21 = [v58 objectAtIndexedSubscript:0];
  v22 = [v21 lastPlayedGame];
  if (v22)
  {
    v23 = v22;
    v8 = [v21 lastPlayedGame];
    v24 = [v8 name];
    v25 = [v24 length];

    if (v25)
    {
      v26 = MEMORY[0x277CCACA8];
      v56 = GKGameCenterUIFrameworkBundle();
      v27 = GKGetLocalizedStringFromTableInBundle();
      v28 = [v21 lastPlayedGame];
      v29 = [v28 name];
      v8 = [v26 stringWithFormat:v27, v29];

      v30 = v56;
LABEL_8:
      v15 = v27;
LABEL_9:

      v15 = v8;
      goto LABEL_10;
    }
  }

  v31 = [v21 lastPlayedDate];

  if (v31)
  {
    v32 = MEMORY[0x277CCACA8];
    v33 = GKGameCenterUIFrameworkBundle();
    v27 = GKGetLocalizedStringFromTableInBundle();
    [v21 lastPlayedDate];
    v34 = v57 = v21;
    v35 = [v34 _gkFormattedWhenStringWithOptions:0];
    v8 = [v32 stringWithFormat:v27, v35];

    v30 = v33;
    v21 = v57;
    goto LABEL_8;
  }

  if (a7 == 1 || ([v21 contact], v55 = objc_claimAutoreleasedReturnValue(), v55, v55))
  {
    v30 = GKGameCenterUIFrameworkBundle();
    v8 = GKGetLocalizedStringFromTableInBundle();
    goto LABEL_9;
  }

LABEL_10:
  [(GKDashboardPickerPlayerGroupCell *)self setOriginalSubtitle:v15];
  v36 = [v16 playerIsSelectable:v21];
  v37 = v36;
  if (v36)
  {
    [(GKDashboardPickerPlayerGroupCell *)self originalSubtitle];
  }

  else
  {
    v8 = GKGameCenterUIFrameworkBundle();
    GKGetLocalizedStringFromTableInBundle();
  }
  v38 = ;
  v39 = [(GKDashboardPickerPlayerGroupCell *)self subtitle];
  [v39 setText:v38];

  if ((v37 & 1) == 0)
  {

    v38 = v8;
  }

LABEL_16:
  v40 = [(GKDashboardPickerPlayerGroupCell *)self messageIcon];
  [v40 setHidden:a7 != 1];

  -[GKDashboardPickerPlayerGroupCell setCanExpand:](self, "setCanExpand:", [v58 count] > 1);
  v41 = [(GKDashboardPickerPlayerGroupCell *)self canExpand];
  v42 = [(GKDashboardPickerPlayerGroupCell *)self checkmark];
  [v42 setHidden:!v41];

  v43 = [(GKDashboardPickerPlayerGroupCell *)self playerGroupView];
  [v43 configureWithPlayers:v58 messagesGroupIdentifier:v17 playerSelectionProxy:v16];

  if ([v58 count] == 1)
  {
    v44 = [v58 objectAtIndexedSubscript:0];
    v45 = [v16 playerIsSelectable:v44];

    if ((v45 & 1) == 0)
    {
      v46 = GKGameCenterUIFrameworkBundle();
      v47 = GKGetLocalizedStringFromTableInBundle();
      v48 = [(GKDashboardPickerPlayerGroupCell *)self subtitle];
      [v48 setText:v47];
    }
  }

  v49 = [v58 count];
  v50 = [(GKDashboardPickerPlayerGroupCell *)self longPressRecognizer];
  v51 = v50;
  if (v49 < 2)
  {

    if (v51)
    {
      v54 = [(GKDashboardPickerPlayerGroupCell *)self longPressRecognizer];
      [(GKDashboardPickerPlayerGroupCell *)self removeGestureRecognizer:v54];
    }

    [(GKDashboardPickerPlayerGroupCell *)self setLongPressRecognizer:0];
  }

  else
  {

    if (!v51)
    {
      v52 = [objc_alloc(MEMORY[0x277D75708]) initWithTarget:self action:sel_handleLongPress_];
      [(GKDashboardPickerPlayerGroupCell *)self setLongPressRecognizer:v52];

      v53 = [(GKDashboardPickerPlayerGroupCell *)self longPressRecognizer];
      [(GKDashboardPickerPlayerGroupCell *)self addGestureRecognizer:v53];
    }
  }

  [(GKDashboardPickerPlayerGroupCell *)self updateTitleForSearchText];
}

- (void)updateTitleForSearchText
{
  v3 = [(GKDashboardPickerPlayerGroupCell *)self title];
  v14 = [v3 text];

  v4 = [(GKDashboardPickerPlayerGroupCell *)self searchText];
  v5 = [v14 localizedStandardRangeOfString:v4];
  v7 = v6;

  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v14];
    v9 = *MEMORY[0x277D740C0];
    if (v5)
    {
      v10 = [MEMORY[0x277D75348] secondaryLabelColor];
      [v8 addAttribute:v9 value:v10 range:{0, v5}];
    }

    if (v5 + v7 < [v14 length])
    {
      v11 = [MEMORY[0x277D75348] secondaryLabelColor];
      [v8 addAttribute:v9 value:v11 range:{v5 + v7, objc_msgSend(v14, "length") - (v5 + v7)}];
    }

    v12 = [MEMORY[0x277D75348] labelColor];
    [v8 addAttribute:v9 value:v12 range:{v5, v7}];

    v13 = [(GKDashboardPickerPlayerGroupCell *)self title];
    [v13 setAttributedText:v8];
  }
}

- (void)updateLayerMask:(id)a3
{
  v3 = MEMORY[0x277D75208];
  v4 = a3;
  [v4 bounds];
  v8 = [v3 bezierPathWithRoundedRect:12 byRoundingCorners:? cornerRadii:?];
  v5 = [MEMORY[0x277CD9F90] layer];
  [v4 bounds];
  [v5 setFrame:?];
  v6 = v8;
  [v5 setPath:{objc_msgSend(v8, "CGPath")}];
  v7 = [v4 layer];

  [v7 setMask:v5];
}

- (void)setLineVisible:(BOOL)a3
{
  v3 = a3;
  v4 = [(GKDashboardPickerPlayerGroupCell *)self bottomLine];
  [v4 setHidden:!v3];
}

- (BOOL)lineVisible
{
  WeakRetained = objc_loadWeakRetained(&self->_bottomLine);
  v3 = [WeakRetained isHidden];

  return v3 ^ 1;
}

- (void)updateCellBackground
{
  if (self->_usesClearBackground)
  {
    [MEMORY[0x277D75348] clearColor];
  }

  else
  {
    [(GKDashboardPickerPlayerGroupCell *)self cellBackgroundColor];
  }
  v4 = ;
  v3 = [(GKDashboardPickerPlayerGroupCell *)self contentView];
  [v3 setBackgroundColor:v4];
}

- (void)setHighlighted:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = GKDashboardPickerPlayerGroupCell;
  [(GKDashboardPickerPlayerGroupCell *)&v7 setHighlighted:?];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __51__GKDashboardPickerPlayerGroupCell_setHighlighted___block_invoke;
  v5[3] = &unk_27966A890;
  v5[4] = self;
  v6 = a3;
  [MEMORY[0x277D75D18] animateWithDuration:v5 animations:0 completion:0.05];
}

void __51__GKDashboardPickerPlayerGroupCell_setHighlighted___block_invoke(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v1 = 0.5;
  }

  else
  {
    v1 = 1.0;
  }

  v3 = [*(a1 + 32) layer];
  *&v2 = v1;
  [v3 setOpacity:v2];
}

- (void)setSelected:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = GKDashboardPickerPlayerGroupCell;
  [(GKDashboardPickerPlayerGroupCell *)&v7 setSelected:?];
  v5 = [(GKDashboardPickerPlayerGroupCell *)self layer];
  [v5 setBackgroundColor:0];

  v6 = [(GKDashboardPickerPlayerGroupCell *)self ringView];
  [v6 setHidden:!v3];
}

- (void)handleLongPress:(id)a3
{
  v6 = a3;
  if ([v6 state] == 3)
  {
    v4 = [(GKDashboardPickerPlayerGroupCell *)self groupCellDelegate];

    if (v4)
    {
      v5 = [(GKDashboardPickerPlayerGroupCell *)self groupCellDelegate];
      [v5 handleLongPressGesture:v6];
    }
  }
}

- (GKDashboardPickerPlayerGroupCellDelegate)groupCellDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_groupCellDelegate);

  return WeakRetained;
}

- (UIView)container
{
  WeakRetained = objc_loadWeakRetained(&self->_container);

  return WeakRetained;
}

- (UIView)iconContainer
{
  WeakRetained = objc_loadWeakRetained(&self->_iconContainer);

  return WeakRetained;
}

- (UILabel)subtitle
{
  WeakRetained = objc_loadWeakRetained(&self->_subtitle);

  return WeakRetained;
}

- (UILabel)title
{
  WeakRetained = objc_loadWeakRetained(&self->_title);

  return WeakRetained;
}

- (UIView)bottomLine
{
  WeakRetained = objc_loadWeakRetained(&self->_bottomLine);

  return WeakRetained;
}

- (UIImageView)checkmark
{
  WeakRetained = objc_loadWeakRetained(&self->_checkmark);

  return WeakRetained;
}

- (UIImageView)messageIcon
{
  WeakRetained = objc_loadWeakRetained(&self->_messageIcon);

  return WeakRetained;
}

- (UIView)ringView
{
  WeakRetained = objc_loadWeakRetained(&self->_ringView);

  return WeakRetained;
}

@end