@interface PKPeerPaymentDeviceScoreEncryptedPayloadManager
- (PKPeerPaymentDeviceScoreEncryptedPayloadManager)initWithDeviceScoreAttributes:(id)a3;
- (id)_errorForUnavailableDeviceScoreWithUnderlyingError:(id)a3;
- (void)_setupDeviceScoreService;
- (void)deviceScoreWithCompletion:(id)a3;
- (void)provideSessionFeedbackWithIngested:(BOOL)a3;
- (void)setDeviceScoreEncryptedPayloadVersion:(unint64_t)a3;
- (void)updateWithNewAttributes:(id)a3;
@end

@implementation PKPeerPaymentDeviceScoreEncryptedPayloadManager

- (PKPeerPaymentDeviceScoreEncryptedPayloadManager)initWithDeviceScoreAttributes:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PKPeerPaymentDeviceScoreEncryptedPayloadManager;
  v6 = [(PKPeerPaymentDeviceScoreEncryptedPayloadManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_currentAttributes, a3);
    -[PKPeerPaymentDeviceScoreEncryptedPayloadManager setDeviceScoreEncryptedPayloadVersion:](v7, "setDeviceScoreEncryptedPayloadVersion:", [v5 payloadVersion]);
    [(PKPeerPaymentDeviceScoreEncryptedPayloadManager *)v7 updateWithNewAttributes:v5];
  }

  return v7;
}

