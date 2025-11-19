@interface MXRoutingContextModificationMetrics
- (MXRoutingContextModificationMetrics)initWithCorrelationID:(id)a3;
- (MXRoutingContextModificationMetrics)initWithDictionary:(id)a3;
- (id)RTCDictionary;
- (id)description;
- (id)dictionaryRepresentation;
- (void)dealloc;
@end

@implementation MXRoutingContextModificationMetrics

- (MXRoutingContextModificationMetrics)initWithCorrelationID:(id)a3
{
  v6.receiver = self;
  v6.super_class = MXRoutingContextModificationMetrics;
  v4 = [(MXRoutingContextModificationMetrics *)&v6 init];
  if (v4)
  {
    v4->_correlationID = a3;
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
  v2 = [(MXRoutingContextModificationMetrics *)self dictionaryRepresentation];

  return [v2 description];
}

- (MXRoutingContextModificationMetrics)initWithDictionary:(id)a3
{
  v5 = [a3 objectForKey:@"CorrelationID"];
  v8.receiver = self;
  v8.super_class = MXRoutingContextModificationMetrics;
  v6 = [(MXRoutingContextModificationMetrics *)&v8 init];
  if (v6)
  {
    v6->_correlationID = v5;
  }

  -[MXRoutingContextModificationMetrics setServerModificationStartedTimestamp:](v6, "setServerModificationStartedTimestamp:", [a3 objectForKey:@"ServerModificationStartedTimestamp"]);
  -[MXRoutingContextModificationMetrics setServerModificationFinishedTimestamp:](v6, "setServerModificationFinishedTimestamp:", [a3 objectForKey:@"ServerModificationFinishedTimestamp"]);
  -[MXRoutingContextModificationMetrics setClientModificationStartedTimestamp:](v6, "setClientModificationStartedTimestamp:", [a3 objectForKey:@"ClientModificationStartedTimestamp"]);
  -[MXRoutingContextModificationMetrics setClientModificationFinishedTimestamp:](v6, "setClientModificationFinishedTimestamp:", [a3 objectForKey:@"ClientModificationFinishedTimestamp"]);
  -[MXRoutingContextModificationMetrics setFigEndpointType:](v6, "setFigEndpointType:", [a3 objectForKey:@"EndpointType"]);
  -[MXRoutingContextModificationMetrics setPreviousRouteDescriptors:](v6, "setPreviousRouteDescriptors:", [a3 objectForKey:@"PreviousRouteDescriptors"]);
  -[MXRoutingContextModificationMetrics setCurrentRouteDescriptors:](v6, "setCurrentRouteDescriptors:", [a3 objectForKey:@"CurrentRouteDescriptors"]);
  -[MXRoutingContextModificationMetrics setRouteChangeFailed:](v6, "setRouteChangeFailed:", [a3 objectForKey:@"RouteChangeSucceeded"]);
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
  v4 = [(NSNumber *)[(MXRoutingContextModificationMetrics *)self clientModificationStartedTimestamp] longLongValue];
  v5 = [(NSNumber *)[(MXRoutingContextModificationMetrics *)self clientModificationFinishedTimestamp] longLongValue];
  v6 = [(NSNumber *)[(MXRoutingContextModificationMetrics *)self serverModificationStartedTimestamp] longLongValue];
  v7 = [(NSNumber *)[(MXRoutingContextModificationMetrics *)self serverModificationFinishedTimestamp] longLongValue];
  v8 = (v5 - v4) / 0xF4240uLL;
  v9 = (v7 - v6) / 0xF4240uLL;
  v10 = (v5 - v7) / 0xF4240uLL;
  [v3 setValue:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithLongLong:", v8), @"TotalRequestTime"}];
  [v3 setValue:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithLongLong:", v9), @"TotalTimeSpentInServer"}];
  [v3 setValue:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithLongLong:", (v6 - v4) / 0xF4240uLL), @"TimeTakenForRequestToReachServer"}];
  [v3 setValue:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithLongLong:", v10), @"TimeTakenToRunClientCallback"}];
  [v3 setValue:-[MXRoutingContextModificationMetrics routeChangeFailed](self forKey:{"routeChangeFailed"), @"MXErrorStatus"}];

  return v3;
}

@end