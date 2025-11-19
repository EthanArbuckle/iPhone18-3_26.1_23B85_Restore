@interface NSDictionary
- (id)base64EncodedStringFromDict;
- (id)keysOfEntriesContainingObject:(id)a3;
- (int64_t)compare:(id)a3 with:(id)a4;
- (void)recordIDAndClientMetadataForSilentAttemptFromRecords:(id)a3 passphraseLength:(unint64_t)a4 platform:(int)a5 sosCompatibilityModeEnabled:(BOOL)a6 reply:(id)a7;
@end

@implementation NSDictionary

- (id)keysOfEntriesContainingObject:(id)a3
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000098B4;
  v7[3] = &unk_100075110;
  v8 = a3;
  v4 = v8;
  v5 = [(NSDictionary *)self keysOfEntriesPassingTest:v7];

  return v5;
}

- (int64_t)compare:(id)a3 with:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 objectForKeyedSubscript:@"metadata"];
  v9 = [v8 objectForKeyedSubscript:@"BackupKeybagDigest"];

  v10 = [v7 objectForKeyedSubscript:@"metadata"];
  v11 = [v10 objectForKeyedSubscript:@"BackupKeybagDigest"];

  v12 = [(NSDictionary *)self keysOfEntriesContainingObject:v9];
  v13 = [(NSDictionary *)self keysOfEntriesContainingObject:v11];
  v14 = kSecureBackupEscrowDateKey;
  v15 = [v6 objectForKeyedSubscript:kSecureBackupEscrowDateKey];
  v16 = [v7 objectForKeyedSubscript:v14];
  if ([v12 isEqualToSet:v13])
  {
    v17 = [v15 compare:v16];
    v18 = CloudServicesLog();
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
    if (v17 == -1)
    {
      if (v19)
      {
        *buf = 0;
        v29 = "candidate can recover same views but is newer";
        goto LABEL_30;
      }

      goto LABEL_31;
    }

    if (!v19)
    {
      goto LABEL_32;
    }

    *buf = 0;
    v20 = "candidate can recover same views but is not newer";
LABEL_5:
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, v20, buf, 2u);
    goto LABEL_32;
  }

  v35 = v16;
  v36 = v15;
  v37 = v11;
  v38 = v9;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v21 = [&off_10007A380 countByEnumeratingWithState:&v39 objects:v45 count:16];
  if (!v21)
  {
    goto LABEL_15;
  }

  v22 = v21;
  v23 = *v40;
  while (2)
  {
    for (i = 0; i != v22; i = i + 1)
    {
      if (*v40 != v23)
      {
        objc_enumerationMutation(&off_10007A380);
      }

      v25 = *(*(&v39 + 1) + 8 * i);
      v26 = [v12 compareMembershipOfObject:v25 withSet:v13];
      v17 = v26;
      if (v26 == 1)
      {
        v18 = CloudServicesLog();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v44 = v25;
          v30 = "candidate cannot recover %@";
          goto LABEL_25;
        }

LABEL_26:
        v11 = v37;
        v9 = v38;
        v16 = v35;
        v15 = v36;
        goto LABEL_32;
      }

      if (v26 == -1)
      {
        v18 = CloudServicesLog();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v44 = v25;
          v30 = "candidate can recover %@";
LABEL_25:
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, v30, buf, 0xCu);
          goto LABEL_26;
        }

        goto LABEL_26;
      }
    }

    v22 = [&off_10007A380 countByEnumeratingWithState:&v39 objects:v45 count:16];
    if (v22)
    {
      continue;
    }

    break;
  }

LABEL_15:
  v27 = [v12 countOfObjectsWithPrefix:@"PCS"];
  v28 = [v13 countOfObjectsWithPrefix:@"PCS"];
  if (v27 > v28)
  {
    v18 = CloudServicesLog();
    v11 = v37;
    v9 = v38;
    v16 = v35;
    v15 = v36;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "candidate can recover fewer PCS views", buf, 2u);
    }

    v17 = 1;
    goto LABEL_32;
  }

  if (v27 < v28)
  {
    v18 = CloudServicesLog();
    v11 = v37;
    v9 = v38;
    v16 = v35;
    v15 = v36;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v29 = "candidate can recover more PCS views";
      goto LABEL_30;
    }

