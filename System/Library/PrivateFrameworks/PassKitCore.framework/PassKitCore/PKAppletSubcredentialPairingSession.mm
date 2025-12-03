@interface PKAppletSubcredentialPairingSession
+ (id)createSessionWithDelegate:(id)delegate;
- (id)prewarmWithManufacturerIdentifier:(id)identifier;
- (id)probeTerminalForPairingStatus;
- (id)startPairingWithKeyDisplayName:(id)name pairingPassword:(id)password radioTechnologies:(unint64_t)technologies bindingAttestation:(id)attestation;
- (id)trackSubcredential:(id)subcredential encryptedContainer:(id)container withReceipt:(id)receipt;
- (void)didFinishFirstTransactionForSession:(id)session error:(id)error;
- (void)didFinishPreWarmWithResult:(id)result;
- (void)didFinishProbingWithBrandCode:(unint64_t)code error:(id)error;
- (void)didStartPairing;
- (void)keyPairingSession:(id)session didFinishPairingWithKey:(id)key trackingRequest:(id)request error:(id)error;
@end

@implementation PKAppletSubcredentialPairingSession

+ (id)createSessionWithDelegate:(id)delegate
{
  v13 = *MEMORY[0x1E69E9840];
  delegateCopy = delegate;
  v4 = [(PKDASession *)[PKAppletSubcredentialPairingSession alloc] initWithDelegate:delegateCopy];

  mEMORY[0x1E699A138] = [MEMORY[0x1E699A138] sharedManager];
  v6 = [mEMORY[0x1E699A138] createPairingSessionWithDelegate:v4];

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

- (id)prewarmWithManufacturerIdentifier:(id)identifier
{
  v12 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if ([(PKDASession *)self state]!= 2)
  {
    v5 = PKLogFacilityTypeGetObject(0x17uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "Session is in invalid state for pairing operation", &v10, 2u);
    }
  }

  session = [(PKDASession *)self session];
  v7 = [session preWarmForManufacturer:identifierCopy];

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

  session = [(PKDASession *)self session];
  startProbing = [session startProbing];

  if (startProbing)
  {
    v6 = PKLogFacilityTypeGetObject(0x17uLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = startProbing;
      _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "Probing failed with error: %@", &v8, 0xCu);
    }
  }

  return startProbing;
}

- (id)startPairingWithKeyDisplayName:(id)name pairingPassword:(id)password radioTechnologies:(unint64_t)technologies bindingAttestation:(id)attestation
{
  v22 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  passwordCopy = password;
  attestationCopy = attestation;
  if ([(PKDASession *)self state]!= 2)
  {
    v13 = PKLogFacilityTypeGetObject(0x17uLL);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v20) = 0;
      _os_log_impl(&dword_1AD337000, v13, OS_LOG_TYPE_DEFAULT, "Session is in invalid state for pairing operation", &v20, 2u);
    }
  }

  if (technologies)
  {
    if ((technologies & 2) != 0)
    {
      v14 = 2;
    }

    else
    {
      v14 = 1;
    }

    session = [(PKDASession *)self session];
    v16 = [session startKeyPairingWithPassword:passwordCopy displayName:nameCopy transport:v14 bindingAttestation:attestationCopy];

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

- (id)trackSubcredential:(id)subcredential encryptedContainer:(id)container withReceipt:(id)receipt
{
  subcredentialCopy = subcredential;
  containerCopy = container;
  receiptCopy = receipt;
  if ([(PKDASession *)self state]== 2)
  {
    v11 = PKDAAlishaKeyEncryptedRequestFromSubcredentialEncryptedRequest(containerCopy);
    session = [(PKDASession *)self session];
    identifier = [subcredentialCopy identifier];
    v14 = [session setTrackingReceipt:receiptCopy vehicleMobilizationData:v11 forKeyWithIdentifier:identifier];
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

- (void)keyPairingSession:(id)session didFinishPairingWithKey:(id)key trackingRequest:(id)request error:(id)error
{
  v20[1] = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  keyCopy = key;
  requestCopy = request;
  errorCopy = error;
  v14 = errorCopy;
  if (!keyCopy || errorCopy)
  {
    if (!errorCopy)
    {
      v17 = MEMORY[0x1E696ABC0];
      v19 = *MEMORY[0x1E696A278];
      v20[0] = @"Pairing finished with no error or key";
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
      v14 = [v17 errorWithDomain:@"PKSubcredentialProvisioningErrorDomain" code:1 userInfo:v18];
    }

    delegate = [(PKDASession *)self delegate];
    [(PKSubcredentialEncryptedContainer *)delegate appletSubcredentialPairingSession:self didEndPairingWithError:v14];
  }

  else
  {
    v14 = [[PKAppletSubcredential alloc] initWithKeyInformation:keyCopy];
    delegate = [[PKSubcredentialEncryptedContainer alloc] initWithRequest:requestCopy];
    delegate2 = [(PKDASession *)self delegate];
    [delegate2 appletSubcredentialPairingSession:self didEndPairingWithSubcredential:v14 registrationData:delegate];
  }
}

- (void)didFinishFirstTransactionForSession:(id)session error:(id)error
{
  errorCopy = error;
  delegate = [(PKDASession *)self delegate];
  [delegate appletSubcredentialPairingSessionDidFirstTransaction:self withError:errorCopy];
}

- (void)didFinishPreWarmWithResult:(id)result
{
  resultCopy = result;
  delegate = [(PKDASession *)self delegate];
  [delegate appletSubcredentialPairingSession:self didFinishPreWarmWithResult:resultCopy];
}

- (void)didFinishProbingWithBrandCode:(unint64_t)code error:(id)error
{
  errorCopy = error;
  delegate = [(PKDASession *)self delegate];
  [delegate appletSubcredentialPairingSession:self didFinishProbingTerminalWithError:errorCopy brandCode:code];
}

- (void)didStartPairing
{
  delegate = [(PKDASession *)self delegate];
  [delegate appletSubcredentialPairingSessionDidBeginPairing:self];
}

@end