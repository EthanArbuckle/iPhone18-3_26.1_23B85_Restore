@interface CKMessageSearchResultCell
- (CGSize)sizeThatFits:(CGSize)a3;
- (CKGradientReferenceView)gradientReferenceView;
- (CKMessageSearchResultCell)initWithFrame:(CGRect)a3;
- (UIEdgeInsets)marginInsets;
- (id)_annotatedResultStringForResult:(id)a3 searchText:(id)a4;
- (id)_balloonFilterForUserInterfaceStyle:(int64_t)a3;
- (void)_configureAvatarForResult:(id)a3;
- (void)_configureBalloonViewForResult:(id)a3 searchText:(id)a4;
- (void)_configureDateLabelForResult:(id)a3;
- (void)_configureLabelFonts;
- (void)_configureSenderLabelForResult:(id)a3 searchText:(id)a4;
- (void)_internalInit;
- (void)_layoutInternalSubviews;
- (void)_proposedBalloonY:(double *)a3 afterLayoutForView:(id)a4;
- (void)configureWithQueryResult:(id)a3 searchText:(id)a4 mode:(unint64_t)a5;
- (void)configureWithQueryResult:(id)a3 searchText:(id)a4 mode:(unint64_t)a5 visibilityContext:(CKMessageSearchResultVisibilityContext *)a6 gradientReferenceView:(id)a7;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setHighlighted:(BOOL)a3;
- (void)setVisibilityContext:(CKMessageSearchResultVisibilityContext *)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation CKMessageSearchResultCell

- (CKMessageSearchResultCell)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = CKMessageSearchResultCell;
  v3 = [(CKMessageSearchResultCell *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(CKMessageSearchResultCell *)v3 _internalInit];
  }

  return v4;
}

- (void)_internalInit
{
  v38[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(CKLabel);
  [(CKLabel *)v3 setAdjustsFontForContentSizeCategory:1];
  v4 = +[CKUIBehavior sharedBehaviors];
  v5 = [v4 searchMessagesDMConversationFont];
  [(CKLabel *)v3 setFont:v5];

  [(CKLabel *)v3 setLineBreakMode:4];
  [(CKLabel *)v3 setNumberOfLines:0];
  [(CKLabel *)v3 setOpaque:0];
  [(CKLabel *)v3 setTextAlignment:4];
  v6 = +[CKUIBehavior sharedBehaviors];
  v7 = [v6 searchMessagesConversationLabelColor];
  [(CKLabel *)v3 setTextColor:v7];

  v8 = [(CKMessageSearchResultCell *)self contentView];
  [v8 addSubview:v3];

  objc_storeStrong(&self->_conversationNameLabel, v3);
  v9 = objc_alloc_init(CKLabel);
  [(CKLabel *)v9 setAdjustsFontForContentSizeCategory:1];
  v10 = +[CKUIBehavior sharedBehaviors];
  v11 = [v10 searchMessagesSenderFont];
  [(CKLabel *)v9 setFont:v11];

  [(CKLabel *)v9 setLineBreakMode:4];
  [(CKLabel *)v9 setNumberOfLines:0];
  [(CKLabel *)v9 setOpaque:0];
  [(CKLabel *)v9 setTextAlignment:4];
  v12 = +[CKUIBehavior sharedBehaviors];
  v13 = [v12 searchMessagesSenderLabelColor];
  [(CKLabel *)v9 setTextColor:v13];

  v14 = [(CKMessageSearchResultCell *)self contentView];
  [v14 addSubview:v9];

  objc_storeStrong(&self->_senderLabel, v9);
  v15 = objc_alloc_init(CKDateLabel);
  [(CKDateLabel *)v15 setAdjustsFontForContentSizeCategory:1];
  v16 = +[CKUIBehavior sharedBehaviors];
  v17 = [v16 searchMessagesDateFont];
  [(CKDateLabel *)v15 setFont:v17];

  v18 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [(CKDateLabel *)v15 setTextColor:v18];

  [(CKDateLabel *)v15 setNumberOfLines:0];
  [(CKDateLabel *)v15 setOpaque:0];
  v19 = [(CKMessageSearchResultCell *)self contentView];
  [v19 addSubview:v15];

  objc_storeStrong(&self->_dateLabel, v15);
  v20 = [CKTextBalloonView alloc];
  v21 = [(CKTextBalloonView *)v20 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [(CKTextBalloonView *)v21 setUserInteractionEnabled:0];
  [(CKColoredBalloonView *)v21 setWantsGradient:0];
  v22 = [(CKMessageSearchResultCell *)self contentView];
  [v22 addSubview:v21];

  objc_storeStrong(&self->_balloonView, v21);
  v23 = +[CKUIBehavior sharedBehaviors];
  v24 = [v23 chevronImage];

  [v24 size];
  v27 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithFrame:{0.0, 0.0, v25, v26}];
  [v27 setContentMode:4];
  v28 = +[CKUIBehavior sharedBehaviors];
  v29 = [v28 theme];
  v30 = [v29 conversationListChevronColor];
  [v27 setTintColor:v30];

  [v27 setImage:v24];
  v31 = [(CKMessageSearchResultCell *)self contentView];
  [v31 addSubview:v27];

  objc_storeStrong(&self->_chevronImageView, v27);
  v32 = objc_alloc_init(MEMORY[0x1E69DD250]);
  v33 = [MEMORY[0x1E69DC888] separatorColor];
  [v32 setBackgroundColor:v33];

  v34 = [(CKMessageSearchResultCell *)self contentView];
  [v34 addSubview:v32];

  objc_storeStrong(&self->_groupingSeparatorView, v32);
  v35 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  LODWORD(v30) = [v35 isTranscriptBackgroundsEnabled];

  if (v30)
  {
    v38[0] = objc_opt_class();
    v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:1];
    v37 = [(CKMessageSearchResultCell *)self registerForTraitChanges:v36 withHandler:&__block_literal_global_250];
  }
}

