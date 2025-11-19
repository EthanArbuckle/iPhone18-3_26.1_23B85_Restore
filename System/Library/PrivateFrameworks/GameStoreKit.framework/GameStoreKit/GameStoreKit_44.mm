uint64_t sub_24EA7BA78()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EA7BAF0()
{
  sub_24F92B218();
}

uint64_t sub_24EA7BB54()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EA7BBC8@<X0>(char *a1@<X8>)
{
  v2 = sub_24F92CB88();

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

void sub_24EA7BC28(uint64_t *a1@<X8>)
{
  v2 = 7368564;
  if (*v1)
  {
    v2 = 0x6D6F74746F62;
  }

  v3 = 0xE300000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t ProductMedia.platformDescription.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t ProductMedia.allPlatformsDescription.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t ProductMedia.hasPortraitPhoneMedia.getter()
{
  if ((*(*(v0 + 24) + 16) & 0xFD) != 0)
  {
    return 0;
  }

  else
  {
    return ProductMedia.hasPortraitMedia.getter();
  }
}

uint64_t ProductMedia.hasPortraitMedia.getter()
{
  v1 = *(v0 + 16);
  if (v1 >> 62)
  {
LABEL_18:
    v2 = sub_24F92C738();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v3 = 0;
      do
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x253052270](v3, v1);
          v7 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
LABEL_15:
            __break(1u);
            return 1;
          }
        }

        else
        {
          if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_18;
          }

          v6 = *(v1 + 8 * v3 + 32);

          v7 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            goto LABEL_15;
          }
        }

        v8 = *(v6 + 16);
        if (v8)
        {

          v5 = *(v8 + 32);
          v4 = *(v8 + 40);
        }

        else
        {
          v9 = *(v6 + 24);

          if (!v9)
          {
            goto LABEL_6;
          }

          v10 = *(v9 + OBJC_IVAR____TtC12GameStoreKit5Video_preview);

          v5 = *(v10 + 32);
          v4 = *(v10 + 40);
        }

        if (v5 <= v4)
        {
          return 1;
        }

LABEL_6:
        ++v3;
      }

      while (v7 != v2);
    }
  }

  return 0;
}

uint64_t ProductMedia.screenshotOnlyItems.getter()
{
  v1 = *(v0 + 16);
  v7 = MEMORY[0x277D84F90];
  if (v1 >> 62)
  {
LABEL_17:
    v2 = sub_24F92C738();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      for (i = 0; ; ++i)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v4 = MEMORY[0x253052270](i, v1);
          v5 = i + 1;
          if (__OFADD__(i, 1))
          {
LABEL_14:
            __break(1u);
            return v7;
          }
        }

        else
        {
          if (i >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_17;
          }

          v4 = *(v1 + 8 * i + 32);

          v5 = i + 1;
          if (__OFADD__(i, 1))
          {
            goto LABEL_14;
          }
        }

        if (*(v4 + 24) || !*(v4 + 16))
        {
        }

        else
        {
          sub_24F92C948();
          sub_24F92C988();
          sub_24F92C998();
          sub_24F92C958();
        }

        if (v5 == v2)
        {
          return v7;
        }
      }
    }
  }

  return MEMORY[0x277D84F90];
}

uint64_t ProductMedia.__allocating_init(id:items:platform:allPlatforms:platformDescription:allPlatformsDescription:allPlatformsDescriptionPlacement:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char *a9)
{
  v28 = a7;
  v29 = a8;
  v31 = a3;
  v32 = a4;
  v30 = a2;
  v12 = sub_24F91F6B8();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  v17 = *a9;
  sub_24E60169C(a1, &v35, &qword_27F235830);
  if (*(&v36 + 1))
  {
    v18 = v36;
    *(v16 + 80) = v35;
    *(v16 + 96) = v18;
    *(v16 + 112) = v37;
  }

  else
  {
    sub_24F91F6A8();
    v19 = sub_24F91F668();
    v27 = a5;
    v21 = v20;
    (*(v13 + 8))(v15, v12);
    v33 = v19;
    v34 = v21;
    a5 = v27;
    sub_24F92C7F8();
    sub_24E601704(&v35, &qword_27F235830);
  }

  sub_24E601704(a1, &qword_27F235830);
  v22 = v31;
  *(v16 + 16) = v30;
  *(v16 + 24) = v22;
  *(v16 + 32) = v32;
  *(v16 + 40) = a5;
  v24 = v28;
  v23 = v29;
  *(v16 + 48) = a6;
  *(v16 + 56) = v24;
  *(v16 + 64) = v23;
  *(v16 + 72) = v17;
  return v16;
}

uint64_t ProductMedia.init(id:items:platform:allPlatforms:platformDescription:allPlatformsDescription:allPlatformsDescriptionPlacement:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char *a9)
{
  v10 = v9;
  v29 = a7;
  v30 = a8;
  v32 = a3;
  v33 = a4;
  v31 = a2;
  v14 = sub_24F91F6B8();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a9;
  sub_24E60169C(a1, &v36, &qword_27F235830);
  if (*(&v37 + 1))
  {
    v39 = v36;
    v40 = v37;
    v41 = v38;
  }

  else
  {
    sub_24F91F6A8();
    v19 = sub_24F91F668();
    v28 = a5;
    v21 = v20;
    (*(v15 + 8))(v17, v14);
    v34 = v19;
    v35 = v21;
    a5 = v28;
    sub_24F92C7F8();
    sub_24E601704(&v36, &qword_27F235830);
  }

  sub_24E601704(a1, &qword_27F235830);
  v22 = v40;
  *(v10 + 80) = v39;
  *(v10 + 96) = v22;
  *(v10 + 112) = v41;
  v23 = v32;
  *(v10 + 16) = v31;
  *(v10 + 24) = v23;
  *(v10 + 32) = v33;
  *(v10 + 40) = a5;
  v25 = v29;
  v24 = v30;
  *(v10 + 48) = a6;
  *(v10 + 56) = v25;
  *(v10 + 64) = v24;
  *(v10 + 72) = v18;
  return v10;
}

void (*ProductMedia.__allocating_init(deserializing:using:)(uint64_t a1, char *a2))(char *, char *, uint64_t)
{
  v105 = a2;
  v90 = sub_24F91F6B8();
  v88 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v87 = &v85 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0);
  MEMORY[0x28223BE20](v4 - 8);
  v98 = (&v85 - v5);
  v97 = sub_24F92AC28();
  v96 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v92 = &v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24F9285B8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v94 = &v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v85 - v11;
  v104 = sub_24F928388();
  v101 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v89 = &v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v91 = &v85 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v85 - v17;
  MEMORY[0x28223BE20](v19);
  v93 = &v85 - v20;
  MEMORY[0x28223BE20](v21);
  v23 = &v85 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v85 - v25;
  type metadata accessor for MediaPlatform();
  v102 = a1;
  sub_24F928398();
  v100 = v8;
  v27 = *(v8 + 16);
  v103 = v7;
  v27(v12, v105, v7);
  v28 = v99;
  v29 = MediaPlatform.__allocating_init(deserializing:using:)(v26, v12);
  if (v28)
  {
    (*(v101 + 8))(v102, v104);
LABEL_9:
    v40 = v105;
LABEL_10:
    (*(v100 + 8))(v40, v103);
    return v27;
  }

  v86 = v18;
  v99 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225260);
  v30 = v102;
  sub_24F928398();
  v27(v94, v105, v103);
  sub_24EA1C42C();
  v85 = v23;
  sub_24F929548();
  if (v111[0])
  {
    v31 = v111[0];
  }

  else
  {
    v31 = MEMORY[0x277D84F90];
  }

  v32 = v93;
  sub_24F928398();
  v27 = v98;
  sub_24F9282B8();
  v33 = v101 + 8;
  v34 = *(v101 + 8);
  v35 = v104;
  (v34)(v32, v104);
  if ((*(v96 + 6))(v27, 1, v97) == 1)
  {

    sub_24E601704(v98, &qword_27F2213B0);
    v36 = sub_24F92AC38();
    sub_24EA7D71C(&qword_27F2213B8, 255, MEMORY[0x277D22548]);
    swift_allocError();
    *v37 = 0x736D657469;
    v37[1] = 0xE500000000000000;
    v37[2] = v95;
    (*(*(v36 - 8) + 104))(v37, *MEMORY[0x277D22530], v36);
    swift_willThrow();

    v38 = v30;
    v39 = v35;
LABEL_8:
    (v34)(v38, v39);
    goto LABEL_9;
  }

  v94 = v31;
  v42 = v96;
  v43 = v92;
  v44 = v97;
  v45 = (*(v96 + 4))(v92, v98, v97);
  v98 = v34;
  MEMORY[0x28223BE20](v45);
  v46 = v105;
  *(&v85 - 2) = v105;
  type metadata accessor for ProductMediaItem();
  v93 = sub_24F92ABB8();
  v47 = v98;
  v42[1](v43, v44);
  v48 = v86;
  sub_24F928398();
  v97 = sub_24F928348();
  v27 = v49;
  v50 = v48;
  v51 = v47;
  (v47)(v50, v104);
  if (!v27)
  {

    v65 = sub_24F92AC38();
    sub_24EA7D71C(&qword_27F2213B8, 255, MEMORY[0x277D22548]);
    swift_allocError();
    *v66 = 0xD000000000000013;
    v66[1] = 0x800000024FA4DCE0;
    v66[2] = v95;
    (*(*(v65 - 8) + 104))(v66, *MEMORY[0x277D22530], v65);
    swift_willThrow();

    (v51)(v102, v104);
    v40 = v46;
    goto LABEL_10;
  }

  v96 = v27;
  v34 = v47;
  v52 = v104;
  v27 = 0x800000024FA4DD00;
  v53 = v91;
  v54 = v102;
  sub_24F928398();
  v92 = sub_24F928348();
  v55 = v54;
  v57 = v56;
  (v34)(v53, v52);
  if (!v57)
  {

    v67 = sub_24F92AC38();
    sub_24EA7D71C(&qword_27F2213B8, 255, MEMORY[0x277D22548]);
    swift_allocError();
    *v68 = 0xD000000000000017;
    v68[1] = 0x800000024FA4DD00;
    v68[2] = v95;
    (*(*(v67 - 8) + 104))(v68, *MEMORY[0x277D22530], v67);
    swift_willThrow();

    v38 = v55;
    v39 = v52;
    goto LABEL_8;
  }

  v101 = v33;
  v58 = v89;
  sub_24F928398();
  v59 = sub_24F928348();
  if (v60)
  {
    *&v108 = v59;
    *(&v108 + 1) = v60;
    sub_24F92C7F8();
    v61 = v104;
    v62 = v98;
    (v98)(v58, v104);
    v63 = v103;
    v64 = v90;
  }

  else
  {
    v69 = v87;
    sub_24F91F6A8();
    v70 = sub_24F91F668();
    v72 = v71;
    v64 = v90;
    (*(v88 + 8))(v69, v90);
    *&v108 = v70;
    *(&v108 + 1) = v72;
    sub_24F92C7F8();
    v61 = v104;
    v62 = v98;
    (v98)(v58, v104);
    v63 = v103;
  }

  v73 = v85;
  sub_24F928398();
  sub_24EA1C4E0();
  sub_24F928208();
  (v62)(v73, v61);
  v74 = v112;
  v27 = swift_allocObject();
  sub_24E60169C(v111, &v108, &qword_27F235830);
  if (*(&v109 + 1))
  {
    v75 = v109;
    *(v27 + 5) = v108;
    *(v27 + 6) = v75;
    *(v27 + 14) = v110;
  }

  else
  {
    v76 = v87;
    sub_24F91F6A8();
    v77 = sub_24F91F668();
    v79 = v78;
    (*(v88 + 8))(v76, v64);
    v106 = v77;
    v107 = v79;
    v63 = v103;
    sub_24F92C7F8();
    sub_24E601704(&v108, &qword_27F235830);
  }

  v80 = v93;
  (v98)(v102, v104);
  sub_24E601704(v111, &qword_27F235830);
  v81 = v99;
  v82 = v100;
  *(v27 + 2) = v80;
  *(v27 + 3) = v81;
  v83 = v97;
  *(v27 + 4) = v94;
  *(v27 + 5) = v83;
  v84 = v92;
  *(v27 + 6) = v96;
  *(v27 + 7) = v84;
  *(v27 + 8) = v57;
  *(v27 + 72) = v74;
  (*(v82 + 8))(v105, v63);
  return v27;
}

uint64_t sub_24EA7CFFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v33 = a2;
  v32 = a1;
  v35 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226720);
  v29 = *(v3 - 8);
  v30 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v28 - v4;
  v31 = sub_24F92AC38();
  v39 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v7 = (&v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_24F9285B8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24F928388();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ProductMediaItem();
  v16 = v12;
  v17 = v33;
  (*(v13 + 16))(v15, v32, v16);
  (*(v9 + 16))(v11, v17, v8);
  v18 = v34;
  result = ProductMediaItem.__allocating_init(deserializing:using:)(v15, v11);
  if (v18)
  {
    v20 = type metadata accessor for ProductMedia();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213BA0);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_24F93DE60;
    *(v21 + 32) = v18;
    *v7 = 0x736D657469;
    v7[1] = 0xE500000000000000;
    v7[2] = v20;
    v7[3] = v21;
    v22 = v31;
    (*(v39 + 104))(v7, *MEMORY[0x277D22540], v31);
    v23 = v18;
    sub_24F928548();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226728);
    sub_24F9285D8();
    (*(v29 + 8))(v5, v30);
    sub_24E60169C(v38, v36, &qword_27F226730);
    if (v37)
    {
      __swift_project_boxed_opaque_existential_1(v36, v37);
      sub_24EA7D71C(&qword_27F2213B8, 255, MEMORY[0x277D22548]);
      v24 = v22;
      v25 = swift_allocError();
      v26 = v39;
      (*(v39 + 16))(v27, v7, v24);
      sub_24F929EC8();

      sub_24E601704(v38, &qword_27F226730);
      (*(v26 + 8))(v7, v24);

      result = __swift_destroy_boxed_opaque_existential_1(v36);
    }

    else
    {

      sub_24E601704(v38, &qword_27F226730);
      (*(v39 + 8))(v7, v22);
      result = sub_24E601704(v36, &qword_27F226730);
    }

    *v35 = 0;
  }

  else
  {
    *v35 = result;
  }

  return result;
}

uint64_t ProductMedia.deinit()
{

  sub_24E6585F8(v0 + 80);
  return v0;
}

uint64_t ProductMedia.__deallocating_deinit()
{

  sub_24E6585F8(v0 + 80);

  return swift_deallocClassInstance();
}

void (*sub_24EA7D5B0@<X0>(uint64_t a1@<X0>, char *a2@<X1>, void (**a3)(char *, char *, uint64_t)@<X8>))(char *, char *, uint64_t)
{
  result = ProductMedia.__allocating_init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t _s12GameStoreKit12ProductMediaC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  v5 = *(a2 + 24);
  if ((sub_24F0CD880(*(v4 + 16), *(v5 + 16)) & 1) == 0)
  {
    return 0;
  }

  v6 = *(v5 + 56);
  if (*(v4 + 56))
  {
    if (!*(v5 + 56))
    {
      return 0;
    }
  }

  else
  {
    if (*(v4 + 48) != *(v5 + 48))
    {
      v6 = 1;
    }

    if (v6)
    {
      return 0;
    }
  }

  v8 = *(a1 + 16);
  v9 = *(a2 + 16);

  return sub_24EA16D54(v8, v9);
}

unint64_t sub_24EA7D680()
{
  result = qword_27F226710;
  if (!qword_27F226710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F226710);
  }

  return result;
}

uint64_t sub_24EA7D71C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t FramedMediaCaptionViewLayout.init(metrics:captionTextView:ordinalTextView:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(a1 + 208);
  *(a4 + 272) = *(a1 + 192);
  *(a4 + 288) = v6;
  *(a4 + 304) = *(a1 + 224);
  v7 = *(a1 + 144);
  *(a4 + 208) = *(a1 + 128);
  *(a4 + 224) = v7;
  v8 = *(a1 + 176);
  *(a4 + 240) = *(a1 + 160);
  *(a4 + 256) = v8;
  v9 = *(a1 + 80);
  *(a4 + 144) = *(a1 + 64);
  *(a4 + 160) = v9;
  v10 = *(a1 + 112);
  *(a4 + 176) = *(a1 + 96);
  *(a4 + 192) = v10;
  v11 = *(a1 + 16);
  *(a4 + 80) = *a1;
  *(a4 + 96) = v11;
  v12 = *(a1 + 48);
  *(a4 + 112) = *(a1 + 32);
  *(a4 + 128) = v12;
  sub_24E612C80(a2, a4 + 40);

  return sub_24E612C80(a3, a4);
}

uint64_t FramedMediaCaptionViewLayout.Metrics.init(topSpace:bottomSpace:ordinalAdjustmentSpace:captionMargin:ordinalVerticalOffset:ordinalMargin:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, double *a6@<X8>, double a7@<D0>, double a8@<D1>, double a9@<D2>, double a10@<D3>)
{
  sub_24E612C80(a1, a6);
  sub_24E612C80(a2, (a6 + 5));
  sub_24E612C80(a3, (a6 + 10));
  a6[15] = a7;
  a6[16] = a8;
  a6[17] = a9;
  a6[18] = a10;
  sub_24E612C80(a5, (a6 + 19));

  return sub_24E612C80(a4, (a6 + 24));
}

double FramedMediaCaptionViewLayout.measurements(fitting:in:)(double a1, double a2)
{
  v5 = sub_24F92CDB8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v2 + 40), *(v2 + 64));
  if (!sub_24F922438())
  {
    __swift_project_boxed_opaque_existential_1(v2, *(v2 + 24));
    if (!sub_24F922438())
    {
      return *MEMORY[0x277D22A78];
    }
  }

  __swift_project_boxed_opaque_existential_1(v2, *(v2 + 24));
  v9 = 0.0;
  if (sub_24F9221E8())
  {
    __swift_project_boxed_opaque_existential_1(v2, *(v2 + 24));
    sub_24F922298();
    v11 = v10;
    __swift_project_boxed_opaque_existential_1((v2 + 232), *(v2 + 256));
    sub_24E8ED7D8();
    sub_24F9223A8();
    v13 = v12;
    v14 = *(v6 + 8);
    v14(v8, v5);
    if (v11 + v13 <= a1)
    {
      v9 = v11 + v13;
    }

    else
    {
      v9 = a1;
    }

    __swift_project_boxed_opaque_existential_1((v2 + 272), *(v2 + 296));
    sub_24E8ED7D8();
    sub_24F9223A8();
    v14(v8, v5);
  }

  v15 = *(v2 + 208);
  v16 = *(v2 + 224);
  v17 = a1 - v15 - v16 - v9;
  __swift_project_boxed_opaque_existential_1((v2 + 40), *(v2 + 64));
  sub_24F922288();
  v21[0] = v18;
  *&v21[1] = a2;
  if (v16 + v15 + v9 + v17 <= a1)
  {
    v19 = v16 + v15 + v9 + v17;
  }

  else
  {
    v19 = a1;
  }

  __swift_project_boxed_opaque_existential_1((v2 + 80), *(v2 + 104));
  sub_24F9223C8();
  __swift_project_boxed_opaque_existential_1((v2 + 120), *(v2 + 144));
  sub_24F922398();
  return v19;
}

uint64_t FramedMediaCaptionViewLayout.placeChildren(relativeTo:in:)(void *a1, double a2, double a3, double a4, double a5)
{
  v6 = v5;
  v72 = a2;
  v73 = a3;
  v10 = sub_24F92CDB8();
  v11 = *(v10 - 8);
  *&v12 = MEMORY[0x28223BE20](v10).n128_u64[0];
  v14 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v5[25];
  v16 = v5[26];
  v17 = v5[27];
  v18 = v5[28];
  v19 = [a1 traitCollection];
  v20 = sub_24F92BF88();

  if (v20)
  {
    v21 = v18;
  }

  else
  {
    v21 = v16;
  }

  v74 = a4;
  v69 = a4 - v16 - v18;
  v67 = a5 - v15 - v17;
  __swift_project_boxed_opaque_existential_1(v6, *(v6 + 3));
  v22 = sub_24F9221E8();
  v70 = 0.0;
  v68 = v21;
  v23 = v21;
  v24 = v15;
  v25 = 0.0;
  v26 = 0.0;
  if (v22)
  {
    __swift_project_boxed_opaque_existential_1(v6, *(v6 + 3));
    v27 = v69;
    v28 = v67;
    sub_24F922288();
    v30 = v29;
    v32 = v31;
    __swift_project_boxed_opaque_existential_1(v6 + 10, *(v6 + 13));
    sub_24F9223C8();
    v34 = v33;
    __swift_project_boxed_opaque_existential_1(v6 + 34, *(v6 + 37));
    sub_24E8ED7D8();
    sub_24F9223A8();
    v36 = v35;
    (*(v11 + 8))(v14, v10);
    v75.origin.x = v68;
    v75.origin.y = v15;
    v75.size.width = v27;
    v75.size.height = v28;
    v23 = floor(CGRectGetMinX(v75));
    v24 = floor(v34 + v36);
    v25 = ceil(v30);
    v26 = ceil(v32);
  }

  v37 = v15;
  __swift_project_boxed_opaque_existential_1(v6, *(v6 + 3));
  v66 = a5;
  sub_24F92C1D8();
  sub_24F922228();
  v76.origin.x = v23;
  v76.size.height = v26;
  v38 = v24;
  v76.origin.y = v24;
  v39 = v25;
  v76.size.width = v25;
  height = v76.size.height;
  if (!CGRectIsEmpty(v76))
  {
    __swift_project_boxed_opaque_existential_1(v6 + 29, *(v6 + 32));
    sub_24E8ED7D8();
    sub_24F9223A8();
    v70 = v40;
    (*(v11 + 8))(v14, v10);
  }

  v41 = v68;
  v42 = v69;
  v77.origin.x = v68;
  v77.origin.y = v37;
  v77.size.width = v69;
  v43 = v67;
  v77.size.height = v67;
  CGRectGetWidth(v77);
  v78.origin.x = v23;
  v78.origin.y = v38;
  v78.size.width = v39;
  v78.size.height = height;
  CGRectGetWidth(v78);
  v64 = v23;
  v44 = v70;
  __swift_project_boxed_opaque_existential_1(v6 + 5, *(v6 + 8));
  v79.origin.x = v41;
  v79.origin.y = v37;
  v79.size.width = v42;
  v79.size.height = v43;
  CGRectGetHeight(v79);
  sub_24F922288();
  v46 = v45;
  v48 = v47;
  v68 = v50;
  v69 = v49;
  __swift_project_boxed_opaque_existential_1(v6 + 10, *(v6 + 13));
  v51 = v46;
  v65 = v46;
  v52 = v48;
  v67 = v48;
  sub_24F9223C8();
  v54 = v53;
  v80.origin.x = v64;
  v80.origin.y = v38;
  v80.size.width = v39;
  v80.size.height = height;
  v55 = v44 + floor(CGRectGetMaxX(v80));
  v56 = ceil(v51);
  v57 = ceil(v52);
  __swift_project_boxed_opaque_existential_1(v6 + 5, *(v6 + 8));
  v59 = v72;
  v58 = v73;
  v60 = v74;
  v61 = v66;
  sub_24F92C1D8();
  sub_24F922228();
  v81.origin.x = v59;
  v81.origin.y = v58;
  v81.size.width = v60;
  v81.size.height = v61;
  CGRectGetWidth(v81);
  v82.origin.x = v55;
  v82.origin.y = floor(v54);
  v82.size.width = v56;
  v82.size.height = v57;
  CGRectGetMaxY(v82);
  __swift_project_boxed_opaque_existential_1(v6 + 15, *(v6 + 18));
  sub_24F922398();
  return sub_24F922128();
}

__n128 __swift_memcpy232_8(uint64_t a1, __int128 *a2)
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
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[13];
  *(a1 + 224) = *(a2 + 28);
  *(a1 + 192) = v11;
  *(a1 + 208) = v12;
  *(a1 + 176) = result;
  return result;
}

uint64_t sub_24EA7E370(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 232))
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

uint64_t sub_24EA7E3B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0u;
    *(result + 216) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
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
      *(result + 232) = 1;
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

    *(result + 232) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id UIImageView.symbolConfiguration.getter()
{
  v1 = [v0 preferredSymbolConfiguration];

  return v1;
}

void UIImageView.symbolConfiguration.setter(void *a1)
{
  [v1 setPreferredSymbolConfiguration_];
}

void (*UIImageView.symbolConfiguration.modify(void *a1))(id *a1)
{
  a1[1] = v1;
  *a1 = [v1 preferredSymbolConfiguration];
  return sub_24EA7E51C;
}

void sub_24EA7E51C(id *a1)
{
  v1 = *a1;
  [a1[1] setPreferredSymbolConfiguration_];
}

void sub_24EA7E57C()
{
  v1 = [v0 layer];
  LayerVisualEffect.apply(to:)(v1);
}

id sub_24EA7E5F0()
{
  v1 = [*v0 image];

  return v1;
}

void sub_24EA7E628(void *a1)
{
  [*v1 setImage_];
}

void (*sub_24EA7E670(void *a1))(id *a1)
{
  v3 = *v1;
  a1[1] = *v1;
  *a1 = [v3 image];
  return sub_24EA7E6CC;
}

void sub_24EA7E6CC(id *a1)
{
  v1 = *a1;
  [a1[1] setImage_];
}

id (*sub_24EA7E734(void *a1))(uint64_t a1)
{
  v3 = *v1;
  a1[1] = *v1;
  [v3 alpha];
  *a1 = v4;
  return sub_24EA7E788;
}

void sub_24EA7E7B8()
{
  v1 = [*v0 layer];
  LayerVisualEffect.apply(to:)(v1);
}

id sub_24EA7E830()
{
  v1 = [*v0 preferredSymbolConfiguration];

  return v1;
}

void sub_24EA7E868(void *a1)
{
  [*v1 setPreferredSymbolConfiguration_];
}

void (*sub_24EA7E8B0(void *a1))(id *a1)
{
  v3 = *v1;
  a1[1] = *v1;
  *a1 = [v3 preferredSymbolConfiguration];
  return sub_24EA7E51C;
}

id sub_24EA7E90C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 preferredSymbolConfiguration];
  *a2 = result;
  return result;
}

uint64_t ShelfFooterStyle.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, uint64_t)@<X8>)
{
  v67 = a2;
  v66 = a3;
  v4 = sub_24F928388();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v65 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v64 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v64 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v64 - v14;
  v70 = a1;
  sub_24F928398();
  v16 = sub_24F928348();
  v18 = v17;
  v19 = *(v5 + 8);
  v71 = v4;
  v69 = v5 + 8;
  v19(v15, v4);
  if (!v18)
  {
    v66 = v19;
    v23 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    v25 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213BA0);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_24F93DE60;
    *(v26 + 32) = swift_allocError();
    *v27 = 1701869940;
    v27[1] = 0xE400000000000000;
    v27[2] = &type metadata for ShelfFooterStyle;
    v28 = *(*(v23 - 8) + 104);
    v28(v27, *MEMORY[0x277D22530], v23);
    *v25 = &type metadata for ShelfFooterStyle;
    v25[1] = v26;
    v28(v25, *MEMORY[0x277D22538], v23);
LABEL_15:
    swift_willThrow();
    v47 = sub_24F9285B8();
    (*(*(v47 - 8) + 8))(v67, v47);
    return v66(v70, v71);
  }

  if (v16 == 0x73656D6167 && v18 == 0xE500000000000000)
  {

LABEL_10:
    sub_24F928398();
    sub_24F928348();
    v30 = v29;
    v19(v12, v71);
    if (!v30)
    {
LABEL_14:
      v66 = v19;
      v38 = sub_24F92AC38();
      sub_24E8F2E6C();
      v68 = swift_allocError();
      v40 = v39;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213BA0);
      v41 = swift_allocObject();
      *(v41 + 16) = xmmword_24F9479A0;
      *(v41 + 32) = swift_allocError();
      *v42 = 0x4449656C646E7562;
      v42[1] = 0xE800000000000000;
      v42[2] = &type metadata for ShelfFooterStyle;
      v43 = *MEMORY[0x277D22530];
      v44 = *(*(v38 - 8) + 104);
      v44(v42, v43, v38);
      *(v41 + 40) = swift_allocError();
      *v45 = 0x6874646977;
      v45[1] = 0xE500000000000000;
      v45[2] = &type metadata for ShelfFooterStyle;
      v44(v45, v43, v38);
      *(v41 + 48) = swift_allocError();
      *v46 = 0x746867696568;
      v46[1] = 0xE600000000000000;
      v46[2] = &type metadata for ShelfFooterStyle;
      v44(v46, v43, v38);
      *v40 = &type metadata for ShelfFooterStyle;
      v40[1] = v41;
      v44(v40, *MEMORY[0x277D22538], v38);
      goto LABEL_15;
    }

    sub_24F928398();
    *&v31 = COERCE_DOUBLE(sub_24F928308());
    v33 = v32;
    v19(v9, v71);
    if (v33 & 1) != 0 || (v34 = v65, sub_24F928398(), *&v35 = COERCE_DOUBLE(sub_24F928308()), v37 = v36, v19(v34, v71), (v37))
    {

      goto LABEL_14;
    }

    v49 = *&v31;
    v50 = *&v35;
    v51 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
    v52 = sub_24F92B098();

    v53 = [v51 initWithBundleIdentifier_];

    v54 = [objc_opt_self() mainScreen];
    [v54 scale];
    v56 = v55;

    v57 = [objc_allocWithZone(MEMORY[0x277D1B1C8]) initWithSize:v49 scale:{v50, v56}];
    v58 = [v53 imageForDescriptor_];
    if (v58)
    {
      v59 = v58;
      if ([v58 placeholder])
      {
        v22 = [v53 prepareImageForDescriptor_];

        v59 = v22;
        if (!v22)
        {

          goto LABEL_25;
        }
      }

      v60 = [v59 CGImage];
      if (v60)
      {
        v61 = v60;
        [v59 scale];
        v22 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage:v61 scale:0 orientation:v62];

LABEL_25:
        goto LABEL_26;
      }
    }

    else
    {
    }

    v22 = 0;
    goto LABEL_26;
  }

  v21 = sub_24F92CE08();

  if (v21)
  {
    goto LABEL_10;
  }

  v22 = 0;
