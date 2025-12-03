@interface NPKPassSyncServiceSyncStatus
- (BOOL)shouldSyncWithCurrentIncomingChange:(id)change currentOutgoingChange:(id)outgoingChange currentDate:(id)date;
- (void)reset;
@end

@implementation NPKPassSyncServiceSyncStatus

- (BOOL)shouldSyncWithCurrentIncomingChange:(id)change currentOutgoingChange:(id)outgoingChange currentDate:(id)date
{
  v45 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  outgoingChangeCopy = outgoingChange;
  dateCopy = date;
  v12 = pk_Sync_log();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);

  if (v13)
  {
    v14 = pk_Sync_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      lastKnownIncomingChange = self->_lastKnownIncomingChange;
      incomingChangeDate = self->_incomingChangeDate;
      lastKnownOutgoingChange = self->_lastKnownOutgoingChange;
      outgoingChangeDate = self->_outgoingChangeDate;
      v34 = 138413570;
      *v35 = changeCopy;
      *&v35[8] = 2112;
      v36 = lastKnownIncomingChange;
      v37 = 2112;
      v38 = incomingChangeDate;
      v39 = 2112;
      v40 = outgoingChangeCopy;
      v41 = 2112;
      v42 = lastKnownOutgoingChange;
      v43 = 2112;
      v44 = outgoingChangeDate;
      _os_log_impl(&dword_25B300000, v14, OS_LOG_TYPE_DEFAULT, "Notice: Pass sync service: Evaluating whether to sync now\n\tCurrent incoming change: %@\n\tPrevious incoming change: %@\n\tPrevious incoming change date: %@\n\tCurrent outgoing change: %@\n\tPrevious outgoing change: %@\n\tPrevious outgoing change date: %@", &v34, 0x3Eu);
    }
  }

  v19 = self->_lastKnownIncomingChange;
  if (!changeCopy)
  {
    self->_lastKnownIncomingChange = 0;

    v22 = self->_incomingChangeDate;
    self->_incomingChangeDate = 0;

    goto LABEL_11;
  }

  if (PKEqualObjects())
  {
    v20 = self->_incomingChangeDate;
    if (v20)
    {
      [(NSDate *)v20 timeIntervalSinceDate:dateCopy];
      if (fabs(v21) < 60.0)
      {
        goto LABEL_13;
      }
    }

LABEL_11:
    v23 = 1;
    goto LABEL_14;
  }

  objc_storeStrong(&self->_lastKnownIncomingChange, change);
  objc_storeStrong(&self->_incomingChangeDate, date);
LABEL_13:
  v23 = 0;
LABEL_14:
  v24 = self->_lastKnownOutgoingChange;
  if (!outgoingChangeCopy)
  {
    self->_lastKnownOutgoingChange = 0;

    v27 = self->_outgoingChangeDate;
    self->_outgoingChangeDate = 0;

    goto LABEL_20;
  }

  if (PKEqualObjects())
  {
    v25 = self->_outgoingChangeDate;
    if (v25)
    {
      [(NSDate *)v25 timeIntervalSinceDate:dateCopy];
      if (fabs(v26) < 60.0)
      {
        goto LABEL_22;
      }
    }

LABEL_20:
    v28 = 1;
    goto LABEL_23;
  }

  objc_storeStrong(&self->_lastKnownOutgoingChange, outgoingChange);
  objc_storeStrong(&self->_outgoingChangeDate, date);
LABEL_22:
  v28 = 0;
LABEL_23:
  v29 = pk_Sync_log();
  v30 = os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);

  if (v30)
  {
    v31 = pk_Sync_log();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v34 = 67109376;
      *v35 = v23;
      *&v35[4] = 1024;
      *&v35[6] = v28;
      _os_log_impl(&dword_25B300000, v31, OS_LOG_TYPE_DEFAULT, "Notice: Pass sync service: Evaluated whether to sync now\n\tIncoming change allows sync: %d\n\tOutgoing change allows sync: %d", &v34, 0xEu);
    }
  }

  v32 = *MEMORY[0x277D85DE8];
  return v23 & v28;
}

- (void)reset
{
  lastKnownIncomingChange = self->_lastKnownIncomingChange;
  self->_lastKnownIncomingChange = 0;

  incomingChangeDate = self->_incomingChangeDate;
  self->_incomingChangeDate = 0;

  lastKnownOutgoingChange = self->_lastKnownOutgoingChange;
  self->_lastKnownOutgoingChange = 0;

  outgoingChangeDate = self->_outgoingChangeDate;
  self->_outgoingChangeDate = 0;
}

@end