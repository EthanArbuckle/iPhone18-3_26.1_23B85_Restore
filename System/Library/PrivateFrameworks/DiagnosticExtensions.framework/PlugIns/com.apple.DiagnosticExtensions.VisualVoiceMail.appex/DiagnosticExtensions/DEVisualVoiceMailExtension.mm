@interface DEVisualVoiceMailExtension
- (id)attachmentsForParameters:(id)parameters;
@end

@implementation DEVisualVoiceMailExtension

- (id)attachmentsForParameters:(id)parameters
{
  v4 = [NSRegularExpression regularExpressionWithPattern:@"VisualVoicemail.*" options:1 error:0];
  v5 = [NSURL fileURLWithPath:@"/var/mobile/Library/Logs/CrashReporter"];
  v6 = [(DEVisualVoiceMailExtension *)self filesInDir:v5 matchingPattern:v4 excludingPattern:0];
  v7 = [v6 mutableCopy];

  v8 = [DEAttachmentItem attachmentWithPath:@"/var/mobile/Library/Logs/VisualVoicemail/VisualVoicemail.log"];
  [v7 addObject:v8];

  return v7;
}

@end