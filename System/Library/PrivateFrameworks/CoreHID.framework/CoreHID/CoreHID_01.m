uint64_t HIDUsage.CameraControlUsage.rawValue.getter()
{
  if (*v0)
  {
    return 33;
  }

  else
  {
    return 32;
  }
}

char HIDUsage.init(page:usage:)@<W0>(int rawValue@<W1>, uint64_t a2@<X0>, uint64_t a3@<X8>)
{
  v4 = rawValue & 0x10000;
  switch(a2)
  {
    case 1:
      if (v4)
      {
        v6 = 114;
      }

      else
      {
        LOBYTE(a2) = HIDUsage.GenericDesktopUsage.init(rawValue:)(rawValue);
        v6 = v44;
        if (v44 == 114)
        {
          v6 = ((rawValue << 16) | 0xFFFFFF8400000002) - 1;
        }
      }

      goto LABEL_160;
    case 2:
      if (!v4)
      {
        LOBYTE(a2) = HIDUsage.SimulationControlsUsage.init(rawValue:)(rawValue);
        v14 = v44 == 51;
        v6 = v44 | 0x400000000;
        v15 = (rawValue << 16);
        v26 = 0xFFFFFF8400000002;
        goto LABEL_89;
      }

      v6 = 0x400000033;
      goto LABEL_160;
    case 3:
      if (v4)
      {
        v6 = 0x80000000CLL;
      }

      else
      {
        LOBYTE(a2) = HIDUsage.VRControlsUsage.init(rawValue:)(rawValue);
        v6 = v44 | 0x800000000;
        if (v44 == 12)
        {
          v6 = (rawValue << 16) | 0xFFFFFF8400000003;
        }
      }

      goto LABEL_160;
    case 4:
      if (v4)
      {
        v6 = 0xC00000022;
      }

      else
      {
        LOBYTE(a2) = HIDUsage.SportControlsUsage.init(rawValue:)(rawValue);
        v6 = v44 | 0xC00000000;
        if (v44 == 34)
        {
          v6 = ((rawValue << 16) | 0xFFFFFF8400000002) + 2;
        }
      }

      goto LABEL_160;
    case 5:
      if (v4)
      {
        v6 = 0x100000001DLL;
      }

      else
      {
        LOBYTE(a2) = HIDUsage.GameControlsUsage.init(rawValue:)(rawValue);
        v6 = v44 | 0x1000000000;
        if (v44 == 29)
        {
          v6 = ((rawValue << 16) | 0xFFFFFF8400000002) + 3;
        }
      }

      goto LABEL_160;
    case 6:
      if (v4)
      {
        v6 = 0x1400000018;
      }

      else
      {
        LOBYTE(a2) = HIDUsage.GenericDeviceControlsUsage.init(rawValue:)(rawValue);
        v6 = v44 | 0x1400000000;
        if (v44 == 24)
        {
          v6 = (rawValue << 16) | 0xFFFFFF8400000006;
        }
      }

      goto LABEL_160;
    case 7:
      if (!v4)
      {
        LOBYTE(a2) = HIDUsage.KeyboardOrKeypadUsage.init(rawValue:)(rawValue);
        v14 = v44 == 218;
        v6 = v44 | 0x1800000000;
        v15 = (rawValue << 16);
        v16 = 5;
        goto LABEL_88;
      }

      v6 = 0x18000000DALL;
      goto LABEL_160;
    case 8:
      if (v4)
      {
        v6 = 0x1C00000060;
      }

      else
      {
        LOBYTE(a2) = HIDUsage.LEDUsage.init(rawValue:)(rawValue);
        v6 = v44 | 0x1C00000000;
        if (v44 == 96)
        {
          v6 = ((rawValue << 16) | 0xFFFFFF8400000002) + 6;
        }
      }

      goto LABEL_160;
    case 9:
      v6 = rawValue & 0x1FFFF | 0x2000000000;
      goto LABEL_160;
    case 10:
      v6 = rawValue & 0x1FFFF | 0x2400000000;
      goto LABEL_160;
    case 11:
      if (!v4)
      {
        LOBYTE(a2) = HIDUsage.TelephonyDeviceUsage.init(rawValue:)(rawValue);
        v14 = v44 == 99;
        v6 = v44 | 0x2800000000;
        v15 = (rawValue << 16);
        v16 = 9;
        goto LABEL_88;
      }

      v6 = 0x2800000063;
      goto LABEL_160;
    case 12:
      if (v4)
      {
        v6 = 0x2C000001C2;
      }

      else
      {
        LOBYTE(a2) = HIDUsage.ConsumerUsage.init(rawValue:)(rawValue).value;
        v6 = v44 | 0x2C00000000;
        if (v44 == 450)
        {
          v6 = ((rawValue << 16) | 0xFFFFFF8400000002) + 10;
        }
      }

      goto LABEL_160;
    case 13:
      if (v4)
      {
        v6 = 0x300000006CLL;
      }

      else
      {
        LOBYTE(a2) = HIDUsage.DigitizersUsage.init(rawValue:)(rawValue);
        v6 = v44 | 0x3000000000;
        if (v44 == 108)
        {
          v6 = ((rawValue << 16) | 0xFFFFFF8400000002) + 11;
        }
      }

      goto LABEL_160;
    case 14:
      if (v4)
      {
        v6 = 0x340000001DLL;
      }

      else
      {
        LOBYTE(a2) = HIDUsage.HapticsUsage.init(rawValue:)(rawValue);
        v6 = v44 | 0x3400000000;
        if (v44 == 29)
        {
          v6 = (rawValue << 16) | 0xFFFFFF840000000ELL;
        }
      }

      goto LABEL_160;
    case 15:
      if (!v4)
      {
        LOBYTE(a2) = HIDUsage.PhysicalInputDeviceUsage.init(rawValue:)(rawValue);
        v14 = v44 == 105;
        v6 = v44 | 0x3800000000;
        v15 = (rawValue << 16);
        v16 = 13;
        goto LABEL_88;
      }

      v6 = 0x3800000069;
      goto LABEL_160;
    case 16:
    case 19:
    case 21:
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
    case 44:
    case 45:
    case 46:
    case 47:
    case 48:
    case 49:
    case 50:
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
    case 63:
    case 66:
    case 67:
    case 68:
    case 69:
    case 70:
    case 71:
    case 72:
    case 73:
    case 74:
    case 75:
    case 76:
    case 77:
    case 78:
    case 79:
    case 80:
    case 81:
    case 82:
    case 83:
    case 84:
    case 85:
    case 86:
    case 87:
    case 88:
    case 90:
    case 91:
    case 92:
    case 93:
    case 94:
    case 95:
    case 96:
    case 97:
    case 98:
    case 99:
    case 100:
    case 101:
    case 102:
    case 103:
    case 104:
    case 105:
    case 106:
    case 107:
    case 108:
    case 109:
    case 110:
    case 111:
    case 112:
    case 113:
    case 114:
    case 115:
    case 116:
    case 117:
    case 118:
    case 119:
    case 120:
    case 121:
    case 122:
    case 123:
    case 124:
    case 125:
    case 126:
    case 127:
    case 131:
    case 134:
    case 135:
    case 136:
    case 137:
    case 138:
    case 139:
    case 143:
      goto LABEL_17;
    case 17:
      if (v4)
      {
        v6 = 0x3C0000000ALL;
      }

      else
      {
        LOBYTE(a2) = HIDUsage.SOCUsage.init(rawValue:)(rawValue);
        v6 = v44 | 0x3C00000000;
        if (v44 == 10)
        {
          v6 = ((rawValue << 16) | 0xFFFFFF8400000002) + 15;
        }
      }

      goto LABEL_160;
    case 18:
      if (v4)
      {
        v6 = 0x4000000022;
      }

      else
      {
        LOBYTE(a2) = HIDUsage.EyeAndHeadTrackersUsage.init(rawValue:)(rawValue);
        v6 = v44 | 0x4000000000;
        if (v44 == 34)
        {
          v6 = (rawValue << 16) | 0xFFFFFF8400000012;
        }
      }

      goto LABEL_160;
    case 20:
      if (v4)
      {
        v6 = 0x440000004BLL;
      }

      else
      {
        LOBYTE(a2) = HIDUsage.AuxiliaryDisplayUsage.init(rawValue:)(rawValue);
        v6 = v44 | 0x4400000000;
        if (v44 == 75)
        {
          v6 = ((rawValue << 16) | 0xFFFFFF8400000002) + 18;
        }
      }

      goto LABEL_160;
    case 32:
      if (v4)
      {
        v6 = 0x4800000299;
      }

      else
      {
        LOBYTE(a2) = HIDUsage.SensorsUsage.init(rawValue:)(rawValue).value;
        v6 = v44 | 0x4800000000;
        if (v44 == 665)
        {
          v6 = ((rawValue << 16) | 0xFFFFFF8400000002) + 30;
        }
      }

      goto LABEL_160;
    case 64:
      if (v4)
      {
        v6 = 0x4C0000001DLL;
      }

      else
      {
        LOBYTE(a2) = HIDUsage.MedicalInstrumentUsage.init(rawValue:)(rawValue);
        v6 = v44 | 0x4C00000000;
        if (v44 == 29)
        {
          v6 = ((rawValue << 16) | 0xFFFFFF8400000002) + 62;
        }
      }

      goto LABEL_160;
    case 65:
      if (v4)
      {
        v6 = 0x500000002BLL;
      }

      else
      {
        LOBYTE(a2) = HIDUsage.BrailleDisplayUsage.init(rawValue:)(rawValue);
        v6 = v44 | 0x5000000000;
        if (v44 == 43)
        {
          v6 = ((rawValue << 16) | 0xFFFFFF8400000002) + 63;
        }
      }

      goto LABEL_160;
    case 89:
      if (v4)
      {
        v6 = 0x5400000021;
      }

      else
      {
        LOBYTE(a2) = HIDUsage.LightingAndIlluminationUsage.init(rawValue:)(rawValue);
        v6 = v44 | 0x5400000000;
        if (v44 == 33)
        {
          v6 = ((rawValue << 16) | 0xFFFFFF8400000002) + 87;
        }
      }

      goto LABEL_160;
    case 128:
      v6 = 0x5800000001;
      if (v4)
      {
        v6 = 0x5800000004;
        goto LABEL_160;
      }

      if (rawValue > 2u)
      {
        if (rawValue != 4)
        {
          if (rawValue == 3)
          {
            v6 = 0x5800000002;
            goto LABEL_160;
          }

          goto LABEL_164;
        }

        v6 = 0x5800000003;
      }

      else
      {
        if (rawValue != 1)
        {
          if (rawValue == 2)
          {
            goto LABEL_160;
          }

LABEL_164:
          v6 = ((rawValue << 16) | 0xFFFFFF8400000002) + 126;
          goto LABEL_160;
        }

        v6 = 0x5800000000;
      }

LABEL_160:
      *a3 = v6;
      *(a3 + 4) = BYTE4(v6);
      return a2;
    case 129:
      v6 = rawValue & 0x1FFFF | 0x5C00000000;
      goto LABEL_160;
    case 130:
      if (v4)
      {
        v6 = 0x600000002DLL;
      }

      else
      {
        LOBYTE(a2) = HIDUsage.VESAVirtualControlsUsage.init(rawValue:)(rawValue);
        v6 = v44 | 0x6000000000;
        if (v44 == 45)
        {
          v6 = (rawValue << 16) | 0xFFFFFF8400000082;
        }
      }

      goto LABEL_160;
    case 132:
      if (v4)
      {
        v6 = 0x640000004DLL;
      }

      else
      {
        LOBYTE(a2) = HIDUsage.PowerUsage.init(rawValue:)(rawValue);
        v6 = v44 | 0x6400000000;
        if (v44 == 77)
        {
          v6 = ((rawValue << 16) | 0xFFFFFF8400000002) + 130;
        }
      }

      goto LABEL_160;
    case 133:
      if (v4)
      {
        v6 = 0x680000005BLL;
      }

      else
      {
        LOBYTE(a2) = HIDUsage.BatterySystemUsage.init(rawValue:)(rawValue);
        v6 = v44 | 0x6800000000;
        if (v44 == 91)
        {
          v6 = ((rawValue << 16) | 0xFFFFFF8400000002) + 131;
        }
      }

      goto LABEL_160;
    case 140:
      if (v4)
      {
        v6 = 0x6C000000C2;
      }

      else
      {
        LOBYTE(a2) = HIDUsage.BarcodeScannerUsage.init(rawValue:)(rawValue);
        v6 = v44 | 0x6C00000000;
        if (v44 == 194)
        {
          v6 = ((rawValue << 16) | 0xFFFFFF8400000002) + 138;
        }
      }

      goto LABEL_160;
    case 141:
      if (v4)
      {
        v6 = 0x700000002ELL;
      }

      else
      {
        LOBYTE(a2) = HIDUsage.ScalesUsage.init(rawValue:)(rawValue);
        v6 = v44 | 0x7000000000;
        if (v44 == 46)
        {
          v6 = ((rawValue << 16) | 0xFFFFFF8400000002) + 139;
        }
      }

      goto LABEL_160;
    case 142:
      if (v4)
      {
        v6 = 0x740000000ALL;
      }

      else
      {
        LOBYTE(a2) = HIDUsage.MagneticStripeReaderUsage.init(rawValue:)(rawValue);
        v14 = v44 == 10;
        v6 = v44 | 0x7400000000;
        v15 = (rawValue << 16);
        v16 = 140;
LABEL_88:
        v26 = v16 | 0xFFFFFF8400000002;
LABEL_89:
        v32 = v15 | v26;
        if (v14)
        {
          v6 = v32;
        }
      }

      goto LABEL_160;
    case 144:
      v38 = ((rawValue << 16) | 0xFFFFFF8400000002) + 142;
      if (rawValue == 33)
      {
        v38 = 0x7800000001;
      }

      if (rawValue == 32)
      {
        v39 = 0x7800000000;
      }

      else
      {
        v39 = v38;
      }

      if (v4)
      {
        v6 = 0x7800000002;
      }

      else
      {
        v6 = v39;
      }

      goto LABEL_160;
    case 145:
      if (v4)
      {
        v6 = 0x7C0000001BLL;
      }

      else
      {
        LOBYTE(a2) = HIDUsage.ArcadeUsage.init(rawValue:)(rawValue);
        v6 = v44 | 0x7C00000000;
        if (v44 == 27)
        {
          v6 = ((rawValue << 16) | 0xFFFFFF8400000002) + 143;
        }
      }

      goto LABEL_160;
    default:
      if (a2 == 61904)
      {
        v6 = 0x8000000003;
        v7 = 0x8000000001;
        v8 = (rawValue << 16) | 0xFFFFFF840000F1D0;
        if (rawValue == 33)
        {
          v8 = 0x8000000002;
        }

        if (rawValue != 32)
        {
          v7 = v8;
        }

        if (rawValue == 1)
        {
          v9 = 0x8000000000;
        }

        else
        {
          v9 = v7;
        }

        if (!v4)
        {
          v6 = v9;
        }
      }

      else
      {
LABEL_17:
        a2 = a2 | (rawValue << 16);
        v6 = (a2 | (v4 << 16)) - 0x7C00000000;
      }

      goto LABEL_160;
  }
}

CoreHID::HIDUsage::GenericDesktopUsage_optional __swiftcall HIDUsage.GenericDesktopUsage.init(rawValue:)(Swift::UInt16 rawValue)
{
  v2 = 0;
  v3 = 96;
  switch(rawValue)
  {
    case 1u:
      goto LABEL_113;
    case 2u:
      v2 = 1;
      goto LABEL_113;
    case 4u:
      v2 = 2;
      goto LABEL_113;
    case 5u:
      v2 = 3;
      goto LABEL_113;
    case 6u:
      v2 = 4;
      goto LABEL_113;
    case 7u:
      v2 = 5;
      goto LABEL_113;
    case 8u:
      v2 = 6;
      goto LABEL_113;
    case 9u:
      v2 = 7;
      goto LABEL_113;
    case 0xAu:
      v2 = 8;
      goto LABEL_113;
    case 0xBu:
      v2 = 9;
      goto LABEL_113;
    case 0xCu:
      v2 = 10;
      goto LABEL_113;
    case 0xDu:
      v2 = 11;
      goto LABEL_113;
    case 0xEu:
      v2 = 12;
      goto LABEL_113;
    case 0xFu:
      v2 = 13;
      goto LABEL_113;
    case 0x10u:
      v2 = 14;
      goto LABEL_113;
    case 0x11u:
      v2 = 15;
      goto LABEL_113;
    case 0x12u:
      v2 = 16;
      goto LABEL_113;
    case 0x13u:
      v2 = 17;
      goto LABEL_113;
    case 0x30u:
      v2 = 18;
      goto LABEL_113;
    case 0x31u:
      v2 = 19;
      goto LABEL_113;
    case 0x32u:
      v2 = 20;
      goto LABEL_113;
    case 0x33u:
      v2 = 21;
      goto LABEL_113;
    case 0x34u:
      v2 = 22;
      goto LABEL_113;
    case 0x35u:
      v2 = 23;
      goto LABEL_113;
    case 0x36u:
      v2 = 24;
      goto LABEL_113;
    case 0x37u:
      v2 = 25;
      goto LABEL_113;
    case 0x38u:
      v2 = 26;
      goto LABEL_113;
    case 0x39u:
      v2 = 27;
      goto LABEL_113;
    case 0x3Au:
      v2 = 28;
      goto LABEL_113;
    case 0x3Bu:
      v2 = 29;
      goto LABEL_113;
    case 0x3Cu:
      v2 = 30;
      goto LABEL_113;
    case 0x3Du:
      v2 = 31;
      goto LABEL_113;
    case 0x3Eu:
      v2 = 32;
      goto LABEL_113;
    case 0x40u:
      v2 = 33;
      goto LABEL_113;
    case 0x41u:
      v2 = 34;
      goto LABEL_113;
    case 0x42u:
      v2 = 35;
      goto LABEL_113;
    case 0x43u:
      v2 = 36;
      goto LABEL_113;
    case 0x44u:
      v2 = 37;
      goto LABEL_113;
    case 0x45u:
      v2 = 38;
      goto LABEL_113;
    case 0x46u:
      v2 = 39;
      goto LABEL_113;
    case 0x47u:
      v2 = 40;
      goto LABEL_113;
    case 0x48u:
      v2 = 41;
      goto LABEL_113;
    case 0x49u:
      v2 = 42;
      goto LABEL_113;
    case 0x4Au:
      v2 = 43;
      goto LABEL_113;
    case 0x4Bu:
      v2 = 44;
      goto LABEL_113;
    case 0x4Cu:
      v2 = 45;
      goto LABEL_113;
    case 0x80u:
      v2 = 46;
      goto LABEL_113;
    case 0x81u:
      v2 = 47;
      goto LABEL_113;
    case 0x82u:
      v2 = 48;
      goto LABEL_113;
    case 0x83u:
      v2 = 49;
      goto LABEL_113;
    case 0x84u:
      v2 = 50;
      goto LABEL_113;
    case 0x85u:
      v2 = 51;
      goto LABEL_113;
    case 0x86u:
      v2 = 52;
      goto LABEL_113;
    case 0x87u:
      v2 = 53;
      goto LABEL_113;
    case 0x88u:
      v2 = 54;
      goto LABEL_113;
    case 0x89u:
      v2 = 55;
      goto LABEL_113;
    case 0x8Au:
      v2 = 56;
      goto LABEL_113;
    case 0x8Bu:
      v2 = 57;
      goto LABEL_113;
    case 0x8Cu:
      v2 = 58;
      goto LABEL_113;
    case 0x8Du:
      v2 = 59;
      goto LABEL_113;
    case 0x8Eu:
      v2 = 60;
      goto LABEL_113;
    case 0x8Fu:
      v2 = 61;
      goto LABEL_113;
    case 0x90u:
      v2 = 62;
      goto LABEL_113;
    case 0x91u:
      v2 = 63;
      goto LABEL_113;
    case 0x92u:
      v2 = 64;
      goto LABEL_113;
    case 0x93u:
      v2 = 65;
      goto LABEL_113;
    case 0x94u:
      v2 = 66;
      goto LABEL_113;
    case 0x95u:
      v2 = 67;
      goto LABEL_113;
    case 0x96u:
      v2 = 68;
      goto LABEL_113;
    case 0x97u:
      v2 = 69;
      goto LABEL_113;
    case 0x98u:
      v2 = 70;
      goto LABEL_113;
    case 0x99u:
      v2 = 71;
      goto LABEL_113;
    case 0x9Au:
      v2 = 72;
      goto LABEL_113;
    case 0x9Bu:
      v2 = 73;
      goto LABEL_113;
    case 0xA0u:
      v2 = 74;
      goto LABEL_113;
    case 0xA1u:
      v2 = 75;
      goto LABEL_113;
    case 0xA2u:
      v2 = 76;
      goto LABEL_113;
    case 0xA3u:
      v2 = 77;
      goto LABEL_113;
    case 0xA4u:
      v2 = 78;
      goto LABEL_113;
    case 0xA5u:
      v2 = 79;
      goto LABEL_113;
    case 0xA6u:
      v2 = 80;
      goto LABEL_113;
    case 0xA7u:
      v2 = 81;
      goto LABEL_113;
    case 0xA8u:
      v2 = 82;
      goto LABEL_113;
    case 0xA9u:
      v2 = 83;
      goto LABEL_113;
    case 0xB0u:
      v2 = 84;
      goto LABEL_113;
    case 0xB1u:
      v2 = 85;
      goto LABEL_113;
    case 0xB2u:
      v2 = 86;
      goto LABEL_113;
    case 0xB3u:
      v2 = 87;
      goto LABEL_113;
    case 0xB4u:
      v2 = 88;
      goto LABEL_113;
    case 0xB5u:
      v2 = 89;
      goto LABEL_113;
    case 0xB6u:
      v2 = 90;
      goto LABEL_113;
    case 0xB7u:
      v2 = 91;
      goto LABEL_113;
    case 0xC0u:
      v2 = 92;
      goto LABEL_113;
    case 0xC1u:
      v2 = 93;
      goto LABEL_113;
    case 0xC2u:
      v2 = 94;
      goto LABEL_113;
    case 0xC3u:
      v2 = 95;
LABEL_113:
      v3 = v2;
      goto LABEL_114;
    case 0xC4u:
LABEL_114:
      *v1 = v3;
      break;
    case 0xC5u:
      *v1 = 97;
      break;
    case 0xC6u:
      *v1 = 98;
      break;
    case 0xC7u:
      *v1 = 99;
      break;
    case 0xC8u:
      *v1 = 100;
      break;
    case 0xC9u:
      *v1 = 101;
      break;
    case 0xCAu:
      *v1 = 102;
      break;
    case 0xCBu:
      *v1 = 103;
      break;
    case 0xD0u:
      *v1 = 104;
      break;
    case 0xD1u:
      *v1 = 105;
      break;
    case 0xD2u:
      *v1 = 106;
      break;
    case 0xD3u:
      *v1 = 107;
      break;
    case 0xD4u:
      *v1 = 108;
      break;
    case 0xD5u:
      *v1 = 109;
      break;
    case 0xD6u:
      *v1 = 110;
      break;
    case 0xE0u:
      *v1 = 111;
      break;
    case 0xE1u:
      *v1 = 112;
      break;
    case 0xE2u:
      *v1 = 113;
      break;
    default:
      *v1 = 114;
      break;
  }

  return rawValue;
}

CoreHID::HIDUsage::SimulationControlsUsage_optional __swiftcall HIDUsage.SimulationControlsUsage.init(rawValue:)(Swift::UInt16 rawValue)
{
  v2 = 0;
  v3 = 33;
  switch(rawValue)
  {
    case 1u:
      goto LABEL_51;
    case 2u:
      v2 = 1;
      goto LABEL_51;
    case 3u:
      v2 = 2;
      goto LABEL_51;
    case 4u:
      v2 = 3;
      goto LABEL_51;
    case 5u:
      v2 = 4;
      goto LABEL_51;
    case 6u:
      v2 = 5;
      goto LABEL_51;
    case 7u:
      v2 = 6;
      goto LABEL_51;
    case 8u:
      v2 = 7;
      goto LABEL_51;
    case 9u:
      v2 = 8;
      goto LABEL_51;
    case 0xAu:
      v2 = 9;
      goto LABEL_51;
    case 0xBu:
      v2 = 10;
      goto LABEL_51;
    case 0xCu:
      v2 = 11;
      goto LABEL_51;
    case 0x20u:
      v2 = 12;
      goto LABEL_51;
    case 0x21u:
      v2 = 13;
      goto LABEL_51;
    case 0x22u:
      v2 = 14;
      goto LABEL_51;
    case 0x23u:
      v2 = 15;
      goto LABEL_51;
    case 0x24u:
      v2 = 16;
      goto LABEL_51;
    case 0x25u:
      v2 = 17;
      goto LABEL_51;
    case 0xB0u:
      v2 = 18;
      goto LABEL_51;
    case 0xB1u:
      v2 = 19;
      goto LABEL_51;
    case 0xB2u:
      v2 = 20;
      goto LABEL_51;
    case 0xB3u:
      v2 = 21;
      goto LABEL_51;
    case 0xB4u:
      v2 = 22;
      goto LABEL_51;
    case 0xB5u:
      v2 = 23;
      goto LABEL_51;
    case 0xB6u:
      v2 = 24;
      goto LABEL_51;
    case 0xB7u:
      v2 = 25;
      goto LABEL_51;
    case 0xB8u:
      v2 = 26;
      goto LABEL_51;
    case 0xB9u:
      v2 = 27;
      goto LABEL_51;
    case 0xBAu:
      v2 = 28;
      goto LABEL_51;
    case 0xBBu:
      v2 = 29;
      goto LABEL_51;
    case 0xBCu:
      v2 = 30;
      goto LABEL_51;
    case 0xBDu:
      v2 = 31;
      goto LABEL_51;
    case 0xBEu:
      v2 = 32;
LABEL_51:
      v3 = v2;
      goto LABEL_52;
    case 0xBFu:
LABEL_52:
      *v1 = v3;
      break;
    case 0xC0u:
      *v1 = 34;
      break;
    case 0xC1u:
      *v1 = 35;
      break;
    case 0xC2u:
      *v1 = 36;
      break;
    case 0xC3u:
      *v1 = 37;
      break;
    case 0xC4u:
      *v1 = 38;
      break;
    case 0xC5u:
      *v1 = 39;
      break;
    case 0xC6u:
      *v1 = 40;
      break;
    case 0xC7u:
      *v1 = 41;
      break;
    case 0xC8u:
      *v1 = 42;
      break;
    case 0xC9u:
      *v1 = 43;
      break;
    case 0xCAu:
      *v1 = 44;
      break;
    case 0xCBu:
      *v1 = 45;
      break;
    case 0xCCu:
      *v1 = 46;
      break;
    case 0xCDu:
      *v1 = 47;
      break;
    case 0xCEu:
      *v1 = 48;
      break;
    case 0xCFu:
      *v1 = 49;
      break;
    case 0xD0u:
      *v1 = 50;
      break;
    default:
      *v1 = 51;
      break;
  }

  return rawValue;
}

CoreHID::HIDUsage::VRControlsUsage_optional __swiftcall HIDUsage.VRControlsUsage.init(rawValue:)(Swift::UInt16 rawValue)
{
  if (rawValue > 6u)
  {
    if (rawValue > 9u)
    {
      switch(rawValue)
      {
        case 0xAu:
          *v1 = 9;
          return rawValue;
        case 0x20u:
          *v1 = 10;
          return rawValue;
        case 0x21u:
          *v1 = 11;
          return rawValue;
      }
    }

    else
    {
      switch(rawValue)
      {
        case 7u:
          *v1 = 6;
          return rawValue;
        case 8u:
          *v1 = 7;
          return rawValue;
        case 9u:
          *v1 = 8;
          return rawValue;
      }
    }

LABEL_28:
    *v1 = 12;
    return rawValue;
  }

  if (rawValue > 3u)
  {
    switch(rawValue)
    {
      case 4u:
        *v1 = 3;
        return rawValue;
      case 5u:
        *v1 = 4;
        return rawValue;
      case 6u:
        *v1 = 5;
        return rawValue;
    }

    goto LABEL_28;
  }

  if (rawValue == 1)
  {
    *v1 = 0;
    return rawValue;
  }

  if (rawValue == 2)
  {
    *v1 = 1;
    return rawValue;
  }

  if (rawValue != 3)
  {
    goto LABEL_28;
  }

  *v1 = 2;
  return rawValue;
}

CoreHID::HIDUsage::SportControlsUsage_optional __swiftcall HIDUsage.SportControlsUsage.init(rawValue:)(Swift::UInt16 rawValue)
{
  v2 = 0;
  v3 = 16;
  switch(rawValue)
  {
    case 1u:
      goto LABEL_31;
    case 2u:
      v2 = 1;
      goto LABEL_31;
    case 3u:
      v2 = 2;
      goto LABEL_31;
    case 4u:
      v2 = 3;
      goto LABEL_31;
    case 0x30u:
      v2 = 4;
      goto LABEL_31;
    case 0x31u:
      v2 = 5;
      goto LABEL_31;
    case 0x32u:
      v2 = 6;
      goto LABEL_31;
    case 0x33u:
      v2 = 7;
      goto LABEL_31;
    case 0x34u:
      v2 = 8;
      goto LABEL_31;
    case 0x35u:
      v2 = 9;
      goto LABEL_31;
    case 0x36u:
      v2 = 10;
      goto LABEL_31;
    case 0x37u:
      v2 = 11;
      goto LABEL_31;
    case 0x38u:
      v2 = 12;
      goto LABEL_31;
    case 0x39u:
      v2 = 13;
      goto LABEL_31;
    case 0x50u:
      v2 = 14;
      goto LABEL_31;
    case 0x51u:
      v2 = 15;
LABEL_31:
      v3 = v2;
      goto LABEL_32;
    case 0x52u:
LABEL_32:
      *v1 = v3;
      break;
    case 0x53u:
      *v1 = 17;
      break;
    case 0x54u:
      *v1 = 18;
      break;
    case 0x55u:
      *v1 = 19;
      break;
    case 0x56u:
      *v1 = 20;
      break;
    case 0x57u:
      *v1 = 21;
      break;
    case 0x58u:
      *v1 = 22;
      break;
    case 0x59u:
      *v1 = 23;
      break;
    case 0x5Au:
      *v1 = 24;
      break;
    case 0x5Bu:
      *v1 = 25;
      break;
    case 0x5Cu:
      *v1 = 26;
      break;
    case 0x5Du:
      *v1 = 27;
      break;
    case 0x5Eu:
      *v1 = 28;
      break;
    case 0x5Fu:
      *v1 = 29;
      break;
    case 0x60u:
      *v1 = 30;
      break;
    case 0x61u:
      *v1 = 31;
      break;
    case 0x62u:
      *v1 = 32;
      break;
    case 0x63u:
      *v1 = 33;
      break;
    default:
      *v1 = 34;
      break;
  }

  return rawValue;
}

CoreHID::HIDUsage::GameControlsUsage_optional __swiftcall HIDUsage.GameControlsUsage.init(rawValue:)(Swift::UInt16 rawValue)
{
  v2 = 0;
  v3 = 11;
  switch(rawValue)
  {
    case 1u:
      goto LABEL_25;
    case 2u:
      v2 = 1;
      goto LABEL_25;
    case 3u:
      v2 = 2;
      goto LABEL_25;
    case 0x20u:
      v2 = 3;
      goto LABEL_25;
    case 0x21u:
      v2 = 4;
      goto LABEL_25;
    case 0x22u:
      v2 = 5;
      goto LABEL_25;
    case 0x23u:
      v2 = 6;
      goto LABEL_25;
    case 0x24u:
      v2 = 7;
      goto LABEL_25;
    case 0x25u:
      v2 = 8;
      goto LABEL_25;
    case 0x26u:
      v2 = 9;
      goto LABEL_25;
    case 0x27u:
      v2 = 10;
LABEL_25:
      v3 = v2;
      goto LABEL_26;
    case 0x28u:
LABEL_26:
      *v1 = v3;
      break;
    case 0x29u:
      *v1 = 12;
      break;
    case 0x2Au:
      *v1 = 13;
      break;
    case 0x2Bu:
      *v1 = 14;
      break;
    case 0x2Cu:
      *v1 = 15;
      break;
    case 0x2Du:
      *v1 = 16;
      break;
    case 0x2Eu:
      *v1 = 17;
      break;
    case 0x2Fu:
      *v1 = 18;
      break;
    case 0x30u:
      *v1 = 19;
      break;
    case 0x31u:
      *v1 = 20;
      break;
    case 0x32u:
      *v1 = 21;
      break;
    case 0x33u:
      *v1 = 22;
      break;
    case 0x34u:
      *v1 = 23;
      break;
    case 0x35u:
      *v1 = 24;
      break;
    case 0x36u:
      *v1 = 25;
      break;
    case 0x37u:
      *v1 = 26;
      break;
    case 0x39u:
      *v1 = 27;
      break;
    case 0x3Au:
      *v1 = 28;
      break;
    default:
      *v1 = 29;
      break;
  }

  return rawValue;
}

