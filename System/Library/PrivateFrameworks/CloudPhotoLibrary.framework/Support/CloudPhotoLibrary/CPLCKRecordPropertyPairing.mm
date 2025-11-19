@interface CPLCKRecordPropertyPairing
- (BOOL)isEqual:(id)a3;
- (CPLCKRecordPropertyPairing)initWithProperties:(id)a3;
- (CPLCKRecordPropertyPairing)initWithProperty:(id)a3 andKeys:(id)a4;
- (id)description;
@end

@implementation CPLCKRecordPropertyPairing

- (CPLCKRecordPropertyPairing)initWithProperties:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CPLCKRecordPropertyPairing;
  v5 = [(CPLCKRecordPropertyPairing *)&v11 init];
  if (v5)
  {
    v6 = [v4 copy];
    properties = v5->_properties;
    v5->_properties = v6;

    v8 = [[NSMutableArray alloc] initWithCapacity:1];
    ckKeys = v5->_ckKeys;
    v5->_ckKeys = v8;
  }

  return v5;
}

- (CPLCKRecordPropertyPairing)initWithProperty:(id)a3 andKeys:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11 = v6;
  v8 = [NSArray arrayWithObjects:&v11 count:1];
  v9 = [(CPLCKRecordPropertyPairing *)self initWithProperties:v8];

  if (v9)
  {
    [(NSMutableArray *)v9->_ckKeys addObjectsFromArray:v7];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
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
  properties = v4->_properties;
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
  v12 = v4->_ckKeys;
  v13 = v12;
  v6 = v11 && v12 && ([v11 isEqual:v12] & 1) != 0 || (v11 | v13) == 0;

LABEL_13:
  return v6;
}

@end