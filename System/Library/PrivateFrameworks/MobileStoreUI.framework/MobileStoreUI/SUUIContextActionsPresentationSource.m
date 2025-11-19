@interface SUUIContextActionsPresentationSource
- (CGRect)sourceRect;
- (SUUIContextActionsPresentationSource)initWithViewController:(id)a3;
- (void)presentViewController:(id)a3 permittedArrowDirections:(unint64_t)a4 animated:(BOOL)a5;
@end

@implementation SUUIContextActionsPresentationSource

- (SUUIContextActionsPresentationSource)initWithViewController:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SUUIContextActionsPresentationSource;
  v6 = [(SUUIContextActionsPresentationSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_viewController, a3);
  }

  return v7;
}

- (void)presentViewController:(id)a3 permittedArrowDirections:(unint64_t)a4 animated:(BOOL)a5
{
  v5 = a5;
  v35 = a3;
  v8 = [(SUUIContextActionsPresentationSource *)self viewController];
  v9 = [(SUUIContextActionsPresentationSource *)self sourceView];
  if (v9)
  {
    v10 = 1;
  }

  else
  {
    v11 = [(SUUIContextActionsPresentationSource *)self barButtonItem];
    v10 = v11 != 0;
  }

  v12 = [MEMORY[0x277D75418] currentDevice];
  if ([v12 userInterfaceIdiom] == 1)
  {
    v13 = [MEMORY[0x277D75128] sharedApplication];
    v14 = [v13 keyWindow];
    v15 = [v14 traitCollection];
    v16 = [v15 horizontalSizeClass] == 2 && v10;

    if (v16 == 1)
    {
      [v35 setModalPresentationStyle:7];
    }
  }

  else
  {
  }

  [v8 presentViewController:v35 animated:v5 completion:0];
  v17 = [v35 popoverPresentationController];
  v18 = v17 != 0 && v10;

  if (v18 == 1)
  {
    if ([v35 conformsToProtocol:&unk_286BDD998])
    {
      v19 = [v35 presentationController];
      [v19 setDelegate:v35];
    }

    v20 = [v35 popoverPresentationController];
    [v20 setPermittedArrowDirections:a4];

    v21 = [(SUUIContextActionsPresentationSource *)self barButtonItem];

    if (v21)
    {
      v22 = [(SUUIContextActionsPresentationSource *)self barButtonItem];
      v23 = [v35 popoverPresentationController];
      [v23 setBarButtonItem:v22];
    }

    else
    {
      v24 = [(SUUIContextActionsPresentationSource *)self sourceView];

      if (!v24)
      {
        goto LABEL_16;
      }

      v25 = [(SUUIContextActionsPresentationSource *)self sourceView];
      v26 = [v35 popoverPresentationController];
      [v26 setSourceView:v25];

      [(SUUIContextActionsPresentationSource *)self sourceRect];
      v28 = v27;
      v30 = v29;
      v32 = v31;
      v34 = v33;
      v22 = [v35 popoverPresentationController];
      [v22 setSourceRect:{v28, v30, v32, v34}];
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