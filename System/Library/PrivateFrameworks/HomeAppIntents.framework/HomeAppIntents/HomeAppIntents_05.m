unint64_t sub_252788748(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 0x3031657A6973;
    }

    else
    {
      v6 = 0x355F32657A6973;
    }

    if (a1)
    {
      v7 = 0xE600000000000000;
    }

    else
    {
      v7 = 0xE700000000000000;
    }

    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 0x3031657A6973 : 0x355F32657A6973;
      v9 = *(*(v2 + 48) + v4) ? 0xE600000000000000 : 0xE700000000000000;
      if (v8 == v6 && v9 == v7)
      {
        break;
      }

      v11 = sub_2528C1060();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_25278888C(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 0x6974616D6F747561;
    }

    else
    {
      v6 = 0x6C61756E616DLL;
    }

    if (a1)
    {
      v7 = 0xE900000000000063;
    }

    else
    {
      v7 = 0xE600000000000000;
    }

    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 0x6974616D6F747561 : 0x6C61756E616DLL;
      v9 = *(*(v2 + 48) + v4) ? 0xE900000000000063 : 0xE600000000000000;
      if (v8 == v6 && v9 == v7)
      {
        break;
      }

      v11 = sub_2528C1060();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_2527889D0(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      if (*(*(v2 + 48) + v4))
      {
        if (*(*(v2 + 48) + v4) == 1)
        {
          v7 = 0xE400000000000000;
          v8 = 1701602409;
          v9 = a1;
          if (!a1)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v7 = 0xE600000000000000;
          v8 = 0x657669746361;
          v9 = a1;
          if (!a1)
          {
LABEL_17:
            v11 = 0xE800000000000000;
            if (v8 != 0x6576697463616E69)
            {
              goto LABEL_19;
            }

            goto LABEL_18;
          }
        }
      }

      else
      {
        v7 = 0xE800000000000000;
        v8 = 0x6576697463616E69;
        v9 = a1;
        if (!a1)
        {
          goto LABEL_17;
        }
      }

      if (v9 == 1)
      {
        v10 = 1701602409;
      }

      else
      {
        v10 = 0x657669746361;
      }

      if (v9 == 1)
      {
        v11 = 0xE400000000000000;
      }

      else
      {
        v11 = 0xE600000000000000;
      }

      if (v8 != v10)
      {
        goto LABEL_19;
      }

LABEL_18:
      if (v7 == v11)
      {

        return v4;
      }

LABEL_19:
      v12 = sub_2528C1060();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_252788B58(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    v6 = a1;
    while (1)
    {
      v7 = *(*(v2 + 48) + v4);
      if (v7 > 2)
      {
        if (v7 == 3)
        {
          v9 = 0xE400000000000000;
          v8 = 1919508838;
        }

        else
        {
          if (v7 == 4)
          {
            v8 = 0x726F697265666E69;
          }

          else
          {
            v8 = 1919905648;
          }

          if (v7 == 4)
          {
            v9 = 0xE800000000000000;
          }

          else
          {
            v9 = 0xE400000000000000;
          }
        }
      }

      else if (*(*(v2 + 48) + v4))
      {
        if (v7 == 1)
        {
          v8 = 0x6E656C6C65637865;
        }

        else
        {
          v8 = 1685024615;
        }

        if (v7 == 1)
        {
          v9 = 0xE900000000000074;
        }

        else
        {
          v9 = 0xE400000000000000;
        }
      }

      else
      {
        v9 = 0xE700000000000000;
        v8 = 0x6E776F6E6B6E75;
      }

      v10 = 0x726F697265666E69;
      if (v6 == 4)
      {
        v11 = 0xE800000000000000;
      }

      else
      {
        v10 = 1919905648;
        v11 = 0xE400000000000000;
      }

      if (v6 == 3)
      {
        v10 = 1919508838;
        v11 = 0xE400000000000000;
      }

      v12 = 0x6E656C6C65637865;
      if (v6 != 1)
      {
        v12 = 1685024615;
      }

      v13 = 0xE900000000000074;
      if (v6 != 1)
      {
        v13 = 0xE400000000000000;
      }

      if (!v6)
      {
        v12 = 0x6E776F6E6B6E75;
        v13 = 0xE700000000000000;
      }

      v14 = v6 <= 2 ? v12 : v10;
      v15 = v6 <= 2 ? v13 : v11;
      if (v8 == v14 && v9 == v15)
      {
        break;
      }

      v16 = sub_2528C1060();

      if ((v16 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_252788D70(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      if (*(*(v2 + 48) + v4))
      {
        if (*(*(v2 + 48) + v4) == 1)
        {
          v7 = 0x6572676F72506E69;
          v8 = 0xEA00000000007373;
          v9 = a1;
          if (!a1)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v7 = 0x6772616843746F6ELL;
          v8 = 0xED0000656C626165;
          v9 = a1;
          if (!a1)
          {
LABEL_17:
            v11 = 0xE400000000000000;
            if (v7 != 1701736302)
            {
              goto LABEL_19;
            }

            goto LABEL_18;
          }
        }
      }

      else
      {
        v8 = 0xE400000000000000;
        v7 = 1701736302;
        v9 = a1;
        if (!a1)
        {
          goto LABEL_17;
        }
      }

      if (v9 == 1)
      {
        v10 = 0x6572676F72506E69;
      }

      else
      {
        v10 = 0x6772616843746F6ELL;
      }

      if (v9 == 1)
      {
        v11 = 0xEA00000000007373;
      }

      else
      {
        v11 = 0xED0000656C626165;
      }

      if (v7 != v10)
      {
        goto LABEL_19;
      }

LABEL_18:
      if (v8 == v11)
      {

        return v4;
      }

LABEL_19:
      v12 = sub_2528C1060();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_252788F10(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v21 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v23 + 48) + v4);
      v7 = v6 == 2 ? 0x64656D6D616ALL : 0x6E776F6E6B6E75;
      v8 = v6 == 2 ? 0xE600000000000000 : 0xE700000000000000;
      v9 = *(*(v23 + 48) + v4) ? 0x64656B636F6CLL : 0x64656B636F6C6E75;
      v10 = *(*(v23 + 48) + v4) ? 0xE600000000000000 : 0xE800000000000000;
      v11 = *(*(v23 + 48) + v4) <= 1u ? v9 : v7;
      v12 = *(*(v23 + 48) + v4) <= 1u ? v10 : v8;
      v13 = v5 == 2 ? 0x64656D6D616ALL : 0x6E776F6E6B6E75;
      v14 = v5 == 2 ? 0xE600000000000000 : 0xE700000000000000;
      v15 = v5 ? 0x64656B636F6CLL : 0x64656B636F6C6E75;
      v16 = v5 ? 0xE600000000000000 : 0xE800000000000000;
      v17 = v5 <= 1 ? v15 : v13;
      v18 = v5 <= 1 ? v16 : v14;
      if (v11 == v17 && v12 == v18)
      {
        break;
      }

      v19 = sub_2528C1060();

      if ((v19 & 1) == 0)
      {
        v4 = (v4 + 1) & v21;
        if ((*(v22 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_2527890AC(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v16 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v2 + 48) + v4);
      if (v6 <= 1)
      {
        v7 = *(*(v2 + 48) + v4) ? 0x6465736F6C63 : 1852141679;
        v8 = *(*(v2 + 48) + v4) ? 0xE600000000000000 : 0xE400000000000000;
      }

      else if (v6 == 2)
      {
        v8 = 0xE700000000000000;
        v7 = 0x676E696E65706FLL;
      }

      else
      {
        v7 = v6 == 3 ? 0x676E69736F6C63 : 0x646570706F7473;
        v8 = 0xE700000000000000;
      }

      if (v5 == 3)
      {
        v9 = 0x676E69736F6C63;
      }

      else
      {
        v9 = 0x646570706F7473;
      }

      if (v5 == 2)
      {
        v9 = 0x676E696E65706FLL;
      }

      v10 = v5 ? 0x6465736F6C63 : 1852141679;
      v11 = v5 ? 0xE600000000000000 : 0xE400000000000000;
      v12 = v5 <= 1 ? v10 : v9;
      v13 = v5 <= 1 ? v11 : 0xE700000000000000;
      if (v7 == v12 && v8 == v13)
      {
        break;
      }

      v14 = sub_2528C1060();

      if ((v14 & 1) == 0)
      {
        v4 = (v4 + 1) & v16;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_252789284(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xE600000000000000;
      v8 = 0x6D7575636176;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v7 = 0xE300000000000000;
          v8 = 7368557;
          break;
        case 2:
          v8 = 0x68546D7575636176;
          v7 = 0xED0000706F4D6E65;
          break;
        case 3:
          v8 = 0x61656C4370656564;
          v7 = 0xE90000000000006ELL;
          break;
        case 4:
          v7 = 0xE400000000000000;
          v8 = 1869903201;
          break;
        case 5:
          v7 = 0xE500000000000000;
          v8 = 0x7465697571;
          break;
        case 6:
          v7 = 0xE500000000000000;
          v8 = 0x6B63697571;
          break;
        case 7:
          v7 = 0xE800000000000000;
          v8 = 0x6573696F4E776F6CLL;
          break;
        case 8:
          v7 = 0xE900000000000079;
          v8 = 0x6772656E45776F6CLL;
          break;
        case 9:
          v7 = 0xE800000000000000;
          v8 = 0x6E6F697461636176;
          break;
        case 0xA:
          v7 = 0xE500000000000000;
          v8 = 0x746867696ELL;
          break;
        case 0xB:
          v7 = 0xE300000000000000;
          v8 = 7954788;
          break;
        case 0xC:
          v7 = 0xE300000000000000;
          v8 = 7235949;
          break;
        case 0xD:
          v7 = 0xE300000000000000;
          v8 = 7889261;
          break;
        default:
          break;
      }

      v9 = 0xE600000000000000;
      v10 = 0x6D7575636176;
      switch(a1)
      {
        case 1:
          v9 = 0xE300000000000000;
          if (v8 == 7368557)
          {
            goto LABEL_42;
          }

          goto LABEL_43;
        case 2:
          v9 = 0xED0000706F4D6E65;
          if (v8 != 0x68546D7575636176)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        case 3:
          v9 = 0xE90000000000006ELL;
          if (v8 != 0x61656C4370656564)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        case 4:
          v9 = 0xE400000000000000;
          if (v8 != 1869903201)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        case 5:
          v9 = 0xE500000000000000;
          if (v8 != 0x7465697571)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        case 6:
          v9 = 0xE500000000000000;
          if (v8 != 0x6B63697571)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        case 7:
          v9 = 0xE800000000000000;
          if (v8 != 0x6573696F4E776F6CLL)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        case 8:
          v9 = 0xE900000000000079;
          if (v8 != 0x6772656E45776F6CLL)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        case 9:
          v9 = 0xE800000000000000;
          if (v8 != 0x6E6F697461636176)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        case 10:
          v9 = 0xE500000000000000;
          v10 = 0x746867696ELL;
          goto LABEL_41;
        case 11:
          v9 = 0xE300000000000000;
          if (v8 != 7954788)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        case 12:
          v9 = 0xE300000000000000;
          if (v8 != 7235949)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        case 13:
          v9 = 0xE300000000000000;
          if (v8 != 7889261)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        default:
LABEL_41:
          if (v8 != v10)
          {
            goto LABEL_43;
          }

LABEL_42:
          if (v7 == v9)
          {

            return v4;
          }

LABEL_43:
          v11 = sub_2528C1060();

          if (v11)
          {
            return v4;
          }

          v4 = (v4 + 1) & v6;
          if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
          {
            return v4;
          }

          break;
      }
    }
  }

  return v4;
}

unint64_t sub_252789660(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      if (*(*(v2 + 48) + v4))
      {
        v7 = 0xE600000000000000;
        if (*(*(v2 + 48) + v4) == 1)
        {
          v8 = 0x656D75736572;
          v9 = a1;
          if (!a1)
          {
            goto LABEL_14;
          }
        }

        else
        {
          v8 = 0x6C65636E6163;
          v9 = a1;
          if (!a1)
          {
LABEL_14:
            v11 = 0xE500000000000000;
            if (v8 != 0x6573756170)
            {
              goto LABEL_16;
            }

            goto LABEL_15;
          }
        }
      }

      else
      {
        v7 = 0xE500000000000000;
        v8 = 0x6573756170;
        v9 = a1;
        if (!a1)
        {
          goto LABEL_14;
        }
      }

      if (v9 == 1)
      {
        v10 = 0x656D75736572;
      }

      else
      {
        v10 = 0x6C65636E6163;
      }

      v11 = 0xE600000000000000;
      if (v8 != v10)
      {
        goto LABEL_16;
      }

LABEL_15:
      if (v7 == v11)
      {

        return v4;
      }

LABEL_16:
      v12 = sub_2528C1060();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_2527897D8(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xE700000000000000;
      v8 = 0x646570706F7473;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v8 = 0x676E696E6E7572;
          break;
        case 2:
          v7 = 0xE600000000000000;
          v8 = 0x646573756170;
          break;
        case 3:
          v7 = 0xE500000000000000;
          v8 = 0x726F727265;
          break;
        case 4:
          v8 = 0x43676E696B656573;
          v7 = 0xEE00726567726168;
          break;
        case 5:
          v7 = 0xE800000000000000;
          v8 = 0x676E696772616863;
          break;
        case 6:
          v7 = 0xE600000000000000;
          v8 = 0x64656B636F64;
          break;
        case 7:
          v8 = 0x676E697974706D65;
          v7 = 0xEF6E694274737544;
          break;
        case 8:
          v8 = 0x676E696E61656C63;
          v7 = 0xEB00000000706F4DLL;
          break;
        case 9:
          v8 = 0xD000000000000010;
          v7 = 0x80000002528E4E10;
          break;
        case 0xA:
          v8 = 0x676E697461647075;
          v7 = 0xEC0000007370614DLL;
          break;
        case 0xB:
          v7 = 0xE500000000000000;
          v8 = 0x6B63757473;
          break;
        case 0xC:
          v8 = 0xD000000000000018;
          v7 = 0x80000002528E4E40;
          break;
        case 0xD:
          v8 = 0x4D6E694274737564;
          v7 = 0xEE00676E69737369;
          break;
        case 0xE:
          v8 = 0x466E694274737564;
          v7 = 0xEB000000006C6C75;
          break;
        case 0xF:
          v8 = 0xD000000000000010;
          v7 = 0x80000002528E4E80;
          break;
        case 0x10:
          v8 = 0x6E61547265746177;
          v7 = 0xEE007974706D456BLL;
          break;
        case 0x11:
          v8 = 0xD000000000000010;
          v7 = 0x80000002528E4EA0;
          break;
        case 0x12:
          v8 = 0xD000000000000015;
          v7 = 0x80000002528E4EC0;
          break;
        case 0x13:
          v8 = 0x6574746142776F6CLL;
          v7 = 0xEA00000000007972;
          break;
        case 0x14:
          v8 = 0xD000000000000015;
          v7 = 0x80000002528E4EE0;
          break;
        case 0x15:
          v8 = 0xD000000000000012;
          v7 = 0x80000002528E4F00;
          break;
        case 0x16:
          v8 = 0xD000000000000015;
          v7 = 0x80000002528E4F20;
          break;
        case 0x17:
          v8 = 0x614A736C65656877;
          v7 = 0xEC00000064656D6DLL;
          break;
        case 0x18:
          v8 = 0x6D614A6873757262;
          v7 = 0xEB0000000064656DLL;
          break;
        case 0x19:
          v8 = 0xD000000000000018;
          v7 = 0x80000002528E4F50;
          break;
        case 0x1A:
          v8 = 0x6E776F6E6B6E75;
          break;
        default:
          break;
      }

      v9 = 0xE700000000000000;
      v10 = 0x646570706F7473;
      switch(a1)
      {
        case 1:
          if (v8 == 0x676E696E6E7572)
          {
            goto LABEL_79;
          }

          goto LABEL_80;
        case 2:
          v9 = 0xE600000000000000;
          v15 = 1937072496;
          goto LABEL_64;
        case 3:
          v9 = 0xE500000000000000;
          if (v8 != 0x726F727265)
          {
            goto LABEL_80;
          }

          goto LABEL_79;
        case 4:
          v11 = 0x43676E696B656573;
          v12 = 0x726567726168;
          goto LABEL_61;
        case 5:
          v9 = 0xE800000000000000;
          if (v8 != 0x676E696772616863)
          {
            goto LABEL_80;
          }

          goto LABEL_79;
        case 6:
          v9 = 0xE600000000000000;
          v15 = 1801678692;
LABEL_64:
          if (v8 != (v15 & 0xFFFF0000FFFFFFFFLL | 0x646500000000))
          {
            goto LABEL_80;
          }

          goto LABEL_79;
        case 7:
          v9 = 0xEF6E694274737544;
          if (v8 != 0x676E697974706D65)
          {
            goto LABEL_80;
          }

          goto LABEL_79;
        case 8:
          v13 = 0x676E696E61656C63;
          v14 = 7368525;
          goto LABEL_71;
        case 9:
          v9 = 0x80000002528E4E10;
          if (v8 != 0xD000000000000010)
          {
            goto LABEL_80;
          }

          goto LABEL_79;
        case 10:
          v9 = 0xEC0000007370614DLL;
          if (v8 != 0x676E697461647075)
          {
            goto LABEL_80;
          }

          goto LABEL_79;
        case 11:
          v9 = 0xE500000000000000;
          if (v8 != 0x6B63757473)
          {
            goto LABEL_80;
          }

          goto LABEL_79;
        case 12:
          v9 = 0x80000002528E4E40;
          if (v8 != 0xD000000000000018)
          {
            goto LABEL_80;
          }

          goto LABEL_79;
        case 13:
          v11 = 0x4D6E694274737564;
          v12 = 0x676E69737369;
          goto LABEL_61;
        case 14:
          v13 = 0x466E694274737564;
          v14 = 7105653;
          goto LABEL_71;
        case 15:
          v9 = 0x80000002528E4E80;
          if (v8 != 0xD000000000000010)
          {
            goto LABEL_80;
          }

          goto LABEL_79;
        case 16:
          v11 = 0x6E61547265746177;
          v12 = 0x7974706D456BLL;
LABEL_61:
          v9 = v12 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
          if (v8 != v11)
          {
            goto LABEL_80;
          }

          goto LABEL_79;
        case 17:
          v9 = 0x80000002528E4EA0;
          if (v8 != 0xD000000000000010)
          {
            goto LABEL_80;
          }

          goto LABEL_79;
        case 18:
          v9 = 0x80000002528E4EC0;
          if (v8 != 0xD000000000000015)
          {
            goto LABEL_80;
          }

          goto LABEL_79;
        case 19:
          v9 = 0xEA00000000007972;
          if (v8 != 0x6574746142776F6CLL)
          {
            goto LABEL_80;
          }

          goto LABEL_79;
        case 20:
          v9 = 0x80000002528E4EE0;
          if (v8 != 0xD000000000000015)
          {
            goto LABEL_80;
          }

          goto LABEL_79;
        case 21:
          v9 = 0x80000002528E4F00;
          if (v8 != 0xD000000000000012)
          {
            goto LABEL_80;
          }

          goto LABEL_79;
        case 22:
          v9 = 0x80000002528E4F20;
          if (v8 != 0xD000000000000015)
          {
            goto LABEL_80;
          }

          goto LABEL_79;
        case 23:
          v10 = 0x614A736C65656877;
          v9 = 0xEC00000064656D6DLL;
          goto LABEL_78;
        case 24:
          v13 = 0x6D614A6873757262;
          v14 = 6579565;
LABEL_71:
          v9 = v14 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
          if (v8 != v13)
          {
            goto LABEL_80;
          }

          goto LABEL_79;
        case 25:
          v9 = 0x80000002528E4F50;
          if (v8 != 0xD000000000000018)
          {
            goto LABEL_80;
          }

          goto LABEL_79;
        case 26:
          if (v8 != 0x6E776F6E6B6E75)
          {
            goto LABEL_80;
          }

          goto LABEL_79;
        default:
LABEL_78:
          if (v8 != v10)
          {
            goto LABEL_80;
          }

LABEL_79:
          if (v7 == v9)
          {

            return v4;
          }

LABEL_80:
          v16 = sub_2528C1060();

          if (v16)
          {
            return v4;
          }

          v4 = (v4 + 1) & v6;
          if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
          {
            return v4;
          }

          break;
      }
    }
  }

  return v4;
}

unint64_t sub_252789F0C(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v17 = ~v3;
    v5 = 0xE900000000000064;
    v6 = a1;
    while (1)
    {
      v7 = *(*(v2 + 48) + v4);
      if (v7 <= 1)
      {
        if (*(*(v2 + 48) + v4))
        {
          v8 = 1701670760;
        }

        else
        {
          v8 = 6710895;
        }

        if (*(*(v2 + 48) + v4))
        {
          v9 = 0xE400000000000000;
        }

        else
        {
          v9 = 0xE300000000000000;
        }
      }

      else if (v7 == 2)
      {
        v9 = 0xE400000000000000;
        v8 = 2036430689;
      }

      else
      {
        if (v7 == 3)
        {
          v8 = 0x746867696ELL;
        }

        else
        {
          v8 = 0x6572656767697274;
        }

        if (v7 == 3)
        {
          v9 = 0xE500000000000000;
        }

        else
        {
          v9 = 0xE900000000000064;
        }
      }

      if (v6 == 3)
      {
        v10 = 0x746867696ELL;
      }

      else
      {
        v10 = 0x6572656767697274;
      }

      if (v6 == 3)
      {
        v5 = 0xE500000000000000;
      }

      if (v6 == 2)
      {
        v10 = 2036430689;
        v5 = 0xE400000000000000;
      }

      v11 = v6 ? 1701670760 : 6710895;
      v12 = v6 ? 0xE400000000000000 : 0xE300000000000000;
      v13 = v6 <= 1 ? v11 : v10;
      v14 = v6 <= 1 ? v12 : v5;
      if (v8 == v13 && v9 == v14)
      {
        break;
      }

      v15 = sub_2528C1060();

      if ((v15 & 1) == 0)
      {
        v4 = (v4 + 1) & v17;
        v5 = 0xE900000000000064;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_25278A0E0(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    v6 = a1;
    while (1)
    {
      v7 = *(*(v2 + 48) + v4);
      if (v7 > 2)
      {
        if (v7 == 3)
        {
          v9 = 0xE400000000000000;
          v8 = 1952540008;
        }

        else
        {
          if (v7 == 4)
          {
            v8 = 1819242339;
          }

          else
          {
            v8 = 1869903201;
          }

          v9 = 0xE400000000000000;
        }
      }

      else if (*(*(v2 + 48) + v4))
      {
        if (v7 == 1)
        {
          v8 = 6710895;
        }

        else
        {
          v8 = 28271;
        }

        if (v7 == 1)
        {
          v9 = 0xE300000000000000;
        }

        else
        {
          v9 = 0xE200000000000000;
        }
      }

      else
      {
        v9 = 0xE400000000000000;
        v8 = 1701736302;
      }

      v10 = 1869903201;
      if (v6 == 4)
      {
        v10 = 1819242339;
      }

      if (v6 == 3)
      {
        v10 = 1952540008;
      }

      v11 = 6710895;
      if (v6 != 1)
      {
        v11 = 28271;
      }

      v12 = 0xE300000000000000;
      if (v6 != 1)
      {
        v12 = 0xE200000000000000;
      }

      if (!v6)
      {
        v11 = 1701736302;
        v12 = 0xE400000000000000;
      }

      v13 = v6 <= 2 ? v11 : v10;
      v14 = v6 <= 2 ? v12 : 0xE400000000000000;
      if (v8 == v13 && v9 == v14)
      {
        break;
      }

      v15 = sub_2528C1060();

      if ((v15 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_25278A2B4(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    v6 = a1;
    while (1)
    {
      v7 = *(*(v2 + 48) + v4);
      if (v7 > 2)
      {
        if (v7 == 3)
        {
          v8 = 0x6964696D75686564;
          v9 = 0xEA00000000007966;
        }

        else
        {
          if (v7 == 4)
          {
            v8 = 1869903201;
          }

          else
          {
            v8 = 1701736302;
          }

          v9 = 0xE400000000000000;
        }
      }

      else if (*(*(v2 + 48) + v4))
      {
        if (v7 == 1)
        {
          v8 = 28271;
        }

        else
        {
          v8 = 0x79666964696D7568;
        }

        if (v7 == 1)
        {
          v9 = 0xE200000000000000;
        }

        else
        {
          v9 = 0xE800000000000000;
        }
      }

      else
      {
        v9 = 0xE300000000000000;
        v8 = 6710895;
      }

      v10 = 1869903201;
      if (v6 != 4)
      {
        v10 = 1701736302;
      }

      v11 = 0xE400000000000000;
      if (v6 == 3)
      {
        v10 = 0x6964696D75686564;
        v11 = 0xEA00000000007966;
      }

      v12 = 0x79666964696D7568;
      if (v6 == 1)
      {
        v12 = 28271;
      }

      v13 = 0xE200000000000000;
      if (v6 != 1)
      {
        v13 = 0xE800000000000000;
      }

      if (!v6)
      {
        v12 = 6710895;
        v13 = 0xE300000000000000;
      }

      v14 = v6 <= 2 ? v12 : v10;
      v15 = v6 <= 2 ? v13 : v11;
      if (v8 == v14 && v9 == v15)
      {
        break;
      }

      v16 = sub_2528C1060();

      if ((v16 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_25278A4B8(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 0xD000000000000010;
    }

    else
    {
      v6 = 0x7369776B636F6C63;
    }

    if (a1)
    {
      v7 = 0x80000002528E4FB0;
    }

    else
    {
      v7 = 0xE900000000000065;
    }

    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 0xD000000000000010 : 0x7369776B636F6C63;
      v9 = *(*(v2 + 48) + v4) ? 0x80000002528E4FB0 : 0xE900000000000065;
      if (v8 == v6 && v9 == v7)
      {
        break;
      }

      v11 = sub_2528C1060();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_25278A5FC(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 0x6573616572636564;
    }

    else
    {
      v6 = 0x6573616572636E69;
    }

    while (1)
    {
      v7 = *(*(v2 + 48) + v4) ? 0x6573616572636564 : 0x6573616572636E69;
      if (v7 == v6)
      {
        break;
      }

      v8 = sub_2528C1060();
      swift_bridgeObjectRelease_n();
      if ((v8 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }

    swift_bridgeObjectRelease_n();
  }

  return v4;
}

unint64_t sub_25278A6F8(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xEB00000000726569;
      v8 = 0x6669727550726961;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v8 = 0xD000000000000010;
          v7 = 0x80000002528E4FF0;
          break;
        case 2:
          v7 = 0xE700000000000000;
          v8 = 0x5654656C707061;
          break;
        case 3:
          v7 = 0xE600000000000000;
          v8 = 0x6172656D6163;
          break;
        case 4:
          v8 = 0xD000000000000013;
          v7 = 0x80000002528E5010;
          break;
        case 5:
          v8 = 0xD000000000000014;
          v7 = 0x80000002528E5030;
          break;
        case 6:
          v8 = 0x53746361746E6F63;
          v7 = 0xED0000726F736E65;
          break;
        case 7:
          v7 = 0xE400000000000000;
          v8 = 1919905636;
          break;
        case 8:
          v7 = 0xE300000000000000;
          v8 = 7233894;
          break;
        case 9:
          v7 = 0xE600000000000000;
          v8 = 0x746563756166;
          break;
        case 0xA:
          v8 = 0x6F44656761726167;
          goto LABEL_28;
        case 0xB:
          v8 = 0x6F43726574616568;
          v7 = 0xEC00000072656C6FLL;
          break;
        case 0xC:
          v8 = 0xD000000000000016;
          v7 = 0x80000002528E5080;
          break;
        case 0xD:
          v8 = 0x79746964696D7568;
          v7 = 0xEE00726F736E6553;
          break;
        case 0xE:
          v8 = 0x736E65536B61656CLL;
LABEL_28:
          v7 = 0xEA0000000000726FLL;
          break;
        case 0xF:
          v8 = 0x6C7562746867696CLL;
          v7 = 0xE900000000000062;
          break;
        case 0x10:
          v9 = 0x53746867696CLL;
          goto LABEL_14;
        case 0x11:
          v7 = 0xE400000000000000;
          v8 = 1801678700;
          break;
        case 0x12:
          v8 = 0x65536E6F69746F6DLL;
          v7 = 0xEC000000726F736ELL;
          break;
        case 0x13:
          v8 = 0x636E61707563636FLL;
          v7 = 0xEF726F736E655379;
          break;
        case 0x14:
          v7 = 0xE600000000000000;
          v8 = 0x74656C74756FLL;
          break;
        case 0x15:
          v8 = 0xD000000000000012;
          v7 = 0x80000002528E50F0;
          break;
        case 0x16:
          v8 = 0x7974697275636573;
          v7 = 0xEE006D6574737953;
          break;
        case 0x17:
          v7 = 0xE600000000000000;
          v8 = 0x7265776F6873;
          break;
        case 0x18:
          v9 = 0x53656B6F6D73;
LABEL_14:
          v8 = v9 & 0xFFFFFFFFFFFFLL | 0x6E65000000000000;
          v7 = 0xEB00000000726F73;
          break;
        case 0x19:
          v8 = 0x656C6B6E69727073;
          v7 = 0xE900000000000072;
          break;
        case 0x1A:
          v7 = 0xE600000000000000;
          v8 = 0x686374697773;
          break;
        case 0x1B:
          v8 = 0x69736976656C6574;
          v7 = 0xEA00000000006E6FLL;
          break;
        case 0x1C:
          v8 = 0xD000000000000011;
          v7 = 0x80000002528E5150;
          break;
        case 0x1D:
          v8 = 0x74736F6D72656874;
          v7 = 0xEA00000000007461;
          break;
        case 0x1E:
          v7 = 0xE500000000000000;
          v8 = 0x65766C6176;
          break;
        case 0x1F:
          v7 = 0xE600000000000000;
          v8 = 0x776F646E6977;
          break;
        case 0x20:
          v8 = 0x6F43776F646E6977;
          v7 = 0xEE00676E69726576;
          break;
        default:
          break;
      }

      v10 = 0x6669727550726961;
      v11 = 0xEB00000000726569;
      switch(a1)
      {
        case 1:
          v11 = 0x80000002528E4FF0;
          if (v8 == 0xD000000000000010)
          {
            goto LABEL_100;
          }

          goto LABEL_101;
        case 2:
          v11 = 0xE700000000000000;
          if (v8 != 0x5654656C707061)
          {
            goto LABEL_101;
          }

          goto LABEL_100;
        case 3:
          v11 = 0xE600000000000000;
          if (v8 != 0x6172656D6163)
          {
            goto LABEL_101;
          }

          goto LABEL_100;
        case 4:
          v11 = 0x80000002528E5010;
          if (v8 != 0xD000000000000013)
          {
            goto LABEL_101;
          }

          goto LABEL_100;
        case 5:
          v11 = 0x80000002528E5030;
          if (v8 != 0xD000000000000014)
          {
            goto LABEL_101;
          }

          goto LABEL_100;
        case 6:
          v11 = 0xED0000726F736E65;
          if (v8 != 0x53746361746E6F63)
          {
            goto LABEL_101;
          }

          goto LABEL_100;
        case 7:
          v11 = 0xE400000000000000;
          if (v8 != 1919905636)
          {
            goto LABEL_101;
          }

          goto LABEL_100;
        case 8:
          v11 = 0xE300000000000000;
          if (v8 != 7233894)
          {
            goto LABEL_101;
          }

          goto LABEL_100;
        case 9:
          v11 = 0xE600000000000000;
          v16 = 1668637030;
          goto LABEL_69;
        case 10:
          v13 = 0x6F44656761726167;
          goto LABEL_82;
        case 11:
          v14 = 0x6F43726574616568;
          v15 = 1919249519;
          goto LABEL_79;
        case 12:
          v11 = 0x80000002528E5080;
          if (v8 != 0xD000000000000016)
          {
            goto LABEL_101;
          }

          goto LABEL_100;
        case 13:
          v17 = 0x79746964696D7568;
          v18 = 0x726F736E6553;
          goto LABEL_90;
        case 14:
          v13 = 0x736E65536B61656CLL;
LABEL_82:
          v11 = 0xEA0000000000726FLL;
          if (v8 != v13)
          {
            goto LABEL_101;
          }

          goto LABEL_100;
        case 15:
          v11 = 0xE900000000000062;
          if (v8 != 0x6C7562746867696CLL)
          {
            goto LABEL_101;
          }

          goto LABEL_100;
        case 16:
          v12 = 0x53746867696CLL;
          goto LABEL_54;
        case 17:
          v11 = 0xE400000000000000;
          if (v8 != 1801678700)
          {
            goto LABEL_101;
          }

          goto LABEL_100;
        case 18:
          v14 = 0x65536E6F69746F6DLL;
          v15 = 1919906670;
LABEL_79:
          v11 = v15 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
          if (v8 != v14)
          {
            goto LABEL_101;
          }

          goto LABEL_100;
        case 19:
          v11 = 0xEF726F736E655379;
          if (v8 != 0x636E61707563636FLL)
          {
            goto LABEL_101;
          }

          goto LABEL_100;
        case 20:
          v11 = 0xE600000000000000;
          v16 = 1819571567;
LABEL_69:
          if (v8 != (v16 & 0xFFFF0000FFFFFFFFLL | 0x746500000000))
          {
            goto LABEL_101;
          }

          goto LABEL_100;
        case 21:
          v11 = 0x80000002528E50F0;
          if (v8 != 0xD000000000000012)
          {
            goto LABEL_101;
          }

          goto LABEL_100;
        case 22:
          v17 = 0x7974697275636573;
          v18 = 0x6D6574737953;
          goto LABEL_90;
        case 23:
          v11 = 0xE600000000000000;
          if (v8 != 0x7265776F6873)
          {
            goto LABEL_101;
          }

          goto LABEL_100;
        case 24:
          v12 = 0x53656B6F6D73;
LABEL_54:
          v11 = 0xEB00000000726F73;
          if (v8 != (v12 & 0xFFFFFFFFFFFFLL | 0x6E65000000000000))
          {
            goto LABEL_101;
          }

          goto LABEL_100;
        case 25:
          v11 = 0xE900000000000072;
          if (v8 != 0x656C6B6E69727073)
          {
            goto LABEL_101;
          }

          goto LABEL_100;
        case 26:
          v11 = 0xE600000000000000;
          if (v8 != 0x686374697773)
          {
            goto LABEL_101;
          }

          goto LABEL_100;
        case 27:
          v11 = 0xEA00000000006E6FLL;
          if (v8 != 0x69736976656C6574)
          {
            goto LABEL_101;
          }

          goto LABEL_100;
        case 28:
          v11 = 0x80000002528E5150;
          if (v8 != 0xD000000000000011)
          {
            goto LABEL_101;
          }

          goto LABEL_100;
        case 29:
          v10 = 0x74736F6D72656874;
          v11 = 0xEA00000000007461;
          goto LABEL_99;
        case 30:
          v11 = 0xE500000000000000;
          if (v8 != 0x65766C6176)
          {
            goto LABEL_101;
          }

          goto LABEL_100;
        case 31:
          v11 = 0xE600000000000000;
          if (v8 != 0x776F646E6977)
          {
            goto LABEL_101;
          }

          goto LABEL_100;
        case 32:
          v17 = 0x6F43776F646E6977;
          v18 = 0x676E69726576;
LABEL_90:
          v11 = v18 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
          if (v8 != v17)
          {
            goto LABEL_101;
          }

          goto LABEL_100;
        default:
LABEL_99:
          if (v8 != v10)
          {
            goto LABEL_101;
          }

LABEL_100:
          if (v7 == v11)
          {

            return v4;
          }

LABEL_101:
          v19 = sub_2528C1060();

          if (v19)
          {
            return v4;
          }

          v4 = (v4 + 1) & v6;
          if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
          {
            return v4;
          }

          break;
      }
    }
  }

  return v4;
}

unint64_t sub_25278AFB0(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    v6 = a1;
    while (1)
    {
      v7 = *(*(v2 + 48) + v4);
      if (v7 > 2)
      {
        if (v7 == 3)
        {
          v9 = 0xE400000000000000;
          v8 = 1701670760;
        }

        else
        {
          if (v7 == 4)
          {
            v8 = 1836019570;
          }

          else
          {
            v8 = 1701736314;
          }

          v9 = 0xE400000000000000;
        }
      }

      else if (*(*(v2 + 48) + v4))
      {
        if (v7 == 1)
        {
          v8 = 0x7954656369766564;
        }

        else
        {
          v8 = 0x70756F7267;
        }

        if (v7 == 1)
        {
          v9 = 0xEA00000000006570;
        }

        else
        {
          v9 = 0xE500000000000000;
        }
      }

      else
      {
        v8 = 0x614E656369766564;
        v9 = 0xEA0000000000656DLL;
      }

      v10 = 1836019570;
      if (v6 != 4)
      {
        v10 = 1701736314;
      }

      if (v6 == 3)
      {
        v10 = 1701670760;
      }

      v11 = 0xEA00000000006570;
      v12 = 0x7954656369766564;
      if (v6 != 1)
      {
        v12 = 0x70756F7267;
        v11 = 0xE500000000000000;
      }

      if (!v6)
      {
        v12 = 0x614E656369766564;
        v11 = 0xEA0000000000656DLL;
      }

      v13 = v6 <= 2 ? v12 : v10;
      v14 = v6 <= 2 ? v11 : 0xE400000000000000;
      if (v8 == v13 && v9 == v14)
      {
        break;
      }

      v15 = sub_2528C1060();

      if ((v15 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_25278B1C4(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 0xD000000000000010;
    }

    else
    {
      v6 = 6449010;
    }

    if (a1)
    {
      v7 = 0x80000002528E51C0;
    }

    else
    {
      v7 = 0xE300000000000000;
    }

    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 0xD000000000000010 : 6449010;
      v9 = *(*(v2 + 48) + v4) ? 0x80000002528E51C0 : 0xE300000000000000;
      if (v8 == v6 && v9 == v7)
      {
        break;
      }

      v11 = sub_2528C1060();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_25278B2FC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_25272BFF4(0, &qword_27F4FD298, 0x277CD1970);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_2528C0D60();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_25278B3D0(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v17 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v19 + 48) + v4);
      if (v6 > 3)
      {
        if (*(*(v19 + 48) + v4) > 5u)
        {
          if (v6 == 6)
          {
            v9 = "17-A590-755E1AAC02AE";
          }

          else
          {
            v9 = "73-8FBD-0E8978A33403";
          }
        }

        else if (v6 == 4)
        {
          v9 = "60-AD68-D91053B75F44";
        }

        else
        {
          v9 = "7E-BE63-1D00B1500545";
        }
      }

      else
      {
        if (v6 == 2)
        {
          v7 = "73-A058-C5E64BC487B2";
        }

        else
        {
          v7 = "CE-986D-63B28F62C9E3";
        }

        if (*(*(v19 + 48) + v4))
        {
          v8 = "13-AA62-01754F256DD5";
        }

        else
        {
          v8 = "ult";
        }

        if (*(*(v19 + 48) + v4) <= 1u)
        {
          v9 = v8;
        }

        else
        {
          v9 = v7;
        }
      }

      v10 = v9 | 0x8000000000000000;
      v11 = "17-A590-755E1AAC02AE";
      if (v5 != 6)
      {
        v11 = "73-8FBD-0E8978A33403";
      }

      v12 = "60-AD68-D91053B75F44";
      if (v5 != 4)
      {
        v12 = "7E-BE63-1D00B1500545";
      }

      if (v5 <= 5)
      {
        v11 = v12;
      }

      if (v5 == 2)
      {
        v13 = "73-A058-C5E64BC487B2";
      }

      else
      {
        v13 = "CE-986D-63B28F62C9E3";
      }

      if (v5)
      {
        v14 = "13-AA62-01754F256DD5";
      }

      else
      {
        v14 = "ult";
      }

      if (v5 <= 1)
      {
        v13 = v14;
      }

      if (v5 <= 3)
      {
        v11 = v13;
      }

      if (v10 == (v11 | 0x8000000000000000))
      {
        break;
      }

      v15 = sub_2528C1060();

      if ((v15 & 1) == 0)
      {
        v4 = (v4 + 1) & v17;
        if ((*(v18 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_25278B5E8(unint64_t result, char a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

uint64_t sub_25278B62C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_2528BF9D0();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_25278B6E4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for DeviceEntity();
  result = sub_252791C14(a2, v8 + *(*(v9 - 8) + 72) * a1, type metadata accessor for DeviceEntity);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

_OWORD *sub_25278B798(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_252712E3C(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_25278B804(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_2528BFB20();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD1F8, &unk_2528CDFF0);
  result = sub_25274AA0C(a3, v10 + *(*(v11 - 8) + 72) * a1, &qword_27F4FD1F8, &unk_2528CDFF0);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

uint64_t sub_25278B8FC(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_2528BECF0();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_25278B9B4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = sub_2528C0260();
  result = (*(*(v8 - 8) + 32))(v7 + *(*(v8 - 8) + 72) * a1, a3, v8);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

uint64_t sub_25278BA60(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_2528BF9D0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_252785D14(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_2527E1078();
      goto LABEL_7;
    }

    sub_2527DDCC4(v18, a3 & 1);
    v25 = *v4;
    v26 = sub_252785D14(a2);
    if ((v19 & 1) == (v27 & 1))
    {
      v15 = v26;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_25278B62C(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_2528C10A0();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = *(v22 + 8 * v15);
  *(v22 + 8 * v15) = a1;
}

uint64_t sub_25278BC84(uint64_t a1, uint64_t *a2, char a3, void (*a4)(void), void (*a5)(void))
{
  v31 = a5;
  v7 = v5;
  v11 = type metadata accessor for DeviceEntity();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v5;
  v17 = sub_252785BD4(a2);
  v18 = *(v15 + 16);
  v19 = (v16 & 1) == 0;
  v20 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
    goto LABEL_15;
  }

  v21 = v16;
  v22 = *(v15 + 24);
  if (v22 < v20 || (a3 & 1) == 0)
  {
    if (v22 >= v20 && (a3 & 1) == 0)
    {
      a4();
      goto LABEL_7;
    }

    v31();
    v27 = *v7;
    v28 = sub_252785BD4(a2);
    if ((v21 & 1) == (v29 & 1))
    {
      v17 = v28;
      v23 = *v7;
      if (v21)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_252791A94(a2, v14, type metadata accessor for DeviceEntity);
      return sub_25278B6E4(v17, v14, a1, v23);
    }

LABEL_15:
    result = sub_2528C10A0();
    __break(1u);
    return result;
  }

LABEL_7:
  v23 = *v7;
  if ((v21 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v24 = v23[7];
  v25 = *(v24 + 8 * v17);
  *(v24 + 8 * v17) = a1;
}

_OWORD *sub_25278BE40(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_252785B30(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_2527E1A40();
      v11 = v19;
      goto LABEL_8;
    }

    sub_2527DEB7C(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_252785B30(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_2528C10A0();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0Tm(v23);

    return sub_252712E3C(a1, v23);
  }

  else
  {
    sub_25278B798(v11, a2, a3, a1, v22);
  }
}

uint64_t sub_25278BF90(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_2528BFB20();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_252785DE8(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_2527E1BE4();
      goto LABEL_7;
    }

    sub_2527DEE34(v18, a3 & 1);
    v25 = *v4;
    v26 = sub_252785DE8(a2);
    if ((v19 & 1) == (v27 & 1))
    {
      v15 = v26;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_25278B804(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_2528C10A0();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = v22 + *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD1F8, &unk_2528CDFF0) - 8) + 72) * v15;

  return sub_252791AFC(a1, v23);
}

void sub_25278C184(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_2528BECF0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_252785C40(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_2527E24A4();
      goto LABEL_7;
    }

    sub_2527DFB3C(v18, a3 & 1);
    v24 = *v4;
    v25 = sub_252785C40(a2);
    if ((v19 & 1) == (v26 & 1))
    {
      v15 = v25;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      sub_25278B8FC(v15, v12, a1, v21);
      return;
    }

LABEL_15:
    sub_2528C10A0();
    __break(1u);
    return;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = *(v22 + 8 * v15);
  *(v22 + 8 * v15) = a1;
}

uint64_t sub_25278C350(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_252715000(a2);
  v11 = *(v8 + 16);
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v8 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_2527E2718();
      goto LABEL_7;
    }

    sub_2527DFF18(v13, a3 & 1);
    v24 = *v4;
    v25 = sub_252715000(a2);
    if ((v14 & 1) == (v26 & 1))
    {
      v10 = v25;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_2528C10A0();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if (v14)
  {
LABEL_8:
    v17 = v16[7];
    v18 = sub_2528C0260();
    v19 = *(v18 - 8);
    v20 = *(v19 + 40);
    v21 = v18;
    v22 = v17 + *(v19 + 72) * v10;

    return v20(v22, a1, v21);
  }

LABEL_13:

  return sub_25278B9B4(v10, a2, a1, v16);
}

unint64_t sub_25278C4B8(uint64_t a1, uint64_t a2, unsigned __int8 a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_252786CBC(a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_2527E0264(v16, a4 & 1);
      v20 = *v5;
      result = sub_252786CBC(a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_16:
        result = sub_2528C10A0();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_2527E2980();
      result = v19;
    }
  }

  v22 = *v5;
  if ((v17 & 1) == 0)
  {
    v22[(result >> 6) + 8] |= 1 << result;
    *(v22[6] + result) = a3;
    v25 = (v22[7] + 16 * result);
    *v25 = a1;
    v25[1] = a2;
    v26 = v22[2];
    v15 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (!v15)
    {
      v22[2] = v27;
      return result;
    }

    goto LABEL_15;
  }

  v23 = (v22[7] + 16 * result);
  v24 = v23[1];
  *v23 = a1;
  v23[1] = a2;
}

unint64_t sub_25278C618(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FBEE0, &qword_2528C25A8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v21 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD270, &qword_2528C7D88);
    v8 = sub_2528C0F20();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    sub_2528BEA50();
    while (1)
    {
      sub_25272006C(v10, v6, &qword_27F4FBEE0, &qword_2528C25A8);
      v12 = *v6;
      result = sub_2527857C4(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = v12;
      v16 = v8[7];
      v17 = sub_2528BE910();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, &v6[v9], v17);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_25278C800(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FBED0, &qword_2528C2598);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v21 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD268, &qword_2528C7D80);
    v8 = sub_2528C0F20();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    sub_2528BEA50();
    while (1)
    {
      sub_25272006C(v10, v6, &qword_27F4FBED0, &qword_2528C2598);
      v12 = *v6;
      result = sub_252785868(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = v12;
      v16 = v8[7];
      v17 = sub_2528BE910();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, &v6[v9], v17);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_25278C9E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FBEF0, &qword_2528C25B8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD440, &qword_2528C7F18);
    v8 = sub_2528C0F20();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    sub_2528BEA50();
    while (1)
    {
      sub_25272006C(v10, v6, &qword_27F4FBEF0, &qword_2528C25B8);
      result = sub_252785918(*v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = *v6;
      v15 = v8[7];
      v16 = sub_2528BE910();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v6[v9], v16);
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_25278CBD0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC1F0, &qword_2528C38C8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD438, &qword_2528C7F10);
    v8 = sub_2528C0F20();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    sub_2528BEA50();
    while (1)
    {
      sub_25272006C(v10, v6, &qword_27F4FC1F0, &qword_2528C38C8);
      result = sub_252785A50(*v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = *v6;
      v15 = v8[7];
      v16 = sub_2528BE910();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v6[v9], v16);
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_25278CDB8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD248, &qword_2528C7D68);
    v3 = sub_2528C0F20();
    sub_2528BEA50();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;

      result = sub_252786B48(v5, AttributeKind.rawValue.getter, sub_252787630);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_25278CED4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD1A8, &qword_2528C7D18);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD1B0, &unk_2528CDFD0);
    v8 = sub_2528C0F20();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    sub_2528BEA50();
    while (1)
    {
      sub_25272006C(v10, v6, &qword_27F4FD1A8, &qword_2528C7D18);
      result = sub_252785C40(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_2528BECF0();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      v18 = sub_2528BEEC0();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v14, &v6[v9], v18);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_25278D0F4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD090, &unk_2528C95C0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD430, &qword_2528C7F08);
    v8 = sub_2528C0F20();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    sub_2528BEA50();
    while (1)
    {
      sub_25272006C(v10, v6, &qword_27F4FD090, &unk_2528C95C0);
      result = sub_252785C40(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_2528BECF0();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      v18 = type metadata accessor for HomeEntity.SnapshotPair(0);
      result = sub_252791C14(&v6[v9], v17 + *(*(v18 - 8) + 72) * v14, type metadata accessor for HomeEntity.SnapshotPair);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_25278D334(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCE68, &unk_2528CE030);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD240, &qword_2528C7D60);
    v8 = sub_2528C0F20();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    sub_2528BEA50();
    while (1)
    {
      sub_25272006C(v10, v6, &qword_27F4FCE68, &unk_2528CE030);
      result = sub_252785D14(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_2528BF9D0();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void *sub_25278D540(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD1C8, &qword_2528C7D20);
  v3 = sub_2528C0F20();
  v4 = a1[4];
  v5 = a1[5];
  v6 = sub_252715000(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = a1 + 7;
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 1);
    v15 = *v10;

    v8 = sub_252715000(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_25278D648(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD1D8, &qword_2528C7D28);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v21 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD1E0, &qword_2528C7D30);
    v8 = sub_2528C0F20();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    while (1)
    {
      sub_25272006C(v10, v6, &qword_27F4FD1D8, &qword_2528C7D28);
      v12 = *v6;
      result = sub_252715000(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + 8 * result) = v12;
      v16 = v8[7];
      v17 = sub_2528C0260();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, v6 + v9, v17);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
      v10 += v11;
      if (!--v7)
      {
        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_25278D824(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD1D0, &unk_2528CDFE0);
    v3 = sub_2528C0F20();
    sub_2528BEA50();
    for (i = (a1 + 73); ; i += 48)
    {
      v5 = *(i - 41);
      v6 = *(i - 33);
      v7 = *(i - 25);
      v8 = *(i - 17);
      v9 = *(i - 9);
      v10 = *(i - 1);
      v11 = *i;
      sub_25277B0C4(v6, v7, v8, v9, v10, *i);
      result = sub_252786B48(v5, AttributeKind.rawValue.getter, sub_252787630);
      if (v13)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      v14 = v3[7] + 40 * result;
      *v14 = v6;
      *(v14 + 8) = v7;
      *(v14 + 16) = v8;
      *(v14 + 24) = v9;
      *(v14 + 32) = v10;
      *(v14 + 33) = v11;
      v15 = v3[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v3[2] = v17;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_25278D994(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD200, &qword_2528C7D38);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v21 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD208, &qword_2528C7D40);
    v8 = sub_2528C0F20();
    v22 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    sub_2528BEA50();
    while (1)
    {
      sub_25272006C(v9, v6, &qword_27F4FD200, &qword_2528C7D38);
      result = sub_252785DE8(v6);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v8[6];
      v15 = sub_2528BFB20();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v6, v15);
      v16 = v8[7];
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD1F8, &unk_2528CDFF0);
      result = sub_25274AA0C(&v6[v22], v16 + *(*(v17 - 8) + 72) * v13, &qword_27F4FD1F8, &unk_2528CDFF0);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
      v9 += v10;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_25278DBC0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD060, &qword_2528C7490);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD260, &qword_2528C7D78);
    v8 = sub_2528C0F20();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    sub_2528BEA50();
    while (1)
    {
      sub_25272006C(v10, v6, &qword_27F4FD060, &qword_2528C7490);
      result = sub_252785C40(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_2528BECF0();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      v18 = sub_2528C00D0();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v14, &v6[v9], v18);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_25278DE04(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v28 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = (&v27 - v12);
  v14 = *(a1 + 16);
  if (v14)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    v15 = sub_2528C0F20();
    v16 = *(v9 + 48);
    v17 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v18 = *(v10 + 72);
    sub_2528BEA50();
    while (1)
    {
      sub_25272006C(v17, v13, a2, v28);
      result = sub_252785BD4(v13);
      if (v20)
      {
        break;
      }

      v21 = result;
      *(v15 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v22 = v15[6];
      v23 = type metadata accessor for DeviceEntity();
      result = sub_252791C14(v13, v22 + *(*(v23 - 8) + 72) * v21, type metadata accessor for DeviceEntity);
      *(v15[7] + 8 * v21) = *(v13 + v16);
      v24 = v15[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        goto LABEL_10;
      }

      v15[2] = v26;
      v17 += v18;
      if (!--v14)
      {

        return v15;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_25278DFE0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC280, &unk_2528CE050);
    v3 = sub_2528C0F20();
    v4 = a1 + 32;
    sub_2528BEA50();
    while (1)
    {
      sub_25272006C(v4, &v13, &qword_27F4FD428, &qword_2528C7F00);
      v5 = v13;
      v6 = v14;
      result = sub_252785B30(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_252712E3C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_25278E110(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC628, &qword_2528C4750);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_25278E178(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD210, &qword_2528C7D48);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD218, &qword_2528C7D50);
    v8 = sub_2528C0F20();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    sub_2528BEA50();
    while (1)
    {
      sub_25272006C(v10, v6, &qword_27F4FD210, &qword_2528C7D48);
      result = sub_252785EBC(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_2528BFDE0();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      result = sub_252712E3C(&v6[v9], (v8[7] + 32 * v14));
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_25278E364(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD418, &unk_2528C8810);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD420, &qword_2528C7EF8);
    v8 = sub_2528C0F20();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    sub_2528BEA50();
    while (1)
    {
      sub_25272006C(v10, v6, &qword_27F4FD418, &unk_2528C8810);
      result = sub_252786B48(*v6, HomeError.rawValue.getter, sub_252787AB8);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = *v6;
      v15 = v8[7];
      v16 = sub_2528BE910();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v6[v9], v16);
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_25278E574(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD408, &qword_2528C8800);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD410, &qword_2528C7EF0);
    v8 = sub_2528C0F20();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    sub_2528BEA50();
    while (1)
    {
      sub_25272006C(v10, v6, &qword_27F4FD408, &qword_2528C8800);
      result = sub_252786B48(*v6, DeviceError.rawValue.getter, sub_252788010);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = *v6;
      v15 = v8[7];
      v16 = sub_2528BE910();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v6[v9], v16);
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_25278E784(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD188, &qword_2528CDFA0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD190, &qword_2528CDFB0);
    v8 = sub_2528C0F20();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    sub_2528BEA50();
    while (1)
    {
      sub_25272006C(v10, v6, &qword_27F4FD188, &qword_2528CDFA0);
      result = sub_252785EBC(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_2528BFDE0();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      v18 = type metadata accessor for RequiredCharacteristicValue();
      result = sub_252791C14(&v6[v9], v17 + *(*(v18 - 8) + 72) * v14, type metadata accessor for RequiredCharacteristicValue);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_25278E9A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD3F8, &qword_2528C7EE0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD400, &qword_2528C7EE8);
    v8 = sub_2528C0F20();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    sub_2528BEA50();
    while (1)
    {
      sub_25272006C(v10, v6, &qword_27F4FD3F8, &qword_2528C7EE0);
      result = sub_252785FBC(*v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = *v6;
      v15 = v8[7];
      v16 = sub_2528BE910();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v6[v9], v16);
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_25278EB88(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD3E8, &qword_2528C7ED0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD3F0, &qword_2528C7ED8);
    v8 = sub_2528C0F20();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    sub_2528BEA50();
    while (1)
    {
      sub_25272006C(v10, v6, &qword_27F4FD3E8, &qword_2528C7ED0);
      result = sub_252786084(*v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = *v6;
      v15 = v8[7];
      v16 = sub_2528BE910();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v6[v9], v16);
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_25278ED70(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD3D8, &qword_2528C7EC0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD3E0, &qword_2528C7EC8);
    v8 = sub_2528C0F20();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    sub_2528BEA50();
    while (1)
    {
      sub_25272006C(v10, v6, &qword_27F4FD3D8, &qword_2528C7EC0);
      result = sub_252786128(*v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = *v6;
      v15 = v8[7];
      v16 = sub_2528BE910();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v6[v9], v16);
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_25278EF58(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD3C8, &qword_2528C7EB0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD3D0, &qword_2528C7EB8);
    v8 = sub_2528C0F20();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    sub_2528BEA50();
    while (1)
    {
      sub_25272006C(v10, v6, &qword_27F4FD3C8, &qword_2528C7EB0);
      result = sub_2527861D0(*v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = *v6;
      v15 = v8[7];
      v16 = sub_2528BE910();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v6[v9], v16);
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_25278F140(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD3B8, &qword_2528C7EA0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD3C0, &qword_2528C7EA8);
    v8 = sub_2528C0F20();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    sub_2528BEA50();
    while (1)
    {
      sub_25272006C(v10, v6, &qword_27F4FD3B8, &qword_2528C7EA0);
      result = sub_25278628C(*v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = *v6;
      v15 = v8[7];
      v16 = sub_2528BE910();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v6[v9], v16);
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_25278F328(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD3A8, &qword_2528C7E90);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD3B0, &qword_2528C7E98);
    v8 = sub_2528C0F20();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    sub_2528BEA50();
    while (1)
    {
      sub_25272006C(v10, v6, &qword_27F4FD3A8, &qword_2528C7E90);
      result = sub_2527863A0(*v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = *v6;
      v15 = v8[7];
      v16 = sub_2528BE910();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v6[v9], v16);
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_25278F510(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD398, &qword_2528C7E80);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD3A0, &qword_2528C7E88);
    v8 = sub_2528C0F20();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    sub_2528BEA50();
    while (1)
    {
      sub_25272006C(v10, v6, &qword_27F4FD398, &qword_2528C7E80);
      result = sub_252786470(*v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = *v6;
      v15 = v8[7];
      v16 = sub_2528BE910();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v6[v9], v16);
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_25278F6F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD388, &qword_2528C7E70);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD390, &qword_2528C7E78);
    v8 = sub_2528C0F20();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    sub_2528BEA50();
    while (1)
    {
      sub_25272006C(v10, v6, &qword_27F4FD388, &qword_2528C7E70);
      result = sub_252786554(*v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = *v6;
      v15 = v8[7];
      v16 = sub_2528BE910();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v6[v9], v16);
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_25278F8E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD378, &qword_2528C7E60);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD380, &qword_2528C7E68);
    v8 = sub_2528C0F20();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    sub_2528BEA50();
    while (1)
    {
      sub_25272006C(v10, v6, &qword_27F4FD378, &qword_2528C7E60);
      result = sub_252786B48(*v6, RobotVacuumCleanerCleanMode.rawValue.getter, sub_252789284);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = *v6;
      v15 = v8[7];
      v16 = sub_2528BE910();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v6[v9], v16);
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_25278FAF0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD368, &qword_2528C7E50);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD370, &qword_2528C7E58);
    v8 = sub_2528C0F20();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    sub_2528BEA50();
    while (1)
    {
      sub_25272006C(v10, v6, &qword_27F4FD368, &qword_2528C7E50);
      result = sub_252786654(*v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = *v6;
      v15 = v8[7];
      v16 = sub_2528BE910();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v6[v9], v16);
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_25278FCD8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD358, &qword_2528C7E40);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD360, &qword_2528C7E48);
    v8 = sub_2528C0F20();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    sub_2528BEA50();
    while (1)
    {
      sub_25272006C(v10, v6, &qword_27F4FD358, &qword_2528C7E40);
      result = sub_252786B48(*v6, RobotVacuumCleanerRunState.rawValue.getter, sub_2527897D8);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = *v6;
      v15 = v8[7];
      v16 = sub_2528BE910();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v6[v9], v16);
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_25278FEE8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD348, &qword_2528C7E30);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD350, &qword_2528C7E38);
    v8 = sub_2528C0F20();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    sub_2528BEA50();
    while (1)
    {
      sub_25272006C(v10, v6, &qword_27F4FD348, &qword_2528C7E30);
      result = sub_252786710(*v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = *v6;
      v15 = v8[7];
      v16 = sub_2528BE910();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v6[v9], v16);
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2527900D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD338, &qword_2528C7E20);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD340, &qword_2528C7E28);
    v8 = sub_2528C0F20();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    sub_2528BEA50();
    while (1)
    {
      sub_25272006C(v10, v6, &qword_27F4FD338, &qword_2528C7E20);
      result = sub_252786804(*v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = *v6;
      v15 = v8[7];
      v16 = sub_2528BE910();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v6[v9], v16);
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2527902B8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD328, &qword_2528C7E10);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD330, &qword_2528C7E18);
    v8 = sub_2528C0F20();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    sub_2528BEA50();
    while (1)
    {
      sub_25272006C(v10, v6, &qword_27F4FD328, &qword_2528C7E10);
      result = sub_2527868FC(*v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = *v6;
      v15 = v8[7];
      v16 = sub_2528BE910();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v6[v9], v16);
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2527904A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD318, &qword_2528C7E00);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD320, &qword_2528C7E08);
    v8 = sub_2528C0F20();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    sub_2528BEA50();
    while (1)
    {
      sub_25272006C(v10, v6, &qword_27F4FD318, &qword_2528C7E00);
      result = sub_252786A08(*v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = *v6;
      v15 = v8[7];
      v16 = sub_2528BE910();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v6[v9], v16);
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_252790688(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD308, &qword_2528C7DF0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD310, &qword_2528C7DF8);
    v8 = sub_2528C0F20();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    sub_2528BEA50();
    while (1)
    {
      sub_25272006C(v10, v6, &qword_27F4FD308, &qword_2528C7DF0);
      result = sub_252786AB8(*v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = *v6;
      v15 = v8[7];
      v16 = sub_2528BE910();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v6[v9], v16);
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_252790870(uint64_t a1)
{
  result = a1 & ~(-1 << *(v1 + 32));
  v3 = *(v1 + ((result >> 3) & 0xFFFFFFFFFFFFFF8) + 64) >> result;
  return result;
}

unint64_t sub_25279089C()
{
  v1 = *(v0 + 40);
  sub_2528C1130();
  sub_2528C0A40();
  v2 = sub_2528C1180();

  return sub_252790870(v2);
}

unint64_t sub_252790904(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD2F8, &qword_2528CDDD0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v6 = &v19 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD300, &qword_2528C7DE8);
    v8 = sub_2528C0F20();
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    sub_2528BEA50();
    while (1)
    {
      sub_25272006C(v9, v6, &qword_27F4FD2F8, &qword_2528CDDD0);
      result = sub_25279089C();
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v8 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v14 = *(v8 + 56);
      v15 = sub_2528BE910();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v6, v15);
      v16 = *(v8 + 16);
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      *(v8 + 16) = v18;
      v9 += v10;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_252790AD0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD2E8, &qword_2528D0E00);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD2F0, &qword_2528C7DE0);
    v8 = sub_2528C0F20();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    sub_2528BEA50();
    while (1)
    {
      sub_25272006C(v10, v6, &qword_27F4FD2E8, &qword_2528D0E00);
      result = sub_252786B48(*v6, DeviceType.SingleDeviceType.rawValue.getter, sub_25278A6F8);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = *v6;
      v15 = v8[7];
      v16 = sub_2528BE910();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v6[v9], v16);
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_252790D04(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v28 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v27 - v12;
  v14 = *(a1 + 16);
  if (v14)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    v15 = sub_2528C0F20();
    v16 = *(v9 + 48);
    v17 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v18 = *(v10 + 72);
    sub_2528BEA50();
    while (1)
    {
      sub_25272006C(v17, v13, a2, v28);
      result = sub_252785C40(v13);
      if (v20)
      {
        break;
      }

      v21 = result;
      *(v15 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v22 = v15[6];
      v23 = sub_2528BECF0();
      result = (*(*(v23 - 8) + 32))(v22 + *(*(v23 - 8) + 72) * v21, v13, v23);
      *(v15[7] + 8 * v21) = *&v13[v16];
      v24 = v15[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        goto LABEL_10;
      }

      v15[2] = v26;
      v17 += v18;
      if (!--v14)
      {

        return v15;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_252790EE4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD2D0, &unk_2528CE040);
    v3 = sub_2528C0F20();
    sub_2528BEA50();
    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 16);
      v7 = *(i - 1);
      v6 = *i;

      result = sub_252786CBC(v5);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      v10 = (v3[7] + 16 * result);
      *v10 = v7;
      v10[1] = v6;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_252790FDC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD2C0, &qword_2528C7DC0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD2C8, &qword_2528C7DC8);
    v8 = sub_2528C0F20();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    sub_2528BEA50();
    while (1)
    {
      sub_25272006C(v10, v6, &qword_27F4FD2C0, &qword_2528C7DC0);
      result = sub_252786DD0(*v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = *v6;
      v15 = v8[7];
      v16 = sub_2528BE910();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v6[v9], v16);
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2527911C4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD2B0, &qword_2528C7DB0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD2B8, &qword_2528C7DB8);
    v8 = sub_2528C0F20();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    sub_2528BEA50();
    while (1)
    {
      sub_25272006C(v10, v6, &qword_27F4FD2B0, &qword_2528C7DB0);
      result = sub_252786CBC(*v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = *v6;
      v15 = v8[7];
      v16 = sub_2528BE910();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v6[v9], v16);
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2527913AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD2A0, &qword_2528C7DA0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v21 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD2A8, &qword_2528C7DA8);
    v8 = sub_2528C0F20();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    sub_2528BEA50();
    while (1)
    {
      sub_25272006C(v10, v6, &qword_27F4FD2A0, &qword_2528C7DA0);
      v12 = *v6;
      result = sub_252786E74(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + 8 * result) = v12;
      v16 = v8[7];
      v17 = sub_2528BF350();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, v6 + v9, v17);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_252791594(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD288, &qword_2528D5560);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD290, &qword_2528C7D98);
    v8 = sub_2528C0F20();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    sub_2528BEA50();
    while (1)
    {
      sub_25272006C(v10, v6, &qword_27F4FD288, &qword_2528D5560);
      result = sub_252786B48(*v6, AttributeKind.rawValue.getter, sub_252787630);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = *v6;
      v15 = v8[7];
      v16 = sub_2528BE910();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v6[v9], v16);
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2527917A4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD278, &qword_2528E41F0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD280, &qword_2528C7D90);
    v8 = sub_2528C0F20();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    sub_2528BEA50();
    while (1)
    {
      sub_25272006C(v10, v6, &qword_27F4FD278, &qword_2528E41F0);
      result = sub_252786EB8(*v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = *v6;
      v15 = v8[7];
      v16 = sub_2528BE910();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v6[v9], v16);
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_25279198C(uint64_t result)
{
  if (result > 11)
  {
    if (result > 30)
    {
      switch(result)
      {
        case 31:
          return 9;
        case 32:
          return 10;
        case 33:
          return 11;
      }
    }

    else
    {
      switch(result)
      {
        case 12:
          return 6;
        case 13:
          return 7;
        case 30:
          return 8;
      }
    }

    return 12;
  }

  if (result <= 2)
  {
    if (result <= 2)
    {
      return result;
    }

    return 12;
  }

  if (result != 3)
  {
    if (result == 10)
    {
      return 4;
    }

    if (result == 11)
    {
      return 5;
    }

    return 12;
  }

  return result;
}

uint64_t sub_252791A94(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_252791AFC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD1F8, &unk_2528CDFF0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_252791B6C(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_252791BB4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_252791C14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_252791C80(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 160) = a5;
  *(v6 + 168) = a6;
  *(v6 + 51) = a4;
  *(v6 + 144) = a1;
  *(v6 + 152) = a3;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC480, &unk_2528C7FA0) - 8) + 64) + 15;
  *(v6 + 176) = swift_task_alloc();
  v8 = sub_2528BEEC0();
  *(v6 + 184) = v8;
  v9 = *(v8 - 8);
  *(v6 + 192) = v9;
  v10 = *(v9 + 64) + 15;
  *(v6 + 200) = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD98, &qword_2528C6200) - 8) + 64) + 15;
  *(v6 + 208) = swift_task_alloc();
  *(v6 + 216) = swift_task_alloc();
  *(v6 + 224) = swift_task_alloc();
  v12 = sub_2528C06B0();
  *(v6 + 232) = v12;
  v13 = *(v12 - 8);
  *(v6 + 240) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 248) = swift_task_alloc();
  v15 = sub_2528C0530();
  *(v6 + 256) = v15;
  v16 = *(v15 - 8);
  *(v6 + 264) = v16;
  v17 = *(v16 + 64) + 15;
  *(v6 + 272) = swift_task_alloc();
  *(v6 + 280) = swift_task_alloc();
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC628, &qword_2528C4750) - 8) + 64) + 15;
  *(v6 + 288) = swift_task_alloc();
  v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD458, &unk_2528C7FE0) - 8) + 64) + 15;
  *(v6 + 296) = swift_task_alloc();
  v20 = sub_2528BFD00();
  *(v6 + 304) = v20;
  v21 = *(v20 - 8);
  *(v6 + 312) = v21;
  v22 = *(v21 + 64) + 15;
  *(v6 + 320) = swift_task_alloc();
  v23 = *(*(sub_2528BEC40() - 8) + 64) + 15;
  *(v6 + 328) = swift_task_alloc();
  v24 = sub_2528BECF0();
  *(v6 + 336) = v24;
  v25 = *(v24 - 8);
  *(v6 + 344) = v25;
  v26 = *(v25 + 64) + 15;
  *(v6 + 352) = swift_task_alloc();
  *(v6 + 360) = swift_task_alloc();
  *(v6 + 368) = swift_task_alloc();
  v27 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCEF0, &unk_2528C6AB0) - 8) + 64) + 15;
  *(v6 + 376) = swift_task_alloc();
  v28 = sub_2528BF290();
  *(v6 + 384) = v28;
  v29 = *(v28 - 8);
  *(v6 + 392) = v29;
  v30 = *(v29 + 64) + 15;
  *(v6 + 400) = swift_task_alloc();
  v31 = type metadata accessor for DeviceEntity();
  *(v6 + 408) = v31;
  v32 = *(v31 - 8);
  *(v6 + 416) = v32;
  v33 = *(v32 + 64) + 15;
  *(v6 + 424) = swift_task_alloc();
  *(v6 + 432) = swift_task_alloc();
  *(v6 + 440) = swift_task_alloc();
  *(v6 + 448) = swift_task_alloc();
  *(v6 + 456) = swift_task_alloc();
  *(v6 + 464) = swift_task_alloc();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD1F8, &unk_2528CDFF0);
  *(v6 + 472) = v34;
  v35 = *(v34 - 8);
  *(v6 + 480) = v35;
  v36 = *(v35 + 64) + 15;
  *(v6 + 488) = swift_task_alloc();
  *(v6 + 496) = swift_task_alloc();
  v37 = sub_2528BFB20();
  *(v6 + 504) = v37;
  v38 = *(v37 - 8);
  *(v6 + 512) = v38;
  v39 = *(v38 + 64) + 15;
  *(v6 + 520) = swift_task_alloc();
  *(v6 + 528) = swift_task_alloc();
  *(v6 + 536) = swift_task_alloc();
  v40 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD460, &qword_2528C7FF0) - 8) + 64) + 15;
  *(v6 + 544) = swift_task_alloc();
  *(v6 + 552) = swift_task_alloc();
  v41 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC478, &unk_2528C3F70) - 8) + 64) + 15;
  *(v6 + 560) = swift_task_alloc();
  v42 = sub_2528C0060();
  *(v6 + 568) = v42;
  v43 = *(v42 - 8);
  *(v6 + 576) = v43;
  v44 = *(v43 + 64) + 15;
  *(v6 + 584) = swift_task_alloc();
  v45 = sub_2528BEE30();
  *(v6 + 592) = v45;
  v46 = *(v45 - 8);
  *(v6 + 600) = v46;
  v47 = *(v46 + 64) + 15;
  *(v6 + 608) = swift_task_alloc();
  *(v6 + 616) = swift_task_alloc();
  v48 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDB8, &unk_2528C5CC0) - 8) + 64) + 15;
  *(v6 + 624) = swift_task_alloc();
  *(v6 + 632) = swift_task_alloc();
  *(v6 + 640) = swift_task_alloc();
  *(v6 + 648) = swift_task_alloc();
  *(v6 + 656) = swift_task_alloc();
  *(v6 + 664) = swift_task_alloc();
  v49 = sub_2528C00D0();
  *(v6 + 672) = v49;
  v50 = *(v49 - 8);
  *(v6 + 680) = v50;
  v51 = *(v50 + 64) + 15;
  *(v6 + 688) = swift_task_alloc();
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCE48, &unk_2528C61E0);
  *(v6 + 696) = v52;
  v53 = *(*(v52 - 8) + 64) + 15;
  *(v6 + 704) = swift_task_alloc();
  *(v6 + 712) = swift_task_alloc();
  *(v6 + 720) = swift_task_alloc();
  *(v6 + 728) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252792484, 0, 0);
}

