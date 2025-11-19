@interface IDSDatabase
- (IDSDatabase)initWithDataProtectionClass:(unsigned int)a3 filename:(id)a4;
- (void)deleteDatabase;
- (void)ensureDatabaseIsInitialized;
@end

@implementation IDSDatabase

- (void)ensureDatabaseIsInitialized
{
  v3 = [(IDSDatabase *)self filename];

  if (v3)
  {
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_1006B7790;
    v4[3] = &unk_100BDDBB0;
    v4[4] = self;
    v3 = objc_retainBlock(v4);
  }

  sub_10000B6F0(1, self, v3);
}

- (IDSDatabase)initWithDataProtectionClass:(unsigned int)a3 filename:(id)a4
{
  v4 = *&a3;
  v6 = a4;
  v10.receiver = self;
  v10.super_class = IDSDatabase;
  v7 = [(IDSDatabase *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(IDSDatabase *)v7 setFilename:v6];
    [(IDSDatabase *)v8 setDataProtectionClass:v4];
  }

  return v8;
}

- (void)deleteDatabase
{
  v3 = [(IDSDatabase *)self filename];

  if (v3)
  {
    v4 = [(IDSDatabase *)self filename];
    CSDBSqliteDeleteDatabase();
  }
}

@end