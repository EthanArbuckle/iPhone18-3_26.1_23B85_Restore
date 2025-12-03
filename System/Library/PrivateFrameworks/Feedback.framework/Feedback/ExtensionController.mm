@interface ExtensionController
- (BOOL)shouldAcceptXPCConnection:(id)connection;
- (ExtensionController)initWithCoder:(id)coder;
- (ExtensionController)initWithNibName:(id)name bundle:(id)bundle;
- (void)loadView;
@end

@implementation ExtensionController

- (void)loadView
{
  selfCopy = self;
  sub_1B8BBF43C();
}

- (BOOL)shouldAcceptXPCConnection:(id)connection
{
  connectionCopy = connection;
  selfCopy = self;
  LOBYTE(self) = sub_1B8BBF7A8(connectionCopy);

  return self & 1;
}

- (ExtensionController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_1B8C25128();
    *(&self->super.super.super.super.isa + OBJC_IVAR___ExtensionController_xpcConnection) = 0;
    *(&self->super.super.super.super.isa + OBJC_IVAR___ExtensionController_contentViewController) = 0;
    bundleCopy = bundle;
    v7 = sub_1B8C250F8();
  }

  else
  {
    *(&self->super.super.super.super.isa + OBJC_IVAR___ExtensionController_xpcConnection) = 0;
    *(&self->super.super.super.super.isa + OBJC_IVAR___ExtensionController_contentViewController) = 0;
    bundleCopy2 = bundle;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for ExtensionController();
  v9 = [(ExtensionController *)&v11 initWithNibName:v7 bundle:bundle];

  return v9;
}

- (ExtensionController)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + OBJC_IVAR___ExtensionController_xpcConnection) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR___ExtensionController_contentViewController) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for ExtensionController();
  coderCopy = coder;
  v5 = [(ExtensionController *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end