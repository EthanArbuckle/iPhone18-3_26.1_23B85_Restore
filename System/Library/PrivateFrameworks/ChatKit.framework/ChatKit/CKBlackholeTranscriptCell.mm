@interface CKBlackholeTranscriptCell
- (CKBlackholeTranscriptCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)configureForMessageItem:(id)item showSender:(BOOL)sender;
- (void)prepareForReuse;
@end

@implementation CKBlackholeTranscriptCell

- (CKBlackholeTranscriptCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v57.receiver = self;
  v57.super_class = CKBlackholeTranscriptCell;
  v4 = [(CKBlackholeTranscriptCell *)&v57 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(CKBlackholeTranscriptCell *)v4 setSelectionStyle:0];
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    v7 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    fromLabel = v5->_fromLabel;
    v5->_fromLabel = v7;

    [(CKBlackholeTranscriptCell *)v5 addSubview:v5->_fromLabel];
    [(UILabel *)v5->_fromLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v5->_fromLabel setTextColor:secondaryLabelColor];
    v9 = v5->_fromLabel;
    v10 = +[CKUIBehavior sharedBehaviors];
    conversationListSenderFont = [v10 conversationListSenderFont];
    [(UILabel *)v9 setFont:conversationListSenderFont];

    topAnchor = [(UILabel *)v5->_fromLabel topAnchor];
    layoutMarginsGuide = [(CKBlackholeTranscriptCell *)v5 layoutMarginsGuide];
    topAnchor2 = [layoutMarginsGuide topAnchor];
    v15 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [v15 setActive:1];

    leftAnchor = [(UILabel *)v5->_fromLabel leftAnchor];
    layoutMarginsGuide2 = [(CKBlackholeTranscriptCell *)v5 layoutMarginsGuide];
    leftAnchor2 = [layoutMarginsGuide2 leftAnchor];
    v19 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
    [v19 setActive:1];

    rightAnchor = [(UILabel *)v5->_fromLabel rightAnchor];
    layoutMarginsGuide3 = [(CKBlackholeTranscriptCell *)v5 layoutMarginsGuide];
    rightAnchor2 = [layoutMarginsGuide3 rightAnchor];
    v23 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
    [v23 setActive:1];

    v24 = objc_alloc_init(MEMORY[0x1E69DC918]);
    dateLabel = v5->_dateLabel;
    v5->_dateLabel = v24;

    [(CKBlackholeTranscriptCell *)v5 addSubview:v5->_dateLabel];
    [(UIDateLabel *)v5->_dateLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIDateLabel *)v5->_dateLabel setTextColor:secondaryLabelColor];
    v26 = v5->_dateLabel;
    v27 = +[CKUIBehavior sharedBehaviors];
    conversationListDateFont = [v27 conversationListDateFont];
    [(UIDateLabel *)v26 setFont:conversationListDateFont];

    topAnchor3 = [(UIDateLabel *)v5->_dateLabel topAnchor];
    bottomAnchor = [(UILabel *)v5->_fromLabel bottomAnchor];
    v31 = [topAnchor3 constraintEqualToAnchor:bottomAnchor];
    [v31 setActive:1];

    leftAnchor3 = [(UIDateLabel *)v5->_dateLabel leftAnchor];
    leftAnchor4 = [(UILabel *)v5->_fromLabel leftAnchor];
    v34 = [leftAnchor3 constraintEqualToAnchor:leftAnchor4];
    [v34 setActive:1];

    rightAnchor3 = [(UIDateLabel *)v5->_dateLabel rightAnchor];
    rightAnchor4 = [(UILabel *)v5->_fromLabel rightAnchor];
    v37 = [rightAnchor3 constraintEqualToAnchor:rightAnchor4];
    [v37 setActive:1];

    v38 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    bodyLabel = v5->_bodyLabel;
    v5->_bodyLabel = v38;

    [(CKBlackholeTranscriptCell *)v5 addSubview:v5->_bodyLabel];
    [(UILabel *)v5->_bodyLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v5->_bodyLabel setTextColor:secondaryLabelColor];
    v40 = v5->_bodyLabel;
    v41 = +[CKUIBehavior sharedBehaviors];
    conversationListSummaryFont = [v41 conversationListSummaryFont];
    [(UILabel *)v40 setFont:conversationListSummaryFont];

    [(UILabel *)v5->_bodyLabel setNumberOfLines:0];
    topAnchor4 = [(UILabel *)v5->_bodyLabel topAnchor];
    bottomAnchor2 = [(UIDateLabel *)v5->_dateLabel bottomAnchor];
    v45 = [topAnchor4 constraintEqualToAnchor:bottomAnchor2 constant:16.0];
    [v45 setActive:1];

    leftAnchor5 = [(UILabel *)v5->_bodyLabel leftAnchor];
    leftAnchor6 = [(UIDateLabel *)v5->_dateLabel leftAnchor];
    v48 = [leftAnchor5 constraintEqualToAnchor:leftAnchor6];
    [v48 setActive:1];

    rightAnchor5 = [(UILabel *)v5->_bodyLabel rightAnchor];
    rightAnchor6 = [(UIDateLabel *)v5->_dateLabel rightAnchor];
    v51 = [rightAnchor5 constraintEqualToAnchor:rightAnchor6];
    [v51 setActive:1];

    bottomAnchor3 = [(UILabel *)v5->_bodyLabel bottomAnchor];
    layoutMarginsGuide4 = [(CKBlackholeTranscriptCell *)v5 layoutMarginsGuide];
    bottomAnchor4 = [layoutMarginsGuide4 bottomAnchor];
    v55 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    [v55 setActive:1];
  }

  return v5;
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = CKBlackholeTranscriptCell;
  [(CKBlackholeTranscriptCell *)&v3 prepareForReuse];
  [(UILabel *)self->_fromLabel setText:0];
  [(UIDateLabel *)self->_dateLabel setDate:0];
  [(UILabel *)self->_bodyLabel setText:0];
}

