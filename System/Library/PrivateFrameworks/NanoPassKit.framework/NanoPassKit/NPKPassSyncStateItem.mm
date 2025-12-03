@interface NPKPassSyncStateItem
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToPassSyncStateItem:(id)item;
- (NPKPassSyncStateItem)initWithCoder:(id)coder;
- (NPKPassSyncStateItem)initWithPass:(id)pass;
- (NPKPassSyncStateItem)initWithPassTypeIdentifier:(id)identifier serialNumber:(id)number sequenceCounter:(id)counter manifestHash:(id)hash manifest:(id)manifest;
- (NPKPassSyncStateItem)initWithProtoSyncStateItem:(id)item;
- (NSString)uniqueID;
- (id)description;
- (id)protoSyncStateItem;
- (id)shortDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NPKPassSyncStateItem

- (unint64_t)hash
{
  array = [MEMORY[0x277CBEB18] array];
  [array safelyAddObject:self->_passTypeIdentifier];
  [array safelyAddObject:self->_serialNumber];
  [array safelyAddObject:self->_sequenceCounter];
  [array safelyAddObject:self->_manifestHash];
  v4 = *MEMORY[0x277D38638];
  v5 = PKCombinedHash();

  return v5;
}

- (NPKPassSyncStateItem)initWithProtoSyncStateItem:(id)item
{
  v29 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  v5 = itemCopy;
  if (itemCopy)
  {
    passTypeIdentifier = [itemCopy passTypeIdentifier];
    [v5 serialNumber];
    selfCopy = self;
    v21 = v23 = passTypeIdentifier;
    if ([v5 hasSequenceCounter])
    {
      v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v5, "sequenceCounter")}];
    }

    else
    {
      v7 = 0;
    }

    manifestHash = [v5 manifestHash];
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    manifestEntrys = [v5 manifestEntrys];
    v12 = [manifestEntrys countByEnumeratingWithState:&v24 objects:v28 count:16];
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
            objc_enumerationMutation(manifestEntrys);
          }

          v16 = *(*(&v24 + 1) + 8 * i);
          fileHash = [v16 fileHash];
          relativePath = [v16 relativePath];
          [dictionary setObject:fileHash forKey:relativePath];
        }

        v13 = [manifestEntrys countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v13);
    }

    v8 = [(NPKPassSyncStateItem *)selfCopy initWithPassTypeIdentifier:v23 serialNumber:v21 sequenceCounter:v7 manifestHash:manifestHash manifest:dictionary];
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
  passTypeIdentifier = [(NPKPassSyncStateItem *)self passTypeIdentifier];
  [(NPKProtoPassSyncStateItem *)v3 setPassTypeIdentifier:passTypeIdentifier];

  serialNumber = [(NPKPassSyncStateItem *)self serialNumber];
  [(NPKProtoPassSyncStateItem *)v3 setSerialNumber:serialNumber];

  sequenceCounter = [(NPKPassSyncStateItem *)self sequenceCounter];

  if (sequenceCounter)
  {
    sequenceCounter2 = [(NPKPassSyncStateItem *)self sequenceCounter];
    -[NPKProtoPassSyncStateItem setSequenceCounter:](v3, "setSequenceCounter:", [sequenceCounter2 unsignedIntValue]);

    [(NPKProtoPassSyncStateItem *)v3 setHasSequenceCounter:1];
  }

  manifestHash = [(NPKPassSyncStateItem *)self manifestHash];
  [(NPKProtoPassSyncStateItem *)v3 setManifestHash:manifestHash];

  manifest = [(NPKPassSyncStateItem *)self manifest];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __59__NPKPassSyncStateItem_ProtobufSupport__protoSyncStateItem__block_invoke;
  v12[3] = &unk_279949020;
  v10 = v3;
  v13 = v10;
  [manifest enumerateKeysAndObjectsUsingBlock:v12];

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

- (NPKPassSyncStateItem)initWithPass:(id)pass
{
  passCopy = pass;
  passTypeIdentifier = [passCopy passTypeIdentifier];
  serialNumber = [passCopy serialNumber];
  sequenceCounter = [passCopy sequenceCounter];
  v8 = NPKManifestHashForPass(passCopy);
  v9 = NPKManifestForPass(passCopy);

  v10 = [(NPKPassSyncStateItem *)self initWithPassTypeIdentifier:passTypeIdentifier serialNumber:serialNumber sequenceCounter:sequenceCounter manifestHash:v8 manifest:v9];
  return v10;
}