LABEL_31:
    v17 = -1;
    goto LABEL_32;
  }

  v32 = [v12 count];
  v11 = v37;
  v9 = v38;
  v15 = v36;
  if (v32 <= [v13 count])
  {
    v33 = [v12 count];
    if (v33 >= [v13 count])
    {
      v16 = v35;
      v17 = [v36 compare:v35];
      v18 = CloudServicesLog();
      v34 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
      if (v17 != -1)
      {
        if (!v34)
        {
          goto LABEL_32;
        }

        *buf = 0;
        v20 = "candidate can recover same number of views but is not newer";
        goto LABEL_5;
      }

      if (!v34)
      {
        goto LABEL_31;
      }

      *buf = 0;
      v29 = "candidate can recover same number of views but is newer";
    }

    else
    {
      v18 = CloudServicesLog();
      v16 = v35;
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_31;
      }

      *buf = 0;
      v29 = "candidate can recover more total views";
    }

LABEL_30:
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, v29, buf, 2u);
    goto LABEL_31;
  }

  v18 = CloudServicesLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "candidate can recover fewer total views", buf, 2u);
  }

  v17 = 1;
  v16 = v35;
LABEL_32:

  return v17;
}

- (void)recordIDAndClientMetadataForSilentAttemptFromRecords:(id)a3 passphraseLength:(unint64_t)a4 platform:(int)a5 sosCompatibilityModeEnabled:(BOOL)a6 reply:(id)a7
{
  v8 = a3;
  v9 = a7;
  v10 = CloudServicesLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *v84 = a4;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "looking for record for silent attempt of passphrase length %lu", buf, 0xCu);
  }

  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v11 = v8;
  v77 = [v11 countByEnumeratingWithState:&v79 objects:v85 count:16];
  if (!v77)
  {
    v51 = 0;
    v53 = 0;
    v65 = 0;
    v54 = v11;
    v55 = a4;
    goto LABEL_61;
  }

  v57 = v9;
  v65 = 0;
  v61 = 0;
  v62 = 0;
  v75 = kSecureBackupEscrowDateKey;
  v76 = *v80;
  v74 = kSecureBackupRecordIDKey;
  v73 = kSecureBackupRemainingAttemptsKey;
  v71 = kEscrowServiceRecordMetadataKey;
  v67 = kSecureBackupClientMetadataKey;
  v64 = kSecureBackupBottleIDKey;
  v63 = kSecureBackupBottleValidityKey;
  v66 = kSecureBackupUsesNumericPassphraseKey;
  v59 = kSecureBackupNumericPassphraseLengthKey;
  v72 = a4;
  v68 = v11;
  do
  {
    for (i = 0; i != v77; i = i + 1)
    {
      if (*v80 != v76)
      {
        objc_enumerationMutation(v11);
      }

      v13 = *(*(&v79 + 1) + 8 * i);
      v14 = objc_autoreleasePoolPush();
      v15 = [v13 objectForKeyedSubscript:v75];
      v16 = [v13 objectForKeyedSubscript:v74];
      v17 = CloudServicesLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = [CSDateUtilities localStringFromDate:v15];
        *buf = 138412546;
        *v84 = v16;
        *&v84[8] = 2112;
        *&v84[10] = v18;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "checking escrow record: %@ from %@", buf, 0x16u);
      }

      v19 = [v13 objectForKeyedSubscript:v73];
      v20 = [v19 intValue];

      v21 = [v13 objectForKeyedSubscript:@"silentAttemptAllowed"];
      v22 = [v21 isEqual:&__kCFBooleanFalse];

      if (v20 == 10 && (v22 & 1) == 0)
      {
        v78 = v14;
        v23 = [v13 objectForKeyedSubscript:v71];
        v24 = [v23 objectForKeyedSubscript:v67];

        v25 = [v24 mutableCopy];
        if (!a6)
        {
          v26 = [v13 objectForKeyedSubscript:v71];
          v27 = [v26 objectForKeyedSubscript:v64];
          [v25 setObject:v27 forKeyedSubscript:v64];

          v28 = [v13 objectForKeyedSubscript:v71];
          v29 = [v28 objectForKeyedSubscript:v63];
          [v25 setObject:v29 forKeyedSubscript:v63];

          v30 = CloudServicesLog();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *v84 = v25;
            _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "metadata containing bottle: %@", buf, 0xCu);
          }
        }

        v31 = [v25 objectForKeyedSubscript:@"device_platform"];
        v32 = [v31 intValue];

        v33 = [v25 objectForKeyedSubscript:v66];
        v34 = [v33 BOOLValue];

        if (v32 != a5)
        {
          v37 = CloudServicesLog();
          v14 = v78;
          if (!os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_29;
          }

          *buf = 0;
          v39 = v37;
          v40 = "escrow record not same platform, skipping";
          goto LABEL_27;
        }

        if (v34)
        {
          v35 = [v25 objectForKeyedSubscript:v59];
          v36 = [v35 unsignedIntegerValue];

          v37 = CloudServicesLog();
          v38 = os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT);
          if (v36 > a4)
          {
            v14 = v78;
            if (v38)
            {
              *buf = 134218240;
              *v84 = v36;
              *&v84[8] = 2048;
              *&v84[10] = a4;
              v39 = v37;
              v40 = "escrow passphrase length (%lu) longer than silent attempt passphrase (%lu), skipping";
              v41 = 22;
              goto LABEL_28;
            }

            goto LABEL_29;
          }

          v14 = v78;
          if (v38)
          {
            *buf = 134217984;
            *v84 = v36;
            _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "found clean record with passlen: %lu", buf, 0xCu);
          }

          if (v65 && [(NSDictionary *)self compare:v65 with:v13]!= -1)
          {
            v37 = CloudServicesLog();
            if (!os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_29;
            }

LABEL_33:
            *buf = 0;
            v39 = v37;
            v40 = "keeping current candidate";
LABEL_27:
            v41 = 2;
LABEL_28:
            _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, v40, buf, v41);
