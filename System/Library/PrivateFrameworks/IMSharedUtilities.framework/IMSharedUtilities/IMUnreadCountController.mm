@interface IMUnreadCountController
- (BOOL)chatsDeletedWithGUIDs:(id)ds;
- (BOOL)processDelta:(id)delta;
- (BOOL)updateReports:(id)reports;
- (IMUnreadCountController)init;
- (IMUnreadCountReportDelta)fullReplacementDelta;
- (NSArray)cachedUnreadReports;
- (int64_t)cachedUnreadReportsCount;
- (int64_t)pendingReviewCount;
- (int64_t)unreadCount;
- (void)chat:(id)chat isBlackholedUpdated:(BOOL)updated;
- (void)chat:(id)chat isFilteredUpdated:(int64_t)updated;
- (void)chat:(id)chat lastAddressedHandleIDUpdated:(id)updated lastAddressedSIMIDUpdated:(id)dUpdated;
- (void)chat:(id)chat participantsUpdated:(id)updated;
- (void)recalculate;
- (void)replaceDataExpirationHandler:(id)handler;
- (void)replaceFilteringController:(id)controller;
- (void)replaceReports:(id)reports;
- (void)setIsDaemon:(BOOL)daemon;
- (void)updatePendingReviewForChatsWithGUIDs:(id)ds pendingReview:(BOOL)review;
@end

@implementation IMUnreadCountController

- (void)replaceFilteringController:(id)controller
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1A85EED54();
  swift_unknownObjectRelease();
}

- (void)replaceReports:(id)reports
{
  sub_1A85E9718(0, &qword_1ED8C9210);
  sub_1A88C85F8();
  selfCopy = self;
  sub_1A85F1144();
}

- (NSArray)cachedUnreadReports
{
  v2 = *(&self->super.isa + OBJC_IVAR___IMUnreadCountController_state);
  selfCopy = self;
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
  selfCopy = self;
  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = sub_1A88BBA94(qword_1ED8CA4B8);
  swift_endAccess();
  v5 = [(IMUnreadCountController *)selfCopy unreadCountForChatsWithFilterMode:v4];

  return v5;
}

- (int64_t)pendingReviewCount
{
  selfCopy = self;
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
  selfCopy = self;
  v3 = sub_1A87FE820();

  return v3;
}

- (IMUnreadCountReportDelta)fullReplacementDelta
{
  v2 = *(&self->super.isa + OBJC_IVAR___IMUnreadCountController_state);
  selfCopy = self;
  os_unfair_lock_lock(v2 + 20);
  sub_1A87FE930(&v2[4], &v6);
  os_unfair_lock_unlock(v2 + 20);
  v4 = v6;

  return v4;
}

- (void)recalculate
{
  v2 = *(&self->super.isa + OBJC_IVAR___IMUnreadCountController_state);
  selfCopy = self;
  os_unfair_lock_lock(v2 + 20);
  sub_1A87FEB7C(&v2[4]);
  os_unfair_lock_unlock(v2 + 20);
  sub_1A87FE1DC(MEMORY[0x1E69E7CC0], 1);
}

- (BOOL)processDelta:(id)delta
{
  deltaCopy = delta;
  selfCopy = self;
  LOBYTE(self) = sub_1A87FED4C();

  return self & 1;
}

- (void)replaceDataExpirationHandler:(id)handler
{
  v4 = _Block_copy(handler);
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
  selfCopy = self;
  os_unfair_lock_lock(v7 + 20);
  sub_1A8801D64(&v7[4]);
  os_unfair_lock_unlock(v7 + 20);
  sub_1A8801D80(v6);
}

- (BOOL)updateReports:(id)reports
{
  sub_1A85E9718(0, &qword_1ED8C9210);
  sub_1A88C85F8();
  selfCopy = self;
  v5 = sub_1A87FF364();

  return v5;
}

- (BOOL)chatsDeletedWithGUIDs:(id)ds
{
  v4 = sub_1A88C85F8();
  selfCopy = self;
  LOBYTE(self) = sub_1A87FF48C(v4);

  return self & 1;
}

- (void)chat:(id)chat isBlackholedUpdated:(BOOL)updated
{
  sub_1A88C82E8();
  swift_getKeyPath();
  selfCopy = self;
  sub_1A8801B10(sub_1A8801C8C);
}

- (void)chat:(id)chat isFilteredUpdated:(int64_t)updated
{
  sub_1A88C82E8();
  swift_getKeyPath();
  selfCopy = self;
  sub_1A8801B10(sub_1A8801C2C);
}

- (void)chat:(id)chat lastAddressedHandleIDUpdated:(id)updated lastAddressedSIMIDUpdated:(id)dUpdated
{
  v8 = sub_1A88C82E8();
  v10 = v9;
  if (!updated)
  {
    v11 = 0;
    if (dUpdated)
    {
      goto LABEL_3;
    }

LABEL_5:
    v13 = 0;
    goto LABEL_6;
  }

  v11 = sub_1A88C82E8();
  updated = v12;
  if (!dUpdated)
  {
    goto LABEL_5;
  }

LABEL_3:
  v13 = sub_1A88C82E8();
  dUpdated = v14;
LABEL_6:

  selfCopy = self;

  sub_1A88018E8(selfCopy, v8, v10, v11, updated, v13, dUpdated);

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
}

- (void)chat:(id)chat participantsUpdated:(id)updated
{
  sub_1A88C82E8();
  sub_1A88C85F8();
  swift_getKeyPath();
  selfCopy = self;
  sub_1A8801B10(sub_1A8801AF8);
}

- (void)updatePendingReviewForChatsWithGUIDs:(id)ds pendingReview:(BOOL)review
{
  v6 = sub_1A88C85F8();
  selfCopy = self;
  sub_1A88019C4(selfCopy, v6, review);
}

- (void)setIsDaemon:(BOOL)daemon
{
  v4 = *(&self->super.isa + OBJC_IVAR___IMUnreadCountController_state);
  selfCopy = self;
  os_unfair_lock_lock((v4 + 80));
  *(v4 + 16) = daemon;
  os_unfair_lock_unlock((v4 + 80));
}

@end