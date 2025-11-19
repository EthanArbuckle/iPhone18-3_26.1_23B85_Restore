@interface DIAttributeDocument
- (DIAttributeDocument)initWithAcceptableDocs:(id)a3;
- (DIAttributeDocument)initWithCoder:(id)a3;
- (NSArray)acceptableDocs;
- (NSArray)getCurrentValue;
- (NSString)idDocType;
- (id)defaultValue;
- (id)description;
- (unint64_t)acceptableDocTypes;
- (unint64_t)docType;
- (void)encodeWithCoder:(id)a3;
- (void)setAcceptableDocTypes:(unint64_t)a3;
- (void)setAcceptableDocs:(id)a3;
- (void)setCurrentValue:(id)a3;
- (void)setDocType:(unint64_t)a3;
- (void)setIdDocType:(id)a3;
@end

@implementation DIAttributeDocument

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = DIAttributeDocument;
  v4 = a3;
  [(DIAttribute *)&v5 encodeWithCoder:v4];
  os_unfair_lock_lock(&self->super._lock);
  [v4 encodeInteger:self->_docType forKey:{@"docType", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_idDocType forKey:@"idDocType"];
  [v4 encodeInteger:self->_acceptableDocTypes forKey:@"acceptableDocTypes"];
  [v4 encodeObject:self->_acceptableDocs forKey:@"acceptableDocs"];

  os_unfair_lock_unlock(&self->super._lock);
}

- (DIAttributeDocument)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = DIAttributeDocument;
  v5 = [(DIAttribute *)&v14 initWithCoder:v4];
  if (v5)
  {
    v5->_docType = [v4 decodeIntegerForKey:@"docType"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"idDocType"];
    idDocType = v5->_idDocType;
    v5->_idDocType = v6;

    v5->_acceptableDocTypes = [v4 decodeIntegerForKey:@"acceptableDocTypes"];
    v8 = MEMORY[0x277CBEB98];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"acceptableDocs"];
    acceptableDocs = v5->_acceptableDocs;
    v5->_acceptableDocs = v11;
  }

  return v5;
}

- (DIAttributeDocument)initWithAcceptableDocs:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = DIAttributeDocument;
  v6 = [(DIAttribute *)&v10 init];
  v7 = v6;
  if (v6)
  {
    [(DIAttribute *)v6 setAttributeType:4];
    [(DIAttribute *)v7 setIdentifier:@"identityDocument"];
    v7->_acceptableDocTypes = 1;
    objc_storeStrong(&v7->_acceptableDocs, a3);
    v7->_docType = 1;
    idDocType = v7->_idDocType;
    v7->_idDocType = @"unknown";
  }

  return v7;
}

- (void)setDocType:(unint64_t)a3
{
  os_unfair_lock_lock(&self->super._lock);
  self->_docType = a3;
  os_unfair_lock_unlock(&self->super._lock);
  if (a3 - 2 > 6)
  {
    v5 = @"unknown";
  }

  else
  {
    v5 = off_278320F90[a3 - 2];
  }

  [(DIAttributeDocument *)self setIdDocType:v5];
}

- (void)setCurrentValue:(id)a3
{
  v3.receiver = self;
  v3.super_class = DIAttributeDocument;
  [(DIAttribute *)&v3 setCurrentValue:a3];
}

- (void)setIdDocType:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock(&self->super._lock);
  if (self->_idDocType != v6)
  {
    v4 = [(NSString *)v6 copyWithZone:0];
    idDocType = self->_idDocType;
    self->_idDocType = v4;
  }

  os_unfair_lock_unlock(&self->super._lock);
}

- (void)setAcceptableDocs:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock(&self->super._lock);
  if (self->_acceptableDocs != v6)
  {
    v4 = [(NSArray *)v6 copyWithZone:0];
    acceptableDocs = self->_acceptableDocs;
    self->_acceptableDocs = v4;
  }

  os_unfair_lock_unlock(&self->super._lock);
}

- (void)setAcceptableDocTypes:(unint64_t)a3
{
  os_unfair_lock_lock(&self->super._lock);
  self->_acceptableDocTypes = a3;

  os_unfair_lock_unlock(&self->super._lock);
}

- (NSArray)getCurrentValue
{
  v4.receiver = self;
  v4.super_class = DIAttributeDocument;
  v2 = [(DIAttribute *)&v4 getCurrentValue];

  return v2;
}

- (id)defaultValue
{
  v4.receiver = self;
  v4.super_class = DIAttributeDocument;
  v2 = [(DIAttribute *)&v4 defaultValue];

  return v2;
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
  v11 = [(DIAttributeDocument *)self defaultValue];
  [v3 appendFormat:@"defaultValue: '%@'; ", v11];

  [v3 appendFormat:@"currentValue: [ \n"];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v12 = [(DIAttributeDocument *)self getCurrentValue];
  v13 = [v12 countByEnumeratingWithState:&v20 objects:v29 count:16];
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
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v20 + 1) + 8 * j) description];
        [v3 appendFormat:@"    image: '%@'\n", v17];
      }

      v14 = [v12 countByEnumeratingWithState:&v20 objects:v29 count:16];
    }

    while (v14);
  }

  [v3 appendFormat:@"]; "];
  [v3 appendFormat:@">"];
  v18 = *MEMORY[0x277D85DE8];

  return v3;
}

@end