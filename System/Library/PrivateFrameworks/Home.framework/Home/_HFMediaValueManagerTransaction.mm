@interface _HFMediaValueManagerTransaction
- (_HFMediaValueManagerTransaction)init;
- (id)description;
@end

@implementation _HFMediaValueManagerTransaction

- (_HFMediaValueManagerTransaction)init
{
  v6.receiver = self;
  v6.super_class = _HFMediaValueManagerTransaction;
  v2 = [(_HFMediaValueManagerTransaction *)&v6 init];
  if (v2)
  {
    ++init_i;
    v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
    transactionNumber = v2->_transactionNumber;
    v2->_transactionNumber = v3;
  }

  return v2;
}

- (id)description
{
  v9.receiver = self;
  v9.super_class = _HFMediaValueManagerTransaction;
  v3 = [(_HFMediaValueManagerTransaction *)&v9 description];
  transactionNumber = [(_HFMediaValueManagerTransaction *)self transactionNumber];
  v5 = NSStringFromHMMediaPlaybackState([(_HFMediaValueManagerTransaction *)self playbackState]);
  writeFuture = [(_HFMediaValueManagerTransaction *)self writeFuture];
  v7 = [v3 stringByAppendingFormat:@"(Transaction ID %@) --> Transitioning to %@ %@", transactionNumber, v5, writeFuture];;

  return v7;
}

@end