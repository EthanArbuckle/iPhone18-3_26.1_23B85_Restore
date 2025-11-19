@interface PKPaymentDevice
+ (id)clientHardwarePlatformInfoHTTPHeader;
+ (id)clientInfoHTTPHeader;
- (PKPaymentDevice)initWithCallbackQueue:(id)a3;
- (id)configurationData;
- (id)trustedDeviceEnrollmentInfo;
- (void)SEPParingInformationWithCompletion:(id)a3;
- (void)_executeDeviceMetadataFetchTasksCompletionHandlers;
- (void)_finishLocationFixWithLocation:(id)a3;
- (void)_populateDeviceMetadata:(id)a3 withFields:(unint64_t)a4 completion:(id)a5;
- (void)configurationDataWithCompletionHandler:(id)a3;
- (void)dealloc;
- (void)locationManager:(id)a3 didFailWithError:(id)a4;
- (void)locationManager:(id)a3 didUpdateLocations:(id)a4;
- (void)paymentDeviceMetadataFields:(unint64_t)a3 completion:(id)a4;
- (void)provisioningDataIncludingDeviceMetadata:(BOOL)a3 withCompletionHandler:(id)a4;
- (void)queueConnectionToTrustedServiceManagerForPushTopic:(id)a3 withCompletion:(id)a4;
- (void)registrationDataWithAuthToken:(id)a3 completionHandler:(id)a4;
- (void)rewrapDataWithCompletionHandler:(id)a3;
- (void)setRegistrationRegionMap:(id)a3 primaryRegionTopic:(id)a4;
- (void)signData:(id)a3 signatureEntanglementMode:(unint64_t)a4 withCompletionHandler:(id)a5;
- (void)signatureForAuthToken:(id)a3 completion:(id)a4;
@end

@implementation PKPaymentDevice

+ (id)clientInfoHTTPHeader
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__PKPaymentDevice_clientInfoHTTPHeader__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (qword_1ED6D16E0 != -1)
  {
    dispatch_once(&qword_1ED6D16E0, block);
  }

  v2 = _MergedGlobals_186;

  return v2;
}

+ (id)clientHardwarePlatformInfoHTTPHeader
{
  if (qword_1ED6D16E8 != -1)
  {
    dispatch_once(&qword_1ED6D16E8, &__block_literal_global_4);
  }

  v3 = qword_1ED6D16D8;

  return v3;
}

- (PKPaymentDevice)initWithCallbackQueue:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = PKPaymentDevice;
  v6 = [(PKPaymentDevice *)&v14 init];
  if (v6)
  {
    v7 = +[PKSecureElement sharedSecureElement];
    secureElement = v6->_secureElement;
    v6->_secureElement = v7;

    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    metdataFetchTasks = v6->_metdataFetchTasks;
    v6->_metdataFetchTasks = v9;

    objc_storeStrong(&v6->_callbackQueue, a3);
    v11 = dispatch_queue_create("PKPaymentDevice", 0);
    internalQueue = v6->_internalQueue;
    v6->_internalQueue = v11;
  }

  return v6;
}

- (void)dealloc
{
  locationFixTimeout = self->_locationFixTimeout;
  if (locationFixTimeout)
  {
    dispatch_source_cancel(locationFixTimeout);
  }

  v4.receiver = self;
  v4.super_class = PKPaymentDevice;
  [(PKPaymentDevice *)&v4 dealloc];
}

void __39__PKPaymentDevice_clientInfoHTTPHeader__block_invoke()
{
  v0 = MEMORY[0x1E696AEC0];
  v1 = PKProductType();
  v22 = [v0 stringWithFormat:@"%@", v1];

  v2 = PKClientHTTPHeaderOSPartOverride();
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = MGCopyAnswer();
    v7 = PKOSVersion();
    v8 = PKDeviceBuildVersion();
    v4 = [v5 stringWithFormat:@"%@%@;%@", v6, v7, v8];;
  }

  v9 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v10 = [v9 infoDictionary];
  v11 = *MEMORY[0x1E695E500];
  v12 = [v10 objectForKey:*MEMORY[0x1E695E500]];

  v13 = [MEMORY[0x1E696AAE8] mainBundle];
  v14 = [v13 infoDictionary];
  v15 = [v14 objectForKey:v11];

  v16 = MEMORY[0x1E696AEC0];
  v17 = [v9 bundleIdentifier];
  v18 = [v13 bundleIdentifier];
  v19 = [v16 stringWithFormat:@"%@/%@ (%@/%@)", v17, v12, v18, v15];

  v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@> <%@> <%@>", v22, v4, v19];
  v21 = _MergedGlobals_186;
  _MergedGlobals_186 = v20;
}

