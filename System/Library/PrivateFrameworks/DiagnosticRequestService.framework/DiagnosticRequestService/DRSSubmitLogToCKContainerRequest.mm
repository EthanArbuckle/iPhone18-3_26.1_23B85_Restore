@interface DRSSubmitLogToCKContainerRequest
+ (BOOL)_requestMOHasRequiredFields_ON_MOC_QUEUE:(id)a3;
+ (id)safeguardArchiveZoneID;
+ (id)xcRecordZoneID;
- (BOOL)isEqualToRequest:(id)a3;
- (DRSSubmitLogToCKContainerRequest)initWithXPCDict:(id)a3;
- (id)_initWithSubmitLogToCKContainerRequestMO_ON_MOC_QUEUE:(id)a3;
- (id)debugDescription;
- (id)recordRepresentation;
- (id)zoneID;
- (void)_configureRequestMO:(id)a3;
@end

@implementation DRSSubmitLogToCKContainerRequest

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = DRSSubmitLogToCKContainerRequest;
  v4 = [(DRSRequest *)&v11 debugDescription];
  v5 = [(DRSSubmitLogToCKContainerRequest *)self containerName];
  v6 = [(DRSSubmitLogToCKContainerRequest *)self recordType];
  v7 = [(DRSSubmitLogToCKContainerRequest *)self fileAssetField];
  v8 = [(DRSSubmitLogToCKContainerRequest *)self recordDictionary];
  v9 = [v3 stringWithFormat:@"%@ %@ %@ %@ %@", v4, v5, v6, v7, v8];

  return v9;
}

- (void)_configureRequestMO:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = DRSSubmitLogToCKContainerRequest;
  [(DRSSubmitLogRequest *)&v10 _configureRequestMO:v4];
  v5 = v4;
  v6 = [(DRSSubmitLogToCKContainerRequest *)self containerName];
  [v5 setContainerName:v6];

  v7 = [(DRSSubmitLogToCKContainerRequest *)self recordType];
  [v5 setRecordType:v7];

  v8 = [(DRSSubmitLogToCKContainerRequest *)self fileAssetField];
  [v5 setFileAssetField:v8];

  v9 = [(DRSSubmitLogToCKContainerRequest *)self recordDictionaryData];
  [v5 setRecordDictionaryData:v9];
}

- (DRSSubmitLogToCKContainerRequest)initWithXPCDict:(id)a3
{
  v43 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v39.receiver = self;
  v39.super_class = DRSSubmitLogToCKContainerRequest;
  v5 = [(DRSRequest *)&v39 initWithXPCDict:v4];
  if (v5)
  {
    string = xpc_dictionary_get_string(v4, "containerName");
    if (!string)
    {
      goto LABEL_27;
    }

    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:string];
    containerName = v5->_containerName;
    v5->_containerName = v7;

    v9 = xpc_dictionary_get_string(v4, "RecordType");
    if (!v9)
    {
      goto LABEL_27;
    }

    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:v9];
    recordType = v5->_recordType;
    v5->_recordType = v10;

    v12 = xpc_dictionary_get_string(v4, "FileAssetField");
    if (!v12)
    {
      goto LABEL_27;
    }

    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:v12];
    fileAssetField = v5->_fileAssetField;
    v5->_fileAssetField = v13;

    length = 0;
    data = xpc_dictionary_get_data(v4, "RecordDictionaryData", &length);
    if (data && length)
    {
      v16 = [MEMORY[0x277CBEA90] dataWithBytes:data length:?];
      recordDictionaryData = v5->_recordDictionaryData;
      v5->_recordDictionaryData = v16;

      v18 = [(DRSSubmitLogToCKContainerRequest *)v5 recordDictionaryData];
      v19 = DRSDictionaryForData(v18);
      recordDictionary = v5->_recordDictionary;
      v5->_recordDictionary = v19;

      v21 = [(DRSSubmitLogToCKContainerRequest *)v5 recordDictionary];

      if (v21)
      {
        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        v22 = [(DRSSubmitLogToCKContainerRequest *)v5 recordDictionary];
        v23 = [v22 allKeys];

        v24 = [v23 countByEnumeratingWithState:&v34 objects:v42 count:16];
        if (v24)
        {
          v25 = v24;
          v26 = *v35;
          while (2)
          {
            for (i = 0; i != v25; ++i)
            {
              if (*v35 != v26)
              {
                objc_enumerationMutation(v23);
              }

              v28 = *(*(&v34 + 1) + 8 * i);
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                v31 = DPLogHandle_SubmitLogToCKContainerError();
                if (os_signpost_enabled(v31))
                {
                  *buf = 138543362;
                  v41 = v28;
                  _os_signpost_emit_with_name_impl(&dword_232906000, v31, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "InvalidRecordKey", "%{public}@", buf, 0xCu);
                }

                goto LABEL_26;
              }
            }

            v25 = [v23 countByEnumeratingWithState:&v34 objects:v42 count:16];
            if (v25)
            {
              continue;
            }

            break;
          }
        }

        [(DRSRequest *)v5 setDecisionServerDecision:2];
        goto LABEL_17;
      }

      v23 = DPLogHandle_SubmitLogToCKContainerError();
      if (!os_signpost_enabled(v23))
      {
        goto LABEL_26;
      }

      *buf = 0;
      v30 = "FailedToDeserializeRecordDictionaryData";
    }

    else
    {
      v23 = DPLogHandle_SubmitLogToCKContainerError();
      if (!os_signpost_enabled(v23))
      {
LABEL_26:

LABEL_27:
        v29 = 0;
        goto LABEL_28;
      }

      *buf = 0;
      v30 = "SubmitLogToCKContainerMissingRecordData";
    }

    _os_signpost_emit_with_name_impl(&dword_232906000, v23, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v30, &unk_232980861, buf, 2u);
    goto LABEL_26;
  }

