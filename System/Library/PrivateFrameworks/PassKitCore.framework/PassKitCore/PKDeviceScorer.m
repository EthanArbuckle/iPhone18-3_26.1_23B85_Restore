@interface PKDeviceScorer
- (PKDeviceScorer)initWithContext:(id)a3;
- (id)_createScorer;
- (void)_getScoreWithNonce:(id)a3 cryptogram:(id)a4 challengeResponse:(id)a5 completion:(id)a6;
- (void)deviceScoreWithCryptogram:(id)a3 challengeResponse:(id)a4 nonce:(id)a5 completion:(id)a6;
- (void)peerPaymentDeviceScoreWithCryptogram:(id)a3 challengeResponse:(id)a4 completion:(id)a5;
@end

@implementation PKDeviceScorer

- (PKDeviceScorer)initWithContext:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = PKDeviceScorer;
  v5 = [(PKDeviceScorer *)&v13 init];
  if (v5)
  {
    v6 = [v4 copy];
    context = v5->_context;
    v5->_context = v6;

    v5->_deviceScoreTimeout = 1.8;
    v8 = [MEMORY[0x1E695DF90] dictionary];
    scoreCompletions = v5->_scoreCompletions;
    v5->_scoreCompletions = v8;

    v10 = [(PKDeviceScorer *)v5 _createScorer];
    scorer = v5->_scorer;
    v5->_scorer = v10;

    [(CdQwUTvJnDEPQgR8 *)v5->_scorer prepareScoreMessage];
  }

  return v5;
}

- (void)deviceScoreWithCryptogram:(id)a3 challengeResponse:(id)a4 nonce:(id)a5 completion:(id)a6
{
  v21 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!v13)
  {
    goto LABEL_15;
  }

  if (v10)
  {
    if (v11)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v14 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138477827;
      v20 = @"no cryptogram supplied for DSP";
      _os_log_impl(&dword_1AD337000, v14, OS_LOG_TYPE_DEFAULT, "%{private}@", buf, 0xCu);
    }

    if (v11)
    {
LABEL_4:
      if (v12)
      {
LABEL_5:
        v17[0] = MEMORY[0x1E69E9820];
        v17[1] = 3221225472;
        v17[2] = __79__PKDeviceScorer_deviceScoreWithCryptogram_challengeResponse_nonce_completion___block_invoke;
        v17[3] = &unk_1E79CEE68;
        v18 = v13;
        [(PKDeviceScorer *)self _getScoreWithNonce:v12 cryptogram:v10 challengeResponse:v11 completion:v17];

        goto LABEL_15;
      }

      goto LABEL_12;
    }
  }

  v15 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138477827;
    v20 = @"no challengeResponse supplied for DSP";
    _os_log_impl(&dword_1AD337000, v15, OS_LOG_TYPE_DEFAULT, "%{private}@", buf, 0xCu);
  }

  if (v12)
  {
    goto LABEL_5;
  }

LABEL_12:
  v16 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138477827;
    v20 = @"no nonce supplied for DSP";
    _os_log_impl(&dword_1AD337000, v16, OS_LOG_TYPE_DEFAULT, "%{private}@", buf, 0xCu);
  }

  (*(v13 + 2))(v13, 0, 0);
LABEL_15:
}

- (void)peerPaymentDeviceScoreWithCryptogram:(id)a3 challengeResponse:(id)a4 completion:(id)a5
{
  v14 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    if (v8)
    {
      if (v9)
      {
        [(PKDeviceScorer *)self _getScoreWithNonce:0 cryptogram:v8 challengeResponse:v9 completion:v10];
        goto LABEL_11;
      }

      v11 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 138477827;
        v13 = @"no challengeResponse supplied for DSP";
        goto LABEL_9;
      }
    }

    else
    {
      v11 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 138477827;
        v13 = @"no cryptogram supplied for DSP";
LABEL_9:
        _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "%{private}@", &v12, 0xCu);
      }
    }

    (*(v10 + 2))(v10, 0, 0, 0);
  }

LABEL_11:
}

