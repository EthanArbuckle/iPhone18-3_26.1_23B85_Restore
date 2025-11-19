@interface DURequestContentType
+ (_TtC21DocumentUnderstanding20DURequestContentType)address;
+ (_TtC21DocumentUnderstanding20DURequestContentType)category;
+ (_TtC21DocumentUnderstanding20DURequestContentType)date;
+ (_TtC21DocumentUnderstanding20DURequestContentType)foundInEvent;
+ (_TtC21DocumentUnderstanding20DURequestContentType)foundInEventClassification;
+ (_TtC21DocumentUnderstanding20DURequestContentType)languageTag;
+ (_TtC21DocumentUnderstanding20DURequestContentType)link;
+ (_TtC21DocumentUnderstanding20DURequestContentType)navigationTitle;
+ (_TtC21DocumentUnderstanding20DURequestContentType)phoneNumber;
+ (_TtC21DocumentUnderstanding20DURequestContentType)poem;
+ (_TtC21DocumentUnderstanding20DURequestContentType)posTags;
+ (_TtC21DocumentUnderstanding20DURequestContentType)userInterfaceUnderstanding;
+ (_TtC21DocumentUnderstanding20DURequestContentType)wikiDataTopic;
- (BOOL)isEqual:(id)a3;
- (_TtC21DocumentUnderstanding20DURequestContentType)initWithAbilitiesToUnion:(id)a3;
- (id)copyWithZone:(void *)a3;
@end

@implementation DURequestContentType

+ (_TtC21DocumentUnderstanding20DURequestContentType)languageTag
{
  swift_getObjCClassMetadata();
  v2 = static DURequestContentType.languageTag.getter();

  return v2;
}

+ (_TtC21DocumentUnderstanding20DURequestContentType)wikiDataTopic
{
  swift_getObjCClassMetadata();
  v2 = static DURequestContentType.wikiDataTopic.getter();

  return v2;
}

+ (_TtC21DocumentUnderstanding20DURequestContentType)date
{
  swift_getObjCClassMetadata();
  v2 = static DURequestContentType.date.getter();

  return v2;
}

+ (_TtC21DocumentUnderstanding20DURequestContentType)address
{
  swift_getObjCClassMetadata();
  v2 = static DURequestContentType.address.getter();

  return v2;
}

+ (_TtC21DocumentUnderstanding20DURequestContentType)link
{
  swift_getObjCClassMetadata();
  v2 = static DURequestContentType.link.getter();

  return v2;
}

+ (_TtC21DocumentUnderstanding20DURequestContentType)phoneNumber
{
  swift_getObjCClassMetadata();
  v2 = static DURequestContentType.phoneNumber.getter();

  return v2;
}

+ (_TtC21DocumentUnderstanding20DURequestContentType)navigationTitle
{
  swift_getObjCClassMetadata();
  v2 = static DURequestContentType.navigationTitle.getter();

  return v2;
}

+ (_TtC21DocumentUnderstanding20DURequestContentType)userInterfaceUnderstanding
{
  swift_getObjCClassMetadata();
  v2 = static DURequestContentType.userInterfaceUnderstanding.getter();

  return v2;
}

+ (_TtC21DocumentUnderstanding20DURequestContentType)category
{
  swift_getObjCClassMetadata();
  v2 = static DURequestContentType.category.getter();

  return v2;
}

+ (_TtC21DocumentUnderstanding20DURequestContentType)poem
{
  swift_getObjCClassMetadata();
  v2 = static DURequestContentType.poem.getter();

  return v2;
}

+ (_TtC21DocumentUnderstanding20DURequestContentType)posTags
{
  swift_getObjCClassMetadata();
  v2 = static DURequestContentType.posTags.getter();

  return v2;
}

+ (_TtC21DocumentUnderstanding20DURequestContentType)foundInEvent
{
  swift_getObjCClassMetadata();
  v2 = static DURequestContentType.foundInEvent.getter();

  return v2;
}

+ (_TtC21DocumentUnderstanding20DURequestContentType)foundInEventClassification
{
  swift_getObjCClassMetadata();
  v2 = static DURequestContentType.foundInEventClassification.getter();

  return v2;
}

- (_TtC21DocumentUnderstanding20DURequestContentType)initWithAbilitiesToUnion:(id)a3
{
  swift_getObjectType();
  sub_232CE9FE0();
  return DURequestContentType.init(abilitiesToUnion:)();
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_232CEA420();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = DURequestContentType.isEqual(_:)();

  sub_232B267AC(v8, &qword_27DDC68C8, &qword_232CF6210);
  return v6;
}

- (id)copyWithZone:(void *)a3
{
  v3 = self;
  DURequestContentType.copy(with:)(v6);

  sub_232B203C8(v6, v6[3]);
  v4 = sub_232CEA740();
  sub_232B2040C(v6);
  return v4;
}

@end