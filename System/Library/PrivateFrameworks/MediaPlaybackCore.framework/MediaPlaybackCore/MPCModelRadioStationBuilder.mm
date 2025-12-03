@interface MPCModelRadioStationBuilder
- (MPCModelRadioStationBuilder)initWithRequestedProperties:(id)properties;
- (id)modelRadioStationForMetadata:(id)metadata userIdentity:(id)identity;
@end

@implementation MPCModelRadioStationBuilder

- (id)modelRadioStationForMetadata:(id)metadata userIdentity:(id)identity
{
  metadataCopy = metadata;
  identityCopy = identity;
  if ((*&self->_requestedRadioStationProperties & 1) == 0)
  {
    requestedProperties = [(MPCModelRadioStationBuilder *)self requestedProperties];
    properties = [requestedProperties properties];
    if ([properties containsObject:*MEMORY[0x1E696FE80]])
    {
      v10 = 2;
    }

    else
    {
      v10 = 0;
    }

    *&self->_requestedRadioStationProperties = *&self->_requestedRadioStationProperties & 0xFD | v10;
    if ([properties containsObject:*MEMORY[0x1E696FEA8]])
    {
      v11 = 4;
    }

    else
    {
      v11 = 0;
    }

    *&self->_requestedRadioStationProperties = *&self->_requestedRadioStationProperties & 0xFB | v11;
    if ([properties containsObject:*MEMORY[0x1E696FE88]])
    {
      v12 = 8;
    }

    else
    {
      v12 = 0;
    }

    *&self->_requestedRadioStationProperties = *&self->_requestedRadioStationProperties & 0xF7 | v12;
    if ([properties containsObject:*MEMORY[0x1E696FEC0]])
    {
      v13 = 16;
    }

    else
    {
      v13 = 0;
    }

    *&self->_requestedRadioStationProperties = *&self->_requestedRadioStationProperties & 0xEF | v13;
    self->_requestedRadioStationProperties.explicit = [properties containsObject:*MEMORY[0x1E696FEA0]];
    *(&self->_requestedRadioStationProperties + 8) = *(&self->_requestedRadioStationProperties + 8) & 0xFE | [properties containsObject:*MEMORY[0x1E696FE70]];
    if ([properties containsObject:*MEMORY[0x1E696FE68]])
    {
      v14 = 2;
    }

    else
    {
      v14 = 0;
    }

    *(&self->_requestedRadioStationProperties + 8) = *(&self->_requestedRadioStationProperties + 8) & 0xFD | v14;
    if ([properties containsObject:*MEMORY[0x1E696FE78]])
    {
      v15 = 4;
    }

    else
    {
      v15 = 0;
    }

    *(&self->_requestedRadioStationProperties + 8) = *(&self->_requestedRadioStationProperties + 8) & 0xFB | v15;
    if ([properties containsObject:*MEMORY[0x1E696FED8]])
    {
      v16 = 8;
    }

    else
    {
      v16 = 0;
    }

    *(&self->_requestedRadioStationProperties + 8) = *(&self->_requestedRadioStationProperties + 8) & 0xF7 | v16;
    if ([properties containsObject:*MEMORY[0x1E696FED0]])
    {
      v17 = 16;
    }

    else
    {
      v17 = 0;
    }

    *(&self->_requestedRadioStationProperties + 8) = *(&self->_requestedRadioStationProperties + 8) & 0xEF | v17;
    if ([properties containsObject:*MEMORY[0x1E696FEC8]])
    {
      v18 = 32;
    }

    else
    {
      v18 = 0;
    }

    *(&self->_requestedRadioStationProperties + 8) = *(&self->_requestedRadioStationProperties + 8) & 0xDF | v18;
    if ([properties containsObject:*MEMORY[0x1E696FEB8]])
    {
      v19 = 64;
    }

    else
    {
      v19 = 0;
    }

    *(&self->_requestedRadioStationProperties + 8) = *(&self->_requestedRadioStationProperties + 8) & 0xBF | v19;
    if ([properties containsObject:*MEMORY[0x1E696FEB0]])
    {
      v20 = 0x80;
    }

    else
    {
      v20 = 0;
    }

    *(&self->_requestedRadioStationProperties + 8) = v20 & 0x80 | *(&self->_requestedRadioStationProperties + 8) & 0x7F;
    *&self->_requestedRadioStationProperties |= 1u;
  }

  stationStringID = [metadataCopy stationStringID];
  stationHash = [metadataCopy stationHash];
  stationID = [metadataCopy stationID];
  if ([stationStringID length] || objc_msgSend(stationHash, "length") | stationID)
  {
    v24 = objc_alloc(MEMORY[0x1E6970750]);
    v25 = objc_alloc(MEMORY[0x1E6970550]);
    identityKind = [MEMORY[0x1E6970758] identityKind];
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __73__MPCModelRadioStationBuilder_modelRadioStationForMetadata_userIdentity___block_invoke;
    v32[3] = &unk_1E82358D0;
    v33 = identityCopy;
    v34 = stationStringID;
    v35 = stationHash;
    v36 = stationID;
    v27 = [v25 initWithSource:@"StorePlatform" modelKind:identityKind block:v32];
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __73__MPCModelRadioStationBuilder_modelRadioStationForMetadata_userIdentity___block_invoke_4;
    v30[3] = &unk_1E8235920;
    v30[4] = self;
    v31 = metadataCopy;
    v28 = [v24 initWithIdentifiers:v27 block:v30];
  }

  else
  {
    v28 = 0;
  }

  return v28;
}

