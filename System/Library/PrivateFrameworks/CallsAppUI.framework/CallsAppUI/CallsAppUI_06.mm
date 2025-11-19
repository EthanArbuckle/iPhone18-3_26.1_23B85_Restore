uint64_t sub_1CFC44C94()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE6F8, &qword_1CFCA6060);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v19 - v4;
  v6 = sub_1CFC9D4D8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v0;
  swift_getKeyPath();
  v19[1] = v11;
  sub_1CFC46D78(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel);
  sub_1CFC9C158();

  v12 = OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__currentPickedAudioRoute;
  swift_beginAccess();
  sub_1CFBA29FC(v11 + v12, v5, &qword_1EC4EE6F8, &qword_1CFCA6060);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1CFBC2FB0(v5, &qword_1EC4EE6F8, &qword_1CFCA6060);
    goto LABEL_10;
  }

  (*(v7 + 32))(v10, v5, v6);
  if ((sub_1CFC9D488() & 1) == 0)
  {
    (*(v7 + 8))(v10, v6);
    goto LABEL_10;
  }

  v13 = sub_1CFC9D498();
  v15 = v14;
  (*(v7 + 8))(v10, v6);
  if (!v15)
  {
LABEL_10:
    v13 = v1[15];
    v17 = v1[16];

    return v13;
  }

  v16 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v16 = v13 & 0xFFFFFFFFFFFFLL;
  }

  if (!v16)
  {

    goto LABEL_10;
  }

  return v13;
}

uint64_t sub_1CFC44F30@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v80 = a1;
  v85 = a3;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF298, &qword_1CFCA67F0);
  v4 = *(*(v83 - 8) + 64);
  MEMORY[0x1EEE9AC00](v83);
  v84 = &v77 - v5;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF2A0, &qword_1CFCA67F8);
  v6 = *(*(v77 - 8) + 64);
  MEMORY[0x1EEE9AC00](v77);
  v78 = &v77 - v7;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF2A8, &qword_1CFCA6800);
  v8 = *(*(v82 - 8) + 64);
  MEMORY[0x1EEE9AC00](v82);
  v79 = &v77 - v9;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF2B0, &qword_1CFCA6808);
  v10 = *(*(v81 - 8) + 64);
  MEMORY[0x1EEE9AC00](v81);
  v12 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v77 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v77 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v77 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF2B8, &qword_1CFCA6810);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v77 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v77 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v77 - v30;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v77 - v33;
  if (a2 < 2 || a2 == 5)
  {
    sub_1CFC9F538();
    sub_1CFC9E268();
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF2C0, &qword_1CFCA6818);
    (*(*(v54 - 8) + 16))(v18, v80, v54);
    v55 = &v18[*(v81 + 36)];
    v56 = v91;
    *(v55 + 4) = v90;
    *(v55 + 5) = v56;
    *(v55 + 6) = v92;
    v57 = v87;
    *v55 = v86;
    *(v55 + 1) = v57;
    v58 = v89;
    *(v55 + 2) = v88;
    *(v55 + 3) = v58;
    v59 = sub_1CFC9EBA8();
    sub_1CFC9DE18();
    v61 = v60;
    v63 = v62;
    v65 = v64;
    v67 = v66;
    sub_1CFBCCE88(v18, v25, &qword_1EC4EF2B0, &qword_1CFCA6808);
    v68 = &v25[*(v22 + 36)];
    *v68 = v59;
    *(v68 + 1) = v61;
    *(v68 + 2) = v63;
    *(v68 + 3) = v65;
    *(v68 + 4) = v67;
    v68[40] = 0;
    sub_1CFBCCE88(v25, v28, &qword_1EC4EF2B8, &qword_1CFCA6810);
    sub_1CFBA29FC(v28, v78, &qword_1EC4EF2B8, &qword_1CFCA6810);
    swift_storeEnumTagMultiPayload();
    sub_1CFC47128();
    v69 = v79;
    sub_1CFC9E798();
    sub_1CFBA29FC(v69, v84, &qword_1EC4EF2A8, &qword_1CFCA6800);
    swift_storeEnumTagMultiPayload();
    sub_1CFC470A4();
    sub_1CFC471B4();
    sub_1CFC9E798();
    sub_1CFBC2FB0(v69, &qword_1EC4EF2A8, &qword_1CFCA6800);
    v53 = v28;
    v70 = &qword_1EC4EF2B8;
    v71 = &qword_1CFCA6810;
  }

  else
  {
    sub_1CFC9F538();
    sub_1CFC9E268();
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF2C0, &qword_1CFCA6818);
    if (a2 == 6)
    {
      (*(*(v35 - 8) + 16))(v21, v80, v35);
      v36 = &v21[*(v81 + 36)];
      v37 = v91;
      *(v36 + 4) = v90;
      *(v36 + 5) = v37;
      *(v36 + 6) = v92;
      v38 = v87;
      *v36 = v86;
      *(v36 + 1) = v38;
      v39 = v89;
      *(v36 + 2) = v88;
      *(v36 + 3) = v39;
      v40 = sub_1CFC9EBA8();
      sub_1CFC9DE18();
      v42 = v41;
      v44 = v43;
      v46 = v45;
      v48 = v47;
      sub_1CFBCCE88(v21, v31, &qword_1EC4EF2B0, &qword_1CFCA6808);
      v49 = &v31[*(v22 + 36)];
      *v49 = v40;
      *(v49 + 1) = v42;
      *(v49 + 2) = v44;
      *(v49 + 3) = v46;
      *(v49 + 4) = v48;
      v49[40] = 0;
      v50 = &qword_1EC4EF2B8;
      v51 = &qword_1CFCA6810;
      sub_1CFBCCE88(v31, v34, &qword_1EC4EF2B8, &qword_1CFCA6810);
      sub_1CFBA29FC(v34, v78, &qword_1EC4EF2B8, &qword_1CFCA6810);
      swift_storeEnumTagMultiPayload();
      sub_1CFC47128();
      v52 = v79;
      sub_1CFC9E798();
      sub_1CFBA29FC(v52, v84, &qword_1EC4EF2A8, &qword_1CFCA6800);
      swift_storeEnumTagMultiPayload();
      sub_1CFC470A4();
      sub_1CFC471B4();
      sub_1CFC9E798();
      sub_1CFBC2FB0(v52, &qword_1EC4EF2A8, &qword_1CFCA6800);
      v53 = v34;
    }

    else
    {
      (*(*(v35 - 8) + 16))(v12, v80, v35);
      v72 = &v12[*(v81 + 36)];
      v73 = v91;
      *(v72 + 4) = v90;
      *(v72 + 5) = v73;
      *(v72 + 6) = v92;
      v74 = v87;
      *v72 = v86;
      *(v72 + 1) = v74;
      v75 = v89;
      *(v72 + 2) = v88;
      *(v72 + 3) = v75;
      v50 = &qword_1EC4EF2B0;
      v51 = &qword_1CFCA6808;
      sub_1CFBCCE88(v12, v15, &qword_1EC4EF2B0, &qword_1CFCA6808);
      sub_1CFBA29FC(v15, v84, &qword_1EC4EF2B0, &qword_1CFCA6808);
      swift_storeEnumTagMultiPayload();
      sub_1CFC470A4();
      sub_1CFC471B4();
      sub_1CFC9E798();
      v53 = v15;
    }

    v70 = v50;
    v71 = v51;
  }

  return sub_1CFBC2FB0(v53, v70, v71);
}

uint64_t sub_1CFC457E4@<X0>(uint64_t a1@<X8>)
{
  v11 = v1[8];
  v12 = v1[9];
  v13 = *(v1 + 20);
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1[6];
  v10 = v1[7];
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  return sub_1CFC3EA20(a1);
}

uint64_t sub_1CFC45894(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1CFC47050();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1CFC458F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1CFC47050();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1CFC4595C()
{
  sub_1CFC47050();
  sub_1CFC9E768();
  __break(1u);
}

uint64_t sub_1CFC45984@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF290, &qword_1CFCA67E8);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t sub_1CFC45A9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = (*(*(a5(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

__n128 sub_1CFC45B6C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>, double a4@<D0>)
{
  sub_1CFC9F228();
  sub_1CFC9F228();
  sub_1CFC9F228();
  sub_1CFC9F228();
  sub_1CFC9F228();

  sub_1CFC9F228();
  v7 = swift_allocObject();
  swift_weakInit();
  sub_1CFC9F968();

  v8 = sub_1CFC9F958();
  v9 = swift_allocObject();
  v10 = MEMORY[0x1E69E85E0];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = v7;

  v11 = swift_allocObject();
  swift_weakInit();

  v12 = sub_1CFC9F958();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = v10;
  v13[4] = v11;

  sub_1CFC9F388();
  result = v16;
  *a3 = a1;
  *(a3 + 8) = a4;
  *(a3 + 16) = v16.n128_u8[0];
  *(a3 + 24) = v16.n128_u64[1];
  *(a3 + 32) = v16.n128_u8[0];
  *(a3 + 40) = v16.n128_u64[1];
  *(a3 + 48) = v16.n128_u8[0];
  *(a3 + 56) = v16.n128_u64[1];
  *(a3 + 64) = v16;
  *(a3 + 80) = v16.n128_u8[0];
  *(a3 + 88) = v16.n128_u64[1];
  *(a3 + 96) = a2;
  *(a3 + 104) = v16.n128_u8[0];
  *(a3 + 112) = v16.n128_u64[1];
  *(a3 + 120) = 0xD000000000000013;
  *(a3 + 128) = 0x80000001CFCAC5F0;
  *(a3 + 136) = v16;
  *(a3 + 152) = v17;
  *(a3 + 160) = v18;
  return result;
}

uint64_t sub_1CFC45E4C@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_1CFC3E7AC(a1);
}

uint64_t sub_1CFC45E58(uint64_t *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_1CFC3E9B0(a1);
}

__n128 __swift_memcpy168_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 20);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_1CFC45EA0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 168))
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

uint64_t sub_1CFC45EE8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 168) = 1;
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

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1CFC45FE0(double *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_1CFC400A4(v1 + 32, a1);
}

unint64_t sub_1CFC4603C()
{
  result = qword_1EE04D418;
  if (!qword_1EE04D418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EF158, &qword_1CFCA6400);
    sub_1CFC460F4();
    sub_1CFBA57C0(&qword_1EE04FFD0, &qword_1EC4EE3D0, &unk_1CFCA5DD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE04D418);
  }

  return result;
}

unint64_t sub_1CFC460F4()
{
  result = qword_1EE04D4B0;
  if (!qword_1EE04D4B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EF160, &unk_1CFCA6408);
    sub_1CFBA57C0(&qword_1EE04D220, &qword_1EC4EF138, &qword_1CFCA63B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE04D4B0);
  }

  return result;
}

uint64_t sub_1CFC461BC(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1CFC46240()
{
  result = qword_1EE04D3B8;
  if (!qword_1EE04D3B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EF170, &qword_1CFCA6420);
    sub_1CFC462F8();
    sub_1CFBA57C0(&qword_1EE04FFD0, &qword_1EC4EE3D0, &unk_1CFCA5DD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE04D3B8);
  }

  return result;
}

unint64_t sub_1CFC462F8()
{
  result = qword_1EE04D3E8;
  if (!qword_1EE04D3E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EF178, &qword_1CFCA6428);
    sub_1CFC463B0();
    sub_1CFBA57C0(&qword_1EE04D220, &qword_1EC4EF138, &qword_1CFCA63B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE04D3E8);
  }

  return result;
}

unint64_t sub_1CFC463B0()
{
  result = qword_1EE04D428;
  if (!qword_1EE04D428)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EF180, &qword_1CFCA6430);
    sub_1CFC46468();
    sub_1CFBA57C0(&qword_1EE04FFD8, &qword_1EC4EE2C0, &qword_1CFCA3F00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE04D428);
  }

  return result;
}

unint64_t sub_1CFC46468()
{
  result = qword_1EE04D4B8;
  if (!qword_1EE04D4B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EF188, &qword_1CFCA6438);
    sub_1CFBA57C0(&unk_1EE04D228, &qword_1EC4EF190, &unk_1CFCA6440);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE04D4B8);
  }

  return result;
}

unint64_t sub_1CFC4654C()
{
  result = qword_1EE04D4E0;
  if (!qword_1EE04D4E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EF1C0, &qword_1CFCA6478);
    sub_1CFBA57C0(&qword_1EE04D210, &qword_1EC4EF1D0, &qword_1CFCA6488);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE04D4E0);
  }

  return result;
}

unint64_t sub_1CFC46604()
{
  result = qword_1EE04D4D0;
  if (!qword_1EE04D4D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EF1B0, &qword_1CFCA6468);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EF1A0, &qword_1CFCA6458);
    sub_1CFC9E858();
    sub_1CFBA57C0(&qword_1EE04D1E0, &qword_1EC4EF1A0, &qword_1CFCA6458);
    sub_1CFC46D78(&qword_1EE04FFF0, MEMORY[0x1E697C720]);
    swift_getOpaqueTypeConformance2();
    sub_1CFC46D78(&qword_1EE04FFC8, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE04D4D0);
  }

  return result;
}

uint64_t sub_1CFC46790(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_1CFC46D78(&qword_1EE04FFC8, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1CFC46844()
{
  result = qword_1EC4EF1F0;
  if (!qword_1EC4EF1F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EF1F8, &qword_1CFCA64A0);
    sub_1CFC468FC();
    sub_1CFBA57C0(&qword_1EE04FFD0, &qword_1EC4EE3D0, &unk_1CFCA5DD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4EF1F0);
  }

  return result;
}

unint64_t sub_1CFC468FC()
{
  result = qword_1EC4EF200;
  if (!qword_1EC4EF200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EF208, &qword_1CFCA64A8);
    sub_1CFC460F4();
    sub_1CFBA57C0(&qword_1EE04FFD8, &qword_1EC4EE2C0, &qword_1CFCA3F00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4EF200);
  }

  return result;
}

unint64_t sub_1CFC469B4()
{
  result = qword_1EC4EF210;
  if (!qword_1EC4EF210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EF1E0, &qword_1CFCA6498);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EF218, &qword_1CFCA64B0);
    sub_1CFC9E528();
    sub_1CFBA57C0(&qword_1EC4EF220, &qword_1EC4EF218, &qword_1CFCA64B0);
    swift_getOpaqueTypeConformance2();
    sub_1CFBA57C0(&qword_1EC4EF228, &qword_1EC4EF230, &qword_1CFCA64B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4EF210);
  }

  return result;
}

unint64_t sub_1CFC46B60()
{
  result = qword_1EC4EF240;
  if (!qword_1EC4EF240)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EF238, &qword_1CFCA64F0);
    sub_1CFC46BE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4EF240);
  }

  return result;
}

unint64_t sub_1CFC46BE4()
{
  result = qword_1EC4EF248;
  if (!qword_1EC4EF248)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EF250, &unk_1CFCA64F8);
    sub_1CFBA57C0(&qword_1EE04D200, &qword_1EC4ED840, &qword_1CFCA29B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4EF248);
  }

  return result;
}

uint64_t objectdestroy_9Tm_0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  v4 = *(v0 + 72);

  v5 = *(v0 + 88);

  v6 = *(v0 + 104);

  v7 = *(v0 + 128);

  v8 = *(v0 + 144);

  v9 = *(v0 + 152);

  v10 = *(v0 + 160);

  v11 = *(v0 + 176);

  return MEMORY[0x1EEE6BDD0](v0, 184, 7);
}

uint64_t sub_1CFC46D34@<X0>(uint64_t *a1@<X8>)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);

  result = sub_1CFC9F1C8();
  *a1 = result;
  return result;
}

uint64_t sub_1CFC46D78(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1CFC46DF0()
{
  result = qword_1EC4EF270;
  if (!qword_1EC4EF270)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EF068, &qword_1CFCA61A8);
    sub_1CFC46E7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4EF270);
  }

  return result;
}

unint64_t sub_1CFC46E7C()
{
  result = qword_1EC4EF278;
  if (!qword_1EC4EF278)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EF060, &qword_1CFCA61A0);
    sub_1CFC46F08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4EF278);
  }

  return result;
}

unint64_t sub_1CFC46F08()
{
  result = qword_1EC4EF280;
  if (!qword_1EC4EF280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EF058, &qword_1CFCA6198);
    sub_1CFBA57C0(&qword_1EC4EF288, &qword_1EC4EF050, &qword_1CFCA6190);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4EF280);
  }

  return result;
}

unint64_t sub_1CFC46FE0()
{
  result = qword_1EE04D710;
  if (!qword_1EE04D710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE04D710);
  }

  return result;
}

unint64_t sub_1CFC47050()
{
  result = qword_1EE04D718[0];
  if (!qword_1EE04D718[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE04D718);
  }

  return result;
}

unint64_t sub_1CFC470A4()
{
  result = qword_1EE04D330;
  if (!qword_1EE04D330)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EF2A8, &qword_1CFCA6800);
    sub_1CFC47128();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE04D330);
  }

  return result;
}

unint64_t sub_1CFC47128()
{
  result = qword_1EE04D458;
  if (!qword_1EE04D458)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EF2B8, &qword_1CFCA6810);
    sub_1CFC471B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE04D458);
  }

  return result;
}

unint64_t sub_1CFC471B4()
{
  result = qword_1EE04D520;
  if (!qword_1EE04D520)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EF2B0, &qword_1CFCA6808);
    sub_1CFBA57C0(&qword_1EE04D2C8, &qword_1EC4EF2C0, &qword_1CFCA6818);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE04D520);
  }

  return result;
}

unint64_t sub_1CFC4726C()
{
  result = qword_1EE04D2F8;
  if (!qword_1EE04D2F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EF2C8, qword_1CFCA6820);
    sub_1CFC470A4();
    sub_1CFC471B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE04D2F8);
  }

  return result;
}

uint64_t sub_1CFC47330()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFC50, &qword_1CFCA4600);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1CFCA1DD0;
  sub_1CFCA0078();
  return v0;
}

uint64_t sub_1CFC473E0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF2E8, &unk_1CFCA6960);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v9[-v3];
  *(v0 + 16) = &unk_1F4C6AC70;
  *(v0 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + 48) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + 56) = 0;
  v5 = OBJC_IVAR____TtC10CallsAppUI33CallFilteringTipSectionController_cellRegistration;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF2D0, &qword_1CFCA68D8);
  v7 = *(*(v6 - 8) + 56);
  v7(v0 + v5, 1, 1, v6);
  swift_beginAccess();
  *(v0 + 56) = 0;
  swift_allocObject();
  swift_weakInit();
  sub_1CFC9DC68();
  sub_1CFC9FB68();
  v7(v4, 0, 1, v6);
  swift_beginAccess();
  sub_1CFC48094(v4, v0 + v5);
  swift_endAccess();
  return v0;
}

uint64_t sub_1CFC475AC(void *a1)
{
  v2 = sub_1CFC9F728();
  [a1 setAccessibilityIdentifier_];

  sub_1CFC9D1B8();
  sub_1CFC9D1A8();
  swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();
  swift_allocObject();
  swift_weakLoadStrong();

  swift_weakInit();

  sub_1CFC9D158();
}

uint64_t sub_1CFC47740()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    sub_1CFC9F968();
    v0[7] = sub_1CFC9F958();
    v4 = sub_1CFC9F938();

    return MEMORY[0x1EEE6DFA0](sub_1CFC4782C, v4, v3);
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_1CFC4782C()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);

  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(*(v0 + 48) + 32);
    ObjectType = swift_getObjectType();
    (*(v3 + 8))(ObjectType, v3);
    swift_unknownObjectRelease();
  }

  return MEMORY[0x1EEE6DFA0](sub_1CFC37540, 0, 0);
}

uint64_t sub_1CFC478F0()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    sub_1CFC9F968();
    v0[7] = sub_1CFC9F958();
    v4 = sub_1CFC9F938();

    return MEMORY[0x1EEE6DFA0](sub_1CFC479DC, v4, v3);
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_1CFC479DC()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);

  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(*(v0 + 48) + 32);
    ObjectType = swift_getObjectType();
    (*(v3 + 16))(ObjectType, v3);
    swift_unknownObjectRelease();
  }

  return MEMORY[0x1EEE6DFA0](sub_1CFC368A0, 0, 0);
}

uint64_t sub_1CFC47A80()
{
  v1 = v0[2];

  sub_1CFBA79B8((v0 + 3));
  sub_1CFBA79B8((v0 + 5));
  sub_1CFC48024(v0 + OBJC_IVAR____TtC10CallsAppUI33CallFilteringTipSectionController_cellRegistration);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CallFilteringTipSectionController()
{
  result = qword_1EE04E398;
  if (!qword_1EE04E398)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1CFC47B50()
{
  sub_1CFC47C04();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1CFC47C04()
{
  if (!qword_1EE04D0B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EF2D0, &qword_1CFCA68D8);
    v0 = sub_1CFC9FEB8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE04D0B8);
    }
  }
}

unint64_t sub_1CFC47C78(uint64_t a1)
{
  result = sub_1CFC47CA0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CFC47CA0()
{
  result = qword_1EC4EF2D8;
  if (!qword_1EC4EF2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4EF2D8);
  }

  return result;
}

unint64_t sub_1CFC47CF8()
{
  result = qword_1EC4EF2E0;
  if (!qword_1EC4EF2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4EF2E0);
  }

  return result;
}

void (*sub_1CFC47D4C(uint64_t *a1))(uint64_t a1, char a2)
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
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 48);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_1CFC36D38;
}

uint64_t sub_1CFC47DE0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF2E8, &unk_1CFCA6960);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v10[-v3];
  v5 = OBJC_IVAR____TtC10CallsAppUI33CallFilteringTipSectionController_cellRegistration;
  swift_beginAccess();
  sub_1CFC47FB4(v0 + v5, v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF2D0, &qword_1CFCA68D8);
  v7 = *(v6 - 8);
  result = (*(v7 + 48))(v4, 1, v6);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v10[7] = 0;
    sub_1CFC9DC68();
    v9 = sub_1CFC9FBA8();
    (*(v7 + 8))(v4, v6);
    return v9;
  }

  return result;
}

uint64_t sub_1CFC47F48()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = *(v0 + 32);
    ObjectType = swift_getObjectType();
    (*(v2 + 8))(ObjectType, v2);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1CFC47FB4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF2E8, &unk_1CFCA6960);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CFC48024(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF2E8, &unk_1CFCA6960);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1CFC48094(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF2E8, &unk_1CFCA6960);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CFC48104()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1CFBD4A14;

  return sub_1CFC47720(v0);
}

uint64_t sub_1CFC48194()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1CFBD431C;

  return sub_1CFC478D0(v0);
}

uint64_t sub_1CFC48224(uint64_t a1, uint64_t a2)
{
  v17[1] = a1;
  v3 = sub_1CFC9C608();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1CFC9D808();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4ED580, &qword_1CFCA2480);
  v13 = *(sub_1CFC9D7E8() - 8);
  v14 = *(v13 + 72);
  v15 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  *(swift_allocObject() + 16) = xmmword_1CFCA1DD0;
  (*(v4 + 16))(v7, a2, v3);
  sub_1CFC340B0(v7);
  sub_1CFC33F38();
  sub_1CFC9D7F8();

  type metadata accessor for FavoriteSensitiveBadge(0);
  sub_1CFBB0D7C(&qword_1EC4EF320, type metadata accessor for FavoriteSensitiveBadge);
  sub_1CFC9EE58();
  return (*(v9 + 8))(v12, v8);
}

double sub_1CFC484A4()
{
  swift_getKeyPath();
  sub_1CFBB0D7C(&qword_1EE04F8D0, type metadata accessor for FavoriteCellConfig);
  sub_1CFC9C158();

  return *(v0 + 16);
}

void sub_1CFC48544(double a1)
{
  if (*(v1 + 16) == a1)
  {
    *(v1 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1CFBB0D7C(&qword_1EE04F8D0, type metadata accessor for FavoriteCellConfig);
    sub_1CFC9C148();
  }
}

uint64_t sub_1CFC4865C@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v6 = v1;
  sub_1CFBB0D7C(&qword_1EE04F8D0, type metadata accessor for FavoriteCellConfig);
  sub_1CFC9C158();

  v3 = OBJC_IVAR____TtC10CallsAppUI18FavoriteCellConfig__tileStyle;
  swift_beginAccess();
  v4 = sub_1CFC9CE08();
  return (*(*(v4 - 8) + 16))(a1, v6 + v3, v4);
}

uint64_t sub_1CFC48754()
{
  swift_getKeyPath();
  sub_1CFBB0D7C(&qword_1EE04F8D0, type metadata accessor for FavoriteCellConfig);
  sub_1CFC9C158();

  return *(v0 + OBJC_IVAR____TtC10CallsAppUI18FavoriteCellConfig__isEditing);
}

uint64_t sub_1CFC487FC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1CFBB0D7C(&qword_1EE04F8D0, type metadata accessor for FavoriteCellConfig);
  sub_1CFC9C158();

  *a2 = *(v3 + OBJC_IVAR____TtC10CallsAppUI18FavoriteCellConfig__isEditing);
  return result;
}

uint64_t sub_1CFC488D4(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC10CallsAppUI18FavoriteCellConfig__isEditing) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC10CallsAppUI18FavoriteCellConfig__isEditing) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1CFBB0D7C(&qword_1EE04F8D0, type metadata accessor for FavoriteCellConfig);
    sub_1CFC9C148();
  }

  return result;
}

uint64_t sub_1CFC489FC()
{
  swift_getKeyPath();
  sub_1CFBB0D7C(&qword_1EE04F8D0, type metadata accessor for FavoriteCellConfig);
  sub_1CFC9C158();

  v1 = *(v0 + OBJC_IVAR____TtC10CallsAppUI18FavoriteCellConfig__draggingItemEntryId);
  v2 = *(v0 + OBJC_IVAR____TtC10CallsAppUI18FavoriteCellConfig__draggingItemEntryId + 8);

  return v1;
}

uint64_t sub_1CFC48AB8(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC10CallsAppUI18FavoriteCellConfig__draggingItemEntryId);
  v6 = *(v2 + OBJC_IVAR____TtC10CallsAppUI18FavoriteCellConfig__draggingItemEntryId + 8);
  if (v6)
  {
    if (a2)
    {
      if (*v5 == a1 && v6 == a2)
      {
        goto LABEL_8;
      }

      v8 = *(v2 + OBJC_IVAR____TtC10CallsAppUI18FavoriteCellConfig__draggingItemEntryId + 8);
      if (sub_1CFCA02B8())
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1CFBB0D7C(&qword_1EE04F8D0, type metadata accessor for FavoriteCellConfig);
    sub_1CFC9C148();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_1CFC48C34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a1 + OBJC_IVAR____TtC10CallsAppUI18FavoriteCellConfig__draggingItemEntryId);
  v4 = *(a1 + OBJC_IVAR____TtC10CallsAppUI18FavoriteCellConfig__draggingItemEntryId + 8);
  *v3 = a2;
  v3[1] = a3;
}

uint64_t sub_1CFC48C7C()
{
  v1 = OBJC_IVAR____TtC10CallsAppUI18FavoriteCellConfig__tileStyle;
  v2 = sub_1CFC9CE08();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC10CallsAppUI18FavoriteCellConfig__draggingItemEntryId + 8);

  v4 = OBJC_IVAR____TtC10CallsAppUI18FavoriteCellConfig___observationRegistrar;
  v5 = sub_1CFC9C198();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1CFC48D74()
{
  v1 = v0[4];
  v2 = (v0[2] + OBJC_IVAR____TtC10CallsAppUI18FavoriteCellConfig__draggingItemEntryId);
  v3 = v2[1];
  *v2 = v0[3];
  v2[1] = v1;
}

