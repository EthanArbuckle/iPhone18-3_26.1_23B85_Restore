@interface PDFPageNumberedPage
- (_TtC18HealthExperienceUI19PDFPageNumberedPage)init;
- (_TtC18HealthExperienceUI19PDFPageNumberedPage)initWithImage:(id)image options:(id)options;
@end

@implementation PDFPageNumberedPage

- (_TtC18HealthExperienceUI19PDFPageNumberedPage)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(PDFWithCustomFooterTextPage *)&v3 init];
}

- (_TtC18HealthExperienceUI19PDFPageNumberedPage)initWithImage:(id)image options:(id)options
{
  ObjectType = swift_getObjectType();
  type metadata accessor for ImageInitializationOption(0);
  sub_1BA4515D8(&qword_1EBBE90B8, type metadata accessor for ImageInitializationOption);
  sub_1BA4A6628();
  imageCopy = image;
  v8 = sub_1BA4A6618();

  v11.receiver = self;
  v11.super_class = ObjectType;
  v9 = [(PDFWithCustomFooterTextPage *)&v11 initWithImage:imageCopy options:v8];

  if (v9)
  {
  }

  return v9;
}

@end