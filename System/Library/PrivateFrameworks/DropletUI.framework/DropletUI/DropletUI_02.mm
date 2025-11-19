uint64_t sub_249ED31E0(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  if (a3)
  {
    v6 = sub_249ED6C70();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = a1;
  v10 = a4(v6, v8);

  return v10 & 1;
}

void sub_249ED3258(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (v6 && a3 != 0)
    {
      if (v8 = v6, a2 == 0xD00000000000002BLL) && 0x8000000249ED9E40 == a3 || (sub_249ED6ED0())
      {
        v9 = a1;
        v10 = sub_249ED34F4();
        v11 = [v8 intelligentEdgeLightKeylineStyleColorMatrix];
        [v11 caColorMatrix];

        v12 = &v10[OBJC_IVAR____TtC9DropletUIP33_1A307C73748F469B76839B7113A1F63419AnimatableLightView_colorMatrix];
        v13 = *&v10[OBJC_IVAR____TtC9DropletUIP33_1A307C73748F469B76839B7113A1F63419AnimatableLightView_colorMatrix + 48];
        v22[2] = *&v10[OBJC_IVAR____TtC9DropletUIP33_1A307C73748F469B76839B7113A1F63419AnimatableLightView_colorMatrix + 32];
        v22[3] = v13;
        v22[4] = *&v10[OBJC_IVAR____TtC9DropletUIP33_1A307C73748F469B76839B7113A1F63419AnimatableLightView_colorMatrix + 64];
        v14 = *&v10[OBJC_IVAR____TtC9DropletUIP33_1A307C73748F469B76839B7113A1F63419AnimatableLightView_colorMatrix + 16];
        v22[0] = *&v10[OBJC_IVAR____TtC9DropletUIP33_1A307C73748F469B76839B7113A1F63419AnimatableLightView_colorMatrix];
        v22[1] = v14;
        v15 = v18;
        *v12 = v17;
        *(v12 + 1) = v15;
        v16 = v20;
        *(v12 + 2) = v19;
        *(v12 + 3) = v16;
        *(v12 + 4) = v21;
        sub_249ED24A0(v22);
      }
    }
  }
}

uint64_t sub_249ED3434(uint64_t a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF29840, &qword_249ED8EC8);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_249ED8E50;
  *(v3 + 32) = 1852399975;
  *(v3 + 40) = 0xE400000000000000;
  if (qword_281252CA8 != -1)
  {
    v6 = v3;
    swift_once();
    v3 = v6;
  }

  v4 = *algn_281253398;
  *(v3 + 48) = qword_281253390;
  *(v3 + 56) = v4;
  *a2 = v3;
}

char *sub_249ED34F4()
{
  v1 = OBJC_IVAR____TtC9DropletUI25AnimatableIntelligentView____lazy_storage___lightView;
  v2 = *&v0[OBJC_IVAR____TtC9DropletUI25AnimatableIntelligentView____lazy_storage___lightView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC9DropletUI25AnimatableIntelligentView____lazy_storage___lightView];
  }

  else
  {
    [v0 bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v12 = v0[OBJC_IVAR____TtC9DropletUI25AnimatableIntelligentView_preferAudioReactivity];
    v13 = [objc_opt_self() rootSettings];
    v14 = [v13 intelligentEdgeLightKeylineStyleColorMatrix];

    [v14 caColorMatrix];
    v15 = *&v0[OBJC_IVAR____TtC9DropletUI25AnimatableIntelligentView_edrGain];
    v16 = type metadata accessor for AnimatableLightView();
    v17 = objc_allocWithZone(v16);
    *&v17[OBJC_IVAR____TtC9DropletUIP33_1A307C73748F469B76839B7113A1F63419AnimatableLightView____lazy_storage___noiseView] = 0;
    *&v17[OBJC_IVAR____TtC9DropletUIP33_1A307C73748F469B76839B7113A1F63419AnimatableLightView____lazy_storage___whiteView] = 0;
    v18 = &v17[OBJC_IVAR____TtC9DropletUIP33_1A307C73748F469B76839B7113A1F63419AnimatableLightView_colorMatrix];
    v19 = v46;
    v18[2] = v45;
    v18[3] = v19;
    v18[4] = v47;
    v20 = v44;
    *v18 = v43;
    v18[1] = v20;
    v17[OBJC_IVAR____TtC9DropletUIP33_1A307C73748F469B76839B7113A1F63419AnimatableLightView_preferringAudioReactivity] = v12;
    v42.receiver = v17;
    v42.super_class = v16;
    v21 = objc_msgSendSuper2(&v42, sel_initWithFrame_preferringAudioReactivity_, v12, v5, v7, v9, v11);
    v22 = *MEMORY[0x277CDA2C0];
    v23 = objc_allocWithZone(MEMORY[0x277CD9EA0]);
    v24 = v21;
    v25 = [v23 initWithType_];
    v26 = objc_opt_self();
    v41[2] = v45;
    v41[3] = v46;
    v41[4] = v47;
    v41[0] = v43;
    v41[1] = v44;
    v27 = [v26 valueWithCAColorMatrix_];
    [v25 setValue:v27 forKeyPath:*MEMORY[0x277CDA440]];

    v28 = sub_249ED6D00();
    [v25 setValue:v28 forKeyPath:*MEMORY[0x277CDA4E0]];

    v29 = sub_249ED6D00();
    [v25 setValue:v29 forKeyPath:*MEMORY[0x277CDA350]];

    v30 = v24;
    v31 = [v30 layer];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF292D8, &unk_249ED8FF0);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_249ED8C90;
    *(v32 + 56) = sub_249ED394C();
    *(v32 + 32) = v25;
    v33 = v25;
    v34 = sub_249ED6CC0();

    [v31 setFilters_];

    v35 = v0;
    v36 = sub_249ED289C();
    v37 = sub_249ED2960();
    [v36 addSubview_];

    [v30 setMaskView_];
    sub_249ED23B8(v15);

    v38 = *&v35[v1];
    *&v35[v1] = v30;
    v3 = v30;

    v2 = 0;
  }

  v39 = v2;
  return v3;
}

