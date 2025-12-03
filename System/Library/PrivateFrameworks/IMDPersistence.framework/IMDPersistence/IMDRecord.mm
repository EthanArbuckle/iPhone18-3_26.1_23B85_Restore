@interface IMDRecord
- (BOOL)isEqual:(id)equal;
- (IMDRecord)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IMDRecord

- (BOOL)isEqual:(id)equal
{
  if (!equal)
  {
    return 0;
  }

  if (self == equal)
  {
    return 1;
  }

  return _CFNonObjCEqual() != 0;
}

- (void)encodeWithCoder:(id)coder
{
  v5 = objc_msgSend__recordIdentifier(self, a2, coder);
  objc_msgSend_encodeInt64_forKey_(coder, v6, v5, @"recordIdentifier");

  IMDBridgedRecordEncode(self, coder);
}

- (IMDRecord)initWithCoder:(id)coder
{
  v9.receiver = self;
  v9.super_class = IMDRecord;
  v5 = [(IMDRecord *)&v9 init];
  if (v5)
  {
    v6 = objc_msgSend_decodeInt64ForKey_(coder, v4, @"recordIdentifier");
    objc_msgSend__setRecordIdentifier_(v5, v7, v6);
    IMDBridgedRecordDecode(v5, coder);
  }

  return v5;
}

@end