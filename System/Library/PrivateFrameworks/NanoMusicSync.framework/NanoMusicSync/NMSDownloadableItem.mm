@interface NMSDownloadableItem
- (BOOL)isEqual:(id)equal;
- (NMSDownloadableItem)initWithMediaLibraryIdentifier:(id)identifier externalLibraryIdentifier:(id)libraryIdentifier size:(unint64_t)size itemType:(unint64_t)type manuallyAdded:(BOOL)added;
- (id)description;
- (id)identifier;
@end

@implementation NMSDownloadableItem

- (NMSDownloadableItem)initWithMediaLibraryIdentifier:(id)identifier externalLibraryIdentifier:(id)libraryIdentifier size:(unint64_t)size itemType:(unint64_t)type manuallyAdded:(BOOL)added
{
  identifierCopy = identifier;
  libraryIdentifierCopy = libraryIdentifier;
  v18.receiver = self;
  v18.super_class = NMSDownloadableItem;
  v15 = [(NMSDownloadableItem *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_mediaLibraryIdentifier, identifier);
    objc_storeStrong(&v16->_externalLibraryIdentifier, libraryIdentifier);
    v16->_size = size;
    v16->_itemType = type;
    v16->_manuallyAdded = added;
  }

  return v16;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    mediaLibraryIdentifier = [(NMSDownloadableItem *)self mediaLibraryIdentifier];
    mediaLibraryIdentifier2 = [(NMSDownloadableItem *)v6 mediaLibraryIdentifier];
    if (mediaLibraryIdentifier == mediaLibraryIdentifier2 || [mediaLibraryIdentifier isEqual:mediaLibraryIdentifier2])
    {
      externalLibraryIdentifier = [(NMSDownloadableItem *)self externalLibraryIdentifier];
      externalLibraryIdentifier2 = [(NMSDownloadableItem *)v6 externalLibraryIdentifier];
      if (externalLibraryIdentifier == externalLibraryIdentifier2 || [externalLibraryIdentifier isEqual:externalLibraryIdentifier2])
      {
        itemType = [(NMSDownloadableItem *)self itemType];
        v12 = itemType == [(NMSDownloadableItem *)v6 itemType];
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)identifier
{
  if (self->_mediaLibraryIdentifier)
  {
    return self->_mediaLibraryIdentifier;
  }

  else
  {
    return &unk_286C8D448;
  }
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v9.receiver = self;
  v9.super_class = NMSDownloadableItem;
  v4 = [(NMSDownloadableItem *)&v9 description];
  mediaLibraryIdentifier = [(NMSDownloadableItem *)self mediaLibraryIdentifier];
  externalLibraryIdentifier = [(NMSDownloadableItem *)self externalLibraryIdentifier];
  v7 = [v3 stringWithFormat:@"<%@ - MLDB pid: %@ - PDB UUID %@ - size: %llu - type: %lu - manuallyAdded: %x>", v4, mediaLibraryIdentifier, externalLibraryIdentifier, -[NMSDownloadableItem size](self, "size"), -[NMSDownloadableItem itemType](self, "itemType"), -[NMSDownloadableItem isManuallyAdded](self, "isManuallyAdded")];

  return v7;
}

@end