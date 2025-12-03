@interface CRKCertificateExchangeBroadcastHandler
- (CRKCertificateExchangeBroadcastHandler)initWithIDSPrimitives:(id)primitives appleIDProvider:(id)provider;
- (CRKCertificateExchangeBroadcastHandlerDelegate)delegate;
- (void)processMessage:(id)message senderAppleID:(id)d senderAddress:(id)address;
@end

@implementation CRKCertificateExchangeBroadcastHandler

- (CRKCertificateExchangeBroadcastHandler)initWithIDSPrimitives:(id)primitives appleIDProvider:(id)provider
{
  primitivesCopy = primitives;
  providerCopy = provider;
  v12.receiver = self;
  v12.super_class = CRKCertificateExchangeBroadcastHandler;
  v9 = [(CRKCertificateExchangeBroadcastHandler *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_IDSPrimitives, primitives);
    objc_storeStrong(&v10->_appleIDProvider, provider);
  }

  return v10;
}

- (void)processMessage:(id)message senderAppleID:(id)d senderAddress:(id)address
{
  v54 = *MEMORY[0x277D85DE8];
  dCopy = d;
  addressCopy = address;
  v10 = [CRKIDSMessagePayload instanceWithDictionary:message];
  appleIDProvider = [(CRKCertificateExchangeBroadcastHandler *)self appleIDProvider];
  appleID = [appleIDProvider appleID];

  if (v10)
  {
    messageMetadata = [v10 messageMetadata];
    if ([messageMetadata messageType] != 1 || appleID == 0)
    {
LABEL_22:

      goto LABEL_23;
    }

    delegate = [(CRKCertificateExchangeBroadcastHandler *)self delegate];

    if (delegate)
    {
      messageContent = [v10 messageContent];
      messageMetadata = [CRKRequestCertificatesIDSMessage instanceWithDictionary:messageContent];

      if (messageMetadata)
      {
        v44 = addressCopy;
        v17 = _CRKLogASM();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = objc_opt_class();
          v19 = NSStringFromClass(v18);
          *buf = 138543874;
          v49 = v19;
          v50 = 2048;
          selfCopy3 = self;
          v52 = 2114;
          v53 = dCopy;
          _os_log_impl(&dword_243550000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@ - %p: Received certificate request from (%{public}@)", buf, 0x20u);
        }

        delegate2 = [(CRKCertificateExchangeBroadcastHandler *)self delegate];
        sourceRole = [messageMetadata sourceRole];
        destinationRole = [messageMetadata destinationRole];
        controlGroupIdentifier = [messageMetadata controlGroupIdentifier];
        destinationDeviceIdentifier = [messageMetadata destinationDeviceIdentifier];
        v25 = messageMetadata;
        v26 = destinationDeviceIdentifier;
        v45 = v25;
        requesterCertificate = [v25 requesterCertificate];
        v47 = 0;
        v28 = [delegate2 certificateExchangeHandler:self needsCertificatesForRequester:dCopy sourceRole:sourceRole destinationRole:destinationRole controlGroupIdentifier:controlGroupIdentifier destinationDeviceIdentifier:v26 requesterCertificate:requesterCertificate error:&v47];
        v29 = v47;

        if (v28)
        {
          isValidRequest = [v28 isValidRequest];
          v31 = _CRKLogASM();
          v32 = os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT);
          if (isValidRequest)
          {
            if (v32)
            {
              v33 = objc_opt_class();
              v34 = NSStringFromClass(v33);
              *buf = 138543618;
              v49 = v34;
              v50 = 2048;
              selfCopy3 = self;
              _os_log_impl(&dword_243550000, v31, OS_LOG_TYPE_DEFAULT, "%{public}@ - %p: Valid cert request processed. Replying with cert.", buf, 0x16u);
            }

            v35 = [CRKRequestCertificatesResponseIDSMessage alloc];
            requestIdentifier = [v45 requestIdentifier];
            certificateDataCollection = [v28 certificateDataCollection];
            v31 = [(CRKRequestCertificatesResponseIDSMessage *)v35 initWithRequestIdentifier:requestIdentifier certificateDataCollection:certificateDataCollection error:v29];

            v38 = [CRKIDSMessageCannon alloc];
            iDSPrimitives = [(CRKCertificateExchangeBroadcastHandler *)self IDSPrimitives];
            v40 = [(CRKIDSMessageCannon *)v38 initWithIDSPrimitives:iDSPrimitives];

            messageMetadata = v45;
            v41 = objc_opt_new();
            [v41 setFireAndForget:1];
            v46[0] = MEMORY[0x277D85DD0];
            v46[1] = 3221225472;
            v46[2] = __85__CRKCertificateExchangeBroadcastHandler_processMessage_senderAppleID_senderAddress___block_invoke;
            v46[3] = &unk_278DC0F68;
            v46[4] = self;
            [(CRKIDSMessageCannon *)v40 sendIDSMessage:v31 destinationAddress:v44 sourceAppleID:appleID options:v41 completion:v46];

            addressCopy = v44;
          }

          else
          {
            messageMetadata = v45;
            if (v32)
            {
              v42 = objc_opt_class();
              v43 = NSStringFromClass(v42);
              *buf = 138543618;
              v49 = v43;
              v50 = 2048;
              selfCopy3 = self;
              _os_log_impl(&dword_243550000, v31, OS_LOG_TYPE_DEFAULT, "%{public}@ - %p: Cert request is invalid. Dropping message.", buf, 0x16u);
            }

            addressCopy = v44;
          }
        }

        else
        {
          v31 = _CRKLogASM();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            [CRKCertificateExchangeBroadcastHandler processMessage:v29 senderAppleID:? senderAddress:?];
          }

          addressCopy = v44;
          messageMetadata = v45;
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