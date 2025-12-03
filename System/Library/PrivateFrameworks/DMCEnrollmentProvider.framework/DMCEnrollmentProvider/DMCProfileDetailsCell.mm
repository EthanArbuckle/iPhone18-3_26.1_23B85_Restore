@interface DMCProfileDetailsCell
+ (id)cellIdentifier;
+ (id)localizedExpirationLabelForExpiry:(id)expiry;
- (id)_attributedSubtitleComboWithSubtitle1:(id)subtitle1 subtitle2:(id)subtitle2 nearExpiration:(BOOL)expiration;
- (id)_attributes:(id)_attributes modifiedWithAttributes:(id)attributes;
- (id)_expirationSubtitleForExpiry:(id)expiry outNearExpiration:(BOOL *)expiration;
- (id)_textForLabel:(id)label value:(id)value;
- (id)_titleFromCertificate:(__SecCertificate *)certificate outSubtitle1:(id *)subtitle1 outSubtitle2:(id *)subtitle2 outNearExpiration:(BOOL *)expiration;
- (id)_titleFromPayloadInfo:(id)info outSubtitle1:(id *)subtitle1 outSubtitle2:(id *)subtitle2 outNearExpiration:(BOOL *)expiration;
- (void)setDetails:(id)details;
@end

@implementation DMCProfileDetailsCell

+ (id)cellIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (void)setDetails:(id)details
{
  detailsCopy = details;
  [(DMCProfileDetailsCell *)self setAccessoryType:1];
  [(DMCProfileDetailsCell *)self setSelectionStyle:3];
  v18 = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = detailsCopy;
    if ([v5 isManagedAppPayload])
    {
      managedApp = [v5 managedApp];
      name = [managedApp name];
      v8 = [managedApp iconForVariant:0];
    }

    else
    {
      if (![v5 isManagedBookPayload])
      {
        v16 = 0;
        v17 = 0;
        name = [(DMCProfileDetailsCell *)self _titleFromPayloadInfo:v5 outSubtitle1:&v17 outSubtitle2:&v16 outNearExpiration:&v18];
        v9 = v17;
        v10 = v16;
        v8 = 0;
        if ([v5 showIcon])
        {
          v8 = +[DMCIconFactory gearIcon];
        }

        if (([v5 hasDetails] & 1) == 0)
        {
          [(DMCProfileDetailsCell *)self setAccessoryType:0];
          [(DMCProfileDetailsCell *)self setSelectionStyle:0];
        }

        goto LABEL_9;
      }

      managedBook = [v5 managedBook];
      name = [managedBook friendlyName];

      v8 = [DMCApplicationProxy bookIconForVariant:0];
    }

    v10 = 0;
    v9 = 0;
LABEL_9:

    goto LABEL_11;
  }

  if (detailsCopy)
  {
    v14 = 0;
    v15 = 0;
    name = [(DMCProfileDetailsCell *)self _titleFromCertificate:detailsCopy outSubtitle1:&v15 outSubtitle2:&v14 outNearExpiration:&v18];
    v9 = v15;
    v10 = v14;
    v8 = +[DMCIconFactory gearIcon];
  }

  else
  {
    NSLog(&cfstr_Dmcprofiledeta.isa, 0);
    v8 = 0;
    v10 = 0;
    v9 = 0;
    name = 0;
  }

LABEL_11:
  defaultContentConfiguration = [(DMCProfileDetailsCell *)self defaultContentConfiguration];
  [defaultContentConfiguration setImage:v8];
  [defaultContentConfiguration setText:name];
  v13 = [(DMCProfileDetailsCell *)self _attributedSubtitleComboWithSubtitle1:v9 subtitle2:v10 nearExpiration:v18];
  [defaultContentConfiguration setSecondaryAttributedText:v13];

  [(DMCProfileDetailsCell *)self setContentConfiguration:defaultContentConfiguration];
}

- (id)_titleFromPayloadInfo:(id)info outSubtitle1:(id *)subtitle1 outSubtitle2:(id *)subtitle2 outNearExpiration:(BOOL *)expiration
{
  infoCopy = info;
  title = [infoCopy title];
  subtitle1Label = [infoCopy subtitle1Label];
  subtitle1Description = [infoCopy subtitle1Description];
  *subtitle1 = [(DMCProfileDetailsCell *)self _textForLabel:subtitle1Label value:subtitle1Description];

  certificateExpirationDate = [infoCopy certificateExpirationDate];
  v15 = certificateExpirationDate;
  if (certificateExpirationDate && ([certificateExpirationDate DMCProfilePastExpiration] & 1) != 0)
  {
    *subtitle2 = [(DMCProfileDetailsCell *)self _expirationSubtitleForExpiry:v15 outNearExpiration:expiration];
  }

  else
  {
    subtitle2Label = [infoCopy subtitle2Label];
    subtitle2Description = [infoCopy subtitle2Description];
    *subtitle2 = [(DMCProfileDetailsCell *)self _textForLabel:subtitle2Label value:subtitle2Description];
  }

  return title;
}

