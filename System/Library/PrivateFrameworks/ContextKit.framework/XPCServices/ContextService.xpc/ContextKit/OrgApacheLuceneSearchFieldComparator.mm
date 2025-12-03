@interface OrgApacheLuceneSearchFieldComparator
- (int)compareValuesWithId:(id)id withId:(id)withId;
@end

@implementation OrgApacheLuceneSearchFieldComparator

- (int)compareValuesWithId:(id)id withId:(id)withId
{
  if (id)
  {
    if (withId)
    {
      if (([JavaLangComparable_class_() isInstance:id] & 1) == 0)
      {
        JreThrowClassCastException();
      }

      return [id compareToWithId:withId];
    }

    else
    {
      return 1;
    }
  }

  else if (withId)
  {
    return -1;
  }

  else
  {
    return 0;
  }
}

@end