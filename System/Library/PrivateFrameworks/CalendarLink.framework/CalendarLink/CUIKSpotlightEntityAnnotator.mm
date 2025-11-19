@interface CUIKSpotlightEntityAnnotator
- (void)associateEventEntityWithIdentifier:(id)a3 occurrenceDate:(id)a4 withSearchableItem:(id)a5;
@end

@implementation CUIKSpotlightEntityAnnotator

- (void)associateEventEntityWithIdentifier:(id)a3 occurrenceDate:(id)a4 withSearchableItem:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  [objc_opt_class() associateEventEntityWithIdentifier:v9 occurrenceDate:v8 with:v7];
}

@end