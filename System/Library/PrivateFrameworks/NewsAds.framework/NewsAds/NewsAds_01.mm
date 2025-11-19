uint64_t BannerAdUpdate.init(model:request:journal:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v27 = a1;
  v28 = a2;
  v10 = *a3;
  v11 = sub_1D7702FA0();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7702F90();
  v16 = sub_1D7702F70();
  v18 = v17;
  (*(v12 + 8))(v15, v11);
  *a6 = v16;
  a6[1] = v18;
  v19 = v10[10];
  v20 = v10[11];
  v21 = v10[12];
  v22 = v10[13];
  v29 = a4;
  v30 = v19;
  v31 = v20;
  v32 = a5;
  v33 = v21;
  v34 = v22;
  v23 = type metadata accessor for BannerAdUpdate();
  (*(*(a4 - 8) + 32))(a6 + v23[17], v27, a4);
  v24 = v23[18];
  v29 = v19;
  v30 = v20;
  v31 = v21;
  v32 = v22;
  type metadata accessor for AdRequest();
  v25 = sub_1D77046B0();
  result = (*(*(v25 - 8) + 32))(a6 + v24, v28, v25);
  *(a6 + v23[19]) = a3;
  return result;
}

uint64_t sub_1D7679268(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_1D767928C(uint64_t a1)
{
  *(a1 + 8) = sub_1D7679440();
  result = sub_1D76794CC();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1D76792BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v23 = a6;
  v24 = a7;
  v21 = a2;
  v22 = a5;
  v20 = a1;
  v10 = *(*v7 + 88);
  v11 = *(*v7 + 96);
  v12 = *(*v7 + 104);
  v25 = *(*v7 + 80);
  v26 = v10;
  v27 = v11;
  v28 = v12;
  v13 = type metadata accessor for JournalEntry();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v19 - v16;
  v24(v20, a3, a4, v22, v23, v21, v25, v10, v11, v12);
  sub_1D766FFCC(v17, a3, a4);
  return (*(v14 + 8))(v17, v13);
}

unint64_t sub_1D7679440()
{
  result = qword_1EE0B0078;
  if (!qword_1EE0B0078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0B0078);
  }

  return result;
}

unint64_t sub_1D76794CC()
{
  result = qword_1EE0B0080;
  if (!qword_1EE0B0080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0B0080);
  }

  return result;
}

uint64_t sub_1D7679520@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, __int128 a10)
{
  v59 = a4;
  v55 = a2;
  v56 = a3;
  v54 = a9;
  v15 = type metadata accessor for AdContext();
  v49 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v16);
  v50 = &v46 - v17;
  v57 = a8;
  v58 = a7;
  *&v61 = a7;
  *(&v61 + 1) = a8;
  v53 = a10;
  v62 = a10;
  v18 = type metadata accessor for AdRequest();
  v60 = sub_1D77046B0();
  v19 = *(v60 - 8);
  v21 = MEMORY[0x1EEE9AC00](v60, v20);
  v51 = &v46 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v23);
  v25 = &v46 - v24;
  v26 = a1;
  sub_1D7679960(a1, &v61);
  v27 = v61;
  v28 = v62;
  v65[0] = v61;
  v65[1] = v62;
  v64 = v61;
  v29 = v61;

  v30 = v27;
  sub_1D7679D98();
  v31 = swift_dynamicCast();
  v52 = a6;
  if (v31)
  {
    v32 = v62;

    v33 = *(v19 + 16);
LABEL_6:
    v36 = v60;
    goto LABEL_7;
  }

  v47 = v15;
  v48 = a5;

  v33 = *(v19 + 16);
  v33(v25, a6, v60);
  v34 = *(v18 - 8);
  if ((*(v34 + 48))(v25, 1, v18) != 1)
  {
    v37 = v49;
    v38 = *(v49 + 16);
    v39 = &v25[*(v18 + 52)];
    v46 = v28;
    v40 = v50;
    v41 = v47;
    v38(v50, v39, v47);
    (*(v34 + 8))(v25, v18);
    v32 = *&v40[*(v41 + 36)];
    v42 = *(v37 + 8);

    v42(v40, v41);
    a5 = v48;
    goto LABEL_6;
  }

  v35 = v60;
  (*(v19 + 8))(v25, v60);
  v32 = 0;
  a5 = v48;
  v36 = v35;
LABEL_7:
  v64 = v32;
  v61 = 0u;
  v62 = 0u;
  v63 = 1;
  v43 = v51;
  v33(v51, v52, v36);

  v44 = v56;

  sub_1D766FA5C(v55, v44, v65, v59, a5, &v64, &v61, v43, v54, v58, v57, v53, *(&v53 + 1));
}

void sub_1D7679960(void *a1@<X0>, void *a2@<X8>)
{
  v22 = a1;
  v4 = a1;
  v5 = a1;
  sub_1D7679D98();
  if (swift_dynamicCast() && (v21 & 1) == 0)
  {
    v13 = v20;

    sub_1D7704740();

    v19[4] = v20;
    v14 = MEMORY[0x1E69E6530];
    v15 = sub_1D7704A10();
    MEMORY[0x1DA6FF0D0](v15);

    v11 = 0xD000000000000010;
    v9 = 0x80000001D77162F0;
    sub_1D76784A8(0, &qword_1EE0AEC20, &type metadata for JournalEntryStatus.Info, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1D7708FD0;
    *(v10 + 72) = v14;
    *(v10 + 32) = 0x6F4320726F727245;
    *(v10 + 40) = 0xEA00000000006564;
    *(v10 + 48) = v13;
    sub_1D7703870();
    v16 = sub_1D7703860();
    v19[3] = MEMORY[0x1E69E6158];
    v19[0] = v16;
    v19[1] = v17;
    *(v10 + 80) = 0x64656C6C69666E55;
    *(v10 + 88) = 0xEF6E6F7361655220;
    sub_1D766B74C(v19, (v10 + 96));
  }

  else
  {

    v20 = a1;
    v6 = a1;
    if (swift_dynamicCast())
    {

      v7 = v19[0];
      v8 = v19[1];

      v9 = 0x80000001D77162C0;
      sub_1D76784A8(0, &qword_1EE0AEC20, &type metadata for JournalEntryStatus.Info, MEMORY[0x1E69E6F90]);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_1D7708FE0;
      *(v10 + 72) = MEMORY[0x1E69E6158];
      *(v10 + 48) = v7;
      *(v10 + 56) = v8;
      *(v10 + 32) = 0x20676E697373694DLL;
      *(v10 + 40) = 0xEB0000000079654BLL;

      v11 = 0xD000000000000025;
    }

    else
    {

      v19[0] = a1;
      v12 = a1;
      if (swift_dynamicCast() && v20 == 2)
      {

        v10 = MEMORY[0x1E69E7CC0];
        v9 = 0xEC00000064656C62;
        v11 = 0x6173696420736441;
      }

      else
      {

        v19[0] = a1;
        v18 = a1;
        if (swift_dynamicCast() && v20 == 1)
        {

          v9 = 0x80000001D77162A0;
          v11 = 0xD000000000000019;
        }

        else
        {

          v20 = a1;
          sub_1D7704850();

          v11 = 0;
          v9 = 0xE000000000000000;
        }

        v10 = MEMORY[0x1E69E7CC0];
      }
    }
  }

  *a2 = a1;
  a2[1] = v11;
  a2[2] = v9;
  a2[3] = v10;
}

unint64_t sub_1D7679D68(uint64_t a1)
{
  *(a1 + 8) = sub_1D7679DFC();
  result = sub_1D7679E50();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D7679D98()
{
  result = qword_1EE0AEBD0;
  if (!qword_1EE0AEBD0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE0AEBD0);
  }

  return result;
}

unint64_t sub_1D7679DFC()
{
  result = qword_1EE0AE8D0;
  if (!qword_1EE0AE8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0AE8D0);
  }

  return result;
}

unint64_t sub_1D7679E50()
{
  result = qword_1EE0AE8E0;
  if (!qword_1EE0AE8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0AE8E0);
  }

  return result;
}

uint64_t sub_1D7679EA4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t SponsorshipAdContext.init(provider:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  AdContextDataProviding.data<A>(for:)(&type metadata for AppAdData, v5, &type metadata for AppAdData, v6);
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v7 = v38;
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  AdContextDataProviding.data<A>(for:)(&type metadata for UserAdData, v8, &type metadata for UserAdData, v9);
  v10 = v38;
  v11 = a1[3];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  AdContextDataProviding.data<A>(for:)(&type metadata for PlacementAdData, v11, &type metadata for PlacementAdData, v12);
  v13 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  AdContextDataProviding.data<A>(for:)(&type metadata for SponsorshipAdData, v13, &type metadata for SponsorshipAdData, v14);
  v30 = v38;
  v29 = v38;
  v67 = v39;
  v31 = v41;
  v27 = v42;
  v28 = v40;
  v15 = v43;
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  AdContextDataProviding.dataIfPresent<A>(for:)(&type metadata for FeedAdData, v16, &type metadata for FeedAdData, v17);
  v63 = v57;
  v64 = v58;
  v65 = v59;
  v66 = v60;
  v61 = v55;
  v62 = v56;
  v18 = a1[3];
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v18);
  AdContextDataProviding.dataIfPresent<A>(for:)(&type metadata for ReferralAdData, v18, &type metadata for ReferralAdData, v19);
  LOBYTE(v32) = v38;
  *(&v32 + 1) = v38;
  LOBYTE(v33) = v38;
  v20 = v39;
  *(&v33 + 1) = v38;
  *&v34 = v39;
  BYTE8(v34) = v40;
  *&v35 = v41;
  BYTE8(v35) = v42;
  *v36 = v43;
  *&v36[40] = v57;
  *&v36[56] = v58;
  *&v36[72] = v59;
  *&v36[88] = v60;
  *&v36[8] = v55;
  *&v36[24] = v56;
  LOBYTE(v18) = v54;
  v37 = v54;
  *(a2 + 160) = v54;
  v21 = *&v36[16];
  *(a2 + 64) = *v36;
  *(a2 + 80) = v21;
  v22 = v35;
  *(a2 + 32) = v34;
  *(a2 + 48) = v22;
  v23 = *&v36[80];
  *(a2 + 128) = *&v36[64];
  *(a2 + 144) = v23;
  v24 = *&v36[48];
  *(a2 + 96) = *&v36[32];
  *(a2 + 112) = v24;
  v25 = v33;
  *a2 = v32;
  *(a2 + 16) = v25;
  sub_1D767B4C8(&v32, &v38);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v49 = v63;
  v50 = v64;
  v51 = v65;
  v47 = v61;
  LOBYTE(v38) = v7;
  v39 = v10;
  v40 = v30;
  v41 = v29;
  v42 = v20;
  LOBYTE(v43) = v28;
  v44 = v31;
  v45 = v27;
  v46 = v15;
  v52 = v66;
  v48 = v62;
  v53 = v18;
  return sub_1D767B518(&v38);
}