CoreHID::HIDUsage::GenericDeviceControlsUsage_optional __swiftcall HIDUsage.GenericDeviceControlsUsage.init(rawValue:)(Swift::UInt16 rawValue)
{
  v2 = 0;
  v3 = 6;
  switch(rawValue)
  {
    case 1u:
      goto LABEL_19;
    case 0x20u:
      v2 = 1;
      goto LABEL_19;
    case 0x21u:
      v2 = 2;
      goto LABEL_19;
    case 0x22u:
      v2 = 3;
      goto LABEL_19;
    case 0x23u:
      v2 = 4;
      goto LABEL_19;
    case 0x24u:
      v2 = 5;
LABEL_19:
      v3 = v2;
      goto LABEL_20;
    case 0x25u:
LABEL_20:
      *v1 = v3;
      break;
    case 0x26u:
      *v1 = 7;
      break;
    case 0x27u:
      *v1 = 8;
      break;
    case 0x28u:
      *v1 = 9;
      break;
    case 0x29u:
      *v1 = 10;
      break;
    case 0x2Au:
      *v1 = 11;
      break;
    case 0x2Bu:
      *v1 = 12;
      break;
    case 0x2Cu:
      *v1 = 13;
      break;
    case 0x2Du:
      *v1 = 14;
      break;
    case 0x2Eu:
      *v1 = 15;
      break;
    case 0x2Fu:
      *v1 = 16;
      break;
    case 0x30u:
      *v1 = 17;
      break;
    case 0x31u:
      *v1 = 18;
      break;
    case 0x32u:
      *v1 = 19;
      break;
    case 0x33u:
      *v1 = 20;
      break;
    case 0x34u:
      *v1 = 21;
      break;
    case 0x40u:
      *v1 = 22;
      break;
    case 0x41u:
      *v1 = 23;
      break;
    default:
      *v1 = 24;
      break;
  }

  return rawValue;
}

CoreHID::HIDUsage::KeyboardOrKeypadUsage_optional __swiftcall HIDUsage.KeyboardOrKeypadUsage.init(rawValue:)(Swift::UInt16 rawValue)
{
  v2 = rawValue - 1;
  if ((rawValue - 1) >= 0x80u)
  {
    v2 = 0x80;
    switch(rawValue)
    {
      case 0x81u:
        goto LABEL_2;
      case 0x82u:
        *v1 = -127;
        break;
      case 0x83u:
        *v1 = -126;
        break;
      case 0x84u:
        *v1 = -125;
        break;
      case 0x85u:
        *v1 = -124;
        break;
      case 0x86u:
        *v1 = -123;
        break;
      case 0x87u:
        *v1 = -122;
        break;
      case 0x88u:
        *v1 = -121;
        break;
      case 0x89u:
        *v1 = -120;
        break;
      case 0x8Au:
        *v1 = -119;
        break;
      case 0x8Bu:
        *v1 = -118;
        break;
      case 0x8Cu:
        *v1 = -117;
        break;
      case 0x8Du:
        *v1 = -116;
        break;
      case 0x8Eu:
        *v1 = -115;
        break;
      case 0x8Fu:
        *v1 = -114;
        break;
      case 0x90u:
        *v1 = -113;
        break;
      case 0x91u:
        *v1 = -112;
        break;
      case 0x92u:
        *v1 = -111;
        break;
      case 0x93u:
        *v1 = -110;
        break;
      case 0x94u:
        *v1 = -109;
        break;
      case 0x95u:
        *v1 = -108;
        break;
      case 0x96u:
        *v1 = -107;
        break;
      case 0x97u:
        *v1 = -106;
        break;
      case 0x98u:
        *v1 = -105;
        break;
      case 0x99u:
        *v1 = -104;
        break;
      case 0x9Au:
        *v1 = -103;
        break;
      case 0x9Bu:
        *v1 = -102;
        break;
      case 0x9Cu:
        *v1 = -101;
        break;
      case 0x9Du:
        *v1 = -100;
        break;
      case 0x9Eu:
        *v1 = -99;
        break;
      case 0x9Fu:
        *v1 = -98;
        break;
      case 0xA0u:
        *v1 = -97;
        break;
      case 0xA1u:
        *v1 = -96;
        break;
      case 0xA2u:
        *v1 = -95;
        break;
      case 0xA3u:
        *v1 = -94;
        break;
      case 0xA4u:
        *v1 = -93;
        break;
      case 0xB0u:
        *v1 = -92;
        break;
      case 0xB1u:
        *v1 = -91;
        break;
      case 0xB2u:
        *v1 = -90;
        break;
      case 0xB3u:
        *v1 = -89;
        break;
      case 0xB4u:
        *v1 = -88;
        break;
      case 0xB5u:
        *v1 = -87;
        break;
      case 0xB6u:
        *v1 = -86;
        break;
      case 0xB7u:
        *v1 = -85;
        break;
      case 0xB8u:
        *v1 = -84;
        break;
      case 0xB9u:
        *v1 = -83;
        break;
      case 0xBAu:
        *v1 = -82;
        break;
      case 0xBBu:
        *v1 = -81;
        break;
      case 0xBCu:
        *v1 = -80;
        break;
      case 0xBDu:
        *v1 = -79;
        break;
      case 0xBEu:
        *v1 = -78;
        break;
      case 0xBFu:
        *v1 = -77;
        break;
      case 0xC0u:
        *v1 = -76;
        break;
      case 0xC1u:
        *v1 = -75;
        break;
      case 0xC2u:
        *v1 = -74;
        break;
      case 0xC3u:
        *v1 = -73;
        break;
      case 0xC4u:
        *v1 = -72;
        break;
      case 0xC5u:
        *v1 = -71;
        break;
      case 0xC6u:
        *v1 = -70;
        break;
      case 0xC7u:
        *v1 = -69;
        break;
      case 0xC8u:
        *v1 = -68;
        break;
      case 0xC9u:
        *v1 = -67;
        break;
      case 0xCAu:
        *v1 = -66;
        break;
      case 0xCBu:
        *v1 = -65;
        break;
      default:
        v3 = -56;
        v2 = -64;
        switch(rawValue)
        {
          case 0xCCu:
            goto LABEL_2;
          case 0xCDu:
            *v1 = -63;
            return rawValue;
          case 0xCEu:
            *v1 = -62;
            return rawValue;
          case 0xCFu:
            *v1 = -61;
            return rawValue;
          case 0xD0u:
            *v1 = -60;
            return rawValue;
          case 0xD1u:
            *v1 = -59;
            return rawValue;
          case 0xD2u:
            *v1 = -58;
            return rawValue;
          case 0xD3u:
            *v1 = -57;
            return rawValue;
          case 0xD4u:
            goto LABEL_91;
          case 0xD5u:
            *v1 = -55;
            return rawValue;
          case 0xD6u:
            *v1 = -54;
            return rawValue;
          case 0xD7u:
            *v1 = -53;
            return rawValue;
          case 0xD8u:
            *v1 = -52;
            return rawValue;
          case 0xD9u:
            *v1 = -51;
            return rawValue;
          case 0xDAu:
            *v1 = -50;
            return rawValue;
          case 0xDBu:
            *v1 = -49;
            return rawValue;
          case 0xDCu:
            *v1 = -48;
            return rawValue;
          case 0xDDu:
            *v1 = -47;
            return rawValue;
          case 0xE0u:
            *v1 = -46;
            return rawValue;
          case 0xE1u:
            *v1 = -45;
            return rawValue;
          case 0xE2u:
            *v1 = -44;
            return rawValue;
          case 0xE3u:
            *v1 = -43;
            return rawValue;
          case 0xE4u:
            *v1 = -42;
            return rawValue;
          case 0xE5u:
            *v1 = -41;
            return rawValue;
          case 0xE6u:
            *v1 = -40;
            return rawValue;
          case 0xE7u:
            *v1 = -39;
            return rawValue;
          default:
            v3 = -38;
LABEL_91:
            *v1 = v3;
            break;
        }

        break;
    }
  }

  else
  {
LABEL_2:
    *v1 = v2;
  }

  return rawValue;
}

CoreHID::HIDUsage::LEDUsage_optional __swiftcall HIDUsage.LEDUsage.init(rawValue:)(Swift::UInt16 rawValue)
{
  v2 = 0;
  v3 = 78;
  switch(rawValue)
  {
    case 1u:
      goto LABEL_95;
    case 2u:
      v2 = 1;
      goto LABEL_95;
    case 3u:
      v2 = 2;
      goto LABEL_95;
    case 4u:
      v2 = 3;
      goto LABEL_95;
    case 5u:
      v2 = 4;
      goto LABEL_95;
    case 6u:
      v2 = 5;
      goto LABEL_95;
    case 7u:
      v2 = 6;
      goto LABEL_95;
    case 8u:
      v2 = 7;
      goto LABEL_95;
    case 9u:
      v2 = 8;
      goto LABEL_95;
    case 0xAu:
      v2 = 9;
      goto LABEL_95;
    case 0xBu:
      v2 = 10;
      goto LABEL_95;
    case 0xCu:
      v2 = 11;
      goto LABEL_95;
    case 0xDu:
      v2 = 12;
      goto LABEL_95;
    case 0xEu:
      v2 = 13;
      goto LABEL_95;
    case 0xFu:
      v2 = 14;
      goto LABEL_95;
    case 0x10u:
      v2 = 15;
      goto LABEL_95;
    case 0x11u:
      v2 = 16;
      goto LABEL_95;
    case 0x12u:
      v2 = 17;
      goto LABEL_95;
    case 0x13u:
      v2 = 18;
      goto LABEL_95;
    case 0x14u:
      v2 = 19;
      goto LABEL_95;
    case 0x15u:
      v2 = 20;
      goto LABEL_95;
    case 0x16u:
      v2 = 21;
      goto LABEL_95;
    case 0x17u:
      v2 = 22;
      goto LABEL_95;
    case 0x18u:
      v2 = 23;
      goto LABEL_95;
    case 0x19u:
      v2 = 24;
      goto LABEL_95;
    case 0x1Au:
      v2 = 25;
      goto LABEL_95;
    case 0x1Bu:
      v2 = 26;
      goto LABEL_95;
    case 0x1Cu:
      v2 = 27;
      goto LABEL_95;
    case 0x1Du:
      v2 = 28;
      goto LABEL_95;
    case 0x1Eu:
      v2 = 29;
      goto LABEL_95;
    case 0x1Fu:
      v2 = 30;
      goto LABEL_95;
    case 0x20u:
      v2 = 31;
      goto LABEL_95;
    case 0x21u:
      v2 = 32;
      goto LABEL_95;
    case 0x22u:
      v2 = 33;
      goto LABEL_95;
    case 0x23u:
      v2 = 34;
      goto LABEL_95;
    case 0x24u:
      v2 = 35;
      goto LABEL_95;
    case 0x25u:
      v2 = 36;
      goto LABEL_95;
    case 0x26u:
      v2 = 37;
      goto LABEL_95;
    case 0x27u:
      v2 = 38;
      goto LABEL_95;
    case 0x28u:
      v2 = 39;
      goto LABEL_95;
    case 0x29u:
      v2 = 40;
      goto LABEL_95;
    case 0x2Au:
      v2 = 41;
      goto LABEL_95;
    case 0x2Bu:
      v2 = 42;
      goto LABEL_95;
    case 0x2Cu:
      v2 = 43;
      goto LABEL_95;
    case 0x2Du:
      v2 = 44;
      goto LABEL_95;
    case 0x2Eu:
      v2 = 45;
      goto LABEL_95;
    case 0x2Fu:
      v2 = 46;
      goto LABEL_95;
    case 0x30u:
      v2 = 47;
      goto LABEL_95;
    case 0x31u:
      v2 = 48;
      goto LABEL_95;
    case 0x32u:
      v2 = 49;
      goto LABEL_95;
    case 0x33u:
      v2 = 50;
      goto LABEL_95;
    case 0x34u:
      v2 = 51;
      goto LABEL_95;
    case 0x35u:
      v2 = 52;
      goto LABEL_95;
    case 0x36u:
      v2 = 53;
      goto LABEL_95;
    case 0x37u:
      v2 = 54;
      goto LABEL_95;
    case 0x38u:
      v2 = 55;
      goto LABEL_95;
    case 0x39u:
      v2 = 56;
      goto LABEL_95;
    case 0x3Au:
      v2 = 57;
      goto LABEL_95;
    case 0x3Bu:
      v2 = 58;
      goto LABEL_95;
    case 0x3Cu:
      v2 = 59;
      goto LABEL_95;
    case 0x3Du:
      v2 = 60;
      goto LABEL_95;
    case 0x3Eu:
      v2 = 61;
      goto LABEL_95;
    case 0x3Fu:
      v2 = 62;
      goto LABEL_95;
    case 0x40u:
      v2 = 63;
      goto LABEL_95;
    case 0x41u:
      v2 = 64;
      goto LABEL_95;
    case 0x42u:
      v2 = 65;
      goto LABEL_95;
    case 0x43u:
      v2 = 66;
      goto LABEL_95;
    case 0x44u:
      v2 = 67;
      goto LABEL_95;
    case 0x45u:
      v2 = 68;
      goto LABEL_95;
    case 0x46u:
      v2 = 69;
      goto LABEL_95;
    case 0x47u:
      v2 = 70;
      goto LABEL_95;
    case 0x48u:
      v2 = 71;
      goto LABEL_95;
    case 0x49u:
      v2 = 72;
      goto LABEL_95;
    case 0x4Au:
      v2 = 73;
      goto LABEL_95;
    case 0x4Bu:
      v2 = 74;
      goto LABEL_95;
    case 0x4Cu:
      v2 = 75;
      goto LABEL_95;
    case 0x4Du:
      v2 = 76;
      goto LABEL_95;
    case 0x4Eu:
      v2 = 77;
LABEL_95:
      v3 = v2;
      goto LABEL_96;
    case 0x4Fu:
LABEL_96:
      *v1 = v3;
      break;
    case 0x50u:
      *v1 = 79;
      break;
    case 0x51u:
      *v1 = 80;
      break;
    case 0x52u:
      *v1 = 81;
      break;
    case 0x53u:
      *v1 = 82;
      break;
    case 0x54u:
      *v1 = 83;
      break;
    case 0x55u:
      *v1 = 84;
      break;
    case 0x56u:
      *v1 = 85;
      break;
    case 0x57u:
      *v1 = 86;
      break;
    case 0x60u:
      *v1 = 87;
      break;
    case 0x61u:
      *v1 = 88;
      break;
    case 0x62u:
      *v1 = 89;
      break;
    case 0x63u:
      *v1 = 90;
      break;
    case 0x64u:
      *v1 = 91;
      break;
    case 0x65u:
      *v1 = 92;
      break;
    case 0x66u:
      *v1 = 93;
      break;
    case 0x67u:
      *v1 = 94;
      break;
    case 0x68u:
      *v1 = 95;
      break;
    default:
      *v1 = 96;
      break;
  }

  return rawValue;
}

CoreHID::HIDUsage::TelephonyDeviceUsage_optional __swiftcall HIDUsage.TelephonyDeviceUsage.init(rawValue:)(Swift::UInt16 rawValue)
{
  v2 = 0;
  v3 = 81;
  switch(rawValue)
  {
    case 1u:
      goto LABEL_98;
    case 2u:
      v2 = 1;
      goto LABEL_98;
    case 3u:
      v2 = 2;
      goto LABEL_98;
    case 4u:
      v2 = 3;
      goto LABEL_98;
    case 5u:
      v2 = 4;
      goto LABEL_98;
    case 6u:
      v2 = 5;
      goto LABEL_98;
    case 7u:
      v2 = 6;
      goto LABEL_98;
    case 0x20u:
      v2 = 7;
      goto LABEL_98;
    case 0x21u:
      v2 = 8;
      goto LABEL_98;
    case 0x22u:
      v2 = 9;
      goto LABEL_98;
    case 0x23u:
      v2 = 10;
      goto LABEL_98;
    case 0x24u:
      v2 = 11;
      goto LABEL_98;
    case 0x25u:
      v2 = 12;
      goto LABEL_98;
    case 0x26u:
      v2 = 13;
      goto LABEL_98;
    case 0x27u:
      v2 = 14;
      goto LABEL_98;
    case 0x28u:
      v2 = 15;
      goto LABEL_98;
    case 0x29u:
      v2 = 16;
      goto LABEL_98;
    case 0x2Au:
      v2 = 17;
      goto LABEL_98;
    case 0x2Bu:
      v2 = 18;
      goto LABEL_98;
    case 0x2Cu:
      v2 = 19;
      goto LABEL_98;
    case 0x2Du:
      v2 = 20;
      goto LABEL_98;
    case 0x2Eu:
      v2 = 21;
      goto LABEL_98;
    case 0x2Fu:
      v2 = 22;
      goto LABEL_98;
    case 0x30u:
      v2 = 23;
      goto LABEL_98;
    case 0x31u:
      v2 = 24;
      goto LABEL_98;
    case 0x50u:
      v2 = 25;
      goto LABEL_98;
    case 0x51u:
      v2 = 26;
      goto LABEL_98;
    case 0x52u:
      v2 = 27;
      goto LABEL_98;
    case 0x53u:
      v2 = 28;
      goto LABEL_98;
    case 0x70u:
      v2 = 29;
      goto LABEL_98;
    case 0x71u:
      v2 = 30;
      goto LABEL_98;
    case 0x72u:
      v2 = 31;
      goto LABEL_98;
    case 0x73u:
      v2 = 32;
      goto LABEL_98;
    case 0x74u:
      v2 = 33;
      goto LABEL_98;
    case 0x90u:
      v2 = 34;
      goto LABEL_98;
    case 0x91u:
      v2 = 35;
      goto LABEL_98;
    case 0x92u:
      v2 = 36;
      goto LABEL_98;
    case 0x93u:
      v2 = 37;
      goto LABEL_98;
    case 0x94u:
      v2 = 38;
      goto LABEL_98;
    case 0x95u:
      v2 = 39;
      goto LABEL_98;
    case 0x96u:
      v2 = 40;
      goto LABEL_98;
    case 0x97u:
      v2 = 41;
      goto LABEL_98;
    case 0x98u:
      v2 = 42;
      goto LABEL_98;
    case 0x99u:
      v2 = 43;
      goto LABEL_98;
    case 0x9Au:
      v2 = 44;
      goto LABEL_98;
    case 0x9Bu:
      v2 = 45;
      goto LABEL_98;
    case 0x9Cu:
      v2 = 46;
      goto LABEL_98;
    case 0x9Du:
      v2 = 47;
      goto LABEL_98;
    case 0x9Eu:
      v2 = 48;
      goto LABEL_98;
    case 0xB0u:
      v2 = 49;
      goto LABEL_98;
    case 0xB1u:
      v2 = 50;
      goto LABEL_98;
    case 0xB2u:
      v2 = 51;
      goto LABEL_98;
    case 0xB3u:
      v2 = 52;
      goto LABEL_98;
    case 0xB4u:
      v2 = 53;
      goto LABEL_98;
    case 0xB5u:
      v2 = 54;
      goto LABEL_98;
    case 0xB6u:
      v2 = 55;
      goto LABEL_98;
    case 0xB7u:
      v2 = 56;
      goto LABEL_98;
    case 0xB8u:
      v2 = 57;
      goto LABEL_98;
    case 0xB9u:
      v2 = 58;
      goto LABEL_98;
    case 0xBAu:
      v2 = 59;
      goto LABEL_98;
    case 0xBBu:
      v2 = 60;
      goto LABEL_98;
    case 0xBCu:
      v2 = 61;
      goto LABEL_98;
    case 0xBDu:
      v2 = 62;
      goto LABEL_98;
    case 0xBEu:
      v2 = 63;
      goto LABEL_98;
    case 0xBFu:
      v2 = 64;
      goto LABEL_98;
    case 0xC0u:
      v2 = 65;
      goto LABEL_98;
    case 0xC1u:
      v2 = 66;
      goto LABEL_98;
    case 0xC2u:
      v2 = 67;
      goto LABEL_98;
    case 0xF0u:
      v2 = 68;
      goto LABEL_98;
    case 0xF1u:
      v2 = 69;
      goto LABEL_98;
    case 0xF2u:
      v2 = 70;
      goto LABEL_98;
    case 0xF3u:
      v2 = 71;
      goto LABEL_98;
    case 0xF4u:
      v2 = 72;
      goto LABEL_98;
    case 0xF5u:
      v2 = 73;
      goto LABEL_98;
    case 0xF8u:
      v2 = 74;
      goto LABEL_98;
    case 0xF9u:
      v2 = 75;
      goto LABEL_98;
    case 0xFAu:
      v2 = 76;
      goto LABEL_98;
    case 0xFBu:
      v2 = 77;
      goto LABEL_98;
    case 0xFCu:
      v2 = 78;
      goto LABEL_98;
    case 0xFDu:
      v2 = 79;
      goto LABEL_98;
    case 0xFEu:
      v2 = 80;
LABEL_98:
      v3 = v2;
      goto LABEL_99;
    case 0x108u:
LABEL_99:
      *v1 = v3;
      break;
    case 0x109u:
      *v1 = 82;
      break;
    case 0x10Au:
      *v1 = 83;
      break;
    case 0x110u:
      *v1 = 84;
      break;
    case 0x111u:
      *v1 = 85;
      break;
    case 0x112u:
      *v1 = 86;
      break;
    case 0x113u:
      *v1 = 87;
      break;
    case 0x114u:
      *v1 = 88;
      break;
    case 0x140u:
      *v1 = 89;
      break;
    case 0x141u:
      *v1 = 90;
      break;
    case 0x142u:
      *v1 = 91;
      break;
    case 0x143u:
      *v1 = 92;
      break;
    case 0x144u:
      *v1 = 93;
      break;
    case 0x145u:
      *v1 = 94;
      break;
    case 0x146u:
      *v1 = 95;
      break;
    case 0x147u:
      *v1 = 96;
      break;
    case 0x14Au:
      *v1 = 97;
      break;
    case 0x14Bu:
      *v1 = 98;
      break;
    default:
      *v1 = 99;
      break;
  }

  return rawValue;
}

