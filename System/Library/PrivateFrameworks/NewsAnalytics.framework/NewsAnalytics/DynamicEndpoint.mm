@interface DynamicEndpoint
- (NSString)name;
- (NSURL)url;
- (id)endpointURLWithContentType:(int64_t)type;
@end

@implementation DynamicEndpoint

- (NSString)name
{
  DynamicEndpoint.name.getter();
  v2 = sub_217D8951C();

  return v2;
}

- (NSURL)url
{
  v3 = sub_217D87BAC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *self->appConfigurationManager;

  v9 = [objc_msgSend(v8 appConfiguration)];
  swift_unknownObjectRelease();
  sub_217D87B8C();

  v10 = sub_217D87B7C();
  (*(v4 + 8))(v7, v3);

  return v10;
}

- (id)endpointURLWithContentType:(int64_t)type
{
  sub_217CE93AC();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  DynamicEndpoint.endpointURL(contentType:)(type, v7);

  v8 = sub_217D87BAC();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 48))(v7, 1, v8);
  v11 = 0;
  if (v10 != 1)
  {
    v12 = sub_217D87B7C();
    (*(v9 + 8))(v7, v8);
    v11 = v12;
  }

  return v11;
}

@end