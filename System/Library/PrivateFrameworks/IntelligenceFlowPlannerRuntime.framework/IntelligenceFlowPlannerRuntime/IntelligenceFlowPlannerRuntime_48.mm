uint64_t sub_22C7903D4(unint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v66 = sub_22C3A5908(&qword_27D9BADA0, &unk_22C90FA80);
  v8 = *(*(v66 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v66);
  v65 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v64 = (&v57 - v12);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = (&v57 - v14);
  result = MEMORY[0x28223BE20](v13);
  v18 = (&v57 - v17);
  v20 = *(v19 + 72);
  if (!v20)
  {
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    return result;
  }

  v21 = a2 - a1;
  v22 = a2 - a1 == 0x8000000000000000 && v20 == -1;
  if (v22)
  {
    goto LABEL_72;
  }

  v23 = a2;
  v24 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_73;
  }

  v26 = v21 / v20;
  v69 = a1;
  v68 = a4;
  v27 = v24 / v20;
  if (v21 / v20 < v24 / v20)
  {
    v28 = v23;
    sub_22C3D7A68(a1, v21 / v20, a4);
    v29 = v28;
    v65 = a4 + v26 * v20;
    v67 = v65;
    v63 = a3;
    while (1)
    {
      if (a4 >= v65 || v29 >= a3)
      {
        goto LABEL_70;
      }

      v31 = v29;
      sub_22C791344(v29, v18, &qword_27D9BADA0, &unk_22C90FA80);
      sub_22C791344(a4, v15, &qword_27D9BADA0, &unk_22C90FA80);
      if (*v18 == *v15 && v18[1] == v15[1])
      {
        sub_22C376B84(v15, &qword_27D9BADA0, &unk_22C90FA80);
        sub_22C376B84(v18, &qword_27D9BADA0, &unk_22C90FA80);
      }

      else
      {
        v33 = sub_22C90B4FC();
        sub_22C376B84(v15, &qword_27D9BADA0, &unk_22C90FA80);
        sub_22C376B84(v18, &qword_27D9BADA0, &unk_22C90FA80);
        if (v33)
        {
          v34 = v31;
          v35 = v31 + v20;
          if (a1 < v31 || a1 >= v35)
          {
            swift_arrayInitWithTakeFrontToBack();
            v29 = v31 + v20;
            a3 = v63;
          }

          else
          {
            a3 = v63;
            if (a1 != v34)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v29 = v35;
          }

          goto LABEL_37;
        }
      }

      if (a1 < a4 || a1 >= a4 + v20)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a1 != a4)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v68 = a4 + v20;
      a4 += v20;
      v29 = v31;
      a3 = v63;
LABEL_37:
      a1 += v20;
      v69 = a1;
    }
  }

  v38 = v23;
  sub_22C3D7A68(v23, v24 / v20, a4);
  v39 = v38;
  v40 = a4 + v27 * v20;
  v41 = -v20;
  v42 = v40;
  v62 = -v20;
  v59 = a4;
LABEL_42:
  v43 = v39 + v41;
  v44 = a3;
  v45 = v42;
  v63 = v39;
  v60 = v42;
  v61 = v43;
  while (1)
  {
    if (v40 <= a4)
    {
      v69 = v39;
      v67 = v45;
      goto LABEL_70;
    }

    if (v39 <= a1)
    {
      break;
    }

    v58 = v45;
    v46 = v62;
    v47 = v40 + v62;
    v48 = v64;
    sub_22C791344(v40 + v62, v64, &qword_27D9BADA0, &unk_22C90FA80);
    v49 = v43;
    v50 = v65;
    sub_22C791344(v49, v65, &qword_27D9BADA0, &unk_22C90FA80);
    if (*v48 == *v50 && v48[1] == v50[1])
    {
      v52 = 0;
    }

    else
    {
      v52 = sub_22C90B4FC();
    }

    a3 = v44 + v46;
    sub_22C376B84(v65, &qword_27D9BADA0, &unk_22C90FA80);
    sub_22C376B84(v64, &qword_27D9BADA0, &unk_22C90FA80);
    if (v52)
    {
      v54 = v44 < v63 || a3 >= v63;
      a4 = v59;
      if (v54)
      {
        v55 = v61;
        swift_arrayInitWithTakeFrontToBack();
        v39 = v55;
        v42 = v58;
        v41 = v62;
      }

      else
      {
        v42 = v58;
        v56 = v61;
        v41 = v62;
        v39 = v61;
        if (v44 != v63)
        {
          v42 = v58;
          swift_arrayInitWithTakeBackToFront();
          v39 = v56;
        }
      }

      goto LABEL_42;
    }

    v53 = v44 < v40 || a3 >= v40;
    a4 = v59;
    if (v53)
    {
      swift_arrayInitWithTakeFrontToBack();
      v44 = a3;
      v40 = v47;
      v45 = v47;
      v39 = v63;
      v42 = v60;
      v43 = v61;
    }

    else
    {
      v45 = v47;
      v22 = v40 == v44;
      v44 = a3;
      v40 = v47;
      v39 = v63;
      v42 = v60;
      v43 = v61;
      if (!v22)
      {
        swift_arrayInitWithTakeBackToFront();
        v39 = v63;
        v44 = a3;
        v40 = v47;
        v45 = v47;
      }
    }
  }

  v69 = v39;
  v67 = v42;
LABEL_70:
  sub_22C838268(&v69, &v68, &v67);
  return 1;
}

void *sub_22C790914(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_22C790AF0(v5, a2, a3);
    v7 = v6;

    return v7;
  }

  return result;
}

uint64_t sub_22C79098C(uint64_t a1)
{
  v2 = a1;
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v9 = swift_slowAlloc();
      v2 = sub_22C790914(v9, v4, v2);
      MEMORY[0x2318B9880](v9, -1, -1);
      goto LABEL_5;
    }
  }

  MEMORY[0x28223BE20](a1);
  v5 = v10 - ((8 * v4 + 15) & 0x3FFFFFFFFFFFFFF0);
  sub_22C88FAFC(0, v4, v5);
  sub_22C790AF0(v5, v4, v2);
  if (v1)
  {
    swift_willThrow();
  }

  else
  {
    v2 = v6;
  }

LABEL_5:
  v7 = *MEMORY[0x277D85DE8];
  return v2;
}

