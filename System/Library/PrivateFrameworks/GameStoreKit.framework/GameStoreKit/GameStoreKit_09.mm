uint64_t sub_24E6DB470@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v62 = a2;
  v61 = a4;
  v6 = type metadata accessor for PlayerAvatarView.Overlay(0);
  v66 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v64 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DF80);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v57 - v9;
  v71 = type metadata accessor for PlayerAvatar(0);
  v11 = *(v71 - 8);
  v12 = MEMORY[0x28223BE20](v71);
  v14 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v69 = &v57 - v15;
  v16 = type metadata accessor for PlayerAvatarView(0);
  v70 = *(v16 - 1);
  MEMORY[0x28223BE20](v16);
  v18 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for OverlappingPlayerAvatarsView();
  v20 = MEMORY[0x28223BE20](v19);
  v60 = &v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v59 = &v57 - v23;
  MEMORY[0x28223BE20](v22);
  v63 = &v57 - v24;
  v25 = *(a1 + 16);
  if (v25)
  {
    v57 = v19;
    v67 = v10;
    v68 = v6;
    v58 = a3;
    *&v72 = MEMORY[0x277D84F90];
    sub_24F457C7C(0, v25, 0);
    v26 = v72;
    v27 = a1 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v66 += 7;
    v65 = *(v11 + 72);
    do
    {
      v28 = v69;
      sub_24E6DC504(v27, v69, type metadata accessor for PlayerAvatar);
      sub_24E6DC504(v28, v14, type metadata accessor for PlayerAvatar);

      sub_24F928948();
      sub_24E6DC56C(v28, type metadata accessor for PlayerAvatar);
      type metadata accessor for PlayerAvatarView.AvatarType(0);
      swift_storeEnumTagMultiPayload();
      v29 = v67;
      sub_24E60169C(&v14[*(v71 + 20)], v67, &qword_27F22DF80);
      v30 = v16[5];
      v31 = type metadata accessor for PlayerAvatar.Overlay(0);
      if ((*(*(v31 - 8) + 48))(v29, 1, v31) == 1)
      {
        sub_24E601704(v29, &qword_27F22DF80);
        v32 = 1;
        v33 = v68;
      }

      else
      {
        v34 = v64;
        sub_24E6DC39C(v29, v64, type metadata accessor for PlayerAvatar.Overlay);
        v33 = v68;
        v35 = v34 + *(v68 + 20);
        *v35 = 0;
        *(v35 + 8) = 1;
        v36 = (v34 + *(v33 + 24));
        *v36 = 0;
        v36[1] = 0;
        sub_24E6DC39C(v34, &v18[v30], type metadata accessor for PlayerAvatarView.Overlay);
        v32 = 0;
      }

      (*v66)(&v18[v30], v32, 1, v33);
      v37 = &v18[v16[6]];
      sub_24E60169C(&v14[*(v71 + 24)], &v76, qword_27F24EC90);
      sub_24E6DC56C(v14, type metadata accessor for PlayerAvatar);
      v38 = v77;
      *v37 = v76;
      *(v37 + 1) = v38;
      *(v37 + 4) = v78;
      v18[v16[7]] = 7;
      *&v72 = v26;
      v40 = *(v26 + 16);
      v39 = *(v26 + 24);
      if (v40 >= v39 >> 1)
      {
        sub_24F457C7C(v39 > 1, v40 + 1, 1);
        v26 = v72;
      }

      *(v26 + 16) = v40 + 1;
      sub_24E6DC39C(v18, v26 + ((*(v70 + 80) + 32) & ~*(v70 + 80)) + *(v70 + 72) * v40, type metadata accessor for PlayerAvatarView);
      v27 += v65;
      --v25;
    }

    while (v25);
    v41 = v58;
    v19 = v57;
  }

  else
  {
    v41 = a3;
    v26 = MEMORY[0x277D84F90];
  }

  *&v76 = 0x4010000000000000;
  sub_24E66ED98();
  v42 = v59;
  sub_24F9237C8();
  *(v42 + v19[5]) = v26;
  v43 = v42 + v19[6];
  *v43 = 3;
  *(v43 + 8) = 0;
  *(v42 + v19[7]) = 1;
  v44 = v63;
  sub_24E6DC39C(v42, v63, type metadata accessor for OverlappingPlayerAvatarsView);
  KeyPath = swift_getKeyPath();

  v46 = sub_24F925A18();
  v47 = swift_getKeyPath();
  LOBYTE(v76) = 0;
  LOBYTE(v72) = 0;
  v48 = sub_24F9251C8();
  v49 = v60;
  sub_24E6DC504(v44, v60, type metadata accessor for OverlappingPlayerAvatarsView);
  v50 = v61;
  sub_24E6DC504(v49, v61, type metadata accessor for OverlappingPlayerAvatarsView);
  v51 = (v50 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218540) + 48));
  v52 = v62;
  *&v72 = v62;
  *(&v72 + 1) = v41;
  LOBYTE(v73) = 0;
  v53 = MEMORY[0x277D84F90];
  *(&v73 + 1) = MEMORY[0x277D84F90];
  *&v74 = KeyPath;
  *(&v74 + 1) = 1;
  v75[0] = 0;
  *&v75[8] = v47;
  *&v75[16] = v46;
  *&v75[24] = v48;
  sub_24E60169C(&v72, &v76, &qword_27F218518);
  sub_24E6DC56C(v63, type metadata accessor for OverlappingPlayerAvatarsView);
  v54 = *v75;
  v51[2] = v74;
  v51[3] = v54;
  *(v51 + 60) = *&v75[12];
  v55 = v73;
  *v51 = v72;
  v51[1] = v55;
  *&v76 = v52;
  *(&v76 + 1) = v41;
  LOBYTE(v77) = 0;
  *(&v77 + 1) = v53;
  v78 = KeyPath;
  v79 = 1;
  v80 = 0;
  v81 = v47;
  v82 = v46;
  v83 = v48;
  sub_24E601704(&v76, &qword_27F218518);
  return sub_24E6DC56C(v49, type metadata accessor for OverlappingPlayerAvatarsView);
}

uint64_t sub_24E6DBCC4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_24F924248();
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v21 - v6;
  v8 = sub_24F924258();
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  v9 = *(v8 + 20);
  v10 = *MEMORY[0x277CE0118];
  v11 = sub_24F924B38();
  (*(*(v11 - 8) + 104))(&v7[v9], v10, v11);
  __asm { FMOV            V0.2D, #12.0 }

  *v7 = _Q0;
  *&v7[*(v2 + 20)] = 0xC024000000000000;
  _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  v17 = sub_24F926D08();

  v18 = MEMORY[0x277CDFBC8];
  sub_24E6DC504(v7, v5, MEMORY[0x277CDFBC8]);
  sub_24E6DCD7C(&qword_27F214338, MEMORY[0x277CDFBC8]);
  v19 = sub_24F927348();
  result = sub_24E6DC56C(v7, v18);
  *(a1 + 40) = v19;
  *(a1 + 48) = v17;
  return result;
}

uint64_t sub_24E6DBE78()
{
  sub_24E6DA0E0();

  return sub_24F9218E8();
}

unint64_t sub_24E6DBF08()
{
  result = qword_27F218478;
  if (!qword_27F218478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F218478);
  }

  return result;
}

uint64_t sub_24E6DBFC0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218498);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E6DC040(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_24E6DC0B0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_24E6DC12C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {

    v4 = vars8;
  }
}

unint64_t sub_24E6DC16C()
{
  result = qword_27F218500;
  if (!qword_27F218500)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2184E8);
    sub_24E602068(&qword_27F218508, &qword_27F2184F0);
    sub_24E6DC224();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F218500);
  }

  return result;
}

unint64_t sub_24E6DC224()
{
  result = qword_27F218510;
  if (!qword_27F218510)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F218518);
    sub_24E6DC2DC();
    sub_24E602068(&qword_27F217388, &qword_27F217390);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F218510);
  }

  return result;
}

unint64_t sub_24E6DC2DC()
{
  result = qword_27F218520;
  if (!qword_27F218520)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F218528);
    sub_24E67283C();
    sub_24E602068(&unk_27F212AB0, &qword_27F236350);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F218520);
  }

  return result;
}

uint64_t sub_24E6DC39C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_24E6DC404()
{
  result = qword_27F218550;
  if (!qword_27F218550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F218550);
  }

  return result;
}

uint64_t sub_24E6DC458(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 != -1)
  {
    return sub_24E6DC470(result, a2, a3, a4 & 1);
  }

  return result;
}

uint64_t sub_24E6DC470(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {

    v4 = vars8;
  }
}

unint64_t sub_24E6DC4B0()
{
  result = qword_27F218558;
  if (!qword_27F218558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F218558);
  }

  return result;
}

uint64_t sub_24E6DC504(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E6DC56C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

char *sub_24E6DC5CC(void *a1)
{
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218560);
  v26 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v3 = &v26 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218568);
  v27 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v26 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218570);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - v9;
  v11 = a1[3];
  v30 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v11);
  sub_24E6DCBCC();
  v12 = v29;
  sub_24F92D108();
  if (!v12)
  {
    v13 = v28;
    v29 = v8;
    v14 = sub_24F92CC78();
    v15 = (2 * *(v14 + 16)) | 1;
    v32 = v14;
    v33 = v14 + 32;
    v34 = 0;
    v35 = v15;
    v16 = sub_24E643430();
    if (v16 == 2 || v34 != v35 >> 1)
    {
      v21 = sub_24F92C918();
      swift_allocError();
      v23 = v22;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212E20);
      *v23 = &type metadata for ChallengesGameSuggestionLockup.SubtitleType;
      sub_24F92CBB8();
      sub_24F92C908();
      (*(*(v21 - 8) + 104))(v23, *MEMORY[0x277D84160], v21);
      swift_willThrow();
      (*(v29 + 8))(v10, v7);
      swift_unknownObjectRelease();
    }

    else if (v16)
    {
      LOBYTE(v36) = 1;
      sub_24E6DCC20();
      v17 = v3;
      sub_24F92CBA8();
      v18 = v13;
      v19 = sub_24F92CC28();
      v20 = v29;
      v6 = v19;
      v26[1](v17, v18);
      (*(v20 + 8))(v10, v7);
      swift_unknownObjectRelease();
    }

    else
    {
      LOBYTE(v36) = 0;
      sub_24E6DCC74();
      sub_24F92CBA8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218590);
      v31 = 0;
      sub_24E6DCCC8();
      sub_24F92CC68();
      v28 = v7;
      v26 = v36;
      v31 = 1;
      sub_24F92CC28();
      v25 = (v29 + 8);
      (*(v27 + 8))(v6, v4);
      (*v25)(v10, v28);
      swift_unknownObjectRelease();
      v6 = v26;
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v30);
  return v6;
}

unint64_t sub_24E6DCBCC()
{
  result = qword_27F218578;
  if (!qword_27F218578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F218578);
  }

  return result;
}

unint64_t sub_24E6DCC20()
{
  result = qword_27F218580;
  if (!qword_27F218580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F218580);
  }

  return result;
}

unint64_t sub_24E6DCC74()
{
  result = qword_27F218588;
  if (!qword_27F218588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F218588);
  }

  return result;
}

unint64_t sub_24E6DCCC8()
{
  result = qword_27F218598;
  if (!qword_27F218598)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F218590);
    sub_24E6DCD7C(&qword_27F2185A0, type metadata accessor for PlayerAvatar);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F218598);
  }

  return result;
}

uint64_t sub_24E6DCD7C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24E6DCE08()
{
  result = qword_27F2185A8;
  if (!qword_27F2185A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2184B0);
    sub_24E6DCEC0();
    sub_24E602068(&qword_27F212A60, &qword_27F223340);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2185A8);
  }

  return result;
}

unint64_t sub_24E6DCEC0()
{
  result = qword_27F2185B0;
  if (!qword_27F2185B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F218498);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F218488);
    sub_24E602068(&qword_27F2184A8, &qword_27F218488);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2185B0);
  }

  return result;
}

unint64_t sub_24E6DCFC0()
{
  result = qword_27F2185B8;
  if (!qword_27F2185B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2185B8);
  }

  return result;
}

unint64_t sub_24E6DD018()
{
  result = qword_27F2185C0;
  if (!qword_27F2185C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2185C0);
  }

  return result;
}

unint64_t sub_24E6DD070()
{
  result = qword_27F2185C8;
  if (!qword_27F2185C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2185C8);
  }

  return result;
}

unint64_t sub_24E6DD0C8()
{
  result = qword_27F2185D0;
  if (!qword_27F2185D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2185D0);
  }

  return result;
}

unint64_t sub_24E6DD120()
{
  result = qword_27F2185D8;
  if (!qword_27F2185D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2185D8);
  }

  return result;
}

unint64_t sub_24E6DD178()
{
  result = qword_27F2185E0;
  if (!qword_27F2185E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2185E0);
  }

  return result;
}

unint64_t sub_24E6DD1D0()
{
  result = qword_27F2185E8;
  if (!qword_27F2185E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2185E8);
  }

  return result;
}

unint64_t sub_24E6DD228()
{
  result = qword_27F2185F0;
  if (!qword_27F2185F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2185F0);
  }

  return result;
}

unint64_t sub_24E6DD280()
{
  result = qword_27F2185F8;
  if (!qword_27F2185F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2185F8);
  }

  return result;
}

unint64_t sub_24E6DD2D8()
{
  result = qword_27F218600;
  if (!qword_27F218600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F218600);
  }

  return result;
}

unint64_t sub_24E6DD330()
{
  result = qword_27F218608;
  if (!qword_27F218608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F218608);
  }

  return result;
}

unint64_t sub_24E6DD388()
{
  result = qword_27F218610;
  if (!qword_27F218610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F218610);
  }

  return result;
}

uint64_t sub_24E6DD3DC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xEC00000065707954 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1852793705 && a2 == 0xE400000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6564616372417369 && a2 == 0xE800000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x4D747865746E6F63 && a2 == 0xEB00000000756E65 || (sub_24F92CE08() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA451D0 == a2)
  {

    return 7;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_24E6DD688(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for GSKVideo();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218618);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 40));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_24E6DD7B4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for GSKVideo();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218618);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 40)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void sub_24E6DD8E8()
{
  type metadata accessor for GSKVideo();
  if (v0 <= 0x3F)
  {
    sub_24E6DD9C0();
    if (v1 <= 0x3F)
    {
      sub_24E6DDA18();
      if (v2 <= 0x3F)
      {
        sub_24E6DDA68();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_24E6DD9C0()
{
  if (!qword_27F218630)
  {
    type metadata accessor for VideoConfiguration();
    v0 = sub_24F92C4A8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F218630);
    }
  }
}

void sub_24E6DDA18()
{
  if (!qword_27F218638)
  {
    v0 = sub_24F92C4A8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F218638);
    }
  }
}

void sub_24E6DDA68()
{
  if (!qword_27F218640)
  {
    type metadata accessor for GSKVideoPlaybackCoordinator();
    sub_24E6E0AFC(&qword_27F2141F0, type metadata accessor for GSKVideoPlaybackCoordinator);
    v0 = sub_24F9243E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F218640);
    }
  }
}

uint64_t sub_24E6DDB18@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for GSKVideoView(0);
  v5 = *(v1 + *(v4 + 48));
  if (v5)
  {
    v6 = v4;
    v7 = *(v4 + 20);
    v8 = v5;
    sub_24E8586D8(v2, v2 + v7);

    v9 = *(v2 + v6[9]);
    v10 = *(v2 + v6[6]);
    v11 = *(v2 + v6[10]);
    v12 = *(v2 + v6[11]);
    v13 = *(v2 + v6[7]);
    v14 = v2 + v6[8];
    v19 = *(v14 + 32);
    v20 = *(v14 + 48);
    v21 = *(v14 + 64);
    v17 = *v14;
    v18 = *(v14 + 16);
    type metadata accessor for GSKVideoViewModel();
    sub_24E6E0AFC(&qword_27F218648, type metadata accessor for GSKVideoViewModel);

    result = sub_24F923C28();
    *(a1 + 40) = v10;
    *(a1 + 48) = v13;
    *(a1 + 72) = v18;
    *(a1 + 88) = v19;
    *a1 = result;
    *(a1 + 8) = v16;
    *(a1 + 16) = v9;
    *(a1 + 24) = v11;
    *(a1 + 32) = v12;
    *(a1 + 104) = v20;
    *(a1 + 120) = v21;
    *(a1 + 56) = v17;
  }

  else
  {
    type metadata accessor for GSKVideoPlaybackCoordinator();
    sub_24E6E0AFC(&qword_27F2141F0, type metadata accessor for GSKVideoPlaybackCoordinator);
    result = sub_24F9243C8();
    __break(1u);
  }

  return result;
}

uint64_t sub_24E6DDCC8()
{
  v1 = v0;
  v2 = sub_24F927618();
  v4 = v3;
  sub_24E6DE090(v0, __dst);
  v24 = *&__dst[96];
  v25 = *&__dst[112];
  v26 = *&__dst[128];
  v20 = *&__dst[32];
  v21 = *&__dst[48];
  v22 = *&__dst[64];
  v23 = *&__dst[80];
  v18 = *__dst;
  v19 = *&__dst[16];
  v28[6] = *&__dst[96];
  v28[7] = *&__dst[112];
  v28[8] = *&__dst[128];
  v28[2] = *&__dst[32];
  v28[3] = *&__dst[48];
  v28[4] = *&__dst[64];
  v28[5] = *&__dst[80];
  v27 = *&__dst[144];
  v29 = *&__dst[144];
  v28[0] = *__dst;
  v28[1] = *&__dst[16];
  sub_24E60169C(&v18, __src, &qword_27F218658);
  sub_24E601704(v28, &qword_27F218658);
  v36 = v24;
  v37 = v25;
  v38 = v26;
  v39 = v27;
  v32 = v20;
  v33 = v21;
  v34 = v22;
  v35 = v23;
  v30 = v18;
  v31 = v19;
  if (*(v0 + 16))
  {
    type metadata accessor for GSKVideo();
    v5 = sub_24F9289A8();
    if (!v5)
    {
      v6 = *(v0 + 24);

      goto LABEL_5;
    }
  }

  *__dst = sub_24F926C98();
  v6 = sub_24F9238D8();
LABEL_5:
  v7 = sub_24F925808();
  sub_24F927618();
  sub_24F9242E8();
  *&v16[27] = *&v16[83];
  *&v16[35] = *&v16[91];
  *&v16[43] = *&v16[99];
  *&v16[51] = v17;
  *&v16[3] = *&v16[59];
  *&v16[11] = *&v16[67];
  *&v16[19] = *&v16[75];
  *&__src[128] = v37;
  *&__src[144] = v38;
  *&__src[48] = v32;
  *&__src[64] = v33;
  *&__src[80] = v34;
  *&__src[258] = *&v16[40];
  *&__src[274] = *&v16[48];
  *&__src[96] = v35;
  *&__src[112] = v36;
  *&__src[16] = v30;
  *&__src[32] = v31;
  *&__src[242] = *&v16[32];
  *&__src[178] = *v16;
  *&__src[194] = *&v16[8];
  *&__src[210] = *&v16[16];
  *__src = v2;
  *&__src[8] = v4;
  *&__src[160] = v39;
  *&__src[168] = v6;
  __src[176] = v7;
  __src[177] = 0;
  *&__src[288] = *(&v17 + 1);
  *&__src[226] = *&v16[24];
  v8 = *(v1 + 8);
  v9 = OBJC_IVAR____TtC12GameStoreKit17GSKVideoViewModel_video;
  v10 = (v8 + *(type metadata accessor for GSKVideo() + 44) + v9);
  v11 = v10[1];
  *__dst = *v10;
  *&__dst[8] = v11;

  sub_24F92C7F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218660);
  sub_24E6E22F4(&qword_27F218668, &qword_27F218660, &unk_24F949168, sub_24E6E0C9C);
  sub_24F925FE8();
  sub_24E6585F8(v13);
  memcpy(__dst, __src, sizeof(__dst));
  return sub_24E601704(__dst, &qword_27F218660);
}

double sub_24E6DE090@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 8);

  if ((sub_24E880FEC() & 1) != 0 && sub_24E881128())
  {
    goto LABEL_7;
  }

  if (sub_24E880FEC())
  {
    v5 = 0;
    goto LABEL_8;
  }

  v6 = *(v4 + OBJC_IVAR____TtC12GameStoreKit17GSKVideoViewModel_player);
  if (!v6)
  {
LABEL_7:
    v5 = 1;
  }

  else
  {
    [v6 currentTime];
    v5 = v20 == 0;
  }

