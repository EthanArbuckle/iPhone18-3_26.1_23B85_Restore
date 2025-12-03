@interface ICAudioRecordingViewController
+ (id)audioAttachmentInsideViewController:(id)controller;
+ (id)getHostingViewForAttachmentModel:(id)model delegate:(id)delegate;
+ (void)containerViewDidResize:(id)resize;
- (ICAudioRecordingViewController)init;
@end

@implementation ICAudioRecordingViewController

+ (id)getHostingViewForAttachmentModel:(id)model delegate:(id)delegate
{
  v6 = type metadata accessor for RecordingView();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v16 - v10;
  swift_getObjCClassMetadata();
  modelCopy = model;
  swift_unknownObjectRetain();
  sub_21539B46C(modelCopy, delegate, v11);
  sub_21539B7B8(v11, v8);
  v13 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B700));
  v14 = sub_2154A02AC();

  swift_unknownObjectRelease();
  sub_21539B81C(v11);

  return v14;
}

+ (id)audioAttachmentInsideViewController:(id)controller
{
  controllerCopy = controller;
  v4 = _sSo30ICAudioRecordingViewControllerC11NotesEditorE15audioAttachment6insideSo12ICAttachmentCSgSo06UIViewD0C_tFZ_0(controllerCopy);

  return v4;
}

+ (void)containerViewDidResize:(id)resize
{
  resizeCopy = resize;
  _sSo30ICAudioRecordingViewControllerC11NotesEditorE09containerC9DidResizeyySo06UIViewD0CFZ_0(resizeCopy);
}

- (ICAudioRecordingViewController)init
{
  v3.receiver = self;
  v3.super_class = ICAudioRecordingViewController;
  return [(ICAudioRecordingViewController *)&v3 init];
}

@end