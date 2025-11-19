@interface HKSignedClinicalDataRecord(HealthUI)
- (BOOL)isExpired;
- (id)expiredAttributedString;
- (id)issuerDisplayStringWithSignatureStatusGlyph;
- (id)signatureStatusDisplayString;
@end

@implementation HKSignedClinicalDataRecord(HealthUI)

- (id)issuerDisplayStringWithSignatureStatusGlyph
{
  if ([a1 isExpired])
  {
    v2 = [a1 expiredAttributedString];
  }

  else
  {
    v3 = [a1 signatureStatus];
    if (v3 == 3)
    {
      v4 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"xmark.seal.fill"];
      v5 = [MEMORY[0x1E69DC888] systemRedColor];
    }

    else
    {
      if (v3 == 2)
      {
        v4 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"checkmark.seal.fill"];
        [MEMORY[0x1E69DC888] systemGreenColor];
      }

      else
      {
        v4 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"checkmark.seal.fill"];
        [MEMORY[0x1E69DC888] secondaryLabelColor];
      }
      v5 = ;
    }

    v6 = v5;
    v7 = [v4 imageWithTintColor:v5];

    v8 = [a1 recordIssuerDisplayName];
    v2 = [v8 hk_attributedStringPrefixedWithImage:v7 spacing:2.0];
  }

  return v2;
}

- (id)signatureStatusDisplayString
{
  if ([a1 isExpired])
  {
    v2 = [a1 expiredAttributedString];
    goto LABEL_17;
  }

  v3 = [a1 signatureStatus];
  v4 = 0;
  if (v3 <= 1)
  {
    if (!v3)
    {
      v5 = @"DETAIL_VIEW_SIGNATURE_STATUS_NOT_VERIFIED";
      goto LABEL_11;
    }

    if (v3 == 1)
    {
      v5 = @"DETAIL_VIEW_SIGNATURE_STATUS_NOT_VERIFIED_UNABLE_TO";
LABEL_11:
      v9 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v4 = [v9 localizedStringForKey:v5 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Pasadena"];
    }

LABEL_15:
    v2 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v4];
    goto LABEL_16;
  }

  if (v3 == 2)
  {
    v10 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v4 = [v10 localizedStringForKey:@"DETAIL_VIEW_SIGNATURE_STATUS_VERIFIED" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Pasadena"];

    v7 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"checkmark.seal.fill"];
    v8 = [MEMORY[0x1E69DC888] systemGreenColor];
  }

  else
  {
    if (v3 != 3)
    {
      goto LABEL_15;
    }

    v6 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v4 = [v6 localizedStringForKey:@"DETAIL_VIEW_SIGNATURE_STATUS_NOT_VERIFIED_INVALID" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Pasadena"];

    v7 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"xmark.seal.fill"];
    v8 = [MEMORY[0x1E69DC888] systemRedColor];
  }

  v11 = v8;
  v12 = [v7 imageWithTintColor:v8];

  if (!v12)
  {
    goto LABEL_15;
  }

  v2 = [v4 hk_attributedStringPrefixedWithImage:v12 spacing:2.0];

LABEL_16:
LABEL_17:

  return v2;
}

- (BOOL)isExpired
{
  v1 = [a1 expirationDate];
  if (v1)
  {
    v2 = [MEMORY[0x1E695DF00] now];
    v3 = [v1 earlierDate:v2];
    v4 = v3 == v1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)expiredAttributedString
{
  v0 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v1 = [v0 localizedStringForKey:@"DETAIL_VIEW_SIGNATURE_STATUS_EXPIRED" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Pasadena"];

  v2 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"xmark.seal.fill"];
  v3 = [MEMORY[0x1E69DC888] systemRedColor];
  v4 = [v2 imageWithTintColor:v3];

  v5 = [v1 hk_attributedStringPrefixedWithImage:v4 spacing:2.0];

  return v5;
}

@end