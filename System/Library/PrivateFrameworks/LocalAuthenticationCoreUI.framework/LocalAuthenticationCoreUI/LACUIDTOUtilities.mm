@interface LACUIDTOUtilities
+ (NSURL)dtoLearnMoreLinkURL;
+ (NSURL)dtoUnexpectedSecurityDelayRadarURL;
- (LACUIDTOUtilities)init;
@end

@implementation LACUIDTOUtilities

+ (NSURL)dtoLearnMoreLinkURL
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v15 - v4;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  URL.init(string:)();
  result = (*(v7 + 48))(v5, 1, v6);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v7 + 32))(v10, v5, v6);
    URL._bridgeToObjectiveC()(v12);
    v14 = v13;
    (*(v7 + 8))(v10, v6);

    return v14;
  }

  return result;
}

+ (NSURL)dtoUnexpectedSecurityDelayRadarURL
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static LACUIDTOUtilities.dtoUnexpectedSecurityDelayRadarURL.getter(v6);
  URL._bridgeToObjectiveC()(v7);
  v9 = v8;
  (*(v3 + 8))(v6, v2);

  return v9;
}

- (LACUIDTOUtilities)init
{
  v3.receiver = self;
  v3.super_class = LACUIDTOUtilities;
  return [(LACUIDTOUtilities *)&v3 init];
}

@end