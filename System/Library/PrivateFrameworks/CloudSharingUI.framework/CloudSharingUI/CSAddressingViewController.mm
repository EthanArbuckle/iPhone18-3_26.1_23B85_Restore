@interface CSAddressingViewController
- (void)updateWithViewModel:(id)a3;
@end

@implementation CSAddressingViewController

- (void)updateWithViewModel:(id)a3
{
  addressingViewFactory = self->_addressingViewFactory;
  v4 = a3;
  v11 = [v4 headerImageData];
  v5 = [v4 headerTitle];
  v6 = [v4 loadingText];
  v7 = [v4 supplementaryText];
  v8 = [v4 userInfoText];
  v9 = [v4 primaryButtonText];
  v10 = [v4 secondaryButtonText];

  [(AddressingViewFactory *)addressingViewFactory updateWithHeaderImageData:v11 headerTitle:v5 loadingText:v6 supplementaryText:v7 userInfoText:v8 primaryButtonText:v9 secondaryButtonText:v10];
}

@end