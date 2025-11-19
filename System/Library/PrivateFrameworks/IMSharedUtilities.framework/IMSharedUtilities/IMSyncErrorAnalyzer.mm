@interface IMSyncErrorAnalyzer
+ (id)sharedInstance;
- (BOOL)CKPartialError:(id)a3 hasErrorCode:(id)a4;
- (BOOL)CKPartialError:(id)a3 onlyHasErrorCodes:(id)a4;
- (BOOL)acceptableErrorCodeWhileDeleting:(id)a3;
- (BOOL)errorIndicatesAssetWasNotAvailable:(id)a3;
- (BOOL)errorIndicatesBatchFailure:(id)a3;
- (BOOL)errorIndicatesBatchSizeFailure:(id)a3;
- (BOOL)errorIndicatesDeviceConditionsDontAllowSync:(id)a3;
- (BOOL)errorIndicatesDeviceDoesNotHaveKeysToSync:(id)a3;
- (BOOL)errorIndicatesDuplicateRecordWasFound:(id)a3;
- (BOOL)errorIndicatesIdentityWasLost:(id)a3;
- (BOOL)errorIndicatesItemWasUnknown:(id)a3;
- (BOOL)errorIndicatesMaxAttemptsFailed:(id)a3;
- (BOOL)errorIndicatesQuotaExceeded:(id)a3;
- (BOOL)errorIndicatesRecordSizeFailure:(id)a3;
- (BOOL)errorIndicatesRecordWasAlreadyChanged:(id)a3;
- (BOOL)errorIndicatesRecordWasArchived:(id)a3;
- (BOOL)errorIndicatesTokenWasExpired:(id)a3;
- (BOOL)errorIndicatesUserDeletedZone:(id)a3;
- (BOOL)errorIndicatesZoneNotCreated:(id)a3;
- (BOOL)errorIndicatesZoneNotFound:(id)a3;
- (id)_errorsFromPartialError:(id)a3;
- (id)extractRecordIDsDeletedFromCKPartialError:(id)a3;
- (id)extractRecordIDsNotFoundFromCKPartialError:(id)a3;
- (int64_t)responseForError:(id)a3 attempt:(unint64_t)a4 retryInterval:(id *)a5;
- (unint64_t)calculateDelay:(unint64_t)a3 forAttempt:(unint64_t)a4 maxInterval:(unint64_t)a5;
@end

@implementation IMSyncErrorAnalyzer

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A864A098;
  block[3] = &unk_1E7826200;
  block[4] = a1;
  if (qword_1ED8CA2D0 != -1)
  {
    dispatch_once(&qword_1ED8CA2D0, block);
  }

  v2 = qword_1ED8CA360;

  return v2;
}

- (id)_errorsFromPartialError:(id)a3
{
  v3 = [a3 userInfo];
  v4 = sub_1A864A178();
  v5 = [v3 valueForKey:v4];
  v6 = [v5 allValues];

  return v6;
}

- (BOOL)CKPartialError:(id)a3 onlyHasErrorCodes:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (-[IMSyncErrorAnalyzer _isCKErrorPartialFailure:](self, "_isCKErrorPartialFailure:", v6) && [v7 count])
  {
    v8 = [(IMSyncErrorAnalyzer *)self _errorsFromPartialError:v6];
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
          v14 = [v7 containsObject:v13];

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
    if (v6 && IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v22 = v6;
        _os_log_impl(&dword_1A85E5000, v15, OS_LOG_TYPE_INFO, "******** IMDCKUtilities not a partial error %@", buf, 0xCu);
      }
    }

    v11 = 0;
  }

  return v11;
}

- (BOOL)CKPartialError:(id)a3 hasErrorCode:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(IMSyncErrorAnalyzer *)self _isCKErrorPartialFailure:v6];
  if (!v7 || !v8)
  {
    goto LABEL_7;
  }

  v9 = [(IMSyncErrorAnalyzer *)self _errorsFromPartialError:v6];
  if ([v9 count] != 1)
  {

    goto LABEL_7;
  }

  v10 = [v9 lastObject];
  v11 = [v10 code];
  v12 = [v7 integerValue];

  if (v11 != v12)
  {
LABEL_7:
    v14 = [v6 code];
    v13 = v14 == [v7 integerValue];
    goto LABEL_8;
  }

  v13 = 1;