void __55__PKPaymentDevice_clientHardwarePlatformInfoHTTPHeader__block_invoke()
{
  v0 = PKClientHTTPHeaderHardwarePlatformOverride();
  v3 = v0;
  if (v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = PKHardwarePlatform();
  }

  v2 = qword_1ED6D16D8;
  qword_1ED6D16D8 = v1;
}

- (void)queueConnectionToTrustedServiceManagerForPushTopic:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  secureElement = self->_secureElement;
  if (secureElement)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __85__PKPaymentDevice_queueConnectionToTrustedServiceManagerForPushTopic_withCompletion___block_invoke;
    v12[3] = &unk_1E79C4888;
    v12[4] = self;
    v13 = v7;
    [(PKSecureElement *)secureElement connectToServerWithPushTopic:v6 completion:v12];
  }

  else
  {
    v10 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, "No secure element, cannot connect to server with push topic.", v11, 2u);
    }

    if (v8)
    {
      v8[2](v8, 0, 0);
    }
  }
}

void __85__PKPaymentDevice_queueConnectionToTrustedServiceManagerForPushTopic_withCompletion___block_invoke(uint64_t a1, char a2)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = *(*(a1 + 32) + 56);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __85__PKPaymentDevice_queueConnectionToTrustedServiceManagerForPushTopic_withCompletion___block_invoke_2;
    v5[3] = &unk_1E79C4748;
    v7 = a2;
    v6 = v2;
    v4 = v5;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __dispatch_async_ar_block_invoke;
    block[3] = &unk_1E79C4428;
    v9 = v4;
    dispatch_async(v3, block);
  }
}

void __85__PKPaymentDevice_queueConnectionToTrustedServiceManagerForPushTopic_withCompletion___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v2 = 0;
  }

  else
  {
    v2 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:-1 userInfo:0];
  }

  v3 = v2;
  (*(*(a1 + 32) + 16))();
}

- (void)registrationDataWithAuthToken:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __67__PKPaymentDevice_registrationDataWithAuthToken_completionHandler___block_invoke;
    aBlock[3] = &unk_1E79C4D60;
    v14 = v6;
    v15 = self;
    v16 = v7;
    v8 = _Block_copy(aBlock);
    v9 = v8;
    secureElement = self->_secureElement;
    if (secureElement)
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __67__PKPaymentDevice_registrationDataWithAuthToken_completionHandler___block_invoke_399;
      v11[3] = &unk_1E79C5090;
      v12 = v8;
      [(PKSecureElement *)secureElement initializeSecureElementIfNecessaryWithHandler:v11];
    }

    else
    {
      v8[2](v8);
    }
  }
}

void __67__PKPaymentDevice_registrationDataWithAuthToken_completionHandler___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(PKPaymentDeviceRegistrationData);
  [(PKPaymentDeviceRegistrationData *)v2 setAuthorizationHeader:*(a1 + 32)];
  -[PKPaymentDeviceRegistrationData setDevSigned:](v2, "setDevSigned:", [*(*(a1 + 40) + 32) isProductionSigned] ^ 1);
  v3 = PKProductType();
  [(PKPaymentDeviceRegistrationData *)v2 setProductType:v3];

  v4 = PKSerialNumber();
  [(PKPaymentDeviceRegistrationData *)v2 setDeviceSerialNumber:v4];

  v5 = PKMLBSerialNumber();
  [(PKPaymentDeviceRegistrationData *)v2 setDeviceMLBSerialNumber:v5];

  v6 = [*(*(a1 + 40) + 32) primarySecureElementIdentifier];
  [(PKPaymentDeviceRegistrationData *)v2 setSecureElementIdentifier:v6];

  [(PKPaymentDeviceRegistrationData *)v2 setWalletDeleted:PKCurrentPassbookState() > 1];
  v7 = dispatch_group_create();
  v8 = v7;
  v9 = *(a1 + 40);
  if (*(v9 + 32))
  {
    dispatch_group_enter(v7);
    v10 = *(*(a1 + 40) + 32);
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __67__PKPaymentDevice_registrationDataWithAuthToken_completionHandler___block_invoke_2;
    v29[3] = &unk_1E79C5018;
    v11 = v2;
    v30 = v11;
    v12 = v8;
    v31 = v12;
    [v10 stateInformationWithCompletion:v29];
    dispatch_group_enter(v12);
    v13 = *(a1 + 32);
    v14 = *(*(a1 + 40) + 32);
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __67__PKPaymentDevice_registrationDataWithAuthToken_completionHandler___block_invoke_3;
    v26[3] = &unk_1E79C5040;
    v15 = v11;
    v27 = v15;
    v16 = v12;
    v28 = v16;
    [v14 signatureForAuthToken:v13 completion:v26];
    dispatch_group_enter(v16);
    v17 = *(*(a1 + 40) + 32);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __67__PKPaymentDevice_registrationDataWithAuthToken_completionHandler___block_invoke_4;
    v23[3] = &unk_1E79C5068;
    v24 = v15;
    v25 = v16;
    [v17 signedPlatformDataWithCompletion:v23];

    v9 = *(a1 + 40);
  }

  v18 = *(v9 + 56);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __67__PKPaymentDevice_registrationDataWithAuthToken_completionHandler___block_invoke_5;
  v20[3] = &unk_1E79C4A40;
  v21 = v2;
  v22 = *(a1 + 48);
  v19 = v2;
  dispatch_group_notify(v8, v18, v20);
}

