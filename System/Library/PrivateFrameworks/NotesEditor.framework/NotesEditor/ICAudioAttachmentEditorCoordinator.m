@interface ICAudioAttachmentEditorCoordinator
- (BOOL)isShowingInspector;
- (BOOL)isShowingMiniPlayer;
- (ICAudioAttachmentEditorCoordinator)init;
- (UITextView)textView;
- (UIView)icaxMiniPlayerView;
- (id)makeCancelAction;
- (id)makeDeleteActionFor:(id)a3;
- (id)makeDeleteAlertControllerFor:(id)a3;
- (void)appendTo:(id)a3;
- (void)audioControllerDidPlay:(id)a3;
- (void)closeMiniPlayerFor:(id)a3;
- (void)dealloc;
- (void)delete:(id)a3;
- (void)documentPicker:(id)a3 didPickDocumentsAtURLs:(id)a4;
- (void)documentPickerWasCancelled:(id)a3;
- (void)eventReporterLostSession:(id)a3;
- (void)exportCallRecordingForDataCollectionForAttachment:(id)a3;
- (void)playFromBeginning:(id)a3;
- (void)presentCallRecordingExportViewForAttachment:(id)a3;
- (void)presentExportViewForAttachment:(id)a3;
- (void)presentRecordingViewControllerForAttachment:(id)a3;
- (void)presentReportAConcernFor:(id)a3 withPositiveFeedback:(BOOL)a4;
- (void)presentSharingViewForAttachment:(id)a3 fromSourceView:(id)a4;
- (void)presentSummaryFor:(id)a3;
- (void)presentTranscriptFor:(id)a3;
- (void)recordingDetailViewShouldDismiss:(id)a3;
- (void)rename:(id)a3;
- (void)scrollTo:(id)a3;
- (void)setIsShowingInspector:(BOOL)a3;
- (void)teardown;
- (void)textViewDidScroll:(id)a3;
- (void)viewWasDismissed;
@end

@implementation ICAudioAttachmentEditorCoordinator

- (void)teardown
{
  v2 = self;
  sub_2151A60CC();
}

- (BOOL)isShowingInspector
{
  v3 = OBJC_IVAR___ICAudioAttachmentEditorCoordinator_isShowingInspector;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)textViewDidScroll:(id)a3
{
  v3 = self;
  sub_2151B6D04();
}

- (void)dealloc
{
  v3 = objc_opt_self();
  v4 = self;
  v5 = [v3 defaultCenter];
  [v5 removeObserver_];

  v6.receiver = v4;
  v6.super_class = type metadata accessor for AudioAttachmentEditorCoordinator();
  [(ICAudioAttachmentEditorCoordinator *)&v6 dealloc];
}

- (void)presentRecordingViewControllerForAttachment:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_2153E1BB8(a3);
}

- (void)audioControllerDidPlay:(id)a3
{
  v4 = sub_21549E19C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21549E16C();
  v8 = self;
  sub_2153E26E8();

  (*(v5 + 8))(v7, v4);
}

- (void)setIsShowingInspector:(BOOL)a3
{
  v5 = OBJC_IVAR___ICAudioAttachmentEditorCoordinator_isShowingInspector;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (BOOL)isShowingMiniPlayer
{
  v2 = self;
  v3 = sub_2153E36F8();

  return v3;
}

- (void)eventReporterLostSession:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_2153E3874(a3);
}

- (UIView)icaxMiniPlayerView
{
  v3 = *(&self->super.isa + OBJC_IVAR___ICAudioAttachmentEditorCoordinator_miniPlayer);
  if (v3)
  {
    v3 = [v3 view];
    v2 = vars8;
  }

  return v3;
}

- (ICAudioAttachmentEditorCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (UITextView)textView
{
  v2 = [*(&self->super.isa + OBJC_IVAR___ICAudioAttachmentEditorCoordinator_noteEditorViewController) textView];

  return v2;
}

- (void)presentSharingViewForAttachment:(id)a3 fromSourceView:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5ACE0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v19 - v8;
  v10 = sub_2154A202C();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_2154A1FFC();
  v11 = a3;
  v12 = a4;
  v13 = self;
  v14 = v11;
  v15 = v12;
  v16 = sub_2154A1FEC();
  v17 = swift_allocObject();
  v18 = MEMORY[0x277D85700];
  v17[2] = v16;
  v17[3] = v18;
  v17[4] = v13;
  v17[5] = v14;
  v17[6] = a4;
  sub_2152F4D50(0, 0, v9, &unk_2154C2EB0, v17);
}

