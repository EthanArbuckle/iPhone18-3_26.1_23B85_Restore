uint64_t CallTranslationMoreMenuViewModel.deinit()
{

  sub_1C2C73644(v0 + 32, &qword_1EC062300);

  return v0;
}

uint64_t CallTranslationMoreMenuViewModel.__deallocating_deinit()
{

  sub_1C2C73644(v0 + 32, &qword_1EC062300);

  return MEMORY[0x1EEE6BDC0](v0, 80, 7);
}

uint64_t sub_1C2DB4A44()
{
  v0 = sub_1C2E72B44();
  __swift_allocate_value_buffer(v0, qword_1EC0622E8);
  __swift_project_value_buffer(v0, qword_1EC0622E8);
  return sub_1C2E72B34();
}

uint64_t sub_1C2DB4B20(unsigned __int8 *a1)
{
  v3 = *(v1 + 16);
  v4 = *a1;
  v5 = a1[1];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC062310);
  return v3(v4, v5, &a1[*(v6 + 64)]);
}

uint64_t sub_1C2DB4B88(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DC40);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C2DB4C0C()
{
  result = qword_1EC062318;
  if (!qword_1EC062318)
  {
    type metadata accessor for CallTranslationLanguagePicker();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC062318);
  }

  return result;
}

uint64_t sub_1C2DB4C64(uint64_t a1)
{
  v2 = type metadata accessor for CallTranslationLanguagePicker();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 BackgroundView.init(_:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  v2 = a1[1].n128_u8[0];
  result = *a1;
  *a2 = *a1;
  a2[1].n128_u8[0] = v2;
  return result;
}

uint64_t BackgroundView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v89 = a1;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC062320);
  MEMORY[0x1EEE9AC00](v81);
  v82 = (&v72 - v2);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC062328);
  MEMORY[0x1EEE9AC00](v88);
  v83 = &v72 - v3;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC062330);
  MEMORY[0x1EEE9AC00](v76);
  v74 = &v72 - v4;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC062338);
  MEMORY[0x1EEE9AC00](v75);
  v6 = &v72 - v5;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC062340);
  MEMORY[0x1EEE9AC00](v80);
  v77 = &v72 - v7;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC062348);
  MEMORY[0x1EEE9AC00](v78);
  v9 = (&v72 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC062350);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v72 - v11);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC062358);
  MEMORY[0x1EEE9AC00](v84);
  v79 = &v72 - v13;
  v14 = sub_1C2E75054();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC062360);
  MEMORY[0x1EEE9AC00](v85);
  v87 = &v72 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC062368);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v72 - v20;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC062370);
  v22 = MEMORY[0x1EEE9AC00](v86);
  v24 = &v72 - v23;
  v25 = *v1;
  v26 = *(v1 + 8);
  v27 = *(v1 + 16);
  v28 = v27 >> 5;
  if (v27 >> 5 <= 2)
  {
    if (!v28)
    {
      v93 = v25;
      LOBYTE(v94) = 0;
      v39 = v24;
      sub_1C2DB69BC();

      sub_1C2E73F44();
      v40 = v96[8];
      *v21 = *v96;
      v21[8] = v40;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0623F8);
      sub_1C2DB6930();
      sub_1C2DB6A10();
      sub_1C2E73F44();
      v33 = &qword_1EC062370;
      sub_1C2C736A4(v39, v87, &qword_1EC062370);
      swift_storeEnumTagMultiPayload();
      sub_1C2DB68A4();
      sub_1C2DB6C78();
      sub_1C2E73F44();
      v34 = v39;
      goto LABEL_23;
    }

    v83 = v24;
    if (v28 == 1)
    {
      v93 = v25;
      LOBYTE(v94) = 1;
      v29 = v25;
      v30 = v26;
      sub_1C2C9651C(v25, v26, v27);
      sub_1C2DB69BC();

      sub_1C2E73F44();
      v31 = v96[8];
      *v21 = *v96;
      v21[8] = v31;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0623F8);
      sub_1C2DB6930();
      sub_1C2DB6A10();
      v32 = v83;
      sub_1C2E73F44();
      v33 = &qword_1EC062370;
      sub_1C2C736A4(v32, v87, &qword_1EC062370);
      swift_storeEnumTagMultiPayload();
      sub_1C2DB68A4();
      sub_1C2DB6C78();
      sub_1C2E73F44();
      sub_1C2DB6554(v29, v30, v27);
      v34 = v32;
LABEL_23:
      v46 = v33;
      return sub_1C2C73644(v34, v46);
    }

    v47 = v26;
    v72 = v26;
    v48 = v25;
    (*(v15 + 104))(v17, *MEMORY[0x1E6981630], v14, v22);

    v49 = 0.0;
    v50 = sub_1C2E750C4();
    v73 = v27;
    v51 = v50;
    (*(v15 + 8))(v17, v14);
    if (v47)
    {
      v49 = 100.0;
    }

    v52 = sub_1C2E73674();
    v53 = sub_1C2E74454();
    v92 = 1;
    *v96 = v51;
    *&v96[16] = 257;
    *&v96[18] = v90;
    *&v96[22] = v91;
    *&v96[24] = 0xBFB999999999999ALL;
    *&v96[32] = v49;
    v96[40] = 1;
    *&v96[41] = v97;
    *&v96[44] = *(&v97 + 3);
    *&v96[48] = v52;
    v96[56] = v53;
    v54 = *&v96[16];
    v55 = *&v96[32];
    *(v12 + 41) = *&v96[41];
    v12[1] = v54;
    v12[2] = v55;
    *v12 = v51;
    swift_storeEnumTagMultiPayload();
    sub_1C2C736A4(v96, &v93, &qword_1EC062418);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC062418);
    sub_1C2DB6AC8();
    sub_1C2C94F38(&qword_1EC062440, &qword_1EC062348);
    v56 = v79;
    sub_1C2E73F44();
    sub_1C2C736A4(v56, v21, &qword_1EC062358);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0623F8);
    sub_1C2DB6930();
    sub_1C2DB6A10();
    v57 = v83;
    sub_1C2E73F44();
    sub_1C2C73644(v56, &qword_1EC062358);
    v58 = &qword_1EC062370;
    sub_1C2C736A4(v57, v87, &qword_1EC062370);
    swift_storeEnumTagMultiPayload();
    sub_1C2DB68A4();
    sub_1C2DB6C78();
    sub_1C2E73F44();
    sub_1C2DB6554(v48, v72, v73);
    sub_1C2C73644(v96, &qword_1EC062418);
    v34 = v57;
    goto LABEL_17;
  }

  if (v28 != 3)
  {
    if (v28 == 4)
    {
      v73 = v27;
      *v96 = v25;
      *&v96[8] = v26;
      v96[16] = v27 & 0x1F;
      v35 = v25;
      v72 = v26;
      sub_1C2C70B1C(v25, v26, v27 & 0x1F);
      sub_1C2E4A384(&v93);
      v36 = v95;
      if (v95 == 255)
      {
        v67 = v74;
        sub_1C2E75634();
        sub_1C2C736A4(v67, v6, &qword_1EC062330);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC062390);
        sub_1C2DB6630();
        sub_1C2DB6708();
        v68 = v77;
        sub_1C2E73F44();
        sub_1C2C73644(v67, &qword_1EC062330);
      }

      else
      {
        v37 = v93;
        v38 = v94;
        if (v95)
        {
          if (v95 == 1)
          {
            sub_1C2C70B1C(v93, v94, 1u);
            sub_1C2E75064();
          }

          else
          {
            sub_1C2C70B1C(v93, v94, 2u);
            sub_1C2E75034();
          }
        }

        else
        {
          sub_1C2C70B1C(v93, v94, 0);
          sub_1C2E750D4();
        }

        (*(v15 + 104))(v17, *MEMORY[0x1E6981630], v14);
        v69 = sub_1C2E750C4();

        (*(v15 + 8))(v17, v14);
        v96[0] = 1;
        *v6 = v69;
        *(v6 + 1) = 0;
        *(v6 + 8) = 257;
        *(v6 + 3) = 0x4049000000000000;
        *(v6 + 16) = 1;
        v6[34] = 1;
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC062390);
        sub_1C2DB6630();
        sub_1C2DB6708();
        v68 = v77;
        sub_1C2E73F44();
        sub_1C2C9E060(v37, v38, v36);
      }

      v33 = &qword_1EC062340;
      sub_1C2C736A4(v68, v82, &qword_1EC062340);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC062378);
      sub_1C2DB65A4();
      sub_1C2DB67C0();
      v70 = v83;
      sub_1C2E73F44();
      sub_1C2C736A4(v70, v87, &qword_1EC062328);
      swift_storeEnumTagMultiPayload();
      sub_1C2DB68A4();
      sub_1C2DB6C78();
      sub_1C2E73F44();
      sub_1C2DB6554(v35, v72, v73);
      sub_1C2C73644(v70, &qword_1EC062328);
      v34 = v68;
      goto LABEL_23;
    }

    v59 = v25;
    v60 = v26;

    sub_1C2DB629C(v61, &v97);
    sub_1C2DB6554(v59, v60, v27);
    v62 = v97;
    _s7SwiftUI5ColorV014CommunicationsB0E029defaultUnselectedControlImageC0ACvgZ_0();
    v63 = sub_1C2E74F74();

    *v96 = v62;
    *&v96[8] = v98;
    *&v96[24] = v99;
    *&v96[40] = 256;
    *&v96[48] = v63;
    *&v96[56] = 256;
    v64 = v82;
    *(v82 + 42) = *&v96[42];
    v65 = *&v96[16];
    *v64 = *v96;
    v64[1] = v65;
    v64[2] = *&v96[32];
    swift_storeEnumTagMultiPayload();
    sub_1C2C736A4(v96, &v93, &qword_1EC062378);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC062378);
    sub_1C2DB65A4();
    sub_1C2DB67C0();
    v66 = v83;
    sub_1C2E73F44();
    v58 = &qword_1EC062328;
    sub_1C2C736A4(v66, v87, &qword_1EC062328);
    swift_storeEnumTagMultiPayload();
    sub_1C2DB68A4();
    sub_1C2DB6C78();
    sub_1C2E73F44();
    sub_1C2C73644(v96, &qword_1EC062378);
    v34 = v66;
LABEL_17:
    v46 = v58;
    return sub_1C2C73644(v34, v46);
  }

  v41 = v25;
  v72 = v26;
  v42 = v24;

  *v9 = sub_1C2E75744();
  v9[1] = v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC062450);
  sub_1C2DB5E88((v9 + *(v44 + 44)));
  v73 = v27;
  sub_1C2C736A4(v9, v12, &qword_1EC062348);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC062418);
  sub_1C2DB6AC8();
  sub_1C2C94F38(&qword_1EC062440, &qword_1EC062348);
  v45 = v79;
  sub_1C2E73F44();
  sub_1C2C736A4(v45, v21, &qword_1EC062358);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0623F8);
  sub_1C2DB6930();
  sub_1C2DB6A10();
  sub_1C2E73F44();
  sub_1C2C73644(v45, &qword_1EC062358);
  sub_1C2C736A4(v42, v87, &qword_1EC062370);
  swift_storeEnumTagMultiPayload();
  sub_1C2DB68A4();
  sub_1C2DB6C78();
  sub_1C2E73F44();
  sub_1C2DB6554(v41, v72, v73);
  sub_1C2C73644(v42, &qword_1EC062370);
  v34 = v9;
  v46 = &qword_1EC062348;
  return sub_1C2C73644(v34, v46);
}

uint64_t sub_1C2DB5E88@<X0>(_OWORD *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC062330);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v36 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v35 - v5;
  v7 = sub_1C2E73BF4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v35 - v12;
  v14 = sub_1C2E75054();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 104))(v18, *MEMORY[0x1E6981630], v14, v16);
  v19 = sub_1C2E750C4();
  (*(v15 + 8))(v18, v14);
  sub_1C2E758F4();
  v21 = v20;
  v23 = v22;
  LOBYTE(v42[0]) = 1;
  sub_1C2E73BE4();
  (*(v8 + 16))(v10, v13, v7);
  sub_1C2DB6E98();
  v24 = sub_1C2E73294();
  (*(v8 + 8))(v13, v7);
  sub_1C2E75634();
  v25 = v36;
  sub_1C2C736A4(v6, v36, &qword_1EC062330);
  v39[0] = v19;
  v39[1] = 0;
  *v40 = 257;
  *&v40[2] = v37;
  *&v40[6] = v38;
  __asm { FMOV            V0.2D, #1.5 }

  v35 = _Q0;
  *&v40[8] = _Q0;
  *&v40[24] = v21;
  *v41 = v23;
  *&v41[8] = 0xBFC999999999999ALL;
  *&v41[16] = v24;
  *&v41[24] = 0;
  v31 = *v40;
  *(a1 + 58) = *&v41[10];
  v32 = *v41;
  a1[2] = *&v40[16];
  a1[3] = v32;
  *a1 = v19;
  a1[1] = v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC062470);
  sub_1C2C736A4(v25, a1 + *(v33 + 48), &qword_1EC062330);
  sub_1C2C736A4(v39, v42, &qword_1EC062478);
  sub_1C2C73644(v6, &qword_1EC062330);
  sub_1C2C73644(v25, &qword_1EC062330);
  v42[0] = v19;
  v42[1] = 0;
  v43 = 257;
  v44 = v37;
  v45 = v38;
  v46 = v35;
  v47 = v21;
  v48 = v23;
  v49 = 0xBFC999999999999ALL;
  v50 = v24;
  v51 = 0;
  return sub_1C2C73644(v42, &qword_1EC062478);
}

uint64_t sub_1C2DB629C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 >> 62)
  {
    v4 = sub_1C2E764E4();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = MEMORY[0x1E69E7CC0];
  if (!v4)
  {
    goto LABEL_17;
  }

  if (v4 == 1)
  {
    *&v15 = MEMORY[0x1E69E7CC0];
    sub_1C2E76634();
    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1C6927010](0, a1);
      sub_1C2E74E94();
      sub_1C2E74F74();
      swift_unknownObjectRelease();
    }

    else
    {
      v11 = *(a1 + 32);
      sub_1C2E74E94();
      sub_1C2E74F74();
    }

    sub_1C2E76614();
    sub_1C2E76644();
    sub_1C2E76654();
    sub_1C2E76624();
    goto LABEL_16;
  }

  *&v15 = MEMORY[0x1E69E7CC0];
  result = sub_1C2E76634();
  if ((v4 & 0x8000000000000000) == 0)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v8 = 0;
      do
      {
        v9 = v8 + 1;
        v10 = MEMORY[0x1C6927010]();
        sub_1C2E74E94();
        sub_1C2E74F74();
        swift_unknownObjectRelease();

        sub_1C2E76614();
        sub_1C2E76644();
        sub_1C2E76654();
        sub_1C2E76624();
        v8 = v9;
      }

      while (v4 != v9);
    }

    else
    {
      v12 = (a1 + 32);
      do
      {
        v13 = *v12++;
        v14 = v13;
        sub_1C2E74E94();
        sub_1C2E74F74();

        sub_1C2E76614();
        sub_1C2E76644();
        sub_1C2E76654();
        sub_1C2E76624();
        --v4;
      }

      while (v4);
    }

LABEL_16:
    v5 = v15;
LABEL_17:
    MEMORY[0x1C6925F80](v5);
    sub_1C2E758B4();
    sub_1C2E758C4();
    result = sub_1C2E73434();
    *a2 = v15;
    *(a2 + 16) = v16;
    *(a2 + 32) = v17;
    return result;
  }

  __break(1u);
  return result;
}

void sub_1C2DB6554(void *a1, void *a2, unsigned __int8 a3)
{
  v3 = a3 >> 5;
  if (v3 <= 2)
  {
    if (a3 >> 5)
    {
      if (v3 != 1 && v3 != 2)
      {
        return;
      }

LABEL_10:

      return;
    }

    goto LABEL_9;
  }

  switch(v3)
  {
    case 3u:
      goto LABEL_10;
    case 4u:
      sub_1C2C77608(a1, a2, a3 & 0x1F);
      return;
    case 5u:
LABEL_9:

      break;
  }
}

unint64_t sub_1C2DB65A4()
{
  result = qword_1EC062380;
  if (!qword_1EC062380)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC062340);
    sub_1C2DB6630();
    sub_1C2DB6708();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC062380);
  }

  return result;
}

unint64_t sub_1C2DB6630()
{
  result = qword_1EC062388;
  if (!qword_1EC062388)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC062390);
    sub_1C2DB6C00(&qword_1EC062398, &qword_1EC0623A0);
    sub_1C2C94F38(&qword_1EC05CBF0, &qword_1EC060278);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC062388);
  }

  return result;
}

unint64_t sub_1C2DB6708()
{
  result = qword_1EC0623A8;
  if (!qword_1EC0623A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC062330);
    sub_1C2C74A8C();
    sub_1C2C94F38(&qword_1EC0623B0, &qword_1EC0623B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0623A8);
  }

  return result;
}

unint64_t sub_1C2DB67C0()
{
  result = qword_1EC0623C0;
  if (!qword_1EC0623C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC062378);
    sub_1C2C94F38(&qword_1EC0623C8, &qword_1EC0623D0);
    sub_1C2C94F38(&qword_1EC0623D8, &qword_1EC0623E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0623C0);
  }

  return result;
}

unint64_t sub_1C2DB68A4()
{
  result = qword_1EC0623E8;
  if (!qword_1EC0623E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC062370);
    sub_1C2DB6930();
    sub_1C2DB6A10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0623E8);
  }

  return result;
}

unint64_t sub_1C2DB6930()
{
  result = qword_1EC0623F0;
  if (!qword_1EC0623F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC0623F8);
    sub_1C2DB69BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0623F0);
  }

  return result;
}

unint64_t sub_1C2DB69BC()
{
  result = qword_1EC062400;
  if (!qword_1EC062400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC062400);
  }

  return result;
}

unint64_t sub_1C2DB6A10()
{
  result = qword_1EC062408;
  if (!qword_1EC062408)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC062358);
    sub_1C2DB6AC8();
    sub_1C2C94F38(&qword_1EC062440, &qword_1EC062348);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC062408);
  }

  return result;
}

unint64_t sub_1C2DB6AC8()
{
  result = qword_1EC062410;
  if (!qword_1EC062410)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC062418);
    sub_1C2DB6B54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC062410);
  }

  return result;
}

unint64_t sub_1C2DB6B54()
{
  result = qword_1EC062420;
  if (!qword_1EC062420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC062428);
    sub_1C2DB6C00(&qword_1EC062430, &qword_1EC062438);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC062420);
  }

  return result;
}

uint64_t sub_1C2DB6C00(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    sub_1C2C76BB0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C2DB6C78()
{
  result = qword_1EC062448;
  if (!qword_1EC062448)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC062328);
    sub_1C2DB65A4();
    sub_1C2DB67C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC062448);
  }

  return result;
}

uint64_t sub_1C2DB6D54(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3B && *(a1 + 17))
  {
    return (*a1 + 59);
  }

  v3 = ((*(a1 + 16) >> 5) & 0xFFFFFFC7 | (8 * ((*(a1 + 16) >> 2) & 7))) ^ 0x3F;
  if (v3 >= 0x3A)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1C2DB6DA8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3A)
  {
    *(result + 16) = 0;
    *result = a2 - 59;
    *(result + 8) = 0;
    if (a3 >= 0x3B)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3B)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 4 * (((-a2 >> 3) & 7) - 8 * a2);
    }
  }

  return result;
}

unint64_t sub_1C2DB6E0C()
{
  result = qword_1EC062458;
  if (!qword_1EC062458)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC062460);
    sub_1C2DB68A4();
    sub_1C2DB6C78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC062458);
  }

  return result;
}

unint64_t sub_1C2DB6E98()
{
  result = qword_1EC062468;
  if (!qword_1EC062468)
  {
    sub_1C2E73BF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC062468);
  }

  return result;
}

uint64_t sub_1C2DB6F30()
{
  _s7SwiftUI5ColorV014CommunicationsB0E029defaultUnselectedControlImageC0ACvgZ_0();
  v0 = sub_1C2E74F74();

  return v0;
}

uint64_t VoicemailDetailDateView.init(contactLabel:date:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  v5 = a4 + *(type metadata accessor for VoicemailDetailDateView() + 20);

  return sub_1C2DB7028(a3, v5);
}

uint64_t type metadata accessor for VoicemailDetailDateView()
{
  result = qword_1EC05BE90;
  if (!qword_1EC05BE90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C2DB7028(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05EFF8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double VoicemailDetailDateView.body.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1C2E73C24();
  sub_1C2DB71FC(v2, v15);
  *&v6[23] = v15[1];
  *&v6[39] = v15[2];
  *&v6[55] = v15[3];
  v6[71] = v16;
  *&v6[7] = v15[0];
  sub_1C2E75744();
  sub_1C2E737F4();
  *&v7[55] = v11;
  *&v7[71] = v12;
  *&v7[87] = v13;
  *&v7[103] = v14;
  *&v7[7] = v8;
  *&v7[23] = v9;
  *&v7[39] = v10;
  *(a1 + 33) = *&v6[16];
  *(a1 + 49) = *&v6[32];
  *(a1 + 65) = *&v6[48];
  *(a1 + 17) = *v6;
  *(a1 + 153) = *&v7[64];
  *(a1 + 169) = *&v7[80];
  *(a1 + 185) = *&v7[96];
  *(a1 + 89) = *v7;
  *(a1 + 105) = *&v7[16];
  result = *&v7[32];
  *(a1 + 121) = *&v7[32];
  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 81) = *&v6[64];
  *(a1 + 200) = *(&v14 + 1);
  *(a1 + 137) = *&v7[48];
  return result;
}

uint64_t sub_1C2DB71FC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1C2E717D4();
  v72 = *(v4 - 8);
  v73 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_1C2E717F4();
  v7 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v9 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05EFF8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v70 - v14;
  v16 = sub_1C2E73D04();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v17 = a1[1];
  if (!v17)
  {
    goto LABEL_7;
  }

  v18 = HIBYTE(v17) & 0xF;
  if ((v17 & 0x2000000000000000) == 0)
  {
    v18 = *a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v18)
  {
    sub_1C2E73CF4();
    sub_1C2E73CE4();
    sub_1C2E73CD4();
    sub_1C2E73CE4();
    v19 = type metadata accessor for VoicemailDetailDateView();
    sub_1C2DB7AEC(a1 + *(v19 + 20), v15);
    v20 = sub_1C2E71844();
    v21 = *(v20 - 8);
    if ((*(v21 + 48))(v15, 1, v20) == 1)
    {
      sub_1C2DB7B5C(v15);
    }

    else
    {
      sub_1C2E717E4();
      sub_1C2E717C4();
      sub_1C2E71824();
      (*(v72 + 8))(v6, v73);
      (*(v7 + 8))(v9, v71);
      (*(v21 + 8))(v15, v20);
    }

    sub_1C2E73CD4();

    sub_1C2E73CE4();
    sub_1C2E73D24();
    v46 = sub_1C2E74884();
    v48 = v47;
    v50 = v49;
    LODWORD(v80) = sub_1C2E740F4();
    v51 = sub_1C2E74794();
    v53 = v52;
    v55 = v54;
    sub_1C2C72340(v46, v48, v50 & 1);

    v56 = [objc_opt_self() currentDevice];
    [v56 userInterfaceIdiom];

    sub_1C2E74644();
    v57 = sub_1C2E747F4();
    v59 = v58;
    v61 = v60;
    v63 = v62;
    sub_1C2C72340(v51, v53, v55 & 1);

    v75 = v57;
    v76 = v59;
    v77 = v61 & 1;
    v78 = v63;
    v79 = 0;
  }

  else
  {
LABEL_7:
    v22 = type metadata accessor for VoicemailDetailDateView();
    sub_1C2DB7AEC(a1 + *(v22 + 20), v12);
    v23 = sub_1C2E71844();
    v24 = *(v23 - 8);
    if ((*(v24 + 48))(v12, 1, v23) == 1)
    {
      sub_1C2DB7B5C(v12);
      v25 = 0;
      v26 = 0xE000000000000000;
    }

    else
    {
      sub_1C2E717E4();
      sub_1C2E717C4();
      v25 = sub_1C2E71824();
      v26 = v27;
      (*(v72 + 8))(v6, v73);
      (*(v7 + 8))(v9, v71);
      (*(v24 + 8))(v12, v23);
    }

    *&v80 = v25;
    *(&v80 + 1) = v26;
    sub_1C2C74960();
    v28 = sub_1C2E748A4();
    v30 = v29;
    v32 = v31;
    LODWORD(v80) = sub_1C2E740F4();
    v33 = sub_1C2E74794();
    v35 = v34;
    v37 = v36;
    sub_1C2C72340(v28, v30, v32 & 1);

    v38 = [objc_opt_self() currentDevice];
    [v38 userInterfaceIdiom];

    sub_1C2E74644();
    v39 = sub_1C2E747F4();
    v41 = v40;
    v43 = v42;
    v45 = v44;
    sub_1C2C72340(v33, v35, v37 & 1);

    v75 = v39;
    v76 = v41;
    v77 = v43 & 1;
    v78 = v45;
    v79 = 1;
  }

  sub_1C2E73F44();
  v64 = v80;
  v65 = v81;
  v66 = v82;
  LOBYTE(v80) = 1;
  LOBYTE(v75) = v82;
  v74 = 1;
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = v64;
  *(a2 + 32) = v65;
  *(a2 + 48) = v66;
  *(a2 + 56) = 0;
  *(a2 + 64) = 1;
  v67 = v64;
  v68 = v65;
  sub_1C2D1EF64(v64, *(&v64 + 1), v65);
  return sub_1C2D1EFA0(v67, *(&v67 + 1), v68);
}

void sub_1C2DB7978()
{
  sub_1C2D2EFC8();
  if (v0 <= 0x3F)
  {
    sub_1C2D2F018();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1C2DB79FC()
{
  result = qword_1EC05B848;
  if (!qword_1EC05B848)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC062480);
    sub_1C2DB7A88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B848);
  }

  return result;
}

unint64_t sub_1C2DB7A88()
{
  result = qword_1EC05B378;
  if (!qword_1EC05B378)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC062488);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B378);
  }

  return result;
}

uint64_t sub_1C2DB7AEC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05EFF8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C2DB7B5C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05EFF8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C2DB7BC4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2DC2C3C(&qword_1EC05FA78, type metadata accessor for ReasonForCallingViewModel);
  sub_1C2E71A64();

  *a2 = *(v3 + 64);
  return result;
}

uint64_t sub_1C2DB7C94@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2DC2C3C(&qword_1EC05FA78, type metadata accessor for ReasonForCallingViewModel);
  sub_1C2E71A64();

  *a2 = *(v3 + 65);
  return result;
}

id CallScreeningViewController.__allocating_init(service:createTextField:showEmptyState:liveReply:textFieldPadding:)(uint64_t a1, int a2, int a3, int a4, uint64_t a5, int a6)
{
  v7 = v6;
  v42 = a6;
  v41 = a5;
  v38 = a4;
  v39 = a3;
  v37 = a2;
  v40 = sub_1C2E72844();
  v9 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC0624A8);
  v12 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v14 = &v35 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05D870);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v35 - v17;
  v19 = objc_allocWithZone(v7);
  v19[OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController_isVisible] = 0;
  v19[OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController_revealMessage] = 0;
  *&v19[OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController____lazy_storage___maskView] = 0;
  *&v19[OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController____lazy_storage___contentView] = 0;
  *&v19[OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController____lazy_storage___collectionViewTextVisibleBottomConstraint] = 0;
  *&v19[OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController____lazy_storage___collectionViewTextHiddenBottomConstraint] = 0;
  *&v19[OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController____lazy_storage___collectionView] = 0;
  v20 = &v19[OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController_textFieldPadding];
  *v20 = 0;
  v20[8] = 1;
  *&v19[OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController____lazy_storage___textFieldBottomConstraint] = 0;
  *&v19[OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController____lazy_storage___textField] = 0;
  *&v19[OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController____lazy_storage___replyStatusLabel] = 0;
  *&v19[OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController____lazy_storage___emptyStateLabel] = 0;
  *&v19[OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController____lazy_storage___dataSource] = 0;
  *&v19[OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController_cancellables] = MEMORY[0x1E69E7CC0];
  v19[OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController_once] = 0;
  v21 = &v19[OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController_reasonForCallingIdentifier];
  *v21 = 0xD000000000000012;
  v21[1] = 0x80000001C2E984E0;
  *&v19[OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController_reasonForCallingViewModel] = 0;
  v19[OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController_hasUserScrolled] = 0;
  v22 = &v19[OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController_waitingToUnlockCancallable];
  *v22 = 0u;
  *(v22 + 1) = 0u;
  *(v22 + 4) = 0;
  *&v19[OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController_lockStateDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v43 = a1;
  sub_1C2C6E3A4(a1, &v19[OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController_service]);
  sub_1C2C6E1B4(0, &qword_1EC05D8C0);
  type metadata accessor for CallTranscripts();
  sub_1C2E76004();
  (*(v16 + 32))(&v19[OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController_cellRegistration], v18, v15);
  v23 = v37;
  type metadata accessor for ReasonForCallingViewModel();
  sub_1C2E76004();
  (*(v12 + 32))(&v19[OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController_reasonForCallingCellRegistration], v14, v36);
  v19[OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController_createTextField] = v23;
  v24 = v39;
  v19[OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController_liveReply] = v38;
  v19[OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController_showEmptyState] = v24;
  v25 = MEMORY[0x1E6996000];
  if ((v23 & 1) == 0)
  {
    v25 = MEMORY[0x1E6995FF8];
  }

  v26 = v40;
  (*(v9 + 104))(v11, *v25, v40);
  (*(v9 + 32))(&v19[OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController_currentInputState], v11, v26);
  *v20 = v41;
  v20[8] = v42 & 1;
  v44.receiver = v19;
  v44.super_class = v35;
  v27 = objc_msgSendSuper2(&v44, sel_initWithNibName_bundle_, 0, 0);
  v28 = qword_1EC05D000;
  v29 = v27;
  if (v28 != -1)
  {
    swift_once();
  }

  v30 = sub_1C2E72B44();
  __swift_project_value_buffer(v30, qword_1EC062490);
  v31 = sub_1C2E72B24();
  v32 = sub_1C2E75FA4();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 67109120;
    *(v33 + 4) = v23 & 1;
    _os_log_impl(&dword_1C2C6B000, v31, v32, "Creating CallScreeningViewController with textField: %{BOOL}d", v33, 8u);
    MEMORY[0x1C6927DF0](v33, -1, -1);
  }

  __swift_destroy_boxed_opaque_existential_1(v43);
  return v29;
}

