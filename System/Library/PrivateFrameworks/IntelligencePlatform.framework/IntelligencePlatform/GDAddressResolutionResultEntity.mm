@interface GDAddressResolutionResultEntity
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToAddressResolutionResultEntity:(id)entity;
- (GDAddressResolutionResultEntity)initWithCoder:(id)coder;
- (GDAddressResolutionResultEntity)initWithMdId:(id)id contactId:(id)contactId;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GDAddressResolutionResultEntity

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"<GDAddressResolutionResultEntity: mdId:%@ contactId:%@>", self->_mdId, self->_contactId];

  return v2;
}

- (GDAddressResolutionResultEntity)initWithMdId:(id)id contactId:(id)contactId
{
  idCopy = id;
  contactIdCopy = contactId;
  v12.receiver = self;
  v12.super_class = GDAddressResolutionResultEntity;
  v9 = [(GDAddressResolutionResultEntity *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_mdId, id);
    objc_storeStrong(&v10->_contactId, contactId);
  }

  return v10;
}

- (BOOL)isEqualToAddressResolutionResultEntity:(id)entity
{
  entityCopy = entity;
  v5 = entityCopy;
  if (entityCopy == self)
  {
    v11 = 1;
  }

  else
  {
    if (entityCopy)
    {
      mdId = self->_mdId;
      mdId = [(GDAddressResolutionResultEntity *)entityCopy mdId];
      if ([mdId isEqualToString:mdId])
      {
        contactId = self->_contactId;
        v9 = contactId;
        if (!contactId)
        {
          mdId = [(GDAddressResolutionResultEntity *)v5 contactId];
          if (!mdId)
          {
            v11 = 1;
LABEL_13:

            goto LABEL_14;
          }

          v9 = self->_contactId;
        }

        contactId = [(GDAddressResolutionResultEntity *)v5 contactId];
        v11 = [(NSString *)v9 isEqualToString:contactId];

        if (!contactId)
        {
          goto LABEL_13;
        }
      }

      else
      {
        v11 = 0;
      }

LABEL_14:

      goto LABEL_15;
    }

    v11 = 0;
  }

LABEL_15:

  return v11;
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(GDAddressResolutionResultEntity *)self isEqualToAddressResolutionResultEntity:equalCopy];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [GDAddressResolutionResultEntity allocWithZone:zone];
  mdId = self->_mdId;
  contactId = self->_contactId;

  return [(GDAddressResolutionResultEntity *)v4 initWithMdId:mdId contactId:contactId];
}

- (GDAddressResolutionResultEntity)initWithCoder:(id)coder
{
  v24[1] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_mdId);
  v7 = [coderCopy decodeObjectOfClass:v5 forKey:v6];

  if (!v7)
  {
    error = [coderCopy error];

    if (error)
    {
      v13 = MEMORY[0x1E696ABC0];
      v23 = *MEMORY[0x1E696A578];
      v24[0] = @"GDAddressResolutionResultEntity mdId could not be decoded";
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
      v14 = [v13 errorWithDomain:@"GDErrorDomain" code:9 userInfo:v10];
      [coderCopy failWithError:v14];

LABEL_8:
      selfCopy = 0;
      goto LABEL_9;
    }
  }

  v8 = objc_opt_class();
  v9 = NSStringFromSelector(sel_contactId);
  v10 = [coderCopy decodeObjectOfClass:v8 forKey:v9];

  if (!v10)
  {
    error2 = [coderCopy error];

    if (error2)
    {
      v16 = MEMORY[0x1E696ABC0];
      v21 = *MEMORY[0x1E696A578];
      v22 = @"GDAddressResolutionResultEntity contactId could not be decoded";
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
      v18 = [v16 errorWithDomain:@"GDErrorDomain" code:9 userInfo:v17];
      [coderCopy failWithError:v18];

      v10 = 0;
      goto LABEL_8;
    }
  }

  self = [(GDAddressResolutionResultEntity *)self initWithMdId:v7 contactId:v10];
  selfCopy = self;
LABEL_9:

  v19 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  mdId = self->_mdId;
  coderCopy = coder;
  v6 = NSStringFromSelector(sel_mdId);
  [coderCopy encodeObject:mdId forKey:v6];

  contactId = self->_contactId;
  v8 = NSStringFromSelector(sel_contactId);
  [coderCopy encodeObject:contactId forKey:v8];
}

@end