void __42__CKMessageSearchResultCell__internalInit__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v11 = [v2 traitCollection];
  v3 = [v11 isTranscriptBackgroundActive];
  v4 = [v2 traitOverrides];

  if (v3)
  {
    v5 = +[CKUIBehavior sharedBehaviors];
    v6 = [v5 theme];

    v7 = [v6 searchResultsBackgroundColor];
    v8 = [v7 resolvedColorForTraitCollection:v11];
    [v8 _luminance];
    v10 = v9;

    [v4 setCGFloatValue:objc_opt_class() forTrait:v10];
  }

  else
  {
    [v4 removeTrait:objc_opt_class()];
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v26.receiver = self;
  v26.super_class = CKMessageSearchResultCell;
  v4 = a3;
  [(CKMessageSearchResultCell *)&v26 traitCollectionDidChange:v4];
  v5 = [(CKMessageSearchResultCell *)self traitCollection];
  v6 = [v5 userInterfaceStyle];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = [(CKMessageSearchResultCell *)self balloonView];
  v8 = v7;
  if (v7)
  {
    [v7 balloonDescriptor];
  }

  else
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
  }

  *(&v24 + 1) = v6;
  v9 = [(CKMessageSearchResultCell *)self balloonView];
  v17[4] = v22;
  v17[5] = v23;
  v17[6] = v24;
  v17[7] = v25;
  v17[0] = v18;
  v17[1] = v19;
  v17[2] = v20;
  v17[3] = v21;
  [v9 setBalloonDescriptor:v17];

  v10 = [(CKMessageSearchResultCell *)self balloonView];
  [v10 setNeedsPrepareForDisplay];

  v11 = [(CKMessageSearchResultCell *)self balloonView];
  [v11 prepareForDisplay];

  v12 = [v4 userInterfaceStyle];
  if (v12 != v6)
  {
    v13 = [(CKMessageSearchResultCell *)self _balloonFilterForUserInterfaceStyle:v6];
    v14 = [MEMORY[0x1E6979378] filterWithType:v13];
    v15 = [(CKMessageSearchResultCell *)self balloonView];
    v16 = [v15 layer];
    [v16 setCompositingFilter:v14];
  }

  [(CKMessageSearchResultCell *)self setNeedsLayout];
}