id CallScreeningViewController.init(service:createTextField:showEmptyState:liveReply:textFieldPadding:)(uint64_t a1, int a2, int a3, int a4, uint64_t a5, int a6)
{
  v40 = a6;
  v39 = a5;
  v36 = a4;
  v37 = a3;
  v34 = a2;
  ObjectType = swift_getObjectType();
  v35 = sub_1C2E72844();
  v8 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC0624A8);
  v11 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v13 = &v33 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05D870);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v33 - v16;
  v6[OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController_isVisible] = 0;
  v6[OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController_revealMessage] = 0;
  *&v6[OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController____lazy_storage___maskView] = 0;
  *&v6[OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController____lazy_storage___contentView] = 0;
  *&v6[OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController____lazy_storage___collectionViewTextVisibleBottomConstraint] = 0;
  *&v6[OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController____lazy_storage___collectionViewTextHiddenBottomConstraint] = 0;
  *&v6[OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController____lazy_storage___collectionView] = 0;
  v18 = &v6[OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController_textFieldPadding];
  *v18 = 0;
  v18[8] = 1;
  *&v6[OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController____lazy_storage___textFieldBottomConstraint] = 0;
  *&v6[OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController____lazy_storage___textField] = 0;
  *&v6[OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController____lazy_storage___replyStatusLabel] = 0;
  *&v6[OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController____lazy_storage___emptyStateLabel] = 0;
  *&v6[OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController____lazy_storage___dataSource] = 0;
  *&v6[OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController_cancellables] = MEMORY[0x1E69E7CC0];
  v6[OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController_once] = 0;
  v19 = &v6[OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController_reasonForCallingIdentifier];
  *v19 = 0xD000000000000012;
  v19[1] = 0x80000001C2E984E0;
  *&v6[OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController_reasonForCallingViewModel] = 0;
  v6[OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController_hasUserScrolled] = 0;
  v20 = &v6[OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController_waitingToUnlockCancallable];
  *v20 = 0u;
  *(v20 + 1) = 0u;
  *(v20 + 4) = 0;
  *&v6[OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController_lockStateDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v41 = a1;
  sub_1C2C6E3A4(a1, &v6[OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController_service]);
  sub_1C2C6E1B4(0, &qword_1EC05D8C0);
  type metadata accessor for CallTranscripts();
  sub_1C2E76004();
  (*(v15 + 32))(&v6[OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController_cellRegistration], v17, v14);
  type metadata accessor for ReasonForCallingViewModel();
  sub_1C2E76004();
  (*(v11 + 32))(&v6[OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController_reasonForCallingCellRegistration], v13, v33);
  v21 = v34;
  v6[OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController_createTextField] = v34;
  v22 = v37;
  v6[OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController_liveReply] = v36;
  v6[OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController_showEmptyState] = v22;
  v23 = MEMORY[0x1E6996000];
  if ((v21 & 1) == 0)
  {
    v23 = MEMORY[0x1E6995FF8];
  }

  v24 = v35;
  (*(v8 + 104))(v10, *v23, v35);
  (*(v8 + 32))(&v6[OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController_currentInputState], v10, v24);
  *v18 = v39;
  v18[8] = v40 & 1;
  v42.receiver = v6;
  v42.super_class = ObjectType;
  v25 = objc_msgSendSuper2(&v42, sel_initWithNibName_bundle_, 0, 0);
  v26 = qword_1EC05D000;
  v27 = v25;
  if (v26 != -1)
  {
    swift_once();
  }

  v28 = sub_1C2E72B44();
  __swift_project_value_buffer(v28, qword_1EC062490);
  v29 = sub_1C2E72B24();
  v30 = sub_1C2E75FA4();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 67109120;
    *(v31 + 4) = v21 & 1;
    _os_log_impl(&dword_1C2C6B000, v29, v30, "Creating CallScreeningViewController with textField: %{BOOL}d", v31, 8u);
    MEMORY[0x1C6927DF0](v31, -1, -1);
  }

  __swift_destroy_boxed_opaque_existential_1(v41);
  return v27;
}

uint64_t sub_1C2DB8884()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DA40);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6[-1] - v2;
  type metadata accessor for CallTranscriptsView();
  sub_1C2DC2C3C(&qword_1EC05DA48, type metadata accessor for CallTranscriptsView);
  sub_1C2E74114();
  sub_1C2E74454();
  v6[3] = v0;
  v6[4] = sub_1C2C94F38(&qword_1EC05DA50, &qword_1EC05DA40);
  __swift_allocate_boxed_opaque_existential_1(v6);
  sub_1C2E74104();
  (*(v1 + 8))(v3, v0);
  return MEMORY[0x1C6926B50](v6);
}

uint64_t sub_1C2DB8A34@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(type metadata accessor for CallTranscriptsView() + 20);
  *(a2 + v4) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DA58);
  swift_storeEnumTagMultiPayload();
  *a2 = a1;
}

uint64_t sub_1C2DB8AB8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC062718);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6[-1] - v2;
  sub_1C2DC35E4();
  sub_1C2E74114();
  sub_1C2E74454();
  v6[3] = v0;
  v6[4] = sub_1C2C94F38(&qword_1EC062728, &qword_1EC062718);
  __swift_allocate_boxed_opaque_existential_1(v6);
  sub_1C2E74104();
  (*(v1 + 8))(v3, v0);
  return MEMORY[0x1C6926B50](v6);
}

id CallScreeningViewController.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  if (v0[OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController_createTextField] == 1)
  {
    v2 = sub_1C2DC0558(&OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController____lazy_storage___textField, sub_1C2DBF508);
    v3 = [v2 superview];

    if (v3)
    {

      [*&v0[OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController____lazy_storage___textField] removeFromSuperview];
    }
  }

  v5.receiver = v0;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

Swift::Void __swiftcall CallScreeningViewController.viewDidLoad()()
{
  v1.receiver = v0;
  v1.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v1, sel_viewDidLoad);
  sub_1C2DB8FB0();
  sub_1C2DBDE48();

  sub_1C2DB99E0();
}

void sub_1C2DB8FB0()
{
  v1 = v0;
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_25;
  }

  v3 = v2;
  v4 = [objc_opt_self() clearColor];
  [v3 setBackgroundColor_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC05D8D0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C2E7A700;
  v6 = sub_1C2DBD948();
  v7 = [v6 topAnchor];

  v8 = [v1 view];
  if (!v8)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v9 = v8;
  v10 = [v8 topAnchor];

  v11 = [v7 constraintEqualToAnchor_];
  *(v5 + 32) = v11;
  v12 = OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController____lazy_storage___contentView;
  v13 = [*&v1[OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController____lazy_storage___contentView] leadingAnchor];
  v14 = [v1 view];
  if (!v14)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v15 = v14;
  v16 = [v14 leadingAnchor];

  v17 = [v13 constraintEqualToAnchor_];
  *(v5 + 40) = v17;
  v18 = [*&v1[v12] trailingAnchor];
  v19 = [v1 view];
  if (!v19)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v20 = v19;
  v21 = [v19 trailingAnchor];

  v22 = [v18 constraintEqualToAnchor_];
  *(v5 + 48) = v22;
  v23 = [*&v1[v12] bottomAnchor];
  v24 = [v1 view];
  if (!v24)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v25 = v24;
  v26 = [v24 bottomAnchor];

  v27 = [v23 constraintEqualToAnchor_];
  *(v5 + 56) = v27;
  if (v1[OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController_createTextField] == 1)
  {
    v28 = sub_1C2DBECCC();
  }

  else
  {
    v28 = sub_1C2DBF408(&OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController____lazy_storage___collectionViewTextHiddenBottomConstraint, &OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController____lazy_storage___collectionView, sub_1C2DBF30C, -4.0);
  }

  v29 = v28;
  v94 = v12;
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C2E7A700;
  v95 = v29;
  v31 = sub_1C2DC0558(&OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController____lazy_storage___collectionView, sub_1C2DBF30C);
  v32 = [v31 topAnchor];

  v33 = [v1 view];
  if (!v33)
  {
    goto LABEL_29;
  }

  v34 = v33;
  v35 = [v33 topAnchor];

  v36 = [v32 constraintEqualToAnchor_];
  *(inited + 32) = v36;
  v37 = OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController____lazy_storage___collectionView;
  v38 = [*&v1[OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController____lazy_storage___collectionView] leadingAnchor];
  v39 = [v1 view];
  if (!v39)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v40 = v39;
  v41 = [v39 leadingAnchor];

  v42 = [v38 constraintEqualToAnchor_];
  *(inited + 40) = v42;
  v43 = [*&v1[v37] trailingAnchor];
  v44 = [v1 view];
  if (!v44)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v45 = v44;
  v46 = [v44 trailingAnchor];

  v47 = [v43 constraintEqualToAnchor_];
  *(inited + 48) = v47;
  *(inited + 56) = v95;
  sub_1C2CA2AE4(inited);
  v48 = sub_1C2DBEDD8();
  sub_1C2CA2AE4(v48);
  v49 = swift_initStackObject();
  *(v49 + 16) = xmmword_1C2E7A710;
  v50 = sub_1C2DC0558(&OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController____lazy_storage___replyStatusLabel, sub_1C2DC0300);
  v51 = [v50 topAnchor];

  v52 = [v1 view];
  if (!v52)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v53 = v52;
  v54 = [v52 safeAreaLayoutGuide];

  v55 = [v54 topAnchor];
  v56 = [v51 constraintEqualToAnchor:v55 constant:8.0];

  *(v49 + 32) = v56;
  v57 = OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController____lazy_storage___replyStatusLabel;
  v58 = [*&v1[OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController____lazy_storage___replyStatusLabel] leadingAnchor];
  v59 = [v1 view];
  if (!v59)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v60 = v59;
  v61 = [v59 safeAreaLayoutGuide];

  v62 = [v61 leadingAnchor];
  v63 = [v58 constraintEqualToAnchor:v62 constant:24.0];

  *(v49 + 40) = v63;
  v64 = [*&v1[v57] trailingAnchor];
  v65 = [v1 view];
  if (!v65)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v66 = v65;
  v67 = [v65 safeAreaLayoutGuide];

  v68 = [v67 trailingAnchor];
  v69 = [v64 constraintEqualToAnchor:v68 constant:-24.0];

  *(v49 + 48) = v69;
  sub_1C2CA2AE4(v49);
  v70 = OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController_liveReply;
  if (v1[OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController_showEmptyState] == 1 && (v1[OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController_liveReply] & 1) == 0)
  {
    v71 = swift_initStackObject();
    *(v71 + 16) = xmmword_1C2E7A710;
    v72 = sub_1C2DC0558(&OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController____lazy_storage___emptyStateLabel, sub_1C2DC05BC);
    v73 = [v72 leadingAnchor];

    v74 = [v1 view];
    if (v74)
    {
      v75 = v74;
      v76 = [v74 safeAreaLayoutGuide];

      v77 = [v76 leadingAnchor];
      v78 = [v73 constraintEqualToAnchor:v77 constant:24.0];

      *(v71 + 32) = v78;
      v79 = OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController____lazy_storage___emptyStateLabel;
      v80 = [*&v1[OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController____lazy_storage___emptyStateLabel] trailingAnchor];
      v81 = [v1 view];
      if (v81)
      {
        v82 = v81;
        v83 = [v81 safeAreaLayoutGuide];

        v84 = [v83 trailingAnchor];
        v85 = [v80 constraintEqualToAnchor:v84 constant:-24.0];

        *(v71 + 40) = v85;
        v86 = [*&v1[v79] bottomAnchor];
        v87 = [v1 view];
        if (v87)
        {
          v88 = v87;
          v89 = [v87 safeAreaLayoutGuide];

          v90 = [v89 bottomAnchor];
          v91 = [v86 constraintEqualToAnchor:v90 constant:-16.0];

          *(v71 + 48) = v91;
          sub_1C2CA2AE4(v71);
          v70 = OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController_liveReply;
          goto LABEL_21;
        }

LABEL_37:
        __break(1u);
        return;
      }

LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

LABEL_21:
  if (v1[v70] == 1)
  {
    [*&v1[v94] setMaskView_];
  }

  v92 = objc_opt_self();
  sub_1C2C6E1B4(0, &qword_1EC062670);
  v93 = sub_1C2E75D64();

  [v92 activateConstraints_];
}

void sub_1C2DB99E0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC062650);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v23 - v4;
  v6 = sub_1C2E71A34();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v23 - v12;
  if (*(v0 + OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController_showEmptyState) == 1 && (*(v0 + OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController_liveReply) & 1) == 0)
  {
    v14 = v11;
    v15 = *(sub_1C2DBDE48() + 32);
    if (v15)
    {
      v16 = v15;
      sub_1C2E72CC4();

      if (sub_1C2E72C34() < 1)
      {

        (*(v3 + 8))(v5, v2);
LABEL_10:
        v20 = sub_1C2DC0558(&OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController____lazy_storage___emptyStateLabel, sub_1C2DC05BC);
        v21 = [v20 isHidden];

        if (v21)
        {
          [*(v1 + OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController____lazy_storage___emptyStateLabel) setHidden_];
          sub_1C2DC0E00();
          v22 = sub_1C2DBD948();
          [v22 setMaskView_];
        }

        return;
      }

      v17 = sub_1C2E72C34();
      v18 = __OFSUB__(v17, 1);
      v19 = v17 - 1;
      if (!v18)
      {
        MEMORY[0x1C6922440](v19, 0);

        (*(v3 + 8))(v5, v2);
        (*(v7 + 32))(v13, v9, v14);
        if ((sub_1C2E71A24() & 0x8000000000000000) == 0)
        {
          sub_1C2DC10F8();
          (*(v7 + 8))(v13, v14);
          return;
        }

        (*(v7 + 8))(v13, v14);
        goto LABEL_10;
      }

      __break(1u);
    }

    __break(1u);
  }
}

Swift::Void __swiftcall CallScreeningViewController.viewWillAppear(_:)(Swift::Bool a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC062590);
  v95 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96);
  v94 = &v83 - v5;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC062598);
  v98 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99);
  v97 = &v83 - v6;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0625A0);
  v101 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102);
  v100 = &v83 - v7;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0625A8);
  v89 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v88 = &v83 - v8;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0625B0);
  v92 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93);
  v91 = &v83 - v9;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0625B8);
  v84 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v83 = &v83 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0625C0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v111 = &v83 - v12;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0625C8);
  v103 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107);
  v86 = &v83 - v13;
  v14 = sub_1C2E724A4();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v83 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1C2E71934();
  MEMORY[0x1EEE9AC00](v18 - 8);
  v19 = sub_1C2E75C14();
  v109 = *(v19 - 8);
  v110 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v83 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v23 = MEMORY[0x1EEE9AC00](v22).n128_u64[0];
  v25 = &v83 - v24;
  v115.receiver = v2;
  v115.super_class = ObjectType;
  objc_msgSendSuper2(&v115, sel_viewWillAppear_, a1, v23);
  v26 = *&v2[OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController_service + 24];
  v112 = &v2[OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController_service];
  __swift_project_boxed_opaque_existential_1(&v2[OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController_service], v26);
  if (sub_1C2E72874())
  {
    v27 = &v2[OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController_lockStateDelegate];
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v106 = *(v27 + 1);
      v108 = swift_getObjectType();
      sub_1C2E75BB4();
      v105 = &unk_1C2E89C10;
      v28 = v109;
      (*(v109 + 16))(v21, v25, v110);
      type metadata accessor for StringDummy();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v30 = [objc_opt_self() bundleForClass_];
      sub_1C2E718F4();
      v31 = sub_1C2E75C84();
      v33 = v32;
      (*(v28 + 8))(v25, v110);
      v106[4](v31, v33, v108);

      swift_unknownObjectRelease();
    }
  }

  v34 = OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController_cancellables;
  swift_beginAccess();
  v87 = v34;
  *&v2[v34] = MEMORY[0x1E69E7CC0];

  __swift_project_boxed_opaque_existential_1(v112, *(v112 + 3));
  v35 = sub_1C2E72864();
  v36 = *(v35 + 16);
  if (v36)
  {
    v39 = *(v15 + 16);
    v38 = v15 + 16;
    v37 = v39;
    v40 = (*(v38 + 64) + 32) & ~*(v38 + 64);
    v110 = v35;
    v41 = v35 + v40;
    v42 = *(v38 + 56);
    do
    {
      v37(v17, v41, v14);
      CallScreeningViewController.update(with:)(v17);
      (*(v38 - 8))(v17, v14);
      v41 += v42;
      --v36;
    }

    while (v36);
  }

  __swift_project_boxed_opaque_existential_1(v112, *(v112 + 3));
  v113 = sub_1C2E728B4();
  v106 = objc_opt_self();
  v43 = [v106 mainRunLoop];
  v114 = v43;
  v44 = sub_1C2E763E4();
  v45 = *(v44 - 8);
  v46 = *(v45 + 56);
  v47 = v111;
  v105 = v44;
  v104 = v46;
  v110 = v45 + 56;
  (v46)(v111, 1, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC0625D0);
  v48 = sub_1C2C6E1B4(0, &qword_1EC05D100);
  sub_1C2C94F38(&unk_1EC0625E0, &unk_1EC0625D0);
  v49 = sub_1C2C94EBC(&qword_1EC05D110, &qword_1EC05D100);
  v50 = v86;
  v108 = v49;
  v109 = v48;
  sub_1C2E72ED4();
  sub_1C2C73644(v47, &qword_1EC0625C0);

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1C2C94F38(&qword_1EC0625F0, &qword_1EC0625C8);
  v51 = v107;
  sub_1C2E72F14();

  (*(v103 + 8))(v50, v51);
  swift_beginAccess();
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DC28);
  v53 = v112;
  v54 = sub_1C2C94F38(&unk_1EC05B280, &qword_1EC05DC28);
  sub_1C2E72DA4();
  swift_endAccess();

  v55 = v2[OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController_createTextField];
  v107 = v52;
  v103 = v54;
  if (v55)
  {
    v56 = v104;
    v58 = v105;
    v57 = v106;
    if (qword_1EC05D000 != -1)
    {
      swift_once();
    }

    v59 = sub_1C2E72B44();
    __swift_project_value_buffer(v59, qword_1EC062490);
    v60 = sub_1C2E72B24();
    v61 = sub_1C2E75FA4();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      *v62 = 0;
      _os_log_impl(&dword_1C2C6B000, v60, v61, "CallScreeningViewController is subscribing to userInputStatePublisher.", v62, 2u);
      MEMORY[0x1C6927DF0](v62, -1, -1);
    }

    __swift_project_boxed_opaque_existential_1(v53, *(v53 + 3));
    v113 = sub_1C2E728E4();
    v63 = [v57 0x1FB9331D7];
    v114 = v63;
    v64 = v111;
    v56(v111, 1, 1, v58);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC062638);
    sub_1C2C94F38(&qword_1EC062640, &qword_1EC062638);
    v65 = v83;
    sub_1C2E72ED4();
    sub_1C2C73644(v64, &qword_1EC0625C0);

    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1C2C94F38(&qword_1EC062648, &qword_1EC0625B8);
    v66 = v85;
    sub_1C2E72F14();

    (*(v84 + 8))(v65, v66);
    swift_beginAccess();
    sub_1C2E72DA4();
    swift_endAccess();
  }

  __swift_project_boxed_opaque_existential_1(v53, *(v53 + 3));
  v113 = sub_1C2E728A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0625F8);
  sub_1C2C94F38(&qword_1EC062600, &qword_1EC0625F8);
  v67 = v53;
  v68 = v88;
  sub_1C2E72F04();

  v69 = [v106 mainRunLoop];
  v113 = v69;
  v70 = v111;
  v104(v111, 1, 1, v105);
  v86 = MEMORY[0x1E695BD38];
  sub_1C2C94F38(&qword_1EC062608, &qword_1EC0625A8);
  v71 = v91;
  v72 = v90;
  sub_1C2E72ED4();
  sub_1C2C73644(v70, &qword_1EC0625C0);

  (*(v89 + 8))(v68, v72);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1C2C94F38(&qword_1EC062610, &qword_1EC0625B0);
  v73 = v93;
  sub_1C2E72F14();

  (*(v92 + 8))(v71, v73);
  swift_beginAccess();
  sub_1C2E72DA4();
  swift_endAccess();

  __swift_project_boxed_opaque_existential_1(v67, *(v67 + 3));
  sub_1C2E72854();
  v74 = sub_1C2DC0558(&OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController____lazy_storage___collectionView, sub_1C2DBF30C);
  swift_getKeyPath();
  v75 = v70;
  v76 = v94;
  sub_1C2E716E4();

  sub_1C2C94F38(&unk_1EC062618, &qword_1EC062590);
  sub_1C2DC2C3C(&qword_1EC061FB0, type metadata accessor for CGSize);
  v77 = v97;
  v78 = v96;
  sub_1C2E72F04();
  (*(v95 + 8))(v76, v78);
  v79 = [v106 mainRunLoop];
  v113 = v79;
  v104(v70, 1, 1, v105);
  sub_1C2C94F38(&qword_1EC062628, &qword_1EC062598);
  v80 = v100;
  v81 = v99;
  sub_1C2E72ED4();
  sub_1C2C73644(v75, &qword_1EC0625C0);

  (*(v98 + 8))(v77, v81);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1C2C94F38(&qword_1EC062630, &qword_1EC0625A0);
  v82 = v102;
  sub_1C2E72F14();

  (*(v101 + 8))(v80, v82);
  swift_beginAccess();
  sub_1C2E72DA4();
  swift_endAccess();
}

uint64_t CallScreeningViewController.update(with:)(uint64_t a1)
{
  v113 = 0;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC062650);
  v106 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111);
  v110 = &v101 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC05DA00);
  v107 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v109 = &v101 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = v5;
  MEMORY[0x1EEE9AC00](v6);
  v112 = &v101 - v7;
  v8 = sub_1C2E71934();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = sub_1C2E75C14();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v101 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v101 - v14;
  v16 = OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController_revealMessage;
  v1[OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController_revealMessage] = 0;
  v17 = sub_1C2E72454();
  v114 = v1;
  if ((v17 & 1) == 0)
  {
    v101 = v16;
    v35 = sub_1C2E72434();
    v37 = v36;
    v38 = sub_1C2E72474();
    v40 = v39;
    ObjectType = sub_1C2E72464();
    v104 = v41;
    v103 = sub_1C2E72484();
    v102 = v42;
    v43 = sub_1C2E72444();
    type metadata accessor for CallTranscripts();
    v44 = swift_allocObject();
    *(v44 + 40) = 0;
    *(v44 + 48) = 0;
    *(v44 + 56) = 1;
    *(v44 + 64) = 0;
    *(v44 + 72) = 0;
    *(v44 + 80) = 1;
    *(v44 + 88) = 0u;
    *(v44 + 104) = 0u;
    sub_1C2E71A94();
    *(v44 + 16) = v35;
    *(v44 + 24) = v37;
    *(v44 + 32) = (v43 & 1) == 0;
    sub_1C2E111F8(v38, v40);
    if (*(v44 + 96))
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      *(&v101 - 3) = 0;
      *(&v101 - 2) = 0;
      *(&v101 - 4) = v44;
      aBlock[0] = v44;
      sub_1C2DC2C3C(&qword_1EC062660, type metadata accessor for CallTranscripts);
      sub_1C2E71A54();
    }

    else
    {
      *(v44 + 88) = 0;
      *(v44 + 96) = 0;
    }

    v58 = v114;
    v59 = v112;
    v60 = v111;
    v61 = v110;
    sub_1C2E117F0(v103, v102);
    sub_1C2E10C88(ObjectType, v104);
    v62 = sub_1C2E72494();
    sub_1C2DBDE48();
    if (v62)
    {
      v63 = sub_1C2D91E70(v44, 1);

      if ((v63 & 1) == 0)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v64 = sub_1C2D91E70(v44, 0);

      if ((v64 & 1) == 0)
      {
        v65 = *&v58[OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController____lazy_storage___dataSource];
        swift_beginAccess();
        v66 = *(v65 + 24);
        if (v66 >> 62)
        {
          v67 = sub_1C2E764E4();
        }

        else
        {
          v67 = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v58[v101] = v67 > 0;
        goto LABEL_34;
      }
    }
  }

  v18 = &v1[OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController_lockStateDelegate];
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v19 = *(v18 + 1);
    ObjectType = swift_getObjectType();
    sub_1C2E75BB4();
    (*(v10 + 16))(v12, v15, v9);
    type metadata accessor for StringDummy();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v21 = [objc_opt_self() bundleForClass_];
    sub_1C2E718F4();
    v22 = sub_1C2E75C84();
    v24 = v23;
    (*(v10 + 8))(v15, v9);
    (*(v19 + 32))(v22, v24, ObjectType, v19);

    swift_unknownObjectRelease();
  }

  v25 = v114;
  v26 = sub_1C2DBD948();
  v27 = [v26 isHidden];

  if ((v27 & 1) == 0)
  {
    v30 = sub_1C2DBDB78(a1);
LABEL_11:
    v46 = sub_1C2DBDE48();
    swift_beginAccess();
    v47 = *(v46 + 24);
    if (v47 >> 62)
    {
      v48 = sub_1C2E764E4();
    }

    else
    {
      v48 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    LODWORD(ObjectType) = 0;
    v32 = v48 > 0;
    if ((*(v30 + 65) ^ v32))
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

  v28 = sub_1C2DBDA80();
  v29 = sub_1C2DBDB78(a1);
  v30 = v29;
  if (v28)
  {
    goto LABEL_11;
  }

  v31 = *(v29 + 65);
  LOBYTE(v32) = 1;
  LODWORD(ObjectType) = 1;
  if ((v31 & 1) == 0)
  {
LABEL_7:
    v33 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v33);
    *(&v101 - 2) = v30;
    *(&v101 - 8) = v32;
    aBlock[0] = v30;
    sub_1C2DC2C3C(&qword_1EC05FA78, type metadata accessor for ReasonForCallingViewModel);
    v34 = v113;
    sub_1C2E71A54();
    v113 = v34;

    v25 = v114;
    goto LABEL_15;
  }

LABEL_14:
  *(v30 + 65) = v32;
LABEL_15:
  v49 = *&v25[OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController_reasonForCallingIdentifier];
  v50 = *&v25[OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController_reasonForCallingIdentifier + 8];

  v51 = sub_1C2E72474();
  v53 = v52;
  v104 = sub_1C2E72464();
  v103 = v54;
  type metadata accessor for CallTranscripts();
  v44 = swift_allocObject();
  *(v44 + 40) = 0;
  *(v44 + 48) = 0;
  *(v44 + 56) = 1;
  *(v44 + 64) = 0;
  *(v44 + 72) = 0;
  *(v44 + 88) = 0u;
  *(v44 + 80) = 1;
  *(v44 + 104) = 0u;
  sub_1C2E71A94();
  *(v44 + 16) = v49;
  *(v44 + 24) = v50;
  *(v44 + 32) = 1;
  sub_1C2E111F8(v51, v53);
  if (*(v44 + 96))
  {
    v55 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v55);
    *(&v101 - 3) = 0;
    *(&v101 - 2) = 0;
    *(&v101 - 4) = v44;
    aBlock[0] = v44;
    sub_1C2DC2C3C(&qword_1EC062660, type metadata accessor for CallTranscripts);
    v56 = v113;
    sub_1C2E71A54();
    v113 = v56;

    if (*(v44 + 112))
    {
LABEL_17:
      v57 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v57);
      *(&v101 - 3) = 0;
      *(&v101 - 2) = 0;
      *(&v101 - 4) = v44;
      aBlock[0] = v44;
      sub_1C2DC2C3C(&qword_1EC062660, type metadata accessor for CallTranscripts);
      sub_1C2E71A54();

      goto LABEL_28;
    }
  }

  else
  {
    *(v44 + 88) = 0;
    *(v44 + 96) = 0;
    if (*(v44 + 112))
    {
      goto LABEL_17;
    }
  }

  *(v44 + 104) = 0;
  *(v44 + 112) = 0;
