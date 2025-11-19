@interface PKPaymentRequestValidator
+ (id)validatorWithObject:(id)a3;
- (BOOL)_checkMultiTokenTotal:(id)a3 withAPIType:(int64_t)a4 error:(id *)a5;
- (BOOL)_checkTotal:(id)a3 withAPIType:(int64_t)a4 error:(id *)a5;
- (BOOL)isValidWithAPIType:(int64_t)a3 withError:(id *)a4;
- (BOOL)isValidWithError:(id *)a3;
- (PKPaymentRequestValidator)initWithPaymentRequest:(id)a3;
- (id)_errorDescriptionFromMultiTokenContextAmountValidationResult:(unint64_t)a3 withAPIType:(int64_t)a4;
- (id)_errorDescriptionFromPaymentTotalAmountValidationResult:(unint64_t)a3 withAPIType:(int64_t)a4;
- (id)_errorDescriptionFromTotalAmountValidationResult:(unint64_t)a3 prefix:(id)a4;
- (unint64_t)_checkTotalAmount:(id)a3;
@end

@implementation PKPaymentRequestValidator

+ (id)validatorWithObject:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithPaymentRequest:v3];

  return v4;
}

- (PKPaymentRequestValidator)initWithPaymentRequest:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PKPaymentRequestValidator;
  v6 = [(PKPaymentRequestValidator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_request, a3);
  }

  return v7;
}

- (BOOL)_checkTotal:(id)a3 withAPIType:(int64_t)a4 error:(id *)a5
{
  v15[1] = *MEMORY[0x1E69E9840];
  v8 = [(PKPaymentRequestValidator *)self _checkTotalAmount:a3];
  v9 = v8;
  if (a5 && v8)
  {
    v10 = [(PKPaymentRequestValidator *)self _errorDescriptionFromPaymentTotalAmountValidationResult:v8 withAPIType:a4];
    v11 = MEMORY[0x1E696ABC0];
    v14 = *MEMORY[0x1E696A578];
    v15[0] = v10;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    *a5 = [v11 errorWithDomain:@"PKPassKitErrorDomain" code:1 userInfo:v12];
  }

  return v9 == 0;
}

- (unint64_t)_checkTotalAmount:(id)a3
{
  v3 = a3;
  if ([v3 pk_isNegativeNumber])
  {
    v4 = 1;
  }

  else if (PKIsCurrencyDecimalTooLarge(v3))
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_errorDescriptionFromPaymentTotalAmountValidationResult:(unint64_t)a3 withAPIType:(int64_t)a4
{
  if ((a4 - 1) >= 2)
  {
    v4 = @"PKPaymentRequest total";
  }

  else
  {
    v4 = @"Total amount";
  }

  return [(PKPaymentRequestValidator *)self _errorDescriptionFromTotalAmountValidationResult:a3 prefix:v4];
}

- (id)_errorDescriptionFromTotalAmountValidationResult:(unint64_t)a3 prefix:(id)a4
{
  v5 = a4;
  if (a3 == 1)
  {
    v6 = @"%@ must be greater than or equal to zero";
    goto LABEL_5;
  }

  if (a3 == 2)
  {
    v6 = @"%@ is too large";
LABEL_5:
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:v6, v5];
    goto LABEL_7;
  }

  v7 = 0;
LABEL_7:

  return v7;
}

