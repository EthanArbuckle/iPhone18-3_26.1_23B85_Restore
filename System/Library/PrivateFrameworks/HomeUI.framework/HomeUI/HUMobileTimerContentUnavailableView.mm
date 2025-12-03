@interface HUMobileTimerContentUnavailableView
- (HUMobileTimerContentUnavailableView)init;
- (id)_titleFont;
@end

@implementation HUMobileTimerContentUnavailableView

- (HUMobileTimerContentUnavailableView)init
{
  v12[2] = *MEMORY[0x277D85DE8];
  v10.receiver = self;
  v10.super_class = HUMobileTimerContentUnavailableView;
  v2 = [(_UIContentUnavailableView *)&v10 initWithFrame:0 title:0 style:0 includeBackdrop:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  if (v2)
  {
    v3 = objc_opt_new();
    [v3 setAlignment:1];
    LODWORD(v4) = 1.0;
    [v3 setHyphenationFactor:v4];
    [v3 setLineBreakMode:0];
    v11[0] = *MEMORY[0x277D740A8];
    v5 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    v11[1] = *MEMORY[0x277D74118];
    v12[0] = v5;
    v12[1] = v3;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];

    v7 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:&stru_2823E0EE8 attributes:v6];
    _messageLabel = [(_UIContentUnavailableView *)v2 _messageLabel];
    [_messageLabel setAttributedText:v7];
  }

  return v2;
}

- (id)_titleFont
{
  v2 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76988] addingSymbolicTraits:2 options:0];
  v3 = [MEMORY[0x277D74300] fontWithDescriptor:v2 size:0.0];

  return v3;
}

@end