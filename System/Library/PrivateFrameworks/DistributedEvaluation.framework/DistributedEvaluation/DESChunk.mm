@interface DESChunk
- (BOOL)isEqual:(id)equal;
- (DESChunk)initWithKey:(id)key clippingBound:(id)bound data:(id)data;
- (unint64_t)hash;
@end

@implementation DESChunk

- (DESChunk)initWithKey:(id)key clippingBound:(id)bound data:(id)data
{
  keyCopy = key;
  boundCopy = bound;
  dataCopy = data;
  v15.receiver = self;
  v15.super_class = DESChunk;
  v12 = [(DESChunk *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_key, key);
    objc_storeStrong(&v13->_clippingBound, bound);
    objc_storeStrong(&v13->_data, data);
  }

  return v13;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v6 = [(DESChunk *)self key];
      v7 = [(DESChunk *)v5 key];
      if ([v6 isEqualToString:v7])
      {
        clippingBound = [(DESChunk *)self clippingBound];
        clippingBound2 = [(DESChunk *)v5 clippingBound];
        if (clippingBound == clippingBound2)
        {
          data = [(DESChunk *)self data];
          data2 = [(DESChunk *)v5 data];
          v10 = [data isEqualToData:data2];
        }

        else
        {
          v10 = 0;
        }
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_key hash];
  v4 = [(NSNumber *)self->_clippingBound hash]^ v3;
  return v4 ^ [(NSMutableData *)self->_data hash];
}

@end