LABEL_17:
  v29 = v5;
LABEL_28:

  v32 = *MEMORY[0x277D85DE8];
  return v29;
}

+ (BOOL)_requestMOHasRequiredFields_ON_MOC_QUEUE:(id)a3
{
  v4 = a3;
  v9.receiver = a1;
  v9.super_class = &OBJC_METACLASS___DRSSubmitLogToCKContainerRequest;
  if (objc_msgSendSuper2(&v9, sel__requestMOHasRequiredFields_ON_MOC_QUEUE_, v4))
  {
    v5 = v4;
    v6 = [v5 containerName];

    if (v6)
    {
      v6 = [v5 recordType];

      if (v6)
      {
        v6 = [v5 fileAssetField];

        if (v6)
        {
          v7 = [v5 recordDictionaryData];
          LOBYTE(v6) = v7 != 0;
        }
      }
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (id)_initWithSubmitLogToCKContainerRequestMO_ON_MOC_QUEUE:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = DRSSubmitLogToCKContainerRequest;
  v5 = [(DRSSubmitLogRequest *)&v24 _initWithSubmitLogRequestMO_ON_MOC_QUEUE:v4];
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = [v4 containerName];
  v7 = v5[18];
  v5[18] = v6;

  v8 = [v4 recordType];
  v9 = v5[19];
  v5[19] = v8;

  v10 = [v4 recordDictionaryData];
  v11 = v5[21];
  v5[21] = v10;

  v12 = [v5 recordDictionaryData];

  if (!v12)
  {
    v20 = DPLogHandle_SubmitLogToCKContainerError();
    if (os_signpost_enabled(v20))
    {
      *v23 = 0;
      v21 = "MissingRecordDictionaryDataFromMO";
LABEL_9:
      _os_signpost_emit_with_name_impl(&dword_232906000, v20, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v21, &unk_232980861, v23, 2u);
    }

LABEL_10:

    v19 = 0;
    goto LABEL_11;
  }

  v13 = [v4 fileAssetField];
  v14 = v5[20];
  v5[20] = v13;

  v15 = [v5 recordDictionaryData];
  v16 = DRSDictionaryForData(v15);
  v17 = v5[22];
  v5[22] = v16;

  v18 = [v5 recordDictionary];

  if (!v18)
  {
    v20 = DPLogHandle_SubmitLogToCKContainerError();
    if (os_signpost_enabled(v20))
    {
      *v23 = 0;
      v21 = "FailedToDeserializeRecordDictionaryDataFromMO";
      goto LABEL_9;
    }

    goto LABEL_10;
  }

LABEL_4:
  v19 = v5;
LABEL_11:

  return v19;
}

- (BOOL)isEqualToRequest:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = DRSSubmitLogToCKContainerRequest;
  if ([(DRSSubmitLogRequest *)&v16 isEqualToRequest:v4])
  {
    v5 = v4;
    v6 = [(DRSSubmitLogToCKContainerRequest *)self containerName];
    v7 = [v5 containerName];
    if ([v6 isEqualToString:v7])
    {
      v8 = [(DRSSubmitLogToCKContainerRequest *)self recordType];
      v9 = [v5 recordType];
      if ([v8 isEqualToString:v9])
      {
        v10 = [(DRSSubmitLogToCKContainerRequest *)self fileAssetField];
        v11 = [v5 fileAssetField];
        if ([v10 isEqualToString:v11])
        {
          v15 = [(DRSSubmitLogToCKContainerRequest *)self recordDictionaryData];
          v12 = [v5 recordDictionaryData];
          v13 = [v15 isEqualToData:v12];
        }

        else
        {
          v13 = 0;
        }
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (id)xcRecordZoneID
{
  if (xcRecordZoneID_onceToken != -1)
  {
    +[DRSSubmitLogToCKContainerRequest(CKRecord_Private) xcRecordZoneID];
  }

  v3 = xcRecordZoneID_xcRecordZone;

  return [v3 zoneID];
}

void __68__DRSSubmitLogToCKContainerRequest_CKRecord_Private__xcRecordZoneID__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277CBC5E8]) initWithZoneName:@"3pDevEngagement"];
  v1 = xcRecordZoneID_xcRecordZone;
  xcRecordZoneID_xcRecordZone = v0;
}

+ (id)safeguardArchiveZoneID
{
  if (safeguardArchiveZoneID_onceToken != -1)
  {
    +[DRSSubmitLogToCKContainerRequest(CKRecord_Private) safeguardArchiveZoneID];
  }

  v3 = safeguardArchiveZoneID_safeguardArchiveZone;

  return [v3 zoneID];
}

void __76__DRSSubmitLogToCKContainerRequest_CKRecord_Private__safeguardArchiveZoneID__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277CBC5E8]) initWithZoneName:@"safeguard_zone"];
  v1 = safeguardArchiveZoneID_safeguardArchiveZone;
  safeguardArchiveZoneID_safeguardArchiveZone = v0;
}

