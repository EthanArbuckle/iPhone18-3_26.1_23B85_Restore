uint64_t sub_24F2F2DF8(void *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_24F91F648();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PresenterError();
  MEMORY[0x28223BE20](v12);
  isEscapingClosureAtFileLocation = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3 < 0)
  {
    sub_24E60169C(v4 + qword_27F39CBF8, isEscapingClosureAtFileLocation + *(v12 + 20), &qword_27F228530);
    *isEscapingClosureAtFileLocation = a1;
    swift_beginAccess();
    v25 = v4[3];
    if (!v25)
    {
      v37 = a1;
      goto LABEL_26;
    }

    sub_24F2FA5C0(&qword_27F22B028, type metadata accessor for PresenterError);
    v26 = swift_allocError();
    sub_24F2FA558(isEscapingClosureAtFileLocation, v27, type metadata accessor for PresenterError);
    v19 = OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_errors;
    swift_beginAccess();
    v18 = *(v25 + v19);
    sub_24F2FA69C(a1, a2, a3);

    v28 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v25 + v19) = v18;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_16:
      v31 = *(v18 + 16);
      v30 = *(v18 + 24);
      if (v31 >= v30 >> 1)
      {
        v18 = sub_24E617130((v30 > 1), v31 + 1, 1, v18);
      }

      *(v18 + 16) = v31 + 1;
      *(v18 + 8 * v31 + 32) = v26;
      *(v25 + v19) = v18;
      swift_endAccess();

LABEL_26:
      sub_24F2FA5C0(&qword_27F22B028, type metadata accessor for PresenterError);
      v38 = swift_allocError();
      sub_24F2FA558(isEscapingClosureAtFileLocation, v39, type metadata accessor for PresenterError);
      v40 = swift_allocObject();
      swift_weakInit();
      v41 = v4 + *(*v4 + 176);
      swift_beginAccess();
      v42 = *v41;
      v43 = *(v41 + 1);
      v44 = *(v41 + 2);
      v45 = v41[24];
      *v41 = v38;
      *(v41 + 1) = sub_24F2FA25C;
      *(v41 + 2) = v40;
      v41[24] = 1;

      sub_24F24D234(v42, v43, v44, v45);
      sub_24EBDED8C(v42, v43, v44, v45);
      v46 = *v41;
      v47 = v41[24];
      if (v41[24])
      {
        if (v47 == 1)
        {
LABEL_56:
          v66 = *(v41 + 1);
          v67 = *(v41 + 2);
          aBlock = *v41;
          v72 = v66;
          v73 = v67;
          LOBYTE(v74) = v47;
          sub_24F24D234(v46, v66, v67, v47);
          sub_24F92AD88();
          sub_24EBDED8C(v42, v43, v44, v45);
          sub_24F2FA4F8(isEscapingClosureAtFileLocation, type metadata accessor for PresenterError);
          sub_24EBDED8C(aBlock, v72, v73, v74);
        }

        if (*(v41 + 1) | *(v41 + 2) | v46)
        {
          if (v45 != 2 || v42 != 1 || v44 | v43)
          {
            goto LABEL_56;
          }
        }

        else if (v45 != 2 || v44 | v43 | v42)
        {
          goto LABEL_56;
        }
      }

      else
      {
        if (v45 || v46 != v42)
        {
          goto LABEL_56;
        }

        sub_24EBDED8C(v42, v43, v44, 0);
      }

      sub_24F2FA4F8(isEscapingClosureAtFileLocation, type metadata accessor for PresenterError);
    }

LABEL_59:
    v18 = sub_24E617130(0, *(v18 + 16) + 1, 1, v18);
    *(v25 + v19) = v18;
    goto LABEL_16;
  }

  v70 = v11;
  v68 = v9;
  v69 = v8;
  v15 = *(*v4 + 1184);

  v15(a1, a3 & 1);
  *(v4 + qword_27F39CC10) = a2;

  v16 = v4 + *(*v4 + 176);
  swift_beginAccess();
  v17 = *v16;
  v18 = *(v16 + 1);
  v19 = *(v16 + 2);
  v20 = v16[24];
  *(v16 + 1) = 0;
  *(v16 + 2) = 0;
  *v16 = a1;
  v16[24] = 0;

  sub_24F24D234(v17, v18, v19, v20);
  sub_24EBDED8C(v17, v18, v19, v20);
  v21 = *v16;
  v22 = v16[24];
  if (!v16[24])
  {
    if (v20)
    {
      v32 = 0;
    }

    else
    {
      v32 = v21 == v17;
    }

    if (v32)
    {
      v33 = v17;
      v34 = v18;
      v35 = v19;
      v36 = 0;
LABEL_42:
      sub_24EBDED8C(v33, v34, v35, v36);
      goto LABEL_43;
    }

LABEL_41:
    v49 = *(v16 + 1);
    v50 = *(v16 + 2);
    aBlock = *v16;
    v72 = v49;
    v73 = v50;
    LOBYTE(v74) = v22;
    sub_24F24D234(v21, v49, v50, v22);
    sub_24F92AD88();
    sub_24EBDED8C(v17, v18, v19, v20);
    v33 = aBlock;
    v34 = v72;
    v35 = v73;
    v36 = v74;
    goto LABEL_42;
  }

  if (v22 == 1)
  {
    goto LABEL_41;
  }

  if (*(v16 + 1) | *(v16 + 2) | v21)
  {
    if (v20 != 2 || v17 != 1 || (v19 | v18) != 0)
    {
      goto LABEL_41;
    }
  }

  else if (v20 != 2 || (v19 | v18 | v17) != 0)
  {
    goto LABEL_41;
  }

LABEL_43:
  v51 = 1;
  if (a3)
  {
    v51 = *(a1 + *(*a1 + 200)) ^ 1;
  }

  v52 = qword_27F2326C8;
  v53 = *(v4 + *(*v4 + 688));
  v54 = swift_allocObject();
  *(v54 + 16) = v4;
  *(v54 + 24) = a2;
  *(v54 + 32) = 256;
  *(v54 + 34) = 1;
  *(v54 + 35) = v51 & 1;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_24F2FA28C;
  *(v25 + 24) = v54;
  v75 = sub_24E9727C0;
  v76 = v25;
  aBlock = MEMORY[0x277D85DD0];
  v72 = 1107296256;
  v73 = sub_24E971290;
  v74 = &block_descriptor_60;
  v26 = _Block_copy(&aBlock);

  dispatch_sync(v53, v26);
  _Block_release(v26);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  v55 = v70;
  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_59;
  }

  *(v4 + v52) = a3 & 1;
  swift_beginAccess();
  v56 = v4[3];
  if (v56)
  {

    sub_24F91F638();
    sub_24F91F5E8();
    v58 = v57;
    (*(v68 + 8))(v55, v69);
    v59 = v56 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_rootViewModelPresentTime;
    swift_beginAccess();
    *v59 = v58;
    *(v59 + 8) = 0;
    v60 = *(v56 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasViewModelPresentTime);
    swift_beginAccess();
    *(v60 + 40) = 1;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_24EA6BFA0();
    }
  }

  v61 = (v4 + *(*v4 + 752));
  v62 = *v61;
  if (*v61)
  {

    v62(v63);
    sub_24E824448(v62);
    v64 = *v61;
  }

  else
  {
    v64 = 0;
  }

  *v61 = 0;
  v61[1] = 0;
  return sub_24E824448(v64);
}

uint64_t sub_24F2F373C(void *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_24F91F648();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0) + 40;
  v12 = type metadata accessor for PresenterError();
  MEMORY[0x28223BE20](v12);
  isEscapingClosureAtFileLocation = aBlock - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0) + 40;
  if (a3 < 0)
  {
    sub_24E60169C(v4 + qword_27F39CBF8, isEscapingClosureAtFileLocation + *(v12 + 20), &qword_27F228530);
    *isEscapingClosureAtFileLocation = a1;
    swift_beginAccess();
    v8 = v4[3];
    if (!v8)
    {
      v40 = a1;
LABEL_22:
      sub_24F2FA5C0(&qword_27F22B028, type metadata accessor for PresenterError);
      v41 = swift_allocError();
      sub_24F2FA558(isEscapingClosureAtFileLocation, v42, type metadata accessor for PresenterError);
      v43 = swift_allocObject();
      swift_weakInit();

      sub_24F2F0040(v41, sub_24F2FA4C8, v43, 1);
      sub_24F2FA4F8(isEscapingClosureAtFileLocation, type metadata accessor for PresenterError);
    }

    sub_24F2FA5C0(&qword_27F22B028, type metadata accessor for PresenterError);
    v11 = swift_allocError();
    sub_24F2FA558(isEscapingClosureAtFileLocation, v21, type metadata accessor for PresenterError);
    v18 = OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_errors;
    swift_beginAccess();
    v22 = *(v8 + v18);
    sub_24F2FA69C(a1, a2, a3);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v8 + v18) = v22;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_7:
      v25 = v22[2];
      v24 = v22[3];
      if (v25 >= v24 >> 1)
      {
        v22 = sub_24E617130((v24 > 1), v25 + 1, 1, v22);
      }

      v22[2] = v25 + 1;
      v22[v25 + 4] = v11;
      *(v8 + v18) = v22;
      swift_endAccess();

      goto LABEL_22;
    }

LABEL_24:
    v22 = sub_24E617130(0, v22[2] + 1, 1, v22);
    *(v8 + v18) = v22;
    goto LABEL_7;
  }

  v44 = v9;
  v15 = *(*v4 + 1184);

  v15(a1, a3 & 1);
  *(v4 + qword_27F39CC10) = a2;

  v17 = sub_24F2F0040(v16, 0, 0, 0);
  v18 = qword_27F2326C8;
  if (*(v4 + qword_27F2326C8))
  {
    v19 = (*(*v4 + 1192))(v17);
    if ((a3 & 1) == 0)
    {
LABEL_4:
      v20 = 1;
      goto LABEL_12;
    }
  }

  else
  {
    v19 = 1;
    if ((a3 & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  v20 = *(a1 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_isIncomplete) ^ 1;
LABEL_12:
  v26 = *(v4 + *(*v4 + 688));
  v27 = swift_allocObject();
  *(v27 + 16) = v4;
  *(v27 + 24) = a2;
  *(v27 + 32) = 256;
  *(v27 + 34) = v19 & 1;
  *(v27 + 35) = v20 & 1;
  v28 = swift_allocObject();
  *(v28 + 16) = sub_24F2FA28C;
  *(v28 + 24) = v27;
  aBlock[4] = sub_24E9727C0;
  v46 = v28;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24E971290;
  aBlock[3] = &block_descriptor_139_0;
  v29 = _Block_copy(aBlock);
  v22 = v46;

  dispatch_sync(v26, v29);
  _Block_release(v29);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_24;
  }

  *(v4 + v18) = a3 & 1;
  swift_beginAccess();
  v30 = v4[3];
  if (v30)
  {

    sub_24F91F638();
    sub_24F91F5E8();
    v32 = v31;
    (*(v44 + 8))(v11, v8);
    v33 = v30 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_rootViewModelPresentTime;
    swift_beginAccess();
    *v33 = v32;
    *(v33 + 8) = 0;
    v34 = *(v30 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasViewModelPresentTime);
    swift_beginAccess();
    *(v34 + 40) = 1;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_24EA6BFA0();
    }
  }

  v35 = (v4 + *(*v4 + 752));
  v36 = *v35;
  if (*v35)
  {

    v36(v37);
    sub_24E824448(v36);
    v38 = *v35;
  }

  else
  {
    v38 = 0;
  }

  *v35 = 0;
  v35[1] = 0;
  return sub_24E824448(v38);
}

uint64_t sub_24F2F3E28(unsigned __int8 *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_24F91F648();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PresenterError();
  MEMORY[0x28223BE20](v12);
  isEscapingClosureAtFileLocation = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3 < 0)
  {
    sub_24E60169C(v4 + qword_27F39CBF8, isEscapingClosureAtFileLocation + *(v12 + 20), &qword_27F228530);
    *isEscapingClosureAtFileLocation = a1;
    swift_beginAccess();
    v17 = v4[3];
    if (!v17)
    {
      v38 = a1;
LABEL_19:
      sub_24F2FA5C0(&qword_27F22B028, type metadata accessor for PresenterError);
      v39 = swift_allocError();
      sub_24F2FA558(isEscapingClosureAtFileLocation, v40, type metadata accessor for PresenterError);
      v41 = swift_allocObject();
      swift_weakInit();

      sub_24F2F0040(v39, sub_24F2FA3F4, v41, 1);
      sub_24F2FA4F8(isEscapingClosureAtFileLocation, type metadata accessor for PresenterError);
    }

    sub_24F2FA5C0(&qword_27F22B028, type metadata accessor for PresenterError);
    v11 = swift_allocError();
    sub_24F2FA558(isEscapingClosureAtFileLocation, v33, type metadata accessor for PresenterError);
    v18 = OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_errors;
    swift_beginAccess();
    v23 = *(v17 + v18);
    sub_24F2FA69C(a1, a2, a3);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v17 + v18) = v23;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_13:
      v36 = v23[2];
      v35 = v23[3];
      if (v36 >= v35 >> 1)
      {
        v23 = sub_24E617130((v35 > 1), v36 + 1, 1, v23);
      }

      v23[2] = v36 + 1;
      v23[v36 + 4] = v11;
      *(v17 + v18) = v23;
      swift_endAccess();

      goto LABEL_19;
    }

LABEL_21:
    v23 = sub_24E617130(0, v23[2] + 1, 1, v23);
    *(v17 + v18) = v23;
    goto LABEL_13;
  }

  v42 = v9;
  v43 = v8;
  v15 = *(*v4 + 1184);

  v15(a1, a3 & 1);
  *(v4 + qword_27F39CC10) = a2;

  sub_24F2F0040(v16, 0, 0, 0);
  v17 = 1;
  if (a3)
  {
    v17 = a1[OBJC_IVAR____TtC12GameStoreKit11ArticlePage_isIncomplete] ^ 1u;
  }

  v18 = qword_27F2326C8;
  v19 = *(v4 + *(*v4 + 688));
  v20 = swift_allocObject();
  *(v20 + 16) = v4;
  *(v20 + 24) = a2;
  *(v20 + 32) = 256;
  *(v20 + 34) = 1;
  *(v20 + 35) = v17 & 1;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_24F2FA28C;
  *(v21 + 24) = v20;
  aBlock[4] = sub_24E9727C0;
  v45 = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24E971290;
  aBlock[3] = &block_descriptor_111;
  v22 = _Block_copy(aBlock);
  v23 = v45;

  dispatch_sync(v19, v22);
  _Block_release(v22);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_21;
  }

  *(v4 + v18) = a3 & 1;
  swift_beginAccess();
  v24 = v4[3];
  if (v24)
  {

    sub_24F91F638();
    sub_24F91F5E8();
    v26 = v25;
    (*(v42 + 8))(v11, v43);
    v27 = v24 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_rootViewModelPresentTime;
    swift_beginAccess();
    *v27 = v26;
    *(v27 + 8) = 0;
    v28 = *(v24 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasViewModelPresentTime);
    swift_beginAccess();
    *(v28 + 40) = 1;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_24EA6BFA0();
    }
  }

  v29 = (v4 + *(*v4 + 752));
  v30 = *v29;
  if (*v29)
  {

    v30(v31);
    sub_24E824448(v30);
    v32 = *v29;
  }

  else
  {
    v32 = 0;
  }

  *v29 = 0;
  v29[1] = 0;
  return sub_24E824448(v32);
}

uint64_t sub_24F2F44C8(unsigned __int8 *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_24F91F648();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PresenterError();
  MEMORY[0x28223BE20](v12);
  isEscapingClosureAtFileLocation = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3 < 0)
  {
    sub_24E60169C(v4 + qword_27F39CBF8, isEscapingClosureAtFileLocation + *(v12 + 20), &qword_27F228530);
    *isEscapingClosureAtFileLocation = a1;
    swift_beginAccess();
    v17 = v4[3];
    if (!v17)
    {
      v38 = a1;
LABEL_19:
      sub_24F2FA5C0(&qword_27F22B028, type metadata accessor for PresenterError);
      v39 = swift_allocError();
      sub_24F2FA558(isEscapingClosureAtFileLocation, v40, type metadata accessor for PresenterError);
      v41 = swift_allocObject();
      swift_weakInit();

      sub_24F2F0040(v39, sub_24F2FA394, v41, 1);
      sub_24F2FA4F8(isEscapingClosureAtFileLocation, type metadata accessor for PresenterError);
    }

    sub_24F2FA5C0(&qword_27F22B028, type metadata accessor for PresenterError);
    v11 = swift_allocError();
    sub_24F2FA558(isEscapingClosureAtFileLocation, v33, type metadata accessor for PresenterError);
    v18 = OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_errors;
    swift_beginAccess();
    v23 = *(v17 + v18);
    sub_24F2FA69C(a1, a2, a3);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v17 + v18) = v23;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_13:
      v36 = v23[2];
      v35 = v23[3];
      if (v36 >= v35 >> 1)
      {
        v23 = sub_24E617130((v35 > 1), v36 + 1, 1, v23);
      }

      v23[2] = v36 + 1;
      v23[v36 + 4] = v11;
      *(v17 + v18) = v23;
      swift_endAccess();

      goto LABEL_19;
    }

LABEL_21:
    v23 = sub_24E617130(0, v23[2] + 1, 1, v23);
    *(v17 + v18) = v23;
    goto LABEL_13;
  }

  v42 = v9;
  v43 = v8;
  v15 = *(*v4 + 1184);

  v15(a1, a3 & 1);
  *(v4 + qword_27F39CC10) = a2;

  sub_24F2F0040(v16, 0, 0, 0);
  v17 = 1;
  if (a3)
  {
    v17 = a1[OBJC_IVAR____TtC12GameStoreKit11GenericPage_isIncomplete] ^ 1u;
  }

  v18 = qword_27F2326C8;
  v19 = *(v4 + *(*v4 + 688));
  v20 = swift_allocObject();
  *(v20 + 16) = v4;
  *(v20 + 24) = a2;
  *(v20 + 32) = 256;
  *(v20 + 34) = 1;
  *(v20 + 35) = v17 & 1;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_24F2FA28C;
  *(v21 + 24) = v20;
  aBlock[4] = sub_24E9727C0;
  v45 = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24E971290;
  aBlock[3] = &block_descriptor_97;
  v22 = _Block_copy(aBlock);
  v23 = v45;

  dispatch_sync(v19, v22);
  _Block_release(v22);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_21;
  }

  *(v4 + v18) = a3 & 1;
  swift_beginAccess();
  v24 = v4[3];
  if (v24)
  {

    sub_24F91F638();
    sub_24F91F5E8();
    v26 = v25;
    (*(v42 + 8))(v11, v43);
    v27 = v24 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_rootViewModelPresentTime;
    swift_beginAccess();
    *v27 = v26;
    *(v27 + 8) = 0;
    v28 = *(v24 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasViewModelPresentTime);
    swift_beginAccess();
    *(v28 + 40) = 1;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_24EA6BFA0();
    }
  }

  v29 = (v4 + *(*v4 + 752));
  v30 = *v29;
  if (*v29)
  {

    v30(v31);
    sub_24E824448(v30);
    v32 = *v29;
  }

  else
  {
    v32 = 0;
  }

  *v29 = 0;
  v29[1] = 0;
  return sub_24E824448(v32);
}

uint64_t sub_24F2F4B68(void *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_24F91F648();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0) + 40;
  v12 = type metadata accessor for PresenterError();
  MEMORY[0x28223BE20](v12);
  v14 = aBlock - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0) + 40;
  if (a3 < 0)
  {
    sub_24E60169C(v4 + qword_27F39CBF8, v14 + *(v12 + 20), &qword_27F228530);
    *v14 = a1;
    swift_beginAccess();
    v8 = v4[3];
    if (!v8)
    {
      v37 = a1;
LABEL_17:
      sub_24F2FA5C0(&qword_27F22B028, type metadata accessor for PresenterError);
      v38 = swift_allocError();
      sub_24F2FA558(v14, v39, type metadata accessor for PresenterError);
      v40 = swift_allocObject();
      swift_weakInit();

      sub_24F2F0040(v38, sub_24F2FA2D4, v40, 1);
      sub_24F2FA4F8(v14, type metadata accessor for PresenterError);
    }

    sub_24F2FA5C0(&qword_27F22B028, type metadata accessor for PresenterError);
    v11 = swift_allocError();
    sub_24F2FA558(v14, v32, type metadata accessor for PresenterError);
    v17 = OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_errors;
    swift_beginAccess();
    v22 = *(v8 + v17);
    sub_24F2FA69C(a1, a2, a3);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v8 + v17) = v22;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_11:
      v35 = v22[2];
      v34 = v22[3];
      if (v35 >= v34 >> 1)
      {
        v22 = sub_24E617130((v34 > 1), v35 + 1, 1, v22);
      }

      v22[2] = v35 + 1;
      v22[v35 + 4] = v11;
      *(v8 + v17) = v22;
      swift_endAccess();

      goto LABEL_17;
    }

LABEL_19:
    v22 = sub_24E617130(0, v22[2] + 1, 1, v22);
    *(v8 + v17) = v22;
    goto LABEL_11;
  }

  v41 = v9;
  v15 = *(*v4 + 1184);

  v14 = a3 & 1;
  v15(a1, v14);
  *(v4 + qword_27F39CC10) = a2;

  sub_24F2F0040(v16, 0, 0, 0);
  v17 = qword_27F2326C8;
  v18 = *(v4 + *(*v4 + 688));
  v19 = swift_allocObject();
  *(v19 + 16) = v4;
  *(v19 + 24) = a2;
  *(v19 + 32) = 16843008;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_24F2FA28C;
  *(v20 + 24) = v19;
  aBlock[4] = sub_24E9727C0;
  v43 = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24E971290;
  aBlock[3] = &block_descriptor_77_1;
  v21 = _Block_copy(aBlock);
  v22 = v43;

  dispatch_sync(v18, v21);
  _Block_release(v21);
  LOBYTE(v18) = swift_isEscapingClosureAtFileLocation();

  if (v18)
  {
    __break(1u);
    goto LABEL_19;
  }

  *(v4 + v17) = v14;
  swift_beginAccess();
  v23 = v4[3];
  if (v23)
  {

    sub_24F91F638();
    sub_24F91F5E8();
    v25 = v24;
    (*(v41 + 8))(v11, v8);
    v26 = v23 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_rootViewModelPresentTime;
    swift_beginAccess();
    *v26 = v25;
    *(v26 + 8) = 0;
    v27 = *(v23 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasViewModelPresentTime);
    swift_beginAccess();
    *(v27 + 40) = 1;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_24EA6BFA0();
    }
  }

  v28 = (v4 + *(*v4 + 752));
  v29 = *v28;
  if (*v28)
  {

    v29(v30);
    sub_24E824448(v29);
    v31 = *v28;
  }

  else
  {
    v31 = 0;
  }

  *v28 = 0;
  v28[1] = 0;
  return sub_24E824448(v31);
}

uint64_t sub_24F2F51E4(unsigned __int8 *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_24F91F648();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PresenterError();
  MEMORY[0x28223BE20](v12);
  isEscapingClosureAtFileLocation = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3 < 0)
  {
    sub_24E60169C(v4 + qword_27F39CBF8, isEscapingClosureAtFileLocation + *(v12 + 20), &qword_27F228530);
    *isEscapingClosureAtFileLocation = a1;
    swift_beginAccess();
    v16 = v4[3];
    if (!v16)
    {
      v37 = a1;
LABEL_19:
      sub_24F2FA5C0(&qword_27F22B028, type metadata accessor for PresenterError);
      v38 = swift_allocError();
      sub_24F2FA558(isEscapingClosureAtFileLocation, v39, type metadata accessor for PresenterError);
      v40 = swift_allocObject();
      swift_weakInit();

      sub_24F2F0040(v38, sub_24F2F9FA8, v40, 1);
      sub_24F2FA4F8(isEscapingClosureAtFileLocation, type metadata accessor for PresenterError);
    }

    sub_24F2FA5C0(&qword_27F22B028, type metadata accessor for PresenterError);
    v11 = swift_allocError();
    sub_24F2FA558(isEscapingClosureAtFileLocation, v32, type metadata accessor for PresenterError);
    v17 = OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_errors;
    swift_beginAccess();
    v22 = *(v16 + v17);
    sub_24F2FA69C(a1, a2, a3);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v16 + v17) = v22;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_13:
      v35 = v22[2];
      v34 = v22[3];
      if (v35 >= v34 >> 1)
      {
        v22 = sub_24E617130((v34 > 1), v35 + 1, 1, v22);
      }

      v22[2] = v35 + 1;
      v22[v35 + 4] = v11;
      *(v16 + v17) = v22;
      swift_endAccess();

      goto LABEL_19;
    }

LABEL_21:
    v22 = sub_24E617130(0, v22[2] + 1, 1, v22);
    *(v16 + v17) = v22;
    goto LABEL_13;
  }

  v41 = v9;
  v42 = v8;

  sub_24F2F77B0(a1, a3 & 1);
  *(v4 + qword_27F39CC10) = a2;

  sub_24F2F0040(v15, 0, 0, 0);
  v16 = 1;
  if (a3)
  {
    v16 = a1[OBJC_IVAR____TtC12GameStoreKit11GenericPage_isIncomplete] ^ 1u;
  }

  v17 = qword_27F2326C8;
  v18 = *(v4 + *(*v4 + 688));
  v19 = swift_allocObject();
  *(v19 + 16) = v4;
  *(v19 + 24) = a2;
  *(v19 + 32) = 256;
  *(v19 + 34) = 1;
  *(v19 + 35) = v16 & 1;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_24F2F9FD8;
  *(v20 + 24) = v19;
  aBlock[4] = sub_24E972460;
  v44 = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24E971290;
  aBlock[3] = &block_descriptor_141;
  v21 = _Block_copy(aBlock);
  v22 = v44;

  dispatch_sync(v18, v21);
  _Block_release(v21);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_21;
  }

  *(v4 + v17) = a3 & 1;
  swift_beginAccess();
  v23 = v4[3];
  if (v23)
  {

    sub_24F91F638();
    sub_24F91F5E8();
    v25 = v24;
    (*(v41 + 8))(v11, v42);
    v26 = v23 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_rootViewModelPresentTime;
    swift_beginAccess();
    *v26 = v25;
    *(v26 + 8) = 0;
    v27 = *(v23 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasViewModelPresentTime);
    swift_beginAccess();
    *(v27 + 40) = 1;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_24EA6BFA0();
    }
  }

  v28 = (v4 + *(*v4 + 752));
  v29 = *v28;
  if (*v28)
  {

    v29(v30);
    sub_24E824448(v29);
    v31 = *v28;
  }

  else
  {
    v31 = 0;
  }

  *v28 = 0;
  v28[1] = 0;
  return sub_24E824448(v31);
}

