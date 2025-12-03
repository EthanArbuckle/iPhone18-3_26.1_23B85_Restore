@interface WDCitationTable
- (WDCitationTable)initWithDocument:(id)document;
- (WDDocument)document;
- (id)citationFor:(id)for;
- (id)description;
@end

@implementation WDCitationTable

- (WDCitationTable)initWithDocument:(id)document
{
  documentCopy = document;
  v10.receiver = self;
  v10.super_class = WDCitationTable;
  v5 = [(WDCitationTable *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->mDocument, documentCopy);
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    mCitations = v6->mCitations;
    v6->mCitations = v7;
  }

  return v6;
}

- (id)citationFor:(id)for
{
  v3 = [(NSMutableDictionary *)self->mCitations objectForKey:for];

  return v3;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = WDCitationTable;
  v2 = [(WDCitationTable *)&v4 description];

  return v2;
}

- (WDDocument)document
{
  WeakRetained = objc_loadWeakRetained(&self->mDocument);

  return WeakRetained;
}

@end