- (void)configureWithQueryResult:(id)a3 searchText:(id)a4 mode:(unint64_t)a5 visibilityContext:(CKMessageSearchResultVisibilityContext *)a6 gradientReferenceView:(id)a7
{
  v12 = a7;
  v13 = a4;
  v14 = a3;
  -[CKMessageSearchResultCell setIsFromMe:](self, "setIsFromMe:", [v14 isFromMe]);
  v15 = [v14 conversation];
  -[CKMessageSearchResultCell setIsFromGroupConversation:](self, "setIsFromGroupConversation:", [v15 isGroupConversation]);

  v16 = *a6;
  [(CKMessageSearchResultCell *)self setVisibilityContext:&v16];
  [(CKMessageSearchResultCell *)self setGradientReferenceView:v12];

  [(CKMessageSearchResultCell *)self configureWithQueryResult:v14 searchText:v13 mode:a5];
}

- (void)configureWithQueryResult:(id)a3 searchText:(id)a4 mode:(unint64_t)a5
{
  v7 = a4;
  v8 = a3;
  [(CKMessageSearchResultCell *)self _configureBalloonViewForResult:v8 searchText:v7];
  [(CKMessageSearchResultCell *)self _configureAvatarForResult:v8];
  [(CKMessageSearchResultCell *)self _configureSenderLabelForResult:v8 searchText:v7];

  [(CKMessageSearchResultCell *)self _configureDateLabelForResult:v8];

  [(CKMessageSearchResultCell *)self _configureLabelFonts];
}

- (void)_configureLabelFonts
{
  v3 = [(CKMessageSearchResultCell *)self isFromGroupConversation];
  v4 = +[CKUIBehavior sharedBehaviors];
  v5 = v4;
  if (v3)
  {
    [v4 searchMessagesGroupConversationFont];
  }

  else
  {
    [v4 searchMessagesDMConversationFont];
  }
  v10 = ;

  v6 = [(CKMessageSearchResultCell *)self conversationNameLabel];
  [v6 setFont:v10];

  v7 = +[CKUIBehavior sharedBehaviors];
  v8 = [v7 searchMessagesSenderFont];
  v9 = [(CKMessageSearchResultCell *)self senderLabel];
  [v9 setFont:v8];
}

- (void)_configureSenderLabelForResult:(id)a3 searchText:(id)a4
{
  v15 = a3;
  if ([(CKMessageSearchResultCell *)self isFromMe])
  {
    v5 = 0;
  }

  else
  {
    v6 = [v15 item];
    v7 = [v6 attributeSet];
    v8 = [v7 attributeDictionary];
    v9 = [v8 valueForKey:*MEMORY[0x1E6963D18]];

    v5 = [v9 firstObject];
  }

  v10 = [v15 conversation];
  if ([v10 hasDisplayName])
  {
    [v10 displayName];
  }

  else
  {
    [v10 name];
  }
  v11 = ;
  v12 = [(CKMessageSearchResultCell *)self conversationNameLabel];
  [v12 setText:v11];

  if ([(CKMessageSearchResultCell *)self isFromGroupConversation])
  {
    v13 = v5;
  }

  else
  {
    v13 = 0;
  }

  v14 = [(CKMessageSearchResultCell *)self senderLabel];
  [v14 setText:v13];
}

- (void)_configureDateLabelForResult:(id)a3
{
  v7 = [a3 item];
  v4 = [v7 attributeSet];
  v5 = [v4 contentCreationDate];

  v6 = [(CKMessageSearchResultCell *)self dateLabel];
  [v6 setDate:v5];
}

