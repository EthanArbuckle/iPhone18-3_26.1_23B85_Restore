@interface FigCaptureFlatPlistDict
- (FigCaptureFlatPlistDict)initWithFlatPlist:(id)plist offset:(unint64_t)offset;
- (id)keyEnumerator;
- (id)objectForKey:(id)key;
- (void)dealloc;
@end

@implementation FigCaptureFlatPlistDict

- (id)keyEnumerator
{
  v2 = [[FigCaptureFlatPlistEnumerator alloc] initWithFlatPlist:self->_flatPlist offset:self->_offset count:self->_count];

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FigCaptureFlatPlistDict;
  [(FigCaptureFlatPlistDict *)&v3 dealloc];
}

- (FigCaptureFlatPlistDict)initWithFlatPlist:(id)plist offset:(unint64_t)offset
{
  v10.receiver = self;
  v10.super_class = FigCaptureFlatPlistDict;
  v6 = [(FigCaptureFlatPlistDict *)&v10 init];
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

- (id)objectForKey:(id)key
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  IndexForStringInObject = FigCaptureBinaryPlistFindIndexForStringInObject(self->_bplist, self->_offset, [key UTF8String], objc_msgSend(key, "length"));
  if ((IndexForStringInObject & 0x8000000000000000) != 0)
  {
    return 0;
  }

  OffsetForValueAtIndexInObject = FigCaptureBinaryPlistGetOffsetForValueAtIndexInObject(self->_bplist, self->_offset, IndexForStringInObject);
  flatPlist = self->_flatPlist;

  return [(FigCaptureFlatPlist *)flatPlist objectAtOffset:?];
}

@end