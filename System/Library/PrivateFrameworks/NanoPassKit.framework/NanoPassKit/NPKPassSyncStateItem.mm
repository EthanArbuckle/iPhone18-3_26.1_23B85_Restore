@interface NPKPassSyncStateItem
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToPassSyncStateItem:(id)a3;
- (NPKPassSyncStateItem)initWithCoder:(id)a3;
- (NPKPassSyncStateItem)initWithPass:(id)a3;
- (NPKPassSyncStateItem)initWithPassTypeIdentifier:(id)a3 serialNumber:(id)a4 sequenceCounter:(id)a5 manifestHash:(id)a6 manifest:(id)a7;
- (NPKPassSyncStateItem)initWithProtoSyncStateItem:(id)a3;
- (NSString)uniqueID;
- (id)description;
- (id)protoSyncStateItem;
- (id)shortDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NPKPassSyncStateItem

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CBEB18] array];
  [v3 safelyAddObject:self->_passTypeIdentifier];
  [v3 safelyAddObject:self->_serialNumber];
  [v3 safelyAddObject:self->_sequenceCounter];
  [v3 safelyAddObject:self->_manifestHash];
  v4 = *MEMORY[0x277D38638];
  v5 = PKCombinedHash();

  return v5;
}

- (NPKPassSyncStateItem)initWithProtoSyncStateItem:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 passTypeIdentifier];
    [v5 serialNumber];
    v22 = self;
    v21 = v23 = v6;
    if ([v5 hasSequenceCounter])
    {
      v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v5, "sequenceCounter")}];
    }

    else
    {
      v7 = 0;
    }

    v9 = [v5 manifestHash];
    v10 = [MEMORY[0x277CBEB38] dictionary];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v11 = [v5 manifestEntrys];
    v12 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v25;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v25 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v24 + 1) + 8 * i);
          v17 = [v16 fileHash];
          v18 = [v16 relativePath];
          [v10 setObject:v17 forKey:v18];
        }

        v13 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v13);
    }

    v8 = [(NPKPassSyncStateItem *)v22 initWithPassTypeIdentifier:v23 serialNumber:v21 sequenceCounter:v7 manifestHash:v9 manifest:v10];
  }

  else
  {

    v8 = 0;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v8;
}

- (id)protoSyncStateItem
{
  v3 = objc_alloc_init(NPKProtoPassSyncStateItem);
  v4 = [(NPKPassSyncStateItem *)self passTypeIdentifier];
  [(NPKProtoPassSyncStateItem *)v3 setPassTypeIdentifier:v4];

  v5 = [(NPKPassSyncStateItem *)self serialNumber];
  [(NPKProtoPassSyncStateItem *)v3 setSerialNumber:v5];

  v6 = [(NPKPassSyncStateItem *)self sequenceCounter];

  if (v6)
  {
    v7 = [(NPKPassSyncStateItem *)self sequenceCounter];
    -[NPKProtoPassSyncStateItem setSequenceCounter:](v3, "setSequenceCounter:", [v7 unsignedIntValue]);

    [(NPKProtoPassSyncStateItem *)v3 setHasSequenceCounter:1];
  }

  v8 = [(NPKPassSyncStateItem *)self manifestHash];
  [(NPKProtoPassSyncStateItem *)v3 setManifestHash:v8];

  v9 = [(NPKPassSyncStateItem *)self manifest];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __59__NPKPassSyncStateItem_ProtobufSupport__protoSyncStateItem__block_invoke;
  v12[3] = &unk_279949020;
  v10 = v3;
  v13 = v10;
  [v9 enumerateKeysAndObjectsUsingBlock:v12];

  return v10;
}

void __59__NPKPassSyncStateItem_ProtobufSupport__protoSyncStateItem__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = objc_alloc_init(NPKProtoPassSyncStateManifestEntry);
  [(NPKProtoPassSyncStateManifestEntry *)v7 setRelativePath:v6];

  [(NPKProtoPassSyncStateManifestEntry *)v7 setFileHash:v5];
  [*(a1 + 32) addManifestEntry:v7];
}

- (NPKPassSyncStateItem)initWithPass:(id)a3
{
  v4 = a3;
  v5 = [v4 passTypeIdentifier];
  v6 = [v4 serialNumber];
  v7 = [v4 sequenceCounter];
  v8 = NPKManifestHashForPass(v4);
  v9 = NPKManifestForPass(v4);

  v10 = [(NPKPassSyncStateItem *)self initWithPassTypeIdentifier:v5 serialNumber:v6 sequenceCounter:v7 manifestHash:v8 manifest:v9];
  return v10;
}

