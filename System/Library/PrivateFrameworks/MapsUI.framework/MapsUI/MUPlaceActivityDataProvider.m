@interface MUPlaceActivityDataProvider
- (BOOL)supportsNoteSharing;
- (LPMapMetadata)mapMetadataSpecialization;
- (MKAnnotationView)annotationView;
- (MUPlaceActivityDataProvider)initWithConfiguration:(id)a3;
- (NSData)mapItemAsSerializedData;
- (id)activityTitle;
- (id)activityURL;
- (id)airDropJSON;
- (id)thumbnailImageForSuggestedSize:(CGSize)a3 useAnnotation:(BOOL)a4;
- (void)fetchHTMLTemplateWithCompletion:(id)a3;
- (void)fetchNoteWithCompletion:(id)a3;
- (void)preload;
@end

@implementation MUPlaceActivityDataProvider

- (LPMapMetadata)mapMetadataSpecialization
{
  v38[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E696ECD0]);
  v4 = [(MUPlaceActivityDataProvider *)self activityTitle];
  [v3 setName:v4];

  v5 = [(MUPlaceActivityDataProviderConfiguration *)self->_configuration mapItem];
  v6 = [v5 _shortAddress];
  [v3 setAddress:v6];

  v7 = [(MUPlaceActivityDataProviderConfiguration *)self->_configuration mapItem];
  v8 = [v7 _cnPostalAddress];
  [v3 setAddressComponents:v8];

  v9 = [(MUPlaceActivityDataProviderConfiguration *)self->_configuration mapItem];
  [v9 _coordinate];
  [v3 setLocation:?];

  v10 = [(MUPlaceActivityDataProviderConfiguration *)self->_configuration mapItem];
  v11 = categoryIconFromMapItem(v10);
  [v3 setCategoryIcon:v11];

  v12 = [(MUPlaceActivityDataProvider *)self mapItem];
  v13 = [v12 _firstLocalizedCategoryName];

  if (v13)
  {
    v14 = [(MUPlaceActivityDataProviderConfiguration *)self->_configuration mapItem];
    v15 = [v14 _firstLocalizedCategoryName];
    [v3 setCategory:v15];
  }

  v16 = [MEMORY[0x1E696F268] sharedLocationManager];
  v17 = [v16 currentLocation];

  v18 = [v17 latLng];
  [v18 lat];
  v20 = v19;
  v21 = [v17 latLng];
  [v21 lng];
  v23 = CLLocationCoordinate2DMake(v20, v22);

  v24 = [(MUPlaceActivityDataProviderConfiguration *)self->_configuration mapItem];
  v25 = [objc_alloc(MEMORY[0x1E6985C40]) initWithLatitude:v23.latitude longitude:v23.longitude];
  v26 = objc_alloc(MEMORY[0x1E6985C40]);
  [v24 _coordinate];
  v28 = v27;
  [v24 _coordinate];
  v29 = [v26 initWithLatitude:v28 longitude:?];
  v30 = MEMORY[0x1E696AD98];
  [v25 distanceFromLocation:v29];
  v31 = [v30 numberWithDouble:?];
  [v3 setDistance:v31];

  v32 = [(MUPlaceActivityDataProviderConfiguration *)self->_configuration mapItem];
  v38[0] = v32;
  v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:1];

  v34 = annotatedSnapshotImageWithMapItems(v33, 1);
  [v3 setImage:v34];

  v35 = annotatedSnapshotImageWithMapItems(v33, 0);
  [v3 setDarkImage:v35];

  v36 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)thumbnailImageForSuggestedSize:(CGSize)a3 useAnnotation:(BOOL)a4
{
  height = a3.height;
  width = a3.width;
  if (a4)
  {
    v7 = [(MUPlaceActivityDataProvider *)self annotationView];
  }

  else
  {
    v7 = 0;
  }

  v8 = [(MUPlaceActivityDataProviderConfiguration *)self->_configuration mapItem];
  v9 = [v8 _mapsui_thumbnailWithSize:v7 annotationView:{width, height}];

  return v9;
}

- (void)fetchNoteWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(MUPlaceActivityDataProviderConfiguration *)self->_configuration notesProvider];

  if (v5 && (MapsFeature_IsEnabled_Maps66() & 1) != 0)
  {
    v6 = [(MUPlaceActivityDataProviderConfiguration *)self->_configuration notesProvider];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __55__MUPlaceActivityDataProvider_fetchNoteWithCompletion___block_invoke;
    v7[3] = &unk_1E82195B8;
    v8 = v4;
    [v6 fetchNoteWithCompletion:v7];
  }

  else
  {
    (*(v4 + 2))(v4, 0, 0);
  }
}

