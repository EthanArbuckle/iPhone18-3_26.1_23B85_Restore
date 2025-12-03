@interface IconListRootFolderController
+ (Class)_contentViewClass;
- (_TtC15ControlCenterUI22IconListRootFolderView)folderView;
- (id)_makeContentViewWithConfiguration:(id)configuration;
- (void)handleReduceMotionStateChangedNotification:(id)notification;
- (void)settings:(id)settings changedValueForKey:(id)key;
@end

@implementation IconListRootFolderController

- (_TtC15ControlCenterUI22IconListRootFolderView)folderView
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for IconListRootFolderController();
  folderView = [(IconListFolderController *)&v5 folderView];
  type metadata accessor for IconListRootFolderView();
  v3 = swift_dynamicCastClassUnconditional();

  return v3;
}

+ (Class)_contentViewClass
{
  type metadata accessor for IconListRootFolderView();

  return swift_getObjCClassFromMetadata();
}

- (id)_makeContentViewWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  selfCopy = self;
  v6 = sub_21EA91018(configurationCopy);

  return v6;
}

- (void)handleReduceMotionStateChangedNotification:(id)notification
{
  v4 = sub_21EAA8380();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21EAA8360();
  selfCopy = self;
  sub_21EA91824();

  (*(v5 + 8))(v7, v4);
}

- (void)settings:(id)settings changedValueForKey:(id)key
{
  selfCopy = self;
  sub_21EA91824();
}

@end