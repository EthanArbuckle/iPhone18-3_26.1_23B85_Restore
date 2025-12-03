@interface PRXCardContentViewController(HUAdditions)
- (void)_handleSubtitleTouchForOpenURL:()HUAdditions;
- (void)addLearnMoreButtonWithURL:()HUAdditions;
- (void)appendButtonWithKey:()HUAdditions target:action:userInfo:;
- (void)openURL:()HUAdditions;
@end

@implementation PRXCardContentViewController(HUAdditions)

- (void)addLearnMoreButtonWithURL:()HUAdditions
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7 = @"URL_KEY";
  v8[0] = a3;
  v4 = MEMORY[0x277CBEAC0];
  v5 = a3;
  v6 = [v4 dictionaryWithObjects:v8 forKeys:&v7 count:1];
  [self addLearnMoreButtonWithTarget:self action:sel__handleSubtitleTouchForOpenURL_ userInfo:v6];
}

- (void)appendButtonWithKey:()HUAdditions target:action:userInfo:
{
  v28[1] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a6;
  v11 = a4;
  subtitle = [self subtitle];

  if (!subtitle)
  {
    [self setSubtitle:@" "];
  }

  contentView = [self contentView];
  subtitleLabel = [contentView subtitleLabel];

  if (subtitle)
  {
    v15 = _HULocalizedStringWithDefaultValue(v9, v9, 1);
  }

  else
  {
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_withNilSubtitle", v9];
    v15 = _HULocalizedStringWithDefaultValue(v16, v16, 1);
  }

  v17 = objc_alloc(MEMORY[0x277CCA898]);
  v27 = *MEMORY[0x277D740C0];
  hf_keyColor = [MEMORY[0x277D75348] hf_keyColor];
  v28[0] = hf_keyColor;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:&v27 count:1];
  v20 = [v17 initWithString:v15 attributes:v19];

  if (subtitle)
  {
    v21 = objc_alloc(MEMORY[0x277CCAB48]);
    subtitle2 = [self subtitle];
    v23 = [v21 initWithString:subtitle2];

    [v23 appendAttributedString:v20];
    v24 = [v23 copy];
    [subtitleLabel setAttributedText:v24];
  }

  else
  {
    [subtitleLabel setAttributedText:v20];
  }

  [subtitleLabel setUserInteractionEnabled:1];
  v25 = [[HUStringInLabelTapGestureRecognizer alloc] initWithTarget:v11 action:a5 hitBoxString:v15 userInfo:v10];

  [subtitleLabel addGestureRecognizer:v25];
}

- (void)openURL:()HUAdditions
{
  v4 = MEMORY[0x277CDB700];
  v5 = a3;
  v7 = [[v4 alloc] initWithURL:v5];

  [v7 setModalPresentationStyle:1];
  hf_keyColor = [MEMORY[0x277D75348] hf_keyColor];
  [v7 setPreferredControlTintColor:hf_keyColor];

  [self presentViewController:v7 animated:1 completion:0];
}

- (void)_handleSubtitleTouchForOpenURL:()HUAdditions
{
  userInfo = [a3 userInfo];
  v5 = [userInfo objectForKeyedSubscript:@"URL_KEY"];

  if (v5)
  {
    [self openURL:v5];
  }

  else
  {
    v6 = HFLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_error_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_ERROR, "learn more pressed w/ url intention but no url found", v7, 2u);
    }

    NSLog(&cfstr_LearnMorePress.isa);
  }
}

@end