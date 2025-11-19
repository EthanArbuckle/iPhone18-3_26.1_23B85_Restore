@interface IMDLiteMessageCompressor
+ (IMDLiteMessageCompressor)sharedCompressor;
- (IMDLiteMessageCompressor)init;
@end

@implementation IMDLiteMessageCompressor

+ (IMDLiteMessageCompressor)sharedCompressor
{
  if (qword_27D8D00B8[0] != -1)
  {
    sub_22B7DA414();
  }

  v3 = qword_27D8D00B0;

  return v3;
}

- (IMDLiteMessageCompressor)init
{
  v6.receiver = self;
  v6.super_class = IMDLiteMessageCompressor;
  v2 = [(IMDLiteMessageCompressor *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277D28678]);
    compressor = v2->_compressor;
    v2->_compressor = v3;
  }

  return v2;
}

@end