void sub_22C790AF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32[1] = a2;
  v33 = a1;
  v40 = sub_22C3A5908(&qword_27D9BADA0, &unk_22C90FA80);
  v4 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40);
  v6 = v32 - v5;
  v7 = sub_22C9093BC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = 0;
  v41 = a3;
  v15 = *(a3 + 64);
  v14 = a3 + 64;
  v13 = v15;
  v16 = 1 << *(v14 - 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v13;
  v34 = 0;
  v35 = (v16 + 63) >> 6;
  v38 = v9 + 16;
  v39 = v9;
  v37 = (v9 + 8);
  while (v18)
  {
    v19 = __clz(__rbit64(v18));
    v42 = (v18 - 1) & v18;
LABEL_11:
    v22 = v19 | (v12 << 6);
    v23 = *(v41 + 56);
    v24 = (*(v41 + 48) + 16 * v22);
    v26 = *v24;
    v25 = v24[1];
    v27 = *(v39 + 72);
    v36 = v22;
    v28 = *(v39 + 16);
    v28(v11, v23 + v27 * v22, v7);
    *v6 = v26;
    *(v6 + 1) = v25;
    v28(&v6[*(v40 + 48)], v11, v7);
    if (v26 == 0x6E6F73726570 && v25 == 0xE600000000000000)
    {
      swift_bridgeObjectRetain_n();
      sub_22C376B84(v6, &qword_27D9BADA0, &unk_22C90FA80);
      (*v37)(v11, v7);

      v18 = v42;
    }

    else
    {
      v30 = sub_22C90B4FC();
      swift_bridgeObjectRetain_n();
      sub_22C376B84(v6, &qword_27D9BADA0, &unk_22C90FA80);
      (*v37)(v11, v7);

      v18 = v42;
      if ((v30 & 1) == 0)
      {
        *(v33 + ((v36 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v36;
        if (__OFADD__(v34++, 1))
        {
          goto LABEL_22;
        }
      }
    }
  }

  v20 = v12;
  while (1)
  {
    v12 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v12 >= v35)
    {
      sub_22C8395B4();
      return;
    }

    v21 = *(v14 + 8 * v12);
    ++v20;
    if (v21)
    {
      v19 = __clz(__rbit64(v21));
      v42 = (v21 - 1) & v21;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
}

uint64_t sub_22C790E30(void *a1)
{
  v2 = [a1 typeIdentifier];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_22C90A11C();

  return v3;
}

void sub_22C790EA0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_22C90A0EC();

  [a3 setCurrencyCode_];
}

uint64_t type metadata accessor for PayloadFormatter()
{
  result = qword_27D9BFFF0;
  if (!qword_27D9BFFF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22C790F50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PayloadFormatter();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C790FB4(uint64_t a1)
{
  v2 = type metadata accessor for PayloadFormatter();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22C791010()
{
  sub_22C36FB38();
  sub_22C791E0C();
  swift_task_alloc();
  sub_22C36CC90();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = sub_22C372190(v1);

  return sub_22C77D4A4(v3);
}

uint64_t sub_22C7910A0()
{
  sub_22C36FB38();
  sub_22C791E0C();
  swift_task_alloc();
  sub_22C36CC90();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = sub_22C372190(v1);

  return sub_22C77D2DC(v3);
}

uint64_t sub_22C791130()
{
  sub_22C36FB38();
  sub_22C791E0C();
  swift_task_alloc();
  sub_22C36CC90();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = sub_22C372190(v1);

  return sub_22C77C728(v3);
}

unint64_t sub_22C7911C0()
{
  result = qword_27D9BFF90;
  if (!qword_27D9BFF90)
  {
    sub_22C3AC1A0(&qword_27D9BAD90, &unk_22C91D9E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BFF90);
  }

  return result;
}

unint64_t sub_22C79123C()
{
  result = qword_27D9BFF98;
  if (!qword_27D9BFF98)
  {
    sub_22C3AC1A0(&qword_27D9BC390, &qword_22C912AC0);
    sub_22C7914C4(&qword_27D9BFFA0, MEMORY[0x277D73220]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BFF98);
  }

  return result;
}

uint64_t sub_22C7912F0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_22C36BB4C(a1, a2, a3, a4);
  sub_22C36BBA8(v6);
  (*(v7 + 32))(v4, v5);
  return v4;
}

uint64_t sub_22C791344(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_22C36BB4C(a1, a2, a3, a4);
  sub_22C36BBA8(v6);
  (*(v7 + 16))(v4, v5);
  return v4;
}

void sub_22C7913C0()
{
  sub_22C90731C();
  if (v0 <= 0x3F)
  {
    sub_22C90880C();
    if (v1 <= 0x3F)
    {
      sub_22C646808();
      if (v2 <= 0x3F)
      {
        sub_22C908AEC();
        if (v3 <= 0x3F)
        {
          sub_22C6468B4();
          if (v4 <= 0x3F)
          {
            sub_22C90941C();
            if (v5 <= 0x3F)
            {
              type metadata accessor for TranscriptValueFetcher(319);
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_22C7914C4(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *sub_22C79151C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_22C7915FC()
{
  result = qword_27D9C0000;
  if (!qword_27D9C0000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C0000);
  }

  return result;
}

uint64_t sub_22C791650(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

void sub_22C7916C4()
{
  v3 = v0[97];
  v4 = v0[96];
  v5 = v0[95];
  v6 = v0[94];
  v7 = v0[93];
  v8 = v0[92];
  v9 = v0[91];
  v10 = v0[90];
  v11 = v0[89];
  v12 = v0[88];
  v13 = v0[87];
  v14 = v0[86];
  v1 = v0[84];
  v2 = v0[83];
  v15 = v0[85];
  v16 = v0[82];
  v17 = v0[81];
  v18 = v0[80];
  v19 = v0[79];
  v20 = v0[78];
  v21 = v0[77];
  v22 = v0[74];
  v23 = v0[73];
  v24 = v0[72];
  v25 = v0[69];
  v26 = v0[68];
  v27 = v0[67];
  v28 = v0[66];
  v29 = v0[63];
  v30 = v0[62];
  v31 = v0[61];
  v32 = v0[60];
  v33 = v0[59];
  v34 = v0[58];
  v35 = v0[57];
  v36 = v0[56];
}

void sub_22C79178C()
{
  v8 = v0[58];
  v9 = v0[57];
  v10 = v0[56];
  v11 = v0[55];
  v12 = v0[54];
  v13 = v0[51];
  v14 = v0[50];
  v15 = v0[49];
  v16 = v0[48];
  v17 = v0[47];
  v18 = v0[46];
  v19 = v0[45];
  v20 = v0[44];
  v21 = v0[43];
  v22 = v0[42];
  v23 = v0[41];
  v24 = v0[38];
  v25 = v0[35];
  v26 = v0[34];
  v27 = v0[33];
  v28 = v0[32];
  v29 = v0[31];
  v30 = v0[30];
  v2 = v0[28];
  *(v1 - 176) = v0[29];
  *(v1 - 168) = v2;
  v3 = v0[26];
  *(v1 - 160) = v0[27];
  *(v1 - 152) = v3;
  v5 = v0[21];
  v4 = v0[22];
  *(v1 - 144) = v0[25];
  *(v1 - 136) = v4;
  v6 = v0[17];
  v7 = v0[18];
  *(v1 - 128) = v5;
  *(v1 - 120) = v7;
}

uint64_t sub_22C791818()
{
  v2 = *(v1 + 600);
  v3 = *(*(v1 + 608) + 16);
  return v0;
}

uint64_t sub_22C79184C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{

  return PayloadLayout.init(heading:key:nestedLayout:leafString:leafDictionary:leafCollection:indent:preserveHeaderFormatting:preserveKeyFormatting:)(a1, a2, a3, a4, 0, 0, 0, 0, a9);
}

void sub_22C791870()
{
  sub_22C36FF94(v0);

  JUMPOUT(0x2318B9880);
}

uint64_t sub_22C7918A4()
{

  return sub_22C90B4FC();
}

uint64_t sub_22C79192C(uint64_t a1)
{
  *(a1 + 8) = sub_22C78B518;
  v2 = *(v1 + 32);
  return *(v1 + 88);
}

uint64_t sub_22C79195C(uint64_t a1)
{
  *(a1 + 8) = sub_22C777DFC;
  v2 = *(v1 + 64);
  return v1 + 16;
}

uint64_t sub_22C79198C(uint64_t a1)
{
  *(a1 + 8) = sub_22C777A14;
  v2 = *(v1 + 56);
  return v1 + 16;
}

void sub_22C7919BC()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[13];
  v4 = v0[10];
  v5 = v0[11];
  v6 = v0[8];
  v7 = v0[9];
  v8 = v0[7];
}

uint64_t sub_22C7919F0()
{
  v1 = v0[88];
  v2 = v0[87];
  v3 = v0[86];
  v4 = v0[85];
  result = v0[74];
  v6 = v0[68];
  v7 = v0[44];
  v8 = v0[38];
  v10 = *v7;
  v9 = v7[1];
  v11 = *(v0[69] + 32);
  v12 = v7 + *(v0[34] + 48);
  return result;
}

uint64_t sub_22C791A2C(uint64_t a1)
{
  *(a1 + 8) = sub_22C7787BC;
  result = *(v1 + 40);
  v3 = *(v1 + 24);
  return result;
}

unint64_t sub_22C791A54@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v2 + 1080);
  v4 = *(v2 + 1072);
  v5 = *(v2 + 576);
  v6 = *(v2 + 552);
  v7 = *(v2 + 544);
  v9 = *(v2 + 288);
  v8 = *(v2 + 296);
  v10 = *(v2 + 272);
  return v1 + ((*(v2 + 1076) + 32) & ~*(v2 + 1076)) + *(*(v2 + 280) + 72) * a1;
}

uint64_t sub_22C791A8C(uint64_t result)
{
  *(result + 8) = sub_22C77824C;
  v2 = *(v1 + 40);
  return result;
}

uint64_t sub_22C791AB0()
{
  v10 = v0[50];
  v11 = v0[49];
  v12 = v0[48];
  v13 = v0[47];
  v3 = v0[43];
  *(v1 - 192) = v0[44];
  *(v1 - 184) = v3;
  v4 = v0[41];
  *(v1 - 176) = v0[42];
  *(v1 - 168) = v4;
  v6 = v0[36];
  v5 = v0[37];
  *(v1 - 160) = v0[40];
  *(v1 - 152) = v5;
  v7 = v0[33];
  *(v1 - 144) = v6;
  *(v1 - 136) = v7;
  v8 = v0[30];
  *(v1 - 128) = v0[31];
  *(v1 - 120) = v8;
}

uint64_t sub_22C791B20()
{

  return sub_22C90B4FC();
}

char *sub_22C791B60()
{
  v5 = *v0;
  *(v1 + 936) = *v0;
  v6 = v0[1];
  *(v1 + 944) = v6;
  v7 = *(v4 + 48);
  *v2 = v5;
  v2[1] = v6;
  v8 = *(v3 + 32);
  return v2 + v7;
}

char *sub_22C791B90()
{
  v5 = *v0;
  *(v1 + 936) = *v0;
  v6 = v0[1];
  *(v1 + 944) = v6;
  v7 = *(v3 + 48);
  *v2 = v5;
  v2[1] = v6;
  v8 = *(v4 + 32);
  return v2 + v7;
}

uint64_t sub_22C791BC0()
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_22C791BE8()
{
  v3 = v0[19];
  v2 = v0[20];
  v5 = v0[15];
  v4 = v0[16];
  v6 = v0[14];
  v8 = v0[10];
  v7 = v0[11];
  v10 = v0[6];
  v9 = v0[7];
}

BOOL sub_22C791C0C(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_22C791C28()
{

  return swift_slowAlloc();
}

void sub_22C791C98()
{
  v3 = v2[114] + 1;
  v2[116] = v1;
  v2[115] = v0;
  v2[114] = v3;
  v4 = *(v2[112] + 16);
}

void sub_22C791CBC()
{
  v1 = *(v0 + 552);
  v3 = *(v0 + 288);
  v2 = *(v0 + 296);
  v4 = *(v0 + 280);
  *(v0 + 1072) = *(*(v0 + 272) + 48);
  *(v0 + 1076) = *(v4 + 80);
}

uint64_t sub_22C791CDC()
{
  v1 = v0[21];
  result = v0[12];
  v3 = v0[8];
  v4 = v0[9];
  v0[51] = *(v4 + 8);
  v0[52] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  return result;
}

uint64_t sub_22C791D20()
{
  v2 = v0[126];
  v3 = v0[91];
  v4 = v0[90];
  v5 = v0[89];
  v6 = v0[71];
  v7 = v0[70];
  v8 = v0[69];
  v9 = v0[68];
}

uint64_t sub_22C791D50@<X0>(int *a1@<X8>)
{
  v3 = a1[1];
  *(v1 - 104) = a1 + *a1;

  return swift_task_alloc();
}

uint64_t sub_22C791D70()
{
  v2 = v0[33];
  result = v0[34];
  v3 = v0[31];
  v4 = v0[32];
  v6 = v0[29];
  v5 = v0[30];
  v8 = v0[27];
  v7 = v0[28];
  v10 = v0[25];
  v9 = v0[26];
  v11 = v0[21];
  v12 = v0[22];
  return result;
}

uint64_t sub_22C791D8C()
{
  result = v1;
  *(v2 - 312) = *(v0 + 8);
  return result;
}

uint64_t sub_22C791DC0()
{
  v1 = *(*(v0 - 272) + 8);
  result = *(v0 - 168);
  v3 = *(v0 - 264);
  return result;
}

uint64_t sub_22C791DEC()
{
  result = v0[68];
  v2 = v0[67];
  v3 = v0[66];
  return result;
}

void sub_22C791DFC(uint64_t a1@<X8>)
{
  v1 = a1 & 0xFFFFFFFFFFFFFF8;
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
}

void sub_22C791E1C()
{
  v1 = v0[81];
  v2 = v0[76];
  v3 = v0[75];
}

void sub_22C791E3C()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = v0[3];
}

uint64_t sub_22C791E4C()
{
  v3 = v0[20];
  v2 = v0[21];
  v5 = v0[16];
  v4 = v0[17];
  v6 = v0[15];
  v7 = v0[12];
  v9 = v0[8];
  v8 = v0[9];
  v10 = v0[7];
}

void sub_22C791E74(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v7 = *(v5 - 136);
  v8 = *(v5 - 136);
  v9 = *(v5 - 104);

  _os_log_impl(a1, v9, v8, a4, v4, 0xCu);
}

uint64_t sub_22C791E9C()
{

  return sub_22C90AD4C();
}

uint64_t sub_22C791EE8(uint64_t a1)
{
  v5 = *(v2 + 64);
  v6 = *(v1 + 56) + a1 * v4;
  return v3;
}

uint64_t sub_22C791F00(uint64_t result)
{
  *(v1 + 1080) = v3;
  *(v1 + 928) = v2;
  *(v1 + 920) = v2;
  *(v1 + 912) = 0;
  v4 = *(result + 16);
  return result;
}

uint64_t sub_22C791F18()
{
  v1 = v0[21];
  v2 = v0[5];
  v3 = *(v0[6] + 96);
  return v0[7];
}

uint64_t sub_22C791F30()
{
  v1 = v0[21];
  v2 = v0[19];
  v3 = v0[8];
  return v0[14];
}

void sub_22C791F54(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 2u);
}

uint64_t sub_22C791F84()
{
  v3 = v1[126];
  v4 = v1[107];
  v6 = v1[7];
  v5 = v1[8];
  v7 = v1[6];

  return sub_22C7973A4(v0);
}

uint64_t sub_22C791FA8()
{
}

uint64_t sub_22C791FC0()
{
  v3 = v0[16];
  v2 = v0[17];
  v4 = v0[13];
  v6 = v0[10];
  v5 = v0[11];
  v8 = v0[8];
  v7 = v0[9];
  v9 = v0[7];
}

void sub_22C791FE4(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

id sub_22C792000()
{

  return [v0 (v1 + 855)];
}

uint64_t sub_22C792018()
{
}

uint64_t sub_22C792030(uint64_t a1)
{
  *(v1 - 104) = a1;
}

void sub_22C792048(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

void sub_22C792060()
{
  v1 = v0[28];
  v3 = v0[23];
  v2 = v0[24];
  v4 = v0[20];
  v5 = v0[21];
  v6 = v0[19];
}

void sub_22C792088()
{
  v1 = v0[27];
  v2 = v0[23];
  v3 = v0[24];
  v4 = v0[20];
  v5 = v0[21];
  v6 = v0[19];
}

uint64_t sub_22C79209C(uint64_t result)
{
  *(v1 - 136) = result;
  *(v1 - 96) = result;
  return result;
}

void sub_22C7920A8()
{
  v1 = *(v0 + 460);
  v3 = *(v0 + 336);
  v2 = *(v0 + 344);
  v4 = *(v0 + 104);
  v6 = *(v0 + 56);
  v5 = *(v0 + 64);
}

uint64_t sub_22C7920E4()
{
  v1 = v0[113];
  result = v0[36];
  v3 = v0[114] + 1;
  return result;
}

uint64_t sub_22C79210C()
{
  result = v0[73];
  v2 = v0[68];
  v3 = *(v0[69] + 8);
  return result;
}

uint64_t sub_22C792140()
{
  v1 = v0[126];
  v2 = v0[91];
  v3 = v0[90];
  return v0[89];
}

void sub_22C792160()
{
  v1 = v0[82];
  v2 = v0[81];
  v3 = v0[80];
  v4 = v0[77];
}

void sub_22C792188(void *a1@<X0>, const char *a2@<X3>, os_log_type_t a3@<W8>)
{

  _os_log_impl(a1, v3, a3, a2, v4, 0xCu);
}

uint64_t sub_22C7921A8(uint64_t a1)
{
  v5 = v1 + *(a1 + 40);

  return sub_22C729D78(v3, v2);
}

uint64_t sub_22C7921C8()
{
  v2 = v0[112];
  v3 = v0[111];
  v4 = v0[91];
  v5 = v0[90];
}

BOOL sub_22C7921E8(int a1)
{
  *(v2 - 136) = a1;
  *(v2 - 104) = v1;

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_22C792224(uint64_t a1)
{
  *(v1 - 88) = a1;
}

uint64_t sub_22C79223C()
{

  return sub_22C909F4C();
}

void sub_22C792254()
{
  sub_22C370030();
  sub_22C387550();
  v6 = sub_22C3A5908(&qword_27D9BD760, &qword_22C922200);
  sub_22C369914(v6);
  v8 = *(v7 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v9);
  sub_22C79D010();
  v10 = sub_22C903B1C();
  v11 = sub_22C369824(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22C37873C(v14, v40);
  v16 = MEMORY[0x28223BE20](v15);
  sub_22C36A344(v16, v17, v18, v19, v20, v21, v22, v23, v41);
  while (v3 != v5)
  {
    v24 = sub_22C908A0C();
    sub_22C3699B8(v24);
    v26 = v25;
    v28 = v27;
    v29 = v1 + ((*(v26 + 80) + 32) & ~*(v26 + 80));
    v30 = *(v28 + 72);
    v31 = sub_22C3828CC(v29);
    v2(v31);
    if (v0)
    {
      sub_22C79D084();
      break;
    }

    sub_22C79D024();
    if (v32)
    {
      sub_22C36DD28(v4, &qword_27D9BD760, &qword_22C922200);
      ++v5;
    }

    else
    {
      v33 = sub_22C36C3A4();
      (qword_22C922200)(v33);
      v34 = sub_22C380034();
      (qword_22C922200)(v34);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_22C372D64();
        sub_22C5902F8();
      }

      sub_22C79D048();
      if (v36)
      {
        sub_22C36DAD0();
        sub_22C5902F8();
        sub_22C79D078(v39);
      }

      v37 = sub_22C36B6D8();
      v38(v37);
    }
  }

  sub_22C38AB44();
  sub_22C36FB20();
}

void sub_22C792458()
{
  sub_22C370030();
  sub_22C387550();
  v6 = sub_22C3A5908(&qword_27D9BC0A0, &unk_22C922F30);
  sub_22C369914(v6);
  v8 = *(v7 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v9);
  sub_22C79D010();
  v10 = sub_22C906ECC();
  v11 = sub_22C369824(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22C37873C(v14, v40);
  v16 = MEMORY[0x28223BE20](v15);
  sub_22C36A344(v16, v17, v18, v19, v20, v21, v22, v23, v41);
  while (v3 != v5)
  {
    v24 = sub_22C908A0C();
    sub_22C3699B8(v24);
    v26 = v25;
    v28 = v27;
    v29 = v1 + ((*(v26 + 80) + 32) & ~*(v26 + 80));
    v30 = *(v28 + 72);
    v31 = sub_22C3828CC(v29);
    v2(v31);
    if (v0)
    {
      sub_22C79D084();
      break;
    }

    sub_22C79D024();
    if (v32)
    {
      sub_22C36DD28(v4, &qword_27D9BC0A0, &unk_22C922F30);
      ++v5;
    }

    else
    {
      v33 = sub_22C36C3A4();
      (unk_22C922F30)(v33);
      v34 = sub_22C380034();
      (unk_22C922F30)(v34);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_22C372D64();
        sub_22C590A30();
      }

      sub_22C79D048();
      if (v36)
      {
        sub_22C36DAD0();
        sub_22C590A30();
        sub_22C79D078(v39);
      }

      v37 = sub_22C36B6D8();
      v38(v37);
    }
  }

  sub_22C38AB44();
  sub_22C36FB20();
}

void sub_22C79265C()
{
  sub_22C370030();
  v3 = v2;
  v35 = v4;
  v5 = sub_22C3A5908(&qword_27D9BB608, &qword_22C92DB40);
  sub_22C369914(v5);
  v7 = *(v6 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v8);
  v9 = sub_22C79D010();
  v34 = type metadata accessor for DialogValue(v9);
  v10 = sub_22C369824(v34);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22C3698E4();
  v32 = v15;
  sub_22C369930();
  MEMORY[0x28223BE20](v16);
  sub_22C36BA64();
  v31 = v17;
  v18 = 0;
  v19 = *(v3 + 16);
  v33 = MEMORY[0x277D84F90];
  while (v19 != v18)
  {
    v20 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v21 = *(v12 + 72);
    sub_22C3817EC();
    v35();
    if (v0)
    {

      break;
    }

    if (sub_22C370B74(v1, 1, v34) == 1)
    {
      sub_22C36DD28(v1, &qword_27D9BB608, &qword_22C92DB40);
      ++v18;
    }

    else
    {
      sub_22C79CFB4(v1, v31, type metadata accessor for DialogValue);
      sub_22C79CFB4(v31, v32, type metadata accessor for DialogValue);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_22C377B6C(isUniquelyReferenced_nonNull_native, v23, v24, v33);
        sub_22C590AF8();
        v33 = v27;
      }

      v25 = *(v33 + 16);
      v26 = v25 + 1;
      if (v25 >= *(v33 + 24) >> 1)
      {
        v29 = *(v33 + 16);
        v30 = v25 + 1;
        sub_22C590AF8();
        v25 = v29;
        v26 = v30;
        v33 = v28;
      }

      ++v18;
      *(v33 + 16) = v26;
      sub_22C79CFB4(v32, v33 + v20 + v25 * v21, type metadata accessor for DialogValue);
    }
  }

  sub_22C38AB44();
  sub_22C36FB20();
}

void sub_22C7928B0()
{
  sub_22C37BF7C();
  v3 = 0;
  v5 = *(v4 + 16);
  v6 = MEMORY[0x277D84F90];
  while (v5 != v3)
  {
    if (v3 >= v5)
    {
      __break(1u);
LABEL_15:
      __break(1u);
      return;
    }

    v7 = *(sub_22C9093BC() - 8);
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      goto LABEL_15;
    }

    v2(&v16, v1 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v3);
    if (v0)
    {

      return;
    }

    v9 = v17;
    ++v3;
    if (v17)
    {
      v18 = v16;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = *(v6 + 16);
        sub_22C36D270();
        sub_22C590270();
        v6 = v14;
      }

      v10 = *(v6 + 16);
      v11 = v10 + 1;
      if (v10 >= *(v6 + 24) >> 1)
      {
        sub_22C37B798();
        sub_22C590270();
        v11 = v10 + 1;
        v6 = v15;
      }

      *(v6 + 16) = v11;
      v12 = v6 + 16 * v10;
      *(v12 + 32) = v18;
      *(v12 + 40) = v9;
      v3 = v8;
    }
  }
}

void sub_22C792A44()
{
  sub_22C370030();
  v3 = v2;
  v5 = v4;
  v6 = sub_22C3A5908(&qword_27D9C00C0, &qword_22C925EA8);
  sub_22C369914(v6);
  v8 = *(v7 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v9);
  v10 = sub_22C37F348();
  v11 = type metadata accessor for _PromptToolData(v10);
  v12 = sub_22C369824(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  sub_22C3698E4();
  sub_22C3857BC();
  v16 = MEMORY[0x28223BE20](v15);
  sub_22C37FA78(v16, v17, v18, v19, v20, v21, v22, v23, v35);
  v24 = 0;
  v25 = *(v3 + 16);
  while (1)
  {
    v26 = ~v24;
    v27 = v25 - v24;
    if (!v27)
    {
      break;
    }

    while (1)
    {
      v5();
      if (v0)
      {
        sub_22C79D084();
        goto LABEL_14;
      }

      if (sub_22C370B74(v1, 1, v11) != 1)
      {
        break;
      }

      v28 = sub_22C3819EC();
      sub_22C36DD28(v28, v29, &qword_22C925EA8);
      --v26;
      if (!--v27)
      {
        goto LABEL_14;
      }
    }

    v30 = type metadata accessor for _PromptToolData;
    sub_22C79CFB4(v1, v36, type metadata accessor for _PromptToolData);
    sub_22C79CFB4(v36, v37, type metadata accessor for _PromptToolData);
    if ((sub_22C385FC4() & 1) == 0)
    {
      sub_22C36D270();
      sub_22C591D14();
      v30 = v34;
    }

    if (*(v30 + 2) >= *(v30 + 3) >> 1)
    {
      sub_22C37B798();
      sub_22C591D14();
    }

    v24 = -v26;
    sub_22C375B4C();
    sub_22C3737EC();
    sub_22C37B3E0();
    sub_22C79CFB4(v31, v32, v33);
  }

LABEL_14:
  sub_22C38AB44();
  sub_22C36FB20();
}

void sub_22C792C70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_22C388D90();
  a21 = v23;
  a22 = v24;
  v26 = v25;
  v28 = v27;
  v29 = 0;
  v30 = *(v25 + 16);
  v41 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v30 == v29)
    {
      goto LABEL_14;
    }

    if (v29 >= v30)
    {
      break;
    }

    v31 = *(sub_22C90430C() - 8);
    v32 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      goto LABEL_16;
    }

    v28(&a12, v26 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v29);
    if (v22)
    {

LABEL_14:
      sub_22C79D104();
      return;
    }

    v33 = a12;
    ++v29;
    if ((~a12 & 0xF000000000000007) != 0)
    {
      v34 = v41;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v38 = *(v41 + 16);
        sub_22C36D270();
        sub_22C591324();
        v34 = v39;
      }

      v35 = v34;
      v36 = *(v34 + 16);
      v41 = v35;
      v37 = v36 + 1;
      if (v36 >= *(v35 + 24) >> 1)
      {
        sub_22C37B798();
        sub_22C591324();
        v37 = v36 + 1;
        v41 = v40;
      }

      *(v41 + 16) = v37;
      *(v41 + 8 * v36 + 32) = v33;
      v29 = v32;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
}

void sub_22C792E70()
{
  sub_22C370030();
  v5 = v4;
  sub_22C37BF7C();
  v6 = sub_22C3A5908(&qword_27D9C00C0, &qword_22C925EA8);
  sub_22C369914(v6);
  v8 = *(v7 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v9);
  v10 = sub_22C374FF8();
  v11 = type metadata accessor for _PromptToolData(v10);
  v12 = sub_22C369824(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  sub_22C3698E4();
  sub_22C3857BC();
  MEMORY[0x28223BE20](v15);
  sub_22C36BA64();
  sub_22C79D0F8(v16);
  v17 = 0;
  v18 = *(v1 + 16);
  while (v18 != v17)
  {
    v19 = v5(0);
    sub_22C3699B8(v19);
    v2(v1 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v21 + 72) * v17);
    if (v0)
    {
      sub_22C79D084();
      break;
    }

    if (sub_22C370B74(v3, 1, v11) == 1)
    {
      sub_22C36DD28(v3, &qword_27D9C00C0, &qword_22C925EA8);
      ++v17;
    }

    else
    {
      sub_22C79CFB4(v3, v25, type metadata accessor for _PromptToolData);
      sub_22C79CFB4(v25, v26, type metadata accessor for _PromptToolData);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_22C372D64();
        sub_22C591D14();
      }

      sub_22C79D048();
      if (v22)
      {
        sub_22C376978();
        sub_22C591D14();
      }

      ++v17;
      sub_22C375B4C();
      sub_22C3737EC();
      sub_22C37B3E0();
      sub_22C79CFB4(v26, v23, v24);
    }
  }

  sub_22C38AB44();
  sub_22C36FB20();
}

void sub_22C7930C0()
{
  sub_22C370030();
  sub_22C387550();
  v6 = sub_22C3A5908(&qword_27D9BD298, &qword_22C925EC0);
  sub_22C369914(v6);
  v8 = *(v7 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v9);
  sub_22C79D010();
  v10 = sub_22C9036EC();
  v11 = sub_22C369824(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22C37873C(v14, v40);
  v16 = MEMORY[0x28223BE20](v15);
  sub_22C36A344(v16, v17, v18, v19, v20, v21, v22, v23, v41);
  while (v3 != v5)
  {
    v24 = sub_22C908ABC();
    sub_22C3699B8(v24);
    v26 = v25;
    v28 = v27;
    v29 = v1 + ((*(v26 + 80) + 32) & ~*(v26 + 80));
    v30 = *(v28 + 72);
    v31 = sub_22C3828CC(v29);
    v2(v31);
    if (v0)
    {
      sub_22C79D084();
      break;
    }

    sub_22C79D024();
    if (v32)
    {
      sub_22C36DD28(v4, &qword_27D9BD298, &qword_22C925EC0);
      ++v5;
    }

    else
    {
      v33 = sub_22C36C3A4();
      (qword_22C925EC0)(v33);
      v34 = sub_22C380034();
      (qword_22C925EC0)(v34);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_22C372D64();
        sub_22C591078();
      }

      sub_22C79D048();
      if (v36)
      {
        sub_22C36DAD0();
        sub_22C591078();
        sub_22C79D078(v39);
      }

      v37 = sub_22C36B6D8();
      v38(v37);
    }
  }

  sub_22C38AB44();
  sub_22C36FB20();
}

void sub_22C7932C4()
{
  sub_22C370030();
  sub_22C387550();
  v3 = sub_22C3A5908(&qword_27D9BD7B8, &qword_22C919108);
  sub_22C369914(v3);
  v5 = *(v4 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v6);
  v8 = v43 - v7;
  v9 = sub_22C3A5908(&qword_27D9BB6C8, &qword_22C919100);
  v10 = sub_22C369824(v9);
  v45 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22C3698E4();
  sub_22C3857BC();
  v15 = MEMORY[0x28223BE20](v14);
  sub_22C37FA78(v15, v16, v17, v18, v19, v20, v21, v22, v43[0]);
  v23 = 0;
  v24 = *(v1 + 16);
  while (v24 != v23)
  {
    v25 = type metadata accessor for DynamicEnumeration.Case(0);
    sub_22C3699B8(v25);
    v27 = v26;
    v29 = v28;
    v30 = v1 + ((*(v27 + 80) + 32) & ~*(v27 + 80));
    v31 = *(v29 + 72);
    v32 = sub_22C3828CC(v30);
    v2(v32);
    if (v0)
    {
      sub_22C79D084();
      break;
    }

    sub_22C79D024();
    if (v33)
    {
      sub_22C36DD28(v8, &qword_27D9BD7B8, &qword_22C919108);
      ++v23;
    }

    else
    {
      v34 = v44;
      sub_22C4E7208(v8, v44, &qword_27D9BB6C8, &qword_22C919100);
      sub_22C4E7208(v34, v46, &qword_27D9BB6C8, &qword_22C919100);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_22C372D64();
        sub_22C592FD0();
      }

      sub_22C79D048();
      if (v38)
      {
        v43[1] = v37;
        v43[2] = v36;
        sub_22C376978();
        sub_22C592FD0();
      }

      ++v23;
      sub_22C375B4C();
      sub_22C3737EC();
      sub_22C4E7208(v42, v39 + v40 * v41, &qword_27D9BB6C8, &qword_22C919100);
    }
  }

  sub_22C38AB44();
  sub_22C36FB20();
}

void sub_22C793554(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_22C388D90();
  a21 = v23;
  a22 = v24;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v31 = 0;
  v32 = *(v27 + 16);
  v43 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v32 == v31)
    {
      goto LABEL_14;
    }

    if (v31 >= v32)
    {
      break;
    }

    v33 = *(v26(0) - 8);
    v34 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      goto LABEL_16;
    }

    v30(&a12, v28 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v31);
    if (v22)
    {

LABEL_14:
      sub_22C79D104();
      return;
    }

    v35 = a12;
    ++v31;
    if ((~a12 & 0xF000000000000007) != 0)
    {
      v36 = v43;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v40 = *(v43 + 16);
        sub_22C36D270();
        sub_22C591324();
        v36 = v41;
      }

      v37 = v36;
      v38 = *(v36 + 16);
      v43 = v37;
      v39 = v38 + 1;
      if (v38 >= *(v37 + 24) >> 1)
      {
        sub_22C37B798();
        sub_22C591324();
        v39 = v38 + 1;
        v43 = v42;
      }

      *(v43 + 16) = v39;
      *(v43 + 8 * v38 + 32) = v35;
      v31 = v34;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
}

void sub_22C7936D8()
{
  sub_22C370030();
  sub_22C387550();
  v4 = &qword_27D9C00C8;
  v5 = sub_22C3A5908(&qword_27D9C00C8, &qword_22C925EB0);
  sub_22C369914(v5);
  v7 = *(v6 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v8);
  v9 = sub_22C79D010();
  v10 = type metadata accessor for ContextualEntityRenderingData(v9);
  v11 = sub_22C369824(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22C3698E4();
  sub_22C3857BC();
  v15 = MEMORY[0x28223BE20](v14);
  sub_22C37FA78(v15, v16, v17, v18, v19, v20, v21, v22, v41);
  v23 = 0;
  v24 = *(v1 + 16);
  while (v24 != v23)
  {
    v25 = sub_22C9081CC();
    sub_22C3699B8(v25);
    v27 = v26;
    v29 = v28;
    v30 = v1 + ((*(v27 + 80) + 32) & ~*(v27 + 80));
    v31 = *(v29 + 72);
    sub_22C3817EC();
    v2();
    if (v0)
    {
      sub_22C79D084();
      break;
    }

    v32 = sub_22C79D024();
    if (v34)
    {
      sub_22C36DD28(v3, &qword_27D9C00C8, &qword_22C925EB0);
      ++v23;
    }

    else
    {
      sub_22C386AE8(v32, v33, type metadata accessor for ContextualEntityRenderingData);
      sub_22C382DE4();
      v35 = sub_22C385FC4();
      if ((v35 & 1) == 0)
      {
        sub_22C36D270();
        sub_22C593624();
        v4 = v40;
      }

      sub_22C79D05C();
      if (v36)
      {
        sub_22C376978();
        sub_22C593624();
      }

      ++v23;
      sub_22C375B4C();
      sub_22C3737EC();
      sub_22C79CFB4(v39, v37 + v38 * v4, type metadata accessor for ContextualEntityRenderingData);
      v4 = &qword_27D9C00C8;
    }
  }

  sub_22C38AB44();
  sub_22C36FB20();
}

void sub_22C793964()
{
  sub_22C370030();
  sub_22C387550();
  v6 = sub_22C3A5908(&qword_27D9BF610, &qword_22C922B50);
  sub_22C369914(v6);
  v8 = *(v7 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v9);
  sub_22C79D010();
  v10 = sub_22C9025EC();
  v11 = sub_22C369824(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22C37873C(v14, v40);
  v16 = MEMORY[0x28223BE20](v15);
  sub_22C36A344(v16, v17, v18, v19, v20, v21, v22, v23, v41);
  while (v3 != v5)
  {
    v24 = sub_22C901FAC();
    sub_22C3699B8(v24);
    v26 = v25;
    v28 = v27;
    v29 = v1 + ((*(v26 + 80) + 32) & ~*(v26 + 80));
    v30 = *(v28 + 72);
    v31 = sub_22C3828CC(v29);
    v2(v31);
    if (v0)
    {
      sub_22C79D084();
      break;
    }

    sub_22C79D024();
    if (v32)
    {
      sub_22C36DD28(v4, &qword_27D9BF610, &qword_22C922B50);
      ++v5;
    }

    else
    {
      v33 = sub_22C36C3A4();
      (qword_22C922B50)(v33);
      v34 = sub_22C380034();
      (qword_22C922B50)(v34);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_22C372D64();
        sub_22C594FB4();
      }

      sub_22C79D048();
      if (v36)
      {
        sub_22C36DAD0();
        sub_22C594FB4();
        sub_22C79D078(v39);
      }

      v37 = sub_22C36B6D8();
      v38(v37);
    }
  }

  sub_22C38AB44();
  sub_22C36FB20();
}

void sub_22C793B68()
{
  sub_22C370030();
  sub_22C387550();
  v6 = sub_22C3A5908(&qword_27D9BF7F0, &qword_22C925EA0);
  sub_22C369914(v6);
  v8 = *(v7 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v9);
  sub_22C79D010();
  v10 = sub_22C90665C();
  v11 = sub_22C369824(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22C37873C(v14, v40);
  v16 = MEMORY[0x28223BE20](v15);
  sub_22C36A344(v16, v17, v18, v19, v20, v21, v22, v23, v41);
  while (v3 != v5)
  {
    v24 = sub_22C900BDC();
    sub_22C3699B8(v24);
    v26 = v25;
    v28 = v27;
    v29 = v1 + ((*(v26 + 80) + 32) & ~*(v26 + 80));
    v30 = *(v28 + 72);
    v31 = sub_22C3828CC(v29);
    v2(v31);
    if (v0)
    {
      sub_22C79D084();
      break;
    }

    sub_22C79D024();
    if (v32)
    {
      sub_22C36DD28(v4, &qword_27D9BF7F0, &qword_22C925EA0);
      ++v5;
    }

    else
    {
      v33 = sub_22C36C3A4();
      (qword_22C925EA0)(v33);
      v34 = sub_22C380034();
      (qword_22C925EA0)(v34);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_22C372D64();
        sub_22C59507C();
      }

      sub_22C79D048();
      if (v36)
      {
        sub_22C36DAD0();
        sub_22C59507C();
        sub_22C79D078(v39);
      }

      v37 = sub_22C36B6D8();
      v38(v37);
    }
  }

  sub_22C38AB44();
  sub_22C36FB20();
}

void sub_22C793D6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22C370030();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v63 = v26;
  v27 = sub_22C3A5908(&qword_27D9BB628, &unk_22C920580);
  sub_22C369914(v27);
  v29 = *(v28 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v30);
  sub_22C79D010();
  v64 = sub_22C908C5C();
  v31 = sub_22C3699B8(v64);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  sub_22C3698E4();
  v62 = v34;
  sub_22C369930();
  MEMORY[0x28223BE20](v35);
  sub_22C36BA64();
  v59 = v36;
  v38 = v25 + 56;
  v37 = *(v25 + 56);
  v39 = *(v25 + 32);
  sub_22C36D280();
  v42 = v41 & v40;
  v44 = (v43 + 63) >> 6;
  v61 = (v45 + 32);

  v46 = 0;
  v65 = MEMORY[0x277D84F90];
  v60 = v25;
  if (!v42)
  {
    goto LABEL_2;
  }

  do
  {
LABEL_6:
    a10 = *(*(v25 + 48) + ((v46 << 9) | (8 * __clz(__rbit64(v42)))));

    v63(&a10);
    if (v20)
    {

LABEL_17:
      sub_22C36FB20();
      return;
    }

    if (sub_22C370B74(v21, 1, v64) == 1)
    {
      sub_22C36DD28(v21, &qword_27D9BB628, &unk_22C920580);
    }

    else
    {
      v48 = v21;
      v49 = *v61;
      v50 = v48;
      (*v61)(v59);
      (v49)(v62, v59, v64);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_22C377B6C(isUniquelyReferenced_nonNull_native, v52, v53, v65);
        sub_22C59539C();
        v65 = v57;
      }

      v54 = *(v65 + 16);
      if (v54 >= *(v65 + 24) >> 1)
      {
        sub_22C59539C();
        v65 = v58;
      }

      *(v65 + 16) = v54 + 1;
      sub_22C3737EC();
      (v49)(v55 + v56 * v54, v62);
      v25 = v60;
      v21 = v50;
    }

    v42 &= v42 - 1;
  }

  while (v42);
LABEL_2:
  while (1)
  {
    v47 = v46 + 1;
    if (__OFADD__(v46, 1))
    {
      break;
    }

    if (v47 >= v44)
    {

      goto LABEL_17;
    }

    v42 = *(v38 + 8 * v47);
    ++v46;
    if (v42)
    {
      v46 = v47;
      goto LABEL_6;
    }
  }

  __break(1u);
}

void sub_22C794054()
{
  sub_22C370030();
  v38 = v2;
  v4 = v3;
  v6 = v5;
  v45 = v8;
  v46 = v7;
  v44 = v9;
  v10 = sub_22C3A5908(v9, v8);
  sub_22C369914(v10);
  v12 = *(v11 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v13);
  v14 = sub_22C374FF8();
  v47 = v4(v14);
  v15 = sub_22C369824(v47);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  sub_22C3698E4();
  v41 = v20;
  sub_22C369930();
  MEMORY[0x28223BE20](v21);
  sub_22C36BA64();
  v40 = v22;
  v23 = 0;
  v24 = v6;
  v25 = *(v6 + 16);
  v42 = (v17 + 32);
  v43 = MEMORY[0x277D84F90];
  while (v25 != v23)
  {
    v26 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    v27 = *(v17 + 72);
    v46(v24 + v26 + v27 * v23);
    if (v0)
    {

      break;
    }

    if (sub_22C370B74(v1, 1, v47) == 1)
    {
      sub_22C36DD28(v1, v44, v45);
      ++v23;
    }

    else
    {
      v39 = *v42;
      (*v42)(v40, v1, v47);
      v39(v41, v40, v47);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v34 = sub_22C377B6C(isUniquelyReferenced_nonNull_native, v29, v30, v43);
        v43 = v38(v34);
      }

      v32 = *(v43 + 16);
      v31 = *(v43 + 24);
      v33 = v32 + 1;
      if (v32 >= v31 >> 1)
      {
        v36 = *(v43 + 16);
        v37 = v32 + 1;
        v35 = (v38)(v31 > 1, v32 + 1, 1, v43);
        v32 = v36;
        v33 = v37;
        v43 = v35;
      }

      ++v23;
      *(v43 + 16) = v33;
      v39(v43 + v26 + v32 * v27, v41, v47);
    }
  }

  sub_22C38AB44();
  sub_22C36FB20();
}

void sub_22C7942D4()
{
  sub_22C370030();
  sub_22C387550();
  v6 = sub_22C3A5908(&qword_27D9BC0A0, &unk_22C922F30);
  sub_22C369914(v6);
  v8 = *(v7 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v9);
  sub_22C79D010();
  v10 = sub_22C906ECC();
  v11 = sub_22C369824(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22C37873C(v14, v40);
  v16 = MEMORY[0x28223BE20](v15);
  sub_22C36A344(v16, v17, v18, v19, v20, v21, v22, v23, v41);
  while (v3 != v5)
  {
    v24 = sub_22C901FAC();
    sub_22C3699B8(v24);
    v26 = v25;
    v28 = v27;
    v29 = v1 + ((*(v26 + 80) + 32) & ~*(v26 + 80));
    v30 = *(v28 + 72);
    v31 = sub_22C3828CC(v29);
    v2(v31);
    if (v0)
    {
      sub_22C79D084();
      break;
    }

    sub_22C79D024();
    if (v32)
    {
      sub_22C36DD28(v4, &qword_27D9BC0A0, &unk_22C922F30);
      ++v5;
    }

    else
    {
      v33 = sub_22C36C3A4();
      (unk_22C922F30)(v33);
      v34 = sub_22C380034();
      (unk_22C922F30)(v34);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_22C372D64();
        sub_22C590A30();
      }

      sub_22C79D048();
      if (v36)
      {
        sub_22C36DAD0();
        sub_22C590A30();
        sub_22C79D078(v39);
      }

      v37 = sub_22C36B6D8();
      v38(v37);
    }
  }

  sub_22C38AB44();
  sub_22C36FB20();
}

void sub_22C7944D8()
{
  sub_22C370030();
  sub_22C387550();
  v6 = sub_22C3A5908(&qword_27D9BB908, &qword_22C910960);
  sub_22C369914(v6);
  v8 = *(v7 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v9);
  sub_22C79D010();
  v10 = sub_22C9093BC();
  v11 = sub_22C369824(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22C37873C(v14, v40);
  v16 = MEMORY[0x28223BE20](v15);
  sub_22C36A344(v16, v17, v18, v19, v20, v21, v22, v23, v41);
  while (v3 != v5)
  {
    v24 = sub_22C90827C();
    sub_22C3699B8(v24);
    v26 = v25;
    v28 = v27;
    v29 = v1 + ((*(v26 + 80) + 32) & ~*(v26 + 80));
    v30 = *(v28 + 72);
    v31 = sub_22C3828CC(v29);
    v2(v31);
    if (v0)
    {
      sub_22C79D084();
      break;
    }

    sub_22C79D024();
    if (v32)
    {
      sub_22C36DD28(v4, &qword_27D9BB908, &qword_22C910960);
      ++v5;
    }

    else
    {
      v33 = sub_22C36C3A4();
      (qword_22C910960)(v33);
      v34 = sub_22C380034();
      (qword_22C910960)(v34);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_22C372D64();
        sub_22C5903C0();
      }

      sub_22C79D048();
      if (v36)
      {
        sub_22C36DAD0();
        sub_22C5903C0();
        sub_22C79D078(v39);
      }

      v37 = sub_22C36B6D8();
      v38(v37);
    }
  }

  sub_22C38AB44();
  sub_22C36FB20();
}

void sub_22C7946DC()
{
  sub_22C370030();
  sub_22C387550();
  v6 = sub_22C3A5908(&qword_27D9BB908, &qword_22C910960);
  sub_22C369914(v6);
  v8 = *(v7 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v9);
  sub_22C79D010();
  v10 = sub_22C9093BC();
  v11 = sub_22C369824(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22C37873C(v14, v40);
  v16 = MEMORY[0x28223BE20](v15);
  sub_22C36A344(v16, v17, v18, v19, v20, v21, v22, v23, v41);
  while (v3 != v5)
  {
    v24 = sub_22C900B4C();
    sub_22C3699B8(v24);
    v26 = v25;
    v28 = v27;
    v29 = v1 + ((*(v26 + 80) + 32) & ~*(v26 + 80));
    v30 = *(v28 + 72);
    v31 = sub_22C3828CC(v29);
    v2(v31);
    if (v0)
    {
      sub_22C79D084();
      break;
    }

    sub_22C79D024();
    if (v32)
    {
      sub_22C36DD28(v4, &qword_27D9BB908, &qword_22C910960);
      ++v5;
    }

    else
    {
      v33 = sub_22C36C3A4();
      (qword_22C910960)(v33);
      v34 = sub_22C380034();
      (qword_22C910960)(v34);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_22C372D64();
        sub_22C5903C0();
      }

      sub_22C79D048();
      if (v36)
      {
        sub_22C36DAD0();
        sub_22C5903C0();
        sub_22C79D078(v39);
      }

      v37 = sub_22C36B6D8();
      v38(v37);
    }
  }

  sub_22C38AB44();
  sub_22C36FB20();
}

void sub_22C7948E0()
{
  sub_22C370030();
  sub_22C387550();
  v4 = &qword_27D9C00A0;
  v5 = sub_22C3A5908(&qword_27D9C00A0, &qword_22C925E90);
  sub_22C369914(v5);
  v7 = *(v6 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v8);
  v9 = sub_22C79D010();
  DecorationTupleParameter = type metadata accessor for QueryDecorationTupleParameter(v9);
  v11 = sub_22C369824(DecorationTupleParameter);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22C3698E4();
  sub_22C3857BC();
  v15 = MEMORY[0x28223BE20](v14);
  sub_22C37FA78(v15, v16, v17, v18, v19, v20, v21, v22, v41);
  v23 = 0;
  v24 = *(v1 + 16);
  while (v24 != v23)
  {
    DecorationEntity = type metadata accessor for QueryDecorationEntity(0);
    sub_22C3699B8(DecorationEntity);
    v27 = v26;
    v29 = v28;
    v30 = v1 + ((*(v27 + 80) + 32) & ~*(v27 + 80));
    v31 = *(v29 + 72);
    sub_22C3817EC();
    v2();
    if (v0)
    {
      sub_22C79D084();
      break;
    }

    v32 = sub_22C79D024();
    if (v34)
    {
      sub_22C36DD28(v3, &qword_27D9C00A0, &qword_22C925E90);
      ++v23;
    }

    else
    {
      sub_22C386AE8(v32, v33, type metadata accessor for QueryDecorationTupleParameter);
      sub_22C382DE4();
      v35 = sub_22C385FC4();
      if ((v35 & 1) == 0)
      {
        sub_22C36D270();
        sub_22C595FAC();
        v4 = v40;
      }

      sub_22C79D05C();
      if (v36)
      {
        sub_22C376978();
        sub_22C595FAC();
      }

      ++v23;
      sub_22C375B4C();
      sub_22C3737EC();
      sub_22C79CFB4(v39, v37 + v38 * v4, type metadata accessor for QueryDecorationTupleParameter);
      v4 = &qword_27D9C00A0;
    }
  }

  sub_22C38AB44();
  sub_22C36FB20();
}

void sub_22C794B1C()
{
  sub_22C370030();
  v3 = v2;
  v5 = v4;
  v6 = sub_22C3A5908(&qword_27D9BD2A8, &qword_22C920540);
  sub_22C369914(v6);
  v8 = *(v7 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v9);
  sub_22C37F348();
  v10 = sub_22C9037EC();
  v11 = sub_22C369824(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22C3698E4();
  sub_22C3857BC();
  MEMORY[0x28223BE20](v14);
  sub_22C36BA64();
  sub_22C79D0F8(v15);
  v16 = 0;
  v17 = *(v3 + 16);
  v33 = (v18 + 32);
  v19 = v3 + 32;
  v36 = MEMORY[0x277D84F90];
  for (i = v3 + 32; ; v19 = i)
  {
    v20 = ~v16;
    v21 = v19 + 40 * v16;
    v22 = v17 - v16;
    if (!v22)
    {
      break;
    }

    while (1)
    {
      v5(v21);
      if (v0)
      {
        sub_22C79D084();
        goto LABEL_15;
      }

      if (sub_22C370B74(v1, 1, v10) != 1)
      {
        break;
      }

      sub_22C36DD28(v1, &qword_27D9BD2A8, &qword_22C920540);
      --v20;
      v21 += 40;
      if (!--v22)
      {
        goto LABEL_15;
      }
    }

    v23 = *v33;
    (*v33)(v34, v1, v10);
    v31 = v23;
    v23(v35, v34, v10);
    v24 = v36;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v28 = *(v36 + 16);
      sub_22C36D270();
      sub_22C590968();
      v24 = v29;
    }

    v25 = *(v24 + 16);
    if (v25 >= *(v24 + 24) >> 1)
    {
      sub_22C37B798();
      sub_22C590968();
      v36 = v30;
    }

    else
    {
      v36 = v24;
    }

    v16 = -v20;
    sub_22C375B4C();
    sub_22C3737EC();
    v31(v26 + v27 * v25, v35, v10);
  }

LABEL_15:
  sub_22C38AB44();
  sub_22C36FB20();
}

void sub_22C794D80()
{
  sub_22C370030();
  v2 = v1;
  v40 = v3;
  v41 = sub_22C9093BC();
  v4 = sub_22C369824(v41);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22C369838();
  v11 = v10 - v9;
  v13 = v2 + 56;
  v12 = *(v2 + 56);
  v14 = *(v2 + 32);
  sub_22C36D280();
  v17 = v16 & v15;
  v19 = (v18 + 63) >> 6;
  v44 = v2;

  v20 = 0;
  v39 = MEMORY[0x277D84F90];
  while (v17)
  {
    v21 = v41;
LABEL_9:
    (*(v6 + 16))(v11, *(v44 + 48) + *(v6 + 72) * (__clz(__rbit64(v17)) | (v20 << 6)), v21);
    v40(&v42, v11);
    if (v0)
    {
      v34 = sub_22C37E7D4();
      v35(v34);

LABEL_17:

      sub_22C36FB20();
      return;
    }

    v17 &= v17 - 1;
    v23 = sub_22C37E7D4();
    v24(v23);
    v25 = v43;
    if (v43)
    {
      v38 = v42;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_22C377B6C(isUniquelyReferenced_nonNull_native, v27, v28, v39);
        sub_22C590270();
        v39 = v32;
      }

      v29 = *(v39 + 16);
      v30 = v29 + 1;
      if (v29 >= *(v39 + 24) >> 1)
      {
        v36 = *(v39 + 16);
        v37 = v29 + 1;
        sub_22C590270();
        v29 = v36;
        v30 = v37;
        v39 = v33;
      }

      *(v39 + 16) = v30;
      v31 = v39 + 16 * v29;
      *(v31 + 32) = v38;
      *(v31 + 40) = v25;
    }
  }

  v21 = v41;
  while (1)
  {
    v22 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v22 >= v19)
    {
      goto LABEL_17;
    }

    v17 = *(v13 + 8 * v22);
    ++v20;
    if (v17)
    {
      v20 = v22;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_22C794FBC()
{
  sub_22C370030();
  sub_22C387550();
  v4 = &qword_27D9C00D0;
  v5 = sub_22C3A5908(&qword_27D9C00D0, &qword_22C925EB8);
  sub_22C369914(v5);
  v7 = *(v6 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v8);
  sub_22C79D010();
  DecorationDynamicEnumerationQuery = type metadata accessor for QueryDecorationDynamicEnumerationQuery();
  v10 = sub_22C369824(DecorationDynamicEnumerationQuery);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22C3698E4();
  sub_22C3857BC();
  v14 = MEMORY[0x28223BE20](v13);
  sub_22C37FA78(v14, v15, v16, v17, v18, v19, v20, v21, v40);
  v22 = 0;
  v23 = *(v1 + 16);
  while (v23 != v22)
  {
    v24 = sub_22C90969C();
    sub_22C3699B8(v24);
    v26 = v25;
    v28 = v27;
    v29 = v1 + ((*(v26 + 80) + 32) & ~*(v26 + 80));
    v30 = *(v28 + 72);
    sub_22C3817EC();
    v2();
    if (v0)
    {
      sub_22C79D084();
      break;
    }

    v31 = sub_22C79D024();
    if (v33)
    {
      sub_22C36DD28(v3, &qword_27D9C00D0, &qword_22C925EB8);
      ++v22;
    }

    else
    {
      sub_22C386AE8(v31, v32, type metadata accessor for QueryDecorationDynamicEnumerationQuery);
      sub_22C382DE4();
      v34 = sub_22C385FC4();
      if ((v34 & 1) == 0)
      {
        sub_22C36D270();
        sub_22C592D78();
        v4 = v39;
      }

      sub_22C79D05C();
      if (v35)
      {
        sub_22C376978();
        sub_22C592D78();
      }

      ++v22;
      sub_22C375B4C();
      sub_22C3737EC();
      sub_22C79CFB4(v38, v36 + v37 * v4, type metadata accessor for QueryDecorationDynamicEnumerationQuery);
      v4 = &qword_27D9C00D0;
    }
  }

  sub_22C38AB44();
  sub_22C36FB20();
}

void sub_22C7951F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_22C388D90();
  a21 = v25;
  a22 = v26;
  sub_22C37BF7C();
  v27 = 0;
  v29 = *(v28 + 16);
  v30 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v29 == v27)
    {
      goto LABEL_13;
    }

    if (v27 >= v29)
    {
      break;
    }

    v31 = *(sub_22C9093BC() - 8);
    v32 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      goto LABEL_15;
    }

    v24(&a12, v23 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v27);
    if (v22)
    {

LABEL_13:
      sub_22C79D104();
      return;
    }

    v33 = a12;
    ++v27;
    if (a12)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v36 = *(v30 + 16);
        sub_22C36D270();
        sub_22C596CD0();
        v30 = v37;
      }

      v34 = *(v30 + 16);
      v35 = v34 + 1;
      if (v34 >= *(v30 + 24) >> 1)
      {
        sub_22C37B798();
        sub_22C596CD0();
        v35 = v34 + 1;
        v30 = v38;
      }

      *(v30 + 16) = v35;
      *(v30 + 8 * v34 + 32) = v33;
      v27 = v32;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
}

