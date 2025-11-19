@interface MedicalIDViewFactory
- (UIScrollView)scrollView;
- (_TtC11MedicalIDUI20MedicalIDViewFactory)init;
- (id)makeHostingControllerWithHealthStore:(id)a3 medicalIDData:(id)a4 displayConfiguration:(id)a5;
- (void)setScrollView:(id)a3;
@end

@implementation MedicalIDViewFactory

- (UIScrollView)scrollView
{
  v3 = OBJC_IVAR____TtC11MedicalIDUI20MedicalIDViewFactory_scrollView;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setScrollView:(id)a3
{
  v5 = OBJC_IVAR____TtC11MedicalIDUI20MedicalIDViewFactory_scrollView;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = a3;
  v7 = a3;
}

- (_TtC11MedicalIDUI20MedicalIDViewFactory)init
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR____TtC11MedicalIDUI20MedicalIDViewFactory_scrollView) = 0;
  v5.receiver = self;
  v5.super_class = ObjectType;
  return [(MedicalIDViewFactory *)&v5 init];
}

- (id)makeHostingControllerWithHealthStore:(id)a3 medicalIDData:(id)a4 displayConfiguration:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  v12 = MedicalIDViewFactory.makeHostingController(healthStore:medicalIDData:displayConfiguration:)(v8, a4, v10);

  return v12;
}

@end