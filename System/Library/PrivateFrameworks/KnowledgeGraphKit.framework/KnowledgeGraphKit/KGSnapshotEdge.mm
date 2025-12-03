@interface KGSnapshotEdge
- (BOOL)isEqual:(id)equal;
- (KGSnapshotEdge)initWithIdentifier:(unint64_t)identifier labels:(id)labels properties:(id)properties sourceNode:(id)node targetNode:(id)targetNode;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation KGSnapshotEdge

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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && self->_identifier == equalCopy->_identifier;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  identifier = self->_identifier;
  labels = self->_labels;
  properties = self->_properties;
  sourceNode = self->_sourceNode;
  targetNode = self->_targetNode;

  return [v4 initWithIdentifier:identifier labels:labels properties:properties sourceNode:sourceNode targetNode:targetNode];
}

- (KGSnapshotEdge)initWithIdentifier:(unint64_t)identifier labels:(id)labels properties:(id)properties sourceNode:(id)node targetNode:(id)targetNode
{
  labelsCopy = labels;
  propertiesCopy = properties;
  nodeCopy = node;
  targetNodeCopy = targetNode;
  v23.receiver = self;
  v23.super_class = KGSnapshotEdge;
  v16 = [(KGSnapshotEdge *)&v23 init];
  v17 = v16;
  if (v16)
  {
    v16->_identifier = identifier;
    v18 = [labelsCopy copy];
    labels = v17->_labels;
    v17->_labels = v18;

    v20 = [propertiesCopy copy];
    properties = v17->_properties;
    v17->_properties = v20;

    objc_storeStrong(&v17->_sourceNode, node);
    objc_storeStrong(&v17->_targetNode, targetNode);
  }

  return v17;
}

@end