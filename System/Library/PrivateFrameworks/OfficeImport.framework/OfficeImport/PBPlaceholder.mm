@interface PBPlaceholder
+ (int)placeholderTypeFromTextType:(int)type;
+ (int)readPlaceholderSize:(int)size;
+ (int)readPlaceholderType:(int)type;
+ (void)writePlaceholder:(id)placeholder toPlaceholderAtom:(PptOEPlaceholderAtom *)atom isMaster:(BOOL)master isNotes:(BOOL)notes;
@end

@implementation PBPlaceholder

+ (int)readPlaceholderType:(int)type
{
  if (type < 0x1B)
  {
    return dword_25D70F418[type];
  }

  TCVerifyInputMeetsCondition(0);
  return 0;
}

+ (int)readPlaceholderSize:(int)size
{
  if (size >= 3)
  {
    return -1;
  }

  else
  {
    return size;
  }
}

+ (int)placeholderTypeFromTextType:(int)type
{
  if (type > 8)
  {
    return -1;
  }

  else
  {
    return dword_25D70F484[type];
  }
}

+ (void)writePlaceholder:(id)placeholder toPlaceholderAtom:(PptOEPlaceholderAtom *)atom isMaster:(BOOL)master isNotes:(BOOL)notes
{
  notesCopy = notes;
  masterCopy = master;
  placeholderCopy = placeholder;
  atom->var6 = [placeholderCopy index];
  *(atom + 53) = [placeholderCopy size];
  orientation = [placeholderCopy orientation];
  switch([placeholderCopy type])
  {
    case 0u:
      if (orientation == 1)
      {
        v10 = 17;
      }

      else
      {
        v10 = 13;
      }

      if (masterCopy)
      {
        v10 = 1;
      }

      break;
    case 1u:
      if (orientation == 1)
      {
        v10 = 18;
      }

      else
      {
        v10 = 14;
      }

      if (masterCopy)
      {
        v10 = 2;
        v13 = 6;
      }

      else
      {
        v13 = 12;
      }

      if (notesCopy)
      {
        v10 = v13;
      }

      break;
    case 2u:
      v11 = !masterCopy;
      v10 = 15;
      v12 = 3;
      goto LABEL_15;
    case 3u:
      v11 = !masterCopy;
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
      if (orientation == 1)
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
      v11 = !masterCopy;
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

  *(atom + 52) = v10;
}

@end