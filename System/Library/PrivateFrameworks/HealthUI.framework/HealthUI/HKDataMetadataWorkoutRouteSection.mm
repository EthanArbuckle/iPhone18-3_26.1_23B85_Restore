@interface HKDataMetadataWorkoutRouteSection
- (CGSize)tableViewSize;
- (HKDataMetadataWorkoutRouteSection)initWithLocationReadings:(id)readings tableViewSize:(CGSize)size;
- (id)_cachedRouteImageForUserInterfaceStyle:(int64_t)style snapshotSize:(CGSize)size;
- (id)sectionTitle;
- (void)_generateRouteImageForTraitCollection:(id)collection;
- (void)generateRouteImage;
- (void)selectCellForIndex:(unint64_t)index navigationController:(id)controller animated:(BOOL)animated;
- (void)setTableViewSize:(CGSize)size;
- (void)workoutRouteCell:(id)cell didUpdateTraitCollection:(id)collection;
@end

@implementation HKDataMetadataWorkoutRouteSection

- (HKDataMetadataWorkoutRouteSection)initWithLocationReadings:(id)readings tableViewSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  readingsCopy = readings;
  v16.receiver = self;
  v16.super_class = HKDataMetadataWorkoutRouteSection;
  v9 = [(HKDataMetadataWorkoutRouteSection *)&v16 init];
  if (v9)
  {
    if (!readingsCopy || ![readingsCopy count])
    {
      v14 = 0;
      goto LABEL_7;
    }

    objc_storeStrong(&v9->_locationReadings, readings);
    v9->_tableViewSize.width = width;
    v9->_tableViewSize.height = height;
    v10 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    routeImageCache = v9->_routeImageCache;
    v9->_routeImageCache = v10;

    [(NSCache *)v9->_routeImageCache setCountLimit:2];
    v12 = objc_alloc_init(HKDataMetadataWorkoutRouteCell);
    cell = v9->_cell;
    v9->_cell = v12;

    [(HKDataMetadataWorkoutRouteCell *)v9->_cell setDelegate:v9];
    [(HKDataMetadataWorkoutRouteSection *)v9 generateRouteImage];
  }

  v14 = v9;
LABEL_7:

  return v14;
}

- (void)setTableViewSize:(CGSize)size
{
  width = self->_tableViewSize.width;
  height = self->_tableViewSize.height;
  self->_tableViewSize = size;
  if (size.width != width || size.height != height)
  {
    [(HKDataMetadataWorkoutRouteSection *)self generateRouteImage];
  }
}

- (void)generateRouteImage
{
  traitCollection = [(HKDataMetadataWorkoutRouteCell *)self->_cell traitCollection];
  [(HKDataMetadataWorkoutRouteSection *)self _generateRouteImageForTraitCollection:traitCollection];
}

- (void)_generateRouteImageForTraitCollection:(id)collection
{
  v18 = *MEMORY[0x1E69E9840];
  collectionCopy = collection;
  width = self->_tableViewSize.width;
  if (width == 0.0)
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x1E696B9A8];
    if (os_log_type_enabled(*MEMORY[0x1E696B9A8], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C3942000, v6, OS_LOG_TYPE_DEFAULT, "[route] skipping route image snapshot with zero width", buf, 2u);
    }
  }

  else
  {
    v7 = HKUIRoundToScreenScale(width * 0.66);
    userInterfaceStyle = [collectionCopy userInterfaceStyle];
    v9 = [(HKDataMetadataWorkoutRouteSection *)self _cachedRouteImageForUserInterfaceStyle:userInterfaceStyle snapshotSize:width, v7];
    if (v9)
    {
      _HKInitializeLogging();
      v10 = *MEMORY[0x1E696B9A8];
      if (os_log_type_enabled(*MEMORY[0x1E696B9A8], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v17 = userInterfaceStyle;
        _os_log_impl(&dword_1C3942000, v10, OS_LOG_TYPE_DEFAULT, "[route] using cached workout route image for interface style: %ld", buf, 0xCu);
      }

      [(HKDataMetadataWorkoutRouteCell *)self->_cell setRouteImage:v9];
    }

    else
    {
      v11 = objc_alloc_init(HKRouteMapGenerator);
      generator = self->_generator;
      self->_generator = v11;

      [(HKRouteMapGenerator *)self->_generator setLocationReadings:self->_locationReadings];
      objc_initWeak(buf, self);
      v13 = self->_generator;
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __75__HKDataMetadataWorkoutRouteSection__generateRouteImageForTraitCollection___block_invoke;
      v14[3] = &unk_1E81B6AF8;
      v15[1] = userInterfaceStyle;
      objc_copyWeak(v15, buf);
      [(HKRouteMapGenerator *)v13 snapshotWithSize:collectionCopy lineWidth:v14 traitCollection:width offsets:v7 completion:5.0, *MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24)];
      objc_destroyWeak(v15);
      objc_destroyWeak(buf);
    }
  }
}

