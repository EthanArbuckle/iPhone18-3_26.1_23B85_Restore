@interface HKDisplayType(ManualEntry)
- (id)wd_addDataViewControllerClass;
- (void)wd_defaultValueForAddDataViewController;
- (void)wd_valueOrderForAddDataViewController;
@end

@implementation HKDisplayType(ManualEntry)

- (id)wd_addDataViewControllerClass
{
  [a1 displayTypeIdentifier];
  v1 = objc_opt_class();

  return v1;
}

- (void)wd_valueOrderForAddDataViewController
{
  v1 = [a1 displayTypeIdentifier];
  if (v1 <= 94)
  {
    switch(v1)
    {
      case '?':
        return &unk_1F3846888;
      case '[':
        return &unk_1F38467E0;
      case '\\':
        return &unk_1F3846840;
      default:
        return MEMORY[0x1E695E0F0];
    }
  }

  else
  {
    v2 = v1 - 157;
    result = &unk_1F3846780;
    switch(v2)
    {
      case 0:
      case 1:
      case 2:
      case 3:
      case 4:
      case 5:
      case 6:
      case 8:
      case 9:
      case 10:
      case 11:
      case 14:
      case 44:
      case 45:
      case 46:
      case 47:
      case 48:
      case 49:
      case 50:
      case 63:
      case 64:
      case 65:
      case 66:
      case 67:
      case 68:
      case 69:
      case 72:
      case 73:
      case 74:
      case 75:
      case 76:
      case 77:
      case 78:
      case 83:
      case 84:
      case 85:
        return result;
      case 7:
      case 12:
        result = &unk_1F3846828;
        break;
      case 13:
        result = &unk_1F3846798;
        break;
      case 15:
      case 16:
      case 17:
      case 18:
      case 19:
      case 20:
      case 22:
      case 23:
      case 24:
      case 25:
      case 26:
      case 27:
      case 28:
      case 29:
      case 30:
      case 31:
      case 32:
      case 33:
      case 34:
      case 35:
      case 36:
      case 37:
      case 38:
      case 39:
      case 40:
      case 41:
      case 42:
      case 43:
      case 51:
      case 52:
      case 53:
      case 54:
      case 55:
      case 56:
      case 57:
      case 58:
      case 59:
      case 60:
      case 61:
      case 62:
      case 70:
      case 71:
      case 80:
      case 81:
      case 82:
      case 88:
      case 89:
      case 90:
      case 91:
      case 92:
        return MEMORY[0x1E695E0F0];
      case 21:
        result = &unk_1F38467F8;
        break;
      case 79:
        result = &unk_1F3846810;
        break;
      case 86:
        result = &unk_1F3846858;
        break;
      case 87:
        result = &unk_1F3846870;
        break;
      case 93:
        result = &unk_1F38467B0;
        break;
      default:
        if (&unk_1F3846780 != 95 && &unk_1F3846780 != 314)
        {
          return MEMORY[0x1E695E0F0];
        }

        result = &unk_1F38467C8;
        break;
    }
  }

  return result;
}

- (void)wd_defaultValueForAddDataViewController
{
  v1 = [a1 displayTypeIdentifier];
  v2 = v1 + 99;
  if ((v1 - 157) <= 0x32 && (((1 << v2) & 0x7F00000004F7FLL) != 0 || ((1 << v2) & 0x1080) != 0 || v1 == 170) || (v1 - 220) <= 0x16 && ((1 << (v1 + 36)) & 0x70FE7F) != 0)
  {
    return &unk_1F3846528;
  }

  if (v1 == 63)
  {
    return &unk_1F3846528;
  }

  return 0;
}

@end