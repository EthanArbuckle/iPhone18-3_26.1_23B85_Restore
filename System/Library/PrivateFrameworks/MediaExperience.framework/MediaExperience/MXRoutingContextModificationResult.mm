@interface MXRoutingContextModificationResult
- (MXRoutingContextModificationResult)initWithDictionary:(id)dictionary;
- (MXRoutingContextModificationResult)initWithRouteConfigUpdatedReason:(id)reason modificationMetrics:(id)metrics previousRouteDescriptors:(id)descriptors currentRouteDescriptors:(id)routeDescriptors;
- (id)description;
- (id)dictionaryRepresentation;
- (void)dealloc;
@end

@implementation MXRoutingContextModificationResult

- (MXRoutingContextModificationResult)initWithRouteConfigUpdatedReason:(id)reason modificationMetrics:(id)metrics previousRouteDescriptors:(id)descriptors currentRouteDescriptors:(id)routeDescriptors
{
  v13.receiver = self;
  v13.super_class = MXRoutingContextModificationResult;
  v10 = [(MXRoutingContextModificationResult *)&v13 init];
  metricsCopy = metrics;
  v10->_modificationMetrics = metricsCopy;
  [(MXRoutingContextModificationMetrics *)metricsCopy setPreviousRouteDescriptors:descriptors];
  [(MXRoutingContextModificationMetrics *)v10->_modificationMetrics setCurrentRouteDescriptors:routeDescriptors];
  v10->_routeConfigUpdateReason = reason;
  v10->_previousRouteDescriptors = descriptors;
  v10->_currentRouteDescriptors = routeDescriptors;
  return v10;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MXRoutingContextModificationResult;
  [(MXRoutingContextModificationResult *)&v3 dealloc];
}

- (id)description
{
  dictionaryRepresentation = [(MXRoutingContextModificationResult *)self dictionaryRepresentation];

  return [dictionaryRepresentation description];
}

- (MXRoutingContextModificationResult)initWithDictionary:(id)dictionary
{
  v9.receiver = self;
  v9.super_class = MXRoutingContextModificationResult;
  v4 = [(MXRoutingContextModificationResult *)&v9 init];
  v5 = [dictionary objectForKey:@"RouteConfigUpdatedReason"];
  v6 = -[MXRoutingContextModificationMetrics initWithDictionary:]([MXRoutingContextModificationMetrics alloc], "initWithDictionary:", [dictionary objectForKey:@"ModificationMetrics"]);
  v7 = -[MXRoutingContextModificationResult initWithRouteConfigUpdatedReason:modificationMetrics:previousRouteDescriptors:currentRouteDescriptors:]([MXRoutingContextModificationResult alloc], "initWithRouteConfigUpdatedReason:modificationMetrics:previousRouteDescriptors:currentRouteDescriptors:", v5, v6, [dictionary objectForKey:@"PreviousRouteDescriptors"], objc_msgSend(dictionary, "objectForKey:", @"CurrentRouteDescriptors"));

  return v7;
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v3 setValue:-[MXRoutingContextModificationResult routeConfigUpdateReason](self forKey:{"routeConfigUpdateReason"), @"RouteConfigUpdatedReason"}];
  [v3 setValue:-[MXRoutingContextModificationMetrics dictionaryRepresentation](-[MXRoutingContextModificationResult modificationMetrics](self forKey:{"modificationMetrics"), "dictionaryRepresentation"), @"ModificationMetrics"}];
  [v3 setValue:-[MXRoutingContextModificationResult previousRouteDescriptors](self forKey:{"previousRouteDescriptors"), @"PreviousRouteDescriptors"}];
  [v3 setValue:-[MXRoutingContextModificationResult currentRouteDescriptors](self forKey:{"currentRouteDescriptors"), @"CurrentRouteDescriptors"}];

  return v3;
}

@end