- (void)updateWithNewAttributes:(id)a3
{
  v79 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 endpoint];
  if ([(PKPeerPaymentDeviceScoreAttributes *)self->_currentAttributes endpoint]!= v5)
  {
    [(PKPeerPaymentDeviceScoreAttributes *)self->_currentAttributes setEndpoint:v5];
  }

  v6 = [v4 recipientAddresses];
  v7 = [(PKPeerPaymentDeviceScoreAttributes *)self->_currentAttributes recipientAddresses];
  v8 = v7;
  if (v6 && v7)
  {
    v9 = [v7 isEqual:v6];

    if (v9)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (v8 != v6)
  {
LABEL_8:
    [(PKPeerPaymentDeviceScoreAttributes *)self->_currentAttributes setRecipientAddresses:v6];
  }

LABEL_9:
  v10 = [v4 recipientAddress];
  v11 = [(PKPeerPaymentDeviceScoreAttributes *)self->_currentAttributes recipientAddress];
  v12 = v11;
  if (!v10 || !v11)
  {

    if (v12 == v10)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v13 = [v11 isEqual:v10];

  if ((v13 & 1) == 0)
  {
LABEL_14:
    [(PKPeerPaymentDeviceScoreAttributes *)self->_currentAttributes setRecipientAddress:v10];
  }

LABEL_15:
  v14 = [v4 quoteRequestDestination];
  if ([(PKPeerPaymentDeviceScoreAttributes *)self->_currentAttributes quoteRequestDestination]!= v14)
  {
    [(PKPeerPaymentDeviceScoreAttributes *)self->_currentAttributes setQuoteRequestDestination:v14];
  }

  v15 = [v4 messagesContext];
  if ([(PKPeerPaymentDeviceScoreAttributes *)self->_currentAttributes messagesContext]!= v15)
  {
    [(PKPeerPaymentDeviceScoreAttributes *)self->_currentAttributes setMessagesContext:v15];
  }

  [(PKPeerPaymentDeviceScoreEncryptedPayloadManager *)self _setupDeviceScoreService];
  if (self->_odiServiceProviderAssessment)
  {
    v16 = objc_alloc_init(MEMORY[0x1E69983B0]);
    v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v18 = +[PKAppleAccountManager sharedInstance];
    v19 = [v18 appleAccountInformation];

    v20 = [v19 firstName];

    if (v20)
    {
      v21 = [v19 firstName];
      [v17 setObject:v21 forKey:*MEMORY[0x1E6998510]];
    }

    v22 = [v19 lastName];

    if (v22)
    {
      v23 = [v19 lastName];
      [v17 setObject:v23 forKey:*MEMORY[0x1E6998538]];
    }

    v67 = v19;
    v24 = [(PKPeerPaymentDeviceScoreAttributes *)self->_currentAttributes recipientAddress];
    if (!v24)
    {
LABEL_37:
      v47 = PKPeerPaymentDeviceScoreTransactionTypeForEndpoint([(PKPeerPaymentDeviceScoreAttributes *)self->_currentAttributes endpoint], [(PKPeerPaymentDeviceScoreAttributes *)self->_currentAttributes quoteRequestDestination], [(PKPeerPaymentDeviceScoreAttributes *)self->_currentAttributes messagesContext]);
      if (!v47)
      {
        v55 = MEMORY[0x1E695E0F0];
LABEL_53:
        if ([v55 count])
        {
          v62 = [v17 dictionaryWithValuesForKeys:v55];
          v63 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v62];

          v17 = v63;
        }

        [v16 setAttributes:v17];
        v64 = PKLogFacilityTypeGetObject(0xCuLL);
        if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v17;
          _os_log_impl(&dword_1AD337000, v64, OS_LOG_TYPE_DEFAULT, "PKPeerPaymentDeviceScoreEncryptedPayloadManager: Updating ODI assessment with attributes: %@", &buf, 0xCu);
        }

        [(PKODIAssessment *)self->_odiServiceProviderAssessment updateAssessment:v16];
        goto LABEL_58;
      }

      v48 = v47;
      v49 = PKPeerPaymentDeviceScoreEncryptedPayloadTransactionTypeToString(v47);
      v50 = *MEMORY[0x1E69984C8];
      [v17 setObject:v49 forKey:*MEMORY[0x1E69984C8]];

      if (v48 == 8)
      {
        v51 = [v6 copy];
        v52 = *MEMORY[0x1E6998430];
        [v17 setObject:v51 forKey:*MEMORY[0x1E6998430]];

        v69 = v52;
        v53 = MEMORY[0x1E695DEC8];
        p_buf = &v69;
LABEL_47:
        v57 = 1;
LABEL_52:
        v55 = [v53 arrayWithObjects:p_buf count:v57];
        goto LABEL_53;
      }

      if (v48 > 4)
      {
        if ((v48 - 5) < 2)
        {
          goto LABEL_46;
        }

        if (v48 == 7)
        {
          v58 = *MEMORY[0x1E6998538];
          v72[0] = *MEMORY[0x1E6998510];
          v72[1] = v58;
          v72[2] = v50;
          v53 = MEMORY[0x1E695DEC8];
          p_buf = v72;
          goto LABEL_50;
        }
      }

      else if ((v48 - 1) >= 2)
      {
        if (v48 != 3)
        {
          v56 = *MEMORY[0x1E6998538];
          v71[0] = *MEMORY[0x1E6998510];
          v71[1] = v56;
          v71[2] = v50;
          v53 = MEMORY[0x1E695DEC8];
          p_buf = v71;
LABEL_50:
          v57 = 3;
          goto LABEL_52;
        }

LABEL_46:
        v70 = v50;
        v53 = MEMORY[0x1E695DEC8];
        p_buf = &v70;
        goto LABEL_47;
      }

      v59 = *MEMORY[0x1E6998458];
      *&buf = *MEMORY[0x1E6998450];
      *(&buf + 1) = v59;
      v60 = *MEMORY[0x1E6998448];
      v74 = *MEMORY[0x1E6998460];
      v75 = v60;
      v61 = *MEMORY[0x1E6998538];
      v76 = *MEMORY[0x1E6998510];
      v77 = v61;
      v78 = v50;
      v53 = MEMORY[0x1E695DEC8];
      p_buf = &buf;
      v57 = 7;
      goto LABEL_52;
    }

    v66 = v16;
    v25 = [PKContactResolver alloc];
    v26 = objc_alloc_init(MEMORY[0x1E695CE18]);
    v27 = *MEMORY[0x1E695C230];
    v68[0] = *MEMORY[0x1E695C240];
    v68[1] = v27;
    v28 = *MEMORY[0x1E695C208];
    v68[2] = *MEMORY[0x1E695C330];
    v68[3] = v28;
    v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v68 count:4];
    v30 = [(PKContactResolver *)v25 initWithContactStore:v26 keysToFetch:v29];

    v65 = v30;
    v31 = [(PKContactResolver *)v30 contactForHandle:v24];
    v32 = v31;
    if (v31)
    {
      v33 = [v31 givenName];

      if (v33)
      {
        v34 = [v32 givenName];
        [v17 setObject:v34 forKey:*MEMORY[0x1E6998450]];
      }

      v35 = [v32 familyName];

      if (v35)
      {
        v36 = [v32 familyName];
        [v17 setObject:v36 forKey:*MEMORY[0x1E6998458]];
      }
    }

    if (PKIsEmailAddress(v24))
    {
      [v17 setObject:v24 forKey:*MEMORY[0x1E6998448]];
      v37 = [v32 phoneNumbers];
      v38 = [v37 count];

      if (v38)
      {
        v39 = [v32 phoneNumbers];
        v40 = [v39 firstObject];
        v41 = [v40 value];

        v42 = [v41 stringValue];
        [v17 setObject:v42 forKey:*MEMORY[0x1E6998460]];

LABEL_35:
      }
    }

    else
    {
      [v17 setObject:v24 forKey:*MEMORY[0x1E6998460]];
      v43 = [v32 emailAddresses];
      v44 = [v43 count];

      if (v44)
      {
        v45 = [v32 emailAddresses];
        v46 = [v45 firstObject];
        v41 = [v46 value];

        [v17 setObject:v41 forKey:*MEMORY[0x1E6998448]];
        goto LABEL_35;
      }
    }

    v16 = v66;
    goto LABEL_37;
  }

