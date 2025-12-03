@interface DOCCollaborationHighlightManager
- (void)highlightCenterHighlightsDidChange:(id)change;
@end

@implementation DOCCollaborationHighlightManager

- (void)highlightCenterHighlightsDidChange:(id)change
{
  ObjectType = swift_getObjectType();
  v5 = swift_allocObject();
  *(v5 + 16) = self;
  *(v5 + 24) = ObjectType;
  selfCopy = self;
  DOCRunInMainThread(_:)();
}

@end