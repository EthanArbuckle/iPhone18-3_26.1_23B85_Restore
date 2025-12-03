@interface FigCaptureFlatPlistSet
- (FigCaptureFlatPlistSet)initWithFlatPlist:(id)plist offset:(unint64_t)offset;
- (id)member:(id)member;
- (id)objectEnumerator;
- (void)dealloc;
@end

@implementation FigCaptureFlatPlistSet

- (FigCaptureFlatPlistSet)initWithFlatPlist:(id)plist offset:(unint64_t)offset
{
  v10.receiver = self;
  v10.super_class = FigCaptureFlatPlistSet;
  v6 = [(FigCaptureFlatPlistSet *)&v10 init];
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

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FigCaptureFlatPlistSet;
  [(FigCaptureFlatPlistSet *)&v3 dealloc];
}

- (id)member:(id)member
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    IndexForStringInObject = FigCaptureBinaryPlistFindIndexForStringInObject(self->_bplist, self->_offset, [member UTF8String], objc_msgSend(member, "length"));
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

    IndexForStringInObject = FigCaptureBinaryPlistFindIndexForIntInObject(self->_bplist, self->_offset, [member longLongValue]);
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