LABEL_8:
  v7 = *(a1 + 32);
  type metadata accessor for GSKVideoViewModel();
  sub_24E6E0AFC(&qword_27F218648, type metadata accessor for GSKVideoViewModel);
  v8 = sub_24F923C28();
  v10 = v9;
  type metadata accessor for GSKVideoPlaybackCoordinator();
  sub_24E6E0AFC(&qword_27F2141F0, type metadata accessor for GSKVideoPlaybackCoordinator);
  v11 = sub_24F9243D8();
  v13 = v12;
  v14 = *(a1 + 120);
  if (v14 != 5)
  {
    v15 = swift_allocObject();
    v16 = *(a1 + 72);
    *(v15 + 16) = *(a1 + 56);
    *(v15 + 32) = v16;
    v17 = *(a1 + 104);
    *(v15 + 48) = *(a1 + 88);
    *(v15 + 64) = v17;
    *(v15 + 80) = v14;
    *(v15 + 88) = v8;
    *(v15 + 96) = v10;
    *(v15 + 104) = v11;
    *(v15 + 112) = v13;
    *(v15 + 120) = v5;
    *(v15 + 121) = v7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2186B0);
  sub_24E602068(&qword_27F2186B8, &qword_27F2186B0);
  sub_24E6E0E38();
  sub_24F924E28();
  sub_24F927618();
  sub_24F9242E8();
  *&v19[69] = v24;
  *&v19[53] = v23;
  *&v19[21] = v21;
  *&v19[5] = v20;
  *&v19[85] = v25;
  *&v19[101] = v26;
  *&v19[37] = v22;
  *a2 = v20;
  *(a2 + 16) = v21;
  *(a2 + 32) = v22;
  *(a2 + 34) = BYTE2(v22);
  *(a2 + 99) = *&v19[64];
  *(a2 + 115) = *&v19[80];
  *(a2 + 131) = *&v19[96];
  *(a2 + 144) = *(&v26 + 1);
  *(a2 + 35) = *v19;
  *(a2 + 51) = *&v19[16];
  result = *&v19[32];
  *(a2 + 67) = *&v19[32];
  *(a2 + 83) = *&v19[48];
  return result;
}

uint64_t sub_24E6DE428@<X0>(__n128 *a1@<X8>)
{
  v91 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2186E0);
  v92 = *(v2 - 8);
  v93 = v2;
  MEMORY[0x28223BE20](v2);
  v86 = &v81 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2186E8);
  v83 = *(v4 - 8);
  v84 = v4;
  MEMORY[0x28223BE20](v4);
  v82 = &v81 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2186F0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v85 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v90 = &v81 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2186F8);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v96 = &v81 - v14;
  v15 = type metadata accessor for GSKVideoView.PreviewFrame(0);
  MEMORY[0x28223BE20](v15);
  v87 = &v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218700);
  MEMORY[0x28223BE20](v89);
  v88 = &v81 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218708);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v94 = &v81 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v97 = &v81 - v21;
  v22 = v1;
  v23 = *(v1 + 16);
  if (v23)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v24 = v23;
    sub_24F923098();

    v95 = v13;
    if (v132.n128_u8[0] & 1) == 0 || (v25 = *(v1 + 8), v26 = OBJC_IVAR____TtC12GameStoreKit17GSKVideoViewModel_player, (v27 = *(v25 + OBJC_IVAR____TtC12GameStoreKit17GSKVideoViewModel_player)) != 0) && ((v28 = v27, v29 = sub_24EA9C658(), v28, (v29) || (v30 = *(v25 + v26)) != 0 && ([v30 currentTime], v132.n128_u64[0])))
    {
      sub_24E6DF080(v22, v130);
      sub_24F927618();
      sub_24F9242E8();
      v127 = v130[12];
      v128 = v130[13];
      v129[0] = v130[14];
      *&v129[1] = v131;
      v123 = v130[8];
      v124 = v130[9];
      v125 = v130[10];
      v126 = v130[11];
      v119 = v130[4];
      v120 = v130[5];
      v121 = v130[6];
      v122 = v130[7];
      v115 = v130[0];
      v116 = v130[1];
      v117 = v130[2];
      v118 = v130[3];
      BYTE8(v129[1]) = 0;
      CGSizeMake(&v115, v31, v32);
      v144 = v127;
      v145 = v128;
      v146[0] = v129[0];
      *(v146 + 9) = *(v129 + 9);
      v140 = v123;
      v141 = v124;
      v142 = v125;
      v143 = v126;
      v136 = v119;
      v137 = v120;
      v138 = v121;
      v139 = v122;
      v132 = v115;
      v133 = v116;
      v134 = v117;
      v135 = v118;
    }

    else
    {
      sub_24E6E12F0(&v132);
    }

    v147 = *v22;
    v33 = *(&v147 + 1);
    v34 = sub_24E880FEC();
    v35 = OBJC_IVAR____TtC12GameStoreKit17GSKVideoViewModel_video;
    v36 = v33 + *(type metadata accessor for GSKVideo() + 20);
    v37 = v15;
    v38 = *(v15 + 20);
    v39 = sub_24F9289E8();
    v40 = v87;
    (*(*(v39 - 8) + 16))(&v87[v38], v36 + v35, v39);
    v41 = *(v22 + 32);
    v42 = v22;
    *v40 = v34 & 1;
    v40[*(v37 + 24)] = v41;
    sub_24F927618();
    v43 = 1;
    sub_24F9242E8();
    v44 = v88;
    sub_24E6E1150(v40, v88);
    v45 = (v44 + *(v89 + 36));
    v46 = v146[7];
    v45[4] = v146[6];
    v45[5] = v46;
    v45[6] = v146[8];
    v47 = v146[3];
    *v45 = v146[2];
    v45[1] = v47;
    v48 = v146[5];
    v45[2] = v146[4];
    v45[3] = v48;
    sub_24E6E11B4();
    sub_24F9265E8();
    sub_24E601704(v44, &qword_27F218700);
    if (*(v42 + 33))
    {
      goto LABEL_23;
    }

    v49 = v33;
    if (sub_24E8811C4())
    {
      v115.n128_u64[0] = sub_24E6E1298;
      v115.n128_u64[1] = v33;
      v50 = qword_27F211770;

      v51 = v90;
      if (v50 != -1)
      {
        swift_once();
      }

      v113[0] = xmmword_27F39EFA8;
      sub_24E6E129C();
      sub_24E600AEC();
      v52 = v82;
      sub_24F926538();

      sub_24E6009C8(v52, v51, &qword_27F2186E8);
      v53 = 0;
    }

    else
    {
      v53 = 1;
      v51 = v90;
    }

    (*(v83 + 56))(v51, v53, 1, v84);
    v54 = v49 + OBJC_IVAR____TtC12GameStoreKit17GSKVideoViewModel_configuration;
    swift_beginAccess();
    if (*(v54 + *(type metadata accessor for VideoConfiguration() + 32)) == 1)
    {
      v55 = *(v49 + OBJC_IVAR____TtC12GameStoreKit17GSKVideoViewModel_player);
      if (!v55)
      {
        v57 = 0;
        goto LABEL_21;
      }

      v56 = OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_shouldBePlaying;
      swift_beginAccess();
      if (*(v55 + v56) == 1)
      {
        sub_24E60169C(&v147, &v115, &qword_27F2186C8);

        v55 = sub_24E6E1290;
        v57 = 1;
LABEL_22:
        v58 = v85;
        sub_24E60169C(v51, v85, &qword_27F2186F0);
        v59 = v86;
        sub_24E60169C(v58, v86, &qword_27F2186F0);
        v60 = (v59 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218720) + 48));
        sub_24E6E1270(v57, v55);
        sub_24E6E1280(v57, v55);
        *v60 = v57;
        v60[1] = v55;
        v60[2] = v49;
        sub_24E601704(v90, &qword_27F2186F0);
        sub_24E6E1280(v57, v55);
        sub_24E601704(v58, &qword_27F2186F0);
        sub_24E6009C8(v59, v96, &qword_27F2186E0);
        v43 = 0;
LABEL_23:
        v61 = v96;
        (*(v92 + 56))(v96, v43, 1, v93);
        v111 = v145;
        v112[0] = v146[0];
        *(v112 + 9) = *(v146 + 9);
        v107 = v141;
        v108 = v142;
        v109 = v143;
        v110 = v144;
        v102 = v136;
        v103 = v137;
        v104 = v138;
        v105 = v139;
        v106 = v140;
        v98 = v132;
        v99 = v133;
        v100 = v134;
        v101 = v135;
        v62 = v97;
        v63 = v94;
        sub_24E60169C(v97, v94, &qword_27F218708);
        v64 = v95;
        sub_24E60169C(v61, v95, &qword_27F2186F8);
        v65 = v109;
        v113[12] = v110;
        v113[13] = v111;
        v66 = v111;
        v114[0] = v112[0];
        *(v114 + 9) = *(v112 + 9);
        v68 = v105;
        v113[8] = v106;
        v67 = v106;
        v113[9] = v107;
        v69 = v107;
        v113[10] = v108;
        v70 = v108;
        v113[11] = v109;
        v71 = v102;
        v72 = v103;
        v113[4] = v102;
        v113[5] = v103;
        v73 = v104;
        v113[6] = v104;
        v113[7] = v105;
        v74 = v98;
        v75 = v99;
        v113[0] = v98;
        v113[1] = v99;
        v76 = v100;
        v77 = v101;
        v113[2] = v100;
        v113[3] = v101;
        v78 = v91;
        v91[12] = v110;
        v78[13] = v66;
        v78[14] = v112[0];
        *(v78 + 233) = *(v112 + 9);
        v78[8] = v67;
        v78[9] = v69;
        v78[10] = v70;
        v78[11] = v65;
        v78[4] = v71;
        v78[5] = v72;
        v78[6] = v73;
        v78[7] = v68;
        *v78 = v74;
        v78[1] = v75;
        v78[2] = v76;
        v78[3] = v77;
        v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218728);
        sub_24E60169C(v63, v78 + *(v79 + 48), &qword_27F218708);
        sub_24E60169C(v64, v78 + *(v79 + 64), &qword_27F2186F8);
        sub_24E60169C(v113, &v115, &qword_27F218730);
        sub_24E601704(v61, &qword_27F2186F8);
        sub_24E601704(v62, &qword_27F218708);
        sub_24E601704(v64, &qword_27F2186F8);
        sub_24E601704(v63, &qword_27F218708);
        v127 = v110;
        v128 = v111;
        v129[0] = v112[0];
        *(v129 + 9) = *(v112 + 9);
        v123 = v106;
        v124 = v107;
        v125 = v108;
        v126 = v109;
        v119 = v102;
        v120 = v103;
        v121 = v104;
        v122 = v105;
        v115 = v98;
        v116 = v99;
        v117 = v100;
        v118 = v101;
        return sub_24E601704(&v115, &qword_27F218730);
      }
    }

    v57 = 0;
    v55 = 0;
LABEL_21:
    v49 = 0;
    goto LABEL_22;
  }

  type metadata accessor for GSKVideoPlaybackCoordinator();
  sub_24E6E0AFC(&qword_27F2141F0, type metadata accessor for GSKVideoPlaybackCoordinator);
  result = sub_24F9243C8();
  __break(1u);
  return result;
}

__n128 sub_24E6DF080@<Q0>(__int128 *a1@<X0>, __n128 *a2@<X8>)
{
  if (*(a1 + 33))
  {
    type metadata accessor for GSKVideoViewModel();
    sub_24E6E0AFC(&qword_27F218648, type metadata accessor for GSKVideoViewModel);

    v25 = sub_24F923C28();
    v26 = v3;
    sub_24E6E15DC(&v25);
  }

  else
  {
    v40 = *a1;
    type metadata accessor for GSKVideoViewModel();
    sub_24E6E0AFC(&qword_27F218648, type metadata accessor for GSKVideoViewModel);

    v5 = sub_24F923C28();
    v7 = v6;
    v8 = sub_24F925808();
    sub_24F923318();
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v41[0].n128_u8[0] = 0;
    v39 = a1[1];
    v17 = swift_allocObject();
    v18 = a1[1];
    *(v17 + 16) = *a1;
    *(v17 + 32) = v18;
    *(v17 + 48) = *(a1 + 16);
    v19 = swift_allocObject();
    v20 = a1[1];
    *(v19 + 16) = *a1;
    *(v19 + 32) = v20;
    *(v19 + 48) = *(a1 + 16);
    v25 = v5;
    v26 = v7;
    v27 = v8;
    v28 = v10;
    v29 = v12;
    v30 = v14;
    v31 = v16;
    v32 = 0;
    v33 = sub_24E6E1334;
    v34 = v17;
    v35 = 0u;
    v36 = 0u;
    v37 = sub_24E6E137C;
    v38 = v19;
    sub_24E6E1384(&v25);
    sub_24E60169C(&v40, v41, &qword_27F2186C8);
    sub_24E60169C(&v39, v41, &qword_27F2186D0);
    sub_24E60169C(&v40, v41, &qword_27F2186C8);
    sub_24E60169C(&v39, v41, &qword_27F2186D0);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218740);
  sub_24E6E1390();
  sub_24E6E13E4();
  sub_24F924E28();
  v21 = v41[7];
  a2[6] = v41[6];
  a2[7] = v21;
  a2[8].n128_u8[0] = v42;
  v22 = v41[3];
  a2[2] = v41[2];
  a2[3] = v22;
  v23 = v41[5];
  a2[4] = v41[4];
  a2[5] = v23;
  result = v41[1];
  *a2 = v41[0];
  a2[1] = result;
  return result;
}

void sub_24E6DF3A8(uint64_t a1)
{
  v2 = sub_24F91F4A8();
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = *(a1 + 8);
    v8 = OBJC_IVAR____TtC12GameStoreKit17GSKVideoViewModel_player;
    if (!*(v7 + OBJC_IVAR____TtC12GameStoreKit17GSKVideoViewModel_player))
    {
      (*(v3 + 16))(v5, v7 + OBJC_IVAR____TtC12GameStoreKit17GSKVideoViewModel_video);
      v9 = objc_allocWithZone(type metadata accessor for VideoPlayer());
      v10 = v6;
      v11 = VideoPlayer.init(with:)(v5);
      v12 = *(v7 + v8);
      *(v7 + v8) = v11;
      v13 = v11;

      sub_24E88237C();
      sub_24E881AB0();
    }
  }

  else
  {
    type metadata accessor for GSKVideoPlaybackCoordinator();
    sub_24E6E0AFC(&qword_27F2141F0, type metadata accessor for GSKVideoPlaybackCoordinator);
    sub_24F9243C8();
    __break(1u);
  }
}

void sub_24E6DF540(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = v1;
    sub_24E881494();
  }

  else
  {
    type metadata accessor for GSKVideoPlaybackCoordinator();
    sub_24E6E0AFC(&qword_27F2141F0, type metadata accessor for GSKVideoPlaybackCoordinator);
    sub_24F9243C8();
    __break(1u);
  }
}

void sub_24E6DF5EC(uint64_t a1)
{
  if ((*(a1 + OBJC_IVAR____TtC12GameStoreKit17GSKVideoViewModel_isFullScreen) & 1) == 0)
  {
    *(a1 + OBJC_IVAR____TtC12GameStoreKit17GSKVideoViewModel_isFullScreen) = 1;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v2 = Strong;
      [Strong setModalPresentationStyle_];
    }

    v3 = swift_unknownObjectWeakLoadStrong();
    if (v3)
    {
      v4 = v3;
      [v3 enterFullScreenWithCompletion_];
    }
  }
}

__n128 sub_24E6DF6B0@<Q0>(uint64_t a1@<X1>, uint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  sub_24F923998();
  v7 = sub_24E97280C(v6);
  v9 = v8;
  sub_24F923998();
  v11 = v10;
  v12 = *(a1 + 48);
  v13 = *(a1 + 56);
  sub_24F923998();
  v15 = v14;
  v16 = sub_24F927618();
  v18 = v17;
  v19 = *(a1 + 64);
  v51 = v15;
  v52 = v11;
  if (v19 < 2)
  {
    v49 = 0xBFF0000000000000;
    v50 = v16;
    v20 = 0x3FF0000000000000;
  }

  else
  {
    if ((v19 - 2) >= 2)
    {
      v35 = 0;
      v23 = 0;
      v22 = 0;
      v34 = 0;
      v33 = 0;
      v32 = 0;
      v30 = 0;
      v25 = 0;
      v27 = 0;
      v28 = 0.0;
      v29 = 0.0;
      goto LABEL_13;
    }

    v49 = 0x3FF0000000000000;
    v50 = v16;
    v20 = 0xBFF0000000000000;
  }

  v48 = v20;
  v21 = *(a2 + 32);
  v22 = a2[2];
  v23 = a2[1];
  v46 = *a2;
  v47 = a2[3];
  sub_24F9278A8();
  v25 = v24;
  v27 = v26;
  if (v19 > 1)
  {
    if (v19 == 2)
    {
      v28 = -v7;
      v29 = 0.0;
    }

    else
    {
      v29 = 0.0;
      v28 = v7;
    }
  }

  else
  {
    v28 = 0.0;
    if (v19)
    {
      v29 = v9;
    }

    else
    {
      v29 = -v9;
    }
  }

  v30 = v21 | 0x100;

  v31 = v22;
  v32 = v49;
  v16 = v50;
  v34 = v47;
  v33 = v48;
  v35 = v46;
LABEL_13:
  *&v54 = v35;
  *(&v54 + 1) = v23;
  *&v55 = v22;
  *(&v55 + 1) = v34;
  *&v56 = v30;
  *(&v56 + 1) = v33;
  *&v57 = v32;
  *(&v57 + 1) = v25;
  *&v58 = v27;
  *(&v58 + 1) = v28;
  *&v59 = v29;
  *(&v59 + 1) = v16;
  v60 = v18;
  v36 = *a2;
  v68 = *(a2 + 1);
  v69 = v36;
  *v67 = *(a2 + 16);
  v65 = v36;
  v66 = v68;
  *&v67[104] = v18;
  *&v67[88] = v59;
  *&v67[72] = v58;
  *&v67[56] = v57;
  *&v67[40] = v56;
  *&v67[24] = v55;
  *&v67[8] = v54;
  v61[0] = v35;
  v61[1] = v23;
  v61[2] = v22;
  v61[3] = v34;
  v61[4] = v30;
  v61[5] = v33;
  v61[6] = v32;
  v61[7] = v25;
  v61[8] = v27;
  *&v61[9] = v28;
  *&v61[10] = v29;
  v61[11] = v16;
  v61[12] = v18;
  sub_24E60169C(&v69, v53, &qword_27F2186C8);
  sub_24E60169C(&v68, v53, &qword_27F2186D0);
  sub_24E60169C(&v54, v53, &qword_27F2186D8);
  sub_24E601704(v61, &qword_27F2186D8);
  sub_24F927618();
  sub_24F9238C8();
  sub_24F923998();
  sub_24F923998();
  v37 = *(a1 + 65);
  if (v37 <= 3)
  {
    if (*(a1 + 65) > 1u)
    {
      if (v37 == 2)
      {
        sub_24F927608();
      }

      else
      {
        sub_24F927638();
      }
    }

    else if (*(a1 + 65))
    {
      sub_24F927628();
    }

    else
    {
      sub_24F9275F8();
    }
  }

  else if (*(a1 + 65) <= 5u)
  {
    if (v37 == 4)
    {
      sub_24F9275A8();
    }

    else
    {
      sub_24F9275B8();
    }
  }

  else if (v37 == 6)
  {
    sub_24F9275C8();
  }

  else if (v37 == 7)
  {
    sub_24F9275D8();
  }

  else
  {
    sub_24F927618();
  }

  sub_24F9238C8();
  v38 = *&v67[80];
  *(a3 + 96) = *&v67[64];
  *(a3 + 112) = v38;
  *(a3 + 128) = *&v67[96];
  v39 = *&v67[16];
  *(a3 + 32) = *v67;
  *(a3 + 48) = v39;
  v40 = *&v67[48];
  *(a3 + 64) = *&v67[32];
  *(a3 + 80) = v40;
  v41 = v66;
  *a3 = v65;
  *(a3 + 16) = v41;
  *(a3 + 144) = v52 * v12;
  *(a3 + 152) = v13 * v51;
  v42 = v63;
  *(a3 + 160) = v62;
  *(a3 + 176) = v42;
  v43 = v53[0];
  v44 = v53[1];
  *(a3 + 192) = v64;
  *(a3 + 208) = v43;
  result = v53[2];
  *(a3 + 224) = v44;
  *(a3 + 240) = result;
  return result;
}

