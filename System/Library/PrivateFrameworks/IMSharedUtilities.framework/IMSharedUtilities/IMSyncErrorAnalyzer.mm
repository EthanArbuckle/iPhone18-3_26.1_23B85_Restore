@interface IMSyncErrorAnalyzer
+ (id)sharedInstance;
- (BOOL)CKPartialError:(id)error hasErrorCode:(id)code;
- (BOOL)CKPartialError:(id)error onlyHasErrorCodes:(id)codes;
- (BOOL)acceptableErrorCodeWhileDeleting:(id)deleting;
- (BOOL)errorIndicatesAssetWasNotAvailable:(id)available;
- (BOOL)errorIndicatesBatchFailure:(id)failure;
- (BOOL)errorIndicatesBatchSizeFailure:(id)failure;
- (BOOL)errorIndicatesDeviceConditionsDontAllowSync:(id)sync;
- (BOOL)errorIndicatesDeviceDoesNotHaveKeysToSync:(id)sync;
- (BOOL)errorIndicatesDuplicateRecordWasFound:(id)found;
- (BOOL)errorIndicatesIdentityWasLost:(id)lost;
- (BOOL)errorIndicatesItemWasUnknown:(id)unknown;
- (BOOL)errorIndicatesMaxAttemptsFailed:(id)failed;
- (BOOL)errorIndicatesQuotaExceeded:(id)exceeded;
- (BOOL)errorIndicatesRecordSizeFailure:(id)failure;
- (BOOL)errorIndicatesRecordWasAlreadyChanged:(id)changed;
- (BOOL)errorIndicatesRecordWasArchived:(id)archived;
- (BOOL)errorIndicatesTokenWasExpired:(id)expired;
- (BOOL)errorIndicatesUserDeletedZone:(id)zone;
- (BOOL)errorIndicatesZoneNotCreated:(id)created;
- (BOOL)errorIndicatesZoneNotFound:(id)found;
- (id)_errorsFromPartialError:(id)error;
- (id)extractRecordIDsDeletedFromCKPartialError:(id)error;
- (id)extractRecordIDsNotFoundFromCKPartialError:(id)error;
- (int64_t)responseForError:(id)error attempt:(unint64_t)attempt retryInterval:(id *)interval;
- (unint64_t)calculateDelay:(unint64_t)delay forAttempt:(unint64_t)attempt maxInterval:(unint64_t)interval;
@end

@implementation IMSyncErrorAnalyzer

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A864A098;
  block[3] = &unk_1E7826200;
  block[4] = self;
  if (qword_1ED8CA2D0 != -1)
  {
    dispatch_once(&qword_1ED8CA2D0, block);
  }

  v2 = qword_1ED8CA360;

  return v2;
}

- (id)_errorsFromPartialError:(id)error
{
  userInfo = [error userInfo];
  v4 = sub_1A864A178();
  v5 = [userInfo valueForKey:v4];
  allValues = [v5 allValues];

  return allValues;
}

- (BOOL)CKPartialError:(id)error onlyHasErrorCodes:(id)codes
{
  v24 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  codesCopy = codes;
  if (-[IMSyncErrorAnalyzer _isCKErrorPartialFailure:](self, "_isCKErrorPartialFailure:", errorCopy) && [codesCopy count])
  {
    v8 = [(IMSyncErrorAnalyzer *)self _errorsFromPartialError:errorCopy];
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v9 = [v8 countByEnumeratingWithState:&v17 objects:v23 count:16];
    if (v9)
    {
      v10 = *v18;
      v11 = 1;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(*(*(&v17 + 1) + 8 * i), "code")}];
          v14 = [codesCopy containsObject:v13];

          v11 &= v14;
        }

        v9 = [v8 countByEnumeratingWithState:&v17 objects:v23 count:16];
      }

      while (v9);
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
    if (errorCopy && IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v22 = errorCopy;
        _os_log_impl(&dword_1A85E5000, v15, OS_LOG_TYPE_INFO, "******** IMDCKUtilities not a partial error %@", buf, 0xCu);
      }
    }

    v11 = 0;
  }

  return v11;
}

