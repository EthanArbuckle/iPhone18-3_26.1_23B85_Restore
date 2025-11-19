@interface CRKCertificateExchangeBroadcastHandler
- (CRKCertificateExchangeBroadcastHandler)initWithIDSPrimitives:(id)a3 appleIDProvider:(id)a4;
- (CRKCertificateExchangeBroadcastHandlerDelegate)delegate;
- (void)processMessage:(id)a3 senderAppleID:(id)a4 senderAddress:(id)a5;
@end

@implementation CRKCertificateExchangeBroadcastHandler

- (CRKCertificateExchangeBroadcastHandler)initWithIDSPrimitives:(id)a3 appleIDProvider:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = CRKCertificateExchangeBroadcastHandler;
  v9 = [(CRKCertificateExchangeBroadcastHandler *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_IDSPrimitives, a3);
    objc_storeStrong(&v10->_appleIDProvider, a4);
  }

  return v10;
}

- (void)processMessage:(id)a3 senderAppleID:(id)a4 senderAddress:(id)a5
{
  v54 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v10 = [CRKIDSMessagePayload instanceWithDictionary:a3];
  v11 = [(CRKCertificateExchangeBroadcastHandler *)self appleIDProvider];
  v12 = [v11 appleID];

  if (v10)
  {
    v13 = [v10 messageMetadata];
    if ([v13 messageType] != 1 || v12 == 0)
    {
LABEL_22:

      goto LABEL_23;
    }

    v15 = [(CRKCertificateExchangeBroadcastHandler *)self delegate];

    if (v15)
    {
      v16 = [v10 messageContent];
      v13 = [CRKRequestCertificatesIDSMessage instanceWithDictionary:v16];

      if (v13)
      {
        v44 = v9;
        v17 = _CRKLogASM();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = objc_opt_class();
          v19 = NSStringFromClass(v18);
          *buf = 138543874;
          v49 = v19;
          v50 = 2048;
          v51 = self;
          v52 = 2114;
          v53 = v8;
          _os_log_impl(&dword_243550000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@ - %p: Received certificate request from (%{public}@)", buf, 0x20u);
        }

        v20 = [(CRKCertificateExchangeBroadcastHandler *)self delegate];
        v21 = [v13 sourceRole];
        v22 = [v13 destinationRole];
        v23 = [v13 controlGroupIdentifier];
        v24 = [v13 destinationDeviceIdentifier];
        v25 = v13;
        v26 = v24;
        v45 = v25;
        v27 = [v25 requesterCertificate];
        v47 = 0;
        v28 = [v20 certificateExchangeHandler:self needsCertificatesForRequester:v8 sourceRole:v21 destinationRole:v22 controlGroupIdentifier:v23 destinationDeviceIdentifier:v26 requesterCertificate:v27 error:&v47];
        v29 = v47;

        if (v28)
        {
          v30 = [v28 isValidRequest];
          v31 = _CRKLogASM();
          v32 = os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT);
          if (v30)
          {
            if (v32)
            {
              v33 = objc_opt_class();
              v34 = NSStringFromClass(v33);
              *buf = 138543618;
              v49 = v34;
              v50 = 2048;
              v51 = self;
              _os_log_impl(&dword_243550000, v31, OS_LOG_TYPE_DEFAULT, "%{public}@ - %p: Valid cert request processed. Replying with cert.", buf, 0x16u);
            }

            v35 = [CRKRequestCertificatesResponseIDSMessage alloc];
            v36 = [v45 requestIdentifier];
            v37 = [v28 certificateDataCollection];
            v31 = [(CRKRequestCertificatesResponseIDSMessage *)v35 initWithRequestIdentifier:v36 certificateDataCollection:v37 error:v29];

            v38 = [CRKIDSMessageCannon alloc];
            v39 = [(CRKCertificateExchangeBroadcastHandler *)self IDSPrimitives];
            v40 = [(CRKIDSMessageCannon *)v38 initWithIDSPrimitives:v39];

            v13 = v45;
            v41 = objc_opt_new();
            [v41 setFireAndForget:1];
            v46[0] = MEMORY[0x277D85DD0];
            v46[1] = 3221225472;
            v46[2] = __85__CRKCertificateExchangeBroadcastHandler_processMessage_senderAppleID_senderAddress___block_invoke;
            v46[3] = &unk_278DC0F68;
            v46[4] = self;
            [(CRKIDSMessageCannon *)v40 sendIDSMessage:v31 destinationAddress:v44 sourceAppleID:v12 options:v41 completion:v46];

            v9 = v44;
          }

          else
          {
            v13 = v45;
            if (v32)
            {
              v42 = objc_opt_class();
              v43 = NSStringFromClass(v42);
              *buf = 138543618;
              v49 = v43;
              v50 = 2048;
              v51 = self;
              _os_log_impl(&dword_243550000, v31, OS_LOG_TYPE_DEFAULT, "%{public}@ - %p: Cert request is invalid. Dropping message.", buf, 0x16u);
            }

            v9 = v44;
          }
        }

        else
        {
          v31 = _CRKLogASM();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            [CRKCertificateExchangeBroadcastHandler processMessage:v29 senderAppleID:? senderAddress:?];
          }

          v9 = v44;
          v13 = v45;
        }
      }

      goto LABEL_22;
    }
  }

LABEL_23:
}

void __85__CRKCertificateExchangeBroadcastHandler_processMessage_senderAppleID_senderAddress___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = _CRKLogASM();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __85__CRKCertificateExchangeBroadcastHandler_processMessage_senderAppleID_senderAddress___block_invoke_cold_1(a1, v3);
    }
  }
}

- (CRKCertificateExchangeBroadcastHandlerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)processMessage:(uint64_t)a1 senderAppleID:(void *)a2 senderAddress:.cold.1(uint64_t a1, void *a2)
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [a2 verboseDescription];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_243550000, v6, v7, "%{public}@ - %p: Failed to acquire certificate to exchange. Error = %{public}@", v8, v9, v10, v11, v12);
}

void __85__CRKCertificateExchangeBroadcastHandler_processMessage_senderAppleID_senderAddress___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [a2 verboseDescription];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_243550000, v6, v7, "%{public}@ - %p: Failed to respond to request cert message. Error = %{public}@", v8, v9, v10, v11, v12);
}

@end