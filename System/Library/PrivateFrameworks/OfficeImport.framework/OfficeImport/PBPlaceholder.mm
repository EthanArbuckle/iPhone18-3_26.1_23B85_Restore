@interface PBPlaceholder
+ (int)placeholderTypeFromTextType:(int)a3;
+ (int)readPlaceholderSize:(int)a3;
+ (int)readPlaceholderType:(int)a3;
+ (void)writePlaceholder:(id)a3 toPlaceholderAtom:(PptOEPlaceholderAtom *)a4 isMaster:(BOOL)a5 isNotes:(BOOL)a6;
@end

@implementation PBPlaceholder

+ (int)readPlaceholderType:(int)a3
{
  if (a3 < 0x1B)
  {
    return dword_25D70F418[a3];
  }

  TCVerifyInputMeetsCondition(0);
  return 0;
}

+ (int)readPlaceholderSize:(int)a3
{
  if (a3 >= 3)
  {
    return -1;
  }

  else
  {
    return a3;
  }
}

+ (int)placeholderTypeFromTextType:(int)a3
{
  if (a3 > 8)
  {
    return -1;
  }

  else
  {
    return dword_25D70F484[a3];
  }
}

+ (void)writePlaceholder:(id)a3 toPlaceholderAtom:(PptOEPlaceholderAtom *)a4 isMaster:(BOOL)a5 isNotes:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v14 = a3;
  a4->var6 = [v14 index];
  *(a4 + 53) = [v14 size];
  v9 = [v14 orientation];
  switch([v14 type])
  {
    case 0u:
      if (v9 == 1)
      {
        v10 = 17;
      }

      else
      {
        v10 = 13;
      }

      if (v7)
      {
        v10 = 1;
      }

      break;
    case 1u:
      if (v9 == 1)
      {
        v10 = 18;
      }

      else
      {
        v10 = 14;
      }

      if (v7)
      {
        v10 = 2;
        v13 = 6;
      }

      else
      {
        v13 = 12;
      }

      if (v6)
      {
        v10 = v13;
      }

      break;
    case 2u:
      v11 = !v7;
      v10 = 15;
      v12 = 3;
      goto LABEL_15;
    case 3u:
      v11 = !v7;
      v10 = 16;
      v12 = 11;
      goto LABEL_15;
    case 4u:
      v10 = 7;
      break;
    case 5u:
      v10 = 8;
      break;
    case 6u:
      v10 = 9;
      break;
    case 7u:
      v10 = 10;
      break;
    case 8u:
      if (v9 == 1)
      {
        v10 = 25;
      }

      else
      {
        v10 = 19;
      }

      break;
    case 9u:
      v10 = 20;
      break;
    case 0xAu:
      v10 = 21;
      break;
    case 0xBu:
      v10 = 22;
      break;
    case 0xCu:
      v10 = 23;
      break;
    case 0xDu:
      v10 = 24;
      break;
    case 0xEu:
      v11 = !v7;
      v10 = 11;
      v12 = 5;
LABEL_15:
      if (!v11)
      {
        v10 = v12;
      }

      break;
    case 0xFu:
      v10 = 26;
      break;
    default:
      v10 = 0;
      break;
  }

  *(a4 + 52) = v10;
}

@end