id sub_249ED38E0(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

unint64_t sub_249ED394C()
{
  result = qword_281252C90;
  if (!qword_281252C90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281252C90);
  }

  return result;
}

uint64_t sub_249ED3998(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_249ED6ED0() & 1;
  }
}

uint64_t sub_249ED3A0C(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_249ED6ED0() & 1;
  }
}

void sub_249ED3A80(uint64_t a1)
{
  v2 = v1;
  v4 = v1 + OBJC_IVAR____TtC9DropletUI22DropletParticipantView_keylineType;
  v5 = *(v1 + OBJC_IVAR____TtC9DropletUI22DropletParticipantView_keylineType + 48);
  v33 = *(v1 + OBJC_IVAR____TtC9DropletUI22DropletParticipantView_keylineType + 32);
  v34 = v5;
  v35 = *(v1 + OBJC_IVAR____TtC9DropletUI22DropletParticipantView_keylineType + 64);
  v36 = *(v1 + OBJC_IVAR____TtC9DropletUI22DropletParticipantView_keylineType + 80);
  v6 = *(v1 + OBJC_IVAR____TtC9DropletUI22DropletParticipantView_keylineType + 16);
  v32[0] = *(v1 + OBJC_IVAR____TtC9DropletUI22DropletParticipantView_keylineType);
  v32[1] = v6;
  v37[0] = v32[0];
  v37[1] = v6;
  v38 = v36;
  v37[3] = v5;
  v37[4] = v35;
  v37[2] = v33;
  v7 = *(a1 + 48);
  *(v4 + 32) = *(a1 + 32);
  *(v4 + 48) = v7;
  *(v4 + 64) = *(a1 + 64);
  *(v4 + 80) = *(a1 + 80);
  v8 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 16) = v8;
  sub_249EB0270(v32, v30);
  sub_249EB0270(a1, v30);
  sub_249EB73F4(v37);
  v9 = *(v4 + 48);
  v30[2] = *(v4 + 32);
  v30[3] = v9;
  v30[4] = *(v4 + 64);
  v31 = *(v4 + 80);
  v10 = *(v4 + 16);
  v30[0] = *v4;
  v30[1] = v10;
  sub_249EB0270(v30, v28);
  v11 = sub_249ED1CFC(v30, v32);
  sub_249EB73F4(v30);
  if (v11)
  {
    goto LABEL_12;
  }

  v12 = OBJC_IVAR____TtC9DropletUI22DropletParticipantView_trackingViews;
  swift_beginAccess();
  v13 = *(v2 + v12);
  v14 = *(v13 + 16);
  if (v14)
  {
    v25 = *(v2 + v12);
    v15 = v13 + 32;

    do
    {
      sub_249EB0208(v15, v27, &qword_27EF296F0, &unk_249ED8F70);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v17 = Strong;
        v18 = *(v4 + 32);
        v19 = *(v4 + 64);
        v28[3] = *(v4 + 48);
        v28[4] = v19;
        v20 = *(v4 + 16);
        v28[0] = *v4;
        v29 = *(v4 + 80);
        v28[1] = v20;
        v28[2] = v18;
        v21 = *((*MEMORY[0x277D85000] & *Strong) + 0xF0);
        sub_249EB0270(v28, v26);
        v21(v2, v28);
        sub_249EB73F4(v28);
      }

      sub_249EB371C(v27, &qword_27EF296F0, &unk_249ED8F70);
      v15 += 8;
      --v14;
    }

    while (v14);
  }

  v22 = swift_unknownObjectWeakLoadStrong();
  if (!v22)
  {
LABEL_12:
    sub_249EB73F4(v32);
    sub_249EB73F4(a1);
  }

  else
  {
    v23 = 0.0;
    if (*(v4 + 80) == 2)
    {
      v23 = 1.0;
    }

    v24 = v22;
    [v22 setAlpha_];
    sub_249EB73F4(v32);
    sub_249EB73F4(a1);
  }
}

id sub_249ED3DD8(void *a1, uint64_t a2, SEL *a3)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for DropletParticipantView();
  return objc_msgSendSuper2(&v5, *a3);
}

