@interface ArraySlicer
- (ArraySlicer)initWithArray:(id)a3 sliceSize:(unint64_t)a4;
- (id)consumed;
- (id)nextSlice;
- (id)unconsumed;
@end

@implementation ArraySlicer

- (ArraySlicer)initWithArray:(id)a3 sliceSize:(unint64_t)a4
{
  v7 = a3;
  v12.receiver = self;
  v12.super_class = ArraySlicer;
  v8 = [(ArraySlicer *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_array, a3);
    v10 = [v7 count];
    v9->_sliceSize = a4;
    v9->_count = v10;
  }

  return v9;
}

- (id)nextSlice
{
  count = self->_count;
  offset = self->_offset;
  v5 = count >= offset;
  v6 = count - offset;
  if (v6 != 0 && v5)
  {
    if (self->_sliceSize >= v6)
    {
      sliceSize = v6;
    }

    else
    {
      sliceSize = self->_sliceSize;
    }

    v9 = [[ArraySlice alloc] initWithArray:self->_array offset:self->_offset count:sliceSize];
    self->_offset += sliceSize;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)consumed
{
  if (self->_offset)
  {
    v3 = [[ArraySlice alloc] initWithArray:self->_array offset:0 count:self->_offset];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)unconsumed
{
  count = self->_count;
  offset = self->_offset;
  if (count <= offset)
  {
    v4 = 0;
  }

  else
  {
    v4 = [[ArraySlice alloc] initWithArray:self->_array offset:self->_offset count:count - offset];
  }

  return v4;
}

@end