- (NPKPassSyncStateItem)initWithPassTypeIdentifier:(id)identifier serialNumber:(id)number sequenceCounter:(id)counter manifestHash:(id)hash manifest:(id)manifest
{
  identifierCopy = identifier;
  numberCopy = number;
  counterCopy = counter;
  hashCopy = hash;
  manifestCopy = manifest;
  v21.receiver = self;
  v21.super_class = NPKPassSyncStateItem;
  v17 = [(NPKPassSyncStateItem *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_passTypeIdentifier, identifier);
    objc_storeStrong(&v18->_serialNumber, number);
    objc_storeStrong(&v18->_sequenceCounter, counter);
    objc_storeStrong(&v18->_manifestHash, hash);
    objc_storeStrong(&v18->_manifest, manifest);
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
    sequenceCounter = [MEMORY[0x277CCACA8] stringWithFormat:@", sequence counter %@", sequenceCounter];
  }

  else
  {
    sequenceCounter = &stru_286C934F8;
  }

  v5 = MEMORY[0x277CCACA8];
  v6 = objc_opt_class();
  uniqueID = [(NPKPassSyncStateItem *)self uniqueID];
  v8 = objc_msgSend(v5, "stringWithFormat:", @"<%@: %p unique ID %@ manifest hash %@ manifest %@ (pass type identifier %@, serial number %@%@>"), v6, self, uniqueID, self->_manifestHash, self->_manifest, self->_passTypeIdentifier, self->_serialNumber, sequenceCounter;

  return v8;
}

- (id)shortDescription
{
  sequenceCounter = self->_sequenceCounter;
  if (sequenceCounter)
  {
    sequenceCounter = [MEMORY[0x277CCACA8] stringWithFormat:@" seq %@", sequenceCounter];
  }

  else
  {
    sequenceCounter = &stru_286C934F8;
  }

  v5 = MEMORY[0x277CCACA8];
  uniqueID = [(NPKPassSyncStateItem *)self uniqueID];
  passTypeIdentifier = self->_passTypeIdentifier;
  serialNumber = self->_serialNumber;
  hexEncoding = [(NSData *)self->_manifestHash hexEncoding];
  v10 = [v5 stringWithFormat:@"%@ %@ %@ (hash %@%@)", uniqueID, passTypeIdentifier, serialNumber, hexEncoding, sequenceCounter];

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(NPKPassSyncStateItem *)self isEqualToPassSyncStateItem:v5];
  }

  return v6;
}

- (BOOL)isEqualToPassSyncStateItem:(id)item
{
  itemCopy = item;
  passTypeIdentifier = self->_passTypeIdentifier;
  v6 = itemCopy[1];
  if (!PKEqualObjects())
  {
    goto LABEL_11;
  }

  v7 = itemCopy[2];
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
  v13 = itemCopy[3];
  if (!PKEqualObjects())
  {
LABEL_11:
    v16 = 0;
    goto LABEL_12;
  }

  manifestHash = self->_manifestHash;
  v15 = itemCopy[4];
  v16 = PKEqualObjects();
LABEL_12:

  return v16;
}

- (void)encodeWithCoder:(id)coder
{
  passTypeIdentifier = self->_passTypeIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:passTypeIdentifier forKey:@"passTypeIdentifier"];
  [coderCopy encodeObject:self->_serialNumber forKey:@"serialNumber"];
  [coderCopy encodeObject:self->_sequenceCounter forKey:@"sequenceCounter"];
  [coderCopy encodeObject:self->_manifestHash forKey:@"manifestHash"];
  [coderCopy encodeObject:self->_manifest forKey:@"manifest"];
}

- (NPKPassSyncStateItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = NPKPassSyncStateItem;
  v5 = [(NPKPassSyncStateItem *)&v18 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"passTypeIdentifier"];
    passTypeIdentifier = v5->_passTypeIdentifier;
    v5->_passTypeIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"serialNumber"];
    serialNumber = v5->_serialNumber;
    v5->_serialNumber = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sequenceCounter"];
    sequenceCounter = v5->_sequenceCounter;
    v5->_sequenceCounter = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"manifestHash"];
    manifestHash = v5->_manifestHash;
    v5->_manifestHash = v12;

    v14 = objc_opt_class();
    v15 = [coderCopy decodeDictionaryWithKeysOfClass:v14 objectsOfClass:objc_opt_class() forKey:@"manifest"];
    manifest = v5->_manifest;
    v5->_manifest = v15;
  }

  return v5;
}

@end