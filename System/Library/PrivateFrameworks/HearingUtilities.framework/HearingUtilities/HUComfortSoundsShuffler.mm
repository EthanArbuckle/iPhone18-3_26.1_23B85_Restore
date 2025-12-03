@interface HUComfortSoundsShuffler
+ (HUComfortSoundsShuffler)shufflerWithArray:(id)array;
- (HUComfortSoundsShuffler)initWithArray:(id)array;
- (id)nextObject;
- (void)shuffle;
@end

@implementation HUComfortSoundsShuffler

+ (HUComfortSoundsShuffler)shufflerWithArray:(id)array
{
  arrayCopy = array;
  v4 = [[HUComfortSoundsShuffler alloc] initWithArray:arrayCopy];

  return v4;
}

- (HUComfortSoundsShuffler)initWithArray:(id)array
{
  arrayCopy = array;
  v9.receiver = self;
  v9.super_class = HUComfortSoundsShuffler;
  v5 = [(HUComfortSoundsShuffler *)&v9 init];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DF70] arrayWithArray:arrayCopy];
    array = v5->_array;
    v5->_array = v6;

    [(HUComfortSoundsShuffler *)v5 shuffle];
    v5->_index = 0;
  }

  return v5;
}

- (id)nextObject
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  array = selfCopy->_array;
  v4 = selfCopy->_index + 1;
  selfCopy->_index = v4;
  if (v4 >= [(NSMutableArray *)array count])
  {
    [(HUComfortSoundsShuffler *)selfCopy shuffle];
    selfCopy->_index = 0;
  }

  if ([(NSMutableArray *)selfCopy->_array count]<= selfCopy->_index)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSMutableArray *)selfCopy->_array objectAtIndex:?];
  }

  objc_sync_exit(selfCopy);

  return v5;
}

- (void)shuffle
{
  if ([(NSMutableArray *)self->_array count]>= 2)
  {
    lastObject = [(NSMutableArray *)self->_array lastObject];
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

    firstObject = [(NSMutableArray *)self->_array firstObject];

    v6 = lastObject;
    if (firstObject == lastObject)
    {
      [(NSMutableArray *)self->_array exchangeObjectAtIndex:0 withObjectAtIndex:[(NSMutableArray *)self->_array count]- 1];
      v6 = lastObject;
    }
  }
}

@end