uint64_t sub_249ED3EA4(SEL *a1, SEL *a2, double a3, double a4, double a5, double a6)
{
  v9 = v6;
  v14 = type metadata accessor for DropletParticipantView();
  v77.receiver = v9;
  v77.super_class = v14;
  objc_msgSendSuper2(&v77, *a1);
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v76.receiver = v9;
  v76.super_class = v14;
  objc_msgSendSuper2(&v76, *a2, a3, a4, a5, a6);
  [v9 *a1];
  v92.origin.x = v23;
  v92.origin.y = v24;
  v92.size.width = v25;
  v92.size.height = v26;
  v91.origin.x = v16;
  v91.origin.y = v18;
  v91.size.width = v20;
  v91.size.height = v22;
  result = CGRectEqualToRect(v91, v92);
  if ((result & 1) == 0)
  {
    v28 = OBJC_IVAR____TtC9DropletUI22DropletParticipantView_trackingViews;
    swift_beginAccess();
    result = *&v9[v28];
    v29 = *(result + 16);
    if (v29)
    {
      v30 = result + 32;
      v54 = *&v9[v28];

      do
      {
        sub_249EB0208(v30, v75, &qword_27EF296F0, &unk_249ED8F70);
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v32 = Strong;
          [v9 *a1];
          [v9 bounds];
          v34 = v33;
          v56 = v33;
          v36 = v35;
          [v9 center];
          v38 = v37;
          v40 = v39;
          [v9 transform];
          v41 = *(&v67 + 1);
          v55 = v67;
          v42 = v68;
          v57 = *(&v69 + 1);
          v58 = v69;
          [v9 transform3D];
          v87 = v63;
          v88 = v64;
          v89 = v65;
          v90 = v66;
          v83 = v59;
          v84 = v60;
          v85 = v61;
          v86 = v62;
          v69 = v61;
          v78[0] = v9;
          v78[1] = v34;
          v78[2] = v36;
          v78[3] = v38;
          v78[4] = v40;
          v79 = v67;
          v80 = v68;
          v81 = v58;
          v82 = v57;
          v67 = v59;
          v68 = v60;
          (*((*MEMORY[0x277D85000] & *v32) + 0x90))(v78);
          sub_249EB371C(v75, &qword_27EF296F0, &unk_249ED8F70);
          *&v70 = v9;
          *(&v70 + 1) = v56;
          *&v71 = v36;
          *(&v71 + 1) = v38;
          *&v72 = v40;
          *(&v72 + 1) = v55;
          *v73 = v41;
          *&v73[8] = v42;
          *&v73[24] = v58;
          *v74 = v57;
          *&v74[72] = v63;
          *&v74[88] = v64;
          *&v74[104] = v65;
          *&v74[120] = v66;
          *&v74[8] = v59;
          *&v74[24] = v60;
          *&v74[40] = v61;
          *&v74[56] = v62;
          nullsub_1(&v70);
          v43 = v32 + OBJC_IVAR____TtC9DropletUI30DropletParticipantTrackingView_lastParticipantGeometry;
          v44 = v71;
          *v43 = v70;
          *(v43 + 1) = v44;
          v45 = v72;
          v46 = *v73;
          v47 = *v74;
          *(v43 + 4) = *&v73[16];
          *(v43 + 5) = v47;
          *(v43 + 2) = v45;
          *(v43 + 3) = v46;
          v48 = *&v74[16];
          v49 = *&v74[32];
          v50 = *&v74[64];
          *(v43 + 8) = *&v74[48];
          *(v43 + 9) = v50;
          *(v43 + 6) = v48;
          *(v43 + 7) = v49;
          v51 = *&v74[80];
          v52 = *&v74[96];
          v53 = *&v74[112];
          *(v43 + 26) = *&v74[128];
          *(v43 + 11) = v52;
          *(v43 + 12) = v53;
          *(v43 + 10) = v51;
        }

        else
        {
          sub_249EB371C(v75, &qword_27EF296F0, &unk_249ED8F70);
        }

        v30 += 8;
        --v29;
      }

      while (v29);
    }
  }

  return result;
}

void *sub_249ED431C(double a1, double a2)
{
  v3 = v2;
  v6 = type metadata accessor for DropletParticipantView();
  v64.receiver = v3;
  v64.super_class = v6;
  objc_msgSendSuper2(&v64, sel_center);
  v8 = v7;
  v10 = v9;
  v63.receiver = v3;
  v63.super_class = v6;
  objc_msgSendSuper2(&v63, sel_setCenter_, a1, a2);
  result = [v3 center];
  if (v8 != v13 || v10 != v12)
  {
    v15 = OBJC_IVAR____TtC9DropletUI22DropletParticipantView_trackingViews;
    swift_beginAccess();
    result = *&v3[v15];
    v16 = result[2];
    if (v16)
    {
      v17 = (result + 4);
      v41 = *&v3[v15];

      do
      {
        sub_249EB0208(v17, v62, &qword_27EF296F0, &unk_249ED8F70);
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v19 = Strong;
          [v3 center];
          [v3 bounds];
          v21 = v20;
          v43 = v20;
          v23 = v22;
          [v3 center];
          v25 = v24;
          v27 = v26;
          [v3 transform];
          v28 = *(&v54 + 1);
          v42 = v54;
          v29 = v55;
          v44 = *(&v56 + 1);
          v45 = v56;
          [v3 transform3D];
          v74 = v50;
          v75 = v51;
          v76 = v52;
          v77 = v53;
          v70 = v46;
          v71 = v47;
          v72 = v48;
          v73 = v49;
          v56 = v48;
          v65[0] = v3;
          v65[1] = v21;
          v65[2] = v23;
          v65[3] = v25;
          v65[4] = v27;
          v66 = v54;
          v67 = v55;
          v68 = v45;
          v69 = v44;
          v54 = v46;
          v55 = v47;
          (*((*MEMORY[0x277D85000] & *v19) + 0x90))(v65);
          sub_249EB371C(v62, &qword_27EF296F0, &unk_249ED8F70);
          *&v57 = v3;
          *(&v57 + 1) = v43;
          *&v58 = v23;
          *(&v58 + 1) = v25;
          *&v59 = v27;
          *(&v59 + 1) = v42;
          *v60 = v28;
          *&v60[8] = v29;
          *&v60[24] = v45;
          *v61 = v44;
          *&v61[72] = v50;
          *&v61[88] = v51;
          *&v61[104] = v52;
          *&v61[120] = v53;
          *&v61[8] = v46;
          *&v61[24] = v47;
          *&v61[40] = v48;
          *&v61[56] = v49;
          nullsub_1(&v57);
          v30 = v19 + OBJC_IVAR____TtC9DropletUI30DropletParticipantTrackingView_lastParticipantGeometry;
          v31 = v58;
          *v30 = v57;
          *(v30 + 1) = v31;
          v32 = v59;
          v33 = *v60;
          v34 = *v61;
          *(v30 + 4) = *&v60[16];
          *(v30 + 5) = v34;
          *(v30 + 2) = v32;
          *(v30 + 3) = v33;
          v35 = *&v61[16];
          v36 = *&v61[32];
          v37 = *&v61[64];
          *(v30 + 8) = *&v61[48];
          *(v30 + 9) = v37;
          *(v30 + 6) = v35;
          *(v30 + 7) = v36;
          v38 = *&v61[80];
          v39 = *&v61[96];
          v40 = *&v61[112];
          *(v30 + 26) = *&v61[128];
          *(v30 + 11) = v39;
          *(v30 + 12) = v40;
          *(v30 + 10) = v38;
        }

        else
        {
          sub_249EB371C(v62, &qword_27EF296F0, &unk_249ED8F70);
        }

        v17 += 8;
        --v16;
      }

      while (v16);
    }
  }

  return result;
}

