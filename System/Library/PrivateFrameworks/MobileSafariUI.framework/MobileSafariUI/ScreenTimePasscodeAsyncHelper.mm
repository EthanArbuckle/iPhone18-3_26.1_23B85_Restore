@interface ScreenTimePasscodeAsyncHelper
- (_TtC14MobileSafariUI29ScreenTimePasscodeAsyncHelper)init;
- (void)handleScreenTimePinCompletionNotificationWithNotification:(id)notification;
- (void)requestPinEntryWithCompletionHandler:(id)handler;
@end

@implementation ScreenTimePasscodeAsyncHelper

- (void)requestPinEntryWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA7E060);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_215A706E0();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_215A96E00;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_215A96E10;
  v12[5] = v11;
  selfCopy = self;
  sub_215A1987C(0, 0, v7, &unk_215A96E20, v12);
}

- (void)handleScreenTimePinCompletionNotificationWithNotification:(id)notification
{
  notificationCopy = notification;
  selfCopy = self;
  sub_215A18A80(notificationCopy);
}

- (_TtC14MobileSafariUI29ScreenTimePasscodeAsyncHelper)init
{
  v3 = type metadata accessor for ScreenTimePasscodeAsyncHelper.ContinuationState();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC14MobileSafariUI29ScreenTimePasscodeAsyncHelper_protectedContinuationState;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA7E4F8);
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA7E500);
  v8 = swift_allocObject();
  *(v8 + ((*(*v8 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_215A1907C(v5, v8 + *(*v8 + *MEMORY[0x277D841D0] + 16));
  *(&self->super.isa + v6) = v8;
  v9 = type metadata accessor for ScreenTimePasscodeAsyncHelper();
  v11.receiver = self;
  v11.super_class = v9;
  return [(ScreenTimePasscodeAsyncHelper *)&v11 init];
}

@end