uint64_t sub_22C79533C()
{
  v0 = sub_22C9001FC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  sub_22C9001BC();
  sub_22C79C97C(&qword_27D9C0068, MEMORY[0x277CC8B30]);
  sub_22C90A93C();
  sub_22C90A97C();
  sub_22C79C97C(&qword_27D9C0070, MEMORY[0x277CC8C20]);
  v8 = sub_22C90A0BC();
  v9 = *(v1 + 8);
  v9(v5, v0);
  v9(v7, v0);
  return v8 & 1;
}

uint64_t sub_22C7954F0(uint64_t a1, void *a2)
{
  v53 = a2;
  v48 = sub_22C9001BC();
  v3 = *(v48 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v48);
  v47 = v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22C3A5908(&qword_27D9BB610, &qword_22C925BC0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v42 - v8;
  v10 = sub_22C90021C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v52 = v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = v42 - v15;
  result = sub_22C36E2B8(a1);
  v18 = result;
  v19 = 0;
  v20 = a1 & 0xC000000000000001;
  v55 = a1 & 0xFFFFFFFFFFFFFF8;
  v54 = (v11 + 32);
  v45 = a1;
  v46 = (v3 + 8);
  v49 = (v11 + 8);
  v50 = a1 & 0xC000000000000001;
  v43 = (v11 + 16);
  v44 = v11;
  v51 = result;
  while (v18 != v19)
  {
    if (v20)
    {
      result = MEMORY[0x2318B8460](v19, a1);
    }

    else
    {
      if (v19 >= *(v55 + 16))
      {
        goto LABEL_21;
      }

      v21 = *(a1 + 8 * v19 + 32);
    }

    if (__OFADD__(v19, 1))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      return result;
    }

    sub_22C797AEC(result, v22, v23, v24, v25, v26, v27, v28, v42[0], v42[1], v43, v44, v45, v46, v47, v48, v49, v50, v51, v52);
    if (sub_22C370B74(v9, 1, v10) == 1)
    {
      sub_22C36DD28(v9, &qword_27D9BB610, &qword_22C925BC0);
    }

    else
    {
      v29 = *v54;
      (*v54)(v16, v9, v10);
      v30 = v47;
      sub_22C90019C();
      v31 = sub_22C9001AC();
      (*v46)(v30, v48);
      if (v31 <= 0)
      {
        (*v49)(v16, v10);
      }

      else
      {
        (*v43)(v52, v16, v10);
        v32 = v53;
        v33 = *v53;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v32 = v33;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v39 = *(v33 + 16);
          sub_22C59552C();
          v33 = v40;
          *v53 = v40;
        }

        v35 = *(v33 + 16);
        if (v35 >= *(v33 + 24) >> 1)
        {
          sub_22C59552C();
          *v53 = v41;
        }

        v36 = v44;
        (*(v44 + 8))(v16, v10);
        v37 = v52;
        v38 = *v53;
        *(v38 + 16) = v35 + 1;
        v29((v38 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v35), v37, v10);
        a1 = v45;
      }

      v20 = v50;
      v18 = v51;
    }

    ++v19;
  }

  return result;
}

uint64_t PayloadLayout.__allocating_init(heading:key:nestedLayout:leafString:leafDictionary:leafCollection:indent:preserveHeaderFormatting:preserveKeyFormatting:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, char a9)
{
  v18 = *(v9 + 48);
  v19 = *(v9 + 52);
  v20 = swift_allocObject();
  PayloadLayout.init(heading:key:nestedLayout:leafString:leafDictionary:leafCollection:indent:preserveHeaderFormatting:preserveKeyFormatting:)(a1, a2, a3, a4, a5, a6, a7, a8, a9);
  return v20;
}

uint64_t PayloadLayout.init(heading:key:nestedLayout:leafString:leafDictionary:leafCollection:indent:preserveHeaderFormatting:preserveKeyFormatting:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, char a9)
{
  v10 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime13PayloadLayout_heading;
  v11 = sub_22C90021C();
  sub_22C36A748();
  sub_22C36C640(v12, v13, v14, v11);
  v15 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime13PayloadLayout_key;
  sub_22C36A748();
  sub_22C36C640(v16, v17, v18, v11);
  v19 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime13PayloadLayout_nestedLayout;
  *(v9 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime13PayloadLayout_nestedLayout) = 0;
  v20 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime13PayloadLayout_leafString;
  sub_22C36A748();
  sub_22C36C640(v21, v22, v23, v11);
  v24 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime13PayloadLayout_leafDictionary;
  *(v9 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime13PayloadLayout_leafDictionary) = 0;
  v25 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime13PayloadLayout_leafCollection;
  *(v9 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime13PayloadLayout_leafCollection) = 0;
  v26 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime13PayloadLayout_indent;
  *(v9 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime13PayloadLayout_indent) = 0;
  v27 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime13PayloadLayout_preserveHeaderFormatting;
  *(v9 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime13PayloadLayout_preserveHeaderFormatting) = 0;
  v28 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime13PayloadLayout_preserveKeyFormatting;
  *(v9 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime13PayloadLayout_preserveKeyFormatting) = 0;
  sub_22C79D0C0();
  sub_22C795B4C(a1, v9 + v10);
  swift_endAccess();
  sub_22C79D0C0();
  sub_22C795B4C(a2, v9 + v15);
  swift_endAccess();
  v29 = *(v9 + v19);
  *(v9 + v19) = a3;

  sub_22C79D0C0();
  sub_22C795B4C(a4, v9 + v20);
  swift_endAccess();
  v30 = *(v9 + v24);
  *(v9 + v24) = a5;

  v31 = *(v9 + v25);
  *(v9 + v25) = a6;

  *(v9 + v26) = a7;
  *(v9 + v27) = a8;
  *(v9 + v28) = a9;
  return v9;
}

uint64_t sub_22C795B4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9BB610, &qword_22C925BC0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_22C795BBC()
{
  sub_22C36BA7C();
  v2 = v0;
  v3 = sub_22C9001BC();
  v4 = sub_22C369824(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22C369838();
  sub_22C37BDA4();
  v9 = sub_22C90021C();
  v10 = sub_22C369824(v9);
  v40 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22C369838();
  v16 = v15 - v14;
  v17 = sub_22C3A5908(&qword_27D9BB610, &qword_22C925BC0);
  v18 = sub_22C369914(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  sub_22C369ABC();
  v23 = v21 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v37 - v25;
  v27 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime13PayloadLayout_nestedLayout;
  if (*(v2 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime13PayloadLayout_nestedLayout))
  {
    goto LABEL_6;
  }

  v38 = v6;
  v39 = v3;
  v28 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime13PayloadLayout_leafString;
  sub_22C36CA70();
  sub_22C4E719C(v2 + v28, v26, &qword_27D9BB610, &qword_22C925BC0);
  LODWORD(v28) = sub_22C370B74(v26, 1, v9);
  sub_22C36DD28(v26, &qword_27D9BB610, &qword_22C925BC0);
  if (v28 == 1 && !*(v2 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime13PayloadLayout_leafDictionary) && !*(v2 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime13PayloadLayout_leafCollection))
  {
    goto LABEL_15;
  }

  v6 = v38;
  v3 = v39;
  if (*(v2 + v27))
  {
LABEL_6:

    v30 = sub_22C795BBC(v29);

    if ((v30 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  v31 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime13PayloadLayout_leafString;
  sub_22C36CA70();
  sub_22C4E719C(v2 + v31, v23, &qword_27D9BB610, &qword_22C925BC0);
  sub_22C36D0A8(v23, 1, v9);
  if (v32)
  {
    sub_22C36DD28(v23, &qword_27D9BB610, &qword_22C925BC0);
  }

  else
  {
    v33 = v40;
    (*(v40 + 32))(v16, v23, v9);
    sub_22C90019C();
    v34 = sub_22C9001AC();
    (*(v6 + 8))(v1, v3);
    (*(v33 + 8))(v16, v9);
    if (v34 > 0)
    {
      goto LABEL_15;
    }
  }

  v35 = *(v2 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime13PayloadLayout_leafDictionary);
  if (!v35 || !*(v35 + 16))
  {
    v36 = *(v2 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime13PayloadLayout_leafCollection);
    if (v36)
    {
      *(v36 + 16);
    }
  }

LABEL_15:
  sub_22C36CC48();
}

uint64_t sub_22C795EF0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime13PayloadLayout_leafString;
  sub_22C36CA70();
  return sub_22C4E719C(v1 + v3, a1, &qword_27D9BB610, &qword_22C925BC0);
}

uint64_t sub_22C795FB0(uint64_t a1, char a2, uint64_t *a3, void *a4)
{
  v9 = sub_22C3A5908(&qword_27D9BB610, &qword_22C925BC0);
  sub_22C369914(v9);
  v11 = *(v10 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v12);
  v14 = &v22 - v13;
  v15 = sub_22C90021C();
  sub_22C36985C(v15);
  (*(v16 + 16))(v14, a1, v15);
  sub_22C36BECC();
  sub_22C36C640(v17, v18, v19, v15);
  v20 = *a3;
  sub_22C79D0C0();
  sub_22C795B4C(v14, v4 + v20);
  swift_endAccess();
  *(v4 + *a4) = a2;
}

uint64_t sub_22C7960DC(uint64_t a1, uint64_t a2, char a3, uint64_t *a4, void *a5)
{
  v9 = sub_22C90026C();
  v10 = sub_22C369914(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22C369838();
  v13 = sub_22C3A5908(&qword_27D9BB610, &qword_22C925BC0);
  sub_22C369914(v13);
  v15 = *(v14 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v16);
  v18 = &v25 - v17;

  sub_22C90025C();
  sub_22C90022C();
  sub_22C90021C();
  sub_22C36BECC();
  sub_22C36C640(v19, v20, v21, v22);
  v23 = *a4;
  sub_22C79D0C0();
  sub_22C795B4C(v18, v5 + v23);
  swift_endAccess();
  *(v5 + *a5) = a3;
}

uint64_t sub_22C796224(uint64_t a1, uint64_t *a2)
{
  v4 = sub_22C3A5908(&qword_27D9BB610, &qword_22C925BC0);
  sub_22C369914(v4);
  v6 = *(v5 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v7);
  v9 = &v20 - v8;
  v10 = sub_22C90021C();
  sub_22C36985C(v10);
  v12 = *(v11 + 16);
  v13 = sub_22C36BC58();
  v14(v13);
  sub_22C36BECC();
  sub_22C36C640(v15, v16, v17, v10);
  v18 = *a2;
  sub_22C79D0C0();
  sub_22C795B4C(v9, v2 + v18);
  swift_endAccess();
}

uint64_t sub_22C796320(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_22C90026C();
  v6 = sub_22C369914(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22C369838();
  sub_22C37BDA4();
  v9 = sub_22C3A5908(&qword_27D9BB610, &qword_22C925BC0);
  sub_22C369914(v9);
  v11 = *(v10 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v12);
  v14 = &v21 - v13;

  sub_22C90025C();
  sub_22C36BC58();
  sub_22C90022C();
  sub_22C90021C();
  sub_22C36BECC();
  sub_22C36C640(v15, v16, v17, v18);
  v19 = *a3;
  sub_22C79D0C0();
  sub_22C795B4C(v14, v3 + v19);
  swift_endAccess();
}

uint64_t sub_22C79643C(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime13PayloadLayout_nestedLayout);
  *(v1 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime13PayloadLayout_nestedLayout) = a1;
}

void sub_22C796494()
{
  sub_22C36BA7C();
  v81 = v0;
  v3 = v2;
  v4 = sub_22C3A5908(&qword_27D9C0050, &qword_22C925D98);
  sub_22C369914(v4);
  v6 = *(v5 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v7);
  sub_22C37BDA4();
  v8 = sub_22C3A5908(&qword_27D9BB610, &qword_22C925BC0);
  v9 = sub_22C369824(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22C3698E4();
  v90 = v12;
  sub_22C369930();
  MEMORY[0x28223BE20](v13);
  sub_22C36BA64();
  v84 = v14;
  sub_22C36BA0C();
  v15 = sub_22C90026C();
  v16 = sub_22C369914(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  sub_22C3698A8();
  sub_22C36BA0C();
  v19 = sub_22C90021C();
  v20 = sub_22C369824(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v20);
  sub_22C3698E4();
  v85 = v25;
  sub_22C369930();
  MEMORY[0x28223BE20](v26);
  sub_22C36BA64();
  sub_22C79D0F8(v27);
  sub_22C374FE0();
  v91 = v19;
  v82 = v8;
  sub_22C79C97C(v28, v29);
  v30 = sub_22C909F0C();
  v32 = v3 + 64;
  v31 = *(v3 + 64);
  v33 = *(v3 + 32);
  sub_22C36D280();
  v36 = v35 & v34;
  v38 = (v37 + 63) >> 6;
  v83 = v22;

  v39 = 0;
  v86 = v1;
  v87 = v38;
  v88 = v3;
  for (i = (v22 + 8); v36; v38 = v87)
  {
LABEL_6:
    v41 = (v39 << 10) | (16 * __clz(__rbit64(v36)));
    v42 = (*(v3 + 48) + v41);
    v43 = *v42;
    v44 = v42[1];
    v45 = (*(v3 + 56) + v41);
    if (v45[1])
    {
      v46 = *v45;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      sub_22C90025C();
      sub_22C90022C();
      sub_22C90025C();
      sub_22C90022C();
      sub_22C36BECC();
      sub_22C36C640(v47, v48, v49, v91);
      sub_22C4E7208(v84, v90, &qword_27D9BB610, &qword_22C925BC0);
      swift_isUniquelyReferenced_nonNull_native();
      sub_22C628E64();
      if (__OFADD__(v30[2], (v51 & 1) == 0))
      {
        goto LABEL_25;
      }

      v52 = v50;
      v53 = v51;
      sub_22C3A5908(&qword_27D9C0058, &qword_22C925DA0);
      sub_22C3813D4();
      if (sub_22C90B15C())
      {
        sub_22C628E64();
        v1 = v86;
        v56 = i;
        if ((v53 & 1) != (v55 & 1))
        {
          goto LABEL_27;
        }

        v52 = v54;
      }

      else
      {
        v1 = v86;
        v56 = i;
      }

      if (v53)
      {
        sub_22C375FFC();
        sub_22C795B4C(v90, v69 + v70 * v52);
        v71 = v91;
      }

      else
      {
        sub_22C36ED48(&v30[v52 >> 6]);
        v71 = v91;
        (*(v83 + 16))(v30[6] + *(v83 + 72) * v52, v92, v91);
        sub_22C375FFC();
        sub_22C4E7208(v90, v72 + v73 * v52, &qword_27D9BB610, &qword_22C925BC0);
        v74 = v30[2];
        v75 = __OFADD__(v74, 1);
        v76 = v74 + 1;
        if (v75)
        {
          goto LABEL_26;
        }

        v30[2] = v76;
      }

      (*v56)(v92, v71);
    }

    else
    {
      v57 = v1;
      swift_bridgeObjectRetain_n();
      sub_22C90025C();
      sub_22C90022C();
      sub_22C628E64();
      if (v59)
      {
        v60 = v58;
        swift_isUniquelyReferenced_nonNull_native();
        v61 = v30[3];
        sub_22C3A5908(&qword_27D9C0058, &qword_22C925DA0);
        sub_22C3813D4();
        v57 = v86;
        sub_22C90B15C();
        v62 = *(v83 + 8);
        v63 = v91;
        v62(v30[6] + *(v83 + 72) * v60, v91);
        sub_22C375FFC();
        sub_22C4E7208(v64 + v65 * v60, v86, &qword_27D9BB610, &qword_22C925BC0);
        sub_22C90B17C();
        sub_22C36BECC();
        sub_22C36C640(v66, v67, v68, v82);
      }

      else
      {
        sub_22C36A748();
        sub_22C36C640(v77, v78, v79, v82);
        v62 = *i;
        v63 = v91;
      }

      v62(v85, v63);
      sub_22C36DD28(v57, &qword_27D9C0050, &qword_22C925D98);
      v1 = v57;
    }

    v3 = v88;
    v36 &= v36 - 1;
  }

  while (1)
  {
    v40 = v39 + 1;
    if (__OFADD__(v39, 1))
    {
      break;
    }

    if (v40 >= v38)
    {

      v80 = *(v81 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime13PayloadLayout_leafDictionary);
      *(v81 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime13PayloadLayout_leafDictionary) = v30;

      sub_22C36CC48();
      return;
    }

    v36 = *(v32 + 8 * v40);
    ++v39;
    if (v36)
    {
      v39 = v40;
      goto LABEL_6;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  sub_22C90B54C();
  __break(1u);
}

void sub_22C796AB8()
{
  sub_22C36BA7C();
  v74 = v0;
  v2 = v1;
  v3 = sub_22C3A5908(&qword_27D9BB610, &qword_22C925BC0);
  v4 = sub_22C369824(v3);
  v68 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22C3698E4();
  v72 = v8;
  sub_22C369930();
  MEMORY[0x28223BE20](v9);
  sub_22C36BA64();
  v70 = v10;
  sub_22C36BA0C();
  v11 = sub_22C90026C();
  v12 = sub_22C369914(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  sub_22C3698A8();
  v69 = v15;
  sub_22C36BA0C();
  v16 = sub_22C90021C();
  v17 = sub_22C369824(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v17);
  sub_22C3698A8();
  v73 = v22;
  sub_22C374FE0();
  sub_22C79C97C(v23, v24);
  v71 = v16;
  v25 = sub_22C909F0C();
  v26 = *(v2 + 64);
  v27 = *(v2 + 32);
  sub_22C36D280();
  v30 = v29 & v28;
  v32 = (v31 + 63) >> 6;
  v65 = v19 + 16;
  v66 = v19;
  v67 = (v19 + 8);

  v33 = 0;
  while (v30)
  {
LABEL_7:
    v35 = __clz(__rbit64(v30));
    v30 &= v30 - 1;
    v36 = v35 | (v33 << 6);
    if (*(*(v2 + 56) + 8 * v36))
    {
      v37 = (*(v2 + 48) + 16 * v36);
      v39 = *v37;
      v38 = v37[1];
      swift_retain_n();

      sub_22C795BBC();
      if ((v40 & 1) == 0)
      {

        sub_22C90025C();
        v41 = sub_22C90022C();
        v42 = v70;
        sub_22C797AEC(v41, v43, v44, v45, v46, v47, v48, v49, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75);
        sub_22C4E7208(v42, v72, &qword_27D9BB610, &qword_22C925BC0);
        LODWORD(v64) = swift_isUniquelyReferenced_nonNull_native();
        v75 = v25;
        sub_22C628E64();
        HIDWORD(v64) = v51;
        if (__OFADD__(*(v25 + 16), (v51 & 1) == 0))
        {
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
LABEL_26:
          sub_22C90B54C();
          __break(1u);
          return;
        }

        v52 = v50;
        sub_22C3A5908(&qword_27D9C0058, &qword_22C925DA0);
        sub_22C3813D4();
        if (sub_22C90B15C())
        {
          sub_22C628E64();
          v55 = BYTE4(v64);
          if ((BYTE4(v64) & 1) != (v54 & 1))
          {
            goto LABEL_26;
          }

          v52 = v53;
        }

        else
        {
          v55 = BYTE4(v64);
        }

        if (v55)
        {
          v56 = sub_22C3883DC();
          sub_22C795B4C(v56, v57);
        }

        else
        {
          sub_22C36ED48(v25 + 8 * (v52 >> 6));
          (*(v66 + 16))(*(v25 + 48) + *(v66 + 72) * v52, v73, v71);
          v58 = sub_22C3883DC();
          sub_22C4E7208(v58, v59, &qword_27D9BB610, &qword_22C925BC0);
          v60 = *(v25 + 16);
          v61 = __OFADD__(v60, 1);
          v62 = v60 + 1;
          if (v61)
          {
            goto LABEL_25;
          }

          *(v25 + 16) = v62;
        }

        (*v67)(v73, v71);
      }
    }
  }

  while (1)
  {
    v34 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      __break(1u);
      goto LABEL_24;
    }

    if (v34 >= v32)
    {
      break;
    }

    v30 = *(v2 + 64 + 8 * v34);
    ++v33;
    if (v30)
    {
      v33 = v34;
      goto LABEL_7;
    }
  }

  if (*(v25 + 16))
  {
    v63 = *(v74 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime13PayloadLayout_leafDictionary);
    *(v74 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime13PayloadLayout_leafDictionary) = v25;
  }

  sub_22C36CC48();
}

void sub_22C796EF4()
{
  sub_22C36BA7C();
  v60 = v0;
  v2 = v1;
  v3 = sub_22C3A5908(&qword_27D9BB610, &qword_22C925BC0);
  v4 = sub_22C369824(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22C369ABC();
  v9 = v7 - v8;
  MEMORY[0x28223BE20](v10);
  sub_22C36BA64();
  v65 = v11;
  sub_22C36BA0C();
  v12 = sub_22C90026C();
  v13 = sub_22C369914(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  sub_22C3698A8();
  sub_22C36BA0C();
  v16 = sub_22C90021C();
  v17 = sub_22C369824(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v17);
  sub_22C3698A8();
  sub_22C79D0F8(v22);
  sub_22C374FE0();
  sub_22C79C97C(v23, v24);
  v25 = sub_22C909F0C();
  v27 = v2 + 64;
  v26 = *(v2 + 64);
  v28 = *(v2 + 32);
  sub_22C36D280();
  v31 = v30 & v29;
  v33 = (v32 + 63) >> 6;
  v61 = v19;
  v62 = (v19 + 8);
  v66 = v2;

  v34 = 0;
  v63 = v33;
  v64 = v2 + 64;
  if (v31)
  {
LABEL_6:
    while (1)
    {
      v36 = (v34 << 10) | (16 * __clz(__rbit64(v31)));
      v37 = (*(v66 + 48) + v36);
      v39 = *v37;
      v38 = v37[1];
      v40 = (*(v66 + 56) + v36);
      v41 = *v40;
      v42 = v40[1];
      swift_bridgeObjectRetain_n();

      sub_22C90025C();
      sub_22C90022C();

      sub_22C90025C();
      sub_22C90022C();
      sub_22C36BECC();
      sub_22C36C640(v43, v44, v45, v16);
      sub_22C4E7208(v65, v9, &qword_27D9BB610, &qword_22C925BC0);
      swift_isUniquelyReferenced_nonNull_native();
      sub_22C628E64();
      if (__OFADD__(*(v25 + 16), (v47 & 1) == 0))
      {
        break;
      }

      v48 = v46;
      v49 = v47;
      sub_22C3A5908(&qword_27D9C0058, &qword_22C925DA0);
      sub_22C3813D4();
      if (sub_22C90B15C())
      {
        sub_22C628E64();
        if ((v49 & 1) != (v51 & 1))
        {
          goto LABEL_20;
        }

        v48 = v50;
      }

      if (v49)
      {
        v52 = sub_22C79D0A8();
        sub_22C795B4C(v52, v53);
      }

      else
      {
        sub_22C36ED48(v25 + 8 * (v48 >> 6));
        (*(v61 + 16))(*(v25 + 48) + *(v61 + 72) * v48, v67, v16);
        v54 = sub_22C79D0A8();
        sub_22C4E7208(v54, v55, &qword_27D9BB610, &qword_22C925BC0);
        v56 = *(v25 + 16);
        v57 = __OFADD__(v56, 1);
        v58 = v56 + 1;
        if (v57)
        {
          goto LABEL_19;
        }

        *(v25 + 16) = v58;
      }

      v31 &= v31 - 1;
      (*v62)(v67, v16);

      v33 = v63;
      v27 = v64;
      if (!v31)
      {
        goto LABEL_2;
      }
    }
  }

  else
  {
LABEL_2:
    while (1)
    {
      v35 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v35 >= v33)
      {

        v59 = *(v60 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime13PayloadLayout_leafDictionary);
        *(v60 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime13PayloadLayout_leafDictionary) = v25;

        sub_22C36CC48();
        return;
      }

      v31 = *(v27 + 8 * v35);
      ++v34;
      if (v31)
      {
        v34 = v35;
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  sub_22C90B54C();
  __break(1u);
}

uint64_t sub_22C79735C(uint64_t a1, void *a2)
{
  v3 = *(v2 + *a2);
  *(v2 + *a2) = a1;
}

uint64_t sub_22C7973A4(uint64_t a1)
{
  v2 = 0;
  v3 = MEMORY[0x277D84F90];
  v14 = MEMORY[0x277D84F90];
  v4 = *(a1 + 16);
  v5 = a1 + 32;
  while (1)
  {
    if (v4 == v2)
    {
      v13 = v3;

      v12 = sub_22C79C884(v9);
      sub_22C79A050(&v12);
      sub_22C7954F0(v12, &v13);

      v10 = *(v1 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime13PayloadLayout_leafCollection);
      *(v1 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime13PayloadLayout_leafCollection) = v13;

      return v1;
    }

    if (v2 >= v4)
    {
      break;
    }

    v6 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      goto LABEL_11;
    }

    if (*(v5 + 8 * v2++))
    {
      v8 = swift_retain_n();
      MEMORY[0x2318B7AA0](v8);
      if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_22C90A61C();
      }

      sub_22C36EBF0();
      sub_22C90A65C();

      v2 = v6;
    }
  }

  __break(1u);
LABEL_11:
  __break(1u);

  __break(1u);
  return result;
}

void static PayloadLayout.< infix(_:_:)()
{
  sub_22C36BA7C();
  v83 = v2;
  v4 = v3;
  v81 = sub_22C9001BC();
  v5 = sub_22C36985C(v81);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22C3698A8();
  v80 = v8;
  v9 = sub_22C3A5908(&qword_27D9BB610, &qword_22C925BC0);
  v10 = sub_22C369914(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22C3698E4();
  v79 = v13;
  sub_22C369930();
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v77 - v16;
  MEMORY[0x28223BE20](v15);
  sub_22C38C344();
  MEMORY[0x28223BE20](v18);
  sub_22C36CAC0();
  v19 = sub_22C90021C();
  v20 = sub_22C369824(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v20);
  sub_22C3698E4();
  v77 = v25;
  sub_22C369930();
  MEMORY[0x28223BE20](v26);
  sub_22C36BA58();
  v82 = v27;
  sub_22C369930();
  MEMORY[0x28223BE20](v28);
  sub_22C36BA58();
  v78 = v29;
  sub_22C369930();
  MEMORY[0x28223BE20](v30);
  v32 = &v77 - v31;
  v33 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime13PayloadLayout_heading;
  sub_22C36CA70();
  sub_22C4E719C(v4 + v33, v1, &qword_27D9BB610, &qword_22C925BC0);
  sub_22C369A54(v1);
  if (v37)
  {
    v0 = v1;
  }

  else
  {
    v34 = *(v22 + 32);
    v34(v32, v1, v19);
    v35 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime13PayloadLayout_heading;
    v36 = v83;
    sub_22C36CA70();
    sub_22C4E719C(v36 + v35, v0, &qword_27D9BB610, &qword_22C925BC0);
    sub_22C369A54(v0);
    if (!v37)
    {
      v52 = v78;
      v34(v78, v0, v19);
      sub_22C90019C();
      sub_22C37396C();
      sub_22C79C97C(v53, v54);
      sub_22C90A48C();
      v55 = sub_22C90A1BC();
      v57 = v56;

      sub_22C90019C();
      sub_22C90A48C();
      v58 = sub_22C90A1BC();
      v60 = v59;

      if (v55 != v58 || v57 != v60)
      {
        sub_22C36EBF0();
        sub_22C90B4FC();
      }

      v73 = *(v22 + 8);
      v73(v52, v19);
      v74 = sub_22C36D390();
      (v73)(v74);
      goto LABEL_26;
    }

    v38 = *(v22 + 8);
    v39 = sub_22C36D390();
    v40(v39);
  }

  sub_22C36DD28(v0, &qword_27D9BB610, &qword_22C925BC0);
  v41 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime13PayloadLayout_key;
  sub_22C36CA70();
  sub_22C4E719C(v4 + v41, v17, &qword_27D9BB610, &qword_22C925BC0);
  sub_22C369A54(v17);
  if (v37)
  {
    v42 = v17;
LABEL_13:
    sub_22C36DD28(v42, &qword_27D9BB610, &qword_22C925BC0);
    goto LABEL_26;
  }

  v43 = *(v22 + 32);
  v43(v82, v17, v19);
  v44 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime13PayloadLayout_key;
  v45 = v83;
  sub_22C36CA70();
  v46 = v45 + v44;
  v47 = v79;
  sub_22C4E719C(v46, v79, &qword_27D9BB610, &qword_22C925BC0);
  sub_22C369A54(v47);
  if (v48)
  {
    v49 = *(v22 + 8);
    v50 = sub_22C36D390();
    v51(v50);
    v42 = v47;
    goto LABEL_13;
  }

  v62 = v77;
  v63 = sub_22C38A024();
  (v43)(v63);
  sub_22C90019C();
  sub_22C37396C();
  sub_22C79C97C(v64, v65);
  sub_22C90A48C();
  v66 = sub_22C90A1BC();
  v68 = v67;

  sub_22C90019C();
  sub_22C90A48C();
  v69 = sub_22C90A1BC();
  v71 = v70;

  if (v66 != v69 || v68 != v71)
  {
    sub_22C36BC58();
    sub_22C90B4FC();
  }

  v75 = *(v22 + 8);
  v75(v62, v19);
  v76 = sub_22C36D390();
  (v75)(v76);
LABEL_26:
  sub_22C36CC48();
}

void sub_22C797AEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22C36BA7C();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v253 = sub_22C9001FC();
  v26 = sub_22C369824(v253);
  v250 = v27;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v26);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v30);
  sub_22C36BA64();
  v251 = v31;
  v32 = sub_22C3A5908(&qword_27D9C0060, &unk_22C925DA8);
  v33 = sub_22C369914(v32);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  sub_22C369ABC();
  v38 = v36 - v37;
  MEMORY[0x28223BE20](v39);
  sub_22C36CAC0();
  v261 = sub_22C9001BC();
  v40 = sub_22C369824(v261);
  v242 = v41;
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v40);
  sub_22C3698A8();
  v260 = v44;
  v45 = sub_22C3A5908(&qword_27D9BB610, &qword_22C925BC0);
  v46 = sub_22C369914(v45);
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v46);
  sub_22C369ABC();
  v51 = (v49 - v50);
  MEMORY[0x28223BE20](v52);
  sub_22C36BA58();
  v262 = v53;
  sub_22C369930();
  MEMORY[0x28223BE20](v54);
  sub_22C36BA58();
  v258 = v55;
  sub_22C369930();
  MEMORY[0x28223BE20](v56);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v57);
  v59 = &v231 - v58;
  v60 = sub_22C90026C();
  v61 = sub_22C369914(v60);
  v63 = *(v62 + 64);
  MEMORY[0x28223BE20](v61);
  sub_22C369838();
  v263 = sub_22C90021C();
  v64 = sub_22C369824(v263);
  v259 = v65;
  v67 = *(v66 + 64);
  MEMORY[0x28223BE20](v64);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v68);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v69);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v70);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v71);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v72);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v73);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v74);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v75);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v76);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v77);
  sub_22C36BA58();
  v79 = v78;
  sub_22C369930();
  MEMORY[0x28223BE20](v80);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v81);
  sub_22C36BA58();
  sub_22C3698D4();
  v83 = MEMORY[0x28223BE20](v82);
  v85 = &v231 - v84;
  MEMORY[0x28223BE20](v83);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v86);
  sub_22C36BA64();
  v243 = v87;
  sub_22C9001CC();
  v264[10] = 0;
  v265 = 0xE000000000000000;
  v88 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime13PayloadLayout_indent;
  v245 = v20;
  v89 = *(v20 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime13PayloadLayout_indent);
  if ((v89 & 0x8000000000000000) == 0)
  {
    if (v89)
    {
      do
      {
        MEMORY[0x2318B7850](8224, 0xE200000000000000);
        --v89;
      }

      while (v89);
      v90 = v265;
    }

    else
    {
      v90 = 0xE000000000000000;
    }

    sub_22C90025C();
    sub_22C90022C();
    v91 = v245;
    sub_22C795BBC();
    if (v92)
    {

      v93 = *(v259 + 8);
      v94 = v243;
    }

    else
    {
      v246 = v90;
      v95 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime13PayloadLayout_heading;
      sub_22C36CA70();
      sub_22C4E719C(v91 + v95, v59, &qword_27D9BB610, &qword_22C925BC0);
      sub_22C36D0A8(v59, 1, v263);
      v238 = v25;
      v256 = v51;
      if (v96)
      {
        sub_22C36DD28(v59, &qword_27D9BB610, &qword_22C925BC0);
      }

      else
      {
        v25 = v259;
        v97 = *(v259 + 32);
        v98 = sub_22C3819EC();
        v97(v98);
        if ((*(v91 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime13PayloadLayout_preserveHeaderFormatting) & 1) == 0)
        {
          sub_22C90019C();
          sub_22C37396C();
          sub_22C79C97C(v99, v100);
          sub_22C90A48C();
          sub_22C38635C();
          sub_22C7993EC();

          (*(v25 + 8))(v85, v263);
          v101 = sub_22C3819EC();
          v97(v101);
        }

        sub_22C9001CC();
        sub_22C38635C();
        sub_22C9001DC();
        v102 = *(v25 + 8);
        sub_22C38A0E8();
        v102();
        sub_22C374FE0();
        sub_22C79C97C(v103, v104);
        sub_22C36EBF0();
        sub_22C90020C();
        v105 = sub_22C36EBF0();
        (v102)(v105);
        (v102)(v85, v51);
        v91 = v245;
        sub_22C386DC0();
      }

      v106 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime13PayloadLayout_key;
      sub_22C36CA70();
      v107 = v91 + v106;
      v108 = v255;
      sub_22C4E719C(v107, v255, &qword_27D9BB610, &qword_22C925BC0);
      sub_22C36D0A8(v108, 1, v263);
      v109 = v254;
      if (v96)
      {
        sub_22C36DD28(v108, &qword_27D9BB610, &qword_22C925BC0);
        v110 = v259;
      }

      else
      {
        v111 = v259;
        v112 = *(v259 + 32);
        v112(v79, v108, v263);
        sub_22C795BBC();
        if (v113)
        {
          v114 = sub_22C79D0D8(v111);
          v115(v114, v263);
          v110 = v111;
        }

        else
        {
          if ((*(v91 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime13PayloadLayout_preserveKeyFormatting) & 1) == 0)
          {
            sub_22C38C4AC();
            sub_22C799564();
            sub_22C79D0D8(v259);
            sub_22C38A0E8();
            v116();
            v112(v79, v91, v51);
          }

          v25 = v239;
          sub_22C9001DC();
          v117 = v233;
          sub_22C9001CC();
          sub_22C38635C();
          sub_22C38A024();
          sub_22C9001DC();
          v110 = v259;
          v118 = *(v259 + 8);
          sub_22C38A0E8();
          v118();
          v119 = sub_22C38A024();
          (v118)(v119);
          sub_22C79D09C();
          sub_22C9001EC();
          v120 = sub_22C36EBF0();
          (v118)(v120);
          (v118)(v79, v117);
          v109 = v254;
          sub_22C386DC0();
        }
      }

      v121 = v262;
      v122 = v258;
      if (*(v245 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime13PayloadLayout_nestedLayout))
      {
        v123 = *(v245 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime13PayloadLayout_nestedLayout);

        sub_22C797AEC(v124);
        sub_22C36D0A8(v122, 1, v263);
        if (v96)
        {

          sub_22C36DD28(v122, &qword_27D9BB610, &qword_22C925BC0);
        }

        else
        {
          v125 = v122;
          v126 = v263;
          (*(v110 + 32))(v247, v125, v263);
          sub_22C79D09C();
          sub_22C9001EC();

          v127 = sub_22C79D0D8(v110);
          v128(v127, v126);
        }
      }

      v129 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime13PayloadLayout_leafString;
      v130 = v245;
      sub_22C36CA70();
      sub_22C4E719C(v130 + v129, v121, &qword_27D9BB610, &qword_22C925BC0);
      sub_22C36D0A8(v121, 1, v263);
      if (v96)
      {
        sub_22C36DD28(v121, &qword_27D9BB610, &qword_22C925BC0);
        v131 = v259;
      }

      else
      {
        v131 = v259;
        v132 = v263;
        (*(v259 + 32))(v248, v121, v263);
        sub_22C79D09C();
        sub_22C9001EC();
        v133 = sub_22C79D0D8(v131);
        v134(v133, v132);
      }

      v135 = v242;
      if (*(v130 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime13PayloadLayout_leafDictionary))
      {
        v257 = v21;

        v137 = sub_22C470360(v136);

        v264[0] = v137;
        sub_22C79A0CC(v264);
        v231 = 0;
        v138 = v38;

        v139 = 0;
        v140 = (v131 + 32);
        v141 = v264[0];
        v246 = v250 + 1;
        v250 = (v242 + 8);
        v232 = MEMORY[0x277D84F90];
        v258 = (v131 + 8);
        v142 = *(v264[0] + 16);
        v143 = v237;
        v25 = v109;
        v255 = v142;
        v249 = v38;
        v248 = v264[0];
        v88 = &a10;
        v247 = v140;
        while (1)
        {
          if (v139 == v142)
          {
            sub_22C3A5908(&qword_27D9BACD8, &unk_22C914820);
            v144 = v138;
            sub_22C36A748();
            sub_22C36C640(v145, v146, v147, v148);
            v149 = v142;
          }

          else
          {
            if ((v139 & 0x8000000000000000) != 0)
            {
LABEL_74:
              __break(1u);
LABEL_75:
              __break(1u);
              goto LABEL_76;
            }

            v88 = *(v141 + 16);
            if (v139 >= v88)
            {
              goto LABEL_75;
            }

            v150 = sub_22C3A5908(&qword_27D9BACD8, &unk_22C914820);
            v144 = v138;
            sub_22C4E719C(v141 + ((*(*(v150 - 8) + 80) + 32) & ~*(*(v150 - 8) + 80)) + *(*(v150 - 8) + 72) * v139, v138, &qword_27D9BACD8, &unk_22C914820);
            v149 = v139 + 1;
            sub_22C36BECC();
            sub_22C36C640(v151, v152, v153, v150);
          }

          v154 = v257;
          sub_22C4E7208(v144, v257, &qword_27D9C0060, &unk_22C925DA8);
          v155 = sub_22C3A5908(&qword_27D9BACD8, &unk_22C914820);
          sub_22C36D0A8(v154, 1, v155);
          if (v96)
          {
            break;
          }

          v262 = v149;
          v156 = *(v155 + 48);
          v157 = *v140;
          v158 = sub_22C38A024();
          v159 = v140;
          v160 = v263;
          v157(v158);
          v161 = v154 + v156;
          v162 = v256;
          sub_22C4E7208(v161, v256, &qword_27D9BB610, &qword_22C925BC0);
          sub_22C36D0A8(v162, 1, v160);
          if (v96)
          {
            (*v258)(v25, v263);
            sub_22C36DD28(v162, &qword_27D9BB610, &qword_22C925BC0);
            v140 = v159;
            v138 = v144;
          }

          else
          {
            v163 = sub_22C36BA00();
            v157(v163);
            v164 = v260;
            sub_22C90019C();
            sub_22C37396C();
            sub_22C79C97C(&qword_27D9C0068, v165);
            v166 = v143;
            v167 = v251;
            v168 = v261;
            sub_22C90A93C();
            v169 = v252;
            sub_22C90A97C();
            sub_22C79C97C(&qword_27D9C0070, MEMORY[0x277CC8C20]);
            v170 = v253;
            v171 = sub_22C90A0BC();
            v172 = *v246;
            (*v246)(v169, v170);
            v172(v167, v170);
            (*v250)(v164, v168);
            if (v171)
            {
              v173 = *v258;
              v174 = v263;
              (*v258)(v166, v263);
              v25 = v254;
              v173(v254, v174);
              v138 = v249;
              v143 = v166;
              v141 = v248;
              v140 = v247;
            }

            else
            {
              v25 = v254;
              sub_22C799564();
              v175 = v233;
              sub_22C9001CC();
              sub_22C38C4AC();
              sub_22C9001DC();
              v176 = *v258;
              v177 = v263;
              (*v258)(v175, v263);
              v178 = sub_22C36BC58();
              (v176)(v178);
              sub_22C9001DC();
              v176(v171, v177);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v143 = v166;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_22C377B6C(isUniquelyReferenced_nonNull_native, v180, v181, v232);
                sub_22C59552C();
                v232 = v187;
              }

              v182 = *(v232 + 16);
              if (v182 >= *(v232 + 24) >> 1)
              {
                sub_22C59552C();
                v232 = v188;
              }

              v183 = v263;
              v176(v166, v263);
              v176(v25, v183);
              *(v232 + 16) = v182 + 1;
              sub_22C3737EC();
              v186 = v183;
              v140 = v247;
              (v157)(v184 + v185 * v182, v234, v186);
              v138 = v249;
              v141 = v248;
            }
          }

          v88 = &a18;
          v142 = v255;
          v139 = v262;
        }

        sub_22C38C4AC();
        sub_22C9001CC();
        v189 = v236;
        v190 = sub_22C36BD58();
        sub_22C7992D0(v190, v232);

        v191 = *v258;
        (*v258)(v155, v263);
        v192 = v260;
        sub_22C90019C();
        v193 = sub_22C79533C();
        (*v250)(v192, v261);
        if ((v193 & 1) == 0)
        {
          sub_22C79D09C();
          sub_22C9001EC();
        }

        v191(v189, v263);
        sub_22C386DC0();
        v135 = v242;
        v131 = v259;
        v130 = v245;
      }

      else
      {

        v231 = 0;
      }

      v194 = *(v130 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime13PayloadLayout_leafCollection);
      v195 = v241;
      if (v194)
      {
        v262 = *(v194 + 16);
        v258 = (v131 + 16);
        v196 = (v135 + 8);
        v197 = v131;
        v198 = (v131 + 8);
        v256 = (v197 + 32);

        v199 = 0;
        v257 = MEMORY[0x277D84F90];
        while (v262 != v199)
        {
          v88 = *(v194 + 16);
          if (v199 >= v88)
          {
            __break(1u);
            goto LABEL_74;
          }

          v200 = (*(v259 + 80) + 32) & ~*(v259 + 80);
          v201 = *(v259 + 72);
          v202 = v263;
          (*(v259 + 16))(v195, v194 + v200 + v201 * v199, v263);
          v203 = v260;
          v25 = v195;
          sub_22C90019C();
          v204 = sub_22C9001AC();
          (*v196)(v203, v261);
          if (v204 >= 1)
          {
            v205 = *v256;
            (*v256)(v240, v25, v202);
            v206 = v257;
            v207 = swift_isUniquelyReferenced_nonNull_native();
            v208 = v206;
            v264[0] = v206;
            if (v207)
            {
              v195 = v25;
            }

            else
            {
              sub_22C3B7A88(0, *(v206 + 16) + 1, 1);
              v195 = v241;
              v208 = v264[0];
            }

            v25 = *(v208 + 16);
            v209 = *(v208 + 24);
            if (v25 >= v209 >> 1)
            {
              sub_22C3B7A88(v209 > 1, v25 + 1, 1);
              v195 = v241;
              v208 = v264[0];
            }

            ++v199;
            *(v208 + 16) = v25 + 1;
            v257 = v208;
            v205(v208 + v200 + v25 * v201, v240, v263);
          }

          else
          {
            (*v198)(v25, v202);
            ++v199;
            v195 = v25;
          }
        }

        MEMORY[0x28223BE20](v210);
        *(&v231 - 2) = v244;
        v211 = v257;
        sub_22C794054();
        v213 = v212;

        sub_22C38635C();
        sub_22C9001CC();
        v214 = v235;
        sub_22C7992D0(&v231, v213);

        v93 = *v198;
        (*v198)(&v231, v263);
        v215 = v260;
        sub_22C90019C();
        LOBYTE(v213) = sub_22C79533C();
        (*v196)(v215, v261);
        if (v213)
        {
          sub_22C38A0E8();
          (v93)(v216);
          v217 = sub_22C79D09C();
          v93(v217, v211);
          sub_22C36A748();
          v221 = v211;
          goto LABEL_70;
        }

        sub_22C79D09C();
        sub_22C9001EC();
        v93(v214, v263);
        sub_22C386DC0();
        v135 = v242;
      }

      v222 = v260;
      v223 = v243;
      sub_22C90019C();
      v224 = sub_22C79533C();
      (*(v135 + 8))(v222, v261);
      if ((v224 & 1) == 0)
      {
        v226 = v259;
        v227 = v263;
        (*(v259 + 32))(v25, v223, v263);
        sub_22C36BECC();
        sub_22C36C640(v228, v229, v230, v227);
        (*(v226 + 8))(v244, v263);
LABEL_71:
        sub_22C36CC48();
        return;
      }

      v94 = v223;
      v93 = *(v259 + 8);
    }

    v225 = v263;
    v93(v94, v263);
    sub_22C36A748();
    v221 = v225;