LABEL_28:
  v58 = v114;
  sub_1C2E10C88(v104, v103);
  if ((ObjectType & 1) == 0)
  {
  }

  v68 = sub_1C2DBDE48();
  sub_1C2D91464(v49, v50);
  v70 = v69;
  if (v69 >> 62)
  {
    goto LABEL_52;
  }

  for (i = *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1C2E764E4())
  {
    v60 = v111;
    v61 = v110;
    if (i >= 1)
    {
      swift_beginAccess();
      *(v68 + 24) = v70;

      sub_1C2D91878(v72, 0);
    }

    v59 = v112;
LABEL_34:

    result = sub_1C2DBDE48();
    v74 = *(result + 32);
    if (!v74)
    {
      __break(1u);
      return result;
    }

    v70 = result;
    v75 = v74;
    sub_1C2E72CC4();

    if (sub_1C2E72C34() < 1)
    {
      break;
    }

    v68 = v61;
    v76 = sub_1C2E72C34();
    v77 = __OFSUB__(v76, 1);
    v78 = v76 - 1;
    if (!v77)
    {
      MEMORY[0x1C6922440](v78, 0);
      v79 = 0;
      goto LABEL_41;
    }

    __break(1u);
LABEL_52:
    ;
  }

  v79 = 1;
LABEL_41:

  (*(v106 + 8))(v61, v60);
  v80 = sub_1C2E71A34();
  (*(*(v80 - 8) + 56))(v59, v79, 1, v80);
  v81 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v82 = v109;
  sub_1C2CA3A1C(v59, v109);
  v83 = (*(v107 + 80) + 24) & ~*(v107 + 80);
  v84 = swift_allocObject();
  *(v84 + 16) = v81;
  sub_1C2DC2CBC(v82, v84 + v83);

  sub_1C2D942C0(v44, 1, sub_1C2DC2D2C, v84);

  sub_1C2DB99E0();
  v85 = sub_1C2DC0558(&OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController____lazy_storage___collectionView, sub_1C2DBF30C);
  [v85 contentSize];
  v87 = v86;

  v88 = sub_1C2DC0558(&OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController____lazy_storage___collectionView, sub_1C2DBF30C);
  [v88 bounds];
  v90 = v89;

  v91 = v90 - v87;
  v92 = OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController____lazy_storage___collectionView;
  [*&v58[OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController____lazy_storage___collectionView] bounds];
  if (v91 > v93 * 0.1)
  {
    v94 = v91;
  }

  else
  {
    v94 = v93 * 0.1;
  }

  [*&v58[v92] contentInset];
  if (v95 != v94)
  {
    if (v58[OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController_isVisible])
    {
      v96 = 0.25;
    }

    else
    {
      v96 = 0.0;
    }

    v97 = objc_opt_self();
    v98 = swift_allocObject();
    *(v98 + 16) = v58;
    *(v98 + 24) = v94;
    aBlock[4] = sub_1C2DC2DAC;
    aBlock[5] = v98;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C2CB2CC4;
    aBlock[3] = &block_descriptor_14;
    v99 = _Block_copy(aBlock);
    v100 = v58;

    [v97 animateWithDuration:4 delay:v99 options:0 animations:v96 completion:0.0];
    _Block_release(v99);
  }

  return sub_1C2C73644(v59, &unk_1EC05DA00);
}

void sub_1C2DBBF44(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    a3(a1);
  }
}

void sub_1C2DBBFB4(uint64_t a1)
{
  v2 = v1;
  v51 = a1;
  v3 = sub_1C2E72844();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v45 - v8;
  if (qword_1EC05D000 != -1)
  {
    swift_once();
  }

  v10 = sub_1C2E72B44();
  v11 = __swift_project_value_buffer(v10, qword_1EC062490);
  v50 = *(v4 + 16);
  v50(v9, v51, v3);
  v49 = v11;
  v12 = sub_1C2E72B24();
  v13 = sub_1C2E75FA4();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v52[0] = v47;
    *v14 = 136315138;
    sub_1C2DC2C3C(&qword_1EC0626C8, MEMORY[0x1E6996010]);
    v15 = sub_1C2E76774();
    v46 = v6;
    v48 = v2;
    v17 = v16;
    v18 = *(v4 + 8);
    v18(v9, v3);
    v19 = v18;
    v20 = sub_1C2E43AC0(v15, v17, v52);
    v2 = v48;
    v6 = v46;

    *(v14 + 4) = v20;
    _os_log_impl(&dword_1C2C6B000, v12, v13, "CallScreeningViewController is updating textFieldState with %s", v14, 0xCu);
    v21 = v47;
    __swift_destroy_boxed_opaque_existential_1(v47);
    MEMORY[0x1C6927DF0](v21, -1, -1);
    MEMORY[0x1C6927DF0](v14, -1, -1);

    v22 = v19;
  }

  else
  {

    v22 = *(v4 + 8);
    v22(v9, v3);
  }

  if (*(v2 + OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController_createTextField) == 1)
  {
    v50(v6, v51, v3);
    v23 = (*(v4 + 88))(v6, v3);
    if (v23 == *MEMORY[0x1E6996000])
    {
      sub_1C2DC0C08();
      v24 = sub_1C2DC0558(&OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController____lazy_storage___textField, sub_1C2DBF508);
      v25 = sub_1C2E4EA6C();
      [v25 setEnabled_];

      v26 = [*&v24[OBJC_IVAR____TtC16CommunicationsUI20SuggestionsTextField____lazy_storage___textField] isEnabled];
      v27 = 0.5;
      if (v26)
      {
        v27 = 1.0;
      }

      [v24 setAlpha_];
    }

    else if (v23 == *MEMORY[0x1E6996008])
    {
      sub_1C2DC0C08();
      v31 = sub_1C2DC0558(&OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController____lazy_storage___textField, sub_1C2DBF508);
      v32 = v4;
      v33 = v2;
      v34 = sub_1C2E4EA6C();
      [v34 setEnabled_];

      v2 = v33;
      v4 = v32;
      v35 = [*&v31[OBJC_IVAR____TtC16CommunicationsUI20SuggestionsTextField____lazy_storage___textField] isEnabled];
      v36 = 0.5;
      if (v35)
      {
        v36 = 1.0;
      }

      [v31 setAlpha_];

      v37 = *(v2 + OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController____lazy_storage___textField);
      v38 = sub_1C2E4EA6C();
      [v38 resignFirstResponder];
    }

    else
    {
      v39 = *MEMORY[0x1E6995FF8];
      v40 = v2;
      v41 = v23;
      sub_1C2DC0E00();
      if (v41 == v39)
      {
        v42 = sub_1C2DC0558(&OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController____lazy_storage___textField, sub_1C2DBF508);
        v43 = sub_1C2E4EA6C();
        [v43 resignFirstResponder];
      }

      else
      {
        v22(v6, v3);
      }

      v2 = v40;
    }

    v44 = OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController_currentInputState;
    swift_beginAccess();
    (*(v4 + 24))(v2 + v44, v51, v3);
    swift_endAccess();
  }

  else
  {
    v28 = sub_1C2E72B24();
    v29 = sub_1C2E75FA4();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_1C2C6B000, v28, v29, "CallScreeningViewController is not updating textFieldState because createTextField is false", v30, 2u);
      MEMORY[0x1C6927DF0](v30, -1, -1);
    }
  }
}

uint64_t sub_1C2DBC56C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    sub_1C2DBDE48();
    sub_1C2D91C28(v1, v2, 1);
  }

  return result;
}

Swift::Void __swiftcall CallScreeningViewController.update(callerName:)(Swift::String callerName)
{
  object = callerName._object;
  countAndFlagsBits = callerName._countAndFlagsBits;
  sub_1C2DBDE48();
  sub_1C2D91C28(countAndFlagsBits, object, 1);
}

void sub_1C2DBC644(uint64_t a1)
{
  v1 = *(a1 + 8);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = sub_1C2DC0558(&OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController____lazy_storage___collectionView, sub_1C2DBF30C);
    [v4 bounds];
    v6 = v5;

    v7 = v6 - v1;
    v8 = OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController____lazy_storage___collectionView;
    [*&v3[OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController____lazy_storage___collectionView] bounds];
    if (v7 > v9 * 0.1)
    {
      v10 = v7;
    }

    else
    {
      v10 = v9 * 0.1;
    }

    [*&v3[v8] contentInset];
    if (v11 != v10)
    {
      if (v3[OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController_isVisible])
      {
        v12 = 0.25;
      }

      else
      {
        v12 = 0.0;
      }

      v13 = objc_opt_self();
      v14 = swift_allocObject();
      *(v14 + 16) = v3;
      *(v14 + 24) = v10;
      aBlock[4] = sub_1C2DC375C;
      aBlock[5] = v14;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1C2CB2CC4;
      aBlock[3] = &block_descriptor_69_0;
      v15 = _Block_copy(aBlock);
      v16 = v3;

      [v13 animateWithDuration:4 delay:v15 options:0 animations:v12 completion:0.0];
      _Block_release(v15);
    }
  }
}

Swift::Void __swiftcall CallScreeningViewController.viewDidAppear(_:)(Swift::Bool a1)
{
  v2 = v1;
  v27.receiver = v2;
  v27.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v27, sel_viewDidAppear_, a1);
  v4 = sub_1C2DC0558(&OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController____lazy_storage___collectionView, sub_1C2DBF30C);
  [v4 contentSize];
  v6 = v5;

  v7 = sub_1C2DC0558(&OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController____lazy_storage___collectionView, sub_1C2DBF30C);
  [v7 bounds];
  v9 = v8;

  v10 = v9 - v6;
  v11 = OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController____lazy_storage___collectionView;
  [*&v2[OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController____lazy_storage___collectionView] bounds];
  if (v10 > v12 * 0.1)
  {
    v13 = v10;
  }

  else
  {
    v13 = v12 * 0.1;
  }

  [*&v2[v11] contentInset];
  if (v14 != v13)
  {
    if (v2[OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController_isVisible])
    {
      v15 = 0.25;
    }

    else
    {
      v15 = 0.0;
    }

    v16 = objc_opt_self();
    v17 = swift_allocObject();
    *(v17 + 16) = v2;
    *(v17 + 24) = v13;
    v26[4] = sub_1C2DC375C;
    v26[5] = v17;
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 1107296256;
    v26[2] = sub_1C2CB2CC4;
    v26[3] = &block_descriptor_30_1;
    v18 = _Block_copy(v26);
    v19 = v2;

    [v16 animateWithDuration:4 delay:v18 options:0 animations:v15 completion:0.0];
    _Block_release(v18);
  }

  v2[OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController_isVisible] = 1;
  sub_1C2DBCB50();
  if ((v2[OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController_createTextField] & 1) == 0)
  {
    v20 = OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController_once;
LABEL_15:
    v21 = &v2[v20];
    goto LABEL_16;
  }

  v20 = OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController_once;
  if (v2[OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController_liveReply] != 1)
  {
    goto LABEL_15;
  }

  v21 = &v2[OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController_once];
  if (v2[OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController_once])
  {
    goto LABEL_15;
  }

  v22 = sub_1C2DC0558(&OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController____lazy_storage___textField, sub_1C2DBF508);
  v23 = [v22 isHidden];

  if ((v23 & 1) == 0)
  {
    __swift_project_boxed_opaque_existential_1(&v2[OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController_service], *&v2[OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController_service + 24]);
    sub_1C2E728D4();
    v24 = *&v2[OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController____lazy_storage___textField];
    v25 = sub_1C2E4EA6C();
    [v25 becomeFirstResponder];
  }

LABEL_16:
  *v21 = 0;
}

void sub_1C2DBCB50()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0626D0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v41 = v30 - v2;
  v3 = sub_1C2E76074();
  v37 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C2E76104();
  v36 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0626D8);
  v38 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0626E0);
  v39 = *(v12 - 8);
  v40 = v12;
  *&v13 = MEMORY[0x1EEE9AC00](v12).n128_u64[0];
  v15 = v30 - v14;
  if ((*(v0 + OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController_once) & 1) == 0)
  {
    v16 = [v0 viewIfLoaded];
    if (v16)
    {
      v17 = v16;
      v18 = [v16 window];

      if (v18)
      {
        v19 = [v18 windowScene];

        if (v19)
        {
          objc_opt_self();
          v20 = swift_dynamicCastObjCClass();

          if (v20)
          {
            v35 = v0;
            if (sub_1C2DBDA80())
            {

              sub_1C2DC176C();
            }

            else
            {
              v21 = [objc_opt_self() defaultCenter];
              v22 = sub_1C2E75C24();
              sub_1C2E76114();

              sub_1C2E76064();
              sub_1C2C6E1B4(0, &qword_1EDDCD9E0);
              v31 = sub_1C2E76084();
              v42[0] = v31;
              v33 = sub_1C2E76054();
              v23 = *(v33 - 8);
              v32 = *(v23 + 56);
              v34 = v23 + 56;
              v24 = v41;
              v32(v41, 1, 1, v33);
              sub_1C2DC2C3C(&qword_1EC05E6B0, MEMORY[0x1E6969F20]);
              v30[1] = sub_1C2C94EBC(&qword_1EC05B250, &qword_1EDDCD9E0);
              sub_1C2E72EE4();
              sub_1C2C73644(v24, &qword_1EC0626D0);

              (*(v37 + 8))(v5, v3);
              (*(v36 + 8))(v8, v6);
              v25 = sub_1C2E76084();
              v42[0] = v25;
              v32(v24, 1, 1, v33);
              sub_1C2C94F38(&qword_1EC0626E8, &qword_1EC0626D8);
              sub_1C2E72ED4();
              sub_1C2C73644(v24, &qword_1EC0626D0);

              (*(v38 + 8))(v11, v9);
              swift_allocObject();
              v26 = v35;
              swift_unknownObjectWeakInit();
              sub_1C2C94F38(&unk_1EC0626F0, &qword_1EC0626E0);
              v27 = v40;
              v28 = sub_1C2E72F14();

              (*(v39 + 8))(v15, v27);
              v42[3] = sub_1C2E72DB4();
              v42[4] = MEMORY[0x1E695BF08];
              v42[0] = v28;
              v29 = OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController_waitingToUnlockCancallable;
              swift_beginAccess();
              sub_1C2C9A468(v42, v26 + v29);
              swift_endAccess();
            }
          }
        }
      }
    }
  }
}

Swift::Void __swiftcall CallScreeningViewController.viewWillDisappear(_:)(Swift::Bool a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, sel_viewWillDisappear_, a1);
  if (*(v1 + OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController_createTextField) == 1)
  {
    v3 = sub_1C2DC0558(&OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController____lazy_storage___textField, sub_1C2DBF508);
    v4 = sub_1C2E4EA6C();
    [v4 resignFirstResponder];
  }
}

Swift::Void __swiftcall CallScreeningViewController.viewDidLayoutSubviews()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1C2E759D4();
  v28 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C2E75A04();
  v26 = *(v6 - 8);
  v27 = v6;
  *&v7 = MEMORY[0x1EEE9AC00](v6).n128_u64[0];
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30.receiver = v1;
  v30.super_class = ObjectType;
  objc_msgSendSuper2(&v30, sel_viewDidLayoutSubviews, v7);
  sub_1C2C6E1B4(0, &qword_1EDDCD9E0);
  v10 = sub_1C2E76084();
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1C2DC2E10;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C2CB2CC4;
  aBlock[3] = &block_descriptor_34_0;
  v12 = _Block_copy(aBlock);

  sub_1C2E759F4();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1C2DC2C3C(&qword_1EDDCDA00, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC061C60);
  sub_1C2C94F38(&qword_1EDDCD9F0, &unk_1EC061C60);
  sub_1C2E76464();
  MEMORY[0x1C6926AC0](0, v9, v5, v12);
  _Block_release(v12);

  (*(v28 + 8))(v5, v3);
  (*(v26 + 8))(v9, v27);
  v13 = sub_1C2DBD948();
  v14 = [v13 maskView];

  if (v14)
  {
    v15 = [v1 view];
    if (v15)
    {
      v16 = v15;
      [v15 bounds];
      v18 = v17;
      v20 = v19;
      v22 = v21;
      v24 = v23;

      [v14 setFrame_];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1C2DBD784()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = sub_1C2DC0558(&OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController____lazy_storage___collectionView, sub_1C2DBF30C);
    [v2 contentSize];
    v4 = v3;

    v5 = OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController____lazy_storage___collectionView;
    [*&v1[OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController____lazy_storage___collectionView] bounds];
    v7 = v6 - v4;
    [*&v1[v5] bounds];
    if (v7 <= v8 * 0.1)
    {
      v7 = v8 * 0.1;
    }

    [*&v1[v5] contentInset];
    if (v9 == v7)
    {
    }

    else
    {
      v10 = objc_opt_self();
      v11 = swift_allocObject();
      *(v11 + 16) = v1;
      *(v11 + 24) = v7;
      aBlock[4] = sub_1C2DC375C;
      aBlock[5] = v11;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1C2CB2CC4;
      aBlock[3] = &block_descriptor_46;
      v12 = _Block_copy(aBlock);
      v13 = v1;

      [v10 animateWithDuration:4 delay:v12 options:0 animations:0.0 completion:0.0];

      _Block_release(v12);
    }
  }
}

id sub_1C2DBD948()
{
  v1 = OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController____lazy_storage___contentView;
  v2 = *&v0[OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController____lazy_storage___contentView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController____lazy_storage___contentView];
LABEL_5:
    v9 = v2;
    return v3;
  }

  v4 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  v5 = sub_1C2DBF288();
  [v4 setMaskView_];

  result = [v0 view];
  if (result)
  {
    v7 = result;
    [result addSubview_];

    v8 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C2DBDA80()
{
  result = [v0 viewIfLoaded];
  if (result)
  {
    v2 = result;
    v3 = [result window];

    if (v3 && (v4 = [v3 windowScene], v3, v4))
    {
      objc_opt_self();
      v5 = swift_dynamicCastObjCClass();
      if (v5)
      {
        v6 = v5;
        if ([v5 presentationMode] == 2)
        {

          return 1;
        }

        else
        {
          v7 = [v6 presentationMode];

          return v7 == 3;
        }
      }

      else
      {

        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C2DBDB78(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1C2E724A4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController_reasonForCallingViewModel;
  v10 = *(v2 + OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController_reasonForCallingViewModel);
  if (v10)
  {

    v11 = sub_1C2E72474();
    sub_1C2D1D4B4(v11, v12);
    v13 = sub_1C2E72444() & 1;
    if (v13 == *(v10 + 64))
    {
      *(v10 + 64) = v13;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      *(&v27 - 2) = v10;
      *(&v27 - 8) = v13;
      v29 = v10;
      sub_1C2DC2C3C(&qword_1EC05FA78, type metadata accessor for ReasonForCallingViewModel);
      sub_1C2E71A54();
    }
  }

  else
  {
    (*(v5 + 16))(v8, a1, v4, v6);
    v15 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v16 = v2;
    v17 = sub_1C2E72484();
    if (v18)
    {
      v19 = v17;
    }

    else
    {
      v19 = 0;
    }

    v20 = 0xE000000000000000;
    if (v18)
    {
      v20 = v18;
    }

    v27 = v20;
    v28 = v19;
    v21 = sub_1C2E72474();
    v23 = v22;
    v24 = sub_1C2E72444();
    type metadata accessor for ReasonForCallingViewModel();
    v10 = swift_allocObject();
    *(v10 + 65) = 0;
    sub_1C2E71A94();
    (*(v5 + 8))(v8, v4);
    v25 = v27;
    *(v10 + 16) = v28;
    *(v10 + 24) = v25;
    *(v10 + 32) = v21;
    *(v10 + 40) = v23;
    *(v10 + 64) = v24 & 1;
    *(v10 + 48) = sub_1C2DC3548;
    *(v10 + 56) = v15;
    *(v16 + v9) = v10;
  }

  return v10;
}

uint64_t sub_1C2DBDE48()
{
  v1 = OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController____lazy_storage___dataSource;
  if (*(v0 + OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController____lazy_storage___dataSource))
  {
    v2 = *(v0 + OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController____lazy_storage___dataSource);
  }

  else
  {
    v3 = v0;
    v4 = sub_1C2DC0558(&OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController____lazy_storage___collectionView, sub_1C2DBF30C);
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for CallTranscriptsDataSource();
    v2 = swift_allocObject();
    v6 = MEMORY[0x1E69E7CC0];
    *(v2 + 24) = MEMORY[0x1E69E7CC0];
    *(v2 + 32) = 0;

    *(v2 + 40) = sub_1C2D941BC(v6);
    *(v2 + 16) = 0;
    v7 = swift_allocObject();
    swift_weakInit();
    v8 = swift_allocObject();
    v8[2] = v7;
    v8[3] = sub_1C2DC3570;
    v8[4] = v5;
    objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC062700));
    v9 = v4;

    v10 = sub_1C2E72C94();
    v11 = *(v2 + 32);
    *(v2 + 32) = v10;

    v12 = v10;
    sub_1C2E72CA4();

    [v9 setDataSource_];
    sub_1C2D9087C();

    *(v3 + v1) = v2;
  }

  return v2;
}

void sub_1C2DBE034(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC05DA00);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v26 - v8;
  v10 = sub_1C2E71A34();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v26 - v15;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    if ([Strong isViewLoaded])
    {
      sub_1C2CA3A1C(a3, v9);
      v19 = *(v11 + 48);
      if (v19(v9, 1, v10) == 1)
      {

        sub_1C2C73644(v9, &unk_1EC05DA00);
        return;
      }

      v27 = *(v11 + 32);
      v28 = v11 + 32;
      v27(v16, v9, v10);
      v20 = sub_1C2DC0558(&OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController____lazy_storage___collectionView, sub_1C2DBF30C);
      v21 = [v20 indexPathsForVisibleItems];

      v22 = sub_1C2E75D74();
      LOBYTE(v21) = sub_1C2DEFDD8(v16, v22);

      if (v21)
      {
        if (v18[OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController_revealMessage] == 1)
        {
          sub_1C2DBE404(0);

          (*(v11 + 8))(v16, v10);
        }

        else
        {
          sub_1C2DC1380(v6);
          if (v19(v6, 1, v10) == 1)
          {

            (*(v11 + 8))(v16, v10);
            sub_1C2C73644(v6, &unk_1EC05DA00);
          }

          else
          {
            v27(v13, v6, v10);
            v23 = *&v18[OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController____lazy_storage___collectionView];
            v24 = sub_1C2E71A04();
            [v23 scrollToItemAtIndexPath:v24 atScrollPosition:4 animated:v18[OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController_isVisible]];

            v25 = *(v11 + 8);
            v25(v13, v10);
            v25(v16, v10);
          }
        }

        return;
      }

      (*(v11 + 8))(v16, v10);
    }
  }
}

void sub_1C2DBE404(char a1)
{
  v2 = v1;
  v4 = sub_1C2E71A34();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C2DBDE48();
  swift_beginAccess();
  v9 = *(v8 + 24);
  if (v9 >> 62)
  {
    v10 = sub_1C2E764E4();
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v10 < 1)
  {
    return;
  }

  v11 = OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController____lazy_storage___dataSource;
  v12 = *&v2[OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController____lazy_storage___dataSource];
  swift_beginAccess();
  v13 = *(v12 + 24);
  if (!(v13 >> 62))
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v15 = v14 - 1;
    if (!__OFSUB__(v14, 1))
    {
      goto LABEL_6;
    }

LABEL_18:
    __break(1u);
    return;
  }

  v38 = sub_1C2E764E4();
  v15 = v38 - 1;
  if (__OFSUB__(v38, 1))
  {
    goto LABEL_18;
  }

LABEL_6:
  v42 = v5;
  v16 = *&v2[v11];
  v17 = *&v2[OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController_reasonForCallingIdentifier];
  v18 = *&v2[OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController_reasonForCallingIdentifier + 8];
  swift_beginAccess();
  v19 = *(v16 + 24);

  v40 = v18;
  v41 = v17;
  CallTranscriptsDataSource.insertItems(items:before:animatingDifferences:completion:)(v19, v17, v18, 0, 0, 0);

  *(v16 + 24) = MEMORY[0x1E69E7CC0];

  v20 = OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController_reasonForCallingViewModel;
  v21 = *&v2[OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController_reasonForCallingViewModel];
  if (v21)
  {
    swift_getKeyPath();
    v39 = v11;
    aBlock[0] = v21;
    sub_1C2DC2C3C(&qword_1EC05FA78, type metadata accessor for ReasonForCallingViewModel);

    sub_1C2E71A64();

    v22 = *(v21 + 64);

    if ((v22 & 1) == 0)
    {

      v23._object = v40;
      v23._countAndFlagsBits = v41;
      CallTranscriptsDataSource.removeItem(_:animatingDifferences:)(v23, 0);

      *&v2[v20] = 0;
    }
  }

  v24 = sub_1C2DC0558(&OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController____lazy_storage___collectionView, sub_1C2DBF30C);
  [v24 contentSize];
  v26 = v25;

  v27 = OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController____lazy_storage___collectionView;
  [*&v2[OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController____lazy_storage___collectionView] bounds];
  v29 = v28 - v26;
  [*&v2[v27] bounds];
  if (v29 <= v30 * 0.1)
  {
    v29 = v30 * 0.1;
  }

  [*&v2[v27] contentInset];
  if (v31 != v29)
  {
    v32 = objc_opt_self();
    v33 = swift_allocObject();
    *(v33 + 16) = v2;
    *(v33 + 24) = v29;
    aBlock[4] = sub_1C2DC375C;
    aBlock[5] = v33;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C2CB2CC4;
    aBlock[3] = &block_descriptor_62;
    v34 = _Block_copy(aBlock);
    v35 = v2;

    [v32 animateWithDuration:4 delay:v34 options:0 animations:0.0 completion:0.0];
    _Block_release(v34);
  }

  v36 = *&v2[v27];
  MEMORY[0x1C6922440](v15, 0);
  v37 = sub_1C2E71A04();
  (*(v42 + 8))(v7, v4);
  [v36 scrollToItemAtIndexPath:v37 atScrollPosition:4 animated:a1 & 1];
}

void CallScreeningViewController.updateTextFieldPadding(_:)(uint64_t a1, char a2)
{
  v3 = &v2[OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController_textFieldPadding];
  v4 = *&v2[OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController_textFieldPadding];
  v5 = v2[OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController_textFieldPadding + 8];
  *v3 = a1;
  v3[8] = a2 & 1;
  if (![v2 isViewLoaded])
  {
    return;
  }

  v6 = v3[8];
  if (v5)
  {
    if (v3[8])
    {
      return;
    }

    goto LABEL_4;
  }

  if (v4 != *v3)
  {
    v6 = 1;
  }

  if (v6)
  {
LABEL_4:
    v7 = sub_1C2DC0558(&OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController____lazy_storage___textField, sub_1C2DBF508);
    SuggestionsTextField.updatePadding(_:)(*v3, v3[8]);
  }
}

Swift::Void __swiftcall CallScreeningViewController.updateTextFieldContainer(_:)(UIView *a1)
{
  v3 = sub_1C2E72844();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController_createTextField) == 1)
  {
    v7 = sub_1C2DC0558(&OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController____lazy_storage___textField, sub_1C2DBF508);
    [(UIView *)a1 addSubview:v7];

    v8 = OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController____lazy_storage___textField;
    [(UIView *)a1 bringSubviewToFront:*(v1 + OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController____lazy_storage___textField)];
    v9 = sub_1C2DBD948();
    v10 = [v9 isHidden];

    if (v10)
    {
      [*(v1 + v8) setHidden_];
    }

    else
    {
      v11 = OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController_currentInputState;
      swift_beginAccess();
      (*(v4 + 16))(v6, v1 + v11, v3);
      sub_1C2DBBFB4(v6);
      (*(v4 + 8))(v6, v3);
    }

    if ([*(v1 + v8) isHidden])
    {
      v12 = sub_1C2DBECCC();
      [v12 setActive_];

      v13 = sub_1C2DBF408(&OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController____lazy_storage___collectionViewTextHiddenBottomConstraint, &OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController____lazy_storage___collectionView, sub_1C2DBF30C, -4.0);
    }

    else
    {
      v14 = sub_1C2DBF408(&OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController____lazy_storage___collectionViewTextHiddenBottomConstraint, &OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController____lazy_storage___collectionView, sub_1C2DBF30C, -4.0);
      [v14 setActive_];

      v13 = sub_1C2DBECCC();
    }

    v15 = v13;
    [v13 setActive_];

    v16 = objc_opt_self();
    sub_1C2DBEDD8();
    sub_1C2C6E1B4(0, &qword_1EC062670);
    v17 = sub_1C2E75D64();

    [v16 activateConstraints_];
  }
}

