@interface MUPlaceActivityDataProvider
- (BOOL)supportsNoteSharing;
- (LPMapMetadata)mapMetadataSpecialization;
- (MKAnnotationView)annotationView;
- (MUPlaceActivityDataProvider)initWithConfiguration:(id)configuration;
- (NSData)mapItemAsSerializedData;
- (id)activityTitle;
- (id)activityURL;
- (id)airDropJSON;
- (id)thumbnailImageForSuggestedSize:(CGSize)size useAnnotation:(BOOL)annotation;
- (void)fetchHTMLTemplateWithCompletion:(id)completion;
- (void)fetchNoteWithCompletion:(id)completion;
- (void)preload;
@end

@implementation MUPlaceActivityDataProvider

- (LPMapMetadata)mapMetadataSpecialization
{
  v38[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E696ECD0]);
  activityTitle = [(MUPlaceActivityDataProvider *)self activityTitle];
  [v3 setName:activityTitle];

  mapItem = [(MUPlaceActivityDataProviderConfiguration *)self->_configuration mapItem];
  _shortAddress = [mapItem _shortAddress];
  [v3 setAddress:_shortAddress];

  mapItem2 = [(MUPlaceActivityDataProviderConfiguration *)self->_configuration mapItem];
  _cnPostalAddress = [mapItem2 _cnPostalAddress];
  [v3 setAddressComponents:_cnPostalAddress];

  mapItem3 = [(MUPlaceActivityDataProviderConfiguration *)self->_configuration mapItem];
  [mapItem3 _coordinate];
  [v3 setLocation:?];

  mapItem4 = [(MUPlaceActivityDataProviderConfiguration *)self->_configuration mapItem];
  v11 = categoryIconFromMapItem(mapItem4);
  [v3 setCategoryIcon:v11];

  mapItem5 = [(MUPlaceActivityDataProvider *)self mapItem];
  _firstLocalizedCategoryName = [mapItem5 _firstLocalizedCategoryName];

  if (_firstLocalizedCategoryName)
  {
    mapItem6 = [(MUPlaceActivityDataProviderConfiguration *)self->_configuration mapItem];
    _firstLocalizedCategoryName2 = [mapItem6 _firstLocalizedCategoryName];
    [v3 setCategory:_firstLocalizedCategoryName2];
  }

  mEMORY[0x1E696F268] = [MEMORY[0x1E696F268] sharedLocationManager];
  currentLocation = [mEMORY[0x1E696F268] currentLocation];

  latLng = [currentLocation latLng];
  [latLng lat];
  v20 = v19;
  latLng2 = [currentLocation latLng];
  [latLng2 lng];
  v23 = CLLocationCoordinate2DMake(v20, v22);

  mapItem7 = [(MUPlaceActivityDataProviderConfiguration *)self->_configuration mapItem];
  v25 = [objc_alloc(MEMORY[0x1E6985C40]) initWithLatitude:v23.latitude longitude:v23.longitude];
  v26 = objc_alloc(MEMORY[0x1E6985C40]);
  [mapItem7 _coordinate];
  v28 = v27;
  [mapItem7 _coordinate];
  v29 = [v26 initWithLatitude:v28 longitude:?];
  v30 = MEMORY[0x1E696AD98];
  [v25 distanceFromLocation:v29];
  v31 = [v30 numberWithDouble:?];
  [v3 setDistance:v31];

  mapItem8 = [(MUPlaceActivityDataProviderConfiguration *)self->_configuration mapItem];
  v38[0] = mapItem8;
  v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:1];

  v34 = annotatedSnapshotImageWithMapItems(v33, 1);
  [v3 setImage:v34];

  v35 = annotatedSnapshotImageWithMapItems(v33, 0);
  [v3 setDarkImage:v35];

  v36 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)thumbnailImageForSuggestedSize:(CGSize)size useAnnotation:(BOOL)annotation
{
  height = size.height;
  width = size.width;
  if (annotation)
  {
    annotationView = [(MUPlaceActivityDataProvider *)self annotationView];
  }

  else
  {
    annotationView = 0;
  }

  mapItem = [(MUPlaceActivityDataProviderConfiguration *)self->_configuration mapItem];
  v9 = [mapItem _mapsui_thumbnailWithSize:annotationView annotationView:{width, height}];

  return v9;
}