uint64_t sub_249ED4774(__int128 *a1)
{
  v2 = v1;
  v4 = *(a1 + 4);
  v5 = *(a1 + 5);
  v6 = type metadata accessor for DropletParticipantView();
  v58.receiver = v2;
  v58.super_class = v6;
  objc_msgSendSuper2(&v58, sel_transform);
  v57.receiver = v2;
  v57.super_class = v6;
  v7 = a1[1];
  v59 = *a1;
  v60 = v7;
  v61 = v4;
  *&v62 = v5;
  objc_msgSendSuper2(&v57, sel_setTransform_, &v59);
  [v2 transform];
  result = sub_249ED6D30();
  if ((result & 1) == 0)
  {
    v9 = OBJC_IVAR____TtC9DropletUI22DropletParticipantView_trackingViews;
    swift_beginAccess();
    result = *&v2[v9];
    v10 = *(result + 16);
    if (v10)
    {
      v11 = result + 32;
      v35 = *&v2[v9];

      do
      {
        sub_249EB0208(v11, v56, &qword_27EF296F0, &unk_249ED8F70);
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v13 = Strong;
          [v2 transform];
          [v2 bounds];
          v15 = v14;
          v37 = v14;
          v17 = v16;
          [v2 center];
          v19 = v18;
          v21 = v20;
          [v2 transform];
          v22 = *(&v48 + 1);
          v36 = v48;
          v23 = v49;
          v38 = *(&v50 + 1);
          v39 = v50;
          [v2 transform3D];
          v70 = v44;
          v71 = v45;
          v72 = v46;
          v73 = v47;
          v66 = v40;
          v67 = v41;
          v68 = v42;
          v69 = v43;
          v50 = v42;
          *&v59 = v2;
          *(&v59 + 1) = v15;
          *&v60 = v17;
          *(&v60 + 1) = v19;
          v61 = v21;
          v62 = v48;
          v63 = v49;
          v64 = v39;
          v65 = v38;
          v48 = v40;
          v49 = v41;
          (*((*MEMORY[0x277D85000] & *v13) + 0x90))(&v59);
          sub_249EB371C(v56, &qword_27EF296F0, &unk_249ED8F70);
          *&v51 = v2;
          *(&v51 + 1) = v37;
          *&v52 = v17;
          *(&v52 + 1) = v19;
          *&v53 = v21;
          *(&v53 + 1) = v36;
          *v54 = v22;
          *&v54[8] = v23;
          *&v54[24] = v39;
          *v55 = v38;
          *&v55[72] = v44;
          *&v55[88] = v45;
          *&v55[104] = v46;
          *&v55[120] = v47;
          *&v55[8] = v40;
          *&v55[24] = v41;
          *&v55[40] = v42;
          *&v55[56] = v43;
          nullsub_1(&v51);
          v24 = v13 + OBJC_IVAR____TtC9DropletUI30DropletParticipantTrackingView_lastParticipantGeometry;
          v25 = v52;
          *v24 = v51;
          *(v24 + 1) = v25;
          v26 = v53;
          v27 = *v54;
          v28 = *v55;
          *(v24 + 4) = *&v54[16];
          *(v24 + 5) = v28;
          *(v24 + 2) = v26;
          *(v24 + 3) = v27;
          v29 = *&v55[16];
          v30 = *&v55[32];
          v31 = *&v55[64];
          *(v24 + 8) = *&v55[48];
          *(v24 + 9) = v31;
          *(v24 + 6) = v29;
          *(v24 + 7) = v30;
          v32 = *&v55[80];
          v33 = *&v55[96];
          v34 = *&v55[112];
          *(v24 + 26) = *&v55[128];
          *(v24 + 11) = v33;
          *(v24 + 12) = v34;
          *(v24 + 10) = v32;
        }

        else
        {
          sub_249EB371C(v56, &qword_27EF296F0, &unk_249ED8F70);
        }

        v11 += 8;
        --v10;
      }

      while (v10);
    }
  }

  return result;
}

