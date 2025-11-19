@interface IAGenmojiAnalytics
+ (id)genmojiCreationFailReasonToEnumMap;
+ (id)genmojiCreationSignalToEnumMap;
+ (id)genmojiSourceToEnumMap;
@end

@implementation IAGenmojiAnalytics

+ (id)genmojiCreationSignalToEnumMap
{
  if (qword_1EC7D6618 != -1)
  {
    sub_1D462D678();
  }

  v3 = qword_1EC7D6620;

  return v3;
}

+ (id)genmojiCreationFailReasonToEnumMap
{
  if (qword_1EC7D6628 != -1)
  {
    sub_1D462D68C();
  }

  v3 = qword_1EC7D6630;

  return v3;
}

+ (id)genmojiSourceToEnumMap
{
  if (qword_1EC7D6608 != -1)
  {
    sub_1D462D6A0();
  }

  v3 = qword_1EC7D6610;

  return v3;
}

@end