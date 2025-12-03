@interface HDExtractionResultItem
- (BOOL)isEqual:(id)equal;
- (HDExtractionResultItem)init;
- (HDExtractionResultItem)initWithCoder:(id)coder;
- (HDExtractionResultItem)initWithOriginalFHIRResource:(id)resource units:(id)units flags:(unint64_t)flags;
- (id)debugDescription;
- (id)description;
- (void)encodeWithCoder:(id)coder;
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

- (HDExtractionResultItem)initWithOriginalFHIRResource:(id)resource units:(id)units flags:(unint64_t)flags
{
  resourceCopy = resource;
  unitsCopy = units;
  if (!resourceCopy)
  {
    [HDExtractionResultItem initWithOriginalFHIRResource:a2 units:self flags:?];
  }

  v17.receiver = self;
  v17.super_class = HDExtractionResultItem;
  v11 = [(HDExtractionResultItem *)&v17 init];
  if (v11)
  {
    v12 = [resourceCopy copy];
    originalFHIRResource = v11->_originalFHIRResource;
    v11->_originalFHIRResource = v12;

    v14 = [unitsCopy copy];
    units = v11->_units;
    v11->_units = v14;

    v11->_flags = flags;
  }

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
      originalFHIRResource = self->_originalFHIRResource;
      originalFHIRResource = [(HDExtractionResultItem *)v6 originalFHIRResource];
      if (originalFHIRResource != originalFHIRResource)
      {
        originalFHIRResource2 = [(HDExtractionResultItem *)v6 originalFHIRResource];
        if (!originalFHIRResource2)
        {
          v12 = 0;
          goto LABEL_21;
        }

        v3 = originalFHIRResource2;
        v10 = self->_originalFHIRResource;
        originalFHIRResource3 = [(HDExtractionResultItem *)v6 originalFHIRResource];
        if (![(HDOriginalFHIRResourceObject *)v10 isEqual:originalFHIRResource3])
        {
          v12 = 0;
LABEL_20:

          goto LABEL_21;
        }

        v22 = originalFHIRResource3;
      }

      units = self->_units;
      units = [(HDExtractionResultItem *)v6 units];
      if (units != units)
      {
        units2 = [(HDExtractionResultItem *)v6 units];
        if (units2)
        {
          v16 = units2;
          v17 = self->_units;
          units3 = [(HDExtractionResultItem *)v6 units];
          if ([(NSArray *)v17 isEqualToArray:units3])
          {
            flags = self->_flags;
            v12 = flags == [(HDExtractionResultItem *)v6 flags];

LABEL_15:
            goto LABEL_19;
          }
        }

        v12 = 0;
LABEL_19:
        originalFHIRResource3 = v22;
        if (originalFHIRResource != originalFHIRResource)
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
  identifier = [(HDFHIRResourceObject *)self->_originalFHIRResource identifier];
  v7 = [v3 stringWithFormat:@"<%@ %p, FHIR resource: %@, units: %lu, raw flags: %lu>", v5, self, identifier, -[NSArray count](self->_units, "count"), self->_flags];

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

- (HDExtractionResultItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"originalFHIRResource"];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] hk_typesForArrayOf:objc_opt_class()];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"units"];
    self = -[HDExtractionResultItem initWithOriginalFHIRResource:units:flags:](self, "initWithOriginalFHIRResource:units:flags:", v5, v7, [coderCopy decodeIntegerForKey:@"flags"]);

    selfCopy = self;
  }

  else
  {
    [coderCopy hrs_failWithCocoaValueNotFoundError];
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  originalFHIRResource = self->_originalFHIRResource;
  coderCopy = coder;
  [coderCopy encodeObject:originalFHIRResource forKey:@"originalFHIRResource"];
  [coderCopy encodeObject:self->_units forKey:@"units"];
  [coderCopy encodeInteger:self->_flags forKey:@"flags"];
}

- (void)initWithOriginalFHIRResource:(uint64_t)a1 units:(uint64_t)a2 flags:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HDExtractionResultItem.m" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"originalFHIRResource"}];
}

@end