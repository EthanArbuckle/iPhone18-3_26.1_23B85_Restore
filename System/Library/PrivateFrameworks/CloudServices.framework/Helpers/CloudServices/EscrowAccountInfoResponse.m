@interface EscrowAccountInfoResponse
- (NSArray)accountInfo;
- (id)initFromResponseFilterPCS:(id)a3;
@end

@implementation EscrowAccountInfoResponse

- (NSArray)accountInfo
{
  v2 = [(LakituResponse *)self responseDictionary];
  v3 = [v2 objectForKeyedSubscript:@"metadataList"];

  v28 = objc_alloc_init(NSMutableArray);
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = v3;
  v31 = [obj countByEnumeratingWithState:&v32 objects:v38 count:16];
  if (v31)
  {
    v30 = *v33;
    *&v4 = 138412290;
    v27 = v4;
    do
    {
      for (i = 0; i != v31; i = i + 1)
      {
        if (*v33 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v32 + 1) + 8 * i);
        v7 = [v6 objectForKeyedSubscript:{@"metadata", v27}];
        if (v7)
        {
          v8 = [[NSData alloc] initWithBase64EncodedString:v7 options:0];
          if (v8)
          {
            v9 = [NSPropertyListSerialization propertyListWithData:v8 options:0 format:0 error:0];
            v10 = objc_alloc_init(NSMutableDictionary);
            v11 = [v6 objectForKeyedSubscript:@"label"];
            [v10 setObject:v11 forKeyedSubscript:@"label"];

            [v10 setObject:v9 forKeyedSubscript:@"metadata"];
            v12 = [v6 objectForKeyedSubscript:@"recordStatus"];
            [v10 setObject:v12 forKeyedSubscript:@"recordStatus"];

            [v10 setObject:v7 forKeyedSubscript:@"encodedMetadata"];
            v13 = [v6 objectForKeyedSubscript:@"silentAttemptAllowed"];
            [v10 setObject:v13 forKeyedSubscript:@"silentAttemptAllowed"];

            v14 = [v6 objectForKeyedSubscript:@"FEDERATIONID"];
            [v10 setObject:v14 forKeyedSubscript:@"federationID"];

            v15 = [v6 objectForKeyedSubscript:@"EXPECTEDFEDERATIONID"];
            [v10 setObject:v15 forKeyedSubscript:@"expectedFederationID"];

            v16 = [v6 objectForKeyedSubscript:@"remainingAttempts"];
            v17 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v16 integerValue]);
            [v10 setObject:v17 forKeyedSubscript:@"SecureBackupRemainingAttempts"];

            v18 = [v6 objectForKeyedSubscript:@"coolOffEnd"];
            v19 = v18;
            if (v18)
            {
              v20 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v18 integerValue]);
              [v10 setObject:v20 forKeyedSubscript:@"SecureBackupCoolOffEnd"];
            }

            v21 = [v6 objectForKeyedSubscript:@"recoveryStatus"];
            v22 = v21;
            if (v21)
            {
              v23 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v21 integerValue]);
              [v10 setObject:v23 forKeyedSubscript:@"SecureBackupRecoveryStatus"];
            }

            v24 = [v6 objectForKeyedSubscript:@"triggerUpdate"];
            [v10 setObject:v24 forKeyedSubscript:@"SecureBackupTriggerUpdate"];

            [v28 addObject:v10];
          }

          else
          {
            v25 = CloudServicesLog();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              *buf = v27;
              v37 = v7;
              _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "iCloud gave us junk for metadata: %@", buf, 0xCu);
            }
          }
        }
      }

      v31 = [obj countByEnumeratingWithState:&v32 objects:v38 count:16];
    }

    while (v31);
  }

  return v28;
}

- (id)initFromResponseFilterPCS:(id)a3
{
  v4 = a3;
  v5 = [v4 error];

  if (v5)
  {
    v6 = [v4 error];
    v31.receiver = self;
    v31.super_class = EscrowAccountInfoResponse;
    v7 = [(LakituResponse *)&v31 initWithError:v6];

    v8 = v7;
  }

  else
  {
    v24 = self;
    v9 = [v4 responseDictionary];
    v23 = [v9 mutableCopy];

    v25 = v4;
    v10 = [v4 responseDictionary];
    v11 = [v10 objectForKeyedSubscript:@"metadataList"];

    v12 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v11 count]);
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v13 = v11;
    v14 = [v13 countByEnumeratingWithState:&v27 objects:v34 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v28;
      v17 = kEscrowServiceStingrayLabel;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v28 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v19 = *(*(&v27 + 1) + 8 * i);
          v20 = [v19 objectForKeyedSubscript:@"label"];
          if (([v20 isEqualToString:v17] & 1) != 0 || objc_msgSend(v20, "isEqualToString:", @"com.apple.protectedcloudstorage.record.double"))
          {
            v21 = CloudServicesLog();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412290;
              v33 = v20;
              _os_log_fault_impl(&_mh_execute_header, v21, OS_LOG_TYPE_FAULT, "Filtering PCS record label %@ (due to com.apple.cloudservices/PCS-NoRecord)", buf, 0xCu);
            }
          }

          else
          {
            [v12 addObject:v19];
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v27 objects:v34 count:16];
      }

      while (v15);
    }

    [v23 setObject:v12 forKeyedSubscript:@"metadataList"];
    v26.receiver = v24;
    v26.super_class = EscrowAccountInfoResponse;
    v8 = [(LakituResponse *)&v26 initWithResponseDictionary:v23];

    v4 = v25;
  }

  return v8;
}

@end