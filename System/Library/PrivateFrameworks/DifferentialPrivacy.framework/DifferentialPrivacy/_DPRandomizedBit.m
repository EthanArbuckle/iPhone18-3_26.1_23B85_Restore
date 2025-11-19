@interface _DPRandomizedBit
+ (id)randomizedBit:(int64_t)a3 atIndex:(unint64_t)a4;
- (id)description;
- (id)initBit:(int64_t)a3 atIndex:(unint64_t)a4;
@end

@implementation _DPRandomizedBit

- (id)initBit:(int64_t)a3 atIndex:(unint64_t)a4
{
  if (a3 == 1 || a3 == -1)
  {
    v9.receiver = self;
    v9.super_class = _DPRandomizedBit;
    v6 = [(_DPRandomizedBit *)&v9 init];
    if (v6)
    {
      v6->_index = a4;
      v6->_value = a3;
    }

    self = v6;
    v7 = self;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)randomizedBit:(int64_t)a3 atIndex:(unint64_t)a4
{
  v4 = [[a1 alloc] initBit:a3 atIndex:a4];

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