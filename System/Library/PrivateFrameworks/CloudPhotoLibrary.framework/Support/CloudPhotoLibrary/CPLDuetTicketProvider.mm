@interface CPLDuetTicketProvider
+ (CPLDuetTicketProvider)sharedDuetTicketProvider;
- (BOOL)_BOOLValueForDuetKeyPath:(id)path;
- (BOOL)hasSignificantWork;
- (BOOL)isBlocked;
- (CPLDuetTicketProvider)initWithClientBundlerIdentifier:(id)identifier;
- (id)_unBlockedReasonStatus;
- (id)duetStatuses;
- (unint64_t)_unBlockedReason;
- (void)_setupCallbacks;
- (void)getSystemBudgetsWithCompletionHandler:(id)handler;
- (void)overrideHasSignificantWork:(BOOL)work;
- (void)popSignificantWorkIsPending;
- (void)pushSignificantWorkIsPending;
- (void)setShouldOverride:(BOOL)override forSystemBudgets:(unint64_t)budgets;
@end

@implementation CPLDuetTicketProvider

+ (CPLDuetTicketProvider)sharedDuetTicketProvider
{
  if (qword_1002C5370 != -1)
  {
    sub_1001A4078();
  }

  v3 = qword_1002C5368;

  return v3;
}

- (CPLDuetTicketProvider)initWithClientBundlerIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v15.receiver = self;
  v15.super_class = CPLDuetTicketProvider;
  v5 = [(CPLDuetTicketProvider *)&v15 init];
  if (v5)
  {
    v6 = dispatch_queue_create("com.apple.cpl.cloudkit.duet", 0);
    duetQueue = v5->_duetQueue;
    v5->_duetQueue = v6;

    v8 = [identifierCopy copy];
    clientBundlerIdentifier = v5->_clientBundlerIdentifier;
    v5->_clientBundlerIdentifier = v8;

    v10 = objc_alloc_init(NSMutableSet);
    budgetDelegates = v5->_budgetDelegates;
    v5->_budgetDelegates = v10;

    v12 = +[_CDClientContext userContext];
    duetOverrideContext = v5->_duetOverrideContext;
    v5->_duetOverrideContext = v12;

    if ([identifierCopy isEqualToString:@"com.apple.mobileslideshow"])
    {
      [(CPLDuetTicketProvider *)v5 _setupCallbacks];
    }
  }

  return v5;
}

- (void)pushSignificantWorkIsPending
{
  duetQueue = self->_duetQueue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10006D728;
  v6[3] = &unk_100271F40;
  v6[4] = self;
  v3 = v6;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002A88;
  block[3] = &unk_100271E98;
  v8 = v3;
  v4 = duetQueue;
  v5 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v4, v5);
}

- (void)popSignificantWorkIsPending
{
  duetQueue = self->_duetQueue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10006D824;
  v6[3] = &unk_100271F40;
  v6[4] = self;
  v3 = v6;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002A88;
  block[3] = &unk_100271E98;
  v8 = v3;
  v4 = duetQueue;
  v5 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v4, v5);
}

- (void)getSystemBudgetsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  duetQueue = self->_duetQueue;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10006D948;
  v10[3] = &unk_1002723C8;
  v10[4] = self;
  v11 = handlerCopy;
  v6 = v10;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002A88;
  block[3] = &unk_100271E98;
  v13 = v6;
  v7 = duetQueue;
  v8 = handlerCopy;
  v9 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v7, v9);
}

