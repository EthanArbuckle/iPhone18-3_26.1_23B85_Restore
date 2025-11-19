@interface GDAddressResolutionResultEntity
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToAddressResolutionResultEntity:(id)a3;
- (GDAddressResolutionResultEntity)initWithCoder:(id)a3;
- (GDAddressResolutionResultEntity)initWithMdId:(id)a3 contactId:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GDAddressResolutionResultEntity

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"<GDAddressResolutionResultEntity: mdId:%@ contactId:%@>", self->_mdId, self->_contactId];

  return v2;
}

- (GDAddressResolutionResultEntity)initWithMdId:(id)a3 contactId:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = GDAddressResolutionResultEntity;
  v9 = [(GDAddressResolutionResultEntity *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_mdId, a3);
    objc_storeStrong(&v10->_contactId, a4);
  }

  return v10;
}

- (BOOL)isEqualToAddressResolutionResultEntity:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v11 = 1;
  }

  else
  {
    if (v4)
    {
      mdId = self->_mdId;
      v7 = [(GDAddressResolutionResultEntity *)v4 mdId];
      if ([mdId isEqualToString:v7])
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

        v10 = [(GDAddressResolutionResultEntity *)v5 contactId];
        v11 = [(NSString *)v9 isEqualToString:v10];

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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(GDAddressResolutionResultEntity *)self isEqualToAddressResolutionResultEntity:v4];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [GDAddressResolutionResultEntity allocWithZone:a3];
  mdId = self->_mdId;
  contactId = self->_contactId;

  return [(GDAddressResolutionResultEntity *)v4 initWithMdId:mdId contactId:contactId];
}

- (GDAddressResolutionResultEntity)initWithCoder:(id)a3
{
  v24[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_mdId);
  v7 = [v4 decodeObjectOfClass:v5 forKey:v6];

  if (!v7)
  {
    v12 = [v4 error];

    if (v12)
    {
      v13 = MEMORY[0x1E696ABC0];
      v23 = *MEMORY[0x1E696A578];
      v24[0] = @"GDAddressResolutionResultEntity mdId could not be decoded";
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
      v14 = [v13 errorWithDomain:@"GDErrorDomain" code:9 userInfo:v10];
      [v4 failWithError:v14];

LABEL_8:
      v11 = 0;
      goto LABEL_9;
    }
  }

  v8 = objc_opt_class();
  v9 = NSStringFromSelector(sel_contactId);
  v10 = [v4 decodeObjectOfClass:v8 forKey:v9];

  if (!v10)
  {
    v15 = [v4 error];

    if (v15)
    {
      v16 = MEMORY[0x1E696ABC0];
      v21 = *MEMORY[0x1E696A578];
      v22 = @"GDAddressResolutionResultEntity contactId could not be decoded";
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
      v18 = [v16 errorWithDomain:@"GDErrorDomain" code:9 userInfo:v17];
      [v4 failWithError:v18];

      v10 = 0;
      goto LABEL_8;
    }
  }

  self = [(GDAddressResolutionResultEntity *)self initWithMdId:v7 contactId:v10];
  v11 = self;
LABEL_9:

  v19 = *MEMORY[0x1E69E9840];
  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  mdId = self->_mdId;
  v5 = a3;
  v6 = NSStringFromSelector(sel_mdId);
  [v5 encodeObject:mdId forKey:v6];

  contactId = self->_contactId;
  v8 = NSStringFromSelector(sel_contactId);
  [v5 encodeObject:contactId forKey:v8];
}

@end