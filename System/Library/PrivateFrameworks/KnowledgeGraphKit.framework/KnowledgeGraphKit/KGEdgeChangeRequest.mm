@interface KGEdgeChangeRequest
- (KGEdgeChangeRequest)initWithEdge:(id)edge properties:(id)properties;
@end

@implementation KGEdgeChangeRequest

- (KGEdgeChangeRequest)initWithEdge:(id)edge properties:(id)properties
{
  edgeCopy = edge;
  propertiesCopy = properties;
  v12.receiver = self;
  v12.super_class = KGEdgeChangeRequest;
  v9 = [(KGEdgeChangeRequest *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_edge, edge);
    objc_storeStrong(&v10->_properties, properties);
  }

  return v10;
}

@end