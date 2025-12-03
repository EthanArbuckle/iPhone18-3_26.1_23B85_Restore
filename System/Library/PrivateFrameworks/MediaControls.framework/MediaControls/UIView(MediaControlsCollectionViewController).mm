@interface UIView(MediaControlsCollectionViewController)
- (double)mediaControls_untransformedFrame;
- (uint64_t)setMediaControls_untransformedFrame:()MediaControlsCollectionViewController;
@end

@implementation UIView(MediaControlsCollectionViewController)

- (double)mediaControls_untransformedFrame
{
  [self bounds];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  [self center];
  v11 = v10;
  v14.origin.x = v3;
  v14.origin.y = v5;
  v14.size.width = v7;
  v14.size.height = v9;
  v12 = v11 - CGRectGetWidth(v14) * 0.5;
  v15.origin.x = v3;
  v15.origin.y = v5;
  v15.size.width = v7;
  v15.size.height = v9;
  CGRectGetHeight(v15);
  v16.origin.x = v3;
  v16.origin.y = v5;
  v16.size.width = v7;
  v16.size.height = v9;
  CGRectGetWidth(v16);
  v17.origin.x = v3;
  v17.origin.y = v5;
  v17.size.width = v7;
  v17.size.height = v9;
  CGRectGetHeight(v17);
  return v12;
}

- (uint64_t)setMediaControls_untransformedFrame:()MediaControlsCollectionViewController
{
  Width = CGRectGetWidth(*&a2);
  v13.origin.x = a2;
  v13.origin.y = a3;
  v13.size.width = a4;
  v13.size.height = a5;
  [self setBounds:{0.0, 0.0, Width, CGRectGetHeight(v13)}];
  UIRectGetCenter();

  return [self setCenter:?];
}

@end