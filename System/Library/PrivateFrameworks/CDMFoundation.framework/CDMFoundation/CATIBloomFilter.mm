@interface CATIBloomFilter
- (BOOL)contains:(id)contains;
- (CATIBloomFilter)initWithExceptedNumberOfItems:(unint64_t)items falsePositiveRate:(double)rate seed:(unsigned int)seed;
- (void)add:(id)add;
@end

@implementation CATIBloomFilter

- (BOOL)contains:(id)contains
{
  containsCopy = contains;
  v5 = +[MurmurHash3 hash128WithKey:length:seed:](MurmurHash3, "hash128WithKey:length:seed:", [containsCopy bytes], objc_msgSend(containsCopy, "length"), self->_seed);
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

- (void)add:(id)add
{
  addCopy = add;
  v4 = addCopy;
  v5 = +[MurmurHash3 hash128WithKey:length:seed:](MurmurHash3, "hash128WithKey:length:seed:", [addCopy bytes], objc_msgSend(addCopy, "length"), self->_seed);
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

- (CATIBloomFilter)initWithExceptedNumberOfItems:(unint64_t)items falsePositiveRate:(double)rate seed:(unsigned int)seed
{
  v15.receiver = self;
  v15.super_class = CATIBloomFilter;
  v8 = [(CATIBloomFilter *)&v15 init];
  v9 = v8;
  if (v8)
  {
    v8->_seed = seed;
    v10 = items + seed;
    v8->_expectedNumberOfItems = v10;
    v8->_falsePositiveRate = rate;
    v11 = vcvtpd_u64_f64(log(rate) * v10 / -0.480453014);
    v9->_numberOfBits = v11;
    v9->_numberHashes = vcvtpd_u64_f64((v11 / v10) * 0.693147181);
    v12 = [[CATIBitVector alloc] initWithNumberOfBits:v9->_numberOfBits];
    bitVector = v9->bitVector;
    v9->bitVector = v12;
  }

  return v9;
}

@end