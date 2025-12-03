@interface FooModel
- (_TtC12HeadGestures8FooModel)init;
- (_TtC12HeadGestures8FooModel)initWithDescription:(id)description configuration:(id)configuration;
- (_TtC12HeadGestures8FooModel)initWithName:(id)name inputDescription:(id)description outputDescription:(id)outputDescription orderedInputFeatureNames:(id)names orderedOutputFeatureNames:(id)featureNames configuration:(id)configuration;
- (id)initDescriptionOnlyWithSpecification:(void *)specification configuration:(id)configuration error:(id *)error;
- (id)predictionFromFeatures:(id)features error:(id *)error;
@end

@implementation FooModel

- (id)predictionFromFeatures:(id)features error:(id *)error
{
  type metadata accessor for HGMLInput();
  if (swift_dynamicCastClass())
  {
    type metadata accessor for FooModel.FooModelFeatureProvider();
    v5 = swift_allocObject();
    swift_unknownObjectRetain();
    selfCopy = self;
    v7 = sub_25113072C(&unk_2863312F8);
    swift_arrayDestroy();
    v5[2] = v7;

    swift_unknownObjectRelease();

    return v5;
  }

  else
  {
    result = sub_2511313B8();
    __break(1u);
  }

  return result;
}

- (_TtC12HeadGestures8FooModel)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for FooModel();
  return [(FooModel *)&v3 init];
}

- (id)initDescriptionOnlyWithSpecification:(void *)specification configuration:(id)configuration error:(id *)error
{
  configurationCopy = configuration;
  v7 = sub_251104C5C(specification, configurationCopy);

  return v7;
}

- (_TtC12HeadGestures8FooModel)initWithDescription:(id)description configuration:(id)configuration
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for FooModel();
  return [(MLModel *)&v7 initWithDescription:description configuration:configuration];
}

- (_TtC12HeadGestures8FooModel)initWithName:(id)name inputDescription:(id)description outputDescription:(id)outputDescription orderedInputFeatureNames:(id)names orderedOutputFeatureNames:(id)featureNames configuration:(id)configuration
{
  sub_2510FE944(0, &qword_27F41E508, 0x277CBFEE0);
  sub_251130E88();
  sub_251130E88();
  nameCopy = name;
  namesCopy = names;
  featureNamesCopy = featureNames;
  configurationCopy = configuration;
  v16 = sub_251130E78();

  v17 = sub_251130E78();

  v21.receiver = self;
  v21.super_class = type metadata accessor for FooModel();
  v18 = [(MLModel *)&v21 initWithName:nameCopy inputDescription:v16 outputDescription:v17 orderedInputFeatureNames:namesCopy orderedOutputFeatureNames:featureNamesCopy configuration:configurationCopy];

  return v18;
}

@end