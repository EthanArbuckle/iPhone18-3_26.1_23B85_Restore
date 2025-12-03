@interface SFBlockBasedPopoverSourceInfo
- (BOOL)shouldHideArrow;
- (BOOL)shouldPassthroughSuperview;
- (CGRect)popoverSourceRect;
- (SFBlockBasedPopoverSourceInfo)initWithSourceInfoProvider:(id)provider;
- (UIBarButtonItem)barButtonItem;
- (UIView)popoverSourceView;
- (UIView)zoomTransitionSourceView;
- (int64_t)provenance;
- (unint64_t)permittedArrowDirections;
@end

@implementation SFBlockBasedPopoverSourceInfo

- (SFBlockBasedPopoverSourceInfo)initWithSourceInfoProvider:(id)provider
{
  providerCopy = provider;
  v10.receiver = self;
  v10.super_class = SFBlockBasedPopoverSourceInfo;
  v5 = [(SFBlockBasedPopoverSourceInfo *)&v10 init];
  if (v5)
  {
    v6 = _Block_copy(providerCopy);
    sourceInfoProvider = v5->_sourceInfoProvider;
    v5->_sourceInfoProvider = v6;

    v8 = v5;
  }

  return v5;
}

- (UIBarButtonItem)barButtonItem
{
  v2 = (*(self->_sourceInfoProvider + 2))();
  if (objc_opt_respondsToSelector())
  {
    barButtonItem = [v2 barButtonItem];
  }

  else
  {
    barButtonItem = 0;
  }

  return barButtonItem;
}

- (UIView)popoverSourceView
{
  v2 = (*(self->_sourceInfoProvider + 2))();
  if (objc_opt_respondsToSelector())
  {
    popoverSourceView = [v2 popoverSourceView];
  }

  else
  {
    popoverSourceView = 0;
  }

  return popoverSourceView;
}

- (UIView)zoomTransitionSourceView
{
  v2 = (*(self->_sourceInfoProvider + 2))();
  if (objc_opt_respondsToSelector())
  {
    zoomTransitionSourceView = [v2 zoomTransitionSourceView];
  }

  else
  {
    zoomTransitionSourceView = 0;
  }

  return zoomTransitionSourceView;
}

- (CGRect)popoverSourceRect
{
  v2 = (*(self->_sourceInfoProvider + 2))();
  if (objc_opt_respondsToSelector())
  {
    [v2 popoverSourceRect];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
  }

  else
  {
    v4 = *MEMORY[0x1E695F050];
    v6 = *(MEMORY[0x1E695F050] + 8);
    v8 = *(MEMORY[0x1E695F050] + 16);
    v10 = *(MEMORY[0x1E695F050] + 24);
  }

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (BOOL)shouldPassthroughSuperview
{
  v2 = (*(self->_sourceInfoProvider + 2))();
  if (objc_opt_respondsToSelector())
  {
    shouldPassthroughSuperview = [v2 shouldPassthroughSuperview];
  }

  else
  {
    shouldPassthroughSuperview = 0;
  }

  return shouldPassthroughSuperview;
}

- (BOOL)shouldHideArrow
{
  v2 = (*(self->_sourceInfoProvider + 2))();
  if (objc_opt_respondsToSelector())
  {
    shouldHideArrow = [v2 shouldHideArrow];
  }

  else
  {
    shouldHideArrow = 0;
  }

  return shouldHideArrow;
}

- (unint64_t)permittedArrowDirections
{
  v2 = (*(self->_sourceInfoProvider + 2))();
  if (objc_opt_respondsToSelector())
  {
    permittedArrowDirections = [v2 permittedArrowDirections];
  }

  else
  {
    permittedArrowDirections = 15;
  }

  return permittedArrowDirections;
}

- (int64_t)provenance
{
  v2 = (*(self->_sourceInfoProvider + 2))();
  if (objc_opt_respondsToSelector())
  {
    provenance = [v2 provenance];
  }

  else
  {
    provenance = 0;
  }

  return provenance;
}

@end