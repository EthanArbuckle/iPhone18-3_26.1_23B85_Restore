@interface CSReusableBufferPoolConfiguration
- (CSReusableBufferPoolConfiguration)initWithBackingStoreCapacity:(unint64_t)a3 minimalNumberOfBackingStores:(unint64_t)a4 maximumNumberOfBackingStores:(unint64_t)a5 backingStoreIdleTimeout:(double)a6;
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

- (CSReusableBufferPoolConfiguration)initWithBackingStoreCapacity:(unint64_t)a3 minimalNumberOfBackingStores:(unint64_t)a4 maximumNumberOfBackingStores:(unint64_t)a5 backingStoreIdleTimeout:(double)a6
{
  v11.receiver = self;
  v11.super_class = CSReusableBufferPoolConfiguration;
  result = [(CSReusableBufferPoolConfiguration *)&v11 init];
  if (result)
  {
    result->_backingStoreCapacity = a3;
    result->_minimalNumberOfBackingStores = a4;
    result->_maximumNumberOfBackingStores = a5;
    result->_backingStoreIdleTimeout = a6;
  }

  return result;
}

@end