@interface INUICKPSynchronousRemoteView
- (CGSize)sizeThatFits:(CGSize)a3;
- (INUICKPSynchronousRemoteViewDelegate)delegate;
- (void)layoutSubviews;
@end

@implementation INUICKPSynchronousRemoteView

- (CGSize)sizeThatFits:(CGSize)a3
{
  v4 = [(INUICKPSynchronousRemoteView *)self delegate:a3.width];
  [v4 cachedSizeForSynchronousRemoteView:self];
  v6 = v5;
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (void)layoutSubviews
{
  v16 = *MEMORY[0x277D85DE8];
  v14.receiver = self;
  v14.super_class = INUICKPSynchronousRemoteView;
  [(INUICKPSynchronousRemoteView *)&v14 layoutSubviews];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [(INUICKPSynchronousRemoteView *)self subviews];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        [(INUICKPSynchronousRemoteView *)self bounds];
        [v8 setFrame:?];
        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (INUICKPSynchronousRemoteViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end