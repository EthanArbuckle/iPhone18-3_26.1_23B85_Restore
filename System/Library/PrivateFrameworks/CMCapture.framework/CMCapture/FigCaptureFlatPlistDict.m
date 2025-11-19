@interface FigCaptureFlatPlistDict
- (FigCaptureFlatPlistDict)initWithFlatPlist:(id)a3 offset:(unint64_t)a4;
- (id)keyEnumerator;
- (id)objectForKey:(id)a3;
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

- (FigCaptureFlatPlistDict)initWithFlatPlist:(id)a3 offset:(unint64_t)a4
{
  v10.receiver = self;
  v10.super_class = FigCaptureFlatPlistDict;
  v6 = [(FigCaptureFlatPlistDict *)&v10 init];
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

- (id)objectForKey:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  IndexForStringInObject = FigCaptureBinaryPlistFindIndexForStringInObject(self->_bplist, self->_offset, [a3 UTF8String], objc_msgSend(a3, "length"));
  if ((IndexForStringInObject & 0x8000000000000000) != 0)
  {
    return 0;
  }

  OffsetForValueAtIndexInObject = FigCaptureBinaryPlistGetOffsetForValueAtIndexInObject(self->_bplist, self->_offset, IndexForStringInObject);
  flatPlist = self->_flatPlist;

  return [(FigCaptureFlatPlist *)flatPlist objectAtOffset:?];
}

@end