@interface CKRecord(PKAdditions)
+ (id)pk_recordWithSystemFieldsData:()PKAdditions;
- (id)_arrayFromStringValue:()PKAdditions;
- (id)description;
- (id)pk_arrayForKey:()PKAdditions;
- (id)pk_copyRecordForNewRecordZone:()PKAdditions;
- (id)pk_dataForKey:()PKAdditions;
- (id)pk_dateForKey:()PKAdditions;
- (id)pk_decimalNumberForKey:()PKAdditions;
- (id)pk_description;
- (id)pk_dictionaryForKey:()PKAdditions;
- (id)pk_encryptedArrayOfClasses:()PKAdditions forKey:;
- (id)pk_encryptedDataForKey:()PKAdditions;
- (id)pk_encryptedDateForKey:()PKAdditions;
- (id)pk_encryptedDecimalNumberForKey:()PKAdditions;
- (id)pk_encryptedDictionaryForKey:()PKAdditions;
- (id)pk_encryptedLocationForKey:()PKAdditions;
- (id)pk_encryptedNumberForKey:()PKAdditions;
- (id)pk_encryptedObjectForKey:()PKAdditions ofClass:;
- (id)pk_encryptedStringForKey:()PKAdditions;
- (id)pk_encryptedUUIDForKey:()PKAdditions;
- (id)pk_encryptedUrlForKey:()PKAdditions;
- (id)pk_locationForKey:()PKAdditions;
- (id)pk_numberForKey:()PKAdditions;
- (id)pk_objectForKey:()PKAdditions ofClass:;
- (id)pk_participantWithEmailAddress:()PKAdditions;
- (id)pk_participantWithLookupInfo:()PKAdditions;
- (id)pk_participantWithPhoneNumber:()PKAdditions;
- (id)pk_participantWithRecipientHandle:()PKAdditions;
- (id)pk_referenceForKey:()PKAdditions;
- (id)pk_share;
- (id)pk_stringForKey:()PKAdditions;
- (id)pk_systemFieldsData;
- (id)pk_urlForKey:()PKAdditions;
- (uint64_t)_copyArray:()PKAdditions forNewRecordZone:;
- (uint64_t)_copyReference:()PKAdditions forNewRecordZone:;
- (uint64_t)pk_BOOLForKey:()PKAdditions;
- (uint64_t)pk_encryptedBoolForKey:()PKAdditions;
- (uint64_t)pk_encryptedIntForKey:()PKAdditions;
- (uint64_t)pk_encryptedIntegerForKey:()PKAdditions;
- (uint64_t)pk_encryptedUint64ForKey:()PKAdditions;
- (uint64_t)pk_encryptedUnsignedIntegerForKey:()PKAdditions;
- (uint64_t)pk_hash;
- (uint64_t)pk_intForKey:()PKAdditions;
- (uint64_t)pk_integerForKey:()PKAdditions;
- (uint64_t)pk_isPass;
- (uint64_t)pk_isPassCatalog;
- (uint64_t)pk_isRemoteAsset;
- (uint64_t)pk_uint64ForKey:()PKAdditions;
- (uint64_t)pk_unsignedIntegerForKey:()PKAdditions;
@end

@implementation CKRecord(PKAdditions)

- (id)pk_encryptedStringForKey:()PKAdditions
{
  v4 = a3;
  v5 = [a1 pk_encryptedObjectForKey:v4 ofClass:objc_opt_class()];

  return v5;
}

