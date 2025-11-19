@interface PageLoadTestMeasurementController
- (void)_doAfterPageLoad;
- (void)_doBeforePageLoad;
@end

@implementation PageLoadTestMeasurementController

- (void)_doBeforePageLoad
{
  v5 = MEMORY[0x277CCABB0];
  v6 = objc_msgSend_date(MEMORY[0x277CBEAA8], a2, v2, v3);
  objc_msgSend_timeIntervalSinceReferenceDate(v6, v7, v8, v9);
  v14 = objc_msgSend_numberWithDouble_(v5, v10, v11, v12);

  objc_msgSend_setValue_forKey_(self->super._loadData, v13, v14, @"PageLoadStartTime");
}

- (void)_doAfterPageLoad
{
  v5 = MEMORY[0x277CCABB0];
  v6 = objc_msgSend_date(MEMORY[0x277CBEAA8], a2, v2, v3);
  objc_msgSend_timeIntervalSinceReferenceDate(v6, v7, v8, v9);
  v14 = objc_msgSend_numberWithDouble_(v5, v10, v11, v12);

  objc_msgSend_setValue_forKey_(self->super._loadData, v13, v14, @"PageLoadEndTime");
}

@end