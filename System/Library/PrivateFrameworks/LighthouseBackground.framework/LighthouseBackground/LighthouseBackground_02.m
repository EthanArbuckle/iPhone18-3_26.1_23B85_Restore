uint64_t sub_1DF17E288(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC0000006E6F6973;
  v3 = 0x726556646C697562;
  if (a1 <= 3u)
  {
    v4 = 0x6D754E6C65646F6DLL;
    v5 = 0xEB00000000726562;
    if (a1 != 2)
    {
      v4 = 0x4E746375646F7270;
      v5 = 0xEB00000000656D61;
    }

    v8 = 0x6C43656369766564;
    v9 = 0xEB00000000737361;
    if (!a1)
    {
      v8 = 0x726556646C697562;
      v9 = 0xEC0000006E6F6973;
    }

    v10 = a1 <= 1u;
  }

  else
  {
    v4 = 0x6F436E6F69676572;
    v5 = 0xEA00000000006564;
    v6 = 0x6E496E6F69676572;
    v7 = 0xEA00000000006F66;
    if (a1 != 7)
    {
      v6 = 0xD000000000000011;
      v7 = 0x80000001DF23CEB0;
    }

    if (a1 != 6)
    {
      v4 = v6;
      v5 = v7;
    }

    v8 = 0x54746375646F7270;
    v9 = 0xEB00000000657079;
    if (a1 != 4)
    {
      v8 = 0x56746375646F7270;
      v9 = 0xEE006E6F69737265;
    }

    v10 = a1 <= 5u;
  }

  if (v10)
  {
    v11 = v8;
  }

  else
  {
    v11 = v4;
  }

  if (v10)
  {
    v12 = v9;
  }

  else
  {
    v12 = v5;
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v13 = 0x6D754E6C65646F6DLL;
        v14 = 7497058;
      }

      else
      {
        v13 = 0x4E746375646F7270;
        v14 = 6647137;
      }
    }

    else
    {
      if (!a2)
      {
        goto LABEL_40;
      }

      v13 = 0x6C43656369766564;
      v14 = 7566177;
    }

    v2 = v14 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
    if (v11 != v13)
    {
      goto LABEL_44;
    }

    goto LABEL_41;
  }

  if (a2 <= 5u)
  {
    if (a2 == 4)
    {
      v2 = 0xEB00000000657079;
      if (v11 != 0x54746375646F7270)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v2 = 0xEE006E6F69737265;
      if (v11 != 0x56746375646F7270)
      {
        goto LABEL_44;
      }
    }

    goto LABEL_41;
  }

  if (a2 == 6)
  {
    v2 = 0xEA00000000006564;
    if (v11 != 0x6F436E6F69676572)
    {
      goto LABEL_44;
    }

    goto LABEL_41;
  }

  if (a2 == 7)
  {
    v2 = 0xEA00000000006F66;
    if (v11 != 0x6E496E6F69676572)
    {
      goto LABEL_44;
    }

    goto LABEL_41;
  }

  v3 = 0xD000000000000011;
  v2 = 0x80000001DF23CEB0;
LABEL_40:
  if (v11 != v3)
  {
LABEL_44:
    v15 = sub_1DF22B620();
    goto LABEL_45;
  }

LABEL_41:
  if (v12 != v2)
  {
    goto LABEL_44;
  }

  v15 = 1;
LABEL_45:

  return v15 & 1;
}

uint64_t sub_1DF17E59C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED000029294E2A5DLL;
  v3 = 0x4E5E5B4E283D3F28;
  v4 = a1;
  v5 = 0x5B2A5D435E5B4428;
  v6 = 0xEC000000295D4643;
  if (a1 != 5)
  {
    v5 = 0x462A5D465E5B4628;
    v6 = 0xE900000000000029;
  }

  v7 = 692343336;
  v8 = 0xE400000000000000;
  if (a1 != 3)
  {
    v7 = 0x432A5D435E5B4428;
    v8 = 0xE900000000000029;
  }

  if (a1 <= 4u)
  {
    v5 = v7;
    v6 = v8;
  }

  v9 = 0xE400000000000000;
  v10 = 692277800;
  if (a1 != 1)
  {
    v10 = 692474408;
    v9 = 0xE400000000000000;
  }

  if (!a1)
  {
    v10 = 0x4E5E5B4E283D3F28;
    v9 = 0xED000029294E2A5DLL;
  }

  if (a1 <= 2u)
  {
    v11 = v10;
  }

  else
  {
    v11 = v5;
  }

  if (v4 <= 2)
  {
    v12 = v9;
  }

  else
  {
    v12 = v6;
  }

  if (a2 > 2u)
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v3 = 0x5B2A5D435E5B4428;
        v2 = 0xEC000000295D4643;
        goto LABEL_30;
      }

      v3 = 0x462A5D465E5B4628;
    }

    else
    {
      if (a2 == 3)
      {
        v3 = 692343336;
        v2 = 0xE400000000000000;
        goto LABEL_30;
      }

      v3 = 0x432A5D435E5B4428;
    }

    v2 = 0xE900000000000029;
    goto LABEL_30;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0xE400000000000000;
      v3 = 692277800;
    }

    else
    {
      v3 = 692474408;
      v2 = 0xE400000000000000;
    }
  }

LABEL_30:
  if (v11 == v3 && v12 == v2)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_1DF22B620();
  }

  return v13 & 1;
}

uint64_t sub_1DF17E798(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE300000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x534F6E6F69736976;
  v6 = 0xE500000000000000;
  v7 = 0x534F63616DLL;
  if (a1 != 4)
  {
    v7 = 0x726F707075736E75;
    v6 = 0xEB00000000646574;
  }

  if (a1 != 3)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0xE700000000000000;
  v9 = 0x534F6863746177;
  if (a1 != 1)
  {
    v9 = 1397716596;
    v8 = 0xE400000000000000;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 5459817;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xE800000000000000;
      if (v10 != 0x534F6E6F69736976)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xE500000000000000;
      if (v10 != 0x534F63616DLL)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xEB00000000646574;
      if (v10 != 0x726F707075736E75)
      {
LABEL_34:
        v13 = sub_1DF22B620();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x534F6863746177)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE400000000000000;
      if (v10 != 1397716596)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE300000000000000;
    if (v10 != 5459817)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_1DF17E970(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000646574;
  v3 = 0x616572436B736154;
  v4 = a1;
  if (a1 <= 4u)
  {
    v15 = 0x80000001DF23CFE0;
    v16 = 0xD00000000000001ALL;
    v17 = 0x80000001DF23D000;
    if (a1 != 3)
    {
      v17 = 0x80000001DF23D020;
    }

    if (a1 != 2)
    {
      v16 = 0xD000000000000014;
      v15 = v17;
    }

    v18 = 0x656365526B736154;
    v19 = 0xEC00000064657669;
    if (!a1)
    {
      v18 = 0x616572436B736154;
      v19 = 0xEB00000000646574;
    }

    if (a1 <= 1u)
    {
      v13 = v18;
    }

    else
    {
      v13 = v16;
    }

    if (v4 <= 1)
    {
      v14 = v19;
    }

    else
    {
      v14 = v15;
    }
  }

  else
  {
    v5 = 0xE800000000000000;
    v6 = 0x6465727265666544;
    v7 = 0x6574656C706D6F43;
    v8 = 0xE900000000000064;
    if (a1 != 9)
    {
      v7 = 0x64656C696146;
      v8 = 0xE600000000000000;
    }

    if (a1 != 8)
    {
      v6 = v7;
      v5 = v8;
    }

    v9 = 0x80000001DF23D040;
    v10 = 0xD00000000000001BLL;
    v11 = 0x7261745320746F4ELL;
    v12 = 0xE700000000000000;
    if (a1 == 6)
    {
      v12 = 0xEB00000000646574;
    }

    else
    {
      v11 = 0x676E696E6E7552;
    }

    if (a1 != 5)
    {
      v10 = v11;
      v9 = v12;
    }

    if (a1 <= 7u)
    {
      v13 = v10;
    }

    else
    {
      v13 = v6;
    }

    if (v4 <= 7)
    {
      v14 = v9;
    }

    else
    {
      v14 = v5;
    }
  }

  if (a2 <= 4u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v2 = 0x80000001DF23CFE0;
        if (v13 != 0xD00000000000001ALL)
        {
          goto LABEL_60;
        }
      }

      else
      {
        if (a2 == 3)
        {
          v20 = "TaskFailedToRegister";
        }

        else
        {
          v20 = "TaskParametersStored";
        }

        v2 = (v20 - 32) | 0x8000000000000000;
        if (v13 != 0xD000000000000014)
        {
          goto LABEL_60;
        }
      }

      goto LABEL_57;
    }

    if (a2)
    {
      v2 = 0xEC00000064657669;
      if (v13 != 0x656365526B736154)
      {
        goto LABEL_60;
      }

      goto LABEL_57;
    }
  }

  else
  {
    if (a2 > 7u)
    {
      if (a2 == 8)
      {
        v2 = 0xE800000000000000;
        if (v13 != 0x6465727265666544)
        {
          goto LABEL_60;
        }
      }

      else if (a2 == 9)
      {
        v2 = 0xE900000000000064;
        if (v13 != 0x6574656C706D6F43)
        {
          goto LABEL_60;
        }
      }

      else
      {
        v2 = 0xE600000000000000;
        if (v13 != 0x64656C696146)
        {
          goto LABEL_60;
        }
      }

      goto LABEL_57;
    }

    if (a2 == 5)
    {
      v2 = 0x80000001DF23D040;
      if (v13 != 0xD00000000000001BLL)
      {
        goto LABEL_60;
      }

      goto LABEL_57;
    }

    if (a2 == 6)
    {
      if (v13 != 0x7261745320746F4ELL)
      {
        goto LABEL_60;
      }

      goto LABEL_57;
    }

    v2 = 0xE700000000000000;
    v3 = 0x676E696E6E7552;
  }

  if (v13 != v3)
  {
LABEL_60:
    v21 = sub_1DF22B620();
    goto LABEL_61;
  }

LABEL_57:
  if (v14 != v2)
  {
    goto LABEL_60;
  }

  v21 = 1;
LABEL_61:

  return v21 & 1;
}

uint64_t TaskType.rawValue.getter()
{
  if (*v0)
  {
    result = 0x5463696D616E7964;
  }

  else
  {
    result = 0x6154636974617473;
  }

  *v0;
  return result;
}

uint64_t sub_1DF17ED34(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x5463696D616E7964;
  }

  else
  {
    v4 = 0x6154636974617473;
  }

  if (v3)
  {
    v5 = 0xEA00000000006B73;
  }

  else
  {
    v5 = 0xEB000000006B7361;
  }

  if (*a2)
  {
    v6 = 0x5463696D616E7964;
  }

  else
  {
    v6 = 0x6154636974617473;
  }

  if (*a2)
  {
    v7 = 0xEB000000006B7361;
  }

  else
  {
    v7 = 0xEA00000000006B73;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1DF22B620();
  }

  return v9 & 1;
}

uint64_t sub_1DF17EDE8()
{
  v1 = *v0;
  sub_1DF22B6C0();
  sub_1DF22AD20();

  return sub_1DF22B6F0();
}

uint64_t sub_1DF17EE78()
{
  *v0;
  sub_1DF22AD20();
}

uint64_t sub_1DF17EEF4()
{
  v1 = *v0;
  sub_1DF22B6C0();
  sub_1DF22AD20();

  return sub_1DF22B6F0();
}

void sub_1DF17EF8C(uint64_t *a1@<X8>)
{
  v2 = 0x6154636974617473;
  if (*v1)
  {
    v2 = 0x5463696D616E7964;
  }

  v3 = 0xEA00000000006B73;
  if (*v1)
  {
    v3 = 0xEB000000006B7361;
  }

  *a1 = v2;
  a1[1] = v3;
}

LighthouseBackground::TaskCategory_optional __swiftcall TaskCategory.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DF22B420();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t TaskCategory.rawValue.getter()
{
  v1 = 0x756F72676B636162;
  if (*v0 != 1)
  {
    v1 = 0x5472656767697274;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x546E776F6E6B6E75;
  }
}

uint64_t sub_1DF17F16C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x756F72676B636162;
  v4 = 0xEE006B736154646ELL;
  if (v2 != 1)
  {
    v3 = 0x5472656767697274;
    v4 = 0xEB000000006B7361;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x546E776F6E6B6E75;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEB000000006B7361;
  }

  v7 = 0x756F72676B636162;
  v8 = 0xEE006B736154646ELL;
  if (*a2 != 1)
  {
    v7 = 0x5472656767697274;
    v8 = 0xEB000000006B7361;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x546E776F6E6B6E75;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xEB000000006B7361;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1DF22B620();
  }

  return v11 & 1;
}

uint64_t sub_1DF17F284()
{
  v1 = *v0;
  sub_1DF22B6C0();
  sub_1DF22AD20();

  return sub_1DF22B6F0();
}

uint64_t sub_1DF17F338()
{
  *v0;
  *v0;
  sub_1DF22AD20();
}

uint64_t sub_1DF17F3D8()
{
  v1 = *v0;
  sub_1DF22B6C0();
  sub_1DF22AD20();

  return sub_1DF22B6F0();
}

void sub_1DF17F494(uint64_t *a1@<X8>)
{
  v2 = 0xEB000000006B7361;
  v3 = *v1;
  v4 = 0xEE006B736154646ELL;
  v5 = 0x756F72676B636162;
  if (v3 != 1)
  {
    v5 = 0x5472656767697274;
    v4 = 0xEB000000006B7361;
  }

  v6 = v3 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x546E776F6E6B6E75;
  }

  if (!v6)
  {
    v2 = v4;
  }

  *a1 = v7;
  a1[1] = v2;
}

LighthouseBackground::TriggerTaskCategory_optional __swiftcall TriggerTaskCategory.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DF22B420();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t TriggerTaskCategory.rawValue.getter()
{
  v1 = 0xD000000000000010;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000013;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x546E776F6E6B6E75;
  }
}

uint64_t sub_1DF17F698(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xD000000000000010;
  v3 = *a1;
  v4 = 0x80000001DF23CF80;
  if (v3 == 1)
  {
    v5 = 0xD000000000000010;
  }

  else
  {
    v5 = 0xD000000000000013;
  }

  if (v3 == 1)
  {
    v6 = 0x80000001DF23CF80;
  }

  else
  {
    v6 = 0x80000001DF23CFA0;
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x546E776F6E6B6E75;
  }

  if (v3)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xEE00726567676972;
  }

  if (*a2 != 1)
  {
    v2 = 0xD000000000000013;
    v4 = 0x80000001DF23CFA0;
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0x546E776F6E6B6E75;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xEE00726567676972;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1DF22B620();
  }

  return v11 & 1;
}

uint64_t sub_1DF17F780()
{
  v1 = *v0;
  sub_1DF22B6C0();
  sub_1DF22AD20();

  return sub_1DF22B6F0();
}

uint64_t sub_1DF17F834()
{
  *v0;
  *v0;
  sub_1DF22AD20();
}

uint64_t sub_1DF17F8D4()
{
  v1 = *v0;
  sub_1DF22B6C0();
  sub_1DF22AD20();

  return sub_1DF22B6F0();
}