uint64_t sub_1CFC48E10()
{
  v1 = *(v0 + *(type metadata accessor for FavoriteCell(0) + 20));
  swift_getKeyPath();
  sub_1CFBB0D7C(&qword_1EE04F8D0, type metadata accessor for FavoriteCellConfig);
  sub_1CFC9C158();

  v2 = v1 + OBJC_IVAR____TtC10CallsAppUI18FavoriteCellConfig__draggingItemEntryId;
  v4 = *(v1 + OBJC_IVAR____TtC10CallsAppUI18FavoriteCellConfig__draggingItemEntryId);
  v3 = *(v2 + 8);

  v5 = sub_1CFC9C5D8();
  v6 = [v5 entryIdentifier];

  v7 = sub_1CFC9F768();
  v9 = v8;

  if (v3)
  {
    if (v4 == v7 && v3 == v9)
    {
      v11 = 1;
    }

    else
    {
      v11 = sub_1CFCA02B8();
    }
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

uint64_t sub_1CFC48F68()
{
  v0 = sub_1CFC9CDA8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFC9C5E8();
  sub_1CFC48E10();
  sub_1CFC9CD98();
  sub_1CFBB0D7C(&qword_1EE04D678, MEMORY[0x1E6995A20]);
  sub_1CFC9EFA8();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_1CFC490A4(uint64_t a1)
{
  v2 = type metadata accessor for FavoriteSensitiveBadge(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *v5 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE3A0, &qword_1CFCA5830);
  swift_storeEnumTagMultiPayload();
  v9 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF318, &qword_1CFCA6BD0);
  v6 = sub_1CFBB0D7C(&qword_1EC4EF320, type metadata accessor for FavoriteSensitiveBadge);
  sub_1CFC06888();
  v10 = v2;
  v11 = v6;
  swift_getOpaqueTypeConformance2();
  sub_1CFC9F098();
  return sub_1CFC4A438(v5);
}

uint64_t sub_1CFC4922C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v3 = sub_1CFC9E858();
  v41 = *(v3 - 8);
  v42 = v3;
  v4 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF370, &qword_1CFCA6C38);
  v40 = *(v7 - 8);
  v8 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v40 - v9;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF378, &qword_1CFCA6C40);
  v11 = *(v43 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v43);
  v14 = &v40 - v13;
  v15 = type metadata accessor for FavoriteCell(0);
  v16 = *(a1 + *(v15 + 20));
  swift_getKeyPath();
  v45 = v16;
  sub_1CFBB0D7C(&qword_1EE04F8D0, type metadata accessor for FavoriteCellConfig);
  sub_1CFC9C158();

  if (*(v16 + OBJC_IVAR____TtC10CallsAppUI18FavoriteCellConfig__isEditing) == 1 && (sub_1CFC48E10() & 1) == 0)
  {
    v20 = (a1 + *(v15 + 24));
    v21 = *v20;
    v22 = v20[1];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF380, &qword_1CFCA6C48);
    sub_1CFC4A164();
    sub_1CFC9F298();
    sub_1CFC9E848();
    sub_1CFBA57C0(&qword_1EC4EF3D0, &qword_1EC4EF370, &qword_1CFCA6C38);
    sub_1CFBB0D7C(&qword_1EE04FFF0, MEMORY[0x1E697C720]);
    v23 = v42;
    sub_1CFC9EEC8();
    (*(v41 + 8))(v6, v23);
    (*(v40 + 8))(v10, v7);
    v24 = sub_1CFC9F158();
    KeyPath = swift_getKeyPath();
    v26 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF3D8, &qword_1CFCA6CA0) + 36)];
    *v26 = KeyPath;
    v26[1] = v24;
    v27 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF3E0, &qword_1CFCA6CA8) + 36)];
    v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF3E8, &qword_1CFCA6CB0) + 28);
    v29 = *MEMORY[0x1E697DBA8];
    v30 = sub_1CFC9DE68();
    (*(*(v30 - 8) + 104))(v27 + v28, v29, v30);
    *v27 = swift_getKeyPath();
    v31 = sub_1CFC9DF88();
    *&v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF3F0, &qword_1CFCA6CE8) + 36)] = v31;
    v33 = v43;
    v32 = v44;
    __asm { FMOV            V0.2D, #-6.0 }

    *&v14[*(v43 + 36)] = _Q0;
    sub_1CFBCCE88(v14, v32, &qword_1EC4EF378, &qword_1CFCA6C40);
    v19 = v33;
    v18 = v32;
    v17 = 0;
  }

  else
  {
    v17 = 1;
    v19 = v43;
    v18 = v44;
  }

  return (*(v11 + 56))(v18, v17, 1, v19);
}

uint64_t sub_1CFC4970C@<X0>(uint64_t a1@<X8>)
{
  sub_1CFC9F538();
  sub_1CFC9DF68();
  v2 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF398, &qword_1CFCA6C50) + 36);
  sub_1CFC9F4B8();
  *a1 = v9;
  *(a1 + 8) = v10;
  *(a1 + 16) = v11;
  *(a1 + 24) = v12;
  *(a1 + 32) = v13;
  *(a1 + 40) = v14;
  v3 = sub_1CFC9F538();
  v5 = v4;
  v6 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF380, &qword_1CFCA6C48) + 36);
  sub_1CFC9F1A8();
  sub_1CFC9F028();

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF3C8, &qword_1CFCA6C68);
  v8 = (v6 + *(result + 36));
  *v8 = v3;
  v8[1] = v5;
  return result;
}

uint64_t sub_1CFC49844@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1CFC9E4E8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE3A0, &qword_1CFCA5830);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v17 - v11);
  sub_1CFC4A6A0(v2, &v17 - v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1CFC9D848();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_1CFC9FAE8();
    v16 = sub_1CFC9EB68();
    sub_1CFC9D858();

    sub_1CFC9E4D8();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_1CFC49A48@<X0>(void *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF410, &qword_1CFCA6D88);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = (&v15 - v4);
  v6 = sub_1CFC9D848();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFC49844(v10);
  sub_1CFC9D828();
  (*(v7 + 8))(v10, v6);
  v11 = sub_1CFC9D818();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v5, 1, v11) == 1)
  {
    sub_1CFC4A638(v5);
LABEL_6:
    v13 = 0;
    result = 0;
    goto LABEL_7;
  }

  if ((*(v12 + 88))(v5, v11) != *MEMORY[0x1E69CA878])
  {
    (*(v12 + 8))(v5, v11);
    goto LABEL_6;
  }

  (*(v12 + 96))(v5, v11);
  v13 = *v5;
  result = sub_1CFC9F168();
LABEL_7:
  *a1 = v13;
  a1[1] = result;
  return result;
}

uint64_t sub_1CFC49C50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v39 = sub_1CFC9C608();
  v6 = *(v39 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v38 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1CFC9CF88();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v40 = a2;
  sub_1CFBB0D7C(&qword_1EE04F8D0, type metadata accessor for FavoriteCellConfig);
  sub_1CFC9C158();

  v14 = *(a2 + 16);
  v15 = *(a1 + 16);
  if (v15)
  {
    v31 = v13;
    v32 = v10;
    v33 = v9;
    v34 = a3;
    v40 = MEMORY[0x1E69E7CC0];
    sub_1CFBB17DC(0, v15, 0);
    v16 = v40;
    v18 = *(v6 + 16);
    v17 = v6 + 16;
    v19 = a1 + ((*(v17 + 64) + 32) & ~*(v17 + 64));
    v36 = *(v17 + 56);
    v37 = v18;
    v35 = (v17 - 8);
    do
    {
      v20 = v38;
      v21 = v39;
      v22 = v17;
      v37(v38, v19, v39);
      v23 = sub_1CFC9C5B8();
      v25 = v24;
      v26 = sub_1CFC9C5E8();
      (*v35)(v20, v21);
      v40 = v16;
      v28 = *(v16 + 16);
      v27 = *(v16 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_1CFBB17DC((v27 > 1), v28 + 1, 1);
        v16 = v40;
      }

      *(v16 + 16) = v28 + 1;
      v29 = (v16 + 24 * v28);
      v29[4] = v23;
      v29[5] = v25;
      v29[6] = v26;
      v19 += v36;
      --v15;
      v17 = v22;
    }

    while (v15);
    v9 = v33;
    v13 = v31;
    v10 = v32;
  }

  sub_1CFC9CF78();
  sub_1CFBB0D7C(&unk_1EE04D650, MEMORY[0x1E6995B10]);
  sub_1CFC9EE48();
  return (*(v10 + 8))(v13, v9);
}

unint64_t sub_1CFC49FC8()
{
  result = qword_1EC4EF338;
  if (!qword_1EC4EF338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EF2F8, &qword_1CFCA6BB0);
    sub_1CFC4A080();
    sub_1CFBA57C0(&qword_1EE04D368, &qword_1EC4EF358, &qword_1CFCA6BF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4EF338);
  }

  return result;
}

unint64_t sub_1CFC4A080()
{
  result = qword_1EC4EF340;
  if (!qword_1EC4EF340)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EF2F0, &qword_1CFCA6BA8);
    sub_1CFBA57C0(&qword_1EC4EF348, &qword_1EC4EF350, &qword_1CFCA6BE8);
    sub_1CFBA57C0(&qword_1EE04D388, &qword_1EC4EF328, &qword_1CFCA6BD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4EF340);
  }

  return result;
}

unint64_t sub_1CFC4A164()
{
  result = qword_1EC4EF388;
  if (!qword_1EC4EF388)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EF380, &qword_1CFCA6C48);
    sub_1CFC4A21C();
    sub_1CFBA57C0(&qword_1EC4EF3C0, &qword_1EC4EF3C8, &qword_1CFCA6C68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4EF388);
  }

  return result;
}

unint64_t sub_1CFC4A21C()
{
  result = qword_1EC4EF390;
  if (!qword_1EC4EF390)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EF398, &qword_1CFCA6C50);
    sub_1CFC4A2D4();
    sub_1CFBA57C0(&qword_1EC4EF3B0, &qword_1EC4EF3B8, &qword_1CFCA6C60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4EF390);
  }

  return result;
}

unint64_t sub_1CFC4A2D4()
{
  result = qword_1EC4EF3A0;
  if (!qword_1EC4EF3A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EF3A8, &qword_1CFCA6C58);
    sub_1CFBB7460();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4EF3A0);
  }

  return result;
}

uint64_t sub_1CFC4A360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = (*(*(a5(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

uint64_t sub_1CFC4A438(uint64_t a1)
{
  v2 = type metadata accessor for FavoriteSensitiveBadge(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1CFC4A4BC()
{
  sub_1CFC34CF0();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_1CFC4A528()
{
  result = qword_1EC4EF408;
  if (!qword_1EC4EF408)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EF360, &qword_1CFCA6C28);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EF2F8, &qword_1CFCA6BB0);
    sub_1CFC49FC8();
    swift_getOpaqueTypeConformance2();
    sub_1CFBA57C0(&qword_1EE04D250, &qword_1EC4EF368, &qword_1CFCA6C30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4EF408);
  }

  return result;
}

uint64_t sub_1CFC4A638(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF410, &qword_1CFCA6D88);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1CFC4A6A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE3A0, &qword_1CFCA5830);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1CFC4A710()
{
  result = qword_1EC4EF418;
  if (!qword_1EC4EF418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EF420, qword_1CFCA6D90);
    sub_1CFC4A794();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4EF418);
  }

  return result;
}

unint64_t sub_1CFC4A794()
{
  result = qword_1EE04D4C0;
  if (!qword_1EE04D4C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EF428, &unk_1CFCA8F00);
    sub_1CFBA57C0(&qword_1EE04FFE0, &unk_1EC4ED090, &qword_1CFCA3F50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE04D4C0);
  }

  return result;
}

uint64_t type metadata accessor for SensitiveContentButtonBadgeModifier()
{
  result = qword_1EE04D948;
  if (!qword_1EE04D948)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1CFC4A8D4()
{
  sub_1CFC34CF0();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1CFC4A974(uint64_t a1)
{
  v3 = sub_1CFC9D7E8();
  v4 = *(v3 - 8);
  v48 = v3;
  v49 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v8 = sub_1CFC9FFD8();
  }

  else
  {
    v8 = *(a1 + 16);
  }

  v9 = MEMORY[0x1E69E7CC0];
  if (!v8)
  {
    return v9;
  }

  v58 = MEMORY[0x1E69E7CC0];
  sub_1CFBCAAAC(0, v8 & ~(v8 >> 63), 0);
  v9 = v58;
  if (v50)
  {
    result = sub_1CFC9FF88();
  }

  else
  {
    v12 = -1 << *(a1 + 32);
    result = sub_1CFC9FF68();
    v11 = *(a1 + 36);
  }

  v55 = result;
  v56 = v11;
  v57 = v50 != 0;
  if ((v8 & 0x8000000000000000) == 0)
  {
    v39 = v1;
    v13 = 0;
    v44 = v49 + 32;
    v41 = a1 + 56;
    v14 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 < 0)
    {
      v14 = a1;
    }

    v42 = v14;
    v40 = a1 + 64;
    v43 = xmmword_1CFCA1DD0;
    v46 = v7;
    v47 = a1;
    v45 = v8;
    while (v13 < v8)
    {
      if (__OFADD__(v13++, 1))
      {
        goto LABEL_39;
      }

      v17 = v55;
      v52 = v56;
      v53 = v9;
      v51 = v57;
      sub_1CFC4C66C(v55, v56, v57, a1, &qword_1EE04CF00, 0x1E69D8C00);
      v19 = v18;
      v20 = [v19 siriDisplayName];
      if (!v20)
      {
        v20 = [v19 value];
      }

      sub_1CFC9F768();

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4ED0E0, &qword_1CFCA1FF0);
      inited = swift_initStackObject();
      *(inited + 16) = v43;
      v22 = [v19 value];
      v23 = sub_1CFC9F768();
      v25 = v24;

      *(inited + 32) = v23;
      *(inited + 40) = v25;
      sub_1CFBB6864(inited);
      swift_setDeallocating();
      sub_1CFBB6A98(inited + 32);
      v26 = v46;
      sub_1CFC9D7D8();

      v9 = v53;
      v58 = v53;
      v28 = *(v53 + 16);
      v27 = *(v53 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_1CFBCAAAC(v27 > 1, v28 + 1, 1);
        v9 = v58;
      }

      *(v9 + 16) = v28 + 1;
      result = (*(v49 + 32))(v9 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v28, v26, v48);
      if (v50)
      {
        a1 = v47;
        v8 = v45;
        if (!v51)
        {
          goto LABEL_44;
        }

        if (sub_1CFC9FFA8())
        {
          swift_isUniquelyReferenced_nonNull_native();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF498, &qword_1CFCA6F80);
        v15 = sub_1CFC9F9F8();
        sub_1CFCA0038();
        result = v15(v54, 0);
        if (v13 == v8)
        {
LABEL_36:
          sub_1CFC4CEAC(v55, v56, v57);
          return v9;
        }
      }

      else
      {
        a1 = v47;
        v8 = v45;
        if (v51)
        {
          goto LABEL_45;
        }

        if ((v17 & 0x8000000000000000) != 0)
        {
          goto LABEL_40;
        }

        v29 = 1 << *(v47 + 32);
        if (v17 >= v29)
        {
          goto LABEL_40;
        }

        v30 = v17 >> 6;
        v31 = *(v41 + 8 * (v17 >> 6));
        if (((v31 >> v17) & 1) == 0)
        {
          goto LABEL_41;
        }

        if (*(v47 + 36) != v52)
        {
          goto LABEL_42;
        }

        v32 = v31 & (-2 << (v17 & 0x3F));
        if (v32)
        {
          v29 = __clz(__rbit64(v32)) | v17 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v33 = v30 << 6;
          v34 = v30 + 1;
          v35 = (v40 + 8 * v30);
          while (v34 < (v29 + 63) >> 6)
          {
            v37 = *v35++;
            v36 = v37;
            v33 += 64;
            ++v34;
            if (v37)
            {
              result = sub_1CFC4CEAC(v17, v52, 0);
              v29 = __clz(__rbit64(v36)) + v33;
              goto LABEL_35;
            }
          }

          result = sub_1CFC4CEAC(v17, v52, 0);
        }

LABEL_35:
        v38 = *(a1 + 36);
        v55 = v29;
        v56 = v38;
        v57 = 0;
        if (v13 == v8)
        {
          goto LABEL_36;
        }
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
  return result;
}

uint64_t sub_1CFC4AEA8(uint64_t a1)
{
  v26 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_1CFC9FFD8();
    result = MEMORY[0x1E69E7CC0];
    if (!v2)
    {
      return result;
    }

    v31 = MEMORY[0x1E69E7CC0];
    sub_1CFCA0168();
    result = sub_1CFC9FF88();
    v28 = result;
    v29 = v4;
    v30 = 1;
    if ((v2 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return result;
  }

  v31 = MEMORY[0x1E69E7CC0];
  sub_1CFCA0168();
  v5 = -1 << *(a1 + 32);
  result = sub_1CFC9FF68();
  v6 = *(a1 + 36);
  v28 = result;
  v29 = v6;
  v30 = 0;
LABEL_7:
  v7 = 0;
  while (v7 < v2)
  {
    if (__OFADD__(v7++, 1))
    {
      goto LABEL_31;
    }

    v11 = v28;
    v10 = v29;
    v12 = v30;
    sub_1CFC4C66C(v28, v29, v30, a1, &qword_1EC4ED538, 0x1E69D8B80);
    v14 = v13;
    v15 = [v13 handle];

    sub_1CFCA0138();
    v16 = *(v31 + 16);
    sub_1CFCA0178();
    sub_1CFCA0188();
    result = sub_1CFCA0148();
    if (v26)
    {
      if (!v12)
      {
        goto LABEL_35;
      }

      if (sub_1CFC9FFA8())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF4A0, &qword_1CFCA6F88);
      v8 = sub_1CFC9F9F8();
      sub_1CFCA0038();
      result = v8(v27, 0);
      if (v7 == v2)
      {
LABEL_28:
        sub_1CFC4CEAC(v28, v29, v30);
        return v31;
      }
    }

    else
    {
      if (v12)
      {
        goto LABEL_36;
      }

      if ((v11 & 0x8000000000000000) != 0)
      {
        goto LABEL_32;
      }

      v17 = 1 << *(a1 + 32);
      if (v11 >= v17)
      {
        goto LABEL_32;
      }

      v18 = v11 >> 6;
      v19 = *(a1 + 56 + 8 * (v11 >> 6));
      if (((v19 >> v11) & 1) == 0)
      {
        goto LABEL_33;
      }

      if (*(a1 + 36) != v10)
      {
        goto LABEL_34;
      }

      v20 = v19 & (-2 << (v11 & 0x3F));
      if (v20)
      {
        v17 = __clz(__rbit64(v20)) | v11 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v21 = v18 << 6;
        v22 = v18 + 1;
        v23 = (a1 + 64 + 8 * v18);
        while (v22 < (v17 + 63) >> 6)
        {
          v25 = *v23++;
          v24 = v25;
          v21 += 64;
          ++v22;
          if (v25)
          {
            result = sub_1CFC4CEAC(v11, v10, 0);
            v17 = __clz(__rbit64(v24)) + v21;
            goto LABEL_27;
          }
        }

        result = sub_1CFC4CEAC(v11, v10, 0);
      }

LABEL_27:
      v28 = v17;
      v29 = v10;
      v30 = 0;
      if (v7 == v2)
      {
        goto LABEL_28;
      }
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_1CFC4B1D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v85 = a1;
  v90 = a2;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF430, &qword_1CFCA6ED0);
  v2 = *(*(v82 - 8) + 64);
  MEMORY[0x1EEE9AC00](v82);
  v4 = &v72 - v3;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF438, &qword_1CFCA6ED8);
  v5 = *(*(v89 - 8) + 64);
  MEMORY[0x1EEE9AC00](v89);
  v83 = &v72 - v6;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF440, &qword_1CFCA6EE0);
  v7 = *(*(v80 - 8) + 64);
  MEMORY[0x1EEE9AC00](v80);
  v74 = &v72 - v8;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF448, &qword_1CFCA6EE8);
  v9 = *(*(v86 - 8) + 64);
  MEMORY[0x1EEE9AC00](v86);
  v88 = &v72 - v10;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF450, &qword_1CFCA6EF0);
  v11 = *(*(v78 - 8) + 64);
  MEMORY[0x1EEE9AC00](v78);
  v79 = &v72 - v12;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF458, &qword_1CFCA6EF8);
  v13 = *(*(v87 - 8) + 64);
  MEMORY[0x1EEE9AC00](v87);
  v81 = &v72 - v14;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF460, &unk_1CFCA6F00);
  v15 = *(*(v77 - 8) + 64);
  MEMORY[0x1EEE9AC00](v77);
  v75 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v76 = &v72 - v18;
  v19 = sub_1CFC9D848();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v72 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF410, &qword_1CFCA6D88);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v27 = (&v72 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v72 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v72 - v32;
  swift_getKeyPath();
  v34 = sub_1CFC9CC28();

  if (v34)
  {
    v35 = v84;
    sub_1CFC4C250(&qword_1EC4EE3A0, &qword_1CFCA5830, MEMORY[0x1E69CA888], v23);
    sub_1CFC9D828();
    (*(v20 + 8))(v23, v19);
  }

  else
  {
    v36 = sub_1CFC9D818();
    (*(*(v36 - 8) + 56))(v33, 1, 1, v36);
    v35 = v84;
  }

  v37 = v30;
  sub_1CFBA29FC(v33, v30, &qword_1EC4EF410, &qword_1CFCA6D88);
  v38 = sub_1CFC9D818();
  v39 = *(v38 - 8);
  if ((*(v39 + 48))(v30, 1, v38) == 1)
  {
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF468, &qword_1CFCA6F10);
    (*(*(v40 - 8) + 16))(v4, v85, v40);
    goto LABEL_6;
  }

  sub_1CFBA29FC(v30, v27, &qword_1EC4EF410, &qword_1CFCA6D88);
  v46 = (*(v39 + 88))(v27, v38);
  if (v46 != *MEMORY[0x1E69CA878])
  {
    if (v46 == *MEMORY[0x1E69CA880])
    {
      KeyPath = swift_getKeyPath();
      v53 = swift_allocObject();
      *(v53 + 16) = 1;
      v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF468, &qword_1CFCA6F10);
      v55 = v74;
      (*(*(v54 - 8) + 16))(v74, v85, v54);
      v56 = v79;
      v57 = (v55 + *(v80 + 36));
      *v57 = KeyPath;
      v57[1] = sub_1CFBB9A70;
      v57[2] = v53;
      sub_1CFBA29FC(v55, v56, &qword_1EC4EF440, &qword_1CFCA6EE0);
      swift_storeEnumTagMultiPayload();
      sub_1CFC4BFB0();
      sub_1CFC4C094();
      v58 = v81;
      sub_1CFC9E798();
      sub_1CFBA29FC(v58, v88, &qword_1EC4EF458, &qword_1CFCA6EF8);
      swift_storeEnumTagMultiPayload();
      sub_1CFC4BF24();
      sub_1CFC4C178();
      sub_1CFC9E798();
      sub_1CFBC2FB0(v58, &qword_1EC4EF458, &qword_1CFCA6EF8);
      v42 = v55;
      v43 = &qword_1EC4EF440;
      v44 = &qword_1CFCA6EE0;
      goto LABEL_7;
    }

    (*(v39 + 8))(v27, v38);
    v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF468, &qword_1CFCA6F10);
    (*(*(v71 - 8) + 16))(v4, v85, v71);
LABEL_6:
    swift_storeEnumTagMultiPayload();
    sub_1CFBA57C0(&qword_1EE04D298, &qword_1EC4EF468, &qword_1CFCA6F10);
    v41 = v83;
    sub_1CFC9E798();
    sub_1CFBA29FC(v41, v88, &qword_1EC4EF438, &qword_1CFCA6ED8);
    swift_storeEnumTagMultiPayload();
    sub_1CFC4BF24();
    sub_1CFC4C178();
    sub_1CFC9E798();
    v42 = v41;
    v43 = &qword_1EC4EF438;
    v44 = &qword_1CFCA6ED8;
LABEL_7:
    sub_1CFBC2FB0(v42, v43, v44);
    v45 = v33;
    goto LABEL_15;
  }

  (*(v39 + 96))(v27, v38);
  v47 = *v27;
  v48 = *(v35 + *(type metadata accessor for SensitiveContentButtonBadgeModifier() + 20));
  v73 = v33;
  if (v48)
  {
    v49 = -10.0;
    v50 = sub_1CFC9F518();
  }

  else
  {
    v49 = 10.0;
    v50 = sub_1CFC9F528();
  }

  v59 = v50;
  v60 = v51;
  v61 = sub_1CFC9F168();

  sub_1CFC9F538();
  sub_1CFC9DF68();
  *&v105[38] = v109;
  *&v105[22] = v108;
  *&v105[6] = v107;
  *(v93 + 10) = *v105;
  v106 = 1;
  *&v92 = v47;
  *(&v92 + 1) = v61;
  *&v93[0] = 0;
  WORD4(v93[0]) = 1;
  *(&v93[1] + 10) = *&v105[16];
  *(&v93[2] + 10) = *&v105[32];
  *(&v93[3] + 1) = *(&v109 + 1);
  v94 = *&v49;
  *&v95 = v59;
  *(&v95 + 1) = v60;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF468, &qword_1CFCA6F10);
  v63 = v75;
  (*(*(v62 - 8) + 16))(v75, v85, v62);
  v64 = (v63 + *(v77 + 36));
  v65 = v94;
  v64[4] = v93[3];
  v64[5] = v65;
  v64[6] = v95;
  v66 = v93[0];
  *v64 = v92;
  v64[1] = v66;
  v67 = v93[2];
  v64[2] = v93[1];
  v64[3] = v67;
  *&v100[14] = *&v105[46];
  *v100 = *&v105[32];
  v99 = *&v105[16];
  v96[0] = v47;
  v96[1] = v61;
  v96[2] = 0;
  v97 = 1;
  v98 = *v105;
  v101 = v49;
  v102 = 0;
  v103 = v59;
  v104 = v60;
  sub_1CFBA29FC(&v92, &v91, &qword_1EC4EF470, &qword_1CFCA6F18);
  sub_1CFBC2FB0(v96, &qword_1EC4EF470, &qword_1CFCA6F18);
  v68 = v76;
  sub_1CFBCCE88(v63, v76, &qword_1EC4EF460, &unk_1CFCA6F00);
  sub_1CFBA29FC(v68, v79, &qword_1EC4EF460, &unk_1CFCA6F00);
  swift_storeEnumTagMultiPayload();
  sub_1CFC4BFB0();
  sub_1CFC4C094();
  v69 = v81;
  sub_1CFC9E798();
  sub_1CFBA29FC(v69, v88, &qword_1EC4EF458, &qword_1CFCA6EF8);
  swift_storeEnumTagMultiPayload();
  sub_1CFC4BF24();
  sub_1CFC4C178();
  sub_1CFC9E798();

  sub_1CFBC2FB0(v69, &qword_1EC4EF458, &qword_1CFCA6EF8);
  sub_1CFBC2FB0(v68, &qword_1EC4EF460, &unk_1CFCA6F00);
  v45 = v73;
LABEL_15:
  sub_1CFBC2FB0(v45, &qword_1EC4EF410, &qword_1CFCA6D88);
  return sub_1CFBC2FB0(v37, &qword_1EC4EF410, &qword_1CFCA6D88);
}

void sub_1CFC4BDB0(id a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    v4 = [a1 siriDisplayName];
    if (!v4)
    {
      v4 = [a1 value];
    }

    v5 = v4;
    sub_1CFC9F768();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4ED0E0, &qword_1CFCA1FF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CFCA1DD0;
  v7 = [a1 value];
  v8 = sub_1CFC9F768();
  v10 = v9;

  *(inited + 32) = v8;
  *(inited + 40) = v10;
  sub_1CFBB6864(inited);
  swift_setDeallocating();
  sub_1CFBB6A98(inited + 32);
  sub_1CFC9D7D8();
}

uint64_t sub_1CFC4BEE0()
{
  swift_getKeyPath();
  v0 = sub_1CFC9CC28();

  return v0 & 1;
}

unint64_t sub_1CFC4BF24()
{
  result = qword_1EE04D338;
  if (!qword_1EE04D338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EF458, &qword_1CFCA6EF8);
    sub_1CFC4BFB0();
    sub_1CFC4C094();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE04D338);
  }

  return result;
}

unint64_t sub_1CFC4BFB0()
{
  result = qword_1EE04D4E8;
  if (!qword_1EE04D4E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EF460, &unk_1CFCA6F00);
    sub_1CFBA57C0(&qword_1EE04D298, &qword_1EC4EF468, &qword_1CFCA6F10);
    sub_1CFBA57C0(&qword_1EE04D380, &qword_1EC4EF470, &qword_1CFCA6F18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE04D4E8);
  }

  return result;
}

unint64_t sub_1CFC4C094()
{
  result = qword_1EE04D4F0;
  if (!qword_1EE04D4F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EF440, &qword_1CFCA6EE0);
    sub_1CFBA57C0(&qword_1EE04D298, &qword_1EC4EF468, &qword_1CFCA6F10);
    sub_1CFBA57C0(&qword_1EE04D218, &qword_1EC4EE440, &qword_1CFCA6F20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE04D4F0);
  }

  return result;
}

unint64_t sub_1CFC4C178()
{
  result = qword_1EE04D350;
  if (!qword_1EE04D350)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EF438, &qword_1CFCA6ED8);
    sub_1CFBA57C0(&qword_1EE04D298, &qword_1EC4EF468, &qword_1CFCA6F10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE04D350);
  }

  return result;
}

uint64_t sub_1CFC4C250@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = v4;
  v10 = sub_1CFC9E4E8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = (&v23 - v17);
  sub_1CFBA29FC(v8, &v23 - v17, a1, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = a3(0);
    return (*(*(v19 - 8) + 32))(a4, v18, v19);
  }

  else
  {
    v21 = *v18;
    sub_1CFC9FAE8();
    v22 = sub_1CFC9EB68();
    sub_1CFC9D858();

    sub_1CFC9E4D8();
    swift_getAtKeyPath();

    return (*(v11 + 8))(v14, v10);
  }
}

uint64_t sub_1CFC4C450@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1CFC9E4E8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE890, &qword_1CFCA5598);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v16 - v11);
  sub_1CFBA29FC(v2, &v16 - v11, &qword_1EC4EE890, &qword_1CFCA5598);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1CFBCCE88(v12, a1, &qword_1EC4EE898, &qword_1CFCA55A0);
  }

  v14 = *v12;
  sub_1CFC9FAE8();
  v15 = sub_1CFC9EB68();
  sub_1CFC9D858();

  sub_1CFC9E4D8();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v8, v4);
}

