@interface PKPaymentValidationCacheEntry
- (PKPaymentValidationCacheEntry)initWithResult:(BOOL)a3;
@end

@implementation PKPaymentValidationCacheEntry

- (PKPaymentValidationCacheEntry)initWithResult:(BOOL)a3
{
  v9.receiver = self;
  v9.super_class = PKPaymentValidationCacheEntry;
  v4 = [(PKPaymentValidationCacheEntry *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_result = a3;
    v6 = [MEMORY[0x1E695DF00] date];
    timestamp = v5->_timestamp;
    v5->_timestamp = v6;
  }

  return v5;
}

@end