@interface PKSearchResults
- (PKSearchResults)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKSearchResults

- (void)encodeWithCoder:(id)coder
{
  placeholderString = self->_placeholderString;
  coderCopy = coder;
  [coderCopy encodeObject:placeholderString forKey:@"placeholderString"];
  [coderCopy encodeObject:self->_suggestedAutocompleteTokens forKey:@"suggestedAutocompleteTokens"];
  [coderCopy encodeObject:self->_pendingPeerPaymentRequestResults forKey:@"pendingPeerPaymentRequestResults"];
  [coderCopy encodeObject:self->_categoryResults forKey:@"categoryResults"];
  [coderCopy encodeObject:self->_merchantResults forKey:@"merchantResults"];
  [coderCopy encodeObject:self->_transactionResults forKey:@"transactionResults"];
  [coderCopy encodeObject:self->_locationResults forKey:@"locationResults"];
  [coderCopy encodeObject:self->_personResults forKey:@"personResults"];
  [coderCopy encodeObject:self->_topHitBarcodePassResults forKey:@"topHitBarcodePassResults"];
  [coderCopy encodeObject:self->_barcodePassResults forKey:@"barcodePassResults"];
  [coderCopy encodeObject:self->_expiredPassResults forKey:@"expiredPassResults"];
  [coderCopy encodeObject:self->_topHitPaymentPassResults forKey:@"topHitPaymentPassResults"];
  [coderCopy encodeObject:self->_paymentPassResults forKey:@"paymentPassResults"];
  [coderCopy encodeObject:self->_topHitKeyAndIDResults forKey:@"topHitKeyAndIDResults"];
  [coderCopy encodeObject:self->_keyAndIDResults forKey:@"keyAndIDResults"];
  [coderCopy encodeObject:self->_transactionTagResults forKey:@"transactionTagResults"];
  [coderCopy encodeObject:self->_orderResults forKey:@"orderResults"];
  [coderCopy encodeObject:self->_paymentSetupProductResults forKey:@"paymentSetupProductResults"];
  [coderCopy encodeObject:self->_topHitAccountResults forKey:@"topHitAccountResults"];
  [coderCopy encodeObject:self->_accountResults forKey:@"accountResults"];
}

