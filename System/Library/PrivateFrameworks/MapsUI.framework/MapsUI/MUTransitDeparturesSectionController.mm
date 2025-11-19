@interface MUTransitDeparturesSectionController
- (BOOL)sectionViewProvider:(id)a3 canSelect:(id)a4 using:(id)a5;
- (MUTransitDeparturesSectionController)initWithMapItem:(id)a3 allowTransitLineSelection:(BOOL)a4 departuresDelegate:(id)a5;
- (MUTransitDeparturesSectionControllerDelegate)departuresDelegate;
- (id)traitsForDeparturesDataSource:(id)a3;
- (void)_setupSections;
- (void)sectionViewProvider:(id)a3 didSelect:(id)a4 using:(id)a5;
- (void)sectionViewProvider:(id)a3 didSelectAttribution:(id)a4;
- (void)sectionViewProvider:(id)a3 didSelectConnectionInfo:(id)a4;
- (void)sectionViewProvider:(id)a3 didSelectDepartureSequence:(id)a4 using:(id)a5;
- (void)sectionViewProvider:(id)a3 didSelectIncidents:(id)a4;
- (void)setActive:(BOOL)a3;
- (void)transitDeparturesDataSourceWantsReload:(id)a3;
@end

@implementation MUTransitDeparturesSectionController

- (MUTransitDeparturesSectionControllerDelegate)departuresDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_departuresDelegate);

  return WeakRetained;
}

- (void)setActive:(BOOL)a3
{
  if (self->_active != a3)
  {
    self->_active = a3;
    [(MUTransitDeparturesDataSource *)self->_dataSource setIsActive:?];
  }
}

- (void)transitDeparturesDataSourceWantsReload:(id)a3
{
  [(MUTransitDeparturesSectionViewProvider *)self->_viewProvider setNeedsRebuild:1];
  v4 = [(MUPlaceSectionController *)self delegate];
  [v4 placeSectionControllerDidUpdateContent:self];
}

- (id)traitsForDeparturesDataSource:(id)a3
{
  v4 = [(MUTransitDeparturesSectionController *)self departuresDelegate];
  v5 = [v4 traitsForTransitDeparturesSectionController:self];

  return v5;
}

- (void)sectionViewProvider:(id)a3 didSelectIncidents:(id)a4
{
  v5 = a4;
  v6 = [(MUTransitDeparturesSectionController *)self departuresDelegate];
  [v6 transitDeparturesSectionController:self showIncidents:v5];
}

- (void)sectionViewProvider:(id)a3 didSelect:(id)a4 using:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [(MUTransitDeparturesSectionController *)self departuresDelegate];
  [v9 transitDeparturesSectionController:self didSelectTransitLine:v8 usingPresentationOptions:v7 completion:&__block_literal_global_16135];
}

- (void)sectionViewProvider:(id)a3 didSelectDepartureSequence:(id)a4 using:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [(MUTransitDeparturesSectionController *)self departuresDelegate];
  [v9 transitDeparturesSectionController:self didSelectDepartureSequence:v8 usingMapItem:v7];
}

- (void)sectionViewProvider:(id)a3 didSelectConnectionInfo:(id)a4
{
  v5 = a4;
  v6 = [(MUTransitDeparturesSectionController *)self departuresDelegate];
  [v6 transitDeparturesSectionController:self didSelectConnectionInformation:v5];
}

- (void)sectionViewProvider:(id)a3 didSelectAttribution:(id)a4
{
  v5 = a4;
  [(MUPlaceSectionController *)self captureInfoCardAction:7006 eventValue:0 feedbackType:0 actionRichProviderId:0 classification:0];
  v6 = [(MUTransitDeparturesSectionController *)self departuresDelegate];
  [v6 transitDeparturesSectionController:self didSelectAttribution:v5];
}

- (BOOL)sectionViewProvider:(id)a3 canSelect:(id)a4 using:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [(MUTransitDeparturesSectionController *)self departuresDelegate];
  LOBYTE(self) = [v9 transitDeparturesSectionController:self canSelectDepartureSequence:v8 usingMapItem:v7];

  return self;
}

- (void)_setupSections
{
  v3 = [MUTransitDeparturesDataSource alloc];
  v4 = [(MUPlaceSectionController *)self mapItem];
  v5 = [(MUTransitDeparturesDataSource *)v3 initWithMapItem:v4];
  dataSource = self->_dataSource;
  self->_dataSource = v5;

  [(MUTransitDeparturesDataSource *)self->_dataSource setDelegate:self];
  v7 = [[MUTransitDeparturesSectionViewProvider alloc] initWithDataSource:self->_dataSource userInteractionDelegate:self];
  viewProvider = self->_viewProvider;
  self->_viewProvider = v7;

  MEMORY[0x1EEE66BB8](v7, viewProvider);
}

- (MUTransitDeparturesSectionController)initWithMapItem:(id)a3 allowTransitLineSelection:(BOOL)a4 departuresDelegate:(id)a5
{
  v7 = a5;
  v11.receiver = self;
  v11.super_class = MUTransitDeparturesSectionController;
  v8 = [(MUPlaceSectionController *)&v11 initWithMapItem:a3];
  v9 = v8;
  if (v8)
  {
    [(MUTransitDeparturesSectionController *)v8 setDeparturesDelegate:v7];
    [(MUTransitDeparturesSectionController *)v9 _setupSections];
  }

  return v9;
}

@end