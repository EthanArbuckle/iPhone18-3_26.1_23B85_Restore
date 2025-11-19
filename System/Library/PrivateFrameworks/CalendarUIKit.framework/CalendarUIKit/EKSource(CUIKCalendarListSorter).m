@interface EKSource(CUIKCalendarListSorter)
- (id)sortedCalendarsForEntityType:()CUIKCalendarListSorter;
- (id)sortedCalendarsForEntityType:()CUIKCalendarListSorter passingTest:;
@end

@implementation EKSource(CUIKCalendarListSorter)

- (id)sortedCalendarsForEntityType:()CUIKCalendarListSorter
{
  v1 = [a1 calendarsForEntityType:?];
  v2 = [v1 allObjects];
  v3 = +[CUIKCalendarListSorter ekCalendarComparator];
  v4 = [v2 sortedArrayUsingComparator:v3];

  return v4;
}

- (id)sortedCalendarsForEntityType:()CUIKCalendarListSorter passingTest:
{
  v6 = a4;
  v7 = [a1 calendarsForEntityType:a3];
  v8 = [v7 allObjects];
  v9 = [v8 CalFilter:v6];

  v10 = +[CUIKCalendarListSorter ekCalendarComparator];
  v11 = [v9 sortedArrayUsingComparator:v10];

  return v11;
}

@end