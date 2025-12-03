@interface WDRevisionAuthorTable
- (WDRevisionAuthorTable)initWithDocument:(id)document;
- (id)authorAt:(unint64_t)at;
- (id)description;
- (unint64_t)authorAddLookup:(id)lookup;
@end

@implementation WDRevisionAuthorTable

- (WDRevisionAuthorTable)initWithDocument:(id)document
{
  documentCopy = document;
  v10.receiver = self;
  v10.super_class = WDRevisionAuthorTable;
  v5 = [(WDRevisionAuthorTable *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->mDocument, documentCopy);
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mAuthors = v6->mAuthors;
    v6->mAuthors = v7;
  }

  return v6;
}

- (id)authorAt:(unint64_t)at
{
  if ([(NSMutableArray *)self->mAuthors count]<= at)
  {
    v6 = TCBundle();
    v5 = [v6 localizedStringForKey:@"Unknown" value:&stru_286EE1130 table:@"TCCompatibility"];
  }

  else
  {
    v5 = [(NSMutableArray *)self->mAuthors objectAtIndex:at];
  }

  return v5;
}

- (unint64_t)authorAddLookup:(id)lookup
{
  lookupCopy = lookup;
  if (lookupCopy && ([(NSMutableArray *)self->mAuthors containsObject:lookupCopy]& 1) == 0)
  {
    [(WDRevisionAuthorTable *)self addAuthor:lookupCopy];
  }

  v5 = [(NSMutableArray *)self->mAuthors indexOfObject:lookupCopy];

  return v5;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = WDRevisionAuthorTable;
  v2 = [(WDRevisionAuthorTable *)&v4 description];

  return v2;
}

@end