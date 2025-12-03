@interface ICThumbnailData
- (ICThumbnailData)initWithImage:(id)image imageScaling:(unint64_t)scaling showAsFileIcon:(BOOL)icon isMovie:(BOOL)movie;
@end

@implementation ICThumbnailData

- (ICThumbnailData)initWithImage:(id)image imageScaling:(unint64_t)scaling showAsFileIcon:(BOOL)icon isMovie:(BOOL)movie
{
  imageCopy = image;
  v15.receiver = self;
  v15.super_class = ICThumbnailData;
  v12 = [(ICThumbnailData *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_image, image);
    v13->_imageScaling = scaling;
    v13->_showAsFileIcon = icon;
    v13->_isMovie = movie;
  }

  return v13;
}

@end