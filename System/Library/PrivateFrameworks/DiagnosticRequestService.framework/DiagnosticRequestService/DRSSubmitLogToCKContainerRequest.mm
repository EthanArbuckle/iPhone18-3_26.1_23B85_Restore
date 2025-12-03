@interface DRSSubmitLogToCKContainerRequest
+ (BOOL)_requestMOHasRequiredFields_ON_MOC_QUEUE:(id)e;
+ (id)safeguardArchiveZoneID;
+ (id)xcRecordZoneID;
- (BOOL)isEqualToRequest:(id)request;
- (DRSSubmitLogToCKContainerRequest)initWithXPCDict:(id)dict;
- (id)_initWithSubmitLogToCKContainerRequestMO_ON_MOC_QUEUE:(id)e;
- (id)debugDescription;
- (id)recordRepresentation;
- (id)zoneID;
- (void)_configureRequestMO:(id)o;
@end

@implementation DRSSubmitLogToCKContainerRequest

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = DRSSubmitLogToCKContainerRequest;
  v4 = [(DRSRequest *)&v11 debugDescription];
  containerName = [(DRSSubmitLogToCKContainerRequest *)self containerName];
  recordType = [(DRSSubmitLogToCKContainerRequest *)self recordType];
  fileAssetField = [(DRSSubmitLogToCKContainerRequest *)self fileAssetField];
  recordDictionary = [(DRSSubmitLogToCKContainerRequest *)self recordDictionary];
  v9 = [v3 stringWithFormat:@"%@ %@ %@ %@ %@", v4, containerName, recordType, fileAssetField, recordDictionary];

  return v9;
}

- (void)_configureRequestMO:(id)o
{
  oCopy = o;
  v10.receiver = self;
  v10.super_class = DRSSubmitLogToCKContainerRequest;
  [(DRSSubmitLogRequest *)&v10 _configureRequestMO:oCopy];
  v5 = oCopy;
  containerName = [(DRSSubmitLogToCKContainerRequest *)self containerName];
  [v5 setContainerName:containerName];

  recordType = [(DRSSubmitLogToCKContainerRequest *)self recordType];
  [v5 setRecordType:recordType];

  fileAssetField = [(DRSSubmitLogToCKContainerRequest *)self fileAssetField];
  [v5 setFileAssetField:fileAssetField];

  recordDictionaryData = [(DRSSubmitLogToCKContainerRequest *)self recordDictionaryData];
  [v5 setRecordDictionaryData:recordDictionaryData];
}

- (DRSSubmitLogToCKContainerRequest)initWithXPCDict:(id)dict
{
  v43 = *MEMORY[0x277D85DE8];
  dictCopy = dict;
  v39.receiver = self;
  v39.super_class = DRSSubmitLogToCKContainerRequest;
  v5 = [(DRSRequest *)&v39 initWithXPCDict:dictCopy];
  if (v5)
  {
    string = xpc_dictionary_get_string(dictCopy, "containerName");
    if (!string)
    {
      goto LABEL_27;
    }

    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:string];
    containerName = v5->_containerName;
    v5->_containerName = v7;

    v9 = xpc_dictionary_get_string(dictCopy, "RecordType");
    if (!v9)
    {
      goto LABEL_27;
    }

    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:v9];
    recordType = v5->_recordType;
    v5->_recordType = v10;

    v12 = xpc_dictionary_get_string(dictCopy, "FileAssetField");
    if (!v12)
    {
      goto LABEL_27;
    }

    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:v12];
    fileAssetField = v5->_fileAssetField;
    v5->_fileAssetField = v13;

    length = 0;
    data = xpc_dictionary_get_data(dictCopy, "RecordDictionaryData", &length);
    if (data && length)
    {
      v16 = [MEMORY[0x277CBEA90] dataWithBytes:data length:?];
      recordDictionaryData = v5->_recordDictionaryData;
      v5->_recordDictionaryData = v16;

      recordDictionaryData = [(DRSSubmitLogToCKContainerRequest *)v5 recordDictionaryData];
      v19 = DRSDictionaryForData(recordDictionaryData);
      recordDictionary = v5->_recordDictionary;
      v5->_recordDictionary = v19;

      recordDictionary = [(DRSSubmitLogToCKContainerRequest *)v5 recordDictionary];

      if (recordDictionary)
      {
        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        recordDictionary2 = [(DRSSubmitLogToCKContainerRequest *)v5 recordDictionary];
        allKeys = [recordDictionary2 allKeys];

        v24 = [allKeys countByEnumeratingWithState:&v34 objects:v42 count:16];
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
                objc_enumerationMutation(allKeys);
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

            v25 = [allKeys countByEnumeratingWithState:&v34 objects:v42 count:16];
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

      allKeys = DPLogHandle_SubmitLogToCKContainerError();
      if (!os_signpost_enabled(allKeys))
      {
        goto LABEL_26;
      }

      *buf = 0;
      v30 = "FailedToDeserializeRecordDictionaryData";
    }

    else
    {
      allKeys = DPLogHandle_SubmitLogToCKContainerError();
      if (!os_signpost_enabled(allKeys))
      {
LABEL_26:

LABEL_27:
        v29 = 0;
        goto LABEL_28;
      }

      *buf = 0;
      v30 = "SubmitLogToCKContainerMissingRecordData";
    }

    _os_signpost_emit_with_name_impl(&dword_232906000, allKeys, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v30, &unk_232980861, buf, 2u);
    goto LABEL_26;
  }