- (BOOL)_checkMultiTokenTotal:(id)a3 withAPIType:(int64_t)a4 error:(id *)a5
{
  v46 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v9 = [(PKPaymentRequest *)self->_request multiTokenContexts];
  v10 = [v9 countByEnumeratingWithState:&v36 objects:v45 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v37;
LABEL_3:
    v13 = 0;
    while (1)
    {
      if (*v37 != v12)
      {
        objc_enumerationMutation(v9);
      }

      v14 = [*(*(&v36 + 1) + 8 * v13) amount];
      v15 = [(PKPaymentRequestValidator *)self _checkTotalAmount:v14];

      if (v15)
      {
        break;
      }

      if (v11 == ++v13)
      {
        v11 = [v9 countByEnumeratingWithState:&v36 objects:v45 count:16];
        if (v11)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    if (!a5)
    {
      goto LABEL_27;
    }

    v24 = [(PKPaymentRequestValidator *)self _errorDescriptionFromMultiTokenContextAmountValidationResult:v15 withAPIType:a4];
    v25 = MEMORY[0x1E696ABC0];
    v43 = *MEMORY[0x1E696A578];
    v44 = v24;
    v26 = MEMORY[0x1E695DF20];
    v27 = &v44;
    v28 = &v43;
  }

  else
  {
LABEL_9:
    v31 = v8;

    v9 = [MEMORY[0x1E696AB90] zero];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v16 = [(PKPaymentRequest *)self->_request multiTokenContexts];
    v17 = [v16 countByEnumeratingWithState:&v32 objects:v42 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v33;
      do
      {
        v20 = 0;
        v21 = v9;
        do
        {
          if (*v33 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v22 = [*(*(&v32 + 1) + 8 * v20) amount];
          v9 = [v21 decimalNumberByAdding:v22];

          ++v20;
          v21 = v9;
        }

        while (v18 != v20);
        v18 = [v16 countByEnumeratingWithState:&v32 objects:v42 count:16];
      }

      while (v18);
    }

    if (![(PKPaymentRequest *)self->_request isMultiTokenRequest])
    {
      LOBYTE(a5) = 1;
      v8 = v31;
      goto LABEL_27;
    }

    v8 = v31;
    if (![v9 compare:v31])
    {
      LOBYTE(a5) = 1;
      goto LABEL_27;
    }

    if ((a4 - 1) >= 2)
    {
      v23 = @"PKPaymentRequest total";
    }

    else
    {
      v23 = @"total amount";
    }

    v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"The sum of all payment token context amounts must be equal to the %@", v23];
    v25 = MEMORY[0x1E696ABC0];
    v40 = *MEMORY[0x1E696A578];
    v41 = v24;
    v26 = MEMORY[0x1E695DF20];
    v27 = &v41;
    v28 = &v40;
  }

  v29 = [v26 dictionaryWithObjects:v27 forKeys:v28 count:1];
  *a5 = [v25 errorWithDomain:@"PKPassKitErrorDomain" code:1 userInfo:v29];

  LOBYTE(a5) = 0;
LABEL_27:

  return a5;
}

- (id)_errorDescriptionFromMultiTokenContextAmountValidationResult:(unint64_t)a3 withAPIType:(int64_t)a4
{
  if ((a4 - 1) >= 2)
  {
    v4 = @"PKPaymentTokenContext amount";
  }

  else
  {
    v4 = @"Payment token context amount";
  }

  return [(PKPaymentRequestValidator *)self _errorDescriptionFromTotalAmountValidationResult:a3 prefix:v4];
}

- (BOOL)isValidWithError:(id *)a3
{
  v5 = [(PKPaymentRequest *)self->_request APIType];

  return [(PKPaymentRequestValidator *)self isValidWithAPIType:v5 withError:a3];
}

- (BOOL)isValidWithAPIType:(int64_t)a3 withError:(id *)a4
{
  v5 = self;
  v362[1] = *MEMORY[0x1E69E9840];
  v6 = [(PKPaymentRequest *)self->_request requestType];
  v7 = [(PKPaymentRequest *)v5->_request isPeerPaymentRequest];
  v8 = [(PKPaymentRequest *)v5->_request requestType];
  if (v6 == 3)
  {
    v260 = 1;
  }

  else if (v6 == 1)
  {
    v9 = [(PKPaymentRequest *)v5->_request merchantSession];
    v260 = v9 != 0;
  }

  else
  {
    v260 = 0;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v11 = 0;
  v12 = v6 & 0xFFFFFFFFFFFFFFFELL;
  v264 = v5;
  v265 = v6;
  if (!v7 && (isKindOfClass & 1) != 0 && v6 != 2 && v6 != 4 && v12 != 6 && (v6 & 0xFFFFFFFFFFFFFFFDLL) != 0xD)
  {
    v263 = v8;
    v261 = v7;
    v257 = v6 & 0xFFFFFFFFFFFFFFFELL;
    v258 = a4;
    request = v5->_request;
    v14 = objc_opt_class();
    v15 = [MEMORY[0x1E695DF58] ISOCountryCodes];
    v323 = 0;
    v16 = a3;
    v17 = _PKPaymentValidatePropertyMembership(request, @"countryCode", v14, v15, a3, &v323);
    v18 = v323;
    if (v17)
    {
      v19 = v5->_request;
      v20 = objc_opt_class();
      v21 = [MEMORY[0x1E695DF58] ISOCurrencyCodes];
      v322 = v18;
      LODWORD(v20) = _PKPaymentValidatePropertyMembership(v19, @"currencyCode", v20, v21, a3, &v322);
      v22 = v322;

      if (v20)
      {
        v23 = v5->_request;
        v24 = objc_opt_class();
        v321 = v22;
        v25 = _PKPaymentValidateProperty(v23, @"applicationData", v24, 0, a3, &v321);
        v26 = v321;

        if (v25)
        {
          v27 = v5->_request;
          v28 = objc_opt_class();
          v320 = v26;
          LODWORD(v27) = _PKPaymentValidatePropertyArray(v27, @"shippingMethods", v28, 0, 0, a3, &v320);
          v18 = v320;

          if (v27)
          {
            aBlock[0] = MEMORY[0x1E69E9820];
            aBlock[1] = 3221225472;
            aBlock[2] = __58__PKPaymentRequestValidator_isValidWithAPIType_withError___block_invoke;
            aBlock[3] = &unk_1E79DA3F0;
            aBlock[4] = v5;
            v29 = _Block_copy(aBlock);
            v30 = v5->_request;
            v31 = objc_opt_class();
            v318 = v18;
            v32 = _PKPaymentValidatePropertyArray(v30, @"paymentSummaryItems", v31, v29, 1, a3, &v318);
            v15 = v318;

            if (v32)
            {
              if ([(PKPaymentRequest *)v5->_request supportsCouponCode])
              {
                v33 = v5->_request;
                v34 = objc_opt_class();
                v317 = v15;
                v17 = _PKPaymentValidateProperty(v33, @"couponCode", v34, 0, a3, &v317);
                v18 = v317;
                goto LABEL_20;
              }

              v17 = 1;
            }

            else
            {
              v17 = 0;
            }

            v18 = v15;
          }

          else
          {
            v17 = 0;
          }

LABEL_21:
          v35 = [(PKPaymentRequest *)v5->_request recurringPaymentRequest];

          v36 = [(PKPaymentRequest *)v5->_request automaticReloadPaymentRequest];

          v37 = [(PKPaymentRequest *)v5->_request multiTokenContexts];
          v38 = [v37 count];

          if (v17)
          {
            v39 = 1;
            if (v35 | v36 && v38)
            {
              v361 = *MEMORY[0x1E696A578];
              v362[0] = @"Recurring or automatic reload payment requests and multi-token contexts cannot be used together on the same payment request";
              v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v362 forKeys:&v361 count:1];
              v41 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:1 userInfo:v40];

              v39 = 0;
              v18 = v41;
            }
          }

          else
          {
            v39 = 0;
          }

          v42 = [(PKPaymentRequest *)v5->_request deferredPaymentRequest];

          if (v39 && v42 && v38)
          {
            v359 = *MEMORY[0x1E696A578];
            v360 = @"Deferred payment requests and multi-token contexts cannot be used together on the same payment request";
            v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v360 forKeys:&v359 count:1];
            v44 = MEMORY[0x1E696ABC0];
LABEL_30:
            v45 = [v44 errorWithDomain:@"PKPassKitErrorDomain" code:1 userInfo:v43];

            v46 = 0;
            v18 = v45;
            goto LABEL_35;
          }

          if (v39)
          {
            v47 = [(PKPaymentRequest *)v5->_request multiTokenContexts];

            if (!v47)
            {
              v127 = MEMORY[0x1E696ABC0];
              v357 = *MEMORY[0x1E696A578];
              v358 = @"The multi-token contexts field cannot be nil";
              v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v358 forKeys:&v357 count:1];
              v44 = v127;
              goto LABEL_30;
            }

            v46 = 1;
          }

          else
          {
            v46 = 0;
          }

LABEL_35:
          v316[0] = MEMORY[0x1E69E9820];
          v316[1] = 3221225472;
          v316[2] = __58__PKPaymentRequestValidator_isValidWithAPIType_withError___block_invoke_2;
          v316[3] = &unk_1E79DA3F0;
          v316[4] = v5;
          v48 = _Block_copy(v316);
          if (v46)
          {
            v49 = v5->_request;
            v50 = objc_opt_class();
            v315 = v18;
            isKindOfClass = _PKPaymentValidatePropertyArray(v49, @"multiTokenContexts", v50, v48, 0, a3, &v315);
            v51 = v315;

            if (isKindOfClass)
            {
              v52 = [(PKPaymentRequest *)v5->_request paymentSummaryItems];
              v53 = [v52 lastObject];
              v54 = [v53 amount];

              v314 = v51;
              isKindOfClass = [(PKPaymentRequestValidator *)v5 _checkMultiTokenTotal:v54 withAPIType:a3 error:&v314];
              v18 = v314;
            }

            else
            {
              v18 = v51;
            }
          }

          else
          {
            isKindOfClass = 0;
          }

          v55 = [(PKPaymentRequest *)v5->_request recurringPaymentRequest];
          v56 = [(PKPaymentRequest *)v5->_request automaticReloadPaymentRequest];
          v57 = [(PKPaymentRequest *)v5->_request deferredPaymentRequest];
          v58 = v57;
          v59 = v55 != 0;
          v60 = 1;
          if (v55)
          {
            v60 = 2;
          }

          if (v56)
          {
            v59 = v60;
          }

          if (v57)
          {
            ++v59;
          }

          if (v59 >= 2)
          {
            v355 = *MEMORY[0x1E696A578];
            v356 = @"A payment request can only have one of recurring, automatic reload, or deferred payment request set.";
            v61 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v356 forKeys:&v355 count:1];
            v62 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:1 userInfo:v61];

            isKindOfClass = 0;
            a4 = v258;
LABEL_48:

LABEL_49:
            v11 = v62;
LABEL_69:
            v6 = v265;
LABEL_70:

            v12 = v257;
            v7 = v261;
            v8 = v263;
            goto LABEL_71;
          }

          v63 = isKindOfClass ^ 1;
          if (!v55)
          {
            v63 = 1;
          }

          if ((v63 & 1) == 0)
          {
            v64 = [[PKRecurringPaymentRequestValidator alloc] initWithRecurringPaymentRequest:v55];
            v65 = [(PKPaymentRequest *)v5->_request currencyCode];
            [(PKRecurringPaymentRequestValidator *)v64 setCurrencyCode:v65];

            v313 = v18;
            isKindOfClass = [(PKRecurringPaymentRequestValidator *)v64 isValidWithAPIType:a3 withError:&v313];
            v66 = v313;

            v18 = v66;
            v16 = a3;
          }

          if (v56 && isKindOfClass)
          {
            v67 = [[PKAutomaticReloadPaymentRequestValidator alloc] initWithAutomaticReloadPaymentRequest:v56];
            v68 = [(PKPaymentRequest *)v5->_request currencyCode];
            [(PKAutomaticReloadPaymentRequestValidator *)v67 setCurrencyCode:v68];

            [(PKAutomaticReloadPaymentRequestValidator *)v67 setRequestType:[(PKPaymentRequest *)v5->_request requestType]];
            v312 = v18;
            isKindOfClass = [(PKAutomaticReloadPaymentRequestValidator *)v67 isValidWithAPIType:v16 withError:&v312];
            v69 = v312;

            v18 = v69;
          }

          if (v58 && isKindOfClass)
          {
            v70 = [[PKDeferredPaymentRequestValidator alloc] initWithDeferredPaymentRequest:v58];
            v71 = [(PKPaymentRequest *)v5->_request currencyCode];
            [(PKDeferredPaymentRequestValidator *)v70 setCurrencyCode:v71];

            v311 = v18;
            LOBYTE(v71) = [(PKDeferredPaymentRequestValidator *)v70 isValidWithAPIType:a3 withError:&v311];
            v11 = v311;

            if ((v71 & 1) == 0)
            {
              goto LABEL_68;
            }

            v18 = v11;
            v6 = v265;
          }

          else
          {
            v6 = v265;
            if (!isKindOfClass)
            {
              v11 = v18;
              a4 = v258;
              goto LABEL_70;
            }
          }

          if (v6 != 10 && v6)
          {
            v11 = v18;
            a4 = v258;
            goto LABEL_113;
          }

          v72 = _PKAllNetworks();
          v73 = v72;
          if (v263 != 8)
          {
            v74 = [v72 pk_arrayByRemovingObject:@"Barcode"];

            v73 = v74;
          }

          v75 = v5->_request;
          v76 = objc_opt_class();
          v77 = objc_opt_class();
          v310 = v18;
          LODWORD(v75) = _PKPaymentValidatePropertyUnion(v75, @"supportedNetworks", v76, v77, v73, 1, a3, &v310);
          v11 = v310;

          if (v75)
          {
            a4 = v258;
            v6 = v265;
LABEL_113:
            if (!v260 && v6 != 10 && v6)
            {
              isKindOfClass = 1;
              goto LABEL_70;
            }

            v137 = v5->_request;
            v309 = v11;
            isKindOfClass = _PKPaymentValidateMerchantCapabilities(v137, a3, v6, &v309);
            v62 = v309;

            if (!isKindOfClass)
            {
              goto LABEL_49;
            }

            v138 = [(PKPaymentRequest *)v5->_request merchantSession];

            if (v138)
            {
              if ((PKBypassCertValidation() & 1) == 0)
              {
                v61 = [(PKPaymentRequest *)v5->_request merchantSession];
                v139 = PKValidatePaymentMerchantSession(v61);
                isKindOfClass = v139 == 0;

                goto LABEL_48;
              }
            }

            else if (![(PKPaymentRequest *)v5->_request shouldUseMerchantSession])
            {
              v144 = v5->_request;
              v145 = objc_opt_class();
              v308 = v62;
              isKindOfClass = _PKPaymentValidateProperty(v144, @"merchantIdentifier", v145, 1, a3, &v308);
              v61 = v62;
              v62 = v308;
              goto LABEL_48;
            }

            isKindOfClass = 1;
            goto LABEL_49;
          }

LABEL_68:
          isKindOfClass = 0;
          a4 = v258;
          goto LABEL_69;
        }

        v22 = v26;
      }

      v17 = 0;
      v18 = v22;
    }

