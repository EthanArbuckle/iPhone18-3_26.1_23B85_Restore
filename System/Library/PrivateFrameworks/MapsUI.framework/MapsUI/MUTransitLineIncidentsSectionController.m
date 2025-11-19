@interface MUTransitLineIncidentsSectionController
- (BOOL)hasContent;
- (MUTransitLineIncidentsSectionController)initWithTransitLineItem:(id)a3;
- (MUTransitLineIncidentsSectionControllerDelegate)incidentsDelegate;
- (void)_setupSection;
- (void)transitLineIncidentsViewController:(id)a3 didSelectDetailsForIncidents:(id)a4;
@end

@implementation MUTransitLineIncidentsSectionController

- (MUTransitLineIncidentsSectionControllerDelegate)incidentsDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_incidentsDelegate);

  return WeakRetained;
}

- (void)transitLineIncidentsViewController:(id)a3 didSelectDetailsForIncidents:(id)a4
{
  v5 = a4;
  v6 = [(MUTransitLineIncidentsSectionController *)self incidentsDelegate];
  [v6 incidentsSectionController:self didSelectDetailsForIncidents:v5];
}

- (BOOL)hasContent
{
  v2 = [(MUTransitLineItemSectionController *)self lineItem];
  v3 = [v2 incidents];
  v4 = [v3 count] != 0;

  return v4;
}

- (void)_setupSection
{
  v3 = [MUTransitLineIncidentsViewController alloc];
  v4 = [(MUTransitLineItemSectionController *)self lineItem];
  v14 = [(MUTransitLineIncidentsViewController *)v3 initWithLineItem:v4];

  [(MUTransitLineIncidentsViewController *)v14 setIncidentsDelegate:self];
  v5 = [[MUFixedHeightAwareViewController alloc] initWithViewController:v14];
  fixedHeightAwareVC = self->_fixedHeightAwareVC;
  self->_fixedHeightAwareVC = v5;

  v7 = [(MUFixedHeightAwareViewController *)self->_fixedHeightAwareVC view];
  [v7 _mapsui_setCardCorner];

  v8 = [MUPlaceSectionView alloc];
  v9 = [(MUTransitLineItemSectionController *)self sectionHeaderViewModel];
  v10 = [(MUPlaceSectionView *)v8 initWithStyle:2 sectionHeaderViewModel:v9];
  sectionView = self->_sectionView;
  self->_sectionView = v10;

  [(MUPlaceSectionView *)self->_sectionView configureWithSectionController:self];
  v12 = self->_sectionView;
  v13 = [(MUFixedHeightAwareViewController *)self->_fixedHeightAwareVC view];
  [(MUPlaceSectionView *)v12 attachViewToContentView:v13];
}

- (MUTransitLineIncidentsSectionController)initWithTransitLineItem:(id)a3
{
  v6.receiver = self;
  v6.super_class = MUTransitLineIncidentsSectionController;
  v3 = [(MUTransitLineItemSectionController *)&v6 initWithTransitLineItem:a3];
  v4 = v3;
  if (v3)
  {
    [(MUTransitLineIncidentsSectionController *)v3 _setupSection];
  }

  return v4;
}

@end