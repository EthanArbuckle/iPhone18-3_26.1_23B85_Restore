@interface CAMImageAnalysisButton
- (CAMImageAnalysisButtonDelegate)delegate;
- (void)_setContextMenuDisplayed:(BOOL)a3;
- (void)contextMenuInteraction:(id)a3 willDisplayMenuForConfiguration:(id)a4 animator:(id)a5;
- (void)contextMenuInteraction:(id)a3 willEndForConfiguration:(id)a4 animator:(id)a5;
@end

@implementation CAMImageAnalysisButton

- (void)contextMenuInteraction:(id)a3 willDisplayMenuForConfiguration:(id)a4 animator:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  [(CAMImageAnalysisButton *)self _setContextMenuDisplayed:1];
  v11.receiver = self;
  v11.super_class = CAMImageAnalysisButton;
  [(CAMImageAnalysisButton *)&v11 contextMenuInteraction:v10 willDisplayMenuForConfiguration:v9 animator:v8];
}

- (void)contextMenuInteraction:(id)a3 willEndForConfiguration:(id)a4 animator:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  [(CAMImageAnalysisButton *)self _setContextMenuDisplayed:0];
  v11.receiver = self;
  v11.super_class = CAMImageAnalysisButton;
  [(CAMImageAnalysisButton *)&v11 contextMenuInteraction:v10 willEndForConfiguration:v9 animator:v8];
}

- (void)_setContextMenuDisplayed:(BOOL)a3
{
  if (self->_contextMenuDisplayed != a3)
  {
    v4 = a3;
    self->_contextMenuDisplayed = a3;
    v6 = [(CAMImageAnalysisButton *)self delegate];
    [v6 imageAnalysisButton:self didChangeContextMenuDisplayed:v4];
  }
}

- (CAMImageAnalysisButtonDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end