LABEL_26:
  v63 = sub_24F9285B8();
  (*(*(v63 - 8) + 8))(v67, v63);
  result = (v19)(v70, v71);
  *v66 = v22;
  return result;
}

uint64_t sub_24EA7F210(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24EA7F260(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_24EA7F2B4(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

GameStoreKit::ProductPageTheme_optional __swiftcall ProductPageTheme.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ProductPageTheme.rawValue.getter()
{
  v1 = 0x7265666E69;
  v2 = 0x65676E61726FLL;
  if (*v0 != 2)
  {
    v2 = 0x6574696877;
  }

  if (*v0)
  {
    v1 = 1702194274;
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

uint64_t sub_24EA7F3AC()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EA7F45C()
{
  sub_24F92B218();
}

uint64_t sub_24EA7F4F8()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

void sub_24EA7F5B0(uint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x7265666E69;
  v4 = 0xE600000000000000;
  v5 = 0x65676E61726FLL;
  if (*v1 != 2)
  {
    v5 = 0x6574696877;
    v4 = 0xE500000000000000;
  }

  if (*v1)
  {
    v3 = 1702194274;
    v2 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t ProductPageExpandedOfferDetails.title.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ProductPageExpandedOfferDetails.subtitle.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

void *ProductPageExpandedOfferDetails.__allocating_init(title:subtitle:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  return result;
}

void *ProductPageExpandedOfferDetails.init(title:subtitle:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = a4;
  return v4;
}

uint64_t ProductPageExpandedOfferDetails.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  ProductPageExpandedOfferDetails.init(deserializing:using:)(a1, a2);
  return v4;
}

void *ProductPageExpandedOfferDetails.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = v2;
  v28 = a2;
  v26 = *v2;
  v27 = v3;
  v6 = sub_24F928388();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v26 - v11;
  sub_24F928398();
  v13 = sub_24F928348();
  v15 = v14;
  v16 = *(v7 + 8);
  v16(v12, v6);
  if (v15)
  {
    v4[2] = v13;
    v4[3] = v15;
    sub_24F928398();
    v17 = sub_24F928348();
    v19 = v18;
    v20 = sub_24F9285B8();
    (*(*(v20 - 8) + 8))(v28, v20);
    v16(a1, v6);
    v16(v9, v6);
    v4[4] = v17;
    v4[5] = v19;
  }

  else
  {
    v21 = sub_24F92AC38();
    sub_24EA849AC(&qword_27F2213B8, 255, MEMORY[0x277D22548]);
    swift_allocError();
    *v22 = 0x656C746974;
    v23 = v26;
    v22[1] = 0xE500000000000000;
    v22[2] = v23;
    (*(*(v21 - 8) + 104))(v22, *MEMORY[0x277D22530], v21);
    swift_willThrow();
    v24 = sub_24F9285B8();
    (*(*(v24 - 8) + 8))(v28, v24);
    v16(a1, v6);
    type metadata accessor for ProductPageExpandedOfferDetails();
    swift_deallocPartialClassInstance();
  }

  return v4;
}

uint64_t ProductPageExpandedOfferDetails.deinit()
{

  return v0;
}

uint64_t ProductPageExpandedOfferDetails.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void *sub_24EA7FAE8@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for ProductPageExpandedOfferDetails();
  v7 = swift_allocObject();
  result = ProductPageExpandedOfferDetails.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_24EA7FBE4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC12GameStoreKit11ProductPage_media;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

void *ProductPage.pageTopBackgroundColor.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_pageTopBackgroundColor);
  v2 = v1;
  return v1;
}

void *ProductPage.pageBottomBackgroundColor.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_pageBottomBackgroundColor);
  v2 = v1;
  return v1;
}

uint64_t ProductPage.askToBuy.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_askToBuy);
  v3 = *(v1 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_askToBuy + 8);
  v4 = *(v1 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_askToBuy + 16);
  v5 = *(v1 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_askToBuy + 24);
  v6 = *(v1 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_askToBuy + 32);
  v7 = *(v1 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_askToBuy + 40);
  v8 = *(v1 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_askToBuy + 48);
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  return sub_24E901B80(v2, v3, v4, v5);
}

uint64_t ProductPage.mediaSectionTitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_mediaSectionTitle);

  return v1;
}

double sub_24EA7FD90@<D0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 240);
  if (v2)
  {
    sub_24E60169C(v2 + 144, a1, &qword_27F2129B0);
  }

  else
  {
    result = 0.0;
    *a1 = 0u;
    a1[1] = 0u;
  }

  return result;
}

uint64_t ProductPage.regularPriceFormatted.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_regularPriceFormatted);

  return v1;
}

uint64_t ProductPage.updateBuyParams.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_updateBuyParams);

  return v1;
}

uint64_t sub_24EA7FF10(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC12GameStoreKit11ProductPage_shelfMapping;
  swift_beginAccess();
  v6 = *(v2 + v5);
  if (!*(v6 + 16))
  {
    return 0;
  }

  v7 = sub_24E76D644(a1, a2);
  if (v8)
  {
    v9 = *(*(v6 + 56) + 8 * v7);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t sub_24EA7FFB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = OBJC_IVAR____TtC12GameStoreKit11ProductPage_shelfMapping;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v3 + v7);
  *(v3 + v7) = 0x8000000000000000;
  sub_24E81E6DC(a3, a1, a2, isUniquelyReferenced_nonNull_native);

  *(v3 + v7) = v10;
  return swift_endAccess();
}

uint64_t sub_24EA80068()
{
  v12 = MEMORY[0x277D84FA0];
  v1 = OBJC_IVAR____TtC12GameStoreKit11ProductPage_shelfMapping;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;

  for (i = 0; v5; result = sub_24ED7E294(&v11, *(*(*(v2 + 56) + ((v9 << 9) | (8 * v10))) + 16)))
  {
    v9 = i;
LABEL_9:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
  }

  while (1)
  {
    v9 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return v12;
    }

    v5 = *(v2 + 64 + 8 * v9);
    ++i;
    if (v5)
    {
      i = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t ProductPage.pageMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit11ProductPage_pageMetrics;
  v4 = sub_24F928818();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductPage.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v246 = a2;
  v255 = a1;
  v207 = sub_24F928818();
  v206 = *(v207 - 8);
  MEMORY[0x28223BE20](v207);
  v235 = v204 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F221C40);
  MEMORY[0x28223BE20](v5 - 8);
  v238 = v204 - v6;
  v240 = sub_24F928E68();
  v239 = *(v240 - 8);
  MEMORY[0x28223BE20](v240);
  v217 = v204 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v218 = v204 - v9;
  v10 = sub_24F9285B8();
  v245 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = v204 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v211 = v204 - v14;
  MEMORY[0x28223BE20](v15);
  v209 = v204 - v16;
  MEMORY[0x28223BE20](v17);
  v234 = v204 - v18;
  MEMORY[0x28223BE20](v19);
  v244 = v204 - v20;
  MEMORY[0x28223BE20](v21);
  v23 = v204 - v22;
  MEMORY[0x28223BE20](v24);
  v252 = v204 - v25;
  v26 = sub_24F928388();
  v248 = v26;
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v214 = v204 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v213 = v204 - v30;
  MEMORY[0x28223BE20](v31);
  v212 = v204 - v32;
  MEMORY[0x28223BE20](v33);
  v210 = v204 - v34;
  MEMORY[0x28223BE20](v35);
  v208 = v204 - v36;
  MEMORY[0x28223BE20](v37);
  v205 = v204 - v38;
  MEMORY[0x28223BE20](v39);
  v233 = v204 - v40;
  MEMORY[0x28223BE20](v41);
  v237 = v204 - v42;
  MEMORY[0x28223BE20](v43);
  v243 = v204 - v44;
  MEMORY[0x28223BE20](v45);
  v47 = v204 - v46;
  v48 = MEMORY[0x277D84F90];
  v241 = OBJC_IVAR____TtC12GameStoreKit11ProductPage_media;
  *(v2 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_media) = MEMORY[0x277D84F90];
  v49 = OBJC_IVAR____TtC12GameStoreKit11ProductPage_shelfMapping;
  v50 = sub_24E609890(v48);
  v242 = v49;
  *(v3 + v49) = v50;
  sub_24F928398();
  LOBYTE(v49) = sub_24F928278();
  v215 = v27;
  v249 = *(v27 + 8);
  v250 = v27 + 8;
  v249(v47, v26);
  *(v3 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_isComplete) = v49 & 1;
  v216 = v12;
  if (v49)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221570);
    v51 = swift_allocObject();
    *(v51 + 16) = v48;
    v257 = v51;
    if (qword_27F2105F0 != -1)
    {
      swift_once();
    }

    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221578);
    __swift_project_value_buffer(v52, qword_27F22D8D8);
    sub_24F928528();
  }

  else
  {
    if (qword_27F2105F0 != -1)
    {
      swift_once();
    }

    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221578);
    __swift_project_value_buffer(v53, qword_27F22D8D8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221570);
    sub_24F928538();
  }

  v54 = v243;
  v55 = v252;
  (*(v245 + 32))(v252, v23, v10);
  v56 = type metadata accessor for Action();
  sub_24F928398();
  v57 = static Action.tryToMakeInstance(byDeserializing:using:)(v54, v55);
  v254 = v10;
  v58 = v248;
  v59 = v249;
  (v249)(v54);
  v60 = v247;
  v232 = OBJC_IVAR____TtC12GameStoreKit11ProductPage_shareAction;
  *(v247 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_shareAction) = v57;
  v61 = v60;
  sub_24F928398();
  v62 = v252;
  v63 = static Action.tryToMakeInstance(byDeserializing:using:)(v54, v252);
  v59(v54, v58);
  v231 = OBJC_IVAR____TtC12GameStoreKit11ProductPage_developerAction;
  *(v61 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_developerAction) = v63;
  sub_24F928398();
  v204[1] = v56;
  v64 = static Action.tryToMakeInstance(byDeserializing:using:)(v54, v62);
  v59(v54, v58);
  v230 = OBJC_IVAR____TtC12GameStoreKit11ProductPage_ageRatingAction;
  *(v61 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_ageRatingAction) = v64;
  sub_24F928398();
  sub_24EA848B8();
  sub_24F928208();
  v59(v54, v58);
  *(v61 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_uberStyle) = v257;
  v65 = v61;
  v66 = type metadata accessor for Artwork();
  sub_24F928398();
  v67 = *(v245 + 16);
  v253 = v245 + 16;
  v68 = v244;
  v69 = v252;
  v70 = v254;
  v67(v244, v252, v254);
  v71 = sub_24EA849AC(&qword_27F219660, 255, type metadata accessor for Artwork);
  v260 = v66;
  v256 = v71;
  sub_24F929548();
  v229 = OBJC_IVAR____TtC12GameStoreKit11ProductPage_uberArtwork;
  *(v65 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_uberArtwork) = v257;
  sub_24F928398();
  v67(v68, v69, v70);
  sub_24F929548();
  v228 = OBJC_IVAR____TtC12GameStoreKit11ProductPage_uberArtworkForCompactDisplay;
  v72 = v65;
  *(v65 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_uberArtworkForCompactDisplay) = v257;
  type metadata accessor for Video();
  sub_24F928398();
  v73 = v252;
  v67(v68, v252, v254);
  v251 = v67;
  sub_24EA849AC(&qword_27F221590, 255, type metadata accessor for Video);
  v74 = v68;
  v75 = v254;
  sub_24F929548();
  v227 = OBJC_IVAR____TtC12GameStoreKit11ProductPage_uberVideo;
  *(v72 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_uberVideo) = v257;
  sub_24F928398();
  v67(v74, v73, v75);
  sub_24F929548();
  v226 = OBJC_IVAR____TtC12GameStoreKit11ProductPage_logoArtwork;
  *(v72 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_logoArtwork) = v257;
  sub_24F928398();
  v76 = v251;
  v251(v74, v73, v75);
  sub_24F929548();
  v225 = OBJC_IVAR____TtC12GameStoreKit11ProductPage_navigationBarIconArtwork;
  *(v72 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_navigationBarIconArtwork) = v257;
  sub_24F928398();
  v76(v74, v73, v75);
  type metadata accessor for Badge();
  sub_24EA849AC(&qword_27F2144A0, 255, type metadata accessor for Badge);
  v77 = sub_24F92B698();
  v224 = OBJC_IVAR____TtC12GameStoreKit11ProductPage_badges;
  *(v72 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_badges) = v77;
  type metadata accessor for ProductPageExpandedOfferDetails();
  sub_24F928398();
  v76(v74, v73, v75);
  sub_24EA849AC(&qword_27F226740, v78, type metadata accessor for ProductPageExpandedOfferDetails);
  sub_24F929548();
  v223 = OBJC_IVAR____TtC12GameStoreKit11ProductPage_expandedOfferDetails;
  *(v72 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_expandedOfferDetails) = v257;
  sub_24F928398();
  v79 = sub_24F928348();
  v81 = v80;
  v82 = v248;
  v83 = v249;
  v249(v54, v248);
  v84 = (v72 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_regularPriceFormatted);
  *v84 = v79;
  v84[1] = v81;
  v222 = v84;
  sub_24F928398();
  sub_24EA8490C();
  sub_24F928208();
  v83(v54, v82);
  *(v72 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_theme) = v257;
  sub_24F928398();
  v85 = sub_24F928258();
  LOBYTE(v81) = v86;
  v83(v54, v82);
  v87 = v72 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_externalVersionIdentifier;
  *v87 = v85;
  *(v87 + 8) = v81 & 1;
  sub_24F928398();
  v88 = sub_24F928348();
  v90 = v89;
  v83(v54, v82);
  v91 = (v72 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_updateBuyParams);
  *v91 = v88;
  v91[1] = v90;
  v221 = v91;
  sub_24F928398();
  v92 = JSONObject.appStoreColor.getter();
  v83(v54, v82);
  v220 = OBJC_IVAR____TtC12GameStoreKit11ProductPage_pageTopBackgroundColor;
  *(v72 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_pageTopBackgroundColor) = v92;
  sub_24F928398();
  v93 = JSONObject.appStoreColor.getter();
  v83(v54, v82);
  v219 = OBJC_IVAR____TtC12GameStoreKit11ProductPage_pageBottomBackgroundColor;
  *(v72 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_pageBottomBackgroundColor) = v93;
  sub_24F928398();
  LOBYTE(v93) = sub_24F928278();
  v83(v54, v82);
  *(v72 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_hasDarkUserInterfaceStyle) = v93;
  sub_24F928398();
  v94 = v244;
  v95 = v252;
  v96 = v254;
  v97 = v251;
  v251(v244, v252, v254);
  type metadata accessor for ProductMedia();
  sub_24EA849AC(&qword_27F226330, 255, type metadata accessor for ProductMedia);
  v98 = sub_24F92B698();
  v99 = v241;
  swift_beginAccess();
  *(v72 + v99) = v98;

  sub_24F928398();
  v100 = v94;
  v101 = v94;
  v102 = v95;
  v103 = v95;
  v104 = v96;
  v97(v101, v102, v96);
  type metadata accessor for ProductPageSection();
  sub_24EA849AC(&qword_27F226750, 255, type metadata accessor for ProductPageSection);
  v105 = v100;
  v106 = sub_24F92B698();
  sub_24F928398();
  v251(v100, v103, v104);
  v260 = sub_24F92B698();
  v107 = v237;
  sub_24F928398();
  v108 = v238;
  sub_24F9281F8();
  v249(v107, v248);
  v109 = v239;
  v110 = v240;
  if ((v239[6])(v108, 1, v240) == 1)
  {
    sub_24E601704(v108, qword_27F221C40);
    v111 = sub_24E609890(MEMORY[0x277D84F90]);
  }

  else
  {
    v112 = v218;
    (v109[4])(v218, v108, v110);
    (v109[2])(v217, v112, v110);
    v251(v105, v252, v254);
    type metadata accessor for Shelf();
    sub_24EA849AC(&qword_27F2265E0, 255, type metadata accessor for Shelf);
    v111 = sub_24F92AE68();
    (v109[1])(v112, v110);
  }

  v113 = v247;
  v114 = v242;
  swift_beginAccess();
  *(v113 + v114) = v111;

  swift_beginAccess();
  v256 = *(v113 + v114);
  v257 = MEMORY[0x277D84F90];
  if (v106 >> 62)
  {
    goto LABEL_55;
  }

  v115 = *((v106 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_13:
  swift_bridgeObjectRetain_n();
  v116 = MEMORY[0x277D84F90];
  if (v115)
  {
    v117 = 0;
    v113 = v106 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((v106 & 0xC000000000000001) != 0)
      {
        v118 = MEMORY[0x253052270](v117, v106);
        v119 = v117 + 1;
        if (__OFADD__(v117, 1))
        {
LABEL_30:
          __break(1u);
LABEL_31:
          v123 = v257;
          v113 = v247;
          v116 = MEMORY[0x277D84F90];
          goto LABEL_33;
        }
      }

      else
      {
        if (v117 >= *((v106 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_54:
          __break(1u);
LABEL_55:
          v115 = sub_24F92C738();
          goto LABEL_13;
        }

        v118 = *(v106 + 8 * v117 + 32);

        v119 = v117 + 1;
        if (__OFADD__(v117, 1))
        {
          goto LABEL_30;
        }
      }

      if (*(v118 + 16) > 2u)
      {
        break;
      }

      v120 = sub_24F92CE08();

      if ((v120 & 1) == 0)
      {
        goto LABEL_27;
      }

      v121 = *(v118 + 32);
      if (v121)
      {
        goto LABEL_25;
      }

LABEL_15:

LABEL_16:
      ++v117;
      if (v119 == v115)
      {
        goto LABEL_31;
      }
    }

    v121 = *(v118 + 32);
    if (!v121)
    {
      goto LABEL_15;
    }

LABEL_25:
    if (*(v256 + 16))
    {
      sub_24E76D644(*(v118 + 24), v121);
      if (v122)
      {
LABEL_27:
        sub_24F92C948();
        sub_24F92C988();
        sub_24F92C998();
        sub_24F92C958();
        goto LABEL_16;
      }
    }

    goto LABEL_15;
  }

  v123 = MEMORY[0x277D84F90];
LABEL_33:

  v240 = OBJC_IVAR____TtC12GameStoreKit11ProductPage_purchasedOrdering;
  *(v113 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_purchasedOrdering) = v123;
  v257 = v116;
  v124 = v260;
  if (v260 >> 62)
  {
    v125 = sub_24F92C738();
    v124 = v260;
    if (v125)
    {
      goto LABEL_35;
    }

LABEL_57:
    v133 = MEMORY[0x277D84F90];
    goto LABEL_58;
  }

  v125 = *((v260 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v125)
  {
    goto LABEL_57;
  }

LABEL_35:
  v106 = 0;
  v126 = v124 & 0xC000000000000001;
  v127 = v124 & 0xFFFFFFFFFFFFFF8;
  v113 = v256;
  while (v126)
  {
    v128 = MEMORY[0x253052270](v106, v124);
    v129 = v106 + 1;
    if (__OFADD__(v106, 1))
    {
      goto LABEL_51;
    }

LABEL_41:
    if (*(v128 + 16) > 2u)
    {

      v131 = *(v128 + 32);
      if (!v131)
      {
        goto LABEL_36;
      }

LABEL_46:
      if (*(v113 + 16))
      {
        sub_24E76D644(*(v128 + 24), v131);
        if (v132)
        {
LABEL_48:
          sub_24F92C948();
          sub_24F92C988();
          sub_24F92C998();
          sub_24F92C958();
          goto LABEL_37;
        }
      }

      goto LABEL_36;
    }

    v130 = sub_24F92CE08();

    if ((v130 & 1) == 0)
    {
      goto LABEL_48;
    }

    v131 = *(v128 + 32);
    if (v131)
    {
      goto LABEL_46;
    }

LABEL_36:

LABEL_37:
    ++v106;
    v124 = v260;
    if (v129 == v125)
    {
      goto LABEL_52;
    }
  }

  if (v106 >= *(v127 + 16))
  {
    goto LABEL_54;
  }

  v128 = *(v124 + 8 * v106 + 32);

  v129 = v106 + 1;
  if (!__OFADD__(v106, 1))
  {
    goto LABEL_41;
  }

LABEL_51:
  __break(1u);
LABEL_52:
  v133 = v257;
  v113 = v247;
LABEL_58:

  v260 = OBJC_IVAR____TtC12GameStoreKit11ProductPage_notPurchasedOrdering;
  *(v113 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_notPurchasedOrdering) = v133;
  v134 = v113 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_askToBuy;
  *v134 = 0u;
  *(v134 + 16) = 0u;
  *(v134 + 32) = 0u;
  *(v134 + 48) = 0;
  v135 = v243;
  sub_24F928398();
  v136 = sub_24F928348();
  v138 = v137;
  v139 = v248;
  v140 = v249;
  v249(v135, v248);
  v141 = (v113 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_mediaSectionTitle);
  *v141 = v136;
  v141[1] = v138;
  v239 = v141;
  sub_24F928398();
  v251(v234, v246, v254);
  v142 = v235;
  v143 = v236;
  sub_24F928788();
  if (!v143)
  {
    (*(v206 + 32))(v113 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_pageMetrics, v142, v207);
    type metadata accessor for PageRenderMetricsEvent();
    v260 = 0;
    sub_24F928398();
    v146 = v244;
    v147 = v246;
    v148 = v251;
    v251(v244, v246, v254);
    sub_24EA849AC(&qword_27F2218C0, 255, type metadata accessor for PageRenderMetricsEvent);
    sub_24F929548();
    *(v113 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_pageRenderEvent) = v257;
    type metadata accessor for OfferDisplayProperties();
    sub_24F928398();
    v149 = v147;
    v150 = v254;
    v148(v146, v149, v254);
    sub_24EA849AC(&qword_27F225B10, 255, type metadata accessor for OfferDisplayProperties);
    sub_24F929548();
    *(v113 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_titleOfferDisplayProperties) = v257;
    v151 = v205;
    sub_24F928398();
    v152 = v209;
    v153 = v246;
    v251(v209, v246, v150);
    type metadata accessor for Banner();
    swift_allocObject();
    v154 = v260;
    v155 = Banner.init(deserializing:using:)(v151, v152);
    v156 = v154;
    if (v154)
    {

      v155 = 0;
      v156 = 0;
    }

    v157 = v249;
    v158 = v211;
    v159 = v208;
    *(v113 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_banner) = v155;
    sub_24F928398();
    v251(v158, v153, v254);
    swift_allocObject();
    v160 = Banner.init(deserializing:using:)(v159, v158);
    v161 = v156;
    if (v156)
    {

      v160 = 0;
      v161 = 0;
    }

    v162 = v212;
    v163 = v210;
    *(v113 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_secondaryBanner) = v160;
    sub_24F928398();
    v164 = static Action.makeInstance(byDeserializing:using:)(v163, v153);
    if (v161)
    {

      v165 = 0;
    }

    else
    {
      v165 = v164;
    }

    v139 = v248;
    v157(v163, v248);
    *(v247 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_fullProductFetchedAction) = v165;
    v166 = v255;
    sub_24F928398();
    v167 = static Action.makeInstance(byDeserializing:using:)(v162, v153);
    v168 = v153;
    v260 = 0;
    v169 = v249;
    v249(v162, v139);
    v170 = v247;
    *(v247 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_appPromotionDetailPageAction) = v167;
    type metadata accessor for PageRefreshPolicy(0);
    sub_24F928398();
    v171 = v168;
    v172 = v254;
    v251(v244, v171, v254);
    sub_24EA849AC(&qword_27F2218B8, 255, type metadata accessor for PageRefreshPolicy);
    sub_24F929548();
    *(v170 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_pageRefreshPolicy) = v257;
    v173 = v213;
    sub_24F928398();
    LOBYTE(v167) = sub_24F928278();
    v169(v173, v139);
    *(v170 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_alwaysAllowReviews) = v167 & 1;
    v174 = v214;
    (*(v215 + 16))(v214, v166, v139);
    v175 = v216;
    v176 = v252;
    v251(v216, v252, v172);
    v177 = v260;
    v178 = Lockup.init(deserializing:using:)(v174, v175);
    if (v177)
    {
      swift_bridgeObjectRelease_n();
      v179 = *(v245 + 8);
      v179(v246, v172);
      v249(v166, v139);
      v179(v176, v172);
      return v139;
    }

    v139 = v178;
    v260 = 0;
    v180 = v246;
    if (*(v178 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_isComplete) == 1)
    {
      v181 = qword_27F2105F0;

      if (v181 != -1)
      {
        swift_once();
      }

      v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221578);
      __swift_project_value_buffer(v182, qword_27F22D8D8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221570);
      sub_24F9285C8();
      if (v257)
      {

        sub_24ECDF110();
      }
    }

    else
    {
    }

    v183 = *(v139 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_banner);
    if (v183)
    {
      v184 = *(v139 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_secondaryBanner);
      if (v184)
      {
        v185 = qword_27F2105D0;

        if (v185 != -1)
        {
          swift_once();
        }

        v253 = sub_24F92AAE8();
        v251 = __swift_project_value_buffer(v253, qword_27F22D7F8);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
        sub_24F928468();
        *(swift_allocObject() + 16) = xmmword_24F942000;
        sub_24F928448();
        sub_24F9283A8();
        v187 = *(v183 + 16);
        v186 = *(v183 + 24);
        v259 = MEMORY[0x277D837D0];
        v257 = v187;
        v258 = v186;

        sub_24F928438();
        sub_24E601704(&v257, &qword_27F2129B0);
        sub_24F9283A8();
        v189 = *(v184 + 16);
        v188 = *(v184 + 24);
        v259 = MEMORY[0x277D837D0];
        v257 = v189;
        v258 = v188;

        sub_24F928438();
        sub_24E601704(&v257, &qword_27F2129B0);
        sub_24F92A588();
        swift_bridgeObjectRelease_n();
      }

      else
      {
        v195 = qword_27F2105D0;

        if (v195 != -1)
        {
          swift_once();
        }

        v196 = sub_24F92AAE8();
        __swift_project_value_buffer(v196, qword_27F22D7F8);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
        sub_24F928468();
        *(swift_allocObject() + 16) = xmmword_24F9479A0;
        sub_24F928448();
        sub_24F9283A8();
        v198 = *(v183 + 16);
        v197 = *(v183 + 24);
        v259 = MEMORY[0x277D837D0];
        v257 = v198;
        v258 = v197;

        sub_24F928438();
        sub_24E601704(&v257, &qword_27F2129B0);
        sub_24F92A588();
        swift_bridgeObjectRelease_n();
      }
    }

    else
    {
      v190 = *(v139 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_secondaryBanner);
      if (!v190)
      {

        v199 = v255;
        goto LABEL_88;
      }

      v191 = qword_27F2105D0;

      if (v191 != -1)
      {
        swift_once();
      }

      v192 = sub_24F92AAE8();
      __swift_project_value_buffer(v192, qword_27F22D7F8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
      sub_24F928468();
      *(swift_allocObject() + 16) = xmmword_24F9479A0;
      sub_24F928448();
      sub_24F9283A8();
      v194 = *(v190 + 16);
      v193 = *(v190 + 24);
      v259 = MEMORY[0x277D837D0];
      v257 = v194;
      v258 = v193;

      sub_24F928438();
      sub_24E601704(&v257, &qword_27F2129B0);
      sub_24F92A588();
      swift_bridgeObjectRelease_n();
    }

    v199 = v255;
    v180 = v246;
LABEL_88:
    v200 = v248;

    v201 = *(v245 + 8);
    v202 = v254;
    v201(v180, v254);
    v249(v199, v200);
    v201(v252, v202);

    return v139;
  }

  swift_bridgeObjectRelease_n();
  v144 = *(v245 + 8);
  v145 = v254;
  v144(v246, v254);
  v140(v255, v139);
  v144(v252, v145);

  sub_24E901BD0(*v134, *(v134 + 8), *(v134 + 16), *(v134 + 24));

  type metadata accessor for ProductPage();
  swift_deallocPartialClassInstance();
  return v139;
}

uint64_t ProductPage.__allocating_init(adamId:bundleId:icon:heading:title:subtitle:ordinal:rating:buttonAction:offerDisplayProperties:titleOfferDisplayProperties:clickAction:shareAction:developerAction:ageRatingAction:uberArtwork:uberArtworkForCompactDisplay:uberVideo:uberStyle:logoArtwork:navigationBarIconArtwork:media:badges:isComplete:pageTopBackgroundColor:pageBottomBackgroundColor:hasDarkUserInterfaceStyle:purchasedOrdering:notPurchasedOrdering:shelfMapping:askToBuy:mediaSectionTitle:pageMetrics:pageRenderEvent:expandedOfferDetails:regularPriceFormatted:theme:externalVersionIdentifier:updateBuyParams:banner:secondaryBanner:descriptionHeader:description:fullProductFetchedAction:appPromotionDetailPageAction:pageRefreshPolicy:alwaysAllowReviews:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, unsigned __int8 a29, void *a30, void *a31, unsigned __int8 a32, uint64_t a33, uint64_t a34, unint64_t a35, __int128 *a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, unsigned __int8 *a44, uint64_t a45, unsigned __int8 a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, unsigned __int8 a57)
{
  v149 = a8;
  v148 = a7;
  v147 = a6;
  v146 = a5;
  v145 = a4;
  v144 = a3;
  v143 = a2;
  v135 = a57;
  v142 = a56;
  v141 = a55;
  v140 = a54;
  v139 = a50;
  v154 = a49;
  v133 = a48;
  v132 = a47;
  v131 = a46;
  v130 = a45;
  v129 = a42;
  v151 = a41;
  v150 = a40;
  v163 = a39;
  v128 = a38;
  v127 = a37;
  v161 = a31;
  v162 = a30;
  v160 = a23;
  v164 = a22;
  v156 = a16;
  v126 = a34;
  v125 = a33;
  LODWORD(v124) = a32;
  LODWORD(v122) = a29;
  v121 = a28;
  v158 = a26;
  v120 = a27;
  v123 = a43;
  v119 = a35;
  v157 = a25;
  v138 = a53;
  v109 = sub_24F91F6B8();
  v108 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v107 = &v107 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v59 - 8);
  v155 = &v107 - v60;

  v61 = swift_allocObject();
  v62 = a1[1];
  v137 = *a1;
  v136 = v62;
  v63 = *a24;
  v64 = *a36;
  v115 = a36[1];
  v116 = v64;
  v65 = *(a36 + 5);
  v114 = *(a36 + 4);
  v113 = v65;
  v112 = *(a36 + 6);
  v117 = *a44;
  v66 = MEMORY[0x277D84F90];
  v67 = OBJC_IVAR____TtC12GameStoreKit11ProductPage_media;
  v68 = (v61 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_shelfMapping);
  *(v61 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_media) = MEMORY[0x277D84F90];
  v69 = sub_24E609890(v66);
  v111 = v68;
  v110 = v69;
  *v68 = v69;
  v159 = a18;
  *(v61 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_shareAction) = a18;
  v70 = v157;
  *(v61 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_developerAction) = a19;
  v71 = v119;
  *(v61 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_ageRatingAction) = a20;
  *(v61 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_uberArtwork) = a21;
  *(v61 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_uberArtworkForCompactDisplay) = v164;
  *(v61 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_uberVideo) = v160;
  *(v61 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_uberStyle) = v63;
  v72 = v158;
  *(v61 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_logoArtwork) = v70;
  *(v61 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_navigationBarIconArtwork) = v72;
  swift_beginAccess();
  *(v61 + v67) = v120;
  v73 = v162;
  v74 = v121;
  if (!v121)
  {
    v74 = v66;
  }

  *(v61 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_badges) = v74;
  v75 = v161;
  *(v61 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_isComplete) = v122;
  *(v61 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_pageTopBackgroundColor) = v73;
  *(v61 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_pageBottomBackgroundColor) = v75;
  *(v61 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_hasDarkUserInterfaceStyle) = v124;
  *(v61 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_purchasedOrdering) = v125;
  *(v61 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_notPurchasedOrdering) = v126;
  v153 = a20;
  v152 = a21;
  v134 = a19;
  v76 = v75;

  v77 = v73;
  if (!v71)
  {
    v71 = sub_24E609890(MEMORY[0x277D84F90]);
  }

  v126 = a17;
  v125 = a15;
  v124 = a14;
  v122 = a13;
  v119 = a12;
  v118 = a11;
  v121 = a10;
  v120 = a9;
  v78 = v111;
  swift_beginAccess();
  *v78 = v71;

  v79 = v61 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_askToBuy;
  v80 = v115;
  *v79 = v116;
  *(v79 + 16) = v80;
  v81 = v113;
  *(v79 + 32) = v114;
  *(v79 + 40) = v81;
  *(v79 + 48) = v112;
  v82 = (v61 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_mediaSectionTitle);
  v83 = v128;
  *v82 = v127;
  v82[1] = v83;
  v84 = OBJC_IVAR____TtC12GameStoreKit11ProductPage_pageMetrics;
  v85 = sub_24F928818();
  v127 = *(v85 - 8);
  v86 = *(v127 + 16);
  v128 = v85;
  v86(v61 + v84, v163);
  *(v61 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_pageRenderEvent) = v150;
  *(v61 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_expandedOfferDetails) = v151;
  v87 = (v61 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_regularPriceFormatted);
  v88 = v123;
  *v87 = v129;
  v87[1] = v88;
  *(v61 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_theme) = v117;
  v89 = v61 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_externalVersionIdentifier;
  *v89 = v130;
  *(v89 + 8) = v131 & 1;
  v90 = (v61 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_updateBuyParams);
  v91 = v133;
  *v90 = v132;
  v90[1] = v91;
  *(v61 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_titleOfferDisplayProperties) = v156;
  *(v61 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_banner) = v154;
  *(v61 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_secondaryBanner) = v139;
  *(v61 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_fullProductFetchedAction) = v140;
  *(v61 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_appPromotionDetailPageAction) = v141;
  *(v61 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_pageRefreshPolicy) = v142;
  *(v61 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_alwaysAllowReviews) = v135 & 1;
  v92 = sub_24F929608();
  memset(v170, 0, sizeof(v170));
  v171 = 0;
  (*(*(v92 - 8) + 56))(v155, 1, 1, v92);
  *(v61 + 424) = 4;
  sub_24E60169C(v170, &v167, &qword_27F235830);
  if (*(&v168 + 1))
  {
    v93 = v168;
    *(v61 + 448) = v167;
    *(v61 + 464) = v93;
    *(v61 + 480) = v169;
  }

  else
  {

    v94 = v107;
    sub_24F91F6A8();
    v95 = sub_24F91F668();
    v97 = v96;
    (*(v108 + 8))(v94, v109);
    v165 = v95;
    v166 = v97;
    sub_24F92C7F8();
    sub_24E601704(&v167, &qword_27F235830);
  }

  v98 = v155;
  sub_24E60169C(v155, v61 + OBJC_IVAR____TtC12GameStoreKit6Lockup_impressionMetrics, &qword_27F213E68);

  v99 = v136;
  *(v61 + 16) = v137;
  *(v61 + 24) = v99;
  v100 = v144;
  *(v61 + 32) = v143;
  *(v61 + 40) = v100;
  *(v61 + 48) = v145;
  *(v61 + 56) = 0;
  v101 = v119;
  *(v61 + 64) = v118;
  *(v61 + 72) = v101;
  v102 = v147;
  *(v61 + 80) = v146;
  *(v61 + 88) = v102;
  v103 = v149;
  *(v61 + 96) = v148;
  *(v61 + 104) = v103;
  v104 = v121;
  *(v61 + 112) = v120;
  *(v61 + 120) = v104;
  *(v61 + 128) = 0;
  *(v61 + 136) = 2;
  *(v61 + 144) = 0;
  *(v61 + 152) = 0;
  *(v61 + 184) = 0u;
  *(v61 + 200) = 0u;
  *(v61 + 216) = 0u;
  *(v61 + 376) = 0u;
  *(v61 + 392) = 0u;
  *(v61 + 408) = 0x8000;
  *(v61 + 360) = 0;
  *(v61 + 416) = 0;
  *(v61 + 432) = MEMORY[0x277D84FA0];
  *(v61 + 160) = v122;
  *(v61 + 168) = 0;
  *(v61 + 176) = 0;
  *(v61 + 248) = 0;
  *(v61 + 256) = 0;
  v105 = v125;
  *(v61 + 232) = v124;
  *(v61 + 240) = v105;
  *(v61 + 264) = v126;
  *(v61 + 272) = 0u;
  *(v61 + 288) = 0u;
  *(v61 + 304) = 0u;
  *(v61 + 320) = 0u;
  *(v61 + 336) = 0;

  (*(v127 + 8))(v163, v128);
  sub_24E601704(v98, &qword_27F213E68);
  sub_24E601704(v170, &qword_27F235830);
  *(v61 + 344) = MEMORY[0x277D84F90];
  *(v61 + 352) = 0;
  *(v61 + 440) = 0;
  *(v61 + 368) = 0;
  return v61;
}

uint64_t ProductPage.init(adamId:bundleId:icon:heading:title:subtitle:ordinal:rating:buttonAction:offerDisplayProperties:titleOfferDisplayProperties:clickAction:shareAction:developerAction:ageRatingAction:uberArtwork:uberArtworkForCompactDisplay:uberVideo:uberStyle:logoArtwork:navigationBarIconArtwork:media:badges:isComplete:pageTopBackgroundColor:pageBottomBackgroundColor:hasDarkUserInterfaceStyle:purchasedOrdering:notPurchasedOrdering:shelfMapping:askToBuy:mediaSectionTitle:pageMetrics:pageRenderEvent:expandedOfferDetails:regularPriceFormatted:theme:externalVersionIdentifier:updateBuyParams:banner:secondaryBanner:descriptionHeader:description:fullProductFetchedAction:appPromotionDetailPageAction:pageRefreshPolicy:alwaysAllowReviews:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, unsigned __int8 a29, void *a30, void *a31, unsigned __int8 a32, uint64_t a33, uint64_t a34, unint64_t a35, __int128 *a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, unsigned __int8 *a44, uint64_t a45, unsigned __int8 a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, unsigned __int8 a57)
{
  v58 = v57;
  v148 = a8;
  v147 = a7;
  v145 = a6;
  v144 = a5;
  v143 = a4;
  v142 = a3;
  v141 = a2;
  LODWORD(v138) = a57;
  v168 = a56;
  v167 = a55;
  v158 = a54;
  v164 = a50;
  v156 = a49;
  v137 = a48;
  v136 = a47;
  v135 = a46;
  v134 = a45;
  v131 = a42;
  v155 = a41;
  v153 = a40;
  v157 = a39;
  v123 = a38;
  v122 = a37;
  v165 = a31;
  v166 = a30;
  v163 = a23;
  v160 = a22;
  v152 = a16;
  v133 = a34;
  v132 = a33;
  LODWORD(v130) = a32;
  LODWORD(v129) = a29;
  v127 = a28;
  v161 = a26;
  v151 = a27;
  v128 = a43;
  v126 = a35;
  v159 = a25;
  v154 = a53;
  v114 = sub_24F91F6B8();
  v113 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v112 = &v111 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v61 - 8);
  v162 = &v111 - v62;

  v63 = a1[1];
  v140 = *a1;
  v139 = v63;
  v64 = *a24;
  v65 = *a36;
  v119 = a36[1];
  v120 = v65;
  v66 = *(a36 + 5);
  v118 = *(a36 + 4);
  v117 = v66;
  v116 = *(a36 + 6);
  v121 = *a44;
  v67 = OBJC_IVAR____TtC12GameStoreKit11ProductPage_media;
  v68 = MEMORY[0x277D84F90];
  *(v58 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_media) = MEMORY[0x277D84F90];
  v69 = OBJC_IVAR____TtC12GameStoreKit11ProductPage_shelfMapping;
  v70 = sub_24E609890(v68);
  v115 = v69;
  *(v58 + v69) = v70;
  *(v58 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_shareAction) = a18;
  *(v58 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_developerAction) = a19;
  *(v58 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_ageRatingAction) = a20;
  *(v58 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_uberArtwork) = a21;
  *(v58 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_uberArtworkForCompactDisplay) = v160;
  *(v58 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_uberVideo) = v163;
  *(v58 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_uberStyle) = v64;
  *(v58 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_logoArtwork) = v159;
  *(v58 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_navigationBarIconArtwork) = v161;
  swift_beginAccess();
  v125 = *(v58 + v67);
  *(v58 + v67) = v151;
  v71 = v126;

  v146 = a18;

  v149 = a19;

  v150 = a20;

  v151 = a21;

  v72 = v127;
  if (!v127)
  {
    v72 = MEMORY[0x277D84F90];
  }

  *(v58 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_badges) = v72;
  v73 = v165;
  *(v58 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_isComplete) = v129;
  *(v58 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_pageTopBackgroundColor) = v166;
  *(v58 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_pageBottomBackgroundColor) = v73;
  *(v58 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_hasDarkUserInterfaceStyle) = v130;
  *(v58 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_purchasedOrdering) = v132;
  *(v58 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_notPurchasedOrdering) = v133;
  v74 = v73;
  v75 = v166;
  if (!v71)
  {
    v71 = sub_24E609890(MEMORY[0x277D84F90]);
  }

  v133 = a17;
  v132 = a15;
  v130 = a14;
  v129 = a13;
  v125 = a12;
  v124 = a11;
  v127 = a10;
  v126 = a9;
  v76 = v115;
  swift_beginAccess();
  *(v58 + v76) = v71;

  v77 = v58 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_askToBuy;
  v78 = v119;
  *v77 = v120;
  *(v77 + 16) = v78;
  v79 = v117;
  *(v77 + 32) = v118;
  *(v77 + 40) = v79;
  *(v77 + 48) = v116;
  v80 = (v58 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_mediaSectionTitle);
  v81 = v123;
  *v80 = v122;
  v80[1] = v81;
  v82 = OBJC_IVAR____TtC12GameStoreKit11ProductPage_pageMetrics;
  v83 = sub_24F928818();
  v84 = *(v83 - 8);
  v85 = v58 + v82;
  v86 = v83;
  v87 = v157;
  (*(v84 + 16))(v85, v157, v83);
  *(v58 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_pageRenderEvent) = v153;
  *(v58 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_expandedOfferDetails) = v155;
  v88 = (v58 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_regularPriceFormatted);
  v89 = v128;
  *v88 = v131;
  v88[1] = v89;
  *(v58 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_theme) = v121;
  v90 = v58 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_externalVersionIdentifier;
  *v90 = v134;
  *(v90 + 8) = v135 & 1;
  v91 = (v58 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_updateBuyParams);
  v92 = v137;
  *v91 = v136;
  v91[1] = v92;
  *(v58 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_titleOfferDisplayProperties) = v152;
  *(v58 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_banner) = v156;
  *(v58 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_secondaryBanner) = v164;
  *(v58 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_fullProductFetchedAction) = v158;
  *(v58 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_appPromotionDetailPageAction) = v167;
  *(v58 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_pageRefreshPolicy) = v168;
  *(v58 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_alwaysAllowReviews) = v138 & 1;
  v93 = sub_24F929608();
  memset(v177, 0, sizeof(v177));
  v178 = 0;
  (*(*(v93 - 8) + 56))(v162, 1, 1, v93);
  *(v58 + 424) = 4;
  sub_24E60169C(v177, &v171, &qword_27F235830);
  if (*(&v172 + 1))
  {
    v174 = v171;
    v175 = v172;
    v176 = v173;
  }

  else
  {

    v138 = v84;
    v94 = v87;
    v95 = v86;
    v96 = v112;
    sub_24F91F6A8();
    v97 = sub_24F91F668();
    v99 = v98;
    v100 = v96;
    v86 = v95;
    v87 = v94;
    v84 = v138;
    (*(v113 + 8))(v100, v114);
    v169 = v97;
    v170 = v99;
    sub_24F92C7F8();
    sub_24E601704(&v171, &qword_27F235830);
  }

  v101 = v175;
  *(v58 + 448) = v174;
  *(v58 + 464) = v101;
  *(v58 + 480) = v176;
  v102 = v162;
  sub_24E60169C(v162, v58 + OBJC_IVAR____TtC12GameStoreKit6Lockup_impressionMetrics, &qword_27F213E68);
  v103 = v139;
  *(v58 + 16) = v140;
  *(v58 + 24) = v103;
  v104 = v142;
  *(v58 + 32) = v141;
  *(v58 + 40) = v104;
  *(v58 + 48) = v143;
  *(v58 + 56) = 0;
  v105 = v125;
  *(v58 + 64) = v124;
  *(v58 + 72) = v105;
  v106 = v145;
  *(v58 + 80) = v144;
  *(v58 + 88) = v106;
  v107 = v148;
  *(v58 + 96) = v147;
  *(v58 + 104) = v107;
  v108 = v127;
  *(v58 + 112) = v126;
  *(v58 + 120) = v108;
  *(v58 + 128) = 0;
  *(v58 + 136) = 2;
  *(v58 + 144) = 0;
  *(v58 + 152) = 0;
  *(v58 + 216) = 0u;
  *(v58 + 200) = 0u;
  *(v58 + 184) = 0u;
  *(v58 + 376) = 0u;
  *(v58 + 392) = 0u;
  *(v58 + 408) = 0x8000;
  *(v58 + 360) = 0;
  *(v58 + 416) = 0;
  *(v58 + 432) = MEMORY[0x277D84FA0];
  *(v58 + 160) = v129;
  *(v58 + 168) = 0;
  *(v58 + 176) = 0;
  *(v58 + 248) = 0;
  *(v58 + 256) = 0;
  v109 = v132;
  *(v58 + 232) = v130;
  *(v58 + 240) = v109;
  *(v58 + 264) = v133;
  *(v58 + 272) = 0u;
  *(v58 + 288) = 0u;
  *(v58 + 304) = 0u;
  *(v58 + 320) = 0u;
  *(v58 + 336) = 0;

  (*(v84 + 8))(v87, v86);
  sub_24E601704(v102, &qword_27F213E68);
  sub_24E601704(v177, &qword_27F235830);
  *(v58 + 344) = MEMORY[0x277D84F90];
  *(v58 + 352) = 0;
  *(v58 + 440) = 0;
  *(v58 + 368) = 0;
  return v58;
}

uint64_t sub_24EA84320()
{

  sub_24E901BD0(*(v0 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_askToBuy), *(v0 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_askToBuy + 8), *(v0 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_askToBuy + 16), *(v0 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_askToBuy + 24));

  v1 = OBJC_IVAR____TtC12GameStoreKit11ProductPage_pageMetrics;
  v2 = sub_24F928818();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
}

uint64_t ProductPage.deinit()
{
  v0 = Lockup.deinit();

  sub_24E901BD0(*(v0 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_askToBuy), *(v0 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_askToBuy + 8), *(v0 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_askToBuy + 16), *(v0 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_askToBuy + 24));

  v1 = OBJC_IVAR____TtC12GameStoreKit11ProductPage_pageMetrics;
  v2 = sub_24F928818();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t ProductPage.__deallocating_deinit()
{
  ProductPage.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_24EA847F0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC12GameStoreKit11ProductPage_pageMetrics;
  v5 = sub_24F928818();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

double sub_24EA8486C@<D0>(_OWORD *a1@<X8>)
{
  v2 = *(*v1 + 240);
  if (v2)
  {
    sub_24E60169C(v2 + 144, a1, &qword_27F2129B0);
  }

  else
  {
    result = 0.0;
    *a1 = 0u;
    a1[1] = 0u;
  }

  return result;
}

unint64_t sub_24EA848B8()
{
  result = qword_27F226738;
  if (!qword_27F226738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F226738);
  }

  return result;
}

unint64_t sub_24EA8490C()
{
  result = qword_27F226748;
  if (!qword_27F226748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F226748);
  }

  return result;
}

uint64_t type metadata accessor for ProductPage()
{
  result = qword_27F226760;
  if (!qword_27F226760)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24EA849AC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24EA849F8()
{
  result = qword_27F226758;
  if (!qword_27F226758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F226758);
  }

  return result;
}

uint64_t sub_24EA84A4C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12GameStoreKit11ProductPage_media;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_24EA84B18()
{
  result = sub_24F928818();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t dispatch thunk of ProductPage.__allocating_init(adamId:bundleId:icon:heading:title:subtitle:ordinal:rating:buttonAction:offerDisplayProperties:titleOfferDisplayProperties:clickAction:shareAction:developerAction:ageRatingAction:uberArtwork:uberArtworkForCompactDisplay:uberVideo:uberStyle:logoArtwork:navigationBarIconArtwork:media:badges:isComplete:pageTopBackgroundColor:pageBottomBackgroundColor:hasDarkUserInterfaceStyle:purchasedOrdering:notPurchasedOrdering:shelfMapping:askToBuy:mediaSectionTitle:pageMetrics:pageRenderEvent:expandedOfferDetails:regularPriceFormatted:theme:externalVersionIdentifier:updateBuyParams:banner:secondaryBanner:descriptionHeader:description:fullProductFetchedAction:appPromotionDetailPageAction:pageRefreshPolicy:alwaysAllowReviews:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  v38 = *(v37 + 832);

  return v38(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37);
}

uint64_t WriteReviewAction.adamId.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC12GameStoreKit17WriteReviewAction_adamId + 8);
  *a1 = *(v1 + OBJC_IVAR____TtC12GameStoreKit17WriteReviewAction_adamId);
  a1[1] = v2;
}

