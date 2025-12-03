@interface ICAudioAttachmentEditorCoordinator
- (BOOL)isShowingInspector;
- (BOOL)isShowingMiniPlayer;
- (ICAudioAttachmentEditorCoordinator)init;
- (UITextView)textView;
- (UIView)icaxMiniPlayerView;
- (id)makeCancelAction;
- (id)makeDeleteActionFor:(id)for;
- (id)makeDeleteAlertControllerFor:(id)for;
- (void)appendTo:(id)to;
- (void)audioControllerDidPlay:(id)play;
- (void)closeMiniPlayerFor:(id)for;
- (void)dealloc;
- (void)delete:(id)delete;
- (void)documentPicker:(id)picker didPickDocumentsAtURLs:(id)ls;
- (void)documentPickerWasCancelled:(id)cancelled;
- (void)eventReporterLostSession:(id)session;
- (void)exportCallRecordingForDataCollectionForAttachment:(id)attachment;
- (void)playFromBeginning:(id)beginning;
- (void)presentCallRecordingExportViewForAttachment:(id)attachment;
- (void)presentExportViewForAttachment:(id)attachment;
- (void)presentRecordingViewControllerForAttachment:(id)attachment;
- (void)presentReportAConcernFor:(id)for withPositiveFeedback:(BOOL)feedback;
- (void)presentSharingViewForAttachment:(id)attachment fromSourceView:(id)view;
- (void)presentSummaryFor:(id)for;
- (void)presentTranscriptFor:(id)for;
- (void)recordingDetailViewShouldDismiss:(id)dismiss;
- (void)rename:(id)rename;
- (void)scrollTo:(id)to;
- (void)setIsShowingInspector:(BOOL)inspector;
- (void)teardown;
- (void)textViewDidScroll:(id)scroll;
- (void)viewWasDismissed;
@end

@implementation ICAudioAttachmentEditorCoordinator

- (void)teardown
{
  selfCopy = self;
  sub_2151A60CC();
}

- (BOOL)isShowingInspector
{
  v3 = OBJC_IVAR___ICAudioAttachmentEditorCoordinator_isShowingInspector;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)textViewDidScroll:(id)scroll
{
  selfCopy = self;
  sub_2151B6D04();
}

- (void)dealloc
{
  v3 = objc_opt_self();
  selfCopy = self;
  defaultCenter = [v3 defaultCenter];
  [defaultCenter removeObserver_];

  v6.receiver = selfCopy;
  v6.super_class = type metadata accessor for AudioAttachmentEditorCoordinator();
  [(ICAudioAttachmentEditorCoordinator *)&v6 dealloc];
}

- (void)presentRecordingViewControllerForAttachment:(id)attachment
{
  attachmentCopy = attachment;
  selfCopy = self;
  sub_2153E1BB8(attachment);
}

- (void)audioControllerDidPlay:(id)play
{
  v4 = sub_21549E19C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21549E16C();
  selfCopy = self;
  sub_2153E26E8();

  (*(v5 + 8))(v7, v4);
}

- (void)setIsShowingInspector:(BOOL)inspector
{
  v5 = OBJC_IVAR___ICAudioAttachmentEditorCoordinator_isShowingInspector;
  swift_beginAccess();
  *(&self->super.isa + v5) = inspector;
}

- (BOOL)isShowingMiniPlayer
{
  selfCopy = self;
  v3 = sub_2153E36F8();

  return v3;
}

- (void)eventReporterLostSession:(id)session
{
  sessionCopy = session;
  selfCopy = self;
  sub_2153E3874(session);
}

- (UIView)icaxMiniPlayerView
{
  view = *(&self->super.isa + OBJC_IVAR___ICAudioAttachmentEditorCoordinator_miniPlayer);
  if (view)
  {
    view = [view view];
    v2 = vars8;
  }

  return view;
}

- (ICAudioAttachmentEditorCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (UITextView)textView
{
  textView = [*(&self->super.isa + OBJC_IVAR___ICAudioAttachmentEditorCoordinator_noteEditorViewController) textView];

  return textView;
}

- (void)presentSharingViewForAttachment:(id)attachment fromSourceView:(id)view
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5ACE0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v19 - v8;
  v10 = sub_2154A202C();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_2154A1FFC();
  attachmentCopy = attachment;
  viewCopy = view;
  selfCopy = self;
  v14 = attachmentCopy;
  v15 = viewCopy;
  v16 = sub_2154A1FEC();
  v17 = swift_allocObject();
  v18 = MEMORY[0x277D85700];
  v17[2] = v16;
  v17[3] = v18;
  v17[4] = selfCopy;
  v17[5] = v14;
  v17[6] = view;
  sub_2152F4D50(0, 0, v9, &unk_2154C2EB0, v17);
}

- (void)presentCallRecordingExportViewForAttachment:(id)attachment
{
  attachmentCopy = attachment;
  selfCopy = self;
  sub_2153E4C18(attachmentCopy, 1, 0);
}

