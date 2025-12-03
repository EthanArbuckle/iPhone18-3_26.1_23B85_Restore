@interface HRInteractiveChartMedicalRecordFormatter
- (HRInteractiveChartMedicalRecordFormatter)init;
- (id)unitStringFromUnit:(id)unit number:(id)number;
@end

@implementation HRInteractiveChartMedicalRecordFormatter

- (HRInteractiveChartMedicalRecordFormatter)init
{
  v5.receiver = self;
  v5.super_class = HRInteractiveChartMedicalRecordFormatter;
  v2 = [(HRInteractiveChartMedicalRecordFormatter *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(HKInteractiveChartGenericStatFormatter *)v2 setOverrideStatFormatterItemOptions:&unk_1F4D36ED8];
  }

  return v3;
}

- (id)unitStringFromUnit:(id)unit number:(id)number
{
  unitCopy = unit;
  numberCopy = number;
  if (!unitCopy)
  {
    goto LABEL_7;
  }

  unitController = [(HKInteractiveChartDataFormatter *)self unitController];
  v9 = [unitController localizedDisplayNameForUnit:unitCopy value:numberCopy];

  if (![v9 length] && (objc_msgSend(unitCopy, "isNull") & 1) == 0)
  {
    unitString = [unitCopy unitString];

    v9 = unitString;
  }

  if (v9)
  {
    mEMORY[0x1E696C508] = [MEMORY[0x1E696C508] sharedConverter];
    v12 = [mEMORY[0x1E696C508] synonymForUCUMUnitString:v9];
  }

  else
  {
LABEL_7:
    v12 = 0;
  }

  if (v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = &stru_1F4D16E38;
  }

  v14 = v13;

  return v13;
}

@end