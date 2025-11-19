@interface ICTranscription
+ (ICTranscription)sharedInstance;
+ (void)setSharedInstance:(id)a3;
- (void)addAudioTranscriptionTaskToQueueWithAttachmentIdentifier:(id)a3;
- (void)addCallRecordingTranscriptionTaskToQueueWithSpeakers:(id)a3 attachmentIdentifier:(id)a4;
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

+ (void)setSharedInstance:(id)a3
{
  v3 = qword_27CA417A0;
  v4 = a3;
  if (v3 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = qword_27CA444E0;
  qword_27CA444E0 = v4;
}

- (void)addAudioTranscriptionTaskToQueueWithAttachmentIdentifier:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_215045AAC(v4);
}

- (void)addCallRecordingTranscriptionTaskToQueueWithSpeakers:(id)a3 attachmentIdentifier:(id)a4
{
  v6 = sub_2150A4ED0();
  v7 = a4;
  v8 = self;
  sub_2150467C4(v6, v7);
}

@end