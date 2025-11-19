@interface PDFImageCell
- (void)prepareForReuse;
@end

@implementation PDFImageCell

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for PDFImageCell();
  v2 = v3.receiver;
  [(PDFImageCell *)&v3 prepareForReuse];
  ++*&v2[OBJC_IVAR____TtC18HealthExperienceUI12PDFImageCell_lastRequestedPreviewImageId];
  [*&v2[OBJC_IVAR____TtC18HealthExperienceUI12PDFImageCell_imageView] setImage_];
  [*&v2[OBJC_IVAR____TtC18HealthExperienceUI12PDFImageCell_label] setText_];
}

@end