- (void)_getScoreWithNonce:(id)a3 cryptogram:(id)a4 challengeResponse:(id)a5 completion:(id)a6
{
  v32 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = MEMORY[0x1E69E96A0];
  v15 = MEMORY[0x1E69E96A0];
  if (PKProvisioningSecurityEnhancementsDisableDeviceScore())
  {
    v16 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138477827;
      v31 = @"DSP disabled by setting";
      _os_log_impl(&dword_1AD337000, v16, OS_LOG_TYPE_DEFAULT, "%{private}@", buf, 0xCu);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __77__PKDeviceScorer__getScoreWithNonce_cryptogram_challengeResponse_completion___block_invoke;
    block[3] = &unk_1E79C4428;
    v29 = v13;
    v17 = v13;
    dispatch_async(MEMORY[0x1E69E96A0], block);
    v18 = v29;
  }

  else
  {
    v19 = dispatch_get_global_queue(0, 0);
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __77__PKDeviceScorer__getScoreWithNonce_cryptogram_challengeResponse_completion___block_invoke_2;
    v22[3] = &unk_1E79CEEE0;
    v22[4] = self;
    v20 = v14;
    v23 = v14;
    v27 = v13;
    v24 = v10;
    v25 = v11;
    v26 = v12;
    v21 = v13;
    dispatch_async(v19, v22);

    v18 = v23;
  }
}

void __77__PKDeviceScorer__getScoreWithNonce_cryptogram_challengeResponse_completion___block_invoke_2(uint64_t a1)
{
  v42 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (*(v2 + 8))
  {
    v3 = mach_absolute_time();
    *&buf = 0;
    *(&buf + 1) = &buf;
    v40 = 0x2020000000;
    v41 = 0;
    v4 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(a1 + 40));
    v5 = *(*(a1 + 32) + 24);
    if (v5 <= 0.0)
    {
      v6 = -1;
    }

    else
    {
      v6 = dispatch_time(0, (v5 * 1000000000.0));
    }

    dispatch_source_set_timer(v4, v6, 0xFFFFFFFFFFFFFFFFLL, 0x5F5E100uLL);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __77__PKDeviceScorer__getScoreWithNonce_cryptogram_challengeResponse_completion___block_invoke_3;
    handler[3] = &unk_1E79CBF50;
    v12 = *(a1 + 32);
    v36 = v3;
    handler[4] = v12;
    v13 = v4;
    v35 = v13;
    dispatch_source_set_event_handler(v13, handler);
    dispatch_resume(v13);
    v14 = [MEMORY[0x1E696AFB0] UUID];
    v15 = [*(a1 + 72) copy];
    v16 = _Block_copy(v15);
    [*(*(a1 + 32) + 16) setObject:v16 forKeyedSubscript:v14];

    v17 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = MEMORY[0x1E696AEC0];
      v19 = [*(*(a1 + 32) + 32) serverEndpointIdentifier];
      v20 = [v18 stringWithFormat:@"Fetching DSP for: %@", v19];
      *v37 = 138477827;
      v38 = v20;
      _os_log_impl(&dword_1AD337000, v17, OS_LOG_TYPE_DEFAULT, "%{private}@", v37, 0xCu);
    }

    v21 = objc_alloc_init(FZf7GLuluME5TMqw);
    v22 = [*(*(a1 + 32) + 32) secureElementID];
    [(FZf7GLuluME5TMqw *)v21 setSeid:v22];

    [(FZf7GLuluME5TMqw *)v21 setNonce:*(a1 + 48)];
    [(FZf7GLuluME5TMqw *)v21 setHostChallenge:*(a1 + 56)];
    [(FZf7GLuluME5TMqw *)v21 setChallengeResponse:*(a1 + 64)];
    objc_initWeak(v37, *(a1 + 32));
    v23 = *(*(a1 + 32) + 8);
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __77__PKDeviceScorer__getScoreWithNonce_cryptogram_challengeResponse_completion___block_invoke_130;
    v28[3] = &unk_1E79CEEB8;
    v29 = *(a1 + 40);
    p_buf = &buf;
    v24 = v13;
    v30 = v24;
    v33[1] = v3;
    objc_copyWeak(v33, v37);
    v25 = v14;
    v31 = v25;
    [v23 scoreWithScoreRequest:v21 completionHandler:v28];

    objc_destroyWeak(v33);
    objc_destroyWeak(v37);

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v7 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = MEMORY[0x1E696AEC0];
      v9 = [*(v2 + 32) serverEndpointIdentifier];
      v10 = [v8 stringWithFormat:@"Error: Could not generate scorer for DSP requested by: %@", v9];
      LODWORD(buf) = 138477827;
      *(&buf + 4) = v10;
      _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "%{private}@", &buf, 0xCu);
    }

    v11 = *(a1 + 40);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __77__PKDeviceScorer__getScoreWithNonce_cryptogram_challengeResponse_completion___block_invoke_149;
    block[3] = &unk_1E79C4428;
    v27 = *(a1 + 72);
    dispatch_async(v11, block);
  }
}

