uint64_t sub_22C9E3AD8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 112))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 88);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22C9E3B18(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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
      *(result + 88) = (a2 - 1);
      return result;
    }

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_22C9E3BCC()
{

  JUMPOUT(0x2318BA9C0);
}

void sub_22C9E3BE8()
{

  JUMPOUT(0x2318BA9C0);
}

uint64_t sub_22C9E3C14()
{

  return sub_22CA21360();
}

void sub_22C9E3C80()
{

  JUMPOUT(0x2318BA9C0);
}

uint64_t sub_22C9E3CB8(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_22CA21290();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t sub_22C9E3CDC()
{
  ObjectType = swift_getObjectType();
  sub_22C9E6EC8();
  if (v20)
  {
    sub_22C9D05CC(v19, v20);
    sub_22C9E6E18();
    v4 = *(v3 + 64);
    MEMORY[0x28223BE20](v5);
    v7 = sub_22C9E6DF0(v6, v16);
    v8(v7);
    sub_22CA21350();
    v9 = sub_22C9E6E94();
    v10(v9);
    sub_22C9D04CC(v19);
  }

  else
  {
    v1 = 0;
  }

  v18.receiver = v0;
  v18.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v18, sel_isEqual_, v1);
  swift_unknownObjectRelease();
  if (!v11)
  {
    goto LABEL_11;
  }

  sub_22C9E6EC8();
  if (!v20)
  {
    sub_22C9D027C(v19);
    goto LABEL_11;
  }

  if ((sub_22C9E6E70() & 1) == 0)
  {
LABEL_11:
    v14 = 0;
    return v14 & 1;
  }

  v12 = *&v0[OBJC_IVAR____TtC14MediaSuggester22MSMediaAppIntentsCache_appIntents];
  v13 = *&v17[OBJC_IVAR____TtC14MediaSuggester22MSMediaAppIntentsCache_appIntents];

  LOBYTE(v12) = sub_22C9CDEA0(v12, v13);

  if ((v12 & 1) == 0)
  {

    goto LABEL_11;
  }

  v14 = sub_22CA209C0();

  return v14 & 1;
}

id sub_22C9E3F3C(uint64_t a1, void *a2, void *a3)
{
  ObjectType = swift_getObjectType();
  v8 = sub_22CA209F0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v3[*a2] = a1;
  sub_22CA209E0();
  (*(v9 + 32))(&v3[*a3], v12, v8);
  v14.receiver = v3;
  v14.super_class = ObjectType;
  return objc_msgSendSuper2(&v14, sel_init);
}

uint64_t sub_22C9E404C()
{
  ObjectType = swift_getObjectType();
  sub_22C9E6EC8();
  if (v18)
  {
    sub_22C9D05CC(v17, v18);
    sub_22C9E6E18();
    v4 = *(v3 + 64);
    MEMORY[0x28223BE20](v5);
    v7 = sub_22C9E6DF0(v6, v14);
    v8(v7);
    sub_22CA21350();
    v9 = sub_22C9E6E94();
    v10(v9);
    sub_22C9D04CC(v17);
  }

  else
  {
    v1 = 0;
  }

  v16.receiver = v0;
  v16.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v16, sel_isEqual_, v1);
  swift_unknownObjectRelease();
  if (!v11)
  {
    goto LABEL_11;
  }

  sub_22C9E6EC8();
  if (!v18)
  {
    sub_22C9D027C(v17);
    goto LABEL_11;
  }

  if ((sub_22C9E6E70() & 1) == 0)
  {
LABEL_11:
    v12 = 0;
    return v12 & 1;
  }

  if ((sub_22C9CE080(*&v0[OBJC_IVAR____TtC14MediaSuggester20MSMediaBundleIDCache_bundleIDs], *&v15[OBJC_IVAR____TtC14MediaSuggester20MSMediaBundleIDCache_bundleIDs]) & 1) == 0)
  {

    goto LABEL_11;
  }

  v12 = sub_22CA209C0();

  return v12 & 1;
}

uint64_t sub_22C9E41EC(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_OWORD *))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    sub_22CA21130();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v7 = a1;
  }

  v8 = a4(v10);

  sub_22C9D027C(v10);
  return v8 & 1;
}

uint64_t sub_22C9E42C4(void *a1, void (*a2)(_BYTE *, void))
{
  sub_22CA214A0();
  a2(v6, *(v2 + *a1));
  return sub_22CA21480();
}

uint64_t sub_22C9E4374(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v6 = *(a1 + *a3);

  v7 = *a4;
  v8 = sub_22CA209F0();
  v9 = *(*(v8 - 8) + 8);

  return v9(a1 + v7, v8);
}

id sub_22C9E43EC()
{
  result = [objc_allocWithZone(type metadata accessor for MSMediaAppIntentsCacheManager()) init];
  qword_28143A0D8 = result;
  return result;
}

id static MSMediaAppIntentsCacheManager.shared.getter()
{
  if (qword_28143A0D0 != -1)
  {
    swift_once();
  }

  v1 = qword_28143A0D8;

  return v1;
}

id sub_22C9E4478()
{
  result = [objc_allocWithZone(MEMORY[0x277CBEA78]) init];
  qword_28143A420 = result;
  return result;
}

id sub_22C9E44AC()
{
  result = [objc_allocWithZone(MEMORY[0x277CBEA78]) init];
  qword_28143A418 = result;
  return result;
}

