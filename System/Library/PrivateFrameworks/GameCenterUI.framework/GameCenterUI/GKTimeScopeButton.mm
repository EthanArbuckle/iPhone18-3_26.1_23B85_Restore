@interface GKTimeScopeButton
- (GKTimeScopeButton)initWithFrame:(CGRect)frame;
- (void)awakeFromNib;
- (void)setLeaderboardOccurrence:(int64_t)occurrence;
- (void)setTimeScope:(int64_t)scope;
- (void)updateWithTitle:(id)title;
@end

@implementation GKTimeScopeButton

- (GKTimeScopeButton)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = GKTimeScopeButton;
  v3 = [(GKTimeScopeButton *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(GKTimeScopeButton *)v3 _commonInit];
  }

  return v4;
}

- (void)awakeFromNib
{
  v3.receiver = self;
  v3.super_class = GKTimeScopeButton;
  [(GKTimeScopeButton *)&v3 awakeFromNib];
  [(GKTimeScopeButton *)self _commonInit];
}

- (void)setTimeScope:(int64_t)scope
{
  self->_timeScope = scope;
  v4 = [MEMORY[0x277D0C0A0] localizedStringForTimeScope:?];
  [(GKTimeScopeButton *)self updateWithTitle:v4];
}

- (void)setLeaderboardOccurrence:(int64_t)occurrence
{
  self->_leaderboardOccurrence = occurrence;
  v4 = [MEMORY[0x277D0C0A0] localizedStringForLeaderboardOccurrence:?];
  [(GKTimeScopeButton *)self updateWithTitle:v4];
}

- (void)updateWithTitle:(id)title
{
  v18[2] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCAB48];
  titleCopy = title;
  v6 = objc_alloc_init(v4);
  v7 = MEMORY[0x277D74270];
  v8 = [MEMORY[0x277D755B8] systemImageNamed:@"chevron.down"];
  v9 = [v7 textAttachmentWithImage:v8];

  v10 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:titleCopy];
  [v6 appendAttributedString:v10];

  v11 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:@" "];
  [v6 appendAttributedString:v11];

  v12 = [MEMORY[0x277CCA898] attributedStringWithAttachment:v9];
  [v6 appendAttributedString:v12];

  v13 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76968]];
  if (*MEMORY[0x277D0C258])
  {
    [MEMORY[0x277D75348] systemWhiteColor];
  }

  else
  {
    [MEMORY[0x277D75348] secondaryLabelColor];
  }
  v14 = ;
  v15 = *MEMORY[0x277D740C0];
  v17[0] = *MEMORY[0x277D740A8];
  v17[1] = v15;
  v18[0] = v13;
  v18[1] = v14;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
  [v6 addAttributes:v16 range:{0, objc_msgSend(v6, "length")}];

  [(GKTimeScopeButton *)self setAttributedTitle:v6 forState:0];
}

@end