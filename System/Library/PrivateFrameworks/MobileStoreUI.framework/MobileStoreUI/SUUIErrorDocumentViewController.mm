@interface SUUIErrorDocumentViewController
- (SUUIErrorDocumentViewController)initWithBackgroundColor:(id)a3 clientContext:(id)a4;
- (void)loadView;
@end

@implementation SUUIErrorDocumentViewController

- (SUUIErrorDocumentViewController)initWithBackgroundColor:(id)a3 clientContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = SUUIErrorDocumentViewController;
  v8 = [(SUUIErrorDocumentViewController *)&v11 init];
  if (v8)
  {
    v9 = SUUIColorSchemeStyleForColor(v6);
    if (v9 <= 3)
    {
      v8->_contentUnavailableStyle = qword_259FCB558[v9];
    }

    objc_storeStrong(&v8->_clientContext, a4);
  }

  return v8;
}

- (void)loadView
{
  v9 = SUUIErrorDocumentTitle(self->_clientContext);
  v3 = objc_alloc(MEMORY[0x277D75E78]);
  v4 = [v3 initWithFrame:v9 title:self->_contentUnavailableStyle style:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  v5 = [(SUUIErrorDocumentViewController *)self retryActionBlock];

  if (v5)
  {
    [v4 setMessage:&stru_286AECDE0];
    clientContext = self->_clientContext;
    if (clientContext)
    {
      [(SUUIClientContext *)clientContext localizedStringForKey:@"NETWORK_ERROR_BUTTON_RETRY"];
    }

    else
    {
      [SUUIClientContext localizedStringForKey:@"NETWORK_ERROR_BUTTON_RETRY" inBundles:0];
    }
    v7 = ;
    [v4 setButtonTitle:v7];

    v8 = [(SUUIErrorDocumentViewController *)self retryActionBlock];
    [v4 setButtonAction:v8];
  }

  [(SUUIErrorDocumentViewController *)self setView:v4];
}

@end