- (id)zoneID
{
  v3 = [(DRSRequest *)self teamID];
  v4 = [v3 isEqualToString:kDRSDMPPSTeamID[0]];

  if (!v4)
  {
    goto LABEL_6;
  }

  v5 = [(DRSRequest *)self issueCategory];
  v6 = [v5 isEqualToString:kDRSDMPPSXCArchiveIssueCategory[0]];

  if (v6)
  {
    v7 = [objc_opt_class() xcRecordZoneID];
    goto LABEL_7;
  }

  v8 = [(DRSRequest *)self issueCategory];
  v9 = [v8 isEqualToString:kDRSDMPPSSafeguardArchiveIssueCategory[0]];

  if (v9)
  {
    v7 = [objc_opt_class() safeguardArchiveZoneID];
  }

  else
  {
LABEL_6:
    v7 = 0;
  }

LABEL_7:

  return v7;
}

- (id)recordRepresentation
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = [(DRSRequest *)self logs];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(DRSSubmitLogToCKContainerRequest *)self recordDictionary];
    v33 = 0;
    v6 = DRValidateCKRecordDictionary(v5, &v33);
    v7 = v33;

    if (v6)
    {
      v8 = [(DRSSubmitLogToCKContainerRequest *)self zoneID];
      v9 = objc_alloc(MEMORY[0x277CBC5A0]);
      v10 = [(DRSSubmitLogToCKContainerRequest *)self recordType];
      if (v8)
      {
        v11 = [v9 initWithRecordType:v10 zoneID:v8];
      }

      else
      {
        v11 = [v9 initWithRecordType:v10];
      }

      v19 = v11;

      v20 = [(DRSSubmitLogToCKContainerRequest *)self recordDictionary];
      v28 = MEMORY[0x277D85DD0];
      v29 = 3221225472;
      v30 = __74__DRSSubmitLogToCKContainerRequest_CKRecord_Private__recordRepresentation__block_invoke;
      v31 = &unk_27899F010;
      v14 = v19;
      v32 = v14;
      [v20 enumerateKeysAndObjectsUsingBlock:&v28];

      v21 = [(DRSRequest *)self fileAssets:v28];
      v22 = [v21 firstObject];

      if (v22)
      {
        v23 = [(DRSSubmitLogToCKContainerRequest *)self fileAssetField];
        [v14 setObject:v22 forKeyedSubscript:v23];

        v13 = v14;
      }

      else
      {
        v24 = DPLogHandle_CKRecordError();
        if (os_signpost_enabled(v24))
        {
          v25 = [(DRSRequest *)self requestID];
          *buf = 138543362;
          v35 = v25;
          _os_signpost_emit_with_name_impl(&dword_232906000, v24, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "MissingFileAsset", "No file asset found for %{public}@", buf, 0xCu);
        }

        v13 = 0;
      }
    }

    else
    {
      v14 = DPLogHandle_CKRecordError();
      if (os_signpost_enabled(v14))
      {
        v15 = [(DRSSubmitLogToCKContainerRequest *)self debugDescription];
        v16 = [v7 localizedDescription];
        v17 = v16;
        v18 = @"Unknown error";
        if (v16)
        {
          v18 = v16;
        }

        *buf = 138543618;
        v35 = v15;
        v36 = 2114;
        v37 = v18;
        _os_signpost_emit_with_name_impl(&dword_232906000, v14, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "MalformedRecordDictionary", "Record dictionary for %{public}@ is malformed: %{public}@", buf, 0x16u);
      }

      v13 = 0;
    }
  }

  else
  {
    v7 = DPLogHandle_CKRecordError();
    if (os_signpost_enabled(v7))
    {
      v12 = [(DRSRequest *)self requestID];
      *buf = 138543362;
      v35 = v12;
      _os_signpost_emit_with_name_impl(&dword_232906000, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "MissingFilePaths", "No file paths found for %{public}@", buf, 0xCu);
    }

    v13 = 0;
  }

  v26 = *MEMORY[0x277D85DE8];

  return v13;
}

@end