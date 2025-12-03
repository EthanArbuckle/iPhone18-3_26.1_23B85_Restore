@interface HFUserNameFormatter
+ (int64_t)_contactFormatterStyleForUserNameStyle:(unint64_t)style;
- (HFUserNameFormatter)init;
- (HFUserNameFormatter)initWithHome:(id)home;
- (id)stringForObjectValue:(id)value;
- (void)setStyle:(unint64_t)style;
@end

@implementation HFUserNameFormatter

- (HFUserNameFormatter)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithHome_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFUserNameFormatter.m" lineNumber:26 description:{@"%s is unavailable; use %@ instead", "-[HFUserNameFormatter init]", v5}];

  return 0;
}

- (HFUserNameFormatter)initWithHome:(id)home
{
  homeCopy = home;
  v11.receiver = self;
  v11.super_class = HFUserNameFormatter;
  v6 = [(HFUserNameFormatter *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_home, home);
    v8 = objc_alloc_init(MEMORY[0x277CBDA78]);
    contactFormatter = v7->_contactFormatter;
    v7->_contactFormatter = v8;

    [(HFUserNameFormatter *)v7 setStyle:2];
  }

  return v7;
}

- (void)setStyle:(unint64_t)style
{
  if (self->_style != style)
  {
    self->_style = style;
    v5 = [objc_opt_class() _contactFormatterStyleForUserNameStyle:style];
    contactFormatter = [(HFUserNameFormatter *)self contactFormatter];
    [contactFormatter setStyle:v5];
  }
}

- (id)stringForObjectValue:(id)value
{
  v19[1] = *MEMORY[0x277D85DE8];
  valueCopy = value;
  if (!valueCopy || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    contactFormatter2 = 0;
    goto LABEL_16;
  }

  if ([(HFUserNameFormatter *)self style])
  {
    v5 = MEMORY[0x277CBDA78];
    contactFormatter = [(HFUserNameFormatter *)self contactFormatter];
    home = [v5 descriptorForRequiredKeysForStyle:{objc_msgSend(contactFormatter, "style")}];

    v8 = +[HFContactStore defaultStore];
    v19[0] = home;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
    v10 = [v8 contactForUserHandle:valueCopy withKeys:v9];

    contactFormatter2 = [(HFUserNameFormatter *)self contactFormatter];
    v12 = [contactFormatter2 stringFromContact:v10];

    if ([v12 length])
    {
      v13 = v12;
    }

    else
    {
      type = [valueCopy type];
      if (type == 1)
      {
        v16 = @"HFUserNameFormatterFallbackOtherUserContactName";
      }

      else
      {
        if (type)
        {
LABEL_14:

          goto LABEL_15;
        }

        v16 = @"HFUserNameFormatterFallbackCurrentUserContactName";
      }

      v13 = _HFLocalizedStringWithDefaultValue(v16, v16, 1);
    }

    contactFormatter2 = v13;
    goto LABEL_14;
  }

  home = [(HFUserNameFormatter *)self home];
  v14 = [home hf_userForHandle:valueCopy];
  contactFormatter2 = [v14 name];

LABEL_15:
LABEL_16:

  v17 = *MEMORY[0x277D85DE8];

  return contactFormatter2;
}

+ (int64_t)_contactFormatterStyleForUserNameStyle:(unint64_t)style
{
  if (style == 1)
  {
    return 1000;
  }

  else
  {
    return 0;
  }
}

@end