LABEL_8:

  return v13;
}

- (BOOL)errorIndicatesZoneNotCreated:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = IMSingleObjectArray();
    if ([(IMSyncErrorAnalyzer *)self CKPartialError:v4 onlyHasErrorCodes:v5])
    {
      v6 = 1;
    }

    else
    {
      v7 = [v4 domain];
      v8 = sub_1A864A6F0();
      if ([v7 isEqualToString:v8])
      {
        v6 = [v4 code] == 26;
      }

      else
      {
        v6 = 0;
      }
    }

    v9 = [v4 domain];
    if ([v9 isEqualToString:@"com.apple.Messages.ChatSyncErrorDomain"])
    {
      v10 = [v4 code] == 1;

      v6 |= v10;
    }

    else
    {
    }

    v11 = [v4 domain];
    if ([v11 isEqualToString:@"com.apple.Messages.MessageSyncErrorDomain"])
    {
      v12 = [v4 code] == 1;

      v6 |= v12;
    }

    else
    {
    }

    v13 = [v4 domain];
    if ([v13 isEqualToString:@"com.apple.IMCore.IMDCKAttachmentSyncController"])
    {
      v14 = [v4 code] == 0;

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

- (BOOL)errorIndicatesZoneNotFound:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 domain];
    v6 = sub_1A864A6F0();
    if ([v5 isEqualToString:v6])
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

- (BOOL)errorIndicatesUserDeletedZone:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_7;
  }

  v6 = [v4 domain];
  v7 = sub_1A864A6F0();
  v8 = [v6 isEqualToString:v7];

  if (!v8)
  {
    goto LABEL_7;
  }

  v9 = IMSingleObjectArray();
  if (![(IMSyncErrorAnalyzer *)self CKPartialError:v5 onlyHasErrorCodes:v9])
  {
    v10 = [v5 code];

    if (v10 == 28)
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

- (BOOL)errorIndicatesDeviceConditionsDontAllowSync:(id)a3
{
  v3 = a3;
  v4 = [v3 domain];
  if ([v4 isEqualToString:@"com.apple.Messages.MessageSyncErrorDomain"])
  {
    v5 = [v3 code];

    if (v5 == 2)
    {
      goto LABEL_11;
    }
  }

  else
  {
  }

  v6 = [v3 domain];
  if ([v6 isEqualToString:@"com.apple.Messages.ChatSyncErrorDomain"])
  {
    v7 = [v3 code];

    if (v7 == 3)
    {
      goto LABEL_11;
    }
  }

  else
  {
  }

  v8 = [v3 domain];
  if (![v8 isEqualToString:@"com.apple.IMCore.IMDCKAttachmentSyncController"])
  {

    goto LABEL_13;
  }

  v9 = [v3 code];

  if (v9 != 4)
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

- (BOOL)errorIndicatesMaxAttemptsFailed:(id)a3
{
  v3 = a3;
  v4 = [v3 domain];
  if ([v4 isEqualToString:@"com.apple.Messages.ChatSyncErrorDomain"])
  {
    v5 = [v3 code];

    if (v5 == 6)
    {
      goto LABEL_7;
    }
  }

  else
  {
  }

  v6 = [v3 domain];
  if (![v6 isEqualToString:@"com.apple.IMCore.IMDCKAttachmentSyncController"])
  {

    goto LABEL_9;
  }

  v7 = [v3 code];

  if (v7 != 1)
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

- (BOOL)errorIndicatesQuotaExceeded:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(IMSyncErrorAnalyzer *)self _isCKErrorPartialFailure:v4])
  {
    v5 = [(IMSyncErrorAnalyzer *)self _errorsFromPartialError:v4];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
            objc_enumerationMutation(v5);
          }

          v8 |= [*(*(&v13 + 1) + 8 * i) code] == 25;
        }

        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }

    else
    {
      v8 = 0;
    }

    goto LABEL_14;
  }

  v5 = [v4 domain];
  v11 = sub_1A864A6F0();
  if ([v5 isEqualToString:v11])
  {
    v8 = [v4 code] == 25;

LABEL_14:
    goto LABEL_15;
  }

  v8 = 0;
