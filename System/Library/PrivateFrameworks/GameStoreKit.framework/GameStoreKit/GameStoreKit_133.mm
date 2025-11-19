unint64_t sub_24F39D5C8()
{
  result = qword_27F2412C8;
  if (!qword_27F2412C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2412D0);
    sub_24E602068(&qword_27F2412D8, &qword_27F2412E0);
    sub_24E602068(&unk_27F2129E0, &unk_27F22E040);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2412C8);
  }

  return result;
}

uint64_t sub_24F39D6C0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_24F928AD8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24F39D780(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_24F928AD8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for AcceptChallengeAction()
{
  result = qword_27F2412E8;
  if (!qword_27F2412E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F39D870()
{
  sub_24F39D978(319, &qword_27F2182B8, MEMORY[0x277D21AA0]);
  if (v0 <= 0x3F)
  {
    sub_24E6BCB04();
    if (v1 <= 0x3F)
    {
      sub_24F39D978(319, &qword_27F21BF30, MEMORY[0x277D21FC8]);
      if (v2 <= 0x3F)
      {
        sub_24F928AD8();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_24F39D978(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_24E678D94();
    v7 = a3(a1, &type metadata for ActionKinds, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_24F39D9DC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F241308);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F39E618();
  sub_24F92D128();
  v8[15] = 0;
  sub_24F92CD08();
  if (!v1)
  {
    v8[14] = 1;
    sub_24F92CD08();
    v8[13] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2169E8);
    sub_24E602068(&qword_27F218310, &qword_27F2169E8);
    sub_24F92CD48();
    v8[12] = 3;
    sub_24F92CCA8();
    v8[11] = 4;
    sub_24F92CD48();
    v8[10] = 5;
    sub_24F92CD48();
    v8[9] = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213EA8);
    sub_24E602068(&qword_27F21BE88, &qword_27F213EA8);
    sub_24F92CD48();
    type metadata accessor for AcceptChallengeAction();
    v8[8] = 7;
    sub_24F928AD8();
    sub_24E674184(&qword_27F216080);
    sub_24F92CD48();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_24F39DD68@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v3 = sub_24F928AD8();
  v29 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2412F8);
  v31 = *(v6 - 8);
  v32 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v26 - v7;
  v9 = type metadata accessor for AcceptChallengeAction();
  MEMORY[0x28223BE20](v9);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v11 + 168) = 0u;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  *(v11 + 184) = 0u;
  *(v11 + 25) = 0;
  v12 = (v11 + 168);
  sub_24E61DA68(&v36, (v11 + 168), qword_27F21B590);
  v13 = a1[3];
  v35 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_24F39E618();
  v33 = v8;
  v14 = v34;
  sub_24F92D108();
  if (v14)
  {
    __swift_destroy_boxed_opaque_existential_1(v35);
    return sub_24E601704(v12, &qword_27F213EA8);
  }

  else
  {
    v27 = v9;
    v28 = v3;
    v34 = v5;
    v16 = v31;
    v15 = v32;
    LOBYTE(v36) = 0;
    *v11 = sub_24F92CC28();
    *(v11 + 1) = v17;
    LOBYTE(v36) = 1;
    *(v11 + 2) = sub_24F92CC28();
    *(v11 + 3) = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2169E8);
    v39 = 2;
    sub_24E602068(&qword_27F243830, &qword_27F2169E8);
    sub_24F92CC68();
    v19 = v37;
    *(v11 + 2) = v36;
    *(v11 + 3) = v19;
    *(v11 + 8) = v38;
    LOBYTE(v36) = 3;
    v26 = 0;
    *(v11 + 9) = sub_24F92CBC8();
    *(v11 + 10) = v20;
    v39 = 4;
    sub_24F92CC68();
    v21 = v37;
    *(v11 + 88) = v36;
    *(v11 + 104) = v21;
    *(v11 + 15) = v38;
    v39 = 5;
    sub_24F92CC68();
    v22 = v37;
    *(v11 + 8) = v36;
    *(v11 + 9) = v22;
    *(v11 + 20) = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213EA8);
    v39 = 6;
    sub_24E602068(&qword_27F21BEE8, &qword_27F213EA8);
    sub_24F92CC68();
    sub_24E61DA68(&v36, v12, &qword_27F213EA8);
    LOBYTE(v36) = 7;
    sub_24E674184(&qword_27F254CB0);
    v23 = v34;
    v24 = v28;
    sub_24F92CC68();
    (*(v16 + 8))(v33, v15);
    (*(v29 + 32))(&v11[*(v27 + 44)], v23, v24);
    sub_24F39E66C(v11, v30);
    __swift_destroy_boxed_opaque_existential_1(v35);
    return sub_24F39E6D0(v11);
  }
}

uint64_t sub_24F39E41C()
{
  v1 = *v0;
  v2 = 0x676E656C6C616863;
  v3 = 0x65756E69746E6F63;
  if (v1 != 6)
  {
    v3 = 0x654D6E6F69746361;
  }

  v4 = 0xD000000000000019;
  if (v1 != 4)
  {
    v4 = 0xD000000000000014;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0xD00000000000001CLL;
  if (v1 != 2)
  {
    v5 = 0x6F43657469766E69;
  }

  if (*v0)
  {
    v2 = 0x4449656C646E7562;
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

uint64_t sub_24F39E548@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24F39E844(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24F39E570(uint64_t a1)
{
  v2 = sub_24F39E618();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F39E5AC(uint64_t a1)
{
  v2 = sub_24F39E618();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_24F39E618()
{
  result = qword_27F241300;
  if (!qword_27F241300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F241300);
  }

  return result;
}

uint64_t sub_24F39E66C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AcceptChallengeAction();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F39E6D0(uint64_t a1)
{
  v2 = type metadata accessor for AcceptChallengeAction();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24F39E740()
{
  result = qword_27F241310;
  if (!qword_27F241310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F241310);
  }

  return result;
}

unint64_t sub_24F39E798()
{
  result = qword_27F241318;
  if (!qword_27F241318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F241318);
  }

  return result;
}

unint64_t sub_24F39E7F0()
{
  result = qword_27F241320;
  if (!qword_27F241320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F241320);
  }

  return result;
}

uint64_t sub_24F39E844(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676E656C6C616863 && a2 == 0xEB00000000444965;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001CLL && 0x800000024FA74810 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F43657469766E69 && a2 == 0xEA00000000006564 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000019 && 0x800000024FA74830 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000014 && 0x800000024FA74850 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x65756E69746E6F63 && a2 == 0xEE006E6F69746341 || (sub_24F92CE08() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x654D6E6F69746361 && a2 == 0xED00007363697274)
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

uint64_t sub_24F39EB00@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v64 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v6 - 8);
  v63 = &Seconds - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EB88);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &Seconds - v9;
  v11 = sub_24F928698();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &Seconds - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC12GameStoreKit17GSKVideoViewModel_video;
  v16 = type metadata accessor for GSKVideo();
  sub_24E60169C(v3 + *(v16 + 36) + v15, v10, &qword_27F21EB88);
  if ((*(v12 + 48))(v10, 1, v11) != 1)
  {
    (*(v12 + 32))(v14, v10, v11);
    v17 = *(v3 + OBJC_IVAR____TtC12GameStoreKit17GSKVideoViewModel_player);
    v18 = v14;
    if (!v17)
    {
      (*(v12 + 8))(v14, v11);
      goto LABEL_15;
    }

    v19 = v11;
    if (a1)
    {
      v20 = 1;
    }

    else
    {
      v20 = 10;
    }

    if (a2)
    {
      v21 = 0;
    }

    else
    {
      v21 = v20;
    }

    v22 = v17;
    v23 = [v22 currentItem];
    if (v23)
    {
      v24 = v23;
      v25 = [v23 asset];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A140);
      sub_24F91FDE8();
      sub_24F92C1B8();

      if (!v68)
      {
        [v24 duration];
        Seconds = CMTimeGetSeconds(&time);
        [v24 currentTime];
        v29 = CMTimeGetSeconds(&time);

        v26 = 0;
        v62 = *&v29;
LABEL_17:
        v30 = OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_videoUrl;
        v31 = sub_24F928688();
        v32 = MEMORY[0x277D837D0];
        v68 = MEMORY[0x277D837D0];
        time.value = 0x616964656DLL;
        *&time.timescale = 0xE500000000000000;
        sub_24E612B0C(&time, v66);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v69 = v31;
        sub_24E81C1D4(v66, 0x707954746E657665, 0xE900000000000065, isUniquelyReferenced_nonNull_native);
        v34 = v69;
        v68 = v32;
        time.value = 1886352499;
        *&time.timescale = 0xE400000000000000;
        sub_24E612B0C(&time, v66);
        v35 = swift_isUniquelyReferenced_nonNull_native();
        v69 = v34;
        sub_24E81C1D4(v66, 0x79546E6F69746361, 0xEA00000000006570, v35);
        v36 = v69;
        LOBYTE(v66[0]) = v21;
        v37 = MediaMetricsEvent.ActionDetails.rawValue.getter();
        v68 = v32;
        time.value = v37;
        *&time.timescale = v38;
        sub_24E612B0C(&time, v66);
        v39 = swift_isUniquelyReferenced_nonNull_native();
        v65 = v36;
        sub_24E81C1D4(v66, 0x65446E6F69746361, 0xED0000736C696174, v39);
        v69 = v65;
        sub_24E98EF1C(0x6F436E6F69746361, 0xED0000747865746ELL, &time);
        sub_24E601704(&time, &qword_27F2129B0);
        v40 = v63;
        sub_24E60169C(v22 + v30, v63, &qword_27F228530);
        v41 = sub_24F91F4A8();
        v42 = *(v41 - 8);
        if ((*(v42 + 48))(v40, 1, v41) == 1)
        {
          sub_24E601704(v40, &qword_27F228530);
          sub_24E98EF1C(7107189, 0xE300000000000000, &time);
          sub_24E601704(&time, &qword_27F2129B0);
        }

        else
        {
          v43 = sub_24F91F398();
          v68 = v32;
          time.value = v43;
          *&time.timescale = v44;
          (*(v42 + 8))(v40, v41);
          sub_24E612B0C(&time, v66);
          v45 = v69;
          v46 = swift_isUniquelyReferenced_nonNull_native();
          v65 = v45;
          sub_24E81C1D4(v66, 7107189, 0xE300000000000000, v46);
          v69 = v65;
        }

        v47 = v22;
        v11 = v19;
        if ((v26 & 1) == 0)
        {
          v48 = sub_24E99058C(Seconds, 0);
          if (v48)
          {
            v49 = v48;
            v68 = sub_24E9421D0();
            time.value = v49;
            sub_24E612B0C(&time, v66);
            v50 = v69;
            v51 = swift_isUniquelyReferenced_nonNull_native();
            v65 = v50;
            sub_24E81C1D4(v66, 0x6E6F697461727564, 0xE800000000000000, v51);
            v69 = v65;
          }

          else
          {
            sub_24E98EF1C(0x6E6F697461727564, 0xE800000000000000, &time);
            sub_24E601704(&time, &qword_27F2129B0);
          }

          v52 = sub_24E99058C(v62, 0);
          if (v52)
          {
            v53 = v52;
            v68 = sub_24E9421D0();
            time.value = v53;
            sub_24E612B0C(&time, v66);
            v54 = v69;
            v55 = swift_isUniquelyReferenced_nonNull_native();
            v65 = v54;
            sub_24E81C1D4(v66, 0x6E6F697469736F70, 0xE800000000000000, v55);
            v69 = v65;
          }

          else
          {
            sub_24E98EF1C(0x6E6F697469736F70, 0xE800000000000000, &time);
            sub_24E601704(&time, &qword_27F2129B0);
          }
        }

        v56 = v69;
        sub_24F928648();
        sub_24F928638();
        if (*(v56 + 16))
        {
          v57 = sub_24E76D644(0x6369706F74, 0xE500000000000000);
          if (v58)
          {
            sub_24E643A9C(*(v56 + 56) + 32 * v57, &time);
            if (swift_dynamicCast())
            {
              v59 = HIBYTE(*(&v66[0] + 1)) & 0xFLL;
              if ((*(&v66[0] + 1) & 0x2000000000000000) == 0)
              {
                v59 = *&v66[0] & 0xFFFFFFFFFFFFLL;
              }

              if (v59)
              {
                v28 = v64;
LABEL_36:
                sub_24F928658();

                (*(v12 + 8))(v18, v19);
                v27 = 0;
                return (*(v12 + 56))(v28, v27, 1, v11);
              }
            }
          }
        }

        v28 = v64;
        goto LABEL_36;
      }

      sub_24F146A58(time.value, *&time.timescale, time.epoch, v68);
    }

    Seconds = 0;
    v62 = 0;
    v26 = 1;
    goto LABEL_17;
  }

  sub_24E601704(v10, &qword_27F21EB88);
LABEL_15:
  v27 = 1;
  v28 = v64;
  return (*(v12 + 56))(v28, v27, 1, v11);
}

uint64_t sub_24F39F378@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v52 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EB88);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v52 - v8;
  v10 = sub_24F928698();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC12GameStoreKit17GSKVideoViewModel_video;
  v15 = type metadata accessor for GSKVideo();
  sub_24E60169C(v2 + *(v15 + 36) + v14, v9, &qword_27F21EB88);
  if ((*(v11 + 48))(v9, 1, v10) != 1)
  {
    (*(v11 + 32))(v13, v9, v10);
    v16 = *(v2 + OBJC_IVAR____TtC12GameStoreKit17GSKVideoViewModel_player);
    if (!v16)
    {
      (*(v11 + 8))(v13, v10);
      goto LABEL_9;
    }

    v56 = v16;
    v17 = [v56 currentItem];
    if (v17)
    {
      v18 = v17;
      v19 = [v17 asset];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A140);
      sub_24F91FDE8();
      sub_24F92C1B8();

      if (!v61)
      {
        [v18 duration];
        Seconds = CMTimeGetSeconds(&time);
        [v18 currentTime];
        v22 = CMTimeGetSeconds(&time);

        v55 = 0;
        v54 = *&v22;
LABEL_11:
        v23 = OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_videoUrl;
        v24 = sub_24F928688();
        v25 = MEMORY[0x277D837D0];
        v61 = MEMORY[0x277D837D0];
        time.value = 0x616964656DLL;
        *&time.timescale = 0xE500000000000000;
        sub_24E612B0C(&time, v59);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v62 = v24;
        sub_24E81C1D4(v59, 0x707954746E657665, 0xE900000000000065, isUniquelyReferenced_nonNull_native);
        v27 = v62;
        v61 = v25;
        time.value = 2036427888;
        *&time.timescale = 0xE400000000000000;
        sub_24E612B0C(&time, v59);
        v28 = swift_isUniquelyReferenced_nonNull_native();
        v58 = v27;
        sub_24E81C1D4(v59, 0x79546E6F69746361, 0xEA00000000006570, v28);
        v29 = v58;
        v62 = v58;
        if (a1)
        {
          sub_24E98EF1C(0x65446E6F69746361, 0xED0000736C696174, &time);
          sub_24E601704(&time, &qword_27F2129B0);
        }

        else
        {
          v61 = v25;
          time.value = 0x79616C706F747561;
          *&time.timescale = 0xE800000000000000;
          sub_24E612B0C(&time, v59);
          v30 = swift_isUniquelyReferenced_nonNull_native();
          v58 = v29;
          sub_24E81C1D4(v59, 0x65446E6F69746361, 0xED0000736C696174, v30);
          v62 = v58;
        }

        sub_24E98EF1C(0x6F436E6F69746361, 0xED0000747865746ELL, &time);
        sub_24E601704(&time, &qword_27F2129B0);
        v31 = &v56[v23];
        v32 = v56;
        sub_24E60169C(v31, v6, &qword_27F228530);
        v33 = sub_24F91F4A8();
        v34 = *(v33 - 8);
        if ((*(v34 + 48))(v6, 1, v33) == 1)
        {
          sub_24E601704(v6, &qword_27F228530);
          sub_24E98EF1C(7107189, 0xE300000000000000, &time);
          sub_24E601704(&time, &qword_27F2129B0);
          if (v55)
          {
            goto LABEL_24;
          }
        }

        else
        {
          v35 = sub_24F91F398();
          v61 = v25;
          time.value = v35;
          *&time.timescale = v36;
          (*(v34 + 8))(v6, v33);
          sub_24E612B0C(&time, v59);
          v37 = v62;
          v38 = swift_isUniquelyReferenced_nonNull_native();
          v58 = v37;
          sub_24E81C1D4(v59, 7107189, 0xE300000000000000, v38);
          v62 = v58;
          if (v55)
          {
            goto LABEL_24;
          }
        }

        v39 = sub_24E99058C(Seconds, 0);
        if (v39)
        {
          v40 = v39;
          v61 = sub_24E9421D0();
          time.value = v40;
          sub_24E612B0C(&time, v59);
          v41 = v62;
          v42 = swift_isUniquelyReferenced_nonNull_native();
          v58 = v41;
          sub_24E81C1D4(v59, 0x6E6F697461727564, 0xE800000000000000, v42);
          v62 = v58;
        }

        else
        {
          sub_24E98EF1C(0x6E6F697461727564, 0xE800000000000000, &time);
          sub_24E601704(&time, &qword_27F2129B0);
        }

        v43 = sub_24E99058C(v54, 0);
        if (v43)
        {
          v44 = v43;
          v61 = sub_24E9421D0();
          time.value = v44;
          sub_24E612B0C(&time, v59);
          v45 = v62;
          v46 = swift_isUniquelyReferenced_nonNull_native();
          v58 = v45;
          sub_24E81C1D4(v59, 0x6E6F697469736F70, 0xE800000000000000, v46);
          v62 = v58;
        }

        else
        {
          sub_24E98EF1C(0x6E6F697469736F70, 0xE800000000000000, &time);
          sub_24E601704(&time, &qword_27F2129B0);
        }

LABEL_24:
        v47 = v62;
        sub_24F928648();
        sub_24F928638();
        if (*(v47 + 16))
        {
          v48 = sub_24E76D644(0x6369706F74, 0xE500000000000000);
          if (v49)
          {
            sub_24E643A9C(*(v47 + 56) + 32 * v48, &time);
            if (swift_dynamicCast())
            {
              v50 = HIBYTE(*(&v59[0] + 1)) & 0xFLL;
              if ((*(&v59[0] + 1) & 0x2000000000000000) == 0)
              {
                v50 = *&v59[0] & 0xFFFFFFFFFFFFLL;
              }

              if (v50)
              {
                v21 = v57;
LABEL_33:
                sub_24F928658();

                (*(v11 + 8))(v13, v10);
                v20 = 0;
                return (*(v11 + 56))(v21, v20, 1, v10);
              }
            }
          }
        }

        v21 = v57;
        goto LABEL_33;
      }

      sub_24F146A58(time.value, *&time.timescale, time.epoch, v61);
    }

    Seconds = 0;
    v54 = 0;
    v55 = 1;
    goto LABEL_11;
  }

  sub_24E601704(v9, &qword_27F21EB88);
LABEL_9:
  v20 = 1;
  v21 = v57;
  return (*(v11 + 56))(v21, v20, 1, v10);
}

uint64_t sub_24F39FC20@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v49 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EB88);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v49 - v7;
  v9 = sub_24F928698();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC12GameStoreKit17GSKVideoViewModel_video;
  v14 = type metadata accessor for GSKVideo();
  sub_24E60169C(v1 + *(v14 + 36) + v13, v8, &qword_27F21EB88);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_24E601704(v8, &qword_27F21EB88);
LABEL_9:
    v20 = 1;
    return (*(v10 + 56))(a1, v20, 1, v9);
  }

  (*(v10 + 32))(v12, v8, v9);
  v15 = *(v1 + OBJC_IVAR____TtC12GameStoreKit17GSKVideoViewModel_player);
  if (!v15)
  {
    (*(v10 + 8))(v12, v9);
    goto LABEL_9;
  }

  v52 = v15;
  v16 = [v52 currentItem];
  if (!v16)
  {
    goto LABEL_7;
  }

  v17 = v16;
  v18 = [v16 asset];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A140);
  sub_24F91FDE8();
  sub_24F92C1B8();

  if (v56)
  {
    sub_24F146A58(time.value, *&time.timescale, time.epoch, v56);

LABEL_7:
    Seconds = 0;
    v51 = 0;
    v19 = 1;
    goto LABEL_11;
  }

  [v17 duration];
  Seconds = CMTimeGetSeconds(&time);
  [v17 currentTime];
  v21 = CMTimeGetSeconds(&time);

  v19 = 0;
  v51 = *&v21;
LABEL_11:
  v22 = OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_videoUrl;
  v23 = sub_24F928688();
  v24 = MEMORY[0x277D837D0];
  v56 = MEMORY[0x277D837D0];
  time.value = 0x616964656DLL;
  *&time.timescale = 0xE500000000000000;
  sub_24E612B0C(&time, v54);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v57 = v23;
  sub_24E81C1D4(v54, 0x707954746E657665, 0xE900000000000065, isUniquelyReferenced_nonNull_native);
  v26 = v57;
  v56 = v24;
  time.value = 1801807219;
  *&time.timescale = 0xE400000000000000;
  sub_24E612B0C(&time, v54);
  v27 = swift_isUniquelyReferenced_nonNull_native();
  v57 = v26;
  sub_24E81C1D4(v54, 0x79546E6F69746361, 0xEA00000000006570, v27);
  v28 = v57;
  v56 = v24;
  time.value = 0x726174736F747561;
  *&time.timescale = 0xE900000000000074;
  sub_24E612B0C(&time, v54);
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v53 = v28;
  sub_24E81C1D4(v54, 0x65446E6F69746361, 0xED0000736C696174, v29);
  v57 = v53;
  sub_24E98EF1C(0x6F436E6F69746361, 0xED0000747865746ELL, &time);
  sub_24E601704(&time, &qword_27F2129B0);
  sub_24E60169C(v52 + v22, v5, &qword_27F228530);
  v30 = sub_24F91F4A8();
  v31 = *(v30 - 8);
  if ((*(v31 + 48))(v5, 1, v30) != 1)
  {
    v32 = sub_24F91F398();
    v56 = v24;
    time.value = v32;
    *&time.timescale = v33;
    (*(v31 + 8))(v5, v30);
    sub_24E612B0C(&time, v54);
    v34 = v57;
    v35 = swift_isUniquelyReferenced_nonNull_native();
    v53 = v34;
    sub_24E81C1D4(v54, 7107189, 0xE300000000000000, v35);
    v57 = v53;
    if (v19)
    {
      goto LABEL_21;
    }

LABEL_15:
    v36 = sub_24E99058C(Seconds, 0);
    if (v36)
    {
      v37 = v36;
      v56 = sub_24E9421D0();
      time.value = v37;
      sub_24E612B0C(&time, v54);
      v38 = v57;
      v39 = swift_isUniquelyReferenced_nonNull_native();
      v53 = v38;
      sub_24E81C1D4(v54, 0x6E6F697461727564, 0xE800000000000000, v39);
      v57 = v53;
    }

    else
    {
      sub_24E98EF1C(0x6E6F697461727564, 0xE800000000000000, &time);
      sub_24E601704(&time, &qword_27F2129B0);
    }

    v40 = sub_24E99058C(v51, 0);
    if (v40)
    {
      v41 = v40;
      v56 = sub_24E9421D0();
      time.value = v41;
      sub_24E612B0C(&time, v54);
      v42 = v57;
      v43 = swift_isUniquelyReferenced_nonNull_native();
      v53 = v42;
      sub_24E81C1D4(v54, 0x6E6F697469736F70, 0xE800000000000000, v43);
      v57 = v53;
    }

    else
    {
      sub_24E98EF1C(0x6E6F697469736F70, 0xE800000000000000, &time);
      sub_24E601704(&time, &qword_27F2129B0);
    }

    goto LABEL_21;
  }

  sub_24E601704(v5, &qword_27F228530);
  sub_24E98EF1C(7107189, 0xE300000000000000, &time);
  sub_24E601704(&time, &qword_27F2129B0);
  if ((v19 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_21:
  v44 = v57;
  sub_24F928648();
  sub_24F928638();
  if (*(v44 + 16))
  {
    v45 = sub_24E76D644(0x6369706F74, 0xE500000000000000);
    if (v46)
    {
      sub_24E643A9C(*(v44 + 56) + 32 * v45, &time);
      if (swift_dynamicCast())
      {
        v47 = HIBYTE(*(&v54[0] + 1)) & 0xFLL;
        if ((*(&v54[0] + 1) & 0x2000000000000000) == 0)
        {
          v47 = *&v54[0] & 0xFFFFFFFFFFFFLL;
        }

        if (!v47)
        {
        }
      }
    }
  }

  sub_24F928658();

  (*(v10 + 8))(v12, v9);
  v20 = 0;
  return (*(v10 + 56))(a1, v20, 1, v9);
}

uint64_t sub_24F3A0470(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C570);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v63 - v6;
  v8 = sub_24F929158();
  v70 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v69 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EB88);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v63 - v11;
  v13 = sub_24F928698();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v68 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v63 - v17;
  v66 = *a1;
  v67 = *a2;
  v19 = OBJC_IVAR____TtC12GameStoreKit17GSKVideoViewModel_video;
  v20 = type metadata accessor for GSKVideo();
  v21 = v2;
  sub_24E60169C(v2 + *(v20 + 40) + v19, v12, &qword_27F21EB88);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    return sub_24E601704(v12, &qword_27F21EB88);
  }

  (*(v14 + 32))(v18, v12, v13);
  sub_24E60169C(v2 + OBJC_IVAR____TtC12GameStoreKit17GSKVideoViewModel_metricsPipeline, v7, &qword_27F21C570);
  v23 = v70;
  if ((*(v70 + 48))(v7, 1, v8) == 1)
  {
    (*(v14 + 8))(v18, v13);
    return sub_24E601704(v7, &qword_27F21C570);
  }

  v24 = v69;
  (*(v23 + 32))(v69, v7, v8);
  v25 = *(v21 + OBJC_IVAR____TtC12GameStoreKit17GSKVideoViewModel_player);
  if (!v25)
  {
    (*(v23 + 8))(v24, v8);
    return (*(v14 + 8))(v18, v13);
  }

  v26 = v18;
  v65 = v14;
  v64 = v13;
  v27 = v25;
  v28 = [v27 currentItem];
  if (!v28)
  {
    goto LABEL_9;
  }

  v29 = v28;
  v30 = [v28 asset];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A140);
  sub_24F91FDE8();
  sub_24F92C1B8();

  if (v74)
  {
    sub_24F146A58(time.value, *&time.timescale, time.epoch, v74);

LABEL_9:
    v31 = 0;
    v32 = 1;
    goto LABEL_12;
  }

  [v29 currentTime];
  Seconds = CMTimeGetSeconds(&time);

  v32 = 0;
  v31 = *&Seconds;
