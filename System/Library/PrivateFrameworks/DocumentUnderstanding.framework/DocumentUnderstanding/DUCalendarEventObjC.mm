@interface DUCalendarEventObjC
- (DUCalendarEventObjC)init;
- (void)setEndDateComponents:(id)components;
- (void)setEndTimezone:(id)timezone;
- (void)setStartDateComponents:(id)components;
- (void)setStartTimezone:(id)timezone;
@end

@implementation DUCalendarEventObjC

- (void)setEndTimezone:(id)timezone
{
  v9 = objc_msgSend_copy(timezone, a2, timezone, v3, v4);
  objc_msgSend_setEndTimezone_(self->_underlying, v6, v9, v7, v8);
}

- (void)setEndDateComponents:(id)components
{
  v9 = objc_msgSend_copy(components, a2, components, v3, v4);
  objc_msgSend_setEndDateComponents_(self->_underlying, v6, v9, v7, v8);
}

- (void)setStartTimezone:(id)timezone
{
  v9 = objc_msgSend_copy(timezone, a2, timezone, v3, v4);
  objc_msgSend_setStartTimezone_(self->_underlying, v6, v9, v7, v8);
}

- (void)setStartDateComponents:(id)components
{
  v9 = objc_msgSend_copy(components, a2, components, v3, v4);
  objc_msgSend_setStartDateComponents_(self->_underlying, v6, v9, v7, v8);
}

- (DUCalendarEventObjC)init
{
  v7.receiver = self;
  v7.super_class = DUCalendarEventObjC;
  v2 = [(DUCalendarEventObjC *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(_TtC21DocumentUnderstanding15DUCalendarEvent);
    underlying = v2->_underlying;
    v2->_underlying = v3;

    v5 = v2;
  }

  return v2;
}

@end