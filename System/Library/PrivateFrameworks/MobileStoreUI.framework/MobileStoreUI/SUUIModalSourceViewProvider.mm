@interface SUUIModalSourceViewProvider
- (SUUIModalSourceViewProviderDelegate)delegate;
- (id)animationView;
- (void)setOriginalSourceView:(id)view;
@end

@implementation SUUIModalSourceViewProvider

- (id)animationView
{
  delegate = [(SUUIModalSourceViewProvider *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [delegate animationViewForModalSourceViewProvider:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setOriginalSourceView:(id)view
{
  viewCopy = view;
  p_originalSourceView = &self->_originalSourceView;
  if (self->_originalSourceView != viewCopy)
  {
    v7 = viewCopy;
    objc_storeStrong(p_originalSourceView, view);
    p_originalSourceView = [(UIView *)self->_originalSourceView setHidden:self->_hideOriginalSourceView];
    viewCopy = v7;
  }

  MEMORY[0x2821F96F8](p_originalSourceView, viewCopy);
}

- (SUUIModalSourceViewProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end