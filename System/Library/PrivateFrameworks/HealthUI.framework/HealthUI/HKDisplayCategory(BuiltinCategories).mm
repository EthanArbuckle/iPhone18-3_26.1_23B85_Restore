@interface HKDisplayCategory(BuiltinCategories)
- (UIColor)color;
- (UIImageSymbolConfiguration)multiColorImageConfiguration;
@end

@implementation HKDisplayCategory(BuiltinCategories)

- (UIImageSymbolConfiguration)multiColorImageConfiguration
{
  categoryID = [(HKDisplayCategory *)self categoryID];
  hk_prefersMultiColorConfiguration = 0;
  if (categoryID <= 0x1E)
  {
    if (((1 << categoryID) & 0x44DFE312) != 0)
    {
      hk_prefersMultiColorConfiguration = [MEMORY[0x1E69DCAD8] hk_prefersMultiColorConfiguration];
    }

    else if (categoryID == 5)
    {
      v5 = MEMORY[0x1E69DCAD8];
      hk_sleepKeyColor = [MEMORY[0x1E69DC888] hk_sleepKeyColor];
      hk_prefersMultiColorConfiguration = [v5 hk_prefersHierarchicalColorConfigurationWithColor:hk_sleepKeyColor];
    }
  }

  return hk_prefersMultiColorConfiguration;
}

- (UIColor)color
{
  categoryID = [(HKDisplayCategory *)self categoryID];
  hk_vitalsKeyColor = 0;
  switch(categoryID)
  {
    case 1:
      hk_vitalsKeyColor = [MEMORY[0x1E69DC888] hk_vitalsKeyColor];
      break;
    case 2:
      hk_vitalsKeyColor = [MEMORY[0x1E69DC888] hk_activityKeyColor];
      break;
    case 4:
      hk_vitalsKeyColor = [MEMORY[0x1E69DC888] hk_nutritionKeyColor];
      break;
    case 5:
      hk_vitalsKeyColor = [MEMORY[0x1E69DC888] hk_sleepKeyColor];
      break;
    case 6:
      hk_vitalsKeyColor = [MEMORY[0x1E69DC888] hk_bodyMeasurementsKeyColor];
      break;
    case 7:
      hk_vitalsKeyColor = [MEMORY[0x1E69DC888] hk_profileKeyColor];
      break;
    case 8:
      hk_vitalsKeyColor = [MEMORY[0x1E69DC888] hk_reproductiveHealthKeyColor];
      break;
    case 9:
      hk_vitalsKeyColor = [MEMORY[0x1E69DC888] hk_clinicalDocumentsKeyColor];
      break;
    case 10:
      hk_vitalsKeyColor = [MEMORY[0x1E69DC888] hk_mindfulnessKeyColor];
      break;
    case 11:
      hk_vitalsKeyColor = [MEMORY[0x1E69DC888] hk_heartKeyColor];
      break;
    case 12:
      hk_vitalsKeyColor = [MEMORY[0x1E69DC888] hk_hearingHealthKeyColor];
      break;
    case 13:
      hk_vitalsKeyColor = [MEMORY[0x1E69DC888] hk_respiratoryKeyColor];
      break;
    case 14:
      hk_vitalsKeyColor = [MEMORY[0x1E69DC888] hk_otherKeyColor];
      break;
    case 15:
    case 20:
      hk_vitalsKeyColor = [MEMORY[0x1E69DC888] hk_labResultsClinicalKeyColor];
      break;
    case 16:
      hk_vitalsKeyColor = [MEMORY[0x1E69DC888] hk_allergiesClinicalKeyColor];
      break;
    case 17:
      hk_vitalsKeyColor = [MEMORY[0x1E69DC888] hk_vitalsClinicalKeyColor];
      break;
    case 18:
      hk_vitalsKeyColor = [MEMORY[0x1E69DC888] hk_conditionsClinicalKeyColor];
      break;
    case 19:
      hk_vitalsKeyColor = [MEMORY[0x1E69DC888] hk_immunizationsClinicalKeyColor];
      break;
    case 21:
      hk_vitalsKeyColor = [MEMORY[0x1E69DC888] hk_medicationsClinicalKeyColor];
      break;
    case 22:
      hk_vitalsKeyColor = [MEMORY[0x1E69DC888] hk_proceduresClinicalKeyColor];
      break;
    case 23:
      hk_vitalsKeyColor = [MEMORY[0x1E69DC888] hk_mobilityKeyColor];
      break;
    case 26:
      hk_vitalsKeyColor = [MEMORY[0x1E69DC888] hk_symptomsKeyColor];
      break;
    case 27:
      hk_vitalsKeyColor = [MEMORY[0x1E69DC888] hk_insuranceClinicalKeyColor];
      break;
    case 30:
      hk_vitalsKeyColor = [MEMORY[0x1E69DC888] hk_clinicalNotesClinicalKeyColor];
      break;
    case 31:
      hk_vitalsKeyColor = [MEMORY[0x1E69DC888] hk_medicationTrackingKeyColor];
      break;
    default:
      break;
  }

  return hk_vitalsKeyColor;
}

@end