- (NPKPassSyncStateItem)initWithPassTypeIdentifier:(id)a3 serialNumber:(id)a4 sequenceCounter:(id)a5 manifestHash:(id)a6 manifest:(id)a7
{
  v20 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v21.receiver = self;
  v21.super_class = NPKPassSyncStateItem;
  v17 = [(NPKPassSyncStateItem *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_passTypeIdentifier, a3);
    objc_storeStrong(&v18->_serialNumber, a4);
    objc_storeStrong(&v18->_sequenceCounter, a5);
    objc_storeStrong(&v18->_manifestHash, a6);
    objc_storeStrong(&v18->_manifest, a7);
  }

  return v18;
}

- (NSString)uniqueID
{
  passTypeIdentifier = self->_passTypeIdentifier;
  serialNumber = self->_serialNumber;
  return PKGeneratePassUniqueID();
}

- (id)description
{
  sequenceCounter = self->_sequenceCounter;
  if (sequenceCounter)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@", sequence counter %@", sequenceCounter];
  }

  else
  {
    v4 = &stru_286C934F8;
  }

  v5 = MEMORY[0x277CCACA8];
  v6 = objc_opt_class();
  v7 = [(NPKPassSyncStateItem *)self uniqueID];
  v8 = objc_msgSend(v5, "stringWithFormat:", @"<%@: %p unique ID %@ manifest hash %@ manifest %@ (pass type identifier %@, serial number %@%@>"), v6, self, v7, self->_manifestHash, self->_manifest, self->_passTypeIdentifier, self->_serialNumber, v4;

  return v8;
}

- (id)shortDescription
{
  sequenceCounter = self->_sequenceCounter;
  if (sequenceCounter)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@" seq %@", sequenceCounter];
  }

  else
  {
    v4 = &stru_286C934F8;
  }

  v5 = MEMORY[0x277CCACA8];
  v6 = [(NPKPassSyncStateItem *)self uniqueID];
  passTypeIdentifier = self->_passTypeIdentifier;
  serialNumber = self->_serialNumber;
  v9 = [(NSData *)self->_manifestHash hexEncoding];
  v10 = [v5 stringWithFormat:@"%@ %@ %@ (hash %@%@)", v6, passTypeIdentifier, serialNumber, v9, v4];

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(NPKPassSyncStateItem *)self isEqualToPassSyncStateItem:v5];
  }

  return v6;
}

- (BOOL)isEqualToPassSyncStateItem:(id)a3
{
  v4 = a3;
  passTypeIdentifier = self->_passTypeIdentifier;
  v6 = v4[1];
  if (!PKEqualObjects())
  {
    goto LABEL_11;
  }

  v7 = v4[2];
  v8 = self->_serialNumber;
  v9 = v7;
  v10 = v9;
  if (v8 == v9)
  {
  }

  else
  {
    if (!v8 || !v9)
    {

      goto LABEL_11;
    }

    v11 = [(NSString *)v8 isEqualToString:v9];

    if (!v11)
    {
      goto LABEL_11;
    }
  }

  sequenceCounter = self->_sequenceCounter;
  v13 = v4[3];
  if (!PKEqualObjects())
  {
LABEL_11:
    v16 = 0;
    goto LABEL_12;
  }

  manifestHash = self->_manifestHash;
  v15 = v4[4];
  v16 = PKEqualObjects();
LABEL_12:

  return v16;
}

- (void)encodeWithCoder:(id)a3
{
  passTypeIdentifier = self->_passTypeIdentifier;
  v5 = a3;
  [v5 encodeObject:passTypeIdentifier forKey:@"passTypeIdentifier"];
  [v5 encodeObject:self->_serialNumber forKey:@"serialNumber"];
  [v5 encodeObject:self->_sequenceCounter forKey:@"sequenceCounter"];
  [v5 encodeObject:self->_manifestHash forKey:@"manifestHash"];
  [v5 encodeObject:self->_manifest forKey:@"manifest"];
}

- (NPKPassSyncStateItem)initWithCoder:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = NPKPassSyncStateItem;
  v5 = [(NPKPassSyncStateItem *)&v18 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"passTypeIdentifier"];
    passTypeIdentifier = v5->_passTypeIdentifier;
    v5->_passTypeIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"serialNumber"];
    serialNumber = v5->_serialNumber;
    v5->_serialNumber = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sequenceCounter"];
    sequenceCounter = v5->_sequenceCounter;
    v5->_sequenceCounter = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"manifestHash"];
    manifestHash = v5->_manifestHash;
    v5->_manifestHash = v12;

    v14 = objc_opt_class();
    v15 = [v4 decodeDictionaryWithKeysOfClass:v14 objectsOfClass:objc_opt_class() forKey:@"manifest"];
    manifest = v5->_manifest;
    v5->_manifest = v15;
  }

  return v5;
}

@end