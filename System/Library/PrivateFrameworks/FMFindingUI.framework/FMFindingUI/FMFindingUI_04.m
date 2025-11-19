uint64_t sub_24A566DF4(uint64_t (**a1)(void, void), uint64_t a2, uint64_t a3)
{
  sub_24A508AE4(v3 + OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_findable, &v83);
  sub_24A508FA4(&unk_27EF501B0, &unk_24A633B00);
  sub_24A508FA4(&unk_27EF52300, &qword_24A636230);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v65 = 0;
    memset(v64, 0, sizeof(v64));
  }

  if (qword_27EF4E9A0 != -1)
  {
    goto LABEL_67;
  }

  while (1)
  {
    v7 = sub_24A62E314();
    sub_24A506EB8(v7, qword_27EF5C118);
    v8 = a2;
    v9 = v3;
    v3 = sub_24A62E2F4();
    v10 = sub_24A62EF64();

    v56 = v9;
    v52 = v8;
    if (os_log_type_enabled(v3, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v55 = a3;
      v13 = swift_slowAlloc();
      *&v83 = v13;
      *v11 = 138412546;
      *(v11 + 4) = v56;
      *v12 = v56;
      *(v11 + 12) = 2080;
      *&v77 = a2;
      v14 = v56;
      v15 = v8;
      sub_24A508FA4(&qword_27EF50218, &qword_24A636260);
      v16 = sub_24A62EC44();
      v18 = a2;
      v19 = a1;
      v20 = sub_24A509BA8(v16, v17, &v83);

      *(v11 + 14) = v20;
      a1 = v19;
      a2 = v18;
      _os_log_impl(&dword_24A503000, v3, v10, "🧭 FMR1NIContxt%@: didUpdateRegion %s", v11, 0x16u);
      sub_24A50D6A4(v12, &qword_27EF4FED0, &unk_24A635E00);
      MEMORY[0x24C21BBE0](v12, -1, -1);
      sub_24A508C54(v13);
      v21 = v13;
      a3 = v55;
      MEMORY[0x24C21BBE0](v21, -1, -1);
      v22 = v11;
      v9 = v56;
      MEMORY[0x24C21BBE0](v22, -1, -1);
    }

    v23 = [a1 discoveryToken];
    sub_24A569614(v64, &v83);
    v24 = *(&v84 + 1);
    if (!*(&v84 + 1))
    {
      sub_24A50D6A4(&v83, &unk_27EF501C0, &unk_24A636238);
      if (v23)
      {
        break;
      }

      goto LABEL_17;
    }

    a1 = v85;
    v3 = sub_24A50A204(&v83, *(&v84 + 1));
    v25 = a1[2](v24, a1);
    sub_24A508C54(&v83);
    if (v23)
    {
      if (!v25)
      {
        break;
      }

      sub_24A50D7EC(0, &qword_27EF501E8, 0x277CD8A30);
      v3 = sub_24A62F164();

      if ((v3 & 1) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_17;
    }

    v23 = v25;
    if (v25)
    {
      break;
    }

LABEL_17:
    v54 = a2;
    if (a2 && (v3 = v52, sub_24A5AEBA8(v66), v68 != 255))
    {
      v71 = v66[2];
      v72 = v66[3];
      v73 = v66[4];
      v74 = v66[5];
      v69 = v66[0];
      v70 = v66[1];
      v75 = v67;
      v76 = v68;
      if (a3)
      {
        sub_24A5AEBA8(&v83);
        v80 = v86;
        v81 = v87;
        *v82 = v88[0];
        *&v82[15] = *(v88 + 15);
        v77 = v83;
        v78 = v84;
        v79 = v85;
      }

      else
      {
        v81 = 0u;
        memset(v82, 0, 18);
        v79 = 0u;
        v80 = 0u;
        v77 = 0u;
        v78 = 0u;
        v82[18] = -1;
      }

      v87 = v81;
      v88[0] = *v82;
      *(v88 + 15) = *&v82[15];
      v83 = v77;
      v84 = v78;
      v85 = v79;
      v86 = v80;
      v53 = sub_24A5AED58(&v83);
      v3 = &qword_24A635DE0;
      sub_24A50D6A4(v66, &qword_27EF50210, &qword_24A635DE0);
      sub_24A50D6A4(&v77, &qword_27EF50210, &qword_24A635DE0);
    }

    else
    {
      if (a3)
      {
        v32 = 2;
      }

      else
      {
        v32 = 3;
      }

      v53 = v32;
    }

    v33 = OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_subscriptions;
    swift_beginAccess();
    a2 = *&v9[v33];
    if (a2 >> 62)
    {
      if (a2 < 0)
      {
        v51 = *&v9[v33];
      }

      v34 = sub_24A62F464();
    }

    else
    {
      v34 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v34)
    {
LABEL_63:

      return sub_24A50D6A4(v64, &unk_27EF501C0, &unk_24A636238);
    }

    v35 = 0;
    while (1)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v36 = MEMORY[0x24C21ACB0](v35, a2);
      }

      else
      {
        if (v35 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_66;
        }

        v36 = *(a2 + 8 * v35 + 32);
      }

      v37 = v36;
      v38 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      v39 = &v36[OBJC_IVAR____TtC11FMFindingUI38FMNearbyInteractionManagerSubscription_subscriber];
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v3 = Strong;
        a3 = *(v39 + 1);
        if (v54)
        {
          v41 = [v52 name];
          v42 = sub_24A62EC14();
          v44 = v43;

          v45 = v42 == 0x646E756F66 && v44 == 0xE500000000000000;
          if (v45 || (sub_24A62F634() & 1) != 0)
          {

            *&v58 = 0;
            v46 = 3;
            goto LABEL_45;
          }

          if (v42 == 1701995880 && v44 == 0xE400000000000000 || (sub_24A62F634() & 1) != 0)
          {

            *&v58 = 0;
            v46 = 2;
            goto LABEL_45;
          }

          if (v42 == 1918985582 && v44 == 0xE400000000000000 || (sub_24A62F634() & 1) != 0)
          {

            *&v58 = 0;
            v46 = 1;
LABEL_45:
            v63[18] = v46;
LABEL_47:
            v81 = v62;
            *v82 = *v63;
            *&v82[15] = *&v63[15];
            v77 = v58;
            v78 = v59;
            v79 = v60;
            v80 = v61;
            ObjectType = swift_getObjectType();
            v57[3] = type metadata accessor for FMNearbyInteractionLocalizerContext();
            v57[4] = &off_285DA58A0;
            v57[0] = v56;
            a1 = *(a3 + 24);
            v48 = v56;
            (a1)(&v77, v53, v57, ObjectType, a3);

            sub_24A50D6A4(&v58, &qword_27EF50210, &qword_24A635DE0);
            swift_unknownObjectRelease();
            sub_24A508C54(v57);
            goto LABEL_32;
          }

          if (v42 == 7496038 && v44 == 0xE300000000000000)
          {

LABEL_60:
            *&v58 = 0;
            v63[18] = 0;
            goto LABEL_47;
          }

          v49 = sub_24A62F634();

          if (v49)
          {
            goto LABEL_60;
          }
        }

        v62 = 0u;
        memset(v63, 0, 18);
        v60 = 0u;
        v61 = 0u;
        v58 = 0u;
        v59 = 0u;
        v63[18] = -1;
        goto LABEL_47;
      }

LABEL_32:
      ++v35;
      if (v38 == v34)
      {
        goto LABEL_63;
      }
    }

    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    swift_once();
  }

LABEL_13:
  v26 = v9;
  v27 = sub_24A62E2F4();
  v28 = sub_24A62EF64();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v29 = 138412290;
    *(v29 + 4) = v26;
    *v30 = v26;
    v31 = v26;
    _os_log_impl(&dword_24A503000, v27, v28, "🧭 FMR1NIContxt%@: region updated, However, nearby object discover tokens don't match", v29, 0xCu);
    sub_24A50D6A4(v30, &qword_27EF4FED0, &unk_24A635E00);
    MEMORY[0x24C21BBE0](v30, -1, -1);
    MEMORY[0x24C21BBE0](v29, -1, -1);
  }

  return sub_24A50D6A4(v64, &unk_27EF501C0, &unk_24A636238);
}

uint64_t sub_24A5676CC(unint64_t a1, void (*a2)(void, void, void, void))
{
  sub_24A508AE4(v2 + OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_findable, v56);
  sub_24A508FA4(&unk_27EF501B0, &unk_24A633B00);
  sub_24A508FA4(&unk_27EF52300, &qword_24A636230);
  v5 = swift_dynamicCast();
  if ((v5 & 1) == 0)
  {
    v60 = 0;
    memset(v59, 0, sizeof(v59));
  }

  MEMORY[0x28223BE20](v5);
  v49[2] = v59;
  v6 = sub_24A60DE9C(sub_24A5696B8, v49, a1);
  if (v6)
  {
    v7 = v6;
    if (qword_27EF4E9A0 != -1)
    {
      goto LABEL_30;
    }

    while (1)
    {
      v8 = sub_24A62E314();
      sub_24A506EB8(v8, qword_27EF5C118);
      v9 = v2;
      v10 = v7;
      v2 = sub_24A62E2F4();
      v11 = sub_24A62EF64();

      v12 = os_log_type_enabled(v2, v11);
      v50 = v10;
      if (v12)
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v56[0] = v15;
        *v13 = 138412802;
        *(v13 + 4) = v9;
        *v14 = v9;
        *(v13 + 12) = 2112;
        v16 = v9;
        v17 = [v10 discoveryToken];
        *(v13 + 14) = v17;
        v14[1] = v17;
        *(v13 + 22) = 2080;
        v55 = a2;
        type metadata accessor for RemovalReason(0);
        v18 = sub_24A62EC44();
        a2 = v19;
        v20 = sub_24A509BA8(v18, v19, v56);

        *(v13 + 24) = v20;
        _os_log_impl(&dword_24A503000, v2, v11, "🧭 FMR1NIContxt%@: nearby object discover token matches %@ removing. Reason: %s", v13, 0x20u);
        sub_24A508FA4(&qword_27EF4FED0, &unk_24A635E00);
        swift_arrayDestroy();
        MEMORY[0x24C21BBE0](v14, -1, -1);
        sub_24A508C54(v15);
        MEMORY[0x24C21BBE0](v15, -1, -1);
        MEMORY[0x24C21BBE0](v13, -1, -1);
      }

      *(&v9->isa + OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_itemLocalizerState) = 1;
      *(&v9->isa + OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_itemState) = 2;
      v7 = OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_subscriptions;
      swift_beginAccess();
      v54 = v9;
      v21 = *&v7[v9];
      if (v21 >> 62)
      {
        if (v21 < 0)
        {
          v48 = *&v7[v9];
        }

        v22 = sub_24A62F464();
      }

      else
      {
        v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (!v22)
      {
        break;
      }

      v23 = 0;
      v51 = v21 & 0xFFFFFFFFFFFFFF8;
      v52 = v21 & 0xC000000000000001;
      while (1)
      {
        if (v52)
        {
          v24 = MEMORY[0x24C21ACB0](v23, v21);
        }

        else
        {
          if (v23 >= *(v51 + 16))
          {
            goto LABEL_29;
          }

          v24 = *(v21 + 8 * v23 + 32);
        }

        v25 = v24;
        v7 = (v23 + 1);
        if (__OFADD__(v23, 1))
        {
          break;
        }

        v26 = &v24[OBJC_IVAR____TtC11FMFindingUI38FMNearbyInteractionManagerSubscription_subscriber];
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v2 = Strong;
          v28 = *(v26 + 1);
          ObjectType = swift_getObjectType();
          v53 = v25;
          v30 = v22;
          v31 = v21;
          v32 = ObjectType;
          v57 = type metadata accessor for FMNearbyInteractionLocalizerContext();
          v58 = &off_285DA58A0;
          v56[0] = v54;
          a2 = *(v28 + 32);
          v33 = v54;
          v34 = v32;
          v21 = v31;
          v22 = v30;
          v25 = v53;
          a2(1, v56, v34, v28);
          swift_unknownObjectRelease();
          sub_24A508C54(v56);
        }

        v35 = swift_unknownObjectWeakLoadStrong();
        if (v35)
        {
          v2 = v35;
          v36 = *(v26 + 1);
          v37 = swift_getObjectType();
          v57 = type metadata accessor for FMNearbyInteractionLocalizerContext();
          v58 = &off_285DA58A0;
          v56[0] = v54;
          a2 = (v36 + 48);
          v38 = *(v36 + 48);
          v39 = v54;
          v38(2, v56, v37, v36);
          swift_unknownObjectRelease();

          sub_24A508C54(v56);
        }

        else
        {
        }

        ++v23;
        if (v7 == v22)
        {
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      swift_once();
    }

LABEL_22:

    v40 = v50;
  }

  else
  {
    if (qword_27EF4E9A0 != -1)
    {
      swift_once();
    }

    v41 = sub_24A62E314();
    sub_24A506EB8(v41, qword_27EF5C118);
    v42 = v2;
    v40 = sub_24A62E2F4();
    v43 = sub_24A62EF64();

    if (os_log_type_enabled(v40, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *v44 = 138412290;
      *(v44 + 4) = v42;
      *v45 = v42;
      v46 = v42;
      _os_log_impl(&dword_24A503000, v40, v43, "🧭 FMR1NIContxt%@: nearby object discover token doesn't match", v44, 0xCu);
      sub_24A50D6A4(v45, &qword_27EF4FED0, &unk_24A635E00);
      MEMORY[0x24C21BBE0](v45, -1, -1);
      MEMORY[0x24C21BBE0](v44, -1, -1);
    }
  }

  return sub_24A50D6A4(v59, &unk_27EF501C0, &unk_24A636238);
}

uint64_t sub_24A567CB4(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_24A62E2C4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v114 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = (&v114 - v13);
  MEMORY[0x28223BE20](v12);
  sub_24A508AE4(v2 + OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_findable, v120);
  sub_24A508FA4(&unk_27EF501B0, &unk_24A633B00);
  sub_24A508FA4(&unk_27EF52300, &qword_24A636230);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v124 = 0;
    memset(v123, 0, sizeof(v123));
  }

  if (a2)
  {
    v119 = v7;
    v116 = a2;
    v15 = [v116 discoveryToken];
    sub_24A569614(v123, v120);
    v16 = v121;
    if (v121)
    {
      v17 = v122;
      sub_24A50A204(v120, v121);
      v18 = (v17[2])(v16, v17);
      sub_24A508C54(v120);
      if (v15)
      {
        if (v18)
        {
          sub_24A50D7EC(0, &qword_27EF501E8, 0x277CD8A30);
          v19 = sub_24A62F164();

          if (v19)
          {
            goto LABEL_18;
          }

          goto LABEL_11;
        }

LABEL_10:

LABEL_11:
        goto LABEL_12;
      }

      v15 = v18;
      if (v18)
      {
        goto LABEL_10;
      }
    }

    else
    {
      sub_24A50D6A4(v120, &unk_27EF501C0, &unk_24A636238);
      if (v15)
      {
        goto LABEL_10;
      }
    }

LABEL_18:
    if (qword_27EF4E9A0 != -1)
    {
      goto LABEL_91;
    }

    while (1)
    {
      v28 = sub_24A62E314();
      v29 = sub_24A506EB8(v28, qword_27EF5C118);
      v30 = v3;
      v31 = a1;
      v32 = sub_24A62E2F4();
      v33 = sub_24A62EF64();

      v34 = os_log_type_enabled(v32, v33);
      v117 = v30;
      if (v34)
      {
        v35 = swift_slowAlloc();
        v118 = v29;
        v36 = v35;
        v37 = swift_slowAlloc();
        v114 = v37;
        v115 = swift_slowAlloc();
        v120[0] = v115;
        *v36 = 138412546;
        *(v36 + 4) = v30;
        *v37 = v30;
        *(v36 + 12) = 2080;
        v38 = v30;
        sub_24A62F0B4();
        v39 = sub_24A62EC44();
        v41 = sub_24A509BA8(v39, v40, v120);

        *(v36 + 14) = v41;
        _os_log_impl(&dword_24A503000, v32, v33, "🧭 FMR1NIContxt%@: Updated convergence status! %s", v36, 0x16u);
        v42 = v114;
        sub_24A50D6A4(v114, &qword_27EF4FED0, &unk_24A635E00);
        MEMORY[0x24C21BBE0](v42, -1, -1);
        v43 = v115;
        sub_24A508C54(v115);
        MEMORY[0x24C21BBE0](v43, -1, -1);
        MEMORY[0x24C21BBE0](v36, -1, -1);
      }

      sub_24A62F0B4();
      v44 = v119;
      v3 = v119 + 88;
      v45 = *(v119 + 88);
      if (v45(v14, v6) != *MEMORY[0x277CD89F0])
      {
        break;
      }

      (*(v44 + 96))(v14, v6);
      v46 = *v14;
      v47 = v117;

      v48 = sub_24A62E2F4();
      v49 = sub_24A62EF64();

      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v120[0] = v52;
        *v50 = 138412546;
        *(v50 + 4) = v47;
        *v51 = v47;
        *(v50 + 12) = 2080;
        v53 = sub_24A62E2B4();
        v54 = v47;
        v55 = MEMORY[0x24C21A690](v46, v53);
        v57 = sub_24A509BA8(v55, v56, v120);

        *(v50 + 14) = v57;
        _os_log_impl(&dword_24A503000, v48, v49, "🧭 FMR1NIContxt%@: No longer converged!! What's the reason? %s", v50, 0x16u);
        sub_24A50D6A4(v51, &qword_27EF4FED0, &unk_24A635E00);
        MEMORY[0x24C21BBE0](v51, -1, -1);
        sub_24A508C54(v52);
        MEMORY[0x24C21BBE0](v52, -1, -1);
        MEMORY[0x24C21BBE0](v50, -1, -1);
      }

      v59 = sub_24A61B26C(v58);

      sub_24A508FA4(&qword_27EF501F0, &unk_24A636250);
      v60 = *(sub_24A62E2B4() - 8);
      v6 = *(v60 + 72);
      a1 = *(v60 + 80);
      v61 = swift_allocObject();
      *(v61 + 16) = xmmword_24A633830;
      sub_24A62E2A4();
      v62 = sub_24A565478(v61, v59);
      swift_setDeallocating();
      v63 = *(v61 + 16);
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v64 = *(v62 + 16);

      v117 = v47;
      if (v64)
      {

        v65 = OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_subscriptions;
        swift_beginAccess();
        v66 = *&v47[v65];
        if (!(v66 >> 62))
        {
          v67 = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
          goto LABEL_27;
        }

LABEL_94:
        v67 = sub_24A62F464();
LABEL_27:

        if (v67)
        {
          v3 = 0;
          v118 = v66 & 0xFFFFFFFFFFFFFF8;
          v119 = v66 & 0xC000000000000001;
          while (1)
          {
            if (v119)
            {
              v68 = MEMORY[0x24C21ACB0](v3, v66);
            }

            else
            {
              if (v3 >= *(v118 + 16))
              {
                goto LABEL_85;
              }

              v68 = *(v66 + 8 * v3 + 32);
            }

            v69 = v68;
            v70 = v3 + 1;
            if (__OFADD__(v3, 1))
            {
              break;
            }

            v71 = &v68[OBJC_IVAR____TtC11FMFindingUI38FMNearbyInteractionManagerSubscription_subscriber];
            if (swift_unknownObjectWeakLoadStrong())
            {
              v72 = *(v71 + 1);
              ObjectType = swift_getObjectType();
              v121 = type metadata accessor for FMNearbyInteractionLocalizerContext();
              v122 = &off_285DA58A0;
              v120[0] = v117;
              v74 = *(v72 + 48);
              v75 = v117;
              v74(7, v120, ObjectType, v72);
              swift_unknownObjectRelease();

              sub_24A508C54(v120);
            }

            else
            {
            }

            ++v3;
            if (v70 == v67)
            {
              goto LABEL_82;
            }
          }

          __break(1u);
LABEL_85:
          __break(1u);
          goto LABEL_86;
        }

LABEL_82:

        goto LABEL_83;
      }

      v89 = sub_24A61B26C(v46);

      v90 = swift_allocObject();
      *(v90 + 16) = xmmword_24A633A00;
      sub_24A62E294();
      sub_24A62E284();
      v14 = sub_24A565478(v90, v89);
      swift_setDeallocating();
      v91 = *(v90 + 16);
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v92 = v14[2];

      if (!v92)
      {
        if (v47[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_itemLocalizerState] != 1)
        {
          v100 = OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_subscriptions;
          swift_beginAccess();
          v66 = *&v47[v100];
          if (v66 >> 62)
          {
            if (v66 < 0)
            {
              v113 = *&v47[v100];
            }

            v101 = sub_24A62F464();
          }

          else
          {
            v101 = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          if (v101)
          {
            v102 = 0;
            v118 = v66 & 0xFFFFFFFFFFFFFF8;
            v119 = v66 & 0xC000000000000001;
            while (1)
            {
              if (v119)
              {
                v107 = MEMORY[0x24C21ACB0](v102, v66);
              }

              else
              {
                if (v102 >= *(v118 + 16))
                {
                  goto LABEL_93;
                }

                v107 = *(v66 + 8 * v102 + 32);
              }

              v108 = v107;
              v109 = v102 + 1;
              if (__OFADD__(v102, 1))
              {
                break;
              }

              v110 = &v107[OBJC_IVAR____TtC11FMFindingUI38FMNearbyInteractionManagerSubscription_subscriber];
              if (swift_unknownObjectWeakLoadStrong())
              {
                v103 = *(v110 + 1);
                v104 = swift_getObjectType();
                v121 = type metadata accessor for FMNearbyInteractionLocalizerContext();
                v122 = &off_285DA58A0;
                v120[0] = v117;
                v105 = *(v103 + 48);
                v106 = v117;
                v105(3, v120, v104, v103);
                swift_unknownObjectRelease();

                sub_24A508C54(v120);
              }

              else
              {
              }

              ++v102;
              if (v109 == v101)
              {
                goto LABEL_82;
              }
            }

            __break(1u);
LABEL_93:
            __break(1u);
            goto LABEL_94;
          }

          goto LABEL_82;
        }

LABEL_83:

        return sub_24A50D6A4(v123, &unk_27EF501C0, &unk_24A636238);
      }

      v93 = OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_subscriptions;
      swift_beginAccess();
      v11 = *&v47[v93];
      if (v11 >> 62)
      {
        if (v11 < 0)
        {
          v112 = *&v47[v93];
        }

        v94 = sub_24A62F464();
      }

      else
      {
        v94 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (!v94)
      {
        goto LABEL_82;
      }

      v3 = 0;
      v118 = v11 & 0xFFFFFFFFFFFFFF8;
      v119 = v11 & 0xC000000000000001;
      while (1)
      {
        if (v119)
        {
          v97 = MEMORY[0x24C21ACB0](v3, v11);
        }

        else
        {
          if (v3 >= *(v118 + 16))
          {
            goto LABEL_90;
          }

          v97 = *(v11 + 8 * v3 + 32);
        }

        v98 = v97;
        v6 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          break;
        }

        v99 = &v97[OBJC_IVAR____TtC11FMFindingUI38FMNearbyInteractionManagerSubscription_subscriber];
        if (swift_unknownObjectWeakLoadStrong())
        {
          v14 = *(v99 + 1);
          a1 = swift_getObjectType();
          v121 = type metadata accessor for FMNearbyInteractionLocalizerContext();
          v122 = &off_285DA58A0;
          v120[0] = v117;
          v95 = v14[6];
          v96 = v117;
          v95(8, v120, a1, v14);
          swift_unknownObjectRelease();

          sub_24A508C54(v120);
        }

        else
        {
        }

        ++v3;
        if (v6 == v94)
        {
          goto LABEL_82;
        }
      }

      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      swift_once();
    }

    v76 = *(v44 + 8);
    v76(v14, v6);
    sub_24A62F0B4();
    if (v45(v11, v6) != *MEMORY[0x277CD8A10])
    {

      v76(v11, v6);
      return sub_24A50D6A4(v123, &unk_27EF501C0, &unk_24A636238);
    }

    v76(v11, v6);
    v77 = OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_subscriptions;
    v78 = v117;
    swift_beginAccess();
    v79 = *&v78[v77];
    if (v79 >> 62)
    {
      if (v79 < 0)
      {
        v111 = *&v78[v77];
      }

      v80 = sub_24A62F464();
    }

    else
    {
      v80 = *((v79 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v80)
    {
      goto LABEL_82;
    }

    v81 = 0;
    v118 = v79 & 0xFFFFFFFFFFFFFF8;
    v119 = v79 & 0xC000000000000001;
    while (1)
    {
      if (v119)
      {
        v86 = MEMORY[0x24C21ACB0](v81, v79);
      }

      else
      {
        if (v81 >= *(v118 + 16))
        {
          goto LABEL_87;
        }

        v86 = *(v79 + 8 * v81 + 32);
      }

      v87 = v86;
      v3 = v81 + 1;
      if (__OFADD__(v81, 1))
      {
        break;
      }

      v88 = &v86[OBJC_IVAR____TtC11FMFindingUI38FMNearbyInteractionManagerSubscription_subscriber];
      if (swift_unknownObjectWeakLoadStrong())
      {
        v82 = *(v88 + 1);
        v83 = swift_getObjectType();
        v121 = type metadata accessor for FMNearbyInteractionLocalizerContext();
        v122 = &off_285DA58A0;
        v120[0] = v117;
        v84 = *(v82 + 48);
        v85 = v117;
        v84(3, v120, v83, v82);
        swift_unknownObjectRelease();

        sub_24A508C54(v120);
      }

      else
      {
      }

      ++v81;
      if (v3 == v80)
      {
        goto LABEL_82;
      }
    }

LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

LABEL_12:
  if (qword_27EF4E9A0 != -1)
  {
LABEL_88:
    swift_once();
  }

  v20 = sub_24A62E314();
  sub_24A506EB8(v20, qword_27EF5C118);
  v21 = v3;
  v22 = sub_24A62E2F4();
  v23 = sub_24A62EF64();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v24 = 138412290;
    *(v24 + 4) = v21;
    *v25 = v21;
    v26 = v21;
    _os_log_impl(&dword_24A503000, v22, v23, "🧭 FMR1NIContxt%@: nearby object discover token doesn't match", v24, 0xCu);
    sub_24A50D6A4(v25, &qword_27EF4FED0, &unk_24A635E00);
    MEMORY[0x24C21BBE0](v25, -1, -1);
    MEMORY[0x24C21BBE0](v24, -1, -1);
  }

  return sub_24A50D6A4(v123, &unk_27EF501C0, &unk_24A636238);
}

uint64_t sub_24A568ABC(void *a1, char a2)
{
  LOBYTE(v3) = a2;
  if (qword_27EF4E9A0 != -1)
  {
    goto LABEL_26;
  }

  while (1)
  {
    v5 = sub_24A62E314();
    sub_24A506EB8(v5, qword_27EF5C118);
    v6 = v2;
    v2 = sub_24A62E2F4();
    v7 = sub_24A62EF64();

    if (os_log_type_enabled(v2, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v32[0] = v10;
      *v8 = 138412802;
      *(v8 + 4) = v6;
      *v9 = v6;
      *(v8 + 12) = 2080;
      v32[5] = a1;
      type metadata accessor for NISessionSuspensionReason(0);
      v11 = v6;
      v12 = sub_24A62EC44();
      a1 = v13;
      v14 = sub_24A509BA8(v12, v13, v32);

      *(v8 + 14) = v14;
      *(v8 + 22) = 1024;
      *(v8 + 24) = v3 & 1;
      _os_log_impl(&dword_24A503000, v2, v7, "🧭 FMR1NIContxt%@: suspensionReasonEnded: %s, isNoLongerSuspended: %{BOOL}d", v8, 0x1Cu);
      sub_24A50D6A4(v9, &qword_27EF4FED0, &unk_24A635E00);
      MEMORY[0x24C21BBE0](v9, -1, -1);
      sub_24A508C54(v10);
      MEMORY[0x24C21BBE0](v10, -1, -1);
      MEMORY[0x24C21BBE0](v8, -1, -1);
    }

    if ((*(&v6->isa + OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_applicationIsInBackground) & 1) == 0)
    {
      v15 = *(&v6->isa + OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_niConfiguration);
      objc_opt_self();
      v16 = swift_dynamicCastObjCClass();
      if (v16)
      {
        a1 = v16;
        v17 = v15;
        if ([a1 preferredUpdateRate] == 3)
        {
          v2 = v6;
          sub_24A55FD50();

          goto LABEL_10;
        }
      }

      v2 = v6;
      sub_24A55F608();
    }

LABEL_10:
    v18 = OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_subscriptions;
    swift_beginAccess();
    v19 = *(&v6->isa + v18);
    v31 = v6;
    v20 = v19 >> 62 ? sub_24A62F464() : *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v20)
    {
    }

    v21 = 0;
    v30 = v3 ^ 1;
    while (1)
    {
      if ((v19 & 0xC000000000000001) != 0)
      {
        v22 = MEMORY[0x24C21ACB0](v21, v19);
      }

      else
      {
        if (v21 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v22 = *(v19 + 8 * v21 + 32);
      }

      v3 = v22;
      v23 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      v24 = &v22[OBJC_IVAR____TtC11FMFindingUI38FMNearbyInteractionManagerSubscription_subscriber];
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v2 = Strong;
        a1 = *(v24 + 1);
        ObjectType = swift_getObjectType();
        v32[3] = type metadata accessor for FMNearbyInteractionLocalizerContext();
        v32[4] = &off_285DA58A0;
        v32[0] = v31;
        v27 = a1[8];
        v28 = v31;
        v27(v30 & 1, v32, ObjectType, a1);
        swift_unknownObjectRelease();

        sub_24A508C54(v32);
      }

      else
      {
      }

      ++v21;
      if (v23 == v20)
      {
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    swift_once();
  }
}

uint64_t sub_24A568E74(uint64_t a1)
{
  if (qword_27EF4E9A0 != -1)
  {
    goto LABEL_37;
  }

  while (1)
  {
    v3 = sub_24A62E314();
    sub_24A506EB8(v3, qword_27EF5C118);
    v4 = v1;
    v1 = sub_24A62E2F4();
    v5 = sub_24A62EF64();

    if (os_log_type_enabled(v1, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v41[0] = v8;
      *v6 = 138412546;
      *(v6 + 4) = v4;
      *v7 = v4;
      *(v6 + 12) = 2080;
      v44 = a1;
      type metadata accessor for NISessionSuspensionReason(0);
      v9 = v4;
      v10 = sub_24A62EC44();
      v12 = sub_24A509BA8(v10, v11, v41);

      *(v6 + 14) = v12;
      _os_log_impl(&dword_24A503000, v1, v5, "🧭 FMR1NIContxt%@: suspendedWithReason: %s", v6, 0x16u);
      sub_24A50D6A4(v7, &qword_27EF4FED0, &unk_24A635E00);
      MEMORY[0x24C21BBE0](v7, -1, -1);
      sub_24A508C54(v8);
      MEMORY[0x24C21BBE0](v8, -1, -1);
      MEMORY[0x24C21BBE0](v6, -1, -1);
    }

    v40 = v4;
    if (a1 != 8)
    {
      break;
    }

    *(&v4->isa + OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_itemState) = 6;
    v13 = OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_subscriptions;
    swift_beginAccess();
    a1 = *(&v4->isa + v13);
    if (a1 >> 62)
    {
      if (a1 < 0)
      {
        v38 = *(&v4->isa + v13);
      }

      v14 = sub_24A62F464();
    }

    else
    {
      v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v14)
    {
    }

    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x24C21ACB0](i, a1);
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_35;
        }

        v16 = *(a1 + 8 * i + 32);
      }

      v17 = v16;
      v18 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      v19 = &v16[OBJC_IVAR____TtC11FMFindingUI38FMNearbyInteractionManagerSubscription_subscriber];
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v1 = Strong;
        v21 = *(v19 + 1);
        ObjectType = swift_getObjectType();
        v42 = type metadata accessor for FMNearbyInteractionLocalizerContext();
        v43 = &off_285DA58A0;
        v41[0] = v40;
        v23 = *(v21 + 48);
        v24 = v40;
        v23(6, v41, ObjectType, v21);
        swift_unknownObjectRelease();

        sub_24A508C54(v41);
      }

      else
      {
      }

      if (v18 == v14)
      {
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    swift_once();
  }

  v25 = OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_subscriptions;
  swift_beginAccess();
  a1 = *(&v4->isa + v25);
  if (a1 >> 62)
  {
    if (a1 < 0)
    {
      v39 = *(&v4->isa + v25);
    }

    v26 = sub_24A62F464();
  }

  else
  {
    v26 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v26)
  {
    v27 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v28 = MEMORY[0x24C21ACB0](v27, a1);
      }

      else
      {
        if (v27 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_36;
        }

        v28 = *(a1 + 8 * v27 + 32);
      }

      v29 = v28;
      v30 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        goto LABEL_34;
      }

      v31 = &v28[OBJC_IVAR____TtC11FMFindingUI38FMNearbyInteractionManagerSubscription_subscriber];
      v32 = swift_unknownObjectWeakLoadStrong();
      if (v32)
      {
        v1 = v32;
        v33 = *(v31 + 1);
        v34 = swift_getObjectType();
        v42 = type metadata accessor for FMNearbyInteractionLocalizerContext();
        v43 = &off_285DA58A0;
        v41[0] = v40;
        v35 = *(v33 + 64);
        v36 = v40;
        v35(1, v41, v34, v33);
        swift_unknownObjectRelease();

        sub_24A508C54(v41);
      }

      else
      {
      }

      ++v27;
    }

    while (v30 != v26);
  }

  *(&v40->isa + OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_activity) = 4;
  return result;
}

