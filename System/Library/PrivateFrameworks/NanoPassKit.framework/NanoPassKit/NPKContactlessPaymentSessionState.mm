@interface NPKContactlessPaymentSessionState
+ (id)_timestampDateFormatter;
- (BOOL)_isEqualToSessionState:(id)a3;
- (BOOL)isArmed;
- (BOOL)isEqual:(id)a3;
- (BOOL)isSessionStateValid;
- (double)validityInterval;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)stateForNonModalDisplay;
- (unint64_t)hash;
@end

@implementation NPKContactlessPaymentSessionState

+ (id)_timestampDateFormatter
{
  v2 = _timestampDateFormatter_timestampDateFormatter;
  if (!_timestampDateFormatter_timestampDateFormatter)
  {
    v3 = objc_alloc_init(MEMORY[0x277CCA968]);
    v4 = _timestampDateFormatter_timestampDateFormatter;
    _timestampDateFormatter_timestampDateFormatter = v3;

    v5 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:@"en_US_POSIX"];
    [_timestampDateFormatter_timestampDateFormatter setLocale:v5];

    [_timestampDateFormatter_timestampDateFormatter setDateFormat:@"yyyy-MM-dd' 'HH:mm:ss.SSSSZZZZZ"];
    v2 = _timestampDateFormatter_timestampDateFormatter;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  objc_storeStrong((v4 + 40), self->_uniqueID);
  objc_storeStrong((v4 + 24), self->_timestamp);
  objc_storeStrong((v4 + 32), self->_currentPass);
  *(v4 + 8) = self->_hasSession;
  *(v4 + 48) = self->_sessionType;
  *(v4 + 9) = self->_sessionStarted;
  *(v4 + 10) = self->_sessionWaitingToStart;
  *(v4 + 11) = self->_isSwitchingSessionType;
  *(v4 + 12) = self->_doublePressReceived;
  objc_storeStrong((v4 + 56), self->_doublePressTimestamp);
  *(v4 + 13) = self->_sessionAuthorized;
  *(v4 + 14) = self->_passActivating;
  *(v4 + 15) = self->_contactlessInterfaceReady;
  *(v4 + 16) = self->_canChangePass;
  *(v4 + 17) = self->_inServiceMode;
  *(v4 + 18) = self->_inField;
  objc_storeStrong((v4 + 64), self->_serviceModeRequestedPass);
  *(v4 + 72) = self->_expressTransactionStatus;
  *(v4 + 80) = self->_failureType;
  *(v4 + 88) = self->_completionReason;
  objc_storeStrong((v4 + 96), self->_transactionContext);
  return v4;
}

- (id)description
{
  v3 = [objc_opt_class() _timestampDateFormatter];
  v30 = MEMORY[0x277CCACA8];
  v29 = objc_opt_class();
  v27 = [(NPKContactlessPaymentSessionState *)self uniqueID];
  v32 = [(NPKContactlessPaymentSessionState *)self timestamp];
  v28 = v3;
  v26 = [v3 stringFromDate:v32];
  v31 = [(NPKContactlessPaymentSessionState *)self currentPass];
  v25 = [v31 uniqueID];
  v23 = [(NPKContactlessPaymentSessionState *)self hasSession];
  v33 = NSStringFromNPKQuickPaymentSessionType([(NPKContactlessPaymentSessionState *)self sessionType]);
  v22 = [(NPKContactlessPaymentSessionState *)self sessionStarted];
  v21 = [(NPKContactlessPaymentSessionState *)self sessionWaitingToStart];
  v20 = [(NPKContactlessPaymentSessionState *)self isSwitchingSessionType];
  v18 = [(NPKContactlessPaymentSessionState *)self doublePressReceived];
  v24 = [(NPKContactlessPaymentSessionState *)self doublePressTimestamp];
  v4 = [v3 stringFromDate:v24];
  v17 = [(NPKContactlessPaymentSessionState *)self sessionAuthorized];
  v16 = [(NPKContactlessPaymentSessionState *)self passActivating];
  v15 = [(NPKContactlessPaymentSessionState *)self contactlessInterfaceReady];
  v14 = [(NPKContactlessPaymentSessionState *)self canChangePass];
  v19 = [(NPKContactlessPaymentSessionState *)self serviceModeRequestedPass];
  v5 = [v19 uniqueID];
  v6 = [(NPKContactlessPaymentSessionState *)self inServiceMode];
  v7 = [(NPKContactlessPaymentSessionState *)self inField];
  v8 = NSStringFromNPKExpressTransactionStatus([(NPKContactlessPaymentSessionState *)self expressTransactionStatus]);
  v9 = NSStringFromNPKContactlessPaymentSessionFailureType([(NPKContactlessPaymentSessionState *)self failureType]);
  v10 = NSStringFromNPKQuickPaymentSessionCompletionReason([(NPKContactlessPaymentSessionState *)self completionReason]);
  v11 = [(NPKContactlessPaymentSessionState *)self transactionContext];
  v12 = [v30 stringWithFormat:@"<%@: %p\n\tuniqueID: %@\n\tTimestamp: %@\n\tPass unique ID: %@\n\tHas session: %d\n\tSession type: %@\n\tSession started: %d\n\tSession waiting to start: %d\n\tSwitching session type: %d\n\tDouble-press received: %d\n\tDouble-press timestamp: %@\n\tSession authorized: %d\n\tPass activating: %d\n\tContactless interface ready: %d\n\tCan change pass: %d\n\tService mode requested pass: %@\n\tIn service mode: %d\n\tIn field: %d\n\tExpress status: %@\n\tTransient failure type: %@\n\tCompletion reason: %@\n\tTransaction context: %@\n>", v29, self, v27, v26, v25, v23, v33, v22, v21, v20, v18, v4, v17, v16, v15, v14, v5, v6, v7, v8, v9, v10, v11];

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(NPKContactlessPaymentSessionState *)self _isEqualToSessionState:v5];
  }

  return v6;
}

