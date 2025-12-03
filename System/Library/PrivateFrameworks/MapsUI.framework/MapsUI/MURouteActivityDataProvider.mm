@interface MURouteActivityDataProvider
- (MURouteActivityDataProvider)initWithConfiguration:(id)configuration;
- (NSString)activitySourceTitle;
- (NSString)destinationDisplayName;
- (NSURL)risonActivityURL;
- (id)activityURL;
- (id)specializationMetadata;
- (id)subjectTitle;
- (id)thumbnailImageForSuggestedSize:(CGSize)size;
- (void)fetchHTMLTemplateWithCompletion:(id)completion;
@end

@implementation MURouteActivityDataProvider

- (id)thumbnailImageForSuggestedSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  annotationView = [(MURouteActivityDataProvider *)self annotationView];
  destinationMapItem = [(MURouteActivityDataProviderConfiguration *)self->_configuration destinationMapItem];
  v8 = [destinationMapItem _mapsui_thumbnailWithSize:annotationView annotationView:{width, height}];

  return v8;
}

- (NSString)activitySourceTitle
{
  route = [(MURouteActivityDataProviderConfiguration *)self->_configuration route];
  origin = [route origin];
  navDisplayName = [origin navDisplayName];

  return navDisplayName;
}

- (NSString)destinationDisplayName
{
  route = [(MURouteActivityDataProviderConfiguration *)self->_configuration route];
  destination = [route destination];
  navDisplayName = [destination navDisplayName];

  return navDisplayName;
}

- (id)subjectTitle
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = _MULocalizedStringFromThisBundle(@"Directions to %@");
  destinationDisplayName = [(MURouteActivityDataProvider *)self destinationDisplayName];
  v6 = [v3 stringWithFormat:v4, destinationDisplayName];

  return v6;
}

- (id)specializationMetadata
{
  sourceMapItem = [(MURouteActivityDataProviderConfiguration *)self->_configuration sourceMapItem];
  destinationMapItem = [(MURouteActivityDataProviderConfiguration *)self->_configuration destinationMapItem];
  route = [(MURouteActivityDataProviderConfiguration *)self->_configuration route];
  v6 = objc_alloc_init(MEMORY[0x1E696ECD0]);
  activitySourceTitle = [(MURouteActivityDataProvider *)self activitySourceTitle];
  [v6 setName:activitySourceTitle];

  _shortAddress = [sourceMapItem _shortAddress];
  [v6 setDirectionsSourceAddress:_shortAddress];

  name = [sourceMapItem name];
  [v6 setDirectionsSourceLocationName:name];

  _cnPostalAddress = [sourceMapItem _cnPostalAddress];
  [v6 setDirectionsSourceAddressComponents:_cnPostalAddress];

  _shortAddress2 = [destinationMapItem _shortAddress];
  [v6 setDirectionsDestinationAddress:_shortAddress2];

  _cnPostalAddress2 = [destinationMapItem _cnPostalAddress];
  [v6 setDirectionsDestinationAddressComponents:_cnPostalAddress2];

  name2 = [destinationMapItem name];
  [v6 setDirectionsDestinationLocationName:name2];

  v14 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(route, "transportType")}];
  [v6 setTransportType:v14];

  if (sourceMapItem)
  {
    [sourceMapItem _coordinate];
    if (CLLocationCoordinate2DIsValid(v27))
    {
      if (destinationMapItem)
      {
        [destinationMapItem _coordinate];
        if (CLLocationCoordinate2DIsValid(v28))
        {
          v15 = objc_alloc(MEMORY[0x1E6985C40]);
          [sourceMapItem _coordinate];
          v17 = v16;
          [sourceMapItem _coordinate];
          v18 = [v15 initWithLatitude:v17 longitude:?];
          v19 = objc_alloc(MEMORY[0x1E6985C40]);
          [destinationMapItem _coordinate];
          v21 = v20;
          [destinationMapItem _coordinate];
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
  sourceMapItem = [(MURouteActivityDataProviderConfiguration *)self->_configuration sourceMapItem];
  destinationMapItem = [(MURouteActivityDataProviderConfiguration *)self->_configuration destinationMapItem];
  v6 = [v3 urlForDirectionsFromMapItem:sourceMapItem toMapItem:destinationMapItem transportType:-[MURouteActivityDataProvider transportType](self options:{"transportType"), 0}];

  return v6;
}

- (id)activityURL
{
  mEMORY[0x1E696F3B8] = [MEMORY[0x1E696F3B8] sharedInstance];
  userInterfaceIdiom = [mEMORY[0x1E696F3B8] userInterfaceIdiom];

  BOOL = GEOConfigGetBOOL();
  if (userInterfaceIdiom != 2 && BOOL == 0)
  {
    risonActivityURL = [(MURouteActivityDataProvider *)self risonActivityURL];
  }

  else
  {
    sourceMapItem = [(MURouteActivityDataProviderConfiguration *)self->_configuration sourceMapItem];
    place = [sourceMapItem place];
    name = [place name];
    sourceMapItem2 = [(MURouteActivityDataProviderConfiguration *)self->_configuration sourceMapItem];
    _addressFormattedAsSinglelineAddress = [sourceMapItem2 _addressFormattedAsSinglelineAddress];
    v12 = __42__MURouteActivityDataProvider_activityURL__block_invoke(name, _addressFormattedAsSinglelineAddress);

    destinationMapItem = [(MURouteActivityDataProviderConfiguration *)self->_configuration destinationMapItem];
    place2 = [destinationMapItem place];
    name2 = [place2 name];
    destinationMapItem2 = [(MURouteActivityDataProviderConfiguration *)self->_configuration destinationMapItem];
    _addressFormattedAsSinglelineAddress2 = [destinationMapItem2 _addressFormattedAsSinglelineAddress];
    v18 = __42__MURouteActivityDataProvider_activityURL__block_invoke(name2, _addressFormattedAsSinglelineAddress2);

    risonActivityURL = [MEMORY[0x1E696F4A0] URLForDirectionsFrom:v12 to:v18 transport:{-[MURouteActivityDataProvider transportType](self, "transportType")}];
  }

  return risonActivityURL;
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

- (void)fetchHTMLTemplateWithCompletion:(id)completion
{
  completionCopy = completion;
  shortenedURLOrFullIfNotLoaded = [(MUActivityDataProvider *)self shortenedURLOrFullIfNotLoaded];
  v5 = MEMORY[0x1E696AEC0];
  v6 = _MULocalizedStringFromThisBundle(@"[Route Sharing] Email body");
  destinationDisplayName = [(MURouteActivityDataProvider *)self destinationDisplayName];
  activitySourceTitle = [(MURouteActivityDataProvider *)self activitySourceTitle];
  v9 = [v5 stringWithFormat:v6, destinationDisplayName, activitySourceTitle];

  _navigation_sanitizedStringForDisplayInHTML = [v9 _navigation_sanitizedStringForDisplayInHTML];
  v11 = MEMORY[0x1E696AEC0];
  absoluteString = [shortenedURLOrFullIfNotLoaded absoluteString];
  v13 = [v11 stringWithFormat:@"<html><head><meta charset=utf-8 /></head><body><a href='%@'>%@</a></body></html>", absoluteString, _navigation_sanitizedStringForDisplayInHTML];

  completionCopy[2](completionCopy, v13, 0);
}

- (MURouteActivityDataProvider)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v9.receiver = self;
  v9.super_class = MURouteActivityDataProvider;
  v6 = [(MUActivityDataProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configuration, configuration);
  }

  return v7;
}

@end