uint64_t sub_24E6DFA9C@<X0>(uint64_t (**a1)@<X0>(uint64_t a1@<X8>)@<X8>)
{
  v29 = a1;
  v2 = sub_24F9289E8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214148);
  v27 = *(v6 - 8);
  v7 = *(v27 + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - v10;
  v28 = type metadata accessor for GSKVideoView.PreviewFrame(0);
  v12 = *(v28 + 20);
  v13 = sub_24F922348();
  (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  v14 = *MEMORY[0x277CEE240];
  v15 = v1 + v12;
  v16 = v2;
  (*(v3 + 16))(v5, v15, v2);
  sub_24E6009C8(v11, v9, &qword_27F214148);
  v17 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v18 = (v4 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = (*(v27 + 80) + v18 + 8) & ~*(v27 + 80);
  v20 = swift_allocObject();
  (*(v3 + 32))(v20 + v17, v5, v16);
  *(v20 + v18) = v14;
  sub_24E6009C8(v9, v20 + v19, &qword_27F214148);
  *(v20 + v19 + v7) = 1;
  v21 = *v26;
  LODWORD(v17) = v26[*(v28 + 24)];
  v22 = v14;
  result = 0;
  if (v17 == 1)
  {
    result = sub_24F927708();
  }

  v24 = 0.0;
  v25 = v29;
  *v29 = sub_24E623C20;
  v25[1] = v20;
  if (v21)
  {
    v24 = 1.0;
  }

  *(v25 + 2) = v24;
  v25[3] = result;
  *(v25 + 32) = v21;
  return result;
}

uint64_t sub_24E6DFD94@<X0>(uint64_t a1@<X8>)
{
  v11 = a1;
  v1 = sub_24F928AD8();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254FA0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2187A0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  v9 = sub_24F9232F8();
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  sub_24F928A98();
  v14 = sub_24F928B08();
  v15 = MEMORY[0x277D21CB8];
  __swift_allocate_boxed_opaque_existential_1(&KeyPath);

  sub_24F928AF8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2187A8);
  sub_24E6E1B54();
  sub_24F921788();
  KeyPath = swift_getKeyPath();
  v13 = 0;
  sub_24E602068(&qword_27F2187E8, &qword_27F2187A0);
  sub_24E6E1CCC();
  sub_24F926188();

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_24E6E0054@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_24F926DF8();
  v3 = sub_24F9258F8();
  *&v10 = v2;
  *(&v10 + 1) = swift_getKeyPath();
  *&v11 = v3;
  sub_24F925918();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F212AA0);
  sub_24E60156C();
  sub_24F9260C8();

  v4 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2187D0) + 36));
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22DF30) + 28);
  v6 = *MEMORY[0x277CE1058];
  v7 = sub_24F926E78();
  (*(*(v7 - 8) + 104))(v4 + v5, v6, v7);
  *v4 = swift_getKeyPath();
  sub_24F927618();
  sub_24F9238C8();
  v8 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2187C0) + 36));
  *v8 = v10;
  v8[1] = v11;
  v8[2] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2187A8);
  return sub_24F927458();
}

uint64_t sub_24E6E0230@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v56 = a3;
  v55 = a2;
  v6 = sub_24F928AD8();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254FA0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v50 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2187F8);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v50 - v12;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218800);
  v58 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v15 = &v50 - v14;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218808);
  MEMORY[0x28223BE20](v57);
  v17 = &v50 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218810);
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  if (a1)
  {
    v51 = &v50 - v24;
    v52 = v23;
    v53 = v22;
    v54 = a4;
    v25 = sub_24F9232F8();
    (*(*(v25 - 8) + 56))(v9, 1, 1, v25);
    sub_24F928A98();
    *(&v61 + 1) = sub_24F928B08();
    *&v62 = MEMORY[0x277D21CB8];
    __swift_allocate_boxed_opaque_existential_1(&v60);

    sub_24F928AF8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218818);
    sub_24E6E1D30();
    sub_24F921788();
    *&v60 = swift_getKeyPath();
    BYTE8(v60) = 0;
    sub_24E602068(&qword_27F218848, &qword_27F2187F8);
    sub_24E6E1CCC();
    sub_24F926188();

    (*(v11 + 8))(v13, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217E08);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24F93A400;
    v27 = sub_24F925858();
    *(inited + 32) = v27;
    v28 = sub_24F925818();
    *(inited + 33) = v28;
    v29 = sub_24F925848();
    sub_24F925848();
    if (sub_24F925848() != v27)
    {
      v29 = sub_24F925848();
    }

    sub_24F925848();
    v30 = sub_24F925848();
    v31 = v54;
    if (v30 != v28)
    {
      v29 = sub_24F925848();
    }

    sub_24F923318();
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v39 = v38;
    (*(v58 + 32))(v17, v15, v59);
    v40 = &v17[*(v57 + 36)];
    *v40 = v29;
    *(v40 + 1) = v33;
    *(v40 + 2) = v35;
    *(v40 + 3) = v37;
    *(v40 + 4) = v39;
    v40[40] = 0;
    sub_24F9275B8();
    sub_24F9242E8();
    sub_24E6009C8(v17, v21, &qword_27F218808);
    v41 = v53;
    v42 = &v21[*(v53 + 36)];
    v43 = v65;
    *(v42 + 4) = v64;
    *(v42 + 5) = v43;
    *(v42 + 6) = v66;
    v44 = v61;
    *v42 = v60;
    *(v42 + 1) = v44;
    v45 = v63;
    *(v42 + 2) = v62;
    *(v42 + 3) = v45;
    v46 = v21;
    v47 = v51;
    sub_24E6009C8(v46, v51, &qword_27F218810);
    sub_24E6009C8(v47, v31, &qword_27F218810);
    return (*(v52 + 56))(v31, 0, 1, v41);
  }

  else
  {
    v49 = *(v23 + 56);

    return v49(a4, 1, 1);
  }
}

uint64_t sub_24E6E092C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_24F926DF8();
  v3 = sub_24F925998();
  *&v10 = v2;
  *(&v10 + 1) = swift_getKeyPath();
  *&v11 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F212AA0);
  sub_24E60156C();
  sub_24F9268B8();

  v4 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218840) + 36));
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22DF30) + 28);
  v6 = *MEMORY[0x277CE1058];
  v7 = sub_24F926E78();
  (*(*(v7 - 8) + 104))(v4 + v5, v6, v7);
  *v4 = swift_getKeyPath();
  sub_24F927618();
  sub_24F9238C8();
  v8 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218830) + 36));
  *v8 = v10;
  v8[1] = v11;
  v8[2] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218818);
  return sub_24F927458();
}

uint64_t sub_24E6E0AFC(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 __swift_memcpy122_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 106) = *(a2 + 106);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_24E6E0B70(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 122))
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

uint64_t sub_24E6E0BB8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 122) = 1;
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

    *(result + 122) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24E6E0C2C()
{
  result = qword_27F218650;
  if (!qword_27F218650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F218650);
  }

  return result;
}

unint64_t sub_24E6E0C9C()
{
  result = qword_27F218670;
  if (!qword_27F218670)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F218678);
    sub_24E6E0D54();
    sub_24E602068(&qword_27F212A60, &qword_27F223340);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F218670);
  }

  return result;
}

unint64_t sub_24E6E0D54()
{
  result = qword_27F218680;
  if (!qword_27F218680)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F218688);
    sub_24E602068(&qword_27F218690, &qword_27F218698);
    sub_24E602068(&qword_27F2186A0, &qword_27F2186A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F218680);
  }

  return result;
}

unint64_t sub_24E6E0E38()
{
  result = qword_27F2186C0;
  if (!qword_27F2186C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2186C0);
  }

  return result;
}

uint64_t sub_24E6E0E8C()
{

  return swift_deallocObject();
}

__n128 __swift_memcpy34_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_24E6E0EEC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 34))
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

uint64_t sub_24E6E0F34(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 34) = 1;
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

    *(result + 34) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24E6E0F88()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F218660);
  sub_24E6E22F4(&qword_27F218668, &qword_27F218660, &unk_24F949168, sub_24E6E0C9C);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24E6E1070@<X0>(uint64_t a1@<X8>)
{
  sub_24F925398();
  v2 = sub_24F925198();
  *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218898) + 36)) = v2;
  v3 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2188A0) + 36);
  sub_24F927438();
  v4 = sub_24F925808();
  *(v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217870) + 36)) = v4;
  *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2188A8) + 36)) = 256;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2188B0);
  *(a1 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_24E6E1150(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GSKVideoView.PreviewFrame(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24E6E11B4()
{
  result = qword_27F218710;
  if (!qword_27F218710)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F218700);
    sub_24E6E0AFC(&qword_27F218718, type metadata accessor for GSKVideoView.PreviewFrame);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F218710);
  }

  return result;
}

uint64_t sub_24E6E1270(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_24E6E1280(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_24E6E129C()
{
  result = qword_27F218738;
  if (!qword_27F218738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F218738);
  }

  return result;
}

double sub_24E6E12F0(uint64_t a1)
{
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 128) = 255;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0;
  return result;
}

uint64_t objectdestroy_18Tm()
{

  return swift_deallocObject();
}

unint64_t sub_24E6E1390()
{
  result = qword_27F218748;
  if (!qword_27F218748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F218748);
  }

  return result;
}

unint64_t sub_24E6E13E4()
{
  result = qword_27F218750;
  if (!qword_27F218750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F218740);
    sub_24E6E1470();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F218750);
  }

  return result;
}

unint64_t sub_24E6E1470()
{
  result = qword_27F218758;
  if (!qword_27F218758)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F218760);
    sub_24E6E14FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F218758);
  }

  return result;
}

unint64_t sub_24E6E14FC()
{
  result = qword_27F218768;
  if (!qword_27F218768)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F218770);
    sub_24E6E1588();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F218768);
  }

  return result;
}

unint64_t sub_24E6E1588()
{
  result = qword_27F218778;
  if (!qword_27F218778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F218778);
  }

  return result;
}

uint64_t sub_24E6E15E4(uint64_t a1, int a2)
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

uint64_t sub_24E6E162C(uint64_t result, int a2, int a3)
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

uint64_t sub_24E6E167C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_24E6E16C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24E6E1724(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_24F9289E8();
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 20)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_24E6E17E4(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = sub_24F9289E8();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24E6E1884()
{
  result = sub_24F9289E8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24E6E1998()
{
  v1 = sub_24F9289E8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214148) - 8);
  v6 = (v4 + *(v5 + 80) + 8) & ~*(v5 + 80);
  (*(v2 + 8))(v0 + v3, v1);

  v7 = sub_24F922348();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v6, 1, v7))
  {
    (*(v8 + 8))(v0 + v6, v7);
  }

  return swift_deallocObject();
}

unint64_t sub_24E6E1B54()
{
  result = qword_27F2187B0;
  if (!qword_27F2187B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2187A8);
    sub_24E6E1C0C();
    sub_24E602068(&qword_27F2187D8, &qword_27F2187E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2187B0);
  }

  return result;
}

unint64_t sub_24E6E1C0C()
{
  result = qword_27F2187B8;
  if (!qword_27F2187B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2187C0);
    sub_24E6E1EA0(&qword_27F2187C8, &qword_27F2187D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2187B8);
  }

  return result;
}

unint64_t sub_24E6E1CCC()
{
  result = qword_27F2187F0;
  if (!qword_27F2187F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2187F0);
  }

  return result;
}

unint64_t sub_24E6E1D30()
{
  result = qword_27F218820;
  if (!qword_27F218820)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F218818);
    sub_24E6E1DE8();
    sub_24E602068(&qword_27F2187D8, &qword_27F2187E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F218820);
  }

  return result;
}

unint64_t sub_24E6E1DE8()
{
  result = qword_27F218828;
  if (!qword_27F218828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F218830);
    sub_24E6E1EA0(&qword_27F218838, &qword_27F218840);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F218828);
  }

  return result;
}

uint64_t sub_24E6E1EA0(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F212AA0);
    sub_24E60156C();
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F22DF40, &unk_27F22DF30);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ChartOrCategoryBrickSafeArea.Location.Distance(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
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

uint64_t storeEnumTagSinglePayload for ChartOrCategoryBrickSafeArea.Location.Distance(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

unint64_t sub_24E6E2024()
{
  result = qword_27F218850;
  if (!qword_27F218850)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F218858);
    sub_24E6E20DC();
    sub_24E602068(&qword_27F218870, &unk_27F2364C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F218850);
  }

  return result;
}

unint64_t sub_24E6E20DC()
{
  result = qword_27F218860;
  if (!qword_27F218860)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F218868);
    sub_24E602068(&qword_27F2141B8, &qword_27F2141C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F218860);
  }

  return result;
}

uint64_t sub_24E6E2194()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2187A0);
  sub_24E602068(&qword_27F2187E8, &qword_27F2187A0);
  sub_24E6E1CCC();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_24E6E2244()
{
  result = qword_27F218878;
  if (!qword_27F218878)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F218880);
    sub_24E6E22F4(&qword_27F218888, &qword_27F218810, &unk_24F949520, sub_24E6E2378);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F218878);
  }

  return result;
}

uint64_t sub_24E6E22F4(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

unint64_t sub_24E6E2378()
{
  result = qword_27F218890;
  if (!qword_27F218890)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F218808);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2187F8);
    sub_24E602068(&qword_27F218848, &qword_27F2187F8);
    sub_24E6E1CCC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F218890);
  }

  return result;
}

unint64_t sub_24E6E24A8()
{
  result = qword_27F2188B8;
  if (!qword_27F2188B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2188B0);
    sub_24E6E2560();
    sub_24E602068(&qword_27F2188F8, &qword_27F218900);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2188B8);
  }

  return result;
}

unint64_t sub_24E6E2560()
{
  result = qword_27F2188C0;
  if (!qword_27F2188C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2188A8);
    sub_24E6E2618();
    sub_24E602068(&qword_27F2188E8, &qword_27F2188F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2188C0);
  }

  return result;
}

unint64_t sub_24E6E2618()
{
  result = qword_27F2188C8;
  if (!qword_27F2188C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2188A0);
    sub_24E6E26D0();
    sub_24E602068(&qword_27F2188E0, &qword_27F217870);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2188C8);
  }

  return result;
}

unint64_t sub_24E6E26D0()
{
  result = qword_27F2188D0;
  if (!qword_27F2188D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F218898);
    sub_24E6E0AFC(&qword_27F2188D8, MEMORY[0x277CDE278]);
    sub_24E602068(&qword_27F217388, &qword_27F217390);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2188D0);
  }

  return result;
}

GameStoreKit::Margins_optional __swiftcall Margins.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t Margins.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6974616D6F747561;
  v3 = 0xD000000000000019;
  if (v1 != 5)
  {
    v3 = 0x79616C7265766FLL;
  }

  v4 = 0x656C626164616572;
  if (v1 != 3)
  {
    v4 = 0xD000000000000012;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 1701736302;
  if (v1 != 1)
  {
    v5 = 0x647261646E617473;
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

unint64_t sub_24E6E290C()
{
  result = qword_27F218908;
  if (!qword_27F218908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F218908);
  }

  return result;
}

uint64_t sub_24E6E296C()
{
  sub_24F92B218();
}

void sub_24E6E2A98(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000063;
  v4 = 0x6974616D6F747561;
  v5 = 0x800000024FA43830;
  v6 = 0xD000000000000019;
  if (v2 != 5)
  {
    v6 = 0x79616C7265766FLL;
    v5 = 0xE700000000000000;
  }

  v7 = 0xE800000000000000;
  v8 = 0x656C626164616572;
  if (v2 != 3)
  {
    v8 = 0xD000000000000012;
    v7 = 0x800000024FA43810;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE400000000000000;
  v10 = 1701736302;
  if (v2 != 1)
  {
    v10 = 0x647261646E617473;
    v9 = 0xE800000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t getEnumTagSinglePayload for ProductRatingsAndReviewsComponentType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ProductRatingsAndReviewsComponentType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24E6E2D80()
{
  result = qword_27F218910;
  if (!qword_27F218910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F218910);
  }

  return result;
}

uint64_t RecordingAssociation.achievement.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for RecordingAssociation() + 20);

  return sub_24E6E2E98(v3, a1);
}

uint64_t type metadata accessor for RecordingAssociation()
{
  result = qword_27F218970;
  if (!qword_27F218970)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24E6E2E98(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218918);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t RecordingAssociation.init(photosAsset:achievement:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_24E6E2F58(a1, a3);
  v5 = a3 + *(type metadata accessor for RecordingAssociation() + 20);

  return sub_24E6E2FBC(a2, v5);
}

uint64_t sub_24E6E2F58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotosAsset();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E6E2FBC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218918);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t RecordingAssociation.jsRepresentation(in:)@<X0>(void *a1@<X8>)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A400;
  *(inited + 32) = 0x7341736F746F6870;
  *(inited + 40) = 0xEB00000000746573;
  *(inited + 72) = type metadata accessor for PhotosAsset();
  *(inited + 80) = sub_24E6E3C3C(&qword_27F218920, type metadata accessor for PhotosAsset);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
  sub_24E6E3C84(v2, boxed_opaque_existential_1, type metadata accessor for PhotosAsset);
  *(inited + 88) = 0x6D65766569686361;
  *(inited + 96) = 0xEB00000000746E65;
  v6 = *(type metadata accessor for RecordingAssociation() + 20);
  *(inited + 128) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218918);
  *(inited + 136) = sub_24E6E31F8();
  v7 = __swift_allocate_boxed_opaque_existential_1((inited + 104));
  sub_24E6E2E98(v2 + v6, v7);
  v8 = sub_24E607D0C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F18);
  swift_arrayDestroy();
  v9 = sub_24E80FFAC(v8);

  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v9;
  return result;
}

unint64_t sub_24E6E31F8()
{
  result = qword_27F218928;
  if (!qword_27F218928)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F218918);
    sub_24E6E3C3C(&qword_27F218930, type metadata accessor for Achievement);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F218928);
  }

  return result;
}

uint64_t sub_24E6E32AC()
{
  if (*v0)
  {
    return 0x6D65766569686361;
  }

  else
  {
    return 0x7341736F746F6870;
  }
}

uint64_t sub_24E6E32F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7341736F746F6870 && a2 == 0xEB00000000746573;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6D65766569686361 && a2 == 0xEB00000000746E65)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24F92CE08();

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

uint64_t sub_24E6E33D0(uint64_t a1)
{
  v2 = sub_24E6E3BE8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E6E340C(uint64_t a1)
{
  v2 = sub_24E6E3BE8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RecordingAssociation.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218938);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E6E3BE8();
  sub_24F92D128();
  v8[15] = 0;
  type metadata accessor for PhotosAsset();
  sub_24E6E3C3C(&qword_27F218948, type metadata accessor for PhotosAsset);
  sub_24F92CD48();
  if (!v1)
  {
    type metadata accessor for RecordingAssociation();
    v8[14] = 1;
    type metadata accessor for Achievement(0);
    sub_24E6E3C3C(&qword_27F218950, type metadata accessor for Achievement);
    sub_24F92CCF8();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t RecordingAssociation.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218918);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v18 - v5;
  v20 = type metadata accessor for PhotosAsset();
  MEMORY[0x28223BE20](v20);
  v21 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218958);
  v22 = *(v8 - 8);
  v23 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v18 - v9;
  v11 = type metadata accessor for RecordingAssociation();
  MEMORY[0x28223BE20](v11);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E6E3BE8();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v18 = a1;
  v14 = v13;
  v25 = 0;
  sub_24E6E3C3C(&qword_27F218960, type metadata accessor for PhotosAsset);
  v15 = v21;
  v16 = v23;
  sub_24F92CC68();
  sub_24E6E2F58(v15, v14);
  type metadata accessor for Achievement(0);
  v24 = 1;
  sub_24E6E3C3C(&qword_27F218968, type metadata accessor for Achievement);
  sub_24F92CC18();
  (*(v22 + 8))(v10, v16);
  sub_24E6E2FBC(v6, v14 + *(v11 + 20));
  sub_24E6E3C84(v14, v19, type metadata accessor for RecordingAssociation);
  __swift_destroy_boxed_opaque_existential_1(v18);
  return sub_24E6E3CEC(v14, type metadata accessor for RecordingAssociation);
}

unint64_t sub_24E6E3A18@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v4 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A400;
  *(inited + 32) = 0x7341736F746F6870;
  *(inited + 40) = 0xEB00000000746573;
  *(inited + 72) = type metadata accessor for PhotosAsset();
  *(inited + 80) = sub_24E6E3C3C(&qword_27F218920, type metadata accessor for PhotosAsset);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
  sub_24E6E3C84(v4, boxed_opaque_existential_1, type metadata accessor for PhotosAsset);
  *(inited + 88) = 0x6D65766569686361;
  *(inited + 96) = 0xEB00000000746E65;
  v8 = *(a1 + 20);
  *(inited + 128) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218918);
  *(inited + 136) = sub_24E6E31F8();
  v9 = __swift_allocate_boxed_opaque_existential_1((inited + 104));
  sub_24E6E2E98(v4 + v8, v9);
  v10 = sub_24E607D0C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F18);
  swift_arrayDestroy();
  v11 = sub_24E80FFAC(v10);

  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  a2[4] = result;
  *a2 = v11;
  return result;
}