- (BOOL)CKPartialError:(id)error hasErrorCode:(id)code
{
  errorCopy = error;
  codeCopy = code;
  v8 = [(IMSyncErrorAnalyzer *)self _isCKErrorPartialFailure:errorCopy];
  if (!codeCopy || !v8)
  {
    goto LABEL_7;
  }

  v9 = [(IMSyncErrorAnalyzer *)self _errorsFromPartialError:errorCopy];
  if ([v9 count] != 1)
  {

    goto LABEL_7;
  }

  lastObject = [v9 lastObject];
  code = [lastObject code];
  integerValue = [codeCopy integerValue];

  if (code != integerValue)
  {
LABEL_7:
    code2 = [errorCopy code];
    v13 = code2 == [codeCopy integerValue];
    goto LABEL_8;
  }

  v13 = 1;
LABEL_8:

  return v13;
}

- (BOOL)errorIndicatesZoneNotCreated:(id)created
{
  createdCopy = created;
  if (createdCopy)
  {
    v5 = IMSingleObjectArray();
    if ([(IMSyncErrorAnalyzer *)self CKPartialError:createdCopy onlyHasErrorCodes:v5])
    {
      v6 = 1;
    }

    else
    {
      domain = [createdCopy domain];
      v8 = sub_1A864A6F0();
      if ([domain isEqualToString:v8])
      {
        v6 = [createdCopy code] == 26;
      }

      else
      {
        v6 = 0;
      }
    }

    domain2 = [createdCopy domain];
    if ([domain2 isEqualToString:@"com.apple.Messages.ChatSyncErrorDomain"])
    {
      v10 = [createdCopy code] == 1;

      v6 |= v10;
    }

    else
    {
    }

    domain3 = [createdCopy domain];
    if ([domain3 isEqualToString:@"com.apple.Messages.MessageSyncErrorDomain"])
    {
      v12 = [createdCopy code] == 1;

      v6 |= v12;
    }

    else
    {
    }

    domain4 = [createdCopy domain];
    if ([domain4 isEqualToString:@"com.apple.IMCore.IMDCKAttachmentSyncController"])
    {
      v14 = [createdCopy code] == 0;

      v6 |= v14;
    }

    else
    {
    }
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

- (BOOL)errorIndicatesZoneNotFound:(id)found
{
  foundCopy = found;
  v4 = foundCopy;
  if (foundCopy)
  {
    domain = [foundCopy domain];
    v6 = sub_1A864A6F0();
    if ([domain isEqualToString:v6])
    {
      v7 = [v4 code] == 26;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)errorIndicatesUserDeletedZone:(id)zone
{
  zoneCopy = zone;
  v5 = zoneCopy;
  if (!zoneCopy)
  {
    goto LABEL_7;
  }

  domain = [zoneCopy domain];
  v7 = sub_1A864A6F0();
  v8 = [domain isEqualToString:v7];

  if (!v8)
  {
    goto LABEL_7;
  }

  v9 = IMSingleObjectArray();
  if (![(IMSyncErrorAnalyzer *)self CKPartialError:v5 onlyHasErrorCodes:v9])
  {
    code = [v5 code];

    if (code == 28)
    {
      goto LABEL_6;
    }

LABEL_7:
    v11 = 0;
    goto LABEL_8;
  }

LABEL_6:
  v11 = 1;
LABEL_8:

  return v11;
}

- (BOOL)errorIndicatesDeviceConditionsDontAllowSync:(id)sync
{
  syncCopy = sync;
  domain = [syncCopy domain];
  if ([domain isEqualToString:@"com.apple.Messages.MessageSyncErrorDomain"])
  {
    code = [syncCopy code];

    if (code == 2)
    {
      goto LABEL_11;
    }
  }

  else
  {
  }

  domain2 = [syncCopy domain];
  if ([domain2 isEqualToString:@"com.apple.Messages.ChatSyncErrorDomain"])
  {
    code2 = [syncCopy code];

    if (code2 == 3)
    {
      goto LABEL_11;
    }
  }

  else
  {
  }

  domain3 = [syncCopy domain];
  if (![domain3 isEqualToString:@"com.apple.IMCore.IMDCKAttachmentSyncController"])
  {

    goto LABEL_13;
  }

  code3 = [syncCopy code];

  if (code3 != 4)
  {
LABEL_13:
    v10 = 0;
    goto LABEL_14;
  }

LABEL_11:
  v10 = 1;
LABEL_14:

  return v10;
}

- (BOOL)errorIndicatesMaxAttemptsFailed:(id)failed
{
  failedCopy = failed;
  domain = [failedCopy domain];
  if ([domain isEqualToString:@"com.apple.Messages.ChatSyncErrorDomain"])
  {
    code = [failedCopy code];

    if (code == 6)
    {
      goto LABEL_7;
    }
  }

  else
  {
  }

  domain2 = [failedCopy domain];
  if (![domain2 isEqualToString:@"com.apple.IMCore.IMDCKAttachmentSyncController"])
  {

    goto LABEL_9;
  }

  code2 = [failedCopy code];

  if (code2 != 1)
  {
LABEL_9:
    v8 = 0;
    goto LABEL_10;
  }

LABEL_7:
  v8 = 1;
LABEL_10:

  return v8;
}

- (BOOL)errorIndicatesQuotaExceeded:(id)exceeded
{
  v18 = *MEMORY[0x1E69E9840];
  exceededCopy = exceeded;
  if ([(IMSyncErrorAnalyzer *)self _isCKErrorPartialFailure:exceededCopy])
  {
    domain = [(IMSyncErrorAnalyzer *)self _errorsFromPartialError:exceededCopy];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = [domain countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      v9 = *v14;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(domain);
          }

          v8 |= [*(*(&v13 + 1) + 8 * i) code] == 25;
        }

        v7 = [domain countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }

    else
    {
      v8 = 0;
    }

    goto LABEL_14;
  }

  domain = [exceededCopy domain];
  v11 = sub_1A864A6F0();
  if ([domain isEqualToString:v11])
  {
    v8 = [exceededCopy code] == 25;

LABEL_14:
    goto LABEL_15;
  }

  v8 = 0;
LABEL_15:

  return v8 & 1;
}

- (BOOL)errorIndicatesTokenWasExpired:(id)expired
{
  v18 = *MEMORY[0x1E69E9840];
  expiredCopy = expired;
  if ([(IMSyncErrorAnalyzer *)self _isCKErrorPartialFailure:expiredCopy])
  {
    domain = [(IMSyncErrorAnalyzer *)self _errorsFromPartialError:expiredCopy];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = [domain countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      v9 = *v14;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(domain);
          }

          v8 |= [*(*(&v13 + 1) + 8 * i) code] == 21;
        }

        v7 = [domain countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }

    else
    {
      v8 = 0;
    }

    goto LABEL_14;
  }

  domain = [expiredCopy domain];
  v11 = sub_1A864A6F0();
  if ([domain isEqualToString:v11])
  {
    v8 = [expiredCopy code] == 21;

LABEL_14:
    goto LABEL_15;
  }

  v8 = 0;
LABEL_15:

  return v8 & 1;
}

- (BOOL)errorIndicatesBatchFailure:(id)failure
{
  failureCopy = failure;
  v4 = failureCopy;
  if (failureCopy)
  {
    domain = [failureCopy domain];
    v6 = sub_1A864A6F0();
    if ([domain isEqualToString:v6])
    {
      v7 = [v4 code] == 22;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)errorIndicatesRecordWasArchived:(id)archived
{
  archivedCopy = archived;
  v4 = archivedCopy;
  if (archivedCopy)
  {
    domain = [archivedCopy domain];
    v6 = sub_1A864A6F0();
    if ([domain isEqualToString:v6])
    {
      v7 = [v4 code] == 100 || objc_msgSend(v4, "code") == 2050;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)errorIndicatesDuplicateRecordWasFound:(id)found
{
  foundCopy = found;
  v4 = foundCopy;
  if (foundCopy)
  {
    domain = [foundCopy domain];
    v6 = sub_1A864A6F0();
    if ([domain isEqualToString:v6] && objc_msgSend(v4, "code") == 12)
    {
      userInfo = [v4 userInfo];
      if (userInfo)
      {
        userInfo2 = [v4 userInfo];
        v9 = sub_1A864B0B0();
        v10 = [userInfo2 objectForKey:v9];
        if (v10)
        {
          userInfo3 = [v4 userInfo];
          v12 = sub_1A864B0B0();
          [userInfo3 objectForKey:v12];
          v13 = v16 = userInfo2;
          v14 = [v13 containsString:@"You can't save the same record twice"];

          userInfo2 = v16;
        }

        else
        {
          v14 = 0;
        }
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)errorIndicatesRecordWasAlreadyChanged:(id)changed
{
  changedCopy = changed;
  v4 = changedCopy;
  if (changedCopy)
  {
    domain = [changedCopy domain];
    v6 = sub_1A864A6F0();
    if ([domain isEqualToString:v6])
    {
      v7 = [v4 code] == 14;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)errorIndicatesAssetWasNotAvailable:(id)available
{
  availableCopy = available;
  v4 = availableCopy;
  if (availableCopy)
  {
    domain = [availableCopy domain];
    v6 = sub_1A864A6F0();
    if ([domain isEqualToString:v6])
    {
      v7 = [v4 code] == 35;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)errorIndicatesItemWasUnknown:(id)unknown
{
  unknownCopy = unknown;
  v4 = unknownCopy;
  if (unknownCopy)
  {
    domain = [unknownCopy domain];
    v6 = sub_1A864A6F0();
    if ([domain isEqualToString:v6])
    {
      v7 = [v4 code] == 11;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)errorIndicatesBatchSizeFailure:(id)failure
{
  failureCopy = failure;
  userInfo = [failureCopy userInfo];
  v5 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E696AA08]];

  if (v5 && ([v5 domain], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isEqualToString:", *MEMORY[0x1E695B838]), v6, v7))
  {
    domain = [failureCopy domain];
    v9 = sub_1A864A6F0();
    v10 = [domain isEqualToString:v9] && objc_msgSend(failureCopy, "code") == 27 && objc_msgSend(v5, "code") == 1020;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)errorIndicatesRecordSizeFailure:(id)failure
{
  failureCopy = failure;
  userInfo = [failureCopy userInfo];
  v5 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E696AA08]];

  if (v5 && ([v5 domain], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isEqualToString:", *MEMORY[0x1E695B838]), v6, v7))
  {
    domain = [failureCopy domain];
    v9 = sub_1A864A6F0();
    v10 = [domain isEqualToString:v9] && objc_msgSend(failureCopy, "code") == 27 && objc_msgSend(v5, "code") == 2023;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)acceptableErrorCodeWhileDeleting:(id)deleting
{
  deletingCopy = deleting;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:{&unk_1F1BFA568, &unk_1F1BFA580, 0}];
  v6 = !deletingCopy || -[IMSyncErrorAnalyzer CKPartialError:onlyHasErrorCodes:](self, "CKPartialError:onlyHasErrorCodes:", deletingCopy, v5) || [deletingCopy code] == 26 || objc_msgSend(deletingCopy, "code") == 28;

  return v6;
}

- (id)extractRecordIDsDeletedFromCKPartialError:(id)error
{
  v25 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (errorCopy && [(IMSyncErrorAnalyzer *)self _isCKErrorPartialFailure:errorCopy])
  {
    userInfo = [errorCopy userInfo];
    v7 = sub_1A864A178();
    v8 = [userInfo objectForKeyedSubscript:v7];

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    allKeys = [v8 allKeys];
    v10 = [allKeys countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (!v10)
    {
      goto LABEL_19;
    }

    v11 = v10;
    v12 = *v21;
    while (1)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(allKeys);
        }

        v14 = *(*(&v20 + 1) + 8 * i);
        v15 = [v8 objectForKeyedSubscript:v14];
        if ([v15 code] == 26)
        {
          if (!v5)
          {
            goto LABEL_17;
          }
        }

        else if ([v15 code] != 28 || v5 == 0)
        {
          goto LABEL_17;
        }

        recordName = [v14 recordName];

        if (recordName)
        {
          recordName2 = [v14 recordName];
          CFArrayAppendValue(v5, recordName2);
        }

LABEL_17:
      }

      v11 = [allKeys countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (!v11)
      {
LABEL_19:

        break;
      }
    }
  }

  return v5;
}

- (id)extractRecordIDsNotFoundFromCKPartialError:(id)error
{
  v25 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (errorCopy && [(IMSyncErrorAnalyzer *)self _isCKErrorPartialFailure:errorCopy])
  {
    userInfo = [errorCopy userInfo];
    v7 = sub_1A864A178();
    v8 = [userInfo objectForKeyedSubscript:v7];

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    allKeys = [v8 allKeys];
    v10 = [allKeys countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v21;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v21 != v12)
          {
            objc_enumerationMutation(allKeys);
          }

          v14 = *(*(&v20 + 1) + 8 * i);
          v15 = [v8 objectForKeyedSubscript:v14];
          if ([v15 code] == 11 && v5 != 0)
          {
            recordName = [v14 recordName];

            if (recordName)
            {
              recordName2 = [v14 recordName];
              CFArrayAppendValue(v5, recordName2);
            }
          }
        }

        v11 = [allKeys countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v11);
    }
  }

  return v5;
}

- (BOOL)errorIndicatesIdentityWasLost:(id)lost
{
  lostCopy = lost;
  domain = [lostCopy domain];
  v6 = sub_1A864A6F0();
  if (![domain isEqualToString:v6])
  {

    goto LABEL_5;
  }

  if ([lostCopy code] != 112)
  {
    v8 = [(IMSyncErrorAnalyzer *)self CKPartialError:lostCopy onlyHasErrorCodes:&unk_1F1BFACA0];

    if (v8)
    {
      goto LABEL_7;
    }

LABEL_5:
    v7 = 0;
    goto LABEL_12;
  }

LABEL_7:
  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *v11 = 0;
      _os_log_impl(&dword_1A85E5000, v9, OS_LOG_TYPE_INFO, "********** Encryption identiy missing error ***********", v11, 2u);
    }
  }

  v7 = 1;
LABEL_12:

  return v7;
}

- (BOOL)errorIndicatesDeviceDoesNotHaveKeysToSync:(id)sync
{
  syncCopy = sync;
  v5 = syncCopy;
  if (!syncCopy || ([syncCopy domain], v6 = objc_claimAutoreleasedReturnValue(), sub_1A864A6F0(), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v6, "isEqualToString:", v7), v7, v6, (v8 & 1) == 0))
  {
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *v17 = 0;
        _os_log_impl(&dword_1A85E5000, v12, OS_LOG_TYPE_INFO, "Error does not indicate device is missing TLK", v17, 2u);
      }
    }

    goto LABEL_15;
  }

  if (!-[IMSyncErrorAnalyzer CKPartialError:onlyHasErrorCodes:](self, "CKPartialError:onlyHasErrorCodes:", v5, &unk_1F1BFACB8) && [v5 code] != 111)
  {
    if (-[IMSyncErrorAnalyzer CKPartialError:onlyHasErrorCodes:](self, "CKPartialError:onlyHasErrorCodes:", v5, &unk_1F1BFACD0) || [v5 code] == 110)
    {
      if (!IMOSLoggingEnabled())
      {
        goto LABEL_10;
      }

      v9 = OSLogHandleForIMFoundationCategory();
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        goto LABEL_9;
      }

      v15 = 0;
      v10 = &v15;
      goto LABEL_8;
    }

    if (-[IMSyncErrorAnalyzer CKPartialError:onlyHasErrorCodes:](self, "CKPartialError:onlyHasErrorCodes:", v5, &unk_1F1BFACE8) || [v5 code] == 112)
    {
      if (!IMOSLoggingEnabled())
      {
        goto LABEL_10;
      }

      v9 = OSLogHandleForIMFoundationCategory();
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        goto LABEL_9;
      }

      v14 = 0;
      v10 = &v14;
      goto LABEL_8;
    }

LABEL_15:
    v11 = 0;
    goto LABEL_16;
  }

  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
LABEL_9:

      goto LABEL_10;
    }

    *buf = 0;
    v10 = buf;
LABEL_8:
    _os_log_impl(&dword_1A85E5000, v9, OS_LOG_TYPE_INFO, "Error indicates missing TLKs.", v10, 2u);
    goto LABEL_9;
  }

LABEL_10:
  v11 = 1;
LABEL_16:

  return v11;
}

- (unint64_t)calculateDelay:(unint64_t)delay forAttempt:(unint64_t)attempt maxInterval:(unint64_t)interval
{
  v6 = exp2(attempt) * delay;
  if (v6 >= interval)
  {
    return interval;
  }

  return v6;
}

- (int64_t)responseForError:(id)error attempt:(unint64_t)attempt retryInterval:(id *)interval
{
  v66[3] = *MEMORY[0x1E69E9840];
  errorCopy = error;
  if (!errorCopy && IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A85E5000, v9, OS_LOG_TYPE_INFO, "responseForError should not be called with nil error", buf, 2u);
    }
  }

  domain = [errorCopy domain];
  v11 = sub_1A864A6F0();
  v12 = [domain isEqualToString:v11];

  if (!v12)
  {
    domain2 = [errorCopy domain];
    v16 = [domain2 isEqualToString:@"com.apple.Messages.MiC"];

    if (v16)
    {
      code = [errorCopy code];
      v18 = 1;
      if (code > 2)
      {
        switch(code)
        {
          case 3:
            v18 = 5;
            break;
          case 4:
            v18 = 258;
            break;
          case 7:
            v18 = 259;
            break;
        }

        goto LABEL_99;
      }

      if (code)
      {
        if (code == 2)
        {
          v18 = 4;
        }

        goto LABEL_99;
      }

      goto LABEL_42;
    }

    domain3 = [errorCopy domain];
    v24 = [domain3 isEqualToString:@"kCFErrorDomainCFNetwork"];

    if (v24 & 1) != 0 || ([errorCopy domain], v25 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend(v25, "isEqualToString:", *MEMORY[0x1E696A250]), v25, (v26))
    {
      v18 = 2;
      goto LABEL_99;
    }

    domain4 = [errorCopy domain];
    v29 = [domain4 isEqualToString:*MEMORY[0x1E696A798]];

    if (v29)
    {
      goto LABEL_42;
    }

    domain5 = [errorCopy domain];
    v31 = [domain5 isEqualToString:@"FileTransferFileURLRetrievalErrorDomain"];

    if (v31)
    {
      if ([errorCopy code] == 10)
      {
        v18 = 8;
      }

      else
      {
        v18 = 7;
      }
    }

    else
    {
      domain6 = [errorCopy domain];
      v38 = [domain6 isEqualToString:@"FileTransferErrorDomain"];

      if ((v38 & 1) == 0)
      {
        if ([(IMSyncErrorAnalyzer *)self errorIndicatesZoneNotCreated:errorCopy]&& IMOSLoggingEnabled())
        {
          v54 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            *&buf[4] = errorCopy;
            _os_log_impl(&dword_1A85E5000, v54, OS_LOG_TYPE_INFO, "Error: zone creation failed %@, is not recoverable", buf, 0xCu);
          }
        }

        if (![(IMSyncErrorAnalyzer *)self errorIndicatesDeviceConditionsDontAllowSync:errorCopy])
        {
          if ([(IMSyncErrorAnalyzer *)self errorIndicatesMaxAttemptsFailed:errorCopy]&& IMOSLoggingEnabled())
          {
            v59 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              *&buf[4] = errorCopy;
              _os_log_impl(&dword_1A85E5000, v59, OS_LOG_TYPE_INFO, "Error: exceeded attempts %@, is not recoverable", buf, 0xCu);
            }
          }

          v18 = 1;
          goto LABEL_99;
        }

        if (IMOSLoggingEnabled())
        {
          v55 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            *&buf[4] = errorCopy;
            _os_log_impl(&dword_1A85E5000, v55, OS_LOG_TYPE_INFO, "Error: Conditions no longer good for sync %@, is not recoverable, will defer to DAS if possible", buf, 0xCu);
          }
        }

LABEL_42:
        v18 = 3;
        goto LABEL_99;
      }

      v18 = 9;
    }

LABEL_99:
    v48 = [(IMSyncErrorAnalyzer *)self calculateDelay:15 forAttempt:attempt maxInterval:300];
    if (IMOSLoggingEnabled())
    {
      v51 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
      {
        *buf = 138412802;
        *&buf[4] = errorCopy;
        *&buf[12] = 2048;
        *&buf[14] = v48;
        *&buf[22] = 2048;
        attemptCopy2 = attempt;
        _os_log_impl(&dword_1A85E5000, v51, OS_LOG_TYPE_INFO, "No retry interval found for error %@, calculated interval %lu for attempt %lu", buf, 0x20u);
      }
    }

    goto LABEL_103;
  }

  if ([errorCopy code] == 2)
  {
    v13 = [(IMSyncErrorAnalyzer *)self _errorsFromPartialError:errorCopy];
    if ([v13 count] == 1)
    {
      firstObject = [v13 firstObject];

      errorCopy = firstObject;
    }
  }

  else
  {
    v13 = 0;
  }

  userInfo = [errorCopy userInfo];
  v20 = [userInfo objectForKey:*MEMORY[0x1E696AA08]];

  code2 = [errorCopy code];
  v18 = 1;
  if (code2 > 110)
  {
    if (code2 <= 130)
    {
      if (code2 == 111)
      {
        v18 = 5;
      }

      else if (code2 == 112)
      {
        v18 = 6;
      }
    }

    else if ((code2 - 131) >= 2)
    {
      if (code2 == 140)
      {
        if (IMOSLoggingEnabled())
        {
          v22 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            *&buf[4] = errorCopy;
            _os_log_impl(&dword_1A85E5000, v22, OS_LOG_TYPE_INFO, "Error: Low Disk Space %@, is not recoverable", buf, 0xCu);
          }

LABEL_78:
        }

LABEL_84:
        v18 = 1;
      }
    }

    else
    {
LABEL_28:
      v18 = 3;
    }
  }

  else
  {
    switch(code2)
    {
      case 1:
      case 25:
        if (!IMOSLoggingEnabled())
        {
          goto LABEL_84;
        }

        v22 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          *&buf[4] = errorCopy;
          _os_log_impl(&dword_1A85E5000, v22, OS_LOG_TYPE_INFO, "Error %@ is not recoverable", buf, 0xCu);
        }

        goto LABEL_78;
      case 2:
      case 5:
      case 8:
      case 13:
      case 15:
      case 21:
      case 27:
      case 28:
      case 29:
      case 30:
        break;
      case 3:
        if (IMOSLoggingEnabled())
        {
          v36 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            *&buf[4] = errorCopy;
            _os_log_impl(&dword_1A85E5000, v36, OS_LOG_TYPE_INFO, "Error: Network unavailable error %@, should defer activity; xpc_activity_will invoke us again later.", buf, 0xCu);
          }
        }

        goto LABEL_28;
      case 4:
      case 6:
      case 7:
      case 23:
        if (!IMOSLoggingEnabled())
        {
          goto LABEL_40;
        }

        v27 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          *&buf[4] = errorCopy;
          _os_log_impl(&dword_1A85E5000, v27, OS_LOG_TYPE_INFO, "Error: Throttle or Network Failure %@, retrying", buf, 0xCu);
        }

        goto LABEL_39;
      case 9:
      case 32:
        goto LABEL_62;
      case 10:
      case 11:
      case 12:
      case 24:
      case 26:
      case 31:
        if (!IMOSLoggingEnabled())
        {
          goto LABEL_84;
        }

        v22 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          *&buf[4] = errorCopy;
          _os_log_impl(&dword_1A85E5000, v22, OS_LOG_TYPE_INFO, "Error! Unexpected %@, not recoverable", buf, 0xCu);
        }

        goto LABEL_78;
      case 14:
      case 16:
      case 17:
      case 19:
      case 22:
        if (!IMOSLoggingEnabled())
        {
          goto LABEL_84;
        }

        v22 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          *&buf[4] = errorCopy;
          _os_log_impl(&dword_1A85E5000, v22, OS_LOG_TYPE_INFO, "Error: Failed to successfuly sync changes up %@, not recoverable", buf, 0xCu);
        }

        goto LABEL_78;
      case 18:
        if (!IMOSLoggingEnabled())
        {
          goto LABEL_84;
        }

        v22 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          *&buf[4] = errorCopy;
          _os_log_impl(&dword_1A85E5000, v22, OS_LOG_TYPE_INFO, "Error: Unexpected App Version! %@, not recoverable", buf, 0xCu);
        }

        goto LABEL_78;
      case 20:
        domain7 = [v20 domain];
        v34 = *MEMORY[0x1E695B778];
        if ([domain7 isEqualToString:*MEMORY[0x1E695B778]])
        {
          v35 = [v20 code] == 1026;

          if (v35)
          {
            goto LABEL_28;
          }
        }

        else
        {
        }

        domain8 = [v20 domain];
        if ([domain8 isEqualToString:v34])
        {
          v40 = [v20 code] == 1025;

          if (v40)
          {
            goto LABEL_84;
          }
        }

        else
        {
        }

        domain9 = [v20 domain];
        v57 = sub_1A864A6F0();
        if ([domain9 isEqualToString:v57])
        {
          v58 = [v20 code] == 131;

          if (v58)
          {
            goto LABEL_28;
          }
        }

        else
        {
        }

        if (IMOSLoggingEnabled())
        {
          v27 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_1A85E5000, v27, OS_LOG_TYPE_INFO, "Operation cancelled, an earlier operation might have failed, retrying", buf, 2u);
          }

