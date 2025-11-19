@interface MGOutstandingQuery
- (MGOutstandingQuery)initWithPredicate:(id)a3;
@end

@implementation MGOutstandingQuery

- (MGOutstandingQuery)initWithPredicate:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = MGOutstandingQuery;
  v5 = [(MGOutstandingQuery *)&v11 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277CCAD78]);
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 copy];
    predicate = v5->_predicate;
    v5->_predicate = v8;

    v5->_requiresTopology = ![(NSPredicate *)v5->_predicate mg_requiresCurrentDevice];
  }

  return v5;
}

@end