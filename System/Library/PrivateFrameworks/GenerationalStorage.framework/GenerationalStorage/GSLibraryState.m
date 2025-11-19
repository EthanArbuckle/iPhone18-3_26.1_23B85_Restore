@interface GSLibraryState
- (GSLibraryState)init;
- (GSLibraryState)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)sqliteBind:(sqlite3_stmt *)a3 index:(int)a4;
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

- (GSLibraryState)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = GSLibraryState;
  v5 = [(GSLibraryState *)&v7 init];
  if (v5)
  {
    v5->state = [v4 decodeIntForKey:@"state"];
    v5->lastFeatureSet = [v4 decodeIntForKey:@"lastFeatureSet"];
    v5->fseventID = [v4 decodeInt64ForKey:@"fseventID"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  state = self->state;
  v5 = a3;
  [v5 encodeInt:state forKey:@"state"];
  [v5 encodeInt:self->lastFeatureSet forKey:@"lastFeatureSet"];
  [v5 encodeInt64:self->fseventID forKey:@"fseventID"];
}

- (void)sqliteBind:(sqlite3_stmt *)a3 index:(int)a4
{
  v7 = [NSKeyedArchiver archivedDataWithRootObject:self requiringSecureCoding:1 error:0];
  v6 = v7;
  sqlite3_bind_blob(a3, a4, [v7 bytes], objc_msgSend(v7, "length"), 0xFFFFFFFFFFFFFFFFLL);
}

@end