uint64_t WriteReviewAction.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit17WriteReviewAction_url;
  v4 = sub_24F91F4A8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WriteReviewAction.appName.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit17WriteReviewAction_appName);

  return v1;
}

uint64_t WriteReviewAction.itemDescription.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit17WriteReviewAction_itemDescription);

  return v1;
}

void *WriteReviewAction.__allocating_init(title:artwork:adamId:url:appName:appIcon:itemDescription:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, char *a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v53 = a7;
  v54 = a8;
  v56 = a2;
  v57 = a3;
  v55 = a1;
  v51 = a6;
  v52 = a10;
  v50 = a9;
  v49 = sub_24F91F6B8();
  v48 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v47 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v47 - v15;
  v17 = sub_24F928AD8();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = swift_allocObject();
  v22 = a4[1];
  v23 = (v21 + OBJC_IVAR____TtC12GameStoreKit17WriteReviewAction_adamId);
  *v23 = *a4;
  v23[1] = v22;
  v24 = OBJC_IVAR____TtC12GameStoreKit17WriteReviewAction_url;
  v25 = sub_24F91F4A8();
  v26 = *(v25 - 8);
  v27 = v21 + v24;
  v28 = a5;
  (*(v26 + 16))(v27, a5, v25);
  v29 = (v21 + OBJC_IVAR____TtC12GameStoreKit17WriteReviewAction_appName);
  v30 = v53;
  *v29 = v51;
  v29[1] = v30;
  *(v21 + OBJC_IVAR____TtC12GameStoreKit17WriteReviewAction_appIcon) = v54;
  v31 = (v21 + OBJC_IVAR____TtC12GameStoreKit17WriteReviewAction_itemDescription);
  v32 = v52;
  *v31 = v50;
  v31[1] = v32;
  v64 = 0;
  memset(v63, 0, sizeof(v63));
  v33 = a11;
  (*(v18 + 16))(v20, a11, v17);
  v34 = sub_24F929608();
  (*(*(v34 - 8) + 56))(v16, 1, 1, v34);
  v35 = (v21 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v35 = 0u;
  v35[1] = 0u;
  v36 = v21 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  sub_24E65E064(v63, &v60);
  if (*(&v61 + 1))
  {
    v37 = v61;
    *v36 = v60;
    *(v36 + 1) = v37;
    *(v36 + 4) = v62;
  }

  else
  {
    v52 = v17;
    v38 = v47;
    sub_24F91F6A8();
    v53 = a11;
    v54 = v16;
    v39 = v20;
    v40 = sub_24F91F668();
    v41 = v28;
    v43 = v42;
    v44 = v38;
    v17 = v52;
    (*(v48 + 8))(v44, v49);
    v58 = v40;
    v59 = v43;
    v20 = v39;
    v28 = v41;
    v33 = v53;
    v16 = v54;
    sub_24F92C7F8();
    sub_24E601704(&v60, &qword_27F235830);
  }

  (*(v18 + 8))(v33, v17);
  (*(v26 + 8))(v28, v25);
  sub_24E601704(v63, &qword_27F235830);
  sub_24E65E0D4(v16, v21 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics);
  v45 = v56;
  v21[2] = v55;
  v21[3] = v45;
  v21[4] = v57;
  v21[5] = 0;
  (*(v18 + 32))(v21 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v20, v17);
  return v21;
}

void *WriteReviewAction.init(title:artwork:adamId:url:appName:appIcon:itemDescription:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, char *a7, char *a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = v11;
  v53 = a8;
  v52 = a7;
  v50 = a6;
  v55 = a2;
  v56 = a3;
  v54 = a1;
  v15 = a11;
  v51 = a10;
  v49 = a9;
  v48 = sub_24F91F6B8();
  v47 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v46 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v46 - v18;
  v20 = sub_24F928AD8();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v46 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = a4[1];
  v25 = (v12 + OBJC_IVAR____TtC12GameStoreKit17WriteReviewAction_adamId);
  *v25 = *a4;
  v25[1] = v24;
  v26 = OBJC_IVAR____TtC12GameStoreKit17WriteReviewAction_url;
  v27 = sub_24F91F4A8();
  v28 = *(v27 - 8);
  v29 = v12 + v26;
  v30 = a5;
  (*(v28 + 16))(v29, a5, v27);
  v31 = (v12 + OBJC_IVAR____TtC12GameStoreKit17WriteReviewAction_appName);
  v32 = v52;
  *v31 = v50;
  v31[1] = v32;
  *(v12 + OBJC_IVAR____TtC12GameStoreKit17WriteReviewAction_appIcon) = v53;
  v33 = (v12 + OBJC_IVAR____TtC12GameStoreKit17WriteReviewAction_itemDescription);
  v34 = v51;
  *v33 = v49;
  v33[1] = v34;
  v66 = 0;
  memset(v65, 0, sizeof(v65));
  (*(v21 + 16))(v23, a11, v20);
  v35 = sub_24F929608();
  (*(*(v35 - 8) + 56))(v19, 1, 1, v35);
  v36 = (v12 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v36 = 0u;
  v36[1] = 0u;
  sub_24E65E064(v65, &v59);
  if (*(&v60 + 1))
  {
    v62 = v59;
    v63 = v60;
    v64 = v61;
  }

  else
  {
    v37 = v46;
    sub_24F91F6A8();
    v53 = v23;
    v52 = v19;
    v38 = sub_24F91F668();
    v39 = v30;
    v41 = v40;
    (*(v47 + 8))(v37, v48);
    v57 = v38;
    v58 = v41;
    v30 = v39;
    v15 = a11;
    v19 = v52;
    v23 = v53;
    sub_24F92C7F8();
    sub_24E601704(&v59, &qword_27F235830);
  }

  (*(v21 + 8))(v15, v20);
  (*(v28 + 8))(v30, v27);
  sub_24E601704(v65, &qword_27F235830);
  v42 = v12 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  *(v42 + 4) = v64;
  v43 = v63;
  *v42 = v62;
  *(v42 + 1) = v43;
  sub_24E65E0D4(v19, v12 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics);
  v44 = v55;
  v12[2] = v54;
  v12[3] = v44;
  v12[4] = v56;
  v12[5] = 0;
  (*(v21 + 32))(v12 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v23, v20);
  return v12;
}

uint64_t WriteReviewAction.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v75 = a2;
  v80 = v3;
  v72 = *v3;
  v5 = sub_24F9285B8();
  v73 = *(v5 - 8);
  v74 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v69 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v68 = &v63 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v63 - v10;
  v12 = sub_24F91F4A8();
  v76 = *(v12 - 8);
  v77 = v12;
  MEMORY[0x28223BE20](v12);
  v71 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24F928388();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v66 = &v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v65 = &v63 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v63 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v63 - v23;
  v25 = a1;
  sub_24F928398();
  v26 = sub_24F928348();
  v28 = v27;
  v67 = v15;
  v29 = *(v15 + 8);
  v30 = v24;
  v31 = v14;
  v29(v30, v14);
  v78 = v25;
  v79 = v15 + 8;
  if (!v28)
  {
    v32 = 0x64496D616461;
    v34 = v75;
    v35 = v73;
    v33 = 0xE600000000000000;
    goto LABEL_5;
  }

  v64 = v26;
  sub_24F928398();
  sub_24F928268();
  v29(v22, v14);
  if ((*(v76 + 48))(v11, 1, v77) == 1)
  {
    v32 = 7107189;

    sub_24E601704(v11, &qword_27F228530);
    v33 = 0xE300000000000000;
    v34 = v75;
    v35 = v73;
LABEL_5:
    v36 = sub_24F92AC38();
    sub_24EA864C0(&qword_27F2213B8, MEMORY[0x277D22548]);
    swift_allocError();
    *v37 = v32;
    v37[1] = v33;
    v37[2] = v72;
    (*(*(v36 - 8) + 104))(v37, *MEMORY[0x277D22530], v36);
    swift_willThrow();
    (*(v35 + 8))(v34, v74);
    v29(v78, v31);
    swift_deallocPartialClassInstance();
    return v36;
  }

  v38 = v76;
  v39 = v71;
  v40 = v77;
  (*(v76 + 32))(v71, v11, v77);
  v41 = v80;
  v42 = &v80[OBJC_IVAR____TtC12GameStoreKit17WriteReviewAction_adamId];
  *v42 = v64;
  v42[1] = v28;
  v43 = v41;
  (*(v38 + 16))(&v41[OBJC_IVAR____TtC12GameStoreKit17WriteReviewAction_url], v39, v40);
  v44 = v65;
  sub_24F928398();
  v45 = sub_24F928348();
  v47 = v46;
  v29(v44, v31);
  v48 = &v43[OBJC_IVAR____TtC12GameStoreKit17WriteReviewAction_appName];
  *v48 = v45;
  v48[1] = v47;
  sub_24F928398();
  v49 = sub_24F928348();
  v51 = v50;
  v29(v44, v31);
  v52 = &v43[OBJC_IVAR____TtC12GameStoreKit17WriteReviewAction_itemDescription];
  *v52 = v49;
  v52[1] = v51;
  type metadata accessor for Artwork();
  sub_24F928398();
  v72 = v29;
  v54 = v73;
  v53 = v74;
  v55 = *(v73 + 16);
  v56 = v75;
  v55(v68, v75, v74);
  sub_24EA864C0(&qword_27F219660, type metadata accessor for Artwork);
  v57 = v53;
  sub_24F929548();
  *&v80[OBJC_IVAR____TtC12GameStoreKit17WriteReviewAction_appIcon] = v81;
  v58 = v66;
  v59 = *(v67 + 16);
  v68 = v31;
  v59(v66, v78, v31);
  v36 = v69;
  v55(v69, v56, v57);
  v60 = v70;
  v61 = Action.init(deserializing:using:)(v58, v36);
  if (!v60)
  {
    v36 = v61;
  }

  (*(v54 + 8))(v56, v57);
  v72(v78, v68);
  (*(v76 + 8))(v71, v77);
  return v36;
}

uint64_t sub_24EA86258()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit17WriteReviewAction_url;
  v2 = sub_24F91F4A8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
}

uint64_t WriteReviewAction.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0);

  v3 = OBJC_IVAR____TtC12GameStoreKit17WriteReviewAction_url;
  v4 = sub_24F91F4A8();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return v0;
}

