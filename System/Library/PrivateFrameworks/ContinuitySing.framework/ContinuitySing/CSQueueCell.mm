@interface CSQueueCell
- (CSQueueCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)prepareForReuse;
- (void)setContent:(id)content;
- (void)setIsNowPlaying:(BOOL)playing;
- (void)setParticipantInfo:(id)info;
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

- (CSQueueCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = CSQueueCell;
  v4 = [(CSQueueCell *)&v7 initWithStyle:style reuseIdentifier:identifier];
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

  layer = [(CSArtworkImageView *)self->_albumArtImageView layer];
  [layer setCornerRadius:6.0];

  [(CSArtworkImageView *)self->_albumArtImageView setClipsToBounds:1];
  [(CSArtworkImageView *)self->_albumArtImageView setContentMode:4];
  v6 = [MEMORY[0x277D75340] colorWithRed:0.196078431 green:0.192156863 blue:0.215686275 alpha:1.0];
  [(CSArtworkImageView *)self->_albumArtImageView setBackgroundColor:v6];

  contentView = [(CSQueueCell *)self contentView];
  [contentView addSubview:self->_albumArtImageView];
}

- (void)setupParticipantBadgeView
{
  v3 = objc_alloc_init(MEMORY[0x277D755E8]);
  participantBadgeView = self->_participantBadgeView;
  self->_participantBadgeView = v3;

  layer = [(UIImageView *)self->_participantBadgeView layer];
  [layer setCornerRadius:16.0];

  blackColor = [MEMORY[0x277D75340] blackColor];
  cGColor = [blackColor CGColor];
  layer2 = [(UIImageView *)self->_participantBadgeView layer];
  [layer2 setBorderColor:cGColor];

  layer3 = [(UIImageView *)self->_participantBadgeView layer];
  [layer3 setBorderWidth:1.0];

  whiteColor = [MEMORY[0x277D75340] whiteColor];
  [(UIImageView *)self->_participantBadgeView setBackgroundColor:whiteColor];

  [(UIImageView *)self->_participantBadgeView setClipsToBounds:1];
  [(UIImageView *)self->_participantBadgeView setContentMode:1];
  [(UIImageView *)self->_participantBadgeView setHidden:1];
  contentView = [(CSQueueCell *)self contentView];
  [contentView addSubview:self->_participantBadgeView];
}

- (void)setupLabelsStackView
{
  v3 = objc_alloc_init(MEMORY[0x277D75A70]);
  labelsStackView = self->_labelsStackView;
  self->_labelsStackView = v3;

  [(UIStackView *)self->_labelsStackView setAxis:1];
  [(UIStackView *)self->_labelsStackView setSpacing:0.0];
  contentView = [(CSQueueCell *)self contentView];
  [contentView addSubview:self->_labelsStackView];
}