- (id)pk_encryptedUUIDForKey:()PKAdditions
{
  v1 = [a1 pk_encryptedStringForKey:?];
  if (v1)
  {
    v2 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)pk_encryptedNumberForKey:()PKAdditions
{
  v4 = a3;
  v5 = [a1 pk_encryptedObjectForKey:v4 ofClass:objc_opt_class()];

  return v5;
}

- (id)pk_encryptedDateForKey:()PKAdditions
{
  v4 = a3;
  v5 = [a1 pk_encryptedObjectForKey:v4 ofClass:objc_opt_class()];

  return v5;
}

- (id)pk_encryptedDataForKey:()PKAdditions
{
  v4 = a3;
  v5 = [a1 pk_encryptedObjectForKey:v4 ofClass:objc_opt_class()];

  return v5;
}

- (id)pk_encryptedLocationForKey:()PKAdditions
{
  v4 = a3;
  v5 = [a1 pk_encryptedObjectForKey:v4 ofClass:objc_opt_class()];

  return v5;
}

- (id)pk_encryptedDecimalNumberForKey:()PKAdditions
{
  v1 = [a1 pk_encryptedStringForKey:?];
  if (v1)
  {
    v2 = [MEMORY[0x1E696AB90] decimalNumberWithString:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)pk_encryptedUrlForKey:()PKAdditions
{
  v1 = [a1 pk_encryptedStringForKey:?];
  if (v1)
  {
    v2 = [MEMORY[0x1E695DFF8] URLWithString:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)pk_encryptedDictionaryForKey:()PKAdditions
{
  v1 = [a1 pk_encryptedStringForKey:?];
  v2 = PKDictionaryFromJSONString(v1);

  return v2;
}

- (id)pk_encryptedArrayOfClasses:()PKAdditions forKey:
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 pk_encryptedStringForKey:v7];
  v9 = [a1 _arrayFromStringValue:v8];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __59__CKRecord_PKAdditions__pk_encryptedArrayOfClasses_forKey___block_invoke;
  v14[3] = &unk_1E79C9A68;
  v15 = v6;
  v16 = v7;
  v10 = v7;
  v11 = v6;
  v12 = [v9 pk_objectsPassingTest:v14];

  return v12;
}

- (uint64_t)pk_encryptedBoolForKey:()PKAdditions
{
  v1 = [a1 pk_encryptedNumberForKey:?];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 BOOLValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (uint64_t)pk_encryptedIntegerForKey:()PKAdditions
{
  v1 = [a1 pk_encryptedNumberForKey:?];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 integerValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (uint64_t)pk_encryptedIntForKey:()PKAdditions
{
  v1 = [a1 pk_encryptedNumberForKey:?];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 intValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (uint64_t)pk_encryptedUint64ForKey:()PKAdditions
{
  v1 = [a1 pk_encryptedNumberForKey:?];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 unsignedLongLongValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (uint64_t)pk_encryptedUnsignedIntegerForKey:()PKAdditions
{
  v1 = [a1 pk_encryptedNumberForKey:?];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 unsignedIntegerValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)pk_encryptedObjectForKey:()PKAdditions ofClass:
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [a1 encryptedValues];
  v8 = [v7 objectForKey:v6];

  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    if (v8)
    {
      v10 = PKLogFacilityTypeGetObject(0xAuLL);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 138412802;
        v14 = objc_opt_class();
        v15 = 2112;
        v16 = v6;
        v17 = 2112;
        v18 = a4;
        v11 = v14;
        _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, "CKRecord Error: unexpected class type %@ for key %@. Expected class type: %@", &v13, 0x20u);
      }
    }

    v9 = 0;
  }

  return v9;
}

- (id)pk_stringForKey:()PKAdditions
{
  v4 = a3;
  v5 = [a1 pk_objectForKey:v4 ofClass:objc_opt_class()];

  return v5;
}

- (id)pk_numberForKey:()PKAdditions
{
  v4 = a3;
  v5 = [a1 pk_objectForKey:v4 ofClass:objc_opt_class()];

  return v5;
}

- (id)pk_dateForKey:()PKAdditions
{
  v4 = a3;
  v5 = [a1 pk_objectForKey:v4 ofClass:objc_opt_class()];

  return v5;
}

- (id)pk_dataForKey:()PKAdditions
{
  v4 = a3;
  v5 = [a1 pk_objectForKey:v4 ofClass:objc_opt_class()];

  return v5;
}

- (id)pk_locationForKey:()PKAdditions
{
  v4 = a3;
  v5 = [a1 pk_objectForKey:v4 ofClass:objc_opt_class()];

  return v5;
}

- (id)pk_decimalNumberForKey:()PKAdditions
{
  v1 = [a1 pk_stringForKey:?];
  if (v1)
  {
    v2 = [MEMORY[0x1E696AB90] decimalNumberWithString:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)pk_urlForKey:()PKAdditions
{
  v1 = [a1 pk_stringForKey:?];
  if (v1)
  {
    v2 = [MEMORY[0x1E695DFF8] URLWithString:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)pk_dictionaryForKey:()PKAdditions
{
  v1 = [a1 pk_stringForKey:?];
  v2 = PKDictionaryFromJSONString(v1);

  return v2;
}

- (id)pk_arrayForKey:()PKAdditions
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [a1 objectForKey:v4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [a1 _arrayFromStringValue:v5];
LABEL_5:
    v7 = v6;
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    goto LABEL_5;
  }

  v8 = PKLogFacilityTypeGetObject(0xAuLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    v12 = objc_opt_class();
    v13 = 2112;
    v14 = v4;
    v9 = v12;
    _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "CKRecord Error: unexpected class type %@ for key %@ as array. Expected string or array", &v11, 0x16u);
  }

  v7 = 0;
LABEL_9:

  return v7;
}

- (uint64_t)pk_BOOLForKey:()PKAdditions
{
  v1 = [a1 pk_numberForKey:?];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 BOOLValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (uint64_t)pk_integerForKey:()PKAdditions
{
  v1 = [a1 pk_numberForKey:?];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 integerValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (uint64_t)pk_intForKey:()PKAdditions
{
  v1 = [a1 pk_numberForKey:?];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 intValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (uint64_t)pk_uint64ForKey:()PKAdditions
{
  v1 = [a1 pk_numberForKey:?];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 unsignedLongLongValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (uint64_t)pk_unsignedIntegerForKey:()PKAdditions
{
  v1 = [a1 pk_numberForKey:?];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 unsignedIntegerValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)pk_referenceForKey:()PKAdditions
{
  v4 = a3;
  v5 = [a1 pk_objectForKey:v4 ofClass:objc_opt_class()];

  return v5;
}

- (id)pk_objectForKey:()PKAdditions ofClass:
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [a1 objectForKey:v6];
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    if (v7)
    {
      v9 = PKLogFacilityTypeGetObject(0xAuLL);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 138412802;
        v13 = objc_opt_class();
        v14 = 2112;
        v15 = v6;
        v16 = 2112;
        v17 = a4;
        v10 = v13;
        _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "CKRecord Error: unexpected class type %@ for key %@. Expected class type: %@", &v12, 0x20u);
      }
    }

    v8 = 0;
  }

  return v8;
}

- (id)pk_description
{
  v36 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), a1];;
  v3 = [a1 recordID];
  v4 = [v3 recordName];
  [v2 appendFormat:@"recordName: '%@', ", v4];

  v5 = [a1 recordID];
  v6 = [v5 zoneID];
  v7 = [v6 zoneName];
  [v2 appendFormat:@"zoneName: '%@', ", v7];

  v8 = [a1 creationDate];
  [v2 appendFormat:@"createdDate: '%@', ", v8];

  v9 = [a1 recordChangeTag];
  [v2 appendFormat:@"recordChangeTag: '%@', ", v9];

  v10 = [a1 creatorUserRecordID];
  [v2 appendFormat:@"creatorUserRecordID: '%@', ", v10];

  v11 = [a1 creationDate];
  [v2 appendFormat:@"creationDate: '%@', ", v11];

  v12 = [a1 lastModifiedUserRecordID];
  [v2 appendFormat:@"lastModifiedUserRecordID: '%@', ", v12];

  v13 = [a1 modificationDate];
  [v2 appendFormat:@"modificationDate: '%@', ", v13];

  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(a1, "pk_hash")}];
  [v2 appendFormat:@"pk_hash: '%@', ", v14];

  [v2 appendFormat:@"values: { "];
  v15 = [a1 values];
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __39__CKRecord_PKAdditions__pk_description__block_invoke;
  v33[3] = &unk_1E79D2380;
  v16 = v2;
  v34 = v16;
  [v15 enumerateKeysAndObjectsUsingBlock:v33];

  [v16 appendFormat:@"}, "];
  [v16 appendString:@" encryptedValues: { "];
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v17 = a1;
  v18 = [a1 encryptedValues];
  v19 = [v18 allKeys];

  obj = v19;
  v20 = [v19 countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v30;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v30 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v24 = *(*(&v29 + 1) + 8 * i);
        v25 = [v17 encryptedValues];
        v26 = [v25 objectForKey:v24];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v16 appendFormat:@"%@: '%@', ", v24, @"<large data blob>"];
        }

        else
        {
          [v16 appendFormat:@"%@: '%@', ", v24, v26];
        }
      }

      v21 = [obj countByEnumeratingWithState:&v29 objects:v35 count:16];
    }

    while (v21);
  }

  [v16 appendFormat:@"}"];
  [v16 appendFormat:@">"];

  return v16;
}