uint64_t sub_249ED4BB8(_OWORD *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DropletParticipantView();
  v59.receiver = v2;
  v59.super_class = v4;
  objc_msgSendSuper2(&v59, sel_transform3D);
  v58.receiver = v2;
  v58.super_class = v4;
  v5 = a1[5];
  *&a[64] = a1[4];
  *&a[80] = v5;
  v6 = a1[7];
  *&a[96] = a1[6];
  *&a[112] = v6;
  v7 = a1[1];
  *a = *a1;
  *&a[16] = v7;
  v8 = a1[3];
  *&a[32] = a1[2];
  *&a[48] = v8;
  objc_msgSendSuper2(&v58, sel_setTransform3D_, a);
  [v2 transform3D];
  *&a[64] = v70;
  *&a[80] = v71;
  *&a[96] = v72;
  *&a[112] = v73;
  *a = v66;
  *&a[16] = v67;
  *&a[32] = v68;
  *&a[48] = v69;
  result = CATransform3DEqualToTransform(a, &b);
  if ((result & 1) == 0)
  {
    v10 = OBJC_IVAR____TtC9DropletUI22DropletParticipantView_trackingViews;
    swift_beginAccess();
    result = *&v2[v10];
    v11 = *(result + 16);
    if (v11)
    {
      v12 = result + 32;
      v36 = *&v2[v10];

      do
      {
        sub_249EB0208(v12, v57, &qword_27EF296F0, &unk_249ED8F70);
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v14 = Strong;
          [v2 transform3D];
          [v2 bounds];
          v16 = v15;
          v38 = v15;
          v18 = v17;
          [v2 center];
          v20 = v19;
          v22 = v21;
          [v2 transform];
          v23 = *(&v49 + 1);
          v37 = v49;
          v24 = v50;
          v39 = *(&v51 + 1);
          v40 = v51;
          [v2 transform3D];
          v62 = v45;
          v63 = v46;
          v64 = v47;
          v65 = v48;
          *&a[88] = v41;
          *&a[104] = v42;
          *&a[120] = v43;
          v61 = v44;
          v51 = v43;
          *a = v2;
          *&a[8] = v16;
          *&a[16] = v18;
          *&a[24] = v20;
          *&a[32] = v22;
          *&a[40] = v49;
          *&a[56] = v50;
          *&a[72] = v40;
          *&a[80] = v39;
          v49 = v41;
          v50 = v42;
          (*((*MEMORY[0x277D85000] & *v14) + 0x90))(a);
          sub_249EB371C(v57, &qword_27EF296F0, &unk_249ED8F70);
          *&b = v2;
          *(&b + 1) = v38;
          *&b_16 = v18;
          *(&b_16 + 1) = v20;
          *&b_32 = v22;
          *(&b_32 + 1) = v37;
          *b_48 = v23;
          *&b_48[8] = v24;
          *&b_48[24] = v40;
          *b_80 = v39;
          *&b_80[72] = v45;
          *&b_80[88] = v46;
          *&b_80[104] = v47;
          *&b_80[120] = v48;
          *&b_80[8] = v41;
          *&b_80[24] = v42;
          *&b_80[40] = v43;
          *&b_80[56] = v44;
          nullsub_1(&b);
          v25 = v14 + OBJC_IVAR____TtC9DropletUI30DropletParticipantTrackingView_lastParticipantGeometry;
          v26 = b_16;
          *v25 = b;
          *(v25 + 1) = v26;
          v27 = b_32;
          v28 = *b_48;
          v29 = *b_80;
          *(v25 + 4) = *&b_48[16];
          *(v25 + 5) = v29;
          *(v25 + 2) = v27;
          *(v25 + 3) = v28;
          v30 = *&b_80[16];
          v31 = *&b_80[32];
          v32 = *&b_80[64];
          *(v25 + 8) = *&b_80[48];
          *(v25 + 9) = v32;
          *(v25 + 6) = v30;
          *(v25 + 7) = v31;
          v33 = *&b_80[80];
          v34 = *&b_80[96];
          v35 = *&b_80[112];
          *(v25 + 26) = *&b_80[128];
          *(v25 + 11) = v34;
          *(v25 + 12) = v35;
          *(v25 + 10) = v33;
        }

        else
        {
          sub_249EB371C(v57, &qword_27EF296F0, &unk_249ED8F70);
        }

        v12 += 8;
        --v11;
      }

      while (v11);
    }
  }

  return result;
}

id sub_249ED5020(double a1)
{
  v2 = v1;
  result = [v1 alpha];
  if (v5 != a1)
  {
    v6 = OBJC_IVAR____TtC9DropletUI22DropletParticipantView_trackingViews;
    result = swift_beginAccess();
    v7 = *&v2[v6];
    v8 = *(v7 + 16);
    if (v8)
    {
      v9 = v7 + 32;
      v10 = *&v2[v6];

      v11 = MEMORY[0x277D85000];
      do
      {
        sub_249EB0208(v9, &v14, &qword_27EF296F0, &unk_249ED8F70);
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v13 = Strong;
          [v2 alpha];
          (*((*v11 & *v13) + 0xC0))(v2);
        }

        sub_249EB371C(&v14, &qword_27EF296F0, &unk_249ED8F70);
        v9 += 8;
        --v8;
      }

      while (v8);
    }
  }

  return result;
}

id sub_249ED522C(char a1)
{
  v2 = v1;
  v3 = a1 & 1;
  result = [v2 isHidden];
  if (result != v3)
  {
    v5 = OBJC_IVAR____TtC9DropletUI22DropletParticipantView_trackingViews;
    result = swift_beginAccess();
    v6 = *&v2[v5];
    v7 = *(v6 + 16);
    if (v7)
    {
      v8 = v6 + 32;
      v9 = *&v2[v5];

      v10 = MEMORY[0x277D85000];
      do
      {
        sub_249EB0208(v8, &v13, &qword_27EF296F0, &unk_249ED8F70);
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v12 = Strong;
          (*((*v10 & *Strong) + 0x110))(v2, [v2 isHidden]);
        }

        sub_249EB371C(&v13, &qword_27EF296F0, &unk_249ED8F70);
        v8 += 8;
        --v7;
      }

      while (v7);
    }
  }

  return result;
}

