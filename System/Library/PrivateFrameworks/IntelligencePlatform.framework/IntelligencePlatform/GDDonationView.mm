@interface GDDonationView
- (GDDonationView)initWithAccessAssertion:(id)assertion database:(id)database;
- (void)enumerateTriples:(id)triples;
@end

@implementation GDDonationView

- (void)enumerateTriples:(id)triples
{
  triplesCopy = triples;
  db = self->_db;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1ABED5B3C;
  v7[3] = &unk_1E7961E70;
  v8 = triplesCopy;
  v6 = triplesCopy;
  [(_PASSqliteDatabase *)db prepQuery:@"SELECT * FROM donationSubgraph" onPrep:v7 onError:0];
}

- (GDDonationView)initWithAccessAssertion:(id)assertion database:(id)database
{
  assertionCopy = assertion;
  databaseCopy = database;
  v12.receiver = self;
  v12.super_class = GDDonationView;
  v9 = [(GDDonationView *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_accessAssertion, assertion);
    objc_storeStrong(&v10->_db, database);
  }

  return v10;
}

@end