LABEL_70:
    sub_22C36C640(v218, v219, v220, v221);
    v93(v244, v263);
    goto LABEL_71;
  }

LABEL_76:
  __break(1u);

  __break(1u);
}

uint64_t sub_22C799058(uint64_t a1, uint64_t a2)
{
  v24 = a2;
  v3 = sub_22C9001BC();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v5 = sub_22C3A5908(&qword_27D9BACD8, &unk_22C914820);
  v6 = v5 - 8;
  v7 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - v8;
  sub_22C4E719C(a1, &v21 - v8, &qword_27D9BACD8, &unk_22C914820);
  v23 = *(v6 + 56);
  sub_22C90019C();
  v10 = sub_22C90021C();
  v11 = *(*(v10 - 8) + 8);
  v11(v9, v10);
  sub_22C79C97C(&qword_27D9BFF78, MEMORY[0x277CC8B30]);
  v22 = sub_22C90A48C();
  v13 = v12;
  sub_22C36DD28(&v9[v23], &qword_27D9BB610, &qword_22C925BC0);
  sub_22C4E719C(v24, v9, &qword_27D9BACD8, &unk_22C914820);
  v14 = *(v6 + 56);
  sub_22C90019C();
  v11(v9, v10);
  v15 = sub_22C90A48C();
  v17 = v16;
  sub_22C36DD28(&v9[v14], &qword_27D9BB610, &qword_22C925BC0);
  if (v22 == v15 && v13 == v17)
  {
    v19 = 0;
  }

  else
  {
    v19 = sub_22C90B4FC();
  }

  return v19 & 1;
}

uint64_t sub_22C7992D0(uint64_t a1, uint64_t a2)
{
  result = sub_22C9001CC();
  v4 = *(a2 + 16);
  if (v4)
  {
    v5 = 0;
    v6 = *(sub_22C90021C() - 8);
    v7 = *(v6 + 80);
    do
    {
      if (v5)
      {
        sub_22C9001EC();
      }

      v8 = *(v6 + 72);
      result = sub_22C9001EC();
      ++v5;
    }

    while (v4 != v5);
  }

  return result;
}

uint64_t sub_22C799398@<X0>(uint64_t a1@<X8>)
{
  sub_22C9001DC();
  v2 = sub_22C90021C();
  return sub_22C36C640(a1, 0, 1, v2);
}

