@interface HDReferenceExtractionResult
- (HDReferenceExtractionResult)initWithCoder:(id)a3;
- (HDReferenceExtractionResult)initWithCompleteResources:(id)a3 incompleteResources:(id)a4 unresolvableReferences:(id)a5 nextSearchResultURL:(id)a6;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HDReferenceExtractionResult

- (HDReferenceExtractionResult)initWithCompleteResources:(id)a3 incompleteResources:(id)a4 unresolvableReferences:(id)a5 nextSearchResultURL:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(HDReferenceExtractionResult *)self init];
  if (v14)
  {
    v15 = [v10 copy];
    completeResources = v14->_completeResources;
    v14->_completeResources = v15;

    v17 = [v11 copy];
    incompleteResources = v14->_incompleteResources;
    v14->_incompleteResources = v17;

    v19 = [v12 copy];
    unresolvableReferences = v14->_unresolvableReferences;
    v14->_unresolvableReferences = v19;

    v21 = [v13 copy];
    nextSearchResultURL = v14->_nextSearchResultURL;
    v14->_nextSearchResultURL = v21;
  }

  return v14;
}

- (HDReferenceExtractionResult)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = HDReferenceExtractionResult;
  v5 = [(HDReferenceExtractionResult *)&v17 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] hk_typesForArrayOf:objc_opt_class()];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"CompleteResources"];
    completeResources = v5->_completeResources;
    v5->_completeResources = v7;

    v9 = [MEMORY[0x277CBEB98] hk_typesForArrayOf:objc_opt_class()];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"IncompleteResources"];
    incompleteResources = v5->_incompleteResources;
    v5->_incompleteResources = v10;

    v12 = [v4 decodeObjectOfClasses:v9 forKey:@"UnresolvableReferences"];
    unresolvableReferences = v5->_unresolvableReferences;
    v5->_unresolvableReferences = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"NextSearchResult"];
    nextSearchResultURL = v5->_nextSearchResultURL;
    v5->_nextSearchResultURL = v14;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  completeResources = self->_completeResources;
  v5 = a3;
  [v5 encodeObject:completeResources forKey:@"CompleteResources"];
  [v5 encodeObject:self->_incompleteResources forKey:@"IncompleteResources"];
  [v5 encodeObject:self->_unresolvableReferences forKey:@"UnresolvableReferences"];
  [v5 encodeObject:self->_nextSearchResultURL forKey:@"NextSearchResult"];
}

@end