@interface MNAudioSessionResourceAccess
+ (BOOL)deviceSpeakerIsInUse;
+ (BOOL)headphonesAreInUse;
- (BOOL)activate;
- (BOOL)deactivateWithForce:(BOOL)a3;
- (MNAudioSessionAccessDelegate)delegate;
- (MNAudioSessionResourceAccess)init;
- (id)_stringForAVAudioSessionErrorCode:(int64_t)a3;
- (unint64_t)promptStyle;
- (void)_changeNumChannels;
@end

@implementation MNAudioSessionResourceAccess

- (MNAudioSessionAccessDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)_stringForAVAudioSessionErrorCode:(int64_t)a3
{
  if (a3 <= 561145186)
  {
    if (a3 <= 560161139)
    {
      switch(a3)
      {
        case -50:
          v4 = @"AVAudioSessionErrorCodeBadParam";

          return v4;
        case 0:
          v4 = @"AVAudioSessionErrorCodeNone";

          return v4;
        case 560030580:
          v4 = @"AVAudioSessionErrorCodeIsBusy";

          return v4;
      }
    }

    else if (a3 > 561015904)
    {
      if (a3 == 561015905)
      {
        v4 = @"AVAudioSessionErrorCodeCannotStartPlaying";

        return v4;
      }

      if (a3 == 561017449)
      {
        v4 = @"AVAudioSessionErrorCodeInsufficientPriority";

        return v4;
      }
    }

    else
    {
      if (a3 == 560161140)
      {
        v4 = @"AVAudioSessionErrorCodeIncompatibleCategory";

        return v4;
      }

      if (a3 == 560557684)
      {
        v4 = @"AVAudioSessionErrorCodeCannotInterruptOthers";

        return v4;
      }
    }

LABEL_64:
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UNKNOWN: %ld", a3];

    return v4;
  }

  if (a3 > 1768841570)
  {
    if (a3 > 1936290408)
    {
      if (a3 == 1936290409)
      {
        v4 = @"AVAudioSessionErrorCodeSiriIsRecording";

        return v4;
      }

      if (a3 == 2003329396)
      {
        v4 = @"AVAudioSessionErrorCodeUnspecified";

        return v4;
      }
    }

    else
    {
      if (a3 == 1768841571)
      {
        v4 = @"AVAudioSessionErrorCodeSessionNotActive";

        return v4;
      }

      if (a3 == 1836282486)
      {
        v4 = @"AVAudioSessionErrorCodeMediaServicesFailed";

        return v4;
      }
    }

    goto LABEL_64;
  }

  if (a3 > 561210738)
  {
    if (a3 == 561210739)
    {
      v4 = @"AVAudioSessionErrorCodeExpiredSession";

      return v4;
    }

    if (a3 == 1701737535)
    {
      v4 = @"AVAudioSessionErrorCodeMissingEntitlement";

      return v4;
    }

    goto LABEL_64;
  }

  if (a3 != 561145187)
  {
    if (a3 == 561145203)
    {
      v4 = @"AVAudioSessionErrorCodeResourceNotAvailable";

      return v4;
    }

    goto LABEL_64;
  }

  v4 = @"AVAudioSessionErrorCodeCannotStartRecording";

  return v4;
}

- (BOOL)deactivateWithForce:(BOOL)a3
{
  v15 = *MEMORY[0x1E69E9840];
  if (self->_state)
  {
    a3 = 1;
  }

  if (a3)
  {
    self->_state = 1;
    v5 = GetAudioLogForMNAudioSessionResourceAccessCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1D311E000, v5, OS_LOG_TYPE_INFO, "Ⓓ Attempting to deactivate the audio session", buf, 2u);
    }

    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __52__MNAudioSessionResourceAccess_deactivateWithForce___block_invoke;
    block[3] = &unk_1E8430ED8;
    block[4] = self;
    dispatch_async(queue, block);
  }

  else
  {
    v7 = GetAudioLogForMNAudioSessionResourceAccessCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      state = self->_state;
      if (state >= 3)
      {
        v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UNKNOWN: %lu", self->_state];
      }

      else
      {
        v9 = off_1E842F9F8[state];
      }

      *buf = 138412290;
      v14 = v9;
      _os_log_impl(&dword_1D311E000, v7, OS_LOG_TYPE_INFO, "Ⓓ Deactivation ignored : state = %@", buf, 0xCu);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
  return a3;
}

void __52__MNAudioSessionResourceAccess_deactivateWithForce___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E698D710] sharedInstance];
  v11 = 0;
  v3 = [v2 setActive:0 error:&v11];
  v4 = v11;

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__MNAudioSessionResourceAccess_deactivateWithForce___block_invoke_2;
  v7[3] = &unk_1E842F9D8;
  v10 = v3;
  v5 = *(a1 + 32);
  v8 = v4;
  v9 = v5;
  v6 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

