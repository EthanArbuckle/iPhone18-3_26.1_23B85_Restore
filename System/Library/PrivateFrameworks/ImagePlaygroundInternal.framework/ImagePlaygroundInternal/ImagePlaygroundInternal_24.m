double sub_1D2520C60@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1D2875628();
  v51 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v50 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD348);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v49 - v7;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD350);
  MEMORY[0x1EEE9AC00](v52);
  v10 = &v49 - v9;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD358);
  MEMORY[0x1EEE9AC00](v53);
  v12 = &v49 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD360);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v49 - v14;
  v16 = *v2;
  *v8 = sub_1D28756A8();
  *(v8 + 1) = v16;
  v8[16] = 0;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD368);
  sub_1D2521148(&v8[*(v17 + 44)]);
  v18 = v2[1];
  if (*(v2 + 16) != 1)
  {
    sub_1D2870F78();
    sub_1D2878A28();
    v20 = sub_1D28762E8();
    v49 = v4;
    v21 = v13;
    v22 = a1;
    v23 = v20;
    sub_1D2873BE8();

    a1 = v22;
    v13 = v21;
    v24 = v50;
    sub_1D2875618();
    swift_getAtKeyPath();
    sub_1D22EE66C(v18, 0);
    (*(v51 + 8))(v24, v49);
    if (v54 != 1)
    {
      goto LABEL_3;
    }

LABEL_5:
    v19 = (v2 + *(type metadata accessor for CapsuleStylePickerButtonLabelStyle(0) + 32) + 8);
    goto LABEL_6;
  }

  if (v18)
  {
    goto LABEL_5;
  }

LABEL_3:
  v19 = (v2 + *(type metadata accessor for CapsuleStylePickerButtonLabelStyle(0) + 32));
LABEL_6:
  v25 = *v19;
  sub_1D22EC9BC(v8, v10, &qword_1EC6DD348);
  *&v10[*(v52 + 36)] = v25;
  v26 = sub_1D2876368();
  type metadata accessor for CapsuleStylePickerButtonLabelStyle(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBFE0);
  sub_1D2874768();
  sub_1D2874298();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  sub_1D22EC9BC(v10, v12, &qword_1EC6DD350);
  v35 = &v12[*(v53 + 36)];
  *v35 = v26;
  *(v35 + 1) = v28;
  *(v35 + 2) = v30;
  *(v35 + 3) = v32;
  *(v35 + 4) = v34;
  v35[40] = 0;
  v36 = sub_1D2876398();
  sub_1D2874298();
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  sub_1D22EC9BC(v12, v15, &qword_1EC6DD358);
  v45 = &v15[*(v13 + 36)];
  *v45 = v36;
  *(v45 + 1) = v38;
  *(v45 + 2) = v40;
  *(v45 + 3) = v42;
  *(v45 + 4) = v44;
  v45[40] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D99C0);
  sub_1D2874768();
  sub_1D2877848();
  sub_1D28748C8();
  sub_1D22EC9BC(v15, a1, &qword_1EC6DD360);
  v46 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD370) + 36));
  v47 = v55;
  *v46 = v54;
  v46[1] = v47;
  result = *&v56;
  v46[2] = v56;
  return result;
}

uint64_t sub_1D2521148@<X0>(char *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD378);
  v3 = v2 - 8;
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v22 - v7;
  v9 = sub_1D2875EA8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v22 - v14;
  sub_1D2875EB8();
  sub_1D2875EC8();
  *&v8[*(v3 + 44)] = sub_1D2875DA8();
  v16 = *(v10 + 16);
  v16(v12, v15, v9);
  sub_1D22BD1D0(v8, v5, &qword_1EC6DD378);
  v23 = 1;
  v16(a1, v12, v9);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD380);
  sub_1D22BD1D0(v5, &a1[*(v17 + 48)], &qword_1EC6DD378);
  v18 = &a1[*(v17 + 64)];
  v19 = v23;
  *v18 = 0;
  v18[8] = v19;
  sub_1D22BD238(v8, &qword_1EC6DD378);
  v20 = *(v10 + 8);
  v20(v15, v9);
  sub_1D22BD238(v5, &qword_1EC6DD378);
  return (v20)(v12, v9);
}

uint64_t sub_1D25213B4@<X0>(uint64_t a1@<X8>)
{
  sub_1D2875F38();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD1E0);
  *(a1 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_1D25213F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17[0] = a2;
  v17[1] = a1;
  v2 = sub_1D2875E98();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D2877158();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v17 - v11;
  sub_1D2877138();
  MEMORY[0x1D389FBC0](1);
  v13 = *(v7 + 8);
  v13(v9, v6);
  sub_1D2875E88();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD288);
  sub_1D22BB9D8(&qword_1EC6D7808, &qword_1EC6DD288);
  sub_1D2521B64(&qword_1ED89D3A8, MEMORY[0x1E69801B8]);
  v14 = v17[0];
  sub_1D2876808();
  (*(v3 + 8))(v5, v2);
  v13(v12, v6);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD280);
  v16 = v14 + *(result + 36);
  *v16 = 1;
  *(v16 + 8) = 0xD000000000000028;
  *(v16 + 16) = 0x80000001D28AFF80;
  return result;
}

uint64_t sub_1D2521698()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD280);
  sub_1D2522220();
  return sub_1D2875CE8();
}

uint64_t sub_1D2521748@<X0>(uint64_t a1@<X8>)
{
  result = sub_1D28755C8();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1D25217AC@<X0>(void *a1@<X8>)
{
  result = sub_1D2875468();
  *a1 = v3;
  return result;
}

uint64_t sub_1D2521800@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D28753C8();
  *a1 = result & 1;
  return result;
}

double sub_1D2521858@<D0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9D40);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v16 - v3;
  v5 = sub_1D28764E8();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *MEMORY[0x1E6980EF0];
  v16 = *(v6 + 104);
  v16(v9, v10, v5, v7);
  v11 = sub_1D28763F8();
  v12 = *(*(v11 - 8) + 56);
  v12(v4, 1, 1, v11);
  sub_1D2876438();
  v17 = sub_1D2876458();
  sub_1D22BD238(v4, &qword_1EC6D9D40);
  v13 = *(v6 + 8);
  v13(v9, v5);
  (v16)(v9, *MEMORY[0x1E6980F20], v5);
  v12(v4, 1, 1, v11);
  sub_1D2876418();
  v14 = sub_1D2876458();
  sub_1D22BD238(v4, &qword_1EC6D9D40);
  v13(v9, v5);
  *a1 = v17;
  *(a1 + 8) = xmmword_1D2890010;
  *(a1 + 24) = v14;
  result = 32.0;
  *(a1 + 32) = xmmword_1D2890020;
  *(a1 + 48) = xmmword_1D2890030;
  *(a1 + 64) = 0x4030000000000000;
  *(a1 + 72) = 2;
  return result;
}

uint64_t sub_1D2521AE4()
{
  type metadata accessor for StylesPopover(0);

  return sub_1D251F5D4();
}

uint64_t sub_1D2521B64(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D2521BAC()
{
  result = qword_1EC6DD230;
  if (!qword_1EC6DD230)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DD1F8);
    sub_1D2521C38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DD230);
  }

  return result;
}

unint64_t sub_1D2521C38()
{
  result = qword_1EC6D79B8;
  if (!qword_1EC6D79B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DD1F0);
    sub_1D2521CC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D79B8);
  }

  return result;
}

unint64_t sub_1D2521CC4()
{
  result = qword_1EC6D7A08;
  if (!qword_1EC6D7A08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DD228);
    sub_1D2521D50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7A08);
  }

  return result;
}

unint64_t sub_1D2521D50()
{
  result = qword_1EC6D7A98;
  if (!qword_1EC6D7A98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DD220);
    sub_1D2521DDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7A98);
  }

  return result;
}

unint64_t sub_1D2521DDC()
{
  result = qword_1EC6D7B58;
  if (!qword_1EC6D7B58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DD218);
    sub_1D2521E68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7B58);
  }

  return result;
}

unint64_t sub_1D2521E68()
{
  result = qword_1EC6D7C98;
  if (!qword_1EC6D7C98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DD210);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DD1E8);
    sub_1D2872008();
    sub_1D22BB9D8(&unk_1EC6D7680, &qword_1EC6DD1E8);
    sub_1D2521B64(&qword_1ED8A6C08, MEMORY[0x1E696E310]);
    swift_getOpaqueTypeConformance2();
    sub_1D22BB9D8(&qword_1EC6D77B8, &qword_1EC6DD238);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7C98);
  }

  return result;
}

uint64_t objectdestroyTm_15()
{
  v1 = (type metadata accessor for StylesPopover(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[11];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D99C0);
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t block_copy_helper_21(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1D2870F78();
}

unint64_t sub_1D2522220()
{
  result = qword_1EC6D7CF8;
  if (!qword_1EC6D7CF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DD280);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DD288);
    sub_1D2875E98();
    sub_1D22BB9D8(&qword_1EC6D7808, &qword_1EC6DD288);
    sub_1D2521B64(&qword_1ED89D3A8, MEMORY[0x1E69801B8]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7CF8);
  }

  return result;
}

unint64_t sub_1D252236C()
{
  result = qword_1EC6D7A88;
  if (!qword_1EC6D7A88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DD2A8);
    sub_1D25223F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7A88);
  }

  return result;
}

unint64_t sub_1D25223F8()
{
  result = qword_1EC6D7B38;
  if (!qword_1EC6D7B38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DD2B0);
    sub_1D22F587C();
    sub_1D22BB9D8(&qword_1ED89D388, &unk_1EC6DE930);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7B38);
  }

  return result;
}

unint64_t sub_1D25224E0()
{
  result = qword_1EC6D7E20;
  if (!qword_1EC6D7E20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DD2E8);
    sub_1D2521B64(qword_1ED8A6590, type metadata accessor for ComposingFooterButtonImage);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7E20);
  }

  return result;
}

unint64_t sub_1D252259C()
{
  result = qword_1EC6D7D20;
  if (!qword_1EC6D7D20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DD2D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DD2C0);
    type metadata accessor for CapsuleStylePickerButtonLabelStyle(255);
    sub_1D22BB9D8(&qword_1EC6D7738, &qword_1EC6DD2C0);
    sub_1D2521B64(&qword_1EC6D8B18, type metadata accessor for CapsuleStylePickerButtonLabelStyle);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7D20);
  }

  return result;
}

uint64_t sub_1D25226E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D2522750(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D25227B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D2522818()
{
  result = qword_1EC6D79C0;
  if (!qword_1EC6D79C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DD308);
    sub_1D25228D0();
    sub_1D22BB9D8(&qword_1ED89D370, &unk_1EC6E0FB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D79C0);
  }

  return result;
}

unint64_t sub_1D25228D0()
{
  result = qword_1EC6D7A20;
  if (!qword_1EC6D7A20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DD310);
    sub_1D2522988();
    sub_1D22BB9D8(&qword_1ED89D2E8, &unk_1EC6E1030);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7A20);
  }

  return result;
}

unint64_t sub_1D2522988()
{
  result = qword_1EC6D7AB8;
  if (!qword_1EC6D7AB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DD318);
    sub_1D2522A40();
    sub_1D22BB9D8(&qword_1ED89D358, &qword_1EC6DC9E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7AB8);
  }

  return result;
}

unint64_t sub_1D2522A40()
{
  result = qword_1EC6D7BA0;
  if (!qword_1EC6D7BA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DD320);
    sub_1D234251C();
    sub_1D22BB9D8(&qword_1ED89D2C0, &qword_1EC6D9CD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7BA0);
  }

  return result;
}

unint64_t sub_1D2522AF8()
{
  result = qword_1EC6D7A28;
  if (!qword_1EC6D7A28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DD328);
    sub_1D2522988();
    sub_1D22BB9D8(&qword_1ED89D370, &unk_1EC6E0FB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7A28);
  }

  return result;
}

void sub_1D2522BD8()
{
  sub_1D2522C54();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1D2522C54()
{
  if (!qword_1EC6D75F8)
  {
    sub_1D28777D8();
    v0 = sub_1D2878F18();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC6D75F8);
    }
  }
}

uint64_t sub_1D2522CAC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1D2522CF4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1D2522D78()
{
  sub_1D2522E90(319, &qword_1ED89DFB0, MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    sub_1D2522EE4(319, &qword_1ED89DF38, sub_1D22BFBB8);
    if (v1 <= 0x3F)
    {
      sub_1D2522EE4(319, &qword_1ED89DF30, sub_1D2459314);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D2522E90(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6370]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D2522EE4(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = sub_1D2874778();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

__n128 __swift_memcpy105_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 89) = *(a2 + 89);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1D2522F80(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 105))
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

uint64_t sub_1D2522FC8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 105) = 1;
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

    *(result + 105) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
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

uint64_t sub_1D2523058(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 73))
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

uint64_t sub_1D25230A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D2523104()
{
  result = qword_1EC6D7D58;
  if (!qword_1EC6D7D58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DD1E0);
    sub_1D2521B64(&qword_1ED89D398, MEMORY[0x1E697C8D0]);
    sub_1D22BB9D8(&qword_1ED89D4A8, &qword_1EC6DA6F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7D58);
  }

  return result;
}

uint64_t sub_1D2523264@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(sub_1D2872008() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);

  return sub_1D2520704(v1 + v4, v5, a1);
}

void sub_1D2523304(_BYTE *a1)
{
  v3 = *(sub_1D2872008() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 80) & ~*(v3 + 80));

  sub_1D25209D4(a1, v4, v5, v1 + 32, v6);
}

unint64_t sub_1D25233C4()
{
  result = qword_1EC6D7CC0;
  if (!qword_1EC6D7CC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DD3D8);
    sub_1D2523490();
    swift_getOpaqueTypeConformance2();
    sub_1D25234E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7CC0);
  }

  return result;
}

unint64_t sub_1D2523490()
{
  result = qword_1EC6D8A08;
  if (!qword_1EC6D8A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D8A08);
  }

  return result;
}

unint64_t sub_1D25234E4()
{
  result = qword_1EC6D8388;
  if (!qword_1EC6D8388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D8388);
  }

  return result;
}

uint64_t objectdestroy_121Tm()
{

  return swift_deallocObject();
}

unint64_t sub_1D2523610()
{
  result = qword_1EC6D79E8;
  if (!qword_1EC6D79E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DD370);
    sub_1D252369C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D79E8);
  }

  return result;
}

unint64_t sub_1D252369C()
{
  result = qword_1EC6D7A68;
  if (!qword_1EC6D7A68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DD360);
    sub_1D2523728();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7A68);
  }

  return result;
}

unint64_t sub_1D2523728()
{
  result = qword_1EC6D7B10;
  if (!qword_1EC6D7B10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DD358);
    sub_1D25237B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7B10);
  }

  return result;
}

unint64_t sub_1D25237B4()
{
  result = qword_1EC6D7C40;
  if (!qword_1EC6D7C40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DD350);
    sub_1D22BB9D8(&qword_1EC6D76C0, &qword_1EC6DD348);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7C40);
  }

  return result;
}

unint64_t sub_1D252386C()
{
  result = qword_1EC6DD408;
  if (!qword_1EC6DD408)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DD3C0);
    sub_1D2523924();
    sub_1D22BB9D8(&qword_1EC6DD448, &qword_1EC6DD268);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DD408);
  }

  return result;
}

unint64_t sub_1D2523924()
{
  result = qword_1EC6DD410;
  if (!qword_1EC6DD410)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DD3B8);
    sub_1D25239B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DD410);
  }

  return result;
}

unint64_t sub_1D25239B0()
{
  result = qword_1EC6DD418;
  if (!qword_1EC6DD418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DD3B0);
    sub_1D2523A3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DD418);
  }

  return result;
}

unint64_t sub_1D2523A3C()
{
  result = qword_1EC6DD420;
  if (!qword_1EC6DD420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DD3A8);
    sub_1D2523AC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DD420);
  }

  return result;
}

unint64_t sub_1D2523AC8()
{
  result = qword_1EC6DD428;
  if (!qword_1EC6DD428)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DD398);
    sub_1D2523B80();
    sub_1D22BB9D8(&qword_1EC6DD440, &qword_1EC6DD3A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DD428);
  }

  return result;
}

unint64_t sub_1D2523B80()
{
  result = qword_1EC6DD430;
  if (!qword_1EC6DD430)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DD390);
    sub_1D22BB9D8(&qword_1EC6DD438, &qword_1EC6DD388);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DD430);
  }

  return result;
}

unint64_t sub_1D2523C38()
{
  result = qword_1EC6D7E30;
  if (!qword_1EC6D7E30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DD3C8);
    sub_1D22BB9D8(&qword_1EC6D7E90, &qword_1EC6DD450);
    sub_1D2523CF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7E30);
  }

  return result;
}

unint64_t sub_1D2523CF0()
{
  result = qword_1EC6D7618;
  if (!qword_1EC6D7618)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DD458);
    sub_1D24C1CE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7618);
  }

  return result;
}

unint64_t sub_1D2523D74()
{
  result = qword_1EC6D7B60;
  if (!qword_1EC6D7B60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DD3F8);
    sub_1D2523E2C();
    sub_1D22BB9D8(&unk_1ED89D490, &qword_1EC6D9058);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7B60);
  }

  return result;
}

unint64_t sub_1D2523E2C()
{
  result = qword_1EC6D7CA0;
  if (!qword_1EC6D7CA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DD3F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D9028);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC6D9030);
    sub_1D22BB4CC();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D9060);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC6D9068);
    sub_1D22BB9D8(&qword_1EC6D7EE0, &unk_1EC6D9068);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1D2521B64(qword_1ED89E730, type metadata accessor for PhotoSharingConfirmationViewModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7CA0);
  }

  return result;
}

uint64_t sub_1D2524018()
{
  v0 = sub_1D2872208();
  v53 = *(v0 - 8);
  v54 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v51 = &v49 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for SceneConditioningImage();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v50 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for CharacterAsset();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for PhotosPersonAsset();
  MEMORY[0x1EEE9AC00](v52);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9D58);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v49 - v10;
  v12 = sub_1D2872008();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Prompt(0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for CuratedPrompt();
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = _s14IngredientTypeOMa();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v49 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2525D28(v55, v24, _s14IngredientTypeOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_1D2525DF0(v24, v21, type metadata accessor for CuratedPrompt);
      v32 = *(v21 + 2);
      sub_1D2870F68();
      v33 = type metadata accessor for CuratedPrompt;
      v34 = v21;
      goto LABEL_27;
    }

    if (EnumCaseMultiPayload == 1)
    {
      sub_1D2525DF0(v24, v18, type metadata accessor for Prompt);
      v32 = *(v18 + 1);
      sub_1D2870F68();
      v33 = type metadata accessor for Prompt;
      v34 = v18;
      goto LABEL_27;
    }

    v36 = v12;
    v37 = v13;
    v38 = *(v13 + 32);
    v39 = v36;
    v38(v15, v24, v36);
    sub_1D2871F58();
    v40 = sub_1D2871F38();
    v41 = *(v40 - 8);
    if ((*(v41 + 48))(v11, 1, v40) == 1)
    {
      sub_1D22BD238(v11, &qword_1EC6D9D58);
      v32 = sub_1D2871F98();
    }

    else
    {
      v32 = sub_1D2871EF8();
      (*(v41 + 8))(v11, v40);
    }

    (*(v37 + 8))(v15, v39);
  }

  else
  {
    if (EnumCaseMultiPayload <= 4)
    {
      if (EnumCaseMultiPayload == 3)
      {
        sub_1D2525DF0(v24, v8, type metadata accessor for PhotosPersonAsset);
        v27 = *(v8 + 2);
        v26 = *(v8 + 3);
        if (*(v8 + 4))
        {
          v56 = *(v8 + 4);
          v57 = *(v8 + 40);
          v28 = sub_1D24FBD9C();
          if (v29)
          {
            v30 = v28;
          }

          else
          {
            v30 = 0;
          }

          if (v29)
          {
            v31 = v29;
          }

          else
          {
            v31 = 0xE000000000000000;
          }

          v56 = v27;
          *&v57 = v26;
          sub_1D2870F68();
          MEMORY[0x1D38A0C50](v30, v31);

          v27 = v56;
          v26 = v57;
        }

        else
        {
          sub_1D2870F68();
        }

        v45 = &v8[*(v52 + 20)];
        v46 = *v45;
        v47 = *(v45 + 1);
        v56 = v27;
        *&v57 = v26;
        sub_1D2870F68();
        MEMORY[0x1D38A0C50](v46, v47);

        v32 = v56;
        v35 = type metadata accessor for PhotosPersonAsset;
        goto LABEL_26;
      }

      sub_1D2525DF0(v24, v6, type metadata accessor for CharacterAsset);
      v32 = CharacterAsset.id.getter();
      v33 = type metadata accessor for CharacterAsset;
      v34 = v6;
LABEL_27:
      sub_1D2525D90(v34, v33);
      return v32;
    }

    if (EnumCaseMultiPayload == 5)
    {
      v8 = v50;
      sub_1D2525DF0(v24, v50, type metadata accessor for SceneConditioningImage);
      type metadata accessor for PlaygroundImage();
      v32 = sub_1D28717B8();
      v35 = type metadata accessor for SceneConditioningImage;
LABEL_26:
      v33 = v35;
      v34 = v8;
      goto LABEL_27;
    }

    v43 = v53;
    v42 = v54;
    v44 = v51;
    (*(v53 + 32))(v51, v24, v54);
    v32 = sub_1D28721F8();
    (*(v43 + 8))(v44, v42);
  }

  return v32;
}

uint64_t sub_1D2524700(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB238);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D287F500;
  *(inited + 32) = 1701869908;
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = sub_1D2878068();
  v9 = sub_1D25D73B4(inited);
  swift_setDeallocating();
  sub_1D22BD238(inited + 32, &qword_1EC6DB240);
  v41 = a1;
  if (a3)
  {
    v10 = sub_1D2878068();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1D24E81CC(v10, 17481, 0xE200000000000000, isUniquelyReferenced_nonNull_native);
  }

  v12 = 1 << *(a6 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a6 + 64);
  v15 = (v12 + 63) >> 6;
  sub_1D2870F68();
  v16 = 0;
  if (v14)
  {
    goto LABEL_8;
  }

  while (1)
  {
LABEL_9:
    v20 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    if (v20 >= v15)
    {
      break;
    }

    v14 = *(a6 + 64 + 8 * v20);
    ++v16;
    if (v14)
    {
      while (1)
      {
        v21 = __clz(__rbit64(v14)) | (v20 << 6);
        v22 = (*(a6 + 48) + 16 * v21);
        v24 = *v22;
        v23 = v22[1];
        v25 = *(*(a6 + 56) + 8 * v21);
        sub_1D2870F68();
        v26 = swift_isUniquelyReferenced_nonNull_native();
        v27 = sub_1D25D0410(v24, v23);
        v29 = v9[2];
        v30 = (v28 & 1) == 0;
        v31 = __OFADD__(v29, v30);
        v32 = v29 + v30;
        if (v31)
        {
          goto LABEL_25;
        }

        v33 = v28;
        if (v9[3] >= v32)
        {
          if ((v26 & 1) == 0)
          {
            v38 = v27;
            sub_1D24EC774();
            v27 = v38;
          }
        }

        else
        {
          sub_1D24E077C(v32, v26);
          v27 = sub_1D25D0410(v24, v23);
          if ((v33 & 1) != (v34 & 1))
          {
            result = sub_1D28796E8();
            __break(1u);
            return result;
          }
        }

        v14 &= v14 - 1;
        if (v33)
        {
          v17 = v27;

          v18 = v9[7];
          v19 = *(v18 + 8 * v17);
          *(v18 + 8 * v17) = v25;

          v16 = v20;
          if (!v14)
          {
            goto LABEL_9;
          }
        }

        else
        {
          v9[(v27 >> 6) + 8] |= 1 << v27;
          v35 = (v9[6] + 16 * v27);
          *v35 = v24;
          v35[1] = v23;
          *(v9[7] + 8 * v27) = v25;

          v36 = v9[2];
          v31 = __OFADD__(v36, 1);
          v37 = v36 + 1;
          if (v31)
          {
            goto LABEL_26;
          }

          v9[2] = v37;
          v16 = v20;
          if (!v14)
          {
            goto LABEL_9;
          }
        }

LABEL_8:
        v20 = v16;
      }
    }
  }

  sub_1D22ED23C();
  sub_1D2877E78();

  MEMORY[0x1D38A0E30](v39);
  if (*((*v41 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*v41 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    return sub_1D2878488();
  }

LABEL_27:
  sub_1D2878428();
  return sub_1D2878488();
}

uint64_t sub_1D2524A6C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[2];
  v3 = sub_1D25D73B4(MEMORY[0x1E69E7CC0]);
  if (v1)
  {
    v37 = v2;
    v4 = v1 + 64;
    v5 = 1 << *(v1 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(v1 + 64);
    v8 = (v5 + 63) >> 6;
    sub_1D2870F68();
    v9 = 0;
    for (i = v1; ; v1 = i)
    {
      if (!v7)
      {
        while (1)
        {
          v13 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            __break(1u);
            goto LABEL_36;
          }

          if (v13 >= v8)
          {
            break;
          }

          v7 = *(v4 + 8 * v13);
          ++v9;
          if (v7)
          {
            goto LABEL_12;
          }
        }

        if (v37)
        {
          v34 = sub_1D2878068();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          sub_1D24E81CC(v34, 0xD000000000000015, 0x80000001D28B9850, isUniquelyReferenced_nonNull_native);
        }

        return v3;
      }

      v13 = v9;
LABEL_12:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v15 = *(*(v1 + 48) + (v14 | (v13 << 6)));
      v16 = 0x61486C6169636146;
      if (v15 != 1)
      {
        v16 = 0x726F737365636341;
      }

      v17 = 0xEA00000000007269;
      if (v15 != 1)
      {
        v17 = 0xEB00000000736569;
      }

      if (v15)
      {
        v18 = v16;
      }

      else
      {
        v18 = 1919508808;
      }

      if (v15)
      {
        v19 = v17;
      }

      else
      {
        v19 = 0xE400000000000000;
      }

      sub_1D2870F68();
      v20 = sub_1D2878068();

      v21 = swift_isUniquelyReferenced_nonNull_native();
      v22 = sub_1D25D0410(v18, v19);
      v24 = v3[2];
      v25 = (v23 & 1) == 0;
      v26 = __OFADD__(v24, v25);
      v27 = v24 + v25;
      if (v26)
      {
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        result = sub_1D28796E8();
        __break(1u);
        return result;
      }

      v28 = v23;
      if (v3[3] < v27)
      {
        break;
      }

      if (v21)
      {
        goto LABEL_27;
      }

      v33 = v22;
      sub_1D24EC774();
      v22 = v33;
      if (v28)
      {
LABEL_5:
        v10 = v22;

        v11 = v3[7];
        v12 = *(v11 + 8 * v10);
        *(v11 + 8 * v10) = v20;

        goto LABEL_6;
      }

LABEL_28:
      v3[(v22 >> 6) + 8] |= 1 << v22;
      v30 = (v3[6] + 16 * v22);
      *v30 = v18;
      v30[1] = v19;
      *(v3[7] + 8 * v22) = v20;
      v31 = v3[2];
      v26 = __OFADD__(v31, 1);
      v32 = v31 + 1;
      if (v26)
      {
        goto LABEL_37;
      }

      v3[2] = v32;
LABEL_6:
      v9 = v13;
    }

    sub_1D24E077C(v27, v21);
    v22 = sub_1D25D0410(v18, v19);
    if ((v28 & 1) != (v29 & 1))
    {
      goto LABEL_38;
    }

LABEL_27:
    if (v28)
    {
      goto LABEL_5;
    }

    goto LABEL_28;
  }

  return v3;
}