void sub_1CFC4C66C(unint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t *a5, uint64_t *a6)
{
  v10 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v11 = a4;
      }

      else
      {
        v11 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x1D3872530](a1, a2, v11);
      sub_1CFBA2D80(0, a5, a6);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_1CFBA2D80(0, a5, a6);
    if (sub_1CFC9FFB8() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_1CFC9FFC8();
    swift_dynamicCast();
    v6 = v20;
    v12 = *(a4 + 40);
    v13 = sub_1CFC9FDD8();
    v14 = -1 << *(a4 + 32);
    v10 = v13 & ~v14;
    if ((*(a4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
    {
      v15 = ~v14;
      do
      {
        v16 = *(*(a4 + 48) + 8 * v10);
        v17 = sub_1CFC9FDE8();

        if (v17)
        {
          goto LABEL_19;
        }

        v10 = (v10 + 1) & v15;
      }

      while (((*(a4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
    }

    __break(1u);
  }

  if ((v10 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v10)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v10 >> 6) + 56) >> v10) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v18 = *(*(a4 + 48) + 8 * v10);

  v19 = v18;
}

uint64_t sub_1CFC4C884(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v63 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF478, &qword_1CFCA6F58);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v48 - v8;
  v64 = sub_1CFC9D7E8();
  v10 = *(v64 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v64);
  v52 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v49 = &v48 - v14;
  v54 = v3;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1CFC9FF98();
    sub_1CFBA2D80(0, &unk_1EE04CF18, 0x1E6993578);
    sub_1CFC4CE54(&qword_1EE04CF10, &unk_1EE04CF18, 0x1E6993578);
    result = sub_1CFC9FA08();
    a1 = v67;
    v16 = v68;
    v18 = v69;
    v17 = v70;
    v19 = v71;
  }

  else
  {
    v20 = -1 << *(a1 + 32);
    v16 = a1 + 56;
    v18 = ~v20;
    v21 = -v20;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v19 = v22 & *(a1 + 56);

    v17 = 0;
  }

  v53 = v18;
  v23 = (v18 + 64) >> 6;
  v57 = (v10 + 48);
  v58 = (v10 + 56);
  v55 = MEMORY[0x1E69E7CC0];
  v50 = v10;
  v51 = (v10 + 32);
  v56 = xmmword_1CFCA1DD0;
  v61 = a1;
  v62 = v9;
  v59 = v23;
  v60 = v16;
LABEL_8:
  v24 = v17;
  if (a1 < 0)
  {
    do
    {
      v29 = sub_1CFCA0018();
      if (!v29)
      {
        goto LABEL_27;
      }

      v66 = v29;
      sub_1CFBA2D80(0, &unk_1EE04CF18, 0x1E6993578);
      swift_dynamicCast();
      v28 = v72;
      v17 = v24;
      v27 = v19;
      if (!v72)
      {
        goto LABEL_27;
      }

LABEL_17:
      v65 = v27;
      v30 = v28;
      v31 = v30;
      if (!a3)
      {
        v32 = [v30 value];
        sub_1CFC9F768();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4ED0E0, &qword_1CFCA1FF0);
      inited = swift_initStackObject();
      *(inited + 16) = v56;
      v34 = a3;

      v35 = [v31 value];
      v36 = sub_1CFC9F768();
      v38 = v37;

      *(inited + 32) = v36;
      *(inited + 40) = v38;
      sub_1CFBB6864(inited);
      swift_setDeallocating();
      sub_1CFBB6A98(inited + 32);
      v39 = v62;
      sub_1CFC9D7D8();

      v40 = v64;
      (*v58)(v39, 0, 1, v64);

      if ((*v57)(v39, 1, v40) != 1)
      {
        v41 = *v51;
        v42 = v49;
        v43 = v64;
        (*v51)(v49, v39, v64);
        v41(v52, v42, v43);
        v44 = v55;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v44 = sub_1CFBB6DB4(0, v44[2] + 1, 1, v44);
        }

        a3 = v34;
        v46 = v44[2];
        v45 = v44[3];
        v16 = v60;
        if (v46 >= v45 >> 1)
        {
          v44 = sub_1CFBB6DB4(v45 > 1, v46 + 1, 1, v44);
        }

        v44[2] = v46 + 1;
        v47 = (*(v50 + 80) + 32) & ~*(v50 + 80);
        v55 = v44;
        result = (v41)(v44 + v47 + *(v50 + 72) * v46, v52, v64);
        a1 = v61;
        v23 = v59;
        v19 = v65;
        goto LABEL_8;
      }

      result = sub_1CFBC2FB0(v39, &qword_1EC4EF478, &qword_1CFCA6F58);
      v24 = v17;
      v19 = v65;
      a3 = v34;
      v16 = v60;
      a1 = v61;
      v23 = v59;
    }

    while (v61 < 0);
  }

  v25 = v24;
  v26 = v19;
  v17 = v24;
  if (v19)
  {
LABEL_13:
    v27 = (v26 - 1) & v26;
    v28 = *(*(a1 + 48) + ((v17 << 9) | (8 * __clz(__rbit64(v26)))));
    if (v28)
    {
      goto LABEL_17;
    }

LABEL_27:
    sub_1CFC4CEA4();
    return v55;
  }

  while (1)
  {
    v17 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v17 >= v23)
    {
      goto LABEL_27;
    }

    v26 = *(v16 + 8 * v17);
    ++v25;
    if (v26)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1CFC4CE54(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1CFBA2D80(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1CFC4CEAC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

unint64_t sub_1CFC4CEB8()
{
  result = qword_1EE04D300;
  if (!qword_1EE04D300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EF4A8, &unk_1CFCA6F90);
    sub_1CFC4BF24();
    sub_1CFC4C178();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE04D300);
  }

  return result;
}

uint64_t sub_1CFC4CF94@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1CFC55814(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel);
  sub_1CFC9C158();

  *a3 = *(v5 + *a2);
  return result;
}

uint64_t sub_1CFC4D070@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1CFC55814(&qword_1EE04D8E0, type metadata accessor for VoicemailSmartActionsBannerViewModel);
  sub_1CFC9C158();

  *a2 = *(v3 + 48);
  return result;
}

double sub_1CFC4D140@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1CFC9E4E8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1CFC9E678();
  v39 = 0;
  sub_1CFC4D6F4(a2, a1, &v42);
  v51 = v44;
  v52 = v45;
  v49 = v42;
  v50 = v43;
  v54[1] = v43;
  v54[2] = v44;
  v54[3] = v45;
  v54[4] = v46;
  v53 = v46;
  v54[0] = v42;
  sub_1CFBA29FC(&v49, &v37, &qword_1EC4EF538, &qword_1CFCA7060);
  sub_1CFBC2FB0(v54, &qword_1EC4EF538, &qword_1CFCA7060);
  *&v38[23] = v50;
  *&v38[39] = v51;
  *&v38[55] = v52;
  *&v38[71] = v53;
  *&v38[7] = v49;
  v11 = v39;
  sub_1CFC9CD28();
  v12 = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EF540, &qword_1CFCA7068);
  sub_1CFC9CD28();
  v13 = BYTE8(v42);
  v14 = 0uLL;
  v15 = 0uLL;
  if ((BYTE8(v42) & 1) == 0)
  {
    sub_1CFC9DE18();
    *(&v15 + 1) = v16;
    *(&v14 + 1) = v17;
  }

  v32 = v15;
  v33 = v14;
  v34 = v13;
  v40 = v13;
  sub_1CFC9F538();
  sub_1CFC9E268();
  *&v41[55] = v45;
  *&v41[71] = v46;
  *&v41[87] = v47;
  *&v41[103] = v48;
  *&v41[7] = v42;
  *&v41[23] = v43;
  *&v41[39] = v44;
  v18 = *a2;
  if (*(a2 + 8) == 1)
  {
    v36 = v18 & 1;
  }

  else
  {
    v19 = *a2;

    sub_1CFC9FAE8();
    v20 = sub_1CFC9EB68();
    v31 = v6;
    v21 = v11;
    v22 = v20;
    sub_1CFC9D858();

    v11 = v21;
    sub_1CFC9E4D8();
    swift_getAtKeyPath();
    sub_1CFC07CFC(v18, 0);
    (*(v7 + 8))(v10, v31);
  }

  sub_1CFBA2D80(0, &qword_1EE04CF28, 0x1E69DC888);
  sub_1CFC9CD28();
  v23 = sub_1CFC9F0C8();
  v24 = sub_1CFC9EBB8();
  *(a3 + 49) = *&v38[32];
  v25 = *&v38[64];
  *(a3 + 65) = *&v38[48];
  *(a3 + 81) = v25;
  v26 = *&v38[16];
  *(a3 + 17) = *v38;
  *a3 = v35;
  *(a3 + 8) = 0;
  *(a3 + 16) = v11;
  *(a3 + 96) = *&v38[79];
  *(a3 + 33) = v26;
  *(a3 + 104) = v12;
  v27 = v32;
  *(a3 + 112) = v33;
  *(a3 + 128) = v27;
  *(a3 + 144) = v34;
  *(a3 + 209) = *&v41[64];
  *(a3 + 225) = *&v41[80];
  *(a3 + 241) = *&v41[96];
  v28 = *&v41[111];
  *(a3 + 145) = *v41;
  *(a3 + 161) = *&v41[16];
  *(a3 + 177) = *&v41[32];
  result = *&v41[48];
  *(a3 + 193) = *&v41[48];
  *(a3 + 256) = v28;
  *(a3 + 264) = v23;
  *(a3 + 272) = v24;
  return result;
}

uint64_t sub_1CFC4D6F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v26 = a2;
  v27 = a1;
  v5 = type metadata accessor for VoicemailDetailContainerView();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = *(v8 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF520, &qword_1CFCA6FD8);
  sub_1CFC9F408();
  v10 = v29;
  sub_1CFBE57FC(a1, &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v6 + 80);
  v12 = swift_allocObject();
  v28 = v12;
  *(v12 + 16) = v10;
  v25 = type metadata accessor for VoicemailDetailContainerView;
  sub_1CFC5434C(&v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + ((v11 + 24) & ~v11), type metadata accessor for VoicemailDetailContainerView);
  v13 = objc_opt_self();

  v14 = [v13 currentDevice];
  v15 = [v14 userInterfaceIdiom];

  v16 = [v13 currentDevice];
  v17 = [v16 userInterfaceIdiom];

  sub_1CFC9DFA8();
  v19 = v18;
  sub_1CFC9CD28();
  v20 = v29;
  sub_1CFBE57FC(v27, &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = swift_allocObject();
  result = sub_1CFC5434C(&v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + ((v11 + 16) & ~v11), v25);
  v23 = v28;
  *a3 = sub_1CFC54248;
  *(a3 + 8) = v23;
  *(a3 + 16) = v15 == 0;
  *(a3 + 24) = v17;
  *(a3 + 32) = v19;
  *(a3 + 40) = v20;
  *(a3 + 48) = sub_1CFC542CC;
  *(a3 + 56) = v21;
  *(a3 + 64) = 0;
  *(a3 + 72) = 0;
  return result;
}

uint64_t sub_1CFC4DA04()
{
  v0 = *(type metadata accessor for VoicemailDetailContainerView() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF520, &qword_1CFCA6FD8);
  sub_1CFC9F408();
  sub_1CFC2510C();
}

uint64_t sub_1CFC4DA68@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1CFC9EBF8();
  *a1 = result;
  return result;
}

uint64_t sub_1CFC4DA94@<X0>(_BYTE *a1@<X8>)
{
  v2 = sub_1CFC9EBA8();
  v3 = sub_1CFC9EBF8();
  sub_1CFC9EBF8();
  result = sub_1CFC9EBF8();
  if (result != v2)
  {
    result = sub_1CFC9EBF8();
    v3 = result;
  }

  *a1 = v3;
  a1[1] = 0;
  return result;
}

id sub_1CFC4DB0C@<X0>(void *a1@<X8>)
{
  result = [objc_opt_self() systemBackgroundColor];
  *a1 = result;
  return result;
}

id sub_1CFC4DB5C@<X0>(SEL *a1@<X0>, void *a2@<X8>)
{
  result = [objc_opt_self() *a1];
  *a2 = result;
  return result;
}

uint64_t sub_1CFC4DBA0()
{
  v0 = *(type metadata accessor for VoicemailDetailContainerView() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF520, &qword_1CFCA6FD8);
  sub_1CFC9F408();
  v1 = sub_1CFC213E4();

  if (!v1)
  {
    return 0;
  }

  type metadata accessor for BundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_1CFC9BE28();
  v6 = v5;

  MEMORY[0x1D3871D30](v4, v6);

  MEMORY[0x1D3871D30](41, 0xE100000000000000);
  return 40;
}

uint64_t sub_1CFC4DCE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v51 = a4;
  v7 = sub_1CFC9E7B8();
  v52 = *(v7 - 8);
  v53 = v7;
  v8 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v50 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1CFC9EA18();
  v48 = *(v10 - 8);
  v49 = v10;
  v11 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v41 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_1CFC9E8E8();
  v13 = *(v42 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF550, &qword_1CFCA7070);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v40 - v20;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF558, &qword_1CFCA7078);
  v43 = *(v45 - 8);
  v22 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v24 = &v40 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF560, &qword_1CFCA7080);
  v46 = *(v25 - 8);
  v47 = v25;
  v26 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v44 = &v40 - v27;
  v54 = a2;
  v55 = a3;
  v56 = a1;
  sub_1CFC9EB98();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF568, &qword_1CFCA7088);
  v28 = v41;
  sub_1CFBA57C0(&qword_1EE04D150, &qword_1EC4EF568, &qword_1CFCA7088);
  sub_1CFC9DE38();
  v29 = sub_1CFC9EBD8();
  sub_1CFC9E8D8();
  v30 = sub_1CFBA57C0(&unk_1EE04D588, &qword_1EC4EF550, &qword_1CFCA7070);
  MEMORY[0x1D3871470](v29, 0x4049000000000000, 0, v16, v17, v30);
  (*(v13 + 8))(v16, v42);
  (*(v18 + 8))(v21, v17);
  sub_1CFC9E7A8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF570, &qword_1CFCA7090);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CFCA1DC0;
  LOBYTE(v29) = sub_1CFC9EB98();
  *(inited + 32) = v29;
  v32 = sub_1CFC9EB78();
  *(inited + 33) = v32;
  sub_1CFC9EB88();
  sub_1CFC9EB88();
  if (sub_1CFC9EB88() != v29)
  {
    sub_1CFC9EB88();
  }

  sub_1CFC9EB88();
  if (sub_1CFC9EB88() != v32)
  {
    sub_1CFC9EB88();
  }

  v33 = v45;
  v34 = v44;
  v57 = v17;
  v58 = v30;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1CFC9EF58();
  (*(v48 + 8))(v28, v49);
  (*(v43 + 8))(v24, v33);
  v36 = v50;
  sub_1CFC9E7A8();
  v37 = sub_1CFC9EB98();
  sub_1CFC9EB88();
  sub_1CFC9EB88();
  if (sub_1CFC9EB88() != v37)
  {
    sub_1CFC9EB88();
  }

  v57 = v33;
  v58 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v38 = v47;
  sub_1CFC9EFD8();
  (*(v52 + 8))(v36, v53);
  return (*(v46 + 8))(v34, v38);
}

uint64_t sub_1CFC4E350@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF578, &qword_1CFCA7098);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v30 - v11;
  v13 = type metadata accessor for VoicemailDetailContainerView();
  v14 = *(a2 + *(v13 + 36));
  v15 = *(a2 + *(v13 + 32));

  v16 = v15;
  sub_1CFC9DFA8();
  sub_1CFC45B6C(a1, v16, &v31, v17);
  *v12 = sub_1CFC9E688();
  *(v12 + 1) = 0;
  v12[16] = 1;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF580, &qword_1CFCA70A0);
  sub_1CFC4E5E0(a1, a2, &v12[*(v18 + 44)]);
  sub_1CFBA29FC(v12, v9, &qword_1EC4EF578, &qword_1CFCA7098);
  v19 = v40;
  v42[8] = v39;
  v42[9] = v40;
  v20 = v35;
  v21 = v36;
  v42[4] = v35;
  v42[5] = v36;
  v22 = v38;
  v23 = v37;
  v42[6] = v37;
  v42[7] = v38;
  v24 = v31;
  v25 = v32;
  v42[0] = v31;
  v42[1] = v32;
  v26 = v34;
  v27 = v33;
  v42[2] = v33;
  v42[3] = v34;
  *(a3 + 128) = v39;
  *(a3 + 144) = v19;
  *(a3 + 64) = v20;
  *(a3 + 80) = v21;
  *(a3 + 96) = v23;
  *(a3 + 112) = v22;
  *a3 = v24;
  *(a3 + 16) = v25;
  v43 = v41;
  *(a3 + 160) = v41;
  *(a3 + 32) = v27;
  *(a3 + 48) = v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF588, &qword_1CFCA70A8);
  sub_1CFBA29FC(v9, a3 + *(v28 + 48), &qword_1EC4EF578, &qword_1CFCA7098);
  sub_1CFC45FA8(v42, v44);
  sub_1CFBC2FB0(v12, &qword_1EC4EF578, &qword_1CFCA7098);
  sub_1CFBC2FB0(v9, &qword_1EC4EF578, &qword_1CFCA7098);
  v44[8] = v39;
  v44[9] = v40;
  v45 = v41;
  v44[4] = v35;
  v44[5] = v36;
  v44[6] = v37;
  v44[7] = v38;
  v44[0] = v31;
  v44[1] = v32;
  v44[2] = v33;
  v44[3] = v34;
  return sub_1CFC542F0(v44);
}

uint64_t sub_1CFC4E5E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v132 = a2;
  v129 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF590, &qword_1CFCA70B0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v124 = &v116 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF598, &qword_1CFCA70B8);
  v127 = *(v7 - 8);
  v128 = v7;
  v8 = *(v127 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v123 = &v116 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v122 = &v116 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF5A0, &qword_1CFCA70C0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v130 = &v116 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v136 = &v116 - v16;
  v116 = type metadata accessor for VoicemailCustomBannerView();
  v17 = *(*(v116 - 8) + 64);
  MEMORY[0x1EEE9AC00](v116);
  v120 = (&v116 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF5A8, &qword_1CFCA70C8);
  v19 = *(*(v117 - 8) + 64);
  MEMORY[0x1EEE9AC00](v117);
  v121 = &v116 - v20;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF5B0, &qword_1CFCA70D0);
  v126 = *(v131 - 8);
  v21 = *(v126 + 64);
  MEMORY[0x1EEE9AC00](v131);
  v119 = &v116 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v118 = &v116 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF5B8, &qword_1CFCA70D8);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v135 = &v116 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v116 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF5C0, &qword_1CFCA70E0);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v134 = &v116 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v116 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EF5C8, &qword_1CFCA70E8);
  v38 = *(*(v37 - 8) + 56);
  v39 = 1;
  v133 = v36;
  v38(v36, 1, 1, v37);
  swift_getKeyPath();
  v40 = OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel___observationRegistrar;
  *&v157[0] = a1;
  sub_1CFC55814(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel);
  v125 = v40;
  sub_1CFC9C158();

  v41 = *(a1 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__hasSmartActions);
  v137 = v30;
  if (v41 == 1)
  {
    v42 = type metadata accessor for VoicemailDetailContainerView();
    v43 = *(v42 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EF528, &unk_1CFCA6FE0);
    sub_1CFC9F408();
    v44 = *&v157[0];
    swift_getKeyPath();
    *&v157[0] = v44;
    sub_1CFC55814(&qword_1EE04D8E0, type metadata accessor for VoicemailSmartActionsBannerViewModel);
    sub_1CFC9C158();
    v30 = v137;

    v45 = *(v44 + 48);

    v39 = 1;
    if (v45 == 1)
    {
      v46 = (v132 + *(v42 + 28));
      v48 = *v46;
      v47 = v46[1];

      sub_1CFC9F408();
      v49 = v120;
      *v120 = v48;
      *(v49 + 8) = v47;
      v50 = *(v116 + 20);
      type metadata accessor for VoicemailSmartActionsBannerViewModel();
      sub_1CFC9F418();
      sub_1CFC9F538();
      sub_1CFC9E268();
      v51 = v121;
      sub_1CFC5434C(v49, v121, type metadata accessor for VoicemailCustomBannerView);
      v52 = (v51 + *(v117 + 36));
      v53 = v176;
      v52[4] = v175;
      v52[5] = v53;
      v52[6] = v177;
      v54 = v172;
      *v52 = v171;
      v52[1] = v54;
      v55 = v174;
      v52[2] = v173;
      v52[3] = v55;
      v56 = sub_1CFC9EBC8();
      v57 = v119;
      sub_1CFBCCE88(v51, v119, &qword_1EC4EF5A8, &qword_1CFCA70C8);
      v58 = v57 + *(v131 + 36);
      *v58 = v56;
      *(v58 + 8) = 0u;
      *(v58 + 24) = 0u;
      *(v58 + 40) = 1;
      v59 = v57;
      v60 = v118;
      sub_1CFBCCE88(v59, v118, &qword_1EC4EF5B0, &qword_1CFCA70D0);
      v30 = v137;
      sub_1CFBCCE88(v60, v137, &qword_1EC4EF5B0, &qword_1CFCA70D0);
      v39 = 0;
    }
  }

  v61 = 1;
  (*(v126 + 56))(v30, v39, 1, v131);
  swift_getKeyPath();
  *&v157[0] = a1;
  sub_1CFC9C158();

  v62 = v132;
  v63 = v128;
  if (*(a1 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__isUnknownCaller) == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF570, &qword_1CFCA7090);
    v64 = swift_allocObject();
    *(v64 + 16) = xmmword_1CFCA1DC0;
    v65 = sub_1CFC9EB78();
    *(v64 + 32) = v65;
    v66 = sub_1CFC9EB98();
    *(v64 + 33) = v66;
    v67 = sub_1CFC9EB88();
    sub_1CFC9EB88();
    if (sub_1CFC9EB88() != v65)
    {
      v67 = sub_1CFC9EB88();
    }

    sub_1CFC9EB88();
    if (sub_1CFC9EB88() != v66)
    {
      v67 = sub_1CFC9EB88();
    }

    v68 = v124;
    *v124 = v67;
    v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EF5E8, &qword_1CFCA7150);
    sub_1CFC4FF74(v62, v68 + *(v69 + 44));
    v70 = sub_1CFC9EBC8();
    sub_1CFC9CD28();
    sub_1CFC9DE18();
    v72 = v71;
    v74 = v73;
    v76 = v75;
    v78 = v77;
    v79 = v123;
    sub_1CFBCCE88(v68, v123, &qword_1EC4EF590, &qword_1CFCA70B0);
    v80 = v79 + *(v63 + 36);
    *v80 = v70;
    *(v80 + 8) = v72;
    *(v80 + 16) = v74;
    *(v80 + 24) = v76;
    *(v80 + 32) = v78;
    *(v80 + 40) = 0;
    v81 = v79;
    v82 = v122;
    sub_1CFBCCE88(v81, v122, &qword_1EC4EF598, &qword_1CFCA70B8);
    sub_1CFBCCE88(v82, v136, &qword_1EC4EF598, &qword_1CFCA70B8);
    v61 = 0;
  }

  v83 = v136;
  (*(v127 + 56))(v136, v61, 1, v63);
  sub_1CFC4F438(a1, &v138);
  LODWORD(v132) = sub_1CFC9EBC8();
  sub_1CFC9CD28();
  sub_1CFC9DE18();
  v85 = v84;
  v87 = v86;
  v89 = v88;
  v91 = v90;
  v144 = 0;
  LODWORD(v131) = sub_1CFC9EBA8();
  sub_1CFC9CD28();
  sub_1CFC9DE18();
  v93 = v92;
  v95 = v94;
  v97 = v96;
  v99 = v98;
  LOBYTE(v145) = 0;
  v100 = v134;
  sub_1CFBA29FC(v133, v134, &qword_1EC4EF5C0, &qword_1CFCA70E0);
  v101 = v135;
  sub_1CFBA29FC(v137, v135, &qword_1EC4EF5B8, &qword_1CFCA70D8);
  v102 = v130;
  sub_1CFBA29FC(v83, v130, &qword_1EC4EF5A0, &qword_1CFCA70C0);
  v103 = v100;
  v104 = v129;
  sub_1CFBA29FC(v103, v129, &qword_1EC4EF5C0, &qword_1CFCA70E0);
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF5D8, &qword_1CFCA7140);
  sub_1CFBA29FC(v101, v104 + v105[12], &qword_1EC4EF5B8, &qword_1CFCA70D8);
  sub_1CFBA29FC(v102, v104 + v105[16], &qword_1EC4EF5A0, &qword_1CFCA70C0);
  v106 = v104 + v105[20];
  *&v150 = v143;
  v147 = v140;
  v148 = v141;
  v149 = v142;
  v145 = v138;
  v146 = v139;
  v107 = v132;
  BYTE8(v150) = v132;
  *&v151 = v85;
  *(&v151 + 1) = v87;
  *&v152 = v89;
  *(&v152 + 1) = v91;
  LOBYTE(v153) = 0;
  v108 = v131;
  BYTE8(v153) = v131;
  *&v154 = v93;
  *(&v154 + 1) = v95;
  *&v155 = v97;
  *(&v155 + 1) = v99;
  v156 = 0;
  *(v106 + 176) = 0;
  v109 = v146;
  *v106 = v145;
  *(v106 + 16) = v109;
  v110 = v148;
  *(v106 + 32) = v147;
  *(v106 + 48) = v110;
  v111 = v149;
  v112 = v150;
  v113 = v152;
  *(v106 + 96) = v151;
  *(v106 + 112) = v113;
  *(v106 + 64) = v111;
  *(v106 + 80) = v112;
  v114 = v154;
  *(v106 + 128) = v153;
  *(v106 + 144) = v114;
  *(v106 + 160) = v155;
  sub_1CFBA29FC(&v145, v157, &qword_1EC4EF5E0, &qword_1CFCA7148);
  sub_1CFBC2FB0(v136, &qword_1EC4EF5A0, &qword_1CFCA70C0);
  sub_1CFBC2FB0(v137, &qword_1EC4EF5B8, &qword_1CFCA70D8);
  sub_1CFBC2FB0(v133, &qword_1EC4EF5C0, &qword_1CFCA70E0);
  v157[2] = v140;
  v157[3] = v141;
  v157[4] = v142;
  v158 = v143;
  v157[0] = v138;
  v157[1] = v139;
  v159 = v107;
  v160 = v85;
  v161 = v87;
  v162 = v89;
  v163 = v91;
  v164 = 0;
  v165 = v108;
  v166 = v93;
  v167 = v95;
  v168 = v97;
  v169 = v99;
  v170 = 0;
  sub_1CFBC2FB0(v157, &qword_1EC4EF5E0, &qword_1CFCA7148);
  sub_1CFBC2FB0(v102, &qword_1EC4EF5A0, &qword_1CFCA70C0);
  sub_1CFBC2FB0(v135, &qword_1EC4EF5B8, &qword_1CFCA70D8);
  return sub_1CFBC2FB0(v134, &qword_1EC4EF5C0, &qword_1CFCA70E0);
}

double sub_1CFC4F438@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (sub_1CFC1FB4C())
  {
    v4 = objc_allocWithZone(type metadata accessor for DDActionsResponder());

    v6 = sub_1CFC53AE0(v5);
    v7 = sub_1CFC9E688();
    LOBYTE(v15) = 0;
    sub_1CFC4FBCC(a1, v6, &v19);
    *&v12 = v7;
    *(&v12 + 1) = 0x4010000000000000;
    v13[0] = 0;
    *&v13[8] = v19;
    v13[24] = v20[0];
    *&v13[32] = *&v20[8];
    v14 = *&v20[24];
    *&v20[16] = *&v13[16];
    v21 = *&v13[32];
    *&v22 = v14;
    v19 = v12;
    *v20 = *v13;
    v18 = 1;
    HIBYTE(v23) = 1;
    sub_1CFBA29FC(&v12, &v15, &qword_1EC4EF688, &qword_1CFCA7238);
    sub_1CFBA29FC(&v12, &v15, &qword_1EC4EF688, &qword_1CFCA7238);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF680, &qword_1CFCA7230);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF688, &qword_1CFCA7238);
    sub_1CFBA57C0(&qword_1EE04D190, &qword_1EC4EF680, &qword_1CFCA7230);
    sub_1CFBA57C0(&qword_1EE04D178, &qword_1EC4EF688, &qword_1CFCA7238);
    sub_1CFC9E798();

    sub_1CFBC2FB0(&v12, &qword_1EC4EF688, &qword_1CFCA7238);
    sub_1CFBC2FB0(&v12, &qword_1EC4EF688, &qword_1CFCA7238);
    *&v20[16] = *&v16[16];
    v21 = *&v16[32];
    v22 = *&v16[48];
    v23 = *&v16[64];
    v19 = v15;
    *v20 = *v16;
  }

  else
  {
    v8 = sub_1CFC9E588();
    LOBYTE(v19) = 1;
    sub_1CFC4F850(&v12);
    *&v17[48] = *&v13[25];
    *&v17[39] = *&v13[16];
    *&v17[23] = *v13;
    *&v17[7] = v12;
    *&v16[1] = *v17;
    *&v16[17] = *&v17[16];
    *&v16[33] = *&v17[32];
    v18 = 0;
    v15 = v8;
    v16[0] = v19;
    *&v16[49] = *&v17[48];
    v16[65] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF680, &qword_1CFCA7230);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF688, &qword_1CFCA7238);
    sub_1CFBA57C0(&qword_1EE04D190, &qword_1EC4EF680, &qword_1CFCA7230);
    sub_1CFBA57C0(&qword_1EE04D178, &qword_1EC4EF688, &qword_1CFCA7238);
    sub_1CFC9E798();
  }

  v9 = v21;
  *(a2 + 32) = *&v20[16];
  *(a2 + 48) = v9;
  *(a2 + 64) = v22;
  *(a2 + 80) = v23;
  result = *&v19;
  v11 = *v20;
  *a2 = v19;
  *(a2 + 16) = v11;
  return result;
}

