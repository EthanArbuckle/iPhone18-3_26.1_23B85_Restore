@interface HDSummarySharingEntry
- (BOOL)isEqual:(id)equal;
- (HDSummarySharingEntry)initWithCodableEntry:(id)entry CNContactIdentifier:(id)identifier isPaused:(BOOL)paused;
- (HDSummarySharingEntry)initWithCoder:(id)coder;
- (id)description;
- (id)sharingEntry;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HDSummarySharingEntry

- (HDSummarySharingEntry)initWithCodableEntry:(id)entry CNContactIdentifier:(id)identifier isPaused:(BOOL)paused
{
  entryCopy = entry;
  identifierCopy = identifier;
  v16.receiver = self;
  v16.super_class = HDSummarySharingEntry;
  v11 = [(HDSummarySharingEntry *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_codableEntry, entry);
    v13 = [identifierCopy copy];
    CNContactIdentifier = v12->_CNContactIdentifier;
    v12->_CNContactIdentifier = v13;

    v12->_isPaused = paused;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = equalCopy;
      codableEntry = self->_codableEntry;
      codableEntry = [(HDSummarySharingEntry *)v8 codableEntry];
      if (codableEntry != codableEntry)
      {
        codableEntry2 = [(HDSummarySharingEntry *)v8 codableEntry];
        if (!codableEntry2)
        {
          v14 = 0;
          goto LABEL_24;
        }

        v12 = codableEntry2;
        v13 = self->_codableEntry;
        codableEntry3 = [(HDSummarySharingEntry *)v8 codableEntry];
        if (![(HDCodableSummarySharingEntry *)v13 isEqual:codableEntry3])
        {
          v14 = 0;
LABEL_23:

          goto LABEL_24;
        }

        v22 = v12;
      }

      CNContactIdentifier = self->_CNContactIdentifier;
      cNContactIdentifier = [(HDSummarySharingEntry *)v8 CNContactIdentifier];
      if (CNContactIdentifier != cNContactIdentifier)
      {
        cNContactIdentifier2 = [(HDSummarySharingEntry *)v8 CNContactIdentifier];
        if (!cNContactIdentifier2)
        {

          v14 = 0;
          goto LABEL_19;
        }

        v3 = cNContactIdentifier2;
        v21 = codableEntry3;
        v18 = self->_CNContactIdentifier;
        cNContactIdentifier3 = [(HDSummarySharingEntry *)v8 CNContactIdentifier];
        if (![(NSString *)v18 isEqualToString:cNContactIdentifier3])
        {
          v14 = 0;
          codableEntry3 = v21;
          v12 = v22;
LABEL_22:

          if (codableEntry != codableEntry)
          {
            goto LABEL_23;
          }

LABEL_24:

          goto LABEL_25;
        }

        codableEntry3 = v21;
      }

      isPaused = self->_isPaused;
      v14 = isPaused == [(HDSummarySharingEntry *)v8 isPaused];
      if (CNContactIdentifier != cNContactIdentifier)
      {
        v12 = v22;
        goto LABEL_22;
      }

LABEL_19:
      v12 = v22;
      if (codableEntry == codableEntry)
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
  sharingEntry = [(HDCodableSummarySharingEntry *)self->_codableEntry sharingEntry];
  [sharingEntry _setCNContactIdentifier:self->_CNContactIdentifier];
  [sharingEntry _setIsPaused:self->_isPaused];

  return sharingEntry;
}

- (void)encodeWithCoder:(id)coder
{
  codableEntry = self->_codableEntry;
  coderCopy = coder;
  [coderCopy encodeObject:codableEntry forKey:@"CodableEntry"];
  [coderCopy encodeObject:self->_CNContactIdentifier forKey:@"CNContactIdentifier"];
  [coderCopy encodeBool:self->_isPaused forKey:@"IsPaused"];
}

- (HDSummarySharingEntry)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CodableEntry"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CNContactIdentifier"];
  v7 = [coderCopy decodeBoolForKey:@"IsPaused"];

  v8 = [(HDSummarySharingEntry *)self initWithCodableEntry:v5 CNContactIdentifier:v6 isPaused:v7];
  return v8;
}

@end