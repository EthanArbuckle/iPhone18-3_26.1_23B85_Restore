@interface IMDHandleRecord
+ (IMDHandleRecord)allocWithZone:(_NSZone *)a3;
+ (id)keyPathsToColumns;
- (NSString)canonicalizedURIString;
- (_IMDHandleRecordStruct)cfHandleRecord;
- (void)_copyUpdatedRecord;
@end

@implementation IMDHandleRecord

+ (IMDHandleRecord)allocWithZone:(_NSZone *)a3
{
  v3 = *MEMORY[0x1E695E480];
  IMDHandleRecordGetTypeID();

  return _CFRuntimeCreateInstance();
}

- (_IMDHandleRecordStruct)cfHandleRecord
{
  v3 = CFGetTypeID(self);
  if (v3 == IMDHandleRecordGetTypeID())
  {
    return self;
  }

  else
  {
    return 0;
  }
}

- (void)_copyUpdatedRecord
{
  v3 = objc_msgSend_rowID(self, a2, v2);

  return IMDHandleRecordCopyHandleRecordUnlocked(v3);
}

- (NSString)canonicalizedURIString
{
  v2 = IMDBridgedRecordCopyPropertyValue(self, 0);

  return v2;
}

+ (id)keyPathsToColumns
{
  if (qword_1EDBE5AF0 != -1)
  {
    sub_1B7CEE21C();
  }

  v3 = qword_1EDBE5B18;

  return v3;
}

@end