uint64_t sub_24F2F585C(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = sub_24F91F648();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for ArcadePage();
  v21 = v19;
  v22 = &protocol witness table for BasePage;
  v10 = sub_24F2FA5C0(&qword_27F23E6F8, type metadata accessor for ArcadePage);
  v23 = v10;
  v20[0] = a1;
  swift_beginAccess();

  sub_24E9CBF30(v20, (v2 + 5), &qword_27F224F98);
  swift_endAccess();
  sub_24F2EF90C();
  result = sub_24E601704(v20, &qword_27F224F98);
  if ((a2 & 1) == 0 || (*(a1 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_isIncomplete) & 1) == 0)
  {
    result = swift_beginAccess();
    if (v2[3])
    {

      sub_24F91F638();
      sub_24F91F5E8();
      v13 = v12;
      (*(v7 + 8))(v9, v6);
      PendingPageRender.initialRequestEndTime.setter(v13, 0);
    }

    if ((a2 & 1) == 0 || (*(a1 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_isIncomplete) & 1) == 0)
    {
      result = swift_beginAccess();
      if (v2[3])
      {
        v22 = &protocol witness table for BasePage;
        v23 = v10;
        v21 = v19;
        v20[0] = a1;

        PendingPageRender.use(pageRenderEventFrom:)(v20);

        result = sub_24E601704(v20, &qword_27F224F98);
      }

      if ((a2 & 1) == 0)
      {
        if (*(a1 + 16))
        {
          type metadata accessor for PageRefreshGate();
          swift_allocObject();

          v15 = sub_24EA69948(v14);
          *(v3 + *(*v3 + 736)) = v15;

          v16 = swift_allocObject();
          swift_weakInit();
          swift_beginAccess();
          v17 = *(v15 + 16);
          *(v15 + 16) = sub_24EBD4CA8;
          *(v15 + 24) = v16;

          sub_24E824448(v17);
        }

        else
        {
          *(v2 + *(*v2 + 736)) = 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_24F2F5BDC(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = sub_24F91F648();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for ArticlePage();
  v21 = v19;
  v22 = &protocol witness table for BasePage;
  v10 = sub_24F2FA5C0(&qword_27F216890, type metadata accessor for ArticlePage);
  v23 = v10;
  v20[0] = a1;
  swift_beginAccess();

  sub_24E9CBF30(v20, (v2 + 5), &qword_27F224F98);
  swift_endAccess();
  sub_24F2EF90C();
  result = sub_24E601704(v20, &qword_27F224F98);
  if ((a2 & 1) == 0 || (*(a1 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_isIncomplete) & 1) == 0)
  {
    result = swift_beginAccess();
    if (v2[3])
    {

      sub_24F91F638();
      sub_24F91F5E8();
      v13 = v12;
      (*(v7 + 8))(v9, v6);
      PendingPageRender.initialRequestEndTime.setter(v13, 0);
    }

    if ((a2 & 1) == 0 || (*(a1 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_isIncomplete) & 1) == 0)
    {
      result = swift_beginAccess();
      if (v2[3])
      {
        v22 = &protocol witness table for BasePage;
        v23 = v10;
        v21 = v19;
        v20[0] = a1;

        PendingPageRender.use(pageRenderEventFrom:)(v20);

        result = sub_24E601704(v20, &qword_27F224F98);
      }

      if ((a2 & 1) == 0)
      {
        if (*(a1 + 16))
        {
          type metadata accessor for PageRefreshGate();
          swift_allocObject();

          v15 = sub_24EA69948(v14);
          *(v3 + *(*v3 + 736)) = v15;

          v16 = swift_allocObject();
          swift_weakInit();
          swift_beginAccess();
          v17 = *(v15 + 16);
          *(v15 + 16) = sub_24F2FA3C4;
          *(v15 + 24) = v16;

          sub_24E824448(v17);
        }

        else
        {
          *(v2 + *(*v2 + 736)) = 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_24F2F5F5C(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = sub_24F91F648();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for GenericPage();
  v21 = v19;
  v22 = &protocol witness table for BasePage;
  v10 = sub_24F2FA5C0(&qword_27F235598, type metadata accessor for GenericPage);
  v23 = v10;
  v20[0] = a1;
  swift_beginAccess();

  sub_24E9CBF30(v20, (v2 + 5), &qword_27F224F98);
  swift_endAccess();
  sub_24F2EF90C();
  result = sub_24E601704(v20, &qword_27F224F98);
  if ((a2 & 1) == 0 || (*(a1 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_isIncomplete) & 1) == 0)
  {
    result = swift_beginAccess();
    if (v2[3])
    {

      sub_24F91F638();
      sub_24F91F5E8();
      v13 = v12;
      (*(v7 + 8))(v9, v6);
      PendingPageRender.initialRequestEndTime.setter(v13, 0);
    }

    if ((a2 & 1) == 0 || (*(a1 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_isIncomplete) & 1) == 0)
    {
      result = swift_beginAccess();
      if (v2[3])
      {
        v22 = &protocol witness table for BasePage;
        v23 = v10;
        v21 = v19;
        v20[0] = a1;

        PendingPageRender.use(pageRenderEventFrom:)(v20);

        result = sub_24E601704(v20, &qword_27F224F98);
      }

      if ((a2 & 1) == 0)
      {
        if (*(a1 + 16))
        {
          type metadata accessor for PageRefreshGate();
          swift_allocObject();

          v15 = sub_24EA69948(v14);
          *(v3 + *(*v3 + 736)) = v15;

          v16 = swift_allocObject();
          swift_weakInit();
          swift_beginAccess();
          v17 = *(v15 + 16);
          *(v15 + 16) = sub_24F2FA498;
          *(v15 + 24) = v16;

          sub_24E824448(v17);
        }

        else
        {
          *(v2 + *(*v2 + 736)) = 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_24F2F62DC(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = sub_24F91F648();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for ReviewsPage(0);
  v21 = v19;
  v22 = &protocol witness table for BasePage;
  v10 = sub_24F2FA5C0(&qword_27F23E710, type metadata accessor for ReviewsPage);
  v23 = v10;
  v20[0] = a1;
  swift_beginAccess();

  sub_24E9CBF30(v20, (v2 + 5), &qword_27F224F98);
  swift_endAccess();
  sub_24F2EF90C();
  result = sub_24E601704(v20, &qword_27F224F98);
  if ((a2 & 1) == 0 || (*(a1 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_isIncomplete) & 1) == 0)
  {
    result = swift_beginAccess();
    if (v2[3])
    {

      sub_24F91F638();
      sub_24F91F5E8();
      v13 = v12;
      (*(v7 + 8))(v9, v6);
      PendingPageRender.initialRequestEndTime.setter(v13, 0);
    }

    if ((a2 & 1) == 0 || (*(a1 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_isIncomplete) & 1) == 0)
    {
      result = swift_beginAccess();
      if (v2[3])
      {
        v22 = &protocol witness table for BasePage;
        v23 = v10;
        v21 = v19;
        v20[0] = a1;

        PendingPageRender.use(pageRenderEventFrom:)(v20);

        result = sub_24E601704(v20, &qword_27F224F98);
      }

      if ((a2 & 1) == 0)
      {
        if (*(a1 + 16))
        {
          type metadata accessor for PageRefreshGate();
          swift_allocObject();

          v15 = sub_24EA69948(v14);
          *(v3 + *(*v3 + 736)) = v15;

          v16 = swift_allocObject();
          swift_weakInit();
          swift_beginAccess();
          v17 = *(v15 + 16);
          *(v15 + 16) = sub_24F2FA334;
          *(v15 + 24) = v16;

          sub_24E824448(v17);
        }

        else
        {
          *(v2 + *(*v2 + 736)) = 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_24F2F665C(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = sub_24F91F648();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for SearchFocusPage();
  v21 = v19;
  v22 = &protocol witness table for BasePage;
  v10 = sub_24F2FA5C0(&qword_27F23E708, type metadata accessor for SearchFocusPage);
  v23 = v10;
  v20[0] = a1;
  swift_beginAccess();

  sub_24E9CBF30(v20, (v2 + 5), &qword_27F224F98);
  swift_endAccess();
  sub_24F2EF90C();
  result = sub_24E601704(v20, &qword_27F224F98);
  if ((a2 & 1) == 0 || (*(a1 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_isIncomplete) & 1) == 0)
  {
    result = swift_beginAccess();
    if (v2[3])
    {

      sub_24F91F638();
      sub_24F91F5E8();
      v13 = v12;
      (*(v7 + 8))(v9, v6);
      PendingPageRender.initialRequestEndTime.setter(v13, 0);
    }

    if ((a2 & 1) == 0 || (*(a1 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_isIncomplete) & 1) == 0)
    {
      result = swift_beginAccess();
      if (v2[3])
      {
        v22 = &protocol witness table for BasePage;
        v23 = v10;
        v21 = v19;
        v20[0] = a1;

        PendingPageRender.use(pageRenderEventFrom:)(v20);

        result = sub_24E601704(v20, &qword_27F224F98);
      }

      if ((a2 & 1) == 0)
      {
        if (*(a1 + 16))
        {
          type metadata accessor for PageRefreshGate();
          swift_allocObject();

          v15 = sub_24EA69948(v14);
          *(v3 + *(*v3 + 736)) = v15;

          v16 = swift_allocObject();
          swift_weakInit();
          swift_beginAccess();
          v17 = *(v15 + 16);
          *(v15 + 16) = sub_24F2FA304;
          *(v15 + 24) = v16;

          sub_24E824448(v17);
        }

        else
        {
          *(v2 + *(*v2 + 736)) = 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_24F2F69DC(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = sub_24F91F648();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for TopChartSegment();
  v21 = v19;
  v22 = &protocol witness table for BasePage;
  v10 = sub_24F2FA5C0(&qword_27F22CEE8, type metadata accessor for TopChartSegment);
  v23 = v10;
  v20[0] = a1;
  swift_beginAccess();

  sub_24E9CBF30(v20, (v2 + 5), &qword_27F224F98);
  swift_endAccess();
  sub_24F2EF90C();
  result = sub_24E601704(v20, &qword_27F224F98);
  if ((a2 & 1) == 0 || (*(a1 + OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_isIncomplete) & 1) == 0)
  {
    result = swift_beginAccess();
    if (v2[3])
    {

      sub_24F91F638();
      sub_24F91F5E8();
      v13 = v12;
      (*(v7 + 8))(v9, v6);
      PendingPageRender.initialRequestEndTime.setter(v13, 0);
    }

    if ((a2 & 1) == 0 || (*(a1 + OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_isIncomplete) & 1) == 0)
    {
      result = swift_beginAccess();
      if (v2[3])
      {
        v22 = &protocol witness table for BasePage;
        v23 = v10;
        v21 = v19;
        v20[0] = a1;

        PendingPageRender.use(pageRenderEventFrom:)(v20);

        result = sub_24E601704(v20, &qword_27F224F98);
      }

      if ((a2 & 1) == 0)
      {
        if (*(a1 + 16))
        {
          type metadata accessor for PageRefreshGate();
          swift_allocObject();

          v15 = sub_24EA69948(v14);
          *(v3 + *(*v3 + 736)) = v15;

          v16 = swift_allocObject();
          swift_weakInit();
          swift_beginAccess();
          v17 = *(v15 + 16);
          *(v15 + 16) = sub_24F2FA438;
          *(v15 + 24) = v16;

          sub_24E824448(v17);
        }

        else
        {
          *(v2 + *(*v2 + 736)) = 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_24F2F6D5C(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = sub_24F91F648();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for SearchLandingPage();
  v21 = v19;
  v22 = &protocol witness table for BasePage;
  v10 = sub_24F2FA5C0(&qword_27F23E718, type metadata accessor for SearchLandingPage);
  v23 = v10;
  v20[0] = a1;
  swift_beginAccess();

  sub_24E9CBF30(v20, (v2 + 5), &qword_27F224F98);
  swift_endAccess();
  sub_24F2EF90C();
  result = sub_24E601704(v20, &qword_27F224F98);
  if ((a2 & 1) == 0 || (*(a1 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_isIncomplete) & 1) == 0)
  {
    result = swift_beginAccess();
    if (v2[3])
    {

      sub_24F91F638();
      sub_24F91F5E8();
      v13 = v12;
      (*(v7 + 8))(v9, v6);
      PendingPageRender.initialRequestEndTime.setter(v13, 0);
    }

    if ((a2 & 1) == 0 || (*(a1 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_isIncomplete) & 1) == 0)
    {
      result = swift_beginAccess();
      if (v2[3])
      {
        v22 = &protocol witness table for BasePage;
        v23 = v10;
        v21 = v19;
        v20[0] = a1;

        PendingPageRender.use(pageRenderEventFrom:)(v20);

        result = sub_24E601704(v20, &qword_27F224F98);
      }

      if ((a2 & 1) == 0)
      {
        if (*(a1 + 16))
        {
          type metadata accessor for PageRefreshGate();
          swift_allocObject();

          v15 = sub_24EA69948(v14);
          *(v3 + *(*v3 + 736)) = v15;

          v16 = swift_allocObject();
          swift_weakInit();
          swift_beginAccess();
          v17 = *(v15 + 16);
          *(v15 + 16) = sub_24F2FA364;
          *(v15 + 24) = v16;

          sub_24E824448(v17);
        }

        else
        {
          *(v2 + *(*v2 + 736)) = 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_24F2F70DC(uint64_t a1, int a2)
{
  v3 = v2;
  HIDWORD(v18) = a2;
  v5 = sub_24F91F648();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v9 = type metadata accessor for SearchResultsPage();
  v20 = v9;
  v21 = &protocol witness table for BasePage;
  v10 = sub_24F2FA5C0(&qword_27F23E700, type metadata accessor for SearchResultsPage);
  v22 = v10;
  v19[0] = a1;
  swift_beginAccess();

  sub_24E9CBF30(v19, (v2 + 5), &qword_27F224F98);
  swift_endAccess();
  sub_24F2EF90C();
  sub_24E601704(v19, &qword_27F224F98);
  result = swift_beginAccess();
  if (v2[3])
  {

    sub_24F91F638();
    sub_24F91F5E8();
    v13 = v12;
    (*(v6 + 8))(v8, v5);
    PendingPageRender.initialRequestEndTime.setter(v13, 0);

    if (v2[3])
    {
      v21 = &protocol witness table for BasePage;
      v22 = v10;
      v20 = v9;
      v19[0] = a1;

      PendingPageRender.use(pageRenderEventFrom:)(v19);

      result = sub_24E601704(v19, &qword_27F224F98);
    }
  }

  if ((v18 & 0x100000000) == 0)
  {
    if (*(a1 + 16))
    {
      type metadata accessor for PageRefreshGate();
      swift_allocObject();

      v15 = sub_24EA69948(v14);
      *(v3 + *(*v3 + 736)) = v15;

      v16 = swift_allocObject();
      swift_weakInit();
      swift_beginAccess();
      v17 = *(v15 + 16);
      *(v15 + 16) = sub_24F2FA2A4;
      *(v15 + 24) = v16;

      sub_24E824448(v17);
    }

    else
    {
      *(v2 + *(*v2 + 736)) = 0;
    }
  }

  return result;
}

uint64_t sub_24F2F7418(void *a1, char a2)
{
  v3 = v2;
  v6 = sub_24F91F648();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for SearchChartsAndCategoriesPage();
  v22 = v20;
  v23 = &protocol witness table for BasePage;
  v10 = sub_24F2FA5C0(&qword_27F23E6F0, type metadata accessor for SearchChartsAndCategoriesPage);
  v24 = v10;
  v21[0] = a1;
  swift_beginAccess();

  sub_24E9CBF30(v21, (v2 + 5), &qword_27F224F98);
  swift_endAccess();
  sub_24F2EF90C();
  result = sub_24E601704(v21, &qword_27F224F98);
  if (a2)
  {
    v12 = *a1;
    if (*(a1 + *(*a1 + 200)))
    {
LABEL_7:
      if (*(a1 + *(v12 + 200)))
      {
        return result;
      }

      goto LABEL_8;
    }
  }

  result = swift_beginAccess();
  if (v2[3])
  {

    sub_24F91F638();
    sub_24F91F5E8();
    v14 = v13;
    (*(v7 + 8))(v9, v6);
    PendingPageRender.initialRequestEndTime.setter(v14, 0);
  }

  if (a2)
  {
    v12 = *a1;
    goto LABEL_7;
  }

LABEL_8:
  result = swift_beginAccess();
  if (v2[3])
  {
    v23 = &protocol witness table for BasePage;
    v24 = v10;
    v22 = v20;
    v21[0] = a1;

    PendingPageRender.use(pageRenderEventFrom:)(v21);

    result = sub_24E601704(v21, &qword_27F224F98);
  }

  if ((a2 & 1) == 0)
  {
    if (a1[2])
    {
      type metadata accessor for PageRefreshGate();
      swift_allocObject();

      v16 = sub_24EA69948(v15);
      *(v3 + *(*v3 + 736)) = v16;

      v17 = swift_allocObject();
      swift_weakInit();
      swift_beginAccess();
      v18 = *(v16 + 16);
      *(v16 + 16) = sub_24F2FA22C;
      *(v16 + 24) = v17;

      sub_24E824448(v18);
    }

    else
    {
      *(v2 + *(*v2 + 736)) = 0;
    }
  }

  return result;
}

uint64_t sub_24F2F77B0(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = sub_24F91F648();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for ArcadeSeeAllGamesPage();
  v21 = v19;
  v22 = &protocol witness table for BasePage;
  v10 = sub_24F2FA5C0(qword_27F22E110, type metadata accessor for ArcadeSeeAllGamesPage);
  v23 = v10;
  v20[0] = a1;
  swift_beginAccess();

  sub_24E9CBF30(v20, (v2 + 5), &qword_27F224F98);
  swift_endAccess();
  sub_24F2EF90C();
  result = sub_24E601704(v20, &qword_27F224F98);
  if ((a2 & 1) == 0 || (*(a1 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_isIncomplete) & 1) == 0)
  {
    result = swift_beginAccess();
    if (v2[3])
    {

      sub_24F91F638();
      sub_24F91F5E8();
      v13 = v12;
      (*(v7 + 8))(v9, v6);
      PendingPageRender.initialRequestEndTime.setter(v13, 0);
    }

    if ((a2 & 1) == 0 || (*(a1 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_isIncomplete) & 1) == 0)
    {
      result = swift_beginAccess();
      if (v2[3])
      {
        v22 = &protocol witness table for BasePage;
        v23 = v10;
        v21 = v19;
        v20[0] = a1;

        PendingPageRender.use(pageRenderEventFrom:)(v20);

        result = sub_24E601704(v20, &qword_27F224F98);
      }

      if ((a2 & 1) == 0)
      {
        if (*(a1 + 16))
        {
          type metadata accessor for PageRefreshGate();
          swift_allocObject();

          v15 = sub_24EA69948(v14);
          *(v3 + *(*v3 + 736)) = v15;

          v16 = swift_allocObject();
          swift_weakInit();
          swift_beginAccess();
          v17 = *(v15 + 16);
          *(v15 + 16) = sub_24F2FA008;
          *(v15 + 24) = v16;

          sub_24E824448(v17);
        }

        else
        {
          *(v2 + *(*v2 + 736)) = 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_24F2F7B30()
{
  v1 = sub_24F929AB8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + qword_27F39B480);
  result = swift_beginAccess();
  if (!v5[1])
  {
    if (qword_27F210278 != -1)
    {
      swift_once();
    }

    v8 = *(off_27F229AB8 + 3);
    v7 = *(off_27F229AB8 + 4);
    *v5 = v8;
    v5[1] = v7;
    swift_bridgeObjectRetain_n();

    if (v7)
    {
      swift_beginAccess();
      if (*(v0 + 32))
      {
        v9 = qword_27F210658;

        if (v9 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v1, qword_27F22E3B8);
        v11[0] = v8;
        v11[1] = v7;
        if (qword_27F210670 != -1)
        {
          swift_once();
        }

        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C910);
        __swift_project_value_buffer(v10, qword_27F22E400);
        sub_24F929A48();

        sub_24F92A098();

        return (*(v2 + 8))(v4, v1);
      }

      else
      {
      }
    }
  }

  return result;
}

uint64_t sub_24F2F7D88(uint64_t a1, void (*a2)(uint64_t))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a2(1);
  }

  return result;
}

uint64_t sub_24F2F7EC4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a3(1);
  }

  return result;
}

uint64_t sub_24F2F7F28()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F58);
  __swift_allocate_value_buffer(v0, qword_27F23E6B8);
  __swift_project_value_buffer(v0, qword_27F23E6B8);
  return sub_24F928C68();
}

uint64_t static ArcadeSeeAllGamesDiffablePagePresenter.displayStyleKey.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F2110F0 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F58);
  v3 = __swift_project_value_buffer(v2, qword_27F23E6B8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t ArcadeSeeAllGamesDiffablePagePresenter.EmptyStateData.title.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ArcadeSeeAllGamesDiffablePagePresenter.EmptyStateData.subtitle.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ArcadeSeeAllGamesDiffablePagePresenter.__allocating_init(objectGraph:pageUrl:facetsPresenter:metricsPipeline:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_allocObject();
  v8 = sub_24F2F9288(a1, a2, a3, a4);

  return v8;
}

uint64_t ArcadeSeeAllGamesDiffablePagePresenter.init(objectGraph:pageUrl:facetsPresenter:metricsPipeline:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_24F2F9288(a1, a2, a3, a4);

  return v4;
}

uint64_t ArcadeSeeAllGamesDiffablePagePresenter.pageTitle.getter()
{
  v1 = (v0 + qword_27F39E2B8);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t ArcadeSeeAllGamesDiffablePagePresenter.displayStyle.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = qword_27F39E2C0;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t sub_24F2F8264(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = qword_27F39E2C0;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v7 = v5;
  return sub_24F2F8328(&v7);
}

uint64_t ArcadeSeeAllGamesDiffablePagePresenter.displayStyle.setter(char *a1)
{
  v2 = *a1;
  v3 = qword_27F39E2C0;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = v2;
  v6 = v4;
  return sub_24F2F8328(&v6);
}

uint64_t sub_24F2F8328(unsigned __int8 *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F58);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v15 - v5;
  v7 = *a1;
  v8 = qword_27F39E2C0;
  swift_beginAccess();
  if (*(v1 + v8))
  {
    v9 = 0x746361706D6F63;
  }

  else
  {
    v9 = 0x746C7561666564;
  }

  if (v7)
  {
    v10 = 0x746361706D6F63;
  }

  else
  {
    v10 = 0x746C7561666564;
  }

  if (v9 == v10)
  {
    return swift_bridgeObjectRelease_n();
  }

  v12 = sub_24F92CE08();
  result = swift_bridgeObjectRelease_n();
  if ((v12 & 1) == 0)
  {
    sub_24F929388();
    _s9JetEngine16LocalPreferencesC12GameStoreKitE03AppfG0ACvgZ_0();
    if (qword_27F2103B0 != -1)
    {
      swift_once();
    }

    v13 = __swift_project_value_buffer(v3, qword_27F22A908);
    (*(v4 + 16))(v6, v13, v3);
    if (*(v1 + v8))
    {
      v14 = 0x746361706D6F63;
    }

    else
    {
      v14 = 0x746C7561666564;
    }

    v15[1] = v14;
    v15[2] = 0xE700000000000000;
    sub_24F928878();

    return sub_24F23B690(1);
  }

  return result;
}

void (*ArcadeSeeAllGamesDiffablePagePresenter.displayStyle.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = qword_27F39E2C0;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_24F2F85D4;
}

void sub_24F2F85D4(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 24);
  v3 = *(*a1 + 32);
  v5 = *(v4 + v3);
  *(v4 + v3) = *(*a1 + 40);
  if (a2)
  {
    v7 = v5;
    v6 = &v7;
  }

  else
  {
    v8 = v5;
    v6 = &v8;
  }

  sub_24F2F8328(v6);

  free(v2);
}

uint64_t sub_24F2F8660(uint64_t a1)
{
  v56 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  v55 = *(v2 - 8);
  v3 = *(v55 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v58 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v50 - v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v50 - v8;
  v57 = v1[2];
  sub_24E60169C(v1 + qword_27F39CBF8, &v50 - v8, &qword_27F228530);
  v10 = qword_27F39E2C0;
  swift_beginAccess();
  LODWORD(v54) = *(v1 + v10);
  swift_beginAccess();
  v59 = v1[3];
  swift_beginAccess();
  v11 = v1[4];
  type metadata accessor for ArcadeSeeAllGamesDiffablePageContentPresenter();
  v12 = swift_allocObject();
  v13 = swift_allocObject();
  swift_weakInit();
  v50 = v9;
  sub_24E60169C(v9, v6, &qword_27F228530);
  v14 = (*(v55 + 80) + 24) & ~*(v55 + 80);
  v15 = v14 + v3;
  v16 = (v14 + v3) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  *(v17 + 16) = v13;
  sub_24E911D90(v6, v17 + v14);
  *(v17 + v15) = v54;
  v18 = v57;
  *(v17 + v16 + 8) = v57;
  *(v17 + ((v16 + 23) & 0xFFFFFFFFFFFFFFF8)) = v11;
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  *(v19 + 24) = v11;
  sub_24E60169C(v9, v58, &qword_27F228530);
  v20 = swift_allocObject();
  *(v20 + 16) = sub_24EFBB710;
  *(v20 + 24) = v18;
  v54 = v20;
  *(v12 + qword_27F22F198) = 0;
  v21 = MEMORY[0x277D84F90];
  *(v12 + qword_27F22F1A0) = MEMORY[0x277D84F90];
  v22 = qword_27F39C780;

  swift_retain_n();
  v55 = v11;
  swift_retain_n();

  *(v12 + v22) = sub_24E60986C(v21);
  v23 = (v12 + qword_27F22F1A8);
  *v23 = 0;
  v23[1] = 0;
  v24 = (v12 + qword_27F22F1B0);
  *v24 = 0;
  v24[1] = 0;
  v53 = v24;
  v25 = (v12 + qword_27F22F1B8);
  *v25 = 0;
  v25[1] = 0;
  v26 = (v12 + qword_27F22F1C0);
  *v26 = 0;
  v26[1] = 0;
  v52 = v26;
  v27 = (v12 + qword_27F22F1C8);
  *v27 = 0;
  v27[1] = 0;
  v51 = v27;
  v28 = (v12 + qword_27F39C788);
  *v28 = 0u;
  v28[1] = 0u;
  *(v28 + 25) = 0u;
  *(v12 + qword_27F39C790) = 0;
  *(v12 + qword_27F22F1D0) = 0;
  *(v12 + qword_27F22F1D8) = MEMORY[0x277D84FA0];
  *(v12 + qword_27F39C798) = 0;
  v29 = qword_27F39C7A0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AC20);
  swift_allocObject();
  *(v12 + v29) = sub_24F92ADA8();
  v30 = qword_27F39C7A8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226B8);
  swift_allocObject();
  *(v12 + v30) = sub_24F92ADA8();
  v31 = qword_27F39C7B0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AC40);
  swift_allocObject();
  *(v12 + v31) = sub_24F92ADA8();
  v32 = qword_27F39C7B8;
  swift_allocObject();
  *(v12 + v32) = sub_24F92ADA8();
  v33 = qword_27F39C7C0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226C8);
  swift_allocObject();
  *(v12 + v33) = sub_24F92ADA8();
  v34 = qword_27F39C7C8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226D0);
  swift_allocObject();
  v35 = sub_24F92ADA8();
  v36 = v19;

  v37 = v57;

  sub_24E601704(v50, &qword_27F228530);
  *(v12 + v34) = v35;
  v38 = qword_27F22F1E0;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226D8);
  v40 = *(*(v39 - 8) + 56);
  v40(v12 + v38, 1, 1, v39);
  v41 = v39;
  v42 = v56;
  v40(v12 + qword_27F22F1E8, 1, 1, v41);
  *(v12 + 16) = v37;
  sub_24E911D90(v58, v12 + qword_27F39C7D0);
  *v23 = sub_24EFBB988;
  v23[1] = v17;
  *v25 = 0;
  v25[1] = 0;
  if (v42)
  {
    v43 = swift_allocObject();
    *(v43 + 16) = v42;
    v44 = sub_24E965688;
  }

  else
  {
    v44 = 0;
    v43 = 0;
  }

  v45 = v52;
  v46 = v53;
  *v53 = v44;
  v46[1] = v43;
  *v45 = sub_24EFBB5AC;
  v45[1] = v36;
  v47 = v51;
  v48 = v54;
  *v51 = sub_24ECB25B4;
  v47[1] = v48;
  *(v12 + qword_27F22F1F0) = v59;
  *(v12 + qword_27F39C7D8) = v55;

  return v12;
}

uint64_t sub_24F2F8CFC(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 16);
  result = sub_24F2F51E4(*a1, *(a1 + 8), *(a1 + 16));
  if ((v3 & 0x80000000) == 0)
  {
    v5 = *&v2[OBJC_IVAR____TtC12GameStoreKit21ArcadeSeeAllGamesPage_facets + 8];
    v6 = *&v2[OBJC_IVAR____TtC12GameStoreKit21ArcadeSeeAllGamesPage_facets + 16];
    v7 = v2[OBJC_IVAR____TtC12GameStoreKit21ArcadeSeeAllGamesPage_facets + 24];
    v16.value.facetGroups._rawValue = *&v2[OBJC_IVAR____TtC12GameStoreKit21ArcadeSeeAllGamesPage_facets];
    v16.value.resetButtonTitle.value._countAndFlagsBits = v5;
    v16.value.resetButtonTitle.value._object = v6;
    v16.value.allowsResetButton = v7;
    v8._rawValue = *&v2[OBJC_IVAR____TtC12GameStoreKit21ArcadeSeeAllGamesPage_selectedFacetOptions];
    sub_24E903680(v16.value.facetGroups._rawValue);
    PageFacetsPresenter.setFacets(_:selectedFacetOptions:)(&v16, v8);
    sub_24E9036C4(v16.value.facetGroups._rawValue);
    v9 = *(v1 + qword_27F39CC10);
    if (!(v9 >> 62))
    {
      result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        return result;
      }

      goto LABEL_4;
    }

    result = sub_24F92C738();
    if (!result)
    {
LABEL_4:
      v10._object = 0x800000024FA5AA20;
      v10._countAndFlagsBits = 0xD00000000000001CLL;
      v11._countAndFlagsBits = 0;
      v11._object = 0xE000000000000000;
      v12 = localizedString(_:comment:)(v10, v11);
      v13._countAndFlagsBits = 0xD000000000000022;
      v13._object = 0x800000024FA5AA40;
      v14._countAndFlagsBits = 0;
      v14._object = 0xE000000000000000;
      v15 = localizedString(_:comment:)(v13, v14);
      v16.value.facetGroups._rawValue = v12._countAndFlagsBits;
      v16.value.resetButtonTitle.value._countAndFlagsBits = v12._object;
      *&v16.value.resetButtonTitle.value._object = v15;
      sub_24F92AD88();
      return sub_24EAD7A40(v16.value.facetGroups._rawValue, v16.value.resetButtonTitle.value._countAndFlagsBits);
    }
  }

  return result;
}

Swift::Void __swiftcall ArcadeSeeAllGamesDiffablePagePresenter.toggleDisplayStyle()()
{
  v1 = qword_27F39E2C0;
  swift_beginAccess();
  if (*(v0 + v1) == 1)
  {
  }

  else
  {
    v2 = sub_24F92CE08();

    if ((v2 & 1) == 0)
    {
      v3 = *(v0 + v1);
      *(v0 + v1) = 1;
      goto LABEL_6;
    }
  }

  v3 = *(v0 + v1);
  *(v0 + v1) = 0;
LABEL_6:
  v4 = v3;
  sub_24F2F8328(&v4);
}

uint64_t sub_24F2F8F24()
{
  v1 = type metadata accessor for StoreViewControllerLifecycleEvent();
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  sub_24F929F88();
  v4 = sub_24F929FB8();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 11, v4);
  sub_24F2F01C4(v3);
  sub_24F2FA4F8(v3, type metadata accessor for StoreViewControllerLifecycleEvent);
  memset(v8, 0, sizeof(v8));
  swift_beginAccess();
  sub_24E9CBF30(v8, v0 + 40, &qword_27F224F98);
  swift_endAccess();
  sub_24F2EF90C();
  sub_24E601704(v8, &qword_27F224F98);
  sub_24F23B690(1);
  v5(v3, 3, 11, v4);
  sub_24F2F01C4(v3);
  return sub_24F2FA4F8(v3, type metadata accessor for StoreViewControllerLifecycleEvent);
}

Swift::Void __swiftcall ArcadeSeeAllGamesDiffablePagePresenter.commitBatchFacetUpdates()()
{
  if (*(v0 + qword_27F23E6D0) == 1)
  {
    *(v0 + qword_27F23E6D0) = 0;
    if (*(v0 + qword_27F23E6D8) == 1)
    {
      *(v0 + qword_27F23E6D8) = 0;
      sub_24F2F8F24();
    }
  }
}

uint64_t sub_24F2F912C()
{
}

uint64_t ArcadeSeeAllGamesDiffablePagePresenter.deinit()
{
  v0 = sub_24EBC0120();

  return v0;
}

uint64_t ArcadeSeeAllGamesDiffablePagePresenter.__deallocating_deinit()
{
  sub_24EBC0120();

  return swift_deallocClassInstance();
}

uint64_t sub_24F2F9288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v69 = a4;
  v65 = *v4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A920);
  v67 = *(v9 - 8);
  v68 = v9;
  MEMORY[0x28223BE20](v9);
  v66 = v54 - v10;
  v11 = sub_24F92BEE8();
  v60 = *(v11 - 8);
  v61 = v11;
  MEMORY[0x28223BE20](v11);
  v59 = v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_24F92BE88();
  MEMORY[0x28223BE20](v56);
  v58 = v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24F927DC8();
  MEMORY[0x28223BE20](v14 - 8);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = v54 - v16;
  v18 = (v4 + qword_27F39E2B8);
  v19._object = 0x800000024FA55100;
  v19._countAndFlagsBits = 0xD000000000000010;
  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  *v18 = localizedString(_:comment:)(v19, v20);
  *(v5 + qword_27F23E6D0) = 0;
  *(v5 + qword_27F23E6D8) = 0;
  v21 = qword_27F39E2D0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E720);
  swift_allocObject();
  *(v5 + v21) = sub_24F92ADA8();
  *(v5 + qword_27F39E2C8) = a3;
  sub_24F929388();
  v64 = a3;

  _s9JetEngine16LocalPreferencesC12GameStoreKitE03AppfG0ACvgZ_0();
  if (qword_27F2103B0 != -1)
  {
    swift_once();
  }

  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F58);
  __swift_project_value_buffer(v22, qword_27F22A908);
  sub_24F928868();

  v23 = sub_24F92CB88();

  *(v5 + qword_27F39E2C0) = v23 == 1;
  v24 = sub_24F91F4A8();
  v63 = v24;
  v25 = *(v24 - 8);
  v57 = v25;
  (*(v25 + 16))(v17, a2, v24);
  (*(v25 + 56))(v17, 0, 1, v24);
  v73 = 0;
  memset(v72, 0, sizeof(v72));
  *(v5 + qword_27F39CC00) = 0;
  v26 = MEMORY[0x277D84F90];
  *(v5 + qword_27F39CC10) = MEMORY[0x277D84F90];
  *(v5 + qword_27F2326C8) = 0;
  v27 = *v5;
  v55 = v17;
  v28 = *(v27 + 640);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AC18);
  v30 = *(v29 - 8);
  v62 = a2;
  v31 = *(v30 + 56);
  v31(v5 + v28, 1, 1, v29);
  v32 = *(*v5 + 648);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AB90);
  (*(*(v33 - 8) + 56))(v5 + v32, 1, 1, v33);
  v34 = *(*v5 + 656);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AC00);
  (*(*(v35 - 8) + 56))(v5 + v34, 1, 1, v35);
  v31(v5 + *(*v5 + 664), 1, 1, v29);
  v36 = *(*v5 + 672);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABA0);
  (*(*(v37 - 8) + 56))(v5 + v36, 1, 1, v37);
  v38 = *(*v5 + 680);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABA8);
  (*(*(v39 - 8) + 56))(v5 + v38, 1, 1, v39);
  v40 = *(*v5 + 688);
  sub_24E74EC40();

  sub_24F927DA8();
  v71 = v26;
  sub_24F2FA5C0(&qword_27F2394E0, MEMORY[0x277D85230]);
  v54[1] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BD30);
  sub_24E602068(&qword_27F2394F0, &unk_27F22BD30);
  sub_24F92C6A8();
  (*(v60 + 104))(v59, *MEMORY[0x277D85260], v61);
  *(v5 + v40) = sub_24F92BF38();
  sub_24EBD3128(v5 + *(*v5 + 696));
  v41 = (v5 + *(*v5 + 704));
  *v41 = 0u;
  v41[1] = 0u;
  *(v41 + 25) = 0u;
  v42 = *(*v5 + 712);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABB0);
  swift_allocObject();
  *(v5 + v42) = sub_24F92ADA8();
  v43 = *(*v5 + 720);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABB8);
  swift_allocObject();
  *(v5 + v43) = sub_24F92ADA8();
  v44 = *(*v5 + 728);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226C8);
  swift_allocObject();
  *(v5 + v44) = sub_24F92ADA8();
  *(v5 + *(*v5 + 736)) = 0;
  v45 = (v5 + *(*v5 + 752));
  *v45 = 0;
  v45[1] = 0;
  v46 = v55;
  sub_24E60169C(v55, v5 + qword_27F39CBF8, &qword_27F228530);
  sub_24E60169C(v72, v5 + *(*v5 + 744), &qword_27F229490);
  v47 = type metadata accessor for InlineUnifiedMessagePresenter();
  v70.receiver = objc_allocWithZone(v47);
  v70.super_class = v47;
  *(v5 + qword_27F39CC08) = objc_msgSendSuper2(&v70, sel_init);

  v49 = sub_24EBBA220(v48, 0, 0, 0);
  v50 = *(*v49 + 1112);

  *(v49 + qword_27F39CC00) = v50(0);

  sub_24EBCBED4(0);

  sub_24E601704(v72, &qword_27F229490);
  sub_24E601704(v46, &qword_27F228530);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A648);
  sub_24E602068(&qword_27F22A940, &qword_27F22A648);

  sub_24F9288B8();
  v51 = v66;
  sub_24F9288C8();

  v52 = sub_24F929158();
  (*(*(v52 - 8) + 8))(v69, v52);
  (*(v57 + 8))(v62, v63);
  __swift_destroy_boxed_opaque_existential_1(v72);
  (*(v67 + 8))(v51, v68);
  return v49;
}

uint64_t sub_24F2F9E2C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = qword_27F39E2C0;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t type metadata accessor for ArcadeSeeAllGamesDiffablePagePresenter()
{
  result = qword_27F23E6E0;
  if (!qword_27F23E6E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F2F9F70()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t block_copy_helper_141(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24F2FA038()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);

  v3 = sub_24F91F4A8();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v0 + v2, 1, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  return swift_deallocObject();
}

uint64_t sub_24F2FA17C()
{

  return swift_deallocObject();
}

uint64_t sub_24F2FA1BC()
{

  return swift_deallocObject();
}

uint64_t sub_24F2FA1F4()
{

  return swift_deallocObject();
}

uint64_t sub_24F2FA4F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F2FA558(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F2FA5C0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24F2FA608()
{
  if (*(v0 + qword_27F23E6D0) != 1)
  {
    return sub_24F2F8F24();
  }

  *(v0 + qword_27F23E6D8) = 1;
  return result;
}

id sub_24F2FA69C(void *a1, uint64_t a2, char a3)
{
  if (a3 < 0)
  {

    return a1;
  }

  else
  {
  }
}

uint64_t static EditorialDisplayOptions.default.getter@<X0>(_BYTE *a1@<X8>)
{
  if (qword_27F2110F8 != -1)
  {
    v7 = a1;
    result = swift_once();
    a1 = v7;
  }

  v1 = BYTE1(dword_27F23E728);
  v2 = BYTE2(dword_27F23E728);
  v3 = HIBYTE(dword_27F23E728);
  v4 = byte_27F23E72C;
  v5 = byte_27F23E72D;
  v6 = byte_27F23E72E;
  *a1 = dword_27F23E728;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v4;
  a1[5] = v5;
  a1[6] = v6;
  return result;
}

GameStoreKit::EditorialDisplayOptions __swiftcall EditorialDisplayOptions.init(useGeneratedBackground:suppressLockup:suppressTagline:showBadgeInSmallCards:showAppIcon:useMaterialBlur:useTextProtectionColor:)(Swift::Bool useGeneratedBackground, Swift::Bool suppressLockup, Swift::Bool suppressTagline, Swift::Bool showBadgeInSmallCards, Swift::Bool showAppIcon, Swift::Bool useMaterialBlur, Swift::Bool useTextProtectionColor)
{
  *v7 = useGeneratedBackground;
  v7[1] = suppressLockup;
  v7[2] = suppressTagline;
  v7[3] = showBadgeInSmallCards;
  v7[4] = showAppIcon;
  v7[5] = useMaterialBlur;
  v7[6] = useTextProtectionColor;
  result.useGeneratedBackground = useGeneratedBackground;
  return result;
}

uint64_t EditorialDisplayOptions.init(deserializing:using:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v43 = a3;
  v42 = a2;
  v4 = sub_24F928388();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v41 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v39 - v8;
  MEMORY[0x28223BE20](v9);
  v39 = &v39 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v39 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v39 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v39 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v39 - v21;
  sub_24F928398();
  v23 = sub_24F928278();
  v24 = *(v5 + 8);
  v24(v22, v4);
  v49 = v23 & 1;
  sub_24F928398();
  v25 = sub_24F928278();
  v24(v19, v4);
  v48 = v25 & 1;
  sub_24F928398();
  v26 = sub_24F928278();
  v24(v16, v4);
  v47 = v26 & 1;
  sub_24F928398();
  v27 = sub_24F928278();
  v24(v13, v4);
  v46 = v27 & 1;
  v28 = v39;
  sub_24F928398();
  LOBYTE(v13) = sub_24F928278();
  v24(v28, v4);
  v45 = v13 & 1;
  v29 = v40;
  sub_24F928398();
  LOBYTE(v13) = sub_24F928278();
  v24(v29, v4);
  v44 = v13 & 1;
  v30 = v41;
  sub_24F928398();
  LOBYTE(v13) = sub_24F928278();
  v31 = sub_24F9285B8();
  (*(*(v31 - 8) + 8))(v42, v31);
  v24(a1, v4);
  result = (v24)(v30, v4);
  v33 = v48;
  v34 = v47;
  v35 = v46;
  v36 = v45;
  v37 = v44;
  v38 = v43;
  *v43 = v49;
  v38[1] = v33;
  v38[2] = v34;
  v38[3] = v35;
  v38[4] = v36;
  v38[5] = v37;
  v38[6] = v13 & 1;
  return result;
}

uint64_t EditorialDisplayOptions.hash(into:)()
{
  sub_24F92D088();
  sub_24F92D088();
  sub_24F92D088();
  sub_24F92D088();
  sub_24F92D088();
  sub_24F92D088();
  return sub_24F92D088();
}

uint64_t EditorialDisplayOptions.hashValue.getter()
{
  sub_24F92D068();
  EditorialDisplayOptions.hash(into:)();
  return sub_24F92D0B8();
}

uint64_t sub_24F2FAE34()
{
  sub_24F92D068();
  EditorialDisplayOptions.hash(into:)();
  return sub_24F92D0B8();
}

uint64_t sub_24F2FAEB4()
{
  sub_24F92D068();
  EditorialDisplayOptions.hash(into:)();
  return sub_24F92D0B8();
}

unint64_t sub_24F2FAFC4()
{
  result = qword_27F23E730;
  if (!qword_27F23E730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23E730);
  }

  return result;
}

_DWORD *__swift_memcpy7_1(_DWORD *result, int *a2)
{
  v2 = *a2;
  *(result + 3) = *(a2 + 3);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for EditorialDisplayOptions(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[7])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for EditorialDisplayOptions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 6) = 0;
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 7) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 7) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_24F2FB0EC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E748);
  MEMORY[0x28223BE20](v0);
  v2 = &v5 - v1;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E750);
  v3 = swift_allocObject();
  *&v3[(*(*v3 + 48) + 3) & 0x1FFFFFFFCLL] = 0;
  result = sub_24F2FBF18(v2, &v3[*(*v3 + *MEMORY[0x277D841D0] + 16)]);
  off_27F23E738 = v3;
  return result;
}

uint64_t sub_24F2FB220()
{
  v0 = type metadata accessor for DataIntentCacheBusterStreamState();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218350);
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2471F0);
  v4 = swift_allocObject();
  *&v4[(*(*v4 + 48) + 3) & 0x1FFFFFFFCLL] = 0;
  result = sub_24E8F771C(v2, &v4[*(*v4 + *MEMORY[0x277D841D0] + 16)]);
  off_27F23E740 = v4;
  return result;
}

uint64_t sub_24F2FB384(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2471C0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v16 - v5;
  v7 = type metadata accessor for DataIntentCacheBusterStreamState();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F2FB5F8(a1, v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218350);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) != 1)
  {
    return sub_24F2FB65C(v9);
  }

  sub_24F2FB65C(a1);
  v12 = sub_24E802CE0(&unk_2861C20F8);
  v16[1] = v1;
  v13 = MEMORY[0x28223BE20](v12);
  v16[-4] = v14;
  v16[-3] = &unk_24F9E1DE0;
  v16[-2] = 0;
  LOWORD(v16[-1]) = 0;
  (*(v4 + 104))(v6, *MEMORY[0x277D85778], v3, v13);
  sub_24F92B928();

  return (*(v11 + 56))(a1, 0, 1, v10);
}

uint64_t sub_24F2FB5F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DataIntentCacheBusterStreamState();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F2FB65C(uint64_t a1)
{
  v2 = type metadata accessor for DataIntentCacheBusterStreamState();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24F2FB6D4()
{
  if (qword_27F2113E8 != -1)
  {
    swift_once();
  }

  v1 = sub_24F9220D8();
  __swift_project_value_buffer(v1, qword_27F39E808);
  v2 = sub_24F9220B8();
  v3 = sub_24F92BD98();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24E5DD000, v2, v3, "[FriendSuggestionsDenyListDataIntentImplementation] UpdateListener says friend suggestions updated, dropping previously cached denylist.", v4, 2u);
    MEMORY[0x2530542D0](v4, -1, -1);
  }

  if (qword_27F211100 != -1)
  {
    swift_once();
  }

  v5 = off_27F23E738;
  v6 = *(*off_27F23E738 + *MEMORY[0x277D841D0] + 16);
  v7 = (*(*off_27F23E738 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_27F23E738 + v7));
  sub_24F2FBEB0(&v5[v6]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E748);
  swift_storeEnumTagMultiPayload();
  os_unfair_lock_unlock(&v5[v7]);
  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_24F2FB8A4(void *a1, uint64_t a2)
{
  sub_24F2FBEB0(a1);
  *a1 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E748);
  swift_storeEnumTagMultiPayload();
}

