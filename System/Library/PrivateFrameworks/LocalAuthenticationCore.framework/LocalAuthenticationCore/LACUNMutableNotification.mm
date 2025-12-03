@interface LACUNMutableNotification
- (BOOL)isEqual:(id)equal;
- (NSString)description;
@end

@implementation LACUNMutableNotification

- (NSString)description
{
  v37[12] = *MEMORY[0x1E69E9840];
  v32 = MEMORY[0x1E696AEC0];
  v31 = objc_opt_class();
  v36[0] = @"identifier";
  identifier = [(LACUNMutableNotification *)self identifier];
  v4 = identifier;
  if (!identifier)
  {
    identifier = [MEMORY[0x1E695DFB0] null];
  }

  v35 = v4;
  v28 = identifier;
  v37[0] = identifier;
  v36[1] = @"categoryIdentifier";
  categoryIdentifier = [(LACUNMutableNotification *)self categoryIdentifier];
  v6 = categoryIdentifier;
  if (!categoryIdentifier)
  {
    categoryIdentifier = [MEMORY[0x1E695DFB0] null];
  }

  v27 = categoryIdentifier;
  v37[1] = categoryIdentifier;
  v36[2] = @"shouldDisplayActionsInline";
  v33 = [MEMORY[0x1E696AD98] numberWithBool:{-[LACUNMutableNotification shouldDisplayActionsInline](self, "shouldDisplayActionsInline")}];
  v37[2] = v33;
  v36[3] = @"title";
  title = [(LACUNMutableNotification *)self title];
  v8 = title;
  if (!title)
  {
    title = [MEMORY[0x1E695DFB0] null];
  }

  v26 = title;
  v37[3] = title;
  v36[4] = @"isTitleLocalized";
  v30 = [MEMORY[0x1E696AD98] numberWithBool:{-[LACUNMutableNotification isTitleLocalized](self, "isTitleLocalized")}];
  v37[4] = v30;
  v36[5] = @"body";
  body = [(LACUNMutableNotification *)self body];
  v10 = body;
  if (!body)
  {
    body = [MEMORY[0x1E695DFB0] null];
  }

  v34 = v6;
  v25 = body;
  v37[5] = body;
  v36[6] = @"isBodyLocalized";
  v29 = [MEMORY[0x1E696AD98] numberWithBool:{-[LACUNMutableNotification isBodyLocalized](self, "isBodyLocalized")}];
  v37[6] = v29;
  v36[7] = @"systemIconName";
  systemIconName = [(LACUNMutableNotification *)self systemIconName];
  v12 = systemIconName;
  if (!systemIconName)
  {
    systemIconName = [MEMORY[0x1E695DFB0] null];
  }

  v24 = systemIconName;
  v37[7] = systemIconName;
  v36[8] = @"defaultActionURL";
  defaultActionURL = [(LACUNMutableNotification *)self defaultActionURL];
  null = defaultActionURL;
  if (!defaultActionURL)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v37[8] = null;
  v36[9] = @"isTimeSensitive";
  v15 = [MEMORY[0x1E696AD98] numberWithBool:{-[LACUNMutableNotification isTimeSensitive](self, "isTimeSensitive")}];
  v37[9] = v15;
  v36[10] = @"withdrawInterval";
  v16 = MEMORY[0x1E696AD98];
  [(LACUNMutableNotification *)self withdrawInterval];
  v17 = [v16 numberWithDouble:?];
  v37[10] = v17;
  v36[11] = @"triggerInterval";
  v18 = MEMORY[0x1E696AD98];
  [(LACUNMutableNotification *)self triggerInterval];
  v19 = [v18 numberWithDouble:?];
  v37[11] = v19;
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:v36 count:12];
  v21 = [v32 stringWithFormat:@"<%@ %p %@>", v31, self, v20];;

  if (!defaultActionURL)
  {
  }

  if (!v12)
  {
  }

  if (!v10)
  {
  }

  if (!v8)
  {
  }

  if (!v34)
  {
  }

  if (!v35)
  {
  }

  v22 = *MEMORY[0x1E69E9840];

  return v21;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy conformsToProtocol:&unk_1F269E9F8])
  {
    v5 = equalCopy;
    identifier = [(LACUNMutableNotification *)self identifier];
    identifier2 = [v5 identifier];
    v8 = identifier2;
    if (identifier == identifier2)
    {
    }

    else
    {
      identifier3 = [(LACUNMutableNotification *)self identifier];
      identifier4 = [v5 identifier];
      v11 = [identifier3 isEqualToString:identifier4];

      if (!v11)
      {
        goto LABEL_32;
      }
    }

    categoryIdentifier = [(LACUNMutableNotification *)self categoryIdentifier];
    categoryIdentifier2 = [v5 categoryIdentifier];
    v15 = categoryIdentifier2;
    if (categoryIdentifier == categoryIdentifier2)
    {
    }

    else
    {
      categoryIdentifier3 = [(LACUNMutableNotification *)self categoryIdentifier];
      categoryIdentifier4 = [v5 categoryIdentifier];
      v18 = [categoryIdentifier3 isEqualToString:categoryIdentifier4];

      if (!v18)
      {
        goto LABEL_32;
      }
    }

    shouldDisplayActionsInline = [(LACUNMutableNotification *)self shouldDisplayActionsInline];
    if (shouldDisplayActionsInline == [v5 shouldDisplayActionsInline])
    {
      title = [(LACUNMutableNotification *)self title];
      title2 = [v5 title];
      v22 = title2;
      if (title == title2)
      {
      }

      else
      {
        title3 = [(LACUNMutableNotification *)self title];
        title4 = [v5 title];
        v25 = [title3 isEqualToString:title4];

        if (!v25)
        {
          goto LABEL_32;
        }
      }

      body = [(LACUNMutableNotification *)self body];
      body2 = [v5 body];
      v28 = body2;
      if (body == body2)
      {
      }

      else
      {
        body3 = [(LACUNMutableNotification *)self body];
        body4 = [v5 body];
        v31 = [body3 isEqualToString:body4];

        if (!v31)
        {
          goto LABEL_32;
        }
      }

      systemIconName = [(LACUNMutableNotification *)self systemIconName];
      systemIconName2 = [v5 systemIconName];
      v34 = systemIconName2;
      if (systemIconName == systemIconName2)
      {
      }

      else
      {
        systemIconName3 = [(LACUNMutableNotification *)self systemIconName];
        systemIconName4 = [v5 systemIconName];
        v37 = [systemIconName3 isEqualToString:systemIconName4];

        if (!v37)
        {
          goto LABEL_32;
        }
      }

      defaultActionURL = [(LACUNMutableNotification *)self defaultActionURL];
      defaultActionURL2 = [v5 defaultActionURL];
      v40 = defaultActionURL2;
      if (defaultActionURL == defaultActionURL2)
      {
      }

      else
      {
        defaultActionURL3 = [(LACUNMutableNotification *)self defaultActionURL];
        defaultActionURL4 = [v5 defaultActionURL];
        v43 = [defaultActionURL3 isEqual:defaultActionURL4];

        if (!v43)
        {
          goto LABEL_32;
        }
      }

      isTitleLocalized = [(LACUNMutableNotification *)self isTitleLocalized];
      if (isTitleLocalized == [v5 isTitleLocalized])
      {
        isBodyLocalized = [(LACUNMutableNotification *)self isBodyLocalized];
        if (isBodyLocalized == [v5 isBodyLocalized])
        {
          isTimeSensitive = [(LACUNMutableNotification *)self isTimeSensitive];
          if (isTimeSensitive == [v5 isTimeSensitive])
          {
            [(LACUNMutableNotification *)self withdrawInterval];
            v48 = v47;
            [v5 withdrawInterval];
            if (v48 == v49)
            {
              [(LACUNMutableNotification *)self triggerInterval];
              v52 = v51;
              [v5 triggerInterval];
              v12 = v52 == v53;
              goto LABEL_33;
            }
          }
        }
      }
    }

LABEL_32:
    v12 = 0;
LABEL_33:

    goto LABEL_34;
  }

  v12 = 0;
LABEL_34:

  return v12;
}

@end