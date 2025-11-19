@interface WDCitationTable
- (WDCitationTable)initWithDocument:(id)a3;
- (WDDocument)document;
- (id)citationFor:(id)a3;
- (id)description;
@end

@implementation WDCitationTable

- (WDCitationTable)initWithDocument:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = WDCitationTable;
  v5 = [(WDCitationTable *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->mDocument, v4);
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    mCitations = v6->mCitations;
    v6->mCitations = v7;
  }

  return v6;
}

- (id)citationFor:(id)a3
{
  v3 = [(NSMutableDictionary *)self->mCitations objectForKey:a3];

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