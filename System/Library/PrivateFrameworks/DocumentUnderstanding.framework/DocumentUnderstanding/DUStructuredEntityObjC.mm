@interface DUStructuredEntityObjC
- (DUCalendarEventObjC)calendarEvent;
- (DUDebugInfoObjC)responseDebugInfo;
- (DUDisplayInfoObjC)displayInfo;
- (DUStructuredEntityObjC)init;
- (void)setAddressComponents:(id)components;
- (void)setCalendarEvent:(id)event;
- (void)setDisplayInfo:(id)info;
- (void)setEmail:(id)email;
- (void)setHomeAutomationID:(id)d;
- (void)setPhoneNumber:(id)number;
- (void)setResponseDebugInfo:(id)info;
- (void)setTitle:(id)title;
- (void)setType:(id)type;
- (void)setUrl:(id)url;
@end

@implementation DUStructuredEntityObjC

- (void)setResponseDebugInfo:(id)info
{
  v9 = objc_msgSend_debugInfoForObjCDebugInfo_(DUObjCCompatibilityUtils, a2, info, v3, v4);
  objc_msgSend_setResponseDebugInfo_(self->_underlying, v6, v9, v7, v8);
}

- (DUDebugInfoObjC)responseDebugInfo
{
  v5 = objc_msgSend_responseDebugInfo(self->_underlying, a2, v2, v3, v4);
  v9 = objc_msgSend_objcDebugInfoForDebugInfo_(DUObjCCompatibilityUtils, v6, v5, v7, v8);

  return v9;
}

- (void)setDisplayInfo:(id)info
{
  v9 = objc_msgSend_displayInfoForObjC_(DUObjCCompatibilityUtils, a2, info, v3, v4);
  objc_msgSend_setDisplayInfo_(self->_underlying, v6, v9, v7, v8);
}

- (DUDisplayInfoObjC)displayInfo
{
  v5 = objc_msgSend_displayInfo(self->_underlying, a2, v2, v3, v4);
  v9 = objc_msgSend_objCForDisplayInfo_(DUObjCCompatibilityUtils, v6, v5, v7, v8);

  return v9;
}

- (void)setHomeAutomationID:(id)d
{
  v9 = objc_msgSend_copy(d, a2, d, v3, v4);
  objc_msgSend_setHomeAutomationID_(self->_underlying, v6, v9, v7, v8);
}

- (void)setCalendarEvent:(id)event
{
  v9 = objc_msgSend_calendarEventForObjCCalendarEvent_(DUObjCCompatibilityUtils, a2, event, v3, v4);
  objc_msgSend_setCalendarEvent_(self->_underlying, v6, v9, v7, v8);
}

- (DUCalendarEventObjC)calendarEvent
{
  v5 = objc_msgSend_calendarEvent(self->_underlying, a2, v2, v3, v4);
  v9 = objc_msgSend_objCCalendarEventForCalendarEvent_(DUObjCCompatibilityUtils, v6, v5, v7, v8);

  return v9;
}

- (void)setAddressComponents:(id)components
{
  v9 = objc_msgSend_copy(components, a2, components, v3, v4);
  objc_msgSend_setAddressComponents_(self->_underlying, v6, v9, v7, v8);
}

- (void)setUrl:(id)url
{
  v9 = objc_msgSend_copy(url, a2, url, v3, v4);
  objc_msgSend_setUrl_(self->_underlying, v6, v9, v7, v8);
}

- (void)setEmail:(id)email
{
  v9 = objc_msgSend_copy(email, a2, email, v3, v4);
  objc_msgSend_setEmail_(self->_underlying, v6, v9, v7, v8);
}

- (void)setPhoneNumber:(id)number
{
  v9 = objc_msgSend_copy(number, a2, number, v3, v4);
  objc_msgSend_setPhoneNumber_(self->_underlying, v6, v9, v7, v8);
}

- (void)setType:(id)type
{
  v9 = objc_msgSend_copy(type, a2, type, v3, v4);
  objc_msgSend_setType_(self->_underlying, v6, v9, v7, v8);
}

- (void)setTitle:(id)title
{
  v9 = objc_msgSend_copy(title, a2, title, v3, v4);
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