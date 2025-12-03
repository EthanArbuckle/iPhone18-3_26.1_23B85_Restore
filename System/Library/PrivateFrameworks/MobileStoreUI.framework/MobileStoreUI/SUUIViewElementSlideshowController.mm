@interface SUUIViewElementSlideshowController
- (SUUIViewElementSlideshowController)initWithShelf:(id)shelf selectedLockup:(id)lockup;
- (SUUIViewElementSlideshowDelegate)delegate;
- (id)slideshowViewController:(id)controller dataConsumerAtIndex:(int64_t)index;
- (id)slideshowViewController:(id)controller imageURLAtIndex:(int64_t)index;
- (id)slideshowViewController:(id)controller placeholderImageAtIndex:(int64_t)index;
- (void)dealloc;
- (void)presentFromParentViewController:(id)controller;
- (void)slideshowViewControllerDidFinish:(id)finish;
@end

@implementation SUUIViewElementSlideshowController

- (SUUIViewElementSlideshowController)initWithShelf:(id)shelf selectedLockup:(id)lockup
{
  shelfCopy = shelf;
  lockupCopy = lockup;
  v18.receiver = self;
  v18.super_class = SUUIViewElementSlideshowController;
  v8 = [(SUUIViewElementSlideshowController *)&v18 init];
  if (v8)
  {
    v9 = objc_opt_new();
    [(SUUIViewElementSlideshowController *)v8 setDataConsumers:v9];

    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    lockups = v8->_lockups;
    v8->_lockups = v10;

    v8->_selectedIndex = 0;
    slideshowTitle = [shelfCopy slideshowTitle];
    title = v8->_title;
    v8->_title = slideshowTitle;

    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __67__SUUIViewElementSlideshowController_initWithShelf_selectedLockup___block_invoke;
    v15[3] = &unk_2798F8A80;
    v16 = lockupCopy;
    v17 = v8;
    [shelfCopy enumerateChildrenUsingBlock:v15];
  }

  return v8;
}

void __67__SUUIViewElementSlideshowController_initWithShelf_selectedLockup___block_invoke(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = [v11 elementType] == 66;
  v4 = v11;
  if (v3)
  {
    v5 = v11;
    v6 = [v5 fullscreenImage];
    v7 = [v5 firstChildForElementType:49];
    v8 = v7;
    if (v6 && v7)
    {
      if (*(a1 + 32) == v5)
      {
        *(*(a1 + 40) + 48) = [*(*(a1 + 40) + 24) count];
      }

      [*(*(a1 + 40) + 24) addObject:v5];
      v9 = [(SUUIStyledImageDataConsumer *)[SUUIScreenshotDataConsumer alloc] initWithViewElement:v6];
      [v6 size];
      [(SUUIStyledImageDataConsumer *)v9 setImageSize:?];
      v10 = [*(a1 + 40) dataConsumers];
      [v10 addObject:v9];
    }

    v4 = v11;
  }
}

- (void)dealloc
{
  [(SUUISlideshowViewController *)self->_padViewController setDataSource:0];
  [(SUUISlideshowViewController *)self->_padViewController setDelegate:0];
  [(SUUIIPhoneSlideshowViewController *)self->_phoneViewController setDataSource:0];
  [(SUUIIPhoneSlideshowViewController *)self->_phoneViewController setDelegate:0];
  v3.receiver = self;
  v3.super_class = SUUIViewElementSlideshowController;
  [(SUUIViewElementSlideshowController *)&v3 dealloc];
}

- (void)presentFromParentViewController:(id)controller
{
  layoutContext = self->_layoutContext;
  controllerCopy = controller;
  clientContext = [(SUUIViewElementLayoutContext *)layoutContext clientContext];
  v7 = SUUIUserInterfaceIdiom(clientContext);
  if (v7 == 1)
  {
    v8 = 32;
  }

  else
  {
    v8 = 40;
  }

  v9 = off_2798F4270;
  if (v7 != 1)
  {
    v9 = off_2798F3EF8;
  }

  v10 = objc_alloc_init(*v9);
  v11 = *(&self->super.isa + v8);
  *(&self->super.isa + v8) = v10;

  [*(&self->super.isa + v8) setClientContext:clientContext];
  [*(&self->super.isa + v8) setDataSource:self];
  [*(&self->super.isa + v8) setDelegate:self];
  [*(&self->super.isa + v8) setCurrentIndex:self->_selectedIndex];
  v13 = *(&self->super.isa + v8);
  if (self->_title)
  {
    [v13 setTitle:?];
  }

  v12 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v13];
  [v12 setModalPresentationStyle:17];
  [controllerCopy presentViewController:v12 animated:1 completion:0];
}

- (id)slideshowViewController:(id)controller placeholderImageAtIndex:(int64_t)index
{
  v5 = [(NSMutableArray *)self->_lockups objectAtIndex:index];
  v6 = [v5 firstChildForElementType:49];
  v7 = [(SUUIViewElementLayoutContext *)self->_layoutContext requestIdentifierForViewElement:v6];
  if (v7)
  {
    resourceLoader = [(SUUIViewElementLayoutContext *)self->_layoutContext resourceLoader];
    v9 = [resourceLoader cachedResourceForRequestIdentifier:{objc_msgSend(v7, "unsignedIntegerValue")}];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)slideshowViewController:(id)controller imageURLAtIndex:(int64_t)index
{
  v4 = [(NSMutableArray *)self->_lockups objectAtIndex:index];
  fullscreenImage = [v4 fullscreenImage];
  v6 = [fullscreenImage URL];

  return v6;
}

- (id)slideshowViewController:(id)controller dataConsumerAtIndex:(int64_t)index
{
  dataConsumers = [(SUUIViewElementSlideshowController *)self dataConsumers];
  v7 = [dataConsumers objectAtIndex:index];

  clientContext = [(SUUIViewElementLayoutContext *)self->_layoutContext clientContext];
  if (SUUIUserInterfaceIdiom(clientContext) != 1)
  {
    [v7 setForcesPortrait:1];
  }

  return v7;
}

- (void)slideshowViewControllerDidFinish:(id)finish
{
  finishCopy = finish;
  delegate = [(SUUIViewElementSlideshowController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate viewElementSlideshowWillDismiss:self];
  }

  [finishCopy dismissViewControllerAnimated:1 completion:0];
}

- (SUUIViewElementSlideshowDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end