unint64_t sub_24E6E3BE8()
{
  result = qword_27F218940;
  if (!qword_27F218940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F218940);
  }

  return result;
}

uint64_t sub_24E6E3C3C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24E6E3C84(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E6E3CEC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24E6E3D60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PhotosAsset();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218918);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_24E6E3E70(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for PhotosAsset();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218918);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_24E6E3F78()
{
  type metadata accessor for PhotosAsset();
  if (v0 <= 0x3F)
  {
    sub_24E6E3FFC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24E6E3FFC()
{
  if (!qword_27F218980)
  {
    type metadata accessor for Achievement(255);
    v0 = sub_24F92C4A8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F218980);
    }
  }
}

unint64_t sub_24E6E4068()
{
  result = qword_27F218988;
  if (!qword_27F218988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F218988);
  }

  return result;
}

unint64_t sub_24E6E40C0()
{
  result = qword_27F218990;
  if (!qword_27F218990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F218990);
  }

  return result;
}

unint64_t sub_24E6E4118()
{
  result = qword_27F218998;
  if (!qword_27F218998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F218998);
  }

  return result;
}

uint64_t FlowPreviewEnvironment.State.hashValue.getter()
{
  v1 = *v0;
  sub_24F92D068();
  MEMORY[0x253052A00](v1);
  return sub_24F92D0B8();
}

uint64_t FlowPreviewEnvironment.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  sub_24F91FDB8();
  return v0;
}

uint64_t FlowPreviewEnvironment.init()()
{
  *(v0 + 16) = 0;
  sub_24F91FDB8();
  return v0;
}

uint64_t sub_24E6E4268(unsigned __int8 *a1)
{
  v2 = *a1;
  result = swift_beginAccess();
  if (*(v1 + 16) != v2)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24E6E4D9C(&qword_27F2189A8);
    sub_24F91FD78();
  }

  return result;
}

uint64_t sub_24E6E4370@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24E6E4D9C(&qword_27F2189A8);
  sub_24F91FD88();

  result = swift_beginAccess();
  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_24E6E448C@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_24E6E4D9C(&qword_27F2189A8);
  sub_24F91FD88();

  result = swift_beginAccess();
  *a1 = *(v1 + 16);
  return result;
}

uint64_t type metadata accessor for FlowPreviewEnvironment()
{
  result = qword_27F2189C0;
  if (!qword_27F2189C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void (*sub_24E6E4580(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC12GameStoreKit22FlowPreviewEnvironment___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_24E6E4D9C(&qword_27F2189A8);
  sub_24F91FD88();

  *v4 = v1;
  swift_getKeyPath();
  sub_24F91FDA8();

  v4[7] = sub_24E632DD8();
  return sub_24E6E46A4;
}

void sub_24E6E46A4(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  sub_24F91FD98();

  free(v1);
}

uint64_t FlowPreviewEnvironment.deinit()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit22FlowPreviewEnvironment___observationRegistrar;
  v2 = sub_24F91FDC8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t FlowPreviewEnvironment.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit22FlowPreviewEnvironment___observationRegistrar;
  v2 = sub_24F91FDC8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_24E6E4844@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for FlowPreviewEnvironment();
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  result = sub_24F91FDB8();
  *a1 = v2;
  return result;
}

uint64_t sub_24E6E4894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_24E6E4D9C(&qword_27F2189D0);

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t EnvironmentValues.flowPreview.getter()
{
  sub_24E6E4B8C();
  sub_24F924868();
  return v1;
}

uint64_t (*EnvironmentValues.flowPreview.modify(uint64_t a1))(void *a1, char a2)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = sub_24E6E4B8C();
  sub_24F924868();
  return sub_24E6E49EC;
}

uint64_t sub_24E6E49EC(void *a1, char a2)
{
  a1[1] = *a1;
  if ((a2 & 1) == 0)
  {
    return sub_24F924878();
  }

  sub_24F924878();
}

BOOL _s12GameStoreKit22FlowPreviewEnvironmentC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_24E6E4D9C(&qword_27F2189A8);
  sub_24F91FD88();

  swift_beginAccess();
  v4 = *(a1 + 16);
  swift_getKeyPath();
  sub_24F91FD88();

  swift_beginAccess();
  return v4 == *(a2 + 16);
}

unint64_t sub_24E6E4B8C()
{
  result = qword_27F2189B0;
  if (!qword_27F2189B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2189B0);
  }

  return result;
}

unint64_t sub_24E6E4BE4()
{
  result = qword_27F2189B8;
  if (!qword_27F2189B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2189B8);
  }

  return result;
}

uint64_t sub_24E6E4C48()
{
  result = sub_24F91FDC8();
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

uint64_t sub_24E6E4D9C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FlowPreviewEnvironment();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24E6E4E04(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[9];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[10];

  return v15(v16, a2, v14);
}

uint64_t sub_24E6E4FA8(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[9];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[10];

  return v15(v16, a2, a2, v14);
}

void sub_24E6E5158()
{
  sub_24E61C7D0();
  if (v0 <= 0x3F)
  {
    sub_24E6E5388(319, &qword_27F213FD0, MEMORY[0x277D21C48], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_24E6E5388(319, &qword_27F214D28, type metadata accessor for PlayerAvatar, MEMORY[0x277D83940]);
      if (v2 <= 0x3F)
      {
        sub_24E65B038(319, &qword_27F213EA0, &qword_27F213EA8);
        if (v3 <= 0x3F)
        {
          sub_24E65B038(319, &qword_27F215458, &qword_27F215460);
          if (v4 <= 0x3F)
          {
            sub_24E6E5388(319, &qword_27F213EB0, MEMORY[0x277D21F70], MEMORY[0x277D83D88]);
            if (v5 <= 0x3F)
            {
              sub_24E6E8928(319, &qword_27F2189E8, &type metadata for ThreeDimensionalMediaArtworkContent, MEMORY[0x277D83D88]);
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

uint64_t sub_24E6E5340(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_24E6E5388(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_24E6E53EC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218A28);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E6E8420();
  sub_24F92D128();
  LOBYTE(v18) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18);
  sub_24E602068(&qword_27F214040, &qword_27F213F18);
  sub_24F92CD48();
  if (!v2)
  {
    v9 = type metadata accessor for GameHero(0);
    LOBYTE(v18) = 1;
    sub_24F9289E8();
    sub_24E6E5340(&qword_27F214060, MEMORY[0x277D21C48]);
    sub_24F92CCF8();
    v18 = *(v3 + *(v9 + 24));
    v24 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218590);
    sub_24E6E8524(&qword_27F218A30, &qword_27F218A38);
    sub_24F92CD48();
    LOBYTE(v18) = 3;
    sub_24F92CD28();
    LOBYTE(v18) = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90);
    sub_24E620EE4(&qword_27F214048, &qword_27F214050);
    sub_24F92CD48();
    LOBYTE(v18) = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
    sub_24E65CD0C();
    sub_24F92CD48();
    LOBYTE(v18) = 6;
    sub_24F929608();
    sub_24E6E5340(&qword_27F214058, MEMORY[0x277D21F70]);
    sub_24F92CCF8();
    v10 = (v3 + *(v9 + 44));
    v11 = v10[1];
    v12 = v10[2];
    v13 = v10[3];
    v14 = v10[4];
    v15 = v10[5];
    v18 = *v10;
    v19 = v11;
    v20 = v12;
    v21 = v13;
    v22 = v14;
    v23 = v15;
    v24 = 7;
    sub_24E6E85C0(v18, v11, v12, v13);
    sub_24E6E8610();
    sub_24F92CCF8();
    sub_24E6E8664(v18, v19, v20, v21);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_24E6E586C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v3 - 8);
  v42 = &v40 - v4;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  MEMORY[0x28223BE20](v43);
  v44 = &v40 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v40 - v7;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218A10);
  v45 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v10 = &v40 - v9;
  v11 = type metadata accessor for GameHero(0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v12 + 20);
  v16 = sub_24F9289E8();
  v17 = *(*(v16 - 8) + 56);
  v50 = v15;
  v17(&v14[v15], 1, 1, v16);
  v18 = &v14[v11[8]];
  *&v56 = 0;
  v54 = 0u;
  v55 = 0u;
  *v18 = 0u;
  *(v18 + 16) = 0u;
  *(v18 + 32) = 0;
  v53 = v18;
  sub_24E61DA68(&v54, v18, qword_27F21B590);
  v19 = v11[9];
  v20 = sub_24F92A6D8();
  v21 = *(*(v20 - 8) + 56);
  v51 = v19;
  v21(&v14[v19], 1, 1, v20);
  v22 = v11[10];
  v23 = sub_24F929608();
  v24 = *(*(v23 - 8) + 56);
  v49 = v22;
  v24(&v14[v22], 1, 1, v23);
  v25 = a1[3];
  v52 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v25);
  sub_24E6E8420();
  v46 = v10;
  v26 = v48;
  sub_24F92D108();
  if (v26)
  {
    v28 = v49;
    v27 = v50;
    __swift_destroy_boxed_opaque_existential_1(v52);
    sub_24E601704(&v14[v27], &qword_27F213FB0);
    v29 = v51;
    sub_24E601704(v53, qword_27F24EC90);
    sub_24E601704(&v14[v29], &qword_27F215440);
    return sub_24E601704(&v14[v28], &qword_27F213E68);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18);
    v57 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18);
    sub_24F92CC68();
    v30 = v55;
    *v14 = v54;
    *(v14 + 1) = v30;
    *(v14 + 4) = v56;
    LOBYTE(v54) = 1;
    sub_24E6E5340(&qword_27F214018, MEMORY[0x277D21C48]);
    v31 = v8;
    sub_24F92CC18();
    v32 = v49;
    sub_24E61DA68(v31, &v14[v50], &qword_27F213FB0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218590);
    v57 = 2;
    sub_24E6E8524(&qword_27F218598, &qword_27F2185A0);
    sub_24F92CC68();
    v33 = v51;
    *&v14[v11[6]] = v54;
    LOBYTE(v54) = 3;
    sub_24F92CC48();
    *&v14[v11[7]] = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90);
    v57 = 4;
    sub_24E620EE4(&qword_27F213F38, &qword_27F213F40);
    sub_24F92CC68();
    sub_24E61DA68(&v54, v53, qword_27F24EC90);
    LOBYTE(v54) = 5;
    sub_24E65CAA0();
    v35 = v44;
    sub_24F92CC68();
    sub_24E61DA68(v35, &v14[v33], &qword_27F215440);
    LOBYTE(v54) = 6;
    sub_24E6E5340(&qword_27F213F48, MEMORY[0x277D21F70]);
    v36 = v42;
    sub_24F92CC18();
    sub_24E61DA68(v36, &v14[v32], &qword_27F213E68);
    v57 = 7;
    sub_24E6E8474();
    sub_24F92CC18();
    (*(v45 + 8))(v46, v47);
    v37 = &v14[v11[11]];
    v38 = v55;
    *v37 = v54;
    *(v37 + 1) = v38;
    *(v37 + 2) = v56;
    sub_24E6E8D84(v14, v41, type metadata accessor for GameHero);
    __swift_destroy_boxed_opaque_existential_1(v52);
    return sub_24E6E84C8(v14);
  }
}

unint64_t sub_24E6E6100()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0xD000000000000023;
  if (v1 == 6)
  {
    v3 = 0xD000000000000011;
  }

  v4 = 0x6575676573;
  if (v1 != 4)
  {
    v4 = 0x4D747865746E6F63;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000018;
  if (v1 == 2)
  {
    v5 = 0x7641726579616C70;
  }

  if (*v0)
  {
    v2 = 1852793705;
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

uint64_t sub_24E6E61FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24E6E8AE8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24E6E6224(uint64_t a1)
{
  v2 = sub_24E6E8420();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E6E6260(uint64_t a1)
{
  v2 = sub_24E6E8420();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_24E6E629C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_24E60169C(v2 + *(a1 + 32), v6, qword_27F24EC90);
  result = *v6;
  v5 = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = v5;
  *(a2 + 32) = v7;
  return result;
}

uint64_t sub_24E6E62F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v9 - v6;
  sub_24E60169C(v2 + *(a1 + 36), &v9 - v6, &qword_27F215440);
  return sub_24E6009C8(v7, a2, &qword_27F215460);
}

uint64_t sub_24E6E63E8@<X0>(void *a1@<X8>)
{
  *a1 = 1;
  v2 = *MEMORY[0x277D7EB30];
  v3 = sub_24F9218F8();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

unint64_t sub_24E6E64E8()
{
  result = qword_27F2189F0;
  if (!qword_27F2189F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2189F0);
  }

  return result;
}

uint64_t sub_24E6E653C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = type metadata accessor for GameHeroView(0);
  sub_24E6E8D84(a1, a2 + *(v6 + 20), type metadata accessor for GameHero);
  *a2 = swift_getKeyPath();
  *(a2 + 8) = 0;
  *(a2 + *(v6 + 24)) = v5;
}

uint64_t sub_24E6E65CC()
{
  sub_24E6E64E8();

  return sub_24F9218E8();
}

unint64_t sub_24E6E6678()
{
  result = qword_27F218A00;
  if (!qword_27F218A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F218A00);
  }

  return result;
}

uint64_t sub_24E6E6798@<X0>(uint64_t a1@<X8>)
{
  v176 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215280);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v151 = &v148 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v150 = &v148 - v5;
  v6 = type metadata accessor for GameHeroView(0);
  v7 = v6 - 8;
  v153 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v154 = v8;
  v155 = &v148 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214A50);
  MEMORY[0x28223BE20](v9);
  v169 = (&v148 - v10);
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218A78);
  v11 = MEMORY[0x28223BE20](v175);
  v149 = &v148 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v152 = &v148 - v13;
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218A80);
  MEMORY[0x28223BE20](v173);
  v174 = &v148 - v14;
  v165 = sub_24F9297D8();
  v163 = *(v165 - 8);
  MEMORY[0x28223BE20](v165);
  v161 = &v148 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v166 = sub_24F929888();
  v164 = *(v166 - 8);
  MEMORY[0x28223BE20](v166);
  v162 = &v148 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v167 = &v148 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v148 - v21;
  MEMORY[0x28223BE20](v20);
  v177 = (&v148 - v23);
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218A88);
  MEMORY[0x28223BE20](v170);
  v179 = &v148 - v24;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218A90);
  v158 = *(v171 - 8);
  MEMORY[0x28223BE20](v171);
  v157 = &v148 - v25;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218A98);
  v160 = *(v172 - 8);
  MEMORY[0x28223BE20](v172);
  v159 = &v148 - v26;
  v181 = sub_24F9289E8();
  v27 = *(v181 - 8);
  v28 = *(v27 + 64);
  v29 = MEMORY[0x28223BE20](v181);
  v30 = &v148 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v180 = &v148 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v35 = &v148 - v34;
  MEMORY[0x28223BE20](v33);
  v178 = &v148 - v36;
  v37 = *(v7 + 28);
  v168 = v1;
  v38 = v1 + v37;
  v39 = type metadata accessor for GameHero(0);
  v40 = v39;
  v41 = (v38 + *(v39 + 44));
  if (!v41[3] || (v42 = v41[5]) == 0)
  {
    sub_24E60169C(v38 + *(v39 + 20), v22, &qword_27F213FB0);
    v63 = v27;
    v64 = v181;
    if ((*(v27 + 48))(v22, 1, v181) == 1)
    {
      sub_24E601704(v22, &qword_27F213FB0);
      v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218AA0);
      return (*(*(v65 - 8) + 56))(v176, 1, 1, v65);
    }

    v166 = v9;
    v67 = *(v27 + 32);
    v68 = v180;
    v178 = (v27 + 32);
    v177 = v67;
    v67(v180, v22, v64);
    v69 = *(v38 + *(v40 + 24));
    v70 = v27 + 16;
    v71 = v167;
    v72 = v68;
    v73 = *(v63 + 16);
    v73(v167, v72, v64);
    (*(v63 + 56))(v71, 0, 1, v64);
    v74 = qword_27F2118D8;
    v179 = v69;

    if (v74 != -1)
    {
      swift_once();
    }

    v186 = xmmword_27F252190;
    v187 = *&byte_27F2521A0;
    v184 = xmmword_27F252170;
    v185 = unk_27F252180;
    v75 = *(v38 + *(v40 + 28));
    v165 = v70;
    v73(v30, v180, v64);
    v76 = v155;
    sub_24E6E8D84(v168, v155, type metadata accessor for GameHeroView);
    v156 = v63;
    v77 = (*(v63 + 80) + 16) & ~*(v63 + 80);
    v78 = (v28 + *(v153 + 80) + v77) & ~*(v153 + 80);
    v79 = swift_allocObject();
    v177(v79 + v77, v30, v64);
    sub_24E6E9114(v76, v79 + v78);
    KeyPath = swift_getKeyPath();
    v81 = v169;
    *v169 = KeyPath;
    *(v81 + 8) = 0;
    LOBYTE(v182[0]) = 0;
    sub_24E63D388(&v184, v183);
    sub_24F926F28();
    v82 = *(&v183[0] + 1);
    *(v81 + 16) = v183[0];
    v81[3] = v82;
    v86 = sub_24E6B7C48(*(&v187 + 1), v179);
    v87 = v64;
    if (v85)
    {
      v119 = v85;
      v120 = v84;
      v121 = v83;
      sub_24F92CEF8();
      swift_unknownObjectRetain_n();
      v122 = swift_dynamicCastClass();
      if (!v122)
      {
        swift_unknownObjectRelease();
        v122 = MEMORY[0x277D84F90];
      }

      v123 = *(v122 + 16);

      if (__OFSUB__(v119 >> 1, v120))
      {
        __break(1u);
      }

      else if (v123 == (v119 >> 1) - v120)
      {
        v88 = v73;
        v90 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        v91 = v180;
        v92 = v166;
        if (v90)
        {
LABEL_28:
          v124 = v169;
          v169[4] = v90;
          sub_24E6009C8(v167, v124 + v92[11], &qword_27F213FB0);
          v125 = (v124 + v92[13]);
          v126 = v185;
          *v125 = v184;
          v125[1] = v126;
          v127 = v187;
          v125[2] = v186;
          v125[3] = v127;
          *(v124 + v92[12]) = v75 * 0.0174532925;
          *(v124 + v92[14]) = 0x3FF0000000000000;
          v128 = (v124 + v92[15]);
          *v128 = sub_24E6E9178;
          v128[1] = v79;
          v129 = type metadata accessor for TransientToolbarConfiguration.ToolbarItem(0);
          v130 = v129[5];
          v131 = type metadata accessor for TransientToolbarItem(0);
          v132 = v150;
          (*(*(v131 - 8) + 56))(&v150[v130], 1, 1, v131);
          v88(&v132[v129[6]], v91, v87);
          swift_storeEnumTagMultiPayload();
          v133 = sub_24F927618();
          *v132 = 1;
          v134 = &v132[v129[7]];
          *v134 = v133;
          v134[1] = v135;
          v136 = *(*(v129 - 1) + 56);
          v136(v132, 0, 1, v129);
          v137 = v151;
          v136(v151, 1, 1, v129);
          LODWORD(v179) = sub_24E6E7FE8();
          v138 = v149;
          v139 = &v149[*(v175 + 36)];
          v140 = type metadata accessor for ToolbarTransitionViewModifier();
          sub_24E60169C(v132, &v139[v140[8]], &qword_27F215280);
          sub_24E60169C(v137, &v139[v140[9]], &qword_27F215280);
          *v139 = swift_getKeyPath();
          v139[8] = 0;
          LOBYTE(v182[0]) = 1;
          sub_24F926F28();
          v141 = *(&v183[0] + 1);
          v139[16] = v183[0];
          *(v139 + 3) = v141;
          LOBYTE(v182[0]) = 1;
          sub_24F926F28();
          sub_24E601704(v137, &qword_27F215280);
          sub_24E601704(v132, &qword_27F215280);
          v142 = *(&v183[0] + 1);
          v139[32] = v183[0];
          *(v139 + 5) = v142;
          *(v139 + 6) = 0x3F847AE147AE147BLL;
          v139[v140[10]] = v179 & 1;
          sub_24E6009C8(v124, v138, &qword_27F214A50);
          v143 = v138;
          v144 = v152;
          sub_24E6009C8(v143, v152, &qword_27F218A78);
          sub_24E60169C(v144, v174, &qword_27F218A78);
          swift_storeEnumTagMultiPayload();
          v145 = sub_24E602068(&qword_27F218AA8, &qword_27F218A88);
          *&v183[0] = v170;
          *(&v183[0] + 1) = v145;
          OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
          *&v183[0] = v171;
          *(&v183[0] + 1) = OpaqueTypeConformance2;
          swift_getOpaqueTypeConformance2();
          sub_24E6E925C();
          v147 = v176;
          sub_24F924E28();
          sub_24E601704(v144, &qword_27F218A78);
          (*(v156 + 8))(v180, v181);
          v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218AA0);
          v117 = *(*(v116 - 8) + 56);
          v118 = v147;
          return v117(v118, 0, 1, v116);
        }

        v90 = MEMORY[0x277D84F90];
LABEL_27:
        swift_unknownObjectRelease();
        goto LABEL_28;
      }

      swift_unknownObjectRelease();
      v85 = v119;
      v84 = v120;
      v83 = v121;
    }

    v88 = v73;
    sub_24E6B8064(v86, v83, v84, v85);
    v90 = v89;
    v91 = v180;
    v92 = v166;
    goto LABEL_27;
  }

  v43 = v41[4];

  sub_24F8188E0(v43, v42);

  sub_24F3E5448(MEMORY[0x277D84F90]);
  v44 = v178;
  sub_24F928948();
  v45 = *(v38 + *(v40 + 24));
  v46 = *(v27 + 56);
  v47 = v27;
  v48 = v181;
  v46(v177, 1, 1, v181);
  v49 = qword_27F2118D8;

  if (v49 != -1)
  {
    swift_once();
  }

  v186 = xmmword_27F252190;
  v187 = *&byte_27F2521A0;
  v184 = xmmword_27F252170;
  v185 = unk_27F252180;
  v50 = *(v38 + *(v40 + 28));
  (*(v47 + 16))(v35, v44, v48);
  v51 = (*(v47 + 80) + 16) & ~*(v47 + 80);
  v52 = swift_allocObject();
  v156 = v47;
  (*(v47 + 32))(v52 + v51, v35, v48);
  v53 = swift_getKeyPath();
  v54 = v179;
  *v179 = v53;
  *(v54 + 8) = 0;
  LOBYTE(v182[0]) = 0;
  sub_24E63D388(&v184, v183);
  sub_24F926F28();
  v55 = *(&v183[0] + 1);
  *(v54 + 16) = v183[0];
  *(v54 + 24) = v55;
  v59 = sub_24E6B7C48(*(&v187 + 1), v45);
  if ((v58 & 1) == 0)
  {
    goto LABEL_6;
  }

  v93 = v58;
  v94 = v57;
  v95 = v56;
  sub_24F92CEF8();
  swift_unknownObjectRetain_n();
  v96 = swift_dynamicCastClass();
  if (!v96)
  {
    swift_unknownObjectRelease();
    v96 = MEMORY[0x277D84F90];
  }

  v97 = *(v96 + 16);

  if (__OFSUB__(v93 >> 1, v94))
  {
    __break(1u);
    goto LABEL_31;
  }

  if (v97 != (v93 >> 1) - v94)
  {
LABEL_31:
    swift_unknownObjectRelease();
    v58 = v93;
    v57 = v94;
    v56 = v95;
    v48 = v181;
LABEL_6:
    sub_24E6B8064(v59, v56, v57, v58);
    v61 = v60;
    v62 = v174;
LABEL_19:
    swift_unknownObjectRelease();
    goto LABEL_20;
  }

  v61 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  v62 = v174;
  v48 = v181;
  if (!v61)
  {
    v61 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

LABEL_20:
  v98 = v179;
  *(v179 + 32) = v61;
  v99 = v170;
  sub_24E6009C8(v177, v98 + *(v170 + 44), &qword_27F213FB0);
  v100 = (v98 + v99[13]);
  v101 = v185;
  *v100 = v184;
  v100[1] = v101;
  v102 = v187;
  v100[2] = v186;
  v100[3] = v102;
  *(v98 + v99[12]) = v50 * 0.0174532925;
  *(v98 + v99[14]) = 0x3FF0000000000000;
  v103 = (v98 + v99[15]);
  *v103 = sub_24E6E93CC;
  v103[1] = v52;
  v104 = v163;
  v105 = v161;
  v106 = v165;
  (*(v163 + 104))(v161, *MEMORY[0x277D22040], v165);
  memset(v183, 0, sizeof(v183));
  memset(v182, 0, sizeof(v182));
  v107 = v162;
  sub_24F929818();
  sub_24E601704(v182, &qword_27F2129B0);
  sub_24E601704(v183, &qword_27F2129B0);
  (*(v104 + 8))(v105, v106);
  v108 = sub_24E602068(&qword_27F218AA8, &qword_27F218A88);
  v109 = v157;
  sub_24F925EE8();
  (*(v164 + 8))(v107, v166);
  sub_24E6E943C(v98);
  *&v183[0] = v99;
  *(&v183[0] + 1) = v108;
  v110 = swift_getOpaqueTypeConformance2();
  v111 = v159;
  v112 = v171;
  sub_24F926B78();
  (*(v158 + 8))(v109, v112);
  v113 = v160;
  v114 = v172;
  (*(v160 + 16))(v62, v111, v172);
  swift_storeEnumTagMultiPayload();
  *&v183[0] = v112;
  *(&v183[0] + 1) = v110;
  swift_getOpaqueTypeConformance2();
  sub_24E6E925C();
  v115 = v176;
  sub_24F924E28();
  (*(v113 + 8))(v111, v114);
  (*(v156 + 8))(v178, v48);
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218AA0);
  v117 = *(*(v116 - 8) + 56);
  v118 = v115;
  return v117(v118, 0, 1, v116);
}

