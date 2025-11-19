@interface FigCaptureFlatPlistSet
- (FigCaptureFlatPlistSet)initWithFlatPlist:(id)a3 offset:(unint64_t)a4;
- (id)member:(id)a3;
- (id)objectEnumerator;
- (void)dealloc;
@end

@implementation FigCaptureFlatPlistSet

- (FigCaptureFlatPlistSet)initWithFlatPlist:(id)a3 offset:(unint64_t)a4
{
  v10.receiver = self;
  v10.super_class = FigCaptureFlatPlistSet;
  v6 = [(FigCaptureFlatPlistSet *)&v10 init];
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

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FigCaptureFlatPlistSet;
  [(FigCaptureFlatPlistSet *)&v3 dealloc];
}

- (id)member:(id)a3
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    IndexForStringInObject = FigCaptureBinaryPlistFindIndexForStringInObject(self->_bplist, self->_offset, [a3 UTF8String], objc_msgSend(a3, "length"));
    if ((IndexForStringInObject & 0x8000000000000000) != 0)
    {
      return 0;
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      return 0;
    }

    IndexForStringInObject = FigCaptureBinaryPlistFindIndexForIntInObject(self->_bplist, self->_offset, [a3 longLongValue]);
    if ((IndexForStringInObject & 0x8000000000000000) != 0)
    {
      return 0;
    }
  }

  OffsetForObjectAtIndexInObject = FigCaptureBinaryPlistGetOffsetForObjectAtIndexInObject(self->_bplist, self->_offset, IndexForStringInObject);
  flatPlist = self->_flatPlist;

  return [(FigCaptureFlatPlist *)flatPlist objectAtOffset:?];
}

- (id)objectEnumerator
{
  v2 = [[FigCaptureFlatPlistEnumerator alloc] initWithFlatPlist:self->_flatPlist offset:self->_offset count:self->_count];

  return v2;
}

@end