uint64_t sub_249ED5384(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19[2] = a2;
  v20 = a1;
  v5 = OBJC_IVAR____TtC9DropletUI22DropletParticipantView_trackingViews;
  swift_beginAccess();
  result = *(v3 + v5);
  v7 = *(result + 16);
  if (v7)
  {
    v8 = result + 32;
    v19[1] = *(v3 + v5);

    while (1)
    {
      sub_249EB0208(v8, v23, &qword_27EF296F0, &unk_249ED8F70);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {
        goto LABEL_5;
      }

      v11 = Strong;
      sub_249EB0208(v20, v21, &unk_27EF299E0, &qword_249ED8EB0);
      v12 = v22;
      if (v22)
      {
        v13 = __swift_project_boxed_opaque_existential_0(v21, v22);
        v14 = *(v12 - 8);
        v15 = *(v14 + 64);
        MEMORY[0x28223BE20](v13, v13);
        v17 = v19 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v14 + 16))(v17);
        v18 = sub_249ED6EC0();
        (*(v14 + 8))(v17, v12);
        __swift_destroy_boxed_opaque_existential_0(v21);
        if (!a3)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v18 = 0;
        if (!a3)
        {
LABEL_11:
          v9 = 0;
          goto LABEL_4;
        }
      }

      v9 = sub_249ED6C60();
LABEL_4:
      [v11 _setVelocity_forKey_];

      swift_unknownObjectRelease();
LABEL_5:
      sub_249EB371C(v23, &qword_27EF296F0, &unk_249ED8F70);
      v8 += 8;
      if (!--v7)
      {
      }
    }
  }

  return result;
}

uint64_t sub_249ED5674(char a1)
{
  v3 = OBJC_IVAR____TtC9DropletUI22DropletParticipantView_trackingViews;
  result = swift_beginAccess();
  v5 = *(v1 + v3);
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = v5 + 32;

    do
    {
      sub_249EB0208(v7, &v10, &qword_27EF296F0, &unk_249ED8F70);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v9 = Strong;
        [Strong _removeAllRetargetableAnimations_];
      }

      sub_249EB371C(&v10, &qword_27EF296F0, &unk_249ED8F70);
      v7 += 8;
      --v6;
    }

    while (v6);
  }

  return result;
}

void sub_249ED57B0()
{
  v1 = v0;
  v11.receiver = v0;
  v11.super_class = type metadata accessor for DropletParticipantView();
  objc_msgSendSuper2(&v11, sel_removeFromSuperview);
  v2 = OBJC_IVAR____TtC9DropletUI22DropletParticipantView_trackingViews;
  swift_beginAccess();
  v3 = *&v1[v2];
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = v3 + 32;
    v6 = *&v1[v2];

    v7 = MEMORY[0x277D85000];
    do
    {
      sub_249EB0208(v5, &v10, &qword_27EF296F0, &unk_249ED8F70);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v9 = Strong;
        (*((*v7 & *Strong) + 0x128))(v1);
      }

      sub_249EB371C(&v10, &qword_27EF296F0, &unk_249ED8F70);
      v5 += 8;
      --v4;
    }

    while (v4);
  }

  sub_249ED5930();
}

void sub_249ED5930()
{
  v1 = OBJC_IVAR____TtC9DropletUI22DropletParticipantView_trackingViews;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2[2];
  if (v3)
  {
    v4 = 0;
    v5 = 5;
    while (1)
    {
      if (v4 >= v2[2])
      {
        __break(1u);
        goto LABEL_27;
      }

      sub_249EB0208(&v2[v5 - 1], v13, &qword_27EF296F0, &unk_249ED8F70);
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_249EB371C(v13, &qword_27EF296F0, &unk_249ED8F70);
      if (!Strong)
      {
        break;
      }

      ++v4;
      ++v5;
      if (v3 == v4)
      {
        v4 = v2[2];
        v7 = v4;
        goto LABEL_25;
      }
    }

    v7 = v4 + 1;
    v8 = v2[2];
    if (v8 - 1 == v4)
    {
      goto LABEL_25;
    }

    while (v7 < v8)
    {
      sub_249EB0208(&v2[v5], v13, &qword_27EF296F0, &unk_249ED8F70);
      v9 = swift_unknownObjectWeakLoadStrong();
      sub_249EB371C(v13, &qword_27EF296F0, &unk_249ED8F70);
      if (v9)
      {

        if (v7 != v4)
        {
          if ((v4 & 0x8000000000000000) != 0)
          {
            goto LABEL_28;
          }

          v10 = v2[2];
          if (v4 >= v10)
          {
            goto LABEL_29;
          }

          sub_249EB0208(&v2[v4 + 4], v13, &qword_27EF296F0, &unk_249ED8F70);
          if (v7 >= v10)
          {
            goto LABEL_30;
          }

          sub_249EB0208(&v2[v5], v12, &qword_27EF296F0, &unk_249ED8F70);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v0 + v1) = v2;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v2 = sub_249ED60B4(v2);
            *(v0 + v1) = v2;
          }

          if (v4 >= v2[2])
          {
            goto LABEL_31;
          }

          sub_249ED63A0(v12, &v2[v4 + 4]);
          *(v0 + v1) = v2;
          if (v7 >= v2[2])
          {
            goto LABEL_32;
          }

          sub_249ED63A0(v13, &v2[v5]);
          *(v0 + v1) = v2;
        }

        ++v4;
      }

      ++v7;
      v8 = v2[2];
      ++v5;
      if (v7 == v8)
      {
        if (v7 < v4)
        {
          goto LABEL_33;
        }

        goto LABEL_25;
      }
    }

LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v4 = 0;
    v7 = 0;
LABEL_25:
    sub_249ED62E0(v4, v7);
    swift_endAccess();
  }
}

id sub_249ED5BC4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DropletParticipantView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_249ED5CA0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF29840, &qword_249ED8EC8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_249ED5DAC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF292D8, &unk_249ED8FF0);
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
    v10 = MEMORY[0x277D84F90];
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

