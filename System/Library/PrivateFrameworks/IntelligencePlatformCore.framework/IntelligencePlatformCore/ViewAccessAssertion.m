@interface ViewAccessAssertion
- (NSString)viewArtifactTableName;
- (NSString)viewName;
- (NSURL)viewArtifactURL;
@end

@implementation ViewAccessAssertion

- (NSString)viewName
{
  sub_1C44E91E4();
  v2 = sub_1C4F01108();

  return v2;
}

- (NSURL)viewArtifactURL
{
  v2 = sub_1C4EF98F8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4BA95AC(v6);
  v7 = sub_1C4EF9868();
  (*(v3 + 8))(v6, v2);

  return v7;
}

- (NSString)viewArtifactTableName
{
  sub_1C4BA9674();
  if (v2)
  {
    v3 = sub_1C4F01108();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end