void __67__PKPaymentDevice_registrationDataWithAuthToken_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setSecureElementStateInformation:a2];
  v3 = *(a1 + 40);

  dispatch_group_leave(v3);
}

void __67__PKPaymentDevice_registrationDataWithAuthToken_completionHandler___block_invoke_3(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setSignedAuthToken:a2];
  v3 = *(a1 + 40);

  dispatch_group_leave(v3);
}

void __67__PKPaymentDevice_registrationDataWithAuthToken_completionHandler___block_invoke_4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 setPlatformData:a2];
  [*(a1 + 32) setPlatformDataSignature:v6];

  v7 = *(a1 + 40);

  dispatch_group_leave(v7);
}

void __67__PKPaymentDevice_registrationDataWithAuthToken_completionHandler___block_invoke_5(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) secureElementIdentifier];
  if (v2 && (v3 = v2, [*(a1 + 32) secureElementStateInformation], v4 = objc_claimAutoreleasedReturnValue(), v4, v3, v4))
  {
    v5 = *(*(a1 + 40) + 16);

    v5();
  }

  else
  {
    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:-1 userInfo:0];
    v7 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 32) secureElementStateInformation];
      v9 = [*(a1 + 32) secureElementIdentifier];
      v10 = 134218240;
      v11 = v8;
      v12 = 2048;
      v13 = v9;
      _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "Discarding invalid registration data: Secure Element State Information=%p SEID=%p", &v10, 0x16u);
    }

    (*(*(a1 + 40) + 16))();
  }
}

void __67__PKPaymentDevice_registrationDataWithAuthToken_completionHandler___block_invoke_399(uint64_t a1, char a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  if ((a2 & 1) == 0)
  {
    v9 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "PKPaymentDevice: se-sep sync failed!!! Proceeding with registration...", v10, 2u);
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)signData:(id)a3 signatureEntanglementMode:(unint64_t)a4 withCompletionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (v8)
  {
    if (PKRunningInPassd() && self->_secureElement)
    {
      v10 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEBUG, "PKPaymentDevice: signData called in passd", buf, 2u);
      }

      secureElement = self->_secureElement;
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __76__PKPaymentDevice_signData_signatureEntanglementMode_withCompletionHandler___block_invoke;
      v15[3] = &unk_1E79C50B8;
      v16 = v9;
      [(PKSecureElement *)secureElement signChallenge:v8 signatureEntanglementMode:a4 completion:v15];
    }

    else
    {
      v12 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_1AD337000, v12, OS_LOG_TYPE_DEBUG, "PKPaymentDevice: signData called, forwarding to passd", buf, 2u);
      }

      v13 = +[PKPassLibrary sharedInstance];
      [v13 signData:v8 signatureEntanglementMode:a4 withCompletionHandler:v9];
    }
  }

  else
  {
    v14 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1AD337000, v14, OS_LOG_TYPE_ERROR, "PKPaymentDevice: signData, no challenge provided to sign", buf, 2u);
    }

    if (v9)
    {
      (*(v9 + 2))(v9, 0, 0, 0);
    }
  }
}

void __76__PKPaymentDevice_signData_signatureEntanglementMode_withCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *v9 = 0;
    _os_log_debug_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEBUG, "PKPaymentDevice: signData completed", v9, 2u);
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, v5, v6, 0);
  }
}

