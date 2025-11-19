id sub_1D153E92C(void *a1)
{
  v1 = sel_setHasIsUsingWheelchair_;
  if (*a1 == 1)
  {
    v2 = 0;
    goto LABEL_5;
  }

  if (*a1 == 2)
  {
    v2 = 1;
LABEL_5:
    v3 = a1[1];
    [v3 setHasIsUsingWheelchair_];
    v1 = sel_setIsUsingWheelchair_;
    goto LABEL_7;
  }

  v2 = 0;
  v3 = a1[1];
LABEL_7:

  return [v3 v1];
}

id HKCodableWheelchairSetting.init(wheelchairUse:)(uint64_t a1)
{
  sub_1D1455C20(0, &qword_1EE059428, MEMORY[0x1E69A3D18]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v14 - v3;
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (result)
  {
    v6 = result;
    v7 = v6;
    v8 = sel_setHasIsUsingWheelchair_;
    if (a1 == 2)
    {
      [v6 setHasIsUsingWheelchair_];
      v8 = sel_setIsUsingWheelchair_;
      v9 = v7;
      v10 = 1;
    }

    else
    {
      if (a1 == 1)
      {
        [v6 setHasIsUsingWheelchair_];
        v8 = sel_setIsUsingWheelchair_;
      }

      v9 = v7;
      v10 = 0;
    }

    [v9 v8];
    if (qword_1EE0566B0 != -1)
    {
      swift_once();
    }

    v11 = sub_1D15A2CD8();
    v12 = __swift_project_value_buffer(v11, qword_1EE0566B8);
    v13 = *(v11 - 8);
    (*(v13 + 16))(v4, v12, v11);
    (*(v13 + 56))(v4, 0, 1, v11);
    sub_1D1505A88(&qword_1EE0566A8, &qword_1EE0566A0);
    sub_1D15A2F98();

    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1D153EBBC(uint64_t a1, char a2, void *a3)
{
  v68 = a3;
  v6 = sub_1D15A2B48();
  v65 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v66 = v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_1D15A2A48();
  v64 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v9 = v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D15411F4();
  v63 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = *(a1 + 16);
  if (!v60)
  {
    goto LABEL_24;
  }

  v56[1] = v3;
  if (!*(a1 + 16))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v14 = *(v11 + 48);
  v15 = *(v63 + 80);
  v61 = a1;
  v16 = a1 + ((v15 + 32) & ~v15);
  v17 = (v64 + 32);
  v18 = (v65 + 32);
  v58 = v16;
  sub_1D1541264(v16, v13, sub_1D15411F4);
  v57 = *v17;
  v57(v9, v13, v67);
  v19 = *v18;
  v59 = v14;
  v62 = v6;
  v20 = v6;
  v21 = v19;
  v19(v66, &v13[v14], v20);
  v22 = *v68;
  v24 = sub_1D1480160(v9);
  v25 = v22[2];
  v26 = (v23 & 1) == 0;
  v27 = v25 + v26;
  if (__OFADD__(v25, v26))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v28 = v23;
  if (v22[3] >= v27)
  {
    if (a2)
    {
      if ((v23 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_1D14821DC();
      if ((v28 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_11;
  }

  sub_1D1481328(v27, a2 & 1);
  v29 = sub_1D1480160(v9);
  if ((v28 & 1) == (v30 & 1))
  {
    v24 = v29;
    if ((v28 & 1) == 0)
    {
LABEL_14:
      v33 = v67;
      v34 = *v68;
      *(*v68 + 8 * (v24 >> 6) + 64) |= 1 << v24;
      v57((v34[6] + *(v64 + 72) * v24), v9, v33);
      v35 = v62;
      v21((v34[7] + *(v65 + 72) * v24), v66, v62);
      v36 = v34[2];
      v37 = __OFADD__(v36, 1);
      v38 = v36 + 1;
      if (v37)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v34[2] = v38;
      if (v60 != 1)
      {
        v39 = 1;
        while (v39 < *(v61 + 16))
        {
          sub_1D1541264(v58 + *(v63 + 72) * v39, v13, sub_1D15411F4);
          v40 = *v17;
          (*v17)(v9, v13, v67);
          v41 = *v18;
          (*v18)(v66, &v13[v59], v35);
          v42 = *v68;
          v43 = sub_1D1480160(v9);
          v45 = v42[2];
          v46 = (v44 & 1) == 0;
          v37 = __OFADD__(v45, v46);
          v47 = v45 + v46;
          if (v37)
          {
            goto LABEL_26;
          }

          v48 = v44;
          if (v42[3] < v47)
          {
            sub_1D1481328(v47, 1);
            v43 = sub_1D1480160(v9);
            if ((v48 & 1) != (v49 & 1))
            {
              goto LABEL_28;
            }
          }

          if (v48)
          {
            goto LABEL_11;
          }

          v50 = v67;
          v51 = *v68;
          *(*v68 + 8 * (v43 >> 6) + 64) |= 1 << v43;
          v52 = v43;
          v40((v51[6] + *(v64 + 72) * v43), v9, v50);
          v53 = v51[7] + *(v65 + 72) * v52;
          v35 = v62;
          v41(v53, v66, v62);
          v54 = v51[2];
          v37 = __OFADD__(v54, 1);
          v55 = v54 + 1;
          if (v37)
          {
            goto LABEL_27;
          }

          ++v39;
          v51[2] = v55;
          if (v60 == v39)
          {
            goto LABEL_24;
          }
        }

        goto LABEL_25;
      }

LABEL_24:

      return;
    }

LABEL_11:
    v31 = swift_allocError();
    swift_willThrow();

    v71 = v31;
    v32 = v31;
    sub_1D1453368(0, &qword_1EE05ABB8);
    if ((swift_dynamicCast() & 1) == 0)
    {
      (*(v65 + 8))(v66, v62);
      (*(v64 + 8))(v9, v67);

      return;
    }

    goto LABEL_29;
  }

LABEL_28:
  sub_1D15A4BF8();
  __break(1u);
LABEL_29:
  v69 = 0;
  v70 = 0xE000000000000000;
  sub_1D15A47D8();
  MEMORY[0x1D388A330](0xD00000000000001BLL, 0x80000001D15BE1A0);
  sub_1D15A48B8();
  MEMORY[0x1D388A330](39, 0xE100000000000000);
  sub_1D15A4908();
  __break(1u);
}

uint64_t sub_1D153F224@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || 1 << *(a3 + 32) <= result)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a3 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a3 + 36) != a2)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v5 = *(a3 + 56) + 40 * result;
  v6 = *(v5 + 8);
  v7 = *(v5 + 32);
  *a4 = *v5;
  *(a4 + 8) = v6;
  *(a4 + 16) = *(v5 + 16);
  *(a4 + 32) = v7;
}

uint64_t sub_1D153F2CC(unsigned __int8 *a1)
{
  v1 = *a1;
  result = 0;
  switch(v1)
  {
    case 1:
      v3 = &unk_1EC630F60;
      return sub_1D1453BA0(0, v3);
    case 2:
      v3 = &unk_1EE056558;
      return sub_1D1453BA0(0, v3);
    case 3:
      v3 = &unk_1EE056638;
      return sub_1D1453BA0(0, v3);
    case 4:
      v3 = &unk_1EE056538;
      return sub_1D1453BA0(0, v3);
    case 5:
      v3 = &unk_1EE056550;
      return sub_1D1453BA0(0, v3);
    case 6:
      v3 = &unk_1EE056658;
      return sub_1D1453BA0(0, v3);
    case 7:
      v3 = &unk_1EE056548;
      return sub_1D1453BA0(0, v3);
    case 8:
      v3 = &unk_1EE056528;
      return sub_1D1453BA0(0, v3);
    case 9:
      v3 = &unk_1EC630F58;
      return sub_1D1453BA0(0, v3);
    case 10:
      v3 = &unk_1EC630F50;
      return sub_1D1453BA0(0, v3);
    case 11:
      return result;
    case 12:
      v3 = &unk_1EE056530;
      return sub_1D1453BA0(0, v3);
    case 13:
      v3 = &unk_1EC630F48;
      return sub_1D1453BA0(0, v3);
    case 14:
      v3 = &unk_1EE056650;
      return sub_1D1453BA0(0, v3);
    case 15:
      v3 = &unk_1EE056540;
      return sub_1D1453BA0(0, v3);
    case 16:
      v3 = &unk_1EE056590;
      return sub_1D1453BA0(0, v3);
    case 17:
      v3 = &unk_1EE056578;
      return sub_1D1453BA0(0, v3);
    case 18:
      v3 = &unk_1EE056588;
      return sub_1D1453BA0(0, v3);
    case 19:
      v3 = &unk_1EC630F40;
      return sub_1D1453BA0(0, v3);
    case 20:
      v3 = &unk_1EE056520;
      return sub_1D1453BA0(0, v3);
    case 21:
      v3 = &unk_1EE056508;
      return sub_1D1453BA0(0, v3);
    case 22:
      v3 = &unk_1EC630F38;
      return sub_1D1453BA0(0, v3);
    default:
      v3 = &unk_1EE056560;
      return sub_1D1453BA0(0, v3);
  }
}

id sub_1D153F4C4(uint64_t a1, unint64_t a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = sub_1D15A3268();
  v40[1] = *(v15 - 8);
  v40[2] = v15;
  MEMORY[0x1EEE9AC00](v15);
  v40[0] = v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1455C20(0, &qword_1EE059428, MEMORY[0x1E69A3D18]);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v43 = v40 - v18;
  v44 = v7;
  v19 = *a3;
  v20 = *(a4 + 8);
  v41 = *a4;
  v42 = v20;
  v22 = *(a4 + 16);
  v21 = *(a4 + 24);
  v23 = *(a4 + 32);
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v45 = result;
  if (!result)
  {
    __break(1u);
    return result;
  }

  if (a2 >> 60 == 15)
  {
    if (v19 == 23)
    {
      goto LABEL_4;
    }

LABEL_11:
    LOBYTE(v46) = v19;
    HKCodableSummaryCurrentValue.Kind.rawValue.getter();
    v34 = sub_1D15A3EF8();

    [v45 setKindRawValue_];

    v25 = v45;
    if (!a6)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  sub_1D153FCBC(a1, a2);
  v31 = v21;
  v32 = a5;
  v33 = sub_1D15A24F8();
  [v45 setValueData_];

  a5 = v32;
  v21 = v31;
  sub_1D14D5864(a1, a2);
  if (v19 != 23)
  {
    goto LABEL_11;
  }

LABEL_4:
  v25 = v45;
  if (a6)
  {
LABEL_5:
    [v25 setSupplementaryValue_];
  }

LABEL_6:
  v26 = v23;
  if (a7)
  {
    v27 = sub_1D15A3E48();

    v28 = [v27 codableMetadata];

    [v25 setMetadataDictionary_];
  }

  v30 = v41;
  v29 = v42;
  if (v26 <= 0xFD)
  {
    sub_1D15A21E8();
    swift_allocObject();
    sub_1D15A21D8();
    v46 = v30;
    v47 = v29;
    v48 = v22;
    v49 = v21;
    v50 = v26;
    sub_1D148D754();
    v35 = sub_1D15A21C8();
    v37 = v36;

    sub_1D14A0624(v30, v29, v22, v21, v26);
    v38 = sub_1D15A24F8();
    sub_1D1498BF4(v35, v37);
    [v25 setQueryConfigurationData_];
  }

  v39 = MEMORY[0x1E69A3D18];
  sub_1D1540D88(a5, v43, &qword_1EE059428, MEMORY[0x1E69A3D18], sub_1D1455C20);
  sub_1D1505A88(&qword_1EE056678, &qword_1EE056670);
  sub_1D15A2F98();
  sub_1D1541334(a5, &qword_1EE059428, v39, sub_1D1455C20);
  return v25;
}

id _sSo28HKCodableSummaryCurrentValueC19HealthVisualizationE6noDataAByFZ_0()
{
  v0 = MEMORY[0x1E69A3D18];
  sub_1D1455C20(0, &qword_1EE059428, MEMORY[0x1E69A3D18]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v10 - v5;
  sub_1D15A2CC8();
  v7 = sub_1D15A2CD8();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  sub_1D1453BA0(0, &qword_1EE056670);
  v12 = 11;
  memset(v10, 0, sizeof(v10));
  v11 = -2;
  sub_1D1540D88(v6, v3, &qword_1EE059428, v0, sub_1D1455C20);
  v8 = sub_1D153F4C4(0, 0xF000000000000000, &v12, v10, v3, 0, 0);
  sub_1D1541334(v6, &qword_1EE059428, v0, sub_1D1455C20);
  return v8;
}

uint64_t sub_1D153FCBC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

id sub_1D153FD10(void *a1, uint64_t a2)
{
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (result)
  {
    v5 = result;
    sub_1D1453BA0(0, &qword_1EE056720);
    v6 = v5;
    v7 = a1;
    v8 = sub_1D15A43F8();
    [v6 setValue_];

    v9 = sub_1D15A2618();
    v10 = MEMORY[0x1D388B370]();

    [v6 setDateData_];
    v11 = sub_1D15A26A8();
    (*(*(v11 - 8) + 8))(a2, v11);
    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1D153FE24(uint64_t a1, unint64_t a2, unsigned __int8 *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v62 = a5;
  v63 = a1;
  v64 = a2;
  v54 = sub_1D15A3268();
  v53 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v58 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1455C20(0, &qword_1EE059428, MEMORY[0x1E69A3D18]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v59 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v65 = &v53 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v53 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v53 - v20;
  v22 = *a3;
  v24 = *a4;
  v23 = *(a4 + 8);
  v25 = *(a4 + 24);
  v55 = *(a4 + 16);
  v56 = v25;
  v61 = *(a4 + 32);
  v60 = a7;
  sub_1D1540BDC(a7, v66, &qword_1EE058140, &unk_1EE058148, &protocol descriptor for SharableModelVersionProviding, sub_1D1453368);
  v26 = v67;
  if (v67)
  {
    v27 = v68;
    __swift_project_boxed_opaque_existential_1(v66, v67);
    (*(v27 + 16))(v26, v27);
    v28 = sub_1D15A2CD8();
    v29 = *(v28 - 8);
    v30 = *(v29 + 56);
    v30(v18, 0, 1, v28);
    __swift_destroy_boxed_opaque_existential_1(v66);
    if ((*(v29 + 48))(v18, 1, v28) != 1)
    {
      (*(v29 + 32))(v21, v18, v28);
      v30(v21, 0, 1, v28);
      v31 = v64;
      goto LABEL_10;
    }
  }

  else
  {
    sub_1D1540B80(v66, &qword_1EE058140, &unk_1EE058148, &protocol descriptor for SharableModelVersionProviding, sub_1D1453368);
    v32 = sub_1D15A2CD8();
    (*(*(v32 - 8) + 56))(v18, 1, 1, v32);
  }

  if (v22 == 3)
  {
    sub_1D15A2CC8();
    v31 = v64;
  }

  else
  {
    v31 = v64;
    sub_1D15A2CC8();
  }

  v33 = sub_1D15A2CD8();
  v34 = *(v33 - 8);
  (*(v34 + 56))(v21, 0, 1, v33);
  if ((*(v34 + 48))(v18, 1, v33) != 1)
  {
    sub_1D1541334(v18, &qword_1EE059428, MEMORY[0x1E69A3D18], sub_1D1455C20);
  }

LABEL_10:
  v57 = v21;
  sub_1D1540D88(v21, v65, &qword_1EE059428, MEMORY[0x1E69A3D18], sub_1D1455C20);
  v35 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v36 = v63;
  sub_1D153FCBC(v63, v31);
  result = [v35 init];
  v38 = v61;
  if (result)
  {
    v39 = result;
    sub_1D153FCBC(v36, v31);
    v40 = sub_1D15A24F8();
    [v39 setValueData_];

    sub_1D1498BF4(v36, v31);
    LOBYTE(v66[0]) = v22;
    HKCodableSummaryCurrentValue.Kind.rawValue.getter();
    v41 = sub_1D15A3EF8();

    [v39 setKindRawValue_];

    v42 = v62;
    if (v62)
    {
      [v39 setSupplementaryValue_];
    }

    if (a6)
    {
      v43 = sub_1D15A3E48();

      v44 = [v43 codableMetadata];

      [v39 setMetadataDictionary_];
    }

    if (v38 <= 0xFD)
    {
      sub_1D15A21E8();
      swift_allocObject();
      sub_1D15A21D8();
      v66[0] = v24;
      v66[1] = v23;
      v45 = v55;
      v46 = v56;
      v66[2] = v55;
      v67 = v56;
      LOBYTE(v68) = v38;
      sub_1D148D754();
      v47 = sub_1D15A21C8();
      v49 = v48;

      sub_1D14A0624(v24, v23, v45, v46, v38);
      v50 = sub_1D15A24F8();
      sub_1D1498BF4(v47, v49);
      [v39 setQueryConfigurationData_];
    }

    v51 = MEMORY[0x1E69A3D18];
    v52 = v65;
    sub_1D1540D88(v65, v59, &qword_1EE059428, MEMORY[0x1E69A3D18], sub_1D1455C20);
    sub_1D1505A88(&qword_1EE056678, &qword_1EE056670);
    sub_1D15A2F98();

    sub_1D1498BF4(v63, v64);
    sub_1D1540B80(v60, &qword_1EE058140, &unk_1EE058148, &protocol descriptor for SharableModelVersionProviding, sub_1D1453368);
    sub_1D1541334(v52, &qword_1EE059428, v51, sub_1D1455C20);
    sub_1D1541334(v57, &qword_1EE059428, v51, sub_1D1455C20);
    return v39;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D1540874(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for HKCodableSummarySleepScoreValue.Model()
{
  result = qword_1EE056620;
  if (!qword_1EE056620)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D1540908(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1D1455C20(0, a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D1540974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  v7 = a5(0, a3, a4);
  (*(*(v7 - 8) + 32))(a2, a1, v7);
  return a2;
}

void sub_1D15409E4()
{
  if (!qword_1EE0568D8)
  {
    sub_1D15A3E38();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE0568D8);
    }
  }
}

void sub_1D1540A4C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D15A3E38();
    v7 = sub_1D1540874(&qword_1EE0568D0, MEMORY[0x1E696B418]);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1D1540B08(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_1D15A4608();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1D1540B80(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  sub_1D1540B08(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1D1540BDC(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t))
{
  sub_1D1540B08(0, a3, a4, a5, a6);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

id sub_1D1540C50(void *a1, void *a2, uint64_t a3)
{
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (result)
  {
    v7 = result;
    v8 = [a1 codableRepresentation];
    [v7 setSystolicValue_];

    v9 = [a2 codableRepresentation];
    [v7 setDiastolicValue_];

    v10 = sub_1D15A2618();
    v11 = MEMORY[0x1D388B370]();

    [v7 setTimestampData_];
    v12 = sub_1D15A26A8();
    (*(*(v12 - 8) + 8))(a3, v12);
    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D1540D88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  v7 = a5(0, a3, a4);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_1D1540DF8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D1540E58()
{
  if (!qword_1EE0567B0)
  {
    sub_1D1453BA0(255, &qword_1EE0567A8);
    sub_1D15A22A8();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE0567B0);
    }
  }
}

unint64_t sub_1D1540EE0()
{
  result = qword_1EC630F28;
  if (!qword_1EC630F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC630F28);
  }

  return result;
}

unint64_t sub_1D1540F38()
{
  result = qword_1EC630F30;
  if (!qword_1EC630F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC630F30);
  }

  return result;
}

uint64_t _s4KindOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEA)
  {
    goto LABEL_17;
  }

  if (a2 + 22 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 22) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 22;
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

      return (*a1 | (v4 << 8)) - 22;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 22;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x17;
  v8 = v6 - 23;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s4KindOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 22 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 22) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEA)
  {
    v4 = 0;
  }

  if (a2 > 0xE9)
  {
    v5 = ((a2 - 234) >> 8) + 1;
    *result = a2 + 22;
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
    *result = a2 + 22;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_1D1541114()
{
  sub_1D15A3E38();
  if (v0 <= 0x3F)
  {
    sub_1D1455C20(319, &qword_1EE059488, MEMORY[0x1E69D36A0]);
    if (v1 <= 0x3F)
    {
      sub_1D1455C20(319, &qword_1EE059480, MEMORY[0x1E69D3708]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1D15411E8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

void sub_1D15411F4()
{
  if (!qword_1EE059458)
  {
    sub_1D15A2A48();
    sub_1D15A2B48();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE059458);
    }
  }
}

uint64_t sub_1D1541264(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D15412CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1541334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = a4(0);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t QuantityTypeIdentifiable.quantityType.getter(uint64_t a1, uint64_t a2)
{
  sub_1D15013A8();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  (*(*(a2 + 8) + 8))(a1);
  v5 = sub_1D15A3EF8();

  v6 = [ObjCClassFromMetadata quantityTypeForIdentifier_];

  if (v6)
  {
    return v6;
  }

  sub_1D15A47D8();
  MEMORY[0x1D388A330](0xD000000000000039, 0x80000001D15C1780);
  v8 = QuantityTypeIdentifiable.quantityTypeIdentifier.getter(a1, a2);
  type metadata accessor for HKQuantityTypeIdentifier(0);
  sub_1D15A48B8();

  result = sub_1D15A4908();
  __break(1u);
  return result;
}

id StatisticsQueryConfigurationOverrides.predicate.getter()
{
  v1 = v0;
  sub_1D15419F0(0, &qword_1EE05B520, MEMORY[0x1E6968130]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v19 - v3;
  v5 = sub_1D15A22A8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D149D62C(v1, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1D1491CBC(v4);
    v9 = *(v1 + *(type metadata accessor for StatisticsQueryConfigurationOverrides() + 20));
    if (v9)
    {
      v10 = v9;
    }
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    v11 = objc_opt_self();
    v12 = sub_1D15A2228();
    v9 = [v11 predicateForSamplesWithinDateInterval:v12 options:0];

    (*(v6 + 8))(v8, v5);
    v13 = *(v1 + *(type metadata accessor for StatisticsQueryConfigurationOverrides() + 20));
    if (v13)
    {
      sub_1D1496034();
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_1D15B1320;
      *(v14 + 32) = v9;
      *(v14 + 40) = v13;
      sub_1D14B7094();
      v15 = v13;
      v16 = v9;
      v17 = sub_1D15A40A8();

      v9 = [objc_opt_self() andPredicateWithSubpredicates_];
    }
  }

  return v9;
}

uint64_t StatisticsQueryConfigurationOverrides.init(dateInterval:additionalPredicate:useQueryCaching:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  sub_1D1495C10(a1, a4);
  result = type metadata accessor for StatisticsQueryConfigurationOverrides();
  *(a4 + *(result + 20)) = a2;
  *(a4 + *(result + 24)) = a3;
  return result;
}

void *StatisticsQueryConfigurationOverrides.additionalPredicate.getter()
{
  v1 = *(v0 + *(type metadata accessor for StatisticsQueryConfigurationOverrides() + 20));
  v2 = v1;
  return v1;
}

uint64_t type metadata accessor for StatisticsQueryConfigurationOverrides()
{
  result = qword_1EE05AEE8;
  if (!qword_1EE05AEE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D154192C()
{
  sub_1D15419F0(319, &qword_1EE05B520, MEMORY[0x1E6968130]);
  if (v0 <= 0x3F)
  {
    sub_1D15419F0(319, &qword_1EE056780, sub_1D14B7094);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D15419F0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D15A4608();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void static CurrentValueDateGenerationSupport.startOrEndDate(sample:dateInterval:)(void *a1)
{
  v2 = [a1 sampleType];
  switch([v2 code])
  {
    case 6uLL:
    case 0xBuLL:
    case 0x3BuLL:
    case 0x40uLL:
    case 0x41uLL:
    case 0x42uLL:
    case 0x45uLL:
    case 0x4AuLL:
    case 0x52uLL:
    case 0x54uLL:
    case 0x55uLL:
    case 0x56uLL:
    case 0x58uLL:
    case 0x5DuLL:
    case 0x5EuLL:
    case 0x5FuLL:
    case 0x67uLL:
    case 0x6AuLL:
    case 0x6DuLL:
    case 0x73uLL:
    case 0x75uLL:
    case 0x78uLL:
    case 0x79uLL:
    case 0x7AuLL:
    case 0x7BuLL:
    case 0x87uLL:
    case 0x88uLL:
    case 0x92uLL:
    case 0x94uLL:
    case 0xAEuLL:
    case 0xAFuLL:
    case 0xB0uLL:
    case 0xB1uLL:
    case 0xB5uLL:
    case 0xB8uLL:
    case 0xB9uLL:
    case 0xBFuLL:
    case 0xC0uLL:
    case 0xC1uLL:
    case 0xC8uLL:
    case 0xD0uLL:
    case 0xD7uLL:
    case 0xDAuLL:
    case 0xE3uLL:
    case 0xE4uLL:
    case 0xEEuLL:
    case 0xEFuLL:
    case 0xF7uLL:
    case 0x101uLL:
    case 0x105uLL:
    case 0x10FuLL:
    case 0x116uLL:
    case 0x123uLL:
    case 0x124uLL:
    case 0x132uLL:
    case 0x139uLL:
    case 0x13AuLL:
    case 0x13DuLL:
    case 0x142uLL:
    case 0x143uLL:
      if (![a1 hasUndeterminedDuration])
      {
        goto LABEL_4;
      }

      sub_1D15A2288();
      break;
    default:
LABEL_4:
      sub_1D15A2258();
      break;
  }
}

uint64_t static CurrentValueDateGenerationSupport.dateInterval(for:calendarCache:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v59 = a2;
  v5 = sub_1D15A3268();
  v56 = *(v5 - 8);
  v57 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v58 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1542C68(0, &qword_1EE05B520, MEMORY[0x1E6968130]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v54 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v62 = &v54 - v14;
  v15 = sub_1D15A2848();
  v60 = *(v15 - 8);
  v61 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v63 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v64 = &v54 - v18;
  v65 = sub_1D15A22A8();
  v19 = *(v65 - 8);
  *&v20 = MEMORY[0x1EEE9AC00](v65).n128_u64[0];
  v22 = &v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = [a1 sampleType];
  v24 = [a1 _timeZoneName];
  if (v24)
  {
    v25 = v24;
    v26 = sub_1D15A3F38();
    v28 = v27;
  }

  else
  {
    v26 = 0;
    v28 = 0;
  }

  sub_1D15A4578();
  if ([v23 code] == 248)
  {
    v55 = a3;
    sub_1D15427D4(v64, v63, v26, v28, v59);

    v29 = objc_opt_self();
    v30 = sub_1D15A2228();
    v31 = sub_1D15A27B8();
    v32 = sub_1D15A27B8();
    v33 = [v29 hk:v30 julianDayDateIntervalFromOpenUpperBoundDateInterval:v31 sourceCalendar:v32 localCalendar:?];

    if (v33)
    {
      sub_1D15A2248();

      v34 = 0;
    }

    else
    {
      v34 = 1;
    }

    v35 = v65;
    v36 = v62;
    (*(v19 + 56))(v12, v34, 1, v65);
    sub_1D1495C10(v12, v36);
    sub_1D149D62C(v36, v9);
    v37 = (*(v19 + 48))(v9, 1, v35);
    a3 = v55;
    if (v37 == 1)
    {
      sub_1D1542CBC(v9, &qword_1EE05B520, MEMORY[0x1E6968130]);
      v38 = v58;
      sub_1D15A31E8();
      v39 = sub_1D15A3248();
      v40 = sub_1D15A4328();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        *v41 = 136446210;
        v66 = &type metadata for CurrentValueDateGenerationSupport;
        v67 = v42;
        sub_1D1542C10();
        v43 = sub_1D15A3F68();
        v45 = sub_1D1479780(v43, v44, &v67);

        *(v41 + 4) = v45;
        _os_log_impl(&dword_1D1446000, v39, v40, "%{public}s trying to compute julian date interval for invalid sample.", v41, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v42);
        MEMORY[0x1D388BF00](v42, -1, -1);
        v46 = v41;
        v35 = v65;
        MEMORY[0x1D388BF00](v46, -1, -1);

        (*(v56 + 8))(v58, v57);
        v47 = MEMORY[0x1E6968130];
        v48 = v62;
      }

      else
      {

        (*(v56 + 8))(v38, v57);
        v47 = MEMORY[0x1E6968130];
        v48 = v36;
      }

      sub_1D1542CBC(v48, &qword_1EE05B520, v47);
      v51 = v61;
      v52 = *(v60 + 8);
      v52(v63, v61);
      v52(v64, v51);
    }

    else
    {

      sub_1D1542CBC(v36, &qword_1EE05B520, MEMORY[0x1E6968130]);
      v49 = v61;
      v50 = *(v60 + 8);
      v50(v63, v61);
      v50(v64, v49);
      (*(v19 + 8))(v22, v35);
      v22 = v9;
    }
  }

  else
  {

    v35 = v65;
  }

  return (*(v19 + 32))(a3, v22, v35);
}

uint64_t static CurrentValueDateGenerationSupport.dateInterval(for:sampleTimeZoneName:sampleDateInterval:calendarCache:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v12 = sub_1D15A3268();
  v56 = *(v12 - 8);
  v57 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v59 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1542C68(0, &qword_1EE05B520, MEMORY[0x1E6968130]);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v54 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v58 = &v54 - v21;
  v22 = sub_1D15A2848();
  v60 = *(v22 - 8);
  v61 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v54 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v26 = MEMORY[0x1EEE9AC00](v25).n128_u64[0];
  v28 = &v54 - v27;
  if ([a1 code] == 248)
  {
    v55 = a6;
    sub_1D15427D4(v28, v24, a2, a3, a5);
    v29 = objc_opt_self();
    v54 = a4;
    v30 = sub_1D15A2228();
    v31 = sub_1D15A27B8();
    v32 = sub_1D15A27B8();
    v33 = [v29 hk:v30 julianDayDateIntervalFromOpenUpperBoundDateInterval:v31 sourceCalendar:v32 localCalendar:?];

    if (v33)
    {
      sub_1D15A2248();

      v34 = 0;
    }

    else
    {
      v34 = 1;
    }

    v39 = v58;
    v38 = v59;
    v40 = sub_1D15A22A8();
    v41 = *(v40 - 8);
    (*(v41 + 56))(v19, v34, 1, v40);
    sub_1D1495C10(v19, v39);
    sub_1D149D62C(v39, v16);
    if ((*(v41 + 48))(v16, 1, v40) == 1)
    {
      sub_1D1542CBC(v16, &qword_1EE05B520, MEMORY[0x1E6968130]);
      sub_1D15A31E8();
      v42 = sub_1D15A3248();
      v43 = sub_1D15A4328();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        *v44 = 136446210;
        v62 = &type metadata for CurrentValueDateGenerationSupport;
        v63 = v45;
        sub_1D1542C10();
        v46 = sub_1D15A3F68();
        v58 = v24;
        v59 = v28;
        v48 = sub_1D1479780(v46, v47, &v63);

        *(v44 + 4) = v48;
        _os_log_impl(&dword_1D1446000, v42, v43, "%{public}s trying to compute julian date interval for invalid sample.", v44, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v45);
        MEMORY[0x1D388BF00](v45, -1, -1);
        MEMORY[0x1D388BF00](v44, -1, -1);

        (*(v56 + 8))(v38, v57);
        sub_1D1542CBC(v39, &qword_1EE05B520, MEMORY[0x1E6968130]);
        v49 = v61;
        v50 = *(v60 + 8);
        v50(v58, v61);
        v51 = v59;
      }

      else
      {

        (*(v56 + 8))(v38, v57);
        sub_1D1542CBC(v39, &qword_1EE05B520, MEMORY[0x1E6968130]);
        v49 = v61;
        v50 = *(v60 + 8);
        v50(v24, v61);
        v51 = v28;
      }

      v50(v51, v49);
      return (*(v41 + 16))(v55, v54, v40);
    }

    else
    {
      sub_1D1542CBC(v39, &qword_1EE05B520, MEMORY[0x1E6968130]);
      v52 = v61;
      v53 = *(v60 + 8);
      v53(v24, v61);
      v53(v28, v52);
      return (*(v41 + 32))(v55, v16, v40);
    }
  }

  else
  {
    v35 = sub_1D15A22A8();
    v36 = *(*(v35 - 8) + 16);

    return v36(a6, a4, v35);
  }
}

uint64_t sub_1D15427D4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v32[1] = a1;
  v32[2] = a2;
  v32[0] = sub_1D15A3268();
  v8 = *(v32[0] - 8);
  MEMORY[0x1EEE9AC00](v32[0]);
  v10 = v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v32 - v12;
  sub_1D1542C68(0, &qword_1EE05B7E8, MEMORY[0x1E6969BC0]);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = v32 - v15;
  v17 = sub_1D15A2898();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a4)
  {
    sub_1D15A31E8();
    v25 = sub_1D15A3248();
    v26 = sub_1D15A4328();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_1D1446000, v25, v26, "Received nil timeZoneName for sample", v27, 2u);
      MEMORY[0x1D388BF00](v27, -1, -1);
    }

    (*(v8 + 8))(v10, v32[0]);
    goto LABEL_9;
  }

  sub_1D15A2858();
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_1D1542CBC(v16, &qword_1EE05B7E8, MEMORY[0x1E6969BC0]);
    sub_1D15A31E8();

    v21 = sub_1D15A3248();
    v22 = sub_1D15A4328();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v33 = v24;
      *v23 = 136446210;
      *(v23 + 4) = sub_1D1479780(a3, a4, &v33);
      _os_log_impl(&dword_1D1446000, v21, v22, "Failed to create a TimeZone with %{public}s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x1D388BF00](v24, -1, -1);
      MEMORY[0x1D388BF00](v23, -1, -1);
    }

    (*(v8 + 8))(v13, v32[0]);
LABEL_9:
    sub_1D15A2818();
    return sub_1D15A2818();
  }

  (*(v18 + 32))(v20, v16, v17);
  v29 = sub_1D15A2878();
  v30 = [a5 calendarForTimeZone_];

  sub_1D15A27C8();
  v31 = [a5 currentCalendar];
  sub_1D15A27C8();

  return (*(v18 + 8))(v20, v17);
}

unint64_t sub_1D1542C10()
{
  result = qword_1EC630F68;
  if (!qword_1EC630F68)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EC630F68);
  }

  return result;
}

void sub_1D1542C68(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D15A4608();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D1542CBC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1D1542C68(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

HealthVisualization::LevelView::DataConfiguration __swiftcall LevelView.DataConfiguration.init(normalizedValue:sortedNormalizedBuckets:)(Swift::Double normalizedValue, Swift::OpaquePointer sortedNormalizedBuckets)
{
  *v2 = normalizedValue;
  *(v2 + 8) = sortedNormalizedBuckets;
  result.normalizedValue = normalizedValue;
  result.sortedNormalizedBuckets = sortedNormalizedBuckets;
  return result;
}

uint64_t LevelView.DataConfiguration.Bucket.init(range:highlighted:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  *a2 = a3;
  *(a2 + 8) = a4;
  *(a2 + 16) = result;
  return result;
}

uint64_t static LevelView.DataConfiguration.Bucket.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    return (*(a2 + 16) ^ *(a1 + 16) ^ 1) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D1542DC4()
{
  if (*v0)
  {
    return 0x6867696C68676968;
  }

  else
  {
    return 0x65676E6172;
  }
}

uint64_t sub_1D1542E04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65676E6172 && a2 == 0xE500000000000000;
  if (v6 || (sub_1D15A4BA8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6867696C68676968 && a2 == 0xEB00000000646574)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D15A4BA8();

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

uint64_t sub_1D1542EE0(uint64_t a1)
{
  v2 = sub_1D1543138();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1542F1C(uint64_t a1)
{
  v2 = sub_1D1543138();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LevelView.DataConfiguration.Bucket.encode(to:)(void *a1)
{
  sub_1D154548C(0, &qword_1EE0562E8, sub_1D1543138, &type metadata for LevelView.DataConfiguration.Bucket.CodingKeys, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v12 - v7;
  v9 = *v1;
  v10 = v1[1];
  v13 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1543138();
  sub_1D15A4CE8();
  v12[0] = v9;
  v12[1] = v10;
  v14 = 0;
  sub_1D154318C();
  sub_1D1543414(&qword_1EE0568A0);
  sub_1D15A4B38();
  if (!v2)
  {
    LOBYTE(v12[0]) = 1;
    sub_1D15A4B08();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1D1543138()
{
  result = qword_1EE0597D0;
  if (!qword_1EE0597D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0597D0);
  }

  return result;
}

void sub_1D154318C()
{
  if (!qword_1EE05B5C8)
  {
    v0 = sub_1D15A3ED8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE05B5C8);
    }
  }
}

uint64_t LevelView.DataConfiguration.Bucket.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  sub_1D154548C(0, &qword_1EE0563E8, sub_1D1543138, &type metadata for LevelView.DataConfiguration.Bucket.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1543138();
  sub_1D15A4CD8();
  if (!v2)
  {
    v9 = v6;
    v10 = v16;
    sub_1D154318C();
    v19 = 0;
    sub_1D1543414(&qword_1EE05B5C0);
    sub_1D15A4A78();
    v11 = v17;
    v12 = v18;
    LOBYTE(v17) = 1;
    v14 = sub_1D15A4A48();
    (*(v9 + 8))(v8, v5);
    *v10 = v11;
    *(v10 + 8) = v12;
    *(v10 + 16) = v14 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D1543414(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1D154318C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D15434A4(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    return (*(a2 + 16) ^ *(a1 + 16) ^ 1) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t LevelView.DataConfiguration.sortedNormalizedBuckets.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

HealthVisualization::LevelView::DataConfiguration __swiftcall LevelView.DataConfiguration.init(nonNormalizedValue:nonNormalizedBuckets:)(Swift::Double nonNormalizedValue, Swift::OpaquePointer nonNormalizedBuckets)
{
  v5 = v2;
  sub_1D1545348(nonNormalizedBuckets._rawValue);
  v6 = *(nonNormalizedBuckets._rawValue + 2);
  v25 = v8 - v7;
  v26 = v7;
  if (v6)
  {
    v27 = MEMORY[0x1E69E7CC0];
    sub_1D14A79D4(0, v6, 0);
    v9 = v27;
    v10 = vdupq_lane_s64(*&v26, 0);
    v11 = (nonNormalizedBuckets._rawValue + 48);
    v12 = vdupq_lane_s64(*&v25, 0);
    while (1)
    {
      v13 = vdivq_f64(vsubq_f64(v11[-1], v10), v12);
      if (vmovn_s64(vmvnq_s8(vcgeq_f64(vdupq_laneq_s64(v13, 1), v13))).u8[0])
      {
        break;
      }

      v14 = LOBYTE(v11->f64[0]);
      v27 = v9;
      v16 = *(v9 + 2);
      v15 = *(v9 + 3);
      if (v16 >= v15 >> 1)
      {
        v23 = v12;
        v24 = v10;
        v22 = v13;
        sub_1D14A79D4((v15 > 1), v16 + 1, 1);
        v13 = v22;
        v12 = v23;
        v10 = v24;
        v9 = v27;
      }

      *(v9 + 2) = v16 + 1;
      v17 = &v9[24 * v16];
      *(v17 + 2) = v13;
      v17[48] = v14;
      v11 = (v11 + 24);
      if (!--v6)
      {

        goto LABEL_9;
      }
    }

    __break(1u);

    __break(1u);
  }

  else
  {

    v9 = MEMORY[0x1E69E7CC0];
LABEL_9:
    v27 = v9;

    sub_1D1544A00(&v27);

    v19 = (nonNormalizedValue - v26) / v25;
    if (v19 <= 0.0)
    {
      v19 = 0.0;
    }

    v20 = v27;
    if (v19 > 1.0)
    {
      v19 = 1.0;
    }

    *v5 = v19;
    *(v5 + 8) = v20;
  }

  result.normalizedValue = v19;
  result.sortedNormalizedBuckets._rawValue = v18;
  return result;
}

__C::CGRect __swiftcall LevelView.DataConfiguration.circleRect(for:)(__C::CGRect a1)
{
  height = a1.size.height;
  width = a1.size.width;
  y = a1.origin.y;
  x = a1.origin.x;
  v6 = *v1;
  v7 = CGRectGetMidX(a1) + -5.0;
  v12.origin.x = x;
  v12.origin.y = y;
  v12.size.width = width;
  v12.size.height = height;
  v8 = v6 * CGRectGetHeight(v12) + -5.0;
  v9 = 10.0;
  v10 = 10.0;
  v11 = v7;
  result.size.height = v10;
  result.size.width = v9;
  result.origin.y = v8;
  result.origin.x = v11;
  return result;
}

void LevelView.DataConfiguration.buckets(for:displayScale:)(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v64 = sub_1D15A4B88();
  v9 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v63 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v4;
  v12 = *(v4 + 8);
  v68.origin.x = a1;
  v68.origin.y = a2;
  v68.size.width = a3;
  v68.size.height = a4;
  v13 = CGRectGetMidX(v68) + -5.0;
  v69.origin.x = a1;
  v69.origin.y = a2;
  v69.size.width = a3;
  v69.size.height = a4;
  Height = CGRectGetHeight(v69);
  v55 = v11;
  v15 = v11 * Height + -5.0;
  v70.origin.x = a1;
  v70.origin.y = a2;
  v70.size.width = a3;
  v70.size.height = a4;
  MinY = CGRectGetMinY(v70);
  v71.size.width = 10.0;
  v71.size.height = 10.0;
  v71.origin.x = v13;
  v71.origin.y = v15;
  v17 = MinY - CGRectGetMinY(v71);
  if (v17 > 0.0)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0.0;
  }

  v72.size.width = 10.0;
  v72.size.height = 10.0;
  v72.origin.x = v13;
  v72.origin.y = v15;
  MaxY = CGRectGetMaxY(v72);
  v20 = a1;
  v73.origin.x = a1;
  v21 = 0.0;
  v59 = a2;
  v60 = a3;
  v73.origin.y = a2;
  v73.size.width = a3;
  v22 = a4;
  v73.size.height = a4;
  v23 = MaxY - CGRectGetMaxY(v73);
  if (v23 <= 0.0 || (v21 = v23, v18 == 0.0))
  {
    v24 = v20;
    v74.origin.x = v20;
    v74.origin.y = v59;
    v74.size.width = v60;
    v74.size.height = a4;
    v25 = CGRectGetHeight(v74) - v18 - v21;
    v66 = v55;
    v67 = v12;
    v26 = *(v12 + 16);
    v27 = MEMORY[0x1E69E7CC0];
    v58 = v12;
    if (v26)
    {
      v65 = MEMORY[0x1E69E7CC0];
      sub_1D1452B90(0, v26, 0);
      v28 = v65;
      v29 = *(v65 + 16);
      v30 = (v12 + 40);
      do
      {
        v31 = *(v30 - 1);
        v32 = *v30;
        v65 = v28;
        v33 = *(v28 + 24);
        if (v29 >= v33 >> 1)
        {
          sub_1D1452B90((v33 > 1), v29 + 1, 1);
          v28 = v65;
        }

        *(v28 + 16) = v29 + 1;
        *(v28 + 8 * v29 + 32) = v32 - v31;
        v30 += 3;
        ++v29;
        --v26;
      }

      while (v26);
      v12 = v58;
    }

    else
    {
      v28 = MEMORY[0x1E69E7CC0];
    }

    v34 = sub_1D1543C98(v28, v25);

    v35 = *(v12 + 16);
    if (v35)
    {
      v66 = v27;
      sub_1D14A79F4(0, v35, 0);
      v36 = 0;
      v57 = *(v12 + 16);
      v37 = v66;
      v56 = *MEMORY[0x1E69E7048];
      v61 = (v9 + 8);
      v62 = (v9 + 104);
      v54 = *MEMORY[0x1E69E7038];
      v38 = (v12 + 48);
      while (v57 != v36)
      {
        if (v36 >= *(v12 + 16))
        {
          goto LABEL_27;
        }

        if (v36 >= *(v34 + 16))
        {
          goto LABEL_28;
        }

        v39 = *v38;
        v40 = v34;
        v41 = v63;
        v42 = *v62;
        v43 = v64;
        (*v62)(v63, v56, v64);
        sub_1D15A29C8();
        v45 = v44;
        v46 = *v61;
        (*v61)(v41, v43);
        v75.origin.x = v24;
        v75.origin.y = v59;
        v75.size.width = v60;
        v75.size.height = v22;
        Width = CGRectGetWidth(v75);
        if (v39)
        {
          v76.origin.x = 0.0;
          v76.origin.y = v18;
          v76.size.width = Width;
          v76.size.height = v45;
          CGRectGetMinY(v76);
          v77.origin.x = 0.0;
          v77.origin.y = v18;
          v77.size.width = Width;
          v77.size.height = v45;
          CGRectGetHeight(v77);
          v48 = v63;
          v49 = v64;
          v42(v63, v54, v64);
          sub_1D15A29C8();
          v46(v48, v49);
        }

        v66 = v37;
        v51 = *(*&v37 + 16);
        v50 = *(*&v37 + 24);
        if (v51 >= v50 >> 1)
        {
          sub_1D14A79F4((v50 > 1), v51 + 1, 1);
          v37 = v66;
        }

        *(*&v37 + 16) = v51 + 1;
        v52 = *&v37 + 48 * v51;
        *(v52 + 32) = v36;
        *(v52 + 40) = 0;
        *(v52 + 48) = v18;
        *(v52 + 56) = Width;
        *(v52 + 64) = v45;
        *(v52 + 72) = v39;
        v38 += 24;
        ++v36;
        v18 = v18 + v45 + 2.0;
        v12 = v58;
        v34 = v40;
        if (v35 == v36)
        {

          return;
        }
      }

      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
    }

    else
    {
    }
  }
}

uint64_t sub_1D1543C98(uint64_t a1, double a2)
{
  v2 = *(a1 + 16);
  v3 = a2 - ((v2 - 1) + (v2 - 1));
  v4 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v40 = MEMORY[0x1E69E7CC0];
    sub_1D1452B90(0, v2, 0);
    v6 = v40;
    v7 = (a1 + 32);
    v8 = *(v40 + 16);
    v9 = v2;
    do
    {
      v10 = *v7;
      v11 = *(v40 + 24);
      if (v8 >= v11 >> 1)
      {
        sub_1D1452B90((v11 > 1), v8 + 1, 1);
      }

      *(v40 + 16) = v8 + 1;
      *(v40 + 8 * v8 + 32) = v3 * v10;
      ++v7;
      ++v8;
      --v9;
    }

    while (v9);
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  *&result = COERCE_DOUBLE(sub_1D152CE94(v6));
  if ((v13 & 1) == 0)
  {
    v14 = *&result;
    if (*&result > 3.0)
    {
      return v6;
    }

    v15 = *(v6 + 16);
    if (v15)
    {
      sub_1D1452B90(0, v15, 0);
      v16 = v4;
      v17 = *(v4 + 16);
      v18 = 32;
      do
      {
        v19 = *(v6 + v18);
        v20 = *(v4 + 24);
        if (v17 >= v20 >> 1)
        {
          sub_1D1452B90((v20 > 1), v17 + 1, 1);
        }

        *(v4 + 16) = v17 + 1;
        *(v4 + 8 * v17 + 32) = v19 - v14;
        v18 += 8;
        ++v17;
        --v15;
      }

      while (v15);

      v21 = *(v4 + 16);
      if (v21)
      {
LABEL_16:
        if (v21 > 3)
        {
          v22 = v21 & 0x7FFFFFFFFFFFFFFCLL;
          v26 = (v16 + 48);
          v23 = 0.0;
          v27 = v21 & 0x7FFFFFFFFFFFFFFCLL;
          do
          {
            v23 = v23 + *(v26 - 2) + *(v26 - 1) + *v26 + v26[1];
            v26 += 4;
            v27 -= 4;
          }

          while (v27);
          if (v21 == v22)
          {
            goto LABEL_26;
          }
        }

        else
        {
          v22 = 0;
          v23 = 0.0;
        }

        v28 = v21 - v22;
        v29 = (v16 + 8 * v22 + 32);
        do
        {
          v30 = *v29++;
          v23 = v23 + v30;
          --v28;
        }

        while (v28);
LABEL_26:
        sub_1D1452B90(0, v21, 0);
        v24 = v4;
        v31 = *(v4 + 16);
        v32 = 32;
        do
        {
          v33 = *(v16 + v32);
          v34 = *(v4 + 24);
          if (v31 >= v34 >> 1)
          {
            sub_1D1452B90((v34 > 1), v31 + 1, 1);
          }

          *(v4 + 16) = v31 + 1;
          *(v4 + 8 * v31 + 32) = v33 / v23;
          v32 += 8;
          ++v31;
          --v21;
        }

        while (v21);

        v25 = *(v4 + 16);
        if (v25)
        {
          goto LABEL_31;
        }

LABEL_20:

        return MEMORY[0x1E69E7CC0];
      }
    }

    else
    {

      v16 = MEMORY[0x1E69E7CC0];
      v21 = *(MEMORY[0x1E69E7CC0] + 16);
      if (v21)
      {
        goto LABEL_16;
      }
    }

    v24 = MEMORY[0x1E69E7CC0];
    v25 = *(MEMORY[0x1E69E7CC0] + 16);
    if (v25)
    {
LABEL_31:
      v35 = v3 + v2 * -3.0;
      sub_1D1452B90(0, v25, 0);
      v6 = v4;
      v36 = *(v4 + 16);
      v37 = 32;
      do
      {
        v38 = *(v24 + v37);
        v39 = *(v6 + 24);
        if (v36 >= v39 >> 1)
        {
          sub_1D1452B90((v39 > 1), v36 + 1, 1);
        }

        *(v6 + 16) = v36 + 1;
        *(v6 + 8 * v36 + 32) = v35 * v38 + 3.0;
        v37 += 8;
        ++v36;
        --v25;
      }

      while (v25);

      return v6;
    }

    goto LABEL_20;
  }

  __break(1u);
  return result;
}

uint64_t static LevelView.DataConfiguration.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    return sub_1D148876C(*(a1 + 8), *(a2 + 8));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D154405C()
{
  if (*v0)
  {
    return 0xD000000000000017;
  }

  else
  {
    return 0x7A696C616D726F6ELL;
  }
}

uint64_t sub_1D15440A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7A696C616D726F6ELL && a2 == 0xEF65756C61566465;
  if (v6 || (sub_1D15A4BA8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001D15C17C0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D15A4BA8();

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

uint64_t sub_1D1544194(uint64_t a1)
{
  v2 = sub_1D1545394();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D15441D0(uint64_t a1)
{
  v2 = sub_1D1545394();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LevelView.DataConfiguration.encode(to:)(void *a1)
{
  sub_1D154548C(0, &qword_1EE0562F0, sub_1D1545394, &type metadata for LevelView.DataConfiguration.CodingKeys, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v10 - v7;
  v10 = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1545394();
  sub_1D15A4CE8();
  v13 = 0;
  sub_1D15A4B18();
  if (!v2)
  {
    v12 = v10;
    v11 = 1;
    sub_1D15453E8();
    sub_1D15454F4(&qword_1EE056828, sub_1D1545438);
    sub_1D15A4B38();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t LevelView.DataConfiguration.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v15 = a2;
  sub_1D154548C(0, &qword_1EE0563F0, sub_1D1545394, &type metadata for LevelView.DataConfiguration.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1545394();
  sub_1D15A4CD8();
  if (!v2)
  {
    v9 = v6;
    v10 = v15;
    v18 = 0;
    sub_1D15A4A58();
    v12 = v11;
    sub_1D15453E8();
    v16 = 1;
    sub_1D15454F4(&qword_1EE056820, sub_1D1545560);
    sub_1D15A4A78();
    (*(v9 + 8))(v8, v5);
    v14 = v17;
    *v10 = v12;
    v10[1] = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D154466C(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    return sub_1D148876C(*(a1 + 8), *(a2 + 8));
  }

  else
  {
    return 0;
  }
}

HealthVisualization::LevelView::ViewConfiguration __swiftcall LevelView.ViewConfiguration.init(barColor:highlightedBarColor:dotColor:)(UIColor barColor, UIColor highlightedBarColor, UIColor dotColor)
{
  v3->super.isa = barColor.super.isa;
  v3[1].super.isa = highlightedBarColor.super.isa;
  v3[2].super.isa = dotColor.super.isa;
  result.dotColor = dotColor;
  result.highlightedBarColor = highlightedBarColor;
  result.barColor = barColor;
  return result;
}

id static LevelView.ViewConfiguration.defaultConfiguration(highlightColor:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v17 = sub_1D1544944;
  v18 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v14 = 1107296256;
  v15 = sub_1D145BE24;
  v16 = &block_descriptor_14;
  v5 = _Block_copy(&aBlock);
  v6 = [v4 initWithDynamicProvider_];
  _Block_release(v5);

  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  v8 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v17 = sub_1D15455B4;
  v18 = v7;
  aBlock = MEMORY[0x1E69E9820];
  v14 = 1107296256;
  v15 = sub_1D145BE24;
  v16 = &block_descriptor_5;
  v9 = _Block_copy(&aBlock);
  v12 = a1;
  v10 = [v8 initWithDynamicProvider_];
  _Block_release(v9);

  *a2 = v6;
  a2[1] = v10;
  a2[2] = v12;

  return v12;
}

id sub_1D1544944(void *a1)
{
  v1 = [a1 userInterfaceStyle];
  v2 = objc_opt_self();
  v3 = &selRef_systemGray3Color;
  if (v1 != 2)
  {
    v3 = &selRef_systemGray6Color;
  }

  v4 = [v2 *v3];

  return v4;
}

HealthVisualization::LevelView::LayoutConfiguration __swiftcall LevelView.LayoutConfiguration.init(size:)(HealthVisualization::LevelView::LayoutConfiguration size)
{
  *v1 = size.size.width;
  v1[1] = size.size.height;
  return size;
}

int64x2_t static LevelView.LayoutConfiguration.default.getter@<Q0>(int64x2_t *a1@<X8>)
{
  result = vdupq_n_s64(0x4046000000000000uLL);
  *a1 = result;
  return result;
}

uint64_t sub_1D1544A00(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D151E0BC(v2);
  }

  v3 = *(v2 + 2);
  v19[0] = (v2 + 32);
  v19[1] = v3;
  result = sub_1D15A4B58();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 40;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          v13 = *(v12 + 2);
          if (v13 >= *(v12 - 1))
          {
            break;
          }

          v14 = *(v12 + 3);
          v15 = v12[32];
          *(v12 + 1) = *(v12 - 8);
          *(v12 + 4) = *(v12 + 1);
          *(v12 - 1) = v13;
          *v12 = v14;
          v12[8] = v15;
          v12 -= 24;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 24;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_1D15A40F8();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v17[0] = v7 + 32;
    v17[1] = v6;
    sub_1D1544B5C(v17, v18, v19, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_1D1544B5C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v92 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v93 = *v92;
    if (!*v92)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_1D151DF58(v7);
      v7 = result;
    }

    v84 = (v7 + 16);
    v85 = *(v7 + 16);
    if (v85 >= 2)
    {
      while (*a3)
      {
        v86 = (v7 + 16 * v85);
        v87 = *v86;
        v88 = &v84[2 * v85];
        v89 = v88[1];
        sub_1D154511C((*a3 + 24 * *v86), (*a3 + 24 * *v88), *a3 + 24 * v89, v93);
        if (v4)
        {
        }

        if (v89 < v87)
        {
          goto LABEL_114;
        }

        if (v85 - 2 >= *v84)
        {
          goto LABEL_115;
        }

        *v86 = v87;
        v86[1] = v89;
        v90 = *v84 - v85;
        if (*v84 < v85)
        {
          goto LABEL_116;
        }

        v85 = *v84 - 1;
        result = memmove(v88, v88 + 2, 16 * v90);
        *v84 = v85;
        if (v85 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  v91 = a4;
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 24 * v6);
      v10 = 24 * v8;
      v11 = (*a3 + 24 * v8);
      v13 = *v11;
      v12 = v11 + 3;
      v14 = v13;
      v15 = v8 + 2;
      while (v5 != v15)
      {
        v16 = *v12;
        v17 = v12[3];
        v12 += 3;
        ++v15;
        if (v9 < v14 == v17 >= v16)
        {
          v6 = v15 - 1;
          if (v9 >= v14)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v9 >= v14)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_119;
      }

      if (v8 < v6)
      {
        v18 = 0;
        v19 = 24 * v6;
        v20 = v8;
        do
        {
          if (v20 != v6 + v18 - 1)
          {
            v26 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v21 = (v26 + v10);
            v22 = v26 + v19;
            v23 = *(v21 + 16);
            v24 = *v21;
            v25 = *(v22 - 8);
            *v21 = *(v22 - 24);
            *(v21 + 2) = v25;
            *(v22 - 24) = v24;
            *(v22 - 8) = v23;
          }

          ++v20;
          --v18;
          v19 -= 24;
          v10 += 24;
        }

        while (v20 < v6 + v18);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_118;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_120;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v6 < v8)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1D148B89C(0, *(v7 + 16) + 1, 1, v7);
      v7 = result;
    }

    v37 = *(v7 + 16);
    v36 = *(v7 + 24);
    v38 = v37 + 1;
    if (v37 >= v36 >> 1)
    {
      result = sub_1D148B89C((v36 > 1), v37 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 16) = v38;
    v39 = v7 + 32;
    v40 = (v7 + 32 + 16 * v37);
    *v40 = v8;
    v40[1] = v6;
    v93 = *v92;
    if (!*v92)
    {
      goto LABEL_127;
    }

    if (v37)
    {
      while (1)
      {
        v41 = v38 - 1;
        if (v38 >= 4)
        {
          break;
        }

        if (v38 == 3)
        {
          v42 = *(v7 + 32);
          v43 = *(v7 + 40);
          v52 = __OFSUB__(v43, v42);
          v44 = v43 - v42;
          v45 = v52;
LABEL_57:
          if (v45)
          {
            goto LABEL_104;
          }

          v58 = (v7 + 16 * v38);
          v60 = *v58;
          v59 = v58[1];
          v61 = __OFSUB__(v59, v60);
          v62 = v59 - v60;
          v63 = v61;
          if (v61)
          {
            goto LABEL_106;
          }

          v64 = (v39 + 16 * v41);
          v66 = *v64;
          v65 = v64[1];
          v52 = __OFSUB__(v65, v66);
          v67 = v65 - v66;
          if (v52)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v62, v67))
          {
            goto LABEL_111;
          }

          if (v62 + v67 >= v44)
          {
            if (v44 < v67)
            {
              v41 = v38 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v38 < 2)
        {
          goto LABEL_112;
        }

        v68 = (v7 + 16 * v38);
        v70 = *v68;
        v69 = v68[1];
        v52 = __OFSUB__(v69, v70);
        v62 = v69 - v70;
        v63 = v52;
LABEL_72:
        if (v63)
        {
          goto LABEL_108;
        }

        v71 = (v39 + 16 * v41);
        v73 = *v71;
        v72 = v71[1];
        v52 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v52)
        {
          goto LABEL_110;
        }

        if (v74 < v62)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v41 - 1 >= v38)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v79 = (v39 + 16 * (v41 - 1));
        v80 = *v79;
        v81 = (v39 + 16 * v41);
        v82 = v81[1];
        sub_1D154511C((*a3 + 24 * *v79), (*a3 + 24 * *v81), *a3 + 24 * v82, v93);
        if (v4)
        {
        }

        if (v82 < v80)
        {
          goto LABEL_99;
        }

        if (v41 > *(v7 + 16))
        {
          goto LABEL_100;
        }

        *v79 = v80;
        v79[1] = v82;
        v83 = *(v7 + 16);
        if (v41 >= v83)
        {
          goto LABEL_101;
        }

        v38 = v83 - 1;
        result = memmove((v39 + 16 * v41), v81 + 2, 16 * (v83 - 1 - v41));
        *(v7 + 16) = v83 - 1;
        if (v83 <= 2)
        {
          goto LABEL_3;
        }
      }

      v46 = v39 + 16 * v38;
      v47 = *(v46 - 64);
      v48 = *(v46 - 56);
      v52 = __OFSUB__(v48, v47);
      v49 = v48 - v47;
      if (v52)
      {
        goto LABEL_102;
      }

      v51 = *(v46 - 48);
      v50 = *(v46 - 40);
      v52 = __OFSUB__(v50, v51);
      v44 = v50 - v51;
      v45 = v52;
      if (v52)
      {
        goto LABEL_103;
      }

      v53 = (v7 + 16 * v38);
      v55 = *v53;
      v54 = v53[1];
      v52 = __OFSUB__(v54, v55);
      v56 = v54 - v55;
      if (v52)
      {
        goto LABEL_105;
      }

      v52 = __OFADD__(v44, v56);
      v57 = v44 + v56;
      if (v52)
      {
        goto LABEL_107;
      }

      if (v57 >= v49)
      {
        v75 = (v39 + 16 * v41);
        v77 = *v75;
        v76 = v75[1];
        v52 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v52)
        {
          goto LABEL_113;
        }

        if (v44 < v78)
        {
          v41 = v38 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    a4 = v91;
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v27 = *a3;
  v28 = *a3 + 24 * v6 - 24;
  v29 = v8 - v6;
LABEL_30:
  v30 = v29;
  v31 = v28;
  while (1)
  {
    v32 = *(v31 + 24);
    if (v32 >= *v31)
    {
LABEL_29:
      ++v6;
      v28 += 24;
      --v29;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v27)
    {
      break;
    }

    v33 = *(v31 + 32);
    v34 = *(v31 + 40);
    *(v31 + 24) = *v31;
    *(v31 + 40) = *(v31 + 16);
    *v31 = v32;
    *(v31 + 8) = v33;
    *(v31 + 16) = v34;
    v31 -= 24;
    if (__CFADD__(v30++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_1D154511C(double *__dst, double *__src, unint64_t a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 24;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 24;
  if (v9 < v11)
  {
    v12 = 3 * v9;
    if (a4 != __dst || &__dst[v12] <= a4)
    {
      memmove(a4, __dst, v12 * 8);
    }

    v13 = &v4[v12];
    if (v8 < 24)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (*v6 < *v4)
      {
        break;
      }

      v14 = v4;
      v15 = v7 == v4;
      v4 += 3;
      if (!v15)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 3;
      if (v4 >= v13)
      {
        goto LABEL_6;
      }
    }

    v14 = v6;
    v15 = v7 == v6;
    v6 += 3;
    if (v15)
    {
      goto LABEL_9;
    }

LABEL_8:
    v16 = *v14;
    v7[2] = v14[2];
    *v7 = v16;
    goto LABEL_9;
  }

  v17 = 3 * v11;
  if (a4 != __src || &__src[v17] <= a4)
  {
    memmove(a4, __src, 24 * v11);
  }

  v13 = &v4[v17];
  if (v10 >= 24 && v6 > v7)
  {
LABEL_20:
    v18 = v6 - 3;
    v5 -= 24;
    v19 = v13;
    do
    {
      v20 = (v5 + 24);
      v21 = *(v19 - 24);
      v19 -= 24;
      if (v21 < *v18)
      {
        if (v20 != v6)
        {
          v23 = *v18;
          *(v5 + 16) = *(v6 - 1);
          *v5 = v23;
        }

        if (v13 <= v4 || (v6 -= 3, v18 <= v7))
        {
          v6 = v18;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      if (v20 != v13)
      {
        v22 = *v19;
        *(v5 + 16) = *(v19 + 16);
        *v5 = v22;
      }

      v5 -= 24;
      v13 = v19;
    }

    while (v19 > v4);
    v13 = v19;
  }

LABEL_31:
  v24 = 3 * ((v13 - v4) / 24);
  if (v6 != v4 || v6 >= &v4[v24])
  {
    memmove(v6, v4, v24 * 8);
  }

  return 1;
}

uint64_t sub_1D1545348(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    goto LABEL_9;
  }

  v2 = (result + 40);
  v3 = 1.79769313e308;
  v4 = 2.22507386e-308;
  do
  {
    if (v3 >= *(v2 - 1))
    {
      v3 = *(v2 - 1);
    }

    if (*v2 > v4)
    {
      v4 = *v2;
    }

    v2 += 3;
    --v1;
  }

  while (v1);
  if (v3 > v4)
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

unint64_t sub_1D1545394()
{
  result = qword_1EE0597E8;
  if (!qword_1EE0597E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0597E8);
  }

  return result;
}

void sub_1D15453E8()
{
  if (!qword_1EE059778)
  {
    v0 = sub_1D15A4118();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE059778);
    }
  }
}

unint64_t sub_1D1545438()
{
  result = qword_1EE056CE0;
  if (!qword_1EE056CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE056CE0);
  }

  return result;
}

void sub_1D154548C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_1D15454F4(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1D15453E8();
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D1545560()
{
  result = qword_1EE056CD8;
  if (!qword_1EE056CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE056CD8);
  }

  return result;
}

id sub_1D15455B4(void *a1)
{
  v2 = *(v1 + 16);
  v3 = [a1 userInterfaceStyle];
  v4 = 0.2;
  if (v3 == 2)
  {
    v4 = 0.5;
  }

  v5 = [v2 colorWithAlphaComponent_];

  return v5;
}

uint64_t getEnumTagSinglePayload for LevelView.DataConfiguration.Bucket(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for LevelView.DataConfiguration.Bucket(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1D1545734()
{
  result = qword_1EC630F70;
  if (!qword_1EC630F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC630F70);
  }

  return result;
}

unint64_t sub_1D154578C()
{
  result = qword_1EC630F78;
  if (!qword_1EC630F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC630F78);
  }

  return result;
}

unint64_t sub_1D15457E4()
{
  result = qword_1EE0597D8;
  if (!qword_1EE0597D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0597D8);
  }

  return result;
}

unint64_t sub_1D154583C()
{
  result = qword_1EE0597E0;
  if (!qword_1EE0597E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0597E0);
  }

  return result;
}

unint64_t sub_1D1545894()
{
  result = qword_1EE0597C0;
  if (!qword_1EE0597C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0597C0);
  }

  return result;
}

unint64_t sub_1D15458EC()
{
  result = qword_1EE0597C8;
  if (!qword_1EE0597C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0597C8);
  }

  return result;
}

uint64_t AnchorDate.date.getter()
{
  v1 = sub_1D15A2848();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D15A26A8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v0;
  _s19HealthVisualization25PresentationDateProvidingPAAE012presentationD010Foundation0D0VvgZ_0();
  sub_1D15A2818();
  v10 = sub_1D15A27B8();
  (*(v2 + 8))(v4, v1);
  if (v9 > 1)
  {
    if (v9 == 2)
    {
      v14 = [v10 firstWeekday];
      v11 = sub_1D15A2618();
      v12 = [v10 hk:v14 startOfWeekWithFirstWeekday:v11 beforeDate:0 addingWeeks:?];
    }

    else
    {
      v11 = sub_1D15A2618();
      if (v9 == 3)
      {
        v12 = [v10 hk:v11 startOfMonthForDate:?];
      }

      else
      {
        v12 = [v10 hk:v11 startOfYearForDate:0 addingYears:?];
      }
    }

    goto LABEL_10;
  }

  if (v9)
  {
    v11 = sub_1D15A2618();
    v12 = [v10 hk:-1 startOfDateByAddingDays:v11 toDate:?];
LABEL_10:
    v13 = v12;
    goto LABEL_11;
  }

  v11 = sub_1D15A2618();
  v13 = v10;
  v10 = [v10 hk:0 startOfDateByAddingDays:v11 toDate:?];
LABEL_11:

  sub_1D15A2668();
  return (*(v6 + 8))(v8, v5);
}

HealthVisualization::AnchorDate_optional __swiftcall AnchorDate.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D15A49B8();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t AnchorDate.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x54664F7472617473;
  v3 = 0x57664F7472617473;
  v4 = 0x4D664F7472617473;
  if (v1 != 3)
  {
    v4 = 0x59664F7472617473;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000010;
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

unint64_t sub_1D1545D34()
{
  result = qword_1EC630F80;
  if (!qword_1EC630F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC630F80);
  }

  return result;
}

uint64_t sub_1D1545D88()
{
  sub_1D15A4C88();
  sub_1D15A3F88();

  return sub_1D15A4CB8();
}

uint64_t sub_1D1545E90()
{
  sub_1D15A3F88();
}

uint64_t sub_1D1545F84()
{
  sub_1D15A4C88();
  sub_1D15A3F88();

  return sub_1D15A4CB8();
}

void sub_1D1546094(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC0000007961646FLL;
  v4 = 0x54664F7472617473;
  v5 = 0xEB000000006B6565;
  v6 = 0x57664F7472617473;
  v7 = 0xEC00000068746E6FLL;
  v8 = 0x4D664F7472617473;
  if (v2 != 3)
  {
    v8 = 0x59664F7472617473;
    v7 = 0xEB00000000726165;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0xD000000000000010;
    v3 = 0x80000001D15BCF10;
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

unint64_t sub_1D154620C()
{
  result = qword_1EC630F88;
  if (!qword_1EC630F88)
  {
    sub_1D1546264();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC630F88);
  }

  return result;
}

void sub_1D1546264()
{
  if (!qword_1EC630F90)
  {
    v0 = sub_1D15A4118();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC630F90);
    }
  }
}

unint64_t sub_1D15462E0()
{
  result = qword_1EE05B388;
  if (!qword_1EE05B388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05B388);
  }

  return result;
}

uint64_t ActivitySummaryQueryOperation.result.getter()
{

  sub_1D15A2D28();

  return v1;
}

uint64_t sub_1D1546384@<X0>(uint64_t a1@<X8>)
{

  sub_1D15A2D28();

  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_1D15463E4()
{

  sub_1D15A2D38();
}

id sub_1D1546454()
{
  v1 = qword_1EE059CA0;
  v2 = *(v0 + qword_1EE059CA0);
  if (v2)
  {
    v3 = *(v0 + qword_1EE059CA0);
  }

  else
  {
    v4 = sub_1D15464B4();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1D15464B4()
{
  v1 = *&v0[qword_1EE059C88];
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v3 = objc_allocWithZone(MEMORY[0x1E696BED0]);
  v10[4] = sub_1D1548F18;
  v10[5] = v2;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1D1548614;
  v10[3] = &block_descriptor_15;
  v4 = _Block_copy(v10);
  v5 = v0;
  v6 = [v3 initWithPredicate:v1 resultsHandler:v4];
  _Block_release(v4);

  [v6 setOrderByDateAscending_];
  [v6 setLimit_];
  v7 = v6;
  v8 = [v5 name];
  [v7 setDebugIdentifier_];

  [v7 setQualityOfService_];
  return v7;
}

uint64_t sub_1D1546654@<X0>(uint64_t a1@<X8>)
{
  sub_1D1548378(0, &qword_1EE0597B8, MEMORY[0x1E69E93B8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15[-v7];
  v9 = qword_1EE059C98;
  swift_beginAccess();
  sub_1D1548F2C(v1 + v9, v8);
  v10 = sub_1D15A31D8();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_1D1548EA8(v8, &qword_1EE0597B8, MEMORY[0x1E69E93B8]);
  if (qword_1EE05B390 != -1)
  {
    swift_once();
  }

  v12 = qword_1EE05B398;
  v13 = v1;
  sub_1D15A31C8();
  (*(v11 + 16))(v5, a1, v10);
  (*(v11 + 56))(v5, 0, 1, v10);
  swift_beginAccess();
  sub_1D1548FC0(v5, v1 + v9);
  return swift_endAccess();
}

id ActivitySummaryQueryOperation.__allocating_init(predicate:orderedAscending:limit:name:queryQualityOfService:healthStore:)(void *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v8 = v7;
  v15 = objc_allocWithZone(v7);
  v16 = qword_1EE059CB0;
  sub_1D1487F34();
  v17 = swift_allocError();
  *v18 = 0xD00000000000001DLL;
  v18[1] = 0x80000001D15B4FC0;
  v18[2] = 0;
  v28 = v17;
  v29 = 1;
  sub_1D1548378(0, &qword_1EE05AAC8, sub_1D1546D0C, MEMORY[0x1E69A3DC0]);
  swift_allocObject();
  *&v15[v16] = sub_1D15A2D68();
  *&v15[qword_1EE059CA0] = 0;
  v19 = qword_1EE059C98;
  v20 = sub_1D15A31D8();
  (*(*(v20 - 8) + 56))(&v15[v19], 1, 1, v20);
  *&v15[qword_1EE059C88] = a1;
  v15[qword_1EE059CB8] = a2;
  *&v15[qword_1EE059C90] = a3;
  *&v15[qword_1EE059CA8] = a6;
  *&v15[qword_1EE059CC0] = a7;
  v27.receiver = v15;
  v27.super_class = v8;
  v21 = a7;
  v22 = a1;
  v23 = objc_msgSendSuper2(&v27, sel_init);
  v24 = v23;
  if (a5)
  {
    v25 = sub_1D15A3EF8();
  }

  else
  {
    v25 = 0;
  }

  [v23 setName_];

  return v23;
}

id ActivitySummaryQueryOperation.init(predicate:orderedAscending:limit:name:queryQualityOfService:healthStore:)(void *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v8 = v7;
  ObjectType = swift_getObjectType();
  v16 = qword_1EE059CB0;
  sub_1D1487F34();
  v17 = swift_allocError();
  *v18 = 0xD00000000000001DLL;
  v18[1] = 0x80000001D15B4FC0;
  v18[2] = 0;
  v28 = v17;
  v29 = 1;
  sub_1D1548378(0, &qword_1EE05AAC8, sub_1D1546D0C, MEMORY[0x1E69A3DC0]);
  swift_allocObject();
  *&v7[v16] = sub_1D15A2D68();
  *&v7[qword_1EE059CA0] = 0;
  v19 = qword_1EE059C98;
  v20 = sub_1D15A31D8();
  (*(*(v20 - 8) + 56))(&v8[v19], 1, 1, v20);
  *&v8[qword_1EE059C88] = a1;
  v8[qword_1EE059CB8] = a2;
  *&v8[qword_1EE059C90] = a3;
  *&v8[qword_1EE059CA8] = a6;
  *&v8[qword_1EE059CC0] = a7;
  v27.receiver = v8;
  v27.super_class = ObjectType;
  v21 = a7;
  v22 = a1;
  v23 = objc_msgSendSuper2(&v27, sel_init);
  v24 = v23;
  if (a5)
  {
    v25 = sub_1D15A3EF8();
  }

  else
  {
    v25 = 0;
  }

  [v23 setName_];

  return v23;
}

void sub_1D1546D0C()
{
  if (!qword_1EE059670)
  {
    sub_1D1546D8C();
    sub_1D1453368(255, &qword_1EE05ABB8);
    v0 = sub_1D15A4CC8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE059670);
    }
  }
}

void sub_1D1546D8C()
{
  if (!qword_1EE059760)
  {
    sub_1D1453BA0(255, &qword_1EE05B598);
    v0 = sub_1D15A4118();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE059760);
    }
  }
}

Swift::Void __swiftcall ActivitySummaryQueryOperation.main()()
{
  v1 = sub_1D15A31D8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5._countAndFlagsBits = 0x676E696E6E7572;
  v5._object = 0xE700000000000000;
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  NSOperation.logLifeCycleEvent(_:withPrivateInfo:)(v5, v6);
  sub_1D15A4478();
  if (qword_1EE05B390 != -1)
  {
    swift_once();
  }

  sub_1D1546654(v4);
  sub_1D1487C24();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1D15ACDD0;
  v8 = sub_1D15A3F38();
  v10 = v9;
  *(v7 + 56) = MEMORY[0x1E69E6158];
  *(v7 + 64) = sub_1D1487C8C();
  *(v7 + 32) = v8;
  *(v7 + 40) = v10;
  sub_1D15A31A8();

  (*(v2 + 8))(v4, v1);
  v11 = *(v0 + qword_1EE059CC0);
  v12 = sub_1D1546454();
  [v11 executeQuery_];
}

void sub_1D1547000(void *a1)
{
  v1 = a1;
  ActivitySummaryQueryOperation.main()();
}

Swift::Void __swiftcall ActivitySummaryQueryOperation.cleanUp()()
{
  v1 = sub_1D15A31D8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5._countAndFlagsBits = 0x676E696E61656C63;
  v5._object = 0xEB00000000707520;
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  NSOperation.logLifeCycleEvent(_:withPrivateInfo:)(v5, v6);
  if ([v0 isCancelled])
  {
    v17[1] = swift_getObjectType();
    sub_1D1547A98();
    v7._countAndFlagsBits = sub_1D15A3F68();
    v9 = v8;
    v10._countAndFlagsBits = 0x656C6C65636E6163;
    v10._object = 0xE900000000000064;
    v7._object = v9;
    NSOperation.logLifeCycleEvent(_:withPrivateInfo:)(v10, v7);
  }

  v11 = *&v0[qword_1EE059CC0];
  v12 = sub_1D1546454();
  [v11 stopQuery_];

  sub_1D15A4468();
  if (qword_1EE05B390 != -1)
  {
    swift_once();
  }

  sub_1D1546654(v4);
  sub_1D1487C24();
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1D15ACDD0;
  v14 = sub_1D15472B0();
  v16 = v15;
  *(v13 + 56) = MEMORY[0x1E69E6158];
  *(v13 + 64) = sub_1D1487C8C();
  *(v13 + 32) = v14;
  *(v13 + 40) = v16;
  sub_1D15A31A8();

  (*(v2 + 8))(v4, v1);
}

unint64_t sub_1D15472B0()
{
  v1 = v0;
  v2 = sub_1D15A22A8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v71 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1548378(0, &qword_1EE05B7F8, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v72 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v63 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v63 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v63 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v63 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v63 - v20;
  v22 = sub_1D15A26A8();
  v74 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v69 = &v63 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v68 = &v63 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v70 = &v63 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v73 = &v63 - v29;

  sub_1D15A2D28();

  v31 = v75;
  if (v76)
  {
    countAndFlagsBits = 1701736302;
    v33 = v75;
    v34 = 1;
LABEL_44:
    sub_1D1487E60(v33, v34);
    return countAndFlagsBits;
  }

  v66 = v3;
  v67 = v2;
  if (!(v75 >> 62))
  {
    v35 = *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v35)
    {
      goto LABEL_5;
    }

LABEL_43:
    countAndFlagsBits = 1701736302;
    v33 = v31;
    v34 = 0;
    goto LABEL_44;
  }

  v30 = sub_1D15A4708();
  v35 = v30;
  if (!v30)
  {
    goto LABEL_43;
  }

LABEL_5:
  v36 = v1[qword_1EE059CB8];
  v64 = v12;
  v65 = v36;
  if (v36 == 1)
  {
    if ((v31 & 0xC000000000000001) != 0)
    {
      v37 = MEMORY[0x1D388AB50](0, v31);
      goto LABEL_9;
    }

    if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v37 = *(v31 + 32);
LABEL_9:
      v38 = v37;
      v39 = [v37 _startDate];

      if (v39)
      {
        sub_1D15A2668();

        v40 = 0;
      }

      else
      {
        v40 = 1;
      }

      v45 = v74;
      v1 = *(v74 + 56);
      (v1)(v18, v40, 1, v22);
      goto LABEL_22;
    }

    goto LABEL_48;
  }

  v30 = v35 - 1;
  if (__OFSUB__(v35, 1))
  {
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if ((v31 & 0xC000000000000001) != 0)
  {
LABEL_49:
    v41 = MEMORY[0x1D388AB50](v30, v31);
    goto LABEL_16;
  }

  if ((v30 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_51;
  }

  if (v30 >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v41 = *(v31 + 8 * v30 + 32);
LABEL_16:
  v42 = v41;
  v43 = [v41 _startDate];

  if (v43)
  {
    sub_1D15A2668();

    v44 = 0;
  }

  else
  {
    v44 = 1;
  }

  v45 = v74;
  v1 = *(v74 + 56);
  (v1)(v15, v44, 1, v22);
  v18 = v15;
LABEL_22:
  sub_1D150F280(v18, v21);
  v46 = v45;
  v12 = *(v45 + 48);
  if ((v12)(v21, 1, v22) == 1)
  {
    countAndFlagsBits = 1701736302;
    sub_1D1487E60(v31, 0);
    sub_1D1548EA8(v21, &qword_1EE05B7F8, MEMORY[0x1E6969530]);
    return countAndFlagsBits;
  }

  v63 = *(v46 + 32);
  result = v63(v73, v21, v22);
  if (!v65)
  {
    if ((v31 & 0xC000000000000001) == 0)
    {
      if (!*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_56:
        __break(1u);
        goto LABEL_57;
      }

      v53 = *(v31 + 32);
LABEL_35:
      v54 = v53;
      v50 = v67;
      sub_1D1487E60(v31, 0);
      v55 = [v54 _endDate];

      if (v55)
      {
        v9 = v72;
        sub_1D15A2668();

        v52 = 0;
      }

      else
      {
        v52 = 1;
        v9 = v72;
      }

      goto LABEL_39;
    }

LABEL_53:
    v53 = MEMORY[0x1D388AB50](0, v31);
    goto LABEL_35;
  }

  result = v35 - 1;
  if (__OFSUB__(v35, 1))
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  if ((v31 & 0xC000000000000001) != 0)
  {
    v48 = MEMORY[0x1D388AB50](result, v31);
LABEL_30:
    v49 = v48;
    v50 = v67;
    sub_1D1487E60(v31, 0);
    v51 = [v49 _endDate];

    if (v51)
    {
      sub_1D15A2668();

      v52 = 0;
    }

    else
    {
      v52 = 1;
    }

LABEL_39:
    (v1)(v9, v52, 1, v22);
    v56 = v64;
    sub_1D150F280(v9, v64);
    if ((v12)(v56, 1, v22) == 1)
    {
      countAndFlagsBits = 1701736302;
      (*(v74 + 8))(v73, v22);
      sub_1D1548EA8(v56, &qword_1EE05B7F8, MEMORY[0x1E6969530]);
    }

    else
    {
      v57 = v70;
      v63(v70, v56, v22);
      v59 = v73;
      v58 = v74;
      v60 = *(v74 + 16);
      v60(v68, v73, v22);
      v60(v69, v57, v22);
      v61 = v71;
      sub_1D15A2268();
      countAndFlagsBits = DateInterval.stringWithISO8601Format()()._countAndFlagsBits;
      (*(v66 + 8))(v61, v50);
      v62 = *(v58 + 8);
      v62(v57, v22);
      v62(v59, v22);
    }

    return countAndFlagsBits;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    goto LABEL_56;
  }

  if (result < *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v48 = *(v31 + 8 * result + 32);
    goto LABEL_30;
  }

LABEL_57:
  __break(1u);
  return result;
}

unint64_t sub_1D1547A98()
{
  result = qword_1EC630F98;
  if (!qword_1EC630F98)
  {
    type metadata accessor for ActivitySummaryQueryOperation();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EC630F98);
  }

  return result;
}

uint64_t type metadata accessor for ActivitySummaryQueryOperation()
{
  result = qword_1EE059C78;
  if (!qword_1EE059C78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D1547B2C(int a1, void *a2, unint64_t a3, id a4)
{
  if ([a4 isCancelled])
  {
    v7._countAndFlagsBits = 0xD00000000000002DLL;
    v7._object = 0x80000001D15BDC90;
    v8._countAndFlagsBits = 0;
    v8._object = 0xE000000000000000;
    NSOperation.logLifeCycleEvent(_:withPrivateInfo:)(v7, v8);
  }

  else
  {
    v9 = [a4 isFinished];
    if ((v9 & 1) == 0)
    {
      v10 = a2;
      if (!a2)
      {
        if (a3)
        {
          v11 = 0xD000000000000024;
        }

        else
        {
          v11 = 0;
        }

        if (a3)
        {
          v12 = 0x80000001D15C1900;
        }

        else
        {
          v12 = 0;
        }

        if (a3)
        {
          v13 = a3 | 0x8000000000000000;
        }

        else
        {
          v13 = 0xC000000000000000;
        }

        sub_1D1487F34();
        v14 = swift_allocError();
        *v15 = v11;
        v15[1] = v12;
        v15[2] = v13;
        swift_getErrorValue();
        v16 = a3;
        sub_1D1487F88(v11, v12, v13);
        v17._countAndFlagsBits = sub_1D15A4C08();
        v18._countAndFlagsBits = 0;
        v18._object = 0xE000000000000000;
        NSOperation.logErrorString(_:withInfo:)(v17, v18);

        v10 = swift_allocError();
        *v19 = v11;
        v19[1] = v12;
        v19[2] = v13;
        v9 = v10;
      }

      MEMORY[0x1EEE9AC00](v9);
      swift_bridgeObjectRetain_n();
      sub_1D15A2DA8();
      sub_1D1487E60(v10, a2 == 0);
      sub_1D1487E60(v10, a2 == 0);
    }
  }
}

void sub_1D1547D44()
{

  sub_1D15A2D38();

  v0._countAndFlagsBits = 0x64656873696E6966;
  v0._object = 0xE800000000000000;
  v1._countAndFlagsBits = 0;
  v1._object = 0xE000000000000000;
  NSOperation.logLifeCycleEvent(_:withPrivateInfo:)(v0, v1);
}

id static ActivitySummaryQueryOperation.makePredicate(dateInterval:)(uint64_t a1)
{
  v38 = a1;
  v39 = sub_1D15A26A8();
  v37 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v2 = &v34 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1D15A23A8();
  v42 = *(v3 - 8);
  v43 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v35 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v36 = &v34 - v6;
  v7 = sub_1D15A2708();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D15A2848();
  v40 = *(v11 - 8);
  v41 = v11;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 104))(v10, *MEMORY[0x1E6969868], v7, v12);
  sub_1D15A2718();
  (*(v8 + 8))(v10, v7);
  sub_1D1548378(0, &qword_1EE0596B8, MEMORY[0x1E6969AD0], MEMORY[0x1E69E6F90]);
  v15 = sub_1D15A2838();
  v16 = *(v15 - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1D15B4FD0;
  v20 = v19 + v18;
  v21 = *(v16 + 104);
  v21(v20, *MEMORY[0x1E6969AB8], v15);
  v21(v20 + v17, *MEMORY[0x1E6969A50], v15);
  v21(v20 + 2 * v17, *MEMORY[0x1E6969A68], v15);
  v21(v20 + 3 * v17, *MEMORY[0x1E6969A78], v15);
  v22 = v35;
  v21(v20 + 4 * v17, *MEMORY[0x1E6969A48], v15);
  sub_1D15486CC(v19);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1D15A2288();
  v23 = v36;
  sub_1D15A2768();
  v24 = *(v37 + 8);
  v25 = v39;
  v24(v2, v39);
  sub_1D15A2258();
  sub_1D15A2768();

  v24(v2, v25);
  LOBYTE(v20) = MEMORY[0x1D3888670](v23, v22);
  v26 = objc_opt_self();
  v27 = sub_1D15A22F8();
  if (v20)
  {
    v28 = [v26 predicateForActivitySummaryWithDateComponents_];
  }

  else
  {
    v29 = sub_1D15A22F8();
    v28 = [v26 predicateForActivitySummariesBetweenStartDateComponents:v27 endDateComponents:v29];

    v27 = v29;
  }

  v30 = *(v42 + 8);
  v31 = v22;
  v32 = v43;
  v30(v31, v43);
  v30(v23, v32);
  (*(v40 + 8))(v14, v41);
  return v28;
}

void sub_1D1548378(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

id ActivitySummaryQueryOperation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1D1548470()
{

  return sub_1D1548EA8(v0 + qword_1EE059C98, &qword_1EE0597B8, MEMORY[0x1E69E93B8]);
}

id ActivitySummaryQueryOperation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D1548528(uint64_t a1)
{

  return sub_1D1548EA8(a1 + qword_1EE059C98, &qword_1EE0597B8, MEMORY[0x1E69E93B8]);
}

uint64_t sub_1D15485B4@<X0>(uint64_t a1@<X8>)
{

  sub_1D15A2D28();

  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_1D1548614(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v7 = *(a1 + 32);
  if (a3)
  {
    sub_1D1453BA0(0, &qword_1EE05B598);
    v5 = sub_1D15A40C8();
  }

  v8 = a2;
  v9 = a4;
  v7(v8, v5, a4);
}

uint64_t sub_1D15486CC(uint64_t a1)
{
  v2 = sub_1D15A2838();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_1D1548DE4();
    v9 = sub_1D15A47A8();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_1D1548E64(&qword_1EE05AAD8);
      v16 = sub_1D15A3E88();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          sub_1D1548E64(&qword_1EE05AAD0);
          v23 = sub_1D15A3EE8();
          v24 = *v15;
          (*v15)(v5, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

void sub_1D15489B8()
{
  sub_1D1548378(319, &qword_1EE0597B8, MEMORY[0x1E69E93B8], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

void sub_1D1548B00(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_1D15A4708())
    {
LABEL_3:
      sub_1D151298C();
      v3 = sub_1D15A47A8();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_1D15A4708();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x1E69E7CD0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v38 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v36 = v1;
    while (1)
    {
      v8 = MEMORY[0x1D388AB50](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_1D15A4588();
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *(v6 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_1D1453BA0(0, &qword_1EE056778);
        while (1)
        {
          v18 = *(*(v3 + 48) + 8 * v13);
          v19 = sub_1D15A4598();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *(v6 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v1 = v36;
            v5 = v38;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v36;
        v5 = v38;
        if (v7 == v38)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v14) = v16 | v15;
        *(*(v3 + 48) + 8 * v13) = v10;
        v20 = *(v3 + 16);
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        *(v3 + 16) = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v35 = v1 + 32;
    v37 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v37)
    {
      v23 = *(v35 + 8 * v22);
      v24 = sub_1D15A4588();
      v25 = -1 << *(v3 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      v28 = *(v6 + 8 * (v26 >> 6));
      v29 = 1 << v26;
      if (((1 << v26) & v28) != 0)
      {
        v30 = ~v25;
        sub_1D1453BA0(0, &qword_1EE056778);
        do
        {
          v31 = *(*(v3 + 48) + 8 * v26);
          v32 = sub_1D15A4598();

          if (v32)
          {

            v5 = v38;
            goto LABEL_23;
          }

          v26 = (v26 + 1) & v30;
          v27 = v26 >> 6;
          v28 = *(v6 + 8 * (v26 >> 6));
          v29 = 1 << v26;
        }

        while (((1 << v26) & v28) != 0);
        v5 = v38;
      }

      *(v6 + 8 * v27) = v29 | v28;
      *(*(v3 + 48) + 8 * v26) = v23;
      v33 = *(v3 + 16);
      v9 = __OFADD__(v33, 1);
      v34 = v33 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      *(v3 + 16) = v34;
LABEL_23:
      if (++v22 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

void sub_1D1548DE4()
{
  if (!qword_1EE0596F0)
  {
    sub_1D15A2838();
    sub_1D1548E64(&qword_1EE05AAD8);
    v0 = sub_1D15A47B8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0596F0);
    }
  }
}

uint64_t sub_1D1548E64(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1D15A2838();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D1548EA8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D1548378(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D1548F2C(uint64_t a1, uint64_t a2)
{
  sub_1D1548378(0, &qword_1EE0597B8, MEMORY[0x1E69E93B8], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D1548FC0(uint64_t a1, uint64_t a2)
{
  sub_1D1548378(0, &qword_1EE0597B8, MEMORY[0x1E69E93B8], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t DayOfWeekDistributionChartView.init(distribution:model:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  sub_1D1499AEC(a1, a3, type metadata accessor for TimeBasedDistribution);
  v6 = sub_1D14A94F8(a1, a2);
  sub_1D1549280(a1, type metadata accessor for TimeBasedDistribution);
  v7 = type metadata accessor for DayOfWeekDistributionChartView();
  *(a3 + *(v7 + 20)) = v6;
  v8 = a3 + *(v7 + 24);

  return sub_1D1499A88(a2, v8);
}

uint64_t type metadata accessor for DayOfWeekDistributionChartView()
{
  result = qword_1EC630FA8;
  if (!qword_1EC630FA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DayOfWeekDistributionChartView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for AFibBurdenDayOfWeekChart();
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v5 + 36);
  sub_1D1499AEC(v2, &v7[v8], type metadata accessor for TimeBasedDistribution);
  v9 = v2 + *(type metadata accessor for DayOfWeekDistributionChartView() + 24);
  v10 = *(v5 + 40);
  sub_1D1499AEC(v9, &v7[v10], type metadata accessor for TimeBasedDistributionChartModel);
  v11 = v9 + *(type metadata accessor for TimeBasedDistributionChartModel() + 24);
  v12 = *(v11 + *(type metadata accessor for TimeBasedDistributionChartDesign() + 64));
  *v7 = 0;
  v7[8] = 1;
  *(v7 + 2) = v12;
  *(v7 + 12) = 0;
  sub_1D14F81C0(&v7[v8], &v7[v10], 0, a1);
  return sub_1D1549280(v7, type metadata accessor for AFibBurdenDayOfWeekChart);
}

uint64_t sub_1D1549280(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D15492E0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_1D1499AEC(a1, a4, type metadata accessor for TimeBasedDistribution);
  v8 = sub_1D14A94F8(a1, a2);
  sub_1D1549280(a1, type metadata accessor for TimeBasedDistribution);
  v9 = *(a3 + 24);
  *(a4 + *(a3 + 20)) = v8;

  return sub_1D1499A88(a2, a4 + v9);
}

uint64_t sub_1D1549384(uint64_t a1)
{
  result = sub_1D1549624(&qword_1EC630FA0, type metadata accessor for DayOfWeekDistributionChartView);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D15493F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2;
  v6 = type metadata accessor for AFibBurdenDayOfWeekChart();
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v7 + 36);
  sub_1D1499AEC(v4, &v9[v10], type metadata accessor for TimeBasedDistribution);
  v11 = v4 + *(a1 + 24);
  v12 = *(v7 + 40);
  sub_1D1499AEC(v11, &v9[v12], type metadata accessor for TimeBasedDistributionChartModel);
  v13 = v11 + *(type metadata accessor for TimeBasedDistributionChartModel() + 24);
  v14 = *(v13 + *(type metadata accessor for TimeBasedDistributionChartDesign() + 64));
  *v9 = 0;
  v9[8] = 1;
  *(v9 + 2) = v14;
  *(v9 + 12) = 0;
  sub_1D14F81C0(&v9[v10], &v9[v12], 0, a2);
  return sub_1D1549280(v9, type metadata accessor for AFibBurdenDayOfWeekChart);
}

void sub_1D1549558()
{
  type metadata accessor for TimeBasedDistribution();
  if (v0 <= 0x3F)
  {
    sub_1D154966C(319, &qword_1EC630B98, type metadata accessor for TimeBasedDistributionChartPoint.DayOfWeek, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for TimeBasedDistributionChartModel();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1D1549624(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D154966C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t TimeBasedDistribution.Bucket.init(componentRange:value:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a3;
  v5 = *(a3 + 8);
  v6 = *(a3 + 9);
  v7 = a3[2];
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = v4;
  *(a4 + 24) = v5;
  *(a4 + 25) = v6;
  *(a4 + 32) = v7;
  return result;
}

uint64_t TimeBasedDistribution.init(component:buckets:unitString:minimumComponentInterval:maximumComponentInterval:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v29 = a3;
  v13 = sub_1D15A3268();
  v30 = *(v13 - 8);
  v31 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for TimeBasedDistribution();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1D154B4D8(a2, a5, a6))
  {
    v20 = sub_1D15A2838();
    (*(*(v20 - 8) + 32))(v19, a1, v20);
    *&v19[*(v16 + 20)] = a2;
    v21 = &v19[*(v16 + 24)];
    *v21 = v29;
    *(v21 + 1) = a4;
    sub_1D154B654(v19, a7);
    v22 = 0;
  }

  else
  {

    sub_1D15A31E8();
    v23 = sub_1D15A3248();
    v24 = sub_1D15A4328();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_1D1446000, v23, v24, "[TimeBasedDistribution] Attempted to create invalid distribution", v25, 2u);
      MEMORY[0x1D388BF00](v25, -1, -1);
    }

    v26 = sub_1D15A2838();
    (*(*(v26 - 8) + 8))(a1, v26);
    (*(v30 + 8))(v15, v31);
    v22 = 1;
  }

  return (*(v17 + 56))(a7, v22, 1, v16);
}

uint64_t type metadata accessor for TimeBasedDistribution()
{
  result = qword_1EE05A328;
  if (!qword_1EE05A328)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

HealthVisualization::TimeBasedDistribution::DistributionValue __swiftcall TimeBasedDistribution.DistributionValue.init(value:isMax:customTags:)(Swift::Double_optional value, Swift::Bool isMax, Swift::OpaquePointer customTags)
{
  *v4 = *&value.is_nil;
  *(v4 + 8) = isMax;
  *(v4 + 9) = customTags._rawValue;
  *(v4 + 16) = v3;
  result.value.value = value.value;
  result.value.is_nil = value.is_nil;
  LOBYTE(result.customTags._rawValue) = isMax;
  return result;
}

uint64_t sub_1D1549A74(uint64_t a1, uint64_t *a2, unsigned int *a3)
{
  v5 = sub_1D15A2838();
  __swift_allocate_value_buffer(v5, a2);
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *a3;
  v8 = *(*(v5 - 8) + 104);

  return v8(v6, v7, v5);
}

uint64_t sub_1D1549B20@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_1D15A2838();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_1D1549BE8()
{
  v1 = 0x78614D7369;
  if (*v0 != 1)
  {
    v1 = 0x61546D6F74737563;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x65756C6176;
  }
}

uint64_t sub_1D1549C40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D154C01C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D1549C68(uint64_t a1)
{
  v2 = sub_1D154B6B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1549CA4(uint64_t a1)
{
  v2 = sub_1D154B6B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TimeBasedDistribution.DistributionValue.encode(to:)(void *a1)
{
  sub_1D154B980(0, &qword_1EC630FE8, sub_1D154B6B8, &type metadata for TimeBasedDistribution.DistributionValue.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - v6;
  v15 = *(v1 + 9);
  v12 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D154B6B8();
  sub_1D15A4CE8();
  v18 = 0;
  v8 = v13;
  sub_1D15A4AC8();
  if (!v8)
  {
    v9 = v12;
    v17 = 1;
    sub_1D15A4B08();
    v14 = v9;
    v16 = 2;
    sub_1D14485DC(0, &qword_1EE05ADA8);
    sub_1D154B70C(&qword_1EE056818);
    sub_1D15A4B38();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t TimeBasedDistribution.DistributionValue.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17[0] = a2;
  sub_1D154B980(0, &qword_1EC630FF8, sub_1D154B6B8, &type metadata for TimeBasedDistribution.DistributionValue.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D154B6B8();
  sub_1D15A4CD8();
  if (!v2)
  {
    v9 = v6;
    v10 = v17[0];
    v21 = 0;
    v11 = sub_1D15A4A08();
    v18 = v12 & 1;
    v20 = 1;
    v22 = sub_1D15A4A48() & 1;
    sub_1D14485DC(0, &qword_1EE05ADA8);
    v19 = 2;
    sub_1D154B70C(&qword_1EE05ADA0);
    sub_1D15A4A78();
    (*(v9 + 8))(v8, v5);
    v14 = v17[1];
    v15 = v18;
    v16 = v22;
    *v10 = v11;
    *(v10 + 8) = v15;
    *(v10 + 9) = v16;
    *(v10 + 16) = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t TimeBasedDistribution.Bucket.value.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 25);
  v4 = *(v1 + 32);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
  *(a1 + 9) = v3;
  *(a1 + 16) = v4;
}

uint64_t sub_1D154A1E8()
{
  if (*v0)
  {
    return 0x65756C6176;
  }

  else
  {
    return 0x6E656E6F706D6F63;
  }
}

uint64_t sub_1D154A22C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E656E6F706D6F63 && a2 == 0xEE0065676E615274;
  if (v6 || (sub_1D15A4BA8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D15A4BA8();

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

uint64_t sub_1D154A30C(uint64_t a1)
{
  v2 = sub_1D154B77C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D154A348(uint64_t a1)
{
  v2 = sub_1D154B77C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TimeBasedDistribution.Bucket.encode(to:)(void *a1)
{
  sub_1D154B980(0, &qword_1EC631000, sub_1D154B77C, &type metadata for TimeBasedDistribution.Bucket.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v14 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v22 = *(v1 + 24);
  v15 = *(v1 + 25);
  v11 = v1[4];
  v16 = v10;
  v17 = v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D154B77C();
  sub_1D15A4CE8();
  v19 = v8;
  v20 = v9;
  v23 = 0;
  sub_1D148EE24();
  sub_1D154B7D0(&qword_1EC631010);
  v12 = v18;
  sub_1D15A4B38();
  if (!v12)
  {
    v19 = v16;
    LOBYTE(v20) = v22;
    BYTE1(v20) = v15;
    v21 = v17;
    v23 = 1;
    sub_1D154B830();

    sub_1D15A4B38();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t TimeBasedDistribution.Bucket.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  sub_1D154B980(0, &qword_1EC631020, sub_1D154B77C, &type metadata for TimeBasedDistribution.Bucket.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D154B77C();
  sub_1D15A4CD8();
  if (!v2)
  {
    v9 = v6;
    v10 = v18;
    sub_1D148EE24();
    v22 = 0;
    sub_1D154B7D0(&qword_1EC631028);
    sub_1D15A4A78();
    v11 = v19;
    v12 = v20;
    v22 = 1;
    sub_1D154B884();
    sub_1D15A4A78();
    (*(v9 + 8))(v8, v5);
    v14 = v19;
    v15 = v20;
    v16 = BYTE1(v20);
    v17 = v21;
    *v10 = v11;
    *(v10 + 8) = v12;
    *(v10 + 16) = v14;
    *(v10 + 24) = v15;
    *(v10 + 25) = v16;
    *(v10 + 32) = v17;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t TimeBasedDistribution.component.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D15A2838();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t TimeBasedDistribution.buckets.getter()
{
  type metadata accessor for TimeBasedDistribution();
}

uint64_t TimeBasedDistribution.unitString.getter()
{
  v1 = *(v0 + *(type metadata accessor for TimeBasedDistribution() + 24));

  return v1;
}

uint64_t static TimeBasedDistribution.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_1D15A2828() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for TimeBasedDistribution();
  if ((sub_1D148897C(*(a1 + *(v4 + 20)), *(a2 + *(v4 + 20))) & 1) == 0)
  {
    return 0;
  }

  v5 = *(v4 + 24);
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  if (v6 == *v8 && v7 == v8[1])
  {
    return 1;
  }

  return sub_1D15A4BA8();
}

uint64_t sub_1D154A9C0()
{
  v1 = 0x7374656B637562;
  if (*v0 != 1)
  {
    v1 = 0x6972745374696E75;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E656E6F706D6F63;
  }
}

uint64_t sub_1D154AA24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D154C134(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D154AA4C(uint64_t a1)
{
  v2 = sub_1D154B8D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D154AA88(uint64_t a1)
{
  v2 = sub_1D154B8D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TimeBasedDistribution.encode(to:)(void *a1)
{
  v3 = v1;
  sub_1D154B980(0, &qword_1EC631038, sub_1D154B8D8, &type metadata for TimeBasedDistribution.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D154B8D8();
  sub_1D15A4CE8();
  v14 = 0;
  sub_1D15A2838();
  sub_1D1548E64(&qword_1EC631048);
  sub_1D15A4B38();
  if (!v2)
  {
    v11[1] = *(v3 + *(type metadata accessor for TimeBasedDistribution() + 20));
    v13 = 1;
    sub_1D14485DC(0, &qword_1EE059780);
    sub_1D154B9E8(&qword_1EC631050, sub_1D154B92C);
    sub_1D15A4B38();
    v12 = 2;
    sub_1D15A4AF8();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t TimeBasedDistribution.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v3 = sub_1D15A2838();
  v21 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v22 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D154B980(0, &qword_1EC631060, sub_1D154B8D8, &type metadata for TimeBasedDistribution.CodingKeys, MEMORY[0x1E69E6F48]);
  v23 = v5;
  v20 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v19 - v6;
  v8 = type metadata accessor for TimeBasedDistribution();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D154B8D8();
  v24 = v7;
  v11 = v25;
  sub_1D15A4CD8();
  if (v11)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v13 = v20;
  v12 = v21;
  v29 = 0;
  sub_1D1548E64(&qword_1EC631068);
  sub_1D15A4A78();
  (*(v12 + 32))(v10, v22, v3);
  sub_1D14485DC(0, &qword_1EE059780);
  v28 = 1;
  sub_1D154B9E8(&qword_1EC631070, sub_1D154BA64);
  sub_1D15A4A78();
  *&v10[*(v8 + 20)] = v26;
  v27 = 2;
  v14 = sub_1D15A4A38();
  v16 = v15;
  (*(v13 + 8))(v24, v23);
  v17 = &v10[*(v8 + 24)];
  *v17 = v14;
  v17[1] = v16;
  sub_1D14BE588(v10, v19);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D154BAB8(v10);
}

uint64_t sub_1D154B164(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_1D15A2828() & 1) == 0 || (sub_1D148897C(*(a1 + *(a3 + 20)), *(a2 + *(a3 + 20))) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 24);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  if (v7 == *v9 && v8 == v9[1])
  {
    return 1;
  }

  return sub_1D15A4BA8();
}

uint64_t TimeBasedDistribution.containsEnoughInformationToBeShownToUser.getter()
{
  result = type metadata accessor for TimeBasedDistribution();
  v2 = 0;
  v3 = *(v0 + *(result + 20));
  v4 = *(v3 + 16);
  v5 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v6 = v3 + 40 * v2;
  while (1)
  {
    if (v4 == v2)
    {
      v17 = *(v5 + 16);

      return v17 > 2;
    }

    if (v2 >= *(v3 + 16))
    {
      break;
    }

    ++v2;
    v7 = (v6 + 40);
    v8 = *(v6 + 56);
    v6 += 40;
    if ((v8 & 1) == 0)
    {
      v9 = *(v7 - 1);
      v10 = *v7;
      v11 = v7[1];
      v12 = *(v7 + 17);
      v13 = v7[3];

      result = swift_isUniquelyReferenced_nonNull_native();
      v18 = v11;
      if ((result & 1) == 0)
      {
        result = sub_1D14A78F4(0, *(v5 + 16) + 1, 1);
      }

      v15 = *(v5 + 16);
      v14 = *(v5 + 24);
      if (v15 >= v14 >> 1)
      {
        result = sub_1D14A78F4((v14 > 1), v15 + 1, 1);
      }

      *(v5 + 16) = v15 + 1;
      v16 = v5 + 40 * v15;
      *(v16 + 32) = v9;
      *(v16 + 40) = v10;
      *(v16 + 48) = v18;
      *(v16 + 56) = 0;
      *(v16 + 57) = v12;
      *(v16 + 64) = v13;
      goto LABEL_2;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s19HealthVisualization21TimeBasedDistributionV0E5ValueV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 9);
  v6 = *(a1 + 16);
  v7 = *(a2 + 8);
  v8 = *(a2 + 9);
  v9 = *(a2 + 16);
  if (v4)
  {
    if (!v7)
    {
      return 0;
    }
  }

  else if ((v7 & 1) != 0 || *a1 != *a2)
  {
    return 0;
  }

  if (((v5 ^ v8) & 1) == 0)
  {
    return sub_1D1488AC8(v6, v9);
  }

  return 0;
}

BOOL _s19HealthVisualization21TimeBasedDistributionV6BucketV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    if (*(a1 + 24))
    {
      if (!*(a2 + 24))
      {
        return 0;
      }
    }

    else if ((*(a2 + 24) & 1) != 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }

    return ((*(a1 + 25) ^ *(a2 + 25)) & 1) == 0 && (sub_1D1488AC8(*(a1 + 32), *(a2 + 32)) & 1) != 0;
  }

  return result;
}

uint64_t sub_1D154B4D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (!v6)
  {
    goto LABEL_18;
  }

  v20 = MEMORY[0x1E69E7CC0];
  sub_1D14A79B4(0, v6, 0);
  result = v20;
  v8 = (a1 + 32);
  v9 = *(v20 + 16);
  v10 = v6;
  do
  {
    v11 = *v8;
    v21 = result;
    v12 = *(result + 24);
    if (v9 >= v12 >> 1)
    {
      v19 = *v8;
      sub_1D14A79B4((v12 > 1), v9 + 1, 1);
      v11 = v19;
      result = v21;
    }

    *(result + 16) = v9 + 1;
    *(result + 16 * v9 + 32) = v11;
    v8 = (v8 + 40);
    ++v9;
    --v10;
  }

  while (v10);
  if (a2 < a3)
  {
    v13 = 0;
    while (2)
    {
      if (v13 != *(result + 16))
      {
        v14 = (result + 32 + 16 * v13);
        v15 = *v14;
        v16 = v14[1];
        v17 = a2;
        while (a2 >= v15 && v17 < v16)
        {
          if (++v17 >= a3)
          {
            goto LABEL_16;
          }
        }

        ++v13;
        if (v17 < a3)
        {
          a2 = v17;
          if (v13 < v6)
          {
            continue;
          }
        }

LABEL_16:
        if (v17 == a3)
        {
          goto LABEL_19;
        }

        goto LABEL_17;
      }

      break;
    }

    __break(1u);
  }

  else
  {
LABEL_18:
    v13 = 0;
    if (a2 != a3)
    {
LABEL_17:

      return 0;
    }

LABEL_19:
    v18 = *(result + 16);

    return v13 == v18 - 1;
  }

  return result;
}

uint64_t sub_1D154B654(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TimeBasedDistribution();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D154B6B8()
{
  result = qword_1EC630FF0;
  if (!qword_1EC630FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC630FF0);
  }

  return result;
}

uint64_t sub_1D154B70C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1D14485DC(255, &qword_1EE05ADA8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D154B77C()
{
  result = qword_1EC631008;
  if (!qword_1EC631008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC631008);
  }

  return result;
}

uint64_t sub_1D154B7D0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1D148EE24();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D154B830()
{
  result = qword_1EC631018;
  if (!qword_1EC631018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC631018);
  }

  return result;
}

unint64_t sub_1D154B884()
{
  result = qword_1EC631030;
  if (!qword_1EC631030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC631030);
  }

  return result;
}

unint64_t sub_1D154B8D8()
{
  result = qword_1EC631040;
  if (!qword_1EC631040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC631040);
  }

  return result;
}

unint64_t sub_1D154B92C()
{
  result = qword_1EC631058;
  if (!qword_1EC631058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC631058);
  }

  return result;
}

void sub_1D154B980(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_1D154B9E8(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1D14485DC(255, &qword_1EE059780);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D154BA64()
{
  result = qword_1EC631078[0];
  if (!qword_1EC631078[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC631078);
  }

  return result;
}

uint64_t sub_1D154BAB8(uint64_t a1)
{
  v2 = type metadata accessor for TimeBasedDistribution();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D154BB6C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D154BBB4(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_1D154BC04(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D154BC4C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D154BD08()
{
  result = qword_1EC631180;
  if (!qword_1EC631180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC631180);
  }

  return result;
}

unint64_t sub_1D154BD60()
{
  result = qword_1EC631188;
  if (!qword_1EC631188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC631188);
  }

  return result;
}

unint64_t sub_1D154BDB8()
{
  result = qword_1EC631190;
  if (!qword_1EC631190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC631190);
  }

  return result;
}

unint64_t sub_1D154BE10()
{
  result = qword_1EC631198;
  if (!qword_1EC631198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC631198);
  }

  return result;
}

unint64_t sub_1D154BE68()
{
  result = qword_1EC6311A0;
  if (!qword_1EC6311A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6311A0);
  }

  return result;
}

unint64_t sub_1D154BEC0()
{
  result = qword_1EC6311A8;
  if (!qword_1EC6311A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6311A8);
  }

  return result;
}

unint64_t sub_1D154BF18()
{
  result = qword_1EC6311B0;
  if (!qword_1EC6311B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6311B0);
  }

  return result;
}

unint64_t sub_1D154BF70()
{
  result = qword_1EC6311B8;
  if (!qword_1EC6311B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6311B8);
  }

  return result;
}

unint64_t sub_1D154BFC8()
{
  result = qword_1EC6311C0;
  if (!qword_1EC6311C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6311C0);
  }

  return result;
}

uint64_t sub_1D154C01C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v4 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x78614D7369 && a2 == 0xE500000000000000 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x61546D6F74737563 && a2 == 0xEA00000000007367)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D15A4BA8();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1D154C134(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E656E6F706D6F63 && a2 == 0xE900000000000074;
  if (v4 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7374656B637562 && a2 == 0xE700000000000000 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6972745374696E75 && a2 == 0xEA0000000000676ELL)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D15A4BA8();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

void PluginFeedItemsConsuming<>.consumePluginFeedItemResults()()
{
  sub_1D154CBD4();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v70 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D14C6054();
  v78 = v4;
  v72 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v77 = (&v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  *&v7 = MEMORY[0x1EEE9AC00](v6).n128_u64[0];
  v75 = &v70 - v8;
  v71 = v0;
  v9 = [v0 dependencies];
  v80 = sub_1D14C8FE8();
  v10 = sub_1D15A40C8();

  if (v10 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D15A4708())
  {
    v12 = 0;
    v13 = v10 & 0xC000000000000001;
    v14 = v10 & 0xFFFFFFFFFFFFFF8;
    v15 = (v72 + 56);
    v76 = MEMORY[0x1E69E7CC0];
    v73 = (v72 + 48);
    v74 = v10 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v13)
      {
        v16 = MEMORY[0x1D388AB50](v12, v10);
      }

      else
      {
        if (v12 >= *(v14 + 16))
        {
          goto LABEL_20;
        }

        v16 = *(v10 + 8 * v12 + 32);
      }

      v17 = v16;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      v79 = (v12 + 1);
      v81[0] = v16;
      sub_1D1453368(0, &qword_1EE05B020);
      v18 = v17;
      if (swift_dynamicCast())
      {
        v19 = v13;
        v20 = i;
        v21 = v10;
        v22 = *(&v85 + 1);
        v23 = v86;
        __swift_project_boxed_opaque_existential_1(&v84, *(&v85 + 1));
        v24 = *(v23 + 8);
        v25 = v22;
        i = v20;
        v13 = v19;
        v26 = v23;
        v10 = v21;
        v14 = v74;
        v24(v25, v26);

        v27 = v78;
        (*v15)(v3, 0, 1, v78);
        __swift_destroy_boxed_opaque_existential_1(&v84);
        if ((*v73)(v3, 1, v27) != 1)
        {
          sub_1D154CC88(v3, v75);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v76 = sub_1D148C58C(0, v76[2] + 1, 1, v76);
          }

          v29 = v76[2];
          v28 = v76[3];
          if (v29 >= v28 >> 1)
          {
            v76 = sub_1D148C58C(v28 > 1, v29 + 1, 1, v76);
          }

          v30 = v75;
          v31 = v76;
          v76[2] = v29 + 1;
          sub_1D154CC88(v30, v31 + ((*(v72 + 80) + 32) & ~*(v72 + 80)) + *(v72 + 72) * v29);
          goto LABEL_6;
        }
      }

      else
      {

        v86 = 0;
        v84 = 0u;
        v85 = 0u;
        sub_1D1456590(&v84, &qword_1EE05B018, &qword_1EE05B020);
        (*v15)(v3, 1, 1, v78);
      }

      sub_1D154CC2C(v3);
LABEL_6:
      ++v12;
      if (v79 == i)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

  v76 = MEMORY[0x1E69E7CC0];
LABEL_23:

  v32 = [v71 dependencies];
  v33 = sub_1D15A40C8();

  if (v33 >> 62)
  {
LABEL_44:
    v34 = sub_1D15A4708();
    if (v34)
    {
LABEL_25:
      v35 = 0;
      v79 = MEMORY[0x1E69E7CC0];
      do
      {
        v36 = v35;
        while (1)
        {
          if ((v33 & 0xC000000000000001) != 0)
          {
            v37 = MEMORY[0x1D388AB50](v36, v33);
          }

          else
          {
            if (v36 >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v37 = *(v33 + 8 * v36 + 32);
          }

          v38 = v37;
          v35 = v36 + 1;
          if (__OFADD__(v36, 1))
          {
            __break(1u);
LABEL_43:
            __break(1u);
            goto LABEL_44;
          }

          v83 = v37;
          sub_1D1453368(0, &qword_1EE05AF80);
          v39 = v38;
          if (swift_dynamicCast())
          {
            break;
          }

          v86 = 0;
          v84 = 0u;
          v85 = 0u;
          sub_1D1456590(&v84, qword_1EE059A38, &qword_1EE05AF80);
          ++v36;
          if (v35 == v34)
          {
            goto LABEL_46;
          }
        }

        v41 = *(&v85 + 1);
        v40 = v86;
        __swift_project_boxed_opaque_existential_1(&v84, *(&v85 + 1));
        (*(v40 + 8))(v81, v41, v40);

        v43 = v81[0];
        v42 = v81[1];
        v44 = v81[2];
        LODWORD(v73) = v82;
        __swift_destroy_boxed_opaque_existential_1(&v84);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v74 = v44;
        v75 = v42;
        if (isUniquelyReferenced_nonNull_native)
        {
          v46 = v79;
        }

        else
        {
          v46 = sub_1D148C7BC(0, v79[2] + 1, 1, v79);
        }

        v48 = v46[2];
        v47 = v46[3];
        if (v48 >= v47 >> 1)
        {
          v46 = sub_1D148C7BC((v47 > 1), v48 + 1, 1, v46);
        }

        v46[2] = v48 + 1;
        v79 = v46;
        v49 = &v46[4 * v48];
        v50 = v74;
        v51 = v75;
        v49[4] = v43;
        v49[5] = v51;
        v49[6] = v50;
        *(v49 + 56) = v73;
      }

      while (v35 != v34);
      goto LABEL_46;
    }
  }

  else
  {
    v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v34)
    {
      goto LABEL_25;
    }
  }

  v79 = MEMORY[0x1E69E7CC0];
LABEL_46:

  v52 = v79[2];
  if (!v52)
  {
    v54 = MEMORY[0x1E69E7CC0];
LABEL_70:

    *&v84 = v76;
    sub_1D14C4AFC(v54);
    return;
  }

  v53 = v79 + 7;
  v54 = MEMORY[0x1E69E7CC0];
  v55 = v72;
  while (1)
  {
    v57 = *(v53 - 3);
    v56 = *(v53 - 2);
    v58 = *(v53 - 1);
    if (*v53)
    {
      v59 = v77;
      *v77 = v57;
      v59[1] = v56;
      v59[2] = v58;
      swift_storeEnumTagMultiPayload();
      sub_1D154CD88(v57, v56, v58, 1);
      sub_1D1487F88(v57, v56, v58);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v54 = sub_1D148C58C(0, v54[2] + 1, 1, v54);
      }

      v61 = v54[2];
      v60 = v54[3];
      if (v61 >= v60 >> 1)
      {
        v54 = sub_1D148C58C(v60 > 1, v61 + 1, 1, v54);
      }

      sub_1D154CCEC(v57, v56, v58, 1);
      v54[2] = v61 + 1;
      sub_1D154CC88(v77, v54 + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v61);
      goto LABEL_49;
    }

    v62 = *(v57 + 16);
    v63 = v54[2];
    v64 = v63 + v62;
    if (__OFADD__(v63, v62))
    {
      break;
    }

    v65 = swift_isUniquelyReferenced_nonNull_native();
    if (v65 && v64 <= v54[3] >> 1)
    {
      if (*(v57 + 16))
      {
        goto LABEL_65;
      }
    }

    else
    {
      if (v63 <= v64)
      {
        v66 = v63 + v62;
      }

      else
      {
        v66 = v63;
      }

      v54 = sub_1D148C58C(v65, v66, 1, v54);
      if (*(v57 + 16))
      {
LABEL_65:
        if ((v54[3] >> 1) - v54[2] < v62)
        {
          goto LABEL_73;
        }

        swift_arrayInitWithCopy();
        sub_1D154CCEC(v57, v56, v58, 0);
        if (v62)
        {
          v67 = v54[2];
          v68 = __OFADD__(v67, v62);
          v69 = v67 + v62;
          if (v68)
          {
            goto LABEL_74;
          }

          v54[2] = v69;
        }

        goto LABEL_49;
      }
    }

    sub_1D154CCEC(v57, v56, v58, 0);
    if (v62)
    {
      goto LABEL_72;
    }

LABEL_49:
    v53 += 32;
    if (!--v52)
    {
      goto LABEL_70;
    }
  }

  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
}

uint64_t (*sub_1D154CACC(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1D388AB50](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1D154CDA8;
  }

  __break(1u);
  return result;
}

void (*sub_1D154CB4C(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1D388AB50](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1D154CBCC;
  }

  __break(1u);
  return result;
}

void sub_1D154CBD4()
{
  if (!qword_1EE05ABA8)
  {
    sub_1D14C6054();
    v0 = sub_1D15A4608();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE05ABA8);
    }
  }
}

uint64_t sub_1D154CC2C(uint64_t a1)
{
  sub_1D154CBD4();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D154CC88(uint64_t a1, uint64_t a2)
{
  sub_1D14C6054();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1D154CCEC(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  if (a4)
  {
    sub_1D154CCF8(a1, a2, a3);
  }

  else
  {
  }
}

void sub_1D154CCF8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = a3 >> 61;
  if ((a3 >> 61) <= 2)
  {
    if (v4 > 2)
    {
      return;
    }

    goto LABEL_7;
  }

  if (v4 == 3)
  {
LABEL_7:

    return;
  }

  if (v4 != 4)
  {
    if (v4 != 5)
    {
      return;
    }

    goto LABEL_7;
  }
}

void sub_1D154CD88(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  if (a4)
  {
    sub_1D1487F88(a1, a2, a3);
  }

  else
  {
  }
}

uint64_t sub_1D154CF60@<X0>(uint64_t a1@<X8>)
{
  sub_1D154EBE4(0, &qword_1EE05A670, type metadata accessor for AXProjectionState, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v16 - v4;
  v6 = type metadata accessor for AXProjectionState(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v1 + OBJC_IVAR____TtC19HealthVisualization24HighlightCalendarDayView_model;
  v11 = type metadata accessor for HighlightCalendarDayViewModel(0);
  sub_1D154EA00(v10 + *(v11 + 52), v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1D154EA94(v5);
    v12 = sub_1D15A26A8();
    return (*(*(v12 - 8) + 56))(a1, 1, 1, v12);
  }

  else
  {
    sub_1D154EB20(v5, v9);
    v14 = sub_1D15A26A8();
    v15 = *(v14 - 8);
    (*(v15 + 16))(a1, v9, v14);
    sub_1D154EB84(v9, type metadata accessor for AXProjectionState);
    return (*(v15 + 56))(a1, 0, 1, v14);
  }
}

void sub_1D154D6B4()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR____TtC19HealthVisualization24HighlightCalendarDayView_model];
  v3 = v2[48];
  if ((v3 - 1) >= 4)
  {
    if (v3 != 5)
    {
      sub_1D15A4908();
      __break(1u);
      return;
    }
  }

  else
  {
    sub_1D14BB144(*(v2 + 3), *(v2 + 4), *(v2 + 5), v3);
  }

  v4 = sub_1D14C798C();
  v5 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  [v5 setTextAlignment_];
  v6 = sub_1D15A3EF8();

  [v5 setText_];

  [v5 setTextColor_];
  v7 = *&v1[OBJC_IVAR____TtC19HealthVisualization24HighlightCalendarDayView_dayLabel];
  *&v1[OBJC_IVAR____TtC19HealthVisualization24HighlightCalendarDayView_dayLabel] = v5;
  v8 = v5;

  [v1 addSubview_];
}

void sub_1D154D84C()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E6979398]) init];
  v2 = [objc_opt_self() clearColor];
  v3 = [v2 CGColor];

  [v1 setBackgroundColor_];
  [v1 setBorderWidth_];
  v4 = *&v0[OBJC_IVAR____TtC19HealthVisualization24HighlightCalendarDayView_todayIndicatorLayer];
  *&v0[OBJC_IVAR____TtC19HealthVisualization24HighlightCalendarDayView_todayIndicatorLayer] = v1;
  v5 = v1;

  v6 = [v0 layer];
  [v6 addSublayer_];
}

void sub_1D154D960(double a1)
{
  v2 = *&v1[OBJC_IVAR____TtC19HealthVisualization24HighlightCalendarDayView_todayIndicatorLayer];
  if (v2)
  {
    v3 = v1;
    v5 = objc_opt_self();
    v6 = v2;
    v7 = [v5 _currentTraitCollection];
    v8 = [v3 traitCollection];
    [v5 _setCurrentTraitCollection_];

    v9 = [objc_opt_self() labelColor];
    v10 = [v9 colorWithAlphaComponent_];

    v11 = [v10 CGColor];
    [v6 setBorderColor_];

    [v5 _setCurrentTraitCollection_];
    v12 = [v3 traitCollection];
    [v12 userInterfaceStyle];

    sub_1D15A3F38();
    v13 = objc_allocWithZone(MEMORY[0x1E6979378]);
    v14 = sub_1D15A3EF8();

    v15 = [v13 initWithType_];

    [v6 setCompositingFilter_];
  }
}

void sub_1D154DD8C()
{
  v6.receiver = v0;
  v6.super_class = type metadata accessor for HighlightCalendarDayView();
  objc_msgSendSuper2(&v6, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC19HealthVisualization24HighlightCalendarDayView_activityRingsView];
  if (v1)
  {
    v2 = v1;
    [v0 bounds];
    [v2 setFrame_];
  }

  v4 = *&v0[OBJC_IVAR____TtC19HealthVisualization24HighlightCalendarDayView_dayLabel];
  if (v4)
  {
    v5 = v4;
    [v0 bounds];
    [v5 setFrame_];
  }
}

uint64_t sub_1D154E020()
{
  ObjectType = swift_getObjectType();
  sub_1D154EBE4(0, &qword_1EE056280, sub_1D14BB22C, MEMORY[0x1E69E6F90]);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1D15ACDD0;
  v2 = sub_1D15A32B8();
  v3 = MEMORY[0x1E69DC2B0];
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  *(swift_allocObject() + 16) = ObjectType;
  sub_1D15A4548();
  swift_unknownObjectRelease();

  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D15ACDD0;
  v5 = sub_1D15A32A8();
  v6 = MEMORY[0x1E69DC0F8];
  *(v4 + 32) = v5;
  *(v4 + 40) = v6;
  sub_1D15A4548();
  swift_unknownObjectRelease();
}

uint64_t sub_1D154E190(char *a1)
{
  sub_1D15A4148();
  sub_1D15A4138();
  sub_1D15A4128();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = [a1 traitCollection];
  v3 = [v2 preferredContentSizeCategory];

  v4 = &a1[OBJC_IVAR____TtC19HealthVisualization24HighlightCalendarDayView_model];
  v5 = a1[OBJC_IVAR____TtC19HealthVisualization24HighlightCalendarDayView_model + 89];
  if (!a1[OBJC_IVAR____TtC19HealthVisualization24HighlightCalendarDayView_model + 48])
  {
    v16 = a1[OBJC_IVAR____TtC19HealthVisualization24HighlightCalendarDayView_model + 89];
    v6 = &v16;
    goto LABEL_7;
  }

  if (sub_1D15A44E8())
  {
    v17[0] = v5;
    v6 = v17;
LABEL_7:
    v7 = sub_1D154E870(v3, v6);

    v8 = v7 * 0.5;
    goto LABEL_9;
  }

  v8 = 8.0;
LABEL_9:
  v9 = v4[48];
  if (v9 > 2)
  {
    if (v9 == 3)
    {
      goto LABEL_16;
    }

    if (v9 != 4)
    {
      goto LABEL_19;
    }

    goto LABEL_15;
  }

  if (v4[48])
  {
    if (v9 == 1)
    {
LABEL_16:
      v10 = *&a1[OBJC_IVAR____TtC19HealthVisualization24HighlightCalendarDayView_dayLabel];
      if (v10)
      {
        v17[1] = v4[88];
        v11 = v10;
        v12 = HighlightCalendarDayViewModel.NumberSize.font.getter();
        [v11 setFont_];
      }

      goto LABEL_18;
    }

LABEL_15:
    [*&a1[OBJC_IVAR____TtC19HealthVisualization24HighlightCalendarDayView_todayIndicatorLayer] setCornerRadius_];
    goto LABEL_16;
  }

LABEL_18:
  v13 = sub_1D14C786C();
  [a1 setBackgroundColor_];

  v14 = [a1 layer];
  [v14 setCornerRadius_];

LABEL_19:
  [a1 invalidateIntrinsicContentSize];
}

id sub_1D154E45C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HighlightCalendarDayView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for HighlightCalendarDayView()
{
  result = qword_1EE05A0C8;
  if (!qword_1EE05A0C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D154E578()
{
  result = type metadata accessor for HighlightCalendarDayViewModel(319);
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D154E620()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E696C938]) initWithFrame:*(v0 + OBJC_IVAR____TtC19HealthVisualization24HighlightCalendarDayView_ringsRenderer) renderer:{0.0, 0.0, 0.0, 0.0}];
  v2 = (v0 + OBJC_IVAR____TtC19HealthVisualization24HighlightCalendarDayView_model);
  if (*(v0 + OBJC_IVAR____TtC19HealthVisualization24HighlightCalendarDayView_model + 48) || (v3 = v1) == 0)
  {
    result = sub_1D15A4908();
    __break(1u);
  }

  else
  {
    v4 = v2[3];
    v5 = v2[4];
    v6 = v2[5];
    [v1 setActivitySummary:v4 animated:1];
    v7 = [objc_opt_self() clearColor];
    [v3 _setActivityRingViewBackgroundColor_];

    sub_1D14BB18C(v4, v5, v6, 0);
    return v3;
  }

  return result;
}

uint64_t sub_1D154E7B0(uint64_t a1)
{
  sub_1D15A4148();
  sub_1D15A4138();
  sub_1D15A4128();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = *(a1 + OBJC_IVAR____TtC19HealthVisualization24HighlightCalendarDayView_model + 48);
  if (v2 == 4 || v2 == 2)
  {
    sub_1D154D960(*(a1 + OBJC_IVAR____TtC19HealthVisualization24HighlightCalendarDayView_model + 40));
  }
}

double sub_1D154E870(uint64_t a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1D15A44E8();
  if ((v2 & 1) == 0)
  {
    if (v3)
    {
      return 32.0;
    }

    v11 = sub_1D15A3F38();
    v13 = v12;
    if (v11 == sub_1D15A3F38() && v13 == v14)
    {
    }

    else
    {
      v16 = sub_1D15A4BA8();

      if ((v16 & 1) == 0)
      {
        if ((sub_1D15A44D8() & 1) == 0)
        {
          return 32.0;
        }

        return 34.0;
      }
    }

    return 33.0;
  }

  if (v3)
  {
    return 33.0;
  }

  v4 = sub_1D15A3F38();
  v6 = v5;
  if (v4 == sub_1D15A3F38() && v6 == v7)
  {

    return 34.0;
  }

  v9 = sub_1D15A4BA8();

  if (v9)
  {
    return 34.0;
  }

  if ((sub_1D15A44D8() & 1) == 0)
  {
    return 32.0;
  }

  return 35.0;
}

uint64_t sub_1D154EA00(uint64_t a1, uint64_t a2)
{
  sub_1D154EBE4(0, &qword_1EE05A670, type metadata accessor for AXProjectionState, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D154EA94(uint64_t a1)
{
  sub_1D154EBE4(0, &qword_1EE05A670, type metadata accessor for AXProjectionState, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D154EB20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AXProjectionState(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D154EB84(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D154EBE4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

char *sub_1D154EC48(uint64_t a1, void *a2)
{
  *&v2[OBJC_IVAR____TtC19HealthVisualization24HighlightCalendarDayView_dayLabel] = 0;
  *&v2[OBJC_IVAR____TtC19HealthVisualization24HighlightCalendarDayView_todayIndicatorLayer] = 0;
  *&v2[OBJC_IVAR____TtC19HealthVisualization24HighlightCalendarDayView_activityRingsView] = 0;
  sub_1D14BACF0(a1, &v2[OBJC_IVAR____TtC19HealthVisualization24HighlightCalendarDayView_model]);
  *&v2[OBJC_IVAR____TtC19HealthVisualization24HighlightCalendarDayView_ringsRenderer] = a2;
  v37.receiver = v2;
  v37.super_class = type metadata accessor for HighlightCalendarDayView();
  v5 = a2;
  v6 = objc_msgSendSuper2(&v37, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_1D154E020();
  v7 = [v6 traitCollection];
  v8 = [v7 preferredContentSizeCategory];

  v9 = *(a1 + 89);
  if (*(a1 + 48) && (sub_1D15A44E8() & 1) == 0)
  {

    v11 = 8.0;
  }

  else
  {
    LOBYTE(v36) = v9;
    v10 = sub_1D154E870(v8, &v36);

    v11 = v10 * 0.5;
  }

  v12 = *(a1 + 48);
  if (v12 <= 2)
  {
    if (*(a1 + 48))
    {
      if (v12 == 1)
      {
LABEL_13:
        sub_1D154D6B4();
        v18 = &v6[OBJC_IVAR____TtC19HealthVisualization24HighlightCalendarDayView_model];
        v19 = sub_1D14C786C();
        [v6 setBackgroundColor_];

        v20 = [v6 layer];
        [v20 setCornerRadius_];

        v21 = *&v6[OBJC_IVAR____TtC19HealthVisualization24HighlightCalendarDayView_dayLabel];
        if (v21)
        {
          LOBYTE(v36) = v18[88];
          v22 = v21;
          v23 = HighlightCalendarDayViewModel.NumberSize.font.getter();
          [v22 setFont_];
        }

        goto LABEL_20;
      }

      goto LABEL_15;
    }

    v13 = sub_1D154E620();
    v14 = *&v6[OBJC_IVAR____TtC19HealthVisualization24HighlightCalendarDayView_activityRingsView];
    *&v6[OBJC_IVAR____TtC19HealthVisualization24HighlightCalendarDayView_activityRingsView] = v13;
    v15 = v13;

    [v6 addSubview_];
    v16 = sub_1D14C786C();
    [v6 setBackgroundColor_];

    v17 = [v6 layer];
LABEL_19:
    v32 = v17;
    [v32 setCornerRadius_];

    goto LABEL_20;
  }

  if (v12 == 3)
  {
    goto LABEL_13;
  }

  if (v12 != 4)
  {
    sub_1D154D6B4();
    v31 = sub_1D14C786C();
    [v6 setBackgroundColor_];

    v17 = [v6 layer];
    goto LABEL_19;
  }

LABEL_15:
  v24 = *(a1 + 40);
  sub_1D154D84C();
  sub_1D154D6B4();
  v25 = &v6[OBJC_IVAR____TtC19HealthVisualization24HighlightCalendarDayView_model];
  v26 = sub_1D14C786C();
  [v6 setBackgroundColor_];

  v27 = [v6 layer];
  [v27 setCornerRadius_];

  v28 = *&v6[OBJC_IVAR____TtC19HealthVisualization24HighlightCalendarDayView_dayLabel];
  if (v28)
  {
    LOBYTE(v36) = v25[88];
    v29 = v28;
    v30 = HighlightCalendarDayViewModel.NumberSize.font.getter();
    [v29 setFont_];
  }

  [*&v6[OBJC_IVAR____TtC19HealthVisualization24HighlightCalendarDayView_todayIndicatorLayer] setCornerRadius_];
  sub_1D154D960(v24);
LABEL_20:
  type metadata accessor for UILayoutPriority(0);
  sub_1D14BB040();
  sub_1D15A3278();
  LODWORD(v33) = v36;
  [v6 setContentCompressionResistancePriority:1 forAxis:v33];
  sub_1D15A3278();
  LODWORD(v34) = v36;
  [v6 setContentCompressionResistancePriority:0 forAxis:v34];

  sub_1D154EB84(a1, type metadata accessor for HighlightCalendarDayViewModel);
  return v6;
}

uint64_t DiagramAxisOnly.__allocating_init(config:data:hbxViewControllerFactory:customMetricsFactory:)(unsigned int *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = swift_allocObject();
  DiagramAxisOnly.init(config:data:hbxViewControllerFactory:customMetricsFactory:)(a1, a2, a3, a4);
  return v8;
}

double sub_1D154F1E8()
{
  v1 = *(v0 + 40);
  v2 = 0.0;
  if ((*(v1 + 144) & 1) == 0)
  {
    v2 = *(v1 + 112);
  }

  sub_1D14567B4();
  if ((*(v1 + 64) & 0xFE00000000) != 0x200000000)
  {
    DiagramConfiguration.TextAttributes.toTextAttributes()();
    v3 = sub_1D15A3EF8();
    type metadata accessor for Key(0);
    sub_1D14587E0();
    v4 = sub_1D15A3E48();

    [v3 sizeWithAttributes_];
  }

  return v2;
}

uint64_t sub_1D154F378(CGContext *a1, uint64_t *a2, uint64_t a3, double a4, double a5)
{
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  v9 = a2[4];
  v10 = a2[5];
  v11 = a2[6];
  if (*(a3 + 34) == 1)
  {
    v16 = *a2;
    v17 = v6;
    v18 = v7;
    v19 = v8;
    v20 = v9;
    v21 = v10;
    v22 = v11;
    v12 = a1;
    v13 = a4;
    v14 = a5;
    sub_1D154F9D0(a1, &v16);
    a4 = v13;
    a1 = v12;
    a5 = v14;
  }

  v16 = v5;
  v17 = v6;
  v18 = v7;
  v19 = v8;
  v20 = v9;
  v21 = v10;
  v22 = v11;
  return sub_1D145CB10(a1, &v16, a4, a5);
}

void DiagramAxisOnly.init(config:data:hbxViewControllerFactory:customMetricsFactory:)(unsigned int *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v7 = *a1;
  v8 = *(a1 + 14);
  v9 = *(a1 + 15);
  v10 = *(a1 + 16);
  v11 = *(a1 + 17);
  v12 = *(a1 + 18);
  v13 = *(a1 + 6);
  v14 = *(a1 + 2) | (v13 << 16);
  v15 = v7 | (v14 << 32);
  v17 = a1 + 7;
  v16 = *(a1 + 7);
  v18 = *(v17 + 2);
  LODWORD(v17) = v17[6];
  v19 = v16 | ((v18 | (v17 << 16)) << 32);
  v20 = *(a2 + 32);
  v21 = *(a2 + 40);
  *(v4 + 16) = v7;
  *(v4 + 22) = v13;
  *(v4 + 20) = v14;
  *(v4 + 23) = v16;
  *(v4 + 29) = v17;
  *(v4 + 27) = v18;
  *(v4 + 30) = v8;
  *(v4 + 31) = v9;
  *(v4 + 32) = v10;
  *(v4 + 33) = v11;
  *(v4 + 34) = v12;
  v22 = qword_1D15B5760[v8];
  v23 = qword_1D15B5760[v9];
  v53 = qword_1D15B5760[v11];
  v24 = qword_1D15B5760[v10];
  v25 = *(a2 + 16);
  v66[0] = *a2;
  v66[1] = v25;
  v67 = v20;
  v68 = v21;
  v69 = DiagramData.diagramBounds(forceNonZeroSize:)(0);
  x = v69.origin.x;
  y = v69.origin.y;
  width = v69.size.width;
  height = v69.size.height;

  v70.origin.x = x;
  v70.origin.y = y;
  v70.size.width = width;
  v70.size.height = height;
  if (CGRectGetWidth(v70) <= 0.0 || (v71.origin.x = x, v71.origin.y = y, v71.size.width = width, v71.size.height = height, CGRectGetHeight(v71) <= 0.0))
  {
    if (width <= 0.0)
    {
      width = 1.0;
      v30 = 1.0;
      if (height > 0.0)
      {
        v30 = height;
        width = height / 1000000.0;
      }
    }

    else
    {
      v30 = width / 1000000.0;
    }
  }

  else
  {
    v30 = height;
  }

  sub_1D1527B78(a4, v66);
  type metadata accessor for DiagramAxis();
  v31 = swift_allocObject();
  *(v31 + 16) = 0u;
  *(v31 + 32) = 0u;
  *(v31 + 48) = 0u;
  *(v31 + 64) = v15 | (v19 << 56);
  *(v31 + 76) = HIDWORD(v19) >> 8;
  *(v31 + 72) = v19 >> 8;
  *(v31 + 80) = x;
  *(v31 + 88) = y;
  *(v31 + 96) = width;
  *(v31 + 104) = v30;
  *(v31 + 112) = v23;
  *(v31 + 120) = v22;
  *(v31 + 128) = v23;
  *(v31 + 136) = v22;
  *(v31 + 144) = 0;
  *(v31 + 152) = v53;
  *(v31 + 160) = v24;
  *(v31 + 168) = 0;
  sub_1D1527B78(v66, &v60);
  if (v61)
  {
    sub_1D1450E94(&v60, v63);
    v32 = a3;
  }

  else
  {
    v33 = type metadata accessor for DiagramAxisMetricsCalculatorFactory();
    v34 = swift_allocObject();
    v32 = a3;
    *(v34 + 16) = a3;
    v64 = v33;
    v65 = &protocol witness table for DiagramAxisMetricsCalculatorFactory;
    v63[0] = v34;
    v35 = a3;
  }

  if ((v15 & 0xFF00000000) != 0x200000000)
  {
    v36 = v64;
    v37 = v65;
    __swift_project_boxed_opaque_existential_1(v63, v64);
    v56 = v15;
    v55 = 0;
    (v37[1])(&v57, &v56, &v55, v36, v37);
    if (v59)
    {
      sub_1D1450E94(&v57, &v60);
      v38 = v61;
      v39 = v62;
      __swift_project_boxed_opaque_existential_1(&v60, v61);
      v72.origin.x = x;
      v72.origin.y = y;
      v72.size.width = width;
      v72.size.height = v30;
      MinX = CGRectGetMinX(v72);
      v73.origin.x = x;
      v73.origin.y = y;
      v73.size.width = width;
      v73.size.height = v30;
      MaxX = CGRectGetMaxX(v73);
      if (MinX > MaxX)
      {
        __break(1u);
        goto LABEL_25;
      }

      (*(v39 + 8))(&v57, 0, v38, v39, MinX, MaxX);
      v42 = v58;
      *(v31 + 16) = v57;
      *(v31 + 32) = v42;

      __swift_destroy_boxed_opaque_existential_1(&v60);
    }

    else
    {
      sub_1D1456590(&v57, &qword_1EC6301C8, qword_1EE059CC8);
    }
  }

  if ((v19 & 0xFF00000000) == 0x200000000)
  {

    sub_1D1456590(a4, &qword_1EE0597F0, qword_1EE0597F8);
    v43 = v66;
    v44 = &qword_1EE0597F0;
    v45 = qword_1EE0597F8;
LABEL_22:
    sub_1D1456590(v43, v44, v45);
    goto LABEL_23;
  }

  v46 = v64;
  v47 = v65;
  __swift_project_boxed_opaque_existential_1(v63, v64);
  v56 = v19;
  v55 = 1;
  (v47[1])(&v57, &v56, &v55, v46, v47);
  if (!v59)
  {

    sub_1D1456590(a4, &qword_1EE0597F0, qword_1EE0597F8);
    sub_1D1456590(v66, &qword_1EE0597F0, qword_1EE0597F8);
    v44 = &qword_1EC6301C8;
    v45 = qword_1EE059CC8;
    v43 = &v57;
    goto LABEL_22;
  }

  sub_1D1450E94(&v57, &v60);
  v48 = v61;
  v49 = v62;
  __swift_project_boxed_opaque_existential_1(&v60, v61);
  v74.origin.x = x;
  v74.origin.y = y;
  v74.size.width = width;
  v74.size.height = v30;
  MinY = CGRectGetMinY(v74);
  v75.origin.x = x;
  v75.origin.y = y;
  v75.size.width = width;
  v75.size.height = v30;
  MaxY = CGRectGetMaxY(v75);
  if (MinY <= MaxY)
  {
    (*(v49 + 8))(&v57, 0, v48, v49, MinY, MaxY);

    sub_1D1456590(a4, &qword_1EE0597F0, qword_1EE0597F8);
    sub_1D1456590(v66, &qword_1EE0597F0, qword_1EE0597F8);
    v52 = v58;
    *(v31 + 40) = v57;
    *(v31 + 56) = v52;

    __swift_destroy_boxed_opaque_existential_1(&v60);
LABEL_23:
    __swift_destroy_boxed_opaque_existential_1(v63);
    *(v5 + 40) = v31;
    return;
  }

LABEL_25:
  __break(1u);
}

void sub_1D154F9D0(CGContext *a1, double *a2)
{
  v3 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[5];
  v23 = a2[4];
  v24 = a2[6];
  v7 = objc_opt_self();
  v8 = [v7 blackColor];
  v9 = [v8 CGColor];

  v10 = sub_1D145664C();
  v12 = v11;
  v14 = v13;
  v21 = v13;
  v22 = v15;
  v16 = v15;
  CGContextSetFillColorWithColor(a1, v9);
  v25.a = v3;
  v25.b = v4;
  v25.c = v5;
  v25.d = v23;
  v25.tx = v6;
  v25.ty = v24;
  v28.origin.x = v10;
  v28.origin.y = v12;
  v28.size.width = v14;
  v28.size.height = v16;
  v29 = CGRectApplyAffineTransform(v28, &v25);
  CGContextFillRect(a1, v29);
  v25.a = v3;
  v25.b = v4;
  v25.c = v5;
  v25.d = v23;
  v25.tx = v6;
  v25.ty = v24;
  v26.x = v10;
  v26.y = v12;
  CGPointApplyAffineTransform(v26, &v25);
  v27.x = v10 + v21;
  v25.a = v3;
  v25.b = v4;
  v27.y = v12 + v22;
  v25.c = v5;
  v25.d = v23;
  v25.tx = v6;
  v25.ty = v24;
  CGPointApplyAffineTransform(v27, &v25);
  v17 = [v7 whiteColor];
  v18 = [v17 CGColor];

  sub_1D15A4298();
  sub_1D15A42A8();
  sub_1D15A4298();
  sub_1D15A42A8();
  sub_1D15A4298();
  sub_1D15A42A8();
  sub_1D15A4298();
  sub_1D15A42A8();
  CGContextSetStrokeColorWithColor(a1, v18);
  CGContextStrokePath(a1);

  v19 = [v7 whiteColor];
  v20 = [v19 CGColor];

  sub_1D15A4298();
  sub_1D15A42A8();
  sub_1D15A4298();
  sub_1D15A42A8();
  sub_1D15A4298();
  sub_1D15A42A8();
  sub_1D15A4298();
  sub_1D15A42A8();
  CGContextSetStrokeColorWithColor(a1, v20);
  CGContextStrokePath(a1);
}

uint64_t DiagramAxisOnly.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

double sub_1D154FD3C()
{
  v1 = *(*v0 + 40);
  v2 = 0.0;
  if ((*(v1 + 144) & 1) == 0)
  {
    v2 = *(v1 + 112);
  }

  sub_1D14567B4();
  sub_1D1457AFC();
  return v2;
}

uint64_t _s19HealthVisualization23LocalizationReplacementO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  if (!*(a1 + 24))
  {
    if (*(a2 + 24))
    {
      goto LABEL_20;
    }

    v17 = *a1;
    if (v3 != v6 || v2 != v7)
    {
      v12 = sub_1D15A4BA8();
      sub_1D14827E4(v6, v7, v8, 0);
      sub_1D14827E4(v3, v2, v4, 0);
      sub_1D1482804(v3, v2, v4, 0);
      v13 = v6;
      v14 = v7;
      v15 = v8;
      v16 = 0;
      goto LABEL_27;
    }

    sub_1D14827E4(*&v17, v2, v8, 0);
    sub_1D14827E4(v3, v2, v4, 0);
    sub_1D1482804(v3, v2, v4, 0);
    v19 = v3;
    v20 = v2;
    v21 = v8;
    v22 = 0;
LABEL_24:
    sub_1D1482804(v19, v20, v21, v22);
    return 1;
  }

  if (v5 != 1)
  {
    if (v9 != 2)
    {
      goto LABEL_20;
    }

    if (*&v3 != *&v6)
    {
      sub_1D14827E4(*a2, *(a2 + 8), v8, 2u);
      sub_1D14827E4(v3, v2, v4, 2u);
      sub_1D1482804(v3, v2, v4, 2u);
      v23 = v6;
      v24 = v7;
      v25 = v8;
      v26 = 2;
      goto LABEL_21;
    }

    if (v2 != v7 || v4 != v8)
    {
      v12 = sub_1D15A4BA8();
      sub_1D14827E4(v6, v7, v8, 2u);
      sub_1D14827E4(v3, v2, v4, 2u);
      sub_1D1482804(v3, v2, v4, 2u);
      v13 = v6;
      v14 = v7;
      v15 = v8;
      v16 = 2;
      goto LABEL_27;
    }

    sub_1D14827E4(*a2, v2, v4, 2u);
    sub_1D14827E4(v3, v2, v4, 2u);
    sub_1D1482804(v3, v2, v4, 2u);
    v19 = v6;
    v20 = v2;
    v21 = v4;
    v22 = 2;
    goto LABEL_24;
  }

  if (v9 != 1)
  {
LABEL_20:
    sub_1D14827E4(*a2, *(a2 + 8), v8, v9);
    sub_1D14827E4(v3, v2, v4, v5);
    sub_1D1482804(v3, v2, v4, v5);
    v23 = v6;
    v24 = v7;
    v25 = v8;
    v26 = v9;
LABEL_21:
    sub_1D1482804(v23, v24, v25, v26);
    return 0;
  }

  v10 = *a1;
  if (v3 == v6 && v2 == v7)
  {
    sub_1D14827E4(*&v10, v2, v8, 1u);
    sub_1D14827E4(v3, v2, v4, 1u);
    sub_1D1482804(v3, v2, v4, 1u);
    v19 = v3;
    v20 = v2;
    v21 = v8;
    v22 = 1;
    goto LABEL_24;
  }

  v12 = sub_1D15A4BA8();
  sub_1D14827E4(v6, v7, v8, 1u);
  sub_1D14827E4(v3, v2, v4, 1u);
  sub_1D1482804(v3, v2, v4, 1u);
  v13 = v6;
  v14 = v7;
  v15 = v8;
  v16 = 1;
LABEL_27:
  sub_1D1482804(v13, v14, v15, v16);
  return v12 & 1;
}

uint64_t sub_1D1550240(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 25))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 24);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D1550288(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t StatisticsInterval.dateComponents.getter@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  if (a1 <= 1u)
  {
    if (a1)
    {
      if (qword_1EE05B410 != -1)
      {
        swift_once();
      }

      v3 = qword_1EE05B418;
    }

    else
    {
      if (qword_1EE059550 != -1)
      {
        swift_once();
      }

      v3 = qword_1EE059558;
    }
  }

  else if (a1 == 2)
  {
    if (qword_1EE059530 != -1)
    {
      swift_once();
    }

    v3 = qword_1EE059538;
  }

  else if (a1 == 3)
  {
    if (qword_1EE0594F0 != -1)
    {
      swift_once();
    }

    v3 = qword_1EE0594F8;
  }

  else
  {
    if (qword_1EE059510 != -1)
    {
      swift_once();
    }

    v3 = qword_1EE059518;
  }

  v4 = sub_1D15A23A8();
  v5 = __swift_project_value_buffer(v4, v3);
  v6 = *(*(v4 - 8) + 16);

  return v6(a2, v5, v4);
}

uint64_t StatisticsInterval.calendarComponent.getter@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_1D15A2838();
  v5 = *(*(v4 - 8) + 104);
  v6 = **(&unk_1E83E6D10 + a1);

  return v5(a2, v6, v4);
}

uint64_t StatisticsInterval.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x72756F48656E6FLL;
  v2 = 0x6B656557656E6FLL;
  v3 = 0x68746E6F4D656E6FLL;
  if (a1 != 3)
  {
    v3 = 0x72616559656E6FLL;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 0x796144656E6FLL;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D15505D0()
{
  sub_1D15A4C88();
  sub_1D15A3F88();

  return sub_1D15A4CB8();
}

uint64_t sub_1D15506B0()
{
  sub_1D15A3F88();
}

uint64_t sub_1D155077C()
{
  sub_1D15A4C88();
  sub_1D15A3F88();

  return sub_1D15A4CB8();
}

uint64_t sub_1D1550858@<X0>(_BYTE *a1@<X8>)
{
  result = _s19HealthVisualization18StatisticsIntervalO8rawValueACSgSS_tcfC_0();
  *a1 = result;
  return result;
}

void sub_1D1550888(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x72756F48656E6FLL;
  v5 = 0xE700000000000000;
  v6 = 0x6B656557656E6FLL;
  v7 = 0xE800000000000000;
  v8 = 0x68746E6F4D656E6FLL;
  if (v2 != 3)
  {
    v8 = 0x72616559656E6FLL;
    v7 = 0xE700000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x796144656E6FLL;
    v3 = 0xE600000000000000;
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

uint64_t sub_1D15509E4(_BYTE *a1, _BYTE *a2)
{
  v2 = 0x72756F48656E6FLL;
  v3 = *a1;
  v4 = 0xE700000000000000;
  v5 = *a2;
  v6 = 0xE700000000000000;
  v7 = 0x6B656557656E6FLL;
  v8 = 0xE800000000000000;
  v9 = 0x68746E6F4D656E6FLL;
  if (v3 != 3)
  {
    v9 = 0x72616559656E6FLL;
    v8 = 0xE700000000000000;
  }

  if (v3 != 2)
  {
    v7 = v9;
    v6 = v8;
  }

  v10 = 0x796144656E6FLL;
  if (*a1)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v10 = 0x72756F48656E6FLL;
  }

  if (*a1 <= 1u)
  {
    v11 = v10;
  }

  else
  {
    v11 = v7;
  }

  if (v3 <= 1)
  {
    v12 = v4;
  }

  else
  {
    v12 = v6;
  }

  v13 = 0xE700000000000000;
  v14 = 0xE700000000000000;
  v15 = 0x6B656557656E6FLL;
  v16 = 0xE800000000000000;
  v17 = 0x68746E6F4D656E6FLL;
  if (v5 != 3)
  {
    v17 = 0x72616559656E6FLL;
    v16 = 0xE700000000000000;
  }

  if (v5 != 2)
  {
    v15 = v17;
    v14 = v16;
  }

  if (*a2)
  {
    v2 = 0x796144656E6FLL;
    v13 = 0xE600000000000000;
  }

  if (*a2 <= 1u)
  {
    v18 = v2;
  }

  else
  {
    v18 = v15;
  }

  if (*a2 <= 1u)
  {
    v19 = v13;
  }

  else
  {
    v19 = v14;
  }

  if (v11 == v18 && v12 == v19)
  {
    v20 = 1;
  }

  else
  {
    v20 = sub_1D15A4BA8();
  }

  return v20 & 1;
}

id StatisticsInterval.unit.getter(unsigned __int8 a1)
{
  if (a1 <= 1u)
  {
    if (a1)
    {
      v2 = [objc_opt_self() dayUnit];
    }

    else
    {
      v2 = [objc_opt_self() hourUnit];
    }

    return v2;
  }

  else
  {
    v1 = sub_1D15A3EF8();
    v3 = [objc_opt_self() unitFromString_];

    return v3;
  }
}

uint64_t StatisticsInterval.feedItemTimeScope.getter@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_1D15A2C08();
  v5 = *(*(v4 - 8) + 104);
  v6 = **(&unk_1E83E6D38 + a1);

  return v5(a2, v6, v4);
}

uint64_t StatisticsInterval.anchorDate.getter@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (result > 2u)
  {
    goto LABEL_5;
  }

  if (result == 1)
  {
    *a2 = 0;
    return result;
  }

  if (result == 2)
  {
LABEL_5:
    *a2 = result;
  }

  else
  {
    result = sub_1D15A4908();
    __break(1u);
  }

  return result;
}

uint64_t _s19HealthVisualization18StatisticsIntervalO8rawValueACSgSS_tcfC_0()
{
  v0 = sub_1D15A49B8();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1D1550DF0()
{
  result = qword_1EE05B510;
  if (!qword_1EE05B510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05B510);
  }

  return result;
}

unint64_t sub_1D1550E48()
{
  result = qword_1EC6311C8;
  if (!qword_1EC6311C8)
  {
    sub_1D1550EA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6311C8);
  }

  return result;
}

void sub_1D1550EA0()
{
  if (!qword_1EC6311D0)
  {
    v0 = sub_1D15A4118();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC6311D0);
    }
  }
}

unint64_t sub_1D1550F00()
{
  result = qword_1EE05B508;
  if (!qword_1EE05B508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05B508);
  }

  return result;
}

id HKWorkout.makeEnergyBurnedAttributedText(healthStore:unitPreferenceController:valueFont:unitFont:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  sub_1D15013A8();
  v9 = *MEMORY[0x1E696BC38];
  v10 = MEMORY[0x1D388A6C0]();
  result = [a1 displayTypeController];
  if (result)
  {
    v12 = result;
    v13 = [result displayTypeForObjectType_];

    if (v13)
    {
      v14 = v13;
      v15 = [a2 unitForDisplayType_];
      if (v15)
      {
        v16 = v15;
        v17 = MEMORY[0x1D388A6C0](v9);
        v18 = [v4 statisticsForType_];

        if (v18)
        {
          v19 = [v18 sumQuantity];

          if (v19)
          {
            [v19 doubleValueForUnit_];

            v20 = [v14 hk:v16 valueFormatterForUnit:?];
            v21 = sub_1D15A29A8();
            v22 = [v20 attributedStringFromValue:v21 displayType:v14 unitController:a2 valueFont:a3 unitFont:a4 formatForChart:1];

            return v22;
          }
        }
      }

      else
      {
      }
    }

    else
    {
    }

    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id HKWorkout.makeDistanceAttributedText(healthStore:unitPreferenceController:valueFont:unitFont:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = [v4 workoutActivityType];
  v11 = v10 - 24;
  if ((v10 - 24) > 0x2F)
  {
    goto LABEL_8;
  }

  if (((1 << v11) & 0x10002001) != 0)
  {
    v12 = MEMORY[0x1E696BCF8];
    goto LABEL_10;
  }

  if (((1 << v11) & 0xC00000000000) != 0)
  {
    v12 = MEMORY[0x1E696BD00];
    goto LABEL_10;
  }

  if (v10 == 46)
  {
    v12 = MEMORY[0x1E696BCF0];
  }

  else
  {
LABEL_8:
    v12 = MEMORY[0x1E696BCC8];
    if (v10 != 13)
    {
      v12 = MEMORY[0x1E696BCF8];
    }
  }

LABEL_10:
  v13 = *v12;
  sub_1D15013A8();
  v14 = MEMORY[0x1D388A6C0](v13);
  result = [a1 displayTypeController];
  if (result)
  {
    v16 = result;
    v17 = [result displayTypeForObjectType_];

    if (v17)
    {
      v18 = v17;
      v19 = [a2 unitForDisplayType_];
      if (v19)
      {
        v20 = v19;
        [v5 _totalDistanceIncludingAllTypesForUnit_];
        if (v21 > 2.22044605e-16)
        {
          v22 = [v18 hk:v20 valueFormatterForUnit:?];

          v23 = sub_1D15A29A8();
          v24 = [v22 attributedStringFromValue:v23 displayType:v18 unitController:a2 valueFont:a3 unitFont:a4 formatForChart:1];

          return v24;
        }
      }

      else
      {
      }
    }

    else
    {
    }

    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

__C::HKQuantityTypeIdentifier __swiftcall HKWorkout.relevantDistanceIdentifier()()
{
  v1 = [v0 workoutActivityType];
  v2 = MEMORY[0x1E696BCF8];
  if (v1 == 13)
  {
    v2 = MEMORY[0x1E696BCC8];
  }

  if (v1 == 46)
  {
    v2 = MEMORY[0x1E696BCF0];
  }

  if ((v1 - 70) < 2)
  {
    v2 = MEMORY[0x1E696BD00];
  }

  v3 = *v2;

  return v3;
}

HKUnit __swiftcall HKWorkout.preferredDistanceUnit(healthStore:)(HKHealthStore healthStore)
{
  v2 = [(objc_class *)healthStore.super.isa viewControllerFactory];
  v3 = [v1 workoutActivityType];
  v4 = v3 - 24;
  if ((v3 - 24) <= 0x2F)
  {
    if (((1 << v4) & 0x10002001) != 0)
    {
      v5 = MEMORY[0x1E696BCF8];
      goto LABEL_10;
    }

    if (((1 << v4) & 0xC00000000000) != 0)
    {
      v5 = MEMORY[0x1E696BD00];
      goto LABEL_10;
    }

    if (v3 == 46)
    {
      v5 = MEMORY[0x1E696BCF0];
      goto LABEL_10;
    }
  }

  v5 = MEMORY[0x1E696BCC8];
  if (v3 != 13)
  {
    v5 = MEMORY[0x1E696BCF8];
  }

LABEL_10:
  v6 = *v5;
  sub_1D15013A8();
  v7 = MEMORY[0x1D388A6C0](v6);
  v8 = [v2 preferredUnitForType_];

  return v8;
}

id HKWorkout.makeDurationAttributedText(healthStore:unitPreferenceController:valueFont:unitFont:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = [objc_opt_self() hourUnit];
  result = [a1 displayTypeController];
  if (result)
  {
    v12 = result;
    v13 = [v5 sampleType];
    v14 = [v12 displayTypeForObjectType_];

    if (v14)
    {
      v15 = [v14 hk:v10 valueFormatterForUnit:?];
      [v5 duration];
      v16 = sub_1D15A29A8();
      v17 = [v15 attributedStringFromValue:v16 displayType:v14 unitController:a2 valueFont:a3 unitFont:a4 formatForChart:1];
    }

    else
    {

      return 0;
    }

    return v17;
  }

  else
  {
    __break(1u);
  }

  return result;
}

HealthVisualization::CorrelatedStatisticsQueryConfiguration __swiftcall CorrelatedStatisticsQueryConfiguration.init(correlatedTypeIdentifiers:statisticsQueryConfig:)(Swift::OpaquePointer correlatedTypeIdentifiers, HealthVisualization::StatisticsQueryConfiguration statisticsQueryConfig)
{
  v3 = **&statisticsQueryConfig.dateRange;
  v4 = *(*&statisticsQueryConfig.dateRange + 8);
  v5 = *(*&statisticsQueryConfig.dateRange + 16);
  *v2 = correlatedTypeIdentifiers;
  *(v2 + 8) = v3;
  *(v2 + 16) = v4;
  *(v2 + 24) = v5;
  *&result.statisticsQueryConfig.anchorDate = *&statisticsQueryConfig.anchorDate;
  result.statisticsQueryConfig.statisticsOptions._rawValue = statisticsQueryConfig.statisticsOptions._rawValue;
  result.statisticsQueryConfig.dateRange = statisticsQueryConfig.dateRange;
  result.correlatedTypeIdentifiers = correlatedTypeIdentifiers;
  return result;
}

uint64_t CorrelatedStatisticsQueryConfiguration.statisticsQueryConfig.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
}

unint64_t sub_1D15516E4()
{
  if (*v0)
  {
    return 0xD000000000000015;
  }

  else
  {
    return 0xD000000000000019;
  }
}

uint64_t sub_1D1551720@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0xD000000000000019 && 0x80000001D15C1C00 == a2;
  if (v6 || (sub_1D15A4BA8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D15C1C20 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D15A4BA8();

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

uint64_t sub_1D1551800(uint64_t a1)
{
  v2 = sub_1D1551F74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D155183C(uint64_t a1)
{
  v2 = sub_1D1551F74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CorrelatedStatisticsQueryConfiguration.encode(to:)(void *a1)
{
  sub_1D1551FC8(0, &qword_1EE056300, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - v7;
  v9 = *v1;
  v20 = *(v1 + 8);
  v15 = v1[2];
  v10 = *(v1 + 24);
  v13 = *(v1 + 25);
  v14 = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1551F74();

  sub_1D15A4CE8();
  v16 = v9;
  v21 = 0;
  sub_1D14C6D98();
  sub_1D155202C(&qword_1EE056818);
  sub_1D15A4B38();
  if (!v2)
  {

    LOBYTE(v16) = v20;
    v17 = v15;
    v18 = v14;
    v19 = v13;
    v21 = 1;
    sub_1D150C814();

    sub_1D15A4B38();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t CorrelatedStatisticsQueryConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D1551FC8(0, &qword_1EE05AC48, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1551F74();
  sub_1D15A4CD8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_1D14C6D98();
  v19 = 0;
  sub_1D155202C(&qword_1EE05ADA0);
  sub_1D15A4A78();
  v10 = v16;
  v19 = 1;
  sub_1D150CBC0();
  sub_1D15A4A78();
  (*(v7 + 8))(v9, v6);
  v11 = v16;
  v12 = v17;
  v13 = v18;
  *a2 = v10;
  *(a2 + 8) = v11;
  *(a2 + 16) = v12;
  *(a2 + 24) = v13;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void CorrelatedStatisticsQueryConfiguration.correlatedQuantityTypes.getter()
{
  v1 = 0;
  v2 = *v0;
  v3 = *(*v0 + 16);
  v4 = *v0 + 40;
  v10 = v4;
  v11 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v5 = v4 + 16 * v1;
  while (v3 != v1)
  {
    if (v1 >= *(v2 + 16))
    {
      __break(1u);
      return;
    }

    ++v1;
    v6 = v5 + 16;
    sub_1D15013A8();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

    v8 = sub_1D15A3EF8();
    v9 = [ObjCClassFromMetadata quantityTypeForIdentifier_];

    v5 = v6;
    if (v9)
    {
      MEMORY[0x1D388A400]();
      if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D15A40E8();
      }

      sub_1D15A4108();
      v4 = v10;
      goto LABEL_2;
    }
  }
}

uint64_t _s19HealthVisualization38CorrelatedStatisticsQueryConfigurationV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 25);
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 25);
  if (sub_1D1488AC8(*a1, *a2))
  {

    if (sub_1D1477464(v2, v6) & 1) != 0 && (sub_1D1488F9C(v3, v7) & 1) != 0 && (sub_1D1477670(v4, v8))
    {
      v10 = sub_1D147783C(v5, v9);

      if (v10)
      {
        return 1;
      }
    }

    else
    {
    }
  }

  return 0;
}

unint64_t sub_1D1551F74()
{
  result = qword_1EE05AE80;
  if (!qword_1EE05AE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05AE80);
  }

  return result;
}

void sub_1D1551FC8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D1551F74();
    v7 = a3(a1, &type metadata for CorrelatedStatisticsQueryConfiguration.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D155202C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1D14C6D98();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 __swift_memcpy26_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 10) = *(a2 + 10);
  *a1 = result;
  return result;
}

uint64_t sub_1D15520A0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 26))
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

uint64_t sub_1D15520E8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 26) = 1;
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

    *(result + 26) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D1552150()
{
  result = qword_1EC6311D8;
  if (!qword_1EC6311D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6311D8);
  }

  return result;
}

unint64_t sub_1D15521A8()
{
  result = qword_1EE05AE70;
  if (!qword_1EE05AE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05AE70);
  }

  return result;
}

unint64_t sub_1D1552200()
{
  result = qword_1EE05AE78;
  if (!qword_1EE05AE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05AE78);
  }

  return result;
}

uint64_t sub_1D155225C(uint64_t a1)
{
  v2 = sub_1D155243C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1552298(uint64_t a1)
{
  v2 = sub_1D155243C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ActivitySummaryQueryConfiguration.encode(to:)(void *a1)
{
  sub_1D15523E0();
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D155243C();
  sub_1D15A4CE8();
  return (*(v4 + 8))(v6, v3);
}

void sub_1D15523E0()
{
  if (!qword_1EC6311E0)
  {
    sub_1D155243C();
    v0 = sub_1D15A4B48();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC6311E0);
    }
  }
}

unint64_t sub_1D155243C()
{
  result = qword_1EC6311E8;
  if (!qword_1EC6311E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6311E8);
  }

  return result;
}

uint64_t sub_1D15524B8(void *a1)
{
  sub_1D15523E0();
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D155243C();
  sub_1D15A4CE8();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1D15525E8()
{
  result = qword_1EC6311F0;
  if (!qword_1EC6311F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6311F0);
  }

  return result;
}

unint64_t sub_1D1552640()
{
  result = qword_1EC6311F8;
  if (!qword_1EC6311F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6311F8);
  }

  return result;
}

uint64_t CorrelatedStatisticsCollectionQueryOperation.result.getter()
{

  sub_1D15A2D28();

  return v1;
}

uint64_t sub_1D15526E4@<X0>(uint64_t a1@<X8>)
{

  sub_1D15A2D28();

  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_1D1552744()
{

  sub_1D15A2D38();
}

id CorrelatedStatisticsCollectionQueryOperation.__allocating_init(correlationType:correlatedQuantityTypes:configuration:configurationOverrides:name:queryQualityOfService:healthStore:environment:resultHandler:)(void *a1, uint64_t a2, char *a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, void *a8, char a9, uint64_t a10, uint64_t a11)
{
  v12 = v11;
  v17 = objc_allocWithZone(v12);
  v34 = *a3;
  v33 = *(a3 + 1);
  v32 = *(a3 + 8);
  v18 = qword_1EE057590;
  sub_1D1487B04();
  swift_allocError();
  *v19 = 0;
  v41 = 1;
  sub_1D1554744(0, &qword_1EE059410, sub_1D1552D9C, MEMORY[0x1E69A3DC0]);
  swift_allocObject();
  *&v17[v18] = sub_1D15A2D68();
  v20 = qword_1EE068148;
  v40 = sub_1D159C040(MEMORY[0x1E69E7CC0]);
  sub_1D15546D0();
  swift_allocObject();
  *&v17[v20] = sub_1D15A2D68();
  v21 = &v17[qword_1EE068130];
  *v21 = 0;
  v21[1] = 0;
  v22 = qword_1EE0575A0;
  v23 = [objc_allocWithZone(MEMORY[0x1E696ADC8]) init];
  [v23 setMaxConcurrentOperationCount_];
  [v23 setSuspended_];
  *&v17[v22] = v23;
  *&v17[qword_1EE057598] = a1;
  *&v17[qword_1EE057588] = a2;
  v24 = &v17[qword_1EE0575A8];
  *v24 = v34;
  *(v24 + 1) = v33;
  *(v24 + 8) = v32;
  v38 = a4;
  sub_1D1495240(a4, &v17[qword_1EE068120]);
  *&v17[qword_1EE068128] = a7;
  *&v17[qword_1EE068138] = a8;
  v25 = *v21;
  *v21 = a10;
  v21[1] = a11;
  v26 = a1;
  v27 = a8;

  sub_1D150F270(v25);
  v17[qword_1EE068140] = a9 & 1;
  v39.receiver = v17;
  v39.super_class = v12;
  v28 = objc_msgSendSuper2(&v39, sel_init);
  v29 = v28;
  if (a6)
  {
    v30 = sub_1D15A3EF8();
  }

  else
  {
    v30 = 0;
  }

  [v28 setName_];

  sub_1D15547A8(v38);
  return v28;
}

id CorrelatedStatisticsCollectionQueryOperation.init(correlationType:correlatedQuantityTypes:configuration:configurationOverrides:name:queryQualityOfService:healthStore:environment:resultHandler:)(void *a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, char a9, uint64_t a10, uint64_t a11)
{
  v12 = v11;
  ObjectType = swift_getObjectType();
  v17 = *(a3 + 1);
  v34 = *(a3 + 8);
  v35 = *a3;
  v18 = qword_1EE057590;
  sub_1D1487B04();
  swift_allocError();
  *v19 = 0;
  v42 = 1;
  sub_1D1554744(0, &qword_1EE059410, sub_1D1552D9C, MEMORY[0x1E69A3DC0]);
  swift_allocObject();
  *&v12[v18] = sub_1D15A2D68();
  v20 = qword_1EE068148;
  v41 = sub_1D159C040(MEMORY[0x1E69E7CC0]);
  sub_1D15546D0();
  swift_allocObject();
  *&v12[v20] = sub_1D15A2D68();
  v21 = &v12[qword_1EE068130];
  *v21 = 0;
  v21[1] = 0;
  v22 = qword_1EE0575A0;
  v23 = [objc_allocWithZone(MEMORY[0x1E696ADC8]) init];
  [v23 setMaxConcurrentOperationCount_];
  [v23 setSuspended_];
  *&v12[v22] = v23;
  *&v12[qword_1EE057598] = a1;
  *&v12[qword_1EE057588] = a2;
  v24 = &v12[qword_1EE0575A8];
  *v24 = v35;
  *(v24 + 1) = v17;
  *(v24 + 8) = v34;
  v25 = a4;
  sub_1D1495240(a4, &v12[qword_1EE068120]);
  *&v12[qword_1EE068128] = a7;
  *&v12[qword_1EE068138] = a8;
  v26 = *v21;
  *v21 = a10;
  v21[1] = a11;
  v27 = a1;
  v28 = a8;

  sub_1D150F270(v26);
  v12[qword_1EE068140] = a9 & 1;
  v40.receiver = v12;
  v40.super_class = ObjectType;
  v29 = objc_msgSendSuper2(&v40, sel_init);
  v30 = v29;
  if (a6)
  {
    v31 = sub_1D15A3EF8();
  }

  else
  {
    v31 = 0;
  }

  [v29 setName_];

  sub_1D15547A8(v25);
  return v29;
}

void sub_1D1552D9C()
{
  if (!qword_1EE056258)
  {
    sub_1D1554ACC(255, &qword_1EE0568B0, MEMORY[0x1E69E5E28]);
    sub_1D1453368(255, &qword_1EE05ABB8);
    v0 = sub_1D15A4CC8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE056258);
    }
  }
}

Swift::Void __swiftcall CorrelatedStatisticsCollectionQueryOperation.main()()
{
  v1 = v0;
  sub_1D1554744(0, &qword_1EE05AEE0, type metadata accessor for StatisticsQueryConfigurationOverrides, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v81 = &v67 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v85 = &v67 - v5;
  v84 = sub_1D15A31D8();
  v6 = *(v84 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v84);
  v83 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v67 - v9;
  sub_1D1487B04();
  v11 = swift_allocError();
  *v12 = 2;
  v86 = v11;
  v87 = 1;

  sub_1D15A2D38();

  v13._countAndFlagsBits = 0x676E696E6E7572;
  v13._object = 0xE700000000000000;
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  NSOperation.logLifeCycleEvent(_:withPrivateInfo:)(v13, v14);
  if (qword_1EE05B390 != -1)
  {
    goto LABEL_27;
  }

  while (1)
  {
    v15 = qword_1EE05B398;
    v16 = v1;
    sub_1D15A31C8();
    sub_1D15A4478();
    sub_1D1487C24();
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1D15ACDD0;
    v18 = [*&v16[qword_1EE057598] identifier];
    v19 = sub_1D15A3F38();
    v21 = v20;

    *(v17 + 56) = MEMORY[0x1E69E6158];
    *(v17 + 64) = sub_1D1487C8C();
    *(v17 + 32) = v19;
    *(v17 + 40) = v21;
    sub_1D15A31A8();

    v22 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v23 = *(v6 + 16);
    v24 = v83;
    v68 = v10;
    v25 = v10;
    v26 = v84;
    v23(v83, v25, v84);
    v27 = (*(v6 + 80) + 16) & ~*(v6 + 80);
    v28 = swift_allocObject();
    v80 = v6;
    (*(v6 + 32))(v28 + v27, v24, v26);
    *(v28 + ((v7 + v27 + 7) & 0xFFFFFFFFFFFFFFF8)) = v22;
    v93 = sub_1D1554834;
    v94 = v28;
    aBlock = MEMORY[0x1E69E9820];
    v90 = 1107296256;
    v91 = sub_1D1493D34;
    v92 = &block_descriptor_16;
    v29 = _Block_copy(&aBlock);
    v30 = objc_opt_self();

    v83 = [v30 blockOperationWithBlock_];
    _Block_release(v29);

    v31 = *&v16[qword_1EE057588];
    if (v31 >> 62)
    {
      v32 = sub_1D15A4708();
    }

    else
    {
      v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v1 = MEMORY[0x1E69E7CC0];
    if (v32)
    {
      v88 = MEMORY[0x1E69E7CC0];
      sub_1D15A4878();
      if (v32 < 0)
      {
        __break(1u);
        return;
      }

      v33 = 0;
      v77 = qword_1EE068120;
      v76 = v16[qword_1EE0575A8];
      v75 = *&v16[qword_1EE0575A8 + 8];
      v74 = v16[qword_1EE0575A8 + 16];
      v73 = v16[qword_1EE0575A8 + 17];
      v72 = *&v16[qword_1EE068128];
      v71 = *&v16[qword_1EE068138];
      v82 = v16;
      v70 = v16[qword_1EE068140];
      v34 = v31;
      v69 = v31 & 0xC000000000000001;
      v79 = v31;
      v78 = v32;
      do
      {
        if (v69)
        {
          v45 = MEMORY[0x1D388AB50](v33, v34);
        }

        else
        {
          v45 = *(v34 + 8 * v33 + 32);
        }

        v46 = v45;
        v47 = v82;
        sub_1D1495240(&v82[v77], v85);
        v48 = [v47 name];
        if (v48)
        {
          v35 = v48;
          v36 = sub_1D15A3F38();
          v38 = v37;
        }

        else
        {
          v36 = 0;
          v38 = 0;
        }

        ++v33;
        v39 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v40 = swift_allocObject();
        *(v40 + 16) = v39;
        *(v40 + 24) = v46;
        LOBYTE(aBlock) = v76;
        v90 = v75;
        LOBYTE(v91) = v74;
        BYTE1(v91) = v73;
        v41 = v85;
        v42 = v81;
        sub_1D1495240(v85, v81);
        objc_allocWithZone(type metadata accessor for StatisticsCollectionQueryOperation());
        v43 = v46;

        v44 = v71;
        sub_1D151F094(v43, &aBlock, v42, v36, v38, v72, v44, v70, sub_1D15548C0, v40);

        sub_1D15547A8(v41);
        sub_1D15A4858();
        sub_1D15A4888();
        sub_1D15A4898();
        sub_1D15A4868();
        v34 = v79;
      }

      while (v78 != v33);
      v1 = v88;
      v16 = v82;
    }

    v10 = (v1 >> 62);
    if (v1 >> 62)
    {
      break;
    }

    v49 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v49)
    {
      goto LABEL_30;
    }

LABEL_17:
    v50 = 0;
    v6 = v1 & 0xC000000000000001;
    v7 = v1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v6)
      {
        v51 = MEMORY[0x1D388AB50](v50, v1);
      }

      else
      {
        if (v50 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_26;
        }

        v51 = *(v1 + 8 * v50 + 32);
      }

      v52 = v51;
      v53 = v50 + 1;
      if (__OFADD__(v50, 1))
      {
        break;
      }

      [v83 addDependency_];

      ++v50;
      if (v53 == v49)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    swift_once();
  }

  v49 = sub_1D15A4708();
  if (v49)
  {
    goto LABEL_17;
  }

LABEL_30:
  if (v10)
  {
    sub_1D1453BA0(0, &qword_1EE05AD70);

    v54 = sub_1D15A4918();
  }

  else
  {

    sub_1D15A4BB8();
    sub_1D1453BA0(0, &qword_1EE05AD70);
    v54 = v1;
  }

  sub_1D1496034();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D15AE100;
  v56 = v83;
  *(inited + 32) = v83;
  aBlock = v54;
  v57 = v56;
  sub_1D14C4C28(inited);
  v58 = aBlock;
  v59 = v80;
  v85 = v57;
  if (aBlock >> 62)
  {
    goto LABEL_48;
  }

  for (i = *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D15A4708())
  {
    v61 = v84;
    v62 = qword_1EE0575A0;
    if (!i)
    {
      break;
    }

    v63 = 0;
    while (1)
    {
      if ((v58 & 0xC000000000000001) != 0)
      {
        v64 = MEMORY[0x1D388AB50](v63, v58);
      }

      else
      {
        if (v63 >= *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_47;
        }

        v64 = *(v58 + 8 * v63 + 32);
      }

      v59 = v64;
      v65 = v63 + 1;
      if (__OFADD__(v63, 1))
      {
        break;
      }

      [*&v16[v62] addOperation_];

      ++v63;
      v66 = v65 == i;
      v61 = v84;
      v59 = v80;
      if (v66)
      {
        goto LABEL_45;
      }
    }

    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    ;
  }

LABEL_45:

  [*&v16[v62] setSuspended_];

  (v59)[1](v68, v61);
}

void sub_1D1553834()
{
  sub_1D15A4468();
  if (qword_1EE05B390 != -1)
  {
    swift_once();
  }

  sub_1D15A31B8();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if ([v1 isCancelled])
    {

      v2._object = 0x80000001D15BDC90;
      v2._countAndFlagsBits = 0xD00000000000002DLL;
      v3._countAndFlagsBits = 0;
      v3._object = 0xE000000000000000;
      NSOperation.logLifeCycleEvent(_:withPrivateInfo:)(v2, v3);
LABEL_7:

      return;
    }

    v4 = [v1 isFinished];

    if (v4)
    {
      goto LABEL_7;
    }

    sub_1D15A2D28();

    v6 = *&v1[qword_1EE068130];
    if (v6)
    {

      v6(v7, 0);
      v5 = sub_1D150F270(v6);
    }

    MEMORY[0x1EEE9AC00](v5);
    sub_1D15A2DA8();
  }
}

void sub_1D1553A20(void *a1)
{
  v1 = a1;
  CorrelatedStatisticsCollectionQueryOperation.main()();
}

Swift::Void __swiftcall CorrelatedStatisticsCollectionQueryOperation.cleanUp()()
{
  v1._countAndFlagsBits = 0x676E696E61656C63;
  v1._object = 0xEB00000000707520;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  NSOperation.logLifeCycleEvent(_:withPrivateInfo:)(v1, v2);
  if ([v0 isCancelled])
  {
    sub_1D1487B04();
    v3 = swift_allocError();
    *v4 = 3;
    MEMORY[0x1EEE9AC00](v3);

    sub_1D15A2D38();
  }

  v5 = &v0[qword_1EE068130];
  v6 = *&v0[qword_1EE068130];
  *v5 = 0;
  *(v5 + 1) = 0;
  sub_1D150F270(v6);
  [*&v0[qword_1EE0575A0] cancelAllOperations];
}

id CorrelatedStatisticsCollectionQueryOperation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void sub_1D1553C38()
{

  sub_1D15547A8(v0 + qword_1EE068120);

  sub_1D150F270(*(v0 + qword_1EE068130));
  v1 = *(v0 + qword_1EE0575A0);
}

id CorrelatedStatisticsCollectionQueryOperation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1D1553D28(uint64_t a1)
{

  sub_1D15547A8(a1 + qword_1EE068120);

  sub_1D150F270(*(a1 + qword_1EE068130));
  v2 = *(a1 + qword_1EE0575A0);
}

uint64_t sub_1D1553DEC@<X0>(uint64_t a1@<X8>)
{

  sub_1D15A2D28();

  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

void sub_1D1553E4C(void *a1, char a2, uint64_t a3, void *a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    if ([v8 isCancelled])
    {

      sub_1D15A47D8();
      v9 = [a4 identifier];
      v10 = sub_1D15A3F38();
      v12 = v11;

      MEMORY[0x1D388A330](v10, v12);

      MEMORY[0x1D388A330](0xD000000000000033, 0x80000001D15C1DB0);
      v13._countAndFlagsBits = 0;
      v14._object = 0x80000001D15BDC90;
      v14._countAndFlagsBits = 0xD00000000000002DLL;
      v13._object = 0xE000000000000000;
      NSOperation.logLifeCycleEvent(_:withPrivateInfo:)(v14, v13);
    }

    else
    {
      v15 = [v8 isFinished];

      if ((v15 & 1) == 0)
      {
        if (a2)
        {
          swift_getErrorValue();
          v17._countAndFlagsBits = sub_1D15A4C08();
          v18._countAndFlagsBits = 0;
          v18._object = 0xE000000000000000;
          NSOperation.logErrorString(_:withInfo:)(v17, v18);

          v19 = *&v8[qword_1EE068130];
          if (v19)
          {
            sub_1D14E261C(a1);
            sub_1D15210D8(v19);
            v19(a1, 1);
            v20 = sub_1D150F270(v19);
          }

          else
          {
            v20 = a1;
          }

          MEMORY[0x1EEE9AC00](v20);
          sub_1D15A2DA8();
          sub_1D14A8208(a1);
        }

        else
        {
          MEMORY[0x1EEE9AC00](v16);

          sub_1D15A2D38();
        }

        sub_1D155410C(v8, a4);
      }
    }
  }
}