uint64_t sub_24A5692FC(void *a1)
{
  v2 = a1;
  v3 = *&v1[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_error];
  *&v1[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_error] = a1;
  v4 = a1;

  if (qword_27EF4E9A0 != -1)
  {
    goto LABEL_20;
  }

  while (1)
  {
    v5 = sub_24A62E314();
    sub_24A506EB8(v5, qword_27EF5C118);
    v6 = v2;
    v7 = v1;
    v8 = sub_24A62E2F4();
    v9 = sub_24A62EF44();

    v30 = v7;
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412546;
      *(v10 + 4) = v7;
      *v11 = v7;
      *(v10 + 12) = 2112;
      v12 = v2;
      v13 = v7;
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 14) = v14;
      v11[1] = v14;
      _os_log_impl(&dword_24A503000, v8, v9, "🧭 FMR1NIContxt%@: item localizer failed (%@)", v10, 0x16u);
      sub_24A508FA4(&qword_27EF4FED0, &unk_24A635E00);
      swift_arrayDestroy();
      MEMORY[0x24C21BBE0](v11, -1, -1);
      MEMORY[0x24C21BBE0](v10, -1, -1);
    }

    v29 = v2;

    v1 = v7;
    sub_24A560664();
    v15 = OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_subscriptions;
    swift_beginAccess();
    v16 = *&v7[v15];
    if (v16 >> 62)
    {
      if (v16 < 0)
      {
        v28 = *&v7[v15];
      }

      v2 = sub_24A62F464();
    }

    else
    {
      v2 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v2)
    {
    }

    for (i = 0; ; ++i)
    {
      if ((v16 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x24C21ACB0](i, v16);
      }

      else
      {
        if (i >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v18 = *(v16 + 8 * i + 32);
      }

      v19 = v18;
      v20 = (i + 1);
      if (__OFADD__(i, 1))
      {
        break;
      }

      v21 = &v18[OBJC_IVAR____TtC11FMFindingUI38FMNearbyInteractionManagerSubscription_subscriber];
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v1 = Strong;
        v23 = *(v21 + 1);
        ObjectType = swift_getObjectType();
        v31[3] = type metadata accessor for FMNearbyInteractionLocalizerContext();
        v31[4] = &off_285DA58A0;
        v31[0] = v30;
        v25 = *(v23 + 40);
        v26 = v30;
        v25(v29, v31, ObjectType, v23);
        swift_unknownObjectRelease();

        sub_24A508C54(v31);
      }

      else
      {
      }

      if (v20 == v2)
      {
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    swift_once();
  }
}

uint64_t sub_24A569614(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A508FA4(&unk_27EF501C0, &unk_24A636238);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A569684@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_24A565618(a1, a2, **(v3 + 16), *(v3 + 24));
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

id sub_24A5696D8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = sub_24A62E214();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = &v3[OBJC_IVAR____TtC11FMFindingUI38FMNearbyInteractionManagerSubscription_subscriber];
  *&v3[OBJC_IVAR____TtC11FMFindingUI38FMNearbyInteractionManagerSubscription_subscriber + 8] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v3[OBJC_IVAR____TtC11FMFindingUI38FMNearbyInteractionManagerSubscription_wantsSession] = 0;
  sub_24A62E204();
  (*(v7 + 32))(&v3[OBJC_IVAR____TtC11FMFindingUI38FMNearbyInteractionManagerSubscription_identifier], v10, v6);
  *(v11 + 1) = a2;
  swift_unknownObjectWeakAssign();
  sub_24A508AE4(a3, &v3[OBJC_IVAR____TtC11FMFindingUI38FMNearbyInteractionManagerSubscription_findable]);
  swift_unknownObjectWeakAssign();
  v12 = type metadata accessor for FMNearbyInteractionManagerSubscription();
  v15.receiver = v3;
  v15.super_class = v12;
  v13 = objc_msgSendSuper2(&v15, sel_init);
  sub_24A508C54(a3);
  return v13;
}

unint64_t sub_24A569868(unint64_t *a1)
{
  v3 = *a1;
  result = sub_24A565964(*a1);
  v6 = result;
  if (v1)
  {
    return v6;
  }

  if (v5)
  {
    if (v3 >> 62)
    {
      return sub_24A62F464();
    }

    return *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    return result;
  }

  v8 = &unk_27EF5C000;
  while (1)
  {
    if (v3 >> 62)
    {
      if (v7 == sub_24A62F464())
      {
        return v6;
      }
    }

    else if (v7 == *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v6;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x24C21ACB0](v7, v3);
      goto LABEL_15;
    }

    if ((v7 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v7 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_40;
    }

    v10 = *(v3 + 8 * v7 + 32);
LABEL_15:
    v11 = v10;
    v12 = v8[24];
    v13 = sub_24A62E1E4();

    if ((v13 & 1) == 0)
    {
      if (v6 != v7)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v14 = MEMORY[0x24C21ACB0](v6, v3);
          v15 = MEMORY[0x24C21ACB0](v7, v3);
        }

        else
        {
          if ((v6 & 0x8000000000000000) != 0)
          {
            goto LABEL_44;
          }

          v16 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v6 >= v16)
          {
            goto LABEL_45;
          }

          if (v7 >= v16)
          {
            goto LABEL_46;
          }

          v17 = *(v3 + 32 + 8 * v7);
          v14 = *(v3 + 32 + 8 * v6);
          v15 = v17;
        }

        v18 = v15;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
        {
          v3 = sub_24A5EB5C8(v3);
          v19 = (v3 >> 62) & 1;
        }

        else
        {
          LODWORD(v19) = 0;
        }

        v20 = v3 & 0xFFFFFFFFFFFFFF8;
        v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v6 + 0x20);
        *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v6 + 0x20) = v18;

        if ((v3 & 0x8000000000000000) != 0 || v19)
        {
          v3 = sub_24A5EB5C8(v3);
          v20 = v3 & 0xFFFFFFFFFFFFFF8;
          v8 = &unk_27EF5C000;
          if ((v7 & 0x8000000000000000) != 0)
          {
LABEL_37:
            __break(1u);
            return v6;
          }
        }

        else
        {
          v8 = &unk_27EF5C000;
          if ((v7 & 0x8000000000000000) != 0)
          {
            goto LABEL_37;
          }
        }

        if (v7 >= *(v20 + 16))
        {
          goto LABEL_43;
        }

        v22 = v20 + 8 * v7;
        v23 = *(v22 + 32);
        *(v22 + 32) = v14;

        *a1 = v3;
      }

      v9 = __OFADD__(v6++, 1);
      if (v9)
      {
        goto LABEL_42;
      }
    }

    v9 = __OFADD__(v7++, 1);
    if (v9)
    {
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
  return sub_24A62F464();
}

uint64_t sub_24A569AD8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24A569B20()
{
  result = qword_27EF4F9F0;
  if (!qword_27EF4F9F0)
  {
    sub_24A50E1E0(&unk_27EF50240, &unk_24A634A08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF4F9F0);
  }

  return result;
}

id sub_24A569BAC()
{
  v0 = objc_allocWithZone(type metadata accessor for BlurBackgroundView());

  return [v0 init];
}

void sub_24A569BE0(void *a1)
{
  v2 = *v1;
  v3 = [a1 layer];
  v4 = sub_24A62E274();
  v5 = sub_24A62EBE4();
  [v3 setValue:v4 forKeyPath:v5];
}

uint64_t sub_24A569C88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24A56A1F8();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_24A569CEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24A56A1F8();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_24A569D50()
{
  sub_24A56A1F8();
  sub_24A62E5D4();
  __break(1u);
}

id sub_24A569DB4()
{
  v20.receiver = v0;
  v20.super_class = type metadata accessor for BlurBackgroundView();
  v1 = objc_msgSendSuper2(&v20, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v2 = *MEMORY[0x277CDA328];
  v3 = objc_allocWithZone(MEMORY[0x277CD9EA0]);
  v4 = v1;
  v5 = [v3 initWithType_];
  v6 = sub_24A62EDB4();
  v7 = sub_24A62EBE4();
  [v5 setValue:v6 forKey:v7];

  v8 = v4;
  v9 = [v8 layer];
  objc_opt_self();
  v10 = swift_dynamicCastObjCClassUnconditional();
  v11 = [objc_allocWithZone(MEMORY[0x277CD9EA0]) initWithType_];
  [v10 setCompositingFilter_];

  v12 = [v8 layer];
  objc_opt_self();
  v13 = swift_dynamicCastObjCClassUnconditional();
  sub_24A508FA4(&qword_27EF4FA78, &qword_24A636E60);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_24A633830;
  *(v14 + 56) = sub_24A50D7EC(0, &qword_27EF502B0, 0x277CD9EA0);
  *(v14 + 32) = v5;
  v15 = v5;
  v16 = sub_24A62ED54();

  [v13 setFilters_];

  v17 = [v8 layer];
  [v17 setAllowsHitTesting_];

  v18 = [objc_opt_self() clearColor];
  [v8 setBackgroundColor_];

  return v8;
}

id sub_24A56A138()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BlurBackgroundView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_24A56A1A4()
{
  result = qword_27EF502C0;
  if (!qword_27EF502C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF502C0);
  }

  return result;
}

unint64_t sub_24A56A1F8()
{
  result = qword_27EF502C8;
  if (!qword_27EF502C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF502C8);
  }

  return result;
}

uint64_t sub_24A56A260()
{
  v0 = sub_24A62E314();
  sub_24A56A3FC(v0, qword_27EF5C100);
  sub_24A506EB8(v0, qword_27EF5C100);
  return sub_24A62E304();
}

uint64_t sub_24A56A2E0()
{
  v0 = sub_24A62E314();
  sub_24A56A3FC(v0, qword_27EF5C118);
  sub_24A506EB8(v0, qword_27EF5C118);
  return sub_24A62E304();
}

uint64_t sub_24A56A384(uint64_t a1, uint64_t *a2)
{
  v3 = sub_24A62E314();
  sub_24A56A3FC(v3, a2);
  sub_24A506EB8(v3, a2);
  return sub_24A62E304();
}

uint64_t *sub_24A56A3FC(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t FMR1WKRotationModel.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = [objc_allocWithZone(MEMORY[0x277CC1CD8]) init];
  *(v0 + 40) = 0;
  *(v0 + 48) = 1;
  return v0;
}

uint64_t FMR1WKRotationModel.init()()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = [objc_allocWithZone(MEMORY[0x277CC1CD8]) init];
  *(v0 + 40) = 0;
  *(v0 + 48) = 1;
  return v0;
}

void sub_24A56A504(void *a1)
{
  if (a1)
  {
    if (*(v1 + 16))
    {
      v3 = *(v1 + 16);

      v4 = a1;
      [v4 heading];
      v6 = v5;
      if (*(v1 + 48))
      {
LABEL_18:

        *(v1 + 40) = v6;
        *(v1 + 48) = 0;
        return;
      }

      v7 = v5 - *(v1 + 40);
      if (v7 >= -180.0)
      {
        if (v7 <= 180.0)
        {
          goto LABEL_16;
        }

        v8 = -360.0;
      }

      else
      {
        v8 = 360.0;
      }

      v7 = v7 + v8;
LABEL_16:
      v14 = *(v1 + 24);
      v15 = round((v7 + v14) * 100.0) / 100.0;
      if (v15 != v14)
      {
        v16 = v15;
        *(v1 + 24) = v16;
        sub_24A584370();
        swift_getKeyPath();
        swift_getKeyPath();
        sub_24A62E354();

        swift_getKeyPath();
        swift_getKeyPath();

        sub_24A62E364();
        sub_24A589A98(v18);
      }

      goto LABEL_18;
    }

    v9 = qword_27EF4E990;
    v17 = a1;
    if (v9 != -1)
    {
      swift_once();
    }

    v10 = sub_24A62E314();
    sub_24A506EB8(v10, qword_27EF5C0E8);
    v11 = sub_24A62E2F4();
    v12 = sub_24A62EF64();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_24A503000, v11, v12, "VFXManager not defined.  Unable to update UI", v13, 2u);
      MEMORY[0x24C21BBE0](v13, -1, -1);
    }
  }
}

void sub_24A56A7C8()
{
  v1 = v0;
  if (qword_27EF4E990 != -1)
  {
    swift_once();
  }

  v2 = sub_24A62E314();
  sub_24A506EB8(v2, qword_27EF5C0E8);
  v3 = sub_24A62E2F4();
  v4 = sub_24A62EF64();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_24A503000, v3, v4, "starting motion updates", v5, 2u);
    MEMORY[0x24C21BBE0](v5, -1, -1);
  }

  [*(v1 + 32) setDeviceMotionUpdateInterval_];
  v6 = *(v1 + 32);
  v7 = objc_opt_self();
  v8 = v6;
  v9 = [v7 mainQueue];
  v10 = swift_allocObject();
  swift_weakInit();
  v12[4] = sub_24A56AC40;
  v12[5] = v10;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_24A5D30FC;
  v12[3] = &unk_285DA5910;
  v11 = _Block_copy(v12);

  [v8 startDeviceMotionUpdatesUsingReferenceFrame:4 toQueue:v9 withHandler:v11];
  _Block_release(v11);
}

uint64_t sub_24A56A9BC(void *a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_24A56A504(a1);
  }

  return result;
}

id sub_24A56AA1C()
{
  v1 = v0;
  if (qword_27EF4E990 != -1)
  {
    swift_once();
  }

  v2 = sub_24A62E314();
  sub_24A506EB8(v2, qword_27EF5C0E8);
  v3 = sub_24A62E2F4();
  v4 = sub_24A62EF64();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_24A503000, v3, v4, "Stopping motion updates", v5, 2u);
    MEMORY[0x24C21BBE0](v5, -1, -1);
  }

  v6 = *(v1 + 32);

  return [v6 stopDeviceMotionUpdates];
}

uint64_t FMR1WKRotationModel.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t FMR1WKRotationModel.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_24A56AB7C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for FMR1WKRotationModel();
  result = sub_24A62E334();
  *a1 = result;
  return result;
}

uint64_t sub_24A56AC08()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24A56AC48(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

__n128 sub_24A56AC78(uint64_t a1, uint64_t a2)
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

uint64_t sub_24A56AC9C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_24A56ACE4(uint64_t result, int a2, int a3)
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
      *(result + 56) = (a2 - 1);
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

double sub_24A56AD48()
{
  v0 = [objc_opt_self() whiteColor];
  v1 = [v0 colorWithAlphaComponent_];

  xmmword_27EF502D0 = xmmword_24A6364F0;
  qword_27EF502E0 = 16;
  *algn_27EF502E8 = xmmword_24A636500;
  *(&xmmword_27EF502F0 + 8) = xmmword_24A636510;
  qword_27EF50308 = v1;
  result = 0.5;
  xmmword_27EF50310 = xmmword_24A636520;
  qword_27EF50320 = 0x4040000000000000;
  return result;
}

double sub_24A56ADF8()
{
  v0 = [objc_opt_self() whiteColor];
  v1 = [v0 colorWithAlphaComponent_];

  xmmword_27EF50328 = xmmword_24A6364F0;
  qword_27EF50338 = 16;
  unk_27EF50340 = xmmword_24A636500;
  *(&xmmword_27EF50348 + 8) = xmmword_24A636510;
  qword_27EF50360 = v1;
  result = 0.5;
  xmmword_27EF50368 = xmmword_24A636520;
  qword_27EF50378 = 0x4040000000000000;
  return result;
}

uint64_t sub_24A56AFEC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t), void (*a4)(unint64_t, uint64_t), void (*a5)(void))
{
  v6 = v5;
  if (a1)
  {
    v10 = *v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v29 = *v5;
    a3(a1, a2, isUniquelyReferenced_nonNull_native);
    v12 = sub_24A62E214();
    result = (*(*(v12 - 8) + 8))(a2, v12);
    *v5 = v29;
  }

  else
  {
    v16 = *v5;
    v17 = sub_24A515AC8(a2);
    if (v18)
    {
      v19 = v17;
      v20 = *v6;
      v21 = swift_isUniquelyReferenced_nonNull_native();
      v22 = *v6;
      v30 = *v6;
      if (!v21)
      {
        a5();
        v22 = v30;
      }

      v23 = *(v22 + 48);
      v24 = sub_24A62E214();
      v25 = *(v24 - 8);
      v26 = *(v25 + 8);
      v26(v23 + *(v25 + 72) * v19, v24);

      a4(v19, v22);
      result = (v26)(a2, v24);
      *v6 = v22;
    }

    else
    {
      v27 = sub_24A62E214();
      v28 = *(*(v27 - 8) + 8);

      return v28(a2, v27);
    }
  }

  return result;
}

unint64_t sub_24A56B280@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24A575B08(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_24A56B35C@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24A575B18(*a1);
  *a2 = result;
  return result;
}

id sub_24A56B438(uint64_t *a1, char *a2)
{
  v2[OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_itemLocalizerState] = 0;
  v2[OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_itemState] = 0;
  v2[OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_activity] = 0;
  v2[OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_hasCalledConfigure] = 0;
  v2[OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_rangingOnly] = 0;
  v2[OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_stopAsked] = 0;
  *&v2[OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_error] = 0;
  *&v2[OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_releaseItemLocalizerWorkItem] = 0;
  *&v2[OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_subscriptions] = MEMORY[0x277D84F90];
  v4 = *a2;
  v5 = &v2[OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_backgroundTaskID];
  *v5 = 0;
  v5[8] = 1;
  *&v2[OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_updateRangeEstimateLogCounter] = 0;
  v6 = &v2[OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_lastLoggedRangeEstimate];
  *v6 = 0;
  v6[4] = 1;
  v7 = &v2[OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_incrementItemLocalizerHandler];
  *v7 = 0;
  v7[1] = 0;
  v8 = &v2[OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_decrementItemLocalizerHandler];
  *v8 = 0;
  v8[1] = 0;
  v2[OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_applicationIsInBackground] = 0;
  *&v2[OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_itemLocalizer] = 0;
  sub_24A508AE4(a1, &v2[OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_findable]);
  v2[OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_connectionContext] = v4;
  v24.receiver = v2;
  v24.super_class = type metadata accessor for FMR1ItemLocalizerContext();
  v9 = objc_msgSendSuper2(&v24, sel_init);
  v10 = qword_27EF4E9A0;
  v11 = v9;
  if (v10 != -1)
  {
    swift_once();
  }

  v12 = sub_24A62E314();
  sub_24A506EB8(v12, qword_27EF5C118);
  v13 = sub_24A62E2F4();
  v14 = sub_24A62EF64();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v23 = v16;
    *v15 = 136315138;
    v17 = [v11 description];
    v18 = sub_24A62EC14();
    v20 = v19;

    v21 = sub_24A509BA8(v18, v20, &v23);

    *(v15 + 4) = v21;
    _os_log_impl(&dword_24A503000, v13, v14, "🧭 FMR1PrxContxt%s: init", v15, 0xCu);
    sub_24A508C54(v16);
    MEMORY[0x24C21BBE0](v16, -1, -1);
    MEMORY[0x24C21BBE0](v15, -1, -1);
  }

  sub_24A508C54(a1);
  return v11;
}

