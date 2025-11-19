@interface IMOffGridModeInvitationManager
+ (id)sharedInstance;
- (BOOL)_isHandleAlreadyInvited:(id)a3 idsInvitedHandles:(id)a4;
- (BOOL)_isHandleIDEligibleToReceiveAutomaticInvitation:(id)a3 isContact:(id)a4;
- (IDSOffGridStateManager)offGridStateManager;
- (IMOffGridModeInvitationManager)init;
- (id)_invitationCacheKeyForHandleID:(id)a3 fromHandleID:(id)a4;
- (void)_inviteHandleID:(id)a3 fromSenderHandle:(id)a4 completion:(id)a5;
- (void)_invitedHandlesContainHandleID:(id)a3 completion:(id)a4;
- (void)attemptIfNecessaryToAutomaticallyShareOffGridModeWithHandleID:(id)a3 fromHandleID:(id)a4 completion:(id)a5;
- (void)batchShareOffGridModeToHandleIDs:(id)a3 fromHandleID:(id)a4 isContact:(id)a5 completion:(id)a6;
- (void)removeAllInvitedHandlesWithCompletion:(id)a3;
- (void)repairOffGridStatusWithHandleID:(id)a3 fromHandleID:(id)a4 completion:(id)a5;
@end

@implementation IMOffGridModeInvitationManager

+ (id)sharedInstance
{
  if (qword_1ED8CA2E0 != -1)
  {
    sub_1A88C2ED4();
  }

  v3 = qword_1ED8C9920;

  return v3;
}

- (IMOffGridModeInvitationManager)init
{
  v8.receiver = self;
  v8.super_class = IMOffGridModeInvitationManager;
  v2 = [(IMOffGridModeInvitationManager *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    dateAttemptedInvitationByHandleCache = v2->_dateAttemptedInvitationByHandleCache;
    v2->_dateAttemptedInvitationByHandleCache = v3;

    v5 = dispatch_queue_create("com.apple.messages.IMOffGridModeInvitationManager", 0);
    offGridBackgroundQueue = v2->_offGridBackgroundQueue;
    v2->_offGridBackgroundQueue = v5;
  }

  return v2;
}

- (IDSOffGridStateManager)offGridStateManager
{
  offGridStateManager = self->_offGridStateManager;
  if (!offGridStateManager)
  {
    v4 = objc_alloc(MEMORY[0x1E69A4880]);
    offGridBackgroundQueue = self->_offGridBackgroundQueue;
    v11 = 0;
    v6 = [v4 initWithQueue:offGridBackgroundQueue error:&v11];
    v7 = v11;
    v8 = self->_offGridStateManager;
    self->_offGridStateManager = v6;

    if (v7)
    {
      v9 = IMLogHandleForCategory("IMOffGridModeInvitationManager");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1A88C2EE8(v9);
      }
    }

    offGridStateManager = self->_offGridStateManager;
  }

  return offGridStateManager;
}

- (void)attemptIfNecessaryToAutomaticallyShareOffGridModeWithHandleID:(id)a3 fromHandleID:(id)a4 completion:(id)a5
{
  v26 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(IMOffGridModeInvitationManager *)self _isHandleIDEligibleToReceiveAutomaticInvitation:v8])
  {
    v11 = [(IMOffGridModeInvitationManager *)self _invitationCacheKeyForHandleID:v8 fromHandleID:v9];
    v12 = [(NSCache *)self->_dateAttemptedInvitationByHandleCache objectForKey:v11];
    v13 = v12;
    if (v12 && ([v12 timeIntervalSinceNow], fabs(v14) < 300.0))
    {
      if (IMOSLoggingEnabled())
      {
        v18 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v25 = v11;
          _os_log_impl(&dword_1A85E5000, v18, OS_LOG_TYPE_INFO, "Not attempting to check or share invitation for personal off grid mode, have attempted recently for cache key: %@", buf, 0xCu);
        }
      }

      if (v10)
      {
        (*(v10 + 2))(v10, 0, 0, 0, 0);
      }
    }

    else
    {
      dateAttemptedInvitationByHandleCache = self->_dateAttemptedInvitationByHandleCache;
      v16 = [MEMORY[0x1E695DF00] date];
      [(NSCache *)dateAttemptedInvitationByHandleCache setObject:v16 forKey:v11];

      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = sub_1A8695858;
      v19[3] = &unk_1E7828E80;
      v23 = v10;
      v20 = v8;
      v21 = self;
      v22 = v9;
      [(IMOffGridModeInvitationManager *)self _invitedHandlesContainHandleID:v20 completion:v19];
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A85E5000, v17, OS_LOG_TYPE_INFO, "Not attempting to share off grid mode, recipient is not eligible (e.g. not a contact)", buf, 2u);
      }
    }

    if (v10)
    {
      (*(v10 + 2))(v10, 0, 0, 0, 0);
    }
  }
}

