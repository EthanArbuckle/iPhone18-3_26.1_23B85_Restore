@interface NMSDownloadableItem
- (BOOL)isEqual:(id)a3;
- (NMSDownloadableItem)initWithMediaLibraryIdentifier:(id)a3 externalLibraryIdentifier:(id)a4 size:(unint64_t)a5 itemType:(unint64_t)a6 manuallyAdded:(BOOL)a7;
- (id)description;
- (id)identifier;
@end

@implementation NMSDownloadableItem

- (NMSDownloadableItem)initWithMediaLibraryIdentifier:(id)a3 externalLibraryIdentifier:(id)a4 size:(unint64_t)a5 itemType:(unint64_t)a6 manuallyAdded:(BOOL)a7
{
  v13 = a3;
  v14 = a4;
  v18.receiver = self;
  v18.super_class = NMSDownloadableItem;
  v15 = [(NMSDownloadableItem *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_mediaLibraryIdentifier, a3);
    objc_storeStrong(&v16->_externalLibraryIdentifier, a4);
    v16->_size = a5;
    v16->_itemType = a6;
    v16->_manuallyAdded = a7;
  }

  return v16;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v12 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    v7 = [(NMSDownloadableItem *)self mediaLibraryIdentifier];
    v8 = [(NMSDownloadableItem *)v6 mediaLibraryIdentifier];
    if (v7 == v8 || [v7 isEqual:v8])
    {
      v9 = [(NMSDownloadableItem *)self externalLibraryIdentifier];
      v10 = [(NMSDownloadableItem *)v6 externalLibraryIdentifier];
      if (v9 == v10 || [v9 isEqual:v10])
      {
        v11 = [(NMSDownloadableItem *)self itemType];
        v12 = v11 == [(NMSDownloadableItem *)v6 itemType];
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
  v5 = [(NMSDownloadableItem *)self mediaLibraryIdentifier];
  v6 = [(NMSDownloadableItem *)self externalLibraryIdentifier];
  v7 = [v3 stringWithFormat:@"<%@ - MLDB pid: %@ - PDB UUID %@ - size: %llu - type: %lu - manuallyAdded: %x>", v4, v5, v6, -[NMSDownloadableItem size](self, "size"), -[NMSDownloadableItem itemType](self, "itemType"), -[NMSDownloadableItem isManuallyAdded](self, "isManuallyAdded")];

  return v7;
}

@end