@interface CKAppAudioController
+ (_TtC7ChatKit20CKAppAudioController)sharedInstance;
- (CKAudioController)audioController;
- (_TtC7ChatKit20CKAppAudioController)init;
- (void)setAudioController:(id)a3;
@end

@implementation CKAppAudioController

+ (_TtC7ChatKit20CKAppAudioController)sharedInstance
{
  if (qword_1EAD45B80 != -1)
  {
    swift_once();
  }

  v3 = qword_1EAD45B88;

  return v3;
}

- (CKAudioController)audioController
{
  v3 = OBJC_IVAR____TtC7ChatKit20CKAppAudioController_audioController;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setAudioController:(id)a3
{
  v5 = OBJC_IVAR____TtC7ChatKit20CKAppAudioController_audioController;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = a3;
  v7 = a3;
}

- (_TtC7ChatKit20CKAppAudioController)init
{
  *(&self->super.isa + OBJC_IVAR____TtC7ChatKit20CKAppAudioController_audioController) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for CKAppAudioController();
  return [(CKAppAudioController *)&v3 init];
}

@end