CoreHID::HIDUsage::ConsumerUsage_optional __swiftcall HIDUsage.ConsumerUsage.init(rawValue:)(CoreHID::HIDUsage::ConsumerUsage_optional rawValue)
{
  v2 = 0;
  switch(rawValue.value)
  {
    case CoreHID_HIDUsage_ConsumerUsage_numericKeyPad:
LABEL_2:
      *v1 = v2;
      break;
    case CoreHID_HIDUsage_ConsumerUsage_programmableButtons:
      *v1 = 1;
      break;
    case CoreHID_HIDUsage_ConsumerUsage_microphone:
      *v1 = 2;
      break;
    case CoreHID_HIDUsage_ConsumerUsage_headphone:
      *v1 = 3;
      break;
    case CoreHID_HIDUsage_ConsumerUsage_graphicEqualizer:
      *v1 = 4;
      break;
    case CoreHID_HIDUsage_ConsumerUsage_plus10:
      *v1 = 5;
      break;
    case CoreHID_HIDUsage_ConsumerUsage_pictureInPictureToggle:
      *v1 = 6;
      break;
    case CoreHID_HIDUsage_ConsumerUsage_pictureInPictureSwap:
      *v1 = 7;
      break;
    case CoreHID_HIDUsage_ConsumerUsage_redMenuButton:
      *v1 = 8;
      break;
    case CoreHID_HIDUsage_ConsumerUsage_cameraAccessDisabled:
      *v1 = 9;
      break;
    case CoreHID_HIDUsage_ConsumerUsage_cameraAccessToggle:
      *v1 = 10;
      break;
    case CoreHID_HIDUsage_ConsumerUsage_keyboardBrightnessIncrement:
      *v1 = 11;
      break;
    case CoreHID_HIDUsage_ConsumerUsage_keyboardBrightnessDecrement:
      *v1 = 12;
      break;
    case CoreHID_HIDUsage_ConsumerUsage_keyboardBacklightSetLevel:
      *v1 = 13;
      break;
    case CoreHID_HIDUsage_ConsumerUsage_keyboardBacklightOOC:
      *v1 = 14;
      break;
    case CoreHID_HIDUsage_ConsumerUsage_keyboardBacklightSetMinimum:
      *v1 = 15;
      break;
    case CoreHID_HIDUsage_ConsumerUsage_mediaSelection:
      *v1 = 16;
      break;
    case CoreHID_HIDUsage_ConsumerUsage_mediaSelectComputer:
      *v1 = 17;
      break;
    case CoreHID_HIDUsage_ConsumerUsage_mediaSelectTV:
      *v1 = 18;
      break;
    case CoreHID_HIDUsage_ConsumerUsage_mediaSelectWWW:
      *v1 = 19;
      break;
    case CoreHID_HIDUsage_ConsumerUsage_mediaSelectDVD:
      *v1 = 20;
      break;
    case CoreHID_HIDUsage_ConsumerUsage_mediaSelectTelephone:
      *v1 = 21;
      break;
    case CoreHID_HIDUsage_ConsumerUsage_mediaSelectProgramGuide:
      *v1 = 22;
      break;
    case CoreHID_HIDUsage_ConsumerUsage_mediaSelectVideoPhone:
      *v1 = 23;
      break;
    case CoreHID_HIDUsage_ConsumerUsage_mediaSelectGames:
      *v1 = 24;
      break;
    case CoreHID_HIDUsage_ConsumerUsage_fastForward:
      *v1 = 25;
      break;
    case CoreHID_HIDUsage_ConsumerUsage_rewind:
      *v1 = 26;
      break;
    case CoreHID_HIDUsage_ConsumerUsage_scanNextTrack:
      *v1 = 27;
      break;
    case CoreHID_HIDUsage_ConsumerUsage_scanPreviousTrack:
      *v1 = 28;
      break;
    case CoreHID_HIDUsage_ConsumerUsage_stop:
      *v1 = 29;
      break;
    case CoreHID_HIDUsage_ConsumerUsage_eject:
      *v1 = 30;
      break;
    case CoreHID_HIDUsage_ConsumerUsage_randomPlay:
      *v1 = 31;
      break;
    case CoreHID_HIDUsage_ConsumerUsage_selectDisc:
      *v1 = 32;
      break;
    case CoreHID_HIDUsage_ConsumerUsage_enterDisc:
      *v1 = 33;
      break;
    case CoreHID_HIDUsage_ConsumerUsage_repeatTrack:
      *v1 = 34;
      break;
    case CoreHID_HIDUsage_ConsumerUsage_tracking:
      *v1 = 35;
      break;
    case CoreHID_HIDUsage_ConsumerUsage_trackNormal:
      *v1 = 36;
      break;
    case CoreHID_HIDUsage_ConsumerUsage_slowTracking:
      *v1 = 37;
      break;
    case CoreHID_HIDUsage_ConsumerUsage_frameForward:
      *v1 = 38;
      break;
    case CoreHID_HIDUsage_ConsumerUsage_frameBack:
      *v1 = 39;
      break;
    case CoreHID_HIDUsage_ConsumerUsage_mark:
      *v1 = 40;
      break;
    case CoreHID_HIDUsage_ConsumerUsage_clearMark:
      *v1 = 41;
      break;
    case CoreHID_HIDUsage_ConsumerUsage_repeatFromMark:
      *v1 = 42;
      break;
    case CoreHID_HIDUsage_ConsumerUsage_returnToMark:
      *v1 = 43;
      break;
    case CoreHID_HIDUsage_ConsumerUsage_searchMarkForward:
      *v1 = 44;
      break;
    case CoreHID_HIDUsage_ConsumerUsage_searchMarkBackwards:
      *v1 = 45;
      break;
    case CoreHID_HIDUsage_ConsumerUsage_counterReset:
      *v1 = 46;
      break;
    case CoreHID_HIDUsage_ConsumerUsage_showCounter:
      *v1 = 47;
      break;
    case CoreHID_HIDUsage_ConsumerUsage_trackingIncrement:
      *v1 = 48;
      break;
    case CoreHID_HIDUsage_ConsumerUsage_trackingDecrement:
      *v1 = 49;
      break;
    case CoreHID_HIDUsage_ConsumerUsage_stopOrEject:
      *v1 = 50;
      break;
    case CoreHID_HIDUsage_ConsumerUsage_playOrPause:
      *v1 = 51;
      break;
    case CoreHID_HIDUsage_ConsumerUsage_playOrSkip:
      *v1 = 52;
      break;
    case CoreHID_HIDUsage_ConsumerUsage_voiceCommand:
      *v1 = 53;
      break;
    case CoreHID_HIDUsage_ConsumerUsage_invokeCaptureInterface:
      *v1 = 54;
      break;
    case CoreHID_HIDUsage_ConsumerUsage_startOrStopGameRecording:
      *v1 = 55;
      break;
    case CoreHID_HIDUsage_ConsumerUsage_historicalGameCapture:
      *v1 = 56;
      break;
    case CoreHID_HIDUsage_ConsumerUsage_captureGameScreenshot:
      *v1 = 57;
      break;
    case CoreHID_HIDUsage_ConsumerUsage_showOrHideRecordingIndicator:
      *v1 = 58;
      break;
    case CoreHID_HIDUsage_ConsumerUsage_startOrStopMicrophoneCapture:
      *v1 = 59;
      break;
    case CoreHID_HIDUsage_ConsumerUsage_startOrStopCameraCapture:
      *v1 = 60;
      break;
    case CoreHID_HIDUsage_ConsumerUsage_startOrStopGameBroadcast:
      *v1 = 61;
      break;
    case CoreHID_HIDUsage_ConsumerUsage_startOrStopVoiceDictationSession:
      *v1 = 62;
      break;
    case CoreHID_HIDUsage_ConsumerUsage_invokeOrDismissEmojiPicker:
      *v1 = 63;
      break;
    case CoreHID_HIDUsage_ConsumerUsage_volume:
      *v1 = 64;
      break;
    case CoreHID_HIDUsage_ConsumerUsage_balance:
      *v1 = 65;
      break;
    case CoreHID_HIDUsage_ConsumerUsage_mute:
      *v1 = 66;
      break;
    case CoreHID_HIDUsage_ConsumerUsage_bass:
      *v1 = 67;
      break;
    case CoreHID_HIDUsage_ConsumerUsage_treble:
      *v1 = 68;
      break;
    case CoreHID_HIDUsage_ConsumerUsage_bassBoost:
      *v1 = 69;
      break;
    case CoreHID_HIDUsage_ConsumerUsage_surroundMode:
      *v1 = 70;
      break;
    case CoreHID_HIDUsage_ConsumerUsage_loudness:
      *v1 = 71;
      break;
    case CoreHID_HIDUsage_ConsumerUsage_mpx:
      *v1 = 72;
      break;
    case CoreHID_HIDUsage_ConsumerUsage_volumeIncrement:
      *v1 = 73;
      break;
    case CoreHID_HIDUsage_ConsumerUsage_volumeDecrement:
      *v1 = 74;
      break;
    case CoreHID_HIDUsage_ConsumerUsage_speedSelect:
      *v1 = 75;
      break;
    case CoreHID_HIDUsage_ConsumerUsage_playbackSpeed:
      *v1 = 76;
      break;
    case CoreHID_HIDUsage_ConsumerUsage_standardPlay:
      *v1 = 77;
      break;
    case CoreHID_HIDUsage_ConsumerUsage_longPlay:
      *v1 = 78;
      break;
    case CoreHID_HIDUsage_ConsumerUsage_extendedPlay:
      *v1 = 79;
      break;
    case CoreHID_HIDUsage_ConsumerUsage_slow:
      *v1 = 80;
      break;
    case CoreHID_HIDUsage_ConsumerUsage_fanEnable:
      *v1 = 81;
      break;
    case CoreHID_HIDUsage_ConsumerUsage_fanSpeed:
      *v1 = 82;
      break;
    case CoreHID_HIDUsage_ConsumerUsage_lightEnable:
      *v1 = 83;
      break;
    case CoreHID_HIDUsage_ConsumerUsage_lightIlluminationLevel:
      *v1 = 84;
      break;
    case CoreHID_HIDUsage_ConsumerUsage_climateControlEnable:
      *v1 = 85;
      break;
    case CoreHID_HIDUsage_ConsumerUsage_roomTemperature:
      *v1 = 86;
      break;
    case CoreHID_HIDUsage_ConsumerUsage_securityEnable:
      *v1 = 87;
      break;
    case CoreHID_HIDUsage_ConsumerUsage_policeAlarm:
      *v1 = 88;
      break;
    case CoreHID_HIDUsage_ConsumerUsage_proximity:
      *v1 = 89;
      break;
    case CoreHID_HIDUsage_ConsumerUsage_motion:
      *v1 = 90;
      break;
    case CoreHID_HIDUsage_ConsumerUsage_duressAlarm:
      *v1 = 91;
      break;
    case CoreHID_HIDUsage_ConsumerUsage_holdupAlarm:
      *v1 = 92;
      break;
    case CoreHID_HIDUsage_ConsumerUsage_channelFront:
      *v1 = 93;
      break;
    case CoreHID_HIDUsage_ConsumerUsage_channelCenterFront:
      *v1 = 94;
      break;
    case CoreHID_HIDUsage_ConsumerUsage_channelSide:
      *v1 = 95;
      break;
    case CoreHID_HIDUsage_ConsumerUsage_channelSurround:
      *v1 = 96;
      break;
    case CoreHID_HIDUsage_ConsumerUsage_channelLowFrequencyEnhancement:
      *v1 = 97;
      break;
    case CoreHID_HIDUsage_ConsumerUsage_channelTop:
      *v1 = 98;
      break;
    case CoreHID_HIDUsage_ConsumerUsage_channelUnknown:
      *v1 = 99;
      break;
    case CoreHID_HIDUsage_ConsumerUsage_subChannel:
      *v1 = 100;
      break;
    case CoreHID_HIDUsage_ConsumerUsage_subChannelIncrement:
      *v1 = 101;
      break;
    case CoreHID_HIDUsage_ConsumerUsage_subChannelDecrement:
      *v1 = 102;
      break;
    case CoreHID_HIDUsage_ConsumerUsage_alternateAudioIncrement:
      *v1 = 103;
      break;
    case CoreHID_HIDUsage_ConsumerUsage_alternateAudioDecrement:
      *v1 = 104;
      break;
    case CoreHID_HIDUsage_ConsumerUsage_applicationLaunchButtons:
      *v1 = 105;
      break;
    case CoreHID_HIDUsage_ConsumerUsage_alLaunchButtonConfigurationTool:
      *v1 = 106;
      break;
    case CoreHID_HIDUsage_ConsumerUsage_alProgrammableButtonConfiguration:
      *v1 = 107;
      break;
    case CoreHID_HIDUsage_ConsumerUsage_alConsumerControlConfiguration:
      *v1 = 108;
      break;
    case CoreHID_HIDUsage_ConsumerUsage_alWordProcessor:
      *v1 = 109;
      break;
    case CoreHID_HIDUsage_ConsumerUsage_alTextEditor:
      *v1 = 110;
      break;
    case CoreHID_HIDUsage_ConsumerUsage_alSpreadsheet:
      *v1 = 111;
      break;
    case CoreHID_HIDUsage_ConsumerUsage_alGraphicsEditor:
      *v1 = 112;
      break;
    case CoreHID_HIDUsage_ConsumerUsage_alPresentationApp:
      *v1 = 113;
      break;
    case CoreHID_HIDUsage_ConsumerUsage_alDatabaseApp:
      *v1 = 114;
      break;
    case CoreHID_HIDUsage_ConsumerUsage_alEmailReader:
      *v1 = 115;
      break;
    case CoreHID_HIDUsage_ConsumerUsage_alNewsreader:
      *v1 = 116;
      break;
    case CoreHID_HIDUsage_ConsumerUsage_alVoicemail:
      *v1 = 117;
      break;
    case CoreHID_HIDUsage_ConsumerUsage_alContactsOrAddressBook:
      *v1 = 118;
      break;
    case CoreHID_HIDUsage_ConsumerUsage_alCalendarOrSchedule:
      *v1 = 119;
      break;
    case CoreHID_HIDUsage_ConsumerUsage_alTaskOrProjectManager:
      *v1 = 120;
      break;
    case CoreHID_HIDUsage_ConsumerUsage_alLogOrJournalOrTimecard:
      *v1 = 121;
      break;
    case CoreHID_HIDUsage_ConsumerUsage_alCheckbookOrFinance:
      *v1 = 122;
      break;
    case CoreHID_HIDUsage_ConsumerUsage_alCalculator:
      *v1 = 123;
      break;
    case CoreHID_HIDUsage_ConsumerUsage_alAVCaptureOrPlayback:
      *v1 = 124;
      break;
    case CoreHID_HIDUsage_ConsumerUsage_alLocalMachineBrowser:
      *v1 = 125;
      break;
    case CoreHID_HIDUsage_ConsumerUsage_alLANOrWANBrowser:
      *v1 = 126;
      break;
    case CoreHID_HIDUsage_ConsumerUsage_alInternetBrowser:
      *v1 = 127;
      break;
    default:
      v2 = 128;
      switch(rawValue.value)
      {
        case CoreHID_HIDUsage_ConsumerUsage_alRemoteNetworkingOrISPConnect:
          goto LABEL_2;
        case CoreHID_HIDUsage_ConsumerUsage_alNetworkConference:
          *v1 = 129;
          break;
        case CoreHID_HIDUsage_ConsumerUsage_alNetworkChat:
          *v1 = 130;
          break;
        case CoreHID_HIDUsage_ConsumerUsage_alTelephonyOrDialer:
          *v1 = 131;
          break;
        case CoreHID_HIDUsage_ConsumerUsage_alLogon:
          *v1 = 132;
          break;
        case CoreHID_HIDUsage_ConsumerUsage_alLogoff:
          *v1 = 133;
          break;
        case CoreHID_HIDUsage_ConsumerUsage_alLogonOrLogoff:
          *v1 = 134;
          break;
        case CoreHID_HIDUsage_ConsumerUsage_alPreviousTaskOrApplication:
          *v1 = 135;
          break;
        case CoreHID_HIDUsage_ConsumerUsage_alPreemptiveHaltTaskOrApplication:
          *v1 = 136;
          break;
        case CoreHID_HIDUsage_ConsumerUsage_alIntegratedHelpCenter:
          *v1 = 137;
          break;
        case CoreHID_HIDUsage_ConsumerUsage_alDocuments:
          *v1 = 138;
          break;
        case CoreHID_HIDUsage_ConsumerUsage_alThesaurus:
          *v1 = 139;
          break;
        case CoreHID_HIDUsage_ConsumerUsage_alDictionary:
          *v1 = 140;
          break;
        case CoreHID_HIDUsage_ConsumerUsage_alDesktop:
          *v1 = 141;
          break;
        case CoreHID_HIDUsage_ConsumerUsage_alSpellCheck:
          *v1 = 142;
          break;
        case CoreHID_HIDUsage_ConsumerUsage_alGrammarCheck:
          *v1 = 143;
          break;
        case CoreHID_HIDUsage_ConsumerUsage_alWirelessStatus:
          *v1 = 144;
          break;
        case CoreHID_HIDUsage_ConsumerUsage_alKeyboardLayout:
          *v1 = 145;
          break;
        case CoreHID_HIDUsage_ConsumerUsage_alFileBrowser:
          *v1 = 146;
          break;
        case CoreHID_HIDUsage_ConsumerUsage_alPowerStatus:
          *v1 = 147;
          break;
        case CoreHID_HIDUsage_ConsumerUsage_alImageBrowser:
          *v1 = 148;
          break;
        case CoreHID_HIDUsage_ConsumerUsage_alAudioBrowser:
          *v1 = 149;
          break;
        case CoreHID_HIDUsage_ConsumerUsage_alMovieBrowser:
          *v1 = 150;
          break;
        case CoreHID_HIDUsage_ConsumerUsage_alDigitalRightsManager:
          *v1 = 151;
          break;
        case CoreHID_HIDUsage_ConsumerUsage_alOnlineActivityBrowser:
          *v1 = 152;
          break;
        case CoreHID_HIDUsage_ConsumerUsage_alResearchOrSearchBrowser:
          *v1 = 153;
          break;
        case CoreHID_HIDUsage_ConsumerUsage_alAudioPlayer:
          *v1 = 154;
          break;
        case CoreHID_HIDUsage_ConsumerUsage_alMessageStatus:
          *v1 = 155;
          break;
        case CoreHID_HIDUsage_ConsumerUsage_alContactSync:
          *v1 = 156;
          break;
        case CoreHID_HIDUsage_ConsumerUsage_alNavigation:
          *v1 = 157;
          break;
        case CoreHID_HIDUsage_ConsumerUsage_alContextAwareDesktopAssistant:
          *v1 = 158;
          break;
        case CoreHID_HIDUsage_ConsumerUsage_genericGUIApplicationControls:
          *v1 = 159;
          break;
        case CoreHID_HIDUsage_ConsumerUsage_acNew:
          *v1 = 160;
          break;
        case CoreHID_HIDUsage_ConsumerUsage_acOpen:
          *v1 = 161;
          break;
        case CoreHID_HIDUsage_ConsumerUsage_acClose:
          *v1 = 162;
          break;
        case CoreHID_HIDUsage_ConsumerUsage_acExit:
          *v1 = 163;
          break;
        case CoreHID_HIDUsage_ConsumerUsage_acMaximize:
          *v1 = 164;
          break;
        case CoreHID_HIDUsage_ConsumerUsage_acMinimize:
          *v1 = 165;
          break;
        case CoreHID_HIDUsage_ConsumerUsage_acRestartNumbering:
          *v1 = 166;
          break;
        case CoreHID_HIDUsage_ConsumerUsage_acBulletedList:
          *v1 = 167;
          break;
        case CoreHID_HIDUsage_ConsumerUsage_acPromote:
          *v1 = 168;
          break;
        case CoreHID_HIDUsage_ConsumerUsage_acDemote:
          *v1 = 169;
          break;
        case CoreHID_HIDUsage_ConsumerUsage_acYes:
          *v1 = 170;
          break;
        case CoreHID_HIDUsage_ConsumerUsage_acNo:
          *v1 = 171;
          break;
        case CoreHID_HIDUsage_ConsumerUsage_acInsertMode:
          *v1 = 172;
          break;
        case CoreHID_HIDUsage_ConsumerUsage_acDelete:
          *v1 = 173;
          break;
        case CoreHID_HIDUsage_ConsumerUsage_acLock:
          *v1 = 174;
          break;
        case CoreHID_HIDUsage_ConsumerUsage_acUnlock:
          *v1 = 175;
          break;
        case CoreHID_HIDUsage_ConsumerUsage_acProtect:
          *v1 = 176;
          break;
        case CoreHID_HIDUsage_ConsumerUsage_acUnprotect:
          *v1 = 177;
          break;
        case CoreHID_HIDUsage_ConsumerUsage_acAttachComment:
          *v1 = 178;
          break;
        case CoreHID_HIDUsage_ConsumerUsage_acDeleteComment:
          *v1 = 179;
          break;
        case CoreHID_HIDUsage_ConsumerUsage_acViewComment:
          *v1 = 180;
          break;
        case CoreHID_HIDUsage_ConsumerUsage_acSelectWord:
          *v1 = 181;
          break;
        case CoreHID_HIDUsage_ConsumerUsage_acSelectSentence:
          *v1 = 182;
          break;
        case CoreHID_HIDUsage_ConsumerUsage_acRedoOrRepeat:
          *v1 = 183;
          break;
        case CoreHID_HIDUsage_ConsumerUsage_acSort:
          *v1 = 184;
          break;
        case CoreHID_HIDUsage_ConsumerUsage_acSortAscending:
          *v1 = 185;
          break;
        case CoreHID_HIDUsage_ConsumerUsage_acSortDescending:
          *v1 = 186;
          break;
        case CoreHID_HIDUsage_ConsumerUsage_acFilter:
          *v1 = 187;
          break;
        case CoreHID_HIDUsage_ConsumerUsage_acReply:
          *v1 = 188;
          break;
        case CoreHID_HIDUsage_ConsumerUsage_acReplyAll:
          *v1 = 189;
          break;
        case CoreHID_HIDUsage_ConsumerUsage_acForwardMsg:
          *v1 = 190;
          break;
        case CoreHID_HIDUsage_ConsumerUsage_acSend:
          *v1 = 191;
          break;
        default:
          v2 = 192;
          switch(rawValue.value)
          {
            case CoreHID_HIDUsage_ConsumerUsage_acAttachFile:
              goto LABEL_2;
            case CoreHID_HIDUsage_ConsumerUsage_acUpload:
              *v1 = 193;
              break;
            case CoreHID_HIDUsage_ConsumerUsage_acDownloadSaveTargetAs:
              *v1 = 194;
              break;
            case CoreHID_HIDUsage_ConsumerUsage_acSetBorders:
              *v1 = 195;
              break;
            case CoreHID_HIDUsage_ConsumerUsage_acInsertRow:
              *v1 = 196;
              break;
            case CoreHID_HIDUsage_ConsumerUsage_acInsertColumn:
              *v1 = 197;
              break;
            case CoreHID_HIDUsage_ConsumerUsage_acInsertFile:
              *v1 = 198;
              break;
            case CoreHID_HIDUsage_ConsumerUsage_acInsertPicture:
              *v1 = 199;
              break;
            case CoreHID_HIDUsage_ConsumerUsage_acInsertObject:
              *v1 = 200;
              break;
            case CoreHID_HIDUsage_ConsumerUsage_acInsertSymbol:
              *v1 = 201;
              break;
            case CoreHID_HIDUsage_ConsumerUsage_acSaveAndClose:
              *v1 = 202;
              break;
            case CoreHID_HIDUsage_ConsumerUsage_acRename:
              *v1 = 203;
              break;
            case CoreHID_HIDUsage_ConsumerUsage_acMerge:
              *v1 = 204;
              break;
            case CoreHID_HIDUsage_ConsumerUsage_acSplit:
              *v1 = 205;
              break;
            case CoreHID_HIDUsage_ConsumerUsage_acDisributeHorizontally:
              *v1 = 206;
              break;
            case CoreHID_HIDUsage_ConsumerUsage_acDistributeVertically:
              *v1 = 207;
              break;
            case CoreHID_HIDUsage_ConsumerUsage_acNextKeyboardLayoutSelect:
              *v1 = 208;
              break;
            case CoreHID_HIDUsage_ConsumerUsage_acNavigationGuidance:
              *v1 = 209;
              break;
            case CoreHID_HIDUsage_ConsumerUsage_acDesktopShowAllWindows:
              *v1 = 210;
              break;
            case CoreHID_HIDUsage_ConsumerUsage_acSoftKeyLeft:
              *v1 = 211;
              break;
            case CoreHID_HIDUsage_ConsumerUsage_acSoftKeyRight:
              *v1 = 212;
              break;
            case CoreHID_HIDUsage_ConsumerUsage_acDesktopShowAllApplications:
              *v1 = 213;
              break;
            case CoreHID_HIDUsage_ConsumerUsage_acIdleKeepAlive:
              *v1 = 214;
              break;
            case CoreHID_HIDUsage_ConsumerUsage_extendedKeyboardAttributesCollection:
              *v1 = 215;
              break;
            case CoreHID_HIDUsage_ConsumerUsage_keyboardFormFactor:
              *v1 = 216;
              break;
            case CoreHID_HIDUsage_ConsumerUsage_keyboardKeyType:
              *v1 = 217;
              break;
            case CoreHID_HIDUsage_ConsumerUsage_keyboardPhysicalLayout:
              *v1 = 218;
              break;
            case CoreHID_HIDUsage_ConsumerUsage_vendorSpecificKeyboardPhysicalLayout:
              *v1 = 219;
              break;
            case CoreHID_HIDUsage_ConsumerUsage_keyboardIETFLanguageTagIndex:
              *v1 = 220;
              break;
            case CoreHID_HIDUsage_ConsumerUsage_implementedKeyboardInputAssistControls:
              *v1 = 221;
              break;
            case CoreHID_HIDUsage_ConsumerUsage_keyboardInputAssistPrevious:
              *v1 = 222;
              break;
            case CoreHID_HIDUsage_ConsumerUsage_keyboardInputAssistNext:
              *v1 = 223;
              break;
            case CoreHID_HIDUsage_ConsumerUsage_keyboardInputAssistPreviousGroup:
              *v1 = 224;
              break;
            case CoreHID_HIDUsage_ConsumerUsage_keyboardInputAssistNextGroup:
              *v1 = 225;
              break;
            case CoreHID_HIDUsage_ConsumerUsage_keyboardInputAssistAccept:
              *v1 = 226;
              break;
            case CoreHID_HIDUsage_ConsumerUsage_keyboardInputAssistCancel:
              *v1 = 227;
              break;
            case CoreHID_HIDUsage_ConsumerUsage_privacyScreenToggle:
              *v1 = 228;
              break;
            case CoreHID_HIDUsage_ConsumerUsage_privacyScreenLevelDecrement:
              *v1 = 229;
              break;
            case CoreHID_HIDUsage_ConsumerUsage_privacyScreenLevelIncrement:
              *v1 = 230;
              break;
            case CoreHID_HIDUsage_ConsumerUsage_privacyScreenLevelMinimum:
              *v1 = 231;
              break;
            case CoreHID_HIDUsage_ConsumerUsage_privacyScreenLevelMaximum:
              *v1 = 232;
              break;
            case CoreHID_HIDUsage_ConsumerUsage_contactEdited:
              *v1 = 233;
              break;
            case CoreHID_HIDUsage_ConsumerUsage_contactAdded:
              *v1 = 234;
              break;
            case CoreHID_HIDUsage_ConsumerUsage_contactRecordActive:
              *v1 = 235;
              break;
            case CoreHID_HIDUsage_ConsumerUsage_contactIndex:
              *v1 = 236;
              break;
            case CoreHID_HIDUsage_ConsumerUsage_contactNickname:
              *v1 = 237;
              break;
            case CoreHID_HIDUsage_ConsumerUsage_contactFirstName:
              *v1 = 238;
              break;
            case CoreHID_HIDUsage_ConsumerUsage_contactLastName:
              *v1 = 239;
              break;
            case CoreHID_HIDUsage_ConsumerUsage_contactFullName:
              *v1 = 240;
              break;
            case CoreHID_HIDUsage_ConsumerUsage_contactPhoneNumberPersonal:
              *v1 = 241;
              break;
            case CoreHID_HIDUsage_ConsumerUsage_contactPhoneNumberBusiness:
              *v1 = 242;
              break;
            case CoreHID_HIDUsage_ConsumerUsage_contactPhoneNumberMobile:
              *v1 = 243;
              break;
            case CoreHID_HIDUsage_ConsumerUsage_contactPhoneNumberPager:
              *v1 = 244;
              break;
            case CoreHID_HIDUsage_ConsumerUsage_contactPhoneNumberFax:
              *v1 = 245;
              break;
            case CoreHID_HIDUsage_ConsumerUsage_contactPhoneNumberOther:
              *v1 = 246;
              break;
            case CoreHID_HIDUsage_ConsumerUsage_contactEmailBusiness:
              *v1 = 247;
              break;
            case CoreHID_HIDUsage_ConsumerUsage_contactEmailOther:
              *v1 = 248;
              break;
            case CoreHID_HIDUsage_ConsumerUsage_contactEmailMain:
              *v1 = 249;
              break;
            case CoreHID_HIDUsage_ConsumerUsage_contactSpeedDialNumber:
              *v1 = 250;
              break;
            case CoreHID_HIDUsage_ConsumerUsage_contactStatusFlag:
              *v1 = 251;
              break;
            case CoreHID_HIDUsage_ConsumerUsage_contactMiscellaneous:
              *v1 = 252;
              break;
            case CoreHID_HIDUsage_ConsumerUsage_unknownDefault:
              *v1 = 253;
              break;
            case CoreHID_HIDUsage_ConsumerUsage_unknownDefault|CoreHID_HIDUsage_ConsumerUsage_numericKeyPad:
              *v1 = 254;
              break;
            case CoreHID_HIDUsage_ConsumerUsage_contactStatusFlag|CoreHID_HIDUsage_ConsumerUsage_headphone:
              *v1 = 255;
              break;
            default:
              v2 = 256;
              switch(rawValue.value)
              {
                case 0x1C5:
                  goto LABEL_2;
                case 0x1C6:
                  *v1 = 257;
                  break;
                case 0x1C7:
                  *v1 = 258;
                  break;
                case 0x1C8:
                  *v1 = 259;
                  break;
                case 0x1C9:
                  *v1 = 260;
                  break;
                case 0x1CA:
                  *v1 = 261;
                  break;
                case 0x1CB:
                  *v1 = 262;
                  break;
                case 0x200:
                  *v1 = 263;
                  break;
                case 0x201:
                  *v1 = 264;
                  break;
                case 0x202:
                  *v1 = 265;
                  break;
                case 0x203:
                  *v1 = 266;
                  break;
                case 0x204:
                  *v1 = 267;
                  break;
                case 0x205:
                  *v1 = 268;
                  break;
                case 0x206:
                  *v1 = 269;
                  break;
                case 0x207:
                  *v1 = 270;
                  break;
                case 0x208:
                  *v1 = 271;
                  break;
                case 0x209:
                  *v1 = 272;
                  break;
                case 0x21A:
                  *v1 = 273;
                  break;
                case 0x21B:
                  *v1 = 274;
                  break;
                case 0x21C:
                  *v1 = 275;
                  break;
                case 0x21D:
                  *v1 = 276;
                  break;
                case 0x21E:
                  *v1 = 277;
                  break;
                case 0x21F:
                  *v1 = 278;
                  break;
                case 0x220:
                  *v1 = 279;
                  break;
                case 0x221:
                  *v1 = 280;
                  break;
                case 0x222:
                  *v1 = 281;
                  break;
                case 0x223:
                  *v1 = 282;
                  break;
                case 0x224:
                  *v1 = 283;
                  break;
                case 0x225:
                  *v1 = 284;
                  break;
                case 0x226:
                  *v1 = 285;
                  break;
                case 0x227:
                  *v1 = 286;
                  break;
                case 0x228:
                  *v1 = 287;
                  break;
                case 0x229:
                  *v1 = 288;
                  break;
                case 0x22A:
                  *v1 = 289;
                  break;
                case 0x22B:
                  *v1 = 290;
                  break;
                case 0x22C:
                  *v1 = 291;
                  break;
                case 0x22D:
                  *v1 = 292;
                  break;
                case 0x22E:
                  *v1 = 293;
                  break;
                case 0x22F:
                  *v1 = 294;
                  break;
                case 0x230:
                  *v1 = 295;
                  break;
                case 0x231:
                  *v1 = 296;
                  break;
                case 0x232:
                  *v1 = 297;
                  break;
                case 0x233:
                  *v1 = 298;
                  break;
                case 0x234:
                  *v1 = 299;
                  break;
                case 0x235:
                  *v1 = 300;
                  break;
                case 0x236:
                  *v1 = 301;
                  break;
                case 0x237:
                  *v1 = 302;
                  break;
                case 0x238:
                  *v1 = 303;
                  break;
                case 0x239:
                  *v1 = 304;
                  break;
                case 0x23A:
                  *v1 = 305;
                  break;
                case 0x23B:
                  *v1 = 306;
                  break;
                case 0x23C:
                  *v1 = 307;
                  break;
                case 0x23D:
                  *v1 = 308;
                  break;
                case 0x23E:
                  *v1 = 309;
                  break;
                case 0x23F:
                  *v1 = 310;
                  break;
                case 0x240:
                  *v1 = 311;
                  break;
                case 0x241:
                  *v1 = 312;
                  break;
                case 0x242:
                  *v1 = 313;
                  break;
                case 0x243:
                  *v1 = 314;
                  break;
                case 0x244:
                  *v1 = 315;
                  break;
                case 0x245:
                  *v1 = 316;
                  break;
                case 0x246:
                  *v1 = 317;
                  break;
                case 0x247:
                  *v1 = 318;
                  break;
                case 0x248:
                  *v1 = 319;
                  break;
                default:
                  if ((rawValue.value - 585) >= 0x40u)
                  {
                    v2 = 384;
                    switch(rawValue.value)
                    {
                      case CoreHID_HIDUsage_ConsumerUsage_mute|0x200:
                        goto LABEL_2;
                      case CoreHID_HIDUsage_ConsumerUsage_bass|0x200:
                        *v1 = 385;
                        break;
                      case CoreHID_HIDUsage_ConsumerUsage_treble|0x200:
                        *v1 = 386;
                        break;
                      case CoreHID_HIDUsage_ConsumerUsage_bassBoost|0x200:
                        *v1 = 387;
                        break;
                      case CoreHID_HIDUsage_ConsumerUsage_surroundMode|0x200:
                        *v1 = 388;
                        break;
                      case CoreHID_HIDUsage_ConsumerUsage_loudness|0x200:
                        *v1 = 389;
                        break;
                      case CoreHID_HIDUsage_ConsumerUsage_mpx|0x200:
                        *v1 = 390;
                        break;
                      case CoreHID_HIDUsage_ConsumerUsage_volumeIncrement|0x200:
                        *v1 = 391;
                        break;
                      case CoreHID_HIDUsage_ConsumerUsage_volumeDecrement|0x200:
                        *v1 = 392;
                        break;
                      case CoreHID_HIDUsage_ConsumerUsage_speedSelect|0x200:
                        *v1 = 393;
                        break;
                      case CoreHID_HIDUsage_ConsumerUsage_playbackSpeed|0x200:
                        *v1 = 394;
                        break;
                      case CoreHID_HIDUsage_ConsumerUsage_standardPlay|0x200:
                        *v1 = 395;
                        break;
                      case CoreHID_HIDUsage_ConsumerUsage_longPlay|0x200:
                        *v1 = 396;
                        break;
                      case CoreHID_HIDUsage_ConsumerUsage_extendedPlay|0x200:
                        *v1 = 397;
                        break;
                      case CoreHID_HIDUsage_ConsumerUsage_slow|0x200:
                        *v1 = 398;
                        break;
                      case CoreHID_HIDUsage_ConsumerUsage_fanEnable|0x200:
                        *v1 = 399;
                        break;
                      case CoreHID_HIDUsage_ConsumerUsage_fanSpeed|0x200:
                        *v1 = 400;
                        break;
                      case CoreHID_HIDUsage_ConsumerUsage_lightEnable|0x200:
                        *v1 = 401;
                        break;
                      case CoreHID_HIDUsage_ConsumerUsage_lightIlluminationLevel|0x200:
                        *v1 = 402;
                        break;
                      case CoreHID_HIDUsage_ConsumerUsage_climateControlEnable|0x200:
                        *v1 = 403;
                        break;
                      case CoreHID_HIDUsage_ConsumerUsage_roomTemperature|0x200:
                        *v1 = 404;
                        break;
                      case CoreHID_HIDUsage_ConsumerUsage_securityEnable|0x200:
                        *v1 = 405;
                        break;
                      case CoreHID_HIDUsage_ConsumerUsage_fireAlarm|0x200:
                        *v1 = 406;
                        break;
                      case CoreHID_HIDUsage_ConsumerUsage_policeAlarm|0x200:
                        *v1 = 407;
                        break;
                      case CoreHID_HIDUsage_ConsumerUsage_proximity|0x200:
                        *v1 = 408;
                        break;
                      case CoreHID_HIDUsage_ConsumerUsage_motion|0x200:
                        *v1 = 409;
                        break;
                      case CoreHID_HIDUsage_ConsumerUsage_channelFront|0x200:
                        *v1 = 410;
                        break;
                      case CoreHID_HIDUsage_ConsumerUsage_alWordProcessor|0x200:
                        *v1 = 411;
                        break;
                      case CoreHID_HIDUsage_ConsumerUsage_alTextEditor|0x200:
                        *v1 = 412;
                        break;
                      case CoreHID_HIDUsage_ConsumerUsage_alSpreadsheet|0x200:
                        *v1 = 413;
                        break;
                      case CoreHID_HIDUsage_ConsumerUsage_alGraphicsEditor|0x200:
                        *v1 = 414;
                        break;
                      case CoreHID_HIDUsage_ConsumerUsage_alPresentationApp|0x200:
                        *v1 = 415;
                        break;
                      case CoreHID_HIDUsage_ConsumerUsage_alDatabaseApp|0x200:
                        *v1 = 416;
                        break;
                      case CoreHID_HIDUsage_ConsumerUsage_alEmailReader|0x200:
                        *v1 = 417;
                        break;
                      case CoreHID_HIDUsage_ConsumerUsage_alNewsreader|0x200:
                        *v1 = 418;
                        break;
                      case CoreHID_HIDUsage_ConsumerUsage_alVoicemail|0x200:
                        *v1 = 419;
                        break;
                      case CoreHID_HIDUsage_ConsumerUsage_alContactsOrAddressBook|0x200:
                        *v1 = 420;
                        break;
                      case CoreHID_HIDUsage_ConsumerUsage_alCalendarOrSchedule|0x200:
                        *v1 = 421;
                        break;
                      case CoreHID_HIDUsage_ConsumerUsage_alTaskOrProjectManager|0x200:
                        *v1 = 422;
                        break;
                      case CoreHID_HIDUsage_ConsumerUsage_alLogOrJournalOrTimecard|0x200:
                        *v1 = 423;
                        break;
                      case CoreHID_HIDUsage_ConsumerUsage_alLocalMachineBrowser|0x200:
                        *v1 = 424;
                        break;
                      case CoreHID_HIDUsage_ConsumerUsage_alLANOrWANBrowser|0x200:
                        *v1 = 425;
                        break;
                      case CoreHID_HIDUsage_ConsumerUsage_alInternetBrowser|0x200:
                        *v1 = 426;
                        break;
                      case CoreHID_HIDUsage_ConsumerUsage_alRemoteNetworkingOrISPConnect|0x200:
                        *v1 = 427;
                        break;
                      case CoreHID_HIDUsage_ConsumerUsage_alNetworkConference|0x200:
                        *v1 = 428;
                        break;
                      default:
                        if (rawValue.value == (CoreHID_HIDUsage_ConsumerUsage_acPaste|0x400))
                        {
                          v3 = 449;
                        }

                        else
                        {
                          v3 = 450;
                        }

                        if (rawValue.value == (CoreHID_HIDUsage_ConsumerUsage_acCut|0x400))
                        {
                          v4 = 448;
                        }

                        else
                        {
                          v4 = v3;
                        }

                        *v1 = v4;
                        break;
                    }
                  }

                  else
                  {
                    *v1 = rawValue.value - 265;
                  }

                  break;
              }

              break;
          }

          break;
      }

      break;
  }

  return rawValue;
}