uint64_t WriteReviewAction.__deallocating_deinit()
{
  WriteReviewAction.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_24EA864C0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for WriteReviewAction()
{
  result = qword_27F226770;
  if (!qword_27F226770)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24EA8655C()
{
  result = sub_24F91F4A8();
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

id UIView.highlightedTintColor.getter()
{
  result = [v0 tintColor];
  if (result)
  {
    v2 = result;
    v3 = [result colorWithAlphaComponent_];

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t NSDiffableDataSourceSnapshot.surroundingSections(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = a3 - 1;
  if (__OFSUB__(a3, 1))
  {
    __break(1u);
    goto LABEL_7;
  }

  NSDiffableDataSourceSnapshot.section(at:)(result, a4, a1);
  result = a3 + 1;
  if (__OFADD__(a3, 1))
  {
LABEL_7:
    __break(1u);
    return result;
  }

  return NSDiffableDataSourceSnapshot.section(at:)(result, a4, a2);
}

uint64_t NSDiffableDataSourceSnapshot.section(at:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a1 < 0 || sub_24F922DF8() <= a1)
  {
    v9 = *(a2 + 16);
    v6 = *(*(v9 - 8) + 56);
    v7 = a3;
    v8 = 1;
  }

  else
  {
    sub_24F922E18();
    v5 = *(a2 + 16);
    sub_24F92B758();

    v6 = *(*(v5 - 8) + 56);
    v7 = a3;
    v8 = 0;
    v9 = v5;
  }

  return v6(v7, v8, 1, v9);
}

uint64_t FramedMedia.init(id:isFullWidth:hasRoundedCorners:ordinal:caption:impressionMetrics:)(uint64_t a1, int a2, char a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  v8 = v7;
  v32 = a6;
  LODWORD(v13) = a2;
  v15 = sub_24F91F6B8();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E60169C(a1, &v35, &qword_27F235830);
  if (*(&v36 + 1))
  {
    v38 = v35;
    v39 = v36;
    v40 = v37;
  }

  else
  {
    sub_24F91F6A8();
    v19 = sub_24F91F668();
    v30 = a7;
    v20 = a3;
    v21 = a5;
    v22 = v19;
    v31 = v13;
    v13 = a4;
    v24 = v23;
    (*(v16 + 8))(v18, v15);
    v33 = v22;
    v34 = v24;
    a5 = v21;
    a3 = v20;
    a7 = v30;
    a4 = v13;
    LOBYTE(v13) = v31;
    sub_24F92C7F8();
    sub_24E601704(&v35, &qword_27F235830);
  }

  sub_24E601704(a1, &qword_27F235830);
  v25 = v8 + OBJC_IVAR____TtC12GameStoreKit11FramedMedia_id;
  v26 = v39;
  *v25 = v38;
  *(v25 + 16) = v26;
  *(v25 + 32) = v40;
  sub_24E6009C8(a7, v8 + OBJC_IVAR____TtC12GameStoreKit11FramedMedia_impressionMetrics, &qword_27F213E68);
  *(v8 + 17) = v13 & 1;
  *(v8 + 16) = a3 & 1;
  *(v8 + 24) = a4;
  *(v8 + 32) = a5;
  v27 = OBJC_IVAR____TtC12GameStoreKit11FramedMedia_caption;
  v28 = sub_24F91F008();
  (*(*(v28 - 8) + 56))(v8 + v27, 1, 1, v28);
  return v8;
}

uint64_t FramedMedia.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v95 = a2;
  v84 = sub_24F91EE98();
  v83 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v82 = &v74 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_24F91EEA8();
  v79 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v80 = &v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24F91EEC8();
  MEMORY[0x28223BE20](v5 - 8);
  v77 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v7 - 8);
  v76 = &v74 - v8;
  v9 = sub_24F91F0C8();
  MEMORY[0x28223BE20](v9 - 8);
  v74 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215340);
  MEMORY[0x28223BE20](v11 - 8);
  v85 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v78 = &v74 - v14;
  MEMORY[0x28223BE20](v15);
  v75 = &v74 - v16;
  v94 = sub_24F9285B8();
  v93 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v90 = &v74 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v18 - 8);
  v87 = &v74 - v19;
  v20 = sub_24F91F6B8();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v74 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_24F928388();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v89 = &v74 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v88 = &v74 - v28;
  MEMORY[0x28223BE20](v29);
  v31 = &v74 - v30;
  MEMORY[0x28223BE20](v32);
  v34 = &v74 - v33;
  v102 = a1;
  sub_24F928398();
  v35 = sub_24F928348();
  if (v36)
  {
    *&v96[0] = v35;
    *(&v96[0] + 1) = v36;
  }

  else
  {
    sub_24F91F6A8();
    v37 = sub_24F91F668();
    v39 = v38;
    (*(v21 + 8))(v23, v20);
    *&v96[0] = v37;
    *(&v96[0] + 1) = v39;
  }

  sub_24F92C7F8();
  v40 = *(v25 + 8);
  v40(v34, v24);
  v41 = v92;
  v42 = v92 + OBJC_IVAR____TtC12GameStoreKit11FramedMedia_id;
  v43 = v98;
  *v42 = v97;
  *(v42 + 16) = v43;
  *(v42 + 32) = v99;
  sub_24F929608();
  sub_24F928398();
  (*(v93 + 16))(v90, v95, v94);
  v44 = v87;
  sub_24F929548();
  sub_24E6009C8(v44, v41 + OBJC_IVAR____TtC12GameStoreKit11FramedMedia_impressionMetrics, &qword_27F213E68);
  sub_24F928398();
  v86 = sub_24F928348();
  v90 = v45;
  v46 = v24;
  v40(v31, v24);
  sub_24F928398();
  sub_24EA87AA4();
  sub_24F928208();
  v40(v31, v24);
  LODWORD(v87) = v97;
  v47 = v88;
  sub_24F928398();
  v48 = sub_24F928278();
  v40(v47, v46);
  *(v41 + 17) = v48 & 1;
  v49 = v89;
  sub_24F928398();
  v50 = sub_24F928278();
  v40(v49, v46);
  *(v41 + 16) = (v50 == 2) | v50 & 1;
  sub_24F928398();
  v51 = sub_24F928348();
  v53 = v52;
  v40(v31, v46);
  v54 = v87;
  *(v41 + 24) = v51;
  *(v41 + 32) = v53;
  if (v54)
  {
    if (v54 == 1)
    {
      v55 = [objc_opt_self() systemFontOfSize_];
      v56 = _sSo16NSParagraphStyleC12GameStoreKitE4nqmlABvgZ_0();
      v57 = _sSo16NSParagraphStyleC12GameStoreKitE8listItem8withFontABSo6UIFontC_tFZ_0();
      v58 = _sSo16NSParagraphStyleC12GameStoreKitE16numberedListItem8withFontABSo6UIFontC_tFZ_0();

      *&v97 = 10;
      *(&v97 + 1) = 0xE100000000000000;
      *&v98 = v55;
      *(&v98 + 1) = v56;
      *&v99 = 161644770;
      *(&v99 + 1) = 0xA400000000000000;
      *&v100 = v57;
      *(&v100 + 1) = 606245;
      *&v101 = 0xE300000000000000;
      *(&v101 + 1) = v58;
      v59 = v90;
      if (v90)
      {
        v96[2] = v99;
        v96[3] = v100;
        v96[4] = v101;
        v96[0] = v97;
        v96[1] = v98;
        v60 = objc_allocWithZone(type metadata accessor for NqmlAttributedStringGenerator());
        v61 = sub_24ECB3C7C(v86, v59, v96);
        v62 = v85;
        sub_24ECB3F40(v85);

        v63 = 0;
      }

      else
      {
        sub_24E951D6C(&v97);
        v63 = 1;
        v62 = v85;
      }

LABEL_16:
      (*(v93 + 8))(v95, v94);
      v40(v102, v46);
      v72 = sub_24F91F008();
      (*(*(v72 - 8) + 56))(v62, v63, 1, v72);
      v66 = v41 + OBJC_IVAR____TtC12GameStoreKit11FramedMedia_caption;
      v67 = v62;
      goto LABEL_17;
    }

    v68 = v91;
    if (v90)
    {
      v89 = ((v25 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
      v69 = sub_24F91F4A8();
      (*(*(v69 - 8) + 56))(v76, 1, 1, v69);
      (*(v79 + 104))(v80, *MEMORY[0x277CC8BB0], v81);
      (*(v83 + 104))(v82, *MEMORY[0x277CC8B98], v84);
      sub_24F91EEB8();
      v62 = v78;
      sub_24F91EFC8();
      if (v68)
      {

        v63 = 1;
      }

      else
      {
        v63 = 0;
      }

      goto LABEL_16;
    }
  }

  else if (v90)
  {
    sub_24F91F0B8();
    v64 = v75;
    sub_24F91F018();
    (*(v93 + 8))(v95, v94);
    v40(v102, v46);
    v65 = sub_24F91F008();
    (*(*(v65 - 8) + 56))(v64, 0, 1, v65);
    v66 = v41 + OBJC_IVAR____TtC12GameStoreKit11FramedMedia_caption;
    v67 = v64;
LABEL_17:
    sub_24E6009C8(v67, v66, &qword_27F215340);
    return v41;
  }

  (*(v93 + 8))(v95, v94);
  v40(v102, v46);
  v70 = OBJC_IVAR____TtC12GameStoreKit11FramedMedia_caption;
  v71 = sub_24F91F008();
  (*(*(v71 - 8) + 56))(v41 + v70, 1, 1, v71);
  return v41;
}

uint64_t FramedMedia.deinit()
{

  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit11FramedMedia_caption, &qword_27F215340);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit11FramedMedia_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit11FramedMedia_impressionMetrics, &qword_27F213E68);
  return v0;
}

uint64_t FramedMedia.__allocating_init(id:isFullWidth:hasRoundedCorners:ordinal:caption:impressionMetrics:)(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  v28 = a6;
  v29 = a7;
  LODWORD(v9) = a3;
  LODWORD(v10) = a2;
  v12 = sub_24F91F6B8();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  v17 = v16 + OBJC_IVAR____TtC12GameStoreKit11FramedMedia_id;
  sub_24E60169C(a1, &v32, &qword_27F235830);
  if (*(&v33 + 1))
  {
    v18 = v33;
    *v17 = v32;
    *(v17 + 16) = v18;
    *(v17 + 32) = v34;
  }

  else
  {
    sub_24F91F6A8();
    v19 = sub_24F91F668();
    v26 = v10;
    v27 = v9;
    v9 = a5;
    v20 = v19;
    v10 = a4;
    v22 = v21;
    (*(v13 + 8))(v15, v12);
    v30 = v20;
    v31 = v22;
    a5 = v9;
    a4 = v10;
    LOBYTE(v10) = v26;
    LOBYTE(v9) = v27;
    sub_24F92C7F8();
    sub_24E601704(&v32, &qword_27F235830);
  }

  sub_24E601704(a1, &qword_27F235830);
  sub_24E6009C8(v29, v16 + OBJC_IVAR____TtC12GameStoreKit11FramedMedia_impressionMetrics, &qword_27F213E68);
  *(v16 + 17) = v10 & 1;
  *(v16 + 16) = v9 & 1;
  *(v16 + 24) = a4;
  *(v16 + 32) = a5;
  v23 = OBJC_IVAR____TtC12GameStoreKit11FramedMedia_caption;
  v24 = sub_24F91F008();
  (*(*(v24 - 8) + 56))(v16 + v23, 1, 1, v24);
  return v16;
}

uint64_t FramedMedia.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  FramedMedia.init(deserializing:using:)(a1, a2);
  return v4;
}

unint64_t sub_24EA87AA4()
{
  result = qword_27F226780;
  if (!qword_27F226780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F226780);
  }

  return result;
}

uint64_t FramedMedia.ordinal.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t FramedMedia.__deallocating_deinit()
{

  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit11FramedMedia_caption, &qword_27F215340);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit11FramedMedia_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit11FramedMedia_impressionMetrics, &qword_27F213E68);

  return swift_deallocClassInstance();
}

uint64_t sub_24EA87C90@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 136))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_24EA87D0C()
{
  result = qword_27F226788;
  if (!qword_27F226788)
  {
    type metadata accessor for FramedMedia();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F226788);
  }

  return result;
}

uint64_t type metadata accessor for FramedMedia()
{
  result = qword_27F226790;
  if (!qword_27F226790)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24EA87DB8()
{
  sub_24E9523E0(319, &qword_27F215338, MEMORY[0x277CC8C40]);
  if (v0 <= 0x3F)
  {
    sub_24E9523E0(319, &qword_27F213EB0, MEMORY[0x277D21F70]);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t ResetRequestReviewPropertiesIfNeededAction.requestReviewPropertiesLastResetAppVersion.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ResetRequestReviewPropertiesIfNeededAction.currentAppVersion.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ResetRequestReviewPropertiesIfNeededAction.actionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ResetRequestReviewPropertiesIfNeededAction() + 24);
  v4 = sub_24F928AD8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for ResetRequestReviewPropertiesIfNeededAction()
{
  result = qword_27F2267B8;
  if (!qword_27F2267B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static ResetRequestReviewPropertiesIfNeededAction.appLaunch(actionMetrics:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [objc_opt_self() standardUserDefaults];
  v5 = sub_24F005CF0();
  v7 = v6;

  v8 = [objc_opt_self() mainBundle];
  v9 = sub_24F76084C();
  v11 = v10;

  v12 = *(type metadata accessor for ResetRequestReviewPropertiesIfNeededAction() + 24);
  v13 = sub_24F928AD8();
  result = (*(*(v13 - 8) + 16))(a2 + v12, a1, v13);
  *a2 = v5;
  a2[1] = v7;
  a2[2] = v9;
  a2[3] = v11;
  return result;
}

unint64_t sub_24EA88148()
{
  v1 = 0x654D6E6F69746361;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD00000000000002ALL;
  }
}

uint64_t sub_24EA881BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24EA88C8C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24EA881E4(uint64_t a1)
{
  v2 = sub_24EA88464();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EA88220(uint64_t a1)
{
  v2 = sub_24EA88464();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ResetRequestReviewPropertiesIfNeededAction.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2267A0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EA88464();
  sub_24F92D128();
  v8[15] = 0;
  sub_24F92CCA8();
  if (!v1)
  {
    v8[14] = 1;
    sub_24F92CD08();
    type metadata accessor for ResetRequestReviewPropertiesIfNeededAction();
    v8[13] = 2;
    sub_24F928AD8();
    sub_24E674184(&qword_27F216080);
    sub_24F92CD48();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_24EA88464()
{
  result = qword_27F2267A8;
  if (!qword_27F2267A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2267A8);
  }

  return result;
}

uint64_t ResetRequestReviewPropertiesIfNeededAction.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = sub_24F928AD8();
  v22 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2267B0);
  v24 = *(v7 - 8);
  v25 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v21 - v8;
  v10 = type metadata accessor for ResetRequestReviewPropertiesIfNeededAction();
  MEMORY[0x28223BE20](v10);
  v12 = (&v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = a1[3];
  v26 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_24EA88464();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v26);
  }

  v14 = v24;
  v15 = v12;
  v29 = 0;
  *v12 = sub_24F92CBC8();
  v12[1] = v16;
  v21 = v16;
  v28 = 1;
  v12[2] = sub_24F92CC28();
  v12[3] = v17;
  v27 = 2;
  sub_24E674184(&qword_27F254CB0);
  v18 = v6;
  v19 = v25;
  sub_24F92CC68();
  (*(v14 + 8))(v9, v19);
  (*(v22 + 32))(v15 + *(v10 + 24), v18, v4);
  sub_24EA8880C(v15, v23);
  __swift_destroy_boxed_opaque_existential_1(v26);
  return sub_24EA88870(v15);
}

uint64_t sub_24EA8880C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ResetRequestReviewPropertiesIfNeededAction();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EA88870(uint64_t a1)
{
  v2 = type metadata accessor for ResetRequestReviewPropertiesIfNeededAction();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24EA888CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_24F928AD8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_24EA88984(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_24F928AD8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24EA88A44(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_24F928AD8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24EA88AE8()
{
  sub_24E6BCB04();
  if (v0 <= 0x3F)
  {
    sub_24F928AD8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_24EA88B88()
{
  result = qword_27F2267C8;
  if (!qword_27F2267C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2267C8);
  }

  return result;
}

unint64_t sub_24EA88BE0()
{
  result = qword_27F2267D0;
  if (!qword_27F2267D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2267D0);
  }

  return result;
}

unint64_t sub_24EA88C38()
{
  result = qword_27F2267D8;
  if (!qword_27F2267D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2267D8);
  }

  return result;
}

uint64_t sub_24EA88C8C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD00000000000002ALL && 0x800000024FA514C0 == a2;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA514F0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x654D6E6F69746361 && a2 == 0xED00007363697274)
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

uint64_t static ProductShelfOrderingId.defaultOrdering.getter@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_27F2267E0;
  return result;
}

uint64_t static ProductShelfOrderingId.defaultOrdering.setter(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_27F2267E0 = v1;
  return result;
}

GameStoreKit::ProductShelfOrderingId_optional __swiftcall ProductShelfOrderingId.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 12;
  if (v3 < 0xC)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t ProductShelfOrderingId.rawValue.getter()
{
  v1 = 0xD000000000000011;
  v2 = *v0;
  if (v2 > 5)
  {
    v6 = 0xD000000000000021;
    v7 = 0xD00000000000001BLL;
    if (v2 != 10)
    {
      v7 = 0xD000000000000029;
    }

    if (v2 != 9)
    {
      v6 = v7;
    }

    v8 = 0xD000000000000013;
    if (v2 == 7)
    {
      v8 = 0xD000000000000027;
    }

    if (v2 == 6)
    {
      v8 = 0xD000000000000019;
    }

    if (*v0 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v3 = 0xD00000000000001FLL;
    v4 = 0xD00000000000001CLL;
    if (v2 != 4)
    {
      v4 = 0xD00000000000002ALL;
    }

    if (v2 != 3)
    {
      v3 = v4;
    }

    if (v2 == 1)
    {
      v1 = 0xD000000000000022;
    }

    if (!*v0)
    {
      v1 = 0xD000000000000014;
    }

    if (*v0 <= 2u)
    {
      return v1;
    }

    else
    {
      return v3;
    }
  }
}

uint64_t sub_24EA89058()
{
  v0 = ProductShelfOrderingId.rawValue.getter();
  v2 = v1;
  if (v0 == ProductShelfOrderingId.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_24F92CE08();
  }

  return v5 & 1;
}

uint64_t sub_24EA890F4()
{
  sub_24F92D068();
  ProductShelfOrderingId.rawValue.getter();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EA8915C()
{
  ProductShelfOrderingId.rawValue.getter();
  sub_24F92B218();
}

uint64_t sub_24EA891C0()
{
  sub_24F92D068();
  ProductShelfOrderingId.rawValue.getter();
  sub_24F92B218();

  return sub_24F92D0B8();
}

unint64_t sub_24EA89230@<X0>(unint64_t *a1@<X8>)
{
  result = ProductShelfOrderingId.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_24EA89258@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_27F2267E0;
  return result;
}

_BYTE *ShelfBasedProductPage.init(deserializing:using:)(_BYTE *a1, uint64_t a2)
{
  v142 = a2;
  v4 = sub_24F9285B8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v130 = &v117[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = MEMORY[0x28223BE20](v6);
  v124 = &v117[-v9];
  v10 = MEMORY[0x28223BE20](v8);
  v122 = &v117[-v11];
  v12 = MEMORY[0x28223BE20](v10);
  v141 = &v117[-v13];
  MEMORY[0x28223BE20](v12);
  v15 = &v117[-v14];
  v137 = sub_24F928388();
  v132 = *(v137 - 8);
  v16 = MEMORY[0x28223BE20](v137);
  v129 = &v117[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = MEMORY[0x28223BE20](v16);
  v128 = &v117[-v19];
  v20 = MEMORY[0x28223BE20](v18);
  v127 = &v117[-v21];
  v22 = MEMORY[0x28223BE20](v20);
  v126 = &v117[-v23];
  v24 = MEMORY[0x28223BE20](v22);
  v125 = &v117[-v25];
  v26 = MEMORY[0x28223BE20](v24);
  v123 = &v117[-v27];
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v117[-v29];
  MEMORY[0x28223BE20](v28);
  v32 = &v117[-v31];
  v33 = qword_27F39B8D0;
  v136 = v2;
  *(v2 + qword_27F39B8D0) = MEMORY[0x277D84F90];
  type metadata accessor for Lockup();
  v144 = a1;
  sub_24F928398();
  v133 = v5;
  v34 = v5 + 16;
  v35 = *(v5 + 16);
  v36 = v142;
  v139 = v35;
  v140 = v34;
  v35(v15);
  sub_24EA90A1C(&qword_27F221FB8, type metadata accessor for Lockup);
  v134 = v15;
  sub_24F929548();
  v37 = v145;
  if (v145)
  {
    v38 = MEMORY[0x277D84F90];
    v120 = v33;
    v143 = v4;
    *(v136 + qword_27F39B8D8) = v145;
    v121 = v37;

    sub_24F928398();
    v39 = sub_24F928278();
    v135 = *(v132 + 8);
    v138 = v132 + 8;
    v135(v30, v137);
    if (v39 == 2 || (v39 & 1) == 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221570);
      v42 = swift_allocObject();
      *(v42 + 16) = v38;
      v145 = v42;
      v40 = v122;
      if (qword_27F2105F0 != -1)
      {
        swift_once();
      }

      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221578);
      __swift_project_value_buffer(v43, qword_27F22D8D8);
      sub_24F928528();

      v118 = 0;
    }

    else
    {
      v40 = v122;
      if (qword_27F2105F0 != -1)
      {
        swift_once();
      }

      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221578);
      __swift_project_value_buffer(v41, qword_27F22D8D8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221570);
      sub_24F928538();
      v118 = 1;
    }

    v44 = v141;
    (*(v133 + 32))(v141, v40, v143);
    v45 = type metadata accessor for Action();
    sub_24F928398();
    v46 = static Action.tryToMakeInstance(byDeserializing:using:)(v32, v44);
    v47 = v137;
    v48 = v135;
    v135(v32, v137);
    v49 = v136;
    *(v136 + qword_27F39B8E0) = v46;
    sub_24F928398();
    v50 = v141;
    v51 = static Action.tryToMakeInstance(byDeserializing:using:)(v32, v141);
    v48(v32, v47);
    *(v49 + qword_27F39B8E8) = v51;
    sub_24F928398();
    v122 = v45;
    v52 = static Action.tryToMakeInstance(byDeserializing:using:)(v32, v50);
    v48(v32, v47);
    *(v49 + qword_27F39B8F0) = v52;
    v53 = v123;
    sub_24F928398();
    v54 = v124;
    v55 = v143;
    v139(v124, v142);
    type metadata accessor for Uber();
    swift_allocObject();
    v56 = v131;
    v57 = Uber.init(deserializing:using:)(v53, v54);
    if (v56)
    {

      v57 = 0;
    }

    v124 = 0;
    v61 = v136;
    *(v136 + qword_27F39B8F8) = v57;
    type metadata accessor for Artwork();
    sub_24F928398();
    v62 = v134;
    v63 = v141;
    (v139)(v134, v141, v55);
    v131 = sub_24EA90A1C(&qword_27F219660, type metadata accessor for Artwork);
    sub_24F929548();
    *(v61 + qword_27F39B900) = v145;
    v123 = 0xD000000000000018;
    sub_24F928398();
    v64 = v63;
    v65 = v143;
    v66 = v139;
    (v139)(v62, v64, v143);
    sub_24F929548();
    *(v61 + qword_27F39B908) = v145;
    sub_24F928398();
    v67 = v141;
    v66(v62, v141, v65);
    type metadata accessor for Badge();
    sub_24EA90A1C(&qword_27F2144A0, type metadata accessor for Badge);
    *(v61 + qword_27F39B910) = sub_24F92B698();
    type metadata accessor for ProductPageExpandedOfferDetails();
    sub_24F928398();
    v66(v62, v67, v65);
    sub_24EA90A1C(&qword_27F226740, type metadata accessor for ProductPageExpandedOfferDetails);
    sub_24F929548();
    v68 = v136;
    *(v136 + qword_27F39B918) = v145;
    v119 = 0xD000000000000015;
    sub_24F928398();
    v69 = sub_24F928348();
    v71 = v70;
    v72 = v137;
    v73 = v135;
    v135(v32, v137);
    v74 = (v68 + qword_27F39B920);
    *v74 = v69;
    v74[1] = v71;
    sub_24F928398();
    sub_24EA8490C();
    sub_24F928208();
    v73(v32, v72);
    *(v68 + qword_27F39B928) = v145;
    sub_24F928398();
    v75 = sub_24F928258();
    LOBYTE(v71) = v76;
    v73(v32, v72);
    v77 = v68 + qword_27F39B930;
    *v77 = v75;
    *(v77 + 8) = v71 & 1;
    sub_24F928398();
    v78 = sub_24F928348();
    v80 = v79;
    v73(v32, v72);
    v81 = (v68 + qword_27F39B938);
    *v81 = v78;
    v81[1] = v80;
    sub_24F928398();
    v82 = JSONObject.appStoreColor.getter();
    v73(v32, v72);
    *(v68 + qword_27F39B940) = v82;
    sub_24F928398();
    v83 = JSONObject.appStoreColor.getter();
    v73(v32, v72);
    *(v68 + qword_27F39B948) = v83;
    sub_24F928398();
    LOBYTE(v83) = sub_24F928278();
    v73(v32, v72);
    *(v68 + qword_27F39B950) = v83;
    sub_24F928398();
    (v139)(v134, v141, v143);
    type metadata accessor for ProductMedia();
    sub_24EA90A1C(&qword_27F226330, type metadata accessor for ProductMedia);
    v84 = sub_24F92B698();
    v85 = v120;
    swift_beginAccess();
    *(v68 + v85) = v84;

    v86 = v68 + qword_27F39B958;
    *v86 = 0u;
    *(v86 + 16) = 0u;
    *(v86 + 32) = 0u;
    *(v86 + 48) = 0;
    sub_24F928398();
    v87 = sub_24F928348();
    v89 = v88;
    v73(v32, v72);
    v90 = (v68 + qword_27F39B960);
    *v90 = v87;
    v90[1] = v89;
    type metadata accessor for OfferDisplayProperties();
    sub_24F928398();
    v91 = v134;
    v92 = v143;
    v93 = v139;
    (v139)(v134, v142, v143);
    sub_24EA90A1C(&qword_27F225B10, type metadata accessor for OfferDisplayProperties);
    sub_24F929548();
    *(v68 + qword_27F39B968) = v146;
    v131 = type metadata accessor for Banner();
    sub_24F928398();
    v94 = v142;
    v93(v91, v142, v92);
    v120 = sub_24EA90A1C(&qword_27F2258D8, type metadata accessor for Banner);
    sub_24F929548();
    *(v68 + qword_27F39B970) = v146;
    type metadata accessor for AppStateBanner();
    sub_24F928398();
    v93(v91, v94, v143);
    sub_24EA90A1C(&qword_27F2267E8, type metadata accessor for AppStateBanner);
    sub_24F929548();
    *(v68 + qword_27F39B978) = v146;
    sub_24F928398();
    v93(v91, v94, v143);
    sub_24F929548();
    *(v68 + qword_27F39B980) = v146;
    v95 = v125;
    sub_24F928398();
    v96 = v124;
    v97 = static Action.makeInstance(byDeserializing:using:)(v95, v94);
    if (v96)
    {

      v98 = 0;
    }

    else
    {
      v98 = v97;
    }

    v99 = v127;
    v100 = v126;
    v101 = v95;
    v102 = v137;
    v103 = v135;
    v135(v101, v137);
    *(v68 + qword_27F39B988) = v98;
    sub_24F928398();
    v104 = static Action.makeInstance(byDeserializing:using:)(v100, v94);
    v103(v100, v102);
    *(v68 + qword_27F39B990) = v104;
    sub_24F928398();
    v105 = static Action.makeInstance(byDeserializing:using:)(v99, v94);
    v103(v99, v102);
    *(v68 + qword_27F39B998) = v105;
    v106 = v128;
    v107 = v144;
    sub_24F928398();
    LOBYTE(v105) = sub_24F928278();
    v103(v106, v102);
    *(v68 + qword_27F39B9A0) = v105 & 1;
    v108 = v129;
    (*(v132 + 16))(v129, v107, v102);
    v109 = v130;
    (v139)(v130, v141, v143);
    v15 = sub_24EA8A8D0(v108, v109);
    if (v118)
    {

      v111 = v142;
      v110 = v143;
      v112 = v144;
    }

    else
    {
      v113 = qword_27F2105F0;

      v111 = v142;
      v112 = v144;
      if (v113 != -1)
      {
        swift_once();
      }

      v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221578);
      __swift_project_value_buffer(v114, qword_27F22D8D8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221570);
      sub_24F9285C8();
      if (v146)
      {

        sub_24ECDF110();
      }

      v110 = v143;
    }

    v115 = *(v133 + 8);
    v115(v111, v110);
    v135(v112, v102);
    v115(v141, v110);
  }

  else
  {
    v58 = sub_24F92AC38();
    sub_24EA90A1C(&qword_27F2213B8, MEMORY[0x277D22548]);
    swift_allocError();
    v60 = v59;
    *v59 = type metadata accessor for ShelfBasedProductPage();
    v60[1] = MEMORY[0x277D84F90];
    (*(*(v58 - 8) + 104))(v60, *MEMORY[0x277D22538], v58);
    swift_willThrow();
    (*(v133 + 8))(v36, v4);
    (*(v132 + 8))(v144, v137);

    swift_deallocPartialClassInstance();
  }

  return v15;
}

uint64_t sub_24EA8A8D0(uint64_t a1, uint64_t a2)
{
  v86 = a2;
  v3 = sub_24F9285B8();
  v84 = *(v3 - 8);
  v85 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v82 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v72 = &v72 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F221C40);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v76 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v72 - v10;
  v12 = sub_24F928388();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v81 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v79 = &v72 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v78 = &v72 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v77 = &v72 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v75 = &v72 - v23;
  MEMORY[0x28223BE20](v22);
  v25 = &v72 - v24;
  v26 = sub_24F928E68();
  v27 = *(v26 - 8);
  v28 = MEMORY[0x28223BE20](v26);
  v73 = &v72 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v32 = &v72 - v31;
  MEMORY[0x28223BE20](v30);
  v34 = &v72 - v33;
  v83 = a1;
  sub_24F928398();
  sub_24F9281F8();
  v80 = v13;
  v36 = *(v13 + 8);
  v35 = v13 + 8;
  v87 = v12;
  v36(v25, v12);
  v74 = *(v27 + 48);
  v37 = v74(v11, 1, v26);
  v92 = v36;
  if (v37 == 1)
  {
    sub_24E601704(v11, qword_27F221C40);
    v38 = sub_24E60986C(MEMORY[0x277D84F90]);
  }

  else
  {
    (*(v27 + 32))(v34, v11, v26);
    (*(v27 + 16))(v32, v34, v26);
    (*(v84 + 16))(v72, v86, v85);
    type metadata accessor for Shelf();
    sub_24EA90A1C(&qword_27F2265E0, type metadata accessor for Shelf);
    v39 = sub_24F92AE68();
    v38 = sub_24F1A3A24(v39);

    (*(v27 + 8))(v34, v26);
  }

  *(v89 + qword_27F39DC30) = v38;
  v40 = v75;
  v41 = v83;
  sub_24F928398();
  v42 = v76;
  sub_24F9281F8();
  v43 = v40;
  v44 = v35;
  v92(v43, v87);
  if (v74(v42, 1, v26) == 1)
  {
    sub_24E601704(v42, qword_27F221C40);
    v45 = sub_24E6098B8(MEMORY[0x277D84F90]);
  }

  else
  {
    v46 = v73;
    (*(v27 + 32))(v73, v42, v26);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2214E0);
    sub_24EA906C0();
    v47 = v88;
    v45 = sub_24F928E38();
    v88 = v47;
    (*(v27 + 8))(v46, v26);
  }

  v48 = v86;
  v49 = v84;
  *(v89 + qword_27F39DC38) = v45;
  v50 = v77;
  sub_24F928398();
  v51 = sub_24F928348();
  v53 = v52;
  v54 = v87;
  v92(v50, v87);
  if (!v53 || (v55._countAndFlagsBits = v51, v55._object = v53, ProductShelfOrderingId.init(rawValue:)(v55), v56 = v90, v90 == 12))
  {
    swift_beginAccess();
    v56 = byte_27F2267E0;
  }

  v57 = v89;
  *(v89 + *(*v89 + 184)) = v56;
  v58 = v78;
  sub_24F928398();
  v59 = sub_24F928278();
  v60 = v58;
  v61 = v92;
  v92(v60, v54);
  *(v57 + *(*v57 + 200)) = v59 & 1;
  v62 = v79;
  sub_24F928398();
  sub_24F928368();
  v86 = v44;
  v61(v62, v54);
  v63 = (v57 + *(*v57 + 192));
  v64 = v91;
  *v63 = v90;
  v63[1] = v64;
  sub_24F928398();
  *(v57 + *(*v57 + 208)) = _sSo26ASKPagePresentationOptionsV12GameStoreKitE16tryDeserializingAB9JetEngine10JSONObjectV_tcfC_0(v62);
  v65 = v81;
  (*(v80 + 16))(v81, v41, v54);
  v66 = v49;
  v67 = *(v49 + 16);
  v68 = v82;
  v69 = v85;
  v67(v82, v48, v85);
  v70 = BasePage.init(deserializing:using:)(v65, v68);
  (*(v66 + 8))(v48, v69);
  v61(v41, v54);
  return v70;
}

