@interface MURouteActivityDataProvider
- (MURouteActivityDataProvider)initWithConfiguration:(id)a3;
- (NSString)activitySourceTitle;
- (NSString)destinationDisplayName;
- (NSURL)risonActivityURL;
- (id)activityURL;
- (id)specializationMetadata;
- (id)subjectTitle;
- (id)thumbnailImageForSuggestedSize:(CGSize)a3;
- (void)fetchHTMLTemplateWithCompletion:(id)a3;
@end

@implementation MURouteActivityDataProvider

- (id)thumbnailImageForSuggestedSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(MURouteActivityDataProvider *)self annotationView];
  v7 = [(MURouteActivityDataProviderConfiguration *)self->_configuration destinationMapItem];
  v8 = [v7 _mapsui_thumbnailWithSize:v6 annotationView:{width, height}];

  return v8;
}

- (NSString)activitySourceTitle
{
  v2 = [(MURouteActivityDataProviderConfiguration *)self->_configuration route];
  v3 = [v2 origin];
  v4 = [v3 navDisplayName];

  return v4;
}

- (NSString)destinationDisplayName
{
  v2 = [(MURouteActivityDataProviderConfiguration *)self->_configuration route];
  v3 = [v2 destination];
  v4 = [v3 navDisplayName];

  return v4;
}

- (id)subjectTitle
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = _MULocalizedStringFromThisBundle(@"Directions to %@");
  v5 = [(MURouteActivityDataProvider *)self destinationDisplayName];
  v6 = [v3 stringWithFormat:v4, v5];

  return v6;
}

- (id)specializationMetadata
{
  v3 = [(MURouteActivityDataProviderConfiguration *)self->_configuration sourceMapItem];
  v4 = [(MURouteActivityDataProviderConfiguration *)self->_configuration destinationMapItem];
  v5 = [(MURouteActivityDataProviderConfiguration *)self->_configuration route];
  v6 = objc_alloc_init(MEMORY[0x1E696ECD0]);
  v7 = [(MURouteActivityDataProvider *)self activitySourceTitle];
  [v6 setName:v7];

  v8 = [v3 _shortAddress];
  [v6 setDirectionsSourceAddress:v8];

  v9 = [v3 name];
  [v6 setDirectionsSourceLocationName:v9];

  v10 = [v3 _cnPostalAddress];
  [v6 setDirectionsSourceAddressComponents:v10];

  v11 = [v4 _shortAddress];
  [v6 setDirectionsDestinationAddress:v11];

  v12 = [v4 _cnPostalAddress];
  [v6 setDirectionsDestinationAddressComponents:v12];

  v13 = [v4 name];
  [v6 setDirectionsDestinationLocationName:v13];

  v14 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v5, "transportType")}];
  [v6 setTransportType:v14];

  if (v3)
  {
    [v3 _coordinate];
    if (CLLocationCoordinate2DIsValid(v27))
    {
      if (v4)
      {
        [v4 _coordinate];
        if (CLLocationCoordinate2DIsValid(v28))
        {
          v15 = objc_alloc(MEMORY[0x1E6985C40]);
          [v3 _coordinate];
          v17 = v16;
          [v3 _coordinate];
          v18 = [v15 initWithLatitude:v17 longitude:?];
          v19 = objc_alloc(MEMORY[0x1E6985C40]);
          [v4 _coordinate];
          v21 = v20;
          [v4 _coordinate];
          v22 = [v19 initWithLatitude:v21 longitude:?];
          v23 = MEMORY[0x1E696AD98];
          [v18 distanceFromLocation:v22];
          v24 = [v23 numberWithDouble:?];
          [v6 setDistance:v24];
        }
      }
    }
  }

  return v6;
}

- (NSURL)risonActivityURL
{
  v3 = objc_alloc_init(MEMORY[0x1E696F418]);
  v4 = [(MURouteActivityDataProviderConfiguration *)self->_configuration sourceMapItem];
  v5 = [(MURouteActivityDataProviderConfiguration *)self->_configuration destinationMapItem];
  v6 = [v3 urlForDirectionsFromMapItem:v4 toMapItem:v5 transportType:-[MURouteActivityDataProvider transportType](self options:{"transportType"), 0}];

  return v6;
}

- (id)activityURL
{
  v3 = [MEMORY[0x1E696F3B8] sharedInstance];
  v4 = [v3 userInterfaceIdiom];

  BOOL = GEOConfigGetBOOL();
  if (v4 != 2 && BOOL == 0)
  {
    v19 = [(MURouteActivityDataProvider *)self risonActivityURL];
  }

  else
  {
    v7 = [(MURouteActivityDataProviderConfiguration *)self->_configuration sourceMapItem];
    v8 = [v7 place];
    v9 = [v8 name];
    v10 = [(MURouteActivityDataProviderConfiguration *)self->_configuration sourceMapItem];
    v11 = [v10 _addressFormattedAsSinglelineAddress];
    v12 = __42__MURouteActivityDataProvider_activityURL__block_invoke(v9, v11);

    v13 = [(MURouteActivityDataProviderConfiguration *)self->_configuration destinationMapItem];
    v14 = [v13 place];
    v15 = [v14 name];
    v16 = [(MURouteActivityDataProviderConfiguration *)self->_configuration destinationMapItem];
    v17 = [v16 _addressFormattedAsSinglelineAddress];
    v18 = __42__MURouteActivityDataProvider_activityURL__block_invoke(v15, v17);

    v19 = [MEMORY[0x1E696F4A0] URLForDirectionsFrom:v12 to:v18 transport:{-[MURouteActivityDataProvider transportType](self, "transportType")}];
  }

  return v19;
}

id __42__MURouteActivityDataProvider_activityURL__block_invoke(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 length] && objc_msgSend(v4, "length"))
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@, %@", v3, v4];
  }

  else
  {
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = v3;
    }

    v5 = v6;
  }

  v7 = v5;

  return v7;
}

- (void)fetchHTMLTemplateWithCompletion:(id)a3
{
  v4 = a3;
  v14 = [(MUActivityDataProvider *)self shortenedURLOrFullIfNotLoaded];
  v5 = MEMORY[0x1E696AEC0];
  v6 = _MULocalizedStringFromThisBundle(@"[Route Sharing] Email body");
  v7 = [(MURouteActivityDataProvider *)self destinationDisplayName];
  v8 = [(MURouteActivityDataProvider *)self activitySourceTitle];
  v9 = [v5 stringWithFormat:v6, v7, v8];

  v10 = [v9 _navigation_sanitizedStringForDisplayInHTML];
  v11 = MEMORY[0x1E696AEC0];
  v12 = [v14 absoluteString];
  v13 = [v11 stringWithFormat:@"<html><head><meta charset=utf-8 /></head><body><a href='%@'>%@</a></body></html>", v12, v10];

  v4[2](v4, v13, 0);
}

- (MURouteActivityDataProvider)initWithConfiguration:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MURouteActivityDataProvider;
  v6 = [(MUActivityDataProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configuration, a3);
  }

  return v7;
}

@end