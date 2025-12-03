@interface MPCModelRadioContentReference
+ (id)referenceWithMPModelObject:(id)object containerModelPlayEvent:(id)event;
+ (id)referenceWithStoreIdentifier:(id)identifier trackInfo:(id)info;
- (MPCModelRadioContentReference)initWithCoder:(id)coder;
- (MPCModelRadioContentReference)initWithICRadioContentReference:(id)reference;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPCModelRadioContentReference

- (void)encodeWithCoder:(id)coder
{
  ICRadioContentReference = self->_ICRadioContentReference;
  coderCopy = coder;
  [coderCopy encodeObject:ICRadioContentReference forKey:@"cr"];
  [coderCopy encodeObject:self->_referenceModelObjectIdentifiers forKey:@"ids"];
}

- (MPCModelRadioContentReference)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = MPCModelRadioContentReference;
  v5 = [(MPCModelRadioContentReference *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cr"];
    ICRadioContentReference = v5->_ICRadioContentReference;
    v5->_ICRadioContentReference = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ids"];
    referenceModelObjectIdentifiers = v5->_referenceModelObjectIdentifiers;
    v5->_referenceModelObjectIdentifiers = v8;
  }

  return v5;
}

- (MPCModelRadioContentReference)initWithICRadioContentReference:(id)reference
{
  referenceCopy = reference;
  v9.receiver = self;
  v9.super_class = MPCModelRadioContentReference;
  v5 = [(MPCModelRadioContentReference *)&v9 init];
  if (v5)
  {
    v6 = [referenceCopy copy];
    ICRadioContentReference = v5->_ICRadioContentReference;
    v5->_ICRadioContentReference = v6;
  }

  return v5;
}

+ (id)referenceWithStoreIdentifier:(id)identifier trackInfo:(id)info
{
  v6 = MEMORY[0x1E69E4580];
  infoCopy = info;
  identifierCopy = identifier;
  v9 = [[v6 alloc] initWithStoreIdentifier:identifierCopy trackInfo:infoCopy];

  v10 = objc_alloc_init(self);
  v11 = v10[1];
  v10[1] = v9;

  return v10;
}

+ (id)referenceWithMPModelObject:(id)object containerModelPlayEvent:(id)event
{
  v31 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  eventCopy = event;
  mpc_radioContentReference = [objectCopy mpc_radioContentReference];
  v9 = mpc_radioContentReference;
  if (!mpc_radioContentReference)
  {
    v22 = 0;
    goto LABEL_23;
  }

  if (eventCopy && [mpc_radioContentReference conformsToProtocol:&unk_1F45FD128])
  {
    v10 = v9;
    itemType = [eventCopy itemType];
    if (itemType == 3)
    {
      playlist = [eventCopy playlist];
      identifiers = [playlist identifiers];
      universalStore = [identifiers universalStore];

      globalPlaylistID = [universalStore globalPlaylistID];
      if (![globalPlaylistID length])
      {
        universalCloudLibraryID = [universalStore universalCloudLibraryID];
        if ([universalCloudLibraryID length])
        {
          [v10 setContainerID:universalCloudLibraryID];
        }

        goto LABEL_20;
      }
    }

    else
    {
      if (itemType != 1)
      {
LABEL_21:

        goto LABEL_22;
      }

      album = [eventCopy album];
      identifiers2 = [album identifiers];
      universalStore = [identifiers2 universalStore];

      quot = [universalStore purchasedAdamID];
      if (quot || (quot = [universalStore subscriptionAdamID]) != 0 || (quot = objc_msgSend(universalStore, "adamID")) != 0)
      {
        v16 = quot;
        v17 = &v31 + 1;
        do
        {
          v18 = lldiv(quot, 10);
          quot = v18.quot;
          if (v18.rem >= 0)
          {
            LOBYTE(v19) = v18.rem;
          }

          else
          {
            v19 = -v18.rem;
          }

          *(v17 - 2) = v19 + 48;
          v20 = (v17 - 2);
          --v17;
        }

        while (v18.quot);
        if (v16 < 0)
        {
          *(v17 - 2) = 45;
          v20 = (v17 - 2);
        }

        globalPlaylistID = CFStringCreateWithBytes(0, v20, &v31 - v20, 0x8000100u, 0);
      }

      else
      {
        identifiers3 = [objectCopy identifiers];
        personalizedStore = [identifiers3 personalizedStore];
        globalPlaylistID = [personalizedStore cloudAlbumID];

        if (![globalPlaylistID length])
        {
          goto LABEL_20;
        }
      }
    }

    [v10 setContainerID:globalPlaylistID];
LABEL_20:

    goto LABEL_21;
  }

LABEL_22:
  v22 = objc_alloc_init(self);
  objc_storeStrong(v22 + 1, v9);
  identifiers4 = [objectCopy identifiers];
  v26 = v22[2];
  v22[2] = identifiers4;

LABEL_23:

  return v22;
}

@end