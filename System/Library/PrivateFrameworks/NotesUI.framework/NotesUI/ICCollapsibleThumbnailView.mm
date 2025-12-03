@interface ICCollapsibleThumbnailView
- (void)performSetup;
- (void)setImage:(id)image;
- (void)setImageScaling:(unint64_t)scaling;
- (void)setShowAsMovie:(BOOL)movie;
@end

@implementation ICCollapsibleThumbnailView

- (void)performSetup
{
  v3 = [ICImageAndMovieThumbnailView alloc];
  [(ICCollapsibleThumbnailView *)self frame];
  v4 = [(ICImageAndMovieThumbnailView *)v3 initWithFrame:0 showMovieDuration:?];
  [(ICCollapsibleThumbnailView *)self setThumbnailView:v4];

  thumbnailView = [(ICCollapsibleThumbnailView *)self thumbnailView];
  [(ICCollapsibleBaseView *)self performSetUpWithContentView:thumbnailView];

  image = [(ICCollapsibleThumbnailView *)self image];
  thumbnailView2 = [(ICCollapsibleThumbnailView *)self thumbnailView];
  [thumbnailView2 setImage:image];

  imageScaling = [(ICCollapsibleThumbnailView *)self imageScaling];
  thumbnailView3 = [(ICCollapsibleThumbnailView *)self thumbnailView];
  [thumbnailView3 setImageScaling:imageScaling];

  showAsMovie = [(ICCollapsibleThumbnailView *)self showAsMovie];
  thumbnailView4 = [(ICCollapsibleThumbnailView *)self thumbnailView];
  [thumbnailView4 setShowAsMovie:showAsMovie];
}

- (void)setImage:(id)image
{
  objc_storeStrong(&self->_image, image);
  imageCopy = image;
  thumbnailView = [(ICCollapsibleThumbnailView *)self thumbnailView];
  [thumbnailView setImage:imageCopy];
}

- (void)setImageScaling:(unint64_t)scaling
{
  self->_imageScaling = scaling;
  thumbnailView = [(ICCollapsibleThumbnailView *)self thumbnailView];
  [thumbnailView setImageScaling:scaling];
}

- (void)setShowAsMovie:(BOOL)movie
{
  movieCopy = movie;
  self->_showAsMovie = movie;
  thumbnailView = [(ICCollapsibleThumbnailView *)self thumbnailView];
  [thumbnailView setShowAsMovie:movieCopy];
}

@end