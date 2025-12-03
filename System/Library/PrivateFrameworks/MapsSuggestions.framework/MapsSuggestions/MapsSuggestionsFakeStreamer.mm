@interface MapsSuggestionsFakeStreamer
- (_TtC15MapsSuggestions27MapsSuggestionsFakeStreamer)initWithLookAheadPeriod:(double)period pingInterval:(double)interval notificationName:(id)name callBackBlock:(id)block simpleCallBack:(BOOL)back tenSecondEvent:(BOOL)event alreadyStartedEvent:(BOOL)startedEvent doubleEvent:(BOOL)self0;
- (_TtC15MapsSuggestions27MapsSuggestionsFakeStreamer)initWithLookAheadPeriod:(double)period pingInterval:(double)interval notificationName:(id)name identifyingName:(id)identifyingName;
- (id)callBackBlock;
- (void)scanForStreamableEvents;
- (void)setCallBackBlock:(id)block;
@end

@implementation MapsSuggestionsFakeStreamer

- (id)callBackBlock
{
  v2 = (self + OBJC_IVAR____TtC15MapsSuggestions27MapsSuggestionsFakeStreamer_callBackBlock);
  swift_beginAccess();
  if (*v2)
  {
    v3 = v2[1];
    aBlock[4] = *v2;
    aBlock[5] = v3;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C5139244;
    aBlock[3] = &block_descriptor_155;
    v4 = _Block_copy(aBlock);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setCallBackBlock:(id)block
{
  v4 = _Block_copy(block);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_1C5258AE8;
  }

  else
  {
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR____TtC15MapsSuggestions27MapsSuggestionsFakeStreamer_callBackBlock);
  swift_beginAccess();
  v7 = *v6;
  *v6 = v4;
  v6[1] = v5;
  selfCopy = self;
  sub_1C513EDF0(v7);
}

- (_TtC15MapsSuggestions27MapsSuggestionsFakeStreamer)initWithLookAheadPeriod:(double)period pingInterval:(double)interval notificationName:(id)name callBackBlock:(id)block simpleCallBack:(BOOL)back tenSecondEvent:(BOOL)event alreadyStartedEvent:(BOOL)startedEvent doubleEvent:(BOOL)self0
{
  v16 = _Block_copy(block);
  v17 = sub_1C529D72C();
  if (v16)
  {
    v19 = v17;
    v20 = v18;
    v21 = swift_allocObject();
    v18 = v20;
    v22 = v21;
    v17 = v19;
    *(v22 + 16) = v16;
    v23 = sub_1C5143E98;
  }

  else
  {
    v23 = 0;
    v22 = 0;
  }

  return MapsSuggestionsFakeStreamer.init(lookAheadPeriod:pingInterval:notificationName:callBackBlock:simpleCallBack:tenSecondEvent:alreadyStartedEvent:doubleEvent:)(v17, v18, v23, v22, back, event, startedEvent, doubleEvent, period, interval);
}

- (void)scanForStreamableEvents
{
  selfCopy = self;
  MapsSuggestionsFakeStreamer.scanForStreamableEvents()();
}

- (_TtC15MapsSuggestions27MapsSuggestionsFakeStreamer)initWithLookAheadPeriod:(double)period pingInterval:(double)interval notificationName:(id)name identifyingName:(id)identifyingName
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end