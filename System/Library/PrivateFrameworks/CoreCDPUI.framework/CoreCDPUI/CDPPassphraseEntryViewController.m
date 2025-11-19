@interface CDPPassphraseEntryViewController
- (CDPPassphraseEntryViewController)init;
- (CGSize)preferredContentSize;
- (id)stringsBundle;
@end

@implementation CDPPassphraseEntryViewController

- (CDPPassphraseEntryViewController)init
{
  v9.receiver = self;
  v9.super_class = CDPPassphraseEntryViewController;
  v2 = [(DevicePINController *)&v9 init];
  v3 = v2;
  if (v2)
  {
    [(DevicePINController *)v2 setMode:3];
    [(DevicePINController *)v3 setShouldDismissWhenDone:0];
    v4 = [MEMORY[0x277D3FA48] appearance];
    v5 = [MEMORY[0x277D75348] labelColor];
    [v4 setTextColor:v5];

    v6 = [MEMORY[0x277D3FA48] appearance];
    v7 = [MEMORY[0x277D75348] systemBackgroundColor];
    [v6 setBackgroundColor:v7];
  }

  return v3;
}

- (id)stringsBundle
{
  v2 = MEMORY[0x277CCA8D8];
  v3 = objc_opt_class();

  return [v2 bundleForClass:v3];
}

- (CGSize)preferredContentSize
{
  v2 = *MEMORY[0x277CBF3A8];
  v3 = *(MEMORY[0x277CBF3A8] + 8);
  result.height = v3;
  result.width = v2;
  return result;
}

@end