- (void)batchShareOffGridModeToHandleIDs:(id)a3 fromHandleID:(id)a4 isContact:(id)a5 completion:(id)a6
{
  v49 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v35 = a4;
  v11 = a5;
  v33 = a6;
  v34 = [MEMORY[0x1E695DFA8] set];
  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v48 = [v10 count];
      _os_log_impl(&dword_1A85E5000, v12, OS_LOG_TYPE_INFO, "Attempting to batch invite %lu handles", buf, 0xCu);
    }
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = v10;
  v13 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
  if (v13)
  {
    v14 = *v43;
    do
    {
      v15 = 0;
      do
      {
        if (*v43 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v42 + 1) + 8 * v15);
        if ([(IMOffGridModeInvitationManager *)self _isHandleIDEligibleToReceiveAutomaticInvitation:v16 isContact:v11])
        {
          v17 = [(IMOffGridModeInvitationManager *)self _invitationCacheKeyForHandleID:v16 fromHandleID:v35];
          v18 = [(NSCache *)self->_dateAttemptedInvitationByHandleCache objectForKey:v17];
          v19 = v18;
          if (v18 && ([v18 timeIntervalSinceNow], fabs(v20) < 300.0))
          {
            if (IMOSLoggingEnabled())
            {
              v25 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v48 = v16;
                _os_log_impl(&dword_1A85E5000, v25, OS_LOG_TYPE_INFO, "Not attempting to check or share invitation for personal off grid mode for handle: %@, have attempted recently", buf, 0xCu);
              }
            }
          }

          else
          {
            dateAttemptedInvitationByHandleCache = self->_dateAttemptedInvitationByHandleCache;
            v22 = [MEMORY[0x1E695DF00] date];
            [(NSCache *)dateAttemptedInvitationByHandleCache setObject:v22 forKey:v17];

            v23 = [objc_alloc(MEMORY[0x1E69A5428]) initWithPrefixedURI:v16];
            [v34 addObject:v23];
          }
        }

        else if (IMOSLoggingEnabled())
        {
          v24 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v48 = v16;
            _os_log_impl(&dword_1A85E5000, v24, OS_LOG_TYPE_INFO, "Not attempting to share off grid mode for handle %@, recipient is not eligible (e.g. not a contact)", buf, 0xCu);
          }
        }

        ++v15;
      }

      while (v13 != v15);
      v26 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
      v13 = v26;
    }

    while (v26);
  }

  if (IMOSLoggingEnabled())
  {
    v27 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      v28 = [v34 count];
      *buf = 134217984;
      v48 = v28;
      _os_log_impl(&dword_1A85E5000, v27, OS_LOG_TYPE_INFO, "%lu handles are eligible for invitation and not rate limited, checking how many are not invited", buf, 0xCu);
    }
  }

  v29 = [(IMOffGridModeInvitationManager *)self offGridStateManager];
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = sub_1A8695F10;
  v37[3] = &unk_1E7828EF0;
  v38 = v34;
  v39 = self;
  v40 = v35;
  v41 = v33;
  v30 = v35;
  v31 = v34;
  v32 = v33;
  [v29 invitedHandlesWithCompletion:v37];
}

- (void)repairOffGridStatusWithHandleID:(id)a3 fromHandleID:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_1A869650C;
  v14[3] = &unk_1E7828E80;
  v14[4] = self;
  v15 = v8;
  v16 = v9;
  v17 = v10;
  v11 = v9;
  v12 = v8;
  v13 = v10;
  [(IMOffGridModeInvitationManager *)self _invitedHandlesContainHandleID:v12 completion:v14];
}