id sub_1C2DBECCC()
{
  v1 = OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController____lazy_storage___collectionViewTextVisibleBottomConstraint;
  v2 = *(v0 + OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController____lazy_storage___collectionViewTextVisibleBottomConstraint);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController____lazy_storage___collectionViewTextVisibleBottomConstraint);
  }

  else
  {
    v4 = sub_1C2DC0558(&OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController____lazy_storage___collectionView, sub_1C2DBF30C);
    v5 = [v4 bottomAnchor];

    v6 = sub_1C2DC0558(&OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController____lazy_storage___textField, sub_1C2DBF508);
    v7 = [v6 topAnchor];

    v8 = [v5 constraintEqualToAnchor_];
    v9 = *(v0 + v1);
    *(v0 + v1) = v8;
    v3 = v8;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

id sub_1C2DBEDD8()
{
  if (v0[OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController_createTextField] != 1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v1 = [objc_opt_self() currentDevice];
  v2 = [v1 userInterfaceIdiom];

  if (v2 == 1)
  {
    v3 = [objc_opt_self() mainScreen];
    [v3 bounds];
    v5 = v4;
    v7 = v6;

    if (v5 > v7)
    {
      v8 = v5;
    }

    else
    {
      v8 = v7;
    }

    v9 = v8 * 0.26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC05D8D0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1C2E7A710;
    v11 = sub_1C2DC0558(&OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController____lazy_storage___textField, sub_1C2DBF508);
    v12 = [v11 widthAnchor];

    v13 = [v12 constraintEqualToConstant_];
    *(v10 + 32) = v13;
    v14 = [*&v0[OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController____lazy_storage___textField] centerXAnchor];
    result = [v0 view];
    if (result)
    {
      v16 = result;
      v17 = [result centerXAnchor];
LABEL_12:
      v25 = v17;

      v26 = [v14 constraintEqualToAnchor_];
      *(v10 + 40) = v26;
      *(v10 + 48) = sub_1C2DBF408(&OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController____lazy_storage___textFieldBottomConstraint, &OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController____lazy_storage___textField, sub_1C2DBF508, -22.0);
      return v10;
    }

    __break(1u);
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC05D8D0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1C2E7A710;
  v18 = sub_1C2DC0558(&OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController____lazy_storage___textField, sub_1C2DBF508);
  v19 = [v18 leadingAnchor];

  result = [v0 view];
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v20 = result;
  v21 = [result safeAreaLayoutGuide];

  v22 = [v21 leadingAnchor];
  v23 = [v19 constraintEqualToAnchor_];

  *(v10 + 32) = v23;
  v14 = [*&v0[OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController____lazy_storage___textField] trailingAnchor];
  result = [v0 view];
  if (result)
  {
    v24 = result;
    v16 = [result safeAreaLayoutGuide];

    v17 = [v16 trailingAnchor];
    goto LABEL_12;
  }

LABEL_16:
  __break(1u);
  return result;
}

Swift::Void __swiftcall CallScreeningViewController.removeAllTranscripts()()
{
  v1 = v0;
  if (*(v0 + OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController_showEmptyState) == 1 && (*(v0 + OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController_liveReply) & 1) == 0)
  {
    v2 = sub_1C2DC0558(&OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController____lazy_storage___emptyStateLabel, sub_1C2DC05BC);
    v3 = [v2 isHidden];

    if (v3)
    {
      [*(v1 + OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController____lazy_storage___emptyStateLabel) setHidden_];
      sub_1C2DC0E00();
      v4 = sub_1C2DBD948();
      [v4 setMaskView_];
    }
  }

  sub_1C2DBDE48();
  CallTranscriptsDataSource.removeAll()();

  *(v1 + OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController_reasonForCallingViewModel) = 0;
}

char *sub_1C2DBF288()
{
  v1 = OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController____lazy_storage___maskView;
  v2 = *(v0 + OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController____lazy_storage___maskView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController____lazy_storage___maskView);
  }

  else
  {
    v4 = v0;
    v5 = objc_allocWithZone(type metadata accessor for CallTranscriptsMaskView());
    v6 = sub_1C2DC2480();
    v7 = *(v0 + v1);
    *(v4 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_1C2DBF30C(uint64_t a1)
{
  v2 = sub_1C2DC30F4();
  v3 = [objc_allocWithZone(MEMORY[0x1E69DC7F0]) initWithFrame:v2 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];

  v4 = objc_opt_self();
  v5 = v3;
  v6 = [v4 clearColor];
  [v5 setBackgroundColor_];

  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  [v5 setDelegate_];
  v7 = sub_1C2DBD948();
  [v7 addSubview_];

  return v5;
}

id sub_1C2DBF408(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(uint64_t), double a4)
{
  v5 = *a1;
  v6 = *&v4[*a1];
  if (v6)
  {
    v7 = *&v4[*a1];
LABEL_5:
    v16 = v6;
    return v7;
  }

  v9 = sub_1C2DC0558(a2, a3);
  v10 = [v9 bottomAnchor];

  result = [v4 view];
  if (result)
  {
    v12 = result;
    v13 = [result bottomAnchor];

    v14 = [v10 constraintEqualToAnchor:v13 constant:a4];
    v15 = *&v4[v5];
    *&v4[v5] = v14;
    v7 = v14;

    v6 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

char *sub_1C2DBF508(uint64_t a1)
{
  type metadata accessor for StringDummy();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_1C2E71684();
  v6 = v5;

  v7 = *(a1 + OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController_textFieldPadding);
  v8 = *(a1 + OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController_textFieldPadding + 8);
  v9 = objc_allocWithZone(type metadata accessor for SuggestionsTextField());
  v10 = SuggestionsTextField.init(placeholder:padding:)(v4, v6, v7, v8);
  [v10 setTranslatesAutoresizingMaskIntoConstraints_];
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = &v10[OBJC_IVAR____TtC16CommunicationsUI20SuggestionsTextField_handler];
  v13 = *&v10[OBJC_IVAR____TtC16CommunicationsUI20SuggestionsTextField_handler];
  *v12 = sub_1C2DC3578;
  v12[1] = v11;

  sub_1C2C71668(v13);

  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = &v10[OBJC_IVAR____TtC16CommunicationsUI20SuggestionsTextField_keyboardAnimation];
  v16 = *&v10[OBJC_IVAR____TtC16CommunicationsUI20SuggestionsTextField_keyboardAnimation];
  *v15 = sub_1C2DC3580;
  v15[1] = v14;

  sub_1C2C71668(v16);

  __swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController_service), *(a1 + OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController_service + 24));
  v17 = sub_1C2E72894();
  v18 = sub_1C2E4EEDC();
  v19 = [v18 arrangedSubviews];
  sub_1C2C6E1B4(0, &qword_1EC062710);
  v20 = sub_1C2E75D74();

  v48 = v10;
  v49 = v17;
  if (v20 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1C2E764E4())
  {
    v22 = 0;
    while (1)
    {
      if ((v20 & 0xC000000000000001) != 0)
      {
        v23 = MEMORY[0x1C6927010](v22, v20);
      }

      else
      {
        if (v22 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v23 = *(v20 + 8 * v22 + 32);
      }

      v24 = v23;
      v25 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      [v23 removeFromSuperview];

      ++v22;
      if (v25 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:

  v50 = MEMORY[0x1E69E7CC0];
  v26 = *(v17 + 16);
  v27 = v18;
  if (v26)
  {
    v28 = (v49 + 40);
    do
    {
      v29 = *(v28 - 1);
      v30 = *v28;

      v31 = sub_1C2D2AAA0(v29, v30);
      [v27 addArrangedSubview_];
      v32 = [v27 widthAnchor];
      v33 = [v31 widthAnchor];
      v34 = [v32 constraintGreaterThanOrEqualToAnchor_];

      MEMORY[0x1C6926780]();
      if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1C2E75D94();
      }

      sub_1C2E75DB4();

      v28 += 2;
      --v26;
    }

    while (v26);
  }

  v35 = objc_opt_self();
  sub_1C2C6E1B4(0, &qword_1EC062670);
  v36 = sub_1C2E75D64();
  [v35 activateConstraints_];

  v37 = OBJC_IVAR____TtC16CommunicationsUI15SuggestionsView_isExpanded;
  swift_beginAccess();
  v38 = 0.0;
  if (*(v27 + v37))
  {
    v38 = 1.0;
  }

  [v27 setAlpha_];
  v39 = [v27 arrangedSubviews];
  v40 = sub_1C2E75D74();

  if (v40 >> 62)
  {
    goto LABEL_33;
  }

  for (j = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = sub_1C2E764E4())
  {
    v42 = 0;
    while (1)
    {
      if ((v40 & 0xC000000000000001) != 0)
      {
        v43 = MEMORY[0x1C6927010](v42, v40);
      }

      else
      {
        if (v42 >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_32;
        }

        v43 = *(v40 + 8 * v42 + 32);
      }

      v44 = v43;
      v45 = v42 + 1;
      if (__OFADD__(v42, 1))
      {
        break;
      }

      [v43 setHidden_];

      ++v42;
      if (v45 == j)
      {
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    ;
  }

LABEL_34:

  v46 = sub_1C2DBD948();
  [v46 addSubview_];

  return v48;
}

void sub_1C2DBFB04(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      sub_1C2C6E3A4(Strong + OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController_service, v4);

      __swift_project_boxed_opaque_existential_1(v4, v4[3]);
      sub_1C2E728C4();
      __swift_destroy_boxed_opaque_existential_1(v4);
    }
  }
}

void sub_1C2DBFBB4(char a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_1C2DBFC24(a1 & 1, a2);
  }
}

void sub_1C2DBFC24(char a1, uint64_t a2)
{
  v5 = sub_1C2DC0558(&OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController____lazy_storage___replyStatusLabel, sub_1C2DC0300);
  v6 = v5;
  v7 = 0.0;
  if (a1)
  {
    v7 = 1.0;
  }

  [v5 setAlpha_];

  if ((*(isEscapingClosureAtFileLocation + OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController_liveReply) & 1) == 0)
  {
    v8 = sub_1C2DBD948();
    if (a1)
    {
      v9 = 0;
    }

    else
    {
      v9 = sub_1C2DBF288();
    }

    [v8 setMaskView_];
  }

  v10 = &OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController____lazy_storage___collectionView;
  v11 = sub_1C2DC0558(&OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController____lazy_storage___collectionView, sub_1C2DBF30C);
  v12 = v11;
  v13 = a1 & 1;
  if (v13)
  {
    v14 = 0.1;
  }

  else
  {
    v14 = 1.0;
  }

  [v11 setAlpha_];

  sub_1C2DC0A14(v13, a2);
  if (v13)
  {
    v10 = objc_opt_self();
    v15 = swift_allocObject();
    *(v15 + 16) = isEscapingClosureAtFileLocation;
    v16 = swift_allocObject();
    *(v16 + 16) = sub_1C2DC3588;
    *(v16 + 24) = v15;
    v38 = sub_1C2CB1B14;
    v39 = v16;
    v34 = MEMORY[0x1E69E9820];
    v35 = 1107296256;
    v36 = sub_1C2D0A7A0;
    v37 = &block_descriptor_94;
    v17 = _Block_copy(&v34);
    v18 = isEscapingClosureAtFileLocation;

    [v10 performWithoutAnimation_];
    _Block_release(v17);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
  }

  v19 = *v10;
  [*(isEscapingClosureAtFileLocation + *v10) contentSize];
  v21 = v20;
  v22 = sub_1C2DC0558(v10, sub_1C2DBF30C);
  [v22 bounds];
  v24 = v23;

  v25 = v24 - v21;
  [*(isEscapingClosureAtFileLocation + v19) bounds];
  if (v25 > v26 * 0.1)
  {
    v27 = v25;
  }

  else
  {
    v27 = v26 * 0.1;
  }

  [*(isEscapingClosureAtFileLocation + v19) contentInset];
  if (v28 != v27)
  {
    if (*(isEscapingClosureAtFileLocation + OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController_isVisible))
    {
      v29 = 0.25;
    }

    else
    {
      v29 = 0.0;
    }

    v30 = objc_opt_self();
    v31 = swift_allocObject();
    *(v31 + 16) = isEscapingClosureAtFileLocation;
    *(v31 + 24) = v27;
    v38 = sub_1C2DC375C;
    v39 = v31;
    v34 = MEMORY[0x1E69E9820];
    v35 = 1107296256;
    v36 = sub_1C2CB2CC4;
    v37 = &block_descriptor_85;
    v32 = _Block_copy(&v34);
    v33 = isEscapingClosureAtFileLocation;

    [v30 animateWithDuration:4 delay:v32 options:0 animations:v29 completion:0.0];
    _Block_release(v32);
  }
}

__n128 sub_1C2DBFFE4@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a3;
  v5 = sub_1C2E756D4();
  v30 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC062730);
  v31 = *(v8 - 8);
  v32 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v29 = &v28 - v9;
  *&v34 = a1;
  *(&v34 + 1) = a2;
  sub_1C2C74960();

  v10 = sub_1C2E748A4();
  v12 = v11;
  v14 = v13;
  LOBYTE(v34) = 2;
  *(&v34 + 1) = 0;
  LOBYTE(v35) = 1;
  sub_1C2D1EF10();
  sub_1C2E756C4();
  v15 = sub_1C2E74794();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  sub_1C2C72340(v10, v12, v14 & 1);

  (*(v30 + 8))(v7, v5);
  *&v34 = v15;
  *(&v34 + 1) = v17;
  v19 &= 1u;
  LOBYTE(v35) = v19;
  *(&v35 + 1) = v21;
  v22 = v29;
  sub_1C2E74BC4();
  sub_1C2C72340(v15, v17, v19);

  sub_1C2E75744();
  sub_1C2E737F4();
  v23 = v33;
  (*(v31 + 32))(v33, v22, v32);
  v24 = v23 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC062748) + 36);
  v25 = v39;
  *(v24 + 64) = v38;
  *(v24 + 80) = v25;
  *(v24 + 96) = v40;
  v26 = v35;
  *v24 = v34;
  *(v24 + 16) = v26;
  result = v37;
  *(v24 + 32) = v36;
  *(v24 + 48) = result;
  return result;
}

void sub_1C2DC0300(char *a1)
{
  v2 = sub_1C2E743B4();
  MEMORY[0x1EEE9AC00](v2 - 8);
  __swift_project_boxed_opaque_existential_1(&a1[OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController_service], *&a1[OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController_service + 24]);
  v3 = sub_1C2E72884();
  v5 = v4;
  v6 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC062708));
  v19 = v5;
  v7 = sub_1C2E73E44();
  v8 = [v7 view];
  if (!v8)
  {
    __break(1u);
    goto LABEL_8;
  }

  v9 = v8;
  v10 = [objc_opt_self() clearColor];
  [v9 setBackgroundColor_];

  v11 = [v7 view];
  if (!v11)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v12 = v11;
  [v11 setAlpha_];

  v13 = [v7 view];
  if (!v13)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v14 = v13;
  [v13 setTranslatesAutoresizingMaskIntoConstraints_];

  sub_1C2E743A4();
  sub_1C2E73E14();
  [a1 addChildViewController_];
  v15 = sub_1C2DBD948();
  v16 = [v7 view];
  if (!v16)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v17 = v16;
  [v15 addSubview_];

  [v7 didMoveToParentViewController_];
  v18 = [v7 view];

  if (v18)
  {

    return;
  }

LABEL_11:
  __break(1u);
}

id sub_1C2DC0558(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2(v2);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_1C2DC05BC()
{
  v0 = sub_1C2E71934();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1C2E75C14();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v15[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v15[-v6];
  v8 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v9 = [objc_opt_self() secondaryLabelColor];
  [v8 setTextColor_];

  [v8 setTranslatesAutoresizingMaskIntoConstraints_];
  [v8 setTextAlignment_];
  sub_1C2E75BB4();
  (*(v2 + 16))(v4, v7, v1);
  type metadata accessor for StringDummy();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = [objc_opt_self() bundleForClass_];
  sub_1C2E718F4();
  sub_1C2E75C84();
  (*(v2 + 8))(v7, v1);
  v12 = sub_1C2E75C24();

  [v8 setText_];

  v13 = sub_1C2DBD948();
  [v13 addSubview_];

  return v8;
}

uint64_t sub_1C2DC088C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v5 = Strong;
  v6 = *(a3 + 16) == *(Strong + OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController_reasonForCallingIdentifier) && *(a3 + 24) == *(Strong + OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController_reasonForCallingIdentifier + 8);
  if (v6 || (sub_1C2E767A4()) && *&v5[OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController_reasonForCallingViewModel])
  {
    sub_1C2C6E1B4(0, &qword_1EC05D8C0);
    type metadata accessor for ReasonForCallingViewModel();
    swift_retain_n();
    v7 = sub_1C2E76024();
  }

  else
  {
    sub_1C2C6E1B4(0, &qword_1EC05D8C0);
    type metadata accessor for CallTranscripts();

    v7 = sub_1C2E76024();
  }

  return v7;
}

void sub_1C2DC0A14(char a1, uint64_t a2)
{
  if (![v2 isViewLoaded])
  {
    return;
  }

  v5 = -22.0;
  if (*(a2 + 32) & 1) == 0 && (a1)
  {
    v6 = *a2;
    v7 = *(a2 + 8);
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = [v2 view];
    if (v10)
    {
      v11 = v10;
      v12 = [v2 view];
      if (v12)
      {
        v13 = v12;
        v14 = [v12 window];

        [v11 convertRect:v14 fromView:{v6, v7, v8, v9}];
        v16 = v15;

        v17 = [v2 view];
        if (v17)
        {
          v18 = v17;
          [v17 frame];
          v20 = v19;
          v22 = v21;
          v24 = v23;
          v26 = v25;

          v30.origin.x = v20;
          v30.origin.y = v22;
          v30.size.width = v24;
          v30.size.height = v26;
          v27 = v16 - CGRectGetHeight(v30) + -20.0;
          if (v27 <= -22.0)
          {
            v5 = v27;
          }

          else
          {
            v5 = -22.0;
          }

          goto LABEL_10;
        }

LABEL_16:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_16;
  }

LABEL_10:
  v28 = sub_1C2DBF408(&OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController____lazy_storage___textFieldBottomConstraint, &OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController____lazy_storage___textField, sub_1C2DBF508, -22.0);
  [v28 setConstant_];
}

void sub_1C2DC0C08()
{
  if (v0[OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController_createTextField] == 1)
  {
    v1 = v0;
    v2 = sub_1C2DC0558(&OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController____lazy_storage___textField, sub_1C2DBF508);
    v3 = [v2 isHidden];

    if (v3)
    {
      v4 = sub_1C2DBF408(&OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController____lazy_storage___collectionViewTextHiddenBottomConstraint, &OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController____lazy_storage___collectionView, sub_1C2DBF30C, -4.0);
      [v4 setActive_];

      v5 = sub_1C2DBECCC();
      [v5 setActive_];

      v6 = OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController____lazy_storage___textField;
      v7 = [*&v1[OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController____lazy_storage___textField] superview];
      v8 = sub_1C2DBD948();

      if (v7 && (v7, v7 == v8))
      {
        [*&v1[v6] setHidden_];
      }

      else
      {
        v9 = *&v1[OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController____lazy_storage___contentView];
        v10 = *&v1[v6];
        [v10 setHidden_];
      }

      v11 = sub_1C2DBF288();
      sub_1C2DC0F70(1);

      v12 = [v1 view];
      if (v12)
      {
        v13 = v12;
        [v12 setNeedsLayout];
      }

      else
      {
        __break(1u);
      }
    }
  }
}

void sub_1C2DC0E00()
{
  if (v0[OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController_createTextField] == 1)
  {
    v1 = v0;
    v2 = sub_1C2DC0558(&OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController____lazy_storage___textField, sub_1C2DBF508);
    v3 = [v2 isHidden];

    if ((v3 & 1) == 0)
    {
      v4 = sub_1C2DBECCC();
      [v4 setActive_];

      v5 = sub_1C2DBF408(&OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController____lazy_storage___collectionViewTextHiddenBottomConstraint, &OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController____lazy_storage___collectionView, sub_1C2DBF30C, -4.0);
      [v5 setActive_];

      [*&v1[OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController____lazy_storage___textField] setHidden_];
      v6 = sub_1C2DBF288();
      sub_1C2DC0F70(0);

      v7 = [v1 view];
      if (v7)
      {
        v8 = v7;
        [v7 setNeedsLayout];
      }

      else
      {
        __break(1u);
      }
    }
  }
}

void sub_1C2DC0F70(char a1)
{
  if (a1)
  {
    sub_1C2C6E1B4(0, &qword_1EC0626C0);
    v2 = sub_1C2E76204();
  }

  else
  {
    v2 = *&v1[OBJC_IVAR____TtC16CommunicationsUI23CallTranscriptsMaskView_bottomPosition];
  }

  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC05D8D0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C2E7A700;
  sub_1C2C6E1B4(0, &qword_1EC0626C0);
  v5 = sub_1C2E76214();
  v6 = *&v1[OBJC_IVAR____TtC16CommunicationsUI23CallTranscriptsMaskView_topPosition];
  *(v4 + 32) = v5;
  *(v4 + 40) = v6;
  *(v4 + 48) = v3;
  v7 = v6;
  v8 = v3;
  *(v4 + 56) = sub_1C2E76214();
  v9 = [v1 layer];
  objc_opt_self();
  v10 = swift_dynamicCastObjCClassUnconditional();
  v11 = sub_1C2E75D64();

  [v10 setLocations_];
}

void sub_1C2DC10F8()
{
  v1 = sub_1C2E72844();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController_showEmptyState) == 1)
  {
    v5 = sub_1C2DC0558(&OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController____lazy_storage___emptyStateLabel, sub_1C2DC05BC);
    v6 = [v5 isHidden];

    if ((v6 & 1) == 0)
    {
      [*(v0 + OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController____lazy_storage___emptyStateLabel) setHidden_];
      v7 = OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController_currentInputState;
      swift_beginAccess();
      (*(v2 + 16))(v4, v0 + v7, v1);
      sub_1C2DBBFB4(v4);
      (*(v2 + 8))(v4, v1);
      v8 = sub_1C2DBD948();
      v9 = sub_1C2DBF288();
      [v8 setMaskView_];
    }
  }
}

void sub_1C2DC1298()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1C2DBE404(0);
  }
}

void sub_1C2DC12F0(double a1)
{
  v2 = sub_1C2DC0558(&OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController____lazy_storage___collectionView, sub_1C2DBF30C);
  [v2 contentInset];
  [v2 setContentInset_];
}

uint64_t sub_1C2DC1380@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC062650);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v36 - v6;
  v8 = sub_1C2E71A34();
  v39 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v38 = &v36 - v12;
  v13 = sub_1C2DC0558(&OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController____lazy_storage___collectionView, sub_1C2DBF30C);
  [v13 contentInset];
  v15 = v14;

  v16 = OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController____lazy_storage___collectionView;
  [*(v2 + OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController____lazy_storage___collectionView) bounds];
  if (fabs(v15 + v17 * -0.1) >= 2.22044605e-16)
  {
    v35 = *(v39 + 56);

    return v35(a1, 1, 1, v8);
  }

  else
  {
    v36 = v8;
    v37 = a1;
    result = sub_1C2DBDE48();
    v19 = *(result + 32);
    if (v19)
    {
      v20 = v19;
      sub_1C2E72CC4();

      if (sub_1C2E72C34() < 1)
      {

        (*(v5 + 8))(v7, v4);
        return (*(v39 + 56))(v37, 1, 1, v36);
      }

      v21 = sub_1C2E72C34();
      v22 = __OFSUB__(v21, 1);
      result = v21 - 1;
      if (!v22)
      {
        MEMORY[0x1C6922440](result, 0);

        (*(v5 + 8))(v7, v4);
        v23 = v38;
        v24 = *(v39 + 32);
        v25 = v36;
        v24(v38, v10, v36);
        if (*(v2 + OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController_hasUserScrolled))
        {
          [*(v2 + v16) contentSize];
          v27 = v26;
          [*(v2 + v16) contentOffset];
          v29 = v27 - v28;
          [*(v2 + v16) bounds];
          Height = CGRectGetHeight(v41);
          v31 = v37;
          if (vabdd_f64(v29, Height) >= 20.0)
          {
            (*(v39 + 8))(v23, v25);
            v32 = *(v39 + 56);
            v33 = v31;
            v34 = 1;
            return v32(v33, v34, 1, v25);
          }
        }

        else
        {
          v31 = v37;
        }

        v24(v31, v23, v25);
        v32 = *(v39 + 56);
        v33 = v31;
        v34 = 0;
        return v32(v33, v34, 1, v25);
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

void sub_1C2DC176C()
{
  v1 = sub_1C2E71934();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = sub_1C2E75C14();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v26 - v7;
  if (*(v0 + OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController_reasonForCallingViewModel))
  {
    v9 = v0 + OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController_lockStateDelegate;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v11 = Strong;
      v31 = *(v9 + 8);
      ObjectType = swift_getObjectType();
      sub_1C2E75BB4();
      v30 = &unk_1C2E89C10;
      v33 = *(v3 + 16);
      v33(v5, v8, v2);
      type metadata accessor for StringDummy();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v29 = ObjCClassFromMetadata;
      v28 = objc_opt_self();
      v13 = [v28 bundleForClass_];
      sub_1C2E718F4();
      v14 = sub_1C2E75C84();
      v16 = v15;
      v27 = *(v3 + 8);
      v27(v8, v2);
      v17 = v14;
      v18 = ObjectType;
      v19 = v31;
      (*(v31 + 24))(v17, v16, ObjectType);

      sub_1C2E75BB4();
      v33(v5, v8, v2);
      v20 = [v28 bundleForClass_];
      sub_1C2E718F4();
      v21 = sub_1C2E75C84();
      v23 = v22;
      v27(v8, v2);
      (*(v19 + 32))(v21, v23, v18, v19);

      v24 = swift_allocObject();
      *(v24 + 16) = v11;
      *(v24 + 24) = v19;
      v25 = *(v19 + 8);
      swift_unknownObjectRetain();
      v25(sub_1C2DC3540, v24, v18, v19);
      swift_unknownObjectRelease();
    }
  }
}

void sub_1C2DC1B40()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1C2DC176C();
    v4 = 0;
    memset(v3, 0, sizeof(v3));
    v2 = OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController_waitingToUnlockCancallable;
    swift_beginAccess();
    sub_1C2C9A468(v3, v1 + v2);
    swift_endAccess();
  }
}

uint64_t sub_1C2DC1BD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C2E71934();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1C2E75C14();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v19[-v10];
  ObjectType = swift_getObjectType();
  (*(a3 + 40))(ObjectType, a3);
  sub_1C2E75BB4();
  (*(v6 + 16))(v8, v11, v5);
  type metadata accessor for StringDummy();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v14 = [objc_opt_self() bundleForClass_];
  sub_1C2E718F4();
  v15 = sub_1C2E75C84();
  v17 = v16;
  (*(v6 + 8))(v11, v5);
  (*(a3 + 32))(v15, v17, ObjectType, a3);
}

uint64_t CallScreeningViewController.lockStateDelegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController_lockStateDelegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*CallScreeningViewController.lockStateDelegate.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController_lockStateDelegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1C2CA16BC;
}

Swift::Void __swiftcall CallScreeningViewController.updateLockState(_:)(Swift::Bool a1)
{
  v3 = sub_1C2E72844();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C2DBD948();
  [v7 setHidden_];

  if (*(v1 + OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController_createTextField) == 1)
  {
    v8 = sub_1C2DC0558(&OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController____lazy_storage___textField, sub_1C2DBF508);
    v9 = [v8 superview];

    if (!v9 || (v10 = *(v1 + OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController____lazy_storage___contentView), v9, v9 != v10))
    {
      if (a1)
      {
        v11 = *(v1 + OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController____lazy_storage___textField);

        [v11 setHidden_];
      }

      else
      {
        v12 = OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController_currentInputState;
        swift_beginAccess();
        (*(v4 + 16))(v6, v1 + v12, v3);
        sub_1C2DBBFB4(v6);
        (*(v4 + 8))(v6, v3);
      }
    }
  }
}

id CallScreeningViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1C2E75C24();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

