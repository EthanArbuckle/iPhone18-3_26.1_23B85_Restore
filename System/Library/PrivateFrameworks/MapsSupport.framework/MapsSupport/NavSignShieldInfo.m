@interface NavSignShieldInfo
- (BOOL)isEqual:(id)a3;
- (NavSignShieldInfo)initWithShieldID:(int)a3 shieldStringID:(id)a4 shieldText:(id)a5;
- (id)_car_shieldImageWithSize:(int64_t)a3 scale:(double)a4 useAdaptiveStyling:(BOOL)a5 nightMode:(BOOL)a6;
- (id)description;
- (id)shieldImageWithSize:(int64_t)a3 scale:(double)a4 idiom:(int64_t)a5;
- (unint64_t)hash;
@end

@implementation NavSignShieldInfo

- (NavSignShieldInfo)initWithShieldID:(int)a3 shieldStringID:(id)a4 shieldText:(id)a5
{
  v8 = a4;
  v9 = a5;
  if (a3 || v8)
  {
    v18.receiver = self;
    v18.super_class = NavSignShieldInfo;
    v11 = [(NavSignShieldInfo *)&v18 init];
    v12 = v11;
    if (v11)
    {
      v11->_shieldID = a3;
      v13 = [v8 copy];
      shieldStringID = v12->_shieldStringID;
      v12->_shieldStringID = v13;

      v15 = [v9 copy];
      shieldText = v12->_shieldText;
      v12->_shieldText = v15;
    }

    self = v12;
    v10 = self;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [v5 shieldID];
      if (v6 == [(NavSignShieldInfo *)self shieldID])
      {
        v7 = [(NavSignShieldInfo *)self shieldStringID];
        v8 = [v7 length];
        v9 = [v5 shieldStringID];
        v10 = v9;
        if (v8)
        {
          v11 = [(NavSignShieldInfo *)self shieldStringID];
          v12 = [v10 isEqualToString:v11];

          if (v12)
          {
LABEL_6:
            v13 = [(NavSignShieldInfo *)self shieldText];
            v14 = [v13 length];
            v15 = [v5 shieldText];
            v16 = v15;
            if (v14)
            {
              v17 = [(NavSignShieldInfo *)self shieldText];
              v18 = [v16 isEqualToString:v17];
            }

            else
            {
              v18 = [v15 length] == 0;
            }

            goto LABEL_13;
          }
        }

        else
        {
          v19 = [v9 length];

          if (!v19)
          {
            goto LABEL_6;
          }
        }
      }

      v18 = 0;
LABEL_13:

      goto LABEL_14;
    }
  }

  v18 = 0;
LABEL_14:

  return v18;
}

- (id)description
{
  v3 = [(NavSignShieldInfo *)self shieldID];
  v4 = [(NavSignShieldInfo *)self shieldStringID];
  v5 = [(NavSignShieldInfo *)self shieldText];
  v6 = [NSString stringWithFormat:@"shieldID: [%d] strID: [%@] text: [%@]", v3, v4, v5];

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NavSignShieldInfo *)self shieldID];
  v4 = [(NavSignShieldInfo *)self shieldID];
  if (v3 >= 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = -v4;
  }

  v6 = v5;
  v7 = [(NavSignShieldInfo *)self shieldStringID];
  v8 = [v7 hash];
  v9 = [(NavSignShieldInfo *)self shieldText];
  v10 = v8 ^ [v9 hash];

  return v10 ^ v6;
}

- (id)_car_shieldImageWithSize:(int64_t)a3 scale:(double)a4 useAdaptiveStyling:(BOOL)a5 nightMode:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  if ([(NavSignShieldInfo *)self shieldID])
  {
    v11 = [[VKIconModifiers alloc] initNavigationModifiers];
    [v11 setNewInterfaceEnabled:1];
    v12 = [(NavSignShieldInfo *)self shieldText];
    [v11 setText:v12];

    if (v6)
    {
      v13 = +[VKIconManager sharedManager];
      [v11 setVariant:{objc_msgSend(v13, "darkVariant")}];
    }

    v14 = [(NavSignShieldInfo *)self shieldID];
    if (v7)
    {
      v15 = 6;
    }

    else
    {
      v15 = 7;
    }

    v16 = v15 | 0x4BAF0;
    if (v14 == 310000)
    {
      v17 = v16;
    }

    else
    {
      v17 = v14;
    }

    v18 = +[VKIconManager sharedManager];
    v19 = [(NavSignShieldInfo *)self shieldText];
    *&v20 = a4;
    v21 = [v18 imageForDataID:v17 text:v19 contentScale:a3 sizeGroup:v11 modifiers:v20];
  }

  else
  {
    v21 = [(NavSignShieldInfo *)self shieldImageWithSize:a3 scale:1 idiom:a4];
  }

  return v21;
}

- (id)shieldImageWithSize:(int64_t)a3 scale:(double)a4 idiom:(int64_t)a5
{
  if ([(NavSignShieldInfo *)self shieldID:a3]|| ([(NavSignShieldInfo *)self shieldStringID], v8 = objc_claimAutoreleasedReturnValue(), v8, v8))
  {
    v9 = objc_alloc_init(VKIconModifiers);
    v10 = [(NavSignShieldInfo *)self shieldText];
    [v9 setText:v10];

    v11 = [(NavSignShieldInfo *)self shieldID];
    v12 = +[VKIconManager sharedManager];
    if (v11)
    {
      v13 = [(NavSignShieldInfo *)self shieldID];
      v14 = [(NavSignShieldInfo *)self shieldText];
      *&v15 = a4;
      [v12 imageForDataID:v13 text:v14 contentScale:a3 sizeGroup:v9 modifiers:v15];
    }

    else
    {
      v14 = [(NavSignShieldInfo *)self shieldStringID];
      *&v16 = a4;
      [v12 imageForName:v14 contentScale:a3 sizeGroup:v9 modifiers:v16];
    }
    v17 = ;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

@end