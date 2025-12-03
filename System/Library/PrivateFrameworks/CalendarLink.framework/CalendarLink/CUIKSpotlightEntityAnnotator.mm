@interface CUIKSpotlightEntityAnnotator
- (void)associateEventEntityWithIdentifier:(id)identifier occurrenceDate:(id)date withSearchableItem:(id)item;
@end

@implementation CUIKSpotlightEntityAnnotator

- (void)associateEventEntityWithIdentifier:(id)identifier occurrenceDate:(id)date withSearchableItem:(id)item
{
  itemCopy = item;
  dateCopy = date;
  identifierCopy = identifier;
  [objc_opt_class() associateEventEntityWithIdentifier:identifierCopy occurrenceDate:dateCopy with:itemCopy];
}

@end