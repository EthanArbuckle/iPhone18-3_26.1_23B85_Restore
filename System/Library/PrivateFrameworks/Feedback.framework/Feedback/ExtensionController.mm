@interface ExtensionController
- (BOOL)shouldAcceptXPCConnection:(id)a3;
- (ExtensionController)initWithCoder:(id)a3;
- (ExtensionController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)loadView;
@end

@implementation ExtensionController

- (void)loadView
{
  v2 = self;
  sub_1B8BBF43C();
}

- (BOOL)shouldAcceptXPCConnection:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = sub_1B8BBF7A8(v4);

  return self & 1;
}

- (ExtensionController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_1B8C25128();
    *(&self->super.super.super.super.isa + OBJC_IVAR___ExtensionController_xpcConnection) = 0;
    *(&self->super.super.super.super.isa + OBJC_IVAR___ExtensionController_contentViewController) = 0;
    v6 = a4;
    v7 = sub_1B8C250F8();
  }

  else
  {
    *(&self->super.super.super.super.isa + OBJC_IVAR___ExtensionController_xpcConnection) = 0;
    *(&self->super.super.super.super.isa + OBJC_IVAR___ExtensionController_contentViewController) = 0;
    v8 = a4;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for ExtensionController();
  v9 = [(ExtensionController *)&v11 initWithNibName:v7 bundle:a4];

  return v9;
}

- (ExtensionController)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR___ExtensionController_xpcConnection) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR___ExtensionController_contentViewController) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for ExtensionController();
  v4 = a3;
  v5 = [(ExtensionController *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end