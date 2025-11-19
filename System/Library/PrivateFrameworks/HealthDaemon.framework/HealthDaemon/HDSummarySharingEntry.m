@interface HDSummarySharingEntry
- (BOOL)isEqual:(id)a3;
- (HDSummarySharingEntry)initWithCodableEntry:(id)a3 CNContactIdentifier:(id)a4 isPaused:(BOOL)a5;
- (HDSummarySharingEntry)initWithCoder:(id)a3;
- (id)description;
- (id)sharingEntry;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HDSummarySharingEntry

- (HDSummarySharingEntry)initWithCodableEntry:(id)a3 CNContactIdentifier:(id)a4 isPaused:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  v16.receiver = self;
  v16.super_class = HDSummarySharingEntry;
  v11 = [(HDSummarySharingEntry *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_codableEntry, a3);
    v13 = [v10 copy];
    CNContactIdentifier = v12->_CNContactIdentifier;
    v12->_CNContactIdentifier = v13;

    v12->_isPaused = a5;
  }

  return v12;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@:%p codableEntry=%@, contactIdentifier=%@, isPaused=%d", v5, self, self->_codableEntry, self->_CNContactIdentifier, self->_isPaused];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v7 = a3;
  if (self == v7)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
      codableEntry = self->_codableEntry;
      v10 = [(HDSummarySharingEntry *)v8 codableEntry];
      if (codableEntry != v10)
      {
        v11 = [(HDSummarySharingEntry *)v8 codableEntry];
        if (!v11)
        {
          v14 = 0;
          goto LABEL_24;
        }

        v12 = v11;
        v13 = self->_codableEntry;
        v5 = [(HDSummarySharingEntry *)v8 codableEntry];
        if (![(HDCodableSummarySharingEntry *)v13 isEqual:v5])
        {
          v14 = 0;
LABEL_23:

          goto LABEL_24;
        }

        v22 = v12;
      }

      CNContactIdentifier = self->_CNContactIdentifier;
      v16 = [(HDSummarySharingEntry *)v8 CNContactIdentifier];
      if (CNContactIdentifier != v16)
      {
        v17 = [(HDSummarySharingEntry *)v8 CNContactIdentifier];
        if (!v17)
        {

          v14 = 0;
          goto LABEL_19;
        }

        v3 = v17;
        v21 = v5;
        v18 = self->_CNContactIdentifier;
        v4 = [(HDSummarySharingEntry *)v8 CNContactIdentifier];
        if (![(NSString *)v18 isEqualToString:v4])
        {
          v14 = 0;
          v5 = v21;
          v12 = v22;
LABEL_22:

          if (codableEntry != v10)
          {
            goto LABEL_23;
          }

LABEL_24:

          goto LABEL_25;
        }

        v5 = v21;
      }

      isPaused = self->_isPaused;
      v14 = isPaused == [(HDSummarySharingEntry *)v8 isPaused];
      if (CNContactIdentifier != v16)
      {
        v12 = v22;
        goto LABEL_22;
      }

LABEL_19:
      v12 = v22;
      if (codableEntry == v10)
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    }

    v14 = 0;
  }

LABEL_25:

  return v14;
}

- (id)sharingEntry
{
  v3 = [(HDCodableSummarySharingEntry *)self->_codableEntry sharingEntry];
  [v3 _setCNContactIdentifier:self->_CNContactIdentifier];
  [v3 _setIsPaused:self->_isPaused];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  codableEntry = self->_codableEntry;
  v5 = a3;
  [v5 encodeObject:codableEntry forKey:@"CodableEntry"];
  [v5 encodeObject:self->_CNContactIdentifier forKey:@"CNContactIdentifier"];
  [v5 encodeBool:self->_isPaused forKey:@"IsPaused"];
}

- (HDSummarySharingEntry)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CodableEntry"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CNContactIdentifier"];
  v7 = [v4 decodeBoolForKey:@"IsPaused"];

  v8 = [(HDSummarySharingEntry *)self initWithCodableEntry:v5 CNContactIdentifier:v6 isPaused:v7];
  return v8;
}

@end