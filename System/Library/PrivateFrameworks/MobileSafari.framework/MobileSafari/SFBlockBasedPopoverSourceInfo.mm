@interface SFBlockBasedPopoverSourceInfo
- (BOOL)shouldHideArrow;
- (BOOL)shouldPassthroughSuperview;
- (CGRect)popoverSourceRect;
- (SFBlockBasedPopoverSourceInfo)initWithSourceInfoProvider:(id)a3;
- (UIBarButtonItem)barButtonItem;
- (UIView)popoverSourceView;
- (UIView)zoomTransitionSourceView;
- (int64_t)provenance;
- (unint64_t)permittedArrowDirections;
@end

@implementation SFBlockBasedPopoverSourceInfo

- (SFBlockBasedPopoverSourceInfo)initWithSourceInfoProvider:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = SFBlockBasedPopoverSourceInfo;
  v5 = [(SFBlockBasedPopoverSourceInfo *)&v10 init];
  if (v5)
  {
    v6 = _Block_copy(v4);
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
    v3 = [v2 barButtonItem];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (UIView)popoverSourceView
{
  v2 = (*(self->_sourceInfoProvider + 2))();
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 popoverSourceView];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (UIView)zoomTransitionSourceView
{
  v2 = (*(self->_sourceInfoProvider + 2))();
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 zoomTransitionSourceView];
  }

  else
  {
    v3 = 0;
  }

  return v3;
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
    v3 = [v2 shouldPassthroughSuperview];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)shouldHideArrow
{
  v2 = (*(self->_sourceInfoProvider + 2))();
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 shouldHideArrow];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (unint64_t)permittedArrowDirections
{
  v2 = (*(self->_sourceInfoProvider + 2))();
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 permittedArrowDirections];
  }

  else
  {
    v3 = 15;
  }

  return v3;
}

- (int64_t)provenance
{
  v2 = (*(self->_sourceInfoProvider + 2))();
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 provenance];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end