- (void)configureForMessageItem:(id)item showSender:(BOOL)sender
{
  senderCopy = sender;
  itemCopy = item;
  v7 = itemCopy;
  if (senderCopy)
  {
    fromLabel = self->_fromLabel;
    handle = [itemCopy handle];
    [(UILabel *)fromLabel setText:handle];
  }

  dateLabel = self->_dateLabel;
  time = [v7 time];
  [(UIDateLabel *)dateLabel setDate:time];

  fileTransferGUIDs = [v7 fileTransferGUIDs];
  v13 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v14 = v13;
  if (fileTransferGUIDs)
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __64__CKBlackholeTranscriptCell_configureForMessageItem_showSender___block_invoke;
    v19[3] = &unk_1E72F0A10;
    v20 = v13;
    [fileTransferGUIDs enumerateObjectsUsingBlock:v19];
  }

  body = [v7 body];
  string = [body string];

  v17 = [string stringByReplacingOccurrencesOfString:@"\uFFFD" withString:&stru_1F04268F8];
  v18 = [v17 stringByReplacingOccurrencesOfString:@"\uFFFC" withString:&stru_1F04268F8];

  if (v18)
  {
    [v14 appendString:v18];
    [(UILabel *)self->_bodyLabel setText:v14];
  }

  [(CKBlackholeTranscriptCell *)self setNeedsLayout];
}

void __64__CKBlackholeTranscriptCell_configureForMessageItem_showSender___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E69A5B80];
  v4 = a2;
  v9 = [v3 sharedInstance];
  v5 = [v9 transferForGUID:v4];

  v6 = [v5 filename];
  if (([v6 containsString:@".pluginPayloadAttachment"] & 1) == 0)
  {
    v7 = *(a1 + 32);
    v8 = [v5 filename];
    [v7 appendString:v8];

    [*(a1 + 32) appendString:@"\n"];
  }
}

@end