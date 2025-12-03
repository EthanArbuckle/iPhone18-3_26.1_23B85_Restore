@interface CSOverrideNotificationListDisplayStyleAssertion
- (CSOverrideNotificationListDisplayStyleAssertion)initWithNotificationListDisplayStyle:(int64_t)style hideNotificationCount:(BOOL)count reason:(id)reason invalidationHandler:(id)handler;
- (NSString)description;
- (void)dealloc;
- (void)invalidate;
@end

@implementation CSOverrideNotificationListDisplayStyleAssertion

- (CSOverrideNotificationListDisplayStyleAssertion)initWithNotificationListDisplayStyle:(int64_t)style hideNotificationCount:(BOOL)count reason:(id)reason invalidationHandler:(id)handler
{
  v25 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  handlerCopy = handler;
  v13 = handlerCopy;
  if (reasonCopy)
  {
    if (handlerCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [CSOverrideNotificationListDisplayStyleAssertion initWithNotificationListDisplayStyle:a2 hideNotificationCount:self reason:? invalidationHandler:?];
    if (v13)
    {
      goto LABEL_3;
    }
  }

  [CSOverrideNotificationListDisplayStyleAssertion initWithNotificationListDisplayStyle:a2 hideNotificationCount:self reason:? invalidationHandler:?];
LABEL_3:
  v22.receiver = self;
  v22.super_class = CSOverrideNotificationListDisplayStyleAssertion;
  v14 = [(CSOverrideNotificationListDisplayStyleAssertion *)&v22 init];
  v15 = v14;
  if (v14)
  {
    v14->_displayStyle = style;
    v14->_hideNotificationCount = count;
    v16 = [reasonCopy copy];
    reason = v15->_reason;
    v15->_reason = v16;

    v18 = [v13 copy];
    invalidationHandler = v15->_invalidationHandler;
    v15->_invalidationHandler = v18;

    v20 = SBLogDashBoard();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v24 = v15;
      _os_log_impl(&dword_21EB05000, v20, OS_LOG_TYPE_DEFAULT, "Acquired notification list display style override assertion: %{public}@", buf, 0xCu);
    }
  }

  return v15;
}

- (void)dealloc
{
  [(CSOverrideNotificationListDisplayStyleAssertion *)self invalidate];
  v3.receiver = self;
  v3.super_class = CSOverrideNotificationListDisplayStyleAssertion;
  [(CSOverrideNotificationListDisplayStyleAssertion *)&v3 dealloc];
}

- (void)invalidate
{
  v7 = *MEMORY[0x277D85DE8];
  if (self->_invalidationHandler)
  {
    v3 = SBLogDashBoard();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_21EB05000, v3, OS_LOG_TYPE_DEFAULT, "Invalidating notification list display style override assertion: %{public}@", &v5, 0xCu);
    }

    (*(self->_invalidationHandler + 2))();
    invalidationHandler = self->_invalidationHandler;
    self->_invalidationHandler = 0;
  }
}

- (NSString)description
{
  v3 = [MEMORY[0x277D77E68] stringForNotificationListDisplayStyleSetting:self->_displayStyle];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"<%@: %p displayStyle: %@; hideNotificationCount: %d, reason: %@>", objc_opt_class(), self, v3, self->_hideNotificationCount, self->_reason];;

  return v4;
}

- (void)initWithNotificationListDisplayStyle:(uint64_t)a1 hideNotificationCount:(uint64_t)a2 reason:invalidationHandler:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CSOverrideNotificationListDisplayStyleAssertion.m" lineNumber:24 description:{@"Invalid parameter not satisfying: %@", @"reason"}];
}

- (void)initWithNotificationListDisplayStyle:(uint64_t)a1 hideNotificationCount:(uint64_t)a2 reason:invalidationHandler:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CSOverrideNotificationListDisplayStyleAssertion.m" lineNumber:25 description:{@"Invalid parameter not satisfying: %@", @"invalidationHandler"}];
}

@end