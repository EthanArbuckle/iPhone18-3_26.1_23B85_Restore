@interface MUTransitLineIncidentsViewController
- (MUTransitLineIncidentsViewController)initWithLineItem:(id)a3;
- (MUTransitLineIncidentsViewControllerDelegate)incidentsDelegate;
- (NSDate)referenceDate;
- (id)_incidentCellForRow:(int64_t)a3;
- (id)_incidents;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_showIncidentDetails;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)transitItemReferenceDateUpdater:(id)a3 didUpdateToReferenceDate:(id)a4;
- (void)transitUIReferenceTimeUpdated:(id)a3;
- (void)updateTransitLineItemIfNeeded;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation MUTransitLineIncidentsViewController

- (MUTransitLineIncidentsViewControllerDelegate)incidentsDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_incidentsDelegate);

  return WeakRetained;
}

- (void)transitItemReferenceDateUpdater:(id)a3 didUpdateToReferenceDate:(id)a4
{
  v7 = a4;
  objc_storeStrong(&self->_referenceDate, a4);
  [(MKTransitItemIncidentsController *)self->_incidentsController setReferenceDate:v7];
  if ([(MUTransitLineIncidentsViewController *)self isViewLoaded])
  {
    v6 = [(MUTransitLineIncidentsViewController *)self tableView];
    [v6 reloadData];
  }
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(MUTransitLineIncidentsViewController *)self _showIncidentDetails];
  [v7 deselectRowAtIndexPath:v6 animated:1];
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v5 = MEMORY[0x1E69DC888];
  v6 = a4;
  v7 = [v5 clearColor];
  [v6 setBackgroundColor:v7];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v5 = [a4 row];

  return [(MUTransitLineIncidentsViewController *)self _incidentCellForRow:v5];
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = [(MUTransitLineIncidentsViewController *)self _incidents:a3];
  v5 = [v4 count];

  return v5;
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v3 = [(MUTransitLineIncidentsViewController *)self _incidents];
  v4 = [v3 count] != 0;

  return v4;
}

- (void)_showIncidentDetails
{
  v4 = [(MUTransitLineIncidentsViewController *)self incidentsDelegate];
  v3 = [(MUTransitLineIncidentsViewController *)self _incidents];
  [v4 transitLineIncidentsViewController:self didSelectDetailsForIncidents:v3];
}

- (id)_incidentCellForRow:(int64_t)a3
{
  v5 = [(MUTransitLineIncidentsViewController *)self tableView];
  v6 = [v5 _mapkit_dequeueReusableCellWithIdentifier:@"kIncidentCellIdentifier"];

  if (!v6)
  {
    v6 = [objc_alloc(MEMORY[0x1E696F3E8]) initWithStyle:0 reuseIdentifier:@"kIncidentCellIdentifier"];
  }

  v7 = [(MUTransitLineIncidentsViewController *)self _incidents];
  v8 = v7;
  if (a3 < 0)
  {
    v9 = 0;
    goto LABEL_10;
  }

  if ([v7 count] <= a3)
  {
    v9 = 0;
    if (a3)
    {
      goto LABEL_9;
    }

LABEL_10:
    v10 = 0;
    goto LABEL_11;
  }

  v9 = [v8 objectAtIndexedSubscript:a3];
  if (!a3)
  {
    goto LABEL_10;
  }

LABEL_9:
  v10 = [v8 objectAtIndexedSubscript:a3 - 1];
LABEL_11:
  v11 = [v10 isBlockingIncident];
  v12 = v11 ^ [v9 isBlockingIncident];
  v13 = [(MUTransitLineIncidentsViewController *)self referenceDate];
  [v6 configureWithIncident:v9 referenceDate:v13 shouldShowImage:(v10 == 0) | (v12 & 1) inSiri:0];

  if (a3 < -1 || (v14 = a3 + 1, v14 >= [v8 count]))
  {
    v15 = 0;
  }

  else
  {
    v15 = [v8 objectAtIndexedSubscript:v14];
  }

  v16 = [v15 isBlockingIncident];
  v17 = v16 ^ [v9 isBlockingIncident];
  if (!v15 || v17)
  {
    [v6 setSeparatorHidden:1];
    v19 = 3;
    if ((v10 == 0) | v12 & 1)
    {
      v19 = 1;
    }

    if (((v10 != 0) & v12 & (v15 == 0)) != 0)
    {
      v20 = 0;
    }

    else
    {
      v20 = v19;
    }

    if (v10 | v15)
    {
      v18 = v20;
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    [v6 setSeparatorHidden:0];
    [v6 setTrailingSeparatorInset:0.0];
    if ((v10 == 0) | v12 & 1)
    {
      v18 = 1;
    }

    else
    {
      v18 = 2;
    }
  }

  [v6 setCellPosition:v18];
  [v6 setPadBottom:(v15 != 0) & v17];

  return v6;
}

- (id)_incidents
{
  incidentsController = self->_incidentsController;
  v3 = [(MUTransitLineIncidentsViewController *)self lineItem];
  v4 = [(MKTransitItemIncidentsController *)incidentsController incidentsForLine:v3];

  return v4;
}

- (NSDate)referenceDate
{
  referenceDate = self->_referenceDate;
  if (!referenceDate)
  {
    v4 = [MEMORY[0x1E696F408] referenceDate];
    v5 = self->_referenceDate;
    self->_referenceDate = v4;

    referenceDate = self->_referenceDate;
  }

  return referenceDate;
}

- (void)viewDidLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = MUTransitLineIncidentsViewController;
  [(MUTransitLineIncidentsViewController *)&v4 viewDidLayoutSubviews];
  v3 = [(MUTransitLineIncidentsViewController *)self tableView];
  [v3 contentSize];
  [(MUTransitLineIncidentsViewController *)self setPreferredContentSize:?];
}

