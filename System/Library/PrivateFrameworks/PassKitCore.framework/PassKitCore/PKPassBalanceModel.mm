@interface PKPassBalanceModel
- (PKPassBalanceModel)initWithBalances:(id)balances;
- (PKPassBalanceModel)initWithCoder:(id)coder;
- (id)description;
@end

@implementation PKPassBalanceModel

- (PKPassBalanceModel)initWithBalances:(id)balances
{
  balancesCopy = balances;
  v10.receiver = self;
  v10.super_class = PKPassBalanceModel;
  v5 = [(PKPassBalanceModel *)&v10 init];
  if (v5)
  {
    allObjects = [balancesCopy allObjects];
    v7 = [allObjects pk_indexDictionaryByApplyingBlock:&__block_literal_global_214];
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
  allValues = [(NSDictionary *)self->_balancesByID allValues];
  v5 = [allValues componentsJoinedByString:{@", "}];
  [v3 appendFormat:@"{%@}", v5];

  [v3 appendString:@">"];

  return v3;
}

- (PKPassBalanceModel)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(PKPassBalanceModel *)self init];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x1E695DFD8]);
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 initWithObjects:{v7, v8, objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"balances"];
    balancesByID = v5->_balancesByID;
    v5->_balancesByID = v10;
  }

  return v5;
}

@end