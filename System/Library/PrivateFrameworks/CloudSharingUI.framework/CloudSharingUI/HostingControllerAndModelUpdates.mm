@interface HostingControllerAndModelUpdates
- (_TtC14CloudSharingUI32HostingControllerAndModelUpdates)init;
- (_TtC14CloudSharingUI32HostingControllerAndModelUpdates)initWithViewController:(id)controller sourceAppBundleIDDidChangeBlock:(id)block;
- (id)sourceAppBundleIDDidChangeBlock;
@end

@implementation HostingControllerAndModelUpdates

- (id)sourceAppBundleIDDidChangeBlock
{
  v2 = *(self + OBJC_IVAR____TtC14CloudSharingUI32HostingControllerAndModelUpdates_sourceAppBundleIDDidChangeBlock + 8);
  v5[4] = *(self + OBJC_IVAR____TtC14CloudSharingUI32HostingControllerAndModelUpdates_sourceAppBundleIDDidChangeBlock);
  v5[5] = v2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_243B6958C;
  v5[3] = &block_descriptor_4;
  v3 = _Block_copy(v5);

  return v3;
}

- (_TtC14CloudSharingUI32HostingControllerAndModelUpdates)initWithViewController:(id)controller sourceAppBundleIDDidChangeBlock:(id)block
{
  v6 = _Block_copy(block);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(self + OBJC_IVAR____TtC14CloudSharingUI32HostingControllerAndModelUpdates_viewController) = controller;
  v8 = (self + OBJC_IVAR____TtC14CloudSharingUI32HostingControllerAndModelUpdates_sourceAppBundleIDDidChangeBlock);
  *v8 = sub_243B69E24;
  v8[1] = v7;
  v11.receiver = self;
  v11.super_class = type metadata accessor for HostingControllerAndModelUpdates();
  controllerCopy = controller;
  return [(HostingControllerAndModelUpdates *)&v11 init];
}

- (_TtC14CloudSharingUI32HostingControllerAndModelUpdates)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end