@interface DUStructuredEntity
- (NSArray)labels;
- (NSDictionary)addressComponents;
- (_TtC21DocumentUnderstanding11DUDebugInfo)responseDebugInfo;
- (_TtC21DocumentUnderstanding13DUDisplayInfo)displayInfo;
- (_TtC21DocumentUnderstanding15DUCalendarEvent)calendarEvent;
- (void)encodeWithCoder:(id)coder;
- (void)setAddressComponents:(id)components;
- (void)setCalendarEvent:(id)event;
- (void)setDisplayInfo:(id)info;
- (void)setLabels:(id)labels;
- (void)setResponseDebugInfo:(id)info;
@end

@implementation DUStructuredEntity

- (NSArray)labels
{
  sub_232BFFF18();
  type metadata accessor for DUStructuredExtractionLabel();
  v2 = sub_232CE9FD0();

  return v2;
}

- (void)setLabels:(id)labels
{
  type metadata accessor for DUStructuredExtractionLabel();
  v4 = sub_232CE9FE0();
  selfCopy = self;
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

- (void)setAddressComponents:(id)components
{
  componentsCopy = components;
  if (components)
  {
    type metadata accessor for NSTextCheckingKey();
    sub_232C06FB0(&qword_27DDC65C8, 255, type metadata accessor for NSTextCheckingKey);
    componentsCopy = sub_232CE9C40();
  }

  selfCopy = self;
  sub_232C004F4(componentsCopy);
}

- (_TtC21DocumentUnderstanding15DUCalendarEvent)calendarEvent
{
  v2 = sub_232C005E8();

  return v2;
}

- (void)setCalendarEvent:(id)event
{
  eventCopy = event;
  selfCopy = self;
  sub_232C00680(event);
}

- (_TtC21DocumentUnderstanding13DUDisplayInfo)displayInfo
{
  v2 = sub_232C00854();

  return v2;
}

- (void)setDisplayInfo:(id)info
{
  infoCopy = info;
  selfCopy = self;
  sub_232C008EC(info);
}

- (_TtC21DocumentUnderstanding11DUDebugInfo)responseDebugInfo
{
  v2 = sub_232C009E4();

  return v2;
}

- (void)setResponseDebugInfo:(id)info
{
  infoCopy = info;
  selfCopy = self;
  sub_232C00A7C(info);
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_232C03F04(coderCopy);
}

@end