void sub_1DF17F990(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEE00726567676972;
  v4 = 0xD000000000000010;
  v5 = 0x80000001DF23CF80;
  if (v2 != 1)
  {
    v4 = 0xD000000000000013;
    v5 = 0x80000001DF23CFA0;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0x546E776F6E6B6E75;
  }

  if (!v6)
  {
    v3 = v5;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1DF17FACC@<X0>(char *a1@<X8>)
{
  v2 = sub_1DF22B420();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t DynamicTaskSource.rawValue.getter()
{
  if (*v0)
  {
    return 1819047280;
  }

  else
  {
    return 1752397168;
  }
}

uint64_t sub_1DF17FB5C(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 1819047280;
  }

  else
  {
    v2 = 1752397168;
  }

  if (*a2)
  {
    v3 = 1819047280;
  }

  else
  {
    v3 = 1752397168;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1DF22B620();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_1DF17FBD4()
{
  v1 = *v0;
  sub_1DF22B6C0();
  sub_1DF22AD20();

  return sub_1DF22B6F0();
}

uint64_t sub_1DF17FC3C()
{
  *v0;
  sub_1DF22AD20();
}

uint64_t sub_1DF17FC88()
{
  v1 = *v0;
  sub_1DF22B6C0();
  sub_1DF22AD20();

  return sub_1DF22B6F0();
}

uint64_t sub_1DF17FCF8@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1DF22B420();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_1DF17FD54(uint64_t *a1@<X8>)
{
  v2 = 1752397168;
  if (*v1)
  {
    v2 = 1819047280;
  }

  *a1 = v2;
  a1[1] = 0xE400000000000000;
}

uint64_t static TaskStatus.isTerminated(_:)(_BYTE *a1)
{
  v1 = *a1;
  if (v1 <= 4)
  {
    *a1;
  }

  else if (*a1 > 7u && v1 == 9)
  {
    v3 = 1;
LABEL_13:

    return v3 & 1;
  }

  v2 = sub_1DF22B620();

  if ((v2 & 1) == 0)
  {
    if (v1 > 9)
    {
      v3 = 1;
    }

    else
    {
      v3 = sub_1DF22B620();
    }

    goto LABEL_13;
  }

  v3 = 1;
  return v3 & 1;
}

LighthouseBackground::TaskStatus_optional __swiftcall TaskStatus.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DF22B420();

  v5 = 11;
  if (v3 < 0xB)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t TaskStatus.rawValue.getter()
{
  v1 = *v0;
  if (v1 <= 4)
  {
    v7 = 0x616572436B736154;
    v8 = 0xD00000000000001ALL;
    if (v1 != 2)
    {
      v8 = 0xD000000000000014;
    }

    if (*v0)
    {
      v7 = 0x656365526B736154;
    }

    if (*v0 <= 1u)
    {
      return v7;
    }

    else
    {
      return v8;
    }
  }

  else
  {
    v2 = 0x6465727265666544;
    v3 = 0x6574656C706D6F43;
    if (v1 != 9)
    {
      v3 = 0x64656C696146;
    }

    if (v1 != 8)
    {
      v2 = v3;
    }

    v4 = 0xD00000000000001BLL;
    v5 = 0x7261745320746F4ELL;
    if (v1 != 6)
    {
      v5 = 0x676E696E6E7552;
    }

    if (v1 != 5)
    {
      v4 = v5;
    }

    if (*v0 <= 7u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1DF180374()
{
  v1 = *v0;
  sub_1DF22B6C0();
  sub_1DF228924();
  return sub_1DF22B6F0();
}

uint64_t sub_1DF1803C4()
{
  v1 = *v0;
  sub_1DF22B6C0();
  sub_1DF228924();
  return sub_1DF22B6F0();
}

unint64_t sub_1DF180414@<X0>(unint64_t *a1@<X8>)
{
  result = TaskStatus.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t DatastoreKey.group.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t DatastoreKey.group.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t DatastoreKey.key.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t DatastoreKey.key.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

LighthouseBackground::DatastoreKey __swiftcall DatastoreKey.init(group:key:)(Swift::String group, Swift::String key)
{
  *v2 = group;
  v2[1] = key;
  result.key = key;
  result.group = group;
  return result;
}

uint64_t static DatastoreKey.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1DF22B620(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_1DF22B620();
    }
  }

  return result;
}

uint64_t sub_1DF1806C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x70756F7267 && a2 == 0xE500000000000000;
  if (v6 || (sub_1DF22B620() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 7955819 && a2 == 0xE300000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DF22B620();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1DF1807A0(uint64_t a1)
{
  v2 = sub_1DF1809AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF1807DC(uint64_t a1)
{
  v2 = sub_1DF1809AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DatastoreKey.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CE98, &qword_1DF22DD60);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v14 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v14[1] = v1[3];
  v14[2] = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF1809AC();
  sub_1DF22B740();
  v16 = 0;
  v12 = v14[3];
  sub_1DF22B580();
  if (!v12)
  {
    v15 = 1;
    sub_1DF22B580();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1DF1809AC()
{
  result = qword_1ECE0CEA0;
  if (!qword_1ECE0CEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0CEA0);
  }

  return result;
}

uint64_t DatastoreKey.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1DF22AD20();

  return sub_1DF22AD20();
}

uint64_t DatastoreKey.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1DF22B6C0();
  sub_1DF22AD20();
  sub_1DF22AD20();
  return sub_1DF22B6F0();
}

uint64_t DatastoreKey.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CEA8, &qword_1DF22DD68);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF1809AC();
  sub_1DF22B730();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v21 = 0;
  v11 = sub_1DF22B4A0();
  v13 = v12;
  v19 = v11;
  v20 = 1;
  v14 = sub_1DF22B4A0();
  v16 = v15;
  (*(v6 + 8))(v9, v5);
  *a2 = v19;
  a2[1] = v13;
  a2[2] = v14;
  a2[3] = v16;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t TaskTriggerRequest.datastoreTriggerKey.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_1DF180D2C(v2, v3);
}

uint64_t sub_1DF180D2C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

__n128 TaskTriggerRequest.datastoreTriggerKey.setter(uint64_t a1)
{
  v3 = v1[3];
  v4 = v1[4];
  sub_1DF180DA8(v1[1], v1[2]);
  result = *a1;
  *(v1 + 3) = *(a1 + 16);
  *(v1 + 1) = result;
  return result;
}

uint64_t sub_1DF180DA8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t TaskTriggerRequest.subscriptionTriggerTopic.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t TaskTriggerRequest.subscriptionTriggerTopic.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t TaskTriggerRequest.subscriptionTopics.setter(uint64_t a1)
{
  v3 = *(v1 + 56);

  *(v1 + 56) = a1;
  return result;
}

uint64_t TaskTriggerRequest.subscriptionBufferSize.getter()
{
  result = *(v0 + 64);
  v2 = *(v0 + 72);
  return result;
}

uint64_t TaskTriggerRequest.subscriptionBufferSize.setter(uint64_t result, char a2)
{
  *(v2 + 64) = result;
  *(v2 + 72) = a2 & 1;
  return result;
}

__n128 TaskTriggerRequest.init(inactivityTimeout:triggerKey:triggerTopic:subscriptionTopics:subscriptionBufferSize:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = a1;
  sub_1DF180DA8(0, 0);
  result = *a2;
  *(a7 + 24) = *(a2 + 16);
  *(a7 + 8) = result;
  *(a7 + 40) = a3;
  *(a7 + 48) = a4;
  *(a7 + 56) = a5;
  *(a7 + 64) = a6;
  *(a7 + 72) = 0;
  return result;
}

void TaskTriggerRequest.category.getter(_BYTE *a1@<X8>)
{
  v2 = *(v1 + 48);
  if (*(v1 + 16))
  {
    if (!v2)
    {
      *a1 = 1;
      return;
    }
  }

  else if (v2)
  {
    *a1 = 2;
    return;
  }

  *a1 = 0;
}

uint64_t TaskTriggerRequest.isValid.getter()
{
  v1 = *(v0 + 48);
  if (*(v0 + 16))
  {
    if (!v1)
    {
      goto LABEL_5;
    }

LABEL_6:

    v3 = 0;
    return v3 & 1;
  }

  if (!v1)
  {
    goto LABEL_6;
  }

LABEL_5:
  v2 = sub_1DF22B620();

  v3 = v2 ^ 1;
  return v3 & 1;
}

unint64_t sub_1DF181074()
{
  v1 = 0xD000000000000011;
  v2 = *v0;
  v3 = 0xD000000000000018;
  v4 = 0xD000000000000016;
  if (v2 == 3)
  {
    v4 = 0xD000000000000012;
  }

  if (v2 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v1 = 0xD000000000000013;
  }

  if (*v0 <= 1u)
  {
    result = v1;
  }

  else
  {
    result = v3;
  }

  *v0;
  return result;
}

uint64_t sub_1DF181100@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DF1881C8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DF181128(uint64_t a1)
{
  v2 = sub_1DF181440();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF181164(uint64_t a1)
{
  v2 = sub_1DF181440();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TaskTriggerRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CEB0, &unk_1DF22DD70);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v17 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v22 = v1[3];
  v23 = v10;
  v11 = v1[4];
  v20 = v1[5];
  v21 = v11;
  v12 = v1[6];
  v18 = v1[7];
  v19 = v12;
  v17 = v1[8];
  v29 = *(v1 + 72);
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF181440();
  sub_1DF22B740();
  LOBYTE(v25) = 0;
  v14 = v24;
  sub_1DF22B5B0();
  if (!v14)
  {
    v15 = v18;
    v25 = v9;
    v26 = v23;
    v27 = v22;
    v28 = v21;
    v30 = 1;
    sub_1DF180D2C(v9, v23);
    sub_1DF181494();
    sub_1DF22B560();
    sub_1DF180DA8(v25, v26);
    LOBYTE(v25) = 2;
    sub_1DF22B510();
    v25 = v15;
    v30 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE0C7A0, &qword_1DF22CB50);
    sub_1DF15FAB4(&qword_1ECE0C068);
    sub_1DF22B560();
    LOBYTE(v25) = 4;
    sub_1DF22B540();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1DF181440()
{
  result = qword_1ECE0CEB8;
  if (!qword_1ECE0CEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0CEB8);
  }

  return result;
}

unint64_t sub_1DF181494()
{
  result = qword_1ECE0CEC0;
  if (!qword_1ECE0CEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0CEC0);
  }

  return result;
}

uint64_t TaskTriggerRequest.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CEC8, &qword_1DF22DD80);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v27 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF181440();
  sub_1DF22B730();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    sub_1DF180DA8(0, 0);
  }

  else
  {
    LOBYTE(v37) = 0;
    v11 = sub_1DF22B4D0();
    LOBYTE(v33) = 1;
    sub_1DF181924();
    sub_1DF22B480();
    v30 = a2;
    v31 = v37;
    v32 = *v38;
    v12 = *&v38[16];
    sub_1DF180DA8(0, 0);
    LOBYTE(v37) = 2;
    v13 = sub_1DF22B430();
    v15 = v14;
    v29 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE0C7A0, &qword_1DF22CB50);
    LOBYTE(v33) = 3;
    sub_1DF15FAB4(&qword_1ECE0C058);
    sub_1DF22B480();
    v28 = v11;
    v16 = v37;
    v46 = 4;
    v17 = sub_1DF22B460();
    v19 = v18;
    v20 = *(v6 + 8);
    v27 = v17;
    v20(v9, v5);
    v19 &= 1u;
    v45 = v19;
    v21 = v31;
    *&v33 = v28;
    *(&v33 + 1) = v31;
    v22 = v32;
    v34 = v32;
    *&v35 = v12;
    *(&v35 + 1) = v29;
    *v36 = v15;
    *&v36[8] = v16;
    *&v36[16] = v27;
    v36[24] = v19;
    v23 = *v36;
    v24 = v30;
    v30[2] = v35;
    v24[3] = v23;
    *(v24 + 57) = *&v36[9];
    v25 = v34;
    *v24 = v33;
    v24[1] = v25;
    sub_1DF181978(&v33, &v37);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    v37 = v28;
    *v38 = v21;
    *&v38[8] = v22;
    v39 = v12;
    v40 = v29;
    v41 = v15;
    v42 = v16;
    v43 = v27;
    v44 = v19;
    return sub_1DF1819B0(&v37);
  }
}

unint64_t sub_1DF181924()
{
  result = qword_1ECE0CED0;
  if (!qword_1ECE0CED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0CED0);
  }

  return result;
}

uint64_t TaskDefinition.taskRequest.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[15];
  v3 = v1[13];
  v38 = v1[14];
  v39 = v2;
  v4 = v1[15];
  v5 = v1[17];
  v40 = v1[16];
  v6 = v40;
  v41 = v5;
  v7 = v1[11];
  v9 = v1[9];
  v34 = v1[10];
  v8 = v34;
  v35 = v7;
  v10 = v1[11];
  v11 = v1[13];
  v36 = v1[12];
  v12 = v36;
  v37 = v11;
  v13 = v1[7];
  v15 = v1[5];
  v30 = v1[6];
  v14 = v30;
  v31 = v13;
  v16 = v1[7];
  v17 = v1[9];
  v32 = v1[8];
  v18 = v32;
  v33 = v17;
  v19 = v1[3];
  v27[0] = v1[2];
  v27[1] = v19;
  v20 = v1[5];
  v22 = v1[2];
  v21 = v1[3];
  v28 = v1[4];
  v23 = v28;
  v29 = v20;
  a1[12] = v38;
  a1[13] = v4;
  v24 = v1[17];
  a1[14] = v6;
  a1[15] = v24;
  a1[8] = v8;
  a1[9] = v10;
  a1[10] = v12;
  a1[11] = v3;
  a1[4] = v14;
  a1[5] = v16;
  a1[6] = v18;
  a1[7] = v9;
  *a1 = v22;
  a1[1] = v21;
  a1[2] = v23;
  a1[3] = v15;
  return sub_1DF17A6A8(v27, &v26, &qword_1ECE0CED8, &qword_1DF22DD88);
}

__n128 TaskDefinition.taskRequest.setter(uint64_t a1)
{
  v3 = v1[15];
  v20[12] = v1[14];
  v20[13] = v3;
  v4 = v1[17];
  v20[14] = v1[16];
  v20[15] = v4;
  v5 = v1[11];
  v20[8] = v1[10];
  v20[9] = v5;
  v6 = v1[13];
  v20[10] = v1[12];
  v20[11] = v6;
  v7 = v1[7];
  v20[4] = v1[6];
  v20[5] = v7;
  v8 = v1[9];
  v20[6] = v1[8];
  v20[7] = v8;
  v9 = v1[3];
  v20[0] = v1[2];
  v20[1] = v9;
  v10 = v1[5];
  v20[2] = v1[4];
  v20[3] = v10;
  sub_1DF16184C(v20, &qword_1ECE0CED8, &qword_1DF22DD88);
  v11 = *(a1 + 208);
  v1[14] = *(a1 + 192);
  v1[15] = v11;
  v12 = *(a1 + 240);
  v1[16] = *(a1 + 224);
  v1[17] = v12;
  v13 = *(a1 + 144);
  v1[10] = *(a1 + 128);
  v1[11] = v13;
  v14 = *(a1 + 176);
  v1[12] = *(a1 + 160);
  v1[13] = v14;
  v15 = *(a1 + 80);
  v1[6] = *(a1 + 64);
  v1[7] = v15;
  v16 = *(a1 + 112);
  v1[8] = *(a1 + 96);
  v1[9] = v16;
  v17 = *(a1 + 16);
  v1[2] = *a1;
  v1[3] = v17;
  result = *(a1 + 32);
  v19 = *(a1 + 48);
  v1[4] = result;
  v1[5] = v19;
  return result;
}

uint64_t TaskDefinition.triggerRequest.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[21];
  v9 = v1[20];
  v10[0] = v2;
  v3 = v1[19];
  v8[0] = v1[18];
  v4 = v8[0];
  v8[1] = v3;
  *(v10 + 9) = *(v1 + 345);
  v5 = *(v10 + 9);
  a1[2] = v9;
  a1[3] = v2;
  *a1 = v4;
  a1[1] = v3;
  *(a1 + 57) = v5;
  return sub_1DF17A6A8(v8, &v7, &qword_1ECE0CEE0, &unk_1DF22DD90);
}

__n128 TaskDefinition.triggerRequest.setter(uint64_t a1)
{
  v3 = v1[21];
  v7[2] = v1[20];
  v8[0] = v3;
  v4 = v1[19];
  v7[0] = v1[18];
  v7[1] = v4;
  *(v8 + 9) = *(v1 + 345);
  sub_1DF16184C(v7, &qword_1ECE0CEE0, &unk_1DF22DD90);
  v5 = *(a1 + 48);
  v1[20] = *(a1 + 32);
  v1[21] = v5;
  *(v1 + 345) = *(a1 + 57);
  result = *(a1 + 16);
  v1[18] = *a1;
  v1[19] = result;
  return result;
}

uint64_t sub_1DF181D00(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CDC0, &unk_1DF22D7C0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t TaskDefinition.endDate.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for TaskDefinition(0) + 36);

  return sub_1DF181D00(a1, v3);
}

uint64_t TaskDefinition.supportedOSTypes.getter()
{
  v1 = *(v0 + *(type metadata accessor for TaskDefinition(0) + 40));
}

uint64_t TaskDefinition.supportedOSTypes.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TaskDefinition(0) + 40);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t TaskDefinition.init(name:bundleIdentifier:taskRequest:startDate:endDate:supportedOSTypes:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, __int128 *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v12 = a5[13];
  v70 = a5[12];
  v71 = v12;
  v13 = a5[15];
  v72 = a5[14];
  v73 = v13;
  v14 = a5[9];
  v66 = a5[8];
  v67 = v14;
  v15 = a5[11];
  v68 = a5[10];
  v69 = v15;
  v16 = a5[5];
  v62 = a5[4];
  v63 = v16;
  v17 = a5[7];
  v64 = a5[6];
  v65 = v17;
  v18 = a5[1];
  v58 = *a5;
  v59 = v18;
  v19 = a5[3];
  v60 = a5[2];
  v61 = v19;
  nullsub_1(&v58);
  sub_1DF1821E8(v74);
  v20 = v74[13];
  *(a9 + 224) = v74[12];
  *(a9 + 240) = v20;
  v21 = v74[15];
  *(a9 + 256) = v74[14];
  *(a9 + 272) = v21;
  v22 = v74[9];
  *(a9 + 160) = v74[8];
  *(a9 + 176) = v22;
  v23 = v74[11];
  *(a9 + 192) = v74[10];
  *(a9 + 208) = v23;
  v24 = v74[5];
  *(a9 + 96) = v74[4];
  *(a9 + 112) = v24;
  v25 = v74[7];
  *(a9 + 128) = v74[6];
  *(a9 + 144) = v25;
  v26 = v74[1];
  *(a9 + 32) = v74[0];
  *(a9 + 48) = v26;
  v27 = v74[3];
  *(a9 + 64) = v74[2];
  *(a9 + 80) = v27;
  *(a9 + 288) = 0;
  *(a9 + 296) = 0;
  *(a9 + 304) = 1;
  v28 = type metadata accessor for TaskDefinition(0);
  *(a9 + 312) = 0u;
  *(a9 + 328) = 0u;
  *(a9 + 344) = 0u;
  *(a9 + 360) = 0;
  v29 = v28[8];
  v30 = sub_1DF22A800();
  v31 = *(*(v30 - 8) + 56);
  v31(a9 + v29, 1, 1, v30);
  v32 = v28[9];
  v31(a9 + v32, 1, 1, v30);
  v33 = v28[10];
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  v34 = *(a9 + 240);
  v75[12] = *(a9 + 224);
  v75[13] = v34;
  v35 = *(a9 + 272);
  v75[14] = *(a9 + 256);
  v75[15] = v35;
  v36 = *(a9 + 176);
  v75[8] = *(a9 + 160);
  v75[9] = v36;
  v37 = *(a9 + 208);
  v75[10] = *(a9 + 192);
  v75[11] = v37;
  v38 = *(a9 + 112);
  v75[4] = *(a9 + 96);
  v75[5] = v38;
  v39 = *(a9 + 144);
  v75[6] = *(a9 + 128);
  v75[7] = v39;
  v40 = *(a9 + 48);
  v75[0] = *(a9 + 32);
  v75[1] = v40;
  v41 = *(a9 + 80);
  v75[2] = *(a9 + 64);
  v75[3] = v41;
  sub_1DF16184C(v75, &qword_1ECE0CED8, &qword_1DF22DD88);
  v42 = v71;
  *(a9 + 224) = v70;
  *(a9 + 240) = v42;
  v43 = v73;
  *(a9 + 256) = v72;
  *(a9 + 272) = v43;
  v44 = v67;
  *(a9 + 160) = v66;
  *(a9 + 176) = v44;
  v45 = v69;
  *(a9 + 192) = v68;
  *(a9 + 208) = v45;
  v46 = v63;
  *(a9 + 96) = v62;
  *(a9 + 112) = v46;
  v47 = v65;
  *(a9 + 128) = v64;
  *(a9 + 144) = v47;
  v48 = v59;
  *(a9 + 32) = v58;
  *(a9 + 48) = v48;
  v49 = v61;
  *(a9 + 64) = v60;
  *(a9 + 80) = v49;
  v50 = *(a9 + 336);
  v76[2] = *(a9 + 320);
  v77[0] = v50;
  *(v77 + 9) = *(a9 + 345);
  v51 = *(a9 + 304);
  v76[0] = *(a9 + 288);
  v76[1] = v51;
  sub_1DF16184C(v76, &qword_1ECE0CEE0, &unk_1DF22DD90);
  *(a9 + 288) = 0;
  *(a9 + 296) = 0;
  *(a9 + 304) = 1;
  *(a9 + 312) = 0u;
  *(a9 + 328) = 0u;
  *(a9 + 344) = 0u;
  *(a9 + 360) = 0;
  sub_1DF181D00(a6, a9 + v29);
  result = sub_1DF181D00(a7, a9 + v32);
  *(a9 + v33) = a8;
  return result;
}