uint64_t sub_1CFC4F78C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_getKeyPath();
  sub_1CFC55814(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel);
  sub_1CFC9C158();

  v5 = 0x4038000000000000;
  if (*(a1 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__isUnknownCaller))
  {
    v5 = 0x4028000000000000;
  }

  *a2 = v5;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1CFC4F850@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1CFC9E5D8();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1CFC9E5C8();
  sub_1CFC9E5B8();
  type metadata accessor for BundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v28 = objc_opt_self();
  v4 = [v28 bundleForClass_];
  sub_1CFC9BE28();

  sub_1CFC9E5A8();

  sub_1CFC9E5B8();
  sub_1CFC9E5F8();
  v5 = sub_1CFC9EDD8();
  v7 = v6;
  v9 = v8;
  sub_1CFC9E908();
  v10 = sub_1CFC9ED68();
  v12 = v11;
  v14 = v13;
  sub_1CFBB44C0(v5, v7, v9 & 1);

  sub_1CFC9EC58();
  v15 = sub_1CFC9EDC8();
  v17 = v16;
  v19 = v18;

  sub_1CFBB44C0(v10, v12, v14 & 1);

  v20 = [v28 bundleForClass_];
  sub_1CFC9BE28();

  sub_1CFBB4460();
  v21 = sub_1CFC9ED88();
  v23 = v22;
  LOBYTE(v10) = v24;
  v26 = v25;
  sub_1CFBB44C0(v15, v17, v19 & 1);

  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = v21;
  *(a1 + 24) = v23;
  *(a1 + 32) = v10 & 1;
  *(a1 + 40) = v26;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  sub_1CFBB45F4(v21, v23, v10 & 1);

  sub_1CFBB44C0(v21, v23, v10 & 1);
}

uint64_t sub_1CFC4FBCC@<X0>(uint64_t a1@<X1>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v4 = sub_1CFC9E5D8();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_1CFC9E5C8();
  sub_1CFC9E5B8();
  type metadata accessor for BundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v32 = objc_opt_self();
  v6 = [v32 bundleForClass_];
  sub_1CFC9BE28();

  sub_1CFC9E5A8();

  sub_1CFC9E5B8();
  sub_1CFC4DBA0();
  sub_1CFC9E5A8();

  sub_1CFC9E5B8();
  sub_1CFC9E5F8();
  v7 = sub_1CFC9EDD8();
  v9 = v8;
  v11 = v10;
  sub_1CFC9E908();
  v12 = sub_1CFC9ED68();
  v14 = v13;
  v16 = v15;
  sub_1CFBB44C0(v7, v9, v11 & 1);

  sub_1CFC9EC48();
  v17 = sub_1CFC9EDC8();
  v19 = v18;
  v21 = v20;

  sub_1CFBB44C0(v12, v14, v16 & 1);

  v22 = [v32 bundleForClass_];
  sub_1CFC9BE28();

  sub_1CFBB4460();
  v23 = sub_1CFC9ED88();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  sub_1CFBB44C0(v17, v19, v21 & 1);

  *a3 = v23;
  *(a3 + 8) = v25;
  *(a3 + 16) = v27 & 1;
  *(a3 + 24) = v29;
  *(a3 + 32) = a1;
  *(a3 + 40) = a2;
  v30 = a2;

  sub_1CFBB45F4(v23, v25, v27 & 1);

  sub_1CFBB44C0(v23, v25, v27 & 1);
}

uint64_t sub_1CFC4FF74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF5F8, &qword_1CFCA7180);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF600, &qword_1CFCA7188);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v22 - v16;
  *v17 = sub_1CFC9E588();
  *(v17 + 1) = 0x4024000000000000;
  v17[16] = 0;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF608, &qword_1CFCA7190);
  sub_1CFC50614(a1, &unk_1F4C6DCF8, sub_1CFC55864, &v17[*(v18 + 44)]);
  *v10 = sub_1CFC9E678();
  *(v10 + 1) = 0x4034000000000000;
  v10[16] = 0;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF610, &qword_1CFCA7198);
  sub_1CFC50614(a1, &unk_1F4C6DC58, sub_1CFC543B4, &v10[*(v19 + 44)]);
  sub_1CFBA29FC(v17, v14, &qword_1EC4EF600, &qword_1CFCA7188);
  sub_1CFBA29FC(v10, v7, &qword_1EC4EF5F8, &qword_1CFCA7180);
  sub_1CFBA29FC(v14, a2, &qword_1EC4EF600, &qword_1CFCA7188);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF618, &qword_1CFCA71A0);
  sub_1CFBA29FC(v7, a2 + *(v20 + 48), &qword_1EC4EF5F8, &qword_1CFCA7180);
  sub_1CFBC2FB0(v10, &qword_1EC4EF5F8, &qword_1CFCA7180);
  sub_1CFBC2FB0(v17, &qword_1EC4EF600, &qword_1CFCA7188);
  sub_1CFBC2FB0(v7, &qword_1EC4EF5F8, &qword_1CFCA7180);
  return sub_1CFBC2FB0(v14, &qword_1EC4EF600, &qword_1CFCA7188);
}

uint64_t sub_1CFC501F4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v27[1] = a1;
  v3 = type metadata accessor for VoicemailDetailContainerView();
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EF650, &unk_1CFCA7208);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF638, &qword_1CFCA71C0);
  v27[0] = v11;
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v27 - v13;
  sub_1CFC9DDF8();
  v15 = sub_1CFC9DE08();
  (*(*(v15 - 8) + 56))(v10, 0, 1, v15);
  sub_1CFBE57FC(v2, v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v17 = swift_allocObject();
  sub_1CFC5434C(v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for VoicemailDetailContainerView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF640, &unk_1CFCA71C8);
  sub_1CFC543CC();
  sub_1CFC9F288();
  *&v14[*(v11 + 36)] = sub_1CFC9F0F8();
  type metadata accessor for BundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v19 = [objc_opt_self() bundleForClass_];
  v20 = sub_1CFC9BE28();
  v22 = v21;

  v30 = v20;
  v31 = v22;
  v23 = v2 + *(v4 + 48);
  v24 = *v23;
  v25 = *(v23 + 8);
  v28 = v24;
  v29 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDEE0, &qword_1CFCA5670);
  sub_1CFC9F258();
  v27[4] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EF660, &unk_1CFCA7218);
  sub_1CFC544F8();
  sub_1CFBB4460();
  sub_1CFBA57C0(&qword_1EE04D148, &unk_1EC4EF660, &unk_1CFCA7218);
  sub_1CFC9EF78();

  return sub_1CFBC2FB0(v14, &qword_1EC4EF638, &qword_1CFCA71C0);
}

uint64_t sub_1CFC50614@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v48[1] = a2;
  v48[2] = a3;
  v56 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF620, &qword_1CFCA71A8);
  v52 = *(v5 - 8);
  v53 = v5;
  v6 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v48[0] = v48 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF628, &qword_1CFCA71B0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v55 = v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v54 = v48 - v12;
  v49 = type metadata accessor for VoicemailDetailContainerView();
  v13 = *(v49 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF630, &qword_1CFCA71B8);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = v48 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF638, &qword_1CFCA71C0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20);
  v50 = v48 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = v48 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = v48 - v27;
  v51 = a1;
  sub_1CFBE57FC(a1, v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v30 = swift_allocObject();
  sub_1CFC5434C(v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v30 + v29, type metadata accessor for VoicemailDetailContainerView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF640, &unk_1CFCA71C8);
  sub_1CFC543CC();
  sub_1CFC9F298();
  v31 = [objc_opt_self() currentDevice];
  v32 = [v31 userInterfaceIdiom];

  if (v32 == 5)
  {
    v33 = sub_1CFC9F108();
  }

  else
  {
    v33 = sub_1CFC9F0D8();
  }

  v34 = v33;
  (*(v16 + 32))(v25, v19, v15);
  *&v25[*(v20 + 36)] = v34;
  sub_1CFBCCE88(v25, v28, &qword_1EC4EF638, &qword_1CFCA71C0);
  v35 = *(v49 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF520, &qword_1CFCA6FD8);
  sub_1CFC9F408();

  sub_1CFC9F408();
  v36 = v57;
  swift_getKeyPath();
  v57 = v36;
  sub_1CFC55814(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel);
  sub_1CFC9C158();

  LOBYTE(v34) = *(v36 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__isDeletedMessage);

  if (v34)
  {
    v37 = 1;
    v38 = v53;
    v39 = v54;
    v40 = v52;
  }

  else
  {
    v41 = v48[0];
    sub_1CFC501F4(v48[0]);
    v40 = v52;
    v39 = v54;
    v42 = v41;
    v38 = v53;
    (*(v52 + 32))(v54, v42, v53);
    v37 = 0;
  }

  (*(v40 + 56))(v39, v37, 1, v38);
  v43 = v50;
  sub_1CFBA29FC(v28, v50, &qword_1EC4EF638, &qword_1CFCA71C0);
  v44 = v55;
  sub_1CFBA29FC(v39, v55, &qword_1EC4EF628, &qword_1CFCA71B0);
  v45 = v56;
  sub_1CFBA29FC(v43, v56, &qword_1EC4EF638, &qword_1CFCA71C0);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF648, &qword_1CFCA7200);
  sub_1CFBA29FC(v44, v45 + *(v46 + 48), &qword_1EC4EF628, &qword_1CFCA71B0);
  sub_1CFBC2FB0(v39, &qword_1EC4EF628, &qword_1CFCA71B0);
  sub_1CFBC2FB0(v28, &qword_1EC4EF638, &qword_1CFCA71C0);
  sub_1CFBC2FB0(v44, &qword_1EC4EF628, &qword_1CFCA71B0);
  return sub_1CFBC2FB0(v43, &qword_1EC4EF638, &qword_1CFCA71C0);
}

uint64_t sub_1CFC50C2C()
{
  v0 = *(type metadata accessor for VoicemailDetailContainerView() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF520, &qword_1CFCA6FD8);
  sub_1CFC9F408();
  v2 = *(v5 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel_createContactAction);
  v1 = *(v5 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel_createContactAction + 8);

  v2(v3);
}

uint64_t sub_1CFC50D14@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for BundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_1CFC9BE28();

  sub_1CFBB4460();
  result = sub_1CFC9EDF8();
  *a1 = result;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v7;
  return result;
}

uint64_t sub_1CFC50E00@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1CFC9F1A8();
  *a1 = result;
  return result;
}

uint64_t sub_1CFC50E40(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for VoicemailDetailContainerView() + 40));
  v3 = *v1;
  v4 = *(v1 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDEE0, &qword_1CFCA5670);
  return sub_1CFC9F248();
}

uint64_t sub_1CFC50F08@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for BundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_1CFC9BE28();

  sub_1CFBB4460();
  result = sub_1CFC9EDF8();
  *a1 = result;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v7;
  return result;
}

uint64_t sub_1CFC50FF4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1CFC9F1A8();
  *a1 = result;
  return result;
}

uint64_t sub_1CFC51034@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v45 = a1;
  v52 = a2;
  v3 = type metadata accessor for VoicemailDetailContainerView();
  v4 = *(v3 - 8);
  v47 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EF650, &unk_1CFCA7208);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v44 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF670, &qword_1CFCA3640);
  v51 = *(v11 - 8);
  v12 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v50 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v49 = &v44 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v48 = &v44 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v53 = &v44 - v19;
  type metadata accessor for BundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v46 = ObjCClassFromMetadata;
  v21 = objc_opt_self();
  v22 = [v21 bundleForClass_];
  v23 = sub_1CFC9BE28();
  v25 = v24;

  v54 = v23;
  v55 = v25;
  sub_1CFC9DDF8();
  v26 = sub_1CFC9DE08();
  (*(*(v26 - 8) + 56))(v10, 0, 1, v26);
  sub_1CFBE57FC(a1, v6);
  v27 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v28 = swift_allocObject();
  sub_1CFC5434C(v6, v28 + v27, type metadata accessor for VoicemailDetailContainerView);
  sub_1CFBB4460();
  sub_1CFC9F2A8();
  v29 = [v21 bundleForClass_];
  v30 = sub_1CFC9BE28();
  v32 = v31;

  v54 = v30;
  v55 = v32;
  sub_1CFBE57FC(v45, v6);
  v33 = swift_allocObject();
  sub_1CFC5434C(v6, v33 + v27, type metadata accessor for VoicemailDetailContainerView);
  v34 = v48;
  sub_1CFC9F2C8();
  v35 = v51;
  v36 = *(v51 + 16);
  v37 = v49;
  v38 = v53;
  v36(v49, v53, v11);
  v39 = v50;
  v36(v50, v34, v11);
  v40 = v52;
  v36(v52, v37, v11);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF678, &qword_1CFCA7228);
  v36(&v40[*(v41 + 48)], v39, v11);
  v42 = *(v35 + 8);
  v42(v34, v11);
  v42(v38, v11);
  v42(v39, v11);
  return (v42)(v37, v11);
}

uint64_t sub_1CFC5158C()
{
  v0 = *(type metadata accessor for VoicemailDetailContainerView() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF520, &qword_1CFCA6FD8);
  sub_1CFC9F408();
  if (*(v5 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__isDeletedMessage) == 1)
  {
    *(v5 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__isDeletedMessage) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1CFC55814(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel);
    sub_1CFC9C148();
  }

  sub_1CFC9F408();
  v3 = *(v5 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel_reportSpamAction);
  v2 = *(v5 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel_reportSpamAction + 8);

  v3(1);
}

uint64_t sub_1CFC51740()
{
  v0 = *(type metadata accessor for VoicemailDetailContainerView() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF520, &qword_1CFCA6FD8);
  sub_1CFC9F408();
  v2 = *(v4 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel_reportSpamAction);
  v1 = *(v4 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel_reportSpamAction + 8);

  v2(0);
}

uint64_t sub_1CFC517D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF6A8, &qword_1CFCA75A0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v12 - v4;
  sub_1CFC9F538();
  sub_1CFC9E268();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EF6B0, &qword_1CFCA75A8);
  (*(*(v6 - 8) + 16))(v5, a1, v6);
  v7 = &v5[*(v2 + 36)];
  v8 = v12[5];
  *(v7 + 4) = v12[4];
  *(v7 + 5) = v8;
  *(v7 + 6) = v12[6];
  v9 = v12[1];
  *v7 = v12[0];
  *(v7 + 1) = v9;
  v10 = v12[3];
  *(v7 + 2) = v12[2];
  *(v7 + 3) = v10;
  sub_1CFC55178();
  sub_1CFC55230();
  sub_1CFC9EEA8();
  return sub_1CFBC2FB0(v5, &qword_1EC4EF6A8, &qword_1CFCA75A0);
}

uint64_t sub_1CFC5196C()
{
  v0 = sub_1CFC9E668();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFC9E658();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF6C0, &qword_1CFCA75B0);
  sub_1CFBA57C0(&qword_1EE04D2B8, &qword_1EC4EF6C0, &qword_1CFCA75B0);
  sub_1CFC55814(&qword_1EE04D360, MEMORY[0x1E697C540]);
  sub_1CFC9EEC8();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_1CFC51B00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v139 = a1;
  v138 = a3;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF6C8, &qword_1CFCA75B8);
  v8 = *(*(v130 - 8) + 64);
  MEMORY[0x1EEE9AC00](v130);
  v131 = &v119 - v9;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF6D0, &qword_1CFCA75C0);
  v10 = *(*(v137 - 8) + 64);
  MEMORY[0x1EEE9AC00](v137);
  v132 = &v119 - v11;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF6D8, &qword_1CFCA75C8);
  v12 = *(*(v126 - 8) + 64);
  MEMORY[0x1EEE9AC00](v126);
  v127 = &v119 - v13;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF6E0, &qword_1CFCA75D0);
  v14 = *(*(v129 - 8) + 64);
  MEMORY[0x1EEE9AC00](v129);
  v128 = &v119 - v15;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF6E8, &qword_1CFCA75D8);
  v16 = *(*(v133 - 8) + 64);
  MEMORY[0x1EEE9AC00](v133);
  v121 = &v119 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v122 = &v119 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v119 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v120 = &v119 - v24;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF6F0, &qword_1CFCA75E0);
  v25 = *(*(v134 - 8) + 64);
  MEMORY[0x1EEE9AC00](v134);
  v136 = &v119 - v26;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF6F8, &qword_1CFCA75E8);
  v27 = *(*(v123 - 8) + 64);
  MEMORY[0x1EEE9AC00](v123);
  v124 = &v119 - v28;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF700, &qword_1CFCA75F0);
  v29 = *(*(v135 - 8) + 64);
  MEMORY[0x1EEE9AC00](v135);
  v125 = &v119 - v30;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF708, &qword_1CFCA75F8);
  v31 = *(*(v140 - 8) + 64);
  MEMORY[0x1EEE9AC00](v140);
  v33 = &v119 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v119 - v35;
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v119 - v38;
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v119 - v41;
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v119 - v44;
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v119 - v47;
  MEMORY[0x1EEE9AC00](v49);
  v51 = &v119 - v50;
  MEMORY[0x1EEE9AC00](v52);
  v54 = &v119 - v53;
  if (a2 <= 4)
  {
    if (!a2)
    {
      sub_1CFC9F538();
      sub_1CFC9E268();
      v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF710, &qword_1CFCA7600);
      (*(*(v102 - 8) + 16))(v48, v139, v102);
      v103 = &v48[*(v140 + 36)];
      v104 = v146;
      *(v103 + 4) = v145;
      *(v103 + 5) = v104;
      *(v103 + 6) = v147;
      v105 = v142;
      *v103 = v141;
      *(v103 + 1) = v105;
      v106 = v144;
      *(v103 + 2) = v143;
      *(v103 + 3) = v106;
      v107 = sub_1CFC9EBA8();
      sub_1CFC9DE18();
      v109 = v108;
      v111 = v110;
      v113 = v112;
      v115 = v114;
      sub_1CFBCCE88(v48, v22, &qword_1EC4EF708, &qword_1CFCA75F8);
      v116 = &v22[*(v133 + 36)];
      *v116 = v107;
      *(v116 + 1) = v109;
      *(v116 + 2) = v111;
      *(v116 + 3) = v113;
      *(v116 + 4) = v115;
      v116[40] = 0;
      v117 = v120;
      sub_1CFBCCE88(v22, v120, &qword_1EC4EF6E8, &qword_1CFCA75D8);
      sub_1CFBA29FC(v117, v124, &qword_1EC4EF6E8, &qword_1CFCA75D8);
      swift_storeEnumTagMultiPayload();
      sub_1CFC5539C();
      sub_1CFC55310();
      v118 = v125;
      sub_1CFC9E798();
      sub_1CFBA29FC(v118, v136, &qword_1EC4EF700, &qword_1CFCA75F0);
      swift_storeEnumTagMultiPayload();
      sub_1CFC55454();
      sub_1CFC554E0();
      sub_1CFC9E798();
      sub_1CFBC2FB0(v118, &qword_1EC4EF700, &qword_1CFCA75F0);
      v63 = v117;
      v99 = &qword_1EC4EF6E8;
      v100 = &qword_1CFCA75D8;
      return sub_1CFBC2FB0(v63, v99, v100);
    }

    if (a2 != 1)
    {
      goto LABEL_10;
    }

LABEL_8:
    v64 = dbl_1CFCA6FA0[a2 == 5] * a4;
    sub_1CFC9F538();
    if (v64 >= a5)
    {
      v92 = v140;
      v84 = v128;
      sub_1CFC9E268();
      v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF710, &qword_1CFCA7600);
      (*(*(v93 - 8) + 16))(v39, v139, v93);
      v94 = &v39[*(v92 + 36)];
      v95 = v146;
      *(v94 + 4) = v145;
      *(v94 + 5) = v95;
      *(v94 + 6) = v147;
      v96 = v142;
      *v94 = v141;
      *(v94 + 1) = v96;
      v97 = v144;
      *(v94 + 2) = v143;
      *(v94 + 3) = v97;
      v81 = &qword_1EC4EF708;
      v82 = &qword_1CFCA75F8;
      sub_1CFBCCE88(v39, v42, &qword_1EC4EF708, &qword_1CFCA75F8);
      sub_1CFBA29FC(v42, v127, &qword_1EC4EF708, &qword_1CFCA75F8);
      swift_storeEnumTagMultiPayload();
      sub_1CFC55310();
      sub_1CFC5539C();
      sub_1CFC9E798();
      v85 = v42;
    }

    else
    {
      sub_1CFC9E268();
      v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF710, &qword_1CFCA7600);
      (*(*(v65 - 8) + 16))(v45, v139, v65);
      v66 = &v45[*(v140 + 36)];
      v67 = v146;
      *(v66 + 4) = v145;
      *(v66 + 5) = v67;
      *(v66 + 6) = v147;
      v68 = v142;
      *v66 = v141;
      *(v66 + 1) = v68;
      v69 = v144;
      *(v66 + 2) = v143;
      *(v66 + 3) = v69;
      v70 = sub_1CFC9EBA8();
      sub_1CFC9CD28();
      sub_1CFC9DE18();
      v72 = v71;
      v74 = v73;
      v76 = v75;
      v78 = v77;
      v79 = v121;
      sub_1CFBCCE88(v45, v121, &qword_1EC4EF708, &qword_1CFCA75F8);
      v80 = v79 + *(v133 + 36);
      *v80 = v70;
      *(v80 + 8) = v72;
      *(v80 + 16) = v74;
      *(v80 + 24) = v76;
      *(v80 + 32) = v78;
      *(v80 + 40) = 0;
      v81 = &qword_1EC4EF6E8;
      v82 = &qword_1CFCA75D8;
      v83 = v122;
      sub_1CFBCCE88(v79, v122, &qword_1EC4EF6E8, &qword_1CFCA75D8);
      sub_1CFBA29FC(v83, v127, &qword_1EC4EF6E8, &qword_1CFCA75D8);
      swift_storeEnumTagMultiPayload();
      sub_1CFC55310();
      sub_1CFC5539C();
      v84 = v128;
      sub_1CFC9E798();
      v85 = v83;
    }

    sub_1CFBC2FB0(v85, v81, v82);
    v60 = &qword_1EC4EF6E0;
    v61 = &qword_1CFCA75D0;
    sub_1CFBA29FC(v84, v131, &qword_1EC4EF6E0, &qword_1CFCA75D0);
    swift_storeEnumTagMultiPayload();
    sub_1CFC55284();
    sub_1CFC5539C();
    v98 = v132;
    sub_1CFC9E798();
    sub_1CFBA29FC(v98, v136, &qword_1EC4EF6D0, &qword_1CFCA75C0);
    swift_storeEnumTagMultiPayload();
    sub_1CFC55454();
    sub_1CFC554E0();
    sub_1CFC9E798();
    sub_1CFBC2FB0(v98, &qword_1EC4EF6D0, &qword_1CFCA75C0);
    v63 = v84;
    goto LABEL_13;
  }

  if (a2 == 5)
  {
    goto LABEL_8;
  }

  if (a2 != 6)
  {
LABEL_10:
    sub_1CFC9F538();
    sub_1CFC9E268();
    v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF710, &qword_1CFCA7600);
    (*(*(v86 - 8) + 16))(v33, v139, v86);
    v87 = &v33[*(v140 + 36)];
    v88 = v146;
    *(v87 + 4) = v145;
    *(v87 + 5) = v88;
    *(v87 + 6) = v147;
    v89 = v142;
    *v87 = v141;
    *(v87 + 1) = v89;
    v90 = v144;
    *(v87 + 2) = v143;
    *(v87 + 3) = v90;
    v60 = &qword_1EC4EF708;
    v61 = &qword_1CFCA75F8;
    sub_1CFBCCE88(v33, v36, &qword_1EC4EF708, &qword_1CFCA75F8);
    sub_1CFBA29FC(v36, v131, &qword_1EC4EF708, &qword_1CFCA75F8);
    swift_storeEnumTagMultiPayload();
    sub_1CFC55284();
    sub_1CFC5539C();
    v91 = v132;
    sub_1CFC9E798();
    sub_1CFBA29FC(v91, v136, &qword_1EC4EF6D0, &qword_1CFCA75C0);
    swift_storeEnumTagMultiPayload();
    sub_1CFC55454();
    sub_1CFC554E0();
    sub_1CFC9E798();
    sub_1CFBC2FB0(v91, &qword_1EC4EF6D0, &qword_1CFCA75C0);
    v63 = v36;
    goto LABEL_13;
  }

  sub_1CFC9F538();
  sub_1CFC9E268();
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF710, &qword_1CFCA7600);
  (*(*(v55 - 8) + 16))(v51, v139, v55);
  v56 = &v51[*(v140 + 36)];
  v57 = v146;
  *(v56 + 4) = v145;
  *(v56 + 5) = v57;
  *(v56 + 6) = v147;
  v58 = v142;
  *v56 = v141;
  *(v56 + 1) = v58;
  v59 = v144;
  *(v56 + 2) = v143;
  *(v56 + 3) = v59;
  v60 = &qword_1EC4EF708;
  v61 = &qword_1CFCA75F8;
  sub_1CFBCCE88(v51, v54, &qword_1EC4EF708, &qword_1CFCA75F8);
  sub_1CFBA29FC(v54, v124, &qword_1EC4EF708, &qword_1CFCA75F8);
  swift_storeEnumTagMultiPayload();
  sub_1CFC5539C();
  sub_1CFC55310();
  v62 = v125;
  sub_1CFC9E798();
  sub_1CFBA29FC(v62, v136, &qword_1EC4EF700, &qword_1CFCA75F0);
  swift_storeEnumTagMultiPayload();
  sub_1CFC55454();
  sub_1CFC554E0();
  sub_1CFC9E798();
  sub_1CFBC2FB0(v62, &qword_1EC4EF700, &qword_1CFCA75F0);
  v63 = v54;
LABEL_13:
  v99 = v60;
  v100 = v61;
  return sub_1CFBC2FB0(v63, v99, v100);
}

uint64_t sub_1CFC52BC8@<X0>(uint64_t a1@<X8>)
{
  v35 = a1;
  v1 = sub_1CFC9E988();
  v2 = *(v1 - 8);
  v33 = v1;
  v34 = v2;
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF788, &qword_1CFCA7708);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v32 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF790, &unk_1CFCA7710);
  v15 = v14 - 8;
  v16 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v32 - v20;
  sub_1CFC9E978();
  v22 = &v21[*(v15 + 44)];
  v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF138, &qword_1CFCA63B0) + 28);
  v24 = *MEMORY[0x1E69816C8];
  v25 = sub_1CFC9F1D8();
  (*(*(v25 - 8) + 104))(v22 + v23, v24, v25);
  *v22 = swift_getKeyPath();
  sub_1CFC9E998();
  sub_1CFC9EC98();
  sub_1CFC55814(&qword_1EE04D270, MEMORY[0x1E697C8A8]);
  v26 = v33;
  sub_1CFC9EE98();
  (*(v34 + 8))(v5, v26);
  KeyPath = swift_getKeyPath();
  v28 = &v13[*(v7 + 44)];
  *v28 = KeyPath;
  *(v28 + 1) = 1;
  v28[16] = 0;
  sub_1CFBA29FC(v21, v18, &qword_1EC4EF790, &unk_1CFCA7710);
  sub_1CFBA29FC(v13, v10, &qword_1EC4EF788, &qword_1CFCA7708);
  v29 = v35;
  sub_1CFBA29FC(v18, v35, &qword_1EC4EF790, &unk_1CFCA7710);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EF798, &qword_1CFCA7780);
  sub_1CFBA29FC(v10, v29 + *(v30 + 48), &qword_1EC4EF788, &qword_1CFCA7708);
  sub_1CFBC2FB0(v13, &qword_1EC4EF788, &qword_1CFCA7708);
  sub_1CFBC2FB0(v21, &qword_1EC4EF790, &unk_1CFCA7710);
  sub_1CFBC2FB0(v10, &qword_1EC4EF788, &qword_1CFCA7708);
  return sub_1CFBC2FB0(v18, &qword_1EC4EF790, &unk_1CFCA7710);
}

