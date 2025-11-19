@interface ObjectCaptureSession
- (BOOL)sessionShouldAttemptRelocalization:(id)a3;
- (_TtC6CoreOC20ObjectCaptureSession)init;
- (uint64_t)logThermalStateChange;
- (void)session:(id)a3 cameraDidChangeTrackingState:(id)a4;
- (void)session:(id)a3 didFailWithError:(id)a4;
- (void)session:(id)a3 didUpdateFrame:(id)a4;
@end

@implementation ObjectCaptureSession

- (_TtC6CoreOC20ObjectCaptureSession)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)session:(id)a3 didUpdateFrame:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_24607C0C4(v7);
}

- (void)session:(id)a3 cameraDidChangeTrackingState:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_24607D158(v7);
}

- (BOOL)sessionShouldAttemptRelocalization:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = _s6CoreOC20ObjectCaptureSessionC34sessionShouldAttemptRelocalizationySbSo9ARSessionCF_0();

  return self & 1;
}

- (void)session:(id)a3 didFailWithError:(id)a4
{
  v6 = a3;
  v8 = a4;
  v7 = self;
  sub_24607DE00(v8);
}

- (uint64_t)logThermalStateChange
{
  v0 = sub_2460918F4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_opt_self() processInfo];
  v6 = [v5 thermalState];

  v7 = sub_245FA3174();
  (*(v1 + 16))(v4, v7, v0);
  v8 = sub_2460918D4();
  v9 = sub_246091FC4();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v10 = 136380931;
    *(v10 + 4) = sub_245F8D3C0(0xD000000000000017, 0x80000002460A4470, &v17);
    *(v10 + 12) = 2082;
    v16 = v6;
    type metadata accessor for ThermalState(0);
    v12 = sub_246091C54();
    v14 = sub_245F8D3C0(v12, v13, &v17);

    *(v10 + 14) = v14;
    _os_log_impl(&dword_245F8A000, v8, v9, "ObjectCaptureSession.%{private}s: Caution! Thermal State changed to %{public}s!", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1989D0](v11, -1, -1);
    MEMORY[0x24C1989D0](v10, -1, -1);
  }

  return (*(v1 + 8))(v4, v0);
}

@end