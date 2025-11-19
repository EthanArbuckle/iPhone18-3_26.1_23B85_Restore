@interface FloatingSearchController
- (UISearchBar)searchBar;
- (_TtC13FitnessCoreUI24FloatingSearchController)initWithCoder:(id)a3;
- (_TtC13FitnessCoreUI24FloatingSearchController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC13FitnessCoreUI24FloatingSearchController)initWithSearchResultsController:(id)a3;
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

- (_TtC13FitnessCoreUI24FloatingSearchController)initWithSearchResultsController:(id)a3
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
  v7 = a3;
  *(&self->super.super.super.super.isa + v5) = [v6 init];
  v10.receiver = self;
  v10.super_class = type metadata accessor for FloatingSearchController();
  v8 = [(FloatingSearchController *)&v10 initWithSearchResultsController:v7];

  return v8;
}

- (_TtC13FitnessCoreUI24FloatingSearchController)initWithNibName:(id)a3 bundle:(id)a4
{
  sub_20C3E8E3C();
  sub_20C3E8E2C();
  sub_20C3E8E1C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a3)
  {
    sub_20C3E8C2C();
    a3 = v7;
  }

  v8 = OBJC_IVAR____TtC13FitnessCoreUI24FloatingSearchController_floatingSearchBar;
  type metadata accessor for FloatingSearchBar();
  v9 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v10 = a4;
  *(&self->super.super.super.super.isa + v8) = [v9 init];
  if (a3)
  {
    v11 = sub_20C3E8BFC();
  }

  else
  {
    v11 = 0;
  }

  v14.receiver = self;
  v14.super_class = type metadata accessor for FloatingSearchController();
  v12 = [(FloatingSearchController *)&v14 initWithNibName:v11 bundle:v10];

  return v12;
}

- (_TtC13FitnessCoreUI24FloatingSearchController)initWithCoder:(id)a3
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
  v7 = a3;
  *(&self->super.super.super.super.isa + v5) = [v6 init];
  v10.receiver = self;
  v10.super_class = type metadata accessor for FloatingSearchController();
  v8 = [(FloatingSearchController *)&v10 initWithCoder:v7];

  if (v8)
  {
  }

  return v8;
}

@end