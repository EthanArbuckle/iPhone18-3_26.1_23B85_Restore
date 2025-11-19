uint64_t sub_24F23756C()
{
  v1 = v0;
  v2 = sub_24F92A088();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24F92A078();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = (v0 + qword_27F22F1B0);
  v12 = *(v0 + qword_27F22F1B0);
  if (!v12)
  {
    v17 = 0;
LABEL_7:
    *v11 = 0;
    v11[1] = 0;
    sub_24E824448(v17);
    return 1;
  }

  v65 = v8;

  v14 = v12(v13);
  sub_24E824448(v12);
  v66 = v14;
  if (!v14)
  {
    v17 = *v11;
    goto LABEL_7;
  }

  v15 = *(v0 + qword_27F22F1B8);
  v62 = v10;
  if (v15)
  {

    v16 = v15(v66);
    sub_24E824448(v15);
  }

  else
  {
    v16 = v66;
  }

  v19 = OBJC_IVAR____TtC12GameStoreKit11ArticlePage_shelfOrdering;
  swift_beginAccess();
  if (!*(*(v16 + v19) + 16))
  {

    v17 = *v11;
    goto LABEL_7;
  }

  v60 = v7;
  *(v0 + qword_27F22F198) = v16;

  v20 = *(v16 + v19);
  v21 = qword_27F22F1A0;
  *(v0 + qword_27F22F1A0) = v20;

  v22 = OBJC_IVAR____TtC12GameStoreKit11ArticlePage_shelfMapping;
  swift_beginAccess();
  v59 = v22;
  v23 = *(v16 + v22);
  v24 = qword_27F39C780;
  swift_beginAccess();
  *(v1 + v24) = v23;

  v64 = *(v16 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_isIncomplete);
  if ((v64 & 1) == 0)
  {
    v25 = *(v1 + qword_27F22F1F0);
    if (v25)
    {
      v26 = v16;
      v27 = *(v25 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasRequests);
      result = swift_beginAccess();
      v28 = *(v27 + 48);
      v29 = __OFADD__(v28, 1);
      v30 = v28 + 1;
      if (v29)
      {
LABEL_38:
        __break(1u);
        return result;
      }

      *(v27 + 48) = v30;
      v31 = v30 == 0;
      swift_beginAccess();
      *(v27 + 40) = v31;
      swift_beginAccess();
      v16 = v26;
      if (swift_weakLoadStrong())
      {
        sub_24EA6BFA0();
      }
    }

    if (*(v1 + qword_27F39C7D8))
    {
      *v5 = 1;
      (*(v3 + 104))(v5, *MEMORY[0x277D222A0], v2);
      sub_24F92A0D8();
      (*(v3 + 8))(v5, v2);
    }

    sub_24E60169C(v16 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_nextPage, &v68, &qword_27F2129B0);
    v71 = 0;
    v72 = 0;
    v32 = v16;
    v33 = qword_27F39C788;
    swift_beginAccess();
    sub_24EBD46D4(&v68, v1 + v33);
    swift_endAccess();
    v34 = v1 + v33;
    v16 = v32;
    sub_24E9B7D88(v34, v67);
    sub_24F92AD88();
    sub_24E94E128(v67);
    sub_24E94E128(&v68);
  }

  v35 = *(v1 + qword_27F39C7A0);
  v36 = *(v1 + v21);
  v37 = MEMORY[0x277D84F90];
  v67[0] = MEMORY[0x277D84F90];
  v38 = *(v36 + 16);
  v63 = v16;

  if (!v38)
  {
    goto LABEL_29;
  }

  v39 = 0;
  v40 = v36 + 32;
  v57 = v38 - 1;
  v61 = v35;
  v58 = v36 + 32;
  do
  {
    v41 = v40 + 40 * v39;
    v42 = v39;
    while (1)
    {
      if (v42 >= *(v36 + 16))
      {
        __break(1u);
        goto LABEL_38;
      }

      sub_24E65864C(v41, &v68);
      if (*(*(v1 + v24) + 16))
      {
        break;
      }

LABEL_21:
      ++v42;
      result = sub_24E6585F8(&v68);
      v41 += 40;
      if (v38 == v42)
      {
        goto LABEL_29;
      }
    }

    sub_24E76D934(&v68);
    if ((v43 & 1) == 0)
    {

      goto LABEL_21;
    }

    v44 = sub_24E6585F8(&v68);
    MEMORY[0x253050F00](v44);
    if (*((v67[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v67[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_24F92B5E8();
    }

    v39 = v42 + 1;
    result = sub_24F92B638();
    v37 = v67[0];
    v40 = v58;
  }

  while (v57 != v42);
LABEL_29:

  v45 = v63;
  v68 = v63;
  v69 = v37;
  v46 = v64;
  v70 = v64;
  sub_24F92AD88();
  sub_24F24D968(v68, v69, v70);
  v47 = v46;
  if (v46)
  {
    goto LABEL_34;
  }

  sub_24F2484E8(v48, 0, v1);

  if (*(v1 + qword_27F22F1F0))
  {
    sub_24ED6F318();
  }

  v49 = v60;
  if (!*(v1 + qword_27F39C7D8))
  {
LABEL_34:
  }

  else
  {
    v50 = OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics;
    swift_beginAccess();
    v51 = sub_24F928818();
    v52 = &v45[v50];
    v53 = v62;
    (*(*(v51 - 8) + 16))(v62, v52, v51);
    v54 = v65;
    (*(v49 + 104))(v53, *MEMORY[0x277D22290], v65);
    sub_24F92A0C8();

    (*(v49 + 8))(v53, v54);
  }

  v55 = *v11;
  *v11 = 0;
  v11[1] = 0;
  sub_24E824448(v55);
  return v47;
}

uint64_t sub_24F237D10(void (*a1)(uint64_t, uint64_t, __n128), void (*a2)(uint64_t (*)(uint64_t), uint64_t), uint64_t (*a3)(void), void (*a4)(void))
{
  v9 = v4;
  v10 = sub_24F92A088();
  v78 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24F92A078();
  v14 = *(v13 - 8);
  v17 = MEMORY[0x28223BE20](v13);
  v18 = (v9 + qword_27F22F1B0);
  v19 = *(v9 + qword_27F22F1B0);
  if (!v19)
  {
    v26 = 0;
LABEL_7:
    v27 = v18[1];
    *v18 = 0;
    v18[1] = 0;
    a1(v26, v27, v17);
    return 1;
  }

  v75 = v10;
  v76 = a4;
  v73 = &v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = v15;
  v20 = v18[1];

  v22 = v19(v21);
  (a1)(v19, v20);
  v79 = v22;
  if (!v22)
  {
    v26 = *v18;
    goto LABEL_7;
  }

  v77 = a1;
  v23 = *(v9 + qword_27F22F1B8);
  v72 = v14;
  if (v23)
  {
    v24 = *(v9 + qword_27F22F1B8 + 8);

    v25 = v23(v79);
    a2(v23, v24);
  }

  else
  {
    v25 = v79;
  }

  v29 = off_28620C6F8[0];
  v30 = a3(0);
  v31 = *(v29() + 16);

  if (!v31)
  {

    v58 = *v18;
    v59 = v18[1];
    *v18 = 0;
    v18[1] = 0;
    v77(v58, v59);
    return 1;
  }

  *(v9 + qword_27F22F198) = v25;

  v32 = v29();
  v33 = qword_27F22F1A0;
  *(v9 + qword_27F22F1A0) = v32;

  v70 = v30;
  v69 = off_28620C700[0];
  v34 = off_28620C700[0]();
  v35 = qword_27F39C780;
  swift_beginAccess();
  *(v9 + v35) = v34;

  v28 = *(v25 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_isIncomplete);
  if (v28)
  {
LABEL_19:
    v75 = *(v9 + qword_27F39C7A0);
    v46 = *(v9 + v33);
    v47 = MEMORY[0x277D84F90];
    v80[0] = MEMORY[0x277D84F90];
    v48 = *(v46 + 16);
    v78 = v25;

    if (v48)
    {
      v49 = 0;
      v50 = v46 + 32;
      v67 = v48 - 1;
      v71 = v28;
      v68 = v46 + 32;
      while (1)
      {
        v51 = v50 + 40 * v49;
        v52 = v49;
        while (1)
        {
          if (v52 >= *(v46 + 16))
          {
            __break(1u);
            goto LABEL_44;
          }

          sub_24E65864C(v51, &v81);
          if (*(*(v9 + v35) + 16))
          {
            break;
          }

LABEL_22:
          ++v52;
          result = sub_24E6585F8(&v81);
          v51 += 40;
          if (v48 == v52)
          {
            v28 = v71;
            goto LABEL_33;
          }
        }

        sub_24E76D934(&v81);
        if ((v53 & 1) == 0)
        {
          break;
        }

        v54 = sub_24E6585F8(&v81);
        MEMORY[0x253050F00](v54);
        if (*((v80[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v80[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_24F92B5E8();
        }

        v49 = v52 + 1;
        result = sub_24F92B638();
        v47 = v80[0];
        v55 = v67 == v52;
        v28 = v71;
        v50 = v68;
        if (v55)
        {
          goto LABEL_33;
        }
      }

      goto LABEL_22;
    }

LABEL_33:

    v56 = v78;
    v81 = v78;
    v82 = v47;
    v83 = v28;
    sub_24F92AD88();
    sub_24F24D968(v81, v82, v83);
    if (v28)
    {

      v57 = v77;
    }

    else
    {
      (v69)(v70);
      v76();

      v57 = v77;
      if (*(v9 + qword_27F22F1F0))
      {
        sub_24ED6F318();
      }

      if (*(v9 + qword_27F39C7D8))
      {
        v60 = OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics;
        swift_beginAccess();
        v61 = sub_24F928818();
        v62 = v73;
        (*(*(v61 - 8) + 16))(v73, v56 + v60, v61);
        v63 = v72;
        v64 = v74;
        (*(v72 + 104))(v62, *MEMORY[0x277D22290], v74);
        sub_24F92A0C8();

        (*(v63 + 8))(v62, v64);
      }

      else
      {
      }
    }

    v65 = *v18;
    v66 = v18[1];
    *v18 = 0;
    v18[1] = 0;
    v57(v65, v66);
    return v28;
  }

  v36 = *(v9 + qword_27F22F1F0);
  if (!v36)
  {
LABEL_16:
    if (*(v9 + qword_27F39C7D8))
    {
      *v12 = 1;
      v43 = v78;
      v44 = v75;
      (v78)[13](v12, *MEMORY[0x277D222A0], v75);
      sub_24F92A0D8();
      (v43[1])(v12, v44);
    }

    sub_24E60169C(v25 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_nextPage, &v81, &qword_27F2129B0);
    v84 = 0;
    v85 = 0;
    v45 = qword_27F39C788;
    swift_beginAccess();
    sub_24EBD46D4(&v81, v9 + v45);
    swift_endAccess();
    sub_24E9B7D88(v9 + v45, v80);
    sub_24F92AD88();
    sub_24E94E128(v80);
    sub_24E94E128(&v81);
    goto LABEL_19;
  }

  v37 = *(v36 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasRequests);
  result = swift_beginAccess();
  v39 = *(v37 + 48);
  v40 = __OFADD__(v39, 1);
  v41 = v39 + 1;
  if (!v40)
  {
    *(v37 + 48) = v41;
    v42 = v41 == 0;
    swift_beginAccess();
    *(v37 + 40) = v42;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_24EA6BFA0();
    }

    goto LABEL_16;
  }

LABEL_44:
  __break(1u);
  return result;
}

uint64_t sub_24F238564()
{
  v1 = v0;
  v2 = sub_24F92A088();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24F92A078();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = (v0 + qword_27F22F1B0);
  v12 = *(v0 + qword_27F22F1B0);
  if (!v12)
  {
    v17 = 0;
LABEL_7:
    *v11 = 0;
    v11[1] = 0;
    sub_24E824448(v17);
    return 1;
  }

  v65 = v8;

  v14 = v12(v13);
  sub_24E824448(v12);
  v66 = v14;
  if (!v14)
  {
    v17 = *v11;
    goto LABEL_7;
  }

  v15 = *(v0 + qword_27F22F1B8);
  v62 = v10;
  if (v15)
  {

    v16 = v15(v66);
    sub_24E824448(v15);
  }

  else
  {
    v16 = v66;
  }

  v19 = OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_shelfOrdering;
  swift_beginAccess();
  if (!*(*(v16 + v19) + 16))
  {

    v17 = *v11;
    goto LABEL_7;
  }

  v60 = v7;
  *(v0 + qword_27F22F198) = v16;

  v20 = *(v16 + v19);
  v21 = qword_27F22F1A0;
  *(v0 + qword_27F22F1A0) = v20;

  v22 = OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_shelfMapping;
  swift_beginAccess();
  v59 = v22;
  v23 = *(v16 + v22);
  v24 = qword_27F39C780;
  swift_beginAccess();
  *(v1 + v24) = v23;

  v64 = *(v16 + OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_isIncomplete);
  if ((v64 & 1) == 0)
  {
    v25 = *(v1 + qword_27F22F1F0);
    if (v25)
    {
      v26 = v16;
      v27 = *(v25 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasRequests);
      result = swift_beginAccess();
      v28 = *(v27 + 48);
      v29 = __OFADD__(v28, 1);
      v30 = v28 + 1;
      if (v29)
      {
LABEL_38:
        __break(1u);
        return result;
      }

      *(v27 + 48) = v30;
      v31 = v30 == 0;
      swift_beginAccess();
      *(v27 + 40) = v31;
      swift_beginAccess();
      v16 = v26;
      if (swift_weakLoadStrong())
      {
        sub_24EA6BFA0();
      }
    }

    if (*(v1 + qword_27F39C7D8))
    {
      *v5 = 1;
      (*(v3 + 104))(v5, *MEMORY[0x277D222A0], v2);
      sub_24F92A0D8();
      (*(v3 + 8))(v5, v2);
    }

    sub_24E60169C(v16 + OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_nextPage, &v68, &qword_27F2129B0);
    v71 = 0;
    v72 = 0;
    v32 = v16;
    v33 = qword_27F39C788;
    swift_beginAccess();
    sub_24EBD46D4(&v68, v1 + v33);
    swift_endAccess();
    v34 = v1 + v33;
    v16 = v32;
    sub_24E9B7D88(v34, v67);
    sub_24F92AD88();
    sub_24E94E128(v67);
    sub_24E94E128(&v68);
  }

  v35 = *(v1 + qword_27F39C7A0);
  v36 = *(v1 + v21);
  v37 = MEMORY[0x277D84F90];
  v67[0] = MEMORY[0x277D84F90];
  v38 = *(v36 + 16);
  v63 = v16;

  if (!v38)
  {
    goto LABEL_29;
  }

  v39 = 0;
  v40 = v36 + 32;
  v57 = v38 - 1;
  v61 = v35;
  v58 = v36 + 32;
  do
  {
    v41 = v40 + 40 * v39;
    v42 = v39;
    while (1)
    {
      if (v42 >= *(v36 + 16))
      {
        __break(1u);
        goto LABEL_38;
      }

      sub_24E65864C(v41, &v68);
      if (*(*(v1 + v24) + 16))
      {
        break;
      }

LABEL_21:
      ++v42;
      result = sub_24E6585F8(&v68);
      v41 += 40;
      if (v38 == v42)
      {
        goto LABEL_29;
      }
    }

    sub_24E76D934(&v68);
    if ((v43 & 1) == 0)
    {

      goto LABEL_21;
    }

    v44 = sub_24E6585F8(&v68);
    MEMORY[0x253050F00](v44);
    if (*((v67[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v67[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_24F92B5E8();
    }

    v39 = v42 + 1;
    result = sub_24F92B638();
    v37 = v67[0];
    v40 = v58;
  }

  while (v57 != v42);
LABEL_29:

  v45 = v63;
  v68 = v63;
  v69 = v37;
  v46 = v64;
  v70 = v64;
  sub_24F92AD88();
  sub_24F24D968(v68, v69, v70);
  v47 = v46;
  if (v46)
  {
    goto LABEL_34;
  }

  sub_24F24A1E4(v48, 0, v1);

  if (*(v1 + qword_27F22F1F0))
  {
    sub_24ED6F318();
  }

  v49 = v60;
  if (!*(v1 + qword_27F39C7D8))
  {
LABEL_34:
  }

  else
  {
    v50 = OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics;
    swift_beginAccess();
    v51 = sub_24F928818();
    v52 = &v45[v50];
    v53 = v62;
    (*(*(v51 - 8) + 16))(v62, v52, v51);
    v54 = v65;
    (*(v49 + 104))(v53, *MEMORY[0x277D22290], v65);
    sub_24F92A0C8();

    (*(v49 + 8))(v53, v54);
  }

  v55 = *v11;
  *v11 = 0;
  v11[1] = 0;
  sub_24E824448(v55);
  return v47;
}

uint64_t sub_24F238D08()
{
  v1 = v0;
  v2 = sub_24F92A088();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24F92A078();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (v0 + qword_27F22F1B0);
  v11 = *(v0 + qword_27F22F1B0);
  if (!v11)
  {
    v18 = 0;
LABEL_7:
    *v10 = 0;
    v10[1] = 0;
    sub_24E824448(v18);
    return 1;
  }

  v13 = v11(v12);
  v14 = v11;
  v15 = v13;
  sub_24E824448(v14);
  if (!v15)
  {
    v18 = *v10;
    goto LABEL_7;
  }

  v62 = v9;
  v63 = v7;
  v16 = *(v0 + qword_27F22F1B8);
  v61 = v6;

  if (v16)
  {
    v17 = v16(v15);
    sub_24E824448(v16);
  }

  else
  {
    v17 = v15;
  }

  v20 = OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_shelfOrdering;
  swift_beginAccess();
  if (!*(*(v17 + v20) + 16))
  {

    v18 = *v10;
    goto LABEL_7;
  }

  *(v0 + qword_27F22F198) = v17;

  v21 = *(v17 + v20);
  v60 = qword_27F22F1A0;
  *(v0 + qword_27F22F1A0) = v21;

  v22 = OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_shelfMapping;
  swift_beginAccess();
  v59 = v22;
  v23 = *(v17 + v22);
  v24 = qword_27F39C780;
  swift_beginAccess();
  *(v1 + v24) = v23;

  v25 = *(v1 + qword_27F22F1F0);
  v64 = v17;
  if (v25)
  {
    v26 = *(v25 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasRequests);
    result = swift_beginAccess();
    v27 = *(v26 + 48);
    v28 = __OFADD__(v27, 1);
    v29 = v27 + 1;
    if (v28)
    {
LABEL_38:
      __break(1u);
      return result;
    }

    *(v26 + 48) = v29;
    v30 = v29 == 0;
    swift_beginAccess();
    *(v26 + 40) = v30;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    v17 = v64;
    if (Strong)
    {
      sub_24EA6BFA0();
    }
  }

  v57 = v25;
  v32 = *(v1 + qword_27F39C7D8);
  if (v32)
  {
    *v5 = 1;
    (*(v3 + 104))(v5, *MEMORY[0x277D222A0], v2);
    sub_24F92A0D8();
    (*(v3 + 8))(v5, v2);
  }

  v56 = v32;
  v58 = v15;
  sub_24E60169C(v17 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_nextPage, &v66, &qword_27F2129B0);
  v69 = 0;
  v70 = 0;
  v33 = qword_27F39C788;
  swift_beginAccess();
  sub_24EBD46D4(&v66, v1 + v33);
  swift_endAccess();
  v34 = v1 + v33;
  v35 = v64;
  sub_24E9B7D88(v34, v65);
  sub_24F92AD88();
  sub_24E94E128(v65);
  sub_24E94E128(&v66);
  v36 = *(v1 + qword_27F39C7A0);
  v37 = *(v1 + v60);
  v38 = MEMORY[0x277D84F90];
  v65[0] = MEMORY[0x277D84F90];
  v39 = *(v37 + 16);

  if (v39)
  {
    v40 = 0;
    v41 = v37 + 32;
    v55[0] = v39 - 1;
    v55[1] = v36;
    v60 = v37 + 32;
    while (1)
    {
      v42 = v41 + 40 * v40;
      v43 = v40;
      while (1)
      {
        if (v43 >= *(v37 + 16))
        {
          __break(1u);
          goto LABEL_38;
        }

        sub_24E65864C(v42, &v66);
        if (*(*(v1 + v24) + 16))
        {
          break;
        }

LABEL_19:
        ++v43;
        result = sub_24E6585F8(&v66);
        v42 += 40;
        if (v39 == v43)
        {
          v35 = v64;
          goto LABEL_30;
        }
      }

      sub_24E76D934(&v66);
      if ((v44 & 1) == 0)
      {
        break;
      }

      v45 = sub_24E6585F8(&v66);
      MEMORY[0x253050F00](v45);
      if (*((v65[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v65[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24F92B5E8();
      }

      v40 = v43 + 1;
      result = sub_24F92B638();
      v38 = v65[0];
      v46 = v55[0] == v43;
      v35 = v64;
      v41 = v60;
      if (v46)
      {
        goto LABEL_30;
      }
    }

    goto LABEL_19;
  }

LABEL_30:

  v66 = v35;
  v67 = v38;
  v68 = 0;
  sub_24F92AD88();
  sub_24F24D968(v66, v67, v68);

  sub_24F24A4C4(v47, 0, v1);

  if (v57)
  {
    sub_24ED6F318();
  }

  v48 = v63;
  v49 = v62;
  if (v56)
  {
    v50 = OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics;
    v51 = v64;
    swift_beginAccess();
    v52 = sub_24F928818();
    (*(*(v52 - 8) + 16))(v49, v51 + v50, v52);
    v53 = v61;
    (*(v48 + 104))(v49, *MEMORY[0x277D22290], v61);
    sub_24F92A0C8();

    (*(v48 + 8))(v49, v53);
  }

  else
  {
  }

  v54 = *v10;
  *v10 = 0;
  v10[1] = 0;
  sub_24E824448(v54);
  return 0;
}

uint64_t sub_24F239498()
{
  v1 = sub_24F92A088();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v71 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24F92A078();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (v0 + qword_27F22F1B0);
  v11 = *(v0 + qword_27F22F1B0);
  if (!v11)
  {
    v16 = 0;
LABEL_16:
    *v10 = 0;
    v10[1] = 0;
    sub_24E824448(v16);
    return 1;
  }

  v82 = v7;

  v13 = v11(v12);
  sub_24E824448(v11);
  if (!v13)
  {
    v16 = *v10;
    goto LABEL_16;
  }

  v79 = v4;
  v78 = v9;
  v14 = *(v0 + qword_27F22F1B8);
  v75 = v6;
  v83 = v13;
  v80 = v0;
  v77 = v1;
  v76 = v2;

  if (v14)
  {
    v15 = v14(v13);
    sub_24E824448(v14);
  }

  else
  {
    v15 = v13;
  }

  v17 = sub_24F24DA18(&qword_27F23CC60, type metadata accessor for SearchChartsAndCategoriesPage);
  v18 = *(v17 + 56);
  v81 = type metadata accessor for SearchChartsAndCategoriesPage();
  v19 = v18(v81, v17);
  v20 = *(*v15 + 184);
  v84 = v15;
  v21 = (v15 + v20);
  swift_beginAccess();
  if (!*(v19 + 16) || (v23 = *v21, v22 = v21[1], , v24 = sub_24E7728F0(v23, v22), v26 = v25, , (v26 & 1) == 0))
  {

LABEL_15:

    v16 = *v10;
    goto LABEL_16;
  }

  v27 = *(*(v19 + 56) + 8 * v24);

  v28 = *(v27 + 16);

  if (!v28)
  {

    goto LABEL_15;
  }

  v29 = v80;
  *(v80 + qword_27F22F198) = v84;

  v30 = v18(v81, v17);
  v31 = MEMORY[0x277D84F90];
  if (*(v30 + 16))
  {
    v33 = *v21;
    v32 = v21[1];

    v34 = sub_24E7728F0(v33, v32);
    LOBYTE(v33) = v35;

    if (v33)
    {
      v36 = *(*(v30 + 56) + 8 * v34);
    }

    else
    {
      v36 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v36 = MEMORY[0x277D84F90];
  }

  v38 = qword_27F22F1A0;
  *(v29 + qword_27F22F1A0) = v36;

  v39 = off_28620E0A8[0];
  v40 = v84;
  v41 = off_28620E0A8[0]();
  v42 = qword_27F39C780;
  swift_beginAccess();
  *(v29 + v42) = v41;

  v74 = v40[*(*v40 + 200)];
  v43 = v79;
  if ((v74 & 1) == 0)
  {
    v44 = *(v29 + qword_27F22F1F0);
    if (v44)
    {
      v45 = *(v44 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasRequests);
      result = swift_beginAccess();
      v46 = *(v45 + 48);
      v47 = __OFADD__(v46, 1);
      v48 = v46 + 1;
      if (v47)
      {
LABEL_50:
        __break(1u);
        return result;
      }

      *(v45 + 48) = v48;
      v49 = v48 == 0;
      swift_beginAccess();
      *(v45 + 40) = v49;
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        sub_24EA6BFA0();
      }
    }

    if (*(v29 + qword_27F39C7D8))
    {
      *v43 = 1;
      v50 = v31;
      v51 = v76;
      v52 = v77;
      (*(v76 + 13))(v43, *MEMORY[0x277D222A0], v77);
      sub_24F92A0D8();
      (*(v51 + 1))(v43, v52);
      v31 = v50;
    }

    v40 = v84;
    sub_24E60169C(&v84[*(*v84 + 192)], &v86, &qword_27F2129B0);
    v89 = 0;
    v90 = 0;
    v53 = qword_27F39C788;
    swift_beginAccess();
    sub_24EBD46D4(&v86, v29 + v53);
    swift_endAccess();
    sub_24E9B7D88(v29 + v53, v85);
    sub_24F92AD88();
    sub_24E94E128(v85);
    sub_24E94E128(&v86);
  }

  v76 = v39;
  v77 = *(v29 + qword_27F39C7A0);
  v54 = *(v29 + v38);
  v85[0] = v31;
  v55 = *(v54 + 16);

  if (!v55)
  {
    v79 = v31;
    goto LABEL_42;
  }

  v56 = 0;
  v57 = v54 + 32;
  v72 = v55 - 1;
  v79 = MEMORY[0x277D84F90];
  v73 = v54 + 32;
  do
  {
    v58 = v57 + 40 * v56;
    v59 = v56;
    while (1)
    {
      if (v59 >= *(v54 + 16))
      {
        __break(1u);
        goto LABEL_50;
      }

      sub_24E65864C(v58, &v86);
      if (*(*(v29 + v42) + 16))
      {
        break;
      }

LABEL_31:
      ++v59;
      result = sub_24E6585F8(&v86);
      v58 += 40;
      if (v55 == v59)
      {
        v40 = v84;
        goto LABEL_42;
      }
    }

    sub_24E76D934(&v86);
    if ((v60 & 1) == 0)
    {

      goto LABEL_31;
    }

    v61 = sub_24E6585F8(&v86);
    MEMORY[0x253050F00](v61);
    if (*((v85[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v85[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_24F92B5E8();
    }

    v56 = v59 + 1;
    result = sub_24F92B638();
    v79 = v85[0];
    v40 = v84;
    v57 = v73;
  }

  while (v72 != v59);
LABEL_42:

  v86 = v40;
  v87 = v79;
  v62 = v74;
  v88 = v74;
  sub_24F92AD88();
  sub_24F24D968(v86, v87, v88);
  if (v62)
  {
    goto LABEL_47;
  }

  v63 = (v76)(v81);
  sub_24F24A634(v63, 0, v29);

  if (*(v29 + qword_27F22F1F0))
  {
    sub_24ED6F318();
  }

  v64 = *(v29 + qword_27F39C7D8);
  v65 = v78;
  if (!v64)
  {
LABEL_47:
  }

  else
  {
    v66 = OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics;
    swift_beginAccess();
    v67 = sub_24F928818();
    (*(*(v67 - 8) + 16))(v65, &v40[v66], v67);
    v68 = v75;
    v69 = v82;
    (*(v75 + 104))(v65, *MEMORY[0x277D22290], v82);
    sub_24F92A0C8();

    (*(v68 + 8))(v65, v69);
  }

  v70 = *v10;
  *v10 = 0;
  v10[1] = 0;
  sub_24E824448(v70);
  return v74;
}

uint64_t sub_24F239E3C(unint64_t a1, uint64_t (*a2)(void))
{
  v20[0] = MEMORY[0x277D84F90];
  v3 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_21:
    v4 = sub_24F92C738();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  v6 = MEMORY[0x277D84F90];
  while (v4 != v5)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x253052270](v5, a1);
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_19;
      }
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        goto LABEL_20;
      }

      v7 = *(a1 + 8 * v5 + 32);

      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
LABEL_19:
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }
    }

    v9 = OBJC_IVAR____TtC12GameStoreKit5Shelf_pageChangeMetrics;
    swift_beginAccess();
    v10 = *(v7 + v9);

    ++v5;
    if (v10)
    {
      MEMORY[0x253050F00](v11);
      if (*((v20[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v20[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24F92B5E8();
      }

      sub_24F92B638();
      v6 = v20[0];
      v5 = v8;
    }
  }

  if (v6 >> 62)
  {
    v12 = v16;
    if (!sub_24F92C738())
    {
    }
  }

  else
  {
    v12 = v16;
    if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
    }
  }

  v13 = *(v12 + qword_27F22F198);
  if (v13)
  {
    v18 = a2(0);
    v19 = &protocol witness table for BasePage;
    *&v17 = v13;
    sub_24E612C80(&v17, v20);

    sub_24F24A914(v6, v20, v12);

    return __swift_destroy_boxed_opaque_existential_1(v20);
  }
}

uint64_t sub_24F23A070(unint64_t a1, uint64_t (*a2)(void))
{
  v20[0] = MEMORY[0x277D84F90];
  v3 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_21:
    v4 = sub_24F92C738();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  v6 = MEMORY[0x277D84F90];
  while (v4 != v5)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x253052270](v5, a1);
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_19;
      }
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        goto LABEL_20;
      }

      v7 = *(a1 + 8 * v5 + 32);

      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
LABEL_19:
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }
    }

    v9 = OBJC_IVAR____TtC12GameStoreKit5Shelf_pageChangeMetrics;
    swift_beginAccess();
    v10 = *(v7 + v9);

    ++v5;
    if (v10)
    {
      MEMORY[0x253050F00](v11);
      if (*((v20[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v20[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24F92B5E8();
      }

      sub_24F92B638();
      v6 = v20[0];
      v5 = v8;
    }
  }

  if (v6 >> 62)
  {
    v12 = v16;
    if (!sub_24F92C738())
    {
    }
  }

  else
  {
    v12 = v16;
    if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
    }
  }

  v13 = *(v12 + qword_27F22F198);
  if (v13)
  {
    v18 = a2(0);
    v19 = &protocol witness table for BasePage;
    *&v17 = v13;
    sub_24E612C80(&v17, v20);

    sub_24F24A914(v6, v20, v12);

    return __swift_destroy_boxed_opaque_existential_1(v20);
  }
}

uint64_t sub_24F23A2A4(uint64_t a1)
{
  v2 = MEMORY[0x277D84F98];
  v30 = MEMORY[0x277D84F98];
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  while (v6)
  {
LABEL_13:
    v17 = __clz(__rbit64(v6)) | (v9 << 6);
    sub_24E65864C(*(a1 + 48) + 40 * v17, v27);
    v29 = *(*(a1 + 56) + 8 * v17);

    v18 = sub_24ED78FB8();
    v25 = v27[1];
    v26 = v28;
    v24 = v27[0];
    v19 = *(v2 + 16);
    if (*(v2 + 24) <= v19)
    {
      sub_24E899884(v19 + 1, 1);
      v2 = v30;
    }

    result = sub_24F92C7B8();
    v10 = v2 + 64;
    v11 = -1 << *(v2 + 32);
    v12 = result & ~v11;
    v13 = v12 >> 6;
    if (((-1 << v12) & ~*(v2 + 64 + 8 * (v12 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v11) >> 6;
      while (++v13 != v21 || (v20 & 1) == 0)
      {
        v22 = v13 == v21;
        if (v13 == v21)
        {
          v13 = 0;
        }

        v20 |= v22;
        v23 = *(v10 + 8 * v13);
        if (v23 != -1)
        {
          v14 = __clz(__rbit64(~v23)) + (v13 << 6);
          goto LABEL_7;
        }
      }

      goto LABEL_25;
    }

    v14 = __clz(__rbit64((-1 << v12) & ~*(v2 + 64 + 8 * (v12 >> 6)))) | v12 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
    v6 &= v6 - 1;
    *(v10 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
    v15 = *(v2 + 48) + 40 * v14;
    *v15 = v24;
    *(v15 + 16) = v25;
    *(v15 + 32) = v26;
    *(*(v2 + 56) + 8 * v14) = v18;
    ++*(v2 + 16);
  }

  while (1)
  {
    v16 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v16 >= v7)
    {

      return v2;
    }

    v6 = *(v3 + 8 * v16);
    ++v9;
    if (v6)
    {
      v9 = v16;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_24F23A4D8(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x277D84F98];
  v6 = a1 + 64;
  v5 = *(a1 + 64);
  v42 = MEMORY[0x277D84F98];
  v7 = 1 << *(a1 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & v5;
  v10 = qword_27F39C780;

  v43 = v10;
  result = swift_beginAccess();
  v12 = 0;
  v13 = (v7 + 63) >> 6;
  if (!v9)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    while (1)
    {
      v15 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v16 = v15 | (v12 << 6);
      sub_24E65864C(*(a1 + 48) + 40 * v16, v40);
      *(&v41 + 1) = *(*(a1 + 56) + 8 * v16);
      v38 = v40[1];
      v39 = v41;
      v37 = v40[0];
      v17 = *(a2 + v43);
      if (*(v17 + 16))
      {
        break;
      }

LABEL_7:
      result = sub_24E601704(&v37, &qword_27F222718);
      if (!v9)
      {
        goto LABEL_8;
      }
    }

    v18 = *(&v39 + 1);
    v19 = OBJC_IVAR____TtC12GameStoreKit5Shelf_id;

    v20 = sub_24E76D934(v18 + v19);
    if ((v21 & 1) == 0)
    {

      goto LABEL_7;
    }

    v22 = *(*(v17 + 56) + 8 * v20);

    v35 = v38;
    v36 = v39;
    v34 = v37;
    v23 = *(v4 + 16);
    if (*(v4 + 24) <= v23)
    {
      sub_24E899884(v23 + 1, 1);
      v4 = v42;
    }

    result = sub_24F92C7B8();
    v24 = v4 + 64;
    v25 = -1 << *(v4 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v4 + 64 + 8 * (v26 >> 6))) == 0)
    {
      v29 = 0;
      v30 = (63 - v25) >> 6;
      while (++v27 != v30 || (v29 & 1) == 0)
      {
        v31 = v27 == v30;
        if (v27 == v30)
        {
          v27 = 0;
        }

        v29 |= v31;
        v32 = *(v24 + 8 * v27);
        if (v32 != -1)
        {
          v28 = __clz(__rbit64(~v32)) + (v27 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v4 + 64 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v24 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    v33 = *(v4 + 48) + 40 * v28;
    *v33 = v34;
    *(v33 + 16) = v35;
    *(v33 + 32) = v36;
    *(*(v4 + 56) + 8 * v28) = v22;
    ++*(v4 + 16);
  }

  while (v9);
LABEL_8:
  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v13)
    {

      return v4;
    }

    v9 = *(v6 + 8 * v14);
    ++v12;
    if (v9)
    {
      v12 = v14;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_24F23A7C4(char a1)
{
  v3 = v1 + *(*v1 + 176);
  result = swift_beginAccess();
  if (!v3[24] || v3[24] == 1 || *(v3 + 1) | *(v3 + 2) | *v3)
  {
    if (a1)
    {
      sub_24F2FA72C(0, 0, 0, 2);
      swift_beginAccess();
      v5 = v1[3];

      sub_24EBD8B98(0);
      v6 = (*(*v1 + 1112))(0);
      sub_24F23BC74(v5);

      v7 = *(v1 + qword_27F39CC00);
      *(v1 + qword_27F39CC00) = v6;

      sub_24EBC0494(v7);

      return sub_24F23A7C4(1);
    }
  }

  else
  {
    sub_24F2FA72C(1, 0, 0, 2);
    *(v1 + *(*v1 + 736)) = 0;

    if (*(v1 + qword_27F39CC00))
    {

      sub_24F234130();
    }
  }

  return result;
}

uint64_t sub_24F23A970(char a1)
{
  v3 = v1 + *(*v1 + 176);
  result = swift_beginAccess();
  if (!*(v3 + 24) || *(v3 + 24) == 1 || *(v3 + 8) | *(v3 + 16) | *v3)
  {
    if (a1)
    {
      sub_24F2FA72C(0, 0, 0, 2);
      v5 = sub_24F23BB28();
      v6 = *(v1 + qword_27F39CC00);
      *(v1 + qword_27F39CC00) = v5;

      sub_24EBC1940(v6);

      return (*(*v1 + 544))(1);
    }
  }

  else
  {
    sub_24F2FA72C(1, 0, 0, 2);
    *(v1 + *(*v1 + 736)) = 0;

    if (*(v1 + qword_27F39CC00))
    {

      sub_24F234574();
    }
  }

  return result;
}

uint64_t sub_24F23AADC(char a1)
{
  v3 = v1 + *(*v1 + 176);
  result = swift_beginAccess();
  if (!v3[24] || v3[24] == 1 || *(v3 + 1) | *(v3 + 2) | *v3)
  {
    if (a1)
    {
      sub_24F2FA72C(0, 0, 0, 2);
      swift_beginAccess();
      v5 = v1[3];

      sub_24EBD8C34(0);
      v6 = (*(*v1 + 1112))(0);
      sub_24F23BC74(v5);

      v7 = *(v1 + qword_27F39CC00);
      *(v1 + qword_27F39CC00) = v6;

      sub_24EBC2DEC(v7);

      return sub_24F23AADC(1);
    }
  }

  else
  {
    sub_24F2FA72C(1, 0, 0, 2);
    *(v1 + *(*v1 + 736)) = 0;

    if (*(v1 + qword_27F39CC00))
    {

      sub_24F234A0C();
    }
  }

  return result;
}

uint64_t sub_24F23AC88(char a1)
{
  v3 = v1 + *(*v1 + 176);
  result = swift_beginAccess();
  if (!v3[24] || v3[24] == 1 || *(v3 + 1) | *(v3 + 2) | *v3)
  {
    if (a1)
    {
      sub_24F2FA72C(0, 0, 0, 2);
      swift_beginAccess();
      v5 = v1[3];

      sub_24EBD8C68(0);
      v6 = (*(*v1 + 1112))(0);
      sub_24F23BC74(v5);

      v7 = *(v1 + qword_27F39CC00);
      *(v1 + qword_27F39CC00) = v6;

      sub_24EBC4298(v7);

      return sub_24F23AC88(1);
    }
  }

  else
  {
    sub_24F2FA72C(1, 0, 0, 2);
    *(v1 + *(*v1 + 736)) = 0;

    if (*(v1 + qword_27F39CC00))
    {

      sub_24F234E54();
    }
  }

  return result;
}

uint64_t sub_24F23AE34(char a1)
{
  v3 = v1 + *(*v1 + 176);
  result = swift_beginAccess();
  if (!v3[24] || v3[24] == 1 || *(v3 + 1) | *(v3 + 2) | *v3)
  {
    if (a1)
    {
      sub_24F2FA72C(0, 0, 0, 2);
      swift_beginAccess();
      v5 = v1[3];

      sub_24EBD8C9C(0);
      v6 = (*(*v1 + 1112))(0);
      sub_24F23BC74(v5);

      v7 = *(v1 + qword_27F39CC00);
      *(v1 + qword_27F39CC00) = v6;

      sub_24EBC5778(v7);

      return sub_24F23AE34(1);
    }
  }

  else
  {
    sub_24F2FA72C(1, 0, 0, 2);
    *(v1 + *(*v1 + 736)) = 0;

    if (*(v1 + qword_27F39CC00))
    {

      sub_24F2352EC();
    }
  }

  return result;
}

uint64_t sub_24F23AFE0(char a1)
{
  v3 = v1 + *(*v1 + 176);
  result = swift_beginAccess();
  if (!v3[24] || v3[24] == 1 || *(v3 + 1) | *(v3 + 2) | *v3)
  {
    if (a1)
    {
      sub_24F2FA72C(0, 0, 0, 2);
      swift_beginAccess();
      v5 = v1[3];

      sub_24EBD8CD0(0);
      v6 = (*(*v1 + 1112))(0);
      sub_24F23BC74(v5);

      v7 = *(v1 + qword_27F39CC00);
      *(v1 + qword_27F39CC00) = v6;

      sub_24EBC6C24(v7);

      return sub_24F23AFE0(1);
    }
  }

  else
  {
    sub_24F2FA72C(1, 0, 0, 2);
    *(v1 + *(*v1 + 736)) = 0;

    if (*(v1 + qword_27F39CC00))
    {

      sub_24F235784();
    }
  }

  return result;
}

uint64_t sub_24F23B18C(char a1)
{
  v3 = v1 + *(*v1 + 176);
  result = swift_beginAccess();
  if (!v3[24] || v3[24] == 1 || *(v3 + 1) | *(v3 + 2) | *v3)
  {
    if (a1)
    {
      sub_24F2FA72C(0, 0, 0, 2);
      swift_beginAccess();
      v5 = v1[3];

      sub_24EBD8D04(0);
      v6 = (*(*v1 + 1112))(0);
      sub_24F23BC74(v5);

      v7 = *(v1 + qword_27F39CC00);
      *(v1 + qword_27F39CC00) = v6;

      sub_24EBC80D0(v7);

      return sub_24F23B18C(1);
    }
  }

  else
  {
    sub_24F2FA72C(1, 0, 0, 2);
    *(v1 + *(*v1 + 736)) = 0;

    if (*(v1 + qword_27F39CC00))
    {

      sub_24F235BCC();
    }
  }

  return result;
}

uint64_t sub_24F23B338(char a1)
{
  v3 = v1 + *(*v1 + 176);
  result = swift_beginAccess();
  if (!v3[24] || v3[24] == 1 || *(v3 + 1) | *(v3 + 2) | *v3)
  {
    if (a1)
    {
      sub_24F2FA72C(0, 0, 0, 2);
      swift_beginAccess();
      v5 = v1[3];

      sub_24EBD8D38(0);
      v6 = (*(*v1 + 1112))(0);
      sub_24F23BC74(v5);

      v7 = *(v1 + qword_27F39CC00);
      *(v1 + qword_27F39CC00) = v6;

      sub_24EBC957C(v7);

      return sub_24F23B338(1);
    }
  }

  else
  {
    sub_24F2FA72C(1, 0, 0, 2);
    *(v1 + *(*v1 + 736)) = 0;

    if (*(v1 + qword_27F39CC00))
    {

      sub_24F236064();
    }
  }

  return result;
}

uint64_t sub_24F23B4E4(char a1)
{
  v3 = v1 + *(*v1 + 176);
  result = swift_beginAccess();
  if (!v3[24] || v3[24] == 1 || *(v3 + 1) | *(v3 + 2) | *v3)
  {
    if (a1)
    {
      sub_24F2FA72C(0, 0, 0, 2);
      swift_beginAccess();
      v5 = v1[3];

      sub_24EBD8D6C(0);
      v6 = (*(*v1 + 1112))(0);
      sub_24F23BC74(v5);

      v7 = *(v1 + qword_27F39CC00);
      *(v1 + qword_27F39CC00) = v6;

      sub_24EBCAA28(v7);

      return sub_24F23B4E4(1);
    }
  }

  else
  {
    sub_24F2FA72C(1, 0, 0, 2);
    *(v1 + *(*v1 + 736)) = 0;

    if (*(v1 + qword_27F39CC00))
    {

      sub_24F2364AC();
    }
  }

  return result;
}

uint64_t sub_24F23B690(char a1)
{
  v3 = v1 + *(*v1 + 176);
  result = swift_beginAccess();
  v5 = *v3;
  v6 = v3[24];
  if (!v3[24] || v6 == 1 || *(v3 + 1) | *(v3 + 2) | v5)
  {
    if ((a1 & 1) == 0)
    {
      return result;
    }

    v7 = *(v3 + 1);
    v8 = *(v3 + 2);
    *(v3 + 1) = 0;
    *(v3 + 2) = 0;
    *v3 = 0;
    v3[24] = 2;
    sub_24F24D234(v5, v7, v8, v6);
    sub_24EBDED8C(v5, v7, v8, v6);
    v9 = *v3;
    v10 = v3[24];
    if (v3[24])
    {
      if (v10 != 1)
      {
        if (*(v3 + 1) | *(v3 + 2) | v9)
        {
          if (v6 == 2 && v5 == 1 && (v8 | v7) == 0)
          {
            goto LABEL_34;
          }
        }

        else if (v6 == 2 && (v8 | v7 | v5) == 0)
        {
          goto LABEL_34;
        }
      }
    }

    else
    {
      if (v6)
      {
        v13 = 0;
      }

      else
      {
        v13 = v9 == v5;
      }

      if (v13)
      {
        v14 = v5;
        v15 = v7;
        v16 = v8;
        v17 = 0;
LABEL_33:
        sub_24EBDED8C(v14, v15, v16, v17);
LABEL_34:
        swift_beginAccess();
        v21 = v1[3];

        sub_24EBD8DA0(0);
        v22 = (*(*v1 + 1112))(0);
        sub_24F23BC74(v21);

        v23 = *(v1 + qword_27F39CC00);
        *(v1 + qword_27F39CC00) = v22;

        sub_24EBCBED4(v23);

        return sub_24F23B690(1);
      }
    }

    v25 = *v3;
    v27 = *(v3 + 1);
    v29 = *(v3 + 2);
    v31 = v3[24];
    sub_24F24D234(v9, v27, v29, v10);
    sub_24F92AD88();
    sub_24EBDED8C(v5, v7, v8, v6);
    v14 = v25;
    v15 = v27;
    v16 = v29;
    v17 = v31;
    goto LABEL_33;
  }

  *(v3 + 1) = 0;
  *(v3 + 2) = 0;
  *v3 = 1;
  v3[24] = 2;
  sub_24F24D234(0, 0, 0, 2);
  sub_24EBDED8C(0, 0, 0, 2);
  v18 = *v3;
  v19 = v3[24];
  if (v19 < 2 || *(v3 + 1) | *(v3 + 2) | v18)
  {
    v24 = *v3;
    v26 = *(v3 + 1);
    v28 = *(v3 + 2);
    v30 = v3[24];
    sub_24F24D234(v18, v26, v28, v19);
    sub_24F92AD88();
    sub_24EBDED8C(0, 0, 0, 2);
    sub_24EBDED8C(v24, v26, v28, v30);
  }

  *(v1 + *(*v1 + 736)) = 0;

  if (*(v1 + qword_27F39CC00))
  {

    sub_24F2368F4();
  }

  return result;
}

uint64_t sub_24F23B9E0()
{
  v0 = sub_24F92AAB8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F210560 != -1)
  {
    swift_once();
  }

  v4 = __swift_project_value_buffer(v0, qword_27F39C380);
  (*(v1 + 16))(v3, v4, v0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = NSStringFromClass(ObjCClassFromMetadata);
  sub_24F92B0D8();

  return sub_24F92AAD8();
}

uint64_t sub_24F23BB28()
{
  swift_beginAccess();
  v1 = v0[3];

  sub_24EBD8BCC(0);
  v2 = (*(*v0 + 1112))(0);
  if (v1)
  {
    swift_beginAccess();
    v3 = v1 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_appearTime;
    v4 = swift_beginAccess();
    if ((*(v3 + 8) & 1) == 0)
    {
      (*(*v0 + 1352))(v4);
    }
  }

  else
  {
    (*(*v0 + 1352))();
  }

  return v2;
}

uint64_t sub_24F23BC74(uint64_t a1)
{
  v3 = sub_24F91F648();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v9 = &v22[-v8];
  if (!a1)
  {
    result = swift_beginAccess();
    v17 = *(v1 + 24);
    if (!v17)
    {
      return result;
    }

    sub_24F91F638();
    sub_24F91F5E8();
    v19 = v18;
    (*(v4 + 8))(v9, v3);
    v20 = v17 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_appearTime;
    swift_beginAccess();
    *v20 = v19;
    *(v20 + 8) = 0;
    v21 = *(v17 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasAppearTime);
    swift_beginAccess();
    *(v21 + 40) = 1;
    swift_beginAccess();
    if (!swift_weakLoadStrong())
    {
    }

    sub_24EA6BFA0();
LABEL_9:
  }

  swift_beginAccess();
  v10 = a1 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_appearTime;
  result = swift_beginAccess();
  if ((*(v10 + 8) & 1) == 0)
  {
    result = swift_beginAccess();
    v12 = *(v1 + 24);
    if (v12)
    {

      sub_24F91F638();
      sub_24F91F5E8();
      v14 = v13;
      (*(v4 + 8))(v6, v3);
      v15 = v12 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_appearTime;
      swift_beginAccess();
      *v15 = v14;
      *(v15 + 8) = 0;
      v16 = *(v12 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasAppearTime);
      swift_beginAccess();
      *(v16 + 40) = 1;
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        sub_24EA6BFA0();
      }

      goto LABEL_9;
    }
  }

  return result;
}

void sub_24F23BF64(char a1)
{
  if (*(v1 + qword_27F22F1D0) != (a1 & 1))
  {
    v2 = *(v1 + qword_27F22F1F0);
    if (*(v1 + qword_27F22F1D0))
    {
      if (v2)
      {
        v3 = *(v2 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasRequests);
        swift_beginAccess();
        v4 = *(v3 + 48);
        v5 = __OFADD__(v4, 1);
        v6 = v4 + 1;
        if (v5)
        {
          __break(1u);
        }

        else
        {
          *(v3 + 48) = v6;
          v7 = v6 == 0;
          swift_beginAccess();
          *(v3 + 40) = v7;
          swift_beginAccess();
          if (swift_weakLoadStrong())
          {
            sub_24EA6BFA0();
          }
        }
      }
    }

    else if (v2)
    {
      v8 = *(v2 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasRequests);
      swift_beginAccess();
      v9 = *(v8 + 48);
      if (v9 <= 0)
      {
        goto LABEL_12;
      }

      v10 = v9 - 1;
      *(v8 + 48) = v10;
      v11 = v10 == 0;
      swift_beginAccess();
      *(v8 + 40) = v11;
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        sub_24EA6BFA0();
      }

      if (!*(v8 + 48))
      {
LABEL_12:
        PendingPageRender.tryToEstablishUserReadyTime()();
      }
    }
  }
}

uint64_t sub_24F23C0D8(void *a1)
{
  v2 = sub_24F92A078();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + qword_27F39C790) = 0;
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    v19 = a1;
    v20 = 0;
    v21 = 0x80;
    v7 = a1;
    sub_24F92AD88();

    sub_24F24D968(v19, v20, v21);
  }

  swift_beginAccess();
  v8 = swift_weakLoadStrong();
  if (v8)
  {
    v9 = *(v8 + qword_27F22F1F0);

    if (v9)
    {
      v10 = *(v9 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasRequests);
      swift_beginAccess();
      v11 = *(v10 + 48);
      v12 = v11 < 1;
      v13 = v11 - 1;
      if (v12)
      {
        goto LABEL_11;
      }

      *(v10 + 48) = v13;
      v14 = v13 == 0;
      swift_beginAccess();
      *(v10 + 40) = v14;
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        sub_24EA6BFA0();
      }

      if (!*(v10 + 48))
      {
LABEL_11:
        PendingPageRender.tryToEstablishUserReadyTime()();
      }
    }
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v16 = *(result + qword_27F39C7D8);

    if (v16)
    {
      *v5 = a1;
      (*(v3 + 104))(v5, *MEMORY[0x277D22280], v2);
      v17 = a1;
      sub_24F92A0C8();

      return (*(v3 + 8))(v5, v2);
    }
  }

  return result;
}

uint64_t sub_24F23C3C4(void *a1)
{
  v2 = sub_24F92A078();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + qword_27F39C790) = 0;
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    v14 = a1;
    v15 = 0;
    v16 = 0x80;
    v7 = a1;
    sub_24F92AD88();

    sub_24F24D968(v14, v15, v16);
  }

  swift_beginAccess();
  v8 = swift_weakLoadStrong();
  if (v8)
  {
    v9 = *(v8 + qword_27F22F1F0);

    if (v9)
    {
      sub_24ED6F318();
    }
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = *(result + qword_27F39C7D8);

    if (v11)
    {
      *v5 = a1;
      (*(v3 + 104))(v5, *MEMORY[0x277D22280], v2);
      v12 = a1;
      sub_24F92A0C8();

      return (*(v3 + 8))(v5, v2);
    }
  }

  return result;
}

uint64_t sub_24F23C61C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v146 = a3;
  v136 = a1;
  *&v145 = sub_24F92AAE8();
  v3 = *(v145 - 8);
  MEMORY[0x28223BE20](v145);
  v144 = &v128 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24F92A078();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v128 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v10 = result;
  v11 = *(result + qword_27F22F198);
  if (!v11)
  {
  }

  v132 = qword_27F22F198;
  if (*(result + qword_27F39C7D8))
  {
    *v8 = 0;
    (*(v6 + 104))(v8, *MEMORY[0x277D22288], v5);

    sub_24F92A0C8();
    (*(v6 + 8))(v8, v5);
  }

  else
  {
  }

  v12 = MEMORY[0x277D84F90];
  v13 = sub_24E60986C(MEMORY[0x277D84F90]);
  v133 = sub_24E60ACC8(v12);
  v14 = *(v136 + 16);
  v15 = v14 + 64;
  v16 = 1 << *(v14 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(v14 + 64);
  v19 = qword_27F39C780;
  v20 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfMapping;
  v131 = qword_27F22F1D8;
  v130 = qword_27F22F1D0;
  v137 = v14;

  v147 = v11;
  v142 = v20;
  swift_beginAccess();
  v143 = v19;
  swift_beginAccess();
  v21 = 0;
  v134 = 0;
  v22 = (v16 + 63) >> 6;
  v141 = (v3 + 8);
  v140 = xmmword_24F93A400;
  v135 = v15;
LABEL_9:
  v139 = v13;
  if (v18)
  {
LABEL_10:
    v23 = v147;
    goto LABEL_16;
  }

  while (1)
  {
    v23 = v147;
    do
    {
      v24 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        goto LABEL_93;
      }

      if (v24 >= v22)
      {
        goto LABEL_34;
      }

      v18 = *(v15 + 8 * v24);
      ++v21;
    }

    while (!v18);
    v21 = v24;
LABEL_16:
    v25 = __clz(__rbit64(v18)) | (v21 << 6);
    v26 = v137;
    sub_24E65864C(*(v137 + 48) + 40 * v25, &v156);
    v27 = *(*(v26 + 56) + 8 * v25);
    v138 = v156;
    v28 = v158;
    v148 = v157;
    v29 = *(&v157 + 1);

    if (!v29)
    {
      break;
    }

    v18 &= v18 - 1;
    v156 = v138;
    v157 = v148;
    v158 = v28;
    if ((v27[OBJC_IVAR____TtC12GameStoreKit5Shelf_mergeWhenFetched] & 1) == 0)
    {
      v35 = *(v10 + v143);
      v36 = v139;
      if (*(v35 + 16))
      {

        v37 = sub_24E76D934(&v156);
        if (v38)
        {
          v39 = *(*(v35 + 56) + 8 * v37);

          sub_24E65864C(v39 + OBJC_IVAR____TtC12GameStoreKit5Shelf_id, v149);

          v151 = v149[0];
          v152 = v149[1];
          v153 = v150;
          v40 = Shelf.withId(_:)(&v151);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v149[0] = v36;
          sub_24E81C630(v40, &v156, isUniquelyReferenced_nonNull_native);
          v42 = *&v149[0];
          sub_24E6585F8(&v151);
          goto LABEL_32;
        }
      }

      v48 = swift_isUniquelyReferenced_nonNull_native();
      *&v151 = v36;
      sub_24E81C630(v27, &v156, v48);
      goto LABEL_31;
    }

    if (*(*(v23 + v142) + 16))
    {

      sub_24E76D934(&v156);
      if (v30)
      {

        v43 = v134;
        v44 = Shelf.mergingWith(_:)(v27);
        v134 = v43;
        if (v43)
        {

          v51 = v133;
          v52 = swift_isUniquelyReferenced_nonNull_native();
          *&v151 = v51;
          sub_24E81CAA8(v134, &v156, v52);

          v133 = v151;
          sub_24E6585F8(&v156);
          v134 = 0;
          v13 = v139;
          goto LABEL_9;
        }

        v45 = v44;
        v46 = v139;
        v47 = swift_isUniquelyReferenced_nonNull_native();
        *&v151 = v46;
        sub_24E81C630(v45, &v156, v47);

LABEL_31:
        v42 = v151;
LABEL_32:
        v139 = v42;
        v49 = v131;
        swift_beginAccess();
        sub_24F7A58DC(&v156, &v151);
        sub_24E601704(&v151, &qword_27F235830);
        swift_endAccess();
        v50 = *(v10 + v130);
        *(v10 + v130) = *(*(v10 + v49) + 16) != 0;
        sub_24F23BF64(v50);

        goto LABEL_22;
      }
    }

    v31 = v10;
    v32 = v144;
    sub_24F23B9E0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    sub_24F928468();
    *(swift_allocObject() + 16) = v140;
    sub_24F9283A8();
    *(&v152 + 1) = MEMORY[0x277D84030];
    *&v151 = swift_allocObject();
    sub_24E65864C(&v156, v151 + 16);
    sub_24F928438();
    sub_24E601704(&v151, &qword_27F2129B0);
    v33 = v145;
    sub_24F92A5A8();

    v34 = v32;
    v10 = v31;
    v15 = v135;
    (*v141)(v34, v33);
LABEL_22:
    sub_24E6585F8(&v156);
    if (v18)
    {
      goto LABEL_10;
    }
  }

LABEL_34:

  v53 = *(v136 + 24);
  v56 = *(v53 + 64);
  v55 = v53 + 64;
  v54 = v56;
  v57 = 1 << *(*(v136 + 24) + 32);
  v58 = -1;
  if (v57 < 64)
  {
    v58 = ~(-1 << v57);
  }

  v59 = v58 & v54;
  v60 = (v57 + 63) >> 6;
  *&v138 = *(v136 + 24);

  v61 = 0;
  *&v148 = v10;
  v137 = v55;
  v135 = v60;
  if (v59)
  {
    while (1)
    {
LABEL_41:
      v63 = __clz(__rbit64(v59)) | (v61 << 6);
      v64 = (*(v138 + 48) + 16 * v63);
      v66 = *v64;
      v65 = v64[1];
      v67 = *(*(v138 + 56) + 8 * v63);
      v68 = *(v147 + v142);
      v59 &= v59 - 1;
      *&v151 = *v64;
      *(&v151 + 1) = v65;
      swift_bridgeObjectRetain_n();
      v69 = v67;

      sub_24F92C7F8();
      if (*(v68 + 16))
      {
        sub_24E76D934(&v156);
        v71 = v70;
        sub_24E6585F8(&v156);

        if (v71)
        {
          *&v151 = v66;
          *(&v151 + 1) = v65;

          sub_24F92C7F8();
          v72 = v67;
          v73 = v133;
          v74 = swift_isUniquelyReferenced_nonNull_native();
          *&v151 = v73;
          v129 = v67;
          sub_24E81CAA8(v67, &v156, v74);
          sub_24E6585F8(&v156);
          v75 = v151;
          swift_beginAccess();
          *&v156 = v66;
          *(&v156 + 1) = v65;

          sub_24F92C7F8();
          sub_24F24655C(&v151, &v156);
          sub_24E6585F8(&v151);
          v133 = v75;
          if (*(&v157 + 1))
          {
            v151 = v156;
            v152 = v157;
            v153 = v158;
            sub_24F92C7D8();
            sub_24E6585F8(&v151);
            swift_dynamicCast();
          }

          else
          {
            v154 = 0;
            v155 = 0;
          }

          swift_endAccess();

          v80 = *(v10 + v130);
          *(v10 + v130) = *(*(v10 + v131) + 16) != 0;
          sub_24F23BF64(v80);

          goto LABEL_47;
        }
      }

      else
      {
        sub_24E6585F8(&v156);
      }

      v76 = v144;
      sub_24F23B9E0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
      sub_24F928468();
      v77 = v67;
      *(swift_allocObject() + 16) = v140;
      sub_24F9283A8();
      *(&v157 + 1) = MEMORY[0x277D837D0];
      *&v156 = v66;
      *(&v156 + 1) = v65;
      v10 = v148;
      sub_24F928458();
      sub_24E601704(&v156, &qword_27F2129B0);
      v78 = v145;
      sub_24F92A5A8();

      v79 = v77;
      v60 = v135;

      (*v141)(v76, v78);
LABEL_47:
      v55 = v137;
      if (!v59)
      {
        goto LABEL_37;
      }
    }
  }

  while (1)
  {
LABEL_37:
    v62 = v61 + 1;
    if (__OFADD__(v61, 1))
    {
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
      goto LABEL_95;
    }

    if (v62 >= v60)
    {
      break;
    }

    v59 = *(v55 + 8 * v62);
    ++v61;
    if (v59)
    {
      v61 = v62;
      goto LABEL_41;
    }
  }

  v81 = v139 + 64;
  v82 = 1 << *(v139 + 32);
  v83 = -1;
  if (v82 < 64)
  {
    v83 = ~(-1 << v82);
  }

  v84 = v83 & *(v139 + 64);
  v85 = (v82 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v86 = 0;
  while (1)
  {
    if (!v84)
    {
      while (1)
      {
        v87 = v86 + 1;
        if (__OFADD__(v86, 1))
        {
          goto LABEL_94;
        }

        if (v87 >= v85)
        {
          goto LABEL_72;
        }

        v84 = *(v81 + 8 * v87);
        ++v86;
        if (v84)
        {
          v86 = v87;
          break;
        }
      }
    }

    v88 = __clz(__rbit64(v84)) | (v86 << 6);
    v89 = v139;
    sub_24E65864C(*(v139 + 48) + 40 * v88, &v156);
    v90 = *(*(v89 + 56) + 8 * v88);
    v145 = v156;
    v91 = v158;
    v146 = v157;
    v92 = *(&v157 + 1);

    if (!v92)
    {
      break;
    }

    v156 = v145;
    v157 = v146;
    v158 = v91;
    v10 = v148;
    v93 = v143;
    swift_beginAccess();

    v94 = swift_isUniquelyReferenced_nonNull_native();
    *&v149[0] = *(v10 + v93);
    v95 = *&v149[0];
    *(v10 + v93) = 0x8000000000000000;
    v96 = sub_24E76D934(&v156);
    v98 = *(v95 + 16);
    v99 = (v97 & 1) == 0;
    v100 = __OFADD__(v98, v99);
    v101 = v98 + v99;
    if (v100)
    {
      goto LABEL_96;
    }

    v102 = v97;
    if (*(v95 + 24) >= v101)
    {
      if ((v94 & 1) == 0)
      {
        v108 = v96;
        sub_24E8ADF84();
        v96 = v108;
      }
    }

    else
    {
      sub_24E899884(v101, v94);
      v96 = sub_24E76D934(&v156);
      if ((v102 & 1) != (v103 & 1))
      {
        goto LABEL_98;
      }
    }

    v104 = *&v149[0];
    if (v102)
    {
      *(*(*&v149[0] + 56) + 8 * v96) = v90;

      sub_24E6585F8(&v156);
    }

    else
    {
      *(*&v149[0] + 8 * (v96 >> 6) + 64) |= 1 << v96;
      v105 = v96;
      sub_24E65864C(&v156, v104[6] + 40 * v96);
      *(v104[7] + 8 * v105) = v90;
      sub_24E6585F8(&v156);
      v106 = v104[2];
      v100 = __OFADD__(v106, 1);
      v107 = v106 + 1;
      if (v100)
      {
        goto LABEL_97;
      }

      v104[2] = v107;
      v10 = v148;
    }

    v84 &= v84 - 1;
    *(v10 + v143) = v104;
    swift_endAccess();
  }

  v10 = v148;
LABEL_72:

  v109 = *(v10 + v132);
  if (v109)
  {
    v110 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfMapping;
    swift_beginAccess();

    v112 = v134;
    v113 = sub_24F23A4D8(v111, v148);
    v134 = v112;

    *(v109 + v110) = v113;
    v10 = v148;
  }

  v114 = *(v10 + qword_27F22F1A0);
  v115 = MEMORY[0x277D84F90];
  *&v149[0] = MEMORY[0x277D84F90];
  v116 = *(v114 + 16);

  if (!v116)
  {
LABEL_85:

    v123 = v139;
    *&v156 = v115;
    *(&v156 + 1) = v139;
    *&v157 = v133;
    *(&v157 + 1) = v136;
    v158 = 0;

    sub_24F92AD88();
    v124 = v158;

    v125 = *(v123 + 16);
    if (v125)
    {
      v126 = sub_24EAEACA0(*(v123 + 16), 0);
      v127 = sub_24EAEAC98(&v156, v126 + 32, v125, v123);

      sub_24E6586B4();
      if (v127 == v125)
      {
LABEL_89:
        sub_24F239E3C(v126, type metadata accessor for GenericPage);
      }

      __break(1u);
    }

    v126 = MEMORY[0x277D84F90];
    goto LABEL_89;
  }

  v117 = 0;
  *&v148 = v116 - 1;
LABEL_76:
  v118 = v114 + 32 + 40 * v117;
  v119 = v117;
  v120 = v143;
  while (v119 < *(v114 + 16))
  {
    sub_24E65864C(v118, &v156);
    if (*(*(v10 + v120) + 16))
    {

      sub_24E76D934(&v156);
      if (v121)
      {

        v122 = sub_24E6585F8(&v156);
        MEMORY[0x253050F00](v122);
        if (*((*&v149[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v149[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_24F92B5E8();
        }

        v117 = v119 + 1;
        sub_24F92B638();
        v115 = *&v149[0];
        if (v148 != v119)
        {
          goto LABEL_76;
        }

        goto LABEL_85;
      }
    }

    ++v119;
    sub_24E6585F8(&v156);
    v118 += 40;
    if (v116 == v119)
    {
      goto LABEL_85;
    }
  }

LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  result = sub_24F92CF88();
  __break(1u);
  return result;
}

uint64_t sub_24F23D884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t))
{
  *&v153 = a4;
  *&v152 = a3;
  v151 = sub_24F92AAE8();
  v9 = *(v151 - 8);
  MEMORY[0x28223BE20](v151);
  v150 = &v133 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24F92A078();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v133 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  if (!*(result + qword_27F22F198))
  {
  }

  v138 = qword_27F22F198;
  v149 = result;
  v16 = *(result + qword_27F39C7D8);
  v137 = a6;
  v136 = a5;
  if (v16)
  {
    *v14 = 0;
    (*(v12 + 104))(v14, *MEMORY[0x277D22288], v11);

    sub_24F92A0C8();
    (*(v12 + 8))(v14, v11);
  }

  else
  {
  }

  v17 = MEMORY[0x277D84F90];
  v145 = sub_24E60986C(MEMORY[0x277D84F90]);
  v139 = sub_24E60ACC8(v17);
  v141 = a1;
  v18 = *(a1 + 16);
  v19 = v18 + 64;
  v20 = 1 << *(v18 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & *(v18 + 64);
  v23 = qword_27F39C780;
  v135 = qword_27F22F1D8;
  v24 = v18;

  v148 = v23;
  swift_beginAccess();
  v25 = 0;
  v140 = 0;
  v26 = (v20 + 63) >> 6;
  v147 = (v9 + 8);
  v146 = xmmword_24F93A400;
  while (1)
  {
    if (!v22)
    {
      do
      {
        v27 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          goto LABEL_88;
        }

        if (v27 >= v26)
        {
          goto LABEL_30;
        }

        v22 = *(v19 + 8 * v27);
        ++v25;
      }

      while (!v22);
      v25 = v27;
    }

    v28 = __clz(__rbit64(v22)) | (v25 << 6);
    sub_24E65864C(*(v24 + 48) + 40 * v28, &v162);
    v29 = *(*(v24 + 56) + 8 * v28);
    v143 = v162;
    v30 = v164;
    v144 = v163;
    v31 = *(&v163 + 1);

    if (!v31)
    {
      break;
    }

    v22 &= v22 - 1;
    v162 = v143;
    v163 = v144;
    v164 = v30;
    if (v29[OBJC_IVAR____TtC12GameStoreKit5Shelf_mergeWhenFetched])
    {
      v32 = off_28620C700[0];
      (v153)(0);
      if (!*(v32() + 16) || (sub_24E76D934(&v162), (v33 & 1) == 0))
      {

        v34 = v150;
        sub_24F23B9E0();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
        sub_24F928468();
        *(swift_allocObject() + 16) = v146;
        sub_24F9283A8();
        *(&v158 + 1) = MEMORY[0x277D84030];
        *&v157 = swift_allocObject();
        sub_24E65864C(&v162, v157 + 16);
        sub_24F928438();
        sub_24E601704(&v157, &qword_27F2129B0);
        v35 = v151;
        sub_24F92A5A8();

        (*v147)(v34, v35);
        goto LABEL_19;
      }

      v43 = v140;
      v44 = Shelf.mergingWith(_:)(v29);
      v140 = v43;
      if (!v43)
      {
        v45 = v44;
        v46 = v145;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v157 = v46;
        sub_24E81C630(v45, &v162, isUniquelyReferenced_nonNull_native);

        goto LABEL_27;
      }

      v52 = v139;
      v53 = swift_isUniquelyReferenced_nonNull_native();
      *&v157 = v52;
      sub_24E81CAA8(v140, &v162, v53);

      v139 = v157;
      sub_24E6585F8(&v162);
      v140 = 0;
    }

    else
    {
      v36 = *(v149 + v148);
      if (!*(v36 + 16))
      {
        goto LABEL_26;
      }

      v37 = sub_24E76D934(&v162);
      if ((v38 & 1) == 0)
      {

LABEL_26:

        v48 = v145;
        v49 = swift_isUniquelyReferenced_nonNull_native();
        *&v157 = v48;
        sub_24E81C630(v29, &v162, v49);
LABEL_27:
        v145 = v157;
        goto LABEL_28;
      }

      v39 = *(*(v36 + 56) + 8 * v37);

      sub_24E65864C(v39 + OBJC_IVAR____TtC12GameStoreKit5Shelf_id, v155);

      v157 = v155[0];
      v158 = v155[1];
      v159 = v156;
      v40 = Shelf.withId(_:)(&v157);
      v41 = v145;
      v42 = swift_isUniquelyReferenced_nonNull_native();
      *&v155[0] = v41;
      sub_24E81C630(v40, &v162, v42);
      v145 = *&v155[0];
      sub_24E6585F8(&v157);
LABEL_28:
      v50 = v149;
      v51 = v135;
      swift_beginAccess();
      sub_24F7A58DC(&v162, &v157);
      sub_24E601704(&v157, &qword_27F235830);
      swift_endAccess();
      sub_24F23404C(*(*(v50 + v51) + 16) != 0);

LABEL_19:
      sub_24E6585F8(&v162);
    }
  }

LABEL_30:

  v54 = *(v141 + 24);
  v57 = *(v54 + 64);
  v56 = v54 + 64;
  v55 = v57;
  v58 = 1 << *(*(v141 + 24) + 32);
  v59 = -1;
  if (v58 < 64)
  {
    v59 = ~(-1 << v58);
  }

  v60 = v59 & v55;
  v61 = (v58 + 63) >> 6;
  *&v144 = *(v141 + 24);

  v62 = 0;
  v63 = v149;
  *&v143 = v56;
  v142 = v61;
  if (v60)
  {
    while (1)
    {
LABEL_40:
      while (1)
      {
        v69 = __clz(__rbit64(v60));
        v60 &= v60 - 1;
        v70 = v69 | (v62 << 6);
        v71 = (*(v144 + 48) + 16 * v70);
        v72 = *v71;
        v73 = v71[1];
        v74 = *(*(v144 + 56) + 8 * v70);
        v75 = off_28620C700[0];
        (v153)(0);
        v76 = v75();
        *&v157 = v72;
        *(&v157 + 1) = v73;
        swift_bridgeObjectRetain_n();
        v77 = v74;
        sub_24F92C7F8();
        if (*(v76 + 16))
        {
          break;
        }

        sub_24E6585F8(&v162);

LABEL_35:
        v64 = v74;
        v65 = v150;
        sub_24F23B9E0();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
        sub_24F928468();
        *(swift_allocObject() + 16) = v146;
        sub_24F9283A8();
        *(&v163 + 1) = MEMORY[0x277D837D0];
        *&v162 = v72;
        *(&v162 + 1) = v73;
        sub_24F928458();
        sub_24E601704(&v162, &qword_27F2129B0);
        v66 = v151;
        sub_24F92A5A8();

        v67 = v64;
        v61 = v142;

        (*v147)(v65, v66);
        v63 = v149;
        v56 = v143;
        if (!v60)
        {
          goto LABEL_36;
        }
      }

      sub_24E76D934(&v162);
      v79 = v78;
      sub_24E6585F8(&v162);

      if ((v79 & 1) == 0)
      {
        goto LABEL_35;
      }

      *&v157 = v72;
      *(&v157 + 1) = v73;

      sub_24F92C7F8();
      v80 = v74;
      v81 = v139;
      v82 = swift_isUniquelyReferenced_nonNull_native();
      *&v157 = v81;
      v134 = v74;
      sub_24E81CAA8(v74, &v162, v82);
      sub_24E6585F8(&v162);
      v83 = v157;
      v63 = v149;
      swift_beginAccess();
      *&v162 = v72;
      *(&v162 + 1) = v73;

      sub_24F92C7F8();
      sub_24F24655C(&v157, &v162);
      sub_24E6585F8(&v157);
      v139 = v83;
      if (*(&v163 + 1))
      {
        v157 = v162;
        v158 = v163;
        v159 = v164;
        sub_24F92C7D8();
        sub_24E6585F8(&v157);
        swift_dynamicCast();
      }

      else
      {
        v160 = 0;
        v161 = 0;
      }

      v56 = v143;

      swift_endAccess();

      sub_24F23404C(*(*(v63 + v135) + 16) != 0);

      if (!v60)
      {
        goto LABEL_36;
      }
    }
  }

  while (1)
  {
LABEL_36:
    v68 = v62 + 1;
    if (__OFADD__(v62, 1))
    {
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
      goto LABEL_90;
    }

    if (v68 >= v61)
    {
      break;
    }

    v60 = *(v56 + 8 * v68);
    ++v62;
    if (v60)
    {
      v62 = v68;
      goto LABEL_40;
    }
  }

  v84 = v145 + 64;
  v85 = 1 << *(v145 + 32);
  v86 = -1;
  if (v85 < 64)
  {
    v86 = ~(-1 << v85);
  }

  v87 = v86 & *(v145 + 64);
  v88 = (v85 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v89 = 0;
  while (1)
  {
    if (!v87)
    {
      while (1)
      {
        v90 = v89 + 1;
        if (__OFADD__(v89, 1))
        {
          goto LABEL_89;
        }

        if (v90 >= v88)
        {
          goto LABEL_67;
        }

        v87 = *(v84 + 8 * v90);
        ++v89;
        if (v87)
        {
          v89 = v90;
          break;
        }
      }
    }

    v91 = __clz(__rbit64(v87)) | (v89 << 6);
    v92 = v145;
    sub_24E65864C(*(v145 + 48) + 40 * v91, &v162);
    v93 = *(*(v92 + 56) + 8 * v91);
    v152 = v162;
    v94 = v164;
    v153 = v163;
    v95 = *(&v163 + 1);

    if (!v95)
    {
      break;
    }

    v162 = v152;
    v163 = v153;
    v164 = v94;
    v96 = v148;
    swift_beginAccess();

    v97 = swift_isUniquelyReferenced_nonNull_native();
    *&v155[0] = *(v63 + v96);
    v98 = *&v155[0];
    *(v63 + v96) = 0x8000000000000000;
    v99 = sub_24E76D934(&v162);
    v101 = *(v98 + 16);
    v102 = (v100 & 1) == 0;
    v103 = __OFADD__(v101, v102);
    v104 = v101 + v102;
    if (v103)
    {
      goto LABEL_91;
    }

    v105 = v100;
    if (*(v98 + 24) >= v104)
    {
      if ((v97 & 1) == 0)
      {
        v111 = v99;
        sub_24E8ADF84();
        v99 = v111;
      }
    }

    else
    {
      sub_24E899884(v104, v97);
      v99 = sub_24E76D934(&v162);
      if ((v105 & 1) != (v106 & 1))
      {
        goto LABEL_93;
      }
    }

    v107 = *&v155[0];
    if (v105)
    {
      *(*(*&v155[0] + 56) + 8 * v99) = v93;

      sub_24E6585F8(&v162);
    }

    else
    {
      *(*&v155[0] + 8 * (v99 >> 6) + 64) |= 1 << v99;
      v108 = v99;
      sub_24E65864C(&v162, v107[6] + 40 * v99);
      *(v107[7] + 8 * v108) = v93;
      sub_24E6585F8(&v162);
      v109 = v107[2];
      v103 = __OFADD__(v109, 1);
      v110 = v109 + 1;
      if (v103)
      {
        goto LABEL_92;
      }

      v107[2] = v110;
    }

    v87 &= v87 - 1;
    *(v63 + v148) = v107;
    swift_endAccess();
  }

LABEL_67:

  v112 = *(v63 + v138);
  if (v112)
  {
    v113 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfMapping;
    swift_beginAccess();

    v115 = v140;
    v116 = sub_24F23A4D8(v114, v149);
    v140 = v115;

    *(v112 + v113) = v116;
    v63 = v149;
  }

  v117 = *(v63 + qword_27F22F1A0);
  v118 = MEMORY[0x277D84F90];
  *&v155[0] = MEMORY[0x277D84F90];
  v119 = *(v117 + 16);

  if (!v119)
  {
LABEL_80:

    *&v162 = v118;
    v126 = v145;
    *(&v162 + 1) = v145;
    *&v163 = v139;
    *(&v163 + 1) = v141;
    v164 = 0;

    sub_24F92AD88();
    v127 = v164;

    v128 = *(v126 + 16);
    if (v128)
    {
      v129 = sub_24EAEACA0(*(v126 + 16), 0);
      v130 = sub_24EAEAC98(&v162, v129 + 32, v128, v126);

      sub_24E6586B4();
      v131 = v137;
      v132 = v136;
      if (v130 == v128)
      {
LABEL_84:
        v131(v129, v132);
      }

      __break(1u);
    }

    v129 = MEMORY[0x277D84F90];
    v131 = v137;
    v132 = v136;
    goto LABEL_84;
  }

  v120 = 0;
  *&v153 = v119 - 1;
LABEL_71:
  v121 = v117 + 32 + 40 * v120;
  v122 = v120;
  v123 = v148;
  while (v122 < *(v117 + 16))
  {
    sub_24E65864C(v121, &v162);
    if (*(*(v63 + v123) + 16))
    {

      sub_24E76D934(&v162);
      if (v124)
      {

        v125 = sub_24E6585F8(&v162);
        MEMORY[0x253050F00](v125);
        if (*((*&v155[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v155[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_24F92B5E8();
        }

        v120 = v122 + 1;
        sub_24F92B638();
        v118 = *&v155[0];
        if (v153 != v122)
        {
          goto LABEL_71;
        }

        goto LABEL_80;
      }
    }

    ++v122;
    sub_24E6585F8(&v162);
    v121 += 40;
    if (v119 == v122)
    {
      goto LABEL_80;
    }
  }

LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  result = sub_24F92CF88();
  __break(1u);
  return result;
}

uint64_t sub_24F23EAD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t (*a5)(void))
{
  *&v149 = a3;
  v137 = a1;
  *&v148 = sub_24F92AAE8();
  v7 = *(v148 - 8);
  MEMORY[0x28223BE20](v148);
  v147 = &v129 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F92A078();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v129 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v14 = *(result + qword_27F22F198);
  if (!v14)
  {
  }

  v132 = qword_27F22F198;
  v142 = result;
  v15 = *(result + qword_27F39C7D8);
  v131 = a5;
  v135 = a4;
  if (v15)
  {
    *v12 = 0;
    (*(v10 + 104))(v12, *MEMORY[0x277D22288], v9);

    sub_24F92A0C8();
    (*(v10 + 8))(v12, v9);
  }

  else
  {
  }

  v16 = MEMORY[0x277D84F90];
  v141 = sub_24E60986C(MEMORY[0x277D84F90]);
  v133 = sub_24E60ACC8(v16);
  v17 = *(v137 + 16);
  v18 = v17 + 64;
  v19 = 1 << *(v17 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(v17 + 64);
  v146 = qword_27F39C780;
  v22 = *v135;
  v130 = qword_27F22F1D8;
  v138 = v17;

  v150 = v14;
  v145 = v22;
  swift_beginAccess();
  v23 = v142;
  swift_beginAccess();
  v24 = 0;
  v134 = 0;
  v25 = ((v19 + 63) >> 6);
  v144 = (v7 + 8);
  v143 = xmmword_24F93A400;
  v136 = v25;
  while (1)
  {
    if (v21)
    {
      v26 = v150;
    }

    else
    {
      v26 = v150;
      do
      {
        v27 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          goto LABEL_91;
        }

        if (v27 >= v25)
        {
          goto LABEL_33;
        }

        v21 = *(v18 + 8 * v27);
        ++v24;
      }

      while (!v21);
      v24 = v27;
    }

    v28 = __clz(__rbit64(v21)) | (v24 << 6);
    v29 = v138;
    sub_24E65864C(*(v138 + 48) + 40 * v28, &v158);
    v30 = *(*(v29 + 56) + 8 * v28);
    v139 = v158;
    v31 = v160;
    v140 = v159;
    v32 = *(&v159 + 1);

    if (!v32)
    {
      break;
    }

    v21 &= v21 - 1;
    v158 = v139;
    v159 = v140;
    v160 = v31;
    if (v30[OBJC_IVAR____TtC12GameStoreKit5Shelf_mergeWhenFetched])
    {
      if (!*(*(v26 + v145) + 16))
      {
        goto LABEL_21;
      }

      sub_24E76D934(&v158);
      if ((v33 & 1) == 0)
      {

LABEL_21:
        v34 = v18;
        v35 = v23;
        v36 = v147;
        sub_24F23B9E0();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
        sub_24F928468();
        *(swift_allocObject() + 16) = v143;
        sub_24F9283A8();
        *(&v154 + 1) = MEMORY[0x277D84030];
        *&v153 = swift_allocObject();
        sub_24E65864C(&v158, v153 + 16);
        sub_24F928438();
        sub_24E601704(&v153, &qword_27F2129B0);
        v37 = v148;
        sub_24F92A5A8();

        v38 = v36;
        v23 = v35;
        v18 = v34;
        v25 = v136;
        (*v144)(v38, v37);
        goto LABEL_22;
      }

      v46 = v134;
      v47 = Shelf.mergingWith(_:)(v30);
      v134 = v46;
      if (!v46)
      {
        v48 = v47;
        v49 = v141;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v153 = v49;
        sub_24E81C630(v48, &v158, isUniquelyReferenced_nonNull_native);

        goto LABEL_30;
      }

      v53 = v133;
      v54 = swift_isUniquelyReferenced_nonNull_native();
      *&v153 = v53;
      sub_24E81CAA8(v134, &v158, v54);

      v133 = v153;
      sub_24E6585F8(&v158);
      v134 = 0;
    }

    else
    {
      v39 = *(v23 + v146);
      v40 = v141;
      if (!*(v39 + 16))
      {
        goto LABEL_29;
      }

      v41 = sub_24E76D934(&v158);
      if ((v42 & 1) == 0)
      {

LABEL_29:

        v51 = swift_isUniquelyReferenced_nonNull_native();
        *&v153 = v40;
        sub_24E81C630(v30, &v158, v51);
LABEL_30:
        v141 = v153;
        goto LABEL_31;
      }

      v43 = *(*(v39 + 56) + 8 * v41);

      sub_24E65864C(v43 + OBJC_IVAR____TtC12GameStoreKit5Shelf_id, v151);

      v153 = v151[0];
      v154 = v151[1];
      v155 = v152;
      v44 = Shelf.withId(_:)(&v153);
      v45 = swift_isUniquelyReferenced_nonNull_native();
      *&v151[0] = v40;
      sub_24E81C630(v44, &v158, v45);
      v141 = *&v151[0];
      sub_24E6585F8(&v153);
LABEL_31:
      v52 = v130;
      swift_beginAccess();
      sub_24F7A58DC(&v158, &v153);
      sub_24E601704(&v153, &qword_27F235830);
      swift_endAccess();
      sub_24F23404C(*(*(v23 + v52) + 16) != 0);

LABEL_22:
      sub_24E6585F8(&v158);
    }
  }

LABEL_33:

  v55 = *(v137 + 24);
  v58 = *(v55 + 64);
  v57 = v55 + 64;
  v56 = v58;
  v59 = 1 << *(*(v137 + 24) + 32);
  v60 = -1;
  if (v59 < 64)
  {
    v60 = ~(-1 << v59);
  }

  v61 = v60 & v56;
  v62 = (v59 + 63) >> 6;
  *&v140 = *(v137 + 24);

  v63 = 0;
  *&v139 = v57;
  v138 = v62;
  if (v61)
  {
    while (1)
    {
LABEL_43:
      while (1)
      {
        v69 = __clz(__rbit64(v61)) | (v63 << 6);
        v70 = (*(v140 + 48) + 16 * v69);
        v71 = *v70;
        v72 = v70[1];
        v73 = *(*(v140 + 56) + 8 * v69);
        v74 = *(v150 + v145);
        v61 &= v61 - 1;
        *&v153 = *v70;
        *(&v153 + 1) = v72;
        swift_bridgeObjectRetain_n();
        v75 = v73;

        sub_24F92C7F8();
        if (*(v74 + 16))
        {
          break;
        }

        sub_24E6585F8(&v158);

LABEL_38:
        v64 = v147;
        sub_24F23B9E0();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
        sub_24F928468();
        v65 = v73;
        *(swift_allocObject() + 16) = v143;
        sub_24F9283A8();
        *(&v159 + 1) = MEMORY[0x277D837D0];
        *&v158 = v71;
        *(&v158 + 1) = v72;
        v23 = v142;
        sub_24F928458();
        sub_24E601704(&v158, &qword_27F2129B0);
        v66 = v148;
        sub_24F92A5A8();

        v67 = v65;
        v62 = v138;

        (*v144)(v64, v66);
        v57 = v139;
        if (!v61)
        {
          goto LABEL_39;
        }
      }

      sub_24E76D934(&v158);
      v77 = v76;
      sub_24E6585F8(&v158);

      if ((v77 & 1) == 0)
      {
        goto LABEL_38;
      }

      *&v153 = v71;
      *(&v153 + 1) = v72;

      sub_24F92C7F8();
      v78 = v73;
      v79 = v133;
      v80 = swift_isUniquelyReferenced_nonNull_native();
      *&v153 = v79;
      v136 = v73;
      sub_24E81CAA8(v73, &v158, v80);
      sub_24E6585F8(&v158);
      v81 = v153;
      swift_beginAccess();
      *&v158 = v71;
      *(&v158 + 1) = v72;

      sub_24F92C7F8();
      sub_24F24655C(&v153, &v158);
      sub_24E6585F8(&v153);
      v133 = v81;
      if (*(&v159 + 1))
      {
        v153 = v158;
        v154 = v159;
        v155 = v160;
        sub_24F92C7D8();
        sub_24E6585F8(&v153);
        swift_dynamicCast();
      }

      else
      {
        v156 = 0;
        v157 = 0;
      }

      v57 = v139;

      swift_endAccess();

      sub_24F23404C(*(*(v23 + v130) + 16) != 0);

      if (!v61)
      {
        goto LABEL_39;
      }
    }
  }

  while (1)
  {
LABEL_39:
    v68 = v63 + 1;
    if (__OFADD__(v63, 1))
    {
      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
      goto LABEL_93;
    }

    if (v68 >= v62)
    {
      break;
    }

    v61 = *(v57 + 8 * v68);
    ++v63;
    if (v61)
    {
      v63 = v68;
      goto LABEL_43;
    }
  }

  v82 = v141 + 64;
  v83 = 1 << *(v141 + 32);
  v84 = -1;
  if (v83 < 64)
  {
    v84 = ~(-1 << v83);
  }

  v85 = v84 & *(v141 + 64);
  v86 = (v83 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v87 = 0;
  while (1)
  {
    if (!v85)
    {
      while (1)
      {
        v88 = v87 + 1;
        if (__OFADD__(v87, 1))
        {
          goto LABEL_92;
        }

        if (v88 >= v86)
        {
          goto LABEL_70;
        }

        v85 = *(v82 + 8 * v88);
        ++v87;
        if (v85)
        {
          v87 = v88;
          break;
        }
      }
    }

    v89 = __clz(__rbit64(v85)) | (v87 << 6);
    v90 = v141;
    sub_24E65864C(*(v141 + 48) + 40 * v89, &v158);
    v91 = *(*(v90 + 56) + 8 * v89);
    v148 = v158;
    v92 = v160;
    v149 = v159;
    v93 = *(&v159 + 1);

    if (!v93)
    {
      break;
    }

    v158 = v148;
    v159 = v149;
    v160 = v92;
    v94 = v146;
    swift_beginAccess();

    v95 = swift_isUniquelyReferenced_nonNull_native();
    *&v151[0] = *(v23 + v94);
    v96 = *&v151[0];
    *(v23 + v94) = 0x8000000000000000;
    v97 = sub_24E76D934(&v158);
    v99 = *(v96 + 16);
    v100 = (v98 & 1) == 0;
    v101 = __OFADD__(v99, v100);
    v102 = v99 + v100;
    if (v101)
    {
      goto LABEL_94;
    }

    v103 = v98;
    if (*(v96 + 24) >= v102)
    {
      if ((v95 & 1) == 0)
      {
        v109 = v97;
        sub_24E8ADF84();
        v97 = v109;
      }
    }

    else
    {
      sub_24E899884(v102, v95);
      v97 = sub_24E76D934(&v158);
      if ((v103 & 1) != (v104 & 1))
      {
        goto LABEL_96;
      }
    }

    v105 = *&v151[0];
    if (v103)
    {
      *(*(*&v151[0] + 56) + 8 * v97) = v91;

      sub_24E6585F8(&v158);
    }

    else
    {
      *(*&v151[0] + 8 * (v97 >> 6) + 64) |= 1 << v97;
      v106 = v97;
      sub_24E65864C(&v158, v105[6] + 40 * v97);
      *(v105[7] + 8 * v106) = v91;
      sub_24E6585F8(&v158);
      v107 = v105[2];
      v101 = __OFADD__(v107, 1);
      v108 = v107 + 1;
      if (v101)
      {
        goto LABEL_95;
      }

      v105[2] = v108;
    }

    v85 &= v85 - 1;
    *(v23 + v146) = v105;
    swift_endAccess();
  }

LABEL_70:

  v110 = *(v23 + v132);
  if (v110)
  {
    v111 = *v135;
    swift_beginAccess();

    v113 = v134;
    v114 = sub_24F23A4D8(v112, v142);
    v134 = v113;

    *(v110 + v111) = v114;
    v23 = v142;
  }

  v115 = *(v23 + qword_27F22F1A0);
  v116 = MEMORY[0x277D84F90];
  *&v151[0] = MEMORY[0x277D84F90];
  v117 = *(v115 + 16);

  if (!v117)
  {
LABEL_83:

    v124 = v141;
    *&v158 = v116;
    *(&v158 + 1) = v141;
    *&v159 = v133;
    *(&v159 + 1) = v137;
    v160 = 0;

    sub_24F92AD88();
    v125 = v160;

    v126 = *(v124 + 16);
    if (v126)
    {
      v127 = sub_24EAEACA0(*(v124 + 16), 0);
      v128 = sub_24EAEAC98(&v158, v127 + 32, v126, v124);

      sub_24E6586B4();
      if (v128 == v126)
      {
LABEL_87:
        sub_24F23A070(v127, v131);
      }

      __break(1u);
    }

    v127 = MEMORY[0x277D84F90];
    goto LABEL_87;
  }

  v118 = 0;
  *&v149 = v117 - 1;
LABEL_74:
  v119 = v115 + 32 + 40 * v118;
  v120 = v118;
  v121 = v146;
  while (v120 < *(v115 + 16))
  {
    sub_24E65864C(v119, &v158);
    if (*(*(v23 + v121) + 16))
    {

      sub_24E76D934(&v158);
      if (v122)
      {

        v123 = sub_24E6585F8(&v158);
        MEMORY[0x253050F00](v123);
        if (*((*&v151[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v151[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_24F92B5E8();
        }

        v118 = v120 + 1;
        sub_24F92B638();
        v116 = *&v151[0];
        if (v149 != v120)
        {
          goto LABEL_74;
        }

        goto LABEL_83;
      }
    }

    ++v120;
    sub_24E6585F8(&v158);
    v119 += 40;
    if (v117 == v120)
    {
      goto LABEL_83;
    }
  }

LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  result = sub_24F92CF88();
  __break(1u);
  return result;
}

uint64_t sub_24F23FCFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v139 = a3;
  v130 = a1;
  *&v138 = sub_24F92AAE8();
  v3 = *(v138 - 8);
  MEMORY[0x28223BE20](v138);
  v137 = &v124 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24F92A078();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v124 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v10 = result;
  if (!*(result + qword_27F22F198))
  {
  }

  v126 = qword_27F22F198;
  if (*(result + qword_27F39C7D8))
  {
    *v8 = 0;
    (*(v6 + 104))(v8, *MEMORY[0x277D22288], v5);

    sub_24F92A0C8();
    (*(v6 + 8))(v8, v5);
  }

  else
  {
  }

  v11 = MEMORY[0x277D84F90];
  v133 = sub_24E60986C(MEMORY[0x277D84F90]);
  v127 = sub_24E60ACC8(v11);
  v12 = *(v130 + 16);
  v13 = v12 + 64;
  v14 = 1 << *(v12 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(v12 + 64);
  v17 = qword_27F39C780;
  v125 = qword_27F22F1D8;
  v131 = v12;

  v136 = v17;
  swift_beginAccess();
  v18 = 0;
  v128 = 0;
  v19 = (v14 + 63) >> 6;
  v135 = (v3 + 8);
  v134 = xmmword_24F93A400;
  v129 = v13;
  while (2)
  {
    if (v16)
    {
      goto LABEL_14;
    }

    do
    {
      v20 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
LABEL_91:
        __break(1u);
LABEL_92:
        __break(1u);
LABEL_93:
        __break(1u);
LABEL_94:
        __break(1u);
LABEL_95:
        __break(1u);
LABEL_96:
        __break(1u);
LABEL_97:
        result = sub_24F92CF88();
        __break(1u);
        return result;
      }

      if (v20 >= v19)
      {
        goto LABEL_29;
      }

      v16 = *(v13 + 8 * v20);
      ++v18;
    }

    while (!v16);
    v18 = v20;
LABEL_14:
    v21 = __clz(__rbit64(v16)) | (v18 << 6);
    v22 = v131;
    sub_24E65864C(*(v131 + 48) + 40 * v21, &v149);
    v23 = *(*(v22 + 56) + 8 * v21);
    v132 = v149;
    v24 = v151;
    v141 = v150;
    v25 = *(&v150 + 1);

    if (v25)
    {
      v16 &= v16 - 1;
      v149 = v132;
      v150 = v141;
      v151 = v24;
      if (v23[OBJC_IVAR____TtC12GameStoreKit5Shelf_mergeWhenFetched])
      {
        v26 = off_28620E0A8[0];
        type metadata accessor for SearchChartsAndCategoriesPage();
        if (!*(v26() + 16) || (sub_24E76D934(&v149), (v27 & 1) == 0))
        {

          v28 = v137;
          sub_24F23B9E0();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
          sub_24F928468();
          *(swift_allocObject() + 16) = v134;
          sub_24F9283A8();
          *(&v145 + 1) = MEMORY[0x277D84030];
          *&v144 = swift_allocObject();
          sub_24E65864C(&v149, v144 + 16);
          sub_24F928438();
          sub_24E601704(&v144, &qword_27F2129B0);
          v29 = v138;
          sub_24F92A5A8();

          (*v135)(v28, v29);
          sub_24E6585F8(&v149);
          goto LABEL_19;
        }

        v37 = v128;
        v38 = Shelf.mergingWith(_:)(v23);
        v128 = v37;
        if (!v37)
        {
          v39 = v38;
          v40 = v133;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v144 = v40;
          sub_24E81C630(v39, &v149, isUniquelyReferenced_nonNull_native);

          v133 = v144;
          v13 = v129;
          goto LABEL_27;
        }

        v45 = v127;
        v46 = swift_isUniquelyReferenced_nonNull_native();
        *&v144 = v45;
        sub_24E81CAA8(v128, &v149, v46);

        v127 = v144;
        sub_24E6585F8(&v149);
        v128 = 0;
LABEL_19:
        v13 = v129;
      }

      else
      {
        v30 = *(v10 + v136);
        if (*(v30 + 16))
        {

          v31 = sub_24E76D934(&v149);
          if (v32)
          {
            v33 = *(*(v30 + 56) + 8 * v31);

            sub_24E65864C(v33 + OBJC_IVAR____TtC12GameStoreKit5Shelf_id, v142);

            v144 = v142[0];
            v145 = v142[1];
            v146 = v143;
            v34 = Shelf.withId(_:)(&v144);
            v35 = v133;
            v36 = swift_isUniquelyReferenced_nonNull_native();
            *&v142[0] = v35;
            sub_24E81C630(v34, &v149, v36);
            v133 = *&v142[0];
            sub_24E6585F8(&v144);
            goto LABEL_27;
          }
        }

        v42 = v133;
        v43 = swift_isUniquelyReferenced_nonNull_native();
        *&v144 = v42;
        sub_24E81C630(v23, &v149, v43);
        v133 = v144;
LABEL_27:
        v44 = v125;
        swift_beginAccess();
        sub_24F7A58DC(&v149, &v144);
        sub_24E601704(&v144, &qword_27F235830);
        swift_endAccess();
        sub_24F23404C(*(*(v10 + v44) + 16) != 0);

        sub_24E6585F8(&v149);
      }

      continue;
    }

    break;
  }

LABEL_29:

  v47 = *(v130 + 24);
  v50 = *(v47 + 64);
  v49 = v47 + 64;
  v48 = v50;
  v51 = 1 << *(*(v130 + 24) + 32);
  v52 = -1;
  if (v51 < 64)
  {
    v52 = ~(-1 << v51);
  }

  v53 = v52 & v48;
  v54 = (v51 + 63) >> 6;
  *&v132 = *(v130 + 24);

  v55 = 0;
  *&v141 = v10;
  v131 = v49;
  v129 = v54;
  if (v53)
  {
    while (1)
    {
LABEL_39:
      while (1)
      {
        v61 = __clz(__rbit64(v53));
        v53 &= v53 - 1;
        v62 = v61 | (v55 << 6);
        v63 = (*(v132 + 48) + 16 * v62);
        v65 = *v63;
        v64 = v63[1];
        v66 = *(*(v132 + 56) + 8 * v62);
        v67 = off_28620E0A8[0];
        type metadata accessor for SearchChartsAndCategoriesPage();
        v68 = v67();
        *&v144 = v65;
        *(&v144 + 1) = v64;
        swift_bridgeObjectRetain_n();
        v69 = v66;
        sub_24F92C7F8();
        if (*(v68 + 16))
        {
          break;
        }

        sub_24E6585F8(&v149);

LABEL_34:
        v56 = v66;
        v57 = v137;
        sub_24F23B9E0();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
        sub_24F928468();
        *(swift_allocObject() + 16) = v134;
        sub_24F9283A8();
        *(&v150 + 1) = MEMORY[0x277D837D0];
        *&v149 = v65;
        *(&v149 + 1) = v64;
        sub_24F928458();
        sub_24E601704(&v149, &qword_27F2129B0);
        v58 = v138;
        sub_24F92A5A8();

        v59 = v56;
        v54 = v129;

        (*v135)(v57, v58);
        v10 = v141;
        v49 = v131;
        if (!v53)
        {
          goto LABEL_35;
        }
      }

      sub_24E76D934(&v149);
      v71 = v70;
      sub_24E6585F8(&v149);

      if ((v71 & 1) == 0)
      {
        goto LABEL_34;
      }

      *&v144 = v65;
      *(&v144 + 1) = v64;

      sub_24F92C7F8();
      v72 = v66;
      v73 = v127;
      v74 = swift_isUniquelyReferenced_nonNull_native();
      *&v144 = v73;
      v124 = v66;
      sub_24E81CAA8(v66, &v149, v74);
      sub_24E6585F8(&v149);
      v75 = v144;
      v10 = v141;
      swift_beginAccess();
      *&v149 = v65;
      *(&v149 + 1) = v64;

      sub_24F92C7F8();
      sub_24F24655C(&v144, &v149);
      sub_24E6585F8(&v144);
      v127 = v75;
      if (*(&v150 + 1))
      {
        v144 = v149;
        v145 = v150;
        v146 = v151;
        sub_24F92C7D8();
        sub_24E6585F8(&v144);
        swift_dynamicCast();
      }

      else
      {
        v147 = 0;
        v148 = 0;
      }

      v49 = v131;

      swift_endAccess();

      sub_24F23404C(*(*(v10 + v125) + 16) != 0);

      if (!v53)
      {
        goto LABEL_35;
      }
    }
  }

  while (1)
  {
LABEL_35:
    v60 = v55 + 1;
    if (__OFADD__(v55, 1))
    {
      __break(1u);
      goto LABEL_91;
    }

    if (v60 >= v54)
    {
      break;
    }

    v53 = *(v49 + 8 * v60);
    ++v55;
    if (v53)
    {
      v55 = v60;
      goto LABEL_39;
    }
  }

  v76 = v133 + 64;
  v77 = 1 << *(v133 + 32);
  v78 = -1;
  if (v77 < 64)
  {
    v78 = ~(-1 << v77);
  }

  v79 = v78 & *(v133 + 64);
  v80 = (v77 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v81 = 0;
  while (1)
  {
    if (!v79)
    {
      while (1)
      {
        v82 = v81 + 1;
        if (__OFADD__(v81, 1))
        {
          goto LABEL_92;
        }

        if (v82 >= v80)
        {
          goto LABEL_67;
        }

        v79 = *(v76 + 8 * v82);
        ++v81;
        if (v79)
        {
          v81 = v82;
          break;
        }
      }
    }

    v83 = __clz(__rbit64(v79)) | (v81 << 6);
    v84 = v133;
    sub_24E65864C(*(v133 + 48) + 40 * v83, &v149);
    v85 = *(*(v84 + 56) + 8 * v83);
    v138 = v149;
    v86 = v151;
    v139 = v150;
    v87 = *(&v150 + 1);

    if (!v87)
    {
      break;
    }

    v149 = v138;
    v150 = v139;
    v151 = v86;
    v10 = v141;
    v88 = v136;
    swift_beginAccess();

    v89 = swift_isUniquelyReferenced_nonNull_native();
    *&v142[0] = *(v10 + v88);
    v90 = *&v142[0];
    *(v10 + v88) = 0x8000000000000000;
    v91 = sub_24E76D934(&v149);
    v93 = *(v90 + 16);
    v94 = (v92 & 1) == 0;
    v95 = __OFADD__(v93, v94);
    v96 = v93 + v94;
    if (v95)
    {
      goto LABEL_94;
    }

    v97 = v92;
    if (*(v90 + 24) >= v96)
    {
      if ((v89 & 1) == 0)
      {
        v103 = v91;
        sub_24E8ADF84();
        v91 = v103;
      }
    }

    else
    {
      sub_24E899884(v96, v89);
      v91 = sub_24E76D934(&v149);
      if ((v97 & 1) != (v98 & 1))
      {
        goto LABEL_97;
      }
    }

    v99 = *&v142[0];
    if (v97)
    {
      *(*(*&v142[0] + 56) + 8 * v91) = v85;

      sub_24E6585F8(&v149);
    }

    else
    {
      *(*&v142[0] + 8 * (v91 >> 6) + 64) |= 1 << v91;
      v100 = v91;
      sub_24E65864C(&v149, v99[6] + 40 * v91);
      *(v99[7] + 8 * v100) = v85;
      sub_24E6585F8(&v149);
      v101 = v99[2];
      v95 = __OFADD__(v101, 1);
      v102 = v101 + 1;
      if (v95)
      {
        goto LABEL_95;
      }

      v99[2] = v102;
      v10 = v141;
    }

    v79 &= v79 - 1;
    *(v10 + v136) = v99;
    swift_endAccess();
  }

  v10 = v141;
LABEL_67:
  v104 = v133;

  v105 = *(v10 + v126);
  if (v105)
  {
    v106 = qword_27F39DC30;
    swift_beginAccess();

    v108 = v128;
    v109 = sub_24F23A4D8(v107, v141);
    v128 = v108;

    *(v105 + v106) = v109;
    v10 = v141;
  }

  v110 = *(v10 + qword_27F22F1A0);
  v111 = MEMORY[0x277D84F90];
  *&v142[0] = MEMORY[0x277D84F90];
  v112 = *(v110 + 16);

  if (v112)
  {
    v113 = 0;
    *&v141 = v112 - 1;
LABEL_71:
    v114 = v110 + 32 + 40 * v113;
    v115 = v113;
    v116 = v136;
    while (v115 < *(v110 + 16))
    {
      sub_24E65864C(v114, &v149);
      if (*(*(v10 + v116) + 16))
      {

        sub_24E76D934(&v149);
        if (v117)
        {

          v118 = sub_24E6585F8(&v149);
          MEMORY[0x253050F00](v118);
          if (*((*&v142[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v142[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_24F92B5E8();
          }

          v113 = v115 + 1;
          sub_24F92B638();
          v111 = *&v142[0];
          v119 = v141 == v115;
          v104 = v133;
          if (v119)
          {
            goto LABEL_83;
          }

          goto LABEL_71;
        }
      }

      ++v115;
      sub_24E6585F8(&v149);
      v114 += 40;
      if (v112 == v115)
      {
        v104 = v133;
        goto LABEL_83;
      }
    }

    goto LABEL_93;
  }

LABEL_83:

  *&v149 = v111;
  *(&v149 + 1) = v104;
  *&v150 = v127;
  *(&v150 + 1) = v130;
  v151 = 0;

  sub_24F92AD88();
  v120 = v151;

  v121 = *(v104 + 16);
  if (v121)
  {
    v122 = sub_24EAEACA0(*(v104 + 16), 0);
    v123 = sub_24EAEAC98(&v149, v122 + 32, v121, v104);

    sub_24E6586B4();
    if (v123 != v121)
    {
      goto LABEL_96;
    }
  }

  else
  {
    v122 = MEMORY[0x277D84F90];
  }

  sub_24F23A070(v122, type metadata accessor for SearchChartsAndCategoriesPage);
}

uint64_t sub_24F240F58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v139 = a3;
  v130 = a1;
  *&v138 = sub_24F92AAE8();
  v3 = *(v138 - 8);
  MEMORY[0x28223BE20](v138);
  v137 = &v124 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24F92A078();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v124 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v10 = result;
  if (!*(result + qword_27F22F198))
  {
  }

  v126 = qword_27F22F198;
  if (*(result + qword_27F39C7D8))
  {
    *v8 = 0;
    (*(v6 + 104))(v8, *MEMORY[0x277D22288], v5);

    sub_24F92A0C8();
    (*(v6 + 8))(v8, v5);
  }

  else
  {
  }

  v11 = MEMORY[0x277D84F90];
  v133 = sub_24E60986C(MEMORY[0x277D84F90]);
  v127 = sub_24E60ACC8(v11);
  v12 = *(v130 + 16);
  v13 = v12 + 64;
  v14 = 1 << *(v12 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(v12 + 64);
  v17 = qword_27F39C780;
  v125 = qword_27F22F1D8;
  v131 = v12;

  v136 = v17;
  swift_beginAccess();
  v18 = 0;
  v128 = 0;
  v19 = (v14 + 63) >> 6;
  v135 = (v3 + 8);
  v134 = xmmword_24F93A400;
  v129 = v13;
  while (2)
  {
    if (v16)
    {
      goto LABEL_14;
    }

    do
    {
      v20 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
LABEL_91:
        __break(1u);
LABEL_92:
        __break(1u);
LABEL_93:
        __break(1u);
LABEL_94:
        __break(1u);
LABEL_95:
        __break(1u);
LABEL_96:
        __break(1u);
LABEL_97:
        result = sub_24F92CF88();
        __break(1u);
        return result;
      }

      if (v20 >= v19)
      {
        goto LABEL_29;
      }

      v16 = *(v13 + 8 * v20);
      ++v18;
    }

    while (!v16);
    v18 = v20;
LABEL_14:
    v21 = __clz(__rbit64(v16)) | (v18 << 6);
    v22 = v131;
    sub_24E65864C(*(v131 + 48) + 40 * v21, &v149);
    v23 = *(*(v22 + 56) + 8 * v21);
    v132 = v149;
    v24 = v151;
    v141 = v150;
    v25 = *(&v150 + 1);

    if (v25)
    {
      v16 &= v16 - 1;
      v149 = v132;
      v150 = v141;
      v151 = v24;
      if (v23[OBJC_IVAR____TtC12GameStoreKit5Shelf_mergeWhenFetched])
      {
        v26 = off_28620C700[0];
        type metadata accessor for ArcadeSeeAllGamesPage();
        if (!*(v26() + 16) || (sub_24E76D934(&v149), (v27 & 1) == 0))
        {

          v28 = v137;
          sub_24F23B9E0();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
          sub_24F928468();
          *(swift_allocObject() + 16) = v134;
          sub_24F9283A8();
          *(&v145 + 1) = MEMORY[0x277D84030];
          *&v144 = swift_allocObject();
          sub_24E65864C(&v149, v144 + 16);
          sub_24F928438();
          sub_24E601704(&v144, &qword_27F2129B0);
          v29 = v138;
          sub_24F92A5A8();

          (*v135)(v28, v29);
          sub_24E6585F8(&v149);
          goto LABEL_19;
        }

        v37 = v128;
        v38 = Shelf.mergingWith(_:)(v23);
        v128 = v37;
        if (!v37)
        {
          v39 = v38;
          v40 = v133;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v144 = v40;
          sub_24E81C630(v39, &v149, isUniquelyReferenced_nonNull_native);

          v133 = v144;
          v13 = v129;
          goto LABEL_27;
        }

        v45 = v127;
        v46 = swift_isUniquelyReferenced_nonNull_native();
        *&v144 = v45;
        sub_24E81CAA8(v128, &v149, v46);

        v127 = v144;
        sub_24E6585F8(&v149);
        v128 = 0;
LABEL_19:
        v13 = v129;
      }

      else
      {
        v30 = *(v10 + v136);
        if (*(v30 + 16))
        {

          v31 = sub_24E76D934(&v149);
          if (v32)
          {
            v33 = *(*(v30 + 56) + 8 * v31);

            sub_24E65864C(v33 + OBJC_IVAR____TtC12GameStoreKit5Shelf_id, v142);

            v144 = v142[0];
            v145 = v142[1];
            v146 = v143;
            v34 = Shelf.withId(_:)(&v144);
            v35 = v133;
            v36 = swift_isUniquelyReferenced_nonNull_native();
            *&v142[0] = v35;
            sub_24E81C630(v34, &v149, v36);
            v133 = *&v142[0];
            sub_24E6585F8(&v144);
            goto LABEL_27;
          }
        }

        v42 = v133;
        v43 = swift_isUniquelyReferenced_nonNull_native();
        *&v144 = v42;
        sub_24E81C630(v23, &v149, v43);
        v133 = v144;
LABEL_27:
        v44 = v125;
        swift_beginAccess();
        sub_24F7A58DC(&v149, &v144);
        sub_24E601704(&v144, &qword_27F235830);
        swift_endAccess();
        sub_24F23404C(*(*(v10 + v44) + 16) != 0);

        sub_24E6585F8(&v149);
      }

      continue;
    }

    break;
  }

LABEL_29:

  v47 = *(v130 + 24);
  v50 = *(v47 + 64);
  v49 = v47 + 64;
  v48 = v50;
  v51 = 1 << *(*(v130 + 24) + 32);
  v52 = -1;
  if (v51 < 64)
  {
    v52 = ~(-1 << v51);
  }

  v53 = v52 & v48;
  v54 = (v51 + 63) >> 6;
  *&v132 = *(v130 + 24);

  v55 = 0;
  *&v141 = v10;
  v131 = v49;
  v129 = v54;
  if (v53)
  {
    while (1)
    {
LABEL_39:
      while (1)
      {
        v61 = __clz(__rbit64(v53));
        v53 &= v53 - 1;
        v62 = v61 | (v55 << 6);
        v63 = (*(v132 + 48) + 16 * v62);
        v65 = *v63;
        v64 = v63[1];
        v66 = *(*(v132 + 56) + 8 * v62);
        v67 = off_28620C700[0];
        type metadata accessor for ArcadeSeeAllGamesPage();
        v68 = v67();
        *&v144 = v65;
        *(&v144 + 1) = v64;
        swift_bridgeObjectRetain_n();
        v69 = v66;
        sub_24F92C7F8();
        if (*(v68 + 16))
        {
          break;
        }

        sub_24E6585F8(&v149);

LABEL_34:
        v56 = v66;
        v57 = v137;
        sub_24F23B9E0();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
        sub_24F928468();
        *(swift_allocObject() + 16) = v134;
        sub_24F9283A8();
        *(&v150 + 1) = MEMORY[0x277D837D0];
        *&v149 = v65;
        *(&v149 + 1) = v64;
        sub_24F928458();
        sub_24E601704(&v149, &qword_27F2129B0);
        v58 = v138;
        sub_24F92A5A8();

        v59 = v56;
        v54 = v129;

        (*v135)(v57, v58);
        v10 = v141;
        v49 = v131;
        if (!v53)
        {
          goto LABEL_35;
        }
      }

      sub_24E76D934(&v149);
      v71 = v70;
      sub_24E6585F8(&v149);

      if ((v71 & 1) == 0)
      {
        goto LABEL_34;
      }

      *&v144 = v65;
      *(&v144 + 1) = v64;

      sub_24F92C7F8();
      v72 = v66;
      v73 = v127;
      v74 = swift_isUniquelyReferenced_nonNull_native();
      *&v144 = v73;
      v124 = v66;
      sub_24E81CAA8(v66, &v149, v74);
      sub_24E6585F8(&v149);
      v75 = v144;
      v10 = v141;
      swift_beginAccess();
      *&v149 = v65;
      *(&v149 + 1) = v64;

      sub_24F92C7F8();
      sub_24F24655C(&v144, &v149);
      sub_24E6585F8(&v144);
      v127 = v75;
      if (*(&v150 + 1))
      {
        v144 = v149;
        v145 = v150;
        v146 = v151;
        sub_24F92C7D8();
        sub_24E6585F8(&v144);
        swift_dynamicCast();
      }

      else
      {
        v147 = 0;
        v148 = 0;
      }

      v49 = v131;

      swift_endAccess();

      sub_24F23404C(*(*(v10 + v125) + 16) != 0);

      if (!v53)
      {
        goto LABEL_35;
      }
    }
  }

  while (1)
  {
LABEL_35:
    v60 = v55 + 1;
    if (__OFADD__(v55, 1))
    {
      __break(1u);
      goto LABEL_91;
    }

    if (v60 >= v54)
    {
      break;
    }

    v53 = *(v49 + 8 * v60);
    ++v55;
    if (v53)
    {
      v55 = v60;
      goto LABEL_39;
    }
  }

  v76 = v133 + 64;
  v77 = 1 << *(v133 + 32);
  v78 = -1;
  if (v77 < 64)
  {
    v78 = ~(-1 << v77);
  }

  v79 = v78 & *(v133 + 64);
  v80 = (v77 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v81 = 0;
  while (1)
  {
    if (!v79)
    {
      while (1)
      {
        v82 = v81 + 1;
        if (__OFADD__(v81, 1))
        {
          goto LABEL_92;
        }

        if (v82 >= v80)
        {
          goto LABEL_67;
        }

        v79 = *(v76 + 8 * v82);
        ++v81;
        if (v79)
        {
          v81 = v82;
          break;
        }
      }
    }

    v83 = __clz(__rbit64(v79)) | (v81 << 6);
    v84 = v133;
    sub_24E65864C(*(v133 + 48) + 40 * v83, &v149);
    v85 = *(*(v84 + 56) + 8 * v83);
    v138 = v149;
    v86 = v151;
    v139 = v150;
    v87 = *(&v150 + 1);

    if (!v87)
    {
      break;
    }

    v149 = v138;
    v150 = v139;
    v151 = v86;
    v10 = v141;
    v88 = v136;
    swift_beginAccess();

    v89 = swift_isUniquelyReferenced_nonNull_native();
    *&v142[0] = *(v10 + v88);
    v90 = *&v142[0];
    *(v10 + v88) = 0x8000000000000000;
    v91 = sub_24E76D934(&v149);
    v93 = *(v90 + 16);
    v94 = (v92 & 1) == 0;
    v95 = __OFADD__(v93, v94);
    v96 = v93 + v94;
    if (v95)
    {
      goto LABEL_94;
    }

    v97 = v92;
    if (*(v90 + 24) >= v96)
    {
      if ((v89 & 1) == 0)
      {
        v103 = v91;
        sub_24E8ADF84();
        v91 = v103;
      }
    }

    else
    {
      sub_24E899884(v96, v89);
      v91 = sub_24E76D934(&v149);
      if ((v97 & 1) != (v98 & 1))
      {
        goto LABEL_97;
      }
    }

    v99 = *&v142[0];
    if (v97)
    {
      *(*(*&v142[0] + 56) + 8 * v91) = v85;

      sub_24E6585F8(&v149);
    }

    else
    {
      *(*&v142[0] + 8 * (v91 >> 6) + 64) |= 1 << v91;
      v100 = v91;
      sub_24E65864C(&v149, v99[6] + 40 * v91);
      *(v99[7] + 8 * v100) = v85;
      sub_24E6585F8(&v149);
      v101 = v99[2];
      v95 = __OFADD__(v101, 1);
      v102 = v101 + 1;
      if (v95)
      {
        goto LABEL_95;
      }

      v99[2] = v102;
      v10 = v141;
    }

    v79 &= v79 - 1;
    *(v10 + v136) = v99;
    swift_endAccess();
  }

  v10 = v141;
LABEL_67:
  v104 = v133;

  v105 = *(v10 + v126);
  if (v105)
  {
    v106 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfMapping;
    swift_beginAccess();

    v108 = v128;
    v109 = sub_24F23A4D8(v107, v141);
    v128 = v108;

    *(v105 + v106) = v109;
    v10 = v141;
  }

  v110 = *(v10 + qword_27F22F1A0);
  v111 = MEMORY[0x277D84F90];
  *&v142[0] = MEMORY[0x277D84F90];
  v112 = *(v110 + 16);

  if (v112)
  {
    v113 = 0;
    *&v141 = v112 - 1;
LABEL_71:
    v114 = v110 + 32 + 40 * v113;
    v115 = v113;
    v116 = v136;
    while (v115 < *(v110 + 16))
    {
      sub_24E65864C(v114, &v149);
      if (*(*(v10 + v116) + 16))
      {

        sub_24E76D934(&v149);
        if (v117)
        {

          v118 = sub_24E6585F8(&v149);
          MEMORY[0x253050F00](v118);
          if (*((*&v142[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v142[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_24F92B5E8();
          }

          v113 = v115 + 1;
          sub_24F92B638();
          v111 = *&v142[0];
          v119 = v141 == v115;
          v104 = v133;
          if (v119)
          {
            goto LABEL_83;
          }

          goto LABEL_71;
        }
      }

      ++v115;
      sub_24E6585F8(&v149);
      v114 += 40;
      if (v112 == v115)
      {
        v104 = v133;
        goto LABEL_83;
      }
    }

    goto LABEL_93;
  }

LABEL_83:

  *&v149 = v111;
  *(&v149 + 1) = v104;
  *&v150 = v127;
  *(&v150 + 1) = v130;
  v151 = 0;

  sub_24F92AD88();
  v120 = v151;

  v121 = *(v104 + 16);
  if (v121)
  {
    v122 = sub_24EAEACA0(*(v104 + 16), 0);
    v123 = sub_24EAEAC98(&v149, v122 + 32, v121, v104);

    sub_24E6586B4();
    if (v123 != v121)
    {
      goto LABEL_96;
    }
  }

  else
  {
    v122 = MEMORY[0x277D84F90];
  }

  sub_24F23A070(v122, type metadata accessor for ArcadeSeeAllGamesPage);
}

uint64_t sub_24F2421B4(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_24F92A078();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = result;
    if (*(result + qword_27F39C7D8))
    {
      *v8 = a1;
      v8[8] = 0;
      (*(v6 + 104))(v8, *MEMORY[0x277D22278], v5);
      v11 = a1;
      sub_24F92A0C8();
      (*(v6 + 8))(v8, v5);
    }

    v39 = a1;
    v12 = 1 << *(a3 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(a3 + 64);
    v15 = qword_27F22F1D8;
    v16 = qword_27F22F1D0;
    v17 = (v12 + 63) >> 6;

    v18 = 0;
    if (v14)
    {
      while (1)
      {
        v19 = v18;
LABEL_12:
        v20 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
        sub_24E65864C(*(a3 + 48) + 40 * (v20 | (v19 << 6)), v42);
        swift_beginAccess();
        sub_24F7A58DC(v42, v41);
        sub_24E601704(v41, &qword_27F235830);
        swift_endAccess();
        v21 = *(v10 + v16);
        *(v10 + v16) = *(*(v10 + v15) + 16) != 0;
        sub_24F23BF64(v21);
        result = sub_24E6585F8(v42);
        if (!v14)
        {
          goto LABEL_8;
        }
      }
    }

    while (1)
    {
LABEL_8:
      v19 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v19 >= v17)
      {
        break;
      }

      v14 = *(a3 + 64 + 8 * v19);
      ++v18;
      if (v14)
      {
        v18 = v19;
        goto LABEL_12;
      }
    }

    v22 = *(v10 + qword_27F22F1A0);
    v23 = MEMORY[0x277D84F90];
    v40 = MEMORY[0x277D84F90];
    v24 = *(v22 + 16);
    v25 = qword_27F39C780;

    result = swift_beginAccess();
    if (!v24)
    {
LABEL_25:

      v32 = MEMORY[0x277D84F90];
      v33 = sub_24E60986C(MEMORY[0x277D84F90]);
      v34 = sub_24E60ACC8(v32);
      v42[0] = v23;
      v42[1] = v33;
      v42[2] = v34;
      v42[3] = 0;
      v43 = v39;
      v35 = v39;
      sub_24F92AD88();
      v36 = v43;
    }

    v26 = 0;
    v27 = v22 + 32;
    v37 = v24 - 1;
    v38 = v22 + 32;
LABEL_16:
    v28 = v27 + 40 * v26;
    v29 = v26;
    while (v29 < *(v22 + 16))
    {
      sub_24E65864C(v28, v42);
      if (*(*(v10 + v25) + 16))
      {

        sub_24E76D934(v42);
        if (v30)
        {

          v31 = sub_24E6585F8(v42);
          MEMORY[0x253050F00](v31);
          if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_24F92B5E8();
          }

          v26 = v29 + 1;
          result = sub_24F92B638();
          v23 = v40;
          v27 = v38;
          if (v37 != v29)
          {
            goto LABEL_16;
          }

          goto LABEL_25;
        }
      }

      ++v29;
      result = sub_24E6585F8(v42);
      v28 += 40;
      if (v24 == v29)
      {
        goto LABEL_25;
      }
    }

LABEL_28:
    __break(1u);
  }

  return result;
}

uint64_t sub_24F242608(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_24F92A078();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = result;
    if (*(result + qword_27F39C7D8))
    {
      *v8 = a1;
      v8[8] = 0;
      (*(v6 + 104))(v8, *MEMORY[0x277D22278], v5);
      v11 = a1;
      sub_24F92A0C8();
      (*(v6 + 8))(v8, v5);
    }

    v37 = a1;
    v12 = 1 << *(a3 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(a3 + 64);
    v15 = qword_27F22F1D8;
    v16 = (v12 + 63) >> 6;

    v17 = 0;
    if (v14)
    {
      while (1)
      {
        v18 = v17;
LABEL_12:
        v19 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
        sub_24E65864C(*(a3 + 48) + 40 * (v19 | (v18 << 6)), v40);
        swift_beginAccess();
        sub_24F7A58DC(v40, v39);
        sub_24E601704(v39, &qword_27F235830);
        swift_endAccess();
        sub_24F23404C(*(*(v10 + v15) + 16) != 0);
        result = sub_24E6585F8(v40);
        if (!v14)
        {
          goto LABEL_8;
        }
      }
    }

    while (1)
    {
LABEL_8:
      v18 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v18 >= v16)
      {
        break;
      }

      v14 = *(a3 + 64 + 8 * v18);
      ++v17;
      if (v14)
      {
        v17 = v18;
        goto LABEL_12;
      }
    }

    v20 = *(v10 + qword_27F22F1A0);
    v21 = MEMORY[0x277D84F90];
    v38 = MEMORY[0x277D84F90];
    v22 = *(v20 + 16);
    v23 = qword_27F39C780;

    result = swift_beginAccess();
    if (!v22)
    {
LABEL_25:

      v30 = MEMORY[0x277D84F90];
      v31 = sub_24E60986C(MEMORY[0x277D84F90]);
      v32 = sub_24E60ACC8(v30);
      v40[0] = v21;
      v40[1] = v31;
      v40[2] = v32;
      v40[3] = 0;
      v41 = v37;
      v33 = v37;
      sub_24F92AD88();
      v34 = v41;
    }

    v24 = 0;
    v25 = v20 + 32;
    v35 = v22 - 1;
    v36 = v20 + 32;
LABEL_16:
    v26 = v25 + 40 * v24;
    v27 = v24;
    while (v27 < *(v20 + 16))
    {
      sub_24E65864C(v26, v40);
      if (*(*(v10 + v23) + 16))
      {

        sub_24E76D934(v40);
        if (v28)
        {

          v29 = sub_24E6585F8(v40);
          MEMORY[0x253050F00](v29);
          if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_24F92B5E8();
          }

          v24 = v27 + 1;
          result = sub_24F92B638();
          v21 = v38;
          v25 = v36;
          if (v35 != v27)
          {
            goto LABEL_16;
          }

          goto LABEL_25;
        }
      }

      ++v27;
      result = sub_24E6585F8(v40);
      v26 += 40;
      if (v22 == v27)
      {
        goto LABEL_25;
      }
    }

LABEL_28:
    __break(1u);
  }

  return result;
}

uint64_t ArcadeDiffablePagePresenter.__allocating_init(objectGraph:arcadeSubscriptionManager:subscriptionStateFetchTimeout:sidePackedPage:pageUrls:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, double a5)
{
  swift_allocObject();
  v10 = sub_24F24C4A4(a1, a2, a3, a4, a5);

  return v10;
}

uint64_t ArcadeDiffablePagePresenter.init(objectGraph:arcadeSubscriptionManager:subscriptionStateFetchTimeout:sidePackedPage:pageUrls:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, double a5)
{
  v6 = sub_24F24C4A4(a1, a2, a3, a4, a5);

  return v6;
}

uint64_t sub_24F242B30()
{

  sub_24EF43964(*(v0 + qword_27F39DFC0), *(v0 + qword_27F39DFC0 + 8), *(v0 + qword_27F39DFC0 + 16), *(v0 + qword_27F39DFC0 + 24), *(v0 + qword_27F39DFC0 + 32), *(v0 + qword_27F39DFC0 + 40));

  sub_24F24CFC8(v0 + qword_27F23CC10);

  sub_24EB6CE70(*(v0 + qword_27F23CC20), *(v0 + qword_27F23CC20 + 8));
  sub_24E824448(*(v0 + qword_27F23CC28));
}

uint64_t ArcadeDiffablePagePresenter.deinit()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  v2 = sub_24EBBFBB0();

  sub_24EF43964(*(v2 + qword_27F39DFC0), *(v2 + qword_27F39DFC0 + 8), *(v2 + qword_27F39DFC0 + 16), *(v2 + qword_27F39DFC0 + 24), *(v2 + qword_27F39DFC0 + 32), *(v2 + qword_27F39DFC0 + 40));

  sub_24F24CFC8(v2 + qword_27F23CC10);

  sub_24EB6CE70(*(v2 + qword_27F23CC20), *(v2 + qword_27F23CC20 + 8));
  sub_24E824448(*(v2 + qword_27F23CC28));

  return v2;
}

uint64_t ArcadeDiffablePagePresenter.__deallocating_deinit()
{
  ArcadeDiffablePagePresenter.deinit();

  return swift_deallocClassInstance();
}

id ArcadeDiffablePagePresenter.titleEffect.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + qword_27F39DFC0;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  v9 = *(v3 + 40);
  *(a1 + 40) = v9;
  return sub_24ED21BB0(v4, v5, v6, v7, v8, v9);
}

uint64_t ArcadeDiffablePagePresenter.didFetchPage.getter()
{
  v1 = qword_27F39DFE8;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_24F242E94(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = qword_27F39DFE8;
  result = swift_beginAccess();
  v6 = *(v3 + v4);
  *(v3 + v4) = v2;
  if ((v6 & 1) == 0)
  {
    if (v2)
    {
      return sub_24F92AD88();
    }
  }

  return result;
}

uint64_t ArcadeDiffablePagePresenter.uber.setter(uint64_t a1)
{
  v3 = qword_27F39DFC8;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

void sub_24F242FD4(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = v1 + qword_27F23CC20;
  v5 = *(v1 + qword_27F23CC20 + 8);
  v17 = *(v1 + qword_27F23CC20);
  v18 = v5;
  v15 = v2;
  v16 = v3;
  sub_24EB6CE50(v17, v5);
  v6 = static ArcadeState.== infix(_:_:)(&v17, &v15);
  sub_24EB6CE70(v17, v18);
  if (v6)
  {
    return;
  }

  v7 = *v4;
  v8 = *(v4 + 8);
  v9 = v8 >> 6;
  if (v8 >> 6 == 3 && (v7 & 1) != 0)
  {
    v10 = v2;
    v11 = v3;
LABEL_21:
    sub_24EB6CE50(v10, v11);
    goto LABEL_22;
  }

  v12 = v3 >> 6;
  if (v3 >> 6 > 1)
  {
    if (v12 != 2)
    {
      v10 = v7;
      v11 = v8;
      goto LABEL_21;
    }

    if (!v9)
    {
      v14 = v2;
      goto LABEL_22;
    }

    if (v9 == 2)
    {
      sub_24EB6CE50(v2, v3);
      sub_24EB6CE50(v7, v8);
      sub_24EB6CE70(v2, v3);
      sub_24EB6CE70(v7, v8);
      if ((v3 & 0x3F) == (v8 & 0x3F))
      {
        return;
      }

      if ((v3 & 0x3F) != 0)
      {
        if ((v3 & 0x3F) != 1 && (v8 & 0x3F) == 0)
        {
          return;
        }
      }

      else if ((v8 & 0x3F) == 2)
      {
        return;
      }

      goto LABEL_23;
    }

    sub_24EB6CE50(v2, v3);
  }

  else
  {
    if (v12)
    {
      sub_24EB6CE50(v2, v3);
      sub_24EB6CE50(v7, v8);
      sub_24EB6CE70(v2, v3);
      sub_24EB6CE70(v7, v8);
      if (v9 != 2)
      {
        return;
      }

      goto LABEL_23;
    }

    if (v9 == 2)
    {
      v13 = v7;
LABEL_22:
      sub_24EB6CE70(v2, v3);
      sub_24EB6CE70(v7, v8);
LABEL_23:

      ArcadeDiffablePagePresenter.update(ignoringCache:)(1);
      return;
    }
  }

  sub_24EB6CE50(v7, v8);
  sub_24EB6CE70(v2, v3);

  sub_24EB6CE70(v7, v8);
}

Swift::Void __swiftcall ArcadeDiffablePagePresenter.update(ignoringCache:)(Swift::Bool ignoringCache)
{
  v2 = v1;
  v25 = ignoringCache;
  v3 = *v1;
  v4 = sub_24F927D88();
  v24 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24F927DC8();
  v22 = *(v7 - 8);
  v23 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24F927D98();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E74EC40();
  (*(v11 + 104))(v13, *MEMORY[0x277D851C8], v10);
  v14 = sub_24F92BF48();
  (*(v11 + 8))(v13, v10);
  v15 = swift_allocObject();
  *(v15 + 16) = v3;
  aBlock[4] = sub_24F24D034;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24EAF8248;
  aBlock[3] = &block_descriptor_130;
  v16 = _Block_copy(aBlock);
  sub_24F927DA8();
  v26 = MEMORY[0x277D84F90];
  sub_24F24DA18(&qword_27F222930, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310);
  sub_24E602068(&qword_27F222940, &qword_27F222310);
  sub_24F92C6A8();
  MEMORY[0x2530518B0](0, v9, v6, v16);
  _Block_release(v16);

  (*(v24 + 8))(v6, v4);
  (*(v22 + 8))(v9, v23);

  if (((*(v1 + qword_27F23CC20 + 8) >> 6) | 2) == 2)
  {
    v17 = qword_27F39DFE8;
    swift_beginAccess();
    v18 = *(v2 + v17);
    *(v2 + v17) = 1;
    if ((v18 & 1) == 0)
    {
      sub_24F92AD88();
    }
  }

  swift_beginAccess();
  v19 = v2[4];

  sub_24F23A970(v25);
  v20 = v2[4];
  if (v19)
  {
    if (v20 && v19 == v20 || (*(v2 + qword_27F23CC38) & 1) == 0 || !v20)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (!v20)
  {
    return;
  }

  if (*(v2 + qword_27F23CC38))
  {
LABEL_12:

    sub_24F92A0A8();
  }

LABEL_13:
}

void *sub_24F2436D0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v19 - v7;
  v9 = v1[2];
  v20 = *(v1 + qword_27F23CC18);
  v10 = *(v1 + qword_27F23CC20);
  v11 = *(v1 + qword_27F23CC20 + 8);
  v21 = v10;
  v12 = *(v1 + qword_27F23CC48);
  v22 = v11;
  v13 = v1 + qword_27F23CC10;
  if ((v11 & 0xC0) != 0x80)
  {
    v13 += *(type metadata accessor for ArcadePageUrls() + 20);
  }

  sub_24E60169C(v13, v5, &qword_27F228530);
  sub_24E6009C8(v5, v8, &qword_27F228530);
  swift_beginAccess();
  v14 = v1[3];
  swift_beginAccess();
  v15 = v1[4];
  type metadata accessor for ArcadeDiffablePageContentPresenter();
  swift_allocObject();

  v16 = v20;
  sub_24EB6CE50(v10, v11);

  v17 = sub_24EE5DFD4(v9, v16, &v21, v8, a1, v14, v15, v12);

  return v17;
}

Swift::Void __swiftcall ArcadeDiffablePagePresenter.didLoad()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C290);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9[-v4];
  v6 = *(v0 + qword_27F23CC18);
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = *(v6 + OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_stateLock);

  [v8 lock];
  sub_24F213714(v1, sub_24F24D054, v7, v6);
  [v8 unlock];

  type metadata accessor for ASKBagContract();
  sub_24F928FD8();
  sub_24F92A758();
  if (qword_27F210A00 != -1)
  {
    swift_once();
  }

  sub_24F92A3B8();
  sub_24F92A408();

  (*(v3 + 8))(v5, v2);
  if (v9[15])
  {
    v10[0] = -127;
    ArcadeSubscriptionManager.updateStateFromEntitlements(refreshingCache:)(v10);
  }

  ArcadeDiffablePagePresenter.update(ignoringCache:)(0);
}

void sub_24F243B68(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v3 = v1;
    v4 = v2;
    sub_24EB6CE50(v1, v2);
    sub_24F243BF8(&v3);

    sub_24EB6CE70(v3, v4);
  }
}

void sub_24F243BF8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24F92AAE8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v9 = *(a1 + 8);
  sub_24F23B9E0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93A400;
  sub_24F9283A8();
  v16 = &type metadata for ArcadeState;
  v14 = v8;
  v15 = v9;
  sub_24EB6CE50(v8, v9);
  sub_24F928438();
  sub_24E601704(&v14, &qword_27F2129B0);
  sub_24F92A588();

  (*(v5 + 8))(v7, v4);
  v10 = v2 + qword_27F23CC20;
  v11 = *(v2 + qword_27F23CC20);
  *v10 = v8;
  LOBYTE(v7) = *(v10 + 8);
  *(v10 + 8) = v9;
  sub_24EB6CE50(v8, v9);
  sub_24EB6CE50(v11, v7);
  sub_24EB6CE70(v11, v7);
  v14 = v11;
  v15 = v7;
  sub_24F242FD4(&v14);
  sub_24EB6CE70(v11, v7);
  v12 = (v2 + qword_27F23CC28);
  v13 = *(v2 + qword_27F23CC28);
  if (v13)
  {
    *v12 = 0;
    v12[1] = 0;
    v13();
    sub_24E824448(v13);
  }
}

Swift::Void __swiftcall ArcadeDiffablePagePresenter.viewDidAppear()()
{
  v1 = v0;
  v2 = sub_24F91F648();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  v6 = *(v1 + 24);
  if (v6)
  {

    sub_24F91F638();
    sub_24F91F5E8();
    v8 = v7;
    (*(v3 + 8))(v5, v2);
    v9 = v6 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_appearTime;
    swift_beginAccess();
    *v9 = v8;
    *(v9 + 8) = 0;
    v10 = *(v6 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasAppearTime);
    swift_beginAccess();
    *(v10 + 40) = 1;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_24EA6BFA0();
    }
  }

  *(v1 + qword_27F23CC38) = 1;
}

void sub_24F244058()
{
  v0 = sub_24F92AAE8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F23B9E0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93DE60;
  sub_24F9283A8();
  sub_24F92A588();

  (*(v1 + 8))(v3, v0);
  v4 = [objc_opt_self() daemonProxy];
}

uint64_t sub_24F244230()
{
  v1 = v0;
  v2 = sub_24F92AAE8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = qword_27F39DFE8;
  result = swift_beginAccess();
  if (*(v0 + v6) != 1)
  {
    return result;
  }

  v8 = sub_24F91EB48();
  if (!v8)
  {
    goto LABEL_12;
  }

  v9 = v8;
  v15[1] = 0x6449666C656873;
  v15[2] = 0xE700000000000000;
  sub_24F92C7F8();
  if (!*(v9 + 16) || (v10 = sub_24E76D934(v16), (v11 & 1) == 0))
  {

    sub_24E6585F8(v16);
LABEL_12:
    v17 = 0u;
    v18 = 0u;
    goto LABEL_13;
  }

  sub_24E643A9C(*(v9 + 56) + 32 * v10, &v17);
  sub_24E6585F8(v16);

  if (!*(&v18 + 1))
  {
LABEL_13:
    sub_24E601704(&v17, &qword_27F2129B0);
    v19 = 0u;
    v20 = 0u;
    v21 = 0;
    goto LABEL_14;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    v21 = 0;
    v19 = 0u;
    v20 = 0u;
    goto LABEL_14;
  }

  if (!*(&v20 + 1))
  {
LABEL_14:
    sub_24E601704(&v19, &qword_27F235830);
    sub_24F23B9E0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F9283A8();
    sub_24F92A5A8();

    return (*(v3 + 8))(v5, v2);
  }

  v22[0] = v19;
  v22[1] = v20;
  v23 = v21;
  v12 = *(v1 + qword_27F23CC30);

  os_unfair_lock_lock(v12 + 6);
  sub_24E65864C(v22, v16);
  sub_24ED7D5A0(&v19, v16);
  sub_24E6585F8(&v19);
  os_unfair_lock_unlock(v12 + 6);

  v13 = *(v1 + qword_27F39CC00);
  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213BF8);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_24F93DE60;
    sub_24E65864C(v22, v14 + 32);

    sub_24F2495D8(v14, sub_24ED93AC0, 0, v13, &unk_286212898, &unk_286212910, &unk_286212938, sub_24F24DBA0, sub_24F24DB9C);
  }

  return sub_24E6585F8(v22);
}

uint64_t sub_24F24469C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v10[0] = *a1;
  v10[1] = v2;
  v11 = *(a1 + 32);
  sub_24EBD19C4(v10);
  v3 = *(v1 + qword_27F23CC30);

  os_unfair_lock_lock((v3 + 24));
  v4 = *(&v10[0] + 1);
  v12 = *(&v10[0] + 1);
  v5 = *(v3 + 16);
  sub_24E60169C(&v12, v9, &qword_27F22F4A8);

  v6 = sub_24EAE70B4(v4, v5);
  sub_24F7A6CB4(v6);
  sub_24E601704(&v12, &qword_27F22F4A8);
  os_unfair_lock_unlock((v3 + 24));

  v7 = *(v1 + qword_27F39CC00);
  if (v7)
  {

    sub_24F24788C(v6, sub_24ED93ACC, 0, v7);
  }
}

uint64_t sub_24F2447D8()
{
  v1 = v0;
  v45 = *v0;
  v2 = sub_24F92AAE8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24F91F6B8();
  v42 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v41 - v10;
  v12 = sub_24F928AD8();
  v13 = *(v12 - 8);
  v43 = v12;
  v44 = v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v41 - v17;
  v19 = sub_24F91EB48();
  if (!v19)
  {
    goto LABEL_9;
  }

  v20 = v19;
  *&v48 = 0x6449666C656873;
  *(&v48 + 1) = 0xE700000000000000;
  sub_24F92C7F8();
  if (!*(v20 + 16) || (v21 = sub_24E76D934(v54), (v22 & 1) == 0))
  {

    sub_24E6585F8(v54);
LABEL_9:
    v51 = 0u;
    v52 = 0u;
    goto LABEL_10;
  }

  sub_24E643A9C(*(v20 + 56) + 32 * v21, &v51);
  sub_24E6585F8(v54);

  if (!*(&v52 + 1))
  {
LABEL_10:
    sub_24E601704(&v51, &qword_27F2129B0);
    goto LABEL_11;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    sub_24F23B9E0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F9283A8();
    sub_24F92A5A8();

    return (*(v3 + 8))(v5, v2);
  }

  v24 = *(&v54[0] + 1);
  v23 = *&v54[0];
  sub_24F928A98();
  type metadata accessor for ShelfBasedPageScrollAction();
  v25 = swift_allocObject();
  v26 = (v25 + OBJC_IVAR____TtC12GameStoreKit26ShelfBasedPageScrollAction_shelfId);
  *v26 = v23;
  v26[1] = v24;
  v27 = (v25 + OBJC_IVAR____TtC12GameStoreKit26ShelfBasedPageScrollAction_purchasedShelfId);
  *v27 = 0;
  v27[1] = 0;
  v28 = (v25 + OBJC_IVAR____TtC12GameStoreKit26ShelfBasedPageScrollAction_notPurchasedShelfId);
  *v28 = 0;
  v28[1] = 0;
  v29 = (v25 + OBJC_IVAR____TtC12GameStoreKit26ShelfBasedPageScrollAction_adamId);
  *v29 = 0;
  v29[1] = 0;
  v30 = v25 + OBJC_IVAR____TtC12GameStoreKit26ShelfBasedPageScrollAction_index;
  *v30 = 0;
  *(v30 + 8) = 1;
  *(v25 + OBJC_IVAR____TtC12GameStoreKit26ShelfBasedPageScrollAction_clicksOnScroll) = 0;
  v55 = 0;
  memset(v54, 0, sizeof(v54));
  v32 = v43;
  v31 = v44;
  (*(v44 + 16))(v15, v18, v43);
  v33 = sub_24F929608();
  (*(*(v33 - 8) + 56))(v11, 1, 1, v33);
  v34 = (v25 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v34 = 0u;
  v34[1] = 0u;
  sub_24E60169C(v54, &v48, &qword_27F235830);
  if (*(&v49 + 1))
  {
    v51 = v48;
    v52 = v49;
    v53 = v50;
  }

  else
  {
    sub_24F91F6A8();
    v36 = sub_24F91F668();
    v38 = v37;
    (*(v42 + 8))(v8, v6);
    v46 = v36;
    v47 = v38;
    v31 = v44;
    sub_24F92C7F8();
    sub_24E601704(&v48, &qword_27F235830);
  }

  sub_24E601704(v54, &qword_27F235830);
  (*(v31 + 8))(v18, v32);
  v39 = v25 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  v40 = v52;
  *v39 = v51;
  *(v39 + 16) = v40;
  *(v39 + 32) = v53;
  sub_24E6009C8(v11, v25 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68);
  *(v25 + 16) = xmmword_24F9D8B80;
  *(v25 + 32) = 0;
  *(v25 + 40) = 0;
  (*(v31 + 32))(v25 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v15, v32);
  *&v54[0] = v25;
  *(&v54[0] + 1) = v1;
  v55 = v45;

  sub_24F92AD88();

  return sub_24E601704(v54, &qword_27F22CE40);
}

uint64_t sub_24F244EE8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v5 = sub_24F91EB58();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F91EB08();

  a4(v8);

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_24F244FE0(uint64_t a1, char a2)
{
  sub_24F2F585C(a1, a2);
  *(v2 + qword_27F23CC40) = *(a1 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_presentationOptions);
  v5 = *(a1 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_title);
  v4 = *(a1 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_title + 8);
  v6 = (v2 + qword_27F39DFB0);
  swift_beginAccess();
  *v6 = v5;
  v6[1] = v4;

  v8 = *(a1 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_tabTitle);
  v7 = *(a1 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_tabTitle + 8);
  v9 = (v2 + qword_27F39DFB8);
  swift_beginAccess();
  *v9 = v8;
  v9[1] = v7;

  v10 = *(a1 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_titleEffect);
  v11 = *(a1 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_titleEffect + 8);
  v12 = *(a1 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_titleEffect + 16);
  v13 = *(a1 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_titleEffect + 24);
  v14 = *(a1 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_titleEffect + 32);
  v15 = v2 + qword_27F39DFC0;
  v16 = *(a1 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_titleEffect + 40);
  swift_beginAccess();
  v29 = *(v15 + 8);
  v30 = *v15;
  v27 = *(v15 + 24);
  v28 = *(v15 + 16);
  v26 = *(v15 + 32);
  *v15 = v10;
  *(v15 + 8) = v11;
  *(v15 + 16) = v12;
  *(v15 + 24) = v13;
  *(v15 + 32) = v14;
  v17 = *(v15 + 40);
  *(v15 + 40) = v16;
  sub_24ED21BB0(v10, v11, v12, v13, v14, v16);
  sub_24EF43964(v30, v29, v28, v27, v26, v17);
  v18 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_uber;
  swift_beginAccess();
  v19 = *(a1 + v18);
  v20 = qword_27F39DFC8;
  swift_beginAccess();
  *(v2 + v20) = v19;

  v21 = *(a1 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_subscriptionLockup);
  v22 = qword_27F39DFD0;
  swift_beginAccess();
  *(v2 + v22) = v21;

  if (*(a1 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_autoUpsellAction))
  {
    v24 = *(a1 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_shouldForceAutoUpsell);

    sub_24F245254(v25, v24);
  }

  return result;
}

uint64_t sub_24F245254(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EBE0);
  v40 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v32 - v8;
  v10 = sub_24F92AAE8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v2 + qword_27F23CC18) + OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_subscriptionState;
  swift_beginAccess();
  v15 = *(v14 + 8);
  if (v15 >= 0xC0)
  {
    sub_24F23B9E0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F9283A8();
    sub_24F92A588();

    (*(v11 + 8))(v13, v10);
    v16 = swift_allocObject();
    swift_weakInit();
    v17 = swift_allocObject();
    *(v17 + 16) = v16;
    *(v17 + 24) = a1;
    *(v17 + 32) = a2 & 1;
    v18 = (v3 + qword_27F23CC28);
    v19 = *(v3 + qword_27F23CC28);
    *v18 = sub_24F24D3A8;
    v18[1] = v17;

    sub_24E824448(v19);
  }

  v38 = v7;
  v39 = v11;
  if (v15 > 0x3F)
  {
    sub_24F23B9E0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    goto LABEL_7;
  }

  if (a2)
  {
    v21 = swift_allocObject();
    swift_weakInit();
    v22 = swift_allocObject();
    *(v22 + 16) = v21;
    *(v22 + 24) = a1;
    v41 = sub_24F24D384;
    v42 = v22;

    sub_24F92AD88();

    sub_24F23B9E0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
LABEL_7:
    sub_24F9283A8();
    sub_24F92A588();

    return (*(v39 + 8))(v13, v10);
  }

  v36 = v10;
  type metadata accessor for ASKBagContract();
  sub_24F928FD8();
  sub_24F92A758();
  v37 = v41;
  v35 = [objc_opt_self() standardUserDefaults];
  v23 = NSUserDefaults.arcadeUpsellAutoPresentationCount.getter();
  v24 = a1;
  v34 = v6;
  if (qword_27F210A08 != -1)
  {
    swift_once();
  }

  sub_24F92A398();
  v25 = v38;
  sub_24F92A408();
  v27 = v40 + 8;
  v26 = *(v40 + 8);
  v26(v9, v25);
  if (v23 >= v41)
  {
    sub_24F23B9E0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F9283A8();
  }

  else
  {
    v40 = v27;
    v33 = v26;
    v28 = swift_allocObject();
    swift_weakInit();
    v29 = swift_allocObject();
    v29[2] = v28;
    v29[3] = v24;
    v30 = v35;
    v29[4] = v35;
    v41 = sub_24F24D35C;
    v42 = v29;

    v35 = v30;
    sub_24F92AD88();

    sub_24F23B9E0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93A400;
    sub_24F9283A8();
    sub_24F92A398();
    sub_24F92A408();
    v33(v9, v25);
    v43 = MEMORY[0x277D83B88];
    sub_24F928438();
    sub_24E601704(&v41, &qword_27F2129B0);
  }

  v31 = v36;
  sub_24F92A588();

  return (*(v39 + 8))(v13, v31);
}

uint64_t sub_24F245C14(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_24F245254(a2, a3 & 1);
  }

  return result;
}

uint64_t sub_24F245C88(uint64_t a1, uint64_t a2)
{
  v3 = sub_24F927D88();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_24F927DC8();
  v7 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E74EC40();
  v16 = sub_24F92BEF8();
  v10 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = a2;
  aBlock[4] = sub_24F24D3B4;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24EAF8248;
  aBlock[3] = &block_descriptor_81;
  v12 = _Block_copy(aBlock);

  sub_24F927DA8();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_24F24DA18(&qword_27F222930, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310);
  sub_24E602068(&qword_27F222940, &qword_27F222310);
  sub_24F92C6A8();
  v13 = v16;
  MEMORY[0x2530518B0](0, v9, v6, v12);
  _Block_release(v12);

  (*(v4 + 8))(v6, v3);
  return (*(v7 + 8))(v9, v17);
}

uint64_t sub_24F245FBC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    v5 = Strong;
    if (Strong)
    {
      Strong = type metadata accessor for ArcadeDiffablePagePresenter();
    }

    v6[0] = a2;
    v6[1] = v5;
    v6[2] = 0;
    v6[3] = 0;
    v6[4] = Strong;

    sub_24F92AD88();

    return sub_24E601704(v6, &qword_27F22CE40);
  }

  return result;
}

uint64_t sub_24F2460A4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_24F927D88();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_24F927DC8();
  v9 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E74EC40();
  v19 = sub_24F92BEF8();
  v12 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = a2;
  v13[4] = a3;
  aBlock[4] = sub_24F24D3BC;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24EAF8248;
  aBlock[3] = &block_descriptor_88_1;
  v14 = _Block_copy(aBlock);

  v15 = a3;

  sub_24F927DA8();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_24F24DA18(&qword_27F222930, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310);
  sub_24E602068(&qword_27F222940, &qword_27F222310);
  sub_24F92C6A8();
  v16 = v19;
  MEMORY[0x2530518B0](0, v11, v8, v14);
  _Block_release(v14);

  (*(v6 + 8))(v8, v5);
  return (*(v9 + 8))(v11, v20);
}

void sub_24F2463E4(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    v6 = Strong;
    if (Strong)
    {
      Strong = type metadata accessor for ArcadeDiffablePagePresenter();
    }

    v10[0] = a2;
    v10[1] = v6;
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = Strong;

    sub_24F92AD88();

    sub_24E601704(v10, &qword_27F22CE40);
  }

  v7 = NSUserDefaults.arcadeUpsellAutoPresentationCount.getter();
  v8 = v7 + 1;
  if (__OFADD__(v7, 1))
  {
    __break(1u);
  }

  else
  {
    v9 = sub_24F92B098();
    [a3 setInteger:v8 forKey:v9];
  }
}

unint64_t sub_24F24655C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *v3;
  result = sub_24F92C7B8();
  v8 = -1 << *(v6 + 32);
  v9 = result & ~v8;
  if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
LABEL_5:
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return result;
  }

  v10 = ~v8;
  while (1)
  {
    sub_24E65864C(*(v6 + 48) + 40 * v9, v34);
    v11 = MEMORY[0x253052150](v34, a1);
    result = sub_24E6585F8(v34);
    if (v11)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *v3;
  v33 = *v3;
  if (isUniquelyReferenced_nonNull_native)
  {
    v14 = *v3;
LABEL_8:
    v15 = *(v14 + 48) + 40 * v9;
    v16 = *(v15 + 16);
    *a2 = *v15;
    *(a2 + 16) = v16;
    *(a2 + 32) = *(v15 + 32);
    result = sub_24F2467C4(v9);
    *v3 = v33;
    return result;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E5B8);
  v17 = sub_24F92C808();
  v14 = v17;
  if (!*(v13 + 16))
  {
LABEL_24:

    v33 = v14;
    goto LABEL_8;
  }

  result = v17 + 56;
  v18 = v13 + 56;
  v19 = ((1 << *(v14 + 32)) + 63) >> 6;
  if (v14 != v13 || result >= v18 + 8 * v19)
  {
    result = memmove(result, (v13 + 56), 8 * v19);
  }

  v20 = 0;
  *(v14 + 16) = *(v13 + 16);
  v21 = 1 << *(v13 + 32);
  v22 = *(v13 + 56);
  v23 = -1;
  if (v21 < 64)
  {
    v23 = ~(-1 << v21);
  }

  v24 = v23 & v22;
  v25 = (v21 + 63) >> 6;
  if ((v23 & v22) != 0)
  {
    do
    {
      v26 = __clz(__rbit64(v24));
      v24 &= v24 - 1;
LABEL_22:
      v29 = 40 * (v26 | (v20 << 6));
      result = sub_24E65864C(*(v13 + 48) + v29, v34);
      v30 = *(v14 + 48) + v29;
      v31 = v34[0];
      v32 = v34[1];
      *(v30 + 32) = v35;
      *v30 = v31;
      *(v30 + 16) = v32;
    }

    while (v24);
  }

  v27 = v20;
  while (1)
  {
    v20 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v20 >= v25)
    {
      goto LABEL_24;
    }

    v28 = *(v18 + 8 * v20);
    ++v27;
    if (v28)
    {
      v26 = __clz(__rbit64(v28));
      v24 = (v28 - 1) & v28;
      goto LABEL_22;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_24F2467C4(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_24F92C6C8();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_24E65864C(*(v3 + 48) + 40 * v6, v22);
        v12 = sub_24F92C7B8();
        sub_24E6585F8(v22);
        v13 = v12 & v7;
        if (v2 >= v9)
        {
          if (v13 >= v9 && v2 >= v13)
          {
LABEL_16:
            v16 = *(v3 + 48);
            v17 = v16 + 40 * v2;
            v18 = (v16 + 40 * v6);
            if (v2 != v6 || v17 >= v18 + 40)
            {
              v10 = *v18;
              v11 = v18[1];
              *(v17 + 32) = *(v18 + 4);
              *v17 = v10;
              *(v17 + 16) = v11;
              v2 = v6;
            }
          }
        }

        else if (v13 >= v9 || v2 >= v13)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v19 = *(v3 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v21;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_24F24697C(uint64_t a1, char a2, void *a3)
{
  sub_24F929388();
  _s9JetEngine16LocalPreferencesC12GameStoreKitE03AppfG0ACvgZ_0();
  if (qword_27F2100D8 != -1)
  {
    swift_once();
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224F40);
  __swift_project_value_buffer(v6, qword_27F225388);
  sub_24F928868();

  if (v9 == 2 || (v9 & 1) == 0)
  {
    MEMORY[0x28223BE20](result);
    v8[16] = a2 & 1;
    return sub_24F246AA8(a1, sub_24F24DB84, v8, a3);
  }

  return result;
}

uint64_t sub_24F246AA8(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, void *a4)
{
  v4 = a4;
  v98 = a3;
  v104 = a2;
  v6 = *a4;
  v97 = sub_24F92A088();
  v7 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v96 = &v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v86 - v10;
  v102 = sub_24F91F4A8();
  v12 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v93 = &v86 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v101 = (&v86 - v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F4B8);
  v117[3] = v16;
  v117[4] = sub_24E602068(&qword_27F22F4C0, &qword_27F22F4B8);
  v117[0] = a1;
  if (*(v4 + qword_27F39C790) == 1 || !*(a1 + 16))
  {

    return __swift_destroy_boxed_opaque_existential_1(v117);
  }

  v87 = v7;
  v89 = v6;

  v100 = sub_24E60AABC(MEMORY[0x277D84F90]);
  v116 = v100;
  v17 = __swift_project_boxed_opaque_existential_1(v117, v16);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v86 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20, v18);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v113);
  v23 = -1 << *(*v20 + 32);
  v24 = ~v23;
  v25 = (*v20 + 64);
  v26 = *v25;
  v27 = -v23;
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  else
  {
    v28 = -1;
  }

  *boxed_opaque_existential_1 = *v20;
  boxed_opaque_existential_1[1] = v25;
  boxed_opaque_existential_1[2] = v24;
  boxed_opaque_existential_1[3] = 0;
  boxed_opaque_existential_1[4] = v28 & v26;
  v29 = qword_27F39C780;
  v30 = qword_27F22F1D8;
  v92 = qword_27F22F1D0;
  swift_beginAccess();
  v99 = v30;
  swift_beginAccess();
  __swift_mutable_project_boxed_opaque_existential_1(v113, AssociatedTypeWitness);
  sub_24F92C4D8();
  v103 = v4;
  if (*(&v111 + 1))
  {
    v100 = (v12 + 48);
    v94 = (v12 + 8);
    v95 = (v12 + 32);
    v90 = (v12 + 16);
    v88 = xmmword_24F93DE60;
    v32 = v101;
    v31 = v102;
    while (1)
    {
      v109 = v112;
      v108[0] = v110;
      v108[1] = v111;
      v33 = *(v4 + v29);
      if (!*(v33 + 16))
      {
        goto LABEL_9;
      }

      v34 = sub_24E76D934(v108);
      if ((v35 & 1) == 0)
      {
        break;
      }

      v36 = *(*(v33 + 56) + 8 * v34);

      sub_24E65864C(v108, v107);
      v104(v36);
      if ((*v100)(v11, 1, v31) != 1)
      {
        (*v95)(v32, v11, v31);
        v37 = *(v99 + v4);
        if (*(v37 + 16))
        {

          v38 = sub_24F92C7B8();
          v39 = -1 << *(v37 + 32);
          v40 = v38 & ~v39;
          if ((*(v37 + 56 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v40))
          {
            v41 = ~v39;
            while (1)
            {
              sub_24E65864C(*(v37 + 48) + 40 * v40, v106);
              v42 = MEMORY[0x253052150](v106, v107);
              sub_24E6585F8(v106);
              if (v42)
              {
                break;
              }

              v40 = (v40 + 1) & v41;
              if (((*(v37 + 56 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v40) & 1) == 0)
              {
                goto LABEL_20;
              }
            }

            v32 = v101;
            v31 = v102;
            (*v94)(v101, v102);
            sub_24E6585F8(v107);
            sub_24E6585F8(v108);
            v4 = v103;
            goto LABEL_10;
          }

LABEL_20:
        }

        v43 = (v36 + OBJC_IVAR____TtC12GameStoreKit5Shelf_batchGroup);
        if (v116[2] && (sub_24E76D644(*v43, v43[1]), (v44 & 1) != 0))
        {
          v45 = *v43;
          v46 = v43[1];

          v47 = sub_24F4D6258(v106, v45, v46);
          if (*v48)
          {
            v49 = v48;
            v91 = v47;
            v50 = v93;
            v32 = v101;
            v31 = v102;
            (*v90)(v93, v101, v102);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v105[0] = *v49;
            *v49 = 0x8000000000000000;
            sub_24E81CBE8(v50, v107, isUniquelyReferenced_nonNull_native);
            *v49 = v105[0];

            v91(v106, 0);

            goto LABEL_26;
          }

          (v47)(v106, 0);

          v31 = v102;
          v4 = v103;
          v32 = v101;
        }

        else
        {
          v52 = v43[1];
          v91 = *v43;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F4B0);
          v53 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213100) - 8);
          v54 = (*(*v53 + 80) + 32) & ~*(*v53 + 80);
          v55 = swift_allocObject();
          *(v55 + 16) = v88;
          v56 = v55 + v54;
          v57 = v53[14];
          sub_24E65864C(v107, v56);
          v58 = (v56 + v57);
          v32 = v101;
          v31 = v102;
          (*v90)(v58, v101, v102);

          v59 = sub_24E60AAD0(v55);
          swift_setDeallocating();
          sub_24E601704(v56, &qword_27F213100);
          swift_deallocClassInstance();
          v60 = v116;
          v61 = swift_isUniquelyReferenced_nonNull_native();
          v106[0] = v60;
          sub_24E81CD60(v59, v91, v52, v61);

          v116 = v106[0];
LABEL_26:
          v4 = v103;
        }

        sub_24E65864C(v107, v105);
        v62 = v99;
        swift_beginAccess();
        sub_24ED7D5A0(v106, v105);
        sub_24E6585F8(v106);
        swift_endAccess();
        v63 = *(v4 + v92);
        *(v4 + v92) = *(*(v62 + v4) + 16) != 0;
        sub_24F23BF64(v63);

        (*v94)(v32, v31);
        sub_24E6585F8(v107);
        sub_24E6585F8(v108);
        goto LABEL_10;
      }

      sub_24E6585F8(v107);
      sub_24E6585F8(v108);
      sub_24E601704(v11, &qword_27F228530);
LABEL_10:
      __swift_mutable_project_boxed_opaque_existential_1(v113, AssociatedTypeWitness);
      sub_24F92C4D8();
      if (!*(&v111 + 1))
      {
        v64 = v116;
        goto LABEL_33;
      }
    }

LABEL_9:
    sub_24E6585F8(v108);
    goto LABEL_10;
  }

  v64 = v100;
LABEL_33:
  __swift_destroy_boxed_opaque_existential_1(v113);
  if (!v64[2])
  {
LABEL_49:

    return __swift_destroy_boxed_opaque_existential_1(v117);
  }

  v65 = v64 + 8;
  v66 = 1 << *(v64 + 32);
  v67 = -1;
  if (v66 < 64)
  {
    v67 = ~(-1 << v66);
  }

  v68 = v67 & v64[8];
  v69 = (v4 + qword_27F22F1C0);
  v98 = qword_27F39C7D8;
  v70 = (v66 + 63) >> 6;
  LODWORD(v95) = *MEMORY[0x277D22298];
  v93 = (v87 + 8);
  v94 = (v87 + 104);

  v72 = 0;
  v99 = v69;
  v100 = v64;
  while (v68)
  {
    v73 = v68;
LABEL_43:
    v68 = (v73 - 1) & v73;
    if (*v69)
    {
      v101 = *v69;
      v102 = (v73 - 1) & v73;
      v75 = *(v64[7] + ((v72 << 9) | (8 * __clz(__rbit64(v73)))));
      v104 = v69[1];
      if (*(v4 + v98))
      {
        v77 = v96;
        v76 = v97;
        *v96 = 0;
        (*v94)(v77, v95, v76);

        v78 = v101;
        sub_24E5FCA4C(v101);
        sub_24F92A0D8();
        (*v93)(v77, v76);
      }

      else
      {

        v78 = v101;
        sub_24E5FCA4C(v101);
      }

      v79 = v89;
      v101 = v78(v75);
      v80 = swift_allocObject();
      swift_weakInit();
      v81 = swift_allocObject();
      *(v81 + 16) = v80;
      *(v81 + 24) = v79;
      v82 = swift_allocObject();
      swift_weakInit();
      v83 = swift_allocObject();
      *(v83 + 16) = v82;
      *(v83 + 24) = v75;
      v84 = sub_24E74EC40();

      v85 = sub_24F92BEF8();
      AssociatedTypeWitness = v84;
      AssociatedConformanceWitness = MEMORY[0x277D225C0];
      v113[0] = v85;
      sub_24F92A958();
      sub_24E824448(v78);

      v4 = v103;

      __swift_destroy_boxed_opaque_existential_1(v113);

      v69 = v99;
      v64 = v100;
      v68 = v102;
    }
  }

  while (1)
  {
    v74 = v72 + 1;
    if (__OFADD__(v72, 1))
    {
      break;
    }

    if (v74 >= v70)
    {

      goto LABEL_49;
    }

    v73 = v65[v74];
    ++v72;
    if (v73)
    {
      v72 = v74;
      goto LABEL_43;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24F24771C(uint64_t a1, char a2, void *a3)
{
  sub_24F929388();
  _s9JetEngine16LocalPreferencesC12GameStoreKitE03AppfG0ACvgZ_0();
  if (qword_27F2100D8 != -1)
  {
    swift_once();
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224F40);
  __swift_project_value_buffer(v6, qword_27F225388);
  sub_24F928868();

  if (v9 == 2 || (v9 & 1) == 0)
  {
    MEMORY[0x28223BE20](result);
    v8[16] = a2 & 1;
    return sub_24F248658(a1, sub_24F24DB84, v8, a3, &unk_286212898, &unk_286212DE8, &unk_286212E10, sub_24F24DBA0, sub_24F24DB9C);
  }

  return result;
}

uint64_t sub_24F24788C(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, void *a4)
{
  v4 = a4;
  v96 = a3;
  v102 = a2;
  v6 = *a4;
  v95 = sub_24F92A088();
  v7 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v94 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v85 - v10;
  v100 = sub_24F91F4A8();
  v12 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v91 = &v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v99 = (&v85 - v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2326B8);
  v115[3] = v16;
  v115[4] = sub_24E602068(&qword_27F2326C0, &qword_27F2326B8);
  v115[0] = a1;
  if (*(v4 + qword_27F39C790) == 1 || !*(a1 + 16))
  {

    return __swift_destroy_boxed_opaque_existential_1(v115);
  }

  v86 = v7;
  v88 = v6;

  v98 = sub_24E60AABC(MEMORY[0x277D84F90]);
  v114 = v98;
  v17 = __swift_project_boxed_opaque_existential_1(v115, v16);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v85 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20, v18);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v111);
  v23 = -1 << *(*v20 + 32);
  v24 = ~v23;
  v25 = (*v20 + 56);
  v26 = *v25;
  v27 = -v23;
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  else
  {
    v28 = -1;
  }

  *boxed_opaque_existential_1 = *v20;
  boxed_opaque_existential_1[1] = v25;
  boxed_opaque_existential_1[2] = v24;
  boxed_opaque_existential_1[3] = 0;
  boxed_opaque_existential_1[4] = v28 & v26;
  v29 = qword_27F39C780;
  v30 = qword_27F22F1D8;
  swift_beginAccess();
  v97 = v30;
  swift_beginAccess();
  __swift_mutable_project_boxed_opaque_existential_1(v111, AssociatedTypeWitness);
  sub_24F92C4D8();
  v101 = v4;
  if (*(&v109 + 1))
  {
    v98 = (v12 + 48);
    v92 = (v12 + 8);
    v93 = (v12 + 32);
    v89 = (v12 + 16);
    v87 = xmmword_24F93DE60;
    v32 = v99;
    v31 = v100;
    while (1)
    {
      v107 = v110;
      v106[0] = v108;
      v106[1] = v109;
      v33 = *(v4 + v29);
      if (!*(v33 + 16))
      {
        goto LABEL_9;
      }

      v34 = sub_24E76D934(v106);
      if ((v35 & 1) == 0)
      {
        break;
      }

      v36 = *(*(v33 + 56) + 8 * v34);

      sub_24E65864C(v106, v105);
      v102(v36);
      if ((*v98)(v11, 1, v31) != 1)
      {
        (*v93)(v32, v11, v31);
        v37 = *(v97 + v4);
        if (*(v37 + 16))
        {

          v38 = sub_24F92C7B8();
          v39 = -1 << *(v37 + 32);
          v40 = v38 & ~v39;
          if ((*(v37 + 56 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v40))
          {
            v41 = ~v39;
            while (1)
            {
              sub_24E65864C(*(v37 + 48) + 40 * v40, v104);
              v42 = MEMORY[0x253052150](v104, v105);
              sub_24E6585F8(v104);
              if (v42)
              {
                break;
              }

              v40 = (v40 + 1) & v41;
              if (((*(v37 + 56 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v40) & 1) == 0)
              {
                goto LABEL_20;
              }
            }

            v32 = v99;
            v31 = v100;
            (*v92)(v99, v100);
            sub_24E6585F8(v105);
            sub_24E6585F8(v106);
            v4 = v101;
            goto LABEL_10;
          }

LABEL_20:
        }

        v43 = (v36 + OBJC_IVAR____TtC12GameStoreKit5Shelf_batchGroup);
        if (v114[2] && (sub_24E76D644(*v43, v43[1]), (v44 & 1) != 0))
        {
          v45 = *v43;
          v46 = v43[1];

          v47 = sub_24F4D6258(v104, v45, v46);
          if (*v48)
          {
            v49 = v48;
            v90 = v47;
            v50 = v91;
            v32 = v99;
            v31 = v100;
            (*v89)(v91, v99, v100);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v103[0] = *v49;
            *v49 = 0x8000000000000000;
            sub_24E81CBE8(v50, v105, isUniquelyReferenced_nonNull_native);
            *v49 = v103[0];

            v90(v104, 0);

            goto LABEL_26;
          }

          (v47)(v104, 0);

          v31 = v100;
          v4 = v101;
          v32 = v99;
        }

        else
        {
          v52 = v43[1];
          v90 = *v43;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F4B0);
          v53 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213100) - 8);
          v54 = (*(*v53 + 80) + 32) & ~*(*v53 + 80);
          v55 = swift_allocObject();
          *(v55 + 16) = v87;
          v56 = v55 + v54;
          v57 = v53[14];
          sub_24E65864C(v105, v56);
          v58 = (v56 + v57);
          v32 = v99;
          v31 = v100;
          (*v89)(v58, v99, v100);

          v59 = sub_24E60AAD0(v55);
          swift_setDeallocating();
          sub_24E601704(v56, &qword_27F213100);
          swift_deallocClassInstance();
          v60 = v114;
          v61 = swift_isUniquelyReferenced_nonNull_native();
          v104[0] = v60;
          sub_24E81CD60(v59, v90, v52, v61);

          v114 = v104[0];
LABEL_26:
          v4 = v101;
        }

        sub_24E65864C(v105, v103);
        v62 = v97;
        swift_beginAccess();
        sub_24ED7D5A0(v104, v103);
        sub_24E6585F8(v104);
        swift_endAccess();
        sub_24F23404C(*(*(v62 + v4) + 16) != 0);

        (*v92)(v32, v31);
        sub_24E6585F8(v105);
        sub_24E6585F8(v106);
        goto LABEL_10;
      }

      sub_24E6585F8(v105);
      sub_24E6585F8(v106);
      sub_24E601704(v11, &qword_27F228530);
LABEL_10:
      __swift_mutable_project_boxed_opaque_existential_1(v111, AssociatedTypeWitness);
      sub_24F92C4D8();
      if (!*(&v109 + 1))
      {
        v63 = v114;
        goto LABEL_33;
      }
    }

LABEL_9:
    sub_24E6585F8(v106);
    goto LABEL_10;
  }

  v63 = v98;
LABEL_33:
  __swift_destroy_boxed_opaque_existential_1(v111);
  if (!v63[2])
  {
LABEL_49:

    return __swift_destroy_boxed_opaque_existential_1(v115);
  }

  v64 = v63 + 8;
  v65 = 1 << *(v63 + 32);
  v66 = -1;
  if (v65 < 64)
  {
    v66 = ~(-1 << v65);
  }

  v67 = v66 & v63[8];
  v68 = (v4 + qword_27F22F1C0);
  v96 = qword_27F39C7D8;
  v69 = (v65 + 63) >> 6;
  LODWORD(v93) = *MEMORY[0x277D22298];
  v91 = (v86 + 8);
  v92 = (v86 + 104);

  v71 = 0;
  v97 = v68;
  v98 = v63;
  while (v67)
  {
    v72 = v67;
LABEL_43:
    v67 = (v72 - 1) & v72;
    if (*v68)
    {
      v99 = *v68;
      v100 = (v72 - 1) & v72;
      v74 = *(v63[7] + ((v71 << 9) | (8 * __clz(__rbit64(v72)))));
      v102 = v68[1];
      if (*(v4 + v96))
      {
        v76 = v94;
        v75 = v95;
        *v94 = 0;
        (*v92)(v76, v93, v75);

        v77 = v99;
        sub_24E5FCA4C(v99);
        sub_24F92A0D8();
        (*v91)(v76, v75);
      }

      else
      {

        v77 = v99;
        sub_24E5FCA4C(v99);
      }

      v78 = v88;
      v99 = v77(v74);
      v79 = swift_allocObject();
      swift_weakInit();
      v80 = swift_allocObject();
      *(v80 + 16) = v79;
      *(v80 + 24) = v78;
      v81 = swift_allocObject();
      swift_weakInit();
      v82 = swift_allocObject();
      *(v82 + 16) = v81;
      *(v82 + 24) = v74;
      v83 = sub_24E74EC40();

      v84 = sub_24F92BEF8();
      AssociatedTypeWitness = v83;
      AssociatedConformanceWitness = MEMORY[0x277D225C0];
      v111[0] = v84;
      sub_24F92A958();
      sub_24E824448(v77);

      v4 = v101;

      __swift_destroy_boxed_opaque_existential_1(v111);

      v68 = v97;
      v63 = v98;
      v67 = v100;
    }
  }

  while (1)
  {
    v73 = v71 + 1;
    if (__OFADD__(v71, 1))
    {
      break;
    }

    if (v73 >= v69)
    {

      goto LABEL_49;
    }

    v72 = v64[v73];
    ++v71;
    if (v72)
    {
      v71 = v73;
      goto LABEL_43;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24F2484E8(uint64_t a1, char a2, void *a3)
{
  sub_24F929388();
  _s9JetEngine16LocalPreferencesC12GameStoreKitE03AppfG0ACvgZ_0();
  if (qword_27F2100D8 != -1)
  {
    swift_once();
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224F40);
  __swift_project_value_buffer(v6, qword_27F225388);
  sub_24F928868();

  if (v9 == 2 || (v9 & 1) == 0)
  {
    MEMORY[0x28223BE20](result);
    v8[16] = a2 & 1;
    return sub_24F248658(a1, sub_24F24DB84, v8, a3, &unk_286212BE0, &unk_286212C30, &unk_286212C58, sub_24F24D80C, sub_24F24DB9C);
  }

  return result;
}

uint64_t sub_24F248658(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v109 = a6;
  v110 = a7;
  v10 = a4;
  v116 = a2;
  v117 = a3;
  v107 = *a4;
  v108 = a5;
  v106 = sub_24F92A088();
  v104 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v105 = &v96 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v96 - v14;
  v115 = sub_24F91F4A8();
  v16 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v18 = &v96 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v114 = &v96 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F4B8);
  v130[3] = v21;
  v130[4] = sub_24E602068(&qword_27F22F4C0, &qword_27F22F4B8);
  v130[0] = a1;
  if (*(v10 + qword_27F39C790) == 1 || !*(a1 + 16))
  {

    return __swift_destroy_boxed_opaque_existential_1(v130);
  }

  v99 = a8;

  v113 = sub_24E60AABC(MEMORY[0x277D84F90]);
  v129 = v113;
  v22 = __swift_project_boxed_opaque_existential_1(v130, v21);
  v23 = MEMORY[0x28223BE20](v22);
  v25 = &v96 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v26 + 16))(v25, v23);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v126);
  v28 = -1 << *(*v25 + 32);
  v29 = ~v28;
  v30 = (*v25 + 64);
  v31 = *v30;
  v32 = -v28;
  if (v32 < 64)
  {
    v33 = ~(-1 << v32);
  }

  else
  {
    v33 = -1;
  }

  *boxed_opaque_existential_1 = *v25;
  boxed_opaque_existential_1[1] = v30;
  boxed_opaque_existential_1[2] = v29;
  boxed_opaque_existential_1[3] = 0;
  boxed_opaque_existential_1[4] = v33 & v31;
  v34 = qword_27F39C780;
  v35 = qword_27F22F1D8;
  swift_beginAccess();
  v112 = v35;
  swift_beginAccess();
  __swift_mutable_project_boxed_opaque_existential_1(v126, AssociatedTypeWitness);
  sub_24F92C4D8();
  v111 = v10;
  if (*(&v124 + 1))
  {
    v97 = v18;
    v113 = (v16 + 48);
    v102 = (v16 + 8);
    v103 = (v16 + 32);
    v100 = (v16 + 16);
    v98 = xmmword_24F93DE60;
    v36 = v114;
    v37 = v115;
    while (1)
    {
      v122 = v125;
      v121[0] = v123;
      v121[1] = v124;
      v38 = *(v10 + v34);
      if (*(v38 + 16))
      {

        v39 = sub_24E76D934(v121);
        if (v40)
        {
          v41 = *(*(v38 + 56) + 8 * v39);

          sub_24E65864C(v121, v120);
          v116(v41);
          if ((*v113)(v15, 1, v37) == 1)
          {

            sub_24E6585F8(v120);
            sub_24E6585F8(v121);
            sub_24E601704(v15, &qword_27F228530);
            goto LABEL_10;
          }

          (*v103)(v36, v15, v37);
          v42 = *(v10 + v112);
          if (!*(v42 + 16))
          {
            goto LABEL_21;
          }

          v43 = sub_24F92C7B8();
          v44 = -1 << *(v42 + 32);
          v45 = v43 & ~v44;
          if (((*(v42 + 56 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45) & 1) == 0)
          {
LABEL_20:

LABEL_21:
            v48 = (v41 + OBJC_IVAR____TtC12GameStoreKit5Shelf_batchGroup);
            if (v129[2] && (sub_24E76D644(*v48, v48[1]), (v49 & 1) != 0))
            {
              v51 = *v48;
              v50 = v48[1];

              v52 = sub_24F4D6258(v119, v51, v50);
              if (*v53)
              {
                v54 = v53;
                v96 = v52;
                v55 = *v100;
                v56 = v97;
                v101 = v50;
                v57 = v114;
                v37 = v115;
                v55(v97, v114, v115);
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v118[0] = *v54;
                *v54 = 0x8000000000000000;
                sub_24E81CBE8(v56, v120, isUniquelyReferenced_nonNull_native);
                *v54 = v118[0];

                (v96)(v119, 0);
              }

              else
              {
                (v52)(v119, 0);

                v57 = v114;
                v37 = v115;
              }
            }

            else
            {
              v59 = *v48;
              v60 = v48[1];
              v101 = v59;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F4B0);
              v61 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213100) - 8);
              v62 = (*(*v61 + 80) + 32) & ~*(*v61 + 80);
              v63 = swift_allocObject();
              *(v63 + 16) = v98;
              v64 = v63 + v62;
              v65 = v61[14];
              sub_24E65864C(v120, v63 + v62);
              v57 = v114;
              v37 = v115;
              (*v100)(v64 + v65, v114, v115);

              v66 = sub_24E60AAD0(v63);
              swift_setDeallocating();
              v67 = v64;
              v10 = v111;
              sub_24E601704(v67, &qword_27F213100);
              swift_deallocClassInstance();
              v68 = v129;
              v69 = swift_isUniquelyReferenced_nonNull_native();
              v119[0] = v68;
              sub_24E81CD60(v66, v101, v60, v69);

              v129 = v119[0];
            }

            sub_24E65864C(v120, v118);
            v70 = v112;
            swift_beginAccess();
            sub_24ED7D5A0(v119, v118);
            sub_24E6585F8(v119);
            swift_endAccess();
            sub_24F23404C(*(*(v10 + v70) + 16) != 0);

            (*v102)(v57, v37);
            sub_24E6585F8(v120);
            sub_24E6585F8(v121);
            v36 = v57;
            goto LABEL_10;
          }

          v46 = ~v44;
          while (1)
          {
            sub_24E65864C(*(v42 + 48) + 40 * v45, v119);
            v47 = MEMORY[0x253052150](v119, v120);
            sub_24E6585F8(v119);
            if (v47)
            {
              break;
            }

            v45 = (v45 + 1) & v46;
            if (((*(v42 + 56 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45) & 1) == 0)
            {
              goto LABEL_20;
            }
          }

          v36 = v114;
          v37 = v115;
          (*v102)(v114, v115);
          sub_24E6585F8(v120);
        }

        else
        {
        }
      }

      sub_24E6585F8(v121);
LABEL_10:
      __swift_mutable_project_boxed_opaque_existential_1(v126, AssociatedTypeWitness);
      sub_24F92C4D8();
      if (!*(&v124 + 1))
      {
        v71 = v129;
        goto LABEL_32;
      }
    }
  }

  v71 = v113;
LABEL_32:
  __swift_destroy_boxed_opaque_existential_1(v126);
  if (!v71[2])
  {
LABEL_48:

    return __swift_destroy_boxed_opaque_existential_1(v130);
  }

  v112 = a9;
  v72 = v71 + 8;
  v73 = 1 << *(v71 + 32);
  v74 = -1;
  if (v73 < 64)
  {
    v74 = ~(-1 << v73);
  }

  v75 = v74 & v71[8];
  v76 = (v10 + qword_27F22F1C0);
  v102 = qword_27F39C7D8;
  v77 = (v73 + 63) >> 6;
  LODWORD(v101) = *MEMORY[0x277D22298];
  v100 = (v104 + 13);
  ++v104;

  v79 = 0;
  v113 = v71;
  v103 = v76;
  while (v75)
  {
    v80 = v75;
LABEL_42:
    v75 = (v80 - 1) & v80;
    if (*v76)
    {
      v82 = *v76;
      v83 = *(v71[7] + ((v79 << 9) | (8 * __clz(__rbit64(v80)))));
      v116 = v75;
      v117 = v83;
      v84 = v76[1];
      if (*(v102 + v111))
      {
        v86 = v105;
        v85 = v106;
        *v105 = 0;
        (*v100)(v86, v101, v85);

        v87 = v82;
        sub_24E5FCA4C(v82);
        sub_24F92A0D8();
        (*v104)(v86, v85);
      }

      else
      {

        v87 = v82;
        sub_24E5FCA4C(v82);
      }

      v88 = v117;
      v115 = v84;
      v114 = v87(v117);
      v89 = swift_allocObject();
      swift_weakInit();
      v90 = swift_allocObject();
      v91 = v107;
      *(v90 + 16) = v89;
      *(v90 + 24) = v91;
      v92 = swift_allocObject();
      swift_weakInit();
      v93 = swift_allocObject();
      *(v93 + 16) = v92;
      *(v93 + 24) = v88;
      v94 = sub_24E74EC40();

      v95 = sub_24F92BEF8();
      AssociatedTypeWitness = v94;
      AssociatedConformanceWitness = MEMORY[0x277D225C0];
      v126[0] = v95;
      sub_24F92A958();
      sub_24E824448(v87);

      __swift_destroy_boxed_opaque_existential_1(v126);

      v71 = v113;
      v76 = v103;
      v75 = v116;
    }
  }

  while (1)
  {
    v81 = v79 + 1;
    if (__OFADD__(v79, 1))
    {
      break;
    }

    if (v81 >= v77)
    {

      goto LABEL_48;
    }

    v80 = v72[v81];
    ++v79;
    if (v80)
    {
      v79 = v81;
      goto LABEL_42;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24F249298(uint64_t a1, char a2, void *a3)
{
  sub_24F929388();
  _s9JetEngine16LocalPreferencesC12GameStoreKitE03AppfG0ACvgZ_0();
  if (qword_27F2100D8 != -1)
  {
    swift_once();
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224F40);
  __swift_project_value_buffer(v6, qword_27F225388);
  sub_24F928868();

  if (v9 == 2 || (v9 & 1) == 0)
  {
    MEMORY[0x28223BE20](result);
    v8[16] = a2 & 1;
    return sub_24F248658(a1, sub_24F24DB84, v8, a3, &unk_286212AA0, &unk_286212AF0, &unk_286212B18, sub_24F24D698, sub_24F24DB9C);
  }

  return result;
}

uint64_t sub_24F249408(uint64_t a1, char a2, void *a3)
{
  sub_24F929388();
  _s9JetEngine16LocalPreferencesC12GameStoreKitE03AppfG0ACvgZ_0();
  if (qword_27F2100D8 != -1)
  {
    swift_once();
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224F40);
  __swift_project_value_buffer(v6, qword_27F225388);
  sub_24F928868();

  if (v9 == 2 || (v9 & 1) == 0)
  {
    MEMORY[0x28223BE20](result);
    v8[16] = a2 & 1;
    return sub_24F248658(a1, sub_24F24DB84, v8, a3, &unk_286212A00, &unk_286212A50, &unk_286212A78, sub_24F24D5C4, sub_24F24D620);
  }

  return result;
}

uint64_t sub_24F2495D8(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v103 = a6;
  v104 = a7;
  v10 = a4;
  v110 = a2;
  v111 = a3;
  v101 = *a4;
  v102 = a5;
  v100 = sub_24F92A088();
  v98 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v99 = &v90 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v90 - v14;
  v109 = sub_24F91F4A8();
  v16 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v18 = &v90 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v108 = &v90 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2214E0);
  v124[3] = v21;
  v124[4] = sub_24E602068(&qword_27F2214E8, &qword_27F2214E0);
  v124[0] = a1;
  if (*(v10 + qword_27F39C790) == 1 || !*(a1 + 16))
  {

    return __swift_destroy_boxed_opaque_existential_1(v124);
  }

  v93 = a8;

  v107 = sub_24E60AABC(MEMORY[0x277D84F90]);
  v123 = v107;
  v22 = __swift_project_boxed_opaque_existential_1(v124, v21);
  v23 = MEMORY[0x28223BE20](v22);
  v25 = (&v90 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v26 + 16))(v25, v23);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v120);
  *boxed_opaque_existential_1 = *v25;
  boxed_opaque_existential_1[1] = 0;
  v28 = qword_27F39C780;
  v29 = qword_27F22F1D8;
  swift_beginAccess();
  v106 = v29;
  swift_beginAccess();
  __swift_mutable_project_boxed_opaque_existential_1(v120, AssociatedTypeWitness);
  sub_24F92C4D8();
  v105 = v10;
  if (*(&v118 + 1))
  {
    v91 = v18;
    v107 = (v16 + 48);
    v96 = (v16 + 8);
    v97 = (v16 + 32);
    v94 = (v16 + 16);
    v92 = xmmword_24F93DE60;
    v30 = v108;
    v31 = v109;
    while (1)
    {
      v116 = v119;
      v115[0] = v117;
      v115[1] = v118;
      v32 = *(v10 + v28);
      if (*(v32 + 16))
      {

        v33 = sub_24E76D934(v115);
        if (v34)
        {
          v35 = *(*(v32 + 56) + 8 * v33);

          sub_24E65864C(v115, v114);
          v110(v35);
          if ((*v107)(v15, 1, v31) == 1)
          {

            sub_24E6585F8(v114);
            sub_24E6585F8(v115);
            sub_24E601704(v15, &qword_27F228530);
            goto LABEL_7;
          }

          (*v97)(v30, v15, v31);
          v36 = *(v10 + v106);
          if (!*(v36 + 16))
          {
            goto LABEL_18;
          }

          v37 = sub_24F92C7B8();
          v38 = -1 << *(v36 + 32);
          v39 = v37 & ~v38;
          if (((*(v36 + 56 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39) & 1) == 0)
          {
LABEL_17:

LABEL_18:
            v42 = (v35 + OBJC_IVAR____TtC12GameStoreKit5Shelf_batchGroup);
            if (v123[2] && (sub_24E76D644(*v42, v42[1]), (v43 & 1) != 0))
            {
              v45 = *v42;
              v44 = v42[1];

              v46 = sub_24F4D6258(v113, v45, v44);
              if (*v47)
              {
                v48 = v47;
                v90 = v46;
                v49 = *v94;
                v50 = v91;
                v95 = v44;
                v51 = v108;
                v31 = v109;
                v49(v91, v108, v109);
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v112[0] = *v48;
                *v48 = 0x8000000000000000;
                sub_24E81CBE8(v50, v114, isUniquelyReferenced_nonNull_native);
                *v48 = v112[0];

                (v90)(v113, 0);
              }

              else
              {
                (v46)(v113, 0);

                v51 = v108;
                v31 = v109;
              }
            }

            else
            {
              v53 = *v42;
              v54 = v42[1];
              v95 = v53;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F4B0);
              v55 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213100) - 8);
              v56 = (*(*v55 + 80) + 32) & ~*(*v55 + 80);
              v57 = swift_allocObject();
              *(v57 + 16) = v92;
              v58 = v57 + v56;
              v59 = v55[14];
              sub_24E65864C(v114, v57 + v56);
              v51 = v108;
              v31 = v109;
              (*v94)(v58 + v59, v108, v109);

              v60 = sub_24E60AAD0(v57);
              swift_setDeallocating();
              v61 = v58;
              v10 = v105;
              sub_24E601704(v61, &qword_27F213100);
              swift_deallocClassInstance();
              v62 = v123;
              v63 = swift_isUniquelyReferenced_nonNull_native();
              v113[0] = v62;
              sub_24E81CD60(v60, v95, v54, v63);

              v123 = v113[0];
            }

            sub_24E65864C(v114, v112);
            v64 = v106;
            swift_beginAccess();
            sub_24ED7D5A0(v113, v112);
            sub_24E6585F8(v113);
            swift_endAccess();
            sub_24F23404C(*(*(v10 + v64) + 16) != 0);

            (*v96)(v51, v31);
            sub_24E6585F8(v114);
            sub_24E6585F8(v115);
            v30 = v51;
            goto LABEL_7;
          }

          v40 = ~v38;
          while (1)
          {
            sub_24E65864C(*(v36 + 48) + 40 * v39, v113);
            v41 = MEMORY[0x253052150](v113, v114);
            sub_24E6585F8(v113);
            if (v41)
            {
              break;
            }

            v39 = (v39 + 1) & v40;
            if (((*(v36 + 56 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39) & 1) == 0)
            {
              goto LABEL_17;
            }
          }

          v30 = v108;
          v31 = v109;
          (*v96)(v108, v109);
          sub_24E6585F8(v114);
        }

        else
        {
        }
      }

      sub_24E6585F8(v115);
LABEL_7:
      __swift_mutable_project_boxed_opaque_existential_1(v120, AssociatedTypeWitness);
      sub_24F92C4D8();
      if (!*(&v118 + 1))
      {
        v65 = v123;
        goto LABEL_29;
      }
    }
  }

  v65 = v107;
LABEL_29:
  __swift_destroy_boxed_opaque_existential_1(v120);
  if (!v65[2])
  {
LABEL_45:

    return __swift_destroy_boxed_opaque_existential_1(v124);
  }

  v106 = a9;
  v66 = v65 + 8;
  v67 = 1 << *(v65 + 32);
  v68 = -1;
  if (v67 < 64)
  {
    v68 = ~(-1 << v67);
  }

  v69 = v68 & v65[8];
  v70 = (v10 + qword_27F22F1C0);
  v96 = qword_27F39C7D8;
  v71 = (v67 + 63) >> 6;
  LODWORD(v95) = *MEMORY[0x277D22298];
  v94 = (v98 + 13);
  ++v98;

  v73 = 0;
  v107 = v65;
  v97 = v70;
  while (v69)
  {
    v74 = v69;
LABEL_39:
    v69 = (v74 - 1) & v74;
    if (*v70)
    {
      v76 = *v70;
      v77 = *(v65[7] + ((v73 << 9) | (8 * __clz(__rbit64(v74)))));
      v110 = v69;
      v111 = v77;
      v78 = v70[1];
      if (*(v96 + v105))
      {
        v80 = v99;
        v79 = v100;
        *v99 = 0;
        (*v94)(v80, v95, v79);

        v81 = v76;
        sub_24E5FCA4C(v76);
        sub_24F92A0D8();
        (*v98)(v80, v79);
      }

      else
      {

        v81 = v76;
        sub_24E5FCA4C(v76);
      }

      v82 = v111;
      v109 = v78;
      v108 = v81(v111);
      v83 = swift_allocObject();
      swift_weakInit();
      v84 = swift_allocObject();
      v85 = v101;
      *(v84 + 16) = v83;
      *(v84 + 24) = v85;
      v86 = swift_allocObject();
      swift_weakInit();
      v87 = swift_allocObject();
      *(v87 + 16) = v86;
      *(v87 + 24) = v82;
      v88 = sub_24E74EC40();

      v89 = sub_24F92BEF8();
      AssociatedTypeWitness = v88;
      AssociatedConformanceWitness = MEMORY[0x277D225C0];
      v120[0] = v89;
      sub_24F92A958();
      sub_24E824448(v81);

      __swift_destroy_boxed_opaque_existential_1(v120);

      v65 = v107;
      v70 = v97;
      v69 = v110;
    }
  }

  while (1)
  {
    v75 = v73 + 1;
    if (__OFADD__(v73, 1))
    {
      break;
    }

    if (v75 >= v71)
    {

      goto LABEL_45;
    }

    v74 = v66[v75];
    ++v73;
    if (v74)
    {
      v73 = v75;
      goto LABEL_39;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24F24A1E4(uint64_t a1, char a2, void *a3)
{
  sub_24F929388();
  _s9JetEngine16LocalPreferencesC12GameStoreKitE03AppfG0ACvgZ_0();
  if (qword_27F2100D8 != -1)
  {
    swift_once();
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224F40);
  __swift_project_value_buffer(v6, qword_27F225388);
  sub_24F928868();

  if (v9 == 2 || (v9 & 1) == 0)
  {
    MEMORY[0x28223BE20](result);
    v8[16] = a2 & 1;
    return sub_24F248658(a1, sub_24F24DB84, v8, a3, &unk_286212C80, &unk_286212CD0, &unk_286212CF8, sub_24F24D8A8, sub_24F24DB9C);
  }

  return result;
}

uint64_t sub_24F24A354(uint64_t a1, char a2, void *a3)
{
  sub_24F929388();
  _s9JetEngine16LocalPreferencesC12GameStoreKitE03AppfG0ACvgZ_0();
  if (qword_27F2100D8 != -1)
  {
    swift_once();
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224F40);
  __swift_project_value_buffer(v6, qword_27F225388);
  sub_24F928868();

  if (v9 == 2 || (v9 & 1) == 0)
  {
    MEMORY[0x28223BE20](result);
    v8[16] = a2 & 1;
    return sub_24F248658(a1, sub_24F24DB84, v8, a3, &unk_286212B40, &unk_286212B90, &unk_286212BB8, sub_24F24D750, sub_24F24DB9C);
  }

  return result;
}

uint64_t sub_24F24A4C4(uint64_t a1, char a2, void *a3)
{
  sub_24F929388();
  _s9JetEngine16LocalPreferencesC12GameStoreKitE03AppfG0ACvgZ_0();
  if (qword_27F2100D8 != -1)
  {
    swift_once();
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224F40);
  __swift_project_value_buffer(v6, qword_27F225388);
  sub_24F928868();

  if (v9 == 2 || (v9 & 1) == 0)
  {
    MEMORY[0x28223BE20](result);
    v8[16] = a2 & 1;
    return sub_24F248658(a1, sub_24F24DB84, v8, a3, &unk_286212960, &unk_2862129B0, &unk_2862129D8, sub_24F24D510, sub_24F24DB9C);
  }

  return result;
}

uint64_t sub_24F24A634(uint64_t a1, char a2, void *a3)
{
  sub_24F929388();
  _s9JetEngine16LocalPreferencesC12GameStoreKitE03AppfG0ACvgZ_0();
  if (qword_27F2100D8 != -1)
  {
    swift_once();
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224F40);
  __swift_project_value_buffer(v6, qword_27F225388);
  sub_24F928868();

  if (v9 == 2 || (v9 & 1) == 0)
  {
    MEMORY[0x28223BE20](result);
    v8[16] = a2 & 1;
    return sub_24F248658(a1, sub_24F24DB84, v8, a3, &unk_2862126E0, &unk_286212730, &unk_286212758, sub_24F24D34C, sub_24F24DB9C);
  }

  return result;
}

uint64_t sub_24F24A7A4(uint64_t a1, char a2, void *a3)
{
  sub_24F929388();
  _s9JetEngine16LocalPreferencesC12GameStoreKitE03AppfG0ACvgZ_0();
  if (qword_27F2100D8 != -1)
  {
    swift_once();
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224F40);
  __swift_project_value_buffer(v6, qword_27F225388);
  sub_24F928868();

  if (v9 == 2 || (v9 & 1) == 0)
  {
    MEMORY[0x28223BE20](result);
    v8[16] = a2 & 1;
    return sub_24F248658(a1, sub_24ED962B0, v8, a3, &unk_286212618, &unk_286212668, &unk_286212690, sub_24F24D2F4, sub_24F24D300);
  }

  return result;
}

void sub_24F24A914(unint64_t a1, void *a2, uint64_t a3)
{
  v33 = a3;
  v32 = sub_24F928818();
  v5 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v30 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v7);
  v31 = &v23 - v9;
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_24F92C738())
  {
    v11 = 0;
    v28 = a1 & 0xFFFFFFFFFFFFFF8;
    v29 = a1 & 0xC000000000000001;
    v24 = (v5 + 8);
    v25 = qword_27F39C7C8;
    v26 = i;
    v27 = a1;
    v12 = v30;
    while (v29)
    {
      MEMORY[0x253052270](v11, a1, v8);
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_11;
      }

LABEL_7:
      v15 = a2[3];
      v14 = a2[4];
      __swift_project_boxed_opaque_existential_1(a2, v15);
      (*(v14 + 8))(v15, v14);
      v16 = v31;
      sub_24F0F22FC(v12, v31);
      (*v24)(v12, v32);
      v17 = a2[3];
      v18 = a2[4];
      __swift_mutable_project_boxed_opaque_existential_1(a2, v17);
      v19 = *(v18 + 16);
      v20 = v17;
      v21 = v18;
      v22 = v26;
      a1 = v27;
      v19(v16, v20, v21);
      v5 = *(v33 + v25);
      sub_24F92AD88();

      ++v11;
      if (v13 == v22)
      {
        return;
      }
    }

    if (v11 >= *(v28 + 16))
    {
      goto LABEL_12;
    }

    v13 = v11 + 1;
    if (!__OFADD__(v11, 1))
    {
      goto LABEL_7;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }
}

uint64_t sub_24F24AB78(char *a1)
{
  v2 = sub_24F92A078();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    v43 = v2;
    *(result + qword_27F39C790) = 0;
    v8 = *(result + qword_27F22F1B8);
    v42 = v3;
    v45 = a1;

    if (v8)
    {
      a1 = v8(a1);
      sub_24E824448(v8);
    }

    v9 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfMapping;
    swift_beginAccess();

    v11 = sub_24F23A2A4(v10);

    *&a1[v9] = v11;

    *(v7 + qword_27F22F198) = a1;
    swift_retain_n();

    v12 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfOrdering;
    swift_beginAccess();
    v13 = qword_27F22F1A0;
    *(v7 + qword_27F22F1A0) = *&a1[v12];

    v14 = *&a1[v9];
    v15 = qword_27F39C780;
    swift_beginAccess();
    *(v7 + v15) = v14;

    sub_24E60169C(&a1[OBJC_IVAR____TtC12GameStoreKit11GenericPage_nextPage], &v47, &qword_27F2129B0);
    v50 = 0;
    v51 = 0;
    v16 = qword_27F39C788;
    swift_beginAccess();
    sub_24EBD46D4(&v47, v7 + v16);
    swift_endAccess();
    sub_24E9B7D88(v7 + v16, v46);
    sub_24F92AD88();
    sub_24E94E128(v46);
    sub_24E94E128(&v47);
    v44 = *(v7 + qword_27F39C7A0);
    v17 = *(v7 + v13);
    v18 = MEMORY[0x277D84F90];
    v46[0] = MEMORY[0x277D84F90];
    v19 = *(v17 + 16);

    if (v19)
    {
      v20 = 0;
      v21 = v17 + 32;
      v38 = v19 - 1;
      v39 = v17 + 32;
      v40 = a1;
      v41 = v5;
      while (1)
      {
        v22 = v21 + 40 * v20;
        v23 = v20;
        while (1)
        {
          if (v23 >= *(v17 + 16))
          {
            __break(1u);
            return result;
          }

          sub_24E65864C(v22, &v47);
          if (*(*(v7 + v15) + 16))
          {
            break;
          }

LABEL_7:
          ++v23;
          result = sub_24E6585F8(&v47);
          v22 += 40;
          if (v19 == v23)
          {
            a1 = v40;
            v5 = v41;
            goto LABEL_18;
          }
        }

        sub_24E76D934(&v47);
        if ((v24 & 1) == 0)
        {
          break;
        }

        v25 = sub_24E6585F8(&v47);
        MEMORY[0x253050F00](v25);
        if (*((v46[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_24F92B5E8();
        }

        v20 = v23 + 1;
        result = sub_24F92B638();
        v18 = v46[0];
        v21 = v39;
        v26 = v38 == v23;
        a1 = v40;
        v5 = v41;
        if (v26)
        {
          goto LABEL_18;
        }
      }

      goto LABEL_7;
    }

LABEL_18:

    v47 = a1;
    v48 = v18;
    v49 = 0;
    sub_24F92AD88();
    sub_24F24D968(v47, v48, v49);
    swift_beginAccess();

    sub_24F24697C(v27, 0, v7);

    v28 = *(v7 + qword_27F22F1F0);
    if (v28)
    {
      v29 = *(v28 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasRequests);
      swift_beginAccess();
      v30 = *(v29 + 48);
      if (v30 <= 0)
      {
        goto LABEL_23;
      }

      v31 = v30 - 1;
      *(v29 + 48) = v31;
      v32 = v31 == 0;
      swift_beginAccess();
      *(v29 + 40) = v32;
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        sub_24EA6BFA0();
      }

      if (!*(v29 + 48))
      {
LABEL_23:
        PendingPageRender.tryToEstablishUserReadyTime()();
      }
    }

    if (*(v7 + qword_27F39C7D8))
    {
      v33 = OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics;
      swift_beginAccess();
      v34 = sub_24F928818();
      (*(*(v34 - 8) + 16))(v5, &a1[v33], v34);
      v36 = v42;
      v35 = v43;
      (*(v42 + 104))(v5, *MEMORY[0x277D22290], v43);
      sub_24F92A0C8();

      (*(v36 + 8))(v5, v35);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_24F24B184(char *a1, uint64_t a2, void (*a3)(uint64_t (*)(void), uint64_t), uint64_t (*a4)(void), void (*a5)(void))
{
  v9 = sub_24F92A078();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v14 = result;
  v47 = v12;
  v48 = v10;
  v49 = v9;
  *(result + qword_27F39C790) = 0;
  v15 = *(result + qword_27F22F1B8);
  v53 = a5;
  if (v15)
  {
    v16 = *(result + qword_27F22F1B8 + 8);

    v17 = v15(a1);
    a3(v15, v16);
  }

  else
  {

    v17 = a1;
  }

  v52 = a1;
  v18 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfMapping;
  swift_beginAccess();

  v20 = sub_24F23A2A4(v19);

  *&v17[v18] = v20;

  *(v14 + qword_27F22F198) = v17;
  swift_retain_n();

  v21 = off_28620C6F8[0];
  v22 = a4(0);
  v23 = v21();
  v24 = qword_27F22F1A0;
  *(v14 + qword_27F22F1A0) = v23;

  v51 = v22;
  v50 = off_28620C700[0];
  v25 = off_28620C700[0]();
  v26 = qword_27F39C780;
  swift_beginAccess();
  *(v14 + v26) = v25;

  sub_24E60169C(&v17[OBJC_IVAR____TtC12GameStoreKit11GenericPage_nextPage], &v55, &qword_27F2129B0);
  v58 = 0;
  v59 = 0;
  v27 = qword_27F39C788;
  swift_beginAccess();
  sub_24EBD46D4(&v55, v14 + v27);
  swift_endAccess();
  sub_24E9B7D88(v14 + v27, v54);
  sub_24F92AD88();
  sub_24E94E128(v54);
  sub_24E94E128(&v55);
  v28 = *(v14 + qword_27F39C7A0);
  v29 = *(v14 + v24);
  v30 = MEMORY[0x277D84F90];
  v54[0] = MEMORY[0x277D84F90];
  v31 = *(v29 + 16);

  if (!v31)
  {
    goto LABEL_16;
  }

  v32 = 0;
  v33 = v29 + 32;
  v44 = v31 - 1;
  v46 = v28;
  v45 = v29 + 32;
  do
  {
    v34 = v33 + 40 * v32;
    v35 = v32;
    while (1)
    {
      if (v35 >= *(v29 + 16))
      {
        __break(1u);
        return result;
      }

      sub_24E65864C(v34, &v55);
      if (*(*(v14 + v26) + 16))
      {
        break;
      }

LABEL_8:
      ++v35;
      result = sub_24E6585F8(&v55);
      v34 += 40;
      if (v31 == v35)
      {
        goto LABEL_16;
      }
    }

    sub_24E76D934(&v55);
    if ((v36 & 1) == 0)
    {

      goto LABEL_8;
    }

    v37 = sub_24E6585F8(&v55);
    MEMORY[0x253050F00](v37);
    if (*((v54[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v54[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_24F92B5E8();
    }

    v32 = v35 + 1;
    result = sub_24F92B638();
    v30 = v54[0];
    v33 = v45;
  }

  while (v44 != v35);
LABEL_16:

  v55 = v17;
  v56 = v30;
  v57 = 0;
  sub_24F92AD88();
  sub_24F24D968(v55, v56, v57);
  (v50)(v51);
  v53();

  if (*(v14 + qword_27F22F1F0))
  {

    sub_24ED6F318();
  }

  if (*(v14 + qword_27F39C7D8))
  {
    v38 = OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics;
    swift_beginAccess();
    v39 = sub_24F928818();
    v40 = v47;
    (*(*(v39 - 8) + 16))(v47, &v17[v38], v39);
    v41 = v48;
    v42 = v49;
    (*(v48 + 104))(v40, *MEMORY[0x277D22290], v49);
    sub_24F92A0C8();

    (*(v41 + 8))(v40, v42);
  }

  else
  {
  }
}

uint64_t sub_24F24B7AC(char *a1, uint64_t a2, void (*a3)(uint64_t (*)(void), uint64_t), uint64_t *a4, uint64_t *a5, void *a6, void (*a7)(uint64_t, void, uint64_t))
{
  v51 = a4;
  v52 = a1;
  v11 = sub_24F92A078();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v16 = result;
  v46 = v14;
  v47 = v12;
  *(result + qword_27F39C790) = 0;
  v17 = *(result + qword_27F22F1B8);
  v48 = v11;
  if (v17)
  {
    v18 = *(result + qword_27F22F1B8 + 8);

    v19 = v17(v52);
    a3(v17, v18);
  }

  else
  {
    v19 = v52;
  }

  v49 = a7;
  v20 = *v51;
  swift_beginAccess();

  v22 = sub_24F23A2A4(v21);

  *&v19[v20] = v22;

  *(v16 + qword_27F22F198) = v19;
  swift_retain_n();

  v23 = *a5;
  swift_beginAccess();
  v24 = qword_27F22F1A0;
  *(v16 + qword_27F22F1A0) = *&v19[v23];

  v25 = *&v19[v20];
  v26 = qword_27F39C780;
  swift_beginAccess();
  *(v16 + v26) = v25;

  sub_24E60169C(&v19[*a6], &v54, &qword_27F2129B0);
  v57 = 0;
  v58 = 0;
  v27 = qword_27F39C788;
  swift_beginAccess();
  sub_24EBD46D4(&v54, v16 + v27);
  swift_endAccess();
  sub_24E9B7D88(v16 + v27, v53);
  sub_24F92AD88();
  sub_24E94E128(v53);
  sub_24E94E128(&v54);
  v50 = *(v16 + qword_27F39C7A0);
  v28 = *(v16 + v24);
  v29 = MEMORY[0x277D84F90];
  v53[0] = MEMORY[0x277D84F90];
  v30 = *(v28 + 16);

  if (!v30)
  {
    goto LABEL_16;
  }

  v31 = 0;
  v32 = v28 + 32;
  v44 = v30 - 1;
  v45 = v28 + 32;
  do
  {
    v33 = v32 + 40 * v31;
    v34 = v31;
    while (1)
    {
      if (v34 >= *(v28 + 16))
      {
        __break(1u);
        return result;
      }

      sub_24E65864C(v33, &v54);
      if (*(*(v16 + v26) + 16))
      {
        break;
      }

LABEL_8:
      ++v34;
      result = sub_24E6585F8(&v54);
      v33 += 40;
      if (v30 == v34)
      {
        goto LABEL_16;
      }
    }

    sub_24E76D934(&v54);
    if ((v35 & 1) == 0)
    {

      goto LABEL_8;
    }

    v36 = sub_24E6585F8(&v54);
    MEMORY[0x253050F00](v36);
    if (*((v53[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v53[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_24F92B5E8();
    }

    v31 = v34 + 1;
    result = sub_24F92B638();
    v29 = v53[0];
    v32 = v45;
  }

  while (v44 != v34);
LABEL_16:

  v54 = v19;
  v55 = v29;
  v56 = 0;
  sub_24F92AD88();
  sub_24F24D968(v54, v55, v56);
  swift_beginAccess();

  v49(v37, 0, v16);

  if (*(v16 + qword_27F22F1F0))
  {

    sub_24ED6F318();
  }

  if (*(v16 + qword_27F39C7D8))
  {
    v38 = OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics;
    swift_beginAccess();
    v39 = sub_24F928818();
    v40 = v46;
    (*(*(v39 - 8) + 16))(v46, &v19[v38], v39);
    v41 = v47;
    v42 = v48;
    (*(v47 + 104))(v40, *MEMORY[0x277D22290], v48);
    sub_24F92A0C8();

    (*(v41 + 8))(v40, v42);
  }

  else
  {
  }
}

uint64_t sub_24F24BDA4(char *a1)
{
  v2 = sub_24F92A078();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v7 = result;
  v47 = v5;
  v48 = v3;
  v49 = v2;
  *(result + qword_27F39C790) = 0;
  v8 = *(result + qword_27F22F1B8);
  v52 = a1;

  if (v8)
  {
    a1 = v8(a1);
    sub_24E824448(v8);
  }

  v9 = qword_27F39DC30;
  swift_beginAccess();

  v11 = sub_24F23A2A4(v10);

  *&a1[v9] = v11;

  *(v7 + qword_27F22F198) = a1;
  swift_retain_n();

  v12 = sub_24F24DA18(&qword_27F23CC60, type metadata accessor for SearchChartsAndCategoriesPage);
  v13 = *(v12 + 56);
  v14 = type metadata accessor for SearchChartsAndCategoriesPage();
  v15 = v13(v14, v12);
  v16 = &a1[*(*a1 + 184)];
  swift_beginAccess();
  v17 = MEMORY[0x277D84F90];
  if (*(v15 + 16))
  {
    v20 = v16;
    v18 = *v16;
    v19 = *(v20 + 1);

    v21 = sub_24E7728F0(v18, v19);
    v23 = v22;

    if (v23)
    {
      v24 = *(*(v15 + 56) + 8 * v21);
    }

    else
    {
      v24 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v24 = MEMORY[0x277D84F90];
  }

  v25 = qword_27F22F1A0;
  *(v7 + qword_27F22F1A0) = v24;

  v51 = v14;
  v50 = off_28620E0A8[0];
  v26 = off_28620E0A8[0]();
  v27 = qword_27F39C780;
  swift_beginAccess();
  *(v7 + v27) = v26;

  sub_24E60169C(&a1[*(*a1 + 192)], &v55, &qword_27F2129B0);
  v58 = 0;
  v59 = 0;
  v28 = qword_27F39C788;
  swift_beginAccess();
  sub_24EBD46D4(&v55, v7 + v28);
  swift_endAccess();
  sub_24E9B7D88(v7 + v28, v54);
  sub_24F92AD88();
  sub_24E94E128(v54);
  sub_24E94E128(&v55);
  v29 = *(v7 + qword_27F39C7A0);
  v30 = *(v7 + v25);
  v54[0] = v17;
  v31 = *(v30 + 16);

  if (!v31)
  {
    v53 = v17;
    goto LABEL_23;
  }

  v32 = 0;
  v33 = v30 + 32;
  v44 = v31 - 1;
  v53 = MEMORY[0x277D84F90];
  v46 = v29;
  v45 = v30 + 32;
  do
  {
    v34 = v33 + 40 * v32;
    v35 = v32;
    while (1)
    {
      if (v35 >= *(v30 + 16))
      {
        __break(1u);
        return result;
      }

      sub_24E65864C(v34, &v55);
      if (*(*(v7 + v27) + 16))
      {
        break;
      }

LABEL_12:
      ++v35;
      result = sub_24E6585F8(&v55);
      v34 += 40;
      if (v31 == v35)
      {
        goto LABEL_23;
      }
    }

    sub_24E76D934(&v55);
    if ((v36 & 1) == 0)
    {

      goto LABEL_12;
    }

    v37 = sub_24E6585F8(&v55);
    MEMORY[0x253050F00](v37);
    if (*((v54[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v54[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_24F92B5E8();
    }

    v32 = v35 + 1;
    result = sub_24F92B638();
    v53 = v54[0];
    v33 = v45;
  }

  while (v44 != v35);
LABEL_23:

  v55 = a1;
  v56 = v53;
  v57 = 0;
  sub_24F92AD88();
  sub_24F24D968(v55, v56, v57);
  v38 = (v50)(v51, &protocol witness table for DynamicPage<A>);
  sub_24F24A634(v38, 0, v7);

  if (*(v7 + qword_27F22F1F0))
  {

    sub_24ED6F318();
  }

  if (*(v7 + qword_27F39C7D8))
  {
    v39 = OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics;
    swift_beginAccess();
    v40 = sub_24F928818();
    v41 = v47;
    (*(*(v40 - 8) + 16))(v47, &a1[v39], v40);
    v42 = v48;
    v43 = v49;
    (*(v48 + 104))(v41, *MEMORY[0x277D22290], v49);
    sub_24F92A0C8();

    (*(v42 + 8))(v41, v43);
  }

  else
  {
  }
}