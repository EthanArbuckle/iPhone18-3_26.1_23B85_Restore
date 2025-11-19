@interface CSQueueCell
- (CSQueueCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)prepareForReuse;
- (void)setContent:(id)a3;
- (void)setIsNowPlaying:(BOOL)a3;
- (void)setParticipantInfo:(id)a3;
- (void)setupAlbumArtImageView;
- (void)setupArtistLabel;
- (void)setupConstraints;
- (void)setupLabelsStackView;
- (void)setupParticipantBadgeView;
- (void)setupTitleLabel;
- (void)setupViews;
- (void)updateAlbumArtworkPlaceholder;
- (void)updateContent;
- (void)updateFonts;
@end

@implementation CSQueueCell

- (CSQueueCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v7.receiver = self;
  v7.super_class = CSQueueCell;
  v4 = [(CSQueueCell *)&v7 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(CSQueueCell *)v4 setupViews];
    [(CSQueueCell *)v5 setupConstraints];
    [(CSQueueCell *)v5 updateFonts];
    [(CSQueueCell *)v5 setEditingAccessoryType:0];
  }

  return v5;
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = CSQueueCell;
  [(CSQueueCell *)&v3 prepareForReuse];
  [(CSQueueCell *)self setContent:0];
  [(CSQueueCell *)self setParticipantInfo:0];
  [(CSQueueCell *)self updateAlbumArtworkPlaceholder];
  [(UIImageView *)self->_participantBadgeView setImage:0];
  [(UIImageView *)self->_participantBadgeView setHidden:1];
}

- (void)setupViews
{
  [(CSQueueCell *)self setupAlbumArtImageView];
  [(CSQueueCell *)self setupParticipantBadgeView];
  [(CSQueueCell *)self setupLabelsStackView];
  [(CSQueueCell *)self setupTitleLabel];

  [(CSQueueCell *)self setupArtistLabel];
}

- (void)setupAlbumArtImageView
{
  v3 = objc_alloc_init(CSArtworkImageView);
  albumArtImageView = self->_albumArtImageView;
  self->_albumArtImageView = v3;

  v5 = [(CSArtworkImageView *)self->_albumArtImageView layer];
  [v5 setCornerRadius:6.0];

  [(CSArtworkImageView *)self->_albumArtImageView setClipsToBounds:1];
  [(CSArtworkImageView *)self->_albumArtImageView setContentMode:4];
  v6 = [MEMORY[0x277D75340] colorWithRed:0.196078431 green:0.192156863 blue:0.215686275 alpha:1.0];
  [(CSArtworkImageView *)self->_albumArtImageView setBackgroundColor:v6];

  v7 = [(CSQueueCell *)self contentView];
  [v7 addSubview:self->_albumArtImageView];
}

- (void)setupParticipantBadgeView
{
  v3 = objc_alloc_init(MEMORY[0x277D755E8]);
  participantBadgeView = self->_participantBadgeView;
  self->_participantBadgeView = v3;

  v5 = [(UIImageView *)self->_participantBadgeView layer];
  [v5 setCornerRadius:16.0];

  v6 = [MEMORY[0x277D75340] blackColor];
  v7 = [v6 CGColor];
  v8 = [(UIImageView *)self->_participantBadgeView layer];
  [v8 setBorderColor:v7];

  v9 = [(UIImageView *)self->_participantBadgeView layer];
  [v9 setBorderWidth:1.0];

  v10 = [MEMORY[0x277D75340] whiteColor];
  [(UIImageView *)self->_participantBadgeView setBackgroundColor:v10];

  [(UIImageView *)self->_participantBadgeView setClipsToBounds:1];
  [(UIImageView *)self->_participantBadgeView setContentMode:1];
  [(UIImageView *)self->_participantBadgeView setHidden:1];
  v11 = [(CSQueueCell *)self contentView];
  [v11 addSubview:self->_participantBadgeView];
}

- (void)setupLabelsStackView
{
  v3 = objc_alloc_init(MEMORY[0x277D75A70]);
  labelsStackView = self->_labelsStackView;
  self->_labelsStackView = v3;

  [(UIStackView *)self->_labelsStackView setAxis:1];
  [(UIStackView *)self->_labelsStackView setSpacing:0.0];
  v5 = [(CSQueueCell *)self contentView];
  [v5 addSubview:self->_labelsStackView];
}

- (void)setupTitleLabel
{
  v3 = objc_alloc_init(MEMORY[0x277D756C0]);
  titleLabel = self->_titleLabel;
  self->_titleLabel = v3;

  [(UILabel *)self->_titleLabel setNumberOfLines:1];
  v5 = [MEMORY[0x277D75340] labelColor];
  [(UILabel *)self->_titleLabel setTextColor:v5];

  [(UILabel *)self->_titleLabel setMarqueeEnabled:1];
  labelsStackView = self->_labelsStackView;
  v7 = self->_titleLabel;

  [(UIStackView *)labelsStackView addArrangedSubview:v7];
}

