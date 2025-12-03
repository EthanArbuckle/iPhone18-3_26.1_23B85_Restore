@interface FloatingSearchController
- (UISearchBar)searchBar;
- (_TtC13FitnessCoreUI24FloatingSearchController)initWithCoder:(id)coder;
- (_TtC13FitnessCoreUI24FloatingSearchController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC13FitnessCoreUI24FloatingSearchController)initWithSearchResultsController:(id)controller;
@end

@implementation FloatingSearchController

- (UISearchBar)searchBar
{
  sub_20C3E8E3C();
  sub_20C3E8E2C();
  sub_20C3E8E1C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC13FitnessCoreUI24FloatingSearchController_floatingSearchBar);

  return v3;
}

- (_TtC13FitnessCoreUI24FloatingSearchController)initWithSearchResultsController:(id)controller
{
  sub_20C3E8E3C();
  sub_20C3E8E2C();
  sub_20C3E8E1C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = OBJC_IVAR____TtC13FitnessCoreUI24FloatingSearchController_floatingSearchBar;
  type metadata accessor for FloatingSearchBar();
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  controllerCopy = controller;
  *(&self->super.super.super.super.isa + v5) = [v6 init];
  v10.receiver = self;
  v10.super_class = type metadata accessor for FloatingSearchController();
  v8 = [(FloatingSearchController *)&v10 initWithSearchResultsController:controllerCopy];

  return v8;
}

- (_TtC13FitnessCoreUI24FloatingSearchController)initWithNibName:(id)name bundle:(id)bundle
{
  sub_20C3E8E3C();
  sub_20C3E8E2C();
  sub_20C3E8E1C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (name)
  {
    sub_20C3E8C2C();
    name = v7;
  }

  v8 = OBJC_IVAR____TtC13FitnessCoreUI24FloatingSearchController_floatingSearchBar;
  type metadata accessor for FloatingSearchBar();
  v9 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  bundleCopy = bundle;
  *(&self->super.super.super.super.isa + v8) = [v9 init];
  if (name)
  {
    v11 = sub_20C3E8BFC();
  }

  else
  {
    v11 = 0;
  }

  v14.receiver = self;
  v14.super_class = type metadata accessor for FloatingSearchController();
  v12 = [(FloatingSearchController *)&v14 initWithNibName:v11 bundle:bundleCopy];

  return v12;
}

- (_TtC13FitnessCoreUI24FloatingSearchController)initWithCoder:(id)coder
{
  sub_20C3E8E3C();
  sub_20C3E8E2C();
  sub_20C3E8E1C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = OBJC_IVAR____TtC13FitnessCoreUI24FloatingSearchController_floatingSearchBar;
  type metadata accessor for FloatingSearchBar();
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  coderCopy = coder;
  *(&self->super.super.super.super.isa + v5) = [v6 init];
  v10.receiver = self;
  v10.super_class = type metadata accessor for FloatingSearchController();
  v8 = [(FloatingSearchController *)&v10 initWithCoder:coderCopy];

  if (v8)
  {
  }

  return v8;
}

@end