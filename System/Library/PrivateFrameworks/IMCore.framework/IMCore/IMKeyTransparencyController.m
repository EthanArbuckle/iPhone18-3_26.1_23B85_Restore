@interface IMKeyTransparencyController
+ (id)sharedController;
- (BOOL)selfOptedIn;
- (unint64_t)contactKeyVerificationStatusForHandleID:(id)a3 inChat:(id)a4;
- (void)keyTransparencyOptInStateChanged:(BOOL)a3;
- (void)refreshStatusForKTPeerURI:(id)a3;
- (void)setKTVerifierResultsFromIDSInfoResultsDictionary:(id)a3;
- (void)setupComplete:(BOOL)a3 info:(id)a4;
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

- (void)setupComplete:(BOOL)a3 info:(id)a4
{
  v5 = sub_1A84E5D3C();
  v6 = self;
  sub_1A82509D4(v5);
}

- (void)keyTransparencyOptInStateChanged:(BOOL)a3
{
  v4 = self;
  sub_1A8250D6C(a3);
}

- (BOOL)selfOptedIn
{
  v2 = self;
  v3 = sub_1A84A23AC();

  return v3 & 1;
}

- (void)refreshStatusForKTPeerURI:(id)a3
{
  v4 = sub_1A84E5DBC();
  v6 = v5;
  v7 = self;
  sub_1A84A37D0(v4, v6);
}

- (unint64_t)contactKeyVerificationStatusForHandleID:(id)a3 inChat:(id)a4
{
  v6 = sub_1A84E5DBC();
  v8 = v7;
  v9 = a4;
  v10 = self;
  v11 = sub_1A84A2DE0(v6, v8, a4);

  return v11;
}

- (void)setKTVerifierResultsFromIDSInfoResultsDictionary:(id)a3
{
  v4 = sub_1A84E5D3C();
  v5 = self;
  sub_1A84A30DC(v4);
}

@end