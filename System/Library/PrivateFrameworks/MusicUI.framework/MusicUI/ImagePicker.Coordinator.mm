@interface ImagePicker.Coordinator
- (void)documentPicker:(id)picker didPickDocumentsAtURLs:(id)ls;
- (void)documentPickerWasCancelled:(id)cancelled;
- (void)imagePickerController:(id)controller didFinishPickingMediaWithInfo:(id)info;
- (void)imagePickerControllerDidCancel:(id)cancel;
- (void)presentationControllerDidDismiss:(id)dismiss;
@end

@implementation ImagePicker.Coordinator

- (void)imagePickerController:(id)controller didFinishPickingMediaWithInfo:(id)info
{
  type metadata accessor for InfoKey(0);
  sub_21694CFA0(&qword_27CAB6800, type metadata accessor for InfoKey);
  sub_21700E354();
  controllerCopy = controller;
  selfCopy = self;
  sub_21694A590();
}

- (void)imagePickerControllerDidCancel:(id)cancel
{
  cancelCopy = cancel;
  selfCopy = self;
  sub_21694AC38();
}

- (void)documentPicker:(id)picker didPickDocumentsAtURLs:(id)ls
{
  sub_217005EF4();
  sub_21700E824();
  pickerCopy = picker;
  selfCopy = self;
  sub_21694B974();
}

- (void)documentPickerWasCancelled:(id)cancelled
{
  cancelledCopy = cancelled;
  selfCopy = self;
  sub_21694BEE0();
}

- (void)presentationControllerDidDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  selfCopy = self;
  sub_21694C01C();
}

@end