uint64_t sub_24EA8B1BC(char *a1, uint64_t a2)
{
  v3 = v2;
  v86 = a2;
  v94 = sub_24F9285B8();
  v87 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v84 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v75 = &v73 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F221C40);
  MEMORY[0x28223BE20](v8 - 8);
  v79 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v73 - v11;
  v13 = sub_24F928388();
  v89 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v83 = &v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v82 = &v73 - v16;
  MEMORY[0x28223BE20](v17);
  v81 = &v73 - v18;
  MEMORY[0x28223BE20](v19);
  v80 = &v73 - v20;
  MEMORY[0x28223BE20](v21);
  v78 = &v73 - v22;
  MEMORY[0x28223BE20](v23);
  v25 = &v73 - v24;
  v26 = sub_24F928E68();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v76 = &v73 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v31 = &v73 - v30;
  MEMORY[0x28223BE20](v32);
  v34 = &v73 - v33;
  v85 = a1;
  sub_24F928398();
  sub_24F9281F8();
  v35 = v27;
  v36 = *(v89 + 8);
  v90 = v13;
  v37 = v13;
  v38 = v36;
  v88 = v89 + 8;
  v36(v25, v37);
  v39 = *(v27 + 48);
  v40 = v39(v12, 1, v26);
  v77 = v35;
  if (v40 == 1)
  {
    sub_24E601704(v12, qword_27F221C40);
    v41 = sub_24E60986C(MEMORY[0x277D84F90]);
  }

  else
  {
    (*(v35 + 32))(v34, v12, v26);
    (*(v35 + 16))(v31, v34, v26);
    v42 = *(v87 + 16);
    v74 = v39;
    v42(v75, v86, v94);
    type metadata accessor for Shelf();
    v43 = v35;
    sub_24EA90A1C(&qword_27F2265E0, type metadata accessor for Shelf);
    v39 = v74;
    v44 = sub_24F92AE68();
    v41 = sub_24F1A3A24(v44);

    (*(v43 + 8))(v34, v26);
  }

  *(v3 + qword_27F39DC30) = v41;
  v45 = v78;
  v46 = v85;
  sub_24F928398();
  v47 = v79;
  sub_24F9281F8();
  v48 = v45;
  v49 = v38;
  v38(v48, v90);
  if (v39(v47, 1, v26) == 1)
  {
    sub_24E601704(v47, qword_27F221C40);
    v50 = sub_24E6099AC(MEMORY[0x277D84F90]);
  }

  else
  {
    v51 = v76;
    v52 = v77;
    (*(v77 + 32))(v76, v47, v26);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2214E0);
    sub_24EA909C8();
    v53 = v91;
    v50 = sub_24F928E38();
    v91 = v53;
    (*(v52 + 8))(v51, v26);
  }

  v54 = v87;
  *(v3 + qword_27F39DC38) = v50;
  v55 = v80;
  sub_24F928398();
  v56 = sub_24F928348();
  v58 = v57;
  v59 = v90;
  v49(v55, v90);
  v60 = 0x4F746C7561666564;
  if (v58)
  {
    v60 = v56;
  }

  v61 = 0xEF676E6972656472;
  if (v58)
  {
    v61 = v58;
  }

  v62 = (v3 + *(*v3 + 184));
  *v62 = v60;
  v62[1] = v61;
  v63 = v81;
  sub_24F928398();
  v64 = sub_24F928278();
  v49(v63, v59);
  *(v3 + *(*v3 + 200)) = v64 & 1;
  v65 = v82;
  sub_24F928398();
  sub_24F928368();
  v49(v65, v59);
  v66 = (v3 + *(*v3 + 192));
  v67 = v93;
  *v66 = v92;
  v66[1] = v67;
  sub_24F928398();
  *(v3 + *(*v3 + 208)) = _sSo26ASKPagePresentationOptionsV12GameStoreKitE16tryDeserializingAB9JetEngine10JSONObjectV_tcfC_0(v65);
  v68 = v83;
  (*(v89 + 16))(v83, v46, v59);
  v69 = v84;
  v70 = v86;
  (*(v54 + 16))(v84, v86, v94);
  v71 = BasePage.init(deserializing:using:)(v68, v69);
  (*(v54 + 8))(v70, v94);
  v49(v46, v59);
  return v71;
}

uint64_t sub_24EA8BA70(uint64_t a1)
{

  return _s12GameStoreKit21ShelfBasedProductPageC4from04fullF13FetchedActionACSgAF_AA0K0CtcfC_0(v2, a1);
}

double sub_24EA8BB00@<D0>(_OWORD *a1@<X8>)
{
  v2 = *(*(v1 + qword_27F39B8D8) + 240);
  if (v2)
  {
    sub_24E60169C(v2 + 144, a1, &qword_27F2129B0);
  }

  else
  {
    result = 0.0;
    *a1 = 0u;
    a1[1] = 0u;
  }

  return result;
}

uint64_t ShelfBasedProductPage.regularPriceFormatted.getter()
{
  v1 = *(v0 + qword_27F39B920);

  return v1;
}

uint64_t ShelfBasedProductPage.updateBuyParams.getter()
{
  v1 = *(v0 + qword_27F39B938);

  return v1;
}

uint64_t ShelfBasedProductPage.askToBuy.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + qword_27F39B958);
  v3 = *(v1 + qword_27F39B958 + 8);
  v4 = *(v1 + qword_27F39B958 + 16);
  v5 = *(v1 + qword_27F39B958 + 24);
  v6 = *(v1 + qword_27F39B958 + 32);
  v7 = *(v1 + qword_27F39B958 + 40);
  v8 = *(v1 + qword_27F39B958 + 48);
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  return sub_24E901B80(v2, v3, v4, v5);
}

uint64_t ShelfBasedProductPage.mediaSectionTitle.getter()
{
  v1 = *(v0 + qword_27F39B960);

  return v1;
}

uint64_t sub_24EA8BCA0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = qword_27F39B8D0;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

void *ShelfBasedProductPage.pageTopBackgroundColor.getter()
{
  v1 = *(v0 + qword_27F39B940);
  v2 = v1;
  return v1;
}

void *ShelfBasedProductPage.pageBottomBackgroundColor.getter()
{
  v1 = *(v0 + qword_27F39B948);
  v2 = v1;
  return v1;
}

uint64_t sub_24EA8BE44()
{

  sub_24E901BD0(*(v0 + qword_27F39B958), *(v0 + qword_27F39B958 + 8), *(v0 + qword_27F39B958 + 16), *(v0 + qword_27F39B958 + 24));
}

uint64_t ShelfBasedProductPage.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics;
  v2 = sub_24F928818();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_24E601704(v0 + *(*v0 + 192), &qword_27F2129B0);

  sub_24E901BD0(*(v0 + qword_27F39B958), *(v0 + qword_27F39B958 + 8), *(v0 + qword_27F39B958 + 16), *(v0 + qword_27F39B958 + 24));

  return v0;
}

uint64_t ShelfBasedProductPage.__deallocating_deinit()
{
  ShelfBasedProductPage.deinit();

  return swift_deallocClassInstance();
}

double sub_24EA8C2A8@<D0>(_OWORD *a1@<X8>)
{
  v2 = *(*(*v1 + qword_27F39B8D8) + 240);
  if (v2)
  {
    sub_24E60169C(v2 + 144, a1, &qword_27F2129B0);
  }

  else
  {
    result = 0.0;
    *a1 = 0u;
    a1[1] = 0u;
  }

  return result;
}

GameStoreKit::ProductShelfOrderingId_optional sub_24EA8C300@<W0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - v7;

  v9._countAndFlagsBits = a1;
  v9._object = a2;
  result.value = ProductShelfOrderingId.init(rawValue:)(v9).value;
  if (v16 == 12)
  {
    *a3 = 0;
    a3[1] = 0;
  }

  else
  {
    *a3 = v16;
    sub_24F9282B8();
    v11 = sub_24F92AC28();
    v12 = *(v11 - 8);
    if ((*(v12 + 48))(v8, 1, v11) == 1)
    {
      sub_24E601704(v8, &qword_27F2213B0);
      v13 = MEMORY[0x277D84F90];
    }

    else
    {
      v13 = sub_24F92ABB8();
      (*(v12 + 8))(v8, v11);
    }

    v14 = sub_24E8E8074(v13);

    a3[1] = v14;
  }

  return result;
}

uint64_t sub_24EA8C4B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v14 - v7;
  *a3 = a1;
  a3[1] = a2;

  sub_24F9282B8();
  v9 = sub_24F92AC28();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_24E601704(v8, &qword_27F2213B0);
    v11 = MEMORY[0x277D84F90];
  }

  else
  {
    v11 = sub_24F92ABB8();
    (*(v10 + 8))(v8, v9);
  }

  v12 = sub_24E8E8074(v11);

  a3[2] = v12;
  return result;
}

uint64_t _s12GameStoreKit21ShelfBasedProductPageC4fromACSgAA0fG0CSg_tcfC_0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218B0);
  MEMORY[0x28223BE20](v2 - 8);
  v233 = &v218[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v249 = &v218[-v5];
  MEMORY[0x28223BE20](v6);
  v250 = &v218[-v7];
  v257 = sub_24F928818();
  v255 = *(v257 - 8);
  MEMORY[0x28223BE20](v257);
  v254 = &v218[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v11 = &v218[-v10];
  MEMORY[0x28223BE20](v12);
  v14 = &v218[-v13];
  v15 = sub_24F91F4A8();
  v16 = *(v15 - 1);
  MEMORY[0x28223BE20](v15);
  v243 = &v218[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v262 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226820);
  v246 = *(v262 - 8);
  MEMORY[0x28223BE20](v262);
  v261 = &v218[-v18];
  v264 = sub_24F91F6B8();
  *&v259 = *(v264 - 8);
  MEMORY[0x28223BE20](v264);
  v248 = &v218[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v218[-v21];
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v218[-v24];
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v26 - 8);
  v28 = &v218[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v29);
  v31 = &v218[-v30];
  if (!a1)
  {
    return 0;
  }

  v245 = v11;
  v256 = v14;
  v32 = OBJC_IVAR____TtC12GameStoreKit11ProductPage_shelfMapping;
  swift_beginAccess();
  v258 = a1;
  v33 = *(a1 + v32);
  v293 = 0;
  memset(v292, 0, sizeof(v292));
  v34 = *(v16 + 7);
  v253 = v31;
  v34(v31, 1, 1, v15);
  v35 = sub_24F91F648();
  (*(*(v35 - 8) + 56))(v25, 1, 1, v35);
  v36 = sub_24F929608();
  (*(*(v36 - 8) + 56))(v22, 1, 1, v36);
  v252 = v28;
  v34(v28, 1, 1, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222A50);
  swift_allocObject();
  v244 = v33;

  v251 = sub_24F9280D8();
  v260 = type metadata accessor for Shelf();
  v263 = swift_allocObject();
  sub_24E60169C(v292, &v286, &qword_27F235830);
  v241 = v16;
  v242 = v15;
  if (*(&v287 + 1))
  {
    v289 = v286;
    v290 = v287;
    v291 = v288;
  }

  else
  {
    v38 = v248;
    sub_24F91F6A8();
    v39 = sub_24F91F668();
    v41 = v40;
    (*(v259 + 8))(v38, v264);
    *&v282 = v39;
    *(&v282 + 1) = v41;
    sub_24F92C7F8();
    sub_24E601704(&v286, &qword_27F235830);
  }

  v42 = v263;
  v43 = v263 + OBJC_IVAR____TtC12GameStoreKit5Shelf_id;
  v44 = v290;
  *v43 = v289;
  *(v43 + 16) = v44;
  *(v43 + 32) = v291;
  v248 = v22;
  sub_24E60169C(v22, v42 + OBJC_IVAR____TtC12GameStoreKit5Shelf_impressionMetrics, &qword_27F213E68);
  *(v42 + 16) = 26624;
  *(v42 + 18) = 0;
  v45 = MEMORY[0x277D84F90];
  *(v42 + 24) = MEMORY[0x277D84F90];
  LOBYTE(v282) = 0;
  *(v42 + 32) = sub_24F2EBA74(v45, &v282);
  sub_24E60169C(v253, v42 + OBJC_IVAR____TtC12GameStoreKit5Shelf_url, &qword_27F228530);
  *(v42 + OBJC_IVAR____TtC12GameStoreKit5Shelf_mergeWhenFetched) = 0;
  v46 = (v42 + OBJC_IVAR____TtC12GameStoreKit5Shelf_batchGroup);
  *v46 = 0x6E6F6D6D6F63;
  v46[1] = 0xE600000000000000;
  *(v42 + OBJC_IVAR____TtC12GameStoreKit5Shelf_fetchStrategy) = 0;
  *(v42 + 40) = 0;
  *(v42 + OBJC_IVAR____TtC12GameStoreKit5Shelf_isHidden) = 0;
  v47 = v42 + OBJC_IVAR____TtC12GameStoreKit5Shelf_contentsMetadata;
  *v47 = 0u;
  *(v47 + 16) = 0u;
  *(v47 + 32) = 0u;
  *(v47 + 56) = 0;
  *(v47 + 64) = 0;
  *(v47 + 48) = 3221225472;
  v48 = (v42 + OBJC_IVAR____TtC12GameStoreKit5Shelf_footerTitle);
  *v48 = 0;
  v48[1] = 0;
  *(v42 + OBJC_IVAR____TtC12GameStoreKit5Shelf_footerAction) = 0;
  *(v42 + OBJC_IVAR____TtC12GameStoreKit5Shelf_footerStyle) = 1;
  v247 = v25;
  sub_24E60169C(v25, v42 + OBJC_IVAR____TtC12GameStoreKit5Shelf_nextPreferredContentRefreshDate, &unk_27F22EC30);
  sub_24E60169C(v252, v42 + OBJC_IVAR____TtC12GameStoreKit5Shelf_refreshUrl, &qword_27F228530);
  *(v42 + OBJC_IVAR____TtC12GameStoreKit5Shelf_pageChangeMetrics) = 0;
  *(v42 + OBJC_IVAR____TtC12GameStoreKit5Shelf_presentationHints) = 0;
  *(v42 + OBJC_IVAR____TtC12GameStoreKit5Shelf_isHorizontal) = 0;
  *(v42 + OBJC_IVAR____TtC12GameStoreKit5Shelf_horizontalScrollTargetBehavior) = 0;
  *(v42 + OBJC_IVAR____TtC12GameStoreKit5Shelf_isPersonalized) = 0;
  *(v42 + OBJC_IVAR____TtC12GameStoreKit5Shelf_rowsPerColumn) = 1;
  v49 = v42 + OBJC_IVAR____TtC12GameStoreKit5Shelf_background;
  *v49 = 0u;
  *(v49 + 16) = 0u;
  *(v49 + 32) = 0x8000;
  *(v42 + OBJC_IVAR____TtC12GameStoreKit5Shelf_onShouldRemoveModel) = v251;
  *(v42 + OBJC_IVAR____TtC12GameStoreKit5Shelf_onRemoveModelEvents) = v45;
  v50 = *(v42 + 24);
  v51 = sub_24EA90A64();

  v52 = 0;
  v285 = MEMORY[0x253051460](0, &type metadata for PersonalizationStyle, v51);
  v264 = v50 + 32;
  v259 = xmmword_24F950E90;
  v53 = &qword_27F226840;
  while (2)
  {
    while (2)
    {
      v54 = 0uLL;
      v55 = *(v50 + 16);
      if (v52 == v55)
      {
LABEL_8:
        v271 = 0;
        v52 = v55;
        v269 = v54;
        v270 = v54;
        goto LABEL_12;
      }

      while (1)
      {
        if ((v52 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_39:
          __break(1u);
          goto LABEL_40;
        }

        if (v52 >= *(v50 + 16))
        {
          goto LABEL_39;
        }

        sub_24E615E00(v264 + 40 * v52++, &v269);
LABEL_12:
        v267[0] = v269;
        v267[1] = v270;
        v268 = v271;
        if (!*(&v270 + 1))
        {
          memset(v272, 0, 24);
          *(&v272[1] + 8) = v259;
LABEL_20:
          sub_24E601704(v272, &qword_27F226830);
          v278 = 0;
          v276 = 0u;
          v277 = 0u;
LABEL_21:
          sub_24E601704(&v276, &qword_27F222730);
          v282 = 0u;
          v283 = 0u;
          v284 = 0;
          goto LABEL_22;
        }

        sub_24E612C80(v267, v266);
        sub_24E615E00(v266, &v265);
        v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226840);
        if ((swift_dynamicCast() & 1) == 0)
        {
          memset(v272, 0, 40);
        }

        __swift_destroy_boxed_opaque_existential_1(v266);
        if (*(&v272[1] + 1) == 1)
        {
          goto LABEL_20;
        }

        v273 = v272[0];
        v274 = v272[1];
        v275 = *&v272[2];
        if (*(&v272[1] + 1))
        {
          break;
        }

        sub_24E601704(&v273, &qword_27F222730);
        v54 = 0uLL;
        if (v52 == v55)
        {
          goto LABEL_8;
        }
      }

      *(&v274 + 1) = *(&v272[1] + 1);
      result = sub_24E60169C(&v273, v272, &qword_27F222730);
      if (!*(&v272[1] + 1))
      {
        goto LABEL_155;
      }

      sub_24E612C80(v272, &v276);
      sub_24E601704(&v273, &qword_27F222730);
      if (!*(&v277 + 1))
      {
        goto LABEL_21;
      }

      sub_24E612C80(&v276, &v279);
      v58 = *(&v280 + 1);
      v59 = v281;
      v60 = __swift_project_boxed_opaque_existential_1(&v279, *(&v280 + 1));
      v61 = v58;
      v51 = v60;
      if ((PersonalizableModel.needsClientPersonalization.getter(v61, v59) & 1) == 0)
      {
        __swift_destroy_boxed_opaque_existential_1(&v279);
        continue;
      }

      break;
    }

    sub_24E612C80(&v279, &v282);
LABEL_22:
    v279 = v282;
    v280 = v283;
    v281 = v284;
    if (*(&v283 + 1))
    {
      sub_24E612C80(&v279, &v276);
      v56 = *(&v277 + 1);
      v57 = v278;
      __swift_project_boxed_opaque_existential_1(&v276, *(&v277 + 1));
      (*(v57 + 16))(&v273, v56, v57);
      LOBYTE(v57) = v273;
      __swift_destroy_boxed_opaque_existential_1(&v276);
      v51 = &v285;
      sub_24ED7CC74(&v282, v57);
      continue;
    }

    break;
  }

  v62 = v263;
  *(v263 + OBJC_IVAR____TtC12GameStoreKit5Shelf_personalizationStyles) = v285;
  v63 = (v62 + OBJC_IVAR____TtC12GameStoreKit5Shelf_accessibilityMetadata);
  *v63 = 0u;
  v63[1] = 0u;
  v51 = *(v62 + OBJC_IVAR____TtC12GameStoreKit5Shelf_onRemoveModelEvents);
  if (v51 >> 62)
  {
LABEL_40:
    v64 = sub_24F92C738();
    v66 = v247;
    v65 = v248;
    if (v64)
    {
      goto LABEL_31;
    }

LABEL_41:

    goto LABEL_42;
  }

  v64 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v66 = v247;
  v65 = v248;
  if (!v64)
  {
    goto LABEL_41;
  }

LABEL_31:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225160);
  if (v64 < 1)
  {
    goto LABEL_150;
  }

  v264 = v51 & 0xC000000000000001;
  v67 = (v246 + 8);

  v68 = 0;
  v69 = v51;
  do
  {
    if (v264)
    {
      MEMORY[0x253052270](v68, v51);
    }

    else
    {
    }

    ++v68;
    sub_24EA90AB8();
    sub_24F9288B8();
    v70 = v261;
    sub_24F9288C8();

    __swift_destroy_boxed_opaque_existential_1(&v282);
    (*v67)(v70, v262);
    v51 = v69;
  }

  while (v64 != v68);

  v66 = v247;
  v65 = v248;
LABEL_42:
  sub_24E601704(v252, &qword_27F228530);
  sub_24E601704(v65, &qword_27F213E68);
  sub_24E601704(v66, &unk_27F22EC30);
  sub_24E601704(v253, &qword_27F228530);
  sub_24E601704(v292, &qword_27F235830);
  v71 = v244;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v282 = v71;
  sub_24E81E6DC(v263, 0x756B636F4C706F74, 0xE900000000000070, isUniquelyReferenced_nonNull_native);
  v73 = v282;
  *&v273 = sub_24E6098B8(MEMORY[0x277D84F90]);
  v65 = OBJC_IVAR____TtC12GameStoreKit11ProductPage_purchasedOrdering;
  v53 = *(v258 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_purchasedOrdering);
  v263 = v73;
  if (!v53)
  {
    v75 = 0;
    goto LABEL_71;
  }

  if (v53 >> 62)
  {
    goto LABEL_151;
  }

  v74 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_45:
  v75 = MEMORY[0x277D84F90];
  if (!v74)
  {
LABEL_71:
    v91 = v258;
    sub_24E989C48(v75, 2);
    v92 = *(v91 + v65);
    if (v92)
    {
      if (v92 >> 62)
      {
        v93 = sub_24F92C738();
      }

      else
      {
        v93 = *((v92 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v94 = MEMORY[0x277D84F90];
      if (v93)
      {
        *&v276 = MEMORY[0x277D84F90];
        result = sub_24F457B3C(0, v93 & ~(v93 >> 63), 0);
        if (v93 < 0)
        {
          goto LABEL_154;
        }

        v95 = 0;
        v94 = v276;
        do
        {
          if ((v92 & 0xC000000000000001) != 0)
          {
            v96 = MEMORY[0x253052270](v95, v92);
            v97 = *(v96 + 32);
            if (!v97)
            {
              goto LABEL_81;
            }
          }

          else
          {
            v96 = *(v92 + 8 * v95 + 32);

            v97 = *(v96 + 32);
            if (!v97)
            {
LABEL_81:
              v100 = *(v96 + 16);
              v101 = 0x68736E6565726373;
              if (v100 != 2)
              {
                v101 = 0x666C656873;
              }

              v102 = 0xEB0000000073746FLL;
              if (v100 != 2)
              {
                v102 = 0xE500000000000000;
              }

              v103 = 0x756B636F4C706F74;
              if (!*(v96 + 16))
              {
                v103 = 0x7975426F546B7361;
              }

              v104 = 0xE900000000000070;
              if (!*(v96 + 16))
              {
                v104 = 0xEF74736575716552;
              }

              if (*(v96 + 16) <= 1u)
              {
                v98 = v103;
              }

              else
              {
                v98 = v101;
              }

              if (*(v96 + 16) <= 1u)
              {
                v99 = v104;
              }

              else
              {
                v99 = v102;
              }

              goto LABEL_95;
            }
          }

          v98 = *(v96 + 24);
          v99 = v97;
LABEL_95:
          *&v279 = v98;
          *(&v279 + 1) = v99;

          sub_24F92C7F8();

          *&v276 = v94;
          v106 = *(v94 + 16);
          v105 = *(v94 + 24);
          if (v106 >= v105 >> 1)
          {
            sub_24F457B3C((v105 > 1), v106 + 1, 1);
            v94 = v276;
          }

          ++v95;
          *(v94 + 16) = v106 + 1;
          v107 = v94 + 40 * v106;
          v108 = v282;
          v109 = v283;
          *(v107 + 64) = v284;
          *(v107 + 32) = v108;
          *(v107 + 48) = v109;
        }

        while (v93 != v95);
      }
    }

    else
    {
      v94 = 0;
    }

    v110 = v258;
    sub_24E989C48(v94, 0);
    v111 = *(v110 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_uberArtworkForCompactDisplay);
    v112 = *(v110 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_uberStyle);
    v113 = *(v110 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_uberArtwork);
    v114 = *(v110 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_uberVideo);
    v65 = *(v110 + 48);
    v253 = type metadata accessor for Uber();
    v251 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226848);
    v115 = swift_allocObject();
    if (v113)
    {
      v116 = *(v113 + 16);

      v115[4] = v116;
      v115[5] = v117;
      if (v111)
      {
LABEL_102:
        v118 = *(v111 + 16);

LABEL_105:
        v115[6] = v118;
        v115[7] = v119;
        v120 = *&aBackgrou[8 * v112 + 8];
        v115[8] = *&aAbove_3[8 * v112];
        v115[9] = v120;
        v244 = v111;
        v264 = v65;
        v261 = v114;
        v262 = v113;
        if (v114)
        {
          v260 = v112;
          v121 = v241;
          v122 = v242;
          *&v259 = *(v241 + 2);
          v123 = v243;
          (v259)(v243, v114 + OBJC_IVAR____TtC12GameStoreKit5Video_videoUrl, v242);

          swift_retain_n();
          swift_retain_n();

          v124 = sub_24F91F398();
          v126 = v125;
          v127 = *(v121 + 1);
          v127(v123, v122);
          v115[10] = v124;
          v115[11] = v126;
          (v259)(v123, v114 + OBJC_IVAR____TtC12GameStoreKit5Video_videoUrl, v122);
          v114 = sub_24F91F398();
          v129 = v128;
          v130 = v122;
          v65 = v264;
          v127(v123, v130);
          LOBYTE(v112) = v260;
        }

        else
        {
          v115[10] = 0;
          v115[11] = 0;

          swift_retain_n();

          v129 = 0;
        }

        v112 = v112;
        v115[12] = v114;
        v115[13] = v129;
        if (v65)
        {
          v131 = *(v65 + 16);
        }

        else
        {
          v131 = 0;
          v132 = 0;
        }

        v133 = v244;
        v53 = 0;
        v115[14] = v131;
        v115[15] = v132;
        v115[16] = 0;
        v115[17] = 0;
        v134 = MEMORY[0x277D84F90];
        while (1)
        {
          v135 = 7;
          if (v53 > 7)
          {
            v135 = v53;
          }

          v136 = (v135 + 1);
          v137 = 16 * v53 + 40;
          do
          {
            if (v53 == 7)
            {
              swift_setDeallocating();
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23B740);
              swift_arrayDestroy();
              swift_deallocClassInstance();
              v146 = sub_24F92B708();

              *&v279 = v146;
              sub_24F92C7F8();
              v147 = v283;
              v148 = v251;
              *(v251 + 80) = v282;
              *(v148 + 96) = v147;
              *(v148 + 112) = v284;
              *(v148 + 16) = v112;
              v150 = v261;
              v149 = v262;
              *(v148 + 24) = v262;
              v151 = v133;
              if (!v133)
              {

                v151 = v149;
              }

              v152 = v150 != 0;
              *(v148 + 32) = v151;
              *(v148 + 40) = v150;
              *(v148 + 48) = v150;
              *(v148 + 56) = v65;
              *(v148 + 64) = 0;
              *(v148 + 72) = 0;
              v153 = v150 | v149;
              v154 = v255;
              v155 = v258;
              if (v153)
              {
LABEL_133:
                *(v148 + 17) = v152;
                v232 = 40;
              }

              else
              {
                if (v65)
                {

                  v156 = ASKDeviceTypeGetCurrent();
                  v157 = sub_24F92B0D8();
                  v159 = v158;
                  if (v157 == sub_24F92B0D8() && v159 == v160)
                  {

                    goto LABEL_132;
                  }

                  v161 = sub_24F92CE08();

                  if (v161)
                  {
LABEL_132:
                    v152 = 2;
                    v148 = v251;
                    goto LABEL_133;
                  }

                  v148 = v251;
                }

                sub_24E6585F8(v148 + 80);
                swift_deallocPartialClassInstance();
                v232 = 0;
                v251 = 0;
              }

              v225 = sub_24E954344(v263);

              v282 = 0u;
              v283 = 0u;
              LODWORD(v231) = *(v155 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_isComplete);
              v224 = v273;
              v239 = *(v155 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_pageRefreshPolicy);
              v162 = *(v154 + 16);
              v222 = v154 + 16;
              v223 = v162;
              v162(v256, (v155 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_pageMetrics), v257);
              v240 = *(v155 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_pageRenderEvent);
              v253 = *(v155 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_banner);
              v261 = *(v155 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_secondaryBanner);
              v238 = *(v155 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_badges);
              v262 = *(v155 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_expandedOfferDetails);
              v163 = *(v155 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_regularPriceFormatted + 8);
              v230 = *(v155 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_regularPriceFormatted);
              v237 = v163;
              v229 = *(v155 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_externalVersionIdentifier);
              LODWORD(v228) = *(v155 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_externalVersionIdentifier + 8);
              *&v259 = *(v155 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_titleOfferDisplayProperties);
              v164 = v155;
              v165 = *(v155 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_updateBuyParams + 8);
              v227 = *(v155 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_updateBuyParams);
              v243 = v165;
              v166 = v155 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_askToBuy;
              v260 = *(v155 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_logoArtwork);
              v263 = *(v155 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_navigationBarIconArtwork);
              v167 = *(v155 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_askToBuy + 8);
              v235 = *(v155 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_askToBuy);
              v236 = v167;
              v221 = *(v155 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_theme);
              v220 = *(v155 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_hasDarkUserInterfaceStyle);
              v168 = *(v155 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_askToBuy + 24);
              v234 = *(v155 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_askToBuy + 16);
              v241 = *(v155 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_pageTopBackgroundColor);
              v242 = *(v155 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_pageBottomBackgroundColor);
              v170 = *(v155 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_askToBuy + 32);
              v169 = *(v166 + 40);
              v264 = *(v164 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_shareAction);
              v171 = *(v166 + 48);
              v252 = *(v164 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_developerAction);
              v248 = *(v164 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_ageRatingAction);
              v247 = *(v164 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_fullProductFetchedAction);
              v246 = *(v164 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_appPromotionDetailPageAction);
              v172 = *(v164 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_mediaSectionTitle + 8);
              v226 = *(v164 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_mediaSectionTitle);
              v219 = *(v164 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_alwaysAllowReviews);
              type metadata accessor for ShelfBasedProductPage();
              v173 = swift_allocObject();
              v174 = qword_27F39B8D0;
              v175 = MEMORY[0x277D84F90];
              *(v173 + qword_27F39B8D0) = MEMORY[0x277D84F90];
              *(v173 + qword_27F39B8D8) = v164;
              *(v173 + qword_27F39B970) = v253;
              *(v173 + qword_27F39B978) = 0;
              *(v173 + qword_27F39B980) = v261;
              *(v173 + qword_27F39B910) = v238;
              *(v173 + qword_27F39B918) = v262;
              v176 = (v173 + qword_27F39B920);
              v177 = v237;
              *v176 = v230;
              v176[1] = v177;
              v178 = v173 + qword_27F39B930;
              *v178 = v229;
              v178[8] = v228;
              v179 = (v173 + qword_27F39B938);
              v180 = v243;
              *v179 = v227;
              v179[1] = v180;
              *(v173 + qword_27F39B968) = v259;
              v181 = (v173 + qword_27F39B958);
              v182 = v236;
              *v181 = v235;
              v181[1] = v182;
              v181[2] = v234;
              v181[3] = v168;
              v229 = v169;
              v230 = v168;
              v227 = v171;
              v228 = v170;
              v181[4] = v170;
              v181[5] = v169;
              v181[6] = v171;
              *(v173 + qword_27F39B8F8) = v251;
              *(v173 + qword_27F39B900) = v260;
              *(v173 + qword_27F39B908) = v263;
              v183 = (v173 + qword_27F39B960);
              *v183 = v226;
              v183[1] = v172;
              v226 = v172;
              swift_beginAccess();
              *(v173 + v174) = v175;
              v184 = v220;
              *(v173 + qword_27F39B928) = v221;
              *(v173 + qword_27F39B950) = v184;
              v185 = v242;
              *(v173 + qword_27F39B940) = v241;
              *(v173 + qword_27F39B948) = v185;
              *(v173 + qword_27F39B8E0) = v264;
              *(v173 + qword_27F39B8E8) = v252;
              v186 = v247;
              *(v173 + qword_27F39B8F0) = v248;
              *(v173 + qword_27F39B988) = v186;
              *(v173 + qword_27F39B990) = 0;
              *(v173 + qword_27F39B998) = v246;
              *(v173 + qword_27F39B9A0) = v219;
              sub_24E60169C(&v282, &v279, &qword_27F2129B0);
              v187 = v245;
              v188 = v257;
              v189 = v223;
              v223(v245, v256, v257);
              v190 = v224;
              *(v173 + qword_27F39DC30) = v225;
              *(v173 + qword_27F39DC38) = v190;
              *(v173 + *(*v173 + 184)) = 0;
              sub_24E60169C(&v279, v173 + *(*v173 + 192), &qword_27F2129B0);
              *(v173 + *(*v173 + 200)) = (v231 & 1) == 0;
              *(v173 + *(*v173 + 208)) = v232;
              v191 = v254;
              v189(v254, v187, v188);
              v192 = sub_24F9285B8();
              v193 = *(v192 - 8);
              v194 = v250;
              (*(v193 + 56))(v250, 1, 1, v192);
              v173[2] = v239;
              v189(v173 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics, v191, v188);
              v231 = v173;
              *(v173 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageRenderEvent) = v240;
              v195 = v249;
              sub_24E60169C(v194, v249, &qword_27F2218B0);
              v232 = v193;
              v196 = *(v193 + 48);
              v225 = v192;
              LODWORD(v192) = v196(v195, 1, v192);

              v197 = v241;
              v198 = v242;

              if (v192 == 1)
              {

                sub_24E901B80(v235, v236, v234, v230);

                v199 = &qword_27F2218B0;
                sub_24E601704(v194, &qword_27F2218B0);
                v200 = *(v255 + 8);
                v201 = v257;
                v200(v254, v257);
                v200(v245, v201);
                sub_24E601704(&v279, &qword_27F2129B0);
                v200(v256, v201);
                sub_24E601704(&v282, &qword_27F2129B0);
                v202 = v195;
                goto LABEL_144;
              }

              v241 = v196;

              v242 = v197;
              v243 = v198;

              sub_24E901B80(v235, v236, v234, v230);
              v203 = qword_27F2105F0;

              if (v203 != -1)
              {
                swift_once();
              }

              v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221578);
              __swift_project_value_buffer(v204, qword_27F22D8D8);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221570);
              v205 = v249;
              sub_24F9285C8();
              v206 = *&v272[0];
              if (*&v272[0])
              {
              }

              v207 = *(v232 + 8);
              v208 = v225;
              v232 += 8;
              v207(v205, v225);
              if (v206)
              {
                v209 = v250;
                v210 = v233;
                sub_24E60169C(v250, v233, &qword_27F2218B0);
                if (v241(v210, 1, v208) == 1)
                {

                  v211 = v210;
                  v199 = &qword_27F2218B0;
                  sub_24E601704(v209, &qword_27F2218B0);
                  v212 = *(v255 + 8);
                  v213 = v257;
                  v212(v254, v257);
                  v212(v245, v213);
                  sub_24E601704(&v279, &qword_27F2129B0);
                  v212(v256, v213);
                  sub_24E601704(&v282, &qword_27F2129B0);
                  v202 = v211;
                  goto LABEL_144;
                }

                sub_24ECDF110();

                sub_24E601704(v209, &qword_27F2218B0);
                v216 = *(v255 + 8);
                v217 = v257;
                v216(v254, v257);
                v216(v245, v217);
                sub_24E601704(&v279, &qword_27F2129B0);
                v216(v256, v217);
                sub_24E601704(&v282, &qword_27F2129B0);
                v207(v233, v208);
              }

              else
              {

                sub_24E601704(v250, &qword_27F2218B0);
                v214 = *(v255 + 8);
                v215 = v257;
                v214(v254, v257);
                v214(v245, v215);
                v199 = &qword_27F2129B0;
                sub_24E601704(&v279, &qword_27F2129B0);
                v214(v256, v215);
                v202 = &v282;
LABEL_144:
                sub_24E601704(v202, v199);
              }

              return v231;
            }

            v53 = (v53 + 1);
            if (v136 == v53)
            {
              __break(1u);
LABEL_150:
              __break(1u);
LABEL_151:
              v74 = sub_24F92C738();
              goto LABEL_45;
            }

            v138 = v137 + 16;
            v139 = *(v115 + v137);
            v137 += 16;
          }

          while (!v139);
          v140 = v133;
          v141 = v112;
          v142 = *(v115 + v138 - 24);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v134 = sub_24E615CF4(0, *(v134 + 2) + 1, 1, v134);
          }

          v144 = *(v134 + 2);
          v143 = *(v134 + 3);
          if (v144 >= v143 >> 1)
          {
            v134 = sub_24E615CF4((v143 > 1), v144 + 1, 1, v134);
          }

          *(v134 + 2) = v144 + 1;
          v145 = &v134[16 * v144];
          *(v145 + 4) = v142;
          *(v145 + 5) = v139;
          v112 = v141;
          v133 = v140;
          v65 = v264;
        }
      }
    }

    else
    {
      v115[4] = 0;
      v115[5] = 0;
      if (v111)
      {
        goto LABEL_102;
      }
    }

    v118 = 0;
    v119 = 0;
    goto LABEL_105;
  }

  v264 = v65;
  *&v276 = MEMORY[0x277D84F90];
  result = sub_24F457B3C(0, v74 & ~(v74 >> 63), 0);
  if ((v74 & 0x8000000000000000) == 0)
  {
    v76 = 0;
    v75 = v276;
    while (1)
    {
      if ((v53 & 0xC000000000000001) != 0)
      {
        v77 = MEMORY[0x253052270](v76, v53);
        v78 = *(v77 + 32);
        if (!v78)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v77 = v53[v76 + 4];

        v78 = *(v77 + 32);
        if (!v78)
        {
LABEL_52:
          v81 = *(v77 + 16);
          v82 = 0x68736E6565726373;
          if (v81 != 2)
          {
            v82 = 0x666C656873;
          }

          v83 = 0xEB0000000073746FLL;
          if (v81 != 2)
          {
            v83 = 0xE500000000000000;
          }

          v84 = 0x756B636F4C706F74;
          if (!*(v77 + 16))
          {
            v84 = 0x7975426F546B7361;
          }

          v85 = 0xE900000000000070;
          if (!*(v77 + 16))
          {
            v85 = 0xEF74736575716552;
          }

          if (*(v77 + 16) <= 1u)
          {
            v79 = v84;
          }

          else
          {
            v79 = v82;
          }

          if (*(v77 + 16) <= 1u)
          {
            v80 = v85;
          }

          else
          {
            v80 = v83;
          }

          goto LABEL_66;
        }
      }

      v79 = *(v77 + 24);
      v80 = v78;
LABEL_66:
      *&v279 = v79;
      *(&v279 + 1) = v80;

      sub_24F92C7F8();

      *&v276 = v75;
      v87 = *(v75 + 16);
      v86 = *(v75 + 24);
      if (v87 >= v86 >> 1)
      {
        sub_24F457B3C((v86 > 1), v87 + 1, 1);
        v75 = v276;
      }

      ++v76;
      *(v75 + 16) = v87 + 1;
      v88 = v75 + 40 * v87;
      v89 = v282;
      v90 = v283;
      *(v88 + 64) = v284;
      *(v88 + 32) = v89;
      *(v88 + 48) = v90;
      if (v74 == v76)
      {
        v65 = v264;
        goto LABEL_71;
      }
    }
  }

  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
  return result;
}

