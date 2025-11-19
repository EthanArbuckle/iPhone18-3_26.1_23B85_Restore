@interface CKBlackholeTranscriptCell
- (CKBlackholeTranscriptCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)configureForMessageItem:(id)a3 showSender:(BOOL)a4;
- (void)prepareForReuse;
@end

@implementation CKBlackholeTranscriptCell

- (CKBlackholeTranscriptCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v57.receiver = self;
  v57.super_class = CKBlackholeTranscriptCell;
  v4 = [(CKBlackholeTranscriptCell *)&v57 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(CKBlackholeTranscriptCell *)v4 setSelectionStyle:0];
    v6 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    v7 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    fromLabel = v5->_fromLabel;
    v5->_fromLabel = v7;

    [(CKBlackholeTranscriptCell *)v5 addSubview:v5->_fromLabel];
    [(UILabel *)v5->_fromLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v5->_fromLabel setTextColor:v6];
    v9 = v5->_fromLabel;
    v10 = +[CKUIBehavior sharedBehaviors];
    v11 = [v10 conversationListSenderFont];
    [(UILabel *)v9 setFont:v11];

    v12 = [(UILabel *)v5->_fromLabel topAnchor];
    v13 = [(CKBlackholeTranscriptCell *)v5 layoutMarginsGuide];
    v14 = [v13 topAnchor];
    v15 = [v12 constraintEqualToAnchor:v14];
    [v15 setActive:1];

    v16 = [(UILabel *)v5->_fromLabel leftAnchor];
    v17 = [(CKBlackholeTranscriptCell *)v5 layoutMarginsGuide];
    v18 = [v17 leftAnchor];
    v19 = [v16 constraintEqualToAnchor:v18];
    [v19 setActive:1];

    v20 = [(UILabel *)v5->_fromLabel rightAnchor];
    v21 = [(CKBlackholeTranscriptCell *)v5 layoutMarginsGuide];
    v22 = [v21 rightAnchor];
    v23 = [v20 constraintEqualToAnchor:v22];
    [v23 setActive:1];

    v24 = objc_alloc_init(MEMORY[0x1E69DC918]);
    dateLabel = v5->_dateLabel;
    v5->_dateLabel = v24;

    [(CKBlackholeTranscriptCell *)v5 addSubview:v5->_dateLabel];
    [(UIDateLabel *)v5->_dateLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIDateLabel *)v5->_dateLabel setTextColor:v6];
    v26 = v5->_dateLabel;
    v27 = +[CKUIBehavior sharedBehaviors];
    v28 = [v27 conversationListDateFont];
    [(UIDateLabel *)v26 setFont:v28];

    v29 = [(UIDateLabel *)v5->_dateLabel topAnchor];
    v30 = [(UILabel *)v5->_fromLabel bottomAnchor];
    v31 = [v29 constraintEqualToAnchor:v30];
    [v31 setActive:1];

    v32 = [(UIDateLabel *)v5->_dateLabel leftAnchor];
    v33 = [(UILabel *)v5->_fromLabel leftAnchor];
    v34 = [v32 constraintEqualToAnchor:v33];
    [v34 setActive:1];

    v35 = [(UIDateLabel *)v5->_dateLabel rightAnchor];
    v36 = [(UILabel *)v5->_fromLabel rightAnchor];
    v37 = [v35 constraintEqualToAnchor:v36];
    [v37 setActive:1];

    v38 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    bodyLabel = v5->_bodyLabel;
    v5->_bodyLabel = v38;

    [(CKBlackholeTranscriptCell *)v5 addSubview:v5->_bodyLabel];
    [(UILabel *)v5->_bodyLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v5->_bodyLabel setTextColor:v6];
    v40 = v5->_bodyLabel;
    v41 = +[CKUIBehavior sharedBehaviors];
    v42 = [v41 conversationListSummaryFont];
    [(UILabel *)v40 setFont:v42];

    [(UILabel *)v5->_bodyLabel setNumberOfLines:0];
    v43 = [(UILabel *)v5->_bodyLabel topAnchor];
    v44 = [(UIDateLabel *)v5->_dateLabel bottomAnchor];
    v45 = [v43 constraintEqualToAnchor:v44 constant:16.0];
    [v45 setActive:1];

    v46 = [(UILabel *)v5->_bodyLabel leftAnchor];
    v47 = [(UIDateLabel *)v5->_dateLabel leftAnchor];
    v48 = [v46 constraintEqualToAnchor:v47];
    [v48 setActive:1];

    v49 = [(UILabel *)v5->_bodyLabel rightAnchor];
    v50 = [(UIDateLabel *)v5->_dateLabel rightAnchor];
    v51 = [v49 constraintEqualToAnchor:v50];
    [v51 setActive:1];

    v52 = [(UILabel *)v5->_bodyLabel bottomAnchor];
    v53 = [(CKBlackholeTranscriptCell *)v5 layoutMarginsGuide];
    v54 = [v53 bottomAnchor];
    v55 = [v52 constraintEqualToAnchor:v54];
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

- (void)configureForMessageItem:(id)a3 showSender:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = v6;
  if (v4)
  {
    fromLabel = self->_fromLabel;
    v9 = [v6 handle];
    [(UILabel *)fromLabel setText:v9];
  }

  dateLabel = self->_dateLabel;
  v11 = [v7 time];
  [(UIDateLabel *)dateLabel setDate:v11];

  v12 = [v7 fileTransferGUIDs];
  v13 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v14 = v13;
  if (v12)
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __64__CKBlackholeTranscriptCell_configureForMessageItem_showSender___block_invoke;
    v19[3] = &unk_1E72F0A10;
    v20 = v13;
    [v12 enumerateObjectsUsingBlock:v19];
  }

  v15 = [v7 body];
  v16 = [v15 string];

  v17 = [v16 stringByReplacingOccurrencesOfString:@"\uFFFD" withString:&stru_1F04268F8];
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