- (BOOL)_BOOLValueForDuetKeyPath:(id)path
{
  v3 = [(_CDClientContext *)self->_duetOverrideContext objectForKeyedSubscript:path];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (unint64_t)_unBlockedReason
{
  duetOverrideContext = self->_duetOverrideContext;
  _isUnBlockedKeyPath = [(CPLDuetTicketProvider *)self _isUnBlockedKeyPath];
  v4 = [(_CDClientContext *)duetOverrideContext objectForKeyedSubscript:_isUnBlockedKeyPath];
  integerValue = [v4 integerValue];

  return integerValue;
}

- (id)_unBlockedReasonStatus
{
  v3 = objc_alloc_init(NSMutableArray);
  _unBlockedReason = [(CPLDuetTicketProvider *)self _unBlockedReason];
  v5 = _unBlockedReason;
  if (_unBlockedReason)
  {
    [v3 addObject:@"DAS"];
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((_unBlockedReason & 2) == 0)
  {
    goto LABEL_3;
  }

  [v3 addObject:@"override"];
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_10:
  [v3 addObject:@"remoteDeviceIntent"];
  if ((v5 & 8) != 0)
  {
LABEL_5:
    [v3 addObject:@"doItNow"];
  }

LABEL_6:
  if ([v3 count])
  {
    v6 = [NSString alloc];
    v7 = [v3 componentsJoinedByString:@" "];
    v8 = [v6 initWithFormat:@"(%@)", v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)duetStatuses
{
  v4 = objc_alloc_init(NSMutableArray);
  if ([(NSString *)self->_clientBundlerIdentifier isEqualToString:@"com.apple.mobileslideshow"])
  {
    v5 = [NSString alloc];
    _significantWorkKeyPath = [(CPLDuetTicketProvider *)self _significantWorkKeyPath];
    hasSignificantWork = [(CPLDuetTicketProvider *)self hasSignificantWork];
    v8 = @"NO";
    v9 = @"YES";
    if (!hasSignificantWork)
    {
      v9 = @"NO";
    }

    v10 = [v5 initWithFormat:@"%@ = %@", _significantWorkKeyPath, v9];
    [v4 addObject:v10];

    v11 = [NSString alloc];
    _isBlockedKeyPath = [(CPLDuetTicketProvider *)self _isBlockedKeyPath];
    isBlocked = [(CPLDuetTicketProvider *)self isBlocked];
    if (isBlocked)
    {
      _blockedReasonStatus = [(CPLDuetTicketProvider *)self _blockedReasonStatus];
      v8 = [NSString stringWithFormat:@"YES %@", _blockedReasonStatus];
    }

    v14 = [v11 initWithFormat:@"%@ = %@", _isBlockedKeyPath, v8];
    [v4 addObject:v14];

    if (isBlocked)
    {
    }

    _unBlockedReasonStatus = [(CPLDuetTicketProvider *)self _unBlockedReasonStatus];
    if (_unBlockedReasonStatus)
    {
      v16 = [NSString alloc];
      _isUnBlockedKeyPath = [(CPLDuetTicketProvider *)self _isUnBlockedKeyPath];
      v18 = [v16 initWithFormat:@"%@ = %@", _isUnBlockedKeyPath, _unBlockedReasonStatus];
      [v4 addObject:v18];
    }

    duetOverrideContext = self->_duetOverrideContext;
    _budgetOverrideKeyPath = [(CPLDuetTicketProvider *)self _budgetOverrideKeyPath];
    v21 = [(_CDClientContext *)duetOverrideContext objectForKeyedSubscript:_budgetOverrideKeyPath];

    if (v21 && [v21 integerValue])
    {
      v22 = [NSString alloc];
      v23 = +[CPLEngineSystemMonitor descriptionForBudgets:](CPLEngineSystemMonitor, "descriptionForBudgets:", [v21 integerValue]);
      v24 = [v22 initWithFormat:@"%@ (%@)", v23, v21];
    }

    else
    {
      v24 = @"none";
    }

    v25 = [NSString alloc];
    _budgetOverrideKeyPath2 = [(CPLDuetTicketProvider *)self _budgetOverrideKeyPath];
    v27 = [v25 initWithFormat:@"%@ = %@", _budgetOverrideKeyPath2, v24];
    [v4 addObject:v27];
  }

  return v4;
}

- (void)_setupCallbacks
{
  _isBlockedKeyPath = [(CPLDuetTicketProvider *)self _isBlockedKeyPath];
  v4 = [_CDContextualPredicate predicateForChangeAtKeyPath:_isBlockedKeyPath];

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001A3C60;
  v7[3] = &unk_1002729C0;
  v7[4] = self;
  v5 = objc_retainBlock(v7);
  v6 = [_CDContextualChangeRegistration localWakingRegistrationWithIdentifier:@"com.apple.photos.isBlockedRegistration" contextualPredicate:v4 callback:v5];
  [(_CDClientContext *)self->_duetOverrideContext registerCallback:v6];
}

- (BOOL)isBlocked
{
  selfCopy = self;
  _isBlockedKeyPath = [(CPLDuetTicketProvider *)self _isBlockedKeyPath];
  LOBYTE(selfCopy) = [(CPLDuetTicketProvider *)selfCopy _BOOLValueForDuetKeyPath:_isBlockedKeyPath];

  return selfCopy;
}

- (BOOL)hasSignificantWork
{
  selfCopy = self;
  _significantWorkKeyPath = [(CPLDuetTicketProvider *)self _significantWorkKeyPath];
  LOBYTE(selfCopy) = [(CPLDuetTicketProvider *)selfCopy _BOOLValueForDuetKeyPath:_significantWorkKeyPath];

  return selfCopy;
}

- (void)overrideHasSignificantWork:(BOOL)work
{
  significantWorkRetainCount = self->_significantWorkRetainCount;
  if (work)
  {
    if (!significantWorkRetainCount)
    {
      duetOverrideContext = self->_duetOverrideContext;
      _significantWorkKeyPath = [(CPLDuetTicketProvider *)self _significantWorkKeyPath];
      [(_CDClientContext *)duetOverrideContext setObject:&__kCFBooleanTrue forKeyedSubscript:_significantWorkKeyPath];

      significantWorkRetainCount = self->_significantWorkRetainCount;
    }

    self->_significantWorkRetainCount = significantWorkRetainCount + 1;
  }

  else if (significantWorkRetainCount)
  {
    v7 = significantWorkRetainCount - 1;
    self->_significantWorkRetainCount = v7;
    if (!v7)
    {
      v8 = self->_duetOverrideContext;
      _significantWorkKeyPath2 = [(CPLDuetTicketProvider *)self _significantWorkKeyPath];
      [(_CDClientContext *)v8 setObject:&__kCFBooleanFalse forKeyedSubscript:_significantWorkKeyPath2];
    }
  }
}

- (void)setShouldOverride:(BOOL)override forSystemBudgets:(unint64_t)budgets
{
  overrideCopy = override;
  duetOverrideContext = self->_duetOverrideContext;
  _budgetOverrideKeyPath = [(CPLDuetTicketProvider *)self _budgetOverrideKeyPath];
  v9 = [(_CDClientContext *)duetOverrideContext objectForKeyedSubscript:_budgetOverrideKeyPath];
  unsignedIntegerValue = [v9 unsignedIntegerValue];

  if (overrideCopy)
  {
    v11 = unsignedIntegerValue | budgets;
  }

  else
  {
    v11 = unsignedIntegerValue & ~budgets;
  }

  if (v11 == unsignedIntegerValue)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v12 = sub_10006E74C();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [CPLEngineSystemMonitor descriptionForBudgets:unsignedIntegerValue];
        v20 = 138412290;
        v21 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Overriding system budgets is kept at %@", &v20, 0xCu);
      }
    }
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v14 = sub_10006E74C();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [CPLEngineSystemMonitor descriptionForBudgets:unsignedIntegerValue];
        v16 = [CPLEngineSystemMonitor descriptionForBudgets:v11];
        v20 = 138412546;
        v21 = v15;
        v22 = 2112;
        v23 = v16;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Overriding system budgets changed from (%@) to (%@)", &v20, 0x16u);
      }
    }

    v17 = [NSNumber numberWithUnsignedInteger:v11];
    v18 = self->_duetOverrideContext;
    _budgetOverrideKeyPath2 = [(CPLDuetTicketProvider *)self _budgetOverrideKeyPath];
    [(_CDClientContext *)v18 setObject:v17 forKeyedSubscript:_budgetOverrideKeyPath2];

    [(NSMutableSet *)self->_budgetDelegates enumerateObjectsUsingBlock:&stru_100275560];
  }
}

@end