@interface PKPaymentValidationCacheEntry
- (PKPaymentValidationCacheEntry)initWithResult:(BOOL)result;
@end

@implementation PKPaymentValidationCacheEntry

- (PKPaymentValidationCacheEntry)initWithResult:(BOOL)result
{
  v9.receiver = self;
  v9.super_class = PKPaymentValidationCacheEntry;
  v4 = [(PKPaymentValidationCacheEntry *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_result = result;
    date = [MEMORY[0x1E695DF00] date];
    timestamp = v5->_timestamp;
    v5->_timestamp = date;
  }

  return v5;
}

@end