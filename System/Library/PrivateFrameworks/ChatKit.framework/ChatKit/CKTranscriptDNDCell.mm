@interface CKTranscriptDNDCell
- (CKTranscriptDNDCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)layoutSubviews;
- (void)setMuteSwitch:(id)switch;
@end

@implementation CKTranscriptDNDCell

- (CKTranscriptDNDCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v11.receiver = self;
  v11.super_class = CKTranscriptDNDCell;
  v4 = [(CKTranscriptDNDCell *)&v11 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x1E69DCFD0]);
    v6 = [v5 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    textLabel = [(CKTranscriptDNDCell *)v4 textLabel];
    v8 = CKFrameworkBundle();
    v9 = [v8 localizedStringForKey:@"DETAILS_VIEW_HIDE_ALERTS_TOGGLE_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];
    [textLabel setText:v9];

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
  muteSwitch = [(CKTranscriptDNDCell *)self muteSwitch];

  if (muteSwitch)
  {
    muteSwitch2 = [(CKTranscriptDNDCell *)self muteSwitch];
    [muteSwitch2 frame];
    v10 = v9;
    v12 = v11;

    if (([(CKTranscriptDNDCell *)self _shouldReverseLayoutDirection]& 1) == 0)
    {
      contentView = [(CKTranscriptDNDCell *)self contentView];
      [contentView bounds];
      v15 = 20.0;
      if (v6 >= 20.0)
      {
        v15 = v6;
      }

      v4 = v14 - v15 - v10;
    }

    contentView2 = [(CKTranscriptDNDCell *)self contentView];
    [contentView2 bounds];
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

    muteSwitch3 = [(CKTranscriptDNDCell *)self muteSwitch];
    [muteSwitch3 setFrame:{v4, v20, v10, v12}];
  }
}

- (void)setMuteSwitch:(id)switch
{
  switchCopy = switch;
  muteSwitch = self->_muteSwitch;
  if (muteSwitch != switchCopy)
  {
    v8 = switchCopy;
    [(UISwitch *)muteSwitch removeFromSuperview];
    objc_storeStrong(&self->_muteSwitch, switch);
    contentView = [(CKTranscriptDNDCell *)self contentView];
    [contentView addSubview:v8];

    [(CKTranscriptDNDCell *)self setNeedsLayout];
    switchCopy = v8;
  }
}

@end