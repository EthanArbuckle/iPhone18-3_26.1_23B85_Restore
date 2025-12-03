@interface SUUIContextActionsPresentationSource
- (CGRect)sourceRect;
- (SUUIContextActionsPresentationSource)initWithViewController:(id)controller;
- (void)presentViewController:(id)controller permittedArrowDirections:(unint64_t)directions animated:(BOOL)animated;
@end

@implementation SUUIContextActionsPresentationSource

- (SUUIContextActionsPresentationSource)initWithViewController:(id)controller
{
  controllerCopy = controller;
  v9.receiver = self;
  v9.super_class = SUUIContextActionsPresentationSource;
  v6 = [(SUUIContextActionsPresentationSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_viewController, controller);
  }

  return v7;
}

- (void)presentViewController:(id)controller permittedArrowDirections:(unint64_t)directions animated:(BOOL)animated
{
  animatedCopy = animated;
  controllerCopy = controller;
  viewController = [(SUUIContextActionsPresentationSource *)self viewController];
  sourceView = [(SUUIContextActionsPresentationSource *)self sourceView];
  if (sourceView)
  {
    v10 = 1;
  }

  else
  {
    barButtonItem = [(SUUIContextActionsPresentationSource *)self barButtonItem];
    v10 = barButtonItem != 0;
  }

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  if ([currentDevice userInterfaceIdiom] == 1)
  {
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    keyWindow = [mEMORY[0x277D75128] keyWindow];
    traitCollection = [keyWindow traitCollection];
    v16 = [traitCollection horizontalSizeClass] == 2 && v10;

    if (v16 == 1)
    {
      [controllerCopy setModalPresentationStyle:7];
    }
  }

  else
  {
  }

  [viewController presentViewController:controllerCopy animated:animatedCopy completion:0];
  popoverPresentationController = [controllerCopy popoverPresentationController];
  v18 = popoverPresentationController != 0 && v10;

  if (v18 == 1)
  {
    if ([controllerCopy conformsToProtocol:&unk_286BDD998])
    {
      presentationController = [controllerCopy presentationController];
      [presentationController setDelegate:controllerCopy];
    }

    popoverPresentationController2 = [controllerCopy popoverPresentationController];
    [popoverPresentationController2 setPermittedArrowDirections:directions];

    barButtonItem2 = [(SUUIContextActionsPresentationSource *)self barButtonItem];

    if (barButtonItem2)
    {
      barButtonItem3 = [(SUUIContextActionsPresentationSource *)self barButtonItem];
      popoverPresentationController3 = [controllerCopy popoverPresentationController];
      [popoverPresentationController3 setBarButtonItem:barButtonItem3];
    }

    else
    {
      sourceView2 = [(SUUIContextActionsPresentationSource *)self sourceView];

      if (!sourceView2)
      {
        goto LABEL_16;
      }

      sourceView3 = [(SUUIContextActionsPresentationSource *)self sourceView];
      popoverPresentationController4 = [controllerCopy popoverPresentationController];
      [popoverPresentationController4 setSourceView:sourceView3];

      [(SUUIContextActionsPresentationSource *)self sourceRect];
      v28 = v27;
      v30 = v29;
      v32 = v31;
      v34 = v33;
      barButtonItem3 = [controllerCopy popoverPresentationController];
      [barButtonItem3 setSourceRect:{v28, v30, v32, v34}];
    }
  }

LABEL_16:
}

- (CGRect)sourceRect
{
  x = self->_sourceRect.origin.x;
  y = self->_sourceRect.origin.y;
  width = self->_sourceRect.size.width;
  height = self->_sourceRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end