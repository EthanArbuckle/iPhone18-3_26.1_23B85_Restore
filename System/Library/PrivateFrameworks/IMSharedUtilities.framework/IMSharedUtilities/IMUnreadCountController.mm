@interface IMUnreadCountController
- (BOOL)chatsDeletedWithGUIDs:(id)a3;
- (BOOL)processDelta:(id)a3;
- (BOOL)updateReports:(id)a3;
- (IMUnreadCountController)init;
- (IMUnreadCountReportDelta)fullReplacementDelta;
- (NSArray)cachedUnreadReports;
- (int64_t)cachedUnreadReportsCount;
- (int64_t)pendingReviewCount;
- (int64_t)unreadCount;
- (void)chat:(id)a3 isBlackholedUpdated:(BOOL)a4;
- (void)chat:(id)a3 isFilteredUpdated:(int64_t)a4;
- (void)chat:(id)a3 lastAddressedHandleIDUpdated:(id)a4 lastAddressedSIMIDUpdated:(id)a5;
- (void)chat:(id)a3 participantsUpdated:(id)a4;
- (void)recalculate;
- (void)replaceDataExpirationHandler:(id)a3;
- (void)replaceFilteringController:(id)a3;
- (void)replaceReports:(id)a3;
- (void)setIsDaemon:(BOOL)a3;
- (void)updatePendingReviewForChatsWithGUIDs:(id)a3 pendingReview:(BOOL)a4;
@end

@implementation IMUnreadCountController

- (void)replaceFilteringController:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_1A85EED54();
  swift_unknownObjectRelease();
}

- (void)replaceReports:(id)a3
{
  sub_1A85E9718(0, &qword_1ED8C9210);
  sub_1A88C85F8();
  v4 = self;
  sub_1A85F1144();
}

- (NSArray)cachedUnreadReports
{
  v2 = *(&self->super.isa + OBJC_IVAR___IMUnreadCountController_state);
  v3 = self;
  os_unfair_lock_lock(v2 + 20);
  sub_1A87FEAB0(&v2[4], &v6);
  os_unfair_lock_unlock(v2 + 20);

  sub_1A85E9718(0, &qword_1ED8C9210);
  v4 = sub_1A88C85E8();

  return v4;
}

- (int64_t)unreadCount
{
  v2 = qword_1ED8C8AC8;
  v3 = self;
  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = sub_1A88BBA94(qword_1ED8CA4B8);
  swift_endAccess();
  v5 = [(IMUnreadCountController *)v3 unreadCountForChatsWithFilterMode:v4];

  return v5;
}

- (int64_t)pendingReviewCount
{
  v2 = self;
  v3 = sub_1A87FBAA8();

  return v3;
}

- (IMUnreadCountController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (int64_t)cachedUnreadReportsCount
{
  v2 = self;
  v3 = sub_1A87FE820();

  return v3;
}

- (IMUnreadCountReportDelta)fullReplacementDelta
{
  v2 = *(&self->super.isa + OBJC_IVAR___IMUnreadCountController_state);
  v3 = self;
  os_unfair_lock_lock(v2 + 20);
  sub_1A87FE930(&v2[4], &v6);
  os_unfair_lock_unlock(v2 + 20);
  v4 = v6;

  return v4;
}

- (void)recalculate
{
  v2 = *(&self->super.isa + OBJC_IVAR___IMUnreadCountController_state);
  v3 = self;
  os_unfair_lock_lock(v2 + 20);
  sub_1A87FEB7C(&v2[4]);
  os_unfair_lock_unlock(v2 + 20);
  sub_1A87FE1DC(MEMORY[0x1E69E7CC0], 1);
}

- (BOOL)processDelta:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = sub_1A87FED4C();

  return self & 1;
}

- (void)replaceDataExpirationHandler:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = v4;
    v4 = swift_allocObject();
    *(v4 + 16) = v5;
    v6 = sub_1A8801D90;
  }

  else
  {
    v6 = 0;
  }

  v7 = *(&self->super.isa + OBJC_IVAR___IMUnreadCountController_state);
  MEMORY[0x1EEE9AC00](v4);
  v8 = self;
  os_unfair_lock_lock(v7 + 20);
  sub_1A8801D64(&v7[4]);
  os_unfair_lock_unlock(v7 + 20);
  sub_1A8801D80(v6);
}

- (BOOL)updateReports:(id)a3
{
  sub_1A85E9718(0, &qword_1ED8C9210);
  sub_1A88C85F8();
  v4 = self;
  v5 = sub_1A87FF364();

  return v5;
}

- (BOOL)chatsDeletedWithGUIDs:(id)a3
{
  v4 = sub_1A88C85F8();
  v5 = self;
  LOBYTE(self) = sub_1A87FF48C(v4);

  return self & 1;
}

- (void)chat:(id)a3 isBlackholedUpdated:(BOOL)a4
{
  sub_1A88C82E8();
  swift_getKeyPath();
  v5 = self;
  sub_1A8801B10(sub_1A8801C8C);
}

- (void)chat:(id)a3 isFilteredUpdated:(int64_t)a4
{
  sub_1A88C82E8();
  swift_getKeyPath();
  v5 = self;
  sub_1A8801B10(sub_1A8801C2C);
}

- (void)chat:(id)a3 lastAddressedHandleIDUpdated:(id)a4 lastAddressedSIMIDUpdated:(id)a5
{
  v8 = sub_1A88C82E8();
  v10 = v9;
  if (!a4)
  {
    v11 = 0;
    if (a5)
    {
      goto LABEL_3;
    }

LABEL_5:
    v13 = 0;
    goto LABEL_6;
  }

  v11 = sub_1A88C82E8();
  a4 = v12;
  if (!a5)
  {
    goto LABEL_5;
  }

LABEL_3:
  v13 = sub_1A88C82E8();
  a5 = v14;
LABEL_6:

  v15 = self;

  sub_1A88018E8(v15, v8, v10, v11, a4, v13, a5);

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
}

- (void)chat:(id)a3 participantsUpdated:(id)a4
{
  sub_1A88C82E8();
  sub_1A88C85F8();
  swift_getKeyPath();
  v5 = self;
  sub_1A8801B10(sub_1A8801AF8);
}

- (void)updatePendingReviewForChatsWithGUIDs:(id)a3 pendingReview:(BOOL)a4
{
  v6 = sub_1A88C85F8();
  v7 = self;
  sub_1A88019C4(v7, v6, a4);
}

- (void)setIsDaemon:(BOOL)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR___IMUnreadCountController_state);
  v5 = self;
  os_unfair_lock_lock((v4 + 80));
  *(v4 + 16) = a3;
  os_unfair_lock_unlock((v4 + 80));
}

@end