@interface SUUIModalSourceViewProvider
- (SUUIModalSourceViewProviderDelegate)delegate;
- (id)animationView;
- (void)setOriginalSourceView:(id)a3;
@end

@implementation SUUIModalSourceViewProvider

- (id)animationView
{
  v3 = [(SUUIModalSourceViewProvider *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 animationViewForModalSourceViewProvider:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setOriginalSourceView:(id)a3
{
  v5 = a3;
  p_originalSourceView = &self->_originalSourceView;
  if (self->_originalSourceView != v5)
  {
    v7 = v5;
    objc_storeStrong(p_originalSourceView, a3);
    p_originalSourceView = [(UIView *)self->_originalSourceView setHidden:self->_hideOriginalSourceView];
    v5 = v7;
  }

  MEMORY[0x2821F96F8](p_originalSourceView, v5);
}

- (SUUIModalSourceViewProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end