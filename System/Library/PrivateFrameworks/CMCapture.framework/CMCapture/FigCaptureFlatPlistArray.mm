@interface FigCaptureFlatPlistArray
- (FigCaptureFlatPlistArray)initWithFlatPlist:(id)plist offset:(unint64_t)offset;
- (id)objectAtIndex:(unint64_t)index;
- (void)dealloc;
@end

@implementation FigCaptureFlatPlistArray

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FigCaptureFlatPlistArray;
  [(FigCaptureFlatPlistArray *)&v3 dealloc];
}

- (FigCaptureFlatPlistArray)initWithFlatPlist:(id)plist offset:(unint64_t)offset
{
  v10.receiver = self;
  v10.super_class = FigCaptureFlatPlistArray;
  v6 = [(FigCaptureFlatPlistArray *)&v10 init];
  if (v6)
  {
    v6->_flatPlist = plist;
    bplist = [plist bplist];
    v6->_bplist = bplist;
    v6->_offset = offset;
    FigCaptureBinaryPlistGetDataAndCountForObjectAtOffset(bplist, offset);
    v6->_count = v8;
  }

  return v6;
}

- (id)objectAtIndex:(unint64_t)index
{
  OffsetForObjectAtIndexInObject = FigCaptureBinaryPlistGetOffsetForObjectAtIndexInObject(self->_bplist, self->_offset, index);
  flatPlist = self->_flatPlist;

  return [(FigCaptureFlatPlist *)flatPlist objectAtOffset:?];
}

@end