uint64_t sub_24E6E7CA8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218AC0);
  MEMORY[0x28223BE20](v2);
  v4 = v14 - v3;
  sub_24F927618();
  sub_24F9238C8();
  v5 = sub_24F9289E8();
  (*(*(v5 - 8) + 16))(v4, a1, v5);
  v6 = &v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218AC8) + 36)];
  v7 = v14[1];
  *v6 = v14[0];
  *(v6 + 1) = v7;
  *(v6 + 2) = v14[2];
  LOBYTE(a1) = sub_24F925868();
  sub_24F923318();
  v8 = &v4[*(v2 + 36)];
  *v8 = a1;
  *(v8 + 1) = v9;
  *(v8 + 2) = v10;
  *(v8 + 3) = v11;
  *(v8 + 4) = v12;
  v8[40] = 0;
  sub_24E6E9870(&qword_27F218AD0, &qword_27F218AC0, &unk_24F949F18, sub_24E6E94A4);
  sub_24E6E9560();
  sub_24F925ED8();
  return sub_24E601704(v4, &qword_27F218AC0);
}

uint64_t sub_24E6E7E60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_24F9289E8();
  v7 = *(v6 - 8);
  (*(v7 + 16))(a3, a1, v6);
  (*(v7 + 56))(a3, 0, 1, v6);
  v8 = a2 + *(type metadata accessor for GameHeroView(0) + 20);
  v9 = *(v8 + *(type metadata accessor for GameHero(0) + 28));
  if (qword_27F2118D8 != -1)
  {
    swift_once();
  }

  v16[0] = xmmword_27F252170;
  v16[1] = unk_27F252180;
  v16[2] = xmmword_27F252190;
  v16[3] = *&byte_27F2521A0;
  v10 = type metadata accessor for DefaultGameIconView();
  *(a3 + v10[5]) = v9 * 0.0174532925;
  v11 = (a3 + v10[6]);
  v12 = unk_27F252180;
  *v11 = xmmword_27F252170;
  v11[1] = v12;
  v13 = *&byte_27F2521A0;
  v11[2] = xmmword_27F252190;
  v11[3] = v13;
  *(a3 + v10[7]) = 0x3FF0000000000000;
  return sub_24E63D388(v16, &v15);
}

BOOL sub_24E6E7FE8()
{
  v1 = sub_24F924848();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *v0;
  if (*(v0 + 8) != 1)
  {

    sub_24F92BDC8();
    v6 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E62A5EC(v5, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v5) = v8[15];
  }

  return (v5 & 1) == 0;
}

uint64_t sub_24E6E8134@<X0>(uint64_t a1@<X8>)
{
  sub_24E6E8210(&v12);
  v2 = v12;
  v3 = v13;
  v4 = BYTE2(v13);
  sub_24F927618();
  sub_24F9238C8();
  *&v11[5] = v12;
  *&v11[21] = v13;
  *&v11[37] = v14;
  v5 = sub_24F925868();
  result = sub_24F923318();
  *(a1 + 19) = *v11;
  *a1 = v2;
  *(a1 + 16) = v3;
  *(a1 + 18) = v4;
  *(a1 + 35) = *&v11[16];
  *(a1 + 51) = *&v11[32];
  *(a1 + 64) = *&v11[45];
  *(a1 + 72) = v5;
  *(a1 + 80) = v7;
  *(a1 + 88) = v8;
  *(a1 + 96) = v9;
  *(a1 + 104) = v10;
  *(a1 + 112) = 0;
  return result;
}

double sub_24E6E8210@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_24F926E08();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_24F921C08())
  {
    (*(v3 + 104))(v5, *MEMORY[0x277CE0FE0], v2);
    v6 = sub_24F926E88();
    (*(v3 + 8))(v5, v2);
    v11 = v6;
    v12 = 0;
    v13 = 1;
    v14 = 0;
    swift_retain_n();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218B00);
    sub_24E6E97A8();
    sub_24F924E28();
  }

  else
  {
    v11 = sub_24F926C98();
    v12 = 0;
    v13 = 0;
    v14 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218B00);
    sub_24E6E97A8();
    sub_24F924E28();
  }

  result = *&v15;
  v8 = v16;
  v9 = v17;
  *a1 = v15;
  *(a1 + 16) = v8;
  *(a1 + 18) = v9;
  return result;
}

unint64_t sub_24E6E8420()
{
  result = qword_27F218A18;
  if (!qword_27F218A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F218A18);
  }

  return result;
}

unint64_t sub_24E6E8474()
{
  result = qword_27F218A20;
  if (!qword_27F218A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F218A20);
  }

  return result;
}

uint64_t sub_24E6E84C8(uint64_t a1)
{
  v2 = type metadata accessor for GameHero(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24E6E8524(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F218590);
    sub_24E6E5340(a2, type metadata accessor for PlayerAvatar);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24E6E85C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
  }

  return result;
}

unint64_t sub_24E6E8610()
{
  result = qword_27F218A40;
  if (!qword_27F218A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F218A40);
  }

  return result;
}

uint64_t sub_24E6E8664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
  }

  return result;
}

uint64_t sub_24E6E86D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for GameHero(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_24E6E87AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for GameHero(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

void sub_24E6E8868()
{
  sub_24E6E8928(319, &qword_27F2362D0, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for GameHero(319);
    if (v1 <= 0x3F)
    {
      sub_24F928FD8();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24E6E8928(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_24E6E89E4()
{
  result = qword_27F218A60;
  if (!qword_27F218A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F218A60);
  }

  return result;
}

unint64_t sub_24E6E8A3C()
{
  result = qword_27F218A68;
  if (!qword_27F218A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F218A68);
  }

  return result;
}

unint64_t sub_24E6E8A94()
{
  result = qword_27F218A70;
  if (!qword_27F218A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F218A70);
  }

  return result;
}

uint64_t sub_24E6E8AE8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1852793705 && a2 == 0xE400000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7641726579616C70 && a2 == 0xED00007372617461 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000018 && 0x800000024FA45EA0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x4D747865746E6F63 && a2 == 0xEB00000000756E65 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA451D0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000023 && 0x800000024FA45EC0 == a2)
  {

    return 7;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_24E6E8D84(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E6E8DEC()
{
  v1 = sub_24F9289E8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for GameHeroView(0);
  v6 = *(*(v5 - 8) + 80);
  v7 = (v3 + v4 + v6) & ~v6;
  v8 = *(v2 + 8);
  v8(v0 + v3, v1);
  sub_24E62A5EC(*(v0 + v7), *(v0 + v7 + 8));
  v9 = v0 + v7 + *(v5 + 20);
  __swift_destroy_boxed_opaque_existential_1(v9);
  v10 = type metadata accessor for GameHero(0);
  v11 = v10[5];
  if (!(*(v2 + 48))(v9 + v11, 1, v1))
  {
    v8(v9 + v11, v1);
  }

  v12 = v9 + v10[8];
  if (*(v12 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  v13 = v10[9];
  v14 = sub_24F92A6D8();
  v15 = *(v14 - 8);
  if (!(*(v15 + 48))(v9 + v13, 1, v14))
  {
    (*(v15 + 8))(v9 + v13, v14);
  }

  v16 = v10[10];
  v17 = sub_24F929608();
  v18 = *(v17 - 8);
  if (!(*(v18 + 48))(v9 + v16, 1, v17))
  {
    (*(v18 + 8))(v9 + v16, v17);
  }

  if (*(v9 + v10[11] + 24))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_24E6E9114(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GameHeroView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E6E9178@<X0>(uint64_t a1@<X8>)
{
  v3 = *(sub_24F9289E8() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for GameHeroView(0) - 8);
  v7 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_24E6E7E60(v1 + v4, v7, a1);
}

unint64_t sub_24E6E925C()
{
  result = qword_27F218AB0;
  if (!qword_27F218AB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F218A78);
    sub_24E602068(&qword_27F214AC0, &qword_27F214A50);
    sub_24E6E5340(&qword_27F218AB8, type metadata accessor for ToolbarTransitionViewModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F218AB0);
  }

  return result;
}

uint64_t sub_24E6E9344()
{
  v1 = sub_24F9289E8();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_24E6E93CC()
{
  v1 = *(sub_24F9289E8() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_24E6E7CA8(v2);
}

uint64_t sub_24E6E943C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218A88);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24E6E94A4()
{
  result = qword_27F218AD8;
  if (!qword_27F218AD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F218AC8);
    sub_24E6E5340(&qword_27F214C28, MEMORY[0x277D21C48]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F218AD8);
  }

  return result;
}

unint64_t sub_24E6E9560()
{
  result = qword_27F218AE0;
  if (!qword_27F218AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F218AE0);
  }

  return result;
}

unint64_t sub_24E6E95C8()
{
  result = qword_27F218AE8;
  if (!qword_27F218AE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F218AF0);
    sub_24E6E964C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F218AE8);
  }

  return result;
}

unint64_t sub_24E6E964C()
{
  result = qword_27F218AF8;
  if (!qword_27F218AF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F218AA0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F218A90);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F218A88);
    sub_24E602068(&qword_27F218AA8, &qword_27F218A88);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_24E6E925C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F218AF8);
  }

  return result;
}

unint64_t sub_24E6E97A8()
{
  result = qword_27F218B08;
  if (!qword_27F218B08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F218B00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F218B08);
  }

  return result;
}

uint64_t sub_24E6E9870(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

unint64_t sub_24E6E98F4()
{
  result = qword_27F218B20;
  if (!qword_27F218B20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F218B28);
    sub_24E6E9980();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F218B20);
  }

  return result;
}

unint64_t sub_24E6E9980()
{
  result = qword_27F218B30;
  if (!qword_27F218B30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F218B38);
    sub_24E6E9A04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F218B30);
  }

  return result;
}

unint64_t sub_24E6E9A04()
{
  result = qword_27F218B40;
  if (!qword_27F218B40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F218B48);
    sub_24E6E97A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F218B40);
  }

  return result;
}

uint64_t sub_24E6E9A90@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v116 = a1;
  v106 = sub_24F924E98();
  MEMORY[0x28223BE20](v106);
  v105 = &v89 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24F923568();
  v108 = *(v4 - 8);
  v109 = v4;
  MEMORY[0x28223BE20](v4);
  v107 = &v89 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218B50);
  v111 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v110 = &v89 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218B58);
  v114 = *(v7 - 8);
  v115 = v7;
  MEMORY[0x28223BE20](v7);
  v112 = &v89 - v8;
  v93 = sub_24F924258() - 8;
  MEMORY[0x28223BE20](v93);
  v95 = &v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218B60);
  v11 = *(v10 - 8);
  v91 = v10;
  v92 = v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v89 - v12;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218B68) - 8;
  MEMORY[0x28223BE20](v94);
  v90 = &v89 - v14;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218B70);
  MEMORY[0x28223BE20](v96);
  v98 = &v89 - v15;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218B78);
  MEMORY[0x28223BE20](v97);
  v99 = &v89 - v16;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218B80);
  MEMORY[0x28223BE20](v101);
  v102 = &v89 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218B88);
  v103 = *(v18 - 8);
  v104 = v18;
  MEMORY[0x28223BE20](v18);
  v100 = &v89 - v19;
  v117 = v2;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218B90);
  v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F218B98);
  v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F218BA0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F218BA8);
  v23 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F218BB0);
  v24 = sub_24F923C68();
  v25 = sub_24E6EB798();
  *&v120 = v23;
  *(&v120 + 1) = v24;
  v121 = v25;
  v122 = MEMORY[0x277CDD980];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v120 = v22;
  *(&v120 + 1) = OpaqueTypeConformance2;
  v27 = swift_getOpaqueTypeConformance2();
  v28 = v90;
  v29 = sub_24E602068(&qword_27F218BD8, &qword_27F218BA0);
  *&v120 = v20;
  *(&v120 + 1) = v21;
  v121 = v27;
  v122 = v29;
  swift_getOpaqueTypeConformance2();
  sub_24F924048();
  v30 = swift_allocObject();
  v31 = *(v2 + 48);
  v30[3] = *(v2 + 32);
  v30[4] = v31;
  v32 = *(v2 + 80);
  v30[5] = *(v2 + 64);
  v30[6] = v32;
  v33 = *(v2 + 16);
  v30[1] = *v2;
  v30[2] = v33;
  sub_24E6EB8D8(v2, &v120);
  sub_24E602068(&qword_27F218BE0, &qword_27F218B60);
  v34 = v91;
  sub_24F9262B8();

  (*(v92 + 8))(v13, v34);
  v35 = *(v2 + 8);
  v36 = (v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218BE8) + 36));
  v37 = v93;
  v38 = *(v93 + 28);
  v39 = *MEMORY[0x277CE0118];
  v40 = sub_24F924B38();
  v41 = *(*(v40 - 8) + 104);
  v41(&v36[v38], v39, v40);
  *v36 = v35;
  *(v36 + 1) = v35;
  *&v36[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2164C8) + 36)] = 256;
  v92 = sub_24F927618();
  v43 = v42;
  v44 = v95;
  v41(&v95[*(v37 + 28)], v39, v40);
  *v44 = v35;
  v44[1] = v35;
  v45 = sub_24F926C68();
  v129 = *(v2 + 80);
  v120 = *(v2 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220);
  sub_24F926F38();
  v46 = v28 + *(v94 + 44);
  sub_24F923658();
  sub_24E6EB910(v44, v46);
  v47 = *&v123 * 0.5;
  v48 = v46 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218BF0) + 68);
  sub_24E6EB910(v44, v48);
  *(v48 + *(sub_24F924248() + 20)) = v47;
  v49 = v48 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218BF8) + 36);
  v50 = v124;
  *v49 = v123;
  *(v49 + 16) = v50;
  *(v49 + 32) = v125;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218C00);
  *(v48 + *(v51 + 52)) = v45;
  *(v48 + *(v51 + 56)) = 256;
  v52 = sub_24F927618();
  v54 = v53;
  sub_24E6EB974(v44);
  v55 = (v48 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218C08) + 36));
  *v55 = v52;
  v55[1] = v54;
  v56 = (v46 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218C10) + 36));
  *v56 = v92;
  v56[1] = v43;
  v120 = v129;
  sub_24F926F38();
  if (v126 == 1)
  {
    v57 = sub_24F925848();
  }

  else
  {
    v57 = sub_24F925808();
  }

  v58 = v57;
  v59 = sub_24F924058();
  v60 = v98;
  sub_24E6009C8(v28, v98, &qword_27F218B68);
  v61 = v60 + *(v96 + 36);
  *v61 = v59;
  *(v61 + 8) = v58;
  v120 = v129;
  sub_24F926F38();
  sub_24F927618();
  sub_24F9238C8();
  v62 = v99;
  sub_24E6009C8(v60, v99, &qword_27F218B70);
  v63 = (v62 + *(v97 + 36));
  v64 = v127;
  *v63 = v126;
  v63[1] = v64;
  v65 = v129;
  v63[2] = v128;
  v120 = v65;
  sub_24F926F38();
  v66 = 0;
  if (v118 == 1)
  {
    v120 = *(v2 + 32);
    v121 = *(v2 + 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218C60);
    sub_24F926F38();
    v66 = v119;
  }

  v67 = v102;
  sub_24E6009C8(v62, v102, &qword_27F218B78);
  v68 = (v67 + *(v101 + 36));
  *v68 = 0;
  v68[1] = v66;
  sub_24F925228();
  v69 = v107;
  sub_24F923518();
  v70 = swift_allocObject();
  v71 = *(v2 + 48);
  v70[3] = *(v2 + 32);
  v70[4] = v71;
  v72 = *(v2 + 80);
  v70[5] = *(v2 + 64);
  v70[6] = v72;
  v73 = *(v2 + 16);
  v70[1] = *v2;
  v70[2] = v73;
  sub_24E6EB8D8(v2, &v120);
  sub_24E6EB9D8(&unk_27F236560, MEMORY[0x277CDD730]);
  sub_24E6EB9D8(&qword_27F2180A0, MEMORY[0x277CDD708]);
  v74 = v109;
  v75 = v110;
  sub_24F927278();

  (*(v108 + 8))(v69, v74);
  v76 = swift_allocObject();
  v77 = *(v2 + 48);
  v76[3] = *(v2 + 32);
  v76[4] = v77;
  v78 = *(v2 + 80);
  v76[5] = *(v2 + 64);
  v76[6] = v78;
  v79 = *(v2 + 16);
  v76[1] = *v2;
  v76[2] = v79;
  sub_24E6EB8D8(v2, &v120);
  sub_24E602068(&qword_27F218C18, &qword_27F218B50);
  v81 = v112;
  v80 = v113;
  sub_24F927268();

  (*(v111 + 8))(v75, v80);
  sub_24F9235A8();
  sub_24E6EBA28();
  sub_24E602068(&qword_27F218C50, &qword_27F218B58);
  v82 = v100;
  v83 = v115;
  sub_24F9269D8();
  (*(v114 + 8))(v81, v83);
  sub_24E6EBDAC(v67);
  v84 = sub_24F926C68();
  KeyPath = swift_getKeyPath();
  v86 = v116;
  (*(v103 + 32))(v116, v82, v104);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218C58);
  v88 = (v86 + *(result + 36));
  *v88 = KeyPath;
  v88[1] = v84;
  return result;
}

