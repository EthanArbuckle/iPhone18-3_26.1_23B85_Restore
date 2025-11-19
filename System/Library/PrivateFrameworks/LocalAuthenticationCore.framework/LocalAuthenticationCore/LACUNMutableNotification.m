@interface LACUNMutableNotification
- (BOOL)isEqual:(id)a3;
- (NSString)description;
@end

@implementation LACUNMutableNotification

- (NSString)description
{
  v37[12] = *MEMORY[0x1E69E9840];
  v32 = MEMORY[0x1E696AEC0];
  v31 = objc_opt_class();
  v36[0] = @"identifier";
  v3 = [(LACUNMutableNotification *)self identifier];
  v4 = v3;
  if (!v3)
  {
    v3 = [MEMORY[0x1E695DFB0] null];
  }

  v35 = v4;
  v28 = v3;
  v37[0] = v3;
  v36[1] = @"categoryIdentifier";
  v5 = [(LACUNMutableNotification *)self categoryIdentifier];
  v6 = v5;
  if (!v5)
  {
    v5 = [MEMORY[0x1E695DFB0] null];
  }

  v27 = v5;
  v37[1] = v5;
  v36[2] = @"shouldDisplayActionsInline";
  v33 = [MEMORY[0x1E696AD98] numberWithBool:{-[LACUNMutableNotification shouldDisplayActionsInline](self, "shouldDisplayActionsInline")}];
  v37[2] = v33;
  v36[3] = @"title";
  v7 = [(LACUNMutableNotification *)self title];
  v8 = v7;
  if (!v7)
  {
    v7 = [MEMORY[0x1E695DFB0] null];
  }

  v26 = v7;
  v37[3] = v7;
  v36[4] = @"isTitleLocalized";
  v30 = [MEMORY[0x1E696AD98] numberWithBool:{-[LACUNMutableNotification isTitleLocalized](self, "isTitleLocalized")}];
  v37[4] = v30;
  v36[5] = @"body";
  v9 = [(LACUNMutableNotification *)self body];
  v10 = v9;
  if (!v9)
  {
    v9 = [MEMORY[0x1E695DFB0] null];
  }

  v34 = v6;
  v25 = v9;
  v37[5] = v9;
  v36[6] = @"isBodyLocalized";
  v29 = [MEMORY[0x1E696AD98] numberWithBool:{-[LACUNMutableNotification isBodyLocalized](self, "isBodyLocalized")}];
  v37[6] = v29;
  v36[7] = @"systemIconName";
  v11 = [(LACUNMutableNotification *)self systemIconName];
  v12 = v11;
  if (!v11)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v24 = v11;
  v37[7] = v11;
  v36[8] = @"defaultActionURL";
  v13 = [(LACUNMutableNotification *)self defaultActionURL];
  v14 = v13;
  if (!v13)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v37[8] = v14;
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

  if (!v13)
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 conformsToProtocol:&unk_1F269E9F8])
  {
    v5 = v4;
    v6 = [(LACUNMutableNotification *)self identifier];
    v7 = [v5 identifier];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(LACUNMutableNotification *)self identifier];
      v10 = [v5 identifier];
      v11 = [v9 isEqualToString:v10];

      if (!v11)
      {
        goto LABEL_32;
      }
    }

    v13 = [(LACUNMutableNotification *)self categoryIdentifier];
    v14 = [v5 categoryIdentifier];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(LACUNMutableNotification *)self categoryIdentifier];
      v17 = [v5 categoryIdentifier];
      v18 = [v16 isEqualToString:v17];

      if (!v18)
      {
        goto LABEL_32;
      }
    }

    v19 = [(LACUNMutableNotification *)self shouldDisplayActionsInline];
    if (v19 == [v5 shouldDisplayActionsInline])
    {
      v20 = [(LACUNMutableNotification *)self title];
      v21 = [v5 title];
      v22 = v21;
      if (v20 == v21)
      {
      }

      else
      {
        v23 = [(LACUNMutableNotification *)self title];
        v24 = [v5 title];
        v25 = [v23 isEqualToString:v24];

        if (!v25)
        {
          goto LABEL_32;
        }
      }

      v26 = [(LACUNMutableNotification *)self body];
      v27 = [v5 body];
      v28 = v27;
      if (v26 == v27)
      {
      }

      else
      {
        v29 = [(LACUNMutableNotification *)self body];
        v30 = [v5 body];
        v31 = [v29 isEqualToString:v30];

        if (!v31)
        {
          goto LABEL_32;
        }
      }

      v32 = [(LACUNMutableNotification *)self systemIconName];
      v33 = [v5 systemIconName];
      v34 = v33;
      if (v32 == v33)
      {
      }

      else
      {
        v35 = [(LACUNMutableNotification *)self systemIconName];
        v36 = [v5 systemIconName];
        v37 = [v35 isEqualToString:v36];

        if (!v37)
        {
          goto LABEL_32;
        }
      }

      v38 = [(LACUNMutableNotification *)self defaultActionURL];
      v39 = [v5 defaultActionURL];
      v40 = v39;
      if (v38 == v39)
      {
      }

      else
      {
        v41 = [(LACUNMutableNotification *)self defaultActionURL];
        v42 = [v5 defaultActionURL];
        v43 = [v41 isEqual:v42];

        if (!v43)
        {
          goto LABEL_32;
        }
      }

      v44 = [(LACUNMutableNotification *)self isTitleLocalized];
      if (v44 == [v5 isTitleLocalized])
      {
        v45 = [(LACUNMutableNotification *)self isBodyLocalized];
        if (v45 == [v5 isBodyLocalized])
        {
          v46 = [(LACUNMutableNotification *)self isTimeSensitive];
          if (v46 == [v5 isTimeSensitive])
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