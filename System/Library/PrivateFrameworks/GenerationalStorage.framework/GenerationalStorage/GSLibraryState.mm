@interface GSLibraryState
- (GSLibraryState)init;
- (GSLibraryState)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
- (void)sqliteBind:(sqlite3_stmt *)bind index:(int)index;
@end

@implementation GSLibraryState

- (GSLibraryState)init
{
  v3.receiver = self;
  v3.super_class = GSLibraryState;
  result = [(GSLibraryState *)&v3 init];
  if (result)
  {
    result->state = 2;
  }

  return result;
}

- (GSLibraryState)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = GSLibraryState;
  v5 = [(GSLibraryState *)&v7 init];
  if (v5)
  {
    v5->state = [coderCopy decodeIntForKey:@"state"];
    v5->lastFeatureSet = [coderCopy decodeIntForKey:@"lastFeatureSet"];
    v5->fseventID = [coderCopy decodeInt64ForKey:@"fseventID"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  state = self->state;
  coderCopy = coder;
  [coderCopy encodeInt:state forKey:@"state"];
  [coderCopy encodeInt:self->lastFeatureSet forKey:@"lastFeatureSet"];
  [coderCopy encodeInt64:self->fseventID forKey:@"fseventID"];
}

- (void)sqliteBind:(sqlite3_stmt *)bind index:(int)index
{
  v7 = [NSKeyedArchiver archivedDataWithRootObject:self requiringSecureCoding:1 error:0];
  v6 = v7;
  sqlite3_bind_blob(bind, index, [v7 bytes], objc_msgSend(v7, "length"), 0xFFFFFFFFFFFFFFFFLL);
}

@end