void __73__MPCModelRadioStationBuilder_modelRadioStationForMetadata_userIdentity___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 accountDSID];
  [v4 setPersonalStoreIdentifiersWithPersonID:v5 block:&__block_literal_global_17233];

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __73__MPCModelRadioStationBuilder_modelRadioStationForMetadata_userIdentity___block_invoke_3;
  v8[3] = &unk_1E82358A8;
  v9 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v10 = v6;
  v11 = v7;
  [v4 setRadioIdentifiersWithBlock:v8];
}

void __73__MPCModelRadioStationBuilder_modelRadioStationForMetadata_userIdentity___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = *(a1 + 32);
  v6 = *(v5 + 8);
  if ((v6 & 2) != 0)
  {
    [v3 setBeats1:0];
    v5 = *(a1 + 32);
    v6 = *(v5 + 8);
    if ((v6 & 4) == 0)
    {
LABEL_3:
      if ((v6 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((*(v5 + 8) & 4) == 0)
  {
    goto LABEL_3;
  }

  v9 = [*(a1 + 40) name];
  [v4 setName:v9];

  v5 = *(a1 + 32);
  v6 = *(v5 + 8);
  if ((v6 & 8) == 0)
  {
LABEL_4:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_15:
  v10 = [*(a1 + 40) descriptionText];
  [v4 setEditorNotes:v10];

  v5 = *(a1 + 32);
  if ((*(v5 + 8) & 0x10) != 0)
  {
LABEL_5:
    v7 = [*(a1 + 40) descriptionText];
    [v4 setShortEditorNotes:v7];

    v5 = *(a1 + 32);
  }

LABEL_6:
  if (*(v5 + 12))
  {
    [v4 setHasExplicitContent:0];
    v5 = *(a1 + 32);
  }

  v8 = *(v5 + 16);
  if (v8)
  {
    v11 = [*(a1 + 40) artworkInfo];
    v12 = [v11 responseDictionary];
    v13 = v12;
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v15 = [v11 responseArray];
      v16 = v15;
      if (v15)
      {
        v14 = v15;
      }

      else
      {
        v17 = [v11 artworkURL];
        v14 = [v17 absoluteString];
      }
    }

    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __73__MPCModelRadioStationBuilder_modelRadioStationForMetadata_userIdentity___block_invoke_5;
    v28[3] = &unk_1E82358F8;
    v29 = v14;
    v18 = v14;
    [v4 setArtworkCatalogBlock:v28];

    v5 = *(a1 + 32);
    v8 = *(v5 + 16);
    if ((v8 & 2) == 0)
    {
LABEL_10:
      if ((v8 & 4) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_25;
    }
  }

  else if ((*(v5 + 16) & 2) == 0)
  {
    goto LABEL_10;
  }

  [v4 setAllowsItemLiking:{objc_msgSend(*(a1 + 40), "allowsItemLiking")}];
  v5 = *(a1 + 32);
  v8 = *(v5 + 16);
  if ((v8 & 4) == 0)
  {
LABEL_11:
    if ((v8 & 8) == 0)
    {
      goto LABEL_30;
    }

LABEL_26:
    v20 = [*(a1 + 40) type] - 1;
    if (v20 > 9)
    {
      v21 = 0;
    }

    else
    {
      v21 = qword_1C6045450[v20];
    }

    [v4 setType:v21];
    v5 = *(a1 + 32);
    goto LABEL_30;
  }

LABEL_25:
  v19 = [*(a1 + 40) attributionLabel];
  [v4 setAttributionLabel:v19];

  v5 = *(a1 + 32);
  if ((*(v5 + 16) & 8) != 0)
  {
    goto LABEL_26;
  }

LABEL_30:
  if ((*(v5 + 16) & 0x10) != 0)
  {
    v22 = [*(a1 + 40) subtype];
    if (v22 <= 2)
    {
      [v4 setSubtype:v22];
    }
  }

  v23 = *(*(a1 + 32) + 16);
  if ((v23 & 0x20) == 0)
  {
    if ((*(*(a1 + 32) + 16) & 0x40) == 0)
    {
      goto LABEL_35;
    }

LABEL_38:
    v24 = [*(a1 + 40) providerResource];
    v25 = [v24 url];
    [v4 setProviderUniversalLink:v25];

    if ((*(*(a1 + 32) + 16) & 0x80) == 0)
    {
      goto LABEL_36;
    }

LABEL_39:
    v26 = [*(a1 + 40) providerResource];
    v27 = [v26 bundleIdentifier];
    [v4 setProviderBundleIdentifier:v27];

    goto LABEL_36;
  }

  [v4 setSubscriptionRequired:{objc_msgSend(*(a1 + 40), "isSubscriptionRequired")}];
  v23 = *(*(a1 + 32) + 16);
  if ((v23 & 0x40) != 0)
  {
    goto LABEL_38;
  }

LABEL_35:
  if (v23 < 0)
  {
    goto LABEL_39;
  }

LABEL_36:
  [v4 setContainsVideo:{objc_msgSend(*(a1 + 40), "containsVideo")}];
}

id __73__MPCModelRadioStationBuilder_modelRadioStationForMetadata_userIdentity___block_invoke_5(uint64_t a1)
{
  v1 = [MEMORY[0x1E69709C0] artworkRequestTokenForStorePlatformArtworkValue:*(a1 + 32)];
  if (v1)
  {
    v2 = objc_alloc(MEMORY[0x1E69704A0]);
    v3 = [MEMORY[0x1E6970980] sharedStoreArtworkDataSource];
    v4 = [v2 initWithToken:v1 dataSource:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void __73__MPCModelRadioStationBuilder_modelRadioStationForMetadata_userIdentity___block_invoke_3(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  [v4 setStationStringID:v3];
  [v4 setStationHash:a1[5]];
  [v4 setStationID:a1[6]];
}

- (MPCModelRadioStationBuilder)initWithRequestedProperties:(id)properties
{
  propertiesCopy = properties;
  v9.receiver = self;
  v9.super_class = MPCModelRadioStationBuilder;
  v5 = [(MPCModelRadioStationBuilder *)&v9 init];
  if (v5)
  {
    v6 = [propertiesCopy copy];
    requestedProperties = v5->_requestedProperties;
    v5->_requestedProperties = v6;
  }

  return v5;
}

@end