LABEL_58:
}

- (void)deviceScoreWithCompletion:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(PKPeerPaymentDeviceScoreAttributes *)self->_currentAttributes endpoint]== 1)
  {
    if (v4)
    {
      (*(v4 + 2))(v4, 0, 0, 0, 0);
    }
  }

  else
  {
    self->_isScoringInProgress = 1;
    v5 = [(PKPeerPaymentDeviceScoreAttributes *)self->_currentAttributes key];
    if ([(PKPeerPaymentDeviceScoreAttributes *)self->_currentAttributes payloadVersion]<= 2)
    {
      v6 = [(PKPeerPaymentDeviceScoreAttributes *)self->_currentAttributes key];

      v7 = PKLogFacilityTypeGetObject(0xCuLL);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v16 = v6;
        _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "PKPeerPaymentDeviceScoreEncryptedPayloadManager: Score: Calling computeAssessment and waitForAssessmentWithContinueBlock: for key: %@.", buf, 0xCu);
      }

      v8 = mach_absolute_time();
      [(PKODIAssessment *)self->_odiServiceProviderAssessment computeAssessment];
      odiServiceProviderAssessment = self->_odiServiceProviderAssessment;
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __77__PKPeerPaymentDeviceScoreEncryptedPayloadManager_deviceScoreWithCompletion___block_invoke;
      v10[3] = &unk_1E79DACB0;
      v5 = v6;
      v11 = v5;
      v12 = self;
      v14 = v8;
      v13 = v4;
      [(PKODIAssessment *)odiServiceProviderAssessment waitForAssessmentWithContinueBlock:v10];
    }
  }
}