- (id)description
{
  if (PKTransactionDebugDetailsEnabled())
  {
    v2 = [a1 pk_description];
  }

  else
  {
    v4.receiver = a1;
    v4.super_class = &off_1F2468FD0;
    v2 = objc_msgSendSuper2(&v4, sel_description);
  }

  return v2;
}

- (uint64_t)pk_hash
{
  v38 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = [a1 recordID];
  [v2 safelyAddObject:v3];

  v4 = [a1 recordType];
  [v2 safelyAddObject:v4];

  v5 = [a1 creationDate];
  [v2 safelyAddObject:v5];

  v6 = [a1 creatorUserRecordID];
  [v2 safelyAddObject:v6];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __32__CKRecord_PKAdditions__pk_hash__block_invoke;
  aBlock[3] = &unk_1E79D23A8;
  v7 = v2;
  v35 = v7;
  v8 = _Block_copy(aBlock);
  v9 = [a1 encryptedValues];
  v10 = [v9 allKeys];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v30 objects:v37 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v31;
    do
    {
      v14 = 0;
      do
      {
        if (*v31 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [v9 objectForKey:*(*(&v30 + 1) + 8 * v14)];
        v8[2](v8, v15);

        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v30 objects:v37 count:16];
    }

    while (v12);
  }

  v16 = [a1 valuesByKey];
  v17 = [v16 allKeys];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v18 = v17;
  v19 = [v18 countByEnumeratingWithState:&v26 objects:v36 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v27;
    do
    {
      v22 = 0;
      do
      {
        if (*v27 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = [v16 objectForKey:{*(*(&v26 + 1) + 8 * v22), v26}];
        v8[2](v8, v23);

        ++v22;
      }

      while (v20 != v22);
      v20 = [v18 countByEnumeratingWithState:&v26 objects:v36 count:16];
    }

    while (v20);
  }

  v24 = PKCombinedHash(17, v7);
  return v24;
}

- (id)pk_copyRecordForNewRecordZone:()PKAdditions
{
  v51 = *MEMORY[0x1E69E9840];
  v40 = a3;
  v4 = [v40 zoneID];
  v5 = [a1 recordID];
  v6 = [v5 recordName];

  v37 = v6;
  v38 = v4;
  v7 = [objc_alloc(MEMORY[0x1E695BA70]) initWithRecordName:v6 zoneID:v4];
  v8 = objc_alloc(MEMORY[0x1E695BA60]);
  v9 = [a1 recordType];
  v36 = v7;
  v10 = [v8 initWithRecordType:v9 recordID:v7];

  v39 = a1;
  v11 = [a1 encryptedValues];
  v12 = [v10 encryptedValues];
  v13 = [v11 allKeys];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v14 = [v13 countByEnumeratingWithState:&v45 objects:v50 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v46;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v46 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v45 + 1) + 8 * i);
        v19 = [v11 objectForKey:v18];
        [v12 setObject:v19 forKey:v18];
      }

      v15 = [v13 countByEnumeratingWithState:&v45 objects:v50 count:16];
    }

    while (v15);
  }

  v34 = v12;
  v35 = v11;
  v20 = [v39 valuesByKey];
  v33 = v10;
  v21 = [v10 valuesByKey];
  v22 = [v20 allKeys];

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v23 = v22;
  v24 = [v23 countByEnumeratingWithState:&v41 objects:v49 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v42;
    do
    {
      for (j = 0; j != v25; ++j)
      {
        if (*v42 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v41 + 1) + 8 * j);
        v29 = [v20 objectForKey:v28];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v30 = [v39 _copyReference:v29 forNewRecordZone:v40];
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_18;
          }

          v30 = [v39 _copyArray:v29 forNewRecordZone:v40];
        }

        v31 = v30;

        v29 = v31;