- (void)setupArtistLabel
{
  v3 = objc_alloc_init(MEMORY[0x277D756C0]);
  artistLabel = self->_artistLabel;
  self->_artistLabel = v3;

  [(UILabel *)self->_artistLabel setNumberOfLines:1];
  v5 = [MEMORY[0x277D75340] secondaryLabelColor];
  [(UILabel *)self->_artistLabel setTextColor:v5];

  [(UILabel *)self->_artistLabel setMarqueeEnabled:1];
  labelsStackView = self->_labelsStackView;
  v7 = self->_artistLabel;

  [(UIStackView *)labelsStackView addArrangedSubview:v7];
}

- (void)setupConstraints
{
  [(CSArtworkImageView *)self->_albumArtImageView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIImageView *)self->_participantBadgeView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_artistLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIStackView *)self->_labelsStackView setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = [(UIStackView *)self->_labelsStackView topAnchor];
  v4 = [(CSQueueCell *)self contentView];
  v5 = [v4 topAnchor];
  v6 = [v3 constraintEqualToAnchor:v5 constant:8.0];
  labelsStackViewYPositionConstraint = self->_labelsStackViewYPositionConstraint;
  self->_labelsStackViewYPositionConstraint = v6;

  v8 = [(CSArtworkImageView *)self->_albumArtImageView heightAnchor];
  v9 = [(CSQueueCell *)self contentView];
  v10 = [v9 heightAnchor];
  v11 = [v8 constraintEqualToAnchor:v10 multiplier:0.857142857];
  albumArtImageViewUnattributedHeightConstraint = self->_albumArtImageViewUnattributedHeightConstraint;
  self->_albumArtImageViewUnattributedHeightConstraint = v11;

  v13 = [(CSArtworkImageView *)self->_albumArtImageView heightAnchor];
  v14 = [(CSQueueCell *)self contentView];
  v15 = [v14 heightAnchor];
  v16 = [v13 constraintEqualToAnchor:v15 multiplier:0.571428571];
  albumArtImageViewAttributedHeightConstraint = self->_albumArtImageViewAttributedHeightConstraint;
  self->_albumArtImageViewAttributedHeightConstraint = v16;

  v40 = MEMORY[0x277CCAAD0];
  v50 = [(CSArtworkImageView *)self->_albumArtImageView leadingAnchor];
  v51 = [(CSQueueCell *)self contentView];
  v49 = [v51 leadingAnchor];
  v48 = [v50 constraintEqualToAnchor:v49 constant:35.0];
  v52[0] = v48;
  v46 = [(CSArtworkImageView *)self->_albumArtImageView topAnchor];
  v47 = [(CSQueueCell *)self contentView];
  v45 = [v47 topAnchor];
  v44 = [v46 constraintEqualToAnchor:v45 constant:4.0];
  v18 = self->_albumArtImageViewUnattributedHeightConstraint;
  v52[1] = v44;
  v52[2] = v18;
  v43 = [(CSArtworkImageView *)self->_albumArtImageView widthAnchor];
  v42 = [(CSArtworkImageView *)self->_albumArtImageView heightAnchor];
  v41 = [v43 constraintEqualToAnchor:v42];
  v52[3] = v41;
  v39 = [(UIImageView *)self->_participantBadgeView centerXAnchor];
  v38 = [(CSArtworkImageView *)self->_albumArtImageView trailingAnchor];
  v37 = [v39 constraintEqualToAnchor:v38];
  v52[4] = v37;
  v36 = [(UIImageView *)self->_participantBadgeView centerYAnchor];
  v35 = [(CSArtworkImageView *)self->_albumArtImageView bottomAnchor];
  v34 = [v36 constraintEqualToAnchor:v35];
  v52[5] = v34;
  v33 = [(UIImageView *)self->_participantBadgeView widthAnchor];
  v32 = [v33 constraintEqualToConstant:32.0];
  v52[6] = v32;
  v31 = [(UIImageView *)self->_participantBadgeView heightAnchor];
  v30 = [(UIImageView *)self->_participantBadgeView widthAnchor];
  v19 = [v31 constraintEqualToAnchor:v30];
  v52[7] = v19;
  v20 = [(UIStackView *)self->_labelsStackView leadingAnchor];
  v21 = [(CSQueueCell *)self contentView];
  v22 = [v21 leadingAnchor];
  v23 = [v20 constraintEqualToAnchor:v22 constant:94.0];
  v52[8] = v23;
  v24 = [(UIStackView *)self->_labelsStackView trailingAnchor];
  v25 = [(CSQueueCell *)self contentView];
  v26 = [v25 trailingAnchor];
  v27 = [v24 constraintEqualToAnchor:v26 constant:-35.0];
  v28 = self->_labelsStackViewYPositionConstraint;
  v52[9] = v27;
  v52[10] = v28;
  v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:11];
  [v40 activateConstraints:v29];
}

