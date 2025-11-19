uint64_t sub_1C45D1D54()
{
  type metadata accessor for Battery.GuardedData();
  v0 = swift_allocObject();
  *(v0 + 16) = 2;
  sub_1C456902C(&qword_1EC0B9A18, &qword_1C4F10808);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = v0;
  qword_1EDE2C950 = result;
  return result;
}

uint64_t sub_1C45D1DBC()
{
  v0 = IOServiceMatching("IOPMPowerSource");
  if (!v0)
  {
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v9 = sub_1C4F00978();
    sub_1C442B738(v9, qword_1EDDFECB8);
    v2 = sub_1C4F00968();
    v10 = sub_1C4F01CD8();
    if (os_log_type_enabled(v2, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1C43F8000, v2, v10, "Battery.isOnCharger: Could not read power source. Battery state unknown.", v11, 2u);
      MEMORY[0x1C6942830](v11, -1, -1);

      return 2;
    }

LABEL_31:

    return 2;
  }

  v1 = *MEMORY[0x1E696CD60];
  v2 = v0;
  MatchingService = IOServiceGetMatchingService(v1, v2);
  if (!MatchingService)
  {
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v12 = sub_1C4F00978();
    sub_1C442B738(v12, qword_1EDDFECB8);
    v13 = sub_1C4F00968();
    v14 = sub_1C4F01CD8();
    if (os_log_type_enabled(v13, v14))
    {
      v8 = 2;
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1C43F8000, v13, v14, "Battery.isOnCharger: Could not get matching service for power source. Battery state unknown.", v15, 2u);
      MEMORY[0x1C6942830](v15, -1, -1);

      return v8;
    }

    goto LABEL_31;
  }

  v4 = MatchingService;
  v5 = sub_1C4F01108();
  CFProperty = IORegistryEntryCreateCFProperty(v4, v5, *MEMORY[0x1E695E480], 0);

  if (!CFProperty)
  {
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v16 = sub_1C4F00978();
    sub_1C442B738(v16, qword_1EDDFECB8);
    v17 = sub_1C4F00968();
    v18 = sub_1C4F01CD8();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1C43F8000, v17, v18, "Battery.isOnCharger: Could not create value for is charging key. Battery state unknown.", v19, 2u);
      MEMORY[0x1C6942830](v19, -1, -1);

      return 2;
    }

    goto LABEL_31;
  }

  v7 = CFGetTypeID(CFProperty);
  if (v7 != CFBooleanGetTypeID())
  {
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v20 = sub_1C4F00978();
    sub_1C442B738(v20, qword_1EDDFECB8);
    v21 = sub_1C4F00968();
    v22 = sub_1C4F01CD8();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      v24 = "Battery.isOnCharger: unexpected type for kIOPMPSExternalConnectedKey. Charging state unknown.";
LABEL_29:
      _os_log_impl(&dword_1C43F8000, v21, v22, v24, v23, 2u);
      MEMORY[0x1C6942830](v23, -1, -1);

      swift_unknownObjectRelease();
      return 2;
    }

    goto LABEL_30;
  }

  swift_unknownObjectRetain();
  if (!swift_dynamicCast())
  {
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v25 = sub_1C4F00978();
    sub_1C442B738(v25, qword_1EDDFECB8);
    v21 = sub_1C4F00968();
    v22 = sub_1C4F01CD8();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      v24 = "Battery.isOnCharger: Failed to cast isChargingValue.";
      goto LABEL_29;
    }

LABEL_30:

    swift_unknownObjectRelease();
    goto LABEL_31;
  }

  swift_unknownObjectRelease();
  return v27;
}

void sub_1C45D229C(uint64_t a1)
{
  v2 = sub_1C45D1DBC();
  if (qword_1EDDFECD0 != -1)
  {
    sub_1C44066DC();
  }

  v3 = sub_1C4F00978();
  sub_1C442B738(v3, qword_1EDE2DF70);
  v4 = sub_1C4F00968();
  v5 = sub_1C4F01CF8();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v20 = v7;
    *v6 = 136315138;
    sub_1C44190DC();
    sub_1C442C478();
    if (!v14)
    {
      v11 = v13;
    }

    if (v9 == 2)
    {
      v15 = v10;
    }

    else
    {
      v15 = v12;
    }

    if (v9 == 2)
    {
      v16 = v8;
    }

    else
    {
      v16 = v11;
    }

    v17 = sub_1C441D828(v15, v16, &v20);

    *(v6 + 4) = v17;
    sub_1C441F46C(&dword_1C43F8000, v18, v19, "Battery: device %s");
    sub_1C440962C(v7);
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }

  *(*a1 + 16) = v2;
}

uint64_t sub_1C45D2400()
{
  v1 = *(v0 + 1);
  v2 = *v0;
  v3 = *(v0 + 1) | (v0[3] << 16);
  v4 = v0[4];
  v5 = *(v0 + 5) | (v0[7] << 16);
  v6 = *(v0 + 21) | (v0[23] << 16);
  v7 = *(v0 + 3);
  v8 = 0;
  switch(v0[40])
  {
    case 1u:
      v29 = *v0;
      v0[3];
      v0[7];
      v31 = *(v0 + 1);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C44066FC();
      v23 = sub_1C4405814();
      goto LABEL_45;
    case 3u:
      v29 = 0;
      sub_1C43FFDAC();
      MEMORY[0x1C6940010]();

      sub_1C44066FC();
      v19 = sub_1C463C080(v2 | (v3 << 8));
      MEMORY[0x1C6940010](v19);

      sub_1C44066FC();
      v10 = sub_1C463C120();
      goto LABEL_48;
    case 4u:
      v7 = v2 & 0xFFFFFFFF000000FFLL | ((*&v3 & 0xFFFFFFLL) << 8) | (v4 << 32) | (v5 << 40);
      v25 = v0[16] | ((*(v0 + 17) | (v0[19] << 16)) << 8);
      v29 = 0;
      if (v0[20])
      {
        v26 = 0x7472617453;
      }

      else
      {
        v26 = 6581829;
      }

      if (v0[20])
      {
        v27 = 0xE500000000000000;
      }

      else
      {
        v27 = 0xE300000000000000;
      }

      MEMORY[0x1C6940010](v26, v27);

      sub_1C44066FC();
      v12 = sub_1C463C1B4(v25);
      goto LABEL_44;
    case 5u:
      v29 = 0;
      sub_1C43FFDAC();
      MEMORY[0x1C6940010]();

      sub_1C44066FC();
      goto LABEL_47;
    case 6u:
      if (v2)
      {
        return 0x64656B636F4CLL;
      }

      else
      {
        return 0x64656B636F6C6E55;
      }

    case 7u:
      sub_1C441F48C();
      if (v11)
      {
        v12 = 1953069125;
      }

      else
      {
        v12 = 0x7265746E45;
      }

      v13 = 0xE400000000000000;
      v14 = 0xE500000000000000;
      goto LABEL_13;
    case 8u:
      if (v2)
      {
        return 0x656C62616E45;
      }

      else
      {
        return 0x656C6261736944;
      }

    case 9u:
    case 0xAu:
      sub_1C441F48C();
      if (v11)
      {
        v12 = 0x656E6E6F63736944;
      }

      else
      {
        v12 = 0x7463656E6E6F43;
      }

      v13 = 0xEA00000000007463;
      v14 = 0xE700000000000000;
LABEL_13:
      if (v11)
      {
        v17 = v13;
      }

      else
      {
        v17 = v14;
      }

      v18 = v17;
LABEL_44:
      MEMORY[0x1C6940010](v12, v18);

      sub_1C44066FC();
      v23 = v7;
      v24 = v1;
LABEL_45:
      MEMORY[0x1C6940010](v23, v24);
      goto LABEL_49;
    case 0xBu:
      if (v2)
      {
        return 0x64656767756C50;
      }

      else
      {
        return 0x656767756C706E55;
      }

    case 0xCu:
      v15 = *(v0 + 4);
      v29 = *v0;
      v30 = *(v0 + 1);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C44066FC();
      v16 = sub_1C4405814();
      MEMORY[0x1C6940010](v16);
      sub_1C44066FC();
      sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
      sub_1C443D694();
      v10 = sub_1C4F01048();
      goto LABEL_48;
    case 0xEu:
      v29 = 0;
      if (v0[20])
      {
        v20 = 0x7265746E45;
      }

      else
      {
        v20 = 1953069125;
      }

      if (v0[20])
      {
        v21 = 0xE500000000000000;
      }

      else
      {
        v21 = 0xE400000000000000;
      }

      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      MEMORY[0x1C6940010](v20, v21);

      sub_1C44066FC();
      v22 = sub_1C463C120();
      MEMORY[0x1C6940010](v22);

      sub_1C44066FC();
LABEL_47:
      sub_1C43FFDAC();
      goto LABEL_48;
    case 0xFu:
      sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
      sub_1C443D694();
      return sub_1C4F01048();
    case 0x12u:
    case 0x13u:
    case 0x14u:
      v29 = 0;
      sub_1C43FFDAC();
      MEMORY[0x1C6940010]();

      sub_1C44066FC();
      v10 = sub_1C4F02858();
LABEL_48:
      MEMORY[0x1C6940010](v10);

LABEL_49:
      v8 = v29;
      break;
    case 0x15u:
      return v8;
    default:
      v8 = v2 & 0xFFFFFFFF000000FFLL | ((*&v3 & 0xFFFFFFLL) << 8) | (v4 << 32) | (v5 << 40);
      v9 = *(v0 + 1);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      break;
  }

  return v8;
}

uint64_t sub_1C45D29E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1C4EFDAB8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v64[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v64[-v14];
  v16 = *(v9 + 16);
  v16(&v64[-v14], a1, v8);
  v17 = (*(v9 + 88))(v15, v8);
  if (v17 != *MEMORY[0x1E69A9450])
  {
    v26 = *MEMORY[0x1E69A9468];
    *&v67 = v13;
    if (v17 == v26)
    {
      sub_1C441911C();
      sub_1C45D3064(v27);
      goto LABEL_36;
    }

    if (v17 == *MEMORY[0x1E69A9460])
    {
      sub_1C441911C();
      sub_1C45D3140(v28);
      goto LABEL_36;
    }

    if (v17 == *MEMORY[0x1E69A93D0])
    {
      sub_1C441911C();
      sub_1C45D3270(v29);
      goto LABEL_36;
    }

    if (v17 == *MEMORY[0x1E69A9410])
    {
      sub_1C441911C();
      sub_1C45D334C(v30);
      goto LABEL_36;
    }

    if (v17 == *MEMORY[0x1E69A9438])
    {
      sub_1C441911C();
      sub_1C45D3578(v31);
      goto LABEL_36;
    }

    if (v17 == *MEMORY[0x1E69A9448])
    {
      sub_1C441911C();
      sub_1C45D379C(v32);
      goto LABEL_36;
    }

    if (v17 == *MEMORY[0x1E69A93E0])
    {
      sub_1C441911C();
      sub_1C45D3974(v33);
      goto LABEL_36;
    }

    if (v17 == *MEMORY[0x1E69A9428])
    {
      sub_1C441911C();
      sub_1C45D3AF8(v34);
      goto LABEL_36;
    }

    if (v17 == *MEMORY[0x1E69A93D8])
    {
      sub_1C441911C();
      sub_1C45D3CBC(v35);
      goto LABEL_36;
    }

    if (v17 == *MEMORY[0x1E69A9470])
    {
      sub_1C441911C();
      sub_1C45D3E40(v36);
      goto LABEL_36;
    }

    if (v17 == *MEMORY[0x1E69A9400])
    {
      sub_1C441911C();
      sub_1C45D4010(v37);
      goto LABEL_36;
    }

    if (v17 == *MEMORY[0x1E69A93F0])
    {
      sub_1C441911C();
      sub_1C45D41E0(v38);
      goto LABEL_36;
    }

    if (v17 == *MEMORY[0x1E69A93C8])
    {
      sub_1C441911C();
      sub_1C45D4370(v39);
      goto LABEL_36;
    }

    if (v17 == *MEMORY[0x1E69A9430])
    {
      sub_1C441911C();
      sub_1C45D45DC(v40);
      goto LABEL_36;
    }

    if (v17 == *MEMORY[0x1E69A9458])
    {
      sub_1C441911C();
      sub_1C45D46B8(v41);
      goto LABEL_36;
    }

    if (v17 == *MEMORY[0x1E69A9420])
    {
      sub_1C441911C();
      sub_1C45D48FC(v42);
      goto LABEL_36;
    }

    if (v17 == *MEMORY[0x1E69A9440])
    {
      LOBYTE(v25) = 16;
    }

    else
    {
      if (v17 != *MEMORY[0x1E69A9418])
      {
        if (v17 == *MEMORY[0x1E69A9408])
        {
          sub_1C441911C();
          v47 = 0;
        }

        else if (v17 == *MEMORY[0x1E69A93F8])
        {
          sub_1C441911C();
          v47 = 1;
        }

        else
        {
          if (v17 != *MEMORY[0x1E69A93E8])
          {
            (*(v9 + 8))(v15, v8);
            goto LABEL_53;
          }

          sub_1C441911C();
          v47 = 2;
        }

        sub_1C45D4A5C(v47, v46);
LABEL_36:
        v25 = v15[40];
        if (v25 != 255)
        {
          v67 = *(v15 + 1);
          v23 = *(v15 + 4);
          a2 = *v15;
          v22 = *(v15 + 1);
LABEL_38:
          v43 = *(v9 + 8);
          v44 = sub_1C4405814();
          v45(v44);

          v24 = v67;
          goto LABEL_39;
        }

LABEL_53:
        if (qword_1EDDFA668 != -1)
        {
          swift_once();
        }

        v48 = sub_1C4F00978();
        sub_1C442B738(v48, qword_1EDE2DDE0);
        v49 = v67;
        v16(v67, a1, v8);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v50 = sub_1C4F00968();
        v51 = sub_1C4F01CE8();

        if (os_log_type_enabled(v50, v51))
        {
          v52 = swift_slowAlloc();
          v66 = swift_slowAlloc();
          v68[0] = v66;
          *v52 = 136315394;
          v53 = sub_1C441D828(a2, a3, v68);
          v65 = v51;
          v54 = v53;

          *(v52 + 4) = v54;
          *(v52 + 12) = 2080;
          sub_1C45D4D4C();
          v55 = sub_1C4F02858();
          v57 = v56;
          v58 = *(v9 + 8);
          v58(v49, v8);
          v59 = sub_1C441D828(v55, v57, v68);

          *(v52 + 14) = v59;
          _os_log_impl(&dword_1C43F8000, v50, v65, "Behavior.init: Malformed identifier %s for type %s, falling back to initialize as Behavior.unknown.", v52, 0x16u);
          v60 = v66;
          swift_arrayDestroy();
          MEMORY[0x1C6942830](v60, -1, -1);
          MEMORY[0x1C6942830](v52, -1, -1);

          v61 = sub_1C4405814();
          result = (v58)(v61);
        }

        else
        {

          v62 = *(v9 + 8);
          v63 = sub_1C4405814();
          v62(v63);
          result = (v62)(v49, v8);
        }

        goto LABEL_3;
      }

      LOBYTE(v25) = 17;
    }

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v23 = 0;
    v67 = 0u;
    v22 = a3;
    goto LABEL_38;
  }

  v18 = *(v9 + 8);
  v19 = sub_1C4405814();
  v20(v19);

LABEL_3:
  a2 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0uLL;
  LOBYTE(v25) = 21;
LABEL_39:
  *a4 = a2;
  *(a4 + 8) = v22;
  *(a4 + 16) = v24;
  *(a4 + 32) = v23;
  *(a4 + 40) = v25;
  return result;
}

uint64_t sub_1C45D3064@<X0>(uint64_t a1@<X8>)
{
  sub_1C4415EA8();
  v2 = sub_1C4F02058();
  if (v2[2] == 1)
  {
    v3 = v2[4];
    v4 = v2[5];
    v5 = v2[6];
    v6 = v2[7];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    v7 = MEMORY[0x1C693FEF0](v3, v4, v5, v6);
    v9 = v8;

    v11 = 0;
  }

  else
  {

    v7 = 0;
    v9 = 0;
    v11 = -1;
  }

  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *(a1 + 40) = v11;
  return result;
}

