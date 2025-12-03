@interface CHAppEntitySpotlightAssociator
+ (void)associateRecentCall:(id)call with:(id)with;
- (CHAppEntitySpotlightAssociator)init;
@end

@implementation CHAppEntitySpotlightAssociator

+ (void)associateRecentCall:(id)call with:(id)with
{
  callCopy = call;
  withCopy = with;
  sub_100029168(callCopy, withCopy);
}

- (CHAppEntitySpotlightAssociator)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for AppEntitySpotlightAssociator();
  return [(CHAppEntitySpotlightAssociator *)&v3 init];
}

@end