uint64_t sub_24A56B750()
{
  v1 = v0;
  v2 = sub_24A62F784();
  v4 = v3;
  sub_24A62F384();

  sub_24A516B88(9, v2, v4);
  v6 = v5;
  v8 = v7;

  v25 = 7876668;
  v26 = 0xE300000000000000;
  v22[2] = v6;
  v23 = v8;
  sub_24A55B6E8();
  sub_24A62ECA4();

  v22[0] = 7876668;
  v22[1] = 0xE300000000000000;

  MEMORY[0x24C21A5D0](15939, 0xE200000000000000);

  MEMORY[0x24C21A5D0](7876668, 0xE300000000000000);

  MEMORY[0x24C21A5D0](0x25202C2740252720, 0xEE003E6275732064);
  sub_24A508FA4(&qword_27EF50530, qword_24A636270);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_24A633A00;
  sub_24A508AE4(v0 + OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_findable, v22);
  v10 = v23;
  v11 = v24;
  sub_24A50A204(v22, v23);
  v12 = (*(v11 + 8))(v10, v11);
  v14 = v13;
  *(v9 + 56) = MEMORY[0x277D837D0];
  *(v9 + 64) = sub_24A508FEC();
  *(v9 + 32) = v12;
  *(v9 + 40) = v14;
  v15 = OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_subscriptions;
  swift_beginAccess();
  v16 = *(v1 + v15);
  if (v16 >> 62)
  {
    if (v16 < 0)
    {
      v21 = *(v1 + v15);
    }

    v17 = sub_24A62F464();
  }

  else
  {
    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v18 = MEMORY[0x277D83C10];
  *(v9 + 96) = MEMORY[0x277D83B88];
  *(v9 + 104) = v18;
  *(v9 + 72) = v17;
  sub_24A508C54(v22);
  v19 = sub_24A62EC24();

  return v19;
}

uint64_t sub_24A56BAB8(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_subscriptions;
  swift_beginAccess();
  v15 = v1;
  v3 = *&v1[v2];
  if (v3 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_24A62F464())
  {

    if (!i)
    {
      break;
    }

    for (j = 0; ; ++j)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x24C21ACB0](j, v3);
      }

      else
      {
        if (j >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v6 = *(v3 + 8 * j + 32);
      }

      v7 = v6;
      v8 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v9 = &v6[OBJC_IVAR____TtC11FMFindingUI32FMR1ProximityManagerSubscription_subscriber];
      if (swift_unknownObjectWeakLoadStrong())
      {
        v10 = *(v9 + 1);
        ObjectType = swift_getObjectType();
        v16[3] = type metadata accessor for FMR1ItemLocalizerContext();
        v16[4] = &off_285DA5BB8;
        v12 = v15;

        v16[0] = v12;
        (*(v10 + 16))(a1, v16, ObjectType, v10);
        swift_unknownObjectRelease();
        sub_24A508C54(v16);
      }

      else
      {
      }

      if (v8 == i)
      {
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }
}

uint64_t sub_24A56BCB8(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_subscriptions;
  swift_beginAccess();
  v15 = v1;
  v3 = *&v1[v2];
  if (v3 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_24A62F464())
  {

    if (!i)
    {
      break;
    }

    for (j = 0; ; ++j)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x24C21ACB0](j, v3);
      }

      else
      {
        if (j >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v6 = *(v3 + 8 * j + 32);
      }

      v7 = v6;
      v8 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v9 = &v6[OBJC_IVAR____TtC11FMFindingUI32FMR1ProximityManagerSubscription_subscriber];
      if (swift_unknownObjectWeakLoadStrong())
      {
        v10 = *(v9 + 1);
        ObjectType = swift_getObjectType();
        v16[3] = type metadata accessor for FMR1ItemLocalizerContext();
        v16[4] = &off_285DA5BB8;
        v12 = v15;

        v16[0] = v12;
        (*(v10 + 24))(a1, v16, ObjectType, v10);
        swift_unknownObjectRelease();
        sub_24A508C54(v16);
      }

      else
      {
      }

      if (v8 == i)
      {
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }
}

uint64_t sub_24A56BEB8(unint64_t a1)
{
  v2 = sub_24A575AF0(a1);
  if (v2 == 5)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  v37 = v3;
  v1[OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_itemLocalizerState] = v3;
  if (qword_27EF4E9A0 != -1)
  {
    goto LABEL_35;
  }

  while (1)
  {
    v4 = sub_24A62E314();
    sub_24A506EB8(v4, qword_27EF5C118);
    v5 = v1;
    v6 = sub_24A62E2F4();
    v7 = sub_24A62EF64();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v39[0] = v10;
      v11 = 0xE700000000000000;
      v12 = 0x6E776F6E6B6E75;
      *v8 = 138412546;
      *(v8 + 4) = v5;
      *v9 = v5;
      *(v8 + 12) = 2080;
      v13 = 0xE500000000000000;
      v14 = 0x7964616572;
      v15 = 0xE500000000000000;
      v16 = 0x726F727265;
      if (v37 != 3)
      {
        v16 = 0x666F206574617473;
        v15 = 0xE900000000000066;
      }

      if (v37 != 2)
      {
        v14 = v16;
        v13 = v15;
      }

      if (v37)
      {
        v12 = 0x6461657220746F6ELL;
        v11 = 0xE900000000000079;
      }

      if (v37 <= 1u)
      {
        v17 = v12;
      }

      else
      {
        v17 = v14;
      }

      if (v37 <= 1u)
      {
        v18 = v11;
      }

      else
      {
        v18 = v13;
      }

      v19 = v10;
      v20 = v5;
      v21 = sub_24A509BA8(v17, v18, v39);

      *(v8 + 14) = v21;
      _os_log_impl(&dword_24A503000, v6, v7, "🧭 FMR1PrxContxt%@: %s for ranging", v8, 0x16u);
      sub_24A50D6A4(v9, &qword_27EF4FED0, &unk_24A635E00);
      MEMORY[0x24C21BBE0](v9, -1, -1);
      sub_24A508C54(v19);
      MEMORY[0x24C21BBE0](v19, -1, -1);
      MEMORY[0x24C21BBE0](v8, -1, -1);
    }

    v1 = v5;
    sub_24A5708B8();
    v38 = v5;
    v22 = OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_subscriptions;
    swift_beginAccess();
    v23 = *&v38[v22];
    if (v23 >> 62)
    {
      if (v23 < 0)
      {
        v36 = *&v38[v22];
      }

      v24 = sub_24A62F464();
    }

    else
    {
      v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v24)
    {
    }

    for (i = 0; ; ++i)
    {
      if ((v23 & 0xC000000000000001) != 0)
      {
        v26 = MEMORY[0x24C21ACB0](i, v23);
      }

      else
      {
        if (i >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_34;
        }

        v26 = *(v23 + 8 * i + 32);
      }

      v27 = v26;
      v28 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      v29 = &v26[OBJC_IVAR____TtC11FMFindingUI32FMR1ProximityManagerSubscription_subscriber];
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v1 = Strong;
        v31 = *(v29 + 1);
        ObjectType = swift_getObjectType();
        v39[3] = type metadata accessor for FMR1ItemLocalizerContext();
        v39[4] = &off_285DA5BB8;
        v39[0] = v38;
        v33 = *(v31 + 32);
        v34 = v38;
        v33(v37, v39, ObjectType, v31);
        swift_unknownObjectRelease();

        sub_24A508C54(v39);
      }

      else
      {
      }

      if (v28 == v24)
      {
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    swift_once();
  }
}

void sub_24A56C2C8(uint64_t a1)
{
  if (a1 == 3)
  {
    v3 = 3;
    v2 = &OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_activity;
    v4 = 3;
  }

  else if (a1 == 2)
  {
    v3 = 0;
    v4 = 2;
    v1[OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_activity] = 2;
    v2 = &OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_stopAsked;
  }

  else
  {
    v2 = &OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_activity;
    if (a1 != 1)
    {
      v2 = &OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_activity;
    }

    v3 = a1 == 1;
    v4 = a1 == 1;
  }

  v1[*v2] = v3;
  if (qword_27EF4E9A0 != -1)
  {
    swift_once();
  }

  v5 = sub_24A62E314();
  sub_24A506EB8(v5, qword_27EF5C118);
  v6 = v1;
  v7 = sub_24A62E2F4();
  v8 = sub_24A62EF64();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v23 = v11;
    *v9 = 138412802;
    *(v9 + 4) = v6;
    *v10 = v6;
    *(v9 + 12) = 2080;
    if (v6[OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_rangingOnly])
    {
      v12 = 0x676E69676E617228;
    }

    else
    {
      v12 = 0x7A696C61636F6C28;
    }

    if (v6[OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_rangingOnly])
    {
      v13 = 0xEE0029796C6E6F20;
    }

    else
    {
      v13 = 0xEB00000000297265;
    }

    v14 = v6;
    v15 = sub_24A509BA8(v12, v13, &v23);

    v16 = 0xE700000000000000;
    *(v9 + 14) = v15;
    *(v9 + 22) = 2080;
    v17 = 0x6E776F6E6B6E75;
    v18 = 0xE700000000000000;
    v19 = 0x646570706F7473;
    if (v4 != 2)
    {
      v19 = 0x6164696C61766E69;
      v18 = 0xEB00000000646574;
    }

    if (v4)
    {
      v17 = 0x617473206C6C6977;
      v16 = 0xEA00000000007472;
    }

    if (v4 <= 1)
    {
      v20 = v17;
    }

    else
    {
      v20 = v19;
    }

    if (v4 <= 1)
    {
      v21 = v16;
    }

    else
    {
      v21 = v18;
    }

    v22 = sub_24A509BA8(v20, v21, &v23);

    *(v9 + 24) = v22;
    _os_log_impl(&dword_24A503000, v7, v8, "🧭 FMR1PrxContxt%@: activity %s is '%s'", v9, 0x20u);
    sub_24A50D6A4(v10, &qword_27EF4FED0, &unk_24A635E00);
    MEMORY[0x24C21BBE0](v10, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C21BBE0](v11, -1, -1);
    MEMORY[0x24C21BBE0](v9, -1, -1);
  }

  sub_24A5708B8();
}

uint64_t sub_24A56C640(unint64_t a1)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    goto LABEL_69;
  }

  v3 = sub_24A575B08(a1);
  if (v3 == 9)
  {
    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  v45 = v4;
  if (a1 == 1)
  {
    v1[OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_itemState] = v4;
  }

  if (qword_27EF4E9A0 != -1)
  {
    goto LABEL_70;
  }

  while (1)
  {
    v5 = sub_24A62E314();
    sub_24A506EB8(v5, qword_27EF5C118);
    v6 = v1;
    v7 = sub_24A62E2F4();
    v8 = sub_24A62EF64();

    v44 = v6;
    if (os_log_type_enabled(v7, v8))
    {
      v9 = 0x6E776F6E6B6E75;
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v46[0] = v12;
      *v10 = 138412802;
      *(v10 + 4) = v6;
      *v11 = v6;
      *(v10 + 12) = 2080;
      if (v45 <= 3u)
      {
        v20 = 0xE700000000000000;
        v21 = 0xEC000000676E6974;
        if (v45 != 2)
        {
          v21 = 0xEB00000000646574;
        }

        v22 = 0x656C6261646E6966;
        if (v45)
        {
          v20 = 0xE800000000000000;
        }

        else
        {
          v22 = 0x6E776F6E6B6E75;
        }

        v18 = v45 <= 1u ? v22 : 0x63656E6E6F636572;
        v19 = v45 <= 1u ? v20 : v21;
      }

      else
      {
        v13 = 0xE500000000000000;
        v14 = 0x6573556E69;
        v15 = 0x800000024A63CF90;
        v16 = 0xD00000000000001ELL;
        if (v45 != 7)
        {
          v16 = 0xD000000000000014;
          v15 = 0x800000024A63CFB0;
        }

        if (v45 != 6)
        {
          v14 = v16;
          v13 = v15;
        }

        v17 = 0x4D64657472617473;
        if (v45 != 4)
        {
          v17 = 0x4D646570706F7473;
        }

        v18 = v45 <= 5u ? v17 : v14;
        v19 = v45 <= 5u ? 0xED0000676E69766FLL : v13;
      }

      v23 = v6;
      v24 = sub_24A509BA8(v18, v19, v46);

      *(v10 + 14) = v24;
      *(v10 + 22) = 2080;
      v25 = v23[OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_itemState];
      if (v25 <= 3)
      {
        if (v23[OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_itemState] > 1u)
        {
          v9 = 0x63656E6E6F636572;
          v26 = v25 == 2 ? 0xEC000000676E6974 : 0xEB00000000646574;
        }

        else if (v23[OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_itemState])
        {
          v26 = 0xE800000000000000;
          v9 = 0x656C6261646E6966;
        }

        else
        {
          v26 = 0xE700000000000000;
        }
      }

      else if (v23[OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_itemState] <= 5u)
      {
        v27 = v25 == 4 ? 0x657472617473 : 0x6570706F7473;
        v9 = v27 & 0xFFFFFFFFFFFFLL | 0x4D64000000000000;
        v26 = 0xED0000676E69766FLL;
      }

      else if (v25 == 6)
      {
        v26 = 0xE500000000000000;
        v9 = 0x6573556E69;
      }

      else if (v25 == 7)
      {
        v26 = 0x800000024A63CF90;
        v9 = 0xD00000000000001ELL;
      }

      else
      {
        v9 = 0xD000000000000014;
        v26 = 0x800000024A63CFB0;
      }

      v28 = sub_24A509BA8(v9, v26, v46);

      *(v10 + 24) = v28;
      _os_log_impl(&dword_24A503000, v7, v8, "🧭 FMR1PrxContxt%@: is %s (active: %s)", v10, 0x20u);
      sub_24A50D6A4(v11, &qword_27EF4FED0, &unk_24A635E00);
      MEMORY[0x24C21BBE0](v11, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x24C21BBE0](v12, -1, -1);
      MEMORY[0x24C21BBE0](v10, -1, -1);
    }

    else
    {
    }

    v1 = v6;
    sub_24A5708B8();
    v29 = OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_subscriptions;
    swift_beginAccess();
    v30 = *&v6[v29];
    if (v30 >> 62)
    {
      if (v30 < 0)
      {
        v43 = *&v6[v29];
      }

      v31 = sub_24A62F464();
    }

    else
    {
      v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v31)
    {
    }

    for (i = 0; ; ++i)
    {
      if ((v30 & 0xC000000000000001) != 0)
      {
        v33 = MEMORY[0x24C21ACB0](i, v30);
      }

      else
      {
        if (i >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_68;
        }

        v33 = *(v30 + 8 * i + 32);
      }

      v34 = v33;
      v35 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      v36 = &v33[OBJC_IVAR____TtC11FMFindingUI32FMR1ProximityManagerSubscription_subscriber];
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v1 = Strong;
        v38 = *(v36 + 1);
        ObjectType = swift_getObjectType();
        v46[3] = type metadata accessor for FMR1ItemLocalizerContext();
        v46[4] = &off_285DA5BB8;
        v46[0] = v44;
        v40 = *(v38 + 40);
        v41 = v44;
        v40(v45, v46, ObjectType, v38);
        swift_unknownObjectRelease();

        sub_24A508C54(v46);
      }

      else
      {
      }

      if (v35 == v31)
      {
      }
    }

    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    swift_once();
  }
}

uint64_t sub_24A56CC74(id a1)
{
  v3 = a1;
  v4 = OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_updateRangeEstimateLogCounter;
  v5 = *&v1[OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_updateRangeEstimateLogCounter];
  if (0xEEEEEEEEEEEEEEEFLL * v5 + 0x888888888888888 <= 0x1111111111111110)
  {
    [a1 range];
    v7 = &v1[OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_lastLoggedRangeEstimate];
    v8 = *&v1[OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_lastLoggedRangeEstimate];
    if (v1[OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_lastLoggedRangeEstimate + 4])
    {
      v8 = 3.4028e38;
    }

    if (vabds_f32(v6, v8) >= 0.01)
    {
      sub_24A508FA4(&qword_27EF50530, qword_24A636270);
      v9 = v1;
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_24A636580;
      *(v10 + 56) = type metadata accessor for FMR1ItemLocalizerContext();
      *(v10 + 64) = sub_24A5763C4(&qword_27EF50538, v11, type metadata accessor for FMR1ItemLocalizerContext);
      *(v10 + 32) = v9;
      v12 = v9;
      v13 = v3;
      [v3 range];
      v14 = MEMORY[0x277D83B08];
      *(v10 + 96) = MEMORY[0x277D83A90];
      *(v10 + 104) = v14;
      *(v10 + 72) = v15;
      v16 = v12[OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_itemState];
      v17 = MEMORY[0x277D83C10];
      *(v10 + 136) = MEMORY[0x277D83B88];
      *(v10 + 144) = v17;
      *(v10 + 112) = v16;
      v18 = sub_24A62EC24();
      v2 = v19;
      if (qword_27EF4E9A0 != -1)
      {
        swift_once();
      }

      v20 = sub_24A62E314();
      sub_24A506EB8(v20, qword_27EF5C118);

      v21 = sub_24A62E2F4();
      v22 = sub_24A62EF64();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v45[0] = v24;
        *v23 = 136315138;
        v25 = sub_24A509BA8(v18, v2, v45);

        *(v23 + 4) = v25;
        _os_log_impl(&dword_24A503000, v21, v22, "%s", v23, 0xCu);
        sub_24A508C54(v24);
        MEMORY[0x24C21BBE0](v24, -1, -1);
        MEMORY[0x24C21BBE0](v23, -1, -1);
      }

      else
      {
      }

      v1 = v44;
      v3 = v13;
    }

    [v3 range];
    *v7 = v26;
    v7[4] = 0;
    v5 = *&v1[v4];
  }

  v27 = __OFADD__(v5, 1);
  v28 = v5 + 1;
  if (v27)
  {
    goto LABEL_29;
  }

  *&v1[v4] = v28;
  v29 = OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_subscriptions;
  swift_beginAccess();
  v2 = *&v1[v29];
  v43 = v3;
  if (v2 >> 62)
  {
    goto LABEL_30;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_24A62F464())
  {

    if (!i)
    {
      break;
    }

    for (j = 0; ; ++j)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v32 = MEMORY[0x24C21ACB0](j, v2);
      }

      else
      {
        if (j >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_28;
        }

        v32 = *(v2 + 8 * j + 32);
      }

      v33 = v32;
      v34 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v35 = &v32[OBJC_IVAR____TtC11FMFindingUI32FMR1ProximityManagerSubscription_subscriber];
      if (swift_unknownObjectWeakLoadStrong())
      {
        v36 = *(v35 + 1);
        ObjectType = swift_getObjectType();
        [v43 range];
        v39 = v38;
        v45[3] = type metadata accessor for FMR1ItemLocalizerContext();
        v45[4] = &off_285DA5BB8;
        v45[0] = v44;
        v40 = *(v36 + 48);
        v41 = v44;
        v40(v45, ObjectType, v36, v39);
        swift_unknownObjectRelease();

        sub_24A508C54(v45);
      }

      else
      {
      }

      if (v34 == i)
      {
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    ;
  }
}

uint64_t sub_24A56D15C(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_subscriptions;
  swift_beginAccess();
  v3 = *&v1[v2];
  if (v3 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_24A62F464())
  {

    if (!i)
    {
      break;
    }

    for (j = 0; ; ++j)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x24C21ACB0](j, v3);
      }

      else
      {
        if (j >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v6 = *(v3 + 8 * j + 32);
      }

      v7 = v6;
      v8 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v9 = &v6[OBJC_IVAR____TtC11FMFindingUI32FMR1ProximityManagerSubscription_subscriber];
      if (swift_unknownObjectWeakLoadStrong())
      {
        v10 = *(v9 + 1);
        ObjectType = swift_getObjectType();
        v16[3] = type metadata accessor for FMR1ItemLocalizerContext();
        v16[4] = &off_285DA5BB8;
        v16[0] = v1;
        v12 = *(v10 + 56);
        v13 = v1;
        v12(a1, v16, ObjectType, v10);
        swift_unknownObjectRelease();

        sub_24A508C54(v16);
      }

      else
      {
      }

      if (v8 == i)
      {
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }
}

uint64_t sub_24A56D35C(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_subscriptions;
  swift_beginAccess();
  v3 = *&v1[v2];
  if (v3 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_24A62F464())
  {

    if (!i)
    {
      break;
    }

    for (j = 0; ; ++j)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x24C21ACB0](j, v3);
      }

      else
      {
        if (j >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v6 = *(v3 + 8 * j + 32);
      }

      v7 = v6;
      v8 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v9 = &v6[OBJC_IVAR____TtC11FMFindingUI32FMR1ProximityManagerSubscription_subscriber];
      if (swift_unknownObjectWeakLoadStrong())
      {
        v10 = *(v9 + 1);
        ObjectType = swift_getObjectType();
        v16[3] = type metadata accessor for FMR1ItemLocalizerContext();
        v16[4] = &off_285DA5BB8;
        v16[0] = v1;
        v12 = *(v10 + 64);
        v13 = v1;
        v12(a1, v16, ObjectType, v10);
        swift_unknownObjectRelease();

        sub_24A508C54(v16);
      }

      else
      {
      }

      if (v8 == i)
      {
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }
}

uint64_t sub_24A56D558(void *a1)
{
  LODWORD(v2) = [a1 BOOLValue];
  if (qword_27EF4E9A0 != -1)
  {
    goto LABEL_26;
  }

  while (1)
  {
    v3 = sub_24A62E314();
    sub_24A506EB8(v3, qword_27EF5C118);
    v4 = v1;
    v5 = sub_24A62E2F4();
    v6 = sub_24A62EF64();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v31[0] = v9;
      *v7 = 138412546;
      *(v7 + 4) = v4;
      *v8 = v4;
      *(v7 + 12) = 2080;
      v10 = v2 == 0;
      if (v2)
      {
        v11 = 1702195828;
      }

      else
      {
        v11 = 0x65736C6166;
      }

      if (v10)
      {
        v12 = 0xE500000000000000;
      }

      else
      {
        v12 = 0xE400000000000000;
      }

      v13 = v4;
      v14 = sub_24A509BA8(v11, v12, v31);

      *(v7 + 14) = v14;
      _os_log_impl(&dword_24A503000, v5, v6, "🧭 FMR1PrxContxt%@: path-is-degenerate is %s for item", v7, 0x16u);
      sub_24A50D6A4(v8, &qword_27EF4FED0, &unk_24A635E00);
      MEMORY[0x24C21BBE0](v8, -1, -1);
      sub_24A508C54(v9);
      MEMORY[0x24C21BBE0](v9, -1, -1);
      MEMORY[0x24C21BBE0](v7, -1, -1);
    }

    v1 = v4;
    v29 = v4;
    v15 = OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_subscriptions;
    swift_beginAccess();
    v2 = *&v1[v15];
    if (v2 >> 62)
    {
      if (v2 < 0)
      {
        v28 = *&v1[v15];
      }

      v16 = sub_24A62F464();
    }

    else
    {
      v16 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v16)
    {
    }

    for (i = 0; ; ++i)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x24C21ACB0](i, v2);
      }

      else
      {
        if (i >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v18 = *(v2 + 8 * i + 32);
      }

      v19 = v18;
      v20 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      v21 = &v18[OBJC_IVAR____TtC11FMFindingUI32FMR1ProximityManagerSubscription_subscriber];
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v1 = Strong;
        v23 = *(v21 + 1);
        ObjectType = swift_getObjectType();
        v31[3] = type metadata accessor for FMR1ItemLocalizerContext();
        v31[4] = &off_285DA5BB8;
        v31[0] = v29;
        v25 = *(v23 + 72);
        v26 = v29;
        v25(a1, v31, ObjectType, v23);
        swift_unknownObjectRelease();

        sub_24A508C54(v31);
      }

      else
      {
      }

      if (v20 == v16)
      {
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    swift_once();
  }
}

uint64_t sub_24A56D8F4(void *a1)
{
  v2 = a1;
  v3 = *&v1[OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_error];
  *&v1[OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_error] = a1;
  v4 = a1;

  if (qword_27EF4E9A0 != -1)
  {
    goto LABEL_20;
  }

  while (1)
  {
    v5 = sub_24A62E314();
    sub_24A506EB8(v5, qword_27EF5C118);
    v6 = v2;
    v7 = v1;
    v8 = sub_24A62E2F4();
    v9 = sub_24A62EF64();

    v31 = v2;
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v32[0] = v12;
      *v10 = 138412546;
      *(v10 + 4) = v7;
      *v11 = v7;
      *(v10 + 12) = 2080;
      swift_getErrorValue();
      v13 = v7;
      v14 = sub_24A62F6A4();
      v16 = sub_24A509BA8(v14, v15, v32);

      *(v10 + 14) = v16;
      _os_log_impl(&dword_24A503000, v8, v9, "🧭 FMR1PrxContxt%@: item localizer failed (%s)", v10, 0x16u);
      sub_24A50D6A4(v11, &qword_27EF4FED0, &unk_24A635E00);
      MEMORY[0x24C21BBE0](v11, -1, -1);
      sub_24A508C54(v12);
      MEMORY[0x24C21BBE0](v12, -1, -1);
      MEMORY[0x24C21BBE0](v10, -1, -1);
    }

    v1 = v7;
    sub_24A5708B8();
    v17 = OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_subscriptions;
    swift_beginAccess();
    v18 = *&v7[v17];
    v30 = v7;
    v2 = v18 >> 62 ? sub_24A62F464() : *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v2)
    {
    }

    for (i = 0; ; ++i)
    {
      if ((v18 & 0xC000000000000001) != 0)
      {
        v20 = MEMORY[0x24C21ACB0](i, v18);
      }

      else
      {
        if (i >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v20 = *(v18 + 8 * i + 32);
      }

      v21 = v20;
      v22 = (i + 1);
      if (__OFADD__(i, 1))
      {
        break;
      }

      v23 = &v20[OBJC_IVAR____TtC11FMFindingUI32FMR1ProximityManagerSubscription_subscriber];
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v1 = Strong;
        v25 = *(v23 + 1);
        ObjectType = swift_getObjectType();
        v32[3] = type metadata accessor for FMR1ItemLocalizerContext();
        v32[4] = &off_285DA5BB8;
        v32[0] = v30;
        v27 = *(v25 + 80);
        v28 = v30;
        v27(v31, v32, ObjectType, v25);
        swift_unknownObjectRelease();

        sub_24A508C54(v32);
      }

      else
      {
      }

      if (v22 == v2)
      {
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    swift_once();
  }
}