uint64_t sub_1D2524D50(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBC50);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v107 = &v91 - v3;
  v109 = sub_1D2872208();
  v108 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v99 = &v91 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = type metadata accessor for CharacterAsset();
  v5 = MEMORY[0x1EEE9AC00](v94);
  v92 = &v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v93 = &v91 - v7;
  v98 = type metadata accessor for PhotosPersonAsset();
  v8 = MEMORY[0x1EEE9AC00](v98);
  v95 = (&v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v97 = &v91 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA2C8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v106 = &v91 - v12;
  v105 = type metadata accessor for SceneConditioningImage();
  v104 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v100 = &v91 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_1D2872008();
  v102 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103);
  v101 = &v91 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = _s14IngredientTypeOMa();
  MEMORY[0x1EEE9AC00](v114);
  v16 = &v91 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for CuratedPrompt();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v91 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = MEMORY[0x1E69E7CC0];
  v21 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_activeCuratedPrompts;
  swift_beginAccess();
  v22 = *(a1 + v21);
  v23 = *(v22 + 16);
  v110 = a1;
  if (v23)
  {
    v24 = v22 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
    v113 = *(v18 + 72);
    v112 = v20 + 48;
    v111 = v20 + 8;
    v96 = v22;
    sub_1D2870F68();
    do
    {
      sub_1D2525D28(v24, v20, type metadata accessor for CuratedPrompt);
      if (v112[*(v17 + 92)] == 255)
      {
        v25 = 0x5064657461727543;
        v26 = 0xED000074706D6F72;
      }

      else
      {
        if (*&v111[*(v17 + 48)])
        {
          v25 = 0x696A6F6D45;
        }

        else
        {
          v25 = 0x696A6F6D6E6547;
        }

        if (*&v111[*(v17 + 48)])
        {
          v26 = 0xE500000000000000;
        }

        else
        {
          v26 = 0xE700000000000000;
        }
      }

      sub_1D2525D28(v20, v16, type metadata accessor for CuratedPrompt);
      swift_storeEnumTagMultiPayload();
      v27 = sub_1D2524018();
      v29 = v28;
      sub_1D2525D90(v16, _s14IngredientTypeOMa);
      v30 = sub_1D25D73B4(MEMORY[0x1E69E7CC0]);
      sub_1D2524700(&v119, v27, v29, v25, v26, v30);

      sub_1D2525D90(v20, type metadata accessor for CuratedPrompt);
      v24 += v113;
      --v23;
    }

    while (v23);

    a1 = v110;
  }

  v31 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_prompts;
  swift_beginAccess();
  v32 = *(a1 + v31);
  v33 = *(v32 + 16);
  if (v33)
  {
    v34 = *(type metadata accessor for Prompt(0) - 8);
    v35 = v32 + ((*(v34 + 80) + 32) & ~*(v34 + 80));
    v36 = *(v34 + 72);
    v113 = v32;
    sub_1D2870F68();
    v37 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1D2525D28(v35, v16, type metadata accessor for Prompt);
      swift_storeEnumTagMultiPayload();
      v38 = sub_1D2524018();
      v40 = v39;
      sub_1D2525D90(v16, _s14IngredientTypeOMa);
      v41 = sub_1D25D73B4(v37);
      sub_1D2524700(&v119, v38, v40, 0x74706D6F7250, 0xE600000000000000, v41);

      v35 += v36;
      --v33;
    }

    while (v33);
  }

  v42 = sub_1D25D73B4(MEMORY[0x1E69E7CC0]);
  v113 = "chevron.up.chevron.down";
  v43 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_style;
  v44 = v110;
  swift_beginAccess();
  v45 = v102;
  v46 = *(v102 + 16);
  v47 = v101;
  v48 = v103;
  v46(v101, v44 + v43, v103);
  sub_1D2871F78();
  (*(v45 + 8))(v47, v48);
  v49 = sub_1D28784E8();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v118 = v42;
  sub_1D24E81CC(v49, 0xD000000000000012, v113 | 0x8000000000000000, isUniquelyReferenced_nonNull_native);
  v51 = v118;
  v46(v16, v44 + v43, v48);
  swift_storeEnumTagMultiPayload();
  v52 = sub_1D2524018();
  v54 = v53;
  sub_1D2525D90(v16, _s14IngredientTypeOMa);
  sub_1D2524700(&v119, v52, v54, 0x656C797453, 0xE500000000000000, v51);

  v55 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_importedSceneImage;
  swift_beginAccess();
  v56 = v44 + v55;
  v57 = v106;
  sub_1D22BD1D0(v56, v106, &qword_1EC6DA2C8);
  if ((*(v104 + 48))(v57, 1, v105) == 1)
  {
    sub_1D22BD238(v57, &qword_1EC6DA2C8);
    v58 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_activePerson;
    swift_beginAccess();
    sub_1D22BD1D0(v44 + v58, &v116, &qword_1EC6D9A58);
    v59 = v109;
    v60 = v107;
    if (v117)
    {
      sub_1D227268C(&v116, &v118);
      sub_1D22D7044(&v118, &v116);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A28);
      v61 = v97;
      if (swift_dynamicCast())
      {
        v62 = v95;
        sub_1D2525DF0(v61, v95, type metadata accessor for PhotosPersonAsset);
        v63 = v62[5];
        v64 = v62[6];
        v115[0] = v62[4];
        v115[1] = v63;
        v115[2] = v64;
        sub_1D2396784(v115[0]);
        v65 = sub_1D2524A6C(v115);
        sub_1D238D058(v115[0]);
        sub_1D2525D28(v62, v16, type metadata accessor for PhotosPersonAsset);
        swift_storeEnumTagMultiPayload();
        v66 = sub_1D2524018();
        v68 = v67;
        sub_1D2525D90(v16, _s14IngredientTypeOMa);
        sub_1D2524700(&v119, v66, v68, 0x7265506F746F6850, 0xEB000000006E6F73, v65);

        sub_1D2525D90(v62, type metadata accessor for PhotosPersonAsset);
        v69 = v108;
      }

      else
      {
        v75 = v93;
        v76 = swift_dynamicCast();
        v69 = v108;
        if (v76)
        {
          v77 = v92;
          sub_1D2525DF0(v75, v92, type metadata accessor for CharacterAsset);
          sub_1D2525D28(v77, v16, type metadata accessor for CharacterAsset);
          swift_storeEnumTagMultiPayload();
          v78 = sub_1D2524018();
          v80 = v79;
          sub_1D2525D90(v16, _s14IngredientTypeOMa);
          v81 = sub_1D25D73B4(MEMORY[0x1E69E7CC0]);
          sub_1D2524700(&v119, v78, v80, 0x50636972656E6547, 0xED00006E6F737265, v81);

          sub_1D2525D90(v77, type metadata accessor for CharacterAsset);
        }
      }

      __swift_destroy_boxed_opaque_existential_0(&v118);
      __swift_destroy_boxed_opaque_existential_0(&v116);
    }

    else
    {
      sub_1D22BD238(&v116, &qword_1EC6D9A58);
      v69 = v108;
    }
  }

  else
  {
    v70 = v100;
    sub_1D2525DF0(v57, v100, type metadata accessor for SceneConditioningImage);
    sub_1D2525D28(v70, v16, type metadata accessor for SceneConditioningImage);
    swift_storeEnumTagMultiPayload();
    v71 = sub_1D2524018();
    v73 = v72;
    sub_1D2525D90(v16, _s14IngredientTypeOMa);
    v74 = sub_1D25D73B4(MEMORY[0x1E69E7CC0]);
    sub_1D2524700(&v119, v71, v73, 0x646574726F706D49, 0xED00006567616D49, v74);

    sub_1D2525D90(v70, type metadata accessor for SceneConditioningImage);
    v59 = v109;
    v69 = v108;
    v60 = v107;
  }

  v82 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_drawOnImageRecipe;
  swift_beginAccess();
  v83 = *(v44 + v82);
  if (!v83)
  {
    (*(v69 + 56))(v60, 1, 1, v59);
    goto LABEL_30;
  }

  v84 = v83;
  sub_1D2878BE8();

  if ((*(v69 + 48))(v60, 1, v59) == 1)
  {
LABEL_30:
    sub_1D22BD238(v60, &qword_1EC6DBC50);
    return v119;
  }

  v85 = v99;
  (*(v69 + 32))(v99, v60, v59);
  (*(v69 + 16))(v16, v85, v59);
  swift_storeEnumTagMultiPayload();
  v86 = sub_1D2524018();
  v88 = v87;
  sub_1D2525D90(v16, _s14IngredientTypeOMa);
  v89 = sub_1D25D73B4(MEMORY[0x1E69E7CC0]);
  sub_1D2524700(&v119, v86, v88, 0x676E6977617244, 0xE700000000000000, v89);

  (*(v69 + 8))(v85, v59);
  return v119;
}

uint64_t _s14IngredientTypeOMa()
{
  result = qword_1ED8A18E0;
  if (!qword_1ED8A18E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D2525D28(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D2525D90(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D2525DF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D2525E58()
{
  result = type metadata accessor for CuratedPrompt();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Prompt(319);
    if (v2 <= 0x3F)
    {
      result = sub_1D2872008();
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for PhotosPersonAsset();
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for CharacterAsset();
          if (v5 <= 0x3F)
          {
            result = type metadata accessor for SceneConditioningImage();
            if (v6 <= 0x3F)
            {
              result = sub_1D2872208();
              if (v7 <= 0x3F)
              {
                swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                return 0;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t _s23ImagePlaygroundInternal32LoadingPageControlIndicatorStyleO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D28785F8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for LoadingPageControlIndicatorStyle();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD460);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v20 - v12;
  v15 = *(v14 + 56);
  sub_1D2526290(a1, &v20 - v12);
  sub_1D2526290(a2, &v13[v15]);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_1D2526290(v13, v10);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      v17 = sub_1D28785A8();
      v18 = *(v5 + 8);
      v18(v7, v4);
      v18(v10, v4);
      sub_1D24B4510(v13);
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_1D25262F4(v13);
    v17 = 0;
    return v17 & 1;
  }

  sub_1D24B4510(v13);
  v17 = 1;
  return v17 & 1;
}

uint64_t type metadata accessor for LoadingPageControlIndicatorStyle()
{
  result = qword_1ED89EC28;
  if (!qword_1ED89EC28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D2526238()
{
  v0 = sub_1D28785F8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t sub_1D2526290(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LoadingPageControlIndicatorStyle();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D25262F4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD460);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1D2526380(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 88))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1D25263D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 88) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 88) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2 + 1;
    }
  }

  return result;
}

void sub_1D252644C()
{
  qword_1ED8B0078 = 0;
  unk_1ED8B0080 = 0xE000000000000000;
  byte_1ED8B0088 = 0;
}

uint64_t sub_1D2526464@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ED89F348 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v2 = unk_1ED8B0080;
  v3 = byte_1ED8B0088;
  *a1 = qword_1ED8B0078;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;

  return sub_1D2870F68();
}

uint64_t sub_1D25264EC(double *a1, void (**a2)(char *, char *, uint64_t))
{
  v125 = a1;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC9E8);
  v127 = *(v135 - 8);
  MEMORY[0x1EEE9AC00](v135);
  v134 = v114 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC9F0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v133 = v114 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v132 = v114 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC9F8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v129 = v114 - v10;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCA00);
  MEMORY[0x1EEE9AC00](v130);
  v136 = v114 - v11;
  v12 = sub_1D2874B38();
  v126 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v139 = v114 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v121 = v114 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = v114 - v17;
  v19 = sub_1D2874C68();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = v114 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCA08);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = v114 - v25;
  v27 = *(v2 + 24);
  v131 = *(v2 + 48);
  v142 = 0;
  v143 = 0xE000000000000000;
  v128 = v20;
  v28 = *(v20 + 16);
  v138 = a2;
  v119 = v20 + 16;
  v118 = v28;
  (v28)(v22, a2, v19, v24);
  v29 = sub_1D24DB6A0(&qword_1ED89DEA8);
  v123 = *&v22;
  v30 = v12;
  v117 = v29;
  sub_1D2878318();
  v120 = v23;
  v31 = *(v23 + 36);
  v32 = sub_1D24DB6A0(&qword_1ED89DEA0);
  sub_1D2878868();
  if (*&v26[v31] != *&v140)
  {
    v33 = (v126 + 2);
    v34 = v126 + 1;
    do
    {
      v35 = sub_1D28788B8();
      (*v33)(v18);
      v35(&v140, 0);
      sub_1D2878878();
      sub_1D2527E0C();
      sub_1D2874B48();
      MEMORY[0x1D38A0C50](*&v140, v141);

      (*v34)(v18, v30);
      sub_1D2878868();
    }

    while (*&v26[v31] != *&v140);
  }

  v124 = v32;
  v122 = v19;
  v137 = v30;
  sub_1D22BD238(v26, &qword_1EC6DCA08);
  v37 = v142;
  v36 = v143;
  v38 = v125;
  v39 = *(v125 + 1);
  if (*v125 == v142 && v39 == v143 || (sub_1D2879618() & 1) != 0)
  {
  }

  v114[1] = v39;
  v115 = v37;
  v116 = v36;
  v41 = MEMORY[0x1E69E7CC0];
  v42 = sub_1D25DA378(MEMORY[0x1E69E7CC0]);

  *(v38 + 2) = v42;
  v43 = sub_1D25DA378(v41);

  *(v38 + 3) = v43;
  v44 = v138;
  v45 = v122;
  sub_1D2878818();
  sub_1D2878868();
  v46 = 360.0 / sub_1D2878858() * 0.0174532925;
  v47 = v129;
  v118(v129, v44, v45);
  (v128[4])(COERCE_DOUBLE(*&v123), v47, v45);
  v48 = v136;
  sub_1D2878318();
  v129 = 0;
  v119 = *(v130 + 36);
  *(v48 + v119) = 0;
  v130 = *(v120 + 9);
  v120 = (v126 + 2);
  v138 = (v126 + 4);
  v128 = (v127 + 7);
  v127 += 6;
  ++v126;
  v123 = MEMORY[0x1E69E7CC8];
  v49 = v137;
  while (1)
  {
    sub_1D2878868();
    v53 = v134;
    v54 = v135;
    v55 = v133;
    v56 = v132;
    if (*(v48 + v130) == *&v140)
    {
      (*v128)(v133, 1, 1, v135);
    }

    else
    {
      v57 = sub_1D28788B8();
      v58 = v121;
      (*v120)(v121);
      v57(&v140, 0);
      sub_1D2878878();
      v59 = *(v54 + 48);
      v60 = v129;
      *v53 = v129;
      (*v138)(&v53[v59], v58, v49);
      if (__OFADD__(v60, 1))
      {
        goto LABEL_49;
      }

      v129 = v60 + 1;
      *(v48 + v119) = v60 + 1;
      sub_1D22EC9BC(v53, v55, &qword_1EC6DC9E8);
      (*v128)(v55, 0, 1, v54);
      v38 = v125;
    }

    sub_1D22EC9BC(v55, v56, &qword_1EC6DC9F0);
    if ((*v127)(v56, 1, v54) == 1)
    {
      sub_1D22BD238(v48, &qword_1EC6DCA00);

      v38[4] = v123;
      v113 = v116;
      *v38 = v115;
      *(v38 + 1) = v113;
      return result;
    }

    v61 = *v56;
    (*v138)(v139, &v56[*(v54 + 48)], v49);
    sub_1D2527E0C();
    sub_1D2874B48();
    if (__OFADD__(v61, 1))
    {
      break;
    }

    v62 = *&v140;
    v63 = v141;
    v140 = v46 * (v61 + 1);
    sub_1D2876FE8();
    sub_1D2876FE8();
    sub_1D2876FF8();
    v65 = fmod(v140 * 57.2957795, 360.0);
    if (v27 < 0.0)
    {
      goto LABEL_46;
    }

    v66 = v65;
    sub_1D2527400(v64, 0.0, v27);
    v68 = v67;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v140 = v38[2];
    v70 = v140;
    v72 = sub_1D25D0410(v62, v63);
    v73 = *(*&v70 + 16);
    v74 = (v71 & 1) == 0;
    v75 = v73 + v74;
    if (__OFADD__(v73, v74))
    {
      goto LABEL_47;
    }

    v76 = v71;
    if (*(*&v70 + 24) >= v75)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D24EF21C();
      }
    }

    else
    {
      sub_1D24E5510(v75, isUniquelyReferenced_nonNull_native);
      v77 = sub_1D25D0410(v62, v63);
      if ((v76 & 1) != (v78 & 1))
      {
        goto LABEL_52;
      }

      v72 = v77;
    }

    v79 = v66 * 0.0174532925;
    v80 = v140;
    if (v76)
    {
      v81 = *(*&v140 + 56) + 16 * v72;
      *v81 = v79;
      *(v81 + 8) = v68;
    }

    else
    {
      *(*&v140 + 8 * (v72 >> 6) + 64) |= 1 << v72;
      v82 = (*(*&v80 + 48) + 16 * v72);
      *v82 = v62;
      v82[1] = v63;
      v83 = *(*&v80 + 56) + 16 * v72;
      *v83 = v79;
      *(v83 + 8) = v68;
      v84 = *(*&v80 + 16);
      v85 = __OFADD__(v84, 1);
      v86 = v84 + 1;
      if (v85)
      {
        goto LABEL_50;
      }

      *(*&v80 + 16) = v86;
      sub_1D2870F68();
    }

    v38[2] = v80;
    v87 = *(v38 + 4);
    v49 = v137;
    if (*(v87 + 16))
    {
      v88 = sub_1D25D0410(v62, v63);
      if (v89)
      {
        v90 = (*(v87 + 56) + 16 * v88);
        v91 = *v90;
        v92 = v90[1];
        v93 = v123;
        v94 = swift_isUniquelyReferenced_nonNull_native();
        v140 = v93;
        sub_1D24EA0D0(v62, v63, v94, v91, v92);
        v123 = v140;
        v95 = swift_isUniquelyReferenced_nonNull_native();
        v140 = v38[3];
        sub_1D24EA0D0(v62, v63, v95, v91, v92);
        v38[3] = v140;
      }
    }

    LOBYTE(v140) = 0;
    LOBYTE(v142) = 0;
    sub_1D2874B08();
    if (v96 > v97)
    {
      v98 = v96;
    }

    else
    {
      v98 = v97;
    }

    v99 = swift_isUniquelyReferenced_nonNull_native();
    v140 = v38[5];
    v100 = v140;
    v101 = sub_1D25D0410(v62, v63);
    v103 = *(*&v100 + 16);
    v104 = (v102 & 1) == 0;
    v85 = __OFADD__(v103, v104);
    v105 = v103 + v104;
    if (v85)
    {
      goto LABEL_48;
    }

    v106 = v102;
    if (*(*&v100 + 24) >= v105)
    {
      if (v99)
      {
        goto LABEL_39;
      }

      v112 = v101;
      sub_1D24EF0B4();
      v101 = v112;
      v48 = v136;
      if (v106)
      {
        goto LABEL_9;
      }

LABEL_40:
      v108 = v140;
      *(*&v140 + 8 * (v101 >> 6) + 64) |= 1 << v101;
      v109 = (*(*&v108 + 48) + 16 * v101);
      *v109 = v62;
      v109[1] = v63;
      *(*(*&v108 + 56) + 8 * v101) = v98;
      (*v126)(v139, v49);
      v110 = *(*&v108 + 16);
      v85 = __OFADD__(v110, 1);
      v111 = v110 + 1;
      if (v85)
      {
        goto LABEL_51;
      }

      *(*&v108 + 16) = v111;
      v38[5] = v108;
    }

    else
    {
      sub_1D24E526C(v105, v99);
      v101 = sub_1D25D0410(v62, v63);
      if ((v106 & 1) != (v107 & 1))
      {
        goto LABEL_52;
      }

LABEL_39:
      v48 = v136;
      if ((v106 & 1) == 0)
      {
        goto LABEL_40;
      }

LABEL_9:
      v50 = v101;

      v51 = v139;
      v52 = v140;
      *(*(*&v140 + 56) + 8 * v50) = v98;
      (*v126)(v51, v49);
      v38[5] = v52;
    }
  }

  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  result = sub_1D28796E8();
  __break(1u);
  return result;
}

unint64_t sub_1D25272B4@<X0>(void *a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  v3 = sub_1D25DA378(MEMORY[0x1E69E7CC0]);
  v4 = sub_1D25DA378(v2);
  v5 = sub_1D25DA378(v2);
  result = sub_1D25DA484(v2);
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = v3;
  a1[3] = v4;
  a1[4] = v5;
  a1[5] = result;
  return result;
}

double sub_1D2527338@<D0>(double *a1@<X8>)
{
  result = *(v1 + 32);
  *a1 = result;
  return result;
}

double *sub_1D2527344(double *result)
{
  v2 = *result;
  if (*result > 1.0)
  {
    v2 = 1.0;
  }

  *(v1 + 32) = v2;
  return result;
}

uint64_t (*sub_1D252735C(void *a1))(uint64_t result)
{
  a1[1] = v1;
  *a1 = *(v1 + 32);
  return sub_1D2527388;
}

uint64_t sub_1D2527388(uint64_t result)
{
  v1 = *result;
  if (*result > 1.0)
  {
    v1 = 1.0;
  }

  *(*(result + 8) + 32) = v1;
  return result;
}

unint64_t sub_1D25273AC()
{
  result = qword_1ED8A4C30[0];
  if (!qword_1ED8A4C30[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED8A4C30);
  }

  return result;
}