double sub_1DF1821E8(uint64_t a1)
{
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 64) = 0;
  *(a1 + 72) = 1;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  return result;
}

uint64_t TaskDefinition.init(name:bundleIdentifier:triggerRequest:startDate:endDate:supportedOSTypes:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, __int128 *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v12 = a5[3];
  v72 = a5[2];
  v73[0] = v12;
  *(v73 + 9) = *(a5 + 57);
  v13 = a5[1];
  v70 = *a5;
  v71 = v13;
  sub_1DF1821E8(&v54);
  v14 = v67;
  *(a9 + 224) = v66;
  *(a9 + 240) = v14;
  v15 = v69;
  *(a9 + 256) = v68;
  *(a9 + 272) = v15;
  v16 = v63;
  *(a9 + 160) = v62;
  *(a9 + 176) = v16;
  v17 = v65;
  *(a9 + 192) = v64;
  *(a9 + 208) = v17;
  v18 = v59;
  *(a9 + 96) = v58;
  *(a9 + 112) = v18;
  v19 = v61;
  *(a9 + 128) = v60;
  *(a9 + 144) = v19;
  v20 = v55;
  *(a9 + 32) = v54;
  *(a9 + 48) = v20;
  v21 = v57;
  *(a9 + 64) = v56;
  *(a9 + 80) = v21;
  *(a9 + 296) = 0;
  *(a9 + 304) = 1;
  *(a9 + 288) = 0;
  v22 = type metadata accessor for TaskDefinition(0);
  *(a9 + 312) = 0u;
  *(a9 + 328) = 0u;
  *(a9 + 344) = 0u;
  *(a9 + 360) = 0;
  v23 = v22[8];
  v24 = sub_1DF22A800();
  v25 = *(*(v24 - 8) + 56);
  v25(a9 + v23, 1, 1, v24);
  v26 = v22[9];
  v25(a9 + v26, 1, 1, v24);
  v27 = v22[10];
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  v28 = *(a9 + 240);
  v74[12] = *(a9 + 224);
  v74[13] = v28;
  v29 = *(a9 + 272);
  v74[14] = *(a9 + 256);
  v74[15] = v29;
  v30 = *(a9 + 176);
  v74[8] = *(a9 + 160);
  v74[9] = v30;
  v31 = *(a9 + 208);
  v74[10] = *(a9 + 192);
  v74[11] = v31;
  v32 = *(a9 + 112);
  v74[4] = *(a9 + 96);
  v74[5] = v32;
  v33 = *(a9 + 144);
  v74[6] = *(a9 + 128);
  v74[7] = v33;
  v34 = *(a9 + 48);
  v74[0] = *(a9 + 32);
  v74[1] = v34;
  v35 = *(a9 + 80);
  v74[2] = *(a9 + 64);
  v74[3] = v35;
  sub_1DF16184C(v74, &qword_1ECE0CED8, &qword_1DF22DD88);
  v36 = v67;
  *(a9 + 224) = v66;
  *(a9 + 240) = v36;
  v37 = v69;
  *(a9 + 256) = v68;
  *(a9 + 272) = v37;
  v38 = v63;
  *(a9 + 160) = v62;
  *(a9 + 176) = v38;
  v39 = v65;
  *(a9 + 192) = v64;
  *(a9 + 208) = v39;
  v40 = v59;
  *(a9 + 96) = v58;
  *(a9 + 112) = v40;
  v41 = v61;
  *(a9 + 128) = v60;
  *(a9 + 144) = v41;
  v42 = v55;
  *(a9 + 32) = v54;
  *(a9 + 48) = v42;
  v43 = v57;
  *(a9 + 64) = v56;
  *(a9 + 80) = v43;
  v44 = *(a9 + 336);
  v75[2] = *(a9 + 320);
  v76[0] = v44;
  *(v76 + 9) = *(a9 + 345);
  v45 = *(a9 + 304);
  v75[0] = *(a9 + 288);
  v75[1] = v45;
  sub_1DF16184C(v75, &qword_1ECE0CEE0, &unk_1DF22DD90);
  v46 = v73[0];
  *(a9 + 320) = v72;
  *(a9 + 336) = v46;
  *(a9 + 345) = *(v73 + 9);
  v47 = v71;
  *(a9 + 288) = v70;
  *(a9 + 304) = v47;
  sub_1DF181D00(a6, a9 + v23);
  result = sub_1DF181D00(a7, a9 + v26);
  *(a9 + v27) = a8;
  return result;
}

uint64_t TaskDefinition.taskCategory.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 240);
  v22[12] = *(v1 + 224);
  v22[13] = v3;
  v4 = *(v1 + 272);
  v22[14] = *(v1 + 256);
  v22[15] = v4;
  v5 = *(v1 + 176);
  v22[8] = *(v1 + 160);
  v22[9] = v5;
  v6 = *(v1 + 208);
  v22[10] = *(v1 + 192);
  v22[11] = v6;
  v7 = *(v1 + 112);
  v22[4] = *(v1 + 96);
  v22[5] = v7;
  v8 = *(v1 + 144);
  v22[6] = *(v1 + 128);
  v22[7] = v8;
  v9 = *(v1 + 48);
  v22[0] = *(v1 + 32);
  v22[1] = v9;
  v10 = *(v1 + 80);
  v22[2] = *(v1 + 64);
  v22[3] = v10;
  result = sub_1DF182574(v22);
  if (result == 1 || (v12 = *(v1 + 304), v12 != 1))
  {
    v13 = *(v1 + 240);
    v21[12] = *(v1 + 224);
    v21[13] = v13;
    v14 = *(v1 + 272);
    v21[14] = *(v1 + 256);
    v21[15] = v14;
    v15 = *(v1 + 176);
    v21[8] = *(v1 + 160);
    v21[9] = v15;
    v16 = *(v1 + 208);
    v21[10] = *(v1 + 192);
    v21[11] = v16;
    v17 = *(v1 + 112);
    v21[4] = *(v1 + 96);
    v21[5] = v17;
    v18 = *(v1 + 144);
    v21[6] = *(v1 + 128);
    v21[7] = v18;
    v19 = *(v1 + 48);
    v21[0] = *(v1 + 32);
    v21[1] = v19;
    v20 = *(v1 + 80);
    v21[2] = *(v1 + 64);
    v21[3] = v20;
    result = sub_1DF182574(v21);
    if (result != 1 || *(v1 + 304) == 1)
    {
      *a1 = 0;
      return result;
    }

    LOBYTE(v12) = 2;
  }

  *a1 = v12;
  return result;
}

uint64_t sub_1DF182574(uint64_t a1)
{
  v1 = *(a1 + 72);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

unint64_t sub_1DF182598()
{
  v1 = *v0;
  v2 = 1701667182;
  v3 = 0x65746144646E65;
  if (v1 != 5)
  {
    v3 = 0xD000000000000010;
  }

  v4 = 0x5272656767697274;
  if (v1 != 3)
  {
    v4 = 0x7461447472617473;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000010;
  if (v1 != 1)
  {
    v5 = 0x757165526B736174;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1DF18268C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DF18837C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DF1826B4(uint64_t a1)
{
  v2 = sub_1DF182C70();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF1826F0(uint64_t a1)
{
  v2 = sub_1DF182C70();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TaskDefinition.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CEE8, &unk_1DF22DDA0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v38[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF182C70();
  sub_1DF22B740();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v68[0]) = 0;
  sub_1DF22B580();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    v83 = 1;
    sub_1DF22B580();
    v15 = *(v3 + 15);
    v16 = *(v3 + 13);
    v79 = *(v3 + 14);
    v80 = v15;
    v17 = *(v3 + 15);
    v18 = *(v3 + 17);
    v81 = *(v3 + 16);
    v82 = v18;
    v19 = *(v3 + 11);
    v20 = *(v3 + 9);
    v75 = *(v3 + 10);
    v76 = v19;
    v21 = *(v3 + 11);
    v22 = *(v3 + 13);
    v77 = *(v3 + 12);
    v78 = v22;
    v23 = *(v3 + 7);
    v24 = *(v3 + 5);
    v71 = *(v3 + 6);
    v72 = v23;
    v25 = *(v3 + 7);
    v26 = *(v3 + 9);
    v73 = *(v3 + 8);
    v74 = v26;
    v27 = *(v3 + 3);
    v68[0] = *(v3 + 2);
    v68[1] = v27;
    v28 = *(v3 + 5);
    v30 = *(v3 + 2);
    v29 = *(v3 + 3);
    v69 = *(v3 + 4);
    v70 = v28;
    v64 = v79;
    v65 = v17;
    v31 = *(v3 + 17);
    v66 = v81;
    v67 = v31;
    v60 = v75;
    v61 = v21;
    v62 = v77;
    v63 = v16;
    v56 = v71;
    v57 = v25;
    v58 = v73;
    v59 = v20;
    v52 = v30;
    v53 = v29;
    v54 = v69;
    v55 = v24;
    v51 = 2;
    sub_1DF17A6A8(v68, v50, &qword_1ECE0CED8, &qword_1DF22DD88);
    sub_1DF182CC4();
    sub_1DF22B560();
    v50[12] = v64;
    v50[13] = v65;
    v50[14] = v66;
    v50[15] = v67;
    v50[8] = v60;
    v50[9] = v61;
    v50[10] = v62;
    v50[11] = v63;
    v50[4] = v56;
    v50[5] = v57;
    v50[6] = v58;
    v50[7] = v59;
    v50[0] = v52;
    v50[1] = v53;
    v50[2] = v54;
    v50[3] = v55;
    sub_1DF16184C(v50, &qword_1ECE0CED8, &qword_1DF22DD88);
    v32 = *(v3 + 19);
    v33 = *(v3 + 21);
    v48 = *(v3 + 20);
    v49[0] = v33;
    *(v49 + 9) = *(v3 + 345);
    v34 = *(v3 + 19);
    v47[0] = *(v3 + 18);
    v47[1] = v34;
    v44 = v32;
    v45 = v48;
    v46[0] = *(v3 + 21);
    *(v46 + 9) = *(v3 + 345);
    v43 = v47[0];
    v42 = 3;
    sub_1DF17A6A8(v47, v40, &qword_1ECE0CEE0, &unk_1DF22DD90);
    sub_1DF182D18();
    sub_1DF22B560();
    v40[2] = v45;
    *v41 = v46[0];
    *&v41[9] = *(v46 + 9);
    v40[0] = v43;
    v40[1] = v44;
    sub_1DF16184C(v40, &qword_1ECE0CEE0, &unk_1DF22DD90);
    v84 = type metadata accessor for TaskDefinition(0);
    v35 = v84[8];
    LOBYTE(v39) = 4;
    sub_1DF22A800();
    sub_1DF1836B8(&qword_1ECE0C728, MEMORY[0x1E6969530]);
    sub_1DF22B560();
    v36 = v84[9];
    LOBYTE(v39) = 5;
    sub_1DF22B560();
    v39 = *(v3 + v84[10]);
    v38[7] = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CEF0, &qword_1DF230B50);
    sub_1DF183700(&qword_1ECE0C0C0, sub_1DF182D6C);
    sub_1DF22B560();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1DF182C70()
{
  result = qword_1ED8E6BD8;
  if (!qword_1ED8E6BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8E6BD8);
  }

  return result;
}

unint64_t sub_1DF182CC4()
{
  result = qword_1ECE0C6B8;
  if (!qword_1ECE0C6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0C6B8);
  }

  return result;
}

unint64_t sub_1DF182D18()
{
  result = qword_1ECE0C398;
  if (!qword_1ECE0C398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0C398);
  }

  return result;
}

unint64_t sub_1DF182D6C()
{
  result = qword_1ECE0C6A8;
  if (!qword_1ECE0C6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0C6A8);
  }

  return result;
}

uint64_t TaskDefinition.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v77 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CDC0, &unk_1DF22D7C0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v78 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v80 = &v76 - v7;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CEF8, &qword_1DF22DDB0);
  v79 = *(v81 - 8);
  v8 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v81);
  v10 = &v76 - v9;
  v11 = type metadata accessor for TaskDefinition(0);
  v12 = *(*(v11 - 1) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DF1821E8(v136);
  v15 = v136[13];
  *(v14 + 14) = v136[12];
  *(v14 + 15) = v15;
  v16 = v136[15];
  *(v14 + 16) = v136[14];
  *(v14 + 17) = v16;
  v17 = v136[9];
  *(v14 + 10) = v136[8];
  *(v14 + 11) = v17;
  v18 = v136[11];
  *(v14 + 12) = v136[10];
  *(v14 + 13) = v18;
  v19 = v136[5];
  *(v14 + 6) = v136[4];
  *(v14 + 7) = v19;
  v20 = v136[7];
  *(v14 + 8) = v136[6];
  *(v14 + 9) = v20;
  v21 = v136[1];
  *(v14 + 2) = v136[0];
  *(v14 + 3) = v21;
  v22 = v136[3];
  *(v14 + 4) = v136[2];
  *(v14 + 5) = v22;
  v85 = v14 + 288;
  *(v14 + 36) = 0;
  *(v14 + 37) = 0;
  *(v14 + 38) = 1;
  *(v14 + 312) = 0u;
  *(v14 + 328) = 0u;
  *(v14 + 344) = 0u;
  v14[360] = 0;
  v23 = v11[8];
  v24 = sub_1DF22A800();
  v25 = *(*(v24 - 8) + 56);
  v82 = v23;
  v25(&v14[v23], 1, 1, v24);
  v83 = v11[9];
  v25(&v14[v83], 1, 1, v24);
  v26 = a1[3];
  v27 = a1[4];
  v84 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v26);
  sub_1DF182C70();
  v28 = v137;
  sub_1DF22B730();
  if (v28)
  {
    v137 = v28;
    v29 = v82;
    __swift_destroy_boxed_opaque_existential_1Tm(v84);
    v30 = v83;
LABEL_4:
    v31 = *(v14 + 15);
    v132 = *(v14 + 14);
    v133 = v31;
    v32 = *(v14 + 17);
    v134 = *(v14 + 16);
    v135 = v32;
    v33 = *(v14 + 11);
    v128 = *(v14 + 10);
    v129 = v33;
    v34 = *(v14 + 13);
    v130 = *(v14 + 12);
    v131 = v34;
    v35 = *(v14 + 7);
    v124 = *(v14 + 6);
    v125 = v35;
    v36 = *(v14 + 9);
    v126 = *(v14 + 8);
    v127 = v36;
    v37 = *(v14 + 3);
    v120 = *(v14 + 2);
    v121 = v37;
    v38 = *(v14 + 5);
    v122 = *(v14 + 4);
    v123 = v38;
    sub_1DF16184C(&v120, &qword_1ECE0CED8, &qword_1DF22DD88);
    v39 = v85[2];
    v40 = v85[3];
    v41 = *v85;
    v116 = v85[1];
    v117 = v39;
    v118[0] = v40;
    *(v118 + 9) = *(v85 + 57);
    v115 = v41;
    sub_1DF16184C(&v115, &qword_1ECE0CEE0, &unk_1DF22DD90);
    sub_1DF16184C(&v14[v29], &qword_1ECE0CDC0, &unk_1DF22D7C0);
    return sub_1DF16184C(&v14[v30], &qword_1ECE0CDC0, &unk_1DF22D7C0);
  }

  LOBYTE(v120) = 0;
  *v14 = sub_1DF22B4A0();
  *(v14 + 1) = v43;
  LOBYTE(v120) = 1;
  v76 = v10;
  v44 = sub_1DF22B4A0();
  v29 = v82;
  *(v14 + 2) = v44;
  *(v14 + 3) = v45;
  v119 = 2;
  sub_1DF183610();
  sub_1DF22B480();
  v137 = 0;
  v111 = v132;
  v112 = v133;
  v113 = v134;
  v114 = v135;
  v107 = v128;
  v108 = v129;
  v109 = v130;
  v110 = v131;
  v103 = v124;
  v104 = v125;
  v105 = v126;
  v106 = v127;
  v99 = v120;
  v100 = v121;
  v101 = v122;
  v102 = v123;
  v46 = *(v14 + 15);
  v118[9] = *(v14 + 14);
  v118[10] = v46;
  v47 = *(v14 + 17);
  v118[11] = *(v14 + 16);
  v118[12] = v47;
  v48 = *(v14 + 11);
  v118[5] = *(v14 + 10);
  v118[6] = v48;
  v49 = *(v14 + 13);
  v118[7] = *(v14 + 12);
  v118[8] = v49;
  v50 = *(v14 + 7);
  v118[1] = *(v14 + 6);
  v118[2] = v50;
  v51 = *(v14 + 9);
  v118[3] = *(v14 + 8);
  v118[4] = v51;
  v52 = *(v14 + 3);
  v115 = *(v14 + 2);
  v116 = v52;
  v53 = *(v14 + 5);
  v117 = *(v14 + 4);
  v118[0] = v53;
  sub_1DF16184C(&v115, &qword_1ECE0CED8, &qword_1DF22DD88);
  v54 = v112;
  *(v14 + 14) = v111;
  *(v14 + 15) = v54;
  v55 = v114;
  *(v14 + 16) = v113;
  *(v14 + 17) = v55;
  v56 = v108;
  *(v14 + 10) = v107;
  *(v14 + 11) = v56;
  v57 = v110;
  *(v14 + 12) = v109;
  *(v14 + 13) = v57;
  v58 = v104;
  *(v14 + 6) = v103;
  *(v14 + 7) = v58;
  v59 = v106;
  *(v14 + 8) = v105;
  *(v14 + 9) = v59;
  v60 = v100;
  *(v14 + 2) = v99;
  *(v14 + 3) = v60;
  v61 = v102;
  *(v14 + 4) = v101;
  *(v14 + 5) = v61;
  v94 = 3;
  sub_1DF183664();
  v62 = v81;
  v63 = v137;
  sub_1DF22B480();
  v137 = v63;
  if (v63)
  {
    (*(v79 + 8))(v76, v62);
LABEL_10:
    __swift_destroy_boxed_opaque_existential_1Tm(v84);
    v30 = v83;
LABEL_11:
    v72 = *(v14 + 1);

    v73 = *(v14 + 3);

    goto LABEL_4;
  }

  v90 = v97;
  v91[0] = v98[0];
  *(v91 + 9) = *(v98 + 9);
  v88 = v95;
  v89 = v96;
  v64 = v85;
  v65 = v85[2];
  *v93 = v85[3];
  *&v93[9] = *(v85 + 57);
  v66 = *v85;
  v92[1] = v85[1];
  v92[2] = v65;
  v92[0] = v66;
  sub_1DF16184C(v92, &qword_1ECE0CEE0, &unk_1DF22DD90);
  v67 = v91[0];
  v64[2] = v90;
  v64[3] = v67;
  *(v64 + 57) = *(v91 + 9);
  v68 = v89;
  *v64 = v88;
  v64[1] = v68;
  LOBYTE(v87) = 4;
  sub_1DF1836B8(&qword_1ED8E6BE0, MEMORY[0x1E6969530]);
  v69 = v137;
  sub_1DF22B480();
  v137 = v69;
  v70 = v79;
  if (v69 || (sub_1DF181D00(v80, &v14[v29]), LOBYTE(v87) = 5, v71 = v137, sub_1DF22B480(), (v137 = v71) != 0))
  {
    (*(v70 + 8))(v76, v81);
    goto LABEL_10;
  }

  v30 = v83;
  sub_1DF181D00(v78, &v14[v83]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CEF0, &qword_1DF230B50);
  v86 = 6;
  sub_1DF183700(&qword_1ECE0C0B8, sub_1DF183778);
  v74 = v137;
  sub_1DF22B480();
  v137 = v74;
  if (v74)
  {
    (*(v70 + 8))(v76, v81);
    __swift_destroy_boxed_opaque_existential_1Tm(v84);
    goto LABEL_11;
  }

  v75 = v11[10];
  (*(v70 + 8))(v76, v81);
  *&v14[v75] = v87;
  sub_1DF184818(v14, v77, type metadata accessor for TaskDefinition);
  __swift_destroy_boxed_opaque_existential_1Tm(v84);
  return sub_1DF184880(v14, type metadata accessor for TaskDefinition);
}

