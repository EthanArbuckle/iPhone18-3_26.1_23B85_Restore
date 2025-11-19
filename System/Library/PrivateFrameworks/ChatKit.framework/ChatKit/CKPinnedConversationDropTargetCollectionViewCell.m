@interface CKPinnedConversationDropTargetCollectionViewCell
+ (NSString)reuseIdentifier;
+ (id)uniqueIdentifierForDropTargetAtItemIndex:(int64_t)a3;
- (CGSize)sizeThatFits:(CGSize)a3;
- (CKPinnedConversationDropTargetCollectionViewCell)initWithFrame:(CGRect)a3;
- (void)_updateFont;
- (void)_updateInstructionLabelColor;
- (void)layoutSubviews;
- (void)setShouldAnimateCircle:(BOOL)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation CKPinnedConversationDropTargetCollectionViewCell

+ (NSString)reuseIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

+ (id)uniqueIdentifierForDropTargetAtItemIndex:(int64_t)a3
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = [a1 uniqueIdentifier];
  v6 = [v4 stringWithFormat:@"%@%li", v5, a3];

  return v6;
}

- (CKPinnedConversationDropTargetCollectionViewCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v21.receiver = self;
  v21.super_class = CKPinnedConversationDropTargetCollectionViewCell;
  v7 = [(CKPinnedConversationDropTargetCollectionViewCell *)&v21 initWithFrame:?];
  v8 = v7;
  if (v7)
  {
    v9 = [(CKPinnedConversationDropTargetCollectionViewCell *)v7 contentView];
    v10 = objc_alloc(MEMORY[0x1E69DCC10]);
    [(CKPinnedConversationDropTargetCollectionViewCell *)v8 bounds];
    v11 = [v10 initWithFrame:?];
    instructionLabel = v8->_instructionLabel;
    v8->_instructionLabel = v11;

    v13 = v8->_instructionLabel;
    v14 = CKFrameworkBundle();
    v15 = [v14 localizedStringForKey:@"PIN_CONVERSATION_DROP_TARGET_LABEL" value:&stru_1F04268F8 table:@"ChatKit"];
    [(UILabel *)v13 setText:v15];

    [(UILabel *)v8->_instructionLabel setNumberOfLines:3];
    [(UILabel *)v8->_instructionLabel setTextAlignment:1];
    [(CKPinnedConversationDropTargetCollectionViewCell *)v8 _updateInstructionLabelColor];
    [v9 addSubview:v8->_instructionLabel];
    v16 = [[CKDropZoneCircleView alloc] initWithFrame:x, y, width, height];
    dropZoneCircleView = v8->_dropZoneCircleView;
    v8->_dropZoneCircleView = v16;

    [v9 addSubview:v8->_dropZoneCircleView];
    v18 = objc_alloc_init(CKPinnedConversationView);
    prototypeConversationView = v8->_prototypeConversationView;
    v8->_prototypeConversationView = v18;

    [(CKPinnedConversationView *)v8->_prototypeConversationView configureAsPrototypeCell];
    [(CKPinnedConversationDropTargetCollectionViewCell *)v8 setShouldHideLabel:0];
    [(CKPinnedConversationDropTargetCollectionViewCell *)v8 setShouldAnimateCircle:1];
    [(CKPinnedConversationDropTargetCollectionViewCell *)v8 _updateFont];
  }

  return v8;
}

- (void)setShouldAnimateCircle:(BOOL)a3
{
  self->_shouldAnimateCircle = a3;
  dropZoneCircleView = self->_dropZoneCircleView;
  if (a3)
  {
    [(CKDropZoneCircleView *)dropZoneCircleView startAnimating];
  }

  else
  {
    [(CKDropZoneCircleView *)dropZoneCircleView stopAnimating];
  }
}

- (void)_updateFont
{
  instructionLabel = self->_instructionLabel;
  v4 = +[CKUIBehavior sharedBehaviors];
  v3 = [v4 conversationListDropTargetInstructionFont];
  [(UILabel *)instructionLabel setFont:v3];
}