- (void)_configureBalloonViewForResult:(id)a3 searchText:(id)a4
{
  v6 = a3;
  v7 = [(CKMessageSearchResultCell *)self _annotatedResultStringForResult:v6 searchText:a4];
  v8 = [v6 service];

  if ([(CKMessageSearchResultCell *)self isFromMe])
  {
    v9 = [v8 __ck_displayColor];
    v10 = 1;
  }

  else
  {
    v10 = 0;
    v9 = -1;
  }

  v11 = +[CKUIBehavior sharedBehaviors];
  v12 = [(CKMessageSearchResultCell *)self traitCollection];
  v13 = *MEMORY[0x1E69A6E08];
  v14 = *(MEMORY[0x1E69A6E08] + 8);
  v15 = *(MEMORY[0x1E69A6E08] + 16);
  v16 = *(MEMORY[0x1E69A6E08] + 24);
  [v11 balloonCornerRadius];
  v18 = v17;
  memset(v44, 0, sizeof(v44));
  memset(v54, 0, sizeof(v54));
  v58 = 0;
  v59 = 0;
  v19 = [v12 userInterfaceStyle];
  v20 = [(CKMessageSearchResultCell *)self balloonView];
  v37 = 256;
  v38 = 0;
  v39 = v10;
  v40 = 0;
  v41 = -1;
  v42 = v18;
  v43 = v9;
  v45 = v13;
  v46 = v14;
  v47 = v15;
  v48 = v16;
  v49 = v13;
  v50 = v14;
  v51 = v15;
  v52 = v16;
  v53 = 0;
  v55 = v19;
  memset(v56, 0, sizeof(v56));
  v57 = 1;
  [v20 setBalloonDescriptor:&v37];

  v21 = [(CKMessageSearchResultCell *)self balloonView];
  [v21 setAttributedText:v7];

  v22 = [(CKMessageSearchResultCell *)self balloonView];
  [v22 setHasTail:1];

  v23 = [(CKMessageSearchResultCell *)self balloonView];
  v24 = [(CKMessageSearchResultCell *)self gradientReferenceView];
  [v23 setGradientReferenceView:v24];

  v25 = [(CKMessageSearchResultCell *)self balloonView];
  [v25 setNeedsPrepareForDisplay];

  v26 = [(CKMessageSearchResultCell *)self balloonView];
  [v26 prepareForDisplay];

  if ([(CKMessageSearchResultCell *)self isFromMe])
  {
    v27 = [(CKMessageSearchResultCell *)self balloonView];
    v28 = [v27 layer];
    [v28 setCompositingFilter:0];

    v29 = [(CKMessageSearchResultCell *)self contentView];
    v30 = [v29 layer];
    [v30 setAllowsGroupBlending:1];
  }

  else
  {
    v31 = [(CKMessageSearchResultCell *)self traitCollection];
    v32 = [v31 userInterfaceStyle];

    v29 = [(CKMessageSearchResultCell *)self _balloonFilterForUserInterfaceStyle:v32];
    v30 = [MEMORY[0x1E6979378] filterWithType:v29];
    v33 = [(CKMessageSearchResultCell *)self balloonView];
    v34 = [v33 layer];
    [v34 setCompositingFilter:v30];

    v35 = [(CKMessageSearchResultCell *)self contentView];
    v36 = [v35 layer];
    [v36 setAllowsGroupBlending:0];
  }
}

- (void)_configureAvatarForResult:(id)a3
{
  v20 = a3;
  v4 = [(CKMessageSearchResultCell *)self isFromMe];
  avatarView = self->_avatarView;
  if (v4)
  {
    [(CKAvatarView *)avatarView removeFromSuperview];
    v6 = self->_avatarView;
    self->_avatarView = 0;
  }

  else
  {
    if (!avatarView)
    {
      v7 = *MEMORY[0x1E695EFF8];
      v8 = *(MEMORY[0x1E695EFF8] + 8);
      v9 = +[CKUIBehavior sharedBehaviors];
      [v9 searchMessagesAvatarSize];
      v11 = v10;
      v13 = v12;

      v14 = [[CKAvatarView alloc] initWithFrame:v7, v8, v11, v13];
      v15 = self->_avatarView;
      self->_avatarView = v14;

      [(CNAvatarView *)self->_avatarView setAsynchronousRendering:1];
      [(CKAvatarView *)self->_avatarView setUserInteractionEnabled:0];
      [(CNAvatarView *)self->_avatarView setShowsContactOnTap:0];
      [(CNAvatarView *)self->_avatarView setDelegate:0];
      [(CNAvatarView *)self->_avatarView setBypassActionValidation:1];
      v16 = [(CKMessageSearchResultCell *)self contentView];
      [v16 addSubview:self->_avatarView];

      avatarView = self->_avatarView;
    }

    if ([(CNAvatarView *)avatarView isDisplayingContent])
    {
      [(CNAvatarView *)self->_avatarView setAllowStaleRendering:1];
    }

    v6 = [v20 conversation];
    if ([v6 isBusinessConversation])
    {
      v17 = [MEMORY[0x1E695D0C0] maxContactAvatars];
      v18 = [v6 conversationVisualIdentityWithKeys:MEMORY[0x1E695E0F0] requestedNumberOfContactsToFetch:v17];
      v19 = [(CNAvatarView *)self->_avatarView updateViewWithGroupIdentity:v18];
    }

    else
    {
      v18 = [CKSpotlightQueryResultUtilities contactForResult:v20];
      [(CNAvatarView *)self->_avatarView setContact:v18];
    }

    -[CNAvatarView setStyle:](self->_avatarView, "setStyle:", [v6 shouldHaveRoundRectAvatar]);
    [(CKMessageSearchResultCell *)self setNeedsLayout];
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(CKMessageSearchResultCell *)self layoutIfNeeded:a3.width];
  v4 = [(CKMessageSearchResultCell *)self contentView];
  [v4 bounds];
  v6 = v5;

  v7 = [(CKMessageSearchResultCell *)self balloonView];
  [v7 frame];
  MaxY = CGRectGetMaxY(v13);
  [(CKMessageSearchResultCell *)self visibilityContext];

  v9 = v6;
  v10 = MaxY + v11;
  result.height = v10;
  result.width = v9;
  return result;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = CKMessageSearchResultCell;
  [(CKEditableSearchResultCell *)&v3 layoutSubviews];
  [(CKMessageSearchResultCell *)self _layoutInternalSubviews];
}

