@interface KGSnapshotNode
- (BOOL)isEqual:(id)equal;
- (KGSnapshotNode)initWithIdentifier:(unint64_t)identifier labels:(id)labels properties:(id)properties;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation KGSnapshotNode

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
  v4 = [KGSnapshotNode alloc];
  identifier = self->_identifier;
  labels = self->_labels;
  properties = self->_properties;

  return [(KGSnapshotNode *)v4 initWithIdentifier:identifier labels:labels properties:properties];
}

- (NSString)description
{
  v6.receiver = self;
  v6.super_class = KGSnapshotNode;
  v3 = [(KGSnapshotNode *)&v6 description];
  v4 = [v3 mutableCopy];

  [v4 appendFormat:@"[%ld] [%@]", self->_identifier, self->_labels];

  return v4;
}

- (KGSnapshotNode)initWithIdentifier:(unint64_t)identifier labels:(id)labels properties:(id)properties
{
  labelsCopy = labels;
  propertiesCopy = properties;
  v17.receiver = self;
  v17.super_class = KGSnapshotNode;
  v10 = [(KGSnapshotNode *)&v17 init];
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