LABEL_12:
  v34 = sub_24F928688();
  v35 = MEMORY[0x277D837D0];
  v74 = MEMORY[0x277D837D0];
  v36 = 0xE500000000000000;
  time.value = 0x6B63696C63;
  *&time.timescale = 0xE500000000000000;
  sub_24E612B0C(&time, v72);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v71 = v34;
  sub_24E81C1D4(v72, 0x707954746E657665, 0xE900000000000065, isUniquelyReferenced_nonNull_native);
  v38 = v71;
  v74 = v35;
  time.value = 0x6E6F74747562;
  *&time.timescale = 0xE600000000000000;
  sub_24E612B0C(&time, v72);
  v39 = swift_isUniquelyReferenced_nonNull_native();
  v71 = v38;
  sub_24E81C1D4(v72, 0x7954746567726174, 0xEA00000000006570, v39);
  v40 = v71;
  if (v66 <= 1)
  {
    if (v66)
    {
      v41 = 0x6573756170;
    }

    else
    {
      v36 = 0xE400000000000000;
      v41 = 2036427888;
    }
  }

  else if (v66 == 2)
  {
    v36 = 0xE400000000000000;
    v41 = 1702131053;
  }

  else if (v66 == 3)
  {
    v36 = 0xEA00000000006E65;
    v41 = 0x657263736C6C7566;
  }

  else
  {
    v36 = 0xE600000000000000;
    v41 = 0x656E696C6E69;
  }

  v74 = v35;
  time.value = v41;
  *&time.timescale = v36;
  sub_24E612B0C(&time, v72);
  v42 = swift_isUniquelyReferenced_nonNull_native();
  v71 = v40;
  sub_24E81C1D4(v72, 0x6449746567726174, 0xE800000000000000, v42);
  v43 = v71;
  if (v67 > 2)
  {
    if (v67 == 3)
    {
      v44 = 0xE600000000000000;
      v45 = 0x6574756D6E75;
    }

    else if (v67 == 4)
    {
      v44 = 0xEF6E65657263736CLL;
      v45 = 0x6C75467265746E65;
    }

    else
    {
      v44 = 0xEE006E6565726373;
      v45 = 0x6C6C754674697865;
    }
  }

  else if (v67)
  {
    if (v67 == 1)
    {
      v44 = 0xE500000000000000;
      v45 = 0x6573756170;
    }

    else
    {
      v44 = 0xE400000000000000;
      v45 = 1702131053;
    }
  }

  else
  {
    v44 = 0xE400000000000000;
    v45 = 2036427888;
  }

  v74 = v35;
  time.value = v45;
  *&time.timescale = v44;
  sub_24E612B0C(&time, v72);
  v46 = swift_isUniquelyReferenced_nonNull_native();
  v71 = v43;
  sub_24E81C1D4(v72, 0x79546E6F69746361, 0xEA00000000006570, v46);
  v47 = v71;
  v74 = v35;
  time.value = 0x656E696C6E69;
  *&time.timescale = 0xE600000000000000;
  sub_24E612B0C(&time, v72);
  v48 = swift_isUniquelyReferenced_nonNull_native();
  v71 = v47;
  sub_24E81C1D4(v72, 0x6F436E6F69746361, 0xED0000747865746ELL, v48);
  v49 = v71;
  if ((v32 & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223198);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24F93DE60;
    *(inited + 32) = 0x6E6F697469736F70;
    *(inited + 40) = 0xE800000000000000;
    *(inited + 48) = sub_24E99058C(v31, 0);
    v51 = sub_24E609EA4(inited);
    swift_setDeallocating();
    sub_24E601704(inited + 32, &qword_27F2231A0);
    v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2231A8);
    time.value = v51;
    sub_24E612B0C(&time, v72);
    v52 = swift_isUniquelyReferenced_nonNull_native();
    v71 = v49;
    sub_24E81C1D4(v72, 0x65446E6F69746361, 0xED0000736C696174, v52);
    v49 = v71;
  }

  v53 = v8;
  v54 = v64;
  sub_24F928648();
  sub_24F928638();
  v55 = v65;
  if (!*(v49 + 16))
  {
    goto LABEL_42;
  }

  v56 = sub_24E76D644(0x6369706F74, 0xE500000000000000);
  if ((v57 & 1) == 0)
  {
    goto LABEL_42;
  }

  sub_24E643A9C(*(v49 + 56) + 32 * v56, &time);
  if (!swift_dynamicCast())
  {
    goto LABEL_42;
  }

  v58 = HIBYTE(*(&v72[0] + 1)) & 0xFLL;
  if ((*(&v72[0] + 1) & 0x2000000000000000) == 0)
  {
    v58 = *&v72[0] & 0xFFFFFFFFFFFFLL;
  }

  if (!v58)
  {

LABEL_42:
    v59 = v68;
    goto LABEL_43;
  }

  v59 = v68;
LABEL_43:
  sub_24F928658();
  if (qword_27F210658 != -1)
  {
    swift_once();
  }

  v60 = sub_24F929AB8();
  __swift_project_value_buffer(v60, qword_27F22E3B8);
  v61 = v69;
  sub_24F929138();

  v62 = *(v55 + 8);
  v62(v59, v54);
  (*(v70 + 8))(v61, v53);
  return (v62)(v26, v54);
}

void sub_24F3A0E9C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  sub_24E69A5C4(0, qword_27F241338);
  v5 = sub_24F92B5A8();

  v6 = a3;
  v4(v5, a3);
}

uint64_t sub_24F3A0F4C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_24E69A5C4(0, &qword_27F241328);
    v4 = sub_24F92B5A8();
  }

  v6 = a3;
  v5(v4, a3);
}

uint64_t ChallengeableLeaderboardsDataIntentImplementation.perform(_:objectGraph:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24E67D094;

  return (sub_24F3A2BE0)(a1);
}

void sub_24F3A109C(uint64_t a1, void *a2, void *a3, int a4)
{
  v21 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224808);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v20 - v10;
  v12 = [objc_opt_self() proxyForLocalPlayer];
  v20 = [v12 gameStatService];

  v13 = [a2 gameDescriptor];
  v14 = [a3 internal];
  (*(v8 + 16))(v11, a1, v7);
  v15 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v16 = v15 + v9;
  v17 = swift_allocObject();
  (*(v8 + 32))(v17 + v15, v11, v7);
  *(v17 + v16) = v21;
  *(v17 + (v16 & 0xFFFFFFFFFFFFFFF8) + 8) = a2;
  aBlock[4] = sub_24F3A381C;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24F3A0F4C;
  aBlock[3] = &block_descriptor_146;
  v18 = _Block_copy(aBlock);
  v19 = a2;

  [v20 getLeaderboardsForGameDescriptor:v13 player:v14 leaderboardIDs:0 setIdentifier:0 handler:v18];
  _Block_release(v18);
  swift_unknownObjectRelease();
}

uint64_t sub_24F3A1318(uint64_t a1, void *a2, uint64_t a3, char a4, void *a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224808);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v23 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = v23 - v15;
  if (a2)
  {
    v23[1] = a2;
    v17 = a2;
    return sub_24F92B788();
  }

  else
  {
    v19 = sub_24F92B858();
    (*(*(v19 - 8) + 56))(v16, 1, 1, v19);
    (*(v11 + 16))(v13, a3, v10);
    v20 = (*(v11 + 80) + 56) & ~*(v11 + 80);
    v21 = swift_allocObject();
    *(v21 + 16) = 0;
    *(v21 + 24) = 0;
    *(v21 + 32) = a1;
    *(v21 + 40) = a4 & 1;
    *(v21 + 48) = a5;
    (*(v11 + 32))(v21 + v20, v13, v10);

    v22 = a5;
    sub_24EA998B8(0, 0, v16, &unk_24F9EDE80, v21);
  }
}

uint64_t sub_24F3A1550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 56) = a6;
  *(v7 + 64) = a7;
  *(v7 + 144) = a5;
  *(v7 + 48) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212890);
  *(v7 + 72) = swift_task_alloc();
  v8 = type metadata accessor for Leaderboard(0);
  *(v7 + 80) = v8;
  *(v7 + 88) = *(v8 - 8);
  *(v7 + 96) = swift_task_alloc();
  *(v7 + 104) = swift_task_alloc();
  *(v7 + 112) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F3A1668, 0, 0);
}

uint64_t sub_24F3A1668()
{
  v62 = v0;
  v1 = *(v0 + 6);
  if (!v1)
  {
    v2 = 0;
    v3 = 0;
    goto LABEL_19;
  }

  if (!(v1 >> 62))
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v3 = 0xE000000000000000;
    if (v2)
    {
      goto LABEL_4;
    }

LABEL_19:
    if (qword_27F2113B8 == -1)
    {
      goto LABEL_20;
    }

    goto LABEL_59;
  }

  v2 = sub_24F92C738();
  v3 = 0xE000000000000000;
  if (!v2)
  {
    goto LABEL_19;
  }

LABEL_4:
  v4 = 0;
  v5 = *(v0 + 6);
  v57 = v5 & 0xFFFFFFFFFFFFFF8;
  v59 = v5 & 0xC000000000000001;
  v0 = "board(bundleID:)";
  while (1)
  {
    if (v59)
    {
      v6 = MEMORY[0x253052270](v4, v1);
    }

    else
    {
      if (v4 >= *(v57 + 16))
      {
        goto LABEL_56;
      }

      v6 = *(v1 + 8 * v4 + 32);
    }

    v3 = v6;
    v7 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    sub_24F92C888();

    v60 = 540689481;
    v61 = 0xE400000000000000;
    v8 = [v3 baseLeaderboardID];
    v9 = sub_24F92B0D8();
    v11 = v10;

    MEMORY[0x253050C20](v9, v11);

    MEMORY[0x253050C20](0xD000000000000014, 0x800000024FA748D0);
    v12 = [v3 supportsChallenges];
    v13 = v12 == 0;
    if (v12)
    {
      v14 = 1702195828;
    }

    else
    {
      v14 = 0x65736C6166;
    }

    if (v13)
    {
      v15 = 0xE500000000000000;
    }

    else
    {
      v15 = 0xE400000000000000;
    }

    MEMORY[0x253050C20](v14, v15);

    MEMORY[0x253050C20](10, 0xE100000000000000);
    MEMORY[0x253050C20](v60, v61);

    ++v4;
    if (v7 == v2)
    {
      v2 = 0;
      v3 = 0xE000000000000000;
      v0 = v56;
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  swift_once();
LABEL_20:
  v16 = sub_24F9220D8();
  __swift_project_value_buffer(v16, qword_27F39E778);

  v17 = sub_24F9220B8();
  v18 = sub_24F92BD98();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v60 = v20;
    *v19 = 136315138;
    if (v3)
    {
      v21 = v2;
    }

    else
    {
      v21 = 0x656461654C206F4ELL;
    }

    if (v3)
    {
      v2 = v3;
    }

    else
    {
      v2 = 0xEE006472616F6272;
    }

    v22 = sub_24E7620D4(v21, v2, &v60);

    *(v19 + 4) = v22;
    _os_log_impl(&dword_24E5DD000, v17, v18, "ChallengeableLeaderboardsDataIntentImplementation loaded leaderbaords: %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v20);
    MEMORY[0x2530542D0](v20, -1, -1);
    MEMORY[0x2530542D0](v19, -1, -1);
  }

  else
  {
  }

  if (v0[144] == 1)
  {
    v23 = [*(v0 + 7) bundleIdentifier];
    v24 = sub_24F92B0D8();
    v26 = v25;

    *(v0 + 15) = v26;
    v27 = swift_task_alloc();
    *(v0 + 16) = v27;
    *(v27 + 16) = v24;
    *(v27 + 24) = v26;
    v28 = swift_task_alloc();
    *(v0 + 17) = v28;
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23B740);
    *v28 = v0;
    v28[1] = sub_24F3A1DBC;

    return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000020, 0x800000024FA748A0, sub_24F3A3B48, v27, v29);
  }

  v3 = *(v0 + 6);
  if (v3)
  {
    v30 = v3 & 0xFFFFFFFFFFFFFF8;
    if (v3 >> 62)
    {
      v31 = sub_24F92C738();
      if (v31)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v31 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v31)
      {
LABEL_36:
        v32 = 0;
        v33 = *(v0 + 11);
        v58 = *(v0 + 10);
        v34 = (v33 + 56);
        v54 = v33;
        v55 = (v33 + 48);
        v35 = MEMORY[0x277D84F90];
        while (1)
        {
          if ((v3 & 0xC000000000000001) != 0)
          {
            v40 = MEMORY[0x253052270](v32, v3);
          }

          else
          {
            if (v32 >= *(v30 + 16))
            {
              goto LABEL_58;
            }

            v40 = *(v3 + 8 * v32 + 32);
          }

          v41 = v40;
          v2 = v32 + 1;
          if (__OFADD__(v32, 1))
          {
            goto LABEL_57;
          }

          v42 = v31;
          v43 = [objc_allocWithZone(MEMORY[0x277D0C0A0]) initWithInternalRepresentation_];
          if (v43)
          {
            v44 = *(v0 + 12);
            sub_24F6BA118(v43, v44);

            v45 = *(v0 + 12);
            if (*(v44 + *(v58 + 36)))
            {
              sub_24E90FDA8(v45, *(v0 + 9));
              v46 = 0;
            }

            else
            {
              sub_24F3A3AEC(v45);
              v46 = 1;
            }

            v48 = *(v0 + 9);
            v47 = *(v0 + 10);
            (*v34)(v48, v46, 1, v47);
            if ((*v55)(v48, 1, v47) != 1)
            {
              sub_24E90FDA8(*(v0 + 9), *(v0 + 13));
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v35 = sub_24E618218(0, v35[2] + 1, 1, v35);
              }

              v50 = v35[2];
              v49 = v35[3];
              if (v50 >= v49 >> 1)
              {
                v35 = sub_24E618218(v49 > 1, v50 + 1, 1, v35);
              }

              v51 = *(v0 + 13);
              v35[2] = v50 + 1;
              sub_24E90FDA8(v51, v35 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v50);
              goto LABEL_39;
            }
          }

          else
          {
            v36 = *(v0 + 10);
            v37 = v30;
            v38 = *(v56 + 72);

            v39 = v38;
            v30 = v37;
            v0 = v56;
            (*v34)(v39, 1, 1, v36);
          }

          sub_24E601704(*(v0 + 9), &qword_27F212890);
LABEL_39:
          v31 = v42;
          ++v32;
          if (v2 == v42)
          {
            goto LABEL_64;
          }
        }
      }
    }
  }

  v35 = MEMORY[0x277D84F90];
LABEL_64:
  *(v0 + 4) = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224808);
  sub_24F92B798();

  v52 = *(v0 + 1);

  return v52();
}

uint64_t sub_24F3A1DBC()
{

  if (v0)
  {

    v1 = sub_24F3A2450;
  }

  else
  {

    v1 = sub_24F3A1F28;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_24F3A1F28()
{
  v1 = v0[3];
  v2 = v0[6];
  v48 = v2;
  if (!v1)
  {
    if (!v2)
    {
      goto LABEL_55;
    }

    goto LABEL_31;
  }

  if (!v2)
  {

    goto LABEL_55;
  }

  v3 = v0[2];
  if (!(v2 >> 62))
  {
    v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_5;
    }

LABEL_30:

    goto LABEL_31;
  }

LABEL_29:
  v4 = sub_24F92C738();
  if (!v4)
  {
    goto LABEL_30;
  }

LABEL_5:
  v5 = 0;
  v6 = v0[6];
  v49 = v6 & 0xFFFFFFFFFFFFFF8;
  v51 = v6 & 0xC000000000000001;
  while (1)
  {
    if (v51)
    {
      v7 = MEMORY[0x253052270](v5, v2);
    }

    else
    {
      if (v5 >= *(v49 + 16))
      {
        goto LABEL_28;
      }

      v7 = *(v2 + 8 * v5 + 32);
    }

    v8 = v7;
    v9 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v10 = [v7 baseLeaderboardID];
    v11 = sub_24F92B0D8();
    v13 = v12;

    if (v11 == v3 && v1 == v13)
    {
      break;
    }

    v15 = sub_24F92CE08();

    if (v15)
    {
      goto LABEL_22;
    }

    ++v5;
    v2 = v48;
    if (v9 == v4)
    {
      goto LABEL_30;
    }
  }

LABEL_22:

  v16 = [objc_allocWithZone(MEMORY[0x277D0C0A0]) initWithInternalRepresentation_];
  v2 = v48;
  if (v16)
  {
    v17 = v0[14];
    v18 = v0[10];
    v19 = v16;
    sub_24F6BA118(v19, v17);
    v20 = *(v17 + *(v18 + 36));
    v21 = v0[14];
    if (v20)
    {
      v22 = v0[11];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2139E8);
      v23 = (*(v22 + 80) + 32) & ~*(v22 + 80);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_24F93DE60;
      sub_24E7E048C(v21, v24 + v23);
      v0[5] = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224808);
      sub_24F92B798();

      sub_24F3A3AEC(v21);
      goto LABEL_57;
    }

    sub_24F3A3AEC(v0[14]);
  }

  else
  {
  }

LABEL_31:
  if (v2 >> 62)
  {
    goto LABEL_54;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_24F92C738())
  {
    v26 = 0;
    v46 = v0[11];
    v47 = v0[10];
    v50 = v2 & 0xFFFFFFFFFFFFFF8;
    v52 = v2 & 0xC000000000000001;
    v27 = (v46 + 56);
    v28 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v52)
      {
        v32 = MEMORY[0x253052270](v26, v2);
      }

      else
      {
        if (v26 >= *(v50 + 16))
        {
          goto LABEL_53;
        }

        v32 = *(v2 + 8 * v26 + 32);
      }

      v33 = v32;
      v34 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      v35 = [objc_allocWithZone(MEMORY[0x277D0C0A0]) initWithInternalRepresentation_];
      if (v35)
      {
        v36 = v0[12];
        sub_24F6BA118(v35, v36);

        v37 = v0[12];
        if (*(v36 + *(v47 + 36)))
        {
          sub_24E90FDA8(v37, v0[9]);
          v38 = 0;
        }

        else
        {
          sub_24F3A3AEC(v37);
          v38 = 1;
        }

        v40 = v0[9];
        v39 = v0[10];
        (*v27)(v40, v38, 1, v39);
        if ((*(v46 + 48))(v40, 1, v39) != 1)
        {
          sub_24E90FDA8(v0[9], v0[13]);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v28 = sub_24E618218(0, v28[2] + 1, 1, v28);
          }

          v42 = v28[2];
          v41 = v28[3];
          if (v42 >= v41 >> 1)
          {
            v28 = sub_24E618218(v41 > 1, v42 + 1, 1, v28);
          }

          v43 = v0[13];
          v28[2] = v42 + 1;
          sub_24E90FDA8(v43, v28 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v42);
          goto LABEL_36;
        }
      }

      else
      {
        v30 = v0[9];
        v29 = v0[10];

        v31 = v30;
        v2 = v48;
        (*v27)(v31, 1, 1, v29);
      }

      sub_24E601704(v0[9], &qword_27F212890);
LABEL_36:
      ++v26;
      if (v34 == i)
      {
        goto LABEL_56;
      }
    }

    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    ;
  }

LABEL_55:
  v28 = MEMORY[0x277D84F90];
LABEL_56:
  v0[4] = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224808);
  sub_24F92B798();
LABEL_57:

  v44 = v0[1];

  return v44();
}

uint64_t sub_24F3A2450()
{
  v1 = v0[6];
  if (v1)
  {
    v2 = v1 & 0xFFFFFFFFFFFFFF8;
    if (v1 >> 62)
    {
      goto LABEL_25;
    }

    for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_24F92C738())
    {
      v4 = 0;
      v5 = v0[11];
      v6 = v1 & 0xC000000000000001;
      v34 = (v5 + 56);
      v30 = v5;
      v31 = (v5 + 48);
      v32 = v0[10];
      v7 = MEMORY[0x277D84F90];
      v8 = 0x277D0C000uLL;
      while (1)
      {
        if (v6)
        {
          v17 = MEMORY[0x253052270](v4, v1);
        }

        else
        {
          if (v4 >= *(v2 + 16))
          {
            goto LABEL_24;
          }

          v17 = *(v1 + 8 * v4 + 32);
        }

        v18 = v17;
        if (__OFADD__(v4, 1))
        {
          break;
        }

        v35 = v4 + 1;
        v19 = [objc_allocWithZone(*(v8 + 160)) initWithInternalRepresentation_];
        if (v19)
        {
          v20 = v0[12];
          sub_24F6BA118(v19, v20);

          v21 = v0[12];
          if (*(v20 + *(v32 + 36)))
          {
            sub_24E90FDA8(v21, v0[9]);
            v22 = 0;
          }

          else
          {
            sub_24F3A3AEC(v21);
            v22 = 1;
          }

          v24 = v0[9];
          v23 = v0[10];
          (*v34)(v24, v22, 1, v23);
          if ((*v31)(v24, 1, v23) != 1)
          {
            sub_24E90FDA8(v0[9], v0[13]);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v7 = sub_24E618218(0, v7[2] + 1, 1, v7);
            }

            v26 = v7[2];
            v25 = v7[3];
            if (v26 >= v25 >> 1)
            {
              v7 = sub_24E618218(v25 > 1, v26 + 1, 1, v7);
            }

            v27 = v0[13];
            v7[2] = v26 + 1;
            sub_24E90FDA8(v27, v7 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v26);
            goto LABEL_7;
          }
        }

        else
        {
          v33 = v0[10];
          v9 = v8;
          v10 = v6;
          v11 = v7;
          v12 = i;
          v13 = v1;
          v14 = v2;
          v15 = v0[9];

          v16 = v15;
          v2 = v14;
          v1 = v13;
          i = v12;
          v7 = v11;
          v6 = v10;
          v8 = v9;
          (*v34)(v16, 1, 1, v33);
        }

        sub_24E601704(v0[9], &qword_27F212890);
LABEL_7:
        ++v4;
        if (v35 == i)
        {
          goto LABEL_27;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      ;
    }
  }

  v7 = MEMORY[0x277D84F90];
LABEL_27:
  v0[4] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224808);
  sub_24F92B798();

  v28 = v0[1];

  return v28();
}

void sub_24F3A2788(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F241330);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = aBlock - v8;
  v10 = [objc_opt_self() proxyForLocalPlayer];
  v11 = [v10 gameServicePrivate];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_24F93DE60;
  *(v12 + 56) = MEMORY[0x277D837D0];
  *(v12 + 32) = a2;
  *(v12 + 40) = a3;

  v13 = sub_24F92B588();

  (*(v7 + 16))(v9, a1, v6);
  v14 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v15 = swift_allocObject();
  (*(v7 + 32))(v15 + v14, v9, v6);
  aBlock[4] = sub_24F3A3BE4;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24F3A0E9C;
  aBlock[3] = &block_descriptor_23_0;
  v16 = _Block_copy(aBlock);

  [v11 getGameStatsForPlayer:0 bundleIDs:v13 handler:v16];
  _Block_release(v16);
  swift_unknownObjectRelease();
}

unint64_t sub_24F3A2A00(unint64_t result, id a2)
{
  if (a2)
  {
    v2 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F241330);
    return sub_24F92B788();
  }

  if (result >> 62)
  {
    v6 = result;
    v7 = sub_24F92C738();
    result = v6;
    if (!v7)
    {
      goto LABEL_10;
    }
  }

  else if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_10:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F241330);
    return sub_24F92B798();
  }

  if ((result & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x253052270](0, result);
    goto LABEL_8;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v3 = *(result + 32);
LABEL_8:
    v4 = v3;
    v5 = [v3 defaultLeaderboardIdentifier];

    sub_24F92B0D8();
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t sub_24F3A2B30(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_24E67D244;

  return (sub_24F3A2BE0)(a2);
}

uint64_t sub_24F3A2BE0(uint64_t a1)
{
  *(v1 + 40) = *a1;
  *(v1 + 48) = *(a1 + 8);
  *(v1 + 64) = *(a1 + 24);
  *(v1 + 168) = *(a1 + 32);
  return MEMORY[0x2822009F8](sub_24F3A2C1C, 0, 0);
}

uint64_t sub_24F3A2C1C()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = swift_task_alloc();
  v0[9] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[10] = v4;
  v5 = sub_24E69A5C4(0, &qword_27F216FC8);
  *v4 = v0;
  v4[1] = sub_24F3A2D28;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000013, 0x800000024FA45A60, sub_24E69A5A8, v3, v5);
}

uint64_t sub_24F3A2D28()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_24F3A30B8;
  }

  else
  {

    v2 = sub_24F3A2E44;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F3A2E44()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[2];
  v0[12] = v3;
  v4 = [v3 internal];
  v0[13] = [objc_allocWithZone(MEMORY[0x277D0C138]) initWithInternalRepresentation_];

  v5 = swift_task_alloc();
  v0[14] = v5;
  *(v5 + 16) = v2;
  *(v5 + 24) = v1;
  v6 = swift_task_alloc();
  v0[15] = v6;
  v7 = sub_24E69A5C4(0, &qword_27F21C808);
  *v6 = v0;
  v6[1] = sub_24F3A2F9C;

  return MEMORY[0x2822008A0](v0 + 3, 0, 0, 0x6E7562286D6F7266, 0xEF293A4449656C64, sub_24E7980E0, v5, v7);
}

uint64_t sub_24F3A2F9C()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_24F3A3358;
  }

  else
  {

    v2 = sub_24F3A311C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F3A30B8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F3A311C()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 168);
  v3 = *(v0 + 24);
  *(v0 + 136) = v3;
  v4 = swift_task_alloc();
  *(v0 + 144) = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = v1;
  *(v4 + 32) = v2;
  v5 = swift_task_alloc();
  *(v0 + 152) = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B440);
  *v5 = v0;
  v5[1] = sub_24F3A323C;

  return MEMORY[0x2822008A0](v0 + 32, 0, 0, 0xD00000000000002CLL, 0x800000024FA74870, sub_24F3A3768, v4, v6);
}

uint64_t sub_24F3A323C()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_24F3A35A0;
  }

  else
  {

    v2 = sub_24F3A33C8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F3A3358()
{
  v1 = v0[13];
  v2 = v0[12];

  v3 = v0[1];

  return v3();
}

uint64_t sub_24F3A33C8()
{
  v1 = *(v0 + 32);
  if (qword_27F2113B8 != -1)
  {
    swift_once();
  }

  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E778);

  v3 = sub_24F9220B8();
  v4 = sub_24F92BD98();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 136);
  v7 = *(v0 + 104);
  if (v5)
  {
    v8 = *(v0 + 168);
    v9 = swift_slowAlloc();
    *v9 = 67109376;
    *(v9 + 4) = v8;

    *(v9 + 8) = 2048;
    *(v9 + 10) = *(v1 + 16);

    _os_log_impl(&dword_24E5DD000, v3, v4, "ChallengeableLeaderboardsDataIntentImplementation fetched, prefer default %{BOOL}d, %ld leaderboards", v9, 0x12u);
    MEMORY[0x2530542D0](v9, -1, -1);
  }

  else
  {
  }

  v10 = *(v0 + 8);

  return v10(v1);
}

uint64_t sub_24F3A35A0()
{

  if (qword_27F2113B8 != -1)
  {
    swift_once();
  }

  v1 = v0[20];
  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E778);
  v3 = v1;
  v4 = sub_24F9220B8();
  v5 = sub_24F92BDB8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[20];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_24E5DD000, v4, v5, "ChallengeableLeaderboardsDataIntentImplementation error fetching leaderboards: %@", v7, 0xCu);
    sub_24E601704(v8, &qword_27F227B20);
    MEMORY[0x2530542D0](v8, -1, -1);
    MEMORY[0x2530542D0](v7, -1, -1);
  }

  v11 = v0[17];
  v13 = v0[12];
  v12 = v0[13];

  swift_willThrow();
  v14 = v0[1];

  return v14();
}

uint64_t sub_24F3A3774()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224808);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (v3 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_24F3A381C(uint64_t a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224808) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(v2 + v7);
  v9 = *(v2 + (v7 & 0xFFFFFFFFFFFFFFF8) + 8);

  return sub_24F3A1318(a1, a2, v2 + v6, v8, v9);
}

uint64_t block_copy_helper_146(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24F3A38F0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224808);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_24F3A39D0(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224808) - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = *(v1 + 40);
  v10 = *(v1 + 48);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_24E614970;

  return sub_24F3A1550(a1, v6, v7, v8, v9, v10, v1 + v5);
}

uint64_t sub_24F3A3AEC(uint64_t a1)
{
  v2 = type metadata accessor for Leaderboard(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24F3A3B50()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F241330);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

unint64_t sub_24F3A3BE4(unint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F241330);

  return sub_24F3A2A00(a1, a2);
}

uint64_t sub_24F3A3C78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v23 - v7;
  v9 = sub_24F91F4A8();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v23 - v14;
  sub_24F3A3FC8(v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    result = sub_24E70E058(v8);
    a3[1] = 0;
    a3[2] = 0;
    *a3 = 0;
  }

  else
  {
    v24 = a2;
    sub_24F91F3E8();
    v17 = *(v10 + 8);
    v17(v8, v9);
    (*(v10 + 32))(v15, v13, v9);
    v18 = sub_24F91F4B8();
    v20 = v19;
    sub_24F91E9B8();
    swift_allocObject();
    sub_24F91E9A8();
    sub_24F3A4A40();
    sub_24F91E998();

    v21 = v25;
    v22 = v26;
    v23 = v27;
    if (v25 == a1 && v26 == v24 || (sub_24F92CE08() & 1) != 0)
    {
      v17(v15, v9);
      result = sub_24E627880(v18, v20);
      *a3 = v21;
      a3[1] = v22;
      a3[2] = v23;
    }

    else
    {
      sub_24F3A4148();
      sub_24E627880(v18, v20);
      sub_24EAD7A84(v21, v22);
      result = (v17)(v15, v9);
      *a3 = 0;
      a3[1] = 0;
      a3[2] = 0;
    }
  }

  return result;
}