LABEL_18:
        [v21 setObject:v29 forKey:v28];
      }

      v25 = [v23 countByEnumeratingWithState:&v41 objects:v49 count:16];
    }

    while (v25);
  }

  return v33;
}

- (id)pk_participantWithRecipientHandle:()PKAdditions
{
  v4 = a3;
  if ([v4 containsString:@"@"])
  {
    [a1 pk_participantWithEmailAddress:v4];
  }

  else
  {
    [a1 pk_participantWithPhoneNumber:v4];
  }
  v5 = ;

  return v5;
}

- (id)pk_participantWithEmailAddress:()PKAdditions
{
  v4 = MEMORY[0x1E695BAE8];
  v5 = a3;
  v6 = [[v4 alloc] initWithEmailAddress:v5];

  v7 = [a1 pk_participantWithLookupInfo:v6];

  return v7;
}

- (id)pk_participantWithPhoneNumber:()PKAdditions
{
  v4 = MEMORY[0x1E695BAE8];
  v5 = a3;
  v6 = [[v4 alloc] initWithPhoneNumber:v5];

  v7 = [a1 pk_participantWithLookupInfo:v6];

  return v7;
}

- (id)pk_participantWithLookupInfo:()PKAdditions
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [a1 pk_share];
  v6 = v5;
  if (v5)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = [v5 participants];
    v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v8)
    {
      v9 = *v18;
      while (2)
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v17 + 1) + 8 * i);
          v12 = [v11 userIdentity];
          v13 = [v12 lookupInfo];
          v14 = v13;
          if (v4 && v13)
          {
            v15 = [v13 isEqual:v4];

            if (v15)
            {
              goto LABEL_15;
            }
          }

          else
          {

            if (v14 == v4)
            {
LABEL_15:
              v8 = v11;
              goto LABEL_16;
            }
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

LABEL_16:
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)pk_share
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = a1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (uint64_t)_copyReference:()PKAdditions forNewRecordZone:
{
  v5 = a4;
  v6 = a3;
  v7 = [v6 recordID];
  v8 = objc_alloc(MEMORY[0x1E695BA70]);
  v9 = [v7 recordName];
  v10 = [v5 zoneID];

  v11 = [v8 initWithRecordName:v9 zoneID:v10];
  v12 = objc_alloc(MEMORY[0x1E695BAB0]);
  v13 = [v6 referenceAction];

  v14 = [v12 initWithRecordID:v11 action:v13];
  return v14;
}

