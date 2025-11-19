@interface CHAppEntitySpotlightAssociator
+ (void)associateRecentCall:(id)a3 with:(id)a4;
- (CHAppEntitySpotlightAssociator)init;
@end

@implementation CHAppEntitySpotlightAssociator

+ (void)associateRecentCall:(id)a3 with:(id)a4
{
  v5 = a3;
  v6 = a4;
  sub_100029168(v5, v6);
}

- (CHAppEntitySpotlightAssociator)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for AppEntitySpotlightAssociator();
  return [(CHAppEntitySpotlightAssociator *)&v3 init];
}

@end