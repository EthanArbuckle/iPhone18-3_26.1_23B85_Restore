@interface GenerativeAssistantSettingsController
+ (BOOL)available;
- (GenerativeAssistantSettingsController)initWithCoder:(id)a3;
- (GenerativeAssistantSettingsController)initWithNibName:(id)a3 bundle:(id)a4;
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

- (GenerativeAssistantSettingsController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_2230C3D84();
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = a4;
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
  v10 = [(GenerativeAssistantSettingsController *)&v12 initWithNibName:v9 bundle:v8];

  return v10;
}

- (GenerativeAssistantSettingsController)initWithCoder:(id)a3
{
  v4 = a3;
  sub_2230C3704();
  v7.receiver = self;
  v7.super_class = type metadata accessor for GenerativeAssistantSettingsController();
  v5 = [(GenerativeAssistantSettingsController *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

- (void)viewDidLoad
{
  v2 = self;
  GenerativeAssistantSettingsController.viewDidLoad()();
}

@end