void __52__MNAudioSessionResourceAccess_deactivateWithForce___block_invoke_2(uint64_t a1)
{
  v40 = *MEMORY[0x1E69E9840];
  if (*(a1 + 48) && !*(a1 + 32))
  {
    *(*(a1 + 40) + 16) = 0;
    v19 = GetAudioLogForMNAudioSessionResourceAccessCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1D311E000, v19, OS_LOG_TYPE_INFO, "Ⓓ    Audio session deactivation started", buf, 2u);
    }

    v20 = [*(a1 + 40) delegate];
    v21 = objc_opt_respondsToSelector();

    if (v21)
    {
      v22 = [*(a1 + 40) delegate];
      [v22 audioSessionResourceAccess:*(a1 + 40) didDeactivateSession:1];

      v18 = GetAudioLogForMNAudioSessionResourceAccessCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v23 = [*(a1 + 40) delegate];
        *buf = 138412290;
        v29 = v23;
        _os_log_impl(&dword_1D311E000, v18, OS_LOG_TYPE_INFO, "Ⓓ    Audio session didDeactivateSession:YES message processed by %@", buf, 0xCu);
      }

      goto LABEL_20;
    }
  }

  else
  {
    *(*(a1 + 40) + 16) = 2;
    v2 = *(a1 + 32);
    v3 = GetAudioLogForMNAudioSessionResourceAccessCategory();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
    if (v2)
    {
      if (v4)
      {
        v5 = [*(a1 + 40) _stringForAVAudioSessionErrorCode:{objc_msgSend(*(a1 + 32), "code")}];
        v6 = [*(a1 + 32) code] >> 24;
        v7 = ([*(a1 + 32) code] >> 16);
        v8 = ([*(a1 + 32) code] >> 8);
        v9 = [*(a1 + 32) code];
        v10 = *(a1 + 32);
        *buf = 138413570;
        v29 = v5;
        v30 = 1024;
        v31 = v6;
        v32 = 1024;
        v33 = v7;
        v34 = 1024;
        v35 = v8;
        v36 = 1024;
        v37 = v9;
        v38 = 2112;
        v39 = v10;
        _os_log_impl(&dword_1D311E000, v3, OS_LOG_TYPE_ERROR, "⒟    Error deactivating audio session (error code %@ '%c%c%c%c') : %@", buf, 0x2Eu);
      }

      v11 = 3406;
    }

    else
    {
      if (v4)
      {
        *buf = 0;
        _os_log_impl(&dword_1D311E000, v3, OS_LOG_TYPE_ERROR, "⒟    Error deactivating audio session (no error given)", buf, 2u);
      }

      v11 = 3405;
    }

    v12 = [*(a1 + 40) delegate];
    v13 = objc_opt_respondsToSelector();

    if (v13)
    {
      v14 = MEMORY[0x1E696ABC0];
      v15 = @"MNAudioSystemError";
      v16 = *(a1 + 32);
      if (v16)
      {
        v26 = *MEMORY[0x1E696AA08];
        v27 = v16;
        v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
        v18 = [v14 errorWithDomain:@"MNAudioSystemError" code:v11 userInfo:v17];
      }

      else
      {
        v18 = [v14 errorWithDomain:@"MNAudioSystemError" code:v11 userInfo:0];
      }

      v24 = [*(a1 + 40) delegate];
      [v24 audioSessionResourceAccess:*(a1 + 40) didFailWhileDeactivatingSession:v18];

LABEL_20:
    }
  }

  v25 = *MEMORY[0x1E69E9840];
}

- (BOOL)activate
{
  v14 = *MEMORY[0x1E69E9840];
  state = self->_state;
  if (state == 2)
  {
    v6 = GetAudioLogForMNAudioSessionResourceAccessCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = self->_state;
      if (v7 >= 3)
      {
        v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UNKNOWN: %lu", self->_state];
      }

      else
      {
        v8 = off_1E842F9F8[v7];
      }

      *buf = 138412290;
      v13 = v8;
      _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_INFO, "Ⓓ Activation ignored : state = %@", buf, 0xCu);
    }
  }

  else
  {
    self->_state = 1;
    v4 = GetAudioLogForMNAudioSessionResourceAccessCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1D311E000, v4, OS_LOG_TYPE_INFO, "Ⓓ Attempting to activate the audio session", buf, 2u);
    }

    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __40__MNAudioSessionResourceAccess_activate__block_invoke;
    block[3] = &unk_1E8430ED8;
    block[4] = self;
    dispatch_async(queue, block);
  }

  result = state != 2;
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