LABEL_20:

    goto LABEL_21;
  }

LABEL_71:
  if ((isKindOfClass & 1) != 0 && v8 == 8)
  {
    v78 = v5->_request;
    v79 = objc_opt_class();
    v307 = v11;
    v80 = a3;
    LODWORD(v78) = _PKPaymentValidateProperty(v78, @"serviceProviderOrder", v79, 1, a3, &v307);
    v81 = v307;

    if (!v78)
    {
LABEL_147:
      v126 = 0;
      goto LABEL_155;
    }

    v82 = [(PKPaymentRequest *)v5->_request serviceProviderPaymentRequest];
    v83 = [v82 serviceProviderOrder];

    v84 = objc_opt_class();
    v306 = v81;
    isKindOfClass = _PKPaymentValidateProperty(v83, @"identifier", v84, 1, a3, &v306);
    v11 = v306;

    if (!isKindOfClass)
    {
      goto LABEL_80;
    }

    v85 = v7;
    v86 = objc_opt_class();
    v305 = v11;
    isKindOfClass = _PKPaymentValidateProperty(v83, @"itemDescription", v86, 0, a3, &v305);
    v87 = v305;

    if (isKindOfClass)
    {
      v88 = objc_opt_class();
      v304 = v87;
      isKindOfClass = _PKPaymentValidateProperty(v83, @"serviceProviderIdentifier", v88, 1, a3, &v304);
      v11 = v304;

      if (!isKindOfClass)
      {
LABEL_79:
        v7 = v85;
LABEL_80:

        v6 = v265;
        goto LABEL_81;
      }

      v89 = objc_opt_class();
      v303 = v11;
      isKindOfClass = _PKPaymentValidateProperty(v83, @"serviceProviderData", v89, 0, a3, &v303);
      v87 = v303;
    }

    v11 = v87;
    goto LABEL_79;
  }

