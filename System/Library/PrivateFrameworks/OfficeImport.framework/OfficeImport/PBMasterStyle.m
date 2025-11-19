@interface PBMasterStyle
+ (void)readMasterStyleAtom:(void *)a3 baseMasterStyleAtom:(void *)a4 masterBulletStyleAtom:(void *)a5 textListStyle:(id)a6 state:(id)a7;
@end

@implementation PBMasterStyle

+ (void)readMasterStyleAtom:(void *)a3 baseMasterStyleAtom:(void *)a4 masterBulletStyleAtom:(void *)a5 textListStyle:(id)a6 state:(id)a7
{
  v28 = a6;
  v10 = a7;
  if (!a3)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1004;
  }

  v12 = *(a3 + 6);
  v11 = *(a3 + 7);
  Instance = EshRecord::getInstance(a3);
  isDerivedType = PptTextHeaderAtom::isDerivedType(Instance);
  v15 = v11 - v12;
  if (isDerivedType && (!a4 || (v15 >> 3) > ((*(a4 + 14) - *(a4 + 12)) >> 3)))
  {
    v25 = __cxa_allocate_exception(4uLL);
    *v25 = 1004;
  }

  v26 = a5;
  if (a5)
  {
    v16 = ((*(a5 + 14) - *(a5 + 12)) >> 3);
  }

  else
  {
    v16 = 0;
  }

  if ((v15 & 0x7FFF8) != 0)
  {
    v17 = 0;
    v18 = (v15 >> 3);
    while (1)
    {
      LevelReference = PptTextMasterStyleAtom::getLevelReference(a3, v17);
      if (isDerivedType)
      {
        break;
      }

      if (v17)
      {
        v20 = PptTextMasterStyleAtom::getLevelReference(a3, (v17 - 1));
        goto LABEL_14;
      }

LABEL_15:
      if (v17 >= v16)
      {
        v22 = 0;
      }

      else
      {
        v22 = PptTextMasterStyleAtom::getLevelReference(v26, v17);
      }

      v23 = [v28 propertiesForListLevel:v17];
      [PBParagraphProperties readParagraphProperties:v23 paragraphProperty:LevelReference bulletStyle:v22 isMaster:1 state:v10];
      [PBCharacterProperties readCharacterProperties:v23 characterProperty:LevelReference + 48 state:v10];
      [v23 setLevel:v17];

      if (v18 == ++v17)
      {
        goto LABEL_19;
      }
    }

    v20 = PptTextMasterStyleAtom::getLevelReference(a4, v17);
LABEL_14:
    v21 = v20;
    PptParaProperty::copyValuesOfNonOverriddenPropertiesFromParent(LevelReference, v20);
    PptCharProperty::copyValuesOfNonOverriddenPropertiesFromParent((LevelReference + 48), (v21 + 48));
    goto LABEL_15;
  }

LABEL_19:
}

@end