uint64_t __77__PKDeviceScorer__getScoreWithNonce_cryptogram_challengeResponse_completion___block_invoke_3(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = mach_absolute_time();
  v3 = PKSecondsFromMachTimeInterval(v2 - *(a1 + 48));
  v4 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = [*(*(a1 + 32) + 32) serverEndpointIdentifier];
    v7 = [v5 stringWithFormat:@"Timeout fetching DSP for: %@, time taken(seconds):%f ", v6, *&v3];
    *buf = 138477827;
    v10 = v7;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "%{private}@", buf, 0xCu);
  }

  AnalyticsSendEvent();
  dispatch_source_cancel(*(a1 + 40));
  return [*(*(a1 + 32) + 8) stop];
}

void __77__PKDeviceScorer__getScoreWithNonce_cryptogram_challengeResponse_completion___block_invoke_130(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __77__PKDeviceScorer__getScoreWithNonce_cryptogram_challengeResponse_completion___block_invoke_2_131;
  v16[3] = &unk_1E79CEE90;
  v22 = *(a1 + 56);
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v12 = *(a1 + 72);
  v17 = v11;
  v23[1] = v12;
  objc_copyWeak(v23, (a1 + 64));
  v18 = v9;
  v19 = v8;
  v20 = v7;
  v21 = *(a1 + 48);
  v13 = v7;
  v14 = v8;
  v15 = v9;
  dispatch_async(v10, v16);

  objc_destroyWeak(v23);
}

void __77__PKDeviceScorer__getScoreWithNonce_cryptogram_challengeResponse_completion___block_invoke_2_131(uint64_t a1)
{
  v22[1] = *MEMORY[0x1E69E9840];
  v1 = *(*(a1 + 72) + 8);
  if ((*(v1 + 24) & 1) == 0)
  {
    *(v1 + 24) = 1;
    dispatch_source_cancel(*(a1 + 32));
    v3 = mach_absolute_time();
    v4 = PKSecondsFromMachTimeInterval(v3 - *(a1 + 88));
    v21 = @"duration";
    v5 = [MEMORY[0x1E696AD98] numberWithDouble:?];
    v22[0] = v5;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
    AnalyticsSendEvent();

    WeakRetained = objc_loadWeakRetained((a1 + 80));
    v8 = *(a1 + 40);
    if (v8 || (v13 = *(a1 + 48)) == 0)
    {
      v9 = PKLogFacilityTypeGetObject(7uLL);
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_17;
      }

      v10 = MEMORY[0x1E696AEC0];
      v11 = [v8 localizedDescription];
      if (WeakRetained)
      {
        v12 = [WeakRetained[4] serverEndpointIdentifier];
      }

      else
      {
        v12 = @"no-self";
      }

      v15 = [v10 stringWithFormat:@"Error: Fetching DSP: %@ for: %@ time taken(seconds):%f ", v11, v12, *&v4];
      *buf = 138477827;
      v20 = v15;
    }

    else
    {
      v9 = PKLogFacilityTypeGetObject(7uLL);
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_17;
      }

      v14 = MEMORY[0x1E696AEC0];
      v11 = [v13 hexEncoding];
      if (WeakRetained)
      {
        v12 = [WeakRetained[4] serverEndpointIdentifier];
      }

      else
      {
        v12 = @"no-self";
      }

      v15 = [v14 stringWithFormat:@"DSP: %@ for: %@ time taken(seconds): %f", v11, v12, *&v4];
      *buf = 138477827;
      v20 = v15;
    }

    _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "%{private}@", buf, 0xCu);
    if (WeakRetained)
    {
    }

LABEL_17:
    if (*(a1 + 56))
    {
      v16 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:{objc_msgSend(*(a1 + 56), "bytes")}];
      if (!WeakRetained)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v16 = 0;
      if (!WeakRetained)
      {
LABEL_24:

        return;
      }
    }

    v17 = [WeakRetained[2] objectForKeyedSubscript:*(a1 + 64)];
    v18 = v17;
    if (v17)
    {
      (*(v17 + 16))(v17, v16, *(a1 + 48), *(a1 + 40));
    }

    [WeakRetained[2] setObject:0 forKeyedSubscript:*(a1 + 64)];

    goto LABEL_24;
  }
}

uint64_t __77__PKDeviceScorer__getScoreWithNonce_cryptogram_challengeResponse_completion___block_invoke_149(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, 0, 0);
  }

  return result;
}

