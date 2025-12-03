@interface ICTTAudioRecording
- (ICTTAudioRecording)initWithICCRCoder:(id)coder;
- (ICTTAudioRecording)initWithIdentity:(id)identity fields:(id)fields;
@end

@implementation ICTTAudioRecording

- (ICTTAudioRecording)initWithIdentity:(id)identity fields:(id)fields
{
  v5 = sub_2150A3A00();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2150A39C0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA427F0);
  sub_2150A4920();
  v9 = sub_2150A39A0();
  v10 = sub_2150A4910();

  v13.receiver = self;
  v13.super_class = ICTTAudioRecording;
  v11 = [(ICCRObject *)&v13 initWithIdentity:v9 fields:v10];

  (*(v6 + 8))(v8, v5);
  return v11;
}

- (ICTTAudioRecording)initWithICCRCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = ICTTAudioRecording;
  coderCopy = coder;
  v4 = [(ICCRObject *)&v6 initWithICCRCoder:coderCopy];

  if (v4)
  {
  }

  return v4;
}

@end