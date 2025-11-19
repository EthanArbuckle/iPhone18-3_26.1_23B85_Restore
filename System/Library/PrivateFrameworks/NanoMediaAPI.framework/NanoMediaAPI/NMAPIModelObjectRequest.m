@interface NMAPIModelObjectRequest
- (Class)responseParserClass;
- (NMAPIModelObjectRequest)initWithModelObject:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)urlComponentsWithStoreURLBag:(id)a3 error:(id *)a4;
@end

@implementation NMAPIModelObjectRequest

- (NMAPIModelObjectRequest)initWithModelObject:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = NMAPIModelObjectRequest;
  v5 = [(MPStoreModelRequest *)&v8 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Model Object: %@", v5->_modelObject];
    [(NMAPIModelObjectRequest *)v5 setLabel:v6];

    [(NMAPIModelObjectRequest *)v5 setModelObject:v4];
  }

  return v5;
}

- (id)urlComponentsWithStoreURLBag:(id)a3 error:(id *)a4
{
  v46[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = v6;
  if (self->_modelObject)
  {
    v8 = MusicURLPathStorefrontWithURLBag(v6);
    if (!v8)
    {
      v18 = NMLogForCategory(9);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [NMAPIFitnessMultiroomRequest urlComponentsWithStoreURLBag:error:];
      }

      if (a4)
      {
        [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D7F900] code:-7201 userInfo:0];
        *a4 = v17 = 0;
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
      v12 = [(MPModelObject *)self->_modelObject identifiers];
      v13 = [v12 universalStore];
      v14 = [v13 globalPlaylistID];

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
          v32 = [(MPModelObject *)self->_modelObject identifiers];
          v33 = [v32 universalStore];
          v34 = [v31 numberWithLongLong:{objc_msgSend(v33, "adamID")}];
          v14 = [v34 stringValue];

          v23 = @"artists";
          v35 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"includeOnly" value:@"default-playable-content"];
          v46[0] = v35;
          v36 = objc_alloc(MEMORY[0x277CCAD18]);
          v37 = [&unk_286C7E420 componentsJoinedByString:{@", "}];
          v38 = [v36 initWithName:@"views" value:v37];
          v46[1] = v38;
          v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:2];

          if (v14)
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
      v20 = [(MPModelObject *)self->_modelObject identifiers];
      v21 = [v20 universalStore];
      v22 = [v19 numberWithLongLong:{objc_msgSend(v21, "adamID")}];
      v14 = [v22 stringValue];

      v15 = MediaAPIAlbumsPathString;
    }

    v23 = *v15;
    v24 = 0;
    if (v14)
    {
LABEL_16:
      if (v23)
      {
        v44.receiver = self;
        v44.super_class = NMAPIModelObjectRequest;
        v17 = [(NMAPIRequest *)&v44 urlComponentsWithStoreURLBag:v7 error:a4];
        v25 = MEMORY[0x277CCACA8];
        v45[0] = @"/v1/catalog";
        v45[1] = v8;
        v45[2] = v23;
        v45[3] = v14;
        v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:4];
        v27 = [v25 pathWithComponents:v26];
        [v17 setPath:v27];

        if (v24)
        {
          v28 = [v17 queryItems];
          v29 = [v28 arrayByAddingObjectsFromArray:v24];
          [v17 setQueryItems:v29];
        }

        goto LABEL_37;
      }

      v39 = NMLogForCategory(9);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        [NMAPIModelObjectRequest urlComponentsWithStoreURLBag:error:];
      }

      if (a4)
      {
        v40 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D7F900] code:-7101 userInfo:0];
        v23 = 0;
LABEL_33:
        v17 = 0;
        *a4 = v40;
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

    if (a4)
    {
      v40 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D7F900] code:-7101 userInfo:0];
      v14 = 0;
      goto LABEL_33;
    }

    v14 = 0;
LABEL_36:
    v17 = 0;
    goto LABEL_37;
  }

  v16 = NMLogForCategory(9);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    [NMAPIModelObjectRequest urlComponentsWithStoreURLBag:error:];
  }

  if (a4)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D7F900] code:-7101 userInfo:0];
    *a4 = v17 = 0;
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
    v5 = objc_opt_class();
  }

  else
  {
    v8.receiver = self;
    v8.super_class = NMAPIModelObjectRequest;
    v5 = [(NMAPIRequest *)&v8 responseParserClass];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = NMAPIModelObjectRequest;
  v4 = [(NMAPIRequest *)&v7 copyWithZone:a3];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(v4 + 16, self->_modelObject);
  }

  return v5;
}

@end