- (void)setContent:(id)a3
{
  v5 = a3;
  if (self->_content != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_content, a3);
    [(CSQueueCell *)self updateContent];
    v5 = v6;
  }
}

- (void)setParticipantInfo:(id)a3
{
  v5 = a3;
  if (self->_participantInfo != v5)
  {
    objc_storeStrong(&self->_participantInfo, a3);
    if ([(CSArtworkImageView *)self->_albumArtImageView contentMode]== 4)
    {
      [(CSQueueCell *)self updateAlbumArtworkPlaceholder];
    }

    if (v5)
    {
      [(NSLayoutConstraint *)self->_albumArtImageViewUnattributedHeightConstraint setActive:0];
      [(NSLayoutConstraint *)self->_albumArtImageViewAttributedHeightConstraint setActive:1];
      v6 = +[CSQueueAttributionManager sharedManager];
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __34__CSQueueCell_setParticipantInfo___block_invoke;
      v7[3] = &unk_278E0AE40;
      v8 = v5;
      v9 = self;
      [v6 retrieveAvatarForParticipant:v8 withResultHandler:v7];
    }

    else
    {
      [(NSLayoutConstraint *)self->_albumArtImageViewAttributedHeightConstraint setActive:0];
      [(NSLayoutConstraint *)self->_albumArtImageViewUnattributedHeightConstraint setActive:1];
    }
  }
}

void __34__CSQueueCell_setParticipantInfo___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__CSQueueCell_setParticipantInfo___block_invoke_2;
  block[3] = &unk_278E0AE18;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v4;
  v9 = v5;
  v10 = v3;
  v6 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __34__CSQueueCell_setParticipantInfo___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) socialProfileIdentifier];
  v3 = [*(a1 + 40) participantInfo];
  v4 = [v3 socialProfileIdentifier];
  v5 = [v2 isEqualToString:v4];

  if (v5)
  {
    [*(*(a1 + 40) + 1048) setImage:*(a1 + 48)];
    if (*(a1 + 48))
    {
      v6 = *(*(a1 + 40) + 1048);

      [v6 setHidden:0];
    }
  }
}

- (void)setIsNowPlaying:(BOOL)a3
{
  if (self->_isNowPlaying != a3)
  {
    self->_isNowPlaying = a3;
    [(CSQueueCell *)self updateFonts];
    v4 = 8.0;
    if (self->_isNowPlaying)
    {
      v4 = 16.0;
    }

    [(NSLayoutConstraint *)self->_labelsStackViewYPositionConstraint setConstant:v4];
    if (self->_isNowPlaying)
    {
      v5 = 12.0;
    }

    else
    {
      v5 = 6.0;
    }

    v6 = [(CSArtworkImageView *)self->_albumArtImageView layer];
    [v6 setCornerRadius:v5];
  }
}

- (void)updateContent
{
  v3 = [(MPCPlayerResponseItem *)self->_content metadataObject];
  v4 = [(CSArtworkImageView *)self->_albumArtImageView content];
  v5 = [v4 metadataObject];
  v6 = [v3 isEqual:v5];

  if ((v6 & 1) == 0)
  {
    [(CSQueueCell *)self updateAlbumArtworkPlaceholder];
    [(CSArtworkImageView *)self->_albumArtImageView setContent:self->_content];
  }

  v7 = [(MPCPlayerResponseItem *)self->_content metadataObject];
  v8 = [v7 song];
  v9 = [v8 title];
  [(UILabel *)self->_titleLabel setText:v9];

  v13 = [(MPCPlayerResponseItem *)self->_content metadataObject];
  v10 = [v13 song];
  v11 = [v10 artist];
  v12 = [v11 name];
  [(UILabel *)self->_artistLabel setText:v12];
}

- (void)updateFonts
{
  v3 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D76928] weight:*MEMORY[0x277D74410]];
  [(UILabel *)self->_titleLabel setFont:v3];

  v4 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D76970] weight:*MEMORY[0x277D74418]];
  [(UILabel *)self->_artistLabel setFont:v4];
}

- (void)updateAlbumArtworkPlaceholder
{
  if (self->_participantInfo)
  {
    v3 = 14;
  }

  else
  {
    v3 = 20;
  }

  v4 = CSArtworkPlaceholderImage(v3);
  [(CSArtworkImageView *)self->_albumArtImageView setImage:v4];

  albumArtImageView = self->_albumArtImageView;

  [(CSArtworkImageView *)albumArtImageView setContentMode:4];
}

@end