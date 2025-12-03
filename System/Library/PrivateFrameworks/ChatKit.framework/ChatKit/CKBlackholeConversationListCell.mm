@interface CKBlackholeConversationListCell
- (CKBlackholeConversationListCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)configureForConversation:(id)conversation;
- (void)prepareForReuse;
@end

@implementation CKBlackholeConversationListCell

- (CKBlackholeConversationListCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v52.receiver = self;
  v52.super_class = CKBlackholeConversationListCell;
  v4 = [(CKBlackholeConversationListCell *)&v52 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(CKBlackholeConversationListCell *)v4 setSeparatorInset:*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)];
    [(CKBlackholeConversationListCell *)v5 setAccessoryType:1];
    v6 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    fromLabel = v5->_fromLabel;
    v5->_fromLabel = v6;

    contentView = [(CKBlackholeConversationListCell *)v5 contentView];
    [contentView addSubview:v5->_fromLabel];

    [(UILabel *)v5->_fromLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v9 = v5->_fromLabel;
    v10 = +[CKUIBehavior sharedBehaviors];
    conversationListSummaryFont = [v10 conversationListSummaryFont];
    [(UILabel *)v9 setFont:conversationListSummaryFont];

    topAnchor = [(UILabel *)v5->_fromLabel topAnchor];
    contentView2 = [(CKBlackholeConversationListCell *)v5 contentView];
    layoutMarginsGuide = [contentView2 layoutMarginsGuide];
    topAnchor2 = [layoutMarginsGuide topAnchor];
    v16 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [v16 setActive:1];

    leftAnchor = [(UILabel *)v5->_fromLabel leftAnchor];
    contentView3 = [(CKBlackholeConversationListCell *)v5 contentView];
    layoutMarginsGuide2 = [contentView3 layoutMarginsGuide];
    leftAnchor2 = [layoutMarginsGuide2 leftAnchor];
    v21 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
    [v21 setActive:1];

    rightAnchor = [(UILabel *)v5->_fromLabel rightAnchor];
    contentView4 = [(CKBlackholeConversationListCell *)v5 contentView];
    layoutMarginsGuide3 = [contentView4 layoutMarginsGuide];
    rightAnchor2 = [layoutMarginsGuide3 rightAnchor];
    v26 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
    [v26 setActive:1];

    v27 = objc_alloc_init(MEMORY[0x1E69DC918]);
    dateLabel = v5->_dateLabel;
    v5->_dateLabel = v27;

    contentView5 = [(CKBlackholeConversationListCell *)v5 contentView];
    [contentView5 addSubview:v5->_dateLabel];

    [(UIDateLabel *)v5->_dateLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v30 = v5->_dateLabel;
    v31 = +[CKUIBehavior sharedBehaviors];
    conversationListDateFont = [v31 conversationListDateFont];
    [(UIDateLabel *)v30 setFont:conversationListDateFont];

    v33 = v5->_dateLabel;
    v34 = +[CKUIBehavior sharedBehaviors];
    theme = [v34 theme];
    conversationListSummaryColor = [theme conversationListSummaryColor];
    [(UIDateLabel *)v33 setTextColor:conversationListSummaryColor];

    topAnchor3 = [(UIDateLabel *)v5->_dateLabel topAnchor];
    bottomAnchor = [(UILabel *)v5->_fromLabel bottomAnchor];
    v39 = [topAnchor3 constraintEqualToAnchor:bottomAnchor];
    [v39 setActive:1];

    leftAnchor3 = [(UIDateLabel *)v5->_dateLabel leftAnchor];
    leftAnchor4 = [(UILabel *)v5->_fromLabel leftAnchor];
    v42 = [leftAnchor3 constraintEqualToAnchor:leftAnchor4];
    [v42 setActive:1];

    rightAnchor3 = [(UIDateLabel *)v5->_dateLabel rightAnchor];
    rightAnchor4 = [(UILabel *)v5->_fromLabel rightAnchor];
    v45 = [rightAnchor3 constraintEqualToAnchor:rightAnchor4];
    [v45 setActive:1];

    bottomAnchor2 = [(UIDateLabel *)v5->_dateLabel bottomAnchor];
    contentView6 = [(CKBlackholeConversationListCell *)v5 contentView];
    layoutMarginsGuide4 = [contentView6 layoutMarginsGuide];
    bottomAnchor3 = [layoutMarginsGuide4 bottomAnchor];
    v50 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
    [v50 setActive:1];
  }

  return v5;
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = CKBlackholeConversationListCell;
  [(CKBlackholeConversationListCell *)&v3 prepareForReuse];
  [(UILabel *)self->_fromLabel setText:0];
  [(UIDateLabel *)self->_dateLabel setDate:0];
}

- (void)configureForConversation:(id)conversation
{
  conversationCopy = conversation;
  rawAddressedName = [conversationCopy rawAddressedName];
  [(UILabel *)self->_fromLabel setText:rawAddressedName];

  date = [conversationCopy date];

  [(UIDateLabel *)self->_dateLabel setDate:date];

  [(CKBlackholeConversationListCell *)self setNeedsLayout];
}

@end