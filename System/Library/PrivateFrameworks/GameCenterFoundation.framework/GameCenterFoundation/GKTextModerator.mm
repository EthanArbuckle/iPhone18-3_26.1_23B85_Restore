@interface GKTextModerator
+ (BOOL)isAvailableForLocale:(id)locale;
+ (GKTextModerator)defaultTextModerator;
+ (GKTextModerator)localeAgnosticTextModerator;
+ (id)forLocale:(id)locale;
- (BOOL)shouldFilter:(id)filter;
- (NSLocale)locale;
@end

@implementation GKTextModerator

- (NSLocale)locale
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC778, &qword_227AA0B00);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v11 - v5;
  selfCopy = self;
  GKTextModerator.locale.getter();

  v8 = sub_227A71D0C();
  v9 = 0;
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) != 1)
  {
    v9 = sub_227A71CAC();
    (*(*(v8 - 8) + 8))(v6, v8);
  }

  return v9;
}

- (BOOL)shouldFilter:(id)filter
{
  v4 = sub_227A724EC();
  v6 = v5;
  selfCopy = self;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  LOBYTE(v4) = GKTextModerator.shouldFilter(_:)(v8);

  return v4 & 1;
}

+ (GKTextModerator)localeAgnosticTextModerator
{
  v2 = static GKTextModerator.localeAgnostic.getter();

  return v2;
}

+ (GKTextModerator)defaultTextModerator
{
  v2 = static GKTextModerator.default.getter();

  return v2;
}

+ (BOOL)isAvailableForLocale:(id)locale
{
  v3 = sub_227A71D0C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227A71CBC();
  v8 = static GKTextModerator.isAvailable(locale:)();
  (*(v4 + 8))(v7, v3);
  return v8;
}

+ (id)forLocale:(id)locale
{
  v3 = sub_227A71D0C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227A71CBC();
  v8 = static GKTextModerator.for (locale:)(v7);
  (*(v4 + 8))(v7, v3);

  return v8;
}

@end