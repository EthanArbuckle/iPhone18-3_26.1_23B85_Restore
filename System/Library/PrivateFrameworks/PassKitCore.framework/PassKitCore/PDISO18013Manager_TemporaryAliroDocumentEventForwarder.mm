@interface PDISO18013Manager_TemporaryAliroDocumentEventForwarder
- (PDISO18013Manager_TemporaryAliroDocumentEventForwarder)initWithSecureElement:(id)element documentType:(id)type documentSignatureDate:(id)date subcredentialIdentifier:(id)identifier;
- (void)updateDocumentStatus:(BOOL)status completion:(id)completion;
@end

@implementation PDISO18013Manager_TemporaryAliroDocumentEventForwarder

- (PDISO18013Manager_TemporaryAliroDocumentEventForwarder)initWithSecureElement:(id)element documentType:(id)type documentSignatureDate:(id)date subcredentialIdentifier:(id)identifier
{
  elementCopy = element;
  typeCopy = type;
  dateCopy = date;
  identifierCopy = identifier;
  v26.receiver = self;
  v26.super_class = PDISO18013Manager_TemporaryAliroDocumentEventForwarder;
  v15 = [(PDISO18013Manager_TemporaryAliroDocumentEventForwarder *)&v26 init];
  v16 = v15;
  if (!v15)
  {
    goto LABEL_9;
  }

  objc_storeStrong(&v15->_secureElement, element);
  objc_storeStrong(&v16->_subcredentialIdentifier, identifier);
  if (!v16->_secureElement || !v16->_subcredentialIdentifier)
  {
    goto LABEL_13;
  }

  v17 = typeCopy;
  if (v17 != @"aliro-a")
  {
    v18 = v17;
    if (v17)
    {
      v19 = [(__CFString *)v17 isEqualToString:@"aliro-a"];

      if (v19)
      {
        goto LABEL_7;
      }

      v22 = v18;
      if (v22 == @"aliro-r" || (v23 = v22, v24 = [(__CFString *)v22 isEqualToString:@"aliro-r"], v23, v24))
      {
        v20 = 1;
        goto LABEL_8;
      }
    }

LABEL_13:
    v21 = 0;
    goto LABEL_14;
  }

LABEL_7:
  v20 = 0;
LABEL_8:
  v16->_documentType = v20;
  objc_storeStrong(&v16->_documentSignatureDate, date);
LABEL_9:
  v21 = v16;
LABEL_14:

  return v21;
}

- (void)updateDocumentStatus:(BOOL)status completion:(id)completion
{
  statusCopy = status;
  completionCopy = completion;
  secureElement = self->_secureElement;
  documentType = self->_documentType;
  p_documentSignatureDate = &self->_documentSignatureDate;
  documentSignatureDate = self->_documentSignatureDate;
  v10 = p_documentSignatureDate[1];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1001A2A98;
  v13[3] = &unk_100845A78;
  v14 = completionCopy;
  v12 = completionCopy;
  [(PKSecureElement *)secureElement updateAliroCredentialDocumentStatusWithSubcredentialIdentifier:v10 documentType:documentType isDocumentPresent:statusCopy signedDate:documentSignatureDate withCompletion:v13];
}

@end