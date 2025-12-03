@interface ICBackgroundTranscriptionHelper
+ (id)sharedInstance;
- (void)addAudioTranscriptionTaskToQueueWithIdentifier:(id)identifier;
- (void)addCallRecordingTranscriptionTaskToQueueOnLaunch:(id)launch;
@end

@implementation ICBackgroundTranscriptionHelper

+ (id)sharedInstance
{
  v2 = objc_alloc_init(ICBackgroundTranscriptionHelper);

  return v2;
}

- (void)addAudioTranscriptionTaskToQueueWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = +[ICTranscription sharedInstance];
  [v4 addAudioTranscriptionTaskToQueueWithAttachmentIdentifier:identifierCopy];
}

- (void)addCallRecordingTranscriptionTaskToQueueOnLaunch:(id)launch
{
  launchCopy = launch;
  v4 = +[ICTranscription sharedInstance];
  [v4 addCallRecordingTranscriptionTaskToQueueWithSpeakers:MEMORY[0x277CBEBF8] attachmentIdentifier:launchCopy];
}

@end