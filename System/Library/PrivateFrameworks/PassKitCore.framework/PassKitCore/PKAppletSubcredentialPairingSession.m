@interface PKAppletSubcredentialPairingSession
+ (id)createSessionWithDelegate:(id)a3;
- (id)prewarmWithManufacturerIdentifier:(id)a3;
- (id)probeTerminalForPairingStatus;
- (id)startPairingWithKeyDisplayName:(id)a3 pairingPassword:(id)a4 radioTechnologies:(unint64_t)a5 bindingAttestation:(id)a6;
- (id)trackSubcredential:(id)a3 encryptedContainer:(id)a4 withReceipt:(id)a5;
- (void)didFinishFirstTransactionForSession:(id)a3 error:(id)a4;
- (void)didFinishPreWarmWithResult:(id)a3;
- (void)didFinishProbingWithBrandCode:(unint64_t)a3 error:(id)a4;
- (void)didStartPairing;
- (void)keyPairingSession:(id)a3 didFinishPairingWithKey:(id)a4 trackingRequest:(id)a5 error:(id)a6;
@end

@implementation PKAppletSubcredentialPairingSession

+ (id)createSessionWithDelegate:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [(PKDASession *)[PKAppletSubcredentialPairingSession alloc] initWithDelegate:v3];

  v5 = [MEMORY[0x1E699A138] sharedManager];
  v6 = [v5 createPairingSessionWithDelegate:v4];

  if (v6)
  {
    [(PKDASession *)v4 setSession:v6];
    v7 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 134217984;
      v12 = v4;
      _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "Starting pairing session: %p", &v11, 0xCu);
    }

    v8 = v4;
  }

  else
  {
    v9 = PKLogFacilityTypeGetObject(0x17uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "Failed to create owner pairing session!", &v11, 2u);
    }

    [(PKDASession *)v4 setDelegate:0];
    v8 = 0;
  }

  return v8;
}

- (id)prewarmWithManufacturerIdentifier:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(PKDASession *)self state]!= 2)
  {
    v5 = PKLogFacilityTypeGetObject(0x17uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "Session is in invalid state for pairing operation", &v10, 2u);
    }
  }

  v6 = [(PKDASession *)self session];
  v7 = [v6 preWarmForManufacturer:v4];

  if (v7)
  {
    v8 = PKLogFacilityTypeGetObject(0x17uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v7;
      _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "Prewarming failed with error: %@", &v10, 0xCu);
    }
  }

  return v7;
}

- (id)probeTerminalForPairingStatus
{
  v10 = *MEMORY[0x1E69E9840];
  if ([(PKDASession *)self state]!= 2)
  {
    v3 = PKLogFacilityTypeGetObject(0x17uLL);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v8) = 0;
      _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "Session is in invalid state for pairing operation", &v8, 2u);
    }
  }

  v4 = [(PKDASession *)self session];
  v5 = [v4 startProbing];

  if (v5)
  {
    v6 = PKLogFacilityTypeGetObject(0x17uLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v5;
      _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "Probing failed with error: %@", &v8, 0xCu);
    }
  }

  return v5;
}

- (id)startPairingWithKeyDisplayName:(id)a3 pairingPassword:(id)a4 radioTechnologies:(unint64_t)a5 bindingAttestation:(id)a6
{
  v22 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if ([(PKDASession *)self state]!= 2)
  {
    v13 = PKLogFacilityTypeGetObject(0x17uLL);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v20) = 0;
      _os_log_impl(&dword_1AD337000, v13, OS_LOG_TYPE_DEFAULT, "Session is in invalid state for pairing operation", &v20, 2u);
    }
  }

  if (a5)
  {
    if ((a5 & 2) != 0)
    {
      v14 = 2;
    }

    else
    {
      v14 = 1;
    }

    v15 = [(PKDASession *)self session];
    v16 = [v15 startKeyPairingWithPassword:v11 displayName:v10 transport:v14 bindingAttestation:v12];

    if (v16)
    {
      v17 = PKLogFacilityTypeGetObject(0x17uLL);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v20 = 138412290;
        v21 = v16;
        _os_log_impl(&dword_1AD337000, v17, OS_LOG_TYPE_DEFAULT, "Key pairing failed with error: %@", &v20, 0xCu);
      }
    }
  }

  else
  {
    v18 = PKLogFacilityTypeGetObject(0x17uLL);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v20) = 0;
      _os_log_impl(&dword_1AD337000, v18, OS_LOG_TYPE_DEFAULT, "Session provided invalid wireless transport type", &v20, 2u);
    }

    v16 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:-1 userInfo:0];
  }

  return v16;
}

- (id)trackSubcredential:(id)a3 encryptedContainer:(id)a4 withReceipt:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(PKDASession *)self state]== 2)
  {
    v11 = PKDAAlishaKeyEncryptedRequestFromSubcredentialEncryptedRequest(v9);
    v12 = [(PKDASession *)self session];
    v13 = [v8 identifier];
    v14 = [v12 setTrackingReceipt:v10 vehicleMobilizationData:v11 forKeyWithIdentifier:v13];
  }

  else
  {
    v15 = PKLogFacilityTypeGetObject(0x17uLL);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 0;
      _os_log_impl(&dword_1AD337000, v15, OS_LOG_TYPE_DEFAULT, "Session is in invalid state for track operation", v17, 2u);
    }

    v14 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:-1 userInfo:0];
  }

  return v14;
}

- (void)keyPairingSession:(id)a3 didFinishPairingWithKey:(id)a4 trackingRequest:(id)a5 error:(id)a6
{
  v20[1] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = v13;
  if (!v11 || v13)
  {
    if (!v13)
    {
      v17 = MEMORY[0x1E696ABC0];
      v19 = *MEMORY[0x1E696A278];
      v20[0] = @"Pairing finished with no error or key";
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
      v14 = [v17 errorWithDomain:@"PKSubcredentialProvisioningErrorDomain" code:1 userInfo:v18];
    }

    v15 = [(PKDASession *)self delegate];
    [(PKSubcredentialEncryptedContainer *)v15 appletSubcredentialPairingSession:self didEndPairingWithError:v14];
  }

  else
  {
    v14 = [[PKAppletSubcredential alloc] initWithKeyInformation:v11];
    v15 = [[PKSubcredentialEncryptedContainer alloc] initWithRequest:v12];
    v16 = [(PKDASession *)self delegate];
    [v16 appletSubcredentialPairingSession:self didEndPairingWithSubcredential:v14 registrationData:v15];
  }
}

- (void)didFinishFirstTransactionForSession:(id)a3 error:(id)a4
{
  v5 = a4;
  v6 = [(PKDASession *)self delegate];
  [v6 appletSubcredentialPairingSessionDidFirstTransaction:self withError:v5];
}

- (void)didFinishPreWarmWithResult:(id)a3
{
  v4 = a3;
  v5 = [(PKDASession *)self delegate];
  [v5 appletSubcredentialPairingSession:self didFinishPreWarmWithResult:v4];
}

- (void)didFinishProbingWithBrandCode:(unint64_t)a3 error:(id)a4
{
  v6 = a4;
  v7 = [(PKDASession *)self delegate];
  [v7 appletSubcredentialPairingSession:self didFinishProbingTerminalWithError:v6 brandCode:a3];
}

- (void)didStartPairing
{
  v3 = [(PKDASession *)self delegate];
  [v3 appletSubcredentialPairingSessionDidBeginPairing:self];
}

@end