uint64_t _s12GameStoreKit21ShelfBasedProductPageC4from04fullF13FetchedActionACSgAF_AA0K0CtcfC_0(uint64_t a1, uint64_t a2)
{
  v204 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218B0);
  MEMORY[0x28223BE20](v3 - 8);
  v175 = &v146 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v197 = (&v146 - v6);
  MEMORY[0x28223BE20](v7);
  v9 = &v146 - v8;
  v10 = sub_24F928818();
  v202 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v198 = &v146 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v146 - v13;
  MEMORY[0x28223BE20](v15);
  v203 = &v146 - v16;
  v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226820);
  v192 = *(v208 - 8);
  MEMORY[0x28223BE20](v208);
  v207 = &v146 - v17;
  v210 = sub_24F91F6B8();
  *&v205 = *(v210 - 8);
  MEMORY[0x28223BE20](v210);
  v19 = &v146 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v146 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v146 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v26 - 8);
  v28 = &v146 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v31 = &v146 - v30;
  if (a1)
  {
    v193 = v9;
    v194 = v14;
    v201 = v10;
    v32 = qword_27F39DC30;
    swift_beginAccess();
    v33 = *(a1 + v32);
    *&v238[0] = 0x756B636F4C706F74;
    *(&v238[0] + 1) = 0xE900000000000070;

    v191 = v33;

    sub_24F92C7F8();
    v34 = sub_24F91F4A8();
    memset(v238, 0, sizeof(v238));
    v239 = 0;
    v35 = *(*(v34 - 8) + 56);
    v196 = v31;
    v35(v31, 1, 1, v34);
    v36 = sub_24F91F648();
    v37 = *(*(v36 - 8) + 56);
    v199 = v25;
    v37(v25, 1, 1, v36);
    v38 = sub_24F929608();
    v39 = *(*(v38 - 8) + 56);
    v200 = v22;
    v39(v22, 1, 1, v38);
    v35(v28, 1, 1, v34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222A50);
    swift_allocObject();
    v40 = sub_24F9280D8();
    v206 = type metadata accessor for Shelf();
    v209 = swift_allocObject();
    sub_24E60169C(v238, &v232, &qword_27F235830);
    v195 = a1;
    if (*(&v233 + 1))
    {
      v235 = v232;
      v236 = v233;
      v237 = v234;
    }

    else
    {
      sub_24F91F6A8();
      v42 = sub_24F91F668();
      v44 = v43;
      (*(v205 + 8))(v19, v210);
      *&v228 = v42;
      *(&v228 + 1) = v44;
      sub_24F92C7F8();
      sub_24E601704(&v232, &qword_27F235830);
    }

    v45 = v209;
    v46 = v209 + OBJC_IVAR____TtC12GameStoreKit5Shelf_id;
    v47 = v236;
    *v46 = v235;
    *(v46 + 16) = v47;
    *(v46 + 32) = v237;
    sub_24E60169C(v200, v45 + OBJC_IVAR____TtC12GameStoreKit5Shelf_impressionMetrics, &qword_27F213E68);
    *(v45 + 16) = 26624;
    *(v45 + 18) = 0;
    v48 = MEMORY[0x277D84F90];
    *(v45 + 24) = MEMORY[0x277D84F90];
    LOBYTE(v228) = 0;
    *(v45 + 32) = sub_24F2EBA74(v48, &v228);
    sub_24E60169C(v196, v45 + OBJC_IVAR____TtC12GameStoreKit5Shelf_url, &qword_27F228530);
    *(v45 + OBJC_IVAR____TtC12GameStoreKit5Shelf_mergeWhenFetched) = 0;
    v49 = (v45 + OBJC_IVAR____TtC12GameStoreKit5Shelf_batchGroup);
    *v49 = 0x6E6F6D6D6F63;
    v49[1] = 0xE600000000000000;
    *(v45 + OBJC_IVAR____TtC12GameStoreKit5Shelf_fetchStrategy) = 0;
    *(v45 + 40) = 0;
    *(v45 + OBJC_IVAR____TtC12GameStoreKit5Shelf_isHidden) = 0;
    v50 = v45 + OBJC_IVAR____TtC12GameStoreKit5Shelf_contentsMetadata;
    *v50 = 0u;
    *(v50 + 16) = 0u;
    *(v50 + 32) = 0u;
    *(v50 + 56) = 0;
    *(v50 + 64) = 0;
    *(v50 + 48) = 3221225472;
    v51 = (v45 + OBJC_IVAR____TtC12GameStoreKit5Shelf_footerTitle);
    *v51 = 0;
    v51[1] = 0;
    *(v45 + OBJC_IVAR____TtC12GameStoreKit5Shelf_footerAction) = 0;
    *(v45 + OBJC_IVAR____TtC12GameStoreKit5Shelf_footerStyle) = 1;
    sub_24E60169C(v199, v45 + OBJC_IVAR____TtC12GameStoreKit5Shelf_nextPreferredContentRefreshDate, &unk_27F22EC30);
    v190 = v28;
    sub_24E60169C(v28, v45 + OBJC_IVAR____TtC12GameStoreKit5Shelf_refreshUrl, &qword_27F228530);
    *(v45 + OBJC_IVAR____TtC12GameStoreKit5Shelf_pageChangeMetrics) = 0;
    *(v45 + OBJC_IVAR____TtC12GameStoreKit5Shelf_presentationHints) = 0;
    *(v45 + OBJC_IVAR____TtC12GameStoreKit5Shelf_isHorizontal) = 0;
    *(v45 + OBJC_IVAR____TtC12GameStoreKit5Shelf_horizontalScrollTargetBehavior) = 0;
    *(v45 + OBJC_IVAR____TtC12GameStoreKit5Shelf_isPersonalized) = 0;
    *(v45 + OBJC_IVAR____TtC12GameStoreKit5Shelf_rowsPerColumn) = 1;
    v52 = v45 + OBJC_IVAR____TtC12GameStoreKit5Shelf_background;
    *v52 = 0u;
    *(v52 + 16) = 0u;
    *(v52 + 32) = 0x8000;
    *(v45 + OBJC_IVAR____TtC12GameStoreKit5Shelf_onShouldRemoveModel) = v40;
    *(v45 + OBJC_IVAR____TtC12GameStoreKit5Shelf_onRemoveModelEvents) = v48;
    v53 = *(v45 + 24);
    v54 = sub_24EA90A64();
    v189 = v40;

    v55 = 0;
    v231 = MEMORY[0x253051460](0, &type metadata for PersonalizationStyle, v54);
    v210 = v53 + 32;
    v205 = xmmword_24F950E90;
    while (2)
    {
      v56 = 0uLL;
      v57 = *(v53 + 16);
      if (v55 == v57)
      {
LABEL_8:
        v217 = 0;
        v55 = v57;
        v215 = v56;
        v216 = v56;
        goto LABEL_12;
      }

      while (1)
      {
        if ((v55 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_56:
          __break(1u);
          goto LABEL_57;
        }

        if (v55 >= *(v53 + 16))
        {
          goto LABEL_56;
        }

        sub_24E615E00(v210 + 40 * v55++, &v215);
LABEL_12:
        v213[0] = v215;
        v213[1] = v216;
        v214 = v217;
        if (!*(&v216 + 1))
        {
          memset(v218, 0, 24);
          *(&v218[1] + 8) = v205;
LABEL_24:
          sub_24E601704(v218, &qword_27F226830);
          v224 = 0;
          v222 = 0u;
          v223 = 0u;
          goto LABEL_25;
        }

        sub_24E612C80(v213, v212);
        sub_24E615E00(v212, &v211);
        v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226840);
        if ((swift_dynamicCast() & 1) == 0)
        {
          memset(v218, 0, 40);
        }

        __swift_destroy_boxed_opaque_existential_1(v212);
        if (*(&v218[1] + 1) == 1)
        {
          goto LABEL_24;
        }

        v219 = v218[0];
        v220 = v218[1];
        v221 = *&v218[2];
        if (*(&v218[1] + 1))
        {
          break;
        }

        sub_24E601704(&v219, &qword_27F222730);
        v56 = 0uLL;
        if (v55 == v57)
        {
          goto LABEL_8;
        }
      }

      *(&v220 + 1) = *(&v218[1] + 1);
      result = sub_24E60169C(&v219, v218, &qword_27F222730);
      if (*(&v218[1] + 1))
      {
        sub_24E612C80(v218, &v222);
        sub_24E601704(&v219, &qword_27F222730);
        if (*(&v223 + 1))
        {
          sub_24E612C80(&v222, &v225);
          v58 = *(&v226 + 1);
          v59 = v227;
          v60 = __swift_project_boxed_opaque_existential_1(&v225, *(&v226 + 1));
          v61 = v58;
          v54 = v60;
          if ((PersonalizableModel.needsClientPersonalization.getter(v61, v59) & 1) == 0)
          {
            __swift_destroy_boxed_opaque_existential_1(&v225);
            continue;
          }

          sub_24E612C80(&v225, &v228);
LABEL_26:
          v225 = v228;
          v226 = v229;
          v227 = v230;
          if (*(&v229 + 1))
          {
            sub_24E612C80(&v225, &v222);
            v62 = *(&v223 + 1);
            v63 = v224;
            __swift_project_boxed_opaque_existential_1(&v222, *(&v223 + 1));
            (*(v63 + 16))(&v219, v62, v63);
            LOBYTE(v62) = v219;
            __swift_destroy_boxed_opaque_existential_1(&v222);
            v54 = &v231;
            sub_24ED7CC74(&v228, v62);
            continue;
          }

          v64 = v209;
          *(v209 + OBJC_IVAR____TtC12GameStoreKit5Shelf_personalizationStyles) = v231;
          v65 = (v64 + OBJC_IVAR____TtC12GameStoreKit5Shelf_accessibilityMetadata);
          *v65 = 0u;
          v65[1] = 0u;
          v54 = *(v64 + OBJC_IVAR____TtC12GameStoreKit5Shelf_onRemoveModelEvents);
          if (!(v54 >> 62))
          {
            v66 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
            goto LABEL_31;
          }

LABEL_57:
          v66 = sub_24F92C738();
LABEL_31:
          v67 = v202;
          v68 = v195;
          v70 = v199;
          v69 = v200;
          if (!v66)
          {

            goto LABEL_40;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225160);
          if (v66 < 1)
          {
            __break(1u);
          }

          else
          {
            v210 = v54 & 0xC000000000000001;
            v71 = (v192 + 8);

            v72 = 0;
            v73 = v54;
            do
            {
              if (v210)
              {
                MEMORY[0x253052270](v72, v54);
              }

              else
              {
              }

              ++v72;
              sub_24EA90AB8();
              sub_24F9288B8();
              v74 = v207;
              sub_24F9288C8();

              __swift_destroy_boxed_opaque_existential_1(&v228);
              (*v71)(v74, v208);
              v54 = v73;
            }

            while (v66 != v72);

            v67 = v202;
            v68 = v195;
            v70 = v199;
            v69 = v200;
LABEL_40:
            sub_24E601704(v190, &qword_27F228530);
            sub_24E601704(v69, &qword_27F213E68);
            sub_24E601704(v70, &unk_27F22EC30);
            sub_24E601704(v196, &qword_27F228530);
            sub_24E601704(v238, &qword_27F235830);
            v75 = v191;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *&v228 = v75;
            sub_24E81C630(v209, v240, isUniquelyReferenced_nonNull_native);
            sub_24E6585F8(v240);
            v174 = v228;
            v77 = qword_27F39DC38;
            swift_beginAccess();
            v173 = *(v68 + v77);

            v78 = *(v68 + qword_27F39B8F8);
            v210 = v78;
            if (v78)
            {
              v172 = *(v78 + 32);

              v171 = 40;
            }

            else
            {
              v171 = 0;
              v172 = 0;
            }

            v79 = v203;
            v228 = 0u;
            v229 = 0u;
            v209 = *(v68 + 16);
            v80 = OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics;
            swift_beginAccess();
            v81 = *(v67 + 16);
            v168 = (v67 + 16);
            v169 = v81;
            v81(v79, (v68 + v80), v201);
            v189 = *(v68 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageRenderEvent);
            v147 = qword_27F39B970;
            v148 = qword_27F39B8D8;
            v150 = qword_27F39B910;
            v151 = qword_27F39B980;
            v149 = qword_27F39B918;
            v166 = qword_27F39B920;
            v82 = *(v68 + qword_27F39B920 + 8);
            v167 = *(v68 + qword_27F39B920);
            v186 = v82;
            v163 = qword_27F39B930;
            v165 = *(v68 + qword_27F39B930);
            v164 = *(v68 + qword_27F39B930 + 8);
            v161 = qword_27F39B938;
            v83 = *(v68 + qword_27F39B938 + 8);
            v162 = *(v68 + qword_27F39B938);
            v176 = v83;
            v152 = qword_27F39B968;
            v158 = qword_27F39B958;
            v177 = *(v68 + qword_27F39B958);
            v180 = *(v68 + qword_27F39B958 + 8);
            v185 = *(v68 + qword_27F39B958 + 16);
            v184 = *(v68 + qword_27F39B958 + 24);
            v183 = *(v68 + qword_27F39B958 + 32);
            v84 = *(v68 + qword_27F39B958 + 40);
            v181 = *(v68 + qword_27F39B958 + 48);
            v182 = v84;
            v153 = qword_27F39B908;
            v154 = qword_27F39B900;
            v155 = qword_27F39B960;
            v85 = *(v68 + qword_27F39B960 + 8);
            v156 = *(v68 + qword_27F39B960);
            v188 = v85;
            v160 = *(v68 + qword_27F39B928);
            v159 = *(v68 + qword_27F39B950);
            v178 = *(v68 + qword_27F39B940);
            v179 = *(v68 + qword_27F39B948);
            *&v205 = *(v68 + qword_27F39B8E0);
            v206 = *(v68 + qword_27F39B8E8);
            v199 = *(v68 + qword_27F39B8F0);
            v200 = *(v68 + qword_27F39B998);
            v157 = *(v68 + qword_27F39B9A0);
            v187 = *(v68 + qword_27F39B8D8);
            v86 = v187;
            v88 = *(v68 + qword_27F39B980);
            v190 = *(v68 + qword_27F39B970);
            v87 = v190;
            v191 = v88;
            v170 = *(v68 + qword_27F39B910);
            v89 = v170;
            v192 = *(v68 + qword_27F39B918);
            v90 = v192;
            v196 = *(v68 + qword_27F39B968);
            v91 = v196;
            v92 = *(v68 + qword_27F39B908);
            v207 = *(v68 + qword_27F39B900);
            v208 = v92;
            type metadata accessor for ShelfBasedProductPage();
            v93 = swift_allocObject();
            v94 = qword_27F39B8D0;
            *(v93 + qword_27F39B8D0) = MEMORY[0x277D84F90];
            v95 = v147;
            *(v93 + v148) = v86;
            *(v93 + v95) = v87;
            *(v93 + qword_27F39B978) = 0;
            v96 = v150;
            *(v93 + v151) = v88;
            *(v93 + v96) = v89;
            *(v93 + v149) = v90;
            v97 = (v93 + v166);
            v98 = v186;
            *v97 = v167;
            v97[1] = v98;
            v99 = v93 + v163;
            *v99 = v165;
            v99[8] = v164;
            v100 = (v93 + v161);
            v102 = v176;
            v101 = v177;
            *v100 = v162;
            v100[1] = v102;
            *(v93 + v152) = v91;
            v103 = (v93 + v158);
            *v103 = v101;
            v104 = v184;
            v105 = v185;
            v103[1] = v180;
            v103[2] = v105;
            v103[3] = v104;
            v106 = v182;
            v103[4] = v183;
            v103[5] = v106;
            v103[6] = v181;
            *(v93 + qword_27F39B8F8) = v210;
            v107 = v208;
            v108 = v153;
            *(v93 + v154) = v207;
            *(v93 + v108) = v107;
            v109 = (v93 + v155);
            v110 = v188;
            *v109 = v156;
            v109[1] = v110;
            swift_beginAccess();
            *(v93 + v94) = MEMORY[0x277D84F90];
            v111 = v159;
            *(v93 + qword_27F39B928) = v160;
            *(v93 + qword_27F39B950) = v111;
            v112 = v179;
            *(v93 + qword_27F39B940) = v178;
            *(v93 + qword_27F39B948) = v112;
            *(v93 + qword_27F39B8E0) = v205;
            *(v93 + qword_27F39B8E8) = v206;
            *(v93 + qword_27F39B8F0) = v199;
            *(v93 + qword_27F39B988) = v204;
            *(v93 + qword_27F39B990) = 0;
            *(v93 + qword_27F39B998) = v200;
            *(v93 + qword_27F39B9A0) = v157;
            sub_24E60169C(&v228, &v225, &qword_27F2129B0);
            v113 = v194;
            v114 = v201;
            v115 = v169;
            v169(v194, v203, v201);
            v116 = v173;
            *(v93 + qword_27F39DC30) = v174;
            *(v93 + qword_27F39DC38) = v116;
            *(v93 + *(*v93 + 184)) = 0;
            sub_24E60169C(&v225, v93 + *(*v93 + 192), &qword_27F2129B0);
            *(v93 + *(*v93 + 200)) = 0;
            *(v93 + *(*v93 + 208)) = v171;
            v117 = v198;
            v115(v198, v113, v114);
            v118 = v115;
            v119 = sub_24F9285B8();
            v120 = *(v119 - 8);
            v121 = v193;
            (*(v120 + 56))(v193, 1, 1, v119);
            v93[2] = v209;
            v118(v93 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics, v117, v114);
            v173 = v93;
            *(v93 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageRenderEvent) = v189;
            v122 = v197;
            sub_24E60169C(v121, v197, &qword_27F2218B0);
            v174 = v120;
            v168 = *(v120 + 48);
            v169 = v119;
            LODWORD(v171) = v168(v122, 1, v119);

            swift_retain_n();
            swift_retain_n();
            swift_retain_n();
            swift_retain_n();
            swift_retain_n();
            swift_retain_n();
            swift_retain_n();
            swift_retain_n();
            swift_retain_n();
            swift_retain_n();
            swift_retain_n();
            v123 = v178;
            v124 = v179;
            swift_retain_n();
            swift_retain_n();
            swift_retain_n();
            swift_retain_n();
            v125 = v123;
            v126 = v124;

            sub_24E901B80(v177, v180, v185, v184);
            if (v171 == 1)
            {

              v127 = &qword_27F2218B0;
              sub_24E601704(v193, &qword_27F2218B0);
              v128 = v201;
              v129 = *(v202 + 8);
              v129(v198, v201);
              v129(v194, v128);
              sub_24E601704(&v225, &qword_27F2129B0);
              v129(v203, v128);
              sub_24E601704(&v228, &qword_27F2129B0);
              v130 = v197;
              goto LABEL_52;
            }

            v69 = v125;
            v186 = v126;
            v131 = qword_27F2105F0;

            if (v131 == -1)
            {
LABEL_46:
              v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221578);
              __swift_project_value_buffer(v132, qword_27F22D8D8);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221570);
              v133 = v197;
              sub_24F9285C8();
              v134 = v215;
              v135 = v175;
              v136 = v169;
              if (v215)
              {
              }

              v137 = *(v174 + 8);
              v174 += 8;
              v197 = v137;
              (v137)(v133, v136);
              if (v134)
              {
                v138 = v193;
                sub_24E60169C(v193, v135, &qword_27F2218B0);
                if (v168(v135, 1, v136) == 1)
                {

                  v139 = v135;
                  v127 = &qword_27F2218B0;
                  sub_24E601704(v138, &qword_27F2218B0);
                  v140 = v201;
                  v141 = *(v202 + 8);
                  v141(v198, v201);
                  v141(v194, v140);
                  sub_24E601704(&v225, &qword_27F2129B0);
                  v141(v203, v140);
                  sub_24E601704(&v228, &qword_27F2129B0);
                  v130 = v139;
                  goto LABEL_52;
                }

                sub_24ECDF110();

                sub_24E601704(v138, &qword_27F2218B0);
                v144 = v201;
                v145 = *(v202 + 8);
                v145(v198, v201);
                v145(v194, v144);
                sub_24E601704(&v225, &qword_27F2129B0);
                v145(v203, v144);
                sub_24E601704(&v228, &qword_27F2129B0);
                (v197)(v175, v136);
              }

              else
              {

                sub_24E601704(v193, &qword_27F2218B0);
                v142 = v201;
                v143 = *(v202 + 8);
                v143(v198, v201);
                v143(v194, v142);
                v127 = &qword_27F2129B0;
                sub_24E601704(&v225, &qword_27F2129B0);
                v143(v203, v142);
                v130 = &v228;
LABEL_52:
                sub_24E601704(v130, v127);
              }

              return v173;
            }
          }

          swift_once();
          goto LABEL_46;
        }

LABEL_25:
        sub_24E601704(&v222, &qword_27F222730);
        v228 = 0u;
        v229 = 0u;
        v230 = 0;
        goto LABEL_26;
      }

      break;
    }

    __break(1u);
  }

  else
  {

    return 0;
  }

  return result;
}

