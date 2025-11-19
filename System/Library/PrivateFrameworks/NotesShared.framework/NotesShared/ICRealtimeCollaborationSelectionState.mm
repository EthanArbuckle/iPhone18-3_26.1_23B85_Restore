@interface ICRealtimeCollaborationSelectionState
+ (void)registerWithICCRCoder;
- (ICRealtimeCollaborationSelectionState)init;
@end

@implementation ICRealtimeCollaborationSelectionState

+ (void)registerWithICCRCoder
{
  v2 = objc_opt_self();
  type metadata accessor for RealtimeCollaborationSelectionDocument.State();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = sub_2150A4A90();
  [v2 registerClass:ObjCClassFromMetadata forType:v4];
}

- (ICRealtimeCollaborationSelectionState)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(ICRealtimeCollaborationSelectionState *)&v3 init];
}

@end