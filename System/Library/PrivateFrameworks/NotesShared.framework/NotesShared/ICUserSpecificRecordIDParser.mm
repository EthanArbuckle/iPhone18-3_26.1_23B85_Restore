@interface ICUserSpecificRecordIDParser
+ (BOOL)isUserSpecificRecordID:(id)d;
- (BOOL)isEqual:(id)equal;
- (BOOL)validate;
- (ICUserSpecificRecordIDParser)initWithRecordName:(id)name;
- (ICUserSpecificRecordIDParser)initWithSharedRecordType:(id)type sharedRecordID:(id)d userRecordName:(id)name ownerName:(id)ownerName;
- (id)description;
- (unint64_t)hash;
@end

@implementation ICUserSpecificRecordIDParser

- (ICUserSpecificRecordIDParser)initWithSharedRecordType:(id)type sharedRecordID:(id)d userRecordName:(id)name ownerName:(id)ownerName
{
  typeCopy = type;
  dCopy = d;
  v12 = MEMORY[0x277CBEB18];
  ownerNameCopy = ownerName;
  nameCopy = name;
  v15 = [v12 arrayWithCapacity:2];
  v38 = typeCopy;
  v16 = [objc_opt_class() userSpecificRecordTypeForSharedRecordType:typeCopy];
  [v15 setObject:v16 atIndexedSubscript:0];

  [v15 setObject:nameCopy atIndexedSubscript:1];
  v17 = [MEMORY[0x277CBEB18] arrayWithCapacity:4];
  zoneID = [dCopy zoneID];
  [zoneID databaseScope];
  v19 = CKDatabaseScopeString();
  [v17 setObject:v19 atIndexedSubscript:0];

  zoneID2 = [dCopy zoneID];
  zoneName = [zoneID2 zoneName];
  [v17 setObject:zoneName atIndexedSubscript:1];

  [v17 setObject:ownerNameCopy atIndexedSubscript:2];
  recordName = [dCopy recordName];
  [v17 setObject:recordName atIndexedSubscript:3];

  v23 = [MEMORY[0x277CBEB18] arrayWithCapacity:2];
  v24 = [v15 componentsJoinedByString:@"::"];
  [v23 setObject:v24 atIndexedSubscript:0];

  v25 = [v17 componentsJoinedByString:@"::"];
  [v23 setObject:v25 atIndexedSubscript:1];

  v26 = [v23 componentsJoinedByString:@"/"];
  if ([v26 length] < 0x100)
  {
    dCopy2 = d;
    v29 = objc_alloc(MEMORY[0x277CBC5F8]);
    zoneID3 = [dCopy zoneID];
    zoneName2 = [zoneID3 zoneName];
    v27 = [v29 initWithZoneName:zoneName2 ownerName:*MEMORY[0x277CBBF28]];

    v32 = [objc_alloc(MEMORY[0x277CBC5D0]) initWithRecordName:v26 zoneID:v27];
    v39.receiver = self;
    v39.super_class = ICUserSpecificRecordIDParser;
    self = [(ICUserSpecificRecordIDParser *)&v39 init];
    if (!self || ([v15 objectAtIndexedSubscript:0], v33 = objc_claimAutoreleasedReturnValue(), recordType = self->_recordType, self->_recordType = v33, recordType, objc_storeStrong(&self->_recordID, v32), objc_storeStrong(&self->_sharedRecordType, type), objc_storeStrong(&self->_sharedRecordID, dCopy2), selfCopy = 0, -[ICUserSpecificRecordIDParser validate](self, "validate")))
    {
      selfCopy = self;
    }
  }

  else
  {
    v27 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      [ICUserSpecificRecordIDParser initWithSharedRecordType:sharedRecordID:userRecordName:ownerName:];
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (ICUserSpecificRecordIDParser)initWithRecordName:(id)name
{
  nameCopy = name;
  v5 = [nameCopy componentsSeparatedByString:@"/"];
  if ([v5 count] == 2)
  {
    v6 = [v5 objectAtIndexedSubscript:0];
    v7 = [v6 componentsSeparatedByString:@"::"];
    if ([v7 count] == 2)
    {
      v8 = [v5 objectAtIndexedSubscript:1];
      v9 = [v8 componentsSeparatedByString:@"::"];
      if ([v9 count] == 4)
      {
        v48 = v8;
        v10 = [v7 objectAtIndexedSubscript:0];
        ic_nilWhenEmpty = [v10 ic_nilWhenEmpty];
        v12 = ic_nilWhenEmpty;
        if (ic_nilWhenEmpty)
        {
          v13 = ic_nilWhenEmpty;
        }

        else
        {
          v13 = @"(null)";
        }

        obj = v13;
        v14 = v13;

        v15 = [v7 objectAtIndexedSubscript:1];
        ic_nilWhenEmpty2 = [v15 ic_nilWhenEmpty];
        v17 = ic_nilWhenEmpty2;
        if (ic_nilWhenEmpty2)
        {
          v18 = ic_nilWhenEmpty2;
        }

        else
        {
          v18 = @"(null)";
        }

        v54 = v18;

        v19 = [v9 objectAtIndexedSubscript:1];
        ic_nilWhenEmpty3 = [v19 ic_nilWhenEmpty];
        v21 = ic_nilWhenEmpty3;
        if (ic_nilWhenEmpty3)
        {
          v22 = ic_nilWhenEmpty3;
        }

        else
        {
          v22 = @"(null)";
        }

        v53 = v22;

        v52 = v14;
        v23 = [objc_opt_class() sharedRecordTypeForUserSpecificRecordType:v14];
        ic_nilWhenEmpty4 = [v23 ic_nilWhenEmpty];
        v25 = ic_nilWhenEmpty4;
        if (ic_nilWhenEmpty4)
        {
          v26 = ic_nilWhenEmpty4;
        }

        else
        {
          v26 = @"(null)";
        }

        v45 = v26;
        v50 = v26;

        v27 = [v9 objectAtIndexedSubscript:2];
        ic_nilWhenEmpty5 = [v27 ic_nilWhenEmpty];
        v29 = ic_nilWhenEmpty5;
        if (ic_nilWhenEmpty5)
        {
          v30 = ic_nilWhenEmpty5;
        }

        else
        {
          v30 = @"(null)";
        }

        v31 = v30;

        v51 = v9;
        v32 = [v9 objectAtIndexedSubscript:3];
        ic_nilWhenEmpty6 = [v32 ic_nilWhenEmpty];
        v34 = ic_nilWhenEmpty6;
        if (ic_nilWhenEmpty6)
        {
          v35 = ic_nilWhenEmpty6;
        }

        else
        {
          v35 = @"(null)";
        }

        v36 = v35;

        v47 = [objc_alloc(MEMORY[0x277CBC5F8]) initWithZoneName:v53 ownerName:v54];
        v37 = [objc_alloc(MEMORY[0x277CBC5D0]) initWithRecordName:nameCopy zoneID:v47];
        v38 = v37;
        v49 = v31;
        v39 = [objc_alloc(MEMORY[0x277CBC5F8]) initWithZoneName:v53 ownerName:v31];
        v40 = [objc_alloc(MEMORY[0x277CBC5D0]) initWithRecordName:v36 zoneID:v39];
        v55.receiver = self;
        v55.super_class = ICUserSpecificRecordIDParser;
        v41 = [(ICUserSpecificRecordIDParser *)&v55 init];
        self = v41;
        if (v41 && (objc_storeStrong(&v41->_recordType, obj), objc_storeStrong(&self->_recordID, v37), objc_storeStrong(&self->_sharedRecordType, v45), objc_storeStrong(&self->_sharedRecordID, v40), ![(ICUserSpecificRecordIDParser *)self validate]))
        {
          selfCopy = 0;
        }

        else
        {
          selfCopy = self;
        }

        v9 = v51;
        v43 = v52;
        v8 = v48;
      }

      else
      {
        v43 = os_log_create("com.apple.notes", "Cloud");
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
        {
          [ICUserSpecificRecordIDParser initWithRecordName:];
        }

        selfCopy = 0;
      }
    }

    else
    {
      v8 = os_log_create("com.apple.notes", "Cloud");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        [ICUserSpecificRecordIDParser initWithRecordName:];
      }

      selfCopy = 0;
    }
  }

  else
  {
    v6 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [ICUserSpecificRecordIDParser initWithRecordName:];
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (BOOL)validate
{
  recordType = [(ICUserSpecificRecordIDParser *)self recordType];
  if (![recordType length])
  {

LABEL_15:
    v33 = os_log_create("com.apple.notes", "Cloud");
    if (!os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
LABEL_17:

      return 0;
    }

LABEL_16:
    [ICUserSpecificRecordIDParser validate];
    goto LABEL_17;
  }

  recordType2 = [(ICUserSpecificRecordIDParser *)self recordType];
  v5 = [recordType2 isEqual:@"(null)"];

  if (v5)
  {
    goto LABEL_15;
  }

  recordType3 = [(ICUserSpecificRecordIDParser *)self recordType];
  v7 = [recordType3 hasSuffix:@"_UserSpecific"];

  if ((v7 & 1) == 0)
  {
    v33 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      [ICUserSpecificRecordIDParser validate];
    }

    goto LABEL_17;
  }

  recordID = [(ICUserSpecificRecordIDParser *)self recordID];
  zoneID = [recordID zoneID];
  databaseScope = [zoneID databaseScope];

  if (!databaseScope)
  {
    v33 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      [ICUserSpecificRecordIDParser validate];
    }

    goto LABEL_17;
  }

  recordID2 = [(ICUserSpecificRecordIDParser *)self recordID];
  zoneID2 = [recordID2 zoneID];
  zoneName = [zoneID2 zoneName];
  if (![zoneName length])
  {

LABEL_23:
    v33 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      [ICUserSpecificRecordIDParser validate];
    }

    goto LABEL_17;
  }

  recordID3 = [(ICUserSpecificRecordIDParser *)self recordID];
  zoneID3 = [recordID3 zoneID];
  zoneName2 = [zoneID3 zoneName];
  v17 = [zoneName2 isEqual:@"(null)"];

  if (v17)
  {
    goto LABEL_23;
  }

  recordID4 = [(ICUserSpecificRecordIDParser *)self recordID];
  zoneID4 = [recordID4 zoneID];
  ownerName = [zoneID4 ownerName];
  if (![ownerName length])
  {

LABEL_26:
    v33 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      [ICUserSpecificRecordIDParser validate];
    }

    goto LABEL_17;
  }

  recordID5 = [(ICUserSpecificRecordIDParser *)self recordID];
  zoneID5 = [recordID5 zoneID];
  ownerName2 = [zoneID5 ownerName];
  v24 = [ownerName2 isEqual:@"(null)"];

  if (v24)
  {
    goto LABEL_26;
  }

  recordID6 = [(ICUserSpecificRecordIDParser *)self recordID];
  recordName = [recordID6 recordName];
  if (![recordName length])
  {

LABEL_29:
    v33 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      [ICUserSpecificRecordIDParser validate];
    }

    goto LABEL_17;
  }

  recordID7 = [(ICUserSpecificRecordIDParser *)self recordID];
  recordName2 = [recordID7 recordName];
  v29 = [recordName2 isEqual:@"(null)"];

  if (v29)
  {
    goto LABEL_29;
  }

  recordID8 = [(ICUserSpecificRecordIDParser *)self recordID];
  recordName3 = [recordID8 recordName];
  v32 = [recordName3 containsString:*MEMORY[0x277CBBF28]];

  if (v32)
  {
    v33 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      [ICUserSpecificRecordIDParser validate];
    }

    goto LABEL_17;
  }

  sharedRecordType = [(ICUserSpecificRecordIDParser *)self sharedRecordType];
  if (![sharedRecordType length])
  {

LABEL_42:
    v33 = os_log_create("com.apple.notes", "Cloud");
    if (!os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  sharedRecordType2 = [(ICUserSpecificRecordIDParser *)self sharedRecordType];
  v37 = [sharedRecordType2 isEqual:@"(null)"];

  if (v37)
  {
    goto LABEL_42;
  }

  sharedRecordID = [(ICUserSpecificRecordIDParser *)self sharedRecordID];
  zoneID6 = [sharedRecordID zoneID];
  databaseScope2 = [zoneID6 databaseScope];

  if (!databaseScope2)
  {
    v33 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      [ICUserSpecificRecordIDParser validate];
    }

    goto LABEL_17;
  }

  sharedRecordID2 = [(ICUserSpecificRecordIDParser *)self sharedRecordID];
  zoneID7 = [sharedRecordID2 zoneID];
  zoneName3 = [zoneID7 zoneName];
  if (![zoneName3 length])
  {

LABEL_47:
    v33 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      [ICUserSpecificRecordIDParser validate];
    }

    goto LABEL_17;
  }

  sharedRecordID3 = [(ICUserSpecificRecordIDParser *)self sharedRecordID];
  zoneID8 = [sharedRecordID3 zoneID];
  zoneName4 = [zoneID8 zoneName];
  v47 = [zoneName4 isEqual:@"(null)"];

  if (v47)
  {
    goto LABEL_47;
  }

  sharedRecordID4 = [(ICUserSpecificRecordIDParser *)self sharedRecordID];
  zoneID9 = [sharedRecordID4 zoneID];
  ownerName3 = [zoneID9 ownerName];
  if (![ownerName3 length])
  {

LABEL_50:
    v33 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      [ICUserSpecificRecordIDParser validate];
    }

    goto LABEL_17;
  }

  sharedRecordID5 = [(ICUserSpecificRecordIDParser *)self sharedRecordID];
  zoneID10 = [sharedRecordID5 zoneID];
  ownerName4 = [zoneID10 ownerName];
  v54 = [ownerName4 isEqual:@"(null)"];

  if (v54)
  {
    goto LABEL_50;
  }

  sharedRecordID6 = [(ICUserSpecificRecordIDParser *)self sharedRecordID];
  recordName4 = [sharedRecordID6 recordName];
  if (![recordName4 length])
  {

LABEL_53:
    v33 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      [ICUserSpecificRecordIDParser validate];
    }

    goto LABEL_17;
  }

  sharedRecordID7 = [(ICUserSpecificRecordIDParser *)self sharedRecordID];
  recordName5 = [sharedRecordID7 recordName];
  v59 = [recordName5 isEqual:@"(null)"];

  if (v59)
  {
    goto LABEL_53;
  }

  return 1;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  recordType = [(ICUserSpecificRecordIDParser *)self recordType];
  recordID = [(ICUserSpecificRecordIDParser *)self recordID];
  sharedRecordType = [(ICUserSpecificRecordIDParser *)self sharedRecordType];
  sharedRecordID = [(ICUserSpecificRecordIDParser *)self sharedRecordID];
  v10 = [v3 stringWithFormat:@"<%@: %p, recordType: %@, recordID: %@, sharedRecordType: %@, sharedRecordID: %@>", v5, self, recordType, recordID, sharedRecordType, sharedRecordID];

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  if (equal != self)
  {
    equalCopy = equal;
    objc_opt_class();
    v5 = ICDynamicCast();

    recordType = [(ICUserSpecificRecordIDParser *)self recordType];
    recordType2 = [v5 recordType];
    v8 = *MEMORY[0x277CBEEE8];
    if (*MEMORY[0x277CBEEE8] == recordType)
    {
      v9 = 0;
    }

    else
    {
      v9 = recordType;
    }

    recordID = v9;
    if (v8 == recordType2)
    {
      v11 = 0;
    }

    else
    {
      v11 = recordType2;
    }

    v12 = v11;
    if (recordID | v12)
    {
      recordID2 = v12;
      if (recordID)
      {
        v14 = v12 == 0;
      }

      else
      {
        v14 = 1;
      }

      if (v14)
      {
        v15 = 0;
LABEL_58:

        goto LABEL_59;
      }

      v16 = [recordID isEqual:v12];

      if (!v16)
      {
        v15 = 0;
LABEL_59:

        return v15;
      }
    }

    v38 = recordType2;
    recordID = [(ICUserSpecificRecordIDParser *)self recordID];
    recordID2 = [v5 recordID];
    if (v8 == recordID)
    {
      v17 = 0;
    }

    else
    {
      v17 = recordID;
    }

    sharedRecordType = v17;
    if (v8 == recordID2)
    {
      v19 = 0;
    }

    else
    {
      v19 = recordID2;
    }

    v20 = v19;
    if (sharedRecordType | v20)
    {
      sharedRecordType2 = v20;
      if (sharedRecordType)
      {
        v22 = v20 == 0;
      }

      else
      {
        v22 = 1;
      }

      if (v22)
      {
        v15 = 0;
LABEL_56:

LABEL_57:
        recordType2 = v38;
        goto LABEL_58;
      }

      v23 = [sharedRecordType isEqual:v20];

      if (!v23)
      {
        v15 = 0;
        goto LABEL_57;
      }
    }

    v36 = recordType;
    sharedRecordType = [(ICUserSpecificRecordIDParser *)self sharedRecordType];
    v37 = v5;
    sharedRecordType2 = [v5 sharedRecordType];
    if (v8 == sharedRecordType)
    {
      v24 = 0;
    }

    else
    {
      v24 = sharedRecordType;
    }

    sharedRecordID = v24;
    if (v8 == sharedRecordType2)
    {
      v26 = 0;
    }

    else
    {
      v26 = sharedRecordType2;
    }

    v27 = v26;
    if (sharedRecordID | v27)
    {
      sharedRecordID2 = v27;
      v15 = 0;
      if (!sharedRecordID || !v27)
      {
LABEL_54:

LABEL_55:
        recordType = v36;
        v5 = v37;
        goto LABEL_56;
      }

      v29 = [sharedRecordID isEqual:v27];

      if (!v29)
      {
        v15 = 0;
        goto LABEL_55;
      }
    }

    sharedRecordID = [(ICUserSpecificRecordIDParser *)self sharedRecordID];
    sharedRecordID2 = [v37 sharedRecordID];
    if (v8 == sharedRecordID)
    {
      v30 = 0;
    }

    else
    {
      v30 = sharedRecordID;
    }

    v31 = v30;
    if (v8 == sharedRecordID2)
    {
      v32 = 0;
    }

    else
    {
      v32 = sharedRecordID2;
    }

    v33 = v32;
    v34 = v33;
    if (v31 | v33)
    {
      v15 = 0;
      if (v31 && v33)
      {
        v15 = [v31 isEqual:v33];
      }
    }

    else
    {
      v15 = 1;
    }

    goto LABEL_54;
  }

  return 1;
}

- (unint64_t)hash
{
  result = self->_hash;
  if (!result)
  {
    recordType = [(ICUserSpecificRecordIDParser *)self recordType];
    v5 = [recordType hash];
    recordID = [(ICUserSpecificRecordIDParser *)self recordID];
    v7 = [recordID hash];
    sharedRecordType = [(ICUserSpecificRecordIDParser *)self sharedRecordType];
    [sharedRecordType hash];
    sharedRecordID = [(ICUserSpecificRecordIDParser *)self sharedRecordID];
    [sharedRecordID hash];
    self->_hash = ICHashWithHashKeys(v5, v10, v11, v12, v13, v14, v15, v16, v7);

    return self->_hash;
  }

  return result;
}

+ (BOOL)isUserSpecificRecordID:(id)d
{
  recordName = [d recordName];
  v4 = [recordName componentsSeparatedByString:@"/"];

  if ([v4 count] == 2)
  {
    v5 = [v4 objectAtIndexedSubscript:0];
    v6 = [v5 componentsSeparatedByString:@"::"];
    if ([v6 count] == 2)
    {
      v7 = [v4 objectAtIndexedSubscript:1];
      v8 = [v7 componentsSeparatedByString:@"::"];
      v9 = [v8 count] == 4;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end