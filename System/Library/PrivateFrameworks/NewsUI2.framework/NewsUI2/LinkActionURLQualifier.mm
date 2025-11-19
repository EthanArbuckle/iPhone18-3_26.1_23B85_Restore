@interface LinkActionURLQualifier
- (BOOL)allowCopyingOfURL:(id)a3;
- (BOOL)allowOpenInNewWindowForURL:(id)a3;
- (BOOL)allowOpenInSafariForURL:(id)a3;
- (_TtC7NewsUI222LinkActionURLQualifier)init;
@end

@implementation LinkActionURLQualifier

- (BOOL)allowCopyingOfURL:(id)a3
{
  v3 = sub_219BDB954();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BDB8B4();
  v7 = sub_219BDB854();
  v8 = [v7 fc:0 isHardPaywallNewsArticleURL:?];

  (*(v4 + 8))(v6, v3);
  return v8 ^ 1;
}

- (BOOL)allowOpenInSafariForURL:(id)a3
{
  v3 = sub_219BDB954();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BDB8B4();
  v7 = sub_219BDB854();
  v8 = [v7 fc_isNewsURL];

  (*(v4 + 8))(v6, v3);
  return v8 ^ 1;
}

- (BOOL)allowOpenInNewWindowForURL:(id)a3
{
  v3 = sub_219BDB954();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BDB8B4();
  v7 = sub_219BDB854();
  v8 = [v7 fc_isNewsURL];

  if (v8)
  {
    v9 = [objc_opt_self() sharedApplication];
    v10 = [v9 supportsMultipleScenes];
  }

  else
  {
    v10 = 0;
  }

  (*(v4 + 8))(v6, v3);
  return v10;
}

- (_TtC7NewsUI222LinkActionURLQualifier)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(LinkActionURLQualifier *)&v3 init];
}

@end