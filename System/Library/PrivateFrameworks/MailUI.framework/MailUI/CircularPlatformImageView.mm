@interface CircularPlatformImageView
- (_TtC6MailUI25CircularPlatformImageView)initWithImage:(id)image highlightedImage:(id)highlightedImage;
- (void)layoutSubviews;
@end

@implementation CircularPlatformImageView

- (void)layoutSubviews
{
  MEMORY[0x277D82BE0](self);
  CircularPlatformImageView.layoutSubviews()();
  MEMORY[0x277D82BD8](self);
}

- (_TtC6MailUI25CircularPlatformImageView)initWithImage:(id)image highlightedImage:(id)highlightedImage
{
  MEMORY[0x277D82BE0](image);
  MEMORY[0x277D82BE0](highlightedImage);
  return CircularPlatformImageView.init(image:highlightedImage:)(image, highlightedImage);
}

@end