uint64_t sub_252792484()
{
  v294 = v0;
  v1 = *(v0 + 144);
  v2 = *(v1 + 16);
  v274 = v1;
  if (v2)
  {
    v3 = *(v0 + 416);
    v4 = sub_252865A0C(v2, 0);
    v5 = sub_252868A7C(v291, v4 + ((*(v3 + 80) + 32) & ~*(v3 + 80)), v2, v1);

    sub_25271A648();
    if (v5 != v2)
    {
LABEL_138:
      __break(1u);
      return MEMORY[0x28216E680]();
    }

    v1 = *(v0 + 144);
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

  *(v0 + 736) = v4;
  v6 = v1 + 64;
  v283 = *(v0 + 416);
  v287 = *(v0 + 696);
  v7 = -1;
  v8 = -1 << *(v1 + 32);
  if (-v8 < 64)
  {
    v7 = ~(-1 << -v8);
  }

  v9 = v7 & *(v1 + 64);
  v10 = (63 - v8) >> 6;

  v11 = 0;
  v12 = MEMORY[0x277D84F90];
  v278 = v1;
LABEL_9:
  if (v9)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      goto LABEL_116;
    }

    if (v13 >= v10)
    {
      break;
    }

    v9 = *(v6 + 8 * v13);
    ++v11;
    if (v9)
    {
      v11 = v13;
LABEL_14:
      v14 = *(v0 + 728);
      v15 = *(v0 + 720);
      v16 = __clz(__rbit64(v9)) | (v11 << 6);
      sub_25272E7DC(*(v1 + 48) + *(v283 + 72) * v16, v14);
      *(v14 + *(v287 + 48)) = *(*(v1 + 56) + 8 * v16);
      sub_25274AA0C(v14, v15, &qword_27F4FCE48, &unk_2528C61E0);
      v17 = *(v15 + *(v287 + 48));

      sub_25272E840(v15);
      v18 = *(v17 + 16);
      v19 = *(v12 + 2);
      v20 = v19 + v18;
      if (__OFADD__(v19, v18))
      {
        __break(1u);
LABEL_129:
        __break(1u);
LABEL_130:
        __break(1u);
LABEL_131:
        __break(1u);
LABEL_132:
        __break(1u);
LABEL_133:
        __break(1u);
        goto LABEL_134;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v20 > *(v12 + 3) >> 1)
      {
        if (v19 <= v20)
        {
          v22 = v19 + v18;
        }

        else
        {
          v22 = v19;
        }

        v12 = sub_252737E74(isUniquelyReferenced_nonNull_native, v22, 1, v12);
      }

      v9 &= v9 - 1;
      if (*(v17 + 16))
      {
        if ((*(v12 + 3) >> 1) - *(v12 + 2) < v18)
        {
          goto LABEL_133;
        }

        swift_arrayInitWithCopy();

        v1 = v278;
        if (v18)
        {
          v23 = *(v12 + 2);
          v24 = __OFADD__(v23, v18);
          v25 = v23 + v18;
          if (v24)
          {
            goto LABEL_136;
          }

          *(v12 + 2) = v25;
        }
      }

      else
      {

        v1 = v278;
        if (v18)
        {
          goto LABEL_129;
        }
      }

      goto LABEL_9;
    }
  }

  v26 = *(v0 + 144);

  v27 = *(v12 + 2);
  v1 = MEMORY[0x277D84F90];
  if (!v27)
  {
    v30 = MEMORY[0x277D84F90];
LABEL_36:

    v36 = sub_252743F64(v30);
    *(v0 + 744) = v36;

    if (!*(v274 + 16) || !*(v36 + 16))
    {

      type metadata accessor for HomeAppIntentError();
      sub_25279F2D0(&qword_27F4FC2B0, type metadata accessor for HomeAppIntentError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v49 = *(v0 + 728);
      v50 = *(v0 + 720);
      v51 = *(v0 + 712);
      v52 = *(v0 + 704);
      v53 = *(v0 + 688);
      v54 = *(v0 + 664);
      v55 = *(v0 + 656);
      v56 = *(v0 + 648);
      v57 = *(v0 + 640);
      v58 = *(v0 + 632);
      v203 = *(v0 + 624);
      v205 = *(v0 + 616);
      v207 = *(v0 + 608);
      v209 = *(v0 + 584);
      v211 = *(v0 + 560);
      v213 = *(v0 + 552);
      v215 = *(v0 + 544);
      v217 = *(v0 + 536);
      v219 = *(v0 + 528);
      v221 = *(v0 + 520);
      v223 = *(v0 + 496);
      v225 = *(v0 + 488);
      v227 = *(v0 + 464);
      v229 = *(v0 + 456);
      v231 = *(v0 + 448);
      v233 = *(v0 + 440);
      v235 = *(v0 + 432);
      v237 = *(v0 + 424);
      v239 = *(v0 + 400);
      v241 = *(v0 + 376);
      v243 = *(v0 + 368);
      v245 = *(v0 + 360);
      v247 = *(v0 + 352);
      v249 = *(v0 + 328);
      v251 = *(v0 + 320);
      v253 = *(v0 + 296);
      v256 = *(v0 + 288);
      v259 = *(v0 + 280);
      v262 = *(v0 + 272);
      v265 = *(v0 + 248);
      v268 = *(v0 + 224);
      v271 = *(v0 + 216);
      v275 = *(v0 + 208);
      v279 = *(v0 + 200);
      v284 = *(v0 + 176);

      v59 = *(v0 + 8);

      return v59();
    }

    v37 = *(v0 + 680);
    v38 = *(v0 + 672);
    v39 = *(v0 + 664);
    v40 = *(v0 + 168);
    *(v0 + 104) = v1;
    sub_25272006C(v40, v39, &qword_27F4FCDB8, &unk_2528C5CC0);
    v41 = *(v37 + 48);
    *(v0 + 752) = v41;
    *(v0 + 760) = (v37 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    if (v41(v39, 1, v38) != 1)
    {
      v61 = *(v0 + 688);
      v62 = *(v0 + 680);
      v63 = *(v0 + 672);
      v64 = *(v0 + 664);
      v65 = *(v0 + 616);
      v66 = *(v0 + 160);
      v67 = *(v62 + 32);
      *(v0 + 768) = v67;
      *(v0 + 776) = (v62 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
      v67(v61, v64, v63);
      sub_2528BF2F0();
      v68 = *(MEMORY[0x277D151F0] + 4);
      v69 = swift_task_alloc();
      *(v0 + 784) = v69;
      *v69 = v0;
      v69[1] = sub_252793B24;
      v70 = *(v0 + 616);

      return MEMORY[0x28216E680]();
    }

    sub_2527213D8(*(v0 + 664), &qword_27F4FCDB8, &unk_2528C5CC0);
    *(v0 + 904) = 0;
    v42 = *(v0 + 416);
    v43 = *(v0 + 144);
    *(v0 + 112) = v1;
    v44 = *(v43 + 32);
    *(v0 + 1084) = v44;
    v45 = -1;
    v46 = -1 << v44;
    if (-(-1 << v44) < 64)
    {
      v45 = ~(-1 << -(-1 << v44));
    }

    v47 = v45 & *(v43 + 64);
    *(v0 + 52) = *MEMORY[0x277D15F78];
    *(v0 + 1080) = *MEMORY[0x277D15F70];

    if (v47)
    {
      v48 = 0;
LABEL_52:
      *(v0 + 920) = v48;
      *(v0 + 912) = v47;
      v72 = *(v0 + 720);
      v73 = *(v0 + 712);
      v74 = *(v0 + 704);
      v75 = *(v0 + 696);
      v76 = __clz(__rbit64(v47)) | (v48 << 6);
      v288 = *(v42 + 72);
      sub_25272E7DC(*(v43 + 48) + v288 * v76, v73);
      v77 = *(*(v43 + 56) + 8 * v76);
      v78 = *(v75 + 48);
      sub_25279F090(v73, v74);
      *(v74 + v78) = v77;
      sub_25272006C(v74, v72, &qword_27F4FCE48, &unk_2528C61E0);
      v79 = *(v72 + *(v75 + 48));

      sub_25272E840(v72);
      v257 = v79;
      v285 = *(v79 + 16);
      if (v285)
      {
        v80 = 0;
        v254 = v79 + 32;
        v81 = MEMORY[0x277D84F90];
        while (1)
        {
          if (v80 >= *(v79 + 16))
          {
            goto LABEL_130;
          }

          v82 = *(v0 + 736);
          v83 = *(v82 + 16);
          if (v83)
          {
            v276 = v80;
            v280 = v81;
            v84 = v254 + 40 * v80;
            v86 = *v84;
            v85 = *(v84 + 8);
            v87 = *(v84 + 16);
            v88 = *(v84 + 24);
            v89 = *(v84 + 32);
            v90 = *(*(v0 + 416) + 80);
            v91 = v82 + ((v90 + 32) & ~v90);
            v266 = v87;
            v269 = v85;
            v263 = v88;
            sub_252760C18(v86, v85, v87, v88, v89);
            v260 = v89;
            v92 = v89 >> 1;
            v272 = v86;
            v93 = v86 & 1;
            v94 = MEMORY[0x277D84F90];
            while (1)
            {
              v95 = *(v0 + 432);
              sub_25272E7DC(v91, v95);
              v96 = *(v95 + 16);
              sub_2528BE6B0();
              v97 = *(v0 + 49);
              v98 = v97 >> 14;
              v99 = (v97 >> 8) & 0x3F;
              if (v98 != 1)
              {
                v99 = *(v0 + 49);
              }

              if (!v98)
              {
                v99 = *(v0 + 49);
              }

              if (v92 == 44)
              {
                if (v99 != 2)
                {
LABEL_71:
                  (*(*(v0 + 312) + 56))(*(v0 + 296), 1, 1, *(v0 + 304));
                  goto LABEL_72;
                }

                v100 = *(v0 + 52);
              }

              else
              {
                if (v92 != 36)
                {
                  goto LABEL_71;
                }

                v100 = *(v0 + 1080);
              }

              v102 = *(v0 + 304);
              v101 = *(v0 + 312);
              v103 = *(v0 + 296);
              *v103 = v93;
              (*(v101 + 104))(v103, v100, v102);
              (*(v101 + 56))(v103, 0, 1, v102);
LABEL_72:
              v105 = *(v0 + 304);
              v104 = *(v0 + 312);
              v106 = *(v0 + 296);
              sub_25272E840(*(v0 + 432));
              if ((*(v104 + 48))(v106, 1, v105) == 1)
              {
                sub_2527213D8(*(v0 + 296), &qword_27F4FD458, &unk_2528C7FE0);
              }

              else
              {
                v107 = *(*(v0 + 312) + 32);
                v107(*(v0 + 320), *(v0 + 296), *(v0 + 304));
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v94 = sub_252737FAC(0, *(v94 + 2) + 1, 1, v94);
                }

                v109 = *(v94 + 2);
                v108 = *(v94 + 3);
                if (v109 >= v108 >> 1)
                {
                  v94 = sub_252737FAC(v108 > 1, v109 + 1, 1, v94);
                }

                v111 = *(v0 + 312);
                v110 = *(v0 + 320);
                v112 = *(v0 + 304);
                *(v94 + 2) = v109 + 1;
                v107(&v94[((*(v111 + 80) + 32) & ~*(v111 + 80)) + *(v111 + 72) * v109], v110, v112);
              }

              v91 += v288;
              if (!--v83)
              {
                sub_25272C15C(v272, v269, v266, v263, v260);
                v80 = v276;
                v81 = v280;
                v79 = v257;
                goto LABEL_80;
              }
            }
          }

          v94 = MEMORY[0x277D84F90];
LABEL_80:
          v113 = *(v94 + 2);
          v114 = v81[2];
          v115 = v114 + v113;
          if (__OFADD__(v114, v113))
          {
            goto LABEL_131;
          }

          v116 = swift_isUniquelyReferenced_nonNull_native();
          if ((v116 & 1) != 0 && v115 <= v81[3] >> 1)
          {
            if (!*(v94 + 2))
            {
              goto LABEL_54;
            }
          }

          else
          {
            if (v114 <= v115)
            {
              v117 = v114 + v113;
            }

            else
            {
              v117 = v114;
            }

            v81 = sub_252737FAC(v116, v117, 1, v81);
            if (!*(v94 + 2))
            {
LABEL_54:

              if (v113)
              {
                goto LABEL_132;
              }

              goto LABEL_55;
            }
          }

          if ((v81[3] >> 1) - v81[2] < v113)
          {
            goto LABEL_135;
          }

          v118 = *(v0 + 304);
          v119 = *(v0 + 312);
          v120 = (*(v119 + 80) + 32) & ~*(v119 + 80);
          v121 = *(v119 + 72);
          swift_arrayInitWithCopy();

          if (v113)
          {
            v122 = v81[2];
            v24 = __OFADD__(v122, v113);
            v123 = v122 + v113;
            if (v24)
            {
              goto LABEL_137;
            }

            v81[2] = v123;
          }

LABEL_55:
          if (++v80 == v285)
          {
            goto LABEL_94;
          }
        }
      }

      v81 = MEMORY[0x277D84F90];
LABEL_94:
      v281 = v81;
      *(v0 + 928) = v81;
      v124 = *(v0 + 736);
      v125 = *(v124 + 16);
      v126 = MEMORY[0x277D84F90];
      if (v125)
      {
        v127 = *(v0 + 416);
        *(v0 + 120) = MEMORY[0x277D84F90];
        sub_25282EFDC(0, v125, 0);
        v126 = *(v0 + 120);
        v128 = v124 + ((*(v127 + 80) + 32) & ~*(v127 + 80));
        while (1)
        {
          v129 = *(v0 + 424);
          v131 = *(v0 + 336);
          v130 = *(v0 + 344);
          v132 = *(v0 + 288);
          sub_25272E7DC(v128, v129);
          v133 = *(v129 + 8);
          sub_2528BE6B0();
          v134 = *(v0 + 56);
          v135 = *(v0 + 64);
          sub_2528BECA0();

          if ((*(v130 + 48))(v132, 1, v131) == 1)
          {
            break;
          }

          v136 = *(v0 + 424);
          v137 = *(*(v0 + 344) + 32);
          v137(*(v0 + 360), *(v0 + 288), *(v0 + 336));
          sub_25272E840(v136);
          *(v0 + 120) = v126;
          v139 = *(v126 + 16);
          v138 = *(v126 + 24);
          if (v139 >= v138 >> 1)
          {
            sub_25282EFDC(v138 > 1, v139 + 1, 1);
            v126 = *(v0 + 120);
          }

          v140 = *(v0 + 360);
          v141 = *(v0 + 336);
          v142 = *(v0 + 344);
          *(v126 + 16) = v139 + 1;
          v137(v126 + ((*(v142 + 80) + 32) & ~*(v142 + 80)) + *(v142 + 72) * v139, v140, v141);
          v128 += v288;
          --v125;
          v79 = v257;
          if (!v125)
          {
            goto LABEL_100;
          }
        }

        v151 = *(v0 + 424);
        v152 = *(v0 + 408);
        sub_2527213D8(*(v0 + 288), &qword_27F4FC628, &qword_2528C4750);
        *&v291[0] = 0;
        *(&v291[0] + 1) = 0xE000000000000000;
        sub_2528C0E70();
        v153 = *(&v291[0] + 1);
        *(v0 + 72) = *&v291[0];
        *(v0 + 80) = v153;
        MEMORY[0x2530A80B0](0xD00000000000001CLL, 0x80000002528E5760);
        sub_2528C0ED0();
        MEMORY[0x2530A80B0](0x203A646920, 0xE500000000000000);
        sub_2528BE6B0();
        MEMORY[0x2530A80B0](*(v0 + 88), *(v0 + 96));

        MEMORY[0x2530A80B0](0x64697575206F7420, 0xE800000000000000);
        v154 = *(v0 + 72);
        v155 = *(v0 + 80);
        return sub_2528C0EE0();
      }

LABEL_100:
      *(v0 + 936) = v126;
      if (!v285)
      {
        v145 = MEMORY[0x277D84F90];
LABEL_111:
        *(v0 + 944) = v145;
        v156 = *(v0 + 51);
        v158 = *(v0 + 152);
        v157 = *(v0 + 160);

        v159 = swift_task_alloc();
        *(v0 + 952) = v159;
        *(v159 + 16) = v126;
        *(v159 + 24) = v157;
        *(v159 + 32) = v158;
        *(v159 + 40) = v156 & 1;
        v160 = swift_task_alloc();
        *(v0 + 960) = v160;
        *v160 = v0;
        v160[1] = sub_252797060;
        v161 = *(v0 + 736);
        v162 = *(v0 + 160);

        return (sub_252777E20)(v281, v162, v145, v161, &unk_2528C8000, v159);
      }

      v143 = 0;
      v144 = (v79 + 64);
      v145 = MEMORY[0x277D84F90];
      while (v143 < *(v79 + 16))
      {
        v146 = *v144;
        v147 = *(v144 - 1);
        *(v0 + 16) = *(v144 - 2);
        *(v0 + 32) = v147;
        *(v0 + 48) = v146;
        sub_252870158(v291);
        v148 = v291[0];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v145 = sub_252737FD4(0, *(v145 + 2) + 1, 1, v145);
        }

        v150 = *(v145 + 2);
        v149 = *(v145 + 3);
        if (v150 >= v149 >> 1)
        {
          v145 = sub_252737FD4((v149 > 1), v150 + 1, 1, v145);
        }

        ++v143;
        *(v145 + 2) = v150 + 1;
        v145[v150 + 32] = v148;
        v144 += 40;
        if (v285 == v143)
        {
          goto LABEL_111;
        }
      }

LABEL_134:
      __break(1u);
LABEL_135:
      __break(1u);
LABEL_136:
      __break(1u);
LABEL_137:
      __break(1u);
      goto LABEL_138;
    }

    v71 = 0;
    while (((63 - v46) >> 6) - 1 != v71)
    {
      v48 = v71 + 1;
      v47 = *(v43 + 8 * v71++ + 72);
      if (v47)
      {
        goto LABEL_52;
      }
    }

    v163 = *(v0 + 280);
    v165 = *(v0 + 240);
    v164 = *(v0 + 248);
    v166 = *(v0 + 232);
    v167 = *(v0 + 160);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD468, &qword_2528C8008);
    v168 = *(v165 + 72);
    v169 = (*(v165 + 80) + 32) & ~*(v165 + 80);
    v170 = swift_allocObject();
    *(v170 + 16) = xmmword_2528C3910;
    sub_2528C06A0();
    *(v0 + 128) = v170;
    sub_25279F2D0(&qword_27F4FD470, MEMORY[0x277D16C90]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD478, &qword_2528C8010);
    sub_25279F1C0();
    sub_2528C0DF0();
    sub_2528C0500();
    v171 = swift_task_alloc();
    *(v171 + 16) = v167;
    *(v171 + 24) = v163;
    sub_2527E4E5C(sub_25279F224, v171, v43);
LABEL_116:
    v172 = *(v0 + 280);

    v173 = sub_2528C0520();
    v28 = *(v0 + 744);
    if ((v173 & 1) == 0)
    {
      goto LABEL_121;
    }

    v174 = *(v0 + 744);

    v175 = *(v0 + 736);
    v176 = *(v0 + 728);
    v177 = *(v0 + 720);
    v178 = *(v0 + 712);
    v179 = *(v0 + 704);
    v199 = *(v0 + 688);
    v200 = *(v0 + 664);
    v201 = *(v0 + 656);
    v202 = *(v0 + 648);
    v204 = *(v0 + 640);
    v206 = *(v0 + 632);
    v208 = *(v0 + 624);
    v210 = *(v0 + 616);
    v212 = *(v0 + 608);
    v214 = *(v0 + 584);
    v216 = *(v0 + 560);
    v218 = *(v0 + 552);
    v220 = *(v0 + 544);
    v222 = *(v0 + 536);
    v224 = *(v0 + 528);
    v226 = *(v0 + 520);
    v228 = *(v0 + 496);
    v230 = *(v0 + 488);
    v232 = *(v0 + 464);
    v234 = *(v0 + 456);
    v236 = *(v0 + 448);
    v238 = *(v0 + 440);
    v240 = *(v0 + 432);
    v242 = *(v0 + 424);
    v244 = *(v0 + 400);
    v246 = *(v0 + 376);
    v248 = *(v0 + 368);
    v250 = *(v0 + 360);
    v252 = *(v0 + 352);
    v255 = *(v0 + 328);
    v258 = *(v0 + 320);
    v261 = *(v0 + 296);
    v264 = *(v0 + 288);
    v180 = *(v0 + 280);
    v181 = *(v0 + 256);
    v182 = *(v0 + 264);
    v267 = *(v0 + 272);
    v270 = *(v0 + 248);
    v273 = *(v0 + 224);
    v277 = *(v0 + 216);
    v282 = *(v0 + 208);
    v286 = *(v0 + 200);
    v289 = *(v0 + 176);

    v183 = *(v0 + 112);
    v293 = v1;
    sub_252735C2C(v183);
    sub_252735C2C(*(v0 + 104));
    v184 = sub_25280D9C4(v293);

    (*(v182 + 8))(v180, v181);

    v185 = *(v0 + 8);

    return v185(v184);
  }

  v28 = 0;
  v29 = v12 + 64;
  v30 = MEMORY[0x277D84F90];
  while (v28 < *(v12 + 2))
  {
    v31 = *v29;
    v32 = *(v29 - 1);
    v291[0] = *(v29 - 2);
    v291[1] = v32;
    v292 = v31;
    sub_252870158(&v290);
    v33 = v290;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v30 = sub_252737FD4(0, *(v30 + 2) + 1, 1, v30);
    }

    v35 = *(v30 + 2);
    v34 = *(v30 + 3);
    if (v35 >= v34 >> 1)
    {
      v30 = sub_252737FD4((v34 > 1), v35 + 1, 1, v30);
    }

    ++v28;
    *(v30 + 2) = v35 + 1;
    v30[v35 + 32] = v33;
    v29 += 40;
    if (v27 == v28)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_121:
  v186 = *(v28 + 16);
  if (v186)
  {
    v187 = sub_252865914(*(v28 + 16), 0);
    v188 = sub_252868980(v291, v187 + 32, v186, v28);
    sub_25271A648();
    if (v188 != v186)
    {
      __break(1u);
      goto LABEL_124;
    }
  }

  else
  {
LABEL_124:

    v187 = MEMORY[0x277D84F90];
  }

  *(v0 + 976) = v187;
  v189 = *(v0 + 272);
  v190 = *(v0 + 280);
  v191 = *(v0 + 256);
  v192 = *(v0 + 264);
  v193 = *(v0 + 224);
  v194 = sub_2528BF400();
  *(v0 + 984) = v194;
  v195 = *(v194 - 8);
  v196 = *(v195 + 56);
  *(v0 + 992) = v196;
  *(v0 + 1000) = (v195 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v196(v193, 1, 1, v194);
  (*(v192 + 16))(v189, v190, v191);
  *(v0 + 1008) = sub_2528BEFC0();
  v197 = *(MEMORY[0x277D15430] + 4);
  v198 = swift_task_alloc();
  *(v0 + 1016) = v198;
  *v198 = v0;
  v198[1] = sub_25279831C;

  return MEMORY[0x28216EA40]();
}

