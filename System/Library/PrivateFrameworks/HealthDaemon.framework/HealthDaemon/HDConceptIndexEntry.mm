@interface HDConceptIndexEntry
- (BOOL)isEqual:(id)equal;
- (HDConceptIndexEntry)init;
- (HDConceptIndexEntry)initWithSampleUUID:(id)d conceptIdentifier:(int64_t)identifier conceptVersion:(int64_t)version keyPath:(id)path compoundIndex:(unint64_t)index type:(unint64_t)type ontologyVersion:(id)ontologyVersion;
- (id)description;
- (unint64_t)hash;
@end

@implementation HDConceptIndexEntry

- (HDConceptIndexEntry)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HDConceptIndexEntry)initWithSampleUUID:(id)d conceptIdentifier:(int64_t)identifier conceptVersion:(int64_t)version keyPath:(id)path compoundIndex:(unint64_t)index type:(unint64_t)type ontologyVersion:(id)ontologyVersion
{
  dCopy = d;
  pathCopy = path;
  ontologyVersionCopy = ontologyVersion;
  if (dCopy)
  {
    if (pathCopy)
    {
      goto LABEL_3;
    }

LABEL_8:
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDConceptIndexEntry.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"keyPath != nil"}];

    if (ontologyVersionCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"HDConceptIndexEntry.m" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"sampleUUID != nil"}];

  if (!pathCopy)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (ontologyVersionCopy)
  {
    goto LABEL_4;
  }

LABEL_9:
  currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"HDConceptIndexEntry.m" lineNumber:31 description:{@"Invalid parameter not satisfying: %@", @"ontologyVersion != nil"}];

LABEL_4:
  v30.receiver = self;
  v30.super_class = HDConceptIndexEntry;
  v19 = [(HDConceptIndexEntry *)&v30 init];
  if (v19)
  {
    v20 = [dCopy copy];
    sampleUUID = v19->_sampleUUID;
    v19->_sampleUUID = v20;

    v19->_conceptIdentifier = identifier;
    v19->_conceptVersion = version;
    v22 = [pathCopy copy];
    keyPath = v19->_keyPath;
    v19->_keyPath = v22;

    v19->_compoundIndex = index;
    v19->_type = type;
    v24 = [ontologyVersionCopy copy];
    ontologyVersion = v19->_ontologyVersion;
    v19->_ontologyVersion = v24;
  }

  return v19;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = *&self->_conceptVersion;
  v7 = [v3 stringWithFormat:@"<%@:%p sampleUUID=%@, conceptIdentifier=%lld, conceptVersion=%lld, keyPath='%@', compoundIndex=%llu, type=%lu, ontologyVersion=%@>", v5, self, self->_sampleUUID, self->_conceptIdentifier, self->_conceptVersion, self->_keyPath, self->_compoundIndex, self->_type, self->_ontologyVersion];

  return v7;
}

- (unint64_t)hash
{
  v3 = [(NSUUID *)self->_sampleUUID hash];
  v9 = *&self->_conceptIdentifier;
  v4 = [(NSString *)self->_keyPath hash];
  v8 = *&self->_compoundIndex;
  v5 = [(HKOntologyVersion *)self->_ontologyVersion hash];
  v6 = veorq_s8(v9, v8);
  return *&veor_s8(*v6.i8, *&vextq_s8(v6, v6, 8uLL)) ^ v5 ^ v4 ^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      sampleUUID = self->_sampleUUID;
      sampleUUID = [(HDConceptIndexEntry *)v5 sampleUUID];
      v8 = sampleUUID;
      if (sampleUUID == sampleUUID)
      {
      }

      else
      {
        sampleUUID2 = [(HDConceptIndexEntry *)v5 sampleUUID];
        if (!sampleUUID2)
        {
          goto LABEL_23;
        }

        v10 = sampleUUID2;
        v11 = self->_sampleUUID;
        sampleUUID3 = [(HDConceptIndexEntry *)v5 sampleUUID];
        LODWORD(v11) = [(NSUUID *)v11 isEqual:sampleUUID3];

        if (!v11)
        {
          goto LABEL_24;
        }
      }

      conceptIdentifier = self->_conceptIdentifier;
      if (conceptIdentifier != [(HDConceptIndexEntry *)v5 conceptIdentifier])
      {
        goto LABEL_24;
      }

      conceptVersion = self->_conceptVersion;
      if (conceptVersion != [(HDConceptIndexEntry *)v5 conceptVersion])
      {
        goto LABEL_24;
      }

      keyPath = self->_keyPath;
      keyPath = [(HDConceptIndexEntry *)v5 keyPath];
      v8 = keyPath;
      if (keyPath == keyPath)
      {
      }

      else
      {
        keyPath2 = [(HDConceptIndexEntry *)v5 keyPath];
        if (!keyPath2)
        {
          goto LABEL_23;
        }

        v19 = keyPath2;
        v20 = self->_keyPath;
        keyPath3 = [(HDConceptIndexEntry *)v5 keyPath];
        LODWORD(v20) = [(NSString *)v20 isEqualToString:keyPath3];

        if (!v20)
        {
          goto LABEL_24;
        }
      }

      compoundIndex = self->_compoundIndex;
      if (compoundIndex != [(HDConceptIndexEntry *)v5 compoundIndex])
      {
        goto LABEL_24;
      }

      type = self->_type;
      if (type != [(HDConceptIndexEntry *)v5 type])
      {
        goto LABEL_24;
      }

      ontologyVersion = self->_ontologyVersion;
      ontologyVersion = [(HDConceptIndexEntry *)v5 ontologyVersion];
      v8 = ontologyVersion;
      if (ontologyVersion == ontologyVersion)
      {

LABEL_28:
        v13 = 1;
        goto LABEL_25;
      }

      ontologyVersion2 = [(HDConceptIndexEntry *)v5 ontologyVersion];
      if (ontologyVersion2)
      {
        v27 = ontologyVersion2;
        v28 = self->_ontologyVersion;
        ontologyVersion3 = [(HDConceptIndexEntry *)v5 ontologyVersion];
        LOBYTE(v28) = [(HKOntologyVersion *)v28 isEqual:ontologyVersion3];

        if (v28)
        {
          goto LABEL_28;
        }

LABEL_24:
        v13 = 0;
LABEL_25:

        goto LABEL_26;
      }

LABEL_23:

      goto LABEL_24;
    }

    v13 = 0;
  }

LABEL_26:

  return v13;
}

@end