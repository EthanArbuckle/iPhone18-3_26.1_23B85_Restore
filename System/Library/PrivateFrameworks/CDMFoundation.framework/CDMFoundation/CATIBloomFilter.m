@interface CATIBloomFilter
- (BOOL)contains:(id)a3;
- (CATIBloomFilter)initWithExceptedNumberOfItems:(unint64_t)a3 falsePositiveRate:(double)a4 seed:(unsigned int)a5;
- (void)add:(id)a3;
@end

@implementation CATIBloomFilter

- (BOOL)contains:(id)a3
{
  v4 = a3;
  v5 = +[MurmurHash3 hash128WithKey:length:seed:](MurmurHash3, "hash128WithKey:length:seed:", [v4 bytes], objc_msgSend(v4, "length"), self->_seed);
  if (self->_numberHashes)
  {
    v7 = v5;
    v8 = v6;
    v9 = 0;
    v10 = 0;
    do
    {
      v11 = [(CATIBitVector *)self->bitVector testAtIndex:(v7 + v9 * v8) % self->_numberOfBits];
      if (!v11)
      {
        break;
      }

      v9 = ++v10;
    }

    while (self->_numberHashes > v10);
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

- (void)add:(id)a3
{
  v11 = a3;
  v4 = v11;
  v5 = +[MurmurHash3 hash128WithKey:length:seed:](MurmurHash3, "hash128WithKey:length:seed:", [v11 bytes], objc_msgSend(v11, "length"), self->_seed);
  if (self->_numberHashes)
  {
    v7 = v5;
    v8 = v6;
    v9 = 0;
    v10 = 0;
    do
    {
      [(CATIBitVector *)self->bitVector setAtIndex:(v7 + v9 * v8) % self->_numberOfBits];
      v9 = ++v10;
    }

    while (self->_numberHashes > v10);
  }
}

- (CATIBloomFilter)initWithExceptedNumberOfItems:(unint64_t)a3 falsePositiveRate:(double)a4 seed:(unsigned int)a5
{
  v15.receiver = self;
  v15.super_class = CATIBloomFilter;
  v8 = [(CATIBloomFilter *)&v15 init];
  v9 = v8;
  if (v8)
  {
    v8->_seed = a5;
    v10 = a3 + a5;
    v8->_expectedNumberOfItems = v10;
    v8->_falsePositiveRate = a4;
    v11 = vcvtpd_u64_f64(log(a4) * v10 / -0.480453014);
    v9->_numberOfBits = v11;
    v9->_numberHashes = vcvtpd_u64_f64((v11 / v10) * 0.693147181);
    v12 = [[CATIBitVector alloc] initWithNumberOfBits:v9->_numberOfBits];
    bitVector = v9->bitVector;
    v9->bitVector = v12;
  }

  return v9;
}

@end