@interface OrgApacheLuceneSearchFieldComparator
- (int)compareValuesWithId:(id)a3 withId:(id)a4;
@end

@implementation OrgApacheLuceneSearchFieldComparator

- (int)compareValuesWithId:(id)a3 withId:(id)a4
{
  if (a3)
  {
    if (a4)
    {
      if (([JavaLangComparable_class_() isInstance:a3] & 1) == 0)
      {
        JreThrowClassCastException();
      }

      return [a3 compareToWithId:a4];
    }

    else
    {
      return 1;
    }
  }

  else if (a4)
  {
    return -1;
  }

  else
  {
    return 0;
  }
}

@end