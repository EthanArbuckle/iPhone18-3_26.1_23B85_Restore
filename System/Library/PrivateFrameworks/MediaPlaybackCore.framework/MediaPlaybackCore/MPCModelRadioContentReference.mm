@interface MPCModelRadioContentReference
+ (id)referenceWithMPModelObject:(id)a3 containerModelPlayEvent:(id)a4;
+ (id)referenceWithStoreIdentifier:(id)a3 trackInfo:(id)a4;
- (MPCModelRadioContentReference)initWithCoder:(id)a3;
- (MPCModelRadioContentReference)initWithICRadioContentReference:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MPCModelRadioContentReference

- (void)encodeWithCoder:(id)a3
{
  ICRadioContentReference = self->_ICRadioContentReference;
  v5 = a3;
  [v5 encodeObject:ICRadioContentReference forKey:@"cr"];
  [v5 encodeObject:self->_referenceModelObjectIdentifiers forKey:@"ids"];
}

- (MPCModelRadioContentReference)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = MPCModelRadioContentReference;
  v5 = [(MPCModelRadioContentReference *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cr"];
    ICRadioContentReference = v5->_ICRadioContentReference;
    v5->_ICRadioContentReference = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ids"];
    referenceModelObjectIdentifiers = v5->_referenceModelObjectIdentifiers;
    v5->_referenceModelObjectIdentifiers = v8;
  }

  return v5;
}

- (MPCModelRadioContentReference)initWithICRadioContentReference:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MPCModelRadioContentReference;
  v5 = [(MPCModelRadioContentReference *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    ICRadioContentReference = v5->_ICRadioContentReference;
    v5->_ICRadioContentReference = v6;
  }

  return v5;
}

+ (id)referenceWithStoreIdentifier:(id)a3 trackInfo:(id)a4
{
  v6 = MEMORY[0x1E69E4580];
  v7 = a4;
  v8 = a3;
  v9 = [[v6 alloc] initWithStoreIdentifier:v8 trackInfo:v7];

  v10 = objc_alloc_init(a1);
  v11 = v10[1];
  v10[1] = v9;

  return v10;
}

+ (id)referenceWithMPModelObject:(id)a3 containerModelPlayEvent:(id)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 mpc_radioContentReference];
  v9 = v8;
  if (!v8)
  {
    v22 = 0;
    goto LABEL_23;
  }

  if (v7 && [v8 conformsToProtocol:&unk_1F45FD128])
  {
    v10 = v9;
    v11 = [v7 itemType];
    if (v11 == 3)
    {
      v23 = [v7 playlist];
      v24 = [v23 identifiers];
      v14 = [v24 universalStore];

      v21 = [v14 globalPlaylistID];
      if (![v21 length])
      {
        v28 = [v14 universalCloudLibraryID];
        if ([v28 length])
        {
          [v10 setContainerID:v28];
        }

        goto LABEL_20;
      }
    }

    else
    {
      if (v11 != 1)
      {
LABEL_21:

        goto LABEL_22;
      }

      v12 = [v7 album];
      v13 = [v12 identifiers];
      v14 = [v13 universalStore];

      quot = [v14 purchasedAdamID];
      if (quot || (quot = [v14 subscriptionAdamID]) != 0 || (quot = objc_msgSend(v14, "adamID")) != 0)
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

        v21 = CFStringCreateWithBytes(0, v20, &v31 - v20, 0x8000100u, 0);
      }

      else
      {
        v29 = [v6 identifiers];
        v30 = [v29 personalizedStore];
        v21 = [v30 cloudAlbumID];

        if (![v21 length])
        {
          goto LABEL_20;
        }
      }
    }

    [v10 setContainerID:v21];
LABEL_20:

    goto LABEL_21;
  }

LABEL_22:
  v22 = objc_alloc_init(a1);
  objc_storeStrong(v22 + 1, v9);
  v25 = [v6 identifiers];
  v26 = v22[2];
  v22[2] = v25;

LABEL_23:

  return v22;
}

@end