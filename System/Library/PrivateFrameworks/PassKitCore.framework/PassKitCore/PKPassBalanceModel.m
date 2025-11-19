@interface PKPassBalanceModel
- (PKPassBalanceModel)initWithBalances:(id)a3;
- (PKPassBalanceModel)initWithCoder:(id)a3;
- (id)description;
@end

@implementation PKPassBalanceModel

- (PKPassBalanceModel)initWithBalances:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = PKPassBalanceModel;
  v5 = [(PKPassBalanceModel *)&v10 init];
  if (v5)
  {
    v6 = [v4 allObjects];
    v7 = [v6 pk_indexDictionaryByApplyingBlock:&__block_literal_global_214];
    balancesByID = v5->_balancesByID;
    v5->_balancesByID = v7;
  }

  return v5;
}

id __39__PKPassBalanceModel_initWithBalances___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 identifiers];
  v3 = [v2 anyObject];

  return v3;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  v4 = [(NSDictionary *)self->_balancesByID allValues];
  v5 = [v4 componentsJoinedByString:{@", "}];
  [v3 appendFormat:@"{%@}", v5];

  [v3 appendString:@">"];

  return v3;
}

- (PKPassBalanceModel)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(PKPassBalanceModel *)self init];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x1E695DFD8]);
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 initWithObjects:{v7, v8, objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"balances"];
    balancesByID = v5->_balancesByID;
    v5->_balancesByID = v10;
  }

  return v5;
}

@end