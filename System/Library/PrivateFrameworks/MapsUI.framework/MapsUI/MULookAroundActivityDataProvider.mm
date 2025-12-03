@interface MULookAroundActivityDataProvider
- (id)mapMetadataSpecialization;
- (id)subjectTitle;
- (id)thumbnailImageForSuggestedSize:(CGSize)size;
- (void)fetchHTMLTemplateWithCompletion:(id)completion;
@end

@implementation MULookAroundActivityDataProvider

- (id)thumbnailImageForSuggestedSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v6 = objc_alloc(MEMORY[0x1E696F4B0]);
  activityURL = [(MUPlaceActivityDataProvider *)self activityURL];
  v8 = [v6 initWithURL:activityURL];

  [v8 parseIncludingCustomParameters:1];
  if ([v8 mapType] == 107)
  {
    v9 = objc_alloc_init(MEMORY[0x1E696F2B0]);
    [v9 setMapType:{objc_msgSend(v8, "mapType")}];
    mapCamera = [v8 mapCamera];
    [v9 setCamera:mapCamera];

    [v9 setSize:{width, height}];
    [v9 _setShowsPointLabels:0];
    [v9 _setShowsAppleLogo:0];
    v11 = [MEMORY[0x1E696F2A0] createSnapshotWithOptions:v9 timeoutInSeconds:5];
    image = [v11 image];
  }

  else
  {
    image = 0;
  }

  return image;
}

- (void)fetchHTMLTemplateWithCompletion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __68__MULookAroundActivityDataProvider_fetchHTMLTemplateWithCompletion___block_invoke;
  v6[3] = &unk_1E821A1C8;
  objc_copyWeak(&v8, &location);
  v5 = completionCopy;
  v7 = v5;
  [(MUActivityDataProvider *)self fetchActivityURLWithCompletion:v6];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __68__MULookAroundActivityDataProvider_fetchHTMLTemplateWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v11 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained subjectTitle];
    v6 = v5;
    if (!v5)
    {
      v5 = &stru_1F44CA030;
    }

    v7 = [(__CFString *)v5 _navigation_sanitizedStringForDisplayInHTML];

    v8 = MEMORY[0x1E696AEC0];
    v9 = [v11 absoluteString];
    v10 = [v8 stringWithFormat:@"<html><head><meta charset=utf-8 /></head><body><a href=%@>%@</a></body></html>", v9, v7];

    (*(*(a1 + 32) + 16))();
  }
}

- (id)subjectTitle
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = _MULocalizedStringFromThisBundle(@"Look Around: %@ [Sharing]");
  activityTitle = [(MUPlaceActivityDataProvider *)self activityTitle];
  v6 = [v3 stringWithFormat:v4, activityTitle];

  return v6;
}

- (id)mapMetadataSpecialization
{
  v13.receiver = self;
  v13.super_class = MULookAroundActivityDataProvider;
  mapMetadataSpecialization = [(MUPlaceActivityDataProvider *)&v13 mapMetadataSpecialization];
  v4 = objc_alloc(MEMORY[0x1E696F4B0]);
  activityURL = [(MUPlaceActivityDataProvider *)self activityURL];
  v6 = [v4 initWithURL:activityURL];

  [v6 parseIncludingCustomParameters:1];
  if ([v6 mapType] == 107)
  {
    v7 = objc_alloc_init(MEMORY[0x1E696F2B0]);
    [v7 setSize:{300.0, 300.0}];
    [v7 setMapType:{objc_msgSend(v6, "mapType")}];
    mapCamera = [v6 mapCamera];
    [v7 setCamera:mapCamera];

    [v7 _setShowsPointLabels:0];
    [v7 _setShowsAppleLogo:0];
    v9 = createMapSnapshotImage(v7, 1);
    [mapMetadataSpecialization setImage:v9];

    v10 = createMapSnapshotImage(v7, 0);
    [mapMetadataSpecialization setDarkImage:v10];

    v11 = mapMetadataSpecialization;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end