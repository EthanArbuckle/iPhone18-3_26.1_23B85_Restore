@interface HDConceptIndexEntry
- (BOOL)isEqual:(id)a3;
- (HDConceptIndexEntry)init;
- (HDConceptIndexEntry)initWithSampleUUID:(id)a3 conceptIdentifier:(int64_t)a4 conceptVersion:(int64_t)a5 keyPath:(id)a6 compoundIndex:(unint64_t)a7 type:(unint64_t)a8 ontologyVersion:(id)a9;
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

- (HDConceptIndexEntry)initWithSampleUUID:(id)a3 conceptIdentifier:(int64_t)a4 conceptVersion:(int64_t)a5 keyPath:(id)a6 compoundIndex:(unint64_t)a7 type:(unint64_t)a8 ontologyVersion:(id)a9
{
  v16 = a3;
  v17 = a6;
  v18 = a9;
  if (v16)
  {
    if (v17)
    {
      goto LABEL_3;
    }

LABEL_8:
    v28 = [MEMORY[0x277CCA890] currentHandler];
    [v28 handleFailureInMethod:a2 object:self file:@"HDConceptIndexEntry.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"keyPath != nil"}];

    if (v18)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  v27 = [MEMORY[0x277CCA890] currentHandler];
  [v27 handleFailureInMethod:a2 object:self file:@"HDConceptIndexEntry.m" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"sampleUUID != nil"}];

  if (!v17)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (v18)
  {
    goto LABEL_4;
  }

LABEL_9:
  v29 = [MEMORY[0x277CCA890] currentHandler];
  [v29 handleFailureInMethod:a2 object:self file:@"HDConceptIndexEntry.m" lineNumber:31 description:{@"Invalid parameter not satisfying: %@", @"ontologyVersion != nil"}];

LABEL_4:
  v30.receiver = self;
  v30.super_class = HDConceptIndexEntry;
  v19 = [(HDConceptIndexEntry *)&v30 init];
  if (v19)
  {
    v20 = [v16 copy];
    sampleUUID = v19->_sampleUUID;
    v19->_sampleUUID = v20;

    v19->_conceptIdentifier = a4;
    v19->_conceptVersion = a5;
    v22 = [v17 copy];
    keyPath = v19->_keyPath;
    v19->_keyPath = v22;

    v19->_compoundIndex = a7;
    v19->_type = a8;
    v24 = [v18 copy];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      sampleUUID = self->_sampleUUID;
      v7 = [(HDConceptIndexEntry *)v5 sampleUUID];
      v8 = v7;
      if (sampleUUID == v7)
      {
      }

      else
      {
        v9 = [(HDConceptIndexEntry *)v5 sampleUUID];
        if (!v9)
        {
          goto LABEL_23;
        }

        v10 = v9;
        v11 = self->_sampleUUID;
        v12 = [(HDConceptIndexEntry *)v5 sampleUUID];
        LODWORD(v11) = [(NSUUID *)v11 isEqual:v12];

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
      v17 = [(HDConceptIndexEntry *)v5 keyPath];
      v8 = v17;
      if (keyPath == v17)
      {
      }

      else
      {
        v18 = [(HDConceptIndexEntry *)v5 keyPath];
        if (!v18)
        {
          goto LABEL_23;
        }

        v19 = v18;
        v20 = self->_keyPath;
        v21 = [(HDConceptIndexEntry *)v5 keyPath];
        LODWORD(v20) = [(NSString *)v20 isEqualToString:v21];

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
      v25 = [(HDConceptIndexEntry *)v5 ontologyVersion];
      v8 = v25;
      if (ontologyVersion == v25)
      {

LABEL_28:
        v13 = 1;
        goto LABEL_25;
      }

      v26 = [(HDConceptIndexEntry *)v5 ontologyVersion];
      if (v26)
      {
        v27 = v26;
        v28 = self->_ontologyVersion;
        v29 = [(HDConceptIndexEntry *)v5 ontologyVersion];
        LOBYTE(v28) = [(HKOntologyVersion *)v28 isEqual:v29];

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