uint64_t type metadata accessor for ShelfBasedProductPage()
{
  result = qword_27F226808;
  if (!qword_27F226808)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24EA9063C()
{
  result = qword_27F2267F0;
  if (!qword_27F2267F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2267F0);
  }

  return result;
}

unint64_t sub_24EA90690(uint64_t a1)
{
  *(a1 + 8) = sub_24EA906C0();
  result = sub_24EA90714();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_24EA906C0()
{
  result = qword_27F2267F8;
  if (!qword_27F2267F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2267F8);
  }

  return result;
}

unint64_t sub_24EA90714()
{
  result = qword_27F226800;
  if (!qword_27F226800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F226800);
  }

  return result;
}

uint64_t sub_24EA90768@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_27F2267E0;
  return result;
}

uint64_t sub_24EA907B4(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_27F2267E0 = v1;
  return result;
}

uint64_t sub_24EA907FC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = qword_27F39B8D0;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

unint64_t sub_24EA909C8()
{
  result = qword_27F226818;
  if (!qword_27F226818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F226818);
  }

  return result;
}

uint64_t sub_24EA90A1C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24EA90A64()
{
  result = qword_27F226828;
  if (!qword_27F226828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F226828);
  }

  return result;
}

unint64_t sub_24EA90AB8()
{
  result = qword_27F226838;
  if (!qword_27F226838)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F225160);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F226838);
  }

  return result;
}

uint64_t sub_24EA90B38@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  sub_24E60169C(a1, &v6, &qword_27F2129B0);
  if (v7)
  {
    sub_24E612B0C(&v6, v8);
    sub_24E643A9C(v8, &v6);
    sub_24F929868();
    sub_24E601704(&v6, &qword_27F2129B0);
    return __swift_destroy_boxed_opaque_existential_1(v8);
  }

  else
  {
    sub_24E601704(&v6, &qword_27F2129B0);
    v5 = sub_24F929888();
    return (*(*(v5 - 8) + 16))(a2, v2, v5);
  }
}

uint64_t sub_24EA90C54()
{
  type metadata accessor for ItemLayoutContext();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213AC8);
  sub_24F928A58();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0);
  type metadata accessor for TodayCard();
  if ((swift_dynamicCast() & 1) == 0 || !v2)
  {
    return 0;
  }

  v0 = TodayCardMedia.Kind.description.getter(*(*(v2 + 64) + 16));

  return v0;
}

uint64_t sub_24EA90D24(uint64_t a1, uint64_t *a2)
{
  v78 = a1;
  v77 = sub_24F929888();
  v76 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v71 = &v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v72 = &v69 - v5;
  MEMORY[0x28223BE20](v6);
  v73 = &v69 - v7;
  MEMORY[0x28223BE20](v8);
  v74 = &v69 - v9;
  MEMORY[0x28223BE20](v10);
  v12 = &v69 - v11;
  v13 = sub_24F929598();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v69 - v18;
  v70 = type metadata accessor for ItemLayoutContext();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213AC8);
  v79 = a2;
  sub_24F928A58();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0);
  type metadata accessor for TodayCard();
  v20 = swift_dynamicCast();
  v75 = v12;
  if ((v20 & 1) == 0 || (v21 = v84) == 0)
  {
    v26 = v79;
    sub_24F928A58();
    type metadata accessor for AppSearchResult();
    if ((swift_dynamicCast() & 1) != 0 && v84)
    {
      v27 = *(v84 + OBJC_IVAR____TtC12GameStoreKit15AppSearchResult_lockup);
      v28 = *(v27 + 16);
      v29 = *(v27 + 24);

LABEL_28:

LABEL_44:
      v24 = v71;
      v25 = MEMORY[0x277D837D0];
      goto LABEL_45;
    }

    sub_24F928A58();
    type metadata accessor for AdvertsSearchResult();
    if ((swift_dynamicCast() & 1) != 0 && v84)
    {
      v69 = v84;
      v30 = *(v84 + OBJC_IVAR____TtC12GameStoreKit19AdvertsSearchResult_lockups);
      if (v30 >> 62)
      {
        goto LABEL_41;
      }

      v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v31)
      {
LABEL_42:
        v33 = MEMORY[0x277D84F90];
LABEL_43:
        *&v89 = v33;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0);
        sub_24E907170();
        v28 = sub_24F92AF68();
        v29 = v49;

        v26 = v79;
        goto LABEL_44;
      }

LABEL_12:
      v32 = 0;
      v80 = v30 & 0xC000000000000001;
      v33 = MEMORY[0x277D84F90];
      while (1)
      {
        if (v80)
        {
          v34 = MEMORY[0x253052270](v32, v30);
          v35 = v32 + 1;
          if (__OFADD__(v32, 1))
          {
            goto LABEL_39;
          }
        }

        else
        {
          if (v32 >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_40;
          }

          v34 = *(v30 + 8 * v32 + 32);

          v35 = v32 + 1;
          if (__OFADD__(v32, 1))
          {
LABEL_39:
            __break(1u);
LABEL_40:
            __break(1u);
LABEL_41:
            v31 = sub_24F92C738();
            if (!v31)
            {
              goto LABEL_42;
            }

            goto LABEL_12;
          }
        }

        v37 = *(v34 + 16);
        v36 = *(v34 + 24);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v33 = sub_24E615CF4(0, *(v33 + 2) + 1, 1, v33);
        }

        v39 = *(v33 + 2);
        v38 = *(v33 + 3);
        if (v39 >= v38 >> 1)
        {
          v33 = sub_24E615CF4((v38 > 1), v39 + 1, 1, v33);
        }

        *(v33 + 2) = v39 + 1;
        v40 = &v33[16 * v39];
        *(v40 + 4) = v37;
        *(v40 + 5) = v36;
        ++v32;
        if (v35 == v31)
        {
          goto LABEL_43;
        }
      }
    }

    sub_24F928A58();
    type metadata accessor for AppEventSearchResult();
    if ((swift_dynamicCast() & 1) != 0 && v84)
    {
      v41 = *(v84 + OBJC_IVAR____TtC12GameStoreKit20AppEventSearchResult_lockup);

      v28 = *(v41 + 16);
      v29 = *(v41 + 24);

      goto LABEL_28;
    }

    v87 = 0;
    v88 = 0xE000000000000000;
    sub_24F928A58();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226850);
    if (swift_dynamicCast())
    {
      v42 = *(&v90 + 1);
      if (*(&v90 + 1))
      {
        v43 = v91;
        __swift_project_boxed_opaque_existential_1(&v89, *(&v90 + 1));
        (*(v43 + 8))(v83, v42, v43);
        v81 = v83[0];
        v82 = v83[1];
        sub_24F92C7F8();
        __swift_destroy_boxed_opaque_existential_1(&v89);
        if (*(&v85 + 1))
        {
          v89 = v84;
          v90 = v85;
          v91 = v86;
LABEL_38:
          v25 = MEMORY[0x277D837D0];
          v48 = sub_24F92C7A8();
          MEMORY[0x253050C20](v48);

          sub_24E6585F8(&v89);
          v28 = v87;
          v29 = v88;
          v24 = v71;
LABEL_45:
          v47 = v70;
          goto LABEL_46;
        }

LABEL_37:
        swift_getKeyPath();
        sub_24F928A48();

        goto LABEL_38;
      }
    }

    else
    {
      v91 = 0;
      v89 = 0u;
      v90 = 0u;
    }

    sub_24E601704(&v89, &qword_27F226858);
    v84 = 0u;
    v85 = 0u;
    v86 = 0;
    goto LABEL_37;
  }

  v87 = 0;
  v88 = 0xE000000000000000;
  sub_24E60169C(v84 + OBJC_IVAR____TtC12GameStoreKit9TodayCard_impressionMetrics, v19, &qword_27F213E68);
  v22 = sub_24F929608();
  v23 = *(v22 - 8);
  if ((*(v23 + 48))(v19, 1, v22) == 1)
  {
    sub_24E601704(v19, &qword_27F213E68);
    sub_24E615E00(v21 + 160, &v89);
    v24 = v71;
    v25 = MEMORY[0x277D837D0];
  }

  else
  {
    sub_24F9295B8();
    (*(v23 + 8))(v19, v22);
    v44 = sub_24F929588();
    v46 = v45;
    (*(v14 + 8))(v16, v13);
    v25 = MEMORY[0x277D837D0];
    *(&v85 + 1) = MEMORY[0x277D837D0];
    v86 = MEMORY[0x277D837E0];
    *&v84 = v44;
    *(&v84 + 1) = v46;
    sub_24E612C80(&v84, &v89);
    v24 = v71;
  }

  v47 = v70;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226860);
  sub_24F92CA38();
  __swift_destroy_boxed_opaque_existential_1(&v89);

  v28 = v87;
  v29 = v88;
  v26 = v79;
LABEL_46:
  *&v89 = 0;
  *(&v89 + 1) = 0xE000000000000000;
  v50 = v26 + *(v47 + 32);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237E00);
  sub_24F928A48();

  LOBYTE(v87) = v84;
  sub_24F92CA38();
  *(&v85 + 1) = v25;
  *&v84 = v28;
  *(&v84 + 1) = v29;
  swift_getKeyPath();
  v80 = v50;
  sub_24F928A48();

  v51 = sub_24F92C7A8();
  v53 = v52;
  sub_24E6585F8(&v89);
  *(&v90 + 1) = v25;
  *&v89 = v51;
  *(&v89 + 1) = v53;
  sub_24F929878();

  sub_24E601704(&v89, &qword_27F2129B0);
  sub_24E601704(&v84, &qword_27F2129B0);
  swift_getObjectType();
  v54 = sub_24F92D1E8();
  *(&v90 + 1) = v25;
  *&v89 = v54;
  *(&v89 + 1) = v55;
  v56 = v72;
  sub_24F929868();
  v57 = *(v76 + 8);
  v58 = v77;
  v57(v24, v77);
  sub_24E601704(&v89, &qword_27F2129B0);
  v59 = sub_24EA90C54();
  if (v60)
  {
    v61 = MEMORY[0x277D837D0];
  }

  else
  {
    v59 = 0;
    v61 = 0;
    *&v90 = 0;
  }

  *&v89 = v59;
  *(&v89 + 1) = v60;
  *(&v90 + 1) = v61;
  v62 = v73;
  sub_24EA90B38(&v89, v73);
  v57(v56, v58);
  sub_24E601704(&v89, &qword_27F2129B0);
  v63 = *v26;
  v64 = MEMORY[0x277D83B88];
  *(&v90 + 1) = MEMORY[0x277D83B88];
  *&v89 = v63;
  v65 = v74;
  sub_24F929868();
  v57(v62, v58);
  sub_24E601704(&v89, &qword_27F2129B0);
  v66 = *(v80 + *(type metadata accessor for ShelfLayoutContext() + 20));
  *(&v90 + 1) = v64;
  *&v89 = v66;
  v67 = v75;
  sub_24F929868();
  v57(v65, v58);
  sub_24E601704(&v89, &qword_27F2129B0);
  MEMORY[0x253051C20](v67);
  return (v57)(v67, v58);
}

double sub_24EA91914(double a1)
{
  v2 = sub_24F925818();
  sub_24F925848();
  if (sub_24F925848() == v2)
  {
    a1 = 0.0;
  }

  sub_24F925828();
  sub_24F925848();
  sub_24F925848();
  sub_24F925838();
  sub_24F925848();
  sub_24F925848();
  sub_24F925858();
  sub_24F925848();
  sub_24F925848();
  return a1;
}

double sub_24EA919EC()
{
  if (qword_27F211268 != -1)
  {
    swift_once();
  }

  result = *&qword_27F243168 + 340.0;
  *&qword_27F39B9A8 = *&qword_27F243168 + 340.0;
  return result;
}

double sub_24EA91A54()
{
  sub_24EA98A3C();
  sub_24F924868();
  return v1;
}

uint64_t sub_24EA91A94@<X0>(uint64_t a1@<X8>)
{
  v147 = a1;
  v2 = type metadata accessor for HeroCarouselView(0);
  v125 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v153 = v3;
  v151 = &v118 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2268B0);
  MEMORY[0x28223BE20](v130);
  v126 = (&v118 - v4);
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2268B8);
  v131 = *(v133 - 8);
  MEMORY[0x28223BE20](v133);
  v148 = &v118 - v5;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2268C0);
  v134 = *(v135 - 8);
  MEMORY[0x28223BE20](v135);
  v132 = &v118 - v6;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2268C8);
  v136 = *(v137 - 8);
  MEMORY[0x28223BE20](v137);
  v150 = &v118 - v7;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2268D0);
  v139 = *(v141 - 8);
  MEMORY[0x28223BE20](v141);
  v138 = &v118 - v8;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2268D8);
  MEMORY[0x28223BE20](v140);
  v10 = &v118 - v9;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2268E0);
  MEMORY[0x28223BE20](v142);
  v144 = &v118 - v11;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2268E8);
  MEMORY[0x28223BE20](v146);
  v145 = &v118 - v12;
  v124 = sub_24F922348();
  v123 = *(v124 - 8);
  MEMORY[0x28223BE20](v124);
  v121 = &v118 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v122 = &v118 - v15;
  v16 = sub_24F924848();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v118 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215598);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v118 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v118 - v24;
  MEMORY[0x28223BE20](v26);
  v28 = &v118 - v27;
  MEMORY[0x28223BE20](v29);
  v119 = &v118 - v30;
  sub_24F769764(&v118 - v30);
  v120 = v28;
  sub_24F769764(v28);
  v31 = *(v2 + 44);
  v152 = v1;
  v32 = v1 + v31;
  v33 = *v32;
  v34 = *(v32 + 8) == 1;
  v143 = v10;
  if (v34)
  {
    v36 = *&v33;
  }

  else
  {

    sub_24F92BDC8();
    v35 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E62A5EC(v33, 0);
    (*(v17 + 8))(v19, v16);
    v36 = *v161;
  }

  v127 = v19;
  v128 = v17;
  v129 = v16;
  v37 = v152 + *(v2 + 48);
  v39 = *v37;
  v38 = *(v37 + 8);
  v40 = *(v37 + 24);
  v34 = *(v37 + 32) == 1;
  v149 = v2;
  if (v34)
  {
    v44 = *&v39;
  }

  else
  {
    v41 = *(v37 + 16);

    sub_24F92BDC8();
    v42 = sub_24F9257A8();
    sub_24F921FD8();

    v43 = v127;
    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E669FC4(v39, v38, v41, v40, 0);
    (*(v128 + 8))(v43, v129);
    v44 = *v161;
  }

  v45 = v119;
  sub_24E60169C(v119, v25, &qword_27F215598);
  v46 = v120;
  sub_24E60169C(v120, v22, &qword_27F215598);
  v47 = sub_24E6B00B4(v36);
  v48 = sub_24F5502F0(v25, v22, v47);
  if (qword_27F210130 != -1)
  {
    swift_once();
  }

  v49 = v121;
  _sSo6CGSizeV12GameStoreKitE11aspectRatio5JetUI06AspectF0Vvg_0();
  v50 = v123;
  v51 = v122;
  v52 = v49;
  v53 = v124;
  (*(v123 + 32))(v122, v52, v124);
  sub_24F922308();
  v55 = v54;
  (*(v50 + 8))(v51, v53);
  sub_24E601704(v46, &qword_27F215598);
  sub_24E601704(v45, &qword_27F215598);
  v56 = dbl_24F97BED0[v48];
  v57 = sub_24F927608();
  v58 = v126;
  *v126 = v57;
  *(v58 + 8) = v59;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2268F0);
  v61 = v152;
  sub_24EA92F08(v152, v58 + *(v60 + 44), v56, v44, v55);
  v124 = *(v61 + 48);
  v123 = *(v61 + 56);
  *&v154 = v124;
  *(&v154 + 1) = v123;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2268F8);
  sub_24F926F58();
  v63 = *&v161[8];
  v62 = *v161;
  v64 = *&v161[16];
  swift_getKeyPath();
  *v161 = __PAIR128__(v63, v62);
  *&v161[16] = v64;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226900);
  sub_24F927188();

  v65 = v154;
  v66 = v155;

  v67 = v130;
  v68 = v58 + *(v130 + 36);
  *v68 = v65;
  *(v68 + 16) = v66;
  v69 = v61 + *(v149 + 15);
  v161[0] = *v69;
  *&v161[8] = *(v69 + 8);
  v70 = v151;
  sub_24EA9799C(v61, v151);
  v71 = *(v125 + 80);
  v72 = (v71 + 16) & ~v71;
  v73 = swift_allocObject();
  v125 = type metadata accessor for HeroCarouselView;
  sub_24EA988AC(v70, v73 + v72, type metadata accessor for HeroCarouselView);
  v74 = sub_24EA97A84();
  v75 = sub_24EA97B90();
  sub_24F926AB8();

  sub_24E601704(v58, &qword_27F2268B0);
  *v161 = v124;
  *&v161[8] = v123;
  sub_24F926F38();
  v76 = v154;
  swift_getKeyPath();
  *v161 = v76;
  sub_24EA9626C(&qword_27F226930, type metadata accessor for HeroPageControlProgressCoordinator);
  sub_24F91FD88();

  LOBYTE(v51) = *(v76 + 48);

  LOBYTE(v154) = v51;
  v77 = v70;
  sub_24EA9799C(v61, v70);
  v78 = swift_allocObject() + v72;
  v79 = v70;
  v80 = v125;
  sub_24EA988AC(v79, v78, v125);
  *v161 = v67;
  *&v161[8] = &type metadata for HeroPageControlProgressCoordinator.AutoAdvanceConfiguration;
  *&v161[16] = v74;
  *&v161[24] = v75;
  v130 = MEMORY[0x277CE0E30];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v82 = v132;
  v83 = v133;
  v84 = v148;
  sub_24F926AB8();

  (*(v131 + 8))(v84, v83);
  sub_24EA9799C(v61, v77);
  v148 = v71;
  v85 = swift_allocObject();
  v131 = v72;
  sub_24EA988AC(v77, v85 + v72, v80);
  *v161 = v83;
  *&v161[8] = MEMORY[0x277D839B0];
  *&v161[16] = OpaqueTypeConformance2;
  *&v161[24] = MEMORY[0x277D839C8];
  v86 = swift_getOpaqueTypeConformance2();
  v87 = v135;
  sub_24F9267B8();

  (*(v134 + 8))(v82, v87);
  v88 = v61 + *(v149 + 13);
  v89 = *v88;
  if ((*(v88 + 8) & 1) == 0)
  {

    sub_24F92BDC8();
    v90 = sub_24F9257A8();
    sub_24F921FD8();

    v91 = v127;
    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E62A5EC(v89, 0);
    (*(v128 + 8))(v91, v129);
    v89 = *v161;
  }

  *&v154 = v89;
  v92 = v152;
  v93 = v151;
  sub_24EA9799C(v152, v151);
  v94 = v131;
  v95 = swift_allocObject();
  v149 = type metadata accessor for HeroCarouselView;
  sub_24EA988AC(v93, v95 + v94, type metadata accessor for HeroCarouselView);
  *v161 = v87;
  *&v161[8] = v86;
  v96 = swift_getOpaqueTypeConformance2();
  v97 = sub_24EA97F88();
  v98 = v138;
  v99 = v137;
  v100 = v150;
  sub_24F926AB8();

  (*(v136 + 8))(v100, v99);
  *v161 = *(v92 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2180B0);
  sub_24F926F38();
  sub_24EA9799C(v92, v93);
  v101 = swift_allocObject();
  v102 = v149;
  sub_24EA988AC(v93, v101 + v94, v149);
  *v161 = v99;
  *&v161[8] = MEMORY[0x277D7EB10];
  *&v161[16] = v96;
  *&v161[24] = v97;
  swift_getOpaqueTypeConformance2();
  v103 = v143;
  v104 = v141;
  sub_24F926AB8();

  (*(v139 + 8))(v98, v104);
  sub_24EA9799C(v152, v93);
  v105 = swift_allocObject();
  sub_24EA988AC(v93, v105 + v94, v102);
  v106 = (v103 + *(v140 + 36));
  *v106 = sub_24EA98088;
  v106[1] = v105;
  v106[2] = 0;
  v106[3] = 0;
  sub_24F927618();
  sub_24F9242E8();
  v107 = v144;
  sub_24E6009C8(v103, v144, &qword_27F2268D8);
  v108 = (v107 + *(v142 + 36));
  v109 = v159;
  v108[4] = v158;
  v108[5] = v109;
  v108[6] = v160;
  v110 = v155;
  *v108 = v154;
  v108[1] = v110;
  v111 = v157;
  v108[2] = v156;
  v108[3] = v111;
  sub_24F927618();
  sub_24F9242E8();
  v112 = v145;
  sub_24E6009C8(v107, v145, &qword_27F2268E0);
  v113 = (v112 + *(v146 + 36));
  v114 = v165;
  v113[4] = v164;
  v113[5] = v114;
  v113[6] = v166;
  v115 = *&v161[16];
  *v113 = *v161;
  v113[1] = v115;
  v116 = v163;
  v113[2] = v162;
  v113[3] = v116;
  sub_24EA980D0(&qword_27F226940, &qword_27F2268E8, &unk_24F97B8A0, sub_24EA980A0);
  sub_24F926848();
  return sub_24EA98348(v112);
}

uint64_t sub_24EA92F08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226958);
  v46 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v41 = &v37 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226960);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v47 = &v37 - v16;
  v17 = type metadata accessor for HeroCarouselView(0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24EA9799C(a1, v20);
  v21 = (*(v18 + 80) + 16) & ~*(v18 + 80);
  v39 = v21 + v19;
  v22 = (v21 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  v40 = v21;
  sub_24EA988AC(v20, v23 + v21, type metadata accessor for HeroCarouselView);
  v24 = (v23 + v22);
  *v24 = a3;
  v24[1] = a4;
  v24[2] = a5;
  sub_24F927618();
  v25 = 1;
  sub_24F9238C8();
  v45 = v57;
  v44 = v59;
  v43 = v61;
  v42 = v62;
  v56 = v58;
  v55 = v60;
  if (*(*a1 + 16) >= 2uLL)
  {
    v26 = a1;
    sub_24EA948D8(v53);
    v37 = v10;
    v38 = v14;
    v27 = v54;
    v48 = v53[0];
    v49 = v53[1];
    v50 = v53[2];
    v51 = v53[3];
    v52 = v54;
    sub_24E7EC460();
    v28 = v41;
    sub_24F9267E8();
    v10 = v37;

    v14 = v38;
    sub_24EA9799C(v26, v20);
    v29 = swift_allocObject();
    sub_24EA988AC(v20, v29 + v40, type metadata accessor for HeroCarouselView);
    v30 = (v28 + *(v10 + 36));
    *v30 = sub_24E7BC238;
    v30[1] = 0;
    v30[2] = sub_24EA987CC;
    v30[3] = v29;
    sub_24E6009C8(v28, v47, &qword_27F226958);
    v25 = 0;
  }

  v31 = v47;
  (*(v46 + 56))(v47, v25, 1, v10);
  v32 = v56;
  v33 = v55;
  sub_24E60169C(v31, v14, &qword_27F226960);
  *a2 = sub_24EA98718;
  *(a2 + 8) = v23;
  *(a2 + 16) = v45;
  *(a2 + 24) = v32;
  *(a2 + 32) = v44;
  *(a2 + 40) = v33;
  v34 = v42;
  *(a2 + 48) = v43;
  *(a2 + 56) = v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226968);
  sub_24E60169C(v14, a2 + *(v35 + 48), &qword_27F226960);

  sub_24E601704(v31, &qword_27F226960);
  sub_24E601704(v14, &qword_27F226960);
}