- (void)fetchNoteWithCompletion:(id)completion
{
  completionCopy = completion;
  notesProvider = [(MUPlaceActivityDataProviderConfiguration *)self->_configuration notesProvider];

  if (notesProvider && (MapsFeature_IsEnabled_Maps66() & 1) != 0)
  {
    notesProvider2 = [(MUPlaceActivityDataProviderConfiguration *)self->_configuration notesProvider];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __55__MUPlaceActivityDataProvider_fetchNoteWithCompletion___block_invoke;
    v7[3] = &unk_1E82195B8;
    v8 = completionCopy;
    [notesProvider2 fetchNoteWithCompletion:v7];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0, 0);
  }
}

- (void)fetchHTMLTemplateWithCompletion:(id)completion
{
  v33[1] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  mapItem = [(MUPlaceActivityDataProvider *)self mapItem];
  v33[0] = mapItem;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:1];

  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x3032000000;
  v31[3] = __Block_byref_object_copy__9469;
  v31[4] = __Block_byref_object_dispose__9470;
  v32 = 0;
  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x3032000000;
  v29[3] = __Block_byref_object_copy__9469;
  v29[4] = __Block_byref_object_dispose__9470;
  v30 = 0;
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x3032000000;
  v27[3] = __Block_byref_object_copy__9469;
  v27[4] = __Block_byref_object_dispose__9470;
  v28 = 0;
  v7 = dispatch_group_create();
  dispatch_group_enter(v7);
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __63__MUPlaceActivityDataProvider_fetchHTMLTemplateWithCompletion___block_invoke;
  v24[3] = &unk_1E8219540;
  v26 = v31;
  v8 = v7;
  v25 = v8;
  [(MUActivityDataProvider *)self fetchActivityURLWithCompletion:v24];
  dispatch_group_enter(v8);
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __63__MUPlaceActivityDataProvider_fetchHTMLTemplateWithCompletion___block_invoke_2;
  v21[3] = &unk_1E8219568;
  v23 = v29;
  v9 = v8;
  v22 = v9;
  [(MUPlaceActivityDataProvider *)self fetchNoteWithCompletion:v21];
  dispatch_group_enter(v9);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __63__MUPlaceActivityDataProvider_fetchHTMLTemplateWithCompletion___block_invoke_3;
  v18[3] = &unk_1E8219568;
  v20 = v27;
  v10 = v9;
  v19 = v10;
  MUHTMLStringForAnnotatedSnapshotImageWithMapItems(v6, v18);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__MUPlaceActivityDataProvider_fetchHTMLTemplateWithCompletion___block_invoke_4;
  block[3] = &unk_1E8219590;
  v15 = v31;
  v16 = v29;
  v17 = v27;
  block[4] = self;
  v14 = completionCopy;
  v11 = completionCopy;
  dispatch_group_notify(v10, MEMORY[0x1E69E96A0], block);

  _Block_object_dispose(v27, 8);
  _Block_object_dispose(v29, 8);

  _Block_object_dispose(v31, 8);
  v12 = *MEMORY[0x1E69E9840];
}

void __63__MUPlaceActivityDataProvider_fetchHTMLTemplateWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void __63__MUPlaceActivityDataProvider_fetchHTMLTemplateWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void __63__MUPlaceActivityDataProvider_fetchHTMLTemplateWithCompletion___block_invoke_3(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void __63__MUPlaceActivityDataProvider_fetchHTMLTemplateWithCompletion___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) activityTitle];
  v3 = [*(a1 + 32) mapItem];
  v18 = HTMLStringForMapItemDetailsWithTitle(v2, v3);

  v4 = *(*(*(a1 + 48) + 8) + 40);
  v5 = _MULocalizedStringFromThisBundle(@"View on Apple Maps [POI Sharing]");
  v6 = HTMLStringForURLWithLabel(v4, v5);

  v7 = [*(*(*(a1 + 56) + 8) + 40) length];
  v15 = *(*(*(a1 + 64) + 8) + 40);
  if (v7)
  {
    v17 = *(*(*(a1 + 56) + 8) + 40);
    HTMLBodyWrapperStringWithFormat(@"%@<br><br>%@<br><br>%@<br><br>%@", v8, v9, v10, v11, v12, v13, v14, v15);
  }

  else
  {
    HTMLBodyWrapperStringWithFormat(@"%@<br><br>%@<br><br>%@", v8, v9, v10, v11, v12, v13, v14, v15);
  }
  v16 = ;
  (*(*(a1 + 40) + 16))();
}

