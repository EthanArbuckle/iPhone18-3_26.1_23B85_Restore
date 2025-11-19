@interface DUStructuredEntityObjC
- (DUCalendarEventObjC)calendarEvent;
- (DUDebugInfoObjC)responseDebugInfo;
- (DUDisplayInfoObjC)displayInfo;
- (DUStructuredEntityObjC)init;
- (void)setAddressComponents:(id)a3;
- (void)setCalendarEvent:(id)a3;
- (void)setDisplayInfo:(id)a3;
- (void)setEmail:(id)a3;
- (void)setHomeAutomationID:(id)a3;
- (void)setPhoneNumber:(id)a3;
- (void)setResponseDebugInfo:(id)a3;
- (void)setTitle:(id)a3;
- (void)setType:(id)a3;
- (void)setUrl:(id)a3;
@end

@implementation DUStructuredEntityObjC

- (void)setResponseDebugInfo:(id)a3
{
  v9 = objc_msgSend_debugInfoForObjCDebugInfo_(DUObjCCompatibilityUtils, a2, a3, v3, v4);
  objc_msgSend_setResponseDebugInfo_(self->_underlying, v6, v9, v7, v8);
}

- (DUDebugInfoObjC)responseDebugInfo
{
  v5 = objc_msgSend_responseDebugInfo(self->_underlying, a2, v2, v3, v4);
  v9 = objc_msgSend_objcDebugInfoForDebugInfo_(DUObjCCompatibilityUtils, v6, v5, v7, v8);

  return v9;
}

- (void)setDisplayInfo:(id)a3
{
  v9 = objc_msgSend_displayInfoForObjC_(DUObjCCompatibilityUtils, a2, a3, v3, v4);
  objc_msgSend_setDisplayInfo_(self->_underlying, v6, v9, v7, v8);
}

- (DUDisplayInfoObjC)displayInfo
{
  v5 = objc_msgSend_displayInfo(self->_underlying, a2, v2, v3, v4);
  v9 = objc_msgSend_objCForDisplayInfo_(DUObjCCompatibilityUtils, v6, v5, v7, v8);

  return v9;
}

- (void)setHomeAutomationID:(id)a3
{
  v9 = objc_msgSend_copy(a3, a2, a3, v3, v4);
  objc_msgSend_setHomeAutomationID_(self->_underlying, v6, v9, v7, v8);
}

- (void)setCalendarEvent:(id)a3
{
  v9 = objc_msgSend_calendarEventForObjCCalendarEvent_(DUObjCCompatibilityUtils, a2, a3, v3, v4);
  objc_msgSend_setCalendarEvent_(self->_underlying, v6, v9, v7, v8);
}

- (DUCalendarEventObjC)calendarEvent
{
  v5 = objc_msgSend_calendarEvent(self->_underlying, a2, v2, v3, v4);
  v9 = objc_msgSend_objCCalendarEventForCalendarEvent_(DUObjCCompatibilityUtils, v6, v5, v7, v8);

  return v9;
}

- (void)setAddressComponents:(id)a3
{
  v9 = objc_msgSend_copy(a3, a2, a3, v3, v4);
  objc_msgSend_setAddressComponents_(self->_underlying, v6, v9, v7, v8);
}

- (void)setUrl:(id)a3
{
  v9 = objc_msgSend_copy(a3, a2, a3, v3, v4);
  objc_msgSend_setUrl_(self->_underlying, v6, v9, v7, v8);
}

- (void)setEmail:(id)a3
{
  v9 = objc_msgSend_copy(a3, a2, a3, v3, v4);
  objc_msgSend_setEmail_(self->_underlying, v6, v9, v7, v8);
}

- (void)setPhoneNumber:(id)a3
{
  v9 = objc_msgSend_copy(a3, a2, a3, v3, v4);
  objc_msgSend_setPhoneNumber_(self->_underlying, v6, v9, v7, v8);
}

- (void)setType:(id)a3
{
  v9 = objc_msgSend_copy(a3, a2, a3, v3, v4);
  objc_msgSend_setType_(self->_underlying, v6, v9, v7, v8);
}

- (void)setTitle:(id)a3
{
  v9 = objc_msgSend_copy(a3, a2, a3, v3, v4);
  objc_msgSend_setTitle_(self->_underlying, v6, v9, v7, v8);
}

- (DUStructuredEntityObjC)init
{
  v7.receiver = self;
  v7.super_class = DUStructuredEntityObjC;
  v2 = [(DUStructuredEntityObjC *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(_TtC21DocumentUnderstanding18DUStructuredEntity);
    underlying = v2->_underlying;
    v2->_underlying = v3;

    v5 = v2;
  }

  return v2;
}

@end