- (uint64_t)_copyArray:()PKAdditions forNewRecordZone:
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      v13 = 0;
      do
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v18 + 1) + 8 * v13);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v15 = [a1 _copyReference:v14 forNewRecordZone:{v7, v18}];

          v14 = v15;
        }

        [v8 addObject:{v14, v18}];

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  v16 = [v8 copy];
  return v16;
}

- (id)_arrayFromStringValue:()PKAdditions
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = [a3 dataUsingEncoding:4];
  if (v3)
  {
    v8 = 0;
    v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v3 options:0 error:&v8];
    v5 = v8;
    if (v5)
    {
      v6 = PKLogFacilityTypeGetObject(0xAuLL);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v10 = v5;
        _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "Error decoding CloudKit string into an NSArray with error: %@", buf, 0xCu);
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        goto LABEL_9;
      }
    }
  }

  v4 = 0;
LABEL_9:

  return v4;
}

- (uint64_t)pk_isPass
{
  v1 = [a1 recordType];
  v2 = @"Pass";
  v3 = v2;
  if (v1 == v2)
  {
    v4 = 1;
  }

  else
  {
    v4 = 0;
    if (v1 && v2)
    {
      v4 = [(__CFString *)v1 isEqualToString:v2];
    }
  }

  return v4;
}

- (uint64_t)pk_isPassCatalog
{
  v1 = [a1 recordType];
  v2 = @"PassCatalog";
  v3 = v2;
  if (v1 == v2)
  {
    v4 = 1;
  }

  else
  {
    v4 = 0;
    if (v1 && v2)
    {
      v4 = [(__CFString *)v1 isEqualToString:v2];
    }
  }

  return v4;
}

- (uint64_t)pk_isRemoteAsset
{
  v1 = [a1 recordType];
  v2 = @"RemoteAsset";
  v3 = v2;
  if (v1 == v2)
  {
    v4 = 1;
  }

  else
  {
    v4 = 0;
    if (v1 && v2)
    {
      v4 = [(__CFString *)v1 isEqualToString:v2];
    }
  }

  return v4;
}

+ (id)pk_recordWithSystemFieldsData:()PKAdditions
{
  v3 = MEMORY[0x1E696ACD0];
  v4 = a3;
  v8 = 0;
  v5 = [[v3 alloc] initForReadingFromData:v4 error:&v8];

  v6 = [objc_alloc(MEMORY[0x1E695BA60]) initWithCoder:v5];

  return v6;
}

- (id)pk_systemFieldsData
{
  v2 = [objc_alloc(MEMORY[0x1E696ACC8]) initRequiringSecureCoding:1];
  [a1 encodeSystemFieldsWithCoder:v2];
  [v2 finishEncoding];
  v3 = [v2 encodedData];

  return v3;
}

@end