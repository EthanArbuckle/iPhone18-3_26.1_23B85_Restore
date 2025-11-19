@interface FCIntroductoryOffer
- (FCIntroductoryOffer)initWithOfferType:(int)a3 priceFormatted:(id)a4 recurringSubscriptionPeriod:(id)a5 numOfPeriods:(unint64_t)a6;
@end

@implementation FCIntroductoryOffer

- (FCIntroductoryOffer)initWithOfferType:(int)a3 priceFormatted:(id)a4 recurringSubscriptionPeriod:(id)a5 numOfPeriods:(unint64_t)a6
{
  v29 = *MEMORY[0x1E69E9840];
  v11 = a4;
  v12 = a5;
  if (!a3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Offer Type cannot be unknown. Must be a unsupported intro offer type."];
    *buf = 136315906;
    v22 = "[FCIntroductoryOffer initWithOfferType:priceFormatted:recurringSubscriptionPeriod:numOfPeriods:]";
    v23 = 2080;
    v24 = "FCIntroductoryOffer.m";
    v25 = 1024;
    v26 = 27;
    v27 = 2114;
    v28 = v17;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (v11)
    {
      goto LABEL_6;
    }
  }

  else if (v11)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "priceFormatted"];
    *buf = 136315906;
    v22 = "[FCIntroductoryOffer initWithOfferType:priceFormatted:recurringSubscriptionPeriod:numOfPeriods:]";
    v23 = 2080;
    v24 = "FCIntroductoryOffer.m";
    v25 = 1024;
    v26 = 28;
    v27 = 2114;
    v28 = v18;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_6:
  if (!v12 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "recurringSubscriptionPeriod"];
    *buf = 136315906;
    v22 = "[FCIntroductoryOffer initWithOfferType:priceFormatted:recurringSubscriptionPeriod:numOfPeriods:]";
    v23 = 2080;
    v24 = "FCIntroductoryOffer.m";
    v25 = 1024;
    v26 = 29;
    v27 = 2114;
    v28 = v19;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v20.receiver = self;
  v20.super_class = FCIntroductoryOffer;
  v13 = [(FCIntroductoryOffer *)&v20 init];
  v14 = v13;
  if (v13)
  {
    v13->_offerType = a3;
    objc_storeStrong(&v13->_priceFormatted, a4);
    v14->_numOfPeriods = a6;
    objc_storeStrong(&v14->_subscriptionPeriodInISO_8601, a5);
  }

  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

@end