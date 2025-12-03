@interface ASDataHandler
+ (id)newDataHandlerForDataclass:(int64_t)dataclass container:(void *)container changeTrackingID:(id)d accountID:(id)iD;
@end

@implementation ASDataHandler

+ (id)newDataHandlerForDataclass:(int64_t)dataclass container:(void *)container changeTrackingID:(id)d accountID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  if (dataclass > 15)
  {
    if (dataclass == 32)
    {
      v13 = ASNoteDataHandler;
      goto LABEL_8;
    }

    if (dataclass == 16)
    {
      v18 = +[NSAssertionHandler currentHandler];
      [v18 handleFailureInMethod:a2 object:self file:@"ASDataHandlers.m" lineNumber:27 description:@"Generic data handler does not support Reminders!"];
    }
  }

  else
  {
    if (dataclass == 2)
    {
      v13 = ASContactDataHandler;
      goto LABEL_8;
    }

    if (dataclass == 4)
    {
      v13 = ASEventDataHandler;
LABEL_8:
      v14 = [[v13 alloc] initWithContainer:container changeTrackingID:dCopy accountID:iDCopy];
      goto LABEL_14;
    }
  }

  v15 = DALoggingwithCategory();
  v16 = _CPLog_to_os_log_type[3];
  if (os_log_type_enabled(v15, v16))
  {
    v19 = 134217984;
    dataclassCopy = dataclass;
    _os_log_impl(&dword_0, v15, v16, "There's no support for a data handler for dataclass %ld", &v19, 0xCu);
  }

  v14 = 0;
LABEL_14:

  return v14;
}

@end