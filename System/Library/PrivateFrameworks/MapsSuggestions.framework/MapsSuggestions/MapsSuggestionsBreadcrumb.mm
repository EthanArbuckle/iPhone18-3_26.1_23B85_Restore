@interface MapsSuggestionsBreadcrumb
+ (id)breadcrumbWithData:(id)data;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToBreadcrumb:(id)breadcrumb;
- (MapsSuggestionsBreadcrumb)initWithCoder:(id)coder;
- (MapsSuggestionsBreadcrumb)initWithLocation:(id)location transportMode:(int)mode;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)data;
- (id)objectForJSON;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MapsSuggestionsBreadcrumb

- (MapsSuggestionsBreadcrumb)initWithLocation:(id)location transportMode:(int)mode
{
  locationCopy = location;
  v11.receiver = self;
  v11.super_class = MapsSuggestionsBreadcrumb;
  v7 = [(MapsSuggestionsBreadcrumb *)&v11 self];

  if (v7)
  {
    v8 = [locationCopy copy];
    location = v7->_location;
    v7->_location = v8;

    v7->_likelyTransportMode = mode;
  }

  return v7;
}

- (id)data
{
  v2 = [NSKeyedArchiver archivedDataWithRootObject:self requiringSecureCoding:1 error:0];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      v7 = 136446978;
      v8 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsBreadcrumb.mm";
      v9 = 1024;
      v10 = 42;
      v11 = 2082;
      v12 = "[MapsSuggestionsBreadcrumb data]";
      v13 = 2082;
      v14 = "nil == (data)";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Error archiving breadcrumb", &v7, 0x26u);
    }
  }

  return v3;
}

+ (id)breadcrumbWithData:(id)data
{
  dataCopy = data;
  if (dataCopy)
  {
    v8 = 0;
    v4 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:dataCopy error:&v8];
    v5 = v8;
    if (v5 || !v4)
    {
      v6 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v10 = v5;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Error decoding breadcrumb: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446978;
      v10 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsBreadcrumb.mm";
      v11 = 1024;
      v12 = 49;
      v13 = 2082;
      v14 = "+[MapsSuggestionsBreadcrumb breadcrumbWithData:]";
      v15 = 2082;
      v16 = "data == nil";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. data should not be nil", buf, 0x26u);
    }

    v4 = 0;
  }

  return v4;
}

- (BOOL)isEqualToBreadcrumb:(id)breadcrumb
{
  breadcrumbCopy = breadcrumb;
  v5 = breadcrumbCopy;
  if (!breadcrumbCopy)
  {
    goto LABEL_5;
  }

  if (self == breadcrumbCopy)
  {
    v6 = 1;
    goto LABEL_7;
  }

  if (self->_likelyTransportMode == breadcrumbCopy->_likelyTransportMode)
  {
    v6 = MapsSuggestionsAlmostSameLocation();
  }

  else
  {
LABEL_5:
    v6 = 0;
  }

LABEL_7:

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(MapsSuggestionsBreadcrumb *)self isEqualToBreadcrumb:equalCopy];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (NSString)description
{
  v3 = [NSString alloc];
  v10.receiver = self;
  v10.super_class = MapsSuggestionsBreadcrumb;
  v4 = [(MapsSuggestionsBreadcrumb *)&v10 description];
  location = [(MapsSuggestionsBreadcrumb *)self location];
  likelyTransportMode = [(MapsSuggestionsBreadcrumb *)self likelyTransportMode];
  if (likelyTransportMode >= 7)
  {
    v7 = [NSString stringWithFormat:@"(unknown: %i)", likelyTransportMode];
  }

  else
  {
    v7 = off_100075740[likelyTransportMode];
  }

  v8 = [v3 initWithFormat:@"%@ %@ using %@", v4, location, v7];

  return v8;
}

- (MapsSuggestionsBreadcrumb)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MapsSuggestionsBreadcrumbLocationKey"];
  v6 = -[MapsSuggestionsBreadcrumb initWithLocation:transportMode:](self, "initWithLocation:transportMode:", v5, [coderCopy decodeIntegerForKey:@"MapsSuggestionsBreadcrumbTransportModeKey"]);

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:self->_likelyTransportMode forKey:@"MapsSuggestionsBreadcrumbTransportModeKey"];
  [coderCopy encodeObject:self->_location forKey:@"MapsSuggestionsBreadcrumbLocationKey"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [MapsSuggestionsBreadcrumb alloc];
  location = self->_location;
  likelyTransportMode = self->_likelyTransportMode;

  return [(MapsSuggestionsBreadcrumb *)v4 initWithLocation:location transportMode:likelyTransportMode];
}

- (id)objectForJSON
{
  v9 = @"location";
  v3 = MSg::jsonFor(self->_location, a2);
  v10 = @"likelyTransportMode";
  v11[0] = v3;
  likelyTransportMode = self->_likelyTransportMode;
  if (likelyTransportMode >= 7)
  {
    v5 = [NSString stringWithFormat:@"(unknown: %i)", self->_likelyTransportMode, v9, v10, v11[0]];
  }

  else
  {
    v5 = off_100075740[likelyTransportMode];
  }

  v6 = MSg::jsonFor();
  v11[1] = v6;
  v7 = [NSDictionary dictionaryWithObjects:v11 forKeys:&v9 count:2];

  return v7;
}

@end