void __77__PKPeerPaymentDeviceScoreEncryptedPayloadManager_deviceScoreWithCompletion___block_invoke(uint64_t a1, void *a2, int a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (a3)
  {
    v6 = PKLogFacilityTypeGetObject(0xCuLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v13 = 138412290;
      v14 = v7;
      _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "PKPeerPaymentDeviceScoreEncryptedPayloadManager: Score: waitForAssessmentWithContinueBlock: Did timeout for key: %@. Calling completion with error", &v13, 0xCu);
    }

    v8 = [*(a1 + 40) _errorForUnavailableDeviceScoreWithUnderlyingError:0];
  }

  else
  {
    v8 = 0;
  }

  v9 = mach_absolute_time();
  v10 = PKSecondsFromMachTimeInterval(v9 - *(a1 + 56));
  v11 = PKLogFacilityTypeGetObject(0xCuLL);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(a1 + 32);
    v13 = 134218242;
    v14 = v10;
    v15 = 2112;
    v16 = v12;
    _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "PKPeerPaymentDeviceScoreEncryptedPayloadManager: Score response took: %gs for key: %@.", &v13, 0x16u);
  }

  *(*(a1 + 40) + 8) = 0;
  [*(a1 + 40) setDeviceScoreEncryptedPayloadVersion:*(*(a1 + 40) + 16)];
  (*(*(a1 + 48) + 16))();
}

- (void)provideSessionFeedbackWithIngested:(BOOL)a3
{
  odiServiceProviderAssessment = self->_odiServiceProviderAssessment;
  if (odiServiceProviderAssessment)
  {
    v5 = a3;
    if ([(PKODIAssessment *)odiServiceProviderAssessment currentAssessmentDidTimeout])
    {
      v6 = 2;
    }

    else
    {
      v6 = !v5;
    }

    v7 = self->_odiServiceProviderAssessment;

    [(PKODIAssessment *)v7 provideSessionFeedback:v6];
  }
}

- (void)setDeviceScoreEncryptedPayloadVersion:(unint64_t)a3
{
  if (PKForcePeerPaymentDeviceScoreVersion())
  {
    v5 = PKGetPeerPaymentDeviceScoreVersion();
    v6 = 1;
    if (v5 != 1)
    {
      v6 = 2;
    }

    if (v5)
    {
      a3 = v6;
    }

    else
    {
      a3 = 0;
    }
  }

  if ([(PKPeerPaymentDeviceScoreAttributes *)self->_currentAttributes payloadVersion]!= a3)
  {
    if (self->_isScoringInProgress)
    {
      self->_pendingDeviceScoreEncryptedPayloadVersion = a3;
    }

    else
    {
      [(PKPeerPaymentDeviceScoreAttributes *)self->_currentAttributes setPayloadVersion:a3];
      self->_pendingDeviceScoreEncryptedPayloadVersion = a3;

      [(PKPeerPaymentDeviceScoreEncryptedPayloadManager *)self _setupDeviceScoreService];
    }
  }
}

