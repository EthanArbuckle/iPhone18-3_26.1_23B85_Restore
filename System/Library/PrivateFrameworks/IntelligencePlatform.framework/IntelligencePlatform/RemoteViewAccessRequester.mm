@interface RemoteViewAccessRequester
- (BOOL)reportSQLiteError:(id)error sqliteErrorCode:(int64_t)code error:(id *)a5;
- (BOOL)reportUnknownError:(id)error error:(id *)a4;
- (id)requestAssertionForViewName:(id)name error:(id *)error;
@end

@implementation RemoteViewAccessRequester

- (BOOL)reportUnknownError:(id)error error:(id *)a4
{
  v6 = sub_1ABF23C04();
  v8 = v7;
  selfCopy = self;
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

- (BOOL)reportSQLiteError:(id)error sqliteErrorCode:(int64_t)code error:(id *)a5
{
  v8 = sub_1ABF23C04();
  v10 = v9;
  selfCopy = self;
  v12._countAndFlagsBits = v8;
  v12._object = v10;
  RemoteViewAccessRequester.reportSQLiteError(_:sqliteErrorCode:)(v12, code);

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

- (id)requestAssertionForViewName:(id)name error:(id *)error
{
  sub_1ABF23C04();
  selfCopy = self;
  v6 = RemoteViewAccessRequester.requestAssertion(forViewName:)();

  return v6;
}

@end