uint64_t sub_24F3A3FC8@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() defaultManager];
  v3 = [v2 URLsForDirectory:13 inDomains:1];

  v4 = sub_24F91F4A8();
  v5 = sub_24F92B5A8();

  if (*(v5 + 16))
  {
    v10 = *(v4 - 8);
    (*(v10 + 16))(a1, v5 + ((*(v10 + 80) + 32) & ~*(v10 + 80)), v4);

    v6 = v10;
    v7 = 0;
  }

  else
  {

    v6 = *(v4 - 8);
    v7 = 1;
  }

  v8 = *(v6 + 56);

  return v8(a1, v7, 1, v4);
}

uint64_t sub_24F3A4148()
{
  v19[1] = *MEMORY[0x277D85DE8];
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v18[-v1];
  v3 = sub_24F91F4A8();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v18[-v8];
  sub_24F3A3FC8(v2);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    return sub_24E70E058(v2);
  }

  sub_24F91F3E8();
  v11 = *(v4 + 8);
  v11(v2, v3);
  (*(v4 + 32))(v9, v7, v3);
  v12 = [objc_opt_self() defaultManager];
  v13 = sub_24F91F3B8();
  v19[0] = 0;
  v14 = [v12 removeItemAtURL:v13 error:v19];

  if (v14)
  {
    v15 = v19[0];
  }

  else
  {
    v16 = v19[0];
    v17 = sub_24F91F278();

    swift_willThrow();
  }

  return (v11)(v9, v3);
}

uint64_t sub_24F3A43CC(uint64_t *a1)
{
  v2 = sub_24F928AE8();
  v49 = *(v2 - 8);
  v50 = v2;
  MEMORY[0x28223BE20](v2);
  v48 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v46 - v5;
  v7 = sub_24F91F4A8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v46 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v46 - v11;
  v13 = *a1;
  v14 = a1[1];
  sub_24F3A3C78(*a1, v14, &v51);
  v15 = v52;
  v47 = v12;
  if (v52)
  {
    v16 = v53;
    v13 = v51;
  }

  else
  {

    v16 = MEMORY[0x277D84F90];
    v15 = v14;
  }

  v54 = v13;
  v55 = v15;
  v56 = v16;
  v18 = a1[3];
  v17 = a1[4];
  v19 = a1[2];
  v20 = *(v16 + 2);
  if (v20)
  {
    v21 = 0;
    v22 = v16 + 40;
    while (1)
    {
      v23 = *(v22 - 1) == v19 && *v22 == v18;
      if (v23 || (sub_24F92CE08() & 1) != 0)
      {
        break;
      }

      ++v21;
      v22 += 2;
      if (v20 == v21)
      {
        goto LABEL_14;
      }
    }

    sub_24EA0E6F4(v21);

    v16 = v56;
  }

LABEL_14:
  v24 = *(v16 + 2);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || v24 >= *(v16 + 3) >> 1)
  {
    v16 = sub_24E615CF4(isUniquelyReferenced_nonNull_native, v24 + 1, 1, v16);
    v56 = v16;
  }

  sub_24EDAB2A8(0, 0, 1, v19, v18);

  v26 = sub_24E6B7D68(v17, v16);
  v28 = v27;
  v30 = v29;
  v32 = v31;
  if ((v31 & 1) == 0)
  {

LABEL_19:
    sub_24E6B8D5C(v26, v28, v30, v32);
    v34 = v33;

    v35 = v47;
    goto LABEL_26;
  }

  sub_24F92CEF8();
  swift_unknownObjectRetain_n();

  v36 = swift_dynamicCastClass();
  if (!v36)
  {
    swift_unknownObjectRelease();
    v36 = MEMORY[0x277D84F90];
  }

  v37 = *(v36 + 16);

  if (__OFSUB__(v32 >> 1, v30))
  {
    __break(1u);
    goto LABEL_32;
  }

  if (v37 != (v32 >> 1) - v30)
  {
LABEL_32:
    swift_unknownObjectRelease();
    goto LABEL_19;
  }

  v34 = swift_dynamicCastClass();

  swift_unknownObjectRelease();
  v35 = v47;
  if (v34)
  {
    goto LABEL_27;
  }

  v34 = MEMORY[0x277D84F90];
LABEL_26:
  swift_unknownObjectRelease();
LABEL_27:
  v56 = v34;
  v51 = v54;
  v52 = v55;
  v53 = v34;
  sub_24F3A3FC8(v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_24E70E058(v6);
    v38 = v50;
  }

  else
  {
    v39 = v46;
    sub_24F91F3E8();
    v40 = *(v8 + 8);
    v40(v6, v7);
    (*(v8 + 32))(v35, v39, v7);
    sub_24F91E9E8();
    swift_allocObject();
    sub_24F91E9D8();
    sub_24F3A49EC();
    v41 = sub_24F91E9C8();
    v43 = v42;

    sub_24F91F4F8();
    v38 = v50;
    v40(v35, v7);
    sub_24E627880(v41, v43);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510);
  (*(v49 + 104))(v48, *MEMORY[0x277D21CA8], v38);
  v44 = sub_24F92A988();

  return v44;
}

unint64_t sub_24F3A497C()
{
  result = qword_27F216380;
  if (!qword_27F216380)
  {
    type metadata accessor for SaveRecentSearchAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216380);
  }

  return result;
}

unint64_t sub_24F3A49EC()
{
  result = qword_27F2413C0;
  if (!qword_27F2413C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2413C0);
  }

  return result;
}

unint64_t sub_24F3A4A40()
{
  result = qword_27F2413C8;
  if (!qword_27F2413C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2413C8);
  }

  return result;
}

uint64_t FlowAction.__allocating_init(id:actionMetrics:destination:presentation:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v42 = a5;
  v41 = a4;
  v40 = sub_24F91F6B8();
  v39 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v38 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F928AD8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v37 - v14;
  v16 = *a3;
  v44 = a1;
  sub_24E60169C(a1, v52, &qword_27F235830);
  v17 = sub_24F91F4A8();
  (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
  v51[3] = &type metadata for FlowDestination;
  v51[0] = v16;
  v18 = *(v10 + 16);
  v43 = a2;
  v18(v12, a2, v9);
  v19 = swift_allocObject();
  *(v19 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageDataPageRenderMetrics) = 0;
  v20 = v19 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageData;
  *v20 = 0u;
  *(v20 + 16) = 0u;
  *(v20 + 32) = 0;
  v21 = (v19 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_appStateController);
  *v21 = 0;
  v21[1] = 0;
  *(v19 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_page) = 54;
  sub_24E60169C(v15, v19 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageUrl, &qword_27F228530);
  v22 = (v19 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_referrerUrl);
  *v22 = 0;
  v22[1] = 0;
  v23 = v19 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_referrerData;
  *v23 = xmmword_24F9406F0;
  *(v23 + 24) = 0;
  *(v23 + 32) = 0;
  *(v23 + 16) = 0;
  *(v23 + 40) = 0;
  *(v19 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_presentationContext) = 0;
  *(v19 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_animationBehavior) = 0;
  *(v19 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_origin) = 0;
  v24 = (v19 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_presentation);
  v25 = v42;
  *v24 = v41;
  v24[1] = v25;
  sub_24E60169C(v52, v50, &qword_27F235830);
  v18((v19 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics), v12, v9);
  v26 = OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics;
  v27 = sub_24F929608();
  (*(*(v27 - 8) + 56))(v19 + v26, 1, 1, v27);
  v28 = (v19 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v28 = 0u;
  v28[1] = 0u;
  v29 = v19 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  sub_24E60169C(v50, &v47, &qword_27F235830);
  if (*(&v48 + 1))
  {
    v30 = v48;
    *v29 = v47;
    *(v29 + 16) = v30;
    *(v29 + 32) = v49;
  }

  else
  {
    v31 = v38;
    sub_24F91F6A8();
    v32 = sub_24F91F668();
    v34 = v33;
    (*(v39 + 8))(v31, v40);
    v45 = v32;
    v46 = v34;
    sub_24F92C7F8();
    sub_24E601704(&v47, &qword_27F235830);
  }

  sub_24E601704(v50, &qword_27F235830);
  *(v19 + 16) = 0u;
  *(v19 + 32) = 0u;

  FlowAction.setPageData(_:)(v51);

  v35 = *(v10 + 8);
  v35(v43, v9);
  sub_24E601704(v44, &qword_27F235830);
  v35(v12, v9);
  sub_24E601704(v15, &qword_27F228530);
  sub_24E601704(v52, &qword_27F235830);
  sub_24E601704(v51, &qword_27F2129B0);
  return v19;
}

uint64_t sub_24F3A55A4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a3;
  if (*a1 != -1)
  {
    swift_once();
    v4 = a3;
  }

  return sub_24E65864C(a2, v4);
}

void PagePresentationContext.PreviousPage.jsRepresentation(in:)(void *a1@<X8>)
{
  v1 = MEMORY[0x277D22580];
  a1[3] = MEMORY[0x277D837D0];
  a1[4] = v1;
  *a1 = 0xD000000000000010;
  a1[1] = 0x800000024FA429D0;
}

uint64_t PagePresentationContext.PreviousPage.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_24F92CB88();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_24F3A56A4()
{
  sub_24F92D068();
  sub_24F92B218();
  return sub_24F92D0B8();
}

uint64_t sub_24F3A5718()
{
  sub_24F92D068();
  sub_24F92B218();
  return sub_24F92D0B8();
}

uint64_t sub_24F3A576C@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_24F92CB88();

  *a1 = v2 != 0;
  return result;
}

void sub_24F3A5890(void *a1@<X8>)
{
  v1 = MEMORY[0x277D22580];
  a1[3] = MEMORY[0x277D837D0];
  a1[4] = v1;
  *a1 = 0xD000000000000010;
  a1[1] = 0x800000024FA429D0;
}

unint64_t PagePresentationContext.jsRepresentation(in:)@<X0>(unint64_t *a1@<X8>)
{
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93DE60;
  strcpy((inited + 32), "previousPage");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2414C0);
  *(inited + 80) = sub_24F3A59C0();
  *(inited + 48) = v3;
  v5 = sub_24E607E40(inited);
  swift_setDeallocating();
  sub_24E6383E8(inited + 32);
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v5;
  return result;
}

unint64_t sub_24F3A59C0()
{
  result = qword_27F2414C8;
  if (!qword_27F2414C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2414C0);
    sub_24F3A5A44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2414C8);
  }

  return result;
}

unint64_t sub_24F3A5A44()
{
  result = qword_27F2414D0;
  if (!qword_27F2414D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2414D0);
  }

  return result;
}

uint64_t sub_24F3A5AB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73756F6976657270 && a2 == 0xEC00000065676150)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24F92CE08();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24F3A5B44(uint64_t a1)
{
  v2 = sub_24F3A5FA0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F3A5B80(uint64_t a1)
{
  v2 = sub_24F3A5FA0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PagePresentationContext.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2414D8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F3A5FA0();
  sub_24F92D128();
  v10 = v7;
  sub_24F3A5FF4();
  sub_24F92CCF8();
  return (*(v4 + 8))(v6, v3);
}

uint64_t PagePresentationContext.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2414F0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F3A5FA0();
  sub_24F92D108();
  if (!v2)
  {
    sub_24F3A6048();
    sub_24F92CC18();
    (*(v6 + 8))(v8, v5);
    *a2 = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_24F3A5EA4@<X0>(unint64_t *a1@<X8>)
{
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93DE60;
  strcpy((inited + 32), "previousPage");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2414C0);
  *(inited + 80) = sub_24F3A59C0();
  *(inited + 48) = v3;
  v5 = sub_24E607E40(inited);
  swift_setDeallocating();
  sub_24E6383E8(inited + 32);
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v5;
  return result;
}

unint64_t sub_24F3A5FA0()
{
  result = qword_27F2414E0;
  if (!qword_27F2414E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2414E0);
  }

  return result;
}

unint64_t sub_24F3A5FF4()
{
  result = qword_27F2414E8;
  if (!qword_27F2414E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2414E8);
  }

  return result;
}

unint64_t sub_24F3A6048()
{
  result = qword_27F2414F8;
  if (!qword_27F2414F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2414F8);
  }

  return result;
}

unint64_t sub_24F3A60A0()
{
  result = qword_27F241500;
  if (!qword_27F241500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F241500);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PagePresentationContext(unsigned __int8 *a1, int a2)
{
  if (a2)
  {
    if ((a2 + 255) >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 255) >> 8 < 0xFF)
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
        return (*a1 | (v4 << 8)) - 255;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (*(a1 + 1))
      {
        return (*a1 | (v4 << 8)) - 255;
      }
    }

    else
    {
      v4 = a1[1];
      if (a1[1])
      {
        return (*a1 | (v4 << 8)) - 255;
      }
    }
  }

  return 0;
}

uint64_t storeEnumTagSinglePayload for PagePresentationContext(uint64_t result, int a2, int a3)
{
  if ((a3 + 255) >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 255) >> 8 < 0xFF)
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
    v5 = ((a2 - 1) >> 8) + 1;
    *result = a2 - 1;
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
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *(result + 1) = 0;
    }

    else
    {
      *(result + 1) = 0;
    }
  }

  else if (v4)
  {
    *(result + 1) = 0;
  }

  return result;
}

unint64_t sub_24F3A622C()
{
  result = qword_27F241508;
  if (!qword_27F241508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F241508);
  }

  return result;
}

unint64_t sub_24F3A6284()
{
  result = qword_27F241510;
  if (!qword_27F241510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F241510);
  }

  return result;
}

unint64_t sub_24F3A62DC()
{
  result = qword_27F241518;
  if (!qword_27F241518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F241518);
  }

  return result;
}

unint64_t sub_24F3A6330()
{
  result = qword_27F241520[0];
  if (!qword_27F241520[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F241520);
  }

  return result;
}

uint64_t sub_24F3A6384@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  (*(*(a5 - 8) + 32))(a6, a1, a5);
  v10 = type metadata accessor for CardExtraLargeView();
  (*(*(a4 - 8) + 32))(a6 + *(v10 + 44), a2, a4);
  v11 = *(v10 + 48);
  v12 = sub_24F923E98();
  (*(*(v12 - 8) + 32))(a6 + v11, a3, v12);
  return sub_24F3A659C(sub_24E8CA6B0, 0);
}

__n128 sub_24F3A64C8@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24F3AD224(&qword_27F214D10, type metadata accessor for CardSafeArea);
  sub_24F91FD88();

  result = *(v3 + 16);
  v5 = *(v3 + 32);
  *a2 = result;
  *(a2 + 16) = v5;
  return result;
}

uint64_t sub_24F3A659C(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  type metadata accessor for CardSafeArea(0);

  return sub_24F9233C8();
}

void sub_24F3A6620(void *a1@<X0>, uint64_t a2@<X8>)
{
  v91 = a2;
  v3 = type metadata accessor for CardLayoutMetrics.CardHeight(0);
  MEMORY[0x28223BE20](v3 - 8);
  v90 = v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CardLayoutMetrics(0);
  MEMORY[0x28223BE20](v5 - 8);
  v88 = v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = a1;
  v7 = a1[3];
  v8 = a1[4];
  v85 = a1[2];
  type metadata accessor for CardExtraLargeView.TopAccessory();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21A720);
  sub_24F924038();
  swift_getTupleTypeMetadata2();
  sub_24F927808();
  swift_getWitnessTable();
  sub_24F927108();
  sub_24F924038();
  v75 = v7;
  v76 = v8;
  type metadata accessor for CardExtraLargeView.Footer();
  sub_24F924038();
  sub_24F924038();
  swift_getTupleTypeMetadata2();
  v84 = sub_24F927808();
  WitnessTable = swift_getWitnessTable();
  v9 = sub_24F927018();
  v86 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v78 = v55 - v10;
  type metadata accessor for CardHeightViewModifier(255);
  v72 = v9;
  v11 = sub_24F924038();
  v87 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v82 = v55 - v12;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F254F40);
  swift_getAssociatedTypeWitness();
  sub_24F927598();
  swift_getTupleTypeMetadata2();
  v79 = sub_24F927808();
  v80 = swift_getWitnessTable();
  sub_24F924E08();
  v74 = v11;
  v13 = sub_24F924038();
  v81 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v77 = v55 - v14;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F22E040);
  sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2170A0);
  v15 = sub_24F924038();
  v16 = swift_getWitnessTable();
  v71 = v16;
  v17 = sub_24F3AD224(&qword_27F217CC0, type metadata accessor for CardHeightViewModifier);
  v115 = v16;
  v116 = v17;
  v18 = swift_getWitnessTable();
  v73 = v18;
  v19 = swift_getWitnessTable();
  v113 = v18;
  v114 = v19;
  v20 = v13;
  v21 = swift_getWitnessTable();
  v22 = sub_24E6A4C1C();
  v23 = sub_24E602068(&unk_27F2129E0, &unk_27F22E040);
  v111 = v21;
  v112 = v23;
  v24 = swift_getWitnessTable();
  v25 = sub_24E602068(&qword_27F217098, &qword_27F2170A0);
  v109 = v24;
  v110 = v25;
  v26 = swift_getWitnessTable();
  v103 = v20;
  v104 = &type metadata for GameOverlayViewPredicate;
  v64 = v20;
  v105 = v15;
  v106 = v21;
  v63 = v21;
  v107 = v22;
  v108 = v26;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v69 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v66 = v55 - v27;
  v28 = sub_24F924038();
  v70 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v65 = v55 - v29;
  v103 = v20;
  v104 = &type metadata for GameOverlayViewPredicate;
  v105 = v15;
  v106 = v21;
  v107 = v22;
  v108 = v26;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v61 = OpaqueTypeConformance2;
  v31 = sub_24E6BC1C8();
  v101 = OpaqueTypeConformance2;
  v102 = v31;
  v32 = swift_getWitnessTable();
  v103 = v28;
  v104 = v32;
  v55[1] = v28;
  v33 = v32;
  v55[3] = v32;
  v34 = swift_getOpaqueTypeMetadata2();
  v59 = v34;
  v67 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v55[4] = v55 - v35;
  v36 = type metadata accessor for CardSafeArea(255);
  v58 = v36;
  v103 = v28;
  v104 = v33;
  v37 = swift_getOpaqueTypeConformance2();
  v57 = v37;
  v56 = sub_24F3AD224(&qword_27F214D10, type metadata accessor for CardSafeArea);
  v103 = v34;
  v104 = v36;
  v105 = v37;
  v106 = v56;
  v60 = MEMORY[0x277CE0C50];
  v38 = swift_getOpaqueTypeMetadata2();
  v62 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v55[0] = v55 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v55[2] = v55 - v41;
  v42 = v85;
  v43 = v75;
  v97 = v85;
  v98 = v75;
  v44 = v76;
  v45 = v89;
  v99 = v76;
  v100 = v89;
  sub_24F9249A8();
  v46 = v78;
  sub_24F927008();
  v47 = *(v92 + 12);
  v84 = *(v92 + 11);
  v48 = v88;
  (*(v44 + 56))(v45 + v84, 4, v45 + v47, v43, v44);
  v49 = v90;
  sub_24E8D2DD8(v48, v90);
  sub_24F3AC968(v48, type metadata accessor for CardLayoutMetrics);
  v50 = v82;
  v51 = v72;
  sub_24F4E8DBC(v49, v72, v71, v82);
  sub_24F3AC968(v49, type metadata accessor for CardLayoutMetrics.CardHeight);
  (*(v86 + 8))(v46, v51);
  v93 = v42;
  v94 = v43;
  v95 = v44;
  v96 = v45;
  sub_24F927618();
  v52 = v77;
  v53 = v74;
  sub_24F926088();
  (*(v87 + 8))(v50, v53);
  v54 = v64;
  sub_24E739274();
  (*(v81 + 8))(v52, v54);
  sub_24E739404();
}

uint64_t sub_24F3A7258()
{
  (*(*(v6 - 512) + 8))(v5, v0);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = *(v6 - 624);
  v9 = *(v6 - 648);
  sub_24E739418(v2 + *(v6 - 392), v9, v3, *(v6 - 632), AssociatedConformanceWitness);
  (*(*(v6 - 504) + 8))(v1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220C68);
  sub_24F9233D8();
  v10 = *(v6 - 656);
  v11 = *(v6 - 592);
  v12 = *(v6 - 600);
  v13 = *(v6 - 608);
  v14 = *(v6 - 616);
  sub_24F9261A8();

  (*(*(v6 - 528) + 8))(v8, v11);
  *(v6 - 200) = v11;
  *(v6 - 192) = v12;
  *(v6 - 184) = v13;
  *(v6 - 176) = v14;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v16 = *(v6 - 640);
  sub_24E7896B8(v10, v4, OpaqueTypeConformance2);
  v17 = *(*(v6 - 568) + 8);
  v17(v10, v4);
  sub_24E7896B8(v16, v4, OpaqueTypeConformance2);
  return (v17)(v16, v4);
}

uint64_t sub_24F3A743C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v78 = a1;
  v100 = a5;
  v91 = type metadata accessor for CardExtraLargeView();
  v94 = *(v91 - 8);
  v99 = *(v94 + 64);
  MEMORY[0x28223BE20](v91);
  v98 = &v70 - v8;
  v92 = sub_24F923E98();
  v90 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v87 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = *(a3 - 8);
  MEMORY[0x28223BE20](v10);
  v84 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = *(a2 - 8);
  MEMORY[0x28223BE20](v12);
  v79 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for CardExtraLargeView.Footer();
  v89 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v80 = &v70 - v14;
  v88 = sub_24F924038();
  v96 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v81 = &v70 - v15;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21A720);
  v95 = sub_24F924038();
  v97 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v86 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v93 = &v70 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214148);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v70 - v20;
  v72 = a2;
  type metadata accessor for CardExtraLargeView.TopAccessory();
  sub_24F924038();
  swift_getTupleTypeMetadata2();
  sub_24F927808();
  swift_getWitnessTable();
  v22 = sub_24F927108();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v70 - v24;
  v101 = sub_24F924038();
  v103 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v27 = &v70 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v102 = &v70 - v29;
  v104 = a2;
  v105 = a3;
  v106 = a4;
  v30 = a4;
  v31 = v78;
  v107 = v78;
  sub_24F924C88();
  sub_24F9270F8();
  _sSo6CGSizeV12GameStoreKitE11aspectRatio5JetUI06AspectF0Vvg_0();
  v32 = sub_24F922348();
  (*(*(v32 - 8) + 56))(v21, 0, 1, v32);
  WitnessTable = swift_getWitnessTable();
  sub_24F519BF0(v21);
  sub_24F0F8BDC(v21);
  (*(v23 + 8))(v25, v22);
  v111[6] = WitnessTable;
  v111[7] = MEMORY[0x277CE01B0];
  v73 = MEMORY[0x277CDFAD8];
  v34 = v101;
  v75 = swift_getWitnessTable();
  v74 = v27;
  sub_24E7896B8(v27, v34, v75);
  v35 = *(v103 + 8);
  v76 = v103 + 8;
  v77 = v35;
  v35(v27, v34);
  v36 = v91;
  v37 = v79;
  v38 = v72;
  (*(v82 + 16))(v79, v31 + *(v91 + 44), v72);
  v39 = *(v85 + 16);
  v40 = v84;
  v41 = a3;
  v71 = a3;
  v39(v84, v31, a3);
  v42 = v31;
  v43 = v87;
  (*(v90 + 16))(v87, v31 + *(v36 + 48), v92);
  v44 = v80;
  v45 = v38;
  v46 = v38;
  v47 = v30;
  sub_24F3A87FC(v37, v40, v43, v45, v41, v30, type metadata accessor for CardExtraLargeView.Footer, v80);
  sub_24F927618();
  v68 = v83;
  v69 = swift_getWitnessTable();
  v48 = v81;
  sub_24F926948();
  (*(v89 + 8))(v44, v68);
  v49 = v94;
  v50 = v98;
  (*(v94 + 16))(v98, v42, v36);
  v51 = (*(v49 + 80) + 40) & ~*(v49 + 80);
  v52 = swift_allocObject();
  v53 = v71;
  *(v52 + 2) = v46;
  *(v52 + 3) = v53;
  *(v52 + 4) = v47;
  (*(v49 + 32))(&v52[v51], v50, v36);
  v111[4] = v69;
  v111[5] = MEMORY[0x277CDFC60];
  v54 = v88;
  v55 = swift_getWitnessTable();
  sub_24E7DDA4C();
  v56 = v86;
  sub_24F9264C8();

  (*(v96 + 8))(v48, v54);
  v57 = sub_24E602068(&qword_27F21A718, &qword_27F21A720);
  v111[2] = v55;
  v111[3] = v57;
  v58 = v95;
  v59 = swift_getWitnessTable();
  v60 = v93;
  sub_24E7896B8(v56, v58, v59);
  v61 = v97;
  v62 = *(v97 + 8);
  v62(v56, v58);
  v63 = v102;
  v64 = v74;
  v65 = v101;
  (*(v103 + 16))(v74, v102, v101);
  v111[0] = v64;
  (*(v61 + 16))(v56, v60, v58);
  v111[1] = v56;
  v110[0] = v65;
  v110[1] = v58;
  v108 = v75;
  v109 = v59;
  sub_24F57BA64(v111, 2uLL, v110);
  v62(v60, v58);
  v66 = v77;
  v77(v63, v65);
  v62(v56, v58);
  return v66(v64, v65);
}

uint64_t sub_24F3A8058@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v61 = a5;
  v50 = a4;
  v8 = type metadata accessor for CardExtraLargeView();
  v59 = *(v8 - 8);
  v60 = *(v59 + 64);
  MEMORY[0x28223BE20](v8);
  v58 = &v47 - v9;
  v10 = sub_24F923E98();
  v53 = *(v10 - 8);
  v54 = v10;
  MEMORY[0x28223BE20](v10);
  v52 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = a3;
  v12 = *(a3 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a2 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for CardExtraLargeView.TopAccessory();
  v56 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v21 = &v47 - v20;
  v48 = &v47 - v20;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21A720);
  v22 = sub_24F924038();
  v57 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v24 = &v47 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v25);
  v55 = &v47 - v27;
  (*(v16 + 16))(v19, a1 + *(v8 + 44), a2, v26);
  v28 = v49;
  (*(v12 + 16))(v15, a1, v49);
  v29 = v52;
  (*(v53 + 16))(v52, a1 + *(v8 + 48), v54);
  v30 = v19;
  v31 = v15;
  v32 = v28;
  v33 = v50;
  sub_24F3A87FC(v30, v31, v29, a2, v28, v50, type metadata accessor for CardExtraLargeView.TopAccessory, v21);
  v35 = v58;
  v34 = v59;
  (*(v59 + 16))(v58, a1, v8);
  v36 = (*(v34 + 80) + 40) & ~*(v34 + 80);
  v37 = swift_allocObject();
  *(v37 + 2) = a2;
  *(v37 + 3) = v32;
  *(v37 + 4) = v33;
  (*(v34 + 32))(&v37[v36], v35, v8);
  v38 = v51;
  WitnessTable = swift_getWitnessTable();
  sub_24E7DDA4C();
  v40 = v48;
  sub_24F9264C8();

  (*(v56 + 8))(v40, v38);
  v41 = sub_24E602068(&qword_27F21A718, &qword_27F21A720);
  v67[2] = WitnessTable;
  v67[3] = v41;
  v42 = swift_getWitnessTable();
  v43 = v55;
  sub_24E7896B8(v24, v22, v42);
  v44 = v57;
  v45 = *(v57 + 8);
  v45(v24, v22);
  (*(v44 + 16))(v24, v43, v22);
  v65 = 0;
  v66 = 1;
  v67[0] = v24;
  v67[1] = &v65;
  v64[0] = v22;
  v64[1] = MEMORY[0x277CE1180];
  v62 = v42;
  v63 = MEMORY[0x277CE1170];
  sub_24F57BA64(v67, 2uLL, v64);
  v45(v43, v22);
  return (v45)(v24, v22);
}

