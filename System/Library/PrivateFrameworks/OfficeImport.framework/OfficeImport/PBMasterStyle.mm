@interface PBMasterStyle
+ (void)readMasterStyleAtom:(void *)atom baseMasterStyleAtom:(void *)styleAtom masterBulletStyleAtom:(void *)bulletStyleAtom textListStyle:(id)style state:(id)state;
@end

@implementation PBMasterStyle

+ (void)readMasterStyleAtom:(void *)atom baseMasterStyleAtom:(void *)styleAtom masterBulletStyleAtom:(void *)bulletStyleAtom textListStyle:(id)style state:(id)state
{
  styleCopy = style;
  stateCopy = state;
  if (!atom)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1004;
  }

  v12 = *(atom + 6);
  v11 = *(atom + 7);
  Instance = EshRecord::getInstance(atom);
  isDerivedType = PptTextHeaderAtom::isDerivedType(Instance);
  v15 = v11 - v12;
  if (isDerivedType && (!styleAtom || (v15 >> 3) > ((*(styleAtom + 14) - *(styleAtom + 12)) >> 3)))
  {
    v25 = __cxa_allocate_exception(4uLL);
    *v25 = 1004;
  }

  bulletStyleAtomCopy = bulletStyleAtom;
  if (bulletStyleAtom)
  {
    v16 = ((*(bulletStyleAtom + 14) - *(bulletStyleAtom + 12)) >> 3);
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
      LevelReference = PptTextMasterStyleAtom::getLevelReference(atom, v17);
      if (isDerivedType)
      {
        break;
      }

      if (v17)
      {
        v20 = PptTextMasterStyleAtom::getLevelReference(atom, (v17 - 1));
        goto LABEL_14;
      }

LABEL_15:
      if (v17 >= v16)
      {
        v22 = 0;
      }

      else
      {
        v22 = PptTextMasterStyleAtom::getLevelReference(bulletStyleAtomCopy, v17);
      }

      v23 = [styleCopy propertiesForListLevel:v17];
      [PBParagraphProperties readParagraphProperties:v23 paragraphProperty:LevelReference bulletStyle:v22 isMaster:1 state:stateCopy];
      [PBCharacterProperties readCharacterProperties:v23 characterProperty:LevelReference + 48 state:stateCopy];
      [v23 setLevel:v17];

      if (v18 == ++v17)
      {
        goto LABEL_19;
      }
    }

    v20 = PptTextMasterStyleAtom::getLevelReference(styleAtom, v17);
LABEL_14:
    v21 = v20;
    PptParaProperty::copyValuesOfNonOverriddenPropertiesFromParent(LevelReference, v20);
    PptCharProperty::copyValuesOfNonOverriddenPropertiesFromParent((LevelReference + 48), (v21 + 48));
    goto LABEL_15;
  }

LABEL_19:
}

@end