LABEL_15:

  return v8 & 1;
}

- (BOOL)errorIndicatesTokenWasExpired:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(IMSyncErrorAnalyzer *)self _isCKErrorPartialFailure:v4])
  {
    v5 = [(IMSyncErrorAnalyzer *)self _errorsFromPartialError:v4];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
            objc_enumerationMutation(v5);
          }

          v8 |= [*(*(&v13 + 1) + 8 * i) code] == 21;
        }

        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }

    else
    {
      v8 = 0;
    }

    goto LABEL_14;
  }

  v5 = [v4 domain];
  v11 = sub_1A864A6F0();
  if ([v5 isEqualToString:v11])
  {
    v8 = [v4 code] == 21;

LABEL_14:
    goto LABEL_15;
  }

  v8 = 0;
LABEL_15:

  return v8 & 1;
}

- (BOOL)errorIndicatesBatchFailure:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 domain];
    v6 = sub_1A864A6F0();
    if ([v5 isEqualToString:v6])
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

- (BOOL)errorIndicatesRecordWasArchived:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 domain];
    v6 = sub_1A864A6F0();
    if ([v5 isEqualToString:v6])
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

- (BOOL)errorIndicatesDuplicateRecordWasFound:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 domain];
    v6 = sub_1A864A6F0();
    if ([v5 isEqualToString:v6] && objc_msgSend(v4, "code") == 12)
    {
      v7 = [v4 userInfo];
      if (v7)
      {
        v8 = [v4 userInfo];
        v9 = sub_1A864B0B0();
        v10 = [v8 objectForKey:v9];
        if (v10)
        {
          v11 = [v4 userInfo];
          v12 = sub_1A864B0B0();
          [v11 objectForKey:v12];
          v13 = v16 = v8;
          v14 = [v13 containsString:@"You can't save the same record twice"];

          v8 = v16;
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

- (BOOL)errorIndicatesRecordWasAlreadyChanged:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 domain];
    v6 = sub_1A864A6F0();
    if ([v5 isEqualToString:v6])
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

- (BOOL)errorIndicatesAssetWasNotAvailable:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 domain];
    v6 = sub_1A864A6F0();
    if ([v5 isEqualToString:v6])
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

- (BOOL)errorIndicatesItemWasUnknown:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 domain];
    v6 = sub_1A864A6F0();
    if ([v5 isEqualToString:v6])
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

- (BOOL)errorIndicatesBatchSizeFailure:(id)a3
{
  v3 = a3;
  v4 = [v3 userInfo];
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x1E696AA08]];

  if (v5 && ([v5 domain], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isEqualToString:", *MEMORY[0x1E695B838]), v6, v7))
  {
    v8 = [v3 domain];
    v9 = sub_1A864A6F0();
    v10 = [v8 isEqualToString:v9] && objc_msgSend(v3, "code") == 27 && objc_msgSend(v5, "code") == 1020;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)errorIndicatesRecordSizeFailure:(id)a3
{
  v3 = a3;
  v4 = [v3 userInfo];
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x1E696AA08]];

  if (v5 && ([v5 domain], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isEqualToString:", *MEMORY[0x1E695B838]), v6, v7))
  {
    v8 = [v3 domain];
    v9 = sub_1A864A6F0();
    v10 = [v8 isEqualToString:v9] && objc_msgSend(v3, "code") == 27 && objc_msgSend(v5, "code") == 2023;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)acceptableErrorCodeWhileDeleting:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:{&unk_1F1BFA568, &unk_1F1BFA580, 0}];
  v6 = !v4 || -[IMSyncErrorAnalyzer CKPartialError:onlyHasErrorCodes:](self, "CKPartialError:onlyHasErrorCodes:", v4, v5) || [v4 code] == 26 || objc_msgSend(v4, "code") == 28;

  return v6;
}

- (id)extractRecordIDsDeletedFromCKPartialError:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (v4 && [(IMSyncErrorAnalyzer *)self _isCKErrorPartialFailure:v4])
  {
    v6 = [v4 userInfo];
    v7 = sub_1A864A178();
    v8 = [v6 objectForKeyedSubscript:v7];

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v9 = [v8 allKeys];
    v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
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
          objc_enumerationMutation(v9);
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

        v17 = [v14 recordName];

        if (v17)
        {
          v18 = [v14 recordName];
          CFArrayAppendValue(v5, v18);
        }

LABEL_17:
      }

      v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (!v11)
      {
LABEL_19:

        break;
      }
    }
  }

  return v5;
}

