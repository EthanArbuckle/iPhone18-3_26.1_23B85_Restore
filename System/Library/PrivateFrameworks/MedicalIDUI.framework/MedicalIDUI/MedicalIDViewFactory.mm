@interface MedicalIDViewFactory
- (UIScrollView)scrollView;
- (_TtC11MedicalIDUI20MedicalIDViewFactory)init;
- (id)makeHostingControllerWithHealthStore:(id)store medicalIDData:(id)data displayConfiguration:(id)configuration;
- (void)setScrollView:(id)view;
@end

@implementation MedicalIDViewFactory

- (UIScrollView)scrollView
{
  v3 = OBJC_IVAR____TtC11MedicalIDUI20MedicalIDViewFactory_scrollView;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setScrollView:(id)view
{
  v5 = OBJC_IVAR____TtC11MedicalIDUI20MedicalIDViewFactory_scrollView;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = view;
  viewCopy = view;
}

- (_TtC11MedicalIDUI20MedicalIDViewFactory)init
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR____TtC11MedicalIDUI20MedicalIDViewFactory_scrollView) = 0;
  v5.receiver = self;
  v5.super_class = ObjectType;
  return [(MedicalIDViewFactory *)&v5 init];
}

- (id)makeHostingControllerWithHealthStore:(id)store medicalIDData:(id)data displayConfiguration:(id)configuration
{
  storeCopy = store;
  dataCopy = data;
  configurationCopy = configuration;
  selfCopy = self;
  v12 = MedicalIDViewFactory.makeHostingController(healthStore:medicalIDData:displayConfiguration:)(storeCopy, data, configurationCopy);

  return v12;
}

@end