- (id)_createScorer
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = [jprL7AuZZkLkFoBK alloc];
  v4 = [(PKDSPContext *)self->_context serverEndpointIdentifier];
  v5 = [(jprL7AuZZkLkFoBK *)v3 initWithServerEndpointIdentifier:v4];

  if (!v5)
  {
    v6 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v27 = 138477827;
      v28 = @"Could not generate context for DSP";
      _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "%{private}@", &v27, 0xCu);
    }
  }

  v7 = [MEMORY[0x1E695DFA8] set];
  v8 = [(PKDSPContext *)self->_context cardholderName];
  if (v8)
  {
    v9 = [[PawuKFL8icsLHMZd alloc] initWithFullName:v8 source:2];
    [v7 addObject:v9];
  }

  else
  {
    v9 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(&v9->super, OS_LOG_TYPE_DEFAULT))
    {
      v27 = 138477827;
      v28 = @"no card holder name supplied for DSP";
      _os_log_impl(&dword_1AD337000, &v9->super, OS_LOG_TYPE_DEFAULT, "%{private}@", &v27, 0xCu);
    }
  }

  v10 = [(PKDSPContext *)self->_context primaryAppleAccountFirstName];
  v11 = [(PKDSPContext *)self->_context primaryAppleAccountLastName];
  v12 = v11;
  if (v10 && v11)
  {
    v13 = [[PawuKFL8icsLHMZd alloc] initWithFirstName:v10 lastName:v11 source:1];
    [v7 addObject:v13];
  }

  else
  {
    v13 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(&v13->super, OS_LOG_TYPE_DEFAULT))
    {
      v27 = 138477827;
      v28 = @"no account supplied for DSP";
      _os_log_impl(&dword_1AD337000, &v13->super, OS_LOG_TYPE_DEFAULT, "%{private}@", &v27, 0xCu);
    }
  }

  v14 = [(PKDSPContext *)self->_context peerPaymentRecipientAddress];
  if (v14)
  {
    v15 = v14;
    v16 = PKIDSNormalizedAddress(v14);

    v17 = [v16 hasPrefix:@"mailto:"];
    v18 = [v16 hasPrefix:@"tel:"];
    if ((v17 & 1) != 0 || v18)
    {
      if (v17)
      {
        v20 = -[NSObject substringFromIndex:](v16, "substringFromIndex:", [@"mailto:" length]);

        v21 = [[PawuKFL8icsLHMZd alloc] initWithEmailAddress:v20 source:3];
      }

      else
      {
        v20 = -[NSObject substringFromIndex:](v16, "substringFromIndex:", [@"tel:" length]);

        v21 = [[PawuKFL8icsLHMZd alloc] initWithPhoneNumber:v20 source:3];
      }

      p_super = &v21->super;
      v16 = v20;
      [(PawuKFL8icsLHMZd *)v21 setType:1];
      [v7 addObject:p_super];
    }

    else
    {
      p_super = PKLogFacilityTypeGetObject(0);
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
      {
        v27 = 138477827;
        v28 = @"unknown peer payment recipient address type supplied for DSP";
        _os_log_impl(&dword_1AD337000, p_super, OS_LOG_TYPE_DEFAULT, "%{private}@", &v27, 0xCu);
      }
    }
  }

  else
  {
    v16 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v27 = 138477827;
      v28 = @"no peer payment recipient address supplied for DSP";
      _os_log_impl(&dword_1AD337000, v16, OS_LOG_TYPE_DEFAULT, "%{private}@", &v27, 0xCu);
    }
  }

  [(jprL7AuZZkLkFoBK *)v5 setIdentities:v7];
  v22 = [(PKDSPContext *)self->_context eventFrequency];
  if (v22 <= 2)
  {
    [(jprL7AuZZkLkFoBK *)v5 setEventFrequency:v22];
  }

  v23 = [(PKDSPContext *)self->_context phoneNumber];
  if (v23)
  {
    [(jprL7AuZZkLkFoBK *)v5 setPhoneNumber:v23];
  }

  else
  {
    v24 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v27 = 138477827;
      v28 = @"no phonenumber supplied for DSP";
      _os_log_impl(&dword_1AD337000, v24, OS_LOG_TYPE_DEFAULT, "%{private}@", &v27, 0xCu);
    }
  }

  v25 = [CdQwUTvJnDEPQgR8 scorerWithContext:v5];

  return v25;
}

@end