uint64_t sub_24F3A86A4(uint64_t *a1)
{
  v1 = *a1;
  type metadata accessor for CardExtraLargeView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220C68);
  sub_24F9233D8();
  swift_getKeyPath();
  sub_24F3AD224(&qword_27F214D10, type metadata accessor for CardSafeArea);
  sub_24F91FD88();

  swift_getKeyPath();
  sub_24F91FDA8();

  *(v3 + 16) = v1;
  swift_getKeyPath();
  sub_24F91FD98();
}

uint64_t sub_24F3A87FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t (*a7)(void, uint64_t, uint64_t, uint64_t)@<X6>, uint64_t a8@<X8>)
{
  (*(*(a4 - 8) + 32))(a8, a1, a4);
  v15 = a7(0, a4, a5, a6);
  (*(*(a5 - 8) + 32))(a8 + *(v15 + 44), a2, a5);
  v16 = *(v15 + 48);
  v17 = sub_24F923E98();
  v18 = *(*(v17 - 8) + 32);

  return v18(a8 + v16, a3, v17);
}

uint64_t sub_24F3A8920(uint64_t *a1)
{
  v1 = *a1;
  type metadata accessor for CardExtraLargeView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220C68);
  sub_24F9233D8();
  swift_getKeyPath();
  sub_24F3AD224(&qword_27F214D10, type metadata accessor for CardSafeArea);
  sub_24F91FD88();

  swift_getKeyPath();
  sub_24F91FDA8();

  *(v3 + 40) = v1;
  swift_getKeyPath();
  sub_24F91FD98();
}

uint64_t sub_24F3A8A78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v40 = a3;
  v38 = a2;
  v47 = a1;
  v45 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v44 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v42 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v43 = &v34 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254F40);
  MEMORY[0x28223BE20](v11);
  v12 = sub_24F927598();
  v41 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = (&v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v15);
  v46 = &v34 - v16;
  v17 = sub_24E6A4C1C();
  sub_24F924B68();
  v48 = a2;
  v18 = v40;
  v49 = v40;
  v50 = a4;
  v51 = v47;
  v55 = &type metadata for GameOverlayViewPredicate;
  v56 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v36 = AssociatedConformanceWitness;
  sub_24F927578();
  v54[2] = OpaqueTypeConformance2;
  v54[3] = AssociatedConformanceWitness;
  v54[4] = MEMORY[0x277CE1410];
  WitnessTable = swift_getWitnessTable();
  v34 = v14;
  v35 = v12;
  sub_24E7896B8(v14, v12, WitnessTable);
  v21 = v41;
  v39 = *(v41 + 8);
  v39(v14, v12);
  v22 = type metadata accessor for CardExtraLargeView();
  v23 = v42;
  (*(a4 + 72))(2, v47 + *(v22 + 44), 4, v47 + *(v22 + 48), v18, a4);
  v24 = v43;
  v25 = AssociatedTypeWitness;
  v26 = v36;
  sub_24E7896B8(v23, AssociatedTypeWitness, v36);
  v27 = v44;
  v28 = *(v44 + 8);
  v28(v23, AssociatedTypeWitness);
  v29 = *(v21 + 16);
  v30 = v34;
  v31 = v35;
  v29(v34, v46, v35);
  v55 = v30;
  (*(v27 + 16))(v23, v24, v25);
  v56 = v23;
  v54[0] = v31;
  v54[1] = v25;
  v52 = WitnessTable;
  v53 = v26;
  sub_24F57BA64(&v55, 2uLL, v54);
  v28(v24, v25);
  v32 = v39;
  v39(v46, v31);
  v28(v23, v25);
  return v32(v30, v31);
}

uint64_t sub_24F3A8F50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v18 - v12;
  v14 = type metadata accessor for CardExtraLargeView();
  (*(a4 + 72))(12, a1 + *(v14 + 44), 4, a1 + *(v14 + 48), a3, a4);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_24E7896B8(v10, AssociatedTypeWitness, AssociatedConformanceWitness);
  v16 = *(v8 + 8);
  v16(v10, AssociatedTypeWitness);
  sub_24E7896B8(v13, AssociatedTypeWitness, AssociatedConformanceWitness);
  return (v16)(v13, AssociatedTypeWitness);
}

uint64_t sub_24F3A9110@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  sub_24F924038();
  swift_getTupleTypeMetadata3();
  v24[1] = sub_24F927808();
  v24[0] = swift_getWitnessTable();
  v6 = sub_24F927018();
  v25 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v24 - v10;
  v12 = type metadata accessor for CardLayoutMetrics(0);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v4;
  v17 = *(v4 + 56);
  v18 = v5;
  v19 = v5;
  v20 = v16;
  v17(v2, 4, v2 + *(a1 + 48), v19, v13);
  v27 = *(a1 + 16);
  v28 = v18;
  v29 = v20;
  v30 = v2;
  v31 = v15;
  sub_24F927008();
  WitnessTable = swift_getWitnessTable();
  sub_24E7896B8(v8, v6, WitnessTable);
  v22 = *(v25 + 8);
  v22(v8, v6);
  sub_24E7896B8(v11, v6, WitnessTable);
  v22(v11, v6);
  return sub_24F3AC968(v15, type metadata accessor for CardLayoutMetrics);
}

uint64_t sub_24F3A93E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v44 = a2;
  v43 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v48 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v10 = &v33 - v9;
  v11 = sub_24F924038();
  v47 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v42 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v45 = &v33 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v33 - v16;
  MEMORY[0x28223BE20](v18);
  v46 = &v33 - v19;
  v20 = type metadata accessor for CardExtraLargeView.TopAccessory();
  v40 = *(v20 + 44);
  v39 = *(v20 + 48);
  v41 = *(a4 + 72);
  v35 = a3;
  v37 = a4;
  v41(0, a1, 4, a1 + v39, a3, a4);
  v38 = type metadata accessor for CardLayoutMetrics(0);
  v21 = AssociatedTypeWitness;
  v34 = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_24F926A38();
  v23 = *(v48 + 8);
  v48 += 8;
  v36 = v23;
  v23(v10, v21);
  v55[3] = AssociatedConformanceWitness;
  v55[4] = MEMORY[0x277CDF918];
  WitnessTable = swift_getWitnessTable();
  v25 = v17;
  sub_24E7896B8(v17, v11, WitnessTable);
  v26 = *(v47 + 8);
  v26(v25, v11);
  v41(1, a1, 4, a1 + v39, v35, v37);
  v27 = v45;
  v28 = v34;
  sub_24F926A38();
  v36(v10, v28);
  sub_24E7896B8(v27, v11, WitnessTable);
  v26(v27, v11);
  v29 = v46;
  v30 = *(v47 + 16);
  v30(v27, v46, v11);
  v53 = 0;
  v54 = 1;
  v55[0] = v27;
  v55[1] = &v53;
  v31 = v42;
  v30(v42, v25, v11);
  v55[2] = v31;
  v52[0] = v11;
  v52[1] = MEMORY[0x277CE1180];
  v52[2] = v11;
  v49 = WitnessTable;
  v50 = MEMORY[0x277CE1170];
  v51 = WitnessTable;
  sub_24F57BA64(v55, 3uLL, v52);
  v26(v25, v11);
  v26(v29, v11);
  v26(v31, v11);
  return (v26)(v45, v11);
}

uint64_t sub_24F3A991C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v60 = a1;
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23A578);
  sub_24F924038();
  swift_getTupleTypeMetadata3();
  sub_24F927808();
  swift_getWitnessTable();
  sub_24F927108();
  sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2146E8);
  sub_24F924038();
  swift_getTupleTypeMetadata3();
  sub_24F927808();
  sub_24F924038();
  v83 = sub_24F924038();
  sub_24F924038();
  v84 = sub_24F924038();
  v85 = MEMORY[0x277CE1180];
  v86 = AssociatedTypeWitness;
  swift_getTupleTypeMetadata();
  sub_24F927808();
  swift_getWitnessTable();
  sub_24F927018();
  swift_getTupleTypeMetadata2();
  sub_24F927808();
  v5 = sub_24F924E38();
  WitnessTable = swift_getWitnessTable();
  v82 = swift_getWitnessTable();
  v44 = v5;
  v49 = swift_getWitnessTable();
  v6 = sub_24F927108();
  v56 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v47 = &v41 - v7;
  v54 = sub_24F924038();
  v58 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v48 = &v41 - v8;
  v46 = sub_24F924038();
  v59 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v53 = &v41 - v9;
  type metadata accessor for CardContentBackgroundStyle(255);
  v10 = sub_24F927598();
  v11 = sub_24E6A4C1C();
  v12 = sub_24F3AD224(&qword_27F214AE0, type metadata accessor for CardContentBackgroundStyle);
  v13 = v2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v78 = v11;
  v79 = v12;
  v80 = AssociatedConformanceWitness;
  v50 = v10;
  v52 = swift_getWitnessTable();
  v55 = sub_24F924E08();
  v15 = sub_24F924038();
  v57 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v45 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v51 = &v41 - v18;
  v19 = type metadata accessor for CardLayoutMetrics(0);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v60;
  v24 = *(v3 + 56);
  v25 = v62;
  v43 = v13;
  v42 = v3;
  v24(v20);
  sub_24F924C98();
  v67 = *(v23 + 16);
  v26 = v67;
  v68 = v13;
  v69 = v3;
  v70 = v22;
  v71 = v25;
  v27 = v47;
  sub_24F9270F8();
  v28 = swift_getWitnessTable();
  v29 = v48;
  sub_24F926A38();
  (*(v56 + 8))(v27, v6);
  sub_24F927618();
  v76 = v28;
  v77 = MEMORY[0x277CDF918];
  v39 = v54;
  v40 = swift_getWitnessTable();
  v30 = v53;
  sub_24F926948();
  (*(v58 + 8))(v29, v39);
  v63 = v26;
  v64 = v43;
  v65 = v42;
  v66 = v62;
  sub_24F927618();
  v74 = v40;
  v75 = MEMORY[0x277CDFC60];
  v31 = v46;
  v32 = swift_getWitnessTable();
  v33 = v45;
  sub_24F926088();
  (*(v59 + 8))(v30, v31);
  v34 = swift_getWitnessTable();
  v72 = v32;
  v73 = v34;
  v35 = swift_getWitnessTable();
  v36 = v51;
  sub_24E7896B8(v33, v15, v35);
  v37 = *(v57 + 8);
  v37(v33, v15);
  sub_24E7896B8(v36, v15, v35);
  v37(v36, v15);
  return sub_24F3AC968(v22, type metadata accessor for CardLayoutMetrics);
}

uint64_t sub_24F3AA304@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v96 = a5;
  v107 = a3;
  v102 = a2;
  v108 = a1;
  v104 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23A578);
  sub_24F924038();
  swift_getTupleTypeMetadata3();
  sub_24F927808();
  swift_getWitnessTable();
  v97 = sub_24F927108();
  v8 = sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2146E8);
  v98 = v8;
  v9 = sub_24F924038();
  sub_24F924038();
  v129 = sub_24F924038();
  sub_24F924038();
  v130 = sub_24F924038();
  v131 = MEMORY[0x277CE1180];
  v132 = AssociatedTypeWitness;
  swift_getTupleTypeMetadata();
  v89 = sub_24F927808();
  WitnessTable = swift_getWitnessTable();
  v10 = sub_24F927018();
  swift_getTupleTypeMetadata2();
  v11 = sub_24F927808();
  v94 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v93 = &v82 - v12;
  AssociatedConformanceWitness = v10;
  v87 = *(v10 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v95 = &v82 - v17;
  swift_getTupleTypeMetadata3();
  v18 = sub_24F927808();
  v91 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v90 = &v82 - v19;
  v99 = *(v9 - 8);
  MEMORY[0x28223BE20](v20);
  v22 = &v82 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v112 = &v82 - v24;
  v84 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v25);
  v86 = &v82 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v85 = &v82 - v28;
  MEMORY[0x28223BE20](v29);
  v31 = &v82 - v30;
  MEMORY[0x28223BE20](v32);
  v106 = &v82 - v33;
  v111 = v34;
  v103 = v11;
  v101 = sub_24F924E38();
  v100 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v110 = &v82 - v35;
  LODWORD(v11) = *(v108 + *(type metadata accessor for CardLayoutMetrics(0) + 68));
  v109 = a4;
  v36 = v96;
  v37 = type metadata accessor for CardExtraLargeView.Footer();
  v38 = v37;
  v105 = v9;
  if (v11 == 1)
  {
    v39 = *(v37 + 48);
    v95 = *(v37 + 44);
    v93 = v39;
    v94 = *(v36 + 72);
    v107 = v36 + 72;
    v40 = v22;
    v41 = v102;
    (v94)(3, v102, 4, &v39[v102], v109, v36);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v83 = v31;
    sub_24E7896B8(v31, AssociatedTypeWitness, AssociatedConformanceWitness);
    v42 = v84;
    v89 = *(v84 + 8);
    v108 = v84 + 8;
    v89(v31, AssociatedTypeWitness);
    sub_24F3AB1C8(v38, v40);
    v121 = swift_getWitnessTable();
    v122 = MEMORY[0x277CDFC60];
    v43 = swift_getWitnessTable();
    v44 = sub_24E602068(&qword_27F2146E0, &qword_27F2146E8);
    v119 = v43;
    v120 = v44;
    WitnessTable = swift_getWitnessTable();
    v45 = v112;
    v82 = v40;
    sub_24E7896B8(v40, v9, WitnessTable);
    v46 = v99;
    v47 = *(v99 + 8);
    v97 = v99 + 8;
    v98 = v47;
    v47(v40, v9);
    v48 = v85;
    (v94)(13, v41, 4, &v93[v41], v109, v36);
    v49 = v83;
    v50 = AssociatedConformanceWitness;
    sub_24E7896B8(v48, AssociatedTypeWitness, AssociatedConformanceWitness);
    v51 = v89;
    v89(v48, AssociatedTypeWitness);
    v52 = *(v42 + 16);
    v52(v48, v106, AssociatedTypeWitness);
    v129 = v48;
    v53 = v82;
    v54 = v45;
    v55 = v105;
    (*(v46 + 16))(v82, v54, v105);
    v130 = v53;
    v56 = v86;
    v52(v86, v49, AssociatedTypeWitness);
    v131 = v56;
    v116 = AssociatedTypeWitness;
    v117 = v55;
    v118 = AssociatedTypeWitness;
    v113 = v50;
    v114 = WitnessTable;
    v115 = v50;
    v57 = v90;
    sub_24F57BA64(&v129, 3uLL, &v116);
    v58 = v51;
    v51(v56, AssociatedTypeWitness);
    v59 = v98;
    v98(v82, v55);
    v58(v48, AssociatedTypeWitness);
    v60 = v111;
    swift_getWitnessTable();
    swift_getWitnessTable();
    sub_24ECCCBA0(v57, v60);
    (*(v91 + 8))(v57, v60);
    v58(v83, AssociatedTypeWitness);
    v59(v112, v105);
    v58(v106, AssociatedTypeWitness);
  }

  else
  {
    v61 = v102;
    sub_24F3AB1C8(v37, v22);
    v127 = swift_getWitnessTable();
    v128 = MEMORY[0x277CDFC60];
    v62 = swift_getWitnessTable();
    v63 = sub_24E602068(&qword_27F2146E0, &qword_27F2146E8);
    v125 = v62;
    v126 = v63;
    v97 = swift_getWitnessTable();
    sub_24E7896B8(v22, v9, v97);
    v64 = v99;
    v98 = *(v99 + 8);
    v106 = (v99 + 8);
    v65 = (v98)(v22, v9);
    MEMORY[0x28223BE20](v65);
    v66 = v109;
    *(&v82 - 6) = v107;
    *(&v82 - 5) = v66;
    *(&v82 - 4) = v36;
    *(&v82 - 3) = v61;
    *(&v82 - 2) = v108;
    sub_24F9249A8();
    sub_24F927008();
    v67 = AssociatedConformanceWitness;
    v68 = swift_getWitnessTable();
    v69 = v95;
    sub_24E7896B8(v15, v67, v68);
    v70 = v87;
    v71 = *(v87 + 8);
    v71(v15, v67);
    (*(v64 + 16))(v22, v112, v9);
    v129 = v22;
    (*(v70 + 16))(v15, v69, v67);
    v130 = v15;
    v116 = v9;
    v117 = v67;
    v113 = v97;
    v114 = v68;
    v72 = v93;
    sub_24F57BA64(&v129, 2uLL, &v116);
    v71(v15, v67);
    v73 = v98;
    v98(v22, v9);
    v74 = v111;
    swift_getWitnessTable();
    v75 = v103;
    swift_getWitnessTable();
    sub_24ECCCC98(v72, v74, v75);
    (*(v94 + 8))(v72, v75);
    v71(v95, v67);
    v73(v112, v105);
  }

  v76 = swift_getWitnessTable();
  v77 = swift_getWitnessTable();
  v123 = v76;
  v124 = v77;
  v78 = v101;
  v79 = swift_getWitnessTable();
  v80 = v110;
  sub_24E7896B8(v110, v78, v79);
  return (*(v100 + 8))(v80, v78);
}

uint64_t sub_24F3AB1C8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = a1[3];
  v3 = a1[4];
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23A578);
  sub_24F924038();
  swift_getTupleTypeMetadata3();
  sub_24F927808();
  swift_getWitnessTable();
  v5 = sub_24F927108();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  v9 = sub_24F924038();
  v15 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v14 - v10;
  sub_24F924C98();
  v18 = a1[2];
  v19 = v4;
  v20 = v3;
  v21 = v16;
  sub_24F9270F8();
  sub_24F927628();
  WitnessTable = swift_getWitnessTable();
  sub_24F926948();
  (*(v6 + 8))(v8, v5);
  v22 = WitnessTable;
  v23 = MEMORY[0x277CDFC60];
  swift_getWitnessTable();
  sub_24F926728();
  return (*(v15 + 8))(v11, v9);
}

uint64_t sub_24F3AB4E0@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(char *, uint64_t)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v66 = a2;
  v73 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v68 = sub_24F924038();
  v71 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v67 = &v61 - v9;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2146E8);
  v70 = sub_24F924038();
  v72 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v89 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v85 = &v61 - v12;
  v83 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v13);
  v69 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v61 - v16;
  v18 = sub_24F924038();
  v65 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v61 - v19;
  v75 = sub_24F924038();
  v84 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v86 = &v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v88 = &v61 - v23;
  v24 = type metadata accessor for CardExtraLargeView.Footer();
  v25 = *(v24 + 48);
  v80 = *(v24 + 44);
  v79 = v25;
  v81 = *(a4 + 72);
  v82 = a4 + 72;
  v63 = a1;
  v77 = a3;
  v78 = a4;
  v81(3, a1, 4, a1 + v25, a3, a4);
  sub_24F925858();
  type metadata accessor for CardLayoutMetrics(0);
  v26 = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v74 = AssociatedTypeWitness;
  v28 = AssociatedConformanceWitness;
  sub_24F926A48();
  v29 = *(v83 + 8);
  v87 = v83 + 8;
  v76 = v29;
  v30 = v17;
  v29(v17, v26);
  sub_24F925868();
  v31 = MEMORY[0x277CDF918];
  v97[10] = v28;
  v97[11] = MEMORY[0x277CDF918];
  WitnessTable = swift_getWitnessTable();
  v33 = v86;
  sub_24F926A48();
  (*(v65 + 8))(v20, v18);
  v97[8] = WitnessTable;
  v97[9] = v31;
  v34 = v75;
  v64 = swift_getWitnessTable();
  sub_24E7896B8(v33, v34, v64);
  v35 = *(v84 + 8);
  v65 = v84 + 8;
  v66 = v35;
  v35(v33, v34);
  v36 = v63;
  v62 = v30;
  v81(6, v63, 4, v63 + v79, v77, v78);
  sub_24F927628();
  v61 = v28;
  v37 = v74;
  v38 = v67;
  sub_24F926948();
  v76(v30, v37);
  v97[6] = v28;
  v97[7] = MEMORY[0x277CDFC60];
  v39 = v68;
  v40 = swift_getWitnessTable();
  v41 = v89;
  sub_24F926728();
  (*(v71 + 8))(v38, v39);
  v42 = sub_24E602068(&qword_27F2146E0, &qword_27F2146E8);
  v97[4] = v40;
  v97[5] = v42;
  v43 = v70;
  v68 = swift_getWitnessTable();
  sub_24E7896B8(v41, v43, v68);
  v44 = v72;
  v71 = *(v72 + 8);
  (v71)(v41, v43);
  v45 = v69;
  v81(13, v36, 4, v36 + v79, v77, v78);
  v46 = v62;
  v47 = v74;
  v48 = v61;
  sub_24E7896B8(v45, v74, v61);
  v49 = v45;
  v50 = v76;
  v76(v45, v47);
  v51 = v86;
  v52 = v75;
  (*(v84 + 16))(v86, v88, v75);
  v97[0] = v51;
  v53 = *(v44 + 16);
  v54 = v89;
  v55 = v85;
  v53(v89, v85, v43);
  v95 = 0x4024000000000000;
  v96 = 0;
  v97[1] = v54;
  v97[2] = &v95;
  (*(v83 + 16))(v49, v46, v47);
  v97[3] = v49;
  v94[0] = v52;
  v94[1] = v43;
  v94[2] = MEMORY[0x277CE1180];
  v94[3] = v47;
  v90 = v64;
  v91 = v68;
  v92 = MEMORY[0x277CE1170];
  v93 = v48;
  sub_24F57BA64(v97, 4uLL, v94);
  v56 = v46;
  v57 = v50;
  v50(v56, v47);
  v58 = v71;
  (v71)(v55, v43);
  v59 = v66;
  v66(v88, v52);
  v57(v49, v47);
  v58(v89, v43);
  return v59(v86, v52);
}

uint64_t sub_24F3ABF14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v22[1] = a5;
  type metadata accessor for CardContentBackgroundStyle(255);
  swift_getAssociatedTypeWitness();
  v9 = sub_24F927598();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v22 - v14;
  v22[4] = a2;
  v22[5] = a3;
  v22[6] = a4;
  v22[7] = a1;
  v16 = sub_24E6A4C1C();
  v20 = sub_24F3AD224(&qword_27F214AE0, type metadata accessor for CardContentBackgroundStyle);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_24F927568();
  v22[9] = v16;
  v22[10] = v20;
  v22[11] = AssociatedConformanceWitness;
  WitnessTable = swift_getWitnessTable();
  sub_24E7896B8(v12, v9, WitnessTable);
  v18 = *(v10 + 8);
  v18(v12, v9);
  sub_24E7896B8(v15, v9, WitnessTable);
  return (v18)(v15, v9);
}

uint64_t sub_24F3AC188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v18 - v12;
  v14 = type metadata accessor for CardExtraLargeView.Footer();
  (*(a4 + 72))(11, a1, 4, a1 + *(v14 + 48), a3, a4);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_24E7896B8(v10, AssociatedTypeWitness, AssociatedConformanceWitness);
  v16 = *(v8 + 8);
  v16(v10, AssociatedTypeWitness);
  sub_24E7896B8(v13, AssociatedTypeWitness, AssociatedConformanceWitness);
  return (v16)(v13, AssociatedTypeWitness);
}

uint64_t sub_24F3AC34C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v46 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23A578);
  v43 = sub_24F924038();
  v44 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v55 = v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v54 = v41 - v10;
  v50 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v11);
  v45 = v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v52 = v41 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = v41 - v16;
  MEMORY[0x28223BE20](v18);
  v53 = v41 - v19;
  v20 = type metadata accessor for CardExtraLargeView.Footer();
  v22 = *(v20 + 44);
  v21 = *(v20 + 48);
  v23 = *(a3 + 72);
  v48 = a3 + 72;
  v49 = v21;
  v47 = a1;
  v41[3] = v22;
  v23(4, a1, 4, a1 + v21, a2, a3);
  v41[2] = a3;
  v41[1] = a2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_24E7896B8(v17, AssociatedTypeWitness, AssociatedConformanceWitness);
  v25 = *(v50 + 8);
  v25(v17, AssociatedTypeWitness);
  v51 = v25;
  (v23)(7);
  v26 = v55;
  v27 = AssociatedConformanceWitness;
  sub_24F926378();
  v25(v17, AssociatedTypeWitness);
  v28 = sub_24E602068(&qword_27F23A570, &qword_27F23A578);
  v60[3] = AssociatedConformanceWitness;
  v60[4] = v28;
  v29 = v43;
  v41[0] = swift_getWitnessTable();
  v30 = v26;
  sub_24E7896B8(v26, v29, v41[0]);
  v31 = v44;
  v42 = *(v44 + 8);
  v42(v30, v29);
  v32 = v52;
  (v23)(8);
  sub_24E7896B8(v32, AssociatedTypeWitness, v27);
  v51(v32, AssociatedTypeWitness);
  v33 = *(v50 + 16);
  v33(v32, v53, AssociatedTypeWitness);
  v60[0] = v32;
  v34 = *(v31 + 16);
  v36 = v54;
  v35 = v55;
  v34(v55, v54, v29);
  v60[1] = v35;
  v37 = v45;
  v33(v45, v17, AssociatedTypeWitness);
  v60[2] = v37;
  v59[0] = AssociatedTypeWitness;
  v59[1] = v29;
  v59[2] = AssociatedTypeWitness;
  v56 = v27;
  v57 = v41[0];
  v58 = v27;
  sub_24F57BA64(v60, 3uLL, v59);
  v38 = v51;
  v51(v17, AssociatedTypeWitness);
  v39 = v42;
  v42(v36, v29);
  v38(v53, AssociatedTypeWitness);
  v38(v37, AssociatedTypeWitness);
  v39(v55, v29);
  return (v38)(v52, AssociatedTypeWitness);
}

uint64_t sub_24F3AC8DC()
{

  return swift_deallocObject();
}

uint64_t sub_24F3AC968(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroy_6Tm_2()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = (type metadata accessor for CardExtraLargeView() - 8);
  v4 = v0 + ((*(*v3 + 80) + 40) & ~*(*v3 + 80));
  (*(*(v2 - 8) + 8))(v4, v2);
  (*(*(v1 - 8) + 8))(v4 + v3[13], v1);
  v5 = v3[14];
  v6 = sub_24F923E98();
  (*(*(v6 - 8) + 8))(v4 + v5, v6);
  v7 = v4 + v3[15];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F220BD8);
  (*(*(v8 - 8) + 8))(v7, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F220C70);

  return swift_deallocObject();
}

uint64_t sub_24F3ACC18(uint64_t a1, uint64_t (*a2)(uint64_t, char *, uint64_t, uint64_t, uint64_t))
{
  v4 = v2[2];
  v5 = v2[3];
  v6 = v2[4];
  v7 = *(type metadata accessor for CardExtraLargeView() - 8);
  v8 = v2 + ((*(v7 + 80) + 40) & ~*(v7 + 80));

  return a2(a1, v8, v4, v5, v6);
}