unint64_t sub_1DF183610()
{
  result = qword_1ECE0C6B0;
  if (!qword_1ECE0C6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0C6B0);
  }

  return result;
}

unint64_t sub_1DF183664()
{
  result = qword_1ECE0C390;
  if (!qword_1ECE0C390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0C390);
  }

  return result;
}

uint64_t sub_1DF1836B8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DF183700(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE0CEF0, &qword_1DF230B50);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DF183778()
{
  result = qword_1ECE0C6A0;
  if (!qword_1ECE0C6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0C6A0);
  }

  return result;
}

uint64_t MLHostTask.taskFolder.getter()
{
  v1 = (v0 + *(type metadata accessor for MLHostTask(0) + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t MLHostTask.status.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for MLHostTask(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t MLHostTask.status.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for MLHostTask(0);
  *(v1 + *(result + 28)) = v2;
  return result;
}

uint64_t sub_1DF1839E0(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = v2 + *(a2(0) + 32);

  return sub_1DF181D00(a1, v4);
}

uint64_t MLHostTask.init(taskDefinition:taskType:taskFolder:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  v9 = *a2;
  v10 = type metadata accessor for MLHostTask(0);
  a5[v10[7]] = 6;
  v11 = v10[8];
  v12 = sub_1DF22A800();
  (*(*(v12 - 8) + 56))(&a5[v11], 1, 1, v12);
  *a5 = v9;
  result = sub_1DF186044(a1, &a5[v10[5]], type metadata accessor for TaskDefinition);
  v14 = &a5[v10[6]];
  *v14 = a3;
  v14[1] = a4;
  return result;
}

uint64_t MLHostTask.name.getter()
{
  v1 = (v0 + *(type metadata accessor for MLHostTask(0) + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t MLHostTask.bundleIdentifier.getter()
{
  v1 = v0 + *(type metadata accessor for MLHostTask(0) + 20);
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);

  return v2;
}

uint64_t MLHostTask.taskCategory.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MLHostTask(0) + 20);
  v4 = *(v3 + 240);
  v23[12] = *(v3 + 224);
  v23[13] = v4;
  v5 = *(v3 + 272);
  v23[14] = *(v3 + 256);
  v23[15] = v5;
  v6 = *(v3 + 176);
  v23[8] = *(v3 + 160);
  v23[9] = v6;
  v7 = *(v3 + 208);
  v23[10] = *(v3 + 192);
  v23[11] = v7;
  v8 = *(v3 + 112);
  v23[4] = *(v3 + 96);
  v23[5] = v8;
  v9 = *(v3 + 144);
  v23[6] = *(v3 + 128);
  v23[7] = v9;
  v10 = *(v3 + 80);
  v23[2] = *(v3 + 64);
  v23[3] = v10;
  v11 = *(v3 + 48);
  v23[0] = *(v3 + 32);
  v23[1] = v11;
  result = sub_1DF182574(v23);
  if (result == 1 || (v13 = *(v3 + 304), v13 != 1))
  {
    v14 = *(v3 + 240);
    v22[12] = *(v3 + 224);
    v22[13] = v14;
    v15 = *(v3 + 272);
    v22[14] = *(v3 + 256);
    v22[15] = v15;
    v16 = *(v3 + 176);
    v22[8] = *(v3 + 160);
    v22[9] = v16;
    v17 = *(v3 + 208);
    v22[10] = *(v3 + 192);
    v22[11] = v17;
    v18 = *(v3 + 112);
    v22[4] = *(v3 + 96);
    v22[5] = v18;
    v19 = *(v3 + 144);
    v22[6] = *(v3 + 128);
    v22[7] = v19;
    v20 = *(v3 + 48);
    v22[0] = *(v3 + 32);
    v22[1] = v20;
    v21 = *(v3 + 80);
    v22[2] = *(v3 + 64);
    v22[3] = v21;
    result = sub_1DF182574(v22);
    if (result != 1 || *(v3 + 304) == 1)
    {
      *a1 = 0;
      return result;
    }

    LOBYTE(v13) = 2;
  }

  *a1 = v13;
  return result;
}

uint64_t sub_1DF183CD0()
{
  v1 = *v0;
  v2 = 0x657079546B736174;
  v3 = 0x646C6F466B736174;
  v4 = 0x737574617473;
  if (v1 != 3)
  {
    v4 = 0xD000000000000011;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x696665446B736174;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1DF183D7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DF1885E8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DF183DA4(uint64_t a1)
{
  v2 = sub_1DF1840D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF183DE0(uint64_t a1)
{
  v2 = sub_1DF1840D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MLHostTask.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CF00, &qword_1DF22DDB8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF1840D8();
  sub_1DF22B740();
  v18[15] = *v3;
  v18[14] = 0;
  sub_1DF18412C();
  sub_1DF22B5C0();
  if (!v2)
  {
    v11 = type metadata accessor for MLHostTask(0);
    v12 = v11[5];
    v18[13] = 1;
    type metadata accessor for TaskDefinition(0);
    sub_1DF1836B8(&qword_1ECE0C5C0, type metadata accessor for TaskDefinition);
    sub_1DF22B5C0();
    v13 = &v3[v11[6]];
    v14 = *v13;
    v15 = v13[1];
    v18[12] = 2;
    sub_1DF22B510();
    v18[11] = v3[v11[7]];
    v18[10] = 3;
    sub_1DF184180();
    sub_1DF22B5C0();
    v16 = v11[8];
    v18[9] = 4;
    sub_1DF22A800();
    sub_1DF1836B8(&qword_1ECE0C728, MEMORY[0x1E6969530]);
    sub_1DF22B560();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1DF1840D8()
{
  result = qword_1ECE0C710;
  if (!qword_1ECE0C710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0C710);
  }

  return result;
}

unint64_t sub_1DF18412C()
{
  result = qword_1ECE0C0F0;
  if (!qword_1ECE0C0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0C0F0);
  }

  return result;
}

unint64_t sub_1DF184180()
{
  result = qword_1ECE0C6F0;
  if (!qword_1ECE0C6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0C6F0);
  }

  return result;
}

uint64_t MLHostTask.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CDC0, &unk_1DF22D7C0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v39 = v34 - v5;
  v38 = type metadata accessor for TaskDefinition(0);
  v6 = *(*(v38 - 8) + 64);
  MEMORY[0x1EEE9AC00](v38);
  v8 = v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CF08, &qword_1DF22DDC0);
  v37 = *(v40 - 8);
  v9 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v11 = v34 - v10;
  v12 = type metadata accessor for MLHostTask(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v14 + 28);
  v16[v17] = 6;
  v18 = *(v14 + 32);
  v19 = sub_1DF22A800();
  v20 = *(*(v19 - 8) + 56);
  v43 = v18;
  v44 = v16;
  v20(&v16[v18], 1, 1, v19);
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF1840D8();
  v41 = v11;
  v22 = v42;
  sub_1DF22B730();
  if (v22)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    return sub_1DF16184C(&v44[v43], &qword_1ECE0CDC0, &unk_1DF22D7C0);
  }

  else
  {
    v34[1] = v19;
    v35 = v17;
    v23 = v37;
    v42 = v12;
    v24 = v39;
    v50 = 0;
    sub_1DF184770();
    sub_1DF22B4E0();
    v25 = v44;
    *v44 = v51;
    v49 = 1;
    sub_1DF1836B8(&qword_1ED8E6BC0, type metadata accessor for TaskDefinition);
    sub_1DF22B4E0();
    v26 = v8;
    v27 = v42;
    sub_1DF186044(v26, v25 + *(v42 + 20), type metadata accessor for TaskDefinition);
    v48 = 2;
    v28 = sub_1DF22B430();
    v29 = (v25 + *(v27 + 24));
    *v29 = v28;
    v29[1] = v30;
    v46 = 3;
    sub_1DF1847C4();
    sub_1DF22B4E0();
    v31 = a1;
    *(v25 + v35) = v47;
    v45 = 4;
    sub_1DF1836B8(&qword_1ED8E6BE0, MEMORY[0x1E6969530]);
    v32 = v40;
    sub_1DF22B480();
    (*(v23 + 8))(v41, v32);
    sub_1DF181D00(v24, v25 + v43);
    sub_1DF184818(v25, v36, type metadata accessor for MLHostTask);
    __swift_destroy_boxed_opaque_existential_1Tm(v31);
    return sub_1DF184880(v25, type metadata accessor for MLHostTask);
  }
}

unint64_t sub_1DF184770()
{
  result = qword_1ECE0CF10;
  if (!qword_1ECE0CF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0CF10);
  }

  return result;
}

unint64_t sub_1DF1847C4()
{
  result = qword_1ECE0CF18;
  if (!qword_1ECE0CF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0CF18);
  }

  return result;
}

