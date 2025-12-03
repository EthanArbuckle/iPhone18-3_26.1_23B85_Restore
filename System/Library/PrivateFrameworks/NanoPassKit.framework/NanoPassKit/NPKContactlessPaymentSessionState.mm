@interface NPKContactlessPaymentSessionState
+ (id)_timestampDateFormatter;
- (BOOL)_isEqualToSessionState:(id)state;
- (BOOL)isArmed;
- (BOOL)isEqual:(id)equal;
- (BOOL)isSessionStateValid;
- (double)validityInterval;
- (id)copyWithZone:(_NSZone *)zone;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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
  _timestampDateFormatter = [objc_opt_class() _timestampDateFormatter];
  v30 = MEMORY[0x277CCACA8];
  v29 = objc_opt_class();
  uniqueID = [(NPKContactlessPaymentSessionState *)self uniqueID];
  timestamp = [(NPKContactlessPaymentSessionState *)self timestamp];
  v28 = _timestampDateFormatter;
  v26 = [_timestampDateFormatter stringFromDate:timestamp];
  currentPass = [(NPKContactlessPaymentSessionState *)self currentPass];
  uniqueID2 = [currentPass uniqueID];
  hasSession = [(NPKContactlessPaymentSessionState *)self hasSession];
  v33 = NSStringFromNPKQuickPaymentSessionType([(NPKContactlessPaymentSessionState *)self sessionType]);
  sessionStarted = [(NPKContactlessPaymentSessionState *)self sessionStarted];
  sessionWaitingToStart = [(NPKContactlessPaymentSessionState *)self sessionWaitingToStart];
  isSwitchingSessionType = [(NPKContactlessPaymentSessionState *)self isSwitchingSessionType];
  doublePressReceived = [(NPKContactlessPaymentSessionState *)self doublePressReceived];
  doublePressTimestamp = [(NPKContactlessPaymentSessionState *)self doublePressTimestamp];
  v4 = [_timestampDateFormatter stringFromDate:doublePressTimestamp];
  sessionAuthorized = [(NPKContactlessPaymentSessionState *)self sessionAuthorized];
  passActivating = [(NPKContactlessPaymentSessionState *)self passActivating];
  contactlessInterfaceReady = [(NPKContactlessPaymentSessionState *)self contactlessInterfaceReady];
  canChangePass = [(NPKContactlessPaymentSessionState *)self canChangePass];
  serviceModeRequestedPass = [(NPKContactlessPaymentSessionState *)self serviceModeRequestedPass];
  uniqueID3 = [serviceModeRequestedPass uniqueID];
  inServiceMode = [(NPKContactlessPaymentSessionState *)self inServiceMode];
  inField = [(NPKContactlessPaymentSessionState *)self inField];
  v8 = NSStringFromNPKExpressTransactionStatus([(NPKContactlessPaymentSessionState *)self expressTransactionStatus]);
  v9 = NSStringFromNPKContactlessPaymentSessionFailureType([(NPKContactlessPaymentSessionState *)self failureType]);
  v10 = NSStringFromNPKQuickPaymentSessionCompletionReason([(NPKContactlessPaymentSessionState *)self completionReason]);
  transactionContext = [(NPKContactlessPaymentSessionState *)self transactionContext];
  v12 = [v30 stringWithFormat:@"<%@: %p\n\tuniqueID: %@\n\tTimestamp: %@\n\tPass unique ID: %@\n\tHas session: %d\n\tSession type: %@\n\tSession started: %d\n\tSession waiting to start: %d\n\tSwitching session type: %d\n\tDouble-press received: %d\n\tDouble-press timestamp: %@\n\tSession authorized: %d\n\tPass activating: %d\n\tContactless interface ready: %d\n\tCan change pass: %d\n\tService mode requested pass: %@\n\tIn service mode: %d\n\tIn field: %d\n\tExpress status: %@\n\tTransient failure type: %@\n\tCompletion reason: %@\n\tTransaction context: %@\n>", v29, self, uniqueID, v26, uniqueID2, hasSession, v33, sessionStarted, sessionWaitingToStart, isSwitchingSessionType, doublePressReceived, v4, sessionAuthorized, passActivating, contactlessInterfaceReady, canChangePass, uniqueID3, inServiceMode, inField, v8, v9, v10, transactionContext];

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(NPKContactlessPaymentSessionState *)self _isEqualToSessionState:v5];
  }

  return v6;
}

