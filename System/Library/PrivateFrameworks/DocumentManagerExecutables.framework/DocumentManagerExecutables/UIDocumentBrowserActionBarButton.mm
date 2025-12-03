@interface UIDocumentBrowserActionBarButton
- (UIDocumentBrowserAction)docAction;
- (_TtC26DocumentManagerExecutables32UIDocumentBrowserActionBarButton)init;
- (_TtC26DocumentManagerExecutables32UIDocumentBrowserActionBarButton)initWithCoder:(id)coder;
- (void)setDocAction:(id)action;
@end

@implementation UIDocumentBrowserActionBarButton

- (UIDocumentBrowserAction)docAction
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables32UIDocumentBrowserActionBarButton_docAction;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (void)setDocAction:(id)action
{
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables32UIDocumentBrowserActionBarButton_docAction;
  swift_beginAccess();
  v6 = *(&self->super.super.super.isa + v5);
  *(&self->super.super.super.isa + v5) = action;
  actionCopy = action;
}

- (_TtC26DocumentManagerExecutables32UIDocumentBrowserActionBarButton)init
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables32UIDocumentBrowserActionBarButton_docAction) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for UIDocumentBrowserActionBarButton();
  return [(UIDocumentBrowserActionBarButton *)&v3 init];
}

- (_TtC26DocumentManagerExecutables32UIDocumentBrowserActionBarButton)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables32UIDocumentBrowserActionBarButton_docAction) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for UIDocumentBrowserActionBarButton();
  coderCopy = coder;
  v5 = [(UIDocumentBrowserActionBarButton *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end