- (BOOL)_isEqualToSessionState:(id)a3
{
  v4 = a3;
  v5 = [v4 timestamp];
  v6 = [(NPKContactlessPaymentSessionState *)self timestamp];
  if (PKEqualObjects())
  {
    v7 = [v4 currentPass];
    v8 = [(NPKContactlessPaymentSessionState *)self currentPass];
    if (!PKEqualObjects())
    {
      v23 = 0;
LABEL_25:

      goto LABEL_26;
    }

    v9 = [v4 doublePressTimestamp];
    v10 = [(NPKContactlessPaymentSessionState *)self doublePressTimestamp];
    if (!PKEqualObjects())
    {
      v23 = 0;
LABEL_24:

      goto LABEL_25;
    }

    v11 = [v4 serviceModeRequestedPass];
    v12 = [(NPKContactlessPaymentSessionState *)self serviceModeRequestedPass];
    if (!PKEqualObjects())
    {
      v23 = 0;
LABEL_23:

      goto LABEL_24;
    }

    v34 = v12;
    v13 = [v4 transactionContext];
    v32 = [(NPKContactlessPaymentSessionState *)self transactionContext];
    v33 = v13;
    if (PKEqualObjects())
    {
      v31 = v11;
      v14 = [v4 hasSession];
      v12 = v34;
      if (v14 != [(NPKContactlessPaymentSessionState *)self hasSession])
      {
        goto LABEL_15;
      }

      v15 = [v4 sessionStarted];
      if (v15 != -[NPKContactlessPaymentSessionState sessionStarted](self, "sessionStarted") || (v16 = [v4 sessionWaitingToStart], v16 != -[NPKContactlessPaymentSessionState sessionWaitingToStart](self, "sessionWaitingToStart")) || (v17 = objc_msgSend(v4, "isSwitchingSessionType"), v17 != -[NPKContactlessPaymentSessionState isSwitchingSessionType](self, "isSwitchingSessionType")) || (v18 = objc_msgSend(v4, "doublePressReceived"), v18 != -[NPKContactlessPaymentSessionState doublePressReceived](self, "doublePressReceived")) || (v19 = objc_msgSend(v4, "sessionAuthorized"), v19 != -[NPKContactlessPaymentSessionState sessionAuthorized](self, "sessionAuthorized")) || (v20 = objc_msgSend(v4, "passActivating"), v20 != -[NPKContactlessPaymentSessionState passActivating](self, "passActivating")) || (v21 = objc_msgSend(v4, "contactlessInterfaceReady"), v21 != -[NPKContactlessPaymentSessionState contactlessInterfaceReady](self, "contactlessInterfaceReady")) || (v22 = objc_msgSend(v4, "canChangePass"), v22 != -[NPKContactlessPaymentSessionState canChangePass](self, "canChangePass")))
      {
LABEL_15:
        v23 = 0;
        v11 = v31;
LABEL_22:

        goto LABEL_23;
      }

      v25 = [v4 inServiceMode];
      if (v25 == -[NPKContactlessPaymentSessionState inServiceMode](self, "inServiceMode") && (v26 = [v4 inField], v26 == -[NPKContactlessPaymentSessionState inField](self, "inField")) && (v27 = objc_msgSend(v4, "sessionType"), v27 == -[NPKContactlessPaymentSessionState sessionType](self, "sessionType")) && (v28 = objc_msgSend(v4, "expressTransactionStatus"), v28 == -[NPKContactlessPaymentSessionState expressTransactionStatus](self, "expressTransactionStatus")) && (v29 = objc_msgSend(v4, "failureType"), v29 == -[NPKContactlessPaymentSessionState failureType](self, "failureType")))
      {
        v30 = [v4 completionReason];
        v23 = v30 == [(NPKContactlessPaymentSessionState *)self completionReason];
      }

      else
      {
        v23 = 0;
      }

      v11 = v31;
    }

    else
    {
      v23 = 0;
    }

    v12 = v34;
    goto LABEL_22;
  }

  v23 = 0;
LABEL_26:

  return v23;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = [(NPKContactlessPaymentSessionState *)self timestamp];
  [v3 safelyAddObject:v4];

  v5 = [(NPKContactlessPaymentSessionState *)self currentPass];
  [v3 safelyAddObject:v5];

  v6 = [(NPKContactlessPaymentSessionState *)self doublePressTimestamp];
  [v3 safelyAddObject:v6];

  v7 = [(NPKContactlessPaymentSessionState *)self serviceModeRequestedPass];
  [v3 safelyAddObject:v7];

  v8 = [(NPKContactlessPaymentSessionState *)self transactionContext];
  [v3 safelyAddObject:v8];

  v9 = *MEMORY[0x277D38638];
  PKCombinedHash();
  [(NPKContactlessPaymentSessionState *)self hasSession];
  PKIntegerHash();
  [(NPKContactlessPaymentSessionState *)self sessionStarted];
  PKIntegerHash();
  [(NPKContactlessPaymentSessionState *)self sessionWaitingToStart];
  PKIntegerHash();
  [(NPKContactlessPaymentSessionState *)self isSwitchingSessionType];
  PKIntegerHash();
  [(NPKContactlessPaymentSessionState *)self doublePressReceived];
  PKIntegerHash();
  [(NPKContactlessPaymentSessionState *)self sessionAuthorized];
  PKIntegerHash();
  [(NPKContactlessPaymentSessionState *)self passActivating];
  PKIntegerHash();
  [(NPKContactlessPaymentSessionState *)self contactlessInterfaceReady];
  PKIntegerHash();
  [(NPKContactlessPaymentSessionState *)self canChangePass];
  PKIntegerHash();
  [(NPKContactlessPaymentSessionState *)self inServiceMode];
  PKIntegerHash();
  [(NPKContactlessPaymentSessionState *)self inField];
  PKIntegerHash();
  [(NPKContactlessPaymentSessionState *)self sessionType];
  PKIntegerHash();
  [(NPKContactlessPaymentSessionState *)self expressTransactionStatus];
  PKIntegerHash();
  [(NPKContactlessPaymentSessionState *)self failureType];
  PKIntegerHash();
  [(NPKContactlessPaymentSessionState *)self completionReason];
  v10 = PKIntegerHash();

  return v10;
}

