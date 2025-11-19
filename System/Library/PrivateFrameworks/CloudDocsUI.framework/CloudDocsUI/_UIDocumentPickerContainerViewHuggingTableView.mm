@interface _UIDocumentPickerContainerViewHuggingTableView
- (UIView)ancestralContainerView;
- (void)setFrame:(CGRect)a3;
- (void)willMoveToSuperview:(id)a3;
@end

@implementation _UIDocumentPickerContainerViewHuggingTableView

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(_UIDocumentPickerContainerViewHuggingTableView *)self superview];

  if (v8)
  {
    v9 = [(_UIDocumentPickerContainerViewHuggingTableView *)self superview];
    [v9 bounds];
    x = v10;
    y = v11;
    width = v12;
    height = v13;
  }

  v14.receiver = self;
  v14.super_class = _UIDocumentPickerContainerViewHuggingTableView;
  [(_UIDocumentPickerContainerViewHuggingTableView *)&v14 setFrame:x, y, width, height];
}

- (void)willMoveToSuperview:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_ancestralContainerView);

  if (WeakRetained)
  {
    v6 = v4;
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

        v10 = [v8 superview];

        v8 = v10;
        if (!v10)
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
        v13 = [v11 superview];

        v11 = v13;
      }

      while (v13);
    }
  }

LABEL_11:
  v14.receiver = self;
  v14.super_class = _UIDocumentPickerContainerViewHuggingTableView;
  [(_UIDocumentPickerContainerViewHuggingTableView *)&v14 willMoveToSuperview:v4];
}

- (UIView)ancestralContainerView
{
  WeakRetained = objc_loadWeakRetained(&self->_ancestralContainerView);

  return WeakRetained;
}

@end