uint64_t sub_24F3ACCCC()
{
  type metadata accessor for CardExtraLargeView.TopAccessory();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21A720);
  sub_24F924038();
  swift_getTupleTypeMetadata2();
  sub_24F927808();
  swift_getWitnessTable();
  sub_24F927108();
  sub_24F924038();
  type metadata accessor for CardExtraLargeView.Footer();
  sub_24F924038();
  sub_24F924038();
  swift_getTupleTypeMetadata2();
  sub_24F927808();
  swift_getWitnessTable();
  sub_24F927018();
  type metadata accessor for CardHeightViewModifier(255);
  sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F254F40);
  swift_getAssociatedTypeWitness();
  sub_24F927598();
  swift_getTupleTypeMetadata2();
  sub_24F927808();
  swift_getWitnessTable();
  sub_24F924E08();
  sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F22E040);
  sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2170A0);
  sub_24F924038();
  swift_getWitnessTable();
  sub_24F3AD224(&qword_27F217CC0, type metadata accessor for CardHeightViewModifier);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24E6A4C1C();
  sub_24E602068(&unk_27F2129E0, &unk_27F22E040);
  swift_getWitnessTable();
  sub_24E602068(&qword_27F217098, &qword_27F2170A0);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_24F924038();
  swift_getOpaqueTypeConformance2();
  sub_24E6BC1C8();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for CardSafeArea(255);
  swift_getOpaqueTypeConformance2();
  sub_24F3AD224(&qword_27F214D10, type metadata accessor for CardSafeArea);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24F3AD224(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24F3AD2F0()
{
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23A578);
  sub_24F924038();
  swift_getTupleTypeMetadata3();
  sub_24F927808();
  swift_getWitnessTable();
  sub_24F927108();
  sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2146E8);
  sub_24F924038();
  swift_getTupleTypeMetadata3();
  sub_24F927808();
  sub_24F924038();
  sub_24F924038();
  sub_24F924038();
  sub_24F924038();
  swift_getTupleTypeMetadata();
  sub_24F927808();
  swift_getWitnessTable();
  sub_24F927018();
  swift_getTupleTypeMetadata2();
  sub_24F927808();
  sub_24F924E38();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24F927108();
  sub_24F924038();
  sub_24F924038();
  type metadata accessor for CardContentBackgroundStyle(255);
  sub_24F927598();
  sub_24E6A4C1C();
  sub_24F3AD224(&qword_27F214AE0, type metadata accessor for CardContentBackgroundStyle);
  swift_getAssociatedConformanceWitness();
  swift_getWitnessTable();
  sub_24F924E08();
  sub_24F924038();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_24F3AD718()
{
  swift_getAssociatedTypeWitness();
  sub_24F924038();
  swift_getTupleTypeMetadata3();
  sub_24F927808();
  swift_getWitnessTable();
  sub_24F927018();

  return swift_getWitnessTable();
}

double sub_24F3AD86C()
{
  sub_24F925888();
  v0 = sub_24F9258E8();

  sub_24F925A18();
  v1 = sub_24F9258E8();

  result = 170.0;
  xmmword_27F2416A8 = xmmword_24F9EE3D0;
  qword_27F2416B8 = v0;
  unk_27F2416C0 = v1;
  return result;
}

double sub_24F3AD8D8()
{
  sub_24F925888();
  v0 = sub_24F9258E8();

  sub_24F925A08();
  v1 = sub_24F9258E8();

  result = 132.0;
  xmmword_27F2416C8 = xmmword_24F9EE3E0;
  qword_27F2416D8 = v0;
  unk_27F2416E0 = v1;
  return result;
}

double sub_24F3AD944()
{
  sub_24F925998();
  v0 = sub_24F9258E8();

  sub_24F925A08();
  v1 = sub_24F9258E8();

  result = 54.0;
  xmmword_27F2416E8 = xmmword_24F9EE3F0;
  qword_27F2416F8 = v0;
  unk_27F241700 = v1;
  return result;
}

double sub_24F3AD9B0()
{
  sub_24F925A28();
  v0 = sub_24F9258E8();

  sub_24F925A08();
  v1 = sub_24F9258E8();

  result = 32.0;
  xmmword_27F241708 = xmmword_24F9EE400;
  qword_27F241718 = v0;
  unk_27F241720 = v1;
  return result;
}

uint64_t sub_24F3ADA1C()
{
  if (qword_27F2111F0 != -1)
  {
    swift_once();
  }

  xmmword_27F241728 = xmmword_27F2416E8;
  qword_27F241738 = qword_27F2416F8;
  unk_27F241740 = unk_27F241700;
}

double sub_24F3ADAA0()
{
  sub_24F925888();
  v0 = sub_24F9258E8();

  sub_24F925A08();
  v1 = sub_24F9258E8();

  result = 132.0;
  xmmword_27F241748 = xmmword_24F9EE3E0;
  qword_27F241758 = v0;
  unk_27F241760 = v1;
  return result;
}

uint64_t sub_24F3ADB0C@<X0>(unsigned __int8 a1@<W1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for CardLayoutMetrics(0);
  MEMORY[0x28223BE20](v6);
  v8 = (&v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a1 > 2u)
  {
    if (a1 == 3)
    {
      sub_24F4E9558(a2, v8);
      goto LABEL_21;
    }

    if (a1 == 4)
    {
      if (qword_27F2112F0 != -1)
      {
        swift_once();
      }

      v9 = qword_27F39E610;
    }

    else
    {
      if (qword_27F211308 != -1)
      {
        swift_once();
      }

      v9 = qword_27F39E658;
    }

LABEL_20:
    v10 = __swift_project_value_buffer(v6, v9);
    sub_24F3B115C(v10, v8, type metadata accessor for CardLayoutMetrics);
    goto LABEL_21;
  }

  if (!a1)
  {
    if (qword_27F211300 != -1)
    {
      swift_once();
    }

    v9 = qword_27F39E640;
    goto LABEL_20;
  }

  if (a1 != 1)
  {
    if (qword_27F2112F8 != -1)
    {
      swift_once();
    }

    v9 = qword_27F39E628;
    goto LABEL_20;
  }

  sub_24F4E9E44(a2, v8);
LABEL_21:
  sub_24F3B11C4(v8, a3, type metadata accessor for CardLayoutMetrics);
  result = sub_24F924978();
  *(a3 + *(v6 + 44)) = result;
  return result;
}

uint64_t sub_24F3ADD18@<X0>(void (*a1)(char *, uint64_t, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v102 = a5;
  v101 = a4;
  v135 = a6;
  v9 = a1;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214A20);
  MEMORY[0x28223BE20](v132);
  v106 = &v96 - v10;
  v105 = type metadata accessor for HeroCardGameHeadingView();
  v104 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v99 = &v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219E50);
  MEMORY[0x28223BE20](v120);
  v121 = &v96 - v12;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F241770);
  MEMORY[0x28223BE20](v115);
  v117 = &v96 - v13;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F241778);
  MEMORY[0x28223BE20](v126);
  v122 = &v96 - v14;
  v116 = type metadata accessor for CardContentBackgroundStyle(0);
  MEMORY[0x28223BE20](v116);
  v16 = &v96 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v107 = &v96 - v18;
  v109 = type metadata accessor for LeaderboardGlobeVisualView();
  MEMORY[0x28223BE20](v109);
  v98 = &v96 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F241780);
  MEMORY[0x28223BE20](v100);
  v108 = &v96 - v20;
  v21 = type metadata accessor for PlayerAvatar(0);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v96 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v96 - v25;
  v103 = type metadata accessor for CardCompactAvatarView();
  MEMORY[0x28223BE20](v103);
  v97 = &v96 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F241788);
  MEMORY[0x28223BE20](v118);
  v29 = &v96 - v28;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F241790);
  MEMORY[0x28223BE20](v128);
  v130 = &v96 - v30;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F241798);
  MEMORY[0x28223BE20](v123);
  v125 = &v96 - v31;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2417A0);
  MEMORY[0x28223BE20](v113);
  v114 = &v96 - v32;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2417A8);
  MEMORY[0x28223BE20](v124);
  v119 = &v96 - v33;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2417B0);
  MEMORY[0x28223BE20](v129);
  v127 = &v96 - v34;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2417B8);
  MEMORY[0x28223BE20](v112);
  v36 = &v96 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2417C0);
  v133 = *(v37 - 8);
  v134 = v37;
  MEMORY[0x28223BE20](v37);
  v131 = &v96 - v38;
  v110 = v29;
  if (v9 == 4)
  {
    v39 = a2;
    if (a3 >= 4u && a3 != 4)
    {

      goto LABEL_23;
    }

    v41 = sub_24F92CE08();

    if ((v41 & 1) == 0)
    {
      goto LABEL_19;
    }

LABEL_5:
    if (a3 <= 2u)
    {
      if (a3)
      {
        if (a3 == 1)
        {
          if (qword_27F2111F8 != -1)
          {
            swift_once();
          }

          v40 = &xmmword_27F241708;
        }

        else
        {
          if (qword_27F2111F0 != -1)
          {
            swift_once();
          }

          v40 = &xmmword_27F2416E8;
        }
      }

      else
      {
        if (qword_27F211200 != -1)
        {
          swift_once();
        }

        v40 = &xmmword_27F241728;
      }

      goto LABEL_35;
    }

    if (a3 == 3)
    {
      if (qword_27F2111E8 != -1)
      {
        swift_once();
      }

      v40 = &xmmword_27F2416C8;
LABEL_35:
      v46 = *v40;
      v47 = *(v40 + 1);
      v49 = *(v40 + 2);
      v48 = *(v40 + 3);

      v111 = v48;
      if (a1 > 3u)
      {
        if (a1 == 4)
        {
          v69 = type metadata accessor for LeaderboardPersonalBestCard();
          v70 = v39 + *(v69 + 32);
          v71 = (v70 + *(type metadata accessor for CommonCardAttributes(0) + 44));
          v72 = v71[1];
          v96 = v49;
          if (v72)
          {
            v73 = *v71;
            v74 = *(v69 + 48);
            v75 = sub_24F9289E8();
            v76 = v39 + v74;
            v77 = v99;
            (*(*(v75 - 8) + 16))(v99, v76, v75);
            v78 = v105;
            v79 = &v77[*(v105 + 20)];
            *v79 = v73;
            *(v79 + 1) = v72;
            v80 = v77;
            v81 = v121;
            sub_24F3B11C4(v80, v121, type metadata accessor for HeroCardGameHeadingView);
            (*(v104 + 56))(v81, 0, 1, v78);
          }

          else
          {
            v81 = v121;
            (*(v104 + 56))(v121, 1, 1, v105);
          }

          v68 = v134;
          v67 = v135;
          v93 = v130;
          v62 = v131;
          sub_24E60169C(v81, v117, &qword_27F219E50);
          swift_storeEnumTagMultiPayload();
          sub_24F3B10B4(&qword_27F214AE0, type metadata accessor for CardContentBackgroundStyle);
          sub_24E7179AC();

          v94 = v122;
          sub_24F924E28();
          sub_24E60169C(v94, v125, &qword_27F241778);
          swift_storeEnumTagMultiPayload();
          sub_24F3B0D78();
          sub_24F3B0F1C(&qword_27F2417F0, &qword_27F241778, &unk_24F9EE480, sub_24E7179AC);
          v95 = v127;
          sub_24F924E28();
          sub_24E601704(v94, &qword_27F241778);
          sub_24E60169C(v95, v93, &qword_27F2417B0);
          swift_storeEnumTagMultiPayload();
          sub_24F3B0CC0();
          sub_24F3B0FD0(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
          sub_24F924E28();

          sub_24E601704(v95, &qword_27F2417B0);
          v91 = v121;
          v92 = &qword_27F219E50;
          goto LABEL_52;
        }

        if (a1 == 11)
        {
          v57 = dword_24F9EE69C[a3];
          v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D08);
          (*(*(v58 - 8) + 56))(v16, v57, 5, v58);
          v59 = v107;
          sub_24F3B11C4(v16, v107, type metadata accessor for CardContentBackgroundStyle);
          sub_24F3B115C(v59, v117, type metadata accessor for CardContentBackgroundStyle);
          swift_storeEnumTagMultiPayload();
          sub_24F3B10B4(&qword_27F214AE0, type metadata accessor for CardContentBackgroundStyle);
          sub_24E7179AC();
          v60 = v122;
          sub_24F924E28();
          sub_24E60169C(v60, v125, &qword_27F241778);
          swift_storeEnumTagMultiPayload();
          sub_24F3B0D78();
          sub_24F3B0F1C(&qword_27F2417F0, &qword_27F241778, &unk_24F9EE480, sub_24E7179AC);
          v61 = v127;
          sub_24F924E28();
          sub_24E601704(v60, &qword_27F241778);
          sub_24E60169C(v61, v130, &qword_27F2417B0);
          swift_storeEnumTagMultiPayload();
          sub_24F3B0CC0();
          sub_24F3B0FD0(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
          v62 = v131;
          sub_24F924E28();

          sub_24E601704(v61, &qword_27F2417B0);
          sub_24F3B10FC(v59, type metadata accessor for CardContentBackgroundStyle);
LABEL_45:
          v68 = v134;
          v67 = v135;
LABEL_53:
          sub_24E6009C8(v62, v67, &qword_27F2417C0);
          return (*(v133 + 56))(v67, 0, 1, v68);
        }
      }

      else
      {
        if (a1 == 1)
        {
          *v36 = sub_24F924CA8();
          *(v36 + 1) = 0;
          v36[16] = 0;
          v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2417F8);
          sub_24F3AF5D0(v39, &v36[*(v64 + 44)]);
          sub_24E60169C(v36, v114, &qword_27F2417B8);
          swift_storeEnumTagMultiPayload();
          sub_24E602068(&qword_27F2417D8, &qword_27F2417B8);
          sub_24F3B0E30();
          v65 = v119;
          sub_24F924E28();
          sub_24E60169C(v65, v125, &qword_27F2417A8);
          swift_storeEnumTagMultiPayload();
          sub_24F3B0D78();
          sub_24F3B0F1C(&qword_27F2417F0, &qword_27F241778, &unk_24F9EE480, sub_24E7179AC);
          v66 = v127;
          sub_24F924E28();
          sub_24E601704(v65, &qword_27F2417A8);
          sub_24E60169C(v66, v130, &qword_27F2417B0);
          swift_storeEnumTagMultiPayload();
          sub_24F3B0CC0();
          sub_24F3B0FD0(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
          v62 = v131;
          sub_24F924E28();

          sub_24E601704(v66, &qword_27F2417B0);
          sub_24E601704(v36, &qword_27F2417B8);
          goto LABEL_45;
        }

        if (a1 == 2)
        {
          v96 = v49;
          if (a3 == 1)
          {
            v50 = type metadata accessor for LeaderboardPersonalBestCard();
            sub_24F3B115C(v39 + *(v50 + 52), v26, type metadata accessor for PlayerAvatar);
            v51 = v97;
            v52 = &v97[*(v103 + 20)];
            type metadata accessor for CardSafeArea(0);
            sub_24F3B10B4(&qword_27F214D10, type metadata accessor for CardSafeArea);
            *v52 = sub_24F923598();
            v52[8] = v53 & 1;
            sub_24F3B115C(v26, v23, type metadata accessor for PlayerAvatar);
            v136 = 7;
            sub_24F8319B8(v23, &v136, v51);
            sub_24F3B10FC(v26, type metadata accessor for PlayerAvatar);
            sub_24F3B115C(v51, v108, type metadata accessor for CardCompactAvatarView);
            swift_storeEnumTagMultiPayload();
            sub_24F3B10B4(&qword_27F219ED8, type metadata accessor for CardCompactAvatarView);
            sub_24F3B10B4(&qword_27F2417E8, type metadata accessor for LeaderboardGlobeVisualView);
            v54 = v110;
            sub_24F924E28();
            v55 = type metadata accessor for CardCompactAvatarView;
            v56 = v51;
          }

          else
          {
            v82 = v39;
            v83 = v98;
            sub_24F3B115C(v82, v98, type metadata accessor for LeaderboardPersonalBestCard);
            v84 = v109;
            v85 = (v83 + *(v109 + 20));
            *v85 = v46;
            v85[1] = v47;
            v86 = v111;
            v85[2] = v49;
            v85[3] = v86;
            *(v83 + *(v84 + 24)) = a3;
            v87 = v83 + *(v84 + 28);
            type metadata accessor for CardSafeArea(0);
            sub_24F3B10B4(&qword_27F214D10, type metadata accessor for CardSafeArea);

            *v87 = sub_24F923598();
            *(v87 + 8) = v88 & 1;
            sub_24F3B115C(v83, v108, type metadata accessor for LeaderboardGlobeVisualView);
            swift_storeEnumTagMultiPayload();
            sub_24F3B10B4(&qword_27F219ED8, type metadata accessor for CardCompactAvatarView);
            sub_24F3B10B4(&qword_27F2417E8, type metadata accessor for LeaderboardGlobeVisualView);
            v54 = v110;
            sub_24F924E28();
            v55 = type metadata accessor for LeaderboardGlobeVisualView;
            v56 = v83;
          }

          sub_24F3B10FC(v56, v55);
          v68 = v134;
          v67 = v135;
          v62 = v131;
          sub_24E60169C(v54, v114, &qword_27F241788);
          swift_storeEnumTagMultiPayload();
          sub_24E602068(&qword_27F2417D8, &qword_27F2417B8);
          sub_24F3B0E30();
          v89 = v119;
          sub_24F924E28();
          sub_24E60169C(v89, v125, &qword_27F2417A8);
          swift_storeEnumTagMultiPayload();
          sub_24F3B0D78();
          sub_24F3B0F1C(&qword_27F2417F0, &qword_27F241778, &unk_24F9EE480, sub_24E7179AC);
          v90 = v127;
          sub_24F924E28();
          sub_24E601704(v89, &qword_27F2417A8);
          sub_24E60169C(v90, v130, &qword_27F2417B0);
          swift_storeEnumTagMultiPayload();
          sub_24F3B0CC0();
          sub_24F3B0FD0(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
          sub_24F924E28();

          sub_24E601704(v90, &qword_27F2417B0);
          v91 = v54;
          v92 = &qword_27F241788;
LABEL_52:
          sub_24E601704(v91, v92);
          goto LABEL_53;
        }
      }

      v63 = v106;
      sub_24E923A38(a1, v39, a3, v101, v102, v106);
      sub_24F3B0C50(v63, v130);
      swift_storeEnumTagMultiPayload();
      sub_24F3B0CC0();
      sub_24F3B0FD0(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
      v62 = v131;
      sub_24F924E28();

      sub_24F3B104C(v63);
      goto LABEL_45;
    }

    if (a3 == 4)
    {
      if (qword_27F2111E0 != -1)
      {
        swift_once();
      }

      v40 = &xmmword_27F2416A8;
      goto LABEL_35;
    }

LABEL_23:
    if (qword_27F211208 != -1)
    {
      swift_once();
    }

    v40 = &xmmword_27F241748;
    goto LABEL_35;
  }

  v39 = a2;
  if (sub_24E92D030(a1, a2, a3))
  {
    goto LABEL_5;
  }

LABEL_19:
  v42 = v134;
  v43 = *(v133 + 56);
  v44 = v135;

  return v43(v44, 1, 1, v42);
}

uint64_t sub_24F3AF5D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a1;
  v62 = a2;
  v2 = sub_24F924A78();
  MEMORY[0x28223BE20](v2 - 8);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214BA8);
  MEMORY[0x28223BE20](v63);
  v61 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v60 = &v52 - v5;
  MEMORY[0x28223BE20](v6);
  v59 = &v52 - v7;
  MEMORY[0x28223BE20](v8);
  v58 = &v52 - v9;
  if (qword_27F211700 != -1)
  {
    swift_once();
  }

  v64 = qword_27F39EEC8;
  v65 = unk_27F39EED0;
  sub_24E600AEC();

  v10 = sub_24F925E18();
  v12 = v11;
  v14 = v13;
  sub_24F925A08();
  sub_24F9258E8();

  v15 = sub_24F925C98();
  v17 = v16;
  v19 = v18;

  sub_24E600B40(v10, v12, v14 & 1);

  LODWORD(v64) = sub_24F9251B8();
  v20 = sub_24F925C58();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  sub_24E600B40(v15, v17, v19 & 1);

  v27 = *(v63 + 36);
  v55 = *MEMORY[0x277CE13B8];
  v28 = v55;
  v54 = sub_24F927748();
  v29 = *(v54 - 8);
  v53 = *(v29 + 104);
  v56 = v29 + 104;
  v30 = v58;
  v53(&v58[v27], v28, v54);
  *v30 = v20;
  *(v30 + 8) = v22;
  *(v30 + 16) = v24 & 1;
  *(v30 + 24) = v26;
  sub_24F924A68();
  sub_24F924A58();
  v64 = *(v57 + *(type metadata accessor for LeaderboardPersonalBestCard() + 44));
  sub_24F924A08();
  sub_24F924A58();
  sub_24F924A98();
  v31 = sub_24F925DE8();
  v33 = v32;
  LOBYTE(v20) = v34;
  sub_24F925A08();
  sub_24F9258E8();

  v35 = sub_24F925C98();
  v37 = v36;
  v39 = v38;

  sub_24E600B40(v31, v33, v20 & 1);

  LODWORD(v64) = sub_24F9251C8();
  v40 = sub_24F925C58();
  v42 = v41;
  LOBYTE(v20) = v43;
  v45 = v44;
  sub_24E600B40(v35, v37, v39 & 1);

  v46 = v59;
  v53(&v59[*(v63 + 36)], v55, v54);
  *v46 = v40;
  *(v46 + 8) = v42;
  *(v46 + 16) = v20 & 1;
  *(v46 + 24) = v45;
  v47 = v60;
  sub_24E60169C(v30, v60, &qword_27F214BA8);
  v48 = v61;
  sub_24E60169C(v46, v61, &qword_27F214BA8);
  v49 = v62;
  sub_24E60169C(v47, v62, &qword_27F214BA8);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F241800);
  sub_24E60169C(v48, v49 + *(v50 + 48), &qword_27F214BA8);
  sub_24E601704(v46, &qword_27F214BA8);
  sub_24E601704(v30, &qword_27F214BA8);
  sub_24E601704(v48, &qword_27F214BA8);
  return sub_24E601704(v47, &qword_27F214BA8);
}

uint64_t sub_24F3AFB30@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  *&v54 = sub_24F924848();
  *&v53 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v5 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F241830);
  MEMORY[0x28223BE20](v55);
  v7 = &v53 - v6;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F241838);
  MEMORY[0x28223BE20](v56);
  v9 = &v53 - v8;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F241840);
  MEMORY[0x28223BE20](v57);
  v59 = &v53 - v10;
  v11 = type metadata accessor for LeaderboardGlobeVisualView();
  v12 = *(v1 + *(v11 + 20) + 8);
  *v7 = sub_24F9249A8();
  *(v7 + 1) = v12;
  v7[16] = 0;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F241848);
  sub_24F3B0208(v2, &v7[*(v13 + 44)]);
  v14 = sub_24F9257F8();
  sub_24F923318();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F241850) + 36)];
  *v23 = v14;
  *(v23 + 1) = v16;
  *(v23 + 2) = v18;
  *(v23 + 3) = v20;
  *(v23 + 4) = v22;
  v23[40] = 0;
  v58 = v11;
  v24 = v2 + *(v11 + 28);
  v25 = *v24;
  LOBYTE(v12) = *(v24 + 8);

  if ((v12 & 1) == 0)
  {
    sub_24F92BDC8();
    v26 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();

    (*(v53 + 8))(v5, v54);
    v25 = v73;
  }

  swift_getKeyPath();
  *&v73 = v25;
  sub_24F3B10B4(&qword_27F214D10, type metadata accessor for CardSafeArea);
  sub_24F91FD88();

  v27 = *(v25 + 16);
  v53 = *(v25 + 32);
  v54 = v27;

  v28 = sub_24F925808();
  v29 = &v7[*(v55 + 36)];
  *v29 = v28;
  v30 = v54;
  *(v29 + 24) = v53;
  *(v29 + 8) = v30;
  v29[40] = 0;
  sub_24F927618();
  sub_24F9242E8();
  sub_24E6009C8(v7, v9, &qword_27F241830);
  v31 = &v9[*(v56 + 36)];
  v32 = v78;
  *(v31 + 4) = v77;
  *(v31 + 5) = v32;
  *(v31 + 6) = v79;
  v33 = v74;
  *v31 = v73;
  *(v31 + 1) = v33;
  v34 = v76;
  *(v31 + 2) = v75;
  *(v31 + 3) = v34;
  v35 = sub_24F927618();
  v37 = v36;
  sub_24F3B09FC(v2, &v61);
  v65 = v61;
  v66 = v62;
  v67 = v63;
  v68 = v64;
  *&v69 = v35;
  *(&v69 + 1) = v37;
  v38 = v9;
  v39 = v59;
  sub_24E6009C8(v38, v59, &qword_27F241838);
  v40 = (v39 + *(v57 + 36));
  v41 = v66;
  v42 = v68;
  v43 = v69;
  v40[2] = v67;
  v40[3] = v42;
  v40[4] = v43;
  v44 = v64;
  *v40 = v65;
  v40[1] = v41;
  v70[2] = v63;
  v70[3] = v44;
  v70[0] = v61;
  v70[1] = v62;
  v71 = v35;
  v72 = v37;
  sub_24E60169C(&v65, &v60, &qword_27F241858);
  sub_24E601704(v70, &qword_27F241858);
  if (*(v2 + *(v58 + 24)) == 4)
  {
  }

  else
  {
    v45 = sub_24F92CE08();

    if ((v45 & 1) == 0)
    {
LABEL_9:
      v49 = sub_24F925848();
      goto LABEL_10;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217E08);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A400;
  v47 = sub_24F925818();
  *(inited + 32) = v47;
  v48 = sub_24F925828();
  *(inited + 33) = v48;
  v49 = sub_24F925848();
  sub_24F925848();
  if (sub_24F925848() != v47)
  {
    v49 = sub_24F925848();
  }

  sub_24F925848();
  if (sub_24F925848() != v48)
  {
    goto LABEL_9;
  }

LABEL_10:
  v50 = sub_24F924058();
  sub_24E6009C8(v39, a1, &qword_27F241840);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F241860);
  v52 = a1 + *(result + 36);
  *v52 = v50;
  *(v52 + 8) = v49;
  return result;
}

uint64_t sub_24F3B0208@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v39 = a1;
  v43 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F241868);
  MEMORY[0x28223BE20](v2 - 8);
  v42 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v37 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214698);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v37 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F241870);
  MEMORY[0x28223BE20](v10);
  v12 = (&v37 - v11);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F241878);
  v13 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v40 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v44 = &v37 - v16;
  v38 = sub_24F926DF8();
  type metadata accessor for LeaderboardGlobeVisualView();
  v17 = sub_24F925908();
  (*(*(v17 - 8) + 56))(v9, 1, 1, v17);
  v18 = sub_24F925968();
  sub_24E601704(v9, &qword_27F214698);
  KeyPath = swift_getKeyPath();
  _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  v20 = sub_24F926D08();

  v21 = swift_getKeyPath();
  v22 = *(v10 + 36);
  v23 = *MEMORY[0x277CE13B8];
  v24 = sub_24F927748();
  (*(*(v24 - 8) + 104))(v12 + v22, v23, v24);
  *v12 = v38;
  v12[1] = KeyPath;
  v12[2] = v18;
  v12[3] = v21;
  v12[4] = v20;
  sub_24F3B15AC();
  v25 = v44;
  sub_24F926158();
  sub_24E601704(v12, &qword_27F241870);
  v26 = v6;
  *v6 = sub_24F924C98();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F241898);
  sub_24F3B06A8(v39, &v6[*(v27 + 44)]);
  v28 = v13;
  v29 = *(v13 + 16);
  v31 = v40;
  v30 = v41;
  v29(v40, v25, v41);
  v32 = v42;
  sub_24E60169C(v26, v42, &qword_27F241868);
  v33 = v43;
  v29(v43, v31, v30);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2418A0);
  sub_24E60169C(v32, &v33[*(v34 + 48)], &qword_27F241868);
  sub_24E601704(v26, &qword_27F241868);
  v35 = *(v28 + 8);
  v35(v44, v30);
  sub_24E601704(v32, &qword_27F241868);
  return (v35)(v31, v30);
}