- (void)_layoutInternalSubviews
{
  [(CKMessageSearchResultCell *)self marginInsets];
  v4 = v3;
  [(CKMessageSearchResultCell *)self marginInsets];
  v6 = v5;
  v7 = [(CKMessageSearchResultCell *)self contentView];
  [v7 bounds];
  v9 = v8;

  v10 = [(CKMessageSearchResultCell *)self _shouldReverseLayoutDirection];
  v11 = +[CKUIBehavior sharedBehaviors];
  v12 = [v11 isAccessibilityPreferredContentSizeCategory];

  v141 = v9 - v4;
  v13 = v9 - v4 - v6;
  v14 = [(CKMessageSearchResultCell *)self dateLabel];
  [v14 sizeThatFits:{v13, 1.79769313e308}];
  v16 = v15;
  v18 = v17;

  v19 = [(CKMessageSearchResultCell *)self dateLabel];
  [v19 setFrame:{0.0, 0.0, v16, v18}];

  if ((v12 & 1) != 0 || v16 > v13 / 3.0)
  {
    v20 = 1;
    v21 = v9 - v4 - v6;
  }

  else
  {
    v20 = 0;
    v21 = v13 - v16;
  }

  v22 = [(CKMessageSearchResultCell *)self conversationNameLabel];
  [v22 sizeThatFits:{v21, 1.79769313e308}];
  v24 = v23;
  v26 = v25;

  v27 = [(CKMessageSearchResultCell *)self conversationNameLabel];
  [v27 setFrame:{0.0, 0.0, v24, v26}];

  v28 = [(CKMessageSearchResultCell *)self senderLabel];
  [v28 sizeThatFits:{v21, 1.79769313e308}];
  v30 = v29;
  v32 = v31;

  v33 = [(CKMessageSearchResultCell *)self senderLabel];
  [v33 setFrame:{0.0, 0.0, v30, v32}];

  [(CKMessageSearchResultCell *)self visibilityContext];
  v34 = *&v149[2];
  [(CKMessageSearchResultCell *)self visibilityContext];
  v149[0] = v148;
  [(CKMessageSearchResultCell *)self visibilityContext];
  v35 = [(CKMessageSearchResultCell *)self conversationNameLabel];
  v36 = v35;
  if (v147 == 1)
  {
    [v35 setHidden:0];

    v37 = [(CKMessageSearchResultCell *)self conversationNameLabel];
    [v37 frame];
    v39 = v38;
    v40 = [(CKMessageSearchResultCell *)self conversationNameLabel];
    [v40 frame];
    v42 = v41;
    v43 = [(CKMessageSearchResultCell *)self conversationNameLabel];
    [v43 setFrame:{v4, v34, v39, v42}];

    v44 = [(CKMessageSearchResultCell *)self conversationNameLabel];
    v36 = [(CKMessageSearchResultCell *)self conversationNameLabel];
    [(CKMessageSearchResultCell *)self _proposedBalloonY:v149 afterLayoutForView:v36];
  }

  else
  {
    [v35 setHidden:1];
    v44 = 0;
  }

  [(CKMessageSearchResultCell *)self visibilityContext];
  if (v146 == 1)
  {
    [(CKMessageSearchResultCell *)self visibilityContext];
    if (v145 == 1)
    {
      [v44 frame];
      MaxY = CGRectGetMaxY(v150);
      v46 = +[CKUIBehavior sharedBehaviors];
      [v46 searchMessagesConversationToSenderSpacing];
      v34 = MaxY + v47;
    }

    v48 = [(CKMessageSearchResultCell *)self senderLabel];
    [v48 setHidden:0];

    v49 = [(CKMessageSearchResultCell *)self senderLabel];
    [v49 frame];
    v51 = v50;
    v52 = [(CKMessageSearchResultCell *)self senderLabel];
    [v52 frame];
    v54 = v53;
    v55 = [(CKMessageSearchResultCell *)self senderLabel];
    [v55 setFrame:{v4, v34, v51, v54}];

    v56 = [(CKMessageSearchResultCell *)self senderLabel];

    v57 = [(CKMessageSearchResultCell *)self senderLabel];
    [(CKMessageSearchResultCell *)self _proposedBalloonY:v149 afterLayoutForView:v57];
    v44 = v56;
  }

  else
  {
    v57 = [(CKMessageSearchResultCell *)self senderLabel];
    [v57 setHidden:0];
  }

  [(CKMessageSearchResultCell *)self visibilityContext];
  if (v144 == 1)
  {
    if (v20)
    {
      [v44 frame];
      v58 = CGRectGetMaxY(v151);
      v59 = +[CKUIBehavior sharedBehaviors];
      [v59 searchMessagesConversationToSenderSpacing];
      v34 = v58 + v60;
      v61 = v4;
    }

    else
    {
      v59 = [(CKMessageSearchResultCell *)self dateLabel];
      [v59 frame];
      v61 = v9 - v6 - v63;
    }

    v64 = [(CKMessageSearchResultCell *)self dateLabel];

    v65 = [(CKMessageSearchResultCell *)self dateLabel];
    [v65 setHidden:0];

    v66 = [(CKMessageSearchResultCell *)self dateLabel];
    [v66 frame];
    v68 = v67;
    v69 = [(CKMessageSearchResultCell *)self dateLabel];
    [v69 frame];
    v71 = v70;
    v72 = [(CKMessageSearchResultCell *)self dateLabel];
    [v72 setFrame:{v61, v34, v68, v71}];

    v62 = [(CKMessageSearchResultCell *)self dateLabel];
    [(CKMessageSearchResultCell *)self _proposedBalloonY:v149 afterLayoutForView:v62];
    v44 = v64;
  }

  else
  {
    v62 = [(CKMessageSearchResultCell *)self dateLabel];
    [v62 setHidden:1];
  }

  v73 = *v149;
  if (v44)
  {
    v74 = +[CKUIBehavior sharedBehaviors];
    [v74 searchMessagesSenderToBalloonSpacing];
    v73 = v73 + v75;
  }

  v76 = [(CKMessageSearchResultCell *)self chevronImageView];
  [v76 frame];
  v78 = v77;
  v80 = v79;

  v81 = +[CKUIBehavior sharedBehaviors];
  [v81 searchMessagesHorizontalBalloonMargin];
  v83 = v13 - v78 - v82;

  v84 = [(CKMessageSearchResultCell *)self balloonView];
  [v84 sizeThatFits:{v83, 1.79769313e308}];
  v86 = v85;
  v88 = v87;

  v89 = v9 - v6;
  v90 = v4;
  if (!v10)
  {
    v4 = v89 - v78;
  }

  v142 = v90;
  v91 = v73;
  v92 = v86;
  v93 = v88;
  v94 = CGRectGetMidY(*&v90) - v80 * 0.5;
  v95 = [(CKMessageSearchResultCell *)self chevronImageView];
  v140 = v4;
  [v95 setFrame:{v4, v94, v78, v80}];

  v96 = [(CKMessageSearchResultCell *)self isFromMe];
  if (v10)
  {
    if (v96)
    {
      v97 = v89 - v86;
LABEL_30:
      v110 = v142;
      goto LABEL_32;
    }

    v98 = [(CKMessageSearchResultCell *)self chevronImageView];
    [v98 frame];
    MaxX = CGRectGetMaxX(v153);
    v100 = +[CKUIBehavior sharedBehaviors];
    [v100 searchMessagesBalloonToChevronSpacing];
    v104 = MaxX + v103;
    v105 = +[CKUIBehavior sharedBehaviors];
    [v105 searchMessagesAvatarSize];
    v107 = v104 + v106;
    v108 = +[CKUIBehavior sharedBehaviors];
    [v108 contactPhotoBalloonMargin];
    v97 = v107 + v109;

LABEL_29:
    goto LABEL_30;
  }

  if (v96)
  {
    v98 = [(CKMessageSearchResultCell *)self chevronImageView];
    [v98 frame];
    MinX = CGRectGetMinX(v152);
    v100 = +[CKUIBehavior sharedBehaviors];
    [v100 searchMessagesBalloonToChevronSpacing];
    v97 = MinX - v101 - v86;
    goto LABEL_29;
  }

  v111 = +[CKUIBehavior sharedBehaviors];
  [v111 searchMessagesAvatarSize];
  v110 = v142;
  v113 = v142 + v112;
  v114 = +[CKUIBehavior sharedBehaviors];
  [v114 contactPhotoBalloonMargin];
  v97 = v113 + v115;

LABEL_32:
  v116 = [(CKMessageSearchResultCell *)self balloonView];
  [v116 setFrame:{v97, v73, v86, v88}];

  v117 = [(CKMessageSearchResultCell *)self avatarView];
  [v117 frame];
  v119 = v118;
  v121 = v120;

  v122 = v110;
  if (v10)
  {
    v123 = [(CKMessageSearchResultCell *)self chevronImageView];
    [v123 frame];
    v124 = CGRectGetMaxX(v154);
    v125 = +[CKUIBehavior sharedBehaviors];
    [v125 searchMessagesBalloonToChevronSpacing];
    v122 = v124 + v126;
  }

  v127 = [(CKMessageSearchResultCell *)self balloonView];
  [v127 frame];
  v128 = CGRectGetMaxY(v155);
  v129 = +[CKUIBehavior sharedBehaviors];
  [v129 searchMessagesAvatarSize];
  v131 = v128 - v130;

  v132 = [(CKMessageSearchResultCell *)self avatarView];
  [v132 setFrame:{v122, v131, v119, v121}];

  if (v10 && ![(CKMessageSearchResultCell *)self isFromMe])
  {
    v156.origin.x = v122;
    v156.origin.y = v131;
    v156.size.width = v119;
    v156.size.height = v121;
    v133 = CGRectGetMidY(v156) - v80 * 0.5;
    v134 = [(CKMessageSearchResultCell *)self chevronImageView];
    [v134 setFrame:{v140, v133, v78, v80}];
  }

  [(CKMessageSearchResultCell *)self visibilityContext];
  if (v143 == 1)
  {
    v135 = +[CKUIBehavior sharedBehaviors];
    [v135 defaultSeparatorHeight];
    v137 = v136;
    v138 = [(CKMessageSearchResultCell *)self groupingSeparatorView];
    [v138 setFrame:{v110, 0.0, v141, v137}];
  }

  v139 = [(CKMessageSearchResultCell *)self groupingSeparatorView];
  [v139 setHidden:v143 ^ 1u];
}