- (void)signatureForAuthToken:(id)a3 completion:(id)a4
{
  v23[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    secureElement = self->_secureElement;
    if (secureElement)
    {
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __52__PKPaymentDevice_signatureForAuthToken_completion___block_invoke;
      v18[3] = &unk_1E79C50E0;
      v19 = v7;
      [(PKSecureElement *)secureElement signatureForAuthToken:v6 completion:v18];
      v10 = v19;
LABEL_12:

      goto LABEL_13;
    }

    v14 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 0;
      _os_log_impl(&dword_1AD337000, v14, OS_LOG_TYPE_DEFAULT, "No secure element, cannot sign authToken", v17, 2u);
    }

    v15 = MEMORY[0x1E696ABC0];
    v22 = *MEMORY[0x1E696A578];
    v23[0] = @"No secure element, cannot sign authToken";
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    v10 = [v15 errorWithDomain:@"PKPassKitErrorDomain" code:-1 userInfo:v16];

    if (!v8)
    {
      goto LABEL_12;
    }

LABEL_11:
    (v8)[2](v8, 0, v10);
    goto LABEL_12;
  }

  v11 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *v17 = 0;
    _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "No authToken provided to sign", v17, 2u);
  }

  if (v8)
  {
    v12 = MEMORY[0x1E696ABC0];
    v20 = *MEMORY[0x1E696A578];
    v21 = @"No authToken provided to sign";
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    v10 = [v12 errorWithDomain:@"PKPassKitErrorDomain" code:-1 userInfo:v13];

    goto LABEL_11;
  }

LABEL_13:
}

uint64_t __52__PKPaymentDevice_signatureForAuthToken_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2, 0);
  }

  return result;
}

- (void)rewrapDataWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __51__PKPaymentDevice_rewrapDataWithCompletionHandler___block_invoke;
    aBlock[3] = &unk_1E79C5108;
    aBlock[4] = self;
    v12 = v4;
    v6 = _Block_copy(aBlock);
    v7 = v6;
    secureElement = self->_secureElement;
    if (secureElement)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __51__PKPaymentDevice_rewrapDataWithCompletionHandler___block_invoke_411;
      v9[3] = &unk_1E79C5130;
      v10 = v6;
      [(PKSecureElement *)secureElement signedPlatformDataWithCompletion:v9];
    }

    else
    {
      (*(v6 + 2))(v6, 0);
    }
  }
}

void __51__PKPaymentDevice_rewrapDataWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 56);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __51__PKPaymentDevice_rewrapDataWithCompletionHandler___block_invoke_2;
  v6[3] = &unk_1E79C4A40;
  v7 = v3;
  v8 = *(a1 + 40);
  v5 = v3;
  dispatch_async(v4, v6);
}

void __51__PKPaymentDevice_rewrapDataWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) platformData];
  if (v2 && (v3 = v2, [*(a1 + 32) platformDataSignature], v4 = objc_claimAutoreleasedReturnValue(), v4, v3, v4))
  {
    v5 = *(*(a1 + 40) + 16);

    v5();
  }

  else
  {
    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:-1 userInfo:0];
    v7 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "Rewrap data not available", v8, 2u);
    }

    (*(*(a1 + 40) + 16))();
  }
}

void __51__PKPaymentDevice_rewrapDataWithCompletionHandler___block_invoke_411(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = objc_alloc_init(PKPaymentDevicePlatfomData);
  [(PKPaymentDevicePlatfomData *)v7 setPlatformData:v6];

  [(PKPaymentDevicePlatfomData *)v7 setPlatformDataSignature:v5];
  (*(*(a1 + 32) + 16))();
}

- (id)configurationData
{
  configurationData = self->_configurationData;
  if (!configurationData)
  {
    v4 = objc_alloc_init(PKPaymentDeviceConfigurationData);
    v5 = [(PKSecureElement *)self->_secureElement primarySecureElementIdentifier];
    [(PKPaymentDeviceConfigurationData *)v4 setSecureElementIdentifier:v5];

    [(PKPaymentDeviceConfigurationData *)v4 setDevSigned:[(PKSecureElement *)self->_secureElement isProductionSigned]^ 1];
    v6 = [(PKSecureElement *)self->_secureElement primaryJSBLSequenceCounter];
    [(PKPaymentDeviceConfigurationData *)v4 setPrimaryJSBLSequenceCounter:v6];

    v7 = self->_configurationData;
    self->_configurationData = v4;

    configurationData = self->_configurationData;
  }

  return configurationData;
}

