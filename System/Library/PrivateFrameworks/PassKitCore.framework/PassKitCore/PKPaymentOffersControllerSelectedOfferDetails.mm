@interface PKPaymentOffersControllerSelectedOfferDetails
- (BOOL)hasSelectedOtherOffersAfterPreconfiguredInstallmentOffer;
- (BOOL)isEqual:(id)equal;
- (BOOL)updateCurrentSelectedPaymentOffer:(id)offer selectedPassUniqueID:(id)d updateReason:(unint64_t)reason;
- (PKPaymentOffersControllerSelectedOfferDetails)init;
- (id)description;
- (unint64_t)hash;
- (void)clearCurrentSelectedPaymentOfferDetails;
- (void)updatedSelectedPassUniqueID:(id)d;
@end

@implementation PKPaymentOffersControllerSelectedOfferDetails

- (PKPaymentOffersControllerSelectedOfferDetails)init
{
  v7.receiver = self;
  v7.super_class = PKPaymentOffersControllerSelectedOfferDetails;
  v2 = [(PKPaymentOffersControllerSelectedOfferDetails *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_updateReason = 0;
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    selectedOfferHistory = v3->_selectedOfferHistory;
    v3->_selectedOfferHistory = v4;
  }

  return v3;
}

- (BOOL)updateCurrentSelectedPaymentOffer:(id)offer selectedPassUniqueID:(id)d updateReason:(unint64_t)reason
{
  v37 = *MEMORY[0x1E69E9840];
  offerCopy = offer;
  dCopy = d;
  selectedPaymentOffer = self->_selectedPaymentOffer;
  v10 = selectedPaymentOffer;
  updateReason = self->_updateReason;
  p_previouslySelectedOffer = &self->_previouslySelectedOffer;
  v34 = self->_previouslySelectedOffer;
  v12 = self->_selectedPassUniqueID;
  objc_storeStrong(&self->_selectedPaymentOffer, offer);
  objc_storeStrong(&self->_previouslySelectedOffer, selectedPaymentOffer);
  reasonCopy = reason;
  self->_updateReason = reason;
  objc_storeStrong(&self->_selectedPassUniqueID, d);
  selectedPassUniqueID = self->_selectedPassUniqueID;
  v14 = v12;
  v15 = selectedPassUniqueID;
  v16 = v15;
  if (v14 == v15)
  {

    v18 = v10;
    goto LABEL_7;
  }

  if (!v14 || !v15)
  {

    v18 = v10;
    goto LABEL_11;
  }

  v17 = [(NSString *)v14 isEqualToString:v15];

  v18 = v10;
  if (v17)
  {
LABEL_7:
    selectedOfferHistory = self->_selectedOfferHistory;
    v20 = offerCopy;
    if (self->_selectedPaymentOffer)
    {
      [(NSMutableArray *)self->_selectedOfferHistory addObject:?];
      if (!offerCopy)
      {
        goto LABEL_17;
      }
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [(NSMutableArray *)selectedOfferHistory addObject:null];

      if (!offerCopy)
      {
        goto LABEL_17;
      }
    }

    goto LABEL_14;
  }

LABEL_11:
  [(NSMutableArray *)self->_selectedOfferHistory removeAllObjects];
  v20 = offerCopy;
  if (!offerCopy)
  {
LABEL_17:
    if (v18 != v20)
    {
      goto LABEL_35;
    }

    goto LABEL_18;
  }

LABEL_14:
  if (!v18)
  {
    goto LABEL_17;
  }

  if (![(PKSelectedPaymentOffer *)v20 isEqual:v18])
  {
    goto LABEL_35;
  }

LABEL_18:
  v22 = self->_selectedPassUniqueID;
  v23 = v14;
  v24 = v23;
  if (v22 == v23)
  {
  }

  else
  {
    if (!v23 || !v22)
    {

      goto LABEL_35;
    }

    v25 = [(NSString *)v22 isEqualToString:v23];

    if (!v25)
    {
      goto LABEL_35;
    }
  }

  v26 = *p_previouslySelectedOffer;
  if (v34 && v26)
  {
    if (![(PKSelectedPaymentOffer *)v26 isEqual:v34])
    {
      goto LABEL_35;
    }
  }

  else if (v26 != v34)
  {
    goto LABEL_35;
  }

  if (self->_selectedPaymentOffer)
  {
    if (updateReason == reasonCopy)
    {
      v27 = 0;
      goto LABEL_38;
    }
  }

  else
  {
    v27 = 0;
    if (!*p_previouslySelectedOffer || updateReason == reasonCopy)
    {
      goto LABEL_38;
    }
  }

LABEL_35:
  v28 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_1AD337000, v28, OS_LOG_TYPE_DEFAULT, "Selected payment offer details changed: %@", buf, 0xCu);
  }

  v27 = 1;
LABEL_38:

  return v27;
}

