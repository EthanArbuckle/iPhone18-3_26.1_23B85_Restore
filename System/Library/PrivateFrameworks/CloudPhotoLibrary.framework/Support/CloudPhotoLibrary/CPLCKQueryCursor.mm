@interface CPLCKQueryCursor
- (CPLCKQueryCursor)initWithCoder:(id)coder;
- (CPLCKQueryCursor)initWithCursorData:(id)data;
- (CPLCKQueryCursor)initWithQueryCursor:(id)cursor additionalInfo:(id)info;
- (NSData)cursorData;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CPLCKQueryCursor

- (CPLCKQueryCursor)initWithQueryCursor:(id)cursor additionalInfo:(id)info
{
  cursorCopy = cursor;
  infoCopy = info;
  v14.receiver = self;
  v14.super_class = CPLCKQueryCursor;
  v9 = [(CPLCKQueryCursor *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_queryCursor, cursor);
    v11 = [infoCopy copy];
    additionalInfo = v10->_additionalInfo;
    v10->_additionalInfo = v11;
  }

  return v10;
}

- (CPLCKQueryCursor)initWithCursorData:(id)data
{
  dataCopy = data;
  if (qword_1002C50E8 != -1)
  {
    sub_100199AD8();
  }

  v6 = [NSKeyedUnarchiver cpl_safeUnarchiveObjectWithData:dataCopy classes:qword_1002C50E0];
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [(CPLCKQueryCursor *)self initWithQueryCursor:v6 additionalInfo:0];
      self = v7;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        sub_100199AEC(a2, self, v6);
      }

      v7 = v6;
    }

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NSData)cursorData
{
  queryCursor = self;
  if (!self->_additionalInfo)
  {
    queryCursor = self->_queryCursor;
  }

  v3 = [NSKeyedArchiver cpl_archivedDataWithRootObject:queryCursor];

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  queryCursor = self->_queryCursor;
  coderCopy = coder;
  [coderCopy encodeObject:queryCursor forKey:@"queryCursor"];
  [coderCopy encodeObject:self->_additionalInfo forKey:@"additionalInfo"];
}

- (CPLCKQueryCursor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"queryCursor"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"additionalInfo"];

  if (v5)
  {
    self = [(CPLCKQueryCursor *)self initWithQueryCursor:v5 additionalInfo:v6];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end