- (id)extractRecordIDsNotFoundFromCKPartialError:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (v4 && [(IMSyncErrorAnalyzer *)self _isCKErrorPartialFailure:v4])
  {
    v6 = [v4 userInfo];
    v7 = sub_1A864A178();
    v8 = [v6 objectForKeyedSubscript:v7];

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v9 = [v8 allKeys];
    v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
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
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v20 + 1) + 8 * i);
          v15 = [v8 objectForKeyedSubscript:v14];
          if ([v15 code] == 11 && v5 != 0)
          {
            v17 = [v14 recordName];

            if (v17)
            {
              v18 = [v14 recordName];
              CFArrayAppendValue(v5, v18);
            }
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v11);
    }
  }

  return v5;
}

- (BOOL)errorIndicatesIdentityWasLost:(id)a3
{
  v4 = a3;
  v5 = [v4 domain];
  v6 = sub_1A864A6F0();
  if (![v5 isEqualToString:v6])
  {

    goto LABEL_5;
  }

  if ([v4 code] != 112)
  {
    v8 = [(IMSyncErrorAnalyzer *)self CKPartialError:v4 onlyHasErrorCodes:&unk_1F1BFACA0];

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

- (BOOL)errorIndicatesDeviceDoesNotHaveKeysToSync:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4 || ([v4 domain], v6 = objc_claimAutoreleasedReturnValue(), sub_1A864A6F0(), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v6, "isEqualToString:", v7), v7, v6, (v8 & 1) == 0))
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

- (unint64_t)calculateDelay:(unint64_t)a3 forAttempt:(unint64_t)a4 maxInterval:(unint64_t)a5
{
  v6 = exp2(a4) * a3;
  if (v6 >= a5)
  {
    return a5;
  }

  return v6;
}

