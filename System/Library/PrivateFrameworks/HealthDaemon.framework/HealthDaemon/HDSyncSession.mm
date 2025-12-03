@interface HDSyncSession
- (BOOL)transactionDidEndWithError:(id *)error;
- (HDSyncPredicate)syncPredicate;
- (HDSyncSession)init;
- (HDSyncSession)initWithSyncStore:(id)store reason:(id)reason delegate:(id)delegate;
- (HDSyncSessionDelegate)delegate;
- (id)description;
- (id)excludedSyncStores;
- (id)newChangeWithSyncEntityClass:(Class)class version:(id)version;
- (int64_t)maxEncodedBytesPerChangeSetForSyncEntityClass:(Class)class;
- (int64_t)maxEncodedBytesPerCodableChangeForSyncEntityClass:(Class)class;
- (void)sendChanges:(id)changes completion:(id)completion;
- (void)syncWillBegin;
- (void)willSyncAnchorRanges:(id)ranges;
@end

@implementation HDSyncSession

- (void)syncWillBegin
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained syncSessionWillBegin:self];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  uUIDString = [(NSUUID *)self->_sessionUUID UUIDString];
  v6 = [v3 stringWithFormat:@"<%@:%p uuid:%@ reason:%@>", v4, self, uUIDString, self->_reason];

  return v6;
}

- (id)excludedSyncStores
{
  v2 = MEMORY[0x277CBEB98];
  syncStore = [(HDSyncSession *)self syncStore];
  v4 = [v2 setWithObject:syncStore];

  return v4;
}

- (HDSyncSession)initWithSyncStore:(id)store reason:(id)reason delegate:(id)delegate
{
  storeCopy = store;
  reasonCopy = reason;
  delegateCopy = delegate;
  if (!storeCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDSyncSession.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"syncStore != nil"}];
  }

  v29.receiver = self;
  v29.super_class = HDSyncSession;
  v13 = [(HDSyncSession *)&v29 init];
  v14 = v13;
  if (v13)
  {
    objc_storeWeak(&v13->_delegate, delegateCopy);
    objc_storeStrong(&v14->_syncStore, store);
    uUID = [MEMORY[0x277CCAD78] UUID];
    sessionUUID = v14->_sessionUUID;
    v14->_sessionUUID = uUID;

    uUIDString = [(NSUUID *)v14->_sessionUUID UUIDString];
    v18 = [uUIDString substringToIndex:4];
    shortSessionIdentifier = v14->_shortSessionIdentifier;
    v14->_shortSessionIdentifier = v18;

    date = [MEMORY[0x277CBEAA8] date];
    startDate = v14->_startDate;
    v14->_startDate = date;

    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    calendar = v14->_calendar;
    v14->_calendar = currentCalendar;

    v24 = [reasonCopy copy];
    reason = v14->_reason;
    v14->_reason = v24;

    databaseAccessibilityAssertion = v14->_databaseAccessibilityAssertion;
    v14->_databaseAccessibilityAssertion = 0;
    v14->_databaseAccessibilityTimeout = 30.0;
  }

  return v14;
}

- (HDSyncSession)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HDSyncPredicate)syncPredicate
{
  v3 = [HDSyncPredicate alloc];
  v4 = MEMORY[0x277CBEB98];
  v5 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[HDSyncStore syncProvenance](self->_syncStore, "syncProvenance")}];
  v6 = [v4 setWithObject:v5];
  v7 = [(HDSyncPredicate *)v3 initWithExcludedSyncProvenances:v6 dateInterval:0 shouldIncludeDatelessObjects:0 includedObjectTypes:0 defaultMaximumObjectAge:0 defaultMaximumTombstoneAge:0 maximumObjectAgeByType:0];

  return v7;
}

- (void)willSyncAnchorRanges:(id)ranges
{
  rangesCopy = ranges;
  objc_copyWeak(&to, &self->_delegate);
  v5 = objc_loadWeakRetained(&to);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&to);
    [v7 syncSession:self willSyncAnchorRanges:rangesCopy];
  }

  objc_destroyWeak(&to);
}

- (void)sendChanges:(id)changes completion:(id)completion
{
  completionCopy = completion;
  changesCopy = changes;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained syncSession:self sendChanges:changesCopy completion:completionCopy];
}

- (BOOL)transactionDidEndWithError:(id *)error
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = objc_loadWeakRetained(&self->_delegate);
    v9 = [v8 syncSession:self didEndTransactionWithError:error];
  }

  else
  {
    v10 = MEMORY[0x277CCA9B8];
    v11 = objc_opt_class();
    v8 = objc_loadWeakRetained(&self->_delegate);
    v12 = NSStringFromSelector(sel_syncSession_didEndTransactionWithError_);
    v13 = [v10 hk_errorForInvalidArgument:@"@" class:v11 selector:a2 format:{@"%@ does not respond to selector %@", v8, v12}];
    if (v13)
    {
      if (error)
      {
        v14 = v13;
        *error = v13;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v9 = 0;
  }

  return v9;
}

- (id)newChangeWithSyncEntityClass:(Class)class version:(id)version
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

- (int64_t)maxEncodedBytesPerCodableChangeForSyncEntityClass:(Class)class
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0x7FFFFFFFFFFFFFFFLL;
}

- (int64_t)maxEncodedBytesPerChangeSetForSyncEntityClass:(Class)class
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0x7FFFFFFFFFFFFFFFLL;
}

- (HDSyncSessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end