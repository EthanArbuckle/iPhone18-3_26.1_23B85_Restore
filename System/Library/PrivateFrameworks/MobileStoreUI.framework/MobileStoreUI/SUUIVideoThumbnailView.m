@interface SUUIVideoThumbnailView
- (void)layoutSubviews;
@end

@implementation SUUIVideoThumbnailView

- (void)layoutSubviews
{
  v27.receiver = self;
  v27.super_class = SUUIVideoThumbnailView;
  [(SUUIImageView *)&v27 layoutSubviews];
  if (!layoutSubviews_sPlayButtonImage)
  {
    v3 = MEMORY[0x277D755B8];
    v4 = SUUIBundle();
    v5 = [v3 imageNamed:@"PlayControlPressed" inBundle:v4];
    v6 = layoutSubviews_sPlayButtonHighlightedImage;
    layoutSubviews_sPlayButtonHighlightedImage = v5;

    v7 = MEMORY[0x277D755B8];
    v8 = SUUIBundle();
    v9 = [v7 imageNamed:@"PlayControl" inBundle:v8];
    v10 = layoutSubviews_sPlayButtonImage;
    layoutSubviews_sPlayButtonImage = v9;
  }

  if (!self->_playControlView)
  {
    v11 = objc_alloc(MEMORY[0x277D755E8]);
    v12 = [v11 initWithImage:layoutSubviews_sPlayButtonImage highlightedImage:layoutSubviews_sPlayButtonHighlightedImage];
    playControlView = self->_playControlView;
    self->_playControlView = v12;

    [(UIImageView *)self->_playControlView setContentMode:1];
    [(SUUIVideoThumbnailView *)self addSubview:self->_playControlView];
  }

  [(SUUIVideoThumbnailView *)self bounds];
  v15 = v14;
  v17 = v16;
  [layoutSubviews_sPlayButtonImage size];
  v20 = v17 + -8.0;
  if (v19 < v17 + -8.0)
  {
    v20 = v19;
  }

  if (v18 >= v15 + -8.0)
  {
    v21 = v15 + -8.0;
  }

  else
  {
    v21 = v18;
  }

  v22 = (v15 - v21) * 0.5;
  v23 = (v17 - v20) * 0.5;
  [(UIImageView *)self->_playControlView setFrame:floorf(v22), floorf(v23)];
  v24 = self->_playControlView;
  [(SUUIVideoThumbnailView *)self transform];
  CGAffineTransformInvert(&v26, &v25);
  [(UIImageView *)v24 setTransform:&v26];
}

@end