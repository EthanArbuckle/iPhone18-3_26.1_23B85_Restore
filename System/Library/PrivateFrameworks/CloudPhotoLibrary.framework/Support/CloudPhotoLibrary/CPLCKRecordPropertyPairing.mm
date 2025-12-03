@interface CPLCKRecordPropertyPairing
- (BOOL)isEqual:(id)equal;
- (CPLCKRecordPropertyPairing)initWithProperties:(id)properties;
- (CPLCKRecordPropertyPairing)initWithProperty:(id)property andKeys:(id)keys;
- (id)description;
@end

@implementation CPLCKRecordPropertyPairing

- (CPLCKRecordPropertyPairing)initWithProperties:(id)properties
{
  propertiesCopy = properties;
  v11.receiver = self;
  v11.super_class = CPLCKRecordPropertyPairing;
  v5 = [(CPLCKRecordPropertyPairing *)&v11 init];
  if (v5)
  {
    v6 = [propertiesCopy copy];
    properties = v5->_properties;
    v5->_properties = v6;

    v8 = [[NSMutableArray alloc] initWithCapacity:1];
    ckKeys = v5->_ckKeys;
    v5->_ckKeys = v8;
  }

  return v5;
}

- (CPLCKRecordPropertyPairing)initWithProperty:(id)property andKeys:(id)keys
{
  propertyCopy = property;
  keysCopy = keys;
  v11 = propertyCopy;
  v8 = [NSArray arrayWithObjects:&v11 count:1];
  v9 = [(CPLCKRecordPropertyPairing *)self initWithProperties:v8];

  if (v9)
  {
    [(NSMutableArray *)v9->_ckKeys addObjectsFromArray:keysCopy];
  }

  return v9;
}

- (id)description
{
  v3 = [NSString alloc];
  v4 = [(NSArray *)self->_properties componentsJoinedByString:@", "];
  v5 = [(NSMutableArray *)self->_ckKeys componentsJoinedByString:@", "];
  v6 = [v3 initWithFormat:@"(%@) -> (%@)", v4, v5];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    goto LABEL_12;
  }

  v5 = objc_opt_class();
  if (v5 != objc_opt_class())
  {
    v6 = 0;
    goto LABEL_13;
  }

  v7 = self->_properties;
  v8 = v7;
  properties = equalCopy->_properties;
  if (v7 && properties)
  {
    v10 = [v7 isEqual:?];

    if ((v10 & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_12:
    v6 = 1;
    goto LABEL_13;
  }

  v14 = v7 | properties;

  if (!v14)
  {
    goto LABEL_12;
  }

LABEL_7:
  v11 = self->_ckKeys;
  v12 = equalCopy->_ckKeys;
  v13 = v12;
  v6 = v11 && v12 && ([v11 isEqual:v12] & 1) != 0 || (v11 | v13) == 0;

LABEL_13:
  return v6;
}

@end