uint64_t sub_22C7993EC()
{
  v0 = sub_22C90026C();
  v1 = sub_22C369914(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  sub_22C369838();
  sub_22C90A2CC();
  sub_22C3858B4();
  sub_22C79D0E4();
  sub_22C90AD9C();

  sub_22C3A5908(&qword_27D9C00A8, &qword_22C925E98);
  sub_22C79CEFC();
  sub_22C79CF60();
  v4 = sub_22C90A55C();
  v6 = v5;

  v7 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v7 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (v7)
  {
    sub_22C90AD2C();
  }

  sub_22C90025C();
  sub_22C36BD58();
  return sub_22C90022C();
}

uint64_t sub_22C799564()
{
  v0 = sub_22C90026C();
  v1 = sub_22C369914(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  sub_22C369838();
  v4 = sub_22C9001BC();
  v5 = sub_22C36985C(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22C369838();
  sub_22C37BDA4();
  sub_22C90019C();
  sub_22C37396C();
  sub_22C79C97C(v8, v9);
  sub_22C36EBF0();
  sub_22C90A48C();
  sub_22C90A2CC();

  sub_22C3858B4();
  sub_22C79D0E4();
  sub_22C90AD9C();

  sub_22C3A5908(&qword_27D9C00A8, &qword_22C925E98);
  sub_22C79CEFC();
  sub_22C79CF60();
  v10 = sub_22C90A55C();
  v12 = v11;

  v13 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v13 = v10 & 0xFFFFFFFFFFFFLL;
  }

  if (v13)
  {

    sub_22C8124CC(1);
    sub_22C90AC8C();

    v14 = sub_22C90A1BC();
    v16 = v15;

    sub_22C862F28(1uLL, v14, v16);
    sub_22C575E6C();

    sub_22C90A35C();

    sub_22C90025C();
    sub_22C36BD58();
    return sub_22C90022C();
  }

  else
  {

    return sub_22C9001CC();
  }
}

uint64_t PayloadLayout.deinit()
{
  sub_22C37AD3C(OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime13PayloadLayout_heading);
  sub_22C37AD3C(OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime13PayloadLayout_key);
  sub_22C37AD3C(OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime13PayloadLayout_leafString);
  v1 = *(v0 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime13PayloadLayout_leafDictionary);

  v2 = *(v0 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime13PayloadLayout_leafCollection);

  v3 = *(v0 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime13PayloadLayout_nestedLayout);
  *(v0 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime13PayloadLayout_nestedLayout) = 0;

  if (v3)
  {
    do
    {

      if (!swift_isUniquelyReferenced_native())
      {
        break;
      }

      v4 = *(v3 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime13PayloadLayout_nestedLayout);
      swift_retain_n();

      v3 = v4;
    }

    while (v4);
  }

  return v0;
}

uint64_t PayloadLayout.__deallocating_deinit()
{
  PayloadLayout.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void static PayloadLayout.== infix(_:_:)()
{
  sub_22C36BA7C();
  v3 = v2;
  v5 = v4;
  v80 = sub_22C9001BC();
  v6 = sub_22C36985C(v80);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22C3698A8();
  v79 = v9;
  v10 = sub_22C3A5908(&qword_27D9BB610, &qword_22C925BC0);
  v11 = sub_22C369914(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22C3698E4();
  v78 = v14;
  sub_22C369930();
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v74 - v17;
  MEMORY[0x28223BE20](v16);
  sub_22C38C344();
  MEMORY[0x28223BE20](v19);
  v21 = &v74 - v20;
  v22 = sub_22C90021C();
  v23 = sub_22C369824(v22);
  v25 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v23);
  sub_22C3698E4();
  v76 = v28;
  sub_22C369930();
  MEMORY[0x28223BE20](v29);
  sub_22C36BA58();
  v81 = v30;
  sub_22C369930();
  MEMORY[0x28223BE20](v31);
  sub_22C36BA58();
  v77 = v32;
  sub_22C369930();
  MEMORY[0x28223BE20](v33);
  sub_22C36CAC0();
  v34 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime13PayloadLayout_heading;
  sub_22C36CA70();
  v82 = v5;
  sub_22C4E719C(v5 + v34, v21, &qword_27D9BB610, &qword_22C925BC0);
  sub_22C369A54(v21);
  if (v39)
  {
    sub_22C36DD28(v21, &qword_27D9BB610, &qword_22C925BC0);
    v35 = v25;
    v36 = v3;
  }

  else
  {
    v37 = *(v25 + 32);
    v37(v1, v21, v22);
    v38 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime13PayloadLayout_heading;
    sub_22C36CA70();
    sub_22C4E719C(v3 + v38, v0, &qword_27D9BB610, &qword_22C925BC0);
    sub_22C369A54(v0);
    v36 = v3;
    if (v39)
    {
      (*(v25 + 8))(v1, v22);
      sub_22C36DD28(v0, &qword_27D9BB610, &qword_22C925BC0);
      v35 = v25;
    }

    else
    {
      v74 = v3;
      v75 = v25;
      v40 = v77;
      v37(v77, v0, v22);
      sub_22C90019C();
      sub_22C37396C();
      sub_22C79C97C(v41, v42);
      sub_22C90A48C();
      v43 = sub_22C90A1BC();
      v45 = v44;

      sub_22C90019C();
      sub_22C38A024();
      sub_22C90A48C();
      v46 = sub_22C90A1BC();
      v48 = v47;

      if (v43 == v46 && v45 == v48)
      {

        v35 = v75;
        v52 = *(v75 + 8);
        v52(v40, v22);
        v52(v1, v22);
        v36 = v74;
      }

      else
      {
        sub_22C3819EC();
        v50 = sub_22C90B4FC();

        v35 = v75;
        v51 = *(v75 + 8);
        v51(v40, v22);
        v51(v1, v22);
        v36 = v74;
        if ((v50 & 1) == 0)
        {
          goto LABEL_27;
        }
      }
    }
  }

  v53 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime13PayloadLayout_key;
  v54 = v82;
  sub_22C36CA70();
  sub_22C4E719C(v54 + v53, v18, &qword_27D9BB610, &qword_22C925BC0);
  sub_22C369A54(v18);
  if (v39)
  {
    v55 = v18;
LABEL_20:
    sub_22C36DD28(v55, &qword_27D9BB610, &qword_22C925BC0);
    goto LABEL_27;
  }

  v56 = *(v35 + 32);
  v57 = v81;
  v56(v81, v18, v22);
  v58 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime13PayloadLayout_key;
  sub_22C36CA70();
  v59 = v36 + v58;
  v60 = v78;
  sub_22C4E719C(v59, v78, &qword_27D9BB610, &qword_22C925BC0);
  sub_22C369A54(v60);
  if (v61)
  {
    (*(v35 + 8))(v57, v22);
    v55 = v60;
    goto LABEL_20;
  }

  v62 = v76;
  v63 = sub_22C38A024();
  (v56)(v63);
  sub_22C90019C();
  sub_22C37396C();
  sub_22C79C97C(v64, v65);
  sub_22C90A48C();
  v66 = sub_22C90A1BC();
  v68 = v67;

  sub_22C90019C();
  sub_22C90A48C();
  v69 = sub_22C90A1BC();
  v71 = v70;

  if (v66 != v69 || v68 != v71)
  {
    sub_22C90B4FC();
  }

  v73 = *(v35 + 8);
  v73(v62, v22);
  v73(v81, v22);
LABEL_27:
  sub_22C36CC48();
}

uint64_t sub_22C799F40(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  static PayloadLayout.< infix(_:_:)();
  return v4 & 1;
}

uint64_t sub_22C799F70(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  static PayloadLayout.== infix(_:_:)();
  return v4 & 1;
}

uint64_t sub_22C799FAC(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    if (result)
    {
      result = sub_22C90A64C();
      *(result + 16) = v1;
    }

    else
    {
      return MEMORY[0x277D84F90];
    }
  }

  return result;
}

uint64_t sub_22C799FF4(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    if (result)
    {
      type metadata accessor for PayloadLayout();
      result = sub_22C90A64C();
      *((result & 0xFFFFFFFFFFFFFF8) + 0x10) = v1;
    }

    else
    {
      return MEMORY[0x277D84F90];
    }
  }

  return result;
}

uint64_t sub_22C79A050(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_22C56C4B0(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_22C79A180(v6);
  return sub_22C90AFFC();
}

uint64_t sub_22C79A0CC(uint64_t *a1)
{
  v2 = *(sub_22C3A5908(&qword_27D9BACD8, &unk_22C914820) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_22C56C4C8(v3);
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v7[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v7[1] = v5;
  result = sub_22C79A260(v7);
  *a1 = v3;
  return result;
}

void sub_22C79A180(uint64_t *a1)
{
  v3 = a1[1];
  v4 = sub_22C90B45C();
  if (v4 < v3)
  {
    v5 = v4;
    v6 = sub_22C799FF4(v3 / 2);
    v8[0] = v7;
    v8[1] = (v3 / 2);
    sub_22C79A92C(v8, v9, a1, v5);
    if (v1)
    {
      if (v3 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v3 < -1)
    {
LABEL_12:
      __break(1u);
      return;
    }

    *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

    return;
  }

LABEL_5:
  if (v3 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v3)
  {
    sub_22C79A3A8(0, v3, 1, a1);
  }
}

uint64_t sub_22C79A260(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_22C90B45C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_22C3A5908(&qword_27D9BACD8, &unk_22C914820);
        v6 = sub_22C90A64C();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_22C3A5908(&qword_27D9BACD8, &unk_22C914820) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_22C79AF54(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_22C79A48C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_22C79A3A8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = result;
    v6 = *a4;
    type metadata accessor for PayloadLayout();
    v7 = v6 + 8 * v4 - 8;
    v8 = v5 - v4;
    while (2)
    {
      v9 = *(v6 + 8 * v4);
      v10 = v8;
      v11 = v7;
      do
      {
        v12 = *v11;

        static PayloadLayout.< infix(_:_:)();
        v14 = v13;

        if ((v14 & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        v15 = *v11;
        *v11 = v11[1];
        v11[1] = v15;
        --v11;
      }

      while (!__CFADD__(v10++, 1));
      ++v4;
      v7 += 8;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_22C79A48C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v59 = sub_22C9001BC();
  v8 = *(*(v59 - 8) + 64);
  MEMORY[0x28223BE20](v59);
  v58 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_22C3A5908(&qword_27D9BACD8, &unk_22C914820);
  v10 = *(*(v66 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v66);
  v56 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v47 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v47 - v17;
  result = MEMORY[0x28223BE20](v16);
  v22 = &v47 - v21;
  v49 = a2;
  if (a3 != a2)
  {
    v23 = *a4;
    v24 = *(v20 + 72);
    v25 = *a4 + v24 * (a3 - 1);
    v54 = -v24;
    v55 = v23;
    v26 = a1 - a3;
    v48 = v24;
    v27 = v23 + v24 * a3;
    v57 = &v47 - v21;
    while (2)
    {
      v52 = v25;
      v53 = a3;
      v50 = v27;
      v51 = v26;
      v28 = v26;
      v67 = v25;
      while (1)
      {
        v60 = v28;
        v61 = v27;
        sub_22C4E719C(v27, v22, &qword_27D9BACD8, &unk_22C914820);
        sub_22C4E719C(v67, v18, &qword_27D9BACD8, &unk_22C914820);
        sub_22C4E719C(v22, v15, &qword_27D9BACD8, &unk_22C914820);
        v65 = *(v66 + 48);
        sub_22C90019C();
        v29 = sub_22C90021C();
        v30 = *(v29 - 8);
        v63 = *(v30 + 8);
        v64 = v30 + 8;
        v63(v15, v29);
        v62 = sub_22C79C97C(&qword_27D9BFF78, MEMORY[0x277CC8B30]);
        v31 = sub_22C90A48C();
        v32 = v18;
        v34 = v33;
        sub_22C36DD28(&v15[v65], &qword_27D9BB610, &qword_22C925BC0);
        sub_22C4E719C(v32, v15, &qword_27D9BACD8, &unk_22C914820);
        v65 = *(v66 + 48);
        sub_22C90019C();
        v63(v15, v29);
        v35 = sub_22C90A48C();
        v37 = v36;
        sub_22C36DD28(&v15[v65], &qword_27D9BB610, &qword_22C925BC0);
        if (v31 == v35 && v34 == v37)
        {
          break;
        }

        v39 = sub_22C90B4FC();

        sub_22C36DD28(v32, &qword_27D9BACD8, &unk_22C914820);
        v40 = v57;
        result = sub_22C36DD28(v57, &qword_27D9BACD8, &unk_22C914820);
        v18 = v32;
        v22 = v40;
        v42 = v60;
        v41 = v61;
        if (v39)
        {
          if (!v55)
          {
            __break(1u);
            return result;
          }

          v43 = v56;
          sub_22C4E7208(v61, v56, &qword_27D9BACD8, &unk_22C914820);
          v44 = v67;
          swift_arrayInitWithTakeFrontToBack();
          result = sub_22C4E7208(v43, v44, &qword_27D9BACD8, &unk_22C914820);
          v67 = v44 + v54;
          v27 = v41 + v54;
          v45 = __CFADD__(v42, 1);
          v28 = v42 + 1;
          if (!v45)
          {
            continue;
          }
        }

        goto LABEL_14;
      }

      sub_22C36DD28(v32, &qword_27D9BACD8, &unk_22C914820);
      v46 = v57;
      result = sub_22C36DD28(v57, &qword_27D9BACD8, &unk_22C914820);
      v18 = v32;
      v22 = v46;
LABEL_14:
      a3 = v53 + 1;
      v25 = v52 + v48;
      v26 = v51 - 1;
      v27 = v50 + v48;
      if (v53 + 1 != v49)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_22C79A92C(void **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = a3[1];
  if (v4 < 1)
  {
    i = MEMORY[0x277D84F90];
LABEL_92:
    v101 = *a1;
    if (!*a1)
    {
      goto LABEL_133;
    }

    v5 = v103;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_94:
      v88 = i;
      v89 = (i + 16);
      for (i = *(i + 16); i >= 2; *v89 = i)
      {
        if (!*a3)
        {
          goto LABEL_130;
        }

        v90 = (v88 + 16 * i);
        v91 = *v90;
        v92 = &v89[2 * i];
        v93 = *(v92 + 1);
        sub_22C79BDD8((*a3 + 8 * *v90), (*a3 + 8 * *v92), (*a3 + 8 * v93), v101);
        if (v5)
        {
          break;
        }

        if (v93 < v91)
        {
          goto LABEL_118;
        }

        if (i - 2 >= *v89)
        {
          goto LABEL_119;
        }

        *v90 = v91;
        v90[1] = v93;
        v94 = *v89 - i;
        if (*v89 < i)
        {
          goto LABEL_120;
        }

        i = *v89 - 1;
        sub_22C56BFF0(v92 + 16, v94, v92);
      }

LABEL_102:

      return;
    }

LABEL_127:
    i = sub_22C56BFD8(i);
    goto LABEL_94;
  }

  v5 = 0;
  i = MEMORY[0x277D84F90];
  while (1)
  {
    v7 = v5++;
    if (v5 >= v4)
    {
      goto LABEL_22;
    }

    v96 = i;
    v8 = *(*a3 + 8 * v5);
    v9 = v7;
    v10 = (*a3 + 8 * v7);
    v11 = 8 * v9;
    v13 = *v10;
    v12 = v10 + 2;
    type metadata accessor for PayloadLayout();

    static PayloadLayout.< infix(_:_:)();
    i = v14;

    v98 = v9;
    v15 = v9 + 2;
    do
    {
      v16 = v15;
      if (++v5 >= v4)
      {
        v5 = v4;
        if (i)
        {
          goto LABEL_8;
        }

LABEL_20:
        i = v96;
        v7 = v98;
        goto LABEL_22;
      }

      v18 = *(v12 - 1);
      v17 = *v12;

      static PayloadLayout.< infix(_:_:)();
      v20 = v19 & 1;

      ++v12;
      v15 = v16 + 1;
    }

    while ((i & 1) == v20);
    if ((i & 1) == 0)
    {
      goto LABEL_20;
    }

LABEL_8:
    v7 = v98;
    if (v5 < v98)
    {
      goto LABEL_124;
    }

    if (v98 >= v5)
    {
      i = v96;
    }

    else
    {
      v21 = v4 >= v16 ? v16 : v4;
      v22 = 8 * v21 - 8;
      v23 = v5;
      v24 = v98;
      i = v96;
      do
      {
        if (v24 != --v23)
        {
          v25 = *a3;
          if (!*a3)
          {
            goto LABEL_131;
          }

          v26 = *(v25 + v11);
          *(v25 + v11) = *(v25 + v22);
          *(v25 + v22) = v26;
        }

        ++v24;
        v22 -= 8;
        v11 += 8;
      }

      while (v24 < v23);
    }

LABEL_22:
    v27 = a3[1];
    if (v5 < v27)
    {
      if (__OFSUB__(v5, v7))
      {
        goto LABEL_123;
      }

      if (v5 - v7 < a4)
      {
        break;
      }
    }

LABEL_39:
    if (v5 < v7)
    {
      goto LABEL_122;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v85 = *(i + 16);
      sub_22C590218();
      i = v86;
    }

    v40 = *(i + 16);
    v41 = v40 + 1;
    if (v40 >= *(i + 24) >> 1)
    {
      sub_22C590218();
      i = v87;
    }

    *(i + 16) = v41;
    v42 = i + 32;
    v43 = (i + 32 + 16 * v40);
    *v43 = v7;
    v43[1] = v5;
    v101 = *a1;
    if (!*a1)
    {
      goto LABEL_132;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        v45 = (v42 + 16 * (v41 - 1));
        v46 = (i + 16 * v41);
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v47 = *(i + 32);
          v48 = *(i + 40);
          v57 = __OFSUB__(v48, v47);
          v49 = v48 - v47;
          v50 = v57;
LABEL_59:
          if (v50)
          {
            goto LABEL_109;
          }

          v62 = *v46;
          v61 = v46[1];
          v63 = __OFSUB__(v61, v62);
          v64 = v61 - v62;
          v65 = v63;
          if (v63)
          {
            goto LABEL_112;
          }

          v66 = v45[1];
          v67 = v66 - *v45;
          if (__OFSUB__(v66, *v45))
          {
            goto LABEL_115;
          }

          if (__OFADD__(v64, v67))
          {
            goto LABEL_117;
          }

          if (v64 + v67 >= v49)
          {
            if (v49 < v67)
            {
              v44 = v41 - 2;
            }

            goto LABEL_81;
          }

          goto LABEL_74;
        }

        if (v41 < 2)
        {
          goto LABEL_111;
        }

        v69 = *v46;
        v68 = v46[1];
        v57 = __OFSUB__(v68, v69);
        v64 = v68 - v69;
        v65 = v57;
LABEL_74:
        if (v65)
        {
          goto LABEL_114;
        }

        v71 = *v45;
        v70 = v45[1];
        v57 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v57)
        {
          goto LABEL_116;
        }

        if (v72 < v64)
        {
          goto LABEL_88;
        }

LABEL_81:
        if (v44 - 1 >= v41)
        {
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
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (!*a3)
        {
          goto LABEL_129;
        }

        v76 = (v42 + 16 * (v44 - 1));
        v77 = *v76;
        v78 = v44;
        v79 = v42 + 16 * v44;
        v80 = *(v79 + 8);
        sub_22C79BDD8((*a3 + 8 * *v76), (*a3 + 8 * *v79), (*a3 + 8 * v80), v101);
        if (v103)
        {
          goto LABEL_102;
        }

        if (v80 < v77)
        {
          goto LABEL_104;
        }

        v81 = v5;
        v5 = v42;
        v82 = i;
        i = *(i + 16);
        if (v78 > i)
        {
          goto LABEL_105;
        }

        *v76 = v77;
        v76[1] = v80;
        if (v78 >= i)
        {
          goto LABEL_106;
        }

        v83 = v78;
        v41 = i - 1;
        sub_22C56BFF0((v79 + 16), i - 1 - v83, v79);
        *(v82 + 16) = i - 1;
        v84 = i > 2;
        i = v82;
        v42 = v5;
        v5 = v81;
        if (!v84)
        {
          goto LABEL_88;
        }
      }

      v51 = v42 + 16 * v41;
      v52 = *(v51 - 64);
      v53 = *(v51 - 56);
      v57 = __OFSUB__(v53, v52);
      v54 = v53 - v52;
      if (v57)
      {
        goto LABEL_107;
      }

      v56 = *(v51 - 48);
      v55 = *(v51 - 40);
      v57 = __OFSUB__(v55, v56);
      v49 = v55 - v56;
      v50 = v57;
      if (v57)
      {
        goto LABEL_108;
      }

      v58 = v46[1];
      v59 = v58 - *v46;
      if (__OFSUB__(v58, *v46))
      {
        goto LABEL_110;
      }

      v57 = __OFADD__(v49, v59);
      v60 = v49 + v59;
      if (v57)
      {
        goto LABEL_113;
      }

      if (v60 >= v54)
      {
        v74 = *v45;
        v73 = v45[1];
        v57 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v57)
        {
          goto LABEL_121;
        }

        if (v49 < v75)
        {
          v44 = v41 - 2;
        }

        goto LABEL_81;
      }

      goto LABEL_59;
    }

LABEL_88:
    v4 = a3[1];
    if (v5 >= v4)
    {
      goto LABEL_92;
    }
  }

  if (__OFADD__(v7, a4))
  {
    goto LABEL_125;
  }

  if (v7 + a4 >= v27)
  {
    v28 = a3[1];
  }

  else
  {
    v28 = (v7 + a4);
  }

  if (v28 < v7)
  {
LABEL_126:
    __break(1u);
    goto LABEL_127;
  }

  if (v5 == v28)
  {
    goto LABEL_39;
  }

  v97 = i;
  v29 = *a3;
  type metadata accessor for PayloadLayout();
  v30 = v29 + 8 * v5 - 8;
  v99 = v7;
  v31 = v7 - v5;
  v101 = v28;
LABEL_32:
  v32 = *(v29 + 8 * v5);
  v33 = v31;
  v34 = v30;
  while (1)
  {
    v35 = *v34;

    static PayloadLayout.< infix(_:_:)();
    v37 = v36;

    if ((v37 & 1) == 0)
    {
LABEL_37:
      ++v5;
      v30 += 8;
      --v31;
      if (v5 == v101)
      {
        v5 = v101;
        i = v97;
        v7 = v99;
        goto LABEL_39;
      }

      goto LABEL_32;
    }

    if (!v29)
    {
      break;
    }

    v38 = *v34;
    *v34 = v34[1];
    v34[1] = v38;
    --v34;
    if (__CFADD__(v33++, 1))
    {
      goto LABEL_37;
    }
  }

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
}

void sub_22C79AF54(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v150 = a4;
  v152 = a1;
  v173 = sub_22C9001BC();
  v5 = *(*(v173 - 8) + 64);
  MEMORY[0x28223BE20](v173);
  v172 = &v149 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v182 = sub_22C3A5908(&qword_27D9BACD8, &unk_22C914820);
  v162 = *(v182 - 8);
  v7 = *(v162 + 64);
  v8 = MEMORY[0x28223BE20](v182);
  v157 = &v149 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v170 = &v149 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v149 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v149 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v171 = &v149 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v165 = &v149 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v164 = &v149 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  MEMORY[0x28223BE20](v24);
  v27 = &v149 - v25;
  v163 = a3;
  v28 = a3[1];
  if (v28 < 1)
  {
    v30 = MEMORY[0x277D84F90];
LABEL_113:
    v42 = *v152;
    if (!*v152)
    {
      goto LABEL_156;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_115;
    }

    goto LABEL_150;
  }

  v149 = v26;
  v29 = 0;
  v30 = MEMORY[0x277D84F90];
  v31 = &qword_27D9BACD8;
  v161 = v14;
  v174 = v17;
  v151 = &v149 - v25;
  while (1)
  {
    v32 = v29++;
    v154 = v30;
    v153 = v32;
    if (v29 >= v28)
    {
      v42 = v182;
    }

    else
    {
      v175 = v28;
      v33 = v27;
      v34 = *v163;
      v35 = *(v162 + 72);
      v36 = v31;
      v167 = v29;
      v181 = v34 + v35 * v29;
      sub_22C4E719C(v181, v33, v31, &unk_22C914820);
      v180 = v34;
      v37 = v149;
      sub_22C4E719C(v34 + v35 * v32, v149, v31, &unk_22C914820);
      v38 = v151;
      v39 = v166;
      LODWORD(v169) = sub_22C799058(v151, v37);
      v166 = v39;
      if (v39)
      {
        sub_22C36DD28(v37, &qword_27D9BACD8, &unk_22C914820);
        sub_22C36DD28(v38, &qword_27D9BACD8, &unk_22C914820);
LABEL_125:

        return;
      }

      sub_22C36DD28(v37, v36, &unk_22C914820);
      sub_22C36DD28(v38, v36, &unk_22C914820);
      v40 = v32 + 2;
      v30 = v181;
      v41 = v180 + v35 * (v32 + 2);
      v42 = v182;
      v29 = v167;
      v31 = v36;
      v43 = v35;
      v176 = v35;
      v44 = v175;
      while (1)
      {
        v45 = v40;
        if (v29 + 1 >= v44)
        {
          break;
        }

        v179 = v41;
        v180 = v40;
        v167 = v29;
        v46 = v164;
        sub_22C4E719C(v41, v164, v31, &unk_22C914820);
        v181 = v30;
        v47 = v165;
        sub_22C4E719C(v30, v165, v31, &unk_22C914820);
        v48 = v171;
        sub_22C4E719C(v46, v171, v31, &unk_22C914820);
        v178 = *(v42 + 48);
        sub_22C90019C();
        v49 = sub_22C90021C();
        v50 = *(*(v49 - 8) + 8);
        v50(v48, v49);
        sub_22C79C97C(&qword_27D9BFF78, MEMORY[0x277CC8B30]);
        v177 = sub_22C90A48C();
        v52 = v51;
        sub_22C36DD28(v48 + v178, &qword_27D9BB610, &qword_22C925BC0);
        sub_22C4E719C(v47, v48, &qword_27D9BACD8, &unk_22C914820);
        v53 = *(v182 + 48);
        sub_22C90019C();
        v50(v48, v49);
        v54 = sub_22C90A48C();
        v56 = v55;
        sub_22C36DD28(v48 + v53, &qword_27D9BB610, &qword_22C925BC0);
        if (v177 == v54 && v52 == v56)
        {
          v58 = 0;
        }

        else
        {
          v58 = sub_22C90B4FC();
        }

        v17 = v174;

        v31 = &qword_27D9BACD8;
        sub_22C36DD28(v165, &qword_27D9BACD8, &unk_22C914820);
        sub_22C36DD28(v164, &qword_27D9BACD8, &unk_22C914820);
        v59 = v169 ^ v58;
        v44 = v175;
        v43 = v176;
        v45 = v180;
        v41 = v179 + v176;
        v30 = v181 + v176;
        v29 = v167 + 1;
        v40 = v180 + 1;
        v42 = v182;
        v14 = v161;
        if (v59)
        {
          goto LABEL_17;
        }
      }

      v29 = v44;
LABEL_17:
      if (v169)
      {
        if (v29 < v153)
        {
          goto LABEL_149;
        }

        v30 = v154;
        if (v153 < v29)
        {
          if (v44 >= v45)
          {
            v60 = v45;
          }

          else
          {
            v60 = v44;
          }

          v61 = v43 * (v60 - 1);
          v62 = v43 * v60;
          v63 = v153 * v43;
          v64 = v29;
          v65 = v153;
          do
          {
            if (v65 != --v64)
            {
              v66 = *v163;
              if (!*v163)
              {
                goto LABEL_154;
              }

              sub_22C4E7208(v66 + v63, v157, &qword_27D9BACD8, &unk_22C914820);
              v67 = v63 < v61 || v66 + v63 >= (v66 + v62);
              if (v67)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v63 != v61)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_22C4E7208(v157, v66 + v61, &qword_27D9BACD8, &unk_22C914820);
              v30 = v154;
              v43 = v176;
            }

            ++v65;
            v61 -= v43;
            v62 -= v43;
            v63 += v43;
          }

          while (v65 < v64);
          v42 = v182;
          v14 = v161;
          v17 = v174;
          v31 = &qword_27D9BACD8;
        }
      }

      else
      {
        v30 = v154;
      }
    }

    v68 = v163[1];
    if (v29 < v68)
    {
      if (__OFSUB__(v29, v153))
      {
        goto LABEL_146;
      }

      if (v29 - v153 < v150)
      {
        break;
      }
    }

LABEL_61:
    v94 = v153;
    if (v29 < v153)
    {
      goto LABEL_145;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v138 = *(v30 + 16);
      sub_22C590218();
      v30 = v139;
    }

    v42 = *(v30 + 16);
    v95 = v42 + 1;
    if (v42 >= *(v30 + 24) >> 1)
    {
      sub_22C590218();
      v30 = v140;
    }

    *(v30 + 16) = v95;
    v96 = v30 + 32;
    v97 = (v30 + 32 + 16 * v42);
    *v97 = v94;
    v97[1] = v29;
    v181 = *v152;
    if (!v181)
    {
      goto LABEL_155;
    }

    if (v42)
    {
      while (1)
      {
        v98 = v95 - 1;
        v99 = (v96 + 16 * (v95 - 1));
        v100 = (v30 + 16 * v95);
        if (v95 >= 4)
        {
          break;
        }

        if (v95 == 3)
        {
          v101 = *(v30 + 32);
          v102 = *(v30 + 40);
          v111 = __OFSUB__(v102, v101);
          v103 = v102 - v101;
          v104 = v111;
LABEL_81:
          if (v104)
          {
            goto LABEL_132;
          }

          v116 = *v100;
          v115 = v100[1];
          v117 = __OFSUB__(v115, v116);
          v118 = v115 - v116;
          v119 = v117;
          if (v117)
          {
            goto LABEL_135;
          }

          v120 = v99[1];
          v121 = v120 - *v99;
          if (__OFSUB__(v120, *v99))
          {
            goto LABEL_138;
          }

          if (__OFADD__(v118, v121))
          {
            goto LABEL_140;
          }

          if (v118 + v121 >= v103)
          {
            if (v103 < v121)
            {
              v98 = v95 - 2;
            }

            goto LABEL_103;
          }

          goto LABEL_96;
        }

        if (v95 < 2)
        {
          goto LABEL_134;
        }

        v123 = *v100;
        v122 = v100[1];
        v111 = __OFSUB__(v122, v123);
        v118 = v122 - v123;
        v119 = v111;
LABEL_96:
        if (v119)
        {
          goto LABEL_137;
        }

        v125 = *v99;
        v124 = v99[1];
        v111 = __OFSUB__(v124, v125);
        v126 = v124 - v125;
        if (v111)
        {
          goto LABEL_139;
        }

        if (v126 < v118)
        {
          goto LABEL_110;
        }

LABEL_103:
        if (v98 - 1 >= v95)
        {
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
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
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
          goto LABEL_148;
        }

        if (!*v163)
        {
          goto LABEL_152;
        }

        v130 = v29;
        v131 = (v96 + 16 * (v98 - 1));
        v132 = *v131;
        v133 = v96 + 16 * v98;
        v134 = *(v133 + 8);
        v135 = v166;
        sub_22C79BFFC(*v163 + *(v162 + 72) * *v131, *v163 + *(v162 + 72) * *v133, *v163 + *(v162 + 72) * v134, v181);
        v166 = v135;
        if (v135)
        {
          goto LABEL_125;
        }

        if (v134 < v132)
        {
          goto LABEL_127;
        }

        v42 = v96;
        v136 = v30;
        v30 = *(v30 + 16);
        if (v98 > v30)
        {
          goto LABEL_128;
        }

        *v131 = v132;
        v131[1] = v134;
        if (v98 >= v30)
        {
          goto LABEL_129;
        }

        v95 = v30 - 1;
        sub_22C56BFF0((v133 + 16), v30 - 1 - v98, v133);
        *(v136 + 16) = v30 - 1;
        v137 = v30 > 2;
        v30 = v136;
        v29 = v130;
        v31 = &qword_27D9BACD8;
        v96 = v42;
        if (!v137)
        {
          goto LABEL_110;
        }
      }

      v105 = v96 + 16 * v95;
      v106 = *(v105 - 64);
      v107 = *(v105 - 56);
      v111 = __OFSUB__(v107, v106);
      v108 = v107 - v106;
      if (v111)
      {
        goto LABEL_130;
      }

      v110 = *(v105 - 48);
      v109 = *(v105 - 40);
      v111 = __OFSUB__(v109, v110);
      v103 = v109 - v110;
      v104 = v111;
      if (v111)
      {
        goto LABEL_131;
      }

      v112 = v100[1];
      v113 = v112 - *v100;
      if (__OFSUB__(v112, *v100))
      {
        goto LABEL_133;
      }

      v111 = __OFADD__(v103, v113);
      v114 = v103 + v113;
      if (v111)
      {
        goto LABEL_136;
      }

      if (v114 >= v108)
      {
        v128 = *v99;
        v127 = v99[1];
        v111 = __OFSUB__(v127, v128);
        v129 = v127 - v128;
        if (v111)
        {
          goto LABEL_144;
        }

        if (v103 < v129)
        {
          v98 = v95 - 2;
        }

        goto LABEL_103;
      }

      goto LABEL_81;
    }

LABEL_110:
    v28 = v163[1];
    v14 = v161;
    v17 = v174;
    v27 = v151;
    if (v29 >= v28)
    {
      goto LABEL_113;
    }
  }

  v69 = v153 + v150;
  if (__OFADD__(v153, v150))
  {
    goto LABEL_147;
  }

  if (v69 >= v68)
  {
    v69 = v163[1];
  }

  if (v69 < v153)
  {
LABEL_148:
    __break(1u);
LABEL_149:
    __break(1u);
LABEL_150:
    v30 = sub_22C56BFD8(v30);
LABEL_115:
    v141 = (v30 + 16);
    v142 = *(v30 + 16);
    while (v142 >= 2)
    {
      if (!*v163)
      {
        goto LABEL_153;
      }

      v143 = v30;
      v144 = (v30 + 16 * v142);
      v145 = *v144;
      v146 = &v141[2 * v142];
      v30 = *(v146 + 1);
      v147 = v166;
      sub_22C79BFFC(*v163 + *(v162 + 72) * *v144, *v163 + *(v162 + 72) * *v146, *v163 + *(v162 + 72) * v30, v42);
      v166 = v147;
      if (v147)
      {
        break;
      }

      if (v30 < v145)
      {
        goto LABEL_141;
      }

      if (v142 - 2 >= *v141)
      {
        goto LABEL_142;
      }

      *v144 = v145;
      v144[1] = v30;
      v148 = *v141 - v142;
      if (*v141 < v142)
      {
        goto LABEL_143;
      }

      v142 = *v141 - 1;
      sub_22C56BFF0(v146 + 16, v148, v146);
      *v141 = v142;
      v30 = v143;
    }

    goto LABEL_125;
  }

  if (v29 == v69)
  {
    goto LABEL_61;
  }

  v70 = *v163;
  v71 = *(v162 + 72);
  v72 = *v163 + v71 * (v29 - 1);
  v168 = -v71;
  v73 = v153 - v29;
  v169 = v70;
  v155 = v71;
  v74 = v70 + v29 * v71;
  v156 = v69;
LABEL_47:
  v167 = v29;
  v158 = v74;
  v159 = v73;
  v75 = v73;
  v160 = v72;
  v76 = v72;
  while (1)
  {
    v176 = v74;
    v177 = v75;
    sub_22C4E719C(v74, v17, v31, &unk_22C914820);
    v175 = v76;
    sub_22C4E719C(v76, v14, v31, &unk_22C914820);
    v77 = v171;
    sub_22C4E719C(v17, v171, v31, &unk_22C914820);
    v181 = *(v42 + 48);
    sub_22C90019C();
    v78 = sub_22C90021C();
    v79 = *(v78 - 8);
    v179 = *(v79 + 8);
    v180 = v79 + 8;
    v179(v77, v78);
    v178 = sub_22C79C97C(&qword_27D9BFF78, MEMORY[0x277CC8B30]);
    v80 = sub_22C90A48C();
    v81 = v14;
    v83 = v82;
    sub_22C36DD28(v77 + v181, &qword_27D9BB610, &qword_22C925BC0);
    sub_22C4E719C(v81, v77, v31, &unk_22C914820);
    v84 = *(v182 + 48);
    sub_22C90019C();
    v179(v77, v78);
    v85 = sub_22C90A48C();
    v87 = v86;
    sub_22C36DD28(v77 + v84, &qword_27D9BB610, &qword_22C925BC0);
    if (v80 == v85 && v83 == v87)
    {

      sub_22C36DD28(v81, v31, &unk_22C914820);
      v17 = v174;
      sub_22C36DD28(v174, v31, &unk_22C914820);
      v42 = v182;
      v14 = v81;
      goto LABEL_59;
    }

    v89 = sub_22C90B4FC();

    sub_22C36DD28(v81, v31, &unk_22C914820);
    v17 = v174;
    sub_22C36DD28(v174, v31, &unk_22C914820);
    v14 = v81;
    if ((v89 & 1) == 0)
    {
      v42 = v182;
LABEL_59:
      v29 = v167 + 1;
      v72 = v160 + v155;
      v73 = v159 - 1;
      v74 = v158 + v155;
      if (v167 + 1 == v156)
      {
        v29 = v156;
        v30 = v154;
        goto LABEL_61;
      }

      goto LABEL_47;
    }

    v42 = v182;
    v90 = v177;
    if (!v169)
    {
      break;
    }

    v91 = v176;
    v92 = v170;
    sub_22C4E7208(v176, v170, v31, &unk_22C914820);
    v93 = v175;
    swift_arrayInitWithTakeFrontToBack();
    sub_22C4E7208(v92, v93, v31, &unk_22C914820);
    v76 = v93 + v168;
    v74 = v91 + v168;
    v67 = __CFADD__(v90, 1);
    v75 = v90 + 1;
    if (v67)
    {
      goto LABEL_59;
    }
  }

  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
}

uint64_t sub_22C79BDD8(void *a1, void *a2, void *a3, void *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = a2 - a1;
  v9 = a3 - a2;
  if (v8 < v9)
  {
    sub_22C3D874C(a1, a2 - a1, a4);
    v10 = &v4[v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      v12 = v5;
      v13 = *v6;
      v14 = *v4;
      type metadata accessor for PayloadLayout();

      static PayloadLayout.< infix(_:_:)();
      v16 = v15;

      if ((v16 & 1) == 0)
      {
        break;
      }

      v17 = v6;
      v18 = v7 == v6++;
      if (!v18)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
      v5 = v12;
    }

    v17 = v4;
    v18 = v7 == v4++;
    if (v18)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v17;
    goto LABEL_13;
  }

  sub_22C3D874C(a2, a3 - a2, a4);
  v10 = &v4[v9];
  v33 = v4;
LABEL_15:
  v19 = v6 - 1;
  --v5;
  while (v10 > v4 && v6 > v7)
  {
    v21 = v6;
    v22 = v7;
    v23 = *(v10 - 1);
    v24 = v19;
    v25 = *v19;
    type metadata accessor for PayloadLayout();

    static PayloadLayout.< infix(_:_:)();
    v27 = v26;

    v28 = v5 + 1;
    if (v27)
    {
      v29 = v24;
      v6 = v24;
      v7 = v22;
      v4 = v33;
      if (v28 != v21)
      {
        *v5 = *v29;
        v6 = v29;
      }

      goto LABEL_15;
    }

    if (v10 != v28)
    {
      *v5 = *(v10 - 1);
    }

    --v5;
    --v10;
    v19 = v24;
    v7 = v22;
    v4 = v33;
  }

LABEL_28:
  v30 = v10 - v4;
  if (v6 != v4 || v6 >= &v4[v30])
  {
    memmove(v6, v4, 8 * v30);
  }

  return 1;
}

uint64_t sub_22C79BFFC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v79 = sub_22C9001BC();
  v8 = *(*(v79 - 8) + 64);
  MEMORY[0x28223BE20](v79);
  v78 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_22C3A5908(&qword_27D9BACD8, &unk_22C914820);
  v10 = *(*(v86 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v86);
  v82 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v69 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v69 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  result = MEMORY[0x28223BE20](v19);
  v24 = *(v23 + 72);
  if (!v24)
  {
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    return result;
  }

  v25 = a2 - a1;
  if (a2 - a1 == 0x8000000000000000 && v24 == -1)
  {
    goto LABEL_72;
  }

  v27 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v24 == -1)
  {
    goto LABEL_73;
  }

  v76 = &v69 - v21;
  v77 = v22;
  v29 = v25 / v24;
  v89 = a1;
  v88 = a4;
  v30 = v27 / v24;
  if (v25 / v24 < v27 / v24)
  {
    sub_22C3D7998(a1, v25 / v24, a4);
    v74 = a3;
    v75 = a4 + v29 * v24;
    v87 = v75;
    v32 = v76;
    v31 = v77;
    v73 = v24;
    while (1)
    {
      if (a4 >= v75 || a2 >= a3)
      {
        goto LABEL_70;
      }

      v84 = a1;
      v85 = a2;
      sub_22C4E719C(a2, v32, &qword_27D9BACD8, &unk_22C914820);
      v83 = a4;
      sub_22C4E719C(a4, v31, &qword_27D9BACD8, &unk_22C914820);
      sub_22C4E719C(v32, v18, &qword_27D9BACD8, &unk_22C914820);
      v82 = *(v86 + 48);
      sub_22C90019C();
      v34 = sub_22C90021C();
      v81 = *(*(v34 - 8) + 8);
      v81(v18, v34);
      sub_22C79C97C(&qword_27D9BFF78, MEMORY[0x277CC8B30]);
      v80 = sub_22C90A48C();
      v36 = v35;
      sub_22C36DD28(&v18[v82], &qword_27D9BB610, &qword_22C925BC0);
      sub_22C4E719C(v31, v18, &qword_27D9BACD8, &unk_22C914820);
      v37 = *(v86 + 48);
      sub_22C90019C();
      v81(v18, v34);
      v38 = sub_22C90A48C();
      v40 = v39;
      sub_22C36DD28(&v18[v37], &qword_27D9BB610, &qword_22C925BC0);
      if (v80 == v38 && v36 == v40)
      {

        v31 = v77;
        sub_22C36DD28(v77, &qword_27D9BACD8, &unk_22C914820);
        v32 = v76;
        sub_22C36DD28(v76, &qword_27D9BACD8, &unk_22C914820);
        v43 = v84;
      }

      else
      {
        v42 = sub_22C90B4FC();

        v31 = v77;
        sub_22C36DD28(v77, &qword_27D9BACD8, &unk_22C914820);
        v32 = v76;
        sub_22C36DD28(v76, &qword_27D9BACD8, &unk_22C914820);
        v43 = v84;
        if (v42)
        {
          v44 = v73;
          a2 = v85 + v73;
          v45 = v84 < v85 || v84 >= a2;
          a4 = v83;
          if (v45)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v84 != v85)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          goto LABEL_37;
        }
      }

      v44 = v73;
      a4 = v83 + v73;
      v46 = v43 < v83 || v43 >= a4;
      a2 = v85;
      if (v46)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (v43 != v83)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v88 = a4;
LABEL_37:
      a1 = v43 + v44;
      v89 = a1;
      a3 = v74;
    }
  }

  v80 = v15;
  sub_22C3D7998(a2, v27 / v24, a4);
  v47 = a4 + v30 * v24;
  v48 = -v24;
  v49 = v47;
  v83 = a4;
  v84 = a1;
  v72 = -v24;
LABEL_41:
  v50 = a2 + v48;
  v81 = a3;
  v70 = v49;
  v85 = a2;
  v73 = a2 + v48;
  while (1)
  {
    if (v47 <= a4)
    {
      v89 = a2;
      v87 = v49;
      goto LABEL_70;
    }

    if (a2 <= a1)
    {
      break;
    }

    v71 = v49;
    v77 = v47;
    v74 = v47 + v48;
    v51 = v80;
    sub_22C4E719C(v47 + v48, v80, &qword_27D9BACD8, &unk_22C914820);
    sub_22C4E719C(v50, v82, &qword_27D9BACD8, &unk_22C914820);
    sub_22C4E719C(v51, v18, &qword_27D9BACD8, &unk_22C914820);
    v52 = v86;
    v76 = *(v86 + 48);
    sub_22C90019C();
    v53 = sub_22C90021C();
    v54 = *(*(v53 - 8) + 8);
    v54(v18, v53);
    sub_22C79C97C(&qword_27D9BFF78, MEMORY[0x277CC8B30]);
    v75 = sub_22C90A48C();
    v56 = v55;
    sub_22C36DD28(&v18[v76], &qword_27D9BB610, &qword_22C925BC0);
    sub_22C4E719C(v82, v18, &qword_27D9BACD8, &unk_22C914820);
    v57 = *(v52 + 48);
    sub_22C90019C();
    v54(v18, v53);
    v58 = sub_22C90A48C();
    v60 = v59;
    sub_22C36DD28(&v18[v57], &qword_27D9BB610, &qword_22C925BC0);
    if (v75 == v58 && v56 == v60)
    {
      v62 = 0;
    }

    else
    {
      v62 = sub_22C90B4FC();
    }

    v48 = v72;
    v63 = v81;
    a3 = v81 + v72;
    sub_22C36DD28(v82, &qword_27D9BACD8, &unk_22C914820);
    sub_22C36DD28(v80, &qword_27D9BACD8, &unk_22C914820);
    a4 = v83;
    a1 = v84;
    a2 = v85;
    if (v62)
    {
      v66 = v63 < v85 || a3 >= v85;
      v67 = v63;
      v68 = v73;
      if (v66)
      {
        swift_arrayInitWithTakeFrontToBack();
        a2 = v68;
        v49 = v71;
        v47 = v77;
      }

      else
      {
        v49 = v71;
        a2 = v73;
        v47 = v77;
        if (v67 != v85)
        {
          v49 = v71;
          swift_arrayInitWithTakeBackToFront();
          a2 = v68;
        }
      }

      goto LABEL_41;
    }

    v64 = v63 < v77 || a3 >= v77;
    v65 = v63;
    v50 = v73;
    if (v64)
    {
      v49 = v74;
      swift_arrayInitWithTakeFrontToBack();
      goto LABEL_59;
    }

    v49 = v74;
    v81 = a3;
    v47 = v74;
    if (v77 != v65)
    {
      v49 = v74;
      swift_arrayInitWithTakeBackToFront();
LABEL_59:
      v81 = a3;
      v47 = v49;
    }
  }

  v89 = a2;
  v87 = v70;
LABEL_70:
  sub_22C83822C(&v89, &v88, &v87);
  return 1;
}

uint64_t sub_22C79C884(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_22C90B1BC();
    if (v3)
    {
      v4 = v3;
      v1 = sub_22C597AC0();
      sub_22C3D319C();
      v6 = v5;

      if (v6 == v4)
      {
        return v1;
      }

      __break(1u);
    }

    return MEMORY[0x277D84F90];
  }

  return a1 & 0xFFFFFFFFFFFFFF8;
}

uint64_t sub_22C79C97C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for PayloadLayout()
{
  result = qword_27D9C0088;
  if (!qword_27D9C0088)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22C79CA18()
{
  sub_22C79CEA4();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of PayloadLayout.setHeading(heading:)()
{
  return (*(*v0 + 392))();
}

{
  return (*(*v0 + 408))();
}

uint64_t dispatch thunk of PayloadLayout.setHeading(heading:preserveFormatting:)()
{
  return (*(*v0 + 400))();
}

{
  return (*(*v0 + 416))();
}

uint64_t dispatch thunk of PayloadLayout.setKey(key:)()
{
  return (*(*v0 + 424))();
}

{
  return (*(*v0 + 440))();
}

uint64_t dispatch thunk of PayloadLayout.setKey(key:preserveFormatting:)()
{
  return (*(*v0 + 432))();
}

{
  return (*(*v0 + 448))();
}

uint64_t dispatch thunk of PayloadLayout.setString(str:)()
{
  return (*(*v0 + 456))();
}

{
  return (*(*v0 + 464))();
}

uint64_t dispatch thunk of PayloadLayout.setDictionary(dictionary:)()
{
  return (*(*v0 + 480))();
}

{
  return (*(*v0 + 488))();
}

{
  return (*(*v0 + 496))();
}

{
  return (*(*v0 + 504))();
}

uint64_t dispatch thunk of PayloadLayout.setCollection(collection:)()
{
  return (*(*v0 + 512))();
}

{
  return (*(*v0 + 520))();
}

void sub_22C79CEA4()
{
  if (!qword_27D9C0098)
  {
    sub_22C90021C();
    v0 = sub_22C90AC6C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D9C0098);
    }
  }
}

unint64_t sub_22C79CEFC()
{
  result = qword_27D9C00B0;
  if (!qword_27D9C00B0)
  {
    sub_22C3AC1A0(&qword_27D9C00A8, &qword_22C925E98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C00B0);
  }

  return result;
}

unint64_t sub_22C79CF60()
{
  result = qword_27D9C00B8;
  if (!qword_27D9C00B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C00B8);
  }

  return result;
}

uint64_t sub_22C79CFB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  sub_22C36985C(v4);
  v6 = *(v5 + 32);
  v7 = sub_22C36BA00();
  v8(v7);
  return a2;
}

void sub_22C79D048()
{
  v1 = *(v0 - 72);
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
}

void sub_22C79D05C()
{
  v2 = v0;
  v3 = *(v0 + 16);
  *(v1 - 72) = v2;
  v4 = *(v2 + 24);
}

uint64_t sub_22C79D078(uint64_t result)
{
  v3 = *(v1 - 136);
  v2 = *(v1 - 128);
  *(v1 - 72) = result;
  return result;
}

uint64_t sub_22C79D084()
{
  v2 = *(v0 - 72);
}

uint64_t sub_22C79D0C0()
{

  return swift_beginAccess();
}

uint64_t sub_22C79D120@<X0>(uint64_t *a1@<X8>)
{
  v4 = sub_22C9063DC();
  v5 = sub_22C369824(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22C369838();
  v12 = v11 - v10;
  v13 = MEMORY[0x2318B4480]();
  v32 = v1;
  v14 = sub_22C3B259C(sub_22C79D3E4, v31, v13);

  if (!v2)
  {
    v33 = v14;
    sub_22C3A5908(&qword_27D9BB5D0, &unk_22C9112A0);
    sub_22C3F035C();
    v16 = sub_22C90A04C();
    v18 = v17;

    v19 = HIBYTE(v18) & 0xF;
    if ((v18 & 0x2000000000000000) == 0)
    {
      v19 = v16 & 0xFFFFFFFFFFFFLL;
    }

    if (!v19)
    {
      sub_22C903F8C();
      v20 = sub_22C9063CC();
      v21 = sub_22C90AADC();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_22C366000, v20, v21, "format() is returning an empty string. This is probably unexpected.", v22, 2u);
        sub_22C3699EC();
      }

      (*(v7 + 8))(v12, v4);
    }

    v23 = sub_22C90931C();
    v24 = swift_allocBox();
    *v25 = v16;
    v25[1] = v18;
    v26 = *MEMORY[0x277D729B8];
    sub_22C36BBA8(v23);
    (*(v27 + 104))();
    *a1 = v24;
    v28 = *MEMORY[0x277D72A58];
    v29 = sub_22C9093BC();
    sub_22C36BBA8(v29);
    return (*(v30 + 104))(a1, v28);
  }

  return result;
}

uint64_t sub_22C79D39C@<X0>(uint64_t a1@<X0>, void *a2@<X2>, uint64_t *a3@<X8>)
{
  result = sub_22C79D404(a1);
  if (v3)
  {
    *a2 = v3;
  }

  else
  {
    *a3 = result;
    a3[1] = v7;
  }

  return result;
}

uint64_t sub_22C79D404(uint64_t a1)
{
  v228 = a1;
  v2 = sub_22C90919C();
  v3 = sub_22C369824(v2);
  v212 = v4;
  v213 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22C3698E4();
  v205 = v7;
  sub_22C369930();
  MEMORY[0x28223BE20](v8);
  v206 = v200 - v9;
  sub_22C369930();
  MEMORY[0x28223BE20](v10);
  sub_22C36BA64();
  v215 = v11;
  v12 = sub_22C3A5908(&qword_27D9BC390, &qword_22C912AC0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  sub_22C3698E4();
  v211 = v14;
  sub_22C369930();
  MEMORY[0x28223BE20](v15);
  sub_22C36BA64();
  v221 = v16;
  sub_22C36BA0C();
  v223 = sub_22C9090BC();
  v17 = sub_22C369824(v223);
  v226 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v17);
  sub_22C369838();
  v222 = (v22 - v21);
  sub_22C36BA0C();
  v203 = sub_22C9001BC();
  sub_22C36BBA8(v203);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v25);
  sub_22C369838();
  v200[1] = v27 - v26;
  sub_22C36BA0C();
  v202 = sub_22C90021C();
  v28 = sub_22C369824(v202);
  v201 = v29;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v28);
  sub_22C369838();
  v204 = v33 - v32;
  sub_22C36BA0C();
  v34 = sub_22C90931C();
  v35 = sub_22C369824(v34);
  v224 = v36;
  v225 = v35;
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v35);
  sub_22C3698E4();
  v219 = v39;
  sub_22C369930();
  MEMORY[0x28223BE20](v40);
  sub_22C36BA64();
  v220 = v41;
  sub_22C36BA0C();
  v42 = sub_22C9063DC();
  v43 = sub_22C369824(v42);
  v217 = v44;
  v218 = v43;
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v43);
  sub_22C3698E4();
  v216 = v47;
  sub_22C369930();
  MEMORY[0x28223BE20](v48);
  v209 = v200 - v49;
  sub_22C369930();
  MEMORY[0x28223BE20](v50);
  sub_22C36BA64();
  v200[0] = v51;
  sub_22C36BA0C();
  v52 = sub_22C9093BC();
  v53 = sub_22C369824(v52);
  v229 = v54;
  v56 = *(v55 + 64);
  MEMORY[0x28223BE20](v53);
  sub_22C3698E4();
  v207 = v57;
  sub_22C369930();
  MEMORY[0x28223BE20](v58);
  v210 = (v200 - v59);
  sub_22C369930();
  v61 = MEMORY[0x28223BE20](v60);
  v63 = (v200 - v62);
  v64 = MEMORY[0x28223BE20](v61);
  v66 = (v200 - v65);
  MEMORY[0x28223BE20](v64);
  v68 = v200 - v67;
  v69 = sub_22C3A5908(&qword_27D9BF610, &qword_22C922B50);
  v70 = *(*(v69 - 8) + 64);
  MEMORY[0x28223BE20](v69 - 8);
  v72 = v200 - v71;
  v73 = sub_22C9025EC();
  v74 = sub_22C369824(v73);
  v76 = v75;
  v78 = *(v77 + 64);
  MEMORY[0x28223BE20](v74);
  sub_22C3698E4();
  v214 = v79;
  sub_22C369930();
  MEMORY[0x28223BE20](v80);
  v82 = v200 - v81;
  v83 = v1 + *(type metadata accessor for ValueFormatter() + 20);
  sub_22C729D78(v228, v72);
  if (sub_22C370B74(v72, 1, v73) == 1)
  {
    sub_22C376B84(v72, &qword_27D9BF610, &qword_22C922B50);
    type metadata accessor for InterpreterError();
    sub_22C37875C();
    sub_22C79E588(v84, v85);
    sub_22C370620();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return v83;
  }

  v228 = v76;
  v86 = *(v76 + 32);
  v208 = v73;
  v86(v82, v72, v73);
  sub_22C90207C();
  v87 = v229;
  v88 = (*(v229 + 88))(v68, v52);
  v89 = v52;
  v90 = v82;
  if (v88 != *MEMORY[0x277D72A58])
  {
    v225 = v68;
    if (v88 == *MEMORY[0x277D729E8])
    {
      sub_22C389280();
      v99(v63, v225, v52);
      (*(v87 + 96))(v63, v52);
      v100 = *v63;
      v101 = swift_projectBox();
      v102 = v222;
      v103 = v223;
      v226[2](v222, v101, v223);
      v104 = v221;
      sub_22C90907C();
      v105 = sub_22C90993C();
      if (sub_22C370B74(v104, 1, v105) == 1)
      {
        sub_22C376B84(v104, &qword_27D9BC390, &qword_22C912AC0);
        v83 = v102;
        sub_22C90908C();
        sub_22C385630();
      }

      else
      {
        v83 = v104;
        sub_22C9098BC();
        sub_22C385630();
        sub_22C36BBA8(v105);
        (*(v139 + 8))(v104, v105);
      }

      v140 = v228;
      (v226[1])(v102, v103);
      (*(v140 + 8))(v82, v208);

      v89 = v52;
    }

    else
    {
      if (v88 != *MEMORY[0x277D72A38])
      {
        goto LABEL_42;
      }

      v226 = v82;
      sub_22C389280();
      v110 = v210;
      v111(v210, v225, v52);
      v112 = *(v87 + 96);
      v224 = v52;
      v112(v110, v52);
      v113 = *v110;
      v114 = swift_projectBox();
      v116 = v212;
      v115 = v213;
      v117 = *(v212 + 16);
      v118 = v215;
      v117(v215, v114, v213);
      v119 = v211;
      sub_22C90915C();
      v120 = sub_22C90993C();
      if (sub_22C370B74(v119, 1, v120) != 1)
      {
        v83 = v119;
        sub_22C9098BC();
        sub_22C385630();
        (*(v116 + 8))(v118, v115);
        v146 = sub_22C79E68C();
        v147(v146);
        sub_22C36BBA8(v120);
        (*(v148 + 8))(v119, v120);

        v89 = v224;
        v68 = v225;
        goto LABEL_29;
      }

      v223 = v113;
      sub_22C376B84(v119, &qword_27D9BC390, &qword_22C912AC0);
      v121 = v209;
      sub_22C903F8C();
      v122 = v206;
      v117(v206, v118, v115);
      v123 = sub_22C9063CC();
      v124 = sub_22C90AADC();
      if (os_log_type_enabled(v123, v124))
      {
        v125 = swift_slowAlloc();
        v126 = swift_slowAlloc();
        v222 = v123;
        v127 = v115;
        v128 = v126;
        v230 = v126;
        *v125 = 136315138;
        v129 = v125;
        v119 = v205;
        v117(v205, v122, v127);
        v130 = sub_22C90A1AC();
        v131 = v124;
        v133 = v132;
        v134 = sub_22C79E6A4();
        v119(v134, v127);
        v135 = sub_22C36F9F4(v130, v133, &v230);

        v136 = v129;
        *(v129 + 1) = v135;
        v137 = v222;
        _os_log_impl(&dword_22C366000, v222, v131, "format() not implemented for AppEntity without DisplayRepresentation: %s. Swallowing error and returning an empty string.", v136, 0xCu);
        sub_22C36FF94(v128);
        sub_22C3699EC();
        sub_22C3699EC();

        sub_22C37500C();
        v138(v209);
      }

      else
      {

        v159 = sub_22C79E6A4();
        v119(v159, v115);
        sub_22C37500C();
        v160(v121);
        v127 = v115;
      }

      v89 = v224;
      v119(v215, v127);
      v161 = sub_22C79E68C();
      v162(v161);

      v83 = 0;
    }

    v68 = v225;
LABEL_29:
    (*(v229 + 8))(v68, v89);
    return v83;
  }

  sub_22C389280();
  v91(v66, v68, v52);
  (*(v87 + 96))(v66, v52);
  v92 = *v66;
  v83 = swift_projectBox();
  v94 = v224;
  v93 = v225;
  v95 = (*(v224 + 11))(v83, v225);
  if (v95 == *MEMORY[0x277D72988])
  {
    v96 = v220;
    (*(v94 + 2))(v220, v83, v93);
    v97 = sub_22C79E67C();
    v98(v97);
    if (*v96)
    {
      v83 = 1702195828;
    }

    else
    {
      v83 = 0x65736C6166;
    }

    *v96;
    (*(v228 + 8))(v90, v208);
    goto LABEL_28;
  }

  if (v95 == *MEMORY[0x277D72978])
  {
    v106 = sub_22C373984();
    v107(v106);
    v108 = sub_22C79E67C();
    v109(v108);
    v230 = *v82;
    sub_22C76AB50();
    v83 = &v230;
    sub_22C90ADBC();
LABEL_26:
    sub_22C385630();
LABEL_27:
    v156 = sub_22C371D50();
    v157(v156);
LABEL_28:

    goto LABEL_29;
  }

  if (v95 == *MEMORY[0x277D729A8])
  {
    v141 = sub_22C373984();
    v142(v141);
    v143 = sub_22C79E67C();
    v144(v143);
    v145 = *v82;
    sub_22C90A84C();
    goto LABEL_26;
  }

  if (v95 == *MEMORY[0x277D729C0])
  {
    v149 = sub_22C373984();
    v150(v149);
    v151 = sub_22C79E67C();
    v152(v151);
    v153 = *(v82 + 4);
    v154 = *v82;
    v155 = *(v82 + 1);
    sub_22C90AC1C();
    goto LABEL_26;
  }

  if (v95 == *MEMORY[0x277D729B8])
  {
    v163 = sub_22C371D50();
    v164(v163);
    v165 = v219;
    (*(v94 + 2))(v219, v83, v93);

    (*(v94 + 12))(v165, v93);
    v83 = *v165;
    v166 = v165[1];
    goto LABEL_29;
  }

  if (v95 == *MEMORY[0x277D72968])
  {
    v167 = sub_22C373984();
    v168(v167);
    v169 = sub_22C79E67C();
    v170(v169);
    v171 = v201;
    v83 = v204;
    v172 = v202;
    (*(v201 + 32))();
    sub_22C90019C();
    sub_22C79E588(&qword_27D9BFF78, MEMORY[0x277CC8B30]);
    sub_22C90A48C();
    sub_22C385630();
    (*(v171 + 8))(v204, v172);
    goto LABEL_27;
  }

  if (v95 == *MEMORY[0x277D729A0])
  {
    sub_22C903F8C();
    v173 = sub_22C9063CC();
    v174 = sub_22C90AADC();
    if (os_log_type_enabled(v173, v174))
    {
      v175 = swift_slowAlloc();
      *v175 = 0;
      _os_log_impl(&dword_22C366000, v173, v174, "format() not implemented for None. Swallowing error and returning an empty string.", v175, 2u);
      sub_22C3699EC();
    }

    sub_22C37500C();
    v176(v200[0]);
    v177 = sub_22C371D50();
    v178(v177);

    v83 = 0;
    goto LABEL_29;
  }

  v225 = v68;

