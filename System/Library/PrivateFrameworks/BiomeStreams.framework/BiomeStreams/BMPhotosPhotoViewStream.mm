@interface BMPhotosPhotoViewStream
- (BMPhotosPhotoViewStream)init;
@end

@implementation BMPhotosPhotoViewStream

- (BMPhotosPhotoViewStream)init
{
  identifier = [(BMPhotosPhotoViewStream *)self identifier];
  v4 = [(BMContentStream *)self initWithStreamIdentifier:identifier eventClass:objc_opt_class()];

  return v4;
}

@end