- (void)exportCallRecordingForDataCollectionForAttachment:(id)attachment
{
  attachmentCopy = attachment;
  selfCopy = self;
  sub_2153E4C18(attachmentCopy, 1, 1);
}

- (void)presentExportViewForAttachment:(id)attachment
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5ACE0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v15 - v6;
  v8 = sub_2154A202C();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_2154A1FFC();
  attachmentCopy = attachment;
  selfCopy = self;
  v11 = attachmentCopy;
  v12 = sub_2154A1FEC();
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  v13[2] = v12;
  v13[3] = v14;
  v13[4] = selfCopy;
  v13[5] = v11;
  sub_2152F4D50(0, 0, v7, &unk_2154C2EA8, v13);
}

- (void)viewWasDismissed
{
  selfCopy = self;
  AudioAttachmentEditorCoordinator.viewWasDismissed()();
}

- (void)recordingDetailViewShouldDismiss:(id)dismiss
{
  swift_unknownObjectRetain();
  sub_2154A2BCC();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0Tm(&v3);
}

- (void)playFromBeginning:(id)beginning
{
  beginningCopy = beginning;
  selfCopy = self;
  _s11NotesEditor015AudioAttachmentB11CoordinatorC17playFromBeginningyySo12ICAttachmentCF_0(beginningCopy);
}

- (void)closeMiniPlayerFor:(id)for
{
  forCopy = for;
  selfCopy = self;
  objectID = [forCopy objectID];
  swift_beginAccess();
  sub_2153EED00(&v8, objectID, &qword_2811995F0, 0x277CBE448, &unk_27CA5C6F0, &unk_2154BE710);
  v7 = v8;
  swift_endAccess();

  sub_2153E2A18(0, forCopy);
}

- (void)scrollTo:(id)to
{
  toCopy = to;
  selfCopy = self;
  textView = [(ICAudioAttachmentEditorCoordinator *)selfCopy textView];
  if (textView)
  {
    v6 = textView;
    rangeInNote = [toCopy rangeInNote];
    [(UITextView *)v6 ic_scrollRangeToVisible:rangeInNote animated:v8 completionHandler:1, 0];
  }
}

- (void)rename:(id)rename
{
  v5 = objc_opt_self();
  v6 = *(&self->super.isa + OBJC_IVAR___ICAudioAttachmentEditorCoordinator_noteEditorViewController);

  [v5 renameAttachment:rename presentingViewController:v6];
}

- (void)presentTranscriptFor:(id)for
{
  forCopy = for;
  selfCopy = self;
  AudioAttachmentEditorCoordinator.presentTranscript(for:)(forCopy);
}

- (void)presentSummaryFor:(id)for
{
  forCopy = for;
  selfCopy = self;
  AudioAttachmentEditorCoordinator.presentSummary(for:)(forCopy);
}

- (void)appendTo:(id)to
{
  toCopy = to;
  selfCopy = self;
  _s11NotesEditor015AudioAttachmentB11CoordinatorC6append2toySo12ICAttachmentC_tF_0(toCopy);
}

- (void)presentReportAConcernFor:(id)for withPositiveFeedback:(BOOL)feedback
{
  forCopy = for;
  selfCopy = self;
  AudioAttachmentEditorCoordinator.presentReportAConcern(for:withPositiveFeedback:)(forCopy, feedback);
}

- (void)delete:(id)delete
{
  deleteCopy = delete;
  selfCopy = self;
  v6 = [(ICAudioAttachmentEditorCoordinator *)selfCopy makeDeleteAlertControllerFor:deleteCopy];
  v7 = *(&selfCopy->super.isa + OBJC_IVAR___ICAudioAttachmentEditorCoordinator_noteEditorViewController);
  presentedViewController = [v7 presentedViewController];
  if (!presentedViewController)
  {
    presentedViewController = v7;
  }

  v9 = presentedViewController;
  [presentedViewController presentViewController:v6 animated:1 completion:0];
}

- (id)makeDeleteAlertControllerFor:(id)for
{
  forCopy = for;
  selfCopy = self;
  v6 = sub_2153EA94C(forCopy);

  return v6;
}

- (id)makeDeleteActionFor:(id)for
{
  forCopy = for;
  selfCopy = self;
  v6 = sub_2153F11BC(forCopy);

  return v6;
}

- (id)makeCancelAction
{
  v2 = sub_2153F1350();

  return v2;
}

- (void)documentPickerWasCancelled:(id)cancelled
{
  selfCopy = self;
  _s11NotesEditor015AudioAttachmentB11CoordinatorC26documentPickerWasCancelledyySo010UIDocumentG14ViewControllerCF_0();
}

- (void)documentPicker:(id)picker didPickDocumentsAtURLs:(id)ls
{
  selfCopy = self;
  _s11NotesEditor015AudioAttachmentB11CoordinatorC26documentPickerWasCancelledyySo010UIDocumentG14ViewControllerCF_0();
}

@end