uint64_t sub_1D2527400(uint64_t result, double a2, double a3)
{
  if (a2 == a3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = a3 - a2;
  if (COERCE__INT64(fabs(a3 - a2)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = result;
  v7 = 0;
  result = MEMORY[0x1D38A3540](&v7, 8);
  if (v5 * vcvtd_n_f64_u64(v7 & 0x1FFFFFFFFFFFFFLL, 0x35uLL) + a2 == a3)
  {
    return sub_1D2527400(v6, a2, a3);
  }

  return result;
}

uint64_t sub_1D25274A4(uint64_t a1, uint64_t a2, CGFloat a3, CGFloat a4, double a5, CGFloat height)
{
  v7 = v6;
  v94.origin.x = a3;
  v94.origin.y = a4;
  c_low = sub_1D2874B38();
  v91 = *(c_low - 8);
  MEMORY[0x1EEE9AC00](c_low);
  v13 = v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v95 = v76 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCA08);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v76 - v18;
  v20 = *(v7 + 24);
  v81 = *(v7 + 16);
  v80 = v20;
  v21 = *(v7 + 32);
  v22 = *(v7 + 56);
  v79 = *(v7 + 48);
  v78 = v22;
  v24 = *(v7 + 64);
  a = *(v7 + 72);
  v25 = *(v7 + 80);
  if (height >= width)
  {
    v26 = width;
  }

  else
  {
    v26 = height;
  }

  v27 = 0.5;
  v28 = v26 * 0.5;
  v29 = (v24 + a) * 0.5;
  v94.size.width = width;
  v94.size.height = height;
  v77 = v29;
  if (qword_1ED8A4BA8 != -1)
  {
LABEL_46:
    swift_once();
    v29 = v77;
    width = v94.size.width;
    height = v94.size.height;
  }

  v30 = *&qword_1ED8B0258 * v27;
  if (*&qword_1ED8B0258 * v27 >= v28)
  {
    v30 = v28;
  }

  v31 = (1.0 - v25) * height * v27 - v29;
  v32 = (1.0 - v25) * width * v27 - v29;
  v33 = v24 + v25 * v30;
  v34 = sub_1D2874C68();
  v35 = sub_1D24DB6A0(&qword_1ED89DEA0);
  sub_1D2878818();
  sub_1D2878868();
  if (sub_1D2878858() < 2)
  {
    if (v32 > v31)
    {
      v38 = v32;
    }

    else
    {
      v38 = v31;
    }

    v37 = v38 + v38;
  }

  else
  {
    sub_1D2878818();
    sub_1D2878868();
    v36 = sub_1D2878858();
    v37 = (v33 + v33) * sin(360.0 / v36 * 0.0174532925 * 0.5);
  }

  (*(*(v34 - 8) + 16))(v19, a1, v34);
  v39 = *(v16 + 36);
  sub_1D2878818();
  sub_1D2878868();
  if (*&v19[v39] == *&v96.a)
  {
    return sub_1D22BD238(v19, &qword_1EC6DCA08);
  }

  v41 = v28 - a - v33;
  v93 = (*&v91 + 16);
  v92 = (*&v91 + 32);
  v21 = 1.0 - v21;
  v42 = v78;
  if (v41 > v78)
  {
    v42 = v28 - a - v33;
  }

  v43 = v79;
  if (v79 >= v42)
  {
    v43 = v42;
  }

  if (v37 > v41)
  {
    v44 = v37;
  }

  else
  {
    v44 = v28 - a - v33;
  }

  v76[3] = v44;
  v76[2] = v32 - v44;
  v76[5] = v28 - a - v33;
  v76[1] = v31 - v41;
  v76[4] = v43;
  v76[0] = v43 * 0.5;
  v82 = (*&v91 + 8);
  v91 = 57.2957795;
  v90 = 360.0;
  v89 = 0x3F91DF46A2529D39;
  v86 = v13;
  v88 = v34;
  v83 = v21;
  v87 = c_low;
  v85 = v33;
  v84 = v35;
  while (1)
  {
    v45 = sub_1D28788B8();
    v16 = v95;
    (*v93)(v95);
    v45(&v96, 0);
    sub_1D2878878();
    (*v92)(v13, v16, c_low);
    sub_1D2527E0C();
    sub_1D2874B48();
    v46 = *&v96.a;
    v47 = *&v96.b;
    c_low = LOBYTE(v96.c);
    v48 = *(a2 + 16);
    v49 = 0.0;
    v25 = 0.0;
    if (*(v48 + 16))
    {
      v50 = sub_1D25D0410(*&v96.a, *&v96.b);
      if (v51)
      {
        v52 = *(v48 + 56) + 16 * v50;
        v49 = *v52;
        v25 = *(v52 + 8);
      }
    }

    v53 = *(a2 + 24);
    if (*(v53 + 16) && (v54 = sub_1D25D0410(v46, v47), (v55 & 1) != 0))
    {
      v56 = (*(v53 + 56) + 16 * v54);
      a = *v56;
      v24 = v56[1];
    }

    else
    {
      v96.a = v49;
      sub_1D2876FE8();
      sub_1D2876FE8();
      sub_1D2876FF8();
      a = v96.a;
      v24 = v80;
    }

    v96.a = v49;
    sub_1D2876FE8();
    sub_1D2876FE8();
    sub_1D2876FF8();
    fmod(v96.a * v91, v90);
    v96.a = a;
    sub_1D2876FE8();
    v28 = v57;
    sub_1D2876FE8();
    sub_1D2876FF8();
    v27 = v96.a;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v96.a = *(a2 + 32);
    a1 = *&v96.a;
    v13 = sub_1D25D0410(v46, v47);
    v60 = *(a1 + 16);
    v61 = (v59 & 1) == 0;
    v62 = v60 + v61;
    if (__OFADD__(v60, v61))
    {
      __break(1u);
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    v16 = v59;
    if (*(a1 + 24) < v62)
    {
      break;
    }

    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      a1 = &v96;
      sub_1D24EF21C();
    }

LABEL_38:
    a = v24 + v21 * (v25 - v24);
    if (v16)
    {

      v65 = v96.a;
      v66 = (*(*&v96.a + 56) + 16 * v13);
      *v66 = v27;
      v66[1] = a;
    }

    else
    {
      v65 = v96.a;
      *(*&v96.a + 8 * (v13 >> 6) + 64) |= 1 << v13;
      v67 = (*(*&v65 + 48) + 16 * v13);
      *v67 = v46;
      v67[1] = v47;
      v68 = (*(*&v65 + 56) + 16 * v13);
      *v68 = v27;
      v68[1] = a;
      v69 = *(*&v65 + 16);
      v70 = __OFADD__(v69, 1);
      v71 = v69 + 1;
      if (v70)
      {
        goto LABEL_45;
      }

      *(*&v65 + 16) = v71;
    }

    *(a2 + 32) = v65;
    CGAffineTransformMakeRotation(&v96, v27);
    v98.x = 0.0;
    v98.y = v33 + a;
    CGPointApplyAffineTransform(v98, &v96);
    x = v94.origin.x;
    y = v94.origin.y;
    v75 = v94.size.width;
    v74 = v94.size.height;
    CGRectGetMidX(v94);
    v99.origin.x = x;
    v99.origin.y = y;
    v99.size.width = v75;
    v99.size.height = v74;
    CGRectGetMidY(v99);
    sub_1D2877AE8();
    v13 = v86;
    if (c_low)
    {
      __sincos_stret(v27);
    }

    v21 = v83;
    LOBYTE(v96.a) = 0;
    v97 = 0;
    sub_1D2874B18();
    c_low = v87;
    (*v82)(v13, v87);
    sub_1D2878868();
    v33 = v85;
    if (*&v19[v39] == *&v96.a)
    {
      return sub_1D22BD238(v19, &qword_1EC6DCA08);
    }
  }

  sub_1D24E5510(v62, isUniquelyReferenced_nonNull_native);
  a1 = *&v96.a;
  v63 = sub_1D25D0410(v46, v47);
  if ((v16 & 1) == (v64 & 1))
  {
    v13 = v63;
    goto LABEL_38;
  }

  result = sub_1D28796E8();
  __break(1u);
  return result;
}

unint64_t sub_1D2527E0C()
{
  result = qword_1ED89F338;
  if (!qword_1ED89F338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89F338);
  }

  return result;
}

uint64_t type metadata accessor for ActionablePill()
{
  result = qword_1EC6D88C0;
  if (!qword_1EC6D88C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D2527EF4()
{
  sub_1D22EAE8C();
  if (v0 <= 0x3F)
  {
    sub_1D22BFAB4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1D2527FA4()
{
  result = qword_1EC6DD468;
  if (!qword_1EC6DD468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DD468);
  }

  return result;
}

uint64_t sub_1D2527FF8(char a1)
{
  v2 = sub_1D28718F8();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = sub_1D2878048();
  MEMORY[0x1EEE9AC00](v3 - 8);
  if (a1)
  {
    sub_1D2877FE8();
    if (qword_1ED89E0E8 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_6;
  }

  sub_1D2877FE8();
  if (qword_1ED89E0E8 != -1)
  {
LABEL_6:
    swift_once();
  }

LABEL_5:
  v4 = qword_1ED8B0058;
  sub_1D28718C8();
  return sub_1D28780E8();
}

uint64_t sub_1D25281C4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v98 = a1;
  v108 = sub_1D2875E18();
  v106 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108);
  v95 = &v95 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0DB0);
  MEMORY[0x1EEE9AC00](v103);
  v107 = &v95 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D99B8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v96 = &v95 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v110 = &v95 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v111 = &v95 - v10;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE860);
  MEMORY[0x1EEE9AC00](v97);
  v109 = &v95 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9D40);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v95 - v13;
  v15 = sub_1D28764E8();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v95 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD470);
  v20 = v19 - 8;
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v95 - v21;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD478);
  MEMORY[0x1EEE9AC00](v100);
  v24 = &v95 - v23;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD480);
  MEMORY[0x1EEE9AC00](v101);
  v102 = &v95 - v25;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD488);
  MEMORY[0x1EEE9AC00](v112);
  v105 = &v95 - v26;
  *v22 = sub_1D28756A8();
  *(v22 + 1) = 0;
  v22[16] = 1;
  v27 = &v22[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD490) + 44)];
  v104 = v2;
  sub_1D2528EB0(v2, v27);
  (*(v16 + 104))(v18, *MEMORY[0x1E6980EF0], v15);
  v28 = *MEMORY[0x1E6980E28];
  v29 = sub_1D28763F8();
  v30 = *(v29 - 8);
  (*(v30 + 104))(v14, v28, v29);
  (*(v30 + 56))(v14, 0, 1, v29);
  sub_1D2876418();
  v31 = sub_1D2876458();
  sub_1D22BD238(v14, &qword_1EC6D9D40);
  (*(v16 + 8))(v18, v15);
  KeyPath = swift_getKeyPath();
  v33 = &v22[*(v20 + 44)];
  *v33 = KeyPath;
  v33[1] = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD498);
  inited = swift_initStackObject();
  v99 = xmmword_1D287F550;
  *(inited + 16) = xmmword_1D287F550;
  LOBYTE(v31) = sub_1D2876348();
  *(inited + 32) = v31;
  v35 = sub_1D2876358();
  *(inited + 33) = v35;
  v36 = sub_1D2876378();
  sub_1D2876378();
  if (sub_1D2876378() != v31)
  {
    v36 = sub_1D2876378();
  }

  sub_1D2876378();
  if (sub_1D2876378() != v35)
  {
    v36 = sub_1D2876378();
  }

  v38 = v107;
  v37 = v108;
  v39 = v106;
  v40 = v111;
  v41 = v112;
  sub_1D2874298();
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v49 = v48;
  sub_1D22EC9BC(v22, v24, &qword_1EC6DD470);
  v50 = &v24[*(v100 + 36)];
  *v50 = v36;
  *(v50 + 1) = v43;
  *(v50 + 2) = v45;
  *(v50 + 3) = v47;
  *(v50 + 4) = v49;
  v50[40] = 0;
  v51 = swift_initStackObject();
  *(v51 + 16) = v99;
  v52 = sub_1D2876368();
  *(v51 + 32) = v52;
  v53 = sub_1D2876388();
  *(v51 + 33) = v53;
  v54 = sub_1D2876378();
  sub_1D2876378();
  if (sub_1D2876378() != v52)
  {
    v54 = sub_1D2876378();
  }

  sub_1D2876378();
  if (sub_1D2876378() != v53)
  {
    v54 = sub_1D2876378();
  }

  sub_1D2874298();
  v56 = v55;
  v58 = v57;
  v60 = v59;
  v62 = v61;
  v63 = v24;
  v64 = v102;
  sub_1D22EC9BC(v63, v102, &qword_1EC6DD478);
  v65 = v64 + *(v101 + 36);
  *v65 = v54;
  *(v65 + 8) = v56;
  *(v65 + 16) = v58;
  *(v65 + 24) = v60;
  *(v65 + 32) = v62;
  *(v65 + 40) = 0;
  v66 = sub_1D2877848();
  v68 = v67;
  v69 = *(v41 + 36);
  v70 = v105;
  v71 = &v105[v69];
  v72 = *MEMORY[0x1E697F468];
  v73 = sub_1D2875868();
  (*(*(v73 - 8) + 104))(v71, v72, v73);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD4A0);
  sub_1D28777B8();
  *&v71[*(v74 + 56)] = 256;
  v75 = &v71[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD4A8) + 36)];
  *v75 = v66;
  v75[1] = v68;
  v76 = v64;
  v77 = v70;
  sub_1D22EC9BC(v76, v70, &qword_1EC6DD480);
  sub_1D24CC0C4(v40);
  v78 = v110;
  (*(v39 + 104))(v110, *MEMORY[0x1E697FF38], v37);
  (*(v39 + 56))(v78, 0, 1, v37);
  v79 = *(v103 + 48);
  sub_1D24B17B0(v40, v38);
  sub_1D24B17B0(v78, v38 + v79);
  v80 = v40;
  v81 = *(v39 + 48);
  if (v81(v38, 1, v37) != 1)
  {
    v84 = v96;
    sub_1D24B17B0(v38, v96);
    if (v81(v38 + v79, 1, v37) != 1)
    {
      goto LABEL_17;
    }

    v79 = v84;
    sub_1D22BD238(v110, &qword_1EC6D99B8);
    sub_1D22BD238(v111, &qword_1EC6D99B8);
    v85 = *(v39 + 8);
    v39 += 8;
    v85(v84, v37);
    v83 = v109;
    v37 = v112;
LABEL_14:
    sub_1D22BD238(v38, &qword_1EC6E0DB0);
    while (1)
    {
      v84 = *MEMORY[0x1E697E6E0];
      v86 = sub_1D2874E88();
      (*(*(v86 - 8) + 104))(v83, v84, v86);
      sub_1D25298D0(&qword_1ED89DE70, MEMORY[0x1E697E730]);
      if (sub_1D2877F98())
      {
        goto LABEL_19;
      }

      __break(1u);
LABEL_17:
      v87 = (v38 + v79);
      v88 = v95;
      (*(v39 + 32))(v95, v87, v37);
      sub_1D25298D0(&qword_1ED89D3D0, MEMORY[0x1E697FF50]);
      v89 = v84;
      v90 = sub_1D2877F98();
      v91 = *(v39 + 8);
      v39 += 8;
      v91(v88, v37);
      v79 = &unk_1D287E890;
      sub_1D22BD238(v110, &qword_1EC6D99B8);
      sub_1D22BD238(v111, &qword_1EC6D99B8);
      v91(v89, v37);
      sub_1D22BD238(v38, &qword_1EC6D99B8);
      v83 = v109;
      v37 = v112;
      if (v90)
      {
        goto LABEL_18;
      }
    }
  }

  sub_1D22BD238(v78, &qword_1EC6D99B8);
  sub_1D22BD238(v80, &qword_1EC6D99B8);
  v82 = v81(v38 + v79, 1, v37);
  v83 = v109;
  v37 = v112;
  if (v82 != 1)
  {
    goto LABEL_14;
  }

  sub_1D22BD238(v38, &qword_1EC6D99B8);
LABEL_18:
  v92 = *MEMORY[0x1E697E6C0];
  v93 = sub_1D2874E88();
  (*(*(v93 - 8) + 104))(v83, v92, v93);
  sub_1D25298D0(&qword_1ED89DE70, MEMORY[0x1E697E730]);
  result = sub_1D2877F98();
  if (result)
  {
LABEL_19:
    sub_1D2529518();
    sub_1D22BB9D8(&qword_1ED89CBF0, &unk_1EC6DE860);
    sub_1D28769B8();
    sub_1D22BD238(v83, &unk_1EC6DE860);
    return sub_1D2289910(v77);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D2528EB0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v51 = a2;
  v3 = sub_1D28750E8();
  v4 = *(v3 - 8);
  v49 = v3;
  v50 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v47 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ActionablePill();
  v7 = v6 - 8;
  v41 = *(v6 - 8);
  v8 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE6C0);
  v48 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v10 = &v40 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD4E8);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v40 - v16;
  v18 = (a1 + *(v7 + 28));
  v19 = v18[1];
  v53 = *v18;
  v54 = v19;
  sub_1D22BD06C();
  sub_1D2870F68();
  v20 = sub_1D2876698();
  v42 = v21;
  v43 = v20;
  v44 = v22;
  v45 = v23;
  v24 = a1;
  sub_1D2529794(a1, &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = (*(v41 + 80) + 16) & ~*(v41 + 80);
  v26 = swift_allocObject();
  sub_1D25297F8(&v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v25);
  v52 = v24;
  sub_1D2877368();
  v27 = v47;
  sub_1D28750D8();
  sub_1D22BB9D8(&qword_1ED89D158, &qword_1EC6DE6C0);
  sub_1D25298D0(&qword_1ED89D748, MEMORY[0x1E697C248]);
  v28 = v17;
  v40 = v17;
  v29 = v46;
  v30 = v49;
  sub_1D28767A8();
  (*(v50 + 8))(v27, v30);
  (*(v48 + 8))(v10, v29);
  v31 = *(v12 + 16);
  v32 = v14;
  v31(v14, v28, v11);
  v33 = v51;
  v35 = v42;
  v34 = v43;
  *v51 = v43;
  v33[1] = v35;
  v36 = v44 & 1;
  *(v33 + 16) = v44 & 1;
  v33[3] = v45;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD4F0);
  v31(v33 + *(v37 + 48), v32, v11);
  sub_1D22BBFAC(v34, v35, v36);
  v38 = *(v12 + 8);
  sub_1D2870F68();
  v38(v40, v11);
  v38(v32, v11);
  sub_1D22ED6E0(v34, v35, v36);
}

uint64_t sub_1D252938C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v24 = a2;
  v3 = sub_1D2874DB8();
  v23 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ActionablePill();
  v25 = sub_1D2527FF8(*(a1 + *(v6 + 24)));
  v26 = v7;
  sub_1D22BD06C();
  v8 = sub_1D2876698();
  v10 = v9;
  v12 = v11;
  sub_1D2874DA8();
  v13 = sub_1D2876648();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  sub_1D22ED6E0(v8, v10, v12 & 1);

  result = (*(v23 + 8))(v5, v3);
  v21 = v24;
  *v24 = v13;
  v21[1] = v15;
  *(v21 + 16) = v17 & 1;
  v21[3] = v19;
  return result;
}

unint64_t sub_1D2529518()
{
  result = qword_1EC6DD4B0;
  if (!qword_1EC6DD4B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DD488);
    sub_1D252962C(&qword_1EC6DD4B8, &qword_1EC6DD480, &unk_1D2890CE0, sub_1D25295FC);
    sub_1D22BB9D8(&qword_1EC6DD4E0, &qword_1EC6DD4A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DD4B0);
  }

  return result;
}

uint64_t sub_1D252962C(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D25296B0()
{
  result = qword_1EC6DD4C8;
  if (!qword_1EC6DD4C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DD470);
    sub_1D22BB9D8(&qword_1EC6DD4D0, &qword_1EC6DD4D8);
    sub_1D22BB9D8(&qword_1ED89D2E8, &unk_1EC6E1030);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DD4C8);
  }

  return result;
}

uint64_t sub_1D2529794(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActionablePill();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D25297F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActionablePill();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D25298D0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for GridPickerItemView()
{
  result = qword_1ED8A2020;
  if (!qword_1ED8A2020)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D252998C()
{
  sub_1D2529AF8();
  if (v0 <= 0x3F)
  {
    sub_1D240117C(319, &qword_1ED89D080, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
    if (v1 <= 0x3F)
    {
      sub_1D240117C(319, &qword_1ED89E040, &type metadata for CreationViewStyle, MEMORY[0x1E697DCC0]);
      if (v2 <= 0x3F)
      {
        sub_1D240117C(319, &qword_1ED89DFB0, MEMORY[0x1E69E6370], MEMORY[0x1E697DCC0]);
        if (v3 <= 0x3F)
        {
          sub_1D247E45C();
          if (v4 <= 0x3F)
          {
            sub_1D22BFB5C();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1D2529AF8()
{
  result = qword_1ED89F970[0];
  if (!qword_1ED89F970[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_1ED89F970);
  }

  return result;
}

uint64_t sub_1D2529B5C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D2529BA4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_1D2529C34@<Q0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  v37 = a1;
  v35 = sub_1D28771B8();
  v34 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PlaygroundImage();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v36 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD660);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v33 - v8;
  v10 = type metadata accessor for GridPickerItemImage(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v33 - v15;
  v18 = v1[3];
  v17 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v18);
  (*(v17 + 40))(v18, v17);
  if ((*(v11 + 48))(v9, 1, v10) != 1)
  {
    sub_1D252F058(v9, v16, type metadata accessor for GridPickerItemImage);
    sub_1D252EFF0(v16, v13, type metadata accessor for GridPickerItemImage);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        v22 = v36;
        sub_1D252F058(v13, v36, type metadata accessor for PlaygroundImage);
        sub_1D262D4E8();
        sub_1D2877188();
        v23 = v34;
        v24 = v35;
        (*(v34 + 104))(v4, *MEMORY[0x1E6981630], v35);
        v25 = sub_1D2877228();

        (*(v23 + 8))(v4, v24);
        if (*(v2 + 41) == 1)
        {
          type metadata accessor for GridPickerItemView();
        }

        v26 = sub_1D2876338();
        sub_1D2874298();
        v45 = 0;
        v38 = 1;
        *&v42 = v25;
        WORD4(v42) = 1;
        BYTE10(v42) = 1;
        LOBYTE(v43) = v26;
        *(&v43 + 1) = v27;
        *v44 = v28;
        *&v44[8] = v29;
        *&v44[16] = v30;
        *&v44[24] = 256;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD678);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD680);
        sub_1D252ECF8();
        sub_1D252EE80();
        sub_1D2875AF8();
        sub_1D252F0C0(v22, type metadata accessor for PlaygroundImage);
        goto LABEL_11;
      }

      *&v42 = sub_1D2877198();
      BYTE8(v42) = 1;
    }

    else
    {
      *&v42 = sub_1D28771F8();
      BYTE8(v42) = 0;
    }

    sub_1D2870F78();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD670);
    sub_1D252EDA8(&qword_1ED89DBE8, &qword_1EC6DD670, &unk_1D2891078, sub_1D252EE2C);
    sub_1D2875AF8();
    v45 = BYTE8(v46);
    v38 = 0;
    *&v42 = v46;
    BYTE8(v42) = BYTE8(v46);
    v44[25] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD678);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD680);
    sub_1D252ECF8();
    sub_1D252EE80();
    sub_1D2875AF8();

LABEL_11:
    v39 = v46;
    v40 = v47;
    v41[0] = *v48;
    *(v41 + 10) = *&v48[10];
    v20 = v37;
    v45 = 0;
    *v48 = v41[0];
    *&v48[10] = *(v41 + 10);
    v48[26] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD668);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD670);
    sub_1D252EC6C();
    sub_1D252EDA8(&qword_1ED89DBE8, &qword_1EC6DD670, &unk_1D2891078, sub_1D252EE2C);
    sub_1D2875AF8();
    sub_1D252F0C0(v16, type metadata accessor for GridPickerItemImage);
    v46 = v42;
    v47 = v43;
    *v48 = *v44;
    *&v48[11] = *&v44[11];
    goto LABEL_12;
  }

  sub_1D22BD238(v9, &qword_1EC6DD660);
  type metadata accessor for GridPickerItemView();
  sub_1D2870F68();
  v19 = sub_1D2877198();
  v45 = 1;
  *&v42 = v19;
  v44[26] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD668);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD670);
  sub_1D252EC6C();
  sub_1D252EDA8(&qword_1ED89DBE8, &qword_1EC6DD670, &unk_1D2891078, sub_1D252EE2C);
  sub_1D2875AF8();
  v20 = v37;
LABEL_12:
  v31 = v47;
  *v20 = v46;
  v20[1] = v31;
  v20[2] = *v48;
  result = *&v48[11];
  *(v20 + 43) = *&v48[11];
  return result;
}

uint64_t sub_1D252A3C8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDDC0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v19 - v3;
  v5 = type metadata accessor for PhotosPersonAsset();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D22D7044(v1, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A48);
  v9 = swift_dynamicCast();
  v10 = *(v6 + 56);
  if (v9)
  {
    v10(v4, 0, 1, v5);
    sub_1D252F058(v4, v8, type metadata accessor for PhotosPersonAsset);
    v11 = sub_1D2613014(*(v8 + 2), *(v8 + 3));
    if (v11)
    {
      v12 = *(v11 + 16);

      v13 = v12 != 0;
    }

    else
    {
      v13 = 0;
    }

    sub_1D252F0C0(v8, type metadata accessor for PhotosPersonAsset);
  }

  else
  {
    v10(v4, 1, 1, v5);
    sub_1D22BD238(v4, &unk_1EC6DDDC0);
    v13 = 0;
  }

  v14 = *(v1 + 56);
  v15 = *(v1 + 64);
  v20[0] = *(v1 + 48);
  v20[1] = v14;
  v21 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA318);
  MEMORY[0x1D389FF60](v19, v16);
  result = LOBYTE(v19[0]);
  if (!v13 && LOBYTE(v19[0]))
  {
    sub_1D22D7044(v1, v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A10);
    result = swift_dynamicCast();
    if (result)
    {
      v18 = result;
      __swift_destroy_boxed_opaque_existential_0(v19);
      return v18;
    }
  }

  return result;
}

uint64_t sub_1D252A648()
{
  v1 = type metadata accessor for PersonConditioningImage();
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v6[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D22D7044(v0, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A28);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(v6);
    sub_1D22D7044(v0, v7);
    if (!swift_dynamicCast())
    {
      v4 = sub_1D252A3C8();
      return v4 & 1;
    }

    sub_1D252F0C0(v3, type metadata accessor for PersonConditioningImage);
  }

  v4 = 0;
  return v4 & 1;
}

__n128 sub_1D252A770@<Q0>(uint64_t a1@<X8>)
{
  v107 = a1;
  v95 = sub_1D2873998();
  v93 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v92 = &v91 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD588);
  v101 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103);
  v98 = &v91 - v3;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD590);
  MEMORY[0x1EEE9AC00](v97);
  v100 = &v91 - v4;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD598);
  MEMORY[0x1EEE9AC00](v99);
  v104 = &v91 - v5;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD5A0);
  MEMORY[0x1EEE9AC00](v96);
  v105 = &v91 - v6;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD5A8);
  MEMORY[0x1EEE9AC00](v102);
  v106 = &v91 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9D58);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v91 = &v91 - v9;
  v94 = sub_1D2871F38();
  v10 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v12 = &v91 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A30);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v91 - v14;
  v16 = sub_1D2872008();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v91 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1D28718F8();
  MEMORY[0x1EEE9AC00](v20 - 8);
  v21 = sub_1D2878048();
  MEMORY[0x1EEE9AC00](v21 - 8);
  if (sub_1D252A648())
  {
    sub_1D2877FE8();
    if (qword_1ED89E0E8 != -1)
    {
      swift_once();
    }

    v22 = qword_1ED8B0058;
    sub_1D28718C8();
    v23 = sub_1D28780E8();
    v25 = v1;
    goto LABEL_17;
  }

  sub_1D22D7044(v1, v119);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A48);
  v26 = swift_dynamicCast();
  v27 = *(v17 + 56);
  v25 = v1;
  if ((v26 & 1) == 0)
  {
    v27(v15, 1, 1, v16);
    sub_1D22BD238(v15, &qword_1EC6D9A30);
    goto LABEL_12;
  }

  v27(v15, 0, 1, v16);
  (*(v17 + 32))(v19, v15, v16);
  if ((sub_1D2871F78() & 1) == 0)
  {
    (*(v17 + 8))(v19, v16);
LABEL_12:
    v30 = *(v1 + 24);
    v31 = *(v1 + 32);
    __swift_project_boxed_opaque_existential_1(v1, v30);
    v23 = (*(v31 + 24))(v30, v31);
    if (!v24)
    {
      v24 = 0xE100000000000000;
      v23 = 32;
    }

    goto LABEL_17;
  }

  if (*(v1 + 42) == 1)
  {
    v28 = v91;
    sub_1D2871F58();
    v29 = v94;
    if ((*(v10 + 48))(v28, 1, v94) == 1)
    {
      sub_1D22BD238(v28, &qword_1EC6D9D58);
      (*(v17 + 8))(v19, v16);
      v23 = 0;
      v24 = 0xE000000000000000;
      goto LABEL_17;
    }

    (*(v10 + 32))(v12, v28, v29);
    v32 = sub_1D2871ED8();
    v36 = v35;
    (*(v10 + 8))(v12, v29);
    (*(v17 + 8))(v19, v16);
    v24 = v36;
  }

  else
  {
    v32 = sub_1D24DCFF0();
    v34 = v33;
    (*(v17 + 8))(v19, v16);
    v24 = v34;
  }

  v23 = v32;
