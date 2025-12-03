@interface PKCloudRecordPassCatalog
- (PKCloudRecordPassCatalog)initWithCoder:(id)coder;
- (id)_descriptionWithIncludeItem:(BOOL)item;
- (id)description;
- (id)descriptionWithItem:(BOOL)item;
- (int64_t)compare:(id)compare;
- (void)applyCloudRecordObject:(id)object;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKCloudRecordPassCatalog

- (PKCloudRecordPassCatalog)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = PKCloudRecordPassCatalog;
  v5 = [(PKCloudRecordObject *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"catalog"];
    catalog = v5->_catalog;
    v5->_catalog = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = PKCloudRecordPassCatalog;
  coderCopy = coder;
  [(PKCloudRecordObject *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_catalog forKey:{@"catalog", v5.receiver, v5.super_class}];
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  if (compareCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    catalog = [(PKCloudRecordPassCatalog *)self catalog];
    v6 = [catalog description];
    catalog2 = [compareCopy catalog];
    v8 = [catalog2 description];
    v9 = [v6 compare:v8];
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (id)descriptionWithItem:(BOOL)item
{
  itemCopy = item;
  v5 = [(PKCloudRecordPassCatalog *)self _descriptionWithIncludeItem:?];
  v8.receiver = self;
  v8.super_class = PKCloudRecordPassCatalog;
  v6 = [(PKCloudRecordObject *)&v8 descriptionWithItem:itemCopy];
  [v5 appendFormat:@"\n%@", v6];

  return v5;
}

- (id)description
{
  v3 = [(PKCloudRecordPassCatalog *)self _descriptionWithIncludeItem:0];
  v6.receiver = self;
  v6.super_class = PKCloudRecordPassCatalog;
  v4 = [(PKCloudRecordObject *)&v6 description];
  [v3 appendFormat:@"\n%@", v4];

  return v3;
}

- (id)_descriptionWithIncludeItem:(BOOL)item
{
  itemCopy = item;
  string = [MEMORY[0x1E696AD60] string];
  v6 = string;
  if (self->_catalog)
  {
    if (itemCopy)
    {
      [string appendFormat:@"catalog: %@", self->_catalog];
    }
  }

  else
  {
    [string appendFormat:@"No associated pass catalog in database\n", v8];
  }

  return v6;
}

- (void)applyCloudRecordObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10.receiver = self;
    v10.super_class = PKCloudRecordPassCatalog;
    [(PKCloudRecordObject *)&v10 applyCloudRecordObject:objectCopy];
    v5 = objectCopy;
    v6 = v5;
    if (!self->_catalog)
    {
      catalog = [v5 catalog];

      if (catalog)
      {
        catalog2 = [v6 catalog];
        catalog = self->_catalog;
        self->_catalog = catalog2;
      }
    }
  }
}

@end