@interface DIHandle
+ (id)stringForHandleType:(unint64_t)a3;
- (BOOL)isEqual:(id)a3;
- (DIHandle)initWithCoder:(id)a3;
- (DIHandle)initWithType:(unint64_t)a3 value:(id)a4;
- (DIHandle)initWithType:(unint64_t)a3 value:(id)a4 givenName:(id)a5 familyName:(id)a6 displayName:(id)a7 imageData:(id)a8;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DIHandle

- (DIHandle)initWithType:(unint64_t)a3 value:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = DIHandle;
  v8 = [(DIHandle *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_type = a3;
    objc_storeStrong(&v8->_value, a4);
  }

  return v9;
}

- (DIHandle)initWithType:(unint64_t)a3 value:(id)a4 givenName:(id)a5 familyName:(id)a6 displayName:(id)a7 imageData:(id)a8
{
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v18 = [(DIHandle *)self initWithType:a3 value:a4];
  v19 = v18;
  if (v18)
  {
    [(DIHandle *)v18 setGivenName:v14];
    [(DIHandle *)v19 setFamilyName:v15];
    [(DIHandle *)v19 setDisplayName:v16];
    [(DIHandle *)v19 setImageData:v17];
  }

  return v19;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v16 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(DIHandle *)self type];
      if (v6 != [(DIHandle *)v5 type])
      {
        goto LABEL_31;
      }

      v7 = [(DIHandle *)self value];
      v8 = [(DIHandle *)v5 value];
      v9 = [v7 isEqualToString:v8];

      if (!v9)
      {
        goto LABEL_31;
      }

      v10 = [(DIHandle *)v5 givenName];
      if (v10 && (v11 = v10, [(DIHandle *)self givenName], v12 = objc_claimAutoreleasedReturnValue(), v12, v11, v12))
      {
        v13 = [(DIHandle *)self givenName];
        v14 = [(DIHandle *)v5 givenName];
        v15 = [v13 isEqualToString:v14];

        if ((v15 & 1) == 0)
        {
          goto LABEL_31;
        }
      }

      else
      {
        v17 = [(DIHandle *)v5 givenName];
        if (v17)
        {
          goto LABEL_30;
        }

        v18 = [(DIHandle *)self givenName];

        if (v18)
        {
          goto LABEL_31;
        }
      }

      v19 = [(DIHandle *)v5 familyName];
      if (v19 && (v20 = v19, [(DIHandle *)self familyName], v21 = objc_claimAutoreleasedReturnValue(), v21, v20, v21))
      {
        v22 = [(DIHandle *)self familyName];
        v23 = [(DIHandle *)v5 familyName];
        v24 = [v22 isEqualToString:v23];

        if ((v24 & 1) == 0)
        {
          goto LABEL_31;
        }
      }

      else
      {
        v17 = [(DIHandle *)v5 familyName];
        if (v17)
        {
          goto LABEL_30;
        }

        v25 = [(DIHandle *)self familyName];

        if (v25)
        {
          goto LABEL_31;
        }
      }

      v26 = [(DIHandle *)v5 displayName];
      if (v26 && (v27 = v26, [(DIHandle *)self displayName], v28 = objc_claimAutoreleasedReturnValue(), v28, v27, v28))
      {
        v29 = [(DIHandle *)self displayName];
        v30 = [(DIHandle *)v5 displayName];
        v31 = [v29 isEqualToString:v30];

        if ((v31 & 1) == 0)
        {
          goto LABEL_31;
        }
      }

      else
      {
        v17 = [(DIHandle *)v5 displayName];
        if (v17)
        {
          goto LABEL_30;
        }

        v32 = [(DIHandle *)self displayName];

        if (v32)
        {
          goto LABEL_31;
        }
      }

      v33 = [(DIHandle *)v5 imageData];
      if (v33)
      {
        v34 = v33;
        v35 = [(DIHandle *)self imageData];

        if (v35)
        {
          v36 = [(DIHandle *)self imageData];
          v37 = [(DIHandle *)v5 imageData];
          v38 = [v36 isEqualToData:v37];

          if (v38)
          {
            goto LABEL_35;
          }

          goto LABEL_31;
        }
      }

      v17 = [(DIHandle *)v5 imageData];
      if (!v17)
      {
        v40 = [(DIHandle *)self imageData];

        if (!v40)
        {
LABEL_35:
          v16 = 1;
          goto LABEL_32;
        }

LABEL_31:
        v16 = 0;
LABEL_32:

        goto LABEL_33;
      }

LABEL_30:

      goto LABEL_31;
    }

    v16 = 0;
  }

LABEL_33:

  return v16;
}

+ (id)stringForHandleType:(unint64_t)a3
{
  if (a3 > 2)
  {
    v5 = @"Unknown";
  }

  else
  {
    v5 = off_278FB9148[a3];
  }

  return [MEMORY[0x277CCACA8] stringWithFormat:@"(%lu) %@", a3, v5, v3, v4];
}

- (unint64_t)hash
{
  v3 = [(DIHandle *)self type];
  v4 = [(DIHandle *)self value];
  v5 = [v4 hash];

  return v5 ^ v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(DIHandle *)self type];
  v5 = [DIHandle stringForHandleType:[(DIHandle *)self type]];
  v6 = [(DIHandle *)self value];
  v7 = [(DIHandle *)self givenName];
  v8 = [(DIHandle *)self familyName];
  v9 = [(DIHandle *)self displayName];
  v10 = [(DIHandle *)self imageData];
  v11 = [v3 stringWithFormat:@"Type = %lu (%@), Value = %@, GivenName = %@, FamilyName = %@, DisplayName = %@, Image = %@", v4, v5, v6, v7, v8, v9, v10];

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  v6 = [v4 numberWithUnsignedInteger:{-[DIHandle type](self, "type")}];
  [v5 encodeObject:v6 forKey:@"Type"];

  v7 = [(DIHandle *)self value];
  [v5 encodeObject:v7 forKey:@"Value"];

  v8 = [(DIHandle *)self givenName];
  [v5 encodeObject:v8 forKey:@"GivenName"];

  v9 = [(DIHandle *)self familyName];
  [v5 encodeObject:v9 forKey:@"FamilyName"];

  v10 = [(DIHandle *)self displayName];
  [v5 encodeObject:v10 forKey:@"DisplayName"];

  v11 = [(DIHandle *)self imageData];
  [v5 encodeObject:v11 forKey:@"ImageData"];
}

- (DIHandle)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(DIHandle *)self init];
  if (!v5)
  {
LABEL_13:
    v7 = v5;
    goto LABEL_14;
  }

  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Type"];
  v7 = v6;
  if (v6)
  {
    v5->_type = [(DIHandle *)v6 unsignedIntegerValue];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Value"];
    if (!v8)
    {

      v7 = 0;
      goto LABEL_14;
    }

    v9 = v8;
    objc_storeStrong(&v5->_value, v8);
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"GivenName"];
    if (v10)
    {
      objc_storeStrong(&v5->_givenName, v10);
    }

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"FamilyName"];
    if (v11)
    {
      objc_storeStrong(&v5->_familyName, v11);
    }

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"DisplayName"];
    if (v12)
    {
      objc_storeStrong(&v5->_displayName, v12);
    }

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ImageData"];
    if (v13)
    {
      objc_storeStrong(&v5->_imageData, v13);
    }

    goto LABEL_13;
  }

LABEL_14:

  return v7;
}

@end