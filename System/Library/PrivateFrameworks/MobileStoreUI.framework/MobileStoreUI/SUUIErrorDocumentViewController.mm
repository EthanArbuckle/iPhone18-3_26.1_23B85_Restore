@interface SUUIErrorDocumentViewController
- (SUUIErrorDocumentViewController)initWithBackgroundColor:(id)color clientContext:(id)context;
- (void)loadView;
@end

@implementation SUUIErrorDocumentViewController

- (SUUIErrorDocumentViewController)initWithBackgroundColor:(id)color clientContext:(id)context
{
  colorCopy = color;
  contextCopy = context;
  v11.receiver = self;
  v11.super_class = SUUIErrorDocumentViewController;
  v8 = [(SUUIErrorDocumentViewController *)&v11 init];
  if (v8)
  {
    v9 = SUUIColorSchemeStyleForColor(colorCopy);
    if (v9 <= 3)
    {
      v8->_contentUnavailableStyle = qword_259FCB558[v9];
    }

    objc_storeStrong(&v8->_clientContext, context);
  }

  return v8;
}

- (void)loadView
{
  v9 = SUUIErrorDocumentTitle(self->_clientContext);
  v3 = objc_alloc(MEMORY[0x277D75E78]);
  v4 = [v3 initWithFrame:v9 title:self->_contentUnavailableStyle style:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  retryActionBlock = [(SUUIErrorDocumentViewController *)self retryActionBlock];

  if (retryActionBlock)
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

    retryActionBlock2 = [(SUUIErrorDocumentViewController *)self retryActionBlock];
    [v4 setButtonAction:retryActionBlock2];
  }

  [(SUUIErrorDocumentViewController *)self setView:v4];
}

@end