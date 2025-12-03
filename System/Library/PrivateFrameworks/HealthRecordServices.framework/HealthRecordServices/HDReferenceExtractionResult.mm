@interface HDReferenceExtractionResult
- (HDReferenceExtractionResult)initWithCoder:(id)coder;
- (HDReferenceExtractionResult)initWithCompleteResources:(id)resources incompleteResources:(id)incompleteResources unresolvableReferences:(id)references nextSearchResultURL:(id)l;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HDReferenceExtractionResult

- (HDReferenceExtractionResult)initWithCompleteResources:(id)resources incompleteResources:(id)incompleteResources unresolvableReferences:(id)references nextSearchResultURL:(id)l
{
  resourcesCopy = resources;
  incompleteResourcesCopy = incompleteResources;
  referencesCopy = references;
  lCopy = l;
  v14 = [(HDReferenceExtractionResult *)self init];
  if (v14)
  {
    v15 = [resourcesCopy copy];
    completeResources = v14->_completeResources;
    v14->_completeResources = v15;

    v17 = [incompleteResourcesCopy copy];
    incompleteResources = v14->_incompleteResources;
    v14->_incompleteResources = v17;

    v19 = [referencesCopy copy];
    unresolvableReferences = v14->_unresolvableReferences;
    v14->_unresolvableReferences = v19;

    v21 = [lCopy copy];
    nextSearchResultURL = v14->_nextSearchResultURL;
    v14->_nextSearchResultURL = v21;
  }

  return v14;
}

- (HDReferenceExtractionResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = HDReferenceExtractionResult;
  v5 = [(HDReferenceExtractionResult *)&v17 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] hk_typesForArrayOf:objc_opt_class()];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"CompleteResources"];
    completeResources = v5->_completeResources;
    v5->_completeResources = v7;

    v9 = [MEMORY[0x277CBEB98] hk_typesForArrayOf:objc_opt_class()];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"IncompleteResources"];
    incompleteResources = v5->_incompleteResources;
    v5->_incompleteResources = v10;

    v12 = [coderCopy decodeObjectOfClasses:v9 forKey:@"UnresolvableReferences"];
    unresolvableReferences = v5->_unresolvableReferences;
    v5->_unresolvableReferences = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"NextSearchResult"];
    nextSearchResultURL = v5->_nextSearchResultURL;
    v5->_nextSearchResultURL = v14;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  completeResources = self->_completeResources;
  coderCopy = coder;
  [coderCopy encodeObject:completeResources forKey:@"CompleteResources"];
  [coderCopy encodeObject:self->_incompleteResources forKey:@"IncompleteResources"];
  [coderCopy encodeObject:self->_unresolvableReferences forKey:@"UnresolvableReferences"];
  [coderCopy encodeObject:self->_nextSearchResultURL forKey:@"NextSearchResult"];
}

@end