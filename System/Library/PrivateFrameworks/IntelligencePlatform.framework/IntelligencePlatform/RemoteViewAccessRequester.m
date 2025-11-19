@interface RemoteViewAccessRequester
- (BOOL)reportSQLiteError:(id)a3 sqliteErrorCode:(int64_t)a4 error:(id *)a5;
- (BOOL)reportUnknownError:(id)a3 error:(id *)a4;
- (id)requestAssertionForViewName:(id)a3 error:(id *)a4;
@end

@implementation RemoteViewAccessRequester

- (BOOL)reportUnknownError:(id)a3 error:(id *)a4
{
  v6 = sub_1ABF23C04();
  v8 = v7;
  v9 = self;
  v10._countAndFlagsBits = v6;
  v10._object = v8;
  RemoteViewAccessRequester.reportUnknownError(_:)(v10);

  if (v11)
  {
    if (a4)
    {
      v12 = sub_1ABF21BD4();

      v13 = v12;
      *a4 = v12;
    }

    else
    {
    }
  }

  return v11 == 0;
}

- (BOOL)reportSQLiteError:(id)a3 sqliteErrorCode:(int64_t)a4 error:(id *)a5
{
  v8 = sub_1ABF23C04();
  v10 = v9;
  v11 = self;
  v12._countAndFlagsBits = v8;
  v12._object = v10;
  RemoteViewAccessRequester.reportSQLiteError(_:sqliteErrorCode:)(v12, a4);

  if (v13)
  {
    if (a5)
    {
      v14 = sub_1ABF21BD4();

      v15 = v14;
      *a5 = v14;
    }

    else
    {
    }
  }

  return v13 == 0;
}

- (id)requestAssertionForViewName:(id)a3 error:(id *)a4
{
  sub_1ABF23C04();
  v5 = self;
  v6 = RemoteViewAccessRequester.requestAssertion(forViewName:)();

  return v6;
}

@end