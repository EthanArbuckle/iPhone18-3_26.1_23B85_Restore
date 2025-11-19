@interface HUComfortSoundsShuffler
+ (HUComfortSoundsShuffler)shufflerWithArray:(id)a3;
- (HUComfortSoundsShuffler)initWithArray:(id)a3;
- (id)nextObject;
- (void)shuffle;
@end

@implementation HUComfortSoundsShuffler

+ (HUComfortSoundsShuffler)shufflerWithArray:(id)a3
{
  v3 = a3;
  v4 = [[HUComfortSoundsShuffler alloc] initWithArray:v3];

  return v4;
}

- (HUComfortSoundsShuffler)initWithArray:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HUComfortSoundsShuffler;
  v5 = [(HUComfortSoundsShuffler *)&v9 init];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DF70] arrayWithArray:v4];
    array = v5->_array;
    v5->_array = v6;

    [(HUComfortSoundsShuffler *)v5 shuffle];
    v5->_index = 0;
  }

  return v5;
}

- (id)nextObject
{
  v2 = self;
  objc_sync_enter(v2);
  array = v2->_array;
  v4 = v2->_index + 1;
  v2->_index = v4;
  if (v4 >= [(NSMutableArray *)array count])
  {
    [(HUComfortSoundsShuffler *)v2 shuffle];
    v2->_index = 0;
  }

  if ([(NSMutableArray *)v2->_array count]<= v2->_index)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSMutableArray *)v2->_array objectAtIndex:?];
  }

  objc_sync_exit(v2);

  return v5;
}

- (void)shuffle
{
  if ([(NSMutableArray *)self->_array count]>= 2)
  {
    v7 = [(NSMutableArray *)self->_array lastObject];
    if ([(NSMutableArray *)self->_array count]!= 1)
    {
      v3 = 0;
      v4 = 0;
      do
      {
        [(NSMutableArray *)self->_array exchangeObjectAtIndex:v4 withObjectAtIndex:v4 + arc4random_uniform(v3 + [(NSMutableArray *)self->_array count])];
        ++v4;
        --v3;
      }

      while (v4 < [(NSMutableArray *)self->_array count]- 1);
    }

    v5 = [(NSMutableArray *)self->_array firstObject];

    v6 = v7;
    if (v5 == v7)
    {
      [(NSMutableArray *)self->_array exchangeObjectAtIndex:0 withObjectAtIndex:[(NSMutableArray *)self->_array count]- 1];
      v6 = v7;
    }
  }
}

@end