uint64_t sub_252793B24(uint64_t a1)
{
  v2 = *(*v1 + 784);
  v3 = *(*v1 + 616);
  v4 = *(*v1 + 600);
  v5 = *(*v1 + 592);
  v7 = *v1;
  *(*v1 + 792) = a1;

  (*(v4 + 8))(v3, v5);

  return MEMORY[0x2822009F8](sub_252793C84, 0, 0);
}

uint64_t sub_252793C84()
{
  v197 = v0;
  if (*(v0 + 792))
  {
    v1 = *(v0 + 736);
    v2 = *(v0 + 688);
    v3 = swift_task_alloc();
    *(v3 + 16) = v2;
    *(v0 + 800) = sub_2527A2F84(sub_252756820, v3, v1);
    *(v0 + 808) = 0;

    *(v0 + 816) = sub_2528BEFC0();
    sub_2528C0C20();
    *(v0 + 824) = sub_2528C0C10();
    v5 = sub_2528C0BD0();

    return MEMORY[0x2822009F8](sub_252794ED0, v5, v4);
  }

  (*(*(v0 + 680) + 8))(*(v0 + 688), *(v0 + 672));
  *(v0 + 904) = 0;
  v6 = *(v0 + 416);
  v7 = *(v0 + 144);
  v8 = MEMORY[0x277D84F90];
  *(v0 + 112) = MEMORY[0x277D84F90];
  v9 = *(v7 + 32);
  *(v0 + 1084) = v9;
  v10 = -1;
  v11 = -1 << v9;
  if (-(-1 << v9) < 64)
  {
    v10 = ~(-1 << -(-1 << v9));
  }

  v12 = v10 & *(v7 + 64);
  *(v0 + 52) = *MEMORY[0x277D15F78];
  *(v0 + 1080) = *MEMORY[0x277D15F70];

  if (!v12)
  {
    v14 = 0;
    while (((63 - v11) >> 6) - 1 != v14)
    {
      v13 = v14 + 1;
      v12 = *(v7 + 8 * v14++ + 72);
      if (v12)
      {
        goto LABEL_12;
      }
    }

    v106 = *(v0 + 280);
    v108 = *(v0 + 240);
    v107 = *(v0 + 248);
    v109 = *(v0 + 232);
    v110 = *(v0 + 160);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD468, &qword_2528C8008);
    v111 = *(v108 + 72);
    v112 = (*(v108 + 80) + 32) & ~*(v108 + 80);
    v113 = swift_allocObject();
    *(v113 + 16) = xmmword_2528C3910;
    sub_2528C06A0();
    *(v0 + 128) = v113;
    sub_25279F2D0(&qword_27F4FD470, MEMORY[0x277D16C90]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD478, &qword_2528C8010);
    sub_25279F1C0();
    sub_2528C0DF0();
    sub_2528C0500();
    v114 = swift_task_alloc();
    *(v114 + 16) = v110;
    *(v114 + 24) = v106;
    sub_2527E4E5C(sub_25279F224, v114, v7);
    v115 = *(v0 + 280);

    v116 = sub_2528C0520();
    v117 = *(v0 + 744);
    if (v116)
    {
      v118 = *(v0 + 744);

      v119 = *(v0 + 736);
      v120 = *(v0 + 728);
      v121 = *(v0 + 720);
      v122 = *(v0 + 712);
      v123 = *(v0 + 704);
      v144 = *(v0 + 688);
      v145 = *(v0 + 664);
      v146 = *(v0 + 656);
      v147 = *(v0 + 648);
      v148 = *(v0 + 640);
      v149 = *(v0 + 632);
      v150 = *(v0 + 624);
      v151 = *(v0 + 616);
      v152 = *(v0 + 608);
      v153 = *(v0 + 584);
      v154 = *(v0 + 560);
      v155 = *(v0 + 552);
      v156 = *(v0 + 544);
      v157 = *(v0 + 536);
      v158 = *(v0 + 528);
      v159 = *(v0 + 520);
      v160 = *(v0 + 496);
      v161 = *(v0 + 488);
      v162 = *(v0 + 464);
      v163 = *(v0 + 456);
      v164 = *(v0 + 448);
      v165 = *(v0 + 440);
      v166 = *(v0 + 432);
      v167 = *(v0 + 424);
      v168 = *(v0 + 400);
      v169 = *(v0 + 376);
      v170 = *(v0 + 368);
      v171 = *(v0 + 360);
      v172 = *(v0 + 352);
      v174 = *(v0 + 328);
      v176 = *(v0 + 320);
      v178 = *(v0 + 296);
      v124 = *(v0 + 280);
      v180 = *(v0 + 288);
      v182 = *(v0 + 272);
      v125 = *(v0 + 256);
      v126 = *(v0 + 264);
      v184 = *(v0 + 248);
      v186 = *(v0 + 224);
      v188 = *(v0 + 216);
      v191 = *(v0 + 208);
      v193 = *(v0 + 200);
      v195 = *(v0 + 176);

      v127 = *(v0 + 112);
      v196[5] = v8;
      sub_252735C2C(v127);
      sub_252735C2C(*(v0 + 104));
      v128 = sub_25280D9C4(v8);

      (*(v126 + 8))(v124, v125);

      v129 = *(v0 + 8);

      return v129(v128);
    }

    v130 = *(v117 + 16);
    if (v130)
    {
      v131 = sub_252865914(*(v117 + 16), 0);
      v132 = sub_252868980(v196, v131 + 32, v130, v117);
      sub_25271A648();
      if (v132 == v130)
      {
        goto LABEL_82;
      }

      __break(1u);
    }

    v131 = MEMORY[0x277D84F90];
LABEL_82:
    *(v0 + 976) = v131;
    v133 = *(v0 + 272);
    v134 = *(v0 + 280);
    v135 = *(v0 + 256);
    v136 = *(v0 + 264);
    v137 = *(v0 + 224);
    v138 = sub_2528BF400();
    *(v0 + 984) = v138;
    v139 = *(v138 - 8);
    v140 = *(v139 + 56);
    *(v0 + 992) = v140;
    *(v0 + 1000) = (v139 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v140(v137, 1, 1, v138);
    (*(v136 + 16))(v133, v134, v135);
    *(v0 + 1008) = sub_2528BEFC0();
    v141 = *(MEMORY[0x277D15430] + 4);
    v142 = swift_task_alloc();
    *(v0 + 1016) = v142;
    *v142 = v0;
    v142[1] = sub_25279831C;

    return MEMORY[0x28216EA40]();
  }

  v13 = 0;
LABEL_12:
  *(v0 + 920) = v13;
  *(v0 + 912) = v12;
  v15 = *(v0 + 720);
  v16 = *(v0 + 712);
  v17 = *(v0 + 704);
  v18 = *(v0 + 696);
  v19 = __clz(__rbit64(v12)) | (v13 << 6);
  v194 = *(v6 + 72);
  sub_25272E7DC(*(v7 + 48) + v194 * v19, v16);
  v20 = *(*(v7 + 56) + 8 * v19);
  v21 = *(v18 + 48);
  sub_25279F090(v16, v17);
  *(v17 + v21) = v20;
  sub_25272006C(v17, v15, &qword_27F4FCE48, &unk_2528C61E0);
  v22 = *(v15 + *(v18 + 48));

  sub_25272E840(v15);
  v175 = v22;
  v192 = *(v22 + 16);
  if (v192)
  {
    v23 = 0;
    v173 = v22 + 32;
    v24 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v23 >= *(v22 + 16))
      {
        __break(1u);
LABEL_86:
        __break(1u);
LABEL_87:
        __break(1u);
LABEL_88:
        __break(1u);
LABEL_89:
        __break(1u);
LABEL_90:
        __break(1u);
        return MEMORY[0x28216EA40]();
      }

      v25 = *(v0 + 736);
      v26 = *(v25 + 16);
      if (v26)
      {
        v187 = v23;
        v189 = v24;
        v27 = v173 + 40 * v23;
        v29 = *v27;
        v28 = *(v27 + 8);
        v30 = *(v27 + 16);
        v31 = *(v27 + 24);
        v32 = *(v27 + 32);
        v33 = *(*(v0 + 416) + 80);
        v34 = v25 + ((v33 + 32) & ~v33);
        v181 = v30;
        v183 = v28;
        v179 = v31;
        sub_252760C18(v29, v28, v30, v31, v32);
        v177 = v32;
        v35 = v32 >> 1;
        v185 = v29;
        v36 = v29 & 1;
        v37 = MEMORY[0x277D84F90];
        while (1)
        {
          v38 = *(v0 + 432);
          sub_25272E7DC(v34, v38);
          v39 = *(v38 + 16);
          sub_2528BE6B0();
          v40 = *(v0 + 49);
          v41 = v40 >> 14;
          v42 = (v40 >> 8) & 0x3F;
          if (v41 != 1)
          {
            v42 = *(v0 + 49);
          }

          if (!v41)
          {
            v42 = *(v0 + 49);
          }

          if (v35 == 44)
          {
            if (v42 != 2)
            {
LABEL_31:
              (*(*(v0 + 312) + 56))(*(v0 + 296), 1, 1, *(v0 + 304));
              goto LABEL_32;
            }

            v43 = *(v0 + 52);
          }

          else
          {
            if (v35 != 36)
            {
              goto LABEL_31;
            }

            v43 = *(v0 + 1080);
          }

          v45 = *(v0 + 304);
          v44 = *(v0 + 312);
          v46 = *(v0 + 296);
          *v46 = v36;
          (*(v44 + 104))(v46, v43, v45);
          (*(v44 + 56))(v46, 0, 1, v45);
LABEL_32:
          v48 = *(v0 + 304);
          v47 = *(v0 + 312);
          v49 = *(v0 + 296);
          sub_25272E840(*(v0 + 432));
          if ((*(v47 + 48))(v49, 1, v48) == 1)
          {
            sub_2527213D8(*(v0 + 296), &qword_27F4FD458, &unk_2528C7FE0);
          }

          else
          {
            v50 = *(*(v0 + 312) + 32);
            v50(*(v0 + 320), *(v0 + 296), *(v0 + 304));
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v37 = sub_252737FAC(0, *(v37 + 2) + 1, 1, v37);
            }

            v52 = *(v37 + 2);
            v51 = *(v37 + 3);
            if (v52 >= v51 >> 1)
            {
              v37 = sub_252737FAC(v51 > 1, v52 + 1, 1, v37);
            }

            v54 = *(v0 + 312);
            v53 = *(v0 + 320);
            v55 = *(v0 + 304);
            *(v37 + 2) = v52 + 1;
            v50(&v37[((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v52], v53, v55);
          }

          v34 += v194;
          if (!--v26)
          {
            sub_25272C15C(v185, v183, v181, v179, v177);
            v23 = v187;
            v24 = v189;
            v22 = v175;
            goto LABEL_40;
          }
        }
      }

      v37 = MEMORY[0x277D84F90];
LABEL_40:
      v56 = *(v37 + 2);
      v57 = v24[2];
      v58 = v57 + v56;
      if (__OFADD__(v57, v56))
      {
        goto LABEL_86;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) != 0 && v58 <= v24[3] >> 1)
      {
        if (!*(v37 + 2))
        {
          goto LABEL_14;
        }
      }

      else
      {
        if (v57 <= v58)
        {
          v60 = v57 + v56;
        }

        else
        {
          v60 = v57;
        }

        v24 = sub_252737FAC(isUniquelyReferenced_nonNull_native, v60, 1, v24);
        if (!*(v37 + 2))
        {
LABEL_14:

          if (v56)
          {
            goto LABEL_87;
          }

          goto LABEL_15;
        }
      }

      if ((v24[3] >> 1) - v24[2] < v56)
      {
        goto LABEL_89;
      }

      v61 = *(v0 + 304);
      v62 = *(v0 + 312);
      v63 = (*(v62 + 80) + 32) & ~*(v62 + 80);
      v64 = *(v62 + 72);
      swift_arrayInitWithCopy();

      if (v56)
      {
        v65 = v24[2];
        v66 = __OFADD__(v65, v56);
        v67 = v65 + v56;
        if (v66)
        {
          goto LABEL_90;
        }

        v24[2] = v67;
      }

LABEL_15:
      if (++v23 == v192)
      {
        goto LABEL_54;
      }
    }
  }

  v24 = MEMORY[0x277D84F90];