- (id)airDropJSON
{
  v10[2] = *MEMORY[0x1E69E9840];
  airdropJSONBlock = [(MUPlaceActivityDataProviderConfiguration *)self->_configuration airdropJSONBlock];

  if (!airdropJSONBlock || ([(MUPlaceActivityDataProviderConfiguration *)self->_configuration airdropJSONBlock], v4 = objc_claimAutoreleasedReturnValue(), v4[2](), v5 = objc_claimAutoreleasedReturnValue(), v4, !v5))
  {
    v9[0] = @"SFAirDropActivitySubjectMain";
    activityTitle = [(MUPlaceActivityDataProvider *)self activityTitle];
    v9[1] = @"SFAirDropActivitySubjectMapsLinkType";
    v10[0] = activityTitle;
    v10[1] = &unk_1F450DCD0;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];
  }

  v7 = *MEMORY[0x1E69E9840];

  return v5;
}

- (MKAnnotationView)annotationView
{
  annotationBlock = [(MUPlaceActivityDataProviderConfiguration *)self->_configuration annotationBlock];

  if (!annotationBlock || ([(MUPlaceActivityDataProviderConfiguration *)self->_configuration annotationBlock], v4 = objc_claimAutoreleasedReturnValue(), v4[2](), v5 = objc_claimAutoreleasedReturnValue(), v4, !v5))
  {
    v6 = objc_alloc(MEMORY[0x1E696F278]);
    mapItem = [(MUPlaceActivityDataProviderConfiguration *)self->_configuration mapItem];
    v8 = [v6 initWithMapItem:mapItem];

    v5 = [objc_alloc(MEMORY[0x1E696F2C8]) initWithAnnotation:v8 reuseIdentifier:0];
  }

  return v5;
}

- (id)activityTitle
{
  activityTitleBlock = [(MUPlaceActivityDataProviderConfiguration *)self->_configuration activityTitleBlock];

  if (activityTitleBlock)
  {
    activityTitleBlock2 = [(MUPlaceActivityDataProviderConfiguration *)self->_configuration activityTitleBlock];
    activityTitleBlock = activityTitleBlock2[2]();
  }

  if ([activityTitleBlock length])
  {
    name = activityTitleBlock;
  }

  else
  {
    mapItem = [(MUPlaceActivityDataProviderConfiguration *)self->_configuration mapItem];
    name = [mapItem name];
  }

  return name;
}

- (id)activityURL
{
  v13[1] = *MEMORY[0x1E69E9840];
  activityURLBlock = [(MUPlaceActivityDataProviderConfiguration *)self->_configuration activityURLBlock];

  if (!activityURLBlock || (v4 = [(MUPlaceActivityDataProvider *)self supportsURLShorteningService], [(MUPlaceActivityDataProviderConfiguration *)self->_configuration activityURLBlock], v5 = objc_claimAutoreleasedReturnValue(), (v5)[2](v5, !v4), _fullSharingURL = objc_claimAutoreleasedReturnValue(), v5, !_fullSharingURL))
  {
    mapItem = [(MUPlaceActivityDataProviderConfiguration *)self->_configuration mapItem];
    _fullSharingURL = [mapItem _fullSharingURL];

    if (!_fullSharingURL)
    {
      v8 = objc_alloc_init(MEMORY[0x1E696F418]);
      mapItem2 = [(MUPlaceActivityDataProviderConfiguration *)self->_configuration mapItem];
      v13[0] = mapItem2;
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
      _fullSharingURL = [v8 urlForOpeningMapItems:v10 options:0];
    }
  }

  v11 = *MEMORY[0x1E69E9840];

  return _fullSharingURL;
}

- (BOOL)supportsNoteSharing
{
  notesProvider = [(MUPlaceActivityDataProviderConfiguration *)self->_configuration notesProvider];
  if (notesProvider)
  {
    IsEnabled_Maps66 = MapsFeature_IsEnabled_Maps66();
  }

  else
  {
    IsEnabled_Maps66 = 0;
  }

  return IsEnabled_Maps66;
}

- (NSData)mapItemAsSerializedData
{
  v2 = MEMORY[0x1E696ACC8];
  mapItem = [(MUPlaceActivityDataProviderConfiguration *)self->_configuration mapItem];
  v4 = [v2 archivedDataWithRootObject:mapItem requiringSecureCoding:1 error:0];

  return v4;
}

- (void)preload
{
  v4.receiver = self;
  v4.super_class = MUPlaceActivityDataProvider;
  [(MUActivityDataProvider *)&v4 preload];
  notesProvider = [(MUPlaceActivityDataProviderConfiguration *)self->_configuration notesProvider];
  [notesProvider preload];
}

- (MUPlaceActivityDataProvider)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v9.receiver = self;
  v9.super_class = MUPlaceActivityDataProvider;
  v6 = [(MUActivityDataProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configuration, configuration);
  }

  return v7;
}

@end