void *sub_249ED5EBC(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF29A90, &unk_249ED94D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 < a4 || v10 + 4 >= &a4[v8 + 4])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF296F0, &unk_249ED8F70);
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10 != a4)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF296F0, &unk_249ED8F70);
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF296F0, &unk_249ED8F70);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_249ED603C(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_249ED6E70();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return sub_249ED6DE0();
}

void sub_249ED60C8()
{
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC9DropletUI22DropletParticipantView_isIntelligentLightViewHidden) = 1;
  *(v0 + OBJC_IVAR____TtC9DropletUI22DropletParticipantView_boundaryEdges) = 0;
  v1 = (v0 + OBJC_IVAR____TtC9DropletUI22DropletParticipantView_boundaryOutsets);
  v2 = *MEMORY[0x277D768C8];
  v3 = *(MEMORY[0x277D768C8] + 8);
  v4 = *(MEMORY[0x277D768C8] + 16);
  v5 = *(MEMORY[0x277D768C8] + 24);
  *v1 = *MEMORY[0x277D768C8];
  v1[1] = v3;
  v1[2] = v4;
  v1[3] = v5;
  v6 = (v0 + OBJC_IVAR____TtC9DropletUI22DropletParticipantView_keylineFadeLengths);
  *v6 = v2;
  v6[1] = v3;
  v6[2] = v4;
  v6[3] = v5;
  v7 = (v0 + OBJC_IVAR____TtC9DropletUI22DropletParticipantView_keylineOutsets);
  *v7 = v2;
  v7[1] = v3;
  v7[2] = v4;
  v7[3] = v5;
  v8 = v0 + OBJC_IVAR____TtC9DropletUI22DropletParticipantView_keylineType;
  *v8 = 0;
  *(v8 + 80) = 1;
  *(v0 + OBJC_IVAR____TtC9DropletUI22DropletParticipantView_keylineEDRGain) = 0;
  *(v0 + OBJC_IVAR____TtC9DropletUI22DropletParticipantView_normalizedStartLocation) = 0;
  *(v0 + OBJC_IVAR____TtC9DropletUI22DropletParticipantView_normalizedStopLocation) = 0x3FF0000000000000;
  *(v0 + OBJC_IVAR____TtC9DropletUI22DropletParticipantView_trackingViews) = MEMORY[0x277D84F90];
  sub_249ED6E50();
  __break(1u);
}

unint64_t sub_249ED61F0(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_18;
  }

  v7 = *v3;
  v8 = *v3 + 32;
  v9 = v8 + 8 * result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF296F0, &unk_249ED8F70);
  result = swift_arrayDestroy();
  v10 = __OFSUB__(a3, v4);
  v11 = a3 - v4;
  if (v10)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v11)
  {
    goto LABEL_15;
  }

  v12 = *(v7 + 16);
  if (__OFSUB__(v12, a2))
  {
    goto LABEL_19;
  }

  result = v9 + 8 * a3;
  v13 = v8 + 8 * a2;
  if (result < v13 || result >= v13 + 8 * (v12 - a2))
  {
    result = swift_arrayInitWithTakeFrontToBack();
  }

  else if (result != v13)
  {
    result = swift_arrayInitWithTakeBackToFront();
  }

  v15 = *(v7 + 16);
  v10 = __OFADD__(v15, v11);
  v16 = v15 + v11;
  if (v10)
  {
    goto LABEL_20;
  }

  *(v7 + 16) = v16;
LABEL_15:
  if (a3 > 0)
  {
LABEL_21:
    __break(1u);
  }

  return result;
}

unint64_t sub_249ED62E0(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v9 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = v5;
    }

    v4 = sub_249ED5EBC(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    *v2 = v4;
  }

  result = sub_249ED61F0(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_249ED63A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF296F0, &unk_249ED8F70);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

double *sub_249ED6410(double *result)
{
  v3 = result[3];
  v2 = result[4];
  v4 = *&v1[OBJC_IVAR____TtC9DropletUI19DropletBoundaryView_participantBoundaryOutsets + 8];
  v6 = *&v1[OBJC_IVAR____TtC9DropletUI19DropletBoundaryView_participantBoundaryOutsets + 16];
  v5 = *&v1[OBJC_IVAR____TtC9DropletUI19DropletBoundaryView_participantBoundaryOutsets + 24];
  v7 = result[1] * result[11] + v4 + v5;
  v8 = result[2] * result[16] + *&v1[OBJC_IVAR____TtC9DropletUI19DropletBoundaryView_participantBoundaryOutsets] + v6;
  v9 = *&v1[OBJC_IVAR____TtC9DropletUI19DropletBoundaryView_edge];
  if (v9 > 3)
  {
    if (v9 == 4)
    {
      v2 = v6 * 0.5 + CGRectGetMaxY(*&v1[OBJC_IVAR____TtC9DropletUI19DropletBoundaryView_boundaryReferenceBounds]);
    }

    else
    {
      if (v9 != 8)
      {
        return result;
      }

      v3 = v5 * 0.5 + CGRectGetMaxX(*&v1[OBJC_IVAR____TtC9DropletUI19DropletBoundaryView_boundaryReferenceBounds]);
    }
  }

  else if (v9 == 1)
  {
    v10 = *&v1[OBJC_IVAR____TtC9DropletUI19DropletBoundaryView_participantBoundaryOutsets];
    v2 = CGRectGetMinY(*&v1[OBJC_IVAR____TtC9DropletUI19DropletBoundaryView_boundaryReferenceBounds]) + v10 * -0.5;
  }

  else
  {
    if (v9 != 2)
    {
      return result;
    }

    v3 = CGRectGetMinX(*&v1[OBJC_IVAR____TtC9DropletUI19DropletBoundaryView_boundaryReferenceBounds]) + v4 * -0.5;
  }

  BSRectWithSize();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  [v1 bounds];
  v23.origin.x = v12;
  v23.origin.y = v14;
  v23.size.width = v16;
  v23.size.height = v18;
  if (!CGRectEqualToRect(v22, v23))
  {
    [v1 setBounds_];
  }

  result = [v1 center];
  if (v20 != v3 || v19 != v2)
  {

    return [v1 setCenter_];
  }

  return result;
}

