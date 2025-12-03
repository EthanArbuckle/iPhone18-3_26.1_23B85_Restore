@interface EFMutableByteSet
- (id)copyWithZone:(_NSZone *)zone;
- (void)addBytesInRange:(_NSRange)range;
- (void)removeBytesInRange:(_NSRange)range;
@end

@implementation EFMutableByteSet

- (id)copyWithZone:(_NSZone *)zone
{
  result = objc_alloc_init(EFByteSet);
  if (result)
  {
    v5 = *self->super._bitString.__first_;
    *(result + 24) = *&self->super._bitString.__first_[2];
    *(result + 8) = v5;
  }

  return result;
}

- (void)addBytesInRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v6 = range.location + range.length;
  if (range.location + range.length >= 0x101)
  {
    v7 = MEMORY[0x1E695DF30];
    v8 = *MEMORY[0x1E695D940];
    v9 = NSStringFromRange(range);
    [v7 raise:v8 format:{@"range extends beyond {0..255}: (NSRange) %@", v9}];
  }

  if (location < v6)
  {
    v10 = 256;
    if (location > 0x100)
    {
      v10 = location;
    }

    do
    {
      if (v10 == location)
      {
        std::__throw_out_of_range[abi:ne200100]("bitset set argument out of range");
      }

      *(self->super._bitString.__first_ + ((location >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << location;
      ++location;
      --length;
    }

    while (length);
  }
}

- (void)removeBytesInRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v6 = range.location + range.length;
  if (range.location + range.length >= 0x101)
  {
    v7 = MEMORY[0x1E695DF30];
    v8 = *MEMORY[0x1E695D940];
    v9 = NSStringFromRange(range);
    [v7 raise:v8 format:{@"range extends beyond {0..255}: (NSRange) %@", v9}];
  }

  if (location < v6)
  {
    v10 = 256;
    if (location > 0x100)
    {
      v10 = location;
    }

    do
    {
      if (v10 == location)
      {
        std::__throw_out_of_range[abi:ne200100]("bitset reset argument out of range");
      }

      *(self->super._bitString.__first_ + ((location >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << location);
      ++location;
      --length;
    }

    while (length);
  }
}

@end