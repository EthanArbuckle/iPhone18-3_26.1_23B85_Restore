@interface CalDAVScheduleResponseDetailsItem
- (NSString)recipientString;
- (id)copyParseRules;
- (id)description;
- (void)_setCalendarDataWithLeafItem:(id)item;
@end

@implementation CalDAVScheduleResponseDetailsItem

- (void)_setCalendarDataWithLeafItem:(id)item
{
  v4 = MEMORY[0x277D7F108];
  itemCopy = item;
  v6 = [v4 alloc];
  payloadAsString = [itemCopy payloadAsString];

  v7 = [v6 initWithICSString:payloadAsString options:0 error:0];
  [(CalDAVScheduleResponseDetailsItem *)self setCalendarData:v7];
}

- (id)copyParseRules
{
  v17 = objc_alloc(MEMORY[0x277CBEAC0]);
  v2 = *MEMORY[0x277CFDDC0];
  v16 = [MEMORY[0x277CFDC50] ruleWithMinimumNumber:0 maximumNumber:1 nameSpace:*MEMORY[0x277CFDDC0] elementName:@"recipient" objectClass:objc_opt_class() setterMethod:sel_setRecipientHREF_];
  v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v2, @"recipient"];
  v14 = [MEMORY[0x277CFDC50] ruleWithMinimumNumber:0 maximumNumber:1 nameSpace:v2 elementName:@"request-status" objectClass:objc_opt_class() setterMethod:sel_setRequestStatus_];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v2, @"request-status"];
  v4 = [MEMORY[0x277CFDC50] ruleWithMinimumNumber:0 maximumNumber:1 nameSpace:v2 elementName:@"calendar-data" objectClass:objc_opt_class() setterMethod:sel__setCalendarDataWithLeafItem_];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v2, @"calendar-data"];
  v6 = *MEMORY[0x277CFDEF8];
  v7 = *MEMORY[0x277CFDF08];
  v8 = [MEMORY[0x277CFDC50] ruleWithMinimumNumber:0 maximumNumber:1 nameSpace:*MEMORY[0x277CFDEF8] elementName:*MEMORY[0x277CFDF08] objectClass:objc_opt_class() setterMethod:sel_setTopLevelErrorItem_];
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v6, v7];
  v10 = *MEMORY[0x277CFDFF0];
  v11 = [MEMORY[0x277CFDC50] ruleWithMinimumNumber:0 maximumNumber:1 nameSpace:v6 elementName:*MEMORY[0x277CFDFF0] objectClass:objc_opt_class() setterMethod:sel_setResponseDescription_];
  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v6, v10];
  v18 = [v17 initWithObjectsAndKeys:{v16, v15, v14, v3, v4, v5, v8, v9, v11, v12, 0}];

  return v18;
}

- (NSString)recipientString
{
  recipientHREF = [(CalDAVScheduleResponseDetailsItem *)self recipientHREF];
  href = [recipientHREF href];
  payloadAsString = [href payloadAsString];

  return payloadAsString;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  recipientHREF = self->_recipientHREF;
  payloadAsString = [(CoreDAVLeafItem *)self->_requestStatus payloadAsString];
  topLevelErrorItem = self->_topLevelErrorItem;
  v9 = [v3 stringWithFormat:@"%@ %p: RecipientHREF: %@, RequestStatus: %@ CalendarData:\n%@ TopLevelErrorItem: %@ ResponseDescription:\n%@\n", v5, self, recipientHREF, payloadAsString, self->_calendarData, topLevelErrorItem, self->_responseDescription];

  return v9;
}

@end