CoreHID::HIDUsage::DigitizersUsage_optional __swiftcall HIDUsage.DigitizersUsage.init(rawValue:)(Swift::UInt16 rawValue)
{
  v2 = 0;
  v3 = 90;
  switch(rawValue)
  {
    case 1u:
      goto LABEL_104;
    case 2u:
      v2 = 1;
      goto LABEL_104;
    case 3u:
      v2 = 2;
      goto LABEL_104;
    case 4u:
      v2 = 3;
      goto LABEL_104;
    case 5u:
      v2 = 4;
      goto LABEL_104;
    case 6u:
      v2 = 5;
      goto LABEL_104;
    case 7u:
      v2 = 6;
      goto LABEL_104;
    case 8u:
      v2 = 7;
      goto LABEL_104;
    case 9u:
      v2 = 8;
      goto LABEL_104;
    case 0xAu:
      v2 = 9;
      goto LABEL_104;
    case 0xBu:
      v2 = 10;
      goto LABEL_104;
    case 0xCu:
      v2 = 11;
      goto LABEL_104;
    case 0xDu:
      v2 = 12;
      goto LABEL_104;
    case 0xEu:
      v2 = 13;
      goto LABEL_104;
    case 0xFu:
      v2 = 14;
      goto LABEL_104;
    case 0x20u:
      v2 = 15;
      goto LABEL_104;
    case 0x21u:
      v2 = 16;
      goto LABEL_104;
    case 0x22u:
      v2 = 17;
      goto LABEL_104;
    case 0x23u:
      v2 = 18;
      goto LABEL_104;
    case 0x24u:
      v2 = 19;
      goto LABEL_104;
    case 0x30u:
      v2 = 20;
      goto LABEL_104;
    case 0x31u:
      v2 = 21;
      goto LABEL_104;
    case 0x32u:
      v2 = 22;
      goto LABEL_104;
    case 0x33u:
      v2 = 23;
      goto LABEL_104;
    case 0x34u:
      v2 = 24;
      goto LABEL_104;
    case 0x35u:
      v2 = 25;
      goto LABEL_104;
    case 0x36u:
      v2 = 26;
      goto LABEL_104;
    case 0x37u:
      v2 = 27;
      goto LABEL_104;
    case 0x38u:
      v2 = 28;
      goto LABEL_104;
    case 0x39u:
      v2 = 29;
      goto LABEL_104;
    case 0x3Au:
      v2 = 30;
      goto LABEL_104;
    case 0x3Bu:
      v2 = 31;
      goto LABEL_104;
    case 0x3Cu:
      v2 = 32;
      goto LABEL_104;
    case 0x3Du:
      v2 = 33;
      goto LABEL_104;
    case 0x3Eu:
      v2 = 34;
      goto LABEL_104;
    case 0x3Fu:
      v2 = 35;
      goto LABEL_104;
    case 0x40u:
      v2 = 36;
      goto LABEL_104;
    case 0x41u:
      v2 = 37;
      goto LABEL_104;
    case 0x42u:
      v2 = 38;
      goto LABEL_104;
    case 0x43u:
      v2 = 39;
      goto LABEL_104;
    case 0x44u:
      v2 = 40;
      goto LABEL_104;
    case 0x45u:
      v2 = 41;
      goto LABEL_104;
    case 0x46u:
      v2 = 42;
      goto LABEL_104;
    case 0x47u:
      v2 = 43;
      goto LABEL_104;
    case 0x48u:
      v2 = 44;
      goto LABEL_104;
    case 0x49u:
      v2 = 45;
      goto LABEL_104;
    case 0x51u:
      v2 = 46;
      goto LABEL_104;
    case 0x52u:
      v2 = 47;
      goto LABEL_104;
    case 0x53u:
      v2 = 48;
      goto LABEL_104;
    case 0x54u:
      v2 = 49;
      goto LABEL_104;
    case 0x55u:
      v2 = 50;
      goto LABEL_104;
    case 0x56u:
      v2 = 51;
      goto LABEL_104;
    case 0x57u:
      v2 = 52;
      goto LABEL_104;
    case 0x58u:
      v2 = 53;
      goto LABEL_104;
    case 0x59u:
      v2 = 54;
      goto LABEL_104;
    case 0x5Au:
      v2 = 55;
      goto LABEL_104;
    case 0x5Bu:
      v2 = 56;
      goto LABEL_104;
    case 0x5Cu:
      v2 = 57;
      goto LABEL_104;
    case 0x5Du:
      v2 = 58;
      goto LABEL_104;
    case 0x5Eu:
      v2 = 59;
      goto LABEL_104;
    case 0x5Fu:
      v2 = 60;
      goto LABEL_104;
    case 0x60u:
      v2 = 61;
      goto LABEL_104;
    case 0x61u:
      v2 = 62;
      goto LABEL_104;
    case 0x62u:
      v2 = 63;
      goto LABEL_104;
    case 0x63u:
      v2 = 64;
      goto LABEL_104;
    case 0x64u:
      v2 = 65;
      goto LABEL_104;
    case 0x65u:
      v2 = 66;
      goto LABEL_104;
    case 0x66u:
      v2 = 67;
      goto LABEL_104;
    case 0x67u:
      v2 = 68;
      goto LABEL_104;
    case 0x68u:
      v2 = 69;
      goto LABEL_104;
    case 0x69u:
      v2 = 70;
      goto LABEL_104;
    case 0x6Au:
      v2 = 71;
      goto LABEL_104;
    case 0x6Bu:
      v2 = 72;
      goto LABEL_104;
    case 0x6Cu:
      v2 = 73;
      goto LABEL_104;
    case 0x6Du:
      v2 = 74;
      goto LABEL_104;
    case 0x6Eu:
      v2 = 75;
      goto LABEL_104;
    case 0x6Fu:
      v2 = 76;
      goto LABEL_104;
    case 0x70u:
      v2 = 77;
      goto LABEL_104;
    case 0x71u:
      v2 = 78;
      goto LABEL_104;
    case 0x72u:
      v2 = 79;
      goto LABEL_104;
    case 0x73u:
      v2 = 80;
      goto LABEL_104;
    case 0x74u:
      v2 = 81;
      goto LABEL_104;
    case 0x75u:
      v2 = 82;
      goto LABEL_104;
    case 0x76u:
      v2 = 83;
      goto LABEL_104;
    case 0x77u:
      v2 = 84;
      goto LABEL_104;
    case 0x80u:
      v2 = 85;
      goto LABEL_104;
    case 0x81u:
      v2 = 86;
      goto LABEL_104;
    case 0x82u:
      v2 = 87;
      goto LABEL_104;
    case 0x83u:
      v2 = 88;
      goto LABEL_104;
    case 0x84u:
      v2 = 89;
LABEL_104:
      v3 = v2;
      goto LABEL_105;
    case 0x85u:
LABEL_105:
      *v1 = v3;
      break;
    case 0x90u:
      *v1 = 91;
      break;
    case 0x91u:
      *v1 = 92;
      break;
    case 0x92u:
      *v1 = 93;
      break;
    case 0x93u:
      *v1 = 94;
      break;
    case 0x94u:
      *v1 = 95;
      break;
    case 0x95u:
      *v1 = 96;
      break;
    case 0x96u:
      *v1 = 97;
      break;
    case 0x97u:
      *v1 = 98;
      break;
    case 0x98u:
      *v1 = 99;
      break;
    case 0xA0u:
      *v1 = 100;
      break;
    case 0xA1u:
      *v1 = 101;
      break;
    case 0xA2u:
      *v1 = 102;
      break;
    case 0xA3u:
      *v1 = 103;
      break;
    case 0xA4u:
      *v1 = 104;
      break;
    case 0xA5u:
      *v1 = 105;
      break;
    case 0xA6u:
      *v1 = 106;
      break;
    case 0xB0u:
      *v1 = 107;
      break;
    default:
      *v1 = 108;
      break;
  }

  return rawValue;
}

CoreHID::HIDUsage::HapticsUsage_optional __swiftcall HIDUsage.HapticsUsage.init(rawValue:)(Swift::UInt16 rawValue)
{
  if (rawValue <= 0x26u)
  {
    if (rawValue > 0x21u)
    {
      if (rawValue <= 0x23u)
      {
        if (rawValue == 34)
        {
          *v1 = 5;
        }

        else
        {
          *v1 = 6;
        }

        return rawValue;
      }

      switch(rawValue)
      {
        case '$':
          *v1 = 7;
          return rawValue;
        case '%':
          *v1 = 8;
          return rawValue;
        case '&':
          *v1 = 9;
          return rawValue;
      }
    }

    else if (rawValue <= 0x10u)
    {
      if (rawValue == 1)
      {
        *v1 = 0;
        return rawValue;
      }

      if (rawValue == 16)
      {
        *v1 = 1;
        return rawValue;
      }
    }

    else
    {
      switch(rawValue)
      {
        case 0x11u:
          *v1 = 2;
          return rawValue;
        case 0x20u:
          *v1 = 3;
          return rawValue;
        case 0x21u:
          *v1 = 4;
          return rawValue;
      }
    }

LABEL_29:
    *v1 = 29;
    return rawValue;
  }

  switch(rawValue)
  {
    case 0x1001u:
      *v1 = 12;
      break;
    case 0x1002u:
      *v1 = 13;
      break;
    case 0x1003u:
      *v1 = 14;
      break;
    case 0x1004u:
      *v1 = 15;
      break;
    case 0x1005u:
      *v1 = 16;
      break;
    case 0x1006u:
      *v1 = 17;
      break;
    case 0x1007u:
      *v1 = 18;
      break;
    case 0x1008u:
      *v1 = 19;
      break;
    case 0x1009u:
      *v1 = 20;
      break;
    case 0x100Au:
      *v1 = 21;
      break;
    case 0x100Bu:
      *v1 = 22;
      break;
    case 0x100Cu:
      *v1 = 23;
      break;
    case 0x100Du:
      *v1 = 24;
      break;
    case 0x100Eu:
      *v1 = 25;
      break;
    case 0x100Fu:
      *v1 = 26;
      break;
    case 0x1010u:
      *v1 = 27;
      break;
    case 0x1011u:
      *v1 = 28;
      break;
    default:
      if (rawValue == 39)
      {
        *v1 = 10;
      }

      else
      {
        if (rawValue != 40)
        {
          goto LABEL_29;
        }

        *v1 = 11;
      }

      break;
  }

  return rawValue;
}

CoreHID::HIDUsage::PhysicalInputDeviceUsage_optional __swiftcall HIDUsage.PhysicalInputDeviceUsage.init(rawValue:)(Swift::UInt16 rawValue)
{
  v2 = 0;
  v3 = 87;
  switch(rawValue)
  {
    case 1u:
      goto LABEL_103;
    case 0x20u:
      v2 = 1;
      goto LABEL_103;
    case 0x21u:
      v2 = 2;
      goto LABEL_103;
    case 0x22u:
      v2 = 3;
      goto LABEL_103;
    case 0x23u:
      v2 = 4;
      goto LABEL_103;
    case 0x24u:
      v2 = 5;
      goto LABEL_103;
    case 0x25u:
      v2 = 6;
      goto LABEL_103;
    case 0x26u:
      v2 = 7;
      goto LABEL_103;
    case 0x27u:
      v2 = 8;
      goto LABEL_103;
    case 0x28u:
      v2 = 9;
      goto LABEL_103;
    case 0x30u:
      v2 = 10;
      goto LABEL_103;
    case 0x31u:
      v2 = 11;
      goto LABEL_103;
    case 0x32u:
      v2 = 12;
      goto LABEL_103;
    case 0x33u:
      v2 = 13;
      goto LABEL_103;
    case 0x34u:
      v2 = 14;
      goto LABEL_103;
    case 0x40u:
      v2 = 15;
      goto LABEL_103;
    case 0x41u:
      v2 = 16;
      goto LABEL_103;
    case 0x42u:
      v2 = 17;
      goto LABEL_103;
    case 0x43u:
      v2 = 18;
      goto LABEL_103;
    case 0x50u:
      v2 = 19;
      goto LABEL_103;
    case 0x51u:
      v2 = 20;
      goto LABEL_103;
    case 0x52u:
      v2 = 21;
      goto LABEL_103;
    case 0x53u:
      v2 = 22;
      goto LABEL_103;
    case 0x54u:
      v2 = 23;
      goto LABEL_103;
    case 0x55u:
      v2 = 24;
      goto LABEL_103;
    case 0x56u:
      v2 = 25;
      goto LABEL_103;
    case 0x57u:
      v2 = 26;
      goto LABEL_103;
    case 0x58u:
      v2 = 27;
      goto LABEL_103;
    case 0x59u:
      v2 = 28;
      goto LABEL_103;
    case 0x5Au:
      v2 = 29;
      goto LABEL_103;
    case 0x5Bu:
      v2 = 30;
      goto LABEL_103;
    case 0x5Cu:
      v2 = 31;
      goto LABEL_103;
    case 0x5Du:
      v2 = 32;
      goto LABEL_103;
    case 0x5Eu:
      v2 = 33;
      goto LABEL_103;
    case 0x5Fu:
      v2 = 34;
      goto LABEL_103;
    case 0x60u:
      v2 = 35;
      goto LABEL_103;
    case 0x61u:
      v2 = 36;
      goto LABEL_103;
    case 0x62u:
      v2 = 37;
      goto LABEL_103;
    case 0x63u:
      v2 = 38;
      goto LABEL_103;
    case 0x64u:
      v2 = 39;
      goto LABEL_103;
    case 0x65u:
      v2 = 40;
      goto LABEL_103;
    case 0x66u:
      v2 = 41;
      goto LABEL_103;
    case 0x67u:
      v2 = 42;
      goto LABEL_103;
    case 0x68u:
      v2 = 43;
      goto LABEL_103;
    case 0x69u:
      v2 = 44;
      goto LABEL_103;
    case 0x6Au:
      v2 = 45;
      goto LABEL_103;
    case 0x6Bu:
      v2 = 46;
      goto LABEL_103;
    case 0x6Cu:
      v2 = 47;
      goto LABEL_103;
    case 0x6Du:
      v2 = 48;
      goto LABEL_103;
    case 0x6Eu:
      v2 = 49;
      goto LABEL_103;
    case 0x6Fu:
      v2 = 50;
      goto LABEL_103;
    case 0x70u:
      v2 = 51;
      goto LABEL_103;
    case 0x71u:
      v2 = 52;
      goto LABEL_103;
    case 0x72u:
      v2 = 53;
      goto LABEL_103;
    case 0x73u:
      v2 = 54;
      goto LABEL_103;
    case 0x74u:
      v2 = 55;
      goto LABEL_103;
    case 0x75u:
      v2 = 56;
      goto LABEL_103;
    case 0x76u:
      v2 = 57;
      goto LABEL_103;
    case 0x77u:
      v2 = 58;
      goto LABEL_103;
    case 0x78u:
      v2 = 59;
      goto LABEL_103;
    case 0x79u:
      v2 = 60;
      goto LABEL_103;
    case 0x7Au:
      v2 = 61;
      goto LABEL_103;
    case 0x7Bu:
      v2 = 62;
      goto LABEL_103;
    case 0x7Cu:
      v2 = 63;
      goto LABEL_103;
    case 0x7Du:
      v2 = 64;
      goto LABEL_103;
    case 0x7Eu:
      v2 = 65;
      goto LABEL_103;
    case 0x7Fu:
      v2 = 66;
      goto LABEL_103;
    case 0x80u:
      v2 = 67;
      goto LABEL_103;
    case 0x81u:
      v2 = 68;
      goto LABEL_103;
    case 0x82u:
      v2 = 69;
      goto LABEL_103;
    case 0x83u:
      v2 = 70;
      goto LABEL_103;
    case 0x84u:
      v2 = 71;
      goto LABEL_103;
    case 0x85u:
      v2 = 72;
      goto LABEL_103;
    case 0x86u:
      v2 = 73;
      goto LABEL_103;
    case 0x87u:
      v2 = 74;
      goto LABEL_103;
    case 0x88u:
      v2 = 75;
      goto LABEL_103;
    case 0x89u:
      v2 = 76;
      goto LABEL_103;
    case 0x8Bu:
      v2 = 77;
      goto LABEL_103;
    case 0x8Cu:
      v2 = 78;
      goto LABEL_103;
    case 0x8Du:
      v2 = 79;
      goto LABEL_103;
    case 0x8Eu:
      v2 = 80;
      goto LABEL_103;
    case 0x8Fu:
      v2 = 81;
      goto LABEL_103;
    case 0x90u:
      v2 = 82;
      goto LABEL_103;
    case 0x91u:
      v2 = 83;
      goto LABEL_103;
    case 0x92u:
      v2 = 84;
      goto LABEL_103;
    case 0x94u:
      v2 = 85;
      goto LABEL_103;
    case 0x95u:
      v2 = 86;
LABEL_103:
      v3 = v2;
      goto LABEL_104;
    case 0x96u:
LABEL_104:
      *v1 = v3;
      break;
    case 0x97u:
      *v1 = 88;
      break;
    case 0x98u:
      *v1 = 89;
      break;
    case 0x99u:
      *v1 = 90;
      break;
    case 0x9Au:
      *v1 = 91;
      break;
    case 0x9Bu:
      *v1 = 92;
      break;
    case 0x9Cu:
      *v1 = 93;
      break;
    case 0x9Fu:
      *v1 = 94;
      break;
    case 0xA0u:
      *v1 = 95;
      break;
    case 0xA4u:
      *v1 = 96;
      break;
    case 0xA5u:
      *v1 = 97;
      break;
    case 0xA6u:
      *v1 = 98;
      break;
    case 0xA7u:
      *v1 = 99;
      break;
    case 0xA8u:
      *v1 = 100;
      break;
    case 0xA9u:
      *v1 = 101;
      break;
    case 0xAAu:
      *v1 = 102;
      break;
    case 0xABu:
      *v1 = 103;
      break;
    case 0xACu:
      *v1 = 104;
      break;
    default:
      *v1 = 105;
      break;
  }

  return rawValue;
}

CoreHID::HIDUsage::SOCUsage_optional __swiftcall HIDUsage.SOCUsage.init(rawValue:)(Swift::UInt16 rawValue)
{
  v2 = (rawValue - 1);
  if (v2 >= 0xA)
  {
    LOBYTE(v2) = 10;
  }

  *v1 = v2;
  return rawValue;
}

CoreHID::HIDUsage::EyeAndHeadTrackersUsage_optional __swiftcall HIDUsage.EyeAndHeadTrackersUsage.init(rawValue:)(Swift::UInt16 rawValue)
{
  if (rawValue > 0xFFu)
  {
    if (rawValue <= 0x200u)
    {
      if (rawValue <= 0x102u)
      {
        switch(rawValue)
        {
          case 0x100u:
            *v1 = 19;
            return rawValue;
          case 0x101u:
            *v1 = 20;
            return rawValue;
          case 0x102u:
            *v1 = 21;
            return rawValue;
        }
      }

      else
      {
        if (rawValue <= 0x104u)
        {
          if (rawValue == 259)
          {
            *v1 = 22;
          }

          else
          {
            *v1 = 23;
          }

          return rawValue;
        }

        if (rawValue == 261)
        {
          *v1 = 24;
          return rawValue;
        }

        if (rawValue == 512)
        {
          *v1 = 25;
          return rawValue;
        }
      }
    }

    else
    {
      if (rawValue <= 0x204u)
      {
        if (rawValue > 0x202u)
        {
          if (rawValue == 515)
          {
            *v1 = 28;
          }

          else
          {
            *v1 = 29;
          }
        }

        else if (rawValue == 513)
        {
          *v1 = 26;
        }

        else
        {
          *v1 = 27;
        }

        return rawValue;
      }

      if (rawValue > 0x300u)
      {
        if (rawValue == 769)
        {
          *v1 = 32;
          return rawValue;
        }

        if (rawValue == 1024)
        {
          *v1 = 33;
          return rawValue;
        }
      }

      else
      {
        if (rawValue == 517)
        {
          *v1 = 30;
          return rawValue;
        }

        if (rawValue == 768)
        {
          *v1 = 31;
          return rawValue;
        }
      }
    }

LABEL_55:
    *v1 = 34;
    return rawValue;
  }

  v2 = 0;
  v3 = 16;
  switch(rawValue)
  {
    case 1u:
      goto LABEL_44;
    case 2u:
      v2 = 1;
      goto LABEL_44;
    case 0x10u:
      v2 = 2;
      goto LABEL_44;
    case 0x11u:
      v2 = 3;
      goto LABEL_44;
    case 0x12u:
      v2 = 4;
      goto LABEL_44;
    case 0x13u:
      v2 = 5;
      goto LABEL_44;
    case 0x14u:
      v2 = 6;
      goto LABEL_44;
    case 0x20u:
      v2 = 7;
      goto LABEL_44;
    case 0x21u:
      v2 = 8;
      goto LABEL_44;
    case 0x22u:
      v2 = 9;
      goto LABEL_44;
    case 0x23u:
      v2 = 10;
      goto LABEL_44;
    case 0x24u:
      v2 = 11;
      goto LABEL_44;
    case 0x25u:
      v2 = 12;
      goto LABEL_44;
    case 0x26u:
      v2 = 13;
      goto LABEL_44;
    case 0x27u:
      v2 = 14;
      goto LABEL_44;
    case 0x28u:
      v2 = 15;
LABEL_44:
      v3 = v2;
      goto LABEL_45;
    case 0x29u:
LABEL_45:
      *v1 = v3;
      break;
    case 0x2Au:
      *v1 = 17;
      break;
    case 0x2Bu:
      *v1 = 18;
      break;
    default:
      goto LABEL_55;
  }

  return rawValue;
}

CoreHID::HIDUsage::AuxiliaryDisplayUsage_optional __swiftcall HIDUsage.AuxiliaryDisplayUsage.init(rawValue:)(Swift::UInt16 rawValue)
{
  v2 = 0;
  v3 = 57;
  switch(rawValue)
  {
    case 1u:
      goto LABEL_72;
    case 2u:
      v2 = 1;
      goto LABEL_72;
    case 0x20u:
      v2 = 2;
      goto LABEL_72;
    case 0x21u:
      v2 = 3;
      goto LABEL_72;
    case 0x22u:
      v2 = 4;
      goto LABEL_72;
    case 0x23u:
      v2 = 5;
      goto LABEL_72;
    case 0x24u:
      v2 = 6;
      goto LABEL_72;
    case 0x25u:
      v2 = 7;
      goto LABEL_72;
    case 0x26u:
      v2 = 8;
      goto LABEL_72;
    case 0x27u:
      v2 = 9;
      goto LABEL_72;
    case 0x28u:
      v2 = 10;
      goto LABEL_72;
    case 0x29u:
      v2 = 11;
      goto LABEL_72;
    case 0x2Au:
      v2 = 12;
      goto LABEL_72;
    case 0x2Bu:
      v2 = 13;
      goto LABEL_72;
    case 0x2Cu:
      v2 = 14;
      goto LABEL_72;
    case 0x2Du:
      v2 = 15;
      goto LABEL_72;
    case 0x2Eu:
      v2 = 16;
      goto LABEL_72;
    case 0x2Fu:
      v2 = 17;
      goto LABEL_72;
    case 0x30u:
      v2 = 18;
      goto LABEL_72;
    case 0x31u:
      v2 = 19;
      goto LABEL_72;
    case 0x32u:
      v2 = 20;
      goto LABEL_72;
    case 0x33u:
      v2 = 21;
      goto LABEL_72;
    case 0x34u:
      v2 = 22;
      goto LABEL_72;
    case 0x35u:
      v2 = 23;
      goto LABEL_72;
    case 0x36u:
      v2 = 24;
      goto LABEL_72;
    case 0x37u:
      v2 = 25;
      goto LABEL_72;
    case 0x38u:
      v2 = 26;
      goto LABEL_72;
    case 0x39u:
      v2 = 27;
      goto LABEL_72;
    case 0x3Au:
      v2 = 28;
      goto LABEL_72;
    case 0x3Bu:
      v2 = 29;
      goto LABEL_72;
    case 0x3Cu:
      v2 = 30;
      goto LABEL_72;
    case 0x3Du:
      v2 = 31;
      goto LABEL_72;
    case 0x3Eu:
      v2 = 32;
      goto LABEL_72;
    case 0x3Fu:
      v2 = 33;
      goto LABEL_72;
    case 0x40u:
      v2 = 34;
      goto LABEL_72;
    case 0x41u:
      v2 = 35;
      goto LABEL_72;
    case 0x42u:
      v2 = 36;
      goto LABEL_72;
    case 0x43u:
      v2 = 37;
      goto LABEL_72;
    case 0x44u:
      v2 = 38;
      goto LABEL_72;
    case 0x45u:
      v2 = 39;
      goto LABEL_72;
    case 0x46u:
      v2 = 40;
      goto LABEL_72;
    case 0x47u:
      v2 = 41;
      goto LABEL_72;
    case 0x48u:
      v2 = 42;
      goto LABEL_72;
    case 0x49u:
      v2 = 43;
      goto LABEL_72;
    case 0x4Au:
      v2 = 44;
      goto LABEL_72;
    case 0x4Bu:
      v2 = 45;
      goto LABEL_72;
    case 0x4Cu:
      v2 = 46;
      goto LABEL_72;
    case 0x4Du:
      v2 = 47;
      goto LABEL_72;
    case 0x80u:
      v2 = 48;
      goto LABEL_72;
    case 0x81u:
      v2 = 49;
      goto LABEL_72;
    case 0x82u:
      v2 = 50;
      goto LABEL_72;
    case 0x83u:
      v2 = 51;
      goto LABEL_72;
    case 0x84u:
      v2 = 52;
      goto LABEL_72;
    case 0x85u:
      v2 = 53;
      goto LABEL_72;
    case 0x86u:
      v2 = 54;
      goto LABEL_72;
    case 0x87u:
      v2 = 55;
      goto LABEL_72;
    case 0x88u:
      v2 = 56;
LABEL_72:
      v3 = v2;
      goto LABEL_73;
    case 0x8Au:
LABEL_73:
      *v1 = v3;
      break;
    case 0x8Bu:
      *v1 = 58;
      break;
    case 0x8Cu:
      *v1 = 59;
      break;
    case 0x8Du:
      *v1 = 60;
      break;
    case 0x8Eu:
      *v1 = 61;
      break;
    case 0x8Fu:
      *v1 = 62;
      break;
    case 0x90u:
      *v1 = 63;
      break;
    case 0x91u:
      *v1 = 64;
      break;
    case 0x92u:
      *v1 = 65;
      break;
    case 0x93u:
      *v1 = 66;
      break;
    case 0x94u:
      *v1 = 67;
      break;
    case 0x95u:
      *v1 = 68;
      break;
    case 0xC2u:
      *v1 = 69;
      break;
    case 0xCCu:
      *v1 = 70;
      break;
    case 0xCFu:
      *v1 = 71;
      break;
    case 0xDDu:
      *v1 = 72;
      break;
    case 0xDFu:
      *v1 = 73;
      break;
    case 0xFFu:
      *v1 = 74;
      break;
    default:
      *v1 = 75;
      break;
  }

  return rawValue;
}

