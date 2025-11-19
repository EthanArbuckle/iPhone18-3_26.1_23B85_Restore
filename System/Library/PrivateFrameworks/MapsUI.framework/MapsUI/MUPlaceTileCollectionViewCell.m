@interface MUPlaceTileCollectionViewCell
+ (CGSize)preferredSizeForViewModels:(id)a3 cellConfiguration:(id)a4 usingMeasurements:(id)a5;
+ (id)reuseIdentifier;
- (void)_addSelectionBadgeIfNeeded;
- (void)_updateAccessoryViewsForCurrentCellConfiguration;
- (void)_updateSelectionBadgeState;
- (void)_updateTemplateViewWithOldCellConfiguration:(id)a3;
- (void)setCellConfiguration:(id)a3;
@end

@implementation MUPlaceTileCollectionViewCell

+ (CGSize)preferredSizeForViewModels:(id)a3 cellConfiguration:(id)a4 usingMeasurements:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v8 variant];
  if (v10 != 2)
  {
    if (v10 == 1)
    {
      v11 = MUPlaceCompactTileContentView;
      goto LABEL_6;
    }

    if (v10)
    {
      v13 = *MEMORY[0x1E695F060];
      v15 = *(MEMORY[0x1E695F060] + 8);
      goto LABEL_8;
    }
  }

  v11 = MUPlaceTileContentView;
LABEL_6:
  [(__objc2_class *)v11 preferredSizeForViewModels:v7 cellConfiguration:v8 usingMeasurements:v9];
  v13 = v12;
  v15 = v14;
LABEL_8:

  v16 = v13;
  v17 = v15;
  result.height = v17;
  result.width = v16;
  return result;
}

+ (id)reuseIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (void)_updateSelectionBadgeState
{
  if ([(MUPlaceTileCellConfiguration *)self->_cellConfiguration showSelectionControlWhileEditing])
  {
    v3 = [(MUPlaceTileCollectionViewCell *)self configurationState];
    v4 = [v3 isEditing];

    if (v4)
    {
      v5 = [(MUPlaceTileCollectionViewCell *)self configurationState];
      v6 = [v5 isSelected];

      if (v6)
      {
        v7 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"checkmark.circle.fill"];
        v8 = [v7 imageWithRenderingMode:1];
        [MEMORY[0x1E69DC888] _mapsui_accentColor];
      }

      else
      {
        v7 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"circle"];
        v8 = [v7 imageWithRenderingMode:1];
        [MEMORY[0x1E69DC888] whiteColor];
      }
      v9 = ;
      v10 = [v8 imageWithTintColor:v9];
      [(UIImageView *)self->_selectionBadgeView setImage:v10];
    }

    selectionBadgeView = self->_selectionBadgeView;

    [(UIImageView *)selectionBadgeView setHidden:v4 ^ 1u];
  }
}

- (void)_addSelectionBadgeIfNeeded
{
  v18[1] = *MEMORY[0x1E69E9840];
  if ([(MUPlaceTileCellConfiguration *)self->_cellConfiguration showSelectionControlWhileEditing])
  {
    selectionBadgeView = self->_selectionBadgeView;
    if (!selectionBadgeView)
    {
      v4 = objc_alloc(MEMORY[0x1E69DCAE0]);
      v5 = [v4 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
      v6 = self->_selectionBadgeView;
      self->_selectionBadgeView = v5;

      [(UIImageView *)self->_selectionBadgeView setAccessibilityIdentifier:@"PlaceTileSelectionBadge"];
      [(UIImageView *)self->_selectionBadgeView setHidden:1];
      selectionBadgeView = self->_selectionBadgeView;
    }

    v7 = [(UIImageView *)selectionBadgeView superview];
    v8 = [(MUPlaceTileCollectionViewCell *)self contentView];

    v9 = [(MUPlaceTileCollectionViewCell *)self contentView];
    v10 = v9;
    v11 = self->_selectionBadgeView;
    if (v7 == v8)
    {
      [v9 bringSubviewToFront:v11];
    }

    else
    {
      [v9 addSubview:v11];

      v10 = [MEMORY[0x1E695DF70] array];
      v12 = [[MUSizeLayout alloc] initWithItem:self->_selectionBadgeView size:24.0, 24.0];
      [v10 addObject:v12];
      v13 = [MUBoxLayout alloc];
      v14 = [(MUPlaceTileCollectionViewCell *)self contentView];
      v15 = [(MUBoxLayout *)v13 initWithContainer:v14];

      v18[0] = self->_selectionBadgeView;
      v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
      [(MUBoxLayout *)v15 setArrangedLayoutItems:v16];

      [(MUBoxLayout *)v15 setHorizontalAlignment:3];
      [(MUBoxLayout *)v15 setVerticalAlignment:1];
      [(MUBoxLayout *)v15 setOffset:self->_selectionBadgeView forArrangedLayoutItem:-16.0, 16.0];
      [v10 addObject:v15];
      [MEMORY[0x1E696ACD8] _mapsui_activateLayouts:v10];
    }

    [(MUPlaceTileCollectionViewCell *)self _updateSelectionBadgeState];
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)_updateAccessoryViewsForCurrentCellConfiguration
{
  [(UIImageView *)self->_selectionBadgeView setHidden:1];
  if (![(MUPlaceTileCellConfiguration *)self->_cellConfiguration variant])
  {

    [(MUPlaceTileCollectionViewCell *)self _addSelectionBadgeIfNeeded];
  }
}

- (void)_updateTemplateViewWithOldCellConfiguration:(id)a3
{
  [(MUPlaceTileTemplateView *)self->_tileContentView removeFromSuperview];
  v4 = [(MUPlaceTileCellConfiguration *)self->_cellConfiguration variant];
  if (v4 > 2)
  {
    v5 = 0;
  }

  else
  {
    v5 = [objc_alloc(*off_1E8219690[v4]) initWithCellConfiguration:self->_cellConfiguration];
  }

  tileContentView = self->_tileContentView;
  self->_tileContentView = v5;
  v7 = v5;

  v8 = [(MUPlaceTileCollectionViewCell *)self viewModel];
  [(MUPlaceTileTemplateView *)v7 setViewModel:v8];

  v9 = [(MUPlaceTileCollectionViewCell *)self contentView];
  [v9 addSubview:v7];

  v10 = [MUEdgeLayout alloc];
  v11 = [(MUPlaceTileCollectionViewCell *)self contentView];
  v12 = [(MUEdgeLayout *)v10 initWithItem:v7 container:v11];

  [(MUConstraintLayout *)v12 activate];

  [(MUPlaceTileCollectionViewCell *)self _updateAccessoryViewsForCurrentCellConfiguration];
}

- (void)setCellConfiguration:(id)a3
{
  v8 = a3;
  if (([(MUPlaceTileCellConfiguration *)self->_cellConfiguration isEqual:?]& 1) == 0)
  {
    cellConfiguration = self->_cellConfiguration;
    v5 = v8;
    v6 = self->_cellConfiguration;
    self->_cellConfiguration = v5;
    v7 = cellConfiguration;

    [(MUPlaceTileCollectionViewCell *)self _updateTemplateViewWithOldCellConfiguration:v7];
  }
}

@end