void sub_24A56DC9C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_itemLocalizer;
  v3 = *&v0[OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_itemLocalizer];
  if (v3)
  {
    v4 = v3;
    [v4 setDelegate_];
    v5 = sub_24A62F784();
    v7 = v6;
    if (qword_27EF4E9A0 != -1)
    {
      swift_once();
    }

    v8 = sub_24A62E314();
    sub_24A506EB8(v8, qword_27EF5C118);
    v9 = v0;
    v10 = sub_24A62E2F4();
    v11 = sub_24A62EF64();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v30 = v28;
      *v12 = 138412546;
      *(v12 + 4) = v9;
      *v27 = v9;
      *(v12 + 12) = 2080;
      v13 = v9;
      sub_24A516B88(9, v5, v7);
      v29 = v4;

      sub_24A55B6E8();
      sub_24A62ECA4();

      MEMORY[0x24C21A5D0](15939, 0xE200000000000000);

      v14 = sub_24A509BA8(7876668, 0xE300000000000000, &v30);

      *(v12 + 14) = v14;
      v4 = v29;
      _os_log_impl(&dword_24A503000, v10, v11, "🧭 FMR1PrxContxt%@: released item localizer <%s> and reset state to unknown", v12, 0x16u);
      sub_24A50D6A4(v27, &qword_27EF4FED0, &unk_24A635E00);
      MEMORY[0x24C21BBE0](v27, -1, -1);
      sub_24A508C54(v28);
      MEMORY[0x24C21BBE0](v28, -1, -1);
      MEMORY[0x24C21BBE0](v12, -1, -1);
    }

    else
    {
    }

    v22 = *&v1[v2];
    *&v1[v2] = 0;

    sub_24A56FA54();
    v23 = &v9[OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_decrementItemLocalizerHandler];
    v24 = *&v9[OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_decrementItemLocalizerHandler];
    if (v24)
    {
      v25 = *(v23 + 1);

      v24(v26);

      sub_24A50D844(v24);
    }

    else
    {
    }
  }

  else
  {
    if (qword_27EF4E9A0 != -1)
    {
      swift_once();
    }

    v15 = sub_24A62E314();
    sub_24A506EB8(v15, qword_27EF5C118);
    v16 = v0;
    v17 = sub_24A62E2F4();
    v18 = sub_24A62EF64();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      *(v19 + 4) = v16;
      *v20 = v16;
      v21 = v16;
      _os_log_impl(&dword_24A503000, v17, v18, "🧭 FMR1PrxContxt%@: reset item localizer state to unknown", v19, 0xCu);
      sub_24A50D6A4(v20, &qword_27EF4FED0, &unk_24A635E00);
      MEMORY[0x24C21BBE0](v20, -1, -1);
      MEMORY[0x24C21BBE0](v19, -1, -1);
    }
  }

  v1[OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_itemLocalizerState] = 0;
  v1[OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_itemState] = 0;
  v1[OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_activity] = 0;
  v1[OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_hasCalledConfigure] = 0;
}

uint64_t sub_24A56E0DC()
{
  v0 = sub_24A62EB14();
  v21 = *(v0 - 8);
  v22 = v0;
  v1 = *(v21 + 64);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = sub_24A62EA94();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_24A575F4C;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A5A8458;
  aBlock[3] = &unk_285DA5CA0;
  _Block_copy(aBlock);
  v23 = MEMORY[0x277D84F90];
  sub_24A5763C4(&qword_27EF4F970, 255, MEMORY[0x277D85198]);

  sub_24A508FA4(&unk_27EF50510, &unk_24A633E30);
  sub_24A5238AC(&qword_27EF4F980, &unk_27EF50510, &unk_24A633E30);
  sub_24A62F254();
  v10 = sub_24A62EB44();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  v13 = sub_24A62EB24();

  v14 = *(v20 + OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_releaseItemLocalizerWorkItem);
  *(v20 + OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_releaseItemLocalizerWorkItem) = v13;

  sub_24A545E8C();
  v15 = sub_24A62F014();
  sub_24A62EB04();
  sub_24A62EB54();
  v16 = *(v21 + 8);
  v17 = v4;
  v18 = v22;
  v16(v17, v22);
  sub_24A62EFE4();

  return (v16)(v6, v18);
}

void sub_24A56E408()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (qword_27EF4E9A0 != -1)
    {
      swift_once();
    }

    v2 = sub_24A62E314();
    sub_24A506EB8(v2, qword_27EF5C118);
    v3 = v1;
    v4 = sub_24A62E2F4();
    v5 = sub_24A62EF64();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138412546;
      *(v6 + 4) = v3;
      *v7 = v1;
      *(v6 + 12) = 2048;
      *(v6 + 14) = 0x403D000000000000;
      v8 = v3;
      _os_log_impl(&dword_24A503000, v4, v5, "🧭 FMR1PrxContxt%@: releasing item localizer (unconfiguring) since not started within %f sec", v6, 0x16u);
      sub_24A50D6A4(v7, &qword_27EF4FED0, &unk_24A635E00);
      MEMORY[0x24C21BBE0](v7, -1, -1);
      MEMORY[0x24C21BBE0](v6, -1, -1);
    }

    sub_24A56DC9C();
  }
}

void sub_24A56E58C()
{
  v1 = v0;
  v2 = sub_24A62EA94();
  v3 = *(v2 - 1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24A62EAD4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24A62EAF4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  if (v1[OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_applicationIsInBackground] == 1)
  {
    v86 = &v84 - v19;
    v92 = v2;
    v93 = v18;
    v90 = v7;
    if (qword_27EF4E9A0 != -1)
    {
      swift_once();
    }

    v87 = v11;
    v88 = v8;
    v89 = v6;
    v91 = v3;
    v20 = sub_24A62E314();
    sub_24A506EB8(v20, qword_27EF5C118);
    v21 = v1;
    v22 = sub_24A62E2F4();
    v23 = sub_24A62EF64();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138412290;
      *(v24 + 4) = v21;
      *v25 = v21;
      v26 = v21;
      _os_log_impl(&dword_24A503000, v22, v23, "🧭 FMR1PrxContxt%@: entering background", v24, 0xCu);
      sub_24A50D6A4(v25, &qword_27EF4FED0, &unk_24A635E00);
      MEMORY[0x24C21BBE0](v25, -1, -1);
      MEMORY[0x24C21BBE0](v24, -1, -1);
    }

    v27 = [objc_opt_self() sharedApplication];
    v28 = sub_24A62EBE4();
    v29 = swift_allocObject();
    *(v29 + 16) = v21;
    v98 = sub_24A575C5C;
    v99 = v29;
    aBlock = MEMORY[0x277D85DD0];
    v95 = 1107296256;
    v96 = sub_24A5A8458;
    v97 = &unk_285DA5C00;
    v30 = _Block_copy(&aBlock);
    v31 = v21;

    v32 = [v27 beginBackgroundTaskWithName:v28 expirationHandler:v30];
    _Block_release(v30);

    v33 = &v31[OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_backgroundTaskID];
    *v33 = v32;
    v33[8] = 0;
    sub_24A56DC9C();
    sub_24A545E8C();
    v34 = sub_24A62F014();
    sub_24A62EAE4();
    v35 = v86;
    sub_24A62EB54();
    v85 = *(v13 + 8);
    v85(v17, v93);
    v36 = swift_allocObject();
    *(v36 + 16) = v31;
    v98 = sub_24A575C98;
    v99 = v36;
    aBlock = MEMORY[0x277D85DD0];
    v95 = 1107296256;
    v96 = sub_24A5A8458;
    v97 = &unk_285DA5C50;
    v37 = _Block_copy(&aBlock);
    v38 = v31;

    v39 = v87;
    sub_24A62EAB4();
    aBlock = MEMORY[0x277D84F90];
    sub_24A5763C4(&qword_27EF4F970, 255, MEMORY[0x277D85198]);
    sub_24A508FA4(&unk_27EF50510, &unk_24A633E30);
    sub_24A5238AC(&qword_27EF4F980, &unk_27EF50510, &unk_24A633E30);
    v40 = v89;
    v41 = v92;
    sub_24A62F254();
    MEMORY[0x24C21A910](v35, v39, v40, v37);
    _Block_release(v37);

    (v91[1])(v40, v41);
    (*(v88 + 8))(v39, v90);
    v85(v35, v93);
  }

  else
  {
    v42 = &v1[OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_backgroundTaskID];
    v43 = *MEMORY[0x277D767B0];
    if ((v1[OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_backgroundTaskID + 8] & 1) == 0)
    {
      v44 = *v42;
      if (*v42 != v43)
      {
        v45 = [objc_opt_self() sharedApplication];
        [v45 endBackgroundTask_];
      }
    }

    *v42 = v43;
    v42[8] = 0;
    v46 = OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_itemLocalizer;
    if (*&v1[OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_itemLocalizer])
    {
      if (qword_27EF4E9A0 != -1)
      {
        swift_once();
      }

      v47 = sub_24A62E314();
      sub_24A506EB8(v47, qword_27EF5C118);
      v48 = v1;
      v93 = sub_24A62E2F4();
      v49 = sub_24A62EF64();

      if (os_log_type_enabled(v93, v49))
      {
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        *v50 = 138412290;
        *(v50 + 4) = v48;
        *v51 = v48;
        v52 = v48;
        _os_log_impl(&dword_24A503000, v93, v49, "🧭 FMR1PrxContxt%@: entering foreground", v50, 0xCu);
        sub_24A50D6A4(v51, &qword_27EF4FED0, &unk_24A635E00);
        MEMORY[0x24C21BBE0](v51, -1, -1);
        MEMORY[0x24C21BBE0](v50, -1, -1);
      }

      v53 = v93;
    }

    else
    {
      sub_24A545E8C();
      v54 = sub_24A62F014();
      v55 = objc_allocWithZone(MEMORY[0x277D43C50]);
      v56 = v1;
      v57 = [v55 initWithDelegate:v56 queue:v54];

      aBlock = v57;
      v58 = sub_24A62F784();
      v60 = v59;
      if (qword_27EF4E9A0 != -1)
      {
        swift_once();
      }

      v61 = sub_24A62E314();
      sub_24A506EB8(v61, qword_27EF5C118);
      v62 = v56;
      v63 = sub_24A62E2F4();
      v64 = sub_24A62EF64();

      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        v91 = v66;
        v92 = swift_slowAlloc();
        v102 = v92;
        *v65 = 138412546;
        *(v65 + 4) = v62;
        *v66 = v62;
        *(v65 + 12) = 2080;
        v67 = v62;
        v68 = sub_24A516B88(9, v58, v60);
        LODWORD(v90) = v64;
        v69 = v68;
        v93 = v57;
        v71 = v70;
        v73 = v72;
        v75 = v74;

        v100 = 7876668;
        v101 = 0xE300000000000000;
        aBlock = v69;
        v95 = v71;
        v96 = v73;
        v97 = v75;
        sub_24A55B6E8();
        sub_24A62ECA4();

        aBlock = v100;
        v95 = v101;

        MEMORY[0x24C21A5D0](15939, 0xE200000000000000);

        v76 = sub_24A509BA8(aBlock, v95, &v102);

        *(v65 + 14) = v76;
        v57 = v93;
        _os_log_impl(&dword_24A503000, v63, v90, "🧭 FMR1PrxContxt%@: entering foreground, created item localizer <%s> and will reconfigure", v65, 0x16u);
        v77 = v91;
        sub_24A50D6A4(v91, &qword_27EF4FED0, &unk_24A635E00);
        MEMORY[0x24C21BBE0](v77, -1, -1);
        v78 = v92;
        sub_24A508C54(v92);
        MEMORY[0x24C21BBE0](v78, -1, -1);
        MEMORY[0x24C21BBE0](v65, -1, -1);
      }

      else
      {
      }

      v79 = *&v62[OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_incrementItemLocalizerHandler];
      if (v79)
      {
        v80 = *&v62[OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_incrementItemLocalizerHandler + 8];

        v79(v81);
        sub_24A50D844(v79);
      }

      v82 = *&v1[v46];
      *&v1[v46] = v57;
      v83 = v57;

      sub_24A56FA54();
    }
  }
}

void sub_24A56F04C(_BYTE *a1, const char *a2)
{
  v4 = &a1[OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_backgroundTaskID];
  v5 = *MEMORY[0x277D767B0];
  if ((a1[OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_backgroundTaskID + 8] & 1) == 0)
  {
    v6 = *v4;
    if (*v4 != v5)
    {
      v7 = [objc_opt_self() sharedApplication];
      [v7 endBackgroundTask_];
    }
  }

  *v4 = v5;
  v4[8] = 0;
  if (qword_27EF4E9A0 != -1)
  {
    swift_once();
  }

  v8 = sub_24A62E314();
  sub_24A506EB8(v8, qword_27EF5C118);
  v9 = a1;
  oslog = sub_24A62E2F4();
  v10 = sub_24A62EF64();

  if (os_log_type_enabled(oslog, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    *(v11 + 4) = v9;
    *v12 = v9;
    v13 = v9;
    _os_log_impl(&dword_24A503000, oslog, v10, a2, v11, 0xCu);
    sub_24A50D6A4(v12, &qword_27EF4FED0, &unk_24A635E00);
    MEMORY[0x24C21BBE0](v12, -1, -1);
    MEMORY[0x24C21BBE0](v11, -1, -1);
  }
}

uint64_t sub_24A56F210(void *a1)
{
  if (qword_27EF4E9A0 != -1)
  {
    swift_once();
  }

  v3 = sub_24A62E314();
  sub_24A506EB8(v3, qword_27EF5C118);
  v4 = a1;
  v5 = v1;
  v6 = sub_24A62E2F4();
  v7 = sub_24A62EF64();

  v8 = &unk_27EF5C000;
  if (os_log_type_enabled(v6, v7))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v48[0] = v47;
    *v9 = 138412802;
    *(v9 + 4) = v5;
    *(v9 + 12) = 2112;
    *(v9 + 14) = v4;
    *v10 = v5;
    v10[1] = v4;
    *(v9 + 22) = 2080;
    v11 = &v4[OBJC_IVAR____TtC11FMFindingUI32FMR1ProximityManagerSubscription_subscriber];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v46 = v7;
      v12 = *(v11 + 1);
      ObjectType = swift_getObjectType();
      v14 = *(v12 + 8);
      v15 = v4;
      v16 = v5;
      v17 = v12;
      v7 = v46;
      v18 = v14(ObjectType, v17);
      v8 = &unk_27EF5C000;
      v19 = v18;
      v21 = v20;
      swift_unknownObjectRelease();
    }

    else
    {
      v22 = v4;
      v23 = v5;
      v21 = 0xE100000000000000;
      v19 = 63;
    }

    v24 = sub_24A509BA8(v19, v21, v48);

    *(v9 + 24) = v24;
    _os_log_impl(&dword_24A503000, v6, v7, "🧭 FMR1PrxContxt%@: subscribing %@ for %s", v9, 0x20u);
    sub_24A508FA4(&qword_27EF4FED0, &unk_24A635E00);
    swift_arrayDestroy();
    MEMORY[0x24C21BBE0](v10, -1, -1);
    sub_24A508C54(v47);
    MEMORY[0x24C21BBE0](v47, -1, -1);
    MEMORY[0x24C21BBE0](v9, -1, -1);
  }

  v25 = OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_subscriptions;
  swift_beginAccess();
  v26 = v4;
  MEMORY[0x24C21A660]();
  if (*((*(v5 + v25) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v5 + v25) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v45 = *((*(v5 + v25) & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_24A62ED84();
  }

  sub_24A62EDA4();
  swift_endAccess();
  v27 = &v26[v8[42]];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v28 = *(v27 + 1);
    v29 = swift_getObjectType();
    v30 = *(v5 + OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_itemLocalizerState);
    v49 = type metadata accessor for FMR1ItemLocalizerContext();
    v50 = &off_285DA5BB8;
    v48[0] = v5;
    v31 = *(v28 + 32);
    v32 = v5;
    v31(v30, v48, v29, v28);
    swift_unknownObjectRelease();
    sub_24A508C54(v48);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v34 = *(v27 + 1);
    v35 = swift_getObjectType();
    v36 = *(v5 + OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_itemState);
    v49 = type metadata accessor for FMR1ItemLocalizerContext();
    v50 = &off_285DA5BB8;
    v48[0] = v5;
    v37 = *(v34 + 40);
    v38 = v5;
    v37(v36, v48, v35, v34);
    swift_unknownObjectRelease();
    result = sub_24A508C54(v48);
  }

  v39 = *(v5 + OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_error);
  if (v39)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v40 = *(v27 + 1);
      v41 = swift_getObjectType();
      v49 = type metadata accessor for FMR1ItemLocalizerContext();
      v50 = &off_285DA5BB8;
      v48[0] = v5;
      v42 = *(v40 + 80);
      v43 = v5;
      v44 = v39;
      v42(v39, v48, v41, v40);
      swift_unknownObjectRelease();

      return sub_24A508C54(v48);
    }
  }

  return result;
}

void sub_24A56F63C(void *a1)
{
  if (qword_27EF4E9A0 != -1)
  {
    swift_once();
  }

  v3 = sub_24A62E314();
  sub_24A506EB8(v3, qword_27EF5C118);
  v4 = v1;
  v5 = a1;
  v6 = sub_24A62E2F4();
  v7 = sub_24A62EF64();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412546;
    *(v8 + 4) = v4;
    *(v8 + 12) = 2112;
    *(v8 + 14) = v5;
    *v9 = v4;
    v9[1] = v5;
    v10 = v4;
    v11 = v5;
    _os_log_impl(&dword_24A503000, v6, v7, "🧭 FMR1PrxContxt%@: unsubscribing %@", v8, 0x16u);
    sub_24A508FA4(&qword_27EF4FED0, &unk_24A635E00);
    swift_arrayDestroy();
    MEMORY[0x24C21BBE0](v9, -1, -1);
    MEMORY[0x24C21BBE0](v8, -1, -1);
  }

  v12 = OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_subscriptions;
  swift_beginAccess();
  v13 = v5;
  v14 = sub_24A5760FC(&v4[v12]);

  v15 = *&v4[v12];
  if (v15 >> 62)
  {
    if (v15 < 0)
    {
      v17 = *&v4[v12];
    }

    v16 = sub_24A62F464();
    if (v16 >= v14)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v16 >= v14)
    {
LABEL_7:
      sub_24A575E30(v14, v16, sub_24A5EB5D0, type metadata accessor for FMR1ProximityManagerSubscription);
      swift_endAccess();
      return;
    }
  }

  __break(1u);
}

BOOL sub_24A56F860()
{
  v1 = OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_subscriptions;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v12 = MEMORY[0x277D84F90];
  if (v2 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_24A62F464())
  {

    if (!i)
    {
      break;
    }

    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x24C21ACB0](v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v6 = *(v2 + 8 * v4 + 32);
      }

      v7 = v6;
      v8 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      sub_24A62E214();
      sub_24A5763C4(&qword_27EF501E0, 255, MEMORY[0x277CC95F0]);
      if (sub_24A62EBD4())
      {
      }

      else
      {
        sub_24A62F3E4();
        v5 = *(v12 + 16);
        sub_24A62F414();
        sub_24A62F424();
        sub_24A62F3F4();
      }

      ++v4;
      if (v8 == i)
      {
        v9 = v12;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

  v9 = MEMORY[0x277D84F90];
LABEL_16:

  if (v9 < 0 || (v9 & 0x4000000000000000) != 0)
  {
    v10 = sub_24A62F464();
  }

  else
  {
    v10 = *(v9 + 16);
  }

  return v10 != 0;
}

uint64_t sub_24A56FA54()
{
  if (*(v0 + OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_itemLocalizer))
  {

    return sub_24A56E0DC();
  }

  else
  {
    v2 = OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_releaseItemLocalizerWorkItem;
    if (*(v0 + OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_releaseItemLocalizerWorkItem))
    {
      v3 = *(v0 + OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_releaseItemLocalizerWorkItem);

      sub_24A62EB34();

      v4 = *(v0 + v2);
    }

    *(v0 + v2) = 0;
  }
}

void *sub_24A56FAF8(char a1, void *a2)
{
  v58[1] = *MEMORY[0x277D85DE8];
  if (*(v2 + OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_activity) == 1)
  {
    if (qword_27EF4E9A0 != -1)
    {
      swift_once();
    }

    v4 = sub_24A62E314();
    sub_24A506EB8(v4, qword_27EF5C118);
    v5 = v2;
    v6 = sub_24A62E2F4();
    v7 = sub_24A62EF64();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v58[0] = v10;
      *v8 = 138412546;
      *(v8 + 4) = v5;
      *v9 = v5;
      *(v8 + 12) = 2080;
      v11 = (a1 & 1) == 0;
      if (a1)
      {
        v12 = 0x20676E69676E6172;
      }

      else
      {
        v12 = 0x657A696C61636F6CLL;
      }

      if (v11)
      {
        v13 = 0xE900000000000072;
      }

      else
      {
        v13 = 0xEC000000796C6E6FLL;
      }

      v14 = v5;
      v15 = sub_24A509BA8(v12, v13, v58);

      *(v8 + 14) = v15;
      _os_log_impl(&dword_24A503000, v6, v7, "🧭 FMR1PrxContxt%@: not starting (%s already started)", v8, 0x16u);
      sub_24A50D6A4(v9, &qword_27EF4FED0, &unk_24A635E00);
      MEMORY[0x24C21BBE0](v9, -1, -1);
      sub_24A508C54(v10);
      MEMORY[0x24C21BBE0](v10, -1, -1);
      MEMORY[0x24C21BBE0](v8, -1, -1);
    }

LABEL_41:
    result = 0;
    goto LABEL_42;
  }

  if (qword_27EF4E9A0 != -1)
  {
    swift_once();
  }

  v17 = sub_24A62E314();
  sub_24A506EB8(v17, qword_27EF5C118);
  v18 = v2;
  v19 = sub_24A62E2F4();
  v20 = sub_24A62EF64();

  v57 = a1;
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v58[0] = v23;
    *v21 = 138412546;
    *(v21 + 4) = v18;
    *v22 = v18;
    *(v21 + 12) = 2080;
    if (a1)
    {
      v24 = 0x20676E69676E6172;
    }

    else
    {
      v24 = 0x657A696C61636F6CLL;
    }

    if (a1)
    {
      v25 = 0xEC000000796C6E6FLL;
    }

    else
    {
      v25 = 0xE900000000000072;
    }

    v26 = v18;
    v27 = sub_24A509BA8(v24, v25, v58);

    *(v21 + 14) = v27;
    _os_log_impl(&dword_24A503000, v19, v20, "🧭 FMR1PrxContxt%@: starting %s", v21, 0x16u);
    sub_24A50D6A4(v22, &qword_27EF4FED0, &unk_24A635E00);
    MEMORY[0x24C21BBE0](v22, -1, -1);
    sub_24A508C54(v23);
    MEMORY[0x24C21BBE0](v23, -1, -1);
    MEMORY[0x24C21BBE0](v21, -1, -1);
  }

  v28 = *&v18[OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_itemLocalizer];
  if (!v28)
  {
LABEL_29:
    v35 = OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_releaseItemLocalizerWorkItem;
    if (*&v18[OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_releaseItemLocalizerWorkItem])
    {
      v36 = *&v18[OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_releaseItemLocalizerWorkItem];

      sub_24A62EB34();

      v37 = *&v18[v35];
    }

    *&v18[v35] = 0;

    goto LABEL_41;
  }

  if (a2)
  {
    v29 = v28;
    v30 = a2;
  }

  else
  {
    v31 = objc_allocWithZone(MEMORY[0x277D43C40]);
    v29 = v28;
    v30 = [v31 init];
  }

  v58[0] = 0;
  v32 = a2;
  v33 = [v29 startWithDevicePoseProvider:v30 error:v58];

  if (v33)
  {
    v34 = v58[0];
    goto LABEL_29;
  }

  v38 = v58[0];
  v39 = sub_24A62E084();

  swift_willThrow();
  v40 = v18;
  v41 = v39;
  v42 = sub_24A62E2F4();
  v43 = sub_24A62EF64();

  v44 = v39;
  if (os_log_type_enabled(v42, v43))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v58[0] = v47;
    *v45 = 138412802;
    *(v45 + 4) = v40;
    *v46 = v40;
    *(v45 + 12) = 2080;
    if (v57)
    {
      v48 = 0x20676E69676E6172;
    }

    else
    {
      v48 = 0x657A696C61636F6CLL;
    }

    if (v57)
    {
      v49 = 0xEC000000796C6E6FLL;
    }

    else
    {
      v49 = 0xE900000000000072;
    }

    v50 = v40;
    v51 = sub_24A509BA8(v48, v49, v58);

    *(v45 + 14) = v51;
    *(v45 + 22) = 2080;
    swift_getErrorValue();
    v52 = sub_24A62F6A4();
    v54 = sub_24A509BA8(v52, v53, v58);

    *(v45 + 24) = v54;
    _os_log_impl(&dword_24A503000, v42, v43, "🧭 FMR1PrxContxt%@: failed starting %s (%s)", v45, 0x20u);
    sub_24A50D6A4(v46, &qword_27EF4FED0, &unk_24A635E00);
    MEMORY[0x24C21BBE0](v46, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C21BBE0](v47, -1, -1);
    MEMORY[0x24C21BBE0](v45, -1, -1);
  }

  result = v44;