CoreHID::HIDUsage::SensorsUsage_optional __swiftcall HIDUsage.SensorsUsage.init(rawValue:)(CoreHID::HIDUsage::SensorsUsage_optional rawValue)
{
  v2 = 0;
  switch(rawValue.value)
  {
    case CoreHID_HIDUsage_SensorsUsage_biometric:
      goto LABEL_3;
    case CoreHID_HIDUsage_SensorsUsage_electricalResistance:
      v2 = 1;
LABEL_3:
      *v1 = v2;
      return rawValue;
    case CoreHID_HIDUsage_SensorsUsage_electricalVoltage:
      *v1 = 2;
      return rawValue;
    case CoreHID_HIDUsage_SensorsUsage_electricalPotentiometer:
      *v1 = 3;
      return rawValue;
    case CoreHID_HIDUsage_SensorsUsage_electricalFrequency:
      *v1 = 4;
      return rawValue;
    case CoreHID_HIDUsage_SensorsUsage_electricalPeriod:
      *v1 = 5;
      return rawValue;
    case CoreHID_HIDUsage_SensorsUsage_environmental:
      *v1 = 6;
      return rawValue;
    case CoreHID_HIDUsage_SensorsUsage_environmentalAtmosphericPressure:
      *v1 = 7;
      return rawValue;
    case CoreHID_HIDUsage_SensorsUsage_environmentalHumidity:
      *v1 = 8;
      return rawValue;
    case CoreHID_HIDUsage_SensorsUsage_environmentalTemperature:
      *v1 = 9;
      return rawValue;
    case CoreHID_HIDUsage_SensorsUsage_environmentalWindDirection:
      *v1 = 10;
      return rawValue;
    case CoreHID_HIDUsage_SensorsUsage_environmentalObjectProximity:
      *v1 = 11;
      return rawValue;
    case CoreHID_HIDUsage_SensorsUsage_light:
      *v1 = 12;
      return rawValue;
    case CoreHID_HIDUsage_SensorsUsage_lightAmbientLight:
      *v1 = 13;
      return rawValue;
    case CoreHID_HIDUsage_SensorsUsage_lightConsumerInfrared:
      *v1 = 14;
      return rawValue;
    case CoreHID_HIDUsage_SensorsUsage_lightInfraredLight:
      *v1 = 15;
      return rawValue;
    case CoreHID_HIDUsage_SensorsUsage_lightVisibleLight:
      *v1 = 16;
      return rawValue;
    case CoreHID_HIDUsage_SensorsUsage_lightUltravioletLight:
      *v1 = 17;
      return rawValue;
    case CoreHID_HIDUsage_SensorsUsage_location:
      *v1 = 18;
      return rawValue;
    case CoreHID_HIDUsage_SensorsUsage_locationBroadcast:
      *v1 = 19;
      return rawValue;
    case CoreHID_HIDUsage_SensorsUsage_locationDeadReckoning:
      *v1 = 20;
      return rawValue;
    case CoreHID_HIDUsage_SensorsUsage_mechanicalBooleanSwitch:
      *v1 = 21;
      return rawValue;
    case CoreHID_HIDUsage_SensorsUsage_mechanicalBooleanSwitchArray:
      *v1 = 22;
      return rawValue;
    case CoreHID_HIDUsage_SensorsUsage_mechanicalMultivalueSwitch:
      *v1 = 23;
      return rawValue;
    case CoreHID_HIDUsage_SensorsUsage_mechanicalForce:
      *v1 = 24;
      return rawValue;
    case CoreHID_HIDUsage_SensorsUsage_mechanicalPressure:
      *v1 = 25;
      return rawValue;
    case CoreHID_HIDUsage_SensorsUsage_mechanicalStrain:
      *v1 = 26;
      return rawValue;
    case CoreHID_HIDUsage_SensorsUsage_mechanicalWeight:
      *v1 = 27;
      return rawValue;
    case CoreHID_HIDUsage_SensorsUsage_mechanicalHapticVibrator:
      *v1 = 28;
      return rawValue;
    case CoreHID_HIDUsage_SensorsUsage_mechanicalHallEffectSwitch:
      *v1 = 29;
      return rawValue;
    case CoreHID_HIDUsage_SensorsUsage_motion:
      *v1 = 30;
      return rawValue;
    case CoreHID_HIDUsage_SensorsUsage_motionAccelerometer1D:
      *v1 = 31;
      return rawValue;
    case CoreHID_HIDUsage_SensorsUsage_motionAccelerometer2D:
      *v1 = 32;
      return rawValue;
    case CoreHID_HIDUsage_SensorsUsage_motionMotionDetector:
      *v1 = 33;
      return rawValue;
    case CoreHID_HIDUsage_SensorsUsage_motionSpeedometer:
      *v1 = 34;
      return rawValue;
    case CoreHID_HIDUsage_SensorsUsage_motionAccelerometer:
      *v1 = 35;
      return rawValue;
    case CoreHID_HIDUsage_SensorsUsage_motionGyrometer:
      *v1 = 36;
      return rawValue;
    case CoreHID_HIDUsage_SensorsUsage_motionGravityVector:
      *v1 = 37;
      return rawValue;
    case CoreHID_HIDUsage_SensorsUsage_motionLinearAccelerometer:
      *v1 = 38;
      return rawValue;
    case CoreHID_HIDUsage_SensorsUsage_orientationDeviceOrientation:
      *v1 = 39;
      return rawValue;
    case CoreHID_HIDUsage_SensorsUsage_orientationCompass:
      *v1 = 40;
      return rawValue;
    case CoreHID_HIDUsage_SensorsUsage_orientationInclinometer:
      *v1 = 41;
      return rawValue;
    case CoreHID_HIDUsage_SensorsUsage_orientationDistance:
      *v1 = 42;
      return rawValue;
    case CoreHID_HIDUsage_SensorsUsage_orientationRelativeOrientation:
      *v1 = 43;
      return rawValue;
    case CoreHID_HIDUsage_SensorsUsage_orientationSimpleOrientation:
      *v1 = 44;
      return rawValue;
    case CoreHID_HIDUsage_SensorsUsage_scanner:
      *v1 = 45;
      return rawValue;
    case CoreHID_HIDUsage_SensorsUsage_scannerBarcode:
      *v1 = 46;
      return rawValue;
    case CoreHID_HIDUsage_SensorsUsage_personalActivityPedometer:
      *v1 = 47;
      return rawValue;
    case CoreHID_HIDUsage_SensorsUsage_personalActivityStepDetection:
      *v1 = 48;
      return rawValue;
    case CoreHID_HIDUsage_SensorsUsage_orientationExtended:
      *v1 = 49;
      return rawValue;
    case CoreHID_HIDUsage_SensorsUsage_orientationExtendedGeomagneticOrientation:
      *v1 = 50;
      return rawValue;
    case CoreHID_HIDUsage_SensorsUsage_orientationExtendedMagnetometer:
      *v1 = 51;
      return rawValue;
    case CoreHID_HIDUsage_SensorsUsage_gesture:
      *v1 = 52;
      return rawValue;
    case CoreHID_HIDUsage_SensorsUsage_gestureChassisFlipGesture:
      *v1 = 53;
      return rawValue;
    case CoreHID_HIDUsage_SensorsUsage_gestureHingeFoldGesture:
      *v1 = 54;
      return rawValue;
    case CoreHID_HIDUsage_SensorsUsage_other:
      *v1 = 55;
      return rawValue;
    case CoreHID_HIDUsage_SensorsUsage_otherCustom:
      *v1 = 56;
      return rawValue;
    case CoreHID_HIDUsage_SensorsUsage_vendorReserved4:
      *v1 = 57;
      return rawValue;
    case CoreHID_HIDUsage_SensorsUsage_vendorReserved5:
      *v1 = 58;
      return rawValue;
    case CoreHID_HIDUsage_SensorsUsage_vendorReserved6:
      *v1 = 59;
      return rawValue;
    case CoreHID_HIDUsage_SensorsUsage_vendorReserved7:
      *v1 = 60;
      return rawValue;
    case CoreHID_HIDUsage_SensorsUsage_vendorReserved8:
      *v1 = 61;
      return rawValue;
    case CoreHID_HIDUsage_SensorsUsage_vendorReserved9:
      *v1 = 62;
      return rawValue;
    case CoreHID_HIDUsage_SensorsUsage_vendorReserved10:
      *v1 = 63;
      return rawValue;
    case CoreHID_HIDUsage_SensorsUsage_vendorReserved11:
      *v1 = 64;
      return rawValue;
    case CoreHID_HIDUsage_SensorsUsage_vendorReserved12:
      *v1 = 65;
      return rawValue;
    case CoreHID_HIDUsage_SensorsUsage_vendorReserved13:
      *v1 = 66;
      return rawValue;
    case CoreHID_HIDUsage_SensorsUsage_vendorReserved14:
      *v1 = 67;
      return rawValue;
    case CoreHID_HIDUsage_SensorsUsage_vendorReserved15:
      *v1 = 68;
      return rawValue;
    case CoreHID_HIDUsage_SensorsUsage_vendorReserved16:
      *v1 = 69;
      return rawValue;
    case CoreHID_HIDUsage_SensorsUsage_property:
      *v1 = 70;
      return rawValue;
    case CoreHID_HIDUsage_SensorsUsage_propertyFriendlyName:
      *v1 = 71;
      return rawValue;
    case CoreHID_HIDUsage_SensorsUsage_propertyPersistentUniqueID:
      *v1 = 72;
      return rawValue;
    case CoreHID_HIDUsage_SensorsUsage_propertySensorStatus:
      *v1 = 73;
      return rawValue;
    case CoreHID_HIDUsage_SensorsUsage_propertyMinimumReportInterval:
      *v1 = 74;
      return rawValue;
    case CoreHID_HIDUsage_SensorsUsage_propertySensorManufacturer:
      *v1 = 75;
      return rawValue;
    case CoreHID_HIDUsage_SensorsUsage_propertySensorModel:
      *v1 = 76;
      return rawValue;
    case CoreHID_HIDUsage_SensorsUsage_propertySensorSerialNumber:
      *v1 = 77;
      return rawValue;
    case CoreHID_HIDUsage_SensorsUsage_propertySensorDescription:
      *v1 = 78;
      return rawValue;
    case CoreHID_HIDUsage_SensorsUsage_propertySensorConnectionType:
      *v1 = 79;
      return rawValue;
    case CoreHID_HIDUsage_SensorsUsage_propertySensorDevicePath:
      *v1 = 80;
      return rawValue;
    case CoreHID_HIDUsage_SensorsUsage_propertyHardwareRevision:
      *v1 = 81;
      return rawValue;
    case CoreHID_HIDUsage_SensorsUsage_propertyFirmwareVersion:
      *v1 = 82;
      return rawValue;
    case CoreHID_HIDUsage_SensorsUsage_propertyReleaseDate:
      *v1 = 83;
      return rawValue;
    case CoreHID_HIDUsage_SensorsUsage_propertyReportInterval:
      *v1 = 84;
      return rawValue;
    case CoreHID_HIDUsage_SensorsUsage_propertyChangeSensitivityAbsolute:
      *v1 = 85;
      return rawValue;
    case CoreHID_HIDUsage_SensorsUsage_propertyChangeSensitivityPercentOfRange:
      *v1 = 86;
      return rawValue;
    case CoreHID_HIDUsage_SensorsUsage_propertyChangeSensitivityPercentRelative:
      *v1 = 87;
      return rawValue;
    case CoreHID_HIDUsage_SensorsUsage_propertyAccuracy:
      *v1 = 88;
      return rawValue;
    case CoreHID_HIDUsage_SensorsUsage_propertyResolution:
      *v1 = 89;
      return rawValue;
    case CoreHID_HIDUsage_SensorsUsage_dataFieldLocation:
      *v1 = 90;
      return rawValue;
    case CoreHID_HIDUsage_SensorsUsage_dataFieldAltitudeAntennaSeaLevel:
      *v1 = 91;
      return rawValue;
    case CoreHID_HIDUsage_SensorsUsage_dataFieldDifferentialReferenceStationID:
      *v1 = 92;
      return rawValue;
    case CoreHID_HIDUsage_SensorsUsage_dataFieldHorizontalDilutionOfPrecision:
      *v1 = 93;
      return rawValue;
    case CoreHID_HIDUsage_SensorsUsage_dataFieldVerticalDilutionOfPrecision:
      *v1 = 94;
      return rawValue;
    case CoreHID_HIDUsage_SensorsUsage_dataFieldLatitude:
      *v1 = 95;
      return rawValue;
    case CoreHID_HIDUsage_SensorsUsage_dataFieldLongitude:
      *v1 = 96;
      return rawValue;
    case CoreHID_HIDUsage_SensorsUsage_dataFieldTrueHeading:
      *v1 = 97;
      return rawValue;
    case CoreHID_HIDUsage_SensorsUsage_dataFieldNMEASentence:
      *v1 = 98;
      return rawValue;
    case CoreHID_HIDUsage_SensorsUsage_dataFieldAddressLine1:
      *v1 = 99;
      return rawValue;
    case CoreHID_HIDUsage_SensorsUsage_dataFieldAddressLine2:
      *v1 = 100;
      return rawValue;
    case CoreHID_HIDUsage_SensorsUsage_dataFieldEquivalentCO2:
      *v1 = 101;
      return rawValue;
    case CoreHID_HIDUsage_SensorsUsage_dataFieldVolatileOrganicCompoundConcentration:
      *v1 = 102;
      return rawValue;
    case CoreHID_HIDUsage_SensorsUsage_dataFieldObjectPresence:
      *v1 = 103;
      return rawValue;
    case CoreHID_HIDUsage_SensorsUsage_dataFieldAngularVelocityAboutZAxis:
      *v1 = 104;
      return rawValue;
    case CoreHID_HIDUsage_SensorsUsage_dataFieldAngularPosition:
      *v1 = 105;
      return rawValue;
    case CoreHID_HIDUsage_SensorsUsage_dataFieldAngularPositionAboutXAxis:
      *v1 = 106;
      return rawValue;
    case CoreHID_HIDUsage_SensorsUsage_dataFieldAngularPositionAboutYAxis:
      *v1 = 107;
      return rawValue;
    case CoreHID_HIDUsage_SensorsUsage_dataFieldAngularPositionAboutZAxis:
      *v1 = 108;
      return rawValue;
    case CoreHID_HIDUsage_SensorsUsage_dataFieldDistance:
      *v1 = 109;
      return rawValue;
    case CoreHID_HIDUsage_SensorsUsage_dataFieldDistanceXAxis:
      *v1 = 110;
      return rawValue;
    case CoreHID_HIDUsage_SensorsUsage_dataFieldDistanceYAxis:
      *v1 = 111;
      return rawValue;
    case CoreHID_HIDUsage_SensorsUsage_dataFieldDistanceZAxis:
      *v1 = 112;
      return rawValue;
    case CoreHID_HIDUsage_SensorsUsage_dataFieldDistanceOutOfRange:
      *v1 = 113;
      return rawValue;
    case CoreHID_HIDUsage_SensorsUsage_dataFieldTilt:
      *v1 = 114;
      return rawValue;
    case CoreHID_HIDUsage_SensorsUsage_dataFieldTiltXAxis:
      *v1 = 115;
      return rawValue;
    case CoreHID_HIDUsage_SensorsUsage_dataFieldTiltYAxis:
      *v1 = 116;
      return rawValue;
    case CoreHID_HIDUsage_SensorsUsage_dataFieldTiltZAxis:
      *v1 = 117;
      return rawValue;
    case CoreHID_HIDUsage_SensorsUsage_dataFieldRotationMatrix:
      *v1 = 118;
      return rawValue;
    case CoreHID_HIDUsage_SensorsUsage_dataFieldQuaternion:
      *v1 = 119;
      return rawValue;
    case CoreHID_HIDUsage_SensorsUsage_dataFieldMagneticFlux:
      *v1 = 120;
      return rawValue;
    case CoreHID_HIDUsage_SensorsUsage_dataFieldMagneticFluxXAxis:
      *v1 = 121;
      return rawValue;
    case CoreHID_HIDUsage_SensorsUsage_dataFieldMagneticFluxYAxis:
      *v1 = 122;
      return rawValue;
    case CoreHID_HIDUsage_SensorsUsage_dataFieldMagneticFluxZAxis:
      *v1 = 123;
      return rawValue;
    case CoreHID_HIDUsage_SensorsUsage_dataFieldMagnetometerAccuracy:
      *v1 = 124;
      return rawValue;
    case CoreHID_HIDUsage_SensorsUsage_magnetometerAccuracyMedium:
      *v1 = 125;
      return rawValue;
    case CoreHID_HIDUsage_SensorsUsage_magnetometerAccuracyHigh:
      *v1 = 126;
      return rawValue;
    case CoreHID_HIDUsage_SensorsUsage_simpleOrientationDirectionNotRotated:
      *v1 = 127;
      return rawValue;
    default:
      v2 = 128;
      switch(rawValue.value)
      {
        case 0x300:
          goto LABEL_3;
        case 0x301:
          *v1 = 129;
          return rawValue;
        case 0x302:
          *v1 = 130;
          return rawValue;
        case 0x303:
          *v1 = 131;
          return rawValue;
        case 0x304:
          *v1 = 132;
          return rawValue;
        case 0x305:
          *v1 = 133;
          return rawValue;
        case 0x306:
          *v1 = 134;
          return rawValue;
        case 0x307:
          *v1 = 135;
          return rawValue;
        case 0x308:
          *v1 = 136;
          return rawValue;
        case 0x309:
          *v1 = 137;
          return rawValue;
        case 0x30A:
          *v1 = 138;
          return rawValue;
        case 0x30B:
          *v1 = 139;
          return rawValue;
        case 0x30C:
          *v1 = 140;
          return rawValue;
        case 0x30D:
          *v1 = 141;
          return rawValue;
        case 0x30E:
          *v1 = 142;
          return rawValue;
        case 0x30F:
          *v1 = 143;
          return rawValue;
        case 0x310:
          *v1 = 144;
          return rawValue;
        case 0x311:
          *v1 = 145;
          return rawValue;
        case 0x312:
          *v1 = 146;
          return rawValue;
        case 0x313:
          *v1 = 147;
          return rawValue;
        case 0x314:
          *v1 = 148;
          return rawValue;
        case 0x315:
          *v1 = 149;
          return rawValue;
        case 0x316:
          *v1 = 150;
          return rawValue;
        case 0x317:
          *v1 = 151;
          return rawValue;
        case 0x318:
          *v1 = 152;
          return rawValue;
        case 0x319:
          *v1 = 153;
          return rawValue;
        case 0x31A:
          *v1 = 154;
          return rawValue;
        case 0x31B:
          *v1 = 155;
          return rawValue;
        case 0x31C:
          *v1 = 156;
          return rawValue;
        case 0x31D:
          *v1 = 157;
          return rawValue;
        case 0x31E:
          *v1 = 158;
          return rawValue;
        case 0x31F:
          *v1 = 159;
          return rawValue;
        case 0x400:
          *v1 = 160;
          return rawValue;
        case 0x402:
          *v1 = 161;
          return rawValue;
        case 0x403:
          *v1 = 162;
          return rawValue;
        case 0x404:
          *v1 = 163;
          return rawValue;
        case 0x405:
          *v1 = 164;
          return rawValue;
        case 0x406:
          *v1 = 165;
          return rawValue;
        case 0x407:
          *v1 = 166;
          return rawValue;
        case 0x408:
          *v1 = 167;
          return rawValue;
        case 0x409:
          *v1 = 168;
          return rawValue;
        case 0x40A:
          *v1 = 169;
          return rawValue;
        case 0x40B:
          *v1 = 170;
          return rawValue;
        case 0x40C:
          *v1 = 171;
          return rawValue;
        case 0x40D:
          *v1 = 172;
          return rawValue;
        case 0x40E:
          *v1 = 173;
          return rawValue;
        case 0x40F:
          *v1 = 174;
          return rawValue;
        case 0x410:
          *v1 = 175;
          return rawValue;
        case 0x411:
          *v1 = 176;
          return rawValue;
        case 0x412:
          *v1 = 177;
          return rawValue;
        case 0x413:
          *v1 = 178;
          return rawValue;
        case 0x414:
          *v1 = 179;
          return rawValue;
        case 0x415:
          *v1 = 180;
          return rawValue;
        case 0x416:
          *v1 = 181;
          return rawValue;
        case 0x417:
          *v1 = 182;
          return rawValue;
        case 0x418:
          *v1 = 183;
          return rawValue;
        case 0x419:
          *v1 = 184;
          return rawValue;
        case 0x41A:
          *v1 = 185;
          return rawValue;
        case 0x41B:
          *v1 = 186;
          return rawValue;
        case 0x41C:
          *v1 = 187;
          return rawValue;
        case 0x41D:
          *v1 = 188;
          return rawValue;
        case 0x41E:
          *v1 = 189;
          return rawValue;
        case 0x41F:
          *v1 = 190;
          return rawValue;
        case 0x420:
          *v1 = 191;
          return rawValue;
        default:
          v2 = 192;
          switch(rawValue.value)
          {
            case 0x421:
              goto LABEL_3;
            case 0x422:
              *v1 = 193;
              return rawValue;
            case 0x423:
              *v1 = 194;
              return rawValue;
            case 0x424:
              *v1 = 195;
              return rawValue;
            case 0x425:
              *v1 = 196;
              return rawValue;
            case 0x426:
              *v1 = 197;
              return rawValue;
            case 0x427:
              *v1 = 198;
              return rawValue;
            case 0x42A:
              *v1 = 199;
              return rawValue;
            case 0x42B:
              *v1 = 200;
              return rawValue;
            case 0x430:
              *v1 = 201;
              return rawValue;
            case 0x431:
              *v1 = 202;
              return rawValue;
            case 0x433:
              *v1 = 203;
              return rawValue;
            case 0x434:
              *v1 = 204;
              return rawValue;
            case 0x435:
              *v1 = 205;
              return rawValue;
            case 0x436:
              *v1 = 206;
              return rawValue;
            case 0x437:
              *v1 = 207;
              return rawValue;
            case 0x438:
              *v1 = 208;
              return rawValue;
            case 0x439:
              *v1 = 209;
              return rawValue;
            case 0x43A:
              *v1 = 210;
              return rawValue;
            case 0x43B:
              *v1 = 211;
              return rawValue;
            case 0x43C:
              *v1 = 212;
              return rawValue;
            case 0x440:
              *v1 = 213;
              return rawValue;
            case 0x441:
              *v1 = 214;
              return rawValue;
            case 0x450:
              *v1 = 215;
              return rawValue;
            case 0x451:
              *v1 = 216;
              return rawValue;
            case 0x452:
              *v1 = 217;
              return rawValue;
            case 0x453:
              *v1 = 218;
              return rawValue;
            case 0x454:
              *v1 = 219;
              return rawValue;
            case 0x455:
              *v1 = 220;
              return rawValue;
            case 0x456:
              *v1 = 221;
              return rawValue;
            case 0x457:
              *v1 = 222;
              return rawValue;
            case 0x458:
              *v1 = 223;
              return rawValue;
            case 0x459:
              *v1 = 224;
              return rawValue;
            case 0x45A:
              *v1 = 225;
              return rawValue;
            case 0x45B:
              *v1 = 226;
              return rawValue;
            case 0x45C:
              *v1 = 227;
              return rawValue;
            case 0x45D:
              *v1 = 228;
              return rawValue;
            case 0x45E:
              *v1 = 229;
              return rawValue;
            case 0x45F:
              *v1 = 230;
              return rawValue;
            case 0x470:
              *v1 = 231;
              return rawValue;
            case 0x471:
              *v1 = 232;
              return rawValue;
            case 0x472:
              *v1 = 233;
              return rawValue;
            case 0x473:
              *v1 = 234;
              return rawValue;
            case 0x474:
              *v1 = 235;
              return rawValue;
            case 0x475:
              *v1 = 236;
              return rawValue;
            case 0x476:
              *v1 = 237;
              return rawValue;
            case 0x477:
              *v1 = 238;
              return rawValue;
            case 0x478:
              *v1 = 239;
              return rawValue;
            case 0x479:
              *v1 = 240;
              return rawValue;
            case 0x47A:
              *v1 = 241;
              return rawValue;
            case 0x47B:
              *v1 = 242;
              return rawValue;
            case 0x47C:
              *v1 = 243;
              return rawValue;
            case 0x47D:
              *v1 = 244;
              return rawValue;
            case 0x47E:
              *v1 = 245;
              return rawValue;
            case 0x47F:
              *v1 = 246;
              return rawValue;
            case 0x480:
              *v1 = 247;
              return rawValue;
            case 0x481:
              *v1 = 248;
              return rawValue;
            case 0x482:
              *v1 = 249;
              return rawValue;
            case 0x483:
              *v1 = 250;
              return rawValue;
            case 0x484:
              *v1 = 251;
              return rawValue;
            case 0x485:
              *v1 = 252;
              return rawValue;
            case 0x486:
              *v1 = 253;
              return rawValue;
            case 0x487:
              *v1 = 254;
              return rawValue;
            case 0x488:
              *v1 = 255;
              return rawValue;
            default:
              v2 = 256;
              switch(rawValue.value)
              {
                case 0x489:
                  goto LABEL_3;
                case 0x490:
                  *v1 = 257;
                  return rawValue;
                case 0x491:
                  *v1 = 258;
                  return rawValue;
                case 0x492:
                  *v1 = 259;
                  return rawValue;
                case 0x493:
                  *v1 = 260;
                  return rawValue;
                case 0x494:
                  *v1 = 261;
                  return rawValue;
                case 0x495:
                  *v1 = 262;
                  return rawValue;
                case 0x496:
                  *v1 = 263;
                  return rawValue;
                case 0x497:
                  *v1 = 264;
                  return rawValue;
                case 0x498:
                  *v1 = 265;
                  return rawValue;
                case 0x4A0:
                  *v1 = 266;
                  return rawValue;
                case 0x4A1:
                  *v1 = 267;
                  return rawValue;
                case 0x4A2:
                  *v1 = 268;
                  return rawValue;
                case 0x4A3:
                  *v1 = 269;
                  return rawValue;
                case 0x4B0:
                  *v1 = 270;
                  return rawValue;
                case 0x4B1:
                  *v1 = 271;
                  return rawValue;
                case 0x4B2:
                  *v1 = 272;
                  return rawValue;
                case 0x4B3:
                  *v1 = 273;
                  return rawValue;
                case 0x4B4:
                  *v1 = 274;
                  return rawValue;
                case 0x4B5:
                  *v1 = 275;
                  return rawValue;
                case 0x4B6:
                  *v1 = 276;
                  return rawValue;
                case 0x4B7:
                  *v1 = 277;
                  return rawValue;
                case 0x4B8:
                  *v1 = 278;
                  return rawValue;
                case 0x4B9:
                  *v1 = 279;
                  return rawValue;
                case 0x4BA:
                  *v1 = 280;
                  return rawValue;
                case 0x4BB:
                  *v1 = 281;
                  return rawValue;
                case 0x4BC:
                  *v1 = 282;
                  return rawValue;
                case 0x4BD:
                  *v1 = 283;
                  return rawValue;
                case 0x4D0:
                  *v1 = 284;
                  return rawValue;
                case 0x4D1:
                  *v1 = 285;
                  return rawValue;
                case 0x4D2:
                  *v1 = 286;
                  return rawValue;
                case 0x4D3:
                  *v1 = 287;
                  return rawValue;
                case 0x4D4:
                  *v1 = 288;
                  return rawValue;
                case 0x4D5:
                  *v1 = 289;
                  return rawValue;
                case 0x4D6:
                  *v1 = 290;
                  return rawValue;
                case 0x4D7:
                  *v1 = 291;
                  return rawValue;
                case 0x4D8:
                  *v1 = 292;
                  return rawValue;
                case 0x4D9:
                  *v1 = 293;
                  return rawValue;
                case 0x4DA:
                  *v1 = 294;
                  return rawValue;
                case 0x4DB:
                  *v1 = 295;
                  return rawValue;
                case 0x4DC:
                  *v1 = 296;
                  return rawValue;
                case 0x4DD:
                  *v1 = 297;
                  return rawValue;
                case 0x4DE:
                  *v1 = 298;
                  return rawValue;
                case 0x4DF:
                  *v1 = 299;
                  return rawValue;
                case 0x4E0:
                  *v1 = 300;
                  return rawValue;
                case 0x4E2:
                  *v1 = 301;
                  return rawValue;
                case 0x4E3:
                  *v1 = 302;
                  return rawValue;
                case 0x4F0:
                  *v1 = 303;
                  return rawValue;
                case 0x4F1:
                  *v1 = 304;
                  return rawValue;
                case 0x4F2:
                  *v1 = 305;
                  return rawValue;
                case 0x4F8:
                  *v1 = 306;
                  return rawValue;
                case 0x4F9:
                  *v1 = 307;
                  return rawValue;
                case 0x500:
                  *v1 = 308;
                  return rawValue;
                case 0x501:
                  *v1 = 309;
                  return rawValue;
                case 0x502:
                  *v1 = 310;
                  return rawValue;
                case 0x503:
                  *v1 = 311;
                  return rawValue;
                case 0x504:
                  *v1 = 312;
                  return rawValue;
                case 0x505:
                  *v1 = 313;
                  return rawValue;
                case 0x506:
                  *v1 = 314;
                  return rawValue;
                case 0x507:
                  *v1 = 315;
                  return rawValue;
                case 0x508:
                  *v1 = 316;
                  return rawValue;
                case 0x509:
                  *v1 = 317;
                  return rawValue;
                case 0x520:
                  *v1 = 318;
                  return rawValue;
                case 0x521:
                  *v1 = 319;
                  return rawValue;
                default:
                  v2 = 320;
                  switch(rawValue.value)
                  {
                    case CoreHID_HIDUsage_SensorsUsage_dataFieldConsumerIRSentenceReceive|0x400:
                      goto LABEL_3;
                    case CoreHID_HIDUsage_SensorsUsage_dataFieldInfraredLight|0x400:
                      *v1 = 321;
                      return rawValue;
                    case CoreHID_HIDUsage_SensorsUsage_dataFieldRedLight|0x400:
                      *v1 = 322;
                      return rawValue;
                    case CoreHID_HIDUsage_SensorsUsage_dataFieldGreenLight|0x400:
                      *v1 = 323;
                      return rawValue;
                    case CoreHID_HIDUsage_SensorsUsage_dataFieldBlueLight|0x400:
                      *v1 = 324;
                      return rawValue;
                    case CoreHID_HIDUsage_SensorsUsage_dataFieldUltravioletALight|0x400:
                      *v1 = 325;
                      return rawValue;
                    case CoreHID_HIDUsage_SensorsUsage_dataFieldUltravioletBLight|0x400:
                      *v1 = 326;
                      return rawValue;
                    case CoreHID_HIDUsage_SensorsUsage_dataFieldUltravioletIndex|0x400:
                      *v1 = 327;
                      return rawValue;
                    case CoreHID_HIDUsage_SensorsUsage_dataFieldNearInfraredLight|0x400:
                      *v1 = 328;
                      return rawValue;
                    case CoreHID_HIDUsage_SensorsUsage_propertyLight|0x400:
                      *v1 = 329;
                      return rawValue;
                    case CoreHID_HIDUsage_SensorsUsage_dataFieldRFIDTag40Bit|0x400:
                      *v1 = 330;
                      return rawValue;
                    case CoreHID_HIDUsage_SensorsUsage_dataFieldNFCSentenceReceive|0x400:
                      *v1 = 331;
                      return rawValue;
                    case CoreHID_HIDUsage_SensorsUsage_propertyScanner|0x400:
                      *v1 = 332;
                      return rawValue;
                    case CoreHID_HIDUsage_SensorsUsage_propertyNFCSentenceSend|0x400:
                      *v1 = 333;
                      return rawValue;
                    case CoreHID_HIDUsage_SensorsUsage_dataFieldElectrical|0x400:
                      *v1 = 334;
                      return rawValue;
                    case CoreHID_HIDUsage_SensorsUsage_dataFieldCapacitance|0x400:
                      *v1 = 335;
                      return rawValue;
                    case CoreHID_HIDUsage_SensorsUsage_dataFieldMonth|0x400:
                      *v1 = 336;
                      return rawValue;
                    case CoreHID_HIDUsage_SensorsUsage_dataFieldDay|0x400:
                      *v1 = 337;
                      return rawValue;
                    case CoreHID_HIDUsage_SensorsUsage_dataFieldDayOfWeek|0x400:
                      *v1 = 338;
                      return rawValue;
                    case CoreHID_HIDUsage_SensorsUsage_dataFieldHour|0x400:
                      *v1 = 339;
                      return rawValue;
                    case CoreHID_HIDUsage_SensorsUsage_dataFieldMinute|0x400:
                      *v1 = 340;
                      return rawValue;
                    case CoreHID_HIDUsage_SensorsUsage_dataFieldSecond|0x400:
                      *v1 = 341;
                      return rawValue;
                    case CoreHID_HIDUsage_SensorsUsage_dataFieldMillisecond|0x400:
                      *v1 = 342;
                      return rawValue;
                    case CoreHID_HIDUsage_SensorsUsage_dataFieldTimestamp|0x400:
                      *v1 = 343;
                      return rawValue;
                    case CoreHID_HIDUsage_SensorsUsage_dataFieldJulianDayOfYear|0x400:
                      *v1 = 344;
                      return rawValue;
                    case CoreHID_HIDUsage_SensorsUsage_dataFieldTimeSinceSystemBoot|0x400:
                      *v1 = 345;
                      return rawValue;
                    case CoreHID_HIDUsage_SensorsUsage_propertyTime|0x400:
                      *v1 = 346;
                      return rawValue;
                    case CoreHID_HIDUsage_SensorsUsage_propertyTimeZoneOffsetFromUTC|0x400:
                      *v1 = 347;
                      return rawValue;
                    case CoreHID_HIDUsage_SensorsUsage_propertyTimeZoneName|0x400:
                      *v1 = 348;
                      return rawValue;
                    case CoreHID_HIDUsage_SensorsUsage_propertyDaylightSavingsTimeObserved|0x400:
                      *v1 = 349;
                      return rawValue;
                    case CoreHID_HIDUsage_SensorsUsage_propertyTimeTrimAdjustment|0x400:
                      *v1 = 350;
                      return rawValue;
                    case CoreHID_HIDUsage_SensorsUsage_propertyArmAlarm|0x400:
                      *v1 = 351;
                      return rawValue;
                    case CoreHID_HIDUsage_SensorsUsage_dataFieldCustom|0x400:
                      *v1 = 352;
                      return rawValue;
                    case CoreHID_HIDUsage_SensorsUsage_dataFieldCustomUsage|0x400:
                      *v1 = 353;
                      return rawValue;
                    case CoreHID_HIDUsage_SensorsUsage_dataFieldCustomBooleanArray|0x400:
                      *v1 = 354;
                      return rawValue;
                    case CoreHID_HIDUsage_SensorsUsage_dataFieldCustomValue|0x400:
                      *v1 = 355;
                      return rawValue;
                    case CoreHID_HIDUsage_SensorsUsage_dataFieldCustomValue1|0x400:
                      *v1 = 356;
                      return rawValue;
                    case CoreHID_HIDUsage_SensorsUsage_dataFieldCustomValue2|0x400:
                      *v1 = 357;
                      return rawValue;
                    case CoreHID_HIDUsage_SensorsUsage_dataFieldCustomValue3|0x400:
                      *v1 = 358;
                      return rawValue;
                    case CoreHID_HIDUsage_SensorsUsage_dataFieldCustomValue4|0x400:
                      *v1 = 359;
                      return rawValue;
                    case CoreHID_HIDUsage_SensorsUsage_dataFieldCustomValue5|0x400:
                      *v1 = 360;
                      return rawValue;
                    case CoreHID_HIDUsage_SensorsUsage_dataFieldCustomValue6|0x400:
                      *v1 = 361;
                      return rawValue;
                    case CoreHID_HIDUsage_SensorsUsage_dataFieldCustomValue7|0x400:
                      *v1 = 362;
                      return rawValue;
                    case CoreHID_HIDUsage_SensorsUsage_dataFieldCustomValue8|0x400:
                      *v1 = 363;
                      return rawValue;
                    case CoreHID_HIDUsage_SensorsUsage_dataFieldCustomValue9|0x400:
                      *v1 = 364;
                      return rawValue;
                    case CoreHID_HIDUsage_SensorsUsage_dataFieldCustomValue10|0x400:
                      *v1 = 365;
                      return rawValue;
                    case CoreHID_HIDUsage_SensorsUsage_dataFieldCustomValue11|0x400:
                      *v1 = 366;
                      return rawValue;
                    case CoreHID_HIDUsage_SensorsUsage_dataFieldCustomValue12|0x400:
                      *v1 = 367;
                      return rawValue;
                    case CoreHID_HIDUsage_SensorsUsage_dataFieldCustomValue13|0x400:
                      *v1 = 368;
                      return rawValue;
                    case CoreHID_HIDUsage_SensorsUsage_dataFieldCustomValue14|0x400:
                      *v1 = 369;
                      return rawValue;
                    case CoreHID_HIDUsage_SensorsUsage_dataFieldCustomValue15|0x400:
                      *v1 = 370;
                      return rawValue;
                    case CoreHID_HIDUsage_SensorsUsage_dataFieldCustomValue16|0x400:
                      *v1 = 371;
                      return rawValue;
                    case CoreHID_HIDUsage_SensorsUsage_dataFieldCustomValue17|0x400:
                      *v1 = 372;
                      return rawValue;
                    case CoreHID_HIDUsage_SensorsUsage_dataFieldCustomValue18|0x400:
                      *v1 = 373;
                      return rawValue;
                    case CoreHID_HIDUsage_SensorsUsage_dataFieldCustomValue19|0x400:
                      *v1 = 374;
                      return rawValue;
                    case CoreHID_HIDUsage_SensorsUsage_dataFieldCustomValue20|0x400:
                      *v1 = 375;
                      return rawValue;
                    case CoreHID_HIDUsage_SensorsUsage_dataFieldCustomValue21|0x400:
                      *v1 = 376;
                      return rawValue;
                    case CoreHID_HIDUsage_SensorsUsage_dataFieldCustomValue22|0x400:
                      *v1 = 377;
                      return rawValue;
                    case CoreHID_HIDUsage_SensorsUsage_dataFieldCustomValue23|0x400:
                      *v1 = 378;
                      return rawValue;
                    case CoreHID_HIDUsage_SensorsUsage_dataFieldCustomValue24|0x400:
                      *v1 = 379;
                      return rawValue;
                    case CoreHID_HIDUsage_SensorsUsage_dataFieldCustomValue25|0x400:
                      *v1 = 380;
                      return rawValue;
                    case CoreHID_HIDUsage_SensorsUsage_dataFieldCustomValue26|0x400:
                      *v1 = 381;
                      return rawValue;
                    case CoreHID_HIDUsage_SensorsUsage_dataFieldCustomValue27|0x400:
                      *v1 = 382;
                      return rawValue;
                    case CoreHID_HIDUsage_SensorsUsage_dataFieldCustomValue28|0x400:
                      *v1 = 383;
                      return rawValue;
                    default:
                      v2 = 384;
                      switch(rawValue.value)
                      {
                        case CoreHID_HIDUsage_SensorsUsage_dataFieldGeneric|0x400:
                          goto LABEL_3;
                        case CoreHID_HIDUsage_SensorsUsage_dataFieldGenericGUIDOrPropertyKey|0x400:
                          *v1 = 385;
                          return rawValue;
                        case CoreHID_HIDUsage_SensorsUsage_dataFieldGenericCategoryGUID|0x400:
                          *v1 = 386;
                          return rawValue;
                        case CoreHID_HIDUsage_SensorsUsage_dataFieldGenericTypeGUID|0x400:
                          *v1 = 387;
                          return rawValue;
                        case CoreHID_HIDUsage_SensorsUsage_dataFieldGenericEventPropertyKey|0x400:
                          *v1 = 388;
                          return rawValue;
                        case CoreHID_HIDUsage_SensorsUsage_dataFieldGenericPropertyPropertyKey|0x400:
                          *v1 = 389;
                          return rawValue;
                        case CoreHID_HIDUsage_SensorsUsage_dataFieldGenericDataFieldPropertyKey|0x400:
                          *v1 = 390;
                          return rawValue;
                        case CoreHID_HIDUsage_SensorsUsage_dataFieldGenericEvent|0x400:
                        case CoreHID_HIDUsage_SensorsUsage_dataFieldGenericProperty|0x400:
                        case CoreHID_HIDUsage_SensorsUsage_dataFieldGenericDataField|0x400:
                        case CoreHID_HIDUsage_SensorsUsage_dataFieldEnumeratorTableRowIndex|0x400:
                        case CoreHID_HIDUsage_SensorsUsage_dataFieldEnumeratorTableRowCount|0x400:
                        case CoreHID_HIDUsage_SensorsUsage_dataFieldGenericGUIDOrPropertyKeyKind|0x400:
                        case CoreHID_HIDUsage_SensorsUsage_dataFieldGenericGUID|0x400:
                        case CoreHID_HIDUsage_SensorsUsage_dataFieldGenericPropertyKey|0x400:
                        case CoreHID_HIDUsage_SensorsUsage_dataFieldGenericTopLevelCollectionID|0x400:
                        case CoreHID_HIDUsage_SensorsUsage_dataFieldGenericUnitOfMeasure|0x400:
                        case CoreHID_HIDUsage_SensorsUsage_dataFieldGenericUnitExponent|0x400:
                        case CoreHID_HIDUsage_SensorsUsage_dataFieldGenericReportSize|0x400:
                        case CoreHID_HIDUsage_SensorsUsage_dataFieldGenericReportCount|0x400:
                        case CoreHID_HIDUsage_SensorsUsage_propertyGeneric|0x400:
                        case CoreHID_HIDUsage_SensorsUsage_propertyEnumeratorTableRowIndex|0x400:
                        case CoreHID_HIDUsage_SensorsUsage_propertyEnumeratorTableRowCount|0x400:
                        case CoreHID_HIDUsage_SensorsUsage_dataFieldPersonalActivity|0x400:
                        case CoreHID_HIDUsage_SensorsUsage_dataFieldActivityType|0x400:
                        case CoreHID_HIDUsage_SensorsUsage_dataFieldActivityState|0x400:
                        case CoreHID_HIDUsage_SensorsUsage_dataFieldDevicePosition|0x400:
                        case CoreHID_HIDUsage_SensorsUsage_dataFieldStepCount|0x400:
                        case CoreHID_HIDUsage_SensorsUsage_dataFieldStepCountReset|0x400:
                        case CoreHID_HIDUsage_SensorsUsage_dataFieldCustomTypeID|0x400:
                        case CoreHID_HIDUsage_SensorsUsage_propertyCustom|0x400:
                        case CoreHID_HIDUsage_SensorsUsage_propertyCustomValue1|0x400:
                        case CoreHID_HIDUsage_SensorsUsage_propertyCustomValue2|0x400:
                        case CoreHID_HIDUsage_SensorsUsage_propertyCustomValue3|0x400:
                        case CoreHID_HIDUsage_SensorsUsage_propertyCustomValue4|0x400:
                        case CoreHID_HIDUsage_SensorsUsage_propertyCustomValue5|0x400:
                        case CoreHID_HIDUsage_SensorsUsage_propertyCustomValue6|0x400:
                        case CoreHID_HIDUsage_SensorsUsage_propertyCustomValue13|0x400:
                        case CoreHID_HIDUsage_SensorsUsage_propertyCustomValue14|0x400:
                        case CoreHID_HIDUsage_SensorsUsage_propertyCustomValue15|0x400:
                        case CoreHID_HIDUsage_SensorsUsage_propertyCustomValue16|0x400:
                        case CoreHID_HIDUsage_SensorsUsage_dataFieldHinge|0x400:
                        case CoreHID_HIDUsage_SensorsUsage_dataFieldHingeAngle|0x400:
                        case CoreHID_HIDUsage_SensorsUsage_dataFieldGestureSensor|0x400:
                        case CoreHID_HIDUsage_SensorsUsage_dataFieldGestureState|0x400:
                        case CoreHID_HIDUsage_SensorsUsage_dataFieldHingeFoldInitialAngle|0x400:
                        case CoreHID_HIDUsage_SensorsUsage_dataFieldHingeFoldFinalAngle|0x400:
                        case CoreHID_HIDUsage_SensorsUsage_dataFieldHingeFoldType|0x400:
                        case CoreHID_HIDUsage_SensorsUsage_sensorStateUndefined|0x400:
                        case CoreHID_HIDUsage_SensorsUsage_sensorStateReady|0x400:
                        case CoreHID_HIDUsage_SensorsUsage_sensorStateNotAvailable|0x400:
                        case CoreHID_HIDUsage_SensorsUsage_sensorStateNoData|0x400:
                        case CoreHID_HIDUsage_SensorsUsage_sensorStateInitializing|0x400:
                        case CoreHID_HIDUsage_SensorsUsage_sensorStateAccessDenied|0x400:
                        case CoreHID_HIDUsage_SensorsUsage_sensorStateError|0x400:
                        case CoreHID_HIDUsage_SensorsUsage_sensorEventUnknown|0x400:
                        case CoreHID_HIDUsage_SensorsUsage_sensorEventStateChanged|0x400:
                        case CoreHID_HIDUsage_SensorsUsage_sensorEventPropertyChanged|0x400:
                        case CoreHID_HIDUsage_SensorsUsage_sensorEventDataUpdated|0x400:
                        case CoreHID_HIDUsage_SensorsUsage_sensorEventPollResponse|0x400:
                        case CoreHID_HIDUsage_SensorsUsage_sensorEventChangeSensitivity|0x400:
                        case CoreHID_HIDUsage_SensorsUsage_sensorEventRangeMaximumReached|0x400:
                        case CoreHID_HIDUsage_SensorsUsage_reportingStateWakeOnAllEvents|0x400:
                        case CoreHID_HIDUsage_SensorsUsage_reportingStateWakeOnThresholdEvents|0x400:
                        case CoreHID_HIDUsage_SensorsUsage_powerStateUndefined|0x400:
                        case CoreHID_HIDUsage_SensorsUsage_powerStateD0FullPower|0x400:
                        case CoreHID_HIDUsage_SensorsUsage_powerStateD1LowPower|0x400:
                        case CoreHID_HIDUsage_SensorsUsage_powerStateD2StandbyPowerWithWakeup|0x400:
                        case CoreHID_HIDUsage_SensorsUsage_powerStateD3SleepWithWakeup|0x400:
                        case CoreHID_HIDUsage_SensorsUsage_powerStateD4PowerOff|0x400:
                        case CoreHID_HIDUsage_SensorsUsage_accuracyDefault|0x400:
                        case CoreHID_HIDUsage_SensorsUsage_accuracyHigh|0x400:
                        case CoreHID_HIDUsage_SensorsUsage_accuracyMedium|0x400:
                        case CoreHID_HIDUsage_SensorsUsage_accuracyLow|0x400:
                        case CoreHID_HIDUsage_SensorsUsage_fixQualityNoFix|0x400:
                        case CoreHID_HIDUsage_SensorsUsage_fixQualityGPS|0x400:
                        case CoreHID_HIDUsage_SensorsUsage_fixQualityDGPS|0x400:
                        case CoreHID_HIDUsage_SensorsUsage_fixTypeDGPSSPSModeFixValid|0x400:
                        case CoreHID_HIDUsage_SensorsUsage_fixTypeGPSPPSModeFixValid|0x400:
                        case CoreHID_HIDUsage_SensorsUsage_fixTypeRealTimeKinematic|0x400:
                        case CoreHID_HIDUsage_SensorsUsage_fixTypeFloatRTK|0x400:
                        case CoreHID_HIDUsage_SensorsUsage_fixTypeEstimatedDeadReckoned|0x400:
                        case CoreHID_HIDUsage_SensorsUsage_fixTypeManualInputMode|0x400:
                        case CoreHID_HIDUsage_SensorsUsage_fixTypeSimulatorMode|0x400:
                        case CoreHID_HIDUsage_SensorsUsage_gpsOperationModeManual|0x400:
                        case CoreHID_HIDUsage_SensorsUsage_gpsOperationModeAutomatic|0x400:
                        case CoreHID_HIDUsage_SensorsUsage_gpsSelectionModeAutonomous|0x400:
                        case CoreHID_HIDUsage_SensorsUsage_gpsSelectionModeDGPS|0x400:
                        case CoreHID_HIDUsage_SensorsUsage_gpsSelectionModeEstimatedDeadReckoned|0x400:
                        case CoreHID_HIDUsage_SensorsUsage_gpsSelectionModeManualInput|0x400:
                        case CoreHID_HIDUsage_SensorsUsage_gpsSelectionModeSimulator|0x400:
                          goto LABEL_451;
                        case CoreHID_HIDUsage_SensorsUsage_dataFieldGenericReportID|0x400:
                          *v1 = 391;
                          return rawValue;
                        case CoreHID_HIDUsage_SensorsUsage_dataFieldGenericReportItemPositionIndex|0x400:
                          *v1 = 392;
                          return rawValue;
                        case CoreHID_HIDUsage_SensorsUsage_dataFieldGenericFirmwareVARTYPE|0x400:
                          *v1 = 393;
                          return rawValue;
                        case CoreHID_HIDUsage_SensorsUsage_dataFieldStepDuration|0x400:
                          *v1 = 394;
                          return rawValue;
                        case CoreHID_HIDUsage_SensorsUsage_dataFieldStepType|0x400:
                          *v1 = 395;
                          return rawValue;
                        case CoreHID_HIDUsage_SensorsUsage_propertyMinimumActivityDetectionInterval|0x400:
                          *v1 = 396;
                          return rawValue;
                        case CoreHID_HIDUsage_SensorsUsage_propertySupportedActivityTypes|0x400:
                          *v1 = 397;
                          return rawValue;
                        case CoreHID_HIDUsage_SensorsUsage_propertySubscribedActivityTypes|0x400:
                          *v1 = 398;
                          return rawValue;
                        case CoreHID_HIDUsage_SensorsUsage_propertySupportedStepTypes|0x400:
                          *v1 = 399;
                          return rawValue;
                        case CoreHID_HIDUsage_SensorsUsage_propertySubscribedStepTypes|0x400:
                          *v1 = 400;
                          return rawValue;
                        case CoreHID_HIDUsage_SensorsUsage_propertyFloorHeight|0x400:
                          *v1 = 401;
                          return rawValue;
                        case CoreHID_HIDUsage_SensorsUsage_propertyCustomValue7|0x400:
                          *v1 = 402;
                          return rawValue;
                        case CoreHID_HIDUsage_SensorsUsage_propertyCustomValue8|0x400:
                          *v1 = 403;
                          return rawValue;
                        case CoreHID_HIDUsage_SensorsUsage_propertyCustomValue9|0x400:
                          *v1 = 404;
                          return rawValue;
                        case CoreHID_HIDUsage_SensorsUsage_propertyCustomValue10|0x400:
                          *v1 = 405;
                          return rawValue;
                        case CoreHID_HIDUsage_SensorsUsage_propertyCustomValue11|0x400:
                          *v1 = 406;
                          return rawValue;
                        case CoreHID_HIDUsage_SensorsUsage_propertyCustomValue12|0x400:
                          *v1 = 407;
                          return rawValue;
                        case CoreHID_HIDUsage_SensorsUsage_dataFieldHingeFoldContributingPanel|0x400:
                          *v1 = 408;
                          return rawValue;
                        case CoreHID_HIDUsage_SensorsUsage_sensorEventRangeMinimumReached|0x400:
                          *v1 = 409;
                          return rawValue;
                        case CoreHID_HIDUsage_SensorsUsage_sensorEventHighThresholdCrossUpward|0x400:
                          *v1 = 410;
                          return rawValue;
                        case CoreHID_HIDUsage_SensorsUsage_sensorEventHighThresholdCrossDownward|0x400:
                          *v1 = 411;
                          return rawValue;
                        case CoreHID_HIDUsage_SensorsUsage_sensorEventLowThresholdCrossUpward|0x400:
                          *v1 = 412;
                          return rawValue;
                        case CoreHID_HIDUsage_SensorsUsage_sensorEventLowThresholdCrossDownward|0x400:
                          *v1 = 413;
                          return rawValue;
                        case CoreHID_HIDUsage_SensorsUsage_sensorEventZeroThresholdCrossUpward|0x400:
                          *v1 = 414;
                          return rawValue;
                        case CoreHID_HIDUsage_SensorsUsage_sensorEventZeroThresholdCrossDownward|0x400:
                          *v1 = 415;
                          return rawValue;
                        case CoreHID_HIDUsage_SensorsUsage_sensorEventPeriodExceeded|0x400:
                          *v1 = 416;
                          return rawValue;
                        case CoreHID_HIDUsage_SensorsUsage_sensorEventFrequencyExceeded|0x400:
                          *v1 = 417;
                          return rawValue;
                        case CoreHID_HIDUsage_SensorsUsage_sensorEventComplexTrigger|0x400:
                          *v1 = 418;
                          return rawValue;
                        case CoreHID_HIDUsage_SensorsUsage_connectionTypePCIntegrated|0x400:
                          *v1 = 419;
                          return rawValue;
                        case CoreHID_HIDUsage_SensorsUsage_connectionTypePCAttached|0x400:
                          *v1 = 420;
                          return rawValue;
                        case CoreHID_HIDUsage_SensorsUsage_connectionTypePCExternal|0x400:
                          *v1 = 421;
                          return rawValue;
                        case CoreHID_HIDUsage_SensorsUsage_reportingStateReportNoEvents|0x400:
                          *v1 = 422;
                          return rawValue;
                        case CoreHID_HIDUsage_SensorsUsage_reportingStateReportAllEvents|0x400:
                          *v1 = 423;
                          return rawValue;
                        case CoreHID_HIDUsage_SensorsUsage_reportingStateReportThresholdEvents|0x400:
                          *v1 = 424;
                          return rawValue;
                        case CoreHID_HIDUsage_SensorsUsage_reportingStateWakeOnNoEvents|0x400:
                          *v1 = 425;
                          return rawValue;
                        case CoreHID_HIDUsage_SensorsUsage_fixTypeNoFix|0x400:
                          *v1 = 426;
                          return rawValue;
                        case CoreHID_HIDUsage_SensorsUsage_fixTypeGPSSPSModeFixValid|0x400:
                          *v1 = 427;
                          return rawValue;
                        case CoreHID_HIDUsage_SensorsUsage_gpsSelectionModeDataNotValid|0x400:
                          *v1 = 428;
                          return rawValue;
                        case CoreHID_HIDUsage_SensorsUsage_gpsStatusDataValid|0x400:
                          *v1 = 429;
                          return rawValue;
                        case CoreHID_HIDUsage_SensorsUsage_gpsStatusDataNotValid|0x400:
                          *v1 = 430;
                          return rawValue;
                        case CoreHID_HIDUsage_SensorsUsage_dayOfWeekSunday|0x400:
                          *v1 = 431;
                          return rawValue;
                        case CoreHID_HIDUsage_SensorsUsage_dayOfWeekMonday|0x400:
                          *v1 = 432;
                          return rawValue;
                        case CoreHID_HIDUsage_SensorsUsage_dayOfWeekTuesday|0x400:
                          *v1 = 433;
                          return rawValue;
                        default:
                          switch(rawValue.value)
                          {
                            case 0x800:
                              *v1 = 434;
                              return rawValue;
                            case 0x801:
                              *v1 = 435;
                              return rawValue;
                            case 0x802:
                              *v1 = 436;
                              return rawValue;
                            case 0x803:
                              *v1 = 437;
                              return rawValue;
                            case 0x804:
                              *v1 = 438;
                              return rawValue;
                            case 0x805:
                              *v1 = 439;
                              return rawValue;
                            case 0x806:
                              *v1 = 440;
                              return rawValue;
                            case 0x810:
                              *v1 = 441;
                              return rawValue;
                            case 0x811:
                              *v1 = 442;
                              return rawValue;
                            case 0x812:
                              *v1 = 443;
                              return rawValue;
                            case 0x813:
                              *v1 = 444;
                              return rawValue;
                            case 0x814:
                              *v1 = 445;
                              return rawValue;
                            case 0x815:
                              *v1 = 446;
                              return rawValue;
                            case 0x816:
                              *v1 = 447;
                              return rawValue;
                            default:
                              goto LABEL_451;
                          }
                      }
                  }
              }
          }
      }
  }

LABEL_451:
  v2 = 448;
  switch(rawValue.value)
  {
    case 0x817:
      goto LABEL_3;
    case 0x818:
      *v1 = 449;
      return rawValue;
    case 0x819:
      *v1 = 450;
      return rawValue;
    case 0x81A:
      *v1 = 451;
      return rawValue;
    case 0x81B:
      *v1 = 452;
      return rawValue;
    case 0x81C:
      *v1 = 453;
      return rawValue;
    case 0x81D:
      *v1 = 454;
      return rawValue;
    case 0x81E:
      *v1 = 455;
      return rawValue;
    case 0x81F:
      *v1 = 456;
      return rawValue;
    case 0x820:
      *v1 = 457;
      return rawValue;
    case 0x830:
      *v1 = 458;
      return rawValue;
    case 0x831:
      *v1 = 459;
      return rawValue;
    case 0x832:
      *v1 = 460;
      return rawValue;
    case 0x840:
      *v1 = 461;
      return rawValue;
    case 0x841:
      *v1 = 462;
      return rawValue;
    case 0x842:
      *v1 = 463;
      return rawValue;
    case 0x843:
      *v1 = 464;
      return rawValue;
    case 0x844:
      *v1 = 465;
      return rawValue;
    case 0x845:
      *v1 = 466;
      return rawValue;
    case 0x850:
      *v1 = 467;
      return rawValue;
    case 0x851:
      *v1 = 468;
      return rawValue;
    case 0x852:
      *v1 = 469;
      return rawValue;
    case 0x853:
      *v1 = 470;
      return rawValue;
    case 0x854:
      *v1 = 471;
      return rawValue;
    case 0x855:
      *v1 = 472;
      return rawValue;
    case 0x860:
      *v1 = 473;
      return rawValue;
    case 0x861:
      *v1 = 474;
      return rawValue;
    case 0x862:
      *v1 = 475;
      return rawValue;
    case 0x863:
      *v1 = 476;
      return rawValue;
    case 0x870:
      *v1 = 477;
      return rawValue;
    case 0x871:
      *v1 = 478;
      return rawValue;
    case 0x872:
      *v1 = 479;
      return rawValue;
    case 0x880:
      *v1 = 480;
      return rawValue;
    case 0x881:
      *v1 = 481;
      return rawValue;
    case 0x882:
      *v1 = 482;
      return rawValue;
    case 0x883:
      *v1 = 483;
      return rawValue;
    case 0x884:
      *v1 = 484;
      return rawValue;
    case 0x885:
      *v1 = 485;
      return rawValue;
    case 0x886:
      *v1 = 486;
      return rawValue;
    case 0x887:
      *v1 = 487;
      return rawValue;
    case 0x888:
      *v1 = 488;
      return rawValue;
    case 0x890:
      *v1 = 489;
      return rawValue;
    case 0x891:
      *v1 = 490;
      return rawValue;
    case 0x8A0:
      *v1 = 491;
      return rawValue;
    case 0x8A1:
      *v1 = 492;
      return rawValue;
    case 0x8A2:
      *v1 = 493;
      return rawValue;
    case 0x8A3:
      *v1 = 494;
      return rawValue;
    case 0x8A4:
      *v1 = 495;
      return rawValue;
    case 0x8A5:
      *v1 = 496;
      return rawValue;
    case 0x8B0:
      *v1 = 497;
      return rawValue;
    case 0x8B1:
      *v1 = 498;
      return rawValue;
    case 0x8C0:
      *v1 = 499;
      return rawValue;
    case 0x8C1:
      *v1 = 500;
      return rawValue;
    case 0x8C2:
      *v1 = 501;
      return rawValue;
    case 0x8C3:
      *v1 = 502;
      return rawValue;
    case 0x8C4:
      *v1 = 503;
      return rawValue;
    case 0x8C5:
      *v1 = 504;
      return rawValue;
    case 0x8C6:
      *v1 = 505;
      return rawValue;
    case 0x8D0:
      *v1 = 506;
      return rawValue;
    case 0x8D1:
      *v1 = 507;
      return rawValue;
    case 0x8D2:
      *v1 = 508;
      return rawValue;
    case 0x8D3:
      *v1 = 509;
      return rawValue;
    case 0x8D4:
      *v1 = 510;
      return rawValue;
    case 0x8E0:
      *v1 = 511;
      return rawValue;
    default:
      v2 = 512;
      switch(rawValue.value)
      {
        case 0x8E1:
          goto LABEL_3;
        case 0x8E2:
          *v1 = 513;
          return rawValue;
        case 0x8F0:
          *v1 = 514;
          return rawValue;
        case 0x8F1:
          *v1 = 515;
          return rawValue;
        case 0x8F2:
          *v1 = 516;
          return rawValue;
        case 0x8F3:
          *v1 = 517;
          return rawValue;
        case 0x8F4:
          *v1 = 518;
          return rawValue;
        case 0x8F5:
          *v1 = 519;
          return rawValue;
        case 0x900:
          *v1 = 520;
          return rawValue;
        case 0x901:
          *v1 = 521;
          return rawValue;
        case 0x902:
          *v1 = 522;
          return rawValue;
        case 0x903:
          *v1 = 523;
          return rawValue;
        case 0x904:
          *v1 = 524;
          return rawValue;
        case 0x905:
          *v1 = 525;
          return rawValue;
        case 0x906:
          *v1 = 526;
          return rawValue;
        case 0x907:
          *v1 = 527;
          return rawValue;
        case 0x908:
          *v1 = 528;
          return rawValue;
        case 0x909:
          *v1 = 529;
          return rawValue;
        case 0x90A:
          *v1 = 530;
          return rawValue;
        case 0x90B:
          *v1 = 531;
          return rawValue;
        case 0x90C:
          *v1 = 532;
          return rawValue;
        case 0x90D:
          *v1 = 533;
          return rawValue;
        case 0x90E:
          *v1 = 534;
          return rawValue;
        case 0x90F:
          *v1 = 535;
          return rawValue;
        case 0x910:
          *v1 = 536;
          return rawValue;
        case 0x911:
          *v1 = 537;
          return rawValue;
        case 0x912:
          *v1 = 538;
          return rawValue;
        case 0x913:
          *v1 = 539;
          return rawValue;
        case 0x914:
          *v1 = 540;
          return rawValue;
        case 0x915:
          *v1 = 541;
          return rawValue;
        case 0x916:
          *v1 = 542;
          return rawValue;
        case 0x917:
          *v1 = 543;
          return rawValue;
        case 0x918:
          *v1 = 544;
          return rawValue;
        case 0x919:
          *v1 = 545;
          return rawValue;
        case 0x91A:
          *v1 = 546;
          return rawValue;
        case 0x91B:
          *v1 = 547;
          return rawValue;
        case 0x91C:
          *v1 = 548;
          return rawValue;
        case 0x91D:
          *v1 = 549;
          return rawValue;
        case 0x91E:
          *v1 = 550;
          return rawValue;
        case 0x91F:
          *v1 = 551;
          return rawValue;
        case 0x920:
          *v1 = 552;
          return rawValue;
        case 0x921:
          *v1 = 553;
          return rawValue;
        case 0x922:
          *v1 = 554;
          return rawValue;
        case 0x923:
          *v1 = 555;
          return rawValue;
        case 0x924:
          *v1 = 556;
          return rawValue;
        case 0x925:
          *v1 = 557;
          return rawValue;
        case 0x926:
          *v1 = 558;
          return rawValue;
        case 0x927:
          *v1 = 559;
          return rawValue;
        case 0x928:
          *v1 = 560;
          return rawValue;
        case 0x929:
          *v1 = 561;
          return rawValue;
        case 0x92A:
          *v1 = 562;
          return rawValue;
        case 0x92B:
          *v1 = 563;
          return rawValue;
        case 0x92C:
          *v1 = 564;
          return rawValue;
        case 0x92D:
          *v1 = 565;
          return rawValue;
        case 0x92E:
          *v1 = 566;
          return rawValue;
        case 0x92F:
          *v1 = 567;
          return rawValue;
        case 0x930:
          *v1 = 568;
          return rawValue;
        case 0x931:
          *v1 = 569;
          return rawValue;
        case 0x932:
          *v1 = 570;
          return rawValue;
        case 0x933:
          *v1 = 571;
          return rawValue;
        case 0x934:
          *v1 = 572;
          return rawValue;
        case 0x935:
          *v1 = 573;
          return rawValue;
        case 0x936:
          *v1 = 574;
          return rawValue;
        case 0x937:
          *v1 = 575;
          return rawValue;
        default:
          v2 = 576;
          switch(rawValue.value)
          {
            case CoreHID_HIDUsage_SensorsUsage_dataFieldMonth|0x800:
              goto LABEL_3;
            case CoreHID_HIDUsage_SensorsUsage_dataFieldDay|0x800:
              *v1 = 577;
              return rawValue;
            case CoreHID_HIDUsage_SensorsUsage_dataFieldDayOfWeek|0x800:
              *v1 = 578;
              return rawValue;
            case CoreHID_HIDUsage_SensorsUsage_dataFieldHour|0x800:
              *v1 = 579;
              return rawValue;
            case CoreHID_HIDUsage_SensorsUsage_dataFieldMinute|0x800:
              *v1 = 580;
              return rawValue;
            case CoreHID_HIDUsage_SensorsUsage_dataFieldSecond|0x800:
              *v1 = 581;
              return rawValue;
            case CoreHID_HIDUsage_SensorsUsage_dataFieldMillisecond|0x800:
              *v1 = 582;
              return rawValue;
            case CoreHID_HIDUsage_SensorsUsage_dataFieldTimestamp|0x800:
              *v1 = 583;
              return rawValue;
            case CoreHID_HIDUsage_SensorsUsage_dataFieldJulianDayOfYear|0x800:
              *v1 = 584;
              return rawValue;
            case CoreHID_HIDUsage_SensorsUsage_dataFieldTimeSinceSystemBoot|0x800:
              *v1 = 585;
              return rawValue;
            case CoreHID_HIDUsage_SensorsUsage_propertyTime|0x800:
              *v1 = 586;
              return rawValue;
            case CoreHID_HIDUsage_SensorsUsage_propertyTimeZoneOffsetFromUTC|0x800:
              *v1 = 587;
              return rawValue;
            case CoreHID_HIDUsage_SensorsUsage_propertyTimeZoneName|0x800:
              *v1 = 588;
              return rawValue;
            case CoreHID_HIDUsage_SensorsUsage_propertyDaylightSavingsTimeObserved|0x800:
              *v1 = 589;
              return rawValue;
            case CoreHID_HIDUsage_SensorsUsage_propertyTimeTrimAdjustment|0x800:
              *v1 = 590;
              return rawValue;
            case CoreHID_HIDUsage_SensorsUsage_propertyArmAlarm|0x800:
              *v1 = 591;
              return rawValue;
            case CoreHID_HIDUsage_SensorsUsage_dataFieldCustom|0x800:
              *v1 = 592;
              return rawValue;
            case CoreHID_HIDUsage_SensorsUsage_dataFieldCustomUsage|0x800:
              *v1 = 593;
              return rawValue;
            case CoreHID_HIDUsage_SensorsUsage_dataFieldCustomBooleanArray|0x800:
              *v1 = 594;
              return rawValue;
            case CoreHID_HIDUsage_SensorsUsage_dataFieldCustomValue|0x800:
              *v1 = 595;
              return rawValue;
            case CoreHID_HIDUsage_SensorsUsage_dataFieldCustomValue1|0x800:
              *v1 = 596;
              return rawValue;
            case CoreHID_HIDUsage_SensorsUsage_dataFieldCustomValue2|0x800:
              *v1 = 597;
              return rawValue;
            case CoreHID_HIDUsage_SensorsUsage_dataFieldCustomValue3|0x800:
              *v1 = 598;
              return rawValue;
            case CoreHID_HIDUsage_SensorsUsage_dataFieldCustomValue4|0x800:
              *v1 = 599;
              return rawValue;
            case CoreHID_HIDUsage_SensorsUsage_dataFieldCustomValue5|0x800:
              *v1 = 600;
              return rawValue;
            case CoreHID_HIDUsage_SensorsUsage_dataFieldCustomValue6|0x800:
              *v1 = 601;
              return rawValue;
            case CoreHID_HIDUsage_SensorsUsage_dataFieldCustomValue7|0x800:
              *v1 = 602;
              return rawValue;
            case CoreHID_HIDUsage_SensorsUsage_dataFieldCustomValue8|0x800:
              *v1 = 603;
              return rawValue;
            case CoreHID_HIDUsage_SensorsUsage_dataFieldCustomValue9|0x800:
              *v1 = 604;
              return rawValue;
            case CoreHID_HIDUsage_SensorsUsage_dataFieldCustomValue10|0x800:
              *v1 = 605;
              return rawValue;
            case CoreHID_HIDUsage_SensorsUsage_dataFieldCustomValue11|0x800:
              *v1 = 606;
              return rawValue;
            case CoreHID_HIDUsage_SensorsUsage_dataFieldCustomValue13|0x800:
              *v1 = 607;
              return rawValue;
            case CoreHID_HIDUsage_SensorsUsage_dataFieldCustomValue14|0x800:
              *v1 = 608;
              return rawValue;
            case CoreHID_HIDUsage_SensorsUsage_dataFieldCustomValue15|0x800:
              *v1 = 609;
              return rawValue;
            case CoreHID_HIDUsage_SensorsUsage_dataFieldGeneric|0x800:
              *v1 = 610;
              return rawValue;
            case CoreHID_HIDUsage_SensorsUsage_dataFieldGenericGUIDOrPropertyKey|0x800:
              *v1 = 611;
              return rawValue;
            case CoreHID_HIDUsage_SensorsUsage_dataFieldGenericCategoryGUID|0x800:
              *v1 = 612;
              return rawValue;
            case CoreHID_HIDUsage_SensorsUsage_dataFieldGenericTypeGUID|0x800:
              *v1 = 613;
              return rawValue;
            case CoreHID_HIDUsage_SensorsUsage_dataFieldGenericEventPropertyKey|0x800:
              *v1 = 614;
              return rawValue;
            case CoreHID_HIDUsage_SensorsUsage_dataFieldGenericPropertyPropertyKey|0x800:
              *v1 = 615;
              return rawValue;
            case CoreHID_HIDUsage_SensorsUsage_dataFieldGenericDataFieldPropertyKey|0x800:
              *v1 = 616;
              return rawValue;
            case CoreHID_HIDUsage_SensorsUsage_dataFieldGenericEvent|0x800:
              *v1 = 617;
              return rawValue;
            case CoreHID_HIDUsage_SensorsUsage_dataFieldGenericProperty|0x800:
              *v1 = 618;
              return rawValue;
            case CoreHID_HIDUsage_SensorsUsage_dataFieldGenericDataField|0x800:
              *v1 = 619;
              return rawValue;
            case CoreHID_HIDUsage_SensorsUsage_dataFieldEnumeratorTableRowIndex|0x800:
              *v1 = 620;
              return rawValue;
            case CoreHID_HIDUsage_SensorsUsage_dataFieldEnumeratorTableRowCount|0x800:
              *v1 = 621;
              return rawValue;
            case CoreHID_HIDUsage_SensorsUsage_dataFieldGenericGUIDOrPropertyKeyKind|0x800:
              *v1 = 622;
              return rawValue;
            case CoreHID_HIDUsage_SensorsUsage_dataFieldGenericGUID|0x800:
              *v1 = 623;
              return rawValue;
            case CoreHID_HIDUsage_SensorsUsage_dataFieldGenericPropertyKey|0x800:
              *v1 = 624;
              return rawValue;
            case CoreHID_HIDUsage_SensorsUsage_dataFieldGenericTopLevelCollectionID|0x800:
              *v1 = 625;
              return rawValue;
            case CoreHID_HIDUsage_SensorsUsage_dataFieldGenericReportID|0x800:
              *v1 = 626;
              return rawValue;
            case CoreHID_HIDUsage_SensorsUsage_dataFieldGenericReportItemPositionIndex|0x800:
              *v1 = 627;
              return rawValue;
            case CoreHID_HIDUsage_SensorsUsage_dataFieldGenericFirmwareVARTYPE|0x800:
              *v1 = 628;
              return rawValue;
            case CoreHID_HIDUsage_SensorsUsage_dataFieldGenericUnitOfMeasure|0x800:
              *v1 = 629;
              return rawValue;
            case CoreHID_HIDUsage_SensorsUsage_dataFieldGenericUnitExponent|0x800:
              *v1 = 630;
              return rawValue;
            case CoreHID_HIDUsage_SensorsUsage_dataFieldGenericReportSize|0x800:
              *v1 = 631;
              return rawValue;
            case CoreHID_HIDUsage_SensorsUsage_dataFieldStepDuration|0x800:
              *v1 = 632;
              return rawValue;
            case CoreHID_HIDUsage_SensorsUsage_dataFieldStepType|0x800:
              *v1 = 633;
              return rawValue;
            case CoreHID_HIDUsage_SensorsUsage_propertyMinimumActivityDetectionInterval|0x800:
              *v1 = 634;
              return rawValue;
            case CoreHID_HIDUsage_SensorsUsage_propertyCustomValue7|0x800:
              *v1 = 635;
              return rawValue;
            case CoreHID_HIDUsage_SensorsUsage_propertyCustomValue8|0x800:
              *v1 = 636;
              return rawValue;
            case CoreHID_HIDUsage_SensorsUsage_propertyCustomValue9|0x800:
              *v1 = 637;
              return rawValue;
            case CoreHID_HIDUsage_SensorsUsage_propertyCustomValue10|0x800:
              *v1 = 638;
              return rawValue;
            case CoreHID_HIDUsage_SensorsUsage_dataFieldHingeFoldContributingPanel|0x800:
              *v1 = 639;
              return rawValue;
            default:
              if (rawValue.value >= 0x3000u)
              {
                if (rawValue.value < 0x9000u)
                {
                  if (rawValue.value >= 0x6000u)
                  {
                    switch(rawValue.value)
                    {
                      case 0x6000u:
                        *v1 = 655;
                        return rawValue;
                      case 0x7000u:
                        *v1 = 656;
                        return rawValue;
                      case 0x8000u:
                        *v1 = 657;
                        return rawValue;
                    }
                  }

                  else
                  {
                    switch(rawValue.value)
                    {
                      case 0x3000:
                        *v1 = 652;
                        return rawValue;
                      case 0x4000:
                        *v1 = 653;
                        return rawValue;
                      case 0x5000:
                        *v1 = 654;
                        return rawValue;
                    }
                  }
                }

                else if (rawValue.value < 0xC000u)
                {
                  switch(rawValue.value)
                  {
                    case 0x9000u:
                      *v1 = 658;
                      return rawValue;
                    case 0xA000u:
                      *v1 = 659;
                      return rawValue;
                    case 0xB000u:
                      *v1 = 660;
                      return rawValue;
                  }
                }

                else if (rawValue.value >= 0xE000u)
                {
                  if (rawValue.value == 57344)
                  {
                    *v1 = 663;
                    return rawValue;
                  }

                  if (rawValue.value == 61440)
                  {
                    *v1 = 664;
                    return rawValue;
                  }
                }

                else
                {
                  if (rawValue.value == 49152)
                  {
                    *v1 = 661;
                    return rawValue;
                  }

                  if (rawValue.value == 53248)
                  {
                    *v1 = 662;
                    return rawValue;
                  }
                }

                goto LABEL_700;
              }

              if (rawValue.value <= (CoreHID_HIDUsage_SensorsUsage_sensorEventRangeMaximumReached|0x800))
              {
                if (rawValue.value > (CoreHID_HIDUsage_SensorsUsage_sensorStateReady|0x800))
                {
                  switch(rawValue.value)
                  {
                    case CoreHID_HIDUsage_SensorsUsage_sensorStateNotAvailable|0x800:
                      *v1 = 643;
                      return rawValue;
                    case CoreHID_HIDUsage_SensorsUsage_sensorStateNoData|0x800:
                      *v1 = 644;
                      return rawValue;
                    case CoreHID_HIDUsage_SensorsUsage_sensorStateInitializing|0x800:
                      *v1 = 645;
                      return rawValue;
                  }
                }

                else
                {
                  switch(rawValue.value)
                  {
                    case CoreHID_HIDUsage_SensorsUsage_dataFieldHingeFoldType|0x800:
                      *v1 = 640;
                      return rawValue;
                    case CoreHID_HIDUsage_SensorsUsage_sensorStateUndefined|0x800:
                      *v1 = 641;
                      return rawValue;
                    case CoreHID_HIDUsage_SensorsUsage_sensorStateReady|0x800:
                      *v1 = 642;
                      return rawValue;
                  }
                }

LABEL_700:
                *v1 = 665;
                return rawValue;
              }

              if (rawValue.value > (CoreHID_HIDUsage_SensorsUsage_sensorEventHighThresholdCrossDownward|0x800))
              {
                switch(rawValue.value)
                {
                  case 0x9C3:
                    *v1 = 649;
                    return rawValue;
                  case 0x1000:
                    *v1 = 650;
                    return rawValue;
                  case 0x2000:
                    *v1 = 651;
                    return rawValue;
                }

                goto LABEL_700;
              }

              if (rawValue.value == (CoreHID_HIDUsage_SensorsUsage_sensorEventRangeMinimumReached|0x800))
              {
                *v1 = 646;
              }

              else if (rawValue.value == (CoreHID_HIDUsage_SensorsUsage_sensorEventHighThresholdCrossUpward|0x800))
              {
                *v1 = 647;
              }

              else
              {
                *v1 = 648;
              }

              return rawValue;
          }
      }
  }
}

