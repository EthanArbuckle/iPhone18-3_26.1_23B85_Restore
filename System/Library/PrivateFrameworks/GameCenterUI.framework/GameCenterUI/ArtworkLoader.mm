@interface ArtworkLoader
- (void)imageRequest:(id)a3 didFailWithError:(id)a4;
- (void)imageRequest:(id)a3 didLoadImage:(id)a4;
@end

@implementation ArtworkLoader

- (void)imageRequest:(id)a3 didLoadImage:(id)a4
{
  v5 = a3;
  v6 = a4;

  sub_24E2025B8(v5, a4);
}

- (void)imageRequest:(id)a3 didFailWithError:(id)a4
{
  v5 = a3;
  v6 = a4;

  sub_24E20262C();
}

@end