- (void)setupTitleLabel
{
  v3 = objc_alloc_init(MEMORY[0x277D756C0]);
  titleLabel = self->_titleLabel;
  self->_titleLabel = v3;

  [(UILabel *)self->_titleLabel setNumberOfLines:1];
  labelColor = [MEMORY[0x277D75340] labelColor];
  [(UILabel *)self->_titleLabel setTextColor:labelColor];

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
  secondaryLabelColor = [MEMORY[0x277D75340] secondaryLabelColor];
  [(UILabel *)self->_artistLabel setTextColor:secondaryLabelColor];

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
  topAnchor = [(UIStackView *)self->_labelsStackView topAnchor];
  contentView = [(CSQueueCell *)self contentView];
  topAnchor2 = [contentView topAnchor];
  v6 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:8.0];
  labelsStackViewYPositionConstraint = self->_labelsStackViewYPositionConstraint;
  self->_labelsStackViewYPositionConstraint = v6;

  heightAnchor = [(CSArtworkImageView *)self->_albumArtImageView heightAnchor];
  contentView2 = [(CSQueueCell *)self contentView];
  heightAnchor2 = [contentView2 heightAnchor];
  v11 = [heightAnchor constraintEqualToAnchor:heightAnchor2 multiplier:0.857142857];
  albumArtImageViewUnattributedHeightConstraint = self->_albumArtImageViewUnattributedHeightConstraint;
  self->_albumArtImageViewUnattributedHeightConstraint = v11;

  heightAnchor3 = [(CSArtworkImageView *)self->_albumArtImageView heightAnchor];
  contentView3 = [(CSQueueCell *)self contentView];
  heightAnchor4 = [contentView3 heightAnchor];
  v16 = [heightAnchor3 constraintEqualToAnchor:heightAnchor4 multiplier:0.571428571];
  albumArtImageViewAttributedHeightConstraint = self->_albumArtImageViewAttributedHeightConstraint;
  self->_albumArtImageViewAttributedHeightConstraint = v16;

  v40 = MEMORY[0x277CCAAD0];
  leadingAnchor = [(CSArtworkImageView *)self->_albumArtImageView leadingAnchor];
  contentView4 = [(CSQueueCell *)self contentView];
  leadingAnchor2 = [contentView4 leadingAnchor];
  v48 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:35.0];
  v52[0] = v48;
  topAnchor3 = [(CSArtworkImageView *)self->_albumArtImageView topAnchor];
  contentView5 = [(CSQueueCell *)self contentView];
  topAnchor4 = [contentView5 topAnchor];
  v44 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:4.0];
  v18 = self->_albumArtImageViewUnattributedHeightConstraint;
  v52[1] = v44;
  v52[2] = v18;
  widthAnchor = [(CSArtworkImageView *)self->_albumArtImageView widthAnchor];
  heightAnchor5 = [(CSArtworkImageView *)self->_albumArtImageView heightAnchor];
  v41 = [widthAnchor constraintEqualToAnchor:heightAnchor5];
  v52[3] = v41;
  centerXAnchor = [(UIImageView *)self->_participantBadgeView centerXAnchor];
  trailingAnchor = [(CSArtworkImageView *)self->_albumArtImageView trailingAnchor];
  v37 = [centerXAnchor constraintEqualToAnchor:trailingAnchor];
  v52[4] = v37;
  centerYAnchor = [(UIImageView *)self->_participantBadgeView centerYAnchor];
  bottomAnchor = [(CSArtworkImageView *)self->_albumArtImageView bottomAnchor];
  v34 = [centerYAnchor constraintEqualToAnchor:bottomAnchor];
  v52[5] = v34;
  widthAnchor2 = [(UIImageView *)self->_participantBadgeView widthAnchor];
  v32 = [widthAnchor2 constraintEqualToConstant:32.0];
  v52[6] = v32;
  heightAnchor6 = [(UIImageView *)self->_participantBadgeView heightAnchor];
  widthAnchor3 = [(UIImageView *)self->_participantBadgeView widthAnchor];
  v19 = [heightAnchor6 constraintEqualToAnchor:widthAnchor3];
  v52[7] = v19;
  leadingAnchor3 = [(UIStackView *)self->_labelsStackView leadingAnchor];
  contentView6 = [(CSQueueCell *)self contentView];
  leadingAnchor4 = [contentView6 leadingAnchor];
  v23 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:94.0];
  v52[8] = v23;
  trailingAnchor2 = [(UIStackView *)self->_labelsStackView trailingAnchor];
  contentView7 = [(CSQueueCell *)self contentView];
  trailingAnchor3 = [contentView7 trailingAnchor];
  v27 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3 constant:-35.0];
  v28 = self->_labelsStackViewYPositionConstraint;
  v52[9] = v27;
  v52[10] = v28;
  v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:11];
  [v40 activateConstraints:v29];
}

- (void)setContent:(id)content
{
  contentCopy = content;
  if (self->_content != contentCopy)
  {
    v6 = contentCopy;
    objc_storeStrong(&self->_content, content);
    [(CSQueueCell *)self updateContent];
    contentCopy = v6;
  }
}

- (void)setParticipantInfo:(id)info
{
  infoCopy = info;
  if (self->_participantInfo != infoCopy)
  {
    objc_storeStrong(&self->_participantInfo, info);
    if ([(CSArtworkImageView *)self->_albumArtImageView contentMode]== 4)
    {
      [(CSQueueCell *)self updateAlbumArtworkPlaceholder];
    }

    if (infoCopy)
    {
      [(NSLayoutConstraint *)self->_albumArtImageViewUnattributedHeightConstraint setActive:0];
      [(NSLayoutConstraint *)self->_albumArtImageViewAttributedHeightConstraint setActive:1];
      v6 = +[CSQueueAttributionManager sharedManager];
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __34__CSQueueCell_setParticipantInfo___block_invoke;
      v7[3] = &unk_278E0AE40;
      v8 = infoCopy;
      selfCopy = self;
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

- (void)setIsNowPlaying:(BOOL)playing
{
  if (self->_isNowPlaying != playing)
  {
    self->_isNowPlaying = playing;
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

    layer = [(CSArtworkImageView *)self->_albumArtImageView layer];
    [layer setCornerRadius:v5];
  }
}

- (void)updateContent
{
  metadataObject = [(MPCPlayerResponseItem *)self->_content metadataObject];
  content = [(CSArtworkImageView *)self->_albumArtImageView content];
  metadataObject2 = [content metadataObject];
  v6 = [metadataObject isEqual:metadataObject2];

  if ((v6 & 1) == 0)
  {
    [(CSQueueCell *)self updateAlbumArtworkPlaceholder];
    [(CSArtworkImageView *)self->_albumArtImageView setContent:self->_content];
  }

  metadataObject3 = [(MPCPlayerResponseItem *)self->_content metadataObject];
  song = [metadataObject3 song];
  title = [song title];
  [(UILabel *)self->_titleLabel setText:title];

  metadataObject4 = [(MPCPlayerResponseItem *)self->_content metadataObject];
  song2 = [metadataObject4 song];
  artist = [song2 artist];
  name = [artist name];
  [(UILabel *)self->_artistLabel setText:name];
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