uint64_t sub_24F3B06A8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v53 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214BA8);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v52 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v47 - v7;
  v9 = type metadata accessor for LeaderboardPersonalBestCard();
  v10 = (a1 + *(v9 + 36));
  v11 = v10[1];
  v54 = *v10;
  v55 = v11;
  sub_24E600AEC();

  v12 = sub_24F925E18();
  v14 = v13;
  v16 = v15;
  type metadata accessor for LeaderboardGlobeVisualView();
  v17 = sub_24F925C98();
  v48 = v18;
  v49 = v17;
  v50 = v19;
  v51 = v20;
  sub_24E600B40(v12, v14, v16 & 1);

  v21 = (a1 + *(v9 + 40));
  v22 = v21[1];
  v54 = *v21;
  v55 = v22;

  v23 = sub_24F925E18();
  v25 = v24;
  LOBYTE(v12) = v26;
  v27 = sub_24F925C98();
  v29 = v28;
  LOBYTE(v9) = v30;
  sub_24E600B40(v23, v25, v12 & 1);

  LODWORD(v54) = sub_24F9251C8();
  v31 = sub_24F925C58();
  v33 = v32;
  LOBYTE(v12) = v34;
  v36 = v35;
  sub_24E600B40(v27, v29, v9 & 1);

  v37 = *(v4 + 44);
  v38 = *MEMORY[0x277CE13B8];
  v39 = sub_24F927748();
  (*(*(v39 - 8) + 104))(&v8[v37], v38, v39);
  *v8 = v31;
  *(v8 + 1) = v33;
  v8[16] = v12 & 1;
  *(v8 + 3) = v36;
  v40 = v52;
  sub_24E60169C(v8, v52, &qword_27F214BA8);
  v41 = v53;
  v43 = v48;
  v42 = v49;
  *v53 = v49;
  v41[1] = v43;
  LOBYTE(v31) = v50 & 1;
  *(v41 + 16) = v50 & 1;
  v41[3] = v51;
  v44 = v41;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2418A8);
  sub_24E60169C(v40, v44 + *(v45 + 48), &qword_27F214BA8);
  sub_24E5FD138(v42, v43, v31);

  sub_24E601704(v8, &qword_27F214BA8);
  sub_24E601704(v40, &qword_27F214BA8);
  sub_24E600B40(v42, v43, v31);
}

__n128 sub_24F3B09FC@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + *(type metadata accessor for LeaderboardGlobeVisualView() + 24)) == 4)
  {
    if (qword_27F20FFA0 != -1)
    {
      swift_once();
    }

    sub_24E86BC28();
  }

  else
  {
    sub_24F926C98();
    sub_24E86BC28();
  }

  sub_24F924E28();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217E08);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A400;
  v4 = sub_24F925818();
  *(inited + 32) = v4;
  v5 = sub_24F925828();
  *(inited + 33) = v5;
  v6 = sub_24F925848();
  sub_24F925848();
  if (sub_24F925848() != v4)
  {
    v6 = sub_24F925848();
  }

  sub_24F925848();
  if (sub_24F925848() != v5)
  {
    v6 = sub_24F925848();
  }

  v7 = sub_24F924058();
  result = v9;
  *a2 = v9;
  *(a2 + 16) = v10;
  *(a2 + 32) = v11;
  *(a2 + 40) = v12;
  *(a2 + 48) = v7;
  *(a2 + 56) = v6;
  return result;
}

uint64_t type metadata accessor for LeaderboardGlobeVisualView()
{
  result = qword_27F241808;
  if (!qword_27F241808)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F3B0C50(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214A20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24F3B0CC0()
{
  result = qword_27F2417C8;
  if (!qword_27F2417C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2417B0);
    sub_24F3B0D78();
    sub_24F3B0F1C(&qword_27F2417F0, &qword_27F241778, &unk_24F9EE480, sub_24E7179AC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2417C8);
  }

  return result;
}

unint64_t sub_24F3B0D78()
{
  result = qword_27F2417D0;
  if (!qword_27F2417D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2417A8);
    sub_24E602068(&qword_27F2417D8, &qword_27F2417B8);
    sub_24F3B0E30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2417D0);
  }

  return result;
}

unint64_t sub_24F3B0E30()
{
  result = qword_27F2417E0;
  if (!qword_27F2417E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F241788);
    sub_24F3B10B4(&qword_27F219ED8, type metadata accessor for CardCompactAvatarView);
    sub_24F3B10B4(&qword_27F2417E8, type metadata accessor for LeaderboardGlobeVisualView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2417E0);
  }

  return result;
}

uint64_t sub_24F3B0F1C(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    sub_24F3B10B4(&qword_27F214AE0, type metadata accessor for CardContentBackgroundStyle);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24F3B0FD0(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

uint64_t sub_24F3B104C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214A20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24F3B10B4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24F3B10FC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F3B115C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F3B11C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F3B1240(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for LeaderboardPersonalBestCard();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 16);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24F3B1314(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for LeaderboardPersonalBestCard();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 16) = (a2 - 1);
  }

  return result;
}

void sub_24F3B13D0()
{
  type metadata accessor for LeaderboardPersonalBestCard();
  if (v0 <= 0x3F)
  {
    sub_24E7268F0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_24F3B14C0()
{
  result = qword_27F241828;
  if (!qword_27F241828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2417C0);
    sub_24F3B0CC0();
    sub_24F3B0FD0(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F241828);
  }

  return result;
}

unint64_t sub_24F3B15AC()
{
  result = qword_27F241880;
  if (!qword_27F241880)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F241870);
    sub_24F3B1638();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F241880);
  }

  return result;
}

unint64_t sub_24F3B1638()
{
  result = qword_27F241888;
  if (!qword_27F241888)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F241890);
    sub_24E60156C();
    sub_24E602068(&unk_27F2554A0, &qword_27F212B20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F241888);
  }

  return result;
}

unint64_t sub_24F3B16F4()
{
  result = qword_27F2418B0;
  if (!qword_27F2418B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F241860);
    sub_24F3B1780();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2418B0);
  }

  return result;
}

unint64_t sub_24F3B1780()
{
  result = qword_27F2418B8;
  if (!qword_27F2418B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F241840);
    sub_24F3B1838();
    sub_24E602068(&qword_27F2418E8, &qword_27F241858);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2418B8);
  }

  return result;
}

unint64_t sub_24F3B1838()
{
  result = qword_27F2418C0;
  if (!qword_27F2418C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F241838);
    sub_24F3B18C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2418C0);
  }

  return result;
}

unint64_t sub_24F3B18C4()
{
  result = qword_27F2418C8;
  if (!qword_27F2418C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F241830);
    sub_24F3B1950();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2418C8);
  }

  return result;
}

unint64_t sub_24F3B1950()
{
  result = qword_27F2418D0;
  if (!qword_27F2418D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F241850);
    sub_24E602068(&qword_27F2418D8, &qword_27F2418E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2418D0);
  }

  return result;
}

uint64_t sub_24F3B1A2C(uint64_t a1, uint64_t a2, uint64_t a3)
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

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_24F3B1B7C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t type metadata accessor for SearchAppStoreButton()
{
  result = qword_27F2418F0;
  if (!qword_27F2418F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F3B1D04()
{
  sub_24E61C7D0();
  if (v0 <= 0x3F)
  {
    sub_24E65B038(319, &qword_27F213EA0, &qword_27F213EA8);
    if (v1 <= 0x3F)
    {
      sub_24E65B038(319, &qword_27F215458, &qword_27F215460);
      if (v2 <= 0x3F)
      {
        sub_24E61C938();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_24F3B1DE8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2419A0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F3B3720();
  sub_24F92D128();
  v8[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18);
  sub_24E602068(&qword_27F214040, &qword_27F213F18);
  sub_24F92CD48();
  if (!v1)
  {
    v8[14] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90);
    sub_24E620EE4(&qword_27F214048, &qword_27F214050);
    sub_24F92CD48();
    type metadata accessor for SearchAppStoreButton();
    v8[13] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
    sub_24E65CD0C();
    sub_24F92CD48();
    v8[12] = 3;
    sub_24F929608();
    sub_24F3B3834(&qword_27F214058, MEMORY[0x277D21F70]);
    sub_24F92CCF8();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_24F3B20C8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v3 - 8);
  v32 = &v31 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  MEMORY[0x28223BE20](v5);
  v7 = &v31 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F241990);
  v33 = *(v8 - 8);
  v34 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v31 - v9;
  v11 = type metadata accessor for SearchAppStoreButton();
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v14 + 40) = 0u;
  v43 = 0;
  v41 = 0u;
  v42 = 0u;
  *(v14 + 56) = 0u;
  *(v14 + 9) = 0;
  v40 = v14 + 40;
  sub_24E61DA68(&v41, (v14 + 40), qword_27F21B590);
  v15 = *(v12 + 32);
  v16 = sub_24F92A6D8();
  v17 = *(*(v16 - 8) + 56);
  v38 = v15;
  v17(&v14[v15], 1, 1, v16);
  v18 = *(v12 + 36);
  v19 = sub_24F929608();
  v20 = *(*(v19 - 8) + 56);
  v37 = v18;
  v20(&v14[v18], 1, 1, v19);
  v21 = a1[3];
  v39 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_24F3B3720();
  v35 = v10;
  v22 = v36;
  sub_24F92D108();
  if (v22)
  {
    v24 = v38;
    __swift_destroy_boxed_opaque_existential_1(v39);
    sub_24E601704(v40, qword_27F24EC90);
    sub_24E601704(&v14[v24], &qword_27F215440);
    return sub_24E601704(&v14[v37], &qword_27F213E68);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18);
    v44 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18);
    v23 = v34;
    sub_24F92CC68();
    v25 = v42;
    *v14 = v41;
    *(v14 + 1) = v25;
    *(v14 + 4) = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90);
    v44 = 1;
    sub_24E620EE4(&qword_27F213F38, &qword_27F213F40);
    sub_24F92CC68();
    v26 = v38;
    v27 = v33;
    sub_24E61DA68(&v41, v40, qword_27F24EC90);
    LOBYTE(v41) = 2;
    sub_24E65CAA0();
    sub_24F92CC68();
    sub_24E61DA68(v7, &v14[v26], &qword_27F215440);
    LOBYTE(v41) = 3;
    sub_24F3B3834(&qword_27F213F48, MEMORY[0x277D21F70]);
    v28 = v32;
    v29 = v35;
    sub_24F92CC18();
    (*(v27 + 8))(v29, v23);
    sub_24E61DA68(v28, &v14[v37], &qword_27F213E68);
    sub_24F3B3774(v14, v31);
    __swift_destroy_boxed_opaque_existential_1(v39);
    return sub_24F3B37D8(v14);
  }
}

unint64_t sub_24F3B2690()
{
  v1 = 25705;
  v2 = 0x4D747865746E6F63;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0)
  {
    v1 = 0x6575676573;
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

uint64_t sub_24F3B2708@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24F3B3C20(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24F3B2730(uint64_t a1)
{
  v2 = sub_24F3B3720();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F3B276C(uint64_t a1)
{
  v2 = sub_24F3B3720();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F3B27A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v9 - v6;
  sub_24E60169C(v2 + *(a1 + 24), &v9 - v6, &qword_27F215440);
  return sub_24E68039C(v7, a2);
}

unint64_t sub_24F3B28D8()
{
  result = qword_27F241900;
  if (!qword_27F241900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F241900);
  }

  return result;
}

double sub_24F3B292C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a2;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F241918);
  MEMORY[0x28223BE20](v64);
  v4 = &v60 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F241920);
  MEMORY[0x28223BE20](v5);
  v7 = &v60 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F241928);
  v69 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v60 - v9;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F241930);
  MEMORY[0x28223BE20](v66);
  v12 = &v60 - v11;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F241938);
  MEMORY[0x28223BE20](v65);
  v67 = &v60 - v13;
  *v7 = sub_24F9249A8();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F241940);
  sub_24F3B2FAC(&v7[*(v14 + 44)]);
  v15 = sub_24F925868();
  v16 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F241948) + 36)];
  *v16 = v15;
  *(v16 + 8) = 0u;
  *(v16 + 24) = 0u;
  v16[40] = 1;
  v17 = sub_24F9257F8();
  sub_24F923318();
  v18 = &v7[*(v5 + 36)];
  *v18 = v17;
  *(v18 + 1) = v19;
  *(v18 + 2) = v20;
  *(v18 + 3) = v21;
  *(v18 + 4) = v22;
  v18[40] = 0;
  sub_24E60169C(a1 + 40, v70, qword_27F24EC90);
  sub_24E601704(v70, qword_27F21B590);
  if (qword_27F211830 != -1)
  {
    swift_once();
  }

  v23 = sub_24F9248C8();
  __swift_project_value_buffer(v23, qword_27F39F078);
  sub_24F3B3554();
  _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
  sub_24E601704(v7, &qword_27F241920);
  v63 = sub_24F924258();
  v24 = *(v63 + 20);
  v25 = *MEMORY[0x277CE0118];
  v26 = sub_24F924B38();
  v27 = *(*(v26 - 8) + 104);
  v62 = v25;
  v61 = v27;
  v27(&v4[v24], v25, v26);
  __asm { FMOV            V0.2D, #12.0 }

  v60 = _Q0;
  *v4 = _Q0;
  _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  v33 = sub_24F926D08();

  *&v4[*(v64 + 52)] = v33;
  sub_24F3B3698(v4, v12);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F241970);
  (*(v69 + 16))(&v12[v34[9]], v10, v8);
  v35 = &v12[v34[10]];
  *v35 = sub_24F923398() & 1;
  *(v35 + 1) = v36;
  v35[16] = v37 & 1;
  v38 = &v12[v34[11]];
  *v38 = swift_getKeyPath();
  v38[8] = 0;
  v39 = v8;
  if (qword_27F211808 != -1)
  {
    swift_once();
  }

  v40 = qword_27F24E488;
  v41 = sub_24F923398();
  v43 = v42;
  v45 = v44;
  v46 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F241978) + 36)];
  *v46 = v40;
  v46[8] = v41 & 1;
  *(v46 + 2) = v43;
  v46[24] = v45 & 1;
  v47 = sub_24F923398();
  v49 = v48;
  LOBYTE(v40) = v50;
  sub_24E601704(v4, &qword_27F241918);
  (*(v69 + 8))(v10, v39);
  v51 = &v12[*(v66 + 36)];
  *v51 = v47 & 1;
  *(v51 + 1) = v49;
  v51[16] = v40 & 1;
  v52 = v67;
  v53 = &v67[*(v65 + 36)];
  sub_24F927438();
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FC48);
  v55 = &v53[*(v54 + 52)];
  v61(&v55[*(v63 + 20)], v62, v26);
  *v55 = v60;
  *&v53[*(v54 + 56)] = 256;
  sub_24E6009C8(v12, v52, &qword_27F241930);
  sub_24F927618();
  sub_24F9238C8();
  v56 = v68;
  sub_24E6009C8(v52, v68, &qword_27F241938);
  v57 = (v56 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F241980) + 36));
  v58 = v70[1];
  *v57 = v70[0];
  v57[1] = v58;
  result = *&v71;
  v57[2] = v71;
  return result;
}

uint64_t sub_24F3B2FAC@<X0>(uint64_t a1@<X8>)
{
  v39 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2128D0);
  v37 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v36 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234CE0);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v38 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = (&v36 - v11);
  v13 = sub_24F926E48();
  v14 = sub_24F925888();
  KeyPath = swift_getKeyPath();
  v16 = (v12 + *(v8 + 44));
  v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2365A0) + 28);
  sub_24F924CE8();
  v18 = sub_24F924D08();
  (*(*(v18 - 8) + 56))(v16 + v17, 0, 1, v18);
  *v16 = swift_getKeyPath();
  *v12 = v13;
  v12[1] = KeyPath;
  v12[2] = v14;
  if (qword_27F211710 != -1)
  {
    swift_once();
  }

  v40 = qword_27F39EEE8;
  v41 = unk_27F39EEF0;
  sub_24E600AEC();

  v19 = sub_24F925E18();
  v21 = v20;
  v40 = v19;
  v41 = v20;
  v23 = v22 & 1;
  v42 = v22 & 1;
  v43 = v24;
  sub_24F9268B8();
  sub_24E600B40(v19, v21, v23);

  v25 = sub_24F926DF8();
  v36 = v12;
  v26 = v12;
  v27 = v38;
  sub_24E60169C(v26, v38, &qword_27F234CE0);
  v28 = v37;
  v29 = v6;
  v30 = *(v37 + 16);
  v30(v3, v29, v1);
  v31 = v3;
  v32 = v39;
  sub_24E60169C(v27, v39, &qword_27F234CE0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F241988);
  v30((v32 + *(v33 + 48)), v31, v1);
  *(v32 + *(v33 + 64)) = v25;
  v34 = *(v28 + 8);

  v34(v29, v1);
  sub_24E601704(v36, &qword_27F234CE0);

  v34(v31, v1);
  return sub_24E601704(v27, &qword_27F234CE0);
}

uint64_t sub_24F3B33C4()
{
  sub_24F3B28D8();

  return sub_24F9218E8();
}

unint64_t sub_24F3B3454()
{
  result = qword_27F241910;
  if (!qword_27F241910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F241910);
  }

  return result;
}

unint64_t sub_24F3B3554()
{
  result = qword_27F241950;
  if (!qword_27F241950)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F241920);
    sub_24F3B35E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F241950);
  }

  return result;
}

unint64_t sub_24F3B35E0()
{
  result = qword_27F241958;
  if (!qword_27F241958)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F241948);
    sub_24E602068(&qword_27F241960, &qword_27F241968);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F241958);
  }

  return result;
}

uint64_t sub_24F3B3698(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F241918);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24F3B3720()
{
  result = qword_27F241998;
  if (!qword_27F241998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F241998);
  }

  return result;
}

uint64_t sub_24F3B3774(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchAppStoreButton();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F3B37D8(uint64_t a1)
{
  v2 = type metadata accessor for SearchAppStoreButton();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24F3B3834(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24F3B3890()
{
  result = qword_27F2419A8;
  if (!qword_27F2419A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F241980);
    sub_24F3B391C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2419A8);
  }

  return result;
}

unint64_t sub_24F3B391C()
{
  result = qword_27F2419B0;
  if (!qword_27F2419B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F241938);
    sub_24F3B39D4();
    sub_24E602068(&qword_27F2419D0, &qword_27F21FC48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2419B0);
  }

  return result;
}

unint64_t sub_24F3B39D4()
{
  result = qword_27F2419B8;
  if (!qword_27F2419B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F241930);
    sub_24F3B3A60();
    sub_24E600F3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2419B8);
  }

  return result;
}

unint64_t sub_24F3B3A60()
{
  result = qword_27F2419C0;
  if (!qword_27F2419C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F241978);
    sub_24E602068(&qword_27F2419C8, &qword_27F241970);
    sub_24E600EE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2419C0);
  }

  return result;
}

unint64_t sub_24F3B3B1C()
{
  result = qword_27F2419D8;
  if (!qword_27F2419D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2419D8);
  }

  return result;
}

unint64_t sub_24F3B3B74()
{
  result = qword_27F2419E0;
  if (!qword_27F2419E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2419E0);
  }

  return result;
}

unint64_t sub_24F3B3BCC()
{
  result = qword_27F2419E8[0];
  if (!qword_27F2419E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F2419E8);
  }

  return result;
}

uint64_t sub_24F3B3C20(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4D747865746E6F63 && a2 == 0xEB00000000756E65 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA451D0 == a2)
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

uint64_t sub_24F3B3D84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v18 - v7;
  v9 = type metadata accessor for AcceptChallengeAction();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  sub_24F39E66C(a1, &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  sub_24F3B51C8(&v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
  *(v13 + ((v11 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510);

  v14 = sub_24F92A9E8();
  v15 = sub_24F92B858();
  (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_24F9EEB18;
  v16[5] = v13;
  v16[6] = v14;

  sub_24E6959D8(0, 0, v8, &unk_24F94D7B0, v16);

  return v14;
}

uint64_t sub_24F3B3FC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[14] = a3;
  v4[15] = a4;
  v4[12] = a1;
  v4[13] = a2;
  return MEMORY[0x2822009F8](sub_24F3B3FE8, 0, 0);
}

uint64_t sub_24F3B3FE8()
{
  v1 = v0[13];
  v2 = *v1;
  v0[16] = *v1;
  v3 = v1[1];
  v0[17] = v3;
  v4 = v1[9];
  v5 = v1[10];
  v6 = swift_task_alloc();
  v0[18] = v6;
  *v6 = v0;
  v6[1] = sub_24F3B40A8;
  v7 = v0[14];

  return sub_24F3B5390(v2, v3, v4, v5, v7);
}

uint64_t sub_24F3B40A8()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    v2[22] = v0;
    v4 = swift_task_alloc();
    v2[23] = v4;
    *v4 = v3;
    v4[1] = sub_24F3B4684;
    v5 = v2[14];
    v6 = v2[15];
    v7 = v2[12];
    v8 = v2[13];

    return sub_24F3B490C(v7, v5, v0, v8, v6);
  }

  else
  {

    return MEMORY[0x2822009F8](sub_24F3B422C, 0, 0);
  }
}

uint64_t sub_24F3B422C()
{
  v1 = v0[13];
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v4 = swift_task_alloc();
  v0[19] = v4;
  *v4 = v0;
  v4[1] = sub_24F3B42D4;
  v5 = v0[16];
  v6 = v0[17];
  v7 = v0[14];

  return sub_24F3B6B68(v7, v5, v6, v3, v2);
}

uint64_t sub_24F3B42D4()
{

  return MEMORY[0x2822009F8](sub_24F3B43D0, 0, 0);
}

uint64_t sub_24F3B43D0()
{
  sub_24E60169C(*(v0 + 104) + 168, v0 + 56, &qword_27F213EA8);
  if (*(v0 + 80))
  {
    sub_24E612C80((v0 + 56), v0 + 16);
    v1 = swift_task_alloc();
    *(v0 + 160) = v1;
    v2 = type metadata accessor for AcceptChallengeActionImplementation();
    WitnessTable = swift_getWitnessTable();
    *v1 = v0;
    v1[1] = sub_24F3B4570;
    v4 = *(v0 + 112);
    v5 = *(v0 + 96);

    return sub_24F1487B0(v5, v0 + 16, v4, v2, WitnessTable);
  }

  else
  {
    v7 = *(v0 + 96);
    sub_24E601704(v0 + 56, qword_27F21B590);
    v8 = *MEMORY[0x277D21CA8];
    v9 = sub_24F928AE8();
    (*(*(v9 - 8) + 104))(v7, v8, v9);
    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_24F3B4570()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_24F3B47FC;
  }

  else
  {
    v2 = sub_24E646B90;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F3B4684()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_24F3B48A8;
  }

  else
  {
    v2 = sub_24F3B4798;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F3B4798()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F3B47FC()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  v1 = v0[21];
  v0[22] = v1;
  v2 = swift_task_alloc();
  v0[23] = v2;
  *v2 = v0;
  v2[1] = sub_24F3B4684;
  v3 = v0[14];
  v4 = v0[15];
  v5 = v0[12];
  v6 = v0[13];

  return sub_24F3B490C(v5, v3, v1, v6, v4);
}

uint64_t sub_24F3B48A8()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F3B490C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[47] = a4;
  v5[48] = a5;
  v5[45] = a2;
  v5[46] = a3;
  v5[44] = a1;
  return MEMORY[0x2822009F8](sub_24F3B4934, 0, 0);
}

uint64_t sub_24F3B4934()
{
  swift_getErrorValue();
  v1 = sub_24F92CFE8();
  v3 = v2;
  *(v0 + 280) = v1;
  *(v0 + 288) = v2;
  *(v0 + 296) = 875639093;
  *(v0 + 304) = 0xE400000000000000;
  sub_24E600AEC();
  if (sub_24F92C5F8())
  {
    v4 = *(v0 + 376);

    sub_24E60169C(v4 + 88, v0 + 216, &qword_27F2169E8);
    sub_24E612C80((v0 + 216), v0 + 176);
    v5 = swift_task_alloc();
    *(v0 + 392) = v5;
    v6 = type metadata accessor for AcceptChallengeActionImplementation();
    WitnessTable = swift_getWitnessTable();
    *v5 = v0;
    v5[1] = sub_24F3B4C2C;
    v8 = *(v0 + 352);
    v9 = *(v0 + 360);
    v10 = v0 + 176;
  }

  else
  {
    *(v0 + 312) = v1;
    *(v0 + 320) = v3;
    *(v0 + 328) = 858861877;
    *(v0 + 336) = 0xE400000000000000;
    v11 = sub_24F92C5F8();

    v12 = *(v0 + 376);
    if (v11)
    {
      sub_24E60169C(v12 + 32, v0 + 136, &qword_27F2169E8);
      sub_24E612C80((v0 + 136), v0 + 96);
      v13 = swift_task_alloc();
      *(v0 + 408) = v13;
      v6 = type metadata accessor for AcceptChallengeActionImplementation();
      WitnessTable = swift_getWitnessTable();
      *v13 = v0;
      v13[1] = sub_24F3B4D68;
      v8 = *(v0 + 352);
      v9 = *(v0 + 360);
      v10 = v0 + 96;
    }

    else
    {
      sub_24E60169C(v12 + 128, v0 + 56, &qword_27F2169E8);
      sub_24E612C80((v0 + 56), v0 + 16);
      v14 = swift_task_alloc();
      *(v0 + 424) = v14;
      v6 = type metadata accessor for AcceptChallengeActionImplementation();
      WitnessTable = swift_getWitnessTable();
      *v14 = v0;
      v14[1] = sub_24F3B4EA4;
      v8 = *(v0 + 352);
      v9 = *(v0 + 360);
      v10 = v0 + 16;
    }
  }

  return sub_24F1487B0(v8, v10, v9, v6, WitnessTable);
}

uint64_t sub_24F3B4C2C()
{
  v2 = *v1;
  *(v2 + 400) = v0;

  __swift_destroy_boxed_opaque_existential_1(v2 + 176);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24F3B4FE0, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_24F3B4D68()
{
  v2 = *v1;
  *(v2 + 416) = v0;

  __swift_destroy_boxed_opaque_existential_1(v2 + 96);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24F3B4FF8, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_24F3B4EA4()
{
  v2 = *v1;
  *(v2 + 432) = v0;

  __swift_destroy_boxed_opaque_existential_1(v2 + 16);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24F3B5010, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_24F3B5090()
{
  v1 = type metadata accessor for AcceptChallengeAction();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80));

  __swift_destroy_boxed_opaque_existential_1(v2 + 32);

  __swift_destroy_boxed_opaque_existential_1(v2 + 88);
  __swift_destroy_boxed_opaque_existential_1(v2 + 128);
  if (*(v2 + 192))
  {
    __swift_destroy_boxed_opaque_existential_1(v2 + 168);
  }

  v3 = *(v1 + 44);
  v4 = sub_24F928AD8();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_24F3B51C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AcceptChallengeAction();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F3B522C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(type metadata accessor for AcceptChallengeAction() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24E614970;

  return sub_24F3B3FC4(a1, v1 + v6, v7, v4);
}

uint64_t sub_24F3B5348()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24F3B5390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[20] = a4;
  v5[21] = a5;
  v5[18] = a2;
  v5[19] = a3;
  v5[17] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F241A70);
  v5[22] = v6;
  v5[23] = *(v6 - 8);
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2139D8);
  v5[26] = v7;
  v5[27] = *(v7 - 8);
  v5[28] = swift_task_alloc();
  v5[29] = swift_task_alloc();
  v5[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F3B54F0, 0, 0);
}

uint64_t sub_24F3B54F0()
{
  *(v0 + 248) = sub_24F92B7F8();
  *(v0 + 256) = sub_24F92B7E8();
  v2 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24F3B5588, v2, v1);
}

uint64_t sub_24F3B5588()
{

  type metadata accessor for LocalPlayerProvider();
  sub_24F928F28();
  *(v0 + 264) = *(v0 + 120);

  return MEMORY[0x2822009F8](sub_24F3B5610, 0, 0);
}

uint64_t sub_24F3B5610()
{
  *(v0 + 272) = sub_24F92B7E8();
  v2 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24F3B569C, v2, v1);
}

uint64_t sub_24F3B569C()
{
  v1 = v0[33];

  swift_getKeyPath();
  v0[16] = v1;
  sub_24F3B71F0(&qword_27F247200, type metadata accessor for LocalPlayerProvider);
  sub_24F91FD88();

  v2 = (v1 + OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider__playerID);
  swift_beginAccess();
  v0[35] = *v2;
  v0[36] = v2[1];

  return MEMORY[0x2822009F8](sub_24F3B57B8, 0, 0);
}