LABEL_17:
  *&v119[0] = v23;
  *(&v119[0] + 1) = v24;
  sub_1D22BD06C();
  v94 = sub_1D2876698();
  v38 = v37;
  v40 = v39;
  v42 = v41;
  if (sub_1D252A648())
  {
    if (qword_1EC6D8B60 != -1)
    {
      swift_once();
    }

    v43 = v95;
    v44 = __swift_project_value_buffer(v95, qword_1EC6E3BC0);
    (*(v93 + 16))(v92, v44, v43);
    v45 = sub_1D2877108();
  }

  else
  {
    if (qword_1ED89D260 != -1)
    {
      swift_once();
    }

    v45 = qword_1ED8B0018;
    sub_1D2870F78();
  }

  v95 = type metadata accessor for GridPickerItemView();
  v46 = v25;
  v47 = *(v25 + *(v95 + 52) + 56);
  KeyPath = swift_getKeyPath();
  v49 = v40 & 1;
  v117 = v40 & 1;
  v50 = swift_getKeyPath();
  v51 = swift_getKeyPath();
  v118 = 0;
  *&v110 = v94;
  *(&v110 + 1) = v38;
  LOBYTE(v111) = v49;
  *(&v111 + 1) = v42;
  LOWORD(v112) = 256;
  *(&v112 + 1) = v45;
  *&v113 = KeyPath;
  *(&v113 + 1) = v47;
  *&v114 = v50;
  BYTE8(v114) = 1;
  *&v115 = v51;
  *(&v115 + 1) = 2;
  v116 = 0;
  v52 = v46;
  sub_1D2870F78();
  if (sub_1D252A648())
  {
    sub_1D2876408();
  }

  else
  {
    sub_1D2876428();
  }

  v53 = v98;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD5B0);
  sub_1D252E6A4();
  sub_1D2876758();
  v108[4] = v114;
  v108[5] = v115;
  v109 = v116;
  v108[0] = v110;
  v108[1] = v111;
  v108[2] = v112;
  v108[3] = v113;
  sub_1D22BD238(v108, &qword_1EC6DD5B0);
  v54 = sub_1D2876328();
  sub_1D2874298();
  v56 = v55;
  v58 = v57;
  v60 = v59;
  v62 = v61;
  v63 = v100;
  (*(v101 + 32))(v100, v53, v103);
  v64 = v63 + *(v97 + 36);
  *v64 = v54;
  *(v64 + 8) = v56;
  *(v64 + 16) = v58;
  *(v64 + 24) = v60;
  *(v64 + 32) = v62;
  *(v64 + 40) = 0;
  v65 = sub_1D2876398();
  sub_1D2874298();
  v67 = v66;
  v69 = v68;
  v71 = v70;
  v73 = v72;
  v74 = v104;
  sub_1D22EC9BC(v63, v104, &qword_1EC6DD590);
  v75 = v74 + *(v99 + 36);
  *v75 = v65;
  *(v75 + 8) = v67;
  *(v75 + 16) = v69;
  *(v75 + 24) = v71;
  *(v75 + 32) = v73;
  *(v75 + 40) = 0;
  v76 = v105;
  v77 = &v105[*(v96 + 36)];
  v78 = *MEMORY[0x1E697F468];
  v79 = sub_1D2875868();
  (*(*(v79 - 8) + 104))(v77, v78, v79);
  v77[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD5D8) + 36)] = 0;
  sub_1D22EC9BC(v74, v76, &qword_1EC6DD598);
  v80 = sub_1D2877848();
  v82 = v81;
  v83 = v106;
  v84 = &v106[*(v102 + 36)];
  sub_1D252B424(v52, v84);
  v85 = (v84 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD5E0) + 36));
  *v85 = v80;
  v85[1] = v82;
  sub_1D22EC9BC(v76, v83, &qword_1EC6DD5A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D99C0);
  sub_1D2874768();
  sub_1D2877828();
  sub_1D2875208();
  v86 = v107;
  sub_1D22EC9BC(v83, v107, &qword_1EC6DD5A8);
  v87 = v86 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD530) + 36);
  result = v119[3];
  v89 = v119[5];
  *(v87 + 64) = v119[4];
  *(v87 + 80) = v89;
  *(v87 + 96) = v119[6];
  v90 = v119[1];
  *v87 = v119[0];
  *(v87 + 16) = v90;
  *(v87 + 32) = v119[2];
  *(v87 + 48) = result;
  return result;
}

uint64_t sub_1D252B424@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD5E8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21[-v6];
  v8 = type metadata accessor for PersonConditioningImage();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D22D7044(a1, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A28);
  if (!swift_dynamicCast())
  {
    goto LABEL_6;
  }

  __swift_destroy_boxed_opaque_existential_0(v21);
  sub_1D22D7044(a1, v22);
  if (swift_dynamicCast())
  {
    sub_1D252F0C0(v10, type metadata accessor for PersonConditioningImage);
LABEL_6:
    v19 = 1;
    return (*(v5 + 56))(a2, v19, 1, v4);
  }

  if ((sub_1D252A3C8() & 1) == 0)
  {
    goto LABEL_6;
  }

  v11 = *MEMORY[0x1E697F468];
  v12 = sub_1D2875868();
  (*(*(v12 - 8) + 104))(v7, v11, v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD5F0);
  sub_1D2874DA8();
  *&v7[*(v13 + 56)] = 256;
  v14 = a1[3];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v14);
  v16 = (*(v15 + 16))(v14, v15);
  v17 = &v7[*(v4 + 52)];
  *v17 = v16;
  v17[1] = v18;
  sub_1D22EC9BC(v7, a2, &qword_1EC6DD5E8);
  v19 = 0;
  return (*(v5 + 56))(a2, v19, 1, v4);
}

uint64_t sub_1D252B6D8@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  result = (*(v4 + 32))(v3, v4);
  if (v6)
  {
    sub_1D22BD06C();
    v7 = sub_1D2876698();
    v9 = v8;
    v11 = v10;
    sub_1D2875DA8();
    v12 = sub_1D2876648();
    v14 = v13;
    v16 = v15;
    sub_1D22ED6E0(v7, v9, v11 & 1);

    sub_1D28764A8();
    v17 = sub_1D2876658();
    v19 = v18;
    v31 = v20;
    v22 = v21;

    sub_1D22ED6E0(v12, v14, v16 & 1);

    KeyPath = swift_getKeyPath();
    LOBYTE(v12) = sub_1D2876348();
    type metadata accessor for GridPickerItemView();
    result = sub_1D2874298();
    *(&v25 + 1) = v24;
    *(&v27 + 1) = v26;
    v28 = v31 & 1;
    v29 = v12;
    v30 = 1;
  }

  else
  {
    v17 = 0;
    v19 = 0;
    v22 = 0;
    KeyPath = 0;
    v29 = 0;
    v30 = 0;
    v28 = 0;
    v25 = 0uLL;
    v27 = 0uLL;
  }

  *a1 = v17;
  *(a1 + 8) = v19;
  *(a1 + 16) = v28;
  *(a1 + 24) = v22;
  *(a1 + 32) = KeyPath;
  *(a1 + 40) = v30;
  *(a1 + 48) = v29;
  *(a1 + 56) = v25;
  *(a1 + 72) = v27;
  *(a1 + 88) = 0;
  return result;
}

uint64_t sub_1D252B8C0()
{
  v1 = v0;
  v2 = sub_1D2875028();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD520);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v24 - v7;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD518);
  MEMORY[0x1EEE9AC00](v26);
  v10 = &v24 - v9;
  v11 = 0;
  if ((*(v1 + 40) & 1) == 0)
  {
    v11 = *(v1 + *(type metadata accessor for GridPickerItemView() + 52) + 48);
  }

  *v8 = sub_1D2875918();
  *(v8 + 1) = v11;
  v8[16] = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD528);
  sub_1D252BC98(v1, &v8[*(v12 + 44)]);
  type metadata accessor for GridPickerItemView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D99C0);
  sub_1D2874768();
  v13 = *&v31;
  sub_1D2874768();
  v14 = *&v31 * 1.5;
  sub_1D2877828();
  if (v13 > v14)
  {
    sub_1D2878A28();
    v25 = v10;
    v15 = sub_1D28762E8();
    v10 = v25;
    sub_1D2873BE8();
  }

  sub_1D2875208();
  sub_1D22EC9BC(v8, v10, &qword_1EC6DD520);
  v16 = &v10[*(v26 + 36)];
  v17 = v36;
  *(v16 + 4) = v35;
  *(v16 + 5) = v17;
  *(v16 + 6) = v37;
  v18 = v32;
  *v16 = v31;
  *(v16 + 1) = v18;
  v19 = v34;
  *(v16 + 2) = v33;
  *(v16 + 3) = v19;
  sub_1D2875018();
  v20 = *(v1 + 56);
  v21 = *(v1 + 64);
  v28 = *(v1 + 48);
  v29 = v20;
  v30 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA318);
  MEMORY[0x1D389FF60](&v27, v22);
  LOBYTE(v28) = v27;
  sub_1D252DCB0();
  sub_1D2876A08();
  (*(v3 + 8))(v5, v2);
  return sub_1D22BD238(v10, &qword_1EC6DD518);
}

uint64_t sub_1D252BC98@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v80 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD530);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v79 = &v73 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v78 = &v73 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD538);
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v73 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD540);
  v12 = v11 - 8;
  MEMORY[0x1EEE9AC00](v11);
  v75 = &v73 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD548);
  v15 = v14 - 8;
  MEMORY[0x1EEE9AC00](v14);
  v74 = &v73 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD550);
  v18 = v17 - 8;
  MEMORY[0x1EEE9AC00](v17);
  v77 = &v73 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD558);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v82 = &v73 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v76 = &v73 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v81 = &v73 - v25;
  sub_1D2529C34(&v92);
  v111 = v92;
  v112 = v93;
  v113[0] = v94[0];
  *(v113 + 11) = *(v94 + 11);
  sub_1D22D7044(a1, v99);
  v96 = v111;
  v97 = v112;
  v98[0] = v113[0];
  *(v98 + 11) = *(v113 + 11);
  type metadata accessor for GridPickerItemView();
  sub_1D2877848();
  sub_1D28748C8();
  v105 = v99[0];
  v106 = v99[1];
  *&v107 = v100;
  v101 = v96;
  v102 = v97;
  v103 = v98[0];
  v104 = v98[1];
  v26 = sub_1D2877848();
  v28 = v27;
  v29 = &v10[*(v8 + 44)];
  sub_1D252C398(a1);
  v30 = &v29[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD560) + 36)];
  *v30 = v26;
  v30[1] = v28;
  v31 = v102;
  *v10 = v101;
  *(v10 + 1) = v31;
  v32 = v106;
  *(v10 + 4) = v105;
  *(v10 + 5) = v32;
  v33 = v104;
  *(v10 + 2) = v103;
  *(v10 + 3) = v33;
  *(v10 + 18) = v110;
  v34 = v109;
  *(v10 + 7) = v108;
  *(v10 + 8) = v34;
  *(v10 + 6) = v107;
  *(v10 + 76) = 256;
  v35 = sub_1D2876338();
  sub_1D2874298();
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v44 = v75;
  sub_1D22EC9BC(v10, v75, &qword_1EC6DD538);
  v45 = v44 + *(v12 + 44);
  *v45 = v35;
  *(v45 + 8) = v37;
  *(v45 + 16) = v39;
  *(v45 + 24) = v41;
  *(v45 + 32) = v43;
  *(v45 + 40) = 0;
  v46 = sub_1D2877848();
  v48 = v47;
  v49 = v74;
  v50 = &v74[*(v15 + 44)];
  sub_1D252C65C(a1, v50);
  v51 = (v50 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD568) + 36));
  *v51 = v46;
  v51[1] = v48;
  sub_1D22EC9BC(v44, v49, &qword_1EC6DD540);
  v52 = sub_1D2877818();
  v54 = v53;
  v55 = v77;
  v56 = &v77[*(v18 + 44)];
  sub_1D252CAE0(a1, v56);
  v57 = (v56 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD570) + 36));
  *v57 = v52;
  v57[1] = v54;
  sub_1D22EC9BC(v49, v55, &qword_1EC6DD548);
  v58 = v76;
  sub_1D22EC9BC(v55, v76, &qword_1EC6DD550);
  v59 = v58;
  v60 = v81;
  sub_1D22EC9BC(v59, v81, &qword_1EC6DD558);
  v61 = v78;
  sub_1D252A770(v78);
  sub_1D252B6D8(v88);
  v62 = v82;
  sub_1D22BD1D0(v60, v82, &qword_1EC6DD558);
  v63 = v79;
  sub_1D22BD1D0(v61, v79, &qword_1EC6DD530);
  v85 = v88[2];
  v86 = v88[3];
  v87[0] = v89[0];
  *(v87 + 9) = *(v89 + 9);
  v83 = v88[0];
  v84 = v88[1];
  v64 = v80;
  sub_1D22BD1D0(v62, v80, &qword_1EC6DD558);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD578);
  sub_1D22BD1D0(v63, v64 + *(v65 + 48), &qword_1EC6DD530);
  v66 = (v64 + *(v65 + 64));
  v68 = v86;
  v67 = v87[0];
  v90[3] = v86;
  v91[0] = v87[0];
  v69 = *(v87 + 9);
  *(v91 + 9) = *(v87 + 9);
  v70 = v84;
  v90[1] = v84;
  v90[2] = v85;
  v71 = v83;
  v90[0] = v83;
  v66[2] = v85;
  v66[3] = v68;
  v66[4] = v67;
  *(v66 + 73) = v69;
  *v66 = v71;
  v66[1] = v70;
  sub_1D22BD1D0(v90, &v92, &qword_1EC6DD580);
  sub_1D22BD238(v61, &qword_1EC6DD530);
  sub_1D22BD238(v81, &qword_1EC6DD558);
  v94[0] = v85;
  v94[1] = v86;
  v95[0] = v87[0];
  *(v95 + 9) = *(v87 + 9);
  v92 = v83;
  v93 = v84;
  sub_1D22BD238(&v92, &qword_1EC6DD580);
  sub_1D22BD238(v63, &qword_1EC6DD530);
  return sub_1D22BD238(v82, &qword_1EC6DD558);
}

uint64_t sub_1D252C398(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD650);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v9 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD658);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - v6;
  if (*(a1 + 41) == 1)
  {
    if (qword_1EC6D7778 != -1)
    {
      swift_once();
    }

    *v7 = qword_1EC6E3AF0;
    *(v7 + 4) = 256;
    swift_storeEnumTagMultiPayload();
    sub_1D2870F78();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC740);
    sub_1D22BB9D8(&qword_1ED89E088, &qword_1EC6DC740);
    sub_1D22BB9D8(&qword_1ED89E080, &qword_1EC6DD650);
    return sub_1D2875AF8();
  }

  else
  {
    sub_1D28777A8();
    *&v4[*(v2 + 56)] = 256;
    sub_1D22BD1D0(v4, v7, &qword_1EC6DD650);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC740);
    sub_1D22BB9D8(&qword_1ED89E088, &qword_1EC6DC740);
    sub_1D22BB9D8(&qword_1ED89E080, &qword_1EC6DD650);
    sub_1D2875AF8();
    return sub_1D22BD238(v4, &qword_1EC6DD650);
  }
}

uint64_t sub_1D252C65C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D2875738();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v42 - v9;
  v11 = sub_1D2874DB8();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD630);
  v45 = *(v15 - 8);
  v46 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v42 - v16);
  if (sub_1D252A3C8())
  {
    sub_1D2874DA8();
    type metadata accessor for GridPickerItemView();
    sub_1D28745B8();
    v18 = v47;
    v19 = v49;
    v44 = a2;
    v20 = v50;
    v21 = v51;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD638);
    v43 = v7;
    v23 = v4;
    v24 = v22;
    v25 = v48;
    (*(v12 + 16))(v17 + *(v22 + 52), v14, v11);
    *v17 = v18 * 0.5;
    v17[1] = v18;
    *(v17 + 2) = v25;
    *(v17 + 3) = v19;
    *(v17 + 4) = v20;
    *(v17 + 5) = v21;
    *(v17 + *(v24 + 56)) = 256;
    v26 = sub_1D2877848();
    v28 = v27;
    (*(v12 + 8))(v14, v11);
    v29 = (v17 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD640) + 36));
    *v29 = v26;
    v29[1] = v28;
    v30 = a1[3];
    v31 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v30);
    v32 = (*(v31 + 16))(v30, v31);
    v34 = v33;
    v35 = (v17 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD648) + 52));
    *v35 = v32;
    v35[1] = v34;
    sub_1D2875728();
    (*(v5 + 16))(v43, v10, v23);
    sub_1D252F5CC(&qword_1EC6D7918, MEMORY[0x1E697F400]);
    v36 = sub_1D2874988();
    (*(v5 + 8))(v10, v23);
    v37 = v46;
    *(v17 + *(v46 + 36)) = v36;
    v38 = v44;
    sub_1D22EC9BC(v17, v44, &qword_1EC6DD630);
    return (*(v45 + 56))(v38, 0, 1, v37);
  }

  else
  {
    v40 = v46;
    v41 = *(v45 + 56);

    return v41(a2, 1, 1, v40);
  }
}

uint64_t sub_1D252CAE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE860);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v47 - v5;
  v7 = sub_1D2875738();
  v53 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v52 = v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v47 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD5F8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v47 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD600);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v47 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD608);
  v54 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v51 = v47 - v19;
  if ((sub_1D252A3C8() & 1) != 0 && *(a1 + 40) == 1)
  {
    v47[1] = v4;
    v48 = a2;
    sub_1D2877198();
    v50 = v6;
    v20 = *MEMORY[0x1E6981698];
    v21 = sub_1D2877208();
    v49 = v15;
    v22 = v21;
    v23 = *(v21 - 8);
    (*(v23 + 104))(v14, v20, v21);
    (*(v23 + 56))(v14, 0, 1, v22);
    v24 = sub_1D28771E8();

    sub_1D22BD238(v14, &qword_1EC6DD5F8);
    v25 = sub_1D28763D8();
    KeyPath = swift_getKeyPath();
    v55 = v24;
    v56 = KeyPath;
    v57 = v25;
    sub_1D2876438();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9FE0);
    sub_1D22F5C24();
    sub_1D2876758();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD610);
    sub_1D2874DA8();
    v27 = sub_1D2877848();
    v29 = v28;
    v30 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD618) + 36)];
    v31 = sub_1D28770A8();
    v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD620) + 36);
    v33 = *MEMORY[0x1E6981DC0];
    v34 = sub_1D2877988();
    v35 = &v30[v32];
    v36 = v49;
    (*(*(v34 - 8) + 104))(v35, v33, v34);
    *v30 = v31;
    *(v30 + 4) = 256;
    v37 = &v30[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD628) + 36)];
    v38 = v50;
    *v37 = v27;
    v37[1] = v29;
    sub_1D2875728();
    v39 = v53;
    (*(v53 + 16))(v52, v11, v7);
    sub_1D252F5CC(&qword_1EC6D7918, MEMORY[0x1E697F400]);
    v40 = sub_1D2874988();
    (*(v39 + 8))(v11, v7);
    *&v17[*(v36 + 36)] = v40;
    v41 = *MEMORY[0x1E697E708];
    v42 = sub_1D2874E88();
    (*(*(v42 - 8) + 104))(v38, v41, v42);
    sub_1D252F5CC(&qword_1ED89DE70, MEMORY[0x1E697E730]);
    result = sub_1D2877F98();
    if (result)
    {
      sub_1D252EA08();
      sub_1D22BB9D8(&qword_1ED89CBF0, &unk_1EC6DE860);
      v44 = v51;
      sub_1D28769B8();
      sub_1D22BD238(v38, &unk_1EC6DE860);
      sub_1D22BD238(v17, &qword_1EC6DD600);
      v45 = v48;
      (*(v54 + 32))(v48, v44, v18);
      return (*(v54 + 56))(v45, 0, 1, v18);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v46 = *(v54 + 56);

    return v46(a2, 1, 1, v18);
  }

  return result;
}

uint64_t sub_1D252D1E0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v70 = a1;
  CharacterPickerItem = type metadata accessor for CreateCharacterPickerItem();
  MEMORY[0x1EEE9AC00](CharacterPickerItem);
  v58 = v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for CharacterAsset();
  MEMORY[0x1EEE9AC00](v69);
  v68 = v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D28718F8();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v57[2] = v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D2878048();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v57[1] = v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_1D28758D8();
  v64 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v10 = v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for GridPickerItemView();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD4F8);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v57 - v16;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD500);
  v60 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v19 = v57 - v18;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD508);
  MEMORY[0x1EEE9AC00](v67);
  v63 = v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v65 = v57 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v66 = v57 - v24;
  sub_1D252EFF0(v2, v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GridPickerItemView);
  v25 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v26 = swift_allocObject();
  sub_1D252F058(v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v25, type metadata accessor for GridPickerItemView);
  v71 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD510);
  v27 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DD518);
  v28 = sub_1D252DCB0();
  v72 = v27;
  v73 = MEMORY[0x1E69E6370];
  v74 = v28;
  v75 = MEMORY[0x1E69E6388];
  swift_getOpaqueTypeConformance2();
  sub_1D2877368();
  v29 = sub_1D22BB9D8(&unk_1ED89D138, &qword_1EC6DD4F8);
  v30 = sub_1D252DD68();
  sub_1D28767B8();
  (*(v15 + 8))(v17, v14);
  v31 = *(v2 + 56);
  v32 = *(v2 + 64);
  v72 = *(v2 + 48);
  v73 = v31;
  LOBYTE(v74) = v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA318);
  MEMORY[0x1D389FF60](&v76, v33);
  if (v76 == 1)
  {
    sub_1D2875888();
    v34 = v62;
  }

  else
  {
    v72 = MEMORY[0x1E69E7CC0];
    sub_1D252F5CC(&qword_1ED89D678, MEMORY[0x1E697F5E0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD1C8);
    sub_1D22BB9D8(&qword_1ED89CEC8, &qword_1EC6DD1C8);
    v34 = v62;
    sub_1D2879088();
  }

  v72 = v14;
  v73 = &type metadata for PickerItemButtonStyle;
  v74 = v29;
  v75 = v30;
  swift_getOpaqueTypeConformance2();
  v35 = v63;
  v36 = v61;
  sub_1D2876918();
  (*(v64 + 8))(v10, v34);
  (*(v60 + 8))(v19, v36);
  v37 = sub_1D252A648();
  v38 = v65;
  if (v37)
  {
    v39 = *(v2 + 24);
    v40 = *(v2 + 32);
    __swift_project_boxed_opaque_existential_1(v2, v39);
    v41 = (*(v40 + 24))(v39, v40);
    if (!v42)
    {
      v41 = 0;
      v42 = 0xE000000000000000;
    }
  }

  else
  {
    v41 = 0;
    v42 = 0xE000000000000000;
  }

  v72 = v41;
  v73 = v42;
  sub_1D22BD06C();
  v43 = sub_1D2876698();
  v45 = v44;
  v47 = v46;
  sub_1D2874F28();
  sub_1D22ED6E0(v43, v45, v47 & 1);

  sub_1D22BD238(v35, &qword_1EC6DD508);
  if (sub_1D252A648())
  {
    sub_1D2877FE8();
    sub_1D28718C8();
    v48 = sub_1D28780E8();
LABEL_11:
    v52 = v49;
    goto LABEL_12;
  }

  v50 = *(v2 + 24);
  v51 = *(v2 + 32);
  __swift_project_boxed_opaque_existential_1(v2, v50);
  v48 = (*(v51 + 24))(v50, v51);
  if (v49)
  {
    goto LABEL_11;
  }

  v48 = 0;
  v52 = 0xE000000000000000;
LABEL_12:
  v53 = v66;
  v72 = v48;
  v73 = v52;
  sub_1D2874F18();

  sub_1D22BD238(v38, &qword_1EC6DD508);
  sub_1D22D7044(v2, &v72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A48);
  v54 = v68;
  if (swift_dynamicCast())
  {
    v55 = type metadata accessor for CharacterAsset;
LABEL_16:
    sub_1D252F0C0(v54, v55);
    goto LABEL_17;
  }

  sub_1D22D7044(v2, &v72);
  v54 = v58;
  if (swift_dynamicCast())
  {
    v55 = type metadata accessor for CreateCharacterPickerItem;
    goto LABEL_16;
  }

LABEL_17:
  sub_1D2874F48();

  return sub_1D22BD238(v53, &qword_1EC6DD508);
}

uint64_t sub_1D252DC2C()
{
  type metadata accessor for GridPickerItemView();

  return sub_1D252DBC8();
}

unint64_t sub_1D252DCB0()
{
  result = qword_1ED89DB60;
  if (!qword_1ED89DB60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DD518);
    sub_1D22BB9D8(&qword_1ED89D0A8, &qword_1EC6DD520);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DB60);
  }

  return result;
}

unint64_t sub_1D252DD68()
{
  result = qword_1ED8A11D0;
  if (!qword_1ED8A11D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8A11D0);
  }

  return result;
}

uint64_t sub_1D252DDBC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1D2875F28();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD6A0);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v23 - v11;
  sub_1D2875F38();
  if (sub_1D2875F48())
  {
    v13 = 0.9;
  }

  else
  {
    v13 = 1.0;
  }

  sub_1D2877AE8();
  v15 = v14;
  v17 = v16;
  (*(v3 + 32))(v9, v5, v2);
  v18 = &v9[*(v7 + 44)];
  *v18 = v13;
  *(v18 + 1) = v13;
  *(v18 + 2) = v15;
  *(v18 + 3) = v17;
  sub_1D2875F48();
  sub_1D22EC9BC(v9, v12, &qword_1EC6DD6A0);
  v19 = sub_1D2877948();
  v20 = sub_1D2875F48();
  sub_1D22EC9BC(v12, a1, &qword_1EC6DD6A0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD6A8);
  v22 = a1 + *(result + 36);
  *v22 = v19;
  *(v22 + 8) = v20 & 1;
  return result;
}

double sub_1D252DFD0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v39 = a1;
  v41 = a2;
  CharacterPickerItem = type metadata accessor for CreateCharacterPickerItem();
  MEMORY[0x1EEE9AC00](CharacterPickerItem);
  v38 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v37 = &v36 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v36 - v9;
  v11 = type metadata accessor for CharacterAsset();
  MEMORY[0x1EEE9AC00](v11);
  v40 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v36 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v36 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD6D0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v36 - v20;
  sub_1D22D7044(v3, v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A48);
  if (swift_dynamicCast())
  {
    v22 = type metadata accessor for CharacterAsset;
    v23 = v18;
LABEL_5:
    sub_1D252F0C0(v23, v22);
    v24 = 0;
    goto LABEL_7;
  }

  sub_1D22D7044(v3, v42);
  if (swift_dynamicCast())
  {
    v22 = type metadata accessor for CreateCharacterPickerItem;
    v23 = v10;
    goto LABEL_5;
  }

  v24 = 1;