- (int64_t)responseForError:(id)a3 attempt:(unint64_t)a4 retryInterval:(id *)a5
{
  v66[3] = *MEMORY[0x1E69E9840];
  v8 = a3;
  if (!v8 && IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A85E5000, v9, OS_LOG_TYPE_INFO, "responseForError should not be called with nil error", buf, 2u);
    }
  }

  v10 = [v8 domain];
  v11 = sub_1A864A6F0();
  v12 = [v10 isEqualToString:v11];

  if (!v12)
  {
    v15 = [v8 domain];
    v16 = [v15 isEqualToString:@"com.apple.Messages.MiC"];

    if (v16)
    {
      v17 = [v8 code];
      v18 = 1;
      if (v17 > 2)
      {
        switch(v17)
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

      if (v17)
      {
        if (v17 == 2)
        {
          v18 = 4;
        }

        goto LABEL_99;
      }

      goto LABEL_42;
    }

    v23 = [v8 domain];
    v24 = [v23 isEqualToString:@"kCFErrorDomainCFNetwork"];

    if (v24 & 1) != 0 || ([v8 domain], v25 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend(v25, "isEqualToString:", *MEMORY[0x1E696A250]), v25, (v26))
    {
      v18 = 2;
      goto LABEL_99;
    }

    v28 = [v8 domain];
    v29 = [v28 isEqualToString:*MEMORY[0x1E696A798]];

    if (v29)
    {
      goto LABEL_42;
    }

    v30 = [v8 domain];
    v31 = [v30 isEqualToString:@"FileTransferFileURLRetrievalErrorDomain"];

    if (v31)
    {
      if ([v8 code] == 10)
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
      v37 = [v8 domain];
      v38 = [v37 isEqualToString:@"FileTransferErrorDomain"];

      if ((v38 & 1) == 0)
      {
        if ([(IMSyncErrorAnalyzer *)self errorIndicatesZoneNotCreated:v8]&& IMOSLoggingEnabled())
        {
          v54 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            *&buf[4] = v8;
            _os_log_impl(&dword_1A85E5000, v54, OS_LOG_TYPE_INFO, "Error: zone creation failed %@, is not recoverable", buf, 0xCu);
          }
        }

        if (![(IMSyncErrorAnalyzer *)self errorIndicatesDeviceConditionsDontAllowSync:v8])
        {
          if ([(IMSyncErrorAnalyzer *)self errorIndicatesMaxAttemptsFailed:v8]&& IMOSLoggingEnabled())
          {
            v59 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              *&buf[4] = v8;
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
            *&buf[4] = v8;
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
    v48 = [(IMSyncErrorAnalyzer *)self calculateDelay:15 forAttempt:a4 maxInterval:300];
    if (IMOSLoggingEnabled())
    {
      v51 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
      {
        *buf = 138412802;
        *&buf[4] = v8;
        *&buf[12] = 2048;
        *&buf[14] = v48;
        *&buf[22] = 2048;
        v65 = a4;
        _os_log_impl(&dword_1A85E5000, v51, OS_LOG_TYPE_INFO, "No retry interval found for error %@, calculated interval %lu for attempt %lu", buf, 0x20u);
      }
    }

    goto LABEL_103;
  }

  if ([v8 code] == 2)
  {
    v13 = [(IMSyncErrorAnalyzer *)self _errorsFromPartialError:v8];
    if ([v13 count] == 1)
    {
      v14 = [v13 firstObject];

      v8 = v14;
    }
  }

  else
  {
    v13 = 0;
  }

  v19 = [v8 userInfo];
  v20 = [v19 objectForKey:*MEMORY[0x1E696AA08]];

  v21 = [v8 code];
  v18 = 1;
  if (v21 > 110)
  {
    if (v21 <= 130)
    {
      if (v21 == 111)
      {
        v18 = 5;
      }

      else if (v21 == 112)
      {
        v18 = 6;
      }
    }

    else if ((v21 - 131) >= 2)
    {
      if (v21 == 140)
      {
        if (IMOSLoggingEnabled())
        {
          v22 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            *&buf[4] = v8;
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
    switch(v21)
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
          *&buf[4] = v8;
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
            *&buf[4] = v8;
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
          *&buf[4] = v8;
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
          *&buf[4] = v8;
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
          *&buf[4] = v8;
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
          *&buf[4] = v8;
          _os_log_impl(&dword_1A85E5000, v22, OS_LOG_TYPE_INFO, "Error: Unexpected App Version! %@, not recoverable", buf, 0xCu);
        }

        goto LABEL_78;
      case 20:
        v33 = [v20 domain];
        v34 = *MEMORY[0x1E695B778];
        if ([v33 isEqualToString:*MEMORY[0x1E695B778]])
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

        v39 = [v20 domain];
        if ([v39 isEqualToString:v34])
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

        v56 = [v20 domain];
        v57 = sub_1A864A6F0();
        if ([v56 isEqualToString:v57])
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
        if (v21 == 110)
        {
LABEL_62:
          if (IMOSLoggingEnabled())
          {
            v32 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              *&buf[4] = v8;
              _os_log_impl(&dword_1A85E5000, v32, OS_LOG_TYPE_INFO, "Error: NonHSA2/No user/restricted %@.", buf, 0xCu);
            }
          }

          v18 = 4;
        }

        break;
    }
  }

  v41 = [v8 userInfo];
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
    v65 = &unk_1E78261C8;
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

  v45 = [v41 objectForKey:*v42];

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
      v65 = a4;
      LOWORD(v66[0]) = 2112;
      *(v66 + 2) = v8;
      _os_log_impl(&dword_1A85E5000, v52, OS_LOG_TYPE_INFO, "Error analysis: response %lu interval %lu for attempt %lu error %@", buf, 0x2Au);
    }
  }

  if (a5)
  {
    *a5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v48];
  }

  return v18;
}

@end