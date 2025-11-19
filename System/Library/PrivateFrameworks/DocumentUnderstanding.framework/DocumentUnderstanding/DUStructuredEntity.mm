@interface DUStructuredEntity
- (NSArray)labels;
- (NSDictionary)addressComponents;
- (_TtC21DocumentUnderstanding11DUDebugInfo)responseDebugInfo;
- (_TtC21DocumentUnderstanding13DUDisplayInfo)displayInfo;
- (_TtC21DocumentUnderstanding15DUCalendarEvent)calendarEvent;
- (void)encodeWithCoder:(id)a3;
- (void)setAddressComponents:(id)a3;
- (void)setCalendarEvent:(id)a3;
- (void)setDisplayInfo:(id)a3;
- (void)setLabels:(id)a3;
- (void)setResponseDebugInfo:(id)a3;
@end

@implementation DUStructuredEntity

- (NSArray)labels
{
  sub_232BFFF18();
  type metadata accessor for DUStructuredExtractionLabel();
  v2 = sub_232CE9FD0();

  return v2;
}

- (void)setLabels:(id)a3
{
  type metadata accessor for DUStructuredExtractionLabel();
  v4 = sub_232CE9FE0();
  v5 = self;
  sub_232BFFFBC(v4);
}

- (NSDictionary)addressComponents
{
  if (sub_232C003F8())
  {
    type metadata accessor for NSTextCheckingKey();
    sub_232C06FB0(&qword_27DDC65C8, 255, type metadata accessor for NSTextCheckingKey);
    v2 = sub_232CE9C20();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)setAddressComponents:(id)a3
{
  v3 = a3;
  if (a3)
  {
    type metadata accessor for NSTextCheckingKey();
    sub_232C06FB0(&qword_27DDC65C8, 255, type metadata accessor for NSTextCheckingKey);
    v3 = sub_232CE9C40();
  }

  v5 = self;
  sub_232C004F4(v3);
}

- (_TtC21DocumentUnderstanding15DUCalendarEvent)calendarEvent
{
  v2 = sub_232C005E8();

  return v2;
}

- (void)setCalendarEvent:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_232C00680(a3);
}

- (_TtC21DocumentUnderstanding13DUDisplayInfo)displayInfo
{
  v2 = sub_232C00854();

  return v2;
}

- (void)setDisplayInfo:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_232C008EC(a3);
}

- (_TtC21DocumentUnderstanding11DUDebugInfo)responseDebugInfo
{
  v2 = sub_232C009E4();

  return v2;
}

- (void)setResponseDebugInfo:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_232C00A7C(a3);
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_232C03F04(v4);
}

@end