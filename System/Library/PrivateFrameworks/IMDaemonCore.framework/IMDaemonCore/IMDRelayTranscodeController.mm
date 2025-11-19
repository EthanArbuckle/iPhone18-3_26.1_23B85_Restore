@interface IMDRelayTranscodeController
+ (id)sharedInstance;
@end

@implementation IMDRelayTranscodeController

+ (id)sharedInstance
{
  if (qword_2814211B0 != -1)
  {
    sub_22B7D7EE8();
  }

  v3 = qword_281421030;

  return v3;
}

@end