LABEL_29:
            v36 = v72;
LABEL_51:

            v72 = v36;
            v11 = v68;
            goto LABEL_52;
          }

          v48 = CloudServicesLog();
          if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
          {
            v49 = @"better";
            if (!v65)
            {
              v49 = @"first";
            }

            *buf = 138412290;
            *v84 = v49;
            _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "found %@ candidate", buf, 0xCu);
          }

          v50 = v13;
          v46 = v16;

          v47 = v25;
          v37 = v62;
          v65 = v50;
        }

        else
        {
          v14 = v78;
          if (v65 && [(NSDictionary *)self compare:v65 with:v13]!= -1)
          {
            v37 = CloudServicesLog();
            if (!os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_29;
            }

            goto LABEL_33;
          }

          v43 = CloudServicesLog();
          if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
          {
            v44 = @"better";
            if (!v65)
            {
              v44 = @"first";
            }

            *buf = 138412290;
            *v84 = v44;
            _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "found %@ candidate", buf, 0xCu);
          }

          v45 = v13;
          v46 = v16;

          v47 = v25;
          v37 = v62;
          v65 = v45;
          v36 = a4;
        }

        v61 = v46;
        v62 = v47;
        v14 = v78;
        goto LABEL_51;
      }

      v24 = CloudServicesLog();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109378;
        v42 = &stru_1000767A0;
        if (v22)
        {
          v42 = @"not ";
        }

        *v84 = v20;
        *&v84[4] = 2112;
        *&v84[6] = v42;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "candidate not eligible: remaining attempts = %d, silent attempt %@allowed", buf, 0x12u);
      }

LABEL_52:

      objc_autoreleasePoolPop(v14);
    }

    v77 = [v11 countByEnumeratingWithState:&v79 objects:v85 count:16];
  }

  while (v77);

  v51 = v61;
  if (v61)
  {
    v52 = CloudServicesLog();
    v9 = v57;
    v53 = v62;
    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      sub_100049990(v61, v62, v52);
    }

    v54 = CloudServicesLog();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
    {
      sub_100049A30(v65, v71, v54);
    }

    v55 = v72;
LABEL_61:

    v56 = v55;
  }

  else
  {
    v9 = v57;
    v53 = v62;
    v56 = v72;
  }

  v9[2](v9, v51, v53, v56);
}

- (id)base64EncodedStringFromDict
{
  v2 = [NSPropertyListSerialization dataWithPropertyList:self format:200 options:0 error:0];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 base64EncodedStringWithOptions:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end