uint64_t sub_24E6EA824@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = sub_24F925338();
  v33 = *(v3 - 8);
  v34 = v3;
  MEMORY[0x28223BE20](v3);
  v30 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24F923C68();
  v27 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218BA8);
  v28 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v9 = &v25 - v8;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218B98);
  v31 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v11 = &v25 - v10;
  if (qword_27F211250 != -1)
  {
    swift_once();
  }

  v12 = qword_27F39E538;
  v40[0] = *(a1 + 80);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220);
  v26 = a1;
  sub_24F926F38();
  v13 = v36;
  v14 = sub_24F923268();
  v15 = sub_24F925808();
  v39 = 0;
  *&v36 = v12;
  BYTE8(v36) = v13;
  *&v37 = sub_24F71BBEC;
  *(&v37 + 1) = 0;
  v38[0] = 0;
  *&v38[8] = v14;
  *&v38[16] = 1;
  v38[24] = v15;
  sub_24F923C58();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218BB0);
  v17 = sub_24E6EB798();
  v18 = MEMORY[0x277CDD980];
  sub_24F926B98();
  (*(v27 + 8))(v7, v5);
  v40[0] = v36;
  v40[1] = v37;
  v41[0] = *v38;
  *(v41 + 9) = *&v38[9];
  sub_24E601704(v40, &qword_27F218BB0);
  v19 = v30;
  sub_24F925318();
  *&v36 = v16;
  *(&v36 + 1) = v5;
  *&v37 = v17;
  *(&v37 + 1) = v18;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v21 = v29;
  sub_24F926798();
  (*(v33 + 8))(v19, v34);
  v22 = (*(v28 + 8))(v9, v21);
  MEMORY[0x28223BE20](v22);
  *(&v25 - 2) = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218BA0);
  *&v36 = v21;
  *(&v36 + 1) = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_24E602068(&qword_27F218BD8, &qword_27F218BA0);
  v23 = v32;
  sub_24F926A58();
  return (*(v31 + 8))(v11, v23);
}

uint64_t sub_24E6EAD84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17[1] = a2;
  v17[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218C70);
  MEMORY[0x28223BE20](v17[0]);
  v4 = v17 - v3;
  v5 = sub_24F925018();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218C78);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v17 - v11;
  sub_24F924F68();
  v17[8] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218C80);
  sub_24E602068(&qword_27F218C88, &qword_27F218C80);
  sub_24F923668();
  sub_24F924FA8();
  v17[4] = a1;
  sub_24F923668();
  v13 = *(v17[0] + 48);
  v14 = *(v7 + 16);
  v14(v4, v12, v6);
  v14(&v4[v13], v10, v6);
  sub_24F924D18();
  v15 = *(v7 + 8);
  v15(v10, v6);
  return (v15)(v12, v6);
}

uint64_t sub_24E6EB044(_OWORD *a1)
{
  v2 = swift_allocObject();
  v3 = a1[3];
  v2[3] = a1[2];
  v2[4] = v3;
  v4 = a1[5];
  v2[5] = a1[4];
  v2[6] = v4;
  v5 = a1[1];
  v2[1] = *a1;
  v2[2] = v5;
  sub_24E6EB8D8(a1, v7);
  return sub_24F926F88();
}

uint64_t sub_24E6EB100@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220);
  sub_24F926F38();
  result = sub_24F926DF8();
  *a1 = result;
  return result;
}

uint64_t sub_24E6EB188(_OWORD *a1)
{
  v2 = swift_allocObject();
  v3 = a1[3];
  v2[3] = a1[2];
  v2[4] = v3;
  v4 = a1[5];
  v2[5] = a1[4];
  v2[6] = v4;
  v5 = a1[1];
  v2[1] = *a1;
  v2[2] = v5;
  sub_24E6EB8D8(a1, &v7);
  return sub_24F926F88();
}

uint64_t sub_24E6EB240@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24F926DF8();
  *a1 = result;
  return result;
}

uint64_t sub_24E6EB278()
{
  sub_24F927718();
  sub_24F923B18();
}

uint64_t sub_24E6EB2E8()
{
  sub_24F923528();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218C60);
  sub_24F926F38();
  return sub_24F926F48();
}

uint64_t sub_24E6EB388(uint64_t a1, uint64_t a2)
{
  sub_24F923528();
  v9 = v4;
  v10 = v3;
  v15 = *(a2 + 72);
  v14 = *(a2 + 56);
  v12 = *(a2 + 56);
  v13 = *(a2 + 72);
  v16 = v15;
  sub_24E60169C(&v16, &v11, &qword_27F218C68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218C60);
  sub_24F926F38();
  v5.f64[0] = v10;
  v5.f64[1] = v9;
  v6 = vaddq_f64(v5, v11);
  v7 = *(a2 + 32);
  v11 = v6;
  v12 = v7;
  v13 = *(a2 + 48);
  sub_24F926F48();
  v12 = *(a2 + 32);
  v13 = *(a2 + 48);
  sub_24F926F38();
  v12 = v14;
  v13 = v15;
  sub_24F926F48();
  return sub_24E601704(&v14, &qword_27F218C60);
}

uint64_t sub_24E6EB4BC(uint64_t a1)
{
  v3 = *(a1 + 80);
  v2[1] = *(a1 + 80);
  v4 = *(&v3 + 1);
  sub_24E60169C(&v4, v2, &qword_27F215140);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220);
  sub_24F926F38();
  v2[0] = v3;
  sub_24F926F48();
  return sub_24E601704(&v3, &qword_27F236220);
}

double sub_24E6EB5D4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for CGSize(0);
  sub_24F926F28();
  sub_24F926F28();
  sub_24F926F28();
  result = 260.0;
  *a3 = xmmword_24F949FC0;
  *(a3 + 16) = a1;
  *(a3 + 24) = a2;
  *(a3 + 32) = v7;
  *(a3 + 40) = v8;
  *(a3 + 48) = v9;
  *(a3 + 56) = v7;
  *(a3 + 64) = v8;
  *(a3 + 72) = v9;
  *(a3 + 80) = v7;
  *(a3 + 81) = v7;
  *(a3 + 84) = *(&v7 + 3);
  *(a3 + 88) = v8;
  return result;
}

uint64_t sub_24E6EB6C4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_24E6EB70C(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t sub_24E6EB798()
{
  result = qword_27F218BB8;
  if (!qword_27F218BB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F218BB0);
    sub_24E6EB850();
    sub_24E602068(&qword_27F218BC8, &qword_27F218BD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F218BB8);
  }

  return result;
}

unint64_t sub_24E6EB850()
{
  result = qword_27F218BC0;
  if (!qword_27F218BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F218BC0);
  }

  return result;
}

uint64_t sub_24E6EB910(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F924258();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E6EB974(uint64_t a1)
{
  v2 = sub_24F924258();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24E6EB9D8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24E6EBA28()
{
  result = qword_27F218C20;
  if (!qword_27F218C20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F218B80);
    sub_24E6EBAB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F218C20);
  }

  return result;
}

unint64_t sub_24E6EBAB4()
{
  result = qword_27F218C28;
  if (!qword_27F218C28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F218B78);
    sub_24E6EBB40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F218C28);
  }

  return result;
}

unint64_t sub_24E6EBB40()
{
  result = qword_27F218C30;
  if (!qword_27F218C30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F218B70);
    sub_24E6EBBCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F218C30);
  }

  return result;
}

unint64_t sub_24E6EBBCC()
{
  result = qword_27F218C38;
  if (!qword_27F218C38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F218B68);
    sub_24E6EBC84();
    sub_24E602068(&qword_27F218C48, &qword_27F218C10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F218C38);
  }

  return result;
}

unint64_t sub_24E6EBC84()
{
  result = qword_27F218C40;
  if (!qword_27F218C40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F218BE8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F218B60);
    sub_24E602068(&qword_27F218BE0, &qword_27F218B60);
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F216528, &qword_27F2164C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F218C40);
  }

  return result;
}

uint64_t sub_24E6EBDAC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218B80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroyTm_8()
{

  return swift_deallocObject();
}

unint64_t sub_24E6EBF04()
{
  result = qword_27F218C90;
  if (!qword_27F218C90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F218C58);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F218B80);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F218B58);
    sub_24E6EBA28();
    sub_24E602068(&qword_27F218C50, &qword_27F218B58);
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&unk_27F2554A0, &qword_27F212B20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F218C90);
  }

  return result;
}

uint64_t sub_24E6EC080(uint64_t a1, char a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for IconRowViewModel();
  v40 = *(v8 - 1);
  MEMORY[0x28223BE20](v8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218CB0);
  MEMORY[0x28223BE20](v11 - 8);
  v41 = &v33 - v12;
  v13 = _s9ViewModelVMa();
  MEMORY[0x28223BE20](v13);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v4 + qword_27F39A5E0) = 4;
  *(v4 + qword_27F39A5E8) = 1;
  *(v4 + 24) = a3;
  v35 = a2 & 1;
  *(v4 + 32) = a2 & 1;
  v36 = OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_artwork;
  v33 = *(a1 + OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_artwork);
  v39 = OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_lockup;
  v16 = *(a1 + OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_lockup);
  type metadata accessor for LockupViewModel();
  swift_allocObject();

  swift_retain_n();
  v37 = a3;
  v38 = sub_24F41AF18(v16, 0, 0, 2, 1, 6, a3);
  v34 = OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_collectionIcons;
  v17 = *(a1 + OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_collectionIcons);
  v42 = 0x4044000000000000;
  sub_24E66ED98();
  sub_24F9237C8();
  v18 = v8[5];
  v42 = 0x4051800000000000;
  sub_24F9237C8();
  if (!v17)
  {
    goto LABEL_10;
  }

  if (v17 >> 62)
  {
    if (sub_24F92C738())
    {
      v10[v8[6]] = 0;
      *&v10[v8[7]] = v17;
      v19 = sub_24F92C738();
      goto LABEL_5;
    }

LABEL_10:
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215DE0);
    v24 = *(*(v23 - 8) + 8);
    v24(v10, v23);
    v24(&v10[v18], v23);
    v22 = v40;
    v21 = v41;
    (*(v40 + 56))(v41, 1, 1, v8);
    goto LABEL_11;
  }

  if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_10;
  }

  v10[v8[6]] = 0;
  *&v10[v8[7]] = v17;
  v19 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
  v20 = 6;
  if (v19 < 6)
  {
    v20 = v19;
  }

  *&v10[v8[8]] = v20;
  v21 = v41;
  sub_24E6EC964(v10, v41);
  v22 = v40;
  (*(v40 + 56))(v21, 0, 1, v8);

  sub_24E6EC9C8(v10, type metadata accessor for IconRowViewModel);
LABEL_11:
  v25 = 4;
  v26 = v38;
  if ((*(a1 + OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_editorialDisplayOptions + 4) & 1) == 0 && v35)
  {
    v27 = *(a1 + OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_editorialDisplayOptions + 1);
    v28 = (*(v22 + 48))(v21, 1, v8);
    if (v27)
    {
      v25 = 4;
    }

    else
    {
      v25 = 4 * (v26 == 0);
      if (!v26 && v28 != 1)
      {
        if (v33)
        {
          v25 = 1;
        }

        else
        {
          v25 = 4;
        }
      }
    }
  }

  *v15 = v25;
  *(v15 + 1) = v26;
  sub_24E6EC890(v21, &v15[v13[6]]);
  v29 = &v15[v13[7]];
  *v29 = 0;
  *(v29 + 1) = 0;
  *&v15[v13[8]] = 0;
  sub_24E6EC900(v15, v4 + qword_27F39A5D0);
  v30 = *(a1 + v39);
  if (v30)
  {
    v31 = *(v30 + 48);
    if (v31)
    {
      goto LABEL_28;
    }
  }

  v31 = *(a1 + v34);
  if (!v31)
  {
LABEL_29:

LABEL_30:
    *(v4 + qword_27F39A5D8) = v31;
    *(v4 + 40) = *(a1 + v36);
    *(v4 + 48) = *(a1 + OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_video);
    *(v4 + 16) = a1;

    return v4;
  }

  if (!(v31 >> 62))
  {
    result = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_25;
    }

LABEL_32:

    v31 = 0;
    goto LABEL_30;
  }

  result = sub_24F92C738();
  if (!result)
  {
    goto LABEL_32;
  }

LABEL_25:
  if ((v31 & 0xC000000000000001) != 0)
  {
    v31 = MEMORY[0x253052270](0, v31);
    goto LABEL_29;
  }

  if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v31 = *(v31 + 32);
LABEL_28:

    goto LABEL_29;
  }

  __break(1u);
  return result;
}

uint64_t sub_24E6EC5E0()
{

  sub_24E6EC9C8(v0 + qword_27F39A5D0, _s9ViewModelVMa);
}

uint64_t sub_24E6EC64C()
{

  sub_24E6EC9C8(v0 + qword_27F39A5D0, _s9ViewModelVMa);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for StoryCardViewModel()
{
  result = qword_27F218C98;
  if (!qword_27F218C98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24E6EC760()
{
  result = _s9ViewModelVMa();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_24E6EC83C()
{
  result = qword_27F218CA8;
  if (!qword_27F218CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F218CA8);
  }

  return result;
}

uint64_t sub_24E6EC890(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218CB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E6EC900(uint64_t a1, uint64_t a2)
{
  v4 = _s9ViewModelVMa();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E6EC964(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IconRowViewModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E6EC9C8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
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

uint64_t sub_24E6ECA3C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_24E6ECA84(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24E6ECAE0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218CD0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E6ED0C8();
  sub_24F92D128();
  LOBYTE(v11[0]) = 0;
  sub_24F92CD08();
  if (!v2)
  {
    v11[0] = *(v3 + 16);
    *(v11 + 9) = *(v3 + 25);
    v10[15] = 1;
    sub_24E6ED170();
    sub_24F92CD48();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_24E6ECC64()
{
  if (*v0)
  {
    return 0x6964654D656D6167;
  }

  else
  {
    return 0x444965676170;
  }
}

uint64_t sub_24E6ECCA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x444965676170 && a2 == 0xE600000000000000;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6964654D656D6167 && a2 == 0xE900000000000061)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24F92CE08();

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

uint64_t sub_24E6ECD80(uint64_t a1)
{
  v2 = sub_24E6ED0C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E6ECDBC(uint64_t a1)
{
  v2 = sub_24E6ED0C8();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_24E6ECE18@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_24E6ECEB0(a1, &v6);
  if (!v2)
  {
    v5 = v7[0];
    *a2 = v6;
    a2[1] = v5;
    result = *(v7 + 9);
    *(a2 + 25) = *(v7 + 9);
  }

  return result;
}

uint64_t sub_24E6ECEB0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218CB8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E6ED0C8();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v18) = 0;
  v9 = sub_24F92CC28();
  v11 = v10;
  v12 = v9;
  v17 = 1;
  sub_24E6ED11C();
  sub_24F92CC68();
  (*(v6 + 8))(v8, v5);
  v13 = v19;
  v14 = v20;
  v16 = v18;
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v12;
  *(a2 + 8) = v11;
  *(a2 + 16) = v16;
  *(a2 + 32) = v13;
  *(a2 + 40) = v14;
  return result;
}

unint64_t sub_24E6ED0C8()
{
  result = qword_27F218CC0;
  if (!qword_27F218CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F218CC0);
  }

  return result;
}

unint64_t sub_24E6ED11C()
{
  result = qword_27F218CC8;
  if (!qword_27F218CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F218CC8);
  }

  return result;
}

unint64_t sub_24E6ED170()
{
  result = qword_27F218CD8;
  if (!qword_27F218CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F218CD8);
  }

  return result;
}

unint64_t sub_24E6ED1D8()
{
  result = qword_27F218CE0;
  if (!qword_27F218CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F218CE0);
  }

  return result;
}

unint64_t sub_24E6ED230()
{
  result = qword_27F218CE8;
  if (!qword_27F218CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F218CE8);
  }

  return result;
}

unint64_t sub_24E6ED288()
{
  result = qword_27F218CF0;
  if (!qword_27F218CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F218CF0);
  }

  return result;
}

