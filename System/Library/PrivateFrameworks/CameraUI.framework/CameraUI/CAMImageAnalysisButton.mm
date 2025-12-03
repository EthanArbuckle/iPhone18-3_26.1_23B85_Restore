@interface CAMImageAnalysisButton
- (CAMImageAnalysisButtonDelegate)delegate;
- (void)_setContextMenuDisplayed:(BOOL)displayed;
- (void)contextMenuInteraction:(id)interaction willDisplayMenuForConfiguration:(id)configuration animator:(id)animator;
- (void)contextMenuInteraction:(id)interaction willEndForConfiguration:(id)configuration animator:(id)animator;
@end

@implementation CAMImageAnalysisButton

- (void)contextMenuInteraction:(id)interaction willDisplayMenuForConfiguration:(id)configuration animator:(id)animator
{
  animatorCopy = animator;
  configurationCopy = configuration;
  interactionCopy = interaction;
  [(CAMImageAnalysisButton *)self _setContextMenuDisplayed:1];
  v11.receiver = self;
  v11.super_class = CAMImageAnalysisButton;
  [(CAMImageAnalysisButton *)&v11 contextMenuInteraction:interactionCopy willDisplayMenuForConfiguration:configurationCopy animator:animatorCopy];
}

- (void)contextMenuInteraction:(id)interaction willEndForConfiguration:(id)configuration animator:(id)animator
{
  animatorCopy = animator;
  configurationCopy = configuration;
  interactionCopy = interaction;
  [(CAMImageAnalysisButton *)self _setContextMenuDisplayed:0];
  v11.receiver = self;
  v11.super_class = CAMImageAnalysisButton;
  [(CAMImageAnalysisButton *)&v11 contextMenuInteraction:interactionCopy willEndForConfiguration:configurationCopy animator:animatorCopy];
}

- (void)_setContextMenuDisplayed:(BOOL)displayed
{
  if (self->_contextMenuDisplayed != displayed)
  {
    displayedCopy = displayed;
    self->_contextMenuDisplayed = displayed;
    delegate = [(CAMImageAnalysisButton *)self delegate];
    [delegate imageAnalysisButton:self didChangeContextMenuDisplayed:displayedCopy];
  }
}

- (CAMImageAnalysisButtonDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end