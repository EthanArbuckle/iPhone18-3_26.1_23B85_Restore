@interface CKBlackholeConversationListCell
- (CKBlackholeConversationListCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)configureForConversation:(id)a3;
- (void)prepareForReuse;
@end

@implementation CKBlackholeConversationListCell

- (CKBlackholeConversationListCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v52.receiver = self;
  v52.super_class = CKBlackholeConversationListCell;
  v4 = [(CKBlackholeConversationListCell *)&v52 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(CKBlackholeConversationListCell *)v4 setSeparatorInset:*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)];
    [(CKBlackholeConversationListCell *)v5 setAccessoryType:1];
    v6 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    fromLabel = v5->_fromLabel;
    v5->_fromLabel = v6;

    v8 = [(CKBlackholeConversationListCell *)v5 contentView];
    [v8 addSubview:v5->_fromLabel];

    [(UILabel *)v5->_fromLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v9 = v5->_fromLabel;
    v10 = +[CKUIBehavior sharedBehaviors];
    v11 = [v10 conversationListSummaryFont];
    [(UILabel *)v9 setFont:v11];

    v12 = [(UILabel *)v5->_fromLabel topAnchor];
    v13 = [(CKBlackholeConversationListCell *)v5 contentView];
    v14 = [v13 layoutMarginsGuide];
    v15 = [v14 topAnchor];
    v16 = [v12 constraintEqualToAnchor:v15];
    [v16 setActive:1];

    v17 = [(UILabel *)v5->_fromLabel leftAnchor];
    v18 = [(CKBlackholeConversationListCell *)v5 contentView];
    v19 = [v18 layoutMarginsGuide];
    v20 = [v19 leftAnchor];
    v21 = [v17 constraintEqualToAnchor:v20];
    [v21 setActive:1];

    v22 = [(UILabel *)v5->_fromLabel rightAnchor];
    v23 = [(CKBlackholeConversationListCell *)v5 contentView];
    v24 = [v23 layoutMarginsGuide];
    v25 = [v24 rightAnchor];
    v26 = [v22 constraintEqualToAnchor:v25];
    [v26 setActive:1];

    v27 = objc_alloc_init(MEMORY[0x1E69DC918]);
    dateLabel = v5->_dateLabel;
    v5->_dateLabel = v27;

    v29 = [(CKBlackholeConversationListCell *)v5 contentView];
    [v29 addSubview:v5->_dateLabel];

    [(UIDateLabel *)v5->_dateLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v30 = v5->_dateLabel;
    v31 = +[CKUIBehavior sharedBehaviors];
    v32 = [v31 conversationListDateFont];
    [(UIDateLabel *)v30 setFont:v32];

    v33 = v5->_dateLabel;
    v34 = +[CKUIBehavior sharedBehaviors];
    v35 = [v34 theme];
    v36 = [v35 conversationListSummaryColor];
    [(UIDateLabel *)v33 setTextColor:v36];

    v37 = [(UIDateLabel *)v5->_dateLabel topAnchor];
    v38 = [(UILabel *)v5->_fromLabel bottomAnchor];
    v39 = [v37 constraintEqualToAnchor:v38];
    [v39 setActive:1];

    v40 = [(UIDateLabel *)v5->_dateLabel leftAnchor];
    v41 = [(UILabel *)v5->_fromLabel leftAnchor];
    v42 = [v40 constraintEqualToAnchor:v41];
    [v42 setActive:1];

    v43 = [(UIDateLabel *)v5->_dateLabel rightAnchor];
    v44 = [(UILabel *)v5->_fromLabel rightAnchor];
    v45 = [v43 constraintEqualToAnchor:v44];
    [v45 setActive:1];

    v46 = [(UIDateLabel *)v5->_dateLabel bottomAnchor];
    v47 = [(CKBlackholeConversationListCell *)v5 contentView];
    v48 = [v47 layoutMarginsGuide];
    v49 = [v48 bottomAnchor];
    v50 = [v46 constraintEqualToAnchor:v49];
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

- (void)configureForConversation:(id)a3
{
  v4 = a3;
  v5 = [v4 rawAddressedName];
  [(UILabel *)self->_fromLabel setText:v5];

  v6 = [v4 date];

  [(UIDateLabel *)self->_dateLabel setDate:v6];

  [(CKBlackholeConversationListCell *)self setNeedsLayout];
}

@end