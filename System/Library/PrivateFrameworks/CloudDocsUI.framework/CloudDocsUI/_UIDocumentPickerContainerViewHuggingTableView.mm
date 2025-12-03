@interface _UIDocumentPickerContainerViewHuggingTableView
- (UIView)ancestralContainerView;
- (void)setFrame:(CGRect)frame;
- (void)willMoveToSuperview:(id)superview;
@end

@implementation _UIDocumentPickerContainerViewHuggingTableView

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  superview = [(_UIDocumentPickerContainerViewHuggingTableView *)self superview];

  if (superview)
  {
    superview2 = [(_UIDocumentPickerContainerViewHuggingTableView *)self superview];
    [superview2 bounds];
    x = v10;
    y = v11;
    width = v12;
    height = v13;
  }

  v14.receiver = self;
  v14.super_class = _UIDocumentPickerContainerViewHuggingTableView;
  [(_UIDocumentPickerContainerViewHuggingTableView *)&v14 setFrame:x, y, width, height];
}

- (void)willMoveToSuperview:(id)superview
{
  superviewCopy = superview;
  WeakRetained = objc_loadWeakRetained(&self->_ancestralContainerView);

  if (WeakRetained)
  {
    v6 = superviewCopy;
    if (v6)
    {
      v7 = v6;
      v8 = v6;
      while (1)
      {
        v9 = objc_loadWeakRetained(&self->_ancestralContainerView);

        if (v8 == v9)
        {
          break;
        }

        superview = [v8 superview];

        v8 = superview;
        if (!superview)
        {
          goto LABEL_11;
        }
      }

      v11 = v7;

      do
      {
        v12 = objc_loadWeakRetained(&self->_ancestralContainerView);

        if (v11 == v12)
        {
          break;
        }

        [v11 setAutoresizingMask:18];
        superview2 = [v11 superview];

        v11 = superview2;
      }

      while (superview2);
    }
  }

LABEL_11:
  v14.receiver = self;
  v14.super_class = _UIDocumentPickerContainerViewHuggingTableView;
  [(_UIDocumentPickerContainerViewHuggingTableView *)&v14 willMoveToSuperview:superviewCopy];
}

- (UIView)ancestralContainerView
{
  WeakRetained = objc_loadWeakRetained(&self->_ancestralContainerView);

  return WeakRetained;
}

@end