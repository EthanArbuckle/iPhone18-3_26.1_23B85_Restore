@interface MAGCaptureService
- (_TtC16MagnifierSupport17MAGCaptureService)init;
- (void)captureOutput:(id)output didFinishProcessingPhoto:(id)photo error:(id)error;
- (void)captureOutput:(id)output didOutputSampleBuffer:(opaqueCMSampleBuffer *)buffer fromConnection:(id)connection;
- (void)sessionInterruptionEndedWithNotification:(id)notification;
- (void)sessionRuntimeErrorWithNotification:(id)notification;
- (void)sessionWasInterruptedWithNotification:(id)notification;
- (void)wasDisconnectedNotificationWithNotification:(void *)notification;
@end

@implementation MAGCaptureService

- (void)wasDisconnectedNotificationWithNotification:(void *)notification
{
  notificationCopy = notification;
  sub_257DB1770();
}

- (void)sessionRuntimeErrorWithNotification:(id)notification
{
  notificationCopy = notification;
  selfCopy = self;
  sub_257DB22A4(notificationCopy);
}

- (void)sessionWasInterruptedWithNotification:(id)notification
{
  notificationCopy = notification;
  selfCopy = self;
  sub_257DB2B94(notificationCopy);
}

- (void)sessionInterruptionEndedWithNotification:(id)notification
{
  notificationCopy = notification;
  selfCopy = self;
  sub_257DB347C(notificationCopy);
}

- (_TtC16MagnifierSupport17MAGCaptureService)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)captureOutput:(id)output didOutputSampleBuffer:(opaqueCMSampleBuffer *)buffer fromConnection:(id)connection
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5D70);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v15 - v8;
  type metadata accessor for MAGCMSampleBufferWrapper();
  v10 = swift_allocObject();
  *(v10 + 16) = buffer;
  v11 = sub_257ECF930();
  (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v10;
  v12[5] = self;
  bufferCopy = buffer;
  selfCopy = self;
  sub_257E81524(0, 0, v9, &unk_257EE9428, v12);
}

- (void)captureOutput:(id)output didFinishProcessingPhoto:(id)photo error:(id)error
{
  outputCopy = output;
  photoCopy = photo;
  selfCopy = self;
  errorCopy = error;
  sub_257DB72DC(photoCopy, error);
}

@end