uint64_t sub_24E6ED2F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Player(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for GSKShelf();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_24E6ED428(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for Player(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for GSKShelf();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t type metadata accessor for RefreshableGameHighlightsShelfIntent()
{
  result = qword_27F218CF8;
  if (!qword_27F218CF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24E6ED598()
{
  result = type metadata accessor for Player(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for GSKShelf();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_24E6ED62C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v24 = type metadata accessor for GSKShelf();
  MEMORY[0x28223BE20](v24);
  v23 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218D08);
  v25 = *(v7 - 8);
  v26 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v21 - v8;
  v10 = type metadata accessor for RefreshableGameHighlightsShelfIntent();
  MEMORY[0x28223BE20](v10);
  v12 = (&v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E6EDC04();
  v27 = v9;
  v13 = v28;
  sub_24F92D108();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v14 = a1;
  v32 = 0;
  v16 = v25;
  v15 = v26;
  *v12 = sub_24F92CC28();
  v12[1] = v17;
  v28 = v17;
  v31 = 1;
  v12[2] = sub_24F92CC28();
  v12[3] = v18;
  v30 = 2;
  sub_24E6EDC58(&qword_27F213E38, type metadata accessor for Player);
  sub_24F92CC68();
  sub_24E6EDCA0(v6, v12 + *(v10 + 24), type metadata accessor for Player);
  v29 = 3;
  sub_24E6EDC58(&qword_27F2165F8, type metadata accessor for GSKShelf);
  v19 = v23;
  sub_24F92CC68();
  (*(v16 + 8))(v27, v15);
  sub_24E6EDCA0(v19, v12 + *(v10 + 28), type metadata accessor for GSKShelf);
  sub_24E6EDD08(v12, v22);
  __swift_destroy_boxed_opaque_existential_1(v14);
  return sub_24E6EDD6C(v12, type metadata accessor for RefreshableGameHighlightsShelfIntent);
}

uint64_t sub_24E6EDAB4()
{
  v1 = 0x444965676170;
  v2 = 0x726579616C70;
  if (*v0 != 2)
  {
    v2 = 0x536C616974696E69;
  }

  if (*v0)
  {
    v1 = 0x44496D616461;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_24E6EDB2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24E6EDEE4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24E6EDB54(uint64_t a1)
{
  v2 = sub_24E6EDC04();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E6EDB90(uint64_t a1)
{
  v2 = sub_24E6EDC04();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_24E6EDC04()
{
  result = qword_27F218D10;
  if (!qword_27F218D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F218D10);
  }

  return result;
}

uint64_t sub_24E6EDC58(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24E6EDCA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E6EDD08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RefreshableGameHighlightsShelfIntent();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E6EDD6C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24E6EDDE0()
{
  result = qword_27F218D18;
  if (!qword_27F218D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F218D18);
  }

  return result;
}

unint64_t sub_24E6EDE38()
{
  result = qword_27F218D20;
  if (!qword_27F218D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F218D20);
  }

  return result;
}

unint64_t sub_24E6EDE90()
{
  result = qword_27F218D28;
  if (!qword_27F218D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F218D28);
  }

  return result;
}

uint64_t sub_24E6EDEE4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x444965676170 && a2 == 0xE600000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x44496D616461 && a2 == 0xE600000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726579616C70 && a2 == 0xE600000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x536C616974696E69 && a2 == 0xEC000000666C6568)
  {

    return 3;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_24E6EE040(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v7 = *v4;
  v10[4] = a3;
  v10[5] = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_24F20E140;
  v10[3] = &block_descriptor_6;
  v8 = _Block_copy(v10);

  [v7 getSubscriptionEntitlementsForSegment:a1 ignoreCaches:a2 & 1 withCacheInfoResultHandler:v8];
  _Block_release(v8);
}

uint64_t sub_24E6EE10C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v8[4] = a2;
  v8[5] = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_24F20E200;
  v8[3] = &block_descriptor_3;
  v6 = _Block_copy(v8);

  [v5 getCachedSubscriptionEntitlementsForSegment:a1 withResultHandler:v6];
  _Block_release(v6);
}

uint64_t sub_24E6EE1C8(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v6[4] = a1;
  v6[5] = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = sub_24F20E214;
  v6[3] = &block_descriptor_7;
  v4 = _Block_copy(v6);

  [v3 getAppStoreConsumedIntroOfferFamilyIdsWithResultHandler_];
  _Block_release(v4);
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24E6EE2E0()
{
  v1 = *(v0 + 24);
  v2 = v1 >> 5;
  if (v1 >> 5 <= 2)
  {
    if (v2)
    {
      if (v2 == 1)
      {
        result = sub_24F699EAC();
        v4 = result;
        if (v1)
        {
          goto LABEL_20;
        }
      }

      else
      {
        result = sub_24F69A080();
        v4 = result;
        if (v1)
        {
          goto LABEL_20;
        }
      }
    }

    else
    {
      result = sub_24F699CD8();
      v4 = result;
      if (v1)
      {
        goto LABEL_20;
      }
    }
  }

  else if (v1 >> 5 > 4)
  {
    if (v2 != 5)
    {
      result = sub_24F69A7D0();
      v4 = result;
      if ((v1 & 1) == 0)
      {
        return result;
      }

      goto LABEL_20;
    }

    result = sub_24F69A5FC();
    v4 = result;
    if (v1)
    {
LABEL_20:
      MEMORY[0x253050C20](0xD000000000000010, 0x800000024FA460A0);
      return v4;
    }
  }

  else
  {
    if (v2 == 3)
    {
      result = sub_24F69A254();
      v4 = result;
      if ((v1 & 1) == 0)
      {
        return result;
      }

      goto LABEL_20;
    }

    result = sub_24F69A428();
    v4 = result;
    if (v1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

uint64_t ChallengesRules.TryRule.id.getter()
{
  if ((*(v0 + 24) & 1) == 0)
  {
    return sub_24F69A9A4();
  }

  if (qword_27F2114F8 != -1)
  {
    swift_once();
  }

  v1 = qword_27F39EAB8;

  return v1;
}

uint64_t sub_24E6EE444()
{
  if (*v0)
  {
    return 0x6574696D696C6E75;
  }

  else
  {
    return 0x646574696D696CLL;
  }
}

uint64_t sub_24E6EE484@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x646574696D696CLL && a2 == 0xE700000000000000;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6574696D696C6E75 && a2 == 0xE900000000000064)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24F92CE08();

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

uint64_t sub_24E6EE568(uint64_t a1)
{
  v2 = sub_24E6F20C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E6EE5A4(uint64_t a1)
{
  v2 = sub_24E6F20C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24E6EE5E0()
{
  if (*v0)
  {
    return 0xD000000000000015;
  }

  else
  {
    return 0x664F7265626D756ELL;
  }
}

uint64_t sub_24E6EE62C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x664F7265626D756ELL && a2 == 0xED00007365697254;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000015 && 0x800000024FA46080 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24F92CE08();

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

uint64_t sub_24E6EE718(uint64_t a1)
{
  v2 = sub_24E6F216C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E6EE754(uint64_t a1)
{
  v2 = sub_24E6F216C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24E6EE7AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000015 && 0x800000024FA46080 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_24F92CE08();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_24E6EE840(uint64_t a1)
{
  v2 = sub_24E6F2118();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E6EE87C(uint64_t a1)
{
  v2 = sub_24E6F2118();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ChallengesRules.TryRule.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218D30);
  v21 = *(v3 - 8);
  v22 = v3;
  MEMORY[0x28223BE20](v3);
  v20 = v19 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218D38);
  v23 = *(v5 - 8);
  v24 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = v19 - v6;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218D40);
  v8 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v10 = v19 - v9;
  v25 = *v1;
  v19[1] = v1[2];
  v11 = *(v1 + 24);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E6F20C4();
  sub_24F92D128();
  if (v11)
  {
    v31 = 1;
    sub_24E6F2118();
    v12 = v20;
    v13 = v27;
    sub_24F92CC98();
    v14 = v22;
    sub_24F92CD08();
    v15 = *(v21 + 8);
    v16 = v12;
LABEL_6:
    v15(v16, v14);
    return (*(v8 + 8))(v10, v13);
  }

  v30 = 0;
  sub_24E6F216C();
  v13 = v27;
  sub_24F92CC98();
  v29 = 0;
  v14 = v24;
  v17 = v26;
  sub_24F92CD38();
  if (!v17)
  {
    v28 = 1;
    sub_24F92CD08();
    v15 = *(v23 + 8);
    v16 = v7;
    goto LABEL_6;
  }

  (*(v23 + 8))(v7, v14);
  return (*(v8 + 8))(v10, v13);
}

uint64_t ChallengesRules.TryRule.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218D60);
  v37 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v4 = &v35 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218D68);
  v38 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v35 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218D70);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v35 - v10;
  v12 = a1[3];
  v42 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_24E6F20C4();
  v13 = v41;
  sub_24F92D108();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1(v42);
  }

  v36 = v5;
  v14 = v39;
  v15 = v40;
  v41 = v9;
  v16 = sub_24F92CC78();
  v17 = (2 * *(v16 + 16)) | 1;
  v43 = v16;
  v44 = v16 + 32;
  v45 = 0;
  v46 = v17;
  v18 = sub_24E643430();
  if (v18 == 2 || v45 != v46 >> 1)
  {
    v21 = sub_24F92C918();
    swift_allocError();
    v23 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212E20);
    *v23 = &type metadata for ChallengesRules.TryRule;
    sub_24F92CBB8();
    sub_24F92C908();
    (*(*(v21 - 8) + 104))(v23, *MEMORY[0x277D84160], v21);
    swift_willThrow();
    (*(v41 + 8))(v11, v8);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v42);
  }

  v47 = v18;
  if (v18)
  {
    v48 = 1;
    sub_24E6F2118();
    v19 = v4;
    sub_24F92CBA8();
    v20 = v41;
    v27 = v15;
    v28 = v14;
    v29 = sub_24F92CC28();
    v31 = v30;
    v32 = v27;
    (*(v37 + 8))(v19, v28);
    (*(v20 + 8))(v11, v8);
    swift_unknownObjectRelease();
    v33 = 0;
  }

  else
  {
    v48 = 0;
    sub_24E6F216C();
    sub_24F92CBA8();
    v25 = v41;
    v48 = 0;
    v26 = v36;
    v39 = sub_24F92CC58();
    v32 = v15;
    v48 = 1;
    v31 = sub_24F92CC28();
    v33 = v34;
    (*(v38 + 8))(v7, v26);
    (*(v25 + 8))(v11, v8);
    swift_unknownObjectRelease();
    v29 = v39;
  }

  *v32 = v29;
  *(v32 + 8) = v31;
  *(v32 + 16) = v33;
  *(v32 + 24) = v47 & 1;
  return __swift_destroy_boxed_opaque_existential_1(v42);
}

uint64_t sub_24E6EF1FC@<X0>(uint64_t *a1@<X8>)
{
  if (*(v1 + 24))
  {
    if (qword_27F2114F8 != -1)
    {
      swift_once();
    }

    v3 = qword_27F39EAB8;
  }

  else
  {
    v3 = sub_24F69A9A4();
    result = v5;
  }

  *a1 = v3;
  a1[1] = result;
  return result;
}

void sub_24E6EF27C()
{
  v1 = *v0;
  LODWORD(v2) = *(v0 + 24) >> 5;
  if (v2 <= 2)
  {
LABEL_8:
    if (!v2)
    {
      return;
    }

    if (v2 == 1)
    {
      if ((v1 * 60) >> 64 == (60 * v1) >> 63)
      {
        return;
      }

      __break(1u);
      goto LABEL_32;
    }

    goto LABEL_18;
  }

  if (*(v0 + 24) >> 5 <= 4u)
  {
    if (v2 != 3)
    {
LABEL_21:
      v10 = 7 * v1;
      if ((v1 * 7) >> 64 != (7 * v1) >> 63)
      {
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      v11 = 168 * v1;
      if ((v10 * 24) >> 64 != (24 * v10) >> 63)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      v12 = 1440 * v10;
      if ((v11 * 60) >> 64 != v12 >> 63)
      {
LABEL_42:
        __break(1u);
        goto LABEL_43;
      }

      v1 = 60 * v12;
      if ((v12 * 60) >> 64 != (60 * v12) >> 63)
      {
        __break(1u);
        goto LABEL_26;
      }

      return;
    }

    v3 = (v1 * 24) >> 64;
    v4 = 24 * v1;
    if (v3 != v4 >> 63)
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v5 = 60 * v4;
    if ((v4 * 60) >> 64 != (60 * v4) >> 63)
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v1 = 3600 * v4;
    v2 = (v5 * 60) >> 64;
    if (v2 == v1 >> 63)
    {
      return;
    }

    __break(1u);
    goto LABEL_8;
  }

  if (v2 != 5)
  {
LABEL_26:
    v13 = 365 * v1;
    if ((v1 * 365) >> 64 != (365 * v1) >> 63)
    {
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v14 = 8760 * v1;
    if ((v13 * 24) >> 64 != (24 * v13) >> 63)
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v15 = 1440 * v13;
    if ((v14 * 60) >> 64 != v15 >> 63)
    {
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    if ((v15 * 60) >> 64 != (60 * v15) >> 63)
    {
LABEL_44:
      __break(1u);
      return;
    }

    return;
  }

  v6 = 30 * v1;
  if ((v1 * 30) >> 64 != (30 * v1) >> 63)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v7 = 720 * v1;
  if ((v6 * 24) >> 64 != (24 * v6) >> 63)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v8 = 1440 * v6;
  if ((v7 * 60) >> 64 != v8 >> 63)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v1 = 60 * v8;
  if ((v8 * 60) >> 64 != (60 * v8) >> 63)
  {
    __break(1u);
LABEL_18:
    v9 = 60 * v1;
    if ((v1 * 60) >> 64 != (60 * v1) >> 63)
    {
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    v1 *= 3600;
    if ((v9 * 60) >> 64 == (60 * v9) >> 63)
    {
      return;
    }

    __break(1u);
    goto LABEL_21;
  }
}

uint64_t sub_24E6EF4FC()
{
  v1 = *v0;
  v2 = 0x73646E6F636573;
  v3 = 0x7368746E6F6DLL;
  if (v1 != 5)
  {
    v3 = 0x7372616579;
  }

  v4 = 1937334628;
  if (v1 != 3)
  {
    v4 = 0x736B656577;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x736574756E696DLL;
  if (v1 != 1)
  {
    v5 = 0x7372756F68;
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

uint64_t sub_24E6EF5BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24E6F3578(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24E6EF5F0(uint64_t a1)
{
  v2 = sub_24E6F21C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E6EF62C(uint64_t a1)
{
  v2 = sub_24E6F21C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24E6EF668()
{
  v1 = 0xD000000000000015;
  if (*v0 != 1)
  {
    v1 = 0x6E7265746E497369;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x664F7265626D756ELL;
  }
}

uint64_t sub_24E6EF6D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24E6F37B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24E6EF6FC(uint64_t a1)
{
  v2 = sub_24E6F2310();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E6EF738(uint64_t a1)
{
  v2 = sub_24E6F2310();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24E6EF774()
{
  v1 = 0xD000000000000015;
  if (*v0 != 1)
  {
    v1 = 0x6E7265746E497369;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x664F7265626D756ELL;
  }
}

uint64_t sub_24E6EF7E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24E6F38DC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24E6EF80C(uint64_t a1)
{
  v2 = sub_24E6F2364();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E6EF848(uint64_t a1)
{
  v2 = sub_24E6F2364();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24E6EF884()
{
  v1 = 0xD000000000000015;
  if (*v0 != 1)
  {
    v1 = 0x6E7265746E497369;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x664F7265626D756ELL;
  }
}

uint64_t sub_24E6EF8F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24E6F3A0C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24E6EF91C(uint64_t a1)
{
  v2 = sub_24E6F23B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E6EF958(uint64_t a1)
{
  v2 = sub_24E6F23B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24E6EF994()
{
  v1 = 0xD000000000000015;
  if (*v0 != 1)
  {
    v1 = 0x6E7265746E497369;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x664F7265626D756ELL;
  }
}

uint64_t sub_24E6EFA04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24E6F3B3C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24E6EFA2C(uint64_t a1)
{
  v2 = sub_24E6F2268();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E6EFA68(uint64_t a1)
{
  v2 = sub_24E6F2268();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24E6EFAA4()
{
  v1 = 0xD000000000000015;
  if (*v0 != 1)
  {
    v1 = 0x6E7265746E497369;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x664F7265626D756ELL;
  }
}

uint64_t sub_24E6EFB14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24E6F3C6C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24E6EFB3C(uint64_t a1)
{
  v2 = sub_24E6F240C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E6EFB78(uint64_t a1)
{
  v2 = sub_24E6F240C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24E6EFBB4()
{
  v1 = 0xD000000000000015;
  if (*v0 != 1)
  {
    v1 = 0x6E7265746E497369;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x664F7265626D756ELL;
  }
}

uint64_t sub_24E6EFC24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24E6F3D9C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24E6EFC4C(uint64_t a1)
{
  v2 = sub_24E6F22BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E6EFC88(uint64_t a1)
{
  v2 = sub_24E6F22BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24E6EFCC4()
{
  v1 = 0xD000000000000015;
  if (*v0 != 1)
  {
    v1 = 0x6E7265746E497369;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x664F7265626D756ELL;
  }
}

uint64_t sub_24E6EFD34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24E6F3ECC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24E6EFD5C(uint64_t a1)
{
  v2 = sub_24E6F2214();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E6EFD98(uint64_t a1)
{
  v2 = sub_24E6F2214();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ChallengesRules.TimeRule.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218D78);
  v58 = *(v3 - 8);
  v59 = v3;
  MEMORY[0x28223BE20](v3);
  v57 = &v47 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218D80);
  v55 = *(v5 - 8);
  v56 = v5;
  MEMORY[0x28223BE20](v5);
  v54 = &v47 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218D88);
  v52 = *(v7 - 8);
  v53 = v7;
  MEMORY[0x28223BE20](v7);
  v51 = &v47 - v8;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218D90);
  v49 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v48 = &v47 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218D98);
  v65 = *(v10 - 8);
  v66 = v10;
  MEMORY[0x28223BE20](v10);
  v64 = &v47 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218DA0);
  v63 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v47 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218DA8);
  v62 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v47 - v16;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218DB0);
  v70 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v18 = v1[1];
  v68 = *v1;
  v19 = v1[2];
  v60 = v18;
  v61 = v19;
  v20 = *(v1 + 24);
  v21 = a1[3];
  v22 = a1;
  v24 = &v47 - v23;
  __swift_project_boxed_opaque_existential_1(v22, v21);
  sub_24E6F21C0();
  v71 = v24;
  sub_24F92D128();
  v72 = v20;
  v25 = v20 >> 5;
  if (v20 >> 5 <= 2)
  {
    v31 = v62;
    v30 = v63;
    v32 = v14;
    v34 = v64;
    v33 = v65;
    v35 = v66;
    if (v25)
    {
      v36 = v67;
      if (v25 == 1)
      {
        v73 = 1;
        sub_24E6F23B8();
        sub_24F92CC98();
        v73 = 0;
        v37 = v69;
        sub_24F92CD38();
        if (!v37)
        {
          v73 = 1;
          sub_24F92CD08();
          v73 = 2;
          sub_24F92CD18();
        }

        (*(v30 + 8))(v32, v12);
      }

      else
      {
        v73 = 2;
        sub_24E6F2364();
        sub_24F92CC98();
        v73 = 0;
        v43 = v69;
        sub_24F92CD38();
        if (!v43)
        {
          v73 = 1;
          sub_24F92CD08();
          v73 = 2;
          sub_24F92CD18();
        }

        (*(v33 + 8))(v34, v35);
      }

      return (*(v70 + 8))(v71, v36);
    }

    else
    {
      v73 = 0;
      sub_24E6F240C();
      v39 = v17;
      v40 = v67;
      sub_24F92CC98();
      v73 = 0;
      v41 = v69;
      sub_24F92CD38();
      if (!v41)
      {
        v73 = 1;
        sub_24F92CD08();
        v73 = 2;
        sub_24F92CD18();
      }

      (*(v31 + 8))(v39, v15);
      return (*(v70 + 8))(v71, v40);
    }
  }

  else
  {
    if (v20 >> 5 > 4)
    {
      v26 = v67;
      if (v25 == 5)
      {
        v73 = 5;
        sub_24E6F2268();
        v27 = v54;
        sub_24F92CC98();
        v73 = 0;
        v38 = v69;
        v29 = v56;
        sub_24F92CD38();
        if (!v38)
        {
          v73 = 1;
          sub_24F92CD08();
          v73 = 2;
          sub_24F92CD18();
        }

        v46 = v55;
      }

      else
      {
        v73 = 6;
        sub_24E6F2214();
        v27 = v57;
        sub_24F92CC98();
        v73 = 0;
        v45 = v69;
        v29 = v59;
        sub_24F92CD38();
        if (!v45)
        {
          v73 = 1;
          sub_24F92CD08();
          v73 = 2;
          sub_24F92CD18();
        }

        v46 = v58;
      }
    }

    else
    {
      v26 = v67;
      if (v25 == 3)
      {
        v73 = 3;
        sub_24E6F2310();
        v27 = v48;
        sub_24F92CC98();
        v73 = 0;
        v28 = v69;
        v29 = v50;
        sub_24F92CD38();
        if (!v28)
        {
          v73 = 1;
          sub_24F92CD08();
          v73 = 2;
          sub_24F92CD18();
        }

        v46 = v49;
      }

      else
      {
        v73 = 4;
        sub_24E6F22BC();
        v27 = v51;
        sub_24F92CC98();
        v73 = 0;
        v44 = v69;
        v29 = v53;
        sub_24F92CD38();
        if (!v44)
        {
          v73 = 1;
          sub_24F92CD08();
          v73 = 2;
          sub_24F92CD18();
        }

        v46 = v52;
      }
    }

    (*(v46 + 8))(v27, v29);
    return (*(v70 + 8))(v71, v26);
  }
}

uint64_t ChallengesRules.TimeRule.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v104 = a2;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218DF8);
  v101 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v107 = &v85 - v3;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218E00);
  v100 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v102 = &v85 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218E08);
  v6 = *(v5 - 8);
  v98 = v5;
  v99 = v6;
  MEMORY[0x28223BE20](v5);
  v103 = &v85 - v7;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218E10);
  v96 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v106 = &v85 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218E18);
  v93 = *(v9 - 8);
  v94 = v9;
  MEMORY[0x28223BE20](v9);
  v105 = &v85 - v10;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218E20);
  v90 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v12 = &v85 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218E28);
  v89 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v85 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218E30);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v85 - v18;
  v20 = a1[3];
  v108 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_24E6F21C0();
  v21 = v109;
  sub_24F92D108();
  if (v21)
  {
    goto LABEL_11;
  }

  v22 = v15;
  v88 = v13;
  v23 = v12;
  v24 = v105;
  v25 = v106;
  v109 = 0;
  v26 = v107;
  v27 = sub_24F92CC78();
  v28 = (2 * *(v27 + 16)) | 1;
  v110 = v27;
  v111 = v27 + 32;
  v112 = 0;
  v113 = v28;
  v29 = sub_24E643444();
  if (v29 == 7 || v112 != v113 >> 1)
  {
    v33 = sub_24F92C918();
    swift_allocError();
    v35 = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212E20);
    *v35 = &type metadata for ChallengesRules.TimeRule;
    sub_24F92CBB8();
    sub_24F92C908();
    (*(*(v33 - 8) + 104))(v35, *MEMORY[0x277D84160], v33);
    swift_willThrow();
  }

  else
  {
    if (v29 > 2u)
    {
      v30 = v104;
      if (v29 <= 4u)
      {
        if (v29 == 3)
        {
          v114 = 3;
          sub_24E6F2310();
          v31 = v109;
          sub_24F92CBA8();
          if (!v31)
          {
            v114 = 0;
            v32 = v92;
            v109 = sub_24F92CC58();
            v114 = 1;
            v63 = sub_24F92CC28();
            v64 = v96;
            v65 = v25;
            v66 = v30;
            v86 = v63;
            v87 = v67;
            v114 = 2;
            LOBYTE(v68) = sub_24F92CC38();
            (*(v64 + 8))(v65, v32);
            (*(v17 + 8))(v19, v16);
            swift_unknownObjectRelease();
            v69 = 96;
LABEL_30:
            v81 = v69 & 0xFE | v68 & 1;
            v82 = v108;
LABEL_32:
            v84 = v86;
            *v66 = v109;
            *(v66 + 8) = v84;
            *(v66 + 16) = v87;
            *(v66 + 24) = v81;
            return __swift_destroy_boxed_opaque_existential_1(v82);
          }
        }

        else
        {
          v114 = 4;
          sub_24E6F22BC();
          v68 = v103;
          v50 = v109;
          sub_24F92CBA8();
          if (!v50)
          {
            v114 = 0;
            v51 = v98;
            v109 = sub_24F92CC58();
            v114 = 1;
            v72 = sub_24F92CC28();
            v73 = v99;
            v66 = v30;
            v86 = v72;
            v87 = v77;
            v114 = 2;
            v78 = v68;
            LOBYTE(v68) = sub_24F92CC38();
            (*(v73 + 8))(v78, v51);
            (*(v17 + 8))(v19, v16);
            swift_unknownObjectRelease();
            v69 = 0x80;
            goto LABEL_30;
          }
        }

        goto LABEL_10;
      }

      if (v29 == 5)
      {
        v114 = 5;
        sub_24E6F2268();
        v41 = v102;
        v42 = v109;
        sub_24F92CBA8();
        if (!v42)
        {
          v114 = 0;
          v43 = v97;
          v109 = sub_24F92CC58();
          v114 = 1;
          v70 = sub_24F92CC28();
          v71 = v100;
          v75 = v41;
          v66 = v30;
          v86 = v70;
          v87 = v76;
          v114 = 2;
          LOBYTE(v68) = sub_24F92CC38();
          (*(v71 + 8))(v75, v43);
          (*(v17 + 8))(v19, v16);
          swift_unknownObjectRelease();
          v69 = -96;
          goto LABEL_30;
        }

        goto LABEL_10;
      }

      v114 = 6;
      sub_24E6F2214();
      v52 = v109;
      sub_24F92CBA8();
      if (v52)
      {
        (*(v17 + 8))(v19, v16);
        swift_unknownObjectRelease();
        v36 = v108;
        return __swift_destroy_boxed_opaque_existential_1(v36);
      }

      v114 = 0;
      v53 = v95;
      v109 = sub_24F92CC58();
      v114 = 1;
      v86 = sub_24F92CC28();
      v87 = v79;
      v114 = 2;
      v83 = sub_24F92CC38();
      (*(v101 + 8))(v26, v53);
      (*(v17 + 8))(v19, v16);
      swift_unknownObjectRelease();
      v81 = v83 & 1 | 0xC0;
LABEL_31:
      v82 = v108;
      v66 = v104;
      goto LABEL_32;
    }

    if (v29)
    {
      v38 = v109;
      if (v29 == 1)
      {
        v114 = 1;
        sub_24E6F23B8();
        v68 = v23;
        v39 = v38;
        sub_24F92CBA8();
        v66 = v104;
        if (!v39)
        {
          v114 = 0;
          v40 = v91;
          v109 = sub_24F92CC58();
          v114 = 1;
          v57 = sub_24F92CC28();
          v58 = v90;
          v86 = v57;
          v87 = v59;
          v114 = 2;
          v60 = v68;
          LOBYTE(v68) = sub_24F92CC38();
          (*(v58 + 8))(v60, v40);
          (*(v17 + 8))(v19, v16);
          swift_unknownObjectRelease();
          v69 = 32;
          goto LABEL_30;
        }
      }

      else
      {
        v114 = 2;
        sub_24E6F2364();
        v46 = v38;
        sub_24F92CBA8();
        v66 = v104;
        if (!v46)
        {
          v114 = 0;
          v47 = v94;
          v48 = v24;
          v49 = v17;
          v109 = sub_24F92CC58();
          v114 = 1;
          v61 = sub_24F92CC28();
          v62 = v93;
          v86 = v61;
          v87 = v74;
          v114 = 2;
          v68 = sub_24F92CC38();
          (*(v62 + 8))(v48, v47);
          (*(v49 + 8))(v19, v16);
          swift_unknownObjectRelease();
          v69 = 64;
          goto LABEL_30;
        }
      }

      goto LABEL_10;
    }

    v114 = 0;
    sub_24E6F240C();
    v44 = v109;
    sub_24F92CBA8();
    if (!v44)
    {
      v114 = 0;
      v45 = v88;
      v109 = sub_24F92CC58();
      v114 = 1;
      v54 = sub_24F92CC28();
      v55 = v89;
      v86 = v54;
      v87 = v56;
      v114 = 2;
      v80 = sub_24F92CC38();
      (*(v55 + 8))(v22, v45);
      (*(v17 + 8))(v19, v16);
      swift_unknownObjectRelease();
      v81 = v80 & 1;
      goto LABEL_31;
    }
  }

LABEL_10:
  (*(v17 + 8))(v19, v16);
  swift_unknownObjectRelease();
LABEL_11:
  v36 = v108;
  return __swift_destroy_boxed_opaque_existential_1(v36);
}

uint64_t sub_24E6F187C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24E6EE2E0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t ChallengesRules.tryRule.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  return sub_24E6F2460();
}

__n128 ChallengesRules.tryRule.setter(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u8[8];
  sub_24E6F246C();
  result = v5;
  *v1 = v5;
  v1[1].n128_u64[0] = v2;
  v1[1].n128_u8[8] = v3;
  return result;
}

uint64_t ChallengesRules.timeRule.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  v5 = *(v1 + 56);
  *(a1 + 24) = v5;
  return sub_24E600ACC(v2, v3, v4, v5);
}

__n128 ChallengesRules.timeRule.setter(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u8[8];
  sub_24E600C4C(*(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56));
  result = v5;
  *(v1 + 32) = v5;
  *(v1 + 48) = v2;
  *(v1 + 56) = v3;
  return result;
}

__n128 ChallengesRules.init(tryRule:timeRule:)@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = a2[1].n128_u64[0];
  v6 = a2[1].n128_u8[8];
  *a3 = *a1;
  *(a3 + 16) = v3;
  *(a3 + 24) = v4;
  result = *a2;
  *(a3 + 32) = *a2;
  *(a3 + 48) = v5;
  *(a3 + 56) = v6;
  return result;
}

uint64_t sub_24E6F1A2C()
{
  if (*v0)
  {
    return 0x656C7552656D6974;
  }

  else
  {
    return 0x656C7552797274;
  }
}

uint64_t sub_24E6F1A68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656C7552797274 && a2 == 0xE700000000000000;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656C7552656D6974 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24F92CE08();

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

uint64_t sub_24E6F1B44(uint64_t a1)
{
  v2 = sub_24E6F2478();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E6F1B80(uint64_t a1)
{
  v2 = sub_24E6F2478();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ChallengesRules.encode(to:)(void *a1)
{
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218E38);
  v18 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v4 = &v13 - v3;
  v5 = *v1;
  v6 = *(v1 + 8);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + 32);
  v14 = *(v1 + 40);
  v15 = v9;
  v13 = *(v1 + 48);
  v23 = *(v1 + 56);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E6F2460();
  sub_24E6F2478();
  v10 = v16;
  sub_24F92D128();
  v19 = v5;
  v20 = v6;
  v21 = v7;
  v22 = v8;
  v24 = 0;
  sub_24E6F24CC();
  v11 = v17;
  sub_24F92CD48();
  sub_24E6F246C();
  if (!v11)
  {
    v19 = v15;
    v20 = v14;
    v21 = v13;
    v22 = v23;
    v24 = 1;
    sub_24E600ACC(v15, v14, v13, v23);
    sub_24E6F2520();
    sub_24F92CD48();
    sub_24E600C4C(v19, v20, v21, v22);
  }

  return (*(v18 + 8))(v4, v10);
}

uint64_t ChallengesRules.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218E58);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E6F2478();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v23) = 0;
  sub_24E6F2574();
  sub_24F92CC68();
  v9 = v26;
  v21 = v27;
  v22 = v28;
  v37 = v29;
  v38 = 1;
  sub_24E6F25C8();
  sub_24F92CC68();
  (*(v6 + 8))(v8, v5);
  v20 = v34;
  v10 = v35;
  v19 = *(&v34 + 1);
  v11 = v36;
  v12 = v9;
  v13 = v21;
  *&v23 = v9;
  *(&v23 + 1) = v21;
  v14 = v22;
  *&v24 = v22;
  v15 = v37;
  BYTE8(v24) = v37;
  *v25 = v34;
  *&v25[16] = v35;
  v25[24] = v36;
  v16 = v24;
  *a2 = v23;
  a2[1] = v16;
  a2[2] = *v25;
  *(a2 + 41) = *&v25[9];
  sub_24E6F261C(&v23, &v26);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v26 = v12;
  v27 = v13;
  v28 = v14;
  v29 = v15;
  v30 = v20;
  v31 = v19;
  v32 = v10;
  v33 = v11;
  return sub_24E6F2654(&v26);
}

unint64_t sub_24E6F20C4()
{
  result = qword_27F218D48;
  if (!qword_27F218D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F218D48);
  }

  return result;
}

unint64_t sub_24E6F2118()
{
  result = qword_27F218D50;
  if (!qword_27F218D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F218D50);
  }

  return result;
}

unint64_t sub_24E6F216C()
{
  result = qword_27F218D58;
  if (!qword_27F218D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F218D58);
  }

  return result;
}

