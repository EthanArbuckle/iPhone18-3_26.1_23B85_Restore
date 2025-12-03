@interface DynamicEndpoint
- (NSString)name;
- (NSURL)url;
- (id)endpointURLWithContentType:(int64_t)type;
@end

@implementation DynamicEndpoint

- (NSURL)url
{
  v3 = sub_25BE14C88();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20]();
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *self->appConfigurationManager;

  v9 = [objc_msgSend(v8 appConfiguration)];
  swift_unknownObjectRelease();
  sub_25BE14C78();

  v10 = sub_25BE14C68();
  (*(v4 + 8))(v7, v3);

  return v10;
}

- (NSString)name
{
  sub_25BE03AA0();
  v2 = sub_25BE15138();

  return v2;
}

- (id)endpointURLWithContentType:(int64_t)type
{
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDEBC8, &unk_25BE167A0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = &v13 - v5;

  sub_25BE03BE4(type, v6);

  v7 = sub_25BE14C88();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v6, 1, v7);
  v10 = 0;
  if (v9 != 1)
  {
    v11 = sub_25BE14C68();
    (*(v8 + 8))(v6, v7);
    v10 = v11;
  }

  return v10;
}

@end