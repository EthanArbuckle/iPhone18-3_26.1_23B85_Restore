@interface MetricsInspectorScanner
- (_TtC9JetEngine23MetricsInspectorScanner)init;
- (uint64_t)netServiceBrowserDidStopSearch:;
- (uint64_t)netServiceBrowserWillSearch:;
- (void)netService:(id)service didNotResolve:(id)resolve;
- (void)netServiceBrowser:(id)browser didFindService:(id)service moreComing:(BOOL)coming;
- (void)netServiceBrowser:(id)browser didNotSearch:(id)search;
- (void)netServiceBrowser:(id)browser didRemoveService:(id)service moreComing:(BOOL)coming;
- (void)netServiceDidResolveAddress:(id)address;
@end

@implementation MetricsInspectorScanner

- (void)netServiceBrowser:(id)browser didNotSearch:(id)search
{
  sub_1AB016760(0, &qword_1ED4D1940);
  v6 = sub_1AB4602F4();
  browserCopy = browser;
  selfCopy = self;
  sub_1AB188128(v6);
}

- (void)netServiceBrowser:(id)browser didFindService:(id)service moreComing:(BOOL)coming
{
  swift_getObjectType();
  v7 = *(&self->super.isa + OBJC_IVAR____TtC9JetEngine23MetricsInspectorScanner_stateLock);
  serviceCopy = service;
  selfCopy = self;
  [v7 lock];
  sub_1AB1875E0(serviceCopy, selfCopy);
  [v7 unlock];
}

- (void)netServiceBrowser:(id)browser didRemoveService:(id)service moreComing:(BOOL)coming
{
  v6 = *(&self->super.isa + OBJC_IVAR____TtC9JetEngine23MetricsInspectorScanner_stateLock);
  serviceCopy = service;
  selfCopy = self;
  [v6 lock];
  sub_1AB1879F8(selfCopy, serviceCopy);
  [v6 unlock];
}

- (void)netServiceDidResolveAddress:(id)address
{
  addressCopy = address;
  selfCopy = self;
  sub_1AB18830C(addressCopy);
}

- (void)netService:(id)service didNotResolve:(id)resolve
{
  sub_1AB016760(0, &qword_1ED4D1940);
  v6 = sub_1AB4602F4();
  serviceCopy = service;
  selfCopy = self;
  sub_1AB1884F8(serviceCopy, v6);
}

- (_TtC9JetEngine23MetricsInspectorScanner)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (uint64_t)netServiceBrowserWillSearch:
{
  if (qword_1ED4D1FC0 != -1)
  {
    swift_once();
  }

  v0 = qword_1ED4D1FC8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1AB4D4720;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1AB4D4720;
  v5[3] = MEMORY[0x1E69E6158];
  v5[0] = 0xD000000000000037;
  v5[1] = 0x80000001AB500620;
  *(v2 + 48) = 0u;
  *(v2 + 32) = 0u;
  sub_1AB0169C4(v5, v2 + 32);
  *(v2 + 64) = 0;
  *(v1 + 32) = v2;
  v5[0] = v0;
  v4 = 3;
  OSLogger.log(contentsOf:withLevel:)(v1, &v4);
}

- (uint64_t)netServiceBrowserDidStopSearch:
{
  if (qword_1ED4D1FC0 != -1)
  {
    swift_once();
  }

  v0 = qword_1ED4D1FC8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1AB4D4720;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1AB4D4720;
  v5[3] = MEMORY[0x1E69E6158];
  v5[0] = 0xD000000000000037;
  v5[1] = 0x80000001AB5005E0;
  *(v2 + 48) = 0u;
  *(v2 + 32) = 0u;
  sub_1AB0169C4(v5, v2 + 32);
  *(v2 + 64) = 0;
  *(v1 + 32) = v2;
  v5[0] = v0;
  v4 = 3;
  OSLogger.log(contentsOf:withLevel:)(v1, &v4);
}

@end