LABEL_81:
  if ((isKindOfClass & v7 & 1) == 0)
  {
    if ((isKindOfClass & 1) == 0)
    {
      v126 = 0;
      v81 = v11;
LABEL_101:
      v80 = a3;
      goto LABEL_155;
    }

LABEL_94:
    if (v6 == 1 || [(PKPaymentRequest *)v5->_request _isPSD2StyleRequest]|| [(PKPaymentRequest *)v5->_request _isAMPApplePayClassicRequest])
    {
      v118 = v5->_request;
      v119 = objc_opt_class();
      v277 = v11;
      v80 = a3;
      v120 = _PKPaymentValidateProperty(v118, @"externalizedContext", v119, 0, a3, &v277);
      v81 = v277;

      if (v120)
      {
        v121 = v5->_request;
        v122 = objc_opt_class();
        v276 = v81;
        v120 = _PKPaymentValidatePropertyArray(v121, @"paymentContentItems", v122, 0, 1, a3, &v276);
        v123 = v276;

        if (v120)
        {
          v124 = v5->_request;
          v125 = objc_opt_class();
          v275 = v123;
          v120 = _PKPaymentValidateProperty(v124, @"appleIDAuthenticationContext", v125, 0, a3, &v275);
          v81 = v275;
        }

        else
        {
          v81 = v123;
        }
      }

      v128 = [(PKPaymentRequest *)v5->_request externalizedContext];
      if (v128)
      {
        v129 = v128;
        v130 = [(PKPaymentRequest *)v5->_request appleIDAuthenticationContext];

        if (!v130)
        {
          v133 = MEMORY[0x1E696ABC0];
          v346 = *MEMORY[0x1E696A578];
          v347 = @"If you are setting an externalizedContext you must also provide a fallback appleIDAuthenticationContext";
          v134 = MEMORY[0x1E695DF20];
          v135 = &v347;
          v136 = &v346;
          goto LABEL_152;
        }

        if (!v120)
        {
          goto LABEL_147;
        }
      }

      else if ((v120 & 1) == 0)
      {
        goto LABEL_147;
      }

      v131 = [(PKPaymentRequest *)v5->_request paymentContentItems];
      v132 = [v131 count];

      if (v132 >= 0x65)
      {
        v133 = MEMORY[0x1E696ABC0];
        v344 = *MEMORY[0x1E696A578];
        v345 = @"paymentContentItems may not contain more than 100 items";
        v134 = MEMORY[0x1E695DF20];
        v135 = &v345;
        v136 = &v344;
LABEL_152:
        v94 = [v134 dictionaryWithObjects:v135 forKeys:v136 count:1];
        v95 = [v133 errorWithDomain:@"PKPassKitErrorDomain" code:1 userInfo:v94];

        goto LABEL_153;
      }

      v11 = v81;
      v6 = v265;
    }

    if (v12 == 6)
    {
      v140 = v5->_request;
      v141 = objc_opt_class();
      v274 = v11;
      v142 = _PKPaymentValidateProperty(v140, @"externalizedContext", v141, 0, a3, &v274);
      v81 = v274;

      if (!v142 || v6 == 6)
      {
        v80 = a3;
      }

      else
      {
        v143 = [(PKPaymentRequest *)v5->_request clientViewSourceIdentifier];
        v80 = a3;
        if (v143)
        {
          v142 = 1;
        }

        else
        {
          v146 = v5->_request;
          v147 = objc_opt_class();
          v273 = v81;
          v142 = _PKPaymentValidatePropertyArray(v146, @"paymentContentItems", v147, 0, 1, a3, &v273);
          v148 = v273;

          v81 = v148;
        }
      }

      v149 = [(PKPaymentRequest *)v5->_request externalizedContext];

      if (!v149)
      {
        v133 = MEMORY[0x1E696ABC0];
        v342 = *MEMORY[0x1E696A578];
        v343 = @"An externalizedContext must be set";
        v134 = MEMORY[0x1E695DF20];
        v135 = &v343;
        v136 = &v342;
        goto LABEL_152;
      }

      if (!v142)
      {
        goto LABEL_147;
      }

      v11 = v81;
      v6 = v265;
    }

    if (v6 > 0xF || ((1 << v6) & 0xA0C0) == 0)
    {
      v180 = [(PKPaymentRequest *)v5->_request paymentSummaryItems];
      v94 = [v180 lastObject];

      v181 = objc_opt_class();
      if (!_PKPaymentValidateProperty(v94, @"amount", v181, 1, a3, 0) || ([v94 amount], v182 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x1E696AB90], "notANumber"), v183 = objc_claimAutoreleasedReturnValue(), v184 = objc_msgSend(v182, "isEqualToNumber:", v183), v183, v182, v184))
      {
        v80 = a3;
        if ((a3 - 1) >= 2)
        {
          v185 = @"You must provide a total amount to be charged in the final payment summary item, even if the total item is pending.";
        }

        else
        {
          v185 = @"You must provide a total amount, even if the total item is pending.";
        }

        v186 = MEMORY[0x1E696ABC0];
        v340 = *MEMORY[0x1E696A578];
        v341 = v185;
        v187 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v341 forKeys:&v340 count:1];
        v95 = [v186 errorWithDomain:@"PKPassKitErrorDomain" code:1 userInfo:v187];

        v126 = 0;
        v5 = v264;
        goto LABEL_154;
      }

      v5 = v264;
    }

    v150 = [(PKPaymentRequest *)v5->_request paymentSummaryItems];
    v151 = [v150 count];

    if (v151 >= 0x65)
    {
      v152 = MEMORY[0x1E696AEC0];
      v80 = a3;
      v153 = _PKPaymentRequestGetDescriptivePropertyName(@"paymentSummaryItems", a3, (a3 - 1) < 2);
      v94 = [v152 stringWithFormat:@"%@ may not contain more than 100 items", v153];

      v154 = MEMORY[0x1E696ABC0];
      v338 = *MEMORY[0x1E696A578];
      v339 = v94;
      v155 = MEMORY[0x1E695DF20];
      v156 = &v339;
      v157 = &v338;
LABEL_150:
      v163 = [v155 dictionaryWithObjects:v156 forKeys:v157 count:1];
      v95 = [v154 errorWithDomain:@"PKPassKitErrorDomain" code:1 userInfo:v163];

      goto LABEL_153;
    }

    v158 = [(PKPaymentRequest *)v5->_request availableShippingMethods];
    v159 = [v158 methods];
    v160 = [v159 count];

    if (v160 >= 0x65)
    {
      v161 = MEMORY[0x1E696AEC0];
      v80 = a3;
      v162 = _PKPaymentRequestGetDescriptivePropertyName(@"shippingMethods", a3, (a3 - 1) < 2);
      v94 = [v161 stringWithFormat:@"%@ may not contain more than 100 items", v162];

      v154 = MEMORY[0x1E696ABC0];
      v336 = *MEMORY[0x1E696A578];
      v337 = v94;
      v155 = MEMORY[0x1E695DF20];
      v156 = &v337;
      v157 = &v336;
      goto LABEL_150;
    }

    v175 = [(PKPaymentRequest *)v5->_request applicationData];
    p_isa = &v5->super.isa;
    v177 = [v175 length] < 0x401 || v260;

    if ((v177 & 1) == 0)
    {
      v188 = MEMORY[0x1E696AEC0];
      v80 = a3;
      v189 = _PKPaymentRequestGetDescriptivePropertyName(@"applicationData", a3, (a3 - 1) < 2);
      v94 = [v188 stringWithFormat:@"%@ may not be more than 1024 bytes", v189];

      v190 = MEMORY[0x1E696ABC0];
      v334 = *MEMORY[0x1E696A578];
      v335 = v94;
      v191 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v335 forKeys:&v334 count:1];
      v95 = [v190 errorWithDomain:@"PKPassKitErrorDomain" code:1 userInfo:v191];

      v126 = 0;
      v5 = p_isa;
      goto LABEL_154;
    }

    v5 = p_isa;
    if (([p_isa[1] isShippingEditable] & 1) == 0)
    {
      v178 = [p_isa[1] shippingContact];

      if (!v178)
      {
        v198 = MEMORY[0x1E696AEC0];
        v80 = a3;
        v199 = _PKPaymentRequestGetDescriptivePropertyName(@"shippingEditable", a3, 0);
        v94 = [v198 stringWithFormat:@"When %@ is set to NO a shipping contact must be provided", v199];

        v154 = MEMORY[0x1E696ABC0];
        v332 = *MEMORY[0x1E696A578];
        v333 = v94;
        v155 = MEMORY[0x1E695DF20];
        v156 = &v333;
        v157 = &v332;
        goto LABEL_150;
      }
    }

    if ([p_isa[1] APIType] >= 5)
    {
      v179 = MEMORY[0x1E696ABC0];
      v330 = *MEMORY[0x1E696A578];
      v331 = @"The API type is not valid";
      v94 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v331 forKeys:&v330 count:1];
      v95 = [v179 errorWithDomain:@"PKPassKitErrorDomain" code:1 userInfo:v94];

      v126 = 0;
      v80 = a3;
      goto LABEL_154;
    }

    if (v6 > 0xD || ((1 << v6) & 0x20C0) == 0)
    {
      v207 = [p_isa[1] paymentSummaryItems];
      v208 = [v207 lastObject];
      v209 = [v208 amount];

      v272 = v11;
      LODWORD(v207) = [p_isa _checkTotal:v209 withAPIType:a3 error:&v272];
      v81 = v272;

      if (!v207)
      {
LABEL_211:
        v126 = 0;
        goto LABEL_101;
      }

      v11 = v81;
    }

    v192 = [p_isa[1] supportedCountries];
    v193 = [v192 count];

    if (v193)
    {
      v194 = p_isa[1];
      v195 = objc_opt_class();
      v196 = objc_opt_class();
      v197 = [MEMORY[0x1E695DF58] ISOCountryCodes];
      v271 = v11;
      LODWORD(v194) = _PKPaymentValidatePropertyUnion(v194, @"supportedCountries", v195, v196, v197, 0, a3, &v271);
      v81 = v271;

      if (!v194)
      {
        goto LABEL_211;
      }
    }

    else
    {
      v81 = v11;
    }

    v80 = a3;
    if (v260)
    {
      if (v265 == 3)
      {
        v200 = [p_isa[1] merchantSession];

        if (v200)
        {
          v201 = p_isa[1];
          v202 = objc_opt_class();
          v270 = v81;
          v203 = _PKPaymentValidateProperty(v201, @"passTypeIdentifier", v202, 1, a3, &v270);
          v94 = v270;

          if (!v203)
          {
            v126 = 0;
            v81 = v94;
            goto LABEL_249;
          }

          v204 = v264->_request;
          v5 = v264;
          v205 = objc_opt_class();
          v269 = v94;
          v126 = _PKPaymentValidateProperty(v204, @"passSerialNumber", v205, 1, a3, &v269);
          v95 = v269;
          goto LABEL_154;
        }
      }
    }

    else
    {
      if (([p_isa[1] isVirtualCardRequest] & 1) == 0)
      {
        v206 = [p_isa[1] peerPaymentRequest];
        if (v206)
        {
        }

        else
        {
          v254 = [p_isa[1] passTypeIdentifier];

          if (v254)
          {
            v133 = MEMORY[0x1E696ABC0];
            v328 = *MEMORY[0x1E696A578];
            v329 = @"This sort of request may not use the passTypeIdentifier field";
            v134 = MEMORY[0x1E695DF20];
            v135 = &v329;
            v136 = &v328;
            goto LABEL_152;
          }
        }
      }

      if (([p_isa[1] isVirtualCardRequest] & 1) == 0)
      {
        v253 = [p_isa[1] peerPaymentRequest];
        if (v253)
        {
          v94 = v253;
          v126 = 1;
          v95 = v81;
          goto LABEL_154;
        }

        v255 = [p_isa[1] passSerialNumber];

        if (v255)
        {
          v133 = MEMORY[0x1E696ABC0];
          v326 = *MEMORY[0x1E696A578];
          v327 = @"This sort of request may not use the passSerialNumber field";
          v134 = MEMORY[0x1E695DF20];
          v135 = &v327;
          v136 = &v326;
          goto LABEL_152;
        }
      }
    }

    v126 = 1;
    goto LABEL_155;
  }

  v90 = v5->_request;
  v91 = objc_opt_class();
  v302 = v11;
  v80 = a3;
  LODWORD(v90) = _PKPaymentValidateProperty(v90, @"peerPaymentQuote", v91, 1, a3, &v302);
  v81 = v302;

  if (!v90)
  {
    goto LABEL_147;
  }

  v92 = v5->_request;
  v93 = objc_opt_class();
  v94 = [MEMORY[0x1E695DF58] ISOCurrencyCodes];
  v301 = v81;
  LODWORD(v93) = _PKPaymentValidatePropertyMembership(v92, @"currencyCode", v93, v94, a3, &v301);
  v95 = v301;

  if (!v93)
  {
LABEL_153:
    v126 = 0;
LABEL_154:

    v81 = v95;
    goto LABEL_155;
  }

  v96 = v5->_request;
  v97 = objc_opt_class();
  v300 = v95;
  LODWORD(v96) = _PKPaymentValidatePropertyArray(v96, @"shippingMethods", v97, 0, 0, a3, &v300);
  v81 = v300;

  if (!v96)
  {
    goto LABEL_147;
  }

  v299[0] = MEMORY[0x1E69E9820];
  v299[1] = 3221225472;
  v299[2] = __58__PKPaymentRequestValidator_isValidWithAPIType_withError___block_invoke_3;
  v299[3] = &unk_1E79DA3F0;
  v299[4] = v5;
  v98 = _Block_copy(v299);
  v99 = v5->_request;
  v100 = objc_opt_class();
  v298 = v81;
  v101 = _PKPaymentValidatePropertyArray(v99, @"paymentSummaryItems", v100, v98, 1, a3, &v298);
  v102 = v298;

  if (!v101)
  {
    v126 = 0;
    v81 = v102;
    goto LABEL_155;
  }

  v103 = [(PKPaymentRequest *)v5->_request peerPaymentRequest];
  v104 = [v103 peerPaymentQuote];

  v105 = objc_opt_class();
  v297 = v102;
  LODWORD(v103) = _PKPaymentValidateProperty(v104, @"appleHash", v105, 1, a3, &v297);
  v81 = v297;

  v259 = a4;
  v256 = v104;
  if (!v103)
  {
    goto LABEL_130;
  }

  v106 = objc_opt_class();
  v296 = v81;
  v107 = _PKPaymentValidateProperty(v104, @"externalHash", v106, 1, a3, &v296);
  v108 = v296;

  if (!v107)
  {
    goto LABEL_213;
  }

  v109 = objc_opt_class();
  v295 = v108;
  v110 = _PKPaymentValidateProperty(v104, @"totalReceiveAmount", v109, 1, a3, &v295);
  v81 = v295;

  if (!v110)
  {
LABEL_130:
    v117 = 0;
    goto LABEL_214;
  }

  v111 = objc_opt_class();
  v294 = v81;
  v112 = _PKPaymentValidateProperty(v104, @"totalReceiveAmountCurrency", v111, 1, a3, &v294);
  v108 = v294;

  if (!v112)
  {
LABEL_213:
    v117 = 0;
    v81 = v108;
    goto LABEL_214;
  }

  v113 = objc_opt_class();
  v293 = v108;
  v114 = _PKPaymentValidateProperty(v104, @"items", v113, 1, a3, &v293);
  v81 = v293;

  if (!v114)
  {
    goto LABEL_130;
  }

  v115 = [v104 items];
  v116 = [v115 count];

  if (!v116)
  {
    v210 = MEMORY[0x1E696ABC0];
    v353 = *MEMORY[0x1E696A578];
    v354 = @"Quote items must contain at least one item";
    v211 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v354 forKeys:&v353 count:1];
    v108 = [v210 errorWithDomain:@"PKPassKitErrorDomain" code:1 userInfo:v211];

    goto LABEL_213;
  }

  v117 = 1;
