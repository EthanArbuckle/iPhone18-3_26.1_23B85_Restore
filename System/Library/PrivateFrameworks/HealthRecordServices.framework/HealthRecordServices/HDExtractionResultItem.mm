@interface HDExtractionResultItem
- (BOOL)isEqual:(id)a3;
- (HDExtractionResultItem)init;
- (HDExtractionResultItem)initWithCoder:(id)a3;
- (HDExtractionResultItem)initWithOriginalFHIRResource:(id)a3 units:(id)a4 flags:(unint64_t)a5;
- (id)debugDescription;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HDExtractionResultItem

- (HDExtractionResultItem)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HDExtractionResultItem)initWithOriginalFHIRResource:(id)a3 units:(id)a4 flags:(unint64_t)a5
{
  v9 = a3;
  v10 = a4;
  if (!v9)
  {
    [HDExtractionResultItem initWithOriginalFHIRResource:a2 units:self flags:?];
  }

  v17.receiver = self;
  v17.super_class = HDExtractionResultItem;
  v11 = [(HDExtractionResultItem *)&v17 init];
  if (v11)
  {
    v12 = [v9 copy];
    originalFHIRResource = v11->_originalFHIRResource;
    v11->_originalFHIRResource = v12;

    v14 = [v10 copy];
    units = v11->_units;
    v11->_units = v14;

    v11->_flags = a5;
  }

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (self == v5)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
      originalFHIRResource = self->_originalFHIRResource;
      v8 = [(HDExtractionResultItem *)v6 originalFHIRResource];
      if (originalFHIRResource != v8)
      {
        v9 = [(HDExtractionResultItem *)v6 originalFHIRResource];
        if (!v9)
        {
          v12 = 0;
          goto LABEL_21;
        }

        v3 = v9;
        v10 = self->_originalFHIRResource;
        v11 = [(HDExtractionResultItem *)v6 originalFHIRResource];
        if (![(HDOriginalFHIRResourceObject *)v10 isEqual:v11])
        {
          v12 = 0;
LABEL_20:

          goto LABEL_21;
        }

        v22 = v11;
      }

      units = self->_units;
      v14 = [(HDExtractionResultItem *)v6 units];
      if (units != v14)
      {
        v15 = [(HDExtractionResultItem *)v6 units];
        if (v15)
        {
          v16 = v15;
          v17 = self->_units;
          v18 = [(HDExtractionResultItem *)v6 units];
          if ([(NSArray *)v17 isEqualToArray:v18])
          {
            flags = self->_flags;
            v12 = flags == [(HDExtractionResultItem *)v6 flags];

LABEL_15:
            goto LABEL_19;
          }
        }

        v12 = 0;
LABEL_19:
        v11 = v22;
        if (originalFHIRResource != v8)
        {
          goto LABEL_20;
        }

LABEL_21:

        goto LABEL_22;
      }

      v20 = self->_flags;
      v12 = v20 == [(HDExtractionResultItem *)v6 flags];
      goto LABEL_15;
    }

    v12 = 0;
  }

LABEL_22:

  return v12;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(HDFHIRResourceObject *)self->_originalFHIRResource identifier];
  v7 = [v3 stringWithFormat:@"<%@ %p, FHIR resource: %@, units: %lu, raw flags: %lu>", v5, self, v6, -[NSArray count](self->_units, "count"), self->_flags];

  return v7;
}

- (id)debugDescription
{
  v3 = [(NSArray *)self->_units hk_map:&__block_literal_global_8];
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [(HDOriginalFHIRResourceObject *)self->_originalFHIRResource debugDescription];
  v8 = [v3 componentsJoinedByString:@"\n\t"];
  v9 = [v4 stringWithFormat:@"<%@ %p, FHIR resource: %@, units:\n\t%@>", v6, self, v7, v8];

  return v9;
}

- (HDExtractionResultItem)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"originalFHIRResource"];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] hk_typesForArrayOf:objc_opt_class()];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"units"];
    self = -[HDExtractionResultItem initWithOriginalFHIRResource:units:flags:](self, "initWithOriginalFHIRResource:units:flags:", v5, v7, [v4 decodeIntegerForKey:@"flags"]);

    v8 = self;
  }

  else
  {
    [v4 hrs_failWithCocoaValueNotFoundError];
    v8 = 0;
  }

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  originalFHIRResource = self->_originalFHIRResource;
  v5 = a3;
  [v5 encodeObject:originalFHIRResource forKey:@"originalFHIRResource"];
  [v5 encodeObject:self->_units forKey:@"units"];
  [v5 encodeInteger:self->_flags forKey:@"flags"];
}

- (void)initWithOriginalFHIRResource:(uint64_t)a1 units:(uint64_t)a2 flags:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HDExtractionResultItem.m" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"originalFHIRResource"}];
}

@end