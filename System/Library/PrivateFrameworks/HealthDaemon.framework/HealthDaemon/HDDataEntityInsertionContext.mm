@interface HDDataEntityInsertionContext
- (HDDataEntityInsertionContext)initWithProvenance:(id)provenance creationDate:(double)date skipInsertionFilter:(BOOL)filter resolveAssociations:(BOOL)associations profile:(id)profile;
- (void)prepareObjectForInsertion:(id)insertion;
@end

@implementation HDDataEntityInsertionContext

- (HDDataEntityInsertionContext)initWithProvenance:(id)provenance creationDate:(double)date skipInsertionFilter:(BOOL)filter resolveAssociations:(BOOL)associations profile:(id)profile
{
  provenanceCopy = provenance;
  profileCopy = profile;
  v18.receiver = self;
  v18.super_class = HDDataEntityInsertionContext;
  v15 = [(HDDataEntityInsertionContext *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_provenance, provenance);
    v16->_creationDate = date;
    v16->_skipInsertionFilter = filter;
    v16->_resolveAssociations = associations;
    objc_storeWeak(&v16->_profile, profileCopy);
    v16->_defaultCreationDate = CFAbsoluteTimeGetCurrent();
  }

  return v16;
}

- (void)prepareObjectForInsertion:(id)insertion
{
  insertionCopy = insertion;
  sourceID = [(HDDataOriginProvenance *)self->_provenance sourceID];
  sourceRevision = [insertionCopy sourceRevision];
  source = [sourceRevision source];
  [source _setSourceID:sourceID];

  v7 = insertionCopy;
  creationDate = self->_creationDate;
  if (creationDate == 2.22507386e-308)
  {
    [insertionCopy _creationTimestamp];
    if (v9 != 2.22507386e-308)
    {
      goto LABEL_5;
    }

    creationDate = self->_defaultCreationDate;
    v7 = insertionCopy;
  }

  [v7 _setCreationTimestamp:creationDate];
LABEL_5:
}

@end