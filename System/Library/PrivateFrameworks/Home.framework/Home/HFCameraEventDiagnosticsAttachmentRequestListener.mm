@interface HFCameraEventDiagnosticsAttachmentRequestListener
- (HFCameraEventDiagnosticsAttachmentRequestListener)init;
- (void)dealloc;
@end

@implementation HFCameraEventDiagnosticsAttachmentRequestListener

- (HFCameraEventDiagnosticsAttachmentRequestListener)init
{
  result = sub_20DD65814();
  __break(1u);
  return result;
}

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  selfCopy = self;
  v5 = CFNotificationCenterGetDarwinNotifyCenter();
  if (qword_27C8424A0 != -1)
  {
    swift_once();
  }

  CFNotificationCenterRemoveObserver(v5, selfCopy, qword_27C844780, 0);

  v6.receiver = selfCopy;
  v6.super_class = ObjectType;
  [(HFCameraEventDiagnosticsAttachmentRequestListener *)&v6 dealloc];
}

@end