id sub_249ED6628(uint64_t a1, char a2)
{
  v3 = v2[OBJC_IVAR____TtC9DropletUI19DropletBoundaryView_participantIsHidden];
  v2[OBJC_IVAR____TtC9DropletUI19DropletBoundaryView_participantIsHidden] = a2;
  if (v3 != (a2 & 1))
  {
    v4 = (a2 & 1) != 0 || (*&v2[OBJC_IVAR____TtC9DropletUI19DropletBoundaryView_edge] & ~*&v2[OBJC_IVAR____TtC9DropletUI19DropletBoundaryView_participantRequestedBoundaryEdges]) != 0;
    return [v2 setHidden_];
  }

  return result;
}

id sub_249ED6684(uint64_t a1, uint64_t a2)
{
  v3 = *&v2[OBJC_IVAR____TtC9DropletUI19DropletBoundaryView_participantRequestedBoundaryEdges];
  *&v2[OBJC_IVAR____TtC9DropletUI19DropletBoundaryView_participantRequestedBoundaryEdges] = a2;
  if (v3 != a2)
  {
    v4 = (v2[OBJC_IVAR____TtC9DropletUI19DropletBoundaryView_participantIsHidden] & 1) != 0 || (*&v2[OBJC_IVAR____TtC9DropletUI19DropletBoundaryView_edge] & ~a2) != 0;
    return [v2 setHidden_];
  }

  return result;
}

void sub_249ED66DC(float64x2_t a1, float64_t a2, float64x2_t a3, float64_t a4)
{
  v5 = &v4[OBJC_IVAR____TtC9DropletUI19DropletBoundaryView_participantBoundaryOutsets];
  v6 = *&v4[OBJC_IVAR____TtC9DropletUI19DropletBoundaryView_participantBoundaryOutsets];
  v7 = *&v4[OBJC_IVAR____TtC9DropletUI19DropletBoundaryView_participantBoundaryOutsets + 16];
  *v5 = a1.f64[0];
  v5[1] = a2;
  v5[2] = a3.f64[0];
  v5[3] = a4;
  a1.f64[1] = a2;
  a3.f64[1] = a4;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v6, a1), vceqq_f64(v7, a3)))) & 1) == 0)
  {
    [v4 setNeedsLayout];

    [v4 layoutIfNeeded];
  }
}

void *sub_249ED6760(char *a1, uint64_t a2)
{
  v4 = (v2 + OBJC_IVAR____TtC9DropletUI19DropletBoundaryView_boundaryReferenceBounds);
  *v4 = 0u;
  v4[1] = 0u;
  *(v2 + OBJC_IVAR____TtC9DropletUI19DropletBoundaryView_edge) = a2;
  v5 = [a1 isHidden];
  *(v2 + OBJC_IVAR____TtC9DropletUI19DropletBoundaryView_participantIsHidden) = v5;
  *(v2 + OBJC_IVAR____TtC9DropletUI19DropletBoundaryView_participantRequestedBoundaryEdges) = *&a1[OBJC_IVAR____TtC9DropletUI22DropletParticipantView_boundaryEdges];
  v6 = (v2 + OBJC_IVAR____TtC9DropletUI19DropletBoundaryView_participantBoundaryOutsets);
  v7 = *&a1[OBJC_IVAR____TtC9DropletUI22DropletParticipantView_boundaryOutsets + 16];
  *v6 = *&a1[OBJC_IVAR____TtC9DropletUI22DropletParticipantView_boundaryOutsets];
  v6[1] = v7;
  v8 = a1;
  v9 = sub_249EBED94(v8);
  v10 = (*(v9 + OBJC_IVAR____TtC9DropletUI19DropletBoundaryView_participantIsHidden) & 1) != 0 || (*(v9 + OBJC_IVAR____TtC9DropletUI19DropletBoundaryView_edge) & ~*(v9 + OBJC_IVAR____TtC9DropletUI19DropletBoundaryView_participantRequestedBoundaryEdges)) != 0;
  v11 = v9;
  [v11 setHidden_];

  return v11;
}

id sub_249ED69D4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DropletBoundaryView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_249ED6A2C(void *a1)
{
  v15[1] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v14 = 0;
    v15[0] = 0;
    v12 = 0;
    v13 = 0;
    v1 = a1;
    [v1 getRed:v15 green:&v14 blue:&v13 alpha:&v12];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF29AC0, &unk_249ED9510);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_249ED9500;
    v3 = v15[0];
    v4 = MEMORY[0x277D85048];
    *(v2 + 56) = MEMORY[0x277D85048];
    v5 = sub_249ED6B6C();
    *(v2 + 64) = v5;
    *(v2 + 32) = v3;
    v6 = v13;
    v7 = v14;
    *(v2 + 96) = v4;
    *(v2 + 104) = v5;
    *(v2 + 72) = v7;
    *(v2 + 136) = v4;
    *(v2 + 144) = v5;
    *(v2 + 112) = v6;
    v8 = v12;
    *(v2 + 176) = v4;
    *(v2 + 184) = v5;
    *(v2 + 152) = v8;
    v9 = sub_249ED6C80();
  }

  else
  {
    v9 = 7104878;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

unint64_t sub_249ED6B6C()
{
  result = qword_27EF29AC8;
  if (!qword_27EF29AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF29AC8);
  }

  return result;
}