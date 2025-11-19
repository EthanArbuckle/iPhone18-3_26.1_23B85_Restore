@interface DUCalendarEventObjC
- (DUCalendarEventObjC)init;
- (void)setEndDateComponents:(id)a3;
- (void)setEndTimezone:(id)a3;
- (void)setStartDateComponents:(id)a3;
- (void)setStartTimezone:(id)a3;
@end

@implementation DUCalendarEventObjC

- (void)setEndTimezone:(id)a3
{
  v9 = objc_msgSend_copy(a3, a2, a3, v3, v4);
  objc_msgSend_setEndTimezone_(self->_underlying, v6, v9, v7, v8);
}

- (void)setEndDateComponents:(id)a3
{
  v9 = objc_msgSend_copy(a3, a2, a3, v3, v4);
  objc_msgSend_setEndDateComponents_(self->_underlying, v6, v9, v7, v8);
}

- (void)setStartTimezone:(id)a3
{
  v9 = objc_msgSend_copy(a3, a2, a3, v3, v4);
  objc_msgSend_setStartTimezone_(self->_underlying, v6, v9, v7, v8);
}

- (void)setStartDateComponents:(id)a3
{
  v9 = objc_msgSend_copy(a3, a2, a3, v3, v4);
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