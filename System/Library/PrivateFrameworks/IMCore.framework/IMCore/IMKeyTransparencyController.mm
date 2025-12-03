@interface IMKeyTransparencyController
+ (id)sharedController;
- (BOOL)selfOptedIn;
- (unint64_t)contactKeyVerificationStatusForHandleID:(id)d inChat:(id)chat;
- (void)keyTransparencyOptInStateChanged:(BOOL)changed;
- (void)refreshStatusForKTPeerURI:(id)i;
- (void)setKTVerifierResultsFromIDSInfoResultsDictionary:(id)dictionary;
- (void)setupComplete:(BOOL)complete info:(id)info;
@end

@implementation IMKeyTransparencyController

+ (id)sharedController
{
  if (qword_1EB2E4798 != -1)
  {
    swift_once();
  }

  v3 = qword_1EB2E47A8;

  return v3;
}

- (void)setupComplete:(BOOL)complete info:(id)info
{
  v5 = sub_1A84E5D3C();
  selfCopy = self;
  sub_1A82509D4(v5);
}

- (void)keyTransparencyOptInStateChanged:(BOOL)changed
{
  selfCopy = self;
  sub_1A8250D6C(changed);
}

- (BOOL)selfOptedIn
{
  selfCopy = self;
  v3 = sub_1A84A23AC();

  return v3 & 1;
}

- (void)refreshStatusForKTPeerURI:(id)i
{
  v4 = sub_1A84E5DBC();
  v6 = v5;
  selfCopy = self;
  sub_1A84A37D0(v4, v6);
}

- (unint64_t)contactKeyVerificationStatusForHandleID:(id)d inChat:(id)chat
{
  v6 = sub_1A84E5DBC();
  v8 = v7;
  chatCopy = chat;
  selfCopy = self;
  v11 = sub_1A84A2DE0(v6, v8, chat);

  return v11;
}

- (void)setKTVerifierResultsFromIDSInfoResultsDictionary:(id)dictionary
{
  v4 = sub_1A84E5D3C();
  selfCopy = self;
  sub_1A84A30DC(v4);
}

@end