@interface TCFontUtils
+ (id)stringByFixingString:(id)string latinFontFamilyName:(id)name symbolFontFamilyName:(id)familyName;
@end

@implementation TCFontUtils

+ (id)stringByFixingString:(id)string latinFontFamilyName:(id)name symbolFontFamilyName:(id)familyName
{
  stringCopy = string;
  nameCopy = name;
  familyNameCopy = familyName;
  v27 = nameCopy;
  v28 = stringCopy;
  v10 = [stringCopy length];
  std::vector<unsigned short>::vector[abi:ne200100](__p, v10);
  [stringCopy getCharacters:__p[0] range:{0, v10}];
  if (![(NSString *)familyNameCopy length])
  {
    v11 = nameCopy;

    familyNameCopy = v11;
  }

  v12 = TCCodePointMapperForFontFamilyName(nameCopy);
  if (v12)
  {
    IsPi = 0;
    if (v10)
    {
LABEL_5:
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = __p[0];
      while (1)
      {
        v20 = v19[v14];
        if ((v20 - 32) <= 0xDF)
        {
          if (v12)
          {
            v21 = v12(v20);
            v15 |= v21 != 0;
            if (v21)
            {
              LOWORD(v20) = v21;
            }
          }

          else
          {
            v15 |= IsPi;
            if (IsPi)
            {
              LOWORD(v20) = v20 | 0xF000;
            }
          }

          goto LABEL_27;
        }

        if ((v20 + 4064) <= 0xDFu)
        {
          if (v18)
          {
            if (v17)
            {
              goto LABEL_20;
            }

            if ((v16 & 1) == 0)
            {
              goto LABEL_26;
            }
          }

          else
          {
            v17 = TCCodePointMapperForFontFamilyName(familyNameCopy);
            if (v17)
            {
LABEL_20:
              v22 = v17((v20 + 4096));
              v15 |= v22 != 0;
              if (v22)
              {
                LOWORD(v20) = v22;
              }

              v18 = 1;
              goto LABEL_27;
            }

            if ((TCFontFamilyHasCodePointsInPiRange(familyNameCopy) & 1) == 0 && (TCFontFamilyIsPi(familyNameCopy) & 1) == 0)
            {
LABEL_26:
              v17 = 0;
              v16 = 0;
              LOWORD(v20) = v20 + 4096;
              v18 = 1;
              v15 = 1;
              goto LABEL_27;
            }
          }

          v17 = 0;
          v18 = 1;
          v16 = 1;
        }

LABEL_27:
        v19 = __p[0];
        *(__p[0] + v14++) = v20;
        if (v10 == v14)
        {
          goto LABEL_31;
        }
      }
    }
  }

  else
  {
    IsPi = TCFontFamilyIsPi(nameCopy);
    if (v10)
    {
      goto LABEL_5;
    }
  }

  LOBYTE(v15) = 0;
LABEL_31:
  v23 = v15 | [MEMORY[0x277CCACA8] tc_fixUnpairedSurrogateCharactersInBuffer:__p];
  v24 = v28;
  v25 = v24;
  if (v23)
  {
    v25 = [MEMORY[0x277CCACA8] stringWithCharacters:__p[0] length:v10];
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return v25;
}

@end