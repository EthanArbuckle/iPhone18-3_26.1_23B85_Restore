@interface LibcoreIcuTimeZoneNames_$1
- (int)compareWithId:(id)a3 withId:(id)a4;
@end

@implementation LibcoreIcuTimeZoneNames_$1

- (int)compareWithId:(id)a3 withId:(id)a4
{
  if (!a3)
  {
    goto LABEL_9;
  }

  v4 = *(a3 + 2);
  if (v4 <= 0)
  {
    IOSArray_throwOutOfBoundsWithMsg(v4, 0);
  }

  v5 = *(a3 + 3);
  if (!v5 || !a4)
  {
LABEL_9:
    JreThrowNullPointerException();
  }

  v6 = *(a4 + 2);
  if (v6 <= 0)
  {
    IOSArray_throwOutOfBoundsWithMsg(v6, 0);
  }

  v7 = *(a4 + 3);

  return [v5 compareToWithId:v7];
}

@end