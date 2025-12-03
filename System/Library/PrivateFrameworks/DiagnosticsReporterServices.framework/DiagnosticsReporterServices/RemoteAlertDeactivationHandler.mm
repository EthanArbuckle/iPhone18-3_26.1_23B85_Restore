@interface RemoteAlertDeactivationHandler
- (_TtC27DiagnosticsReporterServices30RemoteAlertDeactivationHandler)init;
- (void)remoteAlertHandle:(id)handle didInvalidateWithError:(id)error;
- (void)remoteAlertHandleDidActivate:;
- (void)remoteAlertHandleDidDeactivate:(id)deactivate;
@end

@implementation RemoteAlertDeactivationHandler

- (void)remoteAlertHandleDidDeactivate:(id)deactivate
{
  deactivateCopy = deactivate;
  selfCopy = self;
  sub_21DD878E0(deactivateCopy);
}

- (void)remoteAlertHandle:(id)handle didInvalidateWithError:(id)error
{
  handleCopy = handle;
  selfCopy = self;
  errorCopy = error;
  sub_21DD87AC0(handleCopy, error);
}

- (_TtC27DiagnosticsReporterServices30RemoteAlertDeactivationHandler)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)remoteAlertHandleDidActivate:
{
  if (qword_281221BD8 != -1)
  {
    swift_once();
  }

  v0 = sub_21DD8BF08();
  __swift_project_value_buffer(v0, qword_281221D58);
  oslog = sub_21DD8BEE8();
  v1 = sub_21DD8C1E8();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_21DD74A90(0xD000000000000020, 0x800000021DD8E9D0, &v5);
    _os_log_impl(&dword_21DD6F000, oslog, v1, "%s", v2, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v3);
    MEMORY[0x223D47710](v3, -1, -1);
    MEMORY[0x223D47710](v2, -1, -1);
  }
}

@end