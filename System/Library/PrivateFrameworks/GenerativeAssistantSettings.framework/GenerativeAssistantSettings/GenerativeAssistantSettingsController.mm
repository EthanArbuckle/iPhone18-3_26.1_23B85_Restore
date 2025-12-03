@interface GenerativeAssistantSettingsController
+ (BOOL)available;
- (GenerativeAssistantSettingsController)initWithCoder:(id)coder;
- (GenerativeAssistantSettingsController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidLoad;
@end

@implementation GenerativeAssistantSettingsController

+ (BOOL)available
{
  v2 = sub_2230C3714();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2230C3704();
  v7 = sub_2230C36D4();
  (*(v3 + 8))(v6, v2);
  return (v7 & 1) == 0;
}

- (GenerativeAssistantSettingsController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_2230C3D84();
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  bundleCopy = bundle;
  sub_2230C3704();
  if (v7)
  {
    v9 = sub_2230C3D74();
  }

  else
  {
    v9 = 0;
  }

  v12.receiver = self;
  v12.super_class = type metadata accessor for GenerativeAssistantSettingsController();
  v10 = [(GenerativeAssistantSettingsController *)&v12 initWithNibName:v9 bundle:bundleCopy];

  return v10;
}

- (GenerativeAssistantSettingsController)initWithCoder:(id)coder
{
  coderCopy = coder;
  sub_2230C3704();
  v7.receiver = self;
  v7.super_class = type metadata accessor for GenerativeAssistantSettingsController();
  v5 = [(GenerativeAssistantSettingsController *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

- (void)viewDidLoad
{
  selfCopy = self;
  GenerativeAssistantSettingsController.viewDidLoad()();
}

@end