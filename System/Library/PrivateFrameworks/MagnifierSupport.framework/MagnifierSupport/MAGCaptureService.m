@interface MAGCaptureService
- (_TtC16MagnifierSupport17MAGCaptureService)init;
- (void)captureOutput:(id)a3 didFinishProcessingPhoto:(id)a4 error:(id)a5;
- (void)captureOutput:(id)a3 didOutputSampleBuffer:(opaqueCMSampleBuffer *)a4 fromConnection:(id)a5;
- (void)sessionInterruptionEndedWithNotification:(id)a3;
- (void)sessionRuntimeErrorWithNotification:(id)a3;
- (void)sessionWasInterruptedWithNotification:(id)a3;
- (void)wasDisconnectedNotificationWithNotification:(void *)a1;
@end

@implementation MAGCaptureService

- (void)wasDisconnectedNotificationWithNotification:(void *)a1
{
  v1 = a1;
  sub_257DB1770();
}

- (void)sessionRuntimeErrorWithNotification:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_257DB22A4(v4);
}

- (void)sessionWasInterruptedWithNotification:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_257DB2B94(v4);
}

- (void)sessionInterruptionEndedWithNotification:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_257DB347C(v4);
}

- (_TtC16MagnifierSupport17MAGCaptureService)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)captureOutput:(id)a3 didOutputSampleBuffer:(opaqueCMSampleBuffer *)a4 fromConnection:(id)a5
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5D70);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v15 - v8;
  type metadata accessor for MAGCMSampleBufferWrapper();
  v10 = swift_allocObject();
  *(v10 + 16) = a4;
  v11 = sub_257ECF930();
  (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v10;
  v12[5] = self;
  v13 = a4;
  v14 = self;
  sub_257E81524(0, 0, v9, &unk_257EE9428, v12);
}

- (void)captureOutput:(id)a3 didFinishProcessingPhoto:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = self;
  v11 = a5;
  sub_257DB72DC(v9, a5);
}

@end