uint64_t sub_1C2DC2288(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController_lockStateDelegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*sub_1C2DC22F4(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController_lockStateDelegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1C2CA3D10;
}

uint64_t sub_1C2DC23C0()
{
  v0 = sub_1C2E72B44();
  __swift_allocate_value_buffer(v0, qword_1EC062490);
  __swift_project_value_buffer(v0, qword_1EC062490);
  return sub_1C2E72B34();
}

char *sub_1C2DC2480()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC16CommunicationsUI23CallTranscriptsMaskView_topPosition] = sub_1C2E71B54();
  *&v0[OBJC_IVAR____TtC16CommunicationsUI23CallTranscriptsMaskView_bottomPosition] = sub_1C2E71B54();
  v33.receiver = v0;
  v33.super_class = ObjectType;
  v2 = objc_msgSendSuper2(&v33, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 clearColor];
  [v4 setBackgroundColor_];

  v6 = [v4 layer];
  objc_opt_self();
  v29 = swift_dynamicCastObjCClassUnconditional();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC05D8D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C2E7A700;
  *(inited + 32) = [v3 clearColor];
  *(inited + 40) = [v3 blackColor];
  *(inited + 48) = [v3 blackColor];
  *(inited + 56) = [v3 clearColor];
  v32 = MEMORY[0x1E69E7CC0];
  result = sub_1C2CA4B74(0, 4, 0);
  v10 = v32;
  if ((inited & 0xC000000000000001) != 0 || *((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 4uLL)
  {
    v28 = v7;
    v11 = v6;
    for (i = 0; i != 4; ++i)
    {
      if ((inited & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x1C6927010](i, inited);
      }

      else
      {
        v13 = *(inited + 8 * i + 32);
      }

      v14 = v13;
      v15 = [v13 CGColor];
      type metadata accessor for CGColor(0);
      v31 = v16;

      *&v30 = v15;
      v32 = v10;
      v18 = *(v10 + 16);
      v17 = *(v10 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_1C2CA4B74((v17 > 1), v18 + 1, 1);
        v10 = v32;
      }

      *(v10 + 16) = v18 + 1;
      sub_1C2D3A588(&v30, (v10 + 32 * v18 + 32));
    }

    swift_setDeallocating();
    swift_arrayDestroy();
    v19 = sub_1C2E75D64();

    [v29 setColors_];

    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1C2E7A700;
    sub_1C2C6E1B4(0, &qword_1EC0626C0);
    *(v20 + 32) = sub_1C2E76214();
    v21 = *&v4[OBJC_IVAR____TtC16CommunicationsUI23CallTranscriptsMaskView_topPosition];
    *(v20 + 40) = v21;
    v22 = *&v4[OBJC_IVAR____TtC16CommunicationsUI23CallTranscriptsMaskView_bottomPosition];
    *(v20 + 48) = v22;
    v23 = v21;
    v24 = v22;
    *(v20 + 56) = sub_1C2E76214();
    v25 = [v4 layer];
    objc_opt_self();
    v26 = swift_dynamicCastObjCClassUnconditional();
    v27 = sub_1C2E75D64();

    [v26 setLocations_];

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C2DC2984@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2DC2C3C(&qword_1EC062660, type metadata accessor for CallTranscripts);
  sub_1C2E71A64();

  v4 = *(v3 + 96);
  *a2 = *(v3 + 88);
  a2[1] = v4;
}

uint64_t sub_1C2DC2A48@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2DC2C3C(&qword_1EC062660, type metadata accessor for CallTranscripts);
  sub_1C2E71A64();

  v4 = *(v3 + 112);
  *a2 = *(v3 + 104);
  a2[1] = v4;
}

uint64_t keypath_set_13Tm(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

void *sub_1C2DC2B54(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_1C2DC2BC8@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_1C2DC2C3C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C2DC2CBC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC05DA00);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1C2DC2D2C(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC05DA00) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  sub_1C2DBE034(a1, v4, v5);
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t type metadata accessor for CallScreeningViewController()
{
  result = qword_1EC062680;
  if (!qword_1EC062680)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C2DC2E6C()
{
  sub_1C2DC3050(319, &qword_1EC05D910, type metadata accessor for CallTranscripts);
  if (v0 <= 0x3F)
  {
    sub_1C2DC3050(319, &qword_1EC062698, type metadata accessor for ReasonForCallingViewModel);
    if (v1 <= 0x3F)
    {
      sub_1C2E72844();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1C2DC3050(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    sub_1C2C6E1B4(255, &qword_1EC05D8C0);
    a3(255);
    v5 = sub_1C2E76014();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

id sub_1C2DC30F4()
{
  v0 = objc_opt_self();
  v1 = [v0 fractionalWidthDimension_];
  v2 = [v0 estimatedDimension_];
  v3 = objc_opt_self();
  v4 = [v3 sizeWithWidthDimension:v1 heightDimension:v2];

  v5 = [objc_opt_self() itemWithLayoutSize_];
  [v5 setContentInsets_];
  v6 = [v0 fractionalWidthDimension_];
  v7 = [v0 estimatedDimension_];
  v8 = [v3 sizeWithWidthDimension:v6 heightDimension:v7];

  v9 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC05D8D0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1C2E7A720;
  *(v10 + 32) = v5;
  sub_1C2C6E1B4(0, &qword_1EC05DA38);
  v11 = v5;
  v12 = sub_1C2E75D64();

  v13 = [v9 verticalGroupWithLayoutSize:v8 subitems:v12];

  v14 = [objc_opt_self() sectionWithGroup_];
  [v14 setInterGroupSpacing_];
  [v14 contentInsets];
  [v14 setContentInsets_];
  v15 = [objc_allocWithZone(MEMORY[0x1E69DC808]) initWithSection_];

  return v15;
}

void sub_1C2DC33A4()
{
  *(v0 + OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController_isVisible) = 0;
  *(v0 + OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController_revealMessage) = 0;
  *(v0 + OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController____lazy_storage___maskView) = 0;
  *(v0 + OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController____lazy_storage___contentView) = 0;
  *(v0 + OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController____lazy_storage___collectionViewTextVisibleBottomConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController____lazy_storage___collectionViewTextHiddenBottomConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController____lazy_storage___collectionView) = 0;
  v1 = v0 + OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController_textFieldPadding;
  *v1 = 0;
  *(v1 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController____lazy_storage___textFieldBottomConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController____lazy_storage___textField) = 0;
  *(v0 + OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController____lazy_storage___replyStatusLabel) = 0;
  *(v0 + OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController____lazy_storage___emptyStateLabel) = 0;
  *(v0 + OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController____lazy_storage___dataSource) = 0;
  *(v0 + OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController_cancellables) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController_once) = 0;
  v2 = (v0 + OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController_reasonForCallingIdentifier);
  *v2 = 0xD000000000000012;
  v2[1] = 0x80000001C2E984E0;
  *(v0 + OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController_reasonForCallingViewModel) = 0;
  *(v0 + OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController_hasUserScrolled) = 0;
  v3 = v0 + OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController_waitingToUnlockCancallable;
  *v3 = 0u;
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0;
  *(v0 + OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController_lockStateDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  sub_1C2E766F4();
  __break(1u);
}

unint64_t sub_1C2DC35E4()
{
  result = qword_1EC062720;
  if (!qword_1EC062720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC062720);
  }

  return result;
}

unint64_t sub_1C2DC366C()
{
  result = qword_1EC062750;
  if (!qword_1EC062750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC062748);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC062750);
  }

  return result;
}

uint64_t MarqueeLabel.init(text:attributedText:color:animated:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  result = swift_getKeyPath();
  *a6 = result;
  *(a6 + 8) = 0;
  *(a6 + 16) = a1;
  *(a6 + 24) = a2;
  *(a6 + 32) = a3;
  *(a6 + 40) = a4;
  *(a6 + 48) = a5;
  return result;
}

id MarqueeLabel.makeUIView(context:)()
{
  type metadata accessor for MarqueeUILabel();
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v0 setNumberOfLines_];
  LODWORD(v1) = 1132068864;
  [v0 setContentCompressionResistancePriority:0 forAxis:v1];
  LODWORD(v2) = 1144750080;
  [v0 setContentHuggingPriority:1 forAxis:v2];
  [v0 setUserInteractionEnabled_];

  [v0 setMarqueeRunning_];
  [v0 setMarqueeEnabled_];
  return v0;
}

id MarqueeLabel.updateUIView(_:context:)(unsigned __int8 *a1, uint64_t a2)
{
  v39 = a2;
  v4 = sub_1C2E74614();
  v36 = *(v4 - 8);
  v37 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C2E73BA4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v12 = MEMORY[0x1EEE9AC00](v11).n128_u64[0];
  v14 = &v35 - v13;
  v15 = *v2;
  v16 = *(v2 + 8);
  v17 = v2[4];
  v18 = v2[5];
  v38 = *(v2 + 48);
  if (v17)
  {
    [a1 setAttributedText_];
    if (v18)
    {
LABEL_3:
      v19 = v18;
      goto LABEL_8;
    }
  }

  else
  {
    v20 = sub_1C2E75C24();
    [a1 setText_];

    if (v18)
    {
      goto LABEL_3;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC062760);
  v21 = sub_1C2E74284();
  v22 = MEMORY[0x1C69244B0](v21);
  (*(v8 + 8))(v14, v7);
  if (!v22)
  {
    sub_1C2E74F84();
  }

  sub_1C2D327C0();
  v19 = sub_1C2E761F4();
  v18 = 0;
LABEL_8:
  v23 = v18;
  [a1 setTextColor_];

  if ((v16 & 1) == 0)
  {
    sub_1C2E75FD4();
    v24 = sub_1C2E74404();
    sub_1C2E72B14();

    sub_1C2E73B94();
    swift_getAtKeyPath();
    j_j__swift_release(v15, 0);
    (*(v8 + 8))(v10, v7);
    v15 = v40;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC062760);
    sub_1C2E74284();
    sub_1C2E73A54();
    (*(v8 + 8))(v10, v7);
    v25 = sub_1C2E744D4();

    (*(v36 + 8))(v6, v37);
  }

  else
  {
    v25 = 0;
  }

  [a1 setFont_];

  v26 = a1[OBJC_IVAR____TtC16CommunicationsUI14MarqueeUILabel_shouldAnimateMarquee];
  v27 = v38;
  a1[OBJC_IVAR____TtC16CommunicationsUI14MarqueeUILabel_shouldAnimateMarquee] = v38;
  if (v27 != v26)
  {
    sub_1C2DC3FF0();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC062760);
  sub_1C2E74274();
  v28 = *(v40 + 16);
  v29 = *(v40 + 24);

  v31 = &a1[OBJC_IVAR____TtC16CommunicationsUI14MarqueeUILabel_proposedWidth];
  v32 = *&a1[OBJC_IVAR____TtC16CommunicationsUI14MarqueeUILabel_proposedWidth];
  v33 = a1[OBJC_IVAR____TtC16CommunicationsUI14MarqueeUILabel_proposedWidth + 8];
  *v31 = v28;
  *(v31 + 8) = v29;
  if (v33)
  {
    if (v29)
    {
      return result;
    }

    return sub_1C2DC3FF0();
  }

  if (v32 == v28)
  {
    v34 = v29;
  }

  else
  {
    v34 = 1;
  }

  if (v34)
  {
    return sub_1C2DC3FF0();
  }

  return result;
}

uint64_t MarqueeLabel.sizeThatFits(_:uiView:context:)(uint64_t a1, char a2, uint64_t a3, char a4, void *a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC062760);
  sub_1C2E74274();
  *(v16 + 16) = *&a1;
  *(v16 + 24) = a2 & 1;
  if (a2)
  {
    v10 = 10.0;
  }

  else
  {
    v10 = *&a1;
  }

  if (a2)
  {
    v11 = INFINITY;
  }

  else
  {
    v11 = *&a1;
  }

  if (a4)
  {
    v12 = 10.0;
  }

  else
  {
    v12 = *&a3;
  }

  [a5 sizeThatFits_];
  if (v11 >= v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = v11;
  }

  [a5 intrinsicContentSize];
  return *&v14;
}

uint64_t MarqueeLabel.makeCoordinator()()
{
  type metadata accessor for MarqueeLabel.Coordinator();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 1;
  return result;
}

uint64_t sub_1C2DC3DFC@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for MarqueeLabel.Coordinator();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 1;
  *a1 = result;
  return result;
}

uint64_t sub_1C2DC3E70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C2DC4528();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1C2DC3ED4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C2DC4528();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1C2DC3F38()
{
  sub_1C2DC4528();
  sub_1C2E73EE4();
  __break(1u);
}

id sub_1C2DC3F60()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MarqueeUILabel();
  objc_msgSendSuper2(&v2, sel_layoutSubviews);
  return sub_1C2DC3FF0();
}

id sub_1C2DC3FF0()
{
  [v0 intrinsicContentSize];
  v2 = v1;
  [v0 bounds];
  Width = CGRectGetWidth(v10);
  if (Width > 0.0)
  {
    [v0 bounds];
    Width = CGRectGetWidth(v11);
    goto LABEL_5;
  }

  v4 = &v0[OBJC_IVAR____TtC16CommunicationsUI14MarqueeUILabel_proposedWidth];
  if ((v0[OBJC_IVAR____TtC16CommunicationsUI14MarqueeUILabel_proposedWidth + 8] & 1) == 0)
  {
    Width = *v4;
    if (*v4 > 0.0)
    {
LABEL_5:
      if (v2 - Width > 0.5)
      {
        v5 = v0[OBJC_IVAR____TtC16CommunicationsUI14MarqueeUILabel_shouldAnimateMarquee];
      }

      else
      {
        v5 = 0;
      }

      [v0 setMarqueeRunning_];
      v6 = v0;
      v7 = v5;
      goto LABEL_10;
    }
  }

  [v0 setMarqueeRunning_];
  v6 = v0;
  v7 = 0;
LABEL_10:

  return [v6 setMarqueeEnabled_];
}

id MarqueeUILabel.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id MarqueeUILabel.init(frame:)(double a1, double a2, double a3, double a4)
{
  v4[OBJC_IVAR____TtC16CommunicationsUI14MarqueeUILabel_shouldAnimateMarquee] = 1;
  v9 = &v4[OBJC_IVAR____TtC16CommunicationsUI14MarqueeUILabel_proposedWidth];
  *v9 = 0;
  v9[8] = 1;
  v11.receiver = v4;
  v11.super_class = type metadata accessor for MarqueeUILabel();
  return objc_msgSendSuper2(&v11, sel_initWithFrame_, a1, a2, a3, a4);
}

id MarqueeUILabel.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id MarqueeUILabel.init(coder:)(void *a1)
{
  v1[OBJC_IVAR____TtC16CommunicationsUI14MarqueeUILabel_shouldAnimateMarquee] = 1;
  v3 = &v1[OBJC_IVAR____TtC16CommunicationsUI14MarqueeUILabel_proposedWidth];
  *v3 = 0;
  v3[8] = 1;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for MarqueeUILabel();
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

id MarqueeUILabel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MarqueeUILabel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C2DC4460(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_1C2DC44A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1C2DC4528()
{
  result = qword_1EC062778;
  if (!qword_1EC062778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC062778);
  }

  return result;
}

uint64_t sub_1C2DC457C(uint64_t a1)
{
  v3 = v1;
  v22[1] = *MEMORY[0x1E69E9840];
  v5 = sub_1C2E71784();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_opt_self() sharedInstance];
  *(v3 + 24) = v9;
  v10 = *MEMORY[0x1E6958068];
  v11 = *MEMORY[0x1E6958130];
  v22[0] = 0;
  v12 = [v9 setCategory:v10 mode:v11 options:2 error:v22];
  v13 = v22[0];
  if (!v12 || (v14 = *(v3 + 24), v22[0] = 0, v15 = v13, v16 = [v14 setActive:1 error:v22], v13 = v22[0], !v16))
  {
    v20 = v13;
    sub_1C2E716D4();

    swift_willThrow();
    goto LABEL_6;
  }

  (*(v6 + 16))(v8, a1, v5);
  objc_allocWithZone(MEMORY[0x1E6958448]);
  v17 = v13;
  v18 = sub_1C2DC4830(v8);
  if (v2)
  {
LABEL_6:
    (*(v6 + 8))(a1, v5);

    type metadata accessor for CountdownTickAudioPlayer();
    swift_deallocPartialClassInstance();
    return v3;
  }

  *(v3 + 16) = v18;
  LODWORD(v19) = 1.0;
  [v18 setVolume_];
  (*(v6 + 8))(a1, v5);
  return v3;
}

uint64_t sub_1C2DC47CC()
{

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

id sub_1C2DC4830(uint64_t a1)
{
  v2 = v1;
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1C2E71734();
  v13[0] = 0;
  v5 = [v2 initWithContentsOfURL:v4 error:v13];

  v6 = v13[0];
  if (v5)
  {
    v7 = sub_1C2E71784();
    v8 = *(*(v7 - 8) + 8);
    v9 = v6;
    v8(a1, v7);
  }

  else
  {
    v10 = v13[0];
    sub_1C2E716D4();

    swift_willThrow();
    v11 = sub_1C2E71784();
    (*(*(v11 - 8) + 8))(a1, v11);
  }

  return v5;
}

__n128 RecentsCellVoicemailLeadingView.init(image:)@<Q0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = (a2 + *(type metadata accessor for RecentsCellVoicemailLeadingView() + 20));
  v5 = *(sub_1C2E737C4() + 20);
  v6 = *MEMORY[0x1E697F468];
  v7 = sub_1C2E73D44();
  (*(*(v7 - 8) + 104))(v4 + v5, v6, v7);
  __asm { FMOV            V0.2D, #20.0 }

  *v4 = result;
  *a2 = a1;
  return result;
}

uint64_t type metadata accessor for RecentsCellVoicemailLeadingView()
{
  result = qword_1EC062790;
  if (!qword_1EC062790)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t RecentsCellVoicemailLeadingView.body.getter@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_1C2E75744();
  a1[1] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC062780);
  sub_1C2DC4AE0(v1, a1 + *(v4 + 44));
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC062788);
  v6 = a1 + *(result + 36);
  *v6 = 0x3FF0000000000000;
  *(v6 + 4) = 0;
  return result;
}

uint64_t sub_1C2DC4AE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0627B8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v29 - v7);
  v9 = sub_1C2E75054();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0627C0);
  v14 = v13 - 8;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v29 - v19;
  (*(v10 + 104))(v12, *MEMORY[0x1E6981630], v9, v18);
  v21 = sub_1C2E750C4();
  (*(v10 + 8))(v12, v9);
  v22 = type metadata accessor for RecentsCellVoicemailLeadingView();
  v23 = &v20[*(v14 + 44)];
  sub_1C2D40890(a1 + *(v22 + 20), v23);
  *(v23 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FDE0) + 36)) = 256;
  *v20 = v21;
  *(v20 + 1) = 0x4024000000000000;
  v20[16] = 1;
  *v8 = sub_1C2E75744();
  v8[1] = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0627C8);
  sub_1C2DC4E50(a1, v8 + *(v25 + 44));
  sub_1C2C736A4(v20, v16, &qword_1EC0627C0);
  sub_1C2C736A4(v8, v5, &qword_1EC0627B8);
  v26 = v30;
  sub_1C2C736A4(v16, v30, &qword_1EC0627C0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0627D0);
  sub_1C2C736A4(v5, v26 + *(v27 + 48), &qword_1EC0627B8);
  sub_1C2C73644(v8, &qword_1EC0627B8);
  sub_1C2C73644(v20, &qword_1EC0627C0);
  sub_1C2C73644(v5, &qword_1EC0627B8);
  return sub_1C2C73644(v16, &qword_1EC0627C0);
}

uint64_t sub_1C2DC4E50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05D810);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v32 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0627D8);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v32 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0627E0);
  v14 = v13 - 8;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v32 - v18;
  v20 = type metadata accessor for RecentsCellVoicemailLeadingView();
  sub_1C2D40890(a1 + *(v20 + 20), v19);
  v21 = &v19[*(v14 + 44)];
  *v21 = 0x4059000000000000;
  v21[8] = 1;
  *(v21 + 1) = xmmword_1C2E8A170;
  v22 = sub_1C2E75044();
  v23 = sub_1C2E74534();
  (*(*(v23 - 8) + 56))(v5, 1, 1, v23);
  v24 = sub_1C2E745C4();
  sub_1C2C73644(v5, &qword_1EC05D810);
  KeyPath = swift_getKeyPath();
  v26 = *(v7 + 44);
  v27 = *MEMORY[0x1E6981DC0];
  v28 = sub_1C2E757E4();
  (*(*(v28 - 8) + 104))(v12 + v26, v27, v28);
  *v12 = v22;
  v12[1] = KeyPath;
  v12[2] = v24;
  sub_1C2C736A4(v19, v16, &qword_1EC0627E0);
  sub_1C2C736A4(v12, v9, &qword_1EC0627D8);
  v29 = v33;
  sub_1C2C736A4(v16, v33, &qword_1EC0627E0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0627E8);
  sub_1C2C736A4(v9, v29 + *(v30 + 48), &qword_1EC0627D8);
  sub_1C2C73644(v12, &qword_1EC0627D8);
  sub_1C2C73644(v19, &qword_1EC0627E0);
  sub_1C2C73644(v9, &qword_1EC0627D8);
  return sub_1C2C73644(v16, &qword_1EC0627E0);
}

uint64_t sub_1C2DC51C4@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_1C2E75744();
  a1[1] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC062780);
  sub_1C2DC4AE0(v1, a1 + *(v4 + 44));
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC062788);
  v6 = a1 + *(result + 36);
  *v6 = 0x3FF0000000000000;
  *(v6 + 4) = 0;
  return result;
}

uint64_t sub_1C2DC5260()
{
  result = sub_1C2E737C4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1C2DC52DC()
{
  result = qword_1EC0627A0;
  if (!qword_1EC0627A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC062788);
    sub_1C2DC5368();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0627A0);
  }

  return result;
}

unint64_t sub_1C2DC5368()
{
  result = qword_1EC0627A8;
  if (!qword_1EC0627A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC0627B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0627A8);
  }

  return result;
}

uint64_t sub_1C2DC53CC@<X0>(char *a1@<X8>)
{
  v28 = a1;
  v1 = sub_1C2E74174();
  v2 = *(v1 - 8);
  v25 = v1;
  v26 = v2;
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v25 - v6;
  v8 = sub_1C2E74154();
  v27 = *(v8 - 8);
  v9 = v27;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v25 - v13;
  sub_1C2E74164();
  sub_1C2E74184();
  v15 = *(v9 + 16);
  v15(v11, v14, v8);
  v16 = *(v2 + 16);
  v16(v4, v7, v1);
  v17 = v28;
  v15(v28, v11, v8);
  v18 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0628E0) + 48)];
  v19 = v25;
  v16(v18, v4, v25);
  v20 = *(v26 + 8);
  v21 = v7;
  v22 = v19;
  v20(v21, v19);
  v23 = *(v27 + 8);
  v23(v14, v8);
  v20(v4, v22);
  return (v23)(v11, v8);
}

uint64_t sub_1C2DC565C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  *a1 = sub_1C2E73C04();
  *(a1 + 8) = v3;
  *(a1 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0628D8);
  return sub_1C2DC53CC((a1 + *(v4 + 44)));
}

uint64_t MacButtonStyle.init(insets:rim:fillWidth:)@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>)
{
  *a3 = swift_getKeyPath();
  *(a3 + 8) = 0;
  result = swift_getKeyPath();
  *(a3 + 16) = result;
  *(a3 + 24) = 0;
  *(a3 + 32) = a4;
  *(a3 + 40) = a5;
  *(a3 + 48) = a6;
  *(a3 + 56) = a7;
  *(a3 + 64) = a1;
  *(a3 + 65) = a2;
  return result;
}

uint64_t MacButtonStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v88 = a1;
  v87 = a2;
  v76 = sub_1C2E73BA4();
  v75 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v74 = &v74 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0627F0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v74 - v5;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0627F8);
  v83 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v8 = &v74 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC062800);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v78 = &v74 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC062808);
  v13 = v12 - 8;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v74 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC062810);
  v17 = v16 - 8;
  MEMORY[0x1EEE9AC00](v16);
  v80 = &v74 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC062818);
  v20 = v19 - 8;
  MEMORY[0x1EEE9AC00](v19);
  v79 = &v74 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC062820);
  v23 = v22 - 8;
  MEMORY[0x1EEE9AC00](v22);
  v81 = &v74 - v24;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC062828) - 8;
  MEMORY[0x1EEE9AC00](v82);
  v77 = &v74 - v25;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC062830);
  MEMORY[0x1EEE9AC00](v86);
  v85 = &v74 - v26;
  v27 = v2[2];
  v28 = v2[3];
  v29 = *v2;
  v97[1] = v2[1];
  v98 = v27;
  v99 = v28;
  v100 = *(v2 + 32);
  v97[0] = v29;
  sub_1C2E741C4();
  KeyPath = swift_getKeyPath();
  v31 = &v6[*(v4 + 36)];
  *v31 = KeyPath;
  v31[8] = 0;
  *&v90 = 0x4018000000000000;
  sub_1C2DC6AB0();
  sub_1C2DC6B98();
  sub_1C2E74954();
  sub_1C2C73644(v6, &qword_1EC0627F0);
  sub_1C2E75744();
  sub_1C2E737F4();
  v32 = v78;
  (*(v83 + 32))(v78, v8, v84);
  v33 = (v32 + *(v10 + 44));
  v34 = v95;
  v33[4] = v94;
  v33[5] = v34;
  v33[6] = v96;
  v35 = v91;
  *v33 = v90;
  v33[1] = v35;
  v36 = v93;
  v33[2] = v92;
  v33[3] = v36;
  LOBYTE(v6) = sub_1C2E74454();
  v37 = v77;
  sub_1C2C71D5C(v32, v15, &qword_1EC062800);
  v38 = &v15[*(v13 + 44)];
  *v38 = v6;
  v39 = v98;
  *(v38 + 24) = v99;
  *(v38 + 8) = v39;
  v38[40] = 0;
  v40 = _s7SwiftUI5ColorV014CommunicationsB0E029defaultUnselectedControlImageC0ACvgZ_0();
  v41 = v15;
  v42 = v80;
  sub_1C2C71D5C(v41, v80, &qword_1EC062808);
  *(v42 + *(v17 + 44)) = v40;
  v43 = sub_1C2E75744();
  v45 = v44;
  v46 = v79;
  v47 = &v79[*(v20 + 44)];
  sub_1C2DC5FFC(v97, v47);
  v48 = (v47 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC062848) + 36));
  *v48 = v43;
  v48[1] = v45;
  v49 = v42;
  v50 = v46;
  sub_1C2C71D5C(v49, v46, &qword_1EC062810);
  v51 = sub_1C2E75744();
  v53 = v52;
  v54 = v81;
  v55 = &v81[*(v23 + 44)];
  sub_1C2DC63C0(v97, v55);
  v56 = (v55 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC062850) + 36));
  *v56 = v51;
  v56[1] = v53;
  sub_1C2C71D5C(v50, v54, &qword_1EC062818);
  v57 = sub_1C2E75744();
  v59 = v58;
  v60 = v37 + *(v82 + 44);
  sub_1C2DC6724(v60);
  v61 = (v60 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC062858) + 36));
  *v61 = v57;
  v61[1] = v59;
  sub_1C2C71D5C(v54, v37, &qword_1EC062820);
  v102 = BYTE8(v97[0]);
  v62 = v97[0];
  v101 = *&v97[0];
  if (BYTE8(v97[0]) != 1)
  {

    sub_1C2E75FD4();
    v63 = sub_1C2E74404();
    sub_1C2E72B14();

    v64 = v74;
    sub_1C2E73B94();
    swift_getAtKeyPath();
    sub_1C2C73644(&v101, &qword_1EC062860);
    (*(v75 + 8))(v64, v76);
    v62 = v89;
  }

  if (v62)
  {
    v65 = 1.0;
  }

  else
  {
    v65 = 0.6;
  }

  v66 = v85;
  sub_1C2C71D5C(v37, v85, &qword_1EC062828);
  *(v66 + *(v86 + 36)) = v65;
  v67 = sub_1C2E75744();
  v69 = v68;
  v70 = v66;
  v71 = v87;
  sub_1C2C71D5C(v70, v87, &qword_1EC062830);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC062868);
  v73 = (v71 + *(result + 36));
  *v73 = v67;
  v73[1] = v69;
  return result;
}

double sub_1C2DC5FFC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = sub_1C2E74EC4();
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C2E73BA4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C2E737C4();
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC062920);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v31 - v15;
  v17 = *(v11 + 28);
  v18 = *MEMORY[0x1E697F468];
  v19 = sub_1C2E73D44();
  (*(*(v19 - 8) + 104))(&v13[v17], v18, v19);
  __asm { FMOV            V0.2D, #5.0 }

  *v13 = _Q0;
  v36 = *(a1 + 24);
  v25 = *(a1 + 16);
  v35 = v25;
  LOBYTE(v17) = v36;

  if ((v17 & 1) == 0)
  {
    sub_1C2E75FD4();
    v26 = sub_1C2E74404();
    sub_1C2E72B14();

    sub_1C2E73B94();
    swift_getAtKeyPath();
    sub_1C2C73644(&v35, &qword_1EC062928);
    (*(v7 + 8))(v9, v6);
    v25 = v34;
  }

  if (!v25)
  {
    (*(v31 + 104))(v5, *MEMORY[0x1E69814D8], v32);
    v34 = sub_1C2E74FC4();
    v25 = sub_1C2E73284();
  }

  sub_1C2D6C63C(v13, v16);
  *&v16[*(v14 + 52)] = v25;
  *&v16[*(v14 + 56)] = 256;
  _s7SwiftUI5ColorV014CommunicationsB0E027defaultSelectedControlImageC0ACvgZ_0();
  v27 = sub_1C2E74F74();

  v28 = v33;
  sub_1C2C71D5C(v16, v33, &qword_1EC062920);
  v29 = v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC062930) + 36);
  *v29 = v27;
  result = 0.5;
  *(v29 + 8) = xmmword_1C2E8A2C0;
  *(v29 + 24) = 0x3FF0000000000000;
  return result;
}