LABEL_42:
  v56 = *MEMORY[0x277D85DE8];
  return result;
}

void *sub_24A570170(char a1)
{
  v56[1] = *MEMORY[0x277D85DE8];
  if (*(v1 + OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_activity) != 1)
  {
    if (qword_27EF4E9A0 != -1)
    {
      swift_once();
    }

    v16 = sub_24A62E314();
    sub_24A506EB8(v16, qword_27EF5C118);
    v17 = v1;
    v5 = sub_24A62E2F4();
    v6 = sub_24A62EF64();

    if (!os_log_type_enabled(v5, v6))
    {
      goto LABEL_24;
    }

    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v56[0] = v9;
    *v7 = 138412546;
    *(v7 + 4) = v17;
    *v8 = v17;
    *(v7 + 12) = 2080;
    v18 = (a1 & 1) == 0;
    if (a1)
    {
      v19 = 0x20676E69676E6172;
    }

    else
    {
      v19 = 0x657A696C61636F6CLL;
    }

    if (v18)
    {
      v20 = 0xE900000000000072;
    }

    else
    {
      v20 = 0xEC000000796C6E6FLL;
    }

    v21 = v17;
    v22 = sub_24A509BA8(v19, v20, v56);

    *(v7 + 14) = v22;
    v15 = "🧭 FMR1PrxContxt%@: not stopping (%s not running)";
    goto LABEL_23;
  }

  if (*(v1 + OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_stopAsked))
  {
    if (qword_27EF4E9A0 != -1)
    {
      swift_once();
    }

    v3 = sub_24A62E314();
    sub_24A506EB8(v3, qword_27EF5C118);
    v4 = v1;
    v5 = sub_24A62E2F4();
    v6 = sub_24A62EF64();

    if (!os_log_type_enabled(v5, v6))
    {
      goto LABEL_24;
    }

    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v56[0] = v9;
    *v7 = 138412546;
    *(v7 + 4) = v4;
    *v8 = v4;
    *(v7 + 12) = 2080;
    v10 = (a1 & 1) == 0;
    if (a1)
    {
      v11 = 0x20676E69676E6172;
    }

    else
    {
      v11 = 0x657A696C61636F6CLL;
    }

    if (v10)
    {
      v12 = 0xE900000000000072;
    }

    else
    {
      v12 = 0xEC000000796C6E6FLL;
    }

    v13 = v4;
    v14 = sub_24A509BA8(v11, v12, v56);

    *(v7 + 14) = v14;
    v15 = "🧭 FMR1PrxContxt%@: not stopping (%s stop already asked)";
LABEL_23:
    _os_log_impl(&dword_24A503000, v5, v6, v15, v7, 0x16u);
    sub_24A50D6A4(v8, &qword_27EF4FED0, &unk_24A635E00);
    MEMORY[0x24C21BBE0](v8, -1, -1);
    sub_24A508C54(v9);
    MEMORY[0x24C21BBE0](v9, -1, -1);
    MEMORY[0x24C21BBE0](v7, -1, -1);
LABEL_24:

LABEL_25:
    result = 0;
    goto LABEL_26;
  }

  *(v1 + OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_stopAsked) = 1;
  if (qword_27EF4E9A0 != -1)
  {
    swift_once();
  }

  v25 = sub_24A62E314();
  sub_24A506EB8(v25, qword_27EF5C118);
  v26 = v1;
  v27 = sub_24A62E2F4();
  v28 = sub_24A62EF64();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v56[0] = v31;
    *v29 = 138412546;
    *(v29 + 4) = v26;
    *v30 = v26;
    *(v29 + 12) = 2080;
    if (a1)
    {
      v32 = 0x20676E69676E6172;
    }

    else
    {
      v32 = 0x657A696C61636F6CLL;
    }

    if (a1)
    {
      v33 = 0xEC000000796C6E6FLL;
    }

    else
    {
      v33 = 0xE900000000000072;
    }

    v34 = v26;
    v35 = sub_24A509BA8(v32, v33, v56);

    *(v29 + 14) = v35;
    _os_log_impl(&dword_24A503000, v27, v28, "🧭 FMR1PrxContxt%@: stopping %s", v29, 0x16u);
    sub_24A50D6A4(v30, &qword_27EF4FED0, &unk_24A635E00);
    MEMORY[0x24C21BBE0](v30, -1, -1);
    sub_24A508C54(v31);
    MEMORY[0x24C21BBE0](v31, -1, -1);
    MEMORY[0x24C21BBE0](v29, -1, -1);
  }

  v36 = *&v26[OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_itemLocalizer];
  if (!v36)
  {
LABEL_40:
    sub_24A56E0DC();
    goto LABEL_25;
  }

  v56[0] = 0;
  if ([v36 stop_])
  {
    v37 = v56[0];
    goto LABEL_40;
  }

  v38 = v56[0];
  v39 = sub_24A62E084();

  swift_willThrow();
  v40 = v26;
  v41 = v39;
  v42 = sub_24A62E2F4();
  v43 = sub_24A62EF64();

  v44 = v39;
  if (os_log_type_enabled(v42, v43))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v56[0] = v47;
    *v45 = 138412802;
    *(v45 + 4) = v40;
    *v46 = v40;
    *(v45 + 12) = 2080;
    v48 = (a1 & 1) == 0;
    if (a1)
    {
      v49 = 0x20676E69676E6172;
    }

    else
    {
      v49 = 0x657A696C61636F6CLL;
    }

    if (v48)
    {
      v50 = 0xE900000000000072;
    }

    else
    {
      v50 = 0xEC000000796C6E6FLL;
    }

    v51 = v40;
    v52 = sub_24A509BA8(v49, v50, v56);

    *(v45 + 14) = v52;
    *(v45 + 22) = 2080;
    swift_getErrorValue();
    v53 = sub_24A62F6A4();
    v55 = sub_24A509BA8(v53, v54, v56);

    *(v45 + 24) = v55;
    _os_log_impl(&dword_24A503000, v42, v43, "🧭 FMR1PrxContxt%@: failed stopping %s (%s)", v45, 0x20u);
    sub_24A50D6A4(v46, &qword_27EF4FED0, &unk_24A635E00);
    MEMORY[0x24C21BBE0](v46, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C21BBE0](v47, -1, -1);
    MEMORY[0x24C21BBE0](v45, -1, -1);
  }

  result = v44;
