@interface SUUICountdownViewController
- (SUUICountdownViewController)initWithCountdownComponent:(id)component artworkLoader:(id)loader;
- (void)artworkRequest:(id)request didLoadImage:(id)image;
- (void)loadView;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation SUUICountdownViewController

- (SUUICountdownViewController)initWithCountdownComponent:(id)component artworkLoader:(id)loader
{
  componentCopy = component;
  loaderCopy = loader;
  v12.receiver = self;
  v12.super_class = SUUICountdownViewController;
  v9 = [(SUUICountdownViewController *)&v12 initWithNibName:0 bundle:0];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_countdownComponent, component);
    objc_storeStrong(&v10->_artworkLoader, loader);
  }

  return v10;
}

- (void)viewWillAppear:(BOOL)appear
{
  v11.receiver = self;
  v11.super_class = SUUICountdownViewController;
  [(SUUICountdownViewController *)&v11 viewWillAppear:appear];
  countdown = [(SUUICountdownComponent *)self->_countdownComponent countdown];
  artworkProvider = [countdown artworkProvider];

  if (artworkProvider)
  {
    v6 = objc_alloc_init(SUUIArtworkRequest);
    [(SUUIArtworkRequest *)v6 setDelegate:self];
    v7 = +[(SSVURLDataConsumer *)SUUIImageDataConsumer];
    [(SUUIArtworkRequest *)v6 setDataConsumer:v7];

    largestArtwork = [artworkProvider largestArtwork];
    v9 = [largestArtwork URL];
    [(SUUIArtworkRequest *)v6 setURL:v9];

    [(SUUIResourceLoader *)self->_artworkLoader loadResourceWithRequest:v6 reason:1];
  }

  view = [(SUUICountdownViewController *)self view];
  [view start];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = SUUICountdownViewController;
  [(SUUICountdownViewController *)&v5 viewDidDisappear:disappear];
  view = [(SUUICountdownViewController *)self view];
  [view stop];
}

- (void)loadView
{
  v3 = [SUUICountdownView alloc];
  countdown = [(SUUICountdownComponent *)self->_countdownComponent countdown];
  v5 = [(SUUICountdownView *)v3 initWithCountdown:countdown clientContext:self->_clientContext];

  [(SUUICountdownViewController *)self setView:v5];
}

- (void)artworkRequest:(id)request didLoadImage:(id)image
{
  imageCopy = image;
  view = [(SUUICountdownViewController *)self view];
  [view setBackgroundImage:imageCopy];
}

@end