@interface PDFPageNumberedPage
- (_TtC18HealthExperienceUI19PDFPageNumberedPage)init;
- (_TtC18HealthExperienceUI19PDFPageNumberedPage)initWithImage:(id)a3 options:(id)a4;
@end

@implementation PDFPageNumberedPage

- (_TtC18HealthExperienceUI19PDFPageNumberedPage)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(PDFWithCustomFooterTextPage *)&v3 init];
}

- (_TtC18HealthExperienceUI19PDFPageNumberedPage)initWithImage:(id)a3 options:(id)a4
{
  ObjectType = swift_getObjectType();
  type metadata accessor for ImageInitializationOption(0);
  sub_1BA4515D8(&qword_1EBBE90B8, type metadata accessor for ImageInitializationOption);
  sub_1BA4A6628();
  v7 = a3;
  v8 = sub_1BA4A6618();

  v11.receiver = self;
  v11.super_class = ObjectType;
  v9 = [(PDFWithCustomFooterTextPage *)&v11 initWithImage:v7 options:v8];

  if (v9)
  {
  }

  return v9;
}

@end