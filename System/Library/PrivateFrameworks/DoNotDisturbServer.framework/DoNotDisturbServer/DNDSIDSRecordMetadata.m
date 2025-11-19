@interface DNDSIDSRecordMetadata
+ (id)newWithDictionaryRepresentation:(id)a3 context:(id)a4;
- (BOOL)isEqual:(id)a3;
- (DNDSIDSRecordMetadata)initWithRecordID:(id)a3 lastModified:(id)a4 deleted:(BOOL)a5;
- (NSString)description;
- (id)_initWithRecordMetadata:(id)a3;
- (id)dictionaryRepresentationWithContext:(id)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
@end

@implementation DNDSIDSRecordMetadata

- (DNDSIDSRecordMetadata)initWithRecordID:(id)a3 lastModified:(id)a4 deleted:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v16.receiver = self;
  v16.super_class = DNDSIDSRecordMetadata;
  v10 = [(DNDSIDSRecordMetadata *)&v16 init];
  if (v10)
  {
    v11 = [v8 copy];
    recordID = v10->_recordID;
    v10->_recordID = v11;

    v13 = [v9 copy];
    lastModified = v10->_lastModified;
    v10->_lastModified = v13;

    v10->_deleted = a5;
  }

  return v10;
}

- (id)_initWithRecordMetadata:(id)a3
{
  v4 = a3;
  v5 = [v4 recordID];
  v6 = [v4 lastModified];
  v7 = [v4 isDeleted];

  v8 = [(DNDSIDSRecordMetadata *)self initWithRecordID:v5 lastModified:v6 deleted:v7];
  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v7 = a3;
  if (self == v7)
  {
    LOBYTE(v14) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
      v9 = [(DNDSIDSRecordMetadata *)self recordID];
      v10 = [(DNDSIDSRecordMetadata *)v8 recordID];
      if (v9 != v10)
      {
        v11 = [(DNDSIDSRecordMetadata *)self recordID];
        if (!v11)
        {
          LOBYTE(v14) = 0;
          goto LABEL_27;
        }

        v3 = v11;
        v12 = [(DNDSIDSRecordMetadata *)v8 recordID];
        if (!v12)
        {
          LOBYTE(v14) = 0;
LABEL_26:

          goto LABEL_27;
        }

        v4 = v12;
        v13 = [(DNDSIDSRecordMetadata *)self recordID];
        v5 = [(DNDSIDSRecordMetadata *)v8 recordID];
        if (![v13 isEqual:v5])
        {
          LOBYTE(v14) = 0;
LABEL_25:

          goto LABEL_26;
        }

        v26 = v5;
        v27 = v13;
        v28 = v4;
      }

      v15 = [(DNDSIDSRecordMetadata *)self lastModified];
      v16 = [(DNDSIDSRecordMetadata *)v8 lastModified];
      if (v15 == v16)
      {
        goto LABEL_16;
      }

      v17 = [(DNDSIDSRecordMetadata *)self lastModified];
      if (!v17)
      {

        LOBYTE(v14) = 0;
        goto LABEL_24;
      }

      v5 = v17;
      v18 = [(DNDSIDSRecordMetadata *)v8 lastModified];
      if (!v18)
      {
        LOBYTE(v14) = 0;
        goto LABEL_22;
      }

      v24 = v18;
      v19 = [(DNDSIDSRecordMetadata *)self lastModified];
      v20 = [(DNDSIDSRecordMetadata *)v8 lastModified];
      v25 = v19;
      v21 = v19;
      v4 = v20;
      if ([v21 isEqual:v20])
      {
LABEL_16:
        v22 = [(DNDSIDSRecordMetadata *)self isDeleted];
        v14 = v22 ^ [(DNDSIDSRecordMetadata *)v8 isDeleted]^ 1;
        if (v15 == v16)
        {
LABEL_23:

LABEL_24:
          v13 = v27;
          v4 = v28;
          v5 = v26;
          if (v9 != v10)
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
  v5 = [(DNDSIDSRecordMetadata *)self recordID];
  v6 = [(DNDSIDSRecordMetadata *)self lastModified];
  v7 = [(DNDSIDSRecordMetadata *)self isDeleted];
  v8 = "NO";
  if (v7)
  {
    v8 = "YES";
  }

  v9 = [v3 stringWithFormat:@"<%@: %p recordID: %@; lastModified: %@; deleted: %s>", v4, self, v5, v6, v8];;

  return v9;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [DNDSMutableIDSRecordMetadata alloc];

  return [(DNDSIDSRecordMetadata *)v4 _initWithRecordMetadata:self];
}

+ (id)newWithDictionaryRepresentation:(id)a3 context:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 bs_safeDictionaryForKey:@"recordID"];
  v9 = [DNDSIDSRecordID newWithDictionaryRepresentation:v8 context:v6];

  v10 = MEMORY[0x277CBEAA8];
  v11 = [v7 bs_safeNumberForKey:@"lastModified"];
  [v11 doubleValue];
  v12 = [v10 dateWithTimeIntervalSinceReferenceDate:?];

  v13 = [v7 bs_safeNumberForKey:@"deleted"];

  v14 = [v13 BOOLValue];
  v15 = [[a1 alloc] initWithRecordID:v9 lastModified:v12 deleted:v14];

  return v15;
}

- (id)dictionaryRepresentationWithContext:(id)a3
{
  v12[3] = *MEMORY[0x277D85DE8];
  v11[0] = @"recordID";
  v4 = [(DNDSIDSRecordID *)self->_recordID dictionaryRepresentationWithContext:a3];
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