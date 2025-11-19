@interface FigCaptureFlatPlistArray
- (FigCaptureFlatPlistArray)initWithFlatPlist:(id)a3 offset:(unint64_t)a4;
- (id)objectAtIndex:(unint64_t)a3;
- (void)dealloc;
@end

@implementation FigCaptureFlatPlistArray

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FigCaptureFlatPlistArray;
  [(FigCaptureFlatPlistArray *)&v3 dealloc];
}

- (FigCaptureFlatPlistArray)initWithFlatPlist:(id)a3 offset:(unint64_t)a4
{
  v10.receiver = self;
  v10.super_class = FigCaptureFlatPlistArray;
  v6 = [(FigCaptureFlatPlistArray *)&v10 init];
  if (v6)
  {
    v6->_flatPlist = a3;
    v7 = [a3 bplist];
    v6->_bplist = v7;
    v6->_offset = a4;
    FigCaptureBinaryPlistGetDataAndCountForObjectAtOffset(v7, a4);
    v6->_count = v8;
  }

  return v6;
}

- (id)objectAtIndex:(unint64_t)a3
{
  OffsetForObjectAtIndexInObject = FigCaptureBinaryPlistGetOffsetForObjectAtIndexInObject(self->_bplist, self->_offset, a3);
  flatPlist = self->_flatPlist;

  return [(FigCaptureFlatPlist *)flatPlist objectAtOffset:?];
}

@end