@interface MXRoutingContextModificationMetrics
- (MXRoutingContextModificationMetrics)initWithCorrelationID:(id)d;
- (MXRoutingContextModificationMetrics)initWithDictionary:(id)dictionary;
- (id)RTCDictionary;
- (id)description;
- (id)dictionaryRepresentation;
- (void)dealloc;
@end

@implementation MXRoutingContextModificationMetrics

- (MXRoutingContextModificationMetrics)initWithCorrelationID:(id)d
{
  v6.receiver = self;
  v6.super_class = MXRoutingContextModificationMetrics;
  v4 = [(MXRoutingContextModificationMetrics *)&v6 init];
  if (v4)
  {
    v4->_correlationID = d;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MXRoutingContextModificationMetrics;
  [(MXRoutingContextModificationMetrics *)&v3 dealloc];
}

- (id)description
{
  dictionaryRepresentation = [(MXRoutingContextModificationMetrics *)self dictionaryRepresentation];

  return [dictionaryRepresentation description];
}

- (MXRoutingContextModificationMetrics)initWithDictionary:(id)dictionary
{
  v5 = [dictionary objectForKey:@"CorrelationID"];
  v8.receiver = self;
  v8.super_class = MXRoutingContextModificationMetrics;
  v6 = [(MXRoutingContextModificationMetrics *)&v8 init];
  if (v6)
  {
    v6->_correlationID = v5;
  }

  -[MXRoutingContextModificationMetrics setServerModificationStartedTimestamp:](v6, "setServerModificationStartedTimestamp:", [dictionary objectForKey:@"ServerModificationStartedTimestamp"]);
  -[MXRoutingContextModificationMetrics setServerModificationFinishedTimestamp:](v6, "setServerModificationFinishedTimestamp:", [dictionary objectForKey:@"ServerModificationFinishedTimestamp"]);
  -[MXRoutingContextModificationMetrics setClientModificationStartedTimestamp:](v6, "setClientModificationStartedTimestamp:", [dictionary objectForKey:@"ClientModificationStartedTimestamp"]);
  -[MXRoutingContextModificationMetrics setClientModificationFinishedTimestamp:](v6, "setClientModificationFinishedTimestamp:", [dictionary objectForKey:@"ClientModificationFinishedTimestamp"]);
  -[MXRoutingContextModificationMetrics setFigEndpointType:](v6, "setFigEndpointType:", [dictionary objectForKey:@"EndpointType"]);
  -[MXRoutingContextModificationMetrics setPreviousRouteDescriptors:](v6, "setPreviousRouteDescriptors:", [dictionary objectForKey:@"PreviousRouteDescriptors"]);
  -[MXRoutingContextModificationMetrics setCurrentRouteDescriptors:](v6, "setCurrentRouteDescriptors:", [dictionary objectForKey:@"CurrentRouteDescriptors"]);
  -[MXRoutingContextModificationMetrics setRouteChangeFailed:](v6, "setRouteChangeFailed:", [dictionary objectForKey:@"RouteChangeSucceeded"]);
  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v3 setValue:-[MXRoutingContextModificationMetrics correlationID](self forKey:{"correlationID"), @"CorrelationID"}];
  [v3 setValue:-[MXRoutingContextModificationMetrics figEndpointType](self forKey:{"figEndpointType"), @"EndpointType"}];
  [v3 setValue:-[MXRoutingContextModificationMetrics serverModificationStartedTimestamp](self forKey:{"serverModificationStartedTimestamp"), @"ServerModificationStartedTimestamp"}];
  [v3 setValue:-[MXRoutingContextModificationMetrics serverModificationFinishedTimestamp](self forKey:{"serverModificationFinishedTimestamp"), @"ServerModificationFinishedTimestamp"}];
  [v3 setValue:-[MXRoutingContextModificationMetrics clientModificationStartedTimestamp](self forKey:{"clientModificationStartedTimestamp"), @"ClientModificationStartedTimestamp"}];
  [v3 setValue:-[MXRoutingContextModificationMetrics clientModificationFinishedTimestamp](self forKey:{"clientModificationFinishedTimestamp"), @"ClientModificationFinishedTimestamp"}];
  [v3 setValue:-[MXRoutingContextModificationMetrics previousRouteDescriptors](self forKey:{"previousRouteDescriptors"), @"PreviousRouteDescriptors"}];
  [v3 setValue:-[MXRoutingContextModificationMetrics currentRouteDescriptors](self forKey:{"currentRouteDescriptors"), @"CurrentRouteDescriptors"}];
  [v3 setValue:-[MXRoutingContextModificationMetrics routeChangeFailed](self forKey:{"routeChangeFailed"), @"RouteChangeSucceeded"}];

  return v3;
}

- (id)RTCDictionary
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  longLongValue = [(NSNumber *)[(MXRoutingContextModificationMetrics *)self clientModificationStartedTimestamp] longLongValue];
  longLongValue2 = [(NSNumber *)[(MXRoutingContextModificationMetrics *)self clientModificationFinishedTimestamp] longLongValue];
  longLongValue3 = [(NSNumber *)[(MXRoutingContextModificationMetrics *)self serverModificationStartedTimestamp] longLongValue];
  longLongValue4 = [(NSNumber *)[(MXRoutingContextModificationMetrics *)self serverModificationFinishedTimestamp] longLongValue];
  v8 = (longLongValue2 - longLongValue) / 0xF4240uLL;
  v9 = (longLongValue4 - longLongValue3) / 0xF4240uLL;
  v10 = (longLongValue2 - longLongValue4) / 0xF4240uLL;
  [v3 setValue:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithLongLong:", v8), @"TotalRequestTime"}];
  [v3 setValue:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithLongLong:", v9), @"TotalTimeSpentInServer"}];
  [v3 setValue:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithLongLong:", (longLongValue3 - longLongValue) / 0xF4240uLL), @"TimeTakenForRequestToReachServer"}];
  [v3 setValue:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithLongLong:", v10), @"TimeTakenToRunClientCallback"}];
  [v3 setValue:-[MXRoutingContextModificationMetrics routeChangeFailed](self forKey:{"routeChangeFailed"), @"MXErrorStatus"}];

  return v3;
}

@end