uint64_t sub_1DF184818(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DF184880(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t MLHostTask.isBackgroundTask.getter()
{
  v1 = v0 + *(type metadata accessor for MLHostTask(0) + 20);
  v2 = *(v1 + 240);
  v21[12] = *(v1 + 224);
  v21[13] = v2;
  v3 = *(v1 + 272);
  v21[14] = *(v1 + 256);
  v21[15] = v3;
  v4 = *(v1 + 176);
  v21[8] = *(v1 + 160);
  v21[9] = v4;
  v5 = *(v1 + 208);
  v21[10] = *(v1 + 192);
  v21[11] = v5;
  v6 = *(v1 + 112);
  v21[4] = *(v1 + 96);
  v21[5] = v6;
  v7 = *(v1 + 144);
  v21[6] = *(v1 + 128);
  v21[7] = v7;
  v8 = *(v1 + 80);
  v21[2] = *(v1 + 64);
  v21[3] = v8;
  v9 = *(v1 + 48);
  v21[0] = *(v1 + 32);
  v21[1] = v9;
  if (sub_1DF182574(v21) == 1 || *(v1 + 304) != 1)
  {
    v11 = *(v1 + 240);
    v20[12] = *(v1 + 224);
    v20[13] = v11;
    v12 = *(v1 + 272);
    v20[14] = *(v1 + 256);
    v20[15] = v12;
    v13 = *(v1 + 176);
    v20[8] = *(v1 + 160);
    v20[9] = v13;
    v14 = *(v1 + 208);
    v20[10] = *(v1 + 192);
    v20[11] = v14;
    v15 = *(v1 + 112);
    v20[4] = *(v1 + 96);
    v20[5] = v15;
    v16 = *(v1 + 144);
    v20[6] = *(v1 + 128);
    v20[7] = v16;
    v17 = *(v1 + 48);
    v20[0] = *(v1 + 32);
    v20[1] = v17;
    v18 = *(v1 + 80);
    v20[2] = *(v1 + 64);
    v20[3] = v18;
    if (sub_1DF182574(v20) == 1)
    {
      *(v1 + 304);
    }

    v10 = sub_1DF22B620();
  }

  else
  {
    v10 = 1;
  }

  return v10 & 1;
}

uint64_t MLHostTask.isTriggerTask.getter()
{
  v1 = v0 + *(type metadata accessor for MLHostTask(0) + 20);
  v2 = *(v1 + 240);
  v21[12] = *(v1 + 224);
  v21[13] = v2;
  v3 = *(v1 + 272);
  v21[14] = *(v1 + 256);
  v21[15] = v3;
  v4 = *(v1 + 176);
  v21[8] = *(v1 + 160);
  v21[9] = v4;
  v5 = *(v1 + 208);
  v21[10] = *(v1 + 192);
  v21[11] = v5;
  v6 = *(v1 + 112);
  v21[4] = *(v1 + 96);
  v21[5] = v6;
  v7 = *(v1 + 144);
  v21[6] = *(v1 + 128);
  v21[7] = v7;
  v8 = *(v1 + 80);
  v21[2] = *(v1 + 64);
  v21[3] = v8;
  v9 = *(v1 + 48);
  v21[0] = *(v1 + 32);
  v21[1] = v9;
  if (sub_1DF182574(v21) != 1 && *(v1 + 304) == 1)
  {
    goto LABEL_5;
  }

  v10 = *(v1 + 240);
  v20[12] = *(v1 + 224);
  v20[13] = v10;
  v11 = *(v1 + 272);
  v20[14] = *(v1 + 256);
  v20[15] = v11;
  v12 = *(v1 + 176);
  v20[8] = *(v1 + 160);
  v20[9] = v12;
  v13 = *(v1 + 208);
  v20[10] = *(v1 + 192);
  v20[11] = v13;
  v14 = *(v1 + 112);
  v20[4] = *(v1 + 96);
  v20[5] = v14;
  v15 = *(v1 + 144);
  v20[6] = *(v1 + 128);
  v20[7] = v15;
  v16 = *(v1 + 48);
  v20[0] = *(v1 + 32);
  v20[1] = v16;
  v17 = *(v1 + 80);
  v20[2] = *(v1 + 64);
  v20[3] = v17;
  if (sub_1DF182574(v20) != 1)
  {
    goto LABEL_5;
  }

  if (*(v1 + 304) != 1)
  {
    v18 = 1;
  }

  else
  {
LABEL_5:
    v18 = sub_1DF22B620();
  }

  return v18 & 1;
}

unint64_t MLHostTask.description.getter()
{
  v1 = 0xEB00000000646574;
  v2 = 0xD000000000000014;
  sub_1DF22B300();

  v3 = type metadata accessor for MLHostTask(0);
  v4 = (v0 + *(v3 + 20));
  MEMORY[0x1E12CF820](*v4, v4[1]);
  MEMORY[0x1E12CF820](0xD000000000000014, 0x80000001DF23D840);
  MEMORY[0x1E12CF820](v4[2], v4[3]);
  MEMORY[0x1E12CF820](0x737574617473202CLL, 0xEA0000000000203ALL);
  v5 = *(v0 + *(v3 + 28));
  if (v5 <= 4)
  {
    if (*(v0 + *(v3 + 28)) <= 1u)
    {
      if (*(v0 + *(v3 + 28)))
      {
        v1 = 0xEC00000064657669;
        v2 = 0x656365526B736154;
      }

      else
      {
        v2 = 0x616572436B736154;
      }
    }

    else if (v5 == 2)
    {
      v1 = 0x80000001DF23CFE0;
      v2 = 0xD00000000000001ALL;
    }

    else
    {
      if (v5 == 3)
      {
        v6 = "TaskFailedToRegister";
      }

      else
      {
        v6 = "TaskParametersStored";
      }

      v1 = (v6 - 32) | 0x8000000000000000;
    }
  }

  else if (*(v0 + *(v3 + 28)) > 7u)
  {
    if (v5 == 8)
    {
      v1 = 0xE800000000000000;
      v2 = 0x6465727265666544;
    }

    else if (v5 == 9)
    {
      v1 = 0xE900000000000064;
      v2 = 0x6574656C706D6F43;
    }

    else
    {
      v1 = 0xE600000000000000;
      v2 = 0x64656C696146;
    }
  }

  else if (v5 == 5)
  {
    v1 = 0x80000001DF23D040;
    v2 = 0xD00000000000001BLL;
  }

  else if (v5 == 6)
  {
    v2 = 0x7261745320746F4ELL;
  }

  else
  {
    v1 = 0xE700000000000000;
    v2 = 0x676E696E6E7552;
  }

  MEMORY[0x1E12CF820](v2, v1);

  MEMORY[0x1E12CF820](41, 0xE100000000000000);
  return 0xD000000000000011;
}

uint64_t PushMetadata.topic.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t PushMetadata.channelID.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t PushMetadata.pushType.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t PushMetadata.pushType.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t PushMetadata.pushPriority.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t PushMetadata.creationDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PushMetadata(0) + 32);
  v4 = sub_1DF22A800();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PushMetadata.init(topic:channelID:pushType:pushPriority:creationDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10)
{
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  *(a9 + 4) = a5;
  *(a9 + 5) = a6;
  *(a9 + 6) = a7;
  *(a9 + 7) = a8;
  v11 = *(type metadata accessor for PushMetadata(0) + 32);
  v12 = sub_1DF22A800();
  v13 = *(*(v12 - 8) + 32);

  return v13(&a9[v11], a10, v12);
}

uint64_t sub_1DF18509C()
{
  v1 = *v0;
  v2 = 0x6369706F74;
  v3 = 0x6570795468737570;
  v4 = 0x6F69725068737570;
  if (v1 != 3)
  {
    v4 = 0x6E6F697461657263;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x496C656E6E616863;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1DF185148@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DF1887AC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DF185170(uint64_t a1)
{
  v2 = sub_1DF185444();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF1851AC(uint64_t a1)
{
  v2 = sub_1DF185444();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PushMetadata.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CF20, &qword_1DF22DDC8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF185444();
  sub_1DF22B740();
  v11 = *v3;
  v12 = v3[1];
  v21[15] = 0;
  sub_1DF22B580();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    v21[14] = 1;
    sub_1DF22B580();
    v15 = v3[4];
    v16 = v3[5];
    v21[13] = 2;
    sub_1DF22B580();
    v17 = v3[6];
    v18 = v3[7];
    v21[12] = 3;
    sub_1DF22B580();
    v19 = *(type metadata accessor for PushMetadata(0) + 32);
    v21[11] = 4;
    sub_1DF22A800();
    sub_1DF1836B8(&qword_1ECE0C728, MEMORY[0x1E6969530]);
    sub_1DF22B5C0();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1DF185444()
{
  result = qword_1ECE0CF28;
  if (!qword_1ECE0CF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0CF28);
  }

  return result;
}

uint64_t PushMetadata.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = sub_1DF22A800();
  v28 = *(v3 - 8);
  v4 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CF30, &qword_1DF22DDD0);
  v30 = *(v7 - 8);
  v31 = v7;
  v8 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v27 - v9;
  v11 = type metadata accessor for PushMetadata(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF185444();
  v32 = v10;
  v16 = v33;
  sub_1DF22B730();
  if (v16)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v17 = a1;
  v18 = v30;
  v19 = v31;
  v33 = v3;
  v38 = 0;
  v20 = v14;
  *v14 = sub_1DF22B4A0();
  v14[1] = v21;
  v27[1] = v21;
  v37 = 1;
  v14[2] = sub_1DF22B4A0();
  v14[3] = v22;
  v36 = 2;
  v27[0] = 0;
  v14[4] = sub_1DF22B4A0();
  v14[5] = v23;
  v35 = 3;
  v14[6] = sub_1DF22B4A0();
  v14[7] = v24;
  v34 = 4;
  sub_1DF1836B8(&qword_1ED8E6BE0, MEMORY[0x1E6969530]);
  v25 = v33;
  sub_1DF22B4E0();
  (*(v18 + 8))(v32, v19);
  (*(v28 + 32))(v20 + *(v11 + 32), v6, v25);
  sub_1DF184818(v20, v29, type metadata accessor for PushMetadata);
  __swift_destroy_boxed_opaque_existential_1Tm(v17);
  return sub_1DF184880(v20, type metadata accessor for PushMetadata);
}

uint64_t PullMetadata.creationDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1DF22A800();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t PullMetadata.init(creationDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1DF22A800();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_1DF185A14()
{
  sub_1DF22B6C0();
  MEMORY[0x1E12D01A0](0);
  return sub_1DF22B6F0();
}

uint64_t sub_1DF185A58()
{
  sub_1DF22B6C0();
  MEMORY[0x1E12D01A0](0);
  return sub_1DF22B6F0();
}

uint64_t sub_1DF185AB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E6F697461657263 && a2 == 0xEC00000065746144)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DF22B620();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DF185B44(uint64_t a1)
{
  v2 = sub_1DF185D34();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF185B80(uint64_t a1)
{
  v2 = sub_1DF185D34();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PullMetadata.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CF38, &qword_1DF22DDD8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF185D34();
  sub_1DF22B740();
  sub_1DF22A800();
  sub_1DF1836B8(&qword_1ECE0C728, MEMORY[0x1E6969530]);
  sub_1DF22B5C0();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_1DF185D34()
{
  result = qword_1ECE0CF40;
  if (!qword_1ECE0CF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0CF40);
  }

  return result;
}

uint64_t PullMetadata.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = sub_1DF22A800();
  v20 = *(v4 - 8);
  v5 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v23 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CF48, &unk_1DF22DDE0);
  v21 = *(v7 - 8);
  v8 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - v9;
  v11 = type metadata accessor for PullMetadata(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF185D34();
  sub_1DF22B730();
  if (!v2)
  {
    v16 = v20;
    v17 = v22;
    sub_1DF1836B8(&qword_1ED8E6BE0, MEMORY[0x1E6969530]);
    sub_1DF22B4E0();
    (*(v21 + 8))(v10, v7);
    (*(v16 + 32))(v14, v23, v4);
    sub_1DF186044(v14, v17, type metadata accessor for PullMetadata);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_1DF186044(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DF1860C4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CF38, &qword_1DF22DDD8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF185D34();
  sub_1DF22B740();
  sub_1DF22A800();
  sub_1DF1836B8(&qword_1ECE0C728, MEMORY[0x1E6969530]);
  sub_1DF22B5C0();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1DF1862D4(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TaskMetadata.init(pushMetadata:pullMetadata:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1DF17A710(a1, a3, &qword_1ECE0CF50, &unk_1DF23A480);
  v5 = type metadata accessor for TaskMetadata(0);
  return sub_1DF17A710(a2, a3 + *(v5 + 20), &unk_1ECE0EF10, &qword_1DF22DDF0);
}

uint64_t sub_1DF186370()
{
  if (*v0)
  {
    return 0x6174654D6C6C7570;
  }

  else
  {
    return 0x6174654D68737570;
  }
}

uint64_t sub_1DF1863AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6174654D68737570 && a2 == 0xEC00000061746164;
  if (v6 || (sub_1DF22B620() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6174654D6C6C7570 && a2 == 0xEC00000061746164)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DF22B620();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1DF18648C(uint64_t a1)
{
  v2 = sub_1DF186704();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF1864C8(uint64_t a1)
{
  v2 = sub_1DF186704();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TaskMetadata.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CF58, &qword_1DF22DDF8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11[-v6];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF186704();
  sub_1DF22B740();
  v11[15] = 0;
  type metadata accessor for PushMetadata(0);
  sub_1DF1836B8(&qword_1ECE0CF68, type metadata accessor for PushMetadata);
  sub_1DF22B560();
  if (!v1)
  {
    v9 = *(type metadata accessor for TaskMetadata(0) + 20);
    v11[14] = 1;
    type metadata accessor for PullMetadata(0);
    sub_1DF1836B8(&qword_1ECE0CF70, type metadata accessor for PullMetadata);
    sub_1DF22B560();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1DF186704()
{
  result = qword_1ECE0CF60;
  if (!qword_1ECE0CF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0CF60);
  }

  return result;
}

uint64_t TaskMetadata.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE0EF10, &qword_1DF22DDF0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v24 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CF50, &unk_1DF23A480);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v28 = &v24 - v10;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CF78, &qword_1DF22DE00);
  v27 = *(v29 - 8);
  v11 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v13 = &v24 - v12;
  v14 = type metadata accessor for TaskMetadata(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF186704();
  sub_1DF22B730();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v25 = v14;
  v19 = v27;
  v20 = v17;
  type metadata accessor for PushMetadata(0);
  v31 = 0;
  sub_1DF1836B8(&qword_1ECE0CF80, type metadata accessor for PushMetadata);
  v21 = v28;
  v22 = v29;
  sub_1DF22B480();
  sub_1DF17A710(v21, v20, &qword_1ECE0CF50, &unk_1DF23A480);
  type metadata accessor for PullMetadata(0);
  v30 = 1;
  sub_1DF1836B8(&qword_1ECE0CF88, type metadata accessor for PullMetadata);
  sub_1DF22B480();
  (*(v19 + 8))(v13, v22);
  sub_1DF17A710(v7, v20 + *(v25 + 20), &unk_1ECE0EF10, &qword_1DF22DDF0);
  sub_1DF184818(v20, v26, type metadata accessor for TaskMetadata);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return sub_1DF184880(v20, type metadata accessor for TaskMetadata);
}

LighthouseBackground::TaskStatus_optional __swiftcall TaskStatus.init(raw:)(Swift::String raw)
{
  v2 = v1;
  result.value = TaskStatus.init(rawValue:)(raw).value;
  *v2 = v4;
  return result;
}

uint64_t static TaskStatus.fromCharacter(char:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v4 = result;
  if (result == 84 && a2 == 0xE100000000000000 || (result = sub_1DF22B620(), (result & 1) != 0))
  {
    v6 = 0;
  }

  else if (v4 == 73 && a2 == 0xE100000000000000 || (result = sub_1DF22B620(), (result & 1) != 0))
  {
    v6 = 1;
  }

  else if (v4 == 83 && a2 == 0xE100000000000000 || (result = sub_1DF22B620(), (result & 1) != 0))
  {
    v6 = 2;
  }

  else if (v4 == 71 && a2 == 0xE100000000000000 || (result = sub_1DF22B620(), (result & 1) != 0))
  {
    v6 = 3;
  }

  else if (v4 == 80 && a2 == 0xE100000000000000 || (result = sub_1DF22B620(), (result & 1) != 0))
  {
    v6 = 4;
  }

  else if (v4 == 90 && a2 == 0xE100000000000000 || (result = sub_1DF22B620(), (result & 1) != 0))
  {
    v6 = 5;
  }

  else if (v4 == 78 && a2 == 0xE100000000000000 || (result = sub_1DF22B620(), (result & 1) != 0))
  {
    v6 = 6;
  }

  else if (v4 == 82 && a2 == 0xE100000000000000 || (result = sub_1DF22B620(), (result & 1) != 0))
  {
    v6 = 7;
  }

  else if (v4 == 68 && a2 == 0xE100000000000000 || (result = sub_1DF22B620(), (result & 1) != 0))
  {
    v6 = 8;
  }

  else if (v4 == 67 && a2 == 0xE100000000000000 || (result = sub_1DF22B620(), (result & 1) != 0))
  {
    v6 = 9;
  }

  else
  {
    v6 = 10;
    if (v4 != 70 || a2 != 0xE100000000000000)
    {
      result = sub_1DF22B620();
      if (result)
      {
        v6 = 10;
      }

      else
      {
        v6 = 11;
      }
    }
  }

  *a3 = v6;
  return result;
}

unint64_t sub_1DF186E48()
{
  result = qword_1ECE0CF90;
  if (!qword_1ECE0CF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0CF90);
  }

  return result;
}

unint64_t sub_1DF186ED0()
{
  result = qword_1ECE0CFA8;
  if (!qword_1ECE0CFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0CFA8);
  }

  return result;
}

unint64_t sub_1DF186F58()
{
  result = qword_1ECE0CFC0;
  if (!qword_1ECE0CFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0CFC0);
  }

  return result;
}

unint64_t sub_1DF186FE0()
{
  result = qword_1ECE0CFD8;
  if (!qword_1ECE0CFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0CFD8);
  }

  return result;
}

unint64_t sub_1DF187068()
{
  result = qword_1ECE0CFF0;
  if (!qword_1ECE0CFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0CFF0);
  }

  return result;
}

unint64_t sub_1DF1870F0()
{
  result = qword_1ECE0D008;
  if (!qword_1ECE0D008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0D008);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TaskStatus(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TaskStatus(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_20LighthouseBackground12DatastoreKeyVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy73_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1DF187320(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 73))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1DF18737C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 73) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 73) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

void sub_1DF18741C()
{
  sub_1DF187688(319, qword_1ED8E7288);
  if (v0 <= 0x3F)
  {
    sub_1DF187688(319, &qword_1ED8E6CB0);
    if (v1 <= 0x3F)
    {
      sub_1DF1878F4(319, &unk_1ED8E7330, MEMORY[0x1E6969530]);
      if (v2 <= 0x3F)
      {
        sub_1DF18751C();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1DF18751C()
{
  if (!qword_1ED8E6C00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE0CEF0, &qword_1DF230B50);
    v0 = sub_1DF22B1A0();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED8E6C00);
    }
  }
}

void sub_1DF1875A8()
{
  type metadata accessor for TaskDefinition(319);
  if (v0 <= 0x3F)
  {
    sub_1DF187688(319, &qword_1ED8E6C08);
    if (v1 <= 0x3F)
    {
      sub_1DF1878F4(319, &unk_1ED8E7330, MEMORY[0x1E6969530]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1DF187688(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1DF22B1A0();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_1DF1876FC()
{
  result = sub_1DF22A800();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1DF1877A4()
{
  result = sub_1DF22A800();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1DF187838()
{
  sub_1DF1878F4(319, &qword_1ECE0C640, type metadata accessor for PushMetadata);
  if (v0 <= 0x3F)
  {
    sub_1DF1878F4(319, &qword_1ECE0C658, type metadata accessor for PullMetadata);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1DF1878F4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1DF22B1A0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for PullMetadata.CodingKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for PullMetadata.CodingKeys(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_1DF187A94()
{
  result = qword_1ECE0D010;
  if (!qword_1ECE0D010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0D010);
  }

  return result;
}

unint64_t sub_1DF187AEC()
{
  result = qword_1ECE0D018;
  if (!qword_1ECE0D018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0D018);
  }

  return result;
}

unint64_t sub_1DF187B44()
{
  result = qword_1ECE0D020;
  if (!qword_1ECE0D020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0D020);
  }

  return result;
}

unint64_t sub_1DF187B9C()
{
  result = qword_1ECE0D028;
  if (!qword_1ECE0D028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0D028);
  }

  return result;
}

unint64_t sub_1DF187BF4()
{
  result = qword_1ECE0D030;
  if (!qword_1ECE0D030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0D030);
  }

  return result;
}

unint64_t sub_1DF187C4C()
{
  result = qword_1ECE0D038;
  if (!qword_1ECE0D038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0D038);
  }

  return result;
}

unint64_t sub_1DF187CA4()
{
  result = qword_1ECE0D040;
  if (!qword_1ECE0D040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0D040);
  }

  return result;
}

unint64_t sub_1DF187CFC()
{
  result = qword_1ECE0D048;
  if (!qword_1ECE0D048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0D048);
  }

  return result;
}

unint64_t sub_1DF187D54()
{
  result = qword_1ECE0D050;
  if (!qword_1ECE0D050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0D050);
  }

  return result;
}

unint64_t sub_1DF187DAC()
{
  result = qword_1ECE0D058;
  if (!qword_1ECE0D058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0D058);
  }

  return result;
}

unint64_t sub_1DF187E04()
{
  result = qword_1ECE0D060;
  if (!qword_1ECE0D060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0D060);
  }

  return result;
}

unint64_t sub_1DF187E5C()
{
  result = qword_1ECE0D068;
  if (!qword_1ECE0D068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0D068);
  }

  return result;
}

unint64_t sub_1DF187EB4()
{
  result = qword_1ECE0D070;
  if (!qword_1ECE0D070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0D070);
  }

  return result;
}

unint64_t sub_1DF187F0C()
{
  result = qword_1ECE0C700;
  if (!qword_1ECE0C700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0C700);
  }

  return result;
}

unint64_t sub_1DF187F64()
{
  result = qword_1ECE0C708;
  if (!qword_1ECE0C708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0C708);
  }

  return result;
}

unint64_t sub_1DF187FBC()
{
  result = qword_1ED8E6BC8;
  if (!qword_1ED8E6BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8E6BC8);
  }

  return result;
}

unint64_t sub_1DF188014()
{
  result = qword_1ED8E6BD0;
  if (!qword_1ED8E6BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8E6BD0);
  }

  return result;
}

unint64_t sub_1DF18806C()
{
  result = qword_1ECE0D078;
  if (!qword_1ECE0D078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0D078);
  }

  return result;
}

unint64_t sub_1DF1880C4()
{
  result = qword_1ECE0D080;
  if (!qword_1ECE0D080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0D080);
  }

  return result;
}

unint64_t sub_1DF18811C()
{
  result = qword_1ECE0D088;
  if (!qword_1ECE0D088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0D088);
  }

  return result;
}

unint64_t sub_1DF188174()
{
  result = qword_1ECE0D090;
  if (!qword_1ECE0D090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0D090);
  }

  return result;
}