- (void)_proposedBalloonY:(double *)a3 afterLayoutForView:(id)a4
{
  [a4 frame];
  MaxY = CGRectGetMaxY(v6);
  if (*a3 >= MaxY)
  {
    MaxY = *a3;
  }

  *a3 = MaxY;
}

- (id)_annotatedResultStringForResult:(id)a3 searchText:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 item];
  v9 = [v8 attributeSet];
  v10 = [v9 __ck_spotlightItemSnippet];

  v11 = [v10 length];
  v12 = +[CKUIBehavior sharedBehaviors];
  v13 = [v12 searchMessagesMaxSummaryLength];

  if (v11 > v13)
  {
    v14 = +[CKUIBehavior sharedBehaviors];
    v15 = [v10 ck_trimmedStringWithPreferredLength:objc_msgSend(v14 anchoredAroundSubstring:{"searchMessagesMaxSummaryLength"), v7}];

    v10 = v15;
  }

  if ([v10 length])
  {
    v16 = +[CKUIBehavior sharedBehaviors];
    v17 = [v16 searchMessagesBalloonFont];

    if ([(CKMessageSearchResultCell *)self isFromMe])
    {
      v18 = +[CKUIBehavior sharedBehaviors];
      v19 = [v18 searchMessagesFromMeUnannotatedLabelColor];
    }

    else
    {
      v19 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    }

    if ([(CKMessageSearchResultCell *)self isFromMe])
    {
      [MEMORY[0x1E69DC888] whiteColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] labelColor];
    }
    v22 = ;
    v21 = [CKSpotlightQueryUtilities annotatedResultStringWithSearchText:v7 resultText:v10 primaryTextColor:v19 primaryFont:v17 annotatedTextColor:v22 annotatedFont:v17];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v20 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v24 = 138412290;
        v25 = v6;
        _os_log_impl(&dword_19020E000, v20, OS_LOG_TYPE_INFO, "Could not identify snippet for result: %@", &v24, 0xCu);
      }
    }

    v21 = 0;
  }

  return v21;
}