uint64_t sub_24F2FB90C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E768);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = aBlock - v4;
  v6 = [objc_opt_self() proxyForLocalPlayer];
  v7 = [v6 utilityServicePrivate];

  (*(v3 + 16))(v5, a1, v2);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  (*(v3 + 32))(v9 + v8, v5, v2);
  aBlock[4] = sub_24F2FD3DC;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24F51A1D8;
  aBlock[3] = &block_descriptor_142;
  v10 = _Block_copy(aBlock);

  [v7 getFriendSuggestionDenyListWithHandler_];
  _Block_release(v10);
  return swift_unknownObjectRelease();
}

uint64_t sub_24F2FBB00(uint64_t a1)
{
  if (qword_27F2113E8 != -1)
  {
    swift_once();
  }

  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E808);
  v3 = sub_24F9220B8();
  v4 = sub_24F92BD98();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_24E5DD000, v3, v4, "[FriendSuggestionsDenyListDataIntentImplementation fetchAndUpdateCache] Fetched denylist.", v5, 2u);
    MEMORY[0x2530542D0](v5, -1, -1);
  }

  if (*(a1 + 16))
  {
    v6 = sub_24E76D644(0x49746361746E6F63, 0xEA00000000007344);
    if (v7)
    {
      v8 = *(*(a1 + 56) + 8 * v6);

      v9 = *(v8 + 16);
      if (!v9)
      {
        goto LABEL_8;
      }

LABEL_11:
      v10 = sub_24EAE678C(v9, 0);
      v11 = sub_24EAE7C84(v19, v10 + 4, v9, v8);
      result = sub_24E6586B4();
      if (v11 != v9)
      {
        __break(1u);
        goto LABEL_20;
      }

      if (!*(a1 + 16))
      {
        goto LABEL_16;
      }

      goto LABEL_13;
    }
  }

  v8 = MEMORY[0x277D84FA0];
  v9 = *(MEMORY[0x277D84FA0] + 16);
  if (v9)
  {
    goto LABEL_11;
  }

LABEL_8:

  v10 = MEMORY[0x277D84F90];
  if (!*(a1 + 16))
  {
    goto LABEL_16;
  }

LABEL_13:
  v13 = sub_24E76D644(0x4449726579616C70, 0xE900000000000073);
  if (v14)
  {
    v15 = *(*(a1 + 56) + 8 * v13);

    v16 = *(v15 + 16);
    if (v16)
    {
      goto LABEL_17;
    }

LABEL_15:

    v17 = MEMORY[0x277D84F90];
LABEL_18:
    v19[0] = v10;
    v19[1] = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E768);
    return sub_24F92B798();
  }

LABEL_16:
  v15 = MEMORY[0x277D84FA0];
  v16 = *(MEMORY[0x277D84FA0] + 16);
  if (!v16)
  {
    goto LABEL_15;
  }

LABEL_17:
  v17 = sub_24EAE678C(v16, 0);
  v18 = sub_24EAE7C84(v19, v17 + 4, v16, v15);
  result = sub_24E6586B4();
  if (v18 == v16)
  {
    goto LABEL_18;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_24F2FBD78(void *a1, uint64_t a2, uint64_t a3)
{
  sub_24F2FBEB0(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E758);
  *a1 = a2;
  a1[1] = a3;

  sub_24F91F618();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E748);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_24F2FBE0C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_24F17DAEC;

  return sub_24F2FC440();
}

uint64_t sub_24F2FBEB0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E748);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24F2FBF18(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E748);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F2FBFB8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E760);
  *(v0 + 48) = sub_24F92A9E8();
  if (qword_27F211100 != -1)
  {
    swift_once();
  }

  v1 = off_27F23E738;
  *(v0 + 56) = off_27F23E738;
  v2 = *v1;
  v3 = *(*v1 + *MEMORY[0x277D841D0] + 16);
  *(v0 + 64) = v3;
  v4 = *(v2 + 48);
  *(v0 + 88) = v4;
  v5 = (v4 + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v5));
  sub_24F2FD310((v1 + v3));
  os_unfair_lock_unlock((v1 + v5));
  v6 = swift_task_alloc();
  *(v0 + 72) = v6;
  *v6 = v0;
  v6[1] = sub_24F2FC184;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000015, 0x800000024FA73580, sub_24F2FB90C, 0, &type metadata for FriendSuggestionsDenyListDataIntent.DenyList);
}

uint64_t sub_24F2FC184()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_24F2FC3DC;
  }

  else
  {
    v2 = sub_24F2FC298;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_24F2FC298()
{
  v1 = *(v0 + 16);
  *(v0 + 32) = v1;
  v2 = *(v0 + 80);
  v4 = *(v0 + 56);
  v3 = *(v0 + 64);
  v5 = (*(v0 + 88) + 3) & 0x1FFFFFFFCLL;
  v6 = *(v0 + 24);
  *(v0 + 40) = v6;
  sub_24F92A9C8();
  v7 = swift_task_alloc();
  *(v7 + 16) = v1;
  *(v7 + 24) = v6;
  os_unfair_lock_lock((v4 + v5));
  sub_24F2FD32C((v4 + v3));
  v8 = *(v0 + 88);
  v9 = *(v0 + 56);
  if (v2)
  {

    os_unfair_lock_unlock((v9 + ((v8 + 3) & 0x1FFFFFFFCLL)));
  }

  else
  {
    os_unfair_lock_unlock((v9 + ((v8 + 3) & 0x1FFFFFFFCLL)));

    v10 = *(v0 + 8);

    v10(v1, v6);
  }
}

uint64_t sub_24F2FC3DC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F2FC440()
{
  v1 = sub_24F91F648();
  v0[4] = v1;
  v0[5] = *(v1 - 8);
  v0[6] = swift_task_alloc();
  v0[7] = swift_task_alloc();
  v0[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E748);
  v0[9] = swift_task_alloc();
  v0[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F2FC550, 0, 0);
}

uint64_t sub_24F2FC550()
{
  if (qword_27F211100 != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v2 = v0[10];
  v3 = off_27F23E738;
  v4 = *(*off_27F23E738 + *MEMORY[0x277D841D0] + 16);
  v5 = (*(*off_27F23E738 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_27F23E738 + v5));
  sub_24F2FD2A0(&v3[v4], v2);
  os_unfair_lock_unlock(&v3[v5]);
  sub_24F2FD2A0(v2, v1);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      v27 = swift_task_alloc();
      v0[11] = v27;
      *v27 = v0;
      v28 = sub_24F2FCACC;
LABEL_21:
      v27[1] = v28;

      return sub_24F2FBF9C();
    }

    v7 = v0[9];
    v8 = v0[7];
    v9 = v0[4];
    v10 = v0[5];
    v12 = *v7;
    v11 = *(v7 + 1);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E758);
    (*(v10 + 32))(v8, &v7[*(v13 + 48)], v9);
    if (qword_27F2113E8 != -1)
    {
      swift_once();
    }

    v14 = sub_24F9220D8();
    __swift_project_value_buffer(v14, qword_27F39E808);
    v15 = sub_24F9220B8();
    v16 = sub_24F92BD98();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_24E5DD000, v15, v16, "[FriendSuggestionsDenyListDataIntentImplementation] Returning cached denylist.", v17, 2u);
      MEMORY[0x2530542D0](v17, -1, -1);
    }

    v18 = v0[6];
    v19 = v0[4];
    v20 = v0[5];

    sub_24F91F638();
    sub_24F91F558();
    v22 = v21;
    v23 = *(v20 + 8);
    v0[19] = v23;
    v0[20] = (v20 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v23(v18, v19);
    if (v22 > 300.0)
    {

      v24 = sub_24F9220B8();
      v25 = sub_24F92BD98();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_24E5DD000, v24, v25, "[FriendSuggestionsDenyListDataIntentImplementation] Cache is getting old, discarding.", v26, 2u);
        MEMORY[0x2530542D0](v26, -1, -1);
      }

      v27 = swift_task_alloc();
      v0[21] = v27;
      *v27 = v0;
      v28 = sub_24F2FCF74;
      goto LABEL_21;
    }

    v34 = v0[10];
    v23(v0[7], v0[4]);
    sub_24F2FBEB0(v34);

    v35 = v0[1];

    return v35(v12, v11);
  }

  else
  {
    v0[15] = *v0[9];
    if (qword_27F2113E8 != -1)
    {
      swift_once();
    }

    v29 = sub_24F9220D8();
    v0[16] = __swift_project_value_buffer(v29, qword_27F39E808);
    v30 = sub_24F9220B8();
    v31 = sub_24F92BD98();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_24E5DD000, v30, v31, "[FriendSuggestionsDenyListDataIntentImplementation] Fetch in progress, waiting for it to finish...", v32, 2u);
      MEMORY[0x2530542D0](v32, -1, -1);
    }

    v33 = swift_task_alloc();
    v0[17] = v33;
    *v33 = v0;
    v33[1] = sub_24F2FCD34;

    return MEMORY[0x282180668](v0 + 2);
  }
}

uint64_t sub_24F2FCACC(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 96) = v2;

  if (v2)
  {
    v7 = sub_24F2FCCA4;
  }

  else
  {
    *(v6 + 104) = a2;
    *(v6 + 112) = a1;
    v7 = sub_24F2FCC00;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_24F2FCC00()
{
  sub_24F2FBEB0(v0[10]);
  v1 = v0[13];
  v2 = v0[14];

  v3 = v0[1];

  return v3(v2, v1);
}

uint64_t sub_24F2FCCA4()
{
  sub_24F2FBEB0(*(v0 + 80));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F2FCD34()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_24F2FD204;
  }

  else
  {
    v2 = sub_24F2FCE48;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F2FCE48()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = sub_24F9220B8();
  v4 = sub_24F92BD98();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[10];
  if (v5)
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_24E5DD000, v3, v4, "[FriendSuggestionsDenyListDataIntentImplementation] Fetch finished, returning newly-cached denylist", v7, 2u);
    MEMORY[0x2530542D0](v7, -1, -1);
  }

  sub_24F2FBEB0(v6);

  v8 = v0[1];

  return v8(v1, v2);
}

