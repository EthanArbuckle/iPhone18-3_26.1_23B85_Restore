@interface BMPhotosPhotoViewStream
- (BMPhotosPhotoViewStream)init;
@end

@implementation BMPhotosPhotoViewStream

- (BMPhotosPhotoViewStream)init
{
  v3 = [(BMPhotosPhotoViewStream *)self identifier];
  v4 = [(BMContentStream *)self initWithStreamIdentifier:v3 eventClass:objc_opt_class()];

  return v4;
}

@end