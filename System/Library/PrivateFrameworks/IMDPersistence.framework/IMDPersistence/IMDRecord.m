@interface IMDRecord
- (BOOL)isEqual:(id)a3;
- (IMDRecord)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IMDRecord

- (BOOL)isEqual:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  if (self == a3)
  {
    return 1;
  }

  return _CFNonObjCEqual() != 0;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = objc_msgSend__recordIdentifier(self, a2, a3);
  objc_msgSend_encodeInt64_forKey_(a3, v6, v5, @"recordIdentifier");

  IMDBridgedRecordEncode(self, a3);
}

- (IMDRecord)initWithCoder:(id)a3
{
  v9.receiver = self;
  v9.super_class = IMDRecord;
  v5 = [(IMDRecord *)&v9 init];
  if (v5)
  {
    v6 = objc_msgSend_decodeInt64ForKey_(a3, v4, @"recordIdentifier");
    objc_msgSend__setRecordIdentifier_(v5, v7, v6);
    IMDBridgedRecordDecode(v5, a3);
  }

  return v5;
}

@end