- (void)fetchHTMLTemplateWithCompletion:(id)a3
{
  v33[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(MUPlaceActivityDataProvider *)self mapItem];
  v33[0] = v5;
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
  v14 = v4;
  v11 = v4;
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
  v3 = [(MUPlaceActivityDataProviderConfiguration *)self->_configuration airdropJSONBlock];

  if (!v3 || ([(MUPlaceActivityDataProviderConfiguration *)self->_configuration airdropJSONBlock], v4 = objc_claimAutoreleasedReturnValue(), v4[2](), v5 = objc_claimAutoreleasedReturnValue(), v4, !v5))
  {
    v9[0] = @"SFAirDropActivitySubjectMain";
    v6 = [(MUPlaceActivityDataProvider *)self activityTitle];
    v9[1] = @"SFAirDropActivitySubjectMapsLinkType";
    v10[0] = v6;
    v10[1] = &unk_1F450DCD0;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];
  }

  v7 = *MEMORY[0x1E69E9840];

  return v5;
}

- (MKAnnotationView)annotationView
{
  v3 = [(MUPlaceActivityDataProviderConfiguration *)self->_configuration annotationBlock];

  if (!v3 || ([(MUPlaceActivityDataProviderConfiguration *)self->_configuration annotationBlock], v4 = objc_claimAutoreleasedReturnValue(), v4[2](), v5 = objc_claimAutoreleasedReturnValue(), v4, !v5))
  {
    v6 = objc_alloc(MEMORY[0x1E696F278]);
    v7 = [(MUPlaceActivityDataProviderConfiguration *)self->_configuration mapItem];
    v8 = [v6 initWithMapItem:v7];

    v5 = [objc_alloc(MEMORY[0x1E696F2C8]) initWithAnnotation:v8 reuseIdentifier:0];
  }

  return v5;
}

- (id)activityTitle
{
  v3 = [(MUPlaceActivityDataProviderConfiguration *)self->_configuration activityTitleBlock];

  if (v3)
  {
    v4 = [(MUPlaceActivityDataProviderConfiguration *)self->_configuration activityTitleBlock];
    v3 = v4[2]();
  }

  if ([v3 length])
  {
    v5 = v3;
  }

  else
  {
    v6 = [(MUPlaceActivityDataProviderConfiguration *)self->_configuration mapItem];
    v5 = [v6 name];
  }

  return v5;
}

- (id)activityURL
{
  v13[1] = *MEMORY[0x1E69E9840];
  v3 = [(MUPlaceActivityDataProviderConfiguration *)self->_configuration activityURLBlock];

  if (!v3 || (v4 = [(MUPlaceActivityDataProvider *)self supportsURLShorteningService], [(MUPlaceActivityDataProviderConfiguration *)self->_configuration activityURLBlock], v5 = objc_claimAutoreleasedReturnValue(), (v5)[2](v5, !v4), v6 = objc_claimAutoreleasedReturnValue(), v5, !v6))
  {
    v7 = [(MUPlaceActivityDataProviderConfiguration *)self->_configuration mapItem];
    v6 = [v7 _fullSharingURL];

    if (!v6)
    {
      v8 = objc_alloc_init(MEMORY[0x1E696F418]);
      v9 = [(MUPlaceActivityDataProviderConfiguration *)self->_configuration mapItem];
      v13[0] = v9;
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
      v6 = [v8 urlForOpeningMapItems:v10 options:0];
    }
  }

  v11 = *MEMORY[0x1E69E9840];

  return v6;
}

- (BOOL)supportsNoteSharing
{
  v2 = [(MUPlaceActivityDataProviderConfiguration *)self->_configuration notesProvider];
  if (v2)
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
  v3 = [(MUPlaceActivityDataProviderConfiguration *)self->_configuration mapItem];
  v4 = [v2 archivedDataWithRootObject:v3 requiringSecureCoding:1 error:0];

  return v4;
}

- (void)preload
{
  v4.receiver = self;
  v4.super_class = MUPlaceActivityDataProvider;
  [(MUActivityDataProvider *)&v4 preload];
  v3 = [(MUPlaceActivityDataProviderConfiguration *)self->_configuration notesProvider];
  [v3 preload];
}

- (MUPlaceActivityDataProvider)initWithConfiguration:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MUPlaceActivityDataProvider;
  v6 = [(MUActivityDataProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configuration, a3);
  }

  return v7;
}

@end