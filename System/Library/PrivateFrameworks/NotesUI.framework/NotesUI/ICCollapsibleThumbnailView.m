@interface ICCollapsibleThumbnailView
- (void)performSetup;
- (void)setImage:(id)a3;
- (void)setImageScaling:(unint64_t)a3;
- (void)setShowAsMovie:(BOOL)a3;
@end

@implementation ICCollapsibleThumbnailView

- (void)performSetup
{
  v3 = [ICImageAndMovieThumbnailView alloc];
  [(ICCollapsibleThumbnailView *)self frame];
  v4 = [(ICImageAndMovieThumbnailView *)v3 initWithFrame:0 showMovieDuration:?];
  [(ICCollapsibleThumbnailView *)self setThumbnailView:v4];

  v5 = [(ICCollapsibleThumbnailView *)self thumbnailView];
  [(ICCollapsibleBaseView *)self performSetUpWithContentView:v5];

  v6 = [(ICCollapsibleThumbnailView *)self image];
  v7 = [(ICCollapsibleThumbnailView *)self thumbnailView];
  [v7 setImage:v6];

  v8 = [(ICCollapsibleThumbnailView *)self imageScaling];
  v9 = [(ICCollapsibleThumbnailView *)self thumbnailView];
  [v9 setImageScaling:v8];

  v10 = [(ICCollapsibleThumbnailView *)self showAsMovie];
  v11 = [(ICCollapsibleThumbnailView *)self thumbnailView];
  [v11 setShowAsMovie:v10];
}

- (void)setImage:(id)a3
{
  objc_storeStrong(&self->_image, a3);
  v5 = a3;
  v6 = [(ICCollapsibleThumbnailView *)self thumbnailView];
  [v6 setImage:v5];
}

- (void)setImageScaling:(unint64_t)a3
{
  self->_imageScaling = a3;
  v4 = [(ICCollapsibleThumbnailView *)self thumbnailView];
  [v4 setImageScaling:a3];
}

- (void)setShowAsMovie:(BOOL)a3
{
  v3 = a3;
  self->_showAsMovie = a3;
  v4 = [(ICCollapsibleThumbnailView *)self thumbnailView];
  [v4 setShowAsMovie:v3];
}

@end