LABEL_42:
  v179 = v89;
  v83 = v216;
  sub_22C903F8C();
  v180 = v228;
  sub_22C389280();
  v181 = v214;
  v182 = v208;
  v183(v214, v82, v208);
  v184 = sub_22C9063CC();
  v185 = sub_22C90AADC();
  if (os_log_type_enabled(v184, v185))
  {
    v186 = v181;
    v187 = swift_slowAlloc();
    v224 = v187;
    v188 = swift_slowAlloc();
    v226 = v90;
    v227 = v188;
    v230 = v188;
    *v187 = 136315138;
    v189 = v182;
    sub_22C90207C();
    v190 = v179;
    v191 = sub_22C90A1AC();
    v193 = v192;
    v194 = *(v180 + 8);
    v194(v186, v189);
    v195 = sub_22C36F9F4(v191, v193, &v230);
    v179 = v190;

    v196 = v224;
    *(v224 + 1) = v195;
    v83 = v196;
    _os_log_impl(&dword_22C366000, v184, v185, "format() not implemented for value: %s", v196, 0xCu);
    sub_22C36FF94(v227);
    v90 = v226;
    sub_22C3699EC();
    sub_22C3699EC();

    (*(v217 + 8))(v216, v218);
    v182 = v208;
  }

  else
  {

    v194 = *(v180 + 8);
    v194(v181, v182);
    sub_22C37500C();
    v197(v83);
  }

  type metadata accessor for InterpreterError();
  sub_22C37875C();
  sub_22C79E588(v198, v199);
  sub_22C370620();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  v194(v90, v182);
  (*(v229 + 8))(v225, v179);
  return v83;
}