- (void)_inviteHandleID:(id)a3 fromSenderHandle:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = MEMORY[0x1E69A5428];
  v10 = a4;
  v11 = a3;
  v12 = [[v9 alloc] initWithUnprefixedURI:v11];

  v13 = [MEMORY[0x1E695DFD8] setWithObject:v12];
  v14 = [objc_alloc(MEMORY[0x1E69A5428]) initWithUnprefixedURI:v10];

  v15 = [(IMOffGridModeInvitationManager *)self offGridStateManager];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = sub_1A8696864;
  v17[3] = &unk_1E7828EC8;
  v18 = v8;
  v16 = v8;
  [v15 inviteHandles:v13 fromSenderHandle:v14 withDictionaryPayload:MEMORY[0x1E695E0F8] completion:v17];
}

- (void)_invitedHandlesContainHandleID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(IMOffGridModeInvitationManager *)self offGridStateManager];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(IMOffGridModeInvitationManager *)self offGridStateManager];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = sub_1A8696B74;
    v14[3] = &unk_1E7828F18;
    v16 = v7;
    v14[4] = self;
    v15 = v6;
    [v10 invitedHandlesWithCompletion:v14];

    v11 = v16;
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *v13 = 0;
        _os_log_impl(&dword_1A85E5000, v12, OS_LOG_TYPE_INFO, "invitedHandlesWithCompletion: not supported", v13, 2u);
      }
    }

    v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"IMOffGridModeInvitationManagerErrorDomain" code:1 userInfo:0];
    (*(v7 + 2))(v7, 0, v11);
  }
}

- (id)_invitationCacheKeyForHandleID:(id)a3 fromHandleID:(id)a4
{
  v4 = &stru_1F1BB91F0;
  if (a3)
  {
    v5 = a3;
  }

  else
  {
    v5 = &stru_1F1BB91F0;
  }

  if (a4)
  {
    v4 = a4;
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@;%@", v5, v4];
}

- (BOOL)_isHandleIDEligibleToReceiveAutomaticInvitation:(id)a3 isContact:(id)a4
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if (+[IMAppleStoreHelper isInAppleStoreDemoMode])
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        LOWORD(v10) = 0;
        _os_log_impl(&dword_1A85E5000, v7, OS_LOG_TYPE_INFO, "Not automatically off grid mode while in Apple Store Demo mode.", &v10, 2u);
      }

LABEL_21:

      goto LABEL_22;
    }

    goto LABEL_22;
  }

  if (MEMORY[0x1AC570A30](v5))
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v10 = 138412290;
        v11 = v5;
        _os_log_impl(&dword_1A85E5000, v7, OS_LOG_TYPE_INFO, "Handle %@ is a business ID, not eligible to receive off grid subscription invitation.", &v10, 0xCu);
      }

      goto LABEL_21;
    }

LABEL_22:
    v8 = 0;
    goto LABEL_23;
  }

  if (MEMORY[0x1AC570A60](v5))
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v10 = 138412290;
        v11 = v5;
        _os_log_impl(&dword_1A85E5000, v7, OS_LOG_TYPE_INFO, "Handle %@ is a stewie ID, not eligible to receive off grid mode subscription invitation.", &v10, 0xCu);
      }

      goto LABEL_21;
    }

    goto LABEL_22;
  }

  if ((v6[2](v6, v5) & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v10 = 138412290;
        v11 = v5;
        _os_log_impl(&dword_1A85E5000, v7, OS_LOG_TYPE_INFO, "Handle %@ is not in the users contacts, not eligible to receive off grid mode subscription invitation.", &v10, 0xCu);
      }

      goto LABEL_21;
    }

    goto LABEL_22;
  }

  v8 = 1;
LABEL_23:

  return v8;
}

- (BOOL)_isHandleAlreadyInvited:(id)a3 idsInvitedHandles:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = a4;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = [*(*(&v13 + 1) + 8 * i) unprefixedURI];
        v11 = [v10 isEqualToString:v5];

        if (v11)
        {
          LOBYTE(v7) = 1;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

- (void)removeAllInvitedHandlesWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(IMOffGridModeInvitationManager *)self offGridStateManager];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1A86970F4;
  v7[3] = &unk_1E7828F40;
  v8 = v4;
  v6 = v4;
  [v5 removeAllInvitedHandlesWithCompletion:v7];
}

@end