uint64_t sub_24F2FCF74(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 176) = v2;

  if (v2)
  {
    v7 = sub_24F2FD160;
  }

  else
  {
    *(v6 + 184) = a2;
    *(v6 + 192) = a1;
    v7 = sub_24F2FD0A8;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_24F2FD0A8()
{
  v1 = *(v0 + 80);
  (*(v0 + 152))(*(v0 + 56), *(v0 + 32));
  sub_24F2FBEB0(v1);
  v2 = *(v0 + 184);
  v3 = *(v0 + 192);

  v4 = *(v0 + 8);

  return v4(v3, v2);
}

uint64_t sub_24F2FD160()
{
  v1 = *(v0 + 80);
  (*(v0 + 152))(*(v0 + 56), *(v0 + 32));
  sub_24F2FBEB0(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24F2FD204()
{
  v1 = *(v0 + 80);

  sub_24F2FBEB0(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24F2FD2A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E748);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F2FD348()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E768);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_24F2FD3DC(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E768);

  return sub_24F2FBB00(a1);
}

uint64_t block_copy_helper_142(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24F2FD470()
{
  sub_24E69A5C4(0, &qword_27F22BD50);
  result = sub_24F92C3D8();
  qword_27F39E2D8 = result;
  return result;
}

uint64_t _JetTraceReporter.init(metricsConfiguration:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for _JetTraceReporter();
  v5 = v4 - 8;
  v38 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v39 = v6;
  v40 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24F92BEE8();
  v36 = *(v7 - 8);
  v37 = v7;
  MEMORY[0x28223BE20](v7);
  v35 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_24F92BE88();
  MEMORY[0x28223BE20](v33);
  v9 = sub_24F927DC8();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = *(v5 + 36);
  v11 = sub_24F928BC8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 16);
  v32 = v11;
  v13(a2 + v10, a1);
  sub_24F928BB8();
  v34 = a1;
  a2[6] = sub_24F928B98();
  a2[7] = v14;
  if (qword_27F2110E0 != -1)
  {
    swift_once();
  }

  v15 = qword_27F23E578;
  type metadata accessor for _JetTraceAggregator();
  v16 = swift_allocObject();
  *(v16 + 32) = 0u;
  v31 = (v16 + 32);
  *(v16 + 16) = 0u;
  *(v16 + 96) = 0u;
  *(v16 + 112) = 0u;
  v17 = MEMORY[0x277D84F90];
  *(v16 + 128) = sub_24E611148(MEMORY[0x277D84F90]);
  v18 = sub_24E6112E4(v17);
  v19 = MEMORY[0x277D84FA0];
  *(v16 + 136) = v18;
  *(v16 + 144) = v19;
  *(v16 + 152) = v17;
  *(v16 + 160) = v17;
  *(v16 + 168) = v17;
  *(v16 + 176) = 0;
  *(v16 + 48) = v15;
  *(v16 + 56) = xmmword_24F9E1EB0;
  *(v16 + 72) = 0x404E000000000000;
  swift_beginAccess();
  v20 = *(v16 + 16);
  *(v16 + 24) = 0;
  *(v16 + 16) = 0;
  v21 = v15;
  sub_24E824448(v20);
  *(v16 + 80) = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  sub_24E69A5C4(0, &qword_27F222300);
  sub_24F927DA8();
  v41 = v17;
  sub_24EBD4288();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BD30);
  sub_24EC3122C();
  sub_24F92C6A8();
  (*(v36 + 104))(v35, *MEMORY[0x277D85260], v37);
  v22 = sub_24F92BF38();
  (*(v12 + 8))(v34, v32);
  *(v16 + 88) = v22;
  *a2 = v16;
  v23 = v40;
  sub_24F2FE250(a2, v40);
  v24 = (*(v38 + 80) + 16) & ~*(v38 + 80);
  v25 = swift_allocObject();
  sub_24F2FE2B8(v23, v25 + v24);
  v26 = *(v16 + 16);
  *(v16 + 16) = sub_24F2FE31C;
  *(v16 + 24) = v25;

  sub_24E824448(v26);
  sub_24F2FE250(a2, v23);
  v27 = swift_allocObject();
  sub_24F2FE2B8(v23, v27 + v24);
  v28 = v31;
  swift_beginAccess();
  v29 = *v28;
  *v28 = sub_24F2FE490;
  *(v16 + 40) = v27;
  sub_24E824448(v29);
}

uint64_t type metadata accessor for _JetTraceReporter()
{
  result = qword_27F23E770;
  if (!qword_27F23E770)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F2FDA24(unint64_t *a1)
{
  v2 = sub_24F928418();
  MEMORY[0x28223BE20](v2 - 8);
  v54 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24F929758();
  v56 = *(v4 - 8);
  v57 = v4;
  MEMORY[0x28223BE20](v4);
  v55 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  v7 = a1[1];
  v9 = a1[2];
  v8 = a1[3];
  v10 = MEMORY[0x277D837D0];
  v53 = a1[4];
  v62 = MEMORY[0x277D837D0];
  *&v61 = 6778732;
  *(&v61 + 1) = 0xE300000000000000;
  sub_24E612B0C(&v61, v60);

  v11 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v59 = v11;
  sub_24E81C1D4(v60, 0x707954746E657665, 0xE900000000000065, isUniquelyReferenced_nonNull_native);
  v13 = v59;
  if (qword_27F211110 != -1)
  {
    swift_once();
  }

  v14 = qword_27F39E2D8;
  v62 = sub_24E69A5C4(0, &qword_27F22BD50);
  *&v61 = v14;
  sub_24E612B0C(&v61, v60);
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v59 = v13;
  sub_24E81C1D4(v60, 0x726556746E657665, 0xEC0000006E6F6973, v16);
  v17 = v59;
  v62 = v10;
  strcpy(&v61, "jetTraceEvents");
  HIBYTE(v61) = -18;
  sub_24E612B0C(&v61, v60);
  v18 = swift_isUniquelyReferenced_nonNull_native();
  v59 = v17;
  sub_24E81C1D4(v60, 0x614E726567676F6CLL, 0xEA0000000000656DLL, v18);
  v19 = v59;
  v62 = v10;
  *&v61 = v7;
  *(&v61 + 1) = v9;
  sub_24E612B0C(&v61, v60);
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v59 = v19;
  sub_24E81C1D4(v60, 0x6D614E746E657665, 0xE900000000000065, v20);
  v21 = v59;
  v62 = MEMORY[0x277D839F8];
  *&v61 = v6 / 1000000.0;
  sub_24E612B0C(&v61, v60);
  v22 = swift_isUniquelyReferenced_nonNull_native();
  v59 = v21;
  sub_24E81C1D4(v60, 0x6E6F697461727564, 0xEA0000000000734DLL, v22);
  v23 = v59;
  v24 = v8[2];
  v25 = MEMORY[0x277D84F90];
  if (v24)
  {
    *&v61 = MEMORY[0x277D84F90];
    sub_24F4578E0(0, v24, 0);
    v25 = v61;
    v52 = v8;
    v26 = v8 + 9;
    v27 = v24;
    do
    {
      v28 = *(v26 - 1);
      v29 = *v26;
      *&v61 = v25;
      v30 = *(v25 + 16);
      v31 = *(v25 + 24);

      if (v30 >= v31 >> 1)
      {
        sub_24F4578E0((v31 > 1), v30 + 1, 1);
        v25 = v61;
      }

      *(v25 + 16) = v30 + 1;
      v32 = v25 + 16 * v30;
      *(v32 + 32) = v28;
      *(v32 + 40) = v29;
      v26 += 6;
      --v27;
    }

    while (v27);
    v8 = v52;
  }

  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0);
  v62 = v33;
  *&v61 = v25;
  sub_24E612B0C(&v61, v60);
  v34 = swift_isUniquelyReferenced_nonNull_native();
  v59 = v23;
  sub_24E81C1D4(v60, 0x7974697669746361, 0xED000073656D614ELL, v34);
  v35 = v59;
  v36 = MEMORY[0x277D84F90];
  if (v24)
  {
    *&v61 = MEMORY[0x277D84F90];
    sub_24F4578E0(0, v24, 0);
    v36 = v61;
    v37 = v8 + 5;
    do
    {
      v38 = *(v37 - 1);
      v39 = *v37;
      *&v61 = v36;
      v41 = *(v36 + 16);
      v40 = *(v36 + 24);

      if (v41 >= v40 >> 1)
      {
        sub_24F4578E0((v40 > 1), v41 + 1, 1);
        v36 = v61;
      }

      *(v36 + 16) = v41 + 1;
      v42 = v36 + 16 * v41;
      *(v42 + 32) = v38;
      *(v42 + 40) = v39;
      v37 += 6;
      --v24;
    }

    while (v24);
  }

  v62 = v33;
  *&v61 = v36;
  sub_24E612B0C(&v61, v60);
  v43 = swift_isUniquelyReferenced_nonNull_native();
  v59 = v35;
  sub_24E81C1D4(v60, 0x7974697669746361, 0xEB00000000736449, v43);
  v44 = v59;

  v45 = sub_24E954060(v53);
  v46 = swift_isUniquelyReferenced_nonNull_native();
  *&v61 = v44;
  sub_24EF4B5B4(v45, sub_24F05AC64, 0, v46, &v61);

  v47 = v61;

  v48 = v55;
  sub_24F929728();
  if (qword_27F210580 != -1)
  {
    swift_once();
  }

  v49 = sub_24F92AAE8();
  __swift_project_value_buffer(v49, qword_27F39C3E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93DE60;
  sub_24F928408();
  sub_24F9283F8();
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251730);
  *&v61 = v47;
  sub_24F9283D8();
  sub_24E857CC8(&v61);
  sub_24F9283F8();
  sub_24F928428();
  sub_24F92A588();

  __swift_project_boxed_opaque_existential_1((v58 + 8), *(v58 + 32));
  sub_24F9299F8();
  return (*(v56 + 8))(v48, v57);
}

Swift::Void __swiftcall _JetTraceReporter.start()()
{
  v1 = *v0;
  v2 = *(v1 + 80);
  [v2 lock];
  sub_24F2E2100(v1);

  [v2 unlock];
}

uint64_t sub_24F2FE250(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _JetTraceReporter();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F2FE2B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _JetTraceReporter();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F2FE31C(uint64_t a1)
{
  type metadata accessor for _JetTraceReporter();
  v2 = *(a1 + 32);
  v3 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v3;
  v6 = v2;
  return sub_24F2FDA24(v5);
}

uint64_t objectdestroyTm_62()
{
  v1 = (type metadata accessor for _JetTraceReporter() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  __swift_destroy_boxed_opaque_existential_1(v2 + 8);

  v3 = v1[9];
  v4 = sub_24F928BC8();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_24F2FE4C4(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_24F928BC8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_24F2FE584(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_24F928BC8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

unint64_t sub_24F2FE628()
{
  result = type metadata accessor for _JetTraceAggregator();
  if (v1 <= 0x3F)
  {
    result = sub_24F2FE6CC();
    if (v2 <= 0x3F)
    {
      result = sub_24F928BC8();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_24F2FE6CC()
{
  result = qword_27F23E780;
  if (!qword_27F23E780)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27F23E780);
  }

  return result;
}

id sub_24F2FE734(uint64_t a1, void *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC12GameStoreKit12JSUserObject_accounts] = a1;
  *&v3[OBJC_IVAR____TtC12GameStoreKit12JSUserObject_onDevicePersonalizationDataManager] = a2;
  v7 = objc_allocWithZone(MEMORY[0x277CCA930]);
  v8 = a2;

  v9 = [v7 initWithCondition_];
  *&v3[OBJC_IVAR____TtC12GameStoreKit12JSUserObject_fitnessAppInstallationAllowedConditionLock] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EBF0);
  swift_allocObject();
  *&v3[OBJC_IVAR____TtC12GameStoreKit12JSUserObject_isFitnessAppInstallationAllowedBox] = sub_24EA4ED84(2);
  v18.receiver = v3;
  v18.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v18, sel_init);
  v11 = objc_opt_self();
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17[4] = sub_24F2FFB90;
  v17[5] = v12;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 1107296256;
  v17[2] = sub_24EBFFB64;
  v17[3] = &block_descriptor_8_0;
  v13 = _Block_copy(v17);
  v14 = v10;

  [v11 fetchIsFitnessAvailableForDeviceWithCompletion_];
  _Block_release(v13);
  v15 = [objc_opt_self() defaultCenter];
  [v15 addObserver:v14 selector:sel_queryFitnessAppInstallationAllowed name:*MEMORY[0x277CF0120] object:0];

  return v14;
}

uint64_t sub_24F2FE978(SEL *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2330E0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v13 - v4;
  MEMORY[0x2530504F0](v3);
  v6 = sub_24F92AB18();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_24E601704(v5, &qword_27F2330E0);
  }

  else
  {
    v8 = sub_24F92AB08();
    (*(v7 + 8))(v5, v6);
    v9 = [v8 *a1];
    if (v9)
    {
      v10 = v9;
      v11 = sub_24F92B0D8();

      return v11;
    }
  }

  return 0;
}

id sub_24F2FEAFC(void *a1, uint64_t a2, SEL *a3)
{
  v4 = a1;
  sub_24F2FE978(a3);
  v6 = v5;

  if (v6)
  {
    v7 = sub_24F92B098();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_24F2FEBF4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2330E0);
  v1 = MEMORY[0x28223BE20](v0 - 8);
  v3 = &v12 - v2;
  MEMORY[0x2530504F0](v1);
  v4 = sub_24F92AB18();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_24E601704(v3, &qword_27F2330E0);
  }

  else
  {
    v6 = sub_24F92AB08();
    (*(v5 + 8))(v3, v4);
    v7 = [v6 ams_DSID];
    if (v7)
    {
      v8 = v7;
      v9 = [v7 stringValue];

      v10 = sub_24F92B0D8();
      return v10;
    }
  }

  return 0;
}

uint64_t sub_24F2FEF64()
{
  v1 = v0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2383C8);
  sub_24F92BF18();

  v2 = v6;
  if (v6 == 2)
  {
    v3 = OBJC_IVAR____TtC12GameStoreKit12JSUserObject_fitnessAppInstallationAllowedConditionLock;
    v4 = [*(v1 + OBJC_IVAR____TtC12GameStoreKit12JSUserObject_fitnessAppInstallationAllowedConditionLock) lockWhenCondition_];
    MEMORY[0x28223BE20](v4);

    sub_24F92BF18();

    v2 = (v6 == 2) | v6;
    [*(v1 + v3) unlock];
  }

  return v2 & 1;
}

void sub_24F2FF0E4(char a1)
{
  v2 = sub_24F927D88();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = OBJC_IVAR____TtC12GameStoreKit12JSUserObject_fitnessAppInstallationAllowedConditionLock;
    v8 = Strong;
    v9 = [*(Strong + OBJC_IVAR____TtC12GameStoreKit12JSUserObject_fitnessAppInstallationAllowedConditionLock) lock];
    v13[0] = v13;
    v10 = *&v8[OBJC_IVAR____TtC12GameStoreKit12JSUserObject_isFitnessAppInstallationAllowedBox];
    MEMORY[0x28223BE20](v9);
    LOBYTE(v13[-2]) = a1 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BDF0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_24F93DE60;

    sub_24F927D78();
    v13[2] = v11;
    sub_24E858250();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310);
    sub_24E8582A8();
    v12 = sub_24F92C6A8();
    MEMORY[0x28223BE20](v12);
    v13[-4] = sub_24F2FFB44;
    v13[-3] = &v13[-4];
    v13[-2] = v10;
    sub_24F92BF08();
    (*(v3 + 8))(v5, v2);

    [*&v8[v7] unlockWithCondition_];
  }
}

uint64_t sub_24F2FF4A8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2330E0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v12[-v4];
  MEMORY[0x2530504F0](v3);
  v6 = sub_24F92AB18();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    v8 = &qword_27F2330E0;
    v9 = v5;
LABEL_10:
    sub_24E601704(v9, v8);
    return 0;
  }

  v10 = sub_24F92AB08();
  (*(v7 + 8))(v5, v6);
  if ([v10 ams:*a1 accountFlagValueForAccountFlag:?])
  {
    sub_24F92C648();

    swift_unknownObjectRelease();
  }

  else
  {

    v13 = 0u;
    v14 = 0u;
  }

  v15[0] = v13;
  v15[1] = v14;
  if (!*(&v14 + 1))
  {
    v8 = &qword_27F2129B0;
    v9 = v15;
    goto LABEL_10;
  }

  if (swift_dynamicCast())
  {
    return v12[15];
  }

  return 0;
}

id sub_24F2FF67C(uint64_t a1)
{
  if (!*(v1 + OBJC_IVAR____TtC12GameStoreKit12JSUserObject_onDevicePersonalizationDataManager))
  {
    v36 = MEMORY[0x277D84F90];
    v37 = sub_24E60CE98(MEMORY[0x277D84F90]);
    v38 = sub_24E608448(v36);
    v39 = type metadata accessor for OnDevicePersonalizationDataContainer();
    v40 = objc_allocWithZone(v39);
    *&v40[OBJC_IVAR____TtC12GameStoreKit36OnDevicePersonalizationDataContainer_personalizationData] = v37;
    *&v40[OBJC_IVAR____TtC12GameStoreKit36OnDevicePersonalizationDataContainer_metricsData] = v38;
    v48 = v40;
    v41 = &v48;
    goto LABEL_30;
  }

  v3 = sub_24EA4C270();
  v5 = v4;
  v6 = *(a1 + 16);
  if (!v6)
  {
    v9 = MEMORY[0x277D84F98];
    goto LABEL_29;
  }

  v7 = 0;
  v8 = a1 + 40;
  v9 = MEMORY[0x277D84F98];
  v45 = v8;
  while (2)
  {
    v10 = (v8 + 16 * v7);
    v11 = v7;
    while (1)
    {
      if (v11 >= v6)
      {
        __break(1u);
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      v7 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_32;
      }

      v13 = *(v10 - 1);
      v12 = *v10;
      v14 = *(v3 + 16);

      if (v14)
      {
        v15 = sub_24E76D644(v13, v12);
        if (v16)
        {
          break;
        }
      }

      v17 = sub_24E76D644(v13, v12);
      if (v18)
      {
        v19 = v17;
        v47 = v9;
        if (!swift_isUniquelyReferenced_nonNull_native())
        {
          sub_24E8B0EBC();
          v9 = v47;
        }

        sub_24EB5BA04(v19, v9);

        goto LABEL_25;
      }

      ++v11;
      v10 += 2;
      if (v7 == v6)
      {
        goto LABEL_29;
      }
    }

    v20 = v5;
    v44 = *(*(v3 + 56) + 8 * v15);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v47 = v9;
    v22 = sub_24E76D644(v13, v12);
    v24 = v9[2];
    v25 = (v23 & 1) == 0;
    v26 = __OFADD__(v24, v25);
    v27 = v24 + v25;
    if (v26)
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v28 = v23;
    if (v9[3] >= v27)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v35 = v22;
        sub_24E8B0EBC();
        v22 = v35;
      }
    }

    else
    {
      sub_24E89E8F4(v27, isUniquelyReferenced_nonNull_native);
      v22 = sub_24E76D644(v13, v12);
      if ((v28 & 1) != (v29 & 1))
      {
        goto LABEL_35;
      }
    }

    v5 = v20;
    v9 = v47;
    if ((v28 & 1) == 0)
    {
      v47[(v22 >> 6) + 8] |= 1 << v22;
      v32 = (v9[6] + 16 * v22);
      *v32 = v13;
      v32[1] = v12;
      *(v9[7] + 8 * v22) = v44;
      v33 = v9[2];
      v26 = __OFADD__(v33, 1);
      v34 = v33 + 1;
      if (!v26)
      {
        v9[2] = v34;
        goto LABEL_25;
      }

LABEL_34:
      __break(1u);
LABEL_35:
      result = sub_24F92CF88();
      __break(1u);
      return result;
    }

    v30 = v47[7];
    v31 = *(v30 + 8 * v22);
    *(v30 + 8 * v22) = v44;

LABEL_25:
    v8 = v45;
    if (v7 != v6)
    {
      continue;
    }

    break;
  }

LABEL_29:

  v39 = type metadata accessor for OnDevicePersonalizationDataContainer();
  v42 = objc_allocWithZone(v39);
  *&v42[OBJC_IVAR____TtC12GameStoreKit36OnDevicePersonalizationDataContainer_personalizationData] = v9;
  *&v42[OBJC_IVAR____TtC12GameStoreKit36OnDevicePersonalizationDataContainer_metricsData] = v5;
  v46.receiver = v42;
  v41 = &v46;
LABEL_30:
  v41->super_class = v39;
  return [(objc_super *)v41 init];
}

uint64_t sub_24F2FFAEC()
{
  MEMORY[0x2530543E0](v0 + 16);

  return swift_deallocObject();
}

uint64_t block_copy_helper_143(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t GamesSettingsList.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F211AB0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v24 - v5;
  v30 = v3;
  sub_24F2FFF58(&v24 - v5);
  sub_24F92B7F8();

  v7 = sub_24F92B7E8();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = v3;
  v10 = sub_24F92B858();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = &v24 - v13;
  sub_24F92B818();
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v27 = sub_24F923DD8();
    v28 = &v24;
    v26 = *(v27 - 8);
    MEMORY[0x28223BE20](v27);
    v24 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    v25 = v6;
    v30 = 0;
    v31 = 0xE000000000000000;
    sub_24F92C888();

    v30 = 0xD000000000000031;
    v31 = 0x800000024FA73880;
    v29 = 38;
    v16 = sub_24F92CD88();
    MEMORY[0x253050C20](v16);

    v18 = MEMORY[0x28223BE20](v17);
    (*(v11 + 16))(&v24 - v13, &v24 - v13, v10, v18);
    v19 = v24;
    sub_24F923DC8();
    (*(v11 + 8))(v14, v10);
    sub_24F30079C(v25, a1);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F211AB8);
    return (*(v26 + 32))(a1 + *(v20 + 36), v19, v27);
  }

  else
  {
    v22 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F211AC0) + 36));
    v23 = sub_24F923AD8();
    (*(v11 + 32))(&v22[*(v23 + 20)], &v24 - v13, v10);
    *v22 = &unk_24F9E1F00;
    *(v22 + 1) = v8;
    return sub_24F30079C(v6, a1);
  }
}

uint64_t sub_24F2FFF58@<X0>(uint64_t a1@<X8>)
{
  v40 = a1;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E7B8);
  v33 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v3 = &v30 - v2;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E7B0);
  v34 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v5 = &v30 - v4;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E7C8);
  v36 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v35 = &v30 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E7D0);
  MEMORY[0x28223BE20](v7);
  v9 = &v30 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215FD0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v30 - v12;
  v14 = *v1;
  swift_getKeyPath();
  v41 = v14;
  sub_24F300CA8();
  sub_24F91FD88();

  if (*(v14 + 18))
  {
    v30 = v7;
    v31 = v9;
    v32 = v10;
    v15 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E7D8);
    sub_24E602068(&qword_27F23E7E0, &qword_27F23E7D8);
    sub_24F925A98();
    v16 = sub_24E602068(&qword_27F23E7C0, &qword_27F23E7B8);
    v17 = v38;
    sub_24F926028();
    (*(v33 + 8))(v3, v17);
    if (qword_27F211758 != -1)
    {
      swift_once();
    }

    v41 = qword_27F39EF78;
    v42 = unk_27F39EF80;
    sub_24E600AEC();

    v18 = sub_24F925E18();
    v20 = v19;
    v22 = v21;
    v41 = v17;
    v42 = v16;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v24 = v35;
    sub_24F926448();
    sub_24E600B40(v18, v20, v22 & 1);

    (*(v34 + 8))(v5, v15);
    v25 = v36;
    v26 = v39;
    (*(v36 + 16))(v31, v24, v39);
    swift_storeEnumTagMultiPayload();
    sub_24E602068(&qword_27F255080, &qword_27F215FD0);
    v41 = v15;
    v42 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    sub_24F924E28();
    return (*(v25 + 8))(v24, v26);
  }

  else
  {
    sub_24F923798();
    (*(v11 + 16))(v9, v13, v10);
    swift_storeEnumTagMultiPayload();
    sub_24E602068(&qword_27F255080, &qword_27F215FD0);
    v28 = sub_24E602068(&qword_27F23E7C0, &qword_27F23E7B8);
    v41 = v38;
    v42 = v28;
    v29 = swift_getOpaqueTypeConformance2();
    v41 = v37;
    v42 = v29;
    swift_getOpaqueTypeConformance2();
    sub_24F924E28();
    return (*(v11 + 8))(v13, v10);
  }
}

uint64_t sub_24F300608()
{
  v0[2] = sub_24F92B7F8();
  v0[3] = sub_24F92B7E8();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_24E8FAC50;

  return sub_24ECC19D4();
}

uint64_t sub_24F3006B4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24F3006F4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24E614970;

  return sub_24F300608();
}

uint64_t sub_24F30079C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F211AB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F300828@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = type metadata accessor for ShareGameActivitySettingsSection();
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v24[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v10 = &v24[-v9];
  v11 = sub_24F921D98();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v24[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v17 = &v24[-v16];
  sub_24F921D88();
  v18 = &v10[*(v5 + 28)];
  v24[15] = 0;

  sub_24F926F28();
  v19 = v25;
  *v18 = v24[16];
  *(v18 + 1) = v19;
  type metadata accessor for GamesSettings(0);
  sub_24F300CA8();
  sub_24F927378();
  v20 = *(v12 + 16);
  v20(v14, v17, v11);
  sub_24EF526D4(v10, v7);
  v20(a2, v14, v11);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E7E8);
  sub_24EF526D4(v7, &a2[*(v21 + 48)]);
  *&a2[*(v21 + 64)] = a1;
  swift_retain_n();
  sub_24F300D08(v10);
  v22 = *(v12 + 8);
  v22(v17, v11);

  sub_24F300D08(v7);
  return (v22)(v14, v11);
}

uint64_t sub_24F300AD0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F211AB0);
  sub_24F300B34();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_24F300B34()
{
  result = qword_27F23E7A8;
  if (!qword_27F23E7A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F211AB0);
    sub_24E602068(&qword_27F255080, &qword_27F215FD0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23E7B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23E7B8);
    sub_24E602068(&qword_27F23E7C0, &qword_27F23E7B8);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23E7A8);
  }

  return result;
}

unint64_t sub_24F300CA8()
{
  result = qword_27F22D4C0;
  if (!qword_27F22D4C0)
  {
    type metadata accessor for GamesSettings(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22D4C0);
  }

  return result;
}

uint64_t sub_24F300D08(uint64_t a1)
{
  v2 = type metadata accessor for ShareGameActivitySettingsSection();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t FlowAction.pageData<A>(as:or:)@<X0>(uint64_t a1@<X0>, void (*a2)(_OWORD *__return_ptr, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v35[1] = a3;
  v36 = a2;
  v38 = a5;
  v7 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v37 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F92C4A8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v35 - v14;
  v16 = (v5 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageData);
  swift_beginAccess();
  v17 = v16[3];
  if (v17)
  {
    v18 = v16[4];
    v19 = __swift_project_boxed_opaque_existential_1(v16, v16[3]);
    v35[0] = v35;
    v20 = v9;
    v21 = *(v17 - 8);
    v22 = MEMORY[0x28223BE20](v19);
    v24 = v35 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v21 + 16))(v24, v22);
    (*(v18 + 8))(v39, v17, v18);
    (*(v21 + 8))(v24, v17);
    v9 = v20;
  }

  else
  {
    memset(v39, 0, sizeof(v39));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2129B0);
  v25 = swift_dynamicCast();
  v26 = *(v7 + 56);
  v26(v15, v25 ^ 1u, 1, a4);
  (*(v10 + 16))(v12, v15, v9);
  if ((*(v7 + 48))(v12, 1, a4) == 1)
  {
    v27 = *(v10 + 8);
    v37 = v9;
    v28 = v27(v12, v9);
    v36(v39, v28);
    v29 = v38;
    v30 = swift_dynamicCast();
    v26(v29, v30 ^ 1u, 1, a4);
    return v27(v15, v37);
  }

  else
  {
    v32 = *(v7 + 32);
    v33 = v37;
    v32(v37, v12, a4);
    v34 = v38;
    v32(v38, v33, a4);
    v26(v34, 0, 1, a4);
    return (*(v10 + 8))(v15, v9);
  }
}

void *FlowAction.__allocating_init(id:title:artwork:page:url:referrerUrl:referrerData:pageData:actionMetrics:presentationContext:animationBehavior:origin:presentationStyle:presentation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, char *a13, char *a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v57 = a8;
  v61 = a2;
  v62 = a3;
  v63 = a17;
  v64 = a4;
  v59 = a1;
  v60 = a15;
  v58 = a16;
  v65 = a10;
  v56 = sub_24F91F6B8();
  v55 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v54 = &v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = swift_allocObject();
  v22 = *a5;
  v23 = *(a9 + 32);
  LOBYTE(a5) = *(a9 + 40);
  v24 = *a12;
  v25 = *a13;
  v26 = *a14;
  *(v21 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageDataPageRenderMetrics) = 0;
  v27 = v21 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageData;
  *v27 = 0u;
  *(v27 + 1) = 0u;
  *(v27 + 4) = 0;
  v28 = (v21 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_appStateController);
  *v28 = 0;
  v28[1] = 0;
  *(v21 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_page) = v22;
  v66 = a6;
  sub_24E60169C(a6, v21 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageUrl, &qword_27F228530);
  v29 = (v21 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_referrerUrl);
  v30 = v57;
  *v29 = a7;
  v29[1] = v30;
  v31 = v21 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_referrerData;
  v32 = *(a9 + 16);
  *v31 = *a9;
  *(v31 + 1) = v32;
  *(v31 + 4) = v23;
  v31[40] = a5;
  *(v21 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_presentationContext) = v24;
  *(v21 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_animationBehavior) = v25;
  *(v21 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_origin) = v26;
  v33 = v59;
  v34 = (v21 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_presentation);
  v35 = v63;
  *v34 = v58;
  v34[1] = v35;
  sub_24E60169C(v33, v72, &qword_27F235830);
  v36 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v37 = sub_24F928AD8();
  v38 = *(v37 - 8);
  v39 = *(v38 + 16);
  v63 = a11;
  v39(v21 + v36, a11, v37);
  v40 = OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics;
  v41 = sub_24F929608();
  (*(*(v41 - 8) + 56))(v21 + v40, 1, 1, v41);
  v42 = (v21 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v42 = 0u;
  v42[1] = 0u;
  v43 = v21 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  sub_24E60169C(v72, &v69, &qword_27F235830);
  if (*(&v70 + 1))
  {
    v44 = v70;
    *v43 = v69;
    *(v43 + 1) = v44;
    *(v43 + 4) = v71;
    v45 = v64;
  }

  else
  {
    v45 = v64;

    v46 = v54;
    sub_24F91F6A8();
    v47 = sub_24F91F668();
    v49 = v48;
    (*(v55 + 8))(v46, v56);
    v67 = v47;
    v68 = v49;
    sub_24F92C7F8();
    sub_24E601704(&v69, &qword_27F235830);
  }

  sub_24E601704(v72, &qword_27F235830);
  v50 = v62;
  v21[2] = v61;
  v21[3] = v50;
  v51 = v60;
  v21[4] = v45;
  v21[5] = v51;

  v52 = v65;
  FlowAction.setPageData(_:)(v65);

  (*(v38 + 8))(v63, v37);
  sub_24E601704(v52, &qword_27F2129B0);
  sub_24E601704(v66, &qword_27F228530);
  sub_24E601704(v33, &qword_27F235830);
  return v21;
}

uint64_t FlowAction.setPageData(_:)(uint64_t a1)
{
  sub_24E60169C(a1, v8, &qword_27F2129B0);
  if (v8[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E808);
    if (swift_dynamicCast())
    {
      if (*(&v10 + 1))
      {
        sub_24E612C80(&v9, &v12);
        sub_24E612C80(&v12, &v9);
        v3 = OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageData;
        swift_beginAccess();
        v4 = &v9;
        goto LABEL_9;
      }
    }

    else
    {
      v11 = 0;
      v9 = 0u;
      v10 = 0u;
    }
  }

  else
  {
    sub_24E601704(v8, &qword_27F2129B0);
    v9 = 0u;
    v10 = 0u;
    v11 = 0;
  }

  sub_24E601704(&v9, &qword_27F23E7F8);
  sub_24E60169C(a1, &v12, &qword_27F2129B0);
  if (!*(&v13 + 1))
  {
    sub_24E601704(&v12, &qword_27F2129B0);
    v14 = 0;
    v12 = 0u;
    v13 = 0u;
    v6 = OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageData;
    swift_beginAccess();
    sub_24F303608(&v12, v1 + v6);
    return swift_endAccess();
  }

  sub_24E612B0C(&v12, &v9);
  sub_24E643A9C(&v9, &v12);
  v5 = swift_allocObject();
  sub_24E612B0C(&v12, (v5 + 16));
  *(&v13 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E800);
  v14 = &off_286218388;
  __swift_allocate_boxed_opaque_existential_1(&v12);
  sub_24F92A4B8();
  __swift_destroy_boxed_opaque_existential_1(&v9);
  v3 = OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageData;
  swift_beginAccess();
  v4 = &v12;
LABEL_9:
  sub_24F303608(v4, v1 + v3);
  return swift_endAccess();
}

GameStoreKit::FlowPage_optional __swiftcall FlowPage.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CF18();

  v5 = 0;
  v6 = 37;
  switch(v3)
  {
    case 0:
      goto LABEL_51;
    case 1:
      v5 = 1;
      goto LABEL_51;
    case 2:
      v5 = 2;
      goto LABEL_51;
    case 3:
      v5 = 3;
      goto LABEL_51;
    case 4:
      v5 = 4;
      goto LABEL_51;
    case 5:
      v5 = 5;
      goto LABEL_51;
    case 6:
      v5 = 6;
      goto LABEL_51;
    case 7:
      v5 = 7;
      goto LABEL_51;
    case 8:
      v5 = 8;
      goto LABEL_51;
    case 9:
      v5 = 9;
      goto LABEL_51;
    case 10:
      v5 = 10;
      goto LABEL_51;
    case 11:
      v5 = 11;
      goto LABEL_51;
    case 12:
      v5 = 12;
      goto LABEL_51;
    case 13:
      v5 = 13;
      goto LABEL_51;
    case 14:
      v5 = 14;
      goto LABEL_51;
    case 15:
      v5 = 15;
      goto LABEL_51;
    case 16:
      v5 = 16;
      goto LABEL_51;
    case 17:
      v5 = 17;
      goto LABEL_51;
    case 18:
      v5 = 18;
      goto LABEL_51;
    case 19:
      v5 = 19;
      goto LABEL_51;
    case 20:
      v5 = 20;
      goto LABEL_51;
    case 21:
      v5 = 21;
      goto LABEL_51;
    case 22:
      v5 = 22;
      goto LABEL_51;
    case 23:
      v5 = 23;
      goto LABEL_51;
    case 24:
      v5 = 24;
      goto LABEL_51;
    case 25:
      v5 = 25;
      goto LABEL_51;
    case 26:
      v5 = 26;
      goto LABEL_51;
    case 27:
      v5 = 27;
      goto LABEL_51;
    case 28:
      v5 = 28;
      goto LABEL_51;
    case 29:
      v5 = 29;
      goto LABEL_51;
    case 30:
      v5 = 30;
      goto LABEL_51;
    case 31:
      v5 = 31;
      goto LABEL_51;
    case 32:
      v5 = 32;
      goto LABEL_51;
    case 33:
      v5 = 33;
      goto LABEL_51;
    case 34:
      v5 = 34;
      goto LABEL_51;
    case 35:
      v5 = 35;
      goto LABEL_51;
    case 36:
      v5 = 36;
LABEL_51:
      v6 = v5;
      break;
    case 37:
      break;
    case 38:
      v6 = 38;
      break;
    case 39:
      v6 = 39;
      break;
    case 40:
      v6 = 40;
      break;
    case 41:
      v6 = 41;
      break;
    case 42:
      v6 = 42;
      break;
    case 43:
      v6 = 43;
      break;
    case 44:
      v6 = 44;
      break;
    case 45:
      v6 = 45;
      break;
    case 46:
      v6 = 46;
      break;
    case 47:
      v6 = 47;
      break;
    case 48:
      v6 = 48;
      break;
    case 49:
      v6 = 49;
      break;
    case 50:
      v6 = 50;
      break;
    case 51:
      v6 = 51;
      break;
    case 52:
      v6 = 52;
      break;
    case 53:
      v6 = 53;
      break;
    case 54:
      v6 = 54;
      break;
    default:
      v6 = 55;
      break;
  }

  *v2 = v6;
  return result;
}