- (id)trustedDeviceEnrollmentInfo
{
  v3 = PKUniqueDeviceIdentifier();
  v4 = objc_alloc_init(PKTrustedDeviceEnrollmentInfo);
  v5 = PKAssignedDeviceName();
  [(PKTrustedDeviceEnrollmentInfo *)v4 setDeviceName:v5];

  v6 = PKSerialNumber();
  [(PKTrustedDeviceEnrollmentInfo *)v4 setDeviceSerialNumber:v6];

  [(PKTrustedDeviceEnrollmentInfo *)v4 setDeviceUDID:v3];
  v7 = PKProductType();
  [(PKTrustedDeviceEnrollmentInfo *)v4 setProductType:v7];

  secureElement = self->_secureElement;
  if (secureElement)
  {
    v9 = [(PKSecureElement *)secureElement primarySecureElementIdentifier];
    [(PKTrustedDeviceEnrollmentInfo *)v4 setSecureElementIdentifier:v9];

    [(PKTrustedDeviceEnrollmentInfo *)v4 setSupportsAccessExpressMode:[(PKSecureElement *)self->_secureElement supportsExpressModeForExpressPassType:2]];
  }

  return v4;
}

- (void)provisioningDataIncludingDeviceMetadata:(BOOL)a3 withCompletionHandler:(id)a4
{
  v4 = a3;
  v6 = a4;
  if (v6)
  {
    if (v4)
    {
      v7 = 498;
    }

    else
    {
      v7 = 256;
    }

    v8 = objc_alloc_init(PKPaymentDeviceProvisioningData);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __81__PKPaymentDevice_provisioningDataIncludingDeviceMetadata_withCompletionHandler___block_invoke;
    v10[3] = &unk_1E79C5158;
    v11 = v8;
    v12 = v6;
    v9 = v8;
    [(PKPaymentDevice *)self _populateDeviceMetadata:v9 withFields:v7 completion:v10];
  }
}

- (void)paymentDeviceMetadataFields:(unint64_t)a3 completion:(id)a4
{
  v6 = a4;
  if (v6)
  {
    v7 = objc_alloc_init(PKPaymentDeviceMetadata);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __58__PKPaymentDevice_paymentDeviceMetadataFields_completion___block_invoke;
    v8[3] = &unk_1E79C5180;
    v9 = v6;
    [(PKPaymentDevice *)self _populateDeviceMetadata:v7 withFields:a3 completion:v8];
  }
}

- (void)_populateDeviceMetadata:(id)a3 withFields:(unint64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = v9;
  if (v9)
  {
    if (v8 && a4)
    {
      internalQueue = self->_internalQueue;
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __65__PKPaymentDevice__populateDeviceMetadata_withFields_completion___block_invoke;
      v13[3] = &unk_1E79C4D88;
      v17 = a4;
      v14 = v8;
      v15 = self;
      v16 = v10;
      v12 = v13;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __dispatch_async_ar_block_invoke;
      block[3] = &unk_1E79C4428;
      v19 = v12;
      dispatch_async(internalQueue, block);
    }

    else
    {
      (*(v9 + 2))(v9, 0);
    }
  }
}