CoreHID::HIDUsage::MedicalInstrumentUsage_optional __swiftcall HIDUsage.MedicalInstrumentUsage.init(rawValue:)(Swift::UInt16 rawValue)
{
  v2 = 0;
  v3 = 11;
  switch(rawValue)
  {
    case 1u:
      goto LABEL_25;
    case 0x20u:
      v2 = 1;
      goto LABEL_25;
    case 0x21u:
      v2 = 2;
      goto LABEL_25;
    case 0x22u:
      v2 = 3;
      goto LABEL_25;
    case 0x23u:
      v2 = 4;
      goto LABEL_25;
    case 0x24u:
      v2 = 5;
      goto LABEL_25;
    case 0x25u:
      v2 = 6;
      goto LABEL_25;
    case 0x26u:
      v2 = 7;
      goto LABEL_25;
    case 0x27u:
      v2 = 8;
      goto LABEL_25;
    case 0x40u:
      v2 = 9;
      goto LABEL_25;
    case 0x41u:
      v2 = 10;
LABEL_25:
      v3 = v2;
      goto LABEL_26;
    case 0x42u:
LABEL_26:
      *v1 = v3;
      break;
    case 0x43u:
      *v1 = 12;
      break;
    case 0x44u:
      *v1 = 13;
      break;
    case 0x60u:
      *v1 = 14;
      break;
    case 0x61u:
      *v1 = 15;
      break;
    case 0x70u:
      *v1 = 16;
      break;
    case 0x80u:
      *v1 = 17;
      break;
    case 0x81u:
      *v1 = 18;
      break;
    case 0x82u:
      *v1 = 19;
      break;
    case 0x83u:
      *v1 = 20;
      break;
    case 0x84u:
      *v1 = 21;
      break;
    case 0x85u:
      *v1 = 22;
      break;
    case 0x86u:
      *v1 = 23;
      break;
    case 0x87u:
      *v1 = 24;
      break;
    case 0x88u:
      *v1 = 25;
      break;
    case 0x89u:
      *v1 = 26;
      break;
    case 0xA0u:
      *v1 = 27;
      break;
    case 0xA1u:
      *v1 = 28;
      break;
    default:
      *v1 = 29;
      break;
  }

  return rawValue;
}

