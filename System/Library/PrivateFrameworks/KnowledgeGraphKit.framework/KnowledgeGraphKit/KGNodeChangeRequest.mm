@interface KGNodeChangeRequest
- (KGNodeChangeRequest)initWithNode:(id)node properties:(id)properties;
@end

@implementation KGNodeChangeRequest

- (KGNodeChangeRequest)initWithNode:(id)node properties:(id)properties
{
  nodeCopy = node;
  propertiesCopy = properties;
  v12.receiver = self;
  v12.super_class = KGNodeChangeRequest;
  v9 = [(KGNodeChangeRequest *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_node, node);
    objc_storeStrong(&v10->_properties, properties);
  }

  return v10;
}

@end