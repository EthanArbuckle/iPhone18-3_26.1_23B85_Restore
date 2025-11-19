@interface DOCCollaborationHighlightManager
- (void)highlightCenterHighlightsDidChange:(id)a3;
@end

@implementation DOCCollaborationHighlightManager

- (void)highlightCenterHighlightsDidChange:(id)a3
{
  ObjectType = swift_getObjectType();
  v5 = swift_allocObject();
  *(v5 + 16) = self;
  *(v5 + 24) = ObjectType;
  v6 = self;
  DOCRunInMainThread(_:)();
}

@end