LABEL_214:
  v291 = 0u;
  v292 = 0u;
  v289 = 0u;
  v290 = 0u;
  v212 = [v256 items];
  v213 = [v212 countByEnumeratingWithState:&v289 objects:v352 count:16];
  if (!v213)
  {
    goto LABEL_246;
  }

  v214 = v213;
  v215 = *v290;
  v262 = *MEMORY[0x1E696A578];
  do
  {
    v216 = 0;
    do
    {
      if (*v290 != v215)
      {
        objc_enumerationMutation(v212);
      }

      if ((v117 & 1) == 0)
      {
LABEL_235:
        v117 = 0;
        goto LABEL_240;
      }

      v217 = *(*(&v289 + 1) + 8 * v216);
      v218 = [v217 type];
      if ((v218 - 2) >= 3)
      {
        if (v218 != 1)
        {
          v231 = MEMORY[0x1E696ABC0];
          v350 = v262;
          v351 = @"Unsupported PKPeerPaymentQuoteItem type";
          v232 = MEMORY[0x1E695DF20];
          v233 = &v351;
          v234 = &v350;
          goto LABEL_238;
        }

        v235 = objc_opt_class();
        v288 = v81;
        v236 = _PKPaymentValidateProperty(v217, @"totalAmount", v235, 1, a3, &v288);
        v221 = v288;

        if (!v236)
        {
          goto LABEL_236;
        }

        v237 = objc_opt_class();
        v287 = v221;
        v238 = _PKPaymentValidateProperty(v217, @"totalAmountCurrency", v237, 1, a3, &v287);
        v81 = v287;

        if (!v238)
        {
          goto LABEL_235;
        }

        v239 = objc_opt_class();
        v240 = objc_opt_class();
        v241 = _PKAllNetworks();
        v286 = v81;
        LODWORD(v240) = _PKPaymentValidatePropertyUnion(v217, @"supportedNetworks", v239, v240, v241, 1, a3, &v286);
        v242 = v286;

        if (!v240)
        {
          goto LABEL_239;
        }

        v243 = objc_opt_class();
        v285 = v242;
        v244 = _PKPaymentValidateProperty(v217, @"merchantIdentifier", v243, 1, a3, &v285);
        v245 = v285;

        if (!v244)
        {
          v242 = v245;
          goto LABEL_239;
        }

        v246 = objc_opt_class();
        v284 = v245;
        v247 = _PKPaymentValidateProperty(v217, @"countryCode", v246, 1, a3, &v284);
        v242 = v284;

        if (!v247)
        {
          goto LABEL_239;
        }

        v283 = v242;
        v248 = _PKPaymentValidateMerchantCapabilities(v217, a3, v265, &v283);
        v249 = v283;

        if (!v248)
        {
          v242 = v249;
          goto LABEL_239;
        }

        v250 = objc_opt_class();
        v282 = v249;
        v251 = _PKPaymentValidateProperty(v217, @"nonce", v250, 1, a3, &v282);
        v81 = v282;

        if ((v251 & 1) == 0)
        {
          goto LABEL_235;
        }
      }

      else
      {
        v219 = objc_opt_class();
        v281 = v81;
        v220 = _PKPaymentValidateProperty(v217, @"totalAmount", v219, 1, a3, &v281);
        v221 = v281;

        if (!v220)
        {
          goto LABEL_236;
        }

        v222 = objc_opt_class();
        v280 = v221;
        v223 = _PKPaymentValidateProperty(v217, @"totalAmountCurrency", v222, 1, a3, &v280);
        v81 = v280;

        if (!v223)
        {
          goto LABEL_235;
        }

        v224 = objc_opt_class();
        v279 = v81;
        v225 = _PKPaymentValidateProperty(v217, @"countryCode", v224, 1, a3, &v279);
        v221 = v279;

        if ((v225 & 1) == 0)
        {
LABEL_236:
          v117 = 0;
          v81 = v221;
          goto LABEL_240;
        }

        v226 = objc_opt_class();
        v278 = v221;
        v227 = _PKPaymentValidateProperty(v217, @"nonce", v226, 1, a3, &v278);
        v81 = v278;

        if (!v227)
        {
          goto LABEL_235;
        }
      }

      v228 = [v217 totalAmount];
      v229 = [MEMORY[0x1E696AB90] notANumber];
      v230 = [v228 isEqualToNumber:v229];

      if (v230)
      {
        v231 = MEMORY[0x1E696ABC0];
        v348 = v262;
        v349 = @"PKPeerPaymentQuoteItem totalAmount value can't be NaN";
        v232 = MEMORY[0x1E695DF20];
        v233 = &v349;
        v234 = &v348;
LABEL_238:
        v241 = [v232 dictionaryWithObjects:v233 forKeys:v234 count:1];
        v242 = [v231 errorWithDomain:@"PKPassKitErrorDomain" code:1 userInfo:v241];

LABEL_239:
        v117 = 0;
        v81 = v242;
        goto LABEL_240;
      }

      v117 = 1;
LABEL_240:
      ++v216;
    }

    while (v214 != v216);
    v252 = [v212 countByEnumeratingWithState:&v289 objects:v352 count:16];
    v214 = v252;
  }

  while (v252);