- (void)presentCallRecordingExportViewForAttachment:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2153E4C18(v4, 1, 0);
}

- (void)exportCallRecordingForDataCollectionForAttachment:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2153E4C18(v4, 1, 1);
}

- (void)presentExportViewForAttachment:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5ACE0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v15 - v6;
  v8 = sub_2154A202C();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_2154A1FFC();
  v9 = a3;
  v10 = self;
  v11 = v9;
  v12 = sub_2154A1FEC();
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  v13[2] = v12;
  v13[3] = v14;
  v13[4] = v10;
  v13[5] = v11;
  sub_2152F4D50(0, 0, v7, &unk_2154C2EA8, v13);
}

- (void)viewWasDismissed
{
  v2 = self;
  AudioAttachmentEditorCoordinator.viewWasDismissed()();
}

- (void)recordingDetailViewShouldDismiss:(id)a3
{
  swift_unknownObjectRetain();
  sub_2154A2BCC();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0Tm(&v3);
}

- (void)playFromBeginning:(id)a3
{
  v4 = a3;
  v5 = self;
  _s11NotesEditor015AudioAttachmentB11CoordinatorC17playFromBeginningyySo12ICAttachmentCF_0(v4);
}

- (void)closeMiniPlayerFor:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = [v4 objectID];
  swift_beginAccess();
  sub_2153EED00(&v8, v6, &qword_2811995F0, 0x277CBE448, &unk_27CA5C6F0, &unk_2154BE710);
  v7 = v8;
  swift_endAccess();

  sub_2153E2A18(0, v4);
}

- (void)scrollTo:(id)a3
{
  v4 = a3;
  v9 = self;
  v5 = [(ICAudioAttachmentEditorCoordinator *)v9 textView];
  if (v5)
  {
    v6 = v5;
    v7 = [v4 rangeInNote];
    [(UITextView *)v6 ic_scrollRangeToVisible:v7 animated:v8 completionHandler:1, 0];
  }
}

- (void)rename:(id)a3
{
  v5 = objc_opt_self();
  v6 = *(&self->super.isa + OBJC_IVAR___ICAudioAttachmentEditorCoordinator_noteEditorViewController);

  [v5 renameAttachment:a3 presentingViewController:v6];
}

- (void)presentTranscriptFor:(id)a3
{
  v4 = a3;
  v5 = self;
  AudioAttachmentEditorCoordinator.presentTranscript(for:)(v4);
}

- (void)presentSummaryFor:(id)a3
{
  v4 = a3;
  v5 = self;
  AudioAttachmentEditorCoordinator.presentSummary(for:)(v4);
}

- (void)appendTo:(id)a3
{
  v4 = a3;
  v5 = self;
  _s11NotesEditor015AudioAttachmentB11CoordinatorC6append2toySo12ICAttachmentC_tF_0(v4);
}

- (void)presentReportAConcernFor:(id)a3 withPositiveFeedback:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  AudioAttachmentEditorCoordinator.presentReportAConcern(for:withPositiveFeedback:)(v6, a4);
}

- (void)delete:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = [(ICAudioAttachmentEditorCoordinator *)v5 makeDeleteAlertControllerFor:v4];
  v7 = *(&v5->super.isa + OBJC_IVAR___ICAudioAttachmentEditorCoordinator_noteEditorViewController);
  v8 = [v7 presentedViewController];
  if (!v8)
  {
    v8 = v7;
  }

  v9 = v8;
  [v8 presentViewController:v6 animated:1 completion:0];
}

- (id)makeDeleteAlertControllerFor:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_2153EA94C(v4);

  return v6;
}

- (id)makeDeleteActionFor:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_2153F11BC(v4);

  return v6;
}

- (id)makeCancelAction
{
  v2 = sub_2153F1350();

  return v2;
}

- (void)documentPickerWasCancelled:(id)a3
{
  v3 = self;
  _s11NotesEditor015AudioAttachmentB11CoordinatorC26documentPickerWasCancelledyySo010UIDocumentG14ViewControllerCF_0();
}

- (void)documentPicker:(id)a3 didPickDocumentsAtURLs:(id)a4
{
  v4 = self;
  _s11NotesEditor015AudioAttachmentB11CoordinatorC26documentPickerWasCancelledyySo010UIDocumentG14ViewControllerCF_0();
}

@end