- (void)transitUIReferenceTimeUpdated:(id)a3
{
  objc_storeStrong(&self->_referenceDate, a3);
  if ([(MUTransitLineIncidentsViewController *)self isViewLoaded])
  {
    v4 = [(MUTransitLineIncidentsViewController *)self tableView];
    [v4 reloadData];
  }
}

- (void)updateTransitLineItemIfNeeded
{
  v14[1] = *MEMORY[0x1E69E9840];
  if (([(GEOTransitLineItem *)self->_lineItem isIncidentsTTLExpired]& 1) != 0 || ([(GEOTransitLineItem *)self->_lineItem hasIncidentComponent]& 1) == 0)
  {
    v3 = objc_alloc(MEMORY[0x1E696F280]);
    v4 = [(GEOTransitLineItem *)self->_lineItem identifier];
    v5 = [v3 initWithGEOMapItemIdentifier:v4];

    if (v5)
    {
      objc_initWeak(&location, self);
      v6 = [MEMORY[0x1E696F298] sharedService];
      v14[0] = v5;
      v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
      v8 = [v6 ticketForTransitLines:v7 traits:0];

      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __69__MUTransitLineIncidentsViewController_updateTransitLineItemIfNeeded__block_invoke;
      v10[3] = &unk_1E8219FE0;
      objc_copyWeak(&v12, &location);
      v11 = v5;
      [v8 submitWithHandler:v10 networkActivity:0];

      objc_destroyWeak(&v12);
      objc_destroyWeak(&location);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __69__MUTransitLineIncidentsViewController_updateTransitLineItemIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v22;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v22 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v21 + 1) + 8 * i);
          v11 = [v10 identifier];
          v12 = [v11 isEqual:*(a1 + 32)];

          if (v12)
          {
            v13 = v10;
            goto LABEL_12;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v13 = 0;
LABEL_12:

    v14 = *(WeakRetained + 133);
    *(WeakRetained + 133) = v13;
    v15 = v13;

    v16 = [objc_alloc(MEMORY[0x1E696F400]) initWithLineItem:v15];
    v17 = *(WeakRetained + 130);
    *(WeakRetained + 130) = v16;

    v18 = [WeakRetained referenceDate];
    [*(WeakRetained + 130) setReferenceDate:v18];

    if ([WeakRetained isViewLoaded])
    {
      v19 = [WeakRetained tableView];
      [v19 reloadData];
    }
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = MUTransitLineIncidentsViewController;
  [(MUTransitLineIncidentsViewController *)&v7 viewDidLoad];
  v3 = [(MUTransitLineIncidentsViewController *)self tableView];
  [v3 _setTopPadding:0.0];
  [v3 setRowHeight:*MEMORY[0x1E69DE3D0]];
  v4 = [MEMORY[0x1E69DC888] clearColor];
  v5 = [(MUTransitLineIncidentsViewController *)self view];
  [v5 setBackgroundColor:v4];

  v6 = [(MUTransitLineIncidentsViewController *)self view];
  [v6 setPreservesSuperviewLayoutMargins:1];
}

- (MUTransitLineIncidentsViewController)initWithLineItem:(id)a3
{
  v5 = a3;
  v17.receiver = self;
  v17.super_class = MUTransitLineIncidentsViewController;
  v6 = [(MUTransitLineIncidentsViewController *)&v17 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_lineItem, a3);
    v8 = [objc_alloc(MEMORY[0x1E696F408]) initWithDelegate:v7];
    itemUpdater = v7->_itemUpdater;
    v7->_itemUpdater = v8;

    v10 = [objc_alloc(MEMORY[0x1E696F400]) initWithLineItem:v5];
    incidentsController = v7->_incidentsController;
    v7->_incidentsController = v10;

    v12 = [(MUTransitLineIncidentsViewController *)v7 referenceDate];
    [(MKTransitItemIncidentsController *)v7->_incidentsController setReferenceDate:v12];

    v13 = [(MUTransitLineIncidentsViewController *)v7 _incidents];
    v14 = [v13 count] != 0;
    v15 = [MEMORY[0x1E69A15A0] sharedData];
    [v15 setPlaceCardTransitAdvisoryBanner:v14];

    [(MUTransitLineIncidentsViewController *)v7 updateTransitLineItemIfNeeded];
  }

  return v7;
}

@end