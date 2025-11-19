@interface LocationDescriptionGenerator
+ (id)conferenceStringFor:(id)a3 conferenceURLIsBroadcast:(BOOL)a4 options:(unint64_t)a5 outImageName:(id *)a6 incomplete:(BOOL *)a7;
+ (id)labelFor:(id)a3;
+ (id)locationStringFor:(id)a3 locationWithoutPrediction:(id)a4 preferredLocation:(id)a5 conferenceURL:(id)a6 conferenceURLIsBroadcast:(BOOL)a7 options:(unint64_t)a8 incomplete:(BOOL *)a9 leadingImageName:(id *)a10;
+ (id)locationStringFor:(id)a3 options:(unint64_t)a4 incomplete:(BOOL *)a5 leadingImageName:(id *)a6;
- (_TtC13CalendarUIKit28LocationDescriptionGenerator)init;
@end

@implementation LocationDescriptionGenerator

+ (id)locationStringFor:(id)a3 options:(unint64_t)a4 incomplete:(BOOL *)a5 leadingImageName:(id *)a6
{
  swift_getObjCClassMetadata();
  v10 = a3;
  v11 = static LocationDescriptionGenerator.locationString(for:options:incomplete:leadingImageName:)(a3, a4, a5, a6);

  return v11;
}

- (_TtC13CalendarUIKit28LocationDescriptionGenerator)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for LocationDescriptionGenerator();
  return [(LocationDescriptionGenerator *)&v3 init];
}

+ (id)locationStringFor:(id)a3 locationWithoutPrediction:(id)a4 preferredLocation:(id)a5 conferenceURL:(id)a6 conferenceURLIsBroadcast:(BOOL)a7 options:(unint64_t)a8 incomplete:(BOOL *)a9 leadingImageName:(id *)a10
{
  v25 = a8;
  HIDWORD(v24) = a7;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465450);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v24 - v15;
  if (a6)
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
  v19 = a3;
  v20 = a4;
  v21 = a5;
  v22 = static LocationDescriptionGenerator.locationString(for:locationWithoutPrediction:preferredLocation:conferenceURL:conferenceURLIsBroadcast:options:incomplete:leadingImageName:)(a3, a4, a5, v16, SHIDWORD(v24), v25, a9, a10);

  sub_1CAB21B68(v16, &qword_1EC465450);

  return v22;
}

+ (id)labelFor:(id)a3
{
  v4 = a3;
  v5 = _s13CalendarUIKit28LocationDescriptionGeneratorC5label3forSo8NSStringCSgSo012EKStructuredC0CSg_tFZ_0(a3);

  return v5;
}

+ (id)conferenceStringFor:(id)a3 conferenceURLIsBroadcast:(BOOL)a4 options:(unint64_t)a5 outImageName:(id *)a6 incomplete:(BOOL *)a7
{
  v10 = a4;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465450);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v19 - v13;
  if (a3)
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

  v17 = static LocationDescriptionGenerator.conferenceString(for:conferenceURLIsBroadcast:options:outImageName:incomplete:)(v14, v10, a5, a6, a7);
  sub_1CAB21B68(v14, &qword_1EC465450);

  return v17;
}

@end