unint64_t FlowPage.rawValue.getter()
{
  result = 0x686372616573;
  switch(*v0)
  {
    case 1:
      result = 0x746375646F7270;
      break;
    case 2:
      result = 0x5563696D616E7964;
      break;
    case 3:
      result = 0x77656956626577;
      break;
    case 4:
      result = 0x6E776F6E6B6E75;
      break;
    case 5:
      result = 0x746E6F4377656976;
      break;
    case 6:
      result = 0x7972656C6C6167;
      break;
    case 7:
      result = 0x6F65646976;
      break;
    case 8:
      result = 1701273968;
      break;
    case 9:
      result = 0xD000000000000019;
      break;
    case 0xA:
      result = 0x7472616843706F74;
      break;
    case 0xB:
      result = 0x73657461647075;
      break;
    case 0xC:
      result = 0x7961646F74;
      break;
    case 0xD:
      result = 0x656C6369747261;
      break;
    case 0xE:
      result = 0x6573616863727570;
      break;
    case 0xF:
    case 0x21:
    case 0x2C:
      result = 0xD000000000000014;
      break;
    case 0x10:
      result = 0x7665526574697277;
      break;
    case 0x11:
      result = 0x73776569766572;
      break;
    case 0x12:
      result = 0x746E756F636361;
      break;
    case 0x13:
      result = 0x65636E616E6966;
      break;
    case 0x14:
      result = 0x75506E6564646968;
      break;
    case 0x15:
      result = 7304045;
      break;
    case 0x16:
      result = 0x486E6F6973726576;
      break;
    case 0x17:
      result = 0x696472616F626E6FLL;
      break;
    case 0x18:
      result = 0x6544776569766572;
      break;
    case 0x19:
      result = 0xD000000000000013;
      break;
    case 0x1A:
      result = 0x656461637261;
      break;
    case 0x1B:
      result = 0x7553656461637261;
      break;
    case 0x1C:
      result = 0xD000000000000013;
      break;
    case 0x1D:
    case 0x20:
      result = 0xD000000000000011;
      break;
    case 0x1E:
      result = 0x6557656461637261;
      break;
    case 0x1F:
      result = 0xD00000000000001CLL;
      break;
    case 0x22:
    case 0x31:
      result = 0xD000000000000010;
      break;
    case 0x23:
      result = 0xD000000000000013;
      break;
    case 0x24:
    case 0x34:
      result = 0xD000000000000016;
      break;
    case 0x25:
      result = 0xD000000000000017;
      break;
    case 0x26:
      result = 0x434174726F706572;
      break;
    case 0x27:
      result = 0xD00000000000001ALL;
      break;
    case 0x28:
      result = 0x6568536572616873;
      break;
    case 0x29:
      result = 0x6563614665676170;
      break;
    case 0x2A:
      result = 0x4479636176697270;
      break;
    case 0x2B:
      result = 0xD000000000000012;
      break;
    case 0x2D:
      result = 0x746E657645707061;
      break;
    case 0x2E:
    case 0x33:
      result = 0xD000000000000015;
      break;
    case 0x2F:
      result = 0x657449726566666FLL;
      break;
    case 0x30:
      result = 0x6472614374786574;
      break;
    case 0x32:
      result = 0x7465536775626564;
      break;
    case 0x35:
      result = 0xD00000000000001BLL;
      break;
    case 0x36:
      result = 0x73656D6167;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_24F302294()
{
  v0 = FlowPage.rawValue.getter();
  v2 = v1;
  if (v0 == FlowPage.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_24F92CE08();
  }

  return v5 & 1;
}

uint64_t sub_24F302330()
{
  sub_24F92D068();
  FlowPage.rawValue.getter();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F302398()
{
  FlowPage.rawValue.getter();
  sub_24F92B218();
}

uint64_t sub_24F3023FC()
{
  sub_24F92D068();
  FlowPage.rawValue.getter();
  sub_24F92B218();

  return sub_24F92D0B8();
}

unint64_t sub_24F30246C@<X0>(unint64_t *a1@<X8>)
{
  result = FlowPage.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t FlowPresentationContext.presentationStyle.getter()
{
  v1 = *v0;
  if (v1 <= 5)
  {
    if (v1 == 4)
    {
      return 2;
    }

    if (v1 == 5)
    {
      return 1;
    }
  }

  else
  {
    switch(v1)
    {
      case 6u:
        return 0;
      case 7u:
        return 5;
      case 8u:
        return 7;
    }
  }

  return 0;
}

GameStoreKit::FlowPresentationContext_optional __swiftcall FlowPresentationContext.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 11;
  if (v3 < 0xB)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t FlowPresentationContext.rawValue.getter()
{
  v1 = *v0;
  if (v1 <= 4)
  {
    v7 = 0x7265666E69;
    v8 = 1752397168;
    v9 = 0x4D746E6573657270;
    if (v1 != 3)
    {
      v9 = 0xD000000000000015;
    }

    if (v1 != 2)
    {
      v8 = v9;
    }

    if (*v0)
    {
      v7 = 0x61746544776F6873;
    }

    if (*v0 <= 1u)
    {
      return v7;
    }

    else
    {
      return v8;
    }
  }

  else
  {
    v2 = 0xD000000000000013;
    v3 = 0x7463656C6573;
    if (v1 != 9)
    {
      v3 = 0x6563616C706572;
    }

    if (v1 != 8)
    {
      v2 = v3;
    }

    v4 = 0xD000000000000015;
    v5 = 0xD00000000000001ALL;
    if (v1 == 6)
    {
      v5 = 0xD000000000000016;
    }

    if (v1 != 5)
    {
      v4 = v5;
    }

    if (*v0 <= 7u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_24F3026DC()
{
  sub_24F92D068();
  sub_24F203A14();
  return sub_24F92D0B8();
}

uint64_t sub_24F30272C()
{
  sub_24F92D068();
  sub_24F203A14();
  return sub_24F92D0B8();
}

unint64_t sub_24F30277C@<X0>(unint64_t *a1@<X8>)
{
  result = FlowPresentationContext.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

GameStoreKit::FlowAnimationBehavior_optional __swiftcall FlowAnimationBehavior.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t FlowAnimationBehavior.rawValue.getter()
{
  v1 = 0x726576656ELL;
  if (*v0 != 1)
  {
    v1 = 0x737961776C61;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7265666E69;
  }
}

uint64_t sub_24F302850(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x726576656ELL;
  if (v2 != 1)
  {
    v5 = 0x737961776C61;
    v4 = 0xE600000000000000;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x7265666E69;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  v8 = 0x726576656ELL;
  if (*a2 != 1)
  {
    v8 = 0x737961776C61;
    v3 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x7265666E69;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24F92CE08();
  }

  return v11 & 1;
}

uint64_t sub_24F30293C()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F3029D4()
{
  sub_24F92B218();
}

uint64_t sub_24F302A58()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

void sub_24F302AF8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x726576656ELL;
  if (v2 != 1)
  {
    v5 = 0x737961776C61;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x7265666E69;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t static FlowOrigin.== infix(_:_:)(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6C616E7265747865;
  }

  else
  {
    v3 = 0x7070616E69;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x6C616E7265747865;
  }

  else
  {
    v5 = 0x7070616E69;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24F92CE08();
  }

  return v8 & 1;
}

uint64_t FlowOrigin.rawValue.getter()
{
  if (*v0)
  {
    return 0x6C616E7265747865;
  }

  else
  {
    return 0x7070616E69;
  }
}

GameStoreKit::FlowOrigin_optional __swiftcall FlowOrigin.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

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

uint64_t sub_24F302C8C()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F302D0C()
{
  sub_24F92B218();
}

uint64_t sub_24F302D78()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F302DF4@<X0>(char *a1@<X8>)
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

void sub_24F302E54(uint64_t *a1@<X8>)
{
  v2 = 0x7070616E69;
  if (*v1)
  {
    v2 = 0x6C616E7265747865;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_24F302E90(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6C616E7265747865;
  }

  else
  {
    v3 = 0x7070616E69;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x6C616E7265747865;
  }

  else
  {
    v5 = 0x7070616E69;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24F92CE08();
  }

  return v8 & 1;
}

unint64_t FlowAction.debugDescription.getter()
{
  sub_24F92C888();

  v0 = sub_24F92C7A8();
  MEMORY[0x253050C20](v0);

  MEMORY[0x253050C20](0x3A65676170202C22, 0xE900000000000020);
  v1 = FlowPage.rawValue.getter();
  MEMORY[0x253050C20](v1);

  MEMORY[0x253050C20](41, 0xE100000000000000);
  return 0xD000000000000010;
}

void *FlowAction.init(id:title:artwork:page:url:referrerUrl:referrerData:pageData:actionMetrics:presentationContext:animationBehavior:origin:presentationStyle:presentation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5, unsigned __int8 *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, char *a13, unsigned __int8 *a14, uint64_t a15, uint64_t a16, char *a17)
{
  v18 = v17;
  v62 = a8;
  v61 = a7;
  v69 = a4;
  v68 = a3;
  v67 = a2;
  v63 = a1;
  v65 = a17;
  v66 = a15;
  v64 = a16;
  v71 = a14;
  v72 = a11;
  v70 = a10;
  v58 = sub_24F91F6B8();
  v57 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v56 = &v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v56 - v23;
  v25 = sub_24F928AD8();
  v60 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v27 = &v56 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v26) = *a5;
  v28 = *(a9 + 32);
  v29 = *(a9 + 40);
  v30 = *a12;
  v31 = *a13;
  v59 = *v71;
  *(v18 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageDataPageRenderMetrics) = 0;
  v32 = v18 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageData;
  *v32 = 0u;
  *(v32 + 1) = 0u;
  *(v32 + 4) = 0;
  v33 = (v18 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_appStateController);
  *v33 = 0;
  v33[1] = 0;
  *(v18 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_page) = v26;
  v71 = a6;
  sub_24E60169C(a6, v18 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageUrl, &qword_27F228530);
  v34 = (v18 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_referrerUrl);
  v35 = v62;
  *v34 = v61;
  v34[1] = v35;
  v36 = v18 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_referrerData;
  v37 = *(a9 + 16);
  *v36 = *a9;
  *(v36 + 1) = v37;
  *(v36 + 4) = v28;
  v38 = v63;
  v36[40] = v29;
  *(v18 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_presentationContext) = v30;
  v39 = v60;
  *(v18 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_animationBehavior) = v31;
  *(v18 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_origin) = v59;
  v40 = (v18 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_presentation);
  v41 = v65;
  *v40 = v64;
  v40[1] = v41;
  sub_24E60169C(v38, v81, &qword_27F235830);
  v42 = *(v39 + 16);
  v65 = v27;
  v42(v27, v72, v25);
  v43 = sub_24F929608();
  (*(*(v43 - 8) + 56))(v24, 1, 1, v43);
  v44 = (v18 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v44 = 0u;
  v44[1] = 0u;
  sub_24E60169C(v81, &v75, &qword_27F235830);
  if (*(&v76 + 1))
  {
    v78 = v75;
    v79 = v76;
    v80 = v77;
    v45 = v69;
  }

  else
  {
    v45 = v69;

    v46 = v56;
    sub_24F91F6A8();
    v47 = sub_24F91F668();
    v49 = v48;
    (*(v57 + 8))(v46, v58);
    v73 = v47;
    v74 = v49;
    sub_24F92C7F8();
    sub_24E601704(&v75, &qword_27F235830);
  }

  sub_24E601704(v81, &qword_27F235830);
  v50 = v18 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  *(v50 + 4) = v80;
  v51 = v79;
  *v50 = v78;
  *(v50 + 1) = v51;
  sub_24E6009C8(v24, v18 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68);
  v52 = v68;
  v18[2] = v67;
  v18[3] = v52;
  v53 = v66;
  v18[4] = v45;
  v18[5] = v53;
  (*(v39 + 32))(v18 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v65, v25);

  v54 = v70;
  FlowAction.setPageData(_:)(v70);

  (*(v39 + 8))(v72, v25);
  sub_24E601704(v54, &qword_27F2129B0);
  sub_24E601704(v71, &qword_27F228530);
  sub_24E601704(v38, &qword_27F235830);
  return v18;
}

uint64_t sub_24F303608(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E7F8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void *FlowAction.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v75 = a2;
  v6 = *v4;
  v73 = v3;
  v74 = v6;
  v7 = sub_24F9285B8();
  v78 = *(v7 - 8);
  v79 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v72 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v69 = &v66 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v66 - v12;
  v14 = sub_24F928388();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v68 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v70 = &v66 - v19;
  MEMORY[0x28223BE20](v18);
  v21 = &v66 - v20;
  *(v4 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageDataPageRenderMetrics) = 0;
  v22 = v4 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageData;
  *v22 = 0u;
  *(v22 + 16) = 0u;
  *(v22 + 32) = 0;
  v23 = (v4 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_appStateController);
  *v23 = 0;
  v23[1] = 0;
  v76 = a1;
  sub_24F928398();
  sub_24F307B08();
  sub_24F928248();
  v71 = v15;
  v25 = *(v15 + 8);
  v24 = v15 + 8;
  v77 = v14;
  v26 = v14;
  v27 = v25;
  (v25)(v21, v26);
  v28 = v82;
  if (v82 == 55)
  {
    v29 = sub_24F92AC38();
    sub_24F30A374(&qword_27F2213B8, MEMORY[0x277D22548]);
    swift_allocError();
    *v30 = 1701273968;
    v31 = v74;
    v30[1] = 0xE400000000000000;
    v30[2] = v31;
    (*(*(v29 - 8) + 104))(v30, *MEMORY[0x277D22530], v29);
    swift_willThrow();
    (*(v78 + 8))(v75, v79);
    (v27)(v76, v77);

    sub_24E601704(v22, &qword_27F23E7F8);
    swift_unknownObjectRelease();
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v4 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_page) = v82;
    v32 = v76;
    v66 = v28;
    sub_24F928398();
    sub_24F928268();
    v33 = v77;
    (v27)(v21);
    sub_24E6009C8(v13, v4 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageUrl, &qword_27F228530);
    sub_24F928398();
    sub_24F307B5C();
    sub_24F928208();
    (v27)(v21, v33);
    *(v4 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_presentationContext) = v82;
    sub_24F928398();
    sub_24F307BB0();
    sub_24F928208();
    (v27)(v21, v33);
    *(v4 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_animationBehavior) = v82;
    sub_24F928398();
    sub_24F307C04();
    sub_24F928208();
    (v27)(v21, v33);
    *(v4 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_origin) = v82;
    sub_24F928398();
    v34 = sub_24F928348();
    v36 = v35;
    (v27)(v21, v33);
    v37 = (v4 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_referrerUrl);
    *v37 = v34;
    v37[1] = v36;
    sub_24F928398();
    v38 = v75;
    v67 = *(v78 + 16);
    v67(v69, v75, v79);
    sub_24EC55728();
    sub_24F929548();
    v39 = v84;
    v40 = v85;
    v41 = v4 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_referrerData;
    v42 = v83;
    *v41 = v82;
    *(v41 + 1) = v42;
    *(v41 + 4) = v39;
    v41[40] = v40;
    sub_24F928398();
    sub_24F307C58();
    sub_24F928248();
    v43 = v77;
    v69 = v27;
    (v27)(v21, v77);
    v44 = *(&v82 + 1);
    v45 = v32;
    v46 = v43;
    v47 = v24;
    if (*(&v82 + 1))
    {
      v48 = v38;
      v49 = v82;
    }

    else if (v66 <= 0x31 && ((1 << v66) & 0x31400135D000CLL) != 0)
    {
      v48 = v38;
      v49 = sub_24F929D08();
    }

    else
    {
      v48 = v38;
      v49 = sub_24F929D18();
    }

    v50 = v79;
    v51 = (v4 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_presentation);
    *v51 = v49;
    v51[1] = v44;
    v52 = v70;
    (*(v71 + 16))(v70, v45, v46);
    v53 = v72;
    v67(v72, v48, v50);
    v54 = v73;
    v55 = Action.init(deserializing:using:)(v52, v53);
    v56 = v78;
    if (v54)
    {
      (*(v78 + 8))(v48, v50);
      (v69)(v45, v46);
    }

    else
    {
      v4 = v55;
      v73 = v47;
      v57 = v46;
      v86 = v66;
      v58 = v68;
      sub_24F928398();
      v59 = sub_24F304090(&v86, v58, v48, &v82);
      v60 = v69;
      (v69)(v58, v57, v59);
      v61 = *(&v83 + 1);
      if (*(&v83 + 1))
      {
        v62 = __swift_project_boxed_opaque_existential_1(&v82, *(&v83 + 1));
        *(&v81 + 1) = v61;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v80);
        v64 = v62;
        v60 = v69;
        (*(*(v61 - 8) + 16))(boxed_opaque_existential_1, v64, v61);
        __swift_destroy_boxed_opaque_existential_1(&v82);
      }

      else
      {
        sub_24E601704(&v82, &qword_27F23E7F8);
        v80 = 0u;
        v81 = 0u;
      }

      FlowAction.setPageData(_:)(&v80);
      (*(v56 + 8))(v75, v79);
      v60(v76, v57);
      sub_24E601704(&v80, &qword_27F2129B0);
    }
  }

  return v4;
}

double sub_24F304090@<D0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v327 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v323 - v8;
  v10 = sub_24F92AC28();
  v325 = *(v10 - 8);
  v326 = v10;
  v11 = *(v325 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v13 = &v323 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v323 - v14;
  v334 = sub_24F9285B8();
  v329 = *(v334 - 8);
  MEMORY[0x28223BE20](v334);
  v328 = v16;
  v333 = &v323 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v332 = sub_24F928388();
  v17 = *(v332 - 1);
  MEMORY[0x28223BE20](v332);
  v330 = v18;
  v331 = &v323 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a1;
  if (sub_24F928328())
  {
    *(a4 + 32) = 0;
    result = 0.0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }

  else
  {
    v324 = a4;
    switch(v19)
    {
      case 0:
        v21 = v331;
        v22 = v332;
        (*(v17 + 16))(v331, a2, v332);
        v23 = v329;
        v24 = v333;
        v25 = v334;
        (*(v329 + 16))(v333, v327, v334);
        v26 = (*(v17 + 80) + 16) & ~*(v17 + 80);
        v27 = (v330 + *(v23 + 80) + v26) & ~*(v23 + 80);
        v28 = swift_allocObject();
        (*(v17 + 32))(v28 + v26, v21, v22);
        (*(v23 + 32))(v28 + v27, v24, v25);
        v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E918);
        v30 = v324;
        v324[3] = v29;
        v30[4] = &off_286218388;
        __swift_allocate_boxed_opaque_existential_1(v30);
        type metadata accessor for SearchAction();
        goto LABEL_38;
      case 1:
        v163 = v331;
        v164 = v332;
        (*(v17 + 16))(v331, a2, v332);
        v165 = v329;
        v166 = v333;
        v167 = v334;
        (*(v329 + 16))(v333, v327, v334);
        v168 = (*(v17 + 80) + 16) & ~*(v17 + 80);
        v169 = (v330 + *(v165 + 80) + v168) & ~*(v165 + 80);
        v170 = swift_allocObject();
        (*(v17 + 32))(v170 + v168, v163, v164);
        (*(v165 + 32))(v170 + v169, v166, v167);
        v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E960);
        v172 = v324;
        v324[3] = v171;
        v172[4] = &off_286218388;
        __swift_allocate_boxed_opaque_existential_1(v172);
        type metadata accessor for ShelfBasedProductPage();
        goto LABEL_38;
      case 2:
        v113 = v331;
        v114 = v332;
        (*(v17 + 16))(v331, a2, v332);
        v115 = v329;
        v116 = v333;
        v117 = v334;
        (*(v329 + 16))(v333, v327, v334);
        v118 = (*(v17 + 80) + 16) & ~*(v17 + 80);
        v119 = (v330 + *(v115 + 80) + v118) & ~*(v115 + 80);
        v120 = swift_allocObject();
        (*(v17 + 32))(v120 + v118, v113, v114);
        (*(v115 + 32))(v120 + v119, v116, v117);
        v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E8D0);
        v122 = v324;
        v324[3] = v121;
        v122[4] = &off_286218388;
        __swift_allocate_boxed_opaque_existential_1(v122);
        type metadata accessor for DynamicUIRequestInfo();
        goto LABEL_38;
      case 6:
        sub_24F9282B8();
        v223 = v325;
        v224 = v326;
        if ((*(v325 + 48))(v9, 1, v326) == 1)
        {
          sub_24E601704(v9, &qword_27F2213B0);
          result = 0.0;
          v225 = v324;
          *v324 = 0u;
          *(v225 + 1) = 0u;
          v225[4] = 0;
        }

        else
        {
          v332 = *(v223 + 32);
          (v332)(v15, v9, v224);
          (*(v223 + 16))(v13, v15, v224);
          v317 = v329;
          (*(v329 + 16))(v333, v327, v334);
          v318 = (*(v223 + 80) + 16) & ~*(v223 + 80);
          v319 = (v11 + *(v317 + 80) + v318) & ~*(v317 + 80);
          v320 = swift_allocObject();
          (v332)(v320 + v318, v13, v224);
          (*(v317 + 32))(v320 + v319, v333, v334);
          v321 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E950);
          v322 = v324;
          v324[3] = v321;
          v322[4] = &off_286218388;
          __swift_allocate_boxed_opaque_existential_1(v322);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E958);
          sub_24F92A4B8();
          (*(v223 + 8))(v15, v224);
        }

        return result;
      case 7:
        v226 = v331;
        v227 = v332;
        (*(v17 + 16))(v331, a2, v332);
        v228 = v329;
        v229 = v333;
        v230 = v334;
        (*(v329 + 16))(v333, v327, v334);
        v231 = (*(v17 + 80) + 16) & ~*(v17 + 80);
        v232 = (v330 + *(v228 + 80) + v231) & ~*(v228 + 80);
        v233 = swift_allocObject();
        (*(v17 + 32))(v233 + v231, v226, v227);
        (*(v228 + 32))(v233 + v232, v229, v230);
        v234 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E948);
        v235 = v324;
        v324[3] = v234;
        v235[4] = &off_286218388;
        __swift_allocate_boxed_opaque_existential_1(v235);
        type metadata accessor for Video();
        goto LABEL_38;
      case 8:
      case 22:
      case 42:
      case 43:
      case 44:
      case 48:
        v306 = v331;
        v307 = v332;
        (*(v17 + 16))(v331, a2, v332);
        v308 = v329;
        v309 = v333;
        v310 = v334;
        (*(v329 + 16))(v333, v327, v334);
        v311 = (*(v17 + 80) + 16) & ~*(v17 + 80);
        v312 = (v330 + *(v308 + 80) + v311) & ~*(v308 + 80);
        v313 = swift_allocObject();
        (*(v17 + 32))(v313 + v311, v306, v307);
        (*(v308 + 32))(v313 + v312, v309, v310);
        v314 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E8B0);
        v315 = v324;
        v324[3] = v314;
        v315[4] = &off_286218388;
        __swift_allocate_boxed_opaque_existential_1(v315);
        type metadata accessor for GenericPage();
        goto LABEL_38;
      case 10:
        v173 = v331;
        v174 = v332;
        (*(v17 + 16))(v331, a2, v332);
        v175 = v329;
        v176 = v333;
        v177 = v334;
        (*(v329 + 16))(v333, v327, v334);
        v178 = (*(v17 + 80) + 16) & ~*(v17 + 80);
        v179 = (v330 + *(v175 + 80) + v178) & ~*(v175 + 80);
        v180 = swift_allocObject();
        (*(v17 + 32))(v180 + v178, v173, v174);
        (*(v175 + 32))(v180 + v179, v176, v177);
        v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E940);
        v182 = v324;
        v324[3] = v181;
        v182[4] = &off_286218388;
        __swift_allocate_boxed_opaque_existential_1(v182);
        type metadata accessor for TopChartsPage();
        goto LABEL_38;
      case 12:
        v183 = v331;
        v184 = v332;
        (*(v17 + 16))(v331, a2, v332);
        v185 = v329;
        v186 = v333;
        v187 = v334;
        (*(v329 + 16))(v333, v327, v334);
        v188 = (*(v17 + 80) + 16) & ~*(v17 + 80);
        v189 = (v330 + *(v185 + 80) + v188) & ~*(v185 + 80);
        v190 = swift_allocObject();
        (*(v17 + 32))(v190 + v188, v183, v184);
        (*(v185 + 32))(v190 + v189, v186, v187);
        v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E938);
        v192 = v324;
        v324[3] = v191;
        v192[4] = &off_286218388;
        __swift_allocate_boxed_opaque_existential_1(v192);
        type metadata accessor for TodayPage();
        goto LABEL_38;
      case 13:
        v246 = v331;
        v247 = v332;
        (*(v17 + 16))(v331, a2, v332);
        v248 = v329;
        v249 = v333;
        v250 = v334;
        (*(v329 + 16))(v333, v327, v334);
        v251 = (*(v17 + 80) + 16) & ~*(v17 + 80);
        v252 = (v330 + *(v248 + 80) + v251) & ~*(v248 + 80);
        v253 = swift_allocObject();
        (*(v17 + 32))(v253 + v251, v246, v247);
        (*(v248 + 32))(v253 + v252, v249, v250);
        v254 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E930);
        v255 = v324;
        v324[3] = v254;
        v255[4] = &off_286218388;
        __swift_allocate_boxed_opaque_existential_1(v255);
        type metadata accessor for ArticlePage();
        goto LABEL_38;
      case 15:
        v236 = v331;
        v237 = v332;
        (*(v17 + 16))(v331, a2, v332);
        v238 = v329;
        v239 = v333;
        v240 = v334;
        (*(v329 + 16))(v333, v327, v334);
        v241 = (*(v17 + 80) + 16) & ~*(v17 + 80);
        v242 = (v330 + *(v238 + 80) + v241) & ~*(v238 + 80);
        v243 = swift_allocObject();
        (*(v17 + 32))(v243 + v241, v236, v237);
        (*(v238 + 32))(v243 + v242, v239, v240);
        v244 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E928);
        v245 = v324;
        v324[3] = v244;
        v245[4] = &off_286218388;
        __swift_allocate_boxed_opaque_existential_1(v245);
        type metadata accessor for InAppPurchaseInstallPage();
        goto LABEL_38;
      case 16:
        v67 = sub_24F928348();
        v69 = v324;
        if (v68)
        {
          v70 = v67;
          v71 = v68;
          v72 = swift_allocObject();
          *(v72 + 16) = v70;
          *(v72 + 24) = v71;
          v69[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E910);
          v69[4] = &off_286218388;
          __swift_allocate_boxed_opaque_existential_1(v69);
LABEL_38:
          sub_24F92A4B8();
        }

        else
        {
          v324[4] = 0;
          result = 0.0;
          *v69 = 0u;
          *(v69 + 1) = 0u;
        }

        break;
      case 17:
        v143 = v331;
        v144 = v332;
        (*(v17 + 16))(v331, a2, v332);
        v145 = v329;
        v146 = v333;
        v147 = v334;
        (*(v329 + 16))(v333, v327, v334);
        v148 = (*(v17 + 80) + 16) & ~*(v17 + 80);
        v149 = (v330 + *(v145 + 80) + v148) & ~*(v145 + 80);
        v150 = swift_allocObject();
        (*(v17 + 32))(v150 + v148, v143, v144);
        (*(v145 + 32))(v150 + v149, v146, v147);
        v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E920);
        v152 = v324;
        v324[3] = v151;
        v152[4] = &off_286218388;
        __swift_allocate_boxed_opaque_existential_1(v152);
        type metadata accessor for ReviewsPage(0);
        goto LABEL_38;
      case 18:
        v93 = v331;
        v94 = v332;
        (*(v17 + 16))(v331, a2, v332);
        v95 = v329;
        v96 = v333;
        v97 = v334;
        (*(v329 + 16))(v333, v327, v334);
        v98 = (*(v17 + 80) + 16) & ~*(v17 + 80);
        v99 = (v330 + *(v95 + 80) + v98) & ~*(v95 + 80);
        v100 = swift_allocObject();
        (*(v17 + 32))(v100 + v98, v93, v94);
        (*(v95 + 32))(v100 + v99, v96, v97);
        v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E908);
        v102 = v324;
        v324[3] = v101;
        v102[4] = &off_286218388;
        __swift_allocate_boxed_opaque_existential_1(v102);
        type metadata accessor for GenericAccountPage();
        goto LABEL_38;
      case 24:
        v193 = v331;
        v194 = v332;
        (*(v17 + 16))(v331, a2, v332);
        v195 = v329;
        v196 = v333;
        v197 = v334;
        (*(v329 + 16))(v333, v327, v334);
        v198 = (*(v17 + 80) + 16) & ~*(v17 + 80);
        v199 = (v330 + *(v195 + 80) + v198) & ~*(v195 + 80);
        v200 = swift_allocObject();
        (*(v17 + 32))(v200 + v198, v193, v194);
        (*(v195 + 32))(v200 + v199, v196, v197);
        v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E880);
        v202 = v324;
        v324[3] = v201;
        v202[4] = &off_286218388;
        __swift_allocate_boxed_opaque_existential_1(v202);
        type metadata accessor for Review(0);
        goto LABEL_38;
      case 25:
        v203 = v331;
        v204 = v332;
        (*(v17 + 16))(v331, a2, v332);
        v205 = v329;
        v206 = v333;
        v207 = v334;
        (*(v329 + 16))(v333, v327, v334);
        v208 = (*(v17 + 80) + 16) & ~*(v17 + 80);
        v209 = (v330 + *(v205 + 80) + v208) & ~*(v205 + 80);
        v210 = swift_allocObject();
        (*(v17 + 32))(v210 + v208, v203, v204);
        (*(v205 + 32))(v210 + v209, v206, v207);
        v211 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E878);
        v212 = v324;
        v324[3] = v211;
        v212[4] = &off_286218388;
        __swift_allocate_boxed_opaque_existential_1(v212);
        type metadata accessor for EditorsChoice();
        goto LABEL_38;
      case 26:
        v276 = v331;
        v277 = v332;
        (*(v17 + 16))(v331, a2, v332);
        v278 = v329;
        v279 = v333;
        v280 = v334;
        (*(v329 + 16))(v333, v327, v334);
        v281 = (*(v17 + 80) + 16) & ~*(v17 + 80);
        v282 = (v330 + *(v278 + 80) + v281) & ~*(v278 + 80);
        v283 = swift_allocObject();
        (*(v17 + 32))(v283 + v281, v276, v277);
        (*(v278 + 32))(v283 + v282, v279, v280);
        v284 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E900);
        v285 = v324;
        v324[3] = v284;
        v285[4] = &off_286218388;
        __swift_allocate_boxed_opaque_existential_1(v285);
        type metadata accessor for ArcadePage();
        goto LABEL_38;
      case 27:
        v256 = v331;
        v257 = v332;
        (*(v17 + 16))(v331, a2, v332);
        v258 = v329;
        v259 = v333;
        v260 = v334;
        (*(v329 + 16))(v333, v327, v334);
        v261 = (*(v17 + 80) + 16) & ~*(v17 + 80);
        v262 = (v330 + *(v258 + 80) + v261) & ~*(v258 + 80);
        v263 = swift_allocObject();
        (*(v17 + 32))(v263 + v261, v256, v257);
        (*(v258 + 32))(v263 + v262, v259, v260);
        v264 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E8F8);
        v265 = v324;
        v324[3] = v264;
        v265[4] = &off_286218388;
        __swift_allocate_boxed_opaque_existential_1(v265);
        type metadata accessor for ArcadeSubscribePage();
        goto LABEL_38;
      case 28:
        v31 = v331;
        v32 = v332;
        (*(v17 + 16))(v331, a2, v332);
        v33 = v329;
        v34 = v333;
        v35 = v334;
        (*(v329 + 16))(v333, v327, v334);
        v36 = (*(v17 + 80) + 16) & ~*(v17 + 80);
        v37 = (v330 + *(v33 + 80) + v36) & ~*(v33 + 80);
        v38 = swift_allocObject();
        (*(v17 + 32))(v38 + v36, v31, v32);
        (*(v33 + 32))(v38 + v37, v34, v35);
        v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E8D8);
        v40 = v324;
        v324[3] = v39;
        v40[4] = &off_286218388;
        __swift_allocate_boxed_opaque_existential_1(v40);
        type metadata accessor for MarketingItemRequestInfo();
        goto LABEL_38;
      case 29:
        v103 = v331;
        v104 = v332;
        (*(v17 + 16))(v331, a2, v332);
        v105 = v329;
        v106 = v333;
        v107 = v334;
        (*(v329 + 16))(v333, v327, v334);
        v108 = (*(v17 + 80) + 16) & ~*(v17 + 80);
        v109 = (v330 + *(v105 + 80) + v108) & ~*(v105 + 80);
        v110 = swift_allocObject();
        (*(v17 + 32))(v110 + v108, v103, v104);
        (*(v105 + 32))(v110 + v109, v106, v107);
        v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E8E8);
        v112 = v324;
        v324[3] = v111;
        v112[4] = &off_286218388;
        __swift_allocate_boxed_opaque_existential_1(v112);
        type metadata accessor for ArcadeSeeAllGamesPage();
        goto LABEL_38;
      case 30:
        v286 = v331;
        v287 = v332;
        (*(v17 + 16))(v331, a2, v332);
        v288 = v329;
        v289 = v333;
        v290 = v334;
        (*(v329 + 16))(v333, v327, v334);
        v291 = (*(v17 + 80) + 16) & ~*(v17 + 80);
        v292 = (v330 + *(v288 + 80) + v291) & ~*(v288 + 80);
        v293 = swift_allocObject();
        (*(v17 + 32))(v293 + v291, v286, v287);
        (*(v288 + 32))(v293 + v292, v289, v290);
        v294 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E8F0);
        v295 = v324;
        v324[3] = v294;
        v295[4] = &off_286218388;
        __swift_allocate_boxed_opaque_existential_1(v295);
        type metadata accessor for ArcadeWelcomePage();
        goto LABEL_38;
      case 31:
        v42 = v331;
        v41 = v332;
        (*(v17 + 16))(v331, a2, v332);
        v43 = (*(v17 + 80) + 16) & ~*(v17 + 80);
        v44 = swift_allocObject();
        (*(v17 + 32))(v44 + v43, v42, v41);
        v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E8E0);
        v46 = v324;
        v324[3] = v45;
        v46[4] = &off_286218388;
        __swift_allocate_boxed_opaque_existential_1(v46);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23B740);
        goto LABEL_38;
      case 35:
        v83 = v331;
        v84 = v332;
        (*(v17 + 16))(v331, a2, v332);
        v85 = v329;
        v86 = v333;
        v87 = v334;
        (*(v329 + 16))(v333, v327, v334);
        v88 = (*(v17 + 80) + 16) & ~*(v17 + 80);
        v89 = (v330 + *(v85 + 80) + v88) & ~*(v85 + 80);
        v90 = swift_allocObject();
        (*(v17 + 32))(v90 + v88, v83, v84);
        (*(v85 + 32))(v90 + v89, v86, v87);
        v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E890);
        v92 = v324;
        v324[3] = v91;
        v92[4] = &off_286218388;
        __swift_allocate_boxed_opaque_existential_1(v92);
        type metadata accessor for GameCenterDashboardAction();
        goto LABEL_38;
      case 37:
        v57 = v331;
        v58 = v332;
        (*(v17 + 16))(v331, a2, v332);
        v59 = v329;
        v60 = v333;
        v61 = v334;
        (*(v329 + 16))(v333, v327, v334);
        v62 = (*(v17 + 80) + 16) & ~*(v17 + 80);
        v63 = (v330 + *(v59 + 80) + v62) & ~*(v59 + 80);
        v64 = swift_allocObject();
        (*(v17 + 32))(v64 + v62, v57, v58);
        (*(v59 + 32))(v64 + v63, v60, v61);
        v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E898);
        v66 = v324;
        v324[3] = v65;
        v66[4] = &off_286218388;
        __swift_allocate_boxed_opaque_existential_1(v66);
        type metadata accessor for GameCenterPlayerProfileAction();
        goto LABEL_38;
      case 39:
        v153 = v331;
        v154 = v332;
        (*(v17 + 16))(v331, a2, v332);
        v155 = v329;
        v156 = v333;
        v157 = v334;
        (*(v329 + 16))(v333, v327, v334);
        v158 = (*(v17 + 80) + 16) & ~*(v17 + 80);
        v159 = (v330 + *(v155 + 80) + v158) & ~*(v155 + 80);
        v160 = swift_allocObject();
        (*(v17 + 32))(v160 + v158, v153, v154);
        (*(v155 + 32))(v160 + v159, v156, v157);
        v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E888);
        v162 = v324;
        v324[3] = v161;
        v162[4] = &off_286218388;
        __swift_allocate_boxed_opaque_existential_1(v162);
        type metadata accessor for ReviewSummaryReportConcernAction();
        goto LABEL_38;
      case 40:
        v47 = v331;
        v48 = v332;
        (*(v17 + 16))(v331, a2, v332);
        v49 = v329;
        v50 = v333;
        v51 = v334;
        (*(v329 + 16))(v333, v327, v334);
        v52 = (*(v17 + 80) + 16) & ~*(v17 + 80);
        v53 = (v330 + *(v49 + 80) + v52) & ~*(v49 + 80);
        v54 = swift_allocObject();
        (*(v17 + 32))(v54 + v52, v47, v48);
        (*(v49 + 32))(v54 + v53, v50, v51);
        v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E8A0);
        v56 = v324;
        v324[3] = v55;
        v56[4] = &off_286218388;
        __swift_allocate_boxed_opaque_existential_1(v56);
        type metadata accessor for ShareSheetAction();
        goto LABEL_38;
      case 45:
        v123 = v331;
        v124 = v332;
        (*(v17 + 16))(v331, a2, v332);
        v125 = v329;
        v126 = v333;
        v127 = v334;
        (*(v329 + 16))(v333, v327, v334);
        v128 = (*(v17 + 80) + 16) & ~*(v17 + 80);
        v129 = (v330 + *(v125 + 80) + v128) & ~*(v125 + 80);
        v130 = swift_allocObject();
        (*(v17 + 32))(v130 + v128, v123, v124);
        (*(v125 + 32))(v130 + v129, v126, v127);
        v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E8C8);
        v132 = v324;
        v324[3] = v131;
        v132[4] = &off_286218388;
        __swift_allocate_boxed_opaque_existential_1(v132);
        type metadata accessor for AppEventDetailPage();
        goto LABEL_38;
      case 46:
        v213 = v331;
        v214 = v332;
        (*(v17 + 16))(v331, a2, v332);
        v215 = v329;
        v216 = v333;
        v217 = v334;
        (*(v329 + 16))(v333, v327, v334);
        v218 = (*(v17 + 80) + 16) & ~*(v17 + 80);
        v219 = (v330 + *(v215 + 80) + v218) & ~*(v215 + 80);
        v220 = swift_allocObject();
        (*(v17 + 32))(v220 + v218, v213, v214);
        (*(v215 + 32))(v220 + v219, v216, v217);
        v221 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E8C0);
        v222 = v324;
        v324[3] = v221;
        v222[4] = &off_286218388;
        __swift_allocate_boxed_opaque_existential_1(v222);
        type metadata accessor for ContingentOfferDetailPage();
        goto LABEL_38;
      case 47:
        v133 = v331;
        v134 = v332;
        (*(v17 + 16))(v331, a2, v332);
        v135 = v329;
        v136 = v333;
        v137 = v334;
        (*(v329 + 16))(v333, v327, v334);
        v138 = (*(v17 + 80) + 16) & ~*(v17 + 80);
        v139 = (v330 + *(v135 + 80) + v138) & ~*(v135 + 80);
        v140 = swift_allocObject();
        (*(v17 + 32))(v140 + v138, v133, v134);
        (*(v135 + 32))(v140 + v139, v136, v137);
        v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E8B8);
        v142 = v324;
        v324[3] = v141;
        v142[4] = &off_286218388;
        __swift_allocate_boxed_opaque_existential_1(v142);
        type metadata accessor for OfferItemDetailPage();
        goto LABEL_38;
      case 49:
        v73 = v331;
        v74 = v332;
        (*(v17 + 16))(v331, a2, v332);
        v75 = v329;
        v76 = v333;
        v77 = v334;
        (*(v329 + 16))(v333, v327, v334);
        v78 = (*(v17 + 80) + 16) & ~*(v17 + 80);
        v79 = (v330 + *(v75 + 80) + v78) & ~*(v75 + 80);
        v80 = swift_allocObject();
        (*(v17 + 32))(v80 + v78, v73, v74);
        (*(v75 + 32))(v80 + v79, v76, v77);
        v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E8A8);
        v82 = v324;
        v324[3] = v81;
        v82[4] = &off_286218388;
        __swift_allocate_boxed_opaque_existential_1(v82);
        goto LABEL_38;
      case 53:
        v266 = v331;
        v267 = v332;
        (*(v17 + 16))(v331, a2, v332);
        v268 = v329;
        v269 = v333;
        v270 = v334;
        (*(v329 + 16))(v333, v327, v334);
        v271 = (*(v17 + 80) + 16) & ~*(v17 + 80);
        v272 = (v330 + *(v268 + 80) + v271) & ~*(v268 + 80);
        v273 = swift_allocObject();
        (*(v17 + 32))(v273 + v271, v266, v267);
        (*(v268 + 32))(v273 + v272, v269, v270);
        v274 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E870);
        v275 = v324;
        v324[3] = v274;
        v275[4] = &off_286218388;
        __swift_allocate_boxed_opaque_existential_1(v275);
        type metadata accessor for PersonalizationTransparencyPage();
        goto LABEL_38;
      case 54:
        v296 = v331;
        v297 = v332;
        (*(v17 + 16))(v331, a2, v332);
        v298 = v329;
        v299 = v333;
        v300 = v334;
        (*(v329 + 16))(v333, v327, v334);
        v301 = (*(v17 + 80) + 16) & ~*(v17 + 80);
        v302 = (v330 + *(v298 + 80) + v301) & ~*(v298 + 80);
        v303 = swift_allocObject();
        (*(v17 + 32))(v303 + v301, v296, v297);
        (*(v298 + 32))(v303 + v302, v299, v300);
        v304 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E868);
        v305 = v324;
        v324[3] = v304;
        v305[4] = &off_286218388;
        __swift_allocate_boxed_opaque_existential_1(v305);
        goto LABEL_38;
      default:
        v316 = v324;
        v324[4] = 0;
        result = 0.0;
        *v316 = 0u;
        *(v316 + 1) = 0u;
        return result;
    }
  }

  return result;
}

