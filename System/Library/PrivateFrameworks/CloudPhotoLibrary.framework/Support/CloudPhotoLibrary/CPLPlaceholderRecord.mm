@interface CPLPlaceholderRecord
- (CPLPlaceholderRecord)initWithCKRecord:(id)a3 scopedIdentifier:(id)a4;
- (id)allRelatedCKRecordsInZoneID:(id)a3 identifier:(id)a4;
@end

@implementation CPLPlaceholderRecord

- (CPLPlaceholderRecord)initWithCKRecord:(id)a3 scopedIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 recordType];
  v9 = CPLRecordChangeClassForCKRecordType(v8);

  if (v9)
  {
    v10 = [v9 ckPropertyForRelatedIdentifier];
    if (v10)
    {
      v11 = [v6 objectForKeyedSubscript:v10];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = [v11 recordID];
        v13 = [v12 recordName];

        v11 = v13;
        goto LABEL_7;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_7:
        if (v11)
        {
          v15 = [v9 relatedRecordClass];
        }

        else
        {
          v15 = 0;
        }

        goto LABEL_12;
      }
    }

    v15 = 0;
    v11 = 0;
LABEL_12:
    self = [(CPLPlaceholderRecord *)self initWithRecordClass:v9 scopedIdentifier:v7 relatedRecordClass:v15 relatedIdentifier:v11];

    v14 = self;
    goto LABEL_13;
  }

  v14 = 0;
LABEL_13:

  return v14;
}

- (id)allRelatedCKRecordsInZoneID:(id)a3 identifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CPLPlaceholderRecord *)self recordClass];
  v9 = CKRecordTypeForCPLRecordChangeClass(v8);
  if (v9)
  {
    v10 = [[CKRecordID alloc] initWithRecordName:v7 zoneID:v6];
    v11 = [[CKRecord alloc] initWithRecordType:v9 recordID:v10];
    v12 = [(CPLPlaceholderRecord *)self relatedIdentifier];
    if (!v12)
    {
      goto LABEL_6;
    }

    v13 = CKRecordTypeForCPLRecordChangeClass([(CPLPlaceholderRecord *)self relatedRecordClass]);
    if (!v13)
    {
      goto LABEL_6;
    }

    v14 = v13;
    v15 = [[CKRecordID alloc] initWithRecordName:v12 zoneID:v6];
    v16 = [[CKRecord alloc] initWithRecordType:v14 recordID:v15];
    [v8 setRelatedValueOnRecord:v11 fromRelatedRecord:v16];

    if (v16)
    {
      v20[0] = v11;
      v20[1] = v16;
      v17 = [NSArray arrayWithObjects:v20 count:2];
    }

    else
    {
LABEL_6:
      v19 = v11;
      v17 = [NSArray arrayWithObjects:&v19 count:1];
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

@end