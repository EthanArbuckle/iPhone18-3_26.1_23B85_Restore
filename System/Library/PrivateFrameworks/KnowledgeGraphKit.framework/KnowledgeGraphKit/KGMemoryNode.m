@interface KGMemoryNode
- (KGMemoryNode)initWithIdentifier:(unint64_t)a3 labels:(id)a4 properties:(id)a5;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation KGMemoryNode

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  identifier = self->_identifier;
  v5 = [(KGMemoryNode *)self labels];
  v6 = [(KGMemoryNode *)self properties];
  v7 = [v3 stringWithFormat:@"<KGMemoryEdge id:%lu label:%@ properties:%@>", identifier, v5, v6];

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [KGMemoryNode allocWithZone:a3];
  identifier = self->_identifier;
  v6 = [(NSSet *)self->_labels copy];
  v7 = [(NSDictionary *)self->_properties copy];
  v8 = [(KGMemoryNode *)v4 initWithIdentifier:identifier labels:v6 properties:v7];

  return v8;
}

- (KGMemoryNode)initWithIdentifier:(unint64_t)a3 labels:(id)a4 properties:(id)a5
{
  v8 = a4;
  v9 = a5;
  v17.receiver = self;
  v17.super_class = KGMemoryNode;
  v10 = [(KGMemoryNode *)&v17 init];
  v11 = v10;
  if (v10)
  {
    v10->_identifier = a3;
    v12 = [v8 copy];
    labels = v11->_labels;
    v11->_labels = v12;

    v14 = [v9 copy];
    properties = v11->_properties;
    v11->_properties = v14;
  }

  return v11;
}

@end