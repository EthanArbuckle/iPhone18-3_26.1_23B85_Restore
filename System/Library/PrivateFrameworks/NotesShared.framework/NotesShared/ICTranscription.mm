@interface ICTranscription
+ (ICTranscription)sharedInstance;
+ (void)setSharedInstance:(id)instance;
- (void)addAudioTranscriptionTaskToQueueWithAttachmentIdentifier:(id)identifier;
- (void)addCallRecordingTranscriptionTaskToQueueWithSpeakers:(id)speakers attachmentIdentifier:(id)identifier;
@end

@implementation ICTranscription

+ (ICTranscription)sharedInstance
{
  if (qword_27CA417A0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return qword_27CA444E0;
}

+ (void)setSharedInstance:(id)instance
{
  v3 = qword_27CA417A0;
  instanceCopy = instance;
  if (v3 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = qword_27CA444E0;
  qword_27CA444E0 = instanceCopy;
}

- (void)addAudioTranscriptionTaskToQueueWithAttachmentIdentifier:(id)identifier
{
  identifierCopy = identifier;
  selfCopy = self;
  sub_215045AAC(identifierCopy);
}

- (void)addCallRecordingTranscriptionTaskToQueueWithSpeakers:(id)speakers attachmentIdentifier:(id)identifier
{
  v6 = sub_2150A4ED0();
  identifierCopy = identifier;
  selfCopy = self;
  sub_2150467C4(v6, identifierCopy);
}

@end