@interface SUUICountdownViewController
- (SUUICountdownViewController)initWithCountdownComponent:(id)a3 artworkLoader:(id)a4;
- (void)artworkRequest:(id)a3 didLoadImage:(id)a4;
- (void)loadView;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation SUUICountdownViewController

- (SUUICountdownViewController)initWithCountdownComponent:(id)a3 artworkLoader:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SUUICountdownViewController;
  v9 = [(SUUICountdownViewController *)&v12 initWithNibName:0 bundle:0];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_countdownComponent, a3);
    objc_storeStrong(&v10->_artworkLoader, a4);
  }

  return v10;
}

- (void)viewWillAppear:(BOOL)a3
{
  v11.receiver = self;
  v11.super_class = SUUICountdownViewController;
  [(SUUICountdownViewController *)&v11 viewWillAppear:a3];
  v4 = [(SUUICountdownComponent *)self->_countdownComponent countdown];
  v5 = [v4 artworkProvider];

  if (v5)
  {
    v6 = objc_alloc_init(SUUIArtworkRequest);
    [(SUUIArtworkRequest *)v6 setDelegate:self];
    v7 = +[(SSVURLDataConsumer *)SUUIImageDataConsumer];
    [(SUUIArtworkRequest *)v6 setDataConsumer:v7];

    v8 = [v5 largestArtwork];
    v9 = [v8 URL];
    [(SUUIArtworkRequest *)v6 setURL:v9];

    [(SUUIResourceLoader *)self->_artworkLoader loadResourceWithRequest:v6 reason:1];
  }

  v10 = [(SUUICountdownViewController *)self view];
  [v10 start];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = SUUICountdownViewController;
  [(SUUICountdownViewController *)&v5 viewDidDisappear:a3];
  v4 = [(SUUICountdownViewController *)self view];
  [v4 stop];
}

- (void)loadView
{
  v3 = [SUUICountdownView alloc];
  v4 = [(SUUICountdownComponent *)self->_countdownComponent countdown];
  v5 = [(SUUICountdownView *)v3 initWithCountdown:v4 clientContext:self->_clientContext];

  [(SUUICountdownViewController *)self setView:v5];
}

- (void)artworkRequest:(id)a3 didLoadImage:(id)a4
{
  v5 = a4;
  v6 = [(SUUICountdownViewController *)self view];
  [v6 setBackgroundImage:v5];
}

@end