- (void)_setupDeviceScoreService
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = PKLogFacilityTypeGetObject(0xCuLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(PKPeerPaymentDeviceScoreAttributes *)self->_currentAttributes payloadVersion];
    v5 = [(PKPeerPaymentDeviceScoreAttributes *)self->_currentAttributes endpoint];
    if (v5 - 1 > 4)
    {
      v6 = 0;
    }

    else
    {
      v6 = off_1E79DAD20[v5 - 1];
    }

    v22 = 134218242;
    v23 = v4;
    v24 = 2112;
    v25 = v6;
    _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "PKPeerPaymentDeviceScoreEncryptedPayloadManager: Score: Calling _setupDeviceScoreService with payload version: %lu, endpointIdentifier: %@.", &v22, 0x16u);
  }

  if ([(PKPeerPaymentDeviceScoreAttributes *)self->_currentAttributes payloadVersion]<= 2)
  {
    if ([(PKPeerPaymentDeviceScoreAttributes *)self->_currentAttributes endpoint]== 1)
    {
      odiServiceProviderAssessment = self->_odiServiceProviderAssessment;
      self->_odiServiceProviderAssessment = 0;
LABEL_32:

      return;
    }

    odiServiceProviderAssessment = PKPassKitCoreBundle();
    v8 = [(PKPeerPaymentDeviceScoreAttributes *)self->_currentAttributes endpoint];
    v9 = [(PKPeerPaymentDeviceScoreAttributes *)self->_currentAttributes quoteRequestDestination];
    v10 = [(PKPeerPaymentDeviceScoreAttributes *)self->_currentAttributes messagesContext];
    if (v8 == 2)
    {
      v11 = MEMORY[0x1E6998580];
    }

    else
    {
      if (v8 == 5)
      {
        v11 = MEMORY[0x1E6998588];
        v12 = MEMORY[0x1E6998610];
        goto LABEL_12;
      }

      if (v8 - 3 > 1)
      {
        v13 = 0;
        goto LABEL_17;
      }

      v13 = 0;
      if (v9 <= 2)
      {
        if (v9 < 2)
        {
          v11 = MEMORY[0x1E6998588];
          v12 = MEMORY[0x1E6998618];
LABEL_12:
          if (v10 == 2)
          {
            v11 = v12;
          }

          goto LABEL_16;
        }

        if (v9 == 2)
        {
LABEL_40:
          v11 = MEMORY[0x1E6998578];
          goto LABEL_16;
        }

        goto LABEL_17;
      }

      if (v9 == 3)
      {
        v11 = MEMORY[0x1E6998598];
        goto LABEL_16;
      }

      if (v9 == 4)
      {
        goto LABEL_40;
      }

      if (v9 != 5)
      {
LABEL_17:
        v14 = [(PKODIServiceProviderAssessment *)self->_odiServiceProviderAssessment serviceIdentifier];
        v15 = v13;
        v16 = v14;
        v17 = v16;
        if (v15 != v16)
        {
          if (v15 && v16)
          {
            v18 = [v15 isEqualToString:v16];

            if (v18)
            {
              goto LABEL_31;
            }
          }

          else
          {
          }

          v19 = self->_odiServiceProviderAssessment;
          if (v19)
          {
            [(PKODIServiceProviderAssessment *)v19 setServiceIdentifier:v15];
          }

          else
          {
            v20 = [[PKODIServiceProviderAssessment alloc] initWithServiceProviderIdentifier:v15 locationBundle:odiServiceProviderAssessment];
            v21 = self->_odiServiceProviderAssessment;
            self->_odiServiceProviderAssessment = v20;

            [(PKODIAssessment *)self->_odiServiceProviderAssessment startAssessment];
          }

          goto LABEL_31;
        }

LABEL_31:
        goto LABEL_32;
      }

      v11 = MEMORY[0x1E6998590];
    }

LABEL_16:
    v13 = *v11;
    goto LABEL_17;
  }
}

- (id)_errorForUnavailableDeviceScoreWithUnderlyingError:(id)a3
{
  v3 = a3;
  v4 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentGen.isa, 0);
  v5 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentGen_0.isa, 0);
  v6 = [v5 stringByAppendingString:@"\n\n(Internal Only: Device Score Unavailable)"];

  v7 = [MEMORY[0x1E695DF90] dictionary];
  [v7 setObject:v4 forKeyedSubscript:*MEMORY[0x1E696A588]];
  [v7 setObject:v6 forKeyedSubscript:*MEMORY[0x1E696A598]];
  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ - %@", v4, v6];
  [v7 setObject:v8 forKeyedSubscript:*MEMORY[0x1E696A578]];

  if (v3)
  {
    [v7 setObject:v3 forKeyedSubscript:*MEMORY[0x1E696AA08]];
  }

  v9 = MEMORY[0x1E696ABC0];
  v10 = [v7 copy];
  v11 = [v9 errorWithDomain:@"PKPassKitErrorDomain" code:-7000 userInfo:v10];

  return v11;
}

@end