LABEL_54:
  v190 = v24;
  *(v0 + 928) = v24;
  v68 = *(v0 + 736);
  v69 = *(v68 + 16);
  v70 = MEMORY[0x277D84F90];
  if (v69)
  {
    v71 = *(v0 + 416);
    *(v0 + 120) = MEMORY[0x277D84F90];
    sub_25282EFDC(0, v69, 0);
    v70 = *(v0 + 120);
    v72 = v68 + ((*(v71 + 80) + 32) & ~*(v71 + 80));
    while (1)
    {
      v73 = *(v0 + 424);
      v75 = *(v0 + 336);
      v74 = *(v0 + 344);
      v76 = *(v0 + 288);
      sub_25272E7DC(v72, v73);
      v77 = *(v73 + 8);
      sub_2528BE6B0();
      v78 = *(v0 + 56);
      v79 = *(v0 + 64);
      sub_2528BECA0();

      if ((*(v74 + 48))(v76, 1, v75) == 1)
      {
        break;
      }

      v80 = *(v0 + 424);
      v81 = *(*(v0 + 344) + 32);
      v81(*(v0 + 360), *(v0 + 288), *(v0 + 336));
      sub_25272E840(v80);
      *(v0 + 120) = v70;
      v83 = *(v70 + 16);
      v82 = *(v70 + 24);
      if (v83 >= v82 >> 1)
      {
        sub_25282EFDC(v82 > 1, v83 + 1, 1);
        v70 = *(v0 + 120);
      }

      v84 = *(v0 + 360);
      v85 = *(v0 + 336);
      v86 = *(v0 + 344);
      *(v70 + 16) = v83 + 1;
      v81(v70 + ((*(v86 + 80) + 32) & ~*(v86 + 80)) + *(v86 + 72) * v83, v84, v85);
      v72 += v194;
      --v69;
      v22 = v175;
      if (!v69)
      {
        goto LABEL_60;
      }
    }

    v95 = *(v0 + 424);
    v96 = *(v0 + 408);
    sub_2527213D8(*(v0 + 288), &qword_27F4FC628, &qword_2528C4750);
    v196[0] = 0;
    v196[1] = 0xE000000000000000;
    sub_2528C0E70();
    *(v0 + 72) = 0;
    *(v0 + 80) = 0xE000000000000000;
    MEMORY[0x2530A80B0](0xD00000000000001CLL, 0x80000002528E5760);
    sub_2528C0ED0();
    MEMORY[0x2530A80B0](0x203A646920, 0xE500000000000000);
    sub_2528BE6B0();
    MEMORY[0x2530A80B0](*(v0 + 88), *(v0 + 96));

    MEMORY[0x2530A80B0](0x64697575206F7420, 0xE800000000000000);
    v97 = *(v0 + 72);
    v98 = *(v0 + 80);
    return sub_2528C0EE0();
  }

  else
  {
LABEL_60:
    *(v0 + 936) = v70;
    if (v192)
    {
      v87 = 0;
      v88 = (v22 + 64);
      v89 = MEMORY[0x277D84F90];
      while (v87 < *(v22 + 16))
      {
        v90 = *v88;
        v91 = *(v88 - 1);
        *(v0 + 16) = *(v88 - 2);
        *(v0 + 32) = v91;
        *(v0 + 48) = v90;
        sub_252870158(v196);
        v92 = v196[0];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v89 = sub_252737FD4(0, *(v89 + 2) + 1, 1, v89);
        }

        v94 = *(v89 + 2);
        v93 = *(v89 + 3);
        if (v94 >= v93 >> 1)
        {
          v89 = sub_252737FD4((v93 > 1), v94 + 1, 1, v89);
        }

        ++v87;
        *(v89 + 2) = v94 + 1;
        v89[v94 + 32] = v92;
        v88 += 40;
        if (v192 == v87)
        {
          goto LABEL_71;
        }
      }

      goto LABEL_88;
    }

    v89 = MEMORY[0x277D84F90];
