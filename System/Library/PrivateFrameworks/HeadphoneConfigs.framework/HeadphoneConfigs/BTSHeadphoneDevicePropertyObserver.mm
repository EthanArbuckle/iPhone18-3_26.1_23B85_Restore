@interface BTSHeadphoneDevicePropertyObserver
- (BOOL)reloadTriggered;
- (HPMHeadphoneDevice)headphoneDevice;
- (_TtC16HeadphoneConfigs34BTSHeadphoneDevicePropertyObserver)init;
- (_TtC16HeadphoneConfigs34BTSHeadphoneDevicePropertyObserver)initWithDevice:(id)device onChangeAction:(id)action onChangeReloadAllAction:(id)allAction;
- (void)dealloc;
- (void)reloadAll;
- (void)setHeadphoneDevice:(id)device;
- (void)setReloadTriggered:(BOOL)triggered;
@end

@implementation BTSHeadphoneDevicePropertyObserver

- (HPMHeadphoneDevice)headphoneDevice
{
  v3 = OBJC_IVAR____TtC16HeadphoneConfigs34BTSHeadphoneDevicePropertyObserver_headphoneDevice;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setHeadphoneDevice:(id)device
{
  v5 = OBJC_IVAR____TtC16HeadphoneConfigs34BTSHeadphoneDevicePropertyObserver_headphoneDevice;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = device;
  deviceCopy = device;
  selfCopy = self;

  sub_2511C4088();
}

- (BOOL)reloadTriggered
{
  swift_getKeyPath();
  swift_getKeyPath();
  selfCopy = self;
  sub_2512115EC();

  return v5;
}

- (void)setReloadTriggered:(BOOL)triggered
{
  swift_getKeyPath();
  swift_getKeyPath();
  selfCopy = self;
  sub_2512115FC();
}

- (_TtC16HeadphoneConfigs34BTSHeadphoneDevicePropertyObserver)initWithDevice:(id)device onChangeAction:(id)action onChangeReloadAllAction:(id)allAction
{
  v7 = _Block_copy(action);
  v8 = _Block_copy(allAction);
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  deviceCopy = device;
  return sub_2511C583C(device, sub_2511C65B0, v9, sub_2511C68F0, v10);
}

- (void)reloadAll
{
  v2 = *((*MEMORY[0x277D85000] & self->super.isa) + 0xB8);
  selfCopy = self;
  v2(1);
}

- (void)dealloc
{
  v3 = OBJC_IVAR____TtC16HeadphoneConfigs34BTSHeadphoneDevicePropertyObserver_listeners;
  swift_beginAccess();
  v4 = *(&self->super.isa + v3);
  *(&self->super.isa + v3) = MEMORY[0x277D84FA0];
  selfCopy = self;

  v6.receiver = selfCopy;
  v6.super_class = type metadata accessor for BTSHeadphoneDevicePropertyObserver();
  [(BTSHeadphoneDevicePropertyObserver *)&v6 dealloc];
}

- (_TtC16HeadphoneConfigs34BTSHeadphoneDevicePropertyObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end