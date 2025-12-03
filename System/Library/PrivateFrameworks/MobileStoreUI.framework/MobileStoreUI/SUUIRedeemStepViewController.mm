@interface SUUIRedeemStepViewController
- (BOOL)shouldShowPassbookLearnMore;
- (SUUIRedeemStepDelegate)redeemStepDelegate;
@end

@implementation SUUIRedeemStepViewController

- (BOOL)shouldShowPassbookLearnMore
{
  v3 = SUUIPassKitCoreFramework();
  v4 = SUUIWeakLinkedClassForString(&cfstr_Pkpasslibrary.isa, v3);
  configuration = [(SUUIRedeemStepViewController *)self configuration];
  iTunesPassConfiguration = [configuration ITunesPassConfiguration];

  if (!iTunesPassConfiguration)
  {
    return 0;
  }

  if (![v4 isPassLibraryAvailable])
  {
    return 0;
  }

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
  {
    return 0;
  }

  defaultStore = [MEMORY[0x277D69A20] defaultStore];
  activeAccount = [defaultStore activeAccount];
  iTunesPassSerialNumber = [activeAccount ITunesPassSerialNumber];

  if (iTunesPassSerialNumber)
  {
    v14 = objc_alloc_init(v4);
    v15 = [v14 passWithPassTypeIdentifier:@"pass.com.apple.itunes.storecredit" serialNumber:iTunesPassSerialNumber];
    v9 = v15 == 0;
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (SUUIRedeemStepDelegate)redeemStepDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_redeemStepDelegate);

  return WeakRetained;
}

@end