uint64_t sub_24EA93418@<X0>(uint64_t a1@<X0>, double a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>)
{
  v168 = a3;
  *&v149 = sub_24F91F6B8();
  v147 = *(v149 - 8);
  MEMORY[0x28223BE20](v149);
  v146 = &v137 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v145 = &v137 - v13;
  v148 = type metadata accessor for CarouselContainerView(0);
  MEMORY[0x28223BE20](v148);
  v169 = &v137 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226970);
  MEMORY[0x28223BE20](v161);
  v160 = &v137 - v15;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226978);
  MEMORY[0x28223BE20](v155);
  v158 = &v137 - v16;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226980);
  MEMORY[0x28223BE20](v154);
  v157 = &v137 - v17;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226988);
  MEMORY[0x28223BE20](v153);
  v156 = &v137 - v18;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226990);
  MEMORY[0x28223BE20](v152);
  v162 = &v137 - v19;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226998);
  MEMORY[0x28223BE20](v159);
  v166 = &v137 - v20;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2269A0);
  MEMORY[0x28223BE20](v151);
  v165 = &v137 - v21;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2269A8);
  MEMORY[0x28223BE20](v163);
  v164 = &v137 - v22;
  v141 = sub_24F924848();
  v140 = *(v141 - 8);
  MEMORY[0x28223BE20](v141);
  v139 = &v137 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_24F925218();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v138 = &v137 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254F20);
  v28 = v27 - 8;
  MEMORY[0x28223BE20](v27);
  v30 = &v137 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215598);
  MEMORY[0x28223BE20](v31 - 8);
  v142 = &v137 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v35 = &v137 - v34;
  MEMORY[0x28223BE20](v36);
  v38 = &v137 - v37;
  v144 = 0x5040302010001uLL >> (8 * *(*&a2 + 8));
  v170 = a1;
  sub_24F923998();
  v40 = v39;
  v143 = type metadata accessor for HeroCarouselView(0);
  v167 = a2;
  sub_24F769764(v38);
  (*(v25 + 104))(v35, *MEMORY[0x277CE0558], v24);
  (*(v25 + 56))(v35, 0, 1, v24);
  v41 = *(v28 + 56);
  sub_24E60169C(v38, v30, &qword_27F215598);
  sub_24E60169C(v35, &v30[v41], &qword_27F215598);
  v42 = *(v25 + 48);
  if (v42(v30, 1, v24) == 1)
  {
    sub_24E601704(v35, &qword_27F215598);
    sub_24E601704(v38, &qword_27F215598);
    if (v42(&v30[v41], 1, v24) == 1)
    {
      sub_24E601704(v30, &qword_27F215598);
      v43 = 1;
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_24E60169C(v30, v142, &qword_27F215598);
  if (v42(&v30[v41], 1, v24) == 1)
  {
    sub_24E601704(v35, &qword_27F215598);
    sub_24E601704(v38, &qword_27F215598);
    (*(v25 + 8))(v142, v24);
LABEL_6:
    sub_24E601704(v30, &unk_27F254F20);
    v43 = 0;
    goto LABEL_8;
  }

  v44 = v138;
  (*(v25 + 32))(v138, &v30[v41], v24);
  sub_24EA9626C(&qword_27F215650, MEMORY[0x277CE0570]);
  v45 = v142;
  v43 = sub_24F92AFF8();
  v46 = *(v25 + 8);
  v46(v44, v24);
  sub_24E601704(v35, &qword_27F215598);
  sub_24E601704(v38, &qword_27F215598);
  v46(v45, v24);
  sub_24E601704(v30, &qword_27F215598);
LABEL_8:
  v47 = v167;
  v48 = *&v167 + *(v143 + 48);
  v49 = *(v48 + 8);
  v50 = *(v48 + 24);
  v51 = *(v48 + 32) == 1;
  v150 = a6;
  if (v51)
  {
    v56 = *&v49;
    v57 = *&v50;
  }

  else
  {
    v52 = *v48;
    v53 = *(v48 + 16);

    sub_24F92BDC8();
    v54 = sub_24F9257A8();
    sub_24F921FD8();

    v55 = v139;
    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E669FC4(v52, v49, v53, v50, 0);
    (*(v140 + 8))(v55, v141);
    v56 = *(&v173 + 1);
    v57 = *(&v174 + 1);
  }

  v58 = v149;
  v59 = v147;
  v60 = v56 + v57;
  if (v40 <= 1580.0)
  {
    v61 = v40;
  }

  else
  {
    v61 = 1580.0;
  }

  v62 = 0.0;
  if (v144 <= 2u)
  {
    if (!v144)
    {
      goto LABEL_43;
    }

    if (v144 == 1)
    {
      if (v43)
      {
        if (v60 <= 0.0)
        {
          v62 = 16.0;
        }

        else
        {
          v62 = 0.0;
        }

        goto LABEL_43;
      }

LABEL_40:
      v62 = dbl_24F97BEF0[sub_24E6B00B4(v61)];
      goto LABEL_43;
    }

    v65 = 2;
LABEL_32:
    LOBYTE(v173) = v65;
    sub_24F422FFC(v43 & 1, v61);
    v62 = v66;
    goto LABEL_43;
  }

  if (v144 == 3)
  {
    if (sub_24E6B00B4(v61) < 4u)
    {
      goto LABEL_43;
    }

    v65 = 3;
    goto LABEL_32;
  }

  if (v144 != 4)
  {
    if (qword_27F210748 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    if (byte_27F2301A8)
    {
      if (v43)
      {
        if (qword_27F210D60 != -1)
        {
          swift_once();
        }

        v62 = *&qword_27F39D300;
        goto LABEL_43;
      }

      if (v61 < 0.0 || v61 >= 376.0)
      {
        if (v61 >= 428.0 || v61 < 376.0)
        {
          v62 = 46.0;
        }

        else
        {
          v62 = 38.0;
        }

        goto LABEL_43;
      }

      *&v67 = 44.0;
    }

    else
    {
      *&v67 = 40.0;
    }

    v62 = *&v67;
    goto LABEL_43;
  }

  if ((v43 & 1) == 0)
  {
    goto LABEL_40;
  }

  v63 = v61 + -420.0;
  if (v60 <= 0.0)
  {
    v62 = 16.0;
    if (v63 > 0.0)
    {
      v134 = v63 * 0.5;
      if (v134 > 16.0)
      {
        v62 = v134;
      }

      else
      {
        v62 = 16.0;
      }
    }
  }

  else if (v63 > 0.0)
  {
    v64 = v63 * 0.5;
    if (v64 > 0.0)
    {
      v62 = v64;
    }

    else
    {
      v62 = 0.0;
    }
  }

LABEL_43:
  sub_24F923998();
  if (qword_27F210130 != -1)
  {
    v136 = v68;
    swift_once();
    v68 = v136;
  }

  if (*&qword_27F39B9A8 < v68)
  {
    v68 = *&qword_27F39B9A8;
  }

  v69 = v61;
  v167 = v68;
  v70 = *(*&v47 + 40);
  v71 = v62 + (v68 - v61) * 0.5;
  *&v173 = *(*&v47 + 32);
  *(&v173 + 1) = v70;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216550);
  sub_24F926F38();
  v72 = *&v171 + a4;
  sub_24F923988();
  v74 = v73 + a5;
  v76 = v71 + v75;
  v78 = v72 + v77;
  v80 = v71 + v79;
  v171 = *(*&v47 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2180B0);
  sub_24F926F58();
  v149 = v173;
  v81 = v174;
  v82 = v47;
  v83 = **&v47;
  KeyPath = swift_getKeyPath();
  v85 = v169;
  *(v169 + 88) = KeyPath;
  *(v85 + 96) = 0;
  *(v85 + 104) = swift_getKeyPath();
  *(v85 + 112) = 0;

  v86 = v145;
  sub_24F91F6A8();
  (*(v59 + 16))(v146, v86, v58);
  sub_24F926F28();
  (*(v59 + 8))(v86, v58);
  *v85 = v149;
  *(v85 + 16) = v81;
  *(v85 + 24) = v83;
  *(v85 + 32) = -a5;
  *(v85 + 40) = v74;
  *(v85 + 48) = v76;
  *(v85 + 56) = v78;
  v87 = v150;
  *(v85 + 64) = v80;
  *(v85 + 72) = v87;
  *(v85 + 80) = a4;
  *(swift_allocObject() + 16) = v83;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2269B0);
  sub_24F9233C8();
  v88 = *(v83 + 16);
  v89 = MEMORY[0x277D84F90];
  if (v88)
  {
    v176 = MEMORY[0x277D84F90];
    sub_24F457B3C(0, v88, 0);
    v89 = v176;
    v90 = v83 + 32;
    v91 = v82;
    do
    {
      sub_24E615E00(v90, &v171);
      __swift_project_boxed_opaque_existential_1(&v171, v172);
      sub_24F928D68();
      __swift_destroy_boxed_opaque_existential_1(&v171);
      v176 = v89;
      v93 = *(v89 + 16);
      v92 = *(v89 + 24);
      if (v93 >= v92 >> 1)
      {
        sub_24F457B3C((v92 > 1), v93 + 1, 1);
        v89 = v176;
      }

      *(v89 + 16) = v93 + 1;
      v94 = v89 + 40 * v93;
      v95 = v173;
      v96 = v174;
      *(v94 + 64) = v175;
      *(v94 + 32) = v95;
      *(v94 + 48) = v96;
      v90 += 40;
      --v88;
    }

    while (v88);
  }

  else
  {
    v91 = v82;
  }

  v97 = v160;
  sub_24EA988AC(v169, v160, type metadata accessor for CarouselContainerView);
  *(v97 + *(v161 + 52)) = v89;
  v98 = swift_getKeyPath();
  v99 = v97;
  v100 = v158;
  sub_24E6009C8(v99, v158, &qword_27F226970);
  v101 = v100 + *(v155 + 36);
  *v101 = v98;
  *(v101 + 8) = v69 - (v62 + v62);
  v102 = swift_getKeyPath();
  v103 = v157;
  sub_24E6009C8(v100, v157, &qword_27F226978);
  v104 = v103 + *(v154 + 36);
  *v104 = v102;
  *(v104 + 8) = v76;
  v105 = swift_getKeyPath();
  LOBYTE(v100) = *(*&v91 + 8);
  v106 = v103;
  v107 = v156;
  sub_24E6009C8(v106, v156, &qword_27F226980);
  v108 = v107 + *(v153 + 36);
  *v108 = v105;
  *(v108 + 8) = v100;
  *(v108 + 9) = 0;
  v109 = swift_getKeyPath();
  v110 = v107;
  v111 = v162;
  sub_24E6009C8(v110, v162, &qword_27F226988);
  v112 = v111 + *(v152 + 36);
  *v112 = v109;
  *(v112 + 8) = 1;
  *(v112 + 16) = 0;
  v113 = swift_getKeyPath();
  LOBYTE(v100) = sub_24E6B00B4(v167);
  v114 = v111;
  v115 = v166;
  sub_24E6009C8(v114, v166, &qword_27F226990);
  v116 = v115 + *(v159 + 36);
  *v116 = v113;
  *(v116 + 8) = v100;
  v117 = swift_getKeyPath();
  v118 = v165;
  v119 = &v165[*(v151 + 36)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215A88);
  sub_24F921958();
  *v119 = v117;
  sub_24E6009C8(v115, v118, &qword_27F226998);
  LOBYTE(v117) = sub_24F9257F8();
  v120 = sub_24F924058();
  v121 = v164;
  sub_24E6009C8(v118, v164, &qword_27F2269A0);
  v122 = v121 + *(v163 + 36);
  *v122 = v120;
  *(v122 + 8) = v117;
  sub_24F923988();
  v124 = v123;
  v126 = v125;
  v128 = v127;
  v130 = v129;
  v131 = v168;
  sub_24E6009C8(v121, v168, &qword_27F2269A8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2269B8);
  v133 = v131 + *(result + 36);
  *v133 = 0x408F400000000000;
  *(v133 + 8) = v124;
  *(v133 + 16) = v126;
  *(v133 + 24) = v128;
  *(v133 + 32) = v130;
  *(v133 + 40) = 256;
  return result;
}

uint64_t sub_24EA946F4@<X0>(_WORD *a1@<X8>)
{
  result = sub_24F0BAE6C(&v3);
  *a1 = v3;
  return result;
}

uint64_t sub_24EA94768@<X0>(uint64_t a1@<X8>)
{
  result = sub_24F0BB140(&v4);
  v3 = v5;
  *a1 = v4;
  *(a1 + 8) = v3;
  return result;
}

uint64_t sub_24EA947AC(uint64_t a1)
{
  v1 = *(a1 + 8);
  v3 = *a1;
  v4 = v1;
  return sub_24F0BB230(&v3);
}

uint64_t sub_24EA94810(uint64_t a1)
{
  v2 = sub_24F921998();
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  return sub_24F0BB908(v5);
}

__n128 sub_24EA948D8@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 16);
  v9 = v1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2180B0);
  sub_24F926F58();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2268F8);
  sub_24F926F38();
  swift_getKeyPath();
  sub_24EA9626C(&qword_27F226930, type metadata accessor for HeroPageControlProgressCoordinator);
  sub_24F91FD88();

  v4 = *(v9 + 16);
  v5 = v4;

  *a1 = v3;
  result = v7;
  *(a1 + 8) = v7;
  *(a1 + 24) = v8;
  *(a1 + 32) = v4;
  return result;
}

uint64_t sub_24EA94A64(uint64_t a1, double *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2268F8);
  sub_24F926F38();
  v5 = *(v12 + 56);
  v6 = *(v12 + 64);
  v7 = *(v12 + 72);

  if (v5 == 2 || ((v2 ^ v5) & 1) != 0 || (v6 == v3 ? (v9 = v7 == v4) : (v9 = 0), !v9))
  {
    sub_24F926F38();
    *(v12 + 56) = v2;
    *(v12 + 64) = v3;
    *(v12 + 72) = v4;
    if (v2)
    {
      v10 = [objc_allocWithZone(MEMORY[0x277D757E8]) initWithPreferredDuration_];
      [v10 setResetsToInitialPageAfterEnd_];
      [v10 resumeTimer];
      sub_24F711B74(v10);
      sub_24F712668();
    }

    else
    {
      if (*(v12 + 16))
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x28223BE20](KeyPath);
        sub_24EA9626C(&qword_27F226930, type metadata accessor for HeroPageControlProgressCoordinator);
        sub_24F91FD78();
      }

      sub_24F7127A8();
    }

    sub_24F7124E8();
  }

  return result;
}

uint64_t sub_24EA94C60(uint64_t a1, char *a2, uint64_t a3)
{
  v3 = *a2;
  v4 = *(a3 + *(type metadata accessor for HeroCarouselView(0) + 56));
  if (v4)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v5 = v4;
    sub_24F923098();

    if ((v3 & 1) == 0)
    {
      if (v7)
      {
        sub_24E85C800();
      }
    }

    swift_getKeyPath();
    swift_getKeyPath();
    return sub_24F9230A8();
  }

  else
  {
    type metadata accessor for GSKVideoPlaybackCoordinator();
    sub_24EA9626C(&qword_27F2141F0, type metadata accessor for GSKVideoPlaybackCoordinator);
    result = sub_24F9243C8();
    __break(1u);
  }

  return result;
}

uint64_t sub_24EA94D94(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2268F8);
  sub_24F926F38();
  *(v3 + 49) = a1;
  sub_24F7124E8();
}

uint64_t sub_24EA94DF8(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2268F8);
  sub_24F926F38();
  *(v4 + 50) = v2 != sub_24F921898();
  sub_24F7124E8();
}

void sub_24EA94E68(void *a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for HeroCarouselView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  if (*a1 != *a2)
  {
    v9 = *(a3 + 56);
    *&v15[0] = *(a3 + 48);
    *(&v15[0] + 1) = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2268F8);
    sub_24F926F38();
    v10 = *a3;
    v15[0] = *(a3 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2180B0);
    sub_24F926F38();
    if ((v16 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v16 < *(v10 + 16))
    {
      sub_24E615E00(v10 + 40 * v16 + 32, v15);
      v11 = *(a3 + *(v6 + 56));
      if (v11)
      {
        sub_24EA9799C(a3, v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
        v12 = (*(v7 + 80) + 16) & ~*(v7 + 80);
        v13 = swift_allocObject();
        sub_24EA988AC(v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for HeroCarouselView);
        v14 = v11;
        sub_24F711600(v15, v14, sub_24EA983C0, v13);

        __swift_destroy_boxed_opaque_existential_1(v15);
        return;
      }

LABEL_9:
      type metadata accessor for GSKVideoPlaybackCoordinator();
      sub_24EA9626C(&qword_27F2141F0, type metadata accessor for GSKVideoPlaybackCoordinator);
      sub_24F9243C8();
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_9;
  }
}

uint64_t sub_24EA950C4(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2180B0);
  result = sub_24F926F38();
  if (__OFADD__(v3, 1))
  {
    __break(1u);
  }

  else if (*(*a1 + 16))
  {
    return sub_24F926F48();
  }

  __break(1u);
  return result;
}

uint64_t sub_24EA95168()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2268F8);
  sub_24F926F38();
  swift_getKeyPath();
  sub_24EA9626C(&qword_27F226930, type metadata accessor for HeroPageControlProgressCoordinator);
  sub_24F91FD88();

  if (!*(v2 + 24))
  {
    swift_getKeyPath();
    sub_24F91FD88();

    v0 = *(v2 + 16);
    if (v0)
    {
      [v0 setCurrentProgress_];
    }
  }
}

double sub_24EA95290@<D0>(uint64_t a1@<X8>)
{
  sub_24F92C1F8();
  sub_24F927788();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

void (*sub_24EA952FC(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_24F923238();
  return sub_24E622878;
}

uint64_t sub_24EA95384(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24EA99244();

  return MEMORY[0x282133768](a1, a2, a3, v6);
}

uint64_t sub_24EA953E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24EA99244();

  return MEMORY[0x282133720](a1, a2, a3, v6);
}

uint64_t sub_24EA9544C(uint64_t a1)
{
  v2 = sub_24EA99244();

  return MEMORY[0x282133738](a1, v2);
}

uint64_t sub_24EA9549C@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v30 = a5;
  v31 = a6;
  v27[1] = a3;
  v28 = a2;
  v8 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v27 - v12;
  v14 = sub_24F92C4A8();
  v29 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = v27 - v18;
  swift_getKeyPath();
  v33 = a1;
  sub_24EA9626C(&qword_27F226880, type metadata accessor for DeferredViewState);
  sub_24F91FD88();

  if (*(a1 + 16) == 1)
  {
    v28(v20);
    v21 = v30;
    sub_24E7896B8(v10, a4, v30);
    v22 = *(v8 + 8);
    v22(v10, a4);
    sub_24E7896B8(v13, a4, v21);
    v22(v13, a4);
    (*(v8 + 32))(v16, v10, a4);
    v23 = 0;
  }

  else
  {
    v23 = 1;
    v21 = v30;
  }

  (*(v8 + 56))(v16, v23, 1, a4);
  sub_24E8D5004(v16, v19);
  v24 = *(v29 + 8);
  v24(v16, v14);
  v32 = v21;
  WitnessTable = swift_getWitnessTable();
  sub_24E7896B8(v19, v14, WitnessTable);
  return (v24)(v19, v14);
}

uint64_t sub_24EA957DC()
{
  swift_getKeyPath();
  sub_24EA9626C(&qword_27F226880, type metadata accessor for DeferredViewState);
  sub_24F91FD88();

  return *(v0 + 16);
}

uint64_t sub_24EA9587C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24EA9626C(&qword_27F226880, type metadata accessor for DeferredViewState);
  sub_24F91FD88();

  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_24EA95924(uint64_t result)
{
  if (*(v1 + 16) == (result & 1))
  {
    *(v1 + 16) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24EA9626C(&qword_27F226880, type metadata accessor for DeferredViewState);
    sub_24F91FD78();
  }

  return result;
}

uint64_t sub_24EA95A34()
{
  swift_getKeyPath();
  sub_24EA9626C(&qword_27F226880, type metadata accessor for DeferredViewState);
  sub_24F91FD88();

  return *(v0 + 17);
}

uint64_t sub_24EA95AD4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24EA9626C(&qword_27F226880, type metadata accessor for DeferredViewState);
  sub_24F91FD88();

  *a2 = *(v3 + 17);
  return result;
}

uint64_t sub_24EA95B7C(uint64_t result)
{
  if (*(v1 + 17) == (result & 1))
  {
    *(v1 + 17) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24EA9626C(&qword_27F226880, type metadata accessor for DeferredViewState);
    sub_24F91FD78();
  }

  return result;
}

uint64_t sub_24EA95C8C()
{
  v1 = OBJC_IVAR____TtC12GameStoreKitP33_3A67B35F55B473BE31316F8B9DF9621517DeferredViewState___observationRegistrar;
  v2 = sub_24F91FDC8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_24EA95D50()
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

uint64_t sub_24EA95E68(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

void *sub_24EA95F38(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24EA96008()
{
  sub_24EA98FE4(319, &qword_27F226898, &unk_27F23A6A0, &unk_24F9549D0, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_24EA98F40(319, &qword_27F218028, MEMORY[0x277D83B88], MEMORY[0x277CE10B8]);
    if (v1 <= 0x3F)
    {
      sub_24EA98F40(319, &qword_27F218018, MEMORY[0x277D85048], MEMORY[0x277CE10B8]);
      if (v2 <= 0x3F)
      {
        sub_24EA98F90(319, &qword_27F2268A0, type metadata accessor for HeroPageControlProgressCoordinator);
        if (v3 <= 0x3F)
        {
          sub_24EA98FE4(319, &qword_27F254DC0, &qword_27F215598, &unk_24F945EF0, MEMORY[0x277CDF468]);
          if (v4 <= 0x3F)
          {
            sub_24EA98F40(319, &qword_27F215590, MEMORY[0x277D85048], MEMORY[0x277CDF468]);
            if (v5 <= 0x3F)
            {
              sub_24EA98F40(319, &qword_27F254DF0, MEMORY[0x277CDF310], MEMORY[0x277CDF468]);
              if (v6 <= 0x3F)
              {
                sub_24EA98F40(319, &qword_27F2268A8, MEMORY[0x277D7EB10], MEMORY[0x277CDF468]);
                if (v7 <= 0x3F)
                {
                  sub_24E6DDA68();
                  if (v8 <= 0x3F)
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
}

uint64_t sub_24EA9626C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24EA962D0@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v3 = *(result + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v9 = MEMORY[0x277D84F90];
    sub_24F92C978();
    type metadata accessor for DeferredViewState(0);
    v5 = 0;
    do
    {
      v6 = v5 + 1;
      v7 = v5 == 0;
      v8 = swift_allocObject();
      sub_24F91FDB8();
      *(v8 + 16) = v7;
      *(v8 + 17) = 0;
      sub_24F92C948();
      sub_24F92C988();
      sub_24F92C998();
      result = sub_24F92C958();
      v5 = v6;
    }

    while (v3 != v6);
    v4 = v9;
  }

  *a2 = v4;
  return result;
}

double sub_24EA963C0@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_24F924848();
  v55 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24F91F6B8();
  v62 = *(v7 - 8);
  v63 = v7;
  v8 = *(v62 + 64);
  MEMORY[0x28223BE20](v7);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v54 - v11;
  v13 = *(v1 + 3);
  type metadata accessor for CarouselContainerView(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2269D0);
  sub_24F9233D8();
  v59 = v65;
  v60 = *(v1 + 56);
  v61 = *(v1 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2269C8);
  v64 = v12;
  sub_24F926F38();
  v14 = *(v1 + 2);
  v65 = *v1;
  *&v66 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F2180B8);
  sub_24F927198();
  v57 = *(&v68 + 1);
  v58 = v68;
  v56 = v69;
  v15 = *(v1 + 11);
  if (*(v2 + 96) == 1)
  {
    v16 = *(v2 + 11);
    v17 = v55;
  }

  else
  {

    sub_24F92BDC8();
    v18 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E62A5EC(v15, 0);
    v17 = v55;
    (*(v55 + 8))(v6, v4);
    v16 = *&v65;
  }

  v19 = *(v2 + 13);
  if (*(v2 + 112) == 1)
  {
    v20 = *(v2 + 13);
  }

  else
  {

    sub_24F92BDC8();
    v55 = v4;
    v21 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E62A5EC(v19, 0);
    (*(v17 + 8))(v6, v55);
    v20 = *&v65;
  }

  v22 = v16 + v20 + v20;
  v23 = *(v2 + 10);
  v24 = *(v13 + 16);
  v25 = v62;
  v26 = v63;
  (*(v62 + 16))(v9, v64, v63);
  v27 = (*(v25 + 80) + 64) & ~*(v25 + 80);
  v28 = swift_allocObject();
  v29 = v59;
  *(v28 + 16) = v13;
  *(v28 + 24) = v29;
  v30 = v60;
  *(v28 + 32) = v61;
  *(v28 + 48) = v30;
  (*(v25 + 32))(v28 + v27, v9, v26);
  v31 = v57;
  *a1 = v58;
  *(a1 + 8) = v31;
  *(a1 + 16) = v56;
  *(a1 + 24) = v22;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = v23;
  *(a1 + 56) = 0;
  *(a1 + 64) = v24;
  *(a1 + 72) = sub_24EA99364;
  *(a1 + 80) = v28;
  *(a1 + 88) = MEMORY[0x25304CFF0](0.25, 0.9, 0.25);
  *(a1 + 96) = MEMORY[0x25304CFF0](0.25, 0.9, 0.25);
  *(a1 + 104) = 0x3FD51EB851EB851FLL;
  *&v68 = 0;
  sub_24F926F28();
  v32 = *(&v65 + 1);
  *(a1 + 112) = v65;
  *(a1 + 120) = v32;
  LOBYTE(v68) = 1;
  sub_24F926F28();
  v33 = *(&v65 + 1);
  *(a1 + 128) = v65;
  *(a1 + 136) = v33;
  LOBYTE(v68) = 0;
  sub_24F923728();
  v34 = *(&v65 + 1);
  v35 = v66;
  *(a1 + 144) = v65;
  *(a1 + 152) = v34;
  *(a1 + 160) = v35;
  LOBYTE(v68) = 0;
  sub_24F926F28();
  v36 = *(&v65 + 1);
  *(a1 + 176) = v65;
  *(a1 + 184) = v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226A30);
  v38 = *(v37 + 80);
  *(a1 + v38) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90);
  swift_storeEnumTagMultiPayload();
  v39 = *(v37 + 84);
  *&v68 = 0;
  sub_24F926F28();
  *(a1 + v39) = v65;
  sub_24F9233A8();
  sub_24F927618();
  sub_24F9238C8();
  v40 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226A38) + 36));
  v41 = v66;
  *v40 = v65;
  v40[1] = v41;
  v40[2] = v67;
  LOBYTE(v37) = sub_24F925818();
  sub_24F923318();
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v50 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226A40) + 36);
  *v50 = v37;
  *(v50 + 8) = v43;
  *(v50 + 16) = v45;
  *(v50 + 24) = v47;
  *(v50 + 32) = v49;
  *(v50 + 40) = 0;
  sub_24F37921C(&v68);
  (*(v25 + 8))(v64, v26);
  v51 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226A48) + 36);
  result = *&v68;
  v53 = v69;
  *v51 = v68;
  *(v51 + 16) = v53;
  *(v51 + 32) = v70;
  return result;
}

uint64_t sub_24EA96AA4@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>, double a8@<D2>, double a9@<D3>)
{
  v40 = a4;
  v17 = sub_24F929888();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226A50);
  v22 = *(v21 - 8);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v35 - v24;
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (*(a2 + 16) <= a1)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  result = sub_24E615E00(a2 + 40 * a1 + 32, v49);
  v39 = a5;
  v38 = v21;
  v37 = v22;
  v36 = v17;
  v35 = v18;
  if ((a3 & 0xC000000000000001) != 0)
  {
LABEL_9:
    v27 = MEMORY[0x253052270](a1, a3, v23);
    goto LABEL_6;
  }

  if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
  {
    v27 = *(a3 + 8 * a1 + 32);

LABEL_6:
    sub_24E615E00(v49, &v47);
    v28 = swift_allocObject();
    sub_24E612C80(&v47, v28 + 16);
    *(v28 + 56) = a1;
    *(v28 + 64) = v27;
    *(v28 + 72) = a6;
    *(v28 + 80) = a7;
    *(v28 + 88) = a8;
    *(v28 + 96) = a9;
    v44 = v27;
    v45 = sub_24EA99438;
    v46 = v28;
    __swift_project_boxed_opaque_existential_1(v49, v49[3]);
    v48 = MEMORY[0x277D84030];
    *&v47 = swift_allocObject();

    sub_24F928D68();
    v29 = sub_24F91F668();
    v43 = MEMORY[0x277D837D0];
    v41 = v29;
    v42 = v30;
    sub_24F929878();
    sub_24E601704(&v41, &qword_27F2129B0);
    sub_24E601704(&v47, &qword_27F2129B0);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226A58);
    v32 = sub_24E602068(&qword_27F226A60, &qword_27F226A58);
    sub_24F925EE8();
    (*(v35 + 8))(v20, v36);

    sub_24E615E00(v49, &v47);
    v33 = swift_allocObject();
    v33[2] = v27;
    sub_24E612C80(&v47, (v33 + 3));
    v33[8] = a1;
    v33[9] = a3;

    v41 = v31;
    v42 = v32;
    swift_getOpaqueTypeConformance2();
    v34 = v38;
    sub_24F9267B8();

    (*(v37 + 8))(v25, v34);
    return __swift_destroy_boxed_opaque_existential_1(v49);
  }

  __break(1u);
  return result;
}

uint64_t sub_24EA96F3C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>, double a8@<D3>)
{
  v38 = a2;
  v39 = a3;
  v40 = a4;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v38 - v14;
  v16 = sub_24F929B38();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226A68);
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v38 - v22;
  sub_24E615E00(a1, v45);
  type metadata accessor for GSKComponentContentBuilder();
  sub_24EA9626C(&qword_27F21C648, type metadata accessor for GSKComponentContentBuilder);
  v43 = sub_24F923598();
  LOBYTE(v44) = v24 & 1;
  sub_24F929B18();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F92ADC8();
  v25 = sub_24E66C1E0();
  sub_24F925E88();
  sub_24E601704(v15, &qword_27F213E68);
  (*(v17 + 8))(v19, v16);
  sub_24E88F154(&v43);
  sub_24F92B7F8();
  v26 = v39;

  v27 = sub_24F92B7E8();
  v28 = swift_allocObject();
  v29 = MEMORY[0x277D85700];
  v28[2] = v27;
  v28[3] = v29;
  v28[4] = v26;
  v30 = sub_24F92B7E8();
  v31 = swift_allocObject();
  *(v31 + 16) = v30;
  *(v31 + 24) = v29;
  sub_24F9271A8();
  v41 = &type metadata for GSKComponentView;
  v42 = v25;
  swift_getOpaqueTypeConformance2();
  v32 = v40;
  sub_24F925EA8();

  (*(v21 + 8))(v23, v20);
  KeyPath = swift_getKeyPath();
  v34 = v32 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226A70) + 36);
  *v34 = KeyPath;
  *(v34 + 8) = 5;
  v35 = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F226A78);
  v37 = v32 + *(result + 36);
  *v37 = v35;
  *(v37 + 8) = a5;
  *(v37 + 16) = a6;
  *(v37 + 24) = a7;
  *(v37 + 32) = a8;
  return result;
}

uint64_t sub_24EA9738C@<X0>(uint64_t a1@<X2>, _BYTE *a2@<X8>)
{
  swift_getKeyPath();
  sub_24EA9626C(&qword_27F226880, type metadata accessor for DeferredViewState);
  sub_24F91FD88();

  *a2 = *(a1 + 17);
  return result;
}

unint64_t sub_24EA97434(unint64_t result, unint64_t a2, void *a3, uint64_t a4, unint64_t a5)
{
  v8 = a2;
  v9 = result;
  if (*(a2 + 17) == (result & 1))
  {
    *(a2 + 17) = result & 1;
    if ((result & 1) == 0)
    {
      return result;
    }
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v21[0] = v8;
    sub_24EA9626C(&qword_27F226880, type metadata accessor for DeferredViewState);
    sub_24F91FD78();

    if ((v9 & 1) == 0)
    {
      return result;
    }
  }

  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  sub_24F928D68();
  v11 = sub_24F92C7A8();
  v13 = v12;
  sub_24E6585F8(v21);
  v21[0] = v11;
  v21[1] = v13;
  sub_24E600AEC();
  LOBYTE(v11) = sub_24F92C5F8();

  if ((v11 & 1) == 0)
  {
    if (*(v8 + 16) == 1)
    {
      *(v8 + 16) = 1;
    }

    else
    {
      v14 = swift_getKeyPath();
      MEMORY[0x28223BE20](v14);
      v21[0] = v8;
      sub_24EA9626C(&qword_27F226880, type metadata accessor for DeferredViewState);
      sub_24F91FD78();
    }

    v15 = a4 + 1;
    if (__OFADD__(a4, 1))
    {
      __break(1u);
    }

    else if (!(a5 >> 62))
    {
      v8 = *((a5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v15 >= v8)
      {
        goto LABEL_19;
      }

LABEL_12:
      if ((a5 & 0xC000000000000001) == 0)
      {
        if (v15 >= *((a5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_38:
          v19 = MEMORY[0x253052270](result, a5);
LABEL_27:
          if (*(v19 + 16) == 1)
          {
            *(v19 + 16) = 1;
          }

          else
          {
            v20 = swift_getKeyPath();
            MEMORY[0x28223BE20](v20);
            v21[0] = v19;
            sub_24EA9626C(&qword_27F226880, type metadata accessor for DeferredViewState);
            sub_24F91FD78();
          }
        }

        v16 = *(a5 + 8 * v15 + 32);

LABEL_15:
        if (*(v16 + 16) == 1)
        {
          *(v16 + 16) = 1;
        }

        else
        {
          v17 = swift_getKeyPath();
          MEMORY[0x28223BE20](v17);
          v18 = OBJC_IVAR____TtC12GameStoreKitP33_3A67B35F55B473BE31316F8B9DF9621517DeferredViewState___observationRegistrar;
          v21[0] = v16;
          sub_24EA9626C(&qword_27F226880, type metadata accessor for DeferredViewState);
          v15 = v16 + v18;
          sub_24F91FD78();
        }

        while (1)
        {
LABEL_19:
          if (__OFSUB__(a4, 1))
          {
            goto LABEL_35;
          }

          if (a4 - 1 >= 0)
          {
            result = a4 - 1;
          }

          else
          {
            result = v8 - 1;
          }

          if (result >= v8)
          {
            return result;
          }

          if ((a5 & 0xC000000000000001) != 0)
          {
            goto LABEL_38;
          }

          if (result < *((a5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            break;
          }

          __break(1u);
LABEL_40:
          v8 = result;
          if (v15 < result)
          {
            goto LABEL_12;
          }
        }

        v19 = *(a5 + 8 * result + 32);

        goto LABEL_27;
      }

LABEL_36:
      v16 = MEMORY[0x253052270](v15, a5);
      goto LABEL_15;
    }

    result = sub_24F92C738();
    if ((result & 0x8000000000000000) == 0)
    {
      goto LABEL_40;
    }

    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  return result;
}

uint64_t sub_24EA9799C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HeroCarouselView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EA97A04(uint64_t a1, double *a2)
{
  type metadata accessor for HeroCarouselView(0);

  return sub_24EA94A64(a1, a2);
}

unint64_t sub_24EA97A84()
{
  result = qword_27F226908;
  if (!qword_27F226908)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2268B0);
    sub_24E602068(&qword_27F226910, &qword_27F226918);
    sub_24EA97B3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F226908);
  }

  return result;
}

unint64_t sub_24EA97B3C()
{
  result = qword_27F226920;
  if (!qword_27F226920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F226920);
  }

  return result;
}

unint64_t sub_24EA97B90()
{
  result = qword_27F226928;
  if (!qword_27F226928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F226928);
  }

  return result;
}