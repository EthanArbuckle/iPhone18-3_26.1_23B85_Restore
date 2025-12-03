@interface TipsNextEventReporter
+ (TipsNextEventReporter)shared;
- (TipsNextEventReporter)init;
- (void)donateReceivedPhotoEventWatch;
- (void)donateSentINSendMessageIntentEvent;
@end

@implementation TipsNextEventReporter

+ (TipsNextEventReporter)shared
{
  if (qword_1ED8C8828 != -1)
  {
    swift_once();
  }

  v3 = qword_1ED8C8830;

  return v3;
}

- (void)donateReceivedPhotoEventWatch
{
  v3 = sub_1A870CCE0(&unk_1EB3090D0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v9 - v4;
  v6 = sub_1A88C87A8();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = self;
  selfCopy = self;
  sub_1A885A178(0, 0, v5, &unk_1A88ECEB8, v7);
}

- (void)donateSentINSendMessageIntentEvent
{
  v3 = sub_1A870CCE0(&unk_1EB3090D0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v9 - v4;
  v6 = sub_1A88C87A8();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  *(v7 + 32) = 0;
  *(v7 + 40) = self;
  selfCopy = self;
  sub_1A885A178(0, 0, v5, &unk_1A88ECEB0, v7);
}

- (TipsNextEventReporter)init
{
  v3 = (&self->super.isa + OBJC_IVAR___TipsNextEventReporter_appBundleId);
  *v3 = 0xD000000000000013;
  v3[1] = 0x80000001A8916B50;
  sub_1A88C7E48();
  v5.receiver = self;
  v5.super_class = type metadata accessor for TipsNextEventReporter();
  return [(TipsNextEventReporter *)&v5 init];
}

@end