LABEL_7:
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD6D8);
  (*(*(v25 - 8) + 16))(v21, v39, v25);
  v26 = &v21[*(v19 + 36)];
  *v26 = 0;
  v26[8] = 1;
  v26[9] = v24;
  sub_1D22D7044(v3, v42);
  if (swift_dynamicCast())
  {
    sub_1D252F0C0(v15, type metadata accessor for CharacterAsset);
  }

  else
  {
    sub_1D22D7044(v3, v42);
    v27 = v37;
    if (swift_dynamicCast())
    {
      sub_1D252F0C0(v27, type metadata accessor for CreateCharacterPickerItem);
    }
  }

  v28 = v40;
  sub_1D22D7044(v3, v42);
  if (swift_dynamicCast())
  {
    v29 = type metadata accessor for CharacterAsset;
    v30 = v28;
LABEL_15:
    sub_1D252F0C0(v30, v29);
    goto LABEL_16;
  }

  sub_1D22D7044(v3, v42);
  v31 = v38;
  if (swift_dynamicCast())
  {
    v29 = type metadata accessor for CreateCharacterPickerItem;
    v30 = v31;
    goto LABEL_15;
  }

LABEL_16:
  sub_1D2877848();
  sub_1D28748C8();
  v32 = v41;
  sub_1D22EC9BC(v21, v41, &qword_1EC6DD6D0);
  v33 = (v32 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD6E0) + 36));
  v34 = v42[1];
  *v33 = v42[0];
  v33[1] = v34;
  result = *&v43;
  v33[2] = v43;
  return result;
}

uint64_t sub_1D252E478@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD6B0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v16 - v5;
  v7 = sub_1D28763C8();
  KeyPath = swift_getKeyPath();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD6B8);
  (*(*(v9 - 8) + 16))(v6, a1, v9);
  v10 = &v6[*(v4 + 36)];
  *v10 = KeyPath;
  v10[1] = v7;
  sub_1D2876418();
  sub_1D252F374();
  sub_1D2876758();
  sub_1D22BD238(v6, &qword_1EC6DD6B0);
  if (qword_1ED89D260 != -1)
  {
    swift_once();
  }

  v11 = qword_1ED8B0018;
  *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD6C0) + 36)) = v11;
  v12 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD6C8) + 36));
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9FF0) + 28);
  sub_1D2870F78();
  sub_1D2875968();
  v14 = sub_1D2875998();
  (*(*(v14 - 8) + 56))(v12 + v13, 0, 1, v14);
  result = swift_getKeyPath();
  *v12 = result;
  return result;
}

unint64_t sub_1D252E6A4()
{
  result = qword_1ED89D810;
  if (!qword_1ED89D810)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DD5B0);
    sub_1D252E75C();
    sub_1D22BB9D8(&qword_1ED89D2B8, &qword_1EC6DA270);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D810);
  }

  return result;
}

unint64_t sub_1D252E75C()
{
  result = qword_1ED89D868;
  if (!qword_1ED89D868)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DD5B8);
    sub_1D252E814();
    sub_1D22BB9D8(&qword_1ED89D310, &qword_1EC6DA0F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D868);
  }

  return result;
}

unint64_t sub_1D252E814()
{
  result = qword_1ED89D910;
  if (!qword_1ED89D910)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DD5C0);
    sub_1D252E8CC();
    sub_1D22BB9D8(&qword_1ED89D2E8, &unk_1EC6E1030);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D910);
  }

  return result;
}

unint64_t sub_1D252E8CC()
{
  result = qword_1ED89DA98;
  if (!qword_1ED89DA98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DD5C8);
    sub_1D252E984();
    sub_1D22BB9D8(&qword_1ED89D370, &unk_1EC6E0FB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DA98);
  }

  return result;
}

unint64_t sub_1D252E984()
{
  result = qword_1ED89DD00;
  if (!qword_1ED89DD00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DD5D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DD00);
  }

  return result;
}

unint64_t sub_1D252EA08()
{
  result = qword_1EC6D7AB0;
  if (!qword_1EC6D7AB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DD600);
    sub_1D252EAC0();
    sub_1D22BB9D8(&qword_1ED89D4A0, &qword_1EC6DB918);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7AB0);
  }

  return result;
}

unint64_t sub_1D252EAC0()
{
  result = qword_1EC6D7B90;
  if (!qword_1EC6D7B90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DD618);
    sub_1D252EB78();
    sub_1D22BB9D8(&qword_1EC6D78B0, &qword_1EC6DD628);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7B90);
  }

  return result;
}

unint64_t sub_1D252EB78()
{
  result = qword_1EC6D7D30;
  if (!qword_1EC6D7D30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DD610);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D9FE0);
    sub_1D22F5C24();
    swift_getOpaqueTypeConformance2();
    sub_1D22BB9D8(&qword_1ED89D378, &qword_1EC6DC0A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7D30);
  }

  return result;
}

unint64_t sub_1D252EC6C()
{
  result = qword_1ED89D530;
  if (!qword_1ED89D530)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DD668);
    sub_1D252ECF8();
    sub_1D252EE80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D530);
  }

  return result;
}

unint64_t sub_1D252ECF8()
{
  result = qword_1ED89D610;
  if (!qword_1ED89D610)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DD678);
    sub_1D252EDA8(&qword_1ED89DBE8, &qword_1EC6DD670, &unk_1D2891078, sub_1D252EE2C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D610);
  }

  return result;
}

uint64_t sub_1D252EDA8(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D252EE2C()
{
  result = qword_1ED8A6438[0];
  if (!qword_1ED8A6438[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED8A6438);
  }

  return result;
}

unint64_t sub_1D252EE80()
{
  result = qword_1ED89D8B8;
  if (!qword_1ED89D8B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DD680);
    sub_1D252EF0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D8B8);
  }

  return result;
}

unint64_t sub_1D252EF0C()
{
  result = qword_1ED89D9C0;
  if (!qword_1ED89D9C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DD688);
    sub_1D252EDA8(&qword_1ED89DBC0, &qword_1EC6DD690, &unk_1D2891098, sub_1D250C854);
    sub_1D22BB9D8(&qword_1ED89DF70, &qword_1EC6DD698);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D9C0);
  }

  return result;
}

uint64_t sub_1D252EFF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D252F058(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D252F0C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D252F130(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D252F178(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

unint64_t sub_1D252F1E0()
{
  result = qword_1ED89DCB8;
  if (!qword_1ED89DCB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DD508);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DD4F8);
    sub_1D22BB9D8(&unk_1ED89D138, &qword_1EC6DD4F8);
    sub_1D252DD68();
    swift_getOpaqueTypeConformance2();
    sub_1D252F5CC(&qword_1ED89D2B0, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DCB8);
  }

  return result;
}

unint64_t sub_1D252F374()
{
  result = qword_1EC6D7D98;
  if (!qword_1EC6D7D98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DD6B0);
    sub_1D22BB9D8(&qword_1EC6D77D8, &qword_1EC6DD6B8);
    sub_1D22BB9D8(&qword_1ED89D2E8, &unk_1EC6E1030);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7D98);
  }

  return result;
}

unint64_t sub_1D252F458()
{
  result = qword_1ED89DAA8;
  if (!qword_1ED89DAA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DD6A8);
    sub_1D252F510();
    sub_1D22BB9D8(&qword_1ED89D680, &qword_1EC6DA080);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DAA8);
  }

  return result;
}

unint64_t sub_1D252F510()
{
  result = qword_1ED89DD10;
  if (!qword_1ED89DD10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DD6A0);
    sub_1D252F5CC(&qword_1ED89D398, MEMORY[0x1E697C8D0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DD10);
  }

  return result;
}

uint64_t sub_1D252F5CC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D252F614()
{
  result = qword_1EC6D7B98;
  if (!qword_1EC6D7B98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DD6C8);
    sub_1D252F6CC();
    sub_1D22BB9D8(&qword_1ED89D2F8, &qword_1EC6D9FF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7B98);
  }

  return result;
}

unint64_t sub_1D252F6CC()
{
  result = qword_1EC6D7D38;
  if (!qword_1EC6D7D38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DD6C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DD6B0);
    sub_1D252F374();
    swift_getOpaqueTypeConformance2();
    sub_1D22BB9D8(&qword_1ED89D370, &unk_1EC6E0FB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7D38);
  }

  return result;
}

unint64_t sub_1D252F7C0()
{
  result = qword_1ED89DB00;
  if (!qword_1ED89DB00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DD6E0);
    sub_1D252F84C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DB00);
  }

  return result;
}

unint64_t sub_1D252F84C()
{
  result = qword_1ED89DDA8;
  if (!qword_1ED89DDA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DD6D0);
    sub_1D22BB9D8(&qword_1ED89D468, &qword_1EC6DD6D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DDA8);
  }

  return result;
}

uint64_t type metadata accessor for CarouselFace()
{
  result = qword_1EC6DD6E8;
  if (!qword_1EC6DD6E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D252F978()
{
  type metadata accessor for PhotosPersonAsset();
  if (v0 <= 0x3F)
  {
    sub_1D252F9FC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D252F9FC()
{
  if (!qword_1EC6DD6F8)
  {
    type metadata accessor for GeneratedPreviewOptions(255);
    type metadata accessor for FacePickerPersistentStorage.GeneratedPreviewArchive(255);
    sub_1D252FA78();
    v0 = sub_1D2877EC8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC6DD6F8);
    }
  }
}

unint64_t sub_1D252FA78()
{
  result = qword_1EC6DD700;
  if (!qword_1EC6DD700)
  {
    type metadata accessor for GeneratedPreviewOptions(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DD700);
  }

  return result;
}

uint64_t sub_1D252FAD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GeneratedPreviewOptions(0);
  MEMORY[0x1EEE9AC00](v4);
  v32 = (&v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_1D2872008();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC0F0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v31 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v30 = &v29 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v29 - v15;
  v17 = type metadata accessor for FacePickerPersistentStorage.GeneratedPreviewArchive(0);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D22BD1D0(a1, &v33, &qword_1EC6DA470);
  if (!v34)
  {
    return sub_1D22BD238(&v33, &qword_1EC6DA470);
  }

  sub_1D22D79FC(&v33, v35);
  sub_1D22D7044(v35, &v33);
  v21 = *(v4 + 20);
  sub_1D2871FC8();
  v22 = MEMORY[0x1D389AA00](a2 + v21, v9);
  (*(v7 + 8))(v9, v6);
  if (v22)
  {
    v23 = 1;
  }

  else
  {
    v23 = sub_1D2871F78();
  }

  sub_1D2495594(&v33, v23 & 1, v16);
  v25 = *(v18 + 56);
  v25(v16, 0, 1, v17);
  sub_1D252FF98(v16, v20);
  v26 = v30;
  sub_1D252FFFC(v20, v30, type metadata accessor for FacePickerPersistentStorage.GeneratedPreviewArchive);
  v25(v26, 0, 1, v17);
  v27 = v32;
  sub_1D252FFFC(a2, v32, type metadata accessor for GeneratedPreviewOptions);
  v28 = v31;
  sub_1D22BD1D0(v26, v31, &qword_1EC6DC0F0);
  type metadata accessor for CarouselFace();
  sub_1D25CF81C(v28, v27);
  sub_1D22BD238(v26, &qword_1EC6DC0F0);
  sub_1D2530064(v20);
  return __swift_destroy_boxed_opaque_existential_0(v35);
}

void sub_1D252FF00(uint64_t *a1@<X8>)
{
  type metadata accessor for PhotosPersonAsset();
  v2 = objc_opt_self();
  v3 = sub_1D2878068();
  v4 = [v2 uuidFromLocalIdentifier_];

  if (v4)
  {
    v5 = sub_1D28780A8();
    v7 = v6;

    *a1 = v5;
    a1[1] = v7;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1D252FF98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FacePickerPersistentStorage.GeneratedPreviewArchive(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D252FFFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D2530064(uint64_t a1)
{
  v2 = type metadata accessor for FacePickerPersistentStorage.GeneratedPreviewArchive(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D25300C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD708);
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D253018C, 0, 0);
}

uint64_t sub_1D253018C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA5A0);
  sub_1D2878658();
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_1D2530258;
  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6D9C8](v0 + 16, 0, 0, v2);
}

uint64_t sub_1D2530258()
{

  return MEMORY[0x1EEE6DFA0](sub_1D2530354, 0, 0);
}

uint64_t sub_1D2530354()
{
  v1 = v0[2];
  v0[9] = v1;
  if (v1)
  {
    v0[10] = v0[3];
    v5 = (v1 + *v1);
    v2 = swift_task_alloc();
    v0[11] = v2;
    *v2 = v0;
    v2[1] = sub_1D25304A4;

    return v5();
  }

  else
  {
    (*(v0[6] + 8))(v0[7], v0[5]);

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_1D25304A4()
{
  v1 = *v0;
  v2 = *(*v0 + 72);
  v3 = *v0;

  sub_1D22A576C(v2);
  v4 = swift_task_alloc();
  *(v1 + 64) = v4;
  *v4 = v3;
  v4[1] = sub_1D2530258;
  v5 = *(v1 + 40);

  return MEMORY[0x1EEE6D9C8](v1 + 16, 0, 0, v5);
}

uint64_t sub_1D2530648()
{
  v1 = OBJC_IVAR____TtC23ImagePlaygroundInternal17AsyncClosureQueue_stream;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA5A0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC23ImagePlaygroundInternal17AsyncClosureQueue_continuation;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDE60);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AsyncClosureQueue()
{
  result = qword_1ED8A3148;
  if (!qword_1ED8A3148)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D2530790()
{
  sub_1D2530894(319, &qword_1ED89CE30, MEMORY[0x1E69E8698]);
  if (v0 <= 0x3F)
  {
    sub_1D2530894(319, &qword_1ED89CE38, MEMORY[0x1E69E8660]);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1D2530894(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DA5A8);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D2530900()
{
  swift_getKeyPath();
  sub_1D249C704();
  sub_1D28719E8();

  return sub_1D2870F68();
}

uint64_t sub_1D2530974()
{
  swift_getKeyPath();
  sub_1D249C704();
  sub_1D28719E8();

  swift_getKeyPath();
  sub_1D2871A08();

  *(v0 + 16) = MEMORY[0x1E69E7CC0];

  swift_getKeyPath();
  sub_1D28719F8();
}

uint64_t sub_1D2530A5C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1D2873CB8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2872658();
  swift_retain_n();
  v8 = sub_1D2873CA8();
  v9 = sub_1D2878A08();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v20 = a1;
    v11 = v10;
    v12 = swift_slowAlloc();
    v22 = v12;
    *v11 = 136315650;
    v21 = v1;
    sub_1D2870F78();
    v13 = sub_1D2878118();
    v15 = sub_1D23D7C84(v13, v14, &v22);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_1D23D7C84(0xD000000000000015, 0x80000001D28B99E0, &v22);
    *(v11 + 22) = 2048;
    swift_getKeyPath();
    v21 = v1;
    sub_1D249C704();
    sub_1D28719E8();

    v16 = *(*(v1 + 16) + 16);

    *(v11 + 24) = v16;

    _os_log_impl(&dword_1D226E000, v8, v9, "%s - %s, count: %ld", v11, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D38A3520](v12, -1, -1);
    v17 = v11;
    a1 = v20;
    MEMORY[0x1D38A3520](v17, -1, -1);
  }

  else
  {
  }

  (*(v5 + 8))(v7, v4);
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  *(&v20 - 2) = v2;
  *(&v20 - 1) = a1;
  v22 = v2;
  sub_1D249C704();
  sub_1D28719D8();
}

uint64_t sub_1D2530D98@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D249C704();
  sub_1D28719E8();

  *a2 = *(v3 + 16);
  return sub_1D2870F68();
}

uint64_t sub_1D2530E14()
{
  swift_getKeyPath();
  sub_1D249C704();
  sub_1D28719D8();
}

uint64_t sub_1D2530EB0()
{

  v1 = OBJC_IVAR____TtC23ImagePlaygroundInternal38ImageConditioningRepresentationsSource___observationRegistrar;
  v2 = sub_1D2871A28();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ImageConditioningRepresentationsSource()
{
  result = qword_1ED8A54C8;
  if (!qword_1ED8A54C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D2530FA8()
{
  result = sub_1D2871A28();
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

uint64_t sub_1D2531048@<X0>(uint64_t *a1@<X8>)
{
  v2 = swift_allocObject();
  *(v2 + 16) = MEMORY[0x1E69E7CC0];
  sub_1D2871A18();

  *a1 = v2;
  return result;
}

uint64_t sub_1D25310B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5, int a6)
{
  v39 = a1;
  v40 = a2;
  swift_getKeyPath();
  *&v44 = v6;
  sub_1D249C704();
  sub_1D28719E8();

  if (!*(*(v6 + 16) + 16))
  {
    return MEMORY[0x1E69E7CC0];
  }

  v37 = a6;
  v36 = a5;
  swift_getKeyPath();
  *&v44 = v6;
  sub_1D28719E8();

  v10 = *(v6 + 16);
  v11 = *(v10 + 16);
  result = sub_1D2870F68();
  if (!v11)
  {
    v15 = MEMORY[0x1E69E7CC0];
LABEL_23:

    if ((v37 & 1) == 0)
    {
      v33 = *(v15 + 16);
      if (v33 >= v36)
      {
        if (v36 < 0)
        {
          goto LABEL_30;
        }

        if (v33 != v36)
        {
          sub_1D268E5BC(v15, v15 + 32, 0, (2 * v36) | 1);
          v35 = v34;

          return v35;
        }
      }
    }

    return v15;
  }

  v13 = 0;
  v14 = v10 + 32;
  v15 = MEMORY[0x1E69E7CC0];
  v38 = a3;
  while (v13 < *(v10 + 16))
  {
    sub_1D22D7044(v14, &v44);
    v17 = v45;
    v16 = v46;
    __swift_project_boxed_opaque_existential_1(&v44, v45);
    v18 = (*(v16 + 48))(v17, v16);
    if (v19)
    {
      v20 = v18;
      v21 = v19;

      if (v20 == v39 && v21 == v40)
      {
      }

      else
      {
        v23 = sub_1D2879618();

        if ((v23 & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      if (a3(&v44))
      {
        sub_1D22D79FC(&v44, v41);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v47 = v15;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D23D8528(0, *(v15 + 16) + 1, 1);
          v15 = v47;
        }

        v26 = *(v15 + 16);
        v25 = *(v15 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_1D23D8528((v25 > 1), v26 + 1, 1);
        }

        v27 = v42;
        v28 = v43;
        v29 = __swift_mutable_project_boxed_opaque_existential_1(v41, v42);
        MEMORY[0x1EEE9AC00](v29);
        v31 = &v36 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v32 + 16))(v31);
        sub_1D2564390(v26, v31, &v47, v27, v28);
        result = __swift_destroy_boxed_opaque_existential_0(v41);
        v15 = v47;
        a3 = v38;
        goto LABEL_5;
      }
    }

LABEL_4:
    result = __swift_destroy_boxed_opaque_existential_0(&v44);
LABEL_5:
    ++v13;
    v14 += 40;
    if (v11 == v13)
    {
      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t type metadata accessor for CarouselFaceView()
{
  result = qword_1EC6DD710;
  if (!qword_1EC6DD710)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D253149C()
{
  sub_1D25315F4(319, &qword_1ED89E028, type metadata accessor for ObservableDebugSettings, MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for CarouselFace();
    if (v1 <= 0x3F)
    {
      sub_1D25315F4(319, &qword_1ED8A52A0, type metadata accessor for PlaygroundImage, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1D24BA3D8();
        if (v3 <= 0x3F)
        {
          sub_1D24BB2F4();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1D25315F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_1D253167C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 112))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D25316C4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 112) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 112) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

double sub_1D2531760()
{
  v1 = v0;
  v2 = sub_1D2875628();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D2872068();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 104))(v10, *MEMORY[0x1E696E398], v6, v8);
  v11 = sub_1D2872058();
  (*(v7 + 8))(v10, v6);
  if (v11)
  {
    if (*(v1 + 8) == 1)
    {
      v17 = *v1;
      sub_1D2870F78();
    }

    else
    {
      sub_1D2870F78();
      sub_1D2878A28();
      v12 = sub_1D28762E8();
      sub_1D2873BE8();

      sub_1D2875618();
      swift_getAtKeyPath();

      (*(v3 + 8))(v5, v2);
    }

    swift_getKeyPath();
    if (qword_1ED8A4928 != -1)
    {
      swift_once();
    }

    v17 = off_1ED8A4930;
    sub_1D2534844(&qword_1ED8A4920, type metadata accessor for DebugSettings);
    sub_1D28719E8();
    sub_1D2870F78();
    v13 = sub_1D23CE580();

    if (v13)
    {
      return *(v1 + *(type metadata accessor for CarouselFaceView() + 28)) / 5.0;
    }
  }

  v15 = type metadata accessor for CarouselFaceView();
  result = 36.0;
  if (*(v1 + *(v15 + 32) + 9) < 0)
  {
    return 16.0;
  }

  return result;
}

double sub_1D2531A8C()
{
  v1 = v0;
  v2 = sub_1D2875628();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D2872068();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 104))(v10, *MEMORY[0x1E696E398], v6, v8);
  v11 = sub_1D2872058();
  (*(v7 + 8))(v10, v6);
  if (v11)
  {
    if (*(v1 + 8) == 1)
    {
      v17 = *v1;
      sub_1D2870F78();
    }

    else
    {
      sub_1D2870F78();
      sub_1D2878A28();
      v12 = sub_1D28762E8();
      sub_1D2873BE8();

      sub_1D2875618();
      swift_getAtKeyPath();

      (*(v3 + 8))(v5, v2);
    }

    swift_getKeyPath();
    if (qword_1ED8A4928 != -1)
    {
      swift_once();
    }

    v17 = off_1ED8A4930;
    sub_1D2534844(&qword_1ED8A4920, type metadata accessor for DebugSettings);
    sub_1D28719E8();
    sub_1D2870F78();
    v13 = sub_1D23CE580();

    if (v13)
    {
      return *(v1 + *(type metadata accessor for CarouselFaceView() + 28)) * 0.25;
    }
  }

  v15 = type metadata accessor for CarouselFaceView();
  result = 55.0;
  if (*(v1 + *(v15 + 32) + 9) < 0)
  {
    return 28.0;
  }

  return result;
}

uint64_t sub_1D2531DBC@<X0>(uint64_t a1@<X8>)
{
  v48 = a1;
  v2 = type metadata accessor for CarouselFaceView();
  v47 = *(v2 - 8);
  v46 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v45 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D28756B8();
  v41 = *(v4 - 8);
  v42 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v40 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D28771B8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD818);
  v11 = *(v10 - 8);
  v43 = v10;
  v44 = v11;
  MEMORY[0x1EEE9AC00](v10);
  v39 = &v35 - v12;
  sub_1D262D4E8();
  sub_1D2877188();
  (*(v7 + 104))(v9, *MEMORY[0x1E6981630], v6);
  v37 = sub_1D2877228();

  (*(v7 + 8))(v9, v6);
  v36 = sub_1D2875DA8();
  v35 = sub_1D2876338();
  LOBYTE(v91[0]) = 1;
  v38 = v1;
  sub_1D2531A8C();
  sub_1D2531A8C();
  sub_1D2877848();
  sub_1D28748C8();
  *(v57 + 5) = *&v57[7];
  *(&v57[2] + 5) = *&v57[9];
  *(&v57[4] + 5) = *&v57[11];
  v13 = sub_1D2877848();
  v15 = v14;
  v16 = sub_1D28770A8();
  sub_1D28745B8();
  v17 = *&v57[13];
  LODWORD(v9) = v58;
  v18 = v59;
  v19 = v60;
  v20 = v61;
  v21 = v62;
  v22 = sub_1D2877848();
  *&v65 = v17 * 0.5;
  *(&v65 + 1) = v17;
  *&v66 = __PAIR64__(v18, v9);
  *(&v66 + 1) = v19;
  *&v67 = v20;
  *(&v67 + 1) = v21;
  *&v68 = v16;
  WORD4(v68) = 256;
  HIWORD(v68) = v64;
  *(&v68 + 10) = v63;
  *&v69 = v22;
  *(&v69 + 1) = v23;
  *&v70 = v13;
  *(&v70 + 1) = v15;
  v89 = v69;
  v90 = v70;
  v85 = v65;
  v86 = v66;
  v87 = v67;
  v88 = v68;
  v71[0] = v17 * 0.5;
  v71[1] = v17;
  v72 = v9;
  v73 = v18;
  v74 = v19;
  v75 = v20;
  v76 = v21;
  v77 = v16;
  v78 = 256;
  v80 = v64;
  v79 = v63;
  v81 = v22;
  v82 = v23;
  v83 = v13;
  v84 = v15;
  sub_1D22BD1D0(&v65, v91, &qword_1EC6DC468);
  sub_1D22BD238(v71, &qword_1EC6DC468);
  v49 = v37;
  LOWORD(v50[0]) = 257;
  DWORD1(v50[0]) = v36;
  BYTE8(v50[0]) = v35;
  *(v50 + 9) = 256;
  *(v50 + 11) = *v57;
  *(&v50[1] + 11) = *&v57[2];
  *(&v50[2] + 11) = *&v57[4];
  *(&v50[3] + 1) = *(&v57[5] + 5);
  v51 = v85;
  v52 = v86;
  v56 = v90;
  v55 = v89;
  v54 = v88;
  v53 = v87;
  v24 = v40;
  v25 = v41;
  v26 = v42;
  (*(v41 + 104))(v40, *MEMORY[0x1E697F3A0], v42);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD820);
  v28 = sub_1D2534C10();
  v29 = v39;
  sub_1D28768A8();
  (*(v25 + 8))(v24, v26);
  v91[8] = v54;
  v91[9] = v55;
  v91[10] = v56;
  v91[4] = v50[3];
  v91[5] = v51;
  v91[6] = v52;
  v91[7] = v53;
  v91[0] = v49;
  v91[1] = v50[0];
  v91[2] = v50[1];
  v91[3] = v50[2];
  sub_1D22BD238(v91, &qword_1EC6DD820);
  v30 = v45;
  sub_1D2534A5C(v38, v45, type metadata accessor for CarouselFaceView);
  v31 = (*(v47 + 80) + 16) & ~*(v47 + 80);
  v32 = swift_allocObject();
  sub_1D2534AC4(v30, v32 + v31, type metadata accessor for CarouselFaceView);
  *&v49 = v27;
  *(&v49 + 1) = v28;
  swift_getOpaqueTypeConformance2();
  v33 = v43;
  sub_1D2876908();

  return (*(v44 + 8))(v29, v33);
}

uint64_t sub_1D2532474()
{
  sub_1D2877938();
  sub_1D2874BE8();
}

uint64_t sub_1D25324E0()
{
  type metadata accessor for CarouselFaceView();
  sub_1D2870F78();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE890);
  sub_1D2877308();
  sub_1D2877318();
}

uint64_t sub_1D253259C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v43 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD720);
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v42 - v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD728);
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7);
  v42 = &v42 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD730);
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v42 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD738);
  v15 = v14 - 8;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v42 - v16;
  *v6 = sub_1D2877808();
  v6[1] = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD740);
  sub_1D253290C(v1, v6 + *(v19 + 44));
  type metadata accessor for CarouselFaceView();
  sub_1D2877848();
  sub_1D28748C8();
  v20 = (v6 + *(v4 + 44));
  v21 = v45;
  *v20 = v44;
  v20[1] = v21;
  v20[2] = v46;
  v22 = sub_1D2876338();
  sub_1D2874298();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v31 = v42;
  sub_1D22EC9BC(v6, v42, &qword_1EC6DD720);
  v32 = v31 + *(v8 + 44);
  v33 = v31;
  *v32 = v22;
  *(v32 + 8) = v24;
  *(v32 + 16) = v26;
  *(v32 + 24) = v28;
  *(v32 + 32) = v30;
  *(v32 + 40) = 0;
  v34 = sub_1D2877848();
  v36 = v35;
  v37 = &v13[*(v11 + 44)];
  sub_1D2534190(v2, v37);
  v38 = (v37 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD748) + 36));
  *v38 = v34;
  v38[1] = v36;
  sub_1D22EC9BC(v33, v13, &qword_1EC6DD728);
  LOBYTE(v34) = sub_1D2876398();
  sub_1D22EC9BC(v13, v17, &qword_1EC6DD730);
  v39 = &v17[*(v15 + 44)];
  *v39 = v34;
  *(v39 + 8) = 0u;
  *(v39 + 24) = 0u;
  v39[40] = 1;
  v40 = v43;
  sub_1D22EC9BC(v17, v43, &qword_1EC6DD738);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD750);
  *(v40 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_1D253290C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v187 = a2;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD778);
  v154 = *(v155 - 8);
  MEMORY[0x1EEE9AC00](v155);
  v153 = &v149 - v3;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD780);
  v171 = *(v172 - 8);
  MEMORY[0x1EEE9AC00](v172);
  v152 = &v149 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v151 = &v149 - v6;
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD788);
  v184 = *(v185 - 8);
  MEMORY[0x1EEE9AC00](v185);
  v170 = &v149 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD790);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v186 = &v149 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v192 = &v149 - v11;
  v12 = type metadata accessor for CarouselFaceView();
  v166 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v167 = v13;
  v168 = &v149 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v164 = sub_1D28771B8();
  v163 = *(v164 - 8);
  MEMORY[0x1EEE9AC00](v164);
  v162 = &v149 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD798);
  v179 = *(v180 - 8);
  MEMORY[0x1EEE9AC00](v180);
  v165 = &v149 - v15;
  v191 = type metadata accessor for PlaygroundImage();
  v188 = *(v191 - 8);
  MEMORY[0x1EEE9AC00](v191);
  v150 = &v149 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v178 = &v149 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD7A0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v183 = &v149 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v182 = &v149 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE5A0);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v169 = &v149 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v177 = &v149 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v194 = &v149 - v28;
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD7A8);
  MEMORY[0x1EEE9AC00](v176);
  v30 = (&v149 - v29);
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD7B0);
  MEMORY[0x1EEE9AC00](v174);
  v175 = (&v149 - v31);
  v32 = sub_1D2875678();
  v189 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v149 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9D88);
  v35 = *(v190 - 8);
  MEMORY[0x1EEE9AC00](v190);
  v37 = &v149 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v149 - v39;
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD7B8);
  MEMORY[0x1EEE9AC00](v173);
  v42 = &v149 - v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD7C0);
  MEMORY[0x1EEE9AC00](v43 - 8);
  v181 = &v149 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v196 = &v149 - v46;
  v195 = v12;
  LODWORD(v12) = *(a1 + *(v12 + 40));
  v193 = a1;
  v47 = sub_1D2531760();
  v48 = MEMORY[0x1E697F468];
  v161 = v32;
  v160 = v40;
  v159 = v37;
  if (v12 == 1)
  {
    v49 = v195;
    v50 = v193;
    v51 = *(v193 + v195[7]);
    *v42 = v47;
    *(v42 + 1) = v51;
    v42[16] = *(v50 + v49[11]);
    *&v201 = 0;
    sub_1D28772F8();
    v52 = *(&v204 + 1);
    *(v42 + 3) = v204;
    *(v42 + 4) = v52;
    v53 = *(type metadata accessor for CarouselFakeBlobView() + 32);
    *&v42[v53] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E1C40);
    swift_storeEnumTagMultiPayload();
    v54 = sub_1D2875668();
    MEMORY[0x1D38A0390](v54, 0.5, 1.0, 0.0);
    v55 = sub_1D2534844(&qword_1ED89D6C8, MEMORY[0x1E697F260]);
    sub_1D28743E8();

    v157 = *(v189 + 8);
    v157(v34, v32);
    v56 = v190;
    v156 = *(v35 + 16);
    v156(v37, v40, v190);
    *&v204 = v32;
    *(&v204 + 1) = v55;
    swift_getOpaqueTypeConformance2();
    v57 = sub_1D2874988();
    (*(v35 + 8))(v40, v56);
    *&v42[*(v173 + 36)] = v57;
    v58 = &qword_1EC6DD7B8;
    sub_1D22BD1D0(v42, v175, &qword_1EC6DD7B8);
    swift_storeEnumTagMultiPayload();
    sub_1D253475C();
    sub_1D253488C();
    sub_1D2875AF8();
    v59 = v42;
  }

  else
  {
    v60 = *(sub_1D2875188() + 20);
    v61 = *v48;
    v62 = sub_1D2875868();
    (*(*(v62 - 8) + 104))(v30 + v60, v61, v62);
    *v30 = v47;
    v30[1] = v47;
    LODWORD(v61) = sub_1D2875D88();
    v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD7C8);
    *(v30 + *(v63 + 52)) = v61;
    *(v30 + *(v63 + 56)) = 256;
    sub_1D2877848();
    sub_1D28748C8();
    v64 = (v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD7D0) + 36));
    v65 = v202;
    *v64 = v201;
    v64[1] = v65;
    v64[2] = v203;
    v66 = sub_1D2875668();
    MEMORY[0x1D38A0390](v66, 0.5, 1.0, 0.0);
    v67 = sub_1D2534844(&qword_1ED89D6C8, MEMORY[0x1E697F260]);
    sub_1D28743E8();

    v157 = *(v189 + 8);
    v157(v34, v32);
    v68 = v190;
    v156 = *(v35 + 16);
    v156(v37, v40, v190);
    *&v204 = v32;
    *(&v204 + 1) = v67;
    swift_getOpaqueTypeConformance2();
    v69 = sub_1D2874988();
    (*(v35 + 8))(v40, v68);
    *(v30 + *(v176 + 36)) = v69;
    v58 = &qword_1EC6DD7A8;
    sub_1D22BD1D0(v30, v175, &qword_1EC6DD7A8);
    swift_storeEnumTagMultiPayload();
    sub_1D253475C();
    sub_1D253488C();
    sub_1D2875AF8();
    v59 = v30;
  }

  sub_1D22BD238(v59, v58);
  v70 = v34;
  v71 = v195;
  v72 = v193;
  LODWORD(v73) = *(v193 + v195[12]);
  v74 = v191;
  v75 = v188;
  v158 = v70;
  if ((v73 & 1) != 0 || (v76 = v193 + v195[14], v77 = *v76, v78 = *(v76 + 8), LOBYTE(v204) = v77, *(&v204 + 1) = v78, __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE890), sub_1D2877308(), v199 == 1))
  {
    v79 = v72 + v71[5];
    v80 = *(type metadata accessor for PhotosPersonAsset() + 20);
    v81 = v79 + v80 + *(type metadata accessor for PhotosPersonImage() + 24);
    v82 = v194;
    sub_1D2534A5C(v81, v194, type metadata accessor for PlaygroundImage);
    (*(v75 + 56))(v82, 0, 1, v74);
  }

  else
  {
    v82 = v194;
    sub_1D22BD1D0(v72 + v71[6], v194, &unk_1EC6DE5A0);
  }

  v83 = v82;
  v84 = v177;
  sub_1D22BD1D0(v83, v177, &unk_1EC6DE5A0);
  v85 = *(v75 + 48);
  if ((v85)(v84, 1, v74) == 1)
  {
    sub_1D22BD238(v84, &unk_1EC6DE5A0);
    v86 = 1;
    v87 = v182;
    v88 = v196;
    v89 = v180;
  }

  else
  {
    LODWORD(v176) = v73;
    v90 = v72;
    v175 = v85;
    sub_1D2534AC4(v84, v178, type metadata accessor for PlaygroundImage);
    sub_1D262D4E8();
    sub_1D2877188();
    v91 = v163;
    v92 = v162;
    v93 = v164;
    (*(v163 + 104))(v162, *MEMORY[0x1E6981630], v164);
    v94 = sub_1D2877228();

    (*(v91 + 8))(v92, v93);
    sub_1D2877848();
    sub_1D28748C8();
    LOBYTE(v199) = 1;
    *&v197[6] = v204;
    *&v197[22] = v205;
    *&v197[38] = v206;
    v95 = sub_1D2531760();
    v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD808);
    v97 = v165;
    v98 = &v165[*(v96 + 36)];
    v99 = *(sub_1D2875188() + 20);
    v100 = *MEMORY[0x1E697F468];
    v101 = sub_1D2875868();
    v102 = v98 + v99;
    v72 = v90;
    v71 = v195;
    (*(*(v101 - 8) + 104))(v102, v100, v101);
    *v98 = v95;
    v98[1] = v95;
    *(v98 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC410) + 36)) = 256;
    v103 = *&v197[16];
    *(v97 + 18) = *v197;
    *v97 = v94;
    *(v97 + 8) = 0;
    *(v97 + 16) = 257;
    *(v97 + 34) = v103;
    *(v97 + 50) = *&v197[32];
    *(v97 + 64) = *&v197[46];
    v104 = v158;
    v105 = sub_1D2875668();
    MEMORY[0x1D38A0390](v105, 0.5, 1.0, 0.0);
    v106 = sub_1D2534844(&qword_1ED89D6C8, MEMORY[0x1E697F260]);
    v73 = v160;
    v107 = v161;
    sub_1D28743E8();

    v157(v104, v107);
    v108 = v190;
    v156(v159, v73, v190);
    v199 = v107;
    v200 = v106;
    v85 = v175;
    v74 = v191;
    swift_getOpaqueTypeConformance2();
    v109 = sub_1D2874988();
    v110 = v73;
    LOBYTE(v73) = v176;
    (*(v35 + 8))(v110, v108);
    sub_1D25349FC(v178, type metadata accessor for PlaygroundImage);
    *(v97 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD810) + 36)) = v109;
    v111 = v168;
    sub_1D2534A5C(v72, v168, type metadata accessor for CarouselFaceView);
    v112 = (*(v166 + 80) + 16) & ~*(v166 + 80);
    v113 = swift_allocObject();
    sub_1D2534AC4(v111, v113 + v112, type metadata accessor for CarouselFaceView);
    v89 = v180;
    v114 = (v97 + *(v180 + 36));
    *v114 = sub_1D2534B2C;
    v114[1] = v113;
    v114[2] = 0;
    v114[3] = 0;
    v87 = v182;
    sub_1D2534BA0(v97, v182);
    v86 = 0;
    v88 = v196;
  }

  v115 = 1;
  (*(v179 + 56))(v87, v86, 1, v89);
  if ((v73 & 1) == 0)
  {
    v116 = v72 + v71[14];
    v117 = *v116;
    v118 = *(v116 + 8);
    LOBYTE(v199) = v117;
    v200 = v118;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE890);
    sub_1D2877308();
    if (v198 == 1)
    {
      v119 = v169;
      sub_1D22BD1D0(v72 + v71[6], v169, &unk_1EC6DE5A0);
      if ((v85)(v119, 1, v74) == 1)
      {
        sub_1D22BD238(v119, &unk_1EC6DE5A0);
        v120 = 1;
        v121 = v172;
        v122 = v170;
LABEL_17:
        (*(v171 + 56))(v122, v120, 1, v121);
        sub_1D22EC9BC(v122, v192, &qword_1EC6DD788);
        v115 = 0;
        goto LABEL_18;
      }
    }

    else
    {
      v123 = v72 + v71[5];
      v124 = *(type metadata accessor for PhotosPersonAsset() + 20);
      v125 = v123 + v124 + *(type metadata accessor for PhotosPersonImage() + 24);
      v119 = v169;
      sub_1D2534A5C(v125, v169, type metadata accessor for PlaygroundImage);
      (*(v188 + 56))(v119, 0, 1, v74);
    }

    v126 = v150;
    sub_1D2534AC4(v119, v150, type metadata accessor for PlaygroundImage);
    v127 = v153;
    sub_1D2531DBC(v153);
    v128 = sub_1D2876338();
    sub_1D2874298();
    v130 = v129;
    v132 = v131;
    v134 = v133;
    v136 = v135;
    sub_1D25349FC(v126, type metadata accessor for PlaygroundImage);
    v137 = v152;
    (*(v154 + 32))(v152, v127, v155);
    v121 = v172;
    v138 = &v137[*(v172 + 36)];
    *v138 = v128;
    *(v138 + 1) = v130;
    *(v138 + 2) = v132;
    *(v138 + 3) = v134;
    *(v138 + 4) = v136;
    v138[40] = 0;
    v139 = v137;
    v140 = v151;
    sub_1D22EC9BC(v139, v151, &qword_1EC6DD780);
    v141 = v140;
    v122 = v170;
    sub_1D22EC9BC(v141, v170, &qword_1EC6DD780);
    v120 = 0;
    goto LABEL_17;
  }