- (id)stateForNonModalDisplay
{
  v2 = [(NPKContactlessPaymentSessionState *)self copy];
  [v2 setTransactionContext:0];
  [v2 setFailureType:0];

  return v2;
}

- (BOOL)isSessionStateValid
{
  v2 = self;
  v3 = [(NPKContactlessPaymentSessionState *)self timestamp];
  [v3 timeIntervalSinceNow];
  v5 = fabs(v4);
  [(NPKContactlessPaymentSessionState *)v2 validityInterval];
  LOBYTE(v2) = v5 < v6;

  return v2;
}

- (double)validityInterval
{
  v3 = [(NPKContactlessPaymentSessionState *)self transactionContext];
  if ([v3 transactionStatus] == 2)
  {

    return 5.0;
  }

  else
  {
    v5 = [(NPKContactlessPaymentSessionState *)self completionReason];

    result = 5.0;
    if (!v5)
    {
      v6 = [(NPKContactlessPaymentSessionState *)self failureType];
      result = 3.0;
      if (!v6)
      {
        v7 = [(NPKContactlessPaymentSessionState *)self transactionContext];
        v8 = [v7 transactionStatus];

        result = 60.0;
        if (v8 != 1)
        {
          return 0.0;
        }
      }
    }
  }

  return result;
}

- (BOOL)isArmed
{
  if (![(NPKContactlessPaymentSessionState *)self contactlessInterfaceReady]|| ![(NPKContactlessPaymentSessionState *)self sessionAuthorized])
  {
    return 0;
  }

  return [(NPKContactlessPaymentSessionState *)self doublePressReceived];
}

@end