@interface IMDKeyTransparencyController
+ (id)sharedController;
- (BOOL)selfOptedIn;
- (NSDictionary)setupInfo;
- (void)optInStateChanged:(id)changed;
@end

@implementation IMDKeyTransparencyController

+ (id)sharedController
{
  if (qword_28141F0D0 != -1)
  {
    swift_once();
  }

  v3 = qword_28141F0D8;

  return v3;
}

- (NSDictionary)setupInfo
{
  sub_22B6F0AD4(&unk_27D8CE9F0, &qword_22B7F98C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22B7F93B0;
  v4 = *MEMORY[0x277D19F10];
  sub_22B7DB6A8();
  selfCopy = self;
  sub_22B7DC248();
  selfOptedIn = [(IMDKeyTransparencyController *)selfCopy selfOptedIn];
  *(inited + 96) = MEMORY[0x277D839B0];
  *(inited + 72) = selfOptedIn;
  sub_22B4D7D1C(inited);
  swift_setDeallocating();
  sub_22B4D0D64(inited + 32, &unk_27D8CD7D0, &qword_22B7FA3F0);

  v7 = sub_22B7DB568();

  return v7;
}

- (BOOL)selfOptedIn
{
  selfCopy = self;
  v3 = sub_22B4D7BA0();

  return v3 & 1;
}

- (void)optInStateChanged:(id)changed
{
  v4 = sub_22B7DA688();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22B7DA658();
  selfCopy = self;
  sub_22B7B8078();

  (*(v5 + 8))(v8, v4);
}

@end