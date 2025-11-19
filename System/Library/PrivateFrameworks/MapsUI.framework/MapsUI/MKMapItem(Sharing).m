@interface MKMapItem(Sharing)
- (id)_mapsui_sharingURL;
- (id)_mapsui_thumbnailWithSize:()Sharing annotationView:;
@end

@implementation MKMapItem(Sharing)

- (id)_mapsui_thumbnailWithSize:()Sharing annotationView:
{
  v8 = a5;
  v9 = [a1 location];

  if (v9)
  {
    v10 = [a1 location];
    [v10 coordinate];
    latitude = v11;
    longitude = v13;
  }

  else
  {
    [a1 _coordinate];
    v16 = v15;
    [a1 _coordinate];
    v18 = CLLocationCoordinate2DMake(v16, v17);
    latitude = v18.latitude;
    longitude = v18.longitude;
  }

  v19 = objc_alloc_init(MEMORY[0x1E696F2B0]);
  [v19 setSize:{a2, a3}];
  [v19 size];
  MKCoordinateRegionMakeWithZoomLevel();
  [v19 setRegion:?];
  [v19 _setShowsAppleLogo:0];
  v20 = [MEMORY[0x1E696F2A0] createSnapshotWithOptions:v19 timeoutInSeconds:5];
  v21 = v20;
  if (v20)
  {
    if (v8)
    {
      [v20 snapshotWithAnnotationView:v8 atCoordinate:{latitude, longitude}];
    }

    else
    {
      [v20 image];
    }
    v22 = ;
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (id)_mapsui_sharingURL
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E696F418]);
  v7[0] = a1;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  v4 = [v2 urlForOpeningMapItems:v3 options:0];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

@end