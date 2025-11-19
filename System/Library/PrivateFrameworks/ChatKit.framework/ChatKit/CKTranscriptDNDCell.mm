@interface CKTranscriptDNDCell
- (CKTranscriptDNDCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)layoutSubviews;
- (void)setMuteSwitch:(id)a3;
@end

@implementation CKTranscriptDNDCell

- (CKTranscriptDNDCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v11.receiver = self;
  v11.super_class = CKTranscriptDNDCell;
  v4 = [(CKTranscriptDNDCell *)&v11 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x1E69DCFD0]);
    v6 = [v5 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    v7 = [(CKTranscriptDNDCell *)v4 textLabel];
    v8 = CKFrameworkBundle();
    v9 = [v8 localizedStringForKey:@"DETAILS_VIEW_HIDE_ALERTS_TOGGLE_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];
    [v7 setText:v9];

    [(CKTranscriptDNDCell *)v4 setMuteSwitch:v6];
  }

  return v4;
}

- (void)layoutSubviews
{
  v22.receiver = self;
  v22.super_class = CKTranscriptDNDCell;
  [(CKTranscriptDNDCell *)&v22 layoutSubviews];
  [(CKTranscriptDNDCell *)self layoutMargins];
  v4 = v3;
  v6 = v5;
  v7 = [(CKTranscriptDNDCell *)self muteSwitch];

  if (v7)
  {
    v8 = [(CKTranscriptDNDCell *)self muteSwitch];
    [v8 frame];
    v10 = v9;
    v12 = v11;

    if (([(CKTranscriptDNDCell *)self _shouldReverseLayoutDirection]& 1) == 0)
    {
      v13 = [(CKTranscriptDNDCell *)self contentView];
      [v13 bounds];
      v15 = 20.0;
      if (v6 >= 20.0)
      {
        v15 = v6;
      }

      v4 = v14 - v15 - v10;
    }

    v16 = [(CKTranscriptDNDCell *)self contentView];
    [v16 bounds];
    v18 = (v17 - v12) * 0.5;
    if (CKMainScreenScale_once_75 != -1)
    {
      [CKTranscriptDNDCell layoutSubviews];
    }

    v19 = *&CKMainScreenScale_sMainScreenScale_75;
    if (*&CKMainScreenScale_sMainScreenScale_75 == 0.0)
    {
      v19 = 1.0;
    }

    v20 = ceil(v18 * v19) / v19;

    v21 = [(CKTranscriptDNDCell *)self muteSwitch];
    [v21 setFrame:{v4, v20, v10, v12}];
  }
}

- (void)setMuteSwitch:(id)a3
{
  v5 = a3;
  muteSwitch = self->_muteSwitch;
  if (muteSwitch != v5)
  {
    v8 = v5;
    [(UISwitch *)muteSwitch removeFromSuperview];
    objc_storeStrong(&self->_muteSwitch, a3);
    v7 = [(CKTranscriptDNDCell *)self contentView];
    [v7 addSubview:v8];

    [(CKTranscriptDNDCell *)self setNeedsLayout];
    v5 = v8;
  }
}

@end