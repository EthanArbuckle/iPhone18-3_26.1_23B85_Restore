@interface CSReusableBufferPoolConfiguration
- (CSReusableBufferPoolConfiguration)initWithBackingStoreCapacity:(unint64_t)capacity minimalNumberOfBackingStores:(unint64_t)stores maximumNumberOfBackingStores:(unint64_t)backingStores backingStoreIdleTimeout:(double)timeout;
- (id)description;
@end

@implementation CSReusableBufferPoolConfiguration

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v7.receiver = self;
  v7.super_class = CSReusableBufferPoolConfiguration;
  v4 = [(CSReusableBufferPoolConfiguration *)&v7 description];
  v5 = [v3 initWithFormat:@"%@ {backingStoreCapacity = %tu (bytes), minimalNumberOfBackingStores = %tu, maximumNumberOfBackingStores = %tu, backingStoreIdleTimeout = %f (seconds)}", v4, self->_backingStoreCapacity, self->_minimalNumberOfBackingStores, self->_maximumNumberOfBackingStores, *&self->_backingStoreIdleTimeout];

  return v5;
}

- (CSReusableBufferPoolConfiguration)initWithBackingStoreCapacity:(unint64_t)capacity minimalNumberOfBackingStores:(unint64_t)stores maximumNumberOfBackingStores:(unint64_t)backingStores backingStoreIdleTimeout:(double)timeout
{
  v11.receiver = self;
  v11.super_class = CSReusableBufferPoolConfiguration;
  result = [(CSReusableBufferPoolConfiguration *)&v11 init];
  if (result)
  {
    result->_backingStoreCapacity = capacity;
    result->_minimalNumberOfBackingStores = stores;
    result->_maximumNumberOfBackingStores = backingStores;
    result->_backingStoreIdleTimeout = timeout;
  }

  return result;
}

@end