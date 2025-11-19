@interface ICBackgroundTranscriptionHelper
+ (id)sharedInstance;
- (void)addAudioTranscriptionTaskToQueueWithIdentifier:(id)a3;
- (void)addCallRecordingTranscriptionTaskToQueueOnLaunch:(id)a3;
@end

@implementation ICBackgroundTranscriptionHelper

+ (id)sharedInstance
{
  v2 = objc_alloc_init(ICBackgroundTranscriptionHelper);

  return v2;
}

- (void)addAudioTranscriptionTaskToQueueWithIdentifier:(id)a3
{
  v3 = a3;
  v4 = +[ICTranscription sharedInstance];
  [v4 addAudioTranscriptionTaskToQueueWithAttachmentIdentifier:v3];
}

- (void)addCallRecordingTranscriptionTaskToQueueOnLaunch:(id)a3
{
  v3 = a3;
  v4 = +[ICTranscription sharedInstance];
  [v4 addCallRecordingTranscriptionTaskToQueueWithSpeakers:MEMORY[0x277CBEBF8] attachmentIdentifier:v3];
}

@end