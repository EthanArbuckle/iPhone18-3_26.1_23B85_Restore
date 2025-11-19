@interface KGSnapshotEdge
- (BOOL)isEqual:(id)a3;
- (KGSnapshotEdge)initWithIdentifier:(unint64_t)a3 labels:(id)a4 properties:(id)a5 sourceNode:(id)a6 targetNode:(id)a7;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation KGSnapshotEdge

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && self->_identifier == v4->_identifier;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  identifier = self->_identifier;
  labels = self->_labels;
  properties = self->_properties;
  sourceNode = self->_sourceNode;
  targetNode = self->_targetNode;

  return [v4 initWithIdentifier:identifier labels:labels properties:properties sourceNode:sourceNode targetNode:targetNode];
}

- (KGSnapshotEdge)initWithIdentifier:(unint64_t)a3 labels:(id)a4 properties:(id)a5 sourceNode:(id)a6 targetNode:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v23.receiver = self;
  v23.super_class = KGSnapshotEdge;
  v16 = [(KGSnapshotEdge *)&v23 init];
  v17 = v16;
  if (v16)
  {
    v16->_identifier = a3;
    v18 = [v12 copy];
    labels = v17->_labels;
    v17->_labels = v18;

    v20 = [v13 copy];
    properties = v17->_properties;
    v17->_properties = v20;

    objc_storeStrong(&v17->_sourceNode, a6);
    objc_storeStrong(&v17->_targetNode, a7);
  }

  return v17;
}

@end