@interface GenerativeAssistantEnablementNavigationController
- (_TtC27GenerativeAssistantSettings49GenerativeAssistantEnablementNavigationController)initWithCoder:(id)a3;
- (_TtC27GenerativeAssistantSettings49GenerativeAssistantEnablementNavigationController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidLoad;
@end

@implementation GenerativeAssistantEnablementNavigationController

- (void)viewDidLoad
{
  v2 = self;
  sub_2230A8340();
}

- (_TtC27GenerativeAssistantSettings49GenerativeAssistantEnablementNavigationController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_2230C3D84();
    *(&self->super.super.super.isa + OBJC_IVAR____TtC27GenerativeAssistantSettings49GenerativeAssistantEnablementNavigationController_enablementNavigationController) = 0;
    v6 = a4;
    v7 = sub_2230C3D74();
  }

  else
  {
    *(&self->super.super.super.isa + OBJC_IVAR____TtC27GenerativeAssistantSettings49GenerativeAssistantEnablementNavigationController_enablementNavigationController) = 0;
    v8 = a4;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for GenerativeAssistantEnablementNavigationController();
  v9 = [(GenerativeAssistantEnablementNavigationController *)&v11 initWithNibName:v7 bundle:a4];

  return v9;
}

- (_TtC27GenerativeAssistantSettings49GenerativeAssistantEnablementNavigationController)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC27GenerativeAssistantSettings49GenerativeAssistantEnablementNavigationController_enablementNavigationController) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for GenerativeAssistantEnablementNavigationController();
  v4 = a3;
  v5 = [(GenerativeAssistantEnablementNavigationController *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end