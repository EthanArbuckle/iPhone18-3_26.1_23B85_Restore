@interface HKMedicalCoding(Display)
- (id)formattedDescription;
- (id)formattedTitle;
@end

@implementation HKMedicalCoding(Display)

- (id)formattedDescription
{
  v2 = MEMORY[0x1E696AEC0];
  codingSystem = [self codingSystem];
  name = [codingSystem name];
  code = [self code];
  displayString = [self displayString];
  v7 = [v2 stringWithFormat:@"%@\n%@\n%@", name, code, displayString];

  return v7;
}

- (id)formattedTitle
{
  codingSystem = [self codingSystem];
  textSystem = [MEMORY[0x1E696C238] textSystem];
  v4 = [codingSystem isEqual:textSystem];

  codingSystem2 = [self codingSystem];
  name = [codingSystem2 name];
  v7 = name;
  if ((v4 & 1) == 0)
  {

    if (v7)
    {
      code = [self code];

      if (code)
      {
        v9 = MEMORY[0x1E696AEC0];
        codingSystem2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
        v10 = [codingSystem2 localizedStringForKey:@"%@_CODE_SEPARATOR_%@" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Clinical-Health-Records"];
        codingSystem3 = [self codingSystem];
        name2 = [codingSystem3 name];
        code2 = [self code];
        v7 = [v9 stringWithFormat:v10, name2, code2];

        goto LABEL_8;
      }

      codingSystem2 = [self codingSystem];
      name3 = [codingSystem2 name];
    }

    else
    {
      codingSystem2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      name3 = [codingSystem2 localizedStringForKey:@"OTHER_CODE_SYSTEM" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Clinical-Health-Records"];
    }

    v7 = name3;
  }

LABEL_8:

  return v7;
}

@end