uint64_t sub_1DF1881C8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x80000001DF23D860 == a2 || (sub_1DF22B620() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001DF23D880 == a2 || (sub_1DF22B620() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001DF23D8A0 == a2 || (sub_1DF22B620() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001DF23D8C0 == a2 || (sub_1DF22B620() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001DF23D8E0 == a2)
  {

    return 4;
  }

  else
  {
    v5 = sub_1DF22B620();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1DF18837C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1DF22B620() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001DF23D900 == a2 || (sub_1DF22B620() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x757165526B736174 && a2 == 0xEB00000000747365 || (sub_1DF22B620() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x5272656767697274 && a2 == 0xEE00747365757165 || (sub_1DF22B620() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7461447472617473 && a2 == 0xE900000000000065 || (sub_1DF22B620() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x65746144646E65 && a2 == 0xE700000000000000 || (sub_1DF22B620() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001DF23D920 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_1DF22B620();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_1DF1885E8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x657079546B736174 && a2 == 0xE800000000000000;
  if (v4 || (sub_1DF22B620() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696665446B736174 && a2 == 0xEE006E6F6974696ELL || (sub_1DF22B620() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x646C6F466B736174 && a2 == 0xEA00000000007265 || (sub_1DF22B620() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x737574617473 && a2 == 0xE600000000000000 || (sub_1DF22B620() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001DF23D940 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_1DF22B620();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1DF1887AC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6369706F74 && a2 == 0xE500000000000000;
  if (v4 || (sub_1DF22B620() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x496C656E6E616863 && a2 == 0xE900000000000044 || (sub_1DF22B620() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6570795468737570 && a2 == 0xE800000000000000 || (sub_1DF22B620() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F69725068737570 && a2 == 0xEC00000079746972 || (sub_1DF22B620() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E6F697461657263 && a2 == 0xEC00000065746144)
  {

    return 4;
  }

  else
  {
    v6 = sub_1DF22B620();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

unint64_t sub_1DF188968()
{
  result = qword_1ECE0C6E8;
  if (!qword_1ECE0C6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0C6E8);
  }

  return result;
}

unint64_t sub_1DF1889BC()
{
  result = qword_1ECE0D098;
  if (!qword_1ECE0D098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0D098);
  }

  return result;
}

unint64_t sub_1DF188A10()
{
  result = qword_1ECE0D0A0;
  if (!qword_1ECE0D0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0D0A0);
  }

  return result;
}

unint64_t sub_1DF188A64()
{
  result = qword_1ECE0D0A8;
  if (!qword_1ECE0D0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0D0A8);
  }

  return result;
}

unint64_t sub_1DF188AB8()
{
  result = qword_1ECE0C0E8;
  if (!qword_1ECE0C0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0C0E8);
  }

  return result;
}

uint64_t generateNameBasedUUID(namespace:item:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v30[1] = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D0B0, &qword_1DF22F100);
  v10 = *(v9 - 8);
  v33 = v9 - 8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = v30 - v12;
  v14 = sub_1DF22AB70();
  v32 = *(v14 - 8);
  v15 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1DF22AA50();
  v31 = *(v18 - 8);
  v19 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = a1;
  v35 = a2;

  MEMORY[0x1E12CF820](58, 0xE100000000000000);
  MEMORY[0x1E12CF820](a3, a4);
  v22 = sub_1DF188EA4(v34, v35);
  v24 = v23;
  sub_1DF189DA8(&qword_1ECE0D0B8, MEMORY[0x1E6966620]);
  sub_1DF22AA40();
  sub_1DF16573C(v22, v24);
  sub_1DF189BC8(v22, v24);
  sub_1DF1657C8(v22, v24);
  v25 = v31;
  sub_1DF22AA30();
  sub_1DF1657C8(v22, v24);
  (*(v32 + 8))(v17, v14);
  (*(v25 + 16))(v13, v21, v18);
  *&v13[*(v33 + 44)] = 16;
  v26 = sub_1DF189964(v13);
  sub_1DF16184C(v13, &qword_1ECE0D0B0, &qword_1DF22F100);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1DF1893C4(v26);
    v26 = result;
  }

  v28 = *(v26 + 16);
  if (v28 < 7)
  {
    __break(1u);
  }

  else
  {
    *(v26 + 38) = *(v26 + 38) & 0xF | 0x50;
    if (v28 >= 9)
    {
      *(v26 + 40) = *(v26 + 40) & 0x3F | 0x80;
      v29 = [objc_allocWithZone(MEMORY[0x1E696AFB0]) initWithUUIDBytes_];

      sub_1DF22A820();

      return (*(v25 + 8))(v21, v18);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DF188EA4(uint64_t a1, unint64_t a2)
{
  v44 = *MEMORY[0x1E69E9840];
  *&v41 = a1;
  *(&v41 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D0C8, &qword_1DF22F108);
  if (swift_dynamicCast())
  {
    sub_1DF18A0B8(__src, &v42);
    __swift_project_boxed_opaque_existential_1(&v42, v43);
    sub_1DF22A5C0();
    __src[0] = v41;
    __swift_destroy_boxed_opaque_existential_1Tm(&v42);
    goto LABEL_63;
  }

  v40 = 0;
  memset(__src, 0, sizeof(__src));
  sub_1DF16184C(__src, &qword_1ECE0D0D0, &unk_1DF22F110);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_1DF22B350();
  }

  sub_1DF1893D8(v4, v5, &v42);
  v6 = *(&v42 + 1);
  v7 = v42;
  if (*(&v42 + 1) >> 60 != 15)
  {
    __src[0] = v42;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = sub_1DF189F9C(v8);
  *(&__src[0] + 1) = v9;
  MEMORY[0x1EEE9AC00](*&__src[0]);
  v10 = sub_1DF1894A0(sub_1DF18A03C);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        sub_1DF22A6E0();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v36 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v41 + 7) = 0;
  *&v41 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v35 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v37 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v38 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_1DF189ED0(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = sub_1DF22AD70();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = sub_1DF22ADA0();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v42 = v14;
      *(&v42 + 1) = v38;
      v31 = *(&v42 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v37;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_1DF22B350();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = sub_1DF189ED0(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = sub_1DF22AD80();
LABEL_52:
    *(&v41 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v42 = v41;
      *(&v42 + 6) = *(&v41 + 6);
      sub_1DF22A6F0();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v35;
  if (v24)
  {
    *&v42 = v41;
    *(&v42 + 6) = *(&v41 + 6);
    sub_1DF22A6F0();
    sub_1DF18A0A4(v36, v35);
    goto LABEL_62;
  }

LABEL_57:

  sub_1DF18A0A4(v36, v6);
LABEL_63:
  v32 = __src[0];
  sub_1DF16573C(*&__src[0], *(&__src[0] + 1));

  sub_1DF1657C8(v32, *(&v32 + 1));
  v33 = *MEMORY[0x1E69E9840];
  return v32;
}

uint64_t sub_1DF1893D8@<X0>(_BYTE *__src@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a2)
  {
    if (a2 <= 14)
    {
      result = sub_1DF1F109C(__src, &__src[a2]);
      v6 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = sub_1DF22A5B0();
      v9 = *(v8 + 48);
      v10 = *(v8 + 52);
      swift_allocObject();
      v11 = sub_1DF22A560();
      if (a2 >= 0x7FFFFFFF)
      {
        sub_1DF22A6D0();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v11 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v11 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

void *sub_1DF1894A0(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v3 = v1;
  v22[2] = *MEMORY[0x1E69E9840];
  v6 = *v1;
  v5 = v1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      sub_1DF1657C8(v6, v5);
      v22[0] = v6;
      LOWORD(v22[1]) = v5;
      BYTE2(v22[1]) = BYTE2(v5);
      BYTE3(v22[1]) = BYTE3(v5);
      BYTE4(v22[1]) = BYTE4(v5);
      BYTE5(v22[1]) = BYTE5(v5);
      BYTE6(v22[1]) = BYTE6(v5);
      result = a1(&v20, v22, v22 + BYTE6(v5));
      if (!v2)
      {
        result = v20;
      }

      v9 = LODWORD(v22[1]) | ((WORD2(v22[1]) | (BYTE6(v22[1]) << 16)) << 32);
      *v3 = v22[0];
      v3[1] = v9;
      goto LABEL_22;
    }

    v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

    sub_1DF1657C8(v6, v5);
    *v3 = xmmword_1DF22F0F0;
    sub_1DF1657C8(0, 0xC000000000000000);
    v12 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v12 < v6)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_1DF22A570() && __OFSUB__(v6, sub_1DF22A5A0()))
      {
LABEL_26:
        __break(1u);
      }

      v13 = sub_1DF22A5B0();
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = sub_1DF22A550();

      v11 = v16;
    }

    if (v12 >= v6)
    {

      v17 = sub_1DF1898B0(v6, v6 >> 32, a1);

      v10 = v11 | 0x4000000000000000;
      if (!v2)
      {
        *v3 = v6;
        v3[1] = v10;
        result = v17;
        goto LABEL_22;
      }

      *v3 = v6;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v7 == 2)
  {

    sub_1DF1657C8(v6, v5);
    v20 = v6;
    v21 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *v3 = xmmword_1DF22F0F0;
    sub_1DF1657C8(0, 0xC000000000000000);
    sub_1DF22A6C0();
    result = sub_1DF1898B0(v20[2], v20[3], a1);
    v10 = v21 | 0x8000000000000000;
    if (!v2)
    {
      *v3 = v20;
      v3[1] = v10;
      goto LABEL_22;
    }

    *v3 = v20;
LABEL_21:
    v3[1] = v10;
    goto LABEL_22;
  }

  memset(v22, 0, 15);
  result = a1(&v20, v22, v22);
  if (!v2)
  {
    result = v20;
  }

LABEL_22:
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

void *sub_1DF189844(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = a1(&v6, 0, 0);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *sub_1DF1898B0(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_1DF22A570();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_1DF22A5A0();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_1DF22A590();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t sub_1DF189964(uint64_t a1)
{
  v2 = sub_1DF22AA50();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  sub_1DF189DA8(&qword_1ECE0D0C0, MEMORY[0x1E69663E0]);
  sub_1DF22ADE0();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D0B0, &qword_1DF22F100);
  v7 = *(a1 + *(result + 36));
  v8 = v27[0];
  v9 = MEMORY[0x1E69E7CC0];
  v10 = 0;
  if (v7)
  {
    v11 = v27[1];
    v12 = (MEMORY[0x1E69E7CC0] + 32);
    do
    {
      v13 = *(v8 + 16);
      if (v11 == v13)
      {
        break;
      }

      if (v11 >= v13)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      v14 = *(v8 + v11 + 32);
      if (!v10)
      {
        v15 = *(v9 + 3);
        if (((v15 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_24;
        }

        v16 = v15 & 0xFFFFFFFFFFFFFFFELL;
        if (v16 <= 1)
        {
          v17 = 1;
        }

        else
        {
          v17 = v16;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0C8E8, &qword_1DF22CA40);
        v18 = swift_allocObject();
        v19 = 2 * _swift_stdlib_malloc_size(v18) - 64;
        *(v18 + 2) = v17;
        *(v18 + 3) = v19;
        v20 = v18 + 32;
        v21 = *(v9 + 3) >> 1;
        if (*(v9 + 2))
        {
          v22 = v9 + 32;
          if (v18 != v9 || v20 >= &v22[v21])
          {
            memmove(v18 + 32, v22, v21);
          }

          *(v9 + 2) = 0;
        }

        v12 = &v20[v21];
        v10 = (v19 >> 1) - v21;

        v9 = v18;
      }

      v23 = __OFSUB__(v10--, 1);
      if (v23)
      {
        goto LABEL_23;
      }

      *v12++ = v14;
      ++v11;
      --v7;
    }

    while (v7);
  }

  v24 = *(v9 + 3);
  if (v24 < 2)
  {
    return v9;
  }

  v25 = v24 >> 1;
  v23 = __OFSUB__(v25, v10);
  v26 = v25 - v10;
  if (!v23)
  {
    *(v9 + 2) = v26;
    return v9;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_1DF189BC8(uint64_t a1, unint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
LABEL_8:
      sub_1DF22AB70();
      sub_1DF189DA8(&qword_1ECE0D0B8, MEMORY[0x1E6966620]);
      result = sub_1DF22AA20();
      goto LABEL_9;
    }

    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_8;
    }

    v3 = a1;
    v4 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  result = sub_1DF189DF0(v3, v4);
LABEL_9:
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1DF189DA8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DF189DF0(uint64_t a1, uint64_t a2)
{
  result = sub_1DF22A570();
  if (!result || (result = sub_1DF22A5A0(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_1DF22A590();
      sub_1DF22AB70();
      sub_1DF189DA8(&qword_1ECE0D0B8, MEMORY[0x1E6966620]);
      return sub_1DF22AA20();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DF189ED0(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1DF22ADB0();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x1E12CF860](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_1DF189F4C@<X0>(uint64_t result@<X0>, uint64_t *a2@<X2>, void *a3@<X8>)
{
  if (result)
  {
    v4 = *a2;
    v5 = a2[1];
    result = sub_1DF22B310();
    if ((v7 & 1) == 0)
    {
      *a3 = 0;
      a3[1] = 0xE000000000000000;
      a3[2] = 15;
      a3[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DF189F9C(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      return sub_1DF1ECF90(result);
    }

    else
    {
      v2 = sub_1DF22A5B0();
      v3 = *(v2 + 48);
      v4 = *(v2 + 52);
      swift_allocObject();
      sub_1DF22A580();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_1DF22A6D0();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

void *sub_1DF18A03C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_1DF189844(sub_1DF18A0D0, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t sub_1DF18A0A4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1DF1657C8(a1, a2);
  }

  return a1;
}

uint64_t sub_1DF18A0B8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

LighthouseBackground::DeDiscoDecodingError_optional __swiftcall DeDiscoDecodingError.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DF22B420();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t DeDiscoDecodingError.rawValue.getter()
{
  if (*v0)
  {
    result = 0xD000000000000011;
  }

  else
  {
    result = 0x4464696C61766E69;
  }

  *v0;
  return result;
}

uint64_t sub_1DF18A1A0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000011;
  }

  else
  {
    v4 = 0x4464696C61766E69;
  }

  if (v3)
  {
    v5 = 0xEF65707954617461;
  }

  else
  {
    v5 = 0x80000001DF23D0A0;
  }

  if (*a2)
  {
    v6 = 0xD000000000000011;
  }

  else
  {
    v6 = 0x4464696C61766E69;
  }

  if (*a2)
  {
    v7 = 0x80000001DF23D0A0;
  }

  else
  {
    v7 = 0xEF65707954617461;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1DF22B620();
  }

  return v9 & 1;
}

uint64_t sub_1DF18A258()
{
  v1 = *v0;
  sub_1DF22B6C0();
  sub_1DF22AD20();

  return sub_1DF22B6F0();
}

uint64_t sub_1DF18A2EC()
{
  *v0;
  sub_1DF22AD20();
}

uint64_t sub_1DF18A36C()
{
  v1 = *v0;
  sub_1DF22B6C0();
  sub_1DF22AD20();

  return sub_1DF22B6F0();
}

void sub_1DF18A408(unint64_t *a1@<X8>)
{
  v2 = 0x80000001DF23D0A0;
  v3 = 0x4464696C61766E69;
  if (*v1)
  {
    v3 = 0xD000000000000011;
  }

  else
  {
    v2 = 0xEF65707954617461;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t DeDiscoTaskConfigError.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1DF22B420();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1DF18A4D4()
{
  sub_1DF22B6C0();
  sub_1DF22AD20();
  return sub_1DF22B6F0();
}

uint64_t sub_1DF18A558()
{
  sub_1DF22B6C0();
  sub_1DF22AD20();
  return sub_1DF22B6F0();
}

uint64_t sub_1DF18A5B4@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1DF22B420();

  *a2 = v5 != 0;
  return result;
}

uint64_t DeDiscoParameters.dataContentTypes.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t DeDiscoParameters.dediscoTaskConfig.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 24);
  v7[0] = *(v1 + 8);
  v7[1] = v2;
  v8[0] = *(v1 + 40);
  v3 = v8[0];
  *(v8 + 10) = *(v1 + 50);
  v4 = *(v8 + 10);
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  *(a1 + 42) = v4;
  return sub_1DF18A6D4(v7, &v6);
}

__n128 DeDiscoParameters.dediscoTaskConfig.setter(uint64_t a1)
{
  v3 = *(v1 + 24);
  v6[0] = *(v1 + 8);
  v6[1] = v3;
  v7[0] = *(v1 + 40);
  *(v7 + 10) = *(v1 + 50);
  sub_1DF18A774(v6);
  v4 = *(a1 + 16);
  *(v1 + 8) = *a1;
  *(v1 + 24) = v4;
  *(v1 + 40) = *(a1 + 32);
  result = *(a1 + 42);
  *(v1 + 50) = result;
  return result;
}

uint64_t sub_1DF18A7C4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000011;
  }

  else
  {
    v4 = 0xD000000000000010;
  }

  if (v3)
  {
    v5 = "producedWrongType";
  }

  else
  {
    v5 = "dataContentTypes";
  }

  if (*a2)
  {
    v6 = 0xD000000000000011;
  }

  else
  {
    v6 = 0xD000000000000010;
  }

  if (*a2)
  {
    v7 = "dataContentTypes";
  }

  else
  {
    v7 = "producedWrongType";
  }

  if (v4 == v6 && (v5 | 0x8000000000000000) == (v7 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1DF22B620();
  }

  return v9 & 1;
}

uint64_t sub_1DF18A86C()
{
  v1 = *v0;
  sub_1DF22B6C0();
  sub_1DF22AD20();

  return sub_1DF22B6F0();
}

uint64_t sub_1DF18A8E8()
{
  *v0;
  sub_1DF22AD20();
}

uint64_t sub_1DF18A950()
{
  v1 = *v0;
  sub_1DF22B6C0();
  sub_1DF22AD20();

  return sub_1DF22B6F0();
}

void sub_1DF18A9D4(unint64_t *a1@<X8>)
{
  v2 = "dataContentTypes";
  v3 = 0xD000000000000010;
  if (*v1)
  {
    v3 = 0xD000000000000011;
  }

  else
  {
    v2 = "producedWrongType";
  }

  *a1 = v3;
  a1[1] = v2 | 0x8000000000000000;
}

unint64_t sub_1DF18AA10()
{
  if (*v0)
  {
    result = 0xD000000000000011;
  }

  else
  {
    result = 0xD000000000000010;
  }

  *v0;
  return result;
}

uint64_t sub_1DF18AA54(uint64_t a1)
{
  v2 = sub_1DF18AD54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF18AA90(uint64_t a1)
{
  v2 = sub_1DF18AD54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DeDiscoParameters.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D0D8, &qword_1DF22F130);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v13 - v7;
  v9 = *v1;
  v10 = *(v1 + 3);
  v19 = *(v1 + 1);
  v20 = v10;
  v21[0] = *(v1 + 5);
  *(v21 + 10) = *(v1 + 50);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF18AD54();

  sub_1DF22B740();
  *&v16 = v9;
  LOBYTE(v13[0]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D0E8, &qword_1DF22F138);
  sub_1DF18B120(&qword_1ECE0D0F0, sub_1DF18ADA8);
  sub_1DF22B5C0();

  if (!v2)
  {
    v16 = v19;
    v17 = v20;
    v18[0] = v21[0];
    *(v18 + 10) = *(v21 + 10);
    v15 = 1;
    sub_1DF18A6D4(&v19, v13);
    sub_1DF18ADFC();
    sub_1DF22B5C0();
    v13[0] = v16;
    v13[1] = v17;
    *v14 = v18[0];
    *&v14[10] = *(v18 + 10);
    sub_1DF18A774(v13);
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1DF18AD54()
{
  result = qword_1ECE0D0E0;
  if (!qword_1ECE0D0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0D0E0);
  }

  return result;
}

unint64_t sub_1DF18ADA8()
{
  result = qword_1ECE0D0F8;
  if (!qword_1ECE0D0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0D0F8);
  }

  return result;
}

unint64_t sub_1DF18ADFC()
{
  result = qword_1ECE0D100;
  if (!qword_1ECE0D100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0D100);
  }

  return result;
}

uint64_t DeDiscoParameters.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D108, &qword_1DF22F140);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v18[-v7];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF18AD54();
  sub_1DF22B730();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v10 = v5;
  v11 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D0E8, &qword_1DF22F138);
  v18[0] = 0;
  sub_1DF18B120(&qword_1ECE0D110, sub_1DF18B1A4);
  sub_1DF22B4E0();
  v12 = v19;
  v23 = 1;
  sub_1DF18B1F8();
  sub_1DF22B4E0();
  (*(v10 + 8))(v8, v4);
  v27 = v24;
  v28 = v25;
  v29[0] = v26[0];
  *(v29 + 10) = *(v26 + 10);
  *v18 = v12;
  *&v18[8] = v24;
  *&v18[24] = v25;
  *&v18[40] = v26[0];
  *&v18[50] = *(v26 + 10);
  v13 = *v18;
  v14 = *&v18[16];
  v15 = *&v18[32];
  v16 = *&v18[48];
  *(v11 + 64) = WORD4(v26[1]);
  *(v11 + 32) = v15;
  *(v11 + 48) = v16;
  *v11 = v13;
  *(v11 + 16) = v14;
  sub_1DF18B24C(v18, &v19);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v19 = v12;
  v20 = v27;
  v21 = v28;
  *v22 = v29[0];
  *&v22[10] = *(v29 + 10);
  return sub_1DF18B284(&v19);
}

uint64_t sub_1DF18B120(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE0D0E8, &qword_1DF22F138);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DF18B1A4()
{
  result = qword_1ECE0D118;
  if (!qword_1ECE0D118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0D118);
  }

  return result;
}

unint64_t sub_1DF18B1F8()
{
  result = qword_1ECE0D120;
  if (!qword_1ECE0D120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0D120);
  }

  return result;
}

uint64_t DeDiscoTaskConfig.version.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t DeDiscoTaskConfig.version.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t DeDiscoTaskConfig.dediscoServerConfiguration.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[4];
  v3 = v1[5];
  *a1 = v1[3];
  a1[1] = v2;
  a1[2] = v3;
}

__n128 DeDiscoTaskConfig.dediscoServerConfiguration.setter(uint64_t a1)
{
  v3 = *a1;
  v5 = v1[2].n128_u64[0];
  v4 = v1[2].n128_u64[1];

  v1[1].n128_u64[1] = v3;
  result = *(a1 + 8);
  v1[2] = result;
  return result;
}

void DeDiscoTaskConfig.features.getter(_BYTE *a1@<X8>)
{
  v2 = *(v1 + 57);
  *a1 = *(v1 + 56);
  a1[1] = v2;
}

_BYTE *DeDiscoTaskConfig.features.setter(_BYTE *result)
{
  v2 = result[1];
  *(v1 + 56) = *result;
  *(v1 + 57) = v2;
  return result;
}

uint64_t sub_1DF18B4CC()
{
  v1 = *v0;
  sub_1DF22B6C0();
  sub_1DF22AD20();

  return sub_1DF22B6F0();
}

uint64_t sub_1DF18B5C8()
{
  *v0;
  *v0;
  *v0;
  sub_1DF22AD20();
}

uint64_t sub_1DF18B6B0()
{
  v1 = *v0;
  sub_1DF22B6C0();
  sub_1DF22AD20();

  return sub_1DF22B6F0();
}

uint64_t sub_1DF18B7A8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DF190B78();
  *a2 = result;
  return result;
}

void sub_1DF18B7D8(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E6F6973726556;
  v5 = 0x80000001DF23D110;
  v6 = 0xD00000000000001ALL;
  v7 = 0xEC000000657A6953;
  v8 = 0x68637461426E694DLL;
  if (v2 != 3)
  {
    v8 = 0x7365727574616546;
    v7 = 0xE800000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x697078456B736154;
    v3 = 0xEE006E6F69746172;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_1DF18B890()
{
  v1 = *v0;
  v2 = 0x6E6F6973726556;
  v3 = 0xD00000000000001ALL;
  v4 = 0x68637461426E694DLL;
  if (v1 != 3)
  {
    v4 = 0x7365727574616546;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x697078456B736154;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1DF18B944@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DF190B78();
  *a1 = result;
  return result;
}

uint64_t sub_1DF18B96C(uint64_t a1)
{
  v2 = sub_1DF18BC58();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF18B9A8(uint64_t a1)
{
  v2 = sub_1DF18BC58();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DeDiscoTaskConfig.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D128, &qword_1DF22F148);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v18 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v22 = v1[3];
  v23 = v10;
  v11 = v1[4];
  v20 = v1[5];
  v21 = v11;
  v19 = v1[6];
  HIDWORD(v18) = *(v1 + 56);
  v28 = *(v1 + 57);
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF18BC58();
  sub_1DF22B740();
  LOBYTE(v25) = 0;
  v13 = v24;
  sub_1DF22B580();
  if (!v13)
  {
    v15 = v21;
    v14 = v22;
    v16 = v20;
    LOBYTE(v25) = 1;
    sub_1DF22B5B0();
    v25 = v14;
    v26 = v15;
    v27 = v16;
    v29 = 2;
    sub_1DF18BCAC();

    sub_1DF22B5C0();

    LOBYTE(v25) = 3;
    sub_1DF22B5B0();
    LOBYTE(v25) = BYTE4(v18);
    BYTE1(v25) = v28;
    v29 = 4;
    sub_1DF18BD00();
    sub_1DF22B5C0();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1DF18BC58()
{
  result = qword_1ECE0D130;
  if (!qword_1ECE0D130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0D130);
  }

  return result;
}

unint64_t sub_1DF18BCAC()
{
  result = qword_1ECE0D138;
  if (!qword_1ECE0D138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0D138);
  }

  return result;
}

unint64_t sub_1DF18BD00()
{
  result = qword_1ECE0D140;
  if (!qword_1ECE0D140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0D140);
  }

  return result;
}

uint64_t DeDiscoTaskConfig.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D148, &qword_1DF22F150);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v20 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF18BC58();
  sub_1DF22B730();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  LOBYTE(v30) = 0;
  v11 = sub_1DF22B4A0();
  v13 = v12;
  LOBYTE(v30) = 1;
  v26 = sub_1DF22B4D0();
  LOBYTE(v27) = 2;
  sub_1DF18C0A8();
  sub_1DF22B4E0();
  v25 = v31;
  v23 = v30;
  v24 = v32;
  LOBYTE(v30) = 3;
  v22 = sub_1DF22B4D0();
  v40 = 4;
  sub_1DF18C0FC();
  sub_1DF22B4E0();
  (*(v6 + 8))(v9, v5);
  v39 = v41;
  v21 = v42;
  *&v27 = v11;
  *(&v27 + 1) = v13;
  v15 = v25;
  v14 = v26;
  v16 = v23;
  v17 = v24;
  *&v28 = v26;
  *(&v28 + 1) = v23;
  *v29 = v25;
  *&v29[8] = v24;
  *&v29[16] = v22;
  v29[24] = v41;
  v29[25] = v42;
  v18 = v28;
  *a2 = v27;
  a2[1] = v18;
  a2[2] = *v29;
  *(a2 + 42) = *&v29[10];
  sub_1DF18A6D4(&v27, &v30);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v30 = v11;
  v31 = v13;
  v32 = v14;
  v33 = v16;
  v34 = v15;
  v35 = v17;
  v36 = v22;
  v37 = v39;
  v38 = v21;
  return sub_1DF18A774(&v30);
}

unint64_t sub_1DF18C0A8()
{
  result = qword_1ECE0D150;
  if (!qword_1ECE0D150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0D150);
  }

  return result;
}

unint64_t sub_1DF18C0FC()
{
  result = qword_1ECE0D158;
  if (!qword_1ECE0D158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0D158);
  }

  return result;
}

uint64_t DeDiscoServerConfiguration.leader.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t DeDiscoServerConfiguration.leader.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t DeDiscoServerConfiguration.helpers.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_1DF18C25C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x737265706C6548;
  }

  else
  {
    v4 = 0x72656461654CLL;
  }

  if (v3)
  {
    v5 = 0xE600000000000000;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  if (*a2)
  {
    v6 = 0x737265706C6548;
  }

  else
  {
    v6 = 0x72656461654CLL;
  }

  if (*a2)
  {
    v7 = 0xE700000000000000;
  }

  else
  {
    v7 = 0xE600000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1DF22B620();
  }

  return v9 & 1;
}

uint64_t sub_1DF18C300()
{
  v1 = *v0;
  sub_1DF22B6C0();
  sub_1DF22AD20();

  return sub_1DF22B6F0();
}

uint64_t sub_1DF18C380()
{
  *v0;
  sub_1DF22AD20();
}

uint64_t sub_1DF18C3EC()
{
  v1 = *v0;
  sub_1DF22B6C0();
  sub_1DF22AD20();

  return sub_1DF22B6F0();
}

void sub_1DF18C474(uint64_t *a1@<X8>)
{
  v2 = 0x72656461654CLL;
  if (*v1)
  {
    v2 = 0x737265706C6548;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1DF18C4B0()
{
  if (*v0)
  {
    result = 0x737265706C6548;
  }

  else
  {
    result = 0x72656461654CLL;
  }

  *v0;
  return result;
}

uint64_t sub_1DF18C4F4(uint64_t a1)
{
  v2 = sub_1DF18C738();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF18C530(uint64_t a1)
{
  v2 = sub_1DF18C738();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DeDiscoServerConfiguration.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D160, &unk_1DF22F158);
  v14 = *(v4 - 8);
  v5 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v13 = v1[2];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF18C738();
  sub_1DF22B740();
  v17 = 0;
  sub_1DF22B580();
  if (!v2)
  {
    v15 = v13;
    v16 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE0C7A0, &qword_1DF22CB50);
    sub_1DF15FAB4(&qword_1ECE0C068);
    sub_1DF22B5C0();
  }

  return (*(v14 + 8))(v7, v4);
}

unint64_t sub_1DF18C738()
{
  result = qword_1ECE0D168;
  if (!qword_1ECE0D168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0D168);
  }

  return result;
}

uint64_t DeDiscoServerConfiguration.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D170, &qword_1DF22F168);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF18C738();
  sub_1DF22B730();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v19 = 0;
  v11 = sub_1DF22B4A0();
  v13 = v12;
  v14 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE0C7A0, &qword_1DF22CB50);
  v18 = 1;
  sub_1DF15FAB4(&qword_1ECE0C058);
  sub_1DF22B4E0();
  (*(v6 + 8))(v9, v5);
  v15 = v17[1];
  *a2 = v14;
  a2[1] = v13;
  a2[2] = v15;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_1DF18CA64(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x505454484FLL;
  }

  else
  {
    v4 = 0xD000000000000012;
  }

  if (v3)
  {
    v5 = 0x80000001DF23D150;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  if (*a2)
  {
    v6 = 0x505454484FLL;
  }

  else
  {
    v6 = 0xD000000000000012;
  }

  if (*a2)
  {
    v7 = 0xE500000000000000;
  }

  else
  {
    v7 = 0x80000001DF23D150;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1DF22B620();
  }

  return v9 & 1;
}

uint64_t sub_1DF18CB0C()
{
  v1 = *v0;
  sub_1DF22B6C0();
  sub_1DF22AD20();

  return sub_1DF22B6F0();
}

uint64_t sub_1DF18CB90()
{
  *v0;
  sub_1DF22AD20();
}

uint64_t sub_1DF18CC00()
{
  v1 = *v0;
  sub_1DF22B6C0();
  sub_1DF22AD20();

  return sub_1DF22B6F0();
}

void sub_1DF18CC8C(unint64_t *a1@<X8>)
{
  v2 = 0x80000001DF23D150;
  v3 = 0xD000000000000012;
  if (*v1)
  {
    v3 = 0x505454484FLL;
    v2 = 0xE500000000000000;
  }

  *a1 = v3;
  a1[1] = v2;
}

unint64_t sub_1DF18CCCC()
{
  if (*v0)
  {
    result = 0x505454484FLL;
  }

  else
  {
    result = 0xD000000000000012;
  }

  *v0;
  return result;
}

uint64_t sub_1DF18CD14@<X0>(char *a1@<X8>)
{
  v2 = sub_1DF22B420();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_1DF18CD74(uint64_t a1)
{
  v2 = sub_1DF18CF78();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF18CDB0(uint64_t a1)
{
  v2 = sub_1DF18CF78();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DeDiscoTaskConfigFeatures.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D178, &qword_1DF22F170);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - v7;
  v9 = *v1;
  v13 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF18CF78();
  sub_1DF22B740();
  v15 = 0;
  sub_1DF22B590();
  if (!v2)
  {
    v14 = 1;
    sub_1DF22B590();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1DF18CF78()
{
  result = qword_1ECE0D180;
  if (!qword_1ECE0D180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0D180);
  }

  return result;
}

uint64_t DeDiscoTaskConfigFeatures.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D188, &qword_1DF22F178);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF18CF78();
  sub_1DF22B730();
  if (!v2)
  {
    v16 = 0;
    v11 = sub_1DF22B4B0();
    v15 = 1;
    v13 = sub_1DF22B4B0();
    (*(v6 + 8))(v9, v5);
    *a2 = v11 & 1;
    a2[1] = v13 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t Dictionary<>.toDict()(uint64_t a1)
{
  v19[4] = *MEMORY[0x1E69E9840];
  v3 = sub_1DF22A540();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_1DF22A530();
  v19[0] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D0E8, &qword_1DF22F138);
  sub_1DF18B120(&qword_1ECE0D0F0, sub_1DF18ADA8);
  v6 = sub_1DF22A520();
  v8 = v7;

  if (!v1)
  {
    v11 = objc_opt_self();
    v12 = sub_1DF22A700();
    v18[0] = 0;
    v13 = [v11 JSONObjectWithData:v12 options:0 error:v18];

    v14 = v18[0];
    if (v13)
    {
      sub_1DF22B1E0();
      swift_unknownObjectRelease();
      sub_1DF1620A8(v19, v18);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D190, &qword_1DF22F180);
      if (swift_dynamicCast())
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v19);
        sub_1DF1657C8(v6, v8);
        result = v17;
      }

      else
      {
        sub_1DF18E730();
        swift_allocError();
        *v16 = 1;
        swift_willThrow();
        sub_1DF1657C8(v6, v8);
        result = __swift_destroy_boxed_opaque_existential_1Tm(v19);
      }
    }

    else
    {
      v15 = v14;
      sub_1DF22A640();

      swift_willThrow();
      result = sub_1DF1657C8(v6, v8);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

void *DeDiscoTaskConfig.toDict()()
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = sub_1DF22A540();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  v5 = sub_1DF22A530();
  v6 = v0[1];
  v24[0] = *v0;
  v24[1] = v6;
  v25[0] = v0[2];
  *(v25 + 10) = *(v0 + 42);
  sub_1DF18ADFC();
  v7 = sub_1DF22A520();
  v9 = v8;

  if (!v1)
  {
    v12 = objc_opt_self();
    v13 = sub_1DF22A700();
    v23[0] = 0;
    v14 = [v12 JSONObjectWithData:v13 options:0 error:v23];

    v15 = v23[0];
    if (v14)
    {
      sub_1DF22B1E0();
      swift_unknownObjectRelease();
      sub_1DF1620A8(v24, v23);
      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D1A0, &qword_1DF22F188);
      if (swift_dynamicCast())
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D1A8, &qword_1DF22F190);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1DF22F120;
        v17 = *MEMORY[0x1E699A0F0];
        *(inited + 32) = sub_1DF22ACC0();
        *(inited + 72) = MEMORY[0x1E69E6158];
        *(inited + 40) = v18;
        *(inited + 48) = 0;
        *(inited + 56) = 0xE000000000000000;
        v19 = *MEMORY[0x1E699A0E8];
        *(inited + 80) = sub_1DF22ACC0();
        *(inited + 88) = v20;
        *(inited + 120) = v5;
        *(inited + 96) = v22;
        v5 = sub_1DF18ED00(inited);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D1B0, &qword_1DF22F198);
        swift_arrayDestroy();
      }

      else
      {
        sub_1DF18E730();
        swift_allocError();
        *v21 = 1;
        swift_willThrow();
      }

      sub_1DF1657C8(v7, v9);
      __swift_destroy_boxed_opaque_existential_1Tm(v24);
    }

    else
    {
      v5 = v15;
      sub_1DF22A640();

      swift_willThrow();
      sub_1DF1657C8(v7, v9);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t sub_1DF18D6DC()
{
  v1 = *v0;
  v2 = 0x6570795461746164;
  v3 = 0x69726F6765746163;
  if (v1 != 6)
  {
    v3 = 0x7275746375727473;
  }

  v4 = 0x65756C615678616DLL;
  if (v1 != 4)
  {
    v4 = 0x6F4374656B637562;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x697261646E756F62;
  if (v1 != 2)
  {
    v5 = 0x65756C61566E696DLL;
  }

  if (*v0)
  {
    v2 = 0x646E756F62;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1DF18D7E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DF190BC4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DF18D81C(uint64_t a1)
{
  v2 = sub_1DF18EE30();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF18D858(uint64_t a1)
{
  v2 = sub_1DF18EE30();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DF18D8A0()
{
  v1 = *v0;
  sub_1DF22B6C0();
  sub_1DF22AD20();

  return sub_1DF22B6F0();
}

uint64_t sub_1DF18D9B0()
{
  *v0;
  *v0;
  *v0;
  sub_1DF22AD20();
}

uint64_t sub_1DF18DAAC()
{
  v1 = *v0;
  sub_1DF22B6C0();
  sub_1DF22AD20();

  return sub_1DF22B6F0();
}

uint64_t sub_1DF18DBB8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DF190EC4();
  *a2 = result;
  return result;
}

void sub_1DF18DBE8(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000657079;
  v4 = 0x546E61656C6F6F42;
  v5 = 0xEC00000065707954;
  v6 = 0x646574656B637542;
  v7 = 0xEF657079546C6163;
  v8 = 0x69726F6765746143;
  if (v2 != 3)
  {
    v8 = 0x74616E69626D6F43;
    v7 = 0xEF657079546E6F69;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0xD000000000000012;
    v3 = 0x80000001DF23D180;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t DeDiscoFieldEncodingValue.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D1B8, &qword_1DF22F1A0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF18EE30();
  sub_1DF22B730();
  if (!v2)
  {
    v23 = 0;
    sub_1DF18EE84();
    sub_1DF22B4E0();
    v12 = v21;
    if (v21 <= 1u)
    {
      if (v21)
      {
        LOBYTE(v21) = 1;
        v12 = sub_1DF22B4D0();
        v19 = 0;
        v20 = 0;
        v13 = 0x80000001DF23D180;
        v22 = 1;
        v14 = 0xD000000000000012;
      }

      else
      {
        v13 = 0xEB00000000657079;
        v14 = 0x546E61656C6F6F42;
        v19 = 0;
        v20 = 0;
        v22 = 0;
      }
    }

    else if (v21 == 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D1D0, &qword_1DF22F1A8);
      v23 = 2;
      sub_1DF18EED8(&qword_1ECE0D1D8);
      sub_1DF22B480();
      v13 = 0xEC00000065707954;
      v12 = v21;
      if (v21)
      {
        v19 = 0;
        v20 = 0;
        v22 = 2;
        v14 = 0x646574656B637542;
      }

      else
      {
        v21 = 3;
        v12 = sub_1DF22B4D0();
        LOBYTE(v21) = 4;
        v20 = sub_1DF22B4D0();
        LOBYTE(v21) = 5;
        v17 = sub_1DF22B4D0();
        v22 = 3;
        v14 = 0x646574656B637542;
        v19 = v17;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE0C7A0, &qword_1DF22CB50);
      if (v12 == 3)
      {
        v23 = 6;
        sub_1DF15FAB4(&qword_1ECE0C058);
        sub_1DF22B4E0();
        v19 = 0;
        v20 = 0;
        v12 = v21;
        v22 = 4;
        v13 = 0xEF657079546C6163;
        v14 = 0x69726F6765746143;
      }

      else
      {
        v23 = 7;
        sub_1DF15FAB4(&qword_1ECE0C058);
        sub_1DF22B4E0();
        v19 = 0;
        v20 = 0;
        v12 = v21;
        v22 = 5;
        v13 = 0xEF657079546E6F69;
        v14 = 0x74616E69626D6F43;
      }
    }

    (*(v6 + 8))(v9, v5);
    *a2 = v14;
    *(a2 + 8) = v13;
    v15 = v19;
    v16 = v20;
    *(a2 + 16) = v12;
    *(a2 + 24) = v16;
    *(a2 + 32) = v15;
    *(a2 + 40) = v22;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t DeDiscoFieldEncodingValue.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D1E0, &qword_1DF22F1B0);
  v24 = *(v3 - 8);
  v4 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v21 - v5;
  v8 = *v1;
  v7 = v1[1];
  v9 = v1[2];
  v21[1] = v1[3];
  v22 = v9;
  v21[0] = v1[4];
  v10 = *(v1 + 40);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF18EE30();
  sub_1DF22B740();
  if (v10 > 2)
  {
    if (v10 != 3)
    {
      v12 = v3;
      if (v10 == 4)
      {
        LOBYTE(v26) = 0;
        v14 = v23;
        sub_1DF22B580();
        if (v14)
        {
          return (*(v24 + 8))(v6, v12);
        }

        v26 = v22;
        v15 = 6;
      }

      else
      {
        LOBYTE(v26) = 0;
        v20 = v23;
        sub_1DF22B580();
        if (v20)
        {
          return (*(v24 + 8))(v6, v12);
        }

        v26 = v22;
        v15 = 7;
      }

      v25 = v15;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE0C7A0, &qword_1DF22CB50);
      sub_1DF15FAB4(&qword_1ECE0C068);
      goto LABEL_19;
    }

    LOBYTE(v26) = 0;
    v16 = v3;
    v17 = v23;
    sub_1DF22B580();
    if (!v17)
    {
      LOBYTE(v26) = 3;
      sub_1DF22B5B0();
      LOBYTE(v26) = 4;
      sub_1DF22B5B0();
      LOBYTE(v26) = 5;
      sub_1DF22B5B0();
    }

    return (*(v24 + 8))(v6, v16);
  }

  if (!v10)
  {
    LOBYTE(v26) = 0;
    v16 = v3;
    sub_1DF22B580();
    return (*(v24 + 8))(v6, v16);
  }

  v12 = v3;
  if (v10 == 1)
  {
    LOBYTE(v26) = 0;
    v13 = v23;
    sub_1DF22B580();
    if (!v13)
    {
      LOBYTE(v26) = 1;
      sub_1DF22B5B0();
    }

    return (*(v24 + 8))(v6, v12);
  }

  LOBYTE(v26) = 0;
  v19 = v23;
  sub_1DF22B580();
  if (!v19)
  {
    v26 = v22;
    v25 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D1D0, &qword_1DF22F1A8);
    sub_1DF18EED8(&qword_1ECE0D1E8);
LABEL_19:
    sub_1DF22B5C0();
  }

  return (*(v24 + 8))(v6, v12);
}

uint64_t sub_1DF18E610(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DF18E66C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_1DF22B620() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

unint64_t sub_1DF18E730()
{
  result = qword_1ECE0D198;
  if (!qword_1ECE0D198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0D198);
  }

  return result;
}

uint64_t _s20LighthouseBackground25DeDiscoFieldEncodingValueO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *a2;
  v8 = *(a2 + 8);
  v10 = *(a2 + 16);
  v11 = *(a2 + 24);
  v12 = *(a2 + 32);
  v13 = *(a2 + 40);
  v34[0] = *a1;
  v34[1] = v2;
  v34[2] = v4;
  v34[3] = v5;
  v33 = v6;
  v34[4] = v6;
  v35 = v7;
  v36 = v9;
  v37 = v8;
  v38 = v10;
  v39 = v11;
  v40 = v12;
  v41 = v13;
  if (v7 <= 2)
  {
    if (v7)
    {
      if (v7 == 1)
      {
        if (v13 == 1)
        {
          if (v3 == v9 && v2 == v8)
          {
            sub_1DF190F74(v3, v2, v10, v11, v12, 1u);
            sub_1DF190F74(v3, v2, v4, v5, v33, 1u);
            sub_1DF190FDC(v34);
            return v4 == v10;
          }

          v32 = sub_1DF22B620();
          sub_1DF190F74(v9, v8, v10, v11, v12, 1u);
          sub_1DF190F74(v3, v2, v4, v5, v33, 1u);
          sub_1DF190FDC(v34);
          result = 0;
          if (v32)
          {
            return v4 == v10;
          }

          return result;
        }

        goto LABEL_33;
      }

      if (v13 == 2)
      {
        if ((v3 != v9 || v2 != v8) && (sub_1DF22B620() & 1) == 0)
        {
          sub_1DF190F74(v9, v8, v10, v11, v12, 2u);
          v24 = v3;
          v25 = v2;
          v26 = v4;
          v27 = v5;
          v28 = v33;
          v29 = 2;
          goto LABEL_34;
        }

        v14 = sub_1DF18E610(v4, v10);
        sub_1DF190F74(v9, v8, v10, v11, v12, 2u);
        v15 = v3;
        v16 = v2;
        v17 = v4;
        v18 = v5;
        v19 = v33;
        v20 = 2;
        goto LABEL_42;
      }
    }

    else if (!v13)
    {
      if (v3 == v9 && v2 == v8)
      {
        sub_1DF190F74(v3, v2, v10, v11, v12, 0);
        sub_1DF190F74(v3, v2, v4, v5, v33, 0);
        sub_1DF190FDC(v34);
        return 1;
      }

      v14 = sub_1DF22B620();
      sub_1DF190F74(v9, v8, v10, v11, v12, 0);
      v15 = v3;
      v16 = v2;
      v17 = v4;
      v18 = v5;
      v19 = v33;
      v20 = 0;
      goto LABEL_42;
    }

    goto LABEL_33;
  }

  if (v7 != 3)
  {
    if (v7 == 4)
    {
      if (v13 == 4)
      {
        if ((v3 != v9 || v2 != v8) && (sub_1DF22B620() & 1) == 0)
        {
          sub_1DF190F74(v9, v8, v10, v11, v12, 4u);
          v24 = v3;
          v25 = v2;
          v26 = v4;
          v27 = v5;
          v28 = v33;
          v29 = 4;
          goto LABEL_34;
        }

        v14 = sub_1DF18E66C(v4, v10);
        sub_1DF190F74(v9, v8, v10, v11, v12, 4u);
        v15 = v3;
        v16 = v2;
        v17 = v4;
        v18 = v5;
        v19 = v33;
        v20 = 4;
LABEL_42:
        sub_1DF190F74(v15, v16, v17, v18, v19, v20);
        sub_1DF190FDC(v34);
        return v14 & 1;
      }
    }

    else if (v13 == 5)
    {
      if ((v3 != v9 || v2 != v8) && (sub_1DF22B620() & 1) == 0)
      {
        sub_1DF190F74(v9, v8, v10, v11, v12, 5u);
        v24 = v3;
        v25 = v2;
        v26 = v4;
        v27 = v5;
        v28 = v33;
        v29 = 5;
        goto LABEL_34;
      }

      v14 = sub_1DF18E66C(v4, v10);
      sub_1DF190F74(v9, v8, v10, v11, v12, 5u);
      v15 = v3;
      v16 = v2;
      v17 = v4;
      v18 = v5;
      v19 = v33;
      v20 = 5;
      goto LABEL_42;
    }

LABEL_33:
    sub_1DF190F74(v9, v8, v10, v11, v12, v13);
    v24 = v3;
    v25 = v2;
    v26 = v4;
    v27 = v5;
    v28 = v33;
    v29 = v7;
LABEL_34:
    sub_1DF190F74(v24, v25, v26, v27, v28, v29);
    sub_1DF190FDC(v34);
    return 0;
  }

  if (v13 != 3)
  {
    goto LABEL_33;
  }

  if (v3 == v9 && v2 == v8)
  {
    sub_1DF190F74(v3, v2, v10, v11, v12, 3u);
    v22 = v2;
    v23 = v33;
    sub_1DF190F74(v3, v22, v4, v5, v33, 3u);
    sub_1DF190FDC(v34);
    result = 0;
  }

  else
  {
    v30 = sub_1DF22B620();
    sub_1DF190F74(v9, v8, v10, v11, v12, 3u);
    v31 = v2;
    v23 = v33;
    sub_1DF190F74(v3, v31, v4, v5, v33, 3u);
    sub_1DF190FDC(v34);
    result = 0;
    if ((v30 & 1) == 0)
    {
      return result;
    }
  }

  if (v4 == v10 && v5 == v11)
  {
    return v23 == v12;
  }

  return result;
}

unint64_t sub_1DF18ED00(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D2C8, &qword_1DF22FFD0);
    v3 = sub_1DF22B3F0();
    v4 = a1 + 32;

    while (1)
    {
      sub_1DF17A6A8(v4, &v13, &qword_1ECE0D1B0, &qword_1DF22F198);
      v5 = v13;
      v6 = v14;
      result = sub_1DF175254(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1DF191044(&v15, (v3[7] + 32 * result));
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1DF18EE30()
{
  result = qword_1ECE0D1C0;
  if (!qword_1ECE0D1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0D1C0);
  }

  return result;
}

unint64_t sub_1DF18EE84()
{
  result = qword_1ECE0D1C8;
  if (!qword_1ECE0D1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0D1C8);
  }

  return result;
}

uint64_t sub_1DF18EED8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE0D1D0, &qword_1DF22F1A8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DF18EF48()
{
  result = qword_1ECE0D1F0;
  if (!qword_1ECE0D1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0D1F0);
  }

  return result;
}

unint64_t sub_1DF18EFA0()
{
  result = qword_1ECE0D1F8;
  if (!qword_1ECE0D1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0D1F8);
  }

  return result;
}

__n128 __swift_memcpy66_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1DF18F038(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 66))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DF18F080(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 66) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 66) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy58_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 42) = *(a2 + 42);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1DF18F100(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 58))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DF18F148(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 58) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 58) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1DF18F1BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DF18F204(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DeDiscoTaskConfigFeatures(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for DeDiscoTaskConfigFeatures(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1DF18F3E4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 41))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 40);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1DF18F42C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TaskRequestMotionState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TaskRequestMotionState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1DF18F638()
{
  result = qword_1ECE0D200;
  if (!qword_1ECE0D200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0D200);
  }

  return result;
}

unint64_t sub_1DF18F690()
{
  result = qword_1ECE0D208;
  if (!qword_1ECE0D208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0D208);
  }

  return result;
}

unint64_t sub_1DF18F6E8()
{
  result = qword_1ECE0D210;
  if (!qword_1ECE0D210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0D210);
  }

  return result;
}

unint64_t sub_1DF18F740()
{
  result = qword_1ECE0D218;
  if (!qword_1ECE0D218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0D218);
  }

  return result;
}

unint64_t sub_1DF18F798()
{
  result = qword_1ECE0D220;
  if (!qword_1ECE0D220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0D220);
  }

  return result;
}

unint64_t sub_1DF18F7F0()
{
  result = qword_1ECE0D228;
  if (!qword_1ECE0D228)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE0D230, qword_1DF22FCC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0D228);
  }

  return result;
}

