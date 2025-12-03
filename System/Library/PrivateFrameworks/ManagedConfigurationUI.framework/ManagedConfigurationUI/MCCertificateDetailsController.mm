@interface MCCertificateDetailsController
+ (id)_dateFormatter;
- (id)_propertiesFromTrust:(__SecTrust *)trust;
- (id)specifiers;
- (id)specifiersFromCertificateProperties:(id)properties;
- (id)specifiersFromTrust:(__SecTrust *)trust;
- (id)valueForSpecifier:(id)specifier;
@end

@implementation MCCertificateDetailsController

+ (id)_dateFormatter
{
  v2 = _dateFormatter_sFormatter;
  if (!_dateFormatter_sFormatter)
  {
    v3 = objc_alloc_init(MEMORY[0x277CCA968]);
    v4 = _dateFormatter_sFormatter;
    _dateFormatter_sFormatter = v3;

    [_dateFormatter_sFormatter setDateStyle:1];
    [_dateFormatter_sFormatter setTimeStyle:1];
    v2 = _dateFormatter_sFormatter;
  }

  return v2;
}

- (id)_propertiesFromTrust:(__SecTrust *)trust
{
  if (!trust)
  {
    goto LABEL_10;
  }

  error = 0;
  if (!SecTrustEvaluateWithError(trust, &error))
  {
    NSLog(&cfstr_SectrustNotTru.isa, trust, error);
  }

  if (error)
  {
    CFRelease(error);
  }

  CertificateCount = SecTrustGetCertificateCount(trust);
  if (CertificateCount >= 1)
  {
    v5 = 0;
    v6 = 0;
    v7 = CertificateCount & 0x7FFFFFFF;
    do
    {
      v8 = SecTrustCopyDetailedPropertiesAtIndex();
      v9 = [v8 copy];

      ++v5;
      v6 = v9;
    }

    while (v7 != v5);
  }

  else
  {
LABEL_10:
    v9 = 0;
  }

  return v9;
}

- (id)valueForSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v4 = *MEMORY[0x277D401A8];
  v5 = [specifierCopy propertyForKey:*MEMORY[0x277D401A8]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    HexStringForBytes = v5;
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v5;
    v8 = +[MCCertificateDetailsController _dateFormatter];
    HexStringForBytes = [v8 stringFromDate:v7];

LABEL_7:
    [specifierCopy setProperty:HexStringForBytes forKey:v4];
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v5;
    v10 = v5;
    [v10 bytes];
    [v10 length];

    HexStringForBytes = _CreateHexStringForBytes();
    goto LABEL_7;
  }

  HexStringForBytes = 0;
LABEL_9:

  return HexStringForBytes;
}

- (id)specifiersFromCertificateProperties:(id)properties
{
  propertiesCopy = properties;
  array = [MEMORY[0x277CBEB18] array];
  v22 = propertiesCopy;
  v5 = [propertiesCopy count];
  if (v5 >= 1)
  {
    v6 = 0;
    v20 = *MEMORY[0x277CDC500];
    v7 = *MEMORY[0x277CDC508];
    v8 = *MEMORY[0x277CDC528];
    v9 = *MEMORY[0x277CDC510];
    v19 = *MEMORY[0x277D401A8];
    v10 = v5 & 0x7FFFFFFF;
    do
    {
      v11 = [v22 objectAtIndex:v6];
      v12 = [v11 objectForKey:v20];
      v13 = [v11 objectForKey:v7];
      v14 = [v13 isEqualToString:v8];

      if (v14)
      {
        v15 = [MEMORY[0x277D3FAD8] groupSpecifierWithName:v12];
        [array addObject:v15];

        v16 = [v11 objectForKey:v9];
        v17 = [(MCCertificateDetailsController *)self specifiersFromCertificateProperties:v16];
        [array addObjectsFromArray:v17];
      }

      else
      {
        v16 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v12 target:self set:0 get:sel_valueForSpecifier_ detail:0 cell:4 edit:0];
        v17 = [v11 objectForKey:v9];
        [v16 setProperty:v17 forKey:v19];
        [array addObject:v16];
      }

      ++v6;
    }

    while (v10 != v6);
  }

  return array;
}

- (id)specifiersFromTrust:(__SecTrust *)trust
{
  v4 = [(MCCertificateDetailsController *)self _propertiesFromTrust:trust];
  v5 = [(MCCertificateDetailsController *)self specifiersFromCertificateProperties:v4];

  return v5;
}

- (id)specifiers
{
  v2 = *MEMORY[0x277D3FC48];
  v3 = *(&self->super.super.super.super.super.isa + v2);
  if (!v3)
  {
    v5 = MCUILocalizedString(@"CERT_DETAILS");
    [(MCCertificateDetailsController *)self setTitle:v5];

    specifier = [(MCCertificateDetailsController *)self specifier];
    v7 = [specifier propertyForKey:@"kMCCertificateDetailsTrustRefKey"];

    if (v7)
    {
      v8 = [(MCCertificateDetailsController *)self specifiersFromTrust:v7];
      v9 = *(&self->super.super.super.super.super.isa + v2);
      *(&self->super.super.super.super.super.isa + v2) = v8;
    }

    else
    {
      specifier2 = [(MCCertificateDetailsController *)self specifier];
      v13 = [specifier2 propertyForKey:@"kMCCertificateDetailsCertificateRefKey"];

      if (v13)
      {
        v14 = SecCertificateCopyProperties();
        if (v14)
        {
          v15 = v14;
          v16 = [(MCCertificateDetailsController *)self specifiersFromCertificateProperties:v14];
          v17 = *(&self->super.super.super.super.super.isa + v2);
          *(&self->super.super.super.super.super.isa + v2) = v16;

          CFRelease(v15);
        }
      }
    }

    v3 = *(&self->super.super.super.super.super.isa + v2);
    if (!v3)
    {
      *(&self->super.super.super.super.super.isa + v2) = MEMORY[0x277CBEBF8];

      v3 = *(&self->super.super.super.super.super.isa + v2);
    }
  }

  v10 = v3;

  return v10;
}

@end