uint64_t sub_24F3B57B8()
{

  sub_24F920FC8();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2142C0);
  v2 = swift_task_alloc();
  *(v0 + 296) = v2;
  *v2 = v0;
  v2[1] = sub_24F3B589C;

  return MEMORY[0x28217F228](v0 + 56, v1, v1);
}

uint64_t sub_24F3B589C()
{
  *(*v1 + 304) = v0;

  if (v0)
  {

    v2 = sub_24F3B5E48;
  }

  else
  {
    v2 = sub_24F3B59B8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F3B59B8()
{
  v31 = v0;
  v1 = v0[20];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
  sub_24F9204F8();
  __swift_destroy_boxed_opaque_existential_1((v0 + 7));
  v2 = v0[38];
  if (v1)
  {

    v3 = v0[5];
    v4 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v3);

    sub_24F920F78();
    if (!v2)
    {
      v5 = swift_task_alloc();
      v0[39] = v5;
      *v5 = v0;
      v5[1] = sub_24F3B5EFC;
      v6 = v0[25];
      v7 = v0[30];
      v8 = v3;
      v9 = v4;
LABEL_14:

      return MEMORY[0x282165198](v7, v6, v8, v9);
    }
  }

  else
  {

    sub_24F920FC8();
    sub_24F920FC8();
    sub_24F920F88();
    if (!v2)
    {
      v26 = v0[5];
      v27 = v0[6];
      __swift_project_boxed_opaque_existential_1(v0 + 2, v26);
      v28 = swift_task_alloc();
      v0[41] = v28;
      *v28 = v0;
      v28[1] = sub_24F3B6298;
      v6 = v0[24];
      v7 = v0[30];
      v8 = v26;
      v9 = v27;
      goto LABEL_14;
    }
  }

  if (qword_27F2113B8 != -1)
  {
    swift_once();
  }

  v10 = sub_24F9220D8();
  __swift_project_value_buffer(v10, qword_27F39E778);
  swift_bridgeObjectRetain_n();

  v11 = v2;
  v12 = sub_24F9220B8();
  v13 = sub_24F92BDB8();

  if (os_log_type_enabled(v12, v13))
  {
    v15 = v0[17];
    v14 = v0[18];
    v29 = v0[20] != 0;
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v30 = v18;
    *v16 = 136315650;
    *(v16 + 4) = sub_24E7620D4(v15, v14, &v30);
    *(v16 + 12) = 2112;
    v19 = v2;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 14) = v20;
    *v17 = v20;
    *(v16 + 22) = 1024;

    *(v16 + 24) = v29;

    _os_log_impl(&dword_24E5DD000, v12, v13, "Accepted challenge %s failed %@, with invite code: %{BOOL}d", v16, 0x1Cu);
    sub_24E601704(v17, &qword_27F227B20);
    MEMORY[0x2530542D0](v17, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v18);
    MEMORY[0x2530542D0](v18, -1, -1);
    MEMORY[0x2530542D0](v16, -1, -1);
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  v21 = v0[30];
  v22 = v0[26];
  v23 = v0[27];
  swift_willThrow();
  (*(v23 + 8))(v21, v22);
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));

  v24 = v0[1];

  return v24();
}

uint64_t sub_24F3B5E48()
{
  (*(v0[27] + 8))(v0[30], v0[26]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_24F3B5EFC()
{
  v2 = *v1;
  *(*v1 + 320) = v0;

  (*(v2[23] + 8))(v2[25], v2[22]);
  if (v0)
  {
    v3 = sub_24F3B65F8;
  }

  else
  {
    v3 = sub_24F3B6064;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24F3B6064()
{
  v18 = v0;
  if (qword_27F2113B8 != -1)
  {
    swift_once();
  }

  v1 = sub_24F9220D8();
  __swift_project_value_buffer(v1, qword_27F39E778);

  v2 = sub_24F9220B8();
  v3 = sub_24F92BD98();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[30];
  v7 = v0[26];
  v6 = v0[27];
  if (v4)
  {
    v15 = v0[30];
    v16 = v0[26];
    v9 = v0[17];
    v8 = v0[18];
    v10 = v0[20] != 0;
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_24E7620D4(v9, v8, &v17);
    *(v11 + 12) = 1024;
    *(v11 + 14) = v10;

    _os_log_impl(&dword_24E5DD000, v2, v3, "Accepted challenge %s, with invite code: %{BOOL}d", v11, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x2530542D0](v12, -1, -1);
    MEMORY[0x2530542D0](v11, -1, -1);

    (*(v6 + 8))(v15, v16);
  }

  else
  {

    (*(v6 + 8))(v5, v7);
  }

  __swift_destroy_boxed_opaque_existential_1((v0 + 2));

  v13 = v0[1];

  return v13();
}

uint64_t sub_24F3B6298()
{
  *(*v1 + 336) = v0;

  if (v0)
  {
    v2 = sub_24F3B68A4;
  }

  else
  {
    v2 = sub_24F3B63AC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F3B63AC()
{
  v18 = v0;
  (*(v0[23] + 8))(v0[24], v0[22]);
  if (qword_27F2113B8 != -1)
  {
    swift_once();
  }

  v1 = sub_24F9220D8();
  __swift_project_value_buffer(v1, qword_27F39E778);

  v2 = sub_24F9220B8();
  v3 = sub_24F92BD98();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[30];
  v7 = v0[26];
  v6 = v0[27];
  if (v4)
  {
    v15 = v0[30];
    v16 = v0[26];
    v9 = v0[17];
    v8 = v0[18];
    v10 = v0[20] != 0;
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_24E7620D4(v9, v8, &v17);
    *(v11 + 12) = 1024;
    *(v11 + 14) = v10;

    _os_log_impl(&dword_24E5DD000, v2, v3, "Accepted challenge %s, with invite code: %{BOOL}d", v11, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x2530542D0](v12, -1, -1);
    MEMORY[0x2530542D0](v11, -1, -1);

    (*(v6 + 8))(v15, v16);
  }

  else
  {

    (*(v6 + 8))(v5, v7);
  }

  __swift_destroy_boxed_opaque_existential_1((v0 + 2));

  v13 = v0[1];

  return v13();
}

uint64_t sub_24F3B65F8()
{
  v20 = v0;
  v1 = v0[40];
  if (qword_27F2113B8 != -1)
  {
    swift_once();
  }

  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E778);
  swift_bridgeObjectRetain_n();

  v3 = v1;
  v4 = sub_24F9220B8();
  v5 = sub_24F92BDB8();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[17];
    v6 = v0[18];
    v18 = v0[20] != 0;
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19 = v10;
    *v8 = 136315650;
    *(v8 + 4) = sub_24E7620D4(v7, v6, &v19);
    *(v8 + 12) = 2112;
    v11 = v1;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v12;
    *v9 = v12;
    *(v8 + 22) = 1024;

    *(v8 + 24) = v18;

    _os_log_impl(&dword_24E5DD000, v4, v5, "Accepted challenge %s failed %@, with invite code: %{BOOL}d", v8, 0x1Cu);
    sub_24E601704(v9, &qword_27F227B20);
    MEMORY[0x2530542D0](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x2530542D0](v10, -1, -1);
    MEMORY[0x2530542D0](v8, -1, -1);
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  v13 = v0[30];
  v14 = v0[26];
  v15 = v0[27];
  swift_willThrow();
  (*(v15 + 8))(v13, v14);
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));

  v16 = v0[1];

  return v16();
}

uint64_t sub_24F3B68A4()
{
  v20 = v0;
  (*(v0[23] + 8))(v0[24], v0[22]);
  v1 = v0[42];
  if (qword_27F2113B8 != -1)
  {
    swift_once();
  }

  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E778);
  swift_bridgeObjectRetain_n();

  v3 = v1;
  v4 = sub_24F9220B8();
  v5 = sub_24F92BDB8();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[17];
    v6 = v0[18];
    v18 = v0[20] != 0;
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19 = v10;
    *v8 = 136315650;
    *(v8 + 4) = sub_24E7620D4(v7, v6, &v19);
    *(v8 + 12) = 2112;
    v11 = v1;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v12;
    *v9 = v12;
    *(v8 + 22) = 1024;

    *(v8 + 24) = v18;

    _os_log_impl(&dword_24E5DD000, v4, v5, "Accepted challenge %s failed %@, with invite code: %{BOOL}d", v8, 0x1Cu);
    sub_24E601704(v9, &qword_27F227B20);
    MEMORY[0x2530542D0](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x2530542D0](v10, -1, -1);
    MEMORY[0x2530542D0](v8, -1, -1);
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  v13 = v0[30];
  v14 = v0[26];
  v15 = v0[27];
  swift_willThrow();
  (*(v15 + 8))(v13, v14);
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));

  v16 = v0[1];

  return v16();
}

uint64_t sub_24F3B6B68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  updated = type metadata accessor for ChallengesUpdateNotifier();
  v7 = swift_task_alloc();
  v5[9] = v7;
  *v7 = v5;
  v7[1] = sub_24F3B6C24;

  return MEMORY[0x28217F228](v5 + 2, updated, updated);
}

uint64_t sub_24F3B6C24()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_24F3B6FA0;
  }

  else
  {
    v2 = sub_24F3B6D38;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F3B6D38()
{
  v1 = *(v0 + 16);
  *(v0 + 88) = v1;
  return MEMORY[0x2822009F8](sub_24F3B6D58, v1, 0);
}

uint64_t sub_24F3B6D58()
{
  sub_24F5EB740(v0[5], v0[6], v0[7], v0[8]);
  refreshed = type metadata accessor for FeedRefreshNotifier();
  v2 = swift_task_alloc();
  v0[12] = v2;
  *v2 = v0;
  v2[1] = sub_24F3B6E18;

  return MEMORY[0x28217F228](v0 + 3, refreshed, refreshed);
}

uint64_t sub_24F3B6E18()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_24F3B70C0;
  }

  else
  {
    v2 = sub_24F3B6F2C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F3B6F2C()
{
  sub_24F03AC94();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F3B6FA0()
{
  v1 = *(v0 + 80);
  if (qword_27F2113B8 != -1)
  {
    swift_once();
  }

  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E778);
  v3 = sub_24F9220B8();
  v4 = sub_24F92BDB8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_24E5DD000, v3, v4, "AcceptChallengeActionImplementation failed to notify updates", v5, 2u);
    MEMORY[0x2530542D0](v5, -1, -1);
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_24F3B70C0()
{

  v1 = *(v0 + 104);
  if (qword_27F2113B8 != -1)
  {
    swift_once();
  }

  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E778);
  v3 = sub_24F9220B8();
  v4 = sub_24F92BDB8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_24E5DD000, v3, v4, "AcceptChallengeActionImplementation failed to notify updates", v5, 2u);
    MEMORY[0x2530542D0](v5, -1, -1);
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_24F3B71F0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24F3B724C(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_13:
    v15 = *(v10 + 48);

    return v15(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_13;
  }

  v13 = type metadata accessor for CommonCardAttributes(0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[8];
    goto LABEL_13;
  }

  v14 = sub_24F9289E8();
  if (*(*(v14 - 8) + 84) == a2)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a3[10];
    goto LABEL_13;
  }

  v16 = type metadata accessor for PlayerAvatar(0);
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[11];

  return v17(v18, a2, v16);
}

uint64_t sub_24F3B7474(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_11:
    v15 = *(v10 + 56);

    return v15(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_11;
  }

  v13 = type metadata accessor for CommonCardAttributes(0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[8];
    goto LABEL_11;
  }

  v14 = sub_24F9289E8();
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[10];
    goto LABEL_11;
  }

  v16 = type metadata accessor for PlayerAvatar(0);
  v17 = *(*(v16 - 8) + 56);
  v18 = v5 + a4[11];

  return v17(v18, a2, a2, v16);
}

uint64_t type metadata accessor for LeaderboardWithFriendCard()
{
  result = qword_27F241A78;
  if (!qword_27F241A78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F3B76D4()
{
  sub_24E61C7D0();
  if (v0 <= 0x3F)
  {
    sub_24E65B038(319, &qword_27F213EA0, &qword_27F213EA8);
    if (v1 <= 0x3F)
    {
      sub_24E65B038(319, &qword_27F215458, &qword_27F215460);
      if (v2 <= 0x3F)
      {
        sub_24F3B7878(319, &qword_27F213EB0, MEMORY[0x277D21F70], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          type metadata accessor for CommonCardAttributes(319);
          if (v4 <= 0x3F)
          {
            sub_24F3B7878(319, &qword_27F22B398, type metadata accessor for LeaderboardEntry, MEMORY[0x277D83940]);
            if (v5 <= 0x3F)
            {
              sub_24F9289E8();
              if (v6 <= 0x3F)
              {
                type metadata accessor for PlayerAvatar(319);
                if (v7 <= 0x3F)
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
}

void sub_24F3B7878(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_24F3B78DC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v43 = type metadata accessor for PlayerAvatar(0);
  MEMORY[0x28223BE20](v43);
  v39 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24F9289E8();
  v46 = *(v4 - 8);
  v47 = v4;
  MEMORY[0x28223BE20](v4);
  v40 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for CommonCardAttributes(0);
  MEMORY[0x28223BE20](v41);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v35 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  MEMORY[0x28223BE20](v11);
  v13 = &v35 - v12;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F241A98);
  v42 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v15 = &v35 - v14;
  v16 = type metadata accessor for LeaderboardWithFriendCard();
  MEMORY[0x28223BE20](v16);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v18 + 40) = 0u;
  v55 = 0;
  v53 = 0u;
  v54 = 0u;
  *(v18 + 56) = 0u;
  *(v18 + 9) = 0;
  v49 = v18 + 40;
  sub_24E61DA68(&v53, (v18 + 40), qword_27F21B590);
  v50 = v16;
  v19 = *(v16 + 24);
  v20 = sub_24F92A6D8();
  v21 = *(*(v20 - 8) + 56);
  v52 = v19;
  v21(&v18[v19], 1, 1, v20);
  v22 = a1[3];
  v51 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  sub_24F3B86C8();
  v45 = v15;
  v23 = v48;
  sub_24F92D108();
  if (v23)
  {
    __swift_destroy_boxed_opaque_existential_1(v51);
    sub_24E601704(v49, qword_27F24EC90);
    return sub_24E601704(&v18[v52], &qword_27F215440);
  }

  else
  {
    v37 = v11;
    v48 = v13;
    v36 = v10;
    v35 = v7;
    v24 = v42;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18);
    v56 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18);
    sub_24F92CC68();
    v25 = v54;
    *v18 = v53;
    *(v18 + 1) = v25;
    *(v18 + 4) = v55;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90);
    v56 = 1;
    sub_24E61D970();
    sub_24F92CC68();
    v26 = v24;
    sub_24E61DA68(&v53, v49, qword_27F24EC90);
    LOBYTE(v53) = 2;
    sub_24E65CAA0();
    v27 = v48;
    sub_24F92CC68();
    sub_24E61DA68(v27, &v18[v52], &qword_27F215440);
    sub_24F929608();
    LOBYTE(v53) = 3;
    sub_24F3B87D0(&qword_27F213F48, MEMORY[0x277D21F70]);
    v28 = v36;
    sub_24F92CC18();
    v29 = v50;
    sub_24E6009C8(v28, &v18[v50[7]], &qword_27F213E68);
    LOBYTE(v53) = 4;
    sub_24F3B87D0(&qword_27F219690, type metadata accessor for CommonCardAttributes);
    v30 = v35;
    sub_24F92CC68();
    sub_24E7CB43C(v30, &v18[v29[8]], type metadata accessor for CommonCardAttributes);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239F78);
    v56 = 5;
    sub_24F3B871C();
    sub_24F92CC68();
    *&v18[v29[9]] = v53;
    LOBYTE(v53) = 6;
    sub_24F3B87D0(&qword_27F214018, MEMORY[0x277D21C48]);
    v31 = v40;
    v32 = v47;
    sub_24F92CC68();
    (*(v46 + 32))(&v18[v29[10]], v31, v32);
    LOBYTE(v53) = 7;
    sub_24F3B87D0(&qword_27F2185A0, type metadata accessor for PlayerAvatar);
    v33 = v39;
    sub_24F92CC68();
    (*(v26 + 8))(v45, v44);
    sub_24E7CB43C(v33, &v18[v29[11]], type metadata accessor for PlayerAvatar);
    sub_24F3B8818(v18, v38, type metadata accessor for LeaderboardWithFriendCard);
    __swift_destroy_boxed_opaque_existential_1(v51);
    return sub_24F3B8880(v18, type metadata accessor for LeaderboardWithFriendCard);
  }
}

unint64_t sub_24F3B8348()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0x6E6F6349656D6167;
    if (v1 != 6)
    {
      v5 = 0x7641646E65697266;
    }

    if (v1 == 4)
    {
      v6 = 0xD000000000000014;
    }

    else
    {
      v6 = 0xD000000000000012;
    }

    if (*v0 <= 5u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 25705;
    v3 = 0x4D747865746E6F63;
    if (v1 != 2)
    {
      v3 = 0xD000000000000011;
    }

    if (*v0)
    {
      v2 = 0x6575676573;
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
}

uint64_t sub_24F3B844C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24F3B89F8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24F3B8474(uint64_t a1)
{
  v2 = sub_24F3B86C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F3B84B0(uint64_t a1)
{
  v2 = sub_24F3B86C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F3B8524@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v9 - v6;
  sub_24E60169C(v2 + *(a1 + 24), &v9 - v6, &qword_27F215440);
  return sub_24E6009C8(v7, a2, &qword_27F215460);
}

uint64_t sub_24F3B85FC(uint64_t a1)
{
  *(a1 + 8) = sub_24F3B87D0(&qword_27F21AC88, type metadata accessor for LeaderboardWithFriendCard);
  result = sub_24F3B87D0(&qword_27F241A88, type metadata accessor for LeaderboardWithFriendCard);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_24F3B86C8()
{
  result = qword_27F241AA0;
  if (!qword_27F241AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F241AA0);
  }

  return result;
}

unint64_t sub_24F3B871C()
{
  result = qword_27F241018;
  if (!qword_27F241018)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F239F78);
    sub_24F3B87D0(&qword_27F21C190, type metadata accessor for LeaderboardEntry);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F241018);
  }

  return result;
}

uint64_t sub_24F3B87D0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24F3B8818(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F3B8880(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24F3B88F4()
{
  result = qword_27F241AA8;
  if (!qword_27F241AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F241AA8);
  }

  return result;
}

unint64_t sub_24F3B894C()
{
  result = qword_27F241AB0;
  if (!qword_27F241AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F241AB0);
  }

  return result;
}

unint64_t sub_24F3B89A4()
{
  result = qword_27F241AB8;
  if (!qword_27F241AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F241AB8);
  }

  return result;
}

uint64_t sub_24F3B89F8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4D747865746E6F63 && a2 == 0xEB00000000756E65 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA451D0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x800000024FA46110 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024FA749F0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6E6F6349656D6167 && a2 == 0xE800000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x7641646E65697266 && a2 == 0xEC00000072617461)
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

uint64_t ChallengeDefinition.AttemptLimit.id.getter()
{
  v1 = v0;
  v2 = sub_24F920A88();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = (v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v3 + 16))(v6, v1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x277D0D0E8])
  {
    (*(v3 + 96))(v6, v2);
    v8 = *v6;
    v12 = 0x28646574696D696CLL;
    v13 = 0xE800000000000000;
    v11[1] = v8;
    v9 = sub_24F92CD88();
    MEMORY[0x253050C20](v9);

    MEMORY[0x253050C20](41, 0xE100000000000000);
    return v12;
  }

  else if (v7 == *MEMORY[0x277D0D0F0])
  {
    return 0x6574696D696C6E75;
  }

  else
  {
    (*(v3 + 8))(v6, v2);
    return 0x6E776F6E6B6E75;
  }
}

uint64_t sub_24F3B8E5C@<X0>(uint64_t *a1@<X8>)
{
  result = ChallengeDefinition.AttemptLimit.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_24F3B8EA8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212710);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[5];

    return v9(v10, a2, v8);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[6]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F212718);
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + a3[9];

    return v14(v15, a2, v13);
  }
}

uint64_t sub_24F3B8FFC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212710);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[5];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6]) = (a2 - 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F212718);
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[9];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

uint64_t type metadata accessor for ChallengesCustomizeTryRuleRowViewV2()
{
  result = qword_27F241AC0;
  if (!qword_27F241AC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F3B9188()
{
  sub_24E600550();
  if (v0 <= 0x3F)
  {
    sub_24F3B92EC(319, &qword_27F22C060, MEMORY[0x277D7EC08], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for GameActivityDraft(319);
      if (v2 <= 0x3F)
      {
        sub_24F3B92EC(319, &qword_27F2349D8, MEMORY[0x277D0D0F8], MEMORY[0x277D83940]);
        if (v3 <= 0x3F)
        {
          sub_24F3B92EC(319, &unk_27F212758, type metadata accessor for PlayTogetherReviewMetricsInfo, MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_24F3B92EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_24F3B936C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v108 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2198F8);
  MEMORY[0x28223BE20](v3 - 8);
  v104 = &v81 - v4;
  v107 = sub_24F929888();
  v106 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v97 = &v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v105 = &v81 - v7;
  v95 = sub_24F9241F8();
  v98 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v96 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_24F927538();
  v93 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v90 = &v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2127C0) - 8;
  MEMORY[0x28223BE20](v92);
  v91 = &v81 - v10;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2127C8) - 8;
  MEMORY[0x28223BE20](v89);
  v88 = (&v81 - v11);
  v86 = sub_24F927768();
  v85 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v13 = &v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ChallengesCustomizeTryRuleRowViewV2();
  v15 = *(v14 - 8);
  v109 = v14 - 8;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F241B98);
  v17 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v19 = &v81 - v18;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F241BA0);
  MEMORY[0x28223BE20](v87);
  v21 = &v81 - v20;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F241BA8);
  v101 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v110 = &v81 - v22;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F241BB0);
  v100 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v99 = &v81 - v23;
  sub_24F3BEDC4(v2, &v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ChallengesCustomizeTryRuleRowViewV2);
  v24 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v25 = swift_allocObject();
  sub_24F3BE11C(&v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v24);
  v112 = v2;
  v111 = v2;
  v84 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F241BB8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F241BC0);
  sub_24F3BDDC4(&qword_27F241BC8, &qword_27F241BB8, &unk_24F9EF040, sub_24F3BE1F4);
  sub_24F3BE2AC();
  sub_24F925AA8();
  sub_24F927758();
  sub_24E602068(&qword_27F241BF8, &qword_27F241B98);
  v82 = v21;
  v26 = v83;
  sub_24F926BA8();
  (*(v85 + 8))(v13, v86);
  (*(v17 + 8))(v19, v26);
  v86 = sub_24F927618();
  v85 = v27;
  v28 = sub_24F926C98();
  v29 = v90;
  sub_24F927438();
  v30 = *(v2 + *(v109 + 36));
  v31 = *(v30 + 16);
  v32 = &v21[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F241C00) + 36)];
  if (v31 <= 1)
  {
    v33 = 0.5;
  }

  else
  {
    v33 = 1.0;
  }

  v34 = v91;
  (*(v93 + 32))(v91, v29, v94);
  *(v34 + *(v92 + 44)) = v33;
  v35 = v88;
  v36 = v88 + *(v89 + 44);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212848);
  v38 = (v36 + *(v37 + 52));
  v39 = *(sub_24F924258() + 20);
  v40 = *MEMORY[0x277CE0118];
  v41 = sub_24F924B38();
  (*(*(v41 - 8) + 104))(&v38[v39], v40, v41);
  __asm { FMOV            V0.2D, #20.0 }

  *v38 = _Q0;
  v47 = v87;
  sub_24E6009C8(v34, v36, &qword_27F2127C0);
  *(v36 + *(v37 + 56)) = 256;
  *v35 = v28;
  KeyPath = swift_getKeyPath();
  v49 = (v32 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212850) + 36));
  v50 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212858) + 28);
  v51 = *MEMORY[0x277CDF3C0];
  v52 = sub_24F9234D8();
  (*(*(v52 - 8) + 104))(v49 + v50, v51, v52);
  *v49 = KeyPath;
  sub_24E6009C8(v35, v32, &qword_27F2127C8);
  v53 = (v32 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212860) + 36));
  v54 = v85;
  *v53 = v86;
  v53[1] = v54;
  v55 = v95;
  v56 = *(v30 + 16);
  v57 = v97;
  LOBYTE(v49) = v56 < 2;
  v58 = swift_getKeyPath();
  v59 = swift_allocObject();
  *(v59 + 16) = v49;
  v60 = v82;
  v61 = &v82[*(v47 + 36)];
  *v61 = v58;
  v61[1] = sub_24E600A48;
  v61[2] = v59;
  v62 = v96;
  sub_24F9241E8();
  v63 = sub_24F3BE374();
  v64 = sub_24F3BEA10(&qword_27F212838, MEMORY[0x277CDDB18]);
  sub_24F926178();
  (*(v98 + 8))(v62, v55);
  sub_24E601704(v60, &qword_27F241BA0);
  v114 = 0u;
  v115 = 0u;
  memset(v113, 0, sizeof(v113));
  sub_24F9297C8();
  sub_24E601704(v113, &qword_27F2129B0);
  sub_24E601704(&v114, &qword_27F2129B0);
  v65 = *(v84 + *(v109 + 32));
  swift_getKeyPath();
  *&v114 = v65;
  sub_24F3BEA10(&qword_27F212898, type metadata accessor for GameActivityDraft);
  sub_24F91FD88();

  v66 = OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__attemptLimit;
  swift_beginAccess();
  v67 = v65 + v66;
  v68 = v104;
  sub_24E60169C(v67, v104, &qword_27F2198F8);
  v69 = sub_24F920A88();
  v70 = *(v69 - 8);
  if ((*(v70 + 48))(v68, 1, v69) == 1)
  {
    sub_24E601704(v68, &qword_27F2198F8);
    v114 = 0u;
    v115 = 0u;
  }

  else
  {
    *(&v115 + 1) = v69;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v114);
    (*(v70 + 32))(boxed_opaque_existential_1, v68, v69);
  }

  v72 = v105;
  sub_24F929868();
  v73 = *(v106 + 8);
  v74 = v107;
  v73(v57, v107);
  sub_24E601704(&v114, &qword_27F2129B0);
  *&v114 = v47;
  *(&v114 + 1) = v55;
  *&v115 = v63;
  *(&v115 + 1) = v64;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v76 = v99;
  v77 = v103;
  v78 = v110;
  sub_24F925EE8();
  v73(v72, v74);
  (*(v101 + 8))(v78, v77);
  *&v114 = v77;
  *(&v114 + 1) = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v79 = v102;
  sub_24F926888();
  return (*(v100 + 8))(v76, v79);
}

