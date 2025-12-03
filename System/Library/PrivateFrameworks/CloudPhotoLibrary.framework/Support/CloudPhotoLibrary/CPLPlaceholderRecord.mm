@interface CPLPlaceholderRecord
- (CPLPlaceholderRecord)initWithCKRecord:(id)record scopedIdentifier:(id)identifier;
- (id)allRelatedCKRecordsInZoneID:(id)d identifier:(id)identifier;
@end

@implementation CPLPlaceholderRecord

- (CPLPlaceholderRecord)initWithCKRecord:(id)record scopedIdentifier:(id)identifier
{
  recordCopy = record;
  identifierCopy = identifier;
  recordType = [recordCopy recordType];
  v9 = CPLRecordChangeClassForCKRecordType(recordType);

  if (v9)
  {
    ckPropertyForRelatedIdentifier = [v9 ckPropertyForRelatedIdentifier];
    if (ckPropertyForRelatedIdentifier)
    {
      v11 = [recordCopy objectForKeyedSubscript:ckPropertyForRelatedIdentifier];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        recordID = [v11 recordID];
        recordName = [recordID recordName];

        v11 = recordName;
        goto LABEL_7;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_7:
        if (v11)
        {
          relatedRecordClass = [v9 relatedRecordClass];
        }

        else
        {
          relatedRecordClass = 0;
        }

        goto LABEL_12;
      }
    }

    relatedRecordClass = 0;
    v11 = 0;
LABEL_12:
    self = [(CPLPlaceholderRecord *)self initWithRecordClass:v9 scopedIdentifier:identifierCopy relatedRecordClass:relatedRecordClass relatedIdentifier:v11];

    selfCopy = self;
    goto LABEL_13;
  }

  selfCopy = 0;
LABEL_13:

  return selfCopy;
}

- (id)allRelatedCKRecordsInZoneID:(id)d identifier:(id)identifier
{
  dCopy = d;
  identifierCopy = identifier;
  recordClass = [(CPLPlaceholderRecord *)self recordClass];
  v9 = CKRecordTypeForCPLRecordChangeClass(recordClass);
  if (v9)
  {
    v10 = [[CKRecordID alloc] initWithRecordName:identifierCopy zoneID:dCopy];
    v11 = [[CKRecord alloc] initWithRecordType:v9 recordID:v10];
    relatedIdentifier = [(CPLPlaceholderRecord *)self relatedIdentifier];
    if (!relatedIdentifier)
    {
      goto LABEL_6;
    }

    v13 = CKRecordTypeForCPLRecordChangeClass([(CPLPlaceholderRecord *)self relatedRecordClass]);
    if (!v13)
    {
      goto LABEL_6;
    }

    v14 = v13;
    v15 = [[CKRecordID alloc] initWithRecordName:relatedIdentifier zoneID:dCopy];
    v16 = [[CKRecord alloc] initWithRecordType:v14 recordID:v15];
    [recordClass setRelatedValueOnRecord:v11 fromRelatedRecord:v16];

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