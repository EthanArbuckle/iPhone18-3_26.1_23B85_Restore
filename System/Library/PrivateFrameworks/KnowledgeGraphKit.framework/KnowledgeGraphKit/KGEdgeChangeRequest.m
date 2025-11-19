@interface KGEdgeChangeRequest
- (KGEdgeChangeRequest)initWithEdge:(id)a3 properties:(id)a4;
@end

@implementation KGEdgeChangeRequest

- (KGEdgeChangeRequest)initWithEdge:(id)a3 properties:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = KGEdgeChangeRequest;
  v9 = [(KGEdgeChangeRequest *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_edge, a3);
    objc_storeStrong(&v10->_properties, a4);
  }

  return v10;
}

@end