void __65__PKPaymentDevice__populateDeviceMetadata_withFields_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 56);
  if ((v2 & 0x10) != 0)
  {
    v3 = *(a1 + 32);
    v4 = PKAssignedDeviceName();
    [v3 setDeviceName:v4];

    v2 = *(a1 + 56);
    if ((v2 & 8) == 0)
    {
LABEL_3:
      if ((v2 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_3;
  }

  v5 = *(a1 + 32);
  v6 = PKSerialNumber();
  [v5 setSerialNumber:v6];

  v2 = *(a1 + 56);
  if ((v2 & 2) == 0)
  {
LABEL_4:
    if ((v2 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  v7 = *(a1 + 32);
  v8 = PKUniqueDeviceIdentifier();
  [v7 setUniqueDeviceIdentifier:v8];

  v2 = *(a1 + 56);
  if ((v2 & 4) == 0)
  {
LABEL_5:
    if ((v2 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  v9 = *(a1 + 32);
  v10 = PKUniqueChipIdentifier();
  [v9 setUniqueChipIdentifier:v10];

  v2 = *(a1 + 56);
  if ((v2 & 1) == 0)
  {
LABEL_6:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  v11 = *(a1 + 32);
  v12 = [*(*(a1 + 40) + 32) primarySecureElementIdentifier];
  [v11 setSecureElementIdentifier:v12];

  v2 = *(a1 + 56);
  if ((v2 & 0x100) == 0)
  {
LABEL_7:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

LABEL_15:
  v13 = *(a1 + 32);
  v14 = [*(*(a1 + 40) + 32) primaryJSBLSequenceCounter];
  [v13 setPrimaryJSBLSequenceCounter:v14];

  v2 = *(a1 + 56);
  if ((v2 & 0x20) == 0)
  {
LABEL_8:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_19;
  }

LABEL_16:
  v15 = PKDevicePhoneNumber();
  if ([v15 length])
  {
    [*(a1 + 32) setPhoneNumber:v15];
  }

  if ((*(a1 + 56) & 0x40) != 0)
  {
LABEL_19:
    v16 = PKDevicePhoneNumberSignature();
    v17 = v16;
    if (v16)
    {
      v18 = *(a1 + 32);
      v19 = [v16 objectForKeyedSubscript:*MEMORY[0x1E69654F0]];
      [v18 setSignedPhoneNumber:v19];

      v20 = *(a1 + 32);
      v21 = [v17 objectForKeyedSubscript:*MEMORY[0x1E69654F8]];
      [v20 setSignedPhoneNumberVersion:v21];
    }
  }

LABEL_22:
  v22 = MEMORY[0x1E695FBE8];
  v23 = PKPassKitCoreBundle();
  v24 = [v23 bundlePath];
  v25 = [v22 authorizationStatusForBundlePath:v24];

  if ([MEMORY[0x1E695FBE8] locationServicesEnabled] && (v25 - 3) <= 0xFFFFFFFD && (objc_msgSend(*(a1 + 40), "skipLocationCheck") & 1) == 0 && (*(a1 + 56) & 0x80) != 0)
  {
    v30 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v30, OS_LOG_TYPE_DEFAULT, "Can determine device location.", buf, 2u);
    }

    v31 = *(a1 + 40);
    if (!*(v31 + 8))
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __65__PKPaymentDevice__populateDeviceMetadata_withFields_completion___block_invoke_416;
      block[3] = &unk_1E79C4E28;
      block[4] = v31;
      dispatch_sync(MEMORY[0x1E69E96A0], block);
    }

    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v30, OS_LOG_TYPE_DEFAULT, "Requesting when in user authorization for PassKitCore", buf, 2u);
    }

    [*(*(a1 + 40) + 8) requestWhenInUseAuthorization];
    v32 = [*(*(a1 + 40) + 8) location];
    v29 = v32;
    if (!*(*(a1 + 40) + 24) && v32 && _LocationMeetsAccuracyCriteria(v32))
    {
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AD337000, v30, OS_LOG_TYPE_DEFAULT, "Immediately retrieved location", buf, 2u);
      }

      [*(a1 + 32) setLocation:v29];
      v33 = *(*(a1 + 40) + 56);
      v48[0] = MEMORY[0x1E69E9820];
      v48[1] = 3221225472;
      v48[2] = __65__PKPaymentDevice__populateDeviceMetadata_withFields_completion___block_invoke_420;
      v48[3] = &unk_1E79C44A0;
      v50 = *(a1 + 48);
      v49 = *(a1 + 32);
      v34 = v48;
      *buf = MEMORY[0x1E69E9820];
      v55 = 3221225472;
      v56 = __dispatch_async_ar_block_invoke;
      v57 = &unk_1E79C4428;
      v58 = v34;
      dispatch_async(v33, buf);

      v35 = v50;
    }

    else
    {
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AD337000, v30, OS_LOG_TYPE_DEFAULT, "Start updating location…", buf, 2u);
      }

      v35 = objc_alloc_init(PKPaymentDeviceMetadataFetchTask);
      [(PKPaymentDeviceMetadataFetchTask *)v35 setDeviceMetadata:*(a1 + 32)];
      [(PKPaymentDeviceMetadataFetchTask *)v35 setRequestedFields:*(a1 + 56)];
      [(PKPaymentDeviceMetadataFetchTask *)v35 setRemaningFields:128];
      [(PKPaymentDeviceMetadataFetchTask *)v35 setCompletion:*(a1 + 48)];
      [*(*(a1 + 40) + 48) addObject:v35];
      v36 = *(a1 + 40);
      if (!*(v36 + 24))
      {
        v37 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(v36 + 64));
        v38 = *(a1 + 40);
        v39 = *(v38 + 24);
        *(v38 + 24) = v37;

        v40 = *(*(a1 + 40) + 24);
        v41 = dispatch_walltime(0, 10000000000);
        dispatch_source_set_timer(v40, v41, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
        v42 = *(a1 + 40);
        v43 = v42[3];
        objc_initWeak(buf, v42);
        v44 = *(*(a1 + 40) + 24);
        handler[0] = MEMORY[0x1E69E9820];
        handler[1] = 3221225472;
        handler[2] = __65__PKPaymentDevice__populateDeviceMetadata_withFields_completion___block_invoke_419;
        handler[3] = &unk_1E79C51A8;
        objc_copyWeak(v52, buf);
        v52[1] = v43;
        dispatch_source_set_event_handler(v44, handler);
        dispatch_resume(*(*(a1 + 40) + 24));
        [*(*(a1 + 40) + 8) startUpdatingLocation];
        objc_destroyWeak(v52);
        objc_destroyWeak(buf);
      }
    }
  }

  else
  {
    v26 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v26, OS_LOG_TYPE_DEFAULT, "Returning device metadata without location", buf, 2u);
    }

    v27 = *(*(a1 + 40) + 56);
    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = __65__PKPaymentDevice__populateDeviceMetadata_withFields_completion___block_invoke_421;
    v45[3] = &unk_1E79C44A0;
    v47 = *(a1 + 48);
    v46 = *(a1 + 32);
    v28 = v45;
    *buf = MEMORY[0x1E69E9820];
    v55 = 3221225472;
    v56 = __dispatch_async_ar_block_invoke;
    v57 = &unk_1E79C4428;
    v58 = v28;
    dispatch_async(v27, buf);

    v29 = v47;
  }
}

