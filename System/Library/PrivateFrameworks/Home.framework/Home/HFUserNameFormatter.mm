@interface HFUserNameFormatter
+ (int64_t)_contactFormatterStyleForUserNameStyle:(unint64_t)a3;
- (HFUserNameFormatter)init;
- (HFUserNameFormatter)initWithHome:(id)a3;
- (id)stringForObjectValue:(id)a3;
- (void)setStyle:(unint64_t)a3;
@end

@implementation HFUserNameFormatter

- (HFUserNameFormatter)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithHome_);
  [v4 handleFailureInMethod:a2 object:self file:@"HFUserNameFormatter.m" lineNumber:26 description:{@"%s is unavailable; use %@ instead", "-[HFUserNameFormatter init]", v5}];

  return 0;
}

- (HFUserNameFormatter)initWithHome:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = HFUserNameFormatter;
  v6 = [(HFUserNameFormatter *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_home, a3);
    v8 = objc_alloc_init(MEMORY[0x277CBDA78]);
    contactFormatter = v7->_contactFormatter;
    v7->_contactFormatter = v8;

    [(HFUserNameFormatter *)v7 setStyle:2];
  }

  return v7;
}

- (void)setStyle:(unint64_t)a3
{
  if (self->_style != a3)
  {
    self->_style = a3;
    v5 = [objc_opt_class() _contactFormatterStyleForUserNameStyle:a3];
    v6 = [(HFUserNameFormatter *)self contactFormatter];
    [v6 setStyle:v5];
  }
}

- (id)stringForObjectValue:(id)a3
{
  v19[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v11 = 0;
    goto LABEL_16;
  }

  if ([(HFUserNameFormatter *)self style])
  {
    v5 = MEMORY[0x277CBDA78];
    v6 = [(HFUserNameFormatter *)self contactFormatter];
    v7 = [v5 descriptorForRequiredKeysForStyle:{objc_msgSend(v6, "style")}];

    v8 = +[HFContactStore defaultStore];
    v19[0] = v7;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
    v10 = [v8 contactForUserHandle:v4 withKeys:v9];

    v11 = [(HFUserNameFormatter *)self contactFormatter];
    v12 = [v11 stringFromContact:v10];

    if ([v12 length])
    {
      v13 = v12;
    }

    else
    {
      v15 = [v4 type];
      if (v15 == 1)
      {
        v16 = @"HFUserNameFormatterFallbackOtherUserContactName";
      }

      else
      {
        if (v15)
        {
LABEL_14:

          goto LABEL_15;
        }

        v16 = @"HFUserNameFormatterFallbackCurrentUserContactName";
      }

      v13 = _HFLocalizedStringWithDefaultValue(v16, v16, 1);
    }

    v11 = v13;
    goto LABEL_14;
  }

  v7 = [(HFUserNameFormatter *)self home];
  v14 = [v7 hf_userForHandle:v4];
  v11 = [v14 name];

LABEL_15:
LABEL_16:

  v17 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (int64_t)_contactFormatterStyleForUserNameStyle:(unint64_t)a3
{
  if (a3 == 1)
  {
    return 1000;
  }

  else
  {
    return 0;
  }
}

@end