LABEL_18:
  v142 = v192;
  (*(v184 + 56))(v192, v115, 1, v185);
  v143 = v181;
  sub_1D22BD1D0(v88, v181, &qword_1EC6DD7C0);
  v144 = v183;
  sub_1D22BD1D0(v87, v183, &qword_1EC6DD7A0);
  v145 = v186;
  sub_1D22BD1D0(v142, v186, &qword_1EC6DD790);
  v146 = v187;
  sub_1D22BD1D0(v143, v187, &qword_1EC6DD7C0);
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD800);
  sub_1D22BD1D0(v144, v146 + *(v147 + 48), &qword_1EC6DD7A0);
  sub_1D22BD1D0(v145, v146 + *(v147 + 64), &qword_1EC6DD790);
  sub_1D22BD238(v142, &qword_1EC6DD790);
  sub_1D22BD238(v87, &qword_1EC6DD7A0);
  sub_1D22BD238(v194, &unk_1EC6DE5A0);
  sub_1D22BD238(v196, &qword_1EC6DD7C0);
  sub_1D22BD238(v145, &qword_1EC6DD790);
  sub_1D22BD238(v144, &qword_1EC6DD7A0);
  return sub_1D22BD238(v143, &qword_1EC6DD7C0);
}

uint64_t sub_1D2534190@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D2874DB8();
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_1D2875188();
  v6 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5);
  v8 = (&v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_1D2531760();
  v10 = type metadata accessor for CarouselFaceView();
  v11 = 8.0;
  if (*(a1 + *(v10 + 32) + 10))
  {
    v11 = 6.0;
  }

  v12 = v9 + v11;
  v13 = *(v6 + 28);
  v14 = *MEMORY[0x1E697F468];
  v15 = sub_1D2875868();
  (*(*(v15 - 8) + 104))(v8 + v13, v14, v15);
  *v8 = v12;
  v8[1] = v12;
  if (*(a1 + *(v10 + 36)) == 1)
  {
    sub_1D2874DA8();
  }

  else
  {
    *&v29 = sub_1D2877098();
  }

  v16 = sub_1D28748D8();
  sub_1D28745B8();
  v17 = MEMORY[0x1E697EAF0];
  sub_1D2534A5C(v8, a2, MEMORY[0x1E697EAF0]);
  v18 = *&v29 * 0.5;
  v19 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD758) + 68);
  sub_1D2534A5C(v8, v19, v17);
  *(v19 + *(sub_1D2875178() + 20)) = v18;
  v20 = v19 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD760) + 36);
  v21 = v30;
  *v20 = v29;
  *(v20 + 16) = v21;
  *(v20 + 32) = v31;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD768);
  *(v19 + *(v22 + 52)) = v16;
  *(v19 + *(v22 + 56)) = 256;
  v23 = sub_1D2877848();
  v25 = v24;
  sub_1D25349FC(v8, MEMORY[0x1E697EAF0]);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD770);
  v27 = (v19 + *(result + 36));
  *v27 = v23;
  v27[1] = v25;
  return result;
}

double sub_1D253448C()
{
  KeyPath = swift_getKeyPath();
  sub_1D2876438();
  *&xmmword_1EC6E3CF0 = KeyPath;
  BYTE8(xmmword_1EC6E3CF0) = 0;
  *(&xmmword_1EC6E3CF0 + 9) = 0;
  xmmword_1EC6E3D00 = xmmword_1D28913A0;
  xmmword_1EC6E3D10 = xmmword_1D28913B0;
  qword_1EC6E3D20 = v1;
  *algn_1EC6E3D28 = xmmword_1D28913C0;
  *(&xmmword_1EC6E3D30 + 8) = xmmword_1D28913D0;
  result = 14.0;
  unk_1EC6E3D48 = xmmword_1D28913E0;
  qword_1EC6E3D58 = 0x4087500000000000;
  return result;
}

double sub_1D2534528()
{
  KeyPath = swift_getKeyPath();
  sub_1D2876438();
  *&xmmword_1EC6E3D60 = KeyPath;
  BYTE8(xmmword_1EC6E3D60) = 0;
  *(&xmmword_1EC6E3D60 + 9) = 128;
  xmmword_1EC6E3D70 = xmmword_1D28913A0;
  xmmword_1EC6E3D80 = xmmword_1D28913B0;
  qword_1EC6E3D90 = v1;
  *algn_1EC6E3D98 = xmmword_1D28913C0;
  *(&xmmword_1EC6E3DA0 + 8) = xmmword_1D28913D0;
  result = 14.0;
  *&algn_1EC6E3DB0[8] = xmmword_1D28913E0;
  qword_1EC6E3DC8 = 0x4087500000000000;
  return result;
}

double sub_1D25345C8()
{
  KeyPath = swift_getKeyPath();
  sub_1D2876438();
  *&xmmword_1EC6E3DD0 = KeyPath;
  BYTE8(xmmword_1EC6E3DD0) = 0;
  *(&xmmword_1EC6E3DD0 + 9) = 257;
  xmmword_1EC6E3DE0 = xmmword_1D28913A0;
  xmmword_1EC6E3DF0 = xmmword_1D28913B0;
  qword_1EC6E3E00 = v1;
  *algn_1EC6E3E08 = xmmword_1D28913C0;
  *(&xmmword_1EC6E3E10 + 8) = xmmword_1D28913D0;
  result = 14.0;
  unk_1EC6E3E28 = xmmword_1D28913E0;
  qword_1EC6E3E38 = 0x4087500000000000;
  return result;
}

double sub_1D2534668()
{
  KeyPath = swift_getKeyPath();
  sub_1D2876438();
  *&xmmword_1EC6E3E40 = KeyPath;
  BYTE8(xmmword_1EC6E3E40) = 0;
  *(&xmmword_1EC6E3E40 + 9) = 385;
  xmmword_1EC6E3E50 = xmmword_1D28913A0;
  xmmword_1EC6E3E60 = xmmword_1D28913B0;
  qword_1EC6E3E70 = v1;
  *algn_1EC6E3E78 = xmmword_1D28913C0;
  *(&xmmword_1EC6E3E80 + 8) = xmmword_1D28913D0;
  result = 14.0;
  *&algn_1EC6E3E90[8] = xmmword_1D28913E0;
  qword_1EC6E3EA8 = 0x4087500000000000;
  return result;
}

unint64_t sub_1D253475C()
{
  result = qword_1EC6DD7D8;
  if (!qword_1EC6DD7D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DD7B8);
    sub_1D2534844(&qword_1EC6DD7E0, type metadata accessor for CarouselFakeBlobView);
    sub_1D22BB9D8(&qword_1ED89D4A0, &qword_1EC6DB918);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DD7D8);
  }

  return result;
}

uint64_t sub_1D2534844(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D253488C()
{
  result = qword_1EC6DD7E8;
  if (!qword_1EC6DD7E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DD7A8);
    sub_1D2534944();
    sub_1D22BB9D8(&qword_1ED89D4A0, &qword_1EC6DB918);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DD7E8);
  }

  return result;
}

unint64_t sub_1D2534944()
{
  result = qword_1EC6DD7F0;
  if (!qword_1EC6DD7F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DD7D0);
    sub_1D22BB9D8(&qword_1EC6DD7F8, &qword_1EC6DD7C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DD7F0);
  }

  return result;
}

uint64_t sub_1D25349FC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D2534A5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D2534AC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D2534B2C()
{
  v1 = type metadata accessor for CarouselFaceView();
  v3 = *(v1 - 8);
  result = v1 - 8;
  v4 = (v0 + *(result + 60) + ((*(v3 + 80) + 16) & ~*(v3 + 80)));
  if (*v4)
  {
    return (*v4)();
  }

  return result;
}

uint64_t sub_1D2534BA0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD798);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D2534C10()
{
  result = qword_1EC6DD828;
  if (!qword_1EC6DD828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DD820);
    sub_1D2534CC8();
    sub_1D22BB9D8(&qword_1EC6DD870, &qword_1EC6DC468);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DD828);
  }

  return result;
}

unint64_t sub_1D2534CC8()
{
  result = qword_1EC6DD830;
  if (!qword_1EC6DD830)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DD838);
    sub_1D2534D54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DD830);
  }

  return result;
}

unint64_t sub_1D2534D54()
{
  result = qword_1EC6DD840;
  if (!qword_1EC6DD840)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DD848);
    sub_1D2534E0C();
    sub_1D22BB9D8(&qword_1ED89DF70, &qword_1EC6DD698);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DD840);
  }

  return result;
}

unint64_t sub_1D2534E0C()
{
  result = qword_1EC6DD850;
  if (!qword_1EC6DD850)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DD858);
    sub_1D22F587C();
    sub_1D22BB9D8(&qword_1EC6DD860, &qword_1EC6DD868);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DD850);
  }

  return result;
}

uint64_t objectdestroyTm_16()
{
  v1 = type metadata accessor for CarouselFaceView();
  v21 = *(*(v1 - 1) + 80);
  v2 = v0 + ((v21 + 16) & ~v21);

  v3 = v2 + v1[5];

  if (*(v3 + 32))
  {
  }

  v4 = v3 + *(type metadata accessor for PhotosPersonAsset() + 20);

  v5 = (v4 + *(type metadata accessor for PhotosPersonImage() + 24));

  v6 = type metadata accessor for PlaygroundImage();
  v7 = v6[8];
  v8 = sub_1D2871818();
  v19 = *(*(v8 - 8) + 8);
  v19(v5 + v7, v8);
  v9 = (v5 + v6[10]);
  v10 = v9[1];
  if (v10 >> 60 != 15)
  {
    sub_1D22D6D60(*v9, v10);
  }

  v11 = v6[11];
  v12 = sub_1D2873AA8();
  v20 = *(v12 - 8);
  v13 = *(v20 + 48);
  if (!v13(v5 + v11, 1, v12))
  {
    (*(v20 + 8))(v5 + v11, v12);
  }

  type metadata accessor for CarouselFace();

  v14 = (v2 + v1[6]);
  if (!(*(*(v6 - 1) + 48))(v14, 1, v6))
  {

    v19(v14 + v6[8], v8);
    v15 = (v14 + v6[10]);
    v16 = v15[1];
    if (v16 >> 60 != 15)
    {
      sub_1D22D6D60(*v15, v16);
    }

    v17 = v6[11];
    if (!v13(v14 + v17, 1, v12))
    {
      (*(v20 + 8))(v14 + v17, v12);
    }
  }

  if (*(v2 + v1[13]))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D2535228()
{
  type metadata accessor for CarouselFaceView();

  return sub_1D2532474();
}

uint64_t getEnumTagSinglePayload for FacePickerCarouselViewStaticMetrics.Theme(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x7F)
  {
    goto LABEL_17;
  }

  if (a2 + 129 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 129) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 129;
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

      return (*a1 | (v4 << 8)) - 129;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 129;
    }
  }

LABEL_17:
  v6 = (*a1 & 0x7E | (*a1 >> 7)) ^ 0x7F;
  if (v6 >= 0x7E)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for FacePickerCarouselViewStaticMetrics.Theme(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 129 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 129) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x7F)
  {
    v4 = 0;
  }

  if (a2 > 0x7E)
  {
    v5 = ((a2 - 127) >> 8) + 1;
    *result = a2 - 127;
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
    *result = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D253543C()
{
  result = qword_1EC6DD878;
  if (!qword_1EC6DD878)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DD750);
    sub_1D25354F4();
    sub_1D22BB9D8(&qword_1ED89D4A8, &qword_1EC6DA6F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DD878);
  }

  return result;
}

unint64_t sub_1D25354F4()
{
  result = qword_1EC6DD880;
  if (!qword_1EC6DD880)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DD738);
    sub_1D2535580();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DD880);
  }

  return result;
}

unint64_t sub_1D2535580()
{
  result = qword_1EC6DD888;
  if (!qword_1EC6DD888)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DD730);
    sub_1D2535638();
    sub_1D22BB9D8(&unk_1EC6DD8B0, &qword_1EC6DD748);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DD888);
  }

  return result;
}

unint64_t sub_1D2535638()
{
  result = qword_1EC6DD890;
  if (!qword_1EC6DD890)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DD728);
    sub_1D25356C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DD890);
  }

  return result;
}

unint64_t sub_1D25356C4()
{
  result = qword_1EC6DD898;
  if (!qword_1EC6DD898)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DD720);
    sub_1D22BB9D8(&qword_1EC6DD8A0, &qword_1EC6DD8A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DD898);
  }

  return result;
}

unint64_t sub_1D2535780()
{
  result = qword_1EC6DD8F8;
  if (!qword_1EC6DD8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DD8F8);
  }

  return result;
}

unint64_t sub_1D25357D8()
{
  result = qword_1EC6DD900;
  if (!qword_1EC6DD900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DD900);
  }

  return result;
}

unint64_t sub_1D2535830()
{
  result = qword_1EC6DD908;
  if (!qword_1EC6DD908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DD908);
  }

  return result;
}

