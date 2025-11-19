@interface LiftUIFactory
+ (id)viewControllerWithData:(id)a3 delegate:(id)a4 dataSource:(id)a5;
+ (id)viewControllerWithJson:(id)a3 delegate:(id)a4 dataSource:(id)a5;
+ (id)viewControllerWithUrl:(id)a3 delegate:(id)a4 dataSource:(id)a5;
- (_TtC6LiftUI13LiftUIFactory)init;
@end

@implementation LiftUIFactory

+ (id)viewControllerWithJson:(id)a3 delegate:(id)a4 dataSource:(id)a5
{
  v7 = sub_255E3A4D8();
  v9 = v8;
  if (a5)
  {
    type metadata accessor for LiftUIObjcDataSourceWrapper();
    v10 = swift_allocObject();
    *(v10 + 16) = a5;
    v11 = &off_2867E8858;
  }

  else
  {
    type metadata accessor for BasicLiftUIDataSource();
    v10 = swift_allocObject();
    v11 = &protocol witness table for BasicLiftUIDataSource;
  }

  v12 = objc_allocWithZone(type metadata accessor for ContentRegistry());
  swift_unknownObjectRetain_n();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v13 = [v12 init];
  v14 = _s6LiftUI0A9UIFactoryC14viewController4json8delegate10dataSource15contentRegistrySo06UIViewE0CSS_So0A10UIDelegate_pSgAA0a6UIDataI0_pAA07ContentK0CtFZ_0(v7, v9, a4, v10, v11, v13);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease_n();

  return v14;
}

+ (id)viewControllerWithData:(id)a3 delegate:(id)a4 dataSource:(id)a5
{
  v7 = a3;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v8 = sub_255E385A8();
  v10 = v9;

  if (a5)
  {
    type metadata accessor for LiftUIObjcDataSourceWrapper();
    v11 = swift_allocObject();
    *(v11 + 16) = a5;
    v12 = &off_2867E8858;
  }

  else
  {
    type metadata accessor for BasicLiftUIDataSource();
    v11 = swift_allocObject();
    v12 = &protocol witness table for BasicLiftUIDataSource;
  }

  v13 = objc_allocWithZone(type metadata accessor for ContentRegistry());
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v14 = [v13 init];
  v15 = _s6LiftUI0A9UIFactoryC14viewController4data8delegate0F6Source15contentRegistrySo06UIViewE0C10Foundation4DataV_So0A10UIDelegate_pSgAA0a6UIDataH0_pAA07ContentJ0CtFZ_0(v8, v10, a4, v11, v12, v14);

  swift_unknownObjectRelease_n();
  sub_255D37E60(v8, v10);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v15;
}

+ (id)viewControllerWithUrl:(id)a3 delegate:(id)a4 dataSource:(id)a5
{
  v7 = sub_255E38588();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_255E38568();
  if (a5)
  {
    type metadata accessor for LiftUIObjcDataSourceWrapper();
    v12 = swift_allocObject();
    *(v12 + 16) = a5;
    v13 = &off_2867E8858;
  }

  else
  {
    type metadata accessor for BasicLiftUIDataSource();
    v12 = swift_allocObject();
    v13 = &protocol witness table for BasicLiftUIDataSource;
  }

  v14 = objc_allocWithZone(type metadata accessor for ContentRegistry());
  swift_unknownObjectRetain_n();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v15 = [v14 init];
  v16 = _s6LiftUI0A9UIFactoryC14viewController3url8delegate10dataSource15contentRegistrySo06UIViewE0C10Foundation3URLV_So0A10UIDelegate_pSgAA0a6UIDataI0_pAA07ContentK0CtFZ_0(v11, a4, v12, v13, v15);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease_n();
  (*(v8 + 8))(v11, v7);

  return v16;
}

- (_TtC6LiftUI13LiftUIFactory)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for LiftUIFactory();
  return [(LiftUIFactory *)&v3 init];
}

@end