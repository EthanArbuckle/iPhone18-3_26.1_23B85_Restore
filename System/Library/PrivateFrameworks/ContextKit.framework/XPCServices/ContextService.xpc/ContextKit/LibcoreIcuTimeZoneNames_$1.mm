@interface LibcoreIcuTimeZoneNames_$1
- (int)compareWithId:(id)id withId:(id)withId;
@end

@implementation LibcoreIcuTimeZoneNames_$1

- (int)compareWithId:(id)id withId:(id)withId
{
  if (!id)
  {
    goto LABEL_9;
  }

  v4 = *(id + 2);
  if (v4 <= 0)
  {
    IOSArray_throwOutOfBoundsWithMsg(v4, 0);
  }

  v5 = *(id + 3);
  if (!v5 || !withId)
  {
LABEL_9:
    JreThrowNullPointerException();
  }

  v6 = *(withId + 2);
  if (v6 <= 0)
  {
    IOSArray_throwOutOfBoundsWithMsg(v6, 0);
  }

  v7 = *(withId + 3);

  return [v5 compareToWithId:v7];
}

@end