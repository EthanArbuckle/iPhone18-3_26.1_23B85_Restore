@interface ICThumbnailData
- (ICThumbnailData)initWithImage:(id)a3 imageScaling:(unint64_t)a4 showAsFileIcon:(BOOL)a5 isMovie:(BOOL)a6;
@end

@implementation ICThumbnailData

- (ICThumbnailData)initWithImage:(id)a3 imageScaling:(unint64_t)a4 showAsFileIcon:(BOOL)a5 isMovie:(BOOL)a6
{
  v11 = a3;
  v15.receiver = self;
  v15.super_class = ICThumbnailData;
  v12 = [(ICThumbnailData *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_image, a3);
    v13->_imageScaling = a4;
    v13->_showAsFileIcon = a5;
    v13->_isMovie = a6;
  }

  return v13;
}

@end