void __65__PKPaymentDevice__populateDeviceMetadata_withFields_completion___block_invoke_416(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x1E695FBE8]);
  v7 = PKPassKitCoreBundle();
  v3 = [v7 bundlePath];
  v4 = [v2 initWithEffectiveBundlePath:v3 delegate:*(a1 + 32) onQueue:MEMORY[0x1E69E96A0]];
  v5 = *(a1 + 32);
  v6 = *(v5 + 8);
  *(v5 + 8) = v4;
}

void __65__PKPaymentDevice__populateDeviceMetadata_withFields_completion___block_invoke_419(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = *(WeakRetained + 3);
    if (v5)
    {
      if (*(a1 + 40) == v5)
      {
        v6 = PKLogFacilityTypeGetObject(7uLL);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *v7 = 0;
          _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "Location did time out", v7, 2u);
        }

        [v4 _finishLocationFixWithLocation:0];
      }
    }
  }

  objc_autoreleasePoolPop(v2);
}

- (void)setRegistrationRegionMap:(id)a3 primaryRegionTopic:(id)a4
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = v6;
    v11 = 2112;
    v12 = v7;
    _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "Setting registration information on Secure Element %@ primaryRegionTopic %@", &v9, 0x16u);
  }

  [(PKSecureElement *)self->_secureElement setRegistrationInformation:v6 primaryRegionTopic:v7];
}

- (void)SEPParingInformationWithCompletion:(id)a3
{
  v4 = a3;
  v5 = v4;
  secureElement = self->_secureElement;
  if (secureElement)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __54__PKPaymentDevice_SEPParingInformationWithCompletion___block_invoke;
    v9[3] = &unk_1E79C5090;
    v10 = v4;
    [(PKSecureElement *)secureElement SEPPairingInfoWithCompletion:v9];
  }

  else
  {
    v7 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "No secure element, cannot return SEP Pairing info", v8, 2u);
    }

    if (v5)
    {
      v5[2](v5, 0, 0, 0);
    }
  }
}

uint64_t __54__PKPaymentDevice_SEPParingInformationWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)locationManager:(id)a3 didUpdateLocations:(id)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "Location did update", buf, 2u);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v22 objects:v31 count:16];
  v11 = v9;
  if (!v10)
  {
    goto LABEL_16;
  }

  v12 = v10;
  v13 = 0;
  v14 = *v23;
  do
  {
    for (i = 0; i != v12; ++i)
    {
      if (*v23 != v14)
      {
        objc_enumerationMutation(v9);
      }

      v16 = *(*(&v22 + 1) + 8 * i);
      if (_LocationMeetsAccuracyCriteria(v16))
      {
        v17 = v16;

        v13 = v17;
      }
    }

    v12 = [v9 countByEnumeratingWithState:&v22 objects:v31 count:16];
  }

  while (v12);

  if (v13)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "Found candidate location", buf, 2u);
    }

    internalQueue = self->_internalQueue;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __54__PKPaymentDevice_locationManager_didUpdateLocations___block_invoke;
    v20[3] = &unk_1E79C4DD8;
    v20[4] = self;
    v21 = v13;
    v19 = v20;
    *buf = MEMORY[0x1E69E9820];
    v27 = 3221225472;
    v28 = __dispatch_async_ar_block_invoke;
    v29 = &unk_1E79C4428;
    v30 = v19;
    v11 = v13;
    dispatch_async(internalQueue, buf);

