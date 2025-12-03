@interface GDAddressResolutionResult
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToAddressResolutionResult:(id)result;
- (GDAddressResolutionResult)initWithCoder:(id)coder;
- (GDAddressResolutionResult)initWithRankedEntities:(id)entities;
- (NSString)topRankedContactId;
- (NSString)topRankedMdId;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GDAddressResolutionResult

- (id)description
{
  v3 = objc_opt_new();
  [v3 appendString:@"<GDAddressResolutionResult:"];
  [v3 appendString:@"rankedEntities: ["];
  if ([(NSArray *)self->_rankedEntities count])
  {
    v4 = 0;
    do
    {
      v5 = [(NSArray *)self->_rankedEntities objectAtIndexedSubscript:v4];
      v6 = [v5 description];
      [v3 appendFormat:@"'%@'", v6];

      if (v4 < [(NSArray *)self->_rankedEntities count]- 1)
      {
        [v3 appendString:{@", "}];
      }

      ++v4;
    }

    while (v4 < [(NSArray *)self->_rankedEntities count]);
  }

  [v3 appendString:@"]>"];

  return v3;
}

- (NSString)topRankedContactId
{
  v17 = *MEMORY[0x1E69E9840];
  if ([(NSArray *)self->_rankedEntities count])
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v3 = self->_rankedEntities;
    contactId2 = [(NSArray *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (contactId2)
    {
      v5 = *v13;
      while (2)
      {
        for (i = 0; i != contactId2; i = i + 1)
        {
          if (*v13 != v5)
          {
            objc_enumerationMutation(v3);
          }

          v7 = *(*(&v12 + 1) + 8 * i);
          contactId = [v7 contactId];
          v9 = [contactId length];

          if (v9)
          {
            contactId2 = [v7 contactId];
            goto LABEL_12;
          }
        }

        contactId2 = [(NSArray *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (contactId2)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    contactId2 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return contactId2;
}

- (NSString)topRankedMdId
{
  if ([(NSArray *)self->_rankedEntities count])
  {
    v3 = [(NSArray *)self->_rankedEntities objectAtIndexedSubscript:0];
    mdId = [v3 mdId];
  }

  else
  {
    mdId = 0;
  }

  return mdId;
}

- (GDAddressResolutionResult)initWithRankedEntities:(id)entities
{
  entitiesCopy = entities;
  v9.receiver = self;
  v9.super_class = GDAddressResolutionResult;
  v6 = [(GDAddressResolutionResult *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_rankedEntities, entities);
  }

  return v7;
}

- (BOOL)isEqualToAddressResolutionResult:(id)result
{
  resultCopy = result;
  v5 = resultCopy;
  if (resultCopy == self)
  {
    v8 = 1;
  }

  else if (resultCopy)
  {
    rankedEntities = self->_rankedEntities;
    rankedEntities = [(GDAddressResolutionResult *)resultCopy rankedEntities];
    v8 = [(NSArray *)rankedEntities isEqualToArray:rankedEntities];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(GDAddressResolutionResult *)self isEqualToAddressResolutionResult:equalCopy];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [GDAddressResolutionResult allocWithZone:zone];
  rankedEntities = self->_rankedEntities;

  return [(GDAddressResolutionResult *)v4 initWithRankedEntities:rankedEntities];
}

- (GDAddressResolutionResult)initWithCoder:(id)coder
{
  v19[1] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = [v5 setWithObjects:{v6, v7, objc_opt_class(), 0}];
  v9 = NSStringFromSelector(sel_rankedEntities);
  v10 = [coderCopy decodeObjectOfClasses:v8 forKey:v9];

  if (v10)
  {
    self = [(GDAddressResolutionResult *)self initWithRankedEntities:v10];
    selfCopy = self;
  }

  else
  {
    error = [coderCopy error];

    if (!error)
    {
      v13 = MEMORY[0x1E696ABC0];
      v18 = *MEMORY[0x1E696A578];
      v19[0] = @"GDAddressResolutionResult rankedEntities could not be decoded";
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
      v15 = [v13 errorWithDomain:@"GDErrorDomain" code:9 userInfo:v14];
      [coderCopy failWithError:v15];
    }

    selfCopy = 0;
  }

  v16 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  rankedEntities = self->_rankedEntities;
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_rankedEntities);
  [coderCopy encodeObject:rankedEntities forKey:v5];
}

@end