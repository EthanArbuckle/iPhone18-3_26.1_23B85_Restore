@interface DOCEnumerationProperties
- (DOCEnumerationProperties)initWithConfiguration:(id)a3 tags:(id)a4;
- (DOCEnumerationProperties)initWithHostIdentifier:(id)a3 maximumNumberOfItems:(int64_t)a4 allowedContentTypes:(id)a5 excludedContentTypes:(id)a6 tags:(id)a7;
@end

@implementation DOCEnumerationProperties

- (DOCEnumerationProperties)initWithConfiguration:(id)a3 tags:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 hostIdentifier];
  v9 = [v7 maximumNumberOfItemsToFetch];
  v10 = [v7 documentContentTypes];
  v11 = [v7 excludedDocumentContentTypes];

  v12 = [(DOCEnumerationProperties *)self initWithHostIdentifier:v8 maximumNumberOfItems:v9 allowedContentTypes:v10 excludedContentTypes:v11 tags:v6];
  return v12;
}

- (DOCEnumerationProperties)initWithHostIdentifier:(id)a3 maximumNumberOfItems:(int64_t)a4 allowedContentTypes:(id)a5 excludedContentTypes:(id)a6 tags:(id)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v21.receiver = self;
  v21.super_class = DOCEnumerationProperties;
  v16 = [(DOCEnumerationProperties *)&v21 init];
  v17 = v16;
  if (v16)
  {
    [(DOCEnumerationProperties *)v16 setHostIdentifier:v12];
    v18 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
    [(DOCEnumerationProperties *)v17 setMaximumNumberOfItems:v18];

    [(DOCEnumerationProperties *)v17 setAllowedContentTypes:v13];
    [(DOCEnumerationProperties *)v17 setExcludedContentTypes:v14];
    [(DOCEnumerationProperties *)v17 setTagIdentifiers:v15];
    v19 = v17;
  }

  return v17;
}

@end