LABEL_16:
  }
}

- (void)locationManager:(id)a3 didFailWithError:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [a4 code];
  v8 = PKLogFacilityTypeGetObject(7uLL);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v9)
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "Location did fail", buf, 2u);
    }

    internalQueue = self->_internalQueue;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __52__PKPaymentDevice_locationManager_didFailWithError___block_invoke;
    v14[3] = &unk_1E79C4E28;
    v14[4] = self;
    v11 = v14;
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __dispatch_async_ar_block_invoke;
    v16 = &unk_1E79C4428;
    v17 = v11;
    dispatch_async(internalQueue, buf);
  }

  else
  {
    if (v9)
    {
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      *buf = 138412546;
      *&buf[4] = v13;
      *&buf[12] = 2112;
      *&buf[14] = v6;
      _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "%@: Location Manager %@ unable to retreve location, will retry.", buf, 0x16u);
    }
  }
}

- (void)_finishLocationFixWithLocation:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = self->_metdataFetchTasks;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v10 remaningFields];
        if ((v11 & 0x80) != 0)
        {
          [v10 setRemaningFields:v11 & 0xFFFFFFFFFFFFFF7FLL];
          if (v4)
          {
            v12 = [v10 deviceMetadata];
            [v12 setLocation:v4];
          }
        }
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  [(CLLocationManager *)self->_locationManager stopUpdatingLocation];
  locationFixTimeout = self->_locationFixTimeout;
  if (locationFixTimeout)
  {
    dispatch_source_cancel(locationFixTimeout);
    v14 = self->_locationFixTimeout;
    self->_locationFixTimeout = 0;
  }

  [(PKPaymentDevice *)self _executeDeviceMetadataFetchTasksCompletionHandlers];
}

- (void)_executeDeviceMetadataFetchTasksCompletionHandlers
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = self->_metdataFetchTasks;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v21;
    v16 = v18;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v20 + 1) + 8 * i);
        if ([v9 remaningFields])
        {
          [(NSMutableArray *)v3 addObject:v9];
        }

        else
        {
          v10 = [v9 completion];
          v11 = v10;
          if (v10)
          {
            callbackQueue = self->_callbackQueue;
            v17[0] = MEMORY[0x1E69E9820];
            v17[1] = 3221225472;
            v18[0] = __69__PKPaymentDevice__executeDeviceMetadataFetchTasksCompletionHandlers__block_invoke;
            v18[1] = &unk_1E79C44A0;
            v13 = v10;
            v18[2] = v9;
            v19 = v13;
            v14 = v17;
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            block[2] = __dispatch_async_ar_block_invoke;
            block[3] = &unk_1E79C4428;
            v25 = v14;
            dispatch_async(callbackQueue, block);
          }
        }
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v6);
  }

  metdataFetchTasks = self->_metdataFetchTasks;
  self->_metdataFetchTasks = v3;
}

void __69__PKPaymentDevice__executeDeviceMetadataFetchTasksCompletionHandlers__block_invoke(uint64_t a1)
{
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "Calling device metadata completion handler", v5, 2u);
  }

  v3 = *(a1 + 40);
  v4 = [*(a1 + 32) deviceMetadata];
  (*(v3 + 16))(v3, v4);
}

- (void)configurationDataWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    callbackQueue = self->_callbackQueue;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __58__PKPaymentDevice_configurationDataWithCompletionHandler___block_invoke;
    v8[3] = &unk_1E79C44A0;
    v8[4] = self;
    v9 = v4;
    v7 = v8;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __dispatch_async_ar_block_invoke;
    block[3] = &unk_1E79C4428;
    v11 = v7;
    dispatch_async(callbackQueue, block);
  }
}

void __58__PKPaymentDevice_configurationDataWithCompletionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) configurationData];
  (*(v1 + 16))(v1, v2, 0);
}

@end