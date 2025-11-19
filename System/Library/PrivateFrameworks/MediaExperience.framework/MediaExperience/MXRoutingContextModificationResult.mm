@interface MXRoutingContextModificationResult
- (MXRoutingContextModificationResult)initWithDictionary:(id)a3;
- (MXRoutingContextModificationResult)initWithRouteConfigUpdatedReason:(id)a3 modificationMetrics:(id)a4 previousRouteDescriptors:(id)a5 currentRouteDescriptors:(id)a6;
- (id)description;
- (id)dictionaryRepresentation;
- (void)dealloc;
@end

@implementation MXRoutingContextModificationResult

- (MXRoutingContextModificationResult)initWithRouteConfigUpdatedReason:(id)a3 modificationMetrics:(id)a4 previousRouteDescriptors:(id)a5 currentRouteDescriptors:(id)a6
{
  v13.receiver = self;
  v13.super_class = MXRoutingContextModificationResult;
  v10 = [(MXRoutingContextModificationResult *)&v13 init];
  v11 = a4;
  v10->_modificationMetrics = v11;
  [(MXRoutingContextModificationMetrics *)v11 setPreviousRouteDescriptors:a5];
  [(MXRoutingContextModificationMetrics *)v10->_modificationMetrics setCurrentRouteDescriptors:a6];
  v10->_routeConfigUpdateReason = a3;
  v10->_previousRouteDescriptors = a5;
  v10->_currentRouteDescriptors = a6;
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
  v2 = [(MXRoutingContextModificationResult *)self dictionaryRepresentation];

  return [v2 description];
}

- (MXRoutingContextModificationResult)initWithDictionary:(id)a3
{
  v9.receiver = self;
  v9.super_class = MXRoutingContextModificationResult;
  v4 = [(MXRoutingContextModificationResult *)&v9 init];
  v5 = [a3 objectForKey:@"RouteConfigUpdatedReason"];
  v6 = -[MXRoutingContextModificationMetrics initWithDictionary:]([MXRoutingContextModificationMetrics alloc], "initWithDictionary:", [a3 objectForKey:@"ModificationMetrics"]);
  v7 = -[MXRoutingContextModificationResult initWithRouteConfigUpdatedReason:modificationMetrics:previousRouteDescriptors:currentRouteDescriptors:]([MXRoutingContextModificationResult alloc], "initWithRouteConfigUpdatedReason:modificationMetrics:previousRouteDescriptors:currentRouteDescriptors:", v5, v6, [a3 objectForKey:@"PreviousRouteDescriptors"], objc_msgSend(a3, "objectForKey:", @"CurrentRouteDescriptors"));

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