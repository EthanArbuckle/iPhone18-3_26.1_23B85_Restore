@interface KGMemoryEdge
- (KGMemoryEdge)initWithIdentifier:(unint64_t)a3 labels:(id)a4 properties:(id)a5 sourceNode:(id)a6 targetNode:(id)a7;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation KGMemoryEdge

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  identifier = self->_identifier;
  v5 = [(KGMemoryEdge *)self sourceNode];
  v6 = [v5 identifier];
  v7 = [(KGMemoryEdge *)self targetNode];
  v8 = [v7 identifier];
  v9 = [(KGMemoryEdge *)self labels];
  v10 = [(KGMemoryEdge *)self properties];
  v11 = [v3 stringWithFormat:@"<KGMemoryEdge id:%lu sourceNodeIdentifier:%lu targetNodeIdentifier:%lu label:%@ properties:%@>", identifier, v6, v8, v9, v10];

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [KGMemoryEdge allocWithZone:a3];
  identifier = self->_identifier;
  v6 = [(NSSet *)self->_labels copy];
  v7 = [(NSDictionary *)self->_properties copy];
  v8 = [(KGMemoryEdge *)v4 initWithIdentifier:identifier labels:v6 properties:v7 sourceNode:self->_sourceNode targetNode:self->_targetNode];

  return v8;
}

- (KGMemoryEdge)initWithIdentifier:(unint64_t)a3 labels:(id)a4 properties:(id)a5 sourceNode:(id)a6 targetNode:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v23.receiver = self;
  v23.super_class = KGMemoryEdge;
  v16 = [(KGMemoryEdge *)&v23 init];
  v17 = v16;
  if (v16)
  {
    v16->_identifier = a3;
    v18 = [v12 copy];
    labels = v17->_labels;
    v17->_labels = v18;

    objc_storeStrong(&v17->_targetNode, a7);
    objc_storeStrong(&v17->_sourceNode, a6);
    v20 = [v13 copy];
    properties = v17->_properties;
    v17->_properties = v20;
  }

  return v17;
}

@end