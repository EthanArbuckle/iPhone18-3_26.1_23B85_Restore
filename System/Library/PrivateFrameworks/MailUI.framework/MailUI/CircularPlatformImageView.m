@interface CircularPlatformImageView
- (_TtC6MailUI25CircularPlatformImageView)initWithImage:(id)a3 highlightedImage:(id)a4;
- (void)layoutSubviews;
@end

@implementation CircularPlatformImageView

- (void)layoutSubviews
{
  MEMORY[0x277D82BE0](self);
  CircularPlatformImageView.layoutSubviews()();
  MEMORY[0x277D82BD8](self);
}

- (_TtC6MailUI25CircularPlatformImageView)initWithImage:(id)a3 highlightedImage:(id)a4
{
  MEMORY[0x277D82BE0](a3);
  MEMORY[0x277D82BE0](a4);
  return CircularPlatformImageView.init(image:highlightedImage:)(a3, a4);
}

@end