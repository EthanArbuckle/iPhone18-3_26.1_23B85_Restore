@interface MUPlaceHeaderButtonsSectionController
- (MUPlaceHeaderButtonsSectionController)initWithPlaceItem:(id)a3 configuration:(id)a4;
- (MUPlaceHeaderButtonsSectionControllerDelegate)headerDelegate;
- (void)headerButtonsSectionController:(id)a3 didSelectPrimaryType:(unint64_t)a4 withPresentationOptions:(id)a5;
- (void)headerButtonsSectionControllerDidUpdateContent:(id)a3;
- (void)setPlaceItem:(id)a3;
- (void)setPrimaryButtonType:(unint64_t)a3;
@end

@implementation MUPlaceHeaderButtonsSectionController

- (MUPlaceHeaderButtonsSectionControllerDelegate)headerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_headerDelegate);

  return WeakRetained;
}

- (void)headerButtonsSectionController:(id)a3 didSelectPrimaryType:(unint64_t)a4 withPresentationOptions:(id)a5
{
  v7 = a5;
  v8 = [(MUPlaceHeaderButtonsSectionController *)self headerDelegate];
  [v8 placeHeaderButtonsSectionController:self didSelectPrimaryType:a4 withPresentationOptions:v7];
}

- (void)headerButtonsSectionControllerDidUpdateContent:(id)a3
{
  v4 = [(MUPlaceSectionController *)self delegate];
  [v4 placeSectionControllerDidUpdateContent:self];
}

- (void)setPlaceItem:(id)a3
{
  v5 = a3;
  if (self->_placeItem != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_placeItem, a3);
    [(MUHeaderButtonsSectionController *)self->_headerSectionController setPrimaryButtonType:0];
    v5 = v6;
  }
}

- (void)setPrimaryButtonType:(unint64_t)a3
{
  if (a3 == 1)
  {
    v4 = [(MUPlaceHeaderButtonsSectionControllerConfiguration *)self->_configuration buttonModuleConfiguration];
    v5 = [v4 shouldSuppressDirections];

    if (v5)
    {
      v6 = MUGetPlaceCardLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *v7 = 0;
        _os_log_impl(&dword_1C5620000, v6, OS_LOG_TYPE_INFO, "MUPlaceHeaderButtonsSectionController: The module configuration requests suppressing directions, so overriding primary button type to None", v7, 2u);
      }

      a3 = 0;
    }

    else
    {
      a3 = 1;
    }
  }

  [(MUHeaderButtonsSectionController *)self->_headerSectionController setPrimaryButtonType:a3];
}

- (MUPlaceHeaderButtonsSectionController)initWithPlaceItem:(id)a3 configuration:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 mapItem];
  v26.receiver = self;
  v26.super_class = MUPlaceHeaderButtonsSectionController;
  v10 = [(MUPlaceSectionController *)&v26 initWithMapItem:v9];

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

  objc_storeStrong(&v10->_placeItem, a3);
  objc_storeStrong(&v10->_configuration, a4);
  v12 = objc_alloc_init(MUHeaderButtonsViewConfiguration);
  [(MUHeaderButtonsViewConfiguration *)v12 setShowMoreButton:[(MUPlaceHeaderButtonsSectionControllerConfiguration *)v10->_configuration showMoreButton]];
  if ([(MUPlaceHeaderButtonsSectionControllerConfiguration *)v10->_configuration canShowDetourTime])
  {
    v13 = [(_MKPlaceItem *)v10->_placeItem mapItem];
    v14 = [v13 _detourInfo];
    [v14 detourTime];
    [(MUHeaderButtonsViewConfiguration *)v12 setDetourTime:?];
  }

  else
  {
    [(MUHeaderButtonsViewConfiguration *)v12 setDetourTime:0.0];
  }

  v15 = [(MUPlaceHeaderButtonsSectionControllerConfiguration *)v10->_configuration menuProvider];
  [(MUHeaderButtonsViewConfiguration *)v12 setMenuProvider:v15];

  v16 = [(_MKPlaceItem *)v10->_placeItem mapItem];
  v17 = [v16 _hasFlyover];

  if (v17)
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
  v20 = [(MUPlaceHeaderButtonsSectionControllerConfiguration *)v10->_configuration etaProvider];
  v21 = [(MUHeaderButtonsSectionController *)v19 initWithETAProvider:v20 headerButtonsConfiguration:v12];
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