uint64_t sub_1CFC52F5C@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_1CFC9E588();
  *(a1 + 8) = 0x4010000000000000;
  *(a1 + 16) = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF780, &qword_1CFCA7700);
  return sub_1CFC52BC8(a1 + *(v2 + 44));
}

uint64_t sub_1CFC52FB4@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF718, &qword_1CFCA7608);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF720, &qword_1CFCA7610);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v28 - v12;
  if (a2)
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF728, &qword_1CFCA7618);
    (*(*(v14 - 8) + 16))(v9, a1, v14);
    swift_storeEnumTagMultiPayload();
    sub_1CFC5556C();
    sub_1CFBA57C0(&unk_1EE04D2A0, &qword_1EC4EF728, &qword_1CFCA7618);
    return sub_1CFC9E798();
  }

  else
  {
    v16 = sub_1CFC9F538();
    v18 = v17;
    sub_1CFC5332C(&v35);
    v19 = v35;
    v21 = v36;
    v20 = v37;
    v28[1] = a3;
    v22 = *(&v37 + 1);
    v28[0] = v6;
    v23 = v38;
    *&v30 = v16;
    *(&v30 + 1) = v18;
    v31 = v35;
    v32 = v36;
    v33 = v37;
    v34 = v38;
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF728, &qword_1CFCA7618);
    (*(*(v24 - 8) + 16))(v13, a1, v24);
    v25 = &v13[*(v10 + 36)];
    v26 = v33;
    *(v25 + 2) = v32;
    *(v25 + 3) = v26;
    v25[64] = v34;
    v27 = v31;
    *v25 = v30;
    *(v25 + 1) = v27;
    *&v35 = v16;
    *(&v35 + 1) = v18;
    v36 = v19;
    v37 = v21;
    v38 = v20;
    v39 = v22;
    v40 = v23;
    sub_1CFBA29FC(&v30, v29, &unk_1EC4EF730, &qword_1CFCA7620);
    sub_1CFBC2FB0(&v35, &unk_1EC4EF730, &qword_1CFCA7620);
    sub_1CFBA29FC(v13, v9, &qword_1EC4EF720, &qword_1CFCA7610);
    swift_storeEnumTagMultiPayload();
    sub_1CFC5556C();
    sub_1CFBA57C0(&unk_1EE04D2A0, &qword_1EC4EF728, &qword_1CFCA7618);
    sub_1CFC9E798();
    return sub_1CFBC2FB0(v13, &qword_1EC4EF720, &qword_1CFCA7610);
  }
}

__n128 sub_1CFC5332C@<Q0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF740, &qword_1CFCA7628);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1CFCA1DC0;
  sub_1CFC9F128();
  sub_1CFC9CD28();
  *(v2 + 32) = sub_1CFC9F478();
  *(v2 + 40) = v3;
  sub_1CFC9F138();
  sub_1CFC9CD28();
  *(v2 + 48) = sub_1CFC9F478();
  *(v2 + 56) = v4;
  sub_1CFC9F5B8();
  sub_1CFC9F5C8();
  sub_1CFC9F488();
  sub_1CFC9E058();
  v5 = sub_1CFC9E1E8();
  v6 = sub_1CFC9EBB8();
  *a1 = v8;
  result = v10;
  *(a1 + 8) = v9;
  *(a1 + 24) = v10;
  *(a1 + 40) = v5;
  *(a1 + 48) = v6;
  return result;
}

uint64_t sub_1CFC535E0@<X0>(uint64_t a1@<X0>, double (**a2)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1 - 8);
  sub_1CFBE57FC(v2, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_1CFC5434C(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for VoicemailDetailContainerView);
  *a2 = sub_1CFC541C8;
  a2[1] = v7;
  return result;
}

uint64_t sub_1CFC536E0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF758, &qword_1CFCA7690);
    v2 = sub_1CFCA0238();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v15 = v14[1];
    v16 = *(*(a1 + 56) + 8 * v13);
    *&v33[0] = *v14;
    *(&v33[0] + 1) = v15;

    swift_dynamicCast();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF760, &qword_1CFCA7698);
    swift_dynamicCast();
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_1CFBCC9AC(&v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_1CFBCC9AC(v32, v33);
    v17 = *(v2 + 40);
    result = sub_1CFCA0048();
    v18 = -1 << *(v2 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v7 + 8 * (v19 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v18) >> 6;
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        v24 = *(v7 + 8 * v20);
        if (v24 != -1)
        {
          v10 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v19) & ~*(v7 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v25;
    *(v11 + 16) = v26;
    *(v11 + 32) = v27;
    result = sub_1CFBCC9AC(v33, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1CFC539F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1CFC55650();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1CFC53A54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1CFC55650();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1CFC53AB8()
{
  sub_1CFC55650();
  sub_1CFC9E768();
  __break(1u);
}

id sub_1CFC53AE0(uint64_t a1)
{
  v2 = v1;
  if (qword_1EE050010 != -1)
  {
    swift_once();
  }

  v4 = sub_1CFC9D938();
  __swift_project_value_buffer(v4, qword_1EE052308);
  v5 = sub_1CFC9D918();
  v6 = sub_1CFC9FAC8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1CFB9F000, v5, v6, "DDActionsResponder init", v7, 2u);
    MEMORY[0x1D3873280](v7, -1, -1);
  }

  *&v2[OBJC_IVAR____TtC10CallsAppUI18DDActionsResponder_viewModel] = a1;
  v9.receiver = v2;
  v9.super_class = type metadata accessor for DDActionsResponder();
  return objc_msgSendSuper2(&v9, sel_init);
}

id sub_1CFC53BF4()
{
  v1 = v0;
  if (qword_1EE050010 != -1)
  {
    swift_once();
  }

  v2 = sub_1CFC9D938();
  __swift_project_value_buffer(v2, qword_1EE052308);
  v3 = sub_1CFC9D918();
  v4 = sub_1CFC9FAC8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1CFB9F000, v3, v4, "DDActionsResponder deiniting", v5, 2u);
    MEMORY[0x1D3873280](v5, -1, -1);
  }

  v7.receiver = v1;
  v7.super_class = type metadata accessor for DDActionsResponder();
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

uint64_t type metadata accessor for VoicemailDetailContainerView()
{
  result = qword_1EE04E508;
  if (!qword_1EE04E508)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1CFC53F98()
{
  sub_1CFC54158(319, &unk_1EE050000, MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    sub_1CFC54104(319, &qword_1EE04D170, type metadata accessor for VoicemailDetailContainerViewModel);
    if (v1 <= 0x3F)
    {
      sub_1CFC54104(319, &qword_1EE04D168, type metadata accessor for VoicemailSmartActionsBannerViewModel);
      if (v2 <= 0x3F)
      {
        sub_1CFBB02CC();
        if (v3 <= 0x3F)
        {
          sub_1CFBA2D80(319, &qword_1EE04CEF0, 0x1E69DC738);
          if (v4 <= 0x3F)
          {
            sub_1CFC54158(319, &qword_1EE04FFC0, MEMORY[0x1E6981790]);
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

void sub_1CFC54104(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1CFC9F428();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1CFC54158(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
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

double sub_1CFC541C8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for VoicemailDetailContainerView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1CFC4D140(a1, v6, a2);
}

uint64_t sub_1CFC54248@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for VoicemailDetailContainerView() - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return sub_1CFC4DCE4(a1, v6, v7, a2);
}

uint64_t sub_1CFC5434C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1CFC543CC()
{
  result = qword_1EE04D4A8;
  if (!qword_1EE04D4A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EF640, &unk_1CFCA71C8);
    sub_1CFBA57C0(&qword_1EE04D200, &qword_1EC4ED840, &qword_1CFCA29B0);
    sub_1CFC54484();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE04D4A8);
  }

  return result;
}

unint64_t sub_1CFC54484()
{
  result = qword_1EE04E530;
  if (!qword_1EE04E530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE04E530);
  }

  return result;
}

unint64_t sub_1CFC544F8()
{
  result = qword_1EE04D498;
  if (!qword_1EE04D498)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EF638, &qword_1CFCA71C0);
    sub_1CFBA57C0(&unk_1EE04D1F0, &qword_1EC4EF630, &qword_1CFCA71B8);
    sub_1CFC545B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE04D498);
  }

  return result;
}

unint64_t sub_1CFC545B0()
{
  result = qword_1EE04E528;
  if (!qword_1EE04E528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE04E528);
  }

  return result;
}

uint64_t objectdestroyTm_4()
{
  v1 = (type metadata accessor for VoicemailDetailContainerView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  sub_1CFC07CFC(*(v0 + v3), *(v0 + v3 + 8));
  v5 = v1[7];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF520, &qword_1CFCA6FD8);
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  v7 = v1[8];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EF528, &unk_1CFCA6FE0);
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);
  v9 = *(v0 + v3 + v1[9] + 8);

  v10 = *(v0 + v3 + v1[12] + 8);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1CFC547C8(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for VoicemailDetailContainerView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

id sub_1CFC5483C(uint64_t a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(MEMORY[0x1E69DD168]) init];
  swift_getKeyPath();
  sub_1CFC55814(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel);
  sub_1CFC9C158();

  v4 = *(a2 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__message);
  if (v4)
  {
    v5 = v4;
    sub_1CFC9D618();
  }

  v6 = sub_1CFC9F728();

  [v3 setText_];

  v7 = [objc_opt_self() preferredFontForTextStyle_];
  [v3 setFont_];

  [v3 setAdjustsFontForContentSizeCategory_];
  [v3 setDataDetectorTypes_];
  [v3 setEditable_];
  v8 = v3;
  [v8 setUserInteractionEnabled_];
  [v8 setScrollEnabled_];
  v9 = [objc_opt_self() clearColor];
  [v8 setBackgroundColor_];

  [v8 setTextContainerInset_];
  v10 = [v8 textContainer];
  [v10 setLineFragmentPadding_];

  return v8;
}

uint64_t sub_1CFC54AB4(uint64_t a1, char a2, int a3, int a4, id a5, double a6, double a7, double a8, double a9)
{
  v11 = *MEMORY[0x1E69DE090];
  if ((a2 & 1) == 0)
  {
    v11 = *&a1;
  }

  LODWORD(a8) = 1148846080;
  LODWORD(a9) = 1132068864;
  [a5 systemLayoutSizeFittingSize:v11 withHorizontalFittingPriority:*(MEMORY[0x1E69DE090] + 8) verticalFittingPriority:{a8, a9}];
  if ((a2 & 1) == 0)
  {
    return a1;
  }

  return v12;
}

void sub_1CFC54B40(void *a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_1CFC55814(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel);
  sub_1CFC9C158();

  v5 = *(a3 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__message);
  if (v5)
  {
    v6 = v5;
    sub_1CFC9D618();
  }

  v7 = sub_1CFC9F728();

  [a1 setText_];

  v8 = [a1 attributedText];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 mutableCopy];

    if (v10)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF748, &qword_1CFCA7658);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1CFCA1DD0;
      v12 = *MEMORY[0x1E6999AA0];
      *(inited + 32) = sub_1CFC9F768();
      *(inited + 40) = v13;
      swift_getKeyPath();
      sub_1CFC9C158();

      *(inited + 48) = *(a3 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__smartActionCustomRanges);

      v14 = sub_1CFBE5A9C(inited);
      swift_setDeallocating();
      sub_1CFBC2FB0(inited + 32, &qword_1EC4EF750, &qword_1CFCA7688);
      sub_1CFC536E0(v14);

      v15 = sub_1CFC9F698();

      [v10 dd:-1 makeLinksForResultsInAttributesOfType:v15 context:?];

      v16 = [v10 copy];
      [a1 setAttributedText_];
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1CFC54DFC()
{
  if (qword_1EE050010 != -1)
  {
    swift_once();
  }

  v0 = sub_1CFC9D938();
  __swift_project_value_buffer(v0, qword_1EE052308);
  v1 = sub_1CFC9D918();
  v2 = sub_1CFC9FAC8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1CFB9F000, v1, v2, "canHandleClientAction", v3, 2u);
    MEMORY[0x1D3873280](v3, -1, -1);
  }

  return 1;
}

void sub_1CFC54ED8()
{
  if (qword_1EE050010 != -1)
  {
    swift_once();
  }

  v0 = sub_1CFC9D938();
  __swift_project_value_buffer(v0, qword_1EE052308);
  oslog = sub_1CFC9D918();
  v1 = sub_1CFC9FAC8();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_1CFB9F000, oslog, v1, "handleClientAction", v2, 2u);
    MEMORY[0x1D3873280](v2, -1, -1);
  }
}

uint64_t getEnumTagSinglePayload for VoicemailDetailContainerView.ScrollViewMaskViewModifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
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

unint64_t sub_1CFC550B4()
{
  result = qword_1EE04E460;
  if (!qword_1EE04E460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE04E460);
  }

  return result;
}

unint64_t sub_1CFC55178()
{
  result = qword_1EE04D518;
  if (!qword_1EE04D518)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EF6A8, &qword_1CFCA75A0);
    sub_1CFBA57C0(&qword_1EE04D2C0, &unk_1EC4EF6B0, &qword_1CFCA75A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE04D518);
  }

  return result;
}

unint64_t sub_1CFC55230()
{
  result = qword_1EE04E518;
  if (!qword_1EE04E518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE04E518);
  }

  return result;
}

unint64_t sub_1CFC55284()
{
  result = qword_1EE04D328;
  if (!qword_1EE04D328)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EF6E0, &qword_1CFCA75D0);
    sub_1CFC55310();
    sub_1CFC5539C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE04D328);
  }

  return result;
}

unint64_t sub_1CFC55310()
{
  result = qword_1EE04D450;
  if (!qword_1EE04D450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EF6E8, &qword_1CFCA75D8);
    sub_1CFC5539C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE04D450);
  }

  return result;
}

unint64_t sub_1CFC5539C()
{
  result = qword_1EE04D508;
  if (!qword_1EE04D508)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EF708, &qword_1CFCA75F8);
    sub_1CFBA57C0(&qword_1EE04D2B0, &qword_1EC4EF710, &qword_1CFCA7600);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE04D508);
  }

  return result;
}

unint64_t sub_1CFC55454()
{
  result = qword_1EE04D348;
  if (!qword_1EE04D348)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EF700, &qword_1CFCA75F0);
    sub_1CFC5539C();
    sub_1CFC55310();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE04D348);
  }

  return result;
}

unint64_t sub_1CFC554E0()
{
  result = qword_1EE04D2F0;
  if (!qword_1EE04D2F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EF6D0, &qword_1CFCA75C0);
    sub_1CFC55284();
    sub_1CFC5539C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE04D2F0);
  }

  return result;
}

unint64_t sub_1CFC5556C()
{
  result = qword_1EE04D4F8;
  if (!qword_1EE04D4F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EF720, &qword_1CFCA7610);
    sub_1CFBA57C0(&unk_1EE04D2A0, &qword_1EC4EF728, &qword_1CFCA7618);
    sub_1CFBA57C0(&qword_1EE04D2E8, &unk_1EC4EF730, &qword_1CFCA7620);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE04D4F8);
  }

  return result;
}

unint64_t sub_1CFC55650()
{
  result = qword_1EE04E458;
  if (!qword_1EE04E458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE04E458);
  }

  return result;
}

unint64_t sub_1CFC556B4()
{
  result = qword_1EE04D310;
  if (!qword_1EE04D310)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4EF768, &qword_1CFCA76B8);
    sub_1CFC55454();
    sub_1CFC554E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE04D310);
  }

  return result;
}

unint64_t sub_1CFC55740()
{
  result = qword_1EE04D340;
  if (!qword_1EE04D340)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EF778, &qword_1CFCA76C0);
    sub_1CFC5556C();
    sub_1CFBA57C0(&unk_1EE04D2A0, &qword_1EC4EF728, &qword_1CFCA7618);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE04D340);
  }

  return result;
}

uint64_t sub_1CFC55814(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1CFC55874(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  sub_1CFCA00E8();
  swift_getAssociatedConformanceWitness();
  return sub_1CFCA0078();
}

id SectionController.anyCell<A>(collectionView:for:at:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v29 = a1;
  v30 = a3;
  v31 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_1CFC9FEB8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v29 - v14;
  v16 = *(*(a5 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v13);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(AssociatedTypeWitness - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v23 = &v29 - v22;
  (*(v24 + 16))(v19, a2, a5);
  v25 = swift_dynamicCast();
  v26 = *(v20 + 56);
  if (v25)
  {
    v26(v15, 0, 1, AssociatedTypeWitness);
    (*(v20 + 32))(v23, v15, AssociatedTypeWitness);
    v27 = (*(a6 + 136))(v29, v23, v30, v31, a6);
    (*(v20 + 8))(v23, AssociatedTypeWitness);
    return v27;
  }

  else
  {
    v26(v15, 1, 1, AssociatedTypeWitness);
    (*(v11 + 8))(v15, v10);
    return [objc_allocWithZone(MEMORY[0x1E69DC7F8]) init];
  }
}

uint64_t SectionController.anyPerformPrimaryAction<A>(for:cell:deselect:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v31 = a3;
  v32 = a4;
  v30 = a2;
  v33 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = sub_1CFC9FEB8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v29 - v15;
  v17 = *(*(a6 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v14);
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(AssociatedTypeWitness - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v24 = &v29 - v23;
  (*(v25 + 16))(v20, a1, a6);
  v26 = swift_dynamicCast();
  v27 = *(v21 + 56);
  if (v26)
  {
    v27(v16, 0, 1, AssociatedTypeWitness);
    (*(v21 + 32))(v24, v16, AssociatedTypeWitness);
    (*(a7 + 176))(v24, v30, v31, v32, v33, a7);
    return (*(v21 + 8))(v24, AssociatedTypeWitness);
  }

  else
  {
    v27(v16, 1, 1, AssociatedTypeWitness);
    return (*(v12 + 8))(v16, v11);
  }
}

uint64_t SectionController.anyContextMenu<A>(for:at:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v30 = a3;
  v29 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_1CFC9FEB8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v28 - v13;
  v15 = *(*(a4 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v12);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(AssociatedTypeWitness - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v22 = &v28 - v21;
  (*(v23 + 16))(v18, a1, a4);
  v24 = swift_dynamicCast();
  v25 = *(v19 + 56);
  if (v24)
  {
    v25(v14, 0, 1, AssociatedTypeWitness);
    (*(v19 + 32))(v22, v14, AssociatedTypeWitness);
    v26 = (*(a5 + 184))(v22, v29, v30, a5);
    (*(v19 + 8))(v22, AssociatedTypeWitness);
    return v26;
  }

  else
  {
    v25(v14, 1, 1, AssociatedTypeWitness);
    (*(v10 + 8))(v14, v9);
    return 0;
  }
}

uint64_t SectionDragDelegate.dragItems<A>(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28 = a5;
  v10 = *(a4 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = sub_1CFC9FEB8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v27 - v16;
  v18 = *(*(a3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  (*(v20 + 16))(&v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a3);
  v21 = swift_dynamicCast();
  (*(*(AssociatedTypeWitness - 8) + 56))(v17, v21 ^ 1u, 1, AssociatedTypeWitness);
  v22 = swift_allocObject();
  v22[2] = a2;
  v22[3] = a3;
  v23 = v28;
  v22[4] = a4;
  v22[5] = v23;
  v22[6] = v5;
  swift_unknownObjectRetain();
  v30 = a2;
  v31 = a3;
  v32 = a4;
  v33 = v23;
  v34 = sub_1CFC56EF4;
  v35 = v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF7B0, &qword_1CFCA7790);
  sub_1CFC56454(sub_1CFC568B8, v29, MEMORY[0x1E69E73E0], v24, v25, &v36);

  (*(v13 + 8))(v17, v12);
  if (v36)
  {
    return v36;
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }
}

uint64_t sub_1CFC56454@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v29 = a5;
  v30 = a2;
  v32 = a4;
  v31 = a1;
  v28 = *(a3 - 8);
  v10 = *(v28 + 64);
  v11 = (MEMORY[0x1EEE9AC00])();
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 16);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v11);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v24 = &v28 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 16))(v24, v6);
  v26 = 1;
  if ((*(v16 + 48))(v24, 1, v15) != 1)
  {
    (*(v16 + 32))(v20, v24, v15);
    v31(v20, v13);
    (*(v16 + 8))(v20, v15);
    if (v7)
    {
      return (*(v28 + 32))(v29, v13, a3);
    }

    v26 = 0;
  }

  return (*(*(v32 - 8) + 56))(a6, v26, 1);
}

uint64_t SectionController.contentUnavailableConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1CFC9DBB8();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_1CFC567A0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1CFC9DBB8();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_1CFC5680C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();

  return SectionDragDelegate.dragItems<A>(for:)(a1, a2, AssociatedTypeWitness, a3, AssociatedConformanceWitness);
}

uint64_t sub_1CFC568B8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  result = v3();
  *a1 = result;
  return result;
}

uint64_t sub_1CFC56B8C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_1CFC56BD4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1CFC56C2C(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF7C8, &unk_1CFCA78E0);
  swift_getAssociatedTypeWitness();
  sub_1CFC56E90();
  v3 = sub_1CFC9F868();
  sub_1CFC9F918();
  swift_getWitnessTable();
  if ((sub_1CFC9FA78() & 1) == 0)
  {
    v4 = *(a2 + 72);
    (*(a2 + 64))(v3);
  }
}

uint64_t sub_1CFC56D44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1CFBB4598(a1, &v6);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = swift_dynamicCast();
  return (*(*(AssociatedTypeWitness - 8) + 56))(a2, v4 ^ 1u, 1, AssociatedTypeWitness);
}

uint64_t objectdestroyTm_5()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 64);

  v3 = *(v0 + 88);

  v4 = *(v0 + 104);

  v5 = *(v0 + 120);

  return MEMORY[0x1EEE6BDD0](v0, 128, 7);
}

uint64_t sub_1CFC56E68(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1CFC56C2C(a1, v1 + 32);
}

uint64_t sub_1CFC56E74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_1CFC56D44(a1, a2);
}

unint64_t sub_1CFC56E90()
{
  result = qword_1EC4EF7D0;
  if (!qword_1EC4EF7D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EF7C8, &unk_1CFCA78E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4EF7D0);
  }

  return result;
}

uint64_t sub_1CFC56EF4(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[4];
  v4 = v1[6];
  return (*(v3 + 16))(a1, v2);
}

uint64_t sub_1CFC56F38(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void sub_1CFC56F7C()
{
  v0 = *MEMORY[0x1E69A77F8];
  sub_1CFC9F768();
  v1 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v2 = sub_1CFC9F728();

  v3 = [v1 initWithSuiteName_];

  qword_1EC4EF7E0 = v3;
}

id _s10CallsAppUI21RecentsViewControllerC14navigationItemSo012UINavigationH0Cvg_0()
{
  v1 = OBJC_IVAR____TtC10CallsAppUI21RecentsViewController____lazy_storage____navItem;
  v2 = *&v0[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController____lazy_storage____navItem];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController____lazy_storage____navItem];
  }

  else
  {
    v4 = [v0 title];
    if (v4)
    {
      v5 = v4;
      sub_1CFC9F768();
    }

    v6 = objc_allocWithZone(type metadata accessor for ObservingNavigationItem());
    v7 = sub_1CFC9F728();

    v8 = [v6 initWithTitle_];

    v9 = *&v0[v1];
    *&v0[v1] = v8;
    v3 = v8;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

uint64_t RecentsViewController.hasLegacyUnreadVoicemails.getter()
{
  v1 = OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_hasLegacyUnreadVoicemails;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t RecentsViewController.hasLegacyUnreadVoicemails.setter(char a1)
{
  v3 = OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_hasLegacyUnreadVoicemails;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id RecentsViewController.meCardSharingEnabled.getter()
{
  if (qword_1EC4ED028 != -1)
  {
    swift_once();
  }

  result = qword_1EC4EF7E0;
  if (qword_1EC4EF7E0)
  {
    return [qword_1EC4EF7E0 BOOLForKey_];
  }

  return result;
}

uint64_t sub_1CFC57250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED950, &qword_1CFCA2710) - 8) + 64) + 15;
  v4[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1CFC572EC, 0, 0);
}

uint64_t sub_1CFC572EC()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = [objc_allocWithZone(MEMORY[0x1E69D8AF8]) init];
  v0[5] = v3;
  v4 = sub_1CFC9F998();
  (*(*(v4 - 8) + 56))(v1, 1, 1, v4);
  sub_1CFC9F968();
  v5 = v3;
  v6 = v2;
  v7 = sub_1CFC9F958();
  v8 = swift_allocObject();
  v9 = MEMORY[0x1E69E85E0];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = v5;
  v8[5] = v6;
  v10 = sub_1CFBDC644(0, 0, v1, &unk_1CFCA7BF0, v8);
  v0[6] = v10;
  v11 = *(MEMORY[0x1E69E86C0] + 4);
  v12 = swift_task_alloc();
  v0[7] = v12;
  v13 = sub_1CFBA2D80(0, &qword_1EE04CF78, 0x1E69D8AF8);
  *v12 = v0;
  v12[1] = sub_1CFC57494;
  v14 = v0[2];

  return MEMORY[0x1EEE6DA40](v14, v10, v13);
}

uint64_t sub_1CFC57494()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1CFC575AC, 0, 0);
}

uint64_t sub_1CFC575AC()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1CFC57614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  sub_1CFC9F968();
  v5[5] = sub_1CFC9F958();
  v7 = sub_1CFC9F938();

  return MEMORY[0x1EEE6DFA0](sub_1CFC576B0, v7, v6);
}

uint64_t sub_1CFC576B0()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];

  [v3 setDelegate_];
  v5 = *(v2 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController__configurationProvider);
  *(v2 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController__configurationProvider) = v3;

  *v4 = v3;
  v8 = v0[1];
  v6 = v3;

  return v8();
}

uint64_t sub_1CFC57758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED950, &qword_1CFCA2710);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v27 - v11;
  sub_1CFBA29FC(a3, v27 - v11, &qword_1EC4ED950, &qword_1CFCA2710);
  v13 = sub_1CFC9F998();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1CFBC2FB0(v12, &qword_1EC4ED950, &qword_1CFCA2710);
  }

  else
  {
    sub_1CFC9F988();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1CFC9F938();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_1CFC9F7A8() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;
      sub_1CFBA2D80(0, &qword_1EE04CF78, 0x1E69D8AF8);

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  sub_1CFBA2D80(0, &qword_1EE04CF78, 0x1E69D8AF8);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_1CFC57A48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED950, &qword_1CFCA2710);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v27 - v11;
  sub_1CFBA29FC(a3, v27 - v11, &qword_1EC4ED950, &qword_1CFCA2710);
  v13 = sub_1CFC9F998();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1CFBC2FB0(v12, &qword_1EC4ED950, &qword_1CFCA2710);
  }

  else
  {
    sub_1CFC9F988();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1CFC9F938();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_1CFC9F7A8() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

id sub_1CFC57D08()
{
  v1 = OBJC_IVAR____TtC10CallsAppUI21RecentsViewController____lazy_storage___searchController;
  v2 = *(v0 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController____lazy_storage___searchController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController____lazy_storage___searchController);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DCF10]) initWithSearchResultsController_];
    [v4 setSearchResultsUpdater_];
    [v4 setObscuresBackgroundDuringPresentation_];
    [v4 setDelegate_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1CFC57DC4()
{
  v1 = OBJC_IVAR____TtC10CallsAppUI21RecentsViewController____lazy_storage___doneButtonItem;
  v2 = *(v0 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController____lazy_storage___doneButtonItem);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController____lazy_storage___doneButtonItem);
  }

  else
  {
    sub_1CFBA2D80(0, &unk_1EE04D0D0, 0x1E69DC708);
    sub_1CFBA2D80(0, &qword_1EE04CEF8, 0x1E69DC628);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v4 = v0;
    sub_1CFC9FDF8();
    v5 = sub_1CFC9FB08();
    v6 = *(v0 + v1);
    *(v4 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

void sub_1CFC57EE8()
{
  v0 = sub_1CFC9C138();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    RecentsViewController.setEditing(_:animated:)(0, 1);
    v6[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_isEditingFavorites] = 0;
    v8 = *&v6[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_favoriteSection];
    if (v8)
    {
      *(v8 + 40) = 0;
      v9 = *(v8 + 104);
      if (*(v9 + OBJC_IVAR____TtC10CallsAppUI18FavoriteCellConfig__isEditing))
      {
        KeyPath = swift_getKeyPath();
        v18[0] = v18;
        MEMORY[0x1EEE9AC00](KeyPath);
        v18[-2] = v9;
        LOBYTE(v18[-1]) = 0;
        v18[2] = v9;
        sub_1CFC6A6B0(&qword_1EE04F8D0, type metadata accessor for FavoriteCellConfig);

        sub_1CFC9C148();
      }

      else
      {
        *(v9 + OBJC_IVAR____TtC10CallsAppUI18FavoriteCellConfig__isEditing) = 0;
      }

      sub_1CFBCD8F8();
      sub_1CFC83538();
      v11 = swift_unknownObjectWeakLoadStrong();
      if (v11)
      {
        v12 = v11;
        v13 = *(sub_1CFBAA4F8() + 16);

        if (v13)
        {
          v18[0] = v8;
          v14 = 0;
          v15 = (v1 + 8);
          do
          {
            MEMORY[0x1D386E620](v14, 0);
            v16 = sub_1CFC9C0C8();
            v17 = [v12 cellForItemAtIndexPath_];

            if (v17)
            {
              sub_1CFC9FD88();
            }

            ++v14;
            (*v15)(v4, v0);
          }

          while (v13 != v14);
        }
      }

      else
      {
      }
    }

    sub_1CFBAB5EC(v7);
  }
}

Swift::Void __swiftcall RecentsViewController.setEditing(_:animated:)(Swift::Bool _, Swift::Bool animated)
{
  v3 = v2;
  v17.receiver = v3;
  v17.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v17, sel_setEditing_animated_, _, animated);
  v6 = [objc_opt_self() currentDevice];
  v7 = [v6 userInterfaceIdiom];

  if (v7 == 6)
  {
    v8 = *&v3[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_filterTitleButton];
    if (!v8)
    {
      goto LABEL_6;
    }

    v9 = v8;
    v10 = sub_1CFC9E118();
    sub_1CFC9CC78();
    v10(&v16, 0);
  }

  else
  {
    v9 = sub_1CFC585F4();
    [v9 setEnabled_];
  }

LABEL_6:
  sub_1CFBAB5EC();
  if ([v3 isEditing])
  {
    v11 = sub_1CFBC31CC()[2];

    v12 = sub_1CFC583A0();
    if (v11)
    {
      v13 = *&v3[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_recentsSection];
      v14 = OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_items;
      swift_beginAccess();
      v15 = v11 == *(*(v13 + v14) + 16);
    }

    else
    {
      v15 = 1;
    }

    [v12 setEnabled_];
  }
}