void __40__MNAudioSessionResourceAccess_activate__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E698D710] sharedInstance];
  v13 = 0;
  v3 = [v2 setActive:1 error:&v13];
  v4 = v13;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__MNAudioSessionResourceAccess_activate__block_invoke_2;
  block[3] = &unk_1E842F9B0;
  v12 = v3;
  v5 = *(a1 + 32);
  v9 = v4;
  v10 = v5;
  v11 = v2;
  v6 = v2;
  v7 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __40__MNAudioSessionResourceAccess_activate__block_invoke_2(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  if (*(a1 + 56) && !*(a1 + 32))
  {
    *(*(a1 + 40) + 16) = 2;
    v11 = GetAudioLogForMNAudioSessionResourceAccessCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1D311E000, v11, OS_LOG_TYPE_INFO, "Ⓓ    Audio session activation started", buf, 2u);
    }

    v12 = [*(a1 + 40) delegate];
    v13 = objc_opt_respondsToSelector();

    if (v13)
    {
      v10 = [*(a1 + 40) delegate];
      [v10 audioSessionResourceAccess:*(a1 + 40) didActivateSession:1];
LABEL_14:
    }
  }

  else
  {
    *(*(a1 + 40) + 16) = 0;
    v2 = GetAudioLogForMNAudioSessionResourceAccessCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = *(a1 + 32);
      *buf = 138412290;
      v19 = v3;
      _os_log_impl(&dword_1D311E000, v2, OS_LOG_TYPE_ERROR, "⒟    Error activating audio session: %@", buf, 0xCu);
    }

    [*(a1 + 48) setActive:0 error:0];
    v4 = [*(a1 + 40) delegate];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = MEMORY[0x1E696ABC0];
      v7 = @"MNAudioSystemError";
      v8 = *(a1 + 32);
      if (v8)
      {
        v16 = *MEMORY[0x1E696AA08];
        v17 = v8;
        v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
        v10 = [v6 errorWithDomain:@"MNAudioSystemError" code:3403 userInfo:v9];
      }

      else
      {
        v10 = [v6 errorWithDomain:@"MNAudioSystemError" code:3402 userInfo:0];
      }

      v14 = [*(a1 + 40) delegate];
      [v14 audioSessionResourceAccess:*(a1 + 40) didFailWhileActivatingSession:v10];

      goto LABEL_14;
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)_changeNumChannels
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E698D710] sharedInstance];
  v19 = 0;
  v4 = [v3 setPreferredOutputNumberOfChannels:1 error:&v19];
  v5 = v19;

  v6 = GetAudioLogForMNAudioSessionResourceAccessCategory();
  v7 = v6;
  if (v4)
  {
    v8 = v5 == 0;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1D311E000, v7, OS_LOG_TYPE_INFO, "Ⓓ    Successfully set the channel count", buf, 2u);
    }

    v16 = [(MNAudioSessionResourceAccess *)self delegate];
    v17 = objc_opt_respondsToSelector();

    if (v17)
    {
      v14 = [(MNAudioSessionResourceAccess *)self delegate];
      [v14 audioSessionResourceAccess:self didSetChannelCount:1];
      goto LABEL_13;
    }
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v23 = v5;
      _os_log_impl(&dword_1D311E000, v7, OS_LOG_TYPE_ERROR, "⒟    Error setting the channel count: %@", buf, 0xCu);
    }

    v9 = [(MNAudioSessionResourceAccess *)self delegate];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      v11 = MEMORY[0x1E696ABC0];
      v12 = @"MNAudioSystemError";
      v20 = *MEMORY[0x1E696AA08];
      v21 = v5;
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
      v14 = [v11 errorWithDomain:@"MNAudioSystemError" code:3404 userInfo:v13];

      v15 = [(MNAudioSessionResourceAccess *)self delegate];
      [v15 audioSessionResourceAccess:self didFailWhileSettingChannelCount:v14];

LABEL_13:
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (unint64_t)promptStyle
{
  if (GEOConfigGetBOOL())
  {
    return 1936224884;
  }

  v3 = [MEMORY[0x1E698D710] sharedInstance];
  v4 = [v3 promptStyle];

  return v4;
}

- (MNAudioSessionResourceAccess)init
{
  v8.receiver = self;
  v8.super_class = MNAudioSessionResourceAccess;
  v2 = [(MNAudioSessionResourceAccess *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.Navigation.AudioSessionQueue", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    v6 = v2;
  }

  return v2;
}

+ (BOOL)deviceSpeakerIsInUse
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = [MEMORY[0x1E698D710] sharedInstance];
  v3 = [v2 currentRoute];
  v4 = [v3 outputs];

  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    v8 = *MEMORY[0x1E698D680];
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = [*(*(&v15 + 1) + 8 * i) portType];
        v11 = [v10 isEqualToString:v8];

        if (v11)
        {
          v12 = 1;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_11:

  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

+ (BOOL)headphonesAreInUse
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [MEMORY[0x1E698D710] sharedInstance];
  v3 = [v2 currentRoute];
  v4 = [v3 outputs];

  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = *v11;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v4);
        }

        if ([*(*(&v10 + 1) + 8 * i) isHeadphones])
        {
          LOBYTE(v5) = 1;
          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v8 = *MEMORY[0x1E69E9840];
  return v5;
}

@end