CoreHID::HIDUsage::BrailleDisplayUsage_optional __swiftcall HIDUsage.BrailleDisplayUsage.init(rawValue:)(Swift::UInt16 rawValue)
{
  if (rawValue <= 5u)
  {
    if (rawValue <= 2u)
    {
      if (rawValue == 1)
      {
        *v1 = 0;
        return rawValue;
      }

      if (rawValue == 2)
      {
        v2 = 1;
LABEL_12:
        *v1 = v2;
        return rawValue;
      }
    }

    else
    {
      switch(rawValue)
      {
        case 3u:
          *v1 = 2;
          return rawValue;
        case 4u:
          *v1 = 3;
          return rawValue;
        case 5u:
          *v1 = 4;
          return rawValue;
      }
    }

LABEL_16:
    *v1 = 43;
    return rawValue;
  }

  v2 = 25;
  switch(rawValue)
  {
    case 0xFAu:
      *v1 = 7;
      break;
    case 0xFBu:
      *v1 = 8;
      break;
    case 0xFCu:
      *v1 = 9;
      break;
    case 0x100u:
      *v1 = 10;
      break;
    case 0x101u:
      *v1 = 11;
      break;
    case 0x200u:
      *v1 = 12;
      break;
    case 0x201u:
      *v1 = 13;
      break;
    case 0x202u:
      *v1 = 14;
      break;
    case 0x203u:
      *v1 = 15;
      break;
    case 0x204u:
      *v1 = 16;
      break;
    case 0x205u:
      *v1 = 17;
      break;
    case 0x206u:
      *v1 = 18;
      break;
    case 0x207u:
      *v1 = 19;
      break;
    case 0x208u:
      *v1 = 20;
      break;
    case 0x209u:
      *v1 = 21;
      break;
    case 0x20Au:
      *v1 = 22;
      break;
    case 0x20Bu:
      *v1 = 23;
      break;
    case 0x20Cu:
      *v1 = 24;
      break;
    case 0x20Du:
      goto LABEL_12;
    case 0x20Eu:
      *v1 = 26;
      break;
    case 0x20Fu:
      *v1 = 27;
      break;
    case 0x210u:
      *v1 = 28;
      break;
    case 0x211u:
      *v1 = 29;
      break;
    case 0x212u:
      *v1 = 30;
      break;
    case 0x213u:
      *v1 = 31;
      break;
    case 0x214u:
      *v1 = 32;
      break;
    case 0x215u:
      *v1 = 33;
      break;
    case 0x216u:
      *v1 = 34;
      break;
    case 0x217u:
      *v1 = 35;
      break;
    case 0x218u:
      *v1 = 36;
      break;
    case 0x219u:
      *v1 = 37;
      break;
    case 0x21Au:
      *v1 = 38;
      break;
    case 0x21Bu:
      *v1 = 39;
      break;
    case 0x21Cu:
      *v1 = 40;
      break;
    case 0x21Du:
      *v1 = 41;
      break;
    case 0x21Eu:
      *v1 = 42;
      break;
    default:
      goto LABEL_16;
  }

  return rawValue;
}

CoreHID::HIDUsage::LightingAndIlluminationUsage_optional __swiftcall HIDUsage.LightingAndIlluminationUsage.init(rawValue:)(Swift::UInt16 rawValue)
{
  v2 = 0;
  v3 = 15;
  switch(rawValue)
  {
    case 1u:
      goto LABEL_29;
    case 2u:
      v2 = 1;
      goto LABEL_29;
    case 3u:
      v2 = 2;
      goto LABEL_29;
    case 4u:
      v2 = 3;
      goto LABEL_29;
    case 5u:
      v2 = 4;
      goto LABEL_29;
    case 6u:
      v2 = 5;
      goto LABEL_29;
    case 7u:
      v2 = 6;
      goto LABEL_29;
    case 8u:
      v2 = 7;
      goto LABEL_29;
    case 0x20u:
      v2 = 8;
      goto LABEL_29;
    case 0x21u:
      v2 = 9;
      goto LABEL_29;
    case 0x22u:
      v2 = 10;
      goto LABEL_29;
    case 0x23u:
      v2 = 11;
      goto LABEL_29;
    case 0x24u:
      v2 = 12;
      goto LABEL_29;
    case 0x25u:
      v2 = 13;
      goto LABEL_29;
    case 0x26u:
      v2 = 14;
LABEL_29:
      v3 = v2;
      goto LABEL_30;
    case 0x27u:
LABEL_30:
      *v1 = v3;
      break;
    case 0x28u:
      *v1 = 16;
      break;
    case 0x29u:
      *v1 = 17;
      break;
    case 0x2Au:
      *v1 = 18;
      break;
    case 0x2Bu:
      *v1 = 19;
      break;
    case 0x2Cu:
      *v1 = 20;
      break;
    case 0x2Du:
      *v1 = 21;
      break;
    case 0x50u:
      *v1 = 22;
      break;
    case 0x51u:
      *v1 = 23;
      break;
    case 0x52u:
      *v1 = 24;
      break;
    case 0x53u:
      *v1 = 25;
      break;
    case 0x54u:
      *v1 = 26;
      break;
    case 0x55u:
      *v1 = 27;
      break;
    case 0x60u:
      *v1 = 28;
      break;
    case 0x61u:
      *v1 = 29;
      break;
    case 0x62u:
      *v1 = 30;
      break;
    case 0x70u:
      *v1 = 31;
      break;
    case 0x71u:
      *v1 = 32;
      break;
    default:
      *v1 = 33;
      break;
  }

  return rawValue;
}

CoreHID::HIDUsage::MonitorUsage_optional __swiftcall HIDUsage.MonitorUsage.init(rawValue:)(Swift::UInt16 rawValue)
{
  if (rawValue >= 5u)
  {
    v2 = 4;
  }

  else
  {
    v2 = 0x302010004uLL >> (8 * rawValue);
  }

  *v1 = v2;
  return rawValue;
}

CoreHID::HIDUsage::VESAVirtualControlsUsage_optional __swiftcall HIDUsage.VESAVirtualControlsUsage.init(rawValue:)(Swift::UInt16 rawValue)
{
  v2 = 0;
  v3 = 27;
  switch(rawValue)
  {
    case 1u:
      goto LABEL_45;
    case 0x10u:
      v2 = 1;
      goto LABEL_45;
    case 0x12u:
      v2 = 2;
      goto LABEL_45;
    case 0x16u:
      v2 = 3;
      goto LABEL_45;
    case 0x18u:
      v2 = 4;
      goto LABEL_45;
    case 0x1Au:
      v2 = 5;
      goto LABEL_45;
    case 0x1Cu:
      v2 = 6;
      goto LABEL_45;
    case 0x20u:
      v2 = 7;
      goto LABEL_45;
    case 0x22u:
      v2 = 8;
      goto LABEL_45;
    case 0x24u:
      v2 = 9;
      goto LABEL_45;
    case 0x26u:
      v2 = 10;
      goto LABEL_45;
    case 0x28u:
      v2 = 11;
      goto LABEL_45;
    case 0x2Au:
      v2 = 12;
      goto LABEL_45;
    case 0x2Cu:
      v2 = 13;
      goto LABEL_45;
    case 0x30u:
      v2 = 14;
      goto LABEL_45;
    case 0x32u:
      v2 = 15;
      goto LABEL_45;
    case 0x34u:
      v2 = 16;
      goto LABEL_45;
    case 0x36u:
      v2 = 17;
      goto LABEL_45;
    case 0x38u:
      v2 = 18;
      goto LABEL_45;
    case 0x3Au:
      v2 = 19;
      goto LABEL_45;
    case 0x3Cu:
      v2 = 20;
      goto LABEL_45;
    case 0x40u:
      v2 = 21;
      goto LABEL_45;
    case 0x42u:
      v2 = 22;
      goto LABEL_45;
    case 0x44u:
      v2 = 23;
      goto LABEL_45;
    case 0x46u:
      v2 = 24;
      goto LABEL_45;
    case 0x48u:
      v2 = 25;
      goto LABEL_45;
    case 0x4Au:
      v2 = 26;
LABEL_45:
      v3 = v2;
      goto LABEL_46;
    case 0x4Cu:
LABEL_46:
      *v1 = v3;
      break;
    case 0x56u:
      *v1 = 28;
      break;
    case 0x58u:
      *v1 = 29;
      break;
    case 0x5Eu:
      *v1 = 30;
      break;
    case 0x60u:
      *v1 = 31;
      break;
    case 0x6Cu:
      *v1 = 32;
      break;
    case 0x6Eu:
      *v1 = 33;
      break;
    case 0x70u:
      *v1 = 34;
      break;
    case 0xA2u:
      *v1 = 35;
      break;
    case 0xA4u:
      *v1 = 36;
      break;
    case 0xA6u:
      *v1 = 37;
      break;
    case 0xA8u:
      *v1 = 38;
      break;
    case 0xAAu:
      *v1 = 39;
      break;
    case 0xACu:
      *v1 = 40;
      break;
    case 0xAEu:
      *v1 = 41;
      break;
    case 0xB0u:
      *v1 = 42;
      break;
    case 0xCAu:
      *v1 = 43;
      break;
    case 0xD4u:
      *v1 = 44;
      break;
    default:
      *v1 = 45;
      break;
  }

  return rawValue;
}

CoreHID::HIDUsage::PowerUsage_optional __swiftcall HIDUsage.PowerUsage.init(rawValue:)(Swift::UInt16 rawValue)
{
  v2 = 0;
  v3 = 59;
  switch(rawValue)
  {
    case 1u:
      goto LABEL_76;
    case 2u:
      v2 = 1;
      goto LABEL_76;
    case 3u:
      v2 = 2;
      goto LABEL_76;
    case 4u:
      v2 = 3;
      goto LABEL_76;
    case 5u:
      v2 = 4;
      goto LABEL_76;
    case 0x10u:
      v2 = 5;
      goto LABEL_76;
    case 0x11u:
      v2 = 6;
      goto LABEL_76;
    case 0x12u:
      v2 = 7;
      goto LABEL_76;
    case 0x13u:
      v2 = 8;
      goto LABEL_76;
    case 0x14u:
      v2 = 9;
      goto LABEL_76;
    case 0x15u:
      v2 = 10;
      goto LABEL_76;
    case 0x16u:
      v2 = 11;
      goto LABEL_76;
    case 0x17u:
      v2 = 12;
      goto LABEL_76;
    case 0x18u:
      v2 = 13;
      goto LABEL_76;
    case 0x19u:
      v2 = 14;
      goto LABEL_76;
    case 0x1Au:
      v2 = 15;
      goto LABEL_76;
    case 0x1Bu:
      v2 = 16;
      goto LABEL_76;
    case 0x1Cu:
      v2 = 17;
      goto LABEL_76;
    case 0x1Du:
      v2 = 18;
      goto LABEL_76;
    case 0x1Eu:
      v2 = 19;
      goto LABEL_76;
    case 0x1Fu:
      v2 = 20;
      goto LABEL_76;
    case 0x20u:
      v2 = 21;
      goto LABEL_76;
    case 0x21u:
      v2 = 22;
      goto LABEL_76;
    case 0x22u:
      v2 = 23;
      goto LABEL_76;
    case 0x23u:
      v2 = 24;
      goto LABEL_76;
    case 0x24u:
      v2 = 25;
      goto LABEL_76;
    case 0x25u:
      v2 = 26;
      goto LABEL_76;
    case 0x30u:
      v2 = 27;
      goto LABEL_76;
    case 0x31u:
      v2 = 28;
      goto LABEL_76;
    case 0x32u:
      v2 = 29;
      goto LABEL_76;
    case 0x33u:
      v2 = 30;
      goto LABEL_76;
    case 0x34u:
      v2 = 31;
      goto LABEL_76;
    case 0x35u:
      v2 = 32;
      goto LABEL_76;
    case 0x36u:
      v2 = 33;
      goto LABEL_76;
    case 0x37u:
      v2 = 34;
      goto LABEL_76;
    case 0x38u:
      v2 = 35;
      goto LABEL_76;
    case 0x40u:
      v2 = 36;
      goto LABEL_76;
    case 0x41u:
      v2 = 37;
      goto LABEL_76;
    case 0x42u:
      v2 = 38;
      goto LABEL_76;
    case 0x43u:
      v2 = 39;
      goto LABEL_76;
    case 0x44u:
      v2 = 40;
      goto LABEL_76;
    case 0x45u:
      v2 = 41;
      goto LABEL_76;
    case 0x46u:
      v2 = 42;
      goto LABEL_76;
    case 0x47u:
      v2 = 43;
      goto LABEL_76;
    case 0x50u:
      v2 = 44;
      goto LABEL_76;
    case 0x51u:
      v2 = 45;
      goto LABEL_76;
    case 0x52u:
      v2 = 46;
      goto LABEL_76;
    case 0x53u:
      v2 = 47;
      goto LABEL_76;
    case 0x54u:
      v2 = 48;
      goto LABEL_76;
    case 0x55u:
      v2 = 49;
      goto LABEL_76;
    case 0x56u:
      v2 = 50;
      goto LABEL_76;
    case 0x57u:
      v2 = 51;
      goto LABEL_76;
    case 0x58u:
      v2 = 52;
      goto LABEL_76;
    case 0x59u:
      v2 = 53;
      goto LABEL_76;
    case 0x5Au:
      v2 = 54;
      goto LABEL_76;
    case 0x60u:
      v2 = 55;
      goto LABEL_76;
    case 0x61u:
      v2 = 56;
      goto LABEL_76;
    case 0x62u:
      v2 = 57;
      goto LABEL_76;
    case 0x63u:
      v2 = 58;
LABEL_76:
      v3 = v2;
      goto LABEL_77;
    case 0x64u:
LABEL_77:
      *v1 = v3;
      break;
    case 0x65u:
      *v1 = 60;
      break;
    case 0x66u:
      *v1 = 61;
      break;
    case 0x67u:
      *v1 = 62;
      break;
    case 0x68u:
      *v1 = 63;
      break;
    case 0x69u:
      *v1 = 64;
      break;
    case 0x6Bu:
      *v1 = 65;
      break;
    case 0x6Cu:
      *v1 = 66;
      break;
    case 0x6Du:
      *v1 = 67;
      break;
    case 0x6Eu:
      *v1 = 68;
      break;
    case 0x6Fu:
      *v1 = 69;
      break;
    case 0x70u:
      *v1 = 70;
      break;
    case 0x71u:
      *v1 = 71;
      break;
    case 0x72u:
      *v1 = 72;
      break;
    case 0x73u:
      *v1 = 73;
      break;
    case 0xFDu:
      *v1 = 74;
      break;
    case 0xFEu:
      *v1 = 75;
      break;
    case 0xFFu:
      *v1 = 76;
      break;
    default:
      *v1 = 77;
      break;
  }

  return rawValue;
}

CoreHID::HIDUsage::BatterySystemUsage_optional __swiftcall HIDUsage.BatterySystemUsage.init(rawValue:)(Swift::UInt16 rawValue)
{
  v2 = 0;
  v3 = 73;
  switch(rawValue)
  {
    case 1u:
      goto LABEL_90;
    case 2u:
      v2 = 1;
      goto LABEL_90;
    case 3u:
      v2 = 2;
      goto LABEL_90;
    case 4u:
      v2 = 3;
      goto LABEL_90;
    case 5u:
      v2 = 4;
      goto LABEL_90;
    case 6u:
      v2 = 5;
      goto LABEL_90;
    case 7u:
      v2 = 6;
      goto LABEL_90;
    case 8u:
      v2 = 7;
      goto LABEL_90;
    case 9u:
      v2 = 8;
      goto LABEL_90;
    case 0x10u:
      v2 = 9;
      goto LABEL_90;
    case 0x11u:
      v2 = 10;
      goto LABEL_90;
    case 0x12u:
      v2 = 11;
      goto LABEL_90;
    case 0x13u:
      v2 = 12;
      goto LABEL_90;
    case 0x14u:
      v2 = 13;
      goto LABEL_90;
    case 0x15u:
      v2 = 14;
      goto LABEL_90;
    case 0x16u:
      v2 = 15;
      goto LABEL_90;
    case 0x17u:
      v2 = 16;
      goto LABEL_90;
    case 0x18u:
      v2 = 17;
      goto LABEL_90;
    case 0x19u:
      v2 = 18;
      goto LABEL_90;
    case 0x1Au:
      v2 = 19;
      goto LABEL_90;
    case 0x1Bu:
      v2 = 20;
      goto LABEL_90;
    case 0x1Cu:
      v2 = 21;
      goto LABEL_90;
    case 0x1Du:
      v2 = 22;
      goto LABEL_90;
    case 0x28u:
      v2 = 23;
      goto LABEL_90;
    case 0x29u:
      v2 = 24;
      goto LABEL_90;
    case 0x2Au:
      v2 = 25;
      goto LABEL_90;
    case 0x2Bu:
      v2 = 26;
      goto LABEL_90;
    case 0x2Cu:
      v2 = 27;
      goto LABEL_90;
    case 0x2Du:
      v2 = 28;
      goto LABEL_90;
    case 0x2Eu:
      v2 = 29;
      goto LABEL_90;
    case 0x2Fu:
      v2 = 30;
      goto LABEL_90;
    case 0x40u:
      v2 = 31;
      goto LABEL_90;
    case 0x41u:
      v2 = 32;
      goto LABEL_90;
    case 0x42u:
      v2 = 33;
      goto LABEL_90;
    case 0x43u:
      v2 = 34;
      goto LABEL_90;
    case 0x44u:
      v2 = 35;
      goto LABEL_90;
    case 0x45u:
      v2 = 36;
      goto LABEL_90;
    case 0x46u:
      v2 = 37;
      goto LABEL_90;
    case 0x47u:
      v2 = 38;
      goto LABEL_90;
    case 0x48u:
      v2 = 39;
      goto LABEL_90;
    case 0x49u:
      v2 = 40;
      goto LABEL_90;
    case 0x4Au:
      v2 = 41;
      goto LABEL_90;
    case 0x4Bu:
      v2 = 42;
      goto LABEL_90;
    case 0x60u:
      v2 = 43;
      goto LABEL_90;
    case 0x61u:
      v2 = 44;
      goto LABEL_90;
    case 0x62u:
      v2 = 45;
      goto LABEL_90;
    case 0x63u:
      v2 = 46;
      goto LABEL_90;
    case 0x64u:
      v2 = 47;
      goto LABEL_90;
    case 0x65u:
      v2 = 48;
      goto LABEL_90;
    case 0x66u:
      v2 = 49;
      goto LABEL_90;
    case 0x67u:
      v2 = 50;
      goto LABEL_90;
    case 0x68u:
      v2 = 51;
      goto LABEL_90;
    case 0x69u:
      v2 = 52;
      goto LABEL_90;
    case 0x6Au:
      v2 = 53;
      goto LABEL_90;
    case 0x6Bu:
      v2 = 54;
      goto LABEL_90;
    case 0x80u:
      v2 = 55;
      goto LABEL_90;
    case 0x81u:
      v2 = 56;
      goto LABEL_90;
    case 0x82u:
      v2 = 57;
      goto LABEL_90;
    case 0x83u:
      v2 = 58;
      goto LABEL_90;
    case 0x84u:
      v2 = 59;
      goto LABEL_90;
    case 0x85u:
      v2 = 60;
      goto LABEL_90;
    case 0x86u:
      v2 = 61;
      goto LABEL_90;
    case 0x87u:
      v2 = 62;
      goto LABEL_90;
    case 0x88u:
      v2 = 63;
      goto LABEL_90;
    case 0x89u:
      v2 = 64;
      goto LABEL_90;
    case 0x8Au:
      v2 = 65;
      goto LABEL_90;
    case 0x8Bu:
      v2 = 66;
      goto LABEL_90;
    case 0x8Cu:
      v2 = 67;
      goto LABEL_90;
    case 0x8Du:
      v2 = 68;
      goto LABEL_90;
    case 0x8Eu:
      v2 = 69;
      goto LABEL_90;
    case 0x8Fu:
      v2 = 70;
      goto LABEL_90;
    case 0xC0u:
      v2 = 71;
      goto LABEL_90;
    case 0xC1u:
      v2 = 72;
LABEL_90:
      v3 = v2;
      goto LABEL_91;
    case 0xC2u:
LABEL_91:
      *v1 = v3;
      break;
    case 0xD0u:
      *v1 = 74;
      break;
    case 0xD1u:
      *v1 = 75;
      break;
    case 0xD2u:
      *v1 = 76;
      break;
    case 0xD3u:
      *v1 = 77;
      break;
    case 0xD4u:
      *v1 = 78;
      break;
    case 0xD5u:
      *v1 = 79;
      break;
    case 0xD6u:
      *v1 = 80;
      break;
    case 0xD7u:
      *v1 = 81;
      break;
    case 0xD8u:
      *v1 = 82;
      break;
    case 0xD9u:
      *v1 = 83;
      break;
    case 0xDAu:
      *v1 = 84;
      break;
    case 0xDBu:
      *v1 = 85;
      break;
    case 0xDCu:
      *v1 = 86;
      break;
    case 0xF0u:
      *v1 = 87;
      break;
    case 0xF1u:
      *v1 = 88;
      break;
    case 0xF2u:
      *v1 = 89;
      break;
    case 0xF3u:
      *v1 = 90;
      break;
    default:
      *v1 = 91;
      break;
  }

  return rawValue;
}

