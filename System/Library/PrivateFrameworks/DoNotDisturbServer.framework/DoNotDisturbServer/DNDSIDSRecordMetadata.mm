@interface DNDSIDSRecordMetadata
+ (id)newWithDictionaryRepresentation:(id)representation context:(id)context;
- (BOOL)isEqual:(id)equal;
- (DNDSIDSRecordMetadata)initWithRecordID:(id)d lastModified:(id)modified deleted:(BOOL)deleted;
- (NSString)description;
- (id)_initWithRecordMetadata:(id)metadata;
- (id)dictionaryRepresentationWithContext:(id)context;
- (id)mutableCopyWithZone:(_NSZone *)zone;
@end

@implementation DNDSIDSRecordMetadata

- (DNDSIDSRecordMetadata)initWithRecordID:(id)d lastModified:(id)modified deleted:(BOOL)deleted
{
  dCopy = d;
  modifiedCopy = modified;
  v16.receiver = self;
  v16.super_class = DNDSIDSRecordMetadata;
  v10 = [(DNDSIDSRecordMetadata *)&v16 init];
  if (v10)
  {
    v11 = [dCopy copy];
    recordID = v10->_recordID;
    v10->_recordID = v11;

    v13 = [modifiedCopy copy];
    lastModified = v10->_lastModified;
    v10->_lastModified = v13;

    v10->_deleted = deleted;
  }

  return v10;
}

- (id)_initWithRecordMetadata:(id)metadata
{
  metadataCopy = metadata;
  recordID = [metadataCopy recordID];
  lastModified = [metadataCopy lastModified];
  isDeleted = [metadataCopy isDeleted];

  v8 = [(DNDSIDSRecordMetadata *)self initWithRecordID:recordID lastModified:lastModified deleted:isDeleted];
  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    LOBYTE(v14) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = equalCopy;
      recordID = [(DNDSIDSRecordMetadata *)self recordID];
      recordID2 = [(DNDSIDSRecordMetadata *)v8 recordID];
      if (recordID != recordID2)
      {
        recordID3 = [(DNDSIDSRecordMetadata *)self recordID];
        if (!recordID3)
        {
          LOBYTE(v14) = 0;
          goto LABEL_27;
        }

        v3 = recordID3;
        recordID4 = [(DNDSIDSRecordMetadata *)v8 recordID];
        if (!recordID4)
        {
          LOBYTE(v14) = 0;
LABEL_26:

          goto LABEL_27;
        }

        v4 = recordID4;
        recordID5 = [(DNDSIDSRecordMetadata *)self recordID];
        recordID6 = [(DNDSIDSRecordMetadata *)v8 recordID];
        if (![recordID5 isEqual:recordID6])
        {
          LOBYTE(v14) = 0;
LABEL_25:

          goto LABEL_26;
        }

        v26 = recordID6;
        v27 = recordID5;
        v28 = v4;
      }

      lastModified = [(DNDSIDSRecordMetadata *)self lastModified];
      lastModified2 = [(DNDSIDSRecordMetadata *)v8 lastModified];
      if (lastModified == lastModified2)
      {
        goto LABEL_16;
      }

      lastModified3 = [(DNDSIDSRecordMetadata *)self lastModified];
      if (!lastModified3)
      {

        LOBYTE(v14) = 0;
        goto LABEL_24;
      }

      recordID6 = lastModified3;
      lastModified4 = [(DNDSIDSRecordMetadata *)v8 lastModified];
      if (!lastModified4)
      {
        LOBYTE(v14) = 0;
        goto LABEL_22;
      }

      v24 = lastModified4;
      lastModified5 = [(DNDSIDSRecordMetadata *)self lastModified];
      lastModified6 = [(DNDSIDSRecordMetadata *)v8 lastModified];
      v25 = lastModified5;
      v21 = lastModified5;
      v4 = lastModified6;
      if ([v21 isEqual:lastModified6])
      {
LABEL_16:
        isDeleted = [(DNDSIDSRecordMetadata *)self isDeleted];
        v14 = isDeleted ^ [(DNDSIDSRecordMetadata *)v8 isDeleted]^ 1;
        if (lastModified == lastModified2)
        {
LABEL_23:

LABEL_24:
          recordID5 = v27;
          v4 = v28;
          recordID6 = v26;
          if (recordID != recordID2)
          {
            goto LABEL_25;
          }

LABEL_27:

          goto LABEL_28;
        }
      }

      else
      {
        LOBYTE(v14) = 0;
      }

LABEL_22:
      goto LABEL_23;
    }

    LOBYTE(v14) = 0;
  }

LABEL_28:

  return v14;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  recordID = [(DNDSIDSRecordMetadata *)self recordID];
  lastModified = [(DNDSIDSRecordMetadata *)self lastModified];
  isDeleted = [(DNDSIDSRecordMetadata *)self isDeleted];
  v8 = "NO";
  if (isDeleted)
  {
    v8 = "YES";
  }

  v9 = [v3 stringWithFormat:@"<%@: %p recordID: %@; lastModified: %@; deleted: %s>", v4, self, recordID, lastModified, v8];;

  return v9;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [DNDSMutableIDSRecordMetadata alloc];

  return [(DNDSIDSRecordMetadata *)v4 _initWithRecordMetadata:self];
}

+ (id)newWithDictionaryRepresentation:(id)representation context:(id)context
{
  contextCopy = context;
  representationCopy = representation;
  v8 = [representationCopy bs_safeDictionaryForKey:@"recordID"];
  v9 = [DNDSIDSRecordID newWithDictionaryRepresentation:v8 context:contextCopy];

  v10 = MEMORY[0x277CBEAA8];
  v11 = [representationCopy bs_safeNumberForKey:@"lastModified"];
  [v11 doubleValue];
  v12 = [v10 dateWithTimeIntervalSinceReferenceDate:?];

  v13 = [representationCopy bs_safeNumberForKey:@"deleted"];

  bOOLValue = [v13 BOOLValue];
  v15 = [[self alloc] initWithRecordID:v9 lastModified:v12 deleted:bOOLValue];

  return v15;
}

- (id)dictionaryRepresentationWithContext:(id)context
{
  v12[3] = *MEMORY[0x277D85DE8];
  v11[0] = @"recordID";
  v4 = [(DNDSIDSRecordID *)self->_recordID dictionaryRepresentationWithContext:context];
  v12[0] = v4;
  v11[1] = @"lastModified";
  v5 = MEMORY[0x277CCABB0];
  [(NSDate *)self->_lastModified timeIntervalSinceReferenceDate];
  v6 = [v5 numberWithDouble:?];
  v12[1] = v6;
  v11[2] = @"deleted";
  v7 = [MEMORY[0x277CCABB0] numberWithBool:self->_deleted];
  v12[2] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:3];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

@end