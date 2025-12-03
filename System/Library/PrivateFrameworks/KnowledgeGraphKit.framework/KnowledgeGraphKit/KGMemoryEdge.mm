@interface KGMemoryEdge
- (KGMemoryEdge)initWithIdentifier:(unint64_t)identifier labels:(id)labels properties:(id)properties sourceNode:(id)node targetNode:(id)targetNode;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation KGMemoryEdge

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  identifier = self->_identifier;
  sourceNode = [(KGMemoryEdge *)self sourceNode];
  identifier = [sourceNode identifier];
  targetNode = [(KGMemoryEdge *)self targetNode];
  identifier2 = [targetNode identifier];
  labels = [(KGMemoryEdge *)self labels];
  properties = [(KGMemoryEdge *)self properties];
  v11 = [v3 stringWithFormat:@"<KGMemoryEdge id:%lu sourceNodeIdentifier:%lu targetNodeIdentifier:%lu label:%@ properties:%@>", identifier, identifier, identifier2, labels, properties];

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [KGMemoryEdge allocWithZone:zone];
  identifier = self->_identifier;
  v6 = [(NSSet *)self->_labels copy];
  v7 = [(NSDictionary *)self->_properties copy];
  v8 = [(KGMemoryEdge *)v4 initWithIdentifier:identifier labels:v6 properties:v7 sourceNode:self->_sourceNode targetNode:self->_targetNode];

  return v8;
}

- (KGMemoryEdge)initWithIdentifier:(unint64_t)identifier labels:(id)labels properties:(id)properties sourceNode:(id)node targetNode:(id)targetNode
{
  labelsCopy = labels;
  propertiesCopy = properties;
  nodeCopy = node;
  targetNodeCopy = targetNode;
  v23.receiver = self;
  v23.super_class = KGMemoryEdge;
  v16 = [(KGMemoryEdge *)&v23 init];
  v17 = v16;
  if (v16)
  {
    v16->_identifier = identifier;
    v18 = [labelsCopy copy];
    labels = v17->_labels;
    v17->_labels = v18;

    objc_storeStrong(&v17->_targetNode, targetNode);
    objc_storeStrong(&v17->_sourceNode, node);
    v20 = [propertiesCopy copy];
    properties = v17->_properties;
    v17->_properties = v20;
  }

  return v17;
}

@end