id sub_22C9E44E0()
{
  ObjectType = swift_getObjectType();
  if (qword_28143A0E8 != -1)
  {
    swift_once();
  }

  v2 = qword_28143A420;
  [qword_28143A420 setTotalCostLimit_];
  [v2 setEvictsObjectsWhenApplicationEntersBackground_];
  if (qword_28143A0E0 != -1)
  {
    swift_once();
  }

  v3 = qword_28143A418;
  [qword_28143A418 setTotalCostLimit_];
  [v3 setEvictsObjectsWhenApplicationEntersBackground_];
  v5.receiver = v0;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_22C9E4610(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return sub_22C9E6DB4(sub_22C9E4628);
}

uint64_t sub_22C9E4628()
{
  sub_22C9D6F3C();
  sub_22CA20F50();
  *(v0 + 40) = sub_22C9E6E40();
  sub_22C9E6E58();
  sub_22C9E6E34();
  v1 = sub_22C9E6DC0();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

void sub_22C9E469C()
{
  sub_22C9D7018();
  v3 = v1[4];
  v2 = v1[5];
  v4 = v1[3];

  v5 = sub_22C9E6EA8();
  sub_22C9E4738(v5, v6, v7);
  if (v0)
  {
  }

  else
  {
    v8 = v1[2];
    sub_22C9E6EBC();

    v9();
  }
}

void sub_22C9E4738(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v65 = a2;
  v6 = sub_22CA20AB0();
  v63 = *(v6 - 8);
  v64 = v6;
  v7 = *(v63 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22CA20900();
  v61 = *(v10 - 8);
  v62 = v10;
  v11 = *(v61 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22CA209F0();
  v68 = *(v14 - 8);
  v15 = v68[8];
  v16 = MEMORY[0x28223BE20](v14);
  v66 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v67 = &v55 - v18;
  if (qword_28143A0E8 != -1)
  {
    swift_once();
  }

  v19 = qword_28143A420;
  v20 = sub_22CA20E10();
  v21 = [v19 objectForKey_];

  if (v21)
  {
    v56 = a1;
    v59 = a3;
    v60 = v3;
    sub_22CA209E0();
    v22 = v68[2];
    v57 = v21;
    v58 = v14;
    v22(v66, &v21[OBJC_IVAR____TtC14MediaSuggester22MSMediaAppIntentsCache_cachedDate], v14);
    sub_22CA20A80();
    sub_22C9D02E4(&qword_27D9E4E70, &qword_22CA243E0);
    v23 = sub_22CA20A90();
    v24 = *(v23 - 8);
    v25 = *(v24 + 72);
    v26 = (*(v24 + 80) + 32) & ~*(v24 + 80);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_22CA22F90;
    (*(v24 + 104))(v27 + v26, *MEMORY[0x277CC9968], v23);
    sub_22CA02080(v27);
    sub_22CA20A70();

    (*(v63 + 8))(v9, v64);
    v28 = sub_22CA208E0();
    LOBYTE(v27) = v29;
    (*(v61 + 8))(v13, v62);
    if ((v27 & 1) == 0 && v28 >= 1)
    {
      [v19 removeAllObjects];
      v30 = v65;
      if (qword_28143A1A8 != -1)
      {
        swift_once();
      }

      v31 = sub_22CA20B10();
      sub_22C9D0494(v31, qword_28143A438);

      v32 = sub_22CA20AF0();
      v33 = sub_22CA21010();

      v34 = os_log_type_enabled(v32, v33);
      v35 = v58;
      a3 = v59;
      v36 = v57;
      if (!v34)
      {
        goto LABEL_21;
      }

      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v69 = v38;
      *v37 = 136315138;
      *(v37 + 4) = sub_22C9D60B0(v56, v30, &v69);
      v39 = "MSMediaAppIntentsCache (%s): Discarded cache (stale data).";
LABEL_20:
      _os_log_impl(&dword_22C9CA000, v32, v33, v39, v37, 0xCu);
      sub_22C9D04CC(v38);
      MEMORY[0x2318BB680](v38, -1, -1);
      MEMORY[0x2318BB680](v37, -1, -1);
LABEL_21:

      v53 = v68[1];
      v53(v66, v35);
      v53(v67, v35);
      v40 = MEMORY[0x277D84F90];
      goto LABEL_24;
    }

    v41 = OBJC_IVAR____TtC14MediaSuggester22MSMediaAppIntentsCache_appIntents;
    v36 = v57;
    v42 = sub_22C9E3CB8(*&v57[OBJC_IVAR____TtC14MediaSuggester22MSMediaAppIntentsCache_appIntents]);
    v43 = v65;
    if (!v42)
    {
      v35 = v58;
      if (qword_28143A1A8 != -1)
      {
        swift_once();
      }

      v51 = sub_22CA20B10();
      sub_22C9D0494(v51, qword_28143A438);

      v32 = sub_22CA20AF0();
      v33 = sub_22CA21000();

      v52 = os_log_type_enabled(v32, v33);
      a3 = v59;
      if (!v52)
      {
        goto LABEL_21;
      }

      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v69 = v38;
      *v37 = 136315138;
      *(v37 + 4) = sub_22C9D60B0(v56, v43, &v69);
      v39 = "MSMediaAppIntentsCache (%s): No data found";
      goto LABEL_20;
    }

    v44 = v58;
    if (qword_28143A1A8 != -1)
    {
      swift_once();
    }

    v45 = sub_22CA20B10();
    sub_22C9D0494(v45, qword_28143A438);

    v46 = v36;
    v47 = sub_22CA20AF0();
    v48 = sub_22CA21010();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v69 = v50;
      *v49 = 136315394;
      *(v49 + 4) = sub_22C9D60B0(v56, v43, &v69);
      *(v49 + 12) = 2048;
      *(v49 + 14) = sub_22C9E3CB8(*&v36[v41]);

      _os_log_impl(&dword_22C9CA000, v47, v48, "MSMediaAppIntentsCache (%s): Loaded %ld app intents", v49, 0x16u);
      sub_22C9D04CC(v50);
      MEMORY[0x2318BB680](v50, -1, -1);
      MEMORY[0x2318BB680](v49, -1, -1);
    }

    else
    {
    }

    v54 = v68[1];
    v54(v66, v44);
    v54(v67, v44);
    v40 = *&v36[v41];

    a3 = v59;
  }

  else
  {
    v40 = MEMORY[0x277D84F90];
  }

LABEL_24:
  *a3 = v40;
}

uint64_t sub_22C9E4F00()
{
  sub_22C9D6F3C();
  sub_22CA20F50();
  *(v0 + 16) = sub_22C9E6E40();
  sub_22C9E6E58();
  sub_22C9E6E34();
  v1 = sub_22C9E6DC0();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_22C9E4F74()
{
  sub_22C9D7018();
  v1 = *(v0 + 16);

  sub_22C9E5010((v0 + 24));
  v2 = *(v0 + 24);
  sub_22C9E6EBC();

  return v3();
}

void sub_22C9E5010(char *a1@<X8>)
{
  v43 = sub_22CA20AB0();
  v3 = *(v43 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v43);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_22CA20900();
  v7 = *(v42 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v42);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_22CA209F0();
  v45 = *(v46 - 8);
  v11 = v45[8];
  v12 = MEMORY[0x28223BE20](v46);
  v44 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v38 - v14;
  if (qword_28143A0E8 != -1)
  {
    swift_once();
  }

  v16 = qword_28143A420;
  v17 = sub_22CA20E10();
  v18 = [v16 objectForKey_];

  if (v18)
  {
    v39 = a1;
    v40 = v1;
    sub_22CA209E0();
    v19 = v45[2];
    v38 = v18;
    v41 = v15;
    v19(v44, &v18[OBJC_IVAR____TtC14MediaSuggester22MSMediaAppIntentsCache_cachedDate], v46);
    sub_22CA20A80();
    sub_22C9D02E4(&qword_27D9E4E70, &qword_22CA243E0);
    v20 = sub_22CA20A90();
    v21 = *(v20 - 8);
    v22 = *(v21 + 72);
    v23 = (*(v21 + 80) + 32) & ~*(v21 + 80);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_22CA22F90;
    (*(v21 + 104))(v24 + v23, *MEMORY[0x277CC99A0], v20);
    sub_22CA02080(v24);
    v25 = v41;
    sub_22CA20A70();

    (*(v3 + 8))(v6, v43);
    v26 = sub_22CA208F0();
    v28 = v27;
    (*(v7 + 8))(v10, v42);
    if ((v28 & 1) != 0 || v26 < 3)
    {
      if (qword_28143A1A8 != -1)
      {
        swift_once();
      }

      v34 = sub_22CA20B10();
      sub_22C9D0494(v34, qword_28143A438);
      v30 = sub_22CA20AF0();
      v35 = sub_22CA21010();
      if (!os_log_type_enabled(v30, v35))
      {
        v33 = 0;
        goto LABEL_17;
      }

      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_22C9CA000, v30, v35, "MSMediaAppIntentsCache appIntentCacheRequiresUpdate: Returning false", v32, 2u);
      v33 = 0;
    }

    else
    {
      if (qword_28143A1A8 != -1)
      {
        swift_once();
      }

      v29 = sub_22CA20B10();
      sub_22C9D0494(v29, qword_28143A438);
      v30 = sub_22CA20AF0();
      v31 = sub_22CA21010();
      if (!os_log_type_enabled(v30, v31))
      {
        v33 = 1;
        a1 = v39;
        v25 = v41;
        goto LABEL_19;
      }

      v32 = swift_slowAlloc();
      *v32 = 134217984;
      *(v32 + 4) = v26;
      _os_log_impl(&dword_22C9CA000, v30, v31, "MSMediaAppIntentsCache appIntentCacheRequiresUpdate: Returning true %ld minutes since last update)", v32, 0xCu);
      v33 = 1;
      v25 = v41;
    }

    MEMORY[0x2318BB680](v32, -1, -1);
LABEL_17:
    a1 = v39;
LABEL_19:

    v36 = v45[1];
    v37 = v46;
    v36(v44, v46);
    v36(v25, v37);
    goto LABEL_20;
  }

  v33 = 1;
LABEL_20:
  *a1 = v33;
}

uint64_t MSMediaAppIntentsCacheManager.saveAppIntentsToCache(_:usecase:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return sub_22C9E6DB4(sub_22C9E55CC);
}

uint64_t sub_22C9E55CC()
{
  v17 = v0;
  if (qword_28143A1A8 != -1)
  {
    sub_22C9E6DD0();
  }

  v1 = v0[4];
  v2 = v0[2];
  v3 = sub_22CA20B10();
  sub_22C9D0494(v3, qword_28143A438);

  v4 = sub_22CA20AF0();
  v5 = sub_22CA21010();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[3];
    v6 = v0[4];
    v8 = v0[2];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136315394;
    *(v9 + 4) = sub_22C9D60B0(v7, v6, &v16);
    *(v9 + 12) = 2048;
    *(v9 + 14) = sub_22C9E3CB8(v8);

    _os_log_impl(&dword_22C9CA000, v4, v5, "MSMediaAppIntentsCache (%s): Saving %ld app intents to cache", v9, 0x16u);
    sub_22C9D04CC(v10);
    sub_22C9D70C0();
    sub_22C9D70C0();
  }

  else
  {
    v11 = v0[2];
  }

  sub_22CA20F50();
  v0[5] = sub_22C9E6E40();
  sub_22C9E6E58();
  sub_22C9E6E34();
  v12 = sub_22C9E6DC0();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_22C9E578C()
{
  sub_22C9D7018();
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);

  sub_22C9E5834(v2);

  return MEMORY[0x2822009F8](sub_22C9E6DAC, 0, 0);
}

void sub_22C9E5834(unint64_t a1)
{
  if (qword_28143A0E8 != -1)
  {
    swift_once();
  }

  v2 = qword_28143A420;
  [qword_28143A420 removeAllObjects];
  v3 = objc_allocWithZone(type metadata accessor for MSMediaAppIntentsCache(0));

  v5 = sub_22C9E3F3C(v4, &OBJC_IVAR____TtC14MediaSuggester22MSMediaAppIntentsCache_appIntents, &OBJC_IVAR____TtC14MediaSuggester22MSMediaAppIntentsCache_cachedDate);
  v6 = sub_22CA20E10();
  [v2 setObject:v5 forKey:v6 cost:sub_22C9E3CB8(a1)];
}

uint64_t sub_22C9E5930(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return sub_22C9E6DB4(sub_22C9E5948);
}

uint64_t sub_22C9E5948()
{
  sub_22C9D6F3C();
  sub_22CA20F50();
  *(v0 + 40) = sub_22C9E6E40();
  sub_22C9E6E58();
  sub_22C9E6E34();
  v1 = sub_22C9E6DC0();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

void sub_22C9E59BC()
{
  sub_22C9D7018();
  v3 = v1[4];
  v2 = v1[5];
  v4 = v1[3];

  v5 = sub_22C9E6EA8();
  sub_22C9E5A58(v5, v6, v7);
  if (v0)
  {
  }

  else
  {
    v8 = v1[2];
    sub_22C9E6EBC();

    v9();
  }
}

void sub_22C9E5A58(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v64 = a2;
  v6 = sub_22CA20AB0();
  v62 = *(v6 - 8);
  v63 = v6;
  v7 = *(v62 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22CA20900();
  v60 = *(v10 - 8);
  v61 = v10;
  v11 = *(v60 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22CA209F0();
  v67 = *(v14 - 8);
  v15 = v67[8];
  v16 = MEMORY[0x28223BE20](v14);
  v65 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v66 = &v54 - v18;
  if (qword_28143A0E0 != -1)
  {
    swift_once();
  }

  v19 = qword_28143A418;
  v20 = sub_22CA20E10();
  v21 = [v19 objectForKey_];

  if (v21)
  {
    v55 = a1;
    v58 = a3;
    v59 = v3;
    sub_22CA209E0();
    v22 = v67[2];
    v56 = v21;
    v57 = v14;
    v22(v65, &v21[OBJC_IVAR____TtC14MediaSuggester20MSMediaBundleIDCache_cachedDate], v14);
    sub_22CA20A80();
    sub_22C9D02E4(&qword_27D9E4E70, &qword_22CA243E0);
    v23 = sub_22CA20A90();
    v24 = *(v23 - 8);
    v25 = *(v24 + 72);
    v26 = (*(v24 + 80) + 32) & ~*(v24 + 80);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_22CA22F90;
    (*(v24 + 104))(v27 + v26, *MEMORY[0x277CC9968], v23);
    sub_22CA02080(v27);
    sub_22CA20A70();

    (*(v62 + 8))(v9, v63);
    v28 = sub_22CA208E0();
    LOBYTE(v27) = v29;
    (*(v60 + 8))(v13, v61);
    if ((v27 & 1) == 0 && v28 >= 1)
    {
      [v19 removeAllObjects];
      v30 = v64;
      if (qword_28143A1A8 != -1)
      {
        swift_once();
      }

      v31 = sub_22CA20B10();
      sub_22C9D0494(v31, qword_28143A438);

      v32 = sub_22CA20AF0();
      v33 = sub_22CA21010();

      v34 = os_log_type_enabled(v32, v33);
      v35 = v57;
      a3 = v58;
      v36 = v56;
      if (!v34)
      {
        goto LABEL_21;
      }

      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v68 = v38;
      *v37 = 136315138;
      *(v37 + 4) = sub_22C9D60B0(v55, v30, &v68);
      v39 = "MSMediaAppIntentsCache (%s): Discarded cache (stale data).";
LABEL_20:
      _os_log_impl(&dword_22C9CA000, v32, v33, v39, v37, 0xCu);
      sub_22C9D04CC(v38);
      MEMORY[0x2318BB680](v38, -1, -1);
      MEMORY[0x2318BB680](v37, -1, -1);
LABEL_21:

      v52 = v67[1];
      v52(v65, v35);
      v52(v66, v35);
      v40 = MEMORY[0x277D84F90];
      goto LABEL_24;
    }

    v41 = OBJC_IVAR____TtC14MediaSuggester20MSMediaBundleIDCache_bundleIDs;
    v36 = v56;
    v42 = v64;
    if (!*(*&v56[OBJC_IVAR____TtC14MediaSuggester20MSMediaBundleIDCache_bundleIDs] + 16))
    {
      v35 = v57;
      if (qword_28143A1A8 != -1)
      {
        swift_once();
      }

      v50 = sub_22CA20B10();
      sub_22C9D0494(v50, qword_28143A438);

      v32 = sub_22CA20AF0();
      v33 = sub_22CA21000();

      v51 = os_log_type_enabled(v32, v33);
      a3 = v58;
      if (!v51)
      {
        goto LABEL_21;
      }

      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v68 = v38;
      *v37 = 136315138;
      *(v37 + 4) = sub_22C9D60B0(v55, v42, &v68);
      v39 = "MSMediaAppIntentsCache (%s): No data found";
      goto LABEL_20;
    }

    v43 = v57;
    if (qword_28143A1A8 != -1)
    {
      swift_once();
    }

    v44 = sub_22CA20B10();
    sub_22C9D0494(v44, qword_28143A438);

    v45 = v36;
    v46 = sub_22CA20AF0();
    v47 = sub_22CA21010();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v68 = v49;
      *v48 = 136315394;
      *(v48 + 4) = sub_22C9D60B0(v55, v42, &v68);
      *(v48 + 12) = 2048;
      *(v48 + 14) = *(*&v36[v41] + 16);

      _os_log_impl(&dword_22C9CA000, v46, v47, "MSMediaAppIntentsCache (%s): Loaded %ld bundleIDs", v48, 0x16u);
      sub_22C9D04CC(v49);
      MEMORY[0x2318BB680](v49, -1, -1);
      MEMORY[0x2318BB680](v48, -1, -1);
    }

    else
    {
    }

    v53 = v67[1];
    v53(v65, v43);
    v53(v66, v43);
    v40 = *&v36[v41];

    a3 = v58;
  }

  else
  {
    v40 = MEMORY[0x277D84F90];
  }

LABEL_24:
  *a3 = v40;
}

uint64_t sub_22C9E6220()
{
  sub_22C9D6F3C();
  sub_22CA20F50();
  *(v0 + 16) = sub_22C9E6E40();
  sub_22C9E6E58();
  sub_22C9E6E34();
  v1 = sub_22C9E6DC0();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_22C9E6294()
{
  sub_22C9D7018();
  v1 = *(v0 + 16);

  sub_22C9E6330((v0 + 24));
  v2 = *(v0 + 24);
  sub_22C9E6EBC();

  return v3();
}

void sub_22C9E6330(char *a1@<X8>)
{
  v48 = a1;
  v2 = sub_22CA20AB0();
  v46 = *(v2 - 8);
  v3 = *(v46 + 64);
  MEMORY[0x28223BE20](v2);
  v44 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22CA20900();
  v47 = *(v5 - 8);
  v6 = *(v47 + 64);
  MEMORY[0x28223BE20](v5);
  v45 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22CA209F0();
  v9 = *(v8 - 8);
  v10 = v9[8];
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v38 - v14;
  if (qword_28143A0E0 != -1)
  {
    swift_once();
  }

  v16 = qword_28143A418;
  v17 = sub_22CA20E10();
  v18 = [v16 objectForKey_];

  if (v18)
  {
    v41 = v15;
    sub_22CA209E0();
    v19 = v9[2];
    v39 = v13;
    v42 = v8;
    v19(v13, &v18[OBJC_IVAR____TtC14MediaSuggester20MSMediaBundleIDCache_cachedDate], v8);
    v20 = v44;
    sub_22CA20A80();
    sub_22C9D02E4(&qword_27D9E4E70, &qword_22CA243E0);
    v21 = sub_22CA20A90();
    v22 = v46;
    v40 = v5;
    v23 = v21;
    v24 = *(v21 - 8);
    v43 = v1;
    v25 = v24;
    v26 = *(v24 + 72);
    v27 = *(v25 + 80);
    v38 = v2;
    v28 = (v27 + 32) & ~v27;
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_22CA22F90;
    (*(v25 + 104))(v29 + v28, *MEMORY[0x277CC9980], v23);
    sub_22CA02080(v29);
    v30 = v45;
    v31 = v39;
    v32 = v41;
    sub_22CA20A70();

    (*(v22 + 8))(v20, v38);
    v33 = sub_22CA208F0();
    LOBYTE(v29) = v34;

    (*(v47 + 8))(v30, v40);
    v35 = v9[1];
    v36 = v42;
    v35(v31, v42);
    v35(v32, v36);
    v37 = (v33 > 6) & ~v29;
  }

  else
  {
    v37 = 1;
  }

  *v48 = v37;
}

uint64_t MSMediaAppIntentsCacheManager.saveBundleIDsToCache(_:usecase:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return sub_22C9E6DB4(sub_22C9E6790);
}

uint64_t sub_22C9E6790()
{
  v17 = v0;
  if (qword_28143A1A8 != -1)
  {
    sub_22C9E6DD0();
  }

  v1 = v0[4];
  v2 = v0[2];
  v3 = sub_22CA20B10();
  sub_22C9D0494(v3, qword_28143A438);

  v4 = sub_22CA20AF0();
  v5 = sub_22CA21010();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[3];
    v6 = v0[4];
    v8 = v0[2];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136315394;
    *(v9 + 4) = sub_22C9D60B0(v7, v6, &v16);
    *(v9 + 12) = 2048;
    *(v9 + 14) = *(v8 + 16);

    _os_log_impl(&dword_22C9CA000, v4, v5, "MSMediaAppIntentsCache (%s): Saving %ld bundleIDs to cache", v9, 0x16u);
    sub_22C9D04CC(v10);
    sub_22C9D70C0();
    sub_22C9D70C0();
  }

  else
  {
    v11 = v0[2];
  }

  sub_22CA20F50();
  v0[5] = sub_22C9E6E40();
  sub_22C9E6E58();
  sub_22C9E6E34();
  v12 = sub_22C9E6DC0();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_22C9E694C()
{
  sub_22C9D7018();
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);

  sub_22C9E6A08(v2);

  return MEMORY[0x2822009F8](sub_22C9E69F4, 0, 0);
}

void sub_22C9E6A08(uint64_t a1)
{
  if (qword_28143A0E0 != -1)
  {
    swift_once();
  }

  v2 = qword_28143A418;
  [qword_28143A418 removeAllObjects];
  v3 = objc_allocWithZone(type metadata accessor for MSMediaBundleIDCache(0));

  v5 = sub_22C9E3F3C(v4, &OBJC_IVAR____TtC14MediaSuggester20MSMediaBundleIDCache_bundleIDs, &OBJC_IVAR____TtC14MediaSuggester20MSMediaBundleIDCache_cachedDate);
  v6 = sub_22CA20E10();
  [v2 setObject:v5 forKey:v6 cost:*(a1 + 16)];
}

id sub_22C9E6AFC()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22C9E6B88(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22C9E6BC0()
{
  result = sub_22CA209F0();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_22C9E6C84(uint64_t a1, unint64_t a2)
{
  v3 = sub_22C9E3CB8(a2);
  MEMORY[0x2318BAFA0](v3);
  v4 = sub_22C9E6DA0(a2);
  if (v4)
  {
    v5 = v4;
    if (v4 < 1)
    {
      __break(1u);
    }

    else
    {
      for (i = 0; i != v5; ++i)
      {
        if ((a2 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x2318BAD10](i, a2);
        }

        else
        {
          v7 = *(a2 + 8 * i + 32);
        }

        v8 = v7;
        sub_22CA210E0();
      }
    }
  }
}

uint64_t sub_22C9E6D28(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x2318BAFA0](v3);
  if (v3)
  {
    v5 = (a2 + 40);
    do
    {
      v6 = *(v5 - 1);
      v7 = *v5;

      sub_22CA20E60();

      v5 += 2;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_22C9E6DD0()
{

  return swift_once();
}

uint64_t sub_22C9E6E40()
{

  return sub_22CA20F40();
}

uint64_t sub_22C9E6E58()
{

  return sub_22CA20F10();
}

uint64_t sub_22C9E6E70()
{

  return swift_dynamicCast();
}

uint64_t sub_22C9E6EC8()
{

  return sub_22C9D032C(v0, v1 - 96);
}

uint64_t sub_22C9E6EE0(uint64_t a1)
{
  result = sub_22C9E969C(a1);
  if (v4)
  {
    goto LABEL_7;
  }

  if (*(a1 + 36) != v3)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  if (result == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return sub_22C9E96DC(result, v3, 0, a1);
  }
}

uint64_t sub_22C9E6F48()
{
  sub_22C9D6F3C();
  v1[50] = v2;
  v1[51] = v0;
  v1[48] = v3;
  v1[49] = v4;
  v5 = *(*(sub_22C9D02E4(&unk_27D9E4F00, &unk_22CA232D0) - 8) + 64) + 15;
  v1[52] = swift_task_alloc();
  v1[53] = swift_task_alloc();
  v6 = sub_22CA209F0();
  v1[54] = v6;
  v7 = *(v6 - 8);
  v1[55] = v7;
  v8 = *(v7 + 64) + 15;
  v1[56] = swift_task_alloc();
  v1[57] = swift_task_alloc();
  v1[58] = swift_task_alloc();
  v9 = sub_22C9E98D4();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22C9E705C()
{
  v28 = v0;
  if (qword_28143A320 != -1)
  {
    swift_once();
  }

  v2 = v0[50];
  v1 = v0[51];
  v3 = v0[49];
  v4 = sub_22CA20B10();
  v0[59] = sub_22C9D0494(v4, &unk_28143A4E0);
  v5 = v3;

  v6 = sub_22CA20AF0();
  sub_22CA21010();

  if (sub_22C9E9990())
  {
    v7 = v0[51];
    v8 = v0[49];
    v9 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v9 = 136315394;
    v10 = v8 + OBJC_IVAR___MSSuggesterRequestOptions_requestID;
    v11 = *(v8 + OBJC_IVAR___MSSuggesterRequestOptions_requestID);
    v12 = *(v10 + 8);

    v13 = sub_22C9D60B0(v11, v12, &v27);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    v0[47] = *(v7 + 16);
    sub_22CA20C20();
    sub_22C9E9848();
    sub_22C9E97D0(v14, 255, v15);
    v16 = sub_22CA21340();
    v18 = sub_22C9D60B0(v16, v17, &v27);

    *(v9 + 14) = v18;
    sub_22C9E988C();
    _os_log_impl(v19, v20, v21, v22, v23, 0x16u);
    sub_22C9E9964();
    swift_arrayDestroy();
    sub_22C9D6FFC();
    sub_22C9D6FC4();
  }

  v0[60] = sub_22CA20F50();
  v0[61] = sub_22CA20F40();
  v25 = sub_22CA20F10();

  return MEMORY[0x2822009F8](sub_22C9E72C4, v25, v24);
}

uint64_t sub_22C9E72C4()
{
  sub_22C9D6F3C();
  v1 = *(v0 + 488);

  if (qword_28143A0D0 != -1)
  {
    swift_once();
  }

  return MEMORY[0x2822009F8](sub_22C9E7358, 0, 0);
}

uint64_t sub_22C9E7358()
{
  sub_22C9D6F3C();
  v1 = *(v0 + 480);
  *(v0 + 496) = sub_22CA20F40();
  v3 = sub_22CA20F10();

  return MEMORY[0x2822009F8](sub_22C9E73E0, v3, v2);
}

uint64_t sub_22C9E73E0()
{
  sub_22C9D6F3C();
  v1 = v0[62];

  v0[63] = qword_28143A0D8;
  v2 = swift_task_alloc();
  v0[64] = v2;
  *v2 = v0;
  v2[1] = sub_22C9E7498;

  return sub_22C9E4610(0x6979616C50776F4ELL, 0xEA0000000000676ELL);
}

uint64_t sub_22C9E7498()
{
  sub_22C9D6F3C();
  v1 = *(*v0 + 512);
  v7 = *v0;
  *(*v0 + 520) = v2;

  v3 = sub_22C9E98D4();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_22C9E758C()
{
  v1 = sub_22C9E6DA0(*(v0 + 520));
  v2 = MEMORY[0x277D84F90];
  if (v1 >= 1)
  {
    v3 = [*(v0 + 392) allowedBundleIdentifiers];
    v4 = sub_22CA20EC0();

    if (*(v4 + 16))
    {
      result = sub_22C9E6DA0(*(v0 + 520));
      if (result)
      {
        v6 = result;
        if (result < 1)
        {
          __break(1u);
          return result;
        }

        v7 = 0;
        v8 = *(v0 + 520);
        v9 = v8 & 0xC000000000000001;
        v37 = v8 + 32;
        v38 = MEMORY[0x277D84F90];
        do
        {
          if (v9)
          {
            v10 = MEMORY[0x2318BAD10](v7, *(v0 + 520));
          }

          else
          {
            v10 = *(v37 + 8 * v7);
          }

          v11 = v10;
          v12 = *&v10[OBJC_IVAR____TtC14MediaSuggester20MSPlayMediaAppIntent_bundleID + 8];
          *(v0 + 312) = *&v10[OBJC_IVAR____TtC14MediaSuggester20MSPlayMediaAppIntent_bundleID];
          *(v0 + 320) = v12;
          v13 = swift_task_alloc();
          *(v13 + 16) = v0 + 312;

          v14 = sub_22C9F9E10(sub_22C9E9828, v13, v4);

          if (v14)
          {
            v15 = v11;
            MEMORY[0x2318BA9F0]();
            if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_22CA20EE0();
            }

            sub_22CA20F00();

            v38 = v2;
          }

          else
          {
          }

          ++v7;
        }

        while (v6 != v7);

        v2 = MEMORY[0x277D84F90];
        v33 = v38;
      }

      else
      {

        v33 = MEMORY[0x277D84F90];
      }
    }

    else
    {

      v33 = *(v0 + 520);
    }

    goto LABEL_23;
  }

  v16 = *(v0 + 456);
  v17 = *(v0 + 464);
  v19 = *(v0 + 440);
  v18 = *(v0 + 448);
  v20 = *(v0 + 424);
  v21 = *(v0 + 432);
  v22 = *(v0 + 416);
  v23 = *(v0 + 392);
  sub_22CA209E0();
  sub_22CA209B0();
  v24 = *(v19 + 8);
  *(v0 + 528) = v24;
  *(v0 + 536) = (v19 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v24(v16, v21);
  sub_22CA209E0();
  type metadata accessor for MSBiomeMediaReader();
  inited = swift_initStackObject();
  v26 = *(v19 + 16);
  v26(v20, v17, v21);
  sub_22C9D0B98(v20, 0, 1, v21);
  v26(v22, v18, v21);
  sub_22C9D0B98(v22, 0, 1, v21);
  v27 = [v23 allowedBundleIdentifiers];
  v28 = sub_22CA20EC0();

  sub_22C9F4E64();
  v30 = v29;
  *(v0 + 544) = v29;

  sub_22C9E9758(v22);
  sub_22C9E9758(v20);
  if (sub_22C9E6DA0(v30) < 1)
  {
    v34 = sub_22C9E98B8();
    v28(v34);
    (v28)(inited, v20);
    v33 = *(v0 + 544);
    v2 = MEMORY[0x277D84F90];
LABEL_23:
    *(v0 + 560) = v33;
    *(v0 + 328) = MEMORY[0x277D84FA0];
    *(v0 + 336) = v2;
    *(v0 + 344) = v2;
    type metadata accessor for MSSuggestionContextFeatureProvider();
    swift_allocObject();
    *(v0 + 568) = sub_22C9EE934();
    v35 = swift_task_alloc();
    *(v0 + 576) = v35;
    *v35 = v0;
    v36 = sub_22C9E9860(v35);

    return sub_22C9EE9E0(v36);
  }

  v31 = swift_task_alloc();
  *(v0 + 552) = v31;
  *v31 = v0;
  v31[1] = sub_22C9E7A40;
  v32 = *(v0 + 504);

  return MSMediaAppIntentsCacheManager.saveAppIntentsToCache(_:usecase:)(v30, 0x6979616C50776F4ELL, 0xEA0000000000676ELL);
}

uint64_t sub_22C9E7A40()
{
  sub_22C9D6F3C();
  v1 = *(*v0 + 552);
  v2 = *v0;
  sub_22C9D6EA4();
  *v3 = v2;

  v4 = sub_22C9E98D4();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_22C9E7B28()
{
  v4 = sub_22C9E98B8();
  v3(v4);
  (v3)(v1, v0);
  v5 = MEMORY[0x277D84FA0];
  v2[70] = v2[68];
  v6 = MEMORY[0x277D84F90];
  v2[41] = v5;
  v2[42] = v6;
  v2[43] = v6;
  type metadata accessor for MSSuggestionContextFeatureProvider();
  swift_allocObject();
  v2[71] = sub_22C9EE934();
  v7 = swift_task_alloc();
  v2[72] = v7;
  *v7 = v2;
  v8 = sub_22C9E9860(v7);

  return sub_22C9EE9E0(v8);
}

uint64_t sub_22C9E7BF8()
{
  v2 = *v1;
  v3 = *v1;
  sub_22C9D6EA4();
  *v4 = v3;
  v5 = v2[72];
  v6 = *v1;
  v3[73] = v7;
  v3[74] = v0;

  v8 = v2[71];
  if (v0)
  {
    v9 = v3[70];
    v10 = v3[65];

    v11 = sub_22C9E8D9C;
  }

  else
  {

    v11 = sub_22C9E7D4C;
  }

  return MEMORY[0x2822009F8](v11, 0, 0);
}

void sub_22C9E7D4C()
{
  v263 = v0;
  v1 = v0;
  v2 = *(v0 + 560);
  v3 = *(v0 + 472);

  v4 = sub_22CA20AF0();
  v5 = sub_22CA21010();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 560);
  if (v6)
  {
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    *(v8 + 4) = sub_22C9E6DA0(v7);

    _os_log_impl(&dword_22C9CA000, v4, v5, "PlayMediaAppIntent: Using %ld app intents for ranking", v8, 0xCu);
    MEMORY[0x2318BB680](v8, -1, -1);
  }

  else
  {
    v9 = *(v0 + 560);
  }

  v10 = *(v1 + 560);
  v11 = MEMORY[0x277D84F90];
  v224 = sub_22C9E9970();
  v253 = sub_22C9E9970();
  v259 = sub_22C9E6DA0(v10);
  if (!v259)
  {
    v250 = 0;
    v243 = v11;
    v14 = v11;
LABEL_67:
    v96 = *(v1 + 560);
    v97 = *(v1 + 520);
    v98 = *(v1 + 472);
    v100 = *(v1 + 400);
    v99 = *(v1 + 408);
    v101 = *(v1 + 392);

    v102 = *(v1 + 328);

    v103 = v101;

    v104 = sub_22CA20AF0();
    sub_22CA21010();

    v105 = v14;
    if (sub_22C9E9990())
    {
      v106 = *(v1 + 408);
      v107 = sub_22C9E9914();
      v262 = swift_slowAlloc();
      *v107 = 136315650;
      v108 = sub_22C9E9930(OBJC_IVAR___MSSuggesterRequestOptions_requestID);
      sub_22C9E989C(v108, v109, v110, v111, v112, v113, v114, v115, v209, v212, v215, v218, v221, v224, v227, v230, v233, v236, v239, v243, v247, v250, v253, v256, v259, v262);
      sub_22C9E994C();
      *(v107 + 4) = v98;
      *(v107 + 12) = 2080;
      *(v1 + 368) = *(v106 + 16);
      v116 = sub_22CA20C20();
      sub_22C9E9848();
      sub_22C9E97D0(v117, 255, v118);
      v119 = sub_22CA21340();
      sub_22C9D60B0(v119, v120, &v262);
      sub_22C9D7248();

      *(v107 + 14) = v116;
      *(v107 + 22) = 2080;

      v121 = sub_22CA20DC0();

      sub_22C9E989C(v122, v123, v124, v125, v126, v127, v128, v129, v210, v213, v216, v219, v222, v225, v228, v231, v234, v237, v241, v245, v248, v251, v254, v257, v260, v262);
      sub_22C9E994C();
      *(v107 + 24) = v121;
      sub_22C9E988C();
      _os_log_impl(v130, v131, v132, v133, v134, 0x20u);
      sub_22C9E9964();
      swift_arrayDestroy();
      sub_22C9D6FFC();
      sub_22C9D6FC4();
    }

    v135 = *(v1 + 472);
    v137 = *(v1 + 400);
    v136 = *(v1 + 408);
    v138 = *(v1 + 392);

    v139 = sub_22CA20AF0();
    sub_22CA21010();

    if (sub_22C9E9990())
    {
      v140 = *(v1 + 408);
      v141 = sub_22C9E9914();
      v262 = swift_slowAlloc();
      *v141 = 136315650;
      v142 = sub_22C9E9930(OBJC_IVAR___MSSuggesterRequestOptions_requestID);
      sub_22C9E989C(v142, v143, v144, v145, v146, v147, v148, v149, v209, v212, v215, v218, v221, v224, v227, v230, v233, v236, v239, v243, v247, v250, v253, v256, v259, v262);
      sub_22C9E994C();
      *(v141 + 4) = v135;
      *(v141 + 12) = 2080;
      *(v1 + 360) = *(v140 + 16);
      v150 = sub_22CA20C20();
      sub_22C9E9848();
      sub_22C9E97D0(v151, 255, v152);
      v153 = sub_22CA21340();
      sub_22C9D60B0(v153, v154, &v262);
      sub_22C9D7248();

      *(v141 + 14) = v150;
      *(v141 + 22) = 2080;

      v155 = sub_22CA20DC0();

      sub_22C9E989C(v156, v157, v158, v159, v160, v161, v162, v163, v211, v214, v217, v220, v223, v226, v229, v232, v235, v238, v242, v246, v249, v252, v255, v258, v261, v262);
      sub_22C9E994C();
      *(v141 + 24) = v155;
      sub_22C9E988C();
      _os_log_impl(v164, v165, v166, v167, v168, 0x20u);
      sub_22C9E9964();
      swift_arrayDestroy();
      sub_22C9D6FFC();
      sub_22C9D6FC4();
    }

    v169 = *(v1 + 472);
    v171 = *(v1 + 400);
    v170 = *(v1 + 408);
    v172 = *(v1 + 392);
    swift_bridgeObjectRetain_n();
    v173 = v172;

    v174 = sub_22CA20AF0();
    sub_22CA21010();

    if (sub_22C9E9990())
    {
      v175 = *(v1 + 408);
      v176 = sub_22C9E9914();
      v262 = swift_slowAlloc();
      *v176 = 136315650;
      v177 = sub_22C9E9930(OBJC_IVAR___MSSuggesterRequestOptions_requestID);
      sub_22C9E989C(v177, v178, v179, v180, v181, v182, v183, v184, v209, v212, v215, v218, v221, v224, v227, v230, v233, v236, v239, v243, v247, v250, v253, v256, v259, v262);
      sub_22C9E994C();
      *(v176 + 4) = v169;
      *(v176 + 12) = 2080;
      *(v1 + 352) = *(v175 + 16);
      v185 = sub_22CA20C20();
      sub_22C9E9848();
      sub_22C9E97D0(v186, 255, v187);
      v188 = sub_22CA21340();
      sub_22C9D60B0(v188, v189, &v262);
      sub_22C9D7248();

      *(v176 + 14) = v185;
      *(v176 + 22) = 2048;
      v190 = sub_22C9E6DA0(v105);

      *(v176 + 24) = v190;

      sub_22C9E988C();
      _os_log_impl(v191, v192, v193, v194, v195, 0x20u);
      sub_22C9E9964();
      swift_arrayDestroy();
      sub_22C9D6FFC();
      sub_22C9D6FC4();
    }

    else
    {
      swift_bridgeObjectRelease_n();
    }

    v196 = *(v1 + 584);
    v198 = *(v1 + 456);
    v197 = *(v1 + 464);
    v199 = *(v1 + 448);
    v200 = *(v1 + 416);
    v201 = *(v1 + 424);
    v202 = v1;
    v203 = *(v1 + 384);
    sub_22C9D0434(0, &qword_27D9E4E38, 0x277CBFEB0);
    sub_22CA169F0();
    type metadata accessor for MSSuggestion(0);
    sub_22CA20CB0();

    swift_unknownObjectRelease();
    sub_22C9E97C0(v250);

    v204 = *(v202 + 8);
    sub_22C9E98F4();

    __asm { BRAA            X1, X16 }
  }

  v250 = 0;
  v12 = 0;
  v13 = *(v1 + 560);
  v256 = v13 & 0xC000000000000001;
  v218 = v13 + 32;
  v221 = v13 & 0xFFFFFFFFFFFFFF8;
  v209 = "contextTimeOfDay";
  v212 = "candidateSourceType";
  v215 = "mostRecentPlayback";
  v14 = MEMORY[0x277D84F90];
  v243 = MEMORY[0x277D84F90];
  v247 = *(v1 + 592);
  while (1)
  {
    if (v256)
    {
      v15 = MEMORY[0x2318BAD10](v12, *(v1 + 560));
    }

    else
    {
      if (v12 >= *(v221 + 16))
      {
        goto LABEL_84;
      }

      v15 = *(v218 + 8 * v12);
    }

    v16 = v15;
    v17 = __OFADD__(v12++, 1);
    if (v17)
    {
      break;
    }

    v18 = *&v15[OBJC_IVAR____TtC14MediaSuggester20MSPlayMediaAppIntent_identifier + 8];
    if (!v18)
    {
      goto LABEL_53;
    }

    v19 = *&v15[OBJC_IVAR____TtC14MediaSuggester20MSPlayMediaAppIntent_identifier];
    v20 = *(v1 + 328);
    if (*(v20 + 16))
    {
      v21 = v14;
      v22 = *(v20 + 40);
      sub_22CA21440();

      sub_22CA20E60();
      v23 = sub_22CA21490();
      v24 = ~(-1 << *(v20 + 32));
      while (1)
      {
        v25 = v23 & v24;
        if (((*(v20 + 56 + (((v23 & v24) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v23 & v24)) & 1) == 0)
        {
          break;
        }

        v26 = (*(v20 + 48) + 16 * v25);
        if (*v26 != v19 || v18 != v26[1])
        {
          v28 = sub_22CA21360();
          v23 = v25 + 1;
          if ((v28 & 1) == 0)
          {
            continue;
          }
        }

        v14 = v21;
        goto LABEL_53;
      }

      v14 = v21;
    }

    else
    {
      v29 = *&v15[OBJC_IVAR____TtC14MediaSuggester20MSPlayMediaAppIntent_identifier + 8];
    }

    v30 = OBJC_IVAR____TtC14MediaSuggester20MSPlayMediaAppIntent_editorialTags;
    v31 = *&v16[OBJC_IVAR____TtC14MediaSuggester20MSPlayMediaAppIntent_editorialTags];
    if (v31)
    {
      v32 = 0;
      v33 = (v31 + 56);
      v34 = 1 << *(v31 + 32);
      v35 = (v34 + 63) >> 6;
      if (v35)
      {
        while (!*v33)
        {
          ++v33;
          v32 -= 64;
          if (!--v35)
          {
            goto LABEL_29;
          }
        }

        v36 = __clz(__rbit64(*v33));
        if (v36 - v34 != v32)
        {
          if (-v32 < 0)
          {
            goto LABEL_88;
          }

          v89 = v36 - v32;
          if (v89 >= v34)
          {
            goto LABEL_88;
          }

          if (((*v33 >> v36) & 1) == 0)
          {
            goto LABEL_89;
          }

          v90 = *(v1 + 392);
          v91 = (*(v31 + 48) + 16 * v89);
          v92 = *v91;
          v93 = v91[1];

          if ([v90 suggestionType] == 1)
          {

LABEL_60:

            goto LABEL_53;
          }

          type metadata accessor for MSSuggesterUtils();
          v94 = sub_22CA1638C();

          if (__OFSUB__(3000, v94))
          {
            goto LABEL_90;
          }

          if (v94 != 3000)
          {
            v95 = [*(v1 + 392) workoutType];
            if (__OFSUB__(v94, v95))
            {
              goto LABEL_91;
            }

            if (v94 != v95)
            {
              goto LABEL_60;
            }
          }
        }
      }
    }

LABEL_29:
    v240 = v12;
    v244 = v30;

    sub_22CA15904(&v262, v19, v18);

    v38 = *&v16[OBJC_IVAR____TtC14MediaSuggester20MSPlayMediaAppIntent_bundleID];
    v37 = *&v16[OBJC_IVAR____TtC14MediaSuggester20MSPlayMediaAppIntent_bundleID + 8];
    v39 = objc_allocWithZone(MEMORY[0x277CD3EC0]);

    v40 = [v39 init];
    v41 = objc_allocWithZone(MSUnifiedMediaIntent);

    v42 = sub_22CA20E10();

    v43 = [v41 initWithIntent:v40 bundleID:v42];

    v44 = *&v16[OBJC_IVAR____TtC14MediaSuggester20MSPlayMediaAppIntent_suggestionSource];
    v45 = objc_allocWithZone(MSSuggestion);

    v233 = v43;
    v46 = sub_22C9DDDC8(v233, v38, v37, v44);
    v47 = OBJC_IVAR___MSSuggestion_mediaAppIntent;
    swift_beginAccess();
    v48 = *&v46[v47];
    *&v46[v47] = v16;
    v49 = v16;

    v230 = v49;
    [v46 setIntentDate_];
    v50 = v46;
    MEMORY[0x2318BA9F0]();
    if (*((*(v1 + 336) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 336) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_22CA20EE0();
    }

    v227 = v50;
    sub_22CA20F00();
    v51 = v1;
    v236 = *(v1 + 336);
    sub_22C9E97C0(v250);
    swift_isUniquelyReferenced_nonNull_native();
    v262 = v253;
    v52 = v38;
    v53 = sub_22C9FBFA8(v38, v37);
    if (__OFADD__(*(v253 + 16), (v54 & 1) == 0))
    {
      goto LABEL_85;
    }

    v55 = v53;
    v56 = v54;
    sub_22C9D02E4(&qword_27D9E4F20, &qword_22CA23AF0);
    v57 = sub_22CA21250();
    v58 = v262;
    if (v57)
    {
      v59 = sub_22C9FBFA8(v52, v37);
      if ((v56 & 1) != (v60 & 1))
      {
        sub_22C9E98F4();

        sub_22CA213C0();
        return;
      }

      v55 = v59;
      if (v56)
      {
        goto LABEL_38;
      }

LABEL_37:
      sub_22CA028F4(v55, v52, v37, 0, v58);

      goto LABEL_38;
    }

    if ((v56 & 1) == 0)
    {
      goto LABEL_37;
    }

LABEL_38:
    v61 = *(v58 + 56);
    v62 = *(v61 + 8 * v55);
    v17 = __OFADD__(v62, 1);
    v63 = v62 + 1;
    if (v17)
    {
      goto LABEL_86;
    }

    v253 = v58;
    *(v61 + 8 * v55) = v63;
    v64 = sub_22C9D0434(0, &qword_27D9E4E90, 0x277CBFEF8);
    v65 = sub_22C9E8E38();
    *(v1 + 40) = v64;
    *(v1 + 16) = v65;
    sub_22C9E9818((v1 + 16), (v1 + 48));
    v66 = MEMORY[0x277D84F98];
    swift_isUniquelyReferenced_nonNull_native();
    v262 = v66;
    sub_22C9EE518(v1 + 48, 0xD000000000000013, 0x800000022CA25DF0);
    v67 = v262;
    v68 = *&v16[v244];
    if (v68)
    {
      v12 = v240;
      if (*(v68 + 16))
      {
        v69 = *&v16[v244];

        v71 = sub_22C9E6EE0(v70);
        if (!v72)
        {
          goto LABEL_92;
        }

        v73 = v71;
        v74 = v72;

        type metadata accessor for MSSuggesterUtils();
        v75 = sub_22CA1638C();
        v76 = [objc_opt_self() featureValueWithInt64_];
        *(v1 + 168) = v64;
        *(v1 + 144) = v76;
        sub_22C9E9818((v1 + 144), (v1 + 176));
        swift_isUniquelyReferenced_nonNull_native();
        v262 = v67;
        sub_22C9EE518(v1 + 176, 0x7974697669746361, 0xEC00000065707954);
        v77 = v262;
        v78 = sub_22CA163EC();
        *(v1 + 232) = v64;
        *(v1 + 208) = v78;
        sub_22C9E9818((v1 + 208), (v1 + 240));
        swift_isUniquelyReferenced_nonNull_native();
        v262 = v77;
        sub_22C9EE518(v1 + 240, 0xD000000000000011, 0x800000022CA25C10);
        v67 = v262;
        v79 = sub_22C9EEEB8(v73, v74, v224);
        if (v80)
        {
          v81 = 0;
        }

        else
        {
          v81 = v79;
        }

        v51 = (v81 + 1);
        if (__OFADD__(v81, 1))
        {
          goto LABEL_87;
        }

        swift_isUniquelyReferenced_nonNull_native();
        v262 = v224;
        sub_22C9EE43C(v51, v73, v74);

        v224 = v262;
      }

      else
      {
      }
    }

    else
    {

      v12 = v240;
    }

    objc_allocWithZone(MEMORY[0x277CBFED0]);

    v82 = sub_22CA17474();
    v14 = v236;
    if (v247)
    {
      sub_22C9E98E4();
      sub_22C9E98F4();

      swift_unexpectedError();
      return;
    }

    v83 = *(v1 + 584);
    v84 = v82;
    v85 = sub_22C9D7248();
    sub_22C9E91D8(v85, v51);
    v87 = v86;

    *(v1 + 104) = MEMORY[0x277D839F8];
    *(v1 + 80) = v87;
    sub_22C9E9818((v1 + 80), (v1 + 112));
    swift_isUniquelyReferenced_nonNull_native();
    v262 = v67;
    sub_22C9EE518(v1 + 112, 0xD000000000000016, 0x800000022CA25E10);
    objc_allocWithZone(MEMORY[0x277CBFED0]);

    sub_22CA17474();
    v239 = 0;

    MEMORY[0x2318BA9F0](v88);
    if (*((*(v1 + 344) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 344) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_22CA20EE0();
    }

    sub_22CA20F00();
    v243 = *(v1 + 344);

    v247 = 0;
    v250 = sub_22C9E8E30;
    v16 = v230;
LABEL_53:

    if (v12 == v259)
    {
      goto LABEL_67;
    }
  }

  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
}

uint64_t sub_22C9E8D9C()
{
  v2 = v0[57];
  v1 = v0[58];
  v3 = v0[56];
  v5 = v0[52];
  v4 = v0[53];

  v6 = v0[1];
  v7 = v0[74];

  return v6();
}

id sub_22C9E8E38()
{
  v0 = sub_22CA20E10();

  v1 = [swift_getObjCClassFromMetadata() featureValueWithString_];

  return v1;
}

uint64_t sub_22C9E8E9C(uint64_t a1)
{
  v3 = sub_22CA20C20();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  *(v1 + 16) = sub_22CA20C10();
  *(v1 + 24) = a1;
  return v1;
}

uint64_t sub_22C9E8F68(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22C9E9018;

  return sub_22C9E6F48();
}

uint64_t sub_22C9E9018()
{
  sub_22C9D6F3C();
  v1 = *(*v0 + 16);
  v2 = *v0;
  sub_22C9D6EA4();
  *v3 = v2;

  v4 = *(v2 + 8);

  return v4();
}

void sub_22C9E91D8(void *a1, void *a2)
{
  v4 = sub_22CA20E10();
  v5 = [a1 featureValueForName_];

  if (!v5)
  {
    v5 = [objc_opt_self() featureValueWithDouble_];
  }

  swift_getObjectType();
  v6 = sub_22CA20E10();
  v7 = [a2 featureValueForName_];

  if (!v7)
  {
    v7 = [objc_opt_self() featureValueWithDouble_];
  }

  [v5 doubleValue];
  [v7 doubleValue];
  v8 = sub_22CA20E10();
  v24 = a1;
  v9 = [a1 featureValueForName_];

  if (!v9)
  {
    v9 = [objc_opt_self() featureValueWithInt64_];
  }

  v10 = sub_22CA20E10();
  v11 = [a2 0x27872B578];

  if (!v11)
  {
    v11 = [objc_opt_self() featureValueWithInt64_];
  }

  v12 = [v9 int64Value];
  v13 = [v11 int64Value];
  v14 = v12 - v13;
  if (__OFSUB__(v12, v13))
  {
    __break(1u);
LABEL_26:
    __break(1u);
    return;
  }

  if (v14 < 0 && __OFSUB__(0, v14))
  {
    goto LABEL_26;
  }

  sub_22CA0DD90();
  sub_22C9D0434(0, &qword_27D9E4E98, 0x277CBFED0);
  v15 = sub_22CA21040();
  v17 = v16;

  if (v15 == 0x6574736567677573 && v17 == 0xEE00616964654D64)
  {

    goto LABEL_19;
  }

  v19 = sub_22CA21360();

  if (v19)
  {

LABEL_19:
    return;
  }

  v20 = sub_22CA20E10();
  v21 = [v24 featureValueForName_];

  if (!v21)
  {
    v21 = [objc_opt_self() 0x27872B9ACLL];
  }

  [v21 doubleValue];

  v22 = sub_22CA20E10();
  v23 = [a2 featureValueForName_];

  if (!v23)
  {
    v23 = [objc_opt_self() 0x27872B9ACLL];
  }

  [v23 doubleValue];
}

uint64_t sub_22C9E969C(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  result = sub_22CA21140();
  v4 = *(a1 + 36);
  return result;
}

uint64_t sub_22C9E96DC(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    v4 = (*(a4 + 48) + 16 * result);
    v5 = *v4;
    v6 = v4[1];

    return v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_22C9E9758(uint64_t a1)
{
  v2 = sub_22C9D02E4(&unk_27D9E4F00, &unk_22CA232D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22C9E97C0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_22C9E97D0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

_OWORD *sub_22C9E9818(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_22C9E989C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{

  return sub_22C9D60B0(v26, v27, &a26);
}

uint64_t sub_22C9E98B8()
{
  v1 = v0[67];
  v2 = v0[66];
  v3 = v0[58];
  result = v0[56];
  v5 = v0[54];
  return result;
}

uint64_t sub_22C9E9914()
{
  v2 = *(v0 + 392);

  return swift_slowAlloc();
}

uint64_t sub_22C9E9930@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + a1);
  v4 = *v3;
  v5 = v3[1];
}

uint64_t sub_22C9E994C()
{
}

uint64_t sub_22C9E9970()
{

  return sub_22CA20DD0();
}

BOOL sub_22C9E9990()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_22C9E99D0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = sub_22CA209F0();
  v6 = sub_22C9E054C(v5);
  v8 = *(v7 + 16);

  return v8(a2, v2 + v4, v6);
}

id MSWorkoutItem.init(workout:startDate:endDate:latitude:longitude:)(int a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  *&v5[OBJC_IVAR____TtC14MediaSuggester13MSWorkoutItem_workoutType] = a1;
  v10 = OBJC_IVAR____TtC14MediaSuggester13MSWorkoutItem_startDate;
  v11 = sub_22CA209F0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 16);
  v13(&v5[v10], a2, v11);
  v13(&v5[OBJC_IVAR____TtC14MediaSuggester13MSWorkoutItem_endDate], a3, v11);
  *&v5[OBJC_IVAR____TtC14MediaSuggester13MSWorkoutItem_latitude] = a4;
  *&v5[OBJC_IVAR____TtC14MediaSuggester13MSWorkoutItem_longitude] = a5;
  v17.receiver = v5;
  v17.super_class = type metadata accessor for MSWorkoutItem();
  v14 = objc_msgSendSuper2(&v17, sel_init);
  v15 = *(v12 + 8);
  v15(a3, v11);
  v15(a2, v11);
  return v14;
}

uint64_t type metadata accessor for MSWorkoutItem()
{
  result = qword_27D9E4EC0;
  if (!qword_27D9E4EC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_22C9E9C50@<X0>(void *a1@<X8>)
{
  v3 = sub_22CA209F0();
  v4 = sub_22C9DAE90(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22C9E05C0();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v22 - v13;
  v15 = *(v1 + OBJC_IVAR____TtC14MediaSuggester13MSWorkoutItem_workoutType);
  v16 = *(v6 + 16);
  v16(&v22 - v13, v1 + OBJC_IVAR____TtC14MediaSuggester13MSWorkoutItem_startDate, v3);
  v16(v11, v1 + OBJC_IVAR____TtC14MediaSuggester13MSWorkoutItem_endDate, v3);
  v17 = *(v1 + OBJC_IVAR____TtC14MediaSuggester13MSWorkoutItem_latitude);
  v18 = *(v1 + OBJC_IVAR____TtC14MediaSuggester13MSWorkoutItem_longitude);
  v19 = type metadata accessor for MSWorkoutItem();
  v20 = objc_allocWithZone(v19);
  result = MSWorkoutItem.init(workout:startDate:endDate:latitude:longitude:)(v15, v14, v11, v17, v18);
  a1[3] = v19;
  *a1 = result;
  return result;
}

void sub_22C9E9E1C()
{
  v1 = v0;
  v11 = *(v0 + OBJC_IVAR____TtC14MediaSuggester13MSWorkoutItem_workoutType);
  type metadata accessor for MSWorkoutActivityType(0);
  sub_22CA213A0();
  v2 = sub_22C9ECB30();
  sub_22C9ECAB4();
  swift_unknownObjectRelease();

  v3 = sub_22CA209A0();
  v4 = sub_22C9E05E0();
  sub_22C9ECAB4();

  v5 = sub_22CA209A0();
  v6 = sub_22C9E062C();
  sub_22C9ECAB4();

  v7 = *(v1 + OBJC_IVAR____TtC14MediaSuggester13MSWorkoutItem_latitude);
  v8 = sub_22C9ECB0C();
  sub_22C9ECB60();

  v9 = *(v1 + OBJC_IVAR____TtC14MediaSuggester13MSWorkoutItem_longitude);
  v10 = sub_22C9ECAE4();
  sub_22C9ECB60();
}

id MSWorkoutItem.init(coder:)(void *a1)
{
  v3 = sub_22C9D02E4(&unk_27D9E4F00, &unk_22CA232D0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  sub_22C9E05C0();
  v7 = v5 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v61 - v9;
  v11 = sub_22CA209F0();
  v12 = sub_22C9DAE90(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  sub_22C9E05C0();
  v19 = (v17 - v18);
  MEMORY[0x28223BE20](v20);
  v22 = &v61 - v21;
  v23 = sub_22C9E05E0();
  v24 = [a1 decodeObjectForKey_];

  if (v24)
  {
    sub_22CA21130();
    swift_unknownObjectRelease();
  }

  else
  {
    sub_22C9E0608();
  }

  sub_22C9E04DC();
  if (!v25)
  {

    sub_22C9DF60C(v64, &unk_27D9E4D60, &unk_22CA22BE0);
    sub_22C9ECBA0(v10, 1);
    goto LABEL_8;
  }

  v26 = swift_dynamicCast();
  sub_22C9ECBA0(v10, v26 ^ 1u);
  if (sub_22C9D68B0(v10, 1, v11) != 1)
  {
    v61 = *(v14 + 32);
    v61(v22, v10, v11);
    v30 = sub_22C9E062C();
    v31 = [a1 decodeObjectForKey_];

    if (v31)
    {
      sub_22CA21130();
      swift_unknownObjectRelease();
    }

    else
    {
      sub_22C9E0608();
    }

    sub_22C9E04DC();
    if (!v32)
    {
      v37 = *(v14 + 8);
      v38 = sub_22C9ECB54();
      v39(v38);

      sub_22C9DF60C(v64, &unk_27D9E4D60, &unk_22CA22BE0);
      sub_22C9ECBA0(v7, 1);
      goto LABEL_16;
    }

    v33 = swift_dynamicCast();
    sub_22C9ECBA0(v7, v33 ^ 1u);
    if (sub_22C9D68B0(v7, 1, v11) == 1)
    {
      v34 = *(v14 + 8);
      v35 = sub_22C9ECB54();
      v36(v35);

LABEL_16:
      v27 = &unk_27D9E4F00;
      v28 = &unk_22CA232D0;
      v29 = v7;
      goto LABEL_17;
    }

    v61(v19, v7, v11);
    v44 = sub_22C9ECB0C();
    v45 = [a1 decodeObjectForKey_];

    if (v45)
    {
      sub_22CA21130();
      swift_unknownObjectRelease();
    }

    else
    {
      sub_22C9E0608();
    }

    sub_22C9E04DC();
    if (v46)
    {
      if ((sub_22C9ECB80() & 1) == 0)
      {
LABEL_32:

        v59 = *(v14 + 8);
        v59(v19, v11);
        v60 = sub_22C9ECB54();
        (v59)(v60);
        goto LABEL_18;
      }

      v47 = v63;
      v48 = sub_22C9ECAE4();
      v49 = [a1 decodeObjectForKey_];

      if (v49)
      {
        sub_22CA21130();
        swift_unknownObjectRelease();
      }

      else
      {
        sub_22C9E0608();
      }

      sub_22C9E04DC();
      if (v50)
      {
        if (sub_22C9ECB80())
        {
          v51 = v63;
          v52 = sub_22C9ECB30();
          v53 = [a1 decodeInt32ForKey_];

          *&v1[OBJC_IVAR____TtC14MediaSuggester13MSWorkoutItem_workoutType] = v53;
          v54 = v22;
          v55 = v61;
          v61(&v1[OBJC_IVAR____TtC14MediaSuggester13MSWorkoutItem_startDate], v54, v11);
          v55(&v1[OBJC_IVAR____TtC14MediaSuggester13MSWorkoutItem_endDate], v19, v11);
          *&v1[OBJC_IVAR____TtC14MediaSuggester13MSWorkoutItem_latitude] = v47;
          *&v1[OBJC_IVAR____TtC14MediaSuggester13MSWorkoutItem_longitude] = v51;
          v56 = type metadata accessor for MSWorkoutItem();
          v62.receiver = v1;
          v62.super_class = v56;
          v42 = objc_msgSendSuper2(&v62, sel_init);

          return v42;
        }

        goto LABEL_32;
      }
    }

    v57 = *(v14 + 8);
    v57(v19, v11);
    v58 = sub_22C9ECB54();
    (v57)(v58);
    v27 = &unk_27D9E4D60;
    v28 = &unk_22CA22BE0;
    v29 = v64;
    goto LABEL_17;
  }

LABEL_8:
  v27 = &unk_27D9E4F00;
  v28 = &unk_22CA232D0;
  v29 = v10;
LABEL_17:
  sub_22C9DF60C(v29, v27, v28);
LABEL_18:
  type metadata accessor for MSWorkoutItem();
  v40 = *((*MEMORY[0x277D85000] & *v1) + 0x30);
  v41 = *((*MEMORY[0x277D85000] & *v1) + 0x34);
  swift_deallocPartialClassInstance();
  return 0;
}

void sub_22C9EA5A8(int a1)
{
  switch(a1)
  {
    case 1:
    case 3:
    case 15:
    case 17:
    case 20:
    case 30:
    case 33:
    case 50:
    case 60:
    case 63:
    case 70:
    case 71:
    case 83:
      sub_22C9DE260();
      break;
    default:
      return;
  }
}

uint64_t sub_22C9EAE40()
{
  sub_22CA20E40();
  v1 = v0;
  sub_22C9DE260();
  v4 = v2 == 0xD000000000000010 && v3 == v1;
  if (v4 || (v5 = v2, (sub_22C9ECA98() & 1) != 0))
  {

    return 1;
  }

  else
  {
    v7 = v5 == 0x79726568637261 && v1 == 0xE700000000000000;
    if (v7 || (sub_22C9ECA58() & 1) != 0)
    {

      return 2;
    }

    else
    {
      sub_22C9DE260();
      v9 = v5 == 0xD000000000000012 && v8 == v1;
      if (v9 || (sub_22C9ECA98() & 1) != 0)
      {

        return 3;
      }

      else
      {
        v10 = v5 == 0x6F746E696D646162 && v1 == 0xE90000000000006ELL;
        if (v10 || (sub_22C9ECA98() & 1) != 0)
        {

          return 4;
        }

        else
        {
          sub_22C9ECAD4(0x65736162u);
          v11 = v4 && v1 == 0xE800000000000000;
          if (v11 || (sub_22C9ECA98() & 1) != 0)
          {

            return 5;
          }

          else
          {
            v12 = v5 == 0x616274656B736162 && v1 == 0xEA00000000006C6CLL;
            if (v12 || (sub_22C9ECA98() & 1) != 0)
            {

              return 6;
            }

            else
            {
              sub_22C9ECA48(0x6C776F62u);
              v13 = v4 && v1 == 0xE700000000000000;
              if (v13 || (sub_22C9ECA58() & 1) != 0)
              {

                return 7;
              }

              else
              {
                v14 = v5 == 0x676E69786F62 && v1 == 0xE600000000000000;
                if (v14 || (sub_22C9ECA78() & 1) != 0)
                {

                  return 8;
                }

                else
                {
                  v15 = v5 == 0x676E69626D696C63 && v1 == 0xE800000000000000;
                  if (v15 || (sub_22C9ECA98() & 1) != 0)
                  {

                    return 9;
                  }

                  else
                  {
                    v16 = v5 == 0x74656B63697263 && v1 == 0xE700000000000000;
                    if (v16 || (sub_22C9ECA58() & 1) != 0)
                    {

                      return 10;
                    }

                    else
                    {
                      v17 = v5 == 0x61727473736F7263 && v1 == 0xED0000676E696E69;
                      if (v17 || (sub_22C9ECA98() & 1) != 0)
                      {

                        return 11;
                      }

                      else
                      {
                        sub_22C9ECA48(0x6C727563u);
                        v18 = v4 && v1 == 0xE700000000000000;
                        if (v18 || (sub_22C9ECA58() & 1) != 0)
                        {

                          return 12;
                        }

                        else
                        {
                          sub_22C9ECA48(0x6C637963u);
                          v19 = v4 && v1 == 0xE700000000000000;
                          if (v19 || (sub_22C9ECA58() & 1) != 0)
                          {

                            return 13;
                          }

                          else
                          {
                            v20 = v5 == 0x65636E6164 && v1 == 0xE500000000000000;
                            if (v20 || (sub_22C9ECA98() & 1) != 0)
                            {

                              return 14;
                            }

                            else
                            {
                              sub_22C9DE260();
                              v22 = v5 == 0xD000000000000015 && v21 == v1;
                              if (v22 || (sub_22C9ECA98() & 1) != 0)
                              {

                                return 15;
                              }

                              else
                              {
                                v23 = v5 == 0x63697470696C6C65 && v1 == 0xEA00000000006C61;
                                if (v23 || (sub_22C9ECA98() & 1) != 0)
                                {

                                  return 16;
                                }

                                else
                                {
                                  sub_22C9DE260();
                                  v25 = v5 == 0xD000000000000010 && v24 == v1;
                                  if (v25 || (sub_22C9ECA98() & 1) != 0)
                                  {

                                    return 17;
                                  }

                                  else
                                  {
                                    sub_22C9ECA48(0x636E6566u);
                                    v26 = v4 && v1 == 0xE700000000000000;
                                    if (v26 || (sub_22C9ECA58() & 1) != 0)
                                    {

                                      return 18;
                                    }

                                    else
                                    {
                                      sub_22C9ECA48(0x68736966u);
                                      v27 = v4 && v1 == 0xE700000000000000;
                                      if (v27 || (sub_22C9ECA58() & 1) != 0)
                                      {

                                        return 19;
                                      }

                                      else
                                      {
                                        sub_22C9DE260();
                                        v29 = v5 == 0xD00000000000001ALL && v28 == v1;
                                        if (v29 || (sub_22C9ECA98() & 1) != 0)
                                        {

                                          return 20;
                                        }

                                        else
                                        {
                                          v30 = v5 == 1718382439 && v1 == 0xE400000000000000;
                                          if (v30 || (sub_22C9ECA98() & 1) != 0)
                                          {

                                            return 21;
                                          }

                                          else
                                          {
                                            v31 = v5 == 0x697473616E6D7967 && v1 == 0xEA00000000007363;
                                            if (v31 || (sub_22C9ECA98() & 1) != 0)
                                            {

                                              return 22;
                                            }

                                            else
                                            {
                                              sub_22C9ECAD4(0x646E6168u);
                                              v32 = v4 && v1 == 0xE800000000000000;
                                              if (v32 || (sub_22C9ECA98() & 1) != 0)
                                              {

                                                return 23;
                                              }

                                              else
                                              {
                                                v33 = v5 == 0x676E696B6968 && v1 == 0xE600000000000000;
                                                if (v33 || (sub_22C9ECA78() & 1) != 0)
                                                {

                                                  return 24;
                                                }

                                                else
                                                {
                                                  v34 = v5 == 0x79656B636F68 && v1 == 0xE600000000000000;
                                                  if (v34 || (sub_22C9ECA78() & 1) != 0)
                                                  {

                                                    return 25;
                                                  }

                                                  else
                                                  {
                                                    sub_22C9ECA48(0x746E7568u);
                                                    v35 = v4 && v1 == 0xE700000000000000;
                                                    if (v35 || (sub_22C9ECA58() & 1) != 0)
                                                    {

                                                      return 26;
                                                    }

                                                    else
                                                    {
                                                      v36 = v5 == 0x6573736F7263616CLL && v1 == 0xE800000000000000;
                                                      if (v36 || (sub_22C9ECA98() & 1) != 0)
                                                      {

                                                        return 27;
                                                      }

                                                      else
                                                      {
                                                        v37 = v5 == 0x616C61697472616DLL && v1 == 0xEB00000000737472;
                                                        if (v37 || (sub_22C9ECA98() & 1) != 0)
                                                        {

                                                          return 28;
                                                        }

                                                        else
                                                        {
                                                          v38 = v5 == 0x62646E61646E696DLL && v1 == 0xEB0000000079646FLL;
                                                          if (v38 || (sub_22C9ECA98() & 1) != 0)
                                                          {

                                                            return 29;
                                                          }

                                                          else
                                                          {
                                                            sub_22C9DE260();
                                                            v40 = v5 == 0xD00000000000001CLL && v39 == v1;
                                                            if (v40 || (sub_22C9ECA98() & 1) != 0)
                                                            {

                                                              return 30;
                                                            }

                                                            else
                                                            {
                                                              v41 = v5 == 0x7073656C64646170 && v1 == 0xEC0000007374726FLL;
                                                              if (v41 || (sub_22C9ECA98() & 1) != 0)
                                                              {

                                                                return 31;
                                                              }

                                                              else
                                                              {
                                                                v42 = v5 == 2036427888 && v1 == 0xE400000000000000;
                                                                if (v42 || (sub_22C9ECA98() & 1) != 0)
                                                                {

                                                                  return 32;
                                                                }

                                                                else
                                                                {
                                                                  sub_22C9DE260();
                                                                  v44 = v5 == 0xD000000000000016 && v43 == v1;
                                                                  if (v44 || (sub_22C9ECA98() & 1) != 0)
                                                                  {

                                                                    return 33;
                                                                  }

                                                                  else
                                                                  {
                                                                    v45 = v5 == 0x6274657571636172 && v1 == 0xEB000000006C6C61;
                                                                    if (v45 || (sub_22C9ECA98() & 1) != 0)
                                                                    {

                                                                      return 34;
                                                                    }

                                                                    else
                                                                    {
                                                                      v46 = v5 == 0x676E69776F72 && v1 == 0xE600000000000000;
                                                                      if (v46 || (sub_22C9ECA78() & 1) != 0)
                                                                      {

                                                                        return 35;
                                                                      }

                                                                      else
                                                                      {
                                                                        v47 = v5 == 0x7962677572 && v1 == 0xE500000000000000;
                                                                        if (v47 || (sub_22C9ECA98() & 1) != 0)
                                                                        {

                                                                          return 36;
                                                                        }

                                                                        else
                                                                        {
                                                                          sub_22C9ECA48(0x6E6E7572u);
                                                                          v48 = v4 && v1 == 0xE700000000000000;
                                                                          if (v48 || (sub_22C9ECA58() & 1) != 0)
                                                                          {

                                                                            return 37;
                                                                          }

                                                                          else
                                                                          {
                                                                            sub_22C9ECA48(0x6C696173u);
                                                                            v49 = v4 && v1 == 0xE700000000000000;
                                                                            if (v49 || (sub_22C9ECA58() & 1) != 0)
                                                                            {

                                                                              return 38;
                                                                            }

                                                                            else
                                                                            {
                                                                              v50 = v5 == 0x73676E6974616B73 && v1 == 0xED00007374726F70;
                                                                              if (v50 || (sub_22C9ECA98() & 1) != 0)
                                                                              {

                                                                                return 39;
                                                                              }

                                                                              else
                                                                              {
                                                                                v51 = v5 == 0x726F7073776F6E73 && v1 == 0xEA00000000007374;
                                                                                if (v51 || (sub_22C9ECA98() & 1) != 0)
                                                                                {

                                                                                  return 40;
                                                                                }

                                                                                else
                                                                                {
                                                                                  v52 = v5 == 0x6C6C69686E776F64 && v1 == 0xEE00676E69696B73;
                                                                                  if (v52 || (sub_22C9ECA98() & 1) != 0)
                                                                                  {

                                                                                    return 61;
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    v53 = v5 == 0x726563636F73 && v1 == 0xE600000000000000;
                                                                                    if (v53 || (sub_22C9ECA78() & 1) != 0)
                                                                                    {

                                                                                      return 41;
                                                                                    }

                                                                                    else
                                                                                    {
                                                                                      sub_22C9ECAD4(0x74666F73u);
                                                                                      v54 = v4 && v1 == 0xE800000000000000;
                                                                                      if (v54 || (sub_22C9ECA98() & 1) != 0)
                                                                                      {

                                                                                        return 42;
                                                                                      }

                                                                                      else
                                                                                      {
                                                                                        v55 = v5 == 0x687361757173 && v1 == 0xE600000000000000;
                                                                                        if (v55 || (sub_22C9ECA78() & 1) != 0)
                                                                                        {

                                                                                          return 43;
                                                                                        }

                                                                                        else
                                                                                        {
                                                                                          v56 = v5 == 0x696C637269617473 && v1 == 0xED0000676E69626DLL;
                                                                                          if (v56 || (sub_22C9ECA98() & 1) != 0)
                                                                                          {

                                                                                            return 44;
                                                                                          }

                                                                                          else
                                                                                          {
                                                                                            v57 = v5 == 0x73676E6966727573 && v1 == 0xED00007374726F70;
                                                                                            if (v57 || (sub_22C9ECA98() & 1) != 0)
                                                                                            {

                                                                                              return 45;
                                                                                            }

                                                                                            else
                                                                                            {
                                                                                              v58 = v5 == 0x676E696D6D697773 && v1 == 0xE800000000000000;
                                                                                              if (v58 || (sub_22C9ECA98() & 1) != 0)
                                                                                              {

                                                                                                return 46;
                                                                                              }

                                                                                              else
                                                                                              {
                                                                                                v59 = v5 == 0x6E6574656C626174 && v1 == 0xEB0000000073696ELL;
                                                                                                if (v59 || (sub_22C9ECA98() & 1) != 0)
                                                                                                {

                                                                                                  return 47;
                                                                                                }

                                                                                                else
                                                                                                {
                                                                                                  v60 = v5 == 0x73696E6E6574 && v1 == 0xE600000000000000;
                                                                                                  if (v60 || (sub_22C9ECA78() & 1) != 0)
                                                                                                  {

                                                                                                    return 48;
                                                                                                  }

                                                                                                  else
                                                                                                  {
                                                                                                    v61 = v5 == 0x646E616B63617274 && v1 == 0xED0000646C656966;
                                                                                                    if (v61 || (sub_22C9ECA98() & 1) != 0)
                                                                                                    {

                                                                                                      return 49;
                                                                                                    }

                                                                                                    else
                                                                                                    {
                                                                                                      sub_22C9DE260();
                                                                                                      v63 = v5 == 0xD00000000000001BLL && v62 == v1;
                                                                                                      if (v63 || (sub_22C9ECA98() & 1) != 0)
                                                                                                      {

                                                                                                        return 50;
                                                                                                      }

                                                                                                      else
                                                                                                      {
                                                                                                        v64 = v5 == 0x616279656C6C6F76 && v1 == 0xEA00000000006C6CLL;
                                                                                                        if (v64 || (sub_22C9ECA98() & 1) != 0)
                                                                                                        {

                                                                                                          return 51;
                                                                                                        }

                                                                                                        else
                                                                                                        {
                                                                                                          sub_22C9ECA48(0x6B6C6177u);
                                                                                                          v65 = v4 && v1 == 0xE700000000000000;
                                                                                                          if (v65 || (sub_22C9ECA58() & 1) != 0)
                                                                                                          {

                                                                                                            return 52;
                                                                                                          }

                                                                                                          else
                                                                                                          {
                                                                                                            v66 = v5 == 0x7469667265746177 && v1 == 0xEC0000007373656ELL;
                                                                                                            if (v66 || (sub_22C9ECA98() & 1) != 0)
                                                                                                            {

                                                                                                              return 53;
                                                                                                            }

                                                                                                            else
                                                                                                            {
                                                                                                              v67 = v5 == 0x6C6F707265746177 && v1 == 0xE90000000000006FLL;
                                                                                                              if (v67 || (sub_22C9ECA98() & 1) != 0)
                                                                                                              {

                                                                                                                return 54;
                                                                                                              }

                                                                                                              else
                                                                                                              {
                                                                                                                v68 = v5 == 0x6F70737265746177 && v1 == 0xEB00000000737472;
                                                                                                                if (v68 || (sub_22C9ECA98() & 1) != 0)
                                                                                                                {

                                                                                                                  return 55;
                                                                                                                }

                                                                                                                else
                                                                                                                {
                                                                                                                  v69 = v5 == 0x6E696C7473657277 && v1 == 0xE900000000000067;
                                                                                                                  if (v69 || (sub_22C9ECA98() & 1) != 0)
                                                                                                                  {

                                                                                                                    return 56;
                                                                                                                  }

                                                                                                                  else
                                                                                                                  {
                                                                                                                    v70 = v5 == 1634168697 && v1 == 0xE400000000000000;
                                                                                                                    if (v70 || (sub_22C9ECA98() & 1) != 0)
                                                                                                                    {

                                                                                                                      return 57;
                                                                                                                    }

                                                                                                                    else
                                                                                                                    {
                                                                                                                      v71 = v5 == 0x6572726162 && v1 == 0xE500000000000000;
                                                                                                                      if (v71 || (sub_22C9ECA98() & 1) != 0)
                                                                                                                      {

                                                                                                                        return 58;
                                                                                                                      }

                                                                                                                      else
                                                                                                                      {
                                                                                                                        v72 = v5 == 0x6961727465726F63 && v1 == 0xEC000000676E696ELL;
                                                                                                                        if (v72 || (sub_22C9ECA98() & 1) != 0)
                                                                                                                        {

                                                                                                                          return 59;
                                                                                                                        }

                                                                                                                        else
                                                                                                                        {
                                                                                                                          sub_22C9DE260();
                                                                                                                          v74 = v5 == 0xD000000000000012 && v73 == v1;
                                                                                                                          if (v74 || (sub_22C9ECA98() & 1) != 0)
                                                                                                                          {

                                                                                                                            return 60;
                                                                                                                          }

                                                                                                                          else
                                                                                                                          {
                                                                                                                            v75 = v5 == 0x6C69626978656C66 && v1 == 0xEB00000000797469;
                                                                                                                            if (v75 || (sub_22C9ECA98() & 1) != 0)
                                                                                                                            {

                                                                                                                              return 62;
                                                                                                                            }

                                                                                                                            else
                                                                                                                            {
                                                                                                                              sub_22C9DE260();
                                                                                                                              v77 = v5 == 0xD00000000000001DLL && v76 == v1;
                                                                                                                              if (v77 || (sub_22C9ECA98() & 1) != 0)
                                                                                                                              {

                                                                                                                                return 63;
                                                                                                                              }

                                                                                                                              else
                                                                                                                              {
                                                                                                                                v78 = v5 == 0x65706F72706D756ALL && v1 == 0xE800000000000000;
                                                                                                                                if (v78 || (sub_22C9ECA98() & 1) != 0)
                                                                                                                                {

                                                                                                                                  return 64;
                                                                                                                                }

                                                                                                                                else
                                                                                                                                {
                                                                                                                                  v79 = v5 == 0x69786F626B63696BLL && v1 == 0xEA0000000000676ELL;
                                                                                                                                  if (v79 || (sub_22C9ECA98() & 1) != 0)
                                                                                                                                  {

                                                                                                                                    return 65;
                                                                                                                                  }

                                                                                                                                  else
                                                                                                                                  {
                                                                                                                                    v80 = v5 == 0x736574616C6970 && v1 == 0xE700000000000000;
                                                                                                                                    if (v80 || (sub_22C9ECA58() & 1) != 0)
                                                                                                                                    {

                                                                                                                                      return 66;
                                                                                                                                    }

                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                      v81 = v5 == 0x72616F62776F6E73 && v1 == 0xEC000000676E6964;
                                                                                                                                      if (v81 || (sub_22C9ECA98() & 1) != 0)
                                                                                                                                      {

                                                                                                                                        return 67;
                                                                                                                                      }

                                                                                                                                      else
                                                                                                                                      {
                                                                                                                                        v82 = v5 == 0x737269617473 && v1 == 0xE600000000000000;
                                                                                                                                        if (v82 || (sub_22C9ECA78() & 1) != 0)
                                                                                                                                        {

                                                                                                                                          return 68;
                                                                                                                                        }

                                                                                                                                        else
                                                                                                                                        {
                                                                                                                                          v83 = v5 == 0x6961727470657473 && v1 == 0xEC000000676E696ELL;
                                                                                                                                          if (v83 || (sub_22C9ECA98() & 1) != 0)
                                                                                                                                          {

                                                                                                                                            return 69;
                                                                                                                                          }

                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                            sub_22C9DE260();
                                                                                                                                            v85 = v5 == 0xD000000000000012 && v84 == v1;
                                                                                                                                            if (v85 || (sub_22C9ECA98() & 1) != 0)
                                                                                                                                            {

                                                                                                                                              return 70;
                                                                                                                                            }

                                                                                                                                            else
                                                                                                                                            {
                                                                                                                                              sub_22C9DE260();
                                                                                                                                              v87 = v5 == 0xD000000000000011 && v86 == v1;
                                                                                                                                              if (v87 || (sub_22C9ECA98() & 1) != 0)
                                                                                                                                              {

                                                                                                                                                return 71;
                                                                                                                                              }

                                                                                                                                              else
                                                                                                                                              {
                                                                                                                                                v88 = v5 == 0x696863696174 && v1 == 0xE600000000000000;
                                                                                                                                                if (v88 || (sub_22C9ECA78() & 1) != 0)
                                                                                                                                                {

                                                                                                                                                  return 72;
                                                                                                                                                }

                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                  v89 = v5 == 0x726163646578696DLL && v1 == 0xEB000000006F6964;
                                                                                                                                                  if (v89 || (sub_22C9ECA98() & 1) != 0)
                                                                                                                                                  {

                                                                                                                                                    return 73;
                                                                                                                                                  }

                                                                                                                                                  else
                                                                                                                                                  {
                                                                                                                                                    v90 = v5 == 0x6C637963646E6168 && v1 == 0xEB00000000676E69;
                                                                                                                                                    if (v90 || (sub_22C9ECA98() & 1) != 0)
                                                                                                                                                    {

                                                                                                                                                      return 74;
                                                                                                                                                    }

                                                                                                                                                    else
                                                                                                                                                    {
                                                                                                                                                      v91 = v5 == 0x726F707363736964 && v1 == 0xEA00000000007374;
                                                                                                                                                      if (v91 || (sub_22C9ECA98() & 1) != 0)
                                                                                                                                                      {

                                                                                                                                                        return 75;
                                                                                                                                                      }

                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                        v92 = v5 == 0x677373656E746966 && v1 == 0xED0000676E696D61;
                                                                                                                                                        if (v92 || (sub_22C9ECA98() & 1) != 0)
                                                                                                                                                        {

                                                                                                                                                          return 76;
                                                                                                                                                        }

                                                                                                                                                        else
                                                                                                                                                        {
                                                                                                                                                          v93 = v5 == 0x61646F6964726163 && v1 == 0xEB0000000065636ELL;
                                                                                                                                                          if (v93 || (sub_22C9ECA98() & 1) != 0)
                                                                                                                                                          {

                                                                                                                                                            return 77;
                                                                                                                                                          }

                                                                                                                                                          else
                                                                                                                                                          {
                                                                                                                                                            v94 = v5 == 0x61646C6169636F73 && v1 == 0xEB0000000065636ELL;
                                                                                                                                                            if (v94 || (sub_22C9ECA98() & 1) != 0)
                                                                                                                                                            {

                                                                                                                                                              return 78;
                                                                                                                                                            }

                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                              v95 = v5 == 0x6162656C6B636970 && v1 == 0xEA00000000006C6CLL;
                                                                                                                                                              if (v95 || (sub_22C9ECA98() & 1) != 0)
                                                                                                                                                              {

                                                                                                                                                                return 79;
                                                                                                                                                              }

                                                                                                                                                              else
                                                                                                                                                              {
                                                                                                                                                                v96 = v5 == 0x6E776F646C6F6F63 && v1 == 0xE800000000000000;
                                                                                                                                                                if (v96 || (sub_22C9ECA98() & 1) != 0)
                                                                                                                                                                {

                                                                                                                                                                  return 80;
                                                                                                                                                                }

                                                                                                                                                                else
                                                                                                                                                                {
                                                                                                                                                                  v97 = v5 == 0x656B69626D697773 && v1 == 0xEB000000006E7572;
                                                                                                                                                                  if (v97 || (sub_22C9ECA98() & 1) != 0)
                                                                                                                                                                  {

                                                                                                                                                                    return 81;
                                                                                                                                                                  }

                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                    v98 = v5 == 0x697469736E617272 && v1 == 0xEA00000000006E6FLL;
                                                                                                                                                                    if (v98 || (sub_22C9ECA98() & 1) != 0)
                                                                                                                                                                    {

                                                                                                                                                                      return 82;
                                                                                                                                                                    }

                                                                                                                                                                    else
                                                                                                                                                                    {
                                                                                                                                                                      sub_22C9DE260();
                                                                                                                                                                      v100 = v5 == 0xD000000000000010 && v99 == v1;
                                                                                                                                                                      if (v100 || (sub_22C9ECA98() & 1) != 0)
                                                                                                                                                                      {

                                                                                                                                                                        return 83;
                                                                                                                                                                      }

                                                                                                                                                                      else
                                                                                                                                                                      {
                                                                                                                                                                        v101 = v5 == 0x76697463616C6C61 && v1 == 0xED00007365697469;
                                                                                                                                                                        if (v101 || (sub_22C9ECA98() & 1) != 0 || (v5 == 7958113 ? (v102 = v1 == 0xE300000000000000) : (v102 = 0), v102 || (sub_22C9ECA98() & 1) != 0))
                                                                                                                                                                        {

                                                                                                                                                                          return 84;
                                                                                                                                                                        }

                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                          if (v5 != 0x726568746FLL || v1 != 0xE500000000000000)
                                                                                                                                                                          {
                                                                                                                                                                            sub_22C9ECA98();
                                                                                                                                                                          }

                                                                                                                                                                          return 3000;
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
        }
      }
    }
  }
}

uint64_t sub_22C9EC220()
{
  v1 = v0;
  v2 = sub_22CA20A50();
  v3 = sub_22C9DAE90(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  sub_22CA20A30();
  v11 = sub_22CA20A40();
  (*(v5 + 8))(v9, v2);
  [v10 setLocale_];

  [v10 setDateStyle_];
  [v10 setTimeStyle_];
  v12 = sub_22CA209A0();
  v13 = [v10 stringFromDate_];

  v14 = sub_22CA20E20();
  v16 = v15;

  v17 = sub_22CA209A0();
  v18 = [v10 stringFromDate_];

  v19 = sub_22CA20E20();
  v21 = v20;

  v25[0] = 0;
  v25[1] = 0xE000000000000000;
  sub_22CA211A0();
  sub_22C9DE260();
  MEMORY[0x2318BA9C0](0xD000000000000015);
  type metadata accessor for MSWorkoutItem();
  sub_22C9EA5A8(*(v1 + OBJC_IVAR____TtC14MediaSuggester13MSWorkoutItem_workoutType));
  MEMORY[0x2318BA9C0]();

  MEMORY[0x2318BA9C0](0x3A7472617453202CLL, 0xE900000000000020);
  MEMORY[0x2318BA9C0](v14, v16);

  MEMORY[0x2318BA9C0](0x203A646E45202CLL, 0xE700000000000000);
  MEMORY[0x2318BA9C0](v19, v21);

  MEMORY[0x2318BA9C0](0x203A74616C202CLL, 0xE700000000000000);
  v22 = *(v1 + OBJC_IVAR____TtC14MediaSuggester13MSWorkoutItem_latitude);
  sub_22CA20FA0();
  MEMORY[0x2318BA9C0](0x203A6E6F6C202CLL, 0xE700000000000000);
  v23 = *(v1 + OBJC_IVAR____TtC14MediaSuggester13MSWorkoutItem_longitude);
  sub_22CA20FA0();
  MEMORY[0x2318BA9C0](10, 0xE100000000000000);

  return v25[0];
}

id MSWorkoutItem.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MSWorkoutItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MSWorkoutItem();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t MSWorkoutActivityType.distance(to:)(int a1, int a2)
{
  v2 = __OFSUB__(a1, a2);
  result = (a1 - a2);
  if (v2)
  {
    __break(1u);
  }

  return result;
}

uint64_t MSWorkoutActivityType.advanced(by:)(int a1, int a2)
{
  v2 = __OFADD__(a2, a1);
  result = (a2 + a1);
  if (v2)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22C9EC6FC@<X0>(int *a1@<X0>, _DWORD *a2@<X8>)
{
  result = MSWorkoutActivityType.distance(to:)(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_22C9EC72C@<X0>(int *a1@<X0>, _DWORD *a2@<X8>)
{
  result = MSWorkoutActivityType.advanced(by:)(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_22C9EC7BC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MSWorkoutActivityType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_DWORD *sub_22C9EC800(_DWORD *result, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6)
{
  if (__OFADD__(a4, a6))
  {
    __break(1u);
  }

  else
  {
    *result = a4 + a6;
    return 0;
  }

  return result;
}

BOOL sub_22C9EC828(_BOOL8 result, int a2)
{
  if (!__OFSUB__(a2, result))
  {
    return a2 - result > 0;
  }

  __break(1u);
  return result;
}

BOOL sub_22C9EC84C(_BOOL8 result, int a2)
{
  if (!__OFSUB__(result, a2))
  {
    return result - a2 < 1;
  }

  __break(1u);
  return result;
}

BOOL sub_22C9EC870(_BOOL8 result, int a2)
{
  if (!__OFSUB__(a2, result))
  {
    return a2 - result < 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_22C9EC89C()
{
  result = sub_22CA209F0();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

BOOL sub_22C9ECA30(_BOOL8 result, int a2)
{
  if (!__OFSUB__(result, a2))
  {
    return result - a2 > 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_22C9ECA58()
{

  return sub_22CA21360();
}

uint64_t sub_22C9ECA78()
{

  return sub_22CA21360();
}

uint64_t sub_22C9ECA98()
{

  return sub_22CA21360();
}

id sub_22C9ECAB4()
{

  return [v0 (v3 + 3842)];
}

uint64_t sub_22C9ECAE4()
{

  return sub_22CA20E10();
}

uint64_t sub_22C9ECB0C()
{

  return sub_22CA20E10();
}

uint64_t sub_22C9ECB30()
{

  return sub_22CA20E10();
}

id sub_22C9ECB60()
{

  return [v0 (v2 + 2606)];
}

uint64_t sub_22C9ECB80()
{

  return swift_dynamicCast();
}

uint64_t sub_22C9ECBA0(uint64_t a1, uint64_t a2)
{

  return sub_22C9D0B98(a1, a2, 1, v2);
}

uint64_t sub_22C9ECBB8()
{
  v1 = sub_22CA20CA0();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  *(v0 + 16) = sub_22CA20C90();
  return v0;
}

uint64_t sub_22C9ECC64()
{
  v0 = sub_22C9D02E4(&qword_27D9E4EF0, &qword_22CA23CA0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return MEMORY[0x2318BA730]();
}

uint64_t sub_22C9ECCCC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22C9ECC64();
  *a1 = result;
  return result;
}

uint64_t sub_22C9ECCF4(uint64_t a1, uint64_t a2)
{
  v5 = *(MEMORY[0x277CE9B48] + 4);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = type metadata accessor for MSDropDuplicateSuggestions();
  v9 = sub_22C9ED078(&qword_27D9E4EF8, v8, type metadata accessor for MSDropDuplicateSuggestions);
  *v6 = v2;
  v6[1] = sub_22C9ECDEC;

  return MEMORY[0x28213B658](a1, a2, v7, v9);
}

uint64_t sub_22C9ECDEC(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

unint64_t sub_22C9ED014()
{
  result = qword_27D9E4EE8;
  if (!qword_27D9E4EE8)
  {
    sub_22C9D0584(&qword_27D9E4EF0, &qword_22CA23CA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9E4EE8);
  }

  return result;
}

uint64_t sub_22C9ED078(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

id MSWorkoutMediaItem.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MSWorkoutMediaItem.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MSWorkoutMediaItem();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_22C9ED170@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for MSWorkoutMediaItem();
  result = [objc_allocWithZone(v2) init];
  a1[3] = v2;
  *a1 = result;
  return result;
}

id MSWorkoutMediaItem.__allocating_init(coder:)(void *a1)
{
  v5.receiver = objc_allocWithZone(v1);
  v5.super_class = v1;
  v3 = objc_msgSendSuper2(&v5, sel_init);

  return v3;
}

id MSWorkoutMediaItem.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for MSWorkoutMediaItem();
  v3 = objc_msgSendSuper2(&v5, sel_init);

  return v3;
}

uint64_t sub_22C9ED2E0()
{
  sub_22C9D6F3C();
  *(v0 + 40) = v1;
  *(v0 + 48) = v2;
  *(v0 + 32) = v3;
  *(v0 + 152) = v4;
  v5 = sub_22CA209F0();
  *(v0 + 56) = v5;
  v6 = *(v5 - 8);
  *(v0 + 64) = v6;
  v7 = *(v6 + 64) + 15;
  *(v0 + 72) = swift_task_alloc();
  *(v0 + 80) = swift_task_alloc();
  *(v0 + 88) = swift_task_alloc();
  *(v0 + 96) = swift_task_alloc();
  v8 = *(*(sub_22C9D02E4(&unk_27D9E4F00, &unk_22CA232D0) - 8) + 64) + 15;
  *(v0 + 104) = swift_task_alloc();
  *(v0 + 112) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C9ED40C, 0, 0);
}

uint64_t sub_22C9ED40C()
{
  sub_22C9D6F3C();
  *(v0 + 120) = [objc_allocWithZone(type metadata accessor for MSWorkoutManager()) init];
  v1 = swift_task_alloc();
  *(v0 + 128) = v1;
  *v1 = v0;
  v1[1] = sub_22C9ED4C0;
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 152);

  return sub_22C9FB214(v4, v2, v3);
}

uint64_t sub_22C9ED4C0()
{
  sub_22C9D6F3C();
  v2 = *v1;
  v3 = *(*v1 + 128);
  v7 = *v1;
  *(v2 + 136) = v4;
  *(v2 + 144) = v0;

  if (v0)
  {
    v5 = sub_22C9EDB20;
  }

  else
  {
    v5 = sub_22C9ED5D0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22C9ED5D0()
{
  v72 = v0;
  v1 = *(v0 + 17);
  if (!v1)
  {
    if (qword_27D9E4720 != -1)
    {
      goto LABEL_29;
    }

    goto LABEL_18;
  }

  type metadata accessor for MSBiomeMediaReader();
  swift_initStackObject();
  v2 = sub_22C9E3CB8(v1);
  if (!v2)
  {
    v4 = MEMORY[0x277D84F98];
LABEL_21:
    v49 = *(v0 + 15);

    goto LABEL_24;
  }

  if (v2 < 1)
  {
    goto LABEL_28;
  }

  v3 = 0;
  v61 = (*(v0 + 8) + 16);
  v62 = *(v0 + 17) & 0xC000000000000001;
  v4 = MEMORY[0x277D84F98];
  v59 = v2;
  v60 = v1;
  v63 = v0;
  while (1)
  {
    if (v62)
    {
      v5 = MEMORY[0x2318BAD10](v3, v1);
    }

    else
    {
      v5 = *(v1 + 8 * v3 + 32);
    }

    v6 = v5;
    v8 = *(v0 + 13);
    v7 = *(v0 + 14);
    v9 = *(v0 + 12);
    v10 = *(v0 + 6);
    v11 = *(v0 + 7);
    v12 = *(v0 + 5);
    v68 = v12;
    v69 = *(v0 + 11);
    v66 = *(v0 + 4);
    v0 = *v61;
    (*v61)(v7, &v5[OBJC_IVAR____TtC14MediaSuggester13MSWorkoutItem_startDate], v11);
    sub_22C9D0B98(v7, 0, 1, v11);
    v65 = v6;
    v0(v8, &v6[OBJC_IVAR____TtC14MediaSuggester13MSWorkoutItem_endDate], v11);
    sub_22C9D0B98(v8, 0, 1, v11);
    sub_22C9EFAC4();
    v14 = v13;
    sub_22C9D6C44(v8, &unk_27D9E4F00, &unk_22CA232D0);
    sub_22C9D6C44(v7, &unk_27D9E4F00, &unk_22CA232D0);
    v0(v9, v66, v11);
    v0(v69, v68, v11);
    v15 = objc_allocWithZone(type metadata accessor for MSMediaContainer());
    v16 = MSMediaContainer.init(nowPlayingEvents:playMediaIntents:playMediaAppIntents:startDate:endDate:)(MEMORY[0x277D84F90], v14, MEMORY[0x277D84F90], v9, v69);
    v17 = v16;
    if ((v4 & 0xC000000000000001) == 0)
    {
      v21 = v16;
      goto LABEL_15;
    }

    v18 = v4 < 0 ? v4 : v4 & 0xFFFFFFFFFFFFFF8;
    v19 = v16;
    v20 = sub_22CA21290();
    if (__OFADD__(v20, 1))
    {
      break;
    }

    v4 = sub_22C9EDD24(v18, v20 + 1);
LABEL_15:
    ++v3;
    swift_isUniquelyReferenced_nonNull_native();
    v71 = v4;
    sub_22C9EDF18(v17, v65);

    v1 = v60;
    v0 = v63;
    if (v59 == v3)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  sub_22C9EE79C();
LABEL_18:
  v22 = v0;
  v25 = v0 + 72;
  v24 = *(v0 + 9);
  v23 = *(v25 + 1);
  v26 = *(v22 + 7);
  v27 = *(v22 + 8);
  v29 = *(v22 + 4);
  v28 = *(v22 + 5);
  v30 = sub_22CA20B10();
  sub_22C9D0494(v30, &unk_27D9E8068);
  v31 = *(v27 + 16);
  v31(v23, v29, v26);
  v31(v24, v28, v26);
  v32 = sub_22CA20AF0();
  v33 = sub_22CA20FF0();
  v34 = os_log_type_enabled(v32, v33);
  v36 = *(v22 + 9);
  v35 = *(v22 + 10);
  v38 = *(v22 + 7);
  v37 = *(v22 + 8);
  v64 = v22;
  if (v34)
  {
    v70 = *(v22 + 15);
    v39 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    *v39 = 136315394;
    sub_22C9DDF28();
    v67 = v33;
    sub_22C9EE828();
    v40 = sub_22CA21340();
    v42 = v41;
    v43 = *(v37 + 8);
    v43(v35, v38);
    v44 = sub_22C9D60B0(v40, v42, &v71);

    *(v39 + 4) = v44;
    *(v39 + 12) = 2080;
    sub_22C9EE828();
    v45 = sub_22CA21340();
    v47 = v46;
    v43(v36, v38);
    v48 = sub_22C9D60B0(v45, v47, &v71);

    *(v39 + 14) = v48;
    _os_log_impl(&dword_22C9CA000, v32, v67, "No workouts between %s to %s", v39, 0x16u);
    swift_arrayDestroy();
    sub_22C9D70C0();
    sub_22C9D70C0();
  }

  else
  {

    v50 = *(v37 + 8);
    v50(v36, v38);
    v50(v35, v38);
  }

  v4 = MEMORY[0x277D84F98];
  v0 = v64;
LABEL_24:
  v52 = *(v0 + 13);
  v51 = *(v0 + 14);
  v53 = *(v0 + 11);
  v54 = *(v0 + 12);
  v56 = *(v0 + 9);
  v55 = *(v0 + 10);

  v57 = *(v0 + 1);

  return v57(v4);
}

uint64_t sub_22C9EDB20()
{
  if (qword_27D9E4720 != -1)
  {
    sub_22C9EE79C();
  }

  v1 = v0[18];
  v2 = sub_22CA20B10();
  sub_22C9D0494(v2, &unk_27D9E8068);
  v3 = v1;
  v4 = sub_22CA20AF0();
  v5 = sub_22CA21000();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[18];
  v8 = v0[15];
  if (v6)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v7;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_22C9CA000, v4, v5, "While accessing workout media, encountered error: %@", v9, 0xCu);
    sub_22C9D6C44(v10, &unk_27D9E5090, &qword_22CA22E00);
    sub_22C9D70C0();
    sub_22C9D70C0();
  }

  else
  {
  }

  v14 = v0[13];
  v13 = v0[14];
  v16 = v0[11];
  v15 = v0[12];
  v18 = v0[9];
  v17 = v0[10];

  v19 = v0[1];
  v20 = MEMORY[0x277D84F98];

  return v19(v20);
}

id MSWorkoutMediaItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MSWorkoutMediaItem();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22C9EDD24(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_22C9D02E4(&qword_27D9E4F30, &qword_22CA23D50);
    v2 = sub_22CA21300();
    v18 = v2;
    sub_22CA21280();
    while (1)
    {
      v3 = sub_22CA212B0();
      if (!v3)
      {

        return v2;
      }

      v16 = v3;
      type metadata accessor for MSWorkoutItem();
      swift_dynamicCast();
      type metadata accessor for MSMediaContainer();
      swift_dynamicCast();
      v4 = *(v2 + 16);
      if (*(v2 + 24) <= v4)
      {
        sub_22CA0237C(v4 + 1, 1);
      }

      v2 = v18;
      v5 = *(v18 + 40);
      result = sub_22CA210C0();
      v7 = v18 + 64;
      v8 = -1 << *(v18 + 32);
      v9 = result & ~v8;
      v10 = v9 >> 6;
      if (((-1 << v9) & ~*(v18 + 64 + 8 * (v9 >> 6))) == 0)
      {
        break;
      }

      v11 = __clz(__rbit64((-1 << v9) & ~*(v18 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v18 + 48) + 8 * v11) = v17;
      *(*(v18 + 56) + 8 * v11) = v16;
      ++*(v18 + 16);
    }

    v12 = 0;
    v13 = (63 - v8) >> 6;
    while (++v10 != v13 || (v12 & 1) == 0)
    {
      v14 = v10 == v13;
      if (v10 == v13)
      {
        v10 = 0;
      }

      v12 |= v14;
      v15 = *(v7 + 8 * v10);
      if (v15 != -1)
      {
        v11 = __clz(__rbit64(~v15)) + (v10 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F98];
  }

  return result;
}

void sub_22C9EDF18(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_22C9FC020(a2);
  if (__OFADD__(*(v5 + 16), (v7 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v8 = v6;
  v9 = v7;
  sub_22C9D02E4(&qword_27D9E4F38, &qword_22CA23D58);
  if ((sub_22CA21250() & 1) == 0)
  {
    goto LABEL_5;
  }

  v10 = *v3;
  v11 = sub_22C9FC020(a2);
  if ((v9 & 1) != (v12 & 1))
  {
LABEL_13:
    type metadata accessor for MSWorkoutItem();
    sub_22CA213C0();
    __break(1u);
    return;
  }

  v8 = v11;
LABEL_5:
  v13 = *v3;
  if (v9)
  {
    v14 = v13[7];
    v15 = *(v14 + 8 * v8);
    *(v14 + 8 * v8) = a1;
  }

  else
  {
    sub_22CA0286C(v8, a2, a1, v13);

    v16 = a2;
  }
}

uint64_t dispatch thunk of MSWorkoutMediaItem.workoutMedia(for:from:to:allowedBundleIDs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *((*MEMORY[0x277D85000] & *v4) + 0x70);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_22C9EE23C;

  return v14(a1, a2, a3, a4);
}

uint64_t sub_22C9EE23C()
{
  sub_22C9D6F3C();
  v2 = v1;
  v3 = *(*v0 + 16);
  v6 = *v0;

  v4 = *(v6 + 8);

  return v4(v2);
}

uint64_t sub_22C9EE334(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_22C9EE7EC(a1, a2, a3);
  sub_22C9EE768(v7, v8);
  if (v11)
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = v9;
  v13 = v10;
  sub_22C9D02E4(&qword_27D9E4F10, &qword_22CA23D30);
  if ((sub_22C9EE77C() & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = sub_22C9EE81C();
  v15 = sub_22C9FBFA8(v14, v4);
  if ((v13 & 1) != (v16 & 1))
  {
LABEL_13:
    result = sub_22CA213C0();
    __break(1u);
    return result;
  }

  v12 = v15;
LABEL_5:
  v17 = *v6;
  if (v13)
  {
    v18 = *(v17 + 56) + 48 * v12;
    v19 = *v18;
    v20 = v3[2];
    *(v18 + 16) = v3[1];
    *(v18 + 32) = v20;
    *v18 = *v3;
    sub_22C9EE834();
  }

  else
  {
    sub_22CA028B0(v12, v5, v4, v3, v17);
    sub_22C9EE834();
  }
}

void sub_22C9EE43C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22C9EE7BC(a1, a2, a3);
  sub_22C9EE768(v6, v7);
  if (v10)
  {
    __break(1u);
    goto LABEL_11;
  }

  v11 = v8;
  v12 = v9;
  sub_22C9D02E4(&qword_27D9E4F20, &qword_22CA23AF0);
  if ((sub_22C9EE77C() & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = sub_22C9EE81C();
  v14 = sub_22C9FBFA8(v13, v3);
  if ((v12 & 1) != (v15 & 1))
  {
LABEL_11:
    sub_22CA213C0();
    __break(1u);
    return;
  }

  v11 = v14;
LABEL_5:
  if (v12)
  {
    *(*(*v5 + 56) + 8 * v11) = v4;
    sub_22C9EE834();
  }

  else
  {
    v16 = sub_22C9EE828();
    sub_22CA028F4(v16, v17, v3, v4, v18);
    sub_22C9EE834();
  }
}

_OWORD *sub_22C9EE518(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22C9EE7EC(a1, a2, a3);
  sub_22C9EE768(v6, v7);
  if (v10)
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = v8;
  v12 = v9;
  sub_22C9D02E4(&qword_27D9E4F28, &qword_22CA23D48);
  if ((sub_22C9EE77C() & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = sub_22C9EE81C();
  v14 = sub_22C9FBFA8(v13, v4);
  if ((v12 & 1) != (v15 & 1))
  {
LABEL_13:
    result = sub_22CA213C0();
    __break(1u);
    return result;
  }

  v11 = v14;
LABEL_5:
  if (v12)
  {
    sub_22C9D04CC((*(*v5 + 56) + 32 * v11));
    sub_22C9EE834();

    return sub_22C9E9818(v16, v17);
  }

  else
  {
    v20 = sub_22C9EE828();
    sub_22CA02924(v20, v21, v4, v3, v22);
    sub_22C9EE834();
  }
}

uint64_t sub_22C9EE614(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_22C9EE7BC(a1, a2, a3);
  sub_22C9EE768(v7, v8);
  if (v11)
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = v9;
  v13 = v10;
  sub_22C9D02E4(&qword_27D9E4F18, &unk_22CA23D38);
  if ((sub_22C9EE77C() & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = sub_22C9EE81C();
  v15 = sub_22C9FBFA8(v14, v3);
  if ((v13 & 1) != (v16 & 1))
  {
LABEL_13:
    result = sub_22CA213C0();
    __break(1u);
    return result;
  }

  v12 = v15;
LABEL_5:
  v17 = *v6;
  if (v13)
  {
    v18 = *(v17 + 56);
    sub_22C9EE834();

    return sub_22C9EE70C(v19, v20);
  }

  else
  {
    sub_22CA02968(v12, v5, v3, v4, v17);
    sub_22C9EE834();
  }
}

uint64_t sub_22C9EE77C()
{

  return sub_22CA21250();
}

uint64_t sub_22C9EE79C()
{

  return swift_once();
}

unint64_t sub_22C9EE7BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;

  return sub_22C9FBFA8(a2, a3);
}

unint64_t sub_22C9EE7EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;

  return sub_22C9FBFA8(a2, a3);
}

uint64_t sub_22C9EE848()
{
  v9 = MEMORY[0x277D84F90];
  sub_22CA0CB14();
  v0 = 0;
  v1 = 0;
  do
  {
    v2 = v0;
    v3 = sub_22C9FD610(*(&unk_283FCCC50 + v1 + 32));
    v5 = v4;
    v6 = *(v9 + 16);
    if (v6 >= *(v9 + 24) >> 1)
    {
      sub_22CA0CB14();
    }

    *(v9 + 16) = v6 + 1;
    v7 = v9 + 16 * v6;
    *(v7 + 32) = v3;
    *(v7 + 40) = v5;
    v0 = 1;
    v1 = 1u;
  }

  while ((v2 & 1) == 0);

  return sub_22CA1CB94(v9);
}

uint64_t sub_22C9EE934()
{
  v1 = sub_22CA20D10();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  *(v0 + 16) = sub_22CA20D00();
  return v0;
}

uint64_t sub_22C9EEA00()
{
  v1 = *(v0 + 192);
  [v1 requestDate];
  v2 = sub_22C9FDC00();
  v3 = sub_22C9FDEC0([v1 workoutType]);
  v4 = v2;
  v5 = v3;
  v6 = [objc_opt_self() featureValueWithInt64_];
  sub_22C9D02E4(&qword_27D9E4E48, &unk_22CA243F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22CA22F80;
  *(inited + 32) = 0xD000000000000010;
  *(inited + 40) = 0x800000022CA25BF0;
  v8 = sub_22C9EED80();
  *(inited + 48) = v4;
  *(inited + 72) = v8;
  *(inited + 80) = 0xD000000000000018;
  *(inited + 88) = 0x800000022CA25C30;
  *(inited + 96) = v5;
  *(inited + 120) = v8;
  *(inited + 128) = 0xD000000000000013;
  *(inited + 168) = v8;
  *(inited + 136) = 0x800000022CA25C60;
  *(inited + 144) = v6;
  v9 = v4;
  v10 = v5;
  v11 = v6;
  sub_22CA20DD0();
  v12 = objc_allocWithZone(MEMORY[0x277CBFED0]);
  v13 = sub_22CA17474();

  v14 = *(v0 + 8);

  return v14(v13);
}

uint64_t sub_22C9EEC44(uint64_t *a1)
{
  v2 = *a1;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22C9ECDEC;

  return sub_22C9EE9E0(v2);
}

uint64_t sub_22C9EED40(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MSSuggestionContextFeatureProvider();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22C9EED80()
{
  result = qword_27D9E4E90;
  if (!qword_27D9E4E90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D9E4E90);
  }

  return result;
}

uint64_t sub_22C9EEDC4()
{
  MEMORY[0x2318BA9F0]();
  sub_22C9F9AB4(*((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10));

  return sub_22CA20F00();
}

uint64_t sub_22C9EEE1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = 0uLL;
  if (*(a3 + 16))
  {
    v7 = sub_22C9FBFA8(a1, a2);
    if (v8)
    {
      v9 = *(a3 + 56) + 48 * v7;
      v10 = *v9;
      v14 = *(v9 + 24);
      v15 = *(v9 + 8);
      v11 = *(v9 + 40);

      v13 = v14;
      v5 = v15;
    }

    else
    {
      result = 0;
      v11 = 0;
      v13 = 0uLL;
      v5 = 0uLL;
    }
  }

  else
  {
    result = 0;
    v11 = 0;
    v13 = 0uLL;
  }

  *a4 = result;
  *(a4 + 8) = v5;
  *(a4 + 24) = v13;
  *(a4 + 40) = v11;
  return result;
}

uint64_t sub_22C9EEEB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_22C9FBFA8(a1, a2);
  if (v5)
  {
    return *(*(a3 + 56) + 8 * v4);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22C9EEF20()
{
  result = sub_22CA20DD0();
  qword_28143A4D8 = result;
  return result;
}

void sub_22C9EEF68()
{
  sub_22C9DAEF8();
  v51 = v1;
  v3 = v2;
  v48 = v4;
  v5 = sub_22C9D02E4(&unk_27D9E4F00, &unk_22CA232D0);
  v6 = sub_22C9D71B4(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22C9E05C0();
  sub_22C9FB048();
  MEMORY[0x28223BE20](v9);
  v11 = &v47 - v10;
  sub_22CA21080();
  if (qword_28143A1D8 != -1)
  {
    sub_22C9FAF4C();
    swift_once();
  }

  v12 = qword_28143A4B0;
  if (qword_27D9E4740 != -1)
  {
    swift_once();
  }

  v13 = sub_22CA20AE0();
  v14 = sub_22C9D0494(v13, &unk_27D9E8098);
  sub_22C9FB008(v14);
  v15 = MEMORY[0x277D84F90];
  v49 = MEMORY[0x277D84F90];
  sub_22C9FAF8C();
  sub_22CA20AC0();
  sub_22C9D7260();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  v17 = [BiomeLibrary() Media];
  v50 = v12;
  v18 = v17;
  swift_unknownObjectRelease();
  v19 = [v18 NowPlaying];
  v49 = v19;
  swift_unknownObjectRelease();
  v20 = sub_22CA209F0();
  sub_22C9E054C(v20);
  v22 = *(v21 + 16);
  v22(v11, v3, v20);
  sub_22C9FB030();
  sub_22C9D0B98(v23, v24, v25, v20);
  v22(v0, v48, v20);
  sub_22C9FB030();
  sub_22C9D0B98(v26, v27, v28, v20);
  v29 = objc_allocWithZone(MEMORY[0x277CF1A50]);
  sub_22C9FAFB4();
  v35 = sub_22C9F97A0(v30, v31, v32, v33, v34);
  sub_22C9D7260();
  v36 = swift_allocObject();
  *(v36 + 16) = sub_22CA20DD0();
  v37 = [v19 publisherWithOptions_];
  sub_22C9FB018();
  v38 = swift_allocObject();
  *(v38 + 16) = v51;
  *(v38 + 24) = v36;
  v56 = sub_22C9F98DC;
  v57 = v38;
  v52 = MEMORY[0x277D85DD0];
  v53 = 1107296256;
  v54 = sub_22C9FAF44;
  v55 = &unk_283FCD670;
  v39 = _Block_copy(&v52);

  v40 = [v37 filterWithIsIncluded_];
  _Block_release(v39);

  v56 = sub_22C9EF744;
  v57 = 0;
  v52 = MEMORY[0x277D85DD0];
  sub_22C9FAFA0();
  v54 = v41;
  v55 = &unk_283FCD698;
  v42 = _Block_copy(&v52);
  sub_22C9FB018();
  v43 = swift_allocObject();
  *(v43 + 16) = v16;
  *(v43 + 24) = v36;
  v56 = sub_22C9F98FC;
  v57 = v43;
  v52 = MEMORY[0x277D85DD0];
  v53 = 1107296256;
  v54 = sub_22C9FAF40;
  v55 = &unk_283FCD6E8;
  v44 = _Block_copy(&v52);

  v45 = [v40 sinkWithCompletion:v42 receiveInput:v44];
  _Block_release(v44);
  _Block_release(v42);

  sub_22CA21070();
  sub_22C9FAF74();
  sub_22CA20AC0();

  sub_22C9FAFE8();
  swift_beginAccess();
  v46 = *(v16 + 16);

  sub_22C9DAF14();
}

uint64_t sub_22C9EF474(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = 0xEE0044494F4E2E65;
  v6 = 0x6C7070612E6D6F63;
  v7 = [a1 eventBody];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 bundleID];
    if (v9)
    {
      v10 = v9;
      v6 = sub_22CA20E20();
      v5 = v11;
    }
  }

  if (!*(a2 + 16) || (v26[0] = v6, v26[1] = v5, MEMORY[0x28223BE20](v7), v25[2] = v26, , v12 = sub_22C9F9E10(sub_22C9FAEC4, v25, a2), , v12))
  {
    swift_beginAccess();
    v13 = *(a3 + 16);
    if (*(v13 + 16) && (, v14 = sub_22C9FBFA8(v6, v5), v16 = v15, , (v16 & 1) != 0))
    {
      v17 = *(*(v13 + 56) + 8 * v14);
      swift_endAccess();
      if (v17 >= 100)
      {
        if (qword_28143A1B8 != -1)
        {
          swift_once();
        }

        v18 = sub_22CA20B10();
        sub_22C9D0494(v18, &unk_28143A450);
        v19 = sub_22CA20AF0();
        v20 = sub_22CA21000();
        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          v22 = swift_slowAlloc();
          v26[0] = v22;
          *v21 = 136315394;

          v23 = sub_22C9D60B0(v6, v5, v26);

          *(v21 + 4) = v23;
          *(v21 + 12) = 2048;
          *(v21 + 14) = 100;
          _os_log_impl(&dword_22C9CA000, v19, v20, "Ignoring nowPlayEvent from bundleID %s, reached the max records to fetch: (%ld)", v21, 0x16u);
          sub_22C9D04CC(v22);
          MEMORY[0x2318BB680](v22, -1, -1);
          MEMORY[0x2318BB680](v21, -1, -1);
        }

        return 0;
      }
    }

    else
    {
      swift_endAccess();
    }

    return 1;
  }

  return 0;
}

void sub_22C9EF750(void *a1, uint64_t *a2, uint64_t *a3)
{
  v6 = [a1 eventBody];
  if (v6)
  {
    v7 = v6;
    v8 = 0xEE0044494F4E2E65;
    v45 = 0x6C7070612E6D6F63;
    v9 = [a1 eventBody];
    if (v9)
    {
      v10 = v9;
      v11 = [v9 bundleID];
      if (v11)
      {
        v12 = v11;
        v45 = sub_22CA20E20();
        v8 = v13;
      }
    }

    if (![v7 duration])
    {

      return;
    }

    v14 = v7;
    if ([v14 playbackState] != 1)
    {

LABEL_18:
      return;
    }

    v15 = sub_22C9DDEC8(v14, &selRef_title);
    v43 = v16;
    v44 = v15;
    v17 = sub_22C9DDEC8(v14, &selRef_artist);
    v41 = v18;
    v42 = v17;
    v19 = sub_22C9DDEC8(v14, &selRef_album);
    v21 = v20;
    v22 = sub_22C9DDEC8(v14, &selRef_iTunesStoreIdentifier);
    v24 = v23;

    [a1 timestamp];
    v26 = v25;

    sub_22C9E2CF4(v44, v43, v42, v41, v19, v21, v22, v24, __src, v26, 0, 0, v45, v8);
    swift_beginAccess();
    sub_22C9F9A58(sub_22CA11AF8);
    v27 = *(*a2 + 16);
    sub_22C9F9AE0(v27, sub_22CA11AF8);
    v28 = *a2;
    *(v28 + 16) = v27 + 1;
    memcpy((v28 + 112 * v27 + 32), __src, 0x70uLL);
    swift_endAccess();
    swift_beginAccess();
    v29 = *a3;
    swift_isUniquelyReferenced_nonNull_native();
    v30 = *a3;
    v46 = *a3;
    *a3 = 0x8000000000000000;
    v31 = sub_22C9FBFA8(v45, v8);
    if (__OFADD__(*(v30 + 16), (v32 & 1) == 0))
    {
      __break(1u);
    }

    else
    {
      v33 = v31;
      v34 = v32;
      sub_22C9D02E4(&qword_27D9E4F20, &qword_22CA23AF0);
      if (sub_22CA21250())
      {
        v35 = sub_22C9FBFA8(v45, v8);
        if ((v34 & 1) != (v36 & 1))
        {
LABEL_22:
          sub_22CA213C0();
          __break(1u);
          return;
        }

        v33 = v35;
      }

      *a3 = v46;
      if ((v34 & 1) == 0)
      {
        sub_22CA028F4(v33, v45, v8, 0, v46);
      }

      v37 = *(v46 + 56);
      v38 = *(v37 + 8 * v33);
      v39 = __OFADD__(v38, 1);
      v40 = v38 + 1;
      if (!v39)
      {
        *(v37 + 8 * v33) = v40;
        swift_endAccess();

        goto LABEL_18;
      }
    }

    __break(1u);
    goto LABEL_22;
  }
}

void sub_22C9EFAC4()
{
  sub_22C9DAEF8();
  v46 = v0;
  v42 = v2;
  v43 = v1;
  v3 = sub_22C9D02E4(&unk_27D9E4F00, &unk_22CA232D0);
  v4 = sub_22C9D71B4(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22C9E05C0();
  v9 = v7 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v42 - v11;
  sub_22CA21080();
  if (qword_28143A1D8 != -1)
  {
    sub_22C9FAF4C();
    swift_once();
  }

  v13 = qword_28143A4B0;
  if (qword_27D9E4758 != -1)
  {
    sub_22C9FAFF4();
    swift_once();
  }

  v14 = sub_22CA20AE0();
  v15 = sub_22C9D0494(v14, &unk_27D9E80E0);
  sub_22C9FB008(v15);
  v16 = MEMORY[0x277D84F90];
  v44 = MEMORY[0x277D84F90];
  sub_22C9FAF8C();
  sub_22C9FB024();
  sub_22CA20AC0();
  sub_22C9D7260();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  v47 = sub_22C9D0434(0, &qword_28143A310, 0x277CD3EC0);
  sub_22C9D02E4(&qword_27D9E4F50, &qword_22CA23E58);
  v18 = sub_22CA20E30();
  v20 = v19;
  v21 = [BiomeLibrary() App];
  v45 = v13;
  v22 = v21;
  swift_unknownObjectRelease();
  v23 = [v22 Intent];
  v44 = v23;
  swift_unknownObjectRelease();
  sub_22C9F992C(v42, v12);
  sub_22C9F992C(v43, v9);
  v24 = objc_allocWithZone(MEMORY[0x277CF1A50]);
  sub_22C9FB0E8();
  sub_22C9FAFB4();
  v30 = sub_22C9F97A0(v25, v26, v27, v28, v29);
  sub_22C9D7260();
  v31 = swift_allocObject();
  *(v31 + 16) = sub_22CA20DD0();
  v32 = [v23 publisherWithOptions_];
  sub_22C9FB100();
  v33 = swift_allocObject();
  v33[2] = v18;
  v33[3] = v20;
  v33[4] = v46;
  v33[5] = v31;
  sub_22C9FAFC4(v33);
  v48 = 1107296256;
  v49 = sub_22C9FAF44;
  v50 = &unk_283FCD760;
  v34 = _Block_copy(&v47);

  v35 = [v32 filterWithIsIncluded_];
  _Block_release(v34);

  v51 = sub_22C9F02B8;
  v52 = 0;
  v47 = MEMORY[0x277D85DD0];
  sub_22C9FAFA0();
  v49 = v36;
  v50 = &unk_283FCD788;
  v37 = _Block_copy(&v47);
  sub_22C9FB018();
  v38 = swift_allocObject();
  *(v38 + 16) = v17;
  *(v38 + 24) = v31;
  v51 = sub_22C9F99A8;
  v52 = v38;
  v47 = MEMORY[0x277D85DD0];
  v48 = 1107296256;
  v49 = sub_22C9FAF40;
  v50 = &unk_283FCD7D8;
  v39 = _Block_copy(&v47);

  v40 = [v35 sinkWithCompletion:v37 receiveInput:v39];
  _Block_release(v39);
  _Block_release(v37);

  sub_22CA21070();
  sub_22C9FAF74();
  sub_22C9FB024();
  sub_22CA20AC0();

  sub_22C9FAFE8();
  swift_beginAccess();
  v41 = *(v17 + 16);

  sub_22C9DAF14();
}

uint64_t sub_22C9EFF90(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = [a1 eventBody];
  if (result)
  {
    v10 = result;
    v11 = sub_22C9DDEC8(result, &selRef_intentClass);
    if (v12)
    {
      if (v11 == a2 && v12 == a3)
      {
      }

      else
      {
        v14 = sub_22CA21360();

        if ((v14 & 1) == 0)
        {
          goto LABEL_26;
        }
      }

      v15 = sub_22C9DDEC8(v10, &selRef_bundleID);
      if (v16)
      {
        v17 = v15;
      }

      else
      {
        v17 = 0x6C7070612E6D6F63;
      }

      if (v16)
      {
        v18 = v16;
      }

      else
      {
        v18 = 0xEE0044494F4E2E65;
      }

      if (*(a4 + 16))
      {
        v32[0] = v17;
        v32[1] = v18;
        MEMORY[0x28223BE20](v15);
        v31[2] = v32;

        v19 = sub_22C9F9E10(sub_22C9FAEC4, v31, a4);

        if (!v19)
        {

          return 0;
        }
      }

      swift_beginAccess();
      v20 = *(a5 + 16);
      if (*(v20 + 16) && (, v21 = sub_22C9FBFA8(v17, v18), v23 = v22, , (v23 & 1) != 0))
      {
        v24 = *(*(v20 + 56) + 8 * v21);
        swift_endAccess();
        if (v24 >= 100)
        {
          if (qword_28143A1B8 != -1)
          {
            swift_once();
          }

          v25 = sub_22CA20B10();
          sub_22C9D0494(v25, &unk_28143A450);
          v26 = sub_22CA20AF0();
          v27 = sub_22CA21000();
          if (os_log_type_enabled(v26, v27))
          {
            v28 = swift_slowAlloc();
            v29 = swift_slowAlloc();
            v32[0] = v29;
            *v28 = 136315394;

            v30 = sub_22C9D60B0(v17, v18, v32);

            *(v28 + 4) = v30;
            *(v28 + 12) = 2048;
            *(v28 + 14) = 100;
            _os_log_impl(&dword_22C9CA000, v26, v27, "Ignoring playMediaIntents from bundleID %s, reached max records to fetch: (%ld)", v28, 0x16u);
            sub_22C9D04CC(v29);
            MEMORY[0x2318BB680](v29, -1, -1);
            MEMORY[0x2318BB680](v28, -1, -1);
          }

          goto LABEL_26;
        }
      }

      else
      {
        swift_endAccess();
      }

      return 1;
    }

LABEL_26:

    return 0;
  }

  return result;
}

void sub_22C9F02C4(void *a1, const char *a2)
{
  v3 = [a1 error];
  if (v3)
  {
    v4 = v3;
    if (qword_28143A1B8 != -1)
    {
      sub_22C9FAF60();
      swift_once();
    }

    v5 = sub_22CA20B10();
    sub_22C9D0494(v5, &unk_28143A450);
    v6 = v4;
    oslog = sub_22CA20AF0();
    v7 = sub_22CA21000();

    if (os_log_type_enabled(oslog, v7))
    {
      v8 = sub_22C9D7164();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      v10 = v6;
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 4) = v11;
      *v9 = v11;
      _os_log_impl(&dword_22C9CA000, oslog, v7, a2, v8, 0xCu);
      sub_22C9DF60C(v9, &unk_27D9E5090, &qword_22CA22E00);
      sub_22C9D70C0();
      sub_22C9D70C0();
      v6 = oslog;
      oslog = v10;
    }
  }
}

void sub_22C9F043C(void *a1, void *a2, uint64_t *a3)
{
  v7 = [a1 eventBody];
  if (!v7)
  {
    return;
  }

  v8 = v7;
  v9 = sub_22C9FA314(v7);
  if (v10 >> 60 == 15)
  {
    if (qword_28143A1B8 != -1)
    {
      swift_once();
    }

    v11 = sub_22CA20B10();
    sub_22C9D0494(v11, &unk_28143A450);
    v12 = a1;
    v13 = sub_22CA20AF0();
    v14 = sub_22CA21000();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      *(v15 + 4) = v12;
      *v16 = v12;
      v17 = v12;
      _os_log_impl(&dword_22C9CA000, v13, v14, "InteractionData is empty: %@", v15, 0xCu);
      sub_22C9DF60C(v16, &unk_27D9E5090, &qword_22CA22E00);
      MEMORY[0x2318BB680](v16, -1, -1);
      MEMORY[0x2318BB680](v15, -1, -1);
    }

    goto LABEL_8;
  }

  v18 = v9;
  v19 = v10;
  sub_22C9D0434(0, &qword_28143A0A8, 0x277CCAAC8);
  sub_22C9D0434(0, &unk_28143A0B0, 0x277CD3D58);
  v20 = sub_22CA21060();
  if (!v3)
  {
    v29 = v20;
    if (v20)
    {
      v30 = [v20 intent];
      if (v30)
      {
        v31 = v30;
        objc_opt_self();
        v32 = swift_dynamicCastObjCClass();
        if (v32)
        {
          v55 = v29;
          v58 = v32;
          v33 = sub_22C9DDEC8(v8, &selRef_bundleID);
          v35 = 0x6C7070612E6D6F63;
          if (v34)
          {
            v35 = v33;
          }

          v60 = v35;
          if (v34)
          {
            v36 = v34;
          }

          else
          {
            v36 = 0xEE0044494F4E2E65;
          }

          v57 = v31;
          v59 = v36;

          [a1 timestamp];
          v38 = v37;
          v39 = objc_allocWithZone(type metadata accessor for MSPlayMediaIntent());
          v40 = MSPlayMediaIntent.init(intent:bundleID:date:suggestionSource:)(v58, v60, v36, 0, v38);
          swift_beginAccess();
          v41 = v40;
          MEMORY[0x2318BA9F0]();
          sub_22C9F9AB4(*((*a2 & 0xFFFFFFFFFFFFFF8) + 0x10));
          v56 = v41;
          sub_22CA20F00();
          swift_endAccess();
          swift_beginAccess();
          v42 = *a3;
          swift_isUniquelyReferenced_nonNull_native();
          v43 = *a3;
          v61 = *a3;
          *a3 = 0x8000000000000000;
          v44 = sub_22C9FBFA8(v60, v59);
          if (__OFADD__(*(v43 + 16), (v45 & 1) == 0))
          {
            __break(1u);
          }

          else
          {
            v46 = v44;
            v47 = v45;
            sub_22C9D02E4(&qword_27D9E4F20, &qword_22CA23AF0);
            if (sub_22CA21250())
            {
              v48 = v59;
              v49 = sub_22C9FBFA8(v60, v59);
              if ((v47 & 1) != (v50 & 1))
              {
LABEL_38:
                sub_22CA213C0();
                __break(1u);
                return;
              }

              v46 = v49;
            }

            else
            {
              v48 = v59;
            }

            *a3 = v61;
            if ((v47 & 1) == 0)
            {
              sub_22CA028F4(v46, v60, v48, 0, v61);
            }

            v51 = *(v61 + 56);
            v52 = *(v51 + 8 * v46);
            v53 = __OFADD__(v52, 1);
            v54 = v52 + 1;
            if (!v53)
            {
              *(v51 + 8 * v46) = v54;
              swift_endAccess();
              sub_22C9FAB40(v18, v19);

              goto LABEL_8;
            }
          }

          __break(1u);
          goto LABEL_38;
        }
      }

      sub_22C9FAB40(v18, v19);
    }

    else
    {
      sub_22C9FAB40(v18, v19);
    }

LABEL_8:

    return;
  }

  if (qword_28143A1B8 != -1)
  {
    swift_once();
  }

  v21 = sub_22CA20B10();
  sub_22C9D0494(v21, &unk_28143A450);
  v22 = v3;
  v23 = sub_22CA20AF0();
  v24 = sub_22CA21000();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v25 = 138412290;
    v27 = v3;
    v28 = _swift_stdlib_bridgeErrorToNSError();
    *(v25 + 4) = v28;
    *v26 = v28;
    _os_log_impl(&dword_22C9CA000, v23, v24, "Error unarchiving interaction: %@", v25, 0xCu);
    sub_22C9DF60C(v26, &unk_27D9E5090, &qword_22CA22E00);
    MEMORY[0x2318BB680](v26, -1, -1);
    MEMORY[0x2318BB680](v25, -1, -1);
    sub_22C9FAB40(v18, v19);
  }

  else
  {
    sub_22C9FAB40(v18, v19);
  }
}

void *sub_22C9F0A1C(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = sub_22C9D02E4(&unk_27D9E4F00, &unk_22CA232D0);
  v8 = sub_22C9D71B4(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22C9E05C0();
  v13 = v11 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v71 - v15;
  sub_22CA21080();
  if (qword_28143A1D8 != -1)
  {
    goto LABEL_31;
  }

  while (1)
  {
    v17 = qword_28143A4B0;
    if (qword_27D9E4758 != -1)
    {
      sub_22C9FAFF4();
      swift_once();
    }

    v18 = sub_22CA20AE0();
    sub_22C9D0494(v18, &unk_27D9E80E0);
    v19 = MEMORY[0x277D84F90];
    sub_22C9FAF8C();
    sub_22C9FB024();
    v75 = v20;
    sub_22CA20AC0();
    type metadata accessor for MSSuggestionPlaybackRewardFeatureStore();
    sub_22C9FB018();
    swift_allocObject();
    v84 = sub_22CA01FF0();
    sub_22C9D7260();
    v83 = swift_allocObject();
    *(v83 + 16) = MEMORY[0x277D84FA0];
    sub_22C9D7260();
    v21 = swift_allocObject();
    v73 = v17;
    v82 = v21;
    *(v21 + 16) = v19;
    v74 = (v21 + 16);
    sub_22C9D7260();
    v22 = swift_allocObject();
    v85 = v22;
    *(v22 + 16) = 0;
    v81 = (v22 + 16);
    v23 = [BiomeLibrary() App];
    swift_unknownObjectRelease();
    sub_22C9F992C(a3, v16);
    sub_22C9F992C(a4, v13);
    v24 = objc_allocWithZone(MEMORY[0x277CF1A50]);
    sub_22C9FB0DC();
    sub_22C9FAFE8();
    v29 = sub_22C9F97A0(v25, v26, v27, v28, 1);
    sub_22C9D7260();
    a3 = swift_allocObject();
    *(a3 + 16) = 0;
    v30 = [a1 maxSuggestions];
    aBlock = sub_22C9D0434(0, &qword_28143A310, 0x277CD3EC0);
    sub_22C9D02E4(&qword_27D9E4F50, &qword_22CA23E58);
    v31 = sub_22CA20E30();
    v33 = v32;
    sub_22C9D7260();
    v34 = swift_allocObject();
    v34[2] = sub_22CA20DD0();
    v35 = [v23 Intent];
    swift_unknownObjectRelease();
    v78 = v29;
    v36 = [v35 publisherWithOptions_];

    sub_22C9FB100();
    v37 = swift_allocObject();
    v37[2] = v31;
    v37[3] = v33;
    v37[4] = a1;
    v37[5] = v34;
    v91 = sub_22C9FAB00;
    v92 = v37;
    aBlock = MEMORY[0x277D85DD0];
    v88 = 1107296256;
    v89 = sub_22C9FAF44;
    v90 = &unk_283FCDB98;
    v38 = _Block_copy(&aBlock);
    v39 = a1;

    v80 = [v36 filterWithIsIncluded_];
    _Block_release(v38);

    v91 = sub_22C9F1878;
    v92 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v88 = 1107296256;
    v89 = sub_22C9FAF40;
    v90 = &unk_283FCDBC0;
    v79 = _Block_copy(&aBlock);
    v40 = swift_allocObject();
    v40[2] = v39;
    v40[3] = a3;
    v72 = v30;
    v41 = v84;
    v42 = v85;
    v40[4] = v30;
    v40[5] = v41;
    v43 = v82;
    v44 = v83;
    v40[6] = v34;
    v40[7] = v44;
    v40[8] = v43;
    v40[9] = v42;
    v91 = sub_22C9FAB0C;
    v92 = v40;
    aBlock = MEMORY[0x277D85DD0];
    v88 = 1107296256;
    v89 = sub_22C9FAF40;
    v90 = &unk_283FCDC10;
    v45 = _Block_copy(&aBlock);
    v46 = v39;
    v76 = v34;

    v77 = a3;

    v48 = v79;
    v47 = v80;
    v49 = [v80 sinkWithCompletion:v79 receiveInput:v45];
    v50 = sub_22C9FB0E8();
    _Block_release(v50);
    _Block_release(v48);

    v51 = v81;
    sub_22C9FAFE8();
    swift_beginAccess();
    v52 = *v51;
    if (v52)
    {
      break;
    }

    sub_22CA21070();
    v54 = MEMORY[0x277D84F90];
    sub_22C9FB024();
    sub_22CA20AC0();
    v55 = v74;
    sub_22C9FAFE8();
    swift_beginAccess();
    v16 = *v55;
    v86 = v54;
    a1 = sub_22C9E6DA0(v16);
    a4 = v16 & 0xC000000000000001;

    v13 = 0;
    v56 = v72;
    while (1)
    {
      if (a1 == v13)
      {

        v60 = sub_22C9F220C(v56, v86, sub_22C9E6DA0, type metadata accessor for MSSuggestion);
        v34 = v61;
        v63 = v62;
        v65 = v64;
        v66 = v78;
        if ((v64 & 1) == 0)
        {
          goto LABEL_18;
        }

        sub_22CA21370();
        swift_unknownObjectRetain_n();
        v68 = swift_dynamicCastClass();
        if (!v68)
        {
          swift_unknownObjectRelease();
          v68 = MEMORY[0x277D84F90];
        }

        v69 = *(v68 + 16);

        if (__OFSUB__(v65 >> 1, v63))
        {
          __break(1u);
        }

        else if (v69 == (v65 >> 1) - v63)
        {
          if (swift_dynamicCastClass())
          {
            sub_22C9FB0DC();
            swift_unknownObjectRelease();
          }

          else
          {

            swift_unknownObjectRelease_n();
            v34 = MEMORY[0x277D84F90];
          }

          goto LABEL_27;
        }

        swift_unknownObjectRelease();
LABEL_18:
        sub_22C9FA050(v60, v34, v63, v65);
        v34 = v67;

        swift_unknownObjectRelease();

LABEL_27:

        return v34;
      }

      if (a4)
      {
        v57 = MEMORY[0x2318BAD10](v13, v16);
      }

      else
      {
        if (v13 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_30;
        }

        v57 = *(v16 + 8 * v13 + 32);
      }

      v58 = v57;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      sub_22C9DDEBC(v57);
      if (v59)
      {

        sub_22CA211F0();
        a3 = *(v86 + 16);
        sub_22CA21220();
        sub_22CA21230();
        sub_22CA21200();
      }

      else
      {
      }

      ++v13;
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    sub_22C9FAF4C();
    swift_once();
  }

  swift_willThrow();
  v53 = v52;

  return v34;
}

void sub_22C9F12B0(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v9 = [a1 eventBody];
  if (v9)
  {
    v10 = v9;
    v11 = sub_22C9DDEC8(v9, &selRef_intentClass);
    if (!v12)
    {
LABEL_33:

      return;
    }

    if (v11 == a2 && v12 == a3)
    {
    }

    else
    {
      v14 = sub_22CA21360();

      if ((v14 & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    v19 = [a4 allowedBundleIdentifiers];
    v20 = sub_22CA20EC0();

    if (!*(v20 + 16))
    {

LABEL_44:

      return;
    }

    v21 = sub_22C9DDEC8(v10, &selRef_bundleID);
    if (v22)
    {
      v23 = v21;
    }

    else
    {
      v23 = 0x6C7070612E6D6F63;
    }

    if (v22)
    {
      v24 = v22;
    }

    else
    {
      v24 = 0xEE0044494F4E2E65;
    }

    v49 = v23;
    v50 = v24;
    MEMORY[0x28223BE20](v21);
    v48[2] = &v49;
    if (sub_22C9F9E10(sub_22C9FAEC4, v48, v20))
    {

      if ([a4 suggestionSourceType] == 1)
      {

        return;
      }

      swift_beginAccess();
      v39 = *(a5 + 16);
      if (*(v39 + 16) && (v40 = sub_22C9FBFA8(v23, v24), (v41 & 1) != 0))
      {
        v42 = *(*(v39 + 56) + 8 * v40);
        swift_endAccess();
        if (v42 >= 100)
        {
          if (qword_28143A1B8 != -1)
          {
            swift_once();
          }

          v43 = sub_22CA20B10();
          sub_22C9D0494(v43, &unk_28143A450);

          v26 = sub_22CA20AF0();
          v44 = sub_22CA21000();

          if (!os_log_type_enabled(v26, v44))
          {

            goto LABEL_32;
          }

          v45 = swift_slowAlloc();
          v46 = swift_slowAlloc();
          v49 = v46;
          *v45 = 136315394;
          v47 = sub_22C9D60B0(v23, v24, &v49);

          *(v45 + 4) = v47;
          *(v45 + 12) = 2048;
          *(v45 + 14) = 100;
          _os_log_impl(&dword_22C9CA000, v26, v44, "Ignoring playMediaIntents from bundleID %s, reached max records to fetch: (%ld)", v45, 0x16u);
          sub_22C9D04CC(v46);
          MEMORY[0x2318BB680](v46, -1, -1);
          v38 = v45;
LABEL_31:
          MEMORY[0x2318BB680](v38, -1, -1);
LABEL_32:

          goto LABEL_33;
        }
      }

      else
      {
        swift_endAccess();
      }

      goto LABEL_44;
    }

    if (qword_28143A320 != -1)
    {
      swift_once();
    }

    v25 = sub_22CA20B10();
    sub_22C9D0494(v25, &unk_28143A4E0);

    v10 = v10;
    v26 = sub_22CA20AF0();
    v27 = sub_22CA20FF0();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v49 = v29;
      *v28 = 136315394;
      v30 = MEMORY[0x2318BAA20](v20, MEMORY[0x277D837D0]);
      v32 = v31;

      v33 = sub_22C9D60B0(v30, v32, &v49);

      *(v28 + 4) = v33;
      *(v28 + 12) = 2080;
      v34 = sub_22C9DDEC8(v10, &selRef_bundleID);
      v36 = v35;

      if (v36)
      {
        v37 = sub_22C9D60B0(v34, v36, &v49);

        *(v28 + 14) = v37;
        _os_log_impl(&dword_22C9CA000, v26, v27, "Returning false since allowedBundles %s, bundleId: %s", v28, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x2318BB680](v29, -1, -1);
        v38 = v28;
        goto LABEL_31;
      }

      __break(1u);
    }

    else
    {
    }
  }

  else
  {
    if (qword_28143A320 != -1)
    {
      swift_once();
    }

    v15 = sub_22CA20B10();
    sub_22C9D0494(v15, &unk_28143A4E0);
    v16 = sub_22CA20AF0();
    v17 = sub_22CA21010();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_22C9CA000, v16, v17, "INPlayMediaIntent: Eventbody is missing", v18, 2u);
      MEMORY[0x2318BB680](v18, -1, -1);
    }
  }
}

void sub_22C9F1884(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v17 = MEMORY[0x2318BB0B0]();
  sub_22C9F1938(a1, a2, (a3 + 16), a4, a5, (a6 + 16), (a7 + 16), (a8 + 16), (a9 + 16));

  objc_autoreleasePoolPop(v17);
}

void sub_22C9F1938(void *a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7, void *a8, void **a9)
{
  v99 = a8;
  v16 = [a1 eventBody];
  if (!v16)
  {
    return;
  }

  v17 = v16;
  if ([a2 suggestionSourceType] == 1)
  {
LABEL_12:

    return;
  }

  v18 = sub_22C9FA314(v17);
  if (v19 >> 60 == 15)
  {
    if (qword_28143A320 != -1)
    {
      swift_once();
    }

    v20 = sub_22CA20B10();
    sub_22C9D0494(v20, &unk_28143A4E0);
    v21 = a1;
    v22 = sub_22CA20AF0();
    v23 = sub_22CA21000();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138412290;
      *(v24 + 4) = v21;
      *v25 = v21;
      v26 = v21;
      _os_log_impl(&dword_22C9CA000, v22, v23, "InteractionData is empty: %@", v24, 0xCu);
      sub_22C9DF60C(v25, &unk_27D9E5090, &qword_22CA22E00);
      MEMORY[0x2318BB680](v25, -1, -1);
      MEMORY[0x2318BB680](v24, -1, -1);
    }

    goto LABEL_12;
  }

  v27 = v19;
  v97 = v18;
  swift_beginAccess();
  if (*a3 > a4)
  {
    v28 = v97;
    v29 = v27;
LABEL_11:
    sub_22C9FAB40(v28, v29);
    goto LABEL_12;
  }

  sub_22C9D0434(0, &qword_28143A0A8, 0x277CCAAC8);
  sub_22C9D0434(0, &unk_28143A0B0, 0x277CD3D58);
  v30 = sub_22CA21060();
  if (!v9)
  {
    v42 = v30;
    if (!v30)
    {

      sub_22C9FAB40(v97, v27);
      return;
    }

    v43 = [v30 intent];
    if (v43)
    {
      v94 = v43;
      objc_opt_self();
      v44 = swift_dynamicCastObjCClass();
      if (v44)
      {
        v89 = v42;
        v92 = v27;
        v45 = v44;
        v46 = sub_22C9DDEC8(v17, &selRef_bundleID);
        if (v47)
        {
          v48 = v46;
        }

        else
        {
          v48 = 0;
        }

        v90 = v48;
        if (v47)
        {
          v49 = v47;
        }

        else
        {
          v49 = 0xE000000000000000;
        }

        type metadata accessor for MSSuggesterUtils();
        v93 = v45;
        v50 = sub_22CA1651C(v45, v90, v49);

        if ((v50 & 1) == 0)
        {

LABEL_47:
          v28 = v97;
          v29 = v92;
          goto LABEL_11;
        }

        v51 = sub_22C9DDEC8(v17, &selRef_bundleID);
        if (v52)
        {
          v53 = v51;
        }

        else
        {
          v53 = 0x6C7070612E6D6F63;
        }

        v91 = v53;
        if (v52)
        {
          v54 = v52;
        }

        else
        {
          v54 = 0xEE0044494F4E2E65;
        }

        v87 = objc_allocWithZone(MSUnifiedMediaIntent);
        v88 = v94;

        v55 = sub_22CA20E10();

        v95 = [v87 initWithIntent:v93 bundleID:v55];

        v56 = objc_allocWithZone(MSSuggestion);

        v86 = v95;
        v96 = v54;
        v57 = sub_22C9DDDC8(v86, v91, v54, 0);
        [a1 timestamp];
        [v57 setIntentDate_];
        [v57 setIntent_];
        sub_22C9DDEBC(v57);
        if (v58)
        {

          [a1 timestamp];
          sub_22CA00C9C(v57, 84, v59);
        }

        v85 = v57;
        swift_beginAccess();
        v60 = *a6;
        swift_isUniquelyReferenced_nonNull_native();
        v98 = *a6;
        v61 = v98;
        *a6 = 0x8000000000000000;
        v62 = sub_22C9FBFA8(v91, v96);
        if (__OFADD__(*(v61 + 16), (v63 & 1) == 0))
        {
          __break(1u);
        }

        else
        {
          v64 = v62;
          v65 = v63;
          sub_22C9D02E4(&qword_27D9E4F20, &qword_22CA23AF0);
          v66 = v98;
          if (sub_22CA21250())
          {
            v67 = sub_22C9FBFA8(v91, v96);
            v69 = v92;
            if ((v65 & 1) != (v68 & 1))
            {
LABEL_63:
              sub_22CA213C0();
              __break(1u);
              return;
            }

            v64 = v67;
          }

          else
          {
            v69 = v92;
          }

          *a6 = v98;
          if ((v65 & 1) == 0)
          {
            sub_22CA028F4(v64, v91, v96, 0, v66);
          }

          v70 = *(v66 + 56);
          v71 = *(v70 + 8 * v64);
          v72 = __OFADD__(v71, 1);
          v73 = v71 + 1;
          if (!v72)
          {
            *(v70 + 8 * v64) = v73;
            swift_endAccess();

            v74 = [v93 mediaContainer];
            if (v74)
            {
              v75 = v74;
              v76 = sub_22C9D6670(v74);
              if (v77)
              {
                v78 = v76;
                v79 = v77;
                swift_beginAccess();
                v80 = *a7;

                v81 = sub_22CA148CC(v78, v79, v80);

                if (v81)
                {

                  goto LABEL_47;
                }

                swift_beginAccess();
                sub_22CA15904(&v98, v78, v79);
                swift_endAccess();

                v69 = v92;
              }

              else
              {
              }
            }

            v82 = v99;
            v83 = swift_beginAccess();
            MEMORY[0x2318BA9F0](v83);
            sub_22C9F9AB4(*((*v82 & 0xFFFFFFFFFFFFFF8) + 0x10));
            sub_22CA20F00();
            swift_endAccess();

            sub_22C9FAB40(v97, v69);
            swift_beginAccess();
            v84 = *a3 + 1;
            if (!__OFADD__(*a3, 1))
            {
              swift_beginAccess();
              *a3 = v84;
              return;
            }

            goto LABEL_62;
          }
        }

        __break(1u);
LABEL_62:
        __break(1u);
        goto LABEL_63;
      }
    }

    else
    {
    }

    sub_22C9FAB40(v97, v27);

    return;
  }

  if (qword_28143A320 != -1)
  {
    swift_once();
  }

  v31 = sub_22CA20B10();
  sub_22C9D0494(v31, &unk_28143A4E0);
  v32 = v9;
  v33 = sub_22CA20AF0();
  v34 = sub_22CA21000();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = v27;
    v37 = swift_slowAlloc();
    *v35 = 138412290;
    v38 = v9;
    v39 = _swift_stdlib_bridgeErrorToNSError();
    *(v35 + 4) = v39;
    *v37 = v39;
    _os_log_impl(&dword_22C9CA000, v33, v34, "Error unarchiving interaction: %@", v35, 0xCu);
    sub_22C9DF60C(v37, &unk_27D9E5090, &qword_22CA22E00);
    v40 = v37;
    v27 = v36;
    MEMORY[0x2318BB680](v40, -1, -1);
    MEMORY[0x2318BB680](v35, -1, -1);
  }

  sub_22C9FAB40(v97, v27);
  swift_beginAccess();
  v41 = *a9;
  *a9 = v9;
}

uint64_t sub_22C9F220C(uint64_t a1, unint64_t a2, uint64_t (*a3)(unint64_t), void (*a4)(void))
{
  if (a1 < 0)
  {
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    v13 = sub_22CA212E0();

    return v13;
  }

  v7 = a3(a2);
  v8 = sub_22C9FA554(0, a1, v7);
  if (v9)
  {
    v10 = v7;
  }

  else
  {
    v10 = v8;
  }

  if (v10 < 0)
  {
    goto LABEL_16;
  }

  sub_22C9FA5A0(0, a2);
  sub_22C9FA5A0(v10, a2);
  if ((a2 & 0xC000000000000001) != 0 && v10)
  {
    a4(0);
    sub_22C9FB0F4();

    v11 = 0;
    do
    {
      v12 = v11 + 1;
      sub_22CA211B0();
      v11 = v12;
    }

    while (v10 != v12);
  }

  else
  {
  }

  if (a2 >> 62)
  {
    goto LABEL_17;
  }

  return a2 & 0xFFFFFFFFFFFFFF8;
}

void sub_22C9F234C()
{
  sub_22C9DAEF8();
  v1 = v0;
  v3 = v2;
  v4 = sub_22C9D02E4(&unk_27D9E4F00, &unk_22CA232D0);
  v5 = sub_22C9D71B4(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22C9E05C0();
  MEMORY[0x28223BE20](v8);
  sub_22CA21080();
  if (qword_28143A1D8 != -1)
  {
    sub_22C9FAF4C();
    swift_once();
  }

  if (qword_27D9E4750 != -1)
  {
    swift_once();
  }

  v9 = sub_22CA20AE0();
  v10 = sub_22C9D0494(v9, &unk_27D9E80C8);
  sub_22C9FB008(v10);
  sub_22C9FAF8C();
  sub_22C9FB024();
  sub_22CA20AC0();
  type metadata accessor for MSSuggestionFeedbackRewardFeatureStore();
  sub_22C9FB03C();
  swift_allocObject();
  v11 = sub_22C9FFF6C();
  v12 = [BiomeLibrary() MediaSuggester];
  swift_unknownObjectRelease();
  v36 = [v12 SuggestionFeedback];
  swift_unknownObjectRelease();
  v13 = sub_22CA209F0();
  sub_22C9FB0D0();
  sub_22C9D0B98(v14, v15, v16, v13);
  sub_22C9FB0D0();
  sub_22C9D0B98(v17, v18, v19, v13);
  v20 = objc_allocWithZone(MEMORY[0x277CF1A50]);
  sub_22C9FAFB4();
  v26 = sub_22C9F97A0(v21, v22, v23, v24, v25);
  sub_22C9D7260();
  v27 = swift_allocObject();
  *(v27 + 16) = sub_22CA20DD0();
  v28 = [v36 publisherWithOptions_];
  sub_22C9FB03C();
  v29 = swift_allocObject();
  *(v29 + 16) = v1;
  *(v29 + 24) = v3;
  *(v29 + 32) = v27;
  v41 = sub_22C9FAAEC;
  v42 = v29;
  v37 = MEMORY[0x277D85DD0];
  v38 = 1107296256;
  v39 = sub_22C9FAF44;
  v40 = &unk_283FCDA30;
  v30 = _Block_copy(&v37);

  v31 = [v28 filterWithIsIncluded_];
  _Block_release(v30);

  v41 = sub_22C9F2AF8;
  v42 = 0;
  v39 = sub_22C9FAF40;
  v40 = &unk_283FCDA58;
  v32 = _Block_copy(&v37);
  sub_22C9FB018();
  v33 = swift_allocObject();
  *(v33 + 16) = v11;
  *(v33 + 24) = v27;
  v41 = sub_22C9FAAF8;
  v42 = v33;
  v37 = MEMORY[0x277D85DD0];
  v38 = 1107296256;
  v39 = sub_22C9FAF40;
  v40 = &unk_283FCDAA8;
  v34 = _Block_copy(&v37);

  v35 = [v31 sinkWithCompletion:v32 receiveInput:v34];
  _Block_release(v34);
  _Block_release(v32);

  sub_22CA21070();
  sub_22C9FAF74();
  sub_22C9FB024();
  sub_22CA20AC0();

  sub_22C9DAF14();
}

uint64_t sub_22C9F27F4(void *a1, int a2, uint64_t a3, uint64_t a4)
{
  v7 = 0xEE0044494F4E2E65;
  v8 = 0x6C7070612E6D6F63;
  v9 = [a1 eventBody];
  if (v9)
  {
    v10 = v9;
    v11 = sub_22C9DDEC8(v9, &selRef_targetBundleID);
    if (v12)
    {
      v13 = v11;
      v14 = v12;
      v15 = [v10 isNowPlaying];

      if ((((a2 != 1) ^ v15) & 1) == 0)
      {
        goto LABEL_18;
      }

      v8 = v13;
      v7 = v14;
    }

    else
    {
    }
  }

  if (!*(a3 + 16) || (v30[0] = v8, v30[1] = v7, MEMORY[0x28223BE20](v9), v29[2] = v30, , v16 = sub_22C9F9E10(sub_22C9E9828, v29, a3), , v16))
  {
    swift_beginAccess();
    v17 = *(a4 + 16);
    if (*(v17 + 16) && (, v18 = sub_22C9FBFA8(v8, v7), v20 = v19, , (v20 & 1) != 0))
    {
      v21 = *(*(v17 + 56) + 8 * v18);
      swift_endAccess();
      if (v21 >= 100)
      {
        if (qword_28143A1B8 != -1)
        {
          swift_once();
        }

        v22 = sub_22CA20B10();
        sub_22C9D0494(v22, &unk_28143A450);
        v23 = sub_22CA20AF0();
        v24 = sub_22CA21000();
        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          v26 = swift_slowAlloc();
          v30[0] = v26;
          *v25 = 136315394;

          v27 = sub_22C9D60B0(v8, v7, v30);

          *(v25 + 4) = v27;
          *(v25 + 12) = 2048;
          *(v25 + 14) = 100;
          _os_log_impl(&dword_22C9CA000, v23, v24, "Ignoring feedback from bundleID %s, reached max records to fetch: (%ld)", v25, 0x16u);
          sub_22C9D04CC(v26);
          MEMORY[0x2318BB680](v26, -1, -1);
          MEMORY[0x2318BB680](v25, -1, -1);
        }

        return 0;
      }
    }

    else
    {
      swift_endAccess();
    }

    return 1;
  }

LABEL_18:

  return 0;
}

void sub_22C9F2B04(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = MEMORY[0x2318BB0B0]();
  sub_22C9F2B6C(a1, a2, (a3 + 16));

  objc_autoreleasePoolPop(v6);
}

void sub_22C9F2B6C(void *a1, uint64_t a2, uint64_t *a3)
{
  v5 = [a1 eventBody];
  if (v5)
  {
    v6 = v5;
    v35 = a1;
    v7 = [v5 intent];
    if (v7)
    {
      v8 = v7;
      [v7 eventTimestamp];
      [v6 workoutType];
      sub_22C9FF7D0(v8);
    }

    v9 = [v6 suggestionsIntent];
    sub_22C9D0434(0, &qword_27D9E4970, 0x277CF1340);
    v10 = sub_22CA20EC0();

    v11 = sub_22C9E6DA0(v10);
    if (v11)
    {
      v12 = v11;
      if (v11 < 1)
      {
        goto LABEL_26;
      }

      v13 = 0;
      do
      {
        if ((v10 & 0xC000000000000001) != 0)
        {
          v14 = MEMORY[0x2318BAD10](v13, v10);
        }

        else
        {
          v14 = *(v10 + 8 * v13 + 32);
        }

        v15 = v14;
        ++v13;
        [v14 eventTimestamp];
        [v6 workoutType];
        sub_22C9FF998(v15);
      }

      while (v12 != v13);
    }

    v16 = 0xEE0044494F4E2E65;
    v17 = 0x6C7070612E6D6F63;

    v18 = [v35 eventBody];
    if (v18)
    {
      v19 = v18;
      v20 = [v18 targetBundleID];
      if (v20)
      {
        v21 = v20;
        v17 = sub_22CA20E20();
        v16 = v22;
      }
    }

    swift_beginAccess();
    v23 = *a3;
    swift_isUniquelyReferenced_nonNull_native();
    v24 = *a3;
    v36 = *a3;
    *a3 = 0x8000000000000000;
    v25 = sub_22C9FBFA8(v17, v16);
    if (__OFADD__(*(v24 + 16), (v26 & 1) == 0))
    {
      __break(1u);
    }

    else
    {
      v27 = v25;
      v28 = v26;
      sub_22C9D02E4(&qword_27D9E4F20, &qword_22CA23AF0);
      if (sub_22CA21250())
      {
        v29 = sub_22C9FBFA8(v17, v16);
        if ((v28 & 1) != (v30 & 1))
        {
LABEL_27:
          sub_22CA213C0();
          __break(1u);
          return;
        }

        v27 = v29;
      }

      *a3 = v36;
      if ((v28 & 1) == 0)
      {
        sub_22CA028F4(v27, v17, v16, 0, v36);
      }

      v31 = *(v36 + 56);
      v32 = *(v31 + 8 * v27);
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (!v33)
      {
        *(v31 + 8 * v27) = v34;
        swift_endAccess();

        return;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }
}

void sub_22C9F2EA4()
{
  sub_22C9DAEF8();
  v1 = v0;
  v3 = v2;
  v4 = sub_22C9D02E4(&unk_27D9E4F00, &unk_22CA232D0);
  v5 = sub_22C9D71B4(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22C9E05C0();
  MEMORY[0x28223BE20](v8);
  sub_22CA21080();
  if (qword_28143A1D8 != -1)
  {
    goto LABEL_82;
  }

  while (1)
  {
    if (qword_27D9E4748 != -1)
    {
      swift_once();
    }

    v9 = sub_22CA20AE0();
    sub_22C9D0494(v9, &unk_27D9E80B0);
    v10 = MEMORY[0x277D84F90];
    sub_22C9FAF8C();
    sub_22C9FB024();
    sub_22CA20AC0();
    v124 = v10;
    v118 = v10;
    v11 = sub_22C9E6DA0(v3);
    v12 = 0;
    v115 = v3 & 0xFFFFFFFFFFFFFF8;
    v116 = v3 & 0xC000000000000001;
    v111 = v3 + 32;
    v13 = 0x27872A000uLL;
    while (v11 != v12)
    {
      if (v116)
      {
        v14 = MEMORY[0x2318BAD10](v12, v3);
      }

      else
      {
        if (v12 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_79;
        }

        v14 = *(v3 + 8 * v12 + 32);
      }

      v15 = v14;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_78;
      }

      if ([v14 *(v13 + 3672)] == 1)
      {
        sub_22CA211F0();
        v16 = v118[2];
        sub_22CA21220();
        sub_22CA21230();
        sub_22CA21200();
        v13 = 0x27872A000;
      }

      else
      {
      }

      ++v12;
    }

    v17 = v118;
    v18 = sub_22C9E6DA0(v118);
    v19 = MEMORY[0x277D84F90];
    v110 = v3;
    v114 = v11;
    if (!v18)
    {
      goto LABEL_24;
    }

    v20 = v18;
    v118 = MEMORY[0x277D84F90];
    sub_22CA0CDC0();
    if (v20 < 0)
    {
      break;
    }

    v21 = 0;
    v19 = v118;
    do
    {
      if ((v17 & 0xC000000000000001) != 0)
      {
        v22 = MEMORY[0x2318BAD10](v21, v17);
      }

      else
      {
        v22 = *(v17 + 8 * v21 + 32);
      }

      v23 = v22;
      v24 = sub_22C9DDEBC(v22);
      v26 = v25;

      v118 = v19;
      v3 = v19[2];
      v27 = v19[3];
      if (v3 >= v27 >> 1)
      {
        sub_22C9FB058(v27);
        sub_22CA0CDC0();
        v19 = v118;
      }

      ++v21;
      v19[2] = v3 + 1;
      v28 = &v19[2 * v3];
      v28[4] = v24;
      v28[5] = v26;
      v11 = v114;
    }

    while (v20 != v21);
LABEL_24:
    sub_22C9D7260();
    v29 = swift_allocObject();
    *(v29 + 16) = v19;
    v30 = [BiomeLibrary() App];
    sub_22C9FB0DC();
    swift_unknownObjectRelease();
    v31 = [v19 Intents];
    swift_unknownObjectRelease();
    v32 = [v31 Transcript];
    sub_22C9FB0F4();
    swift_unknownObjectRelease();
    v33 = sub_22CA209F0();
    sub_22C9FB0D0();
    sub_22C9D0B98(v34, v35, v36, v33);
    sub_22C9FB0D0();
    sub_22C9D0B98(v37, v38, v39, v33);
    v40 = objc_allocWithZone(MEMORY[0x277CF1A50]);
    sub_22C9FAFB4();
    v46 = sub_22C9F97A0(v41, v42, v43, v44, v45);
    sub_22C9D7260();
    v47 = swift_allocObject();
    *(v47 + 16) = MEMORY[0x277D84F90];
    v48 = (v47 + 16);
    v108 = v3;
    v107 = v46;
    v49 = [v3 publisherWithOptions_];
    v122 = sub_22C9F3A4C;
    v123 = 0;
    v118 = MEMORY[0x277D85DD0];
    v119 = 1107296256;
    v120 = sub_22C9FAF44;
    v121 = &unk_283FCD968;
    v50 = _Block_copy(&v118);
    v51 = [v49 filterWithIsIncluded_];
    _Block_release(v50);

    v122 = sub_22C9F3C00;
    v123 = 0;
    v118 = MEMORY[0x277D85DD0];
    v119 = 1107296256;
    v120 = sub_22C9FAF40;
    v121 = &unk_283FCD990;
    v52 = _Block_copy(&v118);
    sub_22C9FB03C();
    v53 = swift_allocObject();
    v53[2] = v47;
    v53[3] = v17;
    v53[4] = v29;
    v122 = sub_22C9FAAC0;
    v123 = v53;
    v118 = MEMORY[0x277D85DD0];
    v119 = 1107296256;
    v120 = sub_22C9FAF44;
    v121 = &unk_283FCD9E0;
    v54 = _Block_copy(&v118);

    v55 = [v51 sinkWithCompletion:v52 shouldContinue:v54];
    _Block_release(v54);
    _Block_release(v52);

    if (!v11)
    {
LABEL_75:
      sub_22CA21070();
      sub_22C9FAF74();
      sub_22C9FB024();
      sub_22CA20AC0();

      sub_22C9DAF14();
      return;
    }

    sub_22C9FAFE8();
    swift_beginAccess();
    v3 = 0;
    v56 = MEMORY[0x277D84F90];
    v57 = v110;
    v58 = 0x27872A000uLL;
    v109 = (v47 + 16);
    while (1)
    {
      if (v116)
      {
        v59 = MEMORY[0x2318BAD10](v3, v57);
      }

      else
      {
        if (v3 >= *(v115 + 16))
        {
          goto LABEL_81;
        }

        v59 = *(v111 + 8 * v3);
      }

      v60 = v59;
      if (__OFADD__(v3++, 1))
      {
        goto LABEL_80;
      }

      if (![v59 *(v58 + 3672)])
      {
        v73 = v60;
        MEMORY[0x2318BA9F0]();
        sub_22C9FB0A8();
        if (v75)
        {
          sub_22C9FB058(v74);
          sub_22CA20EE0();
        }

        sub_22CA20F00();

        v56 = v124;
        v58 = 0x27872A000;
        goto LABEL_74;
      }

      if ([v60 *(v58 + 3672)] == 1)
      {
        break;
      }

LABEL_74:
      if (v3 == v11)
      {
        goto LABEL_75;
      }
    }

    v112 = v56;
    v113 = v3;
    v62 = *v48;
    v63 = sub_22C9E6DA0(*v48);
    v3 = v62 & 0xFFFFFFFFFFFFFF8;

    for (i = 0; ; ++i)
    {
      if (v63 == i)
      {

        if (qword_28143A1B8 != -1)
        {
          sub_22C9FAF60();
          swift_once();
        }

        v76 = sub_22CA20B10();
        sub_22C9D0494(v76, &unk_28143A450);
        v77 = v60;
        v78 = sub_22CA20AF0();
        v79 = sub_22CA21000();

        v57 = v110;
        v3 = v113;
        if (os_log_type_enabled(v78, v79))
        {
          v80 = sub_22C9D7164();
          v81 = swift_slowAlloc();
          v117 = v81;
          *v80 = 136315138;
          v82 = sub_22C9DDEBC(v77);
          if (v83)
          {
            v84 = v83;
          }

          else
          {
            v82 = 7104846;
            v84 = 0xE300000000000000;
          }

          v85 = sub_22C9D60B0(v82, v84, &v117);

          *(v80 + 4) = v85;
          _os_log_impl(&dword_22C9CA000, v78, v79, "Failed finding: %s", v80, 0xCu);
          sub_22C9D04CC(v81);
          sub_22C9D70C0();
          sub_22C9D70C0();
        }

        else
        {
        }

        v11 = v114;
        goto LABEL_73;
      }

      if ((v62 & 0xC000000000000001) != 0)
      {
        v65 = MEMORY[0x2318BAD10](i, v62);
      }

      else
      {
        if (i >= *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_77;
        }

        v65 = *(v62 + 8 * i + 32);
      }

      v66 = v65;
      if (__OFADD__(i, 1))
      {
        break;
      }

      v67 = *&v65[OBJC_IVAR____TtC14MediaSuggester20MSPlayMediaAppIntent_identifier];
      v68 = *&v65[OBJC_IVAR____TtC14MediaSuggester20MSPlayMediaAppIntent_identifier + 8];

      v69 = sub_22C9DDEBC(v60);
      if (v68)
      {
        if (v70)
        {
          if (v67 == v69 && v68 == v70)
          {

LABEL_68:

            v86 = sub_22CA1EC14();
            v57 = v110;
            if (!v86)
            {

              v3 = v113;
              v11 = v114;
LABEL_73:
              v58 = 0x27872A000;
              v48 = v109;
              v56 = v112;
              goto LABEL_74;
            }

            v87 = v86;
            v88 = &v66[OBJC_IVAR____TtC14MediaSuggester20MSPlayMediaAppIntent_bundleID];
            v89 = *&v66[OBJC_IVAR____TtC14MediaSuggester20MSPlayMediaAppIntent_bundleID];
            v90 = *&v66[OBJC_IVAR____TtC14MediaSuggester20MSPlayMediaAppIntent_bundleID + 8];
            v91 = objc_allocWithZone(MSUnifiedMediaIntent);
            v92 = v87;

            v93 = sub_22CA20E10();

            v94 = [v91 initWithIntent:v92 bundleID:v93];

            v95 = *v88;
            v96 = v88[1];
            v97 = *&v66[OBJC_IVAR____TtC14MediaSuggester20MSPlayMediaAppIntent_suggestionSource];
            v98 = objc_allocWithZone(MSSuggestion);
            v99 = v94;

            v100 = sub_22C9DDDC8(v99, v95, v96, v97);
            v101 = OBJC_IVAR___MSSuggestion_mediaAppIntent;
            sub_22C9DE248();
            v102 = *&v100[v101];
            *&v100[v101] = v66;
            v103 = v66;

            [v100 setIntentDate_];
            v104 = OBJC_IVAR___MSSuggestion_suggestionsLatency;
            v105 = sub_22C9DE248();
            *&v100[v104] = v1;
            MEMORY[0x2318BA9F0](v105);
            sub_22C9FB0A8();
            if (v75)
            {
              sub_22C9FB058(v106);
              sub_22CA20EE0();
            }

            sub_22CA20F00();
            v56 = v124;

            v3 = v113;
            v11 = v114;
            v58 = 0x27872A000;
            v48 = v109;
            goto LABEL_74;
          }

          v72 = sub_22CA21360();

          if (v72)
          {
            goto LABEL_68;
          }
        }

        else
        {
        }
      }

      else
      {
        if (!v70)
        {
          goto LABEL_68;
        }
      }
    }

    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    sub_22C9FAF4C();
    swift_once();
  }

  __break(1u);
}

uint64_t sub_22C9F3A4C(void *a1)
{
  result = [a1 eventBody];
  if (result)
  {
    v2 = result;
    v3 = [result resolvedAction];
    if (v3)
    {
      v4 = v3;
      v5 = sub_22C9DDEC8(v3, &selRef_identifier);
      if (v6)
      {
        if (v5 == 0xD000000000000014 && v6 == 0x800000022CA27930)
        {

          return 1;
        }

        v8 = sub_22CA21360();

        if (v8)
        {
LABEL_21:

          return 1;
        }
      }

      v9 = sub_22C9DDEC8(v4, &selRef_identifier);
      if (v10)
      {
        if (v9 != 0x6964754179616C50 || v10 != 0xEF746E65746E496FLL)
        {
          v12 = sub_22CA21360();

          return (v12 & 1) != 0;
        }

        goto LABEL_21;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_22C9F3BA8(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  LOBYTE(v4) = v4();

  return v4 & 1;
}

uint64_t sub_22C9F3C0C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = MEMORY[0x2318BB0B0]();
  sub_22C9F3C80(a1, (a2 + 16), a3, (a4 + 16), &v10);
  objc_autoreleasePoolPop(v8);
  return v10;
}

void sub_22C9F3C80(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, char *a5@<X8>)
{
  v146 = a4;
  v9 = [a1 eventBody];
  if (!v9)
  {
    goto LABEL_55;
  }

  v144 = v9;
  v143 = a5;
  swift_beginAccess();
  v10 = sub_22C9E6DA0(*a2);
  if (v10 == sub_22C9E6DA0(a3))
  {

    v11 = 0;
LABEL_4:
    a5 = v143;
LABEL_56:
    *a5 = v11;
    return;
  }

  a5 = v143;
  if ([v144 source] != 1 || (v12 = objc_msgSend(v144, sel_resolvedAction)) == 0 || (v13 = v12, v14 = sub_22CA21090(), v13, !v14))
  {

LABEL_55:
    v11 = 1;
    goto LABEL_56;
  }

  v127 = a1;
  v128 = a2;
  v15 = sub_22C9DDEC8(v144, &selRef_bundleID);
  v17 = 0x6C7070612E6D6F63;
  if (v16)
  {
    v17 = v15;
  }

  v138 = v17;
  v18 = 0xEE0044494F4E2E65;
  if (v16)
  {
    v18 = v16;
  }

  v140 = v18;
  v132 = v14;
  v19 = [v14 parameters];
  v20 = sub_22C9D0434(0, &qword_28143A0C0, 0x277D238D8);
  v21 = sub_22CA20EC0();

  v142 = v21;
  v22 = sub_22C9E6DA0(v21);
  v23 = 0x27872A000uLL;
  v147 = a3;
  if (!v22)
  {
    v145 = 0;
    v151 = 0;
LABEL_59:

    v57 = [v132 parameters];
    v58 = sub_22CA20EC0();

    v142 = sub_22C9E6DA0(v58);
    if (!v142)
    {

LABEL_142:

      v11 = 1;
      goto LABEL_4;
    }

    v141 = (v58 & 0xC000000000000001);
    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    v60 = 0;
    v135 = v58 & 0xFFFFFFFFFFFFFF8;
    v139 = v58;
    v134 = v58 + 32;
    v133 = 0x800000022CA25AB0;
    v62 = v138 == 0xD000000000000012 && 0x800000022CA25AB0 == v140;
    LODWORD(v136) = v62;
    v63 = 32;
    if (v151)
    {
      v63 = v145;
    }

    v130 = v63;
    v64 = 0xE100000000000000;
    if (v151)
    {
      v64 = v151;
    }

    v129 = v64;
    v149 = (a3 & 0xFFFFFFFFFFFFFF8);
    v150 = a3 & 0xC000000000000001;
    *&v59 = 136315394;
    v124 = v59;
LABEL_71:
    if (v141)
    {
      v65 = MEMORY[0x2318BAD10](v60, v139);
    }

    else
    {
      if (v60 >= *(v135 + 16))
      {
        goto LABEL_148;
      }

      v65 = *(v134 + 8 * v60);
    }

    v66 = v65;
    v28 = __OFADD__(v60++, 1);
    if (v28)
    {
      goto LABEL_146;
    }

    v67 = [v65 identifier];
    v68 = sub_22CA20E20();
    v70 = v69;

    if (v68 != 0x65646F73697065 || v70 != 0xE700000000000000)
    {
      v72 = sub_22CA21360();

      if (v72)
      {
        goto LABEL_88;
      }

      v73 = [v66 identifier];
      v74 = sub_22CA20E20();
      v76 = v75;

      if (v74 != 0x746E456F69647561 || v76 != 0xEB00000000797469)
      {
        v78 = sub_22CA21360();

        if ((v78 & 1) == 0)
        {
          goto LABEL_95;
        }

LABEL_88:
        v79 = [v66 *(v23 + 3944)];
        if (!v79 || (v80 = v79, v81 = [v79 *(v23 + 3944)], v80, sub_22CA21130(), swift_unknownObjectRelease(), sub_22C9D0434(0, &qword_28143A0A0, 0x277D237F0), (swift_dynamicCast() & 1) == 0))
        {
LABEL_95:

          goto LABEL_96;
        }

        v137 = v152;
        v82 = [v152 identifier];
        v83 = [v82 instanceIdentifier];

        v84 = sub_22CA20E20();
        v86 = v85;

        if (v136 & 1) != 0 || (v87 = sub_22CA21360(), (v87))
        {
          v88 = *v146;
          v153 = v130;
          v154 = v129;
          MEMORY[0x28223BE20](v87);
          v123 = &v153;

          v89 = v148;
          v90 = sub_22C9F9EC0(sub_22C9FAEA8, v122, v88);
          v148 = v89;

          if (v90)
          {
            if (v136)
            {
              goto LABEL_103;
            }

            goto LABEL_102;
          }

          if (v136)
          {
            goto LABEL_100;
          }
        }

        v91 = sub_22CA21360();
        if (v91)
        {
LABEL_100:

          v23 = 0x27872A000;
          goto LABEL_96;
        }

        v92 = *v146;
        v153 = v84;
        v154 = v86;
        MEMORY[0x28223BE20](v91);
        v123 = &v153;

        v93 = v148;
        v94 = sub_22C9F9EC0(sub_22C9FAACC, v122, v92);
        v148 = v93;

        if (!v94)
        {

LABEL_139:

          goto LABEL_140;
        }

LABEL_102:
        if ((sub_22CA21360() & 1) == 0)
        {
LABEL_105:
          v96 = sub_22C9E6DA0(a3);
          for (i = 0; ; ++i)
          {
            if (v96 == i)
            {
              v99 = 0;
              goto LABEL_122;
            }

            if (v150)
            {
              v98 = MEMORY[0x2318BAD10](i, a3);
            }

            else
            {
              if (i >= v149[2])
              {
                goto LABEL_144;
              }

              v98 = *(a3 + 8 * i + 32);
            }

            v99 = v98;
            if (__OFADD__(i, 1))
            {
              __break(1u);
LABEL_144:
              __break(1u);
              goto LABEL_145;
            }

            v100 = sub_22C9DDEBC(v98);
            if (v101)
            {
              if (v100 == v84 && v101 == v86)
              {

LABEL_121:
                v104 = [v99 editorialTags];
                sub_22CA20FC0();

LABEL_122:
                v155 = sub_22C9D0434(0, &unk_27D9E5300, 0x277D23720);
                v153 = v132;
                v105 = v132;

                [v127 timestamp];
                type metadata accessor for MSSuggesterUtils();
                sub_22CA16750(1);
                objc_allocWithZone(type metadata accessor for MSPlayMediaAppIntent());
                swift_bridgeObjectRetain_n();
                v123 = 0;
                v106 = MSPlayMediaAppIntent.init(intentAction:bundleID:date:suggestionSource:identifier:editorialTags:title:)();
                v107 = v128;
                swift_beginAccess();
                v108 = v106;
                MEMORY[0x2318BA9F0]();
                sub_22C9F9AB4(*((*v107 & 0xFFFFFFFFFFFFFF8) + 0x10));
                v131 = v108;
                sub_22CA20F00();
                swift_endAccess();
                if (qword_28143A1B8 != -1)
                {
                  swift_once();
                }

                v109 = sub_22CA20B10();
                sub_22C9D0494(v109, &unk_28143A450);

                v110 = sub_22CA20AF0();
                v111 = sub_22CA21010();

                if (os_log_type_enabled(v110, v111))
                {
                  v112 = swift_slowAlloc();
                  v126 = swift_slowAlloc();
                  v153 = v126;
                  *v112 = v124;
                  v113 = sub_22C9D60B0(v84, v86, &v153);

                  *(v112 + 4) = v113;
                  *(v112 + 12) = 2080;
                  v125 = v110;
                  v114 = v140;

                  v115 = sub_22C9D60B0(v138, v114, &v153);

                  *(v112 + 14) = v115;
                  v116 = v125;
                  _os_log_impl(&dword_22C9CA000, v125, v111, "Populated id: %s for %s", v112, 0x16u);
                  v117 = v126;
                  swift_arrayDestroy();
                  MEMORY[0x2318BB680](v117, -1, -1);
                  MEMORY[0x2318BB680](v112, -1, -1);
                }

                else
                {
                }

                a3 = v147;
                v118 = *(*v146 + 16);
                if (!v118)
                {
LABEL_136:

                  goto LABEL_139;
                }

                v119 = 0;
                v120 = (*v146 + 40);
                while (1)
                {
                  if (*v120)
                  {
                    v121 = *(v120 - 1) == v84 && *v120 == v86;
                    if (v121 || (sub_22CA21360() & 1) != 0)
                    {
                      break;
                    }
                  }

                  v120 += 2;
                  if (v118 == ++v119)
                  {
                    goto LABEL_136;
                  }
                }

                swift_beginAccess();
                sub_22C9F4DC0(v119);
                swift_endAccess();

LABEL_140:
                v23 = 0x27872A000;
LABEL_96:
                if (v60 == v142)
                {

                  goto LABEL_142;
                }

                goto LABEL_71;
              }

              v103 = sub_22CA21360();

              if (v103)
              {
                goto LABEL_121;
              }
            }

            a3 = v147;
          }
        }

LABEL_103:
        v95 = v151;
        if (v151)
        {

          v84 = v145;
          v86 = v95;
        }

        goto LABEL_105;
      }
    }

    goto LABEL_88;
  }

  v24 = v22;
  v145 = 0;
  v151 = 0;
  v25 = 0;
  v26 = v142 & 0xC000000000000001;
  v139 = v142 & 0xFFFFFFFFFFFFFF8;
  v137 = (v142 + 32);
  v135 = v20;
  v134 = v22;
  v136 = v142 & 0xC000000000000001;
  while (1)
  {
    if (v26)
    {
      v27 = MEMORY[0x2318BAD10](v25, v142);
    }

    else
    {
      if (v25 >= *(v139 + 16))
      {
        goto LABEL_147;
      }

      v27 = *(v137 + v25);
    }

    v28 = __OFADD__(v25++, 1);
    if (v28)
    {
LABEL_145:
      __break(1u);
LABEL_146:
      __break(1u);
LABEL_147:
      __break(1u);
LABEL_148:
      __break(1u);
      goto LABEL_149;
    }

    v149 = v27;
    v29 = [v27 identifier];
    v30 = sub_22CA20E20();
    v32 = v31;

    if (v30 == 0x746E456F69647561 && v32 == 0xEB00000000797469)
    {
      break;
    }

    v34 = sub_22CA21360();

    if (v34)
    {
      goto LABEL_26;
    }

LABEL_48:

LABEL_52:
    if (v25 == v24)
    {
      goto LABEL_59;
    }
  }

LABEL_26:
  v35 = [v149 *(v23 + 3944)];
  if (!v35)
  {
    goto LABEL_48;
  }

  v36 = v35;
  v37 = [v35 *(v23 + 3944)];

  sub_22CA21130();
  swift_unknownObjectRelease();
  v150 = sub_22C9D0434(0, &qword_28143A0A0, 0x277D237F0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_48;
  }

  v141 = v156;
  v38 = [v156 properties];
  v39 = sub_22CA20EC0();

  if (!(v39 >> 62))
  {
    v40 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v40)
    {
      goto LABEL_30;
    }

    goto LABEL_50;
  }

  v40 = sub_22CA21290();
  if (!v40)
  {
LABEL_50:

LABEL_51:
    v26 = v136;
    goto LABEL_52;
  }

LABEL_30:
  if (v40 >= 1)
  {
    v41 = 0;
    while (1)
    {
      if ((v39 & 0xC000000000000001) != 0)
      {
        v42 = MEMORY[0x2318BAD10](v41, v39);
      }

      else
      {
        v42 = *(v39 + 8 * v41 + 32);
      }

      v43 = v42;
      v44 = [v42 identifier];
      v45 = sub_22CA20E20();
      v47 = v46;

      if (v45 == 2003789939 && v47 == 0xE400000000000000)
      {

        v23 = 0x27872A000uLL;
      }

      else
      {
        v49 = sub_22CA21360();

        v23 = 0x27872A000;
        if ((v49 & 1) == 0)
        {
          goto LABEL_45;
        }
      }

      v50 = [v43 *(v23 + 3944)];
      if (!v50 || (v51 = v50, v52 = [v50 *(v23 + 3944)], v51, sub_22CA21130(), swift_unknownObjectRelease(), (swift_dynamicCast() & 1) == 0))
      {
LABEL_45:

        goto LABEL_46;
      }

      v53 = [v156 identifier];
      v54 = [v53 instanceIdentifier];

      v145 = sub_22CA20E20();
      v56 = v55;

      v23 = 0x27872A000;

      v151 = v56;
LABEL_46:
      if (v40 == ++v41)
      {

        a3 = v147;
        v24 = v134;
        goto LABEL_51;
      }
    }
  }

LABEL_149:
  __break(1u);
}

void sub_22C9F4DC0(unint64_t a1)
{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_22C9FA1E8(v3);
    v3 = v10;
  }

  v4 = *(v3 + 16);
  if (v4 <= a1)
  {
    __break(1u);
  }

  else
  {
    v5 = v4 - 1;
    v6 = v4 - 1 - a1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    sub_22CA11F70((v7 + 48), v6, (v7 + 32));
    *(v3 + 16) = v5;
    *v1 = v3;
  }
}

void sub_22C9F4E64()
{
  sub_22C9DAEF8();
  v92 = v0;
  v86 = v1;
  v3 = v2;
  v5 = v4;
  v6 = sub_22C9D02E4(&unk_27D9E4F00, &unk_22CA232D0);
  v7 = sub_22C9D71B4(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22C9E05C0();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v81 - v14;
  sub_22CA21080();
  if (qword_28143A1D8 != -1)
  {
    sub_22C9FAF4C();
    swift_once();
  }

  v16 = qword_28143A4B0;
  if (qword_28143A1D0 != -1)
  {
    swift_once();
  }

  v17 = sub_22CA20AE0();
  sub_22C9D0494(v17, &unk_28143A498);
  v18 = MEMORY[0x277D84F90];
  sub_22C9FAF8C();
  sub_22C9FB0BC();
  *(v20 - 256) = v19;
  sub_22CA20AC0();
  sub_22C9D7260();
  v21 = swift_allocObject();
  v88 = v21;
  *(v21 + 16) = v18;
  v87 = (v21 + 16);
  sub_22C9D7260();
  v91 = swift_allocObject();
  *(v91 + 16) = v18;
  sub_22C9D7260();
  v22 = swift_allocObject();
  v89 = v22;
  *(v22 + 16) = v18;
  v85 = (v22 + 16);
  v23 = [BiomeLibrary() App];
  swift_unknownObjectRelease();
  v24 = [v23 Intents];
  swift_unknownObjectRelease();
  v25 = [v24 Transcript];
  swift_unknownObjectRelease();
  sub_22C9F992C(v3, v15);
  sub_22C9F992C(v5, v12);
  v26 = objc_allocWithZone(MEMORY[0x277CF1A50]);
  sub_22C9FAFB4();
  v32 = sub_22C9F97A0(v27, v28, v29, v30, v31);
  sub_22C9D7260();
  v33 = swift_allocObject();
  *(v33 + 16) = sub_22CA20DD0();
  v34 = v33 + 16;
  v35 = sub_22CA20EF0();
  *(v35 + 16) = 64;
  *(v35 + 32) = 0u;
  *(v35 + 48) = 0u;
  *(v35 + 64) = 0u;
  *(v35 + 80) = 0u;
  sub_22C9D7260();
  v36 = swift_allocObject();
  v90 = v36;
  *(v36 + 16) = v35;
  v37 = v36 + 16;
  v38 = *MEMORY[0x277CDC540];
  sub_22C9F99D8(0);
  v39 = SecRandomCopyBytes(v38, 0x40uLL, (*v37 + 32));
  if (v92)
  {
    v40 = v39;
    if (v39)
    {
      if (qword_28143A320 != -1)
      {
        swift_once();
      }

      v41 = sub_22CA20B10();
      sub_22C9D0494(v41, &unk_28143A4E0);
      v42 = sub_22CA20AF0();
      v43 = sub_22CA21000();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        *v44 = 67109120;
        *(v44 + 4) = v40;
        _os_log_impl(&dword_22C9CA000, v42, v43, "Generating bytes resulted in error: %d", v44, 8u);
        sub_22C9D70C0();
      }

      goto LABEL_40;
    }
  }

  v84 = v16;
  v83 = v25;
  v82 = v32;
  v45 = [v25 publisherWithOptions_];
  sub_22C9FB018();
  v46 = swift_allocObject();
  *(v46 + 16) = v86;
  *(v46 + 24) = v33;
  v97 = sub_22C9F9A3C;
  v98 = v46;
  v93 = MEMORY[0x277D85DD0];
  v94 = 1107296256;
  v95 = sub_22C9FAF44;
  v96 = &unk_283FCD8A0;
  v47 = _Block_copy(&v93);

  v86 = [v45 filterWithIsIncluded_];
  _Block_release(v47);

  v97 = sub_22C9FAEA4;
  v98 = 0;
  v93 = MEMORY[0x277D85DD0];
  v94 = 1107296256;
  v95 = sub_22C9FAF40;
  v96 = &unk_283FCD8C8;
  v48 = _Block_copy(&v93);
  v49 = swift_allocObject();
  v50 = v89;
  v51 = v90;
  *(v49 + 16) = v91;
  *(v49 + 24) = v92 & 1;
  *(v49 + 32) = v51;
  *(v49 + 40) = v50;
  v52 = v88;
  *(v49 + 48) = v88;
  *(v49 + 56) = v33;
  v97 = sub_22C9F9A44;
  v98 = v49;
  v93 = MEMORY[0x277D85DD0];
  v94 = 1107296256;
  v95 = sub_22C9FAF40;
  v96 = &unk_283FCD918;
  v53 = _Block_copy(&v93);

  v54 = v52;

  v55 = v86;
  v56 = [v86 sinkWithCompletion:v48 receiveInput:v53];
  _Block_release(v53);
  _Block_release(v48);

  swift_beginAccess();
  v57 = sub_22C9EEEB8(0xD000000000000013, 0x800000022CA25AD0, *(v33 + 16));
  v59 = v58;
  swift_endAccess();
  if (v59)
  {
    v60 = 0;
  }

  else
  {
    v60 = v57;
  }

  if (qword_28143A1F8 != -1)
  {
    swift_once();
  }

  v61 = sub_22C9EEEB8(0xD000000000000013, 0x800000022CA25AD0, qword_28143A4D8);
  v62 = v87;
  if (v63)
  {
    if (v60 < 0)
    {
      v61 = 0;
      goto LABEL_21;
    }
  }

  else if (v60 < v61)
  {
LABEL_21:
    v64 = v61 - v60;
    if (__OFSUB__(v61, v60))
    {
      __break(1u);
    }

    else
    {
      v65 = v85;
      sub_22C9FAFE8();
      swift_beginAccess();
      if (sub_22C9E6DA0(*v65) < v64)
      {
        v64 = sub_22C9E6DA0(*v65);
      }

      v66 = *v65;

      v64 = sub_22C9F220C(v64, v66, sub_22C9E6DA0, type metadata accessor for MSPlayMediaAppIntent);
      v59 = v67;
      v50 = v68;
      v34 = v69;
      if ((v69 & 1) == 0)
      {
        goto LABEL_25;
      }

      sub_22CA21370();
      swift_unknownObjectRetain_n();
      v72 = swift_dynamicCastClass();
      if (!v72)
      {
        swift_unknownObjectRelease();
        v72 = MEMORY[0x277D84F90];
      }

      v73 = *(v72 + 16);

      if (!__OFSUB__(v34 >> 1, v50))
      {
        if (v73 == (v34 >> 1) - v50)
        {
          v71 = swift_dynamicCastClass();
          swift_unknownObjectRelease();
          if (v71)
          {
LABEL_33:
            swift_beginAccess();
            sub_22C9F7A84(v71, sub_22C9E6DA0, sub_22C9FA5F8);
            swift_endAccess();
            goto LABEL_34;
          }

          v71 = MEMORY[0x277D84F90];
LABEL_32:
          swift_unknownObjectRelease();
          goto LABEL_33;
        }

        goto LABEL_43;
      }
    }

    __break(1u);
LABEL_43:
    swift_unknownObjectRelease();
LABEL_25:
    sub_22C9F9F74(v64, v59, v50, v34);
    v71 = v70;
    goto LABEL_32;
  }

LABEL_34:
  sub_22CA21070();
  sub_22C9FAF74();
  sub_22C9FB0BC();
  v75 = *(v74 - 256);
  sub_22CA20AC0();
  if (qword_28143A1B8 != -1)
  {
    sub_22C9FAF60();
    swift_once();
  }

  v76 = sub_22CA20B10();
  sub_22C9D0494(v76, &unk_28143A450);
  sub_22C9FB0E8();

  v77 = sub_22CA20AF0();
  v78 = sub_22CA21010();
  if (os_log_type_enabled(v77, v78))
  {
    v79 = sub_22C9D7164();
    *v79 = 134217984;
    sub_22C9FAFE8();
    swift_beginAccess();
    *(v79 + 4) = sub_22C9E6DA0(*(v54 + 16));

    _os_log_impl(&dword_22C9CA000, v77, v78, "Returning %ld App Intents", v79, 0xCu);
    sub_22C9D70C0();
  }

  else
  {
  }

  sub_22C9FAFE8();
  swift_beginAccess();
  v80 = *v62;

LABEL_40:

  sub_22C9DAF14();
}

uint64_t sub_22C9F58A4(void *a1, uint64_t a2, uint64_t a3)
{
  result = [a1 eventBody];
  if (result)
  {
    v6 = result;
    v7 = [result resolvedAction];
    if (!v7)
    {
LABEL_39:

      return 0;
    }

    v8 = v7;
    v9 = sub_22C9DDEC8(v7, &selRef_identifier);
    if (v10)
    {
      if (v9 == 0xD000000000000014 && v10 == 0x800000022CA27930)
      {
        goto LABEL_16;
      }

      v12 = sub_22CA21360();

      if (v12)
      {
        goto LABEL_17;
      }
    }

    v13 = sub_22C9DDEC8(v8, &selRef_identifier);
    if (!v14)
    {
LABEL_38:

      goto LABEL_39;
    }

    if (v13 != 0x6964754179616C50 || v14 != 0xEF746E65746E496FLL)
    {
      v16 = sub_22CA21360();

      if ((v16 & 1) == 0)
      {
        goto LABEL_38;
      }

LABEL_17:
      v17 = sub_22C9DDEC8(v6, &selRef_bundleID);
      if (v18)
      {
        v19 = v17;
      }

      else
      {
        v19 = 0x6C7070612E6D6F63;
      }

      if (v18)
      {
        v20 = v18;
      }

      else
      {
        v20 = 0xEE0044494F4E2E65;
      }

      if (*(a2 + 16))
      {
        v39[0] = v19;
        v39[1] = v20;
        MEMORY[0x28223BE20](v17);
        v38[2] = v39;

        v21 = sub_22C9F9E10(sub_22C9FAEC4, v38, a2);

        if (!v21)
        {

          return 0;
        }
      }

      if (qword_28143A1F8 != -1)
      {
        swift_once();
      }

      v22 = qword_28143A4D8;

      v23 = sub_22C9EEEB8(v19, v20, v22);
      v25 = v24;

      if (v25)
      {
        v26 = 10;
      }

      else
      {
        v26 = v23;
      }

      swift_beginAccess();
      v27 = *(a3 + 16);
      if (*(v27 + 16) && (, v28 = sub_22C9FBFA8(v19, v20), v30 = v29, , (v30 & 1) != 0))
      {
        v31 = *(*(v27 + 56) + 8 * v28);
        swift_endAccess();
        if (v26 < v31)
        {
LABEL_33:
          if (qword_28143A1B8 != -1)
          {
            swift_once();
          }

          v32 = sub_22CA20B10();
          sub_22C9D0494(v32, &unk_28143A450);
          v33 = sub_22CA20AF0();
          v34 = sub_22CA21010();
          if (os_log_type_enabled(v33, v34))
          {
            v35 = swift_slowAlloc();
            v36 = swift_slowAlloc();
            v39[0] = v36;
            *v35 = 134218242;
            *(v35 + 4) = v26;
            *(v35 + 12) = 2080;

            v37 = sub_22C9D60B0(v19, v20, v39);

            *(v35 + 14) = v37;
            _os_log_impl(&dword_22C9CA000, v33, v34, "Skipping: Reached limit of %ld for bundleID %s", v35, 0x16u);
            sub_22C9D04CC(v36);
            MEMORY[0x2318BB680](v36, -1, -1);
            MEMORY[0x2318BB680](v35, -1, -1);
          }

          goto LABEL_38;
        }
      }

      else
      {
        swift_endAccess();
        if (v26 < 0)
        {
          goto LABEL_33;
        }
      }

      return 1;
    }

LABEL_16:

    goto LABEL_17;
  }

  return result;
}

void sub_22C9F5CD8(void *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = MEMORY[0x2318BB0B0]();
  sub_22C9F5D70(a1, a2, a3, (a4 + 16), a5 + 16, a6 + 16, (a7 + 16));

  objc_autoreleasePoolPop(v14);
}

void sub_22C9F5D70(void *a1, uint64_t a2, int a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v235 = a6;
  v233 = a5;
  v234 = a4;
  v236 = a3;
  v237 = a1;
  v10 = [a1 eventBody];
  if (!v10)
  {
    return;
  }

  v11 = v10;
  v232 = a2;
  v230 = [v10 source];
  v12 = [v11 resolvedAction];
  if (!v12 || (v13 = v12, v227 = a7, v14 = sub_22CA21090(), v13, !v14))
  {

    return;
  }

  v229 = v7;
  v15 = v14;
  v16 = sub_22C9DDEC8(v11, &selRef_bundleID);
  if (v17)
  {
    v18 = v16;
  }

  else
  {
    v18 = 0x6C7070612E6D6F63;
  }

  if (v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = 0xEE0044494F4E2E65;
  }

  v263 = MEMORY[0x277D84FA0];
  v20 = 0x27872A000uLL;
  v231 = v15;
  v21 = [v15 parameters];
  v238 = sub_22C9D0434(0, &qword_28143A0C0, 0x277D238D8);
  v22 = sub_22CA20EC0();

  v23 = v22;
  v24 = sub_22C9E6DA0(v22);
  v25 = 0x27872A000uLL;
  v26 = 0x27872A000uLL;
  v228 = v11;
  v251 = v19;
  v249 = v18;
  v244 = v24;
  if (v24)
  {
    v246 = 0;
    v250 = 0;
    v245 = 0;
    v247 = 0;
    v27 = 0;
    v243 = v23 & 0xC000000000000001;
    v240 = v23 & 0xFFFFFFFFFFFFFF8;
    v239 = v23 + 32;
    v248 = 0x800000022CA25AB0;
    v29 = v18 == 0xD000000000000012 && 0x800000022CA25AB0 == v19;
    LODWORD(v254) = v29;
    v242 = v23;
    while (1)
    {
      if (v243)
      {
        v30 = MEMORY[0x2318BAD10](v27, v23);
      }

      else
      {
        if (v27 >= *(v240 + 16))
        {
          goto LABEL_225;
        }

        v30 = *(v239 + 8 * v27);
      }

      v31 = __OFADD__(v27++, 1);
      if (v31)
      {
        __break(1u);
LABEL_224:
        __break(1u);
LABEL_225:
        __break(1u);
LABEL_226:
        __break(1u);
LABEL_227:
        __break(1u);
        goto LABEL_228;
      }

      v32 = *(v25 + 3752);
      v252 = v30;
      v33 = [v30 v32];
      v34 = sub_22CA20E20();
      v36 = v35;

      if (v34 == 0x746E456F69647561 && v36 == 0xEB00000000797469)
      {
        break;
      }

      v38 = sub_22CA21360();

      if (v38)
      {
        goto LABEL_30;
      }

LABEL_81:

LABEL_84:
      v23 = v242;
      if (v27 == v244)
      {

        v20 = 0x27872A000;
        goto LABEL_88;
      }
    }

LABEL_30:
    v39 = [v252 *(v26 + 3944)];
    if (!v39)
    {
      goto LABEL_81;
    }

    v40 = v39;
    v41 = [v39 *(v26 + 3944)];

    sub_22CA21130();
    swift_unknownObjectRelease();
    v253 = sub_22C9D0434(0, &qword_28143A0A0, 0x277D237F0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_81;
    }

    v241 = v257;
    v42 = [v257 properties];
    v43 = sub_22CA20EC0();

    if (!(v43 >> 62))
    {
      v44 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v44)
      {
        goto LABEL_34;
      }

      goto LABEL_83;
    }

    v44 = sub_22CA21290();
    if (!v44)
    {
LABEL_83:

      goto LABEL_84;
    }

LABEL_34:
    if (v44 >= 1)
    {
      v45 = 0;
      v255 = v43 & 0xC000000000000001;
      while (1)
      {
        if (v255)
        {
          v46 = MEMORY[0x2318BAD10](v45, v43);
        }

        else
        {
          v46 = *(v43 + 8 * v45 + 32);
        }

        v47 = v46;
        if ((v254 & 1) == 0 && (sub_22CA21360() & 1) == 0)
        {
          v59 = [v47 *(v25 + 3752)];
          v60 = sub_22CA20E20();
          v62 = v61;

          if (v60 == 0x656C746974 && v62 == 0xE500000000000000)
          {

            v25 = 0x27872A000;
LABEL_58:
            v65 = [v47 value];
            if (!v65)
            {
              goto LABEL_68;
            }

            v55 = v65;
            sub_22C9D0434(0, &qword_28143A098, 0x277D82BB8);
            v66 = [v55 valueType];
            v67 = [objc_opt_self() stringValueType];
            v68 = sub_22CA210D0();

            if (v68)
            {
LABEL_60:

              v69 = [v55 value];
              sub_22CA21130();

              swift_unknownObjectRelease();
              v70 = swift_dynamicCast();
              v71 = v257;
              if (!v70)
              {
                v71 = 0;
              }

              v246 = v71;
              if (v70)
              {
                v72 = v258;
              }

              else
              {
                v72 = 0;
              }

              v250 = v72;
              goto LABEL_67;
            }

LABEL_66:

LABEL_67:
            v25 = 0x27872A000uLL;
            goto LABEL_68;
          }

          v64 = sub_22CA21360();

          v25 = 0x27872A000;
          if (v64)
          {
            goto LABEL_58;
          }
        }

        v48 = [v47 *(v25 + 3752)];
        v49 = sub_22CA20E20();
        v51 = v50;

        if (v49 == 0x656D614E776F6873 && v51 == 0xE800000000000000)
        {

LABEL_48:
          v54 = [v47 value];
          if (!v54)
          {
            goto LABEL_68;
          }

          v55 = v54;
          sub_22C9D0434(0, &qword_28143A098, 0x277D82BB8);
          v56 = [v55 valueType];
          v57 = [objc_opt_self() stringValueType];
          v58 = sub_22CA210D0();

          if (v58)
          {
            goto LABEL_60;
          }

          goto LABEL_66;
        }

        v53 = sub_22CA21360();

        if (v53)
        {
          goto LABEL_48;
        }

LABEL_68:
        v73 = [v47 *(v25 + 3752)];
        v74 = sub_22CA20E20();
        v76 = v75;

        if (v74 == 2003789939 && v76 == 0xE400000000000000)
        {
        }

        else
        {
          v78 = sub_22CA21360();

          if ((v78 & 1) == 0)
          {
            goto LABEL_78;
          }
        }

        v79 = [v47 value];
        if (!v79 || (v80 = v79, v81 = [v79 value], v80, sub_22CA21130(), swift_unknownObjectRelease(), (swift_dynamicCast() & 1) == 0))
        {
LABEL_78:

          goto LABEL_79;
        }

        v82 = [v257 *(v25 + 3752)];
        v83 = [v82 instanceIdentifier];

        v245 = sub_22CA20E20();
        v247 = v84;

LABEL_79:
        if (v44 == ++v45)
        {

          v26 = 0x27872A000;
          goto LABEL_84;
        }
      }
    }

LABEL_228:
    __break(1u);
LABEL_229:
    __break(1u);
LABEL_230:
    __break(1u);
LABEL_231:
    __break(1u);
    goto LABEL_232;
  }

  v246 = 0;
  v250 = 0;
  v245 = 0;
  v247 = 0;
LABEL_88:
  v85 = [v231 *(v20 + 3896)];
  v86 = sub_22CA20EC0();

  v87 = sub_22C9E6DA0(v86);
  if (!v87)
  {
LABEL_110:

    if (qword_28143A1B8 == -1)
    {
LABEL_111:
      v108 = sub_22CA20B10();
      sub_22C9D0494(v108, &unk_28143A450);
      v109 = sub_22CA20AF0();
      v110 = sub_22CA21010();
      v111 = v228;
      if (os_log_type_enabled(v109, v110))
      {
        v112 = swift_slowAlloc();
        *v112 = 0;
        _os_log_impl(&dword_22C9CA000, v109, v110, "Skipping: Nil ID", v112, 2u);
        MEMORY[0x2318BB680](v112, -1, -1);
      }

      goto LABEL_195;
    }

LABEL_232:
    swift_once();
    goto LABEL_111;
  }

  v88 = v87;
  v89 = 0;
  v255 = v86 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if ((v86 & 0xC000000000000001) != 0)
    {
      v90 = MEMORY[0x2318BAD10](v89, v86);
      v91 = 0x27872A000;
    }

    else
    {
      v91 = 0x27872A000uLL;
      if (v89 >= *(v255 + 16))
      {
        goto LABEL_226;
      }

      v90 = *(v86 + 8 * v89 + 32);
    }

    v92 = v89 + 1;
    if (__OFADD__(v89, 1))
    {
      goto LABEL_224;
    }

    v93 = [v90 *(v91 + 3752)];
    v94 = sub_22CA20E20();
    v96 = v95;

    if (v94 == 0x65646F73697065 && v96 == 0xE700000000000000)
    {
      break;
    }

    v98 = sub_22CA21360();

    if (v98)
    {
      goto LABEL_107;
    }

    v99 = [v90 identifier];
    v100 = sub_22CA20E20();
    v102 = v101;

    if (v100 == 0x746E456F69647561 && v102 == 0xEB00000000797469)
    {
      break;
    }

    v104 = sub_22CA21360();

    if (v104)
    {
      goto LABEL_107;
    }

LABEL_109:

    ++v89;
    if (v92 == v88)
    {
      goto LABEL_110;
    }
  }

LABEL_107:
  v105 = [v90 value];
  if (!v105)
  {
    goto LABEL_109;
  }

  v106 = v105;
  v107 = [v105 value];

  sub_22CA21130();
  swift_unknownObjectRelease();
  sub_22C9D0434(0, &qword_28143A0A0, 0x277D237F0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_109;
  }

  v113 = [v257 identifier];
  v114 = [v113 instanceIdentifier];

  v239 = sub_22CA20E20();
  v226 = v115;

  v225 = v257;
  v116 = [v257 properties];
  v117 = sub_22CA20EC0();

  v255 = sub_22C9E6DA0(v117);
  v118 = 0;
  if (v255)
  {
    v119 = 0;
    v253 = 0x800000022CA279D0;
    v254 = v117 & 0xC000000000000001;
    v248 = v117 & 0xFFFFFFFFFFFFFF8;
    v243 = 0x800000022CA279F0;
    v252 = v117;
    while (2)
    {
      v120 = v119;
      while (1)
      {
        if (v254)
        {
          v121 = MEMORY[0x2318BAD10](v120, v117);
        }

        else
        {
          if (v120 >= *(v248 + 16))
          {
            goto LABEL_229;
          }

          v121 = *(v117 + 8 * v120 + 32);
        }

        v122 = v121;
        v119 = v120 + 1;
        if (__OFADD__(v120, 1))
        {
          goto LABEL_227;
        }

        v123 = [v121 identifier];
        v124 = sub_22CA20E20();
        v126 = v125;

        if (v124 == 0xD000000000000012 && v253 == v126)
        {
          break;
        }

        v128 = sub_22CA21360();

        if (v128)
        {
          goto LABEL_130;
        }

        ++v120;
        v117 = v252;
        if (v119 == v255)
        {
          goto LABEL_163;
        }
      }

LABEL_130:
      v129 = [v122 value];
      if (v129)
      {
        v130 = v129;
        v131 = [v129 value];

        sub_22CA21130();
        swift_unknownObjectRelease();
        if (swift_dynamicCast())
        {
          v224 = v257;
          v132 = [v257 properties];
          v133 = sub_22CA20EC0();

          v242 = sub_22C9E6DA0(v133);
          v134 = 0;
          v241 = (v133 & 0xC000000000000001);
          v244 = v133;
          v240 = v133 & 0xFFFFFFFFFFFFFF8;
          while (1)
          {
            if (v242 == v134)
            {

              goto LABEL_162;
            }

            if (v241)
            {
              v135 = MEMORY[0x2318BAD10](v134, v244);
            }

            else
            {
              if (v134 >= *(v240 + 16))
              {
                goto LABEL_231;
              }

              v135 = *(v244 + 8 * v134 + 32);
            }

            v136 = v135;
            if (__OFADD__(v134, 1))
            {
              goto LABEL_230;
            }

            v137 = [v135 identifier];
            v138 = sub_22CA20E20();
            v140 = v139;

            if (v138 == 0xD000000000000014 && v243 == v140)
            {
              break;
            }

            v142 = sub_22CA21360();

            if (v142)
            {
              goto LABEL_147;
            }

            ++v134;
          }

LABEL_147:

          v143 = [v136 value];
          if (v143)
          {
            v144 = v143;
            v145 = [v143 value];

            sub_22CA21130();
            swift_unknownObjectRelease();
            sub_22C9D02E4(&qword_27D9E4F80, &qword_22CA23EB0);
            if (swift_dynamicCast())
            {
              v244 = v257;
              v242 = sub_22C9E6DA0(v257);
              if (v242)
              {
                if (v242 < 1)
                {
                  goto LABEL_235;
                }

                v146 = 0;
                do
                {
                  if ((v244 & 0xC000000000000001) != 0)
                  {
                    v147 = MEMORY[0x2318BAD10](v146, v244);
                  }

                  else
                  {
                    v147 = *(v244 + 8 * v146 + 32);
                  }

                  v148 = v147;
                  v149 = [v147 value];
                  sub_22CA21130();
                  swift_unknownObjectRelease();
                  if (swift_dynamicCast())
                  {
                    v150 = v257;
                    v151 = v258;
                  }

                  else
                  {
                    v151 = 0xE400000000000000;
                    v150 = 1701736270;
                  }

                  ++v146;
                  sub_22CA15904(&v260, v150, v151);
                }

                while (v242 != v146);
              }

LABEL_162:
              v118 = 1;
              v117 = v252;
              if (v119 != v255)
              {
                continue;
              }

              goto LABEL_163;
            }
          }
        }
      }

      break;
    }

    goto LABEL_162;
  }

LABEL_163:

  v152 = v249 == 0xD000000000000012 && 0x800000022CA25AB0 == v251;
  if (v152 || (sub_22CA21360() & 1) != 0)
  {
    v153 = v232;
    v154 = v247;
    v155 = v250;
    v156 = v226;
    if (!v247)
    {

      v245 = v239;
      v154 = v226;
    }
  }

  else
  {

    v156 = v226;

    v245 = v239;
    v154 = v226;
    v153 = v232;
    v155 = v250;
  }

  if (v155)
  {
    v157 = (v155 >> 56) & 0xF;
    if ((v155 & 0x2000000000000000) == 0)
    {
      v157 = v246 & 0xFFFFFFFFFFFFLL;
    }

    if (v157 != 0 && (v118 & 1) != 0 && v230 == 1)
    {
      v158 = swift_beginAccess();
      v159 = *(v153 + 16);
      v260 = v239;
      v261 = v156;
      MEMORY[0x28223BE20](v158);
      v223 = &v260;

      v160 = v229;
      v161 = sub_22C9F9E10(sub_22C9FAEC4, v222, v159);
      v229 = v160;

      if (!v161)
      {
        if (v236)
        {
          v186 = v234;
          swift_beginAccess();
          v187 = *v186;

          v189 = sub_22C9F7920(v188);
          v262 = MEMORY[0x277CC9318];
          v260 = v189;
          v261 = v190;
          v191 = v251;

          [v237 timestamp];
          type metadata accessor for MSSuggesterUtils();
          sub_22CA16750(1);
          v192 = v263;
          objc_allocWithZone(type metadata accessor for MSPlayMediaAppIntent());

          v223 = v250;
        }

        else
        {

          v262 = sub_22C9D0434(0, &unk_27D9E5300, 0x277D23720);
          v194 = v231;
          v260 = v231;
          v191 = v251;

          v195 = v194;
          [v237 timestamp];
          type metadata accessor for MSSuggesterUtils();
          sub_22CA16750(1);
          v192 = v263;
          objc_allocWithZone(type metadata accessor for MSPlayMediaAppIntent());

          v223 = 0;
        }

        v193 = v249;
        v196 = MSPlayMediaAppIntent.init(intentAction:bundleID:date:suggestionSource:identifier:editorialTags:title:)();
        v197 = v228;
        v198 = v232;
        swift_beginAccess();
        sub_22C9F9A58(sub_22CA11CC8);
        v199 = *(*(v198 + 16) + 16);
        sub_22C9F9AE0(v199, sub_22CA11CC8);
        v200 = *(v198 + 16);
        *(v200 + 16) = v199 + 1;
        v201 = v200 + 16 * v199;
        v202 = v226;
        *(v201 + 32) = v239;
        *(v201 + 40) = v202;
        *(v198 + 16) = v200;
        swift_endAccess();
        if (v193 == 0xD000000000000013 && 0x800000022CA25AD0 == v191)
        {

          v205 = v227;
        }

        else
        {
          v204 = sub_22CA21360();

          v205 = v227;
          if ((v204 & 1) == 0)
          {
            v206 = v249 == 0x6C7070612E6D6F63 && v251 == 0xEF636973754D2E65;
            if (!v206 && (sub_22CA21360() & 1) == 0)
            {
              goto LABEL_213;
            }
          }
        }

        if (!*(v192 + 16))
        {
          swift_beginAccess();
          sub_22C9EEDC4();
          swift_endAccess();

          v221 = 0;
          goto LABEL_222;
        }

LABEL_213:
        swift_beginAccess();
        v207 = v196;
        sub_22C9EEDC4();
        swift_endAccess();
        swift_beginAccess();
        v208 = *v205;
        swift_isUniquelyReferenced_nonNull_native();
        v259 = *v205;
        v209 = v259;
        *v205 = 0x8000000000000000;
        v210 = sub_22C9FBFA8(v249, v251);
        if (__OFADD__(*(v209 + 16), (v211 & 1) == 0))
        {
          __break(1u);
        }

        else
        {
          v212 = v210;
          v213 = v211;
          sub_22C9D02E4(&qword_27D9E4F20, &qword_22CA23AF0);
          v214 = sub_22CA21250();
          v215 = v259;
          if (v214)
          {
            v216 = sub_22C9FBFA8(v249, v251);
            if ((v213 & 1) != (v217 & 1))
            {
LABEL_236:
              sub_22CA213C0();
              __break(1u);
              return;
            }

            v212 = v216;
          }

          *v227 = v215;
          if ((v213 & 1) == 0)
          {
            sub_22CA028F4(v212, v249, v251, 0, v215);
          }

          v218 = *(v215 + 56);
          v219 = *(v218 + 8 * v212);
          v31 = __OFADD__(v219, 1);
          v220 = v219 + 1;
          if (!v31)
          {
            *(v218 + 8 * v212) = v220;
            swift_endAccess();

            v221 = sub_22C9E8E30;
LABEL_222:
            sub_22C9E97C0(v221);
            return;
          }
        }

        __break(1u);
LABEL_235:
        __break(1u);
        goto LABEL_236;
      }
    }
  }

  if (qword_28143A1B8 != -1)
  {
    swift_once();
  }

  v162 = sub_22CA20B10();
  sub_22C9D0494(v162, &unk_28143A450);
  v163 = v250;

  v164 = v232;

  v165 = v154;

  v166 = v164;
  v167 = sub_22CA20AF0();
  v168 = sub_22CA21010();

  if (os_log_type_enabled(v167, v168))
  {
    v169 = swift_slowAlloc();
    v255 = swift_slowAlloc();
    v259 = v255;
    *v169 = 136316162;
    v170 = v166;
    v171 = sub_22C9D60B0(v245, v165, &v259);

    *(v169 + 4) = v171;
    LODWORD(v254) = v168;
    *(v169 + 12) = 2080;
    if (v163)
    {
      v172 = v246;
    }

    else
    {
      v172 = 1701736270;
    }

    if (v163)
    {
      v173 = v163;
    }

    else
    {
      v173 = 0xE400000000000000;
    }

    v174 = sub_22C9D60B0(v172, v173, &v259);

    *(v169 + 14) = v174;
    *(v169 + 22) = 1024;
    *(v169 + 24) = v118 & 1;
    *(v169 + 28) = 2080;
    type metadata accessor for MSSuggesterUtils();
    v175 = sub_22CA16774(v230);
    v177 = sub_22C9D60B0(v175, v176, &v259);

    *(v169 + 30) = v177;
    *(v169 + 38) = 2080;
    v178 = swift_beginAccess();
    v179 = *(v170 + 16);
    v256[0] = v239;
    v256[1] = v156;
    MEMORY[0x28223BE20](v178);
    v223 = v256;

    v180 = v229;
    v181 = sub_22C9F9E10(sub_22C9FAEC4, v222, v179);
    v229 = v180;

    if (v181)
    {
      v182 = 7562585;
    }

    else
    {
      v182 = 28494;
    }

    if (v181)
    {
      v183 = 0xE300000000000000;
    }

    else
    {
      v183 = 0xE200000000000000;
    }

    v184 = sub_22C9D60B0(v182, v183, &v259);

    *(v169 + 40) = v184;
    _os_log_impl(&dword_22C9CA000, v167, v254, "Skipping: Id: %s, Title: %s, CMD: %{BOOL}d, IS: %s, Seen: %s", v169, 0x30u);
    v185 = v255;
    swift_arrayDestroy();
    MEMORY[0x2318BB680](v185, -1, -1);
    MEMORY[0x2318BB680](v169, -1, -1);
  }

  else
  {
  }

LABEL_195:
}

uint64_t sub_22C9F7920(uint64_t a1)
{
  v7 = sub_22C9D02E4(&qword_27D9E4F88, &qword_22CA23EB8);
  v8 = sub_22C9FADFC(&qword_28143A0C8, &qword_27D9E4F88, &qword_22CA23EB8);
  v6[0] = a1;
  v2 = sub_22C9D05CC(v6, v7);
  sub_22C9FA29C(*v2 + 32, *v2 + 32 + *(*v2 + 16), &v5);
  v3 = v5;
  sub_22C9D04CC(v6);
  return v3;
}

void sub_22C9F79F0(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_22C9F7A84(uint64_t a1, uint64_t (*a2)(void), void (*a3)(uint64_t, void, uint64_t))
{
  v7 = a2();
  v8 = (a2)(*v3);
  v9 = __OFADD__(v8, v7);
  result = v8 + v7;
  if (v9)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_22C9FA1FC(result);
  v11 = *v3;
  v12 = *v3 & 0xFFFFFFFFFFFFFF8;
  a3(v12 + 8 * *(v12 + 0x10) + 32, (*(v12 + 0x18) >> 1) - *(v12 + 0x10), a1);
  v14 = v13;

  if (v14 < v7)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v14 < 1)
  {
LABEL_6:
    *v3 = v11;
    return result;
  }

  v15 = *(v12 + 16);
  v9 = __OFADD__(v15, v14);
  v16 = v15 + v14;
  if (!v9)
  {
    *(v12 + 16) = v16;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_22C9F7B44(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C9D02E4(&unk_27D9E4F00, &unk_22CA232D0);
  v5 = sub_22C9D71B4(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22C9E05C0();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v50 - v12;
  v14 = MEMORY[0x277D84F90];
  v52 = MEMORY[0x277D84F90];
  v15 = sub_22CA209F0();
  sub_22C9E054C(v15);
  v17 = *(v16 + 16);
  v17(v13, a1, v15);
  sub_22C9FB030();
  sub_22C9D0B98(v18, v19, v20, v15);
  v17(v10, a2, v15);
  sub_22C9FB030();
  sub_22C9D0B98(v21, v22, v23, v15);
  sub_22C9F4E64();
  v25 = v24;
  sub_22C9DF60C(v10, &unk_27D9E4F00, &unk_22CA232D0);
  sub_22C9DF60C(v13, &unk_27D9E4F00, &unk_22CA232D0);
  result = sub_22C9E6DA0(v25);
  if (!result)
  {
LABEL_13:

    return v14;
  }

  v27 = result;
  if (result >= 1)
  {
    v28 = 0;
    v51 = v25 & 0xC000000000000001;
    do
    {
      if (v51)
      {
        v29 = MEMORY[0x2318BAD10](v28, v25);
      }

      else
      {
        v29 = *(v25 + 8 * v28 + 32);
      }

      v30 = v29;
      v31 = sub_22CA1EC14();
      if (v31)
      {
        v32 = v31;
        v33 = &v30[OBJC_IVAR____TtC14MediaSuggester20MSPlayMediaAppIntent_bundleID];
        v34 = *&v30[OBJC_IVAR____TtC14MediaSuggester20MSPlayMediaAppIntent_bundleID];
        v35 = *&v30[OBJC_IVAR____TtC14MediaSuggester20MSPlayMediaAppIntent_bundleID + 8];
        v36 = objc_allocWithZone(MSUnifiedMediaIntent);
        v37 = v32;

        v38 = sub_22CA20E10();

        v39 = [v36 initWithIntent:v37 bundleID:v38];

        v40 = *v33;
        v41 = v33[1];
        v42 = *&v30[OBJC_IVAR____TtC14MediaSuggester20MSPlayMediaAppIntent_suggestionSource];
        objc_allocWithZone(MSSuggestion);
        v43 = v39;

        v44 = sub_22C9DDDC8(v43, v40, v41, v42);
        v45 = OBJC_IVAR___MSSuggestion_mediaAppIntent;
        sub_22C9DE248();
        v46 = *&v44[v45];
        *&v44[v45] = v30;
        v47 = v30;

        [v44 setIntentDate_];
        v48 = v44;
        MEMORY[0x2318BA9F0]();
        v49 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x18);
        if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v49 >> 1)
        {
          sub_22C9FB058(v49);
          sub_22CA20EE0();
        }

        sub_22CA20F00();

        v14 = v52;
      }

      else
      {
      }

      ++v28;
    }

    while (v27 != v28);
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t sub_22C9F7EA0(void *a1)
{
  v1 = a1;
  v38 = MEMORY[0x277D84F90];
  v2 = [a1 allowedBundleIdentifiers];
  sub_22CA20EC0();

  sub_22C9F4E64();
  v4 = v3;

  result = sub_22C9E6DA0(v4);
  if (!result)
  {

    return MEMORY[0x277D84F90];
  }

  v6 = result;
  if (result >= 1)
  {
    v7 = 0;
    v8 = v4 & 0xC000000000000001;
    v9 = MEMORY[0x277D84F90];
    v10 = 0x27872A000uLL;
    v36 = result;
    v37 = v1;
    v35 = v4 & 0xC000000000000001;
    do
    {
      if (v8)
      {
        v11 = MEMORY[0x2318BAD10](v7, v4);
      }

      else
      {
        v11 = *(v4 + 8 * v7 + 32);
      }

      v12 = v11;
      if (([v1 *(v10 + 4008)] == 2 || (v13 = *&v12[OBJC_IVAR____TtC14MediaSuggester20MSPlayMediaAppIntent_suggestionSource], v13 == objc_msgSend(v1, *(v10 + 4008)))) && (v14 = sub_22CA1EC14()) != 0)
      {
        v15 = v14;
        v16 = v4;
        v17 = &v12[OBJC_IVAR____TtC14MediaSuggester20MSPlayMediaAppIntent_bundleID];
        v18 = *&v12[OBJC_IVAR____TtC14MediaSuggester20MSPlayMediaAppIntent_bundleID];
        v19 = *&v12[OBJC_IVAR____TtC14MediaSuggester20MSPlayMediaAppIntent_bundleID + 8];
        v20 = objc_allocWithZone(MSUnifiedMediaIntent);
        v21 = v15;

        v22 = sub_22CA20E10();

        v23 = [v20 initWithIntent:v21 bundleID:v22];

        v24 = *v17;
        v25 = v17[1];
        v26 = *&v12[OBJC_IVAR____TtC14MediaSuggester20MSPlayMediaAppIntent_suggestionSource];
        v27 = objc_allocWithZone(MSSuggestion);
        v28 = v23;

        v29 = sub_22C9DDDC8(v28, v24, v25, v26);
        v30 = OBJC_IVAR___MSSuggestion_mediaAppIntent;
        sub_22C9DE248();
        v31 = *&v29[v30];
        *&v29[v30] = v12;
        v32 = v12;

        [v29 setIntentDate_];
        v33 = v29;
        MEMORY[0x2318BA9F0]();
        v34 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x18);
        if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v34 >> 1)
        {
          sub_22C9FB058(v34);
          sub_22CA20EE0();
        }

        sub_22CA20F00();

        v9 = v38;
        v4 = v16;
        v6 = v36;
        v1 = v37;
        v8 = v35;
        v10 = 0x27872A000;
      }

      else
      {
      }

      ++v7;
    }

    while (v6 != v7);

    return v9;
  }

  __break(1u);
  return result;
}