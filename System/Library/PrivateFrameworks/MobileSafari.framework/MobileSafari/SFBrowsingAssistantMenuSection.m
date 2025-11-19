@interface SFBrowsingAssistantMenuSection
+ (NSArray)moreMenuSections;
+ (SFBrowsingAssistantMenuSection)favoritesSection;
+ (id)websiteSettingsSectionForDomain:(id)a3;
- (NSString)title;
- (SFBrowsingAssistantMenuSection)init;
- (SFBrowsingAssistantMenuSection)initWithIdentifier:(id)a3;
- (void)setIdentifier:(id)a3;
- (void)setTitle:(id)a3;
@end

@implementation SFBrowsingAssistantMenuSection

+ (SFBrowsingAssistantMenuSection)favoritesSection
{
  v2 = [objc_allocWithZone(SFBrowsingAssistantMenuSection) initWithIdentifier_];

  return v2;
}

+ (NSArray)moreMenuSections
{
  sub_18B9EE328();
  type metadata accessor for SFBrowsingAssistantMenuSection();
  v2 = sub_18BC20D88();

  return v2;
}

+ (id)websiteSettingsSectionForDomain:(id)a3
{
  v3 = sub_18BC20BD8();
  v5 = sub_18B9EE438(v3, v4);

  return v5;
}

- (SFBrowsingAssistantMenuSection)initWithIdentifier:(id)a3
{
  v3 = a3;
  v4 = sub_18B9EE618(v3);

  return v4;
}

- (void)setIdentifier:(id)a3
{
  v4 = *(self + OBJC_IVAR___SFBrowsingAssistantMenuSection_identifier);
  *(self + OBJC_IVAR___SFBrowsingAssistantMenuSection_identifier) = a3;
  v3 = a3;
}

- (NSString)title
{
  swift_beginAccess();
  sub_18BC1E3F8();
  v2 = sub_18BC20B98();

  return v2;
}

- (void)setTitle:(id)a3
{
  v4 = sub_18BC20BD8();
  v6 = v5;
  v7 = (self + OBJC_IVAR___SFBrowsingAssistantMenuSection_title);
  swift_beginAccess();
  *v7 = v4;
  v7[1] = v6;
}

- (SFBrowsingAssistantMenuSection)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end