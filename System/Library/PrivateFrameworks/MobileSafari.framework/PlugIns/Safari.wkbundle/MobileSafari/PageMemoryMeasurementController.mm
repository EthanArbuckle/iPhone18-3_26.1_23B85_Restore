@interface PageMemoryMeasurementController
- (PageMemoryMeasurementController)initWithPluginPageContextController:(id)controller pagesNeedingMemoryWarningSent:(id)sent;
- (id)_memoryUsage:(BOOL)usage;
- (void)_postPageLoadEnd;
- (void)_waitForMemoryPressureHandlerTimerFired:(id)fired;
@end

@implementation PageMemoryMeasurementController

- (PageMemoryMeasurementController)initWithPluginPageContextController:(id)controller pagesNeedingMemoryWarningSent:(id)sent
{
  sentCopy = sent;
  v12.receiver = self;
  v12.super_class = PageMemoryMeasurementController;
  v8 = [(MeasurementControllerBase *)&v12 initWithPluginPageContextController:controller];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_pagesNeedingMemoryWarningSent, sent);
    v9->_currentPageIndex = -1;
    v10 = v9;
  }

  return v9;
}

- (id)_memoryUsage:(BOOL)usage
{
  usageCopy = usage;
  task_info_outCnt = 93;
  if (task_info(*MEMORY[0x277D85F48], 0x16u, task_info_out, &task_info_outCnt))
  {
    objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x277CCABB0], v4, 0, v5);
  }

  else if (usageCopy)
  {
    objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x277CCABB0], v4, v12, v5);
  }

  else
  {
    objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x277CCABB0], v4, v11 + v10, v5);
  }
  v6 = ;

  return v6;
}

- (void)_postPageLoadEnd
{
  v4 = objc_msgSend_objectForKey_(self->super._loadData, a2, @"PageMemoryBeforeWarning", v2);

  if (!v4)
  {
    v31 = objc_msgSend_objectAtIndex_(self->_pagesNeedingMemoryWarningSent, v5, self->_currentPageIndex, v6);
    v10 = objc_msgSend_BOOLValue(v31, v7, v8, v9);

    if (v10)
    {
      v32 = objc_msgSend__memoryUsage_(self, v11, 1, v13);
      objc_msgSend_setValue_forKey_(self->super._loadData, v14, v32, @"PageMemoryBeforeWarning");
      notify_post("org.WebKit.lowMemory");
      v15 = objc_alloc(MEMORY[0x277CBEBB8]);
      v19 = objc_msgSend_dateWithTimeIntervalSinceNow_(MEMORY[0x277CBEAA8], v16, v17, v18, 2.0);
      v21 = objc_msgSend_initWithFireDate_interval_target_selector_userInfo_repeats_(v15, v20, v19, self, sel__waitForMemoryPressureHandlerTimerFired_, 0, 0, 0.0);
      waitForMemoryPressureHandler = self->_waitForMemoryPressureHandler;
      self->_waitForMemoryPressureHandler = v21;

      v26 = objc_msgSend_currentRunLoop(MEMORY[0x277CBEB88], v23, v24, v25);
      objc_msgSend_addTimer_forMode_(v26, v27, self->_waitForMemoryPressureHandler, *MEMORY[0x277CBE640]);
    }

    else
    {
      objc_msgSend__sendPageLoadFinishedEvent(self, v11, v12, v13);

      objc_msgSend__clearPageLoadState(self, v28, v29, v30);
    }
  }
}

- (void)_waitForMemoryPressureHandlerTimerFired:(id)fired
{
  v12 = objc_msgSend__memoryUsage_(self, a2, 0, v3);
  objc_msgSend_setValue_forKey_(self->super._loadData, v5, v12, @"PageMemoryAfterWarning");
  objc_msgSend__sendPageLoadFinishedEvent(self, v6, v7, v8);
  objc_msgSend__clearPageLoadState(self, v9, v10, v11);
}

@end