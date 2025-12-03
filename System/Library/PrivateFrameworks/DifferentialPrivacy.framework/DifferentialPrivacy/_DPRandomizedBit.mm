@interface _DPRandomizedBit
+ (id)randomizedBit:(int64_t)bit atIndex:(unint64_t)index;
- (id)description;
- (id)initBit:(int64_t)bit atIndex:(unint64_t)index;
@end

@implementation _DPRandomizedBit

- (id)initBit:(int64_t)bit atIndex:(unint64_t)index
{
  if (bit == 1 || bit == -1)
  {
    v9.receiver = self;
    v9.super_class = _DPRandomizedBit;
    v6 = [(_DPRandomizedBit *)&v9 init];
    if (v6)
    {
      v6->_index = index;
      v6->_value = bit;
    }

    self = v6;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

+ (id)randomizedBit:(int64_t)bit atIndex:(unint64_t)index
{
  v4 = [[self alloc] initBit:bit atIndex:index];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"%@: { index=%ld  value=%ld }", v5, self->_index, self->_value];;

  return v6;
}

@end