@interface KGTransactionToken
- (BOOL)isEqualToToken:(id)a3;
- (id)initForGraph:(id)a3 transactionSequence:(unint64_t)a4;
- (id)initForGraph:(id)a3 withString:(id)a4;
- (id)initForGraphIdentifier:(id)a3 transactionSequence:(unint64_t)a4;
@end

@implementation KGTransactionToken

- (BOOL)isEqualToToken:(id)a3
{
  stringRepresentation = self->_stringRepresentation;
  v4 = [a3 stringRepresentation];
  LOBYTE(stringRepresentation) = [(NSString *)stringRepresentation isEqualToString:v4];

  return stringRepresentation;
}

- (id)initForGraphIdentifier:(id)a3 transactionSequence:(unint64_t)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = KGTransactionToken;
  v7 = [(KGTransactionToken *)&v11 init];
  if (v7)
  {
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%lu", v6, a4];
    stringRepresentation = v7->_stringRepresentation;
    v7->_stringRepresentation = v8;

    v7->_transactionSequenceNumber = a4;
  }

  return v7;
}

- (id)initForGraph:(id)a3 transactionSequence:(unint64_t)a4
{
  v6 = a3;
  v12.receiver = self;
  v12.super_class = KGTransactionToken;
  v7 = [(KGTransactionToken *)&v12 init];
  if (v7)
  {
    v8 = [v6 graphIdentifier];
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%lu", v8, a4];
    stringRepresentation = v7->_stringRepresentation;
    v7->_stringRepresentation = v9;

    v7->_transactionSequenceNumber = a4;
  }

  return v7;
}

- (id)initForGraph:(id)a3 withString:(id)a4
{
  v6 = a3;
  v7 = a4;
  v20.receiver = self;
  v20.super_class = KGTransactionToken;
  v8 = [(KGTransactionToken *)&v20 init];
  v9 = v6;
  v10 = [v7 componentsSeparatedByString:@":"];
  if ([v10 count] != 2)
  {

LABEL_8:
    v18 = 0;
    goto LABEL_9;
  }

  v11 = objc_alloc(MEMORY[0x277CCAD78]);
  v12 = [v10 objectAtIndexedSubscript:0];
  v13 = [v11 initWithUUIDString:v12];

  v14 = [v9 graphIdentifier];
  v15 = [v13 isEqual:v14];

  if (v15)
  {
    v16 = [v10 objectAtIndexedSubscript:1];
    v17 = [v16 integerValue];
  }

  else
  {
    v17 = -1;
  }

  if (v17 < 0)
  {
    goto LABEL_8;
  }

  objc_storeStrong(&v8->_stringRepresentation, a4);
  v8->_transactionSequenceNumber = v17;
  v18 = v8;
LABEL_9:

  return v18;
}

@end