uint64_t sub_1D25358D4()
{
  v0 = sub_1D28718F8();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1D28714D8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D2878048();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1D28714E8();
  __swift_allocate_value_buffer(v6, qword_1EC6E3EB0);
  __swift_project_value_buffer(v6, qword_1EC6E3EB0);
  sub_1D2877FE8();
  if (qword_1ED89E0F0 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_1ED8B0060);
  (*(v2 + 16))(v4, v7, v1);
  sub_1D28718C8();
  return sub_1D2871508();
}

uint64_t sub_1D2535B78()
{
  swift_getKeyPath();
  sub_1D2535780();
  v0 = sub_1D2870F78();

  swift_getKeyPath();
  sub_1D2870F78();
  v1 = sub_1D2870F78();

  swift_getKeyPath();
  sub_1D2870F78();
  v2 = sub_1D2870F78();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E3A10);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D288F1A0;
  *(v3 + 32) = v0;
  *(v3 + 40) = v1;
  *(v3 + 48) = v2;
  sub_1D2870F78();
  v4 = sub_1D2870F68();

  return v4;
}

unint64_t sub_1D2535CB0()
{
  type metadata accessor for ServicesFetcher();
  v0 = swift_allocObject();
  result = sub_1D25D6570(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = result;
  qword_1EC6DD8C0 = v0;
  return result;
}

uint64_t sub_1D2535CFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DD9A0);
  v10[11] = swift_task_alloc();
  v12 = sub_1D2870CD8();
  v10[12] = v12;
  v10[13] = *(v12 - 8);
  v10[14] = swift_task_alloc();
  v13 = sub_1D2873CB8();
  v10[15] = v13;
  v10[16] = *(v13 - 8);
  v10[17] = swift_task_alloc();
  v10[18] = sub_1D2878568();
  v10[19] = sub_1D2878558();
  v14 = swift_task_alloc();
  v10[20] = v14;
  *v14 = v10;
  v14[1] = sub_1D2535ED0;

  return sub_1D2536664(a1, a2, a3, a4, a5);
}

uint64_t sub_1D2535ED0()
{
  *(*v1 + 168) = v0;

  v3 = sub_1D28784F8();
  if (v0)
  {
    v4 = sub_1D25360B8;
  }

  else
  {
    v4 = sub_1D2536028;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, v2);
}

uint64_t sub_1D2536028()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D25360B8()
{
  v1 = *(v0 + 168);

  sub_1D28726C8();
  v2 = v1;
  v3 = sub_1D2873CA8();
  v4 = sub_1D2878A18();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 168);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1D226E000, v3, v4, "Generation failed: %@.", v6, 0xCu);
    sub_1D22BD238(v7, qword_1EC6DA930);
    MEMORY[0x1D38A3520](v7, -1, -1);
    MEMORY[0x1D38A3520](v6, -1, -1);
  }

  v10 = *(v0 + 168);
  v12 = *(v0 + 128);
  v11 = *(v0 + 136);
  v13 = *(v0 + 120);
  v14 = *(v0 + 104);

  (*(v12 + 8))(v11, v13);
  *(v0 + 64) = v10;
  v15 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94B0);
  v16 = swift_dynamicCast();
  v17 = *(v14 + 56);
  v18 = *(v0 + 168);
  if (v16)
  {
    v20 = *(v0 + 104);
    v19 = *(v0 + 112);
    v21 = *(v0 + 88);
    v22 = *(v0 + 96);
    v17(v21, 0, 1, v22);
    (*(v20 + 32))(v19, v21, v22);
    sub_1D253CE40(&qword_1EC6DD9B8, MEMORY[0x1E6959D40]);
    swift_allocError();
    (*(v20 + 16))(v23, v19, v22);
    swift_willThrow();

    (*(v20 + 8))(v19, v22);
    goto LABEL_51;
  }

  v24 = *(v0 + 88);
  v17(v24, 1, 1, *(v0 + 96));
  sub_1D22BD238(v24, &unk_1EC6DD9A0);
  *(v0 + 72) = v18;
  v25 = v18;
  v26 = swift_dynamicCast();
  v27 = *(v0 + 168);
  if (!v26)
  {
    *(v0 + 80) = v27;
    v32 = v27;
    if (!swift_dynamicCast())
    {
      v27 = *(v0 + 168);
      sub_1D253CCF8();
      swift_allocError();
      *v38 = xmmword_1D28830A0;
      *(v38 + 16) = 3;
      goto LABEL_13;
    }

    v34 = *(v0 + 40);
    v33 = *(v0 + 48);
    v35 = *(v0 + 56);
    v36 = v35 >> 4;
    if (v35 >> 4 <= 8)
    {
      if (v36 == 7)
      {
        sub_1D2870F68();
        v37 = 0;
        goto LABEL_22;
      }

      if (v36 == 8)
      {
        sub_1D2870F68();
        v37 = 1;
LABEL_22:
        v41 = v34;
        v40 = v33;
        goto LABEL_49;
      }

LABEL_48:
      v40 = 0;
      v37 = 3;
      v41 = 5;
      goto LABEL_49;
    }

    if (v36 == 9)
    {
      sub_1D2870F68();
      v37 = 2;
      goto LABEL_22;
    }

    if (v36 != 10)
    {
      goto LABEL_48;
    }

    if (v34 == 2 && !v33 && v35 == 160)
    {
LABEL_19:
      v40 = 0;
      v37 = 3;
      v41 = 1;
LABEL_49:
      v42 = *(v0 + 168);
      sub_1D253CCF8();
      swift_allocError();
      *v43 = v41;
      *(v43 + 8) = v40;
      *(v43 + 16) = v37;
      swift_willThrow();
      sub_1D22BCDC4(v34, v33, v35);
      v39 = v42;
      goto LABEL_50;
    }

    if (v34 == 5 && !v33 && v35 == 160)
    {
LABEL_26:
      sub_1D233E72C(*(v0 + 40), *(v0 + 48), *(v0 + 56));
      v40 = 0;
      v37 = 3;
      v41 = 6;
      goto LABEL_49;
    }

    if (v34 != 6 || v33 || v35 != 160)
    {
      if (v34 == 7 && !v33 && v35 == 160)
      {
        goto LABEL_26;
      }

      if (v34 == 8 && !v33 && v35 == 160)
      {
        v40 = 0;
        v37 = 3;
        v41 = 4;
        goto LABEL_49;
      }

      if (v34 == 10 && !v33 && v35 == 160)
      {
        v40 = 0;
        v37 = 3;
        v41 = 2;
        goto LABEL_49;
      }

      if (v34 != 16 || v33 || v35 != 160)
      {
        if (v34 != 17 || v33 || v35 != 160)
        {
          goto LABEL_48;
        }

        goto LABEL_19;
      }
    }

    v40 = 0;
    v41 = 3;
    v37 = 3;
    goto LABEL_49;
  }

  v28 = *(v0 + 16);
  v29 = *(v0 + 24);
  v30 = *(v0 + 32);
  sub_1D253CCF8();
  swift_allocError();
  *v31 = v28;
  *(v31 + 8) = v29;
  *(v31 + 16) = v30;
LABEL_13:
  swift_willThrow();
  v39 = v27;
LABEL_50:

LABEL_51:

  v44 = *(v0 + 8);

  return v44();
}

uint64_t sub_1D2536664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[14] = a4;
  v5[15] = a5;
  v5[12] = a2;
  v5[13] = a3;
  v5[11] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD948);
  v5[16] = swift_task_alloc();
  v6 = sub_1D28771B8();
  v5[17] = v6;
  v5[18] = *(v6 - 8);
  v5[19] = swift_task_alloc();
  v7 = sub_1D2870DA8();
  v5[20] = v7;
  v5[21] = *(v7 - 8);
  v5[22] = swift_task_alloc();
  v8 = sub_1D28714E8();
  v5[23] = v8;
  v5[24] = *(v8 - 8);
  v5[25] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE70);
  v5[26] = swift_task_alloc();
  type metadata accessor for PlaygroundImage();
  v5[27] = swift_task_alloc();
  v9 = sub_1D2872008();
  v5[28] = v9;
  v5[29] = *(v9 - 8);
  v5[30] = swift_task_alloc();
  type metadata accessor for ImagePlaygroundStyleEntity();
  v5[31] = swift_task_alloc();
  v5[32] = type metadata accessor for GenerateImageIntent.InputConfiguration();
  v5[33] = swift_task_alloc();
  sub_1D2878568();
  v5[34] = sub_1D2878558();
  v11 = sub_1D28784F8();
  v5[35] = v11;
  v5[36] = v10;

  return MEMORY[0x1EEE6DFA0](sub_1D253696C, v11, v10);
}

uint64_t sub_1D253696C()
{
  v30 = v0;
  v1 = *(v0 + 264);
  sub_1D2870E18();
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  sub_1D2870E18();
  sub_1D2870E18();
  *v1 = v2;
  v1[1] = v3;
  if (sub_1D25379E4())
  {
    v4 = *(v0 + 240);
    v5 = *(v0 + 248);
    v6 = *(v0 + 224);
    v7 = *(v0 + 232);
    v25 = 0xD000000000000017;
    v26 = 0x80000001D28B9B00;
    v27 = 0;
    v28 = 0;
    v29 = 3;
    _s23ImagePlaygroundInternal16ExecutionContextV17setClientIdentityyyAC08GPClientH0OFZ_0(&v25);
    sub_1D253CD98(v25, v26, v27, v28, v29);
    sub_1D2870E18();
    (*(v7 + 32))(v4, v5, v6);
    type metadata accessor for CreationContext();
    swift_allocObject();
    v8 = CreationContext.init(defaultStyle:)(v4);
    *(v0 + 296) = v8;
    sub_1D2870E18();
    v9 = sub_1D2871F78();
    (*(v7 + 8))(v5, v6);
    v10 = 0;
    if (v9)
    {
      v11 = *(v0 + 112);
      *(v0 + 16) = *(v0 + 96);
      *(v0 + 32) = v11;
      sub_1D253CDC8();
      v12 = sub_1D2870FE8();
      type metadata accessor for GenerateImageIntent.ProgressTimer();
      swift_allocObject();
      v10 = sub_1D253B76C(v12);
      sub_1D2537B14();
    }

    *(v0 + 304) = v10;
    v13 = swift_task_alloc();
    *(v0 + 312) = v13;
    *v13 = v0;
    v13[1] = sub_1D2536DB4;
    v14 = *(v0 + 264);
    v15 = *(v0 + 216);

    return sub_1D2537FF0(v15, v14, v8);
  }

  else
  {

    sub_1D2870E28();
    if (qword_1EC6D8CD8 != -1)
    {
      swift_once();
    }

    v17 = *(v0 + 264);
    v19 = *(v0 + 192);
    v18 = *(v0 + 200);
    v20 = *(v0 + 184);
    v21 = *(v0 + 128);
    v22 = __swift_project_value_buffer(v20, qword_1EC6DD8E0);
    (*(v19 + 16))(v18, v22, v20);
    sub_1D2870DE8();
    v23 = sub_1D2870DD8();
    (*(*(v23 - 8) + 56))(v21, 0, 1, v23);
    sub_1D2870CD8();
    sub_1D253CE40(&qword_1EC6DD9B8, MEMORY[0x1E6959D40]);
    swift_allocError();
    sub_1D2870E38();

    sub_1D22BD238(v21, &qword_1EC6DD948);
    swift_willThrow();
    sub_1D253CF94(v17, type metadata accessor for GenerateImageIntent.InputConfiguration);

    v24 = *(v0 + 8);

    return v24();
  }
}

uint64_t sub_1D2536DB4()
{
  v2 = *v1;
  *(*v1 + 320) = v0;

  v3 = *(v2 + 288);
  v4 = *(v2 + 280);
  if (v0)
  {
    v5 = sub_1D25376CC;
  }

  else
  {
    v5 = sub_1D2536EF0;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D2536EF0()
{
  v1 = v0[26];
  sub_1D2873A08();
  v2 = sub_1D2873AA8();
  v0[41] = v2;
  v3 = *(v2 - 8);
  v4 = *(v3 + 56);
  v0[42] = v4;
  v0[43] = (v3 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v4(v1, 0, 1, v2);
  v5 = _s23ImagePlaygroundInternal0bA0V9imageData3for24ensureRegionalCompliance10Foundation0E0VSg22UniformTypeIdentifiers6UTTypeVSg_SbtF_0(v1);
  v7 = v6;
  v0[44] = v5;
  v0[45] = v6;
  sub_1D22BD238(v1, &qword_1EC6DAE70);
  if (v7 >> 60 == 15)
  {
    v8 = v0[38];
    v9 = v0[27];

    sub_1D253CCF8();
    swift_allocError();
    *v10 = 0;
    *(v10 + 8) = 0;
    *(v10 + 16) = 3;
    swift_willThrow();
    sub_1D253CF94(v9, type metadata accessor for PlaygroundImage);
    if (v8)
    {
      v11 = v0[33];
      swift_getObjectType();
      sub_1D2870F78();
      sub_1D2878B88();

      sub_1D253CF94(v11, type metadata accessor for GenerateImageIntent.InputConfiguration);
    }

    else
    {
      v20 = v0[33];

      sub_1D253CF94(v20, type metadata accessor for GenerateImageIntent.InputConfiguration);
    }

    v21 = v0[1];

    return v21();
  }

  else
  {
    v12 = swift_task_alloc();
    v0[46] = v12;
    *v12 = v0;
    v12[1] = sub_1D25371D0;
    v13 = v0[37];
    v14 = v0[27];
    v15 = v0[14];
    v16 = v0[15];
    v17 = v0[12];
    v18 = v0[13];

    return sub_1D2539D88(v14, v13, v17, v18, v15, v16);
  }
}

uint64_t sub_1D25371D0()
{
  v2 = *v1;
  *(*v1 + 376) = v0;

  v3 = *(v2 + 288);
  v4 = *(v2 + 280);
  if (v0)
  {
    v5 = sub_1D2537840;
  }

  else
  {
    v5 = sub_1D253730C;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D253730C()
{

  if (qword_1EC6D8CD0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 352);
  v2 = *(v0 + 360);
  v18 = *(v0 + 336);
  v17 = *(v0 + 328);
  v3 = *(v0 + 208);
  v5 = *(v0 + 192);
  v4 = *(v0 + 200);
  v6 = *(v0 + 176);
  v7 = *(v0 + 184);
  v23 = *(v0 + 168);
  v24 = *(v0 + 304);
  v22 = *(v0 + 160);
  v8 = *(v0 + 144);
  v9 = *(v0 + 152);
  v19 = *(v0 + 216);
  v20 = *(v0 + 136);
  v10 = __swift_project_value_buffer(v7, qword_1EC6DD8C8);
  (*(v5 + 16))(v4, v10, v7);
  sub_1D28780F8();
  v21 = v1;
  sub_1D22D6CF8(v1, v2);
  sub_1D2873A08();
  v18(v3, 0, 1, v17);
  v11 = v2;
  sub_1D2870D98();
  sub_1D262D4E8();
  sub_1D2877188();
  (*(v8 + 104))(v9, *MEMORY[0x1E6981630], v20);
  v12 = sub_1D2877228();

  (*(v8 + 8))(v9, v20);
  *(v0 + 48) = v12;
  *(v0 + 56) = 0;
  *(v0 + 64) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD9C0);
  sub_1D253CE40(&unk_1EC6DD9C8, MEMORY[0x1E6959ED8]);
  sub_1D22F587C();
  sub_1D2870DF8();
  sub_1D22D6D4C(v21, v11);

  (*(v23 + 8))(v6, v22);
  sub_1D253CF94(v19, type metadata accessor for PlaygroundImage);
  if (v24)
  {
    v13 = *(v0 + 264);
    swift_getObjectType();
    sub_1D2870F78();
    sub_1D2878B88();

    sub_1D253CF94(v13, type metadata accessor for GenerateImageIntent.InputConfiguration);
  }

  else
  {
    v14 = *(v0 + 264);

    sub_1D253CF94(v14, type metadata accessor for GenerateImageIntent.InputConfiguration);
  }

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1D25376CC()
{
  v1 = v0[38];

  if (v1)
  {
    v2 = v0[33];
    swift_getObjectType();
    sub_1D2870F78();
    sub_1D2878B88();

    sub_1D253CF94(v2, type metadata accessor for GenerateImageIntent.InputConfiguration);
  }

  else
  {
    v3 = v0[33];

    sub_1D253CF94(v3, type metadata accessor for GenerateImageIntent.InputConfiguration);
  }

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D2537840()
{
  v1 = v0[44];
  v2 = v0[45];
  v3 = v0[38];
  v4 = v0[27];

  sub_1D22D6D4C(v1, v2);
  sub_1D253CF94(v4, type metadata accessor for PlaygroundImage);
  if (v3)
  {
    v5 = v0[33];
    swift_getObjectType();
    sub_1D2870F78();
    sub_1D2878B88();

    sub_1D253CF94(v5, type metadata accessor for GenerateImageIntent.InputConfiguration);
  }

  else
  {
    v6 = v0[33];

    sub_1D253CF94(v6, type metadata accessor for GenerateImageIntent.InputConfiguration);
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_1D25379E4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD938);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v11 - v2;
  if (v0[1])
  {
    v4 = *v0 & 0xFFFFFFFFFFFFLL;
    v5 = v0[1];
  }

  else
  {
    v4 = 0;
    v5 = 0xE000000000000000;
  }

  sub_1D2870F68();

  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = v4;
  }

  if (v6)
  {
    return 1;
  }

  Image = type metadata accessor for GenerateImageIntent.InputConfiguration();
  sub_1D253CE88(v0 + *(Image + 20), v3);
  v9 = sub_1D2870DA8();
  v7 = (*(*(v9 - 8) + 48))(v3, 1, v9) != 1;
  sub_1D22BD238(v3, &qword_1EC6DD938);
  return v7;
}

uint64_t sub_1D2537B14()
{
  v40 = *v0;
  v1 = sub_1D2877B38();
  v41 = *(v1 - 8);
  v42 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v45 = (&v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v3);
  v39 = (&v34 - v4);
  v5 = sub_1D2877BA8();
  v43 = *(v5 - 8);
  v44 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v34 = &v34 - v9;
  v38 = sub_1D2877B48();
  v10 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_1D2877B68();
  v13 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v0[4];
  ObjectType = swift_getObjectType();
  v18 = v0[2];
  v19 = swift_allocObject();
  v19[2] = v18;
  v19[3] = v16;
  v36 = v16;
  v19[4] = v40;
  aBlock[4] = sub_1D253CE1C;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D23DFBA8;
  aBlock[3] = &block_descriptor_22;
  v20 = _Block_copy(aBlock);
  v21 = v18;
  swift_unknownObjectRetain();
  v35 = ObjectType;
  sub_1D27A17E4();
  sub_1D27A17E8();
  sub_1D2878B78();
  _Block_release(v20);
  (*(v10 + 8))(v12, v38);
  (*(v13 + 8))(v15, v37);

  sub_1D2877B88();
  v22 = v39;
  *v39 = 500;
  v23 = *MEMORY[0x1E69E7F38];
  v25 = v41;
  v24 = v42;
  v26 = *(v41 + 104);
  v26(v22, v23, v42);
  sub_1D2877B98();
  v27 = *(v25 + 8);
  v27(v22, v24);
  v43 = *(v43 + 8);
  v28 = v7;
  v29 = v44;
  (v43)(v28, v44);
  *v22 = 500;
  v26(v22, v23, v24);
  v30 = v45;
  v31 = v35;
  sub_1D27A18D4(v45);
  v32 = v34;
  MEMORY[0x1D38A16E0](v34, v22, v30, v31);
  v27(v30, v24);
  v27(v22, v24);
  (v43)(v32, v29);
  return sub_1D2878B98();
}

uint64_t sub_1D2537FF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v3[12] = a1;
  v4 = type metadata accessor for ImageGeneration.FinalImageStatus(0);
  v3[15] = v4;
  v3[16] = *(v4 - 8);
  v3[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDA10);
  v3[18] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA178);
  v3[19] = v5;
  v3[20] = *(v5 - 8);
  v3[21] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDA20);
  v3[22] = v6;
  v3[23] = *(v6 - 8);
  v3[24] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA180);
  v3[25] = v7;
  v3[26] = *(v7 - 8);
  v3[27] = swift_task_alloc();
  type metadata accessor for ImageGeneration.PreviewImage(0);
  v3[28] = swift_task_alloc();
  v8 = type metadata accessor for ImageGeneration.PreviewStatus(0);
  v3[29] = v8;
  v3[30] = *(v8 - 8);
  v3[31] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDA30);
  v3[32] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA750);
  v3[33] = v9;
  v3[34] = *(v9 - 8);
  v3[35] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDA40);
  v3[36] = v10;
  v3[37] = *(v10 - 8);
  v3[38] = swift_task_alloc();
  sub_1D2871818();
  v3[39] = swift_task_alloc();
  type metadata accessor for PlaygroundImage();
  v3[40] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD938);
  v3[41] = swift_task_alloc();
  v11 = sub_1D2870DA8();
  v3[42] = v11;
  v3[43] = *(v11 - 8);
  v3[44] = swift_task_alloc();
  v3[45] = sub_1D2878568();
  v3[46] = sub_1D2878558();
  v13 = sub_1D28784F8();
  v3[47] = v13;
  v3[48] = v12;

  return MEMORY[0x1EEE6DFA0](sub_1D25384D8, v13, v12);
}

uint64_t sub_1D25384D8()
{
  v1 = v0[13];
  v2 = v1[1];
  if (v2)
  {
    v3 = *v1;
    CreationContext.add(text:)(*(&v2 - 1));
    v1 = v0[13];
  }

  v4 = v0[42];
  v5 = v0[43];
  v6 = v0[41];
  Image = type metadata accessor for GenerateImageIntent.InputConfiguration();
  sub_1D253CE88(v1 + *(Image + 20), v6);
  if ((*(v5 + 48))(v6, 1, v4) == 1)
  {
    sub_1D22BD238(v0[41], &qword_1EC6DD938);
    if (qword_1EC6D8CC8 != -1)
    {
      swift_once();
    }

    v0[53] = qword_1EC6DD8C0;
    v0[54] = sub_1D23C6B54();
    v8 = swift_task_alloc();
    v0[55] = v8;
    *v8 = v0;
    v8[1] = sub_1D2538C98;

    return sub_1D274BE84();
  }

  else
  {
    (*(v0[43] + 32))(v0[44], v0[41], v0[42]);
    v10 = sub_1D2870D88();
    v12 = v11;
    sub_1D2871808();
    v13 = swift_task_alloc();
    v0[49] = v13;
    *v13 = v0;
    v13[1] = sub_1D25386DC;
    v15 = v0[39];
    v14 = v0[40];

    return sub_1D262ADFC(v14, v10, v12, v15, 0);
  }
}

uint64_t sub_1D25386DC()
{
  v2 = *v1;
  *(*v1 + 400) = v0;

  v3 = *(v2 + 384);
  v4 = *(v2 + 376);
  if (v0)
  {
    v5 = sub_1D2538B54;
  }

  else
  {
    v5 = sub_1D2538818;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D2538818()
{
  if (qword_1EC6D8CC8 != -1)
  {
    swift_once();
  }

  v0[51] = sub_1D23C7314();
  v1 = swift_task_alloc();
  v0[52] = v1;
  *v1 = v0;
  v1[1] = sub_1D25388F8;
  v2 = v0[40];
  v3 = v0[14];

  return _ConditioningImageFactory.assignConditioningImage(from:to:)(v2, v3);
}

uint64_t sub_1D25388F8()
{
  v1 = *v0;

  v2 = *(v1 + 384);
  v3 = *(v1 + 376);

  return MEMORY[0x1EEE6DFA0](sub_1D2538A3C, v3, v2);
}

uint64_t sub_1D2538A3C()
{
  v2 = v0[43];
  v1 = v0[44];
  v3 = v0[42];
  sub_1D253CF94(v0[40], type metadata accessor for PlaygroundImage);
  (*(v2 + 8))(v1, v3);
  if (qword_1EC6D8CC8 != -1)
  {
    swift_once();
  }

  v0[53] = qword_1EC6DD8C0;
  v0[54] = sub_1D23C6B54();
  v4 = swift_task_alloc();
  v0[55] = v4;
  *v4 = v0;
  v4[1] = sub_1D2538C98;

  return sub_1D274BE84();
}

uint64_t sub_1D2538B54()
{
  v2 = v0[43];
  v1 = v0[44];
  v3 = v0[42];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D2538C98()
{
  v1 = *v0;

  v2 = *(v1 + 384);
  v3 = *(v1 + 376);

  return MEMORY[0x1EEE6DFA0](sub_1D2538DDC, v3, v2);
}

uint64_t sub_1D2538DDC()
{
  v14 = v0;
  v1 = *(v0 + 304);
  v2 = *(v0 + 112);
  _s7ManagerCMa();
  swift_allocObject();
  v3 = sub_1D2870F78();
  v4 = sub_1D239E2B0(v3, 3);
  *(v0 + 448) = v4;
  v5 = *(v4 + 32);
  *(v4 + 32) = &unk_1D28919A8;
  *(v4 + 40) = v2;
  sub_1D2870F78();
  sub_1D22A576C(v5);
  v12 = xmmword_1D2883070;
  v13 = MEMORY[0x1E69E7CC0];
  sub_1D23B272C(&v12, v1);

  sub_1D2878658();
  *(v0 + 456) = OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration7Manager__selectedGenerator;
  swift_beginAccess();
  *(v0 + 496) = *MEMORY[0x1E69E8790];
  v6 = sub_1D2878558();
  *(v0 + 464) = v6;
  v7 = swift_task_alloc();
  *(v0 + 472) = v7;
  *v7 = v0;
  v7[1] = sub_1D2538F90;
  v8 = *(v0 + 256);
  v9 = *(v0 + 264);
  v10 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6DB90](v8, v6, v10, v9, v0 + 80);
}

uint64_t sub_1D2538F90()
{
  v2 = *v1;

  v3 = *(v2 + 376);
  v4 = *(v2 + 384);
  if (v0)
  {
    v5 = sub_1D253954C;
  }

  else
  {
    v5 = sub_1D25390B0;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1D25390B0()
{
  v1 = *(v0 + 256);
  if ((*(*(v0 + 240) + 48))(v1, 1, *(v0 + 232)) == 1)
  {
    v3 = *(v0 + 296);
    v2 = *(v0 + 304);
    v4 = *(v0 + 288);
    (*(*(v0 + 272) + 8))(*(v0 + 280), *(v0 + 264));

    sub_1D253CCF8();
    swift_allocError();
    *v5 = xmmword_1D28830A0;
    *(v5 + 16) = 3;
    swift_willThrow();

    (*(v3 + 8))(v2, v4);

    v6 = *(v0 + 8);

    return v6();
  }

  sub_1D253CFF4(v1, *(v0 + 248), type metadata accessor for ImageGeneration.PreviewStatus);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v9 = *(v0 + 448) + *(v0 + 456);
      sub_1D253CFF4(*(v0 + 248), *(v0 + 224), type metadata accessor for ImageGeneration.PreviewImage);
      if (*(v9 + 24))
      {
        sub_1D22D7044(*(v0 + 448) + *(v0 + 456), v0 + 16);
        v10 = *(v0 + 40);
        v11 = *(v0 + 48);
        __swift_project_boxed_opaque_existential_1((v0 + 16), v10);
        (*(v11 + 112))(v10, v11);
        __swift_destroy_boxed_opaque_existential_0(v0 + 16);
      }

      v12 = *(v0 + 496);
      v13 = *(v0 + 448);
      v14 = *(v0 + 224);
      v15 = *(v0 + 192);
      v16 = *(v0 + 176);
      v17 = *(v0 + 184);
      v18 = swift_task_alloc();
      *(v18 + 16) = v13;
      *(v18 + 24) = v14;
      (*(v17 + 104))(v15, v12, v16);
      sub_1D2878778();

      sub_1D2878658();
      v19 = sub_1D2878558();
      *(v0 + 480) = v19;
      v20 = swift_task_alloc();
      *(v0 + 488) = v20;
      *v20 = v0;
      v20[1] = sub_1D25396B8;
      v21 = *(v0 + 144);
      v22 = *(v0 + 152);
      v23 = MEMORY[0x1E69E85E0];
      v24 = v0 + 88;
      goto LABEL_15;
    }

    v25 = *(v0 + 248);
    v26 = &unk_1EC6DDA50;
    goto LABEL_13;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v25 = *(v0 + 248);
    sub_1D22BCDC4(*v25, *(v25 + 8), *(v25 + 16));
    v26 = &qword_1EC6DA778;
LABEL_13:
    v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v26) + 48);
    v28 = sub_1D28785F8();
    (*(*(v28 - 8) + 8))(v25 + v27, v28);
  }

  v19 = sub_1D2878558();
  *(v0 + 464) = v19;
  v29 = swift_task_alloc();
  *(v0 + 472) = v29;
  *v29 = v0;
  v29[1] = sub_1D2538F90;
  v21 = *(v0 + 256);
  v22 = *(v0 + 264);
  v23 = MEMORY[0x1E69E85E0];
  v24 = v0 + 80;
LABEL_15:

  return MEMORY[0x1EEE6DB90](v21, v19, v23, v22, v24);
}