uint64_t sub_1C45D3140@<X0>(uint64_t a1@<X8>)
{
  sub_1C4415EA8();
  v2 = sub_1C4F02058();
  v3 = v2;
  if (v2[2] != 2)
  {

    v8 = 0;
    v10 = 0;
    v16 = 0;
    v18 = 0;
    v19 = -1;
    goto LABEL_5;
  }

  v4 = v2[4];
  v5 = v2[5];
  v6 = v2[6];
  v7 = v2[7];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v8 = MEMORY[0x1C693FEF0](v4, v5, v6, v7);
  v10 = v9;

  if (v3[2] >= 2uLL)
  {
    v12 = v3[8];
    v13 = v3[9];
    v14 = v3[10];
    v15 = v3[11];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    v16 = MEMORY[0x1C693FEF0](v12, v13, v14, v15);
    v18 = v17;

    v19 = 1;
LABEL_5:
    *a1 = v8;
    *(a1 + 8) = v10;
    *(a1 + 16) = v16;
    *(a1 + 24) = v18;
    *(a1 + 32) = 0;
    *(a1 + 40) = v19;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C45D3270@<X0>(uint64_t a1@<X8>)
{
  sub_1C4415EA8();
  v2 = sub_1C4F02058();
  if (v2[2] == 1)
  {
    v3 = v2[4];
    v4 = v2[5];
    v5 = v2[6];
    v6 = v2[7];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    v7 = MEMORY[0x1C693FEF0](v3, v4, v5, v6);
    v9 = v8;

    v11 = 2;
  }

  else
  {

    v7 = 0;
    v9 = 0;
    v11 = -1;
  }

  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *(a1 + 40) = v11;
  return result;
}

unint64_t sub_1C45D334C@<X0>(uint64_t a1@<X8>)
{
  sub_1C4415EA8();
  v2 = sub_1C4F02058();
  v3 = v2;
  if (v2[2] != 3)
  {
    goto LABEL_18;
  }

  v4 = v2[4];
  v5 = v2[5];
  v6 = v2[6];
  v7 = v2[7];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v8 = MEMORY[0x1C693FEF0](v4, v5, v6, v7);
  v10 = v9;

  v11 = v8 == 0x7265746E45 && v10 == 0xE500000000000000;
  if (v11 || (sub_1C4F02938() & 1) != 0)
  {

    v13 = 1;
  }

  else
  {
    if (v8 == 1953069125 && v10 == 0xE400000000000000)
    {
    }

    else
    {
      v26 = sub_1C4F02938();

      if ((v26 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    v13 = 0;
  }

  if (v3[2] < 2uLL)
  {
    __break(1u);
    goto LABEL_24;
  }

  v14 = v3[8];
  v15 = v3[9];
  v16 = v3[10];
  v17 = v3[11];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C693FEF0](v14, v15, v16, v17);

  result = sub_1C463C2B8();
  if ((result & 0x100000000) != 0)
  {
LABEL_18:

    goto LABEL_19;
  }

  if (v3[2] >= 3uLL)
  {
    v18 = result;
    v19 = v3[12];
    v20 = v3[13];
    v21 = v3[14];
    v22 = v3[15];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    MEMORY[0x1C693FEF0](v19, v20, v21, v22);

    result = sub_1C463C3A4();
    if ((result & 0x100000000) == 0)
    {
      v23 = v18 | (result << 32);
      v24 = 3;
LABEL_20:
      *a1 = v23;
      *(a1 + 8) = v13;
      *(a1 + 24) = 0;
      *(a1 + 32) = 0;
      *(a1 + 16) = 0;
      *(a1 + 40) = v24;
      return result;
    }

LABEL_19:
    v23 = 0;
    v13 = 0;
    v24 = -1;
    goto LABEL_20;
  }

LABEL_24:
  __break(1u);
  return result;
}

unint64_t sub_1C45D3578@<X0>(uint64_t a1@<X8>)
{
  sub_1C4415EA8();
  v2 = sub_1C4F02058();
  v3 = v2;
  if (v2[2] != 3)
  {
    goto LABEL_17;
  }

  v4 = v2[4];
  v5 = v2[5];
  v6 = v2[6];
  v7 = v2[7];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v8 = MEMORY[0x1C693FEF0](v4, v5, v6, v7);
  v10 = v9;

  v11 = v8 == 0x7472617453 && v10 == 0xE500000000000000;
  if (v11 || (sub_1C4F02938() & 1) != 0)
  {

    v13 = 0x100000000;
  }

  else
  {
    if (v8 == 6581829 && v10 == 0xE300000000000000)
    {
    }

    else
    {
      v32 = sub_1C4F02938();

      if ((v32 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    v13 = 0;
  }

  if (v3[2] < 2uLL)
  {
    __break(1u);
    goto LABEL_22;
  }

  v14 = v3[8];
  v15 = v3[9];
  v16 = v3[10];
  v17 = v3[11];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v18 = MEMORY[0x1C693FEF0](v14, v15, v16, v17);
  v20 = v19;

  result = sub_1C463C500(v18, v20);
  if ((result & 0x100000000) != 0)
  {
LABEL_17:

    v26 = 0;
    v28 = 0;
    v29 = 0;
    v30 = -1;
    goto LABEL_18;
  }

  if (v3[2] >= 3uLL)
  {
    v21 = result;
    v22 = v3[12];
    v23 = v3[13];
    v24 = v3[14];
    v25 = v3[15];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    v26 = MEMORY[0x1C693FEF0](v22, v23, v24, v25);
    v28 = v27;

    v29 = v21 | v13;
    v30 = 4;
LABEL_18:
    *a1 = v26;
    *(a1 + 8) = v28;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 16) = v29;
    *(a1 + 40) = v30;
    return result;
  }

LABEL_22:
  __break(1u);
  return result;
}

unint64_t sub_1C45D379C@<X0>(uint64_t a1@<X8>)
{
  sub_1C4415EA8();
  v2 = sub_1C4F02058();
  v3 = v2;
  if (v2[2] != 2)
  {
    goto LABEL_16;
  }

  v4 = v2[4];
  v5 = v2[5];
  v6 = v2[6];
  v7 = v2[7];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v8 = MEMORY[0x1C693FEF0](v4, v5, v6, v7);
  v10 = v9;

  v11 = v8 == 0x7472617453 && v10 == 0xE500000000000000;
  if (v11 || (sub_1C4F02938() & 1) != 0)
  {

    v13 = 0x100000000;
    goto LABEL_8;
  }

  if (v8 == 6581829 && v10 == 0xE300000000000000)
  {
  }

  else
  {
    v21 = sub_1C4F02938();

    if ((v21 & 1) == 0)
    {
LABEL_16:

      goto LABEL_17;
    }
  }

  v13 = 0;
LABEL_8:
  if (v3[2] >= 2uLL)
  {
    v14 = v3[8];
    v15 = v3[9];
    v16 = v3[10];
    v17 = v3[11];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    MEMORY[0x1C693FEF0](v14, v15, v16, v17);

    result = sub_1C463C774();
    if ((result & 0x100000000) == 0)
    {
      v18 = result | v13;
      v19 = 5;
LABEL_18:
      *a1 = v18;
      *(a1 + 8) = 0u;
      *(a1 + 24) = 0u;
      *(a1 + 40) = v19;
      return result;
    }

LABEL_17:
    v18 = 0;
    v19 = -1;
    goto LABEL_18;
  }

  __break(1u);
  return result;
}

double sub_1C45D3974@<D0>(uint64_t a1@<X8>)
{
  sub_1C4415EA8();
  v2 = sub_1C4F02058();
  if (v2[2] != 1)
  {

    v11 = 0;
    goto LABEL_10;
  }

  v3 = v2[4];
  v4 = v2[5];
  v5 = v2[6];
  v6 = v2[7];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  v7 = MEMORY[0x1C693FEF0](v3, v4, v5, v6);
  v9 = v8;

  v10 = v7 == 0x64656B636F4CLL && v9 == 0xE600000000000000;
  if (v10 || (sub_1C4F02938() & 1) != 0)
  {

    v11 = 1;
    goto LABEL_8;
  }

  if (v7 == 0x64656B636F6C6E55 && v9 == 0xE800000000000000)
  {

    v11 = 0;
    goto LABEL_8;
  }

  v15 = sub_1C4F02938();

  v11 = 0;
  if ((v15 & 1) == 0)
  {
LABEL_10:
    v12 = -1;
    goto LABEL_11;
  }

LABEL_8:
  v12 = 6;
LABEL_11:
  *a1 = v11;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = v12;
  return result;
}

uint64_t sub_1C45D3AF8@<X0>(uint64_t a1@<X8>)
{
  sub_1C4415EA8();
  v2 = sub_1C4F02058();
  v3 = v2;
  if (v2[2] != 2)
  {
    goto LABEL_15;
  }

  v4 = v2[4];
  v5 = v2[5];
  v6 = v2[6];
  v7 = v2[7];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v8 = MEMORY[0x1C693FEF0](v4, v5, v6, v7);
  v10 = v9;

  v11 = v8 == 0x7265746E45 && v10 == 0xE500000000000000;
  if (v11 || (sub_1C4F02938() & 1) != 0)
  {

    v13 = 1;
    goto LABEL_8;
  }

  if (v8 == 1953069125 && v10 == 0xE400000000000000)
  {
  }

  else
  {
    v23 = sub_1C4F02938();

    if ((v23 & 1) == 0)
    {
LABEL_15:

      v18 = 0;
      v20 = 0;
      v13 = 0;
      v21 = -1;
      goto LABEL_16;
    }
  }

  v13 = 0;
LABEL_8:
  if (v3[2] >= 2uLL)
  {
    v14 = v3[8];
    v15 = v3[9];
    v16 = v3[10];
    v17 = v3[11];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    v18 = MEMORY[0x1C693FEF0](v14, v15, v16, v17);
    v20 = v19;

    v21 = 7;
LABEL_16:
    *a1 = v18;
    *(a1 + 8) = v20;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 16) = v13;
    *(a1 + 40) = v21;
    return result;
  }

  __break(1u);
  return result;
}

double sub_1C45D3CBC@<D0>(uint64_t a1@<X8>)
{
  sub_1C4415EA8();
  v2 = sub_1C4F02058();
  if (v2[2] != 1)
  {

    v11 = 0;
    goto LABEL_10;
  }

  v3 = v2[4];
  v4 = v2[5];
  v5 = v2[6];
  v6 = v2[7];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  v7 = MEMORY[0x1C693FEF0](v3, v4, v5, v6);
  v9 = v8;

  v10 = v7 == 0x656C62616E45 && v9 == 0xE600000000000000;
  if (v10 || (sub_1C4F02938() & 1) != 0)
  {

    v11 = 1;
    goto LABEL_8;
  }

  if (v7 == 0x656C6261736944 && v9 == 0xE700000000000000)
  {

    v11 = 0;
    goto LABEL_8;
  }

  v15 = sub_1C4F02938();

  v11 = 0;
  if ((v15 & 1) == 0)
  {
LABEL_10:
    v12 = -1;
    goto LABEL_11;
  }

LABEL_8:
  v12 = 8;
LABEL_11:
  *a1 = v11;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = v12;
  return result;
}

uint64_t sub_1C45D3E40@<X0>(uint64_t a1@<X8>)
{
  sub_1C4415EA8();
  v2 = sub_1C4F02058();
  v3 = v2;
  if (v2[2] != 2)
  {
    goto LABEL_15;
  }

  v4 = v2[4];
  v5 = v2[5];
  v6 = v2[6];
  v7 = v2[7];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v8 = MEMORY[0x1C693FEF0](v4, v5, v6, v7);
  v10 = v9;

  v11 = v8 == 0x7463656E6E6F43 && v10 == 0xE700000000000000;
  if (v11 || (sub_1C4F02938() & 1) != 0)
  {

    v13 = 1;
    goto LABEL_8;
  }

  if (v8 == 0x656E6E6F63736944 && v10 == 0xEA00000000007463)
  {
  }

  else
  {
    v23 = sub_1C4F02938();

    if ((v23 & 1) == 0)
    {
LABEL_15:

      v18 = 0;
      v20 = 0;
      v13 = 0;
      v21 = -1;
      goto LABEL_16;
    }
  }

  v13 = 0;
LABEL_8:
  if (v3[2] >= 2uLL)
  {
    v14 = v3[8];
    v15 = v3[9];
    v16 = v3[10];
    v17 = v3[11];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    v18 = MEMORY[0x1C693FEF0](v14, v15, v16, v17);
    v20 = v19;

    v21 = 9;
LABEL_16:
    *a1 = v18;
    *(a1 + 8) = v20;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 16) = v13;
    *(a1 + 40) = v21;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C45D4010@<X0>(uint64_t a1@<X8>)
{
  sub_1C4415EA8();
  v2 = sub_1C4F02058();
  v3 = v2;
  if (v2[2] != 2)
  {
    goto LABEL_15;
  }

  v4 = v2[4];
  v5 = v2[5];
  v6 = v2[6];
  v7 = v2[7];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v8 = MEMORY[0x1C693FEF0](v4, v5, v6, v7);
  v10 = v9;

  v11 = v8 == 0x7463656E6E6F43 && v10 == 0xE700000000000000;
  if (v11 || (sub_1C4F02938() & 1) != 0)
  {

    v13 = 1;
    goto LABEL_8;
  }

  if (v8 == 0x656E6E6F63736944 && v10 == 0xEA00000000007463)
  {
  }

  else
  {
    v23 = sub_1C4F02938();

    if ((v23 & 1) == 0)
    {
LABEL_15:

      v18 = 0;
      v20 = 0;
      v13 = 0;
      v21 = -1;
      goto LABEL_16;
    }
  }

  v13 = 0;
LABEL_8:
  if (v3[2] >= 2uLL)
  {
    v14 = v3[8];
    v15 = v3[9];
    v16 = v3[10];
    v17 = v3[11];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    v18 = MEMORY[0x1C693FEF0](v14, v15, v16, v17);
    v20 = v19;

    v21 = 10;
LABEL_16:
    *a1 = v18;
    *(a1 + 8) = v20;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 16) = v13;
    *(a1 + 40) = v21;
    return result;
  }

  __break(1u);
  return result;
}

double sub_1C45D41E0@<D0>(uint64_t a1@<X8>)
{
  sub_1C4415EA8();
  v2 = sub_1C4F02058();
  if (v2[2] != 1)
  {

    v11 = 0;
    goto LABEL_10;
  }

  v3 = v2[4];
  v4 = v2[5];
  v5 = v2[6];
  v6 = v2[7];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  v7 = MEMORY[0x1C693FEF0](v3, v4, v5, v6);
  v9 = v8;

  v10 = v7 == 0x64656767756C50 && v9 == 0xE700000000000000;
  if (v10 || (sub_1C4F02938() & 1) != 0)
  {

    v11 = 1;
    goto LABEL_8;
  }

  if (v7 == 0x656767756C706E55 && v9 == 0xE900000000000064)
  {

    v11 = 0;
    goto LABEL_8;
  }

  v15 = sub_1C4F02938();

  v11 = 0;
  if ((v15 & 1) == 0)
  {
LABEL_10:
    v12 = -1;
    goto LABEL_11;
  }

LABEL_8:
  v12 = 11;
LABEL_11:
  *a1 = v11;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = v12;
  return result;
}

uint64_t sub_1C45D4370@<X0>(uint64_t a1@<X8>)
{
  sub_1C4415EA8();
  v2 = sub_1C4F02058();
  v3 = v2;
  if (*(v2 + 16) != 3)
  {

    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v6 = 0;
    v21 = -1;
LABEL_13:
    *a1 = v17;
    *(a1 + 8) = v18;
    *(a1 + 16) = v19;
    *(a1 + 24) = v20;
    *(a1 + 32) = v6;
    *(a1 + 40) = v21;
    return result;
  }

  v33 = *(v2 + 96);
  v35 = *(v2 + 112);
  v36 = *(v2 + 120);
  sub_1C45D4DA4();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v4 = sub_1C4F02058();

  v5 = *(v4 + 16);
  if (v5)
  {
    v34 = MEMORY[0x1E69E7CC0];
    sub_1C44CD9C0();
    v6 = v34;
    v7 = (v4 + 56);
    do
    {
      v8 = *(v7 - 3);
      v9 = *(v7 - 2);
      v10 = *(v7 - 1);
      v11 = *v7;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v12 = MEMORY[0x1C693FEF0](v8, v9, v10, v11);
      v14 = v13;

      v15 = *(v34 + 16);
      if (v15 >= *(v34 + 24) >> 1)
      {
        sub_1C44CD9C0();
      }

      *(v34 + 16) = v15 + 1;
      v16 = v34 + 16 * v15;
      *(v16 + 32) = v12;
      *(v16 + 40) = v14;
      v7 += 4;
      --v5;
    }

    while (v5);
  }

  else
  {

    v6 = MEMORY[0x1E69E7CC0];
  }

  if (v3[2])
  {
    v23 = v3[4];
    v24 = v3[5];
    v25 = v3[6];
    v26 = v3[7];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v17 = MEMORY[0x1C693FEF0](v23, v24, v25, v26);
    v18 = v27;

    if (v3[2] >= 2uLL)
    {
      v28 = v3[8];
      v29 = v3[9];
      v30 = v3[10];
      v31 = v3[11];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

      v19 = MEMORY[0x1C693FEF0](v28, v29, v30, v31);
      v20 = v32;

      v21 = 12;
      goto LABEL_13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C45D45DC@<X0>(uint64_t a1@<X8>)
{
  sub_1C4415EA8();
  v2 = sub_1C4F02058();
  if (v2[2] == 1)
  {
    v3 = v2[4];
    v4 = v2[5];
    v5 = v2[6];
    v6 = v2[7];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    v7 = MEMORY[0x1C693FEF0](v3, v4, v5, v6);
    v9 = v8;

    v11 = 13;
  }

  else
  {

    v7 = 0;
    v9 = 0;
    v11 = -1;
  }

  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *(a1 + 40) = v11;
  return result;
}

unint64_t sub_1C45D46B8@<X0>(uint64_t a1@<X8>)
{
  sub_1C4415EA8();
  v2 = sub_1C4F02058();
  v3 = v2;
  if (v2[2] != 3)
  {
    goto LABEL_18;
  }

  v4 = v2[4];
  v5 = v2[5];
  v6 = v2[6];
  v7 = v2[7];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v8 = MEMORY[0x1C693FEF0](v4, v5, v6, v7);
  v10 = v9;

  v11 = v8 == 0x7265746E45 && v10 == 0xE500000000000000;
  if (v11 || (sub_1C4F02938() & 1) != 0)
  {

    v13 = 0x100000000;
  }

  else
  {
    if (v8 == 1953069125 && v10 == 0xE400000000000000)
    {
    }

    else
    {
      v24 = sub_1C4F02938();

      if ((v24 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    v13 = 0;
  }

  if (v3[2] < 2uLL)
  {
    __break(1u);
    goto LABEL_25;
  }

  v14 = v3[8];
  v15 = v3[9];
  v16 = v3[10];
  v17 = v3[11];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C693FEF0](v14, v15, v16, v17);

  result = sub_1C463C3A4();
  if ((result & 0x100000000) != 0)
  {
LABEL_18:

    v21 = 0;
    v22 = 0;
    v25 = 0;
    v26 = -1;
LABEL_21:
    *a1 = v21;
    *(a1 + 8) = v22;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 16) = v25;
    *(a1 + 40) = v26;
    return result;
  }

  if (v3[2] >= 3uLL)
  {
    v18 = result;
    v19 = v3[12];
    v20 = v3[13];
    if ((v20 ^ v19) >> 14)
    {
      v27 = v3[14];
      v28 = v3[15];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

      v21 = MEMORY[0x1C693FEF0](v19, v20, v27, v28);
      v22 = v29;
    }

    else
    {

      v21 = 0;
      v22 = 0;
    }

    v25 = v18 | v13;
    v26 = 14;
    goto LABEL_21;
  }

LABEL_25:
  __break(1u);
  return result;
}

double sub_1C45D48FC@<D0>(uint64_t a1@<X8>)
{
  sub_1C4415EA8();
  v2 = sub_1C4F02058();
  v3 = *(v2 + 16);
  if (v3)
  {
    v16 = MEMORY[0x1E69E7CC0];
    sub_1C44CD9C0();
    v4 = v16;
    v5 = (v2 + 56);
    do
    {
      v6 = *(v5 - 3);
      v7 = *(v5 - 2);
      v8 = *(v5 - 1);
      v9 = *v5;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v10 = MEMORY[0x1C693FEF0](v6, v7, v8, v9);
      v12 = v11;

      v13 = *(v16 + 16);
      if (v13 >= *(v16 + 24) >> 1)
      {
        sub_1C44CD9C0();
      }

      *(v16 + 16) = v13 + 1;
      v14 = v16 + 16 * v13;
      *(v14 + 32) = v10;
      *(v14 + 40) = v12;
      v5 += 4;
      --v3;
    }

    while (v3);
  }

  else
  {

    v4 = MEMORY[0x1E69E7CC0];
  }

  *a1 = v4;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 15;
  return result;
}

void sub_1C45D4A5C(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  sub_1C4415EA8();
  v4 = sub_1C4F02058();
  v5 = v4;
  if (v4[2] != 2)
  {
    goto LABEL_22;
  }

  v6 = v4[4];
  v7 = v4[5];
  v8 = v4[6];
  v9 = v4[7];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v10 = MEMORY[0x1C693FEF0](v6, v7, v8, v9);
  v12 = v11;

  v13 = v10 == 0x7265746E45 && v12 == 0xE500000000000000;
  if (v13 || (sub_1C4F02938() & 1) != 0)
  {

    v14 = 1;
  }

  else
  {
    if (v10 == 1953069125 && v12 == 0xE400000000000000)
    {
    }

    else
    {
      v25 = sub_1C4F02938();

      if ((v25 & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    v14 = 0;
  }

  if (v5[2] < 2uLL)
  {
    __break(1u);
    goto LABEL_22;
  }

  v15 = v5[8];
  v16 = v5[9];
  v18 = v5[10];
  v17 = v5[11];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  if (!((v16 ^ v15) >> 14))
  {
LABEL_22:

LABEL_23:
    v21 = 0;
    v14 = 0;
    v23 = -1;
    goto LABEL_24;
  }

  v19 = sub_1C45D538C(v15, v16, v18, v17, 10);
  if ((v20 & 0x100) != 0)
  {
    v19 = sub_1C45D4DF8(v15, v16, v18, v17, 10);
  }

  v21 = v19;
  v22 = v20;

  if (v22)
  {
    goto LABEL_23;
  }

  if (!a1)
  {
    v23 = 18;
    goto LABEL_24;
  }

  if (a1 == 2)
  {
    v23 = 20;
    goto LABEL_24;
  }

  if (a1 != 1)
  {
    if (qword_1EDDFA668 != -1)
    {
      swift_once();
    }

    v26 = sub_1C4F00978();
    sub_1C442B738(v26, qword_1EDE2DDE0);
    v27 = sub_1C4F00968();
    v28 = sub_1C4F01CE8();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 134217984;
      *(v29 + 4) = a1;
      _os_log_impl(&dword_1C43F8000, v27, v28, "Behavior: geoHashBehavior - Unexpected geohash level: %ld", v29, 0xCu);
      MEMORY[0x1C6942830](v29, -1, -1);
    }

    goto LABEL_23;
  }

  v23 = 19;
LABEL_24:
  *a2 = v21;
  *(a2 + 8) = v14;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = 0;
  *(a2 + 40) = v23;
}

unint64_t sub_1C45D4D4C()
{
  result = qword_1EDDEFFB0;
  if (!qword_1EDDEFFB0)
  {
    sub_1C4EFDAB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDEFFB0);
  }

  return result;
}

unint64_t sub_1C45D4DA4()
{
  result = qword_1EDDF0708;
  if (!qword_1EDDF0708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF0708);
  }

  return result;
}

unsigned __int8 *sub_1C45D4DF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int64_t a5)
{
  v71 = a1;
  v72 = a2;
  v73 = a3;
  v74 = a4;
  sub_1C45D5468();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  result = sub_1C4F01438();
  v8 = result;
  v9 = v7;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_1C4AA0E70();
    v42 = v41;

    v9 = v42;
    if ((v42 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v9 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v10 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1C4F022F8();
    }

    v11 = *result;
    if (v11 == 43)
    {
      if (v10 >= 1)
      {
        v24 = v10 - 1;
        if (v10 != 1)
        {
          v25 = a5 + 48;
          v26 = a5 + 55;
          v27 = a5 + 87;
          if (a5 > 10)
          {
            v25 = 58;
          }

          else
          {
            v27 = 97;
            v26 = 65;
          }

          if (result)
          {
            v16 = 0;
            v28 = result + 1;
            do
            {
              v29 = *v28;
              if (v29 < 0x30 || v29 >= v25)
              {
                if (v29 < 0x41 || v29 >= v26)
                {
                  v20 = 0;
                  if (v29 < 0x61 || v29 >= v27)
                  {
                    goto LABEL_129;
                  }

                  v30 = -87;
                }

                else
                {
                  v30 = -55;
                }
              }

              else
              {
                v30 = -48;
              }

              if (!is_mul_ok(v16, a5))
              {
                goto LABEL_128;
              }

              v31 = v16 * a5;
              v32 = v29 + v30;
              v23 = __CFADD__(v31, v32);
              v16 = v31 + v32;
              if (v23)
              {
                goto LABEL_128;
              }

              ++v28;
              --v24;
            }

            while (v24);
LABEL_47:
            v20 = v16;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

LABEL_128:
        v20 = 0;
        goto LABEL_129;
      }

      goto LABEL_133;
    }

    if (v11 != 45)
    {
      if (v10)
      {
        v33 = a5 + 48;
        v34 = a5 + 55;
        v35 = a5 + 87;
        if (a5 > 10)
        {
          v33 = 58;
        }

        else
        {
          v35 = 97;
          v34 = 65;
        }

        if (result)
        {
          v36 = 0;
          do
          {
            v37 = *result;
            if (v37 < 0x30 || v37 >= v33)
            {
              if (v37 < 0x41 || v37 >= v34)
              {
                v20 = 0;
                if (v37 < 0x61 || v37 >= v35)
                {
                  goto LABEL_129;
                }

                v38 = -87;
              }

              else
              {
                v38 = -55;
              }
            }

            else
            {
              v38 = -48;
            }

            if (!is_mul_ok(v36, a5))
            {
              goto LABEL_128;
            }

            v39 = v36 * a5;
            v40 = v37 + v38;
            v23 = __CFADD__(v39, v40);
            v36 = v39 + v40;
            if (v23)
            {
              goto LABEL_128;
            }

            ++result;
            --v10;
          }

          while (v10);
          v20 = v36;
          goto LABEL_129;
        }

        goto LABEL_67;
      }

      goto LABEL_128;
    }

    if (v10 >= 1)
    {
      v12 = v10 - 1;
      if (v10 != 1)
      {
        v13 = a5 + 48;
        v14 = a5 + 55;
        v15 = a5 + 87;
        if (a5 > 10)
        {
          v13 = 58;
        }

        else
        {
          v15 = 97;
          v14 = 65;
        }

        if (result)
        {
          v16 = 0;
          v17 = result + 1;
          while (1)
          {
            v18 = *v17;
            if (v18 < 0x30 || v18 >= v13)
            {
              if (v18 < 0x41 || v18 >= v14)
              {
                v20 = 0;
                if (v18 < 0x61 || v18 >= v15)
                {
                  goto LABEL_129;
                }

                v19 = -87;
              }

              else
              {
                v19 = -55;
              }
            }

            else
            {
              v19 = -48;
            }

            if (!is_mul_ok(v16, a5))
            {
              goto LABEL_128;
            }

            v21 = v16 * a5;
            v22 = v18 + v19;
            v23 = v21 >= v22;
            v16 = v21 - v22;
            if (!v23)
            {
              goto LABEL_128;
            }

            ++v17;
            if (!--v12)
            {
              goto LABEL_47;
            }
          }
        }

LABEL_67:
        v20 = 0;
LABEL_129:

        return v20;
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v43 = HIBYTE(v9) & 0xF;
  v71 = v8;
  v72 = v9 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v43)
      {
        v45 = 0;
        v63 = a5 + 48;
        v64 = a5 + 55;
        v65 = a5 + 87;
        if (a5 > 10)
        {
          v63 = 58;
        }

        else
        {
          v65 = 97;
          v64 = 65;
        }

        v66 = &v71;
        while (1)
        {
          v67 = *v66;
          if (v67 < 0x30 || v67 >= v63)
          {
            if (v67 < 0x41 || v67 >= v64)
            {
              v20 = 0;
              if (v67 < 0x61 || v67 >= v65)
              {
                goto LABEL_129;
              }

              v68 = -87;
            }

            else
            {
              v68 = -55;
            }
          }

          else
          {
            v68 = -48;
          }

          if (!is_mul_ok(v45, a5))
          {
            goto LABEL_128;
          }

          v69 = v45 * a5;
          v70 = v67 + v68;
          v23 = __CFADD__(v69, v70);
          v45 = v69 + v70;
          if (v23)
          {
            goto LABEL_128;
          }

          v66 = (v66 + 1);
          if (!--v43)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v43)
    {
      v44 = v43 - 1;
      if (v44)
      {
        v45 = 0;
        v46 = a5 + 48;
        v47 = a5 + 55;
        v48 = a5 + 87;
        if (a5 > 10)
        {
          v46 = 58;
        }

        else
        {
          v48 = 97;
          v47 = 65;
        }

        v49 = &v71 + 1;
        while (1)
        {
          v50 = *v49;
          if (v50 < 0x30 || v50 >= v46)
          {
            if (v50 < 0x41 || v50 >= v47)
            {
              v20 = 0;
              if (v50 < 0x61 || v50 >= v48)
              {
                goto LABEL_129;
              }

              v51 = -87;
            }

            else
            {
              v51 = -55;
            }
          }

          else
          {
            v51 = -48;
          }

          if (!is_mul_ok(v45, a5))
          {
            goto LABEL_128;
          }

          v52 = v45 * a5;
          v53 = v50 + v51;
          v23 = v52 >= v53;
          v45 = v52 - v53;
          if (!v23)
          {
            goto LABEL_128;
          }

          ++v49;
          if (!--v44)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v43)
  {
    v54 = v43 - 1;
    if (v54)
    {
      v45 = 0;
      v55 = a5 + 48;
      v56 = a5 + 55;
      v57 = a5 + 87;
      if (a5 > 10)
      {
        v55 = 58;
      }

      else
      {
        v57 = 97;
        v56 = 65;
      }

      v58 = &v71 + 1;
      do
      {
        v59 = *v58;
        if (v59 < 0x30 || v59 >= v55)
        {
          if (v59 < 0x41 || v59 >= v56)
          {
            v20 = 0;
            if (v59 < 0x61 || v59 >= v57)
            {
              goto LABEL_129;
            }

            v60 = -87;
          }

          else
          {
            v60 = -55;
          }
        }

        else
        {
          v60 = -48;
        }

        if (!is_mul_ok(v45, a5))
        {
          goto LABEL_128;
        }

        v61 = v45 * a5;
        v62 = v59 + v60;
        v23 = __CFADD__(v61, v62);
        v45 = v61 + v62;
        if (v23)
        {
          goto LABEL_128;
        }

        ++v58;
        --v54;
      }

      while (v54);
LABEL_127:
      v20 = v45;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_1C45D538C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, int64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    result = 0;
    goto LABEL_8;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v12 = HIBYTE(a4) & 0xF;
    v15[0] = a3;
    v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v15;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v12 = a3 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = sub_1C4F022F8();
  }

  result = sub_1C45D54BC(v11, v12, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v17 = v14 & 1;
LABEL_8:
    v16 = (a4 & 0x1000000000000000) != 0;
  }

  return result;
}

unint64_t sub_1C45D5468()
{
  result = qword_1EDDF0710;
  if (!qword_1EDDF0710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF0710);
  }

  return result;
}

uint64_t sub_1C45D54BC(uint64_t result, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, int64_t a7)
{
  v11 = a3;
  v12 = result;
  v13 = (a5 >> 59) & 1;
  if ((a6 & 0x1000000000000000) == 0)
  {
    LOBYTE(v13) = 1;
  }

  v14 = 4 << v13;
  v15 = a3 & 0xC;
  v16 = a3;
  if (v15 == 4 << v13)
  {
    result = sub_1C4B9AAA8(a3, a5, a6);
    v16 = result;
  }

  v17 = HIBYTE(a6) & 0xF;
  if ((a6 & 0x1000000000000000) != 0)
  {
    v19 = a5 & 0xFFFFFFFFFFFFLL;
    if ((a6 & 0x2000000000000000) != 0)
    {
      v19 = HIBYTE(a6) & 0xF;
    }

    if (v19 < v16 >> 16)
    {
      goto LABEL_97;
    }

    result = sub_1C4F01388();
    v18 = result;
    v17 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v18 = v16 >> 16;
  }

  if (v15 == v14)
  {
    v20 = v17;
    result = sub_1C4B9AAA8(v11, a5, a6);
    v17 = v20;
    v11 = result;
  }

  if ((a4 & 0xC) == v14)
  {
    v21 = a4;
    v22 = v17;
    result = sub_1C4B9AAA8(v21, a5, a6);
    v17 = v22;
    a4 = result;
    if ((a6 & 0x1000000000000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((a6 & 0x1000000000000000) == 0)
  {
LABEL_11:
    result = (a4 >> 16) - (v11 >> 16);
    goto LABEL_22;
  }

  v23 = a5 & 0xFFFFFFFFFFFFLL;
  if ((a6 & 0x2000000000000000) != 0)
  {
    v23 = v17;
  }

  if (v23 < v11 >> 16)
  {
    goto LABEL_93;
  }

  if (v23 < a4 >> 16)
  {
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  result = sub_1C4F01388();
LABEL_22:
  v24 = v18 + result;
  if (__OFADD__(v18, result))
  {
    __break(1u);
    goto LABEL_92;
  }

  if (v24 < v18)
  {
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  v25 = (v18 + v12);
  if (!v12)
  {
    v25 = 0;
  }

  v26 = *v25;
  if (v26 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v39 = a7 + 48;
        v40 = a7 + 55;
        v41 = a7 + 87;
        if (a7 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        if (v25)
        {
          v30 = 0;
          v42 = v25 + 1;
          v43 = result - 1;
          do
          {
            v44 = *v42;
            if (v44 < 0x30 || v44 >= v39)
            {
              if (v44 < 0x41 || v44 >= v40)
              {
                v35 = 0;
                if (v44 < 0x61 || v44 >= v41)
                {
                  return v35;
                }

                v45 = -87;
              }

              else
              {
                v45 = -55;
              }
            }

            else
            {
              v45 = -48;
            }

            if (!is_mul_ok(v30, a7))
            {
              return 0;
            }

            v46 = v30 * a7;
            v47 = v44 + v45;
            v38 = __CFADD__(v46, v47);
            v30 = v46 + v47;
            if (v38)
            {
              return 0;
            }

            ++v42;
            --v43;
          }

          while (v43);
          return v30;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_96;
  }

  if (v26 != 45)
  {
    if (v24 != v18)
    {
      v48 = a7 + 48;
      v49 = a7 + 55;
      v50 = a7 + 87;
      if (a7 > 10)
      {
        v48 = 58;
      }

      else
      {
        v50 = 97;
        v49 = 65;
      }

      if (v25)
      {
        v30 = 0;
        while (1)
        {
          v51 = *v25;
          if (v51 < 0x30 || v51 >= v48)
          {
            if (v51 < 0x41 || v51 >= v49)
            {
              v35 = 0;
              if (v51 < 0x61 || v51 >= v50)
              {
                return v35;
              }

              v52 = -87;
            }

            else
            {
              v52 = -55;
            }
          }

          else
          {
            v52 = -48;
          }

          if (!is_mul_ok(v30, a7))
          {
            return 0;
          }

          v53 = v30 * a7;
          v54 = v51 + v52;
          v38 = __CFADD__(v53, v54);
          v30 = v53 + v54;
          if (v38)
          {
            return 0;
          }

          ++v25;
          if (!--result)
          {
            return v30;
          }
        }
      }

      return 0;
    }

    return 0;
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v27 = a7 + 48;
      v28 = a7 + 55;
      v29 = a7 + 87;
      if (a7 > 10)
      {
        v27 = 58;
      }

      else
      {
        v29 = 97;
        v28 = 65;
      }

      if (v25)
      {
        v30 = 0;
        v31 = v25 + 1;
        v32 = result - 1;
        while (1)
        {
          v33 = *v31;
          if (v33 < 0x30 || v33 >= v27)
          {
            if (v33 < 0x41 || v33 >= v28)
            {
              v35 = 0;
              if (v33 < 0x61 || v33 >= v29)
              {
                return v35;
              }

              v34 = -87;
            }

            else
            {
              v34 = -55;
            }
          }

          else
          {
            v34 = -48;
          }

          if (!is_mul_ok(v30, a7))
          {
            return 0;
          }

          v36 = v30 * a7;
          v37 = v33 + v34;
          v38 = v36 >= v37;
          v30 = v36 - v37;
          if (!v38)
          {
            return 0;
          }

          ++v31;
          if (!--v32)
          {
            return v30;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
  return result;
}

uint64_t sub_1C45D58F8()
{
  v0 = sub_1C4EFDAB8();
  v1 = sub_1C43FCDF8(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  sub_1C43FBCC4();
  v8 = v7 - v6;
  sub_1C45D5A24(v7 - v6);
  sub_1C4403D50(&qword_1EDDEFFB0);
  v9 = sub_1C4F02858();
  (*(v3 + 8))(v8, v0);
  MEMORY[0x1C6940010](540686880, 0xE400000000000000);
  v10 = sub_1C45D2400();
  MEMORY[0x1C6940010](v10);

  return v9;
}

uint64_t sub_1C45D5A24@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 40);
  v4 = sub_1C4EFDAB8();
  v5 = *(*(v4 - 8) + 104);
  v6 = **(&unk_1E81EF290 + v3);

  return v5(a1, v6, v4);
}

void sub_1C45D5A9C()
{
  sub_1C43FBD3C();
  v2 = *v0;
  v3 = *(v0 + 1) | (v0[3] << 16);
  v4 = v0[4];
  v5 = *(v0 + 5) | (v0[7] << 16);
  v6 = v0[8];
  v7 = v0[16];
  v8 = *(v0 + 17) | (v0[19] << 16);
  v9 = v0[20];
  v10 = *(v0 + 21) | (v0[23] << 16);
  v11 = *(v0 + 3);
  v12 = *(v0 + 4);
  switch(v0[40])
  {
    case 1u:
      if (v1[40] != 1)
      {
        goto LABEL_91;
      }

      v37 = sub_1C442C48C(v0, v1);
      v41 = *(v40 + 16);
      v42 = *(v40 + 24);
      v44 = v37 == v43 && v39 == v38;
      if (!v44 && (sub_1C440F2B0() & 1) == 0)
      {
        goto LABEL_91;
      }

      if ((v7 & 0xFFFFFFFF000000FFLL | ((*&v8 & 0xFFFFFFLL) << 8) | (v9 << 32) | (v10 << 40)) == v41 && v11 == v42)
      {
        goto LABEL_91;
      }

      goto LABEL_71;
    case 2u:
      if (v1[40] != 2)
      {
        goto LABEL_91;
      }

      goto LABEL_67;
    case 3u:
      if (v1[40] != 3 || (v2 | (v3 << 8)) != *v1 || (v4 | (v5 << 8)) != *(v1 + 1))
      {
        goto LABEL_91;
      }

      goto LABEL_90;
    case 4u:
      if (v1[40] != 4)
      {
        goto LABEL_91;
      }

      v17 = sub_1C442C48C(v0, v1);
      v20 = *(v19 + 16);
      v21 = *(v19 + 20);
      goto LABEL_14;
    case 5u:
      if (v1[40] == 5 && (v2 | (v3 << 8)) == *v1)
      {
        v46 = v4 ^ v1[4];
      }

      goto LABEL_91;
    case 6u:
      if (v1[40] != 6)
      {
        goto LABEL_91;
      }

      goto LABEL_87;
    case 7u:
      if (v1[40] != 7)
      {
        goto LABEL_91;
      }

      goto LABEL_80;
    case 8u:
      if (v1[40] == 8)
      {
        goto LABEL_87;
      }

      goto LABEL_91;
    case 9u:
      if (v1[40] != 9)
      {
        goto LABEL_91;
      }

      goto LABEL_80;
    case 0xAu:
      if (v1[40] == 10)
      {
LABEL_80:
        v54 = sub_1C442C48C(v0, v1);
        v58 = *(v57 + 16);
        if (v54 != v59 || v56 != v55)
        {
          sub_1C440F2B0();
        }
      }

      goto LABEL_91;
    case 0xBu:
      if (v1[40] == 11)
      {
LABEL_87:
        v61 = v2 ^ *v1;
      }

      goto LABEL_91;
    case 0xCu:
      if (v1[40] == 12)
      {
        v23 = sub_1C442C48C(v0, v1);
        v27 = v26[2];
        v28 = v26[3];
        v29 = v26[4];
        v31 = v23 == v30 && v25 == v24;
        if (v31 || (sub_1C440F2B0() & 1) != 0)
        {
          v32 = (v7 & 0xFFFFFFFF000000FFLL | ((*&v8 & 0xFFFFFFLL) << 8) | (v9 << 32) | (v10 << 40)) == v27 && v11 == v28;
          if (v32 || (sub_1C4F02938() & 1) != 0)
          {
            goto LABEL_37;
          }
        }
      }

      goto LABEL_91;
    case 0xDu:
      if (v1[40] == 13)
      {
        goto LABEL_67;
      }

      goto LABEL_91;
    case 0xEu:
      if (v1[40] != 14)
      {
        goto LABEL_91;
      }

      v13 = v6 | ((*(v0 + 9) | ((*(v0 + 13) | (v0[15] << 16)) << 32)) << 8);
      v14 = *(v1 + 1);
      v15 = *(v1 + 4);
      v16 = v1[20];
      if (!v13 || !v14)
      {
        goto LABEL_91;
      }

      v17 = v2 & 0xFFFFFFFF000000FFLL | ((*&v3 & 0xFFFFFFLL) << 8) | (v4 << 32) | (v5 << 40);
      v18 = *v1;
LABEL_14:
      if (v17 != v18 || v13 != v14)
      {
        sub_1C440F2B0();
      }

      goto LABEL_91;
    case 0xFu:
      if (v1[40] != 15)
      {
        goto LABEL_91;
      }

      v33 = *v1;
LABEL_37:
      sub_1C43FE9F0();

      sub_1C47E7154(v34, v35);
      return;
    case 0x10u:
      if (v1[40] != 16)
      {
        goto LABEL_91;
      }

      goto LABEL_67;
    case 0x11u:
      if (v1[40] != 17)
      {
        goto LABEL_91;
      }

      goto LABEL_67;
    case 0x12u:
      if (v1[40] != 18)
      {
        goto LABEL_91;
      }

      goto LABEL_89;
    case 0x13u:
      if (v1[40] == 19)
      {
        goto LABEL_89;
      }

      goto LABEL_91;
    case 0x14u:
      if (v1[40] != 20)
      {
        goto LABEL_91;
      }

LABEL_89:
      if ((v2 & 0xFFFFFFFF000000FFLL | ((*&v3 & 0xFFFFFFLL) << 8) | (v4 << 32) | (v5 << 40)) == *v1)
      {
LABEL_90:
        v62 = v6 ^ v1[8];
      }

      goto LABEL_91;
    case 0x15u:
      if (v1[40] == 21)
      {
        v47 = vorrq_s8(*(v1 + 8), *(v1 + 24));
        *v1;
      }

      goto LABEL_91;
    default:
      if (v1[40])
      {
        goto LABEL_91;
      }

LABEL_67:
      v48 = sub_1C442C48C(v0, v1);
      if (v48 == v51 && v50 == v49)
      {
LABEL_91:
        sub_1C43FE9F0();
      }

      else
      {
LABEL_71:
        sub_1C43FE9F0();

        sub_1C4F02938();
      }

      return;
  }
}

void sub_1C45D5EBC()
{
  v1 = *v0;
  v2 = *(v0 + 1) | (v0[3] << 16);
  v3 = v0[4];
  v4 = *(v0 + 5) | (v0[7] << 16);
  v5 = v0[16];
  v6 = *(v0 + 17) | (v0[19] << 16);
  v7 = v0[20];
  v8 = *(v0 + 21) | (v0[23] << 16);
  v9 = *(v0 + 3);
  switch(v0[40])
  {
    case 1u:
      MEMORY[0x1C69417F0](2);
      sub_1C4F01298();
      goto LABEL_26;
    case 2u:
      sub_1C4419130();
      v10 = 3;
      goto LABEL_25;
    case 3u:
      MEMORY[0x1C69417F0](4);
      sub_1C4F02B38();
      sub_1C4F02B38();
      goto LABEL_37;
    case 4u:
      sub_1C4406718();
      MEMORY[0x1C69417F0](5);
      sub_1C4402120();
      goto LABEL_8;
    case 5u:
      MEMORY[0x1C69417F0](6);
      sub_1C4F02B38();
      goto LABEL_37;
    case 6u:
      v12 = 7;
      goto LABEL_34;
    case 7u:
      sub_1C4419130();
      v13 = 8;
      goto LABEL_32;
    case 8u:
      v12 = 9;
      goto LABEL_34;
    case 9u:
      sub_1C4419130();
      v13 = 10;
      goto LABEL_32;
    case 0xAu:
      sub_1C4419130();
      v13 = 11;
LABEL_32:
      MEMORY[0x1C69417F0](v13);
      sub_1C4402120();
      sub_1C4F01298();
      goto LABEL_37;
    case 0xBu:
      v12 = 12;
LABEL_34:
      MEMORY[0x1C69417F0](v12);
      goto LABEL_37;
    case 0xCu:
      v19 = *(v0 + 4);
      MEMORY[0x1C69417F0](13);
      sub_1C43FD168();
      sub_1C4F01298();
      sub_1C4F01298();
      goto LABEL_14;
    case 0xDu:
      sub_1C4419130();
      v10 = 14;
      goto LABEL_25;
    case 0xEu:
      v11 = v0[8] | ((*(v0 + 9) | ((*(v0 + 13) | (v0[15] << 16)) << 32)) << 8);
      MEMORY[0x1C69417F0](15);
      if (v11)
      {
        sub_1C4F02B18();
        sub_1C43FD168();
LABEL_8:
        sub_1C4F01298();
      }

      else
      {
        sub_1C4F02B18();
      }

      sub_1C4F02B38();
      goto LABEL_37;
    case 0xFu:
      sub_1C4406718();
      MEMORY[0x1C69417F0](16);
      sub_1C4402120();
LABEL_14:
      sub_1C4410198();

      sub_1C49EFD8C(v14, v15);
      return;
    case 0x10u:
      sub_1C4419130();
      v10 = 17;
      goto LABEL_25;
    case 0x11u:
      sub_1C4419130();
      v10 = 18;
      goto LABEL_25;
    case 0x12u:
      sub_1C4406718();
      v17 = 19;
      goto LABEL_36;
    case 0x13u:
      sub_1C4406718();
      v17 = 20;
      goto LABEL_36;
    case 0x14u:
      sub_1C4406718();
      v17 = 21;
LABEL_36:
      MEMORY[0x1C69417F0](v17);
      MEMORY[0x1C6941830](v9);
LABEL_37:
      sub_1C4F02B18();
      goto LABEL_38;
    case 0x15u:
      MEMORY[0x1C69417F0](0);
LABEL_38:
      sub_1C4410198();
      break;
    default:
      sub_1C4419130();
      v10 = 1;
LABEL_25:
      MEMORY[0x1C69417F0](v10);
      sub_1C4402120();
LABEL_26:
      sub_1C4410198();

      sub_1C4F01298();
      break;
  }
}

uint64_t sub_1C45D61E4()
{
  sub_1C4F02AF8();
  sub_1C45D5EBC();
  return sub_1C4F02B68();
}

uint64_t sub_1C45D6224()
{
  v2 = *v0;
  *v3 = v0[1];
  *&v3[9] = *(v0 + 25);
  return sub_1C45D58F8();
}

uint64_t sub_1C45D626C()
{
  sub_1C4F02AF8();
  sub_1C45D5EBC();
  return sub_1C4F02B68();
}

uint64_t sub_1C45D62A8()
{
  v1 = v0;
  v2 = sub_1C4EF9CD8();
  v3 = sub_1C43FCDF8(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBCC4();
  v10 = v9 - v8;
  v11 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  sub_1C496C3A0(0xD000000000000017, 0x80000001C4F8C060, v11);
  (*(v5 + 16))(v10, *(v1 + 64) + OBJC_IVAR____TtC24IntelligencePlatformCore15BehaviorContext_date, v2);
  v12 = sub_1C4EF9BF8();
  v13 = *(v5 + 8);
  v14 = sub_1C43FD168();
  v15(v14);
  v16 = [v11 stringFromDate_];

  v17 = sub_1C4F01138();
  MEMORY[0x1C6940010](540686880, 0xE400000000000000);
  v20 = *(v1 + 16);
  *v21 = *(v1 + 32);
  *&v21[9] = *(v1 + 41);
  v18 = sub_1C45D58F8();
  MEMORY[0x1C6940010](v18);

  return v17;
}

__n128 sub_1C45D644C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C4EF9CD8();
  v5 = sub_1C43FCDF8(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBCC4();
  v10 = *(v7 + 16);
  v11 = sub_1C43FD168();
  v12(v11);
  v13 = type metadata accessor for BehaviorContext();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  v16 = swift_allocObject();
  sub_1C45D689C();
  (*(v7 + 8))(a2, v4);
  v17 = swift_allocObject();
  v18 = *(a1 + 16);
  *(v17 + 16) = *a1;
  *(v17 + 32) = v18;
  result = *(a1 + 25);
  *(v17 + 41) = result;
  *(v17 + 64) = v16;
  return result;
}

void sub_1C45D6588()
{
  sub_1C43FBD3C();
  v1 = v0;
  v3 = v2;
  v4 = sub_1C4EF9CD8();
  v5 = sub_1C43FCDF8(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBD08();
  v12 = (v10 - v11);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v22[-v14 - 16];
  v16 = *(v7 + 16);
  v16(&v22[-v14 - 16], *(v3 + 64) + OBJC_IVAR____TtC24IntelligencePlatformCore15BehaviorContext_date, v4);
  v16(v12, *(v1 + 64) + OBJC_IVAR____TtC24IntelligencePlatformCore15BehaviorContext_date, v4);
  v17 = sub_1C4EF9C68();
  v18 = *(v7 + 8);
  v18(v12, v4);
  v18(v15, v4);
  if (v17)
  {
    v19 = *(v3 + 32);
    v21 = *(v3 + 16);
    *v22 = v19;
    *&v22[9] = *(v3 + 41);
    v20 = *(v1 + 32);
    v23 = *(v1 + 16);
    *v24 = v20;
    *&v24[9] = *(v1 + 41);
    sub_1C45D5A9C();
  }

  sub_1C43FE9F0();
}

uint64_t sub_1C45D670C()
{
  sub_1C45A23B4(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));
  v1 = *(v0 + 64);

  return v0;
}

uint64_t sub_1C45D6740()
{
  sub_1C45D670C();

  return swift_deallocClassInstance();
}

uint64_t sub_1C45D67BC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_1C45D6588();
  return v4 & 1;
}

uint64_t sub_1C45D67E4()
{
  v1 = OBJC_IVAR____TtC24IntelligencePlatformCore15BehaviorContext____lazy_storage___cachedLastBehaviorByTypes;
  if (*(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore15BehaviorContext____lazy_storage___cachedLastBehaviorByTypes))
  {
    v2 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore15BehaviorContext____lazy_storage___cachedLastBehaviorByTypes);
  }

  else
  {
    sub_1C4EFDAB8();
    sub_1C456902C(&qword_1EC0B9A20, &unk_1C4F10DF0);
    sub_1C4403D50(&qword_1EDDEFFD0);
    v2 = sub_1C4F00F28();
    v3 = *(v0 + v1);
    *(v0 + v1) = v2;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return v2;
}

void sub_1C45D689C()
{
  sub_1C43FBD3C();
  v94 = v1;
  v3 = v2;
  v5 = v4;
  v108 = sub_1C4EFDAB8();
  v6 = sub_1C43FCDF8(v108);
  v101 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBD08();
  v107 = v10 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v93 = &v90 - v13;
  v14 = sub_1C456902C(&qword_1EC0B9A50, &unk_1C4F10BB0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  sub_1C43FBD08();
  v18 = v16 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v99 = &v90 - v20;
  v21 = *v3;
  v22 = *(v3 + 8);
  v23 = *(v3 + 9);
  v24 = v0 + OBJC_IVAR____TtC24IntelligencePlatformCore15BehaviorContext_motionState;
  *v24 = 0;
  *(v24 + 8) = 256;
  v25 = OBJC_IVAR____TtC24IntelligencePlatformCore15BehaviorContext_cachedContextIntervals;
  sub_1C456902C(&qword_1EC0B9A58, &unk_1C4F10E60);
  sub_1C45A2528();
  *(v0 + v25) = sub_1C4F00F28();
  *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore15BehaviorContext____lazy_storage___cachedLastBehaviorByTypes) = 0;
  v26 = OBJC_IVAR____TtC24IntelligencePlatformCore15BehaviorContext_date;
  v27 = sub_1C4EF9CD8();
  v90 = *(v27 - 8);
  v91 = v27;
  v28 = *(v90 + 16);
  v106 = v0;
  v92 = v5;
  v28(v0 + v26, v5);
  if ((v23 & 1) == 0)
  {
    v29 = v106 + OBJC_IVAR____TtC24IntelligencePlatformCore15BehaviorContext_motionState;
    *v29 = v21;
    *(v29 + 8) = v22;
    *(v29 + 9) = 0;
  }

  if (!v94)
  {
    (*(v90 + 8))(v92, v91);
LABEL_27:
    sub_1C43FE9F0();
    return;
  }

  v30 = 0;
  v32 = v94 + 64;
  v31 = *(v94 + 64);
  v33 = 1 << *(v94 + 32);
  v34 = -1;
  if (v33 < 64)
  {
    v34 = ~(-1 << v33);
  }

  v35 = v34 & v31;
  v96 = OBJC_IVAR____TtC24IntelligencePlatformCore15BehaviorContext____lazy_storage___cachedLastBehaviorByTypes;
  v97 = v94 + 64;
  v36 = (v33 + 63) >> 6;
  v100 = v101 + 16;
  v102 = (v101 + 32);
  v98 = (v101 + 8);
  v109 = v18;
  v95 = v36;
  if ((v34 & v31) != 0)
  {
    while (1)
    {
      v37 = v30;
LABEL_12:
      v38 = __clz(__rbit64(v35));
      v35 &= v35 - 1;
      v39 = v38 | (v37 << 6);
      v41 = v93;
      v40 = v94;
      v42 = v101;
      v43 = v108;
      (*(v101 + 16))(v93, *(v94 + 48) + *(v101 + 72) * v39, v108);
      v44 = *(v40 + 56) + 48 * v39;
      v45 = *v44;
      v46 = *(v44 + 8);
      v47 = *(v44 + 16);
      v103 = *(v44 + 24);
      v104 = v47;
      v48 = *(v44 + 32);
      v105 = *(v44 + 40);
      v49 = sub_1C456902C(&qword_1EC0B9A30, &unk_1C4F10E20);
      v50 = v109 + *(v49 + 48);
      (*(v42 + 32))(v109, v41, v43);
      *v50 = v45;
      *(v50 + 8) = v46;
      v52 = v103;
      v51 = v104;
      *(v50 + 16) = v104;
      *(v50 + 24) = v52;
      *(v50 + 32) = v48;
      LOBYTE(v41) = v105;
      *(v50 + 40) = v105;
      v18 = v109;
      sub_1C440BAA8(v109, 0, 1, v49);
      sub_1C45D7F64(v45, v46, v51, v52, v48, v41);
LABEL_13:
      v53 = v99;
      sub_1C45D8084(v18, v99);
      v54 = sub_1C456902C(&qword_1EC0B9A30, &unk_1C4F10E20);
      if (sub_1C44157D4(v53, 1, v54) == 1)
      {
        break;
      }

      v55 = v53 + *(v54 + 48);
      v57 = *v55;
      v56 = *(v55 + 8);
      v58 = *(v55 + 16);
      v59 = *(v55 + 32);
      v103 = *(v55 + 24);
      v104 = v59;
      v105 = *(v55 + 40);
      (*v102)(v107, v53, v108);
      v60 = sub_1C45D67E4();
      swift_isUniquelyReferenced_nonNull_native();
      v110 = v60;
      sub_1C457AD28();
      if (__OFADD__(*(v60 + 16), (v62 & 1) == 0))
      {
        goto LABEL_29;
      }

      v63 = v61;
      v64 = v62;
      sub_1C456902C(&qword_1EC0B9A48, &unk_1C4F10BA0);
      if (sub_1C4F02458())
      {
        sub_1C457AD28();
        if ((v64 & 1) != (v66 & 1))
        {
          goto LABEL_31;
        }

        v63 = v65;
      }

      v67 = v110;
      if (v64)
      {
        v68 = (v110[7] + 48 * v63);
        v69 = *v68;
        v70 = v68[1];
        v71 = v68[2];
        v72 = v68[3];
        v73 = v68[4];
        sub_1C4431F38(v68);
        v75 = *(v74 + 40);
        *(v74 + 40) = v105;
        sub_1C45D8070(v76, v77, v78, v79, v80, v75);
        (*v98)(v107, v108);
      }

      else
      {
        v110[(v63 >> 6) + 8] |= 1 << v63;
        v81 = v101;
        v83 = v107;
        v82 = v108;
        (*(v101 + 16))(v67[6] + *(v101 + 72) * v63, v107, v108);
        sub_1C4431F38((v67[7] + 48 * v63));
        *(v84 + 40) = v105;
        (*(v81 + 8))(v83, v82);
        v85 = v67[2];
        v86 = __OFADD__(v85, 1);
        v87 = v85 + 1;
        if (v86)
        {
          goto LABEL_30;
        }

        v67[2] = v87;
      }

      v88 = *(v106 + v96);
      *(v106 + v96) = v67;

      v18 = v109;
      v32 = v97;
      v36 = v95;
      if (!v35)
      {
        goto LABEL_8;
      }
    }

    (*(v90 + 8))(v92, v91);

    goto LABEL_27;
  }

LABEL_8:
  while (1)
  {
    v37 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    if (v37 >= v36)
    {
      v89 = sub_1C456902C(&qword_1EC0B9A30, &unk_1C4F10E20);
      sub_1C440BAA8(v18, 1, 1, v89);
      v35 = 0;
      goto LABEL_13;
    }

    v35 = *(v32 + 8 * v37);
    ++v30;
    if (v35)
    {
      v30 = v37;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  sub_1C4F029F8();
  __break(1u);
}

void sub_1C45D6F00(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C4EF9CD8();
  v4 = sub_1C43FCDF8(v3);
  v41 = v5;
  v42 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FBCC4();
  v38 = v9 - v8;
  v10 = sub_1C4428DA0();
  v11 = 0;
  v12 = a2 & 0xC000000000000001;
  v46 = MEMORY[0x1E69E7CC0];
  while (v10 != v11)
  {
    if (v12)
    {
      v14 = MEMORY[0x1C6940F90](v11, a2);
    }

    else
    {
      if (v11 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_30;
      }

      v13 = *(a2 + 8 * v11 + 32);
    }

    v15 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
      return;
    }

    v16 = *(v14 + OBJC_IVAR____TtC24IntelligencePlatformCore15BehaviorContext_motionState);
    v17 = *(v14 + OBJC_IVAR____TtC24IntelligencePlatformCore15BehaviorContext_motionState + 8);
    v18 = *(v14 + OBJC_IVAR____TtC24IntelligencePlatformCore15BehaviorContext_motionState + 9);

    ++v11;
    if ((v18 & 1) == 0)
    {
      v19 = v46;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = *(v46 + 16);
        sub_1C458AF6C();
        v19 = v24;
      }

      v20 = *(v19 + 16);
      v21 = v20 + 1;
      if (v20 >= *(v19 + 24) >> 1)
      {
        sub_1C458AF6C();
        v21 = v20 + 1;
        v19 = v25;
      }

      *(v19 + 16) = v21;
      v46 = v19;
      v22 = v19 + 16 * v20;
      *(v22 + 32) = v16;
      *(v22 + 40) = v17 & 1;
      v11 = v15;
    }
  }

  v26 = *(v46 + 16);
  if (v26 <= 1)
  {
    if (v26)
    {
      v28 = *(v46 + 32);
      v29 = *(v46 + 40);
    }

    else
    {
      v28 = 0;
      v29 = 1;
    }

    v37 = v29;

    v30 = 0;
    v31 = MEMORY[0x1E69E7CC8];
    while (1)
    {
      if (v10 == v30)
      {

        (*(v41 + 16))(v38, a1, v42);
        v44 = v28;
        v45 = v37;
        v35 = *(v39 + 48);
        v36 = *(v39 + 52);
        swift_allocObject();
        sub_1C45D689C();
        (*(v41 + 8))(a1, v42);
        return;
      }

      sub_1C4431590(v30, v12 == 0);
      if (v12)
      {
        MEMORY[0x1C6940F90](v30, a2);
      }

      else
      {
        v32 = *(a2 + 8 * v30 + 32);
      }

      if (__OFADD__(v30, 1))
      {
        goto LABEL_31;
      }

      v33 = sub_1C45D67E4();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v44 = v31;
      sub_1C45D7AAC(v33, sub_1C45D7A04, 0, isUniquelyReferenced_nonNull_native, &v44);
      if (v40)
      {
        break;
      }

      v31 = v44;
      ++v30;
    }

    (*(v41 + 8))(a1, v42);
  }

  else
  {

    sub_1C45D801C();
    swift_allocError();
    *v27 = 1;
    swift_willThrow();
    (*(v41 + 8))(a1, v42);
  }
}

uint64_t sub_1C45D72D0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = sub_1C45D67E4();
  if (*(v8 + 16) && (sub_1C457AD28(), (v10 & 1) != 0))
  {
    v11 = *(v8 + 56) + 48 * v9;
    v12 = *v11;
    v13 = *(v11 + 8);
    v14 = *(v11 + 16);
    v15 = *(v11 + 24);
    v16 = *(v11 + 32);
    v17 = *(v11 + 40);
    v18 = sub_1C43FFDB8();
    sub_1C45D7F64(v18, v19, v20, v21, v22, v23);
  }

  else
  {

    v24 = a2[3];
    v25 = a2[4];
    sub_1C4409678(a2, v24);
    v26 = (*(v25 + 16))(v4 + OBJC_IVAR____TtC24IntelligencePlatformCore15BehaviorContext_date, a1, v24, v25);
    if (v26)
    {
      v12 = *(v26 + 16);
      v13 = *(v26 + 24);
      v14 = *(v26 + 32);
      v15 = *(v26 + 40);
      v16 = *(v26 + 48);
      v17 = *(v26 + 56);
      v27 = sub_1C43FFDB8();
      sub_1C45D7F78(v27, v28, v29, v30, v31, v32);
    }

    else
    {
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = -1;
    }

    v33 = OBJC_IVAR____TtC24IntelligencePlatformCore15BehaviorContext____lazy_storage___cachedLastBehaviorByTypes;
    v34 = *(v4 + OBJC_IVAR____TtC24IntelligencePlatformCore15BehaviorContext____lazy_storage___cachedLastBehaviorByTypes);
    v35 = sub_1C43FFDB8();
    sub_1C45D7F64(v35, v36, v37, v38, v39, v40);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    swift_isUniquelyReferenced_nonNull_native();
    sub_1C4660870();
    v41 = *(v4 + v33);
    *(v4 + v33) = v34;
  }

  *a3 = v12;
  *(a3 + 8) = v13;
  *(a3 + 16) = v14;
  *(a3 + 24) = v15;
  *(a3 + 32) = v16;
  *(a3 + 40) = v17;
  return result;
}

void sub_1C45D7464(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FBD3C();
  a19 = v21;
  a20 = v22;
  v23 = v20;
  v25 = v24;
  v27 = v26;
  v28 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v31 = &a9 - v30;
  v32 = (v23 + OBJC_IVAR____TtC24IntelligencePlatformCore15BehaviorContext_motionState);
  if (*(v23 + OBJC_IVAR____TtC24IntelligencePlatformCore15BehaviorContext_motionState + 9))
  {
    v33 = v25[3];
    v34 = v25[4];
    sub_1C4409678(v25, v33);
    v35 = OBJC_IVAR____TtC24IntelligencePlatformCore15BehaviorContext_date;
    sub_1C4EF9BE8();
    v36 = sub_1C4EF9CD8();
    sub_1C440BAA8(v31, 0, 1, v36);
    v37 = (*(v34 + 40))(v31, v23 + v35, 0, 1, v33, v34);
    sub_1C44686E4(v31);
    v38 = sub_1C4428DA0(v37);
    v39 = v38 == 0;
    if (v38)
    {
      sub_1C4431590(0, (v37 & 0xC000000000000001) == 0);
      if ((v37 & 0xC000000000000001) != 0)
      {
        v42 = MEMORY[0x1C6940F90](0, v37);

        v41 = *(v42 + OBJC_IVAR____TtC24IntelligencePlatformCore16MotionStateEvent_motionState);
        swift_unknownObjectRelease();
      }

      else
      {
        v40 = *(v37 + 32);

        v41 = *(v40 + OBJC_IVAR____TtC24IntelligencePlatformCore16MotionStateEvent_motionState);
      }
    }

    else
    {

      v41 = 0;
    }

    *v32 = v41;
    *(v32 + 8) = v38 == 0;
    *(v32 + 9) = 0;
  }

  else
  {
    v41 = *v32;
    v39 = *(v32 + 8);
  }

  *v27 = v41;
  *(v27 + 8) = v39 & 1;
  sub_1C43FE9F0();
}

uint64_t sub_1C45D7654(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC24IntelligencePlatformCore15BehaviorContext_cachedContextIntervals;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (*(v4 + 16) && (v5 = sub_1C457ADD8(a1), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + 8 * v5);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  else
  {
    v7 = 0;
  }

  swift_endAccess();
  return v7;
}

uint64_t sub_1C45D76DC()
{
  v1 = OBJC_IVAR____TtC24IntelligencePlatformCore15BehaviorContext_date;
  v2 = sub_1C4EF9CD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore15BehaviorContext_cachedContextIntervals);

  v4 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore15BehaviorContext____lazy_storage___cachedLastBehaviorByTypes);

  return v0;
}

uint64_t sub_1C45D775C()
{
  sub_1C45D76DC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for BehaviorContext()
{
  result = qword_1EDDF68C0;
  if (!qword_1EDDF68C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C45D7808()
{
  result = sub_1C4EF9CD8();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C45D78B8(uint64_t a1)
{
  if ((*(a1 + 40) & 0x1Fu) <= 0x14)
  {
    return *(a1 + 40) & 0x1F;
  }

  else
  {
    return (*a1 + 21);
  }
}

__n128 sub_1C45D78D4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1C45D78E8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xEB && *(a1 + 41))
    {
      v2 = *a1 + 234;
    }

    else
    {
      v3 = *(a1 + 40);
      if (v3 <= 0x15)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C45D7928(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xEA)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 235;
    if (a3 >= 0xEB)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xEB)
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

uint64_t sub_1C45D7978(uint64_t result, unsigned int a2)
{
  if (a2 >= 0x15)
  {
    *result = a2 - 21;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    LOBYTE(a2) = 21;
  }

  *(result + 40) = a2;
  return result;
}

unint64_t sub_1C45D79B0()
{
  result = qword_1EDDFA608;
  if (!qword_1EDDFA608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFA608);
  }

  return result;
}

double sub_1C45D7A04@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (a1 + *(sub_1C456902C(&qword_1EC0B9A30, &unk_1C4F10E20) + 48));
  v5 = a2 + *(sub_1C456902C(&qword_1EC0B9A38, &qword_1C4F10B90) + 48);
  v6 = v4[1];
  v14 = *v4;
  v15[0] = v6;
  *(v15 + 9) = *(v4 + 25);
  sub_1C46C3744(a2, a1, &v14, v11);
  v7 = v12;
  v8 = v13;
  result = *v11;
  v10 = v11[1];
  *v5 = v11[0];
  *(v5 + 16) = v10;
  *(v5 + 32) = v7;
  *(v5 + 40) = v8;
  return result;
}

void sub_1C45D7AAC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v53 = a5;
  v8 = sub_1C4EFDAB8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v54 = v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1C456902C(&qword_1EC0B9A40, &qword_1C4F10B98);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = v46 - v14;
  sub_1C46C3CC4(v57);
  v46[3] = v57[6];
  v47 = v9;
  v52 = (v9 + 32);
  v46[2] = a1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v46[1] = a3;

  v48 = v8;
  while (1)
  {
    sub_1C45E709C(v15);
    v16 = sub_1C456902C(&qword_1EC0B9A38, &qword_1C4F10B90);
    if (sub_1C44157D4(v15, 1, v16) == 1)
    {
      sub_1C449BB0C();

      return;
    }

    v17 = &v15[*(v16 + 48)];
    v18 = *v52;
    v19 = v15;
    (*v52)(v54, v15, v8);
    v21 = *v17;
    v20 = *(v17 + 1);
    v22 = *(v17 + 2);
    v23 = *(v17 + 4);
    v49 = *(v17 + 3);
    v50 = v23;
    v51 = v17[40];
    v24 = *v53;
    sub_1C457AD28();
    v27 = v26;
    v28 = v24[2];
    v29 = (v25 & 1) == 0;
    if (__OFADD__(v28, v29))
    {
      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      sub_1C4F029F8();
      __break(1u);
      goto LABEL_20;
    }

    v30 = v25;
    if (v24[3] < v28 + v29)
    {
      break;
    }

    if (a4)
    {
      if (v25)
      {
        goto LABEL_13;
      }
    }

    else
    {
      sub_1C456902C(&qword_1EC0B9A48, &unk_1C4F10BA0);
      sub_1C4F02468();
      if (v30)
      {
        goto LABEL_13;
      }
    }

LABEL_10:
    v35 = v54;
    v36 = *v53;
    *(*v53 + 8 * (v27 >> 6) + 64) |= 1 << v27;
    v8 = v48;
    v18((v36[6] + *(v47 + 72) * v27), v35, v48);
    v37 = v36[7] + 48 * v27;
    *v37 = v21;
    *(v37 + 8) = v20;
    v39 = v49;
    v38 = v50;
    *(v37 + 16) = v22;
    *(v37 + 24) = v39;
    *(v37 + 32) = v38;
    *(v37 + 40) = v51;
    v40 = v36[2];
    v41 = __OFADD__(v40, 1);
    v42 = v40 + 1;
    if (v41)
    {
      goto LABEL_18;
    }

    v36[2] = v42;
    a4 = 1;
    v15 = v19;
  }

  v31 = v53;
  sub_1C4679760();
  v32 = *v31;
  sub_1C457AD28();
  if ((v30 & 1) != (v34 & 1))
  {
    goto LABEL_19;
  }

  v27 = v33;
  if ((v30 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_13:
  sub_1C45D801C();
  v43 = swift_allocError();
  *v44 = 0;
  swift_willThrow();

  v58 = v43;
  v45 = v43;
  sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_1C45D8070(v21, v20, v22, v49, v50, v51);
    (*(v47 + 8))(v54, v48);
    sub_1C449BB0C();

    return;
  }

LABEL_20:
  v55 = 0;
  v56 = 0xE000000000000000;
  sub_1C4F02248();
  MEMORY[0x1C6940010](0xD00000000000001BLL, 0x80000001C4F8C0A0);
  sub_1C4F02438();
  MEMORY[0x1C6940010](39, 0xE100000000000000);
  sub_1C4F024A8();
  __break(1u);
}

uint64_t sub_1C45D7F64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6 != -1)
  {
    return sub_1C45D7F78(a1, a2, a3, a4, a5, a6);
  }

  return a1;
}

uint64_t sub_1C45D7F78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  switch(a6)
  {
    case 0:
    case 2:
    case 4:
    case 7:
    case 9:
    case 10:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
      goto LABEL_2;
    case 1:
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      goto LABEL_2;
    case 12:
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
LABEL_2:

      result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1C45D801C()
{
  result = qword_1EC0B9A28;
  if (!qword_1EC0B9A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B9A28);
  }

  return result;
}

uint64_t sub_1C45D8070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6 != -1)
  {
    return sub_1C45A23B4(a1, a2, a3, a4, a5, a6);
  }

  return a1;
}

uint64_t sub_1C45D8084(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0B9A50, &unk_1C4F10BB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for BehaviorContextError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C45D81D4()
{
  result = qword_1EC0B9A60;
  if (!qword_1EC0B9A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B9A60);
  }

  return result;
}

uint64_t sub_1C45D8228()
{
  v2 = v0;
  v3 = *(v0 + 40);
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  sub_1C4406748();
  result = sub_1C44BAADC();
  if (v1)
  {
    if (qword_1EDDFA668 != -1)
    {
      sub_1C4406728();
    }

    v8 = sub_1C4F00978();
    sub_1C442B738(v8, qword_1EDE2DDE0);

    v9 = v1;
    v10 = sub_1C4F00968();
    v11 = sub_1C4F01CD8();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = sub_1C4408660();
      v21 = sub_1C43FFD34();
      *v12 = 136315394;
      v14 = sub_1C4404BB0();
      v17 = sub_1C441D828(v14, v15, v16);
      sub_1C43FD174(v17);
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 14) = v18;
      *v13 = v18;
      sub_1C4416D88(&dword_1C43F8000, v19, v20, "BehaviorCountLimiter: Unable to retrieve count for %s: %@");
      sub_1C45B4B90(v13);
      sub_1C43FBE2C();
      sub_1C440962C(v21);
      sub_1C43FBE2C();
      sub_1C43FBE2C();
    }

    else
    {
    }

    return 0;
  }

  else if (v7)
  {
    return 0;
  }

  return result;
}

void sub_1C45D83AC()
{
  v2 = v0;
  v3 = *(v0 + 40);
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  sub_1C4406748();
  sub_1C448B80C();
  if (v1)
  {
    if (qword_1EDDFA668 != -1)
    {
      sub_1C4406728();
    }

    v6 = sub_1C4F00978();
    sub_1C442B738(v6, qword_1EDE2DDE0);

    v7 = v1;
    v8 = sub_1C4F00968();
    v9 = sub_1C4F01CD8();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = sub_1C4408660();
      v19 = sub_1C43FFD34();
      *v10 = 136315394;
      v12 = sub_1C4404BB0();
      v15 = sub_1C441D828(v12, v13, v14);
      sub_1C43FD174(v15);
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 14) = v16;
      *v11 = v16;
      sub_1C4416D88(&dword_1C43F8000, v17, v18, "BehaviorCountLimiter: Unable to write count for %s: %@");
      sub_1C45B4B90(v11);
      sub_1C43FBE2C();
      sub_1C440962C(v19);
      sub_1C43FBE2C();
      sub_1C43FBE2C();
    }

    else
    {
    }
  }
}

void *sub_1C45D8548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v11 = *v4;
  v12 = type metadata accessor for Configuration();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  sub_1C43FBCC4();
  v16 = v15 - v14;
  *(v6 + 48) = 0;
  sub_1C44098F0(a1, v15 - v14);
  v17 = type metadata accessor for KeyValueStore();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  v20 = KeyValueStore.init(config:domain:)(v16, 0xD000000000000014, 0x80000001C4F10C80);
  if (v5)
  {

    sub_1C4467948(a1);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v21 = v20;
    sub_1C4467948(a1);
    v6[4] = a3;
    v6[5] = v21;
    v6[2] = a4;
    v6[3] = a2;
  }

  return v6;
}

uint64_t sub_1C45D86A0()
{
  if ((*(v0 + 48) & 1) != 0 || sub_1C45D8228() >= *(v0 + 16))
  {
    result = 1;
    *(v0 + 48) = 1;
  }

  else
  {
    v1 = sub_1C45D8228();
    v2 = __OFADD__(v1, 1);
    result = v1 + 1;
    if (v2)
    {
      __break(1u);
    }

    else
    {
      sub_1C45D83AC();
      return 0;
    }
  }

  return result;
}

BOOL sub_1C45D86F0()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 40);
  return KeyValueStore.delete(key:)(v1);
}

uint64_t sub_1C45D871C()
{
  sub_1C45C5E78();

  return swift_deallocClassInstance();
}

void sub_1C45D87C0()
{
  v2 = v0;
  v3 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore24BehaviorTypeCountLimiter_kvStore);
  v4 = *(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore24BehaviorTypeCountLimiter_uuid);
  v5 = *(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore24BehaviorTypeCountLimiter_uuid + 8);
  sub_1C4406748();
  sub_1C44BAADC();
  if (v1)
  {
    if (qword_1EDDFA668 != -1)
    {
      sub_1C4406728();
    }

    v6 = sub_1C4F00978();
    sub_1C442B738(v6, qword_1EDE2DDE0);

    v7 = v1;
    v8 = sub_1C4F00968();
    v9 = sub_1C4F01CD8();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = sub_1C43FFD34();
      v11 = sub_1C4408660();
      v22 = swift_slowAlloc();
      *v10 = 136315650;
      sub_1C4EFDAB8();
      sub_1C442C4A4(&qword_1EDDEFFB0);
      v12 = sub_1C4F02858();
      v14 = sub_1C441D828(v12, v13, &v22);

      *(v10 + 4) = v14;
      *(v10 + 12) = 2080;
      v15 = sub_1C4404BB0();
      v18 = sub_1C441D828(v15, v16, v17);
      sub_1C4431F4C(v18);
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 24) = v19;
      *v11 = v19;
      sub_1C440DE84(&dword_1C43F8000, v20, v21, "BehaviorTypeCountLimiter: Unable to retrieve count for %s and %s: %@");
      sub_1C45B4B90(v11);
      sub_1C43FBE2C();
      sub_1C4402C14();
      sub_1C43FBE2C();
      sub_1C43FBE2C();
    }

    else
    {
    }
  }

  sub_1C43FBF50();
}

void sub_1C45D89A8()
{
  v2 = v0;
  v3 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore24BehaviorTypeCountLimiter_kvStore);
  v4 = *(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore24BehaviorTypeCountLimiter_uuid);
  v5 = *(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore24BehaviorTypeCountLimiter_uuid + 8);
  sub_1C4406748();
  sub_1C448B80C();
  if (!v1)
  {
    goto LABEL_6;
  }

  if (qword_1EDDFA668 != -1)
  {
    sub_1C4406728();
  }

  v6 = sub_1C4F00978();
  sub_1C442B738(v6, qword_1EDE2DDE0);

  v7 = v1;
  v8 = sub_1C4F00968();
  v9 = sub_1C4F01CD8();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = sub_1C43FFD34();
    v11 = sub_1C4408660();
    v24 = swift_slowAlloc();
    *v10 = 136315650;
    sub_1C4EFDAB8();
    sub_1C442C4A4(&qword_1EDDEFFB0);
    v12 = sub_1C4F02858();
    v14 = sub_1C441D828(v12, v13, &v24);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    v15 = sub_1C4404BB0();
    v18 = sub_1C441D828(v15, v16, v17);
    sub_1C4431F4C(v18);
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 24) = v19;
    *v11 = v19;
    sub_1C440DE84(&dword_1C43F8000, v20, v21, "BehaviorTypeCountLimiter: Unable to write count for %s and %s: %@");
    sub_1C45B4B90(v11);
    sub_1C43FBE2C();
    sub_1C4402C14();
    sub_1C43FBE2C();
    sub_1C43FBE2C();

LABEL_6:
    sub_1C43FBF50();
    return;
  }

  sub_1C43FBF50();
}

uint64_t *sub_1C45D8BA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *v5;
  v11 = type metadata accessor for Configuration();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  sub_1C43FBCC4();
  v15 = v14 - v13;
  *(v5 + OBJC_IVAR____TtC24IntelligencePlatformCore24BehaviorTypeCountLimiter_reachedMaximum) = 0;
  sub_1C44098F0(a1, v14 - v13);
  sub_1C4F02248();

  v16 = sub_1C4EFDA48();
  MEMORY[0x1C6940010](v16);

  v17 = type metadata accessor for KeyValueStore();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  v20 = KeyValueStore.init(config:domain:)(v15, 0xD000000000000019, 0x80000001C4F8C170);
  if (v6)
  {

    v21 = sub_1C4EFDAB8();
    sub_1C43FBCE0(v21);
    (*(v22 + 8))(a4);
    sub_1C4467948(a1);
    v23 = *(*v5 + 48);
    v24 = *(*v5 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v25 = v20;
    sub_1C4467948(a1);
    *(v5 + OBJC_IVAR____TtC24IntelligencePlatformCore24BehaviorTypeCountLimiter_kvStore) = v25;
    v26 = (v5 + OBJC_IVAR____TtC24IntelligencePlatformCore24BehaviorTypeCountLimiter_uuid);
    *v26 = a2;
    v26[1] = a3;
    v27 = OBJC_IVAR____TtC24IntelligencePlatformCore24BehaviorTypeCountLimiter_type;
    v28 = sub_1C4EFDAB8();
    sub_1C43FBCE0(v28);
    (*(v29 + 32))(v5 + v27, a4);
    *(v5 + OBJC_IVAR____TtC24IntelligencePlatformCore24BehaviorTypeCountLimiter_maximumBehaviors) = a5;
  }

  return v5;
}

uint64_t sub_1C45D8E08(_OWORD *a1)
{
  v2 = v1;
  v4 = sub_1C4EFDAB8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FBCC4();
  v9 = v8 - v7;
  v17 = a1[1];
  *v18 = a1[2];
  *&v18[9] = *(a1 + 41);
  sub_1C45D5A24(v8 - v7);
  sub_1C4403D50(&qword_1EDDEFFB8);
  sub_1C4F01578();
  sub_1C4F01578();
  (*(v5 + 8))(v9, v4);
  if (v16 != v15)
  {
    return 0;
  }

  v10 = OBJC_IVAR____TtC24IntelligencePlatformCore24BehaviorTypeCountLimiter_reachedMaximum;
  if ((*(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore24BehaviorTypeCountLimiter_reachedMaximum) & 1) != 0 || (sub_1C45D87C0(), v11 >= *(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore24BehaviorTypeCountLimiter_maximumBehaviors)))
  {
    result = 1;
    *(v2 + v10) = 1;
  }

  else
  {
    sub_1C45D87C0();
    v13 = __OFADD__(v12, 1);
    result = v12 + 1;
    if (!v13)
    {
      sub_1C45D89A8();
      return 0;
    }

    __break(1u);
  }

  return result;
}

BOOL sub_1C45D8FA8()
{
  v1 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore24BehaviorTypeCountLimiter_uuid);
  v2 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore24BehaviorTypeCountLimiter_kvStore);
  return KeyValueStore.delete(key:)(v1);
}

uint64_t sub_1C45D8FE8()
{
  v1 = OBJC_IVAR____TtC24IntelligencePlatformCore24BehaviorTypeCountLimiter_type;
  v2 = sub_1C4EFDAB8();
  sub_1C43FBCE0(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore24BehaviorTypeCountLimiter_uuid + 8);

  v5 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore24BehaviorTypeCountLimiter_kvStore);

  return v0;
}

uint64_t sub_1C45D9064()
{
  sub_1C45D8FE8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for BehaviorTypeCountLimiter()
{
  result = qword_1EC0B9A90;
  if (!qword_1EC0B9A90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C45D9110()
{
  result = sub_1C4EFDAB8();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C45D921C(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v35 = MEMORY[0x1E69E7CC0];
    sub_1C4F02348();
    v8 = (a3 + 32);
    for (i = v5 - 1; ; --i)
    {
      v10 = v8[1];
      v34[0] = *v8;
      v34[1] = v10;
      v11 = v8[3];
      v13 = *v8;
      v12 = v8[1];
      v34[2] = v8[2];
      v34[3] = v11;
      v30 = v13;
      v31 = v12;
      v14 = v8[3];
      v32 = v8[2];
      v33 = v14;
      sub_1C4571BB0(v34, &v24);
      sub_1C441C09C();
      v15 = a1();
      if (v3)
      {
        sub_1C4409A40(v15, v16, v17, v18, v19, v20, v21, v22, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33);
      }

      sub_1C4409A40(v15, v16, v17, v18, v19, v20, v21, v22, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33);
      sub_1C4F02318();
      v23 = *(v35 + 16);
      sub_1C4F02358();
      sub_1C4F02368();
      sub_1C4F02328();
      if (!i)
      {
        break;
      }

      v8 += 4;
    }

    return v35;
  }

  return result;
}

uint64_t sub_1C45D9340(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v31 = MEMORY[0x1E69E7CC0];
    sub_1C44CD9C0();
    v6 = sub_1C4703354(a1);
    result = v31;
    v7 = 0;
    v8 = a1 + 64;
    v27 = v2;
    if ((v6 & 0x8000000000000000) == 0)
    {
      while (v6 < 1 << *(a1 + 32))
      {
        v9 = v6 >> 6;
        if ((*(v8 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
        {
          goto LABEL_23;
        }

        if (*(a1 + 36) != v4)
        {
          goto LABEL_24;
        }

        v28 = v5;
        v29 = v7;
        v30 = v4;
        v10 = (*(a1 + 48) + 16 * v6);
        v11 = *v10;
        v12 = v10[1];
        v13 = result;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        MEMORY[0x1C6940010](v11, v12);

        result = v13;
        v14 = *(v13 + 16);
        if (v14 >= *(v13 + 24) >> 1)
        {
          sub_1C44CD9C0();
          result = v13;
        }

        *(result + 16) = v14 + 1;
        v15 = result + 16 * v14;
        *(v15 + 32) = 58;
        *(v15 + 40) = 0xE100000000000000;
        v16 = 1 << *(a1 + 32);
        if (v6 >= v16)
        {
          goto LABEL_25;
        }

        v8 = a1 + 64;
        v17 = *(a1 + 64 + 8 * v9);
        if ((v17 & (1 << v6)) == 0)
        {
          goto LABEL_26;
        }

        if (*(a1 + 36) != v30)
        {
          goto LABEL_27;
        }

        v18 = v17 & (-2 << (v6 & 0x3F));
        if (v18)
        {
          v16 = __clz(__rbit64(v18)) | v6 & 0x7FFFFFFFFFFFFFC0;
          v19 = v27;
        }

        else
        {
          v20 = v9 << 6;
          v21 = v9 + 1;
          v19 = v27;
          v22 = (a1 + 72 + 8 * v9);
          while (v21 < (v16 + 63) >> 6)
          {
            v24 = *v22++;
            v23 = v24;
            v20 += 64;
            ++v21;
            if (v24)
            {
              v25 = result;
              sub_1C440951C(v6, v30, v28 & 1);
              result = v25;
              v16 = __clz(__rbit64(v23)) + v20;
              goto LABEL_18;
            }
          }

          v26 = result;
          sub_1C440951C(v6, v30, v28 & 1);
          result = v26;
        }

LABEL_18:
        v7 = v29 + 1;
        if (v29 + 1 == v19)
        {
          return result;
        }

        v5 = 0;
        v4 = *(a1 + 36);
        v6 = v16;
        if (v16 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  return result;
}

uint64_t sub_1C45D95B4(void (*a1)(__int128 *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v7 = a3;
    v51 = MEMORY[0x1E69E7CC0];
    sub_1C459D238();
    v9 = sub_1C486C288(v7);
    result = v51;
    v11 = v10;
    v12 = 0;
    v13 = v7 + 56;
    v39 = v7 + 64;
    v40 = v5;
    v41 = v7 + 56;
    if ((v9 & 0x8000000000000000) == 0)
    {
      while (v9 < 1 << *(v7 + 32))
      {
        v14 = v9 >> 6;
        v15 = 1 << v9;
        if ((*(v13 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
        {
          goto LABEL_25;
        }

        if (*(v7 + 36) != v8)
        {
          goto LABEL_26;
        }

        v43 = v12;
        v44 = v8;
        v16 = result;
        v17 = v7;
        v18 = (*(v7 + 48) + 16 * v9);
        v19 = v18[1];
        v45 = v9;
        v46[0] = *v18;
        v46[1] = v19;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        a1(&v47, v46);
        if (v4)
        {
          goto LABEL_30;
        }

        v4 = 0;

        v20 = v47;
        v21 = v48;
        v22 = v49;
        v23 = v50;
        result = v16;
        v51 = v16;
        v24 = *(v16 + 16);
        if (v24 >= *(result + 24) >> 1)
        {
          v37 = v48;
          v38 = v47;
          v36 = v49;
          sub_1C459D238();
          v22 = v36;
          v21 = v37;
          v20 = v38;
          result = v51;
        }

        *(result + 16) = v24 + 1;
        v25 = result + 48 * v24;
        *(v25 + 32) = v20;
        *(v25 + 48) = v21;
        *(v25 + 64) = v22;
        *(v25 + 72) = v23;
        if (v11)
        {
          goto LABEL_31;
        }

        v26 = 1 << *(v17 + 32);
        v13 = v41;
        if (v45 >= v26)
        {
          goto LABEL_27;
        }

        v27 = *(v41 + 8 * v14);
        if ((v27 & v15) == 0)
        {
          goto LABEL_28;
        }

        v7 = v17;
        if (*(v17 + 36) != v44)
        {
          goto LABEL_29;
        }

        v28 = v27 & (-2 << (v45 & 0x3F));
        if (v28)
        {
          v26 = __clz(__rbit64(v28)) | v45 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v29 = v14 << 6;
          v30 = v14 + 1;
          v31 = (v39 + 8 * v14);
          while (v30 < (v26 + 63) >> 6)
          {
            v33 = *v31++;
            v32 = v33;
            v29 += 64;
            ++v30;
            if (v33)
            {
              v34 = result;
              sub_1C440951C(v45, v44, 0);
              result = v34;
              v26 = __clz(__rbit64(v32)) + v29;
              goto LABEL_20;
            }
          }

          v35 = result;
          sub_1C440951C(v45, v44, 0);
          result = v35;
        }

LABEL_20:
        v12 = v43 + 1;
        if (v43 + 1 == v40)
        {
          return result;
        }

        v11 = 0;
        v8 = *(v7 + 36);
        v9 = v26;
        if (v26 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:

    __break(1u);
LABEL_31:
    __break(1u);
  }

  return result;
}

void sub_1C45D9880()
{
  sub_1C43FE96C();
  v3 = v2;
  v4 = type metadata accessor for FeatureValue(0);
  v5 = sub_1C43FCF7C(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBCC4();
  sub_1C4405820();
  if (v3 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1C4F02128())
  {
    if (!i)
    {
LABEL_17:
      sub_1C4402144();
      sub_1C43FBC80();
      return;
    }

    v18 = MEMORY[0x1E69E7CC0];
    sub_1C4402C34();
    sub_1C459D3D0();
    if (i < 0)
    {
      break;
    }

    v9 = 0;
    v17 = i;
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if ((v3 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x1C6940F90](v9, v3);
      }

      else
      {
        if (v9 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v11 = *(v3 + 8 * v9 + 32);
      }

      v12 = v11;
      sub_1C441C7E0();
      v13();
      if (v0)
      {

        goto LABEL_17;
      }

      v14 = *(v18 + 16);
      if (v14 >= *(v18 + 24) >> 1)
      {
        sub_1C459D3D0();
      }

      *(v18 + 16) = v14 + 1;
      sub_1C43FBF6C();
      sub_1C44DD748(v1, v18 + v15 + *(v16 + 72) * v14, type metadata accessor for FeatureValue);
      ++v9;
      if (v10 == v17)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

  __break(1u);
}

void sub_1C45D9A84()
{
  sub_1C43FE96C();
  v2 = v1;
  v3 = HIWORD(v1);
  v19 = sub_1C4EF9CD8();
  v4 = sub_1C43FCDF8(v19);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FBCC4();
  v9 = v8 - v7;
  v10 = (v3 - v2);
  if (v3 < v2)
  {
    v11 = -(v2 - HIWORD(v2));
  }

  else
  {
    v11 = (v3 - v2);
  }

  if (v11)
  {
    v20 = MEMORY[0x1E69E7CC0];
    sub_1C4402C34();
    sub_1C459D270();
    if ((v11 & 0x8000000000000000) == 0)
    {
      v12 = v2;
      while (v11)
      {
        v13 = v9;
        sub_1C441C7E0();
        v14();
        if (v0)
        {
          goto LABEL_19;
        }

        v15 = *(v20 + 16);
        if (v15 >= *(v20 + 24) >> 1)
        {
          sub_1C459D270();
        }

        *(v20 + 16) = v15 + 1;
        sub_1C43FBF6C();
        v18 = v20 + v16 + *(v17 + 72) * v15;
        v9 = v13;
        (*(v17 + 32))(v18, v13, v19);
        if (v3 < v2)
        {
          goto LABEL_16;
        }

        if (v12 >= HIWORD(v2))
        {
          goto LABEL_17;
        }

        ++v12;
        --v11;
        if (!--v10)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:

    __break(1u);
  }

  else
  {
LABEL_14:
    sub_1C4402144();
    sub_1C43FBC80();
  }
}

void sub_1C45D9C64()
{
  sub_1C43FE96C();
  sub_1C442DD60();
  v32 = v2;
  v3 = type metadata accessor for TimeBasedBehaviorSample();
  v4 = sub_1C43FCF7C(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FBCC4();
  v9 = v8 - v7;
  v10 = *(v1 + 16);
  if (v10)
  {
    v35 = v0;
    v38 = MEMORY[0x1E69E7CC0];
    v33 = v9;
    sub_1C4402C34();
    sub_1C459D6A0();
    v11 = (v1 + 72);
    while (1)
    {
      v34 = v10;
      v12 = *(v11 - 4);
      v13 = *(v11 - 3);
      v14 = *(v11 - 2);
      v15 = *(v11 - 1);
      v16 = *v11;
      v36[0] = *(v11 - 5);
      v36[1] = v12;
      v36[2] = v13;
      v36[3] = v14;
      v36[4] = v15;
      LOBYTE(v37) = v16;
      v17 = sub_1C43FBF7C();
      sub_1C45D7F78(v17, v18, v19, v20, v21, v22);
      v32(v36);
      v23 = sub_1C43FBF7C();
      if (v35)
      {
        break;
      }

      sub_1C45A23B4(v23, v24, v25, v26, v27, v28);
      v29 = *(v38 + 16);
      if (v29 >= *(v38 + 24) >> 1)
      {
        sub_1C459D6A0();
      }

      v11 += 48;
      *(v38 + 16) = v29 + 1;
      sub_1C43FBF6C();
      sub_1C44DD748(v33, v38 + v30 + *(v31 + 72) * v29, type metadata accessor for TimeBasedBehaviorSample);
      v10 = v34 - 1;
      if (v34 == 1)
      {
        goto LABEL_7;
      }
    }

    sub_1C45A23B4(v23, v24, v25, v26, v27, v28);

    __break(1u);
  }

  else
  {
LABEL_7:
    sub_1C4402144();
    sub_1C43FBC80();
  }
}

void sub_1C45D9E24()
{
  sub_1C43FE96C();
  sub_1C4426A0C(v3, v4);
  v17 = sub_1C4EFF428();
  v5 = sub_1C43FCDF8(v17);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBCC4();
  sub_1C4405820();
  v10 = *(v1 + 16);
  if (v10)
  {
    v19 = MEMORY[0x1E69E7CC0];
    sub_1C4402C34();
    sub_1C459DAA8();
    v11 = (v1 + 40);
    while (1)
    {
      v12 = *v11;
      v18 = *(v11 - 1);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C441C7E0();
      v13();
      if (v0)
      {
        break;
      }

      v14 = *(v19 + 16);
      if (v14 >= *(v19 + 24) >> 1)
      {
        sub_1C44148DC();
        sub_1C459DAA8();
      }

      *(v19 + 16) = v14 + 1;
      sub_1C440DEA4();
      (*(v7 + 32))(v15 + v16 * v14, v2, v17);
      v11 += 2;
      if (!--v10)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:
    sub_1C4402144();
    sub_1C43FBC80();
  }
}

void sub_1C45D9F98()
{
  sub_1C43FE96C();
  v5 = v0;
  v6 = *(v4 + 16);
  if (v6)
  {
    v7 = v4;
    v8 = v3;
    v20 = MEMORY[0x1E69E7CC0];
    v9 = sub_1C4402C34();
    sub_1C459DBD8(v9, v6, 0);
    v10 = v20;
    v11 = (v7 + 32);
    while (1)
    {
      memcpy(v19, v11, 0x92uLL);
      memcpy(__dst, v11, 0x92uLL);
      sub_1C45E8CE0(v19, v15);
      v8(__src, __dst, &v16);
      if (v5)
      {
        break;
      }

      v5 = 0;
      memcpy(v14, __dst, 0x92uLL);
      sub_1C45E8D3C(v14);
      memcpy(v15, __src, 0x92uLL);
      sub_1C443FA78();
      if (v13)
      {
        sub_1C459DBD8((v12 > 1), v1, 1);
        v10 = v20;
      }

      *(v10 + 16) = v1;
      memcpy((v10 + 152 * v2 + 32), v15, 0x92uLL);
      v11 += 152;
      if (!--v6)
      {
        goto LABEL_9;
      }
    }

    memcpy(v15, __dst, 0x92uLL);
    sub_1C45E8D3C(v15);
  }

LABEL_9:
  sub_1C43FBC80();
}

void sub_1C45DA100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1C43FE96C();
  sub_1C442DD60();
  v14 = type metadata accessor for EntityTriple(0);
  v15 = sub_1C43FCF7C(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FBCC4();
  sub_1C4416DA8();
  if (v12)
  {
    sub_1C43FFDD4();
    sub_1C459DCC0();
    v18 = a10;
    v19 = (v13 + 40);
    while (1)
    {
      v20 = *v19;
      v28 = *(v19 - 1);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C441C7E0();
      v25(v21, v22, v23, v24);
      if (v10)
      {
        break;
      }

      sub_1C43FD194();
      if (v26)
      {
        sub_1C44109A4();
        sub_1C459DCC0();
        v18 = a10;
      }

      *(v18 + 16) = v20;
      sub_1C442C4C8();
      sub_1C44DD748(v11, v27, type metadata accessor for EntityTriple);
      v19 += 2;
      if (!--v12)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:
    sub_1C4431F6C();
    sub_1C43FBC80();
  }
}

void sub_1C45DA250()
{
  sub_1C43FE96C();
  v3 = v2;
  v5 = v4;
  v18 = v6;
  v17 = sub_1C4EF9CD8();
  v7 = sub_1C43FCDF8(v17);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBCC4();
  sub_1C4405820();
  v10 = v3 - v5;
  if (__OFSUB__(v3, v5))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
LABEL_13:
    sub_1C4431F6C();
    sub_1C43FBC80();
    return;
  }

  v21 = MEMORY[0x1E69E7CC0];
  sub_1C4402C34();
  sub_1C459D270();
  if ((v10 & 0x8000000000000000) == 0)
  {
    v11 = 0;
    while (v11 < v10)
    {
      if (__OFADD__(v11, 1))
      {
        goto LABEL_15;
      }

      v19 = v11 + 1;
      v20 = v5 + v11;
      v12 = v1;
      v18(&v20);
      if (v0)
      {
        goto LABEL_20;
      }

      v13 = *(v21 + 16);
      if (v13 >= *(v21 + 24) >> 1)
      {
        sub_1C4404BBC();
        sub_1C459D270();
      }

      *(v21 + 16) = v13 + 1;
      sub_1C43FBF6C();
      v16 = v21 + v14 + *(v15 + 72) * v13;
      v1 = v12;
      (*(v15 + 32))(v16, v12, v17);
      if (v3 < v5)
      {
        goto LABEL_16;
      }

      ++v11;
      if ((v5 + v11 - 1) >= v3)
      {
        goto LABEL_17;
      }

      if (v19 == v10)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

LABEL_19:
  __break(1u);
LABEL_20:

  __break(1u);
}

uint64_t sub_1C45DA434(void (*a1)(void *__return_ptr, _BYTE *, uint64_t *), uint64_t a2, uint64_t a3)
{
  v6 = v3;
  v7 = *(a3 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v22 = MEMORY[0x1E69E7CC0];
    v11 = sub_1C4402C34();
    sub_1C459DFA8(v11, v7, 0);
    v8 = v22;
    for (i = (a3 + 32); ; i += 72)
    {
      memcpy(__dst, i, 0x48uLL);
      memcpy(__src, i, sizeof(__src));
      sub_1C45E8ABC(__dst, v17);
      a1(v20, __src, &v18);
      if (v6)
      {
        break;
      }

      v6 = 0;
      memcpy(v16, __src, sizeof(v16));
      sub_1C45E8B18(v16);
      memcpy(v17, v20, sizeof(v17));
      sub_1C443FA78();
      if (v14)
      {
        sub_1C459DFA8((v13 > 1), v4, 1);
        v8 = v22;
      }

      *(v8 + 16) = v4;
      memcpy((v8 + 80 * v5 + 32), v17, 0x50uLL);
      if (!--v7)
      {
        return v8;
      }
    }

    memcpy(v17, __src, 0x48uLL);
    sub_1C45E8B18(v17);
  }

  return v8;
}

uint64_t sub_1C45DA5AC(void (*a1)(__int128 *__return_ptr, void *, uint64_t *), uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v51 = MEMORY[0x1E69E7CC0];
    sub_1C459E170();
    v4 = v51;
    v6 = (a3 + 72);
    while (1)
    {
      v41 = v3;
      v7 = *(v6 - 4);
      v9 = *(v6 - 3);
      v8 = *(v6 - 2);
      v10 = *(v6 - 1);
      v11 = *v6;
      v44[0] = *(v6 - 5);
      v44[1] = v7;
      v44[2] = v9;
      v44[3] = v8;
      v44[4] = v10;
      v45 = v11;
      v12 = sub_1C4412C98();
      sub_1C45D7F78(v12, v13, v14, v15, v16, v17);
      a1(&v46, v44, &v43);
      if (v42)
      {
        break;
      }

      v42 = 0;
      v18 = sub_1C4412C98();
      sub_1C45A23B4(v18, v19, v20, v21, v22, v23);
      v24 = v46;
      v25 = v47;
      v26 = v48;
      v27 = v49;
      v28 = v50;
      v51 = v4;
      v29 = *(v4 + 16);
      if (v29 >= *(v4 + 24) >> 1)
      {
        v38 = v47;
        v39 = v46;
        sub_1C459E170();
        v25 = v38;
        v24 = v39;
        v4 = v51;
      }

      v6 += 48;
      *(v4 + 16) = v29 + 1;
      v30 = v4 + 56 * v29;
      *(v30 + 32) = v24;
      *(v30 + 48) = v25;
      *(v30 + 64) = v26;
      *(v30 + 72) = v27;
      *(v30 + 80) = v28;
      v3 = v41 - 1;
      if (v41 == 1)
      {
        return v4;
      }
    }

    v31 = sub_1C4412C98();
    sub_1C45A23B4(v31, v32, v33, v34, v35, v36);
  }

  return v4;
}

void sub_1C45DA728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1C43FE96C();
  sub_1C442DD60();
  v24 = v14;
  v15 = sub_1C456902C(&qword_1EC0B8BB8, &unk_1C4F10E70);
  sub_1C43FCF7C(v15);
  v17 = *(v16 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v18);
  sub_1C4416DA8();
  if (v12)
  {
    sub_1C43FFDD4();
    sub_1C459E1D0();
    v19 = a10;
    v20 = (v13 + 32);
    while (1)
    {
      v21 = *v20++;
      v25 = v21;
      v24(&v25);
      if (v10)
      {
        break;
      }

      v10 = 0;
      sub_1C43FD194();
      if (v22)
      {
        sub_1C44109A4();
        sub_1C459E1D0();
        v19 = a10;
      }

      *(v19 + 16) = v13;
      sub_1C442C4C8();
      sub_1C44CD9E0(v11, v23, &qword_1EC0B8BB8, &unk_1C4F10E70);
      if (!--v12)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:
    sub_1C4431F6C();
    sub_1C43FBC80();
  }
}

void sub_1C45DA868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1C43FE96C();
  sub_1C442DD60();
  v14 = sub_1C456902C(&qword_1EC0B8BC0, &unk_1C4F0DFF0);
  sub_1C43FCF7C(v14);
  v16 = *(v15 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v17);
  sub_1C4416DA8();
  if (v12)
  {
    sub_1C43FFDD4();
    sub_1C459E290();
    v18 = a10;
    v19 = (v13 + 40);
    while (1)
    {
      v20 = *v19;
      v28 = *(v19 - 1);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C441C7E0();
      v25(v21, v22, v23, v24);
      if (v10)
      {
        break;
      }

      sub_1C43FD194();
      if (v26)
      {
        sub_1C44109A4();
        sub_1C459E290();
        v18 = a10;
      }

      *(v18 + 16) = v20;
      sub_1C442C4C8();
      sub_1C44CD9E0(v11, v27, &qword_1EC0B8BC0, &unk_1C4F0DFF0);
      v19 += 2;
      if (!--v12)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:
    sub_1C4431F6C();
    sub_1C43FBC80();
  }
}

void sub_1C45DA9C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE96C();
  a19 = v21;
  a20 = v24;
  v25 = v20;
  v26 = *(v23 + 16);
  if (v26)
  {
    v27 = v23;
    v28 = v22;
    a10 = MEMORY[0x1E69E7CC0];
    sub_1C4402C34();
    sub_1C459E530();
    v29 = a10;
    v30 = (v27 + 32);
    while (1)
    {
      v40 = *v30;

      v28(v41, &v40);
      if (v25)
      {
        break;
      }

      v25 = 0;

      a10 = v29;
      v31 = *(v29 + 16);
      if (v31 >= *(v29 + 24) >> 1)
      {
        sub_1C459E530();
      }

      v32 = v42;
      v33 = v43;
      v34 = sub_1C4418280(v41, v42);
      v35 = *(*(v32 - 8) + 64);
      MEMORY[0x1EEE9AC00](v34);
      sub_1C43FBCC4();
      v38 = v37 - v36;
      (*(v39 + 16))(v37 - v36);
      sub_1C44FDC24(v31, v38, &a10, v32, v33);
      sub_1C440962C(v41);
      v29 = a10;
      ++v30;
      if (!--v26)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:
    sub_1C4402144();
    sub_1C43FBC80();
  }
}

void sub_1C45DAB7C()
{
  sub_1C43FE96C();
  v1 = v0;
  v3 = v2;
  v46 = v4;
  v45 = sub_1C4EFDAB8();
  v5 = sub_1C43FCDF8(v45);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBCC4();
  v12 = v11 - v10;
  if (*(v3 + 16))
  {
    v44 = v12;
    v50 = MEMORY[0x1E69E7CC0];
    v13 = *(v3 + 16);
    sub_1C4F02348();
    v15 = sub_1C486C288(v3);
    v17 = v16;
    v18 = 0;
    v19 = v3 + 56;
    v40 = v14;
    v41 = v7;
    v39 = v3 + 64;
    v42 = v13;
    v43 = v3 + 56;
    while ((v15 & 0x8000000000000000) == 0 && v15 < 1 << *(v3 + 32))
    {
      v20 = v15 >> 6;
      v21 = 1 << v15;
      if ((*(v19 + 8 * (v15 >> 6)) & (1 << v15)) == 0)
      {
        goto LABEL_23;
      }

      if (*(v3 + 36) != v14)
      {
        goto LABEL_24;
      }

      v47 = v18;
      v48 = v14;
      v22 = v3;
      (*(v7 + 16))(v44, *(v3 + 48) + *(v7 + 72) * v15, v45);
      v46(&v49, v44);
      if (v1)
      {
        goto LABEL_28;
      }

      v1 = 0;
      v23 = sub_1C4415F4C();
      v24(v23);
      sub_1C4F02318();
      v25 = *(v50 + 16);
      sub_1C4F02358();
      sub_1C4F02368();
      sub_1C4F02328();
      if (v17)
      {
        goto LABEL_29;
      }

      v26 = 1 << *(v22 + 32);
      if (v15 >= v26)
      {
        goto LABEL_25;
      }

      v3 = v22;
      v19 = v43;
      v27 = *(v43 + 8 * v20);
      if ((v27 & v21) == 0)
      {
        goto LABEL_26;
      }

      if (*(v3 + 36) != v48)
      {
        goto LABEL_27;
      }

      v28 = v27 & (-2 << (v15 & 0x3F));
      if (v28)
      {
        v26 = __clz(__rbit64(v28)) | v15 & 0x7FFFFFFFFFFFFFC0;
        v7 = v41;
        v29 = v42;
        v30 = v47;
      }

      else
      {
        sub_1C441C0A8();
        v34 = (v39 + 8 * v20);
        v7 = v41;
        while (v33 < v32)
        {
          v36 = *v34++;
          v35 = v36;
          v21 += 64;
          ++v33;
          if (v36)
          {
            sub_1C440951C(v15, v31, 0);
            v29 = v42;
            v26 = __clz(__rbit64(v35)) + v21;
            goto LABEL_19;
          }
        }

        sub_1C440951C(v15, v31, 0);
        v29 = v42;
LABEL_19:
        v30 = v47;
      }

      v17 = 0;
      v18 = v30 + 1;
      v15 = v26;
      v14 = v40;
      if (v18 == v29)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    v37 = sub_1C4415F4C();
    v38(v37);

    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {
LABEL_21:
    sub_1C43FBC80();
  }
}

uint64_t sub_1C45DAE74(void (*a1)(uint64_t, uint64_t), uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v14 = MEMORY[0x1E69E7CC0];
    sub_1C4F02348();
    for (i = (a3 + 40); ; i += 2)
    {
      v12 = *(i - 1);
      v13 = *i;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C441C09C();
      a1(v9, v10);
      if (v3)
      {
        break;
      }

      sub_1C4F02318();
      v11 = *(v14 + 16);
      sub_1C4F02358();
      sub_1C4F02368();
      sub_1C4F02328();
      if (!--v5)
      {
        return v14;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1C45DAF78(void (*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v6 = a3;
    v38 = MEMORY[0x1E69E7CC0];
    sub_1C4F02348();
    v8 = sub_1C486C288(v6);
    v10 = v9;
    v11 = 0;
    v12 = v6 + 56;
    v31 = v7;
    v32 = v4;
    v30 = v6 + 64;
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(v6 + 32))
    {
      v13 = v8 >> 6;
      v14 = 1 << v8;
      if ((*(v12 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_24;
      }

      if (*(v6 + 36) != v7)
      {
        goto LABEL_25;
      }

      v34 = v11;
      v35 = v7;
      v15 = v6;
      v16 = (*(v6 + 48) + 16 * v8);
      v17 = v16[1];
      v36[0] = *v16;
      v36[1] = v17;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      a1(&v37, v36);
      if (v3)
      {
        goto LABEL_29;
      }

      sub_1C4F02318();
      v18 = *(v38 + 16);
      sub_1C4F02358();
      sub_1C4F02368();
      result = sub_1C4F02328();
      if (v10)
      {
        goto LABEL_30;
      }

      v19 = 1 << *(v15 + 32);
      if (v8 >= v19)
      {
        goto LABEL_26;
      }

      v20 = *(v12 + 8 * v13);
      if ((v20 & v14) == 0)
      {
        goto LABEL_27;
      }

      v6 = v15;
      if (*(v15 + 36) != v35)
      {
        goto LABEL_28;
      }

      v21 = v20 & (-2 << (v8 & 0x3F));
      if (v21)
      {
        v19 = __clz(__rbit64(v21)) | v8 & 0x7FFFFFFFFFFFFFC0;
        v3 = 0;
        v22 = v34;
        v23 = v32;
      }

      else
      {
        sub_1C441C0A8();
        v27 = (v30 + 8 * v13);
        v23 = v32;
        while (v26 < v25)
        {
          v29 = *v27++;
          v28 = v29;
          v14 += 64;
          ++v26;
          if (v29)
          {
            sub_1C440951C(v8, v24, 0);
            v3 = 0;
            v19 = __clz(__rbit64(v28)) + v14;
            goto LABEL_19;
          }
        }

        sub_1C440951C(v8, v24, 0);
        v3 = 0;
LABEL_19:
        v22 = v34;
      }

      v10 = 0;
      v11 = v22 + 1;
      v8 = v19;
      v7 = v31;
      if (v11 == v23)
      {
        return v38;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:

    __break(1u);
LABEL_30:
    __break(1u);
  }

  return result;
}

void sub_1C45DB1D8()
{
  sub_1C43FE96C();
  v2 = v1;
  v4 = v3;
  v23 = v5;
  v24 = v6;
  v7 = sub_1C456902C(&qword_1EC0B9078, &unk_1C4F30C70);
  sub_1C43FCF7C(v7);
  v22 = v8;
  v10 = *(v9 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v22 - v12;
  v14 = v2 - v4;
  if (__OFSUB__(v2, v4))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v14)
  {
LABEL_13:
    sub_1C4402144();
    sub_1C43FBC80();
    return;
  }

  v28 = MEMORY[0x1E69E7CC0];
  sub_1C4402C34();
  sub_1C459E978();
  if ((v14 & 0x8000000000000000) == 0)
  {
    v26 = v0;
    v15 = 0;
    while (v15 < v14)
    {
      if (__OFADD__(v15, 1))
      {
        goto LABEL_15;
      }

      v25 = v15 + 1;
      v27 = v4 + v15;
      v16 = v13;
      v17 = v26;
      v23(&v27);
      v26 = v17;
      if (v17)
      {
        goto LABEL_20;
      }

      v18 = *(v28 + 16);
      if (v18 >= *(v28 + 24) >> 1)
      {
        sub_1C4404BBC();
        sub_1C459E978();
      }

      *(v28 + 16) = v18 + 1;
      sub_1C43FBF6C();
      v21 = v28 + v19 + *(v20 + 72) * v18;
      v13 = v16;
      sub_1C44CD9E0(v16, v21, &qword_1EC0B9078, &unk_1C4F30C70);
      if (v2 < v4)
      {
        goto LABEL_16;
      }

      ++v15;
      if ((v4 + v15 - 1) >= v2)
      {
        goto LABEL_17;
      }

      if (v25 == v14)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

LABEL_19:
  __break(1u);
LABEL_20:

  __break(1u);
}

void sub_1C45DB3C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1C43FE96C();
  sub_1C442DD60();
  v28 = v14;
  v15 = type metadata accessor for PhotosPersonObservation(0);
  v16 = sub_1C43FCF7C(v15);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBCC4();
  sub_1C4416DA8();
  if (v12)
  {
    sub_1C43FFDD4();
    sub_1C459EB68();
    v19 = a10;
    v20 = (v13 + 66);
    while (1)
    {
      v21 = *(v20 - 26);
      v22 = *(v20 - 18);
      v23 = *(v20 - 10);
      v24 = *(v20 - 1);
      v25 = *v20;
      v29[0] = *(v20 - 34);
      v29[1] = v21;
      v29[2] = v22;
      v29[3] = v23;
      v30 = v24;
      v31 = v25;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v28(v29);
      if (v10)
      {
        break;
      }

      v10 = 0;

      sub_1C43FD194();
      if (v26)
      {
        sub_1C44109A4();
        sub_1C459EB68();
        v19 = a10;
      }

      *(v19 + 16) = v13;
      sub_1C442C4C8();
      sub_1C44DD748(v11, v27, type metadata accessor for PhotosPersonObservation);
      v20 += 40;
      if (!--v12)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:
    sub_1C4431F6C();
    sub_1C43FBC80();
  }
}

uint64_t sub_1C45DB55C(void (*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (!v5)
  {
    return v6;
  }

  v25 = MEMORY[0x1E69E7CC0];
  sub_1C4402C34();
  sub_1C459DBF8();
  v6 = v25;
  for (i = (a3 + 40); ; i += 2)
  {
    v9 = *i;
    v20[0] = *(i - 1);
    v20[1] = v9;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    a1(&v21, v20);
    if (v4)
    {
      break;
    }

    v4 = 0;

    v11 = v21;
    v10 = v22;
    v13 = v23;
    v12 = v24;
    v25 = v6;
    v14 = *(v6 + 16);
    if (v14 >= *(v6 + 24) >> 1)
    {
      v18 = v22;
      v16 = v24;
      sub_1C459DBF8();
      v12 = v16;
      v10 = v18;
      v6 = v25;
    }

    *(v6 + 16) = v14 + 1;
    v15 = (v6 + 32 * v14);
    v15[4] = v11;
    v15[5] = v10;
    v15[6] = v13;
    v15[7] = v12;
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

void sub_1C45DB698()
{
  sub_1C43FE96C();
  sub_1C4426A0C(v3, v4);
  v16 = sub_1C4EF98F8();
  v5 = sub_1C43FCDF8(v16);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBCC4();
  sub_1C4405820();
  v10 = *(v1 + 16);
  if (v10)
  {
    v18 = MEMORY[0x1E69E7CC0];
    sub_1C4402C34();
    sub_1C459EE58();
    v11 = (v1 + 32);
    while (1)
    {
      v17 = *v11;
      sub_1C441C7E0();
      v12();
      if (v0)
      {
        break;
      }

      v13 = *(v18 + 16);
      if (v13 >= *(v18 + 24) >> 1)
      {
        sub_1C44148DC();
        sub_1C459EE58();
      }

      *(v18 + 16) = v13 + 1;
      sub_1C440DEA4();
      (*(v7 + 32))(v14 + v15 * v13, v2, v16);
      ++v11;
      if (!--v10)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:
    sub_1C4402144();
    sub_1C43FBC80();
  }
}

uint64_t sub_1C45DB7F4(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (!v4)
  {
    return v5;
  }

  v13 = MEMORY[0x1E69E7CC0];
  sub_1C459D930();
  v5 = v13;
  v8 = (a3 + 32);
  while (1)
  {
    v9 = *v8++;
    sub_1C441C09C();
    a1();
    if (v3)
    {
      break;
    }

    v13 = v5;
    v10 = *(v5 + 16);
    if (v10 >= *(v5 + 24) >> 1)
    {
      sub_1C459D930();
      v5 = v13;
    }

    *(v5 + 16) = v10 + 1;
    sub_1C441D670(&v12, v5 + 40 * v10 + 32);
    if (!--v4)
    {
      return v5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C45DB908(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C461AFEC(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1C45E7AF0(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_1C45DB974(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = sub_1C456902C(&qword_1EC0B89F0, &qword_1C4F0DE10);
  v6 = *(v5 - 8);
  v79 = v5;
  v80 = v6;
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v84 = &v73 - v11;
  v12 = sub_1C4EF9CD8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v73 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v86 = &v73 - v21;
  v22 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = MEMORY[0x1EEE9AC00](v24);
  v27 = &v73 - v26;
  v28 = MEMORY[0x1EEE9AC00](v25);
  v30 = &v73 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v34 = (&v73 - v33);
  v89 = a1;
  v91 = *(a1 + 16);
  if (!v91 && !*(v32 + 16))
  {
    return MEMORY[0x1E69E7CC0];
  }

  v75 = v20;
  v76 = a3;
  v73 = v17;
  v74 = v10;
  v92 = 0;
  v35 = 0;
  v88 = (v13 + 16);
  v77 = v13 + 32;
  v78 = (v13 + 8);
  v87 = MEMORY[0x1E69E7CC0];
  v36 = v32;
  v90 = v32;
  v83 = v31;
  while (v35 < v91)
  {
    v37 = *(v36 + 16);
    if (v92 >= v37)
    {
      if (v37 < v91)
      {
        v48 = v89 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v35;
        sub_1C45E8E08(&qword_1EDDFCD70, MEMORY[0x1E6969530]);
        v49 = v76;
        if (sub_1C4F01058())
        {
          v50 = *(v79 + 48);
          v51 = *v88;
          v52 = v74;
          (*v88)(v74, v48, v12);
          v51((v52 + v50), v49, v12);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v70 = *(v87 + 16);
            sub_1C458AF94();
            v87 = v71;
          }

          v53 = *(v87 + 16);
          if (v53 >= *(v87 + 24) >> 1)
          {
            sub_1C458AF94();
            v87 = v72;
          }

          v54 = v87;
          *(v87 + 16) = v53 + 1;
          sub_1C44CD9E0(v52, v54 + ((*(v80 + 80) + 32) & ~*(v80 + 80)) + *(v80 + 72) * v53, &qword_1EC0B89F0, &qword_1C4F0DE10);
        }

        else
        {
          v55 = v88;
          if (qword_1EDDFA668 != -1)
          {
            swift_once();
          }

          v56 = sub_1C4F00978();
          sub_1C442B738(v56, qword_1EDE2DDE0);
          v57 = *v55;
          v35 = v75;
          (*v55)(v75, v49, v12);
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v34 = sub_1C4F00968();
          v58 = sub_1C4F01CE8();

          if (os_log_type_enabled(v34, v58))
          {
            v59 = swift_slowAlloc();
            v92 = swift_slowAlloc();
            v93[0] = v92;
            *v59 = 136315394;
            v60 = v73;
            v57(v73, v48, v12);
            v61 = sub_1C4F01198();
            v63 = sub_1C441D828(v61, v62, v93);

            *(v59 + 4) = v63;
            *(v59 + 12) = 2080;
            v57(v60, v35, v12);
            v64 = sub_1C4F01198();
            v66 = v65;
            (*v78)(v35, v12);
            v67 = sub_1C441D828(v64, v66, v93);

            *(v59 + 14) = v67;
            _os_log_impl(&dword_1C43F8000, v34, v58, "BehaviorDatabaseEventTracker: finalValue is less than the start value of an interval: %s > %s", v59, 0x16u);
            v68 = v92;
            swift_arrayDestroy();
            MEMORY[0x1C6942830](v68, -1, -1);
            MEMORY[0x1C6942830](v59, -1, -1);
          }

          else
          {
LABEL_36:

            (*v78)(v35, v12);
          }
        }
      }

      return v87;
    }

    sub_1C440BAA8(v34, 1, 1, v12);
    while (1)
    {
      if (v91 == v35)
      {
        v35 = v91;
        goto LABEL_15;
      }

      if (v35 < 0)
      {
        __break(1u);
        goto LABEL_36;
      }

      v38 = v89 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v35;
      sub_1C45E8E08(&qword_1EDDFCD70, MEMORY[0x1E6969530]);
      if ((sub_1C4F01068() & 1) == 0)
      {
        break;
      }

      sub_1C4460050(v34, v30, &unk_1EC0B84E0, qword_1C4F0D2D0);
      v39 = sub_1C44157D4(v30, 1, v12);
      sub_1C4420C3C(v30, &unk_1EC0B84E0, qword_1C4F0D2D0);
      if (v39 == 1)
      {
        (*v88)(v27, v38, v12);
        sub_1C4420C3C(v34, &unk_1EC0B84E0, qword_1C4F0D2D0);
        sub_1C440BAA8(v27, 0, 1, v12);
        sub_1C44CD9E0(v27, v34, &unk_1EC0B84E0, qword_1C4F0D2D0);
      }

      ++v35;
      v36 = v90;
    }

    v36 = v90;
LABEL_15:
    v40 = v83;
    sub_1C4460050(v34, v83, &unk_1EC0B84E0, qword_1C4F0D2D0);
    if (sub_1C44157D4(v40, 1, v12) == 1)
    {
      sub_1C4420C3C(v34, &unk_1EC0B84E0, qword_1C4F0D2D0);
      sub_1C4420C3C(v40, &unk_1EC0B84E0, qword_1C4F0D2D0);
    }

    else
    {
      (*(v13 + 32))(v86, v40, v12);
      v41 = v36 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v92;
      v81 = *(v79 + 48);
      v82 = v41;
      v85 = *(v13 + 16);
      v42 = v84;
      v85(v84, v86, v12);
      v85(v42 + v81, v82, v12);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v45 = *(v87 + 16);
        sub_1C458AF94();
        v87 = v46;
      }

      v43 = *(v87 + 16);
      if (v43 >= *(v87 + 24) >> 1)
      {
        sub_1C458AF94();
        v87 = v47;
      }

      (*v78)(v86, v12);
      sub_1C4420C3C(v34, &unk_1EC0B84E0, qword_1C4F0D2D0);
      v44 = v87;
      *(v87 + 16) = v43 + 1;
      sub_1C44CD9E0(v84, v44 + ((*(v80 + 80) + 32) & ~*(v80 + 80)) + *(v80 + 72) * v43, &qword_1EC0B89F0, &qword_1C4F0DE10);
      v36 = v90;
    }

    ++v92;
  }

  return v87;
}

uint64_t sub_1C45DC2E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = 0.0;
    do
    {
      v4 = *(a1 + 32 + 8 * v2++);
      v3 = v3 + v4;
    }

    while (v1 != v2);
    *&result = v3 / v1;
  }

  else
  {
    *&result = 0.0;
  }

  return result;
}

uint64_t sub_1C45DC32C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    v7 = 0.0;
    return *&v7;
  }

  v9 = a1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C45DB908(&v9);
  v2 = v1 >> 1;
  v3 = *(v9 + 16);
  if (v1)
  {
    if (v1 >> 1 < v3)
    {
      v7 = *(v9 + 8 * v2 + 32);

      return *&v7;
    }

    goto LABEL_11;
  }

  if (v1 >> 1 > v3)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v1 >> 1 < v3)
  {
    v4 = v9 + 8 * v2;
    v5 = *(v4 + 24);
    v6 = *(v4 + 32);

    v7 = (v5 + v6) * 0.5;
    return *&v7;
  }

LABEL_12:
  __break(1u);

  __break(1u);
  return result;
}

long double sub_1C45DC400(uint64_t a1, long double result)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = 0;
    result = v2;
    v4 = (a1 + 32);
    v5 = 0.0;
    do
    {
      v6 = v4[v3++];
      v5 = v5 + v6;
    }

    while (v2 != v3);
    if (v2 != 1)
    {
      v7 = 0.0;
      v8 = v5 / result;
      do
      {
        v9 = *v4++;
        v7 = v7 + (v9 - v8) * (v9 - v8);
        --v2;
      }

      while (v2);
      return sqrt(v7 / (result + -1.0));
    }
  }

  return result;
}

uint64_t sub_1C45DC490(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1C45DC32C(a1);
  if ((v4 & 1) != 0 || v2 < 2)
  {
    return 0;
  }

  v5 = *&v3;
  v12 = MEMORY[0x1E69E7CC0];
  sub_1C459D100();
  v6 = (a1 + 32);
  v7 = *(v12 + 16);
  do
  {
    v8 = *v6;
    v9 = *(v12 + 24);
    if (v7 >= v9 >> 1)
    {
      sub_1C441EA8C(v9);
      sub_1C459D100();
    }

    *(v12 + 16) = v7 + 1;
    *(v12 + 8 * v7 + 32) = vabdd_f64(v8, v5);
    ++v6;
    ++v7;
    --v2;
  }

  while (v2);
  v10 = sub_1C45DC32C(v12);

  return v10;
}

void *sub_1C45DC594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a3;
  v6[3] = a1;
  v6[4] = a2;
  v6[5] = a4;
  v6[6] = a5;
  v6[7] = a6;
  return v6;
}

void *sub_1C45DC5A8()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[7];
  sub_1C45E8E50(v0[5], v0[6]);
  return v0;
}

uint64_t sub_1C45DC5DC()
{
  sub_1C45DC5A8();

  return swift_deallocClassInstance();
}

uint64_t sub_1C45DC634(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = sub_1C456902C(&qword_1EC0B9AA0, &unk_1C4F10DA0);
  sub_1C43FBD18(v8);
  v10 = *(v9 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v16 - v12;
  v14 = sub_1C4EFDAB8();
  sub_1C440BAA8(v13, 1, 1, v14);
  sub_1C45DC720(a1, a2, a3, a4, v13, 1);
  return sub_1C4420C3C(v13, &qword_1EC0B9AA0, &unk_1C4F10DA0);
}

void sub_1C45DC720(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, int a6)
{
  v43 = a2;
  v45 = a6;
  v42 = a5;
  v9 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v38 - v14;
  v16 = sub_1C456902C(&qword_1EC0B9AA0, &unk_1C4F10DA0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v38 - v18;
  v20 = sub_1C4EFDAB8();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v38 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = objc_autoreleasePoolPush();
  sub_1C4F01968();
  if (v6)
  {
    objc_autoreleasePoolPop(v46);
  }

  else
  {
    v41 = a1;
    sub_1C4460050(v42, v19, &qword_1EC0B9AA0, &unk_1C4F10DA0);
    if (sub_1C44157D4(v19, 1, v20) == 1)
    {
      sub_1C4420C3C(v19, &qword_1EC0B9AA0, &unk_1C4F10DA0);
      v25 = a3[3];
      v26 = a3[4];
      sub_1C4409678(a3, v25);
      v27 = sub_1C4EF9CD8();
      v28 = *(*(v27 - 8) + 16);
      v28(v15, v41, v27);
      sub_1C440BAA8(v15, 0, 1, v27);
      v28(v13, v43, v27);
      sub_1C440BAA8(v13, 0, 1, v27);
      v29 = sub_1C4EFDA68();
      v30 = (*(v26 + 32))(v15, v13, 1, v29, v25, v26);

      sub_1C4420C3C(v13, &unk_1EC0B84E0, qword_1C4F0D2D0);
      v31 = sub_1C4420C3C(v15, &unk_1EC0B84E0, qword_1C4F0D2D0);
    }

    else
    {
      (*(v21 + 32))(v24, v19, v20);
      v32 = a3[4];
      v42 = a3[3];
      v39 = v32;
      v40 = sub_1C4409678(a3, v42);
      v33 = sub_1C4EF9CD8();
      v34 = *(*(v33 - 8) + 16);
      v34(v15, v41, v33);
      sub_1C440BAA8(v15, 0, 1, v33);
      v34(v13, v43, v33);
      sub_1C440BAA8(v13, 0, 1, v33);
      v30 = (*(v39 + 24))(v15, v13, v24, v42);
      sub_1C4420C3C(v13, &unk_1EC0B84E0, qword_1C4F0D2D0);
      sub_1C4420C3C(v15, &unk_1EC0B84E0, qword_1C4F0D2D0);
      v31 = (*(v21 + 8))(v24, v20);
    }

    v35 = *(v44 + 16);
    MEMORY[0x1EEE9AC00](v31);
    *(&v38 - 4) = v30;
    *(&v38 - 3) = v36;
    *(&v38 - 16) = v45 & 1;
    sub_1C4EFAFC8();
    v37 = v30;
    sub_1C4EFB2C8();

    objc_autoreleasePoolPop(v46);
    sub_1C4F01968();
  }
}

uint64_t sub_1C45DCC18(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, int a6)
{
  v12 = sub_1C456902C(&qword_1EC0B9AA0, &unk_1C4F10DA0);
  sub_1C43FBD18(v12);
  v14 = *(v13 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v21 - v16;
  v18 = sub_1C4EFDAB8();
  sub_1C43FBCE0(v18);
  (*(v19 + 16))(v17, a5, v18);
  sub_1C440BAA8(v17, 0, 1, v18);
  sub_1C45DC720(a1, a2, a3, a4, v17, a6);
  return sub_1C4420C3C(v17, &qword_1EC0B9AA0, &unk_1C4F10DA0);
}

uint64_t sub_1C45DCD40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 16) = a3;
  *(v4 + 24) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1C45DCD60, 0, 0);
}

uint64_t sub_1C45DCD60()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = *(v1 + 16);
  v4 = swift_allocObject();
  v0[4] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v5 = *(MEMORY[0x1E699FE78] + 4);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  v6 = swift_task_alloc();
  v0[5] = v6;
  v7 = sub_1C4EFAFC8();
  *v6 = v0;
  v6[1] = sub_1C45DCE78;
  v8 = MEMORY[0x1E699FDC8];
  v9 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE09680](v7, sub_1C45E865C, v4, v7, v9, v8);
}

uint64_t sub_1C45DCE78()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v7 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v4 = sub_1C45DD0D0;
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = sub_1C45DCF94;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1C45DCF94()
{
  v1 = v0[3];
  if (v1[6])
  {
    v2 = v0[6];
    v3 = v0[2];
    v4 = v1[7];
    v5 = v1[5];
    sub_1C45DDC14();
    if (v2)
    {
      v6 = v0[1];
      goto LABEL_10;
    }
  }

  else
  {
    if (qword_1EDDFA668 != -1)
    {
      sub_1C4406758();
      swift_once();
    }

    v7 = sub_1C4F00978();
    sub_1C442B738(v7, qword_1EDE2DDE0);
    v8 = sub_1C4F00968();
    v9 = sub_1C4F01CF8();
    if (os_log_type_enabled(v8, v9))
    {
      sub_1C43FD1A8();
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1C43F8000, v8, v9, "BehaviorDatabase+EventTracking: Skipping person interaction mechanism tracking based on configuration", v10, 2u);
      MEMORY[0x1C6942830](v10, -1, -1);
    }
  }

  v6 = v0[1];
LABEL_10:

  return v6();
}

uint64_t sub_1C45DD0D0()
{
  v1 = v0[4];

  v2 = v0[6];
  v3 = v0[1];

  return v3();
}

uint64_t sub_1C45DD134(uint64_t a1, uint64_t a2, char a3)
{
  v79 = a2;
  v5 = sub_1C4EFDAB8();
  v76 = *(v5 - 8);
  v77 = v5;
  v6 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v64 - v11;
  v13 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v64 - v15;
  v17 = sub_1C4EF9CD8();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v75 = &v64 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v64 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v29 = 0;
  if (a3)
  {
    v69 = &v64 - v26;
    v70 = v28;
    v72 = v8;
    v73 = v12;
    v30 = *(a1 + 64);
    v31 = v16;
    v32 = OBJC_IVAR____TtC24IntelligencePlatformCore15BehaviorContext_date;
    v33 = *(v18 + 16);
    v34 = v27;
    v33(v25, v30 + OBJC_IVAR____TtC24IntelligencePlatformCore15BehaviorContext_date, v27);
    v35 = *(a1 + 32);
    v84 = *(a1 + 16);
    v85[0] = v35;
    *(v85 + 9) = *(a1 + 41);
    v71 = v31;
    v36 = v86;
    sub_1C45DD830(v25, &v84, v31);
    if (v36)
    {
      return (*(v18 + 8))(v25, v34);
    }

    v65 = v32;
    v66 = v33;
    v67 = v30;
    v68 = a1;
    v86 = 0;
    v41 = *(v18 + 8);
    v41(v25, v34);
    v42 = v71;
    v43 = sub_1C44157D4(v71, 1, v34);
    v74 = v18;
    if (v43 == 1)
    {
      v38 = v34;
      sub_1C4420C3C(v42, &unk_1EC0B84E0, qword_1C4F0D2D0);
      v39 = 1;
    }

    else
    {
      v44 = *(v18 + 32);
      v45 = v69;
      v44(v69, v42, v34);
      v46 = v70;
      v66(v70, v67 + v65, v34);
      sub_1C4EF9B78();
      v29 = v47;
      v41(v46, v34);
      v38 = v34;
      v41(v45, v34);
      v39 = 0;
    }

    v40 = v86;
    v12 = v73;
    a1 = v68;
    v8 = v72;
  }

  else
  {
    v74 = v18;
    v38 = v27;
    v39 = 1;
    v40 = v86;
  }

  v80 = 0;
  v81 = 0xE000000000000000;
  sub_1C4F02248();
  MEMORY[0x1C6940010](0x4920545245534E49, 0xEC000000204F544ELL);
  MEMORY[0x1C6940010](*(v78 + 24), *(v78 + 32));
  MEMORY[0x1C6940010](0xD000000000000097, 0x80000001C4F8C1E0);
  sub_1C4EFBED8();

  if (!v40)
  {
    v86 = 0;
    sub_1C456902C(&qword_1EC0B9AA8, &qword_1C4F11010);
    v48 = swift_allocObject();
    LODWORD(v79) = v39;
    v49 = v48;
    *(v48 + 16) = xmmword_1C4F0D480;
    strcpy((v48 + 32), "behaviorType");
    *(v48 + 45) = 0;
    *(v48 + 46) = -5120;
    v50 = *(a1 + 32);
    v82 = *(a1 + 16);
    v83[0] = v50;
    *(v83 + 9) = *(a1 + 41);
    sub_1C45D5A24(v8);
    v51 = sub_1C4EFDAA8();
    (*(v76 + 8))(v8, v77);
    v52 = MEMORY[0x1E69A0180];
    v49[9] = MEMORY[0x1E69E6530];
    v49[10] = v52;
    v49[6] = v51;
    v49[11] = 0xD000000000000012;
    v49[12] = 0x80000001C4F855A0;
    v53 = sub_1C45D2400();
    v54 = MEMORY[0x1E69A0138];
    v49[16] = MEMORY[0x1E69E6158];
    v49[17] = v54;
    v49[13] = v53;
    v49[14] = v55;
    v49[18] = 0x6D617473656D6974;
    v49[19] = 0xE900000000000070;
    v56 = *(a1 + 64);
    v57 = v74;
    v58 = v75;
    (*(v74 + 16))(v75, v56 + OBJC_IVAR____TtC24IntelligencePlatformCore15BehaviorContext_date, v38);
    sub_1C4EF9AD8();
    v60 = v59;
    (*(v57 + 8))(v58, v38);
    v61 = MEMORY[0x1E69E63B0];
    v62 = MEMORY[0x1E69A0168];
    v49[23] = MEMORY[0x1E69E63B0];
    v49[24] = v62;
    v49[20] = v60;
    v49[25] = 0xD000000000000016;
    v49[26] = 0x80000001C4F855C0;
    if (v79)
    {
      v61 = 0;
      v62 = 0;
      v49[28] = 0;
      v49[29] = 0;
      v29 = 0;
    }

    v49[27] = v29;
    v49[30] = v61;
    v49[31] = v62;
    sub_1C4EFB738();
    v63 = sub_1C4EFB768();
    sub_1C440BAA8(v12, 0, 1, v63);
    sub_1C4EFC0A8();
    sub_1C4420C3C(v12, &unk_1EC0C06C0, &unk_1C4F10DB0);
  }

  return result;
}

uint64_t sub_1C45DD830@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27[0] = a3;
  v27[1] = a2;
  v31 = a1;
  v5 = sub_1C4EFDAB8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = v27 - v12;
  *&v28[0] = 0;
  *(&v28[0] + 1) = 0xE000000000000000;
  sub_1C4F02248();
  MEMORY[0x1C6940010](0xD000000000000016, 0x80000001C4F8C280);
  MEMORY[0x1C6940010](*(v3 + 24), *(v3 + 32));
  MEMORY[0x1C6940010](0xD000000000000097, 0x80000001C4F8C2A0);
  sub_1C4EFBED8();

  if (!v4)
  {
    sub_1C456902C(&qword_1EC0B9AA8, &qword_1C4F11010);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1C4F0C890;
    strcpy((v15 + 32), "behaviorType");
    *(v15 + 45) = 0;
    *(v15 + 46) = -5120;
    sub_1C45D5A24(v9);
    v16 = sub_1C4EFDAA8();
    (*(v6 + 8))(v9, v5);
    v17 = MEMORY[0x1E69A0180];
    *(v15 + 72) = MEMORY[0x1E69E6530];
    *(v15 + 80) = v17;
    *(v15 + 48) = v16;
    *(v15 + 88) = 0xD000000000000012;
    *(v15 + 96) = 0x80000001C4F855A0;
    v18 = sub_1C45D2400();
    v19 = MEMORY[0x1E69A0138];
    *(v15 + 128) = MEMORY[0x1E69E6158];
    *(v15 + 136) = v19;
    *(v15 + 104) = v18;
    *(v15 + 112) = v20;
    *(v15 + 144) = 0x6D617473656D6974;
    *(v15 + 152) = 0xE900000000000070;
    sub_1C4EF9AD8();
    v21 = MEMORY[0x1E69A0168];
    *(v15 + 184) = MEMORY[0x1E69E63B0];
    *(v15 + 192) = v21;
    *(v15 + 160) = v22;
    sub_1C4EFB738();
    v23 = sub_1C4EFB768();
    sub_1C440BAA8(v13, 0, 1, v23);
    v29 = 0;
    memset(v28, 0, sizeof(v28));
    sub_1C4EFB9A8();
    sub_1C4420C3C(v28, &unk_1EC0BC770, &qword_1C4F10DC0);
    sub_1C4420C3C(v13, &unk_1EC0C06C0, &unk_1C4F10DB0);
    if (v30)
    {

      v24 = 1;
      v25 = v27[0];
    }

    else
    {
      v25 = v27[0];
      sub_1C4EF9AC8();

      v24 = 0;
    }

    v26 = sub_1C4EF9CD8();
    return sub_1C440BAA8(v25, v24, 1, v26);
  }

  return result;
}

uint64_t sub_1C45DDC14()
{
  v1 = *(v0 + 16);
  sub_1C4EFAFC8();
  return sub_1C4EFB2C8();
}

void sub_1C45DDC88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v145 = a4;
  v142 = a3;
  v144 = a1;
  v138 = sub_1C4EF9CD8();
  v7 = *(v138 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v138);
  v137 = v122 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for EntityInteractionHistogramDatabaseTable.CustomAttributesTableConfig.Property();
  v126 = *(v10 - 8);
  v11 = *(v126 + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v140 = v122 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v122 - v14;
  v130 = sub_1C4428DA0();
  if (v130)
  {
    v131 = 0;
    isUniquelyReferenced_nonNull_native = 0;
    v18 = 0;
    v129 = a2 & 0xC000000000000001;
    v125 = a2 & 0xFFFFFFFFFFFFFF8;
    v128 = a2;
    v124 = a2 + 32;
    v122[1] = 0x80000001C4F866C0;
    v122[0] = 0x80000001C4F866A0;
    v136 = (v7 + 16);
    v135 = (v7 + 8);
    *&v16 = 136315394;
    v123 = v16;
    *&v16 = 136315650;
    v133 = v16;
    v127 = a5;
    v143 = v15;
    while (1)
    {
      if (v129)
      {
        v19 = MEMORY[0x1C6940F90](v18, v128);
      }

      else
      {
        if (v18 >= *(v125 + 16))
        {
          goto LABEL_47;
        }

        v19 = *(v124 + 8 * v18);
      }

      v20 = __OFADD__(v18, 1);
      v21 = v18 + 1;
      if (v20)
      {
        break;
      }

      v22 = *(v19 + OBJC_IVAR____TtC24IntelligencePlatformCore16InteractionEvent_entityClass);
      v132 = v21;
      switch(v22)
      {
        case 3:

          goto LABEL_11;
        default:
          v23 = sub_1C4F02938();

          if (v23)
          {
LABEL_11:
            sub_1C456902C(&qword_1EC0BC780, &unk_1C4F29270);
            v141 = sub_1C4F00F28();
            v157 = v141;
            v24 = a5;
            v25 = *(a5 + 16);
            if (v25)
            {
              v147 = OBJC_IVAR____TtC24IntelligencePlatformCore16InteractionEvent_attributes;
              v134 = OBJC_IVAR____TtC24IntelligencePlatformCore16InteractionEvent_date;
              v26 = v24 + ((*(v126 + 80) + 32) & ~*(v126 + 80));
              v146 = *(v126 + 72);
              v148 = v19;
              do
              {
                v27 = sub_1C45E8694(v26, v15);
                v28 = *(v19 + v147);
                MEMORY[0x1EEE9AC00](v27);
                v122[-2] = v15;
                _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                v29 = v28;
                v30 = v149;
                v31 = sub_1C4B3421C(sub_1C45E86F8, &v122[-4], v29);
                v149 = v30;
                if (*(v31 + 16))
                {
                  v32 = *(v31 + 32);
                  v33 = *(v31 + 40);
                  v34 = *(v31 + 48);
                  sub_1C45E8718(v32, v33, v34);

                  sub_1C494CF40(*v15);
                  v36 = v35;
                  v38 = v37;
                  sub_1C494D028(v32, v33, v34, &v154);
                  sub_1C45E872C(v32, v33, v34);
                  sub_1C441D670(&v154, &v151);
                  v39 = v157;
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  v150 = v39;
                  v40 = v152;
                  v41 = v153;
                  v42 = sub_1C4418280(&v151, v152);
                  v43 = *(*(v40 - 8) + 64);
                  MEMORY[0x1EEE9AC00](v42);
                  v45 = v122 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
                  (*(v46 + 16))(v45);
                  v47 = v45;
                  v15 = v143;
                  sub_1C45E8740(v47, v36, v38, isUniquelyReferenced_nonNull_native, &v150, v40, v41);
                  sub_1C440962C(&v151);

                  v141 = v150;
                  v157 = v150;
                }

                else
                {

                  v48 = v140;
                  if (qword_1EDDFA668 != -1)
                  {
                    swift_once();
                  }

                  v49 = sub_1C4F00978();
                  sub_1C442B738(v49, qword_1EDE2DDE0);
                  sub_1C45E8694(v15, v48);

                  v50 = v19;
                  v51 = sub_1C4F00968();
                  isUniquelyReferenced_nonNull_native = sub_1C4F01CD8();

                  if (os_log_type_enabled(v51, isUniquelyReferenced_nonNull_native))
                  {
                    v52 = swift_slowAlloc();
                    v139 = swift_slowAlloc();
                    *&v154 = v139;
                    *v52 = v133;

                    v53 = sub_1C4950E5C();
                    v55 = v54;

                    v56 = sub_1C441D828(v53, v55, &v154);

                    *(v52 + 4) = v56;
                    *(v52 + 12) = 2080;
                    v57 = v50 + v134;
                    v58 = v137;
                    v59 = v138;
                    (*v136)(v137, v57, v138);
                    sub_1C45E8E08(&qword_1EDDFCD50, MEMORY[0x1E6969530]);
                    v60 = sub_1C4F02858();
                    v62 = v61;
                    (*v135)(v58, v59);
                    v63 = sub_1C441D828(v60, v62, &v154);

                    *(v52 + 14) = v63;
                    *(v52 + 22) = 2080;
                    v64 = v140;
                    sub_1C494CF40(*v140);
                    v66 = v65;
                    v68 = v67;
                    sub_1C45E8968(v64);
                    v69 = sub_1C441D828(v66, v68, &v154);
                    v15 = v143;

                    *(v52 + 24) = v69;
                    _os_log_impl(&dword_1C43F8000, v51, isUniquelyReferenced_nonNull_native, "BehaviorDatabase+EventTracking: Event %s with timestamp %s. Unable to find attribute: %s", v52, 0x20u);
                    v70 = v139;
                    swift_arrayDestroy();
                    MEMORY[0x1C6942830](v70, -1, -1);
                    MEMORY[0x1C6942830](v52, -1, -1);
                  }

                  else
                  {

                    sub_1C45E8968(v48);
                  }
                }

                sub_1C45E8968(v15);
                v26 += v146;
                --v25;
                v19 = v148;
              }

              while (v25);
            }

            v20 = __OFADD__(v131++, 1);
            if (v20)
            {
              goto LABEL_46;
            }

            v71 = *(v19 + OBJC_IVAR____TtC24IntelligencePlatformCore16InteractionEvent_entityIdentifier + 8);
            *&v154 = *(v19 + OBJC_IVAR____TtC24IntelligencePlatformCore16InteractionEvent_entityIdentifier);
            *(&v154 + 1) = v71;
            sub_1C4415EA8();
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            v72 = sub_1C4F02058();

            v73 = *(v72 + 16);

            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            a5 = v127;
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            v74 = (v72 + 56);
            if (v73)
            {
              while (1)
              {
                v75 = *(v74 - 1);
                v76 = *v74;
                v154 = *(v74 - 3);
                v155 = v75;
                v156 = v76;
                _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                v77 = v149;
                sub_1C45DEEDC(&v154, v19, &v157, v144, v142, v145);
                v149 = v77;
                if (v77)
                {
                  break;
                }

                v74 += 4;
                if (!--v73)
                {
                  goto LABEL_25;
                }
              }

              if (qword_1EDDFA668 != -1)
              {
                swift_once();
              }

              v95 = sub_1C4F00978();
              sub_1C442B738(v95, qword_1EDE2DDE0);

              v96 = v149;
              v97 = v149;
              v98 = sub_1C4F00968();
              v99 = sub_1C4F01CD8();

              if (os_log_type_enabled(v98, v99))
              {
                v100 = v19;
                v101 = swift_slowAlloc();
                v148 = swift_slowAlloc();
                *&v154 = v148;
                *v101 = v133;

                v102 = sub_1C4950E5C();
                v104 = v103;

                v105 = sub_1C441D828(v102, v104, &v154);

                *(v101 + 4) = v105;
                *(v101 + 12) = 2080;
                v106 = v137;
                v107 = v138;
                (*v136)(v137, v100 + OBJC_IVAR____TtC24IntelligencePlatformCore16InteractionEvent_date, v138);
                sub_1C45E8E08(&qword_1EDDFCD50, MEMORY[0x1E6969530]);
                v108 = sub_1C4F02858();
                v110 = v109;
                v111 = v107;
                v15 = v143;
                (*v135)(v106, v111);
                v112 = sub_1C441D828(v108, v110, &v154);

                *(v101 + 14) = v112;
                *(v101 + 22) = 2080;
                v113 = v149;
                swift_getErrorValue();
                v114 = sub_1C4F02A38();
                v116 = sub_1C441D828(v114, v115, &v154);

                *(v101 + 24) = v116;
                _os_log_impl(&dword_1C43F8000, v98, v99, "BehaviorDatabase+EventTracking: Skipping event %s with timestamp %s due to error - %s", v101, 0x20u);
                v117 = v148;
                swift_arrayDestroy();
                MEMORY[0x1C6942830](v117, -1, -1);
                MEMORY[0x1C6942830](v101, -1, -1);
              }

              else
              {
              }

              v149 = 0;
            }

            else
            {
LABEL_25:
            }

            isUniquelyReferenced_nonNull_native = v131;
          }

          else
          {
            if (qword_1EDDFA668 != -1)
            {
              swift_once();
            }

            v78 = sub_1C4F00978();
            sub_1C442B738(v78, qword_1EDE2DDE0);

            v79 = sub_1C4F00968();
            v80 = sub_1C4F01CD8();

            if (os_log_type_enabled(v79, v80))
            {
              v81 = swift_slowAlloc();
              v147 = swift_slowAlloc();
              *&v154 = v147;
              *v81 = v123;

              v82 = sub_1C4950E5C();
              v148 = isUniquelyReferenced_nonNull_native;
              v83 = v19;
              v85 = v84;

              v86 = sub_1C441D828(v82, v85, &v154);

              *(v81 + 4) = v86;
              *(v81 + 12) = 2080;
              v87 = v137;
              v88 = v138;
              (*v136)(v137, v83 + OBJC_IVAR____TtC24IntelligencePlatformCore16InteractionEvent_date, v138);
              sub_1C45E8E08(&qword_1EDDFCD50, MEMORY[0x1E6969530]);
              v89 = sub_1C4F02858();
              v91 = v90;
              v92 = v88;
              v15 = v143;
              (*v135)(v87, v92);
              v93 = sub_1C441D828(v89, v91, &v154);

              *(v81 + 14) = v93;
              _os_log_impl(&dword_1C43F8000, v79, v80, "BehaviorDatabase+EventTracking: Skipping event %s with timestamp %s. Unexpected entity class.", v81, 0x16u);
              v94 = v147;
              swift_arrayDestroy();
              MEMORY[0x1C6942830](v94, -1, -1);
              MEMORY[0x1C6942830](v81, -1, -1);
              isUniquelyReferenced_nonNull_native = v148;
            }
          }

          v18 = v132;
          if (v132 == v130)
          {
            goto LABEL_41;
          }

          break;
      }
    }

    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  isUniquelyReferenced_nonNull_native = 0;
LABEL_41:
  if (qword_1EDDFA668 != -1)
  {
LABEL_48:
    swift_once();
  }

  v118 = sub_1C4F00978();
  sub_1C442B738(v118, qword_1EDE2DDE0);
  v119 = sub_1C4F00968();
  v120 = sub_1C4F01CC8();
  if (os_log_type_enabled(v119, v120))
  {
    v121 = swift_slowAlloc();
    *v121 = 134217984;
    *(v121 + 4) = isUniquelyReferenced_nonNull_native;
    _os_log_impl(&dword_1C43F8000, v119, v120, "BehaviorDatabase+EventTracking: VirtualInteraction: Iterated through %ld events", v121, 0xCu);
    MEMORY[0x1C6942830](v121, -1, -1);
  }
}

uint64_t sub_1C45DECC0(uint64_t a1, _BYTE *a2)
{
  v2 = 0x4449656C646E7562;
  v3 = *(a1 + 16);
  v4 = 0xE800000000000000;
  v5 = 0x4449656C646E7562;
  switch(v3)
  {
    case 1:
      v4 = 0x80000001C4F86740;
      v5 = 0xD000000000000011;
      break;
    case 2:
      v5 = 0x456E6F6973736573;
      v4 = 0xEC000000746E6576;
      break;
    case 3:
      v5 = 0xD000000000000016;
      v6 = "entityIdentifier";
      goto LABEL_8;
    case 4:
      v5 = 0x7463617265746E69;
      v4 = 0xEF657079546E6F69;
      break;
    case 5:
      v5 = 0x646576726573626FLL;
      v4 = 0xEB00000000656741;
      break;
    case 6:
      v5 = 0xD000000000000016;
      v6 = "lookaheadDuration";
LABEL_8:
      v4 = v6 | 0x8000000000000000;
      break;
    default:
      break;
  }

  v7 = 0xE800000000000000;
  switch(*a2)
  {
    case 1:
      v7 = 0x80000001C4F86740;
      v2 = 0xD000000000000011;
      break;
    case 2:
      v2 = 0x456E6F6973736573;
      v7 = 0xEC000000746E6576;
      break;
    case 3:
      v2 = 0xD000000000000016;
      v8 = "entityIdentifier";
      goto LABEL_14;
    case 4:
      v2 = 0xD000000000000016;
      v8 = "lookaheadDuration";
LABEL_14:
      v7 = v8 | 0x8000000000000000;
      break;
    case 5:
      v2 = 0x7463617265746E69;
      v7 = 0xEF657079546E6F69;
      break;
    case 6:
      v2 = 0x646576726573626FLL;
      v7 = 0xEB00000000656741;
      break;
    default:
      break;
  }

  if (v5 == v2 && v4 == v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1C4F02938();
  }

  return v10 & 1;
}

uint64_t sub_1C45DEEDC(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v31 = a6;
  v30 = a5;
  v32 = a4;
  v34 = sub_1C4EFB768();
  v33 = *(v34 - 8);
  v8 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v11 = a1[1];
  v13 = a1[2];
  v14 = a1[3];
  sub_1C456902C(&qword_1EC0B9048, &unk_1C4F0EB60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0CE60;
  *(inited + 32) = 0xD000000000000010;
  *(inited + 40) = 0x80000001C4F855E0;
  v16 = MEMORY[0x1C693FEF0](v12, v11, v13, v14);
  v17 = MEMORY[0x1E69A0138];
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 80) = v17;
  *(inited + 48) = v16;
  *(inited + 56) = v18;
  *(inited + 88) = 0x7463617265746E69;
  *(inited + 96) = 0xEF657461446E6F69;
  sub_1C4EF9AD8();
  v19 = MEMORY[0x1E69A0168];
  *(inited + 128) = MEMORY[0x1E69E63B0];
  *(inited + 136) = v19;
  *(inited + 104) = v20;
  sub_1C456902C(&qword_1EC0BC780, &unk_1C4F29270);
  v21 = sub_1C4F00F28();
  v22 = *a3;
  v23 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v24 = sub_1C45DF300(v23, v21);
  v35[0] = 0;
  v35[1] = 0xE000000000000000;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4F02248();

  strcpy(v35, "INSERT INTO ");
  BYTE5(v35[1]) = 0;
  HIWORD(v35[1]) = -5120;
  MEMORY[0x1C6940010](v30, v31);
  MEMORY[0x1C6940010](10272, 0xE200000000000000);
  v36 = v24;
  sub_1C456902C(&qword_1EC0B9AB8, &qword_1C4F10DD8);
  sub_1C4401CBC(&qword_1EDDDBD98, &qword_1EC0B9AB8, &qword_1C4F10DD8);
  sub_1C4415EA8();
  v25 = sub_1C4F01568();
  MEMORY[0x1C6940010](v25);

  MEMORY[0x1C6940010](0x5345554C41560A29, 0xEA00000000002820);
  v36 = sub_1C45D9340(v24);
  sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
  sub_1C4401CBC(&qword_1EDDFCED0, &unk_1EC0B9620, &unk_1C4F0E870);
  v26 = sub_1C4F01048();
  v28 = v27;

  MEMORY[0x1C6940010](v26, v28);

  MEMORY[0x1C6940010](41, 0xE100000000000000);
  sub_1C465D0F0(v24);

  sub_1C4EFB778();
  sub_1C4EFBFF8();
  (*(v33 + 8))(v10, v34);
}

uint64_t sub_1C45DF300(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = a2;
  sub_1C45E83C8(a1, sub_1C45E8390, 0, isUniquelyReferenced_nonNull_native, &v8);
  v6 = v8;
  if (v2)
  {
  }

  return v6;
}

uint64_t sub_1C45DF384(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v38 = sub_1C4EF9CD8();
  v8 = *(v38 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v37 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1C4428DA0();
  v12 = 0;
  v40 = a2 & 0xC000000000000001;
  v41 = result;
  v39 = a2 & 0xFFFFFFFFFFFFFF8;
  v36 = (v8 + 16);
  *&v13 = 136315394;
  v32 = v13;
  v34 = a2;
  v35 = a3;
  v33 = a1;
  while (v41 != v12)
  {
    if (v40)
    {
      result = MEMORY[0x1C6940F90](v12, a2);
      v14 = result;
    }

    else
    {
      if (v12 >= *(v39 + 16))
      {
        goto LABEL_19;
      }

      v14 = *(a2 + 8 * v12 + 32);
    }

    if (__OFADD__(v12, 1))
    {
      __break(1u);
LABEL_19:
      __break(1u);
      return result;
    }

    v42 = objc_autoreleasePoolPush();
    type metadata accessor for BehaviorEvent();
    v15 = *(v14 + OBJC_IVAR____TtC24IntelligencePlatformCore16InteractionEvent_entityIdentifier + 8);
    v43[0] = *(v14 + OBJC_IVAR____TtC24IntelligencePlatformCore16InteractionEvent_entityIdentifier);
    v43[1] = v15;
    memset(&v43[2], 0, 24);
    v44 = 17;
    v16 = v37;
    (*v36)(v37, v14 + OBJC_IVAR____TtC24IntelligencePlatformCore16InteractionEvent_date, v38);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C45D644C(v43, v16);
    sub_1C45DD134(v17, a1, 1);
    if (v4)
    {

      if (qword_1EDDFA668 != -1)
      {
        swift_once();
      }

      v18 = sub_1C4F00978();
      sub_1C442B738(v18, qword_1EDE2DDE0);

      v19 = v4;
      v20 = sub_1C4F00968();
      v21 = sub_1C4F01CD8();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v45 = v23;
        *v22 = v32;
        v24 = sub_1C4950E5C();
        v26 = sub_1C441D828(v24, v25, &v45);

        *(v22 + 4) = v26;
        *(v22 + 12) = 2080;
        swift_getErrorValue();
        v27 = sub_1C4F02A38();
        v29 = sub_1C441D828(v27, v28, &v45);

        *(v22 + 14) = v29;
        _os_log_impl(&dword_1C43F8000, v20, v21, "BehaviorDatabase+EventTracking: Skipping event %s due to error - %s", v22, 0x16u);
        swift_arrayDestroy();
        v30 = v23;
        a2 = v34;
        MEMORY[0x1C6942830](v30, -1, -1);
        v31 = v22;
        a1 = v33;
        MEMORY[0x1C6942830](v31, -1, -1);
      }

      else
      {
      }

      v4 = 0;
    }

    else
    {
    }

    objc_autoreleasePoolPop(v42);

    ++v12;
  }

  return result;
}

void sub_1C45DF758(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v16 = sub_1C45DF8DC;
  v17 = 0;
  v12 = MEMORY[0x1E69E9820];
  v13 = 1107296256;
  v14 = sub_1C44405F8;
  v15 = &unk_1F43E2428;
  v8 = _Block_copy(&v12);
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a1;
  *(v9 + 32) = a4;
  v16 = sub_1C45E7A6C;
  v17 = v9;
  v12 = MEMORY[0x1E69E9820];
  v13 = 1107296256;
  v14 = sub_1C45DFE08;
  v15 = &unk_1F43E2478;
  v10 = _Block_copy(&v12);

  v11 = [a2 sinkWithCompletion:v8 receiveInput:v10];
  _Block_release(v10);
  _Block_release(v8);
}

void sub_1C45DF8DC(void *a1)
{
  v1 = [a1 error];
  if (v1)
  {
    v2 = v1;
    if (qword_1EDDFA668 != -1)
    {
      swift_once();
    }

    v3 = sub_1C4F00978();
    sub_1C442B738(v3, qword_1EDE2DDE0);
    v4 = v2;
    oslog = sub_1C4F00968();
    v5 = sub_1C4F01CD8();

    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v12 = v7;
      *v6 = 136315138;
      swift_getErrorValue();
      v8 = sub_1C4F02A38();
      v10 = sub_1C441D828(v8, v9, &v12);

      *(v6 + 4) = v10;
      _os_log_impl(&dword_1C43F8000, oslog, v5, "BehaviorDatabase+EventTracking: Biome sink completed with error - %s", v6, 0xCu);
      sub_1C440962C(v7);
      MEMORY[0x1C6942830](v7, -1, -1);
      MEMORY[0x1C6942830](v6, -1, -1);
    }

    else
    {
    }
  }
}

void sub_1C45DFA90(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (sub_1C4F01948())
  {
    if (qword_1EDDFA668 != -1)
    {
      swift_once();
    }

    v7 = sub_1C4F00978();
    sub_1C442B738(v7, qword_1EDE2DDE0);

    oslog = sub_1C4F00968();
    v8 = sub_1C4F01CD8();

    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v15 = v10;
      *v9 = 136315138;
      v11 = sub_1C45D62A8();
      v13 = sub_1C441D828(v11, v12, &v15);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_1C43F8000, oslog, v8, "BehaviorDatabase+EventTracking: task is cancelled while processing the event %s", v9, 0xCu);
      sub_1C440962C(v10);
      MEMORY[0x1C6942830](v10, -1, -1);
      MEMORY[0x1C6942830](v9, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    sub_1C45DD134(a1, a3, a4 & 1);
  }
}

uint64_t sub_1C45DFE08(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v2(v3);
}

void sub_1C45DFE68()
{
  v2 = v0;
  v3 = v0[2];
  sub_1C4EFAFC8();
  v4 = sub_1C4EFB2C8();
  if (!v1)
  {
    if (v2[6])
    {
      v5 = v2[7];
      v6 = v2[5];
      MEMORY[0x1EEE9AC00](v4);
      sub_1C4EFB2C8();
    }

    else
    {
      if (qword_1EDDFA668 != -1)
      {
        sub_1C4406758();
        swift_once();
      }

      v7 = sub_1C4F00978();
      sub_1C442B738(v7, qword_1EDE2DDE0);
      v8 = sub_1C4F00968();
      v9 = sub_1C4F01CF8();
      if (sub_1C441E1F8(v9))
      {
        sub_1C43FD1A8();
        *swift_slowAlloc() = 0;
        sub_1C442FB40(&dword_1C43F8000, v10, v11, "BehaviorDatabase+EventTracking: Skipping delete of person interaction mechanism tracking based on configuration");
        sub_1C43FEA20();
      }
    }
  }
}

uint64_t sub_1C45DFFE4(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C4EFB768();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  strcpy(v9, "DELETE FROM ");
  HIBYTE(v9[6]) = 0;
  v9[7] = -5120;
  MEMORY[0x1C6940010](*(a2 + 24), *(a2 + 32));
  sub_1C4EFB758();
  sub_1C4EFBFF8();
  (*(v4 + 8))(v7, v3);
}

uint64_t sub_1C45E011C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1C4EFB768();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  strcpy(v11, "DELETE FROM ");
  HIBYTE(v11[6]) = 0;
  v11[7] = -5120;
  MEMORY[0x1C6940010](a2, a3);
  sub_1C4EFB758();
  sub_1C4EFBFF8();
  (*(v6 + 8))(v9, v5);
}

uint64_t sub_1C45E025C()
{
  v2 = *(v0 + 16);
  sub_1C4EFAFC8();
  result = sub_1C4EFB2C8();
  if (!v1)
  {
    MEMORY[0x1EEE9AC00](result);
    return sub_1C4EFB2C8();
  }

  return result;
}

uint64_t sub_1C45E0340(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C4EFB768();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[0] = 0;
  v12[1] = 0xE000000000000000;
  sub_1C4F02248();

  strcpy(v12, "DELETE FROM ");
  BYTE5(v12[1]) = 0;
  HIWORD(v12[1]) = -5120;
  MEMORY[0x1C6940010](*(a2 + 24), *(a2 + 32));
  MEMORY[0x1C6940010](0xD000000000000023, 0x80000001C4F8C390);
  sub_1C456902C(&qword_1EC0B9AA8, &qword_1C4F11010);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1C4F0D130;
  *(v8 + 32) = 0x695466664F747563;
  *(v8 + 40) = 0xEF706D617473656DLL;
  sub_1C4EF9AD8();
  v9 = MEMORY[0x1E69A0168];
  *(v8 + 72) = MEMORY[0x1E69E63B0];
  *(v8 + 80) = v9;
  *(v8 + 48) = v10;
  sub_1C4EFB738();
  sub_1C4EFBFF8();
  (*(v4 + 8))(v7, v3);
}

uint64_t sub_1C45E0530(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a3;
  v31 = sub_1C4EFB768();
  v5 = *(v31 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v31);
  v24 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v21 - v9;
  *&v27[0] = 0;
  *(&v27[0] + 1) = 0xE000000000000000;
  sub_1C4F02248();

  *&v27[0] = 0xD000000000000015;
  *(&v27[0] + 1) = 0x80000001C4F8C340;
  v11 = *(a2 + 24);
  v12 = *(a2 + 32);
  MEMORY[0x1C6940010](v11, v12);
  v28 = 0;
  memset(v27, 0, sizeof(v27));
  sub_1C4EFB758();
  v13 = MEMORY[0x1E69E6530];
  v14 = v26;
  sub_1C4EFB998();
  if (v14)
  {

    (*(v5 + 8))(v10, v31);
    return sub_1C4420C3C(v27, &unk_1EC0BC770, &qword_1C4F10DC0);
  }

  else
  {
    v22 = v11;
    v23 = v12;
    v26 = 0;
    v16 = v25;
    v21 = a1;

    v17 = *(v5 + 8);
    v18 = v31;
    v17(v10, v31);
    result = sub_1C4420C3C(v27, &unk_1EC0BC770, &qword_1C4F10DC0);
    if ((v30 & 1) == 0)
    {
      v19 = v29;
      if (v29 > v16)
      {
        *&v27[0] = 0;
        *(&v27[0] + 1) = 0xE000000000000000;
        sub_1C4F02248();

        strcpy(v27, "DELETE FROM ");
        BYTE13(v27[0]) = 0;
        HIWORD(v27[0]) = -5120;
        MEMORY[0x1C6940010](v22, v23);
        MEMORY[0x1C6940010](0xD000000000000024, 0x80000001C4F8C360);
        sub_1C456902C(&qword_1EC0B9AA8, &qword_1C4F11010);
        result = swift_allocObject();
        *(result + 16) = xmmword_1C4F0D130;
        *(result + 32) = 0x746E756F63;
        *(result + 40) = 0xE500000000000000;
        if (__OFSUB__(v19, v16))
        {
          __break(1u);
        }

        else
        {
          *(result + 72) = v13;
          *(result + 80) = MEMORY[0x1E69A0180];
          *(result + 48) = v19 - v16;
          v20 = v24;
          sub_1C4EFB738();
          sub_1C4EFBFF8();
          v17(v20, v18);
        }
      }
    }
  }

  return result;
}

uint64_t sub_1C45E0884()
{
  v1 = *(v0 + 16);
  sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  return sub_1C4EFAF88();
}

uint64_t sub_1C45E0930(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v51 = a3;
  v56 = sub_1C456902C(&qword_1EC0B89F0, &qword_1C4F0DE10);
  v9 = sub_1C43FCDF8(v56);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBD08();
  v50 = v14 - v15;
  v17 = MEMORY[0x1EEE9AC00](v16);
  v55 = v44 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v49 = v44 - v20;
  if (!*(a2 + 16))
  {
    *&result = 0.0;
    return result;
  }

  v45 = *(a2 + 16);
  v21 = *(v4 + 16);
  MEMORY[0x1EEE9AC00](v19);
  v44[-2] = v4;
  v44[-1] = a1;
  sub_1C456902C(&qword_1EC0B9228, &unk_1C4F3DD70);
  *&result = COERCE_DOUBLE(sub_1C4EFAF88());
  if (!v5)
  {
    if (!*(v57 + 16))
    {

      *&result = 0.0;
      return result;
    }

    v44[1] = 0;
    v47 = *(v56 + 48);
    v48 = v57;
    v23 = a2 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v46 = *(v11 + 72);
    v24 = 0.0;
    v25 = &qword_1EC0B89F0;
    v26 = &qword_1C4F0DE10;
    v27 = v45;
    v28 = 0.0;
    while (1)
    {
      v53 = v27;
      v54 = v23;
      v29 = v49;
      sub_1C4460050(v23, v49, v25, v26);
      v30 = *(v56 + 48);
      v52 = v30;
      v31 = sub_1C4EF9CD8();
      v32 = *(v31 - 8);
      v33 = *(v32 + 32);
      v34 = v26;
      v35 = v25;
      v36 = v55;
      v33(v55, v29, v31);
      v33(v36 + v30, v29 + v47, v31);
      v37 = v36;
      v25 = v35;
      v26 = v34;
      v38 = v50;
      sub_1C4460050(v37, v50, v25, v34);
      v39 = *(v56 + 48);
      v40 = sub_1C45E2238(v38, v38 + v39, v48);
      v41 = *(v32 + 8);
      v41(v38 + v39, v31);
      v41(v38, v31);
      sub_1C4EF9B78();
      if (v42 <= 0.0)
      {
        break;
      }

      v43 = exp2(-v42 / a4);
      sub_1C4420C3C(v55, v25, v26);
      if (v40)
      {
        goto LABEL_9;
      }

LABEL_10:
      v24 = v24 + v43;
      v23 = v54 + v46;
      v27 = v53 - 1;
      if (v53 == 1)
      {

        *&result = v28 / v24;
        return result;
      }
    }

    sub_1C4420C3C(v55, v25, v26);
    v43 = 1.0;
    if ((v40 & 1) == 0)
    {
      goto LABEL_10;
    }

LABEL_9:
    v28 = v28 + v43;
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_1C45E0CE4()
{
  v2 = *(v0 + 16);
  sub_1C456902C(&qword_1EC0B9A58, &unk_1C4F10E60);
  sub_1C441C09C();
  result = sub_1C4EFAF88();
  if (!v1)
  {
    return v4;
  }

  return result;
}

void sub_1C45E0D68(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v9 = sub_1C4EF9CD8();
  v10 = sub_1C43FCDF8(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  if (*(a2 + 16))
  {
    (*(v12 + 16))(&v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v9);
    v15 = *(v12 + 80);
    v21 = a1;
    v16 = (v15 + 16) & ~v15;
    v17 = swift_allocObject();
    v18 = (*(v12 + 32))(v17 + v16, &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
    *(v17 + ((v14 + v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = a4;
    v19 = *(v4 + 16);
    MEMORY[0x1EEE9AC00](v18);
    *(&v20 - 6) = a2;
    *(&v20 - 5) = v4;
    *(&v20 - 4) = v21;
    *(&v20 - 3) = sub_1C45E8C2C;
    *(&v20 - 2) = v17;
    sub_1C456902C(&qword_1EC0B9AD8, &unk_1C4F14290);
    sub_1C4EFAF88();
  }

  sub_1C4402144();
}

uint64_t sub_1C45E0F90()
{
  v2 = *(v0 + 16);
  sub_1C456902C(&qword_1EC0B9AD8, &unk_1C4F14290);
  result = sub_1C4EFAF88();
  if (!v1)
  {
    return v4;
  }

  return result;
}

double sub_1C45E100C()
{
  v2 = *(v0 + 16);
  sub_1C4EFAF88();
  if (!v1)
  {
    return v4;
  }

  return result;
}

double sub_1C45E1070@<D0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + 16);
  sub_1C456902C(&qword_1EC0B9A20, &unk_1C4F10DF0);
  sub_1C4EFAF88();
  if (!v2)
  {
    result = *&v6;
    *a1 = v6;
    *(a1 + 16) = v7;
    *(a1 + 32) = v8;
    *(a1 + 40) = v9;
  }

  return result;
}

uint64_t sub_1C45E110C()
{
  if (*(v0 + 48))
  {
    sub_1C44101B4();
    MEMORY[0x1EEE9AC00](v2);
    sub_1C456902C(&qword_1EC0B9AE8, &qword_1C4F10E40);
    result = sub_1C440BB2C();
    if (!v1)
    {
      return v9;
    }
  }

  else
  {
    if (qword_1EDDFA668 != -1)
    {
      sub_1C4406758();
      swift_once();
    }

    v4 = sub_1C4F00978();
    sub_1C442B738(v4, qword_1EDE2DDE0);
    v5 = sub_1C4F00968();
    v6 = sub_1C4F01CF8();
    if (sub_1C441E1F8(v6))
    {
      sub_1C43FD1A8();
      *swift_slowAlloc() = 0;
      sub_1C442FB40(&dword_1C43F8000, v7, v8, "CustomAttributesTable is nil. Returning []");
      sub_1C43FEA20();
    }

    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t sub_1C45E1240()
{
  if (*(v0 + 48))
  {
    sub_1C44101B4();
    MEMORY[0x1EEE9AC00](v2);
    sub_1C456902C(&qword_1EC0B9AF8, &qword_1C4F10E50);
    result = sub_1C440BB2C();
    if (!v1)
    {
      return v9;
    }
  }

  else
  {
    if (qword_1EDDFA668 != -1)
    {
      sub_1C4406758();
      swift_once();
    }

    v4 = sub_1C4F00978();
    sub_1C442B738(v4, qword_1EDE2DDE0);
    v5 = sub_1C4F00968();
    v6 = sub_1C4F01CF8();
    if (sub_1C441E1F8(v6))
    {
      sub_1C43FD1A8();
      *swift_slowAlloc() = 0;
      sub_1C442FB40(&dword_1C43F8000, v7, v8, "CustomAttributesTable is nil. Returning []");
      sub_1C43FEA20();
    }

    sub_1C456902C(&qword_1EC0B9AF0, &qword_1C4F10E48);
    return sub_1C4F00F28();
  }

  return result;
}

uint64_t sub_1C45E1398()
{
  v2 = *(v0 + 16);
  sub_1C456902C(&qword_1EC0B8F58, &qword_1C4F11020);
  sub_1C441C09C();
  result = sub_1C4EFAF88();
  if (!v1)
  {
    return v4;
  }

  return result;
}

void sub_1C45E1418()
{
  sub_1C43FE96C();
  v1 = sub_1C4EF9CD8();
  v2 = sub_1C43FCDF8(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  sub_1C43FBCC4();
  v9 = v8 - v7;
  sub_1C4EF9BE8();
  v10 = *(v0 + 16);
  sub_1C456902C(&qword_1EC0B9AB0, &qword_1C4F10DC8);
  sub_1C4EFAF88();
  (*(v4 + 8))(v9, v1);
  sub_1C43FBC80();
}

double sub_1C45E15D8(double a1, double a2)
{
  v3 = sub_1C4EF9CD8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4EF9AC8();
  sub_1C4EF9B78();
  v9 = 1.0;
  if (v8 > 0.0)
  {
    v9 = exp2(-v8 / a2);
  }

  (*(v4 + 8))(v7, v3);
  return v9;
}

void sub_1C45E16D8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, double (*a5)(double)@<X4>, uint64_t a6@<X5>, double *a7@<X8>)
{
  v118 = a6;
  v104 = a3;
  v105 = a4;
  v112 = a1;
  v84 = a7;
  v9 = sub_1C4EFB768();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v89 = &v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v102 = &v84 - v14;
  v101 = sub_1C4EFDAB8();
  v15 = *(v101 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v101);
  v100 = &v84 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_1C456902C(&qword_1EC0B89F0, &qword_1C4F0DE10);
  v98 = *(v99 - 8);
  v18 = *(v98 + 64);
  v19 = MEMORY[0x1EEE9AC00](v99);
  v96 = &v84 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v113 = &v84 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v95 = &v84 - v23;
  v103 = a2;
  v107 = *(a2 + 16);
  v24 = 0;
  v94 = "\nORDER BY timestamp, rowid";
  v93 = "SELECT\n    timestamp\nFROM\n    ";
  v92 = (v15 + 8);
  v91 = 0x80000001C4F855A0;
  v88 = "entifier == :behaviorIdentifier";
  v87 = "SELECT\n   timestamp\nFROM\n   ";
  v25 = 0.0;
  v90 = xmmword_1C4F0D480;
  v86 = xmmword_1C4F0CE60;
  v26 = 0.0;
  v106 = v9;
  v97 = (v10 + 8);
  v85 = a5;
  while (v24 != v107)
  {
    v27 = v103 + ((*(v98 + 80) + 32) & ~*(v98 + 80));
    v28 = *(v98 + 72);
    v108 = v24;
    v29 = v95;
    sub_1C4460050(v27 + v28 * v24, v95, &qword_1EC0B89F0, &qword_1C4F0DE10);
    v30 = v99;
    v31 = *(v99 + 48);
    v32 = sub_1C4EF9CD8();
    v33 = *(v32 - 8);
    v34 = *(v33 + 32);
    v35 = v113;
    v34(v113, v29, v32);
    v34(v35 + v31, v29 + v31, v32);
    v36 = v96;
    sub_1C4460050(v35, v96, &qword_1EC0B89F0, &qword_1C4F0DE10);
    v37 = *(v30 + 48);
    sub_1C4EF9AD8();
    v39 = v38;
    v40 = *(v33 + 8);
    v40(v36, v32);
    v40(v36 + v37, v32);
    sub_1C4460050(v35, v36, &qword_1EC0B89F0, &qword_1C4F0DE10);
    v41 = *(v30 + 48);
    sub_1C4EF9AD8();
    v43 = v42;
    v40(v36 + v41, v32);
    v40(v36, v32);
    *&v115 = 0;
    *(&v115 + 1) = 0xE000000000000000;
    sub_1C4F02248();
    MEMORY[0x1C6940010](0xD00000000000001ELL, v94 | 0x8000000000000000);
    v44 = *(v104 + 24);
    v110 = *(v104 + 32);
    v111 = v44;
    MEMORY[0x1C6940010]();
    MEMORY[0x1C6940010](0xD00000000000008FLL, v93 | 0x8000000000000000);
    sub_1C456902C(&qword_1EC0B9AA8, &qword_1C4F11010);
    v45 = swift_allocObject();
    *(v45 + 16) = v90;
    *(v45 + 32) = 0x7472617473;
    *(v45 + 40) = 0xE500000000000000;
    v46 = MEMORY[0x1E69E63B0];
    *(v45 + 72) = MEMORY[0x1E69E63B0];
    v47 = MEMORY[0x1E69A0168];
    *(v45 + 48) = v39;
    *(v45 + 80) = v47;
    *(v45 + 88) = 6581861;
    *(v45 + 96) = 0xE300000000000000;
    *(v45 + 128) = v46;
    *(v45 + 136) = v47;
    *(v45 + 104) = v43;
    strcpy((v45 + 144), "behaviorType");
    *(v45 + 157) = 0;
    *(v45 + 158) = -5120;
    v48 = v100;
    sub_1C45D5A24(v100);
    v49 = sub_1C4EFDAA8();
    (*v92)(v48, v101);
    *(v45 + 184) = MEMORY[0x1E69E6530];
    v50 = MEMORY[0x1E69A0180];
    *(v45 + 160) = v49;
    *(v45 + 192) = v50;
    *(v45 + 200) = 0xD000000000000012;
    *(v45 + 208) = v91;
    v51 = sub_1C45D2400();
    *(v45 + 240) = MEMORY[0x1E69E6158];
    *(v45 + 248) = MEMORY[0x1E69A0138];
    *(v45 + 216) = v51;
    *(v45 + 224) = v52;
    v53 = v102;
    sub_1C4EFB738();
    v117 = 0;
    v115 = 0u;
    v116 = 0u;
    v54 = v114;
    v55 = sub_1C4EFB978();
    if (v54)
    {
      v114 = v54;

      sub_1C4420C3C(&v115, &unk_1EC0BC770, &qword_1C4F10DC0);
      (*v97)(v53, v106);
      sub_1C4420C3C(v113, &qword_1EC0B89F0, &qword_1C4F0DE10);
      return;
    }

    v56 = v55;

    sub_1C4420C3C(&v115, &unk_1EC0BC770, &qword_1C4F10DC0);
    v57 = v106;
    v109 = *v97;
    v109(v53, v106);
    *&v115 = 0;
    *(&v115 + 1) = 0xE000000000000000;
    sub_1C4F02248();
    MEMORY[0x1C6940010](0xD00000000000001CLL, v88 | 0x8000000000000000);
    MEMORY[0x1C6940010](v111, v110);
    MEMORY[0x1C6940010](0xD000000000000035, v87 | 0x8000000000000000);
    v114 = v115;
    v58 = swift_allocObject();
    *(v58 + 16) = v86;
    *(v58 + 32) = 0x7472617473;
    *(v58 + 40) = 0xE500000000000000;
    v59 = MEMORY[0x1E69E63B0];
    *(v58 + 72) = MEMORY[0x1E69E63B0];
    *(v58 + 80) = v47;
    *(v58 + 48) = v39;
    *(v58 + 88) = 6581861;
    *(v58 + 96) = 0xE300000000000000;
    *(v58 + 128) = v59;
    *(v58 + 136) = v47;
    *(v58 + 104) = v43;
    v60 = v89;
    sub_1C4EFB738();
    v117 = 0;
    v115 = 0u;
    v116 = 0u;
    v61 = sub_1C4EFB978();
    v114 = 0;
    v62 = v61;

    sub_1C4420C3C(&v115, &unk_1EC0BC770, &qword_1C4F10DC0);
    v109(v60, v57);
    v63 = *(v56 + 16);
    if (v63)
    {
      *&v115 = MEMORY[0x1E69E7CC0];
      sub_1C459D100();
      v64 = 0;
      v65 = v115;
      v66 = v85;
      while (v64 < *(v56 + 16))
      {
        v67 = v66(*(v56 + 8 * v64 + 32));
        *&v115 = v65;
        v68 = *(v65 + 16);
        if (v68 >= *(v65 + 24) >> 1)
        {
          sub_1C459D100();
          v65 = v115;
        }

        ++v64;
        *(v65 + 16) = v68 + 1;
        *(v65 + 8 * v68 + 32) = v67;
        if (v63 == v64)
        {

          goto LABEL_12;
        }
      }

      __break(1u);
      goto LABEL_36;
    }

    v65 = MEMORY[0x1E69E7CC0];
    v66 = v85;
LABEL_12:
    v69 = *(v65 + 16);
    if (v69)
    {
      v70 = (v65 + 32);
      v71 = 0.0;
      do
      {
        v72 = *v70++;
        v71 = v71 + v72;
        --v69;
      }

      while (v69);
    }

    else
    {
      v71 = 0.0;
    }

    v73 = *(v62 + 16);
    if (v73)
    {
      *&v115 = MEMORY[0x1E69E7CC0];
      sub_1C459D100();
      v74 = 0;
      v75 = v115;
      while (v74 < *(v62 + 16))
      {
        v76 = v66(*(v62 + 8 * v74 + 32));
        *&v115 = v75;
        v77 = *(v75 + 16);
        if (v77 >= *(v75 + 24) >> 1)
        {
          sub_1C459D100();
          v75 = v115;
        }

        ++v74;
        *(v75 + 16) = v77 + 1;
        *(v75 + 8 * v77 + 32) = v76;
        if (v73 == v74)
        {

          goto LABEL_25;
        }
      }

LABEL_36:
      __break(1u);
      return;
    }

    v75 = MEMORY[0x1E69E7CC0];
LABEL_25:
    v78 = *(v75 + 16);
    if (v78)
    {
      v79 = (v75 + 32);
      v80 = 0.0;
      do
      {
        v81 = *v79++;
        v80 = v80 + v81;
        --v78;
      }

      while (v78);
    }

    else
    {
      v80 = 0.0;
    }

    v24 = v108 + 1;
    v25 = v25 + v71;

    sub_1C4420C3C(v113, &qword_1EC0B89F0, &qword_1C4F0DE10);
    v26 = v26 + v80;
  }

  v82 = 0.0;
  if (v26 > 0.0)
  {
    v82 = v25 / v26;
  }

  v83 = v84;
  *v84 = v82;
  *(v83 + 8) = v26 <= 0.0;
}

uint64_t sub_1C45E2238(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C456902C(&qword_1EC0B89F0, &qword_1C4F0DE10);
  v7 = sub_1C43FBCE0(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBD08();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v39 - v14;
  v16 = sub_1C4EF9CD8();
  v17 = *(v16 - 8);
  v18 = *(v17 + 16);
  v19 = a1;
  v20 = a3;
  v18(v15, v19, v16);
  v18(&v15[*(v6 + 48)], a2, v16);
  sub_1C4460050(v15, v12, &qword_1EC0B89F0, &qword_1C4F0DE10);
  v21 = *(v6 + 48);
  sub_1C4EF9AD8();
  v23 = v22;
  v24 = *(v17 + 8);
  v24(v12 + v21, v16);
  v25 = sub_1C45E24E0(v20, v23);
  LOBYTE(v21) = v26;
  v27 = sub_1C4404BCC();
  result = (v24)(v27);
  if (v21)
  {
    goto LABEL_5;
  }

  if ((v25 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v25 < *(v20 + 16))
  {
    v29 = *(v20 + 8 * v25 + 32);
    sub_1C4460050(v15, v12, &qword_1EC0B89F0, &qword_1C4F0DE10);
    v30 = *(v6 + 48);
    sub_1C4EF9AD8();
    v32 = v31;
    v33 = sub_1C4404BCC();
    (v24)(v33);
    v24(v12 + v30, v16);
    if (v32 <= v29)
    {
      sub_1C4460050(v15, v12, &qword_1EC0B89F0, &qword_1C4F0DE10);
      v35 = *(v6 + 48);
      sub_1C4EF9AD8();
      v37 = v36;
      sub_1C4420C3C(v15, &qword_1EC0B89F0, &qword_1C4F0DE10);
      v24(v12 + v35, v16);
      v34 = v29 <= v37;
      v38 = sub_1C4404BCC();
      (v24)(v38);
      return v34;
    }

LABEL_5:
    sub_1C4420C3C(v15, &qword_1EC0B89F0, &qword_1C4F0DE10);
    return 0;
  }

  __break(1u);
  return result;
}

unint64_t sub_1C45E24E0(uint64_t a1, double a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = 0;
  v4 = a1 + 32;
  result = *(a1 + 16);
LABEL_3:
  v6 = result;
  while (v3 < v6)
  {
    if (__OFSUB__(v6, v3))
    {
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      return result;
    }

    v7 = (v6 - v3) / 2;
    result = v3 + v7;
    if (__OFADD__(v3, v7))
    {
      goto LABEL_21;
    }

    if (result >= v2)
    {
      goto LABEL_22;
    }

    v8 = *(v4 + 8 * result);
    if (v8 == a2)
    {
      return result;
    }

    if (v8 >= a2)
    {
      goto LABEL_3;
    }

    v3 = result + 1;
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return 0;
    }
  }

  result = v3 - (v3 == v2);
  if (result >= v2)
  {
    goto LABEL_23;
  }

  if (*(v4 + 8 * result) > a2)
  {
    if (result)
    {
      --result;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C45E2594(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = 0;
  v4 = a2 + 32;
  v5 = *(a2 + 16);
LABEL_3:
  v6 = v5;
  while (v3 < v6)
  {
    if (__OFSUB__(v6, v3))
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

    v7 = (v6 - v3) / 2;
    v8 = __OFADD__(v3, v7);
    v5 = v3 + v7;
    if (v8)
    {
      goto LABEL_20;
    }

    if (v5 >= v2)
    {
      goto LABEL_21;
    }

    v9 = *(v4 + 8 * v5);
    if (v9 == result)
    {
      return v5;
    }

    if (v9 >= result)
    {
      goto LABEL_3;
    }

    v3 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
      return 0;
    }
  }

  v5 = v3 - (v3 == v2);
  if (v5 >= v2)
  {
    goto LABEL_22;
  }

  if (*(v4 + 8 * v5) > result)
  {
    --v5;
    if (v3 == (v3 == v2))
    {
      return 0;
    }
  }

  return v5;
}

uint64_t sub_1C45E264C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v27 = a2;
  v24 = a3;
  v5 = sub_1C4EFDAB8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v23 - v12;
  *&v25[0] = 0;
  *(&v25[0] + 1) = 0xE000000000000000;
  sub_1C4F02248();
  MEMORY[0x1C6940010](0xD000000000000016, 0x80000001C4F8C280);
  MEMORY[0x1C6940010](*(a1 + 24), *(a1 + 32));
  MEMORY[0x1C6940010](0xD00000000000006ALL, 0x80000001C4F8C960);
  sub_1C4EFBED8();

  if (!v3)
  {
    sub_1C456902C(&qword_1EC0B9AA8, &qword_1C4F11010);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1C4F0CE60;
    strcpy((v15 + 32), "behaviorType");
    *(v15 + 45) = 0;
    *(v15 + 46) = -5120;
    sub_1C45D5A24(v9);
    v16 = sub_1C4EFDAA8();
    (*(v6 + 8))(v9, v5);
    v17 = MEMORY[0x1E69A0180];
    *(v15 + 72) = MEMORY[0x1E69E6530];
    *(v15 + 80) = v17;
    *(v15 + 48) = v16;
    *(v15 + 88) = 0xD000000000000012;
    *(v15 + 96) = 0x80000001C4F855A0;
    v18 = sub_1C45D2400();
    v19 = MEMORY[0x1E69A0138];
    *(v15 + 128) = MEMORY[0x1E69E6158];
    *(v15 + 136) = v19;
    *(v15 + 104) = v18;
    *(v15 + 112) = v20;
    sub_1C4EFB738();
    v21 = sub_1C4EFB768();
    sub_1C440BAA8(v13, 0, 1, v21);
    v26 = 0;
    memset(v25, 0, sizeof(v25));
    v22 = sub_1C4EFB988();

    sub_1C4420C3C(v25, &unk_1EC0BC770, &qword_1C4F10DC0);
    result = sub_1C4420C3C(v13, &unk_1EC0C06C0, &unk_1C4F10DB0);
    *v24 = v22;
  }

  return result;
}

uint64_t sub_1C45E2978@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v19[0] = a3;
  v19[1] = a1;
  v4 = sub_1C4EFB768();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v20[0] = 0;
  *(&v20[0] + 1) = 0xE000000000000000;
  sub_1C4F02248();
  MEMORY[0x1C6940010](0xD00000000000001FLL, 0x80000001C4F8C3C0);
  MEMORY[0x1C6940010](*(a2 + 24), *(a2 + 32));
  MEMORY[0x1C6940010](0xD000000000000023, 0x80000001C4F8CAE0);
  sub_1C456902C(&qword_1EC0B9AA8, &qword_1C4F11010);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1C4F0D130;
  strcpy((v9 + 32), "behaviorType");
  *(v9 + 45) = 0;
  *(v9 + 46) = -5120;
  v10 = sub_1C4EFDAA8();
  v11 = MEMORY[0x1E69A0180];
  *(v9 + 72) = MEMORY[0x1E69E6530];
  *(v9 + 80) = v11;
  *(v9 + 48) = v10;
  sub_1C4EFB738();
  v21 = 0;
  memset(v20, 0, sizeof(v20));
  v18 = MEMORY[0x1E69E6168];
  v12 = v22;
  v13 = sub_1C4EFB948();
  if (v12)
  {

    sub_1C4420C3C(v20, &unk_1EC0BC770, &qword_1C4F10DC0);
    return (*(v5 + 8))(v8, v4);
  }

  else
  {
    v15 = v13;

    sub_1C4420C3C(v20, &unk_1EC0BC770, &qword_1C4F10DC0);
    v16 = (*(v5 + 8))(v8, v4);
    MEMORY[0x1EEE9AC00](v16);
    v17 = sub_1C45D95B4(sub_1C45E8EA0, &v19[-4], v15);

    *v19[0] = v17;
  }

  return result;
}

uint64_t sub_1C45E2C64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v83 = a4;
  v84 = a5;
  v88 = a3;
  v85 = a6;
  v86 = sub_1C4EF9CD8();
  v92 = *(v86 - 8);
  v8 = *(v92 + 64);
  v9 = MEMORY[0x1EEE9AC00](v86);
  v82 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v71 - v11;
  v13 = sub_1C4EFDAB8();
  v89 = *(v13 - 8);
  v90 = v13;
  v14 = v89[8];
  MEMORY[0x1EEE9AC00](v13);
  v91 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v87 = &v71 - v21;
  *&v93 = 0;
  *(&v93 + 1) = 0xE000000000000000;
  sub_1C4F02248();
  MEMORY[0x1C6940010](0xD000000000000016, 0x80000001C4F8C280);
  v23 = *(a2 + 24);
  v22 = *(a2 + 32);
  MEMORY[0x1C6940010](v23, v22);
  MEMORY[0x1C6940010](0xD000000000000072, 0x80000001C4F8CCE0);
  v24 = v96;
  v25 = sub_1C4EFBED8();
  if (v24)
  {
  }

  v77 = "timeSincePreviousEvent)";
  v78 = v22;
  v79 = v23;
  v80 = a1;
  v75 = v20;
  v74 = v12;
  v27 = v25;

  v81 = sub_1C456902C(&qword_1EC0B9AA8, &qword_1C4F11010);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1C4F0CE60;
  strcpy((v28 + 32), "behaviorType");
  *(v28 + 45) = 0;
  *(v28 + 46) = -5120;
  v29 = v91;
  v96 = 0;
  sub_1C45D5A24(v91);
  v30 = sub_1C4EFDAA8();
  v76 = v89[1];
  v76(v29, v90);
  v31 = MEMORY[0x1E69A0180];
  *(v28 + 72) = MEMORY[0x1E69E6530];
  *(v28 + 80) = v31;
  *(v28 + 48) = v30;
  *(v28 + 88) = 0xD000000000000012;
  *(v28 + 96) = 0x80000001C4F855A0;
  v32 = sub_1C45D2400();
  v33 = MEMORY[0x1E69A0138];
  *(v28 + 128) = MEMORY[0x1E69E6158];
  *(v28 + 136) = v33;
  *(v28 + 104) = v32;
  *(v28 + 112) = v34;
  v35 = v87;
  sub_1C4EFB738();
  v36 = sub_1C4EFB768();
  sub_1C440BAA8(v35, 0, 1, v36);
  v95 = 0;
  v93 = 0u;
  v94 = 0u;
  v37 = MEMORY[0x1E69A0168];
  v38 = MEMORY[0x1E69E63B0];
  v39 = v96;
  v40 = sub_1C4EFB988();
  if (v39)
  {

    sub_1C4420C3C(&v93, &unk_1EC0BC770, &qword_1C4F10DC0);
    v41 = v35;
    return sub_1C4420C3C(v41, &unk_1EC0C06C0, &unk_1C4F10DB0);
  }

  v72 = v36;
  v88 = v27;
  v73 = 0x80000001C4F855A0;
  v42 = v40;
  sub_1C4420C3C(&v93, &unk_1EC0BC770, &qword_1C4F10DC0);
  sub_1C4420C3C(v35, &unk_1EC0C06C0, &unk_1C4F10DB0);
  if (!v42[2])
  {

    v43 = MEMORY[0x1E69E7CC0];
    v44 = v85;
LABEL_9:
    *v44 = v43;
    return result;
  }

  v89 = v42;
  *&v93 = 0;
  *(&v93 + 1) = 0xE000000000000000;
  sub_1C4F02248();
  MEMORY[0x1C6940010](0xD000000000000016, v77 | 0x8000000000000000);
  MEMORY[0x1C6940010](v79, v78);
  MEMORY[0x1C6940010](0xD000000000000090, 0x80000001C4F8CD60);
  v87 = sub_1C4EFBED8();
  v96 = 0;

  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_1C4F0C890;
  strcpy((v45 + 32), "behaviorType");
  *(v45 + 45) = 0;
  *(v45 + 46) = -5120;
  v46 = v91;
  sub_1C45D5A24(v91);
  v47 = sub_1C4EFDAA8();
  v76(v46, v90);
  *(v45 + 72) = MEMORY[0x1E69E6530];
  *(v45 + 80) = MEMORY[0x1E69A0180];
  *(v45 + 88) = 0xD000000000000012;
  *(v45 + 48) = v47;
  *(v45 + 96) = v73;
  result = sub_1C45D2400();
  *(v45 + 128) = MEMORY[0x1E69E6158];
  v48 = MEMORY[0x1E69A0138];
  *(v45 + 104) = result;
  *(v45 + 112) = v49;
  *(v45 + 136) = v48;
  strcpy((v45 + 144), "minTimestamp");
  *(v45 + 157) = 0;
  *(v45 + 158) = -5120;
  *(v45 + 184) = v38;
  *(v45 + 192) = v37;
  v50 = v89;
  if (v89[2])
  {
    *(v45 + 160) = v89[4];
    v51 = v75;
    sub_1C4EFB738();
    sub_1C440BAA8(v51, 0, 1, v72);
    v95 = 0;
    v93 = 0u;
    v94 = 0u;
    v52 = v96;
    v53 = sub_1C4EFB988();
    v54 = v84;
    if (v52)
    {

      sub_1C4420C3C(&v93, &unk_1EC0BC770, &qword_1C4F10DC0);
      v41 = v51;
      return sub_1C4420C3C(v41, &unk_1EC0C06C0, &unk_1C4F10DB0);
    }

    v55 = v53;
    v96 = 0;
    sub_1C4420C3C(&v93, &unk_1EC0BC770, &qword_1C4F10DC0);
    sub_1C4420C3C(v51, &unk_1EC0C06C0, &unk_1C4F10DB0);
    v56 = v50[2];
    v57 = MEMORY[0x1E69E7CC0];
    if (v56)
    {
      v91 = v55;
      *&v93 = MEMORY[0x1E69E7CC0];
      sub_1C459D270();
      v58 = v93;
      v59 = 4;
      v60 = v86;
      v61 = v74;
      do
      {
        v62 = v89[v59];
        sub_1C4EF9AC8();
        *&v93 = v58;
        v63 = *(v58 + 16);
        if (v63 >= *(v58 + 24) >> 1)
        {
          sub_1C459D270();
          v60 = v86;
          v58 = v93;
        }

        *(v58 + 16) = v63 + 1;
        (*(v92 + 32))(v58 + ((*(v92 + 80) + 32) & ~*(v92 + 80)) + *(v92 + 72) * v63, v61, v60);
        ++v59;
        --v56;
      }

      while (v56);

      v54 = v84;
      v55 = v91;
    }

    else
    {

      v58 = MEMORY[0x1E69E7CC0];
    }

    v64 = *(v55 + 16);
    if (v64)
    {
      *&v93 = v57;
      sub_1C459D270();
      v65 = v93;
      v66 = 32;
      v67 = v82;
      do
      {
        v68 = v55;
        v69 = *(v55 + v66);
        sub_1C4EF9AC8();
        *&v93 = v65;
        v70 = *(v65 + 16);
        if (v70 >= *(v65 + 24) >> 1)
        {
          sub_1C459D270();
          v65 = v93;
        }

        *(v65 + 16) = v70 + 1;
        (*(v92 + 32))(v65 + ((*(v92 + 80) + 32) & ~*(v92 + 80)) + *(v92 + 72) * v70, v67, v86);
        v66 += 8;
        --v64;
        v55 = v68;
      }

      while (v64);

      v54 = v84;
    }

    else
    {

      v65 = MEMORY[0x1E69E7CC0];
    }

    v43 = sub_1C45DB974(v58, v65, v54);

    v44 = v85;
    goto LABEL_9;
  }

  __break(1u);
  return result;
}