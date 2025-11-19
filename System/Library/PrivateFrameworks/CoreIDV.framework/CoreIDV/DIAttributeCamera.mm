@interface DIAttributeCamera
- (DIAttributeCamera)init;
- (DIAttributeCamera)initWithCoder:(id)a3;
- (NSArray)getCurrentValue;
- (NSArray)scanRequirements;
- (id)defaultValue;
- (id)description;
- (void)encodeWithCoder:(id)a3;
- (void)setCurrentValue:(id)a3;
- (void)setScanRequirements:(id)a3;
@end

@implementation DIAttributeCamera

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = DIAttributeCamera;
  v4 = a3;
  [(DIAttribute *)&v5 encodeWithCoder:v4];
  os_unfair_lock_lock(&self->super._lock);
  [v4 encodeObject:self->_scanRequirements forKey:{@"scanRequirements", v5.receiver, v5.super_class}];

  os_unfair_lock_unlock(&self->super._lock);
}

- (DIAttributeCamera)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = DIAttributeCamera;
  v5 = [(DIAttribute *)&v12 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"scanRequirements"];
    scanRequirements = v5->_scanRequirements;
    v5->_scanRequirements = v9;
  }

  return v5;
}

- (DIAttributeCamera)init
{
  v5.receiver = self;
  v5.super_class = DIAttributeCamera;
  v2 = [(DIAttribute *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(DIAttribute *)v2 setAttributeType:9];
  }

  return v3;
}

- (void)setCurrentValue:(id)a3
{
  v3.receiver = self;
  v3.super_class = DIAttributeCamera;
  [(DIAttribute *)&v3 setCurrentValue:a3];
}

- (void)setScanRequirements:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock(&self->super._lock);
  if (self->_scanRequirements != v6)
  {
    v4 = [(NSArray *)v6 copyWithZone:0];
    scanRequirements = self->_scanRequirements;
    self->_scanRequirements = v4;
  }

  os_unfair_lock_unlock(&self->super._lock);
}

- (NSArray)getCurrentValue
{
  v4.receiver = self;
  v4.super_class = DIAttributeCamera;
  v2 = [(DIAttribute *)&v4 getCurrentValue];

  return v2;
}

- (id)defaultValue
{
  v4.receiver = self;
  v4.super_class = DIAttributeCamera;
  v2 = [(DIAttribute *)&v4 defaultValue];

  return v2;
}

- (NSArray)scanRequirements
{
  os_unfair_lock_lock(&self->super._lock);
  v3 = self->_scanRequirements;
  os_unfair_lock_unlock(&self->super._lock);

  return v3;
}

- (id)description
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAB68] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  v27.receiver = self;
  v27.super_class = DIAttributeCamera;
  v4 = [(DIAttribute *)&v27 description];
  [v3 appendFormat:@"%@", v4];

  [v3 appendFormat:@"scanRequirements: [ \n"];
  os_unfair_lock_lock(&self->super._lock);
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = self->_scanRequirements;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v24;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v23 + 1) + 8 * i) description];
        [v3 appendFormat:@"    scanRequirement: '%@'\n", v10];
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v23 objects:v29 count:16];
    }

    while (v7);
  }

  os_unfair_lock_unlock(&self->super._lock);
  [v3 appendFormat:@"]; "];
  [v3 appendFormat:@"currentValue: [ \n"];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v11 = [(DIAttributeCamera *)self getCurrentValue];
  v12 = [v11 countByEnumeratingWithState:&v19 objects:v28 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v20;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [*(*(&v19 + 1) + 8 * j) description];
        [v3 appendFormat:@"    image: '%@'\n", v16];
      }

      v13 = [v11 countByEnumeratingWithState:&v19 objects:v28 count:16];
    }

    while (v13);
  }

  [v3 appendFormat:@"]; "];
  [v3 appendFormat:@">"];
  v17 = *MEMORY[0x277D85DE8];

  return v3;
}

@end