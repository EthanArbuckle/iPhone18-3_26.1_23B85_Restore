@interface DOCDebugMenuButton#1inDOCFullDocumentManagerViewController.presentDebugMenu()
- (_TtCFE26DocumentManagerExecutablesCSo36DOCFullDocumentManagerViewControllerP33_17C7E5033D4884DEF571FF35C0A0ED1C16presentDebugMenuFT_T_L_18DOCDebugMenuButton)initWithFrame:;
- (id)contextMenuInteraction:configurationForMenuAtLocation:;
@end

@implementation DOCDebugMenuButton#1inDOCFullDocumentManagerViewController.presentDebugMenu()

- (id)contextMenuInteraction:configurationForMenuAtLocation:
{
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIContextMenuConfiguration);
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = UIContextMenuConfiguration.init(identifier:previewProvider:actionProvider:)(0, 0, 0, partial apply for closure #1 in contextMenuInteraction(_:configurationForMenuAtLocation:) in DOCDebugMenuButton #1 in DOCFullDocumentManagerViewController.presentDebugMenu(), v4);

  return v5;
}

- (_TtCFE26DocumentManagerExecutablesCSo36DOCFullDocumentManagerViewControllerP33_17C7E5033D4884DEF571FF35C0A0ED1C16presentDebugMenuFT_T_L_18DOCDebugMenuButton)initWithFrame:
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtCFE26DocumentManagerExecutablesCSo36DOCFullDocumentManagerViewControllerP33_17C7E5033D4884DEF571FF35C0A0ED1C16presentDebugMenuFT_T_L_18DOCDebugMenuButton_menuInteraction) = 0;
  swift_unknownObjectWeakInit();
  v9.receiver = self;
  v9.super_class = type metadata accessor for DOCDebugMenuButton #1 in DOCFullDocumentManagerViewController.presentDebugMenu()();
  return [(DOCView *)&v9 initWithFrame:x, y, width, height];
}

@end