uint64_t FlowAction.referrerUrl.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_referrerUrl);

  return v1;
}

void FlowAction.referrerData.getter(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_referrerData;
  v3 = *(v1 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_referrerData);
  v4 = *(v1 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_referrerData + 8);
  v5 = *(v1 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_referrerData + 16);
  v6 = *(v1 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_referrerData + 24);
  v7 = *(v1 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_referrerData + 32);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  v8 = *(v2 + 40);
  *(a1 + 40) = v8;
  sub_24EA145F0(v3, v4, v5, v6, v7, v8);
}

uint64_t FlowAction.pageDataPageRenderMetrics.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageDataPageRenderMetrics;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t FlowAction.presentationContext.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit10FlowAction_presentationContext;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t FlowAction.presentationContext.setter(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC12GameStoreKit10FlowAction_presentationContext;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

uint64_t FlowAction.animationBehavior.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit10FlowAction_animationBehavior;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t FlowAction.animationBehavior.setter(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC12GameStoreKit10FlowAction_animationBehavior;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

uint64_t FlowAction.origin.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit10FlowAction_origin;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t FlowAction.origin.setter(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC12GameStoreKit10FlowAction_origin;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

uint64_t FlowAction.presentation.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_presentation);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t FlowAction.presentation.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_presentation);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t FlowAction.appStateController.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_appStateController);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
  return swift_unknownObjectRelease();
}

uint64_t sub_24F307254()
{
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageUrl, &qword_27F228530);

  sub_24EA14B54(*(v0 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_referrerData), *(v0 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_referrerData + 8), *(v0 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_referrerData + 16), *(v0 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_referrerData + 24), *(v0 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_referrerData + 32), *(v0 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_referrerData + 40));

  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageData, &qword_27F23E7F8);

  return swift_unknownObjectRelease();
}

uint64_t FlowAction.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageUrl, &qword_27F228530);

  sub_24EA14B54(*(v0 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_referrerData), *(v0 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_referrerData + 8), *(v0 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_referrerData + 16), *(v0 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_referrerData + 24), *(v0 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_referrerData + 32), *(v0 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_referrerData + 40));

  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageData, &qword_27F23E7F8);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t FlowAction.__deallocating_deinit()
{
  FlowAction.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_24F307510()
{
  v1 = (*v0 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_presentation);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

char *sub_24F307594(uint64_t a1, uint64_t a2)
{
  v28 = a2;
  v25 = sub_24F9285B8();
  v3 = *(v25 - 8);
  v4 = MEMORY[0x28223BE20](v25);
  v26 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - v6;
  v24 = &v24 - v6;
  v8 = sub_24F928388();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v24 - v13;
  v27 = v9;
  v15 = *(v9 + 16);
  v15(&v24 - v13, a1, v8);
  v29 = v3;
  v16 = *(v3 + 16);
  v17 = v7;
  v18 = v25;
  v16(v17, v28, v25);
  type metadata accessor for GameCenterDashboardAction();
  swift_allocObject();
  v28 = v8;
  v15(v12, v14, v8);
  v19 = v18;
  v20 = v24;
  v21 = v26;
  v16(v26, v24, v19);
  v22 = Action.init(deserializing:using:)(v12, v21);
  (*(v29 + 8))(v20, v19);
  (*(v27 + 8))(v14, v28);
  return v22;
}

uint64_t sub_24F30780C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_24F9285B8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24F928388();
  MEMORY[0x28223BE20](v10);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, a1);
  (*(v7 + 16))(v9, a2, v6);
  return Annotation.init(deserializing:using:)(v12, v9, a3);
}

uint64_t sub_24F30798C(uint64_t a1, uint64_t a2)
{
  v3 = sub_24F9285B8();
  MEMORY[0x28223BE20](v3);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a2);
  MEMORY[0x253050800](v5);
  sub_24F30A3BC();
  sub_24F9282E8();
}

uint64_t sub_24F307AA0()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

unint64_t sub_24F307B08()
{
  result = qword_27F23E810;
  if (!qword_27F23E810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23E810);
  }

  return result;
}

unint64_t sub_24F307B5C()
{
  result = qword_27F23E818;
  if (!qword_27F23E818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23E818);
  }

  return result;
}

unint64_t sub_24F307BB0()
{
  result = qword_27F23E820;
  if (!qword_27F23E820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23E820);
  }

  return result;
}

unint64_t sub_24F307C04()
{
  result = qword_27F23E828;
  if (!qword_27F23E828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23E828);
  }

  return result;
}

unint64_t sub_24F307C58()
{
  result = qword_27F23E830;
  if (!qword_27F23E830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23E830);
  }

  return result;
}

uint64_t FlowAction.replacingPageData(_:)(uint64_t a1)
{
  v3 = sub_24F91F6B8();
  v49 = *(v3 - 8);
  v50 = v3;
  MEMORY[0x28223BE20](v3);
  v48 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24F928AD8();
  v67 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v48 - v10;
  sub_24E65864C(&v1[OBJC_IVAR____TtC12GameStoreKit6Action_id], v75);
  LODWORD(v60) = v1[OBJC_IVAR____TtC12GameStoreKit10FlowAction_page];
  v12 = *(v1 + 2);
  v59 = *(v1 + 3);
  v13 = *(v1 + 4);
  v57 = v12;
  v58 = v13;
  sub_24E60169C(&v1[OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageUrl], v11, &qword_27F228530);
  v14 = *&v1[OBJC_IVAR____TtC12GameStoreKit10FlowAction_referrerUrl];
  v54 = *&v1[OBJC_IVAR____TtC12GameStoreKit10FlowAction_referrerUrl + 8];
  v55 = v14;
  v15 = *&v1[OBJC_IVAR____TtC12GameStoreKit10FlowAction_referrerData];
  v53 = *&v1[OBJC_IVAR____TtC12GameStoreKit10FlowAction_referrerData + 8];
  v16 = *&v1[OBJC_IVAR____TtC12GameStoreKit10FlowAction_referrerData + 16];
  v64 = *&v1[OBJC_IVAR____TtC12GameStoreKit10FlowAction_referrerData + 24];
  v65 = v16;
  v63 = *&v1[OBJC_IVAR____TtC12GameStoreKit10FlowAction_referrerData + 32];
  v62 = v1[OBJC_IVAR____TtC12GameStoreKit10FlowAction_referrerData + 40];
  sub_24E60169C(a1, v74, &qword_27F2129B0);
  v61 = v6;
  v52 = *(v6 + 16);
  v52(v8, &v1[OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics], v5);
  v17 = OBJC_IVAR____TtC12GameStoreKit10FlowAction_presentationContext;
  swift_beginAccess();
  v51 = v1[v17];
  v18 = OBJC_IVAR____TtC12GameStoreKit10FlowAction_animationBehavior;
  swift_beginAccess();
  LOBYTE(v18) = v1[v18];
  v19 = OBJC_IVAR____TtC12GameStoreKit10FlowAction_origin;
  swift_beginAccess();
  LOBYTE(v8) = v1[v19];
  v56 = *(v1 + 5);
  v20 = &v1[OBJC_IVAR____TtC12GameStoreKit10FlowAction_presentation];
  swift_beginAccess();
  v22 = *v20;
  v21 = v20[1];
  v23 = swift_allocObject();
  *(v23 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageDataPageRenderMetrics) = 0;
  v24 = v23 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageData;
  *v24 = 0u;
  *(v24 + 16) = 0u;
  *(v24 + 32) = 0;
  v25 = (v23 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_appStateController);
  *v25 = 0;
  v25[1] = 0;
  *(v23 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_page) = v60;
  v60 = v11;
  sub_24E60169C(v11, v23 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageUrl, &qword_27F228530);
  v26 = (v23 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_referrerUrl);
  v27 = v54;
  *v26 = v55;
  v26[1] = v27;
  v28 = v23 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_referrerData;
  v55 = v15;
  *v28 = v15;
  v29 = v53;
  v31 = v64;
  v30 = v65;
  *(v28 + 8) = v53;
  *(v28 + 16) = v30;
  v32 = v63;
  *(v28 + 24) = v31;
  *(v28 + 32) = v32;
  *(v28 + 40) = v62;
  *(v23 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_presentationContext) = v51;
  *(v23 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_animationBehavior) = v18;
  *(v23 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_origin) = v8;
  v33 = (v23 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_presentation);
  *v33 = v22;
  v33[1] = v21;
  sub_24E60169C(v75, v73, &qword_27F235830);
  v52((v23 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics), v66, v67);
  v34 = OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics;
  v35 = sub_24F929608();
  (*(*(v35 - 8) + 56))(v23 + v34, 1, 1, v35);
  v36 = (v23 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v36 = 0u;
  v36[1] = 0u;
  v37 = v23 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  sub_24E60169C(v73, &v70, &qword_27F235830);
  if (*(&v71 + 1))
  {
    v38 = v71;
    *v37 = v70;
    *(v37 + 16) = v38;
    *(v37 + 32) = v72;

    v39 = v59;

    v40 = v58;

    sub_24EA145F0(v55, v29, v65, v64, v63, v62);
  }

  else
  {

    v39 = v59;

    v40 = v58;

    sub_24EA145F0(v55, v29, v65, v64, v63, v62);

    v41 = v48;
    sub_24F91F6A8();
    v42 = sub_24F91F668();
    v44 = v43;
    (*(v49 + 8))(v41, v50);
    v68 = v42;
    v69 = v44;
    sub_24F92C7F8();
    sub_24E601704(&v70, &qword_27F235830);
  }

  sub_24E601704(v73, &qword_27F235830);
  *&v45 = v57;
  *(&v45 + 1) = v39;
  *&v46 = v40;
  *(&v46 + 1) = v56;
  *(v23 + 16) = v45;
  *(v23 + 32) = v46;

  FlowAction.setPageData(_:)(v74);

  (*(v61 + 8))(v66, v67);
  sub_24E601704(v74, &qword_27F2129B0);
  sub_24E601704(v60, &qword_27F228530);
  sub_24E601704(v75, &qword_27F235830);
  return v23;
}

uint64_t Lazy.anyWrappedValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = sub_24F92C4A8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - v6;
  sub_24F92A4A8();
  v8 = *(v3 - 8);
  if ((*(v8 + 48))(v7, 1, v3) == 1)
  {
    result = (*(v5 + 8))(v7, v4);
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  else
  {
    *(a2 + 24) = v3;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
    return (*(v8 + 32))(boxed_opaque_existential_1, v7, v3);
  }

  return result;
}

unint64_t sub_24F308500()
{
  result = qword_27F23E838;
  if (!qword_27F23E838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23E838);
  }

  return result;
}

unint64_t sub_24F308558()
{
  result = qword_27F23E840;
  if (!qword_27F23E840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23E840);
  }

  return result;
}

unint64_t sub_24F3085B0()
{
  result = qword_27F23E848;
  if (!qword_27F23E848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23E848);
  }

  return result;
}

unint64_t sub_24F308608()
{
  result = qword_27F23E850;
  if (!qword_27F23E850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23E850);
  }

  return result;
}

uint64_t type metadata accessor for FlowAction()
{
  result = qword_27F23E858;
  if (!qword_27F23E858)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FlowPage(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xCA)
  {
    goto LABEL_17;
  }

  if (a2 + 54 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 54) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 54;
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

      return (*a1 | (v4 << 8)) - 54;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 54;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x37;
  v8 = v6 - 55;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FlowPage(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 54 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 54) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xCA)
  {
    v4 = 0;
  }

  if (a2 > 0xC9)
  {
    v5 = ((a2 - 202) >> 8) + 1;
    *result = a2 + 54;
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
    *result = a2 + 54;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_24F30887C()
{
  sub_24E6D4C08();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_24F3089C0()
{
  v1 = *(sub_24F928388() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_24F9285B8() - 8);
  return sub_24F30798C(v0 + v2, v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80)));
}

uint64_t sub_24F308AE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = sub_24F9285B8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24F928388();
  MEMORY[0x28223BE20](v11);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13, a1);
  (*(v8 + 16))(v10, a2, v7);
  result = sub_24ECB9BB4(v13, v10);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_24F308C68@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(sub_24F928388() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_24F9285B8() - 8);
  return sub_24F308AE4(v1 + v4, v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80)), a1);
}

uint64_t sub_24F308D8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(unint64_t, unint64_t, uint64_t, uint64_t))
{
  v7 = *(sub_24F928388() - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(sub_24F9285B8() - 8);
  return a3(v3 + v8, v3 + ((v8 + v9 + *(v10 + 80)) & ~*(v10 + 80)), a1, a2);
}

char *sub_24F308ED8@<X0>(char **a1@<X8>)
{
  v4 = *(sub_24F928388() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(sub_24F9285B8() - 8);
  result = sub_24F307594(v1 + v5, v1 + ((v5 + v6 + *(v7 + 80)) & ~*(v7 + 80)));
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_24F309054@<X0>(uint64_t a1@<X8>)
{
  v3 = *(sub_24F928388() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_24F9285B8() - 8);
  return sub_24F30780C(v1 + v4, v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80)), a1);
}

uint64_t sub_24F309124@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(void)@<X2>, uint64_t (*a4)(char *, char *)@<X4>, uint64_t *a5@<X8>)
{
  v20 = a4;
  v19 = a5;
  v9 = sub_24F9285B8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24F928388();
  MEMORY[0x28223BE20](v13);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v15, a1);
  (*(v10 + 16))(v12, a2, v9);
  a3(0);
  swift_allocObject();
  result = v20(v15, v12);
  if (!v5)
  {
    *v19 = result;
  }

  return result;
}

uint64_t sub_24F3092E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(void)@<X2>, uint64_t (*a4)(char *, char *)@<X3>, uint64_t a5@<X8>)
{
  v19 = a4;
  v18[0] = a5;
  v8 = sub_24F9285B8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24F928388();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  a3(0);
  (*(v13 + 16))(v15, a1, v12);
  (*(v9 + 16))(v11, a2, v8);
  v16 = v18[1];
  result = v19(v15, v11);
  if (!v16)
  {
    *v18[0] = result;
  }

  return result;
}