uint64_t sub_24F3BA1D0()
{
  v1 = sub_24F921B58();
  v46 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v45 = &v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_24F9284A8();
  v52 = *(v3 - 8);
  v53 = v3;
  MEMORY[0x28223BE20](v3);
  v51 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for GameActivityDraftGameInfo(0);
  v47 = *(v5 - 8);
  v48 = v5;
  MEMORY[0x28223BE20](v5);
  v44 = (&v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212B28);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v40 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F212718);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v40 - v11;
  v13 = sub_24F928AD8();
  v49 = *(v13 - 8);
  v50 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v40 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v40 - v20;
  v22 = type metadata accessor for ChallengesCustomizeTryRuleRowViewV2();
  sub_24E60169C(v0 + *(v22 + 36), v12, &unk_27F212718);
  v23 = type metadata accessor for PlayTogetherReviewMetricsInfo();
  if ((*(*(v23 - 8) + 48))(v12, 1, v23) == 1)
  {
    v24 = &unk_27F212718;
    v25 = v12;
  }

  else
  {
    v41 = v1;
    v42 = v22;
    v26 = *(v22 + 24);
    v43 = v0;
    v27 = *(v0 + v26);
    swift_getKeyPath();
    v55[0] = v27;
    sub_24F3BEA10(&qword_27F212898, type metadata accessor for GameActivityDraft);
    sub_24F91FD88();

    v28 = OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__gameInfo;
    swift_beginAccess();
    sub_24E60169C(v27 + v28, v9, &qword_27F212B28);
    if ((*(v47 + 48))(v9, 1, v48))
    {
      sub_24E601704(v9, &qword_27F212B28);
      v29 = 0;
      v30 = 0;
    }

    else
    {
      v31 = v44;
      sub_24F3BEDC4(v9, v44, type metadata accessor for GameActivityDraftGameInfo);
      sub_24E601704(v9, &qword_27F212B28);
      v29 = *v31;
      v30 = v31[1];

      sub_24E87C040(v31, type metadata accessor for GameActivityDraftGameInfo);
    }

    v32 = v51;
    sub_24EDA5FB8(v29, v30, v18);

    sub_24E87C040(v12, type metadata accessor for PlayTogetherReviewMetricsInfo);
    v33 = v49;
    v34 = v50;
    (*(v49 + 32))(v21, v18, v50);
    (*(v33 + 16))(v15, v21, v34);
    sub_24F928498();
    sub_24F7695C8(v55);
    if (v56)
    {
      v51 = v57;
      __swift_project_boxed_opaque_existential_1(v55, v56);
      v35 = v53;
      v54[3] = v53;
      v54[4] = MEMORY[0x277D21B60];
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v54);
      v37 = v52;
      (*(v52 + 16))(boxed_opaque_existential_1, v32, v35);
      v38 = v45;
      sub_24F76973C(v45);
      sub_24F9218A8();
      (*(v46 + 8))(v38, v41);
      (*(v37 + 8))(v32, v35);
      (*(v33 + 8))(v21, v34);
      __swift_destroy_boxed_opaque_existential_1(v54);
      return __swift_destroy_boxed_opaque_existential_1(v55);
    }

    (*(v52 + 8))(v32, v53);
    (*(v33 + 8))(v21, v34);
    v24 = &unk_27F212740;
    v25 = v55;
  }

  return sub_24E601704(v25, v24);
}

uint64_t sub_24F3BA8A8(uint64_t a1)
{
  v2 = type metadata accessor for ChallengesCustomizeTryRuleRowViewV2();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v9[1] = *(a1 + *(v5 + 36));
  sub_24F3BEDC4(a1, v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ChallengesCustomizeTryRuleRowViewV2);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_24F3BE11C(v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2349A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212998);
  sub_24E602068(&qword_27F241C90, &qword_27F2349A8);
  sub_24E602068(&qword_27F212990, &qword_27F212998);
  sub_24F3BEA10(&unk_27F241C98, MEMORY[0x277D0D0F8]);
  return sub_24F927238();
}

uint64_t sub_24F3BAAD0(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F920A88();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for ChallengesCustomizeTryRuleRowViewV2();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  sub_24F3BEDC4(a2, &v15[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for ChallengesCustomizeTryRuleRowViewV2);
  (*(v5 + 16))(v7, a1, v4);
  v11 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v12 = (v10 + *(v5 + 80) + v11) & ~*(v5 + 80);
  v13 = swift_allocObject();
  sub_24F3BE11C(&v15[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)], v13 + v11);
  (*(v5 + 32))(v13 + v12, v7, v4);
  v16 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212B08);
  sub_24E601CB4();
  return sub_24F926F88();
}

uint64_t sub_24F3BAD08(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2198F8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - v4;
  type metadata accessor for ChallengesCustomizeTryRuleRowViewV2();
  v6 = sub_24F920A88();
  v7 = *(v6 - 8);
  (*(v7 + 16))(v5, a2, v6);
  (*(v7 + 56))(v5, 0, 1, v6);
  return sub_24F34E848(v5);
}

uint64_t sub_24F3BAE18@<X0>(uint64_t a1@<X8>)
{
  sub_24F926EA8();
  v2 = sub_24F926D18();
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212B08);
  v5 = (a1 + *(result + 36));
  *v5 = KeyPath;
  v5[1] = v2;
  return result;
}

uint64_t sub_24F3BAEDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_24EF5C904(a1);
  sub_24E600AEC();
  result = sub_24F925E18();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_24F3BAF34@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_24F920A88();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4, v6);
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 != *MEMORY[0x277D0D0E8] && v9 != *MEMORY[0x277D0D0F0])
  {
    (*(v5 + 8))(v8, v4);
  }

  result = sub_24F926E48();
  *a2 = result;
  return result;
}

uint64_t sub_24F3BB0B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v62 = sub_24F9248C8();
  v4 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v6 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F241C28);
  MEMORY[0x28223BE20](v7);
  v9 = &v60 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F241C30);
  v61 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v60 - v11;
  *v9 = sub_24F9249A8();
  *(v9 + 1) = 0x4024000000000000;
  v9[16] = 0;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F241C38);
  sub_24F3BB5FC(a1, &v9[*(v13 + 44)]);
  v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F241C40) + 36)] = 0;
  v14 = sub_24F9257F8();
  sub_24F923318();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F241C48) + 36)];
  *v23 = v14;
  *(v23 + 1) = v16;
  *(v23 + 2) = v18;
  *(v23 + 3) = v20;
  *(v23 + 4) = v22;
  v23[40] = 0;
  v24 = sub_24F925868();
  sub_24F923318();
  v25 = &v9[*(v7 + 36)];
  *v25 = v24;
  *(v25 + 1) = v26;
  *(v25 + 2) = v27;
  *(v25 + 3) = v28;
  *(v25 + 4) = v29;
  v25[40] = 0;
  type metadata accessor for ChallengesCustomizeTryRuleRowViewV2();
  sub_24F9248B8();
  sub_24F3BE614(&qword_27F241C50, &qword_27F241C28, &unk_24F9EF0D8, sub_24F3BE698);
  _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
  v30 = v6;
  v31 = v10;
  (*(v4 + 8))(v30, v62);
  v32 = v61;
  sub_24E601704(v9, &qword_27F241C28);
  v33 = sub_24F924258();
  v63[3] = v33;
  v63[4] = sub_24F3BEA10(&qword_27F212868, MEMORY[0x277CDFC08]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v63);
  v35 = *(v33 + 20);
  v36 = *MEMORY[0x277CE0118];
  v37 = sub_24F924B38();
  (*(*(v37 - 8) + 104))(boxed_opaque_existential_1 + v35, v36, v37);
  __asm { FMOV            V0.2D, #20.0 }

  *boxed_opaque_existential_1 = _Q0;
  sub_24E60169C(v63, a2, &qword_27F241C78);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F241BE8);
  (*(v32 + 16))(a2 + v43[9], v12, v31);
  v44 = a2 + v43[10];
  *v44 = sub_24F923398() & 1;
  *(v44 + 8) = v45;
  *(v44 + 16) = v46 & 1;
  v47 = a2 + v43[11];
  *v47 = swift_getKeyPath();
  *(v47 + 8) = 0;
  if (qword_27F211808 != -1)
  {
    swift_once();
  }

  v48 = qword_27F24E488;
  v49 = sub_24F923398();
  v51 = v50;
  v53 = v52;
  v54 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F241BD8) + 36);
  *v54 = v48;
  *(v54 + 8) = v49 & 1;
  *(v54 + 16) = v51;
  *(v54 + 24) = v53 & 1;
  LOBYTE(v48) = sub_24F923398();
  v56 = v55;
  LOBYTE(v51) = v57;
  sub_24E601704(v63, &qword_27F241C78);
  (*(v32 + 8))(v12, v31);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F241BB8);
  v59 = a2 + *(result + 36);
  *v59 = v48 & 1;
  *(v59 + 8) = v56;
  *(v59 + 16) = v51 & 1;
  return result;
}

uint64_t sub_24F3BB5FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F241C80);
  v60 = *(v3 - 8);
  v61 = v3;
  MEMORY[0x28223BE20](v3);
  v57 = &v56 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212A80);
  v64 = *(v5 - 8);
  v65 = v5;
  MEMORY[0x28223BE20](v5);
  v59 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v58 = &v56 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2198F8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v56 - v10;
  v12 = sub_24F920A88();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v56 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212A88);
  MEMORY[0x28223BE20](v19 - 8);
  v67 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v68 = &v56 - v22;
  v62 = type metadata accessor for ChallengesCustomizeTryRuleRowViewV2();
  v63 = a1;
  v23 = *(a1 + *(v62 + 24));
  swift_getKeyPath();
  v71 = v23;
  sub_24F3BEA10(&qword_27F212898, type metadata accessor for GameActivityDraft);
  sub_24F91FD88();

  v24 = OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__attemptLimit;
  swift_beginAccess();
  sub_24E60169C(v23 + v24, v11, &qword_27F2198F8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_24E601704(v11, &qword_27F2198F8);
    v25 = 1;
    v27 = v62;
    v26 = v63;
    v28 = v68;
    v29 = v65;
  }

  else
  {
    (*(v13 + 32))(v18, v11, v12);
    (*(v13 + 16))(v15, v18, v12);
    v30 = (*(v13 + 88))(v15, v12);
    if (v30 != *MEMORY[0x277D0D0E8] && v30 != *MEMORY[0x277D0D0F0])
    {
      (*(v13 + 8))(v15, v12);
    }

    v31 = sub_24F926E48();
    v32 = sub_24F9258F8();
    KeyPath = swift_getKeyPath();
    v71 = v31;
    v72 = KeyPath;
    *v73 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F212AA0);
    sub_24E60156C();
    v34 = v57;
    sub_24F9268B8();

    v27 = v62;
    v26 = v63;
    sub_24F927618();
    sub_24F9238C8();
    (*(v13 + 8))(v18, v12);
    v35 = v59;
    (*(v60 + 32))(v59, v34, v61);
    v29 = v65;
    v36 = &v35[*(v65 + 36)];
    v37 = *(&v78[6] + 8);
    *v36 = *(&v78[5] + 8);
    *(v36 + 1) = v37;
    *(v36 + 2) = *(&v78[7] + 8);
    v38 = v35;
    v39 = v58;
    sub_24E601624(v38, v58);
    v28 = v68;
    sub_24E601624(v39, v68);
    v25 = 0;
  }

  (*(v64 + 56))(v28, v25, 1, v29);
  v40 = sub_24F924C98();
  LOBYTE(v71) = 1;
  sub_24F3BBE18(v26, v78);
  *&v77[7] = v78[0];
  *&v77[23] = v78[1];
  *&v77[39] = v78[2];
  *&v77[55] = v78[3];
  v41 = v71;
  if (*(*(v26 + *(v27 + 28)) + 16) < 2uLL)
  {
    v42 = 0;
  }

  else
  {
    v42 = sub_24F926DF8();
  }

  v43 = v28;
  v44 = v67;
  sub_24E60169C(v43, v67, &qword_27F212A88);
  v45 = v66;
  sub_24E60169C(v44, v66, &qword_27F212A88);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F241C88);
  v47 = v45 + v46[12];
  v69[0] = v40;
  v69[1] = 0;
  v70[0] = v41;
  *&v70[1] = *v77;
  *&v70[17] = *&v77[16];
  *&v70[33] = *&v77[32];
  *&v70[49] = *&v77[48];
  v48 = *&v77[63];
  *&v70[64] = *&v77[63];
  v49 = *v70;
  *v47 = v40;
  *(v47 + 16) = v49;
  v50 = *&v70[16];
  v51 = *&v70[32];
  v52 = *&v70[48];
  *(v47 + 80) = v48;
  *(v47 + 48) = v51;
  *(v47 + 64) = v52;
  *(v47 + 32) = v50;
  v53 = v45 + v46[16];
  *v53 = 0;
  *(v53 + 8) = 1;
  v54 = v46[20];
  sub_24E60169C(v69, &v71, &qword_27F225978);
  *(v45 + v54) = v42;
  sub_24E601704(v68, &qword_27F212A88);

  v71 = v40;
  v72 = 0;
  v73[0] = v41;
  v74 = *&v77[16];
  v75 = *&v77[32];
  *v76 = *&v77[48];
  *&v76[15] = *&v77[63];
  *&v73[1] = *v77;
  sub_24E601704(&v71, &qword_27F225978);
  return sub_24E601704(v44, &qword_27F212A88);
}

uint64_t sub_24F3BBE18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2198F8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v46 - v4;
  v53 = sub_24F920A88();
  v48 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v50 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7._object = 0x800000024FA74A10;
  v7._countAndFlagsBits = 0xD000000000000027;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v56 = localizedString(_:comment:)(v7, v8);
  v46 = sub_24E600AEC();
  v9 = sub_24F925E18();
  v11 = v10;
  v13 = v12;
  LODWORD(v56._countAndFlagsBits) = sub_24F9251C8();
  v14 = sub_24F925C58();
  v16 = v15;
  v18 = v17;
  sub_24E600B40(v9, v11, v13 & 1);

  sub_24F925A18();
  v19 = sub_24F925C98();
  v51 = v20;
  v52 = v19;
  v49 = v21;
  v23 = v22;

  sub_24E600B40(v14, v16, v18 & 1);

  v24 = *(v47 + *(type metadata accessor for ChallengesCustomizeTryRuleRowViewV2() + 24));
  swift_getKeyPath();
  v56._countAndFlagsBits = v24;
  sub_24F3BEA10(&qword_27F212898, type metadata accessor for GameActivityDraft);
  sub_24F91FD88();

  v25 = OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__attemptLimit;
  swift_beginAccess();
  sub_24E60169C(v24 + v25, v5, &qword_27F2198F8);
  v26 = v48;
  v27 = v53;
  if ((*(v48 + 48))(v5, 1) == 1)
  {
    sub_24E601704(v5, &qword_27F2198F8);
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
  }

  else
  {
    v32 = v50;
    (*(v26 + 32))(v50, v5, v27);
    v54 = sub_24EF5C904(v32);
    v55 = v33;
    v34 = sub_24F925E18();
    v36 = v35;
    v38 = v37;
    sub_24F9258D8();
    sub_24F9258E8();
    v47 = v23;

    v28 = sub_24F925C98();
    v29 = v39;
    LODWORD(v46) = v40;
    v31 = v41;
    v23 = v47;

    sub_24E600B40(v34, v36, v38 & 1);

    (*(v26 + 8))(v50, v53);
    v30 = v46 & 1;
    sub_24E5FD138(v28, v29, v46 & 1);
  }

  v42 = v49 & 1;
  v44 = v51;
  v43 = v52;
  sub_24E5FD138(v52, v51, v49 & 1);

  sub_24E65D2B4(v28, v29, v30, v31);
  sub_24E65D2F8(v28, v29, v30, v31);
  LOBYTE(v54) = v42;
  *a2 = v43;
  *(a2 + 8) = v44;
  *(a2 + 16) = v42;
  *(a2 + 24) = v23;
  *(a2 + 32) = v28;
  *(a2 + 40) = v29;
  *(a2 + 48) = v30;
  *(a2 + 56) = v31;
  sub_24E65D2F8(v28, v29, v30, v31);
  sub_24E600B40(v43, v44, v42);
}

uint64_t sub_24F3BC2D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v63 = a3;
  v7 = sub_24F9241F8();
  v64 = *(v7 - 8);
  v65 = v7;
  MEMORY[0x28223BE20](v7);
  v62 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_24F924B38();
  v9 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v59 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_24F927768();
  v57 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v12 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F241AD0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v54 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F241AD8);
  v55 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v56 = &v54 - v18;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F241AE0);
  MEMORY[0x28223BE20](v61);
  v20 = &v54 - v19;
  v69 = a1;
  v70 = a2;
  v71 = a4;
  v66 = a1;
  v67 = a2;
  v68 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F241AE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F241AF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F241AF8);
  v22 = sub_24F3BDAE4();
  v72[0] = v21;
  v72[1] = v22;
  swift_getOpaqueTypeConformance2();
  sub_24F3BDD0C();
  v23 = v17;
  v24 = v55;
  sub_24F925AB8();
  sub_24F927758();
  sub_24E602068(&qword_27F241B40, &qword_27F241AD0);
  v25 = v56;
  sub_24F926BA8();
  (*(v57 + 8))(v12, v58);
  (*(v14 + 8))(v16, v13);
  v26 = v59;
  v27 = v60;
  (*(v9 + 104))(v59, *MEMORY[0x277CE0118], v60);
  v28 = sub_24F924258();
  v72[3] = v28;
  v72[4] = sub_24F3BEA10(&qword_27F212868, MEMORY[0x277CDFC08]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v72);
  (*(v9 + 16))(boxed_opaque_existential_1 + *(v28 + 20), v26, v27);
  __asm { FMOV            V0.2D, #12.0 }

  *boxed_opaque_existential_1 = _Q0;
  (*(v9 + 8))(v26, v27);
  sub_24E60169C(v72, v20, &qword_27F241B48);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F241B50);
  (*(v24 + 16))(&v20[v35[9]], v25, v23);
  v36 = &v20[v35[10]];
  *v36 = sub_24F923398() & 1;
  *(v36 + 1) = v37;
  v36[16] = v38 & 1;
  v39 = &v20[v35[11]];
  *v39 = swift_getKeyPath();
  v39[8] = 0;
  if (qword_27F211808 != -1)
  {
    swift_once();
  }

  v40 = qword_27F24E488;
  v41 = sub_24F923398();
  v43 = v42;
  v45 = v44;
  v46 = &v20[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F241B58) + 36)];
  *v46 = v40;
  v46[8] = v41 & 1;
  *(v46 + 2) = v43;
  v46[24] = v45 & 1;
  LOBYTE(v40) = sub_24F923398();
  v48 = v47;
  LOBYTE(v43) = v49;
  sub_24E601704(v72, &qword_27F241B48);
  (*(v24 + 8))(v25, v23);
  v50 = &v20[*(v61 + 36)];
  *v50 = v40 & 1;
  *(v50 + 1) = v48;
  v50[16] = v43 & 1;
  v51 = v62;
  sub_24F9241E8();
  sub_24F3BDDC4(&qword_27F241B60, &qword_27F241AE0, &unk_24F9EEEF0, sub_24F3BDE48);
  sub_24F3BEA10(&qword_27F212838, MEMORY[0x277CDDB18]);
  v52 = v65;
  sub_24F926178();
  (*(v64 + 8))(v51, v52);
  return sub_24E601704(v20, &qword_27F241AE0);
}

uint64_t sub_24F3BCAA8(uint64_t a1, uint64_t a2, double a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  swift_bridgeObjectRetain_n();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F241B80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212828);
  sub_24E602068(&qword_27F241B88, &qword_27F241B80);
  sub_24E602068(&qword_27F212820, &qword_27F212828);
  sub_24F3BDF64();
  return sub_24F927238();
}

uint64_t sub_24F3BCC10(uint64_t *a1, uint64_t a2, uint64_t a3, double a4)
{
  v7 = *a1;
  v8 = a1[1];
  v9 = a1[2];
  v10 = *(a1 + 24);
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;
  *(v11 + 32) = a4;
  *(v11 + 40) = v7;
  *(v11 + 48) = v8;
  *(v11 + 56) = v9;
  *(v11 + 64) = v10;

  sub_24E6F2460();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F211B58);
  sub_24E602068(&qword_27F212910, &qword_27F211B58);
  return sub_24F926F88();
}

uint64_t sub_24F3BCD54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  swift_getKeyPath();
  sub_24E6F2460();
  sub_24F3BEA10(&qword_27F212898, type metadata accessor for GameActivityDraft);
  sub_24F91FD88();

  swift_getKeyPath();
  sub_24F91FDA8();

  v11 = a1 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__rules;
  *v11 = a3;
  *(v11 + 8) = a4;
  *(v11 + 16) = a5;
  *(v11 + 24) = a6 & 1;
  sub_24E6F246C();
  swift_getKeyPath();
  sub_24F91FD98();
}

uint64_t sub_24F3BCEB8@<X0>(char a1@<W3>, uint64_t a2@<X8>)
{
  if (a1)
  {
    if (qword_27F2114F8 != -1)
    {
      swift_once();
    }
  }

  else
  {
    sub_24F69A9A4();
  }

  sub_24E600AEC();
  result = sub_24F925E18();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_24F3BCF60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v3 = sub_24F9248C8();
  v43 = *(v3 - 8);
  v44 = v3;
  MEMORY[0x28223BE20](v3);
  v41 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F241AF8);
  MEMORY[0x28223BE20](v42);
  v6 = &v36 - v5;
  v40 = sub_24F9249A8();
  v60 = 1;
  sub_24F3BD474(a1, &v47);
  v69 = v55;
  v70 = v56;
  v71 = v57;
  v65 = v51;
  v66 = v52;
  v67 = v53;
  v68 = v54;
  v61 = v47;
  v62 = v48;
  v63 = v49;
  v64 = v50;
  v73[8] = v55;
  v73[9] = v56;
  v73[10] = v57;
  v73[4] = v51;
  v73[5] = v52;
  v73[6] = v53;
  v73[7] = v54;
  v73[0] = v47;
  v73[1] = v48;
  v72 = v58;
  v74 = v58;
  v73[2] = v49;
  v73[3] = v50;
  sub_24E60169C(&v61, v46, &qword_27F241B78);
  sub_24E601704(v73, &qword_27F241B78);
  *(&v59[8] + 7) = v69;
  *(&v59[9] + 7) = v70;
  *(&v59[10] + 7) = v71;
  *(&v59[4] + 7) = v65;
  *(&v59[5] + 7) = v66;
  *(&v59[6] + 7) = v67;
  *(&v59[7] + 7) = v68;
  *(v59 + 7) = v61;
  *(&v59[1] + 7) = v62;
  *(&v59[2] + 7) = v63;
  *(&v59[11] + 7) = v72;
  *(&v59[3] + 7) = v64;
  v39 = v60;
  v38 = sub_24F925808();
  v46[0] = 1;
  v7 = sub_24F927618();
  v36 = v8;
  v37 = v7;
  v9 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F241B10) + 36)];
  v10 = sub_24F926C98();
  v11 = v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FC40) + 36);
  sub_24F927438();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FC48);
  v13 = &v11[*(v12 + 52)];
  v14 = *(sub_24F924258() + 20);
  v15 = *MEMORY[0x277CE0118];
  v16 = sub_24F924B38();
  (*(*(v16 - 8) + 104))(&v13[v14], v15, v16);
  __asm { FMOV            V0.2D, #12.0 }

  *v13 = _Q0;
  *&v11[*(v12 + 56)] = 256;
  *v9 = v10;
  KeyPath = swift_getKeyPath();
  v23 = (v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FC50) + 36));
  v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212858) + 28);
  v25 = *MEMORY[0x277CDF3C0];
  v26 = sub_24F9234D8();
  (*(*(v26 - 8) + 104))(v23 + v24, v25, v26);
  *v23 = KeyPath;
  v27 = (v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FBE8) + 36));
  v28 = v36;
  *v27 = v37;
  v27[1] = v28;
  v29 = v59[2];
  *(v6 + 65) = v59[3];
  *(v6 + 49) = v29;
  v30 = v59[0];
  *(v6 + 33) = v59[1];
  *(v6 + 17) = v30;
  v31 = v59[6];
  *(v6 + 129) = v59[7];
  *(v6 + 113) = v31;
  v32 = v59[4];
  *(v6 + 97) = v59[5];
  *(v6 + 81) = v32;
  *(v6 + 12) = *(&v59[10] + 15);
  *(v6 + 177) = v59[10];
  v33 = v59[8];
  *(v6 + 161) = v59[9];
  v34 = v41;
  *v6 = v40;
  *(v6 + 1) = 0;
  LOBYTE(v27) = v38;
  v6[16] = v39;
  *(v6 + 145) = v33;
  v6[208] = v27;
  *(v6 + 209) = v47;
  *(v6 + 53) = *(&v47 + 3);
  *(v6 + 216) = 0u;
  *(v6 + 232) = 0u;
  v6[248] = 1;
  sub_24F9248B8();
  sub_24F3BDAE4();
  _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
  (*(v43 + 8))(v34, v44);
  return sub_24E601704(v6, &qword_27F241AF8);
}

uint64_t sub_24F3BD474@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_getKeyPath();
  v24[0] = a1;
  sub_24F3BEA10(&qword_27F212898, type metadata accessor for GameActivityDraft);
  sub_24F91FD88();

  sub_24E6F2460();
  v4 = sub_24F926DF8();
  v11 = sub_24F9258F8();
  KeyPath = swift_getKeyPath();
  sub_24F927618();
  sub_24F9238C8();
  v6 = sub_24F924C98();
  LOBYTE(v24[0]) = 1;
  sub_24F3BD7EC(a1, v19);
  *&v18[7] = v19[0];
  *&v18[23] = v19[1];
  *&v18[39] = v19[2];
  *&v18[55] = v19[3];
  v7 = v24[0];
  v8 = sub_24F926DF8();
  *&v20 = v4;
  *(&v20 + 1) = KeyPath;
  *v21 = v11;
  *&v21[8] = v15;
  *&v21[24] = v16;
  *&v21[40] = v17;
  v12 = *&v21[16];
  v13 = *&v21[32];
  *v14 = *(&v17 + 1);
  v22[0] = v6;
  v22[1] = 0;
  v23[0] = v7;
  *&v23[1] = *v18;
  *&v23[64] = *&v18[63];
  *&v23[49] = *&v18[48];
  *&v23[33] = *&v18[32];
  *&v23[17] = *&v18[16];
  *&v14[24] = *v23;
  *&v14[8] = v6;
  *&v14[88] = *&v23[64];
  *&v14[72] = *&v23[48];
  *&v14[56] = *&v23[32];
  *&v14[40] = *&v23[16];
  v9 = *v21;
  *a2 = v20;
  *(a2 + 16) = v9;
  *(a2 + 64) = *v14;
  *(a2 + 80) = *&v14[16];
  *(a2 + 32) = v12;
  *(a2 + 48) = v13;
  *(a2 + 128) = *&v14[64];
  *(a2 + 144) = *&v14[80];
  *(a2 + 96) = *&v14[32];
  *(a2 + 112) = *&v14[48];
  *(a2 + 160) = 0;
  *(a2 + 168) = 1;
  *(a2 + 176) = v8;
  sub_24E60169C(&v20, v24, &qword_27F2128C8);
  sub_24E60169C(v22, v24, &qword_27F220848);
  v24[0] = v6;
  v24[1] = 0;
  v25 = v7;
  v27 = *&v18[16];
  v28 = *&v18[32];
  *v29 = *&v18[48];
  *&v29[15] = *&v18[63];
  v26 = *v18;
  sub_24E601704(v24, &qword_27F220848);
  v30[0] = v4;
  v30[1] = KeyPath;
  v30[2] = v11;
  v31 = v15;
  v32 = v16;
  v33 = v17;
  return sub_24E601704(v30, &qword_27F2128C8);
}

uint64_t sub_24F3BD7EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_27F2114E8 != -1)
  {
    swift_once();
  }

  sub_24E600AEC();

  v4 = sub_24F925E18();
  v23 = v5;
  v24 = v4;
  v22 = v6;
  v25 = v7;
  swift_getKeyPath();
  sub_24F3BEA10(&qword_27F212898, type metadata accessor for GameActivityDraft);
  sub_24F91FD88();

  if (*(a1 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__rules + 24))
  {
    v8 = qword_27F2114F8;

    if (v8 != -1)
    {
      swift_once();
    }

    sub_24E6F246C();
  }

  else
  {
    sub_24F69A9A4();
  }

  v9 = sub_24F925E18();
  v11 = v10;
  v13 = v12;
  sub_24F9258D8();
  sub_24F9258E8();

  v14 = sub_24F925C98();
  v16 = v15;
  v18 = v17;
  v20 = v19;

  sub_24E600B40(v9, v11, v13 & 1);

  *a2 = v24;
  *(a2 + 8) = v23;
  *(a2 + 16) = v22 & 1;
  *(a2 + 24) = v25;
  *(a2 + 32) = v14;
  *(a2 + 40) = v16;
  *(a2 + 48) = v18 & 1;
  *(a2 + 56) = v20;
  sub_24E5FD138(v24, v23, v22 & 1);

  sub_24E5FD138(v14, v16, v18 & 1);

  sub_24E600B40(v14, v16, v18 & 1);

  sub_24E600B40(v24, v23, v22 & 1);
}