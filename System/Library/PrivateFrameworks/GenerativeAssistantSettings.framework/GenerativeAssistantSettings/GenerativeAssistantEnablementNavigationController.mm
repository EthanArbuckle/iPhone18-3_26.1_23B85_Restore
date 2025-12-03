@interface GenerativeAssistantEnablementNavigationController
- (_TtC27GenerativeAssistantSettings49GenerativeAssistantEnablementNavigationController)initWithCoder:(id)coder;
- (_TtC27GenerativeAssistantSettings49GenerativeAssistantEnablementNavigationController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidLoad;
@end

@implementation GenerativeAssistantEnablementNavigationController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_2230A8340();
}

- (_TtC27GenerativeAssistantSettings49GenerativeAssistantEnablementNavigationController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_2230C3D84();
    *(&self->super.super.super.isa + OBJC_IVAR____TtC27GenerativeAssistantSettings49GenerativeAssistantEnablementNavigationController_enablementNavigationController) = 0;
    bundleCopy = bundle;
    v7 = sub_2230C3D74();
  }

  else
  {
    *(&self->super.super.super.isa + OBJC_IVAR____TtC27GenerativeAssistantSettings49GenerativeAssistantEnablementNavigationController_enablementNavigationController) = 0;
    bundleCopy2 = bundle;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for GenerativeAssistantEnablementNavigationController();
  v9 = [(GenerativeAssistantEnablementNavigationController *)&v11 initWithNibName:v7 bundle:bundle];

  return v9;
}

- (_TtC27GenerativeAssistantSettings49GenerativeAssistantEnablementNavigationController)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC27GenerativeAssistantSettings49GenerativeAssistantEnablementNavigationController_enablementNavigationController) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for GenerativeAssistantEnablementNavigationController();
  coderCopy = coder;
  v5 = [(GenerativeAssistantEnablementNavigationController *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end