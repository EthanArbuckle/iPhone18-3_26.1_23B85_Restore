@interface NMAPIModelObjectRequest
- (Class)responseParserClass;
- (NMAPIModelObjectRequest)initWithModelObject:(id)object;
- (id)copyWithZone:(_NSZone *)zone;
- (id)urlComponentsWithStoreURLBag:(id)bag error:(id *)error;
@end

@implementation NMAPIModelObjectRequest

- (NMAPIModelObjectRequest)initWithModelObject:(id)object
{
  objectCopy = object;
  v8.receiver = self;
  v8.super_class = NMAPIModelObjectRequest;
  v5 = [(MPStoreModelRequest *)&v8 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Model Object: %@", v5->_modelObject];
    [(NMAPIModelObjectRequest *)v5 setLabel:v6];

    [(NMAPIModelObjectRequest *)v5 setModelObject:objectCopy];
  }

  return v5;
}

- (id)urlComponentsWithStoreURLBag:(id)bag error:(id *)error
{
  v46[2] = *MEMORY[0x277D85DE8];
  bagCopy = bag;
  v7 = bagCopy;
  if (self->_modelObject)
  {
    v8 = MusicURLPathStorefrontWithURLBag(bagCopy);
    if (!v8)
    {
      v18 = NMLogForCategory(9);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [NMAPIFitnessMultiroomRequest urlComponentsWithStoreURLBag:error:];
      }

      if (error)
      {
        [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D7F900] code:-7201 userInfo:0];
        *error = v17 = 0;
      }

      else
      {
        v17 = 0;
      }

      goto LABEL_38;
    }

    modelObject = self->_modelObject;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v11 = self->_modelObject;
    if (isKindOfClass)
    {
      identifiers = [(MPModelObject *)self->_modelObject identifiers];
      universalStore = [identifiers universalStore];
      globalPlaylistID = [universalStore globalPlaylistID];

      v15 = MediaAPIPlaylistsPathString;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v30 = self->_modelObject;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v31 = MEMORY[0x277CCABB0];
          identifiers2 = [(MPModelObject *)self->_modelObject identifiers];
          universalStore2 = [identifiers2 universalStore];
          v34 = [v31 numberWithLongLong:{objc_msgSend(universalStore2, "adamID")}];
          globalPlaylistID = [v34 stringValue];

          v23 = @"artists";
          v35 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"includeOnly" value:@"default-playable-content"];
          v46[0] = v35;
          v36 = objc_alloc(MEMORY[0x277CCAD18]);
          v37 = [&unk_286C7E420 componentsJoinedByString:{@", "}];
          v38 = [v36 initWithName:@"views" value:v37];
          v46[1] = v38;
          v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:2];

          if (globalPlaylistID)
          {
            goto LABEL_16;
          }
        }

        else
        {
          v23 = 0;
          v24 = 0;
        }

        goto LABEL_29;
      }

      v19 = MEMORY[0x277CCABB0];
      identifiers3 = [(MPModelObject *)self->_modelObject identifiers];
      universalStore3 = [identifiers3 universalStore];
      v22 = [v19 numberWithLongLong:{objc_msgSend(universalStore3, "adamID")}];
      globalPlaylistID = [v22 stringValue];

      v15 = MediaAPIAlbumsPathString;
    }

    v23 = *v15;
    v24 = 0;
    if (globalPlaylistID)
    {
LABEL_16:
      if (v23)
      {
        v44.receiver = self;
        v44.super_class = NMAPIModelObjectRequest;
        v17 = [(NMAPIRequest *)&v44 urlComponentsWithStoreURLBag:v7 error:error];
        v25 = MEMORY[0x277CCACA8];
        v45[0] = @"/v1/catalog";
        v45[1] = v8;
        v45[2] = v23;
        v45[3] = globalPlaylistID;
        v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:4];
        v27 = [v25 pathWithComponents:v26];
        [v17 setPath:v27];

        if (v24)
        {
          queryItems = [v17 queryItems];
          v29 = [queryItems arrayByAddingObjectsFromArray:v24];
          [v17 setQueryItems:v29];
        }

        goto LABEL_37;
      }

      v39 = NMLogForCategory(9);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        [NMAPIModelObjectRequest urlComponentsWithStoreURLBag:error:];
      }

      if (error)
      {
        v40 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D7F900] code:-7101 userInfo:0];
        v23 = 0;
LABEL_33:
        v17 = 0;
        *error = v40;
LABEL_37:

LABEL_38:
        goto LABEL_39;
      }

      v23 = 0;
      goto LABEL_36;
    }

LABEL_29:
    v41 = NMLogForCategory(9);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      [NMAPIModelObjectRequest urlComponentsWithStoreURLBag:error:];
    }

    if (error)
    {
      v40 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D7F900] code:-7101 userInfo:0];
      globalPlaylistID = 0;
      goto LABEL_33;
    }

    globalPlaylistID = 0;
LABEL_36:
    v17 = 0;
    goto LABEL_37;
  }

  v16 = NMLogForCategory(9);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    [NMAPIModelObjectRequest urlComponentsWithStoreURLBag:error:];
  }

  if (error)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D7F900] code:-7101 userInfo:0];
    *error = v17 = 0;
  }

  else
  {
    v17 = 0;
  }

LABEL_39:

  v42 = *MEMORY[0x277D85DE8];

  return v17;
}

- (Class)responseParserClass
{
  modelObject = self->_modelObject;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (v4 = self->_modelObject, objc_opt_class(), (objc_opt_isKindOfClass()) || (v7 = self->_modelObject, objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    responseParserClass = objc_opt_class();
  }

  else
  {
    v8.receiver = self;
    v8.super_class = NMAPIModelObjectRequest;
    responseParserClass = [(NMAPIRequest *)&v8 responseParserClass];
  }

  return responseParserClass;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = NMAPIModelObjectRequest;
  v4 = [(NMAPIRequest *)&v7 copyWithZone:zone];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(v4 + 16, self->_modelObject);
  }

  return v5;
}

@end