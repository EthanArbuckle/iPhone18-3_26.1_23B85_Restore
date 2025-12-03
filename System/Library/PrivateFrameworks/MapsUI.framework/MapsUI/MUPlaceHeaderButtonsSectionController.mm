@interface MUPlaceHeaderButtonsSectionController
- (MUPlaceHeaderButtonsSectionController)initWithPlaceItem:(id)item configuration:(id)configuration;
- (MUPlaceHeaderButtonsSectionControllerDelegate)headerDelegate;
- (void)headerButtonsSectionController:(id)controller didSelectPrimaryType:(unint64_t)type withPresentationOptions:(id)options;
- (void)headerButtonsSectionControllerDidUpdateContent:(id)content;
- (void)setPlaceItem:(id)item;
- (void)setPrimaryButtonType:(unint64_t)type;
@end

@implementation MUPlaceHeaderButtonsSectionController

- (MUPlaceHeaderButtonsSectionControllerDelegate)headerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_headerDelegate);

  return WeakRetained;
}

- (void)headerButtonsSectionController:(id)controller didSelectPrimaryType:(unint64_t)type withPresentationOptions:(id)options
{
  optionsCopy = options;
  headerDelegate = [(MUPlaceHeaderButtonsSectionController *)self headerDelegate];
  [headerDelegate placeHeaderButtonsSectionController:self didSelectPrimaryType:type withPresentationOptions:optionsCopy];
}

- (void)headerButtonsSectionControllerDidUpdateContent:(id)content
{
  delegate = [(MUPlaceSectionController *)self delegate];
  [delegate placeSectionControllerDidUpdateContent:self];
}

- (void)setPlaceItem:(id)item
{
  itemCopy = item;
  if (self->_placeItem != itemCopy)
  {
    v6 = itemCopy;
    objc_storeStrong(&self->_placeItem, item);
    [(MUHeaderButtonsSectionController *)self->_headerSectionController setPrimaryButtonType:0];
    itemCopy = v6;
  }
}

- (void)setPrimaryButtonType:(unint64_t)type
{
  if (type == 1)
  {
    buttonModuleConfiguration = [(MUPlaceHeaderButtonsSectionControllerConfiguration *)self->_configuration buttonModuleConfiguration];
    shouldSuppressDirections = [buttonModuleConfiguration shouldSuppressDirections];

    if (shouldSuppressDirections)
    {
      v6 = MUGetPlaceCardLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *v7 = 0;
        _os_log_impl(&dword_1C5620000, v6, OS_LOG_TYPE_INFO, "MUPlaceHeaderButtonsSectionController: The module configuration requests suppressing directions, so overriding primary button type to None", v7, 2u);
      }

      type = 0;
    }

    else
    {
      type = 1;
    }
  }

  [(MUHeaderButtonsSectionController *)self->_headerSectionController setPrimaryButtonType:type];
}

- (MUPlaceHeaderButtonsSectionController)initWithPlaceItem:(id)item configuration:(id)configuration
{
  itemCopy = item;
  configurationCopy = configuration;
  mapItem = [itemCopy mapItem];
  v26.receiver = self;
  v26.super_class = MUPlaceHeaderButtonsSectionController;
  v10 = [(MUPlaceSectionController *)&v26 initWithMapItem:mapItem];

  if (!v10)
  {
    goto LABEL_17;
  }

  v11 = MUGetPlaceCardLog();
  if (os_signpost_enabled(v11))
  {
    *v25 = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5620000, v11, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "MUPlaceHeaderButtonsSectionControllerInit", "", v25, 2u);
  }

  objc_storeStrong(&v10->_placeItem, item);
  objc_storeStrong(&v10->_configuration, configuration);
  v12 = objc_alloc_init(MUHeaderButtonsViewConfiguration);
  [(MUHeaderButtonsViewConfiguration *)v12 setShowMoreButton:[(MUPlaceHeaderButtonsSectionControllerConfiguration *)v10->_configuration showMoreButton]];
  if ([(MUPlaceHeaderButtonsSectionControllerConfiguration *)v10->_configuration canShowDetourTime])
  {
    mapItem2 = [(_MKPlaceItem *)v10->_placeItem mapItem];
    _detourInfo = [mapItem2 _detourInfo];
    [_detourInfo detourTime];
    [(MUHeaderButtonsViewConfiguration *)v12 setDetourTime:?];
  }

  else
  {
    [(MUHeaderButtonsViewConfiguration *)v12 setDetourTime:0.0];
  }

  menuProvider = [(MUPlaceHeaderButtonsSectionControllerConfiguration *)v10->_configuration menuProvider];
  [(MUHeaderButtonsViewConfiguration *)v12 setMenuProvider:menuProvider];

  mapItem3 = [(_MKPlaceItem *)v10->_placeItem mapItem];
  _hasFlyover = [mapItem3 _hasFlyover];

  if (_hasFlyover)
  {
    v18 = &unk_1F450E3C8;
LABEL_13:
    [(MUHeaderButtonsViewConfiguration *)v12 setPossibleAnalyticActions:v18];
    goto LABEL_14;
  }

  if (([(_MKPlaceItem *)v10->_placeItem options]& 1) != 0)
  {
    v18 = &unk_1F450E3E0;
    goto LABEL_13;
  }

  if (([(_MKPlaceItem *)v10->_placeItem options]& 2) != 0)
  {
    v18 = &unk_1F450E3F8;
    goto LABEL_13;
  }

LABEL_14:
  v19 = [MUHeaderButtonsSectionController alloc];
  etaProvider = [(MUPlaceHeaderButtonsSectionControllerConfiguration *)v10->_configuration etaProvider];
  v21 = [(MUHeaderButtonsSectionController *)v19 initWithETAProvider:etaProvider headerButtonsConfiguration:v12];
  headerSectionController = v10->_headerSectionController;
  v10->_headerSectionController = v21;

  [(MUHeaderButtonsSectionController *)v10->_headerSectionController setDelegate:v10];
  v23 = MUGetPlaceCardLog();
  if (os_signpost_enabled(v23))
  {
    *v25 = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5620000, v23, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "MUPlaceHeaderButtonsSectionControllerInit", "", v25, 2u);
  }

LABEL_17:
  return v10;
}

@end