uint64_t type metadata accessor for ValueFormatter()
{
  result = qword_27D9C00D8;
  if (!qword_27D9C00D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22C79E588(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22C79E5F8()
{
  result = sub_22C906FBC();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for TranscriptValueFetcher(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_22C79E68C()
{
  v1 = *(*(v0 - 104) + 8);
  result = *(v0 - 120);
  v3 = *(v0 - 264);
  return result;
}

uint64_t type metadata accessor for ValueResolver()
{
  result = qword_27D9C00E8;
  if (!qword_27D9C00E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22C79E72C()
{
  result = sub_22C9087BC();
  if (v1 <= 0x3F)
  {
    result = sub_22C908AEC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_22C79E7B0(uint64_t a1, uint64_t a2)
{
  v40 = a2;
  v39 = sub_22C9093BC();
  v3 = *(v39 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v39);
  v38 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v37 = &v29 - v7;
  v8 = sub_22C906D2C();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](a1);
  v31 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v10);
  v14 = &v29 - v13;
  v15 = 0;
  v41 = *(result + 16);
  v34 = (v3 + 8);
  v35 = v16 + 16;
  v33 = (v16 + 8);
  v36 = v16;
  v30 = (v16 + 32);
  v32 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v41 == v15)
    {

      return v32;
    }

    if (v15 >= *(result + 16))
    {
      break;
    }

    v17 = (*(v36 + 80) + 32) & ~*(v36 + 80);
    v18 = *(v36 + 72);
    v19 = result;
    (*(v36 + 16))(v14, result + v17 + v18 * v15, v8);
    sub_22C906D1C();
    v20 = v37;
    sub_22C6A5C2C();
    v22 = v21;
    (*v34)(v20, v39);
    if (v22)
    {
      v23 = *v30;
      (*v30)(v31, v14, v8);
      v24 = v32;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v42 = v24;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_22C3B7B38(0, *(v24 + 16) + 1, 1);
        v24 = v42;
      }

      v27 = *(v24 + 16);
      v26 = *(v24 + 24);
      v28 = v27 + 1;
      if (v27 >= v26 >> 1)
      {
        v32 = v27 + 1;
        sub_22C3B7B38(v26 > 1, v27 + 1, 1);
        v28 = v32;
        v24 = v42;
      }

      ++v15;
      *(v24 + 16) = v28;
      v32 = v24;
      v23((v24 + v17 + v27 * v18), v31, v8);
      result = v19;
    }

    else
    {
      (*v33)(v14, v8);
      ++v15;
      result = v19;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22C79EB0C(void (*a1)(uint64_t *__return_ptr, uint64_t))
{
  v26 = a1;
  v2 = sub_22C9093BC();
  v3 = sub_22C369824(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22C369838();
  v10 = v9 - v8;
  v11 = sub_22C36CC9C();
  v13 = sub_22C3A5908(v11, v12);
  v14 = sub_22C369914(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v25 - v17;
  v19 = sub_22C370114();
  sub_22C3E8FB4(v19, v20, &qword_27D9BB908, &qword_22C910960);
  if (sub_22C370B74(v18, 1, v2) == 1)
  {
    return 0xF000000000000007;
  }

  v22 = *(v5 + 32);
  v23 = sub_22C36CA88();
  v24(v23);
  v26(&v27, v10);
  if (v1)
  {
    result = (*(v5 + 8))(v10, v2);
    __break(1u);
  }

  else
  {
    (*(v5 + 8))(v10, v2);
    return v27;
  }

  return result;
}

uint64_t sub_22C79ECB8@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v3;
  v18[1] = a2;
  v19 = a1;
  v7 = sub_22C908ABC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22C3A5908(&qword_27D9BC0B0, &unk_22C912AD0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = v18 - v14;
  sub_22C3E8FB4(v5, v18 - v14, &qword_27D9BC0B0, &unk_22C912AD0);
  if (sub_22C370B74(v15, 1, v7) == 1)
  {
    v16 = sub_22C90981C();
    return sub_22C36C640(a3, 1, 1, v16);
  }

  else
  {
    (*(v8 + 32))(v11, v15, v7);
    v19(v11);
    result = (*(v8 + 8))(v11, v7);
    if (v4)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_22C79EEA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[17] = a5;
  v6[18] = v5;
  v6[15] = a3;
  v6[16] = a4;
  v6[13] = a1;
  v6[14] = a2;
  v7 = sub_22C3A5908(&qword_27D9BF318, &qword_22C9225A0);
  sub_22C369914(v7);
  v9 = *(v8 + 64);
  v6[19] = sub_22C3699D4();
  v10 = sub_22C906D2C();
  v6[20] = v10;
  sub_22C3699B8(v10);
  v6[21] = v11;
  v13 = *(v12 + 64);
  v6[22] = sub_22C3699D4();
  v14 = type metadata accessor for EnumResolver();
  v6[23] = v14;
  sub_22C369914(v14);
  v16 = *(v15 + 64);
  v6[24] = sub_22C36D0D4();
  v6[25] = swift_task_alloc();
  v17 = sub_22C9094EC();
  v6[26] = v17;
  sub_22C3699B8(v17);
  v6[27] = v18;
  v20 = *(v19 + 64);
  v6[28] = sub_22C3699D4();
  v21 = sub_22C90021C();
  v6[29] = v21;
  sub_22C3699B8(v21);
  v6[30] = v22;
  v24 = *(v23 + 64);
  v6[31] = sub_22C3699D4();
  v25 = sub_22C3A5908(&qword_27D9BB138, &qword_22C90DB70);
  sub_22C369914(v25);
  v27 = *(v26 + 64);
  v6[32] = sub_22C36D0D4();
  v6[33] = swift_task_alloc();
  v28 = sub_22C90046C();
  v6[34] = v28;
  sub_22C3699B8(v28);
  v6[35] = v29;
  v31 = *(v30 + 64);
  v6[36] = sub_22C3699D4();
  v32 = type metadata accessor for DateComponentsResolver();
  v6[37] = v32;
  sub_22C369914(v32);
  v34 = *(v33 + 64);
  v6[38] = sub_22C36D0D4();
  v6[39] = swift_task_alloc();
  v35 = sub_22C3A5908(&qword_27D9BF328, &qword_22C9225C0);
  sub_22C369914(v35);
  v37 = *(v36 + 64);
  v6[40] = sub_22C3699D4();
  v38 = sub_22C9026BC();
  v6[41] = v38;
  sub_22C3699B8(v38);
  v6[42] = v39;
  v41 = *(v40 + 64);
  v6[43] = sub_22C3699D4();
  v42 = sub_22C907DEC();
  sub_22C369914(v42);
  v44 = *(v43 + 64);
  v6[44] = sub_22C3699D4();
  v45 = sub_22C3A5908(&qword_27D9BF330, &unk_22C923250);
  sub_22C369914(v45);
  v47 = *(v46 + 64);
  v6[45] = sub_22C3699D4();
  v48 = sub_22C3A5908(&qword_27D9BB190, qword_22C90DD90);
  sub_22C369914(v48);
  v50 = *(v49 + 64);
  v6[46] = sub_22C3699D4();
  v51 = sub_22C90083C();
  v6[47] = v51;
  sub_22C3699B8(v51);
  v6[48] = v52;
  v54 = *(v53 + 64);
  v6[49] = sub_22C36D0D4();
  v6[50] = swift_task_alloc();
  v55 = sub_22C90063C();
  v6[51] = v55;
  sub_22C3699B8(v55);
  v6[52] = v56;
  v58 = *(v57 + 64);
  v6[53] = sub_22C36D0D4();
  v6[54] = swift_task_alloc();
  v59 = sub_22C9021DC();
  v6[55] = v59;
  sub_22C3699B8(v59);
  v6[56] = v60;
  v62 = *(v61 + 64);
  v6[57] = sub_22C3699D4();
  v63 = sub_22C9068CC();
  v6[58] = v63;
  sub_22C3699B8(v63);
  v6[59] = v64;
  v66 = *(v65 + 64);
  v6[60] = sub_22C36D0D4();
  v6[61] = swift_task_alloc();
  v67 = sub_22C90077C();
  v6[62] = v67;
  sub_22C3699B8(v67);
  v6[63] = v68;
  v70 = *(v69 + 64);
  v6[64] = sub_22C36D0D4();
  v6[65] = swift_task_alloc();
  v6[66] = swift_task_alloc();
  v71 = type metadata accessor for DateResolver();
  v6[67] = v71;
  sub_22C369914(v71);
  v73 = *(v72 + 64);
  v6[68] = sub_22C36D0D4();
  v6[69] = swift_task_alloc();
  v74 = sub_22C3A5908(&qword_27D9BB908, &qword_22C910960);
  sub_22C369914(v74);
  v76 = *(v75 + 64);
  v6[70] = sub_22C36D0D4();
  v6[71] = swift_task_alloc();
  v77 = sub_22C3A5908(&qword_27D9C00F8, &unk_22C925EF8);
  v6[72] = v77;
  sub_22C369914(v77);
  v79 = *(v78 + 64);
  v6[73] = sub_22C3699D4();
  v80 = sub_22C9093BC();
  v6[74] = v80;
  sub_22C3699B8(v80);
  v6[75] = v81;
  v83 = *(v82 + 64);
  v6[76] = sub_22C36D0D4();
  v6[77] = swift_task_alloc();
  v6[78] = swift_task_alloc();
  v6[79] = swift_task_alloc();
  v6[80] = swift_task_alloc();
  v6[81] = swift_task_alloc();
  v84 = sub_22C9063DC();
  v6[82] = v84;
  sub_22C3699B8(v84);
  v6[83] = v85;
  v87 = *(v86 + 64);
  v6[84] = sub_22C36D0D4();
  v6[85] = swift_task_alloc();
  v6[86] = swift_task_alloc();
  v6[87] = swift_task_alloc();
  v6[88] = swift_task_alloc();
  v6[89] = swift_task_alloc();
  v6[90] = swift_task_alloc();
  v6[91] = swift_task_alloc();
  v6[92] = swift_task_alloc();
  v6[93] = swift_task_alloc();
  v6[94] = swift_task_alloc();
  v6[95] = swift_task_alloc();
  v88 = sub_22C901FAC();
  v6[96] = v88;
  sub_22C3699B8(v88);
  v6[97] = v89;
  v91 = *(v90 + 64);
  v6[98] = sub_22C36D0D4();
  v6[99] = swift_task_alloc();
  v92 = sub_22C906F2C();
  v6[100] = v92;
  sub_22C3699B8(v92);
  v6[101] = v93;
  v95 = *(v94 + 64);
  v6[102] = sub_22C36D0D4();
  v6[103] = swift_task_alloc();
  v6[104] = swift_task_alloc();
  v6[105] = swift_task_alloc();
  v96 = sub_22C3A5908(&qword_27D9BB0C0, &qword_22C90D960);
  sub_22C369914(v96);
  v98 = *(v97 + 64);
  v6[106] = sub_22C36D0D4();
  v6[107] = swift_task_alloc();
  v99 = sub_22C90941C();
  v6[108] = v99;
  sub_22C3699B8(v99);
  v6[109] = v100;
  v102 = *(v101 + 64);
  v6[110] = sub_22C36D0D4();
  v6[111] = swift_task_alloc();
  v103 = sub_22C90952C();
  v6[112] = v103;
  sub_22C3699B8(v103);
  v6[113] = v104;
  v106 = *(v105 + 64);
  v6[114] = sub_22C36D0D4();
  v6[115] = swift_task_alloc();
  v6[116] = swift_task_alloc();
  v107 = sub_22C90769C();
  v6[117] = v107;
  sub_22C3699B8(v107);
  v6[118] = v108;
  v110 = *(v109 + 64);
  v6[119] = sub_22C3699D4();
  v111 = sub_22C3A5908(&qword_27D9BC0B0, &unk_22C912AD0);
  sub_22C369914(v111);
  v113 = *(v112 + 64);
  v6[120] = sub_22C3699D4();
  v114 = sub_22C3A5908(&qword_27D9BC0C0, &unk_22C911FA0);
  sub_22C369914(v114);
  v116 = *(v115 + 64);
  v6[121] = sub_22C36D0D4();
  v6[122] = swift_task_alloc();
  v117 = sub_22C90981C();
  v6[123] = v117;
  sub_22C3699B8(v117);
  v6[124] = v118;
  v120 = *(v119 + 64);
  v6[125] = sub_22C36D0D4();
  v6[126] = swift_task_alloc();
  v6[127] = swift_task_alloc();
  v121 = sub_22C3A5908(&qword_27D9BD7E8, &qword_22C923170);
  sub_22C369914(v121);
  v123 = *(v122 + 64);
  v6[128] = sub_22C3699D4();
  v124 = sub_22C907D6C();
  v6[129] = v124;
  sub_22C3699B8(v124);
  v6[130] = v125;
  v127 = *(v126 + 64);
  v6[131] = sub_22C3699D4();

  return MEMORY[0x2822009F8](sub_22C79F8E4, 0, 0);
}

uint64_t sub_22C79F8E4()
{
  sub_22C3749D8();
  v821 = v0;
  v1 = *(v0 + 1032);
  sub_22C3E8FB4(*(v0 + 128), *(v0 + 1024), &qword_27D9BD7E8, &qword_22C923170);
  v2 = sub_22C36CCF8();
  if (sub_22C370B74(v2, v3, v1) != 1)
  {
    v33 = *(v0 + 1048);
    v34 = *(v0 + 976);
    v797 = *(v0 + 968);
    v808 = *(v0 + 984);
    v35 = *(v0 + 960);
    v36 = *(v0 + 952);
    v37 = *(v0 + 944);
    v38 = *(v0 + 936);
    v39 = *(v0 + 144);
    (*(*(v0 + 1040) + 32))(v33, *(v0 + 1024), *(v0 + 1032));
    v40 = *(type metadata accessor for ValueResolver() + 20);
    sub_22C907D5C();
    v772 = v40;
    v787 = v39;
    sub_22C908ADC();
    (*(v37 + 8))(v36, v38);
    v41 = swift_task_alloc();
    *(v41 + 16) = v33;
    sub_22C79ECB8(sub_22C7A6E10, v41, v34);

    sub_22C36DD28(v35, &qword_27D9BC0B0, &unk_22C912AD0);
    sub_22C3E8FB4(v34, v797, &qword_27D9BC0C0, &unk_22C911FA0);
    v42 = sub_22C3707B4();
    if (sub_22C370B74(v42, v43, v808) == 1)
    {
      v44 = *(v0 + 1048);
      v45 = *(v0 + 1040);
      v46 = *(v0 + 1032);
      v47 = *(v0 + 976);
      sub_22C36DD28(*(v0 + 968), &qword_27D9BC0C0, &unk_22C911FA0);
      sub_22C90735C();
      sub_22C3A5F00();
      v48 = sub_22C36FBE4();
      sub_22C373084(v48, v49, *(v0 + 88), *(v0 + 72), *(v0 + 56));
      v50 = sub_22C36ECB4();
      sub_22C36DD28(v50, v51, &unk_22C911FA0);
      (*(v45 + 8))(v44, v46);
      goto LABEL_122;
    }

    v58 = *(v0 + 1016);
    v59 = *(v0 + 992);
    v60 = *(v0 + 984);
    v61 = *(v0 + 968);
    v809 = *(v0 + 896);
    v62 = *(v0 + 888);
    v63 = *(v0 + 872);
    v64 = *(v0 + 864);
    v65 = *(v0 + 856);
    v66 = *(v0 + 848);
    sub_22C36DD28(*(v0 + 976), &qword_27D9BC0C0, &unk_22C911FA0);
    v67 = *(v59 + 32);
    v68 = sub_22C386680();
    v70 = v69(v68);
    MEMORY[0x2318B6CE0](v70);
    v71 = sub_22C9093DC();
    v72 = *(v63 + 8);
    v73 = sub_22C36FC2C();
    v72(v73);
    sub_22C58B0F8(v71);

    v74 = sub_22C36CC9C();
    sub_22C3E8FB4(v74, v75, v76, v77);
    if (sub_22C370B74(v66, 1, v809) == 1)
    {
      v78 = *(v0 + 1048);
      v79 = *(v0 + 1040);
      v80 = *(v0 + 1032);
      v81 = *(v0 + 1016);
      v82 = *(v0 + 992);
      v83 = *(v0 + 984);
      v84 = *(v0 + 856);
      sub_22C36DD28(*(v0 + 848), &qword_27D9BB0C0, &qword_22C90D960);
      sub_22C90735C();
      sub_22C3A5F00();
      v85 = sub_22C36FBE4();
      sub_22C373084(v85, v86, *(v0 + 48), *(v0 + 32), *(v0 + 16));
      sub_22C36DD28(v84, &qword_27D9BB0C0, &qword_22C90D960);
      v87 = *(v82 + 8);
      v88 = sub_22C36ECB4();
      v89(v88);
      (*(v79 + 8))(v78, v80);
      goto LABEL_122;
    }

    v96 = v72;
    v97 = *(v0 + 928);
    v98 = *(v0 + 904);
    v99 = *(v0 + 896);
    v100 = *(v0 + 848);
    v101 = *(v0 + 840);
    v102 = *(v0 + 808);
    v103 = *(v0 + 800);
    v104 = *(v0 + 112);
    sub_22C36DD28(*(v0 + 856), &qword_27D9BB0C0, &qword_22C90D960);
    v105 = *(v98 + 32);
    v106 = sub_22C372164();
    v107(v106);
    v108 = *(v102 + 16);
    v108(v101, v104, v103);
    v109 = *(v102 + 88);
    v110 = sub_22C36CA88();
    if (v109(v110) == *MEMORY[0x277D1DEE8])
    {
      v111 = *(v0 + 840);
      sub_22C36DAE4();
      v112 = *(v0 + 144);
      (*(v113 + 96))(v111);
      v114 = *v111;
      v115 = sub_22C7A47BC();
      if (v115 == *(v114 + 16))
      {
        v116 = *(v0 + 1040);
        v798 = *(v0 + 1032);
        v810 = *(v0 + 1048);
        v117 = *(v0 + 992);
        v773 = *(v0 + 984);
        v788 = *(v0 + 1016);
        v118 = *(v0 + 904);
        v746 = *(v0 + 896);
        v758 = *(v0 + 928);
        v119 = *(v0 + 792);
        v120 = *(v0 + 776);
        v121 = *(v0 + 768);
        v122 = *(v0 + 136);
        v123 = *(v0 + 104);

        (*(v120 + 16))(v119, v122, v121);
        sub_22C906A1C();
        (*(v118 + 8))(v758, v746);
        (*(v117 + 8))(v788, v773);
        type metadata accessor for StepResolution();
        swift_storeEnumTagMultiPayload();
        (*(v116 + 8))(v810, v798);
LABEL_20:
        sub_22C36C3C0();
        sub_22C382E00();
        sub_22C7A7148();
        sub_22C7A713C();
        sub_22C3883F4();
        sub_22C37BC2C();
        sub_22C37600C();
        sub_22C36EE0C();
        sub_22C3745C0();
        sub_22C38C4BC();
        sub_22C37ED84();
        sub_22C7A7114();
        sub_22C7A7108();
        sub_22C7A70FC();
        sub_22C7A70F0();
        sub_22C7A70E4();
        sub_22C7A70D8();
        sub_22C7A70CC();
        sub_22C7A70C0();
        v669 = *(v0 + 488);
        v671 = *(v0 + 480);
        v673 = *(v0 + 456);
        v675 = *(v0 + 432);
        v677 = *(v0 + 424);
        v679 = *(v0 + 400);
        v681 = *(v0 + 392);
        v684 = *(v0 + 368);
        v689 = *(v0 + 360);
        v695 = *(v0 + 352);
        v700 = *(v0 + 344);
        v704 = *(v0 + 320);
        v708 = *(v0 + 312);
        v715 = *(v0 + 304);
        v720 = *(v0 + 288);
        v727 = *(v0 + 264);
        v737 = *(v0 + 256);
        v748 = *(v0 + 248);
        v760 = *(v0 + 224);
        v775 = *(v0 + 200);
        v789 = *(v0 + 192);
        v800 = *(v0 + 176);
        v812 = *(v0 + 152);

        sub_22C369A24();
        goto LABEL_123;
      }

      if (!v115)
      {
        v265 = *(v0 + 1016);
        v266 = *(v0 + 880);
        v267 = *(v0 + 144);
        v268 = *(v0 + 120);
        MEMORY[0x2318B6CE0]();
        v269 = swift_task_alloc();
        v269[2] = v114;
        v269[3] = v267;
        v269[4] = v266;
        sub_22C3B47C8();
        v270 = *(v0 + 1040);
        v791 = *(v0 + 1016);
        v803 = *(v0 + 1032);
        v271 = *(v0 + 992);
        v762 = *(v0 + 928);
        v777 = *(v0 + 984);
        v272 = *(v0 + 904);
        v749 = *(v0 + 896);
        v729 = *(v0 + 880);
        v273 = *(v0 + 864);
        v815 = *(v0 + 1048);
        v285 = *(v0 + 776);
        v710 = *(v0 + 792);
        v716 = *(v0 + 768);
        v705 = *(v0 + 136);
        v722 = *(v0 + 104);
        v287 = v286;

        sub_22C7A6D50(v287);

        v96(v729, v273);
        (*(v285 + 16))(v710, v705, v716);
        sub_22C36D264();
        sub_22C90690C();
        (*(v272 + 8))(v762, v749);
        (*(v271 + 8))(v791, v777);
        type metadata accessor for StepResolution();
        swift_storeEnumTagMultiPayload();
        (*(v270 + 8))(v815, v803);
        goto LABEL_20;
      }

      v181 = *(v0 + 760);

      sub_22C903F8C();
      v182 = sub_22C9063CC();
      v183 = sub_22C90AADC();
      if (sub_22C7A7224(v183))
      {
        v184 = sub_22C36D240();
        *v184 = 0;
        _os_log_impl(&dword_22C366000, v182, v181, "an array cannot contain both skipped and evaluated statements", v184, 2u);
        sub_22C3699EC();
      }

      sub_22C7A7154();
      v790 = v185;
      v802 = v186;
      v187 = *(v0 + 992);
      v761 = *(v0 + 984);
      v776 = *(v0 + 1016);
      v188 = *(v0 + 928);
      v189 = *(v0 + 904);
      v190 = *(v0 + 896);
      v191 = *(v0 + 760);
      v192 = *(v0 + 664);
      v193 = *(v0 + 656);

      v194 = *(v192 + 8);
      v195 = sub_22C36CC9C();
      v196(v195);
      type metadata accessor for InterpreterError();
      sub_22C36B710();
      sub_22C7A6F08(v197, v198);
      v199 = sub_22C36FBE4();
      sub_22C37AD18(v199, v200);
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v201 = *(v189 + 8);
      v202 = sub_22C36FC2C();
      v203(v202);
      (*(v187 + 8))(v776, v761);
      (*(v181 + 8))(v802, v790);
LABEL_122:
      sub_22C387564();
      v579 = *(v0 + 960);
      v580 = *(v0 + 952);
      sub_22C7A7164();
      sub_22C382E00();
      sub_22C7A7148();
      sub_22C7A713C();
      sub_22C3883F4();
      sub_22C37BC2C();
      sub_22C37600C();
      sub_22C36EE0C();
      sub_22C3745C0();
      sub_22C38C4BC();
      sub_22C37ED84();
      sub_22C7A7114();
      sub_22C7A7108();
      sub_22C7A70FC();
      sub_22C7A70F0();
      sub_22C7A70E4();
      sub_22C7A70D8();
      sub_22C7A70CC();
      sub_22C7A70C0();
      v668 = *(v0 + 488);
      v670 = *(v0 + 480);
      v672 = *(v0 + 456);
      v674 = *(v0 + 432);
      v676 = *(v0 + 424);
      v678 = *(v0 + 400);
      v680 = *(v0 + 392);
      v683 = *(v0 + 368);
      v688 = *(v0 + 360);
      v694 = *(v0 + 352);
      v699 = *(v0 + 344);
      v703 = *(v0 + 320);
      v707 = *(v0 + 312);
      v714 = *(v0 + 304);
      v719 = *(v0 + 288);
      v726 = *(v0 + 264);
      v734 = *(v0 + 256);
      v743 = *(v0 + 248);
      v755 = *(v0 + 224);
      v769 = *(v0 + 200);
      v783 = *(v0 + 192);
      v794 = *(v0 + 176);
      v807 = *(v0 + 152);

      sub_22C369A24();
LABEL_123:
      sub_22C7A71D4();

      __asm { BRAA            X1, X16 }
    }

    v813 = *(v0 + 928);
    v152 = v108;
    v153 = *(v0 + 904);
    v154 = *(v0 + 896);
    v155 = *(v0 + 800);
    v156 = *(v0 + 584);
    v157 = *(v0 + 576);
    v158 = *(v0 + 112);
    v728 = (*(v0 + 808) + 8);
    v738 = v109;
    v721 = *v728;
    (*v728)(*(v0 + 840), v155);
    v159 = (v156 + *(v157 + 48));
    v160 = v153 + 16;
    v801 = *(v153 + 16);
    (v801)(v156, v813, v154);
    v814 = v159;
    v709 = v152;
    v152(v159, v158, v155);
    v161 = (*(v153 + 88))(v156, v154);
    if (v161 == *MEMORY[0x277D72D50])
    {
      v162 = *(v0 + 920);
      v163 = *(v0 + 904);
      v164 = *(v0 + 896);
      v165 = *(v0 + 208);
      v166 = *(v0 + 216);
      v167 = v801;
      (v801)(v162, *(v0 + 584), v164);
      (*(v163 + 96))(v162, v164);
      v168 = *v162;
      *(v0 + 1056) = v168;
      v169 = swift_projectBox();
      v171 = *(v166 + 88);
      v170 = v166 + 88;
      v172 = v171(v169, v165);
      if (v172 == *MEMORY[0x277D72C50])
      {
        v174 = *(v0 + 216);
        v173 = *(v0 + 224);
        v175 = *(v0 + 208);
        v176 = *(v174 + 16);
        v177 = sub_22C372164();
        v178(v177);
        (*(v174 + 96))(v173, v175);
        if (*v173 == 6 && (v738)(v814, *(v0 + 800)) == *MEMORY[0x277D1DEF8])
        {
          sub_22C36DAE4();
          v179 = *(v0 + 632);
          (*(v180 + 96))(v814);
          sub_22C774818(*v814, *(v814 + 1), v179);
          v154 = *(v0 + 648);
          v169 = *(v0 + 632);
          v326 = *(v0 + 600);
          v165 = *(v0 + 592);

          v327 = *(v326 + 32);
          v328 = sub_22C36D264();
          v329(v328);
LABEL_78:

          goto LABEL_79;
        }

        goto LABEL_117;
      }

      if (v172 == *MEMORY[0x277D72CB0])
      {
        v226 = sub_22C36A368();
        if (v227(v226) == *MEMORY[0x277D1DED8])
        {
          v228 = sub_22C378774();
          v229(v228);
          v230 = *v814;
          v231 = sub_22C90931C();
          v232 = swift_allocBox();
          sub_22C37AD18(v232, v233);
          *v234 = v230;
          v235 = MEMORY[0x277D72988];
LABEL_77:
          v337 = *v235;
          sub_22C36BBA8(v231);
          (*(v338 + 104))();
          *v154 = v165;
          (*(v170 + 104))(v154, *MEMORY[0x277D72A58], v169);
          goto LABEL_78;
        }

        goto LABEL_117;
      }

      if (v172 == *MEMORY[0x277D72CA0])
      {
        v274 = sub_22C36A368();
        v276 = v275(v274);
        if (v276 == *MEMORY[0x277D1DED0])
        {
          v277 = sub_22C378774();
          v278(v277);
          v279 = *v814;
          v231 = sub_22C90931C();
          v280 = swift_allocBox();
          sub_22C37AD18(v280, v281);
          *v282 = v279;
          v235 = MEMORY[0x277D72978];
          goto LABEL_77;
        }

        if (v276 == *MEMORY[0x277D1DEF0])
        {
          sub_22C36DAE4();
          v304 = sub_22C3776D8(v303);
          v305(v304);
          v306 = *v814;
          v307 = *v814;
          v308 = sub_22C90931C();
          result = swift_allocBox();
          if ((v307 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
            __break(1u);
          }

          else if (v306 > -9.22337204e18)
          {
            if (v306 < 9.22337204e18)
            {
              v154 = result;
              v169 = *(v0 + 648);
              v310 = *(v0 + 600);
              v165 = *(v0 + 592);
              *v309 = v306;
              (*(*(v308 - 8) + 104))(v309, *MEMORY[0x277D72978], v308);
              *v169 = v154;
              (*(v310 + 104))(v169, *MEMORY[0x277D72A58], v165);
              goto LABEL_78;
            }

LABEL_140:
            __break(1u);
            return result;
          }

          __break(1u);
          goto LABEL_140;
        }
      }

      else
      {
        if (v172 == *MEMORY[0x277D72CD0])
        {
          v288 = sub_22C36A368();
          v290 = v289(v288);
          if (v290 == *MEMORY[0x277D1DED0])
          {
            v291 = sub_22C378774();
            v292(v291);
            v293 = *v814;
            v231 = sub_22C90931C();
            v294 = swift_allocBox();
            sub_22C37AD18(v294, v295);
            *v296 = v293;
          }

          else
          {
            if (v290 != *MEMORY[0x277D1DEF0])
            {
              goto LABEL_117;
            }

            v331 = sub_22C378774();
            v332(v331);
            v333 = *v814;
            v231 = sub_22C90931C();
            v334 = swift_allocBox();
            sub_22C37AD18(v334, v335);
            *v336 = v333;
          }

          v235 = MEMORY[0x277D729A8];
          goto LABEL_77;
        }

        if (v172 == *MEMORY[0x277D72CE8])
        {
          v311 = sub_22C36A368();
          v313 = v312(v311);
          if (v313 == *MEMORY[0x277D1DED0])
          {
            sub_22C388A10();
            v314 = *(v0 + 600);
            v169 = *(v0 + 592);
            v316 = sub_22C3776D8(v315);
            v317(v316);
            v318 = *v814;
            v165 = sub_22C90931C();
            v319 = swift_allocBox();
            v321 = v320;
            *v320 = MEMORY[0x2318B8110](v318);
            v321[1] = v322;
            *(v321 + 4) = v323;
            v324 = *MEMORY[0x277D729C0];
            sub_22C36BBA8(v165);
            (*(v325 + 104))(v321);
            *v154 = v319;
            (*(v314 + 104))(v154, *MEMORY[0x277D72A58], v169);
            goto LABEL_78;
          }

          if (v313 == *MEMORY[0x277D1DEF0])
          {
            sub_22C388A10();
            v366 = *(v0 + 600);
            v169 = *(v0 + 592);
            (*(v367 + 96))(v814);
            v368 = *v814;
            v369 = sub_22C90931C();
            v165 = swift_allocBox();
            v371 = v370;
            *v370 = MEMORY[0x2318B8100](*&v368);
            v371[1] = v372;
            *(v371 + 4) = v373;
            v374 = *MEMORY[0x277D729C0];
            sub_22C36BBA8(v369);
            (*(v375 + 104))(v371);
            *v154 = v165;
            (*(v366 + 104))(v154, *MEMORY[0x277D72A58], v169);
            goto LABEL_78;
          }

          goto LABEL_117;
        }

        if (v172 != *MEMORY[0x277D72CE0])
        {
          if (v172 == *MEMORY[0x277D72CB8])
          {
            v376 = sub_22C36A368();
            if (v377(v376) == *MEMORY[0x277D1DEF8])
            {
              sub_22C36DAE4();
              v378 = *(v0 + 752);
              v380 = sub_22C3776D8(v379);
              v381(v380);
              v792 = *v814;
              *(v0 + 1064) = *v814;
              v382 = *(v814 + 1);
              *(v0 + 1072) = v382;
              sub_22C903F8C();

              v383 = sub_22C9063CC();
              v384 = sub_22C90AABC();

              v385 = os_log_type_enabled(v383, v384);
              v386 = *(v0 + 752);
              v387 = *(v0 + 664);
              v388 = *(v0 + 656);
              if (v385)
              {
                v389 = sub_22C36FB44();
                v390 = sub_22C370060();
                v820[0] = v390;
                *v389 = 136315138;
                *(v389 + 4) = sub_22C36F9F4(v792, v382, v820);
                _os_log_impl(&dword_22C366000, v383, v384, "Start resolving Date: %s", v389, 0xCu);
                sub_22C36FF94(v390);
                sub_22C3699EC();
                sub_22C3699EC();
              }

              v391 = *(v387 + 8);
              v392 = sub_22C36FC2C();
              v391(v392);
              v804 = v382;
              *(v0 + 1080) = v391;
              v393 = *(v0 + 488);
              v394 = *(v0 + 144);
              v395 = *(*(v0 + 992) + 16);
              v395(*(v0 + 1008), *(v0 + 1016), *(v0 + 984));
              sub_22C90877C();
              v717 = *(v0 + 984);
              v724 = *(v0 + 1008);
              v450 = *(v0 + 544);
              v451 = *(v0 + 536);
              v817 = *(v0 + 520);
              v452 = *(v0 + 488);
              v453 = *(v0 + 472);
              v682 = *(v0 + 464);
              v454 = *(v0 + 448);
              v455 = *(v0 + 456);
              v691 = *(v0 + 440);
              v696 = *(v0 + 528);
              v701 = *(v0 + 432);
              v731 = *(v0 + 416);
              v740 = *(v0 + 496);
              v751 = *(v0 + 408);
              v456 = *(v0 + 400);
              v712 = *(v0 + 504);
              v764 = *(v0 + 384);
              v780 = *(v0 + 376);
              v686 = *(v0 + 144);
              sub_22C9068BC();
              (*(v453 + 8))(v452, v682);
              sub_22C9021CC();
              (*(v454 + 8))(v455, v691);
              v692 = sub_22C7A5284();
              sub_22C90060C();
              sub_22C90082C();
              *v450 = v792;
              v450[1] = v804;
              v395(v450 + v451[5], v724, v717);
              v457 = *(v712 + 16);
              v457(v450 + v451[6], v696, v740);
              *(v450 + v451[8]) = v692;
              v458 = sub_22C7A7240(v451[9]);
              v459(v458, v701, v751);
              v460 = sub_22C7A7240(v451[10]);
              v461(v460, v456);
              v457(v817, v696, v740);

              sub_22C7723C4(v817);
              v485 = *(v0 + 992);
              v486 = *(v0 + 984);
              v742 = *(v0 + 1008);
              v753 = *(v0 + 552);
              v487 = *(v0 + 544);
              v733 = *(v0 + 536);
              v488 = *(v0 + 528);
              v490 = *(v0 + 496);
              v489 = *(v0 + 504);
              v491 = *(v0 + 432);
              v493 = *(v0 + 408);
              v492 = *(v0 + 416);
              (*(*(v0 + 384) + 8))(*(v0 + 400), *(v0 + 376));
              v494 = *(v492 + 8);
              v495 = sub_22C36BAFC();
              v496(v495);
              v497 = *(v489 + 8);
              v498 = sub_22C36CC9C();
              v499(v498);
              v500 = *(v485 + 8);
              *(v0 + 1088) = v500;
              v500(v742, v486);
              sub_22C37BF90((v487 + *(v733 + 28)));
              sub_22C7A6E30(v487, v753);
              v501 = swift_task_alloc();
              *(v0 + 1096) = v501;
              *v501 = v0;
              v501[1] = sub_22C7A2EEC;
              v502 = *(v0 + 568);
              v503 = *(v0 + 552);
              sub_22C7A71D4();

              return sub_22C76DC34();
            }

            goto LABEL_117;
          }

          if (v172 == *MEMORY[0x277D72C70])
          {
            v396 = sub_22C36A368();
            if (v397(v396) == *MEMORY[0x277D1DEF8])
            {
              v398 = *(v0 + 1016);
              v399 = *(v0 + 1000);
              v400 = *(v0 + 992);
              v401 = *(v0 + 984);
              sub_22C36DAE4();
              v402 = *(v0 + 480);
              v403 = *(v0 + 144);
              (*(v404 + 96))(v814);
              v779 = *v814;
              *(v0 + 1112) = *v814;
              v816 = *(v814 + 1);
              *(v0 + 1120) = v816;
              v405 = *(v400 + 16);
              v406 = sub_22C371510();
              v793 = v407;
              (v407)(v406);
              sub_22C90877C();
              v713 = *(v0 + 984);
              v718 = *(v0 + 1000);
              v806 = *(v0 + 520);
              v472 = *(v0 + 504);
              v474 = *(v0 + 472);
              v473 = *(v0 + 480);
              v476 = *(v0 + 456);
              v475 = *(v0 + 464);
              v477 = *(v0 + 448);
              v693 = *(v0 + 512);
              v697 = *(v0 + 440);
              v725 = *(v0 + 416);
              v732 = *(v0 + 496);
              v702 = *(v0 + 424);
              v706 = *(v0 + 392);
              v741 = *(v0 + 408);
              v752 = *(v0 + 384);
              v765 = *(v0 + 376);
              v479 = *(v0 + 296);
              v478 = *(v0 + 304);
              v687 = *(v0 + 144);
              sub_22C9068BC();
              (*(v474 + 8))(v473, v475);
              sub_22C9021CC();
              (*(v477 + 8))(v476, v697);
              v698 = sub_22C7A5284();
              sub_22C90060C();
              sub_22C90082C();
              *v478 = v779;
              v478[1] = v816;
              v793(v478 + v479[5], v718, v713);
              v480 = *(v472 + 16);
              v480(v478 + v479[6], v693, v732);
              *(v478 + v479[8]) = v698;
              v481 = sub_22C7A7240(v479[9]);
              v482(v481, v702, v741);
              v483 = sub_22C7A7240(v479[10]);
              v484(v483, v706);
              v480(v806, v693, v732);

              sub_22C7723C4(v806);
              v583 = *(v0 + 992);
              v735 = *(v0 + 984);
              v744 = *(v0 + 1000);
              v584 = *(v0 + 504);
              v585 = *(v0 + 512);
              v586 = *(v0 + 496);
              v587 = *(v0 + 416);
              v588 = *(v0 + 424);
              v589 = *(v0 + 408);
              v590 = *(v0 + 304);
              v756 = *(v0 + 312);
              v591 = *(v0 + 296);
              (*(*(v0 + 384) + 8))(*(v0 + 392), *(v0 + 376));
              v592 = *(v587 + 8);
              v593 = sub_22C36CC9C();
              v594(v593);
              v595 = *(v584 + 8);
              v596 = sub_22C36FC2C();
              v597(v596);
              v598 = *(v583 + 8);
              *(v0 + 1128) = v598;
              v598(v744, v735);
              sub_22C37BF90((v590 + *(v591 + 28)));
              sub_22C7A6E30(v590, v756);
              v599 = swift_task_alloc();
              *(v0 + 1136) = v599;
              *v599 = v0;
              v599[1] = sub_22C7A3774;
              v600 = *(v0 + 560);
              v601 = *(v0 + 312);
              sub_22C7A71D4();

              return sub_22C76ABF8(v602);
            }

            goto LABEL_117;
          }

          if (v172 == *MEMORY[0x277D72CA8])
          {
            v408 = sub_22C36A368();
            if (v409(v408) == *MEMORY[0x277D1DEF8])
            {
              sub_22C36DAE4();
              v411 = *(v0 + 264);
              v410 = *(v0 + 272);
              v413 = sub_22C3776D8(v412);
              v414(v413);
              v416 = *v814;
              v415 = *(v814 + 1);
              sub_22C370018();
              sub_22C90041C();
              if (sub_22C370B74(v411, 1, v410) == 1)
              {
                v417 = *(v0 + 720);
                sub_22C36DD28(*(v0 + 264), &qword_27D9BB138, &qword_22C90DB70);
                sub_22C903F8C();

                v418 = sub_22C9063CC();
                v419 = sub_22C90AADC();

                v420 = os_log_type_enabled(v418, v419);
                v421 = *(v0 + 720);
                v422 = *(v0 + 664);
                v423 = *(v0 + 656);
                if (v420)
                {
                  v424 = sub_22C36FB44();
                  v425 = sub_22C370060();
                  v820[0] = v425;
                  *v424 = 136315138;
                  v426 = sub_22C370018();
                  v429 = sub_22C36F9F4(v426, v427, v428);

                  *(v424 + 4) = v429;
                  sub_22C36CB64(&dword_22C366000, v430, v431, "cannot to convert %s to URL");
                  sub_22C36FF94(v425);
                  sub_22C3699EC();
                  sub_22C3699EC();
                }

                else
                {
                }

                v604 = *(v422 + 8);
                v605 = sub_22C6AF3F0();
                v606(v605);
                sub_22C7A7154();
                v784 = v607;
                v795 = v608;
                v609 = *(v0 + 1016);
                v610 = *(v0 + 992);
                v611 = *(v0 + 984);
                v612 = *(v0 + 928);
                v613 = *(v0 + 904);
                v614 = *(v0 + 896);
                v770 = *(v0 + 584);
                type metadata accessor for InterpreterError();
                sub_22C36B710();
                sub_22C7A6F08(v615, v616);
                sub_22C36FBE4();
                swift_storeEnumTagMultiPayload();
                swift_willThrow();
                v617 = *(v613 + 8);
                v617(v612, v614);
                (*(v610 + 8))(v609, v611);

                v617(v770, v614);
                (*(v418 + 8))(v795, v784);
                goto LABEL_122;
              }

              v506 = *(v0 + 280);
              v505 = *(v0 + 288);
              v508 = *(v0 + 264);
              v507 = *(v0 + 272);

              v509 = *(v506 + 32);
              v160 = v506 + 32;
              v168 = v509;
              v510 = sub_22C386680();
              v509(v510);
              sub_22C90040C();
              if (v511)
              {
              }

              else
              {
                v618 = *(v0 + 288);
                v619 = *(v0 + 272);
                v620 = *(v0 + 256);
                v820[0] = 0x2F2F3A7370747468;
                v820[1] = 0xE800000000000000;
                v621 = sub_22C90036C();
                MEMORY[0x2318B7850](v621);

                sub_22C370018();
                sub_22C90041C();
                if (sub_22C370B74(v620, 1, v619) == 1)
                {
                  v622 = *(v0 + 728);
                  sub_22C36DD28(*(v0 + 256), &qword_27D9BB138, &qword_22C90DB70);
                  sub_22C903F8C();

                  v623 = sub_22C9063CC();
                  v624 = sub_22C90AADC();

                  v625 = os_log_type_enabled(v623, v624);
                  v626 = *(v0 + 728);
                  v627 = *(v0 + 664);
                  v628 = *(v0 + 656);
                  if (v625)
                  {
                    v629 = sub_22C36FB44();
                    v630 = sub_22C370060();
                    v820[0] = v630;
                    *v629 = 136315138;
                    v631 = sub_22C370018();
                    v634 = sub_22C36F9F4(v631, v632, v633);

                    *(v629 + 4) = v634;
                    sub_22C36CB64(&dword_22C366000, v635, v636, "Unable to convert %s to URL");
                    sub_22C36FF94(v630);
                    sub_22C3699EC();
                    sub_22C3699EC();
                  }

                  else
                  {
                  }

                  v653 = *(v627 + 8);
                  v654 = sub_22C6AF3F0();
                  v655(v654);
                  v656 = *(v0 + 1048);
                  v657 = *(v0 + 1040);
                  v658 = *(v0 + 992);
                  v757 = *(v0 + 984);
                  v771 = *(v0 + 1016);
                  v659 = *(v0 + 904);
                  v660 = *(v0 + 896);
                  v785 = *(v0 + 584);
                  v796 = *(v0 + 1032);
                  v661 = *(v0 + 280);
                  v736 = *(v0 + 288);
                  v745 = *(v0 + 928);
                  v662 = *(v0 + 272);
                  type metadata accessor for InterpreterError();
                  sub_22C36B710();
                  sub_22C7A6F08(v663, v664);
                  v665 = sub_22C3700B4();
                  sub_22C37E7C4(v665, v666);
                  swift_storeEnumTagMultiPayload();
                  swift_willThrow();
                  (*(v661 + 8))(v736, v662);
                  v667 = *(v659 + 8);
                  v667(v745, v660);
                  (*(v658 + 8))(v771, v757);

                  v667(v785, v660);
                  (*(v657 + 8))(v656, v796);
                  goto LABEL_122;
                }

                v637 = *(v0 + 288);
                v638 = *(v0 + 272);
                v639 = *(v0 + 256);
                v640 = *(*(v0 + 280) + 8);
                v641 = sub_22C372164();
                v642(v641);

                v643 = sub_22C386680();
                v168(v643);
              }

              v644 = *(v0 + 648);
              v645 = *(v0 + 600);
              v819 = *(v0 + 592);
              v169 = *(v0 + 288);
              v165 = *(v0 + 272);
              v646 = sub_22C90931C();
              v647 = swift_allocBox();
              v649 = v648;
              (v168)(v648, v169, v165);
              v650 = *MEMORY[0x277D72980];
              sub_22C36BBA8(v646);
              (*(v651 + 104))(v649);
              *v644 = v647;
              v652 = *(v645 + 104);
              v154 = (v645 + 104);
              v652(v644, *MEMORY[0x277D72A58], v819);
              goto LABEL_78;
            }

            goto LABEL_117;
          }

          if (v172 == *MEMORY[0x277D72C88])
          {
            v432 = sub_22C36A368();
            if (v433(v432) == *MEMORY[0x277D1DEF8])
            {
              sub_22C388A10();
              v434 = *(v0 + 600);
              v805 = *(v0 + 592);
              v436 = *(v0 + 240);
              v435 = *(v0 + 248);
              v165 = *(v0 + 232);
              v438 = sub_22C3776D8(v437);
              v439(v438);
              v440 = *v814;
              v441 = *(v814 + 1);
              sub_22C9001CC();
              v442 = sub_22C90931C();
              v443 = swift_allocBox();
              v445 = v444;
              v446 = *(v436 + 32);
              v169 = (v436 + 32);
              v446(v444, v435, v165);
              v447 = *MEMORY[0x277D72968];
              sub_22C36BBA8(v442);
              (*(v448 + 104))(v445);
              *v154 = v443;
              v449 = *(v434 + 104);
              v160 = v434 + 104;
              v449(v154, *MEMORY[0x277D72A58], v805);
              goto LABEL_78;
            }

            goto LABEL_117;
          }

          if (v172 == *MEMORY[0x277D72C68])
          {
            v462 = sub_22C36A368();
            if (v463(v462) != *MEMORY[0x277D1DEF8])
            {
              goto LABEL_117;
            }

            v464 = *(v0 + 712);
            v721(v814, *(v0 + 800));
            sub_22C903F8C();
            v465 = sub_22C9063CC();
            v466 = sub_22C90AADC();
            if (sub_22C7A7224(v466))
            {
              *sub_22C36D240() = 0;
              sub_22C38B24C(&dword_22C366000, v467, v468, "Resolving CurrencyAmount not yet supported");
              sub_22C3699EC();
            }

            v469 = *(v0 + 1048);
            v470 = *(v0 + 1040);
            sub_22C38928C();
            sub_22C7A70A4();
            v471 = *(v0 + 712);
          }

          else
          {
            if (v172 != *MEMORY[0x277D72C60])
            {
              goto LABEL_117;
            }

            v512 = sub_22C36A368();
            if (v513(v512) != *MEMORY[0x277D1DEF8])
            {
              goto LABEL_117;
            }

            v514 = *(v0 + 704);
            v721(v814, *(v0 + 800));
            sub_22C903F8C();
            v465 = sub_22C9063CC();
            v515 = sub_22C90AADC();
            if (sub_22C7A7224(v515))
            {
              *sub_22C36D240() = 0;
              sub_22C38B24C(&dword_22C366000, v516, v517, "Resolving PaymentMethod not yet supported");
              sub_22C3699EC();
            }

            v518 = *(v0 + 1048);
            v470 = *(v0 + 1040);
            sub_22C38928C();
            sub_22C7A70A4();
            v519 = *(v0 + 704);
          }

          v520 = *(v0 + 664);
          v521 = *(v0 + 656);
          v766 = *(v0 + 584);

          v522 = *(v520 + 8);
          v523 = sub_22C372164();
          v524(v523);
          type metadata accessor for InterpreterError();
          sub_22C36B710();
          sub_22C7A6F08(v525, v526);
          v527 = sub_22C3700B4();
          sub_22C37E7C4(v527, v528);
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
          v529 = *(v814 + 1);
          v529(v738, v168);
          (*(v801 + 8))(v772, 0);

          v529(v766, v168);
          (*(v470 + 8))(v801, v787);
          goto LABEL_122;
        }

        v357 = sub_22C36A368();
        if (v358(v357) == *MEMORY[0x277D1DEF8])
        {
          v359 = sub_22C378774();
          v360(v359);
          v361 = *v814;
          v362 = *(v814 + 1);
          v231 = sub_22C90931C();
          v363 = swift_allocBox();
          sub_22C37AD18(v363, v364);
          *v365 = v361;
          v365[1] = v362;
          v235 = MEMORY[0x277D729B8];
          goto LABEL_77;
        }
      }

LABEL_117:

      goto LABEL_118;
    }

    v167 = v801;
    if (v161 == *MEMORY[0x277D72D28])
    {
      if ((v738)(v159, *(v0 + 800)) == *MEMORY[0x277D1DF00])
      {
        v212 = *(v0 + 928);
        v213 = *(v0 + 896);
        sub_22C36DAE4();
        v214 = *(v0 + 624);
        v165 = *(v0 + 200);
        v215 = *(v0 + 184);
        v217 = sub_22C3776D8(v216);
        v218(v217);
        v219 = sub_22C7A7260();
        (v801)(v219);
        v220 = *(v215 + 24);
        v221 = sub_22C908AEC();
        sub_22C36985C(v221);
        (*(v222 + 16))(v165 + v220, v787 + v772);
        sub_22C7A71AC();
        if (v215)
        {
          v223 = *(v0 + 1048);
          v224 = *(v0 + 1040);
          sub_22C38928C();
          sub_22C7A7064();
          v225 = *(v0 + 200);
LABEL_50:
          sub_22C7A6E8C(v225, type metadata accessor for EnumResolver);
          v262 = *(v220 + 8);
          v263 = sub_22C36CA88();
          v262(v263);
          (*(v160 + 8))(v772, v214);
          v264 = sub_22C370114();
          v262(v264);
          (*(v224 + 8))(v801, v787);
          goto LABEL_122;
        }

        v300 = *(v0 + 648);
        v168 = *(v0 + 624);
        v301 = *(v0 + 600);
        v154 = *(v0 + 592);
        v302 = *(v0 + 200);
        goto LABEL_73;
      }
    }

    else if (v161 == *MEMORY[0x277D72D18])
    {
      v250 = sub_22C36A368();
      if (v251(v250) == *MEMORY[0x277D1DF00])
      {
        v252 = *(v0 + 928);
        v253 = *(v0 + 896);
        sub_22C36DAE4();
        v214 = *(v0 + 616);
        v254 = *(v0 + 184);
        v165 = *(v0 + 192);
        v256 = sub_22C3776D8(v255);
        v257(v256);
        v258 = sub_22C7A7260();
        (v801)(v258);
        v220 = *(v254 + 24);
        v259 = sub_22C908AEC();
        sub_22C36985C(v259);
        (*(v260 + 16))(v165 + v220, v787 + v772);
        sub_22C7A71AC();
        if (v254)
        {
          v261 = *(v0 + 1048);
          v224 = *(v0 + 1040);
          sub_22C38928C();
          sub_22C7A7064();
          v225 = *(v0 + 192);
          goto LABEL_50;
        }

        v300 = *(v0 + 648);
        v168 = *(v0 + 616);
        v301 = *(v0 + 600);
        v154 = *(v0 + 592);
        v302 = *(v0 + 192);
LABEL_73:
        sub_22C7A6E8C(v302, type metadata accessor for EnumResolver);
        v330 = *(v301 + 32);
        v169 = (v301 + 32);
        v330(v300, v168, v154);
LABEL_79:
        sub_22C3838DC();
        v778 = *(v0 + 1016);
        v750 = *(v0 + 992);
        v763 = *(v0 + 984);
        sub_22C3813E0();
        v730 = v339;
        v739 = v340;
        v341 = sub_22C372D7C();
        v342 = *(v0 + 152);
        v711 = *(v0 + 160);
        v685 = *(v0 + 136);
        v690 = v343;
        v723 = *(v344 + 8);
        v723(v341);
        sub_22C7A6FF0();
        sub_22C7A6F08(v345, v346);
        sub_22C909F0C();
        v347 = sub_22C7A7020();
        v348(v347);
        v349 = sub_22C901ECC();
        sub_22C7A7084(v349);
        sub_22C381BBC();
        (*(v160 + 16))(v690, v685, v154);
        sub_22C3A5908(&qword_27D9BAD08, &unk_22C91D9F0);
        v350 = sub_22C383450();
        v351 = sub_22C38AB54(v350, xmmword_22C90F800);
        v352(v351);
        sub_22C7A7208();
        v353 = sub_22C386DCC();
        v354(v353);
        (*(v165 + 8))(v169, v168);
        (v723)(v739, v730);
        (*(v750 + 8))(v778, v763);
        type metadata accessor for StepResolution();
        sub_22C385FDC();
        v355 = sub_22C7A7174();
        v356(v355);
        goto LABEL_20;
      }
    }

LABEL_118:
    v530 = *(v0 + 928);
    v531 = *(v0 + 912);
    v532 = *(v0 + 896);
    v533 = *(v0 + 832);
    v534 = *(v0 + 800);
    v535 = *(v0 + 696);
    v536 = *(v0 + 112);
    sub_22C903F8C();
    v709(v533, v536, v534);
    v167(v531, v530, v532);
    v537 = sub_22C9063CC();
    v538 = sub_22C90AADC();
    v539 = os_log_type_enabled(v537, v538);
    v540 = *(v0 + 912);
    v541 = *(v0 + 904);
    v818 = *(v0 + 896);
    v542 = *(v0 + 832);
    if (v539)
    {
      v543 = *(v0 + 824);
      v544 = *(v0 + 800);
      v754 = *(v0 + 664);
      v767 = *(v0 + 656);
      v781 = *(v0 + 696);
      v545 = swift_slowAlloc();
      v820[0] = swift_slowAlloc();
      *v545 = 136315394;
      v709(v543, v542, v544);
      sub_22C36D264();
      v546 = sub_22C90A1AC();
      v548 = v547;
      v721(v542, v544);
      v549 = sub_22C36F9F4(v546, v548, v820);

      *(v545 + 4) = v549;
      *(v545 + 12) = 2080;
      sub_22C9094FC();
      v550 = sub_22C7A7120();
      v551(v550);
      v552 = sub_22C36D264();
      v555 = sub_22C36F9F4(v552, v553, v554);

      *(v545 + 14) = v555;
      v540 = v537;
      _os_log_impl(&dword_22C366000, v537, v538, "cannot resolve %s to %s", v545, 0x16u);
      swift_arrayDestroy();
      sub_22C3699EC();
      sub_22C3699EC();

      (*(v754 + 8))(v781, v767);
    }

    else
    {
      v556 = *(v0 + 800);
      v557 = *(v0 + 696);
      v558 = *(v0 + 664);
      v559 = *(v0 + 656);

      v560 = sub_22C7A7120();
      v561(v560);
      v721(v542, v556);
      v562 = *(v558 + 8);
      v563 = sub_22C36ECB4();
      v564(v563);
    }

    sub_22C7A7154();
    v768 = v565;
    v782 = v566;
    v567 = *(v0 + 1016);
    v568 = *(v0 + 992);
    v569 = *(v0 + 984);
    v570 = *(v0 + 928);
    v571 = *(v0 + 896);
    v572 = *(v0 + 584);
    type metadata accessor for InterpreterError();
    sub_22C36B710();
    sub_22C7A6F08(v573, v574);
    sub_22C36FBE4();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v575 = sub_22C36FC2C();
    (v801)(v575);
    v576 = *(v568 + 8);
    v577 = sub_22C36ECB4();
    v578(v577);
    sub_22C36DD28(v572, &qword_27D9C00F8, &unk_22C925EF8);
    (v540[1].isa)(v782, v768);
    goto LABEL_122;
  }

  v4 = *(v0 + 688);
  sub_22C36DD28(*(v0 + 1024), &qword_27D9BD7E8, &qword_22C923170);
  sub_22C903F8C();
  v5 = sub_22C9063CC();
  v6 = sub_22C90AABC();
  if (sub_22C37B204(v6))
  {
    *sub_22C36D240() = 0;
    sub_22C36BB14(&dword_22C366000, v7, v8, "resolving value without any ActionParameterContext");
    sub_22C3699EC();
  }

  v9 = *(v0 + 816);
  v10 = *(v0 + 808);
  v11 = *(v0 + 800);
  v12 = *(v0 + 688);
  v13 = *(v0 + 664);
  v14 = *(v0 + 656);
  v15 = *(v0 + 112);

  v16 = *(v13 + 8);
  v17 = sub_22C36ECB4();
  v16(v17);
  v18 = *(v10 + 16);
  v19 = sub_22C6AF3F0();
  v20(v19);
  v21 = *(v10 + 88);
  v22 = sub_22C36BAFC();
  v24 = v23(v22);
  if (v24 == *MEMORY[0x277D1DED8])
  {
    v25 = sub_22C7A7008();
    v26(v25);
    v27 = *v5;
    v28 = sub_22C90931C();
    v29 = swift_allocBox();
    sub_22C37E7E8(v29, v30);
    *v31 = v27;
    v32 = MEMORY[0x277D72988];
LABEL_19:
    v131 = *v32;
    sub_22C36BBA8(v28);
    (*(v132 + 104))();
    v133 = *(v0 + 776);
    v747 = *(v0 + 768);
    v134 = *(v0 + 640);
    v135 = *(v0 + 608);
    v136 = *(v0 + 600);
    v137 = *(v0 + 592);
    v139 = *(v0 + 168);
    v138 = *(v0 + 176);
    v140 = *(v0 + 152);
    v759 = *(v0 + 136);
    v774 = *(v0 + 792);
    v799 = *(v0 + 160);
    v811 = *(v0 + 104);
    *v135 = v786;
    (*(v136 + 104))(v135, *MEMORY[0x277D72A58], v137);
    sub_22C7A6FF0();
    sub_22C7A6F08(v141, v142);
    sub_22C909F0C();
    (*(v136 + 16))(v134, v135, v137);
    sub_22C901ECC();
    v143 = sub_22C3707B4();
    sub_22C36C640(v143, v144, 1, v145);
    sub_22C906CFC();
    (*(v133 + 16))(v774, v759, v747);
    sub_22C3A5908(&qword_27D9BAD08, &unk_22C91D9F0);
    v146 = *(v139 + 72);
    v147 = (*(v139 + 80) + 32) & ~*(v139 + 80);
    v148 = swift_allocObject();
    *(v148 + 16) = xmmword_22C90F800;
    (*(v139 + 16))(v148 + v147, v138, v799);
    sub_22C90690C();
    (*(v139 + 8))(v138, v799);
    v149 = *(v136 + 8);
    v150 = sub_22C36BAFC();
    v151(v150);
    type metadata accessor for StepResolution();
    swift_storeEnumTagMultiPayload();
    goto LABEL_20;
  }

  if (v24 == *MEMORY[0x277D1DED0])
  {
    v52 = sub_22C7A7008();
    v53(v52);
    v54 = *v5;
    v28 = sub_22C90931C();
    v55 = swift_allocBox();
    sub_22C37E7E8(v55, v56);
    *v57 = v54;
    v32 = MEMORY[0x277D72978];
    goto LABEL_19;
  }

  if (v24 == *MEMORY[0x277D1DEF0])
  {
    v90 = sub_22C7A7008();
    v91(v90);
    v92 = *v5;
    v28 = sub_22C90931C();
    v93 = swift_allocBox();
    sub_22C37E7E8(v93, v94);
    *v95 = v92;
    v32 = MEMORY[0x277D729A8];
    goto LABEL_19;
  }

  if (v24 == *MEMORY[0x277D1DEF8])
  {
    v124 = sub_22C7A7008();
    v125(v124);
    v126 = *v5;
    v127 = v5[1];
    v28 = sub_22C90931C();
    v128 = swift_allocBox();
    sub_22C37E7E8(v128, v129);
    *v130 = v126;
    v130[1] = v127;
    v32 = MEMORY[0x277D729B8];
    goto LABEL_19;
  }

  if (v24 == *MEMORY[0x277D1DEE8])
  {
    v204 = *(v0 + 816);
    sub_22C36DAE4();
    v205 = *(v0 + 672);
    (*(v206 + 8))();
    sub_22C903F8C();
    v207 = sub_22C9063CC();
    v208 = sub_22C90AADC();
    if (sub_22C37B204(v208))
    {
      *sub_22C36D240() = 0;
      sub_22C36BB14(&dword_22C366000, v209, v210, "cannot resolve array without ActionParameterContext");
      sub_22C3699EC();
    }

    v211 = *(v0 + 672);
LABEL_45:
    v243 = *(v0 + 664);
    v244 = *(v0 + 656);

    v245 = sub_22C36BAFC();
    v16(v245);
    type metadata accessor for InterpreterError();
    sub_22C36B710();
    sub_22C7A6F08(v246, v247);
    v248 = sub_22C3700B4();
    sub_22C37E7C4(v248, v249);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    goto LABEL_122;
  }

  if (v24 == *MEMORY[0x277D1DF00])
  {
    v236 = *(v0 + 816);
    sub_22C36DAE4();
    v237 = *(v0 + 680);
    (*(v238 + 8))();
    sub_22C903F8C();
    v207 = sub_22C9063CC();
    v239 = sub_22C90AADC();
    if (sub_22C37B204(v239))
    {
      *sub_22C36D240() = 0;
      sub_22C36BB14(&dword_22C366000, v240, v241, "cannot resolve symbol without ActionParameterContext");
      sub_22C3699EC();
    }

    v242 = *(v0 + 680);
    goto LABEL_45;
  }

  if (v24 == *MEMORY[0x277D1DEE0])
  {
    v28 = sub_22C90931C();
    v283 = swift_allocBox();
    sub_22C37E7E8(v283, v284);
    v32 = MEMORY[0x277D729A0];
    goto LABEL_19;
  }

  v297 = *(v0 + 800);
  sub_22C7A71D4();

  return sub_22C90B4EC();
}