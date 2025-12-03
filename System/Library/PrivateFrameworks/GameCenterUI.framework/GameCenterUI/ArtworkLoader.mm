@interface ArtworkLoader
- (void)imageRequest:(id)request didFailWithError:(id)error;
- (void)imageRequest:(id)request didLoadImage:(id)image;
@end

@implementation ArtworkLoader

- (void)imageRequest:(id)request didLoadImage:(id)image
{
  requestCopy = request;
  imageCopy = image;

  sub_24E2025B8(requestCopy, image);
}

- (void)imageRequest:(id)request didFailWithError:(id)error
{
  requestCopy = request;
  errorCopy = error;

  sub_24E20262C();
}

@end