uint64_t sub_24F309634@<X0>(void (*a1)(void)@<X0>, uint64_t (*a2)(char *, char *)@<X2>, uint64_t *a3@<X8>)
{
  v7 = *(sub_24F928388() - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(sub_24F9285B8() - 8);
  return sub_24F309124(v3 + v8, v3 + ((v8 + v9 + *(v10 + 80)) & ~*(v10 + 80)), a1, a2, a3);
}

uint64_t sub_24F309770()
{
  v1 = sub_24F928388();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_24F3097F8@<X0>(uint64_t *a1@<X8>)
{
  sub_24F928388();
  result = sub_24F928348();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_24F309A28()
{

  return swift_deallocObject();
}

uint64_t sub_24F309A60@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

uint64_t sub_24F309CCC@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219650);
  result = sub_24F92ABD8();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_24F309D60@<X0>(uint64_t *a1@<X8>)
{
  sub_24F92AC28();
  sub_24F9285B8();
  return sub_24F309CCC(a1);
}

uint64_t sub_24F309E30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = sub_24F9285B8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24F928388();
  MEMORY[0x28223BE20](v11);
  (*(v13 + 16))(&v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  (*(v8 + 16))(v10, a2, v7);
  type metadata accessor for Artwork();
  sub_24F30A374(&qword_27F219660, type metadata accessor for Artwork);
  result = sub_24F92B678();
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_24F309FFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(void)@<X2>, uint64_t (*a4)(char *, char *)@<X3>, uint64_t *a5@<X8>)
{
  v20 = a5;
  v10 = sub_24F9285B8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24F928388();
  MEMORY[0x28223BE20](v14);
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16, a1);
  (*(v11 + 16))(v13, a2, v10);
  a3(0);
  swift_allocObject();
  result = a4(v16, v13);
  if (!v5)
  {
    *v20 = result;
  }

  return result;
}

uint64_t objectdestroy_28Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = sub_24F9285B8();
  v7 = *(v6 - 8);
  v8 = (v4 + v5 + *(v7 + 80)) & ~*(v7 + 80);
  (*(v3 + 8))(v1 + v4, v2);
  (*(v7 + 8))(v1 + v8, v6);

  return swift_deallocObject();
}

uint64_t sub_24F30A374(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24F30A3BC()
{
  result = qword_27F23E968;
  if (!qword_27F23E968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23E968);
  }

  return result;
}

uint64_t sub_24F30A4B8()
{
  swift_getKeyPath();
  sub_24F314F04(&qword_27F21EAC8, type metadata accessor for HeroSafeAreaMetrics);
  sub_24F91FD88();

  result = *(v0 + 120);
  if ((*(v0 + 136) & 1) == 0)
  {
    v2 = *(v0 + 120);
    swift_getKeyPath();
    sub_24F91FD88();

    v3 = v2 - *(v0 + 24);
    swift_getKeyPath();
    sub_24F91FD88();

    v4 = v3 - *(v0 + 40);
    swift_getKeyPath();
    sub_24F91FD88();

    swift_getKeyPath();
    sub_24F91FD88();

    return *&v4;
  }

  return result;
}

uint64_t sub_24F30A668@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24F5500F8();
  *a1 = result;
  return result;
}

uint64_t sub_24F30A6B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = xmmword_24F9E26B0;
  *(a6 + 16) = xmmword_24F9E26C0;
  *(a6 + 32) = xmmword_24F9E26D0;
  *(a6 + 48) = 0;
  v12 = type metadata accessor for CardHeroView();
  (*(*(a5 - 8) + 32))(a6 + v12[14], a1, a5);
  (*(*(a4 - 8) + 32))(a6 + v12[15], a2, a4);
  v13 = v12[16];
  v14 = sub_24F923E98();
  (*(*(v14 - 8) + 32))(a6 + v13, a3, v14);
  v15 = a6 + v12[17];
  *v15 = sub_24F30B784();
  *(v15 + 8) = v16;
  *(v15 + 16) = v17 & 1;
  *(v15 + 24) = v18;
  v19 = (a6 + v12[18]);
  memset(&v30[3], 0, 32);
  v31 = 1;
  sub_24F30B7DC(v30);
  v20 = v30[1];
  *v19 = v30[0];
  v19[1] = v20;
  v19[2] = v30[2];
  sub_24F30B8B8(sub_24F30B850, 0, v21, v22, v23, &unk_286218BB0, type metadata accessor for HeroSafeAreaMetrics);
  sub_24F30B8B8(sub_24E8CA6B0, 0, v24, v25, v26, &unk_286218B88, type metadata accessor for CardSafeArea);
  v27 = a6 + v12[21];
  *v27 = swift_getKeyPath();
  *(v27 + 8) = 0;
  v28 = a6 + v12[22];
  result = swift_getKeyPath();
  *v28 = result;
  *(v28 + 8) = 0;
  *(v28 + 16) = 0;
  *(v28 + 24) = 0;
  *(v28 + 32) = 0;
  return result;
}

uint64_t sub_24F30A934()
{
  swift_getKeyPath();
  sub_24F314F04(&qword_27F21EAC8, type metadata accessor for HeroSafeAreaMetrics);
  sub_24F91FD88();

  return *(v0 + 120);
}

__n128 sub_24F30A9D8@<Q0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_24F314F04(&qword_27F21EAC8, type metadata accessor for HeroSafeAreaMetrics);
  sub_24F91FD88();

  v3 = *(v1 + 112);
  result = *(v1 + 80);
  v5 = *(v1 + 96);
  *a1 = result;
  *(a1 + 16) = v5;
  *(a1 + 32) = v3;
  return result;
}

double sub_24F30AA88()
{
  swift_getKeyPath();
  sub_24F314F04(&qword_27F21EAC8, type metadata accessor for HeroSafeAreaMetrics);
  sub_24F91FD88();

  return *(v0 + 48);
}

double sub_24F30AB2C@<D0>(_OWORD *a1@<X8>)
{
  sub_24EA98A3C();
  sub_24F924868();
  result = *&v3;
  *a1 = v3;
  a1[1] = v4;
  return result;
}

double sub_24F30ABC8()
{
  swift_getKeyPath();
  sub_24F314F04(&qword_27F21EAC8, type metadata accessor for HeroSafeAreaMetrics);
  sub_24F91FD88();

  return *(v0 + 16);
}

__n128 sub_24F30AC6C@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24F314F04(&qword_27F21EAC8, type metadata accessor for HeroSafeAreaMetrics);
  sub_24F91FD88();

  result = *(v3 + 16);
  v5 = *(v3 + 32);
  *a2 = result;
  *(a2 + 16) = v5;
  return result;
}

uint64_t sub_24F30AD40(double a1, double a2, double a3, double a4)
{
  result = sub_24F923308();
  if (result)
  {
    v4[2] = a1;
    v4[3] = a2;
    v4[4] = a3;
    v4[5] = a4;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24F314F04(&qword_27F21EAC8, type metadata accessor for HeroSafeAreaMetrics);
    sub_24F91FD78();
  }

  return result;
}

__n128 sub_24F30AE88@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24F314F04(&qword_27F21EAC8, type metadata accessor for HeroSafeAreaMetrics);
  sub_24F91FD88();

  result = *(v3 + 48);
  v5 = *(v3 + 64);
  *a2 = result;
  *(a2 + 16) = v5;
  return result;
}

uint64_t sub_24F30AF5C(double a1, double a2, double a3, double a4)
{
  result = sub_24F923308();
  if (result)
  {
    v4[6] = a1;
    v4[7] = a2;
    v4[8] = a3;
    v4[9] = a4;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24F314F04(&qword_27F21EAC8, type metadata accessor for HeroSafeAreaMetrics);
    sub_24F91FD78();
  }

  return result;
}

double *sub_24F30B0A4(double *result, double a2, double a3, double a4, double a5)
{
  result[6] = a2;
  result[7] = a3;
  result[8] = a4;
  result[9] = a5;
  return result;
}

__n128 sub_24F30B0B0@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24F314F04(&qword_27F21EAC8, type metadata accessor for HeroSafeAreaMetrics);
  sub_24F91FD88();

  v4 = *(v3 + 112);
  result = *(v3 + 80);
  v6 = *(v3 + 96);
  *a2 = result;
  *(a2 + 16) = v6;
  *(a2 + 32) = v4;
  return result;
}

uint64_t sub_24F30B160(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3[0] = *a1;
  v3[1] = v1;
  v4 = *(a1 + 32);
  return sub_24F30B1A0(v3);
}

uint64_t sub_24F30B1A0(uint64_t result)
{
  v2 = result;
  if ((*(v1 + 112) & 1) == 0)
  {
    if (*(result + 32))
    {
      goto LABEL_7;
    }

    result = CGRectEqualToRect(*(v1 + 80), *result);
    if ((result & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_6:
    v3 = *(v2 + 16);
    *(v1 + 80) = *v2;
    *(v1 + 96) = v3;
    *(v1 + 112) = *(v2 + 32);
    return result;
  }

  if (*(result + 32))
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_24F314F04(&qword_27F21EAC8, type metadata accessor for HeroSafeAreaMetrics);
  sub_24F91FD78();
}

__n128 sub_24F30B2E4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 80) = *a2;
  *(a1 + 96) = v3;
  *(a1 + 112) = *(a2 + 32);
  return result;
}

__n128 sub_24F30B2F8@<Q0>(uint64_t *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24F314F04(&qword_27F21EAC8, type metadata accessor for HeroSafeAreaMetrics);
  sub_24F91FD88();

  v4 = *(v3 + 136);
  result = *(v3 + 120);
  *a2 = result;
  a2[1].n128_u8[0] = v4;
  return result;
}

uint64_t sub_24F30B3DC(uint64_t result, uint64_t a2, char a3)
{
  if ((*(v3 + 136) & 1) == 0)
  {
    if ((a3 & 1) == 0 && *(v3 + 120) == *&result && *(v3 + 128) == *&a2)
    {
      goto LABEL_10;
    }

LABEL_9:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24F314F04(&qword_27F21EAC8, type metadata accessor for HeroSafeAreaMetrics);
    sub_24F91FD78();
    *&result = COERCE_DOUBLE();
    return result;
  }

  if ((a3 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_10:
  *(v3 + 120) = *&result;
  *(v3 + 128) = *&a2;
  *(v3 + 136) = a3 & 1;
  return result;
}

uint64_t sub_24F30B52C()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit19HeroSafeAreaMetrics___observationRegistrar;
  v2 = sub_24F91FDC8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for HeroSafeAreaMetrics()
{
  result = qword_27F23E978;
  if (!qword_27F23E978)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F30B61C()
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

uint64_t sub_24F30B6E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_24F316524();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t sub_24F30B748()
{
  sub_24F314A98();
  sub_24F924868();
  return v1;
}

uint64_t sub_24F30B784()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D88);
  sub_24F926F28();
  return v1;
}

double sub_24F30B7DC@<D0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23E990);
  sub_24F926F28();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  return result;
}

uint64_t sub_24F30B850()
{
  type metadata accessor for HeroSafeAreaMetrics();
  v0 = swift_allocObject();
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 1;
  *(v0 + 120) = 0;
  *(v0 + 128) = 0;
  *(v0 + 136) = 1;
  sub_24F91FDB8();
  return v0;
}

uint64_t sub_24F30B8B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void))
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  a7(0);

  return sub_24F9233C8();
}

uint64_t sub_24F30B93C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24F5500F8();
  *a1 = result;
  return result;
}

unint64_t sub_24F30B990()
{
  result = qword_27F23E988;
  if (!qword_27F23E988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23E988);
  }

  return result;
}

uint64_t sub_24F30B9E4@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v169 = a2;
  v215 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CCC8);
  MEMORY[0x28223BE20](v215);
  v214 = &v154 - v3;
  v213 = *(a1 - 1);
  MEMORY[0x28223BE20](v4);
  v222 = v5;
  v212 = &v154 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24F924848();
  v7 = *(v6 - 8);
  v210 = v6;
  v211 = v7;
  MEMORY[0x28223BE20](v6);
  v209 = &v154 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23EA38);
  v235 = v9;
  v223 = a1;
  v10 = *(a1 + 3);
  v225 = *(a1 + 2);
  v227 = v10;
  v226 = *(a1 + 4);
  type metadata accessor for CardHeroView.ContentView();
  sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23EA40);
  sub_24F924038();
  v11 = MEMORY[0x277CE1180];
  swift_getTupleTypeMetadata3();
  sub_24F927808();
  v217 = MEMORY[0x277CE14C0];
  swift_getWitnessTable();
  sub_24F927108();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23A578);
  v236 = sub_24F924038();
  v237 = v11;
  v238 = v9;
  swift_getTupleTypeMetadata();
  v195 = sub_24F927808();
  WitnessTable = swift_getWitnessTable();
  v12 = sub_24F927018();
  v207 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v221 = &v154 - v13;
  v14 = sub_24F924038();
  v205 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v204 = &v154 - v15;
  v208 = v12;
  v201 = swift_getWitnessTable();
  v261 = v201;
  v262 = MEMORY[0x277CDF918];
  v16 = swift_getWitnessTable();
  v235 = v14;
  v236 = v16;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215A98);
  v18 = sub_24F924038();
  v206 = v14;
  v235 = v14;
  v199 = v16;
  v236 = v16;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v20 = sub_24E8F20E4();
  v21 = sub_24E602068(&qword_27F2551A0, &qword_27F215A98);
  v259 = OpaqueTypeConformance2;
  v260 = v21;
  v22 = swift_getWitnessTable();
  v235 = OpaqueTypeMetadata2;
  v236 = &type metadata for IsDebugFocusOverlayEnabled;
  v237 = v18;
  v238 = OpaqueTypeConformance2;
  v239 = v20;
  v240 = v22;
  v23 = MEMORY[0x277CE0E68];
  v24 = swift_getOpaqueTypeMetadata2();
  v188 = OpaqueTypeMetadata2;
  v189 = v24;
  v235 = OpaqueTypeMetadata2;
  v236 = &type metadata for IsDebugFocusOverlayEnabled;
  v237 = v18;
  v193 = OpaqueTypeConformance2;
  v238 = OpaqueTypeConformance2;
  v191 = v20;
  v239 = v20;
  v240 = v22;
  v25 = swift_getOpaqueTypeConformance2();
  v184 = v23;
  v185 = v25;
  v235 = OpaqueTypeMetadata2;
  v236 = &type metadata for IsDebugFocusOverlayEnabled;
  v237 = v24;
  v238 = OpaqueTypeConformance2;
  v239 = v20;
  v240 = v25;
  v26 = swift_getOpaqueTypeMetadata2();
  v200 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v218 = &v154 - v27;
  v202 = v28;
  v219 = sub_24F924038();
  v198 = *(v219 - 8);
  MEMORY[0x28223BE20](v219);
  v196 = &v154 - v29;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23EA48);
  v220 = sub_24F924038();
  v203 = *(v220 - 1);
  MEMORY[0x28223BE20](v220);
  v197 = &v154 - v30;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v32 = sub_24F924038();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v34 = sub_24F314458();
  v216 = v34;
  v35 = sub_24F3144AC();
  v257 = AssociatedConformanceWitness;
  v258 = v35;
  v36 = swift_getWitnessTable();
  v235 = AssociatedTypeWitness;
  v236 = &type metadata for IsDebugComponentNameOverlayEnabledPredicate;
  v237 = v32;
  v238 = AssociatedConformanceWitness;
  v239 = v34;
  v240 = v36;
  swift_getOpaqueTypeMetadata2();
  sub_24F924038();
  sub_24F924038();
  v192 = sub_24F924E38();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23EA60);
  v37 = sub_24F924038();
  v38 = type metadata accessor for HeroSafeAreaMetrics();
  v39 = sub_24E602068(&qword_27F23EA68, &qword_27F23EA60);
  v255 = AssociatedConformanceWitness;
  v256 = v39;
  v40 = swift_getWitnessTable();
  v41 = sub_24F314F04(&qword_27F21EAC8, type metadata accessor for HeroSafeAreaMetrics);
  v235 = v37;
  v236 = v38;
  v237 = v40;
  v238 = v41;
  v171 = MEMORY[0x277CE0C50];
  v42 = swift_getOpaqueTypeMetadata2();
  v43 = sub_24F924038();
  v235 = v37;
  v236 = v38;
  v237 = v40;
  v238 = v41;
  v44 = swift_getOpaqueTypeConformance2();
  v253 = v44;
  v254 = v35;
  v45 = swift_getWitnessTable();
  v235 = v42;
  v236 = &type metadata for IsDebugComponentNameOverlayEnabledPredicate;
  v237 = v43;
  v238 = v44;
  v239 = v216;
  v240 = v45;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23EA70);
  swift_getTupleTypeMetadata3();
  v46 = sub_24F927808();
  v186 = swift_getWitnessTable();
  v187 = v46;
  sub_24F924E08();
  v47 = sub_24F924038();
  v190 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v216 = &v154 - v48;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F216590);
  v49 = sub_24F924038();
  v192 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v217 = &v154 - v50;
  v51 = type metadata accessor for CardHeroView.HeroLayoutAttributes();
  v235 = v188;
  v236 = &type metadata for IsDebugFocusOverlayEnabled;
  v237 = v189;
  v238 = v193;
  v239 = v191;
  v240 = v185;
  v172 = swift_getOpaqueTypeConformance2();
  v251 = v172;
  v252 = MEMORY[0x277CDF918];
  v52 = swift_getWitnessTable();
  v53 = sub_24E602068(&qword_27F23EA78, &qword_27F23EA48);
  v173 = v52;
  v249 = v52;
  v250 = v53;
  v54 = swift_getWitnessTable();
  v55 = swift_getWitnessTable();
  v174 = v54;
  v247 = v54;
  v248 = v55;
  v191 = v47;
  v56 = swift_getWitnessTable();
  v57 = sub_24E602068(&qword_27F216588, &qword_27F216590);
  v177 = v56;
  v245 = v56;
  v246 = v57;
  v58 = swift_getWitnessTable();
  v59 = swift_getWitnessTable();
  v235 = v49;
  v236 = v51;
  v237 = v58;
  v238 = v59;
  v60 = swift_getOpaqueTypeMetadata2();
  v184 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v180 = &v154 - v61;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F223340);
  v185 = v60;
  v62 = sub_24F924038();
  v179 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v178 = &v154 - v63;
  type metadata accessor for FocusableItemScrollViewOffsetModifier();
  v64 = sub_24F924038();
  v167 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v188 = &v154 - v65;
  v189 = v51;
  v193 = v49;
  v235 = v49;
  v236 = v51;
  v183 = v58;
  v237 = v58;
  v181 = v59;
  v238 = v59;
  v66 = swift_getOpaqueTypeConformance2();
  v67 = sub_24E602068(&qword_27F212A60, &qword_27F223340);
  v176 = v66;
  v243 = v66;
  v244 = v67;
  v182 = v62;
  v68 = swift_getWitnessTable();
  v69 = sub_24F314F04(&qword_27F2201B0, type metadata accessor for FocusableItemScrollViewOffsetModifier);
  v175 = v68;
  v241 = v68;
  v242 = v69;
  v70 = swift_getWitnessTable();
  v71 = sub_24E602068(&unk_27F22DFA0, &qword_27F21CCC8);
  v235 = v64;
  v72 = v215;
  v236 = v215;
  v237 = v70;
  v238 = v71;
  v73 = swift_getOpaqueTypeMetadata2();
  v165 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v164 = &v154 - v74;
  v75 = type metadata accessor for CardSafeArea(255);
  v168 = v64;
  v235 = v64;
  v236 = v72;
  v160 = v70;
  v237 = v70;
  v158 = v71;
  v238 = v71;
  v76 = swift_getOpaqueTypeConformance2();
  v77 = sub_24F314F04(&qword_27F214D10, type metadata accessor for CardSafeArea);
  v166 = v73;
  v235 = v73;
  v163 = v75;
  v236 = v75;
  v159 = v76;
  v237 = v76;
  v157 = v77;
  v238 = v77;
  v78 = swift_getOpaqueTypeMetadata2();
  v161 = *(v78 - 8);
  v162 = v78;
  MEMORY[0x28223BE20](v78);
  v155 = &v154 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v80);
  v156 = &v154 - v81;
  v82 = v223;
  v83 = v224;
  v84 = sub_24F30D464(v223);
  v228 = v225;
  v229 = v227;
  v230 = v226;
  LODWORD(v171) = v84;
  v231 = v84;
  v232 = v83;
  v233 = 0xD000000000000014;
  v170 = 0x800000024FA73A90;
  v234 = 0x800000024FA73A90;
  sub_24F9249A8();
  sub_24F927008();
  v85 = v83 + *(v82 + 88);
  v87 = *v85;
  v86 = *(v85 + 8);
  v89 = *(v85 + 16);
  v88 = *(v85 + 24);
  v90 = *(v85 + 32);
  if (v90 == 1)
  {
    v91 = *v85;
    v92 = v210;
  }

  else
  {

    sub_24F92BDC8();
    v93 = sub_24F9257A8();
    sub_24F921FD8();

    v94 = v209;
    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E669FC4(v87, v86, v89, v88, 0);
    v92 = v210;
    (*(v211 + 8))(v94, v210);
    v91 = *&v235;
  }

  sub_24F925868();
  sub_24EA91914(v91);
  v95 = v204;
  v96 = v208;
  v97 = v221;
  sub_24F926A38();
  (*(v207 + 8))(v97, v96);
  v98 = v206;
  View.platformFocusSection()(v206, v199, v218);
  (*(v205 + 8))(v95, v98);
  if (v90)
  {
    v99 = *&v87;
  }

  else
  {

    sub_24F92BDC8();
    v100 = v92;
    v101 = sub_24F9257A8();
    sub_24F921FD8();

    v102 = v209;
    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E669FC4(v87, v86, v89, v88, 0);
    (*(v211 + 8))(v102, v100);
    v99 = *&v235;
  }

  sub_24F9257F8();
  sub_24EA91914(v99);
  v103 = v196;
  v104 = v202;
  v105 = v218;
  sub_24F926A38();
  (*(v200 + 8))(v105, v104);
  v235 = 0xD000000000000014;
  v236 = v170;
  v106 = v197;
  v107 = v219;
  sub_24F9263C8();
  (*(v198 + 8))(v103, v107);
  v108 = sub_24F927608();
  MEMORY[0x28223BE20](v108);
  v109 = v225;
  *(&v154 - 6) = v225;
  v110 = v109;
  v111 = v226;
  *(&v154 - 5) = v227;
  *(&v154 - 4) = v111;
  v112 = v224;
  *(&v154 - 3) = v224;
  LOBYTE(v153) = v171;
  v113 = v220;
  sub_24F926088();
  (*(v203 + 8))(v106, v113);
  type metadata accessor for CGSize(0);
  v115 = v114;
  v117 = v212;
  v116 = v213;
  v221 = *(v213 + 16);
  v118 = v223;
  (v221)(v212, v112, v223);
  v119 = (*(v116 + 80) + 40) & ~*(v116 + 80);
  v120 = swift_allocObject();
  v121 = v227;
  v120[2] = v110;
  v120[3] = v121;
  v120[4] = v226;
  v220 = *(v116 + 32);
  (v220)(v120 + v119, v117, v118);
  v153 = sub_24F314F04(&qword_27F224B90, type metadata accessor for CGSize);
  v122 = v115;
  v123 = v191;
  v124 = v115;
  v125 = v216;
  sub_24E8D5070(v122, sub_24E67A5CC, 0, sub_24F314544, v120, v191, v124, v177);

  v126 = v123;
  v127 = v224;
  (*(v190 + 8))(v125, v126);
  v128 = sub_24F3103C0(v118, &v235);
  (v221)(v117, v127, v118, v128);
  v129 = swift_allocObject();
  v130 = v227;
  v129[2] = v225;
  v129[3] = v130;
  v129[4] = v226;
  (v220)(v129 + v119, v117, v118);
  swift_checkMetadataState();
  v131 = v180;
  v132 = v193;
  v133 = v217;
  sub_24F926AB8();

  (*(v192 + 8))(v133, v132);
  sub_24F115AD8();
  v134 = v178;
  v135 = v185;
  sub_24F926268();
  (*(v184 + 8))(v131, v135);
  v136 = v188;
  v137 = v182;
  sub_24F6C3D64(v182, v175, 0.0, 0.0, 0.0, 0.0);
  (*(v179 + 8))(v134, v137);
  v138 = *MEMORY[0x277CDF998];
  v139 = sub_24F923E98();
  v140 = v214;
  (*(*(v139 - 8) + 104))(v214, v138, v139);
  sub_24F314F04(&qword_27F22DF90, MEMORY[0x277CDFA28]);
  result = sub_24F92AFF8();
  if (result)
  {
    v142 = v164;
    v143 = v168;
    sub_24F9263F8();
    sub_24E601704(v140, &qword_27F21CCC8);
    (*(v167 + 8))(v136, v143);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220C68);
    sub_24F9233D8();
    v144 = v155;
    v145 = v166;
    v146 = v163;
    v147 = v159;
    v148 = v157;
    sub_24F9261A8();

    (*(v165 + 8))(v142, v145);
    v235 = v145;
    v236 = v146;
    v237 = v147;
    v238 = v148;
    v149 = swift_getOpaqueTypeConformance2();
    v150 = v156;
    v151 = v162;
    sub_24E7896B8(v144, v162, v149);
    v152 = *(v161 + 8);
    v152(v144, v151);
    sub_24E7896B8(v150, v151, v149);
    return (v152)(v150, v151);
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_24F30D464(uint64_t a1)
{
  v3 = sub_24F924848();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v1 + *(a1 + 84);
  v8 = *v7;
  if (*(v7 + 8) == 1)
  {
    v9 = *v7;
  }

  else
  {

    sub_24F92BDC8();
    v10 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E62A5EC(v8, 0);
    (*(v4 + 8))(v6, v3);
    v9 = v12[15];
  }

  return v9 == 0;
}

uint64_t sub_24F30D5C4@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v47 = a5;
  v48 = a6;
  v43 = a3;
  v44 = a4;
  v42 = a2;
  v46 = a1;
  v39 = a8;
  type metadata accessor for CardHeroView.ContentView();
  sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23EA40);
  sub_24F924038();
  v38 = COERCE_DOUBLE(__swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23EA38));
  swift_getTupleTypeMetadata3();
  sub_24F927808();
  WitnessTable = swift_getWitnessTable();
  v9 = sub_24F927108();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v37 - v11;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23A578);
  v41 = sub_24F924038();
  v45 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v37 - v16;
  v49 = v47;
  v50 = v48;
  v18 = v42;
  v51 = a7;
  v52 = v42;
  v53 = v46;
  v54 = v43;
  v55 = v44;
  sub_24F924C88();
  sub_24F9270F8();
  v19 = swift_getWitnessTable();
  sub_24F926378();
  (*(v10 + 8))(v12, v9);
  v20 = sub_24E602068(&qword_27F23A570, &qword_27F23A578);
  v72 = v19;
  v73 = v20;
  v21 = *&v41;
  v43 = swift_getWitnessTable();
  v44 = v17;
  v22 = v14;
  v23 = v21;
  sub_24E7896B8(v22, *&v21, v43);
  v24 = *(v45 + 8);
  v24(v22, *&v21);
  WitnessTable = a7;
  v25 = type metadata accessor for CardHeroView();
  v26 = sub_24F30D464(v25);
  v27 = 0.0;
  if (!v26)
  {
    v28 = (v18 + *(v25 + 68));
    v29 = v28[1].n128_u8[0];
    v30 = v28[1].n128_u64[1];
    v69 = *v28;
    LOBYTE(v70) = v29;
    v71 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23EA88);
    v31 = sub_24F926F38();
    v32 = MEMORY[0x28223BE20](v31);
    v33 = v48;
    *(&v37 - 4) = v47;
    *(&v37 - 3) = v33;
    *(&v37 - 2) = WitnessTable;
    *(&v37 - 1) = v18;
    if ((v34 & 1) == 0)
    {
      v69 = v32;
      sub_24F314B00(v69.n128_f64, v60);
      v27 = v60[0] * 0.5;
    }
  }

  v66 = 0;
  v67 = 0;
  v68 = (v46 & 1) == 0;
  v69.n128_u64[0] = &v66;
  v35 = v44;
  (*(v45 + 16))(v22, v44, COERCE_DOUBLE(*&v23));
  v64 = 0;
  v65 = 0;
  v69.n128_u64[1] = v22;
  v70 = &v64;
  v61 = v27;
  v62 = 0;
  v63 = v26;
  v71 = &v61;
  v60[0] = v38;
  v60[1] = v23;
  *&v60[2] = MEMORY[0x277CE1180];
  v60[3] = v38;
  v56 = sub_24F314B24();
  v57 = v43;
  v58 = MEMORY[0x277CE1170];
  v59 = v56;
  sub_24F57BA64(&v69, 4uLL, v60);
  v24(v35, *&v23);
  return (v24)(v22, *&v23);
}