LABEL_17:
  v29 = v5;
LABEL_28:

  v32 = *MEMORY[0x277D85DE8];
  return v29;
}

+ (BOOL)_requestMOHasRequiredFields_ON_MOC_QUEUE:(id)e
{
  eCopy = e;
  v9.receiver = self;
  v9.super_class = &OBJC_METACLASS___DRSSubmitLogToCKContainerRequest;
  if (objc_msgSendSuper2(&v9, sel__requestMOHasRequiredFields_ON_MOC_QUEUE_, eCopy))
  {
    v5 = eCopy;
    containerName = [v5 containerName];

    if (containerName)
    {
      containerName = [v5 recordType];

      if (containerName)
      {
        containerName = [v5 fileAssetField];

        if (containerName)
        {
          recordDictionaryData = [v5 recordDictionaryData];
          LOBYTE(containerName) = recordDictionaryData != 0;
        }
      }
    }
  }

  else
  {
    LOBYTE(containerName) = 0;
  }

  return containerName;
}

- (id)_initWithSubmitLogToCKContainerRequestMO_ON_MOC_QUEUE:(id)e
{
  eCopy = e;
  v24.receiver = self;
  v24.super_class = DRSSubmitLogToCKContainerRequest;
  v5 = [(DRSSubmitLogRequest *)&v24 _initWithSubmitLogRequestMO_ON_MOC_QUEUE:eCopy];
  if (!v5)
  {
    goto LABEL_4;
  }

  containerName = [eCopy containerName];
  v7 = v5[18];
  v5[18] = containerName;

  recordType = [eCopy recordType];
  v9 = v5[19];
  v5[19] = recordType;

  recordDictionaryData = [eCopy recordDictionaryData];
  v11 = v5[21];
  v5[21] = recordDictionaryData;

  recordDictionaryData2 = [v5 recordDictionaryData];

  if (!recordDictionaryData2)
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

  fileAssetField = [eCopy fileAssetField];
  v14 = v5[20];
  v5[20] = fileAssetField;

  recordDictionaryData3 = [v5 recordDictionaryData];
  v16 = DRSDictionaryForData(recordDictionaryData3);
  v17 = v5[22];
  v5[22] = v16;

  recordDictionary = [v5 recordDictionary];

  if (!recordDictionary)
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

- (BOOL)isEqualToRequest:(id)request
{
  requestCopy = request;
  v16.receiver = self;
  v16.super_class = DRSSubmitLogToCKContainerRequest;
  if ([(DRSSubmitLogRequest *)&v16 isEqualToRequest:requestCopy])
  {
    v5 = requestCopy;
    containerName = [(DRSSubmitLogToCKContainerRequest *)self containerName];
    containerName2 = [v5 containerName];
    if ([containerName isEqualToString:containerName2])
    {
      recordType = [(DRSSubmitLogToCKContainerRequest *)self recordType];
      recordType2 = [v5 recordType];
      if ([recordType isEqualToString:recordType2])
      {
        fileAssetField = [(DRSSubmitLogToCKContainerRequest *)self fileAssetField];
        fileAssetField2 = [v5 fileAssetField];
        if ([fileAssetField isEqualToString:fileAssetField2])
        {
          recordDictionaryData = [(DRSSubmitLogToCKContainerRequest *)self recordDictionaryData];
          recordDictionaryData2 = [v5 recordDictionaryData];
          v13 = [recordDictionaryData isEqualToData:recordDictionaryData2];
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
  teamID = [(DRSRequest *)self teamID];
  v4 = [teamID isEqualToString:kDRSDMPPSTeamID[0]];

  if (!v4)
  {
    goto LABEL_6;
  }

  issueCategory = [(DRSRequest *)self issueCategory];
  v6 = [issueCategory isEqualToString:kDRSDMPPSXCArchiveIssueCategory[0]];

  if (v6)
  {
    xcRecordZoneID = [objc_opt_class() xcRecordZoneID];
    goto LABEL_7;
  }

  issueCategory2 = [(DRSRequest *)self issueCategory];
  v9 = [issueCategory2 isEqualToString:kDRSDMPPSSafeguardArchiveIssueCategory[0]];

  if (v9)
  {
    xcRecordZoneID = [objc_opt_class() safeguardArchiveZoneID];
  }

  else
  {
LABEL_6:
    xcRecordZoneID = 0;
  }

LABEL_7:

  return xcRecordZoneID;
}

- (id)recordRepresentation
{
  v38 = *MEMORY[0x277D85DE8];
  logs = [(DRSRequest *)self logs];
  v4 = [logs count];

  if (v4)
  {
    recordDictionary = [(DRSSubmitLogToCKContainerRequest *)self recordDictionary];
    v33 = 0;
    v6 = DRValidateCKRecordDictionary(recordDictionary, &v33);
    v7 = v33;

    if (v6)
    {
      zoneID = [(DRSSubmitLogToCKContainerRequest *)self zoneID];
      v9 = objc_alloc(MEMORY[0x277CBC5A0]);
      recordType = [(DRSSubmitLogToCKContainerRequest *)self recordType];
      if (zoneID)
      {
        v11 = [v9 initWithRecordType:recordType zoneID:zoneID];
      }

      else
      {
        v11 = [v9 initWithRecordType:recordType];
      }

      v19 = v11;

      recordDictionary2 = [(DRSSubmitLogToCKContainerRequest *)self recordDictionary];
      v28 = MEMORY[0x277D85DD0];
      v29 = 3221225472;
      v30 = __74__DRSSubmitLogToCKContainerRequest_CKRecord_Private__recordRepresentation__block_invoke;
      v31 = &unk_27899F010;
      v14 = v19;
      v32 = v14;
      [recordDictionary2 enumerateKeysAndObjectsUsingBlock:&v28];

      v21 = [(DRSRequest *)self fileAssets:v28];
      firstObject = [v21 firstObject];

      if (firstObject)
      {
        fileAssetField = [(DRSSubmitLogToCKContainerRequest *)self fileAssetField];
        [v14 setObject:firstObject forKeyedSubscript:fileAssetField];

        v13 = v14;
      }

      else
      {
        v24 = DPLogHandle_CKRecordError();
        if (os_signpost_enabled(v24))
        {
          requestID = [(DRSRequest *)self requestID];
          *buf = 138543362;
          v35 = requestID;
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
        localizedDescription = [v7 localizedDescription];
        v17 = localizedDescription;
        v18 = @"Unknown error";
        if (localizedDescription)
        {
          v18 = localizedDescription;
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
      requestID2 = [(DRSRequest *)self requestID];
      *buf = 138543362;
      v35 = requestID2;
      _os_signpost_emit_with_name_impl(&dword_232906000, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "MissingFilePaths", "No file paths found for %{public}@", buf, 0xCu);
    }

    v13 = 0;
  }

  v26 = *MEMORY[0x277D85DE8];

  return v13;
}

@end