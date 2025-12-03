@interface FigCaptureFlatPlistEnumerator
- (FigCaptureFlatPlistEnumerator)initWithFlatPlist:(id)plist offset:(unint64_t)offset count:(unint64_t)count;
- (id)allObjects;
- (id)nextObject;
- (void)dealloc;
@end

@implementation FigCaptureFlatPlistEnumerator

- (id)nextObject
{
  index = self->_index;
  if (index >= self->_count)
  {
    return 0;
  }

  bplist = self->_bplist;
  offset = self->_offset;
  self->_index = index + 1;
  OffsetForObjectAtIndexInObject = FigCaptureBinaryPlistGetOffsetForObjectAtIndexInObject(bplist, offset, index);
  flatPlist = self->_flatPlist;

  return [(FigCaptureFlatPlist *)flatPlist objectAtOffset:?];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FigCaptureFlatPlistEnumerator;
  [(FigCaptureFlatPlistEnumerator *)&v3 dealloc];
}

- (FigCaptureFlatPlistEnumerator)initWithFlatPlist:(id)plist offset:(unint64_t)offset count:(unint64_t)count
{
  v10.receiver = self;
  v10.super_class = FigCaptureFlatPlistEnumerator;
  v8 = [(FigCaptureFlatPlistEnumerator *)&v10 init];
  if (v8)
  {
    v8->_flatPlist = plist;
    v8->_bplist = [plist bplist];
    v8->_offset = offset;
    v8->_count = count;
    v8->_index = 0;
  }

  return v8;
}

- (id)allObjects
{
  count = self->_count;
  index = self->_index;
  v5 = &v10 - ((8 * (count - index) + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = count - index;
  if (count != index)
  {
    v7 = 0;
    do
    {
      OffsetForObjectAtIndexInObject = FigCaptureBinaryPlistGetOffsetForObjectAtIndexInObject(self->_bplist, self->_offset, v7 + self->_index);
      *&v5[8 * v7++] = [(FigCaptureFlatPlist *)&self->_flatPlist->super.isa objectAtOffset:?];
    }

    while (v6 != v7);
    count = self->_count;
  }

  self->_index = count;
  return [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:v6];
}

@end