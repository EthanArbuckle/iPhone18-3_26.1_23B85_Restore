@interface CUIKOccurrencesCollection
- (CUIKOccurrencesCollection)initWithOccurrences:(id)a3 timedOccurrences:(id)a4 allDayOccurrences:(id)a5 generation:(int)a6;
- (id)description;
@end

@implementation CUIKOccurrencesCollection

- (CUIKOccurrencesCollection)initWithOccurrences:(id)a3 timedOccurrences:(id)a4 allDayOccurrences:(id)a5 generation:(int)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v21.receiver = self;
  v21.super_class = CUIKOccurrencesCollection;
  v13 = [(CUIKOccurrencesCollection *)&v21 init];
  if (v13)
  {
    v14 = [v10 copy];
    occurrences = v13->_occurrences;
    v13->_occurrences = v14;

    v16 = [v12 copy];
    allDayOccurrences = v13->_allDayOccurrences;
    v13->_allDayOccurrences = v16;

    v18 = [v11 copy];
    timedOccurrences = v13->_timedOccurrences;
    v13->_timedOccurrences = v18;

    v13->_generation = a6;
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