LABEL_26:
  v24 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_24A5708B8()
{
  v1 = sub_24A508FA4(&unk_27EF4FEE0, &qword_24A6369F0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v142 - v3;
  v5 = sub_24A62E214();
  v145 = *(v5 - 8);
  v6 = *(v145 + 64);
  MEMORY[0x28223BE20](v5);
  v147 = &v142 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_subscriptions;
  swift_beginAccess();
  v9 = *(v0 + v8);
  v148 = v0;
  v146 = v5;
  v143 = v8;
  v144 = v4;
  if (v9 >> 62)
  {
LABEL_146:
    v10 = sub_24A62F464();
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = 0;
  v149 = 0;
  v12 = 0;
  while (1)
  {
    if (v10 == v11)
    {
      goto LABEL_19;
    }

    if ((v9 & 0xC000000000000001) == 0)
    {
      if (v11 < *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v14 = *(v9 + 8 * v11 + 32);
        v15 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        goto LABEL_9;
      }

      __break(1u);
LABEL_137:

      v137 = v149;
      if (v149 >> 62)
      {
        if (sub_24A62F464())
        {
          goto LABEL_139;
        }
      }

      else if (*((v149 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_139:
        if ((v137 & 0xC000000000000001) != 0)
        {
          v138 = MEMORY[0x24C21ACB0](0, v137);
          goto LABEL_142;
        }

        if (*((v137 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v138 = *(v137 + 32);
LABEL_142:
          v27 = v138;

LABEL_154:

          goto LABEL_30;
        }

        __break(1u);
        goto LABEL_157;
      }

      v27 = 0;
      goto LABEL_154;
    }

    v14 = MEMORY[0x24C21ACB0](v11, v9);
    v15 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

LABEL_9:
    if (v14[OBJC_IVAR____TtC11FMFindingUI32FMR1ProximityManagerSubscription_wantsRangingOnly] == 1)
    {
      v16 = __OFADD__(v12++, 1);
      if (v16)
      {
        __break(1u);
        goto LABEL_146;
      }
    }

    v13 = v14[OBJC_IVAR____TtC11FMFindingUI32FMR1ProximityManagerSubscription_wantsLocalizer];

    ++v11;
    if (v13 == 1)
    {
      v11 = v15;
      v16 = __OFADD__(v149++, 1);
      if (v16)
      {
        __break(1u);
        goto LABEL_147;
      }
    }
  }

  __break(1u);
LABEL_19:

  v9 = v148;
  if (*(v148 + OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_itemLocalizerState) != 2)
  {
    if (qword_27EF4E9A0 != -1)
    {
LABEL_147:
      swift_once();
    }

    v25 = sub_24A62E314();
    sub_24A506EB8(v25, qword_27EF5C118);
    v26 = v9;
    v27 = sub_24A62E2F4();
    v28 = sub_24A62EF64();

    if (!os_log_type_enabled(v27, v28))
    {
LABEL_30:

      return;
    }

    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v29 = 138412290;
    *(v29 + 4) = v26;
    *v30 = v26;
    v31 = v26;
    v32 = "🧭 FMR1PrxContxt%@: waiting to be ready";
    goto LABEL_29;
  }

  v17 = OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_itemState;
  if (*(v148 + OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_itemState) != 1)
  {
    v33 = OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_hasCalledConfigure;
    if (*(v148 + OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_hasCalledConfigure))
    {
      if (qword_27EF4E9A0 != -1)
      {
        swift_once();
      }

      v34 = sub_24A62E314();
      sub_24A506EB8(v34, qword_27EF5C118);
      v35 = v9;
      v36 = sub_24A62E2F4();
      v37 = sub_24A62EF64();

      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        *&v158 = v40;
        *v38 = 138412546;
        *(v38 + 4) = v35;
        *v39 = v35;
        *(v38 + 12) = 2080;
        v41 = *(v9 + v17) == 4;
        if (*(v9 + v17) == 4)
        {
          v42 = 0x676E69766F6D2820;
        }

        else
        {
          v42 = 0;
        }

        if (v41)
        {
          v43 = 0xE900000000000029;
        }

        else
        {
          v43 = 0xE000000000000000;
        }

        v44 = v35;
        v45 = sub_24A509BA8(v42, v43, &v158);

        *(v38 + 14) = v45;
        _os_log_impl(&dword_24A503000, v36, v37, "🧭 FMR1PrxContxt%@: waiting to be findable%s", v38, 0x16u);
        sub_24A50D6A4(v39, &qword_27EF4FED0, &unk_24A635E00);
        MEMORY[0x24C21BBE0](v39, -1, -1);
        sub_24A508C54(v40);
        MEMORY[0x24C21BBE0](v40, -1, -1);
        MEMORY[0x24C21BBE0](v38, -1, -1);
      }
    }

    else
    {
      v62 = OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_findable;
      sub_24A508AE4(v148 + OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_findable, &v158);
      v63 = *(&v159 + 1);
      v64 = v160;
      sub_24A50A204(&v158, *(&v159 + 1));
      (*(v64 + 24))(v152, v63, v64);
      if (v153)
      {
        sub_24A55B284(v152[0], v152[1], v152[2], v153);
        v65 = v146;
        v66 = v145;
        if (*(v9 + OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_connectionContext) == 1)
        {
          sub_24A508AE4(v9 + v62, v155);
          v67 = v156;
          v68 = v157;
          sub_24A50A204(v155, v156);
          (*(v68 + 24))(v150, v67, v68);
          v93 = v151 != 0;
          sub_24A55B284(v150[0], v150[1], v150[2], v151);
          sub_24A508C54(v155);
        }

        else
        {
          v93 = 0;
        }
      }

      else
      {
        v93 = 1;
        v65 = v146;
        v66 = v145;
      }

      sub_24A508C54(&v158);
      sub_24A508AE4(v9 + v62, v155);
      sub_24A508FA4(&unk_27EF501B0, &unk_24A633B00);
      sub_24A508FA4(&unk_27EF4FF20, &unk_24A635E40);
      if ((swift_dynamicCast() & 1) == 0)
      {
        v160 = 0;
        v158 = 0u;
        v159 = 0u;
      }

      sub_24A508AE4(v9 + v62, v155);
      v94 = v156;
      v95 = v157;
      sub_24A50A204(v155, v156);
      (*(v95 + 16))(v94, v95);
      sub_24A575CBC(&v158, v152);
      v96 = v153;
      if (v153)
      {
        v97 = v154;
        sub_24A50A204(v152, v153);
        v98 = v144;
        (*(v97 + 16))(v96, v97);
        sub_24A508C54(v152);
      }

      else
      {
        sub_24A50D6A4(v152, &unk_27EF50520, &unk_24A633B10);
        v98 = v144;
        (*(v66 + 56))(v144, 1, 1, v65);
      }

      v99 = v93;
      v100 = v9;
      v101 = *(v9 + OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_connectionContext);
      v102 = sub_24A62E1D4();
      if ((*(v66 + 48))(v98, 1, v65) == 1)
      {
        v103 = 0;
      }

      else
      {
        v103 = sub_24A62E1D4();
        (*(v66 + 8))(v98, v65);
      }

      v104 = [objc_allocWithZone(MEMORY[0x277D43C48]) initWithUUID:v102 productUUID:v103 isOwned:v101 == 0 requiresLowerRangingFrequency:v99];

      (*(v66 + 8))(v147, v65);
      sub_24A508C54(v155);
      v105 = v100;
      v106 = *&v100[OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_itemLocalizer];
      if (v106)
      {
        v107 = [v106 configureForItem_];
      }

      else
      {
        v107 = 0;
      }

      v105[v33] = 1;
      if (qword_27EF4E9A0 != -1)
      {
        swift_once();
      }

      v108 = sub_24A62E314();
      sub_24A506EB8(v108, qword_27EF5C118);
      v109 = v105;
      v110 = sub_24A62E2F4();
      v111 = sub_24A62EF64();

      if (os_log_type_enabled(v110, v111))
      {
        v112 = swift_slowAlloc();
        v113 = swift_slowAlloc();
        v114 = swift_slowAlloc();
        v155[0] = v114;
        *v112 = 138412546;
        *(v112 + 4) = v109;
        *v113 = v109;
        *(v112 + 12) = 2080;
        v115 = v107 == 0;
        if (v107)
        {
          v116 = 0;
        }

        else
        {
          v116 = 0x2064656C696166;
        }

        if (v115)
        {
          v117 = 0xE700000000000000;
        }

        else
        {
          v117 = 0xE000000000000000;
        }

        v118 = v109;
        v119 = sub_24A509BA8(v116, v117, v155);

        *(v112 + 14) = v119;
        _os_log_impl(&dword_24A503000, v110, v111, "🧭 FMR1PrxContxt%@: %sconfiguring", v112, 0x16u);
        sub_24A50D6A4(v113, &qword_27EF4FED0, &unk_24A635E00);
        MEMORY[0x24C21BBE0](v113, -1, -1);
        sub_24A508C54(v114);
        MEMORY[0x24C21BBE0](v114, -1, -1);
        MEMORY[0x24C21BBE0](v112, -1, -1);
      }

      sub_24A50D6A4(&v158, &unk_27EF50520, &unk_24A633B10);
    }

    return;
  }

  if (*(v148 + OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_applicationIsInBackground) != 1)
  {
    if (v12 >= 1 && !v149)
    {
      v46 = OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_activity;
      v47 = *(v148 + OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_activity);
      if (v47 == 1)
      {
        if (*(v148 + OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_rangingOnly))
        {
LABEL_116:
          if (*(v9 + OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_rangingOnly) != 1)
          {
LABEL_121:
            if (qword_27EF4E9A0 != -1)
            {
              swift_once();
            }

            v123 = sub_24A62E314();
            sub_24A506EB8(v123, qword_27EF5C118);
            v124 = v9;
            v27 = sub_24A62E2F4();
            v28 = sub_24A62EF64();

            if (!os_log_type_enabled(v27, v28))
            {
              goto LABEL_30;
            }

            v29 = swift_slowAlloc();
            v30 = swift_slowAlloc();
            *v29 = 138412290;
            *(v29 + 4) = v124;
            *v30 = v124;
            v125 = v124;
            v32 = "🧭 FMR1PrxContxt%@: asked to start ranging only (but waiting to be stopped first)";
            goto LABEL_29;
          }

          if (qword_27EF4E9A0 != -1)
          {
            swift_once();
          }

          v120 = sub_24A62E314();
          sub_24A506EB8(v120, qword_27EF5C118);
          v121 = v9;
          v27 = sub_24A62E2F4();
          v28 = sub_24A62EF64();

          if (!os_log_type_enabled(v27, v28))
          {
            goto LABEL_30;
          }

          v29 = swift_slowAlloc();
          v30 = swift_slowAlloc();
          *v29 = 138412290;
          *(v29 + 4) = v121;
          *v30 = v121;
          v122 = v121;
          v32 = "🧭 FMR1PrxContxt%@: asked to start ranging only (but already is)";
LABEL_29:
          _os_log_impl(&dword_24A503000, v27, v28, v32, v29, 0xCu);
          sub_24A50D6A4(v30, &qword_27EF4FED0, &unk_24A635E00);
          MEMORY[0x24C21BBE0](v30, -1, -1);
          MEMORY[0x24C21BBE0](v29, -1, -1);
          goto LABEL_30;
        }

        if (qword_27EF4E9A0 != -1)
        {
          swift_once();
        }

        v48 = sub_24A62E314();
        sub_24A506EB8(v48, qword_27EF5C118);
        v49 = v9;
        v50 = sub_24A62E2F4();
        v51 = sub_24A62EF64();

        if (os_log_type_enabled(v50, v51))
        {
          v52 = swift_slowAlloc();
          v53 = swift_slowAlloc();
          *v52 = 138412290;
          *(v52 + 4) = v49;
          *v53 = v49;
          v54 = v49;
          _os_log_impl(&dword_24A503000, v50, v51, "🧭 FMR1PrxContxt%@: asked to start ranging only (but need to stop first)", v52, 0xCu);
          sub_24A50D6A4(v53, &qword_27EF4FED0, &unk_24A635E00);
          MEMORY[0x24C21BBE0](v53, -1, -1);
          MEMORY[0x24C21BBE0](v52, -1, -1);
        }

        v47 = *(v9 + v46);
      }

      if (v47 == 2)
      {
LABEL_56:
        *(v9 + OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_rangingOnly) = 1;
        if (qword_27EF4E9A0 != -1)
        {
          swift_once();
        }

        v55 = sub_24A62E314();
        sub_24A506EB8(v55, qword_27EF5C118);
        v56 = v9;
        v57 = sub_24A62E2F4();
        v58 = sub_24A62EF64();

        if (os_log_type_enabled(v57, v58))
        {
          v59 = swift_slowAlloc();
          v60 = swift_slowAlloc();
          *v59 = 138412290;
          *(v59 + 4) = v56;
          *v60 = v56;
          v61 = v56;
          _os_log_impl(&dword_24A503000, v57, v58, "🧭 FMR1PrxContxt%@: asked to start ranging only now", v59, 0xCu);
          sub_24A50D6A4(v60, &qword_27EF4FED0, &unk_24A635E00);
          MEMORY[0x24C21BBE0](v60, -1, -1);
          MEMORY[0x24C21BBE0](v59, -1, -1);
        }

        return;
      }

      if (v47 != 1)
      {
        if (!v47)
        {
          goto LABEL_56;
        }

        goto LABEL_121;
      }

      goto LABEL_116;
    }

    v69 = OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_activity;
    v70 = *(v148 + OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_activity);
    if (v149 < 1)
    {
      if (v70 == 1)
      {
        if (qword_27EF4E9A0 != -1)
        {
          swift_once();
        }

        v126 = sub_24A62E314();
        sub_24A506EB8(v126, qword_27EF5C118);
        v127 = v9;
        v128 = sub_24A62E2F4();
        v129 = sub_24A62EF64();

        if (os_log_type_enabled(v128, v129))
        {
          v130 = swift_slowAlloc();
          v131 = swift_slowAlloc();
          *v130 = 138412290;
          *(v130 + 4) = v127;
          *v131 = v127;
          v132 = v127;
          _os_log_impl(&dword_24A503000, v128, v129, "🧭 FMR1PrxContxt%@: asked to stop everything now", v130, 0xCu);
          sub_24A50D6A4(v131, &qword_27EF4FED0, &unk_24A635E00);
          MEMORY[0x24C21BBE0](v131, -1, -1);
          MEMORY[0x24C21BBE0](v130, -1, -1);
        }

        v133 = OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_rangingOnly;
        *(v127 + v133) = 0;
      }

      return;
    }

    if (v70 == 1)
    {
      if (*(v148 + OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_rangingOnly) != 1)
      {
        goto LABEL_131;
      }

      if (qword_27EF4E9A0 != -1)
      {
        swift_once();
      }

      v71 = sub_24A62E314();
      sub_24A506EB8(v71, qword_27EF5C118);
      v72 = v9;
      v73 = sub_24A62E2F4();
      v74 = sub_24A62EF64();

      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        v76 = swift_slowAlloc();
        *v75 = 138412290;
        *(v75 + 4) = v72;
        *v76 = v72;
        v77 = v72;
        _os_log_impl(&dword_24A503000, v73, v74, "🧭 FMR1PrxContxt%@: asked to start localizer (but need to stop ranging only first)", v75, 0xCu);
        sub_24A50D6A4(v76, &qword_27EF4FED0, &unk_24A635E00);
        MEMORY[0x24C21BBE0](v76, -1, -1);
        MEMORY[0x24C21BBE0](v75, -1, -1);
      }

      v70 = *(v9 + v69);
    }

    if (v70 == 2)
    {
      goto LABEL_76;
    }

    if (v70 != 1)
    {
      if (!v70)
      {
LABEL_76:
        *(v9 + OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_rangingOnly) = 0;
        if (qword_27EF4E9A0 != -1)
        {
          swift_once();
        }

        v78 = sub_24A62E314();
        sub_24A506EB8(v78, qword_27EF5C118);
        v79 = v9;
        v80 = sub_24A62E2F4();
        v81 = sub_24A62EF64();

        if (os_log_type_enabled(v80, v81))
        {
          v82 = swift_slowAlloc();
          v83 = swift_slowAlloc();
          *v82 = 138412290;
          *(v82 + 4) = v79;
          *v83 = v79;
          v84 = v79;
          _os_log_impl(&dword_24A503000, v80, v81, "🧭 FMR1PrxContxt%@: asked to start localizer now", v82, 0xCu);
          sub_24A50D6A4(v83, &qword_27EF4FED0, &unk_24A635E00);
          MEMORY[0x24C21BBE0](v83, -1, -1);
          MEMORY[0x24C21BBE0](v82, -1, -1);
        }

        v9 = *(v9 + v143);
        *&v158 = MEMORY[0x277D84F90];
        v147 = v79;
        if (v9 >> 62)
        {
          v85 = sub_24A62F464();
        }

        else
        {
          v85 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v86 = 0;
        v149 = MEMORY[0x277D84F90];
        while (v85 != v86)
        {
          if ((v9 & 0xC000000000000001) != 0)
          {
            v87 = MEMORY[0x24C21ACB0](v86, v9);
          }

          else
          {
            if (v86 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_149;
            }

            v87 = *(v9 + 8 * v86 + 32);
          }

          v88 = v87;
          v89 = v86 + 1;
          if (__OFADD__(v86, 1))
          {
            __break(1u);
LABEL_149:
            __break(1u);
            goto LABEL_150;
          }

          v90 = *&v87[OBJC_IVAR____TtC11FMFindingUI32FMR1ProximityManagerSubscription_poseProvider];
          v91 = v90;

          ++v86;
          if (v90)
          {
            MEMORY[0x24C21A660]();
            if (*((v158 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v158 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v92 = *((v158 & 0xFFFFFFFFFFFFFF8) + 0x10);
              sub_24A62ED84();
            }

            sub_24A62EDA4();
            v149 = v158;
            v86 = v89;
          }
        }

        goto LABEL_137;
      }

LABEL_132:
      if (qword_27EF4E9A0 != -1)
      {
        swift_once();
      }

      v134 = sub_24A62E314();
      sub_24A506EB8(v134, qword_27EF5C118);
      v135 = v9;
      v27 = sub_24A62E2F4();
      v28 = sub_24A62EF64();

      if (!os_log_type_enabled(v27, v28))
      {
        goto LABEL_30;
      }

      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v29 = 138412290;
      *(v29 + 4) = v135;
      *v30 = v135;
      v136 = v135;
      v32 = "🧭 FMR1PrxContxt%@: asked to start localizer (but waiting to be stopped first)";
      goto LABEL_29;
    }

LABEL_131:
    if ((*(v9 + OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_rangingOnly) & 1) == 0)
    {
      if (qword_27EF4E9A0 == -1)
      {
LABEL_144:
        v139 = sub_24A62E314();
        sub_24A506EB8(v139, qword_27EF5C118);
        v140 = v9;
        v27 = sub_24A62E2F4();
        v28 = sub_24A62EF64();

        if (!os_log_type_enabled(v27, v28))
        {
          goto LABEL_30;
        }

        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        *v29 = 138412290;
        *(v29 + 4) = v140;
        *v30 = v140;
        v141 = v140;
        v32 = "🧭 FMR1PrxContxt%@: asked to start localizer (but already is)";
        goto LABEL_29;
      }

LABEL_157:
      swift_once();
      goto LABEL_144;
    }

    goto LABEL_132;
  }

  if (qword_27EF4E9A0 != -1)
  {
LABEL_150:
    swift_once();
  }

  v18 = sub_24A62E314();
  sub_24A506EB8(v18, qword_27EF5C118);
  v19 = v9;
  v20 = sub_24A62E2F4();
  v21 = sub_24A62EF64();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v22 = 138412290;
    *(v22 + 4) = v19;
    *v23 = v19;
    v24 = v19;
    _os_log_impl(&dword_24A503000, v20, v21, "🧭 FMR1PrxContxt%@: application is in background", v22, 0xCu);
    sub_24A50D6A4(v23, &qword_27EF4FED0, &unk_24A635E00);
    MEMORY[0x24C21BBE0](v23, -1, -1);
    MEMORY[0x24C21BBE0](v22, -1, -1);
  }
}

id sub_24A572004(const char *a1, uint64_t a2, uint64_t (*a3)(void))
{
  if (qword_27EF4E9A0 != -1)
  {
    swift_once();
  }

  v7 = sub_24A62E314();
  sub_24A506EB8(v7, qword_27EF5C118);
  v8 = v3;
  v9 = sub_24A62E2F4();
  v10 = sub_24A62EF64();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v24 = v12;
    *v11 = 136315138;
    v13 = [v8 description];
    v14 = sub_24A62EC14();
    v23 = a2;
    v15 = a3;
    v16 = a1;
    v18 = v17;

    v19 = sub_24A509BA8(v14, v18, &v24);

    *(v11 + 4) = v19;
    v20 = v16;
    a3 = v15;
    a2 = v23;
    _os_log_impl(&dword_24A503000, v9, v10, v20, v11, 0xCu);
    sub_24A508C54(v12);
    MEMORY[0x24C21BBE0](v12, -1, -1);
    MEMORY[0x24C21BBE0](v11, -1, -1);
  }

  v21 = a3(a2);
  v25.receiver = v8;
  v25.super_class = v21;
  return objc_msgSendSuper2(&v25, sel_dealloc);
}

uint64_t type metadata accessor for FMR1ProximityManagerSubscription()
{
  result = qword_27EF50480;
  if (!qword_27EF50480)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24A5722F0(void *a1)
{
  v2 = v1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_itemLocalizer;
    if (*(Strong + OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_itemLocalizer))
    {
      if (qword_27EF4E9A0 != -1)
      {
        swift_once();
      }

      v7 = sub_24A62E314();
      sub_24A506EB8(v7, qword_27EF5C118);
      v8 = v1;
      v9 = sub_24A62E2F4();
      v10 = sub_24A62EF64();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        *v11 = 138412290;
        *(v11 + 4) = v8;
        *v12 = v8;
        v13 = v8;
        _os_log_impl(&dword_24A503000, v9, v10, "🧭 FMR1PrxSubscr%@: asking to start localizer", v11, 0xCu);
        sub_24A50D6A4(v12, &qword_27EF4FED0, &unk_24A635E00);
        MEMORY[0x24C21BBE0](v12, -1, -1);
        MEMORY[0x24C21BBE0](v11, -1, -1);
      }
    }

    else
    {
      sub_24A545E8C();
      v20 = v5;
      v21 = sub_24A62F014();
      v22 = [objc_allocWithZone(MEMORY[0x277D43C50]) initWithDelegate:v20 queue:v21];

      osloga = sub_24A62F784();
      v24 = v23;
      if (qword_27EF4E9A0 != -1)
      {
        swift_once();
      }

      v25 = sub_24A62E314();
      sub_24A506EB8(v25, qword_27EF5C118);
      v26 = v2;
      v27 = sub_24A62E2F4();
      v28 = sub_24A62EF64();

      if (os_log_type_enabled(v27, v28))
      {
        v45 = v20;
        v29 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v49 = v44;
        *v29 = 138412546;
        *(v29 + 4) = v26;
        *v43 = v26;
        *(v29 + 12) = 2080;
        v30 = v26;
        sub_24A516B88(9, osloga, v24);
        oslogb = v22;

        sub_24A55B6E8();
        sub_24A62ECA4();

        MEMORY[0x24C21A5D0](15939, 0xE200000000000000);

        v31 = sub_24A509BA8(7876668, 0xE300000000000000, &v49);

        *(v29 + 14) = v31;
        v22 = oslogb;
        _os_log_impl(&dword_24A503000, v27, v28, "🧭 FMR1PrxSubscr%@: asking to start localizer, created item localizer <%s> and will re-configure", v29, 0x16u);
        sub_24A50D6A4(v43, &qword_27EF4FED0, &unk_24A635E00);
        MEMORY[0x24C21BBE0](v43, -1, -1);
        sub_24A508C54(v44);
        MEMORY[0x24C21BBE0](v44, -1, -1);
        v32 = v29;
        v20 = v45;
        MEMORY[0x24C21BBE0](v32, -1, -1);
      }

      else
      {
      }

      v33 = *&v20[OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_incrementItemLocalizerHandler];
      if (v33)
      {
        v34 = *&v20[OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_incrementItemLocalizerHandler + 8];

        v33(v35);
        sub_24A50D844(v33);
      }

      v36 = *&v5[v6];
      *&v5[v6] = v22;
      v37 = v22;

      sub_24A56FA54();
    }

    v2[OBJC_IVAR____TtC11FMFindingUI32FMR1ProximityManagerSubscription_wantsLocalizer] = 1;
    v38 = *&v2[OBJC_IVAR____TtC11FMFindingUI32FMR1ProximityManagerSubscription_poseProvider];
    *&v2[OBJC_IVAR____TtC11FMFindingUI32FMR1ProximityManagerSubscription_poseProvider] = a1;

    v39 = OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_releaseItemLocalizerWorkItem;
    if (*&v5[OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_releaseItemLocalizerWorkItem])
    {
      v40 = a1;

      sub_24A62EB34();

      v41 = *&v5[v39];
    }

    else
    {
      v42 = a1;
    }

    *&v5[v39] = 0;

    sub_24A5708B8();
  }

  else
  {
    if (qword_27EF4E9A0 != -1)
    {
      swift_once();
    }

    v14 = sub_24A62E314();
    sub_24A506EB8(v14, qword_27EF5C118);
    v15 = v1;
    oslog = sub_24A62E2F4();
    v16 = sub_24A62EF64();

    if (os_log_type_enabled(oslog, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      *(v17 + 4) = v15;
      *v18 = v15;
      v19 = v15;
      _os_log_impl(&dword_24A503000, oslog, v16, "🧭 FMR1PrxSubscr%@: asking to start localizer but no context", v17, 0xCu);
      sub_24A50D6A4(v18, &qword_27EF4FED0, &unk_24A635E00);
      MEMORY[0x24C21BBE0](v18, -1, -1);
      MEMORY[0x24C21BBE0](v17, -1, -1);
    }
  }
}

void sub_24A572914()
{
  if (qword_27EF4E9A0 != -1)
  {
    swift_once();
  }

  v1 = sub_24A62E314();
  sub_24A506EB8(v1, qword_27EF5C118);
  v2 = v0;
  v3 = sub_24A62E2F4();
  v4 = sub_24A62EF64();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v2;
    *v6 = v2;
    v7 = v2;
    _os_log_impl(&dword_24A503000, v3, v4, "🧭 FMR1PrxSubscr%@: asking to stop localizer", v5, 0xCu);
    sub_24A50D6A4(v6, &qword_27EF4FED0, &unk_24A635E00);
    MEMORY[0x24C21BBE0](v6, -1, -1);
    MEMORY[0x24C21BBE0](v5, -1, -1);
  }

  v2[OBJC_IVAR____TtC11FMFindingUI32FMR1ProximityManagerSubscription_wantsLocalizer] = 0;
  v8 = *&v2[OBJC_IVAR____TtC11FMFindingUI32FMR1ProximityManagerSubscription_poseProvider];
  *&v2[OBJC_IVAR____TtC11FMFindingUI32FMR1ProximityManagerSubscription_poseProvider] = 0;

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    sub_24A5708B8();
  }
}

uint64_t sub_24A572AF4()
{
  result = sub_24A62E214();
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

id sub_24A572BB8()
{
  v31 = sub_24A62F004();
  v1 = *(v31 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v31);
  v4 = v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24A62EFD4();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v7 = sub_24A62EAD4();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  *&v0[OBJC_IVAR____TtC11FMFindingUI20FMR1ProximityManager_contexts] = MEMORY[0x277D84F98];
  v9 = MEMORY[0x277D84F90];
  *&v0[OBJC_IVAR____TtC11FMFindingUI20FMR1ProximityManager_subscriptions] = MEMORY[0x277D84F90];
  v0[OBJC_IVAR____TtC11FMFindingUI20FMR1ProximityManager_applicationIsInBackground] = 0;
  *&v0[OBJC_IVAR____TtC11FMFindingUI20FMR1ProximityManager_itemLocalizersCount] = 0;
  v30 = OBJC_IVAR____TtC11FMFindingUI20FMR1ProximityManager_serialQueue;
  v10 = sub_24A545E8C();
  v29[1] = "zer_in_background";
  v29[2] = v10;
  sub_24A62EAC4();
  v33 = v9;
  sub_24A5763C4(&unk_27EF4F9E0, 255, MEMORY[0x277D85230]);
  sub_24A508FA4(&unk_27EF50240, &unk_24A634A08);
  sub_24A5238AC(&qword_27EF4F9F0, &unk_27EF50240, &unk_24A634A08);
  sub_24A62F254();
  (*(v1 + 104))(v4, *MEMORY[0x277D85260], v31);
  *&v0[v30] = sub_24A62F044();
  v11 = type metadata accessor for FMR1ProximityManager();
  v32.receiver = v0;
  v32.super_class = v11;
  v12 = objc_msgSendSuper2(&v32, sel_init);
  v13 = objc_opt_self();
  v14 = v12;
  v15 = [v13 defaultCenter];
  [v15 addObserver:v14 selector:sel_applicationDidEnterBackground name:*MEMORY[0x277D76660] object:0];

  v16 = [v13 defaultCenter];
  [v16 addObserver:v14 selector:sel_applicationWillEnterForeground name:*MEMORY[0x277D76758] object:0];

  if (qword_27EF4E9A0 != -1)
  {
    swift_once();
  }

  v17 = sub_24A62E314();
  sub_24A506EB8(v17, qword_27EF5C118);
  v18 = v14;
  v19 = sub_24A62E2F4();
  v20 = sub_24A62EF64();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v33 = v22;
    *v21 = 136315138;
    v23 = [v18 description];
    v24 = sub_24A62EC14();
    v26 = v25;

    v27 = sub_24A509BA8(v24, v26, &v33);

    *(v21 + 4) = v27;
    _os_log_impl(&dword_24A503000, v19, v20, "🧭 FMR1ProximMgr%s: init (v14)", v21, 0xCu);
    sub_24A508C54(v22);
    MEMORY[0x24C21BBE0](v22, -1, -1);
    MEMORY[0x24C21BBE0](v21, -1, -1);
  }

  return v18;
}

uint64_t sub_24A5730E4(const char *a1, char a2)
{
  if (qword_27EF4E9A0 != -1)
  {
LABEL_16:
    swift_once();
  }

  v5 = sub_24A62E314();
  sub_24A506EB8(v5, qword_27EF5C118);
  v6 = v2;
  v7 = sub_24A62E2F4();
  v8 = sub_24A62EF64();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    *(v9 + 4) = v6;
    *v10 = v6;
    v11 = v6;
    _os_log_impl(&dword_24A503000, v7, v8, a1, v9, 0xCu);
    sub_24A50D6A4(v10, &qword_27EF4FED0, &unk_24A635E00);
    MEMORY[0x24C21BBE0](v10, -1, -1);
    MEMORY[0x24C21BBE0](v9, -1, -1);
  }

  *(v6 + OBJC_IVAR____TtC11FMFindingUI20FMR1ProximityManager_applicationIsInBackground) = a2;
  v2 = OBJC_IVAR____TtC11FMFindingUI20FMR1ProximityManager_contexts;
  swift_beginAccess();
  v12 = *&v2[v6];
  a1 = (v12 + 64);
  v13 = 1 << *(v12 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(v12 + 64);
  v16 = (v13 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v17 = 0;
  if (v15)
  {
    while (1)
    {
      v18 = v17;
LABEL_12:
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v20 = *(*(v12 + 56) + ((v18 << 9) | (8 * v19)));
      v20[OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_applicationIsInBackground] = a2;
      v2 = v20;
      sub_24A56E58C();
      sub_24A5708B8();

      if (!v15)
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
      goto LABEL_16;
    }

    if (v18 >= v16)
    {
      break;
    }

    v15 = *&a1[8 * v18];
    ++v17;
    if (v15)
    {
      v17 = v18;
      goto LABEL_12;
    }
  }
}

uint64_t sub_24A573370@<X0>(uint64_t *a1@<X0>, char *a2@<X1>, void *a3@<X2>, uint64_t *a4@<X3>, char a5@<W4>, void *a6@<X8>)
{
  v142 = a6;
  v139 = a4;
  v140 = a3;
  v141 = sub_24A62E214();
  v143 = *(v141 - 8);
  v9 = *(v143 + 64);
  v10 = MEMORY[0x28223BE20](v141);
  v12 = &v130 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v130 - v13;
  v15 = a1[3];
  v16 = a1[4];
  sub_24A50A204(a1, v15);
  (*(v16 + 16))(v15, v16);
  v17 = OBJC_IVAR____TtC11FMFindingUI20FMR1ProximityManager_contexts;
  swift_beginAccess();
  if (!*(*&a2[v17] + 16) || (v18 = *&a2[v17], , sub_24A515AC8(v14), v20 = v19, , (v20 & 1) == 0))
  {
    v137 = v12;
    sub_24A508AE4(a1, v144);
    LOBYTE(v147) = a5;
    v45 = objc_allocWithZone(type metadata accessor for FMR1ItemLocalizerContext());
    v46 = sub_24A56B438(v144, &v147);
    v47 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v48 = &v46[OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_incrementItemLocalizerHandler];
    v49 = *&v46[OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_incrementItemLocalizerHandler];
    v50 = *&v46[OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_incrementItemLocalizerHandler + 8];
    *v48 = sub_24A5763B4;
    v48[1] = v47;

    sub_24A50D844(v49);

    v51 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v52 = &v46[OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_decrementItemLocalizerHandler];
    v53 = *&v46[OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_decrementItemLocalizerHandler];
    v54 = *&v46[OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_decrementItemLocalizerHandler + 8];
    *v52 = sub_24A5763BC;
    v52[1] = v51;

    sub_24A50D844(v53);

    swift_beginAccess();
    v55 = v46;
    v56 = *&a2[v17];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v147 = *&a2[v17];
    *&a2[v17] = 0x8000000000000000;
    v138 = v14;
    sub_24A557C94(v55, v14, isUniquelyReferenced_nonNull_native);
    *&a2[v17] = v147;
    swift_endAccess();
    sub_24A508AE4(a1, v144);
    v58 = objc_allocWithZone(type metadata accessor for FMR1ProximityManagerSubscription());
    v59 = swift_unknownObjectRetain();
    v60 = sub_24A575F54(v59, v139, v144);
    swift_unknownObjectRelease();

    sub_24A56F210(v60);
    v61 = OBJC_IVAR____TtC11FMFindingUI20FMR1ProximityManager_subscriptions;
    swift_beginAccess();
    v62 = v60;
    MEMORY[0x24C21A660]();
    if (*((*&a2[v61] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&a2[v61] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v127 = *((*&a2[v61] & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_24A62ED84();
    }

    sub_24A62EDA4();
    swift_endAccess();
    if (a2[OBJC_IVAR____TtC11FMFindingUI20FMR1ProximityManager_applicationIsInBackground])
    {
      if (qword_27EF4E9A0 != -1)
      {
        swift_once();
      }

      v63 = sub_24A62E314();
      sub_24A506EB8(v63, qword_27EF5C118);
      sub_24A508AE4(a1, v144);
      v64 = a2;
      v65 = sub_24A62E2F4();
      v66 = sub_24A62EF64();

      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        v136 = v68;
        v139 = swift_slowAlloc();
        v147 = v139;
        *v67 = 138412546;
        *(v67 + 4) = v64;
        *v68 = a2;
        *(v67 + 12) = 2080;
        v140 = v62;
        v70 = v145;
        v69 = v146;
        sub_24A50A204(v144, v145);
        LODWORD(v135) = v66;
        v71 = *(v69 + 16);
        v72 = v64;
        v73 = v137;
        v71(v70, v69);
        sub_24A5763C4(&qword_27EF4F660, 255, MEMORY[0x277CC95F0]);
        v74 = v65;
        v75 = v141;
        v76 = sub_24A62F614();
        v78 = v77;
        v79 = *(v143 + 8);
        v79(v73, v75);
        sub_24A508C54(v144);
        v80 = sub_24A509BA8(v76, v78, &v147);

        *(v67 + 14) = v80;
        _os_log_impl(&dword_24A503000, v74, v135, "🧭 FMR1ProximMgr%@: setting up for '%s', but in background", v67, 0x16u);
        v81 = v136;
        sub_24A50D6A4(v136, &qword_27EF4FED0, &unk_24A635E00);
        MEMORY[0x24C21BBE0](v81, -1, -1);
        v82 = v139;
        sub_24A508C54(v139);
        MEMORY[0x24C21BBE0](v82, -1, -1);
        MEMORY[0x24C21BBE0](v67, -1, -1);

        result = (v79)(v138, v75);
        v62 = v140;
        goto LABEL_41;
      }
    }

    else
    {
      sub_24A545E8C();
      v84 = v55;
      v85 = sub_24A62F014();
      v86 = [objc_allocWithZone(MEMORY[0x277D43C50]) initWithDelegate:v84 queue:v85];

      v87 = *v48;
      if (*v48)
      {
        v88 = v48[1];

        (v87)(v89);
        sub_24A50D844(v87);
      }

      v90 = *&v84[OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_itemLocalizer];
      *&v84[OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_itemLocalizer] = v86;
      v91 = v86;

      sub_24A56FA54();
      if (qword_27EF4E9A0 != -1)
      {
        swift_once();
      }

      v92 = sub_24A62E314();
      sub_24A506EB8(v92, qword_27EF5C118);
      sub_24A508AE4(a1, v144);
      v93 = a2;
      v94 = sub_24A62E2F4();
      v95 = sub_24A62EF64();

      if (os_log_type_enabled(v94, v95))
      {
        v96 = swift_slowAlloc();
        v97 = swift_slowAlloc();
        v135 = v97;
        v136 = swift_slowAlloc();
        v147 = v136;
        *v96 = 138412546;
        *(v96 + 4) = v93;
        *v97 = a2;
        *(v96 + 12) = 2080;
        v140 = v62;
        v99 = v145;
        v98 = v146;
        sub_24A50A204(v144, v145);
        v134 = v95;
        v139 = v91;
        v100 = *(v98 + 16);
        v101 = v93;
        v102 = v137;
        v100(v99, v98);
        sub_24A5763C4(&qword_27EF4F660, 255, MEMORY[0x277CC95F0]);
        v103 = v141;
        v104 = sub_24A62F614();
        v106 = v105;
        v107 = *(v143 + 8);
        v107(v102, v103);
        sub_24A508C54(v144);
        v108 = sub_24A509BA8(v104, v106, &v147);

        *(v96 + 14) = v108;
        _os_log_impl(&dword_24A503000, v94, v134, "🧭 FMR1ProximMgr%@: setting up for '%s', created item localizer", v96, 0x16u);
        v109 = v135;
        sub_24A50D6A4(v135, &qword_27EF4FED0, &unk_24A635E00);
        MEMORY[0x24C21BBE0](v109, -1, -1);
        v110 = v136;
        sub_24A508C54(v136);
        MEMORY[0x24C21BBE0](v110, -1, -1);
        MEMORY[0x24C21BBE0](v96, -1, -1);

        v111 = v103;
        v62 = v140;
        result = (v107)(v138, v111);
        goto LABEL_41;
      }
    }

    (*(v143 + 8))(v138, v141);
    result = sub_24A508C54(v144);
    goto LABEL_41;
  }

  if (qword_27EF4E9A0 != -1)
  {
    swift_once();
  }

  v21 = sub_24A62E314();
  sub_24A506EB8(v21, qword_27EF5C118);
  v136 = a1;
  sub_24A508AE4(a1, v144);
  v22 = a2;
  v23 = sub_24A62E2F4();
  v24 = sub_24A62EF64();

  v25 = os_log_type_enabled(v23, v24);
  v137 = v22;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v134 = v24;
    v27 = v26;
    v28 = swift_slowAlloc();
    v133 = v28;
    v135 = swift_slowAlloc();
    v147 = v135;
    v131 = v27;
    *v27 = 138412802;
    *(v27 + 4) = v22;
    *v28 = v22;
    *(v27 + 12) = 2080;
    v138 = v14;
    v30 = v145;
    v29 = v146;
    sub_24A50A204(v144, v145);
    v132 = v23;
    v31 = *(v29 + 16);
    v32 = v22;
    v31(v30, v29);
    sub_24A5763C4(&qword_27EF4F660, 255, MEMORY[0x277CC95F0]);
    v33 = v141;
    v34 = sub_24A62F614();
    v36 = v35;
    (*(v143 + 8))(v12, v33);
    sub_24A508C54(v144);
    v37 = sub_24A509BA8(v34, v36, &v147);

    v38 = v131;
    *(v131 + 14) = v37;
    *(v38 + 22) = 2080;
    if (v32[OBJC_IVAR____TtC11FMFindingUI20FMR1ProximityManager_applicationIsInBackground])
    {
      v39 = 0x6B636162206E6928;
    }

    else
    {
      v39 = 0;
    }

    if (v32[OBJC_IVAR____TtC11FMFindingUI20FMR1ProximityManager_applicationIsInBackground])
    {
      v40 = 0xEF29646E756F7267;
    }

    else
    {
      v40 = 0xE000000000000000;
    }

    v41 = sub_24A509BA8(v39, v40, &v147);

    *(v38 + 24) = v41;
    v14 = v138;
    v42 = v132;
    _os_log_impl(&dword_24A503000, v132, v134, "🧭 FMR1ProximMgr%@: setting up for '%s' but item already known %s", v38, 0x20u);
    v43 = v133;
    sub_24A50D6A4(v133, &qword_27EF4FED0, &unk_24A635E00);
    MEMORY[0x24C21BBE0](v43, -1, -1);
    v44 = v135;
    swift_arrayDestroy();
    MEMORY[0x24C21BBE0](v44, -1, -1);
    MEMORY[0x24C21BBE0](v38, -1, -1);
  }

  else
  {

    sub_24A508C54(v144);
    v33 = v141;
  }

  v112 = *&a2[v17];
  v113 = v136;
  if (*(v112 + 16))
  {
    v114 = *&a2[v17];

    v115 = sub_24A515AC8(v14);
    if (v116)
    {
      v117 = *(*(v112 + 56) + 8 * v115);
      v118 = v117;
    }

    else
    {
      v117 = 0;
    }

    v119 = v14;
  }

  else
  {
    v119 = v14;
    v117 = 0;
  }

  sub_24A508AE4(v113, v144);
  v120 = objc_allocWithZone(type metadata accessor for FMR1ProximityManagerSubscription());
  v121 = v117;
  v122 = swift_unknownObjectRetain();
  v123 = sub_24A575F54(v122, v139, v144);
  swift_unknownObjectRelease();

  if (v117)
  {
    v124 = v121;
    sub_24A56F210(v123);
  }

  v125 = OBJC_IVAR____TtC11FMFindingUI20FMR1ProximityManager_subscriptions;
  v126 = v137;
  swift_beginAccess();
  v62 = v123;
  MEMORY[0x24C21A660]();
  if (*((*&v126[v125] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v126[v125] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v128 = v62;
    v129 = *((*&v126[v125] & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_24A62ED84();
    v62 = v128;
  }

  sub_24A62EDA4();
  swift_endAccess();

  result = (*(v143 + 8))(v119, v33);
LABEL_41:
  *v142 = v62;
  return result;
}

void sub_24A5740F0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = OBJC_IVAR____TtC11FMFindingUI20FMR1ProximityManager_itemLocalizersCount;
    v3 = *(Strong + OBJC_IVAR____TtC11FMFindingUI20FMR1ProximityManager_itemLocalizersCount);
    if (v3 >= 1)
    {
      if (qword_27EF4E9A0 != -1)
      {
LABEL_31:
        swift_once();
      }

      v4 = sub_24A62E314();
      sub_24A506EB8(v4, qword_27EF5C118);
      v5 = v1;
      v6 = sub_24A62E2F4();
      v7 = sub_24A62EF64();
      v28 = v2;
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        *v8 = 138412546;
        *(v8 + 4) = v5;
        *v9 = v1;
        *(v8 + 12) = 2048;
        *(v8 + 14) = *&v1[v2];
        _os_log_impl(&dword_24A503000, v6, v7, "🧭 FMR1ProximMgr%@: previous item localizers still exist (%ld)", v8, 0x16u);
        sub_24A50D6A4(v9, &qword_27EF4FED0, &unk_24A635E00);
        MEMORY[0x24C21BBE0](v9, -1, -1);
        MEMORY[0x24C21BBE0](v8, -1, -1);
      }

      else
      {

        v6 = v5;
      }

      v10 = OBJC_IVAR____TtC11FMFindingUI20FMR1ProximityManager_contexts;
      swift_beginAccess();
      v11 = *(&v5->isa + v10);
      v29 = MEMORY[0x277D84F90];
      v12 = 1 << *(v11 + 32);
      v13 = -1;
      if (v12 < 64)
      {
        v13 = ~(-1 << v12);
      }

      v14 = v13 & *(v11 + 64);
      v2 = (v12 + 63) >> 6;

      v15 = 0;
      while (v14)
      {
LABEL_15:
        v17 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
        v18 = *(*(v11 + 56) + ((v15 << 9) | (8 * v17)));
        if (*&v18[OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_itemLocalizer])
        {
          v19 = v18;
          sub_24A62F3E4();
          v20 = *(v29 + 16);
          sub_24A62F414();
          sub_24A62F424();
          sub_24A62F3F4();
        }
      }

      while (1)
      {
        v16 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
          goto LABEL_31;
        }

        if (v16 >= v2)
        {
          break;
        }

        v14 = *(v11 + 64 + 8 * v16);
        ++v15;
        if (v14)
        {
          v15 = v16;
          goto LABEL_15;
        }
      }

      if (v29 < 0 || (v29 & 0x4000000000000000) != 0)
      {
        v21 = sub_24A62F464();
        v2 = v28;
        if (v21)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v21 = *(v29 + 16);
        v2 = v28;
        if (v21)
        {
LABEL_20:
          v22 = 0;
          do
          {
            if ((v29 & 0xC000000000000001) != 0)
            {
              v23 = MEMORY[0x24C21ACB0](v22, v29);
            }

            else
            {
              if (v22 >= *(v29 + 16))
              {
                goto LABEL_30;
              }

              v23 = *(v29 + 8 * v22 + 32);
            }

            v24 = v23;
            v25 = v22 + 1;
            if (__OFADD__(v22, 1))
            {
              goto LABEL_29;
            }

            sub_24A56DC9C();

            ++v22;
          }

          while (v25 != v21);
        }
      }

      v3 = *&v1[v2];
    }

    v26 = __OFADD__(v3, 1);
    v27 = v3 + 1;
    if (v26)
    {
      __break(1u);
    }

    else
    {
      *&v1[v2] = v27;
    }
  }
}

void sub_24A574448()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *&Strong[OBJC_IVAR____TtC11FMFindingUI20FMR1ProximityManager_itemLocalizersCount];
    v2 = __OFSUB__(v1, 1);
    v3 = v1 - 1;
    if (v2)
    {
      __break(1u);
    }

    else
    {
      *&Strong[OBJC_IVAR____TtC11FMFindingUI20FMR1ProximityManager_itemLocalizersCount] = v3;
    }
  }
}

uint64_t sub_24A5744B0(void *a1)
{
  v3 = sub_24A62EA94();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_24A62EAD4();
  v8 = *(v18 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v18);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[1] = *&v1[OBJC_IVAR____TtC11FMFindingUI20FMR1ProximityManager_serialQueue];
  v12 = swift_allocObject();
  *(v12 + 16) = v1;
  *(v12 + 24) = a1;
  aBlock[4] = sub_24A5763AC;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A5A8458;
  aBlock[3] = &unk_285DA5CF0;
  v13 = _Block_copy(aBlock);
  v14 = v1;
  v15 = a1;
  sub_24A62EAB4();
  v19 = MEMORY[0x277D84F90];
  sub_24A5763C4(&qword_27EF4F970, 255, MEMORY[0x277D85198]);
  sub_24A508FA4(&unk_27EF50510, &unk_24A633E30);
  sub_24A5238AC(&qword_27EF4F980, &unk_27EF50510, &unk_24A633E30);
  sub_24A62F254();
  MEMORY[0x24C21A950](0, v11, v7, v13);
  _Block_release(v13);
  (*(v4 + 8))(v7, v3);
  (*(v8 + 8))(v11, v18);
}

uint64_t sub_24A574778(char *a1, void *a2)
{
  v4 = sub_24A62E214();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v92 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v92 - v10;
  v102 = a2;
  sub_24A508AE4(a2 + OBJC_IVAR____TtC11FMFindingUI32FMR1ProximityManagerSubscription_findable, v104);
  v12 = v105;
  v13 = v106;
  sub_24A50A204(v104, v105);
  v13[2](v12, v13);
  sub_24A508C54(v104);
  v14 = OBJC_IVAR____TtC11FMFindingUI20FMR1ProximityManager_contexts;
  swift_beginAccess();
  v15 = *&a1[v14];
  if (*(v15 + 16))
  {
    v16 = *&a1[v14];

    v17 = sub_24A515AC8(v11);
    if (v18)
    {
      v13 = *(*(v15 + 56) + 8 * v17);

      if (sub_24A56F860())
      {
        if (qword_27EF4E9A0 != -1)
        {
          goto LABEL_38;
        }

        while (1)
        {
          v19 = sub_24A62E314();
          sub_24A506EB8(v19, qword_27EF5C118);
          v13 = v13;
          v20 = a1;
          v21 = sub_24A62E2F4();
          v22 = sub_24A62EF64();

          if (os_log_type_enabled(v21, v22))
          {
            v23 = swift_slowAlloc();
            LODWORD(v98) = v22;
            v24 = v23;
            v25 = swift_slowAlloc();
            v97 = v25;
            v99 = swift_slowAlloc();
            v103[0] = v99;
            v96 = v24;
            *v24 = 138412546;
            *(v24 + 4) = v20;
            *v25 = v20;
            *(v24 + 12) = 2080;
            sub_24A508AE4(v13 + OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_findable, v104);
            v26 = v105;
            v27 = v106;
            sub_24A50A204(v104, v105);
            v95 = v21;
            v100 = v4;
            v101 = v13;
            v28 = v27[1];
            v29 = v20;
            v30 = (v28)(v26, v27);
            v4 = v100;
            v13 = v101;
            v31 = v30;
            v33 = v32;
            sub_24A508C54(v104);
            v34 = sub_24A509BA8(v31, v33, v103);

            v35 = v95;
            v36 = v96;
            *(v96 + 14) = v34;
            _os_log_impl(&dword_24A503000, v35, v98, "🧭 FMR1ProximMgr%@: unsubscribing, did not tear down, subscriptions still exist '%s'", v36, 0x16u);
            v37 = v97;
            sub_24A50D6A4(v97, &qword_27EF4FED0, &unk_24A635E00);
            MEMORY[0x24C21BBE0](v37, -1, -1);
            v38 = v99;
            sub_24A508C54(v99);
            MEMORY[0x24C21BBE0](v38, -1, -1);
            MEMORY[0x24C21BBE0](v36, -1, -1);
          }

          else
          {
          }

          sub_24A56F63C(v102);
LABEL_27:

          (*(v5 + 8))(v11, v4);
          v5 = OBJC_IVAR____TtC11FMFindingUI20FMR1ProximityManager_subscriptions;
          swift_beginAccess();
          v87 = v102;
          v40 = sub_24A5760FC(&a1[v5]);

          v88 = *&a1[v5];
          if (v88 >> 62)
          {
            if (v88 < 0)
            {
              v91 = *&a1[v5];
            }

            v42 = sub_24A62F464();
            if (v42 >= v40)
            {
              goto LABEL_29;
            }
          }

          else
          {
            v42 = *((v88 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v42 >= v40)
            {
              goto LABEL_29;
            }
          }

          __break(1u);
LABEL_38:
          swift_once();
        }
      }

LABEL_11:
      if (*(v13 + OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_activity) == 1)
      {
        v98 = v9;
        if (qword_27EF4E9A0 != -1)
        {
          swift_once();
        }

        v43 = sub_24A62E314();
        sub_24A506EB8(v43, qword_27EF5C118);
        v44 = v13;
        v45 = a1;
        v46 = sub_24A62E2F4();
        v47 = sub_24A62EF64();
        v99 = v44;

        v48 = v45;
        LODWORD(v97) = v47;
        if (os_log_type_enabled(v46, v47))
        {
          v49 = swift_slowAlloc();
          v50 = swift_slowAlloc();
          v95 = v50;
          v96 = swift_slowAlloc();
          v103[0] = v96;
          v94 = v49;
          *v49 = 138412546;
          *(v49 + 4) = v48;
          v50->isa = v48;
          *(v49 + 12) = 2080;
          sub_24A508AE4(v99 + OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_findable, v104);
          v100 = v4;
          v101 = v13;
          v51 = v105;
          v52 = v106;
          sub_24A50A204(v104, v105);
          v53 = v46;
          v93 = v52[1];
          v54 = v48;
          v55 = v52;
          v4 = v100;
          v56 = (v93)(v51, v55);
          v58 = v57;
          sub_24A508C54(v104);
          v59 = sub_24A509BA8(v56, v58, v103);
          v13 = v101;

          v60 = v94;
          *(v94 + 14) = v59;
          _os_log_impl(&dword_24A503000, v53, v97, "🧭 FMR1ProximMgr%@: tore down '%s' (stopping first)", v60, 0x16u);
          v61 = v95;
          sub_24A50D6A4(v95, &qword_27EF4FED0, &unk_24A635E00);
          MEMORY[0x24C21BBE0](v61, -1, -1);
          v62 = v96;
          sub_24A508C54(v96);
          MEMORY[0x24C21BBE0](v62, -1, -1);
          MEMORY[0x24C21BBE0](v60, -1, -1);
        }

        else
        {
        }

        v9 = v98;
      }

      else
      {
        if (qword_27EF4E9A0 != -1)
        {
          swift_once();
        }

        v63 = sub_24A62E314();
        sub_24A506EB8(v63, qword_27EF5C118);
        v101 = v13;
        v64 = v13;
        v65 = a1;
        v66 = sub_24A62E2F4();
        v67 = sub_24A62EF64();

        v98 = v65;
        v99 = v66;
        if (os_log_type_enabled(v66, v67))
        {
          v68 = swift_slowAlloc();
          LODWORD(v96) = v67;
          v69 = v68;
          v70 = v64;
          v71 = swift_slowAlloc();
          v95 = v71;
          v97 = swift_slowAlloc();
          v103[0] = v97;
          v94 = v69;
          *v69 = 138412546;
          v72 = v98;
          *(v69 + 4) = v98;
          v71->isa = v72;
          *(v69 + 12) = 2080;
          sub_24A508AE4(v70 + OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_findable, v104);
          v73 = v105;
          v74 = v106;
          v75 = sub_24A50A204(v104, v105);
          v76 = v99;
          v100 = v4;
          v77 = v74[1];
          v92 = v75;
          v93 = v77;
          v78 = v72;
          v79 = (v93)(v73, v74);
          v4 = v100;
          v80 = v79;
          v82 = v81;
          sub_24A508C54(v104);
          v83 = sub_24A509BA8(v80, v82, v103);

          v84 = v94;
          *(v94 + 14) = v83;
          _os_log_impl(&dword_24A503000, v76, v96, "🧭 FMR1ProximMgr%@: unsubscribing, tore down '%s'", v84, 0x16u);
          v85 = v95;
          sub_24A50D6A4(v95, &qword_27EF4FED0, &unk_24A635E00);
          MEMORY[0x24C21BBE0](v85, -1, -1);
          v86 = v97;
          sub_24A508C54(v97);
          MEMORY[0x24C21BBE0](v86, -1, -1);
          MEMORY[0x24C21BBE0](v84, -1, -1);
        }

        else
        {
        }

        v13 = v101;
      }

      sub_24A56DC9C();
      (*(v5 + 16))(v9, v11, v4);
      swift_beginAccess();
      sub_24A56AFEC(0, v9, sub_24A557C94, sub_24A55BB6C, sub_24A558FB0);
      swift_endAccess();
      goto LABEL_27;
    }
  }

  (*(v5 + 8))(v11, v4);
  v5 = OBJC_IVAR____TtC11FMFindingUI20FMR1ProximityManager_subscriptions;
  swift_beginAccess();
  v39 = v102;
  v40 = sub_24A5760FC(&a1[v5]);

  v41 = *&a1[v5];
  if (v41 >> 62)
  {
    if (v41 < 0)
    {
      v90 = *&a1[v5];
    }

    v42 = sub_24A62F464();
    if (v42 < v40)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v42 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v42 < v40)
    {
LABEL_10:
      __break(1u);
      goto LABEL_11;
    }
  }

LABEL_29:
  sub_24A575E30(v40, v42, sub_24A5EB5D0, type metadata accessor for FMR1ProximityManagerSubscription);
  return swift_endAccess();
}

id sub_24A57515C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMR1ProximityManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t getEnumTagSinglePayload for FMLocalizerActivity(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for FMLocalizerActivity(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for FMFindableState(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for FMFindableState(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_24A5754C4()
{
  result = qword_27EF504C0;
  if (!qword_27EF504C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF504C0);
  }

  return result;
}

unint64_t sub_24A57551C()
{
  result = qword_27EF504C8;
  if (!qword_27EF504C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF504C8);
  }

  return result;
}

unint64_t sub_24A575574()
{
  result = qword_27EF504D0;
  if (!qword_27EF504D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF504D0);
  }

  return result;
}

unint64_t sub_24A5755C8(unint64_t a1)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_17:
    v3 = sub_24A62F464();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  while (1)
  {
    if (v3 == v4)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x24C21ACB0](v4, a1);
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v5 = *(a1 + 8 * v4 + 32);
    }

    v6 = v5;
    v7 = sub_24A62E1E4();

    if (v7)
    {
      return v4;
    }

    if (__OFADD__(v4++, 1))
    {
      goto LABEL_16;
    }
  }
}

unint64_t sub_24A5756CC(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result = v6 + 32 + 8 * result + 8 * a3;
  v10 = (v6 + 32 + 8 * a2);
  if (result != v10 || result >= v10 + 8 * v9)
  {
    v12 = a3;
    result = memmove(result, v10, 8 * v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_24A575774(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 2);
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
  if (!isUniquelyReferenced_nonNull_native || v8 > *(v4 + 3) >> 1)
  {
    if (v5 <= v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = v5;
    }

    v4 = sub_24A61760C(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    *v2 = v4;
  }

  result = sub_24A5756CC(v6, a2, 0);
  *v2 = v4;
  return result;
}

void sub_24A575834()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (*&Strong[OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_itemLocalizer])
    {
      goto LABEL_13;
    }

    v2 = Strong;
    if (qword_27EF4E9A0 != -1)
    {
      swift_once();
    }

    v3 = sub_24A62E314();
    sub_24A506EB8(v3, qword_27EF5C118);
    v4 = v0;
    oslog = sub_24A62E2F4();
    v5 = sub_24A62EF64();

    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138412290;
      *(v6 + 4) = v4;
      *v7 = v4;
      v8 = v4;
      _os_log_impl(&dword_24A503000, oslog, v5, "🧭 FMR1PrxSubscr%@: asking to log torch changed state analytics event but no itemlocalizer", v6, 0xCu);
      sub_24A50D6A4(v7, &qword_27EF4FED0, &unk_24A635E00);
      MEMORY[0x24C21BBE0](v7, -1, -1);
      MEMORY[0x24C21BBE0](v6, -1, -1);
    }
  }

  else
  {
    if (qword_27EF4E9A0 != -1)
    {
      swift_once();
    }

    v9 = sub_24A62E314();
    sub_24A506EB8(v9, qword_27EF5C118);
    v10 = v0;
    oslog = sub_24A62E2F4();
    v11 = sub_24A62EF64();

    if (os_log_type_enabled(oslog, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      *(v12 + 4) = v10;
      *v13 = v10;
      v14 = v10;
      _os_log_impl(&dword_24A503000, oslog, v11, "🧭 FMR1PrxSubscr%@: asking to log torch changed state analytics event but no context", v12, 0xCu);
      sub_24A50D6A4(v13, &qword_27EF4FED0, &unk_24A635E00);
      MEMORY[0x24C21BBE0](v13, -1, -1);
      MEMORY[0x24C21BBE0](v12, -1, -1);
    }
  }

  Strong = oslog;
LABEL_13:
}

unint64_t sub_24A575AF0(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result >= 5)
  {
    return 5;
  }

  return result;
}

unint64_t sub_24A575B08(unint64_t result)
{
  if (result >= 9)
  {
    return 9;
  }

  return result;
}

unint64_t sub_24A575B18(unint64_t result)
{
  if (result >= 6)
  {
    return 6;
  }

  return result;
}

unint64_t sub_24A575B28()
{
  result = qword_27EF504E0;
  if (!qword_27EF504E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF504E0);
  }

  return result;
}

unint64_t sub_24A575B7C()
{
  result = qword_27EF504E8;
  if (!qword_27EF504E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF504E8);
  }

  return result;
}

