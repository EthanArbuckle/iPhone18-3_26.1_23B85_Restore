@interface MUTransitLineIncidentsSectionController
- (BOOL)hasContent;
- (MUTransitLineIncidentsSectionController)initWithTransitLineItem:(id)item;
- (MUTransitLineIncidentsSectionControllerDelegate)incidentsDelegate;
- (void)_setupSection;
- (void)transitLineIncidentsViewController:(id)controller didSelectDetailsForIncidents:(id)incidents;
@end

@implementation MUTransitLineIncidentsSectionController

- (MUTransitLineIncidentsSectionControllerDelegate)incidentsDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_incidentsDelegate);

  return WeakRetained;
}

- (void)transitLineIncidentsViewController:(id)controller didSelectDetailsForIncidents:(id)incidents
{
  incidentsCopy = incidents;
  incidentsDelegate = [(MUTransitLineIncidentsSectionController *)self incidentsDelegate];
  [incidentsDelegate incidentsSectionController:self didSelectDetailsForIncidents:incidentsCopy];
}

- (BOOL)hasContent
{
  lineItem = [(MUTransitLineItemSectionController *)self lineItem];
  incidents = [lineItem incidents];
  v4 = [incidents count] != 0;

  return v4;
}

- (void)_setupSection
{
  v3 = [MUTransitLineIncidentsViewController alloc];
  lineItem = [(MUTransitLineItemSectionController *)self lineItem];
  v14 = [(MUTransitLineIncidentsViewController *)v3 initWithLineItem:lineItem];

  [(MUTransitLineIncidentsViewController *)v14 setIncidentsDelegate:self];
  v5 = [[MUFixedHeightAwareViewController alloc] initWithViewController:v14];
  fixedHeightAwareVC = self->_fixedHeightAwareVC;
  self->_fixedHeightAwareVC = v5;

  view = [(MUFixedHeightAwareViewController *)self->_fixedHeightAwareVC view];
  [view _mapsui_setCardCorner];

  v8 = [MUPlaceSectionView alloc];
  sectionHeaderViewModel = [(MUTransitLineItemSectionController *)self sectionHeaderViewModel];
  v10 = [(MUPlaceSectionView *)v8 initWithStyle:2 sectionHeaderViewModel:sectionHeaderViewModel];
  sectionView = self->_sectionView;
  self->_sectionView = v10;

  [(MUPlaceSectionView *)self->_sectionView configureWithSectionController:self];
  v12 = self->_sectionView;
  view2 = [(MUFixedHeightAwareViewController *)self->_fixedHeightAwareVC view];
  [(MUPlaceSectionView *)v12 attachViewToContentView:view2];
}

- (MUTransitLineIncidentsSectionController)initWithTransitLineItem:(id)item
{
  v6.receiver = self;
  v6.super_class = MUTransitLineIncidentsSectionController;
  v3 = [(MUTransitLineItemSectionController *)&v6 initWithTransitLineItem:item];
  v4 = v3;
  if (v3)
  {
    [(MUTransitLineIncidentsSectionController *)v3 _setupSection];
  }

  return v4;
}

@end