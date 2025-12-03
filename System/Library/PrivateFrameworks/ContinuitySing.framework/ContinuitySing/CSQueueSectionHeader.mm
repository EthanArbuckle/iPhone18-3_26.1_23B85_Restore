@interface CSQueueSectionHeader
- (CSQueueSectionHeader)init;
- (void)dealloc;
- (void)didMoveToSuperview;
- (void)setupConstraints;
- (void)setupPlayingNextLabel;
- (void)setupSingersLabel;
- (void)setupViews;
- (void)updateSingersText;
@end

@implementation CSQueueSectionHeader

- (CSQueueSectionHeader)init
{
  v6.receiver = self;
  v6.super_class = CSQueueSectionHeader;
  v2 = [(CSQueueSectionHeader *)&v6 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v3 = v2;
  if (v2)
  {
    [(CSQueueSectionHeader *)v2 setupViews];
    [(CSQueueSectionHeader *)v3 setupConstraints];
    v4 = +[CSShieldManager sharedManager];
    [v4 addObserver:v3];
  }

  return v3;
}

- (void)dealloc
{
  v3 = +[CSShieldManager sharedManager];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = CSQueueSectionHeader;
  [(CSQueueSectionHeader *)&v4 dealloc];
}

- (void)didMoveToSuperview
{
  v5.receiver = self;
  v5.super_class = CSQueueSectionHeader;
  [(CSQueueSectionHeader *)&v5 didMoveToSuperview];
  superview = [(CSQueueSectionHeader *)self superview];
  backgroundColor = [superview backgroundColor];
  [(CSQueueSectionHeader *)self setBackgroundColor:backgroundColor];
}

- (void)setupViews
{
  [(CSQueueSectionHeader *)self setupPlayingNextLabel];

  [(CSQueueSectionHeader *)self setupSingersLabel];
}

- (void)setupPlayingNextLabel
{
  v3 = objc_alloc_init(MEMORY[0x277D756C0]);
  playingNextLabel = self->_playingNextLabel;
  self->_playingNextLabel = v3;

  v5 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.ContinuitySing"];
  v6 = [v5 localizedStringForKey:@"QUEUE_UP_NEXT_TITLE" value:&stru_285797E10 table:0];
  [(UILabel *)self->_playingNextLabel setText:v6];

  v7 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D76990] weight:*MEMORY[0x277D743F8]];
  [(UILabel *)self->_playingNextLabel setFont:v7];

  labelColor = [MEMORY[0x277D75340] labelColor];
  [(UILabel *)self->_playingNextLabel setTextColor:labelColor];

  v9 = self->_playingNextLabel;

  [(CSQueueSectionHeader *)self addSubview:v9];
}

- (void)setupSingersLabel
{
  v3 = objc_alloc_init(MEMORY[0x277D756C0]);
  singersLabel = self->_singersLabel;
  self->_singersLabel = v3;

  v5 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76970]];
  [(UILabel *)self->_singersLabel setFont:v5];

  secondaryLabelColor = [MEMORY[0x277D75340] secondaryLabelColor];
  [(UILabel *)self->_singersLabel setTextColor:secondaryLabelColor];

  [(CSQueueSectionHeader *)self updateSingersText];
  v7 = self->_singersLabel;

  [(CSQueueSectionHeader *)self addSubview:v7];
}

- (void)updateSingersText
{
  v3 = +[CSShieldManager sharedManager];
  sessionState = [v3 sessionState];
  participants = [sessionState participants];
  v6 = [participants count];

  v7 = MEMORY[0x277CCACA8];
  v10 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.ContinuitySing"];
  v8 = [v10 localizedStringForKey:@"with %lld Singers" value:&stru_285797E10 table:@"ContinuitySing"];
  v9 = [v7 localizedStringWithFormat:v8, v6];
  [(UILabel *)self->_singersLabel setText:v9];
}

- (void)setupConstraints
{
  [(UILabel *)self->_playingNextLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_singersLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v17 = MEMORY[0x277CCAAD0];
  leadingAnchor = [(UILabel *)self->_playingNextLabel leadingAnchor];
  leadingAnchor2 = [(CSQueueSectionHeader *)self leadingAnchor];
  v23 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:32.0];
  v26[0] = v23;
  trailingAnchor = [(UILabel *)self->_playingNextLabel trailingAnchor];
  trailingAnchor2 = [(CSQueueSectionHeader *)self trailingAnchor];
  v20 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-8.0];
  v26[1] = v20;
  topAnchor = [(UILabel *)self->_playingNextLabel topAnchor];
  topAnchor2 = [(CSQueueSectionHeader *)self topAnchor];
  v16 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:20.0];
  v26[2] = v16;
  leadingAnchor3 = [(UILabel *)self->_singersLabel leadingAnchor];
  leadingAnchor4 = [(UILabel *)self->_playingNextLabel leadingAnchor];
  v13 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v26[3] = v13;
  trailingAnchor3 = [(UILabel *)self->_singersLabel trailingAnchor];
  trailingAnchor4 = [(UILabel *)self->_playingNextLabel trailingAnchor];
  v5 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v26[4] = v5;
  topAnchor3 = [(UILabel *)self->_singersLabel topAnchor];
  bottomAnchor = [(UILabel *)self->_playingNextLabel bottomAnchor];
  v8 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:3.0];
  v26[5] = v8;
  bottomAnchor2 = [(UILabel *)self->_singersLabel bottomAnchor];
  bottomAnchor3 = [(CSQueueSectionHeader *)self bottomAnchor];
  v11 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3 constant:-14.0];
  v26[6] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:7];
  [v17 activateConstraints:v12];
}

@end