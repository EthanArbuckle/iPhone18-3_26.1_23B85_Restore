@interface LNIntentsValueType(CATSupport)
- (__CFString)cat_dialogType;
- (id)cat_value:()CATSupport;
@end

@implementation LNIntentsValueType(CATSupport)

- (id)cat_value:()CATSupport
{
  v37[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
  typeIdentifier = [self typeIdentifier];
  lastPathComponent = 0;
  if (typeIdentifier <= 7)
  {
    if (typeIdentifier != 3)
    {
      if (typeIdentifier != 4)
      {
        if (typeIdentifier != 7)
        {
          goto LABEL_56;
        }

        value = [v4 value];
        if (value)
        {
          goto LABEL_21;
        }

LABEL_24:
        v12 = 0;
LABEL_25:
        v13 = v12;

        title = [v13 title];
LABEL_44:
        lastPathComponent = title;

        goto LABEL_56;
      }

      value = [v4 value];
      if (!value)
      {
        goto LABEL_24;
      }

LABEL_21:
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = value;
      }

      else
      {
        v12 = 0;
      }

      goto LABEL_25;
    }

    v36[0] = @"familyName";
    value2 = [v4 value];
    if (value2)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = value2;
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }

    v17 = v11;

    nameComponents = [v17 nameComponents];

    familyName = [nameComponents familyName];
    v37[0] = familyName;
    v36[1] = @"givenName";
    value3 = [v4 value];
    if (value3)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v21 = value3;
      }

      else
      {
        v21 = 0;
      }
    }

    else
    {
      v21 = 0;
    }

    v22 = v21;

    nameComponents2 = [v22 nameComponents];

    givenName = [nameComponents2 givenName];
    v37[1] = givenName;
    v36[2] = @"nickname";
    value4 = [v4 value];
    if (value4)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v26 = value4;
      }

      else
      {
        v26 = 0;
      }
    }

    else
    {
      v26 = 0;
    }

    v27 = v26;

    nameComponents3 = [v27 nameComponents];

    nickname = [nameComponents3 nickname];
    v37[2] = nickname;
    lastPathComponent = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:v36 count:3];

    goto LABEL_54;
  }

  if (typeIdentifier == 8)
  {
    value = [v4 value];
    if (!value)
    {
      goto LABEL_24;
    }

    goto LABEL_21;
  }

  if (typeIdentifier != 12)
  {
    if (typeIdentifier != 13)
    {
      goto LABEL_56;
    }

    value5 = [v4 value];
    if (value5)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = value5;
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }

    v13 = v9;

    title = [v13 name];
    goto LABEL_44;
  }

  value6 = [v4 value];
  if (value6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = value6;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  v30 = v16;

  nameComponents = [v30 filename];

  if (!nameComponents)
  {
    value7 = [v4 value];
    if (value7)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v32 = value7;
      }

      else
      {
        v32 = 0;
      }
    }

    else
    {
      v32 = 0;
    }

    v33 = v32;

    familyName = [v33 fileURL];

    lastPathComponent = [familyName lastPathComponent];
LABEL_54:

    goto LABEL_55;
  }

  lastPathComponent = nameComponents;
LABEL_55:

LABEL_56:
  v34 = *MEMORY[0x1E69E9840];

  return lastPathComponent;
}

- (__CFString)cat_dialogType
{
  typeIdentifier = [self typeIdentifier];
  if (typeIdentifier > 0xE)
  {
    return @"dialog.Person";
  }

  else
  {
    return off_1E74B1718[typeIdentifier];
  }
}

@end