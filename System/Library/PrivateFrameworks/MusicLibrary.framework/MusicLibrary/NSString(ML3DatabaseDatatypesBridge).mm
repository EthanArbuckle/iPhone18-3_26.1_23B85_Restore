@interface NSString(ML3DatabaseDatatypesBridge)
- (uint64_t)ml_bindToSQLiteStatement:()ML3DatabaseDatatypesBridge atPosition:;
@end

@implementation NSString(ML3DatabaseDatatypesBridge)

- (uint64_t)ml_bindToSQLiteStatement:()ML3DatabaseDatatypesBridge atPosition:
{
  FastestEncoding = CFStringGetFastestEncoding(self);
  if (FastestEncoding != 256)
  {
    if (FastestEncoding == 134217984)
    {
      CStringPtr = CFStringGetCStringPtr(self, 0x8000100u);
      if (CStringPtr)
      {
        v9 = CStringPtr;
        v10 = a3;
        v11 = a4;
        v12 = 0;
LABEL_13:

        return sqlite3_bind_text(v10, v11, v9, -1, v12);
      }
    }

LABEL_9:
    uTF8String = [(__CFString *)self UTF8String];
    if (uTF8String)
    {
      v9 = uTF8String;
    }

    else
    {
      v9 = "";
    }

    v10 = a3;
    v11 = a4;
    v12 = -1;
    goto LABEL_13;
  }

  CharactersPtr = CFStringGetCharactersPtr(self);
  if (!CharactersPtr)
  {
    goto LABEL_9;
  }

  v14 = CharactersPtr;
  v15 = 2 * CFStringGetLength(self);

  return sqlite3_bind_text16(a3, a4, v14, v15, 0);
}

@end