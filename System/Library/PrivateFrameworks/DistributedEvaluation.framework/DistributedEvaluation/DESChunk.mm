@interface DESChunk
- (BOOL)isEqual:(id)a3;
- (DESChunk)initWithKey:(id)a3 clippingBound:(id)a4 data:(id)a5;
- (unint64_t)hash;
@end

@implementation DESChunk

- (DESChunk)initWithKey:(id)a3 clippingBound:(id)a4 data:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = DESChunk;
  v12 = [(DESChunk *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_key, a3);
    objc_storeStrong(&v13->_clippingBound, a4);
    objc_storeStrong(&v13->_data, a5);
  }

  return v13;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(DESChunk *)self key];
      v7 = [(DESChunk *)v5 key];
      if ([v6 isEqualToString:v7])
      {
        v8 = [(DESChunk *)self clippingBound];
        v9 = [(DESChunk *)v5 clippingBound];
        if (v8 == v9)
        {
          v11 = [(DESChunk *)self data];
          v12 = [(DESChunk *)v5 data];
          v10 = [v11 isEqualToData:v12];
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