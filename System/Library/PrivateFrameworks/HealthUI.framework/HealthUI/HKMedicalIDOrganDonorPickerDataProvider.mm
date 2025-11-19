@interface HKMedicalIDOrganDonorPickerDataProvider
+ (id)displayValueForOrganDonorStatus:(unint64_t)a3;
+ (id)medicalIDOrganDonorStatus:(unint64_t)a3;
+ (int64_t)numberOfRowsWithDonateLifeSignup:(BOOL)a3;
+ (unint64_t)emergencyCardOrganDonorStatus:(id)a3;
@end

@implementation HKMedicalIDOrganDonorPickerDataProvider

+ (id)displayValueForOrganDonorStatus:(unint64_t)a3
{
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      v4 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v5 = v4;
      v6 = @"organ_donor_no";
    }

    else
    {
      if (a3 != 3)
      {
        goto LABEL_13;
      }

      v7 = +[HKOrganDonationConnectionManager hasStoredRegistrant];
      v4 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v5 = v4;
      if (v7)
      {
        v6 = @"organ_donor_registered";
      }

      else
      {
        v6 = @"organ_donor_register";
      }
    }
  }

  else if (a3)
  {
    if (a3 != 1)
    {
      goto LABEL_13;
    }

    v4 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v5 = v4;
    v6 = @"organ_donor_yes";
  }

  else
  {
    v4 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v5 = v4;
    v6 = @"organ_donor_not_set";
  }

  v3 = [v4 localizedStringForKey:v6 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

LABEL_13:

  return v3;
}

+ (unint64_t)emergencyCardOrganDonorStatus:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 && (v5 = [v3 integerValue], v5 <= 2))
  {
    v6 = qword_1C3D5D568[v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)medicalIDOrganDonorStatus:(unint64_t)a3
{
  if (a3 - 1 > 2)
  {
    return 0;
  }

  else
  {
    return qword_1E81B8AE0[a3 - 1];
  }
}

+ (int64_t)numberOfRowsWithDonateLifeSignup:(BOOL)a3
{
  if (a3)
  {
    return 4;
  }

  if ([HKOrganDonationConnectionManager hasStoredRegistrant:v3])
  {
    return 4;
  }

  return 3;
}

@end