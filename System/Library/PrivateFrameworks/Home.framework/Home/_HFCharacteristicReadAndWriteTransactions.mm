@interface _HFCharacteristicReadAndWriteTransactions
- (_HFCharacteristicReadAndWriteTransactions)init;
@end

@implementation _HFCharacteristicReadAndWriteTransactions

- (_HFCharacteristicReadAndWriteTransactions)init
{
  v8.receiver = self;
  v8.super_class = _HFCharacteristicReadAndWriteTransactions;
  v2 = [(_HFCharacteristicReadAndWriteTransactions *)&v8 init];
  if (v2)
  {
    orderedSet = [MEMORY[0x277CBEB40] orderedSet];
    transactionsReading = v2->_transactionsReading;
    v2->_transactionsReading = orderedSet;

    orderedSet2 = [MEMORY[0x277CBEB40] orderedSet];
    transactionsWriting = v2->_transactionsWriting;
    v2->_transactionsWriting = orderedSet2;
  }

  return v2;
}

@end