unint64_t sub_24A575BD0()
{
  result = qword_27EF504F0;
  if (!qword_27EF504F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF504F0);
  }

  return result;
}

uint64_t sub_24A575C24()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24A575C80(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A575CBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A508FA4(&unk_27EF50520, &unk_24A633B10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A575D2C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v10 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v4 = a3;
  v7 = a2;
  v11 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v8 = v5 + 4;
  v6 = &v5[a1 + 4];
  a4(0);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(v4, v10);
  v10 = v4 - v10;
  if (v13)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v10)
  {
    goto LABEL_17;
  }

  v9 = v11 >> 62;
  if (!(v11 >> 62))
  {
    result = v5[2];
    v14 = result - v7;
    if (!__OFSUB__(result, v7))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_24A62F464();
  v14 = result - v7;
  if (__OFSUB__(result, v7))
  {
    goto LABEL_23;
  }

LABEL_6:
  v15 = (v6 + 8 * v4);
  v16 = &v8[v7];
  if (v15 != v16 || v15 >= &v16[8 * v14])
  {
    memmove(v15, v16, 8 * v14);
  }

  if (v9)
  {
    result = sub_24A62F464();
  }

  else
  {
    result = v5[2];
  }

  if (__OFADD__(result, v10))
  {
    goto LABEL_24;
  }

  v5[2] = result + v10;
LABEL_17:
  if (v4 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_24A575E30(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), void (*a4)(void))
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a4;
    v8 = a3;
    v6 = a2;
    v7 = a1;
    v9 = *v5;
    v10 = *v5 >> 62;
    if (!v10)
    {
      result = *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_13:
      __break(1u);
      goto LABEL_14;
    }
  }

  result = sub_24A62F464();
  if (result < v6)
  {
    goto LABEL_13;
  }

LABEL_4:
  if (__OFSUB__(v6, v7))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v12 = v7 - v6;
  if (__OFSUB__(0, v6 - v7))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v10)
  {
    v13 = sub_24A62F464();
  }

  else
  {
    v13 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = __OFADD__(v13, v12);
  result = v13 + v12;
  if (!v14)
  {
    v8(result, 1);
    return sub_24A575D2C(v7, v6, 0, v4);
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_24A575F14()
{
  MEMORY[0x24C21BCD0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

id sub_24A575F54(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = sub_24A62E214();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = &v3[OBJC_IVAR____TtC11FMFindingUI32FMR1ProximityManagerSubscription_subscriber];
  *&v3[OBJC_IVAR____TtC11FMFindingUI32FMR1ProximityManagerSubscription_subscriber + 8] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v3[OBJC_IVAR____TtC11FMFindingUI32FMR1ProximityManagerSubscription_wantsRangingOnly] = 0;
  v3[OBJC_IVAR____TtC11FMFindingUI32FMR1ProximityManagerSubscription_wantsLocalizer] = 0;
  *&v3[OBJC_IVAR____TtC11FMFindingUI32FMR1ProximityManagerSubscription_poseProvider] = 0;
  sub_24A62E204();
  (*(v7 + 32))(&v3[OBJC_IVAR____TtC11FMFindingUI32FMR1ProximityManagerSubscription_identifier], v10, v6);
  *(v11 + 1) = a2;
  swift_unknownObjectWeakAssign();
  sub_24A508AE4(a3, &v3[OBJC_IVAR____TtC11FMFindingUI32FMR1ProximityManagerSubscription_findable]);
  swift_unknownObjectWeakAssign();
  v12 = type metadata accessor for FMR1ProximityManagerSubscription();
  v15.receiver = v3;
  v15.super_class = v12;
  v13 = objc_msgSendSuper2(&v15, sel_init);
  sub_24A508C54(a3);
  return v13;
}

unint64_t sub_24A5760FC(unint64_t *a1)
{
  v3 = *a1;
  result = sub_24A5755C8(*a1);
  v6 = result;
  if (v1)
  {
    return v6;
  }

  if (v5)
  {
    if (v3 >> 62)
    {
      return sub_24A62F464();
    }

    return *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    return result;
  }

  v8 = &unk_27EF5C000;
  while (1)
  {
    if (v3 >> 62)
    {
      if (v7 == sub_24A62F464())
      {
        return v6;
      }
    }

    else if (v7 == *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v6;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x24C21ACB0](v7, v3);
      goto LABEL_15;
    }

    if ((v7 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v7 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_40;
    }

    v10 = *(v3 + 8 * v7 + 32);
LABEL_15:
    v11 = v10;
    v12 = v8[41];
    v13 = sub_24A62E1E4();

    if ((v13 & 1) == 0)
    {
      if (v6 != v7)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v14 = MEMORY[0x24C21ACB0](v6, v3);
          v15 = MEMORY[0x24C21ACB0](v7, v3);
        }

        else
        {
          if ((v6 & 0x8000000000000000) != 0)
          {
            goto LABEL_44;
          }

          v16 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v6 >= v16)
          {
            goto LABEL_45;
          }

          if (v7 >= v16)
          {
            goto LABEL_46;
          }

          v17 = *(v3 + 32 + 8 * v7);
          v14 = *(v3 + 32 + 8 * v6);
          v15 = v17;
        }

        v18 = v15;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
        {
          v3 = sub_24A5EB5C8(v3);
          v19 = (v3 >> 62) & 1;
        }

        else
        {
          LODWORD(v19) = 0;
        }

        v20 = v3 & 0xFFFFFFFFFFFFFF8;
        v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v6 + 0x20);
        *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v6 + 0x20) = v18;

        if ((v3 & 0x8000000000000000) != 0 || v19)
        {
          v3 = sub_24A5EB5C8(v3);
          v20 = v3 & 0xFFFFFFFFFFFFFF8;
          v8 = &unk_27EF5C000;
          if ((v7 & 0x8000000000000000) != 0)
          {
LABEL_37:
            __break(1u);
            return v6;
          }
        }

        else
        {
          v8 = &unk_27EF5C000;
          if ((v7 & 0x8000000000000000) != 0)
          {
            goto LABEL_37;
          }
        }

        if (v7 >= *(v20 + 16))
        {
          goto LABEL_43;
        }

        v22 = v20 + 8 * v7;
        v23 = *(v22 + 32);
        *(v22 + 32) = v14;

        *a1 = v3;
      }

      v9 = __OFADD__(v6++, 1);
      if (v9)
      {
        goto LABEL_42;
      }
    }

    v9 = __OFADD__(v7++, 1);
    if (v9)
    {
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
  return sub_24A62F464();
}

uint64_t sub_24A57636C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24A5763C4(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_24A576440(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24A576470(uint64_t a1)
{
  v1 = *(a1 + 99);
  if (v1 >= 4)
  {
    return v1 - 3;
  }

  else
  {
    return 0;
  }
}

__n128 sub_24A576484(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 93) = *(a2 + 93);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_24A5764B0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF9 && *(a1 + 101))
  {
    return (*a1 + 249);
  }

  v3 = *(a1 + 99);
  if (v3 >= 4)
  {
    v4 = v3 - 3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 >= 5)
  {
    return v4 - 4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24A5764F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *(result + 93) = 0;
    *(result + 64) = 0u;
    *(result + 80) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 249;
    if (a3 >= 0xF9)
    {
      *(result + 101) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
    {
      *(result + 101) = 0;
    }

    if (a2)
    {
      *(result + 99) = a2 + 7;
    }
  }

  return result;
}

double sub_24A57654C(uint64_t a1, unsigned int a2)
{
  if (a2 > 0xFC)
  {
    *(a1 + 88) = 0;
    result = 0.0;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 100) = 0;
    *(a1 + 96) = 0;
    *a1 = a2 - 253;
  }

  else if (a2)
  {
    *(a1 + 99) = a2 + 3;
  }

  return result;
}

uint64_t sub_24A5765B0()
{
  v1 = *v0;
  sub_24A62F714();
  sub_24A62EC74();

  return sub_24A62F754();
}

uint64_t sub_24A576668()
{
  *v0;
  *v0;
  *v0;
  sub_24A62EC74();
}

uint64_t sub_24A57670C()
{
  v1 = *v0;
  sub_24A62F714();
  sub_24A62EC74();

  return sub_24A62F754();
}

uint64_t sub_24A5767C0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_24A5777D0();
  *a2 = result;
  return result;
}

