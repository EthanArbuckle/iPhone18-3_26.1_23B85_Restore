@interface FCModifyTagSettingsCommand
- (BOOL)mergeLocalRecord:(id)a3 withRemoteRecord:(id)a4;
@end

@implementation FCModifyTagSettingsCommand

- (BOOL)mergeLocalRecord:(id)a3 withRemoteRecord:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 objectForKeyedSubscript:@"tagID"];
  v8 = [v6 objectForKeyedSubscript:@"tagID"];
  if ([v7 isEqualToString:v8])
  {
    v38 = v7;
    v9 = [v5 objectForKeyedSubscript:@"fontMultiplier"];
    v10 = [v6 objectForKeyedSubscript:@"fontMultiplier"];
    v11 = [v9 intValue];
    v36 = v10;
    v12 = [v10 intValue];
    v13 = v11 != v12;
    if (v11 != v12)
    {
      [v6 setObject:v9 forKeyedSubscript:@"fontMultiplier"];
    }

    v37 = v9;
    v14 = [v5 objectForKeyedSubscript:@"fontMultiplierMacOS"];
    v15 = [v6 objectForKeyedSubscript:@"fontMultiplierMacOS"];
    v16 = [v14 intValue];
    v34 = v15;
    if (v16 != [v15 intValue])
    {
      [v6 setObject:v14 forKeyedSubscript:@"fontMultiplierMacOS"];
      v13 = 1;
    }

    v35 = v14;
    v17 = [v5 objectForKeyedSubscript:@"contentScale"];
    v18 = [v6 objectForKeyedSubscript:@"contentScale"];
    v19 = [v17 intValue];
    if (v19 != [v18 intValue])
    {
      [v6 setObject:v17 forKeyedSubscript:@"contentScale"];
      v13 = 1;
    }

    v20 = [v5 objectForKeyedSubscript:@"contentScaleMacOS"];
    v21 = [v6 objectForKeyedSubscript:@"contentScaleMacOS"];
    v22 = [v20 intValue];
    if (v22 != [v21 intValue])
    {
      [v6 setObject:v20 forKeyedSubscript:@"contentScaleMacOS"];
      v13 = 1;
    }

    v7 = v38;
  }

  else
  {
    v13 = 0;
  }

  v23 = [v5 objectForKeyedSubscript:@"accessToken"];
  v24 = [v6 objectForKeyedSubscript:@"accessToken"];
  if ([v7 isEqualToString:v8])
  {
    if (v23)
    {
      v25 = 1;
    }

    else
    {
      v25 = v24 == 0;
    }

    if (v25)
    {
      if (!v23 || ([v23 isEqualToString:v24] & 1) != 0)
      {
LABEL_22:
        v28 = [v5 objectForKeyedSubscript:@"webAccessOptIn"];
        v29 = [v6 objectForKeyedSubscript:@"webAccessOptIn"];
        v30 = v29;
        if (v28)
        {
          v31 = v6;
          v32 = v28;
        }

        else
        {
          if (!v29)
          {
LABEL_27:

            goto LABEL_28;
          }

          v31 = v6;
          v32 = 0;
        }

        [v31 setObject:v32 forKeyedSubscript:@"webAccessOptIn"];
        v13 = 1;
        goto LABEL_27;
      }

      v26 = v6;
      v27 = v23;
    }

    else
    {
      v26 = v6;
      v27 = 0;
    }

    [v26 setObject:v27 forKeyedSubscript:@"accessToken"];
    v13 = 1;
    goto LABEL_22;
  }

LABEL_28:

  return v13;
}

@end