LABEL_71:
    *(v0 + 944) = v89;
    v99 = *(v0 + 51);
    v101 = *(v0 + 152);
    v100 = *(v0 + 160);

    v102 = swift_task_alloc();
    *(v0 + 952) = v102;
    *(v102 + 16) = v70;
    *(v102 + 24) = v100;
    *(v102 + 32) = v101;
    *(v102 + 40) = v99 & 1;
    v103 = swift_task_alloc();
    *(v0 + 960) = v103;
    *v103 = v0;
    v103[1] = sub_252797060;
    v104 = *(v0 + 736);
    v105 = *(v0 + 160);

    return (sub_252777E20)(v190, v105, v89, v104, &unk_2528C8000, v102);
  }
}

uint64_t sub_252794ED0()
{
  v1 = v0[103];
  v2 = v0[102];

  v0[104] = sub_2528BEF70();

  return MEMORY[0x2822009F8](sub_252794F44, 0, 0);
}

uint64_t sub_252794F44()
{
  v1 = v0[99];
  v2 = v0[73];
  v3 = v0[72];
  v4 = v0[71];
  v5 = v0[70];
  v6 = sub_252743EF0(v0[100]);

  *v2 = v6;
  v2[1] = v1;
  (*(v3 + 104))(v2, *MEMORY[0x277D16508], v4);
  v7 = sub_2528C00B0();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  v8 = *(MEMORY[0x277D16AE8] + 4);
  v9 = v1;
  v10 = swift_task_alloc();
  v0[105] = v10;
  *v10 = v0;
  v10[1] = sub_2527950A4;
  v11 = v0[104];
  v12 = v0[82];
  v13 = v0[73];
  v14 = v0[70];

  return MEMORY[0x282170970](v12, v13, v9, v14);
}

uint64_t sub_2527950A4()
{
  v1 = *(*v0 + 840);
  v2 = *(*v0 + 832);
  v3 = *(*v0 + 584);
  v4 = *(*v0 + 576);
  v5 = *(*v0 + 568);
  v6 = *(*v0 + 560);
  v8 = *v0;

  sub_2527213D8(v6, &qword_27F4FC478, &unk_2528C3F70);
  (*(v4 + 8))(v3, v5);

  return MEMORY[0x2822009F8](sub_25279524C, 0, 0);
}