unint64_t sub_1DF18F858()
{
  result = qword_1ECE0D238;
  if (!qword_1ECE0D238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0D238);
  }

  return result;
}

unint64_t sub_1DF18F8B0()
{
  result = qword_1ECE0D240;
  if (!qword_1ECE0D240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0D240);
  }

  return result;
}

unint64_t sub_1DF18F908()
{
  result = qword_1ECE0D248;
  if (!qword_1ECE0D248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0D248);
  }

  return result;
}

unint64_t sub_1DF18F960()
{
  result = qword_1ECE0D250;
  if (!qword_1ECE0D250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0D250);
  }

  return result;
}

unint64_t sub_1DF18F9B8()
{
  result = qword_1ECE0D258;
  if (!qword_1ECE0D258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0D258);
  }

  return result;
}

unint64_t sub_1DF18FA10()
{
  result = qword_1ECE0D260;
  if (!qword_1ECE0D260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0D260);
  }

  return result;
}

unint64_t sub_1DF18FA68()
{
  result = qword_1ECE0D268;
  if (!qword_1ECE0D268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0D268);
  }

  return result;
}

unint64_t sub_1DF18FAC0()
{
  result = qword_1ECE0D270;
  if (!qword_1ECE0D270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0D270);
  }

  return result;
}