uint64_t sub_1C2DC63C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1C2E737C4();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC062900);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v33 - v10;
  if (*(a1 + 64))
  {
    v12 = *(v4 + 20);
    v13 = *MEMORY[0x1E697F468];
    v33 = v8;
    v14 = sub_1C2E73D44();
    (*(*(v14 - 8) + 104))(&v6[v12], v13, v14);
    __asm { FMOV            V0.2D, #5.0 }

    *v6 = _Q0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061CA0);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1C2E7A110;
    _s7SwiftUI5ColorV014CommunicationsB0E029defaultUnselectedControlImageC0ACvgZ_0();
    sub_1C2E74F74();

    *(v20 + 32) = sub_1C2E75534();
    *(v20 + 40) = v21;
    _s7SwiftUI5ColorV014CommunicationsB0E029defaultUnselectedControlImageC0ACvgZ_0();
    sub_1C2E74F74();

    *(v20 + 48) = sub_1C2E75534();
    *(v20 + 56) = v22;
    v23 = sub_1C2E75544();
    sub_1C2E73134();
    sub_1C2D40890(v6, v11);
    v24 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC062908) + 36)];
    v25 = v35;
    *v24 = v34;
    *(v24 + 1) = v25;
    *(v24 + 4) = v36;
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC062910);
    *&v11[*(v26 + 52)] = v23;
    *&v11[*(v26 + 56)] = 256;
    v27 = sub_1C2E75744();
    v29 = v28;
    sub_1C2D408F4(v6);
    v30 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC062918) + 36)];
    *v30 = v27;
    v30[1] = v29;
    sub_1C2C71D5C(v11, a2, &qword_1EC062900);
    return (*(v33 + 56))(a2, 0, 1, v7);
  }

  else
  {
    v32 = *(v8 + 56);

    return v32(a2, 1, 1, v7, v9);
  }
}

uint64_t sub_1C2DC6724@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1C2E73C74();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v25 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0628E8);
  v26 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v25 - v10;
  if (sub_1C2E741D4())
  {
    v12 = *(sub_1C2E737C4() + 20);
    v13 = *MEMORY[0x1E697F468];
    v14 = sub_1C2E73D44();
    (*(*(v14 - 8) + 104))(&v11[v12], v13, v14);
    __asm { FMOV            V0.2D, #5.0 }

    *v11 = _Q0;
    _s7SwiftUI5ColorV014CommunicationsB0E029defaultUnselectedControlImageC0ACvgZ_0();
    v20 = sub_1C2E74F74();

    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0628F0);
    *&v11[*(v21 + 52)] = v20;
    *&v11[*(v21 + 56)] = 256;
    sub_1C2E73C64();
    (*(v3 + 16))(v5, v8, v2);
    sub_1C2DC729C(&qword_1EC0628F8, MEMORY[0x1E697F400]);
    v22 = sub_1C2E73294();
    (*(v3 + 8))(v8, v2);
    *&v11[*(v9 + 36)] = v22;
    sub_1C2C71D5C(v11, a1, &qword_1EC0628E8);
    return (*(v26 + 56))(a1, 0, 1, v9);
  }

  else
  {
    v24 = *(v26 + 56);

    return v24(a1, 1, 1, v9);
  }
}

uint64_t sub_1C2DC6A5C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C2E73A64();
  *a1 = result;
  return result;
}

unint64_t sub_1C2DC6AB0()
{
  result = qword_1EC062838;
  if (!qword_1EC062838)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC0627F0);
    sub_1C2DC729C(&qword_1EC05CB20, MEMORY[0x1E697C8D0]);
    sub_1C2C94F38(&qword_1EC05B458, &qword_1EC05DD78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC062838);
  }

  return result;
}

unint64_t sub_1C2DC6B98()
{
  result = qword_1EC062840;
  if (!qword_1EC062840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC062840);
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

uint64_t sub_1C2DC6C2C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 66))
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

uint64_t sub_1C2DC6C74(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 66) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 66) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

unint64_t sub_1C2DC6CDC()
{
  result = qword_1EC062870;
  if (!qword_1EC062870)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC062868);
    sub_1C2DC6D94();
    sub_1C2C94F38(&qword_1EC0628C8, &qword_1EC0628D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC062870);
  }

  return result;
}

unint64_t sub_1C2DC6D94()
{
  result = qword_1EC062878;
  if (!qword_1EC062878)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC062830);
    sub_1C2DC6E20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC062878);
  }

  return result;
}

unint64_t sub_1C2DC6E20()
{
  result = qword_1EC062880;
  if (!qword_1EC062880)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC062828);
    sub_1C2DC6ED8();
    sub_1C2C94F38(&qword_1EC0628C0, &qword_1EC062858);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC062880);
  }

  return result;
}

unint64_t sub_1C2DC6ED8()
{
  result = qword_1EC062888;
  if (!qword_1EC062888)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC062820);
    sub_1C2DC6F90();
    sub_1C2C94F38(&qword_1EC0628B8, &qword_1EC062850);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC062888);
  }

  return result;
}

unint64_t sub_1C2DC6F90()
{
  result = qword_1EC062890;
  if (!qword_1EC062890)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC062818);
    sub_1C2DC7048();
    sub_1C2C94F38(&qword_1EC0628B0, &qword_1EC062848);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC062890);
  }

  return result;
}

unint64_t sub_1C2DC7048()
{
  result = qword_1EC062898;
  if (!qword_1EC062898)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC062810);
    sub_1C2DC7100();
    sub_1C2C94F38(qword_1EDDCDA28, &qword_1EC05E1F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC062898);
  }

  return result;
}

unint64_t sub_1C2DC7100()
{
  result = qword_1EC0628A0;
  if (!qword_1EC0628A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC062808);
    sub_1C2DC718C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0628A0);
  }

  return result;
}

unint64_t sub_1C2DC718C()
{
  result = qword_1EC0628A8;
  if (!qword_1EC0628A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC062800);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC0627F0);
    sub_1C2DC6AB0();
    sub_1C2DC6B98();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0628A8);
  }

  return result;
}

uint64_t sub_1C2DC729C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t ButtonWithActionConfiguration.action.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ButtonWithActionConfiguration.deinit()
{

  return v0;
}

uint64_t ButtonWithActionConfiguration.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

uint64_t ButtonStackViewModel.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t ButtonStackView.body.getter@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_1C2E73C24();
  *(a1 + 8) = 0x4024000000000000;
  *(a1 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC062948);
  swift_beginAccess();
  swift_getKeyPath();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05F438);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC062950);
  sub_1C2CFB474();
  sub_1C2DC7BA4(&qword_1EC062958, &qword_1EC062950);
  return sub_1C2E75434();
}

uint64_t sub_1C2DC7528@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  result = swift_beginAccess();
  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v7 = *(a2 + 16);
    if (v5 < *(v7 + 16))
    {
      v8 = v7 + 56 * v5;
      v9 = *(v8 + 32);
      v10 = *(v8 + 48);
      v11 = *(v8 + 64);
      v39 = *(v8 + 80);
      v38[1] = v10;
      v38[2] = v11;
      v38[0] = v9;
      sub_1C2DC7DA4(v38, v54);
      v12 = sub_1C2E73C24();
      v37 = 0;
      sub_1C2DC7890(v38, &v22);
      v51 = v33;
      v52 = v34;
      v53[0] = *v35;
      *(v53 + 10) = *&v35[10];
      v48 = v30;
      v49 = v31;
      v50 = v32;
      v44 = v26;
      v45 = v27;
      v46 = v28;
      v47 = v29;
      v40 = v22;
      v41 = v23;
      v42 = v24;
      v43 = v25;
      v54[11] = v33;
      v54[12] = v34;
      v55[0] = *v35;
      *(v55 + 10) = *&v35[10];
      v54[8] = v30;
      v54[9] = v31;
      v54[10] = v32;
      v54[4] = v26;
      v54[5] = v27;
      v54[6] = v28;
      v54[7] = v29;
      v54[0] = v22;
      v54[1] = v23;
      v54[2] = v24;
      v54[3] = v25;
      sub_1C2DC7E00(&v40, &v21);
      sub_1C2DC7E70(v54);
      result = sub_1C2DC7ED8(v38);
      *&v36[183] = v51;
      *&v36[199] = v52;
      *&v36[215] = v53[0];
      *&v36[225] = *(v53 + 10);
      *&v36[119] = v47;
      *&v36[135] = v48;
      *&v36[151] = v49;
      *&v36[167] = v50;
      *&v36[55] = v43;
      *&v36[71] = v44;
      *&v36[87] = v45;
      *&v36[103] = v46;
      *&v36[7] = v40;
      *&v36[23] = v41;
      *&v36[39] = v42;
      v13 = *&v36[208];
      *(a3 + 209) = *&v36[192];
      *(a3 + 225) = v13;
      *(a3 + 241) = *&v36[224];
      v14 = *&v36[144];
      *(a3 + 145) = *&v36[128];
      *(a3 + 161) = v14;
      v15 = *&v36[176];
      *(a3 + 177) = *&v36[160];
      *(a3 + 193) = v15;
      v16 = *&v36[80];
      *(a3 + 81) = *&v36[64];
      *(a3 + 97) = v16;
      v17 = *&v36[112];
      *(a3 + 113) = *&v36[96];
      *(a3 + 129) = v17;
      v18 = *&v36[16];
      *(a3 + 17) = *v36;
      *(a3 + 33) = v18;
      v19 = *&v36[48];
      *(a3 + 49) = *&v36[32];
      v20 = v37;
      *a3 = v12;
      *(a3 + 8) = 0x4028000000000000;
      *(a3 + 16) = v20;
      *(a3 + 257) = v36[240];
      *(a3 + 65) = v19;
      return result;
    }
  }

  __break(1u);
  return result;
}

__n128 sub_1C2DC7890@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 48);
  if (v3)
  {
    v4 = *(a1 + 48);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DC738]) init];
    v3 = 0;
  }

  v5 = v3;
  sub_1C2E75744();
  sub_1C2E737F4();
  sub_1C2E75744();
  sub_1C2E737F4();
  *a2 = v4;
  *(a2 + 56) = v17;
  *(a2 + 72) = v18;
  *(a2 + 88) = v19;
  *(a2 + 104) = v20;
  *(a2 + 8) = v14;
  *(a2 + 24) = v15;
  *(a2 + 40) = v16;
  *(a2 + 152) = v9;
  *(a2 + 136) = v8;
  *(a2 + 120) = v7;
  result = v11;
  *(a2 + 216) = v13;
  *(a2 + 200) = v12;
  *(a2 + 184) = v11;
  *(a2 + 168) = v10;
  *(a2 + 232) = 256;
  return result;
}

uint64_t sub_1C2DC79DC@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_1C2E73C24();
  *(a1 + 8) = 0x4024000000000000;
  *(a1 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC062948);
  swift_beginAccess();
  swift_getKeyPath();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05F438);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC062950);
  sub_1C2CFB474();
  sub_1C2DC7BA4(&qword_1EC062958, &qword_1EC062950);
  return sub_1C2E75434();
}

uint64_t sub_1C2DC7BA4(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C2DC7C08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C2DC7D50();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1C2DC7C6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C2DC7D50();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1C2DC7CD0()
{
  sub_1C2DC7D50();
  sub_1C2E73EE4();
  __break(1u);
}

unint64_t sub_1C2DC7CFC()
{
  result = qword_1EC062970;
  if (!qword_1EC062970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC062970);
  }

  return result;
}

unint64_t sub_1C2DC7D50()
{
  result = qword_1EC062978;
  if (!qword_1EC062978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC062978);
  }

  return result;
}

uint64_t sub_1C2DC7E00(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC062980);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C2DC7E70(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC062980);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static ActivitySymbol.callScreeningActive.getter()
{
  v0 = sub_1C2E72124();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1C2E720F4();
  v5 = MEMORY[0x1EEE9AC00](v4);
  (*(v7 + 104))(&v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E6995DE8], v5);
  (*(v1 + 104))(v3, *MEMORY[0x1E6995E00], v0);
  return sub_1C2E72154();
}

uint64_t (*AudioCallKeypadControlViewModel.buttonAction.getter())()
{
  swift_allocObject();
  swift_weakInit();
  return sub_1C2DC8288;
}

uint64_t sub_1C2DC8120()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    swift_getKeyPath();
    v4[0] = v1;
    sub_1C2DC9568(&qword_1EC062990, type metadata accessor for AudioCallKeypadControlViewModel);
    sub_1C2E71A64();

    swift_beginAccess();
    sub_1C2DC854C(v1 + 24, v7);

    if (v8)
    {
      sub_1C2C6E3A4(v7, v4);
      sub_1C2C73644(v7, &qword_1EC062998);
      v2 = v5;
      v3 = v6;
      __swift_project_boxed_opaque_existential_1(v4, v5);
      (*(v3 + 8))(v2, v3);
      return __swift_destroy_boxed_opaque_existential_1(v4);
    }

    else
    {
      return sub_1C2C73644(v7, &qword_1EC062998);
    }
  }

  return result;
}

uint64_t AudioCallKeypadControlViewModel.presentationDelegate.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_1C2DC9568(&qword_1EC062990, type metadata accessor for AudioCallKeypadControlViewModel);
  sub_1C2E71A64();

  swift_beginAccess();
  return sub_1C2DC854C(v1 + 24, a1);
}

uint64_t sub_1C2DC8350@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2DC9568(&qword_1EC062990, type metadata accessor for AudioCallKeypadControlViewModel);
  sub_1C2E71A64();

  swift_beginAccess();
  return sub_1C2DC854C(v3 + 24, a2);
}

uint64_t sub_1C2DC8410(uint64_t a1)
{
  sub_1C2DC854C(a1, v2);
  swift_getKeyPath();
  sub_1C2DC9568(&qword_1EC062990, type metadata accessor for AudioCallKeypadControlViewModel);
  sub_1C2E71A54();

  return sub_1C2C73644(v2, &qword_1EC062998);
}

uint64_t type metadata accessor for AudioCallKeypadControlViewModel()
{
  result = qword_1EC0629A8;
  if (!qword_1EC0629A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C2DC854C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC062998);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t AudioCallKeypadControlViewModel.presentationDelegate.setter(uint64_t a1)
{
  swift_getKeyPath();
  sub_1C2DC9568(&qword_1EC062990, type metadata accessor for AudioCallKeypadControlViewModel);
  sub_1C2E71A54();

  return sub_1C2C73644(a1, &qword_1EC062998);
}

uint64_t sub_1C2DC869C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1C2DC9718(a2, a1 + 24);
  return swift_endAccess();
}

void (*AudioCallKeypadControlViewModel.presentationDelegate.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC16CommunicationsUI31AudioCallKeypadControlViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_1C2DC9568(&qword_1EC062990, type metadata accessor for AudioCallKeypadControlViewModel);
  sub_1C2E71A64();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C2E71A84();

  swift_beginAccess();
  return sub_1C2DC885C;
}

void sub_1C2DC885C(void **a1)
{
  v1 = *a1;
  swift_endAccess();
  *v1 = v1[3];
  swift_getKeyPath();
  sub_1C2E71A74();

  free(v1);
}

uint64_t sub_1C2DC8900()
{
  swift_getKeyPath();
  sub_1C2DC9568(&qword_1EC062990, type metadata accessor for AudioCallKeypadControlViewModel);
  sub_1C2E71A64();

  swift_beginAccess();
}

uint64_t sub_1C2DC89B8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2DC9568(&qword_1EC062990, type metadata accessor for AudioCallKeypadControlViewModel);
  sub_1C2E71A64();

  swift_beginAccess();
  *a2 = *(v3 + 104);
}

uint64_t sub_1C2DC8A78(uint64_t a1)
{
  swift_beginAccess();

  v4 = sub_1C2CD61E4(v3, a1);

  if (v4)
  {
    *(v1 + 104) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C2DC9568(&qword_1EC062990, type metadata accessor for AudioCallKeypadControlViewModel);
    sub_1C2E71A54();
  }
}

uint64_t AudioCallKeypadControlViewModel.__allocating_init(service:)(void *a1)
{
  v2 = swift_allocObject();
  AudioCallKeypadControlViewModel.init(service:)(a1);
  return v2;
}

void *AudioCallKeypadControlViewModel.init(service:)(void *a1)
{
  v2 = v1;
  v29 = a1;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05F468);
  v34 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v31 = &v29 - v4;
  v5 = sub_1C2E757E4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05D810);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v29 - v10;
  *(v1 + 56) = 0;
  *(v1 + 40) = 0u;
  v12 = MEMORY[0x1E69E7CD0];
  *(v1 + 24) = 0u;
  *(v1 + 104) = v12;
  v33 = v1 + 104;
  sub_1C2E71A94();
  sub_1C2C6E3A4(a1, v1 + 64);
  v37 = 0xD000000000000014;
  v38 = 0x80000001C2E98B30;
  v39 = 1;
  v30 = type metadata accessor for AudioCallKeypadControlViewModel;
  sub_1C2DC9568(&qword_1EC0629A0, type metadata accessor for AudioCallKeypadControlViewModel);
  v13 = sub_1C2DFDC24(0, &v37);
  sub_1C2C77608(v37, v38, v39);
  v14 = _s7SwiftUI5ColorV014CommunicationsB0E029defaultUnselectedControlImageC0ACvgZ_0();
  v15 = sub_1C2E74534();
  (*(*(v15 - 8) + 56))(v11, 1, 1, v15);
  v16 = sub_1C2E745C4();
  sub_1C2C73644(v11, &qword_1EC05D810);
  (*(v6 + 104))(v8, *MEMORY[0x1E6981DF0], v5);
  type metadata accessor for ControlTextConfiguration();
  v17 = swift_allocObject();
  v18 = v17 + OBJC_IVAR____TtC16CommunicationsUI24ControlTextConfiguration__lineLimit;
  *v18 = 0;
  v18[8] = 1;
  sub_1C2E71A94();
  v17[2] = 0x64617079654BLL;
  v17[3] = 0xE600000000000000;
  v17[4] = v14;
  v17[5] = v16;
  (*(v6 + 32))(v17 + OBJC_IVAR____TtC16CommunicationsUI24ControlTextConfiguration__blendMode, v8, v5);
  *(v17 + OBJC_IVAR____TtC16CommunicationsUI24ControlTextConfiguration__wrapText) = 0;
  *v18 = 0;
  v18[8] = 1;
  *(v17 + OBJC_IVAR____TtC16CommunicationsUI24ControlTextConfiguration__alignment) = 0;
  type metadata accessor for StackedControlButtonConfiguration();
  v19 = swift_allocObject();
  v19[3] = 0;
  sub_1C2E71A94();
  v19[2] = v13;
  swift_getKeyPath();
  v35 = v19;
  v36 = v17;
  v37 = v19;
  sub_1C2DC9568(&qword_1EC05BC60, type metadata accessor for StackedControlButtonConfiguration);

  sub_1C2E71A54();

  v2[2] = v19;
  v20 = v29;
  v22 = v29[3];
  v21 = v29[4];
  __swift_project_boxed_opaque_existential_1(v29, v22);
  v37 = (*(*(v21 + 8) + 8))(v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05F478);
  sub_1C2C94F38(&qword_1EC05F480, &qword_1EC05F478);
  v23 = v31;
  sub_1C2E72F04();

  swift_allocObject();
  swift_weakInit();
  sub_1C2C94F38(&qword_1EC05F488, &qword_1EC05F468);
  v24 = v32;
  sub_1C2E72F14();

  (*(v34 + 8))(v23, v24);
  swift_getKeyPath();
  v37 = v2;
  sub_1C2DC9568(&qword_1EC062990, v30);
  sub_1C2E71A64();

  v37 = v2;
  swift_getKeyPath();
  sub_1C2E71A84();

  swift_beginAccess();
  sub_1C2E72D94();
  swift_endAccess();

  v37 = v2;
  swift_getKeyPath();
  sub_1C2E71A74();

  v25 = v2[11];
  v26 = v2[12];
  __swift_project_boxed_opaque_existential_1(v2 + 8, v25);
  if (DisableableControlService.controlEnabled.getter(v25, *(v26 + 8)))
  {
    v27 = 0;
  }

  else
  {
    v27 = 2;
  }

  sub_1C2CFC19C(v27);
  __swift_destroy_boxed_opaque_existential_1(v20);
  return v2;
}

void *sub_1C2DC9320()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result[11];
    v2 = result[12];
    __swift_project_boxed_opaque_existential_1(result + 8, v1);
    if (DisableableControlService.controlEnabled.getter(v1, *(v2 + 8)))
    {
      v3 = 0;
    }

    else
    {
      v3 = 2;
    }

    sub_1C2CFC19C(v3);
  }

  return result;
}

