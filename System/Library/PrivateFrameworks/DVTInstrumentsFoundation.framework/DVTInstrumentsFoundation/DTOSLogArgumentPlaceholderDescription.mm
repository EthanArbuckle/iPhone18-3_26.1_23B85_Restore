@interface DTOSLogArgumentPlaceholderDescription
- (DTOSLogArgumentPlaceholderDescription)initWithPlaceholderToken:(id)token;
@end

@implementation DTOSLogArgumentPlaceholderDescription

- (DTOSLogArgumentPlaceholderDescription)initWithPlaceholderToken:(id)token
{
  tokenCopy = token;
  v31.receiver = self;
  v31.super_class = DTOSLogArgumentPlaceholderDescription;
  v6 = [(DTOSLogArgumentPlaceholderDescription *)&v31 init];
  objc_storeStrong(&v6->_placeholderToken, token);
  v7 = [(NSString *)v6->_placeholderToken componentsSeparatedByString:@":"];
  if (![v7 count])
  {
    v6->_placeholderKind = 0;
    placeholderKey = v6->_placeholderKey;
    v6->_placeholderKey = &stru_285A19CB8;

    v14 = tokenCopy;
    goto LABEL_13;
  }

  if ([v7 count] != 1)
  {
    if ([v7 count] == 2)
    {
      v10 = [v7 objectAtIndexedSubscript:0];
      if ([v10 isEqualToString:@"xcode"] && (objc_msgSend(v7, "objectAtIndexedSubscript:", 1), v15 = objc_claimAutoreleasedReturnValue(), v16 = XREngineeringTypeIDForMnemonic(), v15, v16))
      {
        v6->_placeholderKind = 1;
        objc_storeStrong(&v6->_placeholderKey, v10);
        v17 = [v7 objectAtIndexedSubscript:1];
      }

      else
      {
        if ([v10 isEqualToString:@"name"])
        {
          v25 = 2;
        }

        else if ([v10 isEqualToString:@"signpost.description"])
        {
          v28 = [v7 objectAtIndexedSubscript:1];
          if ([v28 isEqualToString:@"begin_time"])
          {
            v25 = 3;
          }

          else if ([v28 isEqualToString:@"end_time"])
          {
            v25 = 4;
          }

          else if ([v28 isEqualToString:@"event_time"])
          {
            v25 = 5;
          }

          else
          {
            v25 = 0;
          }
        }

        else
        {
          v25 = 0;
        }

        v6->_placeholderKind = v25;
        objc_storeStrong(&v6->_placeholderKey, v10);
        v17 = [v7 objectAtIndexedSubscript:1];
      }

      placeholderObjectValue = v6->_placeholderObjectValue;
      v6->_placeholderObjectValue = v17;

      goto LABEL_34;
    }

    v6->_placeholderKind = 0;
    v18 = [v7 objectAtIndexedSubscript:0];
    v19 = v6->_placeholderKey;
    v6->_placeholderKey = v18;

    v14 = [v7 objectAtIndexedSubscript:1];
LABEL_13:
    v10 = v6->_placeholderObjectValue;
    v6->_placeholderObjectValue = v14;
    goto LABEL_34;
  }

  v8 = v6->_placeholderKey;
  v6->_placeholderKey = @"builtin";

  v9 = [v7 objectAtIndexedSubscript:0];
  if (qword_27EE842B0 != -1)
  {
    sub_24802D004();
  }

  v10 = [qword_27EE842A8 objectForKeyedSubscript:v9];

  if (v10)
  {
    v6->_placeholderKind = 1;
    v11 = v10;
    v12 = v6->_placeholderObjectValue;
    v6->_placeholderObjectValue = v11;
  }

  else
  {
    v12 = [(NSString *)v6->_placeholderToken componentsSeparatedByString:@"="];
    if ([v12 count] == 2 && (objc_msgSend(v12, "objectAtIndexedSubscript:", 0), v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v20, "isEqualToString:", @"name"), v20, (v21 & 1) != 0))
    {
      v22 = 1;
      v23 = 2;
      v24 = v12;
    }

    else
    {
      v23 = 0;
      v22 = 0;
      v24 = v7;
    }

    v6->_placeholderKind = v23;
    v26 = [v24 objectAtIndexedSubscript:v22];
    v27 = v6->_placeholderObjectValue;
    v6->_placeholderObjectValue = v26;
  }

LABEL_34:
  return v6;
}

@end