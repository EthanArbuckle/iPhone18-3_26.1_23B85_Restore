@interface ASDataHandler
+ (id)newDataHandlerForDataclass:(int64_t)a3 container:(void *)a4 changeTrackingID:(id)a5 accountID:(id)a6;
@end

@implementation ASDataHandler

+ (id)newDataHandlerForDataclass:(int64_t)a3 container:(void *)a4 changeTrackingID:(id)a5 accountID:(id)a6
{
  v11 = a5;
  v12 = a6;
  if (a3 > 15)
  {
    if (a3 == 32)
    {
      v13 = ASNoteDataHandler;
      goto LABEL_8;
    }

    if (a3 == 16)
    {
      v18 = +[NSAssertionHandler currentHandler];
      [v18 handleFailureInMethod:a2 object:a1 file:@"ASDataHandlers.m" lineNumber:27 description:@"Generic data handler does not support Reminders!"];
    }
  }

  else
  {
    if (a3 == 2)
    {
      v13 = ASContactDataHandler;
      goto LABEL_8;
    }

    if (a3 == 4)
    {
      v13 = ASEventDataHandler;
LABEL_8:
      v14 = [[v13 alloc] initWithContainer:a4 changeTrackingID:v11 accountID:v12];
      goto LABEL_14;
    }
  }

  v15 = DALoggingwithCategory();
  v16 = _CPLog_to_os_log_type[3];
  if (os_log_type_enabled(v15, v16))
  {
    v19 = 134217984;
    v20 = a3;
    _os_log_impl(&dword_0, v15, v16, "There's no support for a data handler for dataclass %ld", &v19, 0xCu);
  }

  v14 = 0;
LABEL_14:

  return v14;
}

@end