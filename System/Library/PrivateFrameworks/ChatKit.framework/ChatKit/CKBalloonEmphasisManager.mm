@interface CKBalloonEmphasisManager
- (BOOL)isEmphasisActive;
- (BOOL)isMessageEmphasizedWithChatItemGUID:(id)a3;
- (CKBalloonEmphasisManager)init;
- (void)clearEmphasisGUIDs;
@end

@implementation CKBalloonEmphasisManager

- (BOOL)isEmphasisActive
{
  v3 = OBJC_IVAR___CKBalloonEmphasisManager_emphasizedChatItemGUIDs;
  swift_beginAccess();
  return (*(&self->super.isa + v3))[2] != 0;
}

- (void)clearEmphasisGUIDs
{
  v3 = OBJC_IVAR___CKBalloonEmphasisManager_emphasizedChatItemGUIDs;
  swift_beginAccess();
  v4 = MEMORY[0x1E69E7CD0];
  *(&self->super.isa + v3) = MEMORY[0x1E69E7CD0];
  v5 = self;

  v6 = OBJC_IVAR___CKBalloonEmphasisManager_emphasizedAssociatedChatItemGUIDs;
  swift_beginAccess();
  *(&v5->super.isa + v6) = v4;
}

- (BOOL)isMessageEmphasizedWithChatItemGUID:(id)a3
{
  v4 = sub_190D56F10();
  v6 = v5;
  v7 = OBJC_IVAR___CKBalloonEmphasisManager_emphasizedChatItemGUIDs;
  swift_beginAccess();
  v8 = *(&self->super.isa + v7);
  v9 = self;
  sub_190D52690();
  v10 = sub_190CA994C(v4, v6, v8);

  v11 = OBJC_IVAR___CKBalloonEmphasisManager_emphasizedAssociatedChatItemGUIDs;
  swift_beginAccess();
  v12 = *(&v9->super.isa + v11);
  sub_190D52690();
  LOBYTE(v4) = sub_190CA994C(v4, v6, v12);

  return (v10 | v4) & 1;
}

- (CKBalloonEmphasisManager)init
{
  v2 = MEMORY[0x1E69E7CD0];
  *(&self->super.isa + OBJC_IVAR___CKBalloonEmphasisManager_emphasizedChatItemGUIDs) = MEMORY[0x1E69E7CD0];
  *(&self->super.isa + OBJC_IVAR___CKBalloonEmphasisManager_emphasizedAssociatedChatItemGUIDs) = v2;
  v4.receiver = self;
  v4.super_class = type metadata accessor for BalloonEmphasisManager();
  return [(CKBalloonEmphasisManager *)&v4 init];
}

@end