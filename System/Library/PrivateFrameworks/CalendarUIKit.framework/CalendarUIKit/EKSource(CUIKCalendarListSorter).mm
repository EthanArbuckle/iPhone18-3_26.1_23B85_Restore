@interface EKSource(CUIKCalendarListSorter)
- (id)sortedCalendarsForEntityType:()CUIKCalendarListSorter;
- (id)sortedCalendarsForEntityType:()CUIKCalendarListSorter passingTest:;
@end

@implementation EKSource(CUIKCalendarListSorter)

- (id)sortedCalendarsForEntityType:()CUIKCalendarListSorter
{
  v1 = [self calendarsForEntityType:?];
  allObjects = [v1 allObjects];
  v3 = +[CUIKCalendarListSorter ekCalendarComparator];
  v4 = [allObjects sortedArrayUsingComparator:v3];

  return v4;
}

- (id)sortedCalendarsForEntityType:()CUIKCalendarListSorter passingTest:
{
  v6 = a4;
  v7 = [self calendarsForEntityType:a3];
  allObjects = [v7 allObjects];
  v9 = [allObjects CalFilter:v6];

  v10 = +[CUIKCalendarListSorter ekCalendarComparator];
  v11 = [v9 sortedArrayUsingComparator:v10];

  return v11;
}

@end