uint64_t AudioCallKeypadControlViewModel.deinit()
{

  sub_1C2C73644(v0 + 24, &qword_1EC062998);
  __swift_destroy_boxed_opaque_existential_1(v0 + 64);

  v1 = OBJC_IVAR____TtC16CommunicationsUI31AudioCallKeypadControlViewModel___observationRegistrar;
  v2 = sub_1C2E71AA4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t AudioCallKeypadControlViewModel.__deallocating_deinit()
{

  sub_1C2C73644(v0 + 24, &qword_1EC062998);
  __swift_destroy_boxed_opaque_existential_1(v0 + 64);

  v1 = OBJC_IVAR____TtC16CommunicationsUI31AudioCallKeypadControlViewModel___observationRegistrar;
  v2 = sub_1C2E71AA4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t (*sub_1C2DC950C())()
{
  swift_allocObject();
  swift_weakInit();
  return sub_1C2DC97A0;
}

uint64_t sub_1C2DC9568(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C2DC95B8(uint64_t a1)
{
  result = sub_1C2DC9568(&qword_1EC062990, type metadata accessor for AudioCallKeypadControlViewModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C2DC962C()
{
  result = sub_1C2E71AA4();
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

uint64_t sub_1C2DC9718(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC062998);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

id EEWaitingStateSubtitleLabel.init(titleString:)()
{
  v6.receiver = v0;
  v6.super_class = type metadata accessor for EEWaitingStateSubtitleLabel();
  v1 = objc_msgSendSuper2(&v6, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  v2 = sub_1C2E75C24();

  [v1 setText_];

  v3 = [objc_opt_self() preferredFontForTextStyle_];
  [v1 setFont_];

  [v1 setTextAlignment_];
  [v1 setNumberOfLines_];
  v4 = [objc_opt_self() secondaryLabelColor];
  [v1 setTextColor_];

  return v1;
}

id EEWaitingStateTitleLabel.init(titleString:)()
{
  v10.receiver = v0;
  v10.super_class = type metadata accessor for EEWaitingStateTitleLabel();
  v1 = objc_msgSendSuper2(&v10, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  v2 = sub_1C2E75C24();

  [v1 setText_];

  v3 = objc_opt_self();
  v4 = [v3 preferredFontForTextStyle_];
  v5 = [v4 fontDescriptor];
  v6 = [v5 fontDescriptorWithSymbolicTraits_];

  if (v6)
  {
    v7 = [v3 fontWithDescriptor:v6 size:0.0];

    v4 = v7;
  }

  [v1 setFont_];

  [v1 setTextAlignment_];
  [v1 setNumberOfLines_];
  v8 = [objc_opt_self() labelColor];
  [v1 setTextColor_];

  return v1;
}

id EELiveLabel.init(frame:)(double a1, double a2, double a3, double a4)
{
  v16.receiver = v4;
  v16.super_class = type metadata accessor for EELiveLabel();
  v9 = objc_msgSendSuper2(&v16, sel_initWithFrame_, a1, a2, a3, a4);
  [v9 setTranslatesAutoresizingMaskIntoConstraints_];
  v10 = [objc_opt_self() preferredFontForTextStyle_];
  [v9 setFont_];

  v11 = objc_opt_self();
  v12 = [v11 blackColor];
  [v9 setTextColor_];

  v13 = [v11 systemGreenColor];
  [v9 setBackgroundColor_];

  [v9 setTextAlignment_];
  [v9 _setCornerRadius_];
  v14 = [v9 layer];

  [v14 setMasksToBounds_];
  return v9;
}

id sub_1C2DC9F50(double a1)
{
  v2 = UIEdgeInsetsInsetRect(a1);
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10.receiver = v1;
  v10.super_class = type metadata accessor for EELiveLabel();
  return objc_msgSendSuper2(&v10, sel_drawTextInRect_, v2, v4, v6, v8);
}

double sub_1C2DCA0B0()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for EELiveLabel();
  objc_msgSendSuper2(&v3, sel_intrinsicContentSize);
  return v1 + 10.0;
}

id _s16CommunicationsUI11EELiveLabelC5frameACSo6CGRectV_tcfC_0(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id EECallNumberLabel.init(frame:)(double a1, double a2, double a3, double a4)
{
  v17.receiver = v4;
  v17.super_class = type metadata accessor for EECallNumberLabel();
  v9 = objc_msgSendSuper2(&v17, sel_initWithFrame_, a1, a2, a3, a4);
  [v9 setTranslatesAutoresizingMaskIntoConstraints_];
  v10 = objc_opt_self();
  v11 = [v10 preferredFontForTextStyle_];
  v12 = [v11 fontDescriptor];
  v13 = [v12 fontDescriptorWithSymbolicTraits_];

  if (v13)
  {
    v14 = [v10 fontWithDescriptor:v13 size:0.0];

    v11 = v14;
  }

  [v9 setFont_];

  v15 = [objc_opt_self() labelColor];
  [v9 setTextColor_];

  [v9 setTextAlignment_];
  return v9;
}

id sub_1C2DCA430(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t (*AudioCallEndControlViewModel.buttonAction.getter())()
{
  swift_allocObject();
  swift_weakInit();
  return sub_1C2DACAA4;
}

uint64_t sub_1C2DCA52C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1C2C6E3A4(result + 24, v3);

    v1 = v4;
    v2 = v5;
    __swift_project_boxed_opaque_existential_1(v3, v4);
    (*(v2 + 8))(v1, v2);
    return __swift_destroy_boxed_opaque_existential_1(v3);
  }

  return result;
}

uint64_t AudioCallEndControlViewModel.__allocating_init(service:)(uint64_t a1)
{
  v2 = swift_allocObject();
  AudioCallEndControlViewModel.init(service:)(a1);
  return v2;
}

uint64_t AudioCallEndControlViewModel.init(service:)(uint64_t a1)
{
  v2 = v1;
  v25 = a1;
  v24 = sub_1C2E757E4();
  v4 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v23 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05D810);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v22 - v7;
  sub_1C2E71A94();
  sub_1C2C6E3A4(a1, v1 + 24);
  v29 = xmmword_1C2E8AB00;
  v30 = 1;
  sub_1C2DCAD24(&qword_1EC0629C0, type metadata accessor for AudioCallEndControlViewModel);
  v9 = sub_1C2DFDC24(0, &v29);
  sub_1C2C77608(v29, *(&v29 + 1), v30);
  v10 = sub_1C2E74EF4();
  swift_getKeyPath();
  *&v29 = v9;
  sub_1C2DCAD24(&qword_1EC05BDA0, type metadata accessor for ControlButtonConfiguration);

  sub_1C2E71A64();

  *&v29 = v9;
  swift_getKeyPath();
  sub_1C2E71A84();

  swift_beginAccess();
  v11 = *(v9 + 24);
  *(v9 + 24) = v10;
  v12 = *(v9 + 32);
  *(v9 + 32) = 1;
  sub_1C2CC2678(v11, v12);
  v28 = v9;
  swift_getKeyPath();
  sub_1C2E71A74();

  v13 = _s7SwiftUI5ColorV014CommunicationsB0E029defaultUnselectedControlImageC0ACvgZ_0();
  v14 = sub_1C2E74534();
  (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
  v15 = sub_1C2E745C4();
  sub_1C2CB410C(v8);
  v17 = v23;
  v16 = v24;
  (*(v4 + 104))(v23, *MEMORY[0x1E6981DF0], v24);
  type metadata accessor for ControlTextConfiguration();
  v18 = swift_allocObject();
  v19 = v18 + OBJC_IVAR____TtC16CommunicationsUI24ControlTextConfiguration__lineLimit;
  *v19 = 0;
  v19[8] = 1;
  sub_1C2E71A94();
  v18[2] = 6581829;
  v18[3] = 0xE300000000000000;
  v18[4] = v13;
  v18[5] = v15;
  (*(v4 + 32))(v18 + OBJC_IVAR____TtC16CommunicationsUI24ControlTextConfiguration__blendMode, v17, v16);
  *(v18 + OBJC_IVAR____TtC16CommunicationsUI24ControlTextConfiguration__wrapText) = 0;
  *v19 = 0;
  v19[8] = 1;
  *(v18 + OBJC_IVAR____TtC16CommunicationsUI24ControlTextConfiguration__alignment) = 0;
  type metadata accessor for StackedControlButtonConfiguration();
  v20 = swift_allocObject();
  *(v20 + 24) = 0;
  sub_1C2E71A94();
  *(v20 + 16) = v9;
  swift_getKeyPath();
  v26 = v20;
  v27 = v18;
  v28 = v20;
  sub_1C2DCAD24(&qword_1EC05BC60, type metadata accessor for StackedControlButtonConfiguration);

  sub_1C2E71A54();

  __swift_destroy_boxed_opaque_existential_1(v25);
  *(v2 + 16) = v20;
  return v2;
}

uint64_t AudioCallEndControlViewModel.deinit()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 24);
  v1 = OBJC_IVAR____TtC16CommunicationsUI28AudioCallEndControlViewModel___observationRegistrar;
  v2 = sub_1C2E71AA4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t AudioCallEndControlViewModel.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 24);
  v1 = OBJC_IVAR____TtC16CommunicationsUI28AudioCallEndControlViewModel___observationRegistrar;
  v2 = sub_1C2E71AA4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t (*sub_1C2DCAC24())()
{
  swift_allocObject();
  swift_weakInit();
  return sub_1C2DCAE48;
}

uint64_t type metadata accessor for AudioCallEndControlViewModel()
{
  result = qword_1EC0629D0;
  if (!qword_1EC0629D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C2DCACCC(uint64_t a1)
{
  result = sub_1C2DCAD24(&qword_1EC0629C8, type metadata accessor for AudioCallEndControlViewModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C2DCAD24(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C2DCAD74()
{
  result = sub_1C2E71AA4();
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

uint64_t ContactAvatarTileView.Caption.init(title:color:blendMode:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v23 = a1;
  v24 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05D810);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v23 - v9;
  v11 = sub_1C2E746A4();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(type metadata accessor for ContactAvatarTileView.Caption(0) + 48);
  v16 = sub_1C2E757E4();
  v17 = *(v16 - 8);
  (*(v17 + 16))(a5 + v15, a4, v16);
  (*(v12 + 104))(v14, *MEMORY[0x1E6980EF8], v11);
  v18 = sub_1C2E74534();
  (*(*(v18 - 8) + 56))(v10, 1, 1, v18);
  sub_1C2E745A4();
  v19 = sub_1C2E745D4();
  sub_1C2C73644(v10, &qword_1EC05D810);
  (*(v12 + 8))(v14, v11);
  (*(v17 + 8))(a4, v16);
  v20 = v24;
  *a5 = v23;
  *(a5 + 8) = v20;
  *(a5 + 16) = 0;
  *(a5 + 24) = 0;
  *(a5 + 32) = a3;
  *(a5 + 40) = 0;
  *(a5 + 48) = 0;
  v21 = MEMORY[0x1E69E7CC0];
  *(a5 + 56) = 0;
  *(a5 + 64) = v19;
  *(a5 + 72) = v21;
  *(a5 + 80) = a3;
  *(a5 + 88) = 0;
  *(a5 + 96) = 0;
  *(a5 + 104) = v19;
}

uint64_t ContactAvatarTileView.Caption.Accessory.hash(into:)()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  if (v3 >> 6)
  {
    if (v3 >> 6 == 1)
    {
      MEMORY[0x1C6927290](1);

      return sub_1C2E75CC4();
    }

    else
    {
      return MEMORY[0x1C6927290](2);
    }
  }

  else
  {
    MEMORY[0x1C6927290](0);
    if (v3)
    {
      if (v3 == 1)
      {
        sub_1C2C70B1C(v2, v1, 1u);
      }

      else
      {
        sub_1C2C70B1C(v2, v1, 2u);
        v5 = [v2 description];
        sub_1C2E75C64();

        sub_1C2C775D8(v2, v1, 2u);
      }
    }

    else
    {
      sub_1C2C70B1C(v2, v1, 0);
    }

    sub_1C2E75CC4();
  }
}

uint64_t ContactAvatarTileView.Caption.Accessory.hashValue.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_1C2E76854();
  if (!(v3 >> 6))
  {
    MEMORY[0x1C6927290](0);
    if (v3)
    {
      if (v3 != 1)
      {
        sub_1C2C70B1C(v2, v1, 2u);
        v5 = [v2 description];
        sub_1C2E75C64();

        sub_1C2C775D8(v2, v1, 2u);
        goto LABEL_11;
      }

      v4 = 1;
    }

    else
    {
      v4 = 0;
    }

    sub_1C2C70B1C(v2, v1, v4);
LABEL_11:
    sub_1C2E75CC4();

    return sub_1C2E76894();
  }

  if (v3 >> 6 == 1)
  {
    MEMORY[0x1C6927290](1);
    sub_1C2E75CC4();
  }

  else
  {
    MEMORY[0x1C6927290](2);
  }

  return sub_1C2E76894();
}

uint64_t ContactAvatarTileView.Caption.ForegroundStyle.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 16);
  if (v2 >> 6)
  {
    v3 = *(v0 + 8);
    if (v2 >> 6 == 1)
    {
      MEMORY[0x1C6927290](1);
      if ((LOBYTE(v1) - 4) >= 5u)
      {
        MEMORY[0x1C6927290](5);
        v4 = LOBYTE(v1);
      }

      else
      {
        v4 = (LOBYTE(v1) - 4);
      }

      MEMORY[0x1C6927290](v4);
      if ((*&v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v6 = v3;
      }

      else
      {
        v6 = 0.0;
      }
    }

    else
    {
      MEMORY[0x1C6927290](2);
      if (v2)
      {
        return sub_1C2E76874();
      }

      sub_1C2E76874();
      if (v1 == 0.0)
      {
        v7 = 0.0;
      }

      else
      {
        v7 = v1;
      }

      MEMORY[0x1C69272B0](*&v7);
      if (v3 == 0.0)
      {
        v8 = 0.0;
      }

      else
      {
        v8 = v3;
      }

      v6 = v8;
    }

    return MEMORY[0x1C69272B0](*&v6);
  }

  else
  {
    MEMORY[0x1C6927290](0);

    return sub_1C2E74F24();
  }
}

uint64_t ContactAvatarTileView.Caption.ForegroundStyle.hashValue.getter()
{
  sub_1C2E76854();
  ContactAvatarTileView.Caption.ForegroundStyle.hash(into:)();
  return sub_1C2E76894();
}

uint64_t sub_1C2DCB510(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *))
{
  v5 = *(v3 + 16);
  v8 = *v3;
  v9 = v5;
  sub_1C2E76854();
  a3(v7);
  return sub_1C2E76894();
}

uint64_t sub_1C2DCB588(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  v6 = *(v4 + 16);
  v9 = *v4;
  v10 = v6;
  sub_1C2E76854();
  a4(v8);
  return sub_1C2E76894();
}

uint64_t ContactAvatarTileView.Caption.text.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ContactAvatarTileView.Caption.subText.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ContactAvatarTileView.Caption.subText.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t ContactAvatarTileView.Caption.init(text:color:font:accessory:accessoryColor:accessoryFont:blendMode:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v9 = a8;
  v10 = a7;
  v16 = *a5;
  v15 = *(a5 + 8);
  v17 = *(a5 + 16);
  v29[0] = *a5;
  v29[1] = v15;
  v30 = v17;
  if (v17 == 255)
  {
    v18 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    sub_1C2C70B1C(v16, v15, v17);
    v18 = MEMORY[0x1E69E7CC0];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v18 = sub_1C2C70B44(0, *(v18 + 2) + 1, 1, v18);
    }

    v20 = *(v18 + 2);
    v19 = *(v18 + 3);
    if (v20 >= v19 >> 1)
    {
      v18 = sub_1C2C70B44((v19 > 1), v20 + 1, 1, v18);
    }

    *(v18 + 2) = v20 + 1;
    v21 = &v18[24 * v20];
    *(v21 + 4) = v16;
    *(v21 + 5) = v15;
    v21[48] = v17;
    v10 = a7;
    v9 = a8;
  }

  sub_1C2C73644(v29, &qword_1EC05F148);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = 0;
  *(a9 + 24) = 0;
  *(a9 + 32) = a3;
  *(a9 + 40) = 0;
  *(a9 + 48) = 0;
  *(a9 + 56) = 0;
  *(a9 + 64) = a4;
  *(a9 + 72) = v18;
  if (!a6)
  {

    a6 = a3;
  }

  *(a9 + 80) = a6;
  *(a9 + 88) = 0;
  *(a9 + 96) = 0;
  if (v10)
  {
    a4 = v10;
  }

  else
  {
  }

  *(a9 + 104) = a4;
  v22 = *(type metadata accessor for ContactAvatarTileView.Caption(0) + 48);
  v23 = sub_1C2E757E4();
  return (*(*(v23 - 8) + 32))(a9 + v22, v9, v23);
}

uint64_t ContactAvatarTileView.Caption.init(text:color:font:accessories:accessoryColor:accessoryFont:blendMode:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v11 = a4;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = 0;
  *(a9 + 24) = 0;
  *(a9 + 32) = a3;
  *(a9 + 40) = 0;
  *(a9 + 48) = 0;
  *(a9 + 56) = 0;
  *(a9 + 64) = a4;
  *(a9 + 72) = a5;
  if (!a6)
  {

    a6 = a3;
  }

  *(a9 + 80) = a6;
  *(a9 + 88) = 0;
  *(a9 + 96) = 0;
  if (a7)
  {
    v11 = a7;
  }

  else
  {
  }

  *(a9 + 104) = v11;
  v14 = *(type metadata accessor for ContactAvatarTileView.Caption(0) + 48);
  v15 = sub_1C2E757E4();
  v16 = *(*(v15 - 8) + 32);

  return v16(a9 + v14, a8, v15);
}

uint64_t ContactAvatarTileView.Caption.init(text:subText:foregroundStyle:shadow:font:accessories:accessoryForegroundStyle:accessoryFont:blendMode:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, __int128 *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, __int128 *a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, uint64_t a11, uint64_t a12)
{
  v12 = a6;
  v14 = *(a5 + 16);
  v15 = *a5;
  v16 = *a8;
  v17 = *(a8 + 16);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = v15;
  *(a9 + 48) = v14;
  *(a9 + 56) = a10;
  *(a9 + 64) = a6;
  *(a9 + 72) = a7;
  if (v17 >= 0xFE)
  {
    v22 = v15;
    sub_1C2DD30A8(v15, *(&v15 + 1), v14);
    LOBYTE(v17) = v14;
    v16 = v22;
  }

  *(a9 + 80) = v16;
  *(a9 + 96) = v17;
  if (a11)
  {
    v12 = a11;
  }

  else
  {
  }

  *(a9 + 104) = v12;
  v18 = *(type metadata accessor for ContactAvatarTileView.Caption(0) + 48);
  v19 = sub_1C2E757E4();
  v20 = *(*(v19 - 8) + 32);

  return v20(a9 + v18, a12, v19);
}

uint64_t ContactAvatarTileView.Caption.init(title:foregroundStyle:showBlockedIndicator:blendMode:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v29 = a2;
  v30 = a5;
  v28 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05D810);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v27[-v10];
  v12 = sub_1C2E746A4();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v27[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = *a3;
  v18 = *(a3 + 8);
  v19 = *(a3 + 16);
  (*(v13 + 104))(v16, *MEMORY[0x1E6980EF8], v12, v14);
  v20 = sub_1C2E74534();
  (*(*(v20 - 8) + 56))(v11, 1, 1, v20);
  sub_1C2E745A4();
  v21 = sub_1C2E745D4();
  sub_1C2C73644(v11, &qword_1EC05D810);
  (*(v13 + 8))(v16, v12);
  v22 = MEMORY[0x1E69E7CC0];
  if (v28)
  {
    v22 = &unk_1F42978A0;
  }

  v23 = v29;
  *a6 = a1;
  *(a6 + 8) = v23;
  *(a6 + 16) = 0;
  *(a6 + 24) = 0;
  *(a6 + 32) = v17;
  *(a6 + 40) = v18;
  *(a6 + 48) = v19;
  *(a6 + 56) = 0;
  *(a6 + 64) = v21;
  *(a6 + 72) = v22;
  *(a6 + 80) = v17;
  *(a6 + 88) = v18;
  *(a6 + 96) = v19;
  *(a6 + 104) = v21;
  v24 = *(type metadata accessor for ContactAvatarTileView.Caption(0) + 48);
  v25 = sub_1C2E757E4();
  (*(*(v25 - 8) + 32))(a6 + v24, v30, v25);
  sub_1C2DD30A8(v17, v18, v19);
}

uint64_t ContactAvatarTileView.Caption.init(title:subTitle:foregroundStyle:showBlockedIndicator:blendMode:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v34 = a4;
  v35 = a7;
  v32 = a6;
  v33 = a3;
  v31 = a2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05D810);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v30 - v12;
  v14 = sub_1C2E746A4();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a5;
  v20 = *(a5 + 8);
  v21 = *(a5 + 16);
  (*(v15 + 104))(v18, *MEMORY[0x1E6980EF8], v14, v16);
  v22 = sub_1C2E74534();
  (*(*(v22 - 8) + 56))(v13, 1, 1, v22);
  sub_1C2E745A4();
  v23 = sub_1C2E745D4();
  sub_1C2C73644(v13, &qword_1EC05D810);
  (*(v15 + 8))(v18, v14);
  v24 = MEMORY[0x1E69E7CC0];
  if (v32)
  {
    v24 = &unk_1F42978D8;
  }

  v25 = v31;
  *a8 = a1;
  *(a8 + 8) = v25;
  v26 = v34;
  *(a8 + 16) = v33;
  *(a8 + 24) = v26;
  *(a8 + 32) = v19;
  *(a8 + 40) = v20;
  *(a8 + 48) = v21;
  *(a8 + 56) = 0;
  *(a8 + 64) = v23;
  *(a8 + 72) = v24;
  *(a8 + 80) = v19;
  *(a8 + 88) = v20;
  *(a8 + 96) = v21;
  *(a8 + 104) = v23;
  v27 = *(type metadata accessor for ContactAvatarTileView.Caption(0) + 48);
  v28 = sub_1C2E757E4();
  (*(*(v28 - 8) + 32))(a8 + v27, v35, v28);
  sub_1C2DD30A8(v19, v20, v21);
}

uint64_t ContactAvatarTileView.Caption.init(title:subTitle:foregroundStyle:shadow:showBlockedIndicator:accessory:blendMode:accessoryForegroundColor:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, uint64_t a11)
{
  v43 = a3;
  v44 = a4;
  v41 = a1;
  v42 = a2;
  v45 = a11;
  v46 = a8;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05D810);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v37[-v17];
  v19 = sub_1C2E746A4();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v37[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = *a5;
  v39 = a5[1];
  v40 = v24;
  v38 = *(a5 + 16);
  v26 = *a7;
  v25 = *(a7 + 8);
  v27 = *(a7 + 16);
  (*(v20 + 104))(v23, *MEMORY[0x1E6980EF8], v19, v21);
  v28 = sub_1C2E74534();
  (*(*(v28 - 8) + 56))(v18, 1, 1, v28);
  sub_1C2E745A4();
  v29 = sub_1C2E745D4();
  sub_1C2C73644(v18, &qword_1EC05D810);
  (*(v20 + 8))(v23, v19);
  if (a6)
  {
    sub_1C2C9E060(v26, v25, v27);
    v30 = &unk_1F4297910;
  }

  else if (v27 == 255)
  {
    v30 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0629E0);
    v30 = swift_allocObject();
    v30[1] = xmmword_1C2E7A930;
    *(v30 + 4) = v26;
    *(v30 + 5) = v25;
    *(v30 + 48) = v27;
  }

  v31 = v42;
  *a9 = v41;
  *(a9 + 8) = v31;
  v32 = v44;
  *(a9 + 16) = v43;
  *(a9 + 24) = v32;
  v33 = v39;
  *(a9 + 32) = v40;
  *(a9 + 40) = v33;
  *(a9 + 48) = v38;
  *(a9 + 56) = a10;
  *(a9 + 64) = v29;
  *(a9 + 72) = v30;
  *(a9 + 80) = v45;
  *(a9 + 88) = 0;
  *(a9 + 96) = 0;
  *(a9 + 104) = v29;
  v34 = *(type metadata accessor for ContactAvatarTileView.Caption(0) + 48);
  v35 = sub_1C2E757E4();
  (*(*(v35 - 8) + 32))(a9 + v34, v46, v35);
}

uint64_t ContactAvatarTileView.Caption.init(title:subTitle:color:blendMode:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v27 = a4;
  v28 = a6;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05D810);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v27 - v13;
  v15 = sub_1C2E746A4();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 104))(v19, *MEMORY[0x1E6980EF8], v15, v17);
  v20 = sub_1C2E74534();
  (*(*(v20 - 8) + 56))(v14, 1, 1, v20);
  sub_1C2E745A4();
  v21 = sub_1C2E745D4();
  sub_1C2C73644(v14, &qword_1EC05D810);
  (*(v16 + 8))(v19, v15);
  *a7 = a1;
  *(a7 + 8) = a2;
  v22 = v27;
  *(a7 + 16) = a3;
  *(a7 + 24) = v22;
  *(a7 + 32) = a5;
  *(a7 + 40) = 0;
  *(a7 + 48) = 0;
  v23 = MEMORY[0x1E69E7CC0];
  *(a7 + 56) = 0;
  *(a7 + 64) = v21;
  *(a7 + 72) = v23;
  *(a7 + 80) = a5;
  *(a7 + 88) = 0;
  *(a7 + 96) = 0;
  *(a7 + 104) = v21;
  v24 = *(type metadata accessor for ContactAvatarTileView.Caption(0) + 48);
  v25 = sub_1C2E757E4();
  (*(*(v25 - 8) + 32))(a7 + v24, v28, v25);
}

uint64_t ContactAvatarTileView.Caption.init(title:material:blendMode:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v24 = a1;
  v25 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05D810);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = sub_1C2E746A4();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a3;
  v16 = *(type metadata accessor for ContactAvatarTileView.Caption(0) + 48);
  v17 = sub_1C2E757E4();
  v18 = *(v17 - 8);
  (*(v18 + 16))(a5 + v16, a4, v17);
  (*(v12 + 104))(v14, *MEMORY[0x1E6980EF8], v11);
  v19 = sub_1C2E74534();
  (*(*(v19 - 8) + 56))(v10, 1, 1, v19);
  sub_1C2E745A4();
  v20 = sub_1C2E745D4();
  sub_1C2C73644(v10, &qword_1EC05D810);
  (*(v12 + 8))(v14, v11);
  (*(v18 + 8))(a4, v17);
  v21 = v25;
  *a5 = v24;
  *(a5 + 8) = v21;
  *(a5 + 16) = 0;
  *(a5 + 24) = 0;
  *(a5 + 32) = v15;
  *(a5 + 40) = 0x3FF0000000000000;
  *(a5 + 48) = 64;
  v22 = MEMORY[0x1E69E7CC0];
  *(a5 + 56) = 0;
  *(a5 + 64) = v20;
  *(a5 + 72) = v22;
  *(a5 + 80) = v15;
  *(a5 + 88) = 0x3FF0000000000000;
  *(a5 + 96) = 64;
  *(a5 + 104) = v20;
}

uint64_t ContactAvatarTileView.Caption.init(subtitle:font:accessories:accessoryColor:blendMode:opacity:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v32 = a7;
  v33 = a6;
  v27 = a5;
  v28 = a1;
  v29 = a2;
  v30 = a4;
  v31 = type metadata accessor for ContactAvatarTileView.Caption(0);
  MEMORY[0x1EEE9AC00](v31);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05D810);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v26 - v11;
  v26 = sub_1C2E746A4();
  v13 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1C2E757E4();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C2E74FA4();
  v20 = sub_1C2E74F74();
  v21 = v33;

  (*(v17 + 16))(v19, v21, v16);
  if (a3)
  {
    (*(v17 + 8))(v21, v16);
    v22 = v27;
  }

  else
  {
    (*(v13 + 104))(v15, *MEMORY[0x1E6980EF0], v26);
    v23 = sub_1C2E74534();
    (*(*(v23 - 8) + 56))(v12, 1, 1, v23);
    v22 = v27;

    sub_1C2E74594();
    a3 = sub_1C2E745D4();

    (*(v17 + 8))(v33, v16);
    sub_1C2C73644(v12, &qword_1EC05D810);
    (*(v13 + 8))(v15, v26);
  }

  v24 = v29;
  *v9 = v28;
  *(v9 + 1) = v24;
  *(v9 + 2) = 0;
  *(v9 + 3) = 0;
  *(v9 + 4) = v20;
  *(v9 + 5) = 0;
  v9[48] = 0;
  *(v9 + 7) = 0;
  *(v9 + 8) = a3;
  *(v9 + 9) = v30;
  if (!v22)
  {

    v22 = v20;
  }

  *(v9 + 10) = v22;
  *(v9 + 11) = 0;
  v9[96] = 0;
  *(v9 + 13) = a3;
  (*(v17 + 32))(&v9[*(v31 + 48)], v19, v16);
  sub_1C2DD3124(v9, v32, type metadata accessor for ContactAvatarTileView.Caption);
}

uint64_t ContactAvatarTileView.Caption.init(subtitle:accessory:foregroundStyle:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v38 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05D810);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v32[-v9];
  v37 = sub_1C2E746A4();
  v11 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v13 = &v32[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = *a3;
  v15 = *(a3 + 8);
  v16 = *(a3 + 16);
  v17 = *a4;
  v18 = *(a4 + 8);
  LODWORD(a4) = *(a4 + 16);
  v39[0] = v14;
  v39[1] = v15;
  v40 = v16;
  v35 = v18;
  v36 = v17;
  sub_1C2DD30A8(v17, v18, a4);
  if (v16 == 255)
  {
    v20 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v33 = a4;
    v34 = a2;
    sub_1C2C70B1C(v14, v15, v16);
    v20 = MEMORY[0x1E69E7CC0];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v20 = sub_1C2C70B44(0, *(v20 + 2) + 1, 1, v20);
    }

    a4 = *(v20 + 2);
    v21 = *(v20 + 3);
    if (a4 >= v21 >> 1)
    {
      v20 = sub_1C2C70B44((v21 > 1), a4 + 1, 1, v20);
    }

    *(v20 + 2) = a4 + 1;
    v22 = &v20[24 * a4];
    *(v22 + 4) = v14;
    *(v22 + 5) = v15;
    v22[48] = v16;
    a2 = v34;
    LOBYTE(a4) = v33;
  }

  sub_1C2C73644(v39, &qword_1EC05F148);
  v23 = *(type metadata accessor for ContactAvatarTileView.Caption(0) + 48);
  v24 = *MEMORY[0x1E6981DF0];
  v25 = sub_1C2E757E4();
  (*(*(v25 - 8) + 104))(a5 + v23, v24, v25);
  v26 = v37;
  (*(v11 + 104))(v13, *MEMORY[0x1E6980EF0], v37);
  v27 = sub_1C2E74534();
  (*(*(v27 - 8) + 56))(v10, 1, 1, v27);
  sub_1C2E74594();
  v28 = sub_1C2E745D4();
  sub_1C2C73644(v10, &qword_1EC05D810);
  (*(v11 + 8))(v13, v26);
  *a5 = v38;
  *(a5 + 8) = a2;
  *(a5 + 16) = 0;
  *(a5 + 24) = 0;
  v30 = v35;
  v29 = v36;
  *(a5 + 32) = v36;
  *(a5 + 40) = v30;
  *(a5 + 48) = a4;
  *(a5 + 56) = 0;
  *(a5 + 64) = v28;
  *(a5 + 72) = v20;
  *(a5 + 80) = v29;
  *(a5 + 88) = v30;
  *(a5 + 96) = a4;
  *(a5 + 104) = v28;
}

uint64_t ContactAvatarTileView.Caption.init(subtitle:foregroundStyle:font:accessories:accessoryForegroundStyle:blendMode:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, __int128 *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v36 = a5;
  v37 = a7;
  v34 = a1;
  v35 = a2;
  v38 = a8;
  v11 = type metadata accessor for ContactAvatarTileView.Caption(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05D810);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v32 - v15;
  v17 = sub_1C2E746A4();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(a3 + 16);
  v22 = *a3;
  v23 = *a6;
  v24 = *(a6 + 16);
  if (!a4)
  {
    v25 = *MEMORY[0x1E6980EF0];
    v26 = *(v18 + 104);
    v32 = v23;
    v33 = v22;
    v26(v20, v25, v17);
    v27 = sub_1C2E74534();
    (*(*(v27 - 8) + 56))(v16, 1, 1, v27);
    sub_1C2E74594();
    a4 = sub_1C2E745D4();
    sub_1C2C73644(v16, &qword_1EC05D810);
    (*(v18 + 8))(v20, v17);
    v23 = v32;
    v22 = v33;
  }

  v28 = v35;
  *v13 = v34;
  *(v13 + 1) = v28;
  *(v13 + 2) = 0;
  *(v13 + 3) = 0;
  *(v13 + 2) = v22;
  v13[48] = v21;
  *(v13 + 7) = 0;
  *(v13 + 8) = a4;
  *(v13 + 9) = v36;
  if (v24 > 0xFD)
  {
    v33 = v22;
    sub_1C2DD30A8(v22, *(&v22 + 1), v21);
    LOBYTE(v24) = v21;
    v23 = v33;
  }

  *(v13 + 5) = v23;
  v13[96] = v24;
  *(v13 + 13) = a4;
  v29 = *(v11 + 48);
  v30 = sub_1C2E757E4();
  (*(*(v30 - 8) + 32))(&v13[v29], v37, v30);
  sub_1C2DD3124(v13, v38, type metadata accessor for ContactAvatarTileView.Caption);
}

uint64_t ContactAvatarTileView.Caption.hash(into:)(uint64_t a1)
{
  sub_1C2E75CC4();
  if (*(v1 + 24))
  {
    sub_1C2E76874();
    sub_1C2E75CC4();
  }

  else
  {
    sub_1C2E76874();
  }

  ContactAvatarTileView.Caption.ForegroundStyle.hash(into:)();
  v3 = *(v1 + 56);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  MEMORY[0x1C69272B0](*&v3);
  sub_1C2E74524();
  sub_1C2D27C30(a1, *(v1 + 72));
  ContactAvatarTileView.Caption.ForegroundStyle.hash(into:)();
  sub_1C2E74524();
  type metadata accessor for ContactAvatarTileView.Caption(0);
  sub_1C2E757E4();
  sub_1C2DD30DC(&qword_1EC0629E8, MEMORY[0x1E6981E38]);
  return sub_1C2E75B64();
}

uint64_t ContactAvatarTileView.ImageStyle.description.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05F140);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v35 - v5;
  v7 = type metadata accessor for ContactAvatarTileView.ImageStyle(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1C2DD318C(v0, v9, type metadata accessor for ContactAvatarTileView.ImageStyle);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1C2C734EC(v9, type metadata accessor for ContactAvatarTileView.ImageStyle);
      return 0x64657070696C632ELL;
    }

    else
    {
      v11 = 0xD000000000000011;
      sub_1C2C734EC(v9, type metadata accessor for ContactAvatarTileView.ImageStyle);
    }

    return v11;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v37 = 0x286B6E616C622ELL;
    v38 = 0xE700000000000000;
    v26 = sub_1C2E74EB4();
    MEMORY[0x1C6926710](v26);

LABEL_30:

    return v37;
  }

  if (EnumCaseMultiPayload == 4)
  {
    v12 = *v9;
    v37 = 0;
    v38 = 0xE000000000000000;
    sub_1C2E765C4();

    v37 = 0xD000000000000017;
    v38 = 0x80000001C2E98D80;
    if (v12 >> 62)
    {
      goto LABEL_26;
    }

    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v13)
    {
      goto LABEL_27;
    }

    while (1)
    {
      v35 = MEMORY[0x1E69E7CC0];
      result = sub_1C2C7B754(0, v13 & ~(v13 >> 63), 0);
      if (v13 < 0)
      {
        __break(1u);
        return result;
      }

      v15 = 0;
      v16 = v35;
      do
      {
        if ((v12 & 0xC000000000000001) != 0)
        {
          v17 = MEMORY[0x1C6927010](v15, v12);
        }

        else
        {
          v17 = *(v12 + 8 * v15 + 32);
        }

        v18 = v17;
        v19 = [v17 identifier];
        v20 = sub_1C2E75C64();
        v22 = v21;

        v35 = v16;
        v24 = v16[2];
        v23 = v16[3];
        if (v24 >= v23 >> 1)
        {
          sub_1C2C7B754((v23 > 1), v24 + 1, 1);
          v16 = v35;
        }

        ++v15;
        v16[2] = v24 + 1;
        v25 = &v16[2 * v24];
        v25[4] = v20;
        v25[5] = v22;
      }

      while (v13 != v15);

      v29 = v16[2];
      if (!v29)
      {
        break;
      }

      while (1)
      {
        v30 = 0;
        v31 = 0;
        v32 = v16 + 5;
        v12 = 0xE000000000000000;
        while (v31 < v16[2])
        {
          ++v31;
          v34 = *(v32 - 1);
          v33 = *v32;
          v35 = v30;
          v36 = v12;

          MEMORY[0x1C6926710](v34, v33);

          v30 = v35;
          v12 = v36;
          v32 += 2;
          if (v29 == v31)
          {
            goto LABEL_29;
          }
        }

        __break(1u);
LABEL_26:
        v13 = sub_1C2E764E4();
        if (v13)
        {
          break;
        }

LABEL_27:

        v16 = MEMORY[0x1E69E7CC0];
        v29 = *(MEMORY[0x1E69E7CC0] + 16);
        if (!v29)
        {
          goto LABEL_28;
        }
      }
    }

LABEL_28:
    v30 = 0;
    v12 = 0xE000000000000000;
LABEL_29:

    MEMORY[0x1C6926710](v30, v12);
    goto LABEL_30;
  }

  sub_1C2C71D5C(v9, v6, &qword_1EC05F140);
  v37 = 0;
  v38 = 0xE000000000000000;
  sub_1C2E765C4();
  MEMORY[0x1C6926710](0x69576567616D692ELL, 0xEE00284C52556874);
  v27 = *(v1 + 48);
  v28 = sub_1C2E71784();
  (*(*(v28 - 8) + 16))(v3, v6, v28);
  sub_1C2C736A4(&v6[v27], &v3[v27], &unk_1EC061C20);
  sub_1C2E76694();
  sub_1C2C73644(v3, &qword_1EC05F140);
  MEMORY[0x1C6926710](41, 0xE100000000000000);
  v11 = v37;
  sub_1C2C73644(v6, &qword_1EC05F140);
  return v11;
}