id sub_1CFC583A0()
{
  v1 = OBJC_IVAR____TtC10CallsAppUI21RecentsViewController____lazy_storage___clearAllButtonItem;
  v2 = *&v0[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController____lazy_storage___clearAllButtonItem];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController____lazy_storage___clearAllButtonItem];
  }

  else
  {
    ObjectType = swift_getObjectType();
    type metadata accessor for BundleClass();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v6 = [objc_opt_self() bundleForClass_];
    sub_1CFC9BE28();

    v20[3] = ObjectType;
    v20[0] = v0;
    v7 = v0;
    v8 = sub_1CFC9F728();

    if (ObjectType)
    {
      v9 = __swift_project_boxed_opaque_existential_1(v20, ObjectType);
      v10 = *(ObjectType - 8);
      v11 = *(v10 + 64);
      MEMORY[0x1EEE9AC00](v9);
      v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v10 + 16))(v13);
      v14 = sub_1CFCA02A8();
      (*(v10 + 8))(v13, ObjectType);
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
    }

    else
    {
      v14 = 0;
    }

    v15 = objc_allocWithZone(MEMORY[0x1E69DC708]);
    v16 = [v15 initWithTitle:v8 style:0 target:v14 action:{sel_showClearAllActionSheet, v20[0]}];

    swift_unknownObjectRelease();
    v17 = *&v0[v1];
    *&v0[v1] = v16;
    v3 = v16;

    v2 = 0;
  }

  v18 = v2;
  return v3;
}

id sub_1CFC585F4()
{
  v1 = OBJC_IVAR____TtC10CallsAppUI21RecentsViewController____lazy_storage___filterButtonItem;
  v2 = *(v0 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController____lazy_storage___filterButtonItem);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController____lazy_storage___filterButtonItem);
  }

  else
  {
    v4 = v0;
    sub_1CFBA2D80(0, &unk_1EE04D0D0, 0x1E69DC708);
    v5 = sub_1CFC9F728();
    v6 = [objc_opt_self() systemImageNamed_];

    v7 = sub_1CFC9FB58();
    v8 = *(v0 + v1);
    *(v4 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

id sub_1CFC586DC()
{
  v1 = OBJC_IVAR____TtC10CallsAppUI21RecentsViewController____lazy_storage___addFavoriteItem;
  v2 = *(v0 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController____lazy_storage___addFavoriteItem);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController____lazy_storage___addFavoriteItem);
  }

  else
  {
    sub_1CFBA2D80(0, &unk_1EE04D0D0, 0x1E69DC708);
    v4 = sub_1CFC9F728();
    v5 = [objc_opt_self() systemImageNamed_];

    sub_1CFBA2D80(0, &qword_1EE04CEF8, 0x1E69DC628);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v6 = v0;
    sub_1CFC9FDF8();
    v7 = sub_1CFC9FB58();
    v8 = *(v0 + v1);
    *(v6 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

void sub_1CFC58848()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (*(Strong + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_favoritesDataSource))
    {
      v2 = swift_allocObject();
      swift_unknownObjectWeakInit();
      objc_allocWithZone(type metadata accessor for FavoritePickerViewController());
      v3 = swift_retain_n();
      v4 = sub_1CFC2AB48(v3, sub_1CFC6C0F0, v2);
      [v1 presentViewController:v4 animated:1 completion:0];
    }
  }
}

id sub_1CFC5893C(uint64_t a1, void *a2)
{
  v6 = 1;
  v3 = objc_allocWithZone(type metadata accessor for PersonalNicknameMenuView());
  v4 = a2;
  return PersonalNicknameMenuView.init(displayContext:personalNicknameMenuViewDelegate:)(&v6, a2, &protocol witness table for RecentsViewController);
}

id sub_1CFC58994(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v6 = v4();

  return v6;
}

void sub_1CFC589FC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong dismissViewControllerAnimated:1 completion:0];
    [*&v1[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_snapController] startOnboardingOrEditForMode:1 fromViewController:v1];
  }
}

Swift::Void __swiftcall RecentsViewController.presentOnboardingViewController()()
{
  [v0 dismissViewControllerAnimated:1 completion:0];
  v1 = *&v0[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_snapController];

  [v1 startOnboardingOrEditForMode:1 fromViewController:v0];
}

void sub_1CFC58AD8(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = a3[3];
    v7 = a3[4];
    __swift_project_boxed_opaque_existential_1(a3, v6);
    v8 = (*(v7 + 24))(v6, v7);
    [v5 presentViewController:v8 animated:1 completion:0];
  }
}

uint64_t sub_1CFC58B88()
{
  v2 = v0;
  v3 = sub_1CFC9C138();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x1EEE9AC00](v3);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_favoriteSection;
  v10 = *&v0[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_favoriteSection];
  if (!v10 || !*&v0[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_favoritesDataSource])
  {
    return result;
  }

  v11 = *&v0[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_favoriteSection];

  v12 = sub_1CFC9C718();

  v13 = *(v12 + 16);

  if (!v13)
  {
    v24 = swift_allocObject();
    swift_unknownObjectWeakInit();
    objc_allocWithZone(type metadata accessor for FavoritePickerViewController());
    v25 = swift_retain_n();
    v26 = sub_1CFC2AB48(v25, sub_1CFC6C1DC, v24);
    [v2 presentViewController:v26 animated:1 completion:0];

LABEL_23:
  }

  v47 = v4;
  v14 = *(v10 + 64);
  v15 = sub_1CFC9C718();
  v16 = *(sub_1CFBAA4F8() + 16);

  v17 = sub_1CFBAA810(v16, v15);
  v21 = v20 >> 1;
  if (__OFSUB__(v20 >> 1, v19))
  {
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v16 = v17;
  v4 = v20 >> 1;
  if ((v20 >> 1) - v19 >= 4)
  {
    v4 = v19 + 4;
    if (__OFADD__(v19, 4))
    {
      goto LABEL_46;
    }
  }

  if (v4 < v19)
  {
    goto LABEL_42;
  }

  if (v21 < v19)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  if (v21 < v4)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if (v4 < 0)
  {
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  if ((v20 & 1) == 0)
  {
LABEL_12:
    sub_1CFBAA740(v16, v18, v19, v20 & 1 | (2 * v4));
    v23 = v22;
    goto LABEL_20;
  }

  v45 = v18;
  v46 = v20;
  v1 = v19;
  sub_1CFCA02D8();
  swift_unknownObjectRetain_n();
  v27 = swift_dynamicCastClass();
  if (!v27)
  {
    swift_unknownObjectRelease();
    v27 = MEMORY[0x1E69E7CC0];
  }

  v28 = *(v27 + 16);

  if (__OFSUB__(v4, v1))
  {
    goto LABEL_47;
  }

  if (v28 != v4 - v1)
  {
LABEL_48:
    swift_unknownObjectRelease();
    v19 = v1;
    v18 = v45;
    LOBYTE(v20) = v46;
    goto LABEL_12;
  }

  v23 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (v23)
  {
    goto LABEL_21;
  }

  v23 = MEMORY[0x1E69E7CC0];
LABEL_20:
  swift_unknownObjectRelease();
LABEL_21:
  v29 = *(v23 + 16);

  if (v29)
  {
    v31 = *&v2[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_detailsPresenter];
    v32 = *(v10 + 64);

    sub_1CFC8C8F8(v33, 1);

    goto LABEL_23;
  }

  v2[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_isEditingFavorites] = 1;
  v34 = *&v2[v9];
  if (v34)
  {
    *(v34 + 40) = 1;
    v35 = *(v34 + 104);
    if (*(v35 + OBJC_IVAR____TtC10CallsAppUI18FavoriteCellConfig__isEditing) == 1)
    {
      *(v35 + OBJC_IVAR____TtC10CallsAppUI18FavoriteCellConfig__isEditing) = 1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      v46 = &v44;
      MEMORY[0x1EEE9AC00](KeyPath);
      *(&v44 - 2) = v35;
      *(&v44 - 8) = 1;
      v48 = v35;
      sub_1CFC6A6B0(&qword_1EE04F8D0, type metadata accessor for FavoriteCellConfig);

      sub_1CFC9C148();
    }

    sub_1CFBCD8F8();
    sub_1CFC83538();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v38 = Strong;
      v39 = *(sub_1CFBAA4F8() + 16);

      if (v39)
      {
        v46 = v34;
        v40 = 0;
        v41 = (v47 + 8);
        do
        {
          MEMORY[0x1D386E620](v40, 0);
          v42 = sub_1CFC9C0C8();
          v43 = [v38 cellForItemAtIndexPath_];

          if (v43)
          {
            sub_1CFC9FD78();
          }

          ++v40;
          (*v41)(v8, v3);
        }

        while (v39 != v40);
      }
    }

    else
    {
    }
  }

  sub_1CFBAB5EC(v30);
}

void sub_1CFC590EC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    RecentsViewController.setEditing(_:animated:)(1, 1);
  }
}

char *RecentsViewController.__allocating_init(recentsDetailProvider:recentsDataSource:recentsRemindersDataSource:favoritesDataSource:legacyMailboxService:keypadViewController:)(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  sub_1CFBA29FC(a1, v48, &unk_1EC4EF810, &qword_1CFCA7900);
  v44 = a5;
  sub_1CFBA29FC(a5, v47, &qword_1EC4EE538, qword_1CFCA9BD0);
  sub_1CFBA29FC(v48, v46, &unk_1EC4EF810, &qword_1CFCA7900);
  v15 = objc_allocWithZone(v8);
  v16 = a2;
  sub_1CFC6A630(a6);
  v17 = sub_1CFC698E8(v46, v16, a4, 0, 0, 0, 0);

  sub_1CFBC2FB0(v48, &unk_1EC4EF810, &qword_1CFCA7900);
  v18 = &v17[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_keypadViewControllerProvider];
  v19 = *&v17[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_keypadViewControllerProvider];
  v20 = *&v17[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_keypadViewControllerProvider + 8];
  v21 = *&v17[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_keypadViewControllerProvider + 16];
  *v18 = a6;
  v18[1] = a7;
  v18[2] = a8;
  v22 = v17;
  sub_1CFC6A670(v19);
  v23 = OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_legacyMailboxService;
  swift_beginAccess();
  sub_1CFBA5808(v47, &v22[v23]);
  swift_endAccess();
  v24 = &v22[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_recentsDismissalAction];
  v25 = *&v22[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_recentsDismissalAction];
  v26 = *&v22[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_recentsDismissalAction + 8];
  *v24 = 0;
  *(v24 + 1) = 0;
  sub_1CFBABFA0(v25);

  v27 = *&v22[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_recentsRemindersDataSource];
  *&v22[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_recentsRemindersDataSource] = a3;
  v42 = a3;

  v28 = *v18;
  v29 = v18[1];
  v30 = v18[2];
  *v18 = a6;
  v18[1] = a7;
  v18[2] = a8;
  sub_1CFC6A630(a6);
  sub_1CFC6A670(v28);
  if (a3)
  {
    v31 = *&v22[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_detailsPresenter];
    v32 = type metadata accessor for RecentsSectionController();
    v33 = *(v32 + 48);
    v34 = *(v32 + 52);
    swift_allocObject();
    v35 = v42;

    v36 = sub_1CFC748C0(v35, v31, 1);
    v37 = OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_recentsRemindersSection;
    v38 = *&v22[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_recentsRemindersSection];
    *&v22[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_recentsRemindersSection] = v36;

    v39 = *&v22[v37];
    if (v39)
    {
      *(v39 + OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_delegate + 8) = &off_1F4C6E200;
      swift_unknownObjectWeakAssign();
      if (*&v22[v37])
      {

        sub_1CFBA5464();
      }
    }

    sub_1CFBA5878();

    sub_1CFC6A670(a6);

    sub_1CFBC2FB0(v44, &qword_1EC4EE538, qword_1CFCA9BD0);
    sub_1CFBC2FB0(a1, &unk_1EC4EF810, &qword_1CFCA7900);
  }

  else
  {
    sub_1CFC6A670(a6);

    sub_1CFBC2FB0(v44, &qword_1EC4EE538, qword_1CFCA9BD0);
    sub_1CFBC2FB0(a1, &unk_1EC4EF810, &qword_1CFCA7900);
    v40 = *&v22[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_recentsRemindersSection];
    *&v22[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_recentsRemindersSection] = 0;
  }

  return v22;
}

char *RecentsViewController.__allocating_init(recentsDetailProvider:recentsDataSource:favoritesDataSource:legacyMailboxService:keypadViewController:recentsDismissalAction:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1CFBA29FC(a1, v30, &unk_1EC4EF810, &qword_1CFCA7900);
  v17 = objc_allocWithZone(v9);
  v18 = sub_1CFC698E8(v30, a2, a3, 0, 0, 0, 0);

  sub_1CFBC2FB0(a1, &unk_1EC4EF810, &qword_1CFCA7900);
  v19 = &v18[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_keypadViewControllerProvider];
  v20 = *&v18[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_keypadViewControllerProvider];
  v21 = *&v18[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_keypadViewControllerProvider + 8];
  v22 = *&v18[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_keypadViewControllerProvider + 16];
  *v19 = a5;
  *(v19 + 1) = a6;
  *(v19 + 2) = a7;
  v23 = v18;
  sub_1CFC6A670(v20);
  v24 = OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_legacyMailboxService;
  swift_beginAccess();
  sub_1CFBA5808(a4, &v23[v24]);
  swift_endAccess();
  v25 = &v23[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_recentsDismissalAction];
  v26 = *&v23[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_recentsDismissalAction];
  v27 = *&v23[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_recentsDismissalAction + 8];
  *v25 = a8;
  *(v25 + 1) = a9;
  sub_1CFBABFA0(v26);

  return v23;
}

char *RecentsViewController.__allocating_init(recentsDetailProvider:recentsDataSource:favoritesDataSource:legacyMailboxService:keypadViewController:recentsDismissalAction:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_1CFBA29FC(a1, v31, &unk_1EC4EF810, &qword_1CFCA7900);
  sub_1CFBA29FC(a4, v30, &qword_1EC4EE538, qword_1CFCA9BD0);
  if (a5)
  {
    v13 = nullsub_1;
  }

  else
  {
    v13 = 0;
  }

  v26 = v13;
  sub_1CFBA29FC(v31, v29, &unk_1EC4EF810, &qword_1CFCA7900);
  v14 = objc_allocWithZone(v7);
  v15 = sub_1CFC698E8(v29, a2, a3, 0, 0, 0, 0);

  sub_1CFBC2FB0(a4, &qword_1EC4EE538, qword_1CFCA9BD0);
  sub_1CFBC2FB0(a1, &unk_1EC4EF810, &qword_1CFCA7900);
  sub_1CFBC2FB0(v31, &unk_1EC4EF810, &qword_1CFCA7900);
  v16 = &v15[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_keypadViewControllerProvider];
  v17 = *&v15[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_keypadViewControllerProvider];
  v18 = *&v15[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_keypadViewControllerProvider + 8];
  v19 = *&v15[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_keypadViewControllerProvider + 16];
  *v16 = a5;
  *(v16 + 1) = v26;
  *(v16 + 2) = 0;
  v20 = v15;
  sub_1CFC6A670(v17);
  v21 = OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_legacyMailboxService;
  swift_beginAccess();
  sub_1CFBA5808(v30, &v20[v21]);
  swift_endAccess();
  v22 = &v20[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_recentsDismissalAction];
  v23 = *&v20[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_recentsDismissalAction];
  v24 = *&v20[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_recentsDismissalAction + 8];
  *v22 = a6;
  *(v22 + 1) = a7;
  sub_1CFBABFA0(v23);

  return v20;
}

char *RecentsViewController.__allocating_init(recentsDetailProvider:recentsDataSource:favoritesDataSource:showDialer:addFavorite:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = objc_allocWithZone(v7);
  v16 = sub_1CFC698E8(a1, a2, a3, a4, a5, a6, a7);

  return v16;
}

uint64_t sub_1CFC59868@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E6995A70];
  v3 = sub_1CFC9CF08();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1CFC598DC@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E6995A88];
  v3 = sub_1CFC9CF08();
  v6 = *(v3 - 8);
  (*(v6 + 104))(a1, v2, v3);
  v4 = *(v6 + 56);

  return v4(a1, 0, 1, v3);
}

uint64_t sub_1CFC599B4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1CFC9CF08();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

void sub_1CFC59A20(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    RecentsViewController.update(filterMode:animated:)(a1, 0);
  }
}

void RecentsViewController.update(filterMode:animated:)(uint64_t a1, int a2)
{
  v88 = a2;
  v3 = sub_1CFC9CF08();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v89 = &v72[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v72[-v8];
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v72[-v11];
  v13 = MEMORY[0x1EEE9AC00](v10);
  v87 = &v72[-v14];
  v15 = MEMORY[0x1EEE9AC00](v13);
  v86 = &v72[-v16];
  v17 = MEMORY[0x1EEE9AC00](v15);
  v90 = &v72[-v18];
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v72[-v20];
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v72[-v23];
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v72[-v25];
  v85 = *(v4 + 16);
  v85(&v72[-v25], a1, v3);
  if ((*(v4 + 88))(v26, v3) == *MEMORY[0x1E6995A60])
  {
    if (qword_1EE050010 != -1)
    {
      swift_once();
    }

    v27 = sub_1CFC9D938();
    __swift_project_value_buffer(v27, qword_1EE052308);
    v28 = sub_1CFC9D918();
    v29 = sub_1CFC9FAF8();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_1CFB9F000, v28, v29, "Did tap call filtering button", v30, 2u);
      MEMORY[0x1D3873280](v30, -1, -1);
    }

    RecentsViewController.handleCallFilteringAction()();
    return;
  }

  v81 = v12;
  v82 = v21;
  v77 = v9;
  v31 = v4 + 8;
  v32 = *(v4 + 8);
  v32(v26, v3);
  v33 = OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_filterMenuViewModel;
  v34 = *&v91[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_filterMenuViewModel];
  sub_1CFC9CE88();

  sub_1CFC6A6B0(&qword_1EE04D668, MEMORY[0x1E6995AA8]);
  v84 = a1;
  LOBYTE(v34) = sub_1CFC9F6F8();
  v32(v24, v3);
  if ((v34 & 1) == 0)
  {
    v83 = v32;
    v75 = v33;
    v39 = *&v91[v33];
    sub_1CFC9CE88();

    v40 = *(v4 + 104);
    v73 = *MEMORY[0x1E6995A90];
    v79 = v4 + 104;
    v80 = v40;
    v40(v90);
    v41 = sub_1CFC6A6B0(&qword_1EE04D660, MEMORY[0x1E6995AA8]);
    sub_1CFC9F878();
    v74 = v41;
    sub_1CFC9F878();
    v76 = v4;
    if (aBlock == v98 && v93 == v99)
    {
      v42 = v83;
      v83(v90, v3);
      v42(v82, v3);
    }

    else
    {
      v43 = sub_1CFCA02B8();
      v42 = v83;
      v83(v90, v3);
      v42(v82, v3);

      if ((v43 & 1) == 0)
      {
        v44 = v91;
        v47 = *&v91[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_recentsDataSource];
        v46 = v84;
        sub_1CFC9C788();
LABEL_19:
        v48 = *&v44[v75];
        v49 = v85;
        v85(v24, v46, v3);
        v50 = v48;
        sub_1CFC9CE98();

        v51 = v86;
        v49(v86, v46, v3);
        v52 = v87;
        v49(v87, v51, v3);
        v53 = v76;
        v54 = (*(v76 + 80) + 16) & ~*(v76 + 80);
        v55 = (v5 + v54 + 7) & 0xFFFFFFFFFFFFFFF8;
        v56 = swift_allocObject();
        (*(v53 + 32))(v56 + v54, v51, v3);
        *(v56 + v55) = v44;
        v57 = v44;
        v78 = v31;
        v91 = v56;
        if (v88)
        {
          sub_1CFC65230(v52, v57);
          v83(v52, v3);
          v58 = 0;
        }

        else
        {
          v83(v52, v3);
          v59 = objc_opt_self();
          v60 = swift_allocObject();
          *(v60 + 16) = sub_1CFC6A6F8;
          *(v60 + 24) = v56;
          v61 = swift_allocObject();
          v58 = sub_1CFBF6EB4;
          *(v61 + 16) = sub_1CFBF6EB4;
          *(v61 + 24) = v60;
          v96 = sub_1CFBF6EB4;
          v97 = v61;
          aBlock = MEMORY[0x1E69E9820];
          v93 = 1107296256;
          v94 = sub_1CFC63D88;
          v95 = &block_descriptor_12;
          v62 = _Block_copy(&aBlock);

          [v59 performWithoutAnimation_];
          _Block_release(v62);
          LOBYTE(v59) = swift_isEscapingClosureAtFileLocation();

          if (v59)
          {
            __break(1u);
            return;
          }
        }

        sub_1CFBAD088();
        sub_1CFC5C900(0, 1);
        sub_1CFBAB5EC();
        v63 = *&v57[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_filterSegmentedControl];
        if (v63)
        {
          v90 = v58;
          v80(v81, *MEMORY[0x1E6995A70], v3);
          v64 = v63;
          sub_1CFC9F878();
          sub_1CFC9F878();
          if (aBlock == v98 && v93 == v99)
          {
            v83(v81, v3);

            v65 = *MEMORY[0x1E6995A78];
            goto LABEL_32;
          }

          v67 = sub_1CFCA02B8();
          v83(v81, v3);

          v65 = *MEMORY[0x1E6995A78];
          if (v67)
          {
            goto LABEL_32;
          }

          v80(v77, *MEMORY[0x1E6995A78], v3);
          sub_1CFC9F878();
          sub_1CFC9F878();
          if (aBlock == v98 && v93 == v99)
          {
            v83(v77, v3);

            goto LABEL_32;
          }

          v68 = sub_1CFCA02B8();
          v83(v77, v3);

          if (v68)
          {
LABEL_32:
            [v64 setHidden_];
            v80(v89, v65, v3);
            sub_1CFC9F878();
            sub_1CFC9F878();
            if (aBlock == v98 && v93 == v99)
            {
              v69 = 1;
            }

            else
            {
              v69 = sub_1CFCA02B8() & 1;
            }

            v70 = v90;
            v83(v89, v3);

            [v64 setSelectedSegmentIndex_];

            v66 = v70;
            goto LABEL_37;
          }

          v71 = v64;
          [v71 setHidden_];

          v66 = v90;
        }

        else
        {

          v66 = v58;
        }

LABEL_37:
        sub_1CFBABFA0(v66);
        return;
      }
    }

    v44 = v91;
    v45 = *&v91[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_recentsDataSource];
    v80(v24, v73, v3);
    sub_1CFC9C788();
    v42(v24, v3);
    v46 = v84;
    goto LABEL_19;
  }

  if (qword_1EE050010 != -1)
  {
    swift_once();
  }

  v35 = sub_1CFC9D938();
  __swift_project_value_buffer(v35, qword_1EE052308);
  v36 = sub_1CFC9D918();
  v37 = sub_1CFC9FAF8();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&dword_1CFB9F000, v36, v37, "Filter mode did not change, not updating.", v38, 2u);
    MEMORY[0x1D3873280](v38, -1, -1);
  }
}

uint64_t sub_1CFC5A690()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v1 = result;
  if (*(result + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_favoriteSection))
  {
    v2 = *(result + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_favoriteSection);

    sub_1CFC6ABDC(v1);
    if ((v3 & 1) == 0 && *&v1[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_favoritesDataSource])
    {
      v4 = *&v1[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_favoritesDataSource];

      v5 = sub_1CFC9C718();

      v6 = *(v5 + 16);

      v7 = v6 != 0;
      goto LABEL_8;
    }
  }

  v7 = 0;
LABEL_8:
  v8 = *&v1[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_recentsRemindersSection];
  if (v8)
  {
    if (v7)
    {

      return 1;
    }

    else
    {
      v26 = OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_recentsRemindersSection;
      v10 = OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_sections;
      swift_beginAccess();
      v27 = v1;
      v11 = *&v1[v10];
      v12 = *(v11 + 16);

      v28 = v12;
      if (v12)
      {
        v13 = 0;
        v14 = (v11 + 40);
        while (1)
        {
          if (v13 >= *(v11 + 16))
          {
            __break(1u);
            return result;
          }

          v15 = *(v14 - 1);
          v16 = *v14;
          ObjectType = swift_getObjectType();
          v18 = *(v16 + 40);
          swift_unknownObjectRetain();
          v18(v29, ObjectType, v16);
          __swift_project_boxed_opaque_existential_1(v29, v29[3]);
          v19 = sub_1CFC9F6D8();
          LODWORD(v18) = *(v8 + 64);
          sub_1CFCA0338();
          v20 = v18 ? 3 : 1;
          MEMORY[0x1D3872880](v20);
          v21 = sub_1CFCA0378();
          swift_unknownObjectRelease();
          result = __swift_destroy_boxed_opaque_existential_1Tm(v29);
          if (v19 == v21)
          {
            break;
          }

          ++v13;
          v14 += 2;
          if (v28 == v13)
          {
            goto LABEL_20;
          }
        }

        v22 = *&v27[v26];

        if (!v22)
        {
          return 0;
        }

        v23 = OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_items;
        swift_beginAccess();
        v24 = *(v22 + v23);

        v25 = *(v24 + 16);

        return v25 != 0;
      }

      else
      {
LABEL_20:

        return 0;
      }
    }
  }

  else
  {
    v9 = v7;

    return v9;
  }
}

uint64_t sub_1CFC5A950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a4;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED950, &qword_1CFCA2710) - 8) + 64) + 15;
  *(v4 + 32) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1CFC5A9EC, 0, 0);
}

uint64_t sub_1CFC5A9EC()
{
  if (qword_1EE04F6F0 != -1)
  {
    swift_once();
  }

  sub_1CFC9F968();
  v0[5] = sub_1CFC9F958();
  v2 = sub_1CFC9F938();
  v0[6] = v2;
  v0[7] = v1;

  return MEMORY[0x1EEE6DFA0](sub_1CFC5AAB0, v2, v1);
}

uint64_t sub_1CFC5AAB0()
{
  v1 = v0[3];
  if (*&v1[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController__configurationProvider])
  {
    v2 = v0[5];

    v3 = v0[4];

    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = v0[4];
    v7 = sub_1CFC9F998();
    (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
    v8 = swift_allocObject();
    v8[2] = 0;
    v8[3] = 0;
    v8[4] = v1;
    v9 = v1;
    v10 = sub_1CFC57758(0, 0, v6, &unk_1CFCA7D50, v8);
    v0[8] = v10;
    sub_1CFBC2FB0(v6, &qword_1EC4ED950, &qword_1CFCA2710);
    v11 = *(MEMORY[0x1E69E86C0] + 4);
    v12 = swift_task_alloc();
    v0[9] = v12;
    v13 = sub_1CFBA2D80(0, &qword_1EE04CF78, 0x1E69D8AF8);
    *v12 = v0;
    v12[1] = sub_1CFC5AC78;

    return MEMORY[0x1EEE6DA40](v0 + 2, v10, v13);
  }
}

uint64_t sub_1CFC5AC78()
{
  v1 = *v0;
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 64);
  v7 = *v0;

  v4 = *(v1 + 56);
  v5 = *(v1 + 48);

  return MEMORY[0x1EEE6DFA0](sub_1CFC5ADBC, v5, v4);
}

uint64_t sub_1CFC5ADBC()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 32);

  v3 = *(v0 + 8);

  return v3();
}

