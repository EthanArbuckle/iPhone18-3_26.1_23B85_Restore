@interface KGTransactionToken
- (BOOL)isEqualToToken:(id)token;
- (id)initForGraph:(id)graph transactionSequence:(unint64_t)sequence;
- (id)initForGraph:(id)graph withString:(id)string;
- (id)initForGraphIdentifier:(id)identifier transactionSequence:(unint64_t)sequence;
@end

@implementation KGTransactionToken

- (BOOL)isEqualToToken:(id)token
{
  stringRepresentation = self->_stringRepresentation;
  stringRepresentation = [token stringRepresentation];
  LOBYTE(stringRepresentation) = [(NSString *)stringRepresentation isEqualToString:stringRepresentation];

  return stringRepresentation;
}

- (id)initForGraphIdentifier:(id)identifier transactionSequence:(unint64_t)sequence
{
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = KGTransactionToken;
  v7 = [(KGTransactionToken *)&v11 init];
  if (v7)
  {
    sequence = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%lu", identifierCopy, sequence];
    stringRepresentation = v7->_stringRepresentation;
    v7->_stringRepresentation = sequence;

    v7->_transactionSequenceNumber = sequence;
  }

  return v7;
}

- (id)initForGraph:(id)graph transactionSequence:(unint64_t)sequence
{
  graphCopy = graph;
  v12.receiver = self;
  v12.super_class = KGTransactionToken;
  v7 = [(KGTransactionToken *)&v12 init];
  if (v7)
  {
    graphIdentifier = [graphCopy graphIdentifier];
    sequence = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%lu", graphIdentifier, sequence];
    stringRepresentation = v7->_stringRepresentation;
    v7->_stringRepresentation = sequence;

    v7->_transactionSequenceNumber = sequence;
  }

  return v7;
}

- (id)initForGraph:(id)graph withString:(id)string
{
  graphCopy = graph;
  stringCopy = string;
  v20.receiver = self;
  v20.super_class = KGTransactionToken;
  v8 = [(KGTransactionToken *)&v20 init];
  v9 = graphCopy;
  v10 = [stringCopy componentsSeparatedByString:@":"];
  if ([v10 count] != 2)
  {

LABEL_8:
    v18 = 0;
    goto LABEL_9;
  }

  v11 = objc_alloc(MEMORY[0x277CCAD78]);
  v12 = [v10 objectAtIndexedSubscript:0];
  v13 = [v11 initWithUUIDString:v12];

  graphIdentifier = [v9 graphIdentifier];
  v15 = [v13 isEqual:graphIdentifier];

  if (v15)
  {
    v16 = [v10 objectAtIndexedSubscript:1];
    integerValue = [v16 integerValue];
  }

  else
  {
    integerValue = -1;
  }

  if (integerValue < 0)
  {
    goto LABEL_8;
  }

  objc_storeStrong(&v8->_stringRepresentation, string);
  v8->_transactionSequenceNumber = integerValue;
  v18 = v8;
LABEL_9:

  return v18;
}

@end