- (void)clearCurrentSelectedPaymentOfferDetails
{
  v3 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "Clearing selected payment offer details", v6, 2u);
  }

  selectedPaymentOffer = self->_selectedPaymentOffer;
  self->_selectedPaymentOffer = 0;

  previouslySelectedOffer = self->_previouslySelectedOffer;
  self->_previouslySelectedOffer = 0;

  self->_updateReason = 0;
}

- (BOOL)hasSelectedOtherOffersAfterPreconfiguredInstallmentOffer
{
  v3 = [(NSMutableArray *)self->_selectedOfferHistory indexesOfObjectsPassingTest:&__block_literal_global_658];
  if ([v3 count])
  {
    v4 = [v3 lastIndex] + 1;
    v5 = v4 < [(NSMutableArray *)self->_selectedOfferHistory count];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t __105__PKPaymentOffersControllerSelectedOfferDetails_hasSelectedOtherOffersAfterPreconfiguredInstallmentOffer__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
    if ([v3 type] == 1)
    {
      v4 = [v3 isPreconfiguredOffer];
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)updatedSelectedPassUniqueID:(id)d
{
  dCopy = d;
  selectedPassUniqueID = self->_selectedPassUniqueID;
  v9 = dCopy;
  v6 = selectedPassUniqueID;
  if (v6 == v9)
  {

    goto LABEL_9;
  }

  if (!v9 || !v6)
  {

    goto LABEL_8;
  }

  v7 = [(NSString *)v9 isEqualToString:v6];

  if (!v7)
  {
LABEL_8:
    v8 = self->_selectedPassUniqueID;
    self->_selectedPassUniqueID = 0;

    [(NSMutableArray *)self->_selectedOfferHistory removeAllObjects];
  }

LABEL_9:
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    if (equalCopy)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
        selectedPaymentOffer = self->_selectedPaymentOffer;
        v8 = v6->_selectedPaymentOffer;
        if (selectedPaymentOffer && v8)
        {
          if (![(PKSelectedPaymentOffer *)selectedPaymentOffer isEqual:?])
          {
            goto LABEL_29;
          }
        }

        else if (selectedPaymentOffer != v8)
        {
          goto LABEL_29;
        }

        previouslySelectedOffer = self->_previouslySelectedOffer;
        v11 = v6->_previouslySelectedOffer;
        if (previouslySelectedOffer && v11)
        {
          if (![(PKSelectedPaymentOffer *)previouslySelectedOffer isEqual:?])
          {
            goto LABEL_29;
          }
        }

        else if (previouslySelectedOffer != v11)
        {
          goto LABEL_29;
        }

        selectedOfferHistory = self->_selectedOfferHistory;
        v13 = v6->_selectedOfferHistory;
        if (selectedOfferHistory && v13)
        {
          if (([(NSMutableArray *)selectedOfferHistory isEqual:?]& 1) == 0)
          {
            goto LABEL_29;
          }
        }

        else if (selectedOfferHistory != v13)
        {
          goto LABEL_29;
        }

        selectedPassUniqueID = v6->_selectedPassUniqueID;
        v15 = self->_selectedPassUniqueID;
        v16 = selectedPassUniqueID;
        v17 = v16;
        if (v15 == v16)
        {

          goto LABEL_27;
        }

        if (v15 && v16)
        {
          v18 = [(NSString *)v15 isEqualToString:v16];

          if (!v18)
          {
            goto LABEL_29;
          }

LABEL_27:
          v9 = self->_updateReason == v6->_updateReason;
LABEL_30:

          goto LABEL_31;
        }

LABEL_29:
        v9 = 0;
        goto LABEL_30;
      }
    }

    v9 = 0;
  }

LABEL_31:

  return v9;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_selectedPaymentOffer];
  [v3 safelyAddObject:self->_previouslySelectedOffer];
  [v3 safelyAddObject:self->_selectedPassUniqueID];
  [v3 safelyAddObject:self->_selectedOfferHistory];
  v4 = PKCombinedHash(17, v3);
  v5 = self->_updateReason - v4 + 32 * v4;

  return v5;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v3 appendFormat:@"<%@: %p; ", objc_opt_class(), self];
  v4 = PKPaymentOffersControllerUpdateReasonToString(self->_updateReason);
  [v3 appendFormat:@"updateReason: '%@'; ", v4];

  [v3 appendFormat:@"selectedPaymentOffer: '%@'; ", self->_selectedPaymentOffer];
  [v3 appendFormat:@"previouslySelectedOffer: '%@'; ", self->_previouslySelectedOffer];
  [v3 appendFormat:@"selectedPassUniqueID: '%@'; ", self->_selectedPassUniqueID];
  [v3 appendFormat:@"selectedSelectedOfferTypeHistory: %ld items; ", -[NSMutableArray count](self->_selectedOfferHistory, "count")];
  [v3 appendFormat:@">"];

  return v3;
}

@end