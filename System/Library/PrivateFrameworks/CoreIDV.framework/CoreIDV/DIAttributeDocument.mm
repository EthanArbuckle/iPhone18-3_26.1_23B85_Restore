@interface DIAttributeDocument
- (DIAttributeDocument)initWithAcceptableDocs:(id)docs;
- (DIAttributeDocument)initWithCoder:(id)coder;
- (NSArray)acceptableDocs;
- (NSArray)getCurrentValue;
- (NSString)idDocType;
- (id)defaultValue;
- (id)description;
- (unint64_t)acceptableDocTypes;
- (unint64_t)docType;
- (void)encodeWithCoder:(id)coder;
- (void)setAcceptableDocTypes:(unint64_t)types;
- (void)setAcceptableDocs:(id)docs;
- (void)setCurrentValue:(id)value;
- (void)setDocType:(unint64_t)type;
- (void)setIdDocType:(id)type;
@end

@implementation DIAttributeDocument

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = DIAttributeDocument;
  coderCopy = coder;
  [(DIAttribute *)&v5 encodeWithCoder:coderCopy];
  os_unfair_lock_lock(&self->super._lock);
  [coderCopy encodeInteger:self->_docType forKey:{@"docType", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_idDocType forKey:@"idDocType"];
  [coderCopy encodeInteger:self->_acceptableDocTypes forKey:@"acceptableDocTypes"];
  [coderCopy encodeObject:self->_acceptableDocs forKey:@"acceptableDocs"];

  os_unfair_lock_unlock(&self->super._lock);
}

- (DIAttributeDocument)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = DIAttributeDocument;
  v5 = [(DIAttribute *)&v14 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_docType = [coderCopy decodeIntegerForKey:@"docType"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"idDocType"];
    idDocType = v5->_idDocType;
    v5->_idDocType = v6;

    v5->_acceptableDocTypes = [coderCopy decodeIntegerForKey:@"acceptableDocTypes"];
    v8 = MEMORY[0x277CBEB98];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"acceptableDocs"];
    acceptableDocs = v5->_acceptableDocs;
    v5->_acceptableDocs = v11;
  }

  return v5;
}

- (DIAttributeDocument)initWithAcceptableDocs:(id)docs
{
  docsCopy = docs;
  v10.receiver = self;
  v10.super_class = DIAttributeDocument;
  v6 = [(DIAttribute *)&v10 init];
  v7 = v6;
  if (v6)
  {
    [(DIAttribute *)v6 setAttributeType:4];
    [(DIAttribute *)v7 setIdentifier:@"identityDocument"];
    v7->_acceptableDocTypes = 1;
    objc_storeStrong(&v7->_acceptableDocs, docs);
    v7->_docType = 1;
    idDocType = v7->_idDocType;
    v7->_idDocType = @"unknown";
  }

  return v7;
}

- (void)setDocType:(unint64_t)type
{
  os_unfair_lock_lock(&self->super._lock);
  self->_docType = type;
  os_unfair_lock_unlock(&self->super._lock);
  if (type - 2 > 6)
  {
    v5 = @"unknown";
  }

  else
  {
    v5 = off_278320F90[type - 2];
  }

  [(DIAttributeDocument *)self setIdDocType:v5];
}

- (void)setCurrentValue:(id)value
{
  v3.receiver = self;
  v3.super_class = DIAttributeDocument;
  [(DIAttribute *)&v3 setCurrentValue:value];
}

- (void)setIdDocType:(id)type
{
  typeCopy = type;
  os_unfair_lock_lock(&self->super._lock);
  if (self->_idDocType != typeCopy)
  {
    v4 = [(NSString *)typeCopy copyWithZone:0];
    idDocType = self->_idDocType;
    self->_idDocType = v4;
  }

  os_unfair_lock_unlock(&self->super._lock);
}

- (void)setAcceptableDocs:(id)docs
{
  docsCopy = docs;
  os_unfair_lock_lock(&self->super._lock);
  if (self->_acceptableDocs != docsCopy)
  {
    v4 = [(NSArray *)docsCopy copyWithZone:0];
    acceptableDocs = self->_acceptableDocs;
    self->_acceptableDocs = v4;
  }

  os_unfair_lock_unlock(&self->super._lock);
}

- (void)setAcceptableDocTypes:(unint64_t)types
{
  os_unfair_lock_lock(&self->super._lock);
  self->_acceptableDocTypes = types;

  os_unfair_lock_unlock(&self->super._lock);
}

- (NSArray)getCurrentValue
{
  v4.receiver = self;
  v4.super_class = DIAttributeDocument;
  getCurrentValue = [(DIAttribute *)&v4 getCurrentValue];

  return getCurrentValue;
}

- (id)defaultValue
{
  v4.receiver = self;
  v4.super_class = DIAttributeDocument;
  defaultValue = [(DIAttribute *)&v4 defaultValue];

  return defaultValue;
}

- (NSString)idDocType
{
  os_unfair_lock_lock(&self->super._lock);
  v3 = self->_idDocType;
  os_unfair_lock_unlock(&self->super._lock);

  return v3;
}

- (unint64_t)docType
{
  os_unfair_lock_lock(&self->super._lock);
  docType = self->_docType;
  os_unfair_lock_unlock(&self->super._lock);
  return docType;
}

- (NSArray)acceptableDocs
{
  os_unfair_lock_lock(&self->super._lock);
  v3 = self->_acceptableDocs;
  os_unfair_lock_unlock(&self->super._lock);

  return v3;
}

- (unint64_t)acceptableDocTypes
{
  os_unfair_lock_lock(&self->super._lock);
  acceptableDocTypes = self->_acceptableDocTypes;
  os_unfair_lock_unlock(&self->super._lock);
  return acceptableDocTypes;
}

- (id)description
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAB68] stringWithFormat:&stru_282E746B8];
  v28.receiver = self;
  v28.super_class = DIAttributeDocument;
  v4 = [(DIAttribute *)&v28 description];
  [v3 appendFormat:@"%@", v4];

  os_unfair_lock_lock(&self->super._lock);
  [v3 appendFormat:@"docType: '%lu'; ", self->_docType];
  [v3 appendFormat:@"idDocType: '%@'; ", self->_idDocType];
  [v3 appendFormat:@"acceptableDocTypes: '%lu'; ", self->_acceptableDocTypes];
  [v3 appendFormat:@"acceptableDocs: [ \n"];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = self->_acceptableDocs;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v24 objects:v30 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v25;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v24 + 1) + 8 * i) description];
        [v3 appendFormat:@"    acceptableDoc: '%@'\n", v10];
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v24 objects:v30 count:16];
    }

    while (v7);
  }

  os_unfair_lock_unlock(&self->super._lock);
  [v3 appendFormat:@"]; "];
  defaultValue = [(DIAttributeDocument *)self defaultValue];
  [v3 appendFormat:@"defaultValue: '%@'; ", defaultValue];

  [v3 appendFormat:@"currentValue: [ \n"];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  getCurrentValue = [(DIAttributeDocument *)self getCurrentValue];
  v13 = [getCurrentValue countByEnumeratingWithState:&v20 objects:v29 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v21;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(getCurrentValue);
        }

        v17 = [*(*(&v20 + 1) + 8 * j) description];
        [v3 appendFormat:@"    image: '%@'\n", v17];
      }

      v14 = [getCurrentValue countByEnumeratingWithState:&v20 objects:v29 count:16];
    }

    while (v14);
  }

  [v3 appendFormat:@"]; "];
  [v3 appendFormat:@">"];
  v18 = *MEMORY[0x277D85DE8];

  return v3;
}

@end