uint64_t sub_1D253954C()
{
  v2 = v0[37];
  v1 = v0[38];
  v4 = v0[35];
  v3 = v0[36];
  v5 = v0[33];
  v6 = v0[34];

  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1D25396B8()
{
  v2 = *v1;

  v3 = *(v2 + 376);
  v4 = *(v2 + 384);
  if (v0)
  {
    v5 = sub_1D2539BBC;
  }

  else
  {
    v5 = sub_1D25397D8;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1D25397D8()
{
  v1 = v0[18];
  if ((*(v0[16] + 48))(v1, 1, v0[15]) == 1)
  {
    v2 = v0[27];
    v3 = v0[28];
    v4 = v0[25];
    v5 = v0[26];
    (*(v0[20] + 8))(v0[21], v0[19]);
    (*(v5 + 8))(v2, v4);
    sub_1D253CF94(v3, type metadata accessor for ImageGeneration.PreviewImage);
    v6 = sub_1D2878558();
    v0[58] = v6;
    v7 = swift_task_alloc();
    v0[59] = v7;
    *v7 = v0;
    v7[1] = sub_1D2538F90;
    v8 = v0[32];
    v9 = v0[33];
    v10 = MEMORY[0x1E69E85E0];
    v11 = v0 + 10;
LABEL_5:

    return MEMORY[0x1EEE6DB90](v8, v6, v10, v9, v11);
  }

  sub_1D253CFF4(v1, v0[17], type metadata accessor for ImageGeneration.FinalImageStatus);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D253CF94(v0[17], type metadata accessor for ImageGeneration.FinalImageStatus);
    v6 = sub_1D2878558();
    v0[60] = v6;
    v12 = swift_task_alloc();
    v0[61] = v12;
    *v12 = v0;
    v12[1] = sub_1D25396B8;
    v8 = v0[18];
    v9 = v0[19];
    v10 = MEMORY[0x1E69E85E0];
    v11 = v0 + 11;
    goto LABEL_5;
  }

  v13 = v0[37];
  v27 = v0[36];
  v28 = v0[38];
  v14 = v0[34];
  v23 = v0[33];
  v24 = v0[35];
  v15 = v0[27];
  v29 = v0[28];
  v17 = v0[25];
  v16 = v0[26];
  v19 = v0[20];
  v18 = v0[21];
  v20 = v0[19];
  v25 = v0[17];
  v26 = v0[12];

  (*(v19 + 8))(v18, v20);
  (*(v16 + 8))(v15, v17);
  (*(v14 + 8))(v24, v23);
  (*(v13 + 8))(v28, v27);
  sub_1D253CFF4(v25, v26, type metadata accessor for PlaygroundImage);
  sub_1D253CF94(v29, type metadata accessor for ImageGeneration.PreviewImage);

  v21 = v0[1];

  return v21();
}

uint64_t sub_1D2539BBC()
{
  v1 = v0[37];
  v13 = v0[36];
  v14 = v0[38];
  v2 = v0[34];
  v11 = v0[33];
  v12 = v0[35];
  v3 = v0[27];
  v15 = v0[28];
  v5 = v0[25];
  v4 = v0[26];
  v6 = v0[20];
  v7 = v0[21];
  v8 = v0[19];

  (*(v6 + 8))(v7, v8);
  (*(v4 + 8))(v3, v5);
  (*(v2 + 8))(v12, v11);
  (*(v1 + 8))(v14, v13);
  sub_1D253CF94(v15, type metadata accessor for ImageGeneration.PreviewImage);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1D2539D88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[17] = a5;
  v6[18] = a6;
  v6[15] = a3;
  v6[16] = a4;
  v6[13] = a1;
  v6[14] = a2;
  v7 = sub_1D2870F38();
  v6[19] = v7;
  v6[20] = *(v7 - 8);
  v6[21] = swift_task_alloc();
  v8 = sub_1D2870F28();
  v6[22] = v8;
  v6[23] = *(v8 - 8);
  v6[24] = swift_task_alloc();
  v9 = sub_1D28771B8();
  v6[25] = v9;
  v6[26] = *(v9 - 8);
  v6[27] = swift_task_alloc();
  sub_1D28718F8();
  v6[28] = swift_task_alloc();
  v10 = sub_1D28714D8();
  v6[29] = v10;
  v6[30] = *(v10 - 8);
  v6[31] = swift_task_alloc();
  sub_1D2878048();
  v6[32] = swift_task_alloc();
  v11 = sub_1D28714E8();
  v6[33] = v11;
  v6[34] = *(v11 - 8);
  v6[35] = swift_task_alloc();
  v6[36] = swift_task_alloc();
  v12 = sub_1D2870DD8();
  v6[37] = v12;
  v6[38] = *(v12 - 8);
  v6[39] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD9E8);
  v6[40] = v13;
  v6[41] = *(v13 - 8);
  v6[42] = swift_task_alloc();
  sub_1D2878568();
  v6[43] = sub_1D2878558();
  v15 = sub_1D28784F8();
  v6[44] = v15;
  v6[45] = v14;

  return MEMORY[0x1EEE6DFA0](sub_1D253A11C, v15, v14);
}

uint64_t sub_1D253A11C()
{
  sub_1D2870E18();
  if (*(v0 + 90))
  {
    if (*(v0 + 90) == 1)
    {
      v1 = *(v0 + 136);
      *(v0 + 16) = *(v0 + 120);
      *(v0 + 32) = v1;
      sub_1D2877FE8();
      if (qword_1ED89E0F0 != -1)
      {
        swift_once();
      }

      v27 = *(v0 + 312);
      v31 = *(v0 + 304);
      v2 = *(v0 + 288);
      v32 = *(v0 + 296);
      v33 = *(v0 + 280);
      v34 = *(v0 + 272);
      v35 = *(v0 + 264);
      v3 = *(v0 + 240);
      v4 = *(v0 + 248);
      v30 = *(v0 + 232);
      v6 = *(v0 + 208);
      v5 = *(v0 + 216);
      v28 = *(v0 + 200);
      v29 = __swift_project_value_buffer(v30, qword_1ED8B0060);
      v7 = *(v3 + 16);
      v7(v4, v29, v30);
      sub_1D28718C8();
      sub_1D2871508();
      sub_1D2870DE8();
      sub_1D262D4E8();
      sub_1D2877188();
      (*(v6 + 104))(v5, *MEMORY[0x1E6981630], v28);
      v8 = sub_1D2877228();

      (*(v6 + 8))(v5, v28);
      *(v0 + 72) = v8;
      *(v0 + 80) = 0;
      *(v0 + 88) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD9C0);
      sub_1D22F587C();
      sub_1D2870E08();

      (*(v31 + 8))(v27, v32);
      sub_1D2877FE8();
      v7(v4, v29, v30);
      sub_1D28718C8();
      v9 = v2;
      sub_1D2871508();
      sub_1D2877FE8();
      v7(v4, v29, v30);
      sub_1D28718C8();
      sub_1D2871508();
      v10 = MEMORY[0x1E69E7CC0];
      v11 = v9;
      sub_1D2870F18();
      v12 = *(v34 + 8);
      v12(v33, v35);
      v12(v11, v35);
      *(v0 + 96) = v10;
      sub_1D253CE40(&qword_1EC6DD9F0, MEMORY[0x1E695A448]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD9F8);
      sub_1D22BB9D8(&qword_1EC6DDA00, &qword_1EC6DD9F8);
      sub_1D2879088();
      v13 = swift_task_alloc();
      *(v0 + 368) = v13;
      v14 = sub_1D2535780();
      v15 = sub_1D22BB9D8(&qword_1EC6DDA08, &qword_1EC6DD9E8);
      *v13 = v0;
      v13[1] = sub_1D253A7CC;
      v16 = *(v0 + 336);
      v17 = *(v0 + 320);
      v18 = *(v0 + 192);
      v19 = *(v0 + 168);

      return MEMORY[0x1EEDB2D68](v16, v18, 1, v19, &type metadata for GenerateImageIntent, v17, v14, v15);
    }

    else
    {

      v25 = *(v0 + 8);

      return v25();
    }
  }

  else
  {
    if (qword_1EC6D8B40 != -1)
    {
      swift_once();
    }

    v20 = qword_1EC6D8B50;
    v21 = OBJC_IVAR____TtC23ImagePlaygroundInternal32GenerativePlaygroundPhotoLibrary_shouldFetchAssets;
    swift_beginAccess();
    *(v20 + v21) = 0;
    v22 = swift_task_alloc();
    *(v0 + 384) = v22;
    *v22 = v0;
    v22[1] = sub_1D253AB00;
    v24 = *(v0 + 104);
    v23 = *(v0 + 112);

    return GenerativePlaygroundPhotoLibrary.createNewAsset(with:context:shouldHide:)(v24, v23, 0);
  }
}

uint64_t sub_1D253A7CC()
{
  v2 = *v1;
  v15 = *(*v1 + 336);
  v3 = *(*v1 + 328);
  v14 = *(*v1 + 320);
  v13 = *(*v1 + 192);
  v4 = *(*v1 + 184);
  v5 = *(*v1 + 176);
  v6 = *(*v1 + 168);
  v7 = *(*v1 + 160);
  v8 = *(*v1 + 152);
  *(*v1 + 376) = v0;

  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v13, v5);
  (*(v3 + 8))(v15, v14);
  v9 = *(v2 + 352);
  v10 = *(v2 + 360);
  if (v0)
  {
    v11 = sub_1D253AD28;
  }

  else
  {
    v11 = sub_1D253AA08;
  }

  return MEMORY[0x1EEE6DFA0](v11, v9, v10);
}

uint64_t sub_1D253AA08()
{
  if (qword_1EC6D8B40 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC6D8B50;
  v2 = OBJC_IVAR____TtC23ImagePlaygroundInternal32GenerativePlaygroundPhotoLibrary_shouldFetchAssets;
  swift_beginAccess();
  *(v1 + v2) = 0;
  v3 = swift_task_alloc();
  v0[48] = v3;
  *v3 = v0;
  v3[1] = sub_1D253AB00;
  v5 = v0[13];
  v4 = v0[14];

  return GenerativePlaygroundPhotoLibrary.createNewAsset(with:context:shouldHide:)(v5, v4, 0);
}

uint64_t sub_1D253AB00()
{
  v2 = *v1;
  *(*v1 + 392) = v0;

  v3 = *(v2 + 360);
  v4 = *(v2 + 352);
  if (v0)
  {
    v5 = sub_1D253AE20;
  }

  else
  {
    v5 = sub_1D253AC3C;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D253AC3C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D253AD28()
{
  v1 = *(v0 + 376);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D253AE20()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D253AF10()
{
  v0 = sub_1D28718F8();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1D28714D8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D2878048();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1D28714E8();
  __swift_allocate_value_buffer(v6, qword_1EC6DD8C8);
  __swift_project_value_buffer(v6, qword_1EC6DD8C8);
  sub_1D2877FE8();
  if (qword_1ED89E0F0 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_1ED8B0060);
  (*(v2 + 16))(v4, v7, v1);
  sub_1D28718C8();
  return sub_1D2871508();
}

uint64_t sub_1D253B124()
{
  v0 = sub_1D28718F8();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1D28714D8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D2878048();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1D28714E8();
  __swift_allocate_value_buffer(v6, qword_1EC6DD8E0);
  __swift_project_value_buffer(v6, qword_1EC6DD8E0);
  sub_1D2877FE8();
  if (qword_1ED89E0F0 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_1ED8B0060);
  (*(v2 + 16))(v4, v7, v1);
  sub_1D28718C8();
  return sub_1D2871508();
}

uint64_t sub_1D253B338(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F70);
  v2[4] = swift_task_alloc();
  sub_1D2878568();
  v2[5] = sub_1D2878558();
  v4 = sub_1D28784F8();
  v2[6] = v4;
  v2[7] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1D253B408, v4, v3);
}

uint64_t sub_1D253B408()
{
  v1 = v0[4];
  v2 = sub_1D2871818();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_1D253B4E8;
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[2];

  return sub_1D238E3AC(v6, v4, 0, v5);
}

uint64_t sub_1D253B4E8()
{
  v2 = *v1;
  v3 = *(*v1 + 32);
  *(*v1 + 72) = v0;

  sub_1D22BD238(v3, &qword_1EC6D8F70);
  v4 = *(v2 + 56);
  v5 = *(v2 + 48);
  if (v0)
  {
    v6 = sub_1D253B700;
  }

  else
  {
    v6 = sub_1D253B650;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, v4);
}

uint64_t sub_1D253B650()
{
  v1 = *(v0 + 16);

  v2 = type metadata accessor for ImageGeneration.GenerationParameters();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1D253B700()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D253B76C(void *a1)
{
  v2 = v1;
  v4 = sub_1D2878AF8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + 24) = 0;
  v11[0] = sub_1D22BCFD0(0, &unk_1ED89CD20);
  sub_1D22BCFD0(0, &qword_1ED89CD50);
  v8 = sub_1D2878AB8();
  v11[1] = MEMORY[0x1E69E7CC0];
  sub_1D253CE40(&unk_1ED89CD30, MEMORY[0x1E69E80B0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E10E0);
  sub_1D22BB9D8(&qword_1ED89CE70, &unk_1EC6E10E0);
  sub_1D2879088();
  v9 = sub_1D2878B08();

  (*(v5 + 8))(v7, v4);
  *(v2 + 32) = v9;
  [a1 setTotalUnitCount_];
  [a1 setCompletedUnitCount_];
  *(v2 + 16) = a1;
  return v2;
}

uint64_t sub_1D253B984(void *a1)
{
  v2 = [a1 completedUnitCount];
  result = [a1 completedUnitCount];
  if (v2 < 576)
  {
    v4 = result + 6;
    if (!__OFADD__(result, 6))
    {
      goto LABEL_6;
    }

    __break(1u);
  }

  v4 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    return result;
  }

LABEL_6:
  [a1 setCompletedUnitCount_];
  result = [a1 completedUnitCount];
  if (result >= 720)
  {
    swift_getObjectType();
    return sub_1D2878B88();
  }

  return result;
}

uint64_t sub_1D253BA1C()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1D253BA5C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC6D8CC0 != -1)
  {
    swift_once();
  }

  v2 = sub_1D28714E8();
  v3 = __swift_project_value_buffer(v2, qword_1EC6E3EB0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1D253BB14()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDA60);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDA68);
  MEMORY[0x1EEE9AC00](v1);
  sub_1D2870FB8();
  sub_1D2870FA8();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDA70);
  sub_1D2870F98();

  sub_1D2870FA8();
  sub_1D2870FC8();
  return sub_1D2870F88();
}

uint64_t sub_1D253BCC8(uint64_t a1)
{
  v4 = *v1;
  v5 = v1[1];
  v7 = v1[2];
  v6 = v1[3];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D22BC8FC;

  return sub_1D2535CFC(a1, v4, v5, v7, v6);
}

uint64_t sub_1D253BD88@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D253BEAC();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return result;
}

uint64_t sub_1D253BDB4(uint64_t a1)
{
  v2 = sub_1D2535780();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

uint64_t sub_1D253BE14(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1D253BE5C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D253BEAC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD938);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v58 = &v51 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD940);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v57 = &v51 - v3;
  v4 = sub_1D2870FD8();
  v5 = *(v4 - 8);
  v76 = v4;
  v77 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v73 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD948);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v67 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v66 = &v51 - v10;
  v68 = sub_1D2877FC8();
  v63 = *(v68 - 1);
  MEMORY[0x1EEE9AC00](v68);
  v62 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_1D2877FA8();
  v60 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD950);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v51 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD958);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v51 - v18;
  v20 = sub_1D28718F8();
  MEMORY[0x1EEE9AC00](v20 - 8);
  v65 = &v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1D28714D8();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v74 = &v51 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1D2878048();
  MEMORY[0x1EEE9AC00](v25 - 8);
  v27 = &v51 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_1D28714E8();
  v28 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v64 = &v51 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD960);
  sub_1D2877FE8();
  if (qword_1ED89E0F0 != -1)
  {
    swift_once();
  }

  v30 = __swift_project_value_buffer(v22, qword_1ED8B0060);
  v71 = *(v23 + 16);
  v72 = v30;
  v31 = v74;
  v71(v74, v30, v22);
  v69 = v22;
  sub_1D28718C8();
  sub_1D2871508();
  v70 = *(v28 + 56);
  v70(v19, 1, 1, v75);
  v78 = 0;
  v79 = 0;
  (*(v60 + 13))(v13, *MEMORY[0x1E695A7C8], v61);
  (*(v63 + 104))(v62, *MEMORY[0x1E695A7D0], v68);
  sub_1D2877FB8();
  v32 = sub_1D2877FD8();
  (*(*(v32 - 8) + 56))(v16, 0, 1, v32);
  v33 = sub_1D2870DD8();
  v34 = *(v33 - 8);
  v35 = *(v34 + 56);
  v61 = v33;
  v60 = v35;
  v56 = v34 + 56;
  (v35)(v66, 1, 1);
  v36 = *(v77 + 104);
  v59 = *MEMORY[0x1E695A500];
  v77 += 104;
  v68 = v36;
  v36(v73);
  v55 = sub_1D2870E78();
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD968);
  sub_1D2877FE8();
  v62 = (v23 + 16);
  v71(v31, v72, v69);
  sub_1D28718C8();
  sub_1D2871508();
  v63 = v28 + 56;
  v70(v19, 1, 1, v75);
  if (qword_1EC6D8D68 != -1)
  {
    swift_once();
  }

  v37 = type metadata accessor for ImagePlaygroundStyleEntity();
  v38 = __swift_project_value_buffer(v37, qword_1EC6E3FA0);
  v39 = v57;
  sub_1D253CBEC(v38, v57);
  (*(*(v37 - 8) + 56))(v39, 0, 1, v37);
  v40 = v66;
  v41 = v61;
  v42 = v60;
  v60(v66, 1, 1, v61);
  v42(v67, 1, 1, v41);
  v43 = v59;
  (v68)(v73, v59, v76);
  sub_1D253CC50();
  sub_1D253CE40(&qword_1EC6DD978, type metadata accessor for ImagePlaygroundStyleEntity);
  v57 = sub_1D2870E58();
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DD980);
  sub_1D2877FE8();
  v53 = v27;
  v71(v74, v72, v69);
  sub_1D28718C8();
  sub_1D2871508();
  v70(v19, 1, 1, v75);
  v44 = sub_1D2870DA8();
  v45 = *(*(v44 - 8) + 56);
  v52 = v19;
  v45(v58, 1, 1, v44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9BA8);
  sub_1D2873AA8();
  *(swift_allocObject() + 16) = xmmword_1D287F500;
  sub_1D2873A68();
  v46 = v61;
  v47 = v60;
  v60(v40, 1, 1, v61);
  v48 = v73;
  (v68)(v73, v43, v76);
  v49 = v52;
  v58 = sub_1D2870E68();
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD990);
  sub_1D2877FE8();
  v71(v74, v72, v69);
  sub_1D28718C8();
  sub_1D2871508();
  v70(v49, 1, 1, v75);
  LOBYTE(v78) = 0;
  v47(v40, 1, 1, v46);
  v47(v67, 1, 1, v46);
  (v68)(v48, v59, v76);
  sub_1D253CCA4();
  sub_1D2870E48();
  return v55;
}

uint64_t sub_1D253CBEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImagePlaygroundStyleEntity();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D253CC50()
{
  result = qword_1EC6DD970;
  if (!qword_1EC6DD970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DD970);
  }

  return result;
}

unint64_t sub_1D253CCA4()
{
  result = qword_1EC6DD998;
  if (!qword_1EC6DD998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DD998);
  }

  return result;
}

unint64_t sub_1D253CCF8()
{
  result = qword_1EC6DD9B0;
  if (!qword_1EC6DD9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DD9B0);
  }

  return result;
}

uint64_t type metadata accessor for GenerateImageIntent.InputConfiguration()
{
  result = qword_1EC6DDA78;
  if (!qword_1EC6DDA78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D253CD98(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 == 3 || a5 == 1)
  {
  }

  else if (!a5)
  {
  }
}

unint64_t sub_1D253CDC8()
{
  result = qword_1EC6DD9D8;
  if (!qword_1EC6DD9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DD9D8);
  }

  return result;
}

uint64_t block_copy_helper_22(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1D2870F78();
}

uint64_t sub_1D253CE40(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D253CE88(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD938);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D253CEF8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1D22BC8FC;

  return sub_1D253B338(a1, v1);
}

uint64_t sub_1D253CF94(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D253CFF4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1D253D084()
{
  sub_1D238DF94();
  if (v0 <= 0x3F)
  {
    sub_1D253D120();
    if (v1 <= 0x3F)
    {
      type metadata accessor for ImagePlaygroundStyleEntity();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D253D120()
{
  if (!qword_1EC6DDA90)
  {
    sub_1D2870DA8();
    v0 = sub_1D2878F18();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC6DDA90);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_23ImagePlaygroundInternal08GenerateA11IntentErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_1D253D194(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D253D1DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D253D220(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_1D253D248(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v4 = sub_1D2878028();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1D28718F8();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1D28714D8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D2878048();
  MEMORY[0x1EEE9AC00](v10 - 8);
  if (a3 <= 1u || a3 == 2)
  {
    sub_1D2878018();
    sub_1D2878008();
    sub_1D2877FF8();
    sub_1D2878008();
    sub_1D2878038();
  }

  else
  {
    sub_1D2877FE8();
  }

  if (qword_1ED89E0F0 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v6, qword_1ED8B0060);
  (*(v7 + 16))(v9, v11, v6);
  sub_1D28718C8();
  return sub_1D2871508();
}

uint64_t sub_1D253D684()
{
  v0 = sub_1D2871028();
  __swift_allocate_value_buffer(v0, qword_1EC6E3EC8);
  __swift_project_value_buffer(v0, qword_1EC6E3EC8);
  return sub_1D2871018();
}

uint64_t sub_1D253D6E8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDB00);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v20 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD958);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v20 - v4;
  v6 = sub_1D28714E8();
  v21 = v6;
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDB08);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDB10);
  v8 = *(*(v24 - 8) + 72);
  v9 = (*(*(v24 - 8) + 80) + 32) & ~*(*(v24 - 8) + 80);
  v25 = 2 * v8;
  v10 = swift_allocObject();
  v26 = v10;
  *(v10 + 16) = xmmword_1D28838F0;
  *(v10 + v9) = 0;
  v11 = v10 + v9;
  sub_1D28714C8();
  v12 = *(v7 + 56);
  v22 = v7 + 56;
  v23 = v12;
  v13 = v5;
  v12(v5, 1, 1, v6);
  v28 = sub_1D2870EE8();
  v14 = *(v28 - 8);
  v27 = *(v14 + 56);
  v29 = v14 + 56;
  v27(v2, 1, 1, v28);
  sub_1D2870EF8();
  *(v11 + v8) = 1;
  sub_1D28714C8();
  v15 = v5;
  v16 = v21;
  v17 = v23;
  v23(v15, 1, 1, v21);
  v27(v2, 1, 1, v28);
  sub_1D2870EF8();
  *(v11 + v25) = 2;
  sub_1D28714C8();
  v17(v13, 1, 1, v16);
  v27(v2, 1, 1, v28);
  sub_1D2870EF8();
  v18 = sub_1D25DA588(v26);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_1EC6E3EE0 = v18;
  return result;
}

uint64_t sub_1D253DAF8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x526E6568576B7361;
  v4 = 0xEA00000000006E75;
  if (v2 != 1)
  {
    v3 = 0x726576656ELL;
    v4 = 0xE500000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x737961776C61;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  v7 = 0x526E6568576B7361;
  v8 = 0xEA00000000006E75;
  if (*a2 != 1)
  {
    v7 = 0x726576656ELL;
    v8 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x737961776C61;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D2879618();
  }

  return v11 & 1;
}