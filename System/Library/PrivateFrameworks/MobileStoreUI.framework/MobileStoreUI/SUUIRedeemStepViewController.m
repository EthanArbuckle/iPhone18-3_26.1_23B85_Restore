@interface SUUIRedeemStepViewController
- (BOOL)shouldShowPassbookLearnMore;
- (SUUIRedeemStepDelegate)redeemStepDelegate;
@end

@implementation SUUIRedeemStepViewController

- (BOOL)shouldShowPassbookLearnMore
{
  v3 = SUUIPassKitCoreFramework();
  v4 = SUUIWeakLinkedClassForString(&cfstr_Pkpasslibrary.isa, v3);
  v5 = [(SUUIRedeemStepViewController *)self configuration];
  v6 = [v5 ITunesPassConfiguration];

  if (!v6)
  {
    return 0;
  }

  if (![v4 isPassLibraryAvailable])
  {
    return 0;
  }

  v7 = [MEMORY[0x277D75418] currentDevice];
  v8 = [v7 userInterfaceIdiom];

  if (v8 == 1)
  {
    return 0;
  }

  v11 = [MEMORY[0x277D69A20] defaultStore];
  v12 = [v11 activeAccount];
  v13 = [v12 ITunesPassSerialNumber];

  if (v13)
  {
    v14 = objc_alloc_init(v4);
    v15 = [v14 passWithPassTypeIdentifier:@"pass.com.apple.itunes.storecredit" serialNumber:v13];
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