LABEL_39:
        }

LABEL_40:
        v18 = 2;
        break;
      default:
        if (code2 == 110)
        {
LABEL_62:
          if (IMOSLoggingEnabled())
          {
            v32 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              *&buf[4] = errorCopy;
              _os_log_impl(&dword_1A85E5000, v32, OS_LOG_TYPE_INFO, "Error: NonHSA2/No user/restricted %@.", buf, 0xCu);
            }
          }

          v18 = 4;
        }

        break;
    }
  }

  userInfo2 = [errorCopy userInfo];
  v60 = 0;
  v61 = &v60;
  v62 = 0x2020000000;
  v42 = qword_1EB309538;
  v63 = qword_1EB309538;
  if (!qword_1EB309538)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = sub_1A864CDF8;
    attemptCopy2 = &unk_1E78261C8;
    v66[0] = &v60;
    v43 = sub_1A864CBE4();
    v44 = dlsym(v43, "CKErrorRetryAfterKey");
    *(*(v66[0] + 8) + 24) = v44;
    qword_1EB309538 = *(*(v66[0] + 8) + 24);
    v42 = v61[3];
  }

  _Block_object_dispose(&v60, 8);
  if (!v42)
  {
    sub_1A88C02E0();
    __break(1u);
  }

  v45 = [userInfo2 objectForKey:*v42];

  if (v45)
  {
    [v45 doubleValue];
    v47 = v46;
    v48 = v46;
    if (IMOSLoggingEnabled())
    {
      v49 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        *&buf[4] = v47;
        _os_log_impl(&dword_1A85E5000, v49, OS_LOG_TYPE_INFO, "Error userInfo has a retry interval %lu", buf, 0xCu);
      }
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v50 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *&buf[4] = 0;
        _os_log_impl(&dword_1A85E5000, v50, OS_LOG_TYPE_INFO, "Error userInfo had %@ as retry interval, ignoring.", buf, 0xCu);
      }
    }

    v48 = 0;
  }

  if (!v48)
  {
    goto LABEL_99;
  }

LABEL_103:
  if (IMOSLoggingEnabled())
  {
    v52 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
    {
      *buf = 134218754;
      *&buf[4] = v18;
      *&buf[12] = 2048;
      *&buf[14] = v48;
      *&buf[22] = 2048;
      attemptCopy2 = attempt;
      LOWORD(v66[0]) = 2112;
      *(v66 + 2) = errorCopy;
      _os_log_impl(&dword_1A85E5000, v52, OS_LOG_TYPE_INFO, "Error analysis: response %lu interval %lu for attempt %lu error %@", buf, 0x2Au);
    }
  }

  if (interval)
  {
    *interval = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v48];
  }

  return v18;
}

@end