- (void)layoutSubviews
{
  v34.receiver = self;
  v34.super_class = CKPinnedConversationDropTargetCollectionViewCell;
  [(CKPinnedConversationDropTargetCollectionViewCell *)&v34 layoutSubviews];
  v3 = [(CKPinnedConversationDropTargetCollectionViewCell *)self contentView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;

  +[CKPinnedConversationView avatarViewPadding];
  v11 = v10;
  [CKPinnedConversationView avatarViewSizeFittingSize:self->_layoutStyle layoutStyle:v7, v9];
  v13 = v12;
  v15 = v14;
  v16 = (v7 - v12) * 0.5;
  v17 = v5 + v11;
  [(CKDropZoneCircleView *)self->_dropZoneCircleView setFrame:v16, v17, v12, v14];
  [(UILabel *)self->_instructionLabel setAllowsDefaultTighteningForTruncation:0];
  [(UILabel *)self->_instructionLabel sizeThatFits:v13, v15];
  v19 = v18;
  v21 = v20;
  [(UILabel *)self->_instructionLabel setBounds:0.0, 0.0, v18, v20];
  v22 = [(UILabel *)self->_instructionLabel font];
  [v22 lineHeight];
  v24 = llround(v21 / v23);

  if (v24 == 2)
  {
    [(UILabel *)self->_instructionLabel _firstLineBaselineOffsetFromBoundsTop];
    v26 = v25;
    v35.origin.x = v16;
    v35.origin.y = v17;
    v35.size.width = v13;
    v35.size.height = v15;
    v27 = CGRectGetMidY(v35) - v26;
  }

  else
  {
    v36.origin.x = v16;
    v36.origin.y = v17;
    v36.size.width = v13;
    v36.size.height = v15;
    v27 = CGRectGetMidY(v36) + v21 * -0.5;
  }

  v37.origin.x = v16;
  v37.origin.y = v17;
  v37.size.width = v13;
  v37.size.height = v15;
  v38.origin.x = CGRectGetMidX(v37) - v19 * 0.5;
  v38.origin.y = v27;
  v38.size.width = v19;
  v38.size.height = v21;
  MaxY = CGRectGetMaxY(v38);
  v39.origin.x = v16;
  v39.origin.y = v17;
  v39.size.width = v13;
  v39.size.height = v15;
  MidY = CGRectGetMidY(v39);
  v30 = v13 * 0.5 * (v13 * 0.5) - (MaxY - MidY) * (MaxY - MidY);
  v40.origin.x = v16;
  v40.origin.y = v17;
  v40.size.width = v13;
  v40.size.height = v15;
  v31 = sqrt(v30);
  v32 = CGRectGetMidX(v40) - v31;
  v41.origin.x = v16;
  v41.origin.y = v17;
  v41.size.width = v13;
  v41.size.height = v15;
  v33 = CGRectGetMidX(v41) + v31 - v32;
  [(UILabel *)self->_instructionLabel setAllowsDefaultTighteningForTruncation:1];
  [(UILabel *)self->_instructionLabel setFrame:v32, v27, v33, v21];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(CKPinnedConversationView *)self->_prototypeConversationView setLayoutStyle:self->_layoutStyle];
  prototypeConversationView = self->_prototypeConversationView;

  [(CKPinnedConversationView *)prototypeConversationView sizeThatFits:width, height];
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)traitCollectionDidChange:(id)a3
{
  v4.receiver = self;
  v4.super_class = CKPinnedConversationDropTargetCollectionViewCell;
  [(CKPinnedConversationDropTargetCollectionViewCell *)&v4 traitCollectionDidChange:a3];
  [(CKPinnedConversationDropTargetCollectionViewCell *)self _updateInstructionLabelColor];
}

- (void)_updateInstructionLabelColor
{
  v3 = [(CKPinnedConversationDropTargetCollectionViewCell *)self traitCollection];
  v4 = [v3 userInterfaceStyle];

  if (v4 >= 2)
  {
    if (v4 != 2)
    {
      v7 = 0;
      goto LABEL_7;
    }

    v5 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.48];
  }

  else
  {
    v5 = [MEMORY[0x1E69DC888] colorWithRed:0.31372549 green:0.333333333 blue:0.360784314 alpha:0.6];
  }

  v7 = v5;
LABEL_7:
  v6 = [(CKPinnedConversationDropTargetCollectionViewCell *)self instructionLabel];
  [v6 setTextColor:v7];
}

@end