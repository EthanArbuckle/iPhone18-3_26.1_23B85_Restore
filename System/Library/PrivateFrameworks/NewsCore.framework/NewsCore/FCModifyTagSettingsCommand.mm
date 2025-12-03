@interface FCModifyTagSettingsCommand
- (BOOL)mergeLocalRecord:(id)record withRemoteRecord:(id)remoteRecord;
@end

@implementation FCModifyTagSettingsCommand

- (BOOL)mergeLocalRecord:(id)record withRemoteRecord:(id)remoteRecord
{
  recordCopy = record;
  remoteRecordCopy = remoteRecord;
  v7 = [recordCopy objectForKeyedSubscript:@"tagID"];
  v8 = [remoteRecordCopy objectForKeyedSubscript:@"tagID"];
  if ([v7 isEqualToString:v8])
  {
    v38 = v7;
    v9 = [recordCopy objectForKeyedSubscript:@"fontMultiplier"];
    v10 = [remoteRecordCopy objectForKeyedSubscript:@"fontMultiplier"];
    intValue = [v9 intValue];
    v36 = v10;
    intValue2 = [v10 intValue];
    v13 = intValue != intValue2;
    if (intValue != intValue2)
    {
      [remoteRecordCopy setObject:v9 forKeyedSubscript:@"fontMultiplier"];
    }

    v37 = v9;
    v14 = [recordCopy objectForKeyedSubscript:@"fontMultiplierMacOS"];
    v15 = [remoteRecordCopy objectForKeyedSubscript:@"fontMultiplierMacOS"];
    intValue3 = [v14 intValue];
    v34 = v15;
    if (intValue3 != [v15 intValue])
    {
      [remoteRecordCopy setObject:v14 forKeyedSubscript:@"fontMultiplierMacOS"];
      v13 = 1;
    }

    v35 = v14;
    v17 = [recordCopy objectForKeyedSubscript:@"contentScale"];
    v18 = [remoteRecordCopy objectForKeyedSubscript:@"contentScale"];
    intValue4 = [v17 intValue];
    if (intValue4 != [v18 intValue])
    {
      [remoteRecordCopy setObject:v17 forKeyedSubscript:@"contentScale"];
      v13 = 1;
    }

    v20 = [recordCopy objectForKeyedSubscript:@"contentScaleMacOS"];
    v21 = [remoteRecordCopy objectForKeyedSubscript:@"contentScaleMacOS"];
    intValue5 = [v20 intValue];
    if (intValue5 != [v21 intValue])
    {
      [remoteRecordCopy setObject:v20 forKeyedSubscript:@"contentScaleMacOS"];
      v13 = 1;
    }

    v7 = v38;
  }

  else
  {
    v13 = 0;
  }

  v23 = [recordCopy objectForKeyedSubscript:@"accessToken"];
  v24 = [remoteRecordCopy objectForKeyedSubscript:@"accessToken"];
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
        v28 = [recordCopy objectForKeyedSubscript:@"webAccessOptIn"];
        v29 = [remoteRecordCopy objectForKeyedSubscript:@"webAccessOptIn"];
        v30 = v29;
        if (v28)
        {
          v31 = remoteRecordCopy;
          v32 = v28;
        }

        else
        {
          if (!v29)
          {
LABEL_27:

            goto LABEL_28;
          }

          v31 = remoteRecordCopy;
          v32 = 0;
        }

        [v31 setObject:v32 forKeyedSubscript:@"webAccessOptIn"];
        v13 = 1;
        goto LABEL_27;
      }

      v26 = remoteRecordCopy;
      v27 = v23;
    }

    else
    {
      v26 = remoteRecordCopy;
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