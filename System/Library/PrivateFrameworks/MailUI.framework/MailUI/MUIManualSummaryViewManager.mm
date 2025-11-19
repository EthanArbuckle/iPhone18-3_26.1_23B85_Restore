@interface MUIManualSummaryViewManager
- (BOOL)didCancelSummarization;
- (BOOL)needsToUseExternalIntelligenceErrorFrom:(id)a3;
- (MUIManualSummaryView)summaryView;
- (MUIManualSummaryViewManager)initWithViewModel:(id)a3 delegate:(id)a4 summaryView:(id)a5;
- (MUIManualSummaryViewManagerDelegate)delegate;
- (MUIManualSummaryViewModel)viewModel;
- (UIView)view;
- (UIViewController)onboardingController;
- (void)beginSummarizingUsingExternalIntelligence:(BOOL)a3;
- (void)configureManualSummaryView;
- (void)didSelectShowSummaryButtonForSummaryView:(id)a3;
- (void)presentAlertWithTitle:(id)a3 message:(id)a4 confirmTitle:(id)a5 confirmActionHandler:(id)a6 cancelTitle:(id)a7 cancelActionHandler:(id)a8;
- (void)refreshSummaryViewModel;
- (void)requestConfirmationToDisplaySummary;
- (void)resetToInitialStateIfLoading;
- (void)setDelegate:(id)a3;
- (void)setDidCancelSummarization:(BOOL)a3;
- (void)setOnboardingController:(id)a3;
- (void)setSummaryView:(id)a3;
- (void)setViewModel:(id)a3;
@end

@implementation MUIManualSummaryViewManager

- (UIView)view
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](self);
  v5 = sub_214C58C08();
  MEMORY[0x277D82BD8](self);

  return v5;
}

- (BOOL)didCancelSummarization
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](self);
  sub_214C58CCC();
  MEMORY[0x277D82BD8](self);
  return sub_214CCD384() & 1;
}

- (void)setDidCancelSummarization:(BOOL)a3
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](self);
  v4 = sub_214CCD394();
  sub_214C58D9C(v4 & 1);
  MEMORY[0x277D82BD8](self);
}

- (MUIManualSummaryViewModel)viewModel
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](self);
  v5 = sub_214C58E84();
  MEMORY[0x277D82BD8](self);

  return v5;
}

- (void)setViewModel:(id)a3
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](a3);
  MEMORY[0x277D82BE0](self);
  sub_214C58F64(a3);
  MEMORY[0x277D82BD8](self);
}

- (MUIManualSummaryViewManagerDelegate)delegate
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](self);
  v5 = sub_214C59074();
  MEMORY[0x277D82BD8](self);

  return v5;
}

- (void)setDelegate:(id)a3
{
  swift_getObjectType();
  swift_unknownObjectRetain();
  MEMORY[0x277D82BE0](self);
  sub_214C59144(a3);
  MEMORY[0x277D82BD8](self);
}

- (MUIManualSummaryView)summaryView
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](self);
  v5 = sub_214C59238();
  MEMORY[0x277D82BD8](self);

  return v5;
}

- (void)setSummaryView:(id)a3
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](a3);
  MEMORY[0x277D82BE0](self);
  sub_214C59318(a3);
  MEMORY[0x277D82BD8](self);
}

- (UIViewController)onboardingController
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](self);
  v5 = sub_214C59428();
  MEMORY[0x277D82BD8](self);

  return v5;
}

- (void)setOnboardingController:(id)a3
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](a3);
  MEMORY[0x277D82BE0](self);
  sub_214C59508(a3);
  MEMORY[0x277D82BD8](self);
}

- (MUIManualSummaryViewManager)initWithViewModel:(id)a3 delegate:(id)a4 summaryView:(id)a5
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](a3);
  swift_unknownObjectRetain();
  MEMORY[0x277D82BE0](a5);
  return sub_214C59620(a3, a4, a5);
}

- (void)configureManualSummaryView
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](self);
  sub_214C59994();
  MEMORY[0x277D82BD8](self);
}

- (void)resetToInitialStateIfLoading
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](self);
  MUIManualSummaryViewManager.resetToInitialStateIfLoading()();
  MEMORY[0x277D82BD8](self);
}

- (void)beginSummarizingUsingExternalIntelligence:(BOOL)a3
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](self);
  v4 = sub_214CCD394();
  MUIManualSummaryViewManager.beginSummarizing(usingExternalIntelligence:)(v4 & 1);
  MEMORY[0x277D82BD8](self);
}

- (void)refreshSummaryViewModel
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](self);
  sub_214C5C8B0();
  MEMORY[0x277D82BD8](self);
}

- (BOOL)needsToUseExternalIntelligenceErrorFrom:(id)a3
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](a3);
  MEMORY[0x277D82BE0](self);
  sub_214C5CA00();
  MEMORY[0x277D82BD8](self);
  MEMORY[0x277D82BD8](a3);
  return sub_214CCD384() & 1;
}

- (void)requestConfirmationToDisplaySummary
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](self);
  sub_214C5CABC();
  MEMORY[0x277D82BD8](self);
}

- (void)presentAlertWithTitle:(id)a3 message:(id)a4 confirmTitle:(id)a5 confirmActionHandler:(id)a6 cancelTitle:(id)a7 cancelActionHandler:(id)a8
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](a3);
  MEMORY[0x277D82BE0](a4);
  MEMORY[0x277D82BE0](a5);
  v34 = _Block_copy(a6);
  MEMORY[0x277D82BE0](a7);
  v26 = _Block_copy(a8);
  MEMORY[0x277D82BE0](self);
  v29 = sub_214CCF564();
  v30 = v8;
  v32 = sub_214CCF564();
  v33 = v9;
  v35 = sub_214CCF564();
  v36 = v10;
  if (v34)
  {
    v11 = swift_allocObject();
    *(v11 + 16) = v34;
    v20 = sub_214B8ACA0;
    v21 = v11;
  }

  else
  {
    v20 = 0;
    v21 = 0;
  }

  if (a7)
  {
    v16 = sub_214CCF564();
    v17 = v12;
    MEMORY[0x277D82BD8](a7);
    v18 = v16;
    v19 = v17;
  }

  else
  {
    v18 = 0;
    v19 = 0;
  }

  if (v26)
  {
    v13 = swift_allocObject();
    *(v13 + 16) = v26;
    v14 = sub_214B8ACA0;
    v15 = v13;
  }

  else
  {
    v14 = 0;
    v15 = 0;
  }

  sub_214C5D884(v29, v30, v32, v33, v35, v36, v20, v21, v18, v19, v14, v15);
  sub_214A6B584(v14);

  sub_214A6B584(v20);

  MEMORY[0x277D82BD8](a5);

  MEMORY[0x277D82BD8](a4);

  MEMORY[0x277D82BD8](a3);
  MEMORY[0x277D82BD8](self);
}

- (void)didSelectShowSummaryButtonForSummaryView:(id)a3
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](a3);
  MEMORY[0x277D82BE0](self);
  MUIManualSummaryViewManager.didSelectShowSummaryButton(for:)(a3);
  MEMORY[0x277D82BD8](self);
  MEMORY[0x277D82BD8](a3);
}

@end