void ContactAvatarTileView.ImageStyle.hash(into:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC061C20);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v33 - v7;
  v9 = sub_1C2E71784();
  v34 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v33 - v13;
  v15 = type metadata accessor for ContactAvatarTileView.ImageStyle.ClippedImageConfiguration(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ContactAvatarTileView.ImageStyle(0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C2DD318C(v1, v20, type metadata accessor for ContactAvatarTileView.ImageStyle);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_1C2DD3124(v20, v17, type metadata accessor for ContactAvatarTileView.ImageStyle.ClippedImageConfiguration);
        MEMORY[0x1C6927290](1);
        ContactAvatarTileView.ImageStyle.ClippedImageConfiguration.hash(into:)(a1);
        sub_1C2C734EC(v17, type metadata accessor for ContactAvatarTileView.ImageStyle.ClippedImageConfiguration);
        return;
      }

      v23 = *v20;
      v24 = *(v20 + 1);
      v25 = v20[16];
      MEMORY[0x1C6927290](2);
      v26 = v23;
      v27 = v24;
      if (v25)
      {
        if (v25 == 1)
        {
          goto LABEL_14;
        }

        goto LABEL_20;
      }
    }

    else
    {
      v23 = *v20;
      v24 = *(v20 + 1);
      v25 = v20[16];
      MEMORY[0x1C6927290](0);
      v26 = v23;
      v27 = v24;
      if (v25)
      {
        if (v25 == 1)
        {
LABEL_14:
          v28 = 1;
LABEL_18:
          sub_1C2C70B1C(v26, v27, v28);
LABEL_21:
          sub_1C2E75CC4();

          sub_1C2C77608(v23, v24, v25);
          return;
        }

LABEL_20:
        sub_1C2C70B1C(v26, v27, 2u);
        v32 = [v23 description];
        sub_1C2E75C64();

        sub_1C2C77608(v23, v24, 2u);
        goto LABEL_21;
      }
    }

    v28 = 0;
    goto LABEL_18;
  }

  if (EnumCaseMultiPayload == 3)
  {
    MEMORY[0x1C6927290](3);
    sub_1C2E74F24();
  }

  else if (EnumCaseMultiPayload == 4)
  {
    v22 = *v20;
    MEMORY[0x1C6927290](4);
    sub_1C2D29230(a1, v22);
  }

  else
  {
    v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05F140) + 48);
    v30 = v34;
    v33 = *(v34 + 32);
    v33(v14, v20, v9);
    sub_1C2C71D5C(&v20[v29], v8, &unk_1EC061C20);
    MEMORY[0x1C6927290](5);
    sub_1C2DD30DC(&qword_1EC0629F0, MEMORY[0x1E6968FB0]);
    sub_1C2E75B64();
    sub_1C2C736A4(v8, v5, &unk_1EC061C20);
    if ((*(v30 + 48))(v5, 1, v9) == 1)
    {
      sub_1C2E76874();
      sub_1C2C73644(v8, &unk_1EC061C20);
      (*(v30 + 8))(v14, v9);
    }

    else
    {
      v33(v11, v5, v9);
      sub_1C2E76874();
      sub_1C2E75B64();
      v31 = *(v30 + 8);
      v31(v11, v9);
      sub_1C2C73644(v8, &unk_1EC061C20);
      v31(v14, v9);
    }
  }
}

uint64_t ContactAvatarTileView.ButtonConfiguration.backgroundStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  v3 = *(v1 + 8);
  *(a1 + 8) = v3;
  return sub_1C2CC290C(v2, v3);
}

uint64_t ContactAvatarTileView.ButtonConfiguration.backgroundStyle.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  result = sub_1C2CC2678(*v1, *(v1 + 8));
  *v1 = v2;
  *(v1 + 8) = v3;
  return result;
}

uint64_t sub_1C2DCDE6C()
{
  v0 = sub_1C2E746A4();
  __swift_allocate_value_buffer(v0, qword_1EC0759C0);
  v1 = __swift_project_value_buffer(v0, qword_1EC0759C0);
  v2 = *MEMORY[0x1E6980F10];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t ContactAvatarTileView.ButtonConfiguration.Symbol.hashValue.getter()
{
  v1 = *v0;
  sub_1C2E76854();
  MEMORY[0x1C6927290](v1);
  return sub_1C2E76894();
}

BOOL static ContactAvatarTileView.ImageStyle.ClippedImageConfiguration.SizeConfiguration.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 16))
  {
    return (*(a2 + 16) & 1) != 0 && v2 == v3;
  }

  if (*(a2 + 16))
  {
    return 0;
  }

  v5 = v2 == v3;
  return *(a1 + 8) == *(a2 + 8) && v5;
}

uint64_t ContactAvatarTileView.ImageStyle.ClippedImageConfiguration.SizeConfiguration.hash(into:)()
{
  v1 = *v0;
  if (*(v0 + 16))
  {
    MEMORY[0x1C6927290](1);
    if ((*&v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v2 = v1;
    }

    else
    {
      v2 = 0.0;
    }
  }

  else
  {
    v3 = *(v0 + 8);
    MEMORY[0x1C6927290](0);
    if (v1 == 0.0)
    {
      v4 = 0.0;
    }

    else
    {
      v4 = v1;
    }

    MEMORY[0x1C69272B0](*&v4);
    if (v3 == 0.0)
    {
      v5 = 0.0;
    }

    else
    {
      v5 = v3;
    }

    v2 = v5;
  }

  return MEMORY[0x1C69272B0](*&v2);
}

uint64_t ContactAvatarTileView.ImageStyle.ClippedImageConfiguration.SizeConfiguration.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_1C2E76854();
  if (v3)
  {
    MEMORY[0x1C6927290](1);
    if ((*&v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v4 = v1;
    }

    else
    {
      v4 = 0.0;
    }
  }

  else
  {
    MEMORY[0x1C6927290](0);
    if (v1 == 0.0)
    {
      v5 = 0.0;
    }

    else
    {
      v5 = v1;
    }

    MEMORY[0x1C69272B0](*&v5);
    if (v2 == 0.0)
    {
      v6 = 0.0;
    }

    else
    {
      v6 = v2;
    }

    v4 = v6;
  }

  MEMORY[0x1C69272B0](*&v4);
  return sub_1C2E76894();
}

uint64_t sub_1C2DCE138()
{
  v1 = *v0;
  if (*(v0 + 16))
  {
    MEMORY[0x1C6927290](1);
    if ((*&v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v2 = v1;
    }

    else
    {
      v2 = 0.0;
    }

    return MEMORY[0x1C69272B0](*&v2);
  }

  else
  {
    v4 = *(v0 + 8);
    MEMORY[0x1C6927290](0);

    return sub_1C2DD2B08(v1, v4);
  }
}

uint64_t sub_1C2DCE1D0()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_1C2E76854();
  if (v3)
  {
    MEMORY[0x1C6927290](1);
    if ((*&v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v4 = v1;
    }

    else
    {
      v4 = 0.0;
    }

    MEMORY[0x1C69272B0](*&v4);
  }

  else
  {
    MEMORY[0x1C6927290](0);
    sub_1C2DD2B08(v1, v2);
  }

  return sub_1C2E76894();
}

BOOL sub_1C2DCE25C(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 16))
  {
    return (*(a2 + 16) & 1) != 0 && v2 == v3;
  }

  if (*(a2 + 16))
  {
    return 0;
  }

  v5 = v2 == v3;
  return *(a1 + 8) == *(a2 + 8) && v5;
}

uint64_t ContactAvatarTileView.ImageStyle.ClippedImageConfiguration.init(_:clipShape:scaleFactor:includeBlurOverlay:backgroundStyle:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, char a3@<W2>, uint64_t *a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v9 = *a1;
  v10 = a1[1];
  v11 = *(a1 + 16);
  v12 = *a2;
  v13 = *(a2 + 8);
  v14 = *a4;
  v15 = *(a4 + 8);
  v16 = *(type metadata accessor for ContactAvatarTileView.ImageStyle.ClippedImageConfiguration(0) + 36);
  if (qword_1EC05CF58 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for ClippedImageBackgroundView.ForegroundStyle(0);
  v18 = __swift_project_value_buffer(v17, qword_1EC05FC78);
  result = sub_1C2DD318C(v18, a5 + v16, type metadata accessor for ClippedImageBackgroundView.ForegroundStyle);
  *a5 = v9;
  *(a5 + 8) = v10;
  *(a5 + 16) = v11;
  *(a5 + 24) = v12;
  *(a5 + 32) = v13;
  *(a5 + 40) = a6;
  *(a5 + 48) = 0;
  *(a5 + 56) = 1;
  *(a5 + 57) = a3 & 1;
  *(a5 + 64) = v14;
  *(a5 + 72) = v15;
  return result;
}

uint64_t ContactAvatarTileView.ImageStyle.ClippedImageConfiguration.init(image:clipShape:sizeConfiguration:includeBlurOverlay:backgroundStyle:foregroundStyle:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v9 = *(a1 + 16);
  v10 = *a2;
  v11 = *(a2 + 8);
  v12 = *(a3 + 16);
  v13 = *a5;
  v14 = *(a5 + 8);
  *a7 = *a1;
  *(a7 + 16) = v9;
  *(a7 + 24) = v10;
  *(a7 + 32) = v11;
  *(a7 + 40) = *a3;
  *(a7 + 56) = v12;
  *(a7 + 57) = a4;
  *(a7 + 64) = v13;
  *(a7 + 72) = v14;
  v15 = type metadata accessor for ContactAvatarTileView.ImageStyle.ClippedImageConfiguration(0);
  return sub_1C2DD3124(a6, a7 + *(v15 + 36), type metadata accessor for ClippedImageBackgroundView.ForegroundStyle);
}

uint64_t ContactAvatarTileView.ImageStyle.ClippedImageConfiguration.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v5 = *v1;
  v4 = *(v1 + 8);
  if (*(v2 + 16) && *(v2 + 16) != 1)
  {
    v6 = [v5 description];
    sub_1C2E75C64();

    sub_1C2C77608(v5, v4, 2u);
  }

  else
  {
  }

  sub_1C2E75CC4();

  v7 = *(v2 + 24);
  if (*(v2 + 32) == 1)
  {
    if (v7)
    {
      v8 = 2;
    }

    else
    {
      v8 = 0;
    }

    MEMORY[0x1C6927290](v8);
  }

  else
  {
    MEMORY[0x1C6927290](1);
    if ((v7 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v9 = v7;
    }

    else
    {
      v9 = 0;
    }

    MEMORY[0x1C69272B0](v9);
  }

  v10 = *(v2 + 40);
  if (*(v2 + 56))
  {
    MEMORY[0x1C6927290](1);
    if ((*&v10 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0.0;
    }
  }

  else
  {
    v12 = *(v2 + 48);
    MEMORY[0x1C6927290](0);
    if (v10 == 0.0)
    {
      v13 = 0.0;
    }

    else
    {
      v13 = v10;
    }

    MEMORY[0x1C69272B0](*&v13);
    if (v12 == 0.0)
    {
      v14 = 0.0;
    }

    else
    {
      v14 = v12;
    }

    v11 = v14;
  }

  MEMORY[0x1C69272B0](*&v11);
  sub_1C2E76874();
  v15 = *(v2 + 64);
  if (*(v2 + 72))
  {
    if (*(v2 + 72) == 1)
    {
      MEMORY[0x1C6927290](3);
      sub_1C2D29230(a1, v15);
    }

    else
    {
      MEMORY[0x1C6927290](v15 != 0);
    }
  }

  else
  {
    MEMORY[0x1C6927290](2);
    sub_1C2E74F24();
  }

  type metadata accessor for ContactAvatarTileView.ImageStyle.ClippedImageConfiguration(0);
  sub_1C2E74F24();
  type metadata accessor for ClippedImageBackgroundView.ForegroundStyle(0);
  return ClippedImage.ImageSize.hash(into:)();
}

uint64_t sub_1C2DCE678(void (*a1)(_BYTE *))
{
  sub_1C2E76854();
  a1(v3);
  return sub_1C2E76894();
}

uint64_t sub_1C2DCE6D8(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *))
{
  sub_1C2E76854();
  a3(v5);
  return sub_1C2E76894();
}

uint64_t sub_1C2DCE73C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_1C2E76854();
  a4(v6);
  return sub_1C2E76894();
}

uint64_t sub_1C2DCE784@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1C2C7685C();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC062B08);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC062B10);
  *(a2 + *(result + 36)) = v4;
  return result;
}

double sub_1C2DCE838()
{
  v16 = sub_1C2E73BA4();
  v1 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05F2D0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v15 - v5;
  v7 = sub_1C2E73DB4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _s7CaptionV15ForegroundStyleO19PlaceholderModifierVMa(0);
  sub_1C2C736A4(v0 + *(v11 + 20), v6, &qword_1EC05F2D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v8 + 32))(v10, v6, v7);
  }

  else
  {
    sub_1C2E75FD4();
    v12 = sub_1C2E74404();
    sub_1C2E72B14();

    sub_1C2E73B94();
    swift_getAtKeyPath();

    (*(v1 + 8))(v3, v16);
  }

  v13 = (*(v8 + 88))(v10, v7);
  result = 6.0;
  if (v13 != *MEMORY[0x1E697F650] && v13 != *MEMORY[0x1E697F660])
  {
    result = 7.0;
    if (v13 != *MEMORY[0x1E697F630])
    {
      result = 9.0;
      if (v13 != *MEMORY[0x1E697F670] && v13 != *MEMORY[0x1E697F668] && v13 != *MEMORY[0x1E697F678])
      {
        result = 11.0;
        if (v13 != *MEMORY[0x1E697F640])
        {
          result = 14.0;
          if (v13 != *MEMORY[0x1E697F648])
          {
            (*(v8 + 8))(v10, v7, 14.0);
            return 5.0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1C2DCEB8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a1;
  v4 = sub_1C2E737A4();
  v30 = *(v4 - 8);
  v31 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC062AC0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC062AC8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v29 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC062AD0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v29 - v15);
  if (*(v2 + 16))
  {
    sub_1C2E73794();
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC062AD8);
    v29 = a2;
    v18 = v17;
    v19 = sub_1C2C94F38(&qword_1EC062AE0, &qword_1EC062AD8);
    sub_1C2E74DF4();
    (*(v30 + 8))(v6, v31);
    (*(v8 + 16))(v13, v10, v7);
    swift_storeEnumTagMultiPayload();
    sub_1C2DD4048();
    *&v35 = v18;
    *(&v35 + 1) = v19;
    swift_getOpaqueTypeConformance2();
    sub_1C2E73F44();
    return (*(v8 + 8))(v10, v7);
  }

  else
  {
    v32 = v7;
    v21 = sub_1C2DCE838();
    v22 = *(sub_1C2E737C4() + 20);
    v23 = *MEMORY[0x1E697F468];
    v24 = sub_1C2E73D44();
    (*(*(v24 - 8) + 104))(v16 + v22, v23, v24);
    *v16 = v21;
    v16[1] = v21;
    sub_1C2E75744();
    sub_1C2E73274();
    v25 = (v16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC062AF8) + 36));
    v26 = v36;
    *v25 = v35;
    v25[1] = v26;
    v25[2] = v37;
    if (qword_1EC05C028 != -1)
    {
      swift_once();
    }

    *(v16 + *(v14 + 36)) = *(&xmmword_1EC075978 + 1);
    sub_1C2C736A4(v16, v13, &qword_1EC062AD0);
    swift_storeEnumTagMultiPayload();
    sub_1C2DD4048();

    v27 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC062AD8);
    v28 = sub_1C2C94F38(&qword_1EC062AE0, &qword_1EC062AD8);
    v33 = v27;
    v34 = v28;
    swift_getOpaqueTypeConformance2();
    sub_1C2E73F44();
    return sub_1C2C73644(v16, &qword_1EC062AD0);
  }
}

uint64_t TestContactAvatarTileState.playable.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_1C2DD30DC(&qword_1EC062A00, type metadata accessor for TestContactAvatarTileState);
  sub_1C2E71A64();

  swift_beginAccess();
  return sub_1C2C736A4(v1 + 16, a1, &unk_1EC061C40);
}

uint64_t sub_1C2DCF150@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2DD30DC(&qword_1EC062A00, type metadata accessor for TestContactAvatarTileState);
  sub_1C2E71A64();

  swift_beginAccess();
  return sub_1C2C736A4(v3 + 16, a2, &unk_1EC061C40);
}

uint64_t sub_1C2DCF220(uint64_t a1)
{
  sub_1C2C736A4(a1, v2, &unk_1EC061C40);
  swift_getKeyPath();
  sub_1C2DD30DC(&qword_1EC062A00, type metadata accessor for TestContactAvatarTileState);
  sub_1C2E71A54();

  return sub_1C2C73644(v2, &unk_1EC061C40);
}

uint64_t TestContactAvatarTileState.playable.setter(uint64_t a1)
{
  swift_getKeyPath();
  sub_1C2DD30DC(&qword_1EC062A00, type metadata accessor for TestContactAvatarTileState);
  sub_1C2E71A54();

  return sub_1C2C73644(a1, &unk_1EC061C40);
}

uint64_t sub_1C2DCF408(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1C2D44F38(a2, a1 + 16, &unk_1EC061C40);
  return swift_endAccess();
}

void (*TestContactAvatarTileState.playable.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC16CommunicationsUI26TestContactAvatarTileState___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_1C2DD30DC(&qword_1EC062A00, type metadata accessor for TestContactAvatarTileState);
  sub_1C2E71A64();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C2E71A84();

  swift_beginAccess();
  return sub_1C2DCF5BC;
}

uint64_t TestContactAvatarTileState.avatarImageStyle.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1C2DD30DC(&qword_1EC062A00, type metadata accessor for TestContactAvatarTileState);
  sub_1C2E71A64();

  v3 = OBJC_IVAR____TtC16CommunicationsUI26TestContactAvatarTileState__avatarImageStyle;
  swift_beginAccess();
  return sub_1C2DD318C(v5 + v3, a1, type metadata accessor for ContactAvatarTileView.ImageStyle);
}

uint64_t sub_1C2DCF6A4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2DD30DC(&qword_1EC062A00, type metadata accessor for TestContactAvatarTileState);
  sub_1C2E71A64();

  v4 = OBJC_IVAR____TtC16CommunicationsUI26TestContactAvatarTileState__avatarImageStyle;
  swift_beginAccess();
  return sub_1C2DD318C(v3 + v4, a2, type metadata accessor for ContactAvatarTileView.ImageStyle);
}

uint64_t sub_1C2DCF780(uint64_t a1)
{
  v2 = type metadata accessor for ContactAvatarTileView.ImageStyle(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C2DD318C(a1, v4, type metadata accessor for ContactAvatarTileView.ImageStyle);
  return TestContactAvatarTileState.avatarImageStyle.setter(v4);
}

uint64_t TestContactAvatarTileState.avatarImageStyle.setter(uint64_t a1)
{
  v3 = type metadata accessor for ContactAvatarTileView.ImageStyle(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC16CommunicationsUI26TestContactAvatarTileState__avatarImageStyle;
  swift_beginAccess();
  sub_1C2DD318C(v1 + v6, v5, type metadata accessor for ContactAvatarTileView.ImageStyle);
  v7 = _s16CommunicationsUI21ContactAvatarTileViewV10ImageStyleO2eeoiySbAE_AEtFZ_0(v5, a1);
  sub_1C2C734EC(v5, type metadata accessor for ContactAvatarTileView.ImageStyle);
  if (v7)
  {
    swift_beginAccess();
    sub_1C2DD324C(a1, v1 + v6);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[1] = v1;
    sub_1C2DD30DC(&qword_1EC062A00, type metadata accessor for TestContactAvatarTileState);
    sub_1C2E71A54();
  }

  return sub_1C2C734EC(a1, type metadata accessor for ContactAvatarTileView.ImageStyle);
}

uint64_t sub_1C2DCFA10(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC16CommunicationsUI26TestContactAvatarTileState__avatarImageStyle;
  swift_beginAccess();
  sub_1C2DD324C(a2, a1 + v4);
  return swift_endAccess();
}

void (*TestContactAvatarTileState.avatarImageStyle.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC16CommunicationsUI26TestContactAvatarTileState___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_1C2DD30DC(&qword_1EC062A00, type metadata accessor for TestContactAvatarTileState);
  sub_1C2E71A64();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C2E71A84();

  swift_beginAccess();
  return sub_1C2DCFBC4;
}

uint64_t TestContactAvatarTileState.buttonConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_1C2DD30DC(&qword_1EC062A00, type metadata accessor for TestContactAvatarTileState);
  sub_1C2E71A64();

  v3 = v1 + OBJC_IVAR____TtC16CommunicationsUI26TestContactAvatarTileState__buttonConfiguration;
  swift_beginAccess();
  v4 = *v3;
  *a1 = *v3;
  v5 = *(v3 + 8);
  *(a1 + 8) = v5;
  return sub_1C2DD32B0(v4, v5);
}

uint64_t sub_1C2DCFCA4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2DD30DC(&qword_1EC062A00, type metadata accessor for TestContactAvatarTileState);
  sub_1C2E71A64();

  v4 = v3 + OBJC_IVAR____TtC16CommunicationsUI26TestContactAvatarTileState__buttonConfiguration;
  swift_beginAccess();
  v5 = *v4;
  *a2 = *v4;
  v6 = *(v4 + 8);
  *(a2 + 8) = v6;
  return sub_1C2DD32B0(v5, v6);
}

uint64_t sub_1C2DCFD78()
{
  swift_getKeyPath();
  sub_1C2DD30DC(&qword_1EC062A00, type metadata accessor for TestContactAvatarTileState);
  sub_1C2E71A54();
}

uint64_t TestContactAvatarTileState.buttonConfiguration.setter(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  swift_getKeyPath();
  sub_1C2DD30DC(&qword_1EC062A00, type metadata accessor for TestContactAvatarTileState);
  sub_1C2E71A54();
  sub_1C2CC2664(v1, v2);
}

uint64_t sub_1C2DCFF30(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v5 = a1 + OBJC_IVAR____TtC16CommunicationsUI26TestContactAvatarTileState__buttonConfiguration;
  swift_beginAccess();
  v6 = *v5;
  *v5 = a2;
  v7 = *(v5 + 8);
  *(v5 + 8) = a3;
  sub_1C2DD32B0(a2, a3);
  return sub_1C2CC2664(v6, v7);
}

void (*TestContactAvatarTileState.buttonConfiguration.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC16CommunicationsUI26TestContactAvatarTileState___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_1C2DD30DC(&qword_1EC062A00, type metadata accessor for TestContactAvatarTileState);
  sub_1C2E71A64();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C2E71A84();

  swift_beginAccess();
  return sub_1C2DD0104;
}

uint64_t sub_1C2DD0178(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  swift_beginAccess();
  sub_1C2D44F38(a2, a1 + v5, &qword_1EC05E0F0);
  return swift_endAccess();
}

void (*TestContactAvatarTileState.primaryCaption.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC16CommunicationsUI26TestContactAvatarTileState___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_1C2DD30DC(&qword_1EC062A00, type metadata accessor for TestContactAvatarTileState);
  sub_1C2E71A64();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C2E71A84();

  swift_beginAccess();
  return sub_1C2DD0338;
}

uint64_t sub_1C2DD0384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E0F0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v11 - v8;
  sub_1C2C736A4(a1, &v11 - v8, &qword_1EC05E0F0);
  return a5(v9);
}

void (*TestContactAvatarTileState.secondaryCaption.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC16CommunicationsUI26TestContactAvatarTileState___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_1C2DD30DC(&qword_1EC062A00, type metadata accessor for TestContactAvatarTileState);
  sub_1C2E71A64();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C2E71A84();

  swift_beginAccess();
  return sub_1C2DD05A8;
}

uint64_t sub_1C2DD05C8@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  swift_getKeyPath();
  sub_1C2DD30DC(&qword_1EC062A00, type metadata accessor for TestContactAvatarTileState);
  sub_1C2E71A64();

  v5 = *a1;
  swift_beginAccess();
  return sub_1C2C736A4(v2 + v5, a2, &qword_1EC05E0F0);
}

uint64_t sub_1C2DD06B4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, uint64_t a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1C2DD30DC(&qword_1EC062A00, type metadata accessor for TestContactAvatarTileState);
  sub_1C2E71A64();

  v6 = *a2;
  swift_beginAccess();
  return sub_1C2C736A4(v5 + v6, a3, &qword_1EC05E0F0);
}

void (*TestContactAvatarTileState.bodyCaption.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC16CommunicationsUI26TestContactAvatarTileState___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_1C2DD30DC(&qword_1EC062A00, type metadata accessor for TestContactAvatarTileState);
  sub_1C2E71A64();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C2E71A84();

  swift_beginAccess();
  return sub_1C2DD0918;
}

uint64_t sub_1C2DD098C(uint64_t a1, uint64_t *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E0F0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v11 - v6;
  v8 = *a2;
  swift_beginAccess();
  sub_1C2C736A4(v2 + v8, v7, &qword_1EC05E0F0);
  LOBYTE(a2) = sub_1C2DD32E4(v7, a1);
  sub_1C2C73644(v7, &qword_1EC05E0F0);
  if (a2)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v11[-2] = v2;
    v11[-1] = a1;
    v11[2] = v2;
    sub_1C2DD30DC(&qword_1EC062A00, type metadata accessor for TestContactAvatarTileState);
    sub_1C2E71A54();
  }

  else
  {
    swift_beginAccess();
    sub_1C2D44F38(a1, v2 + v8, &qword_1EC05E0F0);
    swift_endAccess();
  }

  return sub_1C2C73644(a1, &qword_1EC05E0F0);
}

void (*TestContactAvatarTileState.detailCaption.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC16CommunicationsUI26TestContactAvatarTileState___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_1C2DD30DC(&qword_1EC062A00, type metadata accessor for TestContactAvatarTileState);
  sub_1C2E71A64();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C2E71A84();

  swift_beginAccess();
  return sub_1C2DD0CCC;
}

uint64_t TestContactAvatarTileState.__allocating_init(avatarImageStyle:primaryCaption:secondaryCaption:bodyCaption:detailCaption:buttonConfiguration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v25 = a4;
  v26 = a5;
  v24 = a3;
  v22 = a2;
  v27 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E0F0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v22 - v9;
  v11 = swift_allocObject();
  v23 = *a6;
  *(v11 + 16) = 0u;
  *(v11 + 32) = 0u;
  *(v11 + 48) = 0;
  v12 = v11 + OBJC_IVAR____TtC16CommunicationsUI26TestContactAvatarTileState__buttonConfiguration;
  *v12 = 0;
  *(v12 + 8) = 768;
  v13 = OBJC_IVAR____TtC16CommunicationsUI26TestContactAvatarTileState__primaryCaption;
  v14 = *(a6 + 8);
  v15 = type metadata accessor for ContactAvatarTileView.Caption(0);
  v16 = *(*(v15 - 8) + 56);
  v16(v11 + v13, 1, 1, v15);
  v16(v11 + OBJC_IVAR____TtC16CommunicationsUI26TestContactAvatarTileState__secondaryCaption, 1, 1, v15);
  v16(v11 + OBJC_IVAR____TtC16CommunicationsUI26TestContactAvatarTileState__bodyCaption, 1, 1, v15);
  v16(v11 + OBJC_IVAR____TtC16CommunicationsUI26TestContactAvatarTileState__detailCaption, 1, 1, v15);
  sub_1C2E71A94();
  sub_1C2DD318C(v27, v11 + OBJC_IVAR____TtC16CommunicationsUI26TestContactAvatarTileState__avatarImageStyle, type metadata accessor for ContactAvatarTileView.ImageStyle);
  sub_1C2C736A4(a2, v10, &qword_1EC05E0F0);
  TestContactAvatarTileState.primaryCaption.setter(v10);
  v17 = v24;
  sub_1C2C736A4(v24, v10, &qword_1EC05E0F0);
  TestContactAvatarTileState.secondaryCaption.setter(v10);
  v18 = v25;
  sub_1C2C736A4(v25, v10, &qword_1EC05E0F0);
  TestContactAvatarTileState.bodyCaption.setter(v10);
  swift_getKeyPath();
  v19 = v23;
  v28 = v11;
  v29 = v23;
  v30 = v14;
  v31 = v11;
  sub_1C2DD30DC(&qword_1EC062A00, type metadata accessor for TestContactAvatarTileState);
  sub_1C2E71A54();
  sub_1C2CC2664(v19, v14);

  v20 = v26;
  sub_1C2C736A4(v26, v10, &qword_1EC05E0F0);
  TestContactAvatarTileState.detailCaption.setter(v10);
  sub_1C2C73644(v20, &qword_1EC05E0F0);
  sub_1C2C73644(v18, &qword_1EC05E0F0);
  sub_1C2C73644(v17, &qword_1EC05E0F0);
  sub_1C2C73644(v22, &qword_1EC05E0F0);
  sub_1C2C734EC(v27, type metadata accessor for ContactAvatarTileView.ImageStyle);
  return v11;
}