- (id)_balloonFilterForUserInterfaceStyle:(int64_t)a3
{
  if (UIAccessibilityIsReduceTransparencyEnabled() || UIAccessibilityIsReduceMotionEnabled())
  {
    goto LABEL_6;
  }

  if (a3 == 1)
  {
    v4 = MEMORY[0x1E6979CE8];
    goto LABEL_11;
  }

  if (a3 != 2)
  {
LABEL_6:
    v5 = 0;
    goto LABEL_7;
  }

  v4 = MEMORY[0x1E6979CF8];
LABEL_11:
  v5 = *v4;
LABEL_7:

  return v5;
}

- (void)prepareForReuse
{
  v8.receiver = self;
  v8.super_class = CKMessageSearchResultCell;
  [(CKEditableSearchResultCell *)&v8 prepareForReuse];
  v3 = *MEMORY[0x1E695F058];
  v4 = *(MEMORY[0x1E695F058] + 8);
  v5 = *(MEMORY[0x1E695F058] + 16);
  v6 = *(MEMORY[0x1E695F058] + 24);
  v7 = [(CKMessageSearchResultCell *)self balloonView];
  [v7 setFrame:{v3, v4, v5, v6}];
}

- (void)setHighlighted:(BOOL)a3
{
  v11.receiver = self;
  v11.super_class = CKMessageSearchResultCell;
  [(CKMessageSearchResultCell *)&v11 setHighlighted:?];
  v5 = [CKBalloonSelectionState balloonSelectionState:0];
  v6 = MEMORY[0x1E69DD250];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __44__CKMessageSearchResultCell_setHighlighted___block_invoke;
  v8[3] = &unk_1E72EBBC0;
  v10 = a3;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  [v6 performWithoutAnimation:v8];
}

void __44__CKMessageSearchResultCell_setHighlighted___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) balloonView];
  [v2 setSelected:*(a1 + 48) withSelectionState:*(a1 + 40)];
}

- (UIEdgeInsets)marginInsets
{
  top = self->marginInsets.top;
  left = self->marginInsets.left;
  bottom = self->marginInsets.bottom;
  right = self->marginInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (void)setVisibilityContext:(CKMessageSearchResultVisibilityContext *)a3
{
  bottomSpacing = a3->bottomSpacing;
  *&self->_visibilityContext.isGroupedResult = *&a3->isGroupedResult;
  self->_visibilityContext.bottomSpacing = bottomSpacing;
}

- (CKGradientReferenceView)gradientReferenceView
{
  WeakRetained = objc_loadWeakRetained(&self->_gradientReferenceView);

  return WeakRetained;
}

@end