- (PKSearchResults)initWithCoder:(id)coder
{
  coderCopy = coder;
  v106.receiver = self;
  v106.super_class = PKSearchResults;
  v5 = [(PKSearchResults *)&v106 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"placeholderString"];
    placeholderString = v5->_placeholderString;
    v5->_placeholderString = v6;

    v105 = MEMORY[0x1E695DFD8];
    v104 = objc_opt_class();
    v103 = objc_opt_class();
    v102 = objc_opt_class();
    v101 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = [v105 setWithObjects:{v104, v103, v102, v101, v8, v9, v10, v11, v12, v13, v14, v15, objc_opt_class(), 0}];
    v17 = [coderCopy decodeObjectOfClasses:v16 forKey:@"suggestedAutocompleteTokens"];
    suggestedAutocompleteTokens = v5->_suggestedAutocompleteTokens;
    v5->_suggestedAutocompleteTokens = v17;

    v19 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"pendingPeerPaymentRequestResults"];
    pendingPeerPaymentRequestResults = v5->_pendingPeerPaymentRequestResults;
    v5->_pendingPeerPaymentRequestResults = v19;

    v21 = MEMORY[0x1E695DFD8];
    v22 = objc_opt_class();
    v23 = [v21 setWithObjects:{v22, objc_opt_class(), 0}];
    v24 = [coderCopy decodeObjectOfClasses:v23 forKey:@"categoryResults"];
    categoryResults = v5->_categoryResults;
    v5->_categoryResults = v24;

    v26 = MEMORY[0x1E695DFD8];
    v27 = objc_opt_class();
    v28 = [v26 setWithObjects:{v27, objc_opt_class(), 0}];
    v29 = [coderCopy decodeObjectOfClasses:v28 forKey:@"merchantResults"];
    merchantResults = v5->_merchantResults;
    v5->_merchantResults = v29;

    v31 = MEMORY[0x1E695DFD8];
    v32 = objc_opt_class();
    v33 = [v31 setWithObjects:{v32, objc_opt_class(), 0}];
    v34 = [coderCopy decodeObjectOfClasses:v33 forKey:@"transactionResults"];
    transactionResults = v5->_transactionResults;
    v5->_transactionResults = v34;

    v36 = MEMORY[0x1E695DFD8];
    v37 = objc_opt_class();
    v38 = [v36 setWithObjects:{v37, objc_opt_class(), 0}];
    v39 = [coderCopy decodeObjectOfClasses:v38 forKey:@"locationResults"];
    locationResults = v5->_locationResults;
    v5->_locationResults = v39;

    v41 = MEMORY[0x1E695DFD8];
    v42 = objc_opt_class();
    v43 = [v41 setWithObjects:{v42, objc_opt_class(), 0}];
    v44 = [coderCopy decodeObjectOfClasses:v43 forKey:@"personResults"];
    personResults = v5->_personResults;
    v5->_personResults = v44;

    v46 = MEMORY[0x1E695DFD8];
    v47 = objc_opt_class();
    v48 = [v46 setWithObjects:{v47, objc_opt_class(), 0}];
    v49 = [coderCopy decodeObjectOfClasses:v48 forKey:@"transactionTagResults"];
    transactionTagResults = v5->_transactionTagResults;
    v5->_transactionTagResults = v49;

    v51 = MEMORY[0x1E695DFD8];
    v52 = objc_opt_class();
    v53 = [v51 setWithObjects:{v52, objc_opt_class(), 0}];
    v54 = [coderCopy decodeObjectOfClasses:v53 forKey:@"topHitBarcodePassResults"];
    topHitBarcodePassResults = v5->_topHitBarcodePassResults;
    v5->_topHitBarcodePassResults = v54;

    v56 = MEMORY[0x1E695DFD8];
    v57 = objc_opt_class();
    v58 = [v56 setWithObjects:{v57, objc_opt_class(), 0}];
    v59 = [coderCopy decodeObjectOfClasses:v58 forKey:@"barcodePassResults"];
    barcodePassResults = v5->_barcodePassResults;
    v5->_barcodePassResults = v59;

    v61 = MEMORY[0x1E695DFD8];
    v62 = objc_opt_class();
    v63 = [v61 setWithObjects:{v62, objc_opt_class(), 0}];
    v64 = [coderCopy decodeObjectOfClasses:v63 forKey:@"expiredPassResults"];
    expiredPassResults = v5->_expiredPassResults;
    v5->_expiredPassResults = v64;

    v66 = MEMORY[0x1E695DFD8];
    v67 = objc_opt_class();
    v68 = [v66 setWithObjects:{v67, objc_opt_class(), 0}];
    v69 = [coderCopy decodeObjectOfClasses:v68 forKey:@"topHitKeyAndIDResults"];
    topHitKeyAndIDResults = v5->_topHitKeyAndIDResults;
    v5->_topHitKeyAndIDResults = v69;

    v71 = MEMORY[0x1E695DFD8];
    v72 = objc_opt_class();
    v73 = [v71 setWithObjects:{v72, objc_opt_class(), 0}];
    v74 = [coderCopy decodeObjectOfClasses:v73 forKey:@"keyAndIDResults"];
    keyAndIDResults = v5->_keyAndIDResults;
    v5->_keyAndIDResults = v74;

    v76 = MEMORY[0x1E695DFD8];
    v77 = objc_opt_class();
    v78 = [v76 setWithObjects:{v77, objc_opt_class(), 0}];
    v79 = [coderCopy decodeObjectOfClasses:v78 forKey:@"topHitPaymentPassResults"];
    topHitPaymentPassResults = v5->_topHitPaymentPassResults;
    v5->_topHitPaymentPassResults = v79;

    v81 = MEMORY[0x1E695DFD8];
    v82 = objc_opt_class();
    v83 = [v81 setWithObjects:{v82, objc_opt_class(), 0}];
    v84 = [coderCopy decodeObjectOfClasses:v83 forKey:@"paymentPassResults"];
    paymentPassResults = v5->_paymentPassResults;
    v5->_paymentPassResults = v84;

    v86 = MEMORY[0x1E695DFD8];
    v87 = objc_opt_class();
    v88 = [v86 setWithObjects:{v87, objc_opt_class(), 0}];
    v89 = [coderCopy decodeObjectOfClasses:v88 forKey:@"orderResults"];
    orderResults = v5->_orderResults;
    v5->_orderResults = v89;

    v91 = MEMORY[0x1E695DFD8];
    v92 = objc_opt_class();
    v93 = [v91 setWithObjects:{v92, objc_opt_class(), 0}];
    v94 = [coderCopy decodeObjectOfClasses:v93 forKey:@"paymentSetupProductResults"];
    paymentSetupProductResults = v5->_paymentSetupProductResults;
    v5->_paymentSetupProductResults = v94;

    v96 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"topHitAccountResults"];
    topHitAccountResults = v5->_topHitAccountResults;
    v5->_topHitAccountResults = v96;

    v98 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"accountResults"];
    accountResults = v5->_accountResults;
    v5->_accountResults = v98;
  }

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  v4 = [(NSString *)self->_placeholderString description];
  [v3 appendFormat:@"placeholderString: '%@'; ", v4];

  v5 = [(NSArray *)self->_suggestedAutocompleteTokens description];
  [v3 appendFormat:@"tokens: '%@'; ", v5];

  v6 = [(NSArray *)self->_categoryResults description];
  [v3 appendFormat:@"categoryResults: '%@'; ", v6];

  v7 = [(NSArray *)self->_merchantResults description];
  [v3 appendFormat:@"merchantResults: '%@'; ", v7];

  v8 = [(NSArray *)self->_transactionResults description];
  [v3 appendFormat:@"transactionResults: '%@'; ", v8];

  v9 = [(NSArray *)self->_locationResults description];
  [v3 appendFormat:@"locationResults: '%@'; ", v9];

  v10 = [(NSArray *)self->_personResults description];
  [v3 appendFormat:@"personResults: '%@'; ", v10];

  v11 = [(NSArray *)self->_topHitBarcodePassResults description];
  [v3 appendFormat:@"topHitBarcodePassResults: '%@'; ", v11];

  v12 = [(NSArray *)self->_topHitKeyAndIDResults description];
  [v3 appendFormat:@"topHitKeyAndIDResults: '%@'; ", v12];

  v13 = [(NSArray *)self->_topHitPaymentPassResults description];
  [v3 appendFormat:@"topHitPaymentPassResults: '%@'; ", v13];

  v14 = [(NSArray *)self->_barcodePassResults description];
  [v3 appendFormat:@"barcodePassResults: '%@'; ", v14];

  v15 = [(NSArray *)self->_expiredPassResults description];
  [v3 appendFormat:@"expiredPassResults: '%@'; ", v15];

  v16 = [(NSArray *)self->_keyAndIDResults description];
  [v3 appendFormat:@"keyAndIDResults: '%@'; ", v16];

  v17 = [(NSArray *)self->_paymentPassResults description];
  [v3 appendFormat:@"paymentPassResults: '%@'; ", v17];

  v18 = [(NSArray *)self->_transactionTagResults description];
  [v3 appendFormat:@"transactionTagResults: '%@'; ", v18];

  v19 = [(NSArray *)self->_orderResults description];
  [v3 appendFormat:@"orderResults: '%@'; ", v19];

  v20 = [(NSArray *)self->_paymentSetupProductResults description];
  [v3 appendFormat:@"paymentSetupProductResults: '%@'; ", v20];

  v21 = [(NSArray *)self->_pendingPeerPaymentRequestResults description];
  [v3 appendFormat:@"pendingPeerPaymentRequestResults: '%@'; ", v21];

  v22 = [(NSArray *)self->_topHitAccountResults description];
  [v3 appendFormat:@"topHitAccountResults: '%@'; ", v22];

  v23 = [(NSArray *)self->_accountResults description];
  [v3 appendFormat:@"accountResults: '%@'; ", v23];

  [v3 appendFormat:@">"];

  return v3;
}

@end