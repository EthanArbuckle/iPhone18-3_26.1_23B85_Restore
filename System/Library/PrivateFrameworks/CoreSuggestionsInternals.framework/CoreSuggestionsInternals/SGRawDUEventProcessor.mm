@interface SGRawDUEventProcessor
- (id)getSchemaCreatorForEvent:(id)event;
- (id)getSchemaCreatorForEventString:(id)string;
@end

@implementation SGRawDUEventProcessor

- (id)getSchemaCreatorForEventString:(id)string
{
  stringCopy = string;
  v4 = stringCopy;
  if (stringCopy)
  {
    if ([stringCopy isEqualToString:*MEMORY[0x277D06810]] & 1) != 0 || (objc_msgSend(v4, "lowercaseString"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "containsString:", @"appointment"), v5, (v6))
    {
      v7 = off_278948878;
LABEL_5:
      v8 = *v7;
      v9 = objc_opt_new();
      goto LABEL_30;
    }

    if ([v4 isEqualToString:*MEMORY[0x277D06818]] & 1) != 0 || (objc_msgSend(v4, "lowercaseString"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "containsString:", @"car"), v10, (v11))
    {
      v7 = off_2789488D8;
      goto LABEL_5;
    }

    if ([v4 isEqualToString:*MEMORY[0x277D06820]] & 1) != 0 || (objc_msgSend(v4, "lowercaseString"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "containsString:", @"flight"), v12, (v13))
    {
      v7 = off_278948B20;
      goto LABEL_5;
    }

    if ([v4 isEqualToString:*MEMORY[0x277D06830]] & 1) != 0 || (objc_msgSend(v4, "lowercaseString"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "containsString:", @"hotel"), v14, (v15))
    {
      v7 = off_278948B58;
      goto LABEL_5;
    }

    if ([v4 isEqualToString:*MEMORY[0x277D06840]] & 1) != 0 || (objc_msgSend(v4, "lowercaseString"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "containsString:", @"social"), v16, (v17))
    {
      v7 = off_278948B90;
      goto LABEL_5;
    }

    if ([v4 isEqualToString:*MEMORY[0x277D06848]] & 1) != 0 || (objc_msgSend(v4, "lowercaseString"), v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "containsString:", @"food"), v18, (v19))
    {
      v7 = off_278949068;
      goto LABEL_5;
    }

    if ([v4 isEqualToString:*MEMORY[0x277D06858]])
    {
LABEL_25:
      v7 = off_278949210;
      goto LABEL_5;
    }

    lowercaseString = [v4 lowercaseString];
    if ([lowercaseString isEqualToString:@"ticket"])
    {

      goto LABEL_25;
    }

    lowercaseString2 = [v4 lowercaseString];
    v22 = [lowercaseString2 isEqualToString:@"movie"];

    if (v22)
    {
      goto LABEL_25;
    }

    if (([v4 isEqualToString:*MEMORY[0x277D06860]] & 1) != 0 || (objc_msgSend(v4, "lowercaseString"), v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(&unk_28474A7B0, "containsObject:", v23), v23, v24))
    {
      v7 = off_278949218;
      goto LABEL_5;
    }
  }

  v9 = 0;
LABEL_30:

  return v9;
}

- (id)getSchemaCreatorForEvent:(id)event
{
  v4 = [event objectForKeyedSubscript:*MEMORY[0x277D06608]];
  if (v4)
  {
    v5 = [(SGRawDUEventProcessor *)self getSchemaCreatorForEventString:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end