@interface KGMemoryNode
- (KGMemoryNode)initWithIdentifier:(unint64_t)identifier labels:(id)labels properties:(id)properties;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation KGMemoryNode

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  identifier = self->_identifier;
  labels = [(KGMemoryNode *)self labels];
  properties = [(KGMemoryNode *)self properties];
  v7 = [v3 stringWithFormat:@"<KGMemoryEdge id:%lu label:%@ properties:%@>", identifier, labels, properties];

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [KGMemoryNode allocWithZone:zone];
  identifier = self->_identifier;
  v6 = [(NSSet *)self->_labels copy];
  v7 = [(NSDictionary *)self->_properties copy];
  v8 = [(KGMemoryNode *)v4 initWithIdentifier:identifier labels:v6 properties:v7];

  return v8;
}

- (KGMemoryNode)initWithIdentifier:(unint64_t)identifier labels:(id)labels properties:(id)properties
{
  labelsCopy = labels;
  propertiesCopy = properties;
  v17.receiver = self;
  v17.super_class = KGMemoryNode;
  v10 = [(KGMemoryNode *)&v17 init];
  v11 = v10;
  if (v10)
  {
    v10->_identifier = identifier;
    v12 = [labelsCopy copy];
    labels = v11->_labels;
    v11->_labels = v12;

    v14 = [propertiesCopy copy];
    properties = v11->_properties;
    v11->_properties = v14;
  }

  return v11;
}

@end