unint64_t sub_1DF18FB18()
{
  result = qword_1ECE0D278;
  if (!qword_1ECE0D278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0D278);
  }

  return result;
}

unint64_t sub_1DF18FB70()
{
  result = qword_1ECE0D280;
  if (!qword_1ECE0D280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0D280);
  }

  return result;
}

unint64_t sub_1DF18FBC8()
{
  result = qword_1ECE0D288;
  if (!qword_1ECE0D288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0D288);
  }

  return result;
}

unint64_t sub_1DF18FC1C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CD78, &qword_1DF22D770);
    v3 = sub_1DF22B3F0();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1DF175254(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1DF18FD18(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CCD0, &qword_1DF22D6C8);
    v3 = sub_1DF22B3F0();

    for (i = (a1 + 48); ; i += 8)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      v8 = i[1];
      v9 = i[2];
      v10 = i[3];
      v11 = i[4];
      v12 = i[5];

      result = sub_1DF1752CC(v5, v6, v7, v8);
      if (v14)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = (v3[6] + 32 * result);
      *v15 = v5;
      v15[1] = v6;
      v15[2] = v7;
      v15[3] = v8;
      v16 = (v3[7] + 32 * result);
      *v16 = v9;
      v16[1] = v10;
      v16[2] = v11;
      v16[3] = v12;
      v17 = v3[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v3[2] = v19;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1DF18FE5C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D2B8, &unk_1DF22FFB0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (&v22 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CD68, &unk_1DF22D760);
    v8 = sub_1DF22B3F0();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v22 = *(v3 + 72);
    v23 = v9;

    while (1)
    {
      sub_1DF17A6A8(v10, v6, &qword_1ECE0D2B8, &unk_1DF22FFB0);
      v12 = *v6;
      v11 = v6[1];
      result = sub_1DF175254(*v6, v11);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v8[6] + 16 * result);
      *v16 = v12;
      v16[1] = v11;
      v17 = v8[7];
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CD60, &qword_1DF22FFC0);
      result = sub_1DF17A710(v6 + v23, v17 + *(*(v18 - 8) + 72) * v15, &qword_1ECE0CD60, &qword_1DF22FFC0);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v22;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1DF19005C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CDA0, &qword_1DF22D7A0);
    v3 = sub_1DF22B3F0();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_1DF175254(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1DF190174(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D2B0, &qword_1DF22FF98);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CD40, &unk_1DF22D740);
    v8 = sub_1DF22B3F0();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1DF17A6A8(v10, v6, &qword_1ECE0D2B0, &qword_1DF22FF98);
      v13 = *v6;
      v12 = v6[1];
      result = sub_1DF175254(*v6, v12);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v13;
      v17[1] = v12;
      v18 = v8[7];
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CD38, &unk_1DF2387C0);
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v16, v6 + v9, v19);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1DF19036C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D2A8, &qword_1DF22FF88);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CD58, &qword_1DF22FF90);
    v8 = sub_1DF22B3F0();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1DF17A6A8(v10, v6, &qword_1ECE0D2A8, &qword_1DF22FF88);
      v12 = *v6;
      v13 = v6[1];
      result = sub_1DF175254(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = sub_1DF22AA80();
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v16, v6 + v9, v19);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1DF190580(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_1DF22B3F0();

    for (i = (a1 + 48); ; i += 2)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v15 = *i;

      result = sub_1DF175254(v7, v8);
      if (v10)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v5[6] + 16 * result);
      *v11 = v7;
      v11[1] = v8;
      *(v5[7] + 16 * result) = v15;
      v12 = v5[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v5[2] = v14;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1DF190694(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D2A0, &unk_1DF22FF70);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (&v22 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CD00, &qword_1DF22D700);
    v8 = sub_1DF22B3F0();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v22 = *(v3 + 72);
    v23 = v9;

    while (1)
    {
      sub_1DF17A6A8(v10, v6, &qword_1ECE0D2A0, &unk_1DF22FF70);
      v12 = *v6;
      v11 = v6[1];
      result = sub_1DF175254(*v6, v11);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v8[6] + 16 * result);
      *v16 = v12;
      v16[1] = v11;
      v17 = v8[7];
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CCF8, &qword_1DF22FF80);
      result = sub_1DF17A710(v6 + v23, v17 + *(*(v18 - 8) + 72) * v15, &qword_1ECE0CCF8, &qword_1DF22FF80);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v22;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}