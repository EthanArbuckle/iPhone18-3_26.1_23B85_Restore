@interface IMDChatRecord
+ (IMDChatRecord)allocWithZone:(_NSZone *)zone;
+ (id)keyPathsToColumns;
+ (id)transcriptBackgroundFileURLFromProperties:(id)properties;
- (IMDChatRecord)initWithRecordRef:(_IMDChatRecordStruct *)ref;
- (IMDMessageRecord)lastMessageRecord;
- (NSArray)handleRecords;
- (NSDictionary)domainIdentifiers;
- (NSDictionary)properties;
- (NSURL)transcriptBackgroundFileURL;
- (_IMDChatRecordStruct)cfChatRecord;
- (void)_copyUpdatedRecord;
@end

@implementation IMDChatRecord

+ (id)keyPathsToColumns
{
  if (qword_1EDBE5B00 != -1)
  {
    sub_1B7CEEF0C();
  }

  v3 = qword_1EDBE5B28;

  return v3;
}

- (_IMDChatRecordStruct)cfChatRecord
{
  v3 = CFGetTypeID(self);
  if (v3 == IMDChatRecordGetTypeID())
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

  return IMDChatRecordCopyChatRecordUnlocked(v3);
}

- (IMDChatRecord)initWithRecordRef:(_IMDChatRecordStruct *)ref
{
  refCopy = ref;

  return refCopy;
}

+ (IMDChatRecord)allocWithZone:(_NSZone *)zone
{
  v3 = *MEMORY[0x1E695E480];
  IMDChatRecordGetTypeID();

  return _CFRuntimeCreateInstance();
}

- (NSDictionary)properties
{
  v2 = IMDBridgedRecordCopyPropertyValue(self, 4);
  if (v2)
  {
    v3 = JWDecodeDictionary();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (IMDMessageRecord)lastMessageRecord
{
  v3 = objc_msgSend_cfChatRecord(self, a2, v2);
  Message = IMDChatRecordCopyLastMessage(v3);

  return Message;
}

- (NSArray)handleRecords
{
  v3 = objc_msgSend_cfChatRecord(self, a2, v2);
  v4 = IMDChatRecordCopyHandles(v3);

  return v4;
}

- (NSDictionary)domainIdentifiers
{
  v3 = objc_msgSend_cfChatRecord(self, a2, v2);
  v6 = IMDChatRecordCopyChatLookupRecords(v3, v4, v5);

  return v6;
}

- (NSURL)transcriptBackgroundFileURL
{
  v3 = objc_msgSend_properties(self, a2, v2);
  v5 = objc_msgSend_transcriptBackgroundFileURLFromProperties_(IMDChatRecord, v4, v3);

  return v5;
}

+ (id)transcriptBackgroundFileURLFromProperties:(id)properties
{
  v3 = objc_msgSend_objectForKey_(properties, a2, *MEMORY[0x1E69A6CC8]);
  v5 = v3;
  if (v3)
  {
    v6 = objc_msgSend__stringForKey_(v3, v4, *MEMORY[0x1E69A7D38]);
    if (v6)
    {
      v7 = IMTranscriptBackgroundDirectory();
      v9 = objc_msgSend_URLByAppendingPathComponent_(v7, v8, v6);
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end