@interface FCIntroductoryOffer
- (FCIntroductoryOffer)initWithOfferType:(int)type priceFormatted:(id)formatted recurringSubscriptionPeriod:(id)period numOfPeriods:(unint64_t)periods;
@end

@implementation FCIntroductoryOffer

- (FCIntroductoryOffer)initWithOfferType:(int)type priceFormatted:(id)formatted recurringSubscriptionPeriod:(id)period numOfPeriods:(unint64_t)periods
{
  v29 = *MEMORY[0x1E69E9840];
  formattedCopy = formatted;
  periodCopy = period;
  if (!type && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
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

    if (formattedCopy)
    {
      goto LABEL_6;
    }
  }

  else if (formattedCopy)
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
  if (!periodCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
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
    v13->_offerType = type;
    objc_storeStrong(&v13->_priceFormatted, formatted);
    v14->_numOfPeriods = periods;
    objc_storeStrong(&v14->_subscriptionPeriodInISO_8601, period);
  }

  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

@end