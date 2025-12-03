@interface LocationDescriptionGenerator
+ (id)conferenceStringFor:(id)for conferenceURLIsBroadcast:(BOOL)broadcast options:(unint64_t)options outImageName:(id *)name incomplete:(BOOL *)incomplete;
+ (id)labelFor:(id)for;
+ (id)locationStringFor:(id)for locationWithoutPrediction:(id)prediction preferredLocation:(id)location conferenceURL:(id)l conferenceURLIsBroadcast:(BOOL)broadcast options:(unint64_t)options incomplete:(BOOL *)incomplete leadingImageName:(id *)self0;
+ (id)locationStringFor:(id)for options:(unint64_t)options incomplete:(BOOL *)incomplete leadingImageName:(id *)name;
- (_TtC13CalendarUIKit28LocationDescriptionGenerator)init;
@end

@implementation LocationDescriptionGenerator

+ (id)locationStringFor:(id)for options:(unint64_t)options incomplete:(BOOL *)incomplete leadingImageName:(id *)name
{
  swift_getObjCClassMetadata();
  forCopy = for;
  v11 = static LocationDescriptionGenerator.locationString(for:options:incomplete:leadingImageName:)(for, options, incomplete, name);

  return v11;
}

- (_TtC13CalendarUIKit28LocationDescriptionGenerator)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for LocationDescriptionGenerator();
  return [(LocationDescriptionGenerator *)&v3 init];
}

+ (id)locationStringFor:(id)for locationWithoutPrediction:(id)prediction preferredLocation:(id)location conferenceURL:(id)l conferenceURLIsBroadcast:(BOOL)broadcast options:(unint64_t)options incomplete:(BOOL *)incomplete leadingImageName:(id *)self0
{
  optionsCopy = options;
  HIDWORD(v24) = broadcast;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465450);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v24 - v15;
  if (l)
  {
    sub_1CAD4BFC4();
    v17 = sub_1CAD4BFF4();
    (*(*(v17 - 8) + 56))(v16, 0, 1, v17);
  }

  else
  {
    v18 = sub_1CAD4BFF4();
    (*(*(v18 - 8) + 56))(v16, 1, 1, v18);
  }

  swift_getObjCClassMetadata();
  forCopy = for;
  predictionCopy = prediction;
  locationCopy = location;
  v22 = static LocationDescriptionGenerator.locationString(for:locationWithoutPrediction:preferredLocation:conferenceURL:conferenceURLIsBroadcast:options:incomplete:leadingImageName:)(for, prediction, location, v16, SHIDWORD(v24), optionsCopy, incomplete, name);

  sub_1CAB21B68(v16, &qword_1EC465450);

  return v22;
}

+ (id)labelFor:(id)for
{
  forCopy = for;
  v5 = _s13CalendarUIKit28LocationDescriptionGeneratorC5label3forSo8NSStringCSgSo012EKStructuredC0CSg_tFZ_0(for);

  return v5;
}

+ (id)conferenceStringFor:(id)for conferenceURLIsBroadcast:(BOOL)broadcast options:(unint64_t)options outImageName:(id *)name incomplete:(BOOL *)incomplete
{
  broadcastCopy = broadcast;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465450);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v19 - v13;
  if (for)
  {
    sub_1CAD4BFC4();
    v15 = sub_1CAD4BFF4();
    (*(*(v15 - 8) + 56))(v14, 0, 1, v15);
  }

  else
  {
    v16 = sub_1CAD4BFF4();
    (*(*(v16 - 8) + 56))(v14, 1, 1, v16);
  }

  v17 = static LocationDescriptionGenerator.conferenceString(for:conferenceURLIsBroadcast:options:outImageName:incomplete:)(v14, broadcastCopy, options, name, incomplete);
  sub_1CAB21B68(v14, &qword_1EC465450);

  return v17;
}

@end