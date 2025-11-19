uint64_t sub_1D5FFC77C(uint64_t result, uint64_t a2, unsigned __int8 a3, unint64_t a4, char a5)
{
  v6 = v5;
  v10 = result;
  v11 = *(*v5 + 16);
  v12 = *(*v5 + 24);
  if (v12 > v11 && (a5 & 1) != 0)
  {
    goto LABEL_49;
  }

  if (a5)
  {
    sub_1D5FF3F34();
  }

  else
  {
    if (v12 > v11)
    {
      result = sub_1D6000A30(&qword_1EC882250, sub_1D6007730, &type metadata for FormatDerivedDataOptionScope, sub_1D6007700);
      goto LABEL_49;
    }

    sub_1D600427C();
  }

  v13 = *v5;
  sub_1D7264A0C();
  if (a3 > 2u)
  {
    if (a3 == 3)
    {
      v14 = 4;
    }

    else
    {
      if (a3 != 4)
      {
        MEMORY[0x1DA6FC0B0](0);
        goto LABEL_19;
      }

      v14 = 5;
    }
  }

  else if (a3)
  {
    if (a3 == 1)
    {
      v14 = 2;
    }

    else
    {
      v14 = 3;
    }
  }

  else
  {
    v14 = 1;
  }

  MEMORY[0x1DA6FC0B0](v14);
  sub_1D72621EC();
LABEL_19:
  result = sub_1D7264A5C();
  v15 = v13 + 56;
  v16 = -1 << *(v13 + 32);
  a4 = result & ~v16;
  if (((*(v13 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) == 0)
  {
    goto LABEL_49;
  }

  v17 = ~v16;
  v18 = *(v13 + 48);
  v20 = a3 == 5 && (a2 | v10) == 0;
  while (1)
  {
    v21 = v18 + 24 * a4;
    result = *v21;
    v22 = *(v21 + 8);
    v23 = *(v21 + 16);
    if (v23 <= 2)
    {
      break;
    }

    if (v23 == 3)
    {
      if (a3 == 3)
      {
        goto LABEL_43;
      }
    }

    else if (v23 == 4)
    {
      if (a3 == 4)
      {
        goto LABEL_43;
      }
    }

    else if (v20)
    {
      goto LABEL_48;
    }

LABEL_28:
    a4 = (a4 + 1) & v17;
    if (((*(v15 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) == 0)
    {
      goto LABEL_49;
    }
  }

  if (!v23)
  {
    if (!a3)
    {
      goto LABEL_43;
    }

    goto LABEL_28;
  }

  if (v23 == 1)
  {
    if (a3 == 1)
    {
      goto LABEL_43;
    }

    goto LABEL_28;
  }

  if (a3 != 2)
  {
    goto LABEL_28;
  }

LABEL_43:
  if (result != v10 || v22 != a2)
  {
    result = sub_1D72646CC();
    if ((result & 1) == 0)
    {
      goto LABEL_28;
    }
  }

LABEL_48:
  result = sub_1D726492C();
  __break(1u);
LABEL_49:
  v25 = *v6;
  *(*v6 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v26 = *(v25 + 48) + 24 * a4;
  *v26 = v10;
  *(v26 + 8) = a2;
  *(v26 + 16) = a3;
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (v28)
  {
    __break(1u);
  }

  else
  {
    *(v25 + 16) = v29;
  }

  return result;
}

uint64_t sub_1D5FFCA38(uint64_t a1, unint64_t a2, char a3)
{
  v83 = a1;
  v6 = type metadata accessor for GenericDataVisualization();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v80 = (&v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for WebEmbedDataVisualization();
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = (&v69 - v15);
  v72 = type metadata accessor for WebEmbedDatastoreCacheKey();
  v70 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72, v17);
  v19 = &v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1D72585BC();
  v71 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v21);
  v87 = &v69 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v69 - v25;
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v69 - v29;
  v31 = *(*v3 + 16);
  v32 = *(*v3 + 24);
  v69 = v3;
  if (v32 > v31 && (a3 & 1) != 0)
  {
    goto LABEL_33;
  }

  v76 = v12;
  if (a3)
  {
    sub_1D5BD590C(v31 + 1, type metadata accessor for WebEmbedDatastoreCacheKey, sub_1D6007230, type metadata accessor for WebEmbedDatastoreCacheKey, sub_1D5FF709C);
  }

  else
  {
    if (v32 > v31)
    {
      sub_1D6001500(type metadata accessor for WebEmbedDatastoreCacheKey, sub_1D6007230, type metadata accessor for WebEmbedDatastoreCacheKey, type metadata accessor for WebEmbedDatastoreCacheKey);
      goto LABEL_33;
    }

    sub_1D5C0F230(v31 + 1, type metadata accessor for WebEmbedDatastoreCacheKey, sub_1D6007230, type metadata accessor for WebEmbedDatastoreCacheKey, sub_1D5FF709C);
  }

  v79 = *v3;
  sub_1D7264A0C();
  WebEmbedDataVisualization.identifier.getter();
  sub_1D72621EC();

  v33 = sub_1D6D28818();
  MEMORY[0x1DA6FC0B0](*(v33 + 16));
  v34 = *(v33 + 16);
  v77 = v16;
  v78 = v9;
  v81 = v19;
  if (v34)
  {
    v86 = v26;
    v35 = *(v71 + 16);
    v36 = v33 + ((*(v71 + 80) + 32) & ~*(v71 + 80));
    v37 = *(v71 + 72);
    v38 = (v71 + 8);
    do
    {
      v35(v30, v36, v20);
      sub_1D5D51EB4(&qword_1EDF3C3E0, 255, MEMORY[0x1E6968FB0]);
      sub_1D7261E8C();
      (*v38)(v30, v20);
      v36 += v37;
      --v34;
    }

    while (v34);

    v16 = v77;
    v19 = v81;
    v26 = v86;
  }

  else
  {
  }

  v39 = sub_1D7264A5C();
  v40 = -1 << *(v79 + 32);
  a2 = v39 & ~v40;
  v75 = v79 + 56;
  if ((*(v79 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v73 = ~v40;
    v74 = *(v70 + 72);
    v85 = (v71 + 8);
    v86 = (v71 + 16);
    do
    {
      sub_1D5BE7354(*(v79 + 48) + v74 * a2, v19, type metadata accessor for WebEmbedDatastoreCacheKey);
      sub_1D5BE7354(v19, v16, type metadata accessor for WebEmbedDataVisualization);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v82 = a2;
      if (EnumCaseMultiPayload == 1)
      {
        v42 = v80;
        sub_1D5BE7424(v16, v80, type metadata accessor for GenericDataVisualization);
        v89 = 0x3A636972656E6567;
        v90 = 0xE90000000000003ALL;
        MEMORY[0x1DA6F9910](*v42, v42[1]);
        v44 = v89;
        v43 = v90;
        sub_1D5BF1AEC(v42, type metadata accessor for GenericDataVisualization);
      }

      else
      {
        v88 = *v16;
        v89 = 0x3A3A7374726F7073;
        v90 = 0xE800000000000000;
        v45 = SportsDataVisualization.identifier.getter();
        MEMORY[0x1DA6F9910](v45);

        v44 = v89;
        v43 = v90;
      }

      v46 = v76;
      sub_1D5BE7354(v83, v76, type metadata accessor for WebEmbedDataVisualization);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v47 = v80;
        sub_1D5BE7424(v46, v80, type metadata accessor for GenericDataVisualization);
        v89 = 0x3A636972656E6567;
        v90 = 0xE90000000000003ALL;
        MEMORY[0x1DA6F9910](*v47, v47[1]);
        v49 = v89;
        v48 = v90;
        sub_1D5BF1AEC(v47, type metadata accessor for GenericDataVisualization);
        if (v44 != v49)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v88 = *v46;
        v89 = 0x3A3A7374726F7073;
        v90 = 0xE800000000000000;
        v50 = SportsDataVisualization.identifier.getter();
        MEMORY[0x1DA6F9910](v50);

        v48 = v90;
        if (v44 != v89)
        {
          goto LABEL_25;
        }
      }

      if (v43 != v48)
      {
LABEL_25:
        v51 = sub_1D72646CC();

        if ((v51 & 1) == 0)
        {
          goto LABEL_15;
        }

        goto LABEL_26;
      }

LABEL_26:
      v52 = *(v72 + 20);
      v53 = *&v81[v52];
      v54 = *(v83 + v52);
      a2 = *(v53 + 16);
      if (a2 == *(v54 + 16))
      {
        if (!a2 || v53 == v54)
        {
LABEL_32:
          sub_1D5BF1AEC(v81, type metadata accessor for WebEmbedDatastoreCacheKey);
          sub_1D726492C();
          __break(1u);
          break;
        }

        v55 = (*(v71 + 80) + 32) & ~*(v71 + 80);
        v56 = v53 + v55;
        v57 = v54 + v55;
        v84 = *(v71 + 72);
        v58 = *(v71 + 16);
        while (1)
        {
          v58(v26, v56, v20);
          v59 = v26;
          v60 = v87;
          v58(v87, v57, v20);
          sub_1D5D51EB4(&unk_1EDF45B60, 255, MEMORY[0x1E6968FB0]);
          v61 = sub_1D7261FBC();
          v62 = *v85;
          v63 = v60;
          v26 = v59;
          (*v85)(v63, v20);
          v62(v59, v20);
          if ((v61 & 1) == 0)
          {
            break;
          }

          v57 += v84;
          v56 += v84;
          if (!--a2)
          {
            goto LABEL_32;
          }
        }
      }

LABEL_15:
      v19 = v81;
      sub_1D5BF1AEC(v81, type metadata accessor for WebEmbedDatastoreCacheKey);
      a2 = (v82 + 1) & v73;
      v16 = v77;
    }

    while (((*(v75 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_33:
  v64 = *v69;
  *(*v69 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_1D5BE7424(v83, *(v64 + 48) + *(v70 + 72) * a2, type metadata accessor for WebEmbedDatastoreCacheKey);
  v66 = *(v64 + 16);
  v67 = __OFADD__(v66, 1);
  v68 = v66 + 1;
  if (v67)
  {
    __break(1u);
  }

  else
  {
    *(v64 + 16) = v68;
  }

  return result;
}

uint64_t sub_1D5FFD410(uint64_t result, unint64_t a2, char a3)
{
  v33 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_50;
  }

  if (a3)
  {
    sub_1D5FF421C();
  }

  else
  {
    if (v6 > v5)
    {
      result = sub_1D60005D8(&qword_1EDF042F8, sub_1D5C95CB4);
      goto LABEL_50;
    }

    sub_1D600453C();
  }

  v7 = 0x64656C6261736964;
  v8 = *v3;
  sub_1D7264A0C();
  sub_1D72621EC();

  result = sub_1D7264A5C();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  v32 = v8 + 56;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v31 = ~v9;
    do
    {
      v10 = *(*(v8 + 48) + a2);
      v11 = v10 == 2 ? 0x6867696C68676968 : 0x64657463656C6573;
      v12 = v10 == 2 ? 0xEB00000000646574 : 0xE800000000000000;
      v13 = *(*(v8 + 48) + a2) ? 0x64657375636F66 : v7;
      v14 = *(*(v8 + 48) + a2) ? 0xE700000000000000 : 0xE800000000000000;
      v15 = *(*(v8 + 48) + a2) <= 1u ? v13 : v11;
      v16 = *(*(v8 + 48) + a2) <= 1u ? v14 : v12;
      v17 = v33 == 2 ? 0x6867696C68676968 : 0x64657463656C6573;
      v18 = v33 == 2 ? 0xEB00000000646574 : 0xE800000000000000;
      v19 = v7;
      v20 = v33 ? 0x64657375636F66 : v7;
      v21 = v33 ? 0xE700000000000000 : 0xE800000000000000;
      v22 = v33 <= 1u ? v20 : v17;
      v23 = v33 <= 1u ? v21 : v18;
      v24 = v8;
      if (v15 == v22 && v16 == v23)
      {
        goto LABEL_53;
      }

      v25 = sub_1D72646CC();

      if (v25)
      {
        goto LABEL_54;
      }

      a2 = (a2 + 1) & v31;
      v7 = v19;
      v8 = v24;
    }

    while (((*(v32 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_50:
  v26 = *v30;
  *(*v30 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v26 + 48) + a2) = v33;
  v27 = *(v26 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v26 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_53:

LABEL_54:
  result = sub_1D726492C();
  __break(1u);
  return result;
}

uint64_t sub_1D5FFD714(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = result & 0x100;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  v36 = BYTE1(result) & 1;
  if (v8 <= v7 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1D5FF4500();
    }

    else
    {
      if (v8 > v7)
      {
        result = sub_1D6000C1C();
        goto LABEL_125;
      }

      sub_1D60047F0();
    }

    v9 = 0x70616373646E616CLL;
    v10 = *v3;
    sub_1D7264A0C();
    sub_1D6E23ADC(v5);
    sub_1D72621EC();

    if (v6)
    {
      v11 = 0xE900000000000065;
    }

    else
    {
      v9 = 0x7469617274726F70;
      v11 = 0xE800000000000000;
    }

    sub_1D72621EC();

    result = sub_1D7264A5C();
    v12 = -1 << *(v10 + 32);
    a2 = result & ~v12;
    if ((*(v10 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v37 = ~v12;
      v13 = 0x7258656E6F685069;
      while (1)
      {
        v14 = (*(v10 + 48) + 2 * a2);
        v15 = v14[1];
        v16 = 0xE800000000000000;
        v17 = v13;
        switch(*v14)
        {
          case 1:
            v17 = 0x7358656E6F685069;
            break;
          case 2:
            v17 = 0x7358656E6F685069;
            v16 = 0xEB0000000078614DLL;
            break;
          case 3:
            v17 = 0x4553656E6F685069;
            break;
          case 4:
            v17 = 0x3131656E6F685069;
            break;
          case 5:
            v17 = 0x3131656E6F685069;
            goto LABEL_38;
          case 6:
            v17 = 0x3131656E6F685069;
            goto LABEL_52;
          case 7:
            v17 = 0x3231656E6F685069;
            break;
          case 8:
            v17 = 0x3231656E6F685069;
            goto LABEL_43;
          case 9:
            v17 = 0x3231656E6F685069;
            goto LABEL_38;
          case 0xA:
            v17 = 0x3231656E6F685069;
            goto LABEL_52;
          case 0xB:
            v17 = 0x3331656E6F685069;
            break;
          case 0xC:
            v17 = 0x3331656E6F685069;
LABEL_43:
            v16 = 0xEC000000696E694DLL;
            break;
          case 0xD:
            v17 = 0x3331656E6F685069;
            goto LABEL_38;
          case 0xE:
            v17 = 0x3331656E6F685069;
            goto LABEL_52;
          case 0xF:
            v17 = 0x3431656E6F685069;
            break;
          case 0x10:
            v17 = 0x3431656E6F685069;
            goto LABEL_34;
          case 0x11:
            v17 = 0x3431656E6F685069;
            goto LABEL_38;
          case 0x12:
            v17 = 0x3431656E6F685069;
            goto LABEL_52;
          case 0x13:
            v17 = 0x3531656E6F685069;
            break;
          case 0x14:
            v17 = 0x3531656E6F685069;
            goto LABEL_34;
          case 0x15:
            v17 = 0x3531656E6F685069;
            goto LABEL_38;
          case 0x16:
            v17 = 0x3531656E6F685069;
            goto LABEL_52;
          case 0x17:
            v17 = 0x3631656E6F685069;
            break;
          case 0x18:
            v17 = 0x3631656E6F685069;
LABEL_34:
            v16 = 0xEC00000073756C50;
            break;
          case 0x19:
            v17 = 0x3631656E6F685069;
LABEL_38:
            v16 = 0xEB000000006F7250;
            break;
          case 0x1A:
            v17 = 0x3631656E6F685069;
LABEL_52:
            v16 = 0xEE0078614D6F7250;
            break;
          case 0x1B:
            v16 = 0xE400000000000000;
            v17 = 1684099177;
            break;
          case 0x1C:
            v16 = 0xE700000000000000;
            v17 = 0x72694164615069;
            break;
          case 0x1D:
            v17 = 0x696E694D64615069;
            break;
          case 0x1E:
            v17 = 0x5F6F725064615069;
            v16 = 0xEC000000355F3031;
            break;
          case 0x1F:
            v17 = 0x5F6F725064615069;
            v16 = 0xEA00000000003131;
            break;
          case 0x20:
            v17 = 0x5F6F725064615069;
            v16 = 0xEC000000395F3231;
            break;
          case 0x21:
            v16 = 0xE300000000000000;
            v17 = 6513005;
            break;
          case 0x22:
            v17 = 0x6465727265666E69;
            break;
          default:
            break;
        }

        v18 = 0xE800000000000000;
        v19 = v13;
        switch(v5)
        {
          case 1:
            if (v17 == 0x7358656E6F685069)
            {
              goto LABEL_108;
            }

            goto LABEL_112;
          case 2:
            v22 = 0x7358656E6F685069;
            v23 = 7889229;
            goto LABEL_88;
          case 3:
            if (v17 != 0x4553656E6F685069)
            {
              goto LABEL_112;
            }

            goto LABEL_108;
          case 4:
            if (v17 != 0x3131656E6F685069)
            {
              goto LABEL_112;
            }

            goto LABEL_108;
          case 5:
            v22 = 0x3131656E6F685069;
            goto LABEL_87;
          case 6:
            v21 = 0x3131656E6F685069;
            goto LABEL_111;
          case 7:
            if (v17 != 0x3231656E6F685069)
            {
              goto LABEL_112;
            }

            goto LABEL_108;
          case 8:
            v20 = 0x3231656E6F685069;
            goto LABEL_94;
          case 9:
            v22 = 0x3231656E6F685069;
            goto LABEL_87;
          case 10:
            v21 = 0x3231656E6F685069;
            goto LABEL_111;
          case 11:
            if (v17 != 0x3331656E6F685069)
            {
              goto LABEL_112;
            }

            goto LABEL_108;
          case 12:
            v20 = 0x3331656E6F685069;
LABEL_94:
            v24 = 1768843597;
            goto LABEL_97;
          case 13:
            v22 = 0x3331656E6F685069;
            goto LABEL_87;
          case 14:
            v21 = 0x3331656E6F685069;
            goto LABEL_111;
          case 15:
            if (v17 != 0x3431656E6F685069)
            {
              goto LABEL_112;
            }

            goto LABEL_108;
          case 16:
            v20 = 0x3431656E6F685069;
            goto LABEL_83;
          case 17:
            v22 = 0x3431656E6F685069;
            goto LABEL_87;
          case 18:
            v21 = 0x3431656E6F685069;
            goto LABEL_111;
          case 19:
            if (v17 != 0x3531656E6F685069)
            {
              goto LABEL_112;
            }

            goto LABEL_108;
          case 20:
            v20 = 0x3531656E6F685069;
            goto LABEL_83;
          case 21:
            v22 = 0x3531656E6F685069;
            goto LABEL_87;
          case 22:
            v21 = 0x3531656E6F685069;
            goto LABEL_111;
          case 23:
            if (v17 != 0x3631656E6F685069)
            {
              goto LABEL_112;
            }

            goto LABEL_108;
          case 24:
            v20 = 0x3631656E6F685069;
LABEL_83:
            v24 = 1937075280;
            goto LABEL_97;
          case 25:
            v22 = 0x3631656E6F685069;
LABEL_87:
            v23 = 7303760;
LABEL_88:
            v18 = v23 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
            if (v17 != v22)
            {
              goto LABEL_112;
            }

            goto LABEL_108;
          case 26:
            v21 = 0x3631656E6F685069;
LABEL_111:
            v18 = 0xEE0078614D6F7250;
            if (v17 != v21)
            {
              goto LABEL_112;
            }

            goto LABEL_108;
          case 27:
            v18 = 0xE400000000000000;
            if (v17 != 1684099177)
            {
              goto LABEL_112;
            }

            goto LABEL_108;
          case 28:
            v18 = 0xE700000000000000;
            if (v17 != 0x72694164615069)
            {
              goto LABEL_112;
            }

            goto LABEL_108;
          case 29:
            v13 = 0x696E694D64615069;
            goto LABEL_107;
          case 30:
            v20 = 0x5F6F725064615069;
            v24 = 895430705;
            goto LABEL_97;
          case 31:
            v18 = 0xEA00000000003131;
            if (v17 != 0x5F6F725064615069)
            {
              goto LABEL_112;
            }

            goto LABEL_108;
          case 32:
            v20 = 0x5F6F725064615069;
            v24 = 962540081;
LABEL_97:
            v18 = v24 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
            if (v17 != v20)
            {
              goto LABEL_112;
            }

            goto LABEL_108;
          case 33:
            v18 = 0xE300000000000000;
            if (v17 != 6513005)
            {
              goto LABEL_112;
            }

            goto LABEL_108;
          case 34:
            if (v17 != 0x6465727265666E69)
            {
              goto LABEL_112;
            }

            goto LABEL_108;
          default:
LABEL_107:
            if (v17 != v13)
            {
              goto LABEL_112;
            }

LABEL_108:
            if (v16 == v18)
            {
            }

            else
            {
LABEL_112:
              v25 = sub_1D72646CC();

              if ((v25 & 1) == 0)
              {
                goto LABEL_13;
              }
            }

            if (v15)
            {
              v26 = 0x70616373646E616CLL;
            }

            else
            {
              v26 = 0x7469617274726F70;
            }

            if (v15)
            {
              v27 = 0xE900000000000065;
            }

            else
            {
              v27 = 0xE800000000000000;
            }

            if (v26 == v9 && v27 == v11)
            {
              goto LABEL_128;
            }

            v29 = sub_1D72646CC();

            if (v29)
            {
              goto LABEL_129;
            }

LABEL_13:
            a2 = (a2 + 1) & v37;
            v13 = v19;
            if (((*(v10 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
            {
              goto LABEL_125;
            }

            break;
        }
      }
    }
  }

LABEL_125:
  v30 = *v35;
  *(*v35 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v31 = (*(v30 + 48) + 2 * a2);
  *v31 = v5;
  v31[1] = v36;
  v32 = *(v30 + 16);
  v33 = __OFADD__(v32, 1);
  v34 = v32 + 1;
  if (v33)
  {
    __break(1u);
LABEL_128:

LABEL_129:
    result = sub_1D726492C();
    __break(1u);
  }

  else
  {
    *(v30 + 16) = v34;
  }

  return result;
}

uint64_t sub_1D5FFE0A4(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 <= v7 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1D5FF47E4();
    }

    else
    {
      if (v8 > v7)
      {
        result = sub_1D6000D88();
        goto LABEL_74;
      }

      sub_1D6004AA4();
    }

    v9 = *v3;
    sub_1D7264A0C();
    if (v6 == 12)
    {
      MEMORY[0x1DA6FC0B0](0);
    }

    else
    {
      MEMORY[0x1DA6FC0B0](1);
      FormatOptionType.rawValue.getter();
      sub_1D72621EC();
    }

    result = sub_1D7264A5C();
    v10 = -1 << *(v9 + 32);
    a2 = result & ~v10;
    if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v11 = ~v10;
      do
      {
        v12 = *(*(v9 + 48) + a2);
        if (v12 == 12)
        {
          if (v6 == 12)
          {
            goto LABEL_78;
          }
        }

        else if (v6 != 12)
        {
          if (*(*(v9 + 48) + a2) > 5u)
          {
            if (*(*(v9 + 48) + a2) > 8u)
            {
              if (v12 == 9)
              {
                v14 = 0xE500000000000000;
                v13 = 0x6F65646976;
              }

              else if (v12 == 10)
              {
                v14 = 0xE400000000000000;
                v13 = 1953394534;
              }

              else
              {
                v13 = 0x616C506F65646976;
                v14 = 0xEB00000000726579;
              }
            }

            else if (v12 == 6)
            {
              v14 = 0xE300000000000000;
              v13 = 7107189;
            }

            else
            {
              v14 = 0xE500000000000000;
              if (v12 == 7)
              {
                v13 = 0x726F6C6F63;
              }

              else
              {
                v13 = 0x6567616D69;
              }
            }
          }

          else if (*(*(v9 + 48) + a2) > 2u)
          {
            if (v12 == 3)
            {
              v14 = 0xE500000000000000;
              v13 = 0x74616F6C66;
            }

            else if (v12 == 4)
            {
              v14 = 0xE700000000000000;
              v13 = 0x72656765746E69;
            }

            else
            {
              v14 = 0xE600000000000000;
              v13 = 0x676E69727473;
            }
          }

          else if (*(*(v9 + 48) + a2))
          {
            if (v12 == 1)
            {
              v13 = 1702125924;
            }

            else
            {
              v13 = 1836412517;
            }

            v14 = 0xE400000000000000;
          }

          else
          {
            v14 = 0xE700000000000000;
            v13 = 0x6E61656C6F6F62;
          }

          if (v6 > 5u)
          {
            v15 = 0x616C506F65646976;
            if (v6 == 10)
            {
              v15 = 1953394534;
            }

            v16 = 0xEB00000000726579;
            if (v6 == 10)
            {
              v16 = 0xE400000000000000;
            }

            if (v6 == 9)
            {
              v15 = 0x6F65646976;
              v16 = 0xE500000000000000;
            }

            v17 = 0x726F6C6F63;
            if (v6 != 7)
            {
              v17 = 0x6567616D69;
            }

            v18 = 0xE500000000000000;
            if (v6 == 6)
            {
              v17 = 7107189;
              v18 = 0xE300000000000000;
            }

            v19 = v6 <= 8u;
          }

          else
          {
            v15 = 0x72656765746E69;
            if (v6 != 4)
            {
              v15 = 0x676E69727473;
            }

            v16 = 0xE600000000000000;
            if (v6 == 4)
            {
              v16 = 0xE700000000000000;
            }

            if (v6 == 3)
            {
              v15 = 0x74616F6C66;
              v16 = 0xE500000000000000;
            }

            v17 = 1836412517;
            if (v6 == 1)
            {
              v17 = 1702125924;
            }

            v18 = 0xE400000000000000;
            if (!v6)
            {
              v17 = 0x6E61656C6F6F62;
              v18 = 0xE700000000000000;
            }

            v19 = v6 <= 2u;
          }

          if (v19)
          {
            v20 = v17;
          }

          else
          {
            v20 = v15;
          }

          if (v19)
          {
            v21 = v18;
          }

          else
          {
            v21 = v16;
          }

          if (v13 == v20 && v14 == v21)
          {
            goto LABEL_77;
          }

          v22 = sub_1D72646CC();

          if (v22)
          {
            goto LABEL_78;
          }
        }

        a2 = (a2 + 1) & v11;
      }

      while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_74:
  v23 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v23 + 48) + a2) = v6;
  v24 = *(v23 + 16);
  v25 = __OFADD__(v24, 1);
  v26 = v24 + 1;
  if (v25)
  {
    __break(1u);
LABEL_77:

LABEL_78:
    result = sub_1D726492C();
    __break(1u);
  }

  else
  {
    *(v23 + 16) = v26;
  }

  return result;
}

uint64_t sub_1D5FFE51C(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_51;
  }

  if (a3)
  {
    sub_1D5FF4BB0();
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_1D60005D8(&qword_1EC882288, sub_1D60079B8);
      goto LABEL_51;
    }

    sub_1D6004E40();
  }

  v8 = *v3;
  result = sub_1D6953BC0();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    do
    {
      v11 = *(*(v8 + 48) + a2);
      if (v11 <= 2)
      {
        if (*(*(v8 + 48) + a2))
        {
          if (v11 == 1)
          {
            v12 = 0x726564616568;
          }

          else
          {
            v12 = 0x7265746F6F66;
          }

          v13 = 0xE600000000000000;
        }

        else
        {
          v13 = 0xE600000000000000;
          v12 = 0x74756F79616CLL;
        }
      }

      else if (*(*(v8 + 48) + a2) > 4u)
      {
        if (v11 == 5)
        {
          v13 = 0xE700000000000000;
          v12 = 0x7972617262696CLL;
        }

        else
        {
          v12 = 0x756F72676B636162;
          v13 = 0xEA0000000000646ELL;
        }
      }

      else
      {
        if (v11 == 3)
        {
          v12 = 0x6C6C6177796170;
        }

        else
        {
          v12 = 0x656D656874;
        }

        if (v11 == 3)
        {
          v13 = 0xE700000000000000;
        }

        else
        {
          v13 = 0xE500000000000000;
        }
      }

      v14 = 0x756F72676B636162;
      if (v5 == 5)
      {
        v14 = 0x7972617262696CLL;
      }

      v15 = 0xEA0000000000646ELL;
      if (v5 == 5)
      {
        v15 = 0xE700000000000000;
      }

      v16 = 0x6C6C6177796170;
      if (v5 != 3)
      {
        v16 = 0x656D656874;
      }

      v17 = 0xE500000000000000;
      if (v5 == 3)
      {
        v17 = 0xE700000000000000;
      }

      if (v5 <= 4u)
      {
        v14 = v16;
        v15 = v17;
      }

      v18 = 0x7265746F6F66;
      if (v5 == 1)
      {
        v18 = 0x726564616568;
      }

      if (!v5)
      {
        v18 = 0x74756F79616CLL;
      }

      v19 = v5 <= 2u ? v18 : v14;
      v20 = v5 <= 2u ? 0xE600000000000000 : v15;
      if (v12 == v19 && v13 == v20)
      {
        goto LABEL_54;
      }

      v21 = sub_1D72646CC();

      if (v21)
      {
        goto LABEL_55;
      }

      a2 = (a2 + 1) & v10;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_51:
  v22 = *v26;
  *(*v26 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v22 + 48) + a2) = v5;
  v23 = *(v22 + 16);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (!v24)
  {
    *(v22 + 16) = v25;
    return result;
  }

  __break(1u);
LABEL_54:

LABEL_55:
  result = sub_1D726492C();
  __break(1u);
  return result;
}

uint64_t sub_1D5FFE83C(uint64_t result, uint64_t a2, unsigned __int8 a3, unint64_t a4, char a5)
{
  v6 = v5;
  v10 = result;
  v11 = *(*v5 + 16);
  v12 = *(*v5 + 24);
  if (v12 > v11 && (a5 & 1) != 0)
  {
    goto LABEL_42;
  }

  if (a5)
  {
    sub_1D5FF4EDC(v11 + 1, &qword_1EC882248, sub_1D60076AC);
  }

  else
  {
    if (v12 > v11)
    {
      result = sub_1D6000A30(&qword_1EC882248, sub_1D60076AC, &type metadata for FormatFileKey, sub_1D600767C);
      goto LABEL_42;
    }

    sub_1D600513C(v11 + 1, &qword_1EC882248, sub_1D60076AC);
  }

  v13 = *v5;
  sub_1D7264A0C();
  sub_1D6BE3D70(v25, v10, a2, a3);
  result = sub_1D7264A5C();
  v14 = v13 + 56;
  v15 = -1 << *(v13 + 32);
  a4 = result & ~v15;
  if ((*(v13 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4))
  {
    v16 = ~v15;
    v17 = *(v13 + 48);
    while (1)
    {
      v18 = v17 + 24 * a4;
      result = *v18;
      switch(*(v18 + 16))
      {
        case 1:
          if (a3 != 1)
          {
            goto LABEL_11;
          }

          goto LABEL_36;
        case 2:
          if (a3 == 2)
          {
            goto LABEL_36;
          }

          goto LABEL_11;
        case 3:
          if (a3 == 3)
          {
            goto LABEL_36;
          }

          goto LABEL_11;
        case 4:
          if (a3 == 4)
          {
            goto LABEL_36;
          }

          goto LABEL_11;
        case 5:
          if (a3 == 5)
          {
            goto LABEL_36;
          }

          goto LABEL_11;
        case 6:
          if (a3 == 6)
          {
            goto LABEL_36;
          }

          goto LABEL_11;
        case 7:
          if (a3 == 7)
          {
            goto LABEL_36;
          }

          goto LABEL_11;
        case 8:
          if (a3 == 8)
          {
            goto LABEL_36;
          }

          goto LABEL_11;
        case 9:
          if (a3 == 9)
          {
            goto LABEL_36;
          }

          goto LABEL_11;
        case 0xA:
          if (a3 == 10)
          {
            goto LABEL_36;
          }

          goto LABEL_11;
        case 0xB:
          if (a3 == 11)
          {
            goto LABEL_36;
          }

          goto LABEL_11;
        case 0xC:
          if (a3 == 12)
          {
            goto LABEL_36;
          }

          goto LABEL_11;
        default:
          if (a3)
          {
            goto LABEL_11;
          }

LABEL_36:
          v19 = result == v10 && *(v18 + 8) == a2;
          if (v19 || (result = sub_1D72646CC(), (result & 1) != 0))
          {
            result = sub_1D726492C();
            __break(1u);
            goto LABEL_42;
          }

LABEL_11:
          a4 = (a4 + 1) & v16;
          if (((*(v14 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) == 0)
          {
            goto LABEL_42;
          }

          break;
      }
    }
  }

LABEL_42:
  v20 = *v6;
  *(*v6 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v21 = *(v20 + 48) + 24 * a4;
  *v21 = v10;
  *(v21 + 8) = a2;
  *(v21 + 16) = a3;
  v22 = *(v20 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(v20 + 16) = v24;
  }

  return result;
}

uint64_t sub_1D5FFEB44(uint64_t result, unint64_t a2, char a3, unint64_t *a4, void (*a5)(void))
{
  v6 = v5;
  v8 = result;
  v9 = *(*v5 + 16);
  v10 = *(*v5 + 24);
  if (v10 > v9 && (a3 & 1) != 0)
  {
    goto LABEL_19;
  }

  if (a3)
  {
    sub_1D5FF5150(v9 + 1, a4, a5);
  }

  else
  {
    if (v10 > v9)
    {
      result = sub_1D60005D8(a4, a5);
      goto LABEL_19;
    }

    sub_1D6005388(v9 + 1, a4, a5);
  }

  v11 = *v5;
  sub_1D7264A0C();
  if (v8)
  {
    v12 = 0x646165687473616DLL;
  }

  else
  {
    v12 = 0x6465727574616566;
  }

  sub_1D72621EC();

  result = sub_1D7264A5C();
  v13 = -1 << *(v11 + 32);
  a2 = result & ~v13;
  if ((*(v11 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v14 = ~v13;
    do
    {
      v15 = *(*(v11 + 48) + a2) ? 0x646165687473616DLL : 0x6465727574616566;
      if (v15 == v12)
      {
        goto LABEL_22;
      }

      v16 = sub_1D72646CC();
      result = swift_bridgeObjectRelease_n();
      if (v16)
      {
        goto LABEL_23;
      }

      a2 = (a2 + 1) & v14;
    }

    while (((*(v11 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_19:
  v17 = *v6;
  *(*v6 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v17 + 48) + a2) = v8 & 1;
  v18 = *(v17 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v17 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_22:
  swift_bridgeObjectRelease_n();
LABEL_23:
  result = sub_1D726492C();
  __break(1u);
  return result;
}

void sub_1D5FFED40(uint64_t a1, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1D5FF53C4();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      sub_1D6000F08();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1D60055CC();
  }

  v8 = *v3;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](a1);
  v9 = sub_1D7264A5C();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    v12 = v9 & ~v10;
    type metadata accessor for UIUserInterfaceIdiom(0);
    a2 = v12;
    while (*(*(v8 + 48) + 8 * a2) != a1)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v13 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + 8 * a2) = a1;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (!v15)
  {
    *(v13 + 16) = v16;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1D726492C();
  __break(1u);
}

uint64_t sub_1D5FFEE9C(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_1D726098C();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x1EEE9AC00](v6, v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v13 > v12 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1D5FF5608();
  }

  else
  {
    if (v13 > v12)
    {
      sub_1D6001708(MEMORY[0x1E69B4188], sub_1D5E2A4AC);
      goto LABEL_12;
    }

    sub_1D60057E0();
  }

  v14 = *v3;
  sub_1D5D51EB4(&unk_1EDF168A8, 255, MEMORY[0x1E69B4188]);
  v15 = sub_1D7261E7C();
  v16 = v14 + 56;
  v32 = v14;
  v17 = -1 << *(v14 + 32);
  a2 = v15 & ~v17;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v11, *(v32 + 48) + v22 * a2, v6);
      sub_1D5D51EB4(&qword_1EC87FB18, 255, MEMORY[0x1E69B4188]);
      v23 = sub_1D7261FBC();
      (*(v20 - 8))(v11, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6, v9);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1D726492C();
  __break(1u);
  return result;
}

uint64_t sub_1D5FFF170(uint64_t result, unint64_t a2, char a3)
{
  v24 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_45;
  }

  if (a3)
  {
    sub_1D5FF595C();
  }

  else
  {
    if (v6 > v5)
    {
      result = sub_1D60005D8(&qword_1EC882240, sub_1D600759C);
      goto LABEL_45;
    }

    sub_1D6005AF4();
  }

  v7 = *v3;
  sub_1D7264A0C();
  sub_1D72621EC();

  result = sub_1D7264A5C();
  v8 = -1 << *(v7 + 32);
  a2 = result & ~v8;
  if ((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v9 = ~v8;
    do
    {
      v10 = *(*(v7 + 48) + a2);
      if (v10 > 2)
      {
        if (v10 == 3)
        {
          v12 = 0xE600000000000000;
          v11 = 0x73656D656874;
        }

        else
        {
          if (v10 == 4)
          {
            v11 = 0x6C6C6177796170;
          }

          else
          {
            v11 = 0x756F72676B636162;
          }

          if (v10 == 4)
          {
            v12 = 0xE700000000000000;
          }

          else
          {
            v12 = 0xEB0000000073646ELL;
          }
        }
      }

      else if (*(*(v7 + 48) + a2))
      {
        if (v10 == 1)
        {
          v11 = 0x73726564616568;
        }

        else
        {
          v11 = 0x737265746F6F66;
        }

        v12 = 0xE700000000000000;
      }

      else
      {
        v12 = 0xE700000000000000;
        v11 = 0x7374756F79616CLL;
      }

      v13 = 0x756F72676B636162;
      if (v24 == 4)
      {
        v13 = 0x6C6C6177796170;
      }

      v14 = 0xEB0000000073646ELL;
      if (v24 == 4)
      {
        v14 = 0xE700000000000000;
      }

      if (v24 == 3)
      {
        v13 = 0x73656D656874;
        v14 = 0xE600000000000000;
      }

      v15 = 0x737265746F6F66;
      if (v24 == 1)
      {
        v15 = 0x73726564616568;
      }

      if (!v24)
      {
        v15 = 0x7374756F79616CLL;
      }

      v16 = v24 <= 2u ? v15 : v13;
      v17 = v24 <= 2u ? 0xE700000000000000 : v14;
      if (v11 == v16 && v12 == v17)
      {
        goto LABEL_48;
      }

      v18 = sub_1D72646CC();

      if (v18)
      {
        goto LABEL_49;
      }

      a2 = (a2 + 1) & v9;
    }

    while (((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_45:
  v19 = *v23;
  *(*v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v19 + 48) + a2) = v24;
  v20 = *(v19 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (!v21)
  {
    *(v19 + 16) = v22;
    return result;
  }

  __break(1u);
LABEL_48:

LABEL_49:
  result = sub_1D726492C();
  __break(1u);
  return result;
}

uint64_t sub_1D5FFF534(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, char a6)
{
  v11 = result;
  v12 = *(*v6 + 16);
  v13 = *(*v6 + 24);
  if (v13 > v12 && (a6 & 1) != 0)
  {
    goto LABEL_21;
  }

  if (a6)
  {
    sub_1D5FF5C70();
  }

  else
  {
    if (v13 > v12)
    {
      result = sub_1D6001064();
      goto LABEL_21;
    }

    sub_1D6005DD8();
  }

  v14 = *v6;
  sub_1D7264A0C();
  sub_1D72621EC();
  MEMORY[0x1DA6FC0B0](a3);
  MEMORY[0x1DA6FC0B0](a4);
  result = sub_1D7264A5C();
  v15 = v14 + 56;
  v16 = -1 << *(v14 + 32);
  a5 = result & ~v16;
  if ((*(v14 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5))
  {
    v17 = ~v16;
    v18 = *(v14 + 48);
    do
    {
      v20 = (v18 + 32 * a5);
      result = *v20;
      v21 = v20[2];
      v22 = v20[3];
      v23 = *v20 == v11 && v20[1] == a2;
      if (v23 || (result = sub_1D72646CC(), (result & 1) != 0))
      {
        if (v21 == a3 && v22 == a4)
        {
          goto LABEL_24;
        }
      }

      a5 = (a5 + 1) & v17;
    }

    while (((*(v15 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5) & 1) != 0);
  }

LABEL_21:
  v24 = *v29;
  *(*v29 + 8 * (a5 >> 6) + 56) |= 1 << a5;
  v25 = (*(v24 + 48) + 32 * a5);
  *v25 = v11;
  v25[1] = a2;
  v25[2] = a3;
  v25[3] = a4;
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_24:
  result = sub_1D726492C();
  __break(1u);
  return result;
}

void sub_1D5FFF6F0(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  v7 = *(*v4 + 16);
  v8 = *(*v4 + 24);
  if (v8 > v7 && (a4 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a4)
  {
    sub_1D5FF5F14();
  }

  else
  {
    if (v8 > v7)
    {
      sub_1D60011E0();
      goto LABEL_12;
    }

    sub_1D6006054();
  }

  v9 = *v4;
  sub_1D7264A0C();
  v10 = sub_1D726372C();
  MEMORY[0x1DA6FC0B0](v10);
  v11 = sub_1D7264A5C();
  v12 = -1 << *(v9 + 32);
  a3 = v11 & ~v12;
  if ((*(v9 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    sub_1D5B5A498(0, &qword_1EDF1A650);
    do
    {
      v14 = *(v9 + 48) + 16 * a3;
      v15 = *v14;
      v16 = *(v14 + 8);
      v17 = v15;
      v18 = sub_1D726370C();

      if (v18)
      {
        goto LABEL_15;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v9 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_12:
  v19 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v20 = (*(v19 + 48) + 16 * a3);
  *v20 = a1;
  v20[1] = a2;
  v21 = *(v19 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (!v22)
  {
    *(v19 + 16) = v23;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1D726492C();
  __break(1u);
}

void sub_1D5FFF8A0(uint64_t a1, unint64_t a2, char a3, unint64_t *a4, unint64_t *a5, uint64_t a6, unint64_t *a7)
{
  v10 = *(*v7 + 16);
  v11 = *(*v7 + 24);
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v12 = a5;
    sub_1D5FF61B0(v10 + 1, a4, a5, a6, a7);
  }

  else
  {
    if (v11 > v10)
    {
      sub_1D6001358(a4, a5, a6, a7);
      goto LABEL_12;
    }

    v12 = a5;
    sub_1D60062A8(v10 + 1, a4, a5, a6, a7);
  }

  v13 = *v7;
  v14 = sub_1D72636FC();
  v15 = -1 << *(v13 + 32);
  a2 = v14 & ~v15;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    sub_1D5B5A498(0, v12);
    do
    {
      v17 = *(*(v13 + 48) + 8 * a2);
      v18 = sub_1D726370C();

      if (v18)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v19 = *v7;
  *(*v7 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v19 + 48) + 8 * a2) = a1;
  v20 = *(v19 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (!v21)
  {
    *(v19 + 16) = v22;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1D726492C();
  __break(1u);
}

uint64_t sub_1D5FFFA48(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_1D7258DBC();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x1EEE9AC00](v6, v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v13 > v12 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1D5FF63CC();
  }

  else
  {
    if (v13 > v12)
    {
      sub_1D6001708(MEMORY[0x1E6969C28], sub_1D6007A94);
      goto LABEL_12;
    }

    sub_1D60064B0();
  }

  v14 = *v3;
  sub_1D5D51EB4(&qword_1EDF18A30, 255, MEMORY[0x1E6969C28]);
  v15 = sub_1D7261E7C();
  v16 = v14 + 56;
  v32 = v14;
  v17 = -1 << *(v14 + 32);
  a2 = v15 & ~v17;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v11, *(v32 + 48) + v22 * a2, v6);
      sub_1D5D51EB4(&qword_1EDF3C378, 255, MEMORY[0x1E6969C28]);
      v23 = sub_1D7261FBC();
      (*(v20 - 8))(v11, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6, v9);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1D726492C();
  __break(1u);
  return result;
}

uint64_t sub_1D5FFFD1C(uint64_t result, unsigned __int8 a2, unint64_t a3, char a4)
{
  v6 = result;
  v7 = *(*v4 + 16);
  v8 = *(*v4 + 24);
  if (v8 > v7 && (a4 & 1) != 0)
  {
    goto LABEL_28;
  }

  if (a4)
  {
    sub_1D5FF6720();
  }

  else
  {
    if (v8 > v7)
    {
      v9 = a3;
      result = sub_1D600193C();
      a3 = v9;
      goto LABEL_28;
    }

    sub_1D60067C4();
  }

  v10 = *v4;
  sub_1D7264A0C();
  if (a2)
  {
    v11 = qword_1D728D788[v6];
  }

  else
  {
    MEMORY[0x1DA6FC0B0](2);
    v11 = v6;
  }

  MEMORY[0x1DA6FC0B0](v11);
  result = sub_1D7264A5C();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = *(v10 + 48) + 16 * a3;
      v15 = *v14;
      if (*(v14 + 8) == 1)
      {
        if (v15 > 1)
        {
          if (v15 == 2)
          {
            if ((a2 & (v6 == 2)) != 0)
            {
              goto LABEL_27;
            }
          }

          else if ((a2 & (v6 > 2)) != 0)
          {
            goto LABEL_27;
          }
        }

        else if (v15)
        {
          if ((a2 & (v6 == 1)) != 0)
          {
            goto LABEL_27;
          }
        }

        else if ((a2 & (v6 == 0)) != 0)
        {
          goto LABEL_27;
        }
      }

      else if ((a2 & 1) == 0 && v15 == v6)
      {
LABEL_27:
        result = sub_1D726492C();
        __break(1u);
        break;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_28:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = *(v16 + 48) + 16 * a3;
  *v17 = v6;
  *(v17 + 8) = a2 & 1;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v16 + 16) = v20;
  }

  return result;
}

void *sub_1D5FFFF14()
{
  v1 = v0;
  sub_1D5B87494(0, &qword_1EDF1A590);
  v2 = *v0;
  v3 = sub_1D7263CAC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1D600007C()
{
  v1 = v0;
  sub_1D5B87494(0, &qword_1EDF1A588);
  v2 = *v0;
  v3 = sub_1D7263CAC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1D60001C8()
{
  v1 = v0;
  sub_1D6007D30(0, &qword_1EDF04308, sub_1D6007CDC);
  v2 = *v0;
  v3 = sub_1D7263CAC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1D6000334()
{
  v1 = v0;
  sub_1D5B87494(0, &qword_1EDF042D0);
  v2 = *v0;
  v3 = sub_1D7263CAC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 4 * v14) = *(*(v2 + 48) + 4 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1D6000480()
{
  v1 = v0;
  sub_1D6007D30(0, &qword_1EDF1A5A8, sub_1D60071DC);
  v2 = *v0;
  v3 = sub_1D7263CAC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1D60005D8(unint64_t *a1, void (*a2)(void))
{
  v3 = v2;
  sub_1D6007D30(0, a1, a2);
  v4 = *v2;
  v5 = sub_1D7263CAC();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 56);
    for (i = (v11 + 63) >> 6; v13; *(*(v6 + 48) + v16) = *(*(v4 + 48) + v16))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v16 = v15 | (v10 << 6);
LABEL_17:
      ;
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= i)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v13 = (v18 - 1) & v18;
        v16 = __clz(__rbit64(v18)) | (v10 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_1D6000718()
{
  v1 = v0;
  sub_1D6007D30(0, &qword_1EC882208, sub_1D60073B4);
  v2 = *v0;
  v3 = sub_1D7263CAC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    v12 = (v9 + 63) >> 6;
    while (v11)
    {
LABEL_11:
      v11 &= v11 - 1;
    }

    while (1)
    {
      v13 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v13 >= v12)
      {
        goto LABEL_17;
      }

      v11 = *(v2 + 56 + 8 * v13);
      ++v8;
      if (v11)
      {
        v8 = v13;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v1 = v4;
  }

  return result;
}

void *sub_1D6000890(unint64_t *a1, void (*a2)(void), uint64_t a3, uint64_t (*a4)(void, void))
{
  v6 = v4;
  sub_1D6007D30(0, a1, a2);
  v7 = *v4;
  v8 = sub_1D7263CAC();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 56);
    v11 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v7 + 56 + 8 * v11)
    {
      result = memmove(result, (v7 + 56), 8 * v11);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = *(v7 + 56);
    v16 = -1;
    if (v14 < 64)
    {
      v16 = ~(-1 << v14);
    }

    v17 = v16 & v15;
    v18 = (v14 + 63) >> 6;
    if ((v16 & v15) != 0)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
LABEL_17:
        v22 = 16 * (v19 | (v13 << 6));
        v23 = *(*(v7 + 48) + v22);
        *(*(v9 + 48) + v22) = v23;
        result = a4(v23, *(&v23 + 1));
      }

      while (v17);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_19;
      }

      v21 = *(v7 + 56 + 8 * v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v6 = v9;
  }

  return result;
}

void *sub_1D6000A30(unint64_t *a1, void (*a2)(void), uint64_t a3, uint64_t (*a4)(void))
{
  v6 = v4;
  sub_1D6007D30(0, a1, a2);
  v7 = *v4;
  v8 = sub_1D7263CAC();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 56);
    v11 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v7 + 56 + 8 * v11)
    {
      result = memmove(result, (v7 + 56), 8 * v11);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = *(v7 + 56);
    v16 = -1;
    if (v14 < 64)
    {
      v16 = ~(-1 << v14);
    }

    v17 = v16 & v15;
    v18 = (v14 + 63) >> 6;
    if ((v16 & v15) != 0)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
LABEL_17:
        v22 = 24 * (v19 | (v13 << 6));
        v23 = *(v7 + 48) + v22;
        v24 = *(v23 + 8);
        v25 = *(v9 + 48) + v22;
        v26 = *(v23 + 16);
        *v25 = *v23;
        *(v25 + 8) = v24;
        *(v25 + 16) = v26;
        result = a4();
      }

      while (v17);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_19;
      }

      v21 = *(v7 + 56 + 8 * v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v6 = v9;
  }

  return result;
}

void *sub_1D6000C1C()
{
  v1 = v0;
  sub_1D6007D30(0, &qword_1EC882230, sub_1D6007548);
  v2 = *v0;
  v3 = sub_1D7263CAC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; v20[1] = v18)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = 2 * v14;
      v18 = (*(v2 + 48) + v17);
      v19 = *v18;
      LOBYTE(v18) = v18[1];
      v20 = (*(v4 + 48) + v17);
      *v20 = v19;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1D6000D88()
{
  v1 = v0;
  sub_1D6007D30(0, &qword_1EDF1A598, sub_1D5E2A458);
  v2 = *v0;
  v3 = sub_1D7263CAC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1D6000F08()
{
  v1 = v0;
  sub_1D600745C();
  v2 = *v0;
  v3 = sub_1D7263CAC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1D6001064()
{
  v1 = v0;
  sub_1D6007D30(0, &qword_1EC882280, sub_1D6007964);
  v2 = *v0;
  v3 = sub_1D7263CAC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 32 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v19 = *(v18 + 8);
        v20 = *(v4 + 48) + v17;
        v21 = *(v18 + 16);
        *v20 = *v18;
        *(v20 + 8) = v19;
        *(v20 + 16) = v21;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_1D60011E0()
{
  v1 = v0;
  sub_1D6007D30(0, &qword_1EDF04310, sub_1D6007C88);
  v2 = *v0;
  v3 = sub_1D7263CAC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v20 = *v18;
        v19 = *(v18 + 8);
        v21 = (*(v4 + 48) + v17);
        *v21 = v20;
        v21[1] = v19;
        v22 = v19;
        result = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_1D6001358(unint64_t *a1, unint64_t *a2, uint64_t a3, unint64_t *a4)
{
  v5 = v4;
  sub_1D60075F0(0, a1, a2, a3, a4);
  v6 = *v4;
  v7 = sub_1D7263CAC();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v6 + 56 + 8 * v10)
    {
      result = memmove(result, (v6 + 56), 8 * v10);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_17:
        v21 = v18 | (v12 << 6);
        v22 = *(*(v6 + 48) + 8 * v21);
        *(*(v8 + 48) + 8 * v21) = v22;
        result = v22;
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_19;
      }

      v20 = *(v6 + 56 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v5 = v8;
  }

  return result;
}

void *sub_1D6001500(uint64_t (*a1)(void), void (*a2)(void, __n128), uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v31 = a4;
  v7 = v4;
  v8 = a1(0);
  v9 = *(v8 - 8);
  v11 = MEMORY[0x1EEE9AC00](v8 - 8, v10);
  v13 = &v30 - v12;
  a2(0, v11);
  v14 = *v4;
  v15 = sub_1D7263CAC();
  v16 = v15;
  if (*(v14 + 16))
  {
    v30 = v7;
    result = (v15 + 56);
    v18 = ((1 << *(v16 + 32)) + 63) >> 6;
    if (v16 != v14 || result >= v14 + 56 + 8 * v18)
    {
      result = memmove(result, (v14 + 56), 8 * v18);
    }

    v20 = 0;
    *(v16 + 16) = *(v14 + 16);
    v21 = 1 << *(v14 + 32);
    v22 = *(v14 + 56);
    v23 = -1;
    if (v21 < 64)
    {
      v23 = ~(-1 << v21);
    }

    v24 = v23 & v22;
    v25 = (v21 + 63) >> 6;
    if ((v23 & v22) != 0)
    {
      do
      {
        v26 = __clz(__rbit64(v24));
        v24 &= v24 - 1;
LABEL_17:
        v29 = *(v9 + 72) * (v26 | (v20 << 6));
        sub_1D5BE7354(*(v14 + 48) + v29, v13, a3);
        result = sub_1D5BE7424(v13, *(v16 + 48) + v29, v31);
      }

      while (v24);
    }

    v27 = v20;
    while (1)
    {
      v20 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v20 >= v25)
      {

        v7 = v30;
        goto LABEL_21;
      }

      v28 = *(v14 + 56 + 8 * v20);
      ++v27;
      if (v28)
      {
        v26 = __clz(__rbit64(v28));
        v24 = (v28 - 1) & v28;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v7 = v16;
  }

  return result;
}

void *sub_1D6001708(uint64_t (*a1)(void), void (*a2)(void, __n128))
{
  v4 = v2;
  v5 = a1(0);
  v6 = *(v5 - 8);
  v8 = MEMORY[0x1EEE9AC00](v5, v7);
  v10 = &v26 - v9;
  a2(0, v8);
  v11 = *v2;
  v12 = sub_1D7263CAC();
  v13 = v12;
  if (*(v11 + 16))
  {
    v27 = v4;
    result = (v12 + 56);
    v15 = ((1 << *(v13 + 32)) + 63) >> 6;
    if (v13 != v11 || result >= v11 + 56 + 8 * v15)
    {
      result = memmove(result, (v11 + 56), 8 * v15);
    }

    v17 = 0;
    *(v13 + 16) = *(v11 + 16);
    v18 = 1 << *(v11 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v11 + 56);
    v21 = (v18 + 63) >> 6;
    v28 = v6 + 32;
    for (i = v6 + 16; v20; result = (*(v6 + 32))(*(v13 + 48) + v25, v10, v5))
    {
      v22 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_17:
      v25 = *(v6 + 72) * (v22 | (v17 << 6));
      (*(v6 + 16))(v10, *(v11 + 48) + v25, v5);
    }

    v23 = v17;
    while (1)
    {
      v17 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v17 >= v21)
      {

        v4 = v27;
        goto LABEL_21;
      }

      v24 = *(v11 + 56 + 8 * v17);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v20 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v4 = v13;
  }

  return result;
}

void *sub_1D600193C()
{
  v1 = v0;
  sub_1D6007D30(0, &qword_1EC87FAE8, sub_1D5E2A08C);
  v2 = *v0;
  v3 = sub_1D7263CAC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(v20 + 8) = v18)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = 16 * v14;
      v18 = *(v2 + 48) + v17;
      v19 = *v18;
      LOBYTE(v18) = *(v18 + 8);
      v20 = *(v4 + 48) + v17;
      *v20 = v19;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1D6001AA8()
{
  v1 = v0;
  v2 = *v0;
  sub_1D6007D30(0, &qword_1EDF1A5C0, sub_1D5CD8948);
  result = sub_1D7263CBC();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v15 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_16:
      v18 = *(*(v2 + 48) + (v15 | (v5 << 6)));
      sub_1D7264A0C();
      sub_1D72621EC();

      result = sub_1D7264A5C();
      v11 = -1 << *(v4 + 32);
      v12 = result & ~v11;
      v13 = v12 >> 6;
      if (((-1 << v12) & ~*(v10 + 8 * (v12 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v11) >> 6;
        while (++v13 != v20 || (v19 & 1) == 0)
        {
          v21 = v13 == v20;
          if (v13 == v20)
          {
            v13 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v13);
          if (v22 != -1)
          {
            v14 = __clz(__rbit64(~v22)) + (v13 << 6);
            goto LABEL_8;
          }
        }

        goto LABEL_29;
      }

      v14 = __clz(__rbit64((-1 << v12) & ~*(v10 + 8 * (v12 >> 6)))) | v12 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v10 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v4 + 48) + v14) = v18;
      ++*(v4 + 16);
    }

    v16 = v5;
    while (1)
    {
      v5 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_27;
      }

      v17 = *(v2 + 56 + 8 * v5);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v8 = (v17 - 1) & v17;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {

LABEL_27:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1D6001D64()
{
  v1 = v0;
  v2 = *v0;
  sub_1D5B87494(0, &qword_1EDF1A588);
  result = sub_1D7263CBC();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
      result = sub_1D72649FC();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + 8 * v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {
        goto LABEL_24;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v1 = v4;
  }

  return result;
}

unint64_t sub_1D6001F60()
{
  v1 = v0;
  v2 = *v0;
  sub_1D6007D30(0, &qword_1EDF04308, sub_1D6007CDC);
  result = sub_1D7263CBC();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    v7 = -1;
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    v8 = v7 & *(v2 + 56);
    for (i = (v6 + 63) >> 6; v8; result = sub_1D5FF69BC(v13, v4))
    {
      v10 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_11:
      v13 = *(*(v2 + 48) + 8 * (v10 | (v5 << 6)));
    }

    v11 = v5;
    while (1)
    {
      v5 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v5 >= i)
      {
        goto LABEL_13;
      }

      v12 = *(v2 + 56 + 8 * v5);
      ++v11;
      if (v12)
      {
        v10 = __clz(__rbit64(v12));
        v8 = (v12 - 1) & v12;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1D60020AC()
{
  v1 = v0;
  v2 = *v0;
  sub_1D5B87494(0, &qword_1EDF042D0);
  result = sub_1D7263CBC();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + 4 * (v12 | (v5 << 6)));
      result = MEMORY[0x1DA6FC080](*(v4 + 40), v15, 4);
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + 4 * v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {
        goto LABEL_24;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1D60022AC()
{
  v1 = v0;
  v2 = *v0;
  sub_1D6007D30(0, &qword_1EDF1A5A8, sub_1D60071DC);
  result = sub_1D7263CBC();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v15 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_17:
      v18 = *(*(v2 + 48) + (v15 | (v5 << 6)));
      sub_1D7264A0C();
      MEMORY[0x1DA6FC0B0](0);
      sub_1D72621EC();

      result = sub_1D7264A5C();
      v11 = -1 << *(v4 + 32);
      v12 = result & ~v11;
      v13 = v12 >> 6;
      if (((-1 << v12) & ~*(v10 + 8 * (v12 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v11) >> 6;
        while (++v13 != v20 || (v19 & 1) == 0)
        {
          v21 = v13 == v20;
          if (v13 == v20)
          {
            v13 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v13);
          if (v22 != -1)
          {
            v14 = __clz(__rbit64(~v22)) + (v13 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_29;
      }

      v14 = __clz(__rbit64((-1 << v12) & ~*(v10 + 8 * (v12 >> 6)))) | v12 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v10 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v4 + 48) + v14) = v18;
      ++*(v4 + 16);
    }

    v16 = v5;
    while (1)
    {
      v5 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_27;
      }

      v17 = *(v2 + 56 + 8 * v5);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v8 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {

LABEL_27:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1D60026D8()
{
  v1 = v0;
  v2 = *v0;
  sub_1D6007D30(0, &qword_1EC8822A0, sub_1D5B56F50);
  result = sub_1D7263CBC();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + (v12 | (v5 << 6)));
      sub_1D7264A0C();
      sub_1D72621EC();

      result = sub_1D7264A5C();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1D6002984()
{
  v1 = v0;
  v2 = *v0;
  sub_1D6007D30(0, &qword_1EDF1A5B8, sub_1D5E2A690);
  result = sub_1D7263CBC();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v15 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_17:
      v18 = *(*(v2 + 48) + (v15 | (v5 << 6)));
      sub_1D7264A0C();
      sub_1D72621EC();

      result = sub_1D7264A5C();
      v11 = -1 << *(v4 + 32);
      v12 = result & ~v11;
      v13 = v12 >> 6;
      if (((-1 << v12) & ~*(v10 + 8 * (v12 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v11) >> 6;
        while (++v13 != v20 || (v19 & 1) == 0)
        {
          v21 = v13 == v20;
          if (v13 == v20)
          {
            v13 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v13);
          if (v22 != -1)
          {
            v14 = __clz(__rbit64(~v22)) + (v13 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_29;
      }

      v14 = __clz(__rbit64((-1 << v12) & ~*(v10 + 8 * (v12 >> 6)))) | v12 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v10 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v4 + 48) + v14) = v18;
      ++*(v4 + 16);
    }

    v16 = v5;
    while (1)
    {
      v5 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_27;
      }

      v17 = *(v2 + 56 + 8 * v5);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v8 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {

LABEL_27:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1D6002D00()
{
  v1 = *v0;
  sub_1D6007D30(0, &qword_1EC882208, sub_1D60073B4);
  result = sub_1D7263CBC();
  v3 = result;
  if (*(v1 + 16))
  {
    v4 = 0;
    v5 = 1 << *(v1 + 32);
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    else
    {
      v6 = -1;
    }

    v7 = v6 & *(v1 + 56);
    v8 = (v5 + 63) >> 6;
    v9 = result + 56;
    while (v7)
    {
LABEL_13:
      sub_1D7264A0C();
      MEMORY[0x1DA6FC0B0](0);
      result = sub_1D7264A5C();
      v12 = -1 << *(v3 + 32);
      v13 = result & ~v12;
      v14 = v13 >> 6;
      if (((-1 << v13) & ~*(v9 + 8 * (v13 >> 6))) == 0)
      {
        v15 = 0;
        v16 = (63 - v12) >> 6;
        while (++v14 != v16 || (v15 & 1) == 0)
        {
          v17 = v14 == v16;
          if (v14 == v16)
          {
            v14 = 0;
          }

          v15 |= v17;
          v18 = *(v9 + 8 * v14);
          if (v18 != -1)
          {
            v10 = __clz(__rbit64(~v18)) + (v14 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_24;
      }

      v10 = __clz(__rbit64((-1 << v13) & ~*(v9 + 8 * (v13 >> 6)))) | v13 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      v7 &= v7 - 1;
      *(v9 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
      ++*(v3 + 16);
    }

    while (1)
    {
      v11 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if (v11 >= v8)
      {
        goto LABEL_22;
      }

      v7 = *(v1 + 56 + 8 * v11);
      ++v4;
      if (v7)
      {
        v4 = v11;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  else
  {
LABEL_22:

    *v0 = v3;
  }

  return result;
}

uint64_t sub_1D6002EF4()
{
  v1 = v0;
  v2 = *v0;
  sub_1D6007D30(0, &qword_1EDF1A5A0, sub_1D5E2A540);
  result = sub_1D7263CBC();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v15 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_16:
      v18 = *(*(v2 + 48) + (v15 | (v5 << 6)));
      sub_1D7264A0C();
      sub_1D72621EC();

      result = sub_1D7264A5C();
      v11 = -1 << *(v4 + 32);
      v12 = result & ~v11;
      v13 = v12 >> 6;
      if (((-1 << v12) & ~*(v10 + 8 * (v12 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v11) >> 6;
        while (++v13 != v20 || (v19 & 1) == 0)
        {
          v21 = v13 == v20;
          if (v13 == v20)
          {
            v13 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v13);
          if (v22 != -1)
          {
            v14 = __clz(__rbit64(~v22)) + (v13 << 6);
            goto LABEL_8;
          }
        }

        goto LABEL_29;
      }

      v14 = __clz(__rbit64((-1 << v12) & ~*(v10 + 8 * (v12 >> 6)))) | v12 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v10 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v4 + 48) + v14) = v18;
      ++*(v4 + 16);
    }

    v16 = v5;
    while (1)
    {
      v5 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_27;
      }

      v17 = *(v2 + 56 + 8 * v5);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v8 = (v17 - 1) & v17;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {

LABEL_27:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1D60031F0()
{
  v1 = v0;
  v2 = *v0;
  sub_1D6007D30(0, &qword_1EC8822A8, sub_1D6007B2C);
  result = sub_1D7263CBC();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + (v12 | (v5 << 6)));
      sub_1D7264A0C();
      sub_1D72621EC();

      result = sub_1D7264A5C();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1D6003488()
{
  v1 = v0;
  v2 = *v0;
  sub_1D6007D30(0, &qword_1EDF04318, sub_1D6007408);
  result = sub_1D7263CBC();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v16 = (*(v2 + 48) + 16 * (v13 | (v5 << 6)));
      v18 = *v16;
      v17 = v16[1];
      sub_1D7264A0C();
      switch(v17)
      {
        case 0:
          v19 = 0;
          goto LABEL_35;
        case 1:
          v19 = 1;
          goto LABEL_35;
        case 2:
          v19 = 2;
          goto LABEL_35;
        case 3:
          v19 = 3;
          goto LABEL_35;
        case 4:
          v19 = 4;
          goto LABEL_35;
        case 5:
          v19 = 5;
          goto LABEL_35;
        case 6:
          v19 = 6;
          goto LABEL_35;
        case 7:
          v19 = 7;
          goto LABEL_35;
        case 8:
          v19 = 9;
          goto LABEL_35;
        case 9:
          v19 = 10;
          goto LABEL_35;
        case 10:
          v19 = 11;
          goto LABEL_35;
        case 11:
          v19 = 12;
          goto LABEL_35;
        case 12:
          v19 = 13;
          goto LABEL_35;
        case 13:
          v19 = 14;
          goto LABEL_35;
        case 14:
          v19 = 15;
          goto LABEL_35;
        case 15:
          v19 = 16;
          goto LABEL_35;
        case 16:
          v19 = 17;
          goto LABEL_35;
        case 17:
          v19 = 18;
LABEL_35:
          MEMORY[0x1DA6FC0B0](v19);
          break;
        default:
          MEMORY[0x1DA6FC0B0](8);

          sub_1D72621EC();
          break;
      }

      result = sub_1D7264A5C();
      v20 = -1 << *(v4 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v10 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v10 + 8 * v22);
          if (v26 != -1)
          {
            v11 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_49;
      }

      v11 = __clz(__rbit64((-1 << v21) & ~*(v10 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = (*(v4 + 48) + 16 * v11);
      *v12 = v18;
      v12[1] = v17;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_47;
      }

      v15 = *(v2 + 56 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v8 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_49:
    __break(1u);
  }

  else
  {

LABEL_47:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1D60037EC(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  v4 = v3;
  v5 = *v3;
  sub_1D6007D30(0, a2, a3);
  result = sub_1D7263CBC();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(*(v5 + 48) + (v15 | (v8 << 6)));
      sub_1D7264A0C();
      MEMORY[0x1DA6FC0B0](v18);
      result = sub_1D7264A5C();
      v19 = -1 << *(v7 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v7 + 48) + v14) = v18;
      ++*(v7 + 16);
    }

    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v8 >= v12)
      {

        v4 = v3;
        goto LABEL_26;
      }

      v17 = *(v5 + 56 + 8 * v8);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v4 = v7;
  }

  return result;
}

uint64_t sub_1D6003A00()
{
  v1 = v0;
  v2 = *v0;
  sub_1D6007D30(0, &qword_1EC882218, sub_1D5E4E308);
  result = sub_1D7263CBC();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + (v12 | (v5 << 6)));
      sub_1D7264A0C();
      sub_1D72621EC();

      result = sub_1D7264A5C();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1D6003C6C()
{
  v1 = v0;
  v2 = *v0;
  sub_1D6007D30(0, &qword_1EC8821F0, sub_1D6007360);
  result = sub_1D7263CBC();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + (v12 | (v5 << 6)));
      sub_1D7264A0C();
      sub_1D72621EC();

      result = sub_1D7264A5C();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1D6003F08()
{
  v1 = v0;
  v2 = *v0;
  sub_1D6007D30(0, &qword_1EDF1A5C8, sub_1D5B4B090);
  result = sub_1D7263CBC();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v16 = (*(v2 + 48) + 16 * (v13 | (v5 << 6)));
      v18 = *v16;
      v17 = v16[1];
      sub_1D7264A0C();
      switch(v17)
      {
        case 0:
          v19 = 0;
          goto LABEL_32;
        case 1:
          v19 = 1;
          goto LABEL_32;
        case 2:
          v19 = 2;
          goto LABEL_32;
        case 3:
          v19 = 3;
          goto LABEL_32;
        case 4:
          v19 = 4;
          goto LABEL_32;
        case 5:
          v19 = 5;
          goto LABEL_32;
        case 6:
          v19 = 6;
          goto LABEL_32;
        case 7:
          v19 = 7;
          goto LABEL_32;
        case 8:
          v19 = 8;
          goto LABEL_32;
        case 9:
          v19 = 9;
          goto LABEL_32;
        case 10:
          v19 = 10;
          goto LABEL_32;
        case 11:
          v19 = 11;
          goto LABEL_32;
        case 12:
          v19 = 12;
          goto LABEL_32;
        case 13:
          v19 = 13;
          goto LABEL_32;
        case 14:
          v19 = 14;
          goto LABEL_32;
        case 15:
          v19 = 15;
LABEL_32:
          MEMORY[0x1DA6FC0B0](v19);
          break;
        default:
          MEMORY[0x1DA6FC0B0](16);

          sub_1D72621EC();
          break;
      }

      result = sub_1D7264A5C();
      v20 = -1 << *(v4 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v10 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v10 + 8 * v22);
          if (v26 != -1)
          {
            v11 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_47;
      }

      v11 = __clz(__rbit64((-1 << v21) & ~*(v10 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = (*(v4 + 48) + 16 * v11);
      *v12 = v18;
      v12[1] = v17;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_45;
      }

      v15 = *(v2 + 56 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v8 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_47:
    __break(1u);
  }

  else
  {

LABEL_45:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1D600427C()
{
  v1 = v0;
  v2 = *v0;
  sub_1D6007D30(0, &qword_1EC882250, sub_1D6007730);
  result = sub_1D7263CBC();
  v4 = result;
  if (!*(v2 + 16))
  {

LABEL_38:
    *v1 = v4;
    return result;
  }

  v29 = v2;
  v5 = 0;
  v6 = v2 + 56;
  v7 = 1 << *(v2 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v2 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = result + 56;
  while (v9)
  {
    v14 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_15:
    v17 = *(v2 + 48) + 24 * (v14 | (v5 << 6));
    v18 = *v17;
    v19 = *(v17 + 8);
    v20 = *(v17 + 16);
    sub_1D7264A0C();
    if (v20 <= 2)
    {
      if (v20)
      {
        if (v20 == 1)
        {
          v21 = 2;
        }

        else
        {
          v21 = 3;
        }
      }

      else
      {
        v21 = 1;
      }

      goto LABEL_25;
    }

    if (v20 == 3)
    {
      v21 = 4;
      goto LABEL_25;
    }

    if (v20 == 4)
    {
      v21 = 5;
LABEL_25:
      MEMORY[0x1DA6FC0B0](v21);

      sub_1D72621EC();
      goto LABEL_26;
    }

    MEMORY[0x1DA6FC0B0](0);
LABEL_26:
    result = sub_1D7264A5C();
    v22 = -1 << *(v4 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v11 + 8 * (v23 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v22) >> 6;
      while (++v24 != v26 || (v25 & 1) == 0)
      {
        v27 = v24 == v26;
        if (v24 == v26)
        {
          v24 = 0;
        }

        v25 |= v27;
        v28 = *(v11 + 8 * v24);
        if (v28 != -1)
        {
          v12 = __clz(__rbit64(~v28)) + (v24 << 6);
          goto LABEL_7;
        }
      }

      goto LABEL_40;
    }

    v12 = __clz(__rbit64((-1 << v23) & ~*(v11 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
    *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
    v13 = *(v4 + 48) + 24 * v12;
    *v13 = v18;
    *(v13 + 8) = v19;
    *(v13 + 16) = v20;
    ++*(v4 + 16);
    v2 = v29;
  }

  v15 = v5;
  while (1)
  {
    v5 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v5 >= v10)
    {

      v1 = v0;
      goto LABEL_38;
    }

    v16 = *(v6 + 8 * v5);
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v9 = (v16 - 1) & v16;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_1D600453C()
{
  v1 = v0;
  v2 = *v0;
  sub_1D6007D30(0, &qword_1EDF042F8, sub_1D5C95CB4);
  result = sub_1D7263CBC();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + (v12 | (v5 << 6)));
      sub_1D7264A0C();
      sub_1D72621EC();

      result = sub_1D7264A5C();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1D60047F0()
{
  v1 = v0;
  v2 = *v0;
  sub_1D6007D30(0, &qword_1EC882230, sub_1D6007548);
  result = sub_1D7263CBC();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v16 = (*(v2 + 48) + 2 * (v13 | (v5 << 6)));
      v17 = *v16;
      v18 = v16[1];
      sub_1D7264A0C();
      sub_1D6E23ADC(v17);
      sub_1D72621EC();

      sub_1D72621EC();

      result = sub_1D7264A5C();
      v19 = -1 << *(v4 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v10 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v10 + 8 * v21);
          if (v25 != -1)
          {
            v11 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v20) & ~*(v10 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = (*(v4 + 48) + 2 * v11);
      *v12 = v17;
      v12[1] = v18;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v15 = *(v2 + 56 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v8 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1D6004AA4()
{
  v1 = v0;
  v2 = *v0;
  sub_1D6007D30(0, &qword_1EDF1A598, sub_1D5E2A458);
  result = sub_1D7263CBC();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + (v12 | (v5 << 6)));
      sub_1D7264A0C();
      if (v15 == 12)
      {
        MEMORY[0x1DA6FC0B0](0);
      }

      else
      {
        MEMORY[0x1DA6FC0B0](1);
        sub_1D72621EC();
      }

      result = sub_1D7264A5C();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_31;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_29;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

LABEL_29:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1D6004E40()
{
  v1 = v0;
  v2 = *v0;
  sub_1D6007D30(0, &qword_1EC882288, sub_1D60079B8);
  result = sub_1D7263CBC();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v15 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_17:
      v18 = *(*(v2 + 48) + (v15 | (v5 << 6)));
      sub_1D7264A0C();
      sub_1D72621EC();

      result = sub_1D7264A5C();
      v11 = -1 << *(v4 + 32);
      v12 = result & ~v11;
      v13 = v12 >> 6;
      if (((-1 << v12) & ~*(v10 + 8 * (v12 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v11) >> 6;
        while (++v13 != v20 || (v19 & 1) == 0)
        {
          v21 = v13 == v20;
          if (v13 == v20)
          {
            v13 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v13);
          if (v22 != -1)
          {
            v14 = __clz(__rbit64(~v22)) + (v13 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_29;
      }

      v14 = __clz(__rbit64((-1 << v12) & ~*(v10 + 8 * (v12 >> 6)))) | v12 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v10 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v4 + 48) + v14) = v18;
      ++*(v4 + 16);
    }

    v16 = v5;
    while (1)
    {
      v5 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_27;
      }

      v17 = *(v2 + 56 + 8 * v5);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v8 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {

LABEL_27:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1D600513C(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  v4 = v3;
  v5 = *v3;
  sub_1D6007D30(0, a2, a3);
  result = sub_1D7263CBC();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v5;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = *(v5 + 48) + 24 * (v17 | (v8 << 6));
      v21 = *v20;
      v22 = *(v20 + 8);
      v23 = *(v20 + 16);
      sub_1D7264A0C();
      MEMORY[0x1DA6FC0B0](v23);

      sub_1D72621EC();
      result = sub_1D7264A5C();
      v24 = -1 << *(v7 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 24 * v15;
      *v16 = v21;
      *(v16 + 8) = v22;
      *(v16 + 16) = v23;
      ++*(v7 + 16);
      v5 = v31;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v4 = v3;
        goto LABEL_26;
      }

      v19 = *(v9 + 8 * v8);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v4 = v7;
  }

  return result;
}

uint64_t sub_1D6005388(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  v4 = v3;
  v5 = *v3;
  sub_1D6007D30(0, a2, a3);
  result = sub_1D7263CBC();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(*(v5 + 48) + (v15 | (v8 << 6)));
      sub_1D7264A0C();
      sub_1D72621EC();

      result = sub_1D7264A5C();
      v19 = -1 << *(v7 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v7 + 48) + v14) = v18;
      ++*(v7 + 16);
    }

    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v8 >= v12)
      {

        v4 = v3;
        goto LABEL_26;
      }

      v17 = *(v5 + 56 + 8 * v8);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v4 = v7;
  }

  return result;
}

uint64_t sub_1D60055CC()
{
  v1 = v0;
  v2 = *v0;
  sub_1D600745C();
  result = sub_1D7263CBC();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
      sub_1D7264A0C();
      MEMORY[0x1DA6FC0B0](v15);
      result = sub_1D7264A5C();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + 8 * v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1D60057E0()
{
  v1 = v0;
  v33 = sub_1D726098C();
  v2 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33, v3);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  sub_1D5E2A4AC();
  v7 = sub_1D7263CBC();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v0;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v2 + 16;
    v32 = v2;
    v15 = v7 + 56;
    v29 = (v2 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_1D5D51EB4(&unk_1EDF168A8, 255, MEMORY[0x1E69B4188]);
      result = sub_1D7261E7C();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v7;
  }

  return result;
}

uint64_t sub_1D6005AF4()
{
  v1 = v0;
  v2 = *v0;
  sub_1D6007D30(0, &qword_1EC882240, sub_1D600759C);
  result = sub_1D7263CBC();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + (v12 | (v5 << 6)));
      sub_1D7264A0C();
      sub_1D72621EC();

      result = sub_1D7264A5C();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1D6005DD8()
{
  v1 = v0;
  v2 = *v0;
  sub_1D6007D30(0, &qword_1EC882280, sub_1D6007964);
  result = sub_1D7263CBC();
  v4 = result;
  if (*(v2 + 16))
  {
    v29 = v0;
    v30 = v2;
    v5 = 0;
    v6 = v2 + 56;
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v2 + 48) + 32 * (v14 | (v5 << 6)));
      v18 = *v17;
      v19 = v17[1];
      v20 = v17[2];
      v21 = v17[3];
      sub_1D7264A0C();

      sub_1D72621EC();
      MEMORY[0x1DA6FC0B0](v20);
      MEMORY[0x1DA6FC0B0](v21);
      result = sub_1D7264A5C();
      v22 = -1 << *(v4 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v11 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v11 + 8 * v24);
          if (v28 != -1)
          {
            v12 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v23) & ~*(v11 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + 32 * v12);
      *v13 = v18;
      v13[1] = v19;
      v13[2] = v20;
      v13[3] = v21;
      ++*(v4 + 16);
      v2 = v30;
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v5 >= v10)
      {

        v1 = v29;
        goto LABEL_26;
      }

      v16 = *(v6 + 8 * v5);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1D6006054()
{
  v1 = v0;
  v2 = *v0;
  sub_1D6007D30(0, &qword_1EDF04310, sub_1D6007C88);
  result = sub_1D7263CBC();
  v4 = result;
  if (*(v2 + 16))
  {
    v29 = v0;
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v16 = *(v2 + 48) + 16 * (v13 | (v5 << 6));
      v17 = *v16;
      v18 = *(v16 + 8);
      sub_1D7264A0C();
      v19 = v18;
      v20 = v17;
      v21 = sub_1D726372C();
      MEMORY[0x1DA6FC0B0](v21);
      result = sub_1D7264A5C();
      v22 = -1 << *(v4 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v10 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v10 + 8 * v24);
          if (v28 != -1)
          {
            v11 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v23) & ~*(v10 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = (*(v4 + 48) + 16 * v11);
      *v12 = v20;
      v12[1] = v18;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v29;
        goto LABEL_26;
      }

      v15 = *(v2 + 56 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v8 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1D60062A8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, unint64_t *a5)
{
  v6 = v5;
  v7 = *v5;
  sub_1D60075F0(0, a2, a3, a4, a5);
  result = sub_1D7263CBC();
  v9 = result;
  if (*(v7 + 16))
  {
    v28 = v5;
    v10 = 0;
    v11 = 1 << *(v7 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v7 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(*(v7 + 48) + 8 * (v17 | (v10 << 6)));
      result = sub_1D72636FC();
      v21 = -1 << *(v9 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v9 + 48) + 8 * v16) = v20;
      ++*(v9 + 16);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v14)
      {

        v6 = v28;
        goto LABEL_26;
      }

      v19 = *(v7 + 56 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v6 = v9;
  }

  return result;
}

uint64_t sub_1D60064B0()
{
  v1 = v0;
  v33 = sub_1D7258DBC();
  v2 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33, v3);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  sub_1D6007A94();
  v7 = sub_1D7263CBC();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v0;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v2 + 16;
    v32 = v2;
    v15 = v7 + 56;
    v29 = (v2 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_1D5D51EB4(&qword_1EDF18A30, 255, MEMORY[0x1E6969C28]);
      result = sub_1D7261E7C();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v7;
  }

  return result;
}

uint64_t sub_1D60067C4()
{
  v1 = v0;
  v2 = *v0;
  sub_1D6007D30(0, &qword_1EC87FAE8, sub_1D5E2A08C);
  result = sub_1D7263CBC();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v16 = *(v2 + 48) + 16 * (v13 | (v5 << 6));
      v17 = *v16;
      v18 = *(v16 + 8);
      sub_1D7264A0C();
      if (v18)
      {
        v19 = qword_1D728D788[v17];
      }

      else
      {
        MEMORY[0x1DA6FC0B0](2);
        v19 = v17;
      }

      MEMORY[0x1DA6FC0B0](v19);
      result = sub_1D7264A5C();
      v20 = -1 << *(v4 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v10 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v10 + 8 * v22);
          if (v26 != -1)
          {
            v11 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_31;
      }

      v11 = __clz(__rbit64((-1 << v21) & ~*(v10 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = *(v4 + 48) + 16 * v11;
      *v12 = v17;
      *(v12 + 8) = v18;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_29;
      }

      v15 = *(v2 + 56 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v8 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

LABEL_29:
    *v1 = v4;
  }

  return result;
}

void sub_1D6006A30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [*(*(a3 + OBJC_IVAR____TtC8NewsFeed31FormatPuzzleEmbedViewController_puzzleEmbedViewController) + OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_webContentViewController) messageHandlerManager];
  v5 = sub_1D726203C();

  [v4 addMessageHandler:a1 name:v5];
  swift_unknownObjectRelease();
}

void sub_1D6006C00()
{
  v1 = sub_1D725895C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC8NewsFeed31FormatPuzzleEmbedViewController_onReuse;
  sub_1D6007BE4(0, &qword_1EDF3B450, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69D8770]);
  *(v0 + v6) = [objc_allocWithZone(v7) init];
  v8 = (v0 + OBJC_IVAR____TtC8NewsFeed31FormatPuzzleEmbedViewController_layoutIdentifier);
  *v8 = 0;
  v8[1] = 0;
  v9 = OBJC_IVAR____TtC8NewsFeed31FormatPuzzleEmbedViewController_layoutGuide;
  *(v0 + v9) = [objc_allocWithZone(MEMORY[0x1E69CE188]) initWithBounds:0.0 contentFrame:0.0 contentSafeAreaFrame:0.0 systemSafeAreaFrame:{0.0, 0.0, 0.0, 0.0, 0.0, 0, 0, 0, 0, 0, 0, 0, 0}];
  swift_weakInit();
  v10 = (v0 + OBJC_IVAR____TtC8NewsFeed31FormatPuzzleEmbedViewController_onKeyboardWillShow);
  *v10 = 0;
  v10[1] = 0;
  v11 = (v0 + OBJC_IVAR____TtC8NewsFeed31FormatPuzzleEmbedViewController_onKeyboardWillHide);
  *v11 = 0;
  v11[1] = 0;
  *(v0 + OBJC_IVAR____TtC8NewsFeed31FormatPuzzleEmbedViewController_teaserInteractionEvents) = MEMORY[0x1E69E7CD0];
  v12 = (v0 + OBJC_IVAR____TtC8NewsFeed31FormatPuzzleEmbedViewController_currentAccessoryView);
  *v12 = 0;
  v12[1] = 0;
  v13 = (v0 + OBJC_IVAR____TtC8NewsFeed31FormatPuzzleEmbedViewController_identifier);
  sub_1D725894C();
  v14 = sub_1D725893C();
  v16 = v15;
  (*(v2 + 8))(v5, v1);
  *v13 = v14;
  v13[1] = v16;
  sub_1D726402C();
  __break(1u);
}

id _s8NewsFeed31FormatPuzzleEmbedViewControllerC06puzzleE16DidReceiveAction6actionySo07SWEmbedK0_p_tF_0(void *a1)
{
  if (qword_1EDF3B838 != -1)
  {
    swift_once();
  }

  v2 = sub_1D725C42C();
  __swift_project_value_buffer(v2, qword_1EDFFCFA8);
  swift_unknownObjectRetain();
  v3 = sub_1D725C3FC();
  v4 = sub_1D7262EDC();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v16 = v6;
    *v5 = 136315138;
    v7 = [a1 description];
    v8 = sub_1D726207C();
    v10 = v9;

    v11 = sub_1D5BC5100(v8, v10, &v16);

    *(v5 + 4) = v11;
    _os_log_impl(&dword_1D5B42000, v3, v4, "FormatPuzzleEmbedViewController: Received embed action: type= %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x1DA6FD500](v6, -1, -1);
    MEMORY[0x1DA6FD500](v5, -1, -1);
  }

  result = [a1 canHandle];
  if (result)
  {
    v13 = sub_1D725C3FC();
    v14 = sub_1D7262EDC();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1D5B42000, v13, v14, "FormatPuzzleEmbedViewController: Action is handled internally...", v15, 2u);
      MEMORY[0x1DA6FD500](v15, -1, -1);
    }

    return [a1 perform];
  }

  return result;
}

void sub_1D6007078(const char *a1)
{
  if (qword_1EDF3B838 != -1)
  {
    swift_once();
  }

  v2 = sub_1D725C42C();
  __swift_project_value_buffer(v2, qword_1EDFFCFA8);
  oslog = sub_1D725C3FC();
  v3 = sub_1D7262EDC();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D5B42000, oslog, v3, a1, v4, 2u);
    MEMORY[0x1DA6FD500](v4, -1, -1);
  }
}

unint64_t sub_1D60071DC()
{
  result = qword_1EDF29D10;
  if (!qword_1EDF29D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF29D10);
  }

  return result;
}

void sub_1D6007230()
{
  if (!qword_1EDF042E8)
  {
    type metadata accessor for WebEmbedDatastoreCacheKey();
    sub_1D5D51EB4(qword_1EDF23AD0, 255, type metadata accessor for WebEmbedDatastoreCacheKey);
    v0 = sub_1D7263CEC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF042E8);
    }
  }
}

void sub_1D60072C8()
{
  if (!qword_1EDF042F0)
  {
    type metadata accessor for WebEmbedDataVisualization();
    sub_1D5D51EB4(&qword_1EDF0BB88, 255, type metadata accessor for WebEmbedDataVisualization);
    v0 = sub_1D7263CEC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF042F0);
    }
  }
}

unint64_t sub_1D6007360()
{
  result = qword_1EC8821F8;
  if (!qword_1EC8821F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8821F8);
  }

  return result;
}

unint64_t sub_1D60073B4()
{
  result = qword_1EC882210;
  if (!qword_1EC882210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882210);
  }

  return result;
}

unint64_t sub_1D6007408()
{
  result = qword_1EDF13040;
  if (!qword_1EDF13040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF13040);
  }

  return result;
}

void sub_1D600745C()
{
  if (!qword_1EC882220)
  {
    type metadata accessor for UIUserInterfaceIdiom(255);
    sub_1D5D51EB4(&qword_1EC880048, 255, type metadata accessor for UIUserInterfaceIdiom);
    v0 = sub_1D7263CEC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC882220);
    }
  }
}

unint64_t sub_1D60074F4()
{
  result = qword_1EDF20850;
  if (!qword_1EDF20850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF20850);
  }

  return result;
}

unint64_t sub_1D6007548()
{
  result = qword_1EC882238;
  if (!qword_1EC882238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882238);
  }

  return result;
}

unint64_t sub_1D600759C()
{
  result = qword_1EC885810;
  if (!qword_1EC885810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885810);
  }

  return result;
}

void sub_1D60075F0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, unint64_t *a5)
{
  if (!*a2)
  {
    sub_1D5B5A498(255, a3);
    sub_1D5E2A738(a5, a3);
    v8 = sub_1D7263CEC();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1D600767C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 0xCu)
  {
  }

  return result;
}

uint64_t sub_1D6007694(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 0xCu)
  {
  }

  return result;
}

unint64_t sub_1D60076AC()
{
  result = qword_1EC895900;
  if (!qword_1EC895900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC895900);
  }

  return result;
}

uint64_t sub_1D6007700(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 4u)
  {
  }

  return result;
}

uint64_t sub_1D6007718(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 4u)
  {
  }

  return result;
}

unint64_t sub_1D6007730()
{
  result = qword_1EC882258;
  if (!qword_1EC882258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882258);
  }

  return result;
}

unint64_t sub_1D6007784()
{
  result = qword_1EC882268;
  if (!qword_1EC882268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882268);
  }

  return result;
}

void sub_1D60077D8()
{
  if (!qword_1EDF44860)
  {
    type metadata accessor for FormatVersionRequirement(255);
    v0 = sub_1D726393C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF44860);
    }
  }
}

uint64_t sub_1D6007830(uint64_t result, unint64_t a2, unsigned __int8 a3)
{
  if (a3 >> 6 == 1)
  {
    return sub_1D5CBA110(result, a2);
  }

  if (!(a3 >> 6))
  {
  }

  return result;
}

uint64_t sub_1D6007850(uint64_t result, unint64_t a2, unsigned __int8 a3)
{
  if (a3 >> 6 == 1)
  {
    return sub_1D5CBA0FC(result, a2);
  }

  if (!(a3 >> 6))
  {
  }

  return result;
}

uint64_t sub_1D6007870(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1D5D50E70(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1D60078CC()
{
  if (!qword_1EC882270)
  {
    type metadata accessor for FormatDerivedDataResultOptionReference(255);
    sub_1D5D51EB4(&qword_1EC882278, 255, type metadata accessor for FormatDerivedDataResultOptionReference);
    v0 = sub_1D7263CEC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC882270);
    }
  }
}

unint64_t sub_1D6007964()
{
  result = qword_1EC8956E0;
  if (!qword_1EC8956E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8956E0);
  }

  return result;
}

unint64_t sub_1D60079B8()
{
  result = qword_1EC882290;
  if (!qword_1EC882290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882290);
  }

  return result;
}

uint64_t sub_1D6007A14(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v9 = *(v8 + 16);
  *v12 = a1;
  *&v12[1] = a2;
  *&v12[2] = a3;
  *&v12[3] = a4;
  *v11 = a5;
  *&v11[1] = a6;
  *&v11[2] = a7;
  *&v11[3] = a8;
  return v9(v12, v11);
}

void sub_1D6007A94()
{
  if (!qword_1EDF04338)
  {
    sub_1D7258DBC();
    sub_1D5D51EB4(&qword_1EDF18A30, 255, MEMORY[0x1E6969C28]);
    v0 = sub_1D7263CEC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF04338);
    }
  }
}

unint64_t sub_1D6007B2C()
{
  result = qword_1EC8822B0;
  if (!qword_1EC8822B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8822B0);
  }

  return result;
}

void sub_1D6007BE4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1D6007C88()
{
  result = qword_1EDF12990;
  if (!qword_1EDF12990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF12990);
  }

  return result;
}

unint64_t sub_1D6007CDC()
{
  result = qword_1EDF0F6E0;
  if (!qword_1EDF0F6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0F6E0);
  }

  return result;
}

void sub_1D6007D30(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = sub_1D7263CEC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t FormatGroupNodeStyle.identifier.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FormatGroupNodeStyle.identifier.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t FormatGroupNodeStyle.class.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t FormatGroupNodeStyle.selectors.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 48) = a1;
}

uint64_t FormatGroupNodeStyle.cornerRadius.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  v3 = *(v1 + 80);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 88);
  *(a1 + 16) = v4;
  return sub_1D5ED34B0(v2, v3, v4);
}

uint64_t FormatGroupNodeStyle.shadow.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 128);
  v4 = *(v1 + 160);
  v10 = *(v1 + 144);
  v3 = v10;
  v11 = v4;
  v12 = *(v1 + 176);
  v6 = *(v1 + 112);
  v9[0] = *(v1 + 96);
  v5 = v9[0];
  v9[1] = v6;
  v9[2] = v2;
  *(a1 + 80) = v12;
  *(a1 + 32) = v2;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *a1 = v5;
  *(a1 + 16) = v6;
  return sub_1D60080F4(v9, v8, &qword_1EDF33718, &type metadata for FormatShadow);
}

uint64_t FormatGroupNodeStyle.visualEffect.getter@<X0>(uint64_t a1@<X8>)
{
  v20 = *(v1 + 344);
  v2 = *(v1 + 232);
  v3 = *(v1 + 248);
  v4 = *(v1 + 200);
  v17[0] = *(v1 + 184);
  v17[1] = v4;
  v17[2] = *(v1 + 216);
  v17[3] = v2;
  v5 = *(v1 + 296);
  v6 = *(v1 + 328);
  v18 = *(v1 + 312);
  v19 = v6;
  v8 = *(v1 + 264);
  v7 = *(v1 + 280);
  v17[4] = v3;
  v17[5] = v8;
  v9 = *(v1 + 264);
  v10 = *(v1 + 280);
  v11 = *(v1 + 296);
  v17[6] = v7;
  v17[7] = v11;
  v12 = *(v1 + 328);
  *(a1 + 128) = v18;
  *(a1 + 144) = v12;
  *(a1 + 160) = *(v1 + 344);
  *(a1 + 64) = *(v1 + 248);
  *(a1 + 80) = v9;
  v13 = *(v1 + 232);
  *(a1 + 96) = v10;
  *(a1 + 112) = v5;
  v14 = *(v1 + 200);
  *a1 = *(v1 + 184);
  *(a1 + 16) = v14;
  *(a1 + 32) = *(v1 + 216);
  *(a1 + 48) = v13;
  return sub_1D60080F4(v17, v16, &qword_1EDF2D860, &type metadata for FormatVisualEffect);
}

uint64_t sub_1D60080F4(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  sub_1D5B49D58(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

BOOL FormatGroupNodeStyle.isMaterialGroup.getter()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 248);
  v3 = *(v0 + 200);
  v9[0] = *(v0 + 184);
  v9[1] = v3;
  v9[2] = *(v0 + 216);
  v9[3] = v1;
  v4 = *(v0 + 296);
  v5 = *(v0 + 328);
  v9[8] = *(v0 + 312);
  v9[9] = v5;
  v6 = *(v0 + 264);
  v7 = *(v0 + 280);
  v9[4] = v2;
  v9[5] = v6;
  v10 = *(v0 + 344);
  v9[6] = v7;
  v9[7] = v4;
  return sub_1D60081E0(v9) == 0;
}

uint64_t sub_1D60081E0(uint64_t a1)
{
  v1 = *(a1 + 10);
  if (v1 > 0x80000000)
  {
    return -v1;
  }

  else
  {
    return 0;
  }
}

uint64_t FormatGroupNodeStyle.__allocating_init(identifier:class:selectors:alpha:borders:cornerRadius:shadow:clipsToBounds:ignoresSmartInvertColors:visualEffect:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t *a8, uint64_t a9, __int16 a10, uint64_t a11)
{
  v17 = swift_allocObject();
  v18 = *a6;
  v19 = *a8;
  v29 = a8[1];
  LOBYTE(a8) = *(a8 + 16);
  swift_beginAccess();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  *(v17 + 32) = a3;
  *(v17 + 40) = a4;
  swift_beginAccess();
  v20 = *(a11 + 128);
  v21 = *(a11 + 144);
  v22 = *(a11 + 96);
  *(v17 + 296) = *(a11 + 112);
  *(v17 + 312) = v20;
  *(v17 + 328) = v21;
  v23 = *(a11 + 64);
  *(v17 + 264) = *(a11 + 80);
  *(v17 + 280) = v22;
  v24 = *(a9 + 48);
  *(v17 + 128) = *(a9 + 32);
  *(v17 + 144) = v24;
  *(v17 + 160) = *(a9 + 64);
  v25 = *(a9 + 16);
  *(v17 + 96) = *a9;
  *(v17 + 112) = v25;
  v26 = *(a11 + 32);
  *(v17 + 232) = *(a11 + 48);
  *(v17 + 248) = v23;
  v27 = *(a11 + 16);
  *(v17 + 184) = *a11;
  *(v17 + 200) = v27;
  *(v17 + 48) = a5;
  *(v17 + 56) = v18;
  *(v17 + 64) = a7;
  *(v17 + 72) = v19;
  *(v17 + 80) = v29;
  *(v17 + 88) = a8;
  *(v17 + 176) = *(a9 + 80);
  *(v17 + 177) = a10;
  *(v17 + 344) = *(a11 + 160);
  *(v17 + 216) = v26;
  return v17;
}

uint64_t FormatGroupNodeStyle.init(identifier:class:selectors:alpha:borders:cornerRadius:shadow:clipsToBounds:ignoresSmartInvertColors:visualEffect:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t *a8, uint64_t a9, __int16 a10, uint64_t a11)
{
  v16 = *a6;
  v17 = a8[1];
  v28 = *a8;
  v18 = *(a8 + 16);
  swift_beginAccess();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  *(v11 + 32) = a3;
  *(v11 + 40) = a4;
  swift_beginAccess();
  v19 = *(a11 + 128);
  v20 = *(a11 + 144);
  v21 = *(a11 + 96);
  *(v11 + 296) = *(a11 + 112);
  *(v11 + 312) = v19;
  *(v11 + 328) = v20;
  v22 = *(a11 + 64);
  *(v11 + 264) = *(a11 + 80);
  *(v11 + 280) = v21;
  v23 = *(a9 + 48);
  *(v11 + 128) = *(a9 + 32);
  *(v11 + 144) = v23;
  *(v11 + 160) = *(a9 + 64);
  v24 = *(a9 + 16);
  *(v11 + 96) = *a9;
  *(v11 + 112) = v24;
  v25 = *(a11 + 32);
  *(v11 + 232) = *(a11 + 48);
  *(v11 + 248) = v22;
  v26 = *(a11 + 16);
  *(v11 + 184) = *a11;
  *(v11 + 200) = v26;
  *(v11 + 48) = a5;
  *(v11 + 56) = v16;
  *(v11 + 64) = a7;
  *(v11 + 72) = v28;
  *(v11 + 80) = v17;
  *(v11 + 88) = v18;
  *(v11 + 176) = *(a9 + 80);
  *(v11 + 177) = a10;
  *(v11 + 344) = *(a11 + 160);
  *(v11 + 216) = v25;
  return v11;
}

uint64_t sub_1D6008478()
{
  sub_1D5B49D58(0, &unk_1EDF19900, &type metadata for FormatDisplay.Check, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7270C10;
  v2 = swift_allocObject();
  *(v2 + 16) = *(v0 + 56);
  *(inited + 32) = v2;
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D7279960;
  v4 = swift_allocObject();
  *(v4 + 16) = *(v0 + 64);
  *(v3 + 32) = v4 | 0x2000000000000000;
  v5 = swift_allocObject();
  v6 = *(v0 + 144);
  v30 = *(v0 + 128);
  v31 = v6;
  v32 = *(v0 + 160);
  v7 = v32;
  v33 = *(v0 + 176);
  v8 = v33;
  v10 = *(v0 + 112);
  v29[0] = *(v0 + 96);
  v9 = v29[0];
  v29[1] = v10;
  *(v5 + 48) = v30;
  *(v5 + 64) = v6;
  *(v5 + 80) = v7;
  *(v5 + 96) = v8;
  *(v5 + 16) = v9;
  *(v5 + 32) = v10;
  *(v3 + 40) = v5 | 0x4000000000000000;
  v11 = swift_allocObject();
  v12 = *(v0 + 296);
  v13 = *(v0 + 328);
  v35 = *(v0 + 312);
  v36 = v13;
  v37 = *(v0 + 344);
  v14 = *(v0 + 232);
  v15 = *(v0 + 264);
  v16 = *(v0 + 280);
  v34[4] = *(v0 + 248);
  v34[5] = v15;
  v17 = *(v0 + 264);
  v18 = *(v0 + 296);
  v34[6] = *(v0 + 280);
  v34[7] = v18;
  v19 = *(v0 + 200);
  v34[0] = *(v0 + 184);
  v34[1] = v19;
  v34[2] = *(v0 + 216);
  v34[3] = v14;
  v20 = *(v0 + 328);
  *(v11 + 144) = v35;
  *(v11 + 160) = v20;
  *(v11 + 176) = *(v0 + 344);
  *(v11 + 80) = *(v0 + 248);
  *(v11 + 96) = v17;
  v21 = *(v0 + 232);
  *(v11 + 112) = v16;
  *(v11 + 128) = v12;
  v22 = *(v0 + 200);
  *(v11 + 16) = *(v0 + 184);
  *(v11 + 32) = v22;
  *(v11 + 48) = *(v0 + 216);
  *(v11 + 64) = v21;
  *(v3 + 48) = v11 | 0x5000000000000000;
  v23 = swift_allocObject();
  *(v23 + 16) = *(v0 + 177);
  *(v3 + 56) = v23 | 0x6000000000000000;
  v24 = swift_allocObject();
  *(v24 + 16) = *(v0 + 178);
  *(v3 + 64) = v24 | 0x7000000000000000;
  v25 = swift_allocObject();
  *(v25 + 16) = v3;
  *(inited + 40) = v25 | 0x8000000000000000;

  sub_1D60080F4(v29, v28, &qword_1EDF33718, &type metadata for FormatShadow);
  sub_1D60080F4(v34, v28, &qword_1EDF2D860, &type metadata for FormatVisualEffect);
  v26 = sub_1D6DFB554(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  return v26 & 1;
}

uint64_t sub_1D6008734(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = v1[2];
  v5 = v1[3];
  v6 = v2[4];
  v7 = v2[5];
  swift_beginAccess();
  v170 = v2;
  v8 = v2[6];
  swift_beginAccess();
  v171 = a1;
  v9 = *(a1 + 48);
  v201 = MEMORY[0x1E69E7CC8];
  v10 = *(v8 + 16);
  v11 = *(v9 + 16);
  if (__OFADD__(v10, v11))
  {
    goto LABEL_110;
  }

  v167 = v6;
  v169 = v4;
  sub_1D60100E8();
  v168 = v5;

  v166 = v7;

  sub_1D7261DAC();
  v184 = sub_1D698F4BC(0, v10, 0, MEMORY[0x1E69E7CC0]);
  v12 = *(v8 + 16);
  v172 = v9;
  if (!v12)
  {
    goto LABEL_20;
  }

  v13 = 0;
  v14 = (v8 + 32);
  v15 = v12 - 1;
  while (1)
  {
    v16 = v8;
    memcpy(__dst, v14, 0x13AuLL);
    v17 = __dst[0];
    sub_1D60101A0(__dst, v219);
    sub_1D60101A0(__dst, v219);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v186[0] = v201;
    v19 = sub_1D6D8CB60(v17, *(&v17 + 1));
    v21 = v201[2];
    v22 = (v20 & 1) == 0;
    v23 = __OFADD__(v21, v22);
    v24 = v21 + v22;
    if (v23)
    {
      __break(1u);
LABEL_102:
      __break(1u);
LABEL_103:
      __break(1u);
LABEL_104:
      __break(1u);
LABEL_105:
      __break(1u);
LABEL_106:
      __break(1u);
LABEL_107:
      __break(1u);
LABEL_108:
      __break(1u);
LABEL_109:
      __break(1u);
LABEL_110:
      __break(1u);
LABEL_111:
      result = sub_1D726493C();
      __break(1u);
      return result;
    }

    v25 = v20;
    if (v201[3] < v24)
    {
      sub_1D6D6AEE0(v24, isUniquelyReferenced_nonNull_native);
      v19 = sub_1D6D8CB60(v17, *(&v17 + 1));
      if ((v25 & 1) != (v26 & 1))
      {
        goto LABEL_111;
      }

LABEL_9:
      v8 = v16;
      if (v25)
      {
        goto LABEL_10;
      }

      goto LABEL_12;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_9;
    }

    v29 = v19;
    sub_1D6D80E20();
    v19 = v29;
    v8 = v16;
    if (v25)
    {
LABEL_10:
      v27 = *&v186[0];
      v28 = (*(*&v186[0] + 56) + 320 * v19);
      memcpy(v219, v28, 0x13AuLL);
      memcpy(v28, __dst, 0x13AuLL);
      sub_1D60101D8(v219);
      goto LABEL_14;
    }

LABEL_12:
    v27 = *&v186[0];
    *(*&v186[0] + 8 * (v19 >> 6) + 64) |= 1 << v19;
    *(v27[6] + 16 * v19) = v17;
    memcpy((v27[7] + 320 * v19), __dst, 0x13AuLL);
    v30 = v27[2];
    v23 = __OFADD__(v30, 1);
    v31 = v30 + 1;
    if (v23)
    {
      goto LABEL_106;
    }

    v27[2] = v31;

LABEL_14:
    v201 = v27;

    sub_1D60101D8(__dst);
    v33 = *(v184 + 2);
    v32 = *(v184 + 3);
    if (v33 >= v32 >> 1)
    {
      v184 = sub_1D698F4BC((v32 > 1), v33 + 1, 1, v184);
    }

    *(v184 + 2) = v33 + 1;
    *&v184[16 * v33 + 32] = v17;
    if (v15 == v13)
    {
      break;
    }

    ++v13;
    v14 += 320;
    if (v13 >= *(v8 + 16))
    {
      goto LABEL_102;
    }
  }

  v9 = v172;
LABEL_20:
  v34 = sub_1D698F4BC(0, v11, 0, MEMORY[0x1E69E7CC0]);
  v35 = *(v9 + 16);
  if (!v35)
  {
    goto LABEL_67;
  }

  v36 = 0;
  v182 = v35 - 1;
  v37 = 32;
  while (2)
  {
    memcpy(__dst, (v9 + v37), 0x13AuLL);
    v38 = __dst[0];
    v39 = v201;
    if (!v201[2])
    {
      sub_1D60101A0(__dst, v219);
LABEL_44:
      sub_1D60101A0(__dst, v219);
      v67 = swift_isUniquelyReferenced_nonNull_native();
      *&v186[0] = v39;
      v68 = sub_1D6D8CB60(v38, *(&v38 + 1));
      v70 = v39[2];
      v71 = (v69 & 1) == 0;
      v23 = __OFADD__(v70, v71);
      v72 = v70 + v71;
      if (v23)
      {
        goto LABEL_105;
      }

      v73 = v69;
      if (v39[3] >= v72)
      {
        if ((v67 & 1) == 0)
        {
          v86 = v68;
          sub_1D6D80E20();
          v68 = v86;
          if (v73)
          {
            goto LABEL_50;
          }

          goto LABEL_55;
        }
      }

      else
      {
        sub_1D6D6AEE0(v72, v67);
        v68 = sub_1D6D8CB60(v38, *(&v38 + 1));
        if ((v73 & 1) != (v74 & 1))
        {
          goto LABEL_111;
        }
      }

      if (v73)
      {
LABEL_50:
        v75 = *&v186[0];
        v76 = (*(*&v186[0] + 56) + 320 * v68);
        memcpy(v219, v76, 0x13AuLL);
        memcpy(v76, __dst, 0x13AuLL);
        sub_1D60101D8(v219);
LABEL_57:
        v201 = v75;
        v89 = *(v34 + 2);
        v90 = *(v34 + 3);

        if (v89 >= v90 >> 1)
        {
          v34 = sub_1D698F4BC((v90 > 1), v89 + 1, 1, v34);
        }

        sub_1D60101D8(__dst);
        *(v34 + 2) = v89 + 1;
        *&v34[16 * v89 + 32] = v38;
        goto LABEL_64;
      }

LABEL_55:
      v75 = *&v186[0];
      *(*&v186[0] + 8 * (v68 >> 6) + 64) |= 1 << v68;
      *(v75[6] + 16 * v68) = v38;
      memcpy((v75[7] + 320 * v68), __dst, 0x13AuLL);
      v87 = v75[2];
      v23 = __OFADD__(v87, 1);
      v88 = v87 + 1;
      if (v23)
      {
        goto LABEL_107;
      }

      v75[2] = v88;

      goto LABEL_57;
    }

    sub_1D60101A0(__dst, v219);
    v40 = sub_1D6D8CB60(v38, *(&v38 + 1));
    if ((v41 & 1) == 0)
    {
      goto LABEL_44;
    }

    memcpy(v219, (v39[7] + 320 * v40), 0x13AuLL);
    v42 = *&v219[1];
    if (!*&v219[1])
    {
      v42 = *&__dst[1];
    }

    v43 = *(&v219[1] + 1);
    v44 = *&v219[2];
    v45 = BYTE8(v219[2]);
    v177 = *(&v219[1] + 1);
    v180 = *&v219[2];
    v178 = BYTE8(v219[2]);
    if (BYTE8(v219[2]) >= 0xFEu)
    {
      v43 = *(&__dst[1] + 1);
      v180 = *&__dst[2];
      v178 = BYTE8(__dst[2]);
      sub_1D5ED34B0(*(&__dst[1] + 1), *&__dst[2], SBYTE8(__dst[2]));
    }

    v176 = v42;
    v46 = &v219[3];
    if (LOBYTE(v219[8]) == 254)
    {
      v46 = &__dst[3];
      sub_1D60080F4(&__dst[3], v186, &qword_1EDF33718, &type metadata for FormatShadow);
    }

    v47 = v46[3];
    v215 = v46[2];
    v216 = v47;
    v217 = v46[4];
    v218 = *(v46 + 80);
    v48 = v46[1];
    v49 = *(&v219[8] + 1);
    v213 = *v46;
    v214 = v48;
    if (!*(&v219[8] + 1))
    {
    }

    v175 = v49;
    if (LOBYTE(v219[9]) == 2)
    {
      v50 = __dst[9];
    }

    else
    {
      v50 = v219[9];
    }

    v51 = BYTE1(v219[9]);
    if (BYTE1(v219[9]) == 2)
    {
      v51 = BYTE1(__dst[9]);
    }

    v173 = v51;
    v174 = v50;
    v210 = *(&v219[17] + 8);
    v211 = *(&v219[18] + 8);
    v212 = WORD4(v219[19]);
    v206 = *(&v219[13] + 8);
    v207 = *(&v219[14] + 8);
    v209 = *(&v219[16] + 8);
    v208 = *(&v219[15] + 8);
    v202 = *(&v219[9] + 8);
    v203 = *(&v219[10] + 8);
    v205 = *(&v219[12] + 8);
    v204 = *(&v219[11] + 8);
    v52 = &v219[9] + 8;
    if (sub_1D60081E0(&v202) == 1)
    {
      v52 = &__dst[9] + 8;
      sub_1D60080F4(&__dst[9] + 8, v186, &qword_1EDF2D860, &type metadata for FormatVisualEffect);
    }

    v53 = *(v52 + 9);
    v195 = *(v52 + 8);
    v196 = v53;
    v197 = *(v52 + 80);
    v54 = *(v52 + 5);
    v191 = *(v52 + 4);
    v192 = v54;
    v55 = *(v52 + 7);
    v193 = *(v52 + 6);
    v194 = v55;
    v56 = *(v52 + 1);
    v187 = *v52;
    v188 = v56;
    v57 = *(v52 + 3);
    v189 = *(v52 + 2);
    v190 = v57;
    v58 = v219[0];
    *&v199[39] = v215;
    *&v199[55] = v216;
    *&v199[71] = v217;
    v199[87] = v218;
    *&v199[7] = v213;
    *&v199[23] = v214;
    *&v198[6] = v187;
    *&v198[22] = v56;
    *&v198[38] = v189;
    *&v198[102] = v193;
    *&v198[86] = v192;
    *&v198[70] = v191;
    *&v198[54] = v57;
    *&v198[166] = v197;
    *&v198[150] = v196;
    *&v198[134] = v195;
    *&v198[118] = v194;
    sub_1D60101A0(v219, v186);

    sub_1D5ED34B0(v177, v44, v45);
    sub_1D60080F4(&v219[3], v186, &qword_1EDF33718, &type metadata for FormatShadow);

    sub_1D60080F4(&v219[9] + 8, v186, &qword_1EDF2D860, &type metadata for FormatVisualEffect);
    v59 = swift_isUniquelyReferenced_nonNull_native();
    v200 = v39;
    v60 = sub_1D6D8CB60(v58, *(&v58 + 1));
    v62 = v39[2];
    v63 = (v61 & 1) == 0;
    v23 = __OFADD__(v62, v63);
    v64 = v62 + v63;
    if (v23)
    {
      goto LABEL_108;
    }

    v65 = v61;
    if (v39[3] >= v64)
    {
      if (v59)
      {
        goto LABEL_52;
      }

      v91 = v60;
      sub_1D6D80E20();
      v60 = v91;
      if ((v65 & 1) == 0)
      {
        goto LABEL_61;
      }

LABEL_53:
      v77 = v200;
      v78 = (v200[7] + 320 * v60);
      memcpy(v186, v78, 0x13AuLL);
      v79 = *&v199[48];
      *(v78 + 73) = *&v199[32];
      *(v78 + 89) = v79;
      *(v78 + 105) = *&v199[64];
      v80 = *&v199[16];
      *(v78 + 41) = *v199;
      *(v78 + 57) = v80;
      v81 = *&v198[48];
      *(v78 + 178) = *&v198[32];
      v82 = *v198;
      *(v78 + 162) = *&v198[16];
      *(v78 + 146) = v82;
      v83 = *&v198[112];
      *(v78 + 242) = *&v198[96];
      v84 = *&v198[64];
      *(v78 + 226) = *&v198[80];
      *(v78 + 210) = v84;
      *(v78 + 194) = v81;
      v85 = *&v198[128];
      *(v78 + 290) = *&v198[144];
      *v78 = v58;
      *(v78 + 2) = v176;
      *(v78 + 3) = v43;
      *(v78 + 4) = v180;
      *(v78 + 40) = v178;
      *(v78 + 121) = *&v199[80];
      *(v78 + 17) = v175;
      *(v78 + 144) = v174;
      *(v78 + 145) = v173;
      *(v78 + 306) = *&v198[160];
      *(v78 + 258) = v83;
      *(v78 + 274) = v85;
      sub_1D60101D8(v186);
    }

    else
    {
      sub_1D6D6AEE0(v64, v59);
      v60 = sub_1D6D8CB60(v58, *(&v58 + 1));
      if ((v65 & 1) != (v66 & 1))
      {
        goto LABEL_111;
      }

LABEL_52:
      if (v65)
      {
        goto LABEL_53;
      }

LABEL_61:
      v77 = v200;
      v200[(v60 >> 6) + 8] |= 1 << v60;
      *(v77[6] + 16 * v60) = v58;
      v92 = v77[7] + 320 * v60;
      v93 = *v199;
      *(v92 + 57) = *&v199[16];
      *(v92 + 41) = v93;
      v94 = *&v199[48];
      *(v92 + 105) = *&v199[64];
      v95 = *&v199[32];
      *(v92 + 89) = v94;
      *(v92 + 73) = v95;
      v96 = *&v198[112];
      *(v92 + 242) = *&v198[96];
      v97 = *&v198[64];
      *(v92 + 226) = *&v198[80];
      *(v92 + 210) = v97;
      v98 = *&v198[32];
      *(v92 + 194) = *&v198[48];
      v99 = *&v198[144];
      *(v92 + 274) = *&v198[128];
      *(v92 + 290) = v99;
      *(v92 + 258) = v96;
      v100 = *&v198[16];
      *(v92 + 146) = *v198;
      *(v92 + 162) = v100;
      *v92 = v58;
      *(v92 + 16) = v176;
      *(v92 + 24) = v43;
      *(v92 + 32) = v180;
      *(v92 + 40) = v178;
      *(v92 + 121) = *&v199[80];
      *(v92 + 136) = v175;
      *(v92 + 144) = v174;
      *(v92 + 145) = v173;
      *(v92 + 306) = *&v198[160];
      *(v92 + 178) = v98;
      v101 = v77[2];
      v23 = __OFADD__(v101, 1);
      v102 = v101 + 1;
      if (v23)
      {
        goto LABEL_109;
      }

      v77[2] = v102;
    }

    sub_1D60101D8(v219);
    sub_1D60101D8(__dst);
    v201 = v77;
    v9 = v172;
LABEL_64:
    if (v182 == v36)
    {
      goto LABEL_67;
    }

    ++v36;
    v37 += 320;
    if (v36 < *(v9 + 16))
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_67:

  *&__dst[0] = v34;

  sub_1D6985DAC(v103);
  v104 = *&__dst[0];
  v105 = *(*&__dst[0] + 16);
  if (v105)
  {
    v106 = 0;
    v183 = MEMORY[0x1E69E7CC0];
LABEL_69:
    v107 = v34;
    v108 = v201;
    v109 = (v104 + 40 + 16 * v106);
    v110 = v106;
    while (v110 < v105)
    {
      v106 = v110 + 1;
      if (__OFADD__(v110, 1))
      {
        goto LABEL_104;
      }

      if (v108[2])
      {
        v112 = *(v109 - 1);
        v111 = *v109;

        v113 = sub_1D6D8CB60(v112, v111);
        if (v114)
        {
          memcpy(__dst, (v108[7] + 320 * v113), 0x13AuLL);
          sub_1D60101A0(__dst, v219);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v183 = sub_1D698E380(0, *(v183 + 2) + 1, 1, v183);
          }

          v34 = v107;
          v116 = *(v183 + 2);
          v115 = *(v183 + 3);
          if (v116 >= v115 >> 1)
          {
            v183 = sub_1D698E380((v115 > 1), v116 + 1, 1, v183);
          }

          *(v183 + 2) = v116 + 1;
          memcpy(&v183[320 * v116 + 32], __dst, 0x13AuLL);
          if (v106 != v105)
          {
            goto LABEL_69;
          }

          goto LABEL_84;
        }
      }

      ++v110;
      v109 += 2;
      if (v106 == v105)
      {
        goto LABEL_84;
      }
    }

    goto LABEL_103;
  }

  v183 = MEMORY[0x1E69E7CC0];
LABEL_84:

  v117 = v170;
  v118 = v170[7];
  if (!v118)
  {
    v118 = *(v171 + 56);

    v117 = v170;
  }

  v119 = v117[8];
  if (!v119)
  {

    v117 = v170;
  }

  v120 = v117[9];
  v121 = v117[10];
  v122 = *(v117 + 88);
  v123 = v120;
  v179 = v119;
  v181 = v121;
  v124 = *(v117 + 88);
  if (v122 >= 0xFE)
  {
    v123 = *(v171 + 72);
    v121 = *(v171 + 80);
    v124 = *(v171 + 88);
    sub_1D5ED34B0(v123, v121, v124);
    v117 = v170;
  }

  LOBYTE(v192) = *(v117 + 176);
  v125 = *(v117 + 9);
  v189 = *(v117 + 8);
  v190 = v125;
  v191 = *(v117 + 10);
  v126 = *(v117 + 7);
  v187 = *(v117 + 6);
  v188 = v126;
  v185 = v118;
  if (v192 == 254)
  {
    v127 = *(v171 + 144);
    __dst[2] = *(v171 + 128);
    __dst[3] = v127;
    __dst[4] = *(v171 + 160);
    LOBYTE(__dst[5]) = *(v171 + 176);
    v128 = *(v171 + 112);
    __dst[0] = *(v171 + 96);
    __dst[1] = v128;
    sub_1D60080F4(__dst, v219, &qword_1EDF33718, &type metadata for FormatShadow);
    v117 = v170;
    v215 = __dst[2];
    v216 = __dst[3];
    v217 = __dst[4];
    v218 = __dst[5];
    v129 = __dst[0];
    v130 = __dst[1];
  }

  else
  {
    v131 = *(v117 + 9);
    v215 = *(v117 + 8);
    v216 = v131;
    v217 = *(v117 + 10);
    v218 = *(v117 + 176);
    v129 = *(v117 + 6);
    v130 = *(v117 + 7);
  }

  v213 = v129;
  v214 = v130;
  v132 = *(v117 + 177);
  if (v132 == 2)
  {
    LOBYTE(v132) = *(v171 + 177);
  }

  v133 = *(v117 + 178);
  if (v133 == 2)
  {
    LOBYTE(v133) = *(v171 + 178);
  }

  v134 = *(v117 + 37);
  v135 = *(v117 + 41);
  v219[8] = *(v117 + 39);
  v219[9] = v135;
  LOWORD(v219[10]) = *(v117 + 172);
  v136 = *(v117 + 29);
  v137 = *(v117 + 33);
  v138 = *(v117 + 35);
  v219[4] = *(v117 + 31);
  v219[5] = v137;
  v140 = *(v117 + 33);
  v139 = *(v117 + 35);
  v219[7] = *(v117 + 37);
  v219[6] = v139;
  v141 = *(v117 + 25);
  v219[0] = *(v117 + 23);
  v219[1] = v141;
  v142 = *(v117 + 27);
  v219[3] = v136;
  v219[2] = v142;
  v143 = *(v117 + 41);
  __dst[8] = v219[8];
  __dst[9] = v143;
  LOWORD(__dst[10]) = *(v117 + 172);
  __dst[4] = *(v117 + 31);
  __dst[5] = v140;
  v144 = *(v117 + 29);
  __dst[7] = v134;
  __dst[6] = v138;
  v145 = *(v117 + 25);
  __dst[0] = *(v117 + 23);
  __dst[1] = v145;
  v146 = *(v117 + 27);
  __dst[3] = v144;
  __dst[2] = v146;
  if (sub_1D60081E0(__dst) == 1)
  {
    v147 = *(v171 + 232);
    v148 = *(v171 + 248);
    v149 = *(v171 + 200);
    v202 = *(v171 + 184);
    v203 = v149;
    v150 = *(v171 + 216);
    v205 = v147;
    v204 = v150;
    v151 = *(v171 + 296);
    v152 = *(v171 + 328);
    v210 = *(v171 + 312);
    v211 = v152;
    v153 = *(v171 + 264);
    v154 = *(v171 + 280);
    v206 = v148;
    v207 = v153;
    v212 = *(v171 + 344);
    v209 = v151;
    v208 = v154;
    sub_1D60080F4(&v202, v186, &qword_1EDF2D860, &type metadata for FormatVisualEffect);
    v186[8] = v210;
    v186[9] = v211;
    LOWORD(v186[10]) = v212;
    v186[4] = v206;
    v186[5] = v207;
    v186[6] = v208;
    v186[7] = v209;
    v186[0] = v202;
    v186[1] = v203;
    v155 = v205;
    v156 = v204;
  }

  else
  {
    v186[8] = v219[8];
    v186[9] = v219[9];
    LOWORD(v186[10]) = v219[10];
    v186[4] = v219[4];
    v186[5] = v219[5];
    v186[6] = v219[6];
    v186[7] = v219[7];
    v186[0] = v219[0];
    v186[1] = v219[1];
    v155 = v219[3];
    v156 = v219[2];
  }

  v186[2] = v156;
  v186[3] = v155;
  v157 = swift_allocObject();
  swift_beginAccess();
  *(v157 + 16) = v169;
  *(v157 + 24) = v168;
  *(v157 + 32) = v167;
  *(v157 + 40) = v166;
  swift_beginAccess();
  v158 = v186[9];
  *(v157 + 312) = v186[8];
  *(v157 + 328) = v158;
  v159 = v186[7];
  *(v157 + 280) = v186[6];
  *(v157 + 296) = v159;
  v160 = v186[4];
  *(v157 + 264) = v186[5];
  v161 = v216;
  *(v157 + 128) = v215;
  *(v157 + 144) = v161;
  *(v157 + 160) = v217;
  v162 = v214;
  *(v157 + 96) = v213;
  *(v157 + 112) = v162;
  *(v157 + 248) = v160;
  v163 = v186[2];
  *(v157 + 232) = v186[3];
  *(v157 + 216) = v163;
  v164 = v186[0];
  *(v157 + 200) = v186[1];
  *(v157 + 48) = v183;
  *(v157 + 56) = v185;
  *(v157 + 64) = v179;
  *(v157 + 72) = v123;
  *(v157 + 80) = v121;
  *(v157 + 88) = v124;
  *(v157 + 176) = v218;
  *(v157 + 177) = v132;
  *(v157 + 178) = v133;
  *(v157 + 344) = v186[10];
  *(v157 + 184) = v164;

  sub_1D5ED34B0(v120, v181, v122);
  sub_1D60080F4(&v187, &v202, &qword_1EDF33718, &type metadata for FormatShadow);
  sub_1D60080F4(v219, &v202, &qword_1EDF2D860, &type metadata for FormatVisualEffect);
  return v157;
}

uint64_t sub_1D60097FC(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v1 + 48);
  v5 = *(v4 + 16);

  v6 = MEMORY[0x1E69E7CC0];
  v7 = sub_1D698E380(0, v5, 0, MEMORY[0x1E69E7CC0]);
  v37 = sub_1D698E210(0, v5, 0, v6);
  v40 = *(v4 + 16);
  if (v40)
  {
    v36 = v2;
    v8 = 0;
    v38 = v4;
    v39 = v4 + 32;
    while (1)
    {
      memcpy(__dst, (v39 + 320 * v8), 0x13AuLL);
      v9 = __dst[0];
      v10 = __dst[1];
      sub_1D60101A0(__dst, __src);
      if (qword_1EDF2AB18 != -1)
      {
        swift_once();
      }

      __src[0] = v9;
      __src[1] = v10;

      v11 = sub_1D6844380(__src);

      v13 = *(v11 + 16);
      if (v13)
      {
        v14 = 0;
        v15 = 32;
        while (1)
        {
          if (v14 >= *(v11 + 16))
          {
            __break(1u);
            goto LABEL_37;
          }

          v17 = *(v11 + v15 + 16);
          v16 = *(v11 + v15 + 32);
          v18 = *(v11 + v15);
          v45 = *(v11 + v15 + 48);
          v44[1] = v17;
          v44[2] = v16;
          v44[0] = v18;
          v19 = v17;
          sub_1D5E3B610(v44, __src);
          if (sub_1D68444DC(a1))
          {
            break;
          }

          ++v14;
          result = sub_1D5E3B66C(v44);
          v15 += 56;
          if (v13 == v14)
          {
            goto LABEL_10;
          }
        }

        sub_1D5E3B66C(v44);
        if (v19 <= 1)
        {
          v25 = *(v7 + 2);
          v24 = *(v7 + 3);
          v20 = v38;
          if (v25 >= v24 >> 1)
          {
            v7 = sub_1D698E380((v24 > 1), v25 + 1, 1, v7);
          }

          *(v7 + 2) = v25 + 1;
          result = memcpy(&v7[320 * v25 + 32], __dst, 0x13AuLL);
        }

        else
        {
          memcpy(__src, __dst, 0x13AuLL);
          sub_1D60101A0(__dst, v41);
          v20 = v38;
          v22 = v37[2];
          v21 = v37[3];
          if (v22 >= v21 >> 1)
          {
            v37 = sub_1D698E210((v21 > 1), v22 + 1, 1, v37);
          }

          sub_1D60101D8(__dst);
          v37[2] = v22 + 1;
          v23 = &v37[41 * v22];
          result = memcpy(v23 + 4, __src, 0x140uLL);
          v23[44] = v19;
        }
      }

      else
      {
LABEL_10:
        sub_1D60101D8(__dst);

        v20 = v38;
      }

      if (++v8 == v40)
      {
        break;
      }

      if (v8 >= *(v20 + 16))
      {
        goto LABEL_38;
      }
    }

    v2 = v36;
  }

  else
  {
  }

  sub_1D6010208();
  v26 = sub_1D72626AC();

  v27 = *(v26 + 16);
  if (v27)
  {
    v28 = v27 - 1;
    for (i = 32; ; i += 328)
    {
      memcpy(__src, (v26 + i), sizeof(__src));
      sub_1D5D251EC(__src, __dst, sub_1D6010208);
      v31 = *(v7 + 2);
      v30 = *(v7 + 3);
      if (v31 >= v30 >> 1)
      {
        v7 = sub_1D698E380((v30 > 1), v31 + 1, 1, v7);
      }

      *(v7 + 2) = v31 + 1;
      memcpy(&v7[320 * v31 + 32], __src, 0x13AuLL);
      if (!v28)
      {
        break;
      }

      --v28;
    }
  }

  v32 = *(v7 + 2);

  if (v32)
  {
    v33 = 0;
    v34 = v7 + 32;
    while (v33 < *(v7 + 2))
    {
      memcpy(__src, v34, 0x13AuLL);
      ++v33;
      memcpy(__dst, __src, 0x13AuLL);
      swift_allocObject();
      sub_1D60101A0(__src, v41);
      v35 = sub_1D60102B8(v2, __dst);

      v34 += 320;
      v2 = v35;
      if (v32 == v33)
      {
        goto LABEL_35;
      }
    }

LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
  }

  else
  {
    v35 = v2;
LABEL_35:

    return v35;
  }

  return result;
}

uint64_t sub_1D6009CB8()
{
  v1 = v0;
  swift_beginAccess();
  v3 = v0[2];
  v2 = v0[3];
  v4 = v0[5];
  v44 = v0[4];
  swift_beginAccess();
  v6 = v0[6];
  v5 = v0[7];
  v7 = v0[8];
  v43 = v4;
  v41 = v5;

  if (v7)
  {
    v40 = sub_1D600CADC(v7);
  }

  else
  {
    v40 = 0;
  }

  v42 = v6;
  v45 = v2;
  v8 = v1[9];
  v9 = v1[10];
  v10 = *(v1 + 88);
  v11 = *(v1 + 9);
  v60 = *(v1 + 8);
  v61 = v11;
  v62 = *(v1 + 10);
  v63 = *(v1 + 176);
  v12 = v63;
  v13 = *(v1 + 7);
  v58 = *(v1 + 6);
  v59 = v13;
  if (v63 == 254)
  {
    sub_1D5ED34B0(v8, v9, v10);
    v14 = v58;
    v15 = DWORD2(v58);
    LODWORD(v16) = HIDWORD(v58);
    v17 = *(&v59 + 1);
    v18 = v59;
    v36 = v60;
    v38 = v61;
    v39 = v62;
  }

  else
  {
    v39 = v62;
    v37 = *(&v60 + 1);
    v17 = *(&v59 + 1);
    v18 = v59;
    v15 = DWORD2(v58);
    v14 = v58;
    v38 = v61;
    v46[0] = v60;
    v16 = &type metadata for FormatShadow;
    sub_1D60080F4(&v58, &v47, &qword_1EDF33718, &type metadata for FormatShadow);
    sub_1D60080F4(&v58, &v47, &qword_1EDF33718, &type metadata for FormatShadow);
    sub_1D5ED34B0(v8, v9, v10);
    sub_1D6E0CAE0(&v47);

    sub_1D6011068(&v58, &qword_1EDF33718, &type metadata for FormatShadow);
    *&v19 = v47;
    *(&v19 + 1) = v37;
    v36 = v19;
  }

  v20 = *(v1 + 29);
  v21 = *(v1 + 31);
  v22 = *(v1 + 25);
  v47 = *(v1 + 23);
  v48 = v22;
  v49 = *(v1 + 27);
  v50 = v20;
  v23 = *(v1 + 37);
  v24 = *(v1 + 41);
  v55 = *(v1 + 39);
  v56 = v24;
  v25 = *(v1 + 33);
  v26 = *(v1 + 35);
  v51 = v21;
  v52 = v25;
  v27 = *(v1 + 177);
  v57 = *(v1 + 172);
  v53 = v26;
  v54 = v23;
  v28 = swift_allocObject();
  swift_beginAccess();
  *(v28 + 16) = v3;
  *(v28 + 24) = v45;
  *(v28 + 32) = v44;
  *(v28 + 40) = v43;
  swift_beginAccess();
  *(v28 + 48) = v42;
  *(v28 + 56) = v41;
  *(v28 + 64) = v40;
  *(v28 + 72) = v8;
  *(v28 + 80) = v9;
  *(v28 + 88) = v10;
  *(v28 + 96) = v14;
  *(v28 + 104) = v15;
  *(v28 + 108) = v16;
  *(v28 + 112) = v18;
  *(v28 + 120) = v17;
  *(v28 + 128) = v36;
  *(v28 + 144) = v38;
  *(v28 + 160) = v39;
  *(v28 + 176) = v12;
  *(v28 + 177) = v27;
  v29 = v55;
  v30 = v56;
  v31 = v53;
  *(v28 + 296) = v54;
  *(v28 + 312) = v29;
  *(v28 + 328) = v30;
  *(v28 + 344) = v57;
  v32 = v49;
  *(v28 + 232) = v50;
  v33 = v52;
  *(v28 + 248) = v51;
  *(v28 + 264) = v33;
  *(v28 + 280) = v31;
  v34 = v48;
  *(v28 + 184) = v47;
  *(v28 + 200) = v34;
  *(v28 + 216) = v32;
  sub_1D60080F4(&v47, v46, &qword_1EDF2D860, &type metadata for FormatVisualEffect);
  return v28;
}

uint64_t sub_1D600A03C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v292 = MEMORY[0x1E69E7CC0];
    sub_1D69978D0(0, v1, 0);
    v4 = (a1 + 32);
    v2 = v292;
    do
    {
      v6 = *v4++;
      v5 = v6;
      v7 = v6 >> 60;
      if ((v6 >> 60) <= 8)
      {
        if ((v7 - 4) >= 5 && v7 >= 3)
        {
          v21 = *((v5 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
          v20 = *((v5 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
          v22 = v21 >> 60;
          if ((v21 >> 60) > 8)
          {
            v23 = v21 & 0xFFFFFFFFFFFFFFFLL;
            if (v22 == 9)
            {
              v29 = *((v21 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
              v30 = *((v21 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
              v31 = *(v23 + 32);
              v32 = *(v23 + 40);
              v33 = swift_allocObject();
              *(v33 + 16) = v29;
              *(v33 + 24) = v30;
              *(v33 + 32) = v31;
              *(v33 + 40) = v32;
              v34 = v33 | 0x7000000000000000;

              v35 = v29;
              v27 = v34;
              sub_1D5F58038(v35, v30, v31, v32);
            }

            else
            {
              v25 = *((v21 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
              v24 = *((v21 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
              if (v22 == 10)
              {
                v26 = swift_allocObject();
                *(v26 + 16) = v25;
                *(v26 + 24) = v24;
                v27 = v26 | 0x4000000000000000;
              }

              else
              {
                v36 = swift_allocObject();
                *(v36 + 16) = v25;
                *(v36 + 24) = v24;
                v27 = v36 | 0x8000000000000000;
              }
            }

LABEL_31:
            v37 = v20 >> 60;
            if ((v20 >> 60) > 8)
            {
              if (v37 == 9)
              {
                v49 = *((v20 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
                v50 = *((v20 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                v51 = v27;
                v52 = *((v20 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
                v53 = *((v20 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
                v54 = swift_allocObject();
                *(v54 + 16) = v49;
                *(v54 + 24) = v50;
                *(v54 + 32) = v52;
                *(v54 + 40) = v53;
                v20 = v54 | 0x7000000000000000;
                v55 = v52;
                v27 = v51;
                sub_1D5F58038(v49, v50, v55, v53);
              }

              else
              {
                v39 = *((v20 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
                v38 = *((v20 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                if (v37 == 10)
                {
                  v40 = swift_allocObject();
                  *(v40 + 16) = v39;
                  *(v40 + 24) = v38;
                  v20 = v40 | 0x4000000000000000;
                }

                else
                {
                  v56 = swift_allocObject();
                  *(v56 + 16) = v39;
                  *(v56 + 24) = v38;
                  v20 = v56 | 0x8000000000000000;
                }
              }

              goto LABEL_47;
            }

            if ((v37 - 4) < 5 || v37 < 3)
            {
LABEL_47:

LABEL_48:
              v57 = swift_allocObject();
              *(v57 + 16) = v27;
              *(v57 + 24) = v20;

              v5 = v57 | 0x3000000000000000;
              goto LABEL_15;
            }

            v43 = *((v20 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
            v42 = *((v20 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
            v44 = v43 >> 60;
            if ((v43 >> 60) > 8)
            {
              if (v44 == 9)
              {
                v67 = *((v20 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                v68 = *((v43 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
                v69 = *((v43 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                v70 = *((v43 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
                v274 = v27;
                v71 = *((v43 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
                v72 = swift_allocObject();
                *(v72 + 16) = v68;
                *(v72 + 24) = v69;
                *(v72 + 32) = v70;
                *(v72 + 40) = v71;
                v73 = v72 | 0x7000000000000000;

                v74 = v69;
                v42 = v67;
                v48 = v73;
                v75 = v71;
                v27 = v274;
                sub_1D5F58038(v68, v74, v70, v75);
              }

              else
              {
                v281 = *((v20 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                v46 = *((v43 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
                v45 = *((v43 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                if (v44 == 10)
                {
                  v47 = swift_allocObject();
                  *(v47 + 16) = v46;
                  *(v47 + 24) = v45;
                  v48 = v47 | 0x4000000000000000;
                }

                else
                {
                  v82 = swift_allocObject();
                  *(v82 + 16) = v46;
                  *(v82 + 24) = v45;
                  v48 = v82 | 0x8000000000000000;
                }

                v42 = v281;
              }

LABEL_67:
              v83 = v42 >> 60;
              if ((v42 >> 60) <= 8)
              {
                if ((v83 - 4) < 5 || v83 < 3)
                {
                  goto LABEL_96;
                }

                v268 = v48;
                v89 = *((v42 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
                v90 = *((v42 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                v91 = v89 >> 60;
                if ((v89 >> 60) <= 8)
                {
                  if ((v91 - 4) >= 5 && v91 >= 3)
                  {
                    v230 = v89 & 0xFFFFFFFFFFFFFFFLL;
                    v279 = v27;
                    v231 = *(v230 + 16);
                    v232 = *(v230 + 24);
                    v233 = swift_allocObject();
                    v290 = v231;
                    v291 = v232;

                    sub_1D6E0CAE0(&v289);
                    sub_1D6E0CAE0(&v288);
                    v27 = v279;

                    v234 = v288;
                    *(v233 + 16) = v289;
                    *(v233 + 24) = v234;
                    v266 = v233 | 0x3000000000000000;
                  }

                  else
                  {

                    swift_retain_n();
                    v266 = v89;
                  }
                }

                else
                {
                  v92 = v89 & 0xFFFFFFFFFFFFFFFLL;
                  if (v91 == 9)
                  {
                    v148 = *(v92 + 16);
                    v149 = *(v92 + 24);
                    v277 = v27;
                    v150 = *(v92 + 32);
                    v151 = *(v92 + 40);
                    v152 = swift_allocObject();
                    *(v152 + 16) = v148;
                    *(v152 + 24) = v149;
                    *(v152 + 32) = v150;
                    *(v152 + 40) = v151;
                    v266 = v152 | 0x7000000000000000;

                    v153 = v150;
                    v27 = v277;
                    sub_1D5F58038(v148, v149, v153, v151);
                  }

                  else
                  {
                    v94 = *(v92 + 16);
                    v93 = *(v92 + 24);
                    if (v91 == 10)
                    {
                      v95 = swift_allocObject();
                      *(v95 + 16) = v94;
                      *(v95 + 24) = v93;
                      v96 = v95 | 0x4000000000000000;
                    }

                    else
                    {
                      v154 = swift_allocObject();
                      *(v154 + 16) = v94;
                      *(v154 + 24) = v93;
                      v96 = v154 | 0x8000000000000000;
                    }

                    v266 = v96;
                  }
                }

                v155 = v90 >> 60;
                if ((v90 >> 60) <= 8)
                {
                  if ((v155 - 4) >= 5 && v155 >= 3)
                  {
                    v225 = v90 & 0xFFFFFFFFFFFFFFFLL;
                    v278 = v27;
                    v226 = *((v90 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
                    v227 = *(v225 + 24);
                    v228 = swift_allocObject();
                    v290 = v226;
                    v291 = v227;

                    sub_1D6E0CAE0(&v289);
                    sub_1D6E0CAE0(&v288);
                    v27 = v278;

                    v229 = v288;
                    *(v228 + 16) = v289;
                    *(v228 + 24) = v229;

                    v90 = v228 | 0x3000000000000000;
                  }

                  else
                  {
                  }
                }

                else
                {
                  v156 = v90 & 0xFFFFFFFFFFFFFFFLL;
                  if (v155 == 9)
                  {
                    v161 = *((v90 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
                    v160 = *(v156 + 24);
                    v162 = v27;
                    v163 = *(v156 + 32);
                    v164 = *(v156 + 40);
                    v165 = swift_allocObject();
                    *(v165 + 16) = v161;
                    *(v165 + 24) = v160;
                    *(v165 + 32) = v163;
                    *(v165 + 40) = v164;
                    v166 = v163;
                    v27 = v162;
                    sub_1D5F58038(v161, v160, v166, v164);

                    v90 = v165 | 0x7000000000000000;
                  }

                  else
                  {
                    v158 = *((v90 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
                    v157 = *(v156 + 24);
                    if (v155 == 10)
                    {
                      v159 = swift_allocObject();
                      *(v159 + 16) = v158;
                      *(v159 + 24) = v157;

                      v90 = v159 | 0x4000000000000000;
                    }

                    else
                    {
                      v167 = swift_allocObject();
                      *(v167 + 16) = v158;
                      *(v167 + 24) = v157;

                      v90 = v167 | 0x8000000000000000;
                    }
                  }
                }

                v168 = swift_allocObject();
                *(v168 + 16) = v266;
                *(v168 + 24) = v90;

                v42 = v168 | 0x3000000000000000;
                v48 = v268;
              }

              else
              {
                v84 = v42 & 0xFFFFFFFFFFFFFFFLL;
                if (v83 == 9)
                {
                  v97 = *((v42 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
                  v98 = *((v42 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                  v269 = v48;
                  v99 = v27;
                  v100 = *(v84 + 32);
                  v101 = *(v84 + 40);
                  v102 = swift_allocObject();
                  *(v102 + 16) = v97;
                  *(v102 + 24) = v98;
                  *(v102 + 32) = v100;
                  *(v102 + 40) = v101;
                  v103 = v98;
                  v42 = v102 | 0x7000000000000000;
                  v104 = v100;
                  v27 = v99;
                  v48 = v269;
                  sub_1D5F58038(v97, v103, v104, v101);
                }

                else
                {
                  v86 = *((v42 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
                  v85 = *(v84 + 24);
                  if (v83 == 10)
                  {
                    v87 = swift_allocObject();
                    *(v87 + 16) = v86;
                    *(v87 + 24) = v85;
                    v88 = v87 | 0x4000000000000000;
                  }

                  else
                  {
                    v126 = swift_allocObject();
                    *(v126 + 16) = v86;
                    *(v126 + 24) = v85;
                    v88 = v126 | 0x8000000000000000;
                  }

                  v42 = v88;
                }

LABEL_96:
              }

              v127 = swift_allocObject();
              *(v127 + 16) = v48;
              *(v127 + 24) = v42;

              v20 = v127 | 0x3000000000000000;
              goto LABEL_48;
            }

            if ((v44 - 4) < 5 || v44 < 3)
            {

              swift_retain_n();
              v48 = v43;
              goto LABEL_67;
            }

            v275 = v27;
            v283 = *((v20 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
            v130 = *((v43 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
            v131 = *((v43 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
            v132 = v130 >> 60;
            if ((v130 >> 60) <= 8)
            {
              if ((v132 - 4) >= 5 && v132 >= 3)
              {
                v240 = *((v130 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                v273 = *((v130 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
                v241 = v42;
                v242 = swift_allocObject();
                v290 = v273;
                v291 = v240;

                sub_1D6E0CAE0(&v289);
                sub_1D6E0CAE0(&v288);

                v243 = v288;
                *(v242 + 16) = v289;
                *(v242 + 24) = v243;
                v271 = v242 | 0x3000000000000000;
                v42 = v241;
              }

              else
              {

                swift_retain_n();

                v271 = v130;
              }
            }

            else
            {
              v133 = v130 & 0xFFFFFFFFFFFFFFFLL;
              if (v132 == 9)
              {
                v173 = *((v130 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
                v174 = *((v130 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                v264 = *(v133 + 24);
                v175 = *(v133 + 32);
                v176 = *(v133 + 40);
                v177 = swift_allocObject();
                *(v177 + 16) = v173;
                *(v177 + 24) = v174;
                *(v177 + 32) = v175;
                *(v177 + 40) = v176;
                v271 = v177 | 0x7000000000000000;

                v178 = v173;
                v42 = v283;
                sub_1D5F58038(v178, v264, v175, v176);
              }

              else
              {
                v135 = *((v130 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
                v134 = *((v130 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                if (v132 == 10)
                {
                  v136 = swift_allocObject();
                  *(v136 + 16) = v135;
                  *(v136 + 24) = v134;
                  v137 = v136 | 0x4000000000000000;
                }

                else
                {
                  v194 = swift_allocObject();
                  *(v194 + 16) = v135;
                  *(v194 + 24) = v134;
                  v137 = v194 | 0x8000000000000000;
                }

                v271 = v137;

                v42 = v283;
              }
            }

            v195 = v131 >> 60;
            if ((v131 >> 60) <= 8)
            {
              if ((v195 - 4) >= 5 && v195 >= 3)
              {
                v251 = v131 & 0xFFFFFFFFFFFFFFFLL;
                v252 = *((v131 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
                v253 = *(v251 + 24);
                v254 = swift_allocObject();
                v290 = v252;
                v291 = v253;

                sub_1D6E0CAE0(&v289);
                sub_1D6E0CAE0(&v288);

                v255 = v288;
                *(v254 + 16) = v289;
                *(v254 + 24) = v255;

                v131 = v254 | 0x3000000000000000;
                goto LABEL_186;
              }
            }

            else
            {
              v196 = v131 & 0xFFFFFFFFFFFFFFFLL;
              if (v195 == 9)
              {
                v265 = *((v131 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
                v201 = v42;
                v202 = *((v131 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                v203 = *((v131 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
                v204 = *(v196 + 40);
                v205 = swift_allocObject();
                *(v205 + 16) = v265;
                *(v205 + 24) = v202;
                *(v205 + 32) = v203;
                *(v205 + 40) = v204;
                v206 = v202;
                v42 = v201;
                sub_1D5F58038(v265, v206, v203, v204);

                v131 = v205 | 0x7000000000000000;
              }

              else
              {
                v198 = *((v131 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
                v197 = *(v196 + 24);
                if (v195 == 10)
                {
                  v199 = swift_allocObject();
                  *(v199 + 16) = v198;
                  *(v199 + 24) = v197;

                  v131 = v199 | 0x4000000000000000;
                }

                else
                {
                  v221 = swift_allocObject();
                  *(v221 + 16) = v198;
                  *(v221 + 24) = v197;

                  v131 = v221 | 0x8000000000000000;
                }

LABEL_186:
                v42 = v283;
              }
            }

            v222 = swift_allocObject();
            *(v222 + 16) = v271;
            *(v222 + 24) = v131;
            v48 = v222 | 0x3000000000000000;
            v27 = v275;
            goto LABEL_67;
          }

          if ((v22 - 4) < 5 || v22 < 3)
          {

            swift_retain_n();

            v27 = v21;
            goto LABEL_31;
          }

          v58 = *((v21 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
          v287 = *((v21 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
          v59 = v287 >> 60;
          if ((v287 >> 60) <= 8)
          {
            if ((v59 - 4) >= 5 && v59 >= 3)
            {
              v284 = *((v21 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
              v138 = *((v287 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
              v286 = *((v287 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
              v139 = v286 >> 60;
              if ((v286 >> 60) <= 8)
              {
                if ((v139 - 4) >= 5 && v139 >= 3)
                {
                  v244 = *((v286 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
                  v245 = *((v286 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                  v280 = swift_allocObject();
                  v290 = v244;
                  v291 = v245;

                  sub_1D6E0CAE0(&v289);
                  sub_1D6E0CAE0(&v288);

                  v246 = v288;
                  *(v280 + 16) = v289;
                  *(v280 + 24) = v246;
                  v276 = v280 | 0x3000000000000000;
                }

                else
                {

                  swift_retain_n();

                  v276 = v286;
                }
              }

              else if (v139 == 9)
              {
                v179 = *((v286 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
                v180 = *((v286 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                v261 = *((v286 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
                v272 = *((v287 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                v181 = *((v286 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
                v262 = v181;
                v182 = swift_allocObject();
                *(v182 + 16) = v179;
                *(v182 + 24) = v180;
                *(v182 + 32) = v261;
                *(v182 + 40) = v181;
                v138 = v272;
                v276 = v182 | 0x7000000000000000;

                sub_1D5F58038(v179, v180, v261, v262);
              }

              else
              {
                v140 = *((v286 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
                v141 = *((v286 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                if (v139 == 10)
                {
                  v142 = swift_allocObject();
                  *(v142 + 16) = v140;
                  *(v142 + 24) = v141;
                  v143 = v142 | 0x4000000000000000;
                }

                else
                {
                  v207 = swift_allocObject();
                  *(v207 + 16) = v140;
                  *(v207 + 24) = v141;
                  v143 = v207 | 0x8000000000000000;
                }

                v276 = v143;
              }

              v208 = v138 >> 60;
              if ((v138 >> 60) <= 8)
              {
                if ((v208 - 4) >= 5 && v208 >= 3)
                {
                  v256 = *((v138 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
                  v257 = *((v138 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                  v258 = swift_allocObject();
                  v290 = v256;
                  v291 = v257;

                  sub_1D6E0CAE0(&v289);
                  sub_1D6E0CAE0(&v288);

                  v58 = v284;

                  v259 = v288;
                  *(v258 + 16) = v289;
                  *(v258 + 24) = v259;

                  v138 = v258 | 0x3000000000000000;
                }

                else
                {
                }
              }

              else if (v208 == 9)
              {
                v214 = *((v138 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
                v213 = *((v138 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                v215 = *((v138 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
                v216 = *((v138 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
                v217 = swift_allocObject();
                *(v217 + 16) = v214;
                *(v217 + 24) = v213;
                *(v217 + 32) = v215;
                *(v217 + 40) = v216;
                v218 = v215;
                v58 = v284;
                sub_1D5F58038(v214, v213, v218, v216);

                v138 = v217 | 0x7000000000000000;
              }

              else
              {
                v210 = *((v138 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
                v209 = *((v138 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                if (v208 == 10)
                {
                  v211 = swift_allocObject();
                  *(v211 + 16) = v210;
                  *(v211 + 24) = v209;

                  v138 = v211 | 0x4000000000000000;
                }

                else
                {
                  v223 = swift_allocObject();
                  *(v223 + 16) = v210;
                  *(v223 + 24) = v209;

                  v138 = v223 | 0x8000000000000000;
                }

                v58 = v284;
              }

              v224 = swift_allocObject();
              *(v224 + 16) = v276;
              *(v224 + 24) = v138;
              v285 = v224 | 0x3000000000000000;
            }

            else
            {

              swift_retain_n();

              v285 = v287;
            }
          }

          else if (v59 == 9)
          {
            v282 = *((v21 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
            v76 = *((v287 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
            v77 = *((v287 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
            v78 = *((v287 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
            v79 = *((v287 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
            v80 = swift_allocObject();
            *(v80 + 16) = v76;
            *(v80 + 24) = v77;
            *(v80 + 32) = v78;
            *(v80 + 40) = v79;
            v285 = v80 | 0x7000000000000000;

            v81 = v77;
            v58 = v282;
            sub_1D5F58038(v76, v81, v78, v79);
          }

          else
          {
            v60 = *((v21 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
            v62 = *((v287 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
            v61 = *((v287 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
            if (v59 == 10)
            {
              v63 = swift_allocObject();
              *(v63 + 16) = v62;
              *(v63 + 24) = v61;
              v64 = v63 | 0x4000000000000000;
            }

            else
            {
              v105 = swift_allocObject();
              *(v105 + 16) = v62;
              *(v105 + 24) = v61;
              v64 = v105 | 0x8000000000000000;
            }

            v285 = v64;

            v58 = v60;
          }

          v106 = v58 >> 60;
          if ((v58 >> 60) <= 8)
          {
            if ((v106 - 4) < 5 || v106 < 3)
            {
              goto LABEL_101;
            }

            v112 = *((v58 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
            v113 = *((v58 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
            v114 = v112 >> 60;
            if ((v112 >> 60) <= 8)
            {
              if ((v114 - 4) >= 5 && v114 >= 3)
              {
                v235 = v112 & 0xFFFFFFFFFFFFFFFLL;
                v236 = *(v235 + 16);
                v237 = *(v235 + 24);
                v238 = swift_allocObject();
                v290 = v236;
                v291 = v237;

                sub_1D6E0CAE0(&v289);
                sub_1D6E0CAE0(&v288);

                v239 = v288;
                *(v238 + 16) = v289;
                *(v238 + 24) = v239;
                v270 = v238 | 0x3000000000000000;
              }

              else
              {

                swift_retain_n();
                v270 = v112;
              }
            }

            else
            {
              v115 = v112 & 0xFFFFFFFFFFFFFFFLL;
              if (v114 == 9)
              {
                v169 = *(v115 + 16);
                v263 = *(v115 + 24);
                v170 = *(v115 + 32);
                v171 = *(v115 + 40);
                v172 = swift_allocObject();
                *(v172 + 16) = v169;
                *(v172 + 24) = v263;
                *(v172 + 32) = v170;
                *(v172 + 40) = v171;
                v270 = v172 | 0x7000000000000000;

                sub_1D5F58038(v169, v263, v170, v171);
              }

              else
              {
                v117 = *(v115 + 16);
                v116 = *(v115 + 24);
                if (v114 == 10)
                {
                  v118 = swift_allocObject();
                  *(v118 + 16) = v117;
                  *(v118 + 24) = v116;
                  v119 = v118 | 0x4000000000000000;
                }

                else
                {
                  v183 = swift_allocObject();
                  *(v183 + 16) = v117;
                  *(v183 + 24) = v116;
                  v119 = v183 | 0x8000000000000000;
                }

                v270 = v119;
              }
            }

            v184 = v113 >> 60;
            if ((v113 >> 60) <= 8)
            {
              if ((v184 - 4) >= 5 && v184 >= 3)
              {
                v247 = *((v113 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
                v248 = *((v113 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                v249 = swift_allocObject();
                v290 = v247;
                v291 = v248;

                sub_1D6E0CAE0(&v289);
                sub_1D6E0CAE0(&v288);

                v250 = v288;
                *(v249 + 16) = v289;
                *(v249 + 24) = v250;

                v113 = v249 | 0x3000000000000000;
              }

              else
              {
              }
            }

            else
            {
              v185 = v113 & 0xFFFFFFFFFFFFFFFLL;
              if (v184 == 9)
              {
                v190 = *((v113 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                v267 = *(v185 + 16);
                v191 = *(v185 + 32);
                v192 = *(v185 + 40);
                v193 = swift_allocObject();
                *(v193 + 16) = v267;
                *(v193 + 24) = v190;
                *(v193 + 32) = v191;
                *(v193 + 40) = v192;
                sub_1D5F58038(v267, v190, v191, v192);

                v113 = v193 | 0x7000000000000000;
              }

              else
              {
                v187 = *((v113 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
                v186 = *((v113 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                if (v184 == 10)
                {
                  v188 = swift_allocObject();
                  *(v188 + 16) = v187;
                  *(v188 + 24) = v186;

                  v113 = v188 | 0x4000000000000000;
                }

                else
                {
                  v219 = swift_allocObject();
                  *(v219 + 16) = v187;
                  *(v219 + 24) = v186;

                  v113 = v219 | 0x8000000000000000;
                }
              }
            }

            v220 = swift_allocObject();
            *(v220 + 16) = v270;
            *(v220 + 24) = v113;

            v58 = v220 | 0x3000000000000000;
          }

          else
          {
            v107 = v58 & 0xFFFFFFFFFFFFFFFLL;
            if (v106 == 9)
            {
              v120 = *((v58 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
              v121 = *((v58 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
              v122 = *((v58 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
              v123 = *(v107 + 40);
              v124 = swift_allocObject();
              *(v124 + 16) = v120;
              *(v124 + 24) = v121;
              *(v124 + 32) = v122;
              *(v124 + 40) = v123;
              v125 = v122;
              v58 = v124 | 0x7000000000000000;
              sub_1D5F58038(v120, v121, v125, v123);
            }

            else
            {
              v109 = *((v58 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
              v108 = *((v58 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
              if (v106 == 10)
              {
                v110 = swift_allocObject();
                *(v110 + 16) = v109;
                *(v110 + 24) = v108;
                v58 = v110 | 0x4000000000000000;
              }

              else
              {
                v128 = swift_allocObject();
                *(v128 + 16) = v109;
                *(v128 + 24) = v108;
                v58 = v128 | 0x8000000000000000;
              }
            }

LABEL_101:
          }

          v129 = swift_allocObject();
          *(v129 + 16) = v285;
          *(v129 + 24) = v58;
          v27 = v129 | 0x3000000000000000;
          goto LABEL_31;
        }
      }

      else if (v7 == 9)
      {
        v12 = *((v5 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v13 = *((v5 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        v14 = *((v5 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v15 = *((v5 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
        v16 = swift_allocObject();
        *(v16 + 16) = v12;
        *(v16 + 24) = v13;
        *(v16 + 32) = v14;
        *(v16 + 40) = v15;
        v5 = v16 | 0x7000000000000000;
        sub_1D5F58038(v12, v13, v14, v15);
      }

      else
      {
        v9 = *((v5 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v8 = *((v5 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        if (v7 == 10)
        {
          v10 = swift_allocObject();
          *(v10 + 16) = v9;
          *(v10 + 24) = v8;
          v5 = v10 | 0x4000000000000000;
        }

        else
        {
          v17 = swift_allocObject();
          *(v17 + 16) = v9;
          *(v17 + 24) = v8;
          v5 = v17 | 0x8000000000000000;
        }
      }

LABEL_15:
      v292 = v2;
      v19 = *(v2 + 16);
      v18 = *(v2 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_1D69978D0((v18 > 1), v19 + 1, 1);
        v2 = v292;
      }

      *(v2 + 16) = v19 + 1;
      *(v2 + 8 * v19 + 32) = v5;
      --v1;
    }

    while (v1);
  }

  return v2;
}