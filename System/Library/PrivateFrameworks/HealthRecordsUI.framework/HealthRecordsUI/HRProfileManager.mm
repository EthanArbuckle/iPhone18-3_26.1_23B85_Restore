@interface HRProfileManager
+ (HRProfileManager)sharedInstance;
- (HRProfile)currentProfile;
- (HRProfile)primaryProfile;
- (id)profileWithHealthStore:(id)a3;
- (id)profileWithProfileIdentifier:(id)a3;
- (void)setCurrentProfile:(id)a3;
- (void)switchCurrentProfileWithIdentifier:(id)a3;
@end

@implementation HRProfileManager

- (HRProfile)primaryProfile
{
  sub_1D138D96C();
  sub_1D118C3B4();
  sub_1D10DC8AC();
  v3 = self;

  sub_1D138ED0C();

  return v5;
}

- (HRProfile)currentProfile
{
  v3 = OBJC_IVAR___HRProfileManager_currentProfile;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setCurrentProfile:(id)a3
{
  v5 = OBJC_IVAR___HRProfileManager_currentProfile;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = a3;
  v7 = a3;
}

+ (HRProfileManager)sharedInstance
{
  if (qword_1EE06AF70 != -1)
  {
    swift_once();
  }

  v3 = qword_1EE06BB58;

  return v3;
}

- (void)switchCurrentProfileWithIdentifier:(id)a3
{
  sub_1D138D96C();
  sub_1D10DC8AC();
  v5 = a3;
  v6 = self;

  sub_1D138ED1C();
}

- (id)profileWithHealthStore:(id)a3
{
  sub_1D138D96C();
  sub_1D118C3B4();
  sub_1D10DC8AC();
  v5 = a3;
  v6 = self;

  sub_1D138ED0C();

  return v8;
}

- (id)profileWithProfileIdentifier:(id)a3
{
  sub_1D138D96C();
  sub_1D118C3B4();
  sub_1D10DC8AC();
  v5 = a3;
  v6 = self;

  sub_1D138ED0C();

  return v8;
}

@end