@interface CADRemovedEventWrapper
- (CADRemovedEventWrapper)initWithCoder:(id)coder;
- (CADRemovedEventWrapper)initWithRowID:(int)d removedDates:(id)dates;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CADRemovedEventWrapper

- (CADRemovedEventWrapper)initWithRowID:(int)d removedDates:(id)dates
{
  datesCopy = dates;
  v12.receiver = self;
  v12.super_class = CADRemovedEventWrapper;
  v7 = [(CADRemovedEventWrapper *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_rowID = d;
    v9 = [datesCopy copy];
    removedDates = v8->_removedDates;
    v8->_removedDates = v9;
  }

  return v8;
}

- (CADRemovedEventWrapper)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = CADRemovedEventWrapper;
  v5 = [(CADRemovedEventWrapper *)&v9 init];
  if (v5)
  {
    v5->_rowID = [coderCopy decodeIntForKey:@"rowID"];
    v6 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"removed"];
    removedDates = v5->_removedDates;
    v5->_removedDates = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  rowID = self->_rowID;
  coderCopy = coder;
  [coderCopy encodeInt:rowID forKey:@"rowID"];
  [coderCopy encodeObject:self->_removedDates forKey:@"removed"];
}

@end