char *AdContextBuilder.data<A>(for:namespace:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v5 = v4;
  v7 = a2;
  v59 = a1;
  v62 = a4;
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v60 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D77046B0();
  v72 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10, v11);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v53 - v16;
  v18 = *v7;
  v19 = v7[1];
  LODWORD(v7) = *(v7 + 16);
  MetatypeMetadata = swift_getMetatypeMetadata();
  v69[0] = a3;
  v58 = v18;
  v67[0] = v18;
  v67[1] = v19;
  v57 = v19;
  v56 = v7;
  v68 = v7;
  v20 = sub_1D766C108(v69, v67);
  v22 = v21;
  __swift_destroy_boxed_opaque_existential_1(v69);
  v69[0] = *(v5 + 40);
  v63 = a3;
  v64 = v5;
  v55 = v20;
  v65 = v20;
  v66 = v22;
  sub_1D7703390();

  sub_1D7703580();
  v23 = v10;
  v24 = v72;

  (*(v24 + 16))(v14, v17, v23);
  v25 = (*(v8 + 48))(v14, 1, a3);
  v28 = *(v24 + 8);
  v27 = v24 + 8;
  v26 = v28;
  if (v25 != 1)
  {
    v26(v17, v23);

    v30 = *(v8 + 32);
    v31 = v60;
    v30(v60, v14, a3);
    return (v30)(v62, v31, a3);
  }

  v60 = v22;
  v54 = v26;
  v26(v14, v23);
  if (*(v5 + 16))
  {

    v69[0] = v58;
    v69[1] = v57;
    v70 = v56;
    AdContextBuilder.data<A>(for:namespace:)(v59, v69, a3);
    v54(v17, v23);
  }

  v62 = v17;
  sub_1D7668958(0, &unk_1EE0AEBE0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7708DE0;
  *(inited + 32) = v5;

  v33 = sub_1D767B548();
  v69[0] = inited;
  sub_1D767BF84(v33);
  v34 = v69[0];
  if (v69[0] >> 62)
  {
    v35 = sub_1D7704880();
  }

  else
  {
    v35 = *((v69[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v36 = v60;
  if (!v35)
  {

    v37 = MEMORY[0x1E69E7CC0];
LABEL_21:
    sub_1D76ADCB0();
    swift_allocError();
    *v52 = v55;
    v52[1] = v36;
    v52[2] = v37;
    swift_willThrow();
    return (v54)(v62, v23);
  }

  v67[0] = MEMORY[0x1E69E7CC0];
  result = sub_1D767C300(0, v35 & ~(v35 >> 63), 0);
  if ((v35 & 0x8000000000000000) == 0)
  {
    v72 = v27;
    v61 = v23;
    v37 = v67[0];
    if ((v34 & 0xC000000000000001) != 0)
    {
      v38 = 0;
      do
      {
        v39 = MEMORY[0x1DA6FF530](v38, v34);
        v40 = AdContextBuilder.path.getter();
        swift_beginAccess();
        v41 = *(v39 + 48);

        swift_unknownObjectRelease();
        v67[0] = v37;
        v43 = *(v37 + 16);
        v42 = *(v37 + 24);
        if (v43 >= v42 >> 1)
        {
          sub_1D767C300((v42 > 1), v43 + 1, 1);
          v37 = v67[0];
        }

        ++v38;
        *(v37 + 16) = v43 + 1;
        v44 = v37 + 16 * v43;
        *(v44 + 32) = v40;
        *(v44 + 40) = v41;
      }

      while (v35 != v38);
    }

    else
    {
      v45 = 32;
      do
      {
        v46 = *(v34 + v45);

        v47 = AdContextBuilder.path.getter();
        swift_beginAccess();
        v48 = *(v46 + 48);

        v67[0] = v37;
        v50 = *(v37 + 16);
        v49 = *(v37 + 24);
        if (v50 >= v49 >> 1)
        {
          sub_1D767C300((v49 > 1), v50 + 1, 1);
          v37 = v67[0];
        }

        *(v37 + 16) = v50 + 1;
        v51 = v37 + 16 * v50;
        *(v51 + 32) = v47;
        *(v51 + 40) = v48;
        v45 += 8;
        --v35;
      }

      while (v35);
    }

    v23 = v61;
    v36 = v60;
    goto LABEL_21;
  }

  __break(1u);
  return result;
}

uint64_t AdContextDataProviding.data<A>(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[0] = 0;
  v5[1] = 0;
  v6 = -1;
  return (*(a4 + 8))(a1, v5, a3, a2);
}

uint64_t sub_1D767A944@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  swift_beginAccess();
  v10 = *(a1 + 48);
  if (*(v10 + 16) && (v11 = sub_1D76689AC(a2, a3), (v12 & 1) != 0))
  {
    sub_1D7667C54(*(v10 + 56) + 40 * v11, v15);
  }

  else
  {
    v16 = 0;
    memset(v15, 0, sizeof(v15));
  }

  swift_endAccess();
  sub_1D766940C(0, &qword_1EE0AFCC8, &qword_1EE0AFCD0, &protocol descriptor for AdContextDataType, MEMORY[0x1E69E6720]);
  v13 = swift_dynamicCast();
  return (*(*(a4 - 8) + 56))(a5, v13 ^ 1u, 1, a4);
}

uint64_t sub_1D767AA80(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1D767AB38(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FeedGroupAdData.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for FeedGroupAdData.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_1D767AD18(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1D767AD54(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t AdContextDataProviding.dataIfPresent<A>(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[0] = 0;
  v5[1] = 0;
  v6 = -1;
  return (*(a4 + 16))(a1, v5, a3, a2);
}

uint64_t AdContextBuilder.dataIfPresent<A>(for:namespace:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v5 = v4;
  v32 = a1;
  v34 = a4;
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v33 = &v28[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_1D77046B0();
  v11 = *(v10 - 8);
  v13 = MEMORY[0x1EEE9AC00](v10, v12);
  v15 = &v28[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = &v28[-v17];
  v19 = *a2;
  v20 = a2[1];
  v21 = *(a2 + 16);
  v40[0] = *(v5 + 40);
  v35 = a3;
  v36 = v5;
  v30 = v20;
  v31 = v19;
  v37 = v19;
  v38 = v20;
  v29 = v21;
  v39 = v21;
  sub_1D7703390();

  sub_1D7703580();

  (*(v11 + 16))(v15, v18, v10);
  v22 = (*(v8 + 48))(v15, 1, a3);
  v23 = *(v11 + 8);
  if (v22 == 1)
  {
    v23(v15, v10);
    if (*(v5 + 16))
    {
      v40[0] = v31;
      v40[1] = v30;
      v41 = v29;
      AdContextBuilder.dataIfPresent<A>(for:namespace:)(v32, v40, a3);
      return (v23)(v18, v10);
    }

    else
    {
      v23(v18, v10);
      return (*(v8 + 56))(v34, 1, 1, a3);
    }
  }

  else
  {
    v23(v18, v10);
    v25 = *(v8 + 32);
    v26 = v33;
    v25(v33, v15, a3);
    v27 = v34;
    v25(v34, v26, a3);
    return (*(v8 + 56))(v27, 0, 1, a3);
  }
}

uint64_t sub_1D767B140@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *(&v22 + 1) = swift_getMetatypeMetadata();
  *&v21 = a5;
  v24[0] = a2;
  v24[1] = a3;
  v25 = a4;
  v12 = sub_1D766C108(&v21, v24);
  v14 = v13;
  __swift_destroy_boxed_opaque_existential_1(&v21);
  swift_beginAccess();
  v15 = *(a1 + 48);
  if (!*(v15 + 16))
  {

    goto LABEL_5;
  }

  v16 = sub_1D76689AC(v12, v14);
  v18 = v17;

  if ((v18 & 1) == 0)
  {
LABEL_5:
    v23 = 0;
    v21 = 0u;
    v22 = 0u;
    goto LABEL_6;
  }

  sub_1D7667C54(*(v15 + 56) + 40 * v16, &v21);
LABEL_6:
  swift_endAccess();
  sub_1D766940C(0, &qword_1EE0AFCC8, &qword_1EE0AFCD0, &protocol descriptor for AdContextDataType, MEMORY[0x1E69E6720]);
  v19 = swift_dynamicCast();
  return (*(*(a5 - 8) + 56))(a6, v19 ^ 1u, 1, a5);
}

uint64_t sub_1D767B2B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D767B30C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t storeEnumTagSinglePayload for FeedGroupAdData.AdjacentPosition(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FeedGroupAdData.AdjacentPosition(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t get_enum_tag_for_layout_string_7NewsAds10FeedAdDataVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1D767B548()
{
  v1 = MEMORY[0x1E69E7CC0];
  v6 = MEMORY[0x1E69E7CC0];
  v2 = *(v0 + 16);

  if (v2)
  {
    do
    {

      MEMORY[0x1DA6FF1B0](v3);
      if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D7704430();
      }

      sub_1D7704460();
      v1 = v6;
      v4 = *(v2 + 16);

      v2 = v4;
    }

    while (v4);
  }

  return v1;
}

uint64_t sub_1D767B610(unint64_t a1, void (*a2)(uint64_t, void, unint64_t))
{
  if (a1 >> 62)
  {
    v5 = sub_1D7704880();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v2 >> 62))
  {
    v6 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = __OFADD__(v6, v5);
    result = v6 + v5;
    if (!v7)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = sub_1D7704880();
  v7 = __OFADD__(v15, v5);
  result = v15 + v5;
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_1D767BF9C(result);
  v9 = *v2;
  v10 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v10 + 8 * *(v10 + 0x10) + 32, (*(v10 + 0x18) >> 1) - *(v10 + 0x10), a1);
  v12 = v11;

  if (v12 < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12 < 1)
  {
LABEL_9:
    *v2 = v9;
    return result;
  }

  v13 = *(v10 + 16);
  v7 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (!v7)
  {
    *(v10 + 16) = v14;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1D767B708(void *a1, uint64_t a2, uint64_t a3)
{
  if (qword_1EE0AF008 != -1)
  {
    swift_once();
  }

  sub_1D77045A0();
  sub_1D7703ED0();
  __swift_project_boxed_opaque_existential_1((a3 + 16), *(a3 + 40));
  sub_1D7665328(0, &qword_1EE0B1C00);
  result = sub_1D7703410();
  if (!v56)
  {
    __break(1u);
    goto LABEL_46;
  }

  sub_1D7687CCC(v55, &qword_1EE0AF938, &qword_1EE0B1C00, &protocol descriptor for AdSegmentManagerType);
  __swift_project_boxed_opaque_existential_1((a3 + 16), *(a3 + 40));
  sub_1D7665328(0, qword_1EE0B12E0);
  result = sub_1D7703410();
  if (!v56)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  sub_1D7687CCC(v55, &qword_1EE0AF3F8, qword_1EE0B12E0, &protocol descriptor for AdStatusConditionManagerType);
  if (a1)
  {
    v6 = 1.0;
    v7 = 1.0;
    if ([a1 respondsToSelector_])
    {
      [a1 feedBannerAdRequestThrottle];
      v7 = v8;
    }

    if ([a1 respondsToSelector_])
    {
      [a1 articleBannerAdRequestThrottle];
      v6 = v9;
    }

    v10 = 1.0;
    v11 = 1.0;
    if ([a1 respondsToSelector_])
    {
      [a1 interstitialAdRequestThrottle];
      v11 = v12;
    }

    if ([a1 respondsToSelector_])
    {
      [a1 prerollAdRequestThrottle];
      v10 = v13;
    }

    v14 = 1.0;
    v15 = 1.0;
    if ([a1 respondsToSelector_])
    {
      [a1 nativeInFeedAdRequestThrottle];
      v15 = v16;
    }

    if ([a1 respondsToSelector_])
    {
      [a1 nativeInArticleAdRequestThrottle];
      v14 = v17;
    }
  }

  else
  {
    v14 = 1.0;
    v7 = 1.0;
    v6 = 1.0;
    v11 = 1.0;
    v10 = 1.0;
    v15 = 1.0;
  }

  sub_1D7687D3C(0, &qword_1EE0AEBF0, &qword_1EE0AEBC0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1D77091E0;
  v19 = MEMORY[0x1E69E6448];
  v20 = MEMORY[0x1E69E64A8];
  *(v18 + 56) = MEMORY[0x1E69E6448];
  *(v18 + 64) = v20;
  *(v18 + 32) = v7;
  *(v18 + 96) = v19;
  *(v18 + 104) = v20;
  *(v18 + 72) = v6;
  *(v18 + 136) = v19;
  *(v18 + 144) = v20;
  *(v18 + 112) = v11;
  *(v18 + 176) = v19;
  *(v18 + 184) = v20;
  *(v18 + 152) = v10;
  *(v18 + 216) = v19;
  *(v18 + 224) = v20;
  *(v18 + 192) = v15;
  *(v18 + 256) = v19;
  *(v18 + 264) = v20;
  *(v18 + 232) = v14;
  sub_1D77045A0();
  sub_1D7703ED0();

  v21 = objc_opt_self();
  *&v22 = v7;
  *&v23 = v6;
  *&v24 = v11;
  *&v25 = v10;
  *&v26 = v15;
  *&v27 = v14;
  [v21 rateLimitRequestsInFeed:v22 inArticle:v23 betweenArticle:v24 videoInArticle:v25 nativeInFeed:v26 nativeInArticle:v27];
  v28 = sub_1D7687790(a3, a1);
  v29 = swift_allocObject();
  v30 = MEMORY[0x1E69E6530];
  *(v29 + 16) = xmmword_1D7708FE0;
  v31 = MEMORY[0x1E69E65A8];
  *(v29 + 56) = v30;
  *(v29 + 64) = v31;
  *(v29 + 32) = v28;
  sub_1D77045A0();
  sub_1D7703ED0();

  [v21 setContextPrefetchLimit_];
  if (*(a3 + 56) != 1)
  {
LABEL_44:
    sub_1D7703D70();
    return sub_1D7703D60();
  }

  __swift_project_boxed_opaque_existential_1((a3 + 16), *(a3 + 40));
  sub_1D7665328(0, &qword_1EE0B0EC0);
  result = sub_1D7703410();
  if (v54)
  {
    sub_1D7667CB8(&v53, v55);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_1D7708FE0;
    *&v53 = 0;
    *(&v53 + 1) = 0xE000000000000000;
    v33 = v56;
    v34 = v57;
    __swift_project_boxed_opaque_existential_1(v55, v56);
    v35 = (*(v34 + 48))(v33, v34);
    if (v35 > 2)
    {
      switch(v35)
      {
        case 3:
          v36 = 3360081;
          goto LABEL_35;
        case 4:
          v36 = 3425617;
          goto LABEL_35;
        case 5:
          v36 = 3491153;
          goto LABEL_35;
      }
    }

    else
    {
      switch(v35)
      {
        case 0:
          v37 = 0xEA00000000006E6FLL;
          v36 = 0x69746375646F7270;
LABEL_36:
          MEMORY[0x1DA6FF0D0](v36, v37);

          v38 = v53;
          *(v32 + 56) = MEMORY[0x1E69E6158];
          *(v32 + 64) = sub_1D7668854();
          *(v32 + 32) = v38;
          sub_1D77045A0();
          sub_1D7703ED0();

          v39 = [objc_opt_self() sharedInstance];
          if (v39)
          {
            v40 = v39;
            v41 = v56;
            v42 = v57;
            __swift_project_boxed_opaque_existential_1(v55, v56);
            [v40 setServerToTest_];
          }

          v43 = objc_allocWithZone(MEMORY[0x1E695E000]);
          v44 = sub_1D7704230();
          v45 = [v43 initWithSuiteName_];

          if (!v45)
          {
            sub_1D7704590();
            sub_1D7703ED0();
            return __swift_destroy_boxed_opaque_existential_1(v55);
          }

          v46 = v56;
          v47 = v57;
          __swift_project_boxed_opaque_existential_1(v55, v56);
          if ((*(v47 + 32))(v46, v47))
          {
            v48 = sub_1D7704230();
            v49 = sub_1D7704230();
            [v45 setObject:v48 forKey:v49];
          }

          else
          {
            v49 = sub_1D7704230();
            [v45 removeObjectForKey_];
          }

          v50 = v56;
          v51 = v57;
          __swift_project_boxed_opaque_existential_1(v55, v56);
          LOBYTE(v50) = (*(v51 + 40))(v50, v51);
          v52 = sub_1D7704230();
          [v45 setBool:v50 & 1 forKey:v52];

          __swift_destroy_boxed_opaque_existential_1(v55);
          goto LABEL_44;
        case 1:
          v37 = 0xE300000000000000;
          v36 = 3229009;
          goto LABEL_36;
        case 2:
          v36 = 3294545;
LABEL_35:
          v37 = 0xE300000000000000;
          goto LABEL_36;
      }
    }

    v37 = 0xE700000000000000;
    v36 = 0x6E776F6E6B6E75;
    goto LABEL_36;
  }

LABEL_47:
  __break(1u);
  return result;
}

uint64_t sub_1D767BF9C(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_1D7704880();
LABEL_9:
  result = sub_1D7704770();
  *v1 = result;
  return result;
}

uint64_t sub_1D767C03C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1D7704880();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1D7704880();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1D768B308(0, &qword_1EC9BD168, type metadata accessor for AdContextBuilder);
          sub_1D768B35C(&qword_1EC9BD170, &qword_1EC9BD168, type metadata accessor for AdContextBuilder);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_1D76ADA90(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for AdContextBuilder();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

char *sub_1D767C1DC(char *result, int64_t a2, char a3, char *a4, unint64_t *a5, uint64_t a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_1D7678458(0, a5, a6, MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[16 * v10])
    {
      memmove(v15, v16, 16 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

char *sub_1D767C300(char *a1, int64_t a2, char a3)
{
  result = sub_1D767C1DC(a1, a2, a3, *v3, &qword_1EE0AEC10, &type metadata for AdContextBuilderSnapshot.Entry);
  *v3 = result;
  return result;
}

uint64_t AdContextBuilder.__deallocating_deinit()
{
  AdContextBuilder.deinit();

  return swift_deallocClassInstance();
}

uint64_t AdContextBuilder.deinit()
{

  v1 = *(v0 + 16);
  *(v0 + 16) = 0;

  if (v1)
  {
    do
    {

      if (!swift_isUniquelyReferenced_native())
      {
        break;
      }

      v2 = *(v1 + 16);
      swift_retain_n();

      v1 = v2;
    }

    while (v2);
  }

  return v0;
}

uint64_t sub_1D767C3F4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a2;
  (*(*(a3 - 8) + 32))(a4, a1);
  result = type metadata accessor for AdContext();
  *(a4 + *(result + 36)) = v5;
  return result;
}

uint64_t AdManager.createRequest<A, B, C>(for:context:placement:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v5 = v4;
  v92 = a3;
  v9 = *a1;
  v83 = *(*a1 + 104);
  v81 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v82 = v62 - v10;
  v12 = *(v11 + 88);
  v13 = *(v11 + 112);
  v14 = type metadata accessor for AdContext();
  v78 = *(v14 - 8);
  v79 = v14;
  MEMORY[0x1EEE9AC00](v14, v15);
  v80 = v62 - v16;
  v76 = sub_1D7702FA0();
  v75 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76, v17);
  v19 = v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_1D7703140();

  if (v88 == 1)
  {
    v67 = v19;
    v74 = a4;
    v20 = v4[6];
    v21 = v5[7];
    __swift_project_boxed_opaque_existential_1(v5 + 3, v5[6]);
    v22 = *(v21 + 16);
    v23 = v9[12];
    v24 = v9[15];
    v25 = v9[16];
    v72 = v12;
    v71 = v13;
    v22(&v88, a1, a2, v12, v23, v83, v13, v24, v25, v20, v21);
    v70 = v88;
    v86 = v88;
    v87 = v89;
    v68 = v89;
    v73 = a2;
    sub_1D767CF5C(a1, a2, v92, &v88);
    v62[1] = v5;
    if (qword_1EE0AF008 != -1)
    {
      swift_once();
    }

    v26 = qword_1EE0AF010;
    sub_1D76694D8(0, &qword_1EE0AEBF0, &qword_1EE0AEBC0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v62[2] = v27;
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1D7708FD0;
    v29 = *(v25 + 8);
    v30 = v83;
    v65 = v25 + 8;
    v64 = v29;
    v31 = v29(v83, v25);
    v33 = v32;
    v34 = MEMORY[0x1E69E6158];
    *(v28 + 56) = MEMORY[0x1E69E6158];
    v35 = sub_1D7668854();
    *(v28 + 32) = v31;
    *(v28 + 40) = v33;
    v37 = a1[2];
    v36 = a1[3];
    *(v28 + 96) = v34;
    *(v28 + 104) = v35;
    *(v28 + 64) = v35;
    *(v28 + 72) = v37;
    v63 = v37;
    *(v28 + 80) = v36;
    v66 = v36;

    sub_1D77045A0();
    v69 = v26;
    sub_1D7703ED0();

    v38 = v90;
    v39 = v91;
    __swift_project_boxed_opaque_existential_1(&v88, v90);
    v40 = *(v39 + 16);
    v77 = v25;
    v40(v92, v30, v25, v38, v39);
    v41 = v67;
    sub_1D7702F90();
    v42 = sub_1D7702F70();
    v44 = v43;
    (*(v75 + 8))(v41, v76);
    sub_1D7667C54(&v88, &v86);
    v84 = v42;
    v85 = v44;

    sub_1D77035F0();

    v45 = v68;
    if (v68)
    {
      v46 = swift_allocObject();
      *(v46 + 16) = xmmword_1D7709070;

      v47 = v64(v30, v77);
      v48 = MEMORY[0x1E69E6158];
      *(v46 + 56) = MEMORY[0x1E69E6158];
      *(v46 + 64) = v35;
      *(v46 + 32) = v47;
      *(v46 + 40) = v49;
      *(v46 + 96) = v48;
      *(v46 + 104) = v35;
      v50 = v66;
      *(v46 + 72) = v63;
      *(v46 + 80) = v50;
      *(v46 + 136) = v48;
      *(v46 + 144) = v35;
      *(v46 + 112) = v42;
      *(v46 + 120) = v44;
      *(v46 + 176) = v48;
      *(v46 + 184) = v35;
      v51 = v70;
      *(v46 + 152) = v70;
      *(v46 + 160) = v45;

      sub_1D77045A0();
      sub_1D7703ED0();
      v52 = v73;
    }

    else
    {
      v55 = swift_allocObject();
      *(v55 + 16) = xmmword_1D7709050;
      v56 = v64(v30, v77);
      v57 = MEMORY[0x1E69E6158];
      *(v55 + 56) = MEMORY[0x1E69E6158];
      *(v55 + 64) = v35;
      *(v55 + 32) = v56;
      *(v55 + 40) = v58;
      *(v55 + 96) = v57;
      *(v55 + 104) = v35;
      v59 = v66;
      *(v55 + 72) = v63;
      *(v55 + 80) = v59;
      *(v55 + 136) = v57;
      *(v55 + 144) = v35;
      *(v55 + 112) = v42;
      *(v55 + 120) = v44;

      sub_1D77045A0();
      sub_1D7703ED0();
      v52 = v73;
      v51 = v70;
    }

    v60 = v80;
    (*(v78 + 16))(v80, v52, v79);
    v61 = v82;
    (*(v81 + 16))(v82, v92, v30);
    v86 = v51;
    v87 = v45;
    sub_1D767E444(v42, v44, v60, v61, &v86, v30, v74);
    return __swift_destroy_boxed_opaque_existential_1(&v88);
  }

  else
  {
    sub_1D76EFB04();
    swift_allocError();
    *v53 = 2;
    return swift_willThrow();
  }
}

uint64_t sub_1D767CC64@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t **a3@<X8>)
{
  v4 = v3;
  v7 = a1[2];
  v8 = a1[3];
  v9 = *a1;
  swift_beginAccess();
  v10 = *(v3 + 16);
  if (!*(v10 + 16) || (v11 = sub_1D76689AC(v7, v8), (v12 & 1) == 0))
  {
    result = swift_endAccess();
    goto LABEL_6;
  }

  v13 = *(*(v10 + 56) + 8 * v11);
  v33 = v13;
  v14 = swift_endAccess();
  v15 = &v30;
  MEMORY[0x1EEE9AC00](v14, v16);
  v17 = *(v9 + 104);
  v28[1] = *(v9 + 88);
  v28[2] = v17;
  v28[3] = *(v9 + 120);
  v29 = a2;
  swift_bridgeObjectRetain_n();
  v18 = sub_1D76A7FC8(sub_1D76A8194, v28, v13);
  v20 = v19;

  if (v20)
  {

LABEL_6:
    *a3 = 0;
    a3[1] = 0;
    return result;
  }

  if ((v18 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v18 >= *(v13 + 16))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v22 = v13 + 32 * v18;
  v15 = *(v22 + 32);
  v20 = *(v22 + 40);

  sub_1D76A808C(v18, v32);

  v23 = v33;
  swift_beginAccess();
  swift_bridgeObjectRetain_n();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v31 = *(v4 + 16);
  *(v4 + 16) = 0x8000000000000000;
  sub_1D76CBEEC(v23, v7, v8, isUniquelyReferenced_nonNull_native);

  *(v4 + 16) = v31;
  swift_endAccess();
  if (qword_1EE0AF008 != -1)
  {
LABEL_13:
    swift_once();
  }

  sub_1D766DF6C();
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1D7708FD0;
  v26 = MEMORY[0x1E69E6158];
  *(v25 + 56) = MEMORY[0x1E69E6158];
  v27 = sub_1D7668854();
  *(v25 + 32) = v7;
  *(v25 + 40) = v8;
  *(v25 + 96) = v26;
  *(v25 + 104) = v27;
  *(v25 + 64) = v27;
  *(v25 + 72) = v15;
  *(v25 + 80) = v20;

  sub_1D77045A0();
  sub_1D7703ED0();

  *a3 = v15;
  a3[1] = v20;
  return result;
}

uint64_t sub_1D767CF5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = *(*a1 + 104);
  MEMORY[0x1EEE9AC00](a1, a2);
  v12 = *v10;
  v11 = v10[1];
  (*(v13 + 16))(&v31 - v9, v14, v8);
  sub_1D767D318();
  if (swift_dynamicCast())
  {
    v31 = v12;
    v32 = v11;
    v33 = a2;
    v34 = a4;
    sub_1D76EFCC0(&v37, &v40);
    v16 = v41;
    v15 = v42;
    __swift_project_boxed_opaque_existential_1(&v40, v41);
    v17 = v15[1];

    v35 = v17(v16, v15);
    v36 = v18;
    sub_1D77035E0();

    if (*(&v38 + 1))
    {
      sub_1D7667CB8(&v37, v34);
    }

    else
    {
      sub_1D76EFB58(&v37, &qword_1EE0AF0C0, qword_1EE0AF0C8, &protocol descriptor for PromotedContentContextWrapperType);
      __swift_project_boxed_opaque_existential_1((v4 + 64), *(v4 + 88));
      v21 = type metadata accessor for AdContext();
      *(&v38 + 1) = v21;
      *&v39 = &protocol witness table for AdContext<A>;
      *(&v39 + 1) = &protocol witness table for AdContext<A>;
      boxed_opaque_existential_2 = __swift_allocate_boxed_opaque_existential_2(&v37);
      (*(*(v21 - 8) + 16))(boxed_opaque_existential_2, v33, v21);
      v35 = v31;
      v36 = v32;
      v23 = v34;
      sub_1D767D438(&v37, a3, v34);
      __swift_destroy_boxed_opaque_existential_1(&v37);
      v24 = v41;
      v25 = v42;
      __swift_project_boxed_opaque_existential_1(&v40, v41);
      v26 = v25[1];

      v27 = v26(v24, v25);
      v29 = v28;
      sub_1D7667C54(v23, &v37);
      v35 = v27;
      v36 = v29;
      sub_1D77035F0();
    }
  }

  else
  {
    v38 = 0u;
    v39 = 0u;
    v37 = 0u;
    sub_1D767D3DC(&v37);
    __swift_project_boxed_opaque_existential_1((v4 + 64), *(v4 + 88));
    v19 = type metadata accessor for AdContext();
    v41 = v19;
    v42 = &protocol witness table for AdContext<A>;
    v43 = &protocol witness table for AdContext<A>;
    v20 = __swift_allocate_boxed_opaque_existential_2(&v40);
    (*(*(v19 - 8) + 16))(v20, a2, v19);
    *&v37 = v12;
    *(&v37 + 1) = v11;
    sub_1D767D438(&v40, a3, a4);
  }

  return __swift_destroy_boxed_opaque_existential_1(&v40);
}

unint64_t sub_1D767D318()
{
  result = qword_1EE0AFAD0;
  if (!qword_1EE0AFAD0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE0AFAD0);
  }

  return result;
}

void sub_1D767D384()
{
  if (!qword_1EE0AFAC8)
  {
    sub_1D767D318();
    v0 = sub_1D77046B0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0AFAC8);
    }
  }
}

uint64_t sub_1D767D3DC(uint64_t a1)
{
  sub_1D767D384();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D767D438@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_1D767D4C4(a1, v6);

  result = sub_1D767D528(v6, a2);
  a3[3] = &type metadata for PromotedContentContextWrapper;
  a3[4] = &off_1F5255318;
  *a3 = result;
  return result;
}

uint64_t sub_1D767D4C4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1D767D528(void *a1, uint64_t a2)
{
  sub_1D767D708(a2);
  v3 = a1[3];
  v4 = a1[5];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  (*(v4 + 16))(v3, v4);
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  (*(v6 + 8))(v5, v6);
  v7 = objc_allocWithZone(sub_1D7703850());
  v8 = sub_1D7703840();
  v9 = a1[3];
  v10 = a1[5];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  if ((*(v10 + 8))(v9, v10))
  {
    sub_1D7703820();
    swift_unknownObjectRelease();
  }

  v11 = a1[3];
  v12 = a1[5];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  if ((*(v12 + 24))(v11, v12))
  {
    sub_1D7703820();
    swift_unknownObjectRelease();
  }

  v13 = sub_1D7703830();

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v13;
}

double sub_1D767D708(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1, a1);
  (*(v2 + 16))(v9 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D767D894();
  if (swift_dynamicCast())
  {
    sub_1D7667CB8(v9, v11);
    v3 = v12;
    v4 = v13;
    __swift_project_boxed_opaque_existential_1(v11, v12);
    v5 = (*(v4 + 8))(v3, v4);
    __swift_destroy_boxed_opaque_existential_1(v11);
  }

  else
  {
    v10 = 0;
    memset(v9, 0, sizeof(v9));
    sub_1D767D8F8(v9);
    v6 = [objc_opt_self() mainScreen];
    [v6 bounds];
    v5 = v7;
  }

  return v5;
}

unint64_t sub_1D767D894()
{
  result = qword_1EE0AF6B0;
  if (!qword_1EE0AF6B0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE0AF6B0);
  }

  return result;
}

uint64_t sub_1D767D8F8(uint64_t a1)
{
  sub_1D7672EB8(0, &qword_1EE0AF6A8, sub_1D767D894, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SponsorshipAdContext.currentPromotableContentDepiction.getter()
{
  v21 = sub_1D7702FD0();
  v1 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v2);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D7702FA0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v0[1];
  v11 = v0[6];
  v12 = v0[10];
  v13 = v0[15];
  v17 = v0[16];
  if (v12)
  {
    v20 = v0[9];
    if (v0[18])
    {
      v18 = v0[17];

      v19 = v12;
      goto LABEL_8;
    }

    v19 = v12;
    if (!*(v10 + 16))
    {
      goto LABEL_7;
    }

LABEL_5:
    v18 = *(v10 + 32);

    goto LABEL_8;
  }

  sub_1D7702F90();
  v14 = sub_1D7702F70();
  v19 = v15;
  v20 = v14;
  (*(v6 + 8))(v9, v5);
  if (*(v10 + 16))
  {
    goto LABEL_5;
  }

LABEL_7:

  v18 = 28261;
LABEL_8:
  sub_1D7702FC0();
  sub_1D7702FB0();
  (*(v1 + 8))(v4, v21);
  if (v12)
  {
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  v22 = v11;

  sub_1D7669540(v13);
  if (v12)
  {
  }

  sub_1D7703780();
  return sub_1D7703770();
}

id SponsorshipAdContext.newsSupplementalContext.getter()
{
  v1 = *(v0 + 32);
  v21 = *(v0 + 24);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  v5 = *(v0 + 64);
  v6 = *(v0 + 120);
  *v37 = *(v0 + 104);
  *&v37[16] = v6;
  v38 = *(v0 + 136);
  v39 = *(v0 + 152);
  v7 = *(v0 + 88);
  v35 = *(v0 + 72);
  v36 = v7;
  v20 = *(v0 + 160);
  v8 = objc_allocWithZone(sub_1D7703D00());

  sub_1D767DFA0(&v35, &v29);
  v9 = [v8 init];
  sub_1D7703CF0();
  sub_1D7703AE0();
  sub_1D7703B50();

  sub_1D7703C00();

  *&v29 = v21;
  *(&v29 + 1) = v1;
  *&v30 = v2;
  *(&v30 + 1) = v3;
  *&v31 = v4;
  *(&v31 + 1) = v5;
  sub_1D767E054(&v29);
  sub_1D768AB68(v29, *(&v29 + 1));
  v10 = v35;
  v11 = v36;
  v12 = BYTE8(v36);
  if (*(&v35 + 1))
  {
    v19 = v38;
    v22 = *&v37[8];
    v13 = *&v37[24];
    v14 = *v37;

    sub_1D7680928(&v35);
    v15 = v22;
    v16 = v19;
    v12 &= 1u;
    v17 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v28[0] = *(&v36 + 9);
    *(v28 + 3) = HIDWORD(v36);
    v15 = *&v37[8];
    v14 = *v37;
    v13 = *&v37[24];
    v16 = v38;
    v17 = v39;
  }

  v23 = v10;
  *&v24 = v11;
  BYTE8(v24) = v12;
  *(&v24 + 9) = v28[0];
  HIDWORD(v24) = *(v28 + 3);
  *v25 = v14;
  *&v25[8] = v15;
  *&v25[24] = v13;
  v26 = v16;
  v27 = v17;
  sub_1D768078C(&v23);
  v31 = *v25;
  v32 = *&v25[16];
  v33 = v26;
  v34 = v27;
  v29 = v23;
  v30 = v24;
  sub_1D7680928(&v29);
  if (v20 < 4)
  {
    sub_1D7703AF0();
    sub_1D768ABAC();
    sub_1D7704680();
    sub_1D7703C70();
  }

  return v9;
}

uint64_t sub_1D767DFA0(uint64_t a1, uint64_t a2)
{
  sub_1D767E004();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D767E004()
{
  if (!qword_1EE0B0468)
  {
    v0 = sub_1D77046B0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0B0468);
    }
  }
}

uint64_t sub_1D767E054(uint64_t a1)
{
  sub_1D767E214();
  result = MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*(a1 + 8))
  {
    v7 = *(a1 + 16);
    if ((*(a1 + 32) & 1) != 0 || *(a1 + 40) >= 1)
    {
    }

    sub_1D7703BF0();
    v8 = sub_1D7703900();
    v9 = *(v8 - 8);
    (*(v9 + 104))(v6, **(&unk_1E84DE278 + v7), v8);
    sub_1D7703900();
    (*(v9 + 56))(v6, 0, 1, v8);
    sub_1D7703BD0();
    v10 = sub_1D7703B20();
    if (*v11)
    {

      sub_1D7669540(v12);
      return v10(v13, 0);
    }

    else
    {
      v10(v13, 0);

      return sub_1D7703B40();
    }
  }

  return result;
}

void sub_1D767E214()
{
  if (!qword_1EE0AEA50)
  {
    sub_1D7703900();
    v0 = sub_1D77046B0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0AEA50);
    }
  }
}

uint64_t sub_1D767E294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D7672EB8(0, &qword_1EE0AEC78, MEMORY[0x1E69C6038], MEMORY[0x1E69E6F90]);
  sub_1D77038B0();
  *(swift_allocObject() + 16) = xmmword_1D7708FE0;
  (*(a4 + 16))(a3, a4);
  sub_1D7703D30();
}

uint64_t sub_1D767E3D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_1D77038B0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1D767E444@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X6>, char *a7@<X8>)
{
  v11 = *a5;
  v12 = a5[1];
  *a7 = a1;
  *(a7 + 1) = a2;
  v13 = type metadata accessor for AdRequest();
  v14 = v13[13];
  v15 = type metadata accessor for AdContext();
  (*(*(v15 - 8) + 32))(&a7[v14], a3, v15);
  result = (*(*(a6 - 8) + 32))(&a7[v13[14]], a4, a6);
  v17 = &a7[v13[15]];
  *v17 = v11;
  *(v17 + 1) = v12;
  return result;
}

uint64_t Journal.addPrewarmedEntry(request:placementIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = a1;
  v6 = *(*v3 + 88);
  v7 = *(*v3 + 96);
  v8 = *(*v3 + 104);
  v17 = *(*v3 + 80);
  v18 = v6;
  v19 = v7;
  v20 = v8;
  v9 = type metadata accessor for JournalEntry();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v15 - v12;
  sub_1D767E6C0(a2, a3, v16, v17, v6, v7, v8, (&v15 - v12));
  sub_1D766FFCC(v13, a2, a3);
  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_1D767E6C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  v22 = a8;
  v23 = a1;
  *&v24 = a4;
  *(&v24 + 1) = a5;
  *&v25 = a6;
  *(&v25 + 1) = a7;
  v14 = type metadata accessor for AdRequest();
  v15 = sub_1D77046B0();
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v22 - v17;
  v28 = 0x8000000000000010;
  v29 = 0;
  v30 = 0;
  v19 = a3 + *(v14 + 52);
  v27 = *(v19 + *(type metadata accessor for AdContext() + 36));
  v24 = 0u;
  v25 = 0u;
  v26 = 1;
  v20 = *(v14 - 8);
  (*(v20 + 16))(v18, a3, v14);
  (*(v20 + 56))(v18, 0, 1, v14);

  return sub_1D766FA5C(v23, a2, &v28, 0, 0, &v27, &v24, v18, v22, a4, a5, a6, a7);
}

uint64_t AdRequestStore.store(request:for:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v43 = a2;
  v6 = *(*v3 + 96);
  v46 = *(*v3 + 80);
  v47 = v6;
  v7 = type metadata accessor for AdRequest();
  v41 = sub_1D77046B0();
  v8 = *(v41 - 8);
  v10 = MEMORY[0x1EEE9AC00](v41, v9);
  v40 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = (&v34 - v13);
  sub_1D7703340();
  v15 = *(v7 - 8);
  v16 = *(v15 + 48);
  v42 = a1;
  if (v16(a1, 1, v7) != 1)
  {
    v38 = v3;
    v39 = v7;
    if (qword_1EE0AF008 != -1)
    {
      swift_once();
    }

    v37 = qword_1EE0AF010;
    sub_1D766DF6C();
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1D7708FD0;
    *(v20 + 56) = MEMORY[0x1E69E6158];
    v35 = sub_1D7668854();
    *(v20 + 64) = v35;
    v21 = v42;
    *(v20 + 32) = v43;
    *(v20 + 40) = a3;
    v22 = v41;
    v36 = *(v8 + 16);
    v36(v14, v21, v41);
    v23 = v39;
    if (v16(v14, 1, v39) == 1)
    {
      v24 = *(v8 + 8);
      v25 = a3;

      v24(v14, v22);
      v26 = (v20 + 72);
      v27 = v35;
      *(v20 + 96) = MEMORY[0x1E69E6158];
      *(v20 + 104) = v27;
      v28 = v22;
    }

    else
    {
      v30 = *v14;
      v29 = v14[1];
      v31 = *(v15 + 8);
      v25 = a3;

      v31(v14, v23);
      v26 = (v20 + 72);
      v32 = v35;
      *(v20 + 96) = MEMORY[0x1E69E6158];
      *(v20 + 104) = v32;
      if (v29)
      {
        *v26 = v30;
        v28 = v41;
LABEL_13:
        *(v20 + 80) = v29;
        sub_1D77045A0();
        sub_1D7703ED0();

        v19 = v25;
        v18 = v43;
        v36(v40, v42, v28);
        goto LABEL_14;
      }

      v28 = v41;
    }

    *v26 = 0;
    v29 = 0xE000000000000000;
    goto LABEL_13;
  }

  if (qword_1EE0AF008 != -1)
  {
    swift_once();
  }

  sub_1D766DF6C();
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1D7708FE0;
  *(v17 + 56) = MEMORY[0x1E69E6158];
  *(v17 + 64) = sub_1D7668854();
  v18 = v43;
  *(v17 + 32) = v43;
  *(v17 + 40) = a3;

  sub_1D77045A0();
  sub_1D7703ED0();

  v19 = a3;
  (*(v8 + 16))(v40, v42, v41);
LABEL_14:
  v44 = v18;
  v45 = v19;
  swift_beginAccess();
  sub_1D77041B0();

  sub_1D77041D0();
  swift_endAccess();
  return sub_1D7703350();
}

void sub_1D767ECFC(uint64_t a1)
{
  v2 = v1;
  sub_1D767EDD0(a1, v8);
  if (v8[104] == 255)
  {
    sub_1D767EEB8(v8);
  }

  else
  {
    v3 = SponsorshipAdInfo.metricsView.getter();
    sub_1D7680CFC(v8);
    if (v3)
    {
      v4 = [v3 superview];
      if (v4 && (v5 = v4, v4, v5 == v2))
      {
      }

      else
      {
        v6 = OBJC_IVAR____TtC7NewsAds17AdSponsorshipView_metricsView;
        [*&v2[OBJC_IVAR____TtC7NewsAds17AdSponsorshipView_metricsView] removeFromSuperview];
        [v2 addSubview_];
        v7 = *&v2[v6];
        *&v2[v6] = v3;
      }
    }
  }
}

uint64_t sub_1D767EDD0(uint64_t a1, uint64_t a2)
{
  sub_1D767EE68();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D767EE68()
{
  if (!qword_1EE0AFCB8)
  {
    v0 = sub_1D77046B0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0AFCB8);
    }
  }
}

uint64_t sub_1D767EEB8(uint64_t a1)
{
  sub_1D767EE68();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_1D767EF14()
{
  v1 = v0;
  sub_1D7669AF0();
  v2 = *v0;
  v3 = sub_1D7704890();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 40 * v17;
        sub_1D7667C54(*(v2 + 56) + 40 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1D7667CB8(v25, *(v4 + 56) + v22);
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

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

uint64_t static Ads.sponsorship.getter()
{
  sub_1D766C744();

  return swift_initStaticObject();
}

uint64_t AdManager.adProvider<A, B, C>(for:request:)(uint64_t *a1, uint64_t *a2)
{
  v5 = *a1;

  sub_1D7703140();

  if (v49[0] != 1)
  {
    sub_1D76EFB04();
    swift_allocError();
    *v11 = 2;
    return swift_willThrow();
  }

  v7 = a1[2];
  v6 = a1[3];
  swift_beginAccess();
  v8 = *(v2 + 104);
  if (*(v8 + 16) && (v9 = sub_1D76689AC(v7, v6), (v10 & 1) != 0))
  {
    sub_1D767F844(*(v8 + 56) + 32 * v9, &v46);
  }

  else
  {
    v46 = 0u;
    v47 = 0u;
  }

  swift_endAccess();
  if (!*(&v47 + 1))
  {
    sub_1D76939B0(&v46, &unk_1EE0AEBB0);
    goto LABEL_14;
  }

  v12 = *(v5 + 96);
  v13 = *(v5 + 128);
  *&v43 = *(v5 + 88);
  *(&v43 + 1) = *(v5 + 104);
  *v49 = v43;
  *&v49[8] = v12;
  *&v49[16] = *(&v43 + 1);
  v42 = *(v5 + 112);
  v50 = v42;
  v51 = v13;
  type metadata accessor for Ad();
  type metadata accessor for AnyFactory();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_14:
    v23 = v7;
    v52 = v6;
    if (qword_1EE0AF008 != -1)
    {
      swift_once();
    }

    sub_1D7704590();
    sub_1D76694D8(0, &qword_1EE0AEBF0, &qword_1EE0AEBC0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1D7708FD0;
    v25 = *(v5 + 128);
    *v49 = *(v5 + 88);
    *&v49[8] = *(v5 + 104);
    v44 = *&v49[8];
    *&v50 = v25;
    type metadata accessor for AdRequest();
    v26 = (*(v25 + 8))(v44, v25);
    v28 = v27;
    v29 = MEMORY[0x1E69E6158];
    *(v24 + 56) = MEMORY[0x1E69E6158];
    v30 = sub_1D7668854();
    *(v24 + 32) = v26;
    *(v24 + 40) = v28;
    *(v24 + 96) = v29;
    *(v24 + 104) = v30;
    *(v24 + 64) = v30;
    *(v24 + 72) = v23;
    *(v24 + 80) = v52;

    sub_1D7703ED0();

    sub_1D76EFB04();
    swift_allocError();
    *v31 = 0;
    return swift_willThrow();
  }

  v14 = a2[1];
  v41 = *a2;

  sub_1D77035E0();

  if (*(&v47 + 1))
  {
    v40 = v7;
    v52 = v6;
    sub_1D7667CB8(&v46, v49);
    if (qword_1EE0AF008 != -1)
    {
      swift_once();
    }

    sub_1D76694D8(0, &qword_1EE0AEBF0, &qword_1EE0AEBC0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1D7709050;
    v46 = v43;
    *&v47 = v42;
    *(&v47 + 1) = v13;
    type metadata accessor for AdRequest();
    v16 = (*(v13 + 8))(*(&v43 + 1), v13);
    v18 = v17;
    v19 = MEMORY[0x1E69E6158];
    *(v15 + 56) = MEMORY[0x1E69E6158];
    v20 = sub_1D7668854();
    *(v15 + 32) = v16;
    *(v15 + 40) = v18;
    *(v15 + 96) = v19;
    *(v15 + 104) = v20;
    *(v15 + 64) = v20;
    *(v15 + 72) = v40;
    *(v15 + 80) = v52;
    *(v15 + 136) = v19;
    *(v15 + 144) = v20;
    *(v15 + 112) = v41;
    *(v15 + 120) = v14;
    swift_bridgeObjectRetain_n();

    sub_1D77045A0();
    sub_1D7703ED0();

    v48 = 0;
    v46 = 0u;
    v47 = 0u;

    sub_1D77035F0();

    v21 = *(v45 + 16);
    *&v46 = a1;

    v21(&v46, v49);

    return __swift_destroy_boxed_opaque_existential_1(v49);
  }

  else
  {
    v32 = v7;
    sub_1D76EFB58(&v46, &qword_1EE0AF0C0, qword_1EE0AF0C8, &protocol descriptor for PromotedContentContextWrapperType);
    if (qword_1EE0AF008 != -1)
    {
      swift_once();
    }

    v52 = qword_1EE0AF010;
    sub_1D7704590();
    sub_1D76694D8(0, &qword_1EE0AEBF0, &qword_1EE0AEBC0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_1D7709050;
    *(v33 + 56) = MEMORY[0x1E69E6158];
    v34 = sub_1D7668854();
    *(v33 + 64) = v34;
    *(v33 + 32) = v32;
    *(v33 + 40) = v6;
    *v49 = v43;
    *&v49[16] = v42;
    *&v50 = v13;
    type metadata accessor for AdRequest();
    v35 = *(v13 + 8);

    v36 = v35(*(&v43 + 1), v13);
    v37 = MEMORY[0x1E69E6158];
    *(v33 + 96) = MEMORY[0x1E69E6158];
    *(v33 + 104) = v34;
    *(v33 + 72) = v36;
    *(v33 + 80) = v38;
    *(v33 + 136) = v37;
    *(v33 + 144) = v34;
    *(v33 + 112) = v41;
    *(v33 + 120) = v14;

    sub_1D7703ED0();

    sub_1D76EFB04();
    swift_allocError();
    *v39 = 1;
    swift_willThrow();
  }
}

uint64_t sub_1D767F844(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1D767F8A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v19[0] = a2;
  v19[1] = a3;
  MEMORY[0x1EEE9AC00](a1, a1);
  (*(v16 + 16))(v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v20 = a6;
  v21 = a5;
  v22 = a7;
  v23 = a9;
  v24 = AssociatedConformanceWitness;
  v25 = a10;
  type metadata accessor for Ad();
  swift_dynamicCast();
  (*(a11 + 24))(v20, v19[0], a6, a7, a9, a10, a8, a11);
}

uint64_t sub_1D767FAA0(uint64_t a1)
{
  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  type metadata accessor for SponsorshipAdProvider();
  sub_1D7667C54(a1, v6);
  v3 = swift_allocObject();
  sub_1D767FBE4(v6, v3 + 16);
  v4 = sub_1D77033F0();

  if (v4)
  {
    return v4;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D767FB6C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D767FBA4@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  result = sub_1D767FAA0(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1D767FBF0(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D767FC48();
  return sub_1D77033A0();
}

unint64_t sub_1D767FC48()
{
  result = qword_1EE0AF0C8[0];
  if (!qword_1EE0AF0C8[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_1EE0AF0C8);
  }

  return result;
}

uint64_t sub_1D767FCAC()
{
  type metadata accessor for ContentBannerAdProvider();
  sub_1D7703530();

  type metadata accessor for FeedBannerAdProvider();
  sub_1D7703530();

  type metadata accessor for InterstitialAdProvider();
  sub_1D7703530();

  type metadata accessor for NativeAdProvider();
  sub_1D7703530();

  type metadata accessor for SponsorshipAdProvider();
  sub_1D7703530();
}

uint64_t sub_1D767FDDC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D767FC48();
  result = sub_1D7703410();
  if (v4)
  {
    type metadata accessor for SponsorshipAdProvider();
    v2 = swift_allocObject();
    *(v2 + 56) = 0u;
    *(v2 + 72) = 0u;
    *(v2 + 88) = 0;
    sub_1D7667CB8(&v3, v2 + 16);
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1D767FE78()
{
  if (!qword_1EE0AE670)
  {
    type metadata accessor for SponsorshipAdPlacement();
    sub_1D766C808();
    v0 = type metadata accessor for AdRequest();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0AE670);
    }
  }
}

uint64_t sub_1D767FEF8()
{
  v0 = sub_1D7703210();
  MEMORY[0x1EEE9AC00](v0, v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v3, *MEMORY[0x1E69D6E90]);
  type metadata accessor for Settings.Ads.Debugging.DebugSponsorshipAd(0);
  swift_allocObject();
  result = Settings.Ads.Debugging.DebugSponsorshipAd.init(key:defaultValue:access:)(0xD000000000000034, 0x80000001D7718E10, 0, v3);
  qword_1EE0AEB48 = result;
  return result;
}

uint64_t Settings.Ads.Debugging.DebugSponsorshipAd.init(key:defaultValue:access:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v32 = a4;
  v35 = a3;
  v33 = a1;
  v34 = a2;
  v29 = sub_1D7703220();
  v4 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29, v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1D7703210();
  v30 = *(v24 - 8);
  v8 = v30;
  MEMORY[0x1EEE9AC00](v24, v9);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = qword_1EE0AEB18;
  sub_1D7675B68(0, &qword_1EE0AEA60, sub_1D768055C, &type metadata for Settings.Ads.Debugging.DebugSponsorshipAd.SponsorshipFetchStrategy, MEMORY[0x1E69D6EB0]);
  v27 = v12;
  v23 = ".collapse_behavior";
  v40 = 0;
  v26 = *MEMORY[0x1E69D6E90];
  v25 = *(v8 + 104);
  v25(v11);
  sub_1D7676AC4(0, &qword_1EE0AE5A8, &qword_1EE0AEA68, &type metadata for Settings.Ads.Debugging.DebugSponsorshipAd.SponsorshipFetchStrategy);
  sub_1D7676DD4(0, &qword_1EE0AEA68, &type metadata for Settings.Ads.Debugging.DebugSponsorshipAd.SponsorshipFetchStrategy, MEMORY[0x1E69D6EA8]);
  *(swift_allocObject() + 16) = xmmword_1D7709050;
  v39 = 0;
  sub_1D7703230();
  v38 = 1;
  sub_1D7703230();
  v37 = 2;
  sub_1D7703230();
  v13 = *MEMORY[0x1E69D6EA0];
  v14 = *(v4 + 104);
  v15 = v29;
  v14(v7, v13, v29);
  sub_1D768060C();
  v16 = sub_1D7703240();
  v17 = v31;
  *(v31 + v28) = v16;
  v27 = "Randomly Fulfilled";
  v28 = qword_1EE0AEB20;
  v18 = v24;
  (v25)(v11, v26, v24);
  v14(v7, v13, v15);
  v36 = 0;
  sub_1D76681C4(0, &qword_1EE0B08A8, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0], MEMORY[0x1E69D6EB0]);
  swift_allocObject();
  *(v17 + v28) = sub_1D7703270();
  v19 = v30;
  v20 = v32;
  (*(v30 + 16))(v11, v32, v18);
  v21 = sub_1D77030A0();
  (*(v19 + 8))(v20, v18);
  return v21;
}

unint64_t sub_1D768055C()
{
  result = qword_1EE0AEAF8;
  if (!qword_1EE0AEAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0AEAF8);
  }

  return result;
}

unint64_t sub_1D76805B8()
{
  result = qword_1EE0AEB10;
  if (!qword_1EE0AEB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0AEB10);
  }

  return result;
}

unint64_t sub_1D768060C()
{
  result = qword_1EE0AEB00;
  if (!qword_1EE0AEB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0AEB00);
  }

  return result;
}

uint64_t sub_1D7680660(uint64_t a1)
{
  v2 = sub_1D76806B4();
  v3 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45770](a1, v2, v3);
}

unint64_t sub_1D76806B4()
{
  result = qword_1EE0AEB08;
  if (!qword_1EE0AEB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0AEB08);
  }

  return result;
}

void sub_1D7680708(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEF64656C6C69666CLL;
  v4 = 0xEE0064656C6C6966;
  v5 = 0x6E55737961776C61;
  if (v2 != 1)
  {
    v5 = 0x6D6F646E6172;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x7546737961776C61;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1D768078C(uint64_t result)
{
  if (*(result + 8))
  {
    v1 = *(result + 16);
    v2 = *(result + 72);
    v8 = *(result + 64);
    v3 = *(result + 80);
    if ((*(result + 24) & 1) != 0 || v1 >= 1)
    {
    }

    sub_1D7703BF0();

    sub_1D7703C20();

    sub_1D7703BB0();
    swift_bridgeObjectRetain_n();
    sub_1D7703B60();
    [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    sub_1D7703980();
    result = sub_1D7703B60();
    if (v2)
    {
      sub_1D76B9C1C();
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_1D7708FE0;
      *(v4 + 32) = v8;
      *(v4 + 40) = v2;

      result = sub_1D7703C00();
    }

    if (v3)
    {
      v5 = sub_1D7703B20();
      if (*v6)
      {

        sub_1D7669540(v7);
        return v5(v9, 0);
      }

      else
      {
        v5(v9, 0);

        return sub_1D7703B40();
      }
    }
  }

  return result;
}

uint64_t sub_1D7680928(uint64_t a1)
{
  sub_1D767E004();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D768098C()
{
  if (!qword_1EE0AE5C0)
  {
    sub_1D7678404(255, &qword_1EE0AED80, MEMORY[0x1E69E62F8]);
    v0 = sub_1D77046B0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0AE5C0);
    }
  }
}

uint64_t SponsorshipAdProvider.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  sub_1D7680A40(v0 + 56);

  return swift_deallocClassInstance();
}

uint64_t sub_1D7680A40(uint64_t a1)
{
  sub_1D766940C(0, &qword_1EE0AE6A8, qword_1EE0AE6B0, &protocol descriptor for SponsorshipAdProviderType, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t SponsorshipAdInfo.journal.getter()
{
  sub_1D7680B78(v0, v5);
  v3[4] = v7;
  v3[5] = v8;
  v4 = v9;
  v3[0] = v5[0];
  v3[1] = v5[1];
  v3[2] = v5[2];
  v3[3] = v6;
  v1 = v6;

  sub_1D7680BB0(v3);
  return v1;
}

_WORD *storeEnumTagSinglePayload for VideoAdData.CodingKeys(_WORD *result, int a2, int a3)
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

uint64_t sub_1D7680C5C(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    v2 = a2 - 2;
    *(result + 96) = 0;
    *(result + 64) = 0u;
    *(result + 80) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    LOBYTE(a2) = 2;
    *result = v2;
  }

  *(result + 104) = a2;
  return result;
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

BOOL SponsorshipAdInfo.isFulfilled.getter()
{
  sub_1D7680B78(v0, v3);
  v1 = v3[104];
  sub_1D7680CFC(v3);
  return (v1 & 1) == 0;
}

void sub_1D7680D74()
{
  v6.receiver = v0;
  v6.super_class = type metadata accessor for AdSponsorshipView();
  objc_msgSendSuper2(&v6, sel_layoutSubviews);
  v1 = OBJC_IVAR____TtC7NewsAds17AdSponsorshipView_metricsView;
  v2 = *&v0[OBJC_IVAR____TtC7NewsAds17AdSponsorshipView_metricsView];
  if (v2)
  {
    v3 = v2;
    [v0 bounds];
    [v3 setBounds_];

    v4 = *&v0[v1];
    if (v4)
    {
      v5 = v4;
      [v0 bounds];
      sub_1D7704640();
      [v5 setCenter_];
    }
  }
}

unint64_t JournalEntry.status.getter@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = (v2 + *(a1 + 60));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  *a2 = *v3;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  return sub_1D7672A08(v4);
}

id sub_1D7680E4C()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  [v0 setDateStyle_];
  result = [v0 setTimeStyle_];
  qword_1EE0B03C0 = v0;
  return result;
}

uint64_t sub_1D7680EB0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1D77038B0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D7680F5C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1D77038B0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D7681000(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D7681020(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D7681040(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t sub_1D7681068()
{
  MEMORY[0x1DA700140](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D76810A0()
{

  return swift_deallocObject();
}

uint64_t sub_1D76810D8()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D7681118()
{
  MEMORY[0x1DA700140](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D7681150()
{

  return swift_deallocObject();
}

uint64_t sub_1D7681188()
{

  return swift_deallocObject();
}

uint64_t sub_1D76811C8()
{

  return swift_deallocObject();
}

uint64_t sub_1D7681200()
{

  return swift_deallocObject();
}

uint64_t sub_1D7681238()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D7681270()
{
  MEMORY[0x1DA700140](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D76812A8()
{

  return swift_deallocObject();
}

uint64_t sub_1D76812F0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  *a2 = v3;
  a2[1] = v2;
}

uint64_t sub_1D7681310()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D7681348(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1D7702F50();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D76813F4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1D7702F50();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D7681498()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D76814D0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D7681508()
{
  MEMORY[0x1DA700140](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D7681540()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1D7681588()
{
  sub_1D7696460();
  v2 = v1;
  v3 = (v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)));

  if (v3[6])
  {
  }

  if (v3[26])
  {
  }

  if (v3[35])
  {
  }

  if (v3[49])
  {
  }

  if (v3[59])
  {
  }

  v4 = v3 + *(v2 + 56);

  v5 = *(type metadata accessor for NativeAdPlacement() + 20);
  v6 = sub_1D77038B0();
  (*(*(v6 - 8) + 8))(&v4[v5], v6);

  return swift_deallocObject();
}

uint64_t sub_1D768180C()
{
  v1 = *(type metadata accessor for NativeAdInfo(0) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);

  v3 = v0 + v2;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 1)
  {

    __swift_destroy_boxed_opaque_existential_1(v3 + 40);
    v11 = 80;
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      goto LABEL_17;
    }

    v5 = type metadata accessor for NativeAdInfo.Fulfilled(0);
    v6 = (v3 + v5[11]);

    if (v6[6])
    {
    }

    if (v6[26])
    {
    }

    if (v6[35])
    {
    }

    if (v6[49])
    {
    }

    if (v6[59])
    {
    }

    sub_1D7696460();
    v8 = v6 + *(v7 + 56);

    v9 = *(type metadata accessor for NativeAdPlacement() + 20);
    v10 = sub_1D77038B0();
    (*(*(v10 - 8) + 8))(&v8[v9], v10);

    __swift_destroy_boxed_opaque_existential_1(v3 + v5[12]);
    v11 = v5[13];
  }

LABEL_17:

  return swift_deallocObject();
}

uint64_t sub_1D7681B34()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D7681B7C()
{

  return swift_deallocObject();
}

uint64_t sub_1D7681C00()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D7681C44(uint64_t a1, uint64_t a2, uint64_t a3)
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
    sub_1D7666C8C(0, qword_1EE0B0DA8, type metadata accessor for AdRequest);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 44);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1D7681D10(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_1D7666C8C(0, qword_1EE0B0DA8, type metadata accessor for AdRequest);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 44);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1D7681DE8()
{

  return swift_deallocObject();
}

uint64_t sub_1D7681E24(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1D77038B0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D7681ED0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1D77038B0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D7681F74(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1D7702F50();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D7682020(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1D7702F50();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D76820C4()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D7682104()
{

  return swift_deallocObject();
}

uint64_t sub_1D7682144()
{
  MEMORY[0x1DA700140](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D768217C()
{

  return swift_deallocObject();
}

uint64_t sub_1D76821C4()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

id sub_1D768221C@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 40);
  *a2 = v4;

  return v4;
}

uint64_t sub_1D768227C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1D77038B0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D7682328(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1D77038B0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D76823DC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for NativeAdInfo.Fulfilled(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D7682488(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for NativeAdInfo.Fulfilled(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

id sub_1D768253C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 promotedContentInfo];
  *a2 = result;
  return result;
}

uint64_t sub_1D768258C()
{
  MEMORY[0x1DA700140](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D76825C4()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D768260C()
{

  return swift_deallocObject();
}

id sub_1D768264C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 unfilledReason];
  *a2 = result;
  return result;
}

uint64_t sub_1D768269C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1D77038B0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D7682748(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1D77038B0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D76827EC()
{
  (*(*(*(v0 + 24) - 8) + 8))(v0 + ((*(*(*(v0 + 24) - 8) + 80) + 40) & ~*(*(*(v0 + 24) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t sub_1D768286C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D76828A4()
{
  v1 = *(v0 + 24);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1D7682974()
{

  return swift_deallocObject();
}

uint64_t sub_1D76829B4()
{

  return swift_deallocObject();
}

uint64_t sub_1D76829F4()
{

  return swift_deallocObject();
}

uint64_t sub_1D7682A34()
{

  return swift_deallocObject();
}

uint64_t sub_1D7682A7C()
{
  (*(*(*(v0 + 24) - 8) + 8))(v0 + ((*(*(*(v0 + 24) - 8) + 80) + 40) & ~*(*(*(v0 + 24) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t sub_1D7682B10()
{

  return swift_deallocObject();
}

uint64_t sub_1D7682B48()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D7682B80(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1D77038B0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D7682C2C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1D77038B0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D7682CD0()
{

  return swift_deallocObject();
}

uint64_t sub_1D7682D18()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D7682D88()
{
  MEMORY[0x1DA700140](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D7682DC4()
{

  sub_1D76CF158(*(v0 + 72));

  return swift_deallocObject();
}

uint64_t sub_1D7682E70()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D7682EA8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = (type metadata accessor for AdRequest() - 8);
  v4 = (*(*v3 + 80) + 104) & ~*(*v3 + 80);

  (*(*(v1 - 8) + 8))(v0 + v4 + v3[15], v1);
  type metadata accessor for AdContext();

  (*(*(v2 - 8) + 8))(v0 + v4 + v3[16], v2);

  return swift_deallocObject();
}

uint64_t sub_1D7683034(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D77038B0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1D76830F4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D77038B0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D76831B0()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D76831F0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D7683228()
{
  MEMORY[0x1DA700140](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D7683260()
{
  v1 = *(v0 + 5);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 96) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v8 = *(v0 + 2);
  v9 = *(v0 + 4);
  v5 = (type metadata accessor for AdRequest() - 8);
  v6 = (v3 + v4 + *(*v5 + 80)) & ~*(*v5 + 80);

  (*(v2 + 8))(&v0[v3], v1);

  (*(*(v8 - 8) + 8))(&v0[v6 + v5[15]], v8);
  type metadata accessor for AdContext();

  (*(*(v9 - 8) + 8))(&v0[v6 + v5[16]], v9);

  return swift_deallocObject();
}

uint64_t sub_1D7683494()
{

  return swift_deallocObject();
}

uint64_t sub_1D76834CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D77032B0();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D7683538(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D77032B0();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1D76835A8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1D77038B0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D7683654(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1D77038B0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D76836F8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for PrerollAdPlacement();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1D76837A4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for PrerollAdPlacement();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D7683848(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_1D76B6C94();
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 32);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1D76838F4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    sub_1D76B6C94();
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 32);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1D7683998()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D76839D0()
{
  sub_1D7696460();
  v2 = v1;
  v3 = (v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)));

  if (v3[6])
  {
  }

  if (v3[26])
  {
  }

  if (v3[35])
  {
  }

  if (v3[49])
  {
  }

  if (v3[59])
  {
  }

  v4 = v3 + *(v2 + 56);

  v5 = *(type metadata accessor for NativeAdPlacement() + 20);
  v6 = sub_1D77038B0();
  (*(*(v6 - 8) + 8))(&v4[v5], v6);

  return swift_deallocObject();
}

uint64_t sub_1D7683C54()
{
  sub_1D7696460();
  v2 = v1;
  v3 = (*(*(v1 - 8) + 80) + 80) & ~*(*(v1 - 8) + 80);

  v4 = (v0 + v3);

  if (*(v0 + v3 + 48))
  {
  }

  if (v4[26])
  {
  }

  if (v4[35])
  {
  }

  if (v4[49])
  {
  }

  if (v4[59])
  {
  }

  v5 = v4 + *(v2 + 56);

  v6 = *(type metadata accessor for NativeAdPlacement() + 20);
  v7 = sub_1D77038B0();
  (*(*(v7 - 8) + 8))(&v5[v6], v7);

  return swift_deallocObject();
}

uint64_t sub_1D7683EDC()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D7683F24@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_1D7683F54()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D7683FC0()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D7684010()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D7684058()
{

  return swift_deallocObject();
}

uint64_t sub_1D76840A8()
{

  return swift_deallocObject();
}

uint64_t sub_1D76840E8()
{

  return swift_deallocObject();
}

uint64_t sub_1D7684128()
{

  return swift_deallocObject();
}

uint64_t sub_1D7684160()
{

  return swift_deallocObject();
}

uint64_t SponsorshipAdPlacement.placementIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SponsorshipAdPlacement.desiredPlacement.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SponsorshipAdPlacement() + 20);
  v4 = sub_1D77038B0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SponsorshipAdPlacement.insertionType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for SponsorshipAdPlacement();
  *a1 = *(v1 + *(result + 24));
  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D7684390(uint64_t a1, id *a2)
{
  result = sub_1D7704240();
  *a2 = 0;
  return result;
}

uint64_t sub_1D7684408(uint64_t a1, id *a2)
{
  v3 = sub_1D7704250();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1D7684488@<X0>(uint64_t *a1@<X8>)
{
  sub_1D7704260();
  v2 = sub_1D7704230();

  *a1 = v2;
  return result;
}

uint64_t sub_1D76844CC()
{
  v0 = sub_1D7704260();
  v1 = MEMORY[0x1DA6FF0E0](v0);

  return v1;
}

uint64_t sub_1D7684508()
{
  sub_1D7704260();
  sub_1D77042D0();
}

uint64_t sub_1D768455C()
{
  sub_1D7704260();
  sub_1D7704AD0();
  sub_1D77042D0();
  v0 = sub_1D7704AF0();

  return v0;
}

uint64_t sub_1D76845D0()
{
  v0 = sub_1D7704260();
  v2 = v1;
  if (v0 == sub_1D7704260() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1D7704A30();
  }

  return v5 & 1;
}

uint64_t sub_1D7684680@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1D7704230();

  *a1 = v2;
  return result;
}

uint64_t sub_1D76846C8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D7704260();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D76846F4(uint64_t a1)
{
  v2 = sub_1D76847F4(&qword_1EC9BCCE8);
  v3 = sub_1D76847F4(&unk_1EC9BCCF0);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1D76847F4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

char *sub_1D768487C(unsigned __int8 *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = sub_1D7702FA0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &ObjectType - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = *a1;
  v9 = OBJC_IVAR____TtC7NewsAds23DebugInterstitialAdView_onLongPress;
  sub_1D768571C(0, &qword_1EE0B0810, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69D8770]);
  v11 = v10;
  *&v2[v9] = [objc_allocWithZone(v10) init];
  v12 = OBJC_IVAR____TtC7NewsAds23DebugInterstitialAdView_onCollapse;
  *&v2[v12] = [objc_allocWithZone(v11) init];
  v13 = OBJC_IVAR____TtC7NewsAds23DebugInterstitialAdView_label;
  *&v2[v13] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v14 = OBJC_IVAR____TtC7NewsAds23DebugInterstitialAdView_moreButton;
  v15 = [objc_opt_self() buttonWithType_];
  v16 = sub_1D7704230();
  v17 = objc_opt_self();
  v18 = [v17 systemImageNamed_];

  [v15 setImage:v18 forState:0];
  *&v2[v14] = v15;
  sub_1D7702F90();
  v19 = sub_1D7702F70();
  v21 = v20;
  (*(v5 + 8))(v8, v4);
  v22 = &v2[OBJC_IVAR____TtC7NewsAds23DebugInterstitialAdView_contentIdentifier];
  *v22 = v19;
  v22[1] = v21;
  v45.receiver = v2;
  v45.super_class = ObjectType;
  v23 = objc_msgSendSuper2(&v45, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v24 = OBJC_IVAR____TtC7NewsAds23DebugInterstitialAdView_moreButton;
  v25 = *&v23[OBJC_IVAR____TtC7NewsAds23DebugInterstitialAdView_moreButton];
  v26 = v23;
  [v25 setShowsMenuAsPrimaryAction_];
  v27 = *&v23[v24];
  sub_1D766844C(0, &qword_1EC9BD088);
  sub_1D768571C(0, &unk_1EE0AEBE0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1D7708DE0;
  sub_1D766844C(0, &qword_1EC9BD090);
  v29 = v27;
  v30 = sub_1D7704230();
  v31 = [v17 systemImageNamed_];

  swift_allocObject();
  swift_unknownObjectWeakInit();

  *(v28 + 32) = sub_1D7704690();
  v32 = sub_1D7704670();
  [v29 setMenu_];

  v33 = [*&v23[v24] imageView];
  if (v33)
  {
    v34 = v33;
    [v33 setContentMode_];
  }

  [*&v23[v24] setFrame_];
  v35 = OBJC_IVAR____TtC7NewsAds23DebugInterstitialAdView_label;
  v36 = *&v26[OBJC_IVAR____TtC7NewsAds23DebugInterstitialAdView_label];
  v37 = sub_1D7704230();
  [v36 setText_];

  v38 = *&v26[v35];
  sub_1D766844C(0, &qword_1EC9BD098);
  v39 = v38;
  v40 = sub_1D7704660();
  [v39 setFont_];

  [*&v26[v35] sizeToFit];
  [v26 addSubview_];
  [v26 addSubview_];
  v44 = v43;
  sub_1D7684E88(&v44);

  return v26;
}

void sub_1D7684E1C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC7NewsAds23DebugInterstitialAdView_onCollapse);
    MEMORY[0x1DA6FEDD0]();
  }
}

uint64_t sub_1D7684E88(_BYTE *a1)
{
  v2 = v1;
  v4 = sub_1D77040D0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D7704110();
  v29 = *(v9 - 8);
  v30 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D7704130();
  v14 = *(v13 - 8);
  v16 = MEMORY[0x1EEE9AC00](v13, v15);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v16, v19);
  v22 = &v27 - v21;
  if (*a1)
  {
    v28 = v5;
    sub_1D766844C(0, &qword_1EE0AED30);
    v23 = sub_1D77045F0();
    sub_1D7704120();
    sub_1D7704150();
    v27 = *(v14 + 8);
    v27(v18, v13);
    v24 = swift_allocObject();
    *(v24 + 16) = v2;
    aBlock[4] = sub_1D7685774;
    aBlock[5] = v24;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D7672F74;
    aBlock[3] = &block_descriptor;
    v25 = _Block_copy(aBlock);
    v26 = v2;

    sub_1D77040F0();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1D76857A4(&qword_1EE0AEDA8, MEMORY[0x1E69E7F60]);
    sub_1D7672E60();
    sub_1D76857A4(&qword_1EE0AED88, sub_1D7672E60);
    sub_1D77046E0();
    MEMORY[0x1DA6FF3A0](v22, v12, v8, v25);
    _Block_release(v25);

    (*(v28 + 8))(v8, v4);
    (*(v29 + 8))(v12, v30);
    return (v27)(v22, v13);
  }

  return result;
}

id sub_1D76852A8()
{
  v7.receiver = v0;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC7NewsAds23DebugInterstitialAdView_moreButton];
  [v0 bounds];
  Width = CGRectGetWidth(v8);
  [v1 frame];
  v3 = Width - CGRectGetWidth(v9) * 0.5 + -8.0;
  [v1 frame];
  [v1 setCenter_];
  v4 = *&v0[OBJC_IVAR____TtC7NewsAds23DebugInterstitialAdView_label];
  [v0 bounds];
  v5 = CGRectGetWidth(v11) * 0.5;
  [v0 bounds];
  return [v4 setCenter_];
}

id _s7NewsAds26DebugJournalViewControllerCfD_0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D768550C()
{
  v1 = *(*v0 + OBJC_IVAR____TtC7NewsAds23DebugInterstitialAdView_contentIdentifier);

  return v1;
}

void sub_1D7685574()
{
  v1 = OBJC_IVAR____TtC7NewsAds23DebugInterstitialAdView_onLongPress;
  sub_1D768571C(0, &qword_1EE0B0810, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69D8770]);
  v3 = v2;
  *(v0 + v1) = [objc_allocWithZone(v2) init];
  v4 = OBJC_IVAR____TtC7NewsAds23DebugInterstitialAdView_onCollapse;
  *(v0 + v4) = [objc_allocWithZone(v3) init];
  v5 = OBJC_IVAR____TtC7NewsAds23DebugInterstitialAdView_label;
  *(v0 + v5) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v6 = OBJC_IVAR____TtC7NewsAds23DebugInterstitialAdView_moreButton;
  v7 = [objc_opt_self() buttonWithType_];
  v8 = sub_1D7704230();
  v9 = [objc_opt_self() systemImageNamed_];

  [v7 setImage:v9 forState:0];
  *(v0 + v6) = v7;
  sub_1D7704860();
  __break(1u);
}

void sub_1D768571C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1D76857A4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D7685804()
{
  sub_1D7704AD0();
  MEMORY[0x1DA6FF8B0](0);
  return sub_1D7704AF0();
}

uint64_t sub_1D7685870()
{
  sub_1D7704AD0();
  MEMORY[0x1DA6FF8B0](0);
  return sub_1D7704AF0();
}

uint64_t sub_1D76858CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x80000001D7714CF0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1D7704A30();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1D768596C(uint64_t a1)
{
  v2 = sub_1D7685B2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D76859A8(uint64_t a1)
{
  v2 = sub_1D7685B2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t VideoAdData.encode(to:)(void *a1)
{
  sub_1D7685D08(0, &qword_1EC9BD0A0, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7685B2C();
  sub_1D7704B10();
  sub_1D77049E0();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1D7685B2C()
{
  result = qword_1EC9BD0A8;
  if (!qword_1EC9BD0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD0A8);
  }

  return result;
}

uint64_t VideoAdData.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1D7685D08(0, &qword_1EC9BD0B0, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v14 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7685B2C();
  sub_1D7704B00();
  if (!v2)
  {
    sub_1D7704950();
    v12 = v11;
    (*(v7 + 8))(v10, v6);
    *a2 = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D7685D08(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D7685B2C();
    v7 = a3(a1, &type metadata for VideoAdData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D7685D6C(uint64_t a1)
{
  *(a1 + 8) = sub_1D7685D9C();
  result = sub_1D7685DF0();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D7685D9C()
{
  result = qword_1EC9BD0B8;
  if (!qword_1EC9BD0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD0B8);
  }

  return result;
}

unint64_t sub_1D7685DF0()
{
  result = qword_1EC9BD0C0;
  if (!qword_1EC9BD0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD0C0);
  }

  return result;
}

uint64_t sub_1D7685E5C(void *a1)
{
  sub_1D7685D08(0, &qword_1EC9BD0A0, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7685B2C();
  sub_1D7704B10();
  sub_1D77049E0();
  return (*(v4 + 8))(v7, v3);
}

uint64_t getEnumTagSinglePayload for VideoAdData(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for VideoAdData(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 8) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for VideoAdData.CodingKeys(unsigned int *a1, int a2)
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

unint64_t sub_1D7686064()
{
  result = qword_1EC9BD0C8;
  if (!qword_1EC9BD0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD0C8);
  }

  return result;
}

unint64_t sub_1D76860BC()
{
  result = qword_1EC9BD0D0;
  if (!qword_1EC9BD0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD0D0);
  }

  return result;
}

unint64_t sub_1D7686114()
{
  result = qword_1EC9BD0D8;
  if (!qword_1EC9BD0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD0D8);
  }

  return result;
}

uint64_t BannerAdLayoutStore.storeLayout(_:for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1EE0AF008 != -1)
  {
    swift_once();
  }

  sub_1D766DF6C();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1D7708FD0;
  v6 = MEMORY[0x1E69E6158];
  *(v5 + 56) = MEMORY[0x1E69E6158];
  v7 = sub_1D7668854();
  *(v5 + 64) = v7;
  *(v5 + 32) = a2;
  *(v5 + 40) = a3;

  sub_1D7704850();
  *(v5 + 96) = v6;
  *(v5 + 104) = v7;
  *(v5 + 72) = 0;
  *(v5 + 80) = 0xE000000000000000;
  sub_1D77045A0();
  sub_1D7703ED0();

  sub_1D77035F0();
}

Swift::Void __swiftcall BannerAdLayoutStore.reset()()
{
  if (qword_1EE0AF008 != -1)
  {
    swift_once();
  }

  sub_1D77045A0();
  sub_1D7703ED0();

  sub_1D77035A0();
}

uint64_t BannerAdLayoutStore.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D7686414()
{
  if (qword_1EE0AF008 != -1)
  {
    swift_once();
  }

  sub_1D77045A0();
  sub_1D7703ED0();

  sub_1D77035A0();
}

unint64_t sub_1D76864C0()
{
  result = qword_1EE0AEBC0;
  if (!qword_1EE0AEBC0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE0AEBC0);
  }

  return result;
}

uint64_t _s7NewsAds19AdPolicyContentTypeO0C5StateO9hashValueSivg_0()
{
  v1 = *v0;
  sub_1D7704AD0();
  MEMORY[0x1DA6FF8B0](v1);
  return sub_1D7704AF0();
}

uint64_t sub_1D76865D8()
{
  v1 = *v0;
  sub_1D7704AD0();
  MEMORY[0x1DA6FF8B0](v1);
  return sub_1D7704AF0();
}

unint64_t sub_1D768662C()
{
  if (*v0)
  {
    return 0xD00000000000001FLL;
  }

  else
  {
    return 0xD000000000000026;
  }
}

uint64_t sub_1D7686668@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  sub_1D7687550(v1 + 56, &v6);
  if (v7)
  {
    return sub_1D7667CB8(&v6, a1);
  }

  sub_1D7680A40(&v6);
  sub_1D7667C54(v1 + 16, &v6);
  v4 = type metadata accessor for DebugSponsorshipAdProvider();
  v5 = swift_allocObject();
  sub_1D7667CB8(&v6, v5 + 16);
  a1[3] = v4;
  a1[4] = &off_1F5256B40;
  *a1 = v5;
  sub_1D7667C54(a1, &v6);
  swift_beginAccess();
  sub_1D76875E0(&v6, v1 + 56);
  return swift_endAccess();
}

void SponsorshipAdProvider.fetchSponsoredAdInfo(request:journal:tracker:)(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v138 = a3;
  sub_1D767FE78();
  v10 = (a1 + *(v9 + 56));
  v11 = *v10;
  v12 = v10[1];
  v13 = qword_1EE0AEB40;

  if (v13 != -1)
  {
    swift_once();
  }

  if (sub_1D77030B0())
  {

    sub_1D7686668(&v125);
    v14 = v127;
    v15 = v128;
    __swift_project_boxed_opaque_existential_1(&v125, v127);
    (v15[2])(a1, a2, v138, v14, v15);
    __swift_destroy_boxed_opaque_existential_1(&v125);
  }

  else
  {
    v125 = *(a1 + 1);
    v16 = a1[4];
    v17 = a1[5];
    v137 = a1[23];
    v18 = a1[6];
    v134 = *(a1 + 17);
    v135 = *(a1 + 19);
    v136 = *(a1 + 21);
    v130 = *(a1 + 9);
    v131 = *(a1 + 11);
    v132 = *(a1 + 13);
    v133 = *(a1 + 15);
    v129 = *(a1 + 7);
    v126 = v16;
    v127 = v17;
    v122 = v18;
    v128 = v18;
    v123 = SponsorshipAdContext.newsSupplementalContext.getter();
    if (v123)
    {
      v116 = v17;
      v124 = v11;
      v19 = v4[5];
      v20 = v4[6];
      __swift_project_boxed_opaque_existential_1(v4 + 2, v19);
      v21 = (*(v20 + 8))(v19, v20);
      v22 = sub_1D7703D10();

      if (v22)
      {
        v108 = v5;
        v112 = a2;
        v113 = v22;
        v111 = a4;
        sub_1D7703B30();
        *&v117 = sub_1D768720C();
        *(&v117 + 1) = v23;
        if (qword_1EE0AF008 != -1)
        {
          swift_once();
        }

        sub_1D766940C(0, &qword_1EE0AEBF0, &qword_1EE0AEBC0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
        v24 = swift_allocObject();
        *(v24 + 16) = xmmword_1D7709050;
        sub_1D768098C();

        v25 = sub_1D77042B0();
        v27 = v26;
        v28 = MEMORY[0x1E69E6158];
        *(v24 + 56) = MEMORY[0x1E69E6158];
        v29 = sub_1D7668854();
        *(v24 + 64) = v29;
        *(v24 + 32) = v25;
        *(v24 + 40) = v27;
        v125 = v117;
        sub_1D7678404(0, &qword_1EE0B0DA0, MEMORY[0x1E69E6720]);

        v30 = sub_1D77042B0();
        *(v24 + 96) = v28;
        *(v24 + 104) = v29;
        *(v24 + 72) = v30;
        *(v24 + 80) = v31;
        *(v24 + 136) = v28;
        *(v24 + 144) = v29;
        *(v24 + 112) = v124;
        *(v24 + 120) = v12;

        sub_1D77045A0();
        sub_1D7703ED0();

        [v113 unfilledReason];
        v32 = sub_1D7703880();
        if (v32 == sub_1D7703880())
        {
          v33 = swift_allocObject();
          *(v33 + 16) = xmmword_1D7709070;
          v34 = sub_1D77042B0();
          v35 = MEMORY[0x1E69E6158];
          *(v33 + 56) = MEMORY[0x1E69E6158];
          *(v33 + 64) = v29;
          *(v33 + 32) = v34;
          *(v33 + 40) = v36;
          v125 = v117;
          v37 = sub_1D77042B0();
          *(v33 + 96) = v35;
          *(v33 + 104) = v29;
          *(v33 + 72) = v37;
          *(v33 + 80) = v38;
          v39 = sub_1D77037A0();
          *(v33 + 136) = v35;
          *(v33 + 144) = v29;
          *(v33 + 112) = v39;
          *(v33 + 120) = v40;
          *(v33 + 176) = v35;
          *(v33 + 184) = v29;
          *(v33 + 152) = v124;
          *(v33 + 160) = v12;

          sub_1D77045A0();
          sub_1D7703ED0();

          v41 = a1[1];
          v118 = *a1;
          v42 = v108[5];
          v43 = v108[6];
          __swift_project_boxed_opaque_existential_1(v108 + 2, v42);
          v44 = *(v43 + 8);
          v120 = v41;

          v45 = v113;
          v46 = v44(v42, v43);
          sub_1D7667C54(v138, &v125);
          v138 = type metadata accessor for SponsorshipAdContentInfo();
          v47 = swift_allocObject();
          *(v47 + 40) = 0;
          v48 = (v47 + 40);
          *(v47 + 48) = 0;
          *(v47 + 120) = 0u;
          *(v47 + 136) = 0u;
          *(v47 + 152) = 1;

          *(v47 + 16) = sub_1D77037A0();
          *(v47 + 24) = v49;
          *(v47 + 32) = sub_1D77037D0();
          *(v47 + 56) = v45;
          *(v47 + 104) = v124;
          *(v47 + 112) = v12;
          sub_1D7667C54(&v125, v47 + 64);
          v50 = v45;
          v114 = v46;
          v51 = sub_1D7703D40();
          if (v51)
          {
            v52 = &protocol witness table for MetricsView;
          }

          else
          {
            v52 = 0;
          }

          swift_beginAccess();
          v53 = *v48;
          *v48 = v51;
          *(v47 + 48) = v52;
          v54 = v51;

          if (v51)
          {
            sub_1D7687450();
            v55 = v54;

            sub_1D7703DE0();

            [v55 setAccessibilityIgnoresInvertColors_];
            [v55 frame];
            v104 = v56;
            v106 = v57;
            v103 = v58;
            v109 = v59;

            __swift_destroy_boxed_opaque_existential_1(&v125);
            *&v61 = v103;
            *&v60 = v104;
            *(&v60 + 1) = v106;
            *(&v61 + 1) = v109;
            v62 = v111;
          }

          else
          {
            __swift_destroy_boxed_opaque_existential_1(&v125);

            v61 = 0uLL;
            v62 = v111;
            v60 = 0uLL;
          }

          *(v47 + 120) = v60;
          *(v47 + 136) = v61;
          *(v47 + 152) = v51 == 0;
          v127 = v138;
          v128 = &protocol witness table for SponsorshipAdContentInfo;
          *&v125 = v47;
          v97 = v108[5];
          v98 = v108[6];
          __swift_project_boxed_opaque_existential_1(v108 + 2, v97);
          v99 = (*(v98 + 8))(v97, v98);

          *v62 = v118;
          *(v62 + 8) = v120;
          *(v62 + 16) = v124;
          *(v62 + 24) = v12;
          *(v62 + 32) = v116;
          *(v62 + 40) = v122;
          *(v62 + 48) = v112;
          sub_1D7667CB8(&v125, v62 + 56);
          *(v62 + 96) = v99;
          *(v62 + 104) = 0;
        }

        else
        {
          v65 = swift_allocObject();
          *(v65 + 16) = xmmword_1D7709060;
          v66 = sub_1D77042B0();
          v67 = MEMORY[0x1E69E6158];
          *(v65 + 56) = MEMORY[0x1E69E6158];
          *(v65 + 64) = v29;
          *(v65 + 32) = v66;
          *(v65 + 40) = v68;
          v125 = v117;
          v69 = sub_1D77042B0();
          *(v65 + 96) = v67;
          *(v65 + 104) = v29;
          *(v65 + 72) = v69;
          *(v65 + 80) = v70;
          v71 = sub_1D77037A0();
          *(v65 + 136) = v67;
          *(v65 + 144) = v29;
          *(v65 + 112) = v71;
          *(v65 + 120) = v72;
          [v113 unfilledReason];
          v73 = sub_1D7703860();
          *(v65 + 176) = v67;
          *(v65 + 184) = v29;
          *(v65 + 152) = v73;
          *(v65 + 160) = v74;
          *(v65 + 216) = v67;
          *(v65 + 224) = v29;
          *(v65 + 192) = v124;
          *(v65 + 200) = v12;

          sub_1D77045A0();
          sub_1D7703ED0();

          v75 = a1[1];
          v119 = *a1;
          v76 = v108[5];
          v77 = v108[6];
          __swift_project_boxed_opaque_existential_1(v108 + 2, v76);
          v78 = *(v77 + 8);

          v79 = v113;
          v121 = v75;

          v80 = v78(v76, v77);
          sub_1D7667C54(v138, &v125);
          v138 = type metadata accessor for SponsorshipAdContentInfo();
          v81 = swift_allocObject();
          *(v81 + 40) = 0;
          v82 = (v81 + 40);
          *(v81 + 48) = 0;
          *(v81 + 120) = 0u;
          *(v81 + 136) = 0u;
          *(v81 + 152) = 1;

          *(v81 + 16) = sub_1D77037A0();
          *(v81 + 24) = v83;
          *(v81 + 32) = sub_1D77037D0();
          *(v81 + 56) = v79;
          *(v81 + 104) = v124;
          *(v81 + 112) = v12;
          sub_1D7667C54(&v125, v81 + 64);
          v84 = v79;
          v85 = sub_1D7703D40();
          if (v85)
          {
            v86 = &protocol witness table for MetricsView;
          }

          else
          {
            v86 = 0;
          }

          swift_beginAccess();
          v87 = *v82;
          *v82 = v85;
          *(v81 + 48) = v86;
          v88 = v85;

          if (v85)
          {
            sub_1D7687450();
            v89 = v88;

            sub_1D7703DE0();

            [v89 setAccessibilityIgnoresInvertColors_];
            [v89 frame];
            v110 = v90;
            v105 = v92;
            v107 = v91;
            v115 = v93;

            __swift_destroy_boxed_opaque_existential_1(&v125);
            *&v95 = v105;
            *&v94 = v107;
            *(&v94 + 1) = v110;
            *(&v95 + 1) = v115;
            v96 = v111;
          }

          else
          {
            __swift_destroy_boxed_opaque_existential_1(&v125);

            v95 = 0uLL;
            v96 = v111;
            v94 = 0uLL;
          }

          *(v81 + 120) = v94;
          *(v81 + 136) = v95;
          *(v81 + 152) = v85 == 0;
          v127 = v138;
          v128 = &protocol witness table for SponsorshipAdContentInfo;
          *&v125 = v81;
          v100 = v108[5];
          v101 = v108[6];
          __swift_project_boxed_opaque_existential_1(v108 + 2, v100);
          v102 = (*(v101 + 8))(v100, v101);

          *v96 = v119;
          *(v96 + 8) = v121;
          *(v96 + 16) = v124;
          *(v96 + 24) = v12;
          *(v96 + 32) = v116;
          *(v96 + 40) = v122;
          *(v96 + 48) = v112;
          sub_1D7667CB8(&v125, v96 + 56);
          *(v96 + 96) = v102;
          *(v96 + 104) = 1;
        }
      }

      else
      {

        sub_1D76873FC();
        swift_allocError();
        *v64 = 0;
        swift_willThrow();
      }
    }

    else
    {

      sub_1D76873FC();
      swift_allocError();
      *v63 = 1;
      swift_willThrow();
    }
  }
}

uint64_t sub_1D768720C()
{
  sub_1D767E214();
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7703BC0();
  v4 = sub_1D7703900();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 48))(v3, 1, v4);
  result = 0;
  if (v6 != 1)
  {
    v8 = (*(v5 + 88))(v3, v4);
    if (v8 == *MEMORY[0x1E69C6060])
    {
      return 0x72656E6E6162;
    }

    else if (v8 == *MEMORY[0x1E69C6058])
    {
      return 0x70756F7267;
    }

    else if (v8 == *MEMORY[0x1E69C6068])
    {
      return 0x646165687473616DLL;
    }

    else
    {
      (*(v5 + 8))(v3, v4);
      return 0x6E776F6E6B6E75;
    }
  }

  return result;
}

uint64_t SponsorshipAdProvider.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  sub_1D7680A40(v0 + 56);
  return v0;
}

unint64_t sub_1D76873FC()
{
  result = qword_1EE0AE8C8;
  if (!qword_1EE0AE8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0AE8C8);
  }

  return result;
}

unint64_t sub_1D7687450()
{
  result = qword_1EE0AE7E8;
  if (!qword_1EE0AE7E8)
  {
    type metadata accessor for SponsorshipAdContentInfo();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0AE7E8);
  }

  return result;
}

unint64_t sub_1D76874FC()
{
  result = qword_1EC9BD0E0;
  if (!qword_1EC9BD0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD0E0);
  }

  return result;
}

uint64_t sub_1D7687550(uint64_t a1, uint64_t a2)
{
  sub_1D766940C(0, &qword_1EE0AE6A8, qword_1EE0AE6B0, &protocol descriptor for SponsorshipAdProviderType, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D76875E0(uint64_t a1, uint64_t a2)
{
  sub_1D766940C(0, &qword_1EE0AE6A8, qword_1EE0AE6B0, &protocol descriptor for SponsorshipAdProviderType, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7687670()
{
  v1 = v0;
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  sub_1D7687C0C();
  result = sub_1D7703400();
  if (result)
  {
    v3 = result;
    v5[4] = sub_1D7687C70;
    v5[5] = v1;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 1107296256;
    v5[2] = sub_1D76878A0;
    v5[3] = &block_descriptor_0;
    v4 = _Block_copy(v5);

    [v3 fetchAppConfigurationIfNeededWithCompletion_];
    _Block_release(v4);
    swift_unknownObjectRelease();
    sub_1D7687C78();
    swift_allocObject();
    return sub_1D77036E0();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7687790(uint64_t a1, void *a2)
{
  if (qword_1EE0B0D18 != -1)
  {
    swift_once();
  }

  if (sub_1D77030B0())
  {
    type metadata accessor for AdsModuleStartupTask();
    sub_1D7687DA4();

    sub_1D7703070();

    return v4;
  }

  else if (a2 && ([a2 respondsToSelector_] & 1) != 0)
  {

    return [a2 articleAdPrefetchLimit];
  }

  else
  {
    return 3;
  }
}

uint64_t sub_1D76878A0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v6 = a3;
  v5(a2, a3);

  return swift_unknownObjectRelease();
}

uint64_t sub_1D7687920()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t AdPlatformsServerEnvironment.description.getter(uint64_t a1)
{
  if (a1 > 2)
  {
    if (a1 == 3)
    {
      return 3360081;
    }

    if (a1 != 4)
    {
      if (a1 == 5)
      {
        return 3491153;
      }

      return 0x6E776F6E6B6E75;
    }

    return 3425617;
  }

  else
  {
    if (!a1)
    {
      return 0x69746375646F7270;
    }

    if (a1 != 1)
    {
      if (a1 == 2)
      {
        return 3294545;
      }

      return 0x6E776F6E6B6E75;
    }

    return 3229009;
  }
}

uint64_t sub_1D7687AD8()
{
  v1 = *v0;
  if (*v0 > 2)
  {
    if (v1 == 3)
    {
      return 3360081;
    }

    if (v1 != 4)
    {
      if (v1 == 5)
      {
        return 3491153;
      }

      return 0x6E776F6E6B6E75;
    }

    return 3425617;
  }

  else
  {
    if (!v1)
    {
      return 0x69746375646F7270;
    }

    if (v1 != 1)
    {
      if (v1 == 2)
      {
        return 3294545;
      }

      return 0x6E776F6E6B6E75;
    }

    return 3229009;
  }
}

unint64_t sub_1D7687BB8()
{
  result = qword_1EC9BD0E8;
  if (!qword_1EC9BD0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD0E8);
  }

  return result;
}

unint64_t sub_1D7687C0C()
{
  result = qword_1EE0AED10;
  if (!qword_1EE0AED10)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE0AED10);
  }

  return result;
}

void sub_1D7687C78()
{
  if (!qword_1EE0B0848)
  {
    v0 = sub_1D7703700();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0B0848);
    }
  }
}

uint64_t sub_1D7687CCC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_1D7687D3C(0, a2, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void sub_1D7687D3C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1D7665328(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_1D7687DA4()
{
  result = qword_1EE0B05C0[0];
  if (!qword_1EE0B05C0[0])
  {
    type metadata accessor for AdsModuleStartupTask();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE0B05C0);
  }

  return result;
}

char *sub_1D7687E1C(uint64_t a1, uint64_t a2, unsigned __int8 *a3, float a4, float a5, double a6, double a7)
{
  v8 = v7;
  ObjectType = swift_getObjectType();
  v91 = sub_1D77040D0();
  v90 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91, v16);
  v88 = &v83 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_1D7704110();
  v87 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89, v18);
  v86 = &v83 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1D7704130();
  v21 = *(v20 - 8);
  v95 = v20;
  v96 = v21;
  v23 = MEMORY[0x1EEE9AC00](v20, v22);
  v85 = &v83 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v25);
  v94 = &v83 - v26;
  LODWORD(v93) = *a3;
  v27 = OBJC_IVAR____TtC7NewsAds17DebugBannerAdView_state;
  aBlock[0] = 0;
  sub_1D76897BC(0, &qword_1EE0B0888, &type metadata for BannerAdViewState, MEMORY[0x1E69D6538]);
  swift_allocObject();
  *&v7[v27] = sub_1D7703470();
  v28 = OBJC_IVAR____TtC7NewsAds17DebugBannerAdView_onLongPress;
  sub_1D76897BC(0, &qword_1EE0B0810, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69D8770]);
  *&v7[v28] = [objc_allocWithZone(v29) init];
  v30 = &v7[OBJC_IVAR____TtC7NewsAds17DebugBannerAdView_additionalEdgeInsets];
  *v30 = xmmword_1D7709350;
  *(v30 + 1) = xmmword_1D7709350;
  v31 = OBJC_IVAR____TtC7NewsAds17DebugBannerAdView_moreButton;
  v32 = [objc_opt_self() buttonWithType_];
  v33 = sub_1D7704230();
  v34 = objc_opt_self();
  v35 = [v34 systemImageNamed_];

  [v32 setImage:v35 forState:0];
  *&v8[v31] = v32;
  v36 = OBJC_IVAR____TtC7NewsAds17DebugBannerAdView_label;
  *&v8[v36] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v37 = &v8[OBJC_IVAR____TtC7NewsAds17DebugBannerAdView_contentIdentifier];
  *v37 = a1;
  *(v37 + 1) = a2;
  v38 = &v8[OBJC_IVAR____TtC7NewsAds17DebugBannerAdView_contentInfo];
  v38[3] = &type metadata for DebugAdContentInfo;
  v38[4] = &protocol witness table for DebugAdContentInfo;
  v39 = swift_allocObject();
  *v38 = v39;
  type metadata accessor for DebugLifecycleMetricsHelper();
  v40 = swift_allocObject();
  *(v39 + 24) = a2;
  *(v39 + 32) = v40;
  *(v39 + 40) = 0;
  *(v39 + 42) = 0;
  *(v39 + 48) = 200;
  *(v39 + 16) = a1;
  v99.receiver = v8;
  v99.super_class = ObjectType;

  v41 = objc_msgSendSuper2(&v99, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v42 = OBJC_IVAR____TtC7NewsAds17DebugBannerAdView_moreButton;
  v43 = *&v41[OBJC_IVAR____TtC7NewsAds17DebugBannerAdView_moreButton];
  v44 = v41;
  [v43 setShowsMenuAsPrimaryAction_];
  v45 = *&v41[v42];
  sub_1D766844C(0, &qword_1EC9BD088);
  sub_1D76897BC(0, &unk_1EE0AEBE0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_1D7708DE0;
  sub_1D766844C(0, &qword_1EC9BD090);
  v47 = v45;
  v48 = sub_1D7704230();
  v49 = [v34 systemImageNamed_];

  swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v46 + 32) = sub_1D7704690();
  v50 = sub_1D7704670();
  [v47 setMenu_];

  v51 = [*&v41[v42] imageView];
  if (v51)
  {
    v52 = v51;
    [v51 setContentMode_];
  }

  [*&v41[v42] setFrame_];
  v53 = OBJC_IVAR____TtC7NewsAds17DebugBannerAdView_label;
  v54 = *&v44[OBJC_IVAR____TtC7NewsAds17DebugBannerAdView_label];
  v55 = sub_1D7704230();
  [v54 setText_];

  v56 = *&v44[v53];
  sub_1D766844C(0, &qword_1EC9BD098);
  v57 = v56;
  v58 = sub_1D7704660();
  [v57 setFont_];

  [*&v44[v53] sizeToFit];
  v59 = *&v41[v42];
  v60 = v44;
  [v60 addSubview_];
  [v60 addSubview_];
  v61 = [v60 layer];
  v62 = [v60 traitCollection];
  [v62 displayScale];
  v64 = v63;

  [v61 setBorderWidth_];
  v65 = [v60 layer];

  v66 = [objc_opt_self() separatorColor];
  v67 = [v66 CGColor];

  [v65 setBorderColor_];
  v68 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v69 = swift_allocObject();
  *(v69 + 16) = v68;
  v70 = v93;
  *(v69 + 24) = v93;
  v71 = swift_allocObject();
  *(v71 + 16) = a4;
  *(v71 + 24) = v60;
  *(v71 + 32) = a6;
  *(v71 + 40) = a7;
  *(v71 + 48) = sub_1D7689814;
  *(v71 + 56) = v69;
  if (a5 > 0.0)
  {
    swift_retain_n();
    v72 = v60;

    v73 = sub_1D76894A8(0x1000001uLL);
    if (v73 == 0x1000000)
    {
      if (a4 <= 1.0)
      {
LABEL_6:
        sub_1D7689978();
        aBlock[0] = swift_allocError();
        sub_1D76899CC();
        sub_1D77034A0();
        sub_1D7689A20(aBlock[0]);
LABEL_10:
        sub_1D7703480();
        v97 = aBlock[0];
        sub_1D7688AE4(&v97, v68, v70);
        sub_1D7689A20(v97);

        goto LABEL_11;
      }
    }

    else if (vcvts_n_f32_u32(v73, 0x18uLL) >= a4)
    {
      goto LABEL_6;
    }

    [v72 setFrame_];
    aBlock[0] = 1;
    sub_1D76899CC();
    sub_1D77034A0();
    goto LABEL_10;
  }

  sub_1D766844C(0, &qword_1EE0AED30);
  swift_retain_n();
  ObjectType = v60;

  v84 = sub_1D77045F0();
  v74 = v85;
  sub_1D7704120();
  sub_1D7704150();
  v75 = *(v96 + 8);
  v96 += 8;
  v93 = v75;
  v75(v74, v95);
  aBlock[4] = sub_1D7689820;
  aBlock[5] = v71;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D7672F74;
  aBlock[3] = &block_descriptor_1;
  v76 = _Block_copy(aBlock);

  v77 = v86;
  sub_1D77040F0();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1D7689834();
  sub_1D768988C(0, &qword_1EE0AED90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1D76898F0();
  v78 = v88;
  v79 = v91;
  sub_1D77046E0();
  v80 = v94;
  v81 = v84;
  MEMORY[0x1DA6FF3A0](v94, v77, v78, v76);
  _Block_release(v76);

  (*(v90 + 8))(v78, v79);
  (*(v87 + 8))(v77, v89);
  v93(v80, v95);
LABEL_11:

  return v60;
}

void sub_1D7688A6C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1D76899CC();
    sub_1D77034A0();
  }
}

void sub_1D7688AE4(void **a1, uint64_t a2, char a3)
{
  v5 = sub_1D77040D0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D7704110();
  v40 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D7704130();
  v16 = MEMORY[0x1EEE9AC00](v14, v15);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v16, v19);
  v23 = &v34 - v22;
  v24 = *a1;
  if (v24 == 2)
  {
    v25 = 2;
    goto LABEL_10;
  }

  if (v24 != 1)
  {
    if (v24)
    {
      v33 = v24;
      v25 = v24;
    }

    else
    {
      v25 = 0;
    }

LABEL_10:
    sub_1D7689A20(v25);

    sub_1D7689A20(1);
    return;
  }

  v26 = v21;
  v38 = v20;
  v39 = v6;
  sub_1D7689A20(1);
  sub_1D7689A20(1);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v28 = Strong;
    if (a3)
    {
      sub_1D766844C(0, &qword_1EE0AED30);
      v36 = sub_1D77045F0();
      sub_1D7704120();
      sub_1D7704150();
      v37 = *(v26 + 8);
      v29 = v38;
      v37(v18, v38);
      v30 = swift_allocObject();
      *(v30 + 16) = v28;
      aBlock[4] = sub_1D7689A30;
      aBlock[5] = v30;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1D7672F74;
      aBlock[3] = &block_descriptor_16;
      v31 = _Block_copy(aBlock);
      v35 = v28;

      sub_1D77040F0();
      aBlock[0] = MEMORY[0x1E69E7CC0];
      sub_1D7689834();
      sub_1D768988C(0, &qword_1EE0AED90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
      sub_1D76898F0();
      sub_1D77046E0();
      v32 = v36;
      MEMORY[0x1DA6FF3A0](v23, v13, v9, v31);
      _Block_release(v31);

      (*(v39 + 8))(v9, v5);
      (*(v40 + 8))(v13, v10);
      v37(v23, v29);
    }

    else
    {
    }
  }
}

id sub_1D7688FA0()
{
  v7.receiver = v0;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC7NewsAds17DebugBannerAdView_moreButton];
  [v0 bounds];
  Width = CGRectGetWidth(v8);
  [v1 frame];
  v3 = Width - CGRectGetWidth(v9) * 0.5 + -8.0;
  [v1 frame];
  [v1 setCenter_];
  v4 = *&v0[OBJC_IVAR____TtC7NewsAds17DebugBannerAdView_label];
  [v0 bounds];
  v5 = CGRectGetWidth(v11) * 0.5;
  [v0 bounds];
  return [v4 setCenter_];
}

uint64_t sub_1D76891DC()
{
  v1 = *(*v0 + OBJC_IVAR____TtC7NewsAds17DebugBannerAdView_contentIdentifier);

  return v1;
}

uint64_t sub_1D7689274(uint64_t a1, uint64_t a2)
{
  sub_1D768988C(0, &qword_1EE0AFCD8, sub_1D7689308, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D7689308()
{
  result = qword_1EE0AFCE0;
  if (!qword_1EE0AFCE0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE0AFCE0);
  }

  return result;
}

void sub_1D768936C(void *a1, void (*a2)(id *), float a3, double a4)
{
  v8 = sub_1D76894A8(0x1000001uLL);
  if (v8 != 0x1000000)
  {
    if (vcvts_n_f32_u32(v8, 0x18uLL) >= a3)
    {
      goto LABEL_3;
    }

LABEL_5:
    [a1 setFrame_];
    v10 = 1;
    sub_1D76899CC();
    sub_1D77034A0();
    goto LABEL_6;
  }

  if (a3 > 1.0)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1D7689978();
  v10 = swift_allocError();
  sub_1D76899CC();
  sub_1D77034A0();
  sub_1D7689A20(v10);
LABEL_6:
  sub_1D7703480();
  v9 = v10;
  a2(&v9);
  sub_1D7689A20(v9);
}

unint64_t sub_1D76894A8(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = result;
    v5 = 0;
    MEMORY[0x1DA7000A0](&v5, 8);
    v3 = v5 * v2;
    if (v3 < v1)
    {
      for (i = -v1 % v1; i > v3; v3 = v5 * v2)
      {
        v5 = 0;
        MEMORY[0x1DA7000A0](&v5, 8);
      }
    }

    return HIDWORD(v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1D7689534()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC7NewsAds17DebugBannerAdView_state;
  sub_1D76897BC(0, &qword_1EE0B0888, &type metadata for BannerAdViewState, MEMORY[0x1E69D6538]);
  swift_allocObject();
  *(v0 + v2) = sub_1D7703470();
  v3 = OBJC_IVAR____TtC7NewsAds17DebugBannerAdView_onLongPress;
  sub_1D76897BC(0, &qword_1EE0B0810, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69D8770]);
  *(v1 + v3) = [objc_allocWithZone(v4) init];
  v5 = (v1 + OBJC_IVAR____TtC7NewsAds17DebugBannerAdView_additionalEdgeInsets);
  *v5 = xmmword_1D7709350;
  v5[1] = xmmword_1D7709350;
  v6 = OBJC_IVAR____TtC7NewsAds17DebugBannerAdView_moreButton;
  v7 = [objc_opt_self() buttonWithType_];
  v8 = sub_1D7704230();
  v9 = [objc_opt_self() systemImageNamed_];

  [v7 setImage:v9 forState:0];
  *(v1 + v6) = v7;
  v10 = OBJC_IVAR____TtC7NewsAds17DebugBannerAdView_label;
  *(v1 + v10) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  sub_1D7704860();
  __break(1u);
}

uint64_t sub_1D7689730(uint64_t a1)
{
  sub_1D768988C(0, &qword_1EE0AFCD8, sub_1D7689308, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D76897BC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1D7689834()
{
  result = qword_1EE0AEDA8;
  if (!qword_1EE0AEDA8)
  {
    sub_1D77040D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0AEDA8);
  }

  return result;
}

void sub_1D768988C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1D76898F0()
{
  result = qword_1EE0AED88;
  if (!qword_1EE0AED88)
  {
    sub_1D768988C(255, &qword_1EE0AED90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0AED88);
  }

  return result;
}

unint64_t sub_1D7689978()
{
  result = qword_1EC9BD128;
  if (!qword_1EC9BD128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD128);
  }

  return result;
}

unint64_t sub_1D76899CC()
{
  result = qword_1EE0AFCC0;
  if (!qword_1EE0AFCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0AFCC0);
  }

  return result;
}

void sub_1D7689A20(id a1)
{
  if (a1 >= 3)
  {
  }
}

unint64_t sub_1D7689A8C()
{
  result = qword_1EC9BD130;
  if (!qword_1EC9BD130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD130);
  }

  return result;
}

uint64_t AdPolicyFailureType.hashValue.getter()
{
  v1 = *v0;
  sub_1D7704AD0();
  MEMORY[0x1DA6FF8B0](v1);
  return sub_1D7704AF0();
}

unint64_t sub_1D7689B74()
{
  result = qword_1EE0AFA98;
  if (!qword_1EE0AFA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0AFA98);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AdPolicyFailureType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AdPolicyFailureType(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t SponsorshipAdContext.sponsorshipData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  v5 = *(v1 + 56);
  v6 = *(v1 + 64);
  *a1 = *(v1 + 24);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
}

uint64_t SponsorshipAdContext.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 104);
  v4 = *(v1 + 136);
  v10 = *(v1 + 120);
  v3 = v10;
  v11 = v4;
  v12 = *(v1 + 152);
  v6 = *(v1 + 88);
  v9[0] = *(v1 + 72);
  v5 = v9[0];
  v9[1] = v6;
  v9[2] = v2;
  *(a1 + 80) = v12;
  *(a1 + 32) = v2;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *a1 = v5;
  *(a1 + 16) = v6;
  return sub_1D767DFA0(v9, v8);
}

uint64_t sub_1D7689E08()
{
  v1 = *v0;
  v2 = 0x61746144707061;
  v3 = 0x73726F736E6F7073;
  v4 = 0x6174614464656566;
  if (v1 != 4)
  {
    v4 = 0x6C61727265666572;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6174614472657375;
  if (v1 != 1)
  {
    v5 = 0x6E656D6563616C70;
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

uint64_t sub_1D7689EE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D768B0F8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D7689F18(uint64_t a1)
{
  v2 = sub_1D768A3E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D7689F54(uint64_t a1)
{
  v2 = sub_1D768A3E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SponsorshipAdContext.encode(to:)(void *a1)
{
  sub_1D768AA80(0, &qword_1EC9BD138, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v19 - v7;
  v9 = *v1;
  v28 = *(v1 + 1);
  v27 = v1[16];
  v10 = *(v1 + 3);
  v25 = *(v1 + 4);
  v26 = v10;
  LODWORD(v10) = v1[40];
  v24 = *(v1 + 6);
  v23 = v1[56];
  v22 = *(v1 + 8);
  v11 = *(v1 + 120);
  v42 = *(v1 + 104);
  v43 = v11;
  v44 = *(v1 + 136);
  v45 = *(v1 + 19);
  v12 = *(v1 + 88);
  v40 = *(v1 + 72);
  v41 = v12;
  v20 = v1[160];
  v21 = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D768A3E0();
  sub_1D7704B10();
  LOBYTE(v34) = v9;
  LOBYTE(v31[0]) = 0;
  sub_1D7669D40();
  v13 = v46;
  sub_1D7704A00();
  if (v13)
  {
    return (*(v5 + 8))(v8, v4);
  }

  v14 = v27;
  v16 = v25;
  v15 = v26;
  *&v34 = v28;
  LOBYTE(v31[0]) = 1;
  sub_1D7669394();

  sub_1D7704A00();

  LOBYTE(v34) = v14;
  LOBYTE(v31[0]) = 2;
  sub_1D76794CC();
  sub_1D7704A00();
  v46 = v5;
  *&v34 = v15;
  *(&v34 + 1) = v16;
  LOBYTE(v35) = v21;
  *(&v35 + 1) = v24;
  LOBYTE(v36) = v23;
  *(&v36 + 1) = v22;
  LOBYTE(v31[0]) = 3;
  sub_1D7679E50();

  sub_1D7704A00();

  v36 = v42;
  v37 = v43;
  v38 = v44;
  v39 = v45;
  v34 = v40;
  v35 = v41;
  v33 = 4;
  sub_1D767DFA0(&v40, v31);
  sub_1D766CFCC();
  sub_1D77049B0();
  v17 = v46;
  v31[2] = v36;
  v31[3] = v37;
  v31[4] = v38;
  v32 = v39;
  v31[0] = v34;
  v31[1] = v35;
  sub_1D7680928(v31);
  v30 = v20;
  v29 = 5;
  sub_1D768A434();
  sub_1D77049B0();
  return (*(v17 + 8))(v8, v4);
}

unint64_t sub_1D768A3E0()
{
  result = qword_1EC9BD140;
  if (!qword_1EC9BD140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD140);
  }

  return result;
}

unint64_t sub_1D768A434()
{
  result = qword_1EE0AE990;
  if (!qword_1EE0AE990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0AE990);
  }

  return result;
}

uint64_t SponsorshipAdContext.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D768AA80(0, &qword_1EC9BD148, MEMORY[0x1E69E6F48]);
  v72 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v21 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D768A3E0();
  sub_1D7704B00();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = v6;
  LOBYTE(v29) = 0;
  sub_1D7669CEC();
  sub_1D7704970();
  v11 = v35;
  LOBYTE(v29) = 1;
  sub_1D76684E8();
  sub_1D7704970();
  v28 = v35;
  LOBYTE(v29) = 2;
  sub_1D7679440();
  sub_1D7704970();
  v12 = v35;
  LOBYTE(v29) = 3;
  sub_1D7679DFC();
  sub_1D7704970();
  v25 = v12;
  v22 = v37;
  v26 = v39;
  v27 = v36;
  v13 = v40;
  v23 = v35;
  v24 = v41;
  v55 = 4;
  sub_1D766CDD0();
  sub_1D7704920();
  v21 = v13;
  v64 = v58;
  v65 = v59;
  v66 = v60;
  v67 = v61;
  v62 = v56;
  v63 = v57;
  v53 = 5;
  sub_1D768AAE4();
  sub_1D7704920();
  (*(v10 + 8))(v9, v72);
  LOBYTE(v29) = v11;
  *(&v29 + 1) = v71[0];
  DWORD1(v29) = *(v71 + 3);
  *(&v29 + 1) = v28;
  LOBYTE(v30) = v25;
  *(&v30 + 1) = *v70;
  DWORD1(v30) = *&v70[3];
  *(&v30 + 1) = v23;
  *&v31 = v27;
  LOBYTE(v10) = v21;
  BYTE8(v31) = v22;
  HIDWORD(v31) = *&v69[3];
  *(&v31 + 9) = *v69;
  v14 = v54;
  *&v32 = v26;
  BYTE8(v32) = v21;
  *(&v32 + 9) = *v68;
  HIDWORD(v32) = *&v68[3];
  *&v33[0] = v24;
  *(&v33[2] + 8) = v64;
  *(&v33[3] + 8) = v65;
  *(&v33[4] + 8) = v66;
  *(&v33[5] + 1) = v67;
  *(v33 + 8) = v62;
  *(&v33[1] + 8) = v63;
  v34 = v54;
  *(a2 + 160) = v54;
  v15 = v30;
  *a2 = v29;
  *(a2 + 16) = v15;
  v16 = v32;
  *(a2 + 32) = v31;
  *(a2 + 48) = v16;
  v17 = v33[1];
  *(a2 + 64) = v33[0];
  *(a2 + 80) = v17;
  v18 = v33[3];
  *(a2 + 96) = v33[2];
  *(a2 + 112) = v18;
  v19 = v33[5];
  *(a2 + 128) = v33[4];
  *(a2 + 144) = v19;
  sub_1D767B4C8(&v29, &v35);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v48 = v64;
  v49 = v65;
  v50 = v66;
  v46 = v62;
  LOBYTE(v35) = v11;
  *(&v35 + 1) = v71[0];
  HIDWORD(v35) = *(v71 + 3);
  v36 = v28;
  v37 = v25;
  *v38 = *v70;
  *&v38[3] = *&v70[3];
  v39 = v23;
  v40 = v27;
  LOBYTE(v41) = v22;
  *(&v41 + 1) = *v69;
  HIDWORD(v41) = *&v69[3];
  v42 = v26;
  v43 = v10;
  *v44 = *v68;
  *&v44[3] = *&v68[3];
  v45 = v24;
  v51 = v67;
  v47 = v63;
  v52 = v14;
  return sub_1D767B518(&v35);
}

void sub_1D768AA80(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D768A3E0();
    v7 = a3(a1, &type metadata for SponsorshipAdContext.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D768AAE4()
{
  result = qword_1EE0AE988;
  if (!qword_1EE0AE988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0AE988);
  }

  return result;
}

uint64_t sub_1D768AB68(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_1D768ABAC()
{
  result = qword_1EE0AE5B8;
  if (!qword_1EE0AE5B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE0AE5B8);
  }

  return result;
}

__n128 __swift_memcpy161_8(uint64_t a1, __int128 *a2)
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
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_1D768AC34(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 161))
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

uint64_t sub_1D768AC7C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 160) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 161) = 1;
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

    *(result + 161) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SponsorshipAdContext.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SponsorshipAdContext.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D768AE3C()
{
  result = qword_1EC9BD150;
  if (!qword_1EC9BD150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD150);
  }

  return result;
}

unint64_t sub_1D768AE94()
{
  result = qword_1EC9BD158;
  if (!qword_1EC9BD158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD158);
  }

  return result;
}

unint64_t sub_1D768AEEC()
{
  result = qword_1EC9BD160;
  if (!qword_1EC9BD160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD160);
  }

  return result;
}

uint64_t sub_1D768AF58(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v13 = a2;
    result = sub_1D7704880();
    a2 = v13;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1D7704880();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          v8 = MEMORY[0x1E69C5EF8];
          sub_1D768B308(0, &qword_1EC9BD178, MEMORY[0x1E69C5EF8]);
          sub_1D768B35C(&qword_1EC9BD180, &qword_1EC9BD178, v8);
          for (i = 0; i != v6; ++i)
          {
            v10 = sub_1D76ADB18(v14, i, a3);
            v12 = *v11;
            (v10)(v14, 0);
            *(v4 + 8 * i) = v12;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1D7703780();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D768B0F8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x61746144707061 && a2 == 0xE700000000000000;
  if (v4 || (sub_1D7704A30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6174614472657375 && a2 == 0xE800000000000000 || (sub_1D7704A30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E656D6563616C70 && a2 == 0xED00006174614474 || (sub_1D7704A30() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x73726F736E6F7073 && a2 == 0xEF61746144706968 || (sub_1D7704A30() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000 || (sub_1D7704A30() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6C61727265666572 && a2 == 0xEC00000061746144)
  {

    return 5;
  }

  else
  {
    v6 = sub_1D7704A30();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

void sub_1D768B308(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D77044B0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D768B35C(unint64_t *a1, unint64_t *a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1D768B308(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

NewsAds::AdContextDataNamespace::Edge_optional __swiftcall AdContextDataNamespace.Edge.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D77048E0();

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

uint64_t AdContextDataNamespace.Edge.rawValue.getter()
{
  if (*v0)
  {
    return 0x676E696C69617274;
  }

  else
  {
    return 0x676E696461656CLL;
  }
}

uint64_t sub_1D768B44C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x676E696C69617274;
  }

  else
  {
    v3 = 0x676E696461656CLL;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x676E696C69617274;
  }

  else
  {
    v5 = 0x676E696461656CLL;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D7704A30();
  }

  return v8 & 1;
}

unint64_t sub_1D768B4F8()
{
  result = qword_1EC9BD188;
  if (!qword_1EC9BD188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD188);
  }

  return result;
}

uint64_t sub_1D768B54C()
{
  sub_1D7704AD0();
  sub_1D77042D0();

  return sub_1D7704AF0();
}

uint64_t sub_1D768B5D0()
{
  sub_1D77042D0();
}

uint64_t sub_1D768B640()
{
  sub_1D7704AD0();
  sub_1D77042D0();

  return sub_1D7704AF0();
}

uint64_t sub_1D768B6C0@<X0>(char *a1@<X8>)
{
  v2 = sub_1D77048E0();

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

void sub_1D768B720(uint64_t *a1@<X8>)
{
  v2 = 0x676E696461656CLL;
  if (*v1)
  {
    v2 = 0x676E696C69617274;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1D768B780(uint64_t a1, unsigned int a2)
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

uint64_t sub_1D768B7C8(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t AdStatusConditionManager.addProvider(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  v6 = v2[7];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3[7] = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_10;
  }

  while (1)
  {
    v9 = v6[2];
    v8 = v6[3];
    if (v9 >= v8 >> 1)
    {
      v6 = sub_1D768C1D8((v8 > 1), v9 + 1, 1, v6);
    }

    v6[2] = v9 + 1;
    v10 = &v6[2 * v9];
    v10[4] = a1;
    v10[5] = a2;
    v3[7] = v6;
    swift_endAccess();
    v11 = swift_allocObject();
    ObjectType = swift_getObjectType();
    v13 = *(a2 + 8);
    swift_unknownObjectRetain();
    v13(ObjectType, a2);
    v22 = v13;
    sub_1D7703480();

    v13(ObjectType, a2);
    v14 = swift_allocObject();
    swift_weakInit();
    v15 = swift_allocObject();
    *(v15 + 24) = a2;
    swift_unknownObjectWeakInit();
    v16 = swift_allocObject();
    v16[2] = v11;
    v16[3] = v14;
    v16[4] = v15;

    sub_1D7703490();

    __swift_destroy_boxed_opaque_existential_1(v24);
    v6 = v22(ObjectType, a2);
    sub_1D7703480();

    a2 = v23;
    v17 = *(v23 + 16);
    if (!v17)
    {
      break;
    }

    v18 = 0;
    v19 = (v23 + 48);
    while (v18 < *(v23 + 16))
    {
      ++v18;
      v20 = *v19;
      a1 = *(v19 - 1);
      v24[0] = *(v19 - 2);
      v24[1] = a1;
      v25 = v20;

      v6 = v3;
      sub_1D768BD8C(v24);

      v19 += 24;
      if (v17 == v18)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_10:
    v6 = sub_1D768C1D8(0, v6[2] + 1, 1, v6);
    v3[7] = v6;
  }

LABEL_8:
}

uint64_t sub_1D768BAF0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = *a1;
  swift_beginAccess();
  v24 = a2;
  v5 = *(a2 + 16);
  v6 = *(v5 + 16);

  if (v6)
  {
    v8 = 0;
    while (v8 < *(v5 + 16))
    {
      v9 = (v5 + 32 + 24 * v8);
      v10 = *v9;
      v11 = v9[1];
      ++v8;
      v12 = *(v26 + 16) + 1;
      v13 = (v26 + 40);
      while (--v12)
      {
        result = *(v13 - 1);
        if (result != v10 || *v13 != v11)
        {
          v13 += 3;
          result = sub_1D7704A30();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_3;
      }

      swift_beginAccess();
      result = swift_weakLoadStrong();
      if (result)
      {
        v30[0] = v10;
        v30[1] = v11;
        v31 = 1;
        swift_bridgeObjectRetain_n();
        sub_1D768BD8C(v30);
      }

LABEL_3:
      if (v8 == v6)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
    goto LABEL_25;
  }

LABEL_15:

  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
LABEL_23:
    swift_beginAccess();
    *(v24 + 16) = v26;
  }

  v15 = *(a4 + 24);
  ObjectType = swift_getObjectType();
  (*(v15 + 8))(ObjectType, v15);
  swift_unknownObjectRelease();
  sub_1D7703480();

  v17 = v29;
  v18 = *(v29 + 16);
  if (!v18)
  {
LABEL_22:

    goto LABEL_23;
  }

  v19 = 0;
  v20 = (v29 + 48);
  while (v19 < *(v17 + 16))
  {
    v21 = *(v20 - 2);
    v22 = *(v20 - 1);
    v23 = *v20;
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      v27[0] = v21;
      v27[1] = v22;
      v28 = v23;

      sub_1D768BD8C(v27);
    }

    ++v19;
    v20 += 24;
    if (v18 == v19)
    {
      goto LABEL_22;
    }
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_1D768BD8C(uint64_t *a1)
{
  sub_1D768CEF0(0, &qword_1EE0AEB50, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v25 - v4;
  v6 = sub_1D7702FA0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v27 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v10 = a1[1];
  v30 = *(a1 + 16);
  if (qword_1EE0AE8B8 != -1)
  {
    swift_once();
  }

  v12 = qword_1EE0AE8C0;
  sub_1D7704590();
  sub_1D76736D4(0, &qword_1EE0AEBF0, &qword_1EE0AEBC0);
  v26 = v13;
  v14 = swift_allocObject();
  v25 = xmmword_1D7708FD0;
  *(v14 + 16) = xmmword_1D7708FD0;
  v15 = MEMORY[0x1E69E6158];
  *(v14 + 56) = MEMORY[0x1E69E6158];
  v16 = sub_1D7668854();
  *(v14 + 64) = v16;
  *(v14 + 32) = v11;
  *(v14 + 40) = v10;
  v32 = 0;
  v33 = 0xE000000000000000;
  v31 = v30;

  sub_1D7704850();
  v17 = v32;
  v18 = v33;
  *(v14 + 96) = v15;
  *(v14 + 104) = v16;
  *(v14 + 72) = v17;
  *(v14 + 80) = v18;
  v28 = v12;
  sub_1D7703ED0();

  sub_1D7702F60();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1D768D24C(v5);
    sub_1D7704590();
    v19 = swift_allocObject();
    *(v19 + 16) = v25;
    v20 = MEMORY[0x1E69E6158];
    *(v19 + 56) = MEMORY[0x1E69E6158];
    *(v19 + 64) = v16;
    *(v19 + 32) = v11;
    *(v19 + 40) = v10;
    v32 = 0;
    v33 = 0xE000000000000000;
    v31 = v30;

    sub_1D7704850();
    v21 = v32;
    v22 = v33;
    *(v19 + 96) = v20;
    *(v19 + 104) = v16;
    *(v19 + 72) = v21;
    *(v19 + 80) = v22;
    sub_1D7703ED0();
  }

  else
  {
    v24 = v27;
    (*(v7 + 32))(v27, v5, v6);
    __swift_project_boxed_opaque_existential_1((v29 + 16), *(v29 + 40));
    if (v30)
    {
      sub_1D76FB078(v24);
    }

    else
    {
      sub_1D76FAFE4(v24);
    }

    return (*(v7 + 8))(v24, v6);
  }
}

uint64_t AdStatusConditionManager.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return v0;
}

uint64_t AdStatusConditionManager.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocClassInstance();
}

void *sub_1D768C1D8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1D76736D4(0, &qword_1EE0AE5A0, &qword_1EE0AE680);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1D7666184(0, &qword_1EE0AE680);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D768C380(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1D766C3F0(0, &qword_1EC9BD190, &type metadata for AdPreviewQueue.AdPreviewWrapper, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D768C4A4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1D766C3F0(0, &qword_1EE0AEC60, &type metadata for DebugJournal.Action, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D768C5D8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1D766C3F0(0, &qword_1EE0AEC28, &type metadata for AdPolicyFailure, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D768C764(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1D766C3F0(0, &qword_1EE0AEC20, &type metadata for JournalEntryStatus.Info, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D768C89C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1D766C3F0(0, &qword_1EE0AEC38, &type metadata for AdSegmentScope, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_1D768C9C4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1D768CEF0(0, &qword_1EE0AEBF8, type metadata accessor for CGRect, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

size_t sub_1D768CB20(size_t result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1D768CEF0(0, a5, a6, MEMORY[0x1E69E6F90]);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *sub_1D768CD30(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, unint64_t *a6, uint64_t a7)
{
  v10 = result;
  if (a3)
  {
    v11 = a4[3];
    v12 = v11 >> 1;
    if ((v11 >> 1) < a2)
    {
      if (v12 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v12 = v11 & 0xFFFFFFFFFFFFFFFELL;
      if ((v11 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v12 = a2;
      }
    }
  }

  else
  {
    v12 = a2;
  }

  v13 = a4[2];
  if (v12 <= v13)
  {
    v14 = a4[2];
  }

  else
  {
    v14 = v12;
  }

  if (v14)
  {
    sub_1D768CE84(0, a5, a6, a7);
    v15 = swift_allocObject();
    v16 = _swift_stdlib_malloc_size(v15);
    v17 = v16 - 32;
    if (v16 < 32)
    {
      v17 = v16 - 25;
    }

    v15[2] = v13;
    v15[3] = 2 * (v17 >> 3);
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
  }

  if (v10)
  {
    if (v15 != a4 || v15 + 4 >= &a4[v13 + 4])
    {
      memmove(v15 + 4, a4 + 4, 8 * v13);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1D766C3F0(0, a6, a7, MEMORY[0x1E69E62F8]);
    swift_arrayInitWithCopy();
  }

  return v15;
}

void sub_1D768CE84(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1D766C3F0(255, a3, a4, MEMORY[0x1E69E62F8]);
    v5 = sub_1D7704A20();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1D768CEF0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void *sub_1D768CF54(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1D768CEF0(0, &qword_1EE0AEBD8, sub_1D767050C, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1D767050C();
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D768D0A0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1D766C3F0(0, &qword_1EC9BD1B0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1D768D1CC()
{
  if (!qword_1EE0B0320[0])
  {
    type metadata accessor for NativeAdPlacement();
    sub_1D7666D14();
    v0 = type metadata accessor for JournalEntry();
    if (!v1)
    {
      atomic_store(v0, qword_1EE0B0320);
    }
  }
}

uint64_t sub_1D768D24C(uint64_t a1)
{
  sub_1D768CEF0(0, &qword_1EE0AEB50, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ArticleAdData.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ArticleAdData.primaryAudience.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t ArticleAdData.language.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t sub_1D768D3A4()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0x6F67657461436461;
  if (v1 != 6)
  {
    v3 = 0x65676175676E616CLL;
  }

  v4 = 0x6F69746365536461;
  if (v1 != 4)
  {
    v4 = 0x726F7779654B6461;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x6F736E6F70537369;
  if (v1 != 2)
  {
    v5 = 0x417972616D697270;
  }

  if (*v0)
  {
    v2 = 0x74666172447369;
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

uint64_t sub_1D768D4C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D768E5EC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D768D4F4(uint64_t a1)
{
  v2 = sub_1D768D87C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D768D530(uint64_t a1)
{
  v2 = sub_1D768D87C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ArticleAdData.encode(to:)(void *a1)
{
  sub_1D768DE88(0, &qword_1EC9BD1B8, MEMORY[0x1E69E6F58]);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = v23 - v6;
  v8 = *(v1 + 16);
  v28 = *(v1 + 17);
  LODWORD(v29) = v8;
  v9 = *(v1 + 24);
  v26 = *(v1 + 32);
  v27 = v9;
  v10 = *(v1 + 40);
  v24 = *(v1 + 48);
  v25 = v10;
  v11 = *(v1 + 64);
  v23[0] = *(v1 + 56);
  v23[1] = v11;
  v12 = *(v1 + 72);
  v13 = a1[3];
  v14 = a1;
  v16 = v15;
  __swift_project_boxed_opaque_existential_1(v14, v13);
  sub_1D768D87C();
  sub_1D7704B10();
  LOBYTE(v32) = 0;
  v17 = v7;
  v18 = v30;
  sub_1D77049C0();
  if (v18)
  {
    return (*(v4 + 8))(v7, v16);
  }

  v19 = v24;
  v20 = v25;
  v30 = v12;
  LOBYTE(v32) = 1;
  sub_1D77049D0();
  LOBYTE(v32) = 2;
  sub_1D77049D0();
  LOBYTE(v32) = 3;
  sub_1D77049C0();
  v32 = v20;
  v31 = 4;
  sub_1D76697B0();
  sub_1D768DEEC(&qword_1EC9BE010);
  v29 = v17;
  sub_1D7704A00();
  v32 = v19;
  v31 = 5;
  sub_1D7704A00();
  v32 = v23[0];
  v31 = 6;
  v22 = v29;
  sub_1D7704A00();
  LOBYTE(v32) = 7;
  sub_1D77049A0();
  return (*(v4 + 8))(v22, v16);
}

unint64_t sub_1D768D87C()
{
  result = qword_1EC9BD1C0;
  if (!qword_1EC9BD1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD1C0);
  }

  return result;
}

uint64_t ArticleAdData.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1D768DE88(0, &qword_1EC9BD1C8, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v31 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D768D87C();
  sub_1D7704B00();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v43[0]) = 0;
  v11 = sub_1D7704930();
  v13 = v12;
  v58 = v11;
  LOBYTE(v43[0]) = 1;
  v14 = sub_1D7704940();
  LOBYTE(v43[0]) = 2;
  LODWORD(v37) = sub_1D7704940();
  LOBYTE(v43[0]) = 3;
  v33 = sub_1D7704930();
  v36 = v15;
  sub_1D76697B0();
  v17 = v16;
  LOBYTE(v38) = 4;
  v18 = sub_1D768DEEC(&qword_1EC9BD1D0);
  v35 = v17;
  v34 = v18;
  sub_1D7704970();
  v32 = v43[0];
  LOBYTE(v38) = 5;
  v31[1] = 0;
  sub_1D7704970();
  v31[0] = v43[0];
  LOBYTE(v38) = 6;
  sub_1D7704970();
  v35 = v43[0];
  v55 = 7;
  v19 = sub_1D7704910();
  LODWORD(v34) = v14 & 1;
  LOBYTE(v17) = v37 & 1;
  v20 = *(v7 + 8);
  v37 = v19;
  v22 = v21;
  v20(v10, v6);
  v23 = v58;
  *&v38 = v58;
  *(&v38 + 1) = v13;
  LOBYTE(v39) = v34;
  BYTE1(v39) = v17;
  *(&v39 + 2) = v56;
  WORD3(v39) = v57;
  v24 = v36;
  *(&v39 + 1) = v33;
  *&v40 = v36;
  v25 = v32;
  *(&v40 + 1) = v32;
  *&v41 = v31[0];
  *(&v41 + 1) = v35;
  *&v42 = v37;
  *(&v42 + 1) = v22;
  v26 = v38;
  v27 = v39;
  v28 = v42;
  a2[3] = v41;
  a2[4] = v28;
  v29 = v40;
  a2[1] = v27;
  a2[2] = v29;
  *a2 = v26;
  sub_1D768DF4C(&v38, v43);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v43[0] = v23;
  v43[1] = v13;
  v44 = v34;
  v45 = v17;
  v46 = v56;
  v47 = v57;
  v48 = v33;
  v49 = v24;
  v50 = v25;
  v51 = v31[0];
  v52 = v35;
  v53 = v37;
  v54 = v22;
  return sub_1D768DF84(v43);
}