unint64_t sub_24E6F21C0()
{
  result = qword_27F218DB8;
  if (!qword_27F218DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F218DB8);
  }

  return result;
}

unint64_t sub_24E6F2214()
{
  result = qword_27F218DC0;
  if (!qword_27F218DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F218DC0);
  }

  return result;
}

unint64_t sub_24E6F2268()
{
  result = qword_27F218DC8;
  if (!qword_27F218DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F218DC8);
  }

  return result;
}

unint64_t sub_24E6F22BC()
{
  result = qword_27F218DD0;
  if (!qword_27F218DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F218DD0);
  }

  return result;
}

unint64_t sub_24E6F2310()
{
  result = qword_27F218DD8;
  if (!qword_27F218DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F218DD8);
  }

  return result;
}

unint64_t sub_24E6F2364()
{
  result = qword_27F218DE0;
  if (!qword_27F218DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F218DE0);
  }

  return result;
}

unint64_t sub_24E6F23B8()
{
  result = qword_27F218DE8;
  if (!qword_27F218DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F218DE8);
  }

  return result;
}

unint64_t sub_24E6F240C()
{
  result = qword_27F218DF0;
  if (!qword_27F218DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F218DF0);
  }

  return result;
}

unint64_t sub_24E6F2478()
{
  result = qword_27F218E40;
  if (!qword_27F218E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F218E40);
  }

  return result;
}

unint64_t sub_24E6F24CC()
{
  result = qword_27F218E48;
  if (!qword_27F218E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F218E48);
  }

  return result;
}

unint64_t sub_24E6F2520()
{
  result = qword_27F218E50;
  if (!qword_27F218E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F218E50);
  }

  return result;
}

unint64_t sub_24E6F2574()
{
  result = qword_27F218E60;
  if (!qword_27F218E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F218E60);
  }

  return result;
}

unint64_t sub_24E6F25C8()
{
  result = qword_27F218E68;
  if (!qword_27F218E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F218E68);
  }

  return result;
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_24E6F26B8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 57))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_24E6F2700(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_24E6F2774(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7A && *(a1 + 25))
  {
    return (*a1 + 122);
  }

  v3 = ((*(a1 + 24) >> 5) & 0xFFFFFF87 | (8 * ((*(a1 + 24) >> 1) & 0xF))) ^ 0x7F;
  if (v3 >= 0x79)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_24E6F27C8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x79)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 122;
    if (a3 >= 0x7A)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7A)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = 2 * (((-a2 >> 3) & 0xF) - 16 * a2);
    }
  }

  return result;
}

unint64_t sub_24E6F291C()
{
  result = qword_27F218E70;
  if (!qword_27F218E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F218E70);
  }

  return result;
}

unint64_t sub_24E6F2974()
{
  result = qword_27F218E78;
  if (!qword_27F218E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F218E78);
  }

  return result;
}

unint64_t sub_24E6F29CC()
{
  result = qword_27F218E80;
  if (!qword_27F218E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F218E80);
  }

  return result;
}

unint64_t sub_24E6F2A24()
{
  result = qword_27F218E88;
  if (!qword_27F218E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F218E88);
  }

  return result;
}

unint64_t sub_24E6F2A7C()
{
  result = qword_27F218E90;
  if (!qword_27F218E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F218E90);
  }

  return result;
}

unint64_t sub_24E6F2AD4()
{
  result = qword_27F218E98;
  if (!qword_27F218E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F218E98);
  }

  return result;
}

unint64_t sub_24E6F2B2C()
{
  result = qword_27F218EA0;
  if (!qword_27F218EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F218EA0);
  }

  return result;
}

unint64_t sub_24E6F2B84()
{
  result = qword_27F218EA8;
  if (!qword_27F218EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F218EA8);
  }

  return result;
}

unint64_t sub_24E6F2BDC()
{
  result = qword_27F218EB0;
  if (!qword_27F218EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F218EB0);
  }

  return result;
}

unint64_t sub_24E6F2C34()
{
  result = qword_27F218EB8;
  if (!qword_27F218EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F218EB8);
  }

  return result;
}

unint64_t sub_24E6F2C8C()
{
  result = qword_27F218EC0;
  if (!qword_27F218EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F218EC0);
  }

  return result;
}

unint64_t sub_24E6F2CE4()
{
  result = qword_27F218EC8;
  if (!qword_27F218EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F218EC8);
  }

  return result;
}

unint64_t sub_24E6F2D3C()
{
  result = qword_27F218ED0;
  if (!qword_27F218ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F218ED0);
  }

  return result;
}

unint64_t sub_24E6F2D94()
{
  result = qword_27F218ED8;
  if (!qword_27F218ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F218ED8);
  }

  return result;
}

unint64_t sub_24E6F2DEC()
{
  result = qword_27F218EE0;
  if (!qword_27F218EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F218EE0);
  }

  return result;
}

unint64_t sub_24E6F2E44()
{
  result = qword_27F218EE8;
  if (!qword_27F218EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F218EE8);
  }

  return result;
}

unint64_t sub_24E6F2E9C()
{
  result = qword_27F218EF0;
  if (!qword_27F218EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F218EF0);
  }

  return result;
}

unint64_t sub_24E6F2EF4()
{
  result = qword_27F218EF8;
  if (!qword_27F218EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F218EF8);
  }

  return result;
}

unint64_t sub_24E6F2F4C()
{
  result = qword_27F218F00;
  if (!qword_27F218F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F218F00);
  }

  return result;
}

unint64_t sub_24E6F2FA4()
{
  result = qword_27F218F08;
  if (!qword_27F218F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F218F08);
  }

  return result;
}

unint64_t sub_24E6F2FFC()
{
  result = qword_27F218F10;
  if (!qword_27F218F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F218F10);
  }

  return result;
}

unint64_t sub_24E6F3054()
{
  result = qword_27F218F18;
  if (!qword_27F218F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F218F18);
  }

  return result;
}

unint64_t sub_24E6F30AC()
{
  result = qword_27F218F20;
  if (!qword_27F218F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F218F20);
  }

  return result;
}

unint64_t sub_24E6F3104()
{
  result = qword_27F218F28;
  if (!qword_27F218F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F218F28);
  }

  return result;
}

unint64_t sub_24E6F315C()
{
  result = qword_27F218F30;
  if (!qword_27F218F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F218F30);
  }

  return result;
}

unint64_t sub_24E6F31B4()
{
  result = qword_27F218F38;
  if (!qword_27F218F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F218F38);
  }

  return result;
}

unint64_t sub_24E6F320C()
{
  result = qword_27F218F40;
  if (!qword_27F218F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F218F40);
  }

  return result;
}

unint64_t sub_24E6F3264()
{
  result = qword_27F218F48;
  if (!qword_27F218F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F218F48);
  }

  return result;
}

unint64_t sub_24E6F32BC()
{
  result = qword_27F218F50;
  if (!qword_27F218F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F218F50);
  }

  return result;
}

unint64_t sub_24E6F3314()
{
  result = qword_27F218F58;
  if (!qword_27F218F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F218F58);
  }

  return result;
}

unint64_t sub_24E6F336C()
{
  result = qword_27F218F60;
  if (!qword_27F218F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F218F60);
  }

  return result;
}

unint64_t sub_24E6F33C4()
{
  result = qword_27F218F68;
  if (!qword_27F218F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F218F68);
  }

  return result;
}

unint64_t sub_24E6F341C()
{
  result = qword_27F218F70;
  if (!qword_27F218F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F218F70);
  }

  return result;
}

unint64_t sub_24E6F3474()
{
  result = qword_27F218F78;
  if (!qword_27F218F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F218F78);
  }

  return result;
}

unint64_t sub_24E6F34CC()
{
  result = qword_27F218F80;
  if (!qword_27F218F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F218F80);
  }

  return result;
}

unint64_t sub_24E6F3524()
{
  result = qword_27F218F88[0];
  if (!qword_27F218F88[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F218F88);
  }

  return result;
}

uint64_t sub_24E6F3578(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73646E6F636573 && a2 == 0xE700000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736574756E696DLL && a2 == 0xE700000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7372756F68 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1937334628 && a2 == 0xE400000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x736B656577 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7368746E6F6DLL && a2 == 0xE600000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7372616579 && a2 == 0xE500000000000000)
  {

    return 6;
  }

  else
  {
    v6 = sub_24F92CE08();

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

uint64_t sub_24E6F37B0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x664F7265626D756ELL && a2 == 0xEC00000073796144;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x800000024FA46080 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E7265746E497369 && a2 == 0xEA00000000006C61)
  {

    return 2;
  }

  else
  {
    v6 = sub_24F92CE08();

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

uint64_t sub_24E6F38DC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x664F7265626D756ELL && a2 == 0xED00007372756F48;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x800000024FA46080 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E7265746E497369 && a2 == 0xEA00000000006C61)
  {

    return 2;
  }

  else
  {
    v6 = sub_24F92CE08();

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

uint64_t sub_24E6F3A0C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x664F7265626D756ELL && a2 == 0xEF736574756E694DLL;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x800000024FA46080 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E7265746E497369 && a2 == 0xEA00000000006C61)
  {

    return 2;
  }

  else
  {
    v6 = sub_24F92CE08();

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

uint64_t sub_24E6F3B3C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x664F7265626D756ELL && a2 == 0xEE007368746E6F4DLL;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x800000024FA46080 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E7265746E497369 && a2 == 0xEA00000000006C61)
  {

    return 2;
  }

  else
  {
    v6 = sub_24F92CE08();

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

uint64_t sub_24E6F3C6C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x664F7265626D756ELL && a2 == 0xEF73646E6F636553;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x800000024FA46080 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E7265746E497369 && a2 == 0xEA00000000006C61)
  {

    return 2;
  }

  else
  {
    v6 = sub_24F92CE08();

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

uint64_t sub_24E6F3D9C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x664F7265626D756ELL && a2 == 0xED0000736B656557;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x800000024FA46080 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E7265746E497369 && a2 == 0xEA00000000006C61)
  {

    return 2;
  }

  else
  {
    v6 = sub_24F92CE08();

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

uint64_t sub_24E6F3ECC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x664F7265626D756ELL && a2 == 0xED00007372616559;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x800000024FA46080 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E7265746E497369 && a2 == 0xEA00000000006C61)
  {

    return 2;
  }

  else
  {
    v6 = sub_24F92CE08();

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

uint64_t sub_24E6F400C()
{
  v0 = sub_24F928AE8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215720);
  sub_24F928F28();
  v4 = v10;
  v5 = v11;
  __swift_project_boxed_opaque_existential_1(v9, v10);
  (*(v5 + 40))(v4, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510);
  (*(v1 + 104))(v3, *MEMORY[0x277D21CA8], v0);
  v6 = sub_24F92A988();
  __swift_destroy_boxed_opaque_existential_1(v9);
  return v6;
}

unint64_t sub_24E6F4164()
{
  result = qword_27F216368;
  if (!qword_27F216368)
  {
    type metadata accessor for ResetDebugSettingsAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216368);
  }

  return result;
}

uint64_t GameAchievementsListDataIntentImplementation.perform(_:objectGraph:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24E67D094;

  return (sub_24E6F5D08)(a1);
}