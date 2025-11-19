@interface LNIntentsValueType(CATSupport)
- (__CFString)cat_dialogType;
- (id)cat_value:()CATSupport;
@end

@implementation LNIntentsValueType(CATSupport)

- (id)cat_value:()CATSupport
{
  v37[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [a1 typeIdentifier];
  v6 = 0;
  if (v5 <= 7)
  {
    if (v5 != 3)
    {
      if (v5 != 4)
      {
        if (v5 != 7)
        {
          goto LABEL_56;
        }

        v7 = [v4 value];
        if (v7)
        {
          goto LABEL_21;
        }

LABEL_24:
        v12 = 0;
LABEL_25:
        v13 = v12;

        v14 = [v13 title];
LABEL_44:
        v6 = v14;

        goto LABEL_56;
      }

      v7 = [v4 value];
      if (!v7)
      {
        goto LABEL_24;
      }

LABEL_21:
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = v7;
      }

      else
      {
        v12 = 0;
      }

      goto LABEL_25;
    }

    v36[0] = @"familyName";
    v10 = [v4 value];
    if (v10)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = v10;
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

    v18 = [v17 nameComponents];

    v19 = [v18 familyName];
    v37[0] = v19;
    v36[1] = @"givenName";
    v20 = [v4 value];
    if (v20)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v21 = v20;
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

    v23 = [v22 nameComponents];

    v24 = [v23 givenName];
    v37[1] = v24;
    v36[2] = @"nickname";
    v25 = [v4 value];
    if (v25)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v26 = v25;
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

    v28 = [v27 nameComponents];

    v29 = [v28 nickname];
    v37[2] = v29;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:v36 count:3];

    goto LABEL_54;
  }

  if (v5 == 8)
  {
    v7 = [v4 value];
    if (!v7)
    {
      goto LABEL_24;
    }

    goto LABEL_21;
  }

  if (v5 != 12)
  {
    if (v5 != 13)
    {
      goto LABEL_56;
    }

    v8 = [v4 value];
    if (v8)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = v8;
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

    v14 = [v13 name];
    goto LABEL_44;
  }

  v15 = [v4 value];
  if (v15)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = v15;
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

  v18 = [v30 filename];

  if (!v18)
  {
    v31 = [v4 value];
    if (v31)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v32 = v31;
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

    v19 = [v33 fileURL];

    v6 = [v19 lastPathComponent];
LABEL_54:

    goto LABEL_55;
  }

  v6 = v18;
LABEL_55:

LABEL_56:
  v34 = *MEMORY[0x1E69E9840];

  return v6;
}

- (__CFString)cat_dialogType
{
  v1 = [a1 typeIdentifier];
  if (v1 > 0xE)
  {
    return @"dialog.Person";
  }

  else
  {
    return off_1E74B1718[v1];
  }
}

@end