@interface PKPaymentTransactionRequest
- (PKPaymentTransactionRequest)init;
- (PKPaymentTransactionRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPaymentTransactionRequest

- (PKPaymentTransactionRequest)init
{
  v3.receiver = self;
  v3.super_class = PKPaymentTransactionRequest;
  result = [(PKPaymentTransactionRequest *)&v3 init];
  if (result)
  {
    *&result->_hasBackingData = xmmword_1ADB9ADE0;
  }

  return result;
}

- (PKPaymentTransactionRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v73.receiver = self;
  v73.super_class = PKPaymentTransactionRequest;
  v5 = [(PKPaymentTransactionRequest *)&v73 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"transactionSourceIdentifiers"];
    transactionSourceIdentifiers = v5->_transactionSourceIdentifiers;
    v5->_transactionSourceIdentifiers = v9;

    v11 = MEMORY[0x1E695DFD8];
    v12 = objc_opt_class();
    v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"transactionTypes"];
    transactionTypes = v5->_transactionTypes;
    v5->_transactionTypes = v14;

    v16 = MEMORY[0x1E695DFD8];
    v17 = objc_opt_class();
    v18 = [v16 setWithObjects:{v17, objc_opt_class(), 0}];
    v19 = [coderCopy decodeObjectOfClasses:v18 forKey:@"transactionSources"];
    transactionSources = v5->_transactionSources;
    v5->_transactionSources = v19;

    v21 = MEMORY[0x1E695DFD8];
    v22 = objc_opt_class();
    v23 = [v21 setWithObjects:{v22, objc_opt_class(), 0}];
    v24 = [coderCopy decodeObjectOfClasses:v23 forKey:@"transactionStatuses"];
    transactionStatuses = v5->_transactionStatuses;
    v5->_transactionStatuses = v24;

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"rewardsValue"];
    rewardsValue = v5->_rewardsValue;
    v5->_rewardsValue = v26;

    v5->_rewardsValueUnit = [coderCopy decodeIntegerForKey:@"rewardsValueUnit"];
    v28 = MEMORY[0x1E695DFD8];
    v29 = objc_opt_class();
    v30 = [v28 setWithObjects:{v29, objc_opt_class(), 0}];
    v31 = [coderCopy decodeObjectOfClasses:v30 forKey:@"regions"];
    regions = v5->_regions;
    v5->_regions = v31;

    v33 = MEMORY[0x1E695DFD8];
    v34 = objc_opt_class();
    v35 = [v33 setWithObjects:{v34, objc_opt_class(), 0}];
    v36 = [coderCopy decodeObjectOfClasses:v35 forKey:@"tags"];
    tags = v5->_tags;
    v5->_tags = v36;

    v5->_disputesOnly = [coderCopy decodeIntegerForKey:@"disputesOnly"] != 0;
    v38 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"merchant"];
    merchant = v5->_merchant;
    v5->_merchant = v38;

    v5->_merchantCategory = [coderCopy decodeIntegerForKey:@"merchantCategory"];
    v40 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
    startDate = v5->_startDate;
    v5->_startDate = v40;

    v42 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"endDate"];
    endDate = v5->_endDate;
    v5->_endDate = v42;

    v5->_dateOrder = [coderCopy decodeIntegerForKey:@"dateOrder"];
    v44 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"startStatusChangeDate"];
    startStatusChangeDate = v5->_startStatusChangeDate;
    v5->_startStatusChangeDate = v44;

    v46 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"endStatusChangeDate"];
    endStatusChangeDate = v5->_endStatusChangeDate;
    v5->_endStatusChangeDate = v46;

    v48 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"currencyCode"];
    currencyCode = v5->_currencyCode;
    v5->_currencyCode = v48;

    v50 = objc_alloc(MEMORY[0x1E695DFD8]);
    v51 = objc_opt_class();
    v52 = [v50 initWithObjects:{v51, objc_opt_class(), 0}];
    v53 = [coderCopy decodeObjectOfClasses:v52 forKey:@"amountComparisons"];
    amountComparisons = v5->_amountComparisons;
    v5->_amountComparisons = v53;

    v5->_peerPaymentSubType = [coderCopy decodeIntegerForKey:@"peerPaymentSubType"];
    v5->_topUpSubtype = [coderCopy decodeIntegerForKey:@"topUpSubtype"];
    v5->_peerPaymentPaymentMode = [coderCopy decodeIntegerForKey:@"peerPaymentPaymentMode"];
    v55 = MEMORY[0x1E695DFD8];
    v56 = objc_opt_class();
    v57 = [v55 setWithObjects:{v56, objc_opt_class(), 0}];
    v58 = [coderCopy decodeObjectOfClasses:v57 forKey:@"fundingSourceTypes"];
    fundingSourceTypes = v5->_fundingSourceTypes;
    v5->_fundingSourceTypes = v58;

    v60 = MEMORY[0x1E695DFD8];
    v61 = objc_opt_class();
    v62 = [v60 setWithObjects:{v61, objc_opt_class(), 0}];
    v63 = [coderCopy decodeObjectOfClasses:v62 forKey:@"excludedAccountStates"];
    excludedAccountStates = v5->_excludedAccountStates;
    v5->_excludedAccountStates = v63;

    v65 = MEMORY[0x1E695DFD8];
    v66 = objc_opt_class();
    v67 = [v65 setWithObjects:{v66, objc_opt_class(), 0}];
    v68 = [coderCopy decodeObjectOfClasses:v67 forKey:@"excludedPeerPaymentAccountStates"];
    excludedPeerPaymentAccountStates = v5->_excludedPeerPaymentAccountStates;
    v5->_excludedPeerPaymentAccountStates = v68;

    v5->_limit = [coderCopy decodeIntegerForKey:@"limit"];
    v70 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"peerPaymentRequestToken"];
    peerPaymentRequestToken = v5->_peerPaymentRequestToken;
    v5->_peerPaymentRequestToken = v70;

    v5->_hasBackingData = [coderCopy decodeIntegerForKey:@"hasBackingData"];
    v5->_originatedByDevice = [coderCopy decodeIntegerForKey:@"originatedByDevice"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  transactionSourceIdentifiers = self->_transactionSourceIdentifiers;
  coderCopy = coder;
  [coderCopy encodeObject:transactionSourceIdentifiers forKey:@"transactionSourceIdentifiers"];
  [coderCopy encodeObject:self->_transactionTypes forKey:@"transactionTypes"];
  [coderCopy encodeObject:self->_transactionSources forKey:@"transactionSources"];
  [coderCopy encodeObject:self->_transactionStatuses forKey:@"transactionStatuses"];
  [coderCopy encodeObject:self->_rewardsValue forKey:@"rewardsValue"];
  [coderCopy encodeInteger:self->_rewardsValueUnit forKey:@"rewardsValueUnit"];
  [coderCopy encodeObject:self->_regions forKey:@"regions"];
  [coderCopy encodeObject:self->_tags forKey:@"tags"];
  [coderCopy encodeInteger:self->_disputesOnly forKey:@"disputesOnly"];
  [coderCopy encodeObject:self->_merchant forKey:@"merchant"];
  [coderCopy encodeInteger:self->_merchantCategory forKey:@"merchantCategory"];
  [coderCopy encodeObject:self->_startDate forKey:@"startDate"];
  [coderCopy encodeObject:self->_endDate forKey:@"endDate"];
  [coderCopy encodeInteger:self->_dateOrder forKey:@"dateOrder"];
  [coderCopy encodeObject:self->_startStatusChangeDate forKey:@"startStatusChangeDate"];
  [coderCopy encodeObject:self->_endStatusChangeDate forKey:@"endStatusChangeDate"];
  [coderCopy encodeObject:self->_currencyCode forKey:@"currencyCode"];
  [coderCopy encodeObject:self->_amountComparisons forKey:@"amountComparisons"];
  [coderCopy encodeInteger:self->_peerPaymentSubType forKey:@"peerPaymentSubType"];
  [coderCopy encodeInteger:self->_topUpSubtype forKey:@"topUpSubtype"];
  [coderCopy encodeInteger:self->_peerPaymentPaymentMode forKey:@"peerPaymentPaymentMode"];
  [coderCopy encodeObject:self->_fundingSourceTypes forKey:@"fundingSourceTypes"];
  [coderCopy encodeObject:self->_excludedAccountStates forKey:@"excludedAccountStates"];
  [coderCopy encodeObject:self->_excludedPeerPaymentAccountStates forKey:@"excludedPeerPaymentAccountStates"];
  [coderCopy encodeInteger:self->_limit forKey:@"limit"];
  [coderCopy encodeObject:self->_peerPaymentRequestToken forKey:@"peerPaymentRequestToken"];
  [coderCopy encodeInteger:self->_hasBackingData forKey:@"hasBackingData"];
  [coderCopy encodeInteger:self->_originatedByDevice forKey:@"originatedByDevice"];
}

@end