void __75__HKDataMetadataWorkoutRouteSection__generateRouteImageForTraitCollection___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = *(a1 + 40);
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v6 = [WeakRetained cell];
    v7 = [v6 traitCollection];
    v8 = [v7 userInterfaceStyle];

    if (v4 == v8)
    {
      v9 = objc_loadWeakRetained((a1 + 32));
      v10 = [v9 cell];
      [v10 setRouteImage:v3];
    }

    v11 = objc_loadWeakRetained((a1 + 32));
    v12 = [v11 routeImageCache];
    v13 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 40)];
    [v12 setObject:v3 forKey:v13];
  }

  else
  {
    _HKInitializeLogging();
    v14 = *MEMORY[0x1E696B9A8];
    if (os_log_type_enabled(*MEMORY[0x1E696B9A8], OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&dword_1C3942000, v14, OS_LOG_TYPE_DEFAULT, "[route] map generator returned nil route image. snapshot may have been canceled or encountered an error.", v15, 2u);
    }
  }
}

- (id)_cachedRouteImageForUserInterfaceStyle:(int64_t)style snapshotSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  routeImageCache = self->_routeImageCache;
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:style];
  v8 = [(NSCache *)routeImageCache objectForKey:v7];

  if (v8 && ((v18.origin.x = 0.0, v18.origin.y = 0.0, v18.size.width = width, v18.size.height = height, v19 = CGRectIntegral(v18), v9 = v19.size.width, v10 = v19.size.height, [v8 size], v12 = v11, objc_msgSend(v8, "size"), v20.size.height = v13, v20.origin.x = 0.0, v20.origin.y = 0.0, v20.size.width = v12, v21 = CGRectIntegral(v20), v9 == v21.size.width) ? (v14 = v10 == v21.size.height) : (v14 = 0), v14))
  {
    v15 = v8;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)workoutRouteCell:(id)cell didUpdateTraitCollection:(id)collection
{
  collectionCopy = collection;
  cellCopy = cell;
  cell = [(HKDataMetadataWorkoutRouteSection *)self cell];

  if (cell == cellCopy)
  {
    [(HKDataMetadataWorkoutRouteSection *)self _generateRouteImageForTraitCollection:collectionCopy];
  }
}

- (id)sectionTitle
{
  v2 = HKHealthKitFrameworkBundle();
  v3 = [v2 localizedStringForKey:@"WORKOUT_ROUTE_TITLE" value:&stru_1F42FFBE0 table:*MEMORY[0x1E696B910]];

  return v3;
}

- (void)selectCellForIndex:(unint64_t)index navigationController:(id)controller animated:(BOOL)animated
{
  animatedCopy = animated;
  controllerCopy = controller;
  v8 = [HKWorkoutRouteViewController alloc];
  locationReadings = self->_locationReadings;
  sectionTitle = [(HKDataMetadataWorkoutRouteSection *)self sectionTitle];
  v11 = [(HKWorkoutRouteViewController *)v8 initWithLocationReadings:locationReadings title:sectionTitle sharingEnabled:0 shareText:0 excludedActivityTypes:0];

  [controllerCopy pushViewController:v11 animated:animatedCopy];
}

- (CGSize)tableViewSize
{
  width = self->_tableViewSize.width;
  height = self->_tableViewSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end