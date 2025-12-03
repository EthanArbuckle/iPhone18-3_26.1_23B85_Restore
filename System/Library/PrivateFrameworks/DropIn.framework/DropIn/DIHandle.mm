@interface DIHandle
+ (id)stringForHandleType:(unint64_t)type;
- (BOOL)isEqual:(id)equal;
- (DIHandle)initWithCoder:(id)coder;
- (DIHandle)initWithType:(unint64_t)type value:(id)value;
- (DIHandle)initWithType:(unint64_t)type value:(id)value givenName:(id)name familyName:(id)familyName displayName:(id)displayName imageData:(id)data;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DIHandle

- (DIHandle)initWithType:(unint64_t)type value:(id)value
{
  valueCopy = value;
  v11.receiver = self;
  v11.super_class = DIHandle;
  v8 = [(DIHandle *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_type = type;
    objc_storeStrong(&v8->_value, value);
  }

  return v9;
}

- (DIHandle)initWithType:(unint64_t)type value:(id)value givenName:(id)name familyName:(id)familyName displayName:(id)displayName imageData:(id)data
{
  nameCopy = name;
  familyNameCopy = familyName;
  displayNameCopy = displayName;
  dataCopy = data;
  v18 = [(DIHandle *)self initWithType:type value:value];
  v19 = v18;
  if (v18)
  {
    [(DIHandle *)v18 setGivenName:nameCopy];
    [(DIHandle *)v19 setFamilyName:familyNameCopy];
    [(DIHandle *)v19 setDisplayName:displayNameCopy];
    [(DIHandle *)v19 setImageData:dataCopy];
  }

  return v19;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v16 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      type = [(DIHandle *)self type];
      if (type != [(DIHandle *)v5 type])
      {
        goto LABEL_31;
      }

      value = [(DIHandle *)self value];
      value2 = [(DIHandle *)v5 value];
      v9 = [value isEqualToString:value2];

      if (!v9)
      {
        goto LABEL_31;
      }

      givenName = [(DIHandle *)v5 givenName];
      if (givenName && (v11 = givenName, [(DIHandle *)self givenName], v12 = objc_claimAutoreleasedReturnValue(), v12, v11, v12))
      {
        givenName2 = [(DIHandle *)self givenName];
        givenName3 = [(DIHandle *)v5 givenName];
        v15 = [givenName2 isEqualToString:givenName3];

        if ((v15 & 1) == 0)
        {
          goto LABEL_31;
        }
      }

      else
      {
        givenName4 = [(DIHandle *)v5 givenName];
        if (givenName4)
        {
          goto LABEL_30;
        }

        givenName5 = [(DIHandle *)self givenName];

        if (givenName5)
        {
          goto LABEL_31;
        }
      }

      familyName = [(DIHandle *)v5 familyName];
      if (familyName && (v20 = familyName, [(DIHandle *)self familyName], v21 = objc_claimAutoreleasedReturnValue(), v21, v20, v21))
      {
        familyName2 = [(DIHandle *)self familyName];
        familyName3 = [(DIHandle *)v5 familyName];
        v24 = [familyName2 isEqualToString:familyName3];

        if ((v24 & 1) == 0)
        {
          goto LABEL_31;
        }
      }

      else
      {
        givenName4 = [(DIHandle *)v5 familyName];
        if (givenName4)
        {
          goto LABEL_30;
        }

        familyName4 = [(DIHandle *)self familyName];

        if (familyName4)
        {
          goto LABEL_31;
        }
      }

      displayName = [(DIHandle *)v5 displayName];
      if (displayName && (v27 = displayName, [(DIHandle *)self displayName], v28 = objc_claimAutoreleasedReturnValue(), v28, v27, v28))
      {
        displayName2 = [(DIHandle *)self displayName];
        displayName3 = [(DIHandle *)v5 displayName];
        v31 = [displayName2 isEqualToString:displayName3];

        if ((v31 & 1) == 0)
        {
          goto LABEL_31;
        }
      }

      else
      {
        givenName4 = [(DIHandle *)v5 displayName];
        if (givenName4)
        {
          goto LABEL_30;
        }

        displayName4 = [(DIHandle *)self displayName];

        if (displayName4)
        {
          goto LABEL_31;
        }
      }

      imageData = [(DIHandle *)v5 imageData];
      if (imageData)
      {
        v34 = imageData;
        imageData2 = [(DIHandle *)self imageData];

        if (imageData2)
        {
          imageData3 = [(DIHandle *)self imageData];
          imageData4 = [(DIHandle *)v5 imageData];
          v38 = [imageData3 isEqualToData:imageData4];

          if (v38)
          {
            goto LABEL_35;
          }

          goto LABEL_31;
        }
      }

      givenName4 = [(DIHandle *)v5 imageData];
      if (!givenName4)
      {
        imageData5 = [(DIHandle *)self imageData];

        if (!imageData5)
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

+ (id)stringForHandleType:(unint64_t)type
{
  if (type > 2)
  {
    v5 = @"Unknown";
  }

  else
  {
    v5 = off_278FB9148[type];
  }

  return [MEMORY[0x277CCACA8] stringWithFormat:@"(%lu) %@", type, v5, v3, v4];
}

- (unint64_t)hash
{
  type = [(DIHandle *)self type];
  value = [(DIHandle *)self value];
  v5 = [value hash];

  return v5 ^ type;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  type = [(DIHandle *)self type];
  v5 = [DIHandle stringForHandleType:[(DIHandle *)self type]];
  value = [(DIHandle *)self value];
  givenName = [(DIHandle *)self givenName];
  familyName = [(DIHandle *)self familyName];
  displayName = [(DIHandle *)self displayName];
  imageData = [(DIHandle *)self imageData];
  v11 = [v3 stringWithFormat:@"Type = %lu (%@), Value = %@, GivenName = %@, FamilyName = %@, DisplayName = %@, Image = %@", type, v5, value, givenName, familyName, displayName, imageData];

  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x277CCABB0];
  coderCopy = coder;
  v6 = [v4 numberWithUnsignedInteger:{-[DIHandle type](self, "type")}];
  [coderCopy encodeObject:v6 forKey:@"Type"];

  value = [(DIHandle *)self value];
  [coderCopy encodeObject:value forKey:@"Value"];

  givenName = [(DIHandle *)self givenName];
  [coderCopy encodeObject:givenName forKey:@"GivenName"];

  familyName = [(DIHandle *)self familyName];
  [coderCopy encodeObject:familyName forKey:@"FamilyName"];

  displayName = [(DIHandle *)self displayName];
  [coderCopy encodeObject:displayName forKey:@"DisplayName"];

  imageData = [(DIHandle *)self imageData];
  [coderCopy encodeObject:imageData forKey:@"ImageData"];
}

- (DIHandle)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(DIHandle *)self init];
  if (!v5)
  {
LABEL_13:
    v7 = v5;
    goto LABEL_14;
  }

  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Type"];
  v7 = v6;
  if (v6)
  {
    v5->_type = [(DIHandle *)v6 unsignedIntegerValue];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Value"];
    if (!v8)
    {

      v7 = 0;
      goto LABEL_14;
    }

    v9 = v8;
    objc_storeStrong(&v5->_value, v8);
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"GivenName"];
    if (v10)
    {
      objc_storeStrong(&v5->_givenName, v10);
    }

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"FamilyName"];
    if (v11)
    {
      objc_storeStrong(&v5->_familyName, v11);
    }

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DisplayName"];
    if (v12)
    {
      objc_storeStrong(&v5->_displayName, v12);
    }

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ImageData"];
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