uint64_t sub_24F30DB00@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v93 = a4;
  v87 = a3;
  v79 = a2;
  v95 = a1;
  v94 = a8;
  v11 = type metadata accessor for CardHeroView();
  v90 = *(v11 - 8);
  v86 = *(v90 + 64);
  MEMORY[0x28223BE20](v11);
  v88 = &v73 - v12;
  v81 = sub_24F923E98();
  WitnessTable = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v78 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a6 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a5 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = &v73 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = a7;
  v22 = type metadata accessor for CardHeroView.ContentView();
  v76 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v24 = &v73 - v23;
  v25 = sub_24F924038();
  v83 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v96 = &v73 - v26;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23EA40);
  v84 = v25;
  v92 = sub_24F924038();
  v85 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v91 = &v73 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v82 = &v73 - v29;
  v31 = MEMORY[0x28223BE20](v30);
  v89 = &v73 - v32;
  v33 = *(v18 + 16);
  v34 = v95;
  v35 = v95 + *(v11 + 60);
  v74 = v21;
  v75 = a5;
  v33(v21, v35, a5, v31);
  v36 = v11;
  v37 = v17;
  v38 = a6;
  (*(v14 + 16))(v17, v34 + *(v11 + 56), a6);
  if (v79)
  {
    v39 = sub_24F924C88();
  }

  else
  {
    v39 = sub_24F924C98();
  }

  v40 = v39;
  v41 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220C68);
  sub_24F9233D8();
  v42 = v106[0];
  v43 = v34 + *(v36 + 64);
  v44 = v34;
  v45 = v78;
  (*(WitnessTable + 16))(v78, v43, v81);
  v46 = v37;
  v47 = v42;
  v48 = v75;
  v49 = v38;
  v50 = v77;
  sub_24F30E490(v74, v46, v40, v47, v45, v75, v38, v24);
  sub_24F30E5C4(v41);
  WitnessTable = swift_getWitnessTable();
  sub_24F926A38();
  (*(v76 + 8))(v24, v22);
  type metadata accessor for CGRect(0);
  v81 = v51;
  v52 = swift_allocObject();
  v53 = v41;
  v54 = v50;
  v55 = v93;
  *(v52 + 16) = v87;
  *(v52 + 24) = v55;
  v56 = v90;
  v57 = *(v90 + 16);
  v58 = v88;
  v73 = v53;
  v57(v88, v44, v53);
  v59 = (*(v56 + 80) + 40) & ~*(v56 + 80);
  v60 = swift_allocObject();
  *(v60 + 2) = v48;
  *(v60 + 3) = v49;
  *(v60 + 4) = v54;
  (*(v56 + 32))(&v60[v59], v58, v53);
  v106[5] = WitnessTable;
  v106[6] = MEMORY[0x277CDF918];

  v61 = v84;
  v62 = swift_getWitnessTable();
  sub_24F314F04(&qword_27F23EAE0, type metadata accessor for CGRect);
  v63 = v82;
  v64 = v96;
  sub_24E8D5070(v81, sub_24F314BD8, v52, sub_24F314E64, v60, v61, v81, v62);

  (*(v83 + 8))(v64, v61);
  v65 = sub_24E602068(qword_27F23EAE8, &qword_27F23EA40);
  v106[3] = v62;
  v106[4] = v65;
  v66 = v92;
  v67 = swift_getWitnessTable();
  v68 = v89;
  sub_24E7896B8(v63, v66, v67);
  v69 = v85;
  v70 = *(v85 + 8);
  v70(v63, v66);
  LOBYTE(v64) = sub_24F30E948(v73);
  v104 = 0;
  v105 = 0;
  v106[0] = &v104;
  v71 = v91;
  (*(v69 + 16))(v91, v68, v66);
  v101 = 0;
  v102 = 0;
  v103 = (v64 & 1) == 0;
  v106[1] = v71;
  v106[2] = &v101;
  v100[0] = MEMORY[0x277CE1180];
  v100[1] = v66;
  v100[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23EA38);
  v97 = MEMORY[0x277CE1170];
  v98 = v67;
  v99 = sub_24F314B24();
  sub_24F57BA64(v106, 3uLL, v100);
  v70(v68, v66);
  return (v70)(v71, v66);
}

uint64_t sub_24F30E490@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  (*(*(a6 - 8) + 32))(a8, a1, a6);
  v14 = type metadata accessor for CardHeroView.ContentView();
  (*(*(a7 - 8) + 32))(a8 + v14[11], a2, a7);
  *(a8 + v14[12]) = a3;
  *(a8 + v14[13]) = a4;
  v15 = v14[14];
  v16 = sub_24F923E98();
  v17 = *(*(v16 - 8) + 32);

  return v17(a8 + v15, a5, v16);
}

double sub_24F30E5C4(uint64_t a1)
{
  v3 = sub_24F924848();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = 0.0;
  if (!sub_24F30E948(a1))
  {
    if (sub_24F30D464(a1))
    {
      return *(v1 + 24);
    }

    else
    {
      v8 = v1 + *(a1 + 84);
      v9 = *v8;
      if (*(v8 + 8) != 1)
      {

        sub_24F92BDC8();
        v10 = sub_24F9257A8();
        sub_24F921FD8();

        sub_24F924838();
        swift_getAtKeyPath();
        sub_24E62A5EC(v9, 0);
        (*(v4 + 8))(v6, v3);
      }
    }
  }

  return v7;
}

uint64_t sub_24F30E778@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v6 = sub_24F924EC8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[0] = a1;
  v19[1] = a2;
  sub_24F925248();
  sub_24F9239B8();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  result = (*(v7 + 8))(v9, v6);
  *a3 = v11;
  a3[1] = v13;
  a3[2] = v15;
  a3[3] = v17;
  return result;
}

uint64_t sub_24F30E8B4()
{
  type metadata accessor for CardHeroView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23EA98);
  return sub_24F926F48();
}

BOOL sub_24F30E948(uint64_t a1)
{
  v3 = sub_24F924848();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v1 + *(a1 + 84);
  v8 = *v7;
  if (*(v7 + 8) == 1)
  {
    v9 = *v7;
  }

  else
  {

    sub_24F92BDC8();
    v10 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E62A5EC(v8, 0);
    (*(v4 + 8))(v6, v3);
    v9 = v12[15];
  }

  return v9 == 2;
}

double sub_24F30EAA8@<D0>(double *a1@<X0>, uint64_t a2@<X1>, double *a3@<X8>)
{
  v24 = a3;
  v6 = sub_24F924848();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = a2 + *(type metadata accessor for CardHeroView() + 88);
  v12 = *(v11 + 8);
  v13 = *(v11 + 24);
  if (*(v11 + 32) == 1)
  {
    v14 = *(v11 + 8);
    v15 = *(v11 + 24);
  }

  else
  {
    v16 = *v11;
    v23[0] = *(v11 + 16);
    v17 = v23[0];

    sub_24F92BDC8();
    v18 = sub_24F9257A8();
    v23[1] = v3;
    v19 = v18;
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E669FC4(v16, v12, v17, v13, 0);
    v20 = *(v7 + 8);
    v20(v9, v6);
    v14 = *&v23[3];

    sub_24F92BDC8();
    v21 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E669FC4(v16, v12, v23[0], v13, 0);
    v20(v9, v6);
    v15 = *&v23[5];
  }

  result = v10 - v14 - v15;
  *v24 = result;
  return result;
}

uint64_t sub_24F30ED14@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v146 = a3;
  v134 = a2;
  v156 = a1;
  v138 = a6;
  v8 = sub_24F924848();
  v108 = *(v8 - 8);
  v109 = v8;
  MEMORY[0x28223BE20](v8);
  v107 = &v107 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = a4;
  v144 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23EA60);
  v140 = AssociatedTypeWitness;
  v11 = sub_24F924038();
  v133 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v130 = &v107 - v12;
  v13 = type metadata accessor for HeroSafeAreaMetrics();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v141 = AssociatedConformanceWitness;
  v15 = sub_24E602068(&qword_27F23EA68, &qword_27F23EA60);
  v193 = AssociatedConformanceWitness;
  v194 = v15;
  v16 = MEMORY[0x277CDFAD8];
  WitnessTable = swift_getWitnessTable();
  v18 = sub_24F314F04(&qword_27F21EAC8, type metadata accessor for HeroSafeAreaMetrics);
  v176 = v11;
  v124 = v11;
  v125 = WitnessTable;
  v126 = v13;
  v177 = v13;
  v178 = WitnessTable;
  v179 = v18;
  v19 = v18;
  v139 = v18;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v131 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v128 = v21;
  v129 = &v107 - v22;
  v23 = v21;
  v24 = sub_24F924038();
  v176 = v11;
  v177 = v13;
  v178 = WitnessTable;
  v179 = v19;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v26 = sub_24F314458();
  v27 = sub_24F3144AC();
  v191 = OpaqueTypeConformance2;
  v192 = v27;
  v127 = OpaqueTypeConformance2;
  v136 = v16;
  v122 = v24;
  v123 = swift_getWitnessTable();
  v176 = v23;
  v177 = &type metadata for IsDebugComponentNameOverlayEnabledPredicate;
  v178 = v24;
  v179 = OpaqueTypeConformance2;
  v180 = v26;
  v142 = v26;
  v181 = v123;
  v147 = MEMORY[0x277CE0E68];
  v154 = swift_getOpaqueTypeMetadata2();
  v152 = *(v154 - 8);
  MEMORY[0x28223BE20](v154);
  v137 = &v107 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v121 = &v107 - v30;
  MEMORY[0x28223BE20](v31);
  v153 = &v107 - v32;
  v155 = *(v140 - 8);
  MEMORY[0x28223BE20](v33);
  v120 = &v107 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v37 = &v107 - v36;
  v39 = v38;
  v40 = sub_24F924038();
  v41 = v141;
  v189 = v141;
  v190 = v27;
  v42 = swift_getWitnessTable();
  v176 = v39;
  v177 = &type metadata for IsDebugComponentNameOverlayEnabledPredicate;
  v178 = v40;
  v179 = v41;
  v180 = v26;
  v181 = v42;
  v43 = v42;
  v44 = swift_getOpaqueTypeMetadata2();
  v45 = *(v44 - 8);
  v112 = v44;
  v113 = v45;
  MEMORY[0x28223BE20](v44);
  v47 = &v107 - v46;
  v111 = sub_24F924038();
  v135 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v110 = &v107 - v48;
  v132 = sub_24F924038();
  v151 = sub_24F924E38();
  v149 = *(v151 - 8);
  MEMORY[0x28223BE20](v151);
  v148 = &v107 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v50);
  v150 = &v107 - v51;
  v52 = v146;
  v54 = v143;
  v53 = v144;
  v145 = type metadata accessor for CardHeroView();
  v55 = v145[14];
  v56 = v145[16];
  v115 = v145[15];
  v116 = v56;
  v117 = *(v53 + 72);
  v118 = v55;
  v119 = v53 + 72;
  v57 = v37;
  v117(12, v156 + v115, 5, v156 + v56, v54, v53);
  v161 = v52;
  v162 = v54;
  v163 = v53;
  v58 = swift_checkMetadataState();
  v59 = v43;
  v60 = v47;
  v61 = v140;
  v62 = v141;
  v63 = v142;
  sub_24F926B08();
  v64 = v155[1];
  ++v155;
  v114 = v64;
  (v64)(v57, v61);
  v176 = v61;
  v177 = &type metadata for IsDebugComponentNameOverlayEnabledPredicate;
  v178 = v58;
  v179 = v62;
  v180 = v63;
  v181 = v59;
  v65 = swift_getOpaqueTypeConformance2();
  v66 = v110;
  v67 = v112;
  sub_24F377F2C(1, v112, v65, v110);
  (*(v113 + 8))(v60, v67);
  v68 = sub_24F3147F4();
  v187 = v65;
  v188 = v68;
  v69 = v111;
  v70 = swift_getWitnessTable();
  v113 = sub_24F925048();
  v179 = v113;
  v180 = MEMORY[0x277CE0420];
  __swift_allocate_boxed_opaque_existential_1(&v176);
  sub_24F925258();
  v71 = v148;
  sub_24EE1E90C(1, &v176, v69, v70, v148);
  __swift_destroy_boxed_opaque_existential_1(&v176);
  (*(v135 + 8))(v66, v69);
  v72 = sub_24E63E080();
  v185 = v70;
  v186 = v72;
  v183 = swift_getWitnessTable();
  v184 = v70;
  v73 = v151;
  v132 = swift_getWitnessTable();
  sub_24E7896B8(v71, v73, v132);
  v135 = *(v149 + 8);
  v136 = v149 + 8;
  (v135)(v71, v73);
  v74 = v156;
  v75 = v120;
  v76 = v143;
  v77 = v144;
  v117(2, v156 + v115, 5, v156 + v116, v143, v144);
  swift_getKeyPath();
  LOBYTE(v176) = v134 ^ 1;
  v78 = v130;
  sub_24F9261B8();

  (v114)(v75, v61);
  v79 = v145[19];
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23EA90);
  v141 = v79;
  sub_24F9233D8();
  v80 = v129;
  v81 = v124;
  sub_24F9261A8();

  (*(v133 + 8))(v78, v81);
  v155 = &v107;
  v157 = v146;
  v158 = v76;
  v159 = v77;
  v160 = v74;
  v82 = swift_checkMetadataState();
  v83 = v123;
  v84 = v121;
  v85 = v127;
  v86 = v128;
  v87 = v142;
  sub_24F926B08();
  (*(v131 + 8))(v80, v86);
  v176 = v86;
  v177 = &type metadata for IsDebugComponentNameOverlayEnabledPredicate;
  v178 = v82;
  v179 = v85;
  v180 = v87;
  v181 = v83;
  v88 = swift_getOpaqueTypeConformance2();
  v89 = v154;
  v146 = v88;
  sub_24E7896B8(v84, v154, v88);
  v90 = *(v152 + 8);
  v155 = (v152 + 8);
  v147 = v90;
  v90(v84, v89);
  v91 = v156 + v145[21];
  v92 = *v91;
  if (*(v91 + 8) != 1)
  {

    sub_24F92BDC8();
    v93 = sub_24F9257A8();
    sub_24F921FD8();

    v94 = v107;
    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E62A5EC(v92, 0);
    (*(v108 + 8))(v94, v109);
    if (v176 > 1u)
    {
      goto LABEL_3;
    }

LABEL_5:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217860);
    v95 = swift_allocObject();
    *(v95 + 16) = xmmword_24F93A400;
    sub_24F926C88();
    v96 = sub_24F926D08();

    *(v95 + 32) = v96;
    *(v95 + 40) = sub_24F926C98();
    sub_24F927878();
    sub_24F927898();
    MEMORY[0x25304CD70](v95);
    sub_24F923BD8();
    sub_24F9233D8();
    v97 = v176;
    swift_getKeyPath();
    v176 = v97;
    sub_24F91FD88();

    sub_24F927618();
    sub_24F9238C8();
    v164[3] = v113;
    v164[4] = MEMORY[0x277CE0420];
    __swift_allocate_boxed_opaque_existential_1(v164);
    sub_24F925258();
    sub_24E615E00(v164, &v174);
    v172[2] = v167;
    v172[3] = v168;
    v172[4] = v169;
    v173 = v170;
    v172[0] = v165;
    v172[1] = v166;
    sub_24E60169C(v172, &v176, &qword_27F23EAC0);
    v182 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23EAC0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2248A0);
    sub_24F314950();
    sub_24E9DEB30();
    sub_24F924E28();
    sub_24E601704(v172, &qword_27F23EAC0);
    __swift_destroy_boxed_opaque_existential_1(v164);
    sub_24E60169C(v171, v172, &qword_27F23EAA8);
    v175 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23EAA8);
    sub_24F3148C4();
    sub_24F924E28();
    sub_24E601704(v171, &qword_27F23EAA8);
    goto LABEL_6;
  }

  if (*v91 <= 1u)
  {
    goto LABEL_5;
  }

LABEL_3:
  v175 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23EAA8);
  sub_24F3148C4();
  sub_24F924E28();
LABEL_6:
  v98 = v148;
  v100 = v150;
  v99 = v151;
  (*(v149 + 16))(v148, v150, v151);
  v171[0] = v98;
  v101 = v153;
  v102 = v137;
  v103 = v154;
  (*(v152 + 16))(v137, v153, v154);
  v171[1] = v102;
  sub_24E60169C(&v176, v172, &qword_27F23EA70);
  v171[2] = v172;
  v164[0] = v99;
  v164[1] = v103;
  v164[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23EA70);
  v171[17] = v132;
  v171[18] = v146;
  v171[19] = sub_24F3149DC();
  sub_24F57BA64(v171, 3uLL, v164);
  sub_24E601704(&v176, &qword_27F23EA70);
  v104 = v147;
  v147(v101, v103);
  v105 = v135;
  (v135)(v100, v99);
  sub_24E601704(v172, &qword_27F23EA70);
  v104(v102, v103);
  return v105(v98, v99);
}

uint64_t sub_24F30FDDC(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, double a9)
{
  *&v19 = sub_24F4E206C(a1);
  *(&v19 + 1) = v17;
  *&v20 = a2;
  *(&v20 + 1) = a3;
  *&v21 = a6;
  *(&v21 + 1) = a7;
  *&v22 = a8;
  *(&v22 + 1) = a9;
  MEMORY[0x25304C420](&v19, a4, &type metadata for DebugCardElementOverlayModifier, a5);
  v23[0] = v19;
  v23[1] = v20;
  v23[2] = v21;
  v23[3] = v22;
  return sub_24F314A68(v23);
}

uint64_t sub_24F30FE8C@<X0>(_BYTE *a1@<X8>)
{
  sub_24F314A98();
  result = sub_24F924868();
  *a1 = v3;
  return result;
}

uint64_t sub_24F30FF4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28 = a2;
  v30 = a1;
  v31 = a3;
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23EA60);
  v3 = sub_24F924038();
  v26 = type metadata accessor for HeroSafeAreaMetrics();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v39 = sub_24E602068(&qword_27F23EA68, &qword_27F23EA60);
  v29 = MEMORY[0x277CDFAD8];
  WitnessTable = swift_getWitnessTable();
  v4 = sub_24F314F04(&qword_27F21EAC8, type metadata accessor for HeroSafeAreaMetrics);
  v34 = v3;
  v35 = v26;
  v36 = WitnessTable;
  v37 = v4;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v5 = sub_24F924038();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &WitnessTable - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &WitnessTable - v10;
  type metadata accessor for CardHeroView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220C68);
  sub_24F9233D8();
  v12 = v34;
  swift_getKeyPath();
  v34 = v12;
  sub_24F314F04(&qword_27F214D10, type metadata accessor for CardSafeArea);
  sub_24F91FD88();

  v13 = v12[2];
  v14 = v12[3];
  v15 = v12[4];
  v16 = v12[5];

  v17 = sub_24F9275B8();
  v19 = v18;
  v34 = v3;
  v35 = v26;
  v36 = WitnessTable;
  v37 = v4;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_24F30FDDC(2, v17, v19, OpaqueTypeMetadata2, OpaqueTypeConformance2, v13, v14, v15, v16);
  v21 = sub_24F3144AC();
  v32 = OpaqueTypeConformance2;
  v33 = v21;
  v22 = swift_getWitnessTable();
  sub_24E7896B8(v8, v5, v22);
  v23 = *(v6 + 8);
  v23(v8, v5);
  sub_24E7896B8(v11, v5, v22);
  return (v23)(v11, v5);
}

uint64_t sub_24F31032C()
{
  type metadata accessor for CardHeroView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23EA88);
  return sub_24F926F48();
}

__n128 sub_24F3103C0@<Q0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_24F924848();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (v2 + a1[17]);
  v10 = *(v9 + 16);
  v11 = *(v9 + 3);
  v44 = *v9;
  v45.n128_u8[0] = v10;
  v45.n128_u64[1] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23EA88);
  sub_24F926F38();
  v38 = *(&v41 + 1);
  v12 = v41;
  v37 = v42;
  v13 = (v2 + a1[18]);
  v14 = *(v13 + 32);
  v15 = *(v13 + 5);
  v16 = v13[1];
  v44 = *v13;
  v45 = v16;
  v46 = v14;
  v47 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23EA98);
  sub_24F926F38();
  v35 = v42;
  v36 = v41;
  v34 = v43;
  v17 = v2 + a1[21];
  v18 = *v17;
  if (*(v17 + 8) != 1)
  {

    sub_24F92BDC8();
    v19 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E62A5EC(v18, 0);
    (*(v6 + 8))(v8, v5);
    LOBYTE(v18) = v44;
  }

  v20 = (v2 + a1[22]);
  v22 = *v20;
  v21 = v20[1];
  LODWORD(v20) = *(v20 + 32);
  v39 = v22;
  v40 = v21;
  if (v20 != 1)
  {
    v23 = v22;

    sub_24F92BDC8();
    v24 = sub_24F9257A8();
    v33 = v12;
    v25 = v5;
    v26 = v24;
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E669FC4(v23, *(&v39 + 1), v40.n128_i64[0], v40.n128_i64[1], 0);
    v27 = v25;
    v12 = v33;
    (*(v6 + 8))(v8, v27);
    v39 = v44;
    v40 = v45;
  }

  v28 = sub_24F30D464(a1);
  v29 = v37;
  LOBYTE(v44) = v37;
  LOBYTE(v41) = v34 & 1;
  v30 = v34 & 1;
  v31 = v38;
  *a2 = v12;
  *(a2 + 8) = v31;
  *(a2 + 16) = v29;
  *(a2 + 17) = v44;
  *(a2 + 20) = *(&v44 + 3);
  *(a2 + 40) = v35;
  *(a2 + 24) = v36;
  *(a2 + 56) = v30;
  *(a2 + 57) = v18;
  *(a2 + 58) = v41;
  *(a2 + 62) = WORD2(v41);
  result = v40;
  *(a2 + 64) = v39;
  *(a2 + 80) = result;
  *(a2 + 96) = v28;
  return result;
}

uint64_t sub_24F310728(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 56) & 1) == 0)
  {
    v5 = *(a1 + 24);
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    if (*(a1 + 96))
    {
      v9 = *(a1 + 48);
    }

    else
    {
      v9 = 0.0;
    }

    if (*(a1 + 96))
    {
      v10 = 0.0;
    }

    else
    {
      v10 = *(a1 + 40);
    }

    v11 = *(a1 + 64) + 0.0;
    v12 = v10 + *(a1 + 72);
    v13 = v9 + *(a1 + 80);
    v14 = *(a1 + 88) + 0.0;
    v35[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23EA90);
    sub_24F9233D8();
    v15 = v40;
    if (sub_24F923308())
    {
      *(v40 + 16) = v11;
      v15[3] = v12;
      v15[4] = v13;
      v15[5] = v14;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      v35[0] = v35;
      MEMORY[0x28223BE20](KeyPath);
      v34[2] = v15;
      *&v34[3] = v11;
      *&v34[4] = v12;
      *&v34[5] = v13;
      *&v34[6] = v14;
      *&v40 = v15;
      sub_24F314F04(&qword_27F21EAC8, type metadata accessor for HeroSafeAreaMetrics);
      sub_24F91FD78();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220C68);
    sub_24F9233D8();
    v17 = v40;
    if (sub_24F923308())
    {
      v17[2] = v11;
      v17[3] = v12;
      v17[4] = v13;
      v17[5] = v14;
    }

    else
    {
      v18 = swift_getKeyPath();
      MEMORY[0x28223BE20](v18);
      v34[-6] = v17;
      *&v34[-5] = v11;
      *&v34[-4] = v12;
      *&v34[-3] = v13;
      *&v34[-2] = v14;
      *&v40 = v17;
      sub_24F314F04(&qword_27F214D10, type metadata accessor for CardSafeArea);
      sub_24F91FD78();
    }

    sub_24F9233D8();
    v19 = v40;
    *&v40 = v5;
    *(&v40 + 1) = v6;
    *&v41 = v7;
    *(&v41 + 1) = v8;
    v42 = 0;
    if ((*(v19 + 112) & 1) != 0 || (v43.origin.x = v5, v43.origin.y = v6, v43.size.width = v7, v43.size.height = v8, !CGRectEqualToRect(*(v19 + 80), v43)))
    {
      v21 = swift_getKeyPath();
      MEMORY[0x28223BE20](v21);
      v34[-2] = v19;
      v34[-1] = &v40;
      *&v37 = v19;
      sub_24F314F04(&qword_27F21EAC8, type metadata accessor for HeroSafeAreaMetrics);
      sub_24F91FD78();
    }

    else
    {
      v20 = v41;
      *(v19 + 80) = v40;
      *(v19 + 96) = v20;
      *(v19 + 112) = v42;
    }
  }

  v22 = (v2 + *(a2 + 68));
  v23 = *(v22 + 16);
  v24 = *(v22 + 3);
  v37 = *v22;
  v38 = v23;
  v39 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23EA88);
  sub_24F926F38();
  if ((v36 & 1) == 0)
  {
    v25 = v35[3];
    v26 = v35[4];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23EA90);
    sub_24F9233D8();
    sub_24F30B3DC(v25, v26, 0);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23EA90);
  sub_24F9233D8();
  v27 = v37;
  v29 = *(a1 + 64);
  v28 = *(a1 + 72);
  v31 = *(a1 + 80);
  v30 = *(a1 + 88);
  if (sub_24F923308())
  {
    v27[6] = v29;
    v27[7] = v28;
    v27[8] = v31;
    v27[9] = v30;
  }

  else
  {
    v33 = swift_getKeyPath();
    MEMORY[0x28223BE20](v33);
    v34[-6] = v27;
    v34[-5] = v29;
    v34[-4] = v28;
    v34[-3] = v31;
    v34[-2] = v30;
    *&v37 = v27;
    sub_24F314F04(&qword_27F21EAC8, type metadata accessor for HeroSafeAreaMetrics);
    sub_24F91FD78();
  }
}

uint64_t sub_24F310D30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v83 = a2;
  v82 = sub_24F929888();
  v81 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v80 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = a1;
  v4 = *(a1 + 24);
  v65 = *(a1 + 32);
  v64 = v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v78 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v75 = &v51 - v6;
  v7 = sub_24F924038();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = sub_24F314458();
  v10 = sub_24F3144AC();
  v101 = AssociatedConformanceWitness;
  v102 = v10;
  v79 = MEMORY[0x277CDFAD8];
  v66 = v7;
  WitnessTable = swift_getWitnessTable();
  *&v97 = AssociatedTypeWitness;
  *(&v97 + 1) = &type metadata for IsDebugComponentNameOverlayEnabledPredicate;
  v68 = AssociatedTypeWitness;
  *&v98 = v7;
  *(&v98 + 1) = AssociatedConformanceWitness;
  v70 = AssociatedConformanceWitness;
  v99 = v9;
  v100 = WitnessTable;
  v71 = v9;
  v12 = WitnessTable;
  v67 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v77 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v69 = &v51 - v14;
  *&v97 = AssociatedTypeWitness;
  *(&v97 + 1) = &type metadata for IsDebugComponentNameOverlayEnabledPredicate;
  *&v98 = v7;
  *(&v98 + 1) = AssociatedConformanceWitness;
  v99 = v9;
  v100 = v12;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v97 = OpaqueTypeMetadata2;
  *(&v97 + 1) = OpaqueTypeConformance2;
  v54 = OpaqueTypeMetadata2;
  v16 = OpaqueTypeConformance2;
  v55 = OpaqueTypeConformance2;
  v17 = swift_getOpaqueTypeMetadata2();
  v76 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v73 = &v51 - v18;
  swift_getTupleTypeMetadata3();
  sub_24F927808();
  swift_getWitnessTable();
  sub_24F927108();
  sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2146E8);
  sub_24F924038();
  v57 = v17;
  sub_24F924038();
  swift_getTupleTypeMetadata2();
  sub_24F927808();
  swift_getWitnessTable();
  v19 = sub_24F927108();
  v52 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = &v51 - v20;
  v56 = sub_24F924038();
  v63 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v84 = &v51 - v22;
  *&v97 = OpaqueTypeMetadata2;
  *(&v97 + 1) = v16;
  v58 = swift_getOpaqueTypeConformance2();
  v60 = sub_24F924E08();
  v61 = sub_24F924038();
  v62 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v53 = &v51 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v59 = &v51 - v25;
  v26 = v72;
  v27 = v74;
  v29 = v64;
  v88 = *(v72 + 16);
  v28 = v88;
  v89 = v64;
  v30 = v65;
  v90 = v65;
  v91 = v74;
  sub_24F9270F8();
  sub_24F927618();
  v50 = swift_getWitnessTable();
  sub_24F926948();
  (*(v52 + 8))(v21, v19);
  v31 = v75;
  (*(v30 + 72))(11, v27, 5, v27 + *(v26 + 56), v29, v30);
  v85 = v28;
  v86 = v29;
  v87 = v30;
  swift_checkMetadataState();
  v32 = v69;
  v33 = v68;
  sub_24F926B08();
  (*(v78 + 8))(v31, v33);
  v97 = 0u;
  v98 = 0u;
  memset(v96, 0, sizeof(v96));
  v34 = v80;
  sub_24F929828();
  sub_24E601704(v96, &qword_27F2129B0);
  sub_24E601704(&v97, &qword_27F2129B0);
  v35 = v73;
  v36 = v54;
  sub_24F925EE8();
  (*(v81 + 8))(v34, v82);
  (*(v77 + 8))(v32, v36);
  sub_24F927618();
  v94 = v50;
  v95 = MEMORY[0x277CDFC60];
  v37 = v56;
  v38 = swift_getWitnessTable();
  v39 = v53;
  v40 = v35;
  v41 = v37;
  v42 = v57;
  v43 = v84;
  sub_24F9260A8();
  (*(v76 + 8))(v40, v42);
  (*(v63 + 8))(v43, v41);
  v44 = swift_getWitnessTable();
  v92 = v38;
  v93 = v44;
  v45 = v61;
  v46 = swift_getWitnessTable();
  v47 = v59;
  sub_24E7896B8(v39, v45, v46);
  v48 = *(v62 + 8);
  v48(v39, v45);
  sub_24E7896B8(v47, v45, v46);
  return (v48)(v47, v45);
}