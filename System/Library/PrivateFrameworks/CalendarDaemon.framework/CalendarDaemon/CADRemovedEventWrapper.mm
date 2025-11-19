@interface CADRemovedEventWrapper
- (CADRemovedEventWrapper)initWithCoder:(id)a3;
- (CADRemovedEventWrapper)initWithRowID:(int)a3 removedDates:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CADRemovedEventWrapper

- (CADRemovedEventWrapper)initWithRowID:(int)a3 removedDates:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = CADRemovedEventWrapper;
  v7 = [(CADRemovedEventWrapper *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_rowID = a3;
    v9 = [v6 copy];
    removedDates = v8->_removedDates;
    v8->_removedDates = v9;
  }

  return v8;
}

- (CADRemovedEventWrapper)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CADRemovedEventWrapper;
  v5 = [(CADRemovedEventWrapper *)&v9 init];
  if (v5)
  {
    v5->_rowID = [v4 decodeIntForKey:@"rowID"];
    v6 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"removed"];
    removedDates = v5->_removedDates;
    v5->_removedDates = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  rowID = self->_rowID;
  v5 = a3;
  [v5 encodeInt:rowID forKey:@"rowID"];
  [v5 encodeObject:self->_removedDates forKey:@"removed"];
}

@end