Swift::Void __swiftcall RecentsViewController.viewDidLoad()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF860, &qword_1CFCA4AD0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v39 = &v38 - v5;
  v6 = sub_1CFC9FC18();
  v40 = *(v6 - 8);
  v41 = v6;
  v7 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF868, &qword_1CFCA7908);
  v11 = *(v10 - 8);
  v42 = v10;
  v43 = v11;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v38 = &v38 - v13;
  v14 = sub_1CFC9FC98();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46.receiver = v0;
  v46.super_class = ObjectType;
  objc_msgSendSuper2(&v46, sel_viewDidLoad);
  sub_1CFC9C1D8();
  sub_1CFC9C1C8();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_1CFC9C1E8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EF870, &qword_1CFCA7920);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1CFCA1DD0;
  v20 = sub_1CFC9DC58();
  v21 = MEMORY[0x1E69DC2F0];
  *(v19 + 32) = v20;
  *(v19 + 40) = v21;
  sub_1CFC9FBC8();
  swift_unknownObjectRelease();

  v22 = objc_opt_self();
  v23 = [v22 defaultCenter];
  v24 = sub_1CFC9F728();
  [v23 addObserver:v1 selector:sel_deleteAllRecents_ name:v24 object:0];

  v25 = [v22 defaultCenter];
  v26 = *MEMORY[0x1E69DDBC0];
  sub_1CFC9FCA8();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1CFC6A6B0(&qword_1EE04CF98, MEMORY[0x1E6969F20]);
  sub_1CFC9DDA8();

  (*(v15 + 8))(v18, v14);
  swift_beginAccess();
  sub_1CFC9DC88();
  swift_endAccess();

  sub_1CFC9C668();
  v27 = sub_1CFC9C658();
  v28 = sub_1CFC9C648();

  v45 = v28;
  sub_1CFC9FC08();
  sub_1CFBA2D80(0, &qword_1EE04FF80, 0x1E69E9610);
  v29 = sub_1CFC9FC28();
  v44 = v29;
  v30 = sub_1CFC9FBF8();
  v31 = v39;
  (*(*(v30 - 8) + 56))(v39, 1, 1, v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF890, &unk_1CFCA8270);
  sub_1CFBA57C0(&qword_1EC4EFD80, &qword_1EC4EF890, &unk_1CFCA8270);
  sub_1CFC18FBC();
  v32 = v38;
  sub_1CFC9DD98();
  sub_1CFBC2FB0(v31, &qword_1EC4EF860, &qword_1CFCA4AD0);

  (*(v40 + 8))(v9, v41);

  v33 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_1CFC6A81C;
  *(v34 + 24) = v33;
  sub_1CFBA57C0(&qword_1EC4EF898, &qword_1EC4EF868, &qword_1CFCA7908);
  v35 = v42;
  v36 = sub_1CFC9DDA8();

  (*(v43 + 8))(v32, v35);
  v37 = *&v1[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_acceptedContactsDidChangeSubscription];
  *&v1[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_acceptedContactsDidChangeSubscription] = v36;
}

void sub_1CFC5B528()
{
  v1 = [v0 traitCollection];
  v2 = [v1 splitViewControllerLayoutEnvironment];

  if (v2 == 1 && (v0[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_isSearching] & 1) == 0)
  {
    v3 = OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_sections;
    swift_beginAccess();
    v4 = *&v0[v3];
    v5 = *(v4 + 16);
    v6 = (v4 + 32);
    v7 = v5 + 1;
    while (--v7)
    {
      v8 = v6 + 2;
      v9 = *v6;
      type metadata accessor for FavoriteSectionController(0);
      v10 = swift_dynamicCastClass();
      v6 = v8;
      if (!v10)
      {
        v11 = *(v8 - 1);
        v12 = swift_unknownObjectRetain();
        sub_1CFBC5960(v12, v11);
        if (v13)
        {
          swift_unknownObjectRelease();
        }

        else
        {
          type metadata accessor for BundleClass();
          ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
          v15 = [objc_opt_self() bundleForClass_];
          sub_1CFC9BE28();

          sub_1CFC5F074();
          swift_unknownObjectRelease();
        }

        return;
      }
    }
  }
}

void sub_1CFC5B6D8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_recentsDataSource);

    sub_1CFC9C8B8();
  }

  swift_beginAccess();
  v3 = swift_unknownObjectWeakLoadStrong();
  if (v3)
  {
    v4 = v3;
    sub_1CFC5B778();
  }
}

uint64_t sub_1CFC5B778()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED950, &qword_1CFCA2710);
  v2 = *(*(v1 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v1 - 8);
  v5 = &aBlock - v4;
  v6 = *(v0 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_shouldShowScreeningTip);
  if (v6 == 2 || (v6 & 1) == 0)
  {
LABEL_6:
    v16 = sub_1CFC9F998();
    (*(*(v16 - 8) + 56))(v5, 1, 1, v16);
    sub_1CFC9F968();
    v11 = v0;
    v17 = sub_1CFC9F958();
    v18 = swift_allocObject();
    v19 = MEMORY[0x1E69E85E0];
    v18[2] = v17;
    v18[3] = v19;
    v18[4] = v11;
    sub_1CFBDC030(0, 0, v5, &unk_1CFCA7C50, v18);

    v20 = *(v11 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_shouldShowFilteringTip);
    if (v20 == 2 || (v20 & 1) == 0)
    {
      v30 = OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_filteringTipSection;
      if (!*(v11 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_filteringTipSection))
      {
        return result;
      }

      v31 = OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_sections;
      result = swift_beginAccess();
      if (*(*(v11 + v31) + 16))
      {
        sub_1CFBCB5C4(0, 1);
        swift_endAccess();
        sub_1CFBA76C8();
        v32 = *(v11 + v30);
        *(v11 + v30) = 0;
      }

      __break(1u);
    }

    else
    {
      v7 = OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_filteringTipSection;
      if (*(v11 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_filteringTipSection))
      {
        return result;
      }

      v21 = type metadata accessor for CallFilteringTipSectionController();
      v22 = *(v21 + 48);
      v23 = *(v21 + 52);
      swift_allocObject();
      v0 = sub_1CFC473E0();
      v0[4] = &protocol witness table for RecentsViewController;
      swift_unknownObjectWeakAssign();
      v24 = objc_opt_self();
      v25 = swift_allocObject();
      *(v25 + 16) = v11;
      *(v25 + 24) = v0;
      v26 = swift_allocObject();
      *(v26 + 16) = sub_1CFC6BB4C;
      *(v26 + 24) = v25;
      v37 = sub_1CFC6C19C;
      v38 = v26;
      aBlock = MEMORY[0x1E69E9820];
      v34 = 1107296256;
      v35 = sub_1CFC63D88;
      v36 = &block_descriptor_214;
      v27 = _Block_copy(&aBlock);
      v28 = v11;

      [v24 performWithoutAnimation_];
      _Block_release(v27);
      LOBYTE(v24) = swift_isEscapingClosureAtFileLocation();

      if ((v24 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
    return result;
  }

  v7 = OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_screeningTipSection;
  if (*(v0 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_screeningTipSection))
  {
    return result;
  }

  v8 = type metadata accessor for CallScreeningTipSectionController();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  v11 = v0;
  v0 = sub_1CFC36200();
  v0[4] = &protocol witness table for RecentsViewController;
  swift_unknownObjectWeakAssign();
  v12 = objc_opt_self();
  v5 = swift_allocObject();
  *(v5 + 2) = v11;
  *(v5 + 3) = v0;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_1CFC6BBD8;
  *(v13 + 24) = v5;
  v37 = sub_1CFC6C19C;
  v38 = v13;
  aBlock = MEMORY[0x1E69E9820];
  v34 = 1107296256;
  v35 = sub_1CFC63D88;
  v36 = &block_descriptor_224;
  v14 = _Block_copy(&aBlock);
  v15 = v11;

  [v12 performWithoutAnimation_];
  _Block_release(v14);
  LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

  if (v12)
  {
    __break(1u);
    goto LABEL_6;
  }

LABEL_10:
  v29 = *(v11 + v7);
  *(v11 + v7) = v0;
}

uint64_t sub_1CFC5BC50()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    sub_1CFC9C668();
    v2 = sub_1CFC9C658();
    swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_1CFC9C618();
  }

  return result;
}

uint64_t sub_1CFC5BD18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_1CFC9F968();
  v4[3] = sub_1CFC9F958();
  v6 = sub_1CFC9F938();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1CFC5BDB0, v6, v5);
}

uint64_t sub_1CFC5BDB0()
{
  v1 = v0[2];
  v2 = OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_filterMenuViewModel;
  v0[6] = OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_filterMenuViewModel;
  v3 = *(v1 + v2);
  v0[7] = v3;
  v4 = v3;
  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_1CFC5BE60;
  v6 = v0[2];

  return sub_1CFC5C050();
}

uint64_t sub_1CFC5BE60(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v7 = *v1;
  *(*v1 + 72) = a1;

  v4 = *(v2 + 40);
  v5 = *(v2 + 32);

  return MEMORY[0x1EEE6DFA0](sub_1CFC5BF88, v5, v4);
}

uint64_t sub_1CFC5BF88()
{
  v1 = v0[9];
  v3 = v0[6];
  v2 = v0[7];
  v5 = v0[2];
  v4 = v0[3];

  sub_1CFC9CF38();

  v6 = *(v5 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_layoutManager);
  v7 = *(v5 + v3);
  [v6 current];
  sub_1CFC9CEC8();

  sub_1CFC5C900(0, 1);
  v8 = v0[1];

  return v8();
}

uint64_t sub_1CFC5C050()
{
  v1[3] = v0;
  v2 = sub_1CFC9CED8();
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED950, &qword_1CFCA2710) - 8) + 64) + 15;
  v1[7] = swift_task_alloc();
  v1[8] = sub_1CFC9F968();
  v1[9] = sub_1CFC9F958();
  v7 = sub_1CFC9F938();
  v1[10] = v7;
  v1[11] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1CFC5C180, v7, v6);
}

uint64_t sub_1CFC5C180()
{
  v1 = v0[3];
  v2 = [*(v1 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_layoutManager) current];
  v3 = OBJC_IVAR____TtC10CallsAppUI21RecentsViewController__configurationProvider;
  v0[12] = v2;
  v0[13] = v3;
  v4 = *(v1 + v3);
  if (v4)
  {
    v5 = v0[9];
    v6 = v4;

    v7 = v6;
    if ([v7 isSilenceJunkCallingEnabled])
    {
      v8 = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
      [v8 junkFilteringEnabled];
    }

    v12 = [v7 isFilterAsNewCallersEnabledForPhone];

    if (v12)
    {
      v13 = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
      [v13 junkFilteringEnabled];
    }

    v14 = v0[12];
    v16 = v0[6];
    v15 = v0[7];
    v17 = v0[4];
    v18 = v0[5];
    sub_1CFC9CF48();
    (*(v18 + 104))(v16, *MEMORY[0x1E6995A50], v17);
    v19 = sub_1CFC9CEB8();

    (*(v18 + 8))(v16, v17);

    v20 = v0[1];

    return v20(v19);
  }

  else
  {
    v9 = v0[8];
    v0[14] = sub_1CFC9F958();
    v11 = sub_1CFC9F938();
    v0[15] = v11;
    v0[16] = v10;

    return MEMORY[0x1EEE6DFA0](sub_1CFC5C3D4, v11, v10);
  }
}

uint64_t sub_1CFC5C3D4()
{
  v1 = v0[3];
  v2 = *&v1[v0[13]];
  if (v2)
  {
    v3 = v0[14];
    v4 = v2;

    v0[19] = v4;
    v5 = v0[10];
    v6 = v0[11];

    return MEMORY[0x1EEE6DFA0](sub_1CFC5C754, v5, v6);
  }

  else
  {
    v7 = v0[7];
    v8 = sub_1CFC9F998();
    (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
    v9 = swift_allocObject();
    v9[2] = 0;
    v9[3] = 0;
    v9[4] = v1;
    v10 = v1;
    v11 = sub_1CFC57758(0, 0, v7, &unk_1CFCA7C18, v9);
    v0[17] = v11;
    sub_1CFBC2FB0(v7, &qword_1EC4ED950, &qword_1CFCA2710);
    v12 = *(MEMORY[0x1E69E86C0] + 4);
    v13 = swift_task_alloc();
    v0[18] = v13;
    v14 = sub_1CFBA2D80(0, &qword_1EE04CF78, 0x1E69D8AF8);
    *v13 = v0;
    v13[1] = sub_1CFC5C5A4;

    return MEMORY[0x1EEE6DA40](v0 + 2, v11, v14);
  }
}

uint64_t sub_1CFC5C5A4()
{
  v1 = *v0;
  v2 = *(*v0 + 144);
  v3 = *(*v0 + 136);
  v7 = *v0;

  v4 = *(v1 + 128);
  v5 = *(v1 + 120);

  return MEMORY[0x1EEE6DFA0](sub_1CFC5C6E8, v5, v4);
}

uint64_t sub_1CFC5C6E8()
{
  v1 = v0[14];

  v0[19] = v0[2];
  v2 = v0[10];
  v3 = v0[11];

  return MEMORY[0x1EEE6DFA0](sub_1CFC5C754, v2, v3);
}

uint64_t sub_1CFC5C754()
{
  v1 = v0[19];
  v2 = v0[9];

  v3 = v1;
  v4 = v0[19];
  if ([v4 isSilenceJunkCallingEnabled])
  {
    v5 = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
    [v5 junkFilteringEnabled];
  }

  v6 = [v4 isFilterAsNewCallersEnabledForPhone];

  if (v6)
  {
    v7 = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
    [v7 junkFilteringEnabled];
  }

  v8 = v0[12];
  v10 = v0[6];
  v9 = v0[7];
  v11 = v0[4];
  v12 = v0[5];
  sub_1CFC9CF48();
  (*(v12 + 104))(v10, *MEMORY[0x1E6995A50], v11);
  v13 = sub_1CFC9CEB8();

  (*(v12 + 8))(v10, v11);

  v14 = v0[1];

  return v14(v13);
}

void sub_1CFC5C900(uint64_t a1, int a2)
{
  v3 = v2;
  v56 = a2;
  v51 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFB00, &qword_1CFCA7C98);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v54 = &v48 - v6;
  v7 = sub_1CFC9FB38();
  v52 = *(v7 - 8);
  v53 = v7;
  v8 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v50 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1CFC9CF08();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFC9CCB8();
  v15 = OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_filterMenuViewModel;
  v16 = *(v2 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_filterMenuViewModel);
  v17 = sub_1CFC9CCA8();

  v18 = [v17 children];
  sub_1CFBA2D80(0, &qword_1EE04D0E0, 0x1E69DCC78);
  v19 = sub_1CFC9F8A8();

  aBlock[6] = v19;
  v20 = [objc_opt_self() currentDevice];
  v21 = [v20 userInterfaceIdiom];

  v55 = v3;
  if (!v21)
  {
    v49 = v15;
    v22 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_1CFC6BEAC;
    aBlock[5] = v22;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1CFC58994;
    aBlock[3] = &block_descriptor_273;
    v23 = _Block_copy(aBlock);
    v24 = objc_opt_self();

    v25 = [v24 elementWithViewProvider_];
    _Block_release(v23);

    sub_1CFBA2D80(0, &unk_1EE04CF40, 0x1E69DCC60);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED760, &qword_1CFCA2690);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1CFCA2540;
    *(v26 + 32) = v25;
    v27 = v25;
    v28 = sub_1CFC9FD68();
    if (v19 >> 62 && sub_1CFC9FFD8() < 0)
    {
      __break(1u);
      return;
    }

    sub_1CFBB5308(0, 0, v28);

    v15 = v49;
    v3 = v55;
  }

  v29 = sub_1CFC585F4();
  v30 = sub_1CFC9F898();

  v31 = v3;
  v32 = [v17 menuByReplacingChildren_];

  [v29 setMenu_];
  v33 = OBJC_IVAR____TtC10CallsAppUI21RecentsViewController____lazy_storage___filterButtonItem;
  v34 = *(v31 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController____lazy_storage___filterButtonItem);
  v35 = *(v31 + v15);
  (*(v11 + 104))(v14, *MEMORY[0x1E6995A70], v10);
  v36 = v35;
  v37 = v34;
  LOBYTE(v32) = sub_1CFC9CE58();

  (*(v11 + 8))(v14, v10);
  [v37 setSelected_];

  v38 = v17;
  if (v56)
  {
  }

  else if (v51 < 1)
  {
    v46 = *(v55 + v33);
    (*(v52 + 56))(v54, 1, 1, v53);
    v47 = v46;
    sub_1CFC9FB48();
  }

  else
  {
    v39 = v50;
    sub_1CFC9FB28();
    v40 = [objc_opt_self() systemBlueColor];
    sub_1CFC9FB18();
    v41 = v54;
    v42 = *(v55 + v33);
    v44 = v52;
    v43 = v53;
    (*(v52 + 16))(v54, v39, v53);
    (*(v44 + 56))(v41, 0, 1, v43);
    v45 = v42;
    sub_1CFC9FB48();

    (*(v44 + 8))(v39, v43);
  }
}

uint64_t sub_1CFC5CF08(uint64_t a1)
{
  *(v1 + 40) = a1;
  sub_1CFC9F968();
  *(v1 + 48) = sub_1CFC9F958();
  v3 = sub_1CFC9F938();

  return MEMORY[0x1EEE6DFA0](sub_1CFC5CFA0, v3, v2);
}

uint64_t sub_1CFC5CFA0()
{
  v2 = v0[5];
  v1 = v0[6];

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    [Strong dismissViewControllerAnimated:1 completion:0];
  }

  v5 = v0[1];

  return v5();
}

Swift::Void __swiftcall RecentsViewController.viewWillDisappear(_:)(Swift::Bool a1)
{
  v7.receiver = v1;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, sel_viewWillDisappear_, a1);
  v3 = [v1 presentedViewController];
  if (v3)
  {
    v4 = v3;
    type metadata accessor for LayoutTipViewController(0);
    v5 = swift_dynamicCastClass();

    if (v5)
    {
      [v1 dismissViewControllerAnimated:1 completion:0];
    }
  }

  v6 = [objc_opt_self() defaultCenter];
  [v6 removeObserver:v1 name:*MEMORY[0x1E69DDBC8] object:0];
}

void RecentsViewController.viewWillTransition(to:with:)(void *a1, double a2, double a3)
{
  v11.receiver = v3;
  v11.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v11, sel_viewWillTransitionToSize_withTransitionCoordinator_, a1, a2, a3);
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  v10[4] = sub_1CFC6A968;
  v10[5] = v7;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1CFC5D3A0;
  v10[3] = &block_descriptor_27;
  v8 = _Block_copy(v10);
  v9 = v3;

  [a1 animateAlongsideTransition:v8 completion:0];
  _Block_release(v8);
}

uint64_t sub_1CFC5D3A0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

void sub_1CFC5D538()
{
  type metadata accessor for BundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = objc_opt_self();
  v2 = [v1 bundleForClass_];
  sub_1CFC9BE28();

  v3 = [v1 &:ObjCClassFromMetadata OBJC:0xE000000000000000 LABEL:? PROTOCOL:? :? :?UISearchControllerDelegate + 3];
  sub_1CFC9BE28();

  v4 = sub_1CFC9F728();

  v5 = sub_1CFC9F728();

  v6 = [objc_opt_self() alertControllerWithTitle:v4 message:v5 preferredStyle:{1, 0xE000000000000000}];

  v7 = [v1 bundleForClass_];
  sub_1CFC9BE28();

  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v9 = sub_1CFC9F728();

  v27 = sub_1CFC6BB20;
  v28 = v8;
  aBlock = MEMORY[0x1E69E9820];
  v24 = 1107296256;
  v25 = sub_1CFBDBE60;
  v26 = &block_descriptor_138_0;
  v10 = _Block_copy(&aBlock);

  v11 = objc_opt_self();
  v21 = [v11 actionWithTitle:v9 style:0 handler:{v10, 0xE000000000000000}];
  _Block_release(v10);

  v12 = [v1 bundleForClass_];
  sub_1CFC9BE28();

  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v14 = sub_1CFC9F728();

  v27 = sub_1CFC6BB3C;
  v28 = v13;
  aBlock = MEMORY[0x1E69E9820];
  v24 = 1107296256;
  v25 = sub_1CFBDBE60;
  v26 = &block_descriptor_142;
  v15 = _Block_copy(&aBlock);

  v16 = [v11 actionWithTitle:v14 style:0 handler:{v15, 0xE000000000000000}];
  _Block_release(v15);

  v17 = [v1 bundleForClass_];
  sub_1CFC9BE28();

  v18 = sub_1CFC9F728();

  v27 = nullsub_1;
  v28 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v24 = 1107296256;
  v25 = sub_1CFBDBE60;
  v26 = &block_descriptor_145;
  v19 = _Block_copy(&aBlock);

  v20 = [v11 actionWithTitle:v18 style:1 handler:{v19, 0xE000000000000000}];
  _Block_release(v19);

  [v6 addAction_];
  [v6 addAction_];
  [v6 addAction_];
  [v22 presentViewController:v6 animated:1 completion:0];
}

void sub_1CFC5DB50()
{
  v0 = sub_1CFC9CB88();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_recentsDataSource;
    v7 = Strong;
    v8 = *(Strong + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_recentsDataSource);
    sub_1CFC9C7D8();

    v9 = *&v7[v6];
    sub_1CFC9C7F8();
    sub_1CFC9CB78();
    (*(v1 + 8))(v4, v0);
    v10 = *&v7[v6];
    sub_1CFC9C8C8();
  }
}

void sub_1CFC5DD6C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    a3();
  }
}

void sub_1CFC5DDC8()
{
  v1 = *&v0[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_keypadViewControllerProvider];
  if (v1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      v20 = v1;
      [v20 setModalPresentationStyle_];
      v3 = [v20 popoverPresentationController];
      if (v3)
      {
        v4 = v3;
        v5 = *&v0[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_keypadButtonItem];
        [v4 setBarButtonItem_];
      }

      v6 = [v20 popoverPresentationController];
      if (v6)
      {
        v7 = v6;
        [v6 setDelegate_];
      }

      v8 = [v0 traitCollection];
      v9 = [v8 userInterfaceIdiom];

      v10 = 560.0;
      v11 = 310.0;
      v12 = 0.0;
      v13 = 310.0;
      if (v9 == 5)
      {
        v12 = 600.0;
      }

      else
      {
        v13 = 0.0;
      }

      if (v9 != 1)
      {
        v11 = v13;
        v10 = v12;
      }

      [v20 setPreferredContentSize_];
      v14 = [v20 popoverPresentationController];
      swift_unknownObjectWeakAssign();

      v15 = [v0 traitCollection];
      v16 = [v15 userInterfaceIdiom];

      if (v16 == 5)
      {
        v17 = [v20 view];
        if (!v17)
        {
          __break(1u);
          return;
        }

        v18 = v17;
        v19 = [objc_opt_self() clearColor];
        [v18 setBackgroundColor_];
      }

      [v0 presentViewController:v20 animated:1 completion:0];
      Strong = v20;
    }
  }
}

id sub_1CFC5E0B0(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFAB8, &unk_1CFCA7C40);
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_1CFCA1DD0;
      v6 = *(v1 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_recentsSection);
      v7 = &qword_1EE04F4F8;
      v8 = type metadata accessor for RecentsSectionController;
    }

    else
    {
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_1CFCA1DD0;
      v6 = *(v1 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_voicemailsSection);
      if (!v6)
      {
        v11 = 0;
        goto LABEL_9;
      }

      v7 = &qword_1EC4EFAC0;
      v8 = type metadata accessor for VoicemailsSectionController;
    }

    v11 = sub_1CFC6A6B0(v7, v8);
LABEL_9:
    *(v5 + 32) = v6;
    *(v5 + 40) = v11;
LABEL_17:

    goto LABEL_18;
  }

  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1CFCA1DC0;
  v9 = *(v1 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_favoriteSection);
  if (v9)
  {
    v10 = sub_1CFC6A6B0(qword_1EE04F018, type metadata accessor for FavoriteSectionController);
  }

  else
  {
    v10 = 0;
  }

  *(v5 + 32) = v9;
  *(v5 + 40) = v10;
  v12 = *(v1 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_recentsSection);
  v13 = sub_1CFC6A6B0(&qword_1EE04F4F8, type metadata accessor for RecentsSectionController);
  *(v5 + 48) = v12;
  *(v5 + 56) = v13;
  v3 = *(v1 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_recentsRemindersSection);
  if (!v3 || (v2 = v13, v14 = OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_items, swift_beginAccess(), !*(*(v3 + v14) + 16)))
  {

    goto LABEL_17;
  }

  v15 = *(v5 + 16);
  if (!v15)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v16 = *(v5 + 24);

  v9 = v1;
  if (v15 >= v16 >> 1)
  {
LABEL_32:
    v5 = sub_1CFC7B4C4(1, v15 + 1, 1, v5);
  }

  sub_1CFBCC9BC(1uLL, 1, 1, v3, v2);

  v1 = v9;
LABEL_18:
  v17 = 0;
  v15 = *(v5 + 16);
  v9 = MEMORY[0x1E69E7CC0];
LABEL_19:
  v18 = (v5 + 32 + 16 * v17);
  while (v15 != v17)
  {
    if (v17 >= *(v5 + 16))
    {
      __break(1u);
      goto LABEL_31;
    }

    ++v17;
    v19 = v18 + 2;
    v2 = *v18;
    v18 += 2;
    if (v2)
    {
      v20 = *(v19 - 1);
      swift_unknownObjectRetain();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_1CFBA74A0(0, v9[2] + 1, 1, v9);
      }

      v22 = v9[2];
      v21 = v9[3];
      v3 = v22 + 1;
      if (v22 >= v21 >> 1)
      {
        v9 = sub_1CFBA74A0((v21 > 1), v22 + 1, 1, v9);
      }

      v9[2] = v3;
      v23 = &v9[2 * v22];
      v23[4] = v2;
      v23[5] = v20;
      goto LABEL_19;
    }
  }

  v24 = OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_sections;
  swift_beginAccess();
  v25 = *(v1 + v24);
  *(v1 + v24) = v9;

  return sub_1CFBA76C8();
}

Swift::Void __swiftcall RecentsViewController.makeSearchActive()()
{
  v0 = sub_1CFC57D08();
  v1 = [v0 searchBar];

  [v1 becomeFirstResponder];
}

