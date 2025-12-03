@interface SFBrowsingAssistantMenuSection
+ (NSArray)moreMenuSections;
+ (SFBrowsingAssistantMenuSection)favoritesSection;
+ (id)websiteSettingsSectionForDomain:(id)domain;
- (NSString)title;
- (SFBrowsingAssistantMenuSection)init;
- (SFBrowsingAssistantMenuSection)initWithIdentifier:(id)identifier;
- (void)setIdentifier:(id)identifier;
- (void)setTitle:(id)title;
@end

@implementation SFBrowsingAssistantMenuSection

+ (SFBrowsingAssistantMenuSection)favoritesSection
{
  initWithIdentifier_ = [objc_allocWithZone(SFBrowsingAssistantMenuSection) initWithIdentifier_];

  return initWithIdentifier_;
}

+ (NSArray)moreMenuSections
{
  sub_18B9EE328();
  type metadata accessor for SFBrowsingAssistantMenuSection();
  v2 = sub_18BC20D88();

  return v2;
}

+ (id)websiteSettingsSectionForDomain:(id)domain
{
  v3 = sub_18BC20BD8();
  v5 = sub_18B9EE438(v3, v4);

  return v5;
}

- (SFBrowsingAssistantMenuSection)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = sub_18B9EE618(identifierCopy);

  return v4;
}

- (void)setIdentifier:(id)identifier
{
  v4 = *(self + OBJC_IVAR___SFBrowsingAssistantMenuSection_identifier);
  *(self + OBJC_IVAR___SFBrowsingAssistantMenuSection_identifier) = identifier;
  identifierCopy = identifier;
}

- (NSString)title
{
  swift_beginAccess();
  sub_18BC1E3F8();
  v2 = sub_18BC20B98();

  return v2;
}

- (void)setTitle:(id)title
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