LABEL_246:

  if (v117)
  {
    v11 = v81;
    a4 = v259;
    v5 = v264;
    v6 = v265;
    goto LABEL_94;
  }

  v126 = 0;
  a4 = v259;
  v80 = a3;
LABEL_249:
  v5 = v264;
LABEL_155:
  v164 = [(PKPaymentRequest *)v5->_request paymentSummaryItems];
  v165 = [v164 pk_containsObjectPassingTest:&__block_literal_global_619];

  if (v126 && v265 != 10 && v165)
  {
    v166 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v166, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1AD337000, v166, OS_LOG_TYPE_ERROR, "PKPaymentRequests cannot contain disbursement specific summary items", buf, 2u);
    }

    if (!a4)
    {
LABEL_174:
      LOBYTE(v126) = 0;
      goto LABEL_175;
    }

LABEL_170:
    if (v81)
    {
      v324[0] = *MEMORY[0x1E696A578];
      v172 = PKLocalizedPaymentString(&cfstr_InAppPaymentEr_13.isa, 0);
      v324[1] = *MEMORY[0x1E696AA08];
      v325[0] = v172;
      v325[1] = v81;
      v173 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v325 forKeys:v324 count:2];
    }

    else
    {
      v173 = 0;
    }

    *a4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:1 userInfo:v173];

    goto LABEL_174;
  }

  if (v265 == 10)
  {
    v167 = v126;
  }

  else
  {
    v167 = 0;
  }

  if (v167 == 1)
  {
    v168 = [(PKPaymentRequest *)v5->_request disbursementPaymentRequest];
    v169 = [[PKDisbursementPaymentRequestValidator alloc] initWithDisbursementPaymentRequest:v168];
    v170 = [(PKPaymentRequest *)v5->_request currencyCode];
    [(PKDisbursementPaymentRequestValidator *)v169 setCurrencyCode:v170];

    v267 = v81;
    v126 = [(PKDisbursementPaymentRequestValidator *)v169 isValidWithAPIType:v80 withError:&v267];
    v171 = v267;

    v81 = v171;
  }

  if (a4)
  {
    if (!v126)
    {
      goto LABEL_170;
    }

    *a4 = 0;
    LOBYTE(v126) = 1;
  }

LABEL_175:

  return v126;
}

void __58__PKPaymentRequestValidator_isValidWithAPIType_withError___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = *(*(a1 + 32) + 8);
    v4 = v6;
    v5 = [v3 currencyCode];
    [v4 setCurrencyCode:v5];
  }
}

void __58__PKPaymentRequestValidator_isValidWithAPIType_withError___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = *(*(a1 + 32) + 8);
    v4 = v6;
    v5 = [v3 currencyCode];
    [v4 setCurrencyCode:v5];
  }
}

void __58__PKPaymentRequestValidator_isValidWithAPIType_withError___block_invoke_3(uint64_t a1, void *a2)
{
  v6 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = *(*(a1 + 32) + 8);
    v4 = v6;
    v5 = [v3 currencyCode];
    [v4 setCurrencyCode:v5];
  }
}

uint64_t __58__PKPaymentRequestValidator_isValidWithAPIType_withError___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isKindOfClass = 1;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

@end