- (BOOL)_isEqualToSessionState:(id)state
{
  stateCopy = state;
  timestamp = [stateCopy timestamp];
  timestamp2 = [(NPKContactlessPaymentSessionState *)self timestamp];
  if (PKEqualObjects())
  {
    currentPass = [stateCopy currentPass];
    currentPass2 = [(NPKContactlessPaymentSessionState *)self currentPass];
    if (!PKEqualObjects())
    {
      v23 = 0;
LABEL_25:

      goto LABEL_26;
    }

    doublePressTimestamp = [stateCopy doublePressTimestamp];
    doublePressTimestamp2 = [(NPKContactlessPaymentSessionState *)self doublePressTimestamp];
    if (!PKEqualObjects())
    {
      v23 = 0;
LABEL_24:

      goto LABEL_25;
    }

    serviceModeRequestedPass = [stateCopy serviceModeRequestedPass];
    serviceModeRequestedPass2 = [(NPKContactlessPaymentSessionState *)self serviceModeRequestedPass];
    if (!PKEqualObjects())
    {
      v23 = 0;
LABEL_23:

      goto LABEL_24;
    }

    v34 = serviceModeRequestedPass2;
    transactionContext = [stateCopy transactionContext];
    transactionContext2 = [(NPKContactlessPaymentSessionState *)self transactionContext];
    v33 = transactionContext;
    if (PKEqualObjects())
    {
      v31 = serviceModeRequestedPass;
      hasSession = [stateCopy hasSession];
      serviceModeRequestedPass2 = v34;
      if (hasSession != [(NPKContactlessPaymentSessionState *)self hasSession])
      {
        goto LABEL_15;
      }

      sessionStarted = [stateCopy sessionStarted];
      if (sessionStarted != -[NPKContactlessPaymentSessionState sessionStarted](self, "sessionStarted") || (v16 = [stateCopy sessionWaitingToStart], v16 != -[NPKContactlessPaymentSessionState sessionWaitingToStart](self, "sessionWaitingToStart")) || (v17 = objc_msgSend(stateCopy, "isSwitchingSessionType"), v17 != -[NPKContactlessPaymentSessionState isSwitchingSessionType](self, "isSwitchingSessionType")) || (v18 = objc_msgSend(stateCopy, "doublePressReceived"), v18 != -[NPKContactlessPaymentSessionState doublePressReceived](self, "doublePressReceived")) || (v19 = objc_msgSend(stateCopy, "sessionAuthorized"), v19 != -[NPKContactlessPaymentSessionState sessionAuthorized](self, "sessionAuthorized")) || (v20 = objc_msgSend(stateCopy, "passActivating"), v20 != -[NPKContactlessPaymentSessionState passActivating](self, "passActivating")) || (v21 = objc_msgSend(stateCopy, "contactlessInterfaceReady"), v21 != -[NPKContactlessPaymentSessionState contactlessInterfaceReady](self, "contactlessInterfaceReady")) || (v22 = objc_msgSend(stateCopy, "canChangePass"), v22 != -[NPKContactlessPaymentSessionState canChangePass](self, "canChangePass")))
      {
LABEL_15:
        v23 = 0;
        serviceModeRequestedPass = v31;
LABEL_22:

        goto LABEL_23;
      }

      inServiceMode = [stateCopy inServiceMode];
      if (inServiceMode == -[NPKContactlessPaymentSessionState inServiceMode](self, "inServiceMode") && (v26 = [stateCopy inField], v26 == -[NPKContactlessPaymentSessionState inField](self, "inField")) && (v27 = objc_msgSend(stateCopy, "sessionType"), v27 == -[NPKContactlessPaymentSessionState sessionType](self, "sessionType")) && (v28 = objc_msgSend(stateCopy, "expressTransactionStatus"), v28 == -[NPKContactlessPaymentSessionState expressTransactionStatus](self, "expressTransactionStatus")) && (v29 = objc_msgSend(stateCopy, "failureType"), v29 == -[NPKContactlessPaymentSessionState failureType](self, "failureType")))
      {
        completionReason = [stateCopy completionReason];
        v23 = completionReason == [(NPKContactlessPaymentSessionState *)self completionReason];
      }

      else
      {
        v23 = 0;
      }

      serviceModeRequestedPass = v31;
    }

    else
    {
      v23 = 0;
    }

    serviceModeRequestedPass2 = v34;
    goto LABEL_22;
  }

  v23 = 0;
LABEL_26:

  return v23;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  timestamp = [(NPKContactlessPaymentSessionState *)self timestamp];
  [v3 safelyAddObject:timestamp];

  currentPass = [(NPKContactlessPaymentSessionState *)self currentPass];
  [v3 safelyAddObject:currentPass];

  doublePressTimestamp = [(NPKContactlessPaymentSessionState *)self doublePressTimestamp];
  [v3 safelyAddObject:doublePressTimestamp];

  serviceModeRequestedPass = [(NPKContactlessPaymentSessionState *)self serviceModeRequestedPass];
  [v3 safelyAddObject:serviceModeRequestedPass];

  transactionContext = [(NPKContactlessPaymentSessionState *)self transactionContext];
  [v3 safelyAddObject:transactionContext];

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
  selfCopy = self;
  timestamp = [(NPKContactlessPaymentSessionState *)self timestamp];
  [timestamp timeIntervalSinceNow];
  v5 = fabs(v4);
  [(NPKContactlessPaymentSessionState *)selfCopy validityInterval];
  LOBYTE(selfCopy) = v5 < v6;

  return selfCopy;
}

- (double)validityInterval
{
  transactionContext = [(NPKContactlessPaymentSessionState *)self transactionContext];
  if ([transactionContext transactionStatus] == 2)
  {

    return 5.0;
  }

  else
  {
    completionReason = [(NPKContactlessPaymentSessionState *)self completionReason];

    result = 5.0;
    if (!completionReason)
    {
      failureType = [(NPKContactlessPaymentSessionState *)self failureType];
      result = 3.0;
      if (!failureType)
      {
        transactionContext2 = [(NPKContactlessPaymentSessionState *)self transactionContext];
        transactionStatus = [transactionContext2 transactionStatus];

        result = 60.0;
        if (transactionStatus != 1)
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