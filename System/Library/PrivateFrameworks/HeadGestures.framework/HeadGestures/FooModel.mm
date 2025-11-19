@interface FooModel
- (_TtC12HeadGestures8FooModel)init;
- (_TtC12HeadGestures8FooModel)initWithDescription:(id)a3 configuration:(id)a4;
- (_TtC12HeadGestures8FooModel)initWithName:(id)a3 inputDescription:(id)a4 outputDescription:(id)a5 orderedInputFeatureNames:(id)a6 orderedOutputFeatureNames:(id)a7 configuration:(id)a8;
- (id)initDescriptionOnlyWithSpecification:(void *)a3 configuration:(id)a4 error:(id *)a5;
- (id)predictionFromFeatures:(id)a3 error:(id *)a4;
@end

@implementation FooModel

- (id)predictionFromFeatures:(id)a3 error:(id *)a4
{
  type metadata accessor for HGMLInput();
  if (swift_dynamicCastClass())
  {
    type metadata accessor for FooModel.FooModelFeatureProvider();
    v5 = swift_allocObject();
    swift_unknownObjectRetain();
    v6 = self;
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

- (id)initDescriptionOnlyWithSpecification:(void *)a3 configuration:(id)a4 error:(id *)a5
{
  v6 = a4;
  v7 = sub_251104C5C(a3, v6);

  return v7;
}

- (_TtC12HeadGestures8FooModel)initWithDescription:(id)a3 configuration:(id)a4
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for FooModel();
  return [(MLModel *)&v7 initWithDescription:a3 configuration:a4];
}

- (_TtC12HeadGestures8FooModel)initWithName:(id)a3 inputDescription:(id)a4 outputDescription:(id)a5 orderedInputFeatureNames:(id)a6 orderedOutputFeatureNames:(id)a7 configuration:(id)a8
{
  sub_2510FE944(0, &qword_27F41E508, 0x277CBFEE0);
  sub_251130E88();
  sub_251130E88();
  v12 = a3;
  v13 = a6;
  v14 = a7;
  v15 = a8;
  v16 = sub_251130E78();

  v17 = sub_251130E78();

  v21.receiver = self;
  v21.super_class = type metadata accessor for FooModel();
  v18 = [(MLModel *)&v21 initWithName:v12 inputDescription:v16 outputDescription:v17 orderedInputFeatureNames:v13 orderedOutputFeatureNames:v14 configuration:v15];

  return v18;
}

@end