@interface _CRRecentsSQLiteConnectionWrapper
- (_CRRecentsSQLiteConnectionWrapper)initWithConnection:(id)connection forWriting:(BOOL)writing;
- (unint64_t)decrementRefcount;
- (unint64_t)incrementRefcount;
- (void)dealloc;
@end

@implementation _CRRecentsSQLiteConnectionWrapper

- (unint64_t)incrementRefcount
{
  v2 = self->_refcount + 1;
  self->_refcount = v2;
  return v2;
}

- (unint64_t)decrementRefcount
{
  refcount = self->_refcount;
  if (!refcount)
  {
    sub_100018158();
  }

  v3 = refcount - 1;
  self->_refcount = v3;
  return v3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _CRRecentsSQLiteConnectionWrapper;
  [(_CRRecentsSQLiteConnectionWrapper *)&v3 dealloc];
}

- (_CRRecentsSQLiteConnectionWrapper)initWithConnection:(id)connection forWriting:(BOOL)writing
{
  v8.receiver = self;
  v8.super_class = _CRRecentsSQLiteConnectionWrapper;
  v6 = [(_CRRecentsSQLiteConnectionWrapper *)&v8 init];
  if (v6)
  {
    v6->_connection = connection;
    v6->_writer = writing;
  }

  return v6;
}

@end