@interface CUIKOccurrencesCollection
- (CUIKOccurrencesCollection)initWithOccurrences:(id)occurrences timedOccurrences:(id)timedOccurrences allDayOccurrences:(id)dayOccurrences generation:(int)generation;
- (id)description;
@end

@implementation CUIKOccurrencesCollection

- (CUIKOccurrencesCollection)initWithOccurrences:(id)occurrences timedOccurrences:(id)timedOccurrences allDayOccurrences:(id)dayOccurrences generation:(int)generation
{
  occurrencesCopy = occurrences;
  timedOccurrencesCopy = timedOccurrences;
  dayOccurrencesCopy = dayOccurrences;
  v21.receiver = self;
  v21.super_class = CUIKOccurrencesCollection;
  v13 = [(CUIKOccurrencesCollection *)&v21 init];
  if (v13)
  {
    v14 = [occurrencesCopy copy];
    occurrences = v13->_occurrences;
    v13->_occurrences = v14;

    v16 = [dayOccurrencesCopy copy];
    allDayOccurrences = v13->_allDayOccurrences;
    v13->_allDayOccurrences = v16;

    v18 = [timedOccurrencesCopy copy];
    timedOccurrences = v13->_timedOccurrences;
    v13->_timedOccurrences = v18;

    v13->_generation = generation;
  }

  return v13;
}

- (id)description
{
  v6.receiver = self;
  v6.super_class = CUIKOccurrencesCollection;
  v3 = [(CUIKOccurrencesCollection *)&v6 description];
  v4 = [v3 stringByAppendingFormat:@" _occurrences count = %lu", -[NSArray count](self->_occurrences, "count")];;

  return v4;
}

@end