CoreHID::HIDUsage::BarcodeScannerUsage_optional __swiftcall HIDUsage.BarcodeScannerUsage.init(rawValue:)(Swift::UInt16 rawValue)
{
  v2 = 0;
  switch(rawValue)
  {
    case 1u:
      goto LABEL_131;
    case 2u:
      v2 = 1;
      goto LABEL_131;
    case 3u:
      v2 = 2;
      goto LABEL_131;
    case 4u:
      v2 = 3;
      goto LABEL_131;
    case 5u:
      v2 = 4;
      goto LABEL_131;
    case 0x10u:
      v2 = 5;
      goto LABEL_131;
    case 0x11u:
      v2 = 6;
      goto LABEL_131;
    case 0x12u:
      v2 = 7;
      goto LABEL_131;
    case 0x13u:
      v2 = 8;
      goto LABEL_131;
    case 0x14u:
      v2 = 9;
      goto LABEL_131;
    case 0x15u:
      v2 = 10;
      goto LABEL_131;
    case 0x16u:
      v2 = 11;
      goto LABEL_131;
    case 0x17u:
      v2 = 12;
      goto LABEL_131;
    case 0x18u:
      v2 = 13;
      goto LABEL_131;
    case 0x19u:
      v2 = 14;
      goto LABEL_131;
    case 0x1Au:
      v2 = 15;
      goto LABEL_131;
    case 0x1Bu:
      v2 = 16;
      goto LABEL_131;
    case 0x1Cu:
      v2 = 17;
      goto LABEL_131;
    case 0x1Du:
      v2 = 18;
      goto LABEL_131;
    case 0x1Eu:
      v2 = 19;
      goto LABEL_131;
    case 0x1Fu:
      v2 = 20;
      goto LABEL_131;
    case 0x30u:
      v2 = 21;
      goto LABEL_131;
    case 0x31u:
      v2 = 22;
      goto LABEL_131;
    case 0x32u:
      v2 = 23;
      goto LABEL_131;
    case 0x33u:
      v2 = 24;
      goto LABEL_131;
    case 0x34u:
      v2 = 25;
      goto LABEL_131;
    case 0x35u:
      v2 = 26;
      goto LABEL_131;
    case 0x36u:
      v2 = 27;
      goto LABEL_131;
    case 0x37u:
      v2 = 28;
      goto LABEL_131;
    case 0x38u:
      v2 = 29;
      goto LABEL_131;
    case 0x39u:
      v2 = 30;
      goto LABEL_131;
    case 0x3Au:
      v2 = 31;
      goto LABEL_131;
    case 0x3Bu:
      v2 = 32;
      goto LABEL_131;
    case 0x3Cu:
      v2 = 33;
      goto LABEL_131;
    case 0x3Du:
      v2 = 34;
      goto LABEL_131;
    case 0x3Eu:
      v2 = 35;
      goto LABEL_131;
    case 0x3Fu:
      v2 = 36;
      goto LABEL_131;
    case 0x40u:
      v2 = 37;
      goto LABEL_131;
    case 0x41u:
      v2 = 38;
      goto LABEL_131;
    case 0x42u:
      v2 = 39;
      goto LABEL_131;
    case 0x43u:
      v2 = 40;
      goto LABEL_131;
    case 0x44u:
      v2 = 41;
      goto LABEL_131;
    case 0x45u:
      v2 = 42;
      goto LABEL_131;
    case 0x46u:
      v2 = 43;
      goto LABEL_131;
    case 0x4Du:
      v2 = 44;
      goto LABEL_131;
    case 0x4Eu:
      v2 = 45;
      goto LABEL_131;
    case 0x4Fu:
      v2 = 46;
      goto LABEL_131;
    case 0x50u:
      v2 = 47;
      goto LABEL_131;
    case 0x51u:
      v2 = 48;
      goto LABEL_131;
    case 0x52u:
      v2 = 49;
      goto LABEL_131;
    case 0x55u:
      v2 = 50;
      goto LABEL_131;
    case 0x56u:
      v2 = 51;
      goto LABEL_131;
    case 0x57u:
      v2 = 52;
      goto LABEL_131;
    case 0x58u:
      v2 = 53;
      goto LABEL_131;
    case 0x59u:
      v2 = 54;
      goto LABEL_131;
    case 0x5Au:
      v2 = 55;
      goto LABEL_131;
    case 0x5Bu:
      v2 = 56;
      goto LABEL_131;
    case 0x5Cu:
      v2 = 57;
      goto LABEL_131;
    case 0x5Du:
      v2 = 58;
      goto LABEL_131;
    case 0x5Eu:
      v2 = 59;
      goto LABEL_131;
    case 0x5Fu:
      v2 = 60;
      goto LABEL_131;
    case 0x60u:
      v2 = 61;
      goto LABEL_131;
    case 0x61u:
      v2 = 62;
      goto LABEL_131;
    case 0x62u:
      v2 = 63;
      goto LABEL_131;
    case 0x63u:
      v2 = 64;
      goto LABEL_131;
    case 0x64u:
      v2 = 65;
      goto LABEL_131;
    case 0x65u:
      v2 = 66;
      goto LABEL_131;
    case 0x66u:
      v2 = 67;
      goto LABEL_131;
    case 0x6Du:
      v2 = 68;
      goto LABEL_131;
    case 0x6Eu:
      v2 = 69;
      goto LABEL_131;
    case 0x6Fu:
      v2 = 70;
      goto LABEL_131;
    case 0x70u:
      v2 = 71;
      goto LABEL_131;
    case 0x75u:
      v2 = 72;
      goto LABEL_131;
    case 0x76u:
      v2 = 73;
      goto LABEL_131;
    case 0x7Au:
      v2 = 74;
      goto LABEL_131;
    case 0x7Bu:
      v2 = 75;
      goto LABEL_131;
    case 0x7Cu:
      v2 = 76;
      goto LABEL_131;
    case 0x7Du:
      v2 = 77;
      goto LABEL_131;
    case 0x7Eu:
      v2 = 78;
      goto LABEL_131;
    case 0x7Fu:
      v2 = 79;
      goto LABEL_131;
    case 0x80u:
      v2 = 80;
      goto LABEL_131;
    case 0x82u:
      v2 = 81;
      goto LABEL_131;
    case 0x83u:
      v2 = 82;
      goto LABEL_131;
    case 0x84u:
      v2 = 83;
      goto LABEL_131;
    case 0x85u:
      v2 = 84;
      goto LABEL_131;
    case 0x86u:
      v2 = 85;
      goto LABEL_131;
    case 0x87u:
      v2 = 86;
      goto LABEL_131;
    case 0x88u:
      v2 = 87;
      goto LABEL_131;
    case 0x89u:
      v2 = 88;
      goto LABEL_131;
    case 0x8Au:
      v2 = 89;
      goto LABEL_131;
    case 0x8Bu:
      v2 = 90;
      goto LABEL_131;
    case 0x91u:
      v2 = 91;
      goto LABEL_131;
    case 0x92u:
      v2 = 92;
      goto LABEL_131;
    case 0x93u:
      v2 = 93;
      goto LABEL_131;
    case 0x94u:
      v2 = 94;
      goto LABEL_131;
    case 0x95u:
      v2 = 95;
      goto LABEL_131;
    case 0x96u:
      v2 = 96;
      goto LABEL_131;
    case 0x97u:
      v2 = 97;
      goto LABEL_131;
    case 0x98u:
      v2 = 98;
      goto LABEL_131;
    case 0x99u:
      v2 = 99;
      goto LABEL_131;
    case 0x9Au:
      v2 = 100;
      goto LABEL_131;
    case 0x9Bu:
      v2 = 101;
      goto LABEL_131;
    case 0x9Cu:
      v2 = 102;
      goto LABEL_131;
    case 0x9Du:
      v2 = 103;
      goto LABEL_131;
    case 0x9Eu:
      v2 = 104;
      goto LABEL_131;
    case 0x9Fu:
      v2 = 105;
      goto LABEL_131;
    case 0xA0u:
      v2 = 106;
      goto LABEL_131;
    case 0xA1u:
      v2 = 107;
      goto LABEL_131;
    case 0xA2u:
      v2 = 108;
      goto LABEL_131;
    case 0xA9u:
      v2 = 109;
      goto LABEL_131;
    case 0xAAu:
      v2 = 110;
      goto LABEL_131;
    case 0xABu:
      v2 = 111;
      goto LABEL_131;
    case 0xACu:
      v2 = 112;
      goto LABEL_131;
    case 0xADu:
      v2 = 113;
      goto LABEL_131;
    case 0xAEu:
      v2 = 114;
      goto LABEL_131;
    case 0xAFu:
      v2 = 115;
      goto LABEL_131;
    case 0xB0u:
      v2 = 116;
      goto LABEL_131;
    case 0xB1u:
      v2 = 117;
      goto LABEL_131;
    case 0xB2u:
      v2 = 118;
      goto LABEL_131;
    case 0xB3u:
      v2 = 119;
      goto LABEL_131;
    case 0xB4u:
      v2 = 120;
      goto LABEL_131;
    case 0xB5u:
      v2 = 121;
      goto LABEL_131;
    case 0xB7u:
      v2 = 122;
      goto LABEL_131;
    case 0xB8u:
      v2 = 123;
      goto LABEL_131;
    case 0xB9u:
      v2 = 124;
      goto LABEL_131;
    case 0xBAu:
      v2 = 125;
      goto LABEL_131;
    case 0xBBu:
      v2 = 126;
      goto LABEL_131;
    case 0xBCu:
      v2 = 127;
LABEL_131:
      v3 = v2;
LABEL_132:
      *v1 = v3;
      break;
    default:
      v3 = -80;
      v2 = 0x80;
      switch(rawValue)
      {
        case 0xBDu:
          goto LABEL_131;
        case 0xBEu:
          v2 = -127;
          goto LABEL_131;
        case 0xBFu:
          v2 = -126;
          goto LABEL_131;
        case 0xC0u:
          v2 = -125;
          goto LABEL_131;
        case 0xC3u:
          v2 = -124;
          goto LABEL_131;
        case 0xC4u:
          v2 = -123;
          goto LABEL_131;
        case 0xC7u:
          v2 = -122;
          goto LABEL_131;
        case 0xC8u:
          v2 = -121;
          goto LABEL_131;
        case 0xC9u:
          v2 = -120;
          goto LABEL_131;
        case 0xCAu:
          v2 = -119;
          goto LABEL_131;
        case 0xCBu:
          v2 = -118;
          goto LABEL_131;
        case 0xCCu:
          v2 = -117;
          goto LABEL_131;
        case 0xCDu:
          v2 = -116;
          goto LABEL_131;
        case 0xCEu:
          v2 = -115;
          goto LABEL_131;
        case 0xD3u:
          v2 = -114;
          goto LABEL_131;
        case 0xD4u:
          v2 = -113;
          goto LABEL_131;
        case 0xD5u:
          v2 = -112;
          goto LABEL_131;
        case 0xD6u:
          v2 = -111;
          goto LABEL_131;
        case 0xD7u:
          v2 = -110;
          goto LABEL_131;
        case 0xD8u:
          v2 = -109;
          goto LABEL_131;
        case 0xD9u:
          v2 = -108;
          goto LABEL_131;
        case 0xDAu:
          v2 = -107;
          goto LABEL_131;
        case 0xDBu:
          v2 = -106;
          goto LABEL_131;
        case 0xDCu:
          v2 = -105;
          goto LABEL_131;
        case 0xDDu:
          v2 = -104;
          goto LABEL_131;
        case 0xDEu:
          v2 = -103;
          goto LABEL_131;
        case 0xDFu:
          v2 = -102;
          goto LABEL_131;
        case 0xF0u:
          v2 = -101;
          goto LABEL_131;
        case 0xF1u:
          v2 = -100;
          goto LABEL_131;
        case 0xF2u:
          v2 = -99;
          goto LABEL_131;
        case 0xFBu:
          v2 = -98;
          goto LABEL_131;
        case 0xFCu:
          v2 = -97;
          goto LABEL_131;
        case 0xFDu:
          v2 = -96;
          goto LABEL_131;
        case 0xFEu:
          v2 = -95;
          goto LABEL_131;
        case 0xFFu:
          v2 = -94;
          goto LABEL_131;
        case 0x100u:
          v2 = -93;
          goto LABEL_131;
        case 0x101u:
          v2 = -92;
          goto LABEL_131;
        case 0x102u:
          v2 = -91;
          goto LABEL_131;
        case 0x103u:
          v2 = -90;
          goto LABEL_131;
        case 0x104u:
          v2 = -89;
          goto LABEL_131;
        case 0x106u:
          v2 = -88;
          goto LABEL_131;
        case 0x107u:
          v2 = -87;
          goto LABEL_131;
        case 0x108u:
          v2 = -86;
          goto LABEL_131;
        case 0x109u:
          v2 = -85;
          goto LABEL_131;
        case 0x10Au:
          v2 = -84;
          goto LABEL_131;
        case 0x10Bu:
          v2 = -83;
          goto LABEL_131;
        case 0x10Cu:
          v2 = -82;
          goto LABEL_131;
        case 0x10Du:
          v2 = -81;
          goto LABEL_131;
        case 0x110u:
          goto LABEL_132;
        case 0x111u:
          *v1 = -79;
          break;
        case 0x112u:
          *v1 = -78;
          break;
        case 0x113u:
          *v1 = -77;
          break;
        case 0x114u:
          *v1 = -76;
          break;
        case 0x115u:
          *v1 = -75;
          break;
        case 0x116u:
          *v1 = -74;
          break;
        case 0x117u:
          *v1 = -73;
          break;
        case 0x118u:
          *v1 = -72;
          break;
        case 0x119u:
          *v1 = -71;
          break;
        case 0x11Au:
          *v1 = -70;
          break;
        case 0x11Bu:
          *v1 = -69;
          break;
        case 0x11Cu:
          *v1 = -68;
          break;
        case 0x11Du:
          *v1 = -67;
          break;
        case 0x11Eu:
          *v1 = -66;
          break;
        case 0x11Fu:
          *v1 = -65;
          break;
        default:
          if (rawValue == 289)
          {
            v4 = -63;
          }

          else
          {
            v4 = -62;
          }

          if (rawValue == 288)
          {
            v4 = -64;
          }

          *v1 = v4;
          break;
      }

      break;
  }

  return rawValue;
}

CoreHID::HIDUsage::ScalesUsage_optional __swiftcall HIDUsage.ScalesUsage.init(rawValue:)(Swift::UInt16 rawValue)
{
  v2 = 0;
  v3 = 28;
  switch(rawValue)
  {
    case 1u:
      goto LABEL_45;
    case 0x20u:
      v2 = 1;
      goto LABEL_45;
    case 0x21u:
      v2 = 2;
      goto LABEL_45;
    case 0x22u:
      v2 = 3;
      goto LABEL_45;
    case 0x23u:
      v2 = 4;
      goto LABEL_45;
    case 0x24u:
      v2 = 5;
      goto LABEL_45;
    case 0x25u:
      v2 = 6;
      goto LABEL_45;
    case 0x26u:
      v2 = 7;
      goto LABEL_45;
    case 0x27u:
      v2 = 8;
      goto LABEL_45;
    case 0x28u:
      v2 = 9;
      goto LABEL_45;
    case 0x29u:
      v2 = 10;
      goto LABEL_45;
    case 0x2Au:
      v2 = 11;
      goto LABEL_45;
    case 0x30u:
      v2 = 12;
      goto LABEL_45;
    case 0x31u:
      v2 = 13;
      goto LABEL_45;
    case 0x32u:
      v2 = 14;
      goto LABEL_45;
    case 0x33u:
      v2 = 15;
      goto LABEL_45;
    case 0x34u:
      v2 = 16;
      goto LABEL_45;
    case 0x35u:
      v2 = 17;
      goto LABEL_45;
    case 0x40u:
      v2 = 18;
      goto LABEL_45;
    case 0x41u:
      v2 = 19;
      goto LABEL_45;
    case 0x50u:
      v2 = 20;
      goto LABEL_45;
    case 0x51u:
      v2 = 21;
      goto LABEL_45;
    case 0x52u:
      v2 = 22;
      goto LABEL_45;
    case 0x53u:
      v2 = 23;
      goto LABEL_45;
    case 0x54u:
      v2 = 24;
      goto LABEL_45;
    case 0x55u:
      v2 = 25;
      goto LABEL_45;
    case 0x56u:
      v2 = 26;
      goto LABEL_45;
    case 0x57u:
      v2 = 27;
LABEL_45:
      v3 = v2;
      goto LABEL_46;
    case 0x58u:
LABEL_46:
      *v1 = v3;
      break;
    case 0x59u:
      *v1 = 29;
      break;
    case 0x5Au:
      *v1 = 30;
      break;
    case 0x5Bu:
      *v1 = 31;
      break;
    case 0x5Cu:
      *v1 = 32;
      break;
    case 0x60u:
      *v1 = 33;
      break;
    case 0x61u:
      *v1 = 34;
      break;
    case 0x70u:
      *v1 = 35;
      break;
    case 0x71u:
      *v1 = 36;
      break;
    case 0x72u:
      *v1 = 37;
      break;
    case 0x73u:
      *v1 = 38;
      break;
    case 0x74u:
      *v1 = 39;
      break;
    case 0x75u:
      *v1 = 40;
      break;
    case 0x76u:
      *v1 = 41;
      break;
    case 0x77u:
      *v1 = 42;
      break;
    case 0x78u:
      *v1 = 43;
      break;
    case 0x80u:
      *v1 = 44;
      break;
    case 0x81u:
      *v1 = 45;
      break;
    default:
      *v1 = 46;
      break;
  }

  return rawValue;
}

CoreHID::HIDUsage::MagneticStripeReaderUsage_optional __swiftcall HIDUsage.MagneticStripeReaderUsage.init(rawValue:)(Swift::UInt16 rawValue)
{
  if (rawValue > 0x1Fu)
  {
    if (rawValue <= 0x21u)
    {
      if (rawValue == 32)
      {
        *v1 = 5;
        return rawValue;
      }

      if (rawValue == 33)
      {
        *v1 = 6;
        return rawValue;
      }
    }

    else
    {
      switch(rawValue)
      {
        case '""':
          *v1 = 7;
          return rawValue;
        case '#':
          *v1 = 8;
          return rawValue;
        case '$':
          *v1 = 9;
          return rawValue;
      }
    }

LABEL_24:
    *v1 = 10;
    return rawValue;
  }

  if (rawValue <= 0x11u)
  {
    if (rawValue == 1)
    {
      *v1 = 0;
      return rawValue;
    }

    if (rawValue == 17)
    {
      *v1 = 1;
      return rawValue;
    }

    goto LABEL_24;
  }

  if (rawValue == 18)
  {
    *v1 = 2;
    return rawValue;
  }

  if (rawValue == 19)
  {
    *v1 = 3;
    return rawValue;
  }

  if (rawValue != 20)
  {
    goto LABEL_24;
  }

  *v1 = 4;
  return rawValue;
}

CoreHID::HIDUsage::CameraControlUsage_optional __swiftcall HIDUsage.CameraControlUsage.init(rawValue:)(Swift::UInt16 rawValue)
{
  if (rawValue == 33)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (rawValue == 32)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  *v1 = v3;
  return rawValue;
}

CoreHID::HIDUsage::ArcadeUsage_optional __swiftcall HIDUsage.ArcadeUsage.init(rawValue:)(Swift::UInt16 rawValue)
{
  v2 = 0;
  v3 = 9;
  switch(rawValue)
  {
    case 1u:
      goto LABEL_23;
    case 2u:
      v2 = 1;
      goto LABEL_23;
    case 3u:
      v2 = 2;
      goto LABEL_23;
    case 0x30u:
      v2 = 3;
      goto LABEL_23;
    case 0x31u:
      v2 = 4;
      goto LABEL_23;
    case 0x32u:
      v2 = 5;
      goto LABEL_23;
    case 0x33u:
      v2 = 6;
      goto LABEL_23;
    case 0x34u:
      v2 = 7;
      goto LABEL_23;
    case 0x35u:
      v2 = 8;
LABEL_23:
      v3 = v2;
      goto LABEL_24;
    case 0x36u:
LABEL_24:
      *v1 = v3;
      break;
    case 0x37u:
      *v1 = 10;
      break;
    case 0x38u:
      *v1 = 11;
      break;
    case 0x39u:
      *v1 = 12;
      break;
    case 0x40u:
      *v1 = 13;
      break;
    case 0x41u:
      *v1 = 14;
      break;
    case 0x42u:
      *v1 = 15;
      break;
    case 0x43u:
      *v1 = 16;
      break;
    case 0x44u:
      *v1 = 17;
      break;
    case 0x45u:
      *v1 = 18;
      break;
    case 0x46u:
      *v1 = 19;
      break;
    case 0x47u:
      *v1 = 20;
      break;
    case 0x48u:
      *v1 = 21;
      break;
    case 0x49u:
      *v1 = 22;
      break;
    case 0x4Au:
      *v1 = 23;
      break;
    case 0x4Bu:
      *v1 = 24;
      break;
    case 0x4Cu:
      *v1 = 25;
      break;
    case 0x4Du:
      *v1 = 26;
      break;
    default:
      *v1 = 27;
      break;
  }

  return rawValue;
}

CoreHID::HIDUsage::FIDOAllianceUsage_optional __swiftcall HIDUsage.FIDOAllianceUsage.init(rawValue:)(Swift::UInt16 rawValue)
{
  if (rawValue == 33)
  {
    v2 = 2;
  }

  else
  {
    v2 = 3;
  }

  if (rawValue == 32)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (rawValue == 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  *v1 = v4;
  return rawValue;
}

uint64_t HIDUsage.hash(into:)()
{
  v1 = *v0 | (*(v0 + 4) << 32);
  switch(*(v0 + 4) >> 2)
  {
    case 1:
      MEMORY[0x245D6BE80](1);
      if (v1 == 51)
      {
        return sub_2455EA0A0();
      }

      sub_2455EA0A0();
      v2 = v1;
      v3 = word_2455EFA26;
      goto LABEL_71;
    case 2:
      MEMORY[0x245D6BE80](2);
      if (v1 == 12)
      {
        return sub_2455EA0A0();
      }

      sub_2455EA0A0();
      v2 = v1;
      v3 = word_2455EFA8C;
      goto LABEL_71;
    case 3:
      MEMORY[0x245D6BE80](3);
      if (v1 == 34)
      {
        return sub_2455EA0A0();
      }

      sub_2455EA0A0();
      v2 = v1;
      v3 = word_2455EFAA4;
      goto LABEL_71;
    case 4:
      MEMORY[0x245D6BE80](4);
      if (v1 == 29)
      {
        return sub_2455EA0A0();
      }

      sub_2455EA0A0();
      v2 = v1;
      v3 = word_2455EFAE8;
      goto LABEL_71;
    case 5:
      MEMORY[0x245D6BE80](5);
      if (v1 == 24)
      {
        return sub_2455EA0A0();
      }

      sub_2455EA0A0();
      v2 = v1;
      v3 = word_2455EFB22;
      goto LABEL_71;
    case 6:
      *(v0 + 4);
      v6 = *v0;
      MEMORY[0x245D6BE80](6);
      if (v6 == 218)
      {
        return sub_2455EA0A0();
      }

      sub_2455EA0A0();
      v7 = word_2455EFB52[v6 ^ 0x80];
      return sub_2455EA0B0();
    case 7:
      MEMORY[0x245D6BE80](7);
      if (v1 == 96)
      {
        return sub_2455EA0A0();
      }

      sub_2455EA0A0();
      v2 = v1;
      v3 = word_2455EFD52;
      goto LABEL_71;
    case 8:
      MEMORY[0x245D6BE80](8);
      if ((v1 & 0x10000) != 0)
      {
        return sub_2455EA0A0();
      }

      goto LABEL_55;
    case 9:
      MEMORY[0x245D6BE80](9);
      if ((v1 & 0x10000) != 0)
      {
        return sub_2455EA0A0();
      }

      goto LABEL_55;
    case 0xA:
      MEMORY[0x245D6BE80](10);
      if (v1 == 99)
      {
        return sub_2455EA0A0();
      }

      sub_2455EA0A0();
      v2 = v1;
      v3 = word_2455EFE12;
      goto LABEL_71;
    case 0xB:
      MEMORY[0x245D6BE80](11);
      if (v1 == 450)
      {
        return sub_2455EA0A0();
      }

      sub_2455EA0A0();
      v2 = v1;
      v3 = word_2455EFED8;
      goto LABEL_71;
    case 0xC:
      MEMORY[0x245D6BE80](12);
      if (v1 == 108)
      {
        return sub_2455EA0A0();
      }

      sub_2455EA0A0();
      v2 = v1;
      v3 = word_2455F025C;
      goto LABEL_71;
    case 0xD:
      MEMORY[0x245D6BE80](13);
      if (v1 == 29)
      {
        return sub_2455EA0A0();
      }

      sub_2455EA0A0();
      v2 = v1;
      v3 = word_2455F0334;
      goto LABEL_71;
    case 0xE:
      MEMORY[0x245D6BE80](14);
      if (v1 == 105)
      {
        return sub_2455EA0A0();
      }

      sub_2455EA0A0();
      v2 = v1;
      v3 = word_2455F036E;
      goto LABEL_71;
    case 0xF:
      MEMORY[0x245D6BE80](15);
      if (v1 == 10)
      {
        return sub_2455EA0A0();
      }

      goto LABEL_55;
    case 0x10:
      MEMORY[0x245D6BE80](16);
      if (v1 == 34)
      {
        return sub_2455EA0A0();
      }

      sub_2455EA0A0();
      v2 = v1;
      v3 = word_2455F0440;
      goto LABEL_71;
    case 0x11:
      MEMORY[0x245D6BE80](17);
      if (v1 == 75)
      {
        return sub_2455EA0A0();
      }

      sub_2455EA0A0();
      v2 = v1;
      v3 = word_2455F0484;
      goto LABEL_71;
    case 0x12:
      MEMORY[0x245D6BE80](18);
      if (v1 == 665)
      {
        return sub_2455EA0A0();
      }

      sub_2455EA0A0();
      v2 = v1;
      v3 = word_2455F051A;
      goto LABEL_71;
    case 0x13:
      MEMORY[0x245D6BE80](19);
      if (v1 == 29)
      {
        return sub_2455EA0A0();
      }

      sub_2455EA0A0();
      v2 = v1;
      v3 = word_2455F0A4C;
      goto LABEL_71;
    case 0x14:
      MEMORY[0x245D6BE80](20);
      if (v1 == 43)
      {
        return sub_2455EA0A0();
      }

      sub_2455EA0A0();
      v2 = v1;
      v3 = word_2455F0A86;
      goto LABEL_71;
    case 0x15:
      MEMORY[0x245D6BE80](21);
      if (v1 == 33)
      {
        return sub_2455EA0A0();
      }

      sub_2455EA0A0();
      v2 = v1;
      v3 = word_2455F0ADC;
      goto LABEL_71;
    case 0x16:
      MEMORY[0x245D6BE80](22);
      if (v1 != 4)
      {
        goto LABEL_55;
      }

      return sub_2455EA0A0();
    case 0x17:
      MEMORY[0x245D6BE80](23);
      if ((v1 & 0x10000) == 0)
      {
        goto LABEL_55;
      }

      return sub_2455EA0A0();
    case 0x18:
      MEMORY[0x245D6BE80](24);
      if (v1 == 45)
      {
        return sub_2455EA0A0();
      }

      sub_2455EA0A0();
      v2 = v1;
      v3 = word_2455F0B1E;
      goto LABEL_71;
    case 0x19:
      MEMORY[0x245D6BE80](25);
      if (v1 == 77)
      {
        return sub_2455EA0A0();
      }

      sub_2455EA0A0();
      v2 = v1;
      v3 = word_2455F0B78;
      goto LABEL_71;
    case 0x1A:
      MEMORY[0x245D6BE80](26);
      if (v1 == 91)
      {
        return sub_2455EA0A0();
      }

      sub_2455EA0A0();
      v2 = v1;
      v3 = word_2455F0C12;
      goto LABEL_71;
    case 0x1B:
      *(v0 + 4);
      v4 = *v0;
      MEMORY[0x245D6BE80](27);
      if (v4 == 194)
      {
        return sub_2455EA0A0();
      }

      sub_2455EA0A0();
      v5 = word_2455F0CC8[v4 ^ 0x80];
      return sub_2455EA0B0();
    case 0x1C:
      MEMORY[0x245D6BE80](28);
      if (v1 == 46)
      {
        return sub_2455EA0A0();
      }

      sub_2455EA0A0();
      v2 = v1;
      v3 = word_2455F0EC8;
      goto LABEL_71;
    case 0x1D:
      MEMORY[0x245D6BE80](29);
      if (v1 == 10)
      {
        return sub_2455EA0A0();
      }

      sub_2455EA0A0();
      v2 = v1;
      v3 = word_2455F0F24;
      goto LABEL_71;
    case 0x1E:
      MEMORY[0x245D6BE80](30);
      if (v1 != 2)
      {
        goto LABEL_55;
      }

      return sub_2455EA0A0();
    case 0x1F:
      MEMORY[0x245D6BE80](31);
      if (v1 == 27)
      {
        return sub_2455EA0A0();
      }

      sub_2455EA0A0();
      v2 = v1;
      v3 = word_2455F0F38;
      goto LABEL_71;
    case 0x20:
      MEMORY[0x245D6BE80](32);
      if (v1 != 3)
      {
        goto LABEL_55;
      }

      return sub_2455EA0A0();
    case 0x21:
      MEMORY[0x245D6BE80](33);
      sub_2455EA0B0();
      if ((v1 & 0x100000000) != 0)
      {
        return sub_2455EA0A0();
      }

LABEL_55:
      sub_2455EA0A0();
      return sub_2455EA0B0();
    default:
      MEMORY[0x245D6BE80](0);
      if (v1 == 114)
      {
        return sub_2455EA0A0();
      }

      sub_2455EA0A0();
      v2 = v1;
      v3 = word_2455EF942;
LABEL_71:
      v9 = v3[v2];
      return sub_2455EA0B0();
  }
}

uint64_t HIDUsage.hashValue.getter()
{
  v3 = *(v0 + 4);
  v2 = *v0;
  sub_2455EA080();
  HIDUsage.hash(into:)();
  return sub_2455EA0D0();
}

uint64_t sub_2455C9CD0()
{
  v3 = *(v0 + 4);
  v2 = *v0;
  sub_2455EA080();
  HIDUsage.hash(into:)();
  return sub_2455EA0D0();
}

uint64_t sub_2455C9D28()
{
  v3 = *(v0 + 4);
  v2 = *v0;
  sub_2455EA080();
  HIDUsage.hash(into:)();
  return sub_2455EA0D0();
}

uint64_t HIDUsage.description.getter()
{
  v1 = *(v0 + 4);
  v2 = *v0;
  v3 = 0xE000000000000000;
  sub_2455E9DF0();

  HIDUsage.page.getter();
  v4 = sub_2455E9FD0();
  MEMORY[0x245D6B9A0](v4);

  if ((HIDUsage.usage.getter() & 0x10000) != 0)
  {
    v7 = 0;
    goto LABEL_5;
  }

  result = HIDUsage.usage.getter();
  if ((result & 0x10000) == 0)
  {
    v6 = sub_2455E9FD0();
    MEMORY[0x245D6B9A0](v6);

    v7 = 0x3A6567617375202CLL;
    v3 = 0xE900000000000020;
LABEL_5:
    MEMORY[0x245D6B9A0](v7, v3);

    MEMORY[0x245D6B9A0](41, 0xE100000000000000);
    return 0xD000000000000017;
  }

  __break(1u);
  return result;
}

uint64_t sub_2455C9F18()
{
  v1 = *v0;
  sub_2455EA080();
  v2 = word_2455EF942[v1];
  sub_2455EA0B0();
  return sub_2455EA0D0();
}

uint64_t sub_2455C9FA0()
{
  v1 = *v0;
  sub_2455EA080();
  v2 = word_2455EF942[v1];
  sub_2455EA0B0();
  return sub_2455EA0D0();
}

uint64_t sub_2455CA038()
{
  v1 = *v0;
  sub_2455EA080();
  v2 = word_2455EFA26[v1];
  sub_2455EA0B0();
  return sub_2455EA0D0();
}

uint64_t sub_2455CA0C0()
{
  v1 = *v0;
  sub_2455EA080();
  v2 = word_2455EFA26[v1];
  sub_2455EA0B0();
  return sub_2455EA0D0();
}

uint64_t sub_2455CA158()
{
  v1 = *v0;
  sub_2455EA080();
  v2 = word_2455EFA8C[v1];
  sub_2455EA0B0();
  return sub_2455EA0D0();
}

uint64_t sub_2455CA1E0()
{
  v1 = *v0;
  sub_2455EA080();
  v2 = word_2455EFA8C[v1];
  sub_2455EA0B0();
  return sub_2455EA0D0();
}

uint64_t sub_2455CA278()
{
  v1 = *v0;
  sub_2455EA080();
  v2 = word_2455EFAA4[v1];
  sub_2455EA0B0();
  return sub_2455EA0D0();
}

uint64_t sub_2455CA300()
{
  v1 = *v0;
  sub_2455EA080();
  v2 = word_2455EFAA4[v1];
  sub_2455EA0B0();
  return sub_2455EA0D0();
}

uint64_t sub_2455CA398()
{
  v1 = *v0;
  sub_2455EA080();
  v2 = word_2455EFAE8[v1];
  sub_2455EA0B0();
  return sub_2455EA0D0();
}

uint64_t sub_2455CA420()
{
  v1 = *v0;
  sub_2455EA080();
  v2 = word_2455EFAE8[v1];
  sub_2455EA0B0();
  return sub_2455EA0D0();
}

uint64_t sub_2455CA4B8()
{
  v1 = *v0;
  sub_2455EA080();
  v2 = word_2455EFB22[v1];
  sub_2455EA0B0();
  return sub_2455EA0D0();
}

uint64_t sub_2455CA540()
{
  v1 = *v0;
  sub_2455EA080();
  v2 = word_2455EFB22[v1];
  sub_2455EA0B0();
  return sub_2455EA0D0();
}

uint64_t sub_2455CA5E0()
{
  v1 = *v0;
  sub_2455EA080();
  v2 = word_2455EFB52[v1 ^ 0x80];
  sub_2455EA0B0();
  return sub_2455EA0D0();
}

uint64_t sub_2455CA670()
{
  v1 = *v0;
  sub_2455EA080();
  v2 = word_2455EFB52[v1 ^ 0x80];
  sub_2455EA0B0();
  return sub_2455EA0D0();
}

uint64_t sub_2455CA710()
{
  v1 = *v0;
  sub_2455EA080();
  v2 = word_2455EFD52[v1];
  sub_2455EA0B0();
  return sub_2455EA0D0();
}

uint64_t sub_2455CA798()
{
  v1 = *v0;
  sub_2455EA080();
  v2 = word_2455EFD52[v1];
  sub_2455EA0B0();
  return sub_2455EA0D0();
}

uint64_t sub_2455CA840()
{
  v1 = *v0;
  sub_2455EA080();
  v2 = word_2455EFE12[v1];
  sub_2455EA0B0();
  return sub_2455EA0D0();
}

uint64_t sub_2455CA8C8()
{
  v1 = *v0;
  sub_2455EA080();
  v2 = word_2455EFE12[v1];
  sub_2455EA0B0();
  return sub_2455EA0D0();
}

uint64_t sub_2455CA960()
{
  v1 = *v0;
  sub_2455EA080();
  v2 = word_2455EFED8[v1];
  sub_2455EA0B0();
  return sub_2455EA0D0();
}

uint64_t sub_2455CA9E8()
{
  v1 = *v0;
  sub_2455EA080();
  v2 = word_2455EFED8[v1];
  sub_2455EA0B0();
  return sub_2455EA0D0();
}

uint64_t sub_2455CAA80()
{
  v1 = *v0;
  sub_2455EA080();
  v2 = word_2455F025C[v1];
  sub_2455EA0B0();
  return sub_2455EA0D0();
}

uint64_t sub_2455CAB08()
{
  v1 = *v0;
  sub_2455EA080();
  v2 = word_2455F025C[v1];
  sub_2455EA0B0();
  return sub_2455EA0D0();
}

uint64_t sub_2455CABA0()
{
  v1 = *v0;
  sub_2455EA080();
  v2 = word_2455F0334[v1];
  sub_2455EA0B0();
  return sub_2455EA0D0();
}

uint64_t sub_2455CAC28()
{
  v1 = *v0;
  sub_2455EA080();
  v2 = word_2455F0334[v1];
  sub_2455EA0B0();
  return sub_2455EA0D0();
}

uint64_t sub_2455CACC0()
{
  v1 = *v0;
  sub_2455EA080();
  v2 = word_2455F036E[v1];
  sub_2455EA0B0();
  return sub_2455EA0D0();
}

uint64_t sub_2455CAD48()
{
  v1 = *v0;
  sub_2455EA080();
  v2 = word_2455F036E[v1];
  sub_2455EA0B0();
  return sub_2455EA0D0();
}

uint64_t sub_2455CADF0()
{
  v1 = *v0;
  sub_2455EA080();
  v2 = word_2455F0440[v1];
  sub_2455EA0B0();
  return sub_2455EA0D0();
}

uint64_t sub_2455CAE78()
{
  v1 = *v0;
  sub_2455EA080();
  v2 = word_2455F0440[v1];
  sub_2455EA0B0();
  return sub_2455EA0D0();
}

uint64_t sub_2455CAF10()
{
  v1 = *v0;
  sub_2455EA080();
  v2 = word_2455F0484[v1];
  sub_2455EA0B0();
  return sub_2455EA0D0();
}