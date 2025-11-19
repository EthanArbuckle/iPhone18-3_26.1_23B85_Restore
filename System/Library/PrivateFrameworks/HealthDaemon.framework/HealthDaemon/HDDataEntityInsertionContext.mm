@interface HDDataEntityInsertionContext
- (HDDataEntityInsertionContext)initWithProvenance:(id)a3 creationDate:(double)a4 skipInsertionFilter:(BOOL)a5 resolveAssociations:(BOOL)a6 profile:(id)a7;
- (void)prepareObjectForInsertion:(id)a3;
@end

@implementation HDDataEntityInsertionContext

- (HDDataEntityInsertionContext)initWithProvenance:(id)a3 creationDate:(double)a4 skipInsertionFilter:(BOOL)a5 resolveAssociations:(BOOL)a6 profile:(id)a7
{
  v13 = a3;
  v14 = a7;
  v18.receiver = self;
  v18.super_class = HDDataEntityInsertionContext;
  v15 = [(HDDataEntityInsertionContext *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_provenance, a3);
    v16->_creationDate = a4;
    v16->_skipInsertionFilter = a5;
    v16->_resolveAssociations = a6;
    objc_storeWeak(&v16->_profile, v14);
    v16->_defaultCreationDate = CFAbsoluteTimeGetCurrent();
  }

  return v16;
}

- (void)prepareObjectForInsertion:(id)a3
{
  v10 = a3;
  v4 = [(HDDataOriginProvenance *)self->_provenance sourceID];
  v5 = [v10 sourceRevision];
  v6 = [v5 source];
  [v6 _setSourceID:v4];

  v7 = v10;
  creationDate = self->_creationDate;
  if (creationDate == 2.22507386e-308)
  {
    [v10 _creationTimestamp];
    if (v9 != 2.22507386e-308)
    {
      goto LABEL_5;
    }

    creationDate = self->_defaultCreationDate;
    v7 = v10;
  }

  [v7 _setCreationTimestamp:creationDate];
LABEL_5:
}

@end