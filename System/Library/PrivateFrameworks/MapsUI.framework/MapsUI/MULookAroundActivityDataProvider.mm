@interface MULookAroundActivityDataProvider
- (id)mapMetadataSpecialization;
- (id)subjectTitle;
- (id)thumbnailImageForSuggestedSize:(CGSize)a3;
- (void)fetchHTMLTemplateWithCompletion:(id)a3;
@end

@implementation MULookAroundActivityDataProvider

- (id)thumbnailImageForSuggestedSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = objc_alloc(MEMORY[0x1E696F4B0]);
  v7 = [(MUPlaceActivityDataProvider *)self activityURL];
  v8 = [v6 initWithURL:v7];

  [v8 parseIncludingCustomParameters:1];
  if ([v8 mapType] == 107)
  {
    v9 = objc_alloc_init(MEMORY[0x1E696F2B0]);
    [v9 setMapType:{objc_msgSend(v8, "mapType")}];
    v10 = [v8 mapCamera];
    [v9 setCamera:v10];

    [v9 setSize:{width, height}];
    [v9 _setShowsPointLabels:0];
    [v9 _setShowsAppleLogo:0];
    v11 = [MEMORY[0x1E696F2A0] createSnapshotWithOptions:v9 timeoutInSeconds:5];
    v12 = [v11 image];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)fetchHTMLTemplateWithCompletion:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __68__MULookAroundActivityDataProvider_fetchHTMLTemplateWithCompletion___block_invoke;
  v6[3] = &unk_1E821A1C8;
  objc_copyWeak(&v8, &location);
  v5 = v4;
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
  v5 = [(MUPlaceActivityDataProvider *)self activityTitle];
  v6 = [v3 stringWithFormat:v4, v5];

  return v6;
}

- (id)mapMetadataSpecialization
{
  v13.receiver = self;
  v13.super_class = MULookAroundActivityDataProvider;
  v3 = [(MUPlaceActivityDataProvider *)&v13 mapMetadataSpecialization];
  v4 = objc_alloc(MEMORY[0x1E696F4B0]);
  v5 = [(MUPlaceActivityDataProvider *)self activityURL];
  v6 = [v4 initWithURL:v5];

  [v6 parseIncludingCustomParameters:1];
  if ([v6 mapType] == 107)
  {
    v7 = objc_alloc_init(MEMORY[0x1E696F2B0]);
    [v7 setSize:{300.0, 300.0}];
    [v7 setMapType:{objc_msgSend(v6, "mapType")}];
    v8 = [v6 mapCamera];
    [v7 setCamera:v8];

    [v7 _setShowsPointLabels:0];
    [v7 _setShowsAppleLogo:0];
    v9 = createMapSnapshotImage(v7, 1);
    [v3 setImage:v9];

    v10 = createMapSnapshotImage(v7, 0);
    [v3 setDarkImage:v10];

    v11 = v3;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end