- (id)_titleFromCertificate:(__SecCertificate *)certificate outSubtitle1:(id *)subtitle1 outSubtitle2:(id *)subtitle2 outNearExpiration:(BOOL *)expiration
{
  v10 = SecCertificateCopySubjectSummary(certificate);
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  v13 = SecCertificateCopyIssuerSummary();
  if (v13)
  {
    v14 = DMCEnrollmentLocalizedString(@"DMC_ISSUED_BY");
    *subtitle1 = [(DMCProfileDetailsCell *)self _textForLabel:v14 value:v13];
  }

  v15 = MEMORY[0x277CBEAA8];
  SecCertificateNotValidAfter();
  v16 = [v15 dateWithTimeIntervalSinceReferenceDate:?];
  if (v16)
  {
    *subtitle2 = [(DMCProfileDetailsCell *)self _expirationSubtitleForExpiry:v16 outNearExpiration:expiration];
  }

  return v11;
}

- (id)_expirationSubtitleForExpiry:(id)expiry outNearExpiration:(BOOL *)expiration
{
  v6 = MEMORY[0x277CCA968];
  expiryCopy = expiry;
  v8 = [v6 localizedStringFromDate:expiryCopy dateStyle:3 timeStyle:0];
  *expiration = [expiryCopy DMCProfileNearOrPastExpiration];
  v9 = [DMCProfileDetailsCell localizedExpirationLabelForExpiry:expiryCopy];

  v10 = [(DMCProfileDetailsCell *)self _textForLabel:v9 value:v8];

  return v10;
}

+ (id)localizedExpirationLabelForExpiry:(id)expiry
{
  if ([expiry DMCProfilePastExpiration])
  {
    v3 = @"DMC_EXPIRED";
  }

  else
  {
    v3 = @"DMC_EXPIRES";
  }

  return DMCEnrollmentLocalizedString(v3);
}

- (id)_textForLabel:(id)label value:(id)value
{
  labelCopy = label;
  valueCopy = value;
  if ([labelCopy length])
  {
    if ([valueCopy length])
    {
      valueCopy = [labelCopy stringByAppendingFormat:@" %@", valueCopy];
    }

    else
    {
      valueCopy = labelCopy;
    }
  }

  else
  {
    valueCopy = valueCopy;
  }

  v8 = valueCopy;

  return v8;
}

- (id)_attributes:(id)_attributes modifiedWithAttributes:(id)attributes
{
  v20 = *MEMORY[0x277D85DE8];
  attributesCopy = attributes;
  v6 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:_attributes];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = attributesCopy;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        v13 = [v7 objectForKeyedSubscript:{v12, v15}];
        [v6 setObject:v13 forKeyedSubscript:v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  return v6;
}

- (id)_attributedSubtitleComboWithSubtitle1:(id)subtitle1 subtitle2:(id)subtitle2 nearExpiration:(BOOL)expiration
{
  expirationCopy = expiration;
  v23[1] = *MEMORY[0x277D85DE8];
  subtitle1Copy = subtitle1;
  subtitle2Copy = subtitle2;
  v9 = objc_opt_new();
  v10 = *MEMORY[0x277D740C0];
  v22 = *MEMORY[0x277D740C0];
  dMCProfileSecondaryLabelColor = [MEMORY[0x277D75348] DMCProfileSecondaryLabelColor];
  v23[0] = dMCProfileSecondaryLabelColor;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];

  if (subtitle1Copy)
  {
    v13 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:subtitle1Copy attributes:v12];
    [v9 appendAttributedString:v13];
  }

  if (subtitle2Copy)
  {
    if (expirationCopy)
    {
      v20 = v10;
      dMCProfileRedColor = [MEMORY[0x277D75348] DMCProfileRedColor];
      v21 = dMCProfileRedColor;
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v21 forKeys:&v20 count:1];

      v12 = v15;
    }

    v16 = objc_alloc(MEMORY[0x277CCA898]);
    subtitle2Copy = [MEMORY[0x277CCACA8] stringWithFormat:@"\n%@", subtitle2Copy];
    v18 = [v16 initWithString:subtitle2Copy attributes:v12];
    [v9 appendAttributedString:v18];
  }

  return v9;
}

@end