Swift::Void __swiftcall RecentsViewController.selectedItemsDidChange()()
{
  v1 = v0;
  v2 = sub_1CFC9C608();
  v3 = *(v2 - 8);
  v90 = v2;
  v91 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v89 = &v86 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF8E8, &qword_1CFCA7980);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v86 - v8;
  v10 = type metadata accessor for FavoriteSectionController.Item(0);
  v94 = *(v10 - 8);
  v11 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v92 = &v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v86 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EF8F0, &qword_1CFCA7988);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v86 - v18;
  v20 = type metadata accessor for VoicemailsSectionController.Item(0);
  v95 = *(v20 - 8);
  v21 = *(v95 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v86 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v86 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE368, &unk_1CFCA4040);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v96 = &v86 - v29;
  v30 = sub_1CFC9C448();
  v97 = *(v30 - 8);
  v98 = v30;
  v31 = *(v97 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v88 = &v86 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v34 = MEMORY[0x1EEE9AC00](v33).n128_u64[0];
  v93 = &v86 - v35;
  if ([v0 isEditing])
  {
    v36 = sub_1CFBC31CC()[2];

    v37 = sub_1CFC583A0();
    if (v36)
    {
      v86 = v26;
      v38 = v20;
      v39 = v19;
      v40 = *&v1[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_recentsSection];
      v87 = v10;
      v41 = v9;
      v42 = v15;
      v43 = v23;
      v44 = v1;
      v45 = OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_items;
      swift_beginAccess();
      v46 = *(v40 + v45);
      v19 = v39;
      v20 = v38;
      v1 = v44;
      v23 = v43;
      v15 = v42;
      v9 = v41;
      v26 = v86;
      v10 = v87;
      v47 = v36 == *(v46 + 16);
    }

    else
    {
      v47 = 1;
    }

    [v37 setEnabled_];
  }

  v48 = [v1 traitCollection];
  v49 = [v48 splitViewControllerLayoutEnvironment];

  if (v49 != 2)
  {
    v50 = v19;
    v51 = sub_1CFBC31CC();
    v52 = v51[2];
    if (v52 >= 2)
    {

      type metadata accessor for BundleClass();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v54 = [objc_opt_self() bundleForClass_];
      sub_1CFC9BE28();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF900, &qword_1CFCA1FF8);
      v55 = swift_allocObject();
      v56 = MEMORY[0x1E69E6530];
      *(v55 + 16) = xmmword_1CFCA1DD0;
      v57 = MEMORY[0x1E69E65A8];
      *(v55 + 56) = v56;
      *(v55 + 64) = v57;
      *(v55 + 32) = v52;
      sub_1CFC9F778();

      sub_1CFC5F074();
LABEL_22:

      return;
    }

    if (v52)
    {
      v86 = v23;
      v87 = v51;
      sub_1CFBB94B0((v51 + 4), v99);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4ED5A0, &qword_1CFCA87C0);
      v58 = v96;
      v59 = v98;
      v60 = swift_dynamicCast();
      v61 = v97;
      (*(v97 + 56))(v58, v60 ^ 1u, 1, v59);
      if ((*(v61 + 48))(v58, 1, v59) != 1)
      {

        v68 = v93;
        (*(v61 + 32))(v93, v58, v59);
        v69 = *&v1[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_detailsPresenter];
        sub_1CFC88EA4(v68);
        (*(v61 + 8))(v68, v59);
        return;
      }

      sub_1CFBC2FB0(v58, &qword_1EC4EE368, &unk_1CFCA4040);
      if (v87[2])
      {
        sub_1CFBB94B0((v87 + 4), v99);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4ED5A0, &qword_1CFCA87C0);
        v62 = v50;
        v63 = swift_dynamicCast();
        v64 = v95;
        (*(v95 + 56))(v62, v63 ^ 1u, 1, v20);
        v65 = (*(v64 + 48))(v62, 1, v20);
        v66 = v86;
        if (v65 == 1)
        {
          sub_1CFBC2FB0(v62, &unk_1EC4EF8F0, &qword_1CFCA7988);
        }

        else
        {
          sub_1CFC6B824(v62, v26, type metadata accessor for VoicemailsSectionController.Item);
          sub_1CFC6B7BC(v26, v66, type metadata accessor for VoicemailsSectionController.Item);
          if (!swift_getEnumCaseMultiPayload())
          {

            v83 = v97;
            v82 = v98;
            v84 = v88;
            (*(v97 + 32))(v88, v66, v98);
            v85 = *&v1[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_detailsPresenter];
            sub_1CFC88EA4(v84);
            (*(v83 + 8))(v84, v82);
            sub_1CFC6B88C(v26, type metadata accessor for VoicemailsSectionController.Item);
            return;
          }

          sub_1CFC6B88C(v26, type metadata accessor for VoicemailsSectionController.Item);
          sub_1CFC6B88C(v66, type metadata accessor for VoicemailsSectionController.Item);
        }

        if (v87[2])
        {
          sub_1CFBB94B0((v87 + 4), v99);

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4ED5A0, &qword_1CFCA87C0);
          v70 = swift_dynamicCast();
          v71 = v94;
          (*(v94 + 56))(v9, v70 ^ 1u, 1, v10);
          if ((*(v71 + 48))(v9, 1, v10) != 1)
          {
            sub_1CFC6B824(v9, v15, type metadata accessor for FavoriteSectionController.Item);
            v74 = v92;
            sub_1CFC6B7BC(v15, v92, type metadata accessor for FavoriteSectionController.Item);
            if (swift_getEnumCaseMultiPayload() != 1)
            {
              v76 = v90;
              v75 = v91;
              v77 = v89;
              (*(v91 + 32))(v89, v74, v90);
              v78 = sub_1CFC9C5E8();
              v79 = *&v1[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_detailsPresenter];
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED760, &qword_1CFCA2690);
              v80 = swift_allocObject();
              *(v80 + 16) = xmmword_1CFCA2540;
              *(v80 + 32) = v78;
              v81 = v78;
              sub_1CFC8C10C(v80);

              (*(v75 + 8))(v77, v76);
              sub_1CFC6B88C(v15, type metadata accessor for FavoriteSectionController.Item);
              return;
            }

            sub_1CFC6B88C(v15, type metadata accessor for FavoriteSectionController.Item);
            sub_1CFC6B88C(v74, type metadata accessor for FavoriteSectionController.Item);
            goto LABEL_21;
          }

LABEL_20:
          sub_1CFBC2FB0(v9, &qword_1EC4EF8E8, &qword_1CFCA7980);
LABEL_21:
          type metadata accessor for BundleClass();
          v72 = swift_getObjCClassFromMetadata();
          v73 = [objc_opt_self() bundleForClass_];
          sub_1CFC9BE28();

          sub_1CFC5F074();
          goto LABEL_22;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      return;
    }

    v67 = v96;
    (*(v97 + 56))(v96, 1, 1, v98);
    sub_1CFBC2FB0(v67, &qword_1EC4EE368, &unk_1CFCA4040);
    (*(v95 + 56))(v50, 1, 1, v20);
    sub_1CFBC2FB0(v50, &unk_1EC4EF8F0, &qword_1CFCA7988);

    (*(v94 + 56))(v9, 1, 1, v10);
    goto LABEL_20;
  }
}

void sub_1CFC5F074()
{
  v1 = v0;
  v2 = sub_1CFC9DBB8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v15[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v0 traitCollection];
  v8 = [v7 splitViewControllerLayoutEnvironment];

  if (v8 != 2)
  {
    sub_1CFC9DB98();

    sub_1CFC9DB88();
    v9 = [objc_allocWithZone(MEMORY[0x1E69DD258]) init];
    v15[3] = v2;
    v15[4] = MEMORY[0x1E69DC1D0];
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v15);
    (*(v3 + 16))(boxed_opaque_existential_0Tm, v6, v2);
    sub_1CFC9FBD8();
    v11 = [v9 view];
    if (v11)
    {
      v12 = v11;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EFAD0, &qword_1CFCA78D0);
      sub_1CFC9CD28();
      v13 = v15[0];
      [v12 setBackgroundColor_];

      [v1 showDetailViewController:v9 sender:v1];
      (*(v3 + 8))(v6, v2);
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1CFC5F350()
{
  type metadata accessor for BundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_1CFC9BE28();

  v4 = sub_1CFC9F728();

  v5 = [objc_opt_self() alertControllerWithTitle:0 message:v4 preferredStyle:{0, 0xE000000000000000}];

  v6 = [v2 bundleForClass_];
  sub_1CFC9BE28();

  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v8 = sub_1CFC9F728();

  aBlock[4] = sub_1CFC6C1D8;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CFBDBE60;
  aBlock[3] = &block_descriptor_134;
  v9 = _Block_copy(aBlock);

  v10 = [objc_opt_self() actionWithTitle:v8 style:2 handler:{v9, 0xE000000000000000}];
  _Block_release(v9);

  [v5 addAction_];
  v11 = [v5 popoverPresentationController];
  if (v11)
  {
    v12 = v11;
    v13 = sub_1CFC583A0();
    [v12 setSourceItem_];
  }

  [v0 presentViewController:v5 animated:1 completion:0];
}

void sub_1CFC5F650()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_recentsDataSource;
    v2 = Strong;
    v3 = *(Strong + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_recentsDataSource);
    sub_1CFC9C7D8();

    v4 = *&v2[v1];
    sub_1CFC9C8C8();
  }
}

void sub_1CFC5F750()
{
  sub_1CFBC2FB0(v0 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_recentsDetailProvider, &unk_1EC4EF810, &qword_1CFCA7900);
  v1 = *(v0 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_detailsPresenter);

  v2 = *(v0 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_favoritesDataSource);

  v3 = *(v0 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_recentsSection);

  v4 = *(v0 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_recentsRemindersSection);

  v5 = *(v0 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_favoriteSection);

  v6 = *(v0 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_voicemailsSection);

  sub_1CFBC2FB0(v0 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_legacyMailboxService, &qword_1EC4EE538, qword_1CFCA9BD0);
  v7 = *(v0 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_keypadViewControllerProvider + 8);
  v8 = *(v0 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_keypadViewControllerProvider + 16);
  sub_1CFC6A670(*(v0 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_keypadViewControllerProvider));

  v9 = *(v0 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_recentsDismissalAction + 8);
  sub_1CFBABFA0(*(v0 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_recentsDismissalAction));
  v10 = *(v0 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_filteringTipSection);

  v11 = *(v0 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_screeningTipSection);

  v12 = *(v0 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_acceptedContactsDidChangeSubscription);

  v13 = *(v0 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_cancellables);

  JUMPOUT(0x1D3873340);
}

id RecentsViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1CFC5FCC4(char a1)
{
  v2 = sub_1CFC9C138();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v8 = Strong;
      *(Strong + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_isEditingFavorites) = 1;
      v9 = *(Strong + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_favoriteSection);
      if (v9)
      {
        *(v9 + 40) = 1;
        v10 = *(v9 + 104);
        if (*(v10 + OBJC_IVAR____TtC10CallsAppUI18FavoriteCellConfig__isEditing) == 1)
        {
          *(v10 + OBJC_IVAR____TtC10CallsAppUI18FavoriteCellConfig__isEditing) = 1;
        }

        else
        {
          KeyPath = swift_getKeyPath();
          v19[0] = v19;
          MEMORY[0x1EEE9AC00](KeyPath);
          v19[-2] = v10;
          LOBYTE(v19[-1]) = 1;
          v19[2] = v10;
          sub_1CFC6A6B0(&qword_1EE04F8D0, type metadata accessor for FavoriteCellConfig);

          sub_1CFC9C148();
        }

        sub_1CFBCD8F8();
        sub_1CFC83538();
        v12 = swift_unknownObjectWeakLoadStrong();
        if (v12)
        {
          v13 = v12;
          v14 = *(sub_1CFBAA4F8() + 16);

          if (v14)
          {
            v19[0] = v8;
            v15 = 0;
            v16 = (v3 + 8);
            do
            {
              MEMORY[0x1D386E620](v15, 0);
              v17 = sub_1CFC9C0C8();
              v18 = [v13 cellForItemAtIndexPath_];

              if (v18)
              {
                sub_1CFC9FD78();
              }

              ++v15;
              (*v16)(v6, v2);
            }

            while (v14 != v15);

            v8 = v19[0];
          }

          else
          {
          }
        }

        else
        {
        }
      }

      sub_1CFBAB5EC(Strong);
    }
  }
}

Swift::Void __swiftcall RecentsViewController.itemsDidUpdate()()
{
  sub_1CFC9C668();
  v0 = sub_1CFC9C658();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_1CFC9C618();

  sub_1CFC9C1D8();
  sub_1CFC9C1C8();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_1CFC9C1E8();
}

uint64_t sub_1CFC600E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1CFC9F638();
  v19 = *(v5 - 8);
  v6 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1CFC9F658();
  v9 = *(v18 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFBA2D80(0, &qword_1EE04FF80, 0x1E69E9610);
  v13 = sub_1CFC9FC28();
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  *(v14 + 24) = a1;
  aBlock[4] = sub_1CFC6BB44;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CFC56F38;
  aBlock[3] = &block_descriptor_198;
  v15 = _Block_copy(aBlock);

  sub_1CFC9F648();
  v20 = MEMORY[0x1E69E7CC0];
  sub_1CFC6A6B0(&qword_1EE04D130, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4ED5B0, &unk_1CFCA24A0);
  sub_1CFBA57C0(&qword_1EE04D110, &unk_1EC4ED5B0, &unk_1CFCA24A0);
  sub_1CFC9FF58();
  MEMORY[0x1D3872170](0, v12, v8, v15);
  _Block_release(v15);

  (*(v19 + 8))(v8, v5);
  (*(v9 + 8))(v12, v18);
}

void sub_1CFC603E0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (qword_1EE050010 != -1)
    {
      swift_once();
    }

    v5 = sub_1CFC9D938();
    __swift_project_value_buffer(v5, qword_1EE052308);
    v6 = sub_1CFC9D918();
    v7 = sub_1CFC9FAF8();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v17 = v9;
      *v8 = 136315138;
      v10 = sub_1CFCA0288();
      v12 = sub_1CFBB531C(v10, v11, &v17);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_1CFB9F000, v6, v7, "Got unread request count %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
      MEMORY[0x1D3873280](v9, -1, -1);
      MEMORY[0x1D3873280](v8, -1, -1);
    }

    v13 = *&v4[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_recentsSection];
    v14 = *&v4[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_filterMenuViewModel];
    v15 = OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_hasLegacyUnreadVoicemails;
    swift_beginAccess();
    LODWORD(v15) = v4[v15];

    v16 = v14;
    sub_1CFC731C8(v16, v15, a2);

    sub_1CFC5C900(a2, 0);
    sub_1CFBAB5EC();
  }
}

uint64_t sub_1CFC605DC(uint64_t a1, char a2, uint64_t a3)
{
  v5 = sub_1CFC9F638();
  v19 = *(v5 - 8);
  v6 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1CFC9F658();
  v9 = *(v18 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFBA2D80(0, &qword_1EE04FF80, 0x1E69E9610);
  v13 = sub_1CFC9FC28();
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  *(v14 + 24) = a2;
  aBlock[4] = sub_1CFC6BC7C;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CFC56F38;
  aBlock[3] = &block_descriptor_238;
  v15 = _Block_copy(aBlock);

  sub_1CFC9F648();
  v20 = MEMORY[0x1E69E7CC0];
  sub_1CFC6A6B0(&qword_1EE04D130, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4ED5B0, &unk_1CFCA24A0);
  sub_1CFBA57C0(&qword_1EE04D110, &unk_1EC4ED5B0, &unk_1CFCA24A0);
  sub_1CFC9FF58();
  MEMORY[0x1D3872170](0, v12, v8, v15);
  _Block_release(v15);

  (*(v19 + 8))(v8, v5);
  (*(v9 + 8))(v12, v18);
}

void sub_1CFC608D8(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (qword_1EE050010 != -1)
    {
      swift_once();
    }

    v5 = sub_1CFC9D938();
    __swift_project_value_buffer(v5, qword_1EE052308);
    v6 = sub_1CFC9D918();
    v7 = sub_1CFC9FAF8();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v14 = v9;
      *v8 = 136315138;
      if (a2)
      {
        v10 = 1702195828;
      }

      else
      {
        v10 = 0x65736C6166;
      }

      if (a2)
      {
        v11 = 0xE400000000000000;
      }

      else
      {
        v11 = 0xE500000000000000;
      }

      v12 = sub_1CFBB531C(v10, v11, &v14);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_1CFB9F000, v6, v7, "Request cache did change: %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
      MEMORY[0x1D3873280](v9, -1, -1);
      MEMORY[0x1D3873280](v8, -1, -1);
    }

    if (a2)
    {
      v13 = *&v4[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_recentsSection];

      sub_1CFC73EF4();
    }
  }
}

uint64_t sub_1CFC60AB8()
{
  v1[29] = v0;
  v2 = *(type metadata accessor for LegacyMailbox(0) - 8);
  v1[30] = v2;
  v3 = *(v2 + 64) + 15;
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v4 = sub_1CFC9C448();
  v1[33] = v4;
  v5 = *(v4 - 8);
  v1[34] = v5;
  v6 = *(v5 + 64) + 15;
  v1[35] = swift_task_alloc();
  sub_1CFC9F968();
  v1[36] = sub_1CFC9F958();
  v8 = sub_1CFC9F938();
  v1[37] = v8;
  v1[38] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1CFC60C10, v8, v7);
}

void *sub_1CFC60C10()
{
  v48 = v0;
  result = [*(v0 + 232) view];
  if (result)
  {
    v2 = result;
    v3 = [result traitCollection];

    v4 = [v3 userInterfaceIdiom];
    *(v0 + 312) = v4;

    if (v4 || (v5 = *(v0 + 232), v6 = OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_hasLegacyUnreadVoicemails, swift_beginAccess(), *(v5 + v6) != 1))
    {
LABEL_13:
      v24 = *(v0 + 288);

LABEL_14:
      v25 = *(v0 + 232);
      v26 = OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_voicemailsSection;
      if (*(v25 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_voicemailsSection))
      {
        v27 = *(v0 + 232);
        v28 = *(v25 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_voicemailsSection);
      }

      else
      {
        v29 = *(v0 + 312);
        v30 = *(v25 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_recentsDataSource);
        v31 = *(v25 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_detailsPresenter);
        v32 = OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_legacyMailboxService;
        swift_beginAccess();
        sub_1CFBA29FC(v25 + v32, v0 + 16, &qword_1EC4EE538, qword_1CFCA9BD0);
        if (v29)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED560, &qword_1CFCA2460);
          v33 = swift_allocObject();
          *(v33 + 16) = xmmword_1CFCA1DC0;
          *(v33 + 32) = 2;
          *(v33 + 34) = 0;
          *(v33 + 40) = 0;
          *(v33 + 48) = 1;
          *(v33 + 50) = 0;
          *(v33 + 56) = 0;
        }

        else
        {
          v33 = 0;
        }

        v34 = *(v0 + 312) != 0;
        v46 = v33;
        v47 = v34;
        v35 = type metadata accessor for VoicemailsSectionController(0);
        v36 = *(v35 + 48);
        v37 = *(v35 + 52);
        swift_allocObject();
        v38 = v30;

        v28 = sub_1CFC16EEC(v38, v31, v0 + 16, &v46);

        v39 = *(v0 + 232);
      }

      *(v28 + OBJC_IVAR____TtC10CallsAppUI27VoicemailsSectionController_delegate + 8) = &protocol witness table for RecentsViewController;
      swift_unknownObjectWeakAssign();
      v40 = *(v25 + v26);
      *(v25 + v26) = v28;

      sub_1CFC5E0B0(2);

      v41 = *(v0 + 280);
      v42 = *(v0 + 248);
      v43 = *(v0 + 256);

      v44 = *(v0 + 8);

      return v44();
    }

    else
    {
      v7 = *(v0 + 272);
      v8 = *(*(v0 + 232) + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_recentsDataSource);
      result = sub_1CFC9C7B8();
      v9 = result;
      v10 = 0;
      v11 = result[2];
      while (v11 != v10)
      {
        if (v10 >= v9[2])
        {
          __break(1u);
          goto LABEL_24;
        }

        v12 = *(v0 + 280);
        v13 = *(v0 + 264);
        (*(v7 + 16))(v12, v9 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v10++, v13);
        v14 = sub_1CFC9C408();
        result = (*(v7 + 8))(v12, v13);
        if (v14)
        {
          v15 = *(v0 + 288);

          goto LABEL_14;
        }
      }

      v16 = *(v0 + 232);

      v17 = OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_legacyMailboxService;
      *(v0 + 320) = OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_legacyMailboxService;
      v18 = v16 + v17;
      swift_beginAccess();
      if (!*(v18 + 24))
      {
        goto LABEL_13;
      }

      sub_1CFBB94B0(v18, v0 + 56);
      v19 = *(v0 + 80);
      v20 = *(v0 + 88);
      __swift_project_boxed_opaque_existential_1((v0 + 56), v19);
      v21 = *(v20 + 48);
      v45 = (v21 + *v21);
      v22 = v21[1];
      v23 = swift_task_alloc();
      *(v0 + 328) = v23;
      *v23 = v0;
      v23[1] = sub_1CFC610CC;

      return v45(v19, v20);
    }
  }

  else
  {
LABEL_24:
    __break(1u);
  }

  return result;
}

uint64_t sub_1CFC610CC(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 328);
  v7 = *v1;
  *(*v1 + 336) = a1;

  v4 = *(v2 + 304);
  v5 = *(v2 + 296);

  return MEMORY[0x1EEE6DFA0](sub_1CFC611F4, v5, v4);
}

uint64_t sub_1CFC611F4()
{
  v39 = v0;
  v1 = v0[42];
  v2 = v0[36];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  if (*(v1 + 16) == 1)
  {
    v3 = v0[31];
    v4 = v0[32];
    v5 = *(v0[30] + 80);
    sub_1CFC6B7BC(v0[42] + ((v5 + 32) & ~v5), v3, type metadata accessor for LegacyMailbox);

    sub_1CFC6B824(v3, v4, type metadata accessor for LegacyMailbox);
    if (qword_1EE050010 != -1)
    {
      swift_once();
    }

    v6 = sub_1CFC9D938();
    __swift_project_value_buffer(v6, qword_1EE052308);
    v7 = sub_1CFC9D918();
    v8 = sub_1CFC9FAF8();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1CFB9F000, v7, v8, "User tapped on voicemail tab, has legacy voicemails, but no visual voicemails, directly calling carrier instead of bringing to voicemail section", v9, 2u);
      MEMORY[0x1D3873280](v9, -1, -1);
    }

    v10 = v0[40];
    v11 = v0[29];

    swift_beginAccess();
    if (*(v11 + v10 + 24))
    {
      v12 = v0[32];
      sub_1CFBB94B0(v0[29] + v0[40], (v0 + 12));
      swift_endAccess();
      v13 = v0[15];
      v14 = v0[16];
      __swift_project_boxed_opaque_existential_1(v0 + 12, v13);
      (*(v14 + 56))(v12, v13, v14);
      sub_1CFC6B88C(v12, type metadata accessor for LegacyMailbox);
      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
    }

    else
    {
      sub_1CFC6B88C(v0[32], type metadata accessor for LegacyMailbox);
      swift_endAccess();
    }
  }

  else
  {
    v15 = v0[42];

    v16 = v0[29];
    v17 = OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_voicemailsSection;
    if (*(v16 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_voicemailsSection))
    {
      v18 = v0[29];
      v19 = *(v16 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_voicemailsSection);
    }

    else
    {
      v20 = v0[39];
      v21 = *(v16 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_recentsDataSource);
      v22 = *(v16 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_detailsPresenter);
      v23 = OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_legacyMailboxService;
      swift_beginAccess();
      sub_1CFBA29FC(v16 + v23, (v0 + 2), &qword_1EC4EE538, qword_1CFCA9BD0);
      if (v20)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED560, &qword_1CFCA2460);
        v24 = swift_allocObject();
        *(v24 + 16) = xmmword_1CFCA1DC0;
        *(v24 + 32) = 2;
        *(v24 + 34) = 0;
        *(v24 + 40) = 0;
        *(v24 + 48) = 1;
        *(v24 + 50) = 0;
        *(v24 + 56) = 0;
      }

      else
      {
        v24 = 0;
      }

      v25 = v0[39] != 0;
      v37 = v24;
      v38 = v25;
      v26 = type metadata accessor for VoicemailsSectionController(0);
      v27 = *(v26 + 48);
      v28 = *(v26 + 52);
      swift_allocObject();
      v29 = v21;

      v19 = sub_1CFC16EEC(v29, v22, (v0 + 2), &v37);

      v30 = v0[29];
    }

    *(v19 + OBJC_IVAR____TtC10CallsAppUI27VoicemailsSectionController_delegate + 8) = &protocol witness table for RecentsViewController;
    swift_unknownObjectWeakAssign();
    v31 = *(v16 + v17);
    *(v16 + v17) = v19;

    sub_1CFC5E0B0(2);
  }

  v32 = v0[35];
  v33 = v0[31];
  v34 = v0[32];

  v35 = v0[1];

  return v35();
}

void RecentsViewController.presentVoicemails(mailbox:)(unsigned __int16 a1)
{
  v2 = *&v1[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_voicemailsSection];
  if (v2)
  {
    v4 = *(v2 + OBJC_IVAR____TtC10CallsAppUI27VoicemailsSectionController_dataSource);
    v5 = OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_legacyMailboxService;
    swift_beginAccess();
    sub_1CFBA29FC(&v1[v5], v10, &qword_1EC4EE538, qword_1CFCA9BD0);
    objc_allocWithZone(type metadata accessor for VoicemailListViewController());

    v6 = v4;
    v7 = a1;
    v8 = v1;
    v9 = VoicemailListViewController.init(dataSource:legacyMailboxService:mailbox:)(v6, v10, v7);
    [v8 showDetailViewController:v9 sender:v8];
  }
}

Swift::Void __swiftcall RecentsViewController.startSearching(for:)(Swift::String_optional a1)
{
  v2 = v1;
  object = a1.value._object;
  countAndFlagsBits = a1.value._countAndFlagsBits;
  v5 = sub_1CFC9F638();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1CFC9F658();
  v32 = *(v10 - 8);
  v11 = *(v32 + 64);
  *&v12 = MEMORY[0x1EEE9AC00](v10).n128_u64[0];
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([v1 isViewLoaded])
  {
    v15 = [v1 view];
    if (!v15)
    {
      __break(1u);
      return;
    }

    v16 = v15;
    v17 = [v15 window];

    if (v17)
    {

      sub_1CFBA2D80(0, &qword_1EE04FF80, 0x1E69E9610);
      v31 = sub_1CFC9FC28();
      v18 = swift_allocObject();
      v18[2] = v2;
      v18[3] = countAndFlagsBits;
      v18[4] = object;
      aBlock[4] = sub_1CFC6A998;
      aBlock[5] = v18;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1CFC56F38;
      aBlock[3] = &block_descriptor_37_0;
      v19 = _Block_copy(aBlock);

      v20 = v2;
      sub_1CFC9F648();
      v33 = MEMORY[0x1E69E7CC0];
      sub_1CFC6A6B0(&qword_1EE04D130, MEMORY[0x1E69E7F60]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4ED5B0, &unk_1CFCA24A0);
      sub_1CFBA57C0(&qword_1EE04D110, &unk_1EC4ED5B0, &unk_1CFCA24A0);
      sub_1CFC9FF58();
      v21 = v31;
      MEMORY[0x1D3872170](0, v14, v9, v19);
      _Block_release(v19);

      (*(v6 + 8))(v9, v5);
      (*(v32 + 8))(v14, v10);

      return;
    }
  }

  v22 = sub_1CFC57D08();
  v23 = [v22 searchBar];

  [v23 becomeFirstResponder];
  v24 = OBJC_IVAR____TtC10CallsAppUI21RecentsViewController____lazy_storage___searchController;
  v25 = [*&v2[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController____lazy_storage___searchController] searchBar];
  if (object)
  {
    v26 = sub_1CFC9F728();
  }

  else
  {
    v26 = 0;
  }

  [v25 setText_];

  v27 = [*&v2[v24] searchResultsUpdater];
  if (v27)
  {
    v28 = v27;
    v29 = *&v2[v24];
    [v28 updateSearchResultsForSearchController_];

    swift_unknownObjectRelease();
  }
}

id sub_1CFC61B80(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1CFC57D08();
  v6 = [v5 searchBar];

  [v6 becomeFirstResponder];
  v7 = OBJC_IVAR____TtC10CallsAppUI21RecentsViewController____lazy_storage___searchController;
  v8 = [*(a1 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController____lazy_storage___searchController) isActive];
  v9 = *(a1 + v7);
  if (v8)
  {
    v10 = [v9 searchBar];
    if (a3)
    {
      a3 = sub_1CFC9F728();
    }

    [v10 setText_];

    result = [*(a1 + v7) searchResultsUpdater];
    if (result)
    {
      v12 = result;
      v13 = *(a1 + v7);
      [v12 updateSearchResultsForSearchController_];

      return swift_unknownObjectRelease();
    }
  }

  else
  {

    return [v9 setActive_];
  }

  return result;
}

Swift::Void __swiftcall RecentsViewController.handleCallFilteringAction()()
{
  v1 = sub_1CFC9CED8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([objc_opt_self() isFilterAsNewCallersEnabledForPhone] & 1) != 0 || (TUFilterAsNewCallersSeenOnboardingScreenForPhone())
  {

    _s10CallsAppUI21RecentsViewControllerC27goToCallFilteringInSettingsyyF_0();
  }

  else
  {
    sub_1CFC9D098();
    (*(v2 + 104))(v5, *MEMORY[0x1E6995A50], v1);
    v6 = v0;
    v7 = sub_1CFC9D088();
    (*(v2 + 8))(v5, v1);
    [v6 presentViewController:v7 animated:1 completion:0];
    TUSetFilterAsNewCallersSeenOnboardingScreenForPhone();
    v8 = *&v6[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_callFilteringOnboardingViewController];
    *&v6[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_callFilteringOnboardingViewController] = v7;
  }
}

uint64_t sub_1CFC61E98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED950, &qword_1CFCA2710) - 8) + 64) + 15;
  v4[4] = swift_task_alloc();
  v4[5] = sub_1CFC9F968();
  v4[6] = sub_1CFC9F958();
  v7 = sub_1CFC9F938();
  v4[7] = v7;
  v4[8] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1CFC61F6C, v7, v6);
}

uint64_t sub_1CFC61F6C()
{
  if ([*(v0[3] + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_featureFlags) deviceExpertMigrationEnabled])
  {
    v1 = v0[5];
    v0[9] = sub_1CFC9F958();
    v3 = sub_1CFC9F938();
    v0[10] = v3;
    v0[11] = v2;

    return MEMORY[0x1EEE6DFA0](sub_1CFC6218C, v3, v2);
  }

  else
  {
    v4 = v0[6];

    v5 = *MEMORY[0x1E69D8DD0];
    sub_1CFC9F768();
    v6 = objc_allocWithZone(MEMORY[0x1E695E000]);
    v7 = sub_1CFC9F728();

    v8 = [v6 initWithSuiteName_];

    if (v8)
    {
      [v8 setBool:1 forKey:*MEMORY[0x1E69D8E88]];
    }

    v9 = v0[3];
    v10 = [objc_opt_self() defaultCenter];
    v11 = sub_1CFC9F728();
    [v10 postNotificationName:v11 object:0];

    v12 = OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_callFilteringOnboardingViewController;
    v13 = *(v9 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_callFilteringOnboardingViewController);
    if (v13)
    {
      [v13 dismissViewControllerAnimated:1 completion:0];
      v14 = *(v9 + v12);
    }

    else
    {
      v14 = 0;
    }

    v15 = v0[4];
    *(v9 + v12) = 0;

    v16 = v0[1];

    return v16();
  }
}