void sub_24A5767F0(uint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1701869940;
  v4 = 0xE500000000000000;
  v5 = 0x646E657274;
  if (*v1 != 2)
  {
    v5 = 1953393000;
    v4 = 0xE400000000000000;
  }

  if (*v1)
  {
    v3 = 0x6D6572757361656DLL;
    v2 = 0xEB00000000746E65;
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

uint64_t sub_24A576864()
{
  v1 = 1701869940;
  v2 = 0x646E657274;
  if (*v0 != 2)
  {
    v2 = 1953393000;
  }

  if (*v0)
  {
    v1 = 0x6D6572757361656DLL;
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

uint64_t sub_24A5768D4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24A5777D0();
  *a1 = result;
  return result;
}

uint64_t sub_24A576908(uint64_t a1)
{
  v2 = sub_24A577CDC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A576944(uint64_t a1)
{
  v2 = sub_24A577CDC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24A576980()
{
  v1 = *(v0 + 24) | (*(v0 + 100) << 32);
  v2 = (((v0[6] & 0xFF000000) - 0x4000000) >> 24);
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      v3 = 0xE600000000000000;
      v4 = 0x676E69766F6DLL;
      goto LABEL_11;
    }

    if (v2 == 3)
    {
      v3 = 0xEF68746150646574;
      v4 = 0x6172656E65676564;
      goto LABEL_11;
    }

LABEL_8:
    v13 = v0[2];
    v14 = v0[3];
    v15 = v0[4];
    v16 = v0[5];
    v11 = *v0;
    v12 = v0[1];
    *(v0 + 100);
    v17 = *(v0 + 24);
    v5 = sub_24A5AEE40();
    MEMORY[0x24C21A5D0](v5);

    MEMORY[0x24C21A5D0](8250, 0xE200000000000000);

    sub_24A508FA4(&qword_27EF50588, &qword_24A636BF0);
    v6 = sub_24A62F1B4();
    v8 = v7;

    MEMORY[0x24C21A5D0](v6, v8);

    v4 = 0x657463656E6E6F63;
    v3 = 0xEB00000000203A64;
    goto LABEL_11;
  }

  if (!(((v0[6] & 0xFF000000) - 0x4000000) >> 24))
  {
    v3 = 0xEC00000064657463;
    v4 = 0x656E6E6F63736964;
    goto LABEL_11;
  }

  if (v2 != 1)
  {
    goto LABEL_8;
  }

  v3 = 0xEA0000000000676ELL;
  v4 = 0x697463656E6E6F63;
LABEL_11:
  sub_24A508FA4(&qword_27EF50530, qword_24A636270);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_24A633830;
  *(v9 + 56) = MEMORY[0x277D837D0];
  *(v9 + 64) = sub_24A508FEC();
  *(v9 + 32) = v4;
  *(v9 + 40) = v3;
  return sub_24A62EC24();
}

uint64_t sub_24A576BB8(void *a1)
{
  v3 = v1;
  v5 = sub_24A508FA4(&qword_27EF50570, &qword_24A636BE8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  sub_24A50A204(a1, a1[3]);
  sub_24A577CDC();
  sub_24A62F774();
  v11 = *(v3 + 24) | (*(v3 + 100) << 32);
  v12 = (((v3[6] & 0xFF000000) - 0x4000000) >> 24);
  if (v12 > 1)
  {
    if (v12 == 2)
    {
      LOBYTE(v19) = 0;
      goto LABEL_12;
    }

    if (v12 == 3)
    {
      LOBYTE(v19) = 0;
      goto LABEL_12;
    }
  }

  else
  {
    if (!(((v3[6] & 0xFF000000) - 0x4000000) >> 24))
    {
      LOBYTE(v19) = 0;
      goto LABEL_12;
    }

    if (v12 == 1)
    {
      LOBYTE(v19) = 0;
LABEL_12:
      sub_24A62F5C4();
      return (*(v6 + 8))(v9, v5);
    }
  }

  LOBYTE(v19) = 0;
  sub_24A62F5C4();
  if (!v2)
  {
    v13 = v3[3];
    v21 = v3[2];
    v22 = v13;
    v14 = v3[5];
    v23 = v3[4];
    v24 = v14;
    v15 = v3[1];
    v19 = *v3;
    v20 = v15;
    v25 = v11;
    v26 = BYTE2(v11);
    v18 = 1;
    sub_24A577E2C();
    sub_24A62F5D4();
    LOBYTE(v19) = BYTE3(v11);
    v18 = 2;
    sub_24A577E80();
    sub_24A62F5D4();
    LOBYTE(v19) = BYTE4(v11);
    v18 = 3;
    sub_24A508FA4(&qword_27EF50588, &qword_24A636BF0);
    sub_24A577ED4();
    sub_24A62F5D4();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_24A576E74()
{
  v1 = *(v0 + 24) | (*(v0 + 100) << 32);
  v2 = (((v0[6] & 0xFF000000) - 0x4000000) >> 24);
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      v3 = 4;
      return MEMORY[0x24C21B040](v3);
    }

    if (v2 == 3)
    {
      v3 = 5;
      return MEMORY[0x24C21B040](v3);
    }
  }

  else
  {
    if (!(((v0[6] & 0xFF000000) - 0x4000000) >> 24))
    {
LABEL_12:
      v3 = 1;
      return MEMORY[0x24C21B040](v3);
    }

    if (v2 == 1)
    {
      v3 = 2;
      return MEMORY[0x24C21B040](v3);
    }
  }

  v7 = v0[2];
  v8 = v0[3];
  v9 = v0[4];
  v10 = v0[5];
  v5 = *v0;
  v6 = v0[1];
  *(v0 + 100);
  v11 = *(v0 + 24);
  MEMORY[0x24C21B040](3);
  sub_24A5AFE14();
  MEMORY[0x24C21B040](BYTE3(v1));
  if (HIDWORD(v1) == 3)
  {
    return sub_24A62F734();
  }

  sub_24A62F734();
  if (HIDWORD(v1) == 2)
  {
    goto LABEL_12;
  }

  MEMORY[0x24C21B040](0);
  return sub_24A62F734();
}

uint64_t sub_24A576F98(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v12[0] = v2;
  *(v12 + 13) = *(a1 + 93);
  v3 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v3;
  v4 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v4;
  v5 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v5;
  v6 = *(a2 + 32);
  v7 = *(a2 + 48);
  v8 = *(a2 + 64);
  v9 = *(a2 + 80);
  *&v14[13] = *(a2 + 93);
  v13[4] = v8;
  *v14 = v9;
  v13[2] = v6;
  v13[3] = v7;
  return sub_24A5773B4(v11, v13) & 1;
}

uint64_t sub_24A577004()
{
  sub_24A62F714();
  sub_24A576E74();
  return sub_24A62F754();
}

uint64_t sub_24A577048()
{
  sub_24A62F714();
  sub_24A576E74();
  return sub_24A62F754();
}

__n128 sub_24A577084@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_24A57781C(a1, v7);
  if (!v2)
  {
    v5 = *v8;
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v5;
    *(a2 + 93) = *&v8[13];
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
    result = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = result;
  }

  return result;
}

unint64_t sub_24A577104()
{
  result = qword_27EF50540;
  if (!qword_27EF50540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF50540);
  }

  return result;
}

void sub_24A577158(uint64_t a1@<X8>)
{
  v3 = objc_opt_self();

  v4 = sub_24A62EBE4();
  v5 = MGGetSInt32Answer();

  v6 = [v3 mainScreen];
  [v6 nativeScale];
  v8 = v7;

  v9 = [v3 mainScreen];
  [v9 bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v41.origin.x = v11;
  v41.origin.y = v13;
  v41.size.width = v15;
  v41.size.height = v17;
  Width = CGRectGetWidth(v41);
  v19 = [v3 mainScreen];
  [v19 bounds];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;

  v42.origin.x = v21;
  v42.origin.y = v23;
  v42.size.width = v25;
  v42.size.height = v27;
  v28 = CGRectGetWidth(v42);
  v29 = *(v1 + 96);
  _Q3 = 0uLL;
  v31 = 0.0;
  v32 = 0.0;
  if ((v29 | 0x2000000u) >> 25 == 3)
  {
LABEL_2:
    v33 = 0.0;
    goto LABEL_3;
  }

  v34 = v5 * 1.252 / v8 / v28;
  v35 = *(v1 + 100);
  v36 = BYTE2(v29);
  v33 = 1.0;
  if (v36 > 1)
  {
    if (v36 == 2)
    {
      __asm { FMOV            V3.2D, #4.5 }

      *&_Q3 = v34;
      v32 = INFINITY;
      v31 = 0.8;
      goto LABEL_3;
    }

    if (v36 == 3)
    {
      __asm { FMOV            V3.2D, #4.5 }

      *&_Q3 = v34;
      goto LABEL_3;
    }

    _Q3 = 0uLL;
    goto LABEL_2;
  }

  if (v36)
  {
    v32 = 0.5;
    __asm { FMOV            V3.2D, #0.5 }

    *&_Q3 = (32.0 / Width + v34) * 0.5;
    v31 = 0.5;
  }

  else
  {
    *(&_Q3 + 1) = 0;
    *&_Q3 = 32.0 / Width;
    v31 = 0.2;
    v32 = 1.0;
  }

LABEL_3:
  *a1 = _Q3;
  *(a1 + 16) = v33;
  *(a1 + 24) = v31;
  *(a1 + 32) = v32;
}

uint64_t sub_24A5773B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 96) | (*(a1 + 100) << 32);
  v4 = (((*(a1 + 96) & 0xFF000000) - 0x4000000) >> 24);
  if (v4 > 1)
  {
    if (v4 != 2)
    {
      if (v4 == 3)
      {
        goto LABEL_29;
      }

      goto LABEL_8;
    }

    if ((*(a2 + 96) & 0xFE000000) != 0x6000000)
    {
      goto LABEL_29;
    }

LABEL_17:
    v8 = 1;
    return v8 & 1;
  }

  if (!(((*(a1 + 96) & 0xFF000000) - 0x4000000) >> 24))
  {
    if (*(a2 + 99) << 24 != 0x4000000)
    {
      goto LABEL_29;
    }

    goto LABEL_17;
  }

  if (v4 == 1)
  {
    if (*(a2 + 99) << 24 == 83886080)
    {
      goto LABEL_17;
    }

LABEL_29:
    v8 = 0;
    return v8 & 1;
  }

LABEL_8:
  v5 = *(a2 + 96);
  if ((v5 | 0x2000000) >> 25 == 3)
  {
    goto LABEL_29;
  }

  v6 = v5 | (*(a2 + 100) << 32);
  v7 = BYTE2(v5);
  *(a1 + 100);
  if (BYTE2(*(a1 + 96)) <= 1u)
  {
    *(a1 + 100);
    if (BYTE2(*(a1 + 96)))
    {
      if (v7 != 1)
      {
        goto LABEL_29;
      }
    }

    else if (v7)
    {
      goto LABEL_29;
    }
  }

  else
  {
    *(a1 + 100);
    if (BYTE2(*(a1 + 96)) == 2)
    {
      if (v7 != 2)
      {
        goto LABEL_29;
      }
    }

    else
    {
      *(a1 + 100);
      if (BYTE2(*(a1 + 96)) != 3)
      {
        if (v7 != 4)
        {
          goto LABEL_29;
        }

        v9 = *(a2 + 16);
        v52 = *a1;
        v10 = *(a1 + 40);
        v11 = *(a1 + 72);
        v49 = *(a1 + 56);
        v50 = v11;
        v51 = *(a1 + 88);
        v47 = *(a1 + 24);
        v48 = v10;
        *&v46[6] = *a2;
        if (v2 == 1)
        {
          if (v9 == 1)
          {
            v27 = *a1;
            *&v28[24] = *(a1 + 40);
            *&v28[40] = *(a1 + 56);
            *&v28[56] = *(a1 + 72);
            v12 = *(a1 + 88);
            *v28 = 1;
            *&v28[72] = v12;
            *&v28[8] = *(a1 + 24);
            v29 = v3;
            sub_24A508CE4(a1, &v30);
            sub_24A508CE4(a2, &v30);
            sub_24A50D6A4(&v27, &qword_27EF4F650, &unk_24A633E00);
            goto LABEL_28;
          }
        }

        else if (v9 != 1)
        {
          v24 = *a2;
          *v25 = v9;
          *&v25[8] = *(a2 + 24);
          *&v25[24] = *(a2 + 40);
          *&v25[72] = *(a2 + 88);
          *&v25[56] = *(a2 + 72);
          *&v25[40] = *(a2 + 56);
          v26 = v6;
          v27 = v24;
          *v28 = *v25;
          v29 = v6;
          *&v28[48] = *&v25[48];
          *&v28[64] = *&v25[64];
          *&v28[16] = *&v25[16];
          *&v28[32] = *&v25[32];
          v53 = *a1;
          v55 = *(a1 + 24);
          v20 = *(a1 + 40);
          v21 = *(a1 + 56);
          v22 = *(a1 + 88);
          v58 = *(a1 + 72);
          v57 = v21;
          v56 = v20;
          v59 = v22;
          v54 = v2;
          v60 = v3;
          v23 = a2;
          sub_24A508CE4(a1, &v30);
          sub_24A508CE4(v23, &v30);
          LOBYTE(v23) = sub_24A51B4E4(&v53, &v27);
          sub_24A50D6A4(&v24, &qword_27EF4F650, &unk_24A633E00);
          v30 = v52;
          v33 = v48;
          v34 = v49;
          v35 = v50;
          v31 = v2;
          v36 = v51;
          v32 = v47;
          v37 = v3;
          sub_24A50D6A4(&v30, &qword_27EF4F650, &unk_24A633E00);
          if ((v23 & 1) == 0)
          {
            goto LABEL_29;
          }

          goto LABEL_28;
        }

        v30 = *a1;
        v33 = *(a1 + 40);
        v34 = *(a1 + 56);
        v35 = *(a1 + 72);
        v15 = *(a1 + 88);
        v31 = v2;
        v36 = v15;
        v32 = *(a1 + 24);
        v37 = v3;
        *&v38[14] = *&v46[14];
        v39 = v9;
        *v38 = *v46;
        v16 = *(a2 + 24);
        v44 = *(a2 + 88);
        v17 = *(a2 + 72);
        v42 = *(a2 + 56);
        v43 = v17;
        v18 = *(a2 + 40);
        v40 = v16;
        v41 = v18;
        v45 = v6;
        sub_24A508CE4(a1, &v27);
        sub_24A508CE4(a2, &v27);
        sub_24A50D6A4(&v30, &qword_27EF4F648, &qword_24A633DF8);
        goto LABEL_29;
      }

      if (v7 != 3)
      {
        goto LABEL_29;
      }
    }
  }

LABEL_28:
  if (((v6 ^ v3) & 0xFF000000) != 0)
  {
    goto LABEL_29;
  }

  v8 = HIDWORD(v3) == 3;
  if (BYTE4(v6) != 3)
  {
    v8 = 0;
  }

  if (HIDWORD(v3) != 3 && BYTE4(v6) != 3)
  {
    v8 = HIDWORD(v3) == 2;
    if (BYTE4(v6) != 2)
    {
      v8 = 0;
    }

    if (HIDWORD(v3) != 2 && BYTE4(v6) != 2)
    {
      v8 = BYTE4(v6) ^ BYTE4(v3) ^ 1;
    }
  }

  return v8 & 1;
}

uint64_t sub_24A5777D0()
{
  v0 = sub_24A62F4B4();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_24A57781C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_24A508FA4(&qword_27EF50548, &qword_24A636BE0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - v8;
  v10 = a1[4];
  sub_24A50A204(a1, a1[3]);
  sub_24A577CDC();
  sub_24A62F764();
  if (v2)
  {
    return sub_24A508C54(a1);
  }

  v40 = 0;
  v11 = sub_24A62F534();
  if (v11 <= 2)
  {
    if (v11 == 1)
    {
      (*(v6 + 8))(v9, v5);
      v13 = 0uLL;
      v24 = 0u;
      v14 = 0x4000000;
      goto LABEL_15;
    }

    if (v11 == 2)
    {
      (*(v6 + 8))(v9, v5);
      v13 = 0uLL;
      v24 = 0u;
      v14 = 83886080;
      goto LABEL_15;
    }
  }

  else
  {
    switch(v11)
    {
      case 3:
        v33 = 1;
        sub_24A577D30();
        sub_24A62F544();
        v31 = v38;
        *v32 = *v39;
        *&v32[15] = *&v39[15];
        v27 = v34;
        v28 = v35;
        v30 = v37;
        v29 = v36;
        v25 = 2;
        sub_24A577D84();
        sub_24A62F544();
        v18 = v26;
        v25 = 3;
        sub_24A577DD8();
        sub_24A62F544();
        (*(v6 + 8))(v9, v5);
        v23 = v28;
        v24 = v27;
        v21 = v30;
        v22 = v29;
        v19 = *v32;
        v20 = v31;
        v14 = (v26 << 32) | (v18 << 24) | *&v32[16] | (v32[18] << 16);
LABEL_16:
        result = sub_24A508C54(a1);
        v15 = v23;
        *a2 = v24;
        *(a2 + 16) = v15;
        v16 = v21;
        *(a2 + 32) = v22;
        *(a2 + 48) = v16;
        v17 = v19;
        *(a2 + 64) = v20;
        *(a2 + 80) = v17;
        *(a2 + 96) = v14;
        *(a2 + 100) = BYTE4(v14);
        return result;
      case 4:
        (*(v6 + 8))(v9, v5);
        v13 = 0uLL;
        v24 = 0u;
        v14 = 100663296;
LABEL_15:
        v23 = v13;
        v22 = v13;
        v21 = v13;
        v20 = v13;
        v19 = v13;
        goto LABEL_16;
      case 5:
        (*(v6 + 8))(v9, v5);
        v13 = 0uLL;
        v24 = 0u;
        v14 = 117440512;
        goto LABEL_15;
    }
  }

  result = sub_24A62F444();
  __break(1u);
  return result;
}

unint64_t sub_24A577CDC()
{
  result = qword_27EF50550;
  if (!qword_27EF50550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF50550);
  }

  return result;
}

unint64_t sub_24A577D30()
{
  result = qword_27EF50558;
  if (!qword_27EF50558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF50558);
  }

  return result;
}

unint64_t sub_24A577D84()
{
  result = qword_27EF50560;
  if (!qword_27EF50560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF50560);
  }

  return result;
}

unint64_t sub_24A577DD8()
{
  result = qword_27EF50568;
  if (!qword_27EF50568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF50568);
  }

  return result;
}

unint64_t sub_24A577E2C()
{
  result = qword_27EF50578;
  if (!qword_27EF50578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF50578);
  }

  return result;
}

unint64_t sub_24A577E80()
{
  result = qword_27EF50580;
  if (!qword_27EF50580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF50580);
  }

  return result;
}

unint64_t sub_24A577ED4()
{
  result = qword_27EF50590;
  if (!qword_27EF50590)
  {
    sub_24A50E1E0(&qword_27EF50588, &qword_24A636BF0);
    sub_24A577F58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF50590);
  }

  return result;
}

unint64_t sub_24A577F58()
{
  result = qword_27EF50598;
  if (!qword_27EF50598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF50598);
  }

  return result;
}

unint64_t sub_24A577FC0()
{
  result = qword_27EF505A0;
  if (!qword_27EF505A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF505A0);
  }

  return result;
}

unint64_t sub_24A578018()
{
  result = qword_27EF505A8;
  if (!qword_27EF505A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF505A8);
  }

  return result;
}

unint64_t sub_24A578070()
{
  result = qword_27EF505B0;
  if (!qword_27EF505B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF505B0);
  }

  return result;
}

uint64_t sub_24A578204()
{
  sub_24A62F384();

  v0 = sub_24A62F784();
  v2 = sub_24A516B88(6, v0, v1);
  v4 = v3;
  v6 = v5;
  v8 = v7;

  v9 = MEMORY[0x24C21A580](v2, v4, v6, v8);
  v11 = v10;

  MEMORY[0x24C21A5D0](v9, v11);

  MEMORY[0x24C21A5D0](30768, 0xE200000000000000);

  MEMORY[0x24C21A5D0](62, 0xE100000000000000);
  v12 = sub_24A62EC24();

  return v12;
}

id sub_24A5783B4(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v6 = v5;
  v12 = sub_24A62EAA4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = OBJC_IVAR____TtC11FMFindingUI13FMPFARSCNView_innerIsolationQueue;
  sub_24A50D7EC(0, &qword_27EF4F9C0, 0x277D85C78);
  (*(v13 + 104))(v16, *MEMORY[0x277D851C8], v12);
  v18 = sub_24A62F054();
  (*(v13 + 8))(v16, v12);
  *&v6[v17] = v18;
  *&v6[OBJC_IVAR____TtC11FMFindingUI13FMPFARSCNView_internalIsolationQueue] = 0;
  if (a1)
  {
    v19 = sub_24A62EB74();
  }

  else
  {
    v19 = 0;
  }

  v20 = type metadata accessor for FMPFARSCNView();
  v23.receiver = v6;
  v23.super_class = v20;
  v21 = objc_msgSendSuper2(&v23, sel_initWithFrame_options_, v19, a2, a3, a4, a5);

  return v21;
}

id sub_24A578784(void *a1)
{
  v2 = v1;
  v4 = sub_24A62EAA4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC11FMFindingUI13FMPFARSCNView_innerIsolationQueue;
  sub_24A50D7EC(0, &qword_27EF4F9C0, 0x277D85C78);
  (*(v5 + 104))(v8, *MEMORY[0x277D851C8], v4);
  v10 = sub_24A62F054();
  (*(v5 + 8))(v8, v4);
  *&v2[v9] = v10;
  *&v2[OBJC_IVAR____TtC11FMFindingUI13FMPFARSCNView_internalIsolationQueue] = 0;
  v11 = type metadata accessor for FMPFARSCNView();
  v14.receiver = v2;
  v14.super_class = v11;
  v12 = objc_msgSendSuper2(&v14, sel_initWithCoder_, a1);

  if (v12)
  {
  }

  return v12;
}

id sub_24A57891C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMPFARSCNView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_24A5789C0()
{
  result = qword_27EF505D0;
  if (!qword_27EF505D0)
  {
    sub_24A50D7EC(255, &qword_27EF505C8, 0x277D75C68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF505D0);
  }

  return result;
}

id sub_24A578A28(double a1, double a2, double a3, double a4)
{
  v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v9 = a3 * 0.5;
  v10 = a1 - a3 * 0.5;
  v11 = a4 * 0.5;
  v12 = a4 * 0.5 + a2;
  v13 = v9 + a1;
  v14 = a2 - v11;
  v15 = v8;
  [v15 moveToPoint_];
  [v15 addLineToPoint_];
  [v15 addLineToPoint_];
  [v15 addLineToPoint_];
  [v15 addLineToPoint_];
  [v15 closePath];

  return v15;
}

id sub_24A578B24()
{
  v9[1] = *MEMORY[0x277D85DE8];
  v1 = objc_allocWithZone(v0);
  sub_24A50D7EC(0, &qword_27EF507A8, 0x277CBF6B8);
  v2 = sub_24A62ED54();

  sub_24A50D7EC(0, &qword_27EF50798, 0x277CBF6A8);
  v3 = sub_24A62ED54();

  v9[0] = 0;
  v4 = [v1 initWithEvents:v2 parameters:v3 error:v9];

  if (v4)
  {
    v5 = v9[0];
  }

  else
  {
    v6 = v9[0];
    sub_24A62E084();

    swift_willThrow();
  }

  v7 = *MEMORY[0x277D85DE8];
  return v4;
}

id sub_24A578C60(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x277D85DE8];
  result = sub_24A578D44(a1, a2, &qword_27EF50798, 0x277CBF6A8, &selRef_initWithEvents_parameters_error_);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

id sub_24A578CE0(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x277D85DE8];
  result = sub_24A578D44(a1, a2, &unk_27EF507D0, 0x277CBF6C8, &selRef_initWithEvents_parameterCurves_error_);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

id sub_24A578D44(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t *a4, SEL *a5)
{
  v18[1] = *MEMORY[0x277D85DE8];
  v9 = &v5[OBJC_IVAR____TtC11FMFindingUI17FMR1HapticPattern_name];
  *v9 = 0;
  v9[1] = 0;
  v5[OBJC_IVAR____TtC11FMFindingUI17FMR1HapticPattern_isTap] = 2;
  sub_24A50D7EC(0, &qword_27EF507A8, 0x277CBF6B8);
  v10 = sub_24A62ED54();

  sub_24A50D7EC(0, a3, a4);
  v11 = sub_24A62ED54();

  v18[0] = 0;
  v17.receiver = v5;
  v17.super_class = type metadata accessor for FMR1HapticPattern();
  v12 = objc_msgSendSuper2(&v17, *a5, v10, v11, v18);

  if (v12)
  {
    v13 = v18[0];
  }

  else
  {
    v14 = v18[0];
    sub_24A62E084();

    swift_willThrow();
  }

  v15 = *MEMORY[0x277D85DE8];
  return v12;
}

id sub_24A578EC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t *a6, uint64_t *a7, SEL *a8)
{
  sub_24A50D7EC(0, &qword_27EF507A8, 0x277CBF6B8);
  v11 = sub_24A62ED64();
  sub_24A50D7EC(0, a6, a7);
  v12 = sub_24A62ED64();
  return sub_24A578D44(v11, v12, a6, a7, a8);
}

id sub_24A578FB8()
{
  v9[1] = *MEMORY[0x277D85DE8];
  v1 = &v0[OBJC_IVAR____TtC11FMFindingUI17FMR1HapticPattern_name];
  *v1 = 0;
  v1[1] = 0;
  v0[OBJC_IVAR____TtC11FMFindingUI17FMR1HapticPattern_isTap] = 2;
  type metadata accessor for Key(0);
  sub_24A582FCC(&qword_27EF4F1C0, type metadata accessor for Key);
  v2 = sub_24A62EB74();

  v9[0] = 0;
  v8.receiver = v0;
  v8.super_class = type metadata accessor for FMR1HapticPattern();
  v3 = objc_msgSendSuper2(&v8, sel_initWithDictionary_error_, v2, v9);

  if (v3)
  {
    v4 = v9[0];
  }

  else
  {
    v5 = v9[0];
    sub_24A62E084();

    swift_willThrow();
  }

  v6 = *MEMORY[0x277D85DE8];
  return v3;
}

id sub_24A5791E0(uint64_t a1)
{
  v2 = v1;
  v15[1] = *MEMORY[0x277D85DE8];
  v4 = objc_allocWithZone(v2);
  v5 = sub_24A62E0B4();
  v15[0] = 0;
  v6 = [v4 initWithContentsOfURL:v5 error:v15];

  v7 = v15[0];
  if (v6)
  {
    v8 = sub_24A62E0F4();
    v9 = *(*(v8 - 8) + 8);
    v10 = v7;
    v9(a1, v8);
  }

  else
  {
    v11 = v15[0];
    sub_24A62E084();

    swift_willThrow();
    v12 = sub_24A62E0F4();
    (*(*(v12 - 8) + 8))(a1, v12);
  }

  v13 = *MEMORY[0x277D85DE8];
  return v6;
}

id sub_24A579338(uint64_t a1)
{
  v2 = v1;
  v16[1] = *MEMORY[0x277D85DE8];
  v4 = &v2[OBJC_IVAR____TtC11FMFindingUI17FMR1HapticPattern_name];
  *v4 = 0;
  v4[1] = 0;
  v2[OBJC_IVAR____TtC11FMFindingUI17FMR1HapticPattern_isTap] = 2;
  v5 = sub_24A62E0B4();
  v16[0] = 0;
  v15.receiver = v2;
  v15.super_class = type metadata accessor for FMR1HapticPattern();
  v6 = objc_msgSendSuper2(&v15, sel_initWithContentsOfURL_error_, v5, v16);

  v7 = v16[0];
  if (v6)
  {
    v8 = sub_24A62E0F4();
    v9 = *(*(v8 - 8) + 8);
    v10 = v7;
    v9(a1, v8);
  }

  else
  {
    v11 = v16[0];
    sub_24A62E084();

    swift_willThrow();
    v12 = sub_24A62E0F4();
    (*(*(v12 - 8) + 8))(a1, v12);
  }

  v13 = *MEMORY[0x277D85DE8];
  return v6;
}

id sub_24A579580()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMR1HapticPattern();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}