uint64_t sub_25279524C()
{
  v1 = *(v0 + 808);
  v2 = *(v0 + 792);
  v3 = *(v0 + 680);
  v4 = *(v0 + 672);
  v5 = *(v0 + 656);
  v6 = *(v0 + 51);
  v7 = *(v0 + 152);
  v8 = *(v0 + 144);
  v9 = *(v3 + 56);
  *(v0 + 848) = v9;
  *(v0 + 856) = (v3 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v9(v5, 0, 1, v4);
  v10 = sub_25278D994(MEMORY[0x277D84F90]);
  v11 = swift_task_alloc();
  *(v11 + 16) = v5;
  v12 = sub_2527E4B84(v10, sub_25279F240, v11, v8);
  *(v0 + 864) = v12;

  v13 = sub_25279C7AC(v12);
  *(v0 + 872) = v13;
  if (v6)
  {
    v7 = 60.0;
  }

  v14 = swift_task_alloc();
  *(v0 + 880) = v14;
  *v14 = v0;
  v14[1] = sub_2527953CC;
  v15 = *(v0 + 648);

  return sub_2528411C0(v15, v13, v2, v7);
}

uint64_t sub_2527953CC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 880);
  v6 = *v2;
  v4[111] = a1;
  v4[112] = v1;

  v7 = v3[109];
  if (v1)
  {
    v8 = v4[108];
    v9 = v4[93];
    v10 = v4[92];

    v11 = sub_252799238;
  }

  else
  {

    v11 = sub_252795538;
  }

  return MEMORY[0x2822009F8](v11, 0, 0);
}

uint64_t sub_252795538()
{
  v362 = v0;
  if (qword_27F4FBB40 != -1)
  {
    goto LABEL_130;
  }

  while (1)
  {
    v1 = *(v0 + 888);
    v2 = *(v0 + 864);
    v3 = *(v0 + 680);
    v4 = *(v0 + 512);
    v304 = *(v0 + 480);
    v330 = *(v0 + 472);
    v5 = *(v0 + 392);
    v6 = *(v0 + 344);
    v7 = sub_2528C08B0();
    __swift_project_value_buffer(v7, qword_27F5025C8);
    v343 = v1;
    sub_25279B4A8(v1);
    v8 = 0;
    v9 = v2 + 64;
    v10 = -1;
    v310 = v2;
    v11 = -1 << *(v2 + 32);
    if (-v11 < 64)
    {
      v10 = ~(-1 << -v11);
    }

    v12 = v10 & *(v2 + 64);
    v13 = (63 - v11) >> 6;
    v352 = (v4 + 32);
    v318 = (v5 + 8);
    v293 = (v6 + 8);
    v296 = (v3 + 8);
    v290 = (v4 + 48);
    v339 = (v4 + 8);
    v307 = v4;
    v287 = (v4 + 56);
    v14 = &qword_27F4FD488;
    v299 = *(v0 + 896);
    v322 = v13;
    v326 = v2 + 64;
    while (1)
    {
      if (v12)
      {
        v22 = v8;
        goto LABEL_18;
      }

      v23 = v13 <= v8 + 1 ? v8 + 1 : v13;
      v24 = v23 - 1;
      do
      {
        v22 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          __break(1u);
          goto LABEL_113;
        }

        if (v22 >= v13)
        {
          v85 = *(v0 + 544);
          v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD488, &qword_2528C8018);
          (*(*(v86 - 8) + 56))(v85, 1, 1, v86);
          v347 = 0;
          v8 = v24;
          goto LABEL_19;
        }

        v12 = *(v9 + 8 * v22);
        ++v8;
      }

      while (!v12);
      v8 = v22;
LABEL_18:
      v25 = *(v0 + 544);
      v26 = *(v0 + 536);
      v28 = *(v0 + 496);
      v27 = *(v0 + 504);
      v347 = (v12 - 1) & v12;
      v29 = __clz(__rbit64(v12)) | (v22 << 6);
      (*(v307 + 16))(v26, *(v310 + 48) + *(v307 + 72) * v29, v27);
      sub_25272006C(*(v310 + 56) + *(v304 + 72) * v29, v28, &qword_27F4FD1F8, &unk_2528CDFF0);
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD488, &qword_2528C8018);
      v31 = *(v30 + 48);
      (*(v307 + 32))(v25, v26, v27);
      sub_25274AA0C(v28, v25 + v31, &qword_27F4FD1F8, &unk_2528CDFF0);
      (*(*(v30 - 8) + 56))(v25, 0, 1, v30);
LABEL_19:
      v32 = *(v0 + 552);
      sub_25274AA0C(*(v0 + 544), v32, &qword_27F4FD460, &qword_2528C7FF0);
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD488, &qword_2528C8018);
      if ((*(*(v33 - 8) + 48))(v32, 1, v33) == 1)
      {
        break;
      }

      v34 = *(v0 + 552);
      v35 = *(v0 + 528);
      v36 = *(v0 + 504);
      v37 = *(v0 + 488);
      v38 = *(v0 + 464);
      v39 = (v34 + *(v33 + 48));
      v40 = *v39;
      v41 = *(v330 + 48);
      sub_25279F090(v39 + v41, v37 + v41);
      v334 = *v352;
      (*v352)(v35, v34, v36);
      sub_25279F090(v37 + v41, v38);
      v42 = *(v40 + 16);
      v43 = MEMORY[0x277D84F90];
      if (v42)
      {
        v359 = MEMORY[0x277D84F90];
        sub_25282F064(0, v42, 0);
        v44 = v359;
        v45 = 64;
        do
        {
          v46 = byte_2528C807E[*(v40 + v45) >> 1];
          v359 = v44;
          v48 = *(v44 + 16);
          v47 = *(v44 + 24);
          if (v48 >= v47 >> 1)
          {
            sub_25282F064((v47 > 1), v48 + 1, 1);
            v44 = v359;
          }

          *(v44 + 16) = v48 + 1;
          *(v44 + v48 + 32) = v46;
          v45 += 40;
          --v42;
        }

        while (v42);

        v43 = MEMORY[0x277D84F90];
      }

      else
      {

        v44 = v43;
      }

      v49 = *(v0 + 760);
      v50 = *(v0 + 752);
      v51 = *(v0 + 672);
      v52 = *(v0 + 632);
      sub_25272006C(*(v0 + 648), v52, &qword_27F4FCDB8, &unk_2528C5CC0);
      if (v50(v52, 1, v51) == 1)
      {
        v53 = *(v0 + 760);
        v54 = *(v0 + 752);
        v55 = *(v0 + 672);
        v56 = *(v0 + 632);
        sub_25272006C(*(v0 + 656), *(v0 + 640), &qword_27F4FCDB8, &unk_2528C5CC0);
        if (v54(v56, 1, v55) != 1)
        {
          sub_2527213D8(*(v0 + 632), &qword_27F4FCDB8, &unk_2528C5CC0);
        }
      }

      else
      {
        v57 = *(v0 + 856);
        v58 = *(v0 + 848);
        v59 = *(v0 + 776);
        v60 = *(v0 + 672);
        v61 = *(v0 + 640);
        (*(v0 + 768))(v61, *(v0 + 632), v60);
        v58(v61, 0, 1, v60);
      }

      v62 = *(v0 + 528);
      v63 = *(v0 + 400);
      v64 = *(v0 + 384);
      sub_2528BFAB0();
      v65 = sub_2528BF0E0();
      (*v318)(v63, v64);
      if (*(v343 + 16) && (v66 = *(v0 + 888), v67 = sub_252791C7C(v65), (v68 & 1) != 0))
      {
        v356 = *(*(v343 + 56) + 8 * v67);
      }

      else
      {
        v356 = 0;
      }

      v69 = *(v0 + 760);
      v70 = *(v0 + 752);
      v71 = *(v0 + 672);
      v72 = *(v0 + 624);
      sub_25272006C(*(v0 + 640), v72, &qword_27F4FCDB8, &unk_2528C5CC0);
      if (v70(v72, 1, v71) == 1)
      {
        v15 = *(v0 + 504);
        v16 = *(v0 + 376);
        sub_2527213D8(*(v0 + 624), &qword_27F4FCDB8, &unk_2528C5CC0);
        (*v287)(v16, 1, 1, v15);
LABEL_6:
        sub_2527213D8(*(v0 + 376), &qword_27F4FCEF0, &unk_2528C6AB0);
        v17 = v43;
        goto LABEL_7;
      }

      v73 = *(v0 + 672);
      v74 = *(v0 + 624);
      v313 = *(v0 + 504);
      v75 = *(v0 + 464);
      v77 = *(v0 + 368);
      v76 = *(v0 + 376);
      v78 = *(v0 + 336);
      sub_252819FA8(v77);
      sub_2528C0080();
      (*v293)(v77, v78);
      (*v296)(v74, v73);
      if ((*v290)(v76, 1, v313) == 1)
      {
        goto LABEL_6;
      }

      v79 = *(v0 + 520);
      v314 = *(v0 + 504);
      v80 = *(v0 + 456);
      v81 = *(v0 + 464);
      v82 = *(v0 + 448);
      v284 = *(v0 + 440);
      v83 = *(v0 + 328);
      (v334)(v79, *(v0 + 376));
      v84 = swift_task_alloc();
      *(v84 + 16) = v79;
      *(v84 + 24) = v356;
      v335 = sub_2528072E8(sub_25279F25C, v84, v44);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC758, &unk_2528C8020);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_2528C3910;
      sub_25272E7DC(v81, v80);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC3B0, &qword_2528C3ED0);
      sub_2528BEC20();
      sub_25279F2D0(&qword_27F4FC3B8, type metadata accessor for DeviceEntity);
      *(v17 + 32) = sub_2528BE6F0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD490, &unk_2528C8030);
      sub_2528BEC20();
      sub_25279F27C();
      *(v17 + 40) = sub_2528BE6F0();
      sub_25272E7DC(v80, v82);
      sub_25272E7DC(v82, v284);
      sub_2528BE6C0();
      sub_25272E840(v82);
      *(v0 + 136) = v335;
      sub_2528BE6C0();
      sub_25272E840(v80);
      (*v339)(v79, v314);
LABEL_7:
      v14 = &qword_27F4FD488;
      v18 = *(v0 + 640);
      v19 = *(v0 + 528);
      v20 = *(v0 + 504);
      v21 = *(v0 + 464);

      sub_2527213D8(v18, &qword_27F4FCDB8, &unk_2528C5CC0);
      sub_252735C2C(v17);
      sub_25272E840(v21);
      (*v339)(v19, v20);
      v13 = v322;
      v9 = v326;
      v12 = v347;
    }

    v87 = *(v0 + 888);
    v88 = *(v0 + 864);
    v89 = *(v0 + 792);
    v90 = *(v0 + 688);
    v91 = *(v0 + 672);
    v92 = *(v0 + 656);
    sub_2527213D8(*(v0 + 648), &qword_27F4FCDB8, &unk_2528C5CC0);

    (*v296)(v90, v91);
    sub_2527213D8(v92, &qword_27F4FCDB8, &unk_2528C5CC0);
    *(v0 + 904) = v299;
    v93 = *(v0 + 416);
    v94 = *(v0 + 144);
    v14 = MEMORY[0x277D84F90];
    *(v0 + 112) = MEMORY[0x277D84F90];
    v95 = *(v94 + 32);
    *(v0 + 1084) = v95;
    v96 = -1;
    v97 = -1 << v95;
    if (-(-1 << v95) < 64)
    {
      v96 = ~(-1 << -(-1 << v95));
    }

    v98 = v96 & *(v94 + 64);
    *(v0 + 52) = *MEMORY[0x277D15F78];
    *(v0 + 1080) = *MEMORY[0x277D15F70];

    if (!v98)
    {
      v100 = 0;
      while (((63 - v97) >> 6) - 1 != v100)
      {
        v99 = v100 + 1;
        v98 = *(v94 + 8 * v100++ + 72);
        if (v98)
        {
          goto LABEL_46;
        }
      }

      v194 = *(v0 + 280);
      v196 = *(v0 + 240);
      v195 = *(v0 + 248);
      v197 = *(v0 + 232);
      v198 = *(v0 + 160);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD468, &qword_2528C8008);
      v199 = *(v196 + 72);
      v200 = (*(v196 + 80) + 32) & ~*(v196 + 80);
      v201 = swift_allocObject();
      *(v201 + 16) = xmmword_2528C3910;
      sub_2528C06A0();
      *(v0 + 128) = v201;
      sub_25279F2D0(&qword_27F4FD470, MEMORY[0x277D16C90]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD478, &qword_2528C8010);
      sub_25279F1C0();
      sub_2528C0DF0();
      sub_2528C0500();
      v202 = swift_task_alloc();
      *(v202 + 16) = v198;
      *(v202 + 24) = v194;
      sub_2527E4E5C(sub_25279F224, v202, v94);
      if (v299)
      {
        v203 = *(v0 + 744);
        v204 = *(v0 + 736);
        v205 = *(v0 + 280);
        v206 = *(v0 + 256);
        v207 = *(v0 + 264);

        v208 = *(v0 + 112);

        v209 = *(v0 + 104);

        (*(v207 + 8))(v205, v206);
        v210 = *(v0 + 728);
        v211 = *(v0 + 720);
        v212 = *(v0 + 712);
        v213 = *(v0 + 704);
        v214 = *(v0 + 688);
        v215 = *(v0 + 664);
        v216 = *(v0 + 656);
        v217 = *(v0 + 648);
        v218 = *(v0 + 640);
        v219 = *(v0 + 632);
        v254 = *(v0 + 624);
        v256 = *(v0 + 616);
        v258 = *(v0 + 608);
        v260 = *(v0 + 584);
        v262 = *(v0 + 560);
        v264 = *(v0 + 552);
        v266 = *(v0 + 544);
        v268 = *(v0 + 536);
        v270 = *(v0 + 528);
        v272 = *(v0 + 520);
        v274 = *(v0 + 496);
        v276 = *(v0 + 488);
        v278 = *(v0 + 464);
        v280 = *(v0 + 456);
        v282 = *(v0 + 448);
        v285 = *(v0 + 440);
        v288 = *(v0 + 432);
        v291 = *(v0 + 424);
        v294 = *(v0 + 400);
        v297 = *(v0 + 376);
        v300 = *(v0 + 368);
        v302 = *(v0 + 360);
        v305 = *(v0 + 352);
        v308 = *(v0 + 328);
        v311 = *(v0 + 320);
        v316 = *(v0 + 296);
        v320 = *(v0 + 288);
        v324 = *(v0 + 280);
        v328 = *(v0 + 272);
        v332 = *(v0 + 248);
        v337 = *(v0 + 224);
        v341 = *(v0 + 216);
        v345 = *(v0 + 208);
        v350 = *(v0 + 200);
        v354 = *(v0 + 176);

        v220 = *(v0 + 8);

        return v220();
      }

LABEL_113:
      v221 = *(v0 + 280);

      v222 = sub_2528C0520();
      v223 = *(v0 + 744);
      if (v222)
      {
        v224 = *(v0 + 744);

        v225 = *(v0 + 736);
        v226 = *(v0 + 728);
        v227 = *(v0 + 720);
        v228 = *(v0 + 712);
        v229 = *(v0 + 704);
        v230 = *(v0 + 688);
        v231 = v14;
        v250 = *(v0 + 664);
        v251 = *(v0 + 656);
        v252 = *(v0 + 648);
        v253 = *(v0 + 640);
        v255 = *(v0 + 632);
        v257 = *(v0 + 624);
        v259 = *(v0 + 616);
        v261 = *(v0 + 608);
        v263 = *(v0 + 584);
        v265 = *(v0 + 560);
        v267 = *(v0 + 552);
        v269 = *(v0 + 544);
        v271 = *(v0 + 536);
        v273 = *(v0 + 528);
        v275 = *(v0 + 520);
        v277 = *(v0 + 496);
        v279 = *(v0 + 488);
        v281 = *(v0 + 464);
        v283 = *(v0 + 456);
        v286 = *(v0 + 448);
        v289 = *(v0 + 440);
        v292 = *(v0 + 432);
        v295 = *(v0 + 424);
        v298 = *(v0 + 400);
        v301 = *(v0 + 376);
        v303 = *(v0 + 368);
        v306 = *(v0 + 360);
        v309 = *(v0 + 352);
        v312 = *(v0 + 328);
        v317 = *(v0 + 320);
        v321 = *(v0 + 296);
        v325 = *(v0 + 288);
        v232 = *(v0 + 280);
        v233 = *(v0 + 256);
        v234 = *(v0 + 264);
        v333 = *(v0 + 272);
        v338 = *(v0 + 248);
        v342 = *(v0 + 224);
        v346 = *(v0 + 216);
        v351 = *(v0 + 208);
        v355 = *(v0 + 200);
        v358 = *(v0 + 176);

        v235 = *(v0 + 112);
        v361 = v231;
        sub_252735C2C(v235);
        sub_252735C2C(*(v0 + 104));
        v329 = sub_25280D9C4(v361);

        (*(v234 + 8))(v232, v233);

        v236 = *(v0 + 8);

        return v236(v329);
      }

      v237 = *(v223 + 16);
      if (v237)
      {
        v238 = sub_252865914(*(v223 + 16), 0);
        v239 = sub_252868980(&v359, v238 + 32, v237, v223);
        sub_25271A648();
        if (v239 == v237)
        {
LABEL_121:
          *(v0 + 976) = v238;
          v240 = *(v0 + 272);
          v241 = *(v0 + 280);
          v242 = *(v0 + 256);
          v243 = *(v0 + 264);
          v244 = *(v0 + 224);
          v245 = sub_2528BF400();
          *(v0 + 984) = v245;
          v246 = *(v245 - 8);
          v247 = *(v246 + 56);
          *(v0 + 992) = v247;
          *(v0 + 1000) = (v246 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
          v247(v244, 1, 1, v245);
          (*(v243 + 16))(v240, v241, v242);
          *(v0 + 1008) = sub_2528BEFC0();
          v248 = *(MEMORY[0x277D15430] + 4);
          v249 = swift_task_alloc();
          *(v0 + 1016) = v249;
          *v249 = v0;
          v249[1] = sub_25279831C;

          return MEMORY[0x28216EA40]();
        }

        __break(1u);
      }

      v238 = MEMORY[0x277D84F90];
      goto LABEL_121;
    }

    v99 = 0;
LABEL_46:
    *(v0 + 920) = v99;
    *(v0 + 912) = v98;
    v101 = *(v0 + 720);
    v102 = *(v0 + 712);
    v103 = *(v0 + 704);
    v104 = *(v0 + 696);
    v105 = __clz(__rbit64(v98)) | (v99 << 6);
    v357 = *(v93 + 72);
    sub_25272E7DC(*(v94 + 48) + v357 * v105, v102);
    v106 = *(*(v94 + 56) + 8 * v105);
    v107 = *(v104 + 48);
    sub_25279F090(v102, v103);
    *(v103 + v107) = v106;
    sub_25272006C(v103, v101, &qword_27F4FCE48, &unk_2528C61E0);
    v108 = *(v101 + *(v104 + 48));

    sub_25272E840(v101);
    v319 = v108;
    v353 = *(v108 + 16);
    if (v353)
    {
      v109 = 0;
      v315 = v108 + 32;
      v110 = MEMORY[0x277D84F90];
      while (1)
      {
        if (v109 >= *(v108 + 16))
        {
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        v111 = *(v0 + 736);
        v112 = *(v111 + 16);
        if (v112)
        {
          v344 = v109;
          v348 = v110;
          v113 = v315 + 40 * v109;
          v115 = *v113;
          v114 = *(v113 + 8);
          v116 = *(v113 + 16);
          v117 = *(v113 + 24);
          v118 = *(v113 + 32);
          v119 = *(*(v0 + 416) + 80);
          v120 = v111 + ((v119 + 32) & ~v119);
          v331 = v116;
          v336 = v114;
          v327 = v117;
          sub_252760C18(v115, v114, v116, v117, v118);
          v323 = v118;
          v121 = v118 >> 1;
          v340 = v115;
          v122 = v115 & 1;
          v123 = MEMORY[0x277D84F90];
          while (1)
          {
            v124 = *(v0 + 432);
            sub_25272E7DC(v120, v124);
            v125 = *(v124 + 16);
            sub_2528BE6B0();
            v126 = *(v0 + 49);
            v127 = v126 >> 14;
            v128 = (v126 >> 8) & 0x3F;
            if (v127 != 1)
            {
              v128 = *(v0 + 49);
            }

            if (!v127)
            {
              v128 = *(v0 + 49);
            }

            if (v121 == 44)
            {
              if (v128 != 2)
              {
LABEL_65:
                (*(*(v0 + 312) + 56))(*(v0 + 296), 1, 1, *(v0 + 304));
                goto LABEL_66;
              }

              v129 = *(v0 + 52);
            }

            else
            {
              if (v121 != 36)
              {
                goto LABEL_65;
              }

              v129 = *(v0 + 1080);
            }

            v131 = *(v0 + 304);
            v130 = *(v0 + 312);
            v132 = *(v0 + 296);
            *v132 = v122;
            (*(v130 + 104))(v132, v129, v131);
            (*(v130 + 56))(v132, 0, 1, v131);
LABEL_66:
            v134 = *(v0 + 304);
            v133 = *(v0 + 312);
            v135 = *(v0 + 296);
            sub_25272E840(*(v0 + 432));
            if ((*(v133 + 48))(v135, 1, v134) == 1)
            {
              sub_2527213D8(*(v0 + 296), &qword_27F4FD458, &unk_2528C7FE0);
            }

            else
            {
              v136 = *(*(v0 + 312) + 32);
              v136(*(v0 + 320), *(v0 + 296), *(v0 + 304));
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v123 = sub_252737FAC(0, *(v123 + 2) + 1, 1, v123);
              }

              v138 = *(v123 + 2);
              v137 = *(v123 + 3);
              if (v138 >= v137 >> 1)
              {
                v123 = sub_252737FAC(v137 > 1, v138 + 1, 1, v123);
              }

              v140 = *(v0 + 312);
              v139 = *(v0 + 320);
              v141 = *(v0 + 304);
              *(v123 + 2) = v138 + 1;
              v136(&v123[((*(v140 + 80) + 32) & ~*(v140 + 80)) + *(v140 + 72) * v138], v139, v141);
            }

            v120 += v357;
            if (!--v112)
            {
              sub_25272C15C(v340, v336, v331, v327, v323);
              v109 = v344;
              v110 = v348;
              goto LABEL_74;
            }
          }
        }

        v123 = MEMORY[0x277D84F90];
LABEL_74:
        v142 = *(v123 + 2);
        v143 = v110[2];
        v144 = v143 + v142;
        if (__OFADD__(v143, v142))
        {
          goto LABEL_125;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) != 0 && v144 <= v110[3] >> 1)
        {
          if (!*(v123 + 2))
          {
            goto LABEL_48;
          }
        }

        else
        {
          if (v143 <= v144)
          {
            v146 = v143 + v142;
          }

          else
          {
            v146 = v143;
          }

          v110 = sub_252737FAC(isUniquelyReferenced_nonNull_native, v146, 1, v110);
          if (!*(v123 + 2))
          {
LABEL_48:

            v108 = v319;
            if (v142)
            {
              goto LABEL_126;
            }

            goto LABEL_49;
          }
        }

        if ((v110[3] >> 1) - v110[2] < v142)
        {
          goto LABEL_128;
        }

        v147 = *(v0 + 304);
        v148 = *(v0 + 312);
        v149 = (*(v148 + 80) + 32) & ~*(v148 + 80);
        v150 = *(v148 + 72);
        swift_arrayInitWithCopy();

        v108 = v319;
        if (v142)
        {
          v151 = v110[2];
          v152 = __OFADD__(v151, v142);
          v153 = v151 + v142;
          if (v152)
          {
            goto LABEL_129;
          }

          v110[2] = v153;
        }

LABEL_49:
        if (++v109 == v353)
        {
          goto LABEL_88;
        }
      }
    }

    v110 = MEMORY[0x277D84F90];
LABEL_88:
    v349 = v110;
    *(v0 + 928) = v110;
    v154 = *(v0 + 736);
    v155 = *(v154 + 16);
    v156 = MEMORY[0x277D84F90];
    if (v155)
    {
      break;
    }

LABEL_94:
    *(v0 + 936) = v156;
    if (!v353)
    {
      v175 = MEMORY[0x277D84F90];
LABEL_105:
      *(v0 + 944) = v175;
      v187 = *(v0 + 51);
      v189 = *(v0 + 152);
      v188 = *(v0 + 160);

      v190 = swift_task_alloc();
      *(v0 + 952) = v190;
      *(v190 + 16) = v156;
      *(v190 + 24) = v188;
      *(v190 + 32) = v189;
      *(v190 + 40) = v187 & 1;
      v191 = swift_task_alloc();
      *(v0 + 960) = v191;
      *v191 = v0;
      v191[1] = sub_252797060;
      v192 = *(v0 + 736);
      v193 = *(v0 + 160);

      return (sub_252777E20)(v349, v193, v175, v192, &unk_2528C8000, v190);
    }

    v173 = 0;
    v174 = (v319 + 64);
    v175 = MEMORY[0x277D84F90];
    while (v173 < *(v319 + 16))
    {
      v176 = *v174;
      v177 = *(v174 - 1);
      *(v0 + 16) = *(v174 - 2);
      *(v0 + 32) = v177;
      *(v0 + 48) = v176;
      sub_252870158(&v359);
      v178 = v359;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v175 = sub_252737FD4(0, *(v175 + 2) + 1, 1, v175);
      }

      v180 = *(v175 + 2);
      v179 = *(v175 + 3);
      if (v180 >= v179 >> 1)
      {
        v175 = sub_252737FD4((v179 > 1), v180 + 1, 1, v175);
      }

      ++v173;
      *(v175 + 2) = v180 + 1;
      v175[v180 + 32] = v178;
      v174 += 40;
      if (v353 == v173)
      {
        goto LABEL_105;
      }
    }

LABEL_127:
    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
LABEL_130:
    swift_once();
  }

  v157 = *(v0 + 416);
  *(v0 + 120) = MEMORY[0x277D84F90];
  sub_25282EFDC(0, v155, 0);
  v156 = *(v0 + 120);
  v158 = v154 + ((*(v157 + 80) + 32) & ~*(v157 + 80));
  while (1)
  {
    v159 = *(v0 + 424);
    v161 = *(v0 + 336);
    v160 = *(v0 + 344);
    v162 = *(v0 + 288);
    sub_25272E7DC(v158, v159);
    v163 = *(v159 + 8);
    sub_2528BE6B0();
    v164 = *(v0 + 56);
    v165 = *(v0 + 64);
    sub_2528BECA0();

    if ((*(v160 + 48))(v162, 1, v161) == 1)
    {
      break;
    }

    v166 = *(v0 + 424);
    v167 = *(*(v0 + 344) + 32);
    v167(*(v0 + 360), *(v0 + 288), *(v0 + 336));
    sub_25272E840(v166);
    *(v0 + 120) = v156;
    v169 = *(v156 + 16);
    v168 = *(v156 + 24);
    if (v169 >= v168 >> 1)
    {
      sub_25282EFDC(v168 > 1, v169 + 1, 1);
      v156 = *(v0 + 120);
    }

    v170 = *(v0 + 360);
    v171 = *(v0 + 336);
    v172 = *(v0 + 344);
    *(v156 + 16) = v169 + 1;
    v167(v156 + ((*(v172 + 80) + 32) & ~*(v172 + 80)) + *(v172 + 72) * v169, v170, v171);
    v158 += v357;
    if (!--v155)
    {
      goto LABEL_94;
    }
  }

  v181 = *(v0 + 424);
  v182 = *(v0 + 408);
  sub_2527213D8(*(v0 + 288), &qword_27F4FC628, &qword_2528C4750);
  v359 = 0;
  v360 = 0xE000000000000000;
  sub_2528C0E70();
  v183 = v360;
  *(v0 + 72) = v359;
  *(v0 + 80) = v183;
  MEMORY[0x2530A80B0](0xD00000000000001CLL, 0x80000002528E5760);
  sub_2528C0ED0();
  MEMORY[0x2530A80B0](0x203A646920, 0xE500000000000000);
  sub_2528BE6B0();
  MEMORY[0x2530A80B0](*(v0 + 88), *(v0 + 96));

  MEMORY[0x2530A80B0](0x64697575206F7420, 0xE800000000000000);
  v184 = *(v0 + 72);
  v185 = *(v0 + 80);
  return sub_2528C0EE0();
}

uint64_t sub_252797060(uint64_t a1)
{
  v2 = *(*v1 + 960);
  v3 = *(*v1 + 952);
  v4 = *(*v1 + 944);
  v5 = *(*v1 + 936);
  v6 = *(*v1 + 928);
  v8 = *v1;
  *(*v1 + 968) = a1;

  return MEMORY[0x2822009F8](sub_2527971DC, 0, 0);
}

uint64_t sub_2527971DC()
{
  v244 = v0;
  v1 = *(v0 + 704);
  sub_252735C2C(*(v0 + 968));
  sub_2527213D8(v1, &qword_27F4FCE48, &unk_2528C61E0);
  v2 = *(v0 + 920);
  v3 = (*(v0 + 912) - 1) & *(v0 + 912);
  if (v3)
  {
    v4 = *(v0 + 144);
    goto LABEL_7;
  }

  do
  {
    v5 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      goto LABEL_89;
    }

    if (v5 >= (((1 << *(v0 + 1084)) + 63) >> 6))
    {
      v98 = *(v0 + 904);
      v99 = *(v0 + 280);
      v101 = *(v0 + 240);
      v100 = *(v0 + 248);
      v102 = *(v0 + 232);
      v103 = *(v0 + 160);
      v104 = *(v0 + 144);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD468, &qword_2528C8008);
      v105 = *(v101 + 72);
      v106 = (*(v101 + 80) + 32) & ~*(v101 + 80);
      v107 = swift_allocObject();
      *(v107 + 16) = xmmword_2528C3910;
      sub_2528C06A0();
      *(v0 + 128) = v107;
      sub_25279F2D0(&qword_27F4FD470, MEMORY[0x277D16C90]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD478, &qword_2528C8010);
      sub_25279F1C0();
      sub_2528C0DF0();
      sub_2528C0500();
      v108 = swift_task_alloc();
      *(v108 + 16) = v103;
      *(v108 + 24) = v99;
      sub_2527E4E5C(sub_25279F224, v108, v104);
      if (v98)
      {
        v109 = *(v0 + 744);
        v110 = *(v0 + 736);
        v111 = *(v0 + 280);
        v112 = *(v0 + 256);
        v113 = *(v0 + 264);

        v114 = *(v0 + 112);

        v115 = *(v0 + 104);

        (*(v113 + 8))(v111, v112);
        v116 = *(v0 + 728);
        v117 = *(v0 + 720);
        v118 = *(v0 + 712);
        v119 = *(v0 + 704);
        v120 = *(v0 + 688);
        v121 = *(v0 + 664);
        v122 = *(v0 + 656);
        v123 = *(v0 + 648);
        v124 = *(v0 + 640);
        v125 = *(v0 + 632);
        v159 = *(v0 + 624);
        v161 = *(v0 + 616);
        v163 = *(v0 + 608);
        v165 = *(v0 + 584);
        v167 = *(v0 + 560);
        v169 = *(v0 + 552);
        v171 = *(v0 + 544);
        v173 = *(v0 + 536);
        v175 = *(v0 + 528);
        v177 = *(v0 + 520);
        v179 = *(v0 + 496);
        v181 = *(v0 + 488);
        v183 = *(v0 + 464);
        v185 = *(v0 + 456);
        v187 = *(v0 + 448);
        v189 = *(v0 + 440);
        v191 = *(v0 + 432);
        v193 = *(v0 + 424);
        v195 = *(v0 + 400);
        v197 = *(v0 + 376);
        v199 = *(v0 + 368);
        v201 = *(v0 + 360);
        v203 = *(v0 + 352);
        v205 = *(v0 + 328);
        v207 = *(v0 + 320);
        v210 = *(v0 + 296);
        v213 = *(v0 + 288);
        v216 = *(v0 + 280);
        v219 = *(v0 + 272);
        v222 = *(v0 + 248);
        v225 = *(v0 + 224);
        v228 = *(v0 + 216);
        v231 = *(v0 + 208);
        v235 = *(v0 + 200);
        v238 = *(v0 + 176);

        v126 = *(v0 + 8);

        return v126();
      }

      v127 = *(v0 + 280);

      v128 = sub_2528C0520();
      v129 = *(v0 + 744);
      if (v128)
      {
        v130 = *(v0 + 744);

        v131 = *(v0 + 736);
        v132 = *(v0 + 728);
        v133 = *(v0 + 720);
        v134 = *(v0 + 712);
        v135 = *(v0 + 704);
        v136 = *(v0 + 688);
        v155 = *(v0 + 664);
        v156 = *(v0 + 656);
        v157 = *(v0 + 648);
        v158 = *(v0 + 640);
        v160 = *(v0 + 632);
        v162 = *(v0 + 624);
        v164 = *(v0 + 616);
        v166 = *(v0 + 608);
        v168 = *(v0 + 584);
        v170 = *(v0 + 560);
        v172 = *(v0 + 552);
        v174 = *(v0 + 544);
        v176 = *(v0 + 536);
        v178 = *(v0 + 528);
        v180 = *(v0 + 520);
        v182 = *(v0 + 496);
        v184 = *(v0 + 488);
        v186 = *(v0 + 464);
        v188 = *(v0 + 456);
        v190 = *(v0 + 448);
        v192 = *(v0 + 440);
        v194 = *(v0 + 432);
        v196 = *(v0 + 424);
        v198 = *(v0 + 400);
        v200 = *(v0 + 376);
        v202 = *(v0 + 368);
        v204 = *(v0 + 360);
        v206 = *(v0 + 352);
        v208 = *(v0 + 328);
        v211 = *(v0 + 320);
        v214 = *(v0 + 296);
        v217 = *(v0 + 288);
        v137 = *(v0 + 280);
        v138 = *(v0 + 256);
        v139 = *(v0 + 264);
        v223 = *(v0 + 272);
        v226 = *(v0 + 248);
        v229 = *(v0 + 224);
        v232 = *(v0 + 216);
        v236 = *(v0 + 208);
        v239 = *(v0 + 200);
        v241 = *(v0 + 176);

        v140 = *(v0 + 112);
        v243 = MEMORY[0x277D84F90];
        sub_252735C2C(v140);
        sub_252735C2C(*(v0 + 104));
        v220 = sub_25280D9C4(v243);

        (*(v139 + 8))(v137, v138);

        v141 = *(v0 + 8);

        return v141(v220);
      }

      v142 = *(v129 + 16);
      if (v142)
      {
        v143 = sub_252865914(*(v129 + 16), 0);
        v144 = sub_252868980(v242, v143 + 32, v142, v129);
        sub_25271A648();
        if (v144 == v142)
        {
          goto LABEL_81;
        }

        __break(1u);
      }

      v143 = MEMORY[0x277D84F90];
LABEL_81:
      *(v0 + 976) = v143;
      v145 = *(v0 + 272);
      v146 = *(v0 + 280);
      v147 = *(v0 + 256);
      v148 = *(v0 + 264);
      v149 = *(v0 + 224);
      v150 = sub_2528BF400();
      *(v0 + 984) = v150;
      v151 = *(v150 - 8);
      v152 = *(v151 + 56);
      *(v0 + 992) = v152;
      *(v0 + 1000) = (v151 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
      v152(v149, 1, 1, v150);
      (*(v148 + 16))(v145, v146, v147);
      *(v0 + 1008) = sub_2528BEFC0();
      v153 = *(MEMORY[0x277D15430] + 4);
      v154 = swift_task_alloc();
      *(v0 + 1016) = v154;
      *v154 = v0;
      v154[1] = sub_25279831C;

      return MEMORY[0x28216EA40]();
    }

    v4 = *(v0 + 144);
    v3 = *(v4 + 8 * v5 + 64);
    ++v2;
  }

  while (!v3);
  v2 = v5;
LABEL_7:
  *(v0 + 920) = v2;
  *(v0 + 912) = v3;
  v6 = *(v0 + 720);
  v7 = *(v0 + 712);
  v8 = *(v0 + 704);
  v9 = *(v0 + 696);
  v10 = __clz(__rbit64(v3)) | (v2 << 6);
  v240 = *(*(v0 + 416) + 72);
  sub_25272E7DC(*(v4 + 48) + v240 * v10, v7);
  v11 = *(*(v4 + 56) + 8 * v10);
  v12 = *(v9 + 48);
  sub_25279F090(v7, v8);
  *(v8 + v12) = v11;
  sub_25272006C(v8, v6, &qword_27F4FCE48, &unk_2528C61E0);
  v13 = *(v6 + *(v9 + 48));

  sub_25272E840(v6);
  v212 = v13;
  v237 = *(v13 + 16);
  if (v237)
  {
    v14 = 0;
    v209 = v13 + 32;
    v15 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v14 >= *(v13 + 16))
      {
        __break(1u);
LABEL_85:
        __break(1u);
LABEL_86:
        __break(1u);
        goto LABEL_87;
      }

      v16 = *(v0 + 736);
      v17 = *(v16 + 16);
      if (v17)
      {
        v230 = v14;
        v233 = v15;
        v18 = v209 + 40 * v14;
        v20 = *v18;
        v19 = *(v18 + 8);
        v21 = *(v18 + 16);
        v22 = *(v18 + 24);
        v23 = *(v18 + 32);
        v24 = *(*(v0 + 416) + 80);
        v25 = v16 + ((v24 + 32) & ~v24);
        v221 = v21;
        v224 = v19;
        v218 = v22;
        sub_252760C18(v20, v19, v21, v22, v23);
        v215 = v23;
        v26 = v23 >> 1;
        v227 = v20;
        v27 = v20 & 1;
        v28 = MEMORY[0x277D84F90];
        while (1)
        {
          v29 = *(v0 + 432);
          sub_25272E7DC(v25, v29);
          v30 = *(v29 + 16);
          sub_2528BE6B0();
          v31 = *(v0 + 49);
          v32 = v31 >> 14;
          v33 = (v31 >> 8) & 0x3F;
          if (v32 != 1)
          {
            v33 = *(v0 + 49);
          }

          if (!v32)
          {
            v33 = *(v0 + 49);
          }

          if (v26 == 44)
          {
            if (v33 != 2)
            {
LABEL_26:
              (*(*(v0 + 312) + 56))(*(v0 + 296), 1, 1, *(v0 + 304));
              goto LABEL_27;
            }

            v34 = *(v0 + 52);
          }

          else
          {
            if (v26 != 36)
            {
              goto LABEL_26;
            }

            v34 = *(v0 + 1080);
          }

          v36 = *(v0 + 304);
          v35 = *(v0 + 312);
          v37 = *(v0 + 296);
          *v37 = v27;
          (*(v35 + 104))(v37, v34, v36);
          (*(v35 + 56))(v37, 0, 1, v36);
LABEL_27:
          v39 = *(v0 + 304);
          v38 = *(v0 + 312);
          v40 = *(v0 + 296);
          sub_25272E840(*(v0 + 432));
          if ((*(v38 + 48))(v40, 1, v39) == 1)
          {
            sub_2527213D8(*(v0 + 296), &qword_27F4FD458, &unk_2528C7FE0);
          }

          else
          {
            v41 = *(*(v0 + 312) + 32);
            v41(*(v0 + 320), *(v0 + 296), *(v0 + 304));
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v28 = sub_252737FAC(0, *(v28 + 2) + 1, 1, v28);
            }

            v43 = *(v28 + 2);
            v42 = *(v28 + 3);
            if (v43 >= v42 >> 1)
            {
              v28 = sub_252737FAC(v42 > 1, v43 + 1, 1, v28);
            }

            v45 = *(v0 + 312);
            v44 = *(v0 + 320);
            v46 = *(v0 + 304);
            *(v28 + 2) = v43 + 1;
            v41(&v28[((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v43], v44, v46);
          }

          v25 += v240;
          if (!--v17)
          {
            sub_25272C15C(v227, v224, v221, v218, v215);
            v14 = v230;
            v15 = v233;
            v13 = v212;
            goto LABEL_35;
          }
        }
      }

      v28 = MEMORY[0x277D84F90];
LABEL_35:
      v47 = *(v28 + 2);
      v48 = v15[2];
      v49 = v48 + v47;
      if (__OFADD__(v48, v47))
      {
        goto LABEL_85;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) != 0 && v49 <= v15[3] >> 1)
      {
        if (!*(v28 + 2))
        {
          goto LABEL_9;
        }
      }

      else
      {
        if (v48 <= v49)
        {
          v51 = v48 + v47;
        }

        else
        {
          v51 = v48;
        }

        v15 = sub_252737FAC(isUniquelyReferenced_nonNull_native, v51, 1, v15);
        if (!*(v28 + 2))
        {
LABEL_9:

          if (v47)
          {
            goto LABEL_86;
          }

          goto LABEL_10;
        }
      }

      if ((v15[3] >> 1) - v15[2] < v47)
      {
        goto LABEL_88;
      }

      v52 = *(v0 + 304);
      v53 = *(v0 + 312);
      v54 = (*(v53 + 80) + 32) & ~*(v53 + 80);
      v55 = *(v53 + 72);
      swift_arrayInitWithCopy();

      if (v47)
      {
        v56 = v15[2];
        v57 = __OFADD__(v56, v47);
        v58 = v56 + v47;
        if (v57)
        {
          goto LABEL_90;
        }

        v15[2] = v58;
      }

LABEL_10:
      if (++v14 == v237)
      {
        goto LABEL_49;
      }
    }
  }

  v15 = MEMORY[0x277D84F90];
LABEL_49:
  v234 = v15;
  *(v0 + 928) = v15;
  v59 = *(v0 + 736);
  v60 = *(v59 + 16);
  v61 = MEMORY[0x277D84F90];
  if (!v60)
  {
LABEL_55:
    *(v0 + 936) = v61;
    if (!v237)
    {
      v80 = MEMORY[0x277D84F90];
LABEL_66:
      *(v0 + 944) = v80;
      v91 = *(v0 + 51);
      v93 = *(v0 + 152);
      v92 = *(v0 + 160);

      v94 = swift_task_alloc();
      *(v0 + 952) = v94;
      *(v94 + 16) = v61;
      *(v94 + 24) = v92;
      *(v94 + 32) = v93;
      *(v94 + 40) = v91 & 1;
      v95 = swift_task_alloc();
      *(v0 + 960) = v95;
      *v95 = v0;
      v95[1] = sub_252797060;
      v96 = *(v0 + 736);
      v97 = *(v0 + 160);

      return (sub_252777E20)(v234, v97, v80, v96, &unk_2528C8000, v94);
    }

    v78 = 0;
    v79 = (v13 + 64);
    v80 = MEMORY[0x277D84F90];
    while (v78 < *(v13 + 16))
    {
      v81 = *v79;
      v82 = *(v79 - 1);
      *(v0 + 16) = *(v79 - 2);
      *(v0 + 32) = v82;
      *(v0 + 48) = v81;
      sub_252870158(v242);
      v83 = v242[0];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v80 = sub_252737FD4(0, *(v80 + 2) + 1, 1, v80);
      }

      v85 = *(v80 + 2);
      v84 = *(v80 + 3);
      if (v85 >= v84 >> 1)
      {
        v80 = sub_252737FD4((v84 > 1), v85 + 1, 1, v80);
      }

      ++v78;
      *(v80 + 2) = v85 + 1;
      v80[v85 + 32] = v83;
      v79 += 40;
      if (v237 == v78)
      {
        goto LABEL_66;
      }
    }

LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
    return MEMORY[0x28216EA40]();
  }

  v62 = *(v0 + 416);
  *(v0 + 120) = MEMORY[0x277D84F90];
  sub_25282EFDC(0, v60, 0);
  v61 = *(v0 + 120);
  v63 = v59 + ((*(v62 + 80) + 32) & ~*(v62 + 80));
  while (1)
  {
    v64 = *(v0 + 424);
    v66 = *(v0 + 336);
    v65 = *(v0 + 344);
    v67 = *(v0 + 288);
    sub_25272E7DC(v63, v64);
    v68 = *(v64 + 8);
    sub_2528BE6B0();
    v69 = *(v0 + 56);
    v70 = *(v0 + 64);
    sub_2528BECA0();

    if ((*(v65 + 48))(v67, 1, v66) == 1)
    {
      break;
    }

    v71 = *(v0 + 424);
    v72 = *(*(v0 + 344) + 32);
    v72(*(v0 + 360), *(v0 + 288), *(v0 + 336));
    sub_25272E840(v71);
    *(v0 + 120) = v61;
    v74 = *(v61 + 16);
    v73 = *(v61 + 24);
    if (v74 >= v73 >> 1)
    {
      sub_25282EFDC(v73 > 1, v74 + 1, 1);
      v61 = *(v0 + 120);
    }

    v75 = *(v0 + 360);
    v76 = *(v0 + 336);
    v77 = *(v0 + 344);
    *(v61 + 16) = v74 + 1;
    v72(v61 + ((*(v77 + 80) + 32) & ~*(v77 + 80)) + *(v77 + 72) * v74, v75, v76);
    v63 += v240;
    --v60;
    v13 = v212;
    if (!v60)
    {
      goto LABEL_55;
    }
  }

  v86 = *(v0 + 424);
  v87 = *(v0 + 408);
  sub_2527213D8(*(v0 + 288), &qword_27F4FC628, &qword_2528C4750);
  v242[0] = 0;
  v242[1] = 0xE000000000000000;
  sub_2528C0E70();
  *(v0 + 72) = 0;
  *(v0 + 80) = 0xE000000000000000;
  MEMORY[0x2530A80B0](0xD00000000000001CLL, 0x80000002528E5760);
  sub_2528C0ED0();
  MEMORY[0x2530A80B0](0x203A646920, 0xE500000000000000);
  sub_2528BE6B0();
  MEMORY[0x2530A80B0](*(v0 + 88), *(v0 + 96));

  MEMORY[0x2530A80B0](0x64697575206F7420, 0xE800000000000000);
  v88 = *(v0 + 72);
  v89 = *(v0 + 80);
  return sub_2528C0EE0();
}

uint64_t sub_25279831C(uint64_t a1)
{
  v3 = *v1;
  v4 = *v1;
  v5 = *(*v1 + 1016);
  v6 = *(*v1 + 51);
  v7 = *v1;
  v4[128] = a1;

  v8 = *(MEMORY[0x277D15448] + 4);
  v9 = swift_task_alloc();
  v4[129] = v9;
  *v9 = v7;
  v9[1] = sub_2527984AC;
  v10 = v3[34];
  v11 = v3[27];
  v12 = v3[19];

  return MEMORY[0x28216EA70](v11, v10, 0, 1, v12, v6 & 1);
}

uint64_t sub_2527984AC()
{
  v2 = *v1;
  v3 = *(*v1 + 1032);
  v4 = *v1;
  v2[130] = v0;

  v5 = v2[128];
  if (v0)
  {

    v6 = sub_2527989AC;
  }

  else
  {
    (*(v2[33] + 8))(v2[34], v2[32]);

    v6 = sub_2527985FC;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2527985FC()
{
  sub_2527213D8(v0[28], &qword_27F4FCD98, &qword_2528C6200);
  v1 = v0[130];
  v2 = v0[122];
  v3 = v0[92];
  v4 = v0[28];
  sub_25274AA0C(v0[27], v4, &qword_27F4FCD98, &qword_2528C6200);
  v5 = swift_task_alloc();
  *(v5 + 16) = v2;
  *(v5 + 24) = v4;
  v6 = sub_2527F2ADC(MEMORY[0x277D84F90], sub_252756620, v5, v3);

  sub_2527213D8(v4, &qword_27F4FCD98, &qword_2528C6200);

  v7 = v0[92];
  v8 = v0[91];
  v9 = v0[90];
  v10 = v0[89];
  v11 = v0[88];
  v12 = v0[86];
  v18 = v0[83];
  v19 = v0[82];
  v20 = v0[81];
  v21 = v0[80];
  v22 = v0[79];
  v23 = v0[78];
  v24 = v0[77];
  v25 = v0[76];
  v26 = v0[73];
  v27 = v0[70];
  v28 = v0[69];
  v29 = v0[68];
  v30 = v0[67];
  v31 = v0[66];
  v32 = v0[65];
  v33 = v0[62];
  v34 = v0[61];
  v35 = v0[58];
  v36 = v0[57];
  v37 = v0[56];
  v38 = v0[55];
  v39 = v0[54];
  v40 = v0[53];
  v41 = v0[50];
  v42 = v0[47];
  v43 = v0[46];
  v44 = v0[45];
  v45 = v0[44];
  v46 = v0[41];
  v47 = v0[40];
  v48 = v0[37];
  v49 = v0[36];
  v13 = v0[35];
  v14 = v0[32];
  v15 = v0[33];
  v51 = v0[34];
  v52 = v0[31];
  v53 = v0[28];
  v54 = v0[27];
  v55 = v0[26];
  v56 = v0[25];
  v57 = v0[22];

  sub_252735C2C(v0[14]);
  sub_252735C2C(v0[13]);
  v50 = sub_25280D9C4(v6);

  (*(v15 + 8))(v13, v14);

  v16 = v0[1];

  return v16(v50);
}

uint64_t sub_2527989AC()
{
  v1 = v0[22];
  (*(v0[33] + 8))(v0[34], v0[32]);
  v2 = sub_2528C05D0();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = *(MEMORY[0x277D153E8] + 4);
  v4 = swift_task_alloc();
  v0[131] = v4;
  *v4 = v0;
  v4[1] = sub_252798AA4;
  v5 = v0[126];
  v6 = v0[22];

  return MEMORY[0x28216E990](v6);
}

uint64_t sub_252798AA4(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 1048);
  v7 = *v1;
  *(v3 + 1056) = a1;

  v5 = swift_task_alloc();
  *(v3 + 1064) = v5;
  *v5 = v7;
  v5[1] = sub_252798BF0;

  return (sub_25279D1DC)(a1);
}

uint64_t sub_252798BF0(uint64_t a1)
{
  v2 = *(*v1 + 1064);
  v4 = *v1;
  *(*v1 + 1072) = a1;

  return MEMORY[0x2822009F8](sub_252798CF0, 0, 0);
}

uint64_t sub_252798CF0()
{
  v1 = *(v0 + 1072);
  v2 = *(v0 + 608);
  v3 = *(v0 + 600);
  v4 = *(v0 + 592);
  v5 = *(v0 + 352);
  v6 = *(v0 + 176);
  v7 = *(v0 + 160);

  sub_2527213D8(v6, &qword_27F4FC480, &unk_2528C7FA0);
  sub_2528BF2F0();
  sub_2528BEE00();
  (*(v3 + 8))(v2, v4);
  if (*(v1 + 16) && (v8 = *(v0 + 1072), v9 = sub_252785C40(*(v0 + 352)), (v10 & 1) != 0))
  {
    v11 = *(v0 + 1040);
    v13 = *(v0 + 344);
    v12 = *(v0 + 352);
    v14 = *(v0 + 336);
    v80 = *(v0 + 224);
    v15 = *(v0 + 200);
    v17 = *(v0 + 184);
    v16 = *(v0 + 192);
    (*(v16 + 16))(v15, *(*(v0 + 1072) + 56) + *(v16 + 72) * v9, v17);
    (*(v13 + 8))(v12, v14);

    sub_2528BEE70();

    sub_2527213D8(v80, &qword_27F4FCD98, &qword_2528C6200);
    (*(v16 + 8))(v15, v17);
    v18 = 0;
  }

  else
  {
    v19 = *(v0 + 1072);
    v21 = *(v0 + 344);
    v20 = *(v0 + 352);
    v22 = *(v0 + 336);
    v23 = *(v0 + 224);

    (*(v21 + 8))(v20, v22);
    sub_2527213D8(v23, &qword_27F4FCD98, &qword_2528C6200);
    v18 = 1;
  }

  v24 = *(v0 + 1000);
  (*(v0 + 992))(*(v0 + 208), v18, 1, *(v0 + 984));
  v25 = *(v0 + 976);
  v26 = *(v0 + 736);
  v27 = *(v0 + 224);
  sub_25274AA0C(*(v0 + 208), v27, &qword_27F4FCD98, &qword_2528C6200);
  v28 = swift_task_alloc();
  *(v28 + 16) = v25;
  *(v28 + 24) = v27;
  v29 = sub_2527F2ADC(MEMORY[0x277D84F90], sub_252756620, v28, v26);

  sub_2527213D8(v27, &qword_27F4FCD98, &qword_2528C6200);

  v30 = *(v0 + 736);
  v31 = *(v0 + 728);
  v32 = *(v0 + 720);
  v33 = *(v0 + 712);
  v34 = *(v0 + 704);
  v35 = *(v0 + 688);
  v41 = *(v0 + 664);
  v42 = *(v0 + 656);
  v43 = *(v0 + 648);
  v44 = *(v0 + 640);
  v45 = *(v0 + 632);
  v46 = *(v0 + 624);
  v47 = *(v0 + 616);
  v48 = *(v0 + 608);
  v49 = *(v0 + 584);
  v50 = *(v0 + 560);
  v51 = *(v0 + 552);
  v52 = *(v0 + 544);
  v53 = *(v0 + 536);
  v54 = *(v0 + 528);
  v55 = *(v0 + 520);
  v56 = *(v0 + 496);
  v57 = *(v0 + 488);
  v58 = *(v0 + 464);
  v59 = *(v0 + 456);
  v60 = *(v0 + 448);
  v61 = *(v0 + 440);
  v62 = *(v0 + 432);
  v63 = *(v0 + 424);
  v64 = *(v0 + 400);
  v65 = *(v0 + 376);
  v66 = *(v0 + 368);
  v67 = *(v0 + 360);
  v68 = *(v0 + 352);
  v69 = *(v0 + 328);
  v70 = *(v0 + 320);
  v71 = *(v0 + 296);
  v72 = *(v0 + 288);
  v36 = *(v0 + 280);
  v37 = *(v0 + 256);
  v38 = *(v0 + 264);
  v74 = *(v0 + 272);
  v75 = *(v0 + 248);
  v76 = *(v0 + 224);
  v77 = *(v0 + 216);
  v78 = *(v0 + 208);
  v79 = *(v0 + 200);
  v81 = *(v0 + 176);

  sub_252735C2C(*(v0 + 112));
  sub_252735C2C(*(v0 + 104));
  v73 = sub_25280D9C4(v29);

  (*(v38 + 8))(v36, v37);

  v39 = *(v0 + 8);

  return v39(v73);
}

uint64_t sub_252799238()
{
  v1 = *(v0 + 688);
  v2 = *(v0 + 680);
  v3 = *(v0 + 672);
  v4 = *(v0 + 656);

  (*(v2 + 8))(v1, v3);
  sub_2527213D8(v4, &qword_27F4FCDB8, &unk_2528C5CC0);
  v52 = *(v0 + 896);
  v5 = *(v0 + 728);
  v6 = *(v0 + 720);
  v7 = *(v0 + 712);
  v8 = *(v0 + 704);
  v9 = *(v0 + 688);
  v10 = *(v0 + 664);
  v11 = *(v0 + 656);
  v12 = *(v0 + 648);
  v13 = *(v0 + 640);
  v14 = *(v0 + 632);
  v17 = *(v0 + 624);
  v18 = *(v0 + 616);
  v19 = *(v0 + 608);
  v20 = *(v0 + 584);
  v21 = *(v0 + 560);
  v22 = *(v0 + 552);
  v23 = *(v0 + 544);
  v24 = *(v0 + 536);
  v25 = *(v0 + 528);
  v26 = *(v0 + 520);
  v27 = *(v0 + 496);
  v28 = *(v0 + 488);
  v29 = *(v0 + 464);
  v30 = *(v0 + 456);
  v31 = *(v0 + 448);
  v32 = *(v0 + 440);
  v33 = *(v0 + 432);
  v34 = *(v0 + 424);
  v35 = *(v0 + 400);
  v36 = *(v0 + 376);
  v37 = *(v0 + 368);
  v38 = *(v0 + 360);
  v39 = *(v0 + 352);
  v40 = *(v0 + 328);
  v41 = *(v0 + 320);
  v42 = *(v0 + 296);
  v43 = *(v0 + 288);
  v44 = *(v0 + 280);
  v45 = *(v0 + 272);
  v46 = *(v0 + 248);
  v47 = *(v0 + 224);
  v48 = *(v0 + 216);
  v49 = *(v0 + 208);
  v50 = *(v0 + 200);
  v51 = *(v0 + 176);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_252799538(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDB8, &unk_2528C5CC0) - 8) + 64) + 15;
  v2[3] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD98, &qword_2528C6200) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  sub_2528BEFC0();
  v6 = *(MEMORY[0x277D153E8] + 4);
  v7 = swift_task_alloc();
  v2[5] = v7;
  *v7 = v2;
  v7[1] = sub_252799654;

  return MEMORY[0x28216E990](a2);
}

uint64_t sub_252799654(uint64_t a1)
{
  v2 = *(*v1 + 40);
  v4 = *v1;
  *(*v1 + 48) = a1;

  return MEMORY[0x2822009F8](sub_252799754, 0, 0);
}

uint64_t sub_252799754()
{
  *(v0 + 56) = sub_2528C0C20();
  *(v0 + 64) = sub_2528C0C10();
  v2 = sub_2528C0BD0();

  return MEMORY[0x2822009F8](sub_2527997EC, v2, v1);
}

uint64_t sub_2527997EC()
{
  v1 = v0[8];
  v2 = v0[6];
  v3 = v0[4];

  sub_2528BEF30();

  return MEMORY[0x2822009F8](sub_252799864, 0, 0);
}

uint64_t sub_252799864()
{
  v1 = v0[7];
  v2 = v0[4];
  v3 = sub_2528BF400();
  (*(*(v3 - 8) + 56))(v2, 0, 1, v3);
  v0[9] = sub_2528C0C10();
  v5 = sub_2528C0BD0();

  return MEMORY[0x2822009F8](sub_252799934, v5, v4);
}

uint64_t sub_252799934()
{
  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[3];

  sub_2528BEF40();

  return MEMORY[0x2822009F8](sub_2527999AC, 0, 0);
}

uint64_t sub_2527999AC()
{
  v1 = v0[6];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];
  v5 = sub_2528C00D0();
  (*(*(v5 - 8) + 56))(v2, 0, 1, v5);
  sub_2528BEE60();

  v6 = sub_2528BEEC0();
  (*(*(v6 - 8) + 56))(v4, 0, 1, v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_252799ABC@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *(a2 + 16);
  sub_2528BE6B0();
  v6 = v14 >> 14;
  v7 = HIBYTE(v14) & 0x3F;
  if (v6 != 1)
  {
    v7 = v14;
  }

  if (!v6)
  {
    v7 = v14;
  }

  if (v4 == 41)
  {
    if (v7 == 2)
    {
      v8 = MEMORY[0x277D15F90];
      goto LABEL_10;
    }
  }

  else if (v4 == 33)
  {
    v8 = MEMORY[0x277D15F88];
LABEL_10:
    v9 = *v8;
    v10 = sub_2528BFD30();
    v11 = *(v10 - 8);
    (*(v11 + 104))(a3, v9, v10);
    return (*(v11 + 56))(a3, 0, 1, v10);
  }

  v13 = sub_2528BFD30();
  return (*(*(v13 - 8) + 56))(a3, 1, 1, v13);
}

uint64_t sub_252799C24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 120) = a6;
  *(v6 + 40) = a4;
  *(v6 + 48) = a5;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 16) = a1;
  v7 = sub_2528BEE30();
  *(v6 + 56) = v7;
  v8 = *(v7 - 8);
  *(v6 + 64) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 72) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252799CF0, 0, 0);
}

uint64_t sub_252799CF0()
{
  v1 = v0[9];
  v3 = v0[4];
  v2 = v0[5];
  sub_2528BF2F0();
  v4 = swift_task_alloc();
  *(v4 + 16) = v3;
  v0[10] = sub_2527A3834(sub_25279F3B8, v4, v2);

  sub_2528BEFC0();
  v5 = *(MEMORY[0x277D15430] + 4);
  v6 = swift_task_alloc();
  v0[11] = v6;
  *v6 = v0;
  v6[1] = sub_252799DE8;

  return MEMORY[0x28216EA40]();
}

uint64_t sub_252799DE8(uint64_t a1)
{
  v3 = *v1;
  v4 = *v1;
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 120);
  v7 = *v1;
  v4[12] = a1;

  v8 = *(MEMORY[0x277D15418] + 4);
  v9 = swift_task_alloc();
  v4[13] = v9;
  *v9 = v7;
  v9[1] = sub_252799F98;
  v10 = v3[10];
  v11 = v3[9];
  v12 = v3[6];
  v13 = v3[3];
  v14 = v3[2];

  return MEMORY[0x28216E9B8](v14, v11, v10, v13, v12, v6 & 1);
}

uint64_t sub_252799F98()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *v1;
  v2[14] = v0;

  v5 = v2[12];
  v6 = v2[10];
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_25279A150, 0, 0);
  }

  else
  {
    (*(v2[8] + 8))(v2[9], v2[7]);

    v7 = *(v4 + 8);

    return v7();
  }
}

uint64_t sub_25279A150()
{
  (*(v0[8] + 8))(v0[9], v0[7]);

  v1 = v0[1];
  v2 = v0[14];

  return v1();
}

uint64_t sub_25279A1D0@<X0>(uint64_t a1@<X8>)
{
  v19 = a1;
  v1 = sub_2528BECF0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2528BF9D0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2528BF370();
  sub_252819FA8(v5);
  if (*(v11 + 16) && (v12 = sub_252785C40(v5), (v13 & 1) != 0))
  {
    (*(v7 + 16))(v10, *(v11 + 56) + *(v7 + 72) * v12, v6);
    (*(v2 + 8))(v5, v1);

    v14 = v19;
    sub_2528BF640();
    (*(v7 + 8))(v10, v6);
    v15 = 0;
  }

  else
  {

    (*(v2 + 8))(v5, v1);
    v15 = 1;
    v14 = v19;
  }

  v16 = sub_2528BFD50();
  return (*(*(v16 - 8) + 56))(v14, v15, 1, v16);
}

uint64_t sub_25279A424(uint64_t *a1, void (*a2)(char *, unint64_t, uint64_t), uint64_t a3, uint64_t a4)
{
  v134 = a4;
  v126 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC628, &qword_2528C4750);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v127 = v116 - v8;
  v9 = sub_2528BECF0();
  v129 = *(v9 - 8);
  v10 = *(v129 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v116 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v116 - v14;
  v16 = sub_2528BF9D0();
  v135 = *(v16 - 8);
  v17 = v135[8];
  v18 = MEMORY[0x28223BE20](v16);
  v132 = v116 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v131 = v116 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v24 = v116 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v122 = v116 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v123 = v116 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v128 = (v116 - v30);
  v31 = MEMORY[0x28223BE20](v29);
  v33 = v116 - v32;
  MEMORY[0x28223BE20](v31);
  v124 = a3;
  v125 = v116 - v34;
  v35 = sub_2528BF370();
  v133 = a2;
  sub_252819FA8(v15);
  if (!*(v35 + 16) || (v36 = sub_252785C40(v15), (v37 & 1) == 0))
  {

    return (*(v129 + 8))(v15, v9);
  }

  v117 = v24;
  v121 = v13;
  v38 = *(v35 + 56);
  v39 = v135;
  v136 = v135[9];
  v41 = v135 + 2;
  v40 = v135[2];
  v40(v33, v38 + v136 * v36, v16);
  v42 = *(v129 + 8);
  v119 = v129 + 8;
  v120 = v9;
  v118 = v42;
  v42(v15, v9);

  v43 = v39 + 4;
  v44 = v39[4];
  v45 = v125;
  v46 = v44(v125, v33, v16);
  MEMORY[0x28223BE20](v46);
  v47 = v134;
  v116[-2] = v133;
  v48 = v137;
  v49 = sub_25285383C(sub_25279F338, &v116[-4], v47);
  v50 = sub_252744064(v49);

  v133 = v40;
  v134 = v41;
  v51 = (v40)(v128, v45, v16);
  v52 = *(v50 + 16);
  v130 = v50;
  v116[1] = v43;
  v116[0] = v44;
  if (v52)
  {
    MEMORY[0x28223BE20](v51);
    v116[-2] = v45;

    v53 = sub_25279CB54(sub_25279F398, &v116[-4], v50);
    v137 = v48;
  }

  else
  {
    v137 = v48;
    v53 = 0;
  }

  v55 = v132;
  v56 = v127;
  v57 = v126;
  sub_252840B8C(v53, v128);
  sub_2528BF450();
  v58 = v129;
  v59 = v120;
  v60 = (*(v129 + 48))(v56, 1, v120);
  v61 = v121;
  v62 = v45;
  if (v60 == 1)
  {
    sub_2527213D8(v56, &qword_27F4FC628, &qword_2528C4750);
    v63 = v135;
  }

  else
  {
    (*(v58 + 32))(v121, v56, v59);
    v64 = sub_2528BF370();
    if (*(v64 + 16) && (v65 = sub_252785C40(v61), (v66 & 1) != 0))
    {
      v67 = v122;
      v68 = v133;
      v133(v122, *(v64 + 56) + v65 * v136, v16);

      v69 = v123;
      (v116[0])(v123, v67, v16);
      v70 = v68(v117, v69, v16);
      v71 = v130;
      if (*(v130 + 16))
      {
        MEMORY[0x28223BE20](v70);
        v116[-2] = v69;

        v72 = v137;
        v73 = sub_25279CB54(sub_25279F3E4, &v116[-4], v71);
        v137 = v72;
        v55 = v132;
      }

      else
      {
        v73 = 0;
      }

      v63 = v135;
      v74 = v121;
      sub_252840B8C(v73, v117);
      v118(v74, v59);
      (v63[1])(v69, v16);
      v62 = v125;
    }

    else
    {

      v118(v61, v59);
      v63 = v135;
    }
  }

  v75 = sub_2528BF430();
  v76 = v75;
  v129 = *(v75 + 16);
  if (!v129)
  {

    v83 = v63[1];
    return (v83)(v62, v16);
  }

  v77 = 0;
  v78 = v75 + ((*(v63 + 80) + 32) & ~*(v63 + 80));
  v127 = v75;
  v128 = (v63 + 1);
  v79 = (v63 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v80 = v131;
  while (v77 < *(v76 + 2))
  {
    v84 = v133;
    v133(v80, v78, v16);
    v85 = v84(v55, v80, v16);
    if (*(v130 + 16))
    {
      v135 = v79;
      MEMORY[0x28223BE20](v85);
      v116[-2] = v80;
      v87 = v86;

      v88 = v137;
      v89 = sub_25279CB54(sub_25279F3E4, &v116[-4], v87);
      v137 = v88;
      v90 = *v57;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v92 = v57;
      v93 = isUniquelyReferenced_nonNull_native;
      v138 = *v92;
      v94 = v138;
      v96 = sub_252785D14(v55);
      v97 = v94[2];
      v98 = (v95 & 1) == 0;
      v99 = v97 + v98;
      if (__OFADD__(v97, v98))
      {
        goto LABEL_42;
      }

      v100 = v95;
      if (v94[3] >= v99)
      {
        if ((v93 & 1) == 0)
        {
          sub_2527E1078();
        }
      }

      else
      {
        sub_2527DDCC4(v99, v93);
        v101 = sub_252785D14(v132);
        if ((v100 & 1) != (v102 & 1))
        {
          goto LABEL_44;
        }

        v96 = v101;
      }

      v57 = v126;
      v111 = v138;
      if (v100)
      {
        v81 = v138[7];
        v82 = *(v81 + 8 * v96);
        *(v81 + 8 * v96) = v89;

        v83 = *v128;
        v55 = v132;
        (*v128)(v132, v16);
      }

      else
      {
        v138[(v96 >> 6) + 8] |= 1 << v96;
        v112 = v132;
        v133((v111[6] + v96 * v136), v132, v16);
        *(v111[7] + 8 * v96) = v89;
        v55 = v112;
        v83 = *v128;
        (*v128)(v55, v16);
        v113 = v111[2];
        v114 = __OFADD__(v113, 1);
        v115 = v113 + 1;
        if (v114)
        {
          goto LABEL_43;
        }

        v111[2] = v115;
      }

      *v57 = v111;
      v79 = v135;
    }

    else
    {
      v103 = *v57;
      v104 = sub_252785D14(v55);
      if (v105)
      {
        v106 = v104;
        v107 = *v57;
        v108 = swift_isUniquelyReferenced_nonNull_native();
        v109 = *v57;
        v138 = *v57;
        v76 = v127;
        if (!v108)
        {
          sub_2527E1078();
          v109 = v138;
        }

        v83 = *v128;
        (*v128)(*(v109 + 48) + v106 * v136, v16);
        v110 = *(*(v109 + 56) + 8 * v106);

        sub_2528461D8(v106, v109);
        v55 = v132;
        v83(v132, v16);
        v57 = v126;
        *v126 = v109;
        goto LABEL_21;
      }

      v83 = *v128;
      (*v128)(v55, v16);
    }

    v76 = v127;
LABEL_21:
    ++v77;
    v80 = v131;
    v83(v131, v16);
    v78 += v136;
    if (v129 == v77)
    {

      v62 = v125;
      return (v83)(v62, v16);
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  result = sub_2528C10A0();
  __break(1u);
  return result;
}