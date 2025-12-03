@interface CATIBitVector
- (CATIBitVector)initWithNumberOfBits:(unint64_t)bits;
- (id)data;
- (void)dealloc;
@end

@implementation CATIBitVector

- (id)data
{
  v2 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:self->_data length:self->_numberOfBytes];

  return v2;
}

- (void)dealloc
{
  free(self->_data);
  v3.receiver = self;
  v3.super_class = CATIBitVector;
  [(CATIBitVector *)&v3 dealloc];
}

- (CATIBitVector)initWithNumberOfBits:(unint64_t)bits
{
  v8.receiver = self;
  v8.super_class = CATIBitVector;
  v4 = [(CATIBitVector *)&v8 init];
  v5 = v4;
  if (v4)
  {
    *(v4 + 8) = xmmword_1DC52F2F0;
    v6 = vcvtps_u32_f32(vcvts_n_f32_u64(bits, 3uLL));
    v5->_numberOfBits = bits;
    v5->_numberOfBytes = v6;
    v5->_data = malloc_type_calloc(v6, 1uLL, 0x100004077774924uLL);
  }

  return v5;
}

@end