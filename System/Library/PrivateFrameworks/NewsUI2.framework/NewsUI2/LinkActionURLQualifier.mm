@interface LinkActionURLQualifier
- (BOOL)allowCopyingOfURL:(id)l;
- (BOOL)allowOpenInNewWindowForURL:(id)l;
- (BOOL)allowOpenInSafariForURL:(id)l;
- (_TtC7NewsUI222LinkActionURLQualifier)init;
@end

@implementation LinkActionURLQualifier

- (BOOL)allowCopyingOfURL:(id)l
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

- (BOOL)allowOpenInSafariForURL:(id)l
{
  v3 = sub_219BDB954();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BDB8B4();
  v7 = sub_219BDB854();
  fc_isNewsURL = [v7 fc_isNewsURL];

  (*(v4 + 8))(v6, v3);
  return fc_isNewsURL ^ 1;
}

- (BOOL)allowOpenInNewWindowForURL:(id)l
{
  v3 = sub_219BDB954();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BDB8B4();
  v7 = sub_219BDB854();
  fc_isNewsURL = [v7 fc_isNewsURL];

  if (fc_isNewsURL)
  {
    sharedApplication = [objc_opt_self() sharedApplication];
    supportsMultipleScenes = [sharedApplication supportsMultipleScenes];
  }

  else
  {
    supportsMultipleScenes = 0;
  }

  (*(v4 + 8))(v6, v3);
  return supportsMultipleScenes;
}

- (_TtC7NewsUI222LinkActionURLQualifier)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(LinkActionURLQualifier *)&v3 init];
}

@end