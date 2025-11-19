@interface CPLCKQueryCursor
- (CPLCKQueryCursor)initWithCoder:(id)a3;
- (CPLCKQueryCursor)initWithCursorData:(id)a3;
- (CPLCKQueryCursor)initWithQueryCursor:(id)a3 additionalInfo:(id)a4;
- (NSData)cursorData;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CPLCKQueryCursor

- (CPLCKQueryCursor)initWithQueryCursor:(id)a3 additionalInfo:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = CPLCKQueryCursor;
  v9 = [(CPLCKQueryCursor *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_queryCursor, a3);
    v11 = [v8 copy];
    additionalInfo = v10->_additionalInfo;
    v10->_additionalInfo = v11;
  }

  return v10;
}

- (CPLCKQueryCursor)initWithCursorData:(id)a3
{
  v5 = a3;
  if (qword_1002C50E8 != -1)
  {
    sub_100199AD8();
  }

  v6 = [NSKeyedUnarchiver cpl_safeUnarchiveObjectWithData:v5 classes:qword_1002C50E0];
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

- (void)encodeWithCoder:(id)a3
{
  queryCursor = self->_queryCursor;
  v5 = a3;
  [v5 encodeObject:queryCursor forKey:@"queryCursor"];
  [v5 encodeObject:self->_additionalInfo forKey:@"additionalInfo"];
}

- (CPLCKQueryCursor)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"queryCursor"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"additionalInfo"];

  if (v5)
  {
    self = [(CPLCKQueryCursor *)self initWithQueryCursor:v5 additionalInfo:v6];
    v7 = self;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end