@interface WDRevisionAuthorTable
- (WDRevisionAuthorTable)initWithDocument:(id)a3;
- (id)authorAt:(unint64_t)a3;
- (id)description;
- (unint64_t)authorAddLookup:(id)a3;
@end

@implementation WDRevisionAuthorTable

- (WDRevisionAuthorTable)initWithDocument:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = WDRevisionAuthorTable;
  v5 = [(WDRevisionAuthorTable *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->mDocument, v4);
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mAuthors = v6->mAuthors;
    v6->mAuthors = v7;
  }

  return v6;
}

- (id)authorAt:(unint64_t)a3
{
  if ([(NSMutableArray *)self->mAuthors count]<= a3)
  {
    v6 = TCBundle();
    v5 = [v6 localizedStringForKey:@"Unknown" value:&stru_286EE1130 table:@"TCCompatibility"];
  }

  else
  {
    v5 = [(NSMutableArray *)self->mAuthors objectAtIndex:a3];
  }

  return v5;
}

- (unint64_t)authorAddLookup:(id)a3
{
  v4 = a3;
  if (v4 && ([(NSMutableArray *)self->mAuthors containsObject:v4]& 1) == 0)
  {
    [(WDRevisionAuthorTable *)self addAuthor:v4];
  }

  v5 = [(NSMutableArray *)self->mAuthors indexOfObject:v4];

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