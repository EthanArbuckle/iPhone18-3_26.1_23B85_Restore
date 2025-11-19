id OAuthLoginManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id OAuthLoginManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OAuthLoginManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_20CFD28C8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81CDF0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v14 - v7;
  v9 = *(a1 + 32);
  if (a2)
  {
    sub_20D563698();
    v10 = sub_20D5636B8();
    (*(*(v10 - 8) + 56))(v8, 0, 1, v10);
  }

  else
  {
    v11 = sub_20D5636B8();
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  }

  v12 = a3;
  v9(v8, a3);

  return sub_20CEF928C(v8, &unk_27C81CDF0);
}

id sub_20CFD2A1C(uint64_t a1, uint64_t a2)
{
  v4 = objc_allocWithZone(type metadata accessor for OAuthLoginManager());

  return sub_20CFD2A78(a1, a2, v4);
}

id sub_20CFD2A78(uint64_t a1, uint64_t a2, char *a3)
{
  v6 = sub_20D563818();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC6HomeUI17OAuthLoginManager_authURL;
  v11 = sub_20D5636B8();
  (*(*(v11 - 8) + 56))(&a3[v10], 1, 1, v11);
  *&a3[OBJC_IVAR____TtC6HomeUI17OAuthLoginManager_authSession] = 0;
  swift_beginAccess();
  sub_20CF26E88(a1, &a3[v10]);
  swift_endAccess();
  *&a3[OBJC_IVAR____TtC6HomeUI17OAuthLoginManager_presentingContext] = a2;
  sub_20D563808();
  v12 = sub_20D5637B8();
  v14 = v13;
  (*(v7 + 8))(v9, v6);
  v15 = &a3[OBJC_IVAR____TtC6HomeUI17OAuthLoginManager_uuid];
  *v15 = v12;
  v15[1] = v14;
  v16 = type metadata accessor for OAuthLoginManager();
  v20.receiver = a3;
  v20.super_class = v16;
  v17 = objc_msgSendSuper2(&v20, sel_init);
  sub_20CEF928C(a1, &unk_27C81CDF0);
  return v17;
}

void sub_20CFD2C3C(uint64_t a1, void (*a2)(void, void, void *), uint64_t a3, char *a4)
{
  v33 = a2;
  v34 = a3;
  v6 = sub_20D565988();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81CDF0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v31 - v11;
  v13 = sub_20D5636B8();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v31 - v18;
  if (sub_20CFD1960())
  {
    v32 = a1;
    v20 = OBJC_IVAR____TtC6HomeUI17OAuthLoginManager_authURL;
    swift_beginAccess();
    sub_20CEF9178(&a4[v20], v12, &unk_27C81CDF0);
    if ((*(v14 + 48))(v12, 1, v13) != 1)
    {
      (*(v14 + 32))(v19, v12, v13);
      type metadata accessor for OAuthLoginManager();
      sub_20CFD2008(v19, *&a4[OBJC_IVAR____TtC6HomeUI17OAuthLoginManager_uuid], *&a4[OBJC_IVAR____TtC6HomeUI17OAuthLoginManager_uuid + 8], v17);
      v28 = swift_allocObject();
      v28[2] = v33;
      v28[3] = v34;
      v28[4] = a4;

      v29 = a4;
      sub_20CFD355C(v17, v32, sub_20CFD527C, v28, v29);

      v30 = *(v14 + 8);
      v30(v17, v13);
      v30(v19, v13);
      return;
    }

    sub_20CEF928C(v12, &unk_27C81CDF0);
  }

  if (qword_27C81A2D8 != -1)
  {
    swift_once();
  }

  v21 = qword_27C838280;
  sub_20D565998();
  v22 = sub_20D565968();
  v23 = sub_20D567EA8();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v35 = v25;
    *v24 = 136315138;
    *(v24 + 4) = sub_20CEE913C(0xD000000000000034, 0x800000020D5D3090, &v35);
    _os_log_impl(&dword_20CEB6000, v22, v23, "%s Invalid URL! Finishing onboarding with error.", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v25);
    MEMORY[0x20F31FC70](v25, -1, -1);
    MEMORY[0x20F31FC70](v24, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  sub_20CEF5CA0();
  v26 = swift_allocError();
  *v27 = 2;
  v33(0, 0, v26);
}

void sub_20CFD30AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v50 = a6;
  v51 = a4;
  v49 = a3;
  v9 = sub_20D5636B8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_20D565988();
  v46 = *(v13 - 8);
  v47 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = objc_opt_self();
  v17 = sub_20D5677F8();
  v45 = [v16 callbackWithCustomScheme_];

  if (qword_27C81A2D8 != -1)
  {
    swift_once();
  }

  v18 = qword_27C838280;
  sub_20D565998();
  v19 = *(v10 + 16);
  v48 = a1;
  v19(v12, a1, v9);
  v20 = sub_20D565968();
  v21 = sub_20D567EC8();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v43 = a2;
    v23 = v22;
    v24 = swift_slowAlloc();
    v44 = a5;
    v25 = v24;
    aBlock[0] = v24;
    *v23 = 136315394;
    *(v23 + 4) = sub_20CEE913C(0xD000000000000029, 0x800000020D5D30F0, aBlock);
    *(v23 + 12) = 2080;
    sub_20CFD5148();
    v26 = sub_20D568BB8();
    v28 = v27;
    (*(v10 + 8))(v12, v9);
    v29 = sub_20CEE913C(v26, v28, aBlock);

    *(v23 + 14) = v29;
    _os_log_impl(&dword_20CEB6000, v20, v21, "%s Loading OAuth URL: %s", v23, 0x16u);
    swift_arrayDestroy();
    v30 = v25;
    a5 = v44;
    MEMORY[0x20F31FC70](v30, -1, -1);
    v31 = v23;
    a2 = v43;
    MEMORY[0x20F31FC70](v31, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v12, v9);
  }

  (*(v46 + 8))(v15, v47);
  v32 = objc_allocWithZone(MEMORY[0x277CBA9D8]);
  v33 = v45;
  v34 = sub_20D563678();
  aBlock[4] = v49;
  aBlock[5] = v51;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20CFD28C8;
  aBlock[3] = v50;
  v35 = _Block_copy(aBlock);

  v36 = [v32 initWithURL:v34 callback:v33 completionHandler:v35];
  _Block_release(v35);

  v37 = OBJC_IVAR____TtC6HomeUI17OAuthLoginManager_authSession;
  v38 = *(a5 + OBJC_IVAR____TtC6HomeUI17OAuthLoginManager_authSession);
  *(a5 + OBJC_IVAR____TtC6HomeUI17OAuthLoginManager_authSession) = v36;

  if (v36)
  {
    [v36 setPrefersEphemeralWebBrowserSession_];
  }

  v39 = *(a5 + v37);
  if (v39)
  {
    [v39 setPresentationContextProvider_];
    v40 = *(a5 + v37);
  }

  else
  {
    v40 = 0;
  }

  v41 = v40;
  [v41 start];
}

void sub_20CFD355C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v44 = a3;
  v45 = a4;
  v39 = a2;
  v7 = sub_20D5636B8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20D565988();
  v41 = *(v11 - 8);
  v42 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = objc_opt_self();
  v15 = sub_20D5677F8();
  v40 = [v14 callbackWithCustomScheme_];

  if (qword_27C81A2D8 != -1)
  {
    swift_once();
  }

  v16 = qword_27C838280;
  sub_20D565998();
  v17 = *(v8 + 16);
  v43 = a1;
  v17(v10, a1, v7);
  v18 = sub_20D565968();
  v19 = sub_20D567EC8();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v38 = a5;
    v22 = v21;
    aBlock[0] = v21;
    *v20 = 136315394;
    *(v20 + 4) = sub_20CEE913C(0xD000000000000029, 0x800000020D5D30F0, aBlock);
    *(v20 + 12) = 2080;
    sub_20CFD5148();
    v23 = sub_20D568BB8();
    v25 = v24;
    (*(v8 + 8))(v10, v7);
    v26 = sub_20CEE913C(v23, v25, aBlock);

    *(v20 + 14) = v26;
    _os_log_impl(&dword_20CEB6000, v18, v19, "%s Loading OAuth URL: %s", v20, 0x16u);
    swift_arrayDestroy();
    v27 = v22;
    a5 = v38;
    MEMORY[0x20F31FC70](v27, -1, -1);
    MEMORY[0x20F31FC70](v20, -1, -1);
  }

  else
  {

    (*(v8 + 8))(v10, v7);
  }

  (*(v41 + 8))(v13, v42);
  v28 = objc_allocWithZone(MEMORY[0x277CBA9D8]);
  v29 = v40;
  v30 = sub_20D563678();
  aBlock[4] = v44;
  aBlock[5] = v45;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20CFD28C8;
  aBlock[3] = &block_descriptor_37;
  v31 = _Block_copy(aBlock);

  v32 = [v28 initWithURL:v30 callback:v29 completionHandler:v31];
  _Block_release(v31);

  v33 = OBJC_IVAR____TtC6HomeUI17OAuthLoginManager_authSession;
  v34 = *(a5 + OBJC_IVAR____TtC6HomeUI17OAuthLoginManager_authSession);
  *(a5 + OBJC_IVAR____TtC6HomeUI17OAuthLoginManager_authSession) = v32;

  if (v32)
  {
    [v32 setPrefersEphemeralWebBrowserSession_];
  }

  v35 = *(a5 + v33);
  if (v35)
  {
    [v35 setPresentationContextProvider_];
    v36 = *(a5 + v33);
  }

  else
  {
    v36 = 0;
  }

  v37 = v36;
  [v37 start];
}

uint64_t sub_20CFD3A00(uint64_t a1, char *a2, void *a3)
{
  v36 = a1;
  v37 = sub_20D565988();
  v5 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81CDF0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v34 - v9;
  v11 = sub_20D5636B8();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v34 - v16;
  v18 = swift_allocObject();
  *(v18 + 16) = a3;
  v19 = a3;
  if (sub_20CFD1960())
  {
    v35 = v18;
    v20 = v19;
    v21 = OBJC_IVAR____TtC6HomeUI17OAuthLoginManager_authURL;
    swift_beginAccess();
    sub_20CEF9178(&a2[v21], v10, &unk_27C81CDF0);
    if ((*(v12 + 48))(v10, 1, v11) != 1)
    {
      (*(v12 + 32))(v17, v10, v11);
      type metadata accessor for OAuthLoginManager();
      sub_20CFD2008(v17, *&a2[OBJC_IVAR____TtC6HomeUI17OAuthLoginManager_uuid], *&a2[OBJC_IVAR____TtC6HomeUI17OAuthLoginManager_uuid + 8], v15);
      v29 = swift_allocObject();
      v30 = v35;
      v29[2] = sub_20CFD5228;
      v29[3] = v30;
      v29[4] = a2;

      v31 = a2;
      sub_20CFD30AC(v15, v36, sub_20CFD527C, v29, v31, &block_descriptor_47);

      v32 = *(v12 + 8);
      v32(v15, v11);
      v32(v17, v11);
    }

    sub_20CEF928C(v10, &unk_27C81CDF0);
    v19 = v20;
  }

  if (qword_27C81A2D8 != -1)
  {
    swift_once();
  }

  v22 = qword_27C838280;
  sub_20D565998();
  v23 = sub_20D565968();
  v24 = sub_20D567EA8();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v38 = v26;
    *v25 = 136315138;
    *(v25 + 4) = sub_20CEE913C(0xD000000000000034, 0x800000020D5D3090, &v38);
    _os_log_impl(&dword_20CEB6000, v23, v24, "%s Invalid URL! Finishing onboarding with error.", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v26);
    MEMORY[0x20F31FC70](v26, -1, -1);
    MEMORY[0x20F31FC70](v25, -1, -1);
  }

  (*(v5 + 8))(v7, v37);
  sub_20CEF5CA0();
  v27 = swift_allocError();
  *v28 = 2;
  sub_20CF32D78(0, 0, v27, v19);
}

unint64_t sub_20CFD3EBC(uint64_t a1)
{
  v63 = a1;
  v1 = sub_20D563458();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v64 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81EB20);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v52 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81CDF0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v52 - v11;
  v13 = sub_20D5636B8();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CEF9178(v63, v12, &unk_27C81CDF0);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_20CEF928C(v12, &unk_27C81CDF0);
    return sub_20CEF3A4C(MEMORY[0x277D84F90]);
  }

  (*(v14 + 32))(v16, v12, v13);
  sub_20D563488();
  sub_20CEF9178(v9, v7, &unk_27C81EB20);
  v18 = sub_20D5634A8();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v7, 1, v18) == 1)
  {
    sub_20CEF928C(v9, &unk_27C81EB20);
    (*(v14 + 8))(v16, v13);
    sub_20CEF928C(v7, &unk_27C81EB20);
    return MEMORY[0x277D84F98];
  }

  v20 = sub_20D563468();
  (*(v19 + 8))(v7, v18);
  if (!v20)
  {
    sub_20CEF928C(v9, &unk_27C81EB20);
    (*(v14 + 8))(v16, v13);
    return MEMORY[0x277D84F98];
  }

  v53 = v13;
  v54 = v9;
  v63 = *(v20 + 16);
  if (!v63)
  {
    v17 = MEMORY[0x277D84F98];
LABEL_32:

    sub_20CEF928C(v54, &unk_27C81EB20);
    (*(v14 + 8))(v16, v53);
    return v17;
  }

  v21 = 0;
  v22 = v2;
  v62 = v20 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v60 = (v2 + 8);
  v61 = v2 + 16;
  v17 = MEMORY[0x277D84F98];
  v55 = v2;
  v56 = v1;
  v58 = v16;
  v59 = v14;
  v57 = v20;
  while (v21 < *(v20 + 16))
  {
    (*(v22 + 16))(v64, v62 + *(v22 + 72) * v21, v1);
    v24 = sub_20D563438();
    v26 = v25;
    v27 = sub_20D563448();
    if (!v28)
    {
      v40 = v22;
      v41 = sub_20CEED668(v24, v26);
      v43 = v42;

      if (v43)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v65 = v17;
        v16 = v58;
        v14 = v59;
        v20 = v57;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_20CF9C840();
          v17 = v65;
        }

        sub_20D089834(v41, v17);
        (*v60)(v64, v1);
        v22 = v40;
      }

      else
      {
        (*v60)(v64, v1);
        v16 = v58;
        v14 = v59;
        v20 = v57;
        v22 = v40;
      }

      goto LABEL_10;
    }

    v29 = v28;
    v30 = v27;
    v31 = swift_isUniquelyReferenced_nonNull_native();
    v65 = v17;
    v33 = sub_20CEED668(v24, v26);
    v34 = v17[2];
    v35 = (v32 & 1) == 0;
    v36 = v34 + v35;
    if (__OFADD__(v34, v35))
    {
      goto LABEL_35;
    }

    v37 = v32;
    if (v17[3] >= v36)
    {
      if (v31)
      {
        if ((v32 & 1) == 0)
        {
          goto LABEL_24;
        }
      }

      else
      {
        sub_20CF9C840();
        if ((v37 & 1) == 0)
        {
          goto LABEL_24;
        }
      }
    }

    else
    {
      sub_20CF98158(v36, v31);
      v38 = sub_20CEED668(v24, v26);
      if ((v37 & 1) != (v39 & 1))
      {
        goto LABEL_37;
      }

      v33 = v38;
      if ((v37 & 1) == 0)
      {
LABEL_24:
        v45 = v64;
        v17 = v65;
        v65[(v33 >> 6) + 8] |= 1 << v33;
        v46 = (v17[6] + 16 * v33);
        *v46 = v24;
        v46[1] = v26;
        v47 = (v17[7] + 16 * v33);
        *v47 = v30;
        v47[1] = v29;
        v1 = v56;
        (*v60)(v45, v56);
        v48 = v17[2];
        v49 = __OFADD__(v48, 1);
        v50 = v48 + 1;
        if (v49)
        {
          goto LABEL_36;
        }

        v17[2] = v50;
        goto LABEL_9;
      }
    }

    v17 = v65;
    v23 = (v65[7] + 16 * v33);
    *v23 = v30;
    v23[1] = v29;

    v1 = v56;
    (*v60)(v64, v56);
LABEL_9:
    v22 = v55;
    v16 = v58;
    v14 = v59;
    v20 = v57;
LABEL_10:
    if (v63 == ++v21)
    {
      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  result = sub_20D568C68();
  __break(1u);
  return result;
}

uint64_t type metadata accessor for OAuthLoginManager()
{
  result = qword_27C81EB00;
  if (!qword_27C81EB00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20CFD45FC()
{
  sub_20CF26220();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_20CFD47A4(uint64_t a1, char *a2, void *a3)
{
  v36 = a1;
  v37 = sub_20D565988();
  v5 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81CDF0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v34 - v9;
  v11 = sub_20D5636B8();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v34 - v16;
  v18 = swift_allocObject();
  *(v18 + 16) = a3;
  v19 = a3;
  if (sub_20CFD1960())
  {
    v35 = v18;
    v20 = v19;
    v21 = OBJC_IVAR____TtC6HomeUI17OAuthLoginManager_authURL;
    swift_beginAccess();
    sub_20CEF9178(&a2[v21], v10, &unk_27C81CDF0);
    if ((*(v12 + 48))(v10, 1, v11) != 1)
    {
      (*(v12 + 32))(v17, v10, v11);
      type metadata accessor for OAuthLoginManager();
      sub_20CFD2008(v17, *&a2[OBJC_IVAR____TtC6HomeUI17OAuthLoginManager_uuid], *&a2[OBJC_IVAR____TtC6HomeUI17OAuthLoginManager_uuid + 8], v14);
      v29 = swift_allocObject();
      v30 = v35;
      v29[2] = sub_20CFD51A0;
      v29[3] = v30;
      v29[4] = a2;

      v31 = a2;
      sub_20CFD30AC(v14, v36, sub_20CFD527C, v29, v31, &block_descriptor_24);

      v32 = *(v12 + 8);
      v32(v14, v11);
      v32(v17, v11);
    }

    sub_20CEF928C(v10, &unk_27C81CDF0);
    v19 = v20;
  }

  if (qword_27C81A2D8 != -1)
  {
    swift_once();
  }

  v22 = qword_27C838280;
  sub_20D565998();
  v23 = sub_20D565968();
  v24 = sub_20D567EA8();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v38 = v26;
    *v25 = 136315138;
    *(v25 + 4) = sub_20CEE913C(0xD000000000000034, 0x800000020D5D3090, &v38);
    _os_log_impl(&dword_20CEB6000, v23, v24, "%s Invalid URL! Finishing onboarding with error.", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v26);
    MEMORY[0x20F31FC70](v26, -1, -1);
    MEMORY[0x20F31FC70](v25, -1, -1);
  }

  (*(v5 + 8))(v7, v37);
  sub_20CEF5CA0();
  v27 = swift_allocError();
  *v28 = 2;
  sub_20D065674(0, 0, v27, v19);
}

uint64_t sub_20CFD4C60(uint64_t a1, char *a2, void *a3)
{
  v36 = a1;
  v37 = sub_20D565988();
  v5 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81CDF0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v34 - v9;
  v11 = sub_20D5636B8();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v34 - v16;
  v18 = swift_allocObject();
  *(v18 + 16) = a3;
  v19 = a3;
  if (sub_20CFD1960())
  {
    v35 = v18;
    v20 = v19;
    v21 = OBJC_IVAR____TtC6HomeUI17OAuthLoginManager_authURL;
    swift_beginAccess();
    sub_20CEF9178(&a2[v21], v10, &unk_27C81CDF0);
    if ((*(v12 + 48))(v10, 1, v11) != 1)
    {
      (*(v12 + 32))(v17, v10, v11);
      type metadata accessor for OAuthLoginManager();
      sub_20CFD2008(v17, *&a2[OBJC_IVAR____TtC6HomeUI17OAuthLoginManager_uuid], *&a2[OBJC_IVAR____TtC6HomeUI17OAuthLoginManager_uuid + 8], v14);
      v29 = swift_allocObject();
      v30 = v35;
      v29[2] = sub_20CFD511C;
      v29[3] = v30;
      v29[4] = a2;

      v31 = a2;
      sub_20CFD30AC(v14, v36, sub_20CFD5124, v29, v31, &block_descriptor_19);

      v32 = *(v12 + 8);
      v32(v14, v11);
      v32(v17, v11);
    }

    sub_20CEF928C(v10, &unk_27C81CDF0);
    v19 = v20;
  }

  if (qword_27C81A2D8 != -1)
  {
    swift_once();
  }

  v22 = qword_27C838280;
  sub_20D565998();
  v23 = sub_20D565968();
  v24 = sub_20D567EA8();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v38 = v26;
    *v25 = 136315138;
    *(v25 + 4) = sub_20CEE913C(0xD000000000000034, 0x800000020D5D3090, &v38);
    _os_log_impl(&dword_20CEB6000, v23, v24, "%s Invalid URL! Finishing onboarding with error.", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v26);
    MEMORY[0x20F31FC70](v26, -1, -1);
    MEMORY[0x20F31FC70](v25, -1, -1);
  }

  (*(v5 + 8))(v7, v37);
  sub_20CEF5CA0();
  v27 = swift_allocError();
  *v28 = 2;
  sub_20D074088(0, 0, v27, v19);
}

uint64_t block_copy_helper_19(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_20CFD5148()
{
  result = qword_27C81EB10;
  if (!qword_27C81EB10)
  {
    sub_20D5636B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81EB10);
  }

  return result;
}

uint64_t sub_20CFD51B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81CDF0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_13Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

id sub_20CFD528C()
{
  result = [objc_allocWithZone(HUControlCenterSharedStateManager) init];
  qword_28111FD30 = result;
  return result;
}

void __swiftcall HUControlCenterSharedStateManager.init()(HUControlCenterSharedStateManager *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

uint64_t sub_20CFD52F8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81EB58);
  result = swift_allocObject();
  *(result + 16) = 0;
  qword_28111FD48 = result;
  return result;
}

id static HUControlCenterSharedStateManager.shared.getter()
{
  if (qword_28111FD40 != -1)
  {
    swift_once();
  }

  v0 = qword_28111FD48;
  os_unfair_lock_lock((qword_28111FD48 + 16));
  if (qword_28111FD28 != -1)
  {
    swift_once();
  }

  v1 = qword_28111FD30;
  os_unfair_lock_unlock(v0 + 4);
  return v1;
}

id HUControlCenterSharedStateManager.init()()
{
  v1 = OBJC_IVAR___HUControlCenterSharedStateManager_isVisibleRefCounter;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81EB38);
  v2 = swift_allocObject();
  *(v2 + 24) = 0;
  *(v2 + 16) = 0;
  *&v0[v1] = v2;
  v3 = OBJC_IVAR___HUControlCenterSharedStateManager_homesVisibleRefCounter;
  v4 = sub_20CEF4E30(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81EB48);
  v5 = swift_allocObject();
  *(v5 + 24) = 0;
  *(v5 + 16) = v4;
  *&v0[v3] = v5;
  v25.receiver = v0;
  v25.super_class = HUControlCenterSharedStateManager;
  v6 = objc_msgSendSuper2(&v25, sel_init);
  v7 = objc_opt_self();
  v8 = v6;
  v9 = [v7 mainBundle];
  v10 = [v9 bundleIdentifier];

  if (v10)
  {
    v11 = sub_20D567838();
    v13 = v12;

    if (v11 == 0xD000000000000015 && 0x800000020D5D3160 == v13)
    {

LABEL_6:
      if (qword_281120950 != -1)
      {
        swift_once();
      }

      v15 = sub_20D565988();
      __swift_project_value_buffer(v15, qword_281120958);
      v16 = sub_20D565968();
      v17 = sub_20D567EC8();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_20CEB6000, v16, v17, "ControlCenterSharedStateManager.init() inside of Springboard", v18, 2u);
        MEMORY[0x20F31FC70](v18, -1, -1);
      }

      sub_20D563F48();
      sub_20D563F28();
      goto LABEL_16;
    }

    v14 = sub_20D568BF8();

    if (v14)
    {
      goto LABEL_6;
    }
  }

  if (qword_281120950 != -1)
  {
    swift_once();
  }

  v19 = sub_20D565988();
  __swift_project_value_buffer(v19, qword_281120958);
  v20 = sub_20D565968();
  v21 = sub_20D567EA8();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_20CEB6000, v20, v21, "ControlCenterSharedStateManager.init() is running in a non-Springboard environment", v22, 2u);
    MEMORY[0x20F31FC70](v22, -1, -1);
  }

LABEL_16:
  v23 = [objc_opt_self() sharedInstance];
  [v23 setRunningState_];

  return v8;
}

uint64_t sub_20CFD5888()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C610);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v24 - v2;
  v4 = [objc_opt_self() sharedInstance];
  [v4 executionEnvironmentDidEnterBackground];

  v5 = objc_opt_self();
  v6 = [v5 sharedDispatcher];
  v7 = [v6 homeManager];

  if (v7)
  {
    v8 = [v7 homes];

    sub_20CECF940(0, &qword_28111FB80);
    v9 = sub_20D567A78();

    v26 = v0;
    v27 = v3;
    v25 = v5;
    if (v9 >> 62)
    {
      goto LABEL_14;
    }

    for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_20D568768())
    {
      v11 = 0;
      while (1)
      {
        if ((v9 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x20F31DD20](v11, v9);
        }

        else
        {
          if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_13;
          }

          v12 = *(v9 + 8 * v11 + 32);
        }

        v13 = v12;
        v14 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        v15 = [v12 hf_characteristicValueManager];
        [v15 cancelInFlightReadRequests];

        ++v11;
        if (v14 == i)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      ;
    }

LABEL_15:

    v0 = v26;
    v3 = v27;
    v5 = v25;
  }

  v16 = [v5 sharedDispatcher];
  v17 = sub_20D5677F8();
  [v16 disconnectDataModelDelegatesWithReason_];

  v18 = *(v0 + OBJC_IVAR___HUControlCenterSharedStateManager_homesVisibleRefCounter);

  os_unfair_lock_lock((v18 + 24));

  *(v18 + 16) = MEMORY[0x277D84F98];
  os_unfair_lock_unlock((v18 + 24));

  v19 = sub_20D567C58();
  (*(*(v19 - 8) + 56))(v3, 1, 1, v19);
  sub_20D567C18();
  v20 = sub_20D567C08();
  v21 = swift_allocObject();
  v22 = MEMORY[0x277D85700];
  *(v21 + 16) = v20;
  *(v21 + 24) = v22;
  sub_20CF18960(0, 0, v3, &unk_20D5C2A78, v21);
}

uint64_t HUControlCenterSharedStateManager.setModuleWithIdentifier(_:subscribedTo:)(uint64_t a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C180);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14[-v6];
  if (a2)
  {
    v8 = [a2 uniqueIdentifier];
    sub_20D5637E8();

    v9 = sub_20D563818();
    v10 = (*(*(v9 - 8) + 56))(v7, 0, 1, v9);
  }

  else
  {
    v11 = sub_20D563818();
    v10 = (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
  }

  v12 = *(v2 + OBJC_IVAR___HUControlCenterSharedStateManager_homesVisibleRefCounter);
  MEMORY[0x28223BE20](v10);
  *&v14[-32] = a1;
  *&v14[-24] = v7;
  *&v14[-16] = v2;

  os_unfair_lock_lock(v12 + 6);
  sub_20CFD6EF8(&v12[4]);
  os_unfair_lock_unlock(v12 + 6);

  return sub_20CEF928C(v7, &qword_27C81C180);
}

uint64_t sub_20CFD5E0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C610);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v20 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C180);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v20 - v9;
  v11 = sub_20D563818();
  MEMORY[0x28223BE20](v11);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13, a2);
  sub_20CF073C8(a3, v10);
  sub_20CED9B14(v10, v13);
  v15 = sub_20D5663C8();
  v16 = sub_20CED4644(v15);
  v17 = sub_20D567C58();
  (*(*(v17 - 8) + 56))(v7, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = v16;
  sub_20CF18960(0, 0, v7, &unk_20D5C2A98, v18);
}

uint64_t sub_20CFD6134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_20D563EB8();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CFD61F4, 0, 0);
}

uint64_t sub_20CFD61F4()
{
  v13 = v0;
  if (qword_281120950 != -1)
  {
    swift_once();
  }

  v1 = sub_20D565988();
  __swift_project_value_buffer(v1, qword_281120958);
  sub_20D5663C8();
  v2 = sub_20D565968();
  v3 = sub_20D567EC8();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136315138;
    sub_20D563818();
    sub_20CFD7634();
    v6 = sub_20D567D18();
    v8 = sub_20CEE913C(v6, v7, &v12);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_20CEB6000, v2, v3, "ControlCenterSharedStateManager updateHomeSubscription %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x20F31FC70](v5, -1, -1);
    MEMORY[0x20F31FC70](v4, -1, -1);
  }

  v0[6] = sub_20D563F48();
  v0[7] = sub_20D567C18();
  v0[8] = sub_20D567C08();
  v10 = sub_20D567BA8();

  return MEMORY[0x2822009F8](sub_20CFD63EC, v10, v9);
}

uint64_t sub_20CFD63EC()
{

  *(v0 + 72) = sub_20D563F18();

  return MEMORY[0x2822009F8](sub_20CFD6460, 0, 0);
}

uint64_t sub_20CFD6460()
{
  v1 = *(v0 + 32);
  **(v0 + 40) = *(v0 + 16);
  (*(v1 + 104))();
  sub_20D5663C8();
  *(v0 + 80) = sub_20D567C08();
  v3 = sub_20D567BA8();

  return MEMORY[0x2822009F8](sub_20CFD651C, v3, v2);
}

uint64_t sub_20CFD651C()
{
  v1 = v0[9];
  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[3];

  sub_20D563F08();

  (*(v3 + 8))(v2, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_20CFD65B8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81E180);
  *(v0 + 16) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CFD6650, 0, 0);
}

uint64_t sub_20CFD6650()
{
  v1 = [objc_opt_self() sharedDispatcher];
  v2 = [v1 homeManager];
  v0[3] = v2;

  if (v2)
  {
    v3 = [v2 homes];
    sub_20CECF940(0, &qword_28111FB80);
    v4 = sub_20D567A78();
    v0[4] = v4;

    if (v4 >> 62)
    {
      v5 = sub_20D568768();
      v0[5] = v5;
      if (v5)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v0[5] = v5;
      if (v5)
      {
LABEL_4:
        v0[6] = sub_20D563F48();
        v0[7] = sub_20D567C18();
        v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81E188);
        v0[8] = v6;
        if (v5 < 1)
        {
          __break(1u);
        }

        else
        {
          v0[9] = 0;
          v9 = v0[4];
          if ((v9 & 0xC000000000000001) != 0)
          {
            v10 = MEMORY[0x20F31DD20](0);
          }

          else
          {
            v10 = *(v9 + 32);
          }

          v0[10] = v10;
          v0[11] = sub_20D567C08();
          v11 = sub_20D567BA8();
          v13 = v12;
          v6 = sub_20CFD6850;
          v7 = v11;
          v8 = v13;
        }

        return MEMORY[0x2822009F8](v6, v7, v8);
      }
    }

    v14 = v0[3];
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_20CFD6850()
{

  *(v0 + 96) = sub_20D563F18();

  return MEMORY[0x2822009F8](sub_20CFD68C4, 0, 0);
}

uint64_t sub_20CFD68C4()
{
  sub_20CFADDD8();
  v1 = sub_20D567DA8();
  v0[13] = v1;
  v2 = swift_task_alloc();
  v0[14] = v2;
  *v2 = v0;
  v2[1] = sub_20CFD6988;
  v3 = v0[10];
  v4 = v0[2];

  return MEMORY[0x28216E9A0](v4, v3, 1, v1);
}

uint64_t sub_20CFD6988()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 16);

  sub_20CEF928C(v2, &qword_27C81E180);

  return MEMORY[0x2822009F8](sub_20CFD6AEC, 0, 0);
}

uint64_t sub_20CFD6AEC()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 40);

  if (v1 + 1 == v2)
  {
    v3 = *(v0 + 24);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 72) + 1;
    *(v0 + 72) = v6;
    v7 = *(v0 + 32);
    if ((v7 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x20F31DD20]();
    }

    else
    {
      v8 = *(v7 + 8 * v6 + 32);
    }

    *(v0 + 80) = v8;
    *(v0 + 88) = sub_20D567C08();
    v10 = sub_20D567BA8();

    return MEMORY[0x2822009F8](sub_20CFD6850, v10, v9);
  }
}

uint64_t sub_20CFD6C04()
{
  v1 = sub_20D563EB8();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  sub_20D567C18();
  v0[5] = sub_20D567C08();
  v3 = sub_20D567BA8();

  return MEMORY[0x2822009F8](sub_20CFD6CF4, v3, v2);
}

uint64_t sub_20CFD6CF4()
{

  if (qword_281120950 != -1)
  {
    swift_once();
  }

  v1 = sub_20D565988();
  __swift_project_value_buffer(v1, qword_281120958);
  v2 = sub_20D565968();
  v3 = sub_20D567EC8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_20CEB6000, v2, v3, "ControlCenterSharedStateManager allModulesDidDisappear", v4, 2u);
    MEMORY[0x20F31FC70](v4, -1, -1);
  }

  v6 = v0[3];
  v5 = v0[4];
  v7 = v0[2];

  sub_20D563F48();
  v8 = sub_20D563F18();
  sub_20D563EF8();

  v9 = sub_20D563F18();
  *v5 = MEMORY[0x277D84FA0];
  (*(v6 + 104))(v5, *MEMORY[0x277D15408], v7);
  sub_20D563F08();

  (*(v6 + 8))(v5, v7);

  v10 = v0[1];

  return v10();
}

uint64_t *sub_20CFD6F2C(uint64_t *result)
{
  v1 = *result == 1;
  if (*result >= 1)
  {
    --*result;
    if (v1)
    {
      return sub_20CFD5888();
    }
  }

  return result;
}

uint64_t sub_20CFD6F6C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_20CEF934C;

  return sub_20CFD6C04();
}

void *sub_20CFD7018(void *result)
{
  v1 = result;
  v2 = *result;
  if (!*result)
  {
    result = sub_20CFD7348();
  }

  if (__OFADD__(v2, 1))
  {
    __break(1u);
  }

  else
  {
    *v1 = v2 + 1;
  }

  return result;
}

uint64_t sub_20CFD7348()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C610);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v9 - v1;
  v3 = [objc_opt_self() sharedInstance];
  [v3 executionEnvironmentWillEnterForeground];

  v4 = [objc_opt_self() sharedDispatcher];
  v5 = sub_20D5677F8();
  [v4 reconnectDataModelDelegatesWithReason_];

  v6 = sub_20D567C58();
  (*(*(v6 - 8) + 56))(v2, 1, 1, v6);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  sub_20CF18960(0, 0, v2, &unk_20D5C2A88, v7);
}

uint64_t sub_20CFD74D4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_20CEF934C;

  return sub_20CFD65B8();
}

uint64_t sub_20CFD7580(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20CEF5FFC;

  return sub_20CFD6134(a1, v4, v5, v6);
}

unint64_t sub_20CFD7634()
{
  result = qword_27C81C0E0;
  if (!qword_27C81C0E0)
  {
    sub_20D563818();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81C0E0);
  }

  return result;
}

id InstructionModuleController.__allocating_init(module:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithModule_];

  return v3;
}

uint64_t sub_20CFD77C8(void *a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81E080);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v34 - v6;
  v36 = sub_20D5661D8();
  v8 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20D566258();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for InstructionModuleController();
  v38.receiver = v2;
  v38.super_class = v15;
  objc_msgSendSuper2(&v38, sel_configureCell_forItem_, a1, a2);
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v34 = a1;
    sub_20D566228();
    v17 = [a2 latestResults];
    v35 = v12;
    if (v17)
    {
      v18 = v17;
      v19 = sub_20D567758();

      v20 = sub_20D567838();
      if (*(v19 + 16))
      {
        v22 = sub_20CEED668(v20, v21);
        v24 = v23;

        if (v24)
        {
          sub_20CED43FC(*(v19 + 56) + 32 * v22, v37);

          swift_dynamicCast();
          goto LABEL_8;
        }
      }

      else
      {
      }
    }

LABEL_8:
    sub_20D566248();
    v25 = [objc_opt_self() preferredFontForTextStyle_];
    v26 = sub_20D566218();
    sub_20D5661E8();
    v26(v37, 0);
    v27 = [objc_opt_self() systemGrayColor];
    v28 = sub_20D566218();
    sub_20D5661F8();
    v28(v37, 0);
    (*(v8 + 104))(v10, *MEMORY[0x277D74C08], v36);
    v29 = sub_20D566218();
    sub_20D566208();
    v29(v37, 0);
    v37[3] = v11;
    v37[4] = MEMORY[0x277D74C30];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v37);
    v31 = v35;
    (*(v35 + 16))(boxed_opaque_existential_1, v14, v11);
    v32 = v34;
    MEMORY[0x20F31D5C0](v37);
    sub_20D566178();
    v33 = sub_20D5661A8();
    (*(*(v33 - 8) + 56))(v7, 0, 1, v33);
    MEMORY[0x20F31D5E0](v7);

    return (*(v31 + 8))(v14, v11);
  }

  return result;
}

id InstructionModuleController.init(module:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for InstructionModuleController();
  v3 = objc_msgSendSuper2(&v5, sel_initWithModule_, a1);

  return v3;
}

id InstructionModuleController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InstructionModuleController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t BaseIconView.Configuration.ViewConfiguration.Icon.init(iconDescriptor:style:backgroundStyle:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a3;
  v5 = *(a3 + 8);
  *(a4 + 24) = 0;
  *(a4 + 32) = 0;
  *(a4 + 40) = 1;
  *a4 = a2;
  *(a4 + 8) = v4;
  *(a4 + 16) = v5;
  *(a4 + 48) = result;
  return result;
}

void BaseIconView.Configuration.state.getter(_BYTE *a1@<X8>)
{
  v2 = v1[17];
  v3 = v1[18];
  *a1 = v1[16];
  a1[1] = v2;
  a1[2] = v3;
}

void *BaseIconView.Configuration.pieProgressColor.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

uint64_t BaseIconView.Configuration.context.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[2];
  v6 = v1[1];
  v7[0] = v2;
  *(v7 + 10) = *(v1 + 42);
  v3 = *(v7 + 10);
  *a1 = v6;
  a1[1] = v2;
  *(a1 + 26) = v3;
  return sub_20CFD7ED4(&v6, &v5);
}

uint64_t BaseIconView.Configuration.iconDescriptor.setter(uint64_t a1)
{
  result = swift_unknownObjectRelease();
  *(v1 + 64) = a1;
  return result;
}

uint64_t (*BaseIconView.Configuration.iconDescriptor.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 64);
  a1[1] = v1;
  a1[2] = v3;
  *a1 = v3;
  swift_unknownObjectRetain();
  return sub_20CFD7FB4;
}

uint64_t sub_20CFD7FB4(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = *a1;
  if (a2)
  {
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    *(v2 + 64) = v3;

    return swift_unknownObjectRelease();
  }

  else
  {
    result = swift_unknownObjectRelease();
    *(v2 + 64) = v3;
  }

  return result;
}

id BaseIconView.Configuration.viewConfiguration.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[10];
  v3 = v1[11];
  v4 = v1[12];
  v5 = v1[13];
  v6 = v1[14];
  v7 = v1[15];
  v8 = v1[16];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  return sub_20CFD9D60(v2, v3, v4, v5, v6, v7);
}

__n128 BaseIconView.Configuration.viewConfiguration.setter(uint64_t a1)
{
  v6 = *(a1 + 32);
  v3 = *(a1 + 48);
  sub_20CFD9DD8(*(v1 + 80), *(v1 + 88), *(v1 + 96), *(v1 + 104), *(v1 + 112), *(v1 + 120));
  v4 = *(a1 + 16);
  *(v1 + 80) = *a1;
  *(v1 + 96) = v4;
  result = v6;
  *(v1 + 112) = v6;
  *(v1 + 128) = v3;
  return result;
}

uint64_t BaseIconView.Configuration.ViewConfiguration.Label.hash(into:)()
{
  v1 = *(v0 + 16);
  sub_20D5678C8();
  MEMORY[0x20F31E200](v1);
  sub_20D568408();
  sub_20D568408();
  return sub_20D568D68();
}

uint64_t BaseIconView.Configuration.ViewConfiguration.Label.hashValue.getter()
{
  v1 = *(v0 + 16);
  sub_20D568D48();
  sub_20D5678C8();
  MEMORY[0x20F31E200](v1);
  sub_20D568408();
  sub_20D568408();
  sub_20D568D68();
  return sub_20D568D98();
}

uint64_t sub_20CFD8218()
{
  v1 = *(v0 + 16);
  sub_20D568D48();
  sub_20D5678C8();
  MEMORY[0x20F31E200](v1);
  sub_20D568408();
  sub_20D568408();
  sub_20D568D68();
  return sub_20D568D98();
}

uint64_t sub_20CFD82B8()
{
  v1 = *(v0 + 16);
  sub_20D5678C8();
  MEMORY[0x20F31E200](v1);
  sub_20D568408();
  sub_20D568408();
  return sub_20D568D68();
}

uint64_t sub_20CFD832C()
{
  v1 = *(v0 + 16);
  sub_20D568D48();
  sub_20D5678C8();
  MEMORY[0x20F31E200](v1);
  sub_20D568408();
  sub_20D568408();
  sub_20D568D68();
  return sub_20D568D98();
}

uint64_t BaseIconView.Configuration.ViewConfiguration.Icon.BackgroundStyle.hashValue.getter()
{
  v1 = *(v0 + 8);
  sub_20D568D48();
  MEMORY[0x20F31E200](v1);
  sub_20D568408();
  return sub_20D568D98();
}

uint64_t sub_20CFD8474()
{
  v1 = *(v0 + 8);
  sub_20D568D48();
  MEMORY[0x20F31E200](v1);
  sub_20D568408();
  return sub_20D568D98();
}

uint64_t sub_20CFD8518()
{
  v1 = *(v0 + 8);
  sub_20D568D48();
  MEMORY[0x20F31E200](v1);
  sub_20D568408();
  return sub_20D568D98();
}

uint64_t BaseIconView.Configuration.ViewConfiguration.Icon.hash(into:)()
{
  v1 = *(v0 + 16);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4 = *(v0 + 48);
  MEMORY[0x20F31E200](*v0);
  MEMORY[0x20F31E200](v1);
  sub_20D568408();
  if (!v3)
  {
    sub_20D568D68();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_20D568D68();
    goto LABEL_6;
  }

  sub_20D568D68();
  v5 = v3;
  sub_20D568408();

  if (!v2)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_20D568D68();
  v6 = v2;
  sub_20D568408();

LABEL_6:
  sub_20D568D68();
  sub_20D568D68();
  return MEMORY[0x20F31E200]([v4 hash]);
}

uint64_t BaseIconView.Configuration.ViewConfiguration.Icon.hashValue.getter()
{
  sub_20D568D48();
  BaseIconView.Configuration.ViewConfiguration.Icon.hash(into:)();
  return sub_20D568D98();
}

uint64_t sub_20CFD86C0()
{
  sub_20D568D48();
  BaseIconView.Configuration.ViewConfiguration.Icon.hash(into:)();
  return sub_20D568D98();
}

uint64_t sub_20CFD8704()
{
  sub_20D568D48();
  BaseIconView.Configuration.ViewConfiguration.Icon.hash(into:)();
  return sub_20D568D98();
}

uint64_t BaseIconView.Configuration.ViewConfiguration.hash(into:)()
{
  v1 = *(v0 + 16);
  if ((*(v0 + 40) & 0x8000000000000000) != 0)
  {
    MEMORY[0x20F31E200](1);
    return BaseIconView.Configuration.ViewConfiguration.Icon.hash(into:)();
  }

  else
  {
    MEMORY[0x20F31E200](0);
    sub_20D5678C8();
    MEMORY[0x20F31E200](v1);
    sub_20D568408();
    sub_20D568408();
    return sub_20D568D68();
  }
}

uint64_t BaseIconView.Configuration.ViewConfiguration.hashValue.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 40);
  sub_20D568D48();
  if (v2 < 0)
  {
    MEMORY[0x20F31E200](1);
    BaseIconView.Configuration.ViewConfiguration.Icon.hash(into:)();
  }

  else
  {
    MEMORY[0x20F31E200](0);
    sub_20D5678C8();
    MEMORY[0x20F31E200](v1);
    sub_20D568408();
    sub_20D568408();
    sub_20D568D68();
  }

  return sub_20D568D98();
}

uint64_t sub_20CFD8930()
{
  v1 = *(v0 + 16);
  if ((*(v0 + 40) & 0x8000000000000000) != 0)
  {
    MEMORY[0x20F31E200](1);
    return BaseIconView.Configuration.ViewConfiguration.Icon.hash(into:)();
  }

  else
  {
    MEMORY[0x20F31E200](0);
    sub_20D5678C8();
    MEMORY[0x20F31E200](v1);
    sub_20D568408();
    sub_20D568408();
    return sub_20D568D68();
  }
}

uint64_t sub_20CFD8A1C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 40);
  sub_20D568D48();
  if (v2 < 0)
  {
    MEMORY[0x20F31E200](1);
    BaseIconView.Configuration.ViewConfiguration.Icon.hash(into:)();
  }

  else
  {
    MEMORY[0x20F31E200](0);
    sub_20D5678C8();
    MEMORY[0x20F31E200](v1);
    sub_20D568408();
    sub_20D568408();
    sub_20D568D68();
  }

  return sub_20D568D98();
}

void BaseIconView.Configuration.init(item:appearance:configurationState:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *MEMORY[0x277D13E88];
  MEMORY[0x20F31D7A0](v36, *MEMORY[0x277D13E88]);
  if (!v36[3])
  {
    sub_20CEF928C(a3, &unk_27C81EB60);

    sub_20CEF928C(v36, &qword_27C81BF00);
LABEL_8:
    sub_20CFDAF0C(&v27);
    v12 = v34;
    *(a4 + 96) = v33;
    *(a4 + 112) = v12;
    *(a4 + 128) = v35;
    v13 = v30;
    *(a4 + 32) = v29;
    *(a4 + 48) = v13;
    v14 = v32;
    *(a4 + 64) = v31;
    *(a4 + 80) = v14;
    v15 = v28;
    *a4 = v27;
    *(a4 + 16) = v15;
    return;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81EB70);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_20CEF928C(a3, &unk_27C81EB60);

    goto LABEL_8;
  }

  v9 = v26;
  sub_20CFDAF28(a3, &v27);
  v10 = a1;
  sub_20CFD8D74(v10, a2, &v27, &v24);
  MEMORY[0x20F31D7A0](v23, v8);
  if (!v23[3])
  {
    sub_20CEF928C(v23, &qword_27C81BF00);
    goto LABEL_10;
  }

  sub_20CECF940(0, &qword_28111FE00);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    v11 = 0;
    goto LABEL_11;
  }

  v11 = 1;
LABEL_11:
  v21 = v24;
  v22[0] = v25[0];
  *(v22 + 10) = *(v25 + 10);
  sub_20CFD7ED4(&v24, &v27);
  sub_20CFD910C(v11, v9, &v21, &v27);

  sub_20CFDAF98(&v24);
  sub_20CEF928C(a3, &unk_27C81EB60);
  v16 = v30;
  v17 = v27;
  v18 = v28;
  v19 = v29;
  *a4 = v11;
  *(a4 + 8) = 0;
  v20 = v25[0];
  *(a4 + 16) = v24;
  *(a4 + 32) = v20;
  *(a4 + 42) = *(v25 + 10);
  *(a4 + 64) = v9;
  *(a4 + 72) = 0x4045000000000000;
  *(a4 + 80) = v17;
  *(a4 + 96) = v18;
  *(a4 + 112) = v19;
  *(a4 + 128) = v16;
  CGSizeMake(a4);
}

void sub_20CFD8D74(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_20CFDA024(a1, v45);
  v8 = v45[0];
  v9 = v45[1];
  v10 = v45[2];
  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  v46 = &unk_28251B6B8;
  v12 = swift_dynamicCastObjCProtocolConditional();
  if (v12)
  {
    v13 = v12;
    v14 = a1;
    v15 = [v13 hu_tintColor];
    if (v15)
    {
      v16 = v15;
      v41 = [v15 hu:HFPrimaryStateFromBOOL() colorForPrimaryState:?];

      goto LABEL_6;
    }
  }

  v41 = 0;
LABEL_6:
  sub_20CFDAF28(a3, &v42);
  if (v43)
  {
    sub_20CF02B6C(&v42, v45);
    sub_20CECF7A0(v45, &v42);
    v17 = v43;
    v18 = v44;
    __swift_project_boxed_opaque_existential_1(&v42, v43);
    v8 = UIConfigurationState.isActive.getter(v17, v18);
    v19 = v43;
    v20 = v44;
    __swift_project_boxed_opaque_existential_1(&v42, v43);
    v9 = UIConfigurationState.isDisabled.getter(v19, v20);
    v21 = v43;
    v22 = v44;
    __swift_project_boxed_opaque_existential_1(&v42, v43);
    v10 = UIConfigurationState.isToggleable.getter(v21, v22);
    __swift_destroy_boxed_opaque_existential_1(v45);
    __swift_destroy_boxed_opaque_existential_1(&v42);
  }

  else
  {
    sub_20CEF928C(&v42, &unk_27C81EB60);
  }

  objc_opt_self();
  v23 = swift_dynamicCastObjCClass();
  if (v23)
  {
    v24 = v23;
    v25 = v10;
    v26 = a3;
    v27 = v8;
    v28 = v11;
    v29 = v9;
    v30 = a2;
    v31 = a1;
    v32 = [v24 service];
    v40 = [v32 hf_isSensorService];

    a2 = v30;
    v9 = v29;
    v11 = v28;
    v8 = v27;
    a3 = v26;
    v10 = v25;
  }

  else
  {
    v40 = 0;
  }

  objc_opt_self();
  if (!(swift_dynamicCastObjCClass() | v11) || (v10 & 1) != 0 || (v8 & 1) != 0 || a2 == 3 || a2 == 4)
  {
    sub_20CEF928C(a3, &unk_27C81EB60);

    v33 = 0;
  }

  else
  {
    v34 = a3;
    v35 = v8;
    v36 = v11;
    v37 = v9;
    v38 = a2;
    v39 = [objc_opt_self() whiteColor];
    v33 = [v39 colorWithAlphaComponent_];

    a2 = v38;
    v9 = v37;
    v11 = v36;
    v8 = v35;
    sub_20CEF928C(v34, &unk_27C81EB60);
  }

  *a4 = v8 & 1;
  *(a4 + 1) = v9 & 1;
  *(a4 + 2) = v10 & 1;
  *(a4 + 8) = a2;
  *(a4 + 16) = v11 != 0;
  *(a4 + 24) = v33;
  *(a4 + 32) = v41;
  *(a4 + 40) = v40;
  *(a4 + 41) = 2;
}

void sub_20CFD910C(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  sub_20D565988();
  v8 = (MEMORY[0x28223BE20])();
  MEMORY[0x28223BE20](v8);
  if (a1)
  {
    if (a1 == 1)
    {
      v10 = a3[1];
      v19 = *a3;
      *v20 = v10;
      *&v20[10] = *(a3 + 26);
      sub_20CF72E14(&v19, &v17);
      v15 = *v18;
      v16 = v18[24];
      *a4 = v17;
      *(a4 + 16) = v15;
      *(a4 + 24) = *&v18[8];
      *(a4 + 40) = v16;
      *(a4 + 48) = 0;
    }

    else
    {
      sub_20D568C38();
      __break(1u);
    }
  }

  else
  {
    v9 = a3[1];
    v17 = *a3;
    *v18 = v9;
    *&v18[10] = *(a3 + 26);
    sub_20CFC97D4(a2, &v17, &v19);
    v11 = *&v20[16];
    v12 = v21;
    v13 = *&v20[24] & 0x101 | 0x8000000000000000;
    v14 = *v20;
    *a4 = v19;
    *(a4 + 16) = v14;
    *(a4 + 32) = v11;
    *(a4 + 40) = v13;
    *(a4 + 48) = v12;
  }
}

__n128 BaseIconView.Configuration.init(iconDescriptor:viewType:state:appearance:viewConfiguration:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v6 = *a3;
  v7 = a3[1];
  v8 = a3[2];
  v9 = *(a5 + 48);
  *a6 = a2;
  *(a6 + 8) = 0;
  *(a6 + 16) = v6;
  *(a6 + 17) = v7;
  *(a6 + 18) = v8;
  *(a6 + 24) = a4;
  *(a6 + 32) = 0;
  *(a6 + 40) = 0;
  *(a6 + 48) = 0;
  *(a6 + 56) = 512;
  *(a6 + 64) = a1;
  *(a6 + 72) = 0x4045000000000000;
  v10 = *(a5 + 16);
  *(a6 + 80) = *a5;
  *(a6 + 96) = v10;
  result = *(a5 + 32);
  *(a6 + 112) = result;
  *(a6 + 128) = v9;
  return result;
}

uint64_t BaseIconView.Configuration.updated(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = *(v2 + 8);
  v7 = *(v2 + 32);
  v19 = *(v2 + 16);
  v20[0] = v7;
  *(v20 + 10) = *(v2 + 42);
  v8 = v6;
  sub_20CFD7ED4(&v19, &v16);
  sub_20CFD910C(v5, a1, (v2 + 16), &v16);
  v9 = v18;
  v10 = v16;
  v11 = *v17;
  v12 = *&v17[16];
  v13 = v19;
  v16 = v19;
  *v17 = v20[0];
  *&v17[10] = *(v20 + 10);
  *a2 = v5;
  v14 = *v17;
  *(a2 + 16) = v13;
  *(a2 + 32) = v14;
  *(a2 + 42) = *&v17[10];
  *(a2 + 64) = a1;
  *(a2 + 72) = 0x4045000000000000;
  *(a2 + 80) = v10;
  *(a2 + 96) = v11;
  *(a2 + 112) = v12;
  *(a2 + 128) = v9;
  result = swift_unknownObjectRetain();
  *(a2 + 8) = v6;
  return result;
}

__n128 BaseIconView.Configuration.updated(with:)@<Q0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  v41 = *a1;
  *v42 = v4;
  *&v42[10] = *(a1 + 26);
  v5 = v2[5];
  v6 = v2[7];
  v49 = v2[6];
  v50 = v6;
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[1];
  v45 = v2[2];
  v46 = v7;
  v51 = *(v2 + 16);
  v47 = v8;
  v48 = v5;
  v10 = v2[1];
  v43 = *v2;
  v44 = v10;
  v11 = a1[1];
  v31 = v41;
  *v32 = v11;
  *&v32[10] = *(a1 + 26);
  v12 = v2[2];
  v39 = v9;
  *v40 = v12;
  *&v40[10] = *(v2 + 42);
  sub_20CFD7ED4(&v44, &v52);
  v13 = _s6HomeUI12BaseIconViewC7ContextV2eeoiySbAE_AEtFZ_0(&v31, &v39);
  v52 = v39;
  v53[0] = *v40;
  *(v53 + 10) = *&v40[10];
  sub_20CFDAF98(&v52);
  if (v13)
  {
    v14 = v50;
    *(a2 + 96) = v49;
    *(a2 + 112) = v14;
    *(a2 + 128) = v51;
    v15 = v46;
    *(a2 + 32) = v45;
    *(a2 + 48) = v15;
    v16 = v48;
    *(a2 + 64) = v47;
    *(a2 + 80) = v16;
    v17 = v44;
    *a2 = v43;
    *(a2 + 16) = v17;
    sub_20CFDAFC8(&v43, &v31);
  }

  else
  {
    v34 = v46;
    v35 = v47;
    v36 = v43;
    v19 = v48;
    v20 = v49;
    v21 = v50;
    v39 = v44;
    *v40 = v45;
    *&v40[24] = WORD4(v46);
    *&v40[16] = v46;
    sub_20CFDAFC8(&v43, &v31);
    sub_20CFD7ED4(&v41, &v31);
    sub_20CFDAF98(&v39);
    v37 = v41;
    v22 = *&v42[8];
    v38 = *v42;
    *&v34 = *&v42[16];
    WORD4(v34) = *&v42[24];
    if (*(&v41 + 1) == 3)
    {

      v22 = 0;
    }

    v29 = v41;
    v30[0] = *v42;
    *(v30 + 10) = *&v42[10];
    sub_20CFD910C(v43, v47, &v29, &v31);
    v28 = *&v32[16];
    v23 = v33;
    sub_20CFD9DD8(v19, *(&v19 + 1), v20, *(&v20 + 1), v21, *(&v21 + 1));
    v24 = v31;
    v25 = *v32;
    v26 = v37;
    *a2 = v36;
    *(a2 + 16) = v26;
    *(a2 + 32) = v38;
    *(a2 + 40) = v22;
    v27 = v35;
    *(a2 + 48) = v34;
    *(a2 + 64) = v27;
    *(a2 + 80) = v24;
    *(a2 + 96) = v25;
    result = v28;
    *(a2 + 112) = v28;
    *(a2 + 128) = v23;
  }

  return result;
}

uint64_t BaseIconView.Configuration.hash(into:)()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 96);
  v5 = *(v0 + 120);
  MEMORY[0x20F31E200](*v0);
  sub_20D568D68();
  if (v1)
  {
    v6 = v1;
    sub_20D568408();
  }

  BaseIconView.Context.hash(into:)();
  MEMORY[0x20F31E200]([v2 hash]);
  v7 = 0.0;
  if (v3 != 0.0)
  {
    v7 = v3;
  }

  MEMORY[0x20F31E230](*&v7);
  if (v5 < 0)
  {
    MEMORY[0x20F31E200](1);
    return BaseIconView.Configuration.ViewConfiguration.Icon.hash(into:)();
  }

  else
  {
    MEMORY[0x20F31E200](0);
    sub_20D5678C8();
    MEMORY[0x20F31E200](v4);
    sub_20D568408();
    sub_20D568408();
    return sub_20D568D68();
  }
}

uint64_t BaseIconView.Configuration.hashValue.getter()
{
  sub_20D568D48();
  BaseIconView.Configuration.hash(into:)();
  return sub_20D568D98();
}

uint64_t sub_20CFD9C74()
{
  sub_20D568D48();
  BaseIconView.Configuration.hash(into:)();
  return sub_20D568D98();
}

uint64_t sub_20CFD9CB8()
{
  sub_20D568D48();
  BaseIconView.Configuration.hash(into:)();
  return sub_20D568D98();
}

unint64_t BaseIconView.ViewType.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

unint64_t sub_20CFD9D2C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_20CFDB274(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id sub_20CFD9D60(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5, uint64_t a6)
{
  if (a6 < 0)
  {
    v8 = a5;
    swift_unknownObjectRetain();
    v11 = a4;
  }

  else
  {
    v11 = a5;
    sub_20D5663C8();
    a2 = a4;
  }

  v9 = a2;

  return v11;
}

void sub_20CFD9DD8(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5, uint64_t a6)
{
  if (a6 < 0)
  {
    swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t BaseIconView.State.hash(into:)()
{
  sub_20D568D68();
  sub_20D568D68();
  return sub_20D568D68();
}

uint64_t BaseIconView.State.hashValue.getter()
{
  sub_20D568D48();
  sub_20D568D68();
  sub_20D568D68();
  sub_20D568D68();
  return sub_20D568D98();
}

uint64_t sub_20CFD9F34()
{
  sub_20D568D68();
  sub_20D568D68();
  return sub_20D568D68();
}

uint64_t sub_20CFD9F80()
{
  sub_20D568D48();
  sub_20D568D68();
  sub_20D568D68();
  sub_20D568D68();
  return sub_20D568D98();
}

uint64_t sub_20CFDA024@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = a1;
  v4 = sub_20D567ED8();
  if ((v5 & 1) != 0 || v4)
  {
    MEMORY[0x20F31D7A0](v12, *MEMORY[0x277D13E68]);
    v6 = v12[3] != 0;
    sub_20CEF928C(v12, &qword_27C81BF00);
  }

  else
  {
    v6 = 1;
  }

  v7 = v3;
  result = sub_20D567ED8();
  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v11 = result;
    result = sub_20CFDA504(v7, result);
    v10 = (v11 == 2) | result;
  }

  *a2 = v10 & 1;
  a2[1] = v6;
  a2[2] = 0;
  return result;
}

uint64_t BaseIconView.Context.hash(into:)()
{
  v1 = *(v0 + 8);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4 = *(v0 + 41);
  sub_20D568D68();
  sub_20D568D68();
  sub_20D568D68();
  MEMORY[0x20F31E200](v1);
  sub_20D568D68();
  if (v3)
  {
    sub_20D568D68();
    v5 = v3;
    sub_20D568408();

    if (v2)
    {
LABEL_3:
      sub_20D568D68();
      v6 = v2;
      sub_20D568408();

      goto LABEL_6;
    }
  }

  else
  {
    sub_20D568D68();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  sub_20D568D68();
LABEL_6:
  sub_20D568D68();
  if (v4 != 2)
  {
    sub_20D568D68();
  }

  return sub_20D568D68();
}

uint64_t BaseIconView.Context.hashValue.getter()
{
  sub_20D568D48();
  BaseIconView.Context.hash(into:)();
  return sub_20D568D98();
}

uint64_t sub_20CFDA250()
{
  sub_20D568D48();
  BaseIconView.Context.hash(into:)();
  return sub_20D568D98();
}

uint64_t sub_20CFDA294()
{
  sub_20D568D48();
  BaseIconView.Context.hash(into:)();
  return sub_20D568D98();
}

uint64_t BaseIconView.Errors.hashValue.getter()
{
  sub_20D568D48();
  MEMORY[0x20F31E200](0);
  return sub_20D568D98();
}

uint64_t sub_20CFDA348()
{
  sub_20D568D48();
  MEMORY[0x20F31E200](0);
  return sub_20D568D98();
}

uint64_t sub_20CFDA3B4()
{
  sub_20D568D48();
  MEMORY[0x20F31E200](0);
  return sub_20D568D98();
}

uint64_t sub_20CFDA400()
{
  v1 = *v0;
  sub_20D568D48();
  MEMORY[0x20F31E200]([v1 hash]);
  return sub_20D568D98();
}

uint64_t sub_20CFDA48C()
{
  v1 = *v0;
  sub_20D568D48();
  MEMORY[0x20F31E200]([v1 hash]);
  return sub_20D568D98();
}

BOOL sub_20CFDA504(uint64_t a1, id a2)
{
  MEMORY[0x20F31D7A0](v6, *MEMORY[0x277D140C8]);
  if (v6[3])
  {
    sub_20CECF940(0, &qword_28111FB20);
    if (swift_dynamicCast())
    {
      v3 = [v5 integerValue];

      return v3 != a2;
    }
  }

  else
  {
    sub_20CEF928C(v6, &qword_27C81BF00);
  }

  return 0;
}

uint64_t _s6HomeUI12BaseIconViewC7ContextV2eeoiySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  result = 0;
  if (*a1 == *a2 && ((a1[1] ^ a2[1]) & 1) == 0 && ((a1[2] ^ a2[2]) & 1) == 0)
  {
    result = 0;
    if (*(a1 + 1) == *(a2 + 1) && ((a2[16] ^ a1[16]) & 1) == 0)
    {
      v4 = *(a1 + 3);
      v5 = *(a1 + 4);
      v6 = a1[40];
      v7 = a1[41];
      v8 = *(a2 + 3);
      v9 = *(a2 + 4);
      v10 = a2[40];
      v11 = a2[41];
      if (v4)
      {
        if (!v8)
        {
          return 0;
        }

        sub_20CECF940(0, &qword_28111FB60);
        v12 = v8;
        v13 = v4;
        v14 = sub_20D5683F8();

        if ((v14 & 1) == 0)
        {
          return 0;
        }
      }

      else if (v8)
      {
        return 0;
      }

      if (!v5)
      {
        result = 0;
        if (v9)
        {
          return result;
        }

        goto LABEL_16;
      }

      if (v9)
      {
        sub_20CECF940(0, &qword_28111FB60);
        v15 = v9;
        v16 = v5;
        v17 = sub_20D5683F8();

        result = 0;
        if ((v17 & 1) == 0)
        {
          return result;
        }

LABEL_16:
        if ((v6 ^ v10))
        {
          return result;
        }

        if (v7 == 2)
        {
          if (v11 != 2)
          {
            return 0;
          }
        }

        else if (v11 == 2 || ((v11 ^ v7) & 1) != 0)
        {
          return 0;
        }

        return 1;
      }

      return 0;
    }
  }

  return result;
}

uint64_t _s6HomeUI12BaseIconViewC13ConfigurationV0eF0O0D0V15BackgroundStyleO2eeoiySbAK_AKtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else if (*(a2 + 8))
  {
    return 0;
  }

  sub_20CECF940(0, &qword_28111FB10);
  v5 = v3;
  v6 = v2;
  v7 = sub_20D5683F8();

  return v7 & 1;
}

id _s6HomeUI12BaseIconViewC13ConfigurationV0eF0O0D0V2eeoiySbAI_AItFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a2 + 8);
  v8 = *(a2 + 24);
  v7 = *(a2 + 32);
  v9 = *(a2 + 40);
  v10 = *(a2 + 41);
  if (*(a1 + 16))
  {
    if ((*(a2 + 16) & 1) == 0)
    {
      return 0;
    }
  }

  else if (*(a2 + 16))
  {
    return 0;
  }

  v25 = *(a1 + 41);
  v23 = *(a2 + 48);
  v24 = *(a1 + 48);
  sub_20CECF940(0, &qword_28111FB10);
  v12 = v6;
  v13 = v2;
  v14 = v12;
  v15 = v13;
  v16 = sub_20D5683F8();

  if ((v16 & 1) == 0)
  {
    return 0;
  }

  if (v3)
  {
    if (!v8)
    {
      return 0;
    }

    sub_20CECF940(0, &qword_28111FB60);
    v17 = v8;
    v18 = v3;
    v19 = sub_20D5683F8();

    if ((v19 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  if (!v4)
  {
    result = 0;
    if (v7)
    {
      return result;
    }

    goto LABEL_20;
  }

  if (!v7)
  {
    return 0;
  }

  sub_20CECF940(0, &unk_28111FFA0);
  v20 = v7;
  v21 = v4;
  v22 = sub_20D5683F8();

  result = 0;
  if ((v22 & 1) == 0)
  {
    return result;
  }

LABEL_20:
  if (((v5 ^ v9) & 1) == 0 && ((v25 ^ v10) & 1) == 0)
  {
    return [v24 isEqual_];
  }

  return result;
}

uint64_t _s6HomeUI12BaseIconViewC13ConfigurationV0eF0O5LabelV2eeoiySbAI_AItFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 40);
  v4 = *(a2 + 16);
  v5 = *(a2 + 40);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    if (v2 != v4)
    {
      return 0;
    }
  }

  else
  {
    v6 = sub_20D568BF8();
    result = 0;
    if ((v6 & 1) == 0 || v2 != v4)
    {
      return result;
    }
  }

  sub_20CECF940(0, &qword_28111FB10);
  if ((sub_20D5683F8() & 1) == 0)
  {
    return 0;
  }

  if (sub_20D5683F8())
  {
    return v3 ^ v5 ^ 1u;
  }

  else
  {
    return 0;
  }
}

uint64_t _s6HomeUI12BaseIconViewC13ConfigurationV0eF0O2eeoiySbAG_AGtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  v9 = *a2;
  v8 = a2[1];
  v11 = a2[2];
  v10 = a2[3];
  v12 = a2[5];
  v39 = a2[4];
  v40 = a2[6];
  v41 = a1[6];
  v38 = v11;
  if (v7 < 0)
  {
    v57 = v5 & 1;
    if (v12 < 0)
    {
      v56 = v11 & 1;
      v49 = v2;
      v50 = v3;
      LOBYTE(v51) = v57;
      v52 = v4;
      v53 = v6;
      v54 = v7 & 0x101;
      v55 = v41;
      v42 = v9;
      v43 = v8;
      LOBYTE(v44) = v11 & 1;
      v45 = v10;
      v46 = v39;
      v47 = v12 & 0x101;
      v48 = v40;
      v36 = v9;
      v28 = v11;
      v29 = v8;
      v31 = v8;
      sub_20CFD9D60(v9, v8, v28, v10, v39, v12);
      sub_20CFD9D60(v2, v3, v5, v4, v6, v7);
      sub_20CFD9D60(v2, v3, v5, v4, v6, v7);
      sub_20CFD9D60(v36, v29, v38, v10, v39, v12);
      v32 = _s6HomeUI12BaseIconViewC13ConfigurationV0eF0O0D0V2eeoiySbAI_AItFZ_0(&v49, &v42);
      sub_20CFD9DD8(v2, v3, v5, v4, v6, v7);
      sub_20CFD9DD8(v36, v31, v38, v10, v39, v12);
      sub_20CFD9DD8(v36, v31, v38, v10, v39, v12);
      v18 = v2;
      v19 = v3;
      v20 = v5;
      v21 = v4;
      v22 = v6;
      v17 = v32;
      v23 = v7;
      goto LABEL_7;
    }
  }

  else if ((v12 & 0x8000000000000000) == 0)
  {
    v13 = a2[2];
    v49 = *a1;
    v14 = v49;
    v50 = v3;
    v51 = v5;
    v52 = v4;
    v53 = v6;
    LOBYTE(v54) = v7 & 1;
    v42 = v9;
    v43 = v8;
    v44 = v13;
    v45 = v10;
    v46 = v39;
    LOBYTE(v47) = v12 & 1;
    v35 = v9;
    v37 = v10;
    v15 = v10;
    v16 = v8;
    sub_20CFD9D60(v9, v8, v13, v15, v39, v12);
    sub_20CFD9D60(v49, v3, v5, v4, v6, v7);
    sub_20CFD9D60(v49, v3, v5, v4, v6, v7);
    sub_20CFD9D60(v35, v16, v38, v37, v39, v12);
    v17 = _s6HomeUI12BaseIconViewC13ConfigurationV0eF0O5LabelV2eeoiySbAI_AItFZ_0(&v49, &v42);
    sub_20CFD9DD8(v14, v3, v5, v4, v6, v7);
    sub_20CFD9DD8(v35, v16, v38, v37, v39, v12);
    sub_20CFD9DD8(v35, v16, v38, v37, v39, v12);
    v18 = v14;
    v19 = v3;
    v20 = v5;
    v21 = v4;
    v22 = v6;
    v23 = v7;
LABEL_7:
    sub_20CFD9DD8(v18, v19, v20, v21, v22, v23);
    return v17 & 1;
  }

  v24 = v2;
  v33 = v2;
  v34 = v3;
  v25 = v9;
  v26 = v3;
  v27 = v8;
  sub_20CFD9D60(v24, v26, v5, v4, v6, v7);
  sub_20CFD9D60(v25, v27, v11, v10, v39, v12);
  sub_20CFD9DD8(v33, v34, v5, v4, v6, v7);
  sub_20CFD9DD8(v25, v27, v11, v10, v39, v12);
  v17 = 0;
  return v17 & 1;
}

double sub_20CFDAF0C(uint64_t a1)
{
  *(a1 + 128) = 0;
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_20CFDAF28(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81EB60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _s6HomeUI12BaseIconViewC13ConfigurationV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 2);
  v45 = *(a1 + 1);
  v46[0] = v4;
  *(v46 + 10) = *(a1 + 42);
  v5 = a1[8];
  v6 = *(a1 + 9);
  v7 = a1[10];
  v8 = a1[11];
  v9 = a1[12];
  v10 = a1[13];
  v11 = a1[14];
  v12 = a1[15];
  v13 = a1[16];
  v14 = *a2;
  v15 = a2[1];
  *(v48 + 10) = *(a2 + 42);
  v16 = *(a2 + 2);
  v47 = *(a2 + 1);
  v48[0] = v16;
  if (v2 != v14)
  {
    goto LABEL_11;
  }

  v17 = *(a2 + 9);
  if (v3)
  {
    if (!v15)
    {
      goto LABEL_11;
    }

    v32 = a2[15];
    v33 = a2[8];
    v30 = v7;
    v31 = a2[16];
    v24 = a2[14];
    v25 = a2[13];
    v26 = a2[12];
    v27 = a2[11];
    v28 = a2[10];
    v29 = v8;
    sub_20CECF940(0, &qword_28111FB60);
    v18 = v15;
    v19 = v3;
    v20 = sub_20D5683F8();

    if ((v20 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v32 = a2[15];
    v33 = a2[8];
    v30 = v7;
    v31 = a2[16];
    v24 = a2[14];
    v25 = a2[13];
    v26 = a2[12];
    v27 = a2[11];
    v28 = a2[10];
    v29 = v8;
    if (v15)
    {
LABEL_11:
      v22 = 0;
      return v22 & 1;
    }
  }

  v37 = v45;
  *v38 = v46[0];
  *&v38[10] = *(v46 + 10);
  v34 = v47;
  *v35 = v48[0];
  *&v35[10] = *(v48 + 10);
  sub_20CFD7ED4(&v45, v40);
  sub_20CFD7ED4(&v47, v40);
  v21 = _s6HomeUI12BaseIconViewC7ContextV2eeoiySbAE_AEtFZ_0(&v37, &v34);
  v41 = v34;
  v42[0] = *v35;
  *(v42 + 10) = *&v35[10];
  sub_20CFDAF98(&v41);
  v43 = v37;
  v44[0] = *v38;
  *(v44 + 10) = *&v38[10];
  sub_20CFDAF98(&v43);
  if ((v21 & 1) == 0 || ![v5 isEqual_] || v6 != v17)
  {
    goto LABEL_11;
  }

  *&v37 = v30;
  *(&v37 + 1) = v29;
  *v38 = v9;
  *&v38[8] = v10;
  *&v38[16] = v11;
  *&v38[24] = v12;
  v39 = v13;
  *&v34 = v28;
  *(&v34 + 1) = v27;
  *v35 = v26;
  *&v35[8] = v25;
  *&v35[16] = v24;
  *&v35[24] = v32;
  v36 = v31;
  sub_20CFD9D60(v30, v29, v9, v10, v11, v12);
  sub_20CFD9D60(v28, v27, v26, v25, v24, v32);
  v22 = _s6HomeUI12BaseIconViewC13ConfigurationV0eF0O2eeoiySbAG_AGtFZ_0(&v37, &v34);
  sub_20CFD9DD8(v34, *(&v34 + 1), *v35, *&v35[8], *&v35[16], *&v35[24]);
  sub_20CFD9DD8(v37, *(&v37 + 1), *v38, *&v38[8], *&v38[16], *&v38[24]);
  return v22 & 1;
}

unint64_t sub_20CFDB274(unint64_t result)
{
  if (result > 4)
  {
    return 0;
  }

  return result;
}

unint64_t sub_20CFDB288()
{
  result = qword_27C81EB80;
  if (!qword_27C81EB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81EB80);
  }

  return result;
}

unint64_t sub_20CFDB2E0()
{
  result = qword_27C81EB88;
  if (!qword_27C81EB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81EB88);
  }

  return result;
}

unint64_t sub_20CFDB338()
{
  result = qword_27C81EB90;
  if (!qword_27C81EB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81EB90);
  }

  return result;
}

unint64_t sub_20CFDB390()
{
  result = qword_27C81EB98;
  if (!qword_27C81EB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81EB98);
  }

  return result;
}

unint64_t sub_20CFDB3E8()
{
  result = qword_27C81EBA0;
  if (!qword_27C81EBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81EBA0);
  }

  return result;
}

unint64_t sub_20CFDB440()
{
  result = qword_27C81EBA8;
  if (!qword_27C81EBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81EBA8);
  }

  return result;
}

unint64_t sub_20CFDB498()
{
  result = qword_27C81EBB0;
  if (!qword_27C81EBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81EBB0);
  }

  return result;
}

unint64_t sub_20CFDB4F0()
{
  result = qword_27C81EBB8;
  if (!qword_27C81EBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81EBB8);
  }

  return result;
}

unint64_t sub_20CFDB548()
{
  result = qword_27C81EBC0;
  if (!qword_27C81EBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81EBC0);
  }

  return result;
}

unint64_t sub_20CFDB5A0()
{
  result = qword_27C81EBC8;
  if (!qword_27C81EBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81EBC8);
  }

  return result;
}

__n128 __swift_memcpy136_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_20CFDB640(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_20CFDB688(uint64_t result, int a2, int a3)
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
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_20CFDB714(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 40) >> 2) & 0xFFFFFF80 | (*(a1 + 40) >> 1);
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_20CFDB768(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 56) = 1;
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
      result = 0.0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0;
      *(a1 + 40) = (4 * -a2) & 0x3FFFFFE00 | (2 * (-a2 & 0x7FLL));
      *(a1 + 48) = 0;
      return result;
    }

    *(a1 + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
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

uint64_t sub_20CFDB818(uint64_t a1, int a2)
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

uint64_t sub_20CFDB860(uint64_t result, int a2, int a3)
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

uint64_t sub_20CFDB8BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_20CFDB904(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_20CFDB960(uint64_t a1, unsigned int a2)
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

uint64_t sub_20CFDB9A8(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t __swift_memcpy3_1(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t _s5StateVwet(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }
  }

  v4 = *a1;
  v5 = v4 >= 2;
  v6 = (v4 + 2147483646) & 0x7FFFFFFF;
  if (!v5)
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t _s5StateVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *result = a2 + 1;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

__n128 __swift_memcpy42_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_20CFDBB6C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 42))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_20CFDBBC8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 42) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 42) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

unint64_t sub_20CFDBC5C()
{
  result = qword_27C81EBD0;
  if (!qword_27C81EBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81EBD0);
  }

  return result;
}

uint64_t sub_20CFDBDBC(uint64_t a1)
{
  v3 = OBJC_IVAR___HUUtilityOnboardingLoadingViewController_delegate;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_20CFDBE14(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___HUUtilityOnboardingLoadingViewController_delegate;
  swift_beginAccess();
  *(v3 + v4) = v2;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

id UtilityOnboardingLoadingViewController.init(context:)(void *a1)
{
  v2 = v1;
  *&v2[OBJC_IVAR___HUUtilityOnboardingLoadingViewController_delegate] = 0;
  *&v2[OBJC_IVAR___HUUtilityOnboardingLoadingViewController_onboardingContext] = a1;
  v4 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81EBF0));
  v5 = a1;
  *&v2[OBJC_IVAR___HUUtilityOnboardingLoadingViewController_rootVC] = sub_20D566C08();
  v6 = sub_20D5677F8();
  v7 = HULocalizedString(v6);

  if (!v7)
  {
    sub_20D567838();
    v7 = sub_20D5677F8();
  }

  v10.receiver = v2;
  v10.super_class = type metadata accessor for UtilityOnboardingLoadingViewController();
  v8 = objc_msgSendSuper2(&v10, sel_initWithTitle_detailText_icon_contentLayout_, v7, 0, 0, 2);

  return v8;
}

void sub_20CFDC06C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C610);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v52 - v3;
  v5 = type metadata accessor for UtilityOnboardingLoadingViewController();
  v54.receiver = v0;
  v54.super_class = v5;
  objc_msgSendSuper2(&v54, sel_viewDidLoad);
  sub_20CEF3A4C(&unk_2823CE508);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81E440);
  swift_arrayDestroy();
  v6 = [v0 headerView];
  v7 = [v6 subviews];

  if (!v7)
  {
    sub_20CECF940(0, &qword_28111FB70);
    sub_20D567A78();
    v7 = sub_20D567A58();
  }

  v8 = objc_opt_self();
  v9 = sub_20D567738();
  [v8 setAccessibilityIDForViews:v7 withIDDictionary:v9];

  v10 = *&v1[OBJC_IVAR___HUUtilityOnboardingLoadingViewController_onboardingContext];
  v11 = [v1 headerView];
  sub_20CEE70AC(v11);

  v12 = *&v1[OBJC_IVAR___HUUtilityOnboardingLoadingViewController_rootVC];
  v13 = [v12 view];
  if (!v13)
  {
    __break(1u);
    goto LABEL_11;
  }

  v14 = v13;
  [v13 setTranslatesAutoresizingMaskIntoConstraints_];

  v15 = [v1 contentView];
  v16 = [v12 view];
  if (!v16)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v17 = v16;
  v53 = v4;
  [v15 addSubview_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_20D5BC4C0;
  v19 = [v12 view];
  if (!v19)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v20 = v19;
  v21 = [v19 topAnchor];

  v22 = [v1 contentView];
  v23 = [v22 topAnchor];

  v24 = [v21 constraintEqualToAnchor_];
  *(v18 + 32) = v24;
  v25 = [v12 view];
  if (!v25)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v26 = v25;
  v27 = [v25 centerXAnchor];

  v28 = [v1 contentView];
  v29 = [v28 centerXAnchor];

  v30 = [v27 constraintEqualToAnchor_];
  *(v18 + 40) = v30;
  v31 = [v12 view];
  if (!v31)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v32 = v31;
  v33 = [v31 leadingAnchor];

  v34 = [v1 contentView];
  v35 = [v34 leadingAnchor];

  v36 = [v33 constraintEqualToAnchor_];
  *(v18 + 48) = v36;
  v37 = [v12 view];
  if (v37)
  {
    v38 = v37;

    v39 = objc_opt_self();
    v40 = [v38 trailingAnchor];

    v41 = [v1 contentView];
    v42 = [v41 trailingAnchor];

    v43 = [v40 constraintGreaterThanOrEqualToAnchor_];
    *(v18 + 56) = v43;
    sub_20CECF940(0, &qword_28111FEC0);
    v44 = sub_20D567A58();

    [v39 activateConstraints_];

    [v1 updateViewConstraints];
    v45 = sub_20D567C58();
    v46 = v53;
    (*(*(v45 - 8) + 56))(v53, 1, 1, v45);
    sub_20D567C18();
    v47 = v1;
    v48 = sub_20D567C08();
    v49 = swift_allocObject();
    v50 = MEMORY[0x277D85700];
    v49[2] = v48;
    v49[3] = v50;
    v49[4] = v47;
    sub_20CF18960(0, 0, v46, &unk_20D5C34A8, v49);

    [v47 setModalInPresentation_];
    v51 = [v47 navigationItem];
    [v51 setHidesBackButton_];

    return;
  }

LABEL_15:
  __break(1u);
}

uint64_t sub_20CFDC744(char a1)
{
  v3 = sub_20D565988();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UtilityOnboardingLoadingViewController();
  v20.receiver = v1;
  v20.super_class = v7;
  objc_msgSendSuper2(&v20, sel_viewWillAppear_, a1 & 1);
  if (qword_27C81A2D8 != -1)
  {
    swift_once();
  }

  v8 = qword_27C838280;
  sub_20D565998();
  v9 = v1;
  v10 = sub_20D565968();
  v11 = sub_20D567E98();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v19 = v14;
    *v12 = 136315650;
    *(v12 + 4) = sub_20CEE913C(0xD000000000000012, 0x800000020D5D32F0, &v19);
    *(v12 + 12) = 2112;
    v15 = [v9 contentView];
    *(v12 + 14) = v15;
    *v13 = v15;
    *(v12 + 22) = 2112;
    v16 = [v9 view];
    *(v12 + 24) = v16;
    v13[1] = v16;
    _os_log_impl(&dword_20CEB6000, v10, v11, "%s\n\tcontentView: %@\n\tview: %@", v12, 0x20u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81BE60);
    swift_arrayDestroy();
    MEMORY[0x20F31FC70](v13, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x20F31FC70](v14, -1, -1);
    MEMORY[0x20F31FC70](v12, -1, -1);
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_20CFDCA34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[92] = a4;
  v5 = sub_20D5633F8();
  v4[93] = v5;
  v4[94] = *(v5 - 8);
  v4[95] = swift_task_alloc();
  v6 = sub_20D565988();
  v4[96] = v6;
  v4[97] = *(v6 - 8);
  v4[98] = swift_task_alloc();
  v4[99] = swift_task_alloc();
  v4[100] = swift_task_alloc();
  v4[101] = swift_task_alloc();
  v4[102] = swift_task_alloc();
  v4[103] = swift_task_alloc();
  v4[104] = swift_task_alloc();
  v4[105] = sub_20D567C18();
  v4[106] = sub_20D567C08();
  v8 = sub_20D567BA8();
  v4[107] = v8;
  v4[108] = v7;

  return MEMORY[0x2822009F8](sub_20CFDCBD4, v8, v7);
}

uint64_t sub_20CFDCBD4()
{
  v1 = v0[92];
  v0[91] = 13;
  v0[88] = MEMORY[0x277D84F98];
  v2 = OBJC_IVAR___HUUtilityOnboardingLoadingViewController_onboardingContext;
  v0[109] = OBJC_IVAR___HUUtilityOnboardingLoadingViewController_onboardingContext;
  v3 = *(v1 + v2);
  v0[110] = v3;
  v3;
  v4 = swift_task_alloc();
  v0[111] = v4;
  *v4 = v0;
  v4[1] = sub_20CFDCC9C;

  return sub_20CEE40A4();
}

uint64_t sub_20CFDCC9C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 896) = a1;
  *(v3 + 904) = v1;

  if (v1)
  {
    v4 = *(v3 + 864);
    v5 = *(v3 + 856);
    v6 = sub_20CFDE824;
  }

  else
  {

    v4 = *(v3 + 864);
    v5 = *(v3 + 856);
    v6 = sub_20CFDCDC4;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_20CFDCDC4()
{
  v141 = v0;
  v1 = *(v0 + 896);
  v2 = *(v1 + 16);
  if (v2 != 1)
  {
    if (v2)
    {

      if (qword_27C81A2D8 != -1)
      {
        swift_once();
      }

      v32 = qword_27C838280;
      sub_20D565998();
      v33 = sub_20D565968();
      v34 = sub_20D567EC8();
      v35 = os_log_type_enabled(v33, v34);
      v36 = *(v0 + 824);
      v37 = *(v0 + 776);
      v38 = *(v0 + 768);
      if (v35)
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v140[0] = v40;
        *v39 = 136315138;
        *(v39 + 4) = sub_20CEE913C(0xD000000000000016, 0x800000020D5D33A0, v140);
        _os_log_impl(&dword_20CEB6000, v33, v34, "%s Multiple service locations", v39, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v40);
        MEMORY[0x20F31FC70](v40, -1, -1);
        MEMORY[0x20F31FC70](v39, -1, -1);
      }

      (*(v37 + 8))(v36, v38);
      v41 = sub_20D564B68();
      *(v0 + 120) = v41;
      *(v0 + 128) = sub_20CF26DDC();
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 96));
      (*(*(v41 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D07370], v41);
      LOBYTE(v41) = sub_20D563968();
      __swift_destroy_boxed_opaque_existential_1(v0 + 96);
      v43 = 19;
      if (v41)
      {
        v43 = 9;
      }

      *(v0 + 728) = v43;
      v44 = *(v0 + 904);
      goto LABEL_34;
    }

    if (qword_27C81A2D8 != -1)
    {
      swift_once();
    }

    v3 = qword_27C838280;
    sub_20D565998();
    v4 = sub_20D565968();
    v5 = sub_20D567EA8();
    v6 = os_log_type_enabled(v4, v5);
    v7 = *(v0 + 832);
    v8 = *(v0 + 776);
    v9 = *(v0 + 768);
    if (!v6)
    {
LABEL_29:

      (*(v8 + 8))(v7, v9);
      sub_20CEF5CA0();
      v47 = swift_allocError();
      *v48 = 10;
      swift_willThrow();
      if (qword_27C81A2D8 != -1)
      {
        swift_once();
      }

      v49 = qword_27C838280;
      sub_20D565998();
      v50 = v47;
      v51 = sub_20D565968();
      v52 = sub_20D567EA8();

      v53 = os_log_type_enabled(v51, v52);
      v54 = *(v0 + 784);
      v55 = *(v0 + 776);
      v56 = *(v0 + 768);
      if (v53)
      {
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v140[0] = v59;
        *v57 = 136315394;
        *(v57 + 4) = sub_20CEE913C(0xD000000000000016, 0x800000020D5D33A0, v140);
        *(v57 + 12) = 2112;
        v60 = v47;
        v61 = _swift_stdlib_bridgeErrorToNSError();
        *(v57 + 14) = v61;
        *v58 = v61;
        _os_log_impl(&dword_20CEB6000, v51, v52, "%s Error found %@", v57, 0x16u);
        sub_20CF31DFC(v58);
        MEMORY[0x20F31FC70](v58, -1, -1);
        __swift_destroy_boxed_opaque_existential_1(v59);
        MEMORY[0x20F31FC70](v59, -1, -1);
        MEMORY[0x20F31FC70](v57, -1, -1);
      }

      (*(v55 + 8))(v54, v56);
      swift_beginAccess();
      *(v0 + 728) = 13;
      v62 = sub_20D567838();
      v64 = v63;
      swift_getErrorValue();
      v65 = *(v0 + 496);
      v66 = *(v0 + 504);
      *(v0 + 424) = v66;
      v67 = __swift_allocate_boxed_opaque_existential_1((v0 + 400));
      (*(*(v66 - 8) + 16))(v67, v65, v66);
      sub_20CEC80B0((v0 + 400), (v0 + 208));
      v68 = *(v0 + 704);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v140[0] = v68;
      sub_20CEEF74C((v0 + 208), v62, v64, isUniquelyReferenced_nonNull_native);

      v44 = 0;
      *(v0 + 704) = v140[0];
LABEL_34:
      *(v0 + 976) = v44;

      return MEMORY[0x2822009F8](sub_20CFDE604, 0, 0);
    }

    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v140[0] = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_20CEE913C(0xD000000000000016, 0x800000020D5D33A0, v140);
    v12 = "%s No service locations found";
LABEL_28:
    _os_log_impl(&dword_20CEB6000, v4, v5, v12, v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x20F31FC70](v11, -1, -1);
    MEMORY[0x20F31FC70](v10, -1, -1);
    goto LABEL_29;
  }

  v13 = *(v1 + 32);
  sub_20D5663C8();

  if (!*(v13 + 16) || (v14 = sub_20CEED668(0xD000000000000011, 0x800000020D5D33C0), (v15 & 1) == 0) || (sub_20CED43FC(*(v13 + 56) + 32 * v14, v0 + 240), (swift_dynamicCast() & 1) == 0))
  {
LABEL_24:

    if (qword_27C81A2D8 != -1)
    {
      swift_once();
    }

    v45 = qword_27C838280;
    sub_20D565998();
    v4 = sub_20D565968();
    v5 = sub_20D567EA8();
    v46 = os_log_type_enabled(v4, v5);
    v7 = *(v0 + 792);
    v8 = *(v0 + 776);
    v9 = *(v0 + 768);
    if (!v46)
    {
      goto LABEL_29;
    }

    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v140[0] = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_20CEE913C(0xD000000000000016, 0x800000020D5D33A0, v140);
    v12 = "%s No service location ID found";
    goto LABEL_28;
  }

  v16 = *(v0 + 584);
  v17 = *(v0 + 592);
  *(v0 + 912) = v17;
  if (!*(v13 + 16) || (v18 = sub_20CEED668(0x73736572646461, 0xE700000000000000), (v19 & 1) == 0))
  {

    goto LABEL_24;
  }

  sub_20CED43FC(*(v13 + 56) + 32 * v18, v0 + 272);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C820E30);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_24;
  }

  v134 = v16;
  v20 = *(v0 + 720);
  if (qword_27C81A2D8 != -1)
  {
LABEL_125:
    swift_once();
  }

  v21 = qword_27C838280;
  *(v0 + 920) = qword_27C838280;
  v22 = v21;
  sub_20D565998();
  sub_20D5663C8();
  v23 = sub_20D565968();
  v24 = sub_20D567E98();

  v25 = os_log_type_enabled(v23, v24);
  v26 = *(v0 + 816);
  v27 = *(v0 + 776);
  v28 = *(v0 + 768);
  v130 = v17;
  if (v25)
  {
    v137 = *(v0 + 816);
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v140[0] = v30;
    *v29 = 136315394;
    *(v29 + 4) = sub_20CEE913C(0xD000000000000016, 0x800000020D5D33A0, v140);
    *(v29 + 12) = 2080;
    *(v29 + 14) = sub_20CEE913C(v134, v17, v140);
    _os_log_impl(&dword_20CEB6000, v23, v24, "%s Single service location %s", v29, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F31FC70](v30, -1, -1);
    MEMORY[0x20F31FC70](v29, -1, -1);

    v31 = *(v27 + 8);
    v31(v137, v28);
  }

  else
  {

    v31 = *(v27 + 8);
    v31(v26, v28);
  }

  *(v0 + 928) = v31;
  if (*(v20 + 16) && (v70 = sub_20CEED668(0x4C73736572646461, 0xEC00000031656E69), (v71 & 1) != 0))
  {
    sub_20CED43FC(*(v20 + 56) + 32 * v70, v0 + 304);
    v72 = swift_dynamicCast();
    if (v72)
    {
      v73 = *(v0 + 600);
    }

    else
    {
      v73 = 0;
    }

    if (v72)
    {
      v74 = *(v0 + 608);
    }

    else
    {
      v74 = 0;
    }
  }

  else
  {
    v73 = 0;
    v74 = 0;
  }

  if (*(v20 + 16) && (v75 = sub_20CEED668(0x4C73736572646461, 0xEC00000032656E69), (v76 & 1) != 0))
  {
    sub_20CED43FC(*(v20 + 56) + 32 * v75, v0 + 336);
    v77 = swift_dynamicCast();
    v78 = *(v0 + 632);
    if (!v77)
    {
      v78 = 0;
    }

    v138 = v78;
    if (v77)
    {
      v79 = *(v0 + 640);
    }

    else
    {
      v79 = 0;
    }
  }

  else
  {
    v138 = 0;
    v79 = 0;
  }

  if (*(v20 + 16) && (v80 = sub_20CEED668(0x4C73736572646461, 0xEC00000033656E69), (v81 & 1) != 0))
  {
    sub_20CED43FC(*(v20 + 56) + 32 * v80, v0 + 368);
    v82 = swift_dynamicCast();
    if (v82)
    {
      v83 = *(v0 + 648);
    }

    else
    {
      v83 = 0;
    }

    if (v82)
    {
      v84 = *(v0 + 656);
    }

    else
    {
      v84 = 0;
    }
  }

  else
  {
    v83 = 0;
    v84 = 0;
  }

  if (*(v20 + 16) && (v85 = sub_20CEED668(2037672291, 0xE400000000000000), (v86 & 1) != 0))
  {
    sub_20CED43FC(*(v20 + 56) + 32 * v85, v0 + 176);
    if (swift_dynamicCast())
    {
      v87 = *(v0 + 576);
    }

    else
    {
      v87 = 0;
    }

    v133 = v87;
  }

  else
  {
    v133 = 0;
  }

  if (*(v20 + 16) && (v88 = sub_20CEED668(0x6574617473, 0xE500000000000000), (v89 & 1) != 0))
  {
    sub_20CED43FC(*(v20 + 56) + 32 * v88, v0 + 432);
    if (swift_dynamicCast())
    {
      v90 = *(v0 + 688);
    }

    else
    {
      v90 = 0;
    }

    v132 = v90;
  }

  else
  {
    v132 = 0;
  }

  if (*(v20 + 16) && (v91 = sub_20CEED668(0x6F436C6174736F70, 0xEA00000000006564), (v92 & 1) != 0))
  {
    sub_20CED43FC(*(v20 + 56) + 32 * v91, v0 + 464);

    if (swift_dynamicCast())
    {
      v93 = *(v0 + 672);
    }

    else
    {
      v93 = 0;
    }

    v131 = v93;
  }

  else
  {

    v131 = 0;
  }

  v94 = *(v0 + 752);
  v95 = [objc_allocWithZone(MEMORY[0x277CBDB60]) init];
  v17 = 0;
  if (v74)
  {
    v96 = v73;
  }

  else
  {
    v96 = 0;
  }

  *(v0 + 48) = v96;
  v97 = 0xE000000000000000;
  if (v74)
  {
    v98 = v74;
  }

  else
  {
    v98 = 0xE000000000000000;
  }

  *(v0 + 56) = v98;
  v129 = v95;
  *(v0 + 936) = v95;
  v99 = v138;
  if (v79)
  {
    v100 = v79;
  }

  else
  {
    v99 = 0;
    v100 = 0xE000000000000000;
  }

  *(v0 + 64) = v99;
  *(v0 + 72) = v100;
  if (v84)
  {
    v101 = v83;
  }

  else
  {
    v101 = 0;
  }

  if (v84)
  {
    v97 = v84;
  }

  *(v0 + 80) = v101;
  *(v0 + 88) = v97;
  v136 = (v94 + 8);
  v135 = MEMORY[0x277D84F90];
  do
  {
    v102 = 3;
    if (v17 > 3)
    {
      v102 = v17;
    }

    v103 = (v0 + 56 + 16 * v17++);
    v139 = -v102;
    while (1)
    {
      if (v139 + v17 == 1)
      {
        __break(1u);
        goto LABEL_125;
      }

      v104 = *(v0 + 760);
      v105 = *(v0 + 744);
      v106 = *(v103 - 1);
      v107 = *v103;
      *(v0 + 616) = v106;
      *(v0 + 624) = v107;
      sub_20D5663C8();
      sub_20D5633B8();
      sub_20CEF44D8();
      v108 = sub_20D5685A8();
      v20 = v109;
      (*v136)(v104, v105);

      v110 = HIBYTE(v20) & 0xF;
      if ((v20 & 0x2000000000000000) == 0)
      {
        v110 = v108 & 0xFFFFFFFFFFFFLL;
      }

      if (v110)
      {
        break;
      }

      ++v17;
      v103 += 2;
      if (v17 == 4)
      {
        goto LABEL_115;
      }
    }

    v111 = v135;
    v112 = swift_isUniquelyReferenced_nonNull_native();
    v140[0] = v135;
    if ((v112 & 1) == 0)
    {
      sub_20CEF0AC8(0, *(v135 + 16) + 1, 1);
      v111 = v140[0];
    }

    v114 = *(v111 + 16);
    v113 = *(v111 + 24);
    if (v114 >= v113 >> 1)
    {
      sub_20CEF0AC8((v113 > 1), v114 + 1, 1);
      v111 = v140[0];
    }

    *(v111 + 16) = v114 + 1;
    v135 = v111;
    v115 = v111 + 16 * v114;
    *(v115 + 32) = v106;
    *(v115 + 40) = v107;
  }

  while (v17 != 3);
LABEL_115:
  swift_arrayDestroy();
  *(v0 + 712) = v135;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81EC30);
  sub_20CF156D0(&qword_281120040, &qword_27C81EC30);
  sub_20D5677D8();

  v116 = sub_20D5677F8();

  [v129 setStreet_];

  if (v133)
  {
    v117 = sub_20D5677F8();
    [v129 setCity_];
  }

  if (v132)
  {
    v118 = sub_20D5677F8();
    [v129 setState_];
  }

  if (v131)
  {
    v119 = sub_20D5677F8();
    [v129 setPostalCode_];
  }

  v120 = *(v0 + 872);
  v121 = *(v0 + 736);

  v122 = [objc_opt_self() stringFromPostalAddress:v129 style:0];
  v123 = sub_20D567838();
  v125 = v124;

  *(v0 + 944) = v125;
  v126 = *(v121 + v120);
  *(v0 + 952) = v126;
  v126;
  v127 = swift_task_alloc();
  *(v0 + 960) = v127;
  *v127 = v0;
  v127[1] = sub_20CFDDE4C;

  return sub_20CEE4BDC(v134, v130, v123, v125);
}

uint64_t sub_20CFDDE4C(char a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 992) = a1;
  *(v4 + 968) = v1;

  v5 = *(v3 + 952);
  if (v1)
  {

    v6 = *(v4 + 864);
    v7 = *(v4 + 856);
    v8 = sub_20CFDEB0C;
  }

  else
  {

    v6 = *(v4 + 864);
    v7 = *(v4 + 856);
    v8 = sub_20CFDDFE8;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_20CFDDFE8()
{
  v53 = v0;
  v1 = *(v0 + 920);
  sub_20D565998();
  v2 = sub_20D565968();
  v3 = sub_20D567EC8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 992);
    v5 = *(v0 + 928);
    v6 = *(v0 + 808);
    v7 = *(v0 + 768);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v52[0] = v9;
    *v8 = 136315650;
    *(v8 + 4) = sub_20CEE913C(0xD000000000000016, 0x800000020D5D33A0, v52);
    *(v8 + 12) = 1024;
    *(v8 + 14) = v4;
    *(v8 + 18) = 2048;
    *(v8 + 20) = 13;
    _os_log_impl(&dword_20CEB6000, v2, v3, "%s Subscription result: %{BOOL}d\t User Input: %lu", v8, 0x1Cu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x20F31FC70](v9, -1, -1);
    MEMORY[0x20F31FC70](v8, -1, -1);

    v5(v6, v7);
  }

  else
  {
    v10 = *(v0 + 928);
    v11 = *(v0 + 808);
    v12 = *(v0 + 768);

    v10(v11, v12);
  }

  if (*(v0 + 992) == 1)
  {
    v13 = *(v0 + 936);
    v14 = sub_20D564B68();
    *(v0 + 160) = v14;
    *(v0 + 168) = sub_20CF26DDC();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 136));
    (*(*(v14 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D07370], v14);
    LOBYTE(v14) = sub_20D563968();

    __swift_destroy_boxed_opaque_existential_1(v0 + 136);
    if (v14)
    {
      v16 = 10;
    }

    else
    {
      v16 = 17;
    }

    swift_beginAccess();
    *(v0 + 728) = v16;
    v17 = *(v0 + 968);
  }

  else
  {
    v18 = *(v0 + 920);
    sub_20D565998();
    v19 = sub_20D565968();
    v20 = sub_20D567EA8();
    v21 = os_log_type_enabled(v19, v20);
    v22 = *(v0 + 928);
    v23 = *(v0 + 800);
    v24 = *(v0 + 768);
    if (v21)
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v52[0] = v26;
      *v25 = 136315138;
      *(v25 + 4) = sub_20CEE913C(0xD000000000000016, 0x800000020D5D33A0, v52);
      _os_log_impl(&dword_20CEB6000, v19, v20, "%s Failure creating subscription", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x20F31FC70](v26, -1, -1);
      MEMORY[0x20F31FC70](v25, -1, -1);
    }

    v22(v23, v24);
    v27 = *(v0 + 936);
    sub_20CEF5CA0();
    v28 = swift_allocError();
    *v29 = 15;
    swift_willThrow();

    if (qword_27C81A2D8 != -1)
    {
      swift_once();
    }

    v30 = qword_27C838280;
    sub_20D565998();
    v31 = v28;
    v32 = sub_20D565968();
    v33 = sub_20D567EA8();

    v34 = os_log_type_enabled(v32, v33);
    v35 = *(v0 + 784);
    v36 = *(v0 + 776);
    v37 = *(v0 + 768);
    if (v34)
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v52[0] = v40;
      *v38 = 136315394;
      *(v38 + 4) = sub_20CEE913C(0xD000000000000016, 0x800000020D5D33A0, v52);
      *(v38 + 12) = 2112;
      v41 = v28;
      v42 = _swift_stdlib_bridgeErrorToNSError();
      *(v38 + 14) = v42;
      *v39 = v42;
      _os_log_impl(&dword_20CEB6000, v32, v33, "%s Error found %@", v38, 0x16u);
      sub_20CF31DFC(v39);
      MEMORY[0x20F31FC70](v39, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v40);
      MEMORY[0x20F31FC70](v40, -1, -1);
      MEMORY[0x20F31FC70](v38, -1, -1);
    }

    (*(v36 + 8))(v35, v37);
    swift_beginAccess();
    *(v0 + 728) = 13;
    v43 = sub_20D567838();
    v45 = v44;
    swift_getErrorValue();
    v46 = *(v0 + 496);
    v47 = *(v0 + 504);
    *(v0 + 424) = v47;
    v48 = __swift_allocate_boxed_opaque_existential_1((v0 + 400));
    (*(*(v47 - 8) + 16))(v48, v46, v47);
    sub_20CEC80B0((v0 + 400), (v0 + 208));
    v49 = *(v0 + 704);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v52[0] = v49;
    sub_20CEEF74C((v0 + 208), v43, v45, isUniquelyReferenced_nonNull_native);

    v17 = 0;
    *(v0 + 704) = v52[0];
  }

  *(v0 + 976) = v17;

  return MEMORY[0x2822009F8](sub_20CFDE604, 0, 0);
}

uint64_t sub_20CFDE604()
{
  *(v0 + 984) = sub_20D567C08();
  v2 = sub_20D567BA8();

  return MEMORY[0x2822009F8](sub_20CFDE690, v2, v1);
}

void sub_20CFDE690()
{
  v1 = v0[122];
  v2 = v0[92];

  sub_20CFDEDF4((v0 + 88), v0 + 91, v2);
  if (v1)
  {
  }

  else
  {
    v3 = v0[108];
    v4 = v0[107];

    MEMORY[0x2822009F8](sub_20CFDE744, v4, v3);
  }
}

uint64_t sub_20CFDE744()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20CFDE824()
{
  v25 = v0;

  v1 = *(v0 + 904);
  if (qword_27C81A2D8 != -1)
  {
    swift_once();
  }

  v2 = qword_27C838280;
  sub_20D565998();
  v3 = v1;
  v4 = sub_20D565968();
  v5 = sub_20D567EA8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 784);
  v8 = *(v0 + 776);
  v9 = *(v0 + 768);
  if (v6)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v24 = v12;
    *v10 = 136315394;
    *(v10 + 4) = sub_20CEE913C(0xD000000000000016, 0x800000020D5D33A0, &v24);
    *(v10 + 12) = 2112;
    v13 = v1;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v14;
    *v11 = v14;
    _os_log_impl(&dword_20CEB6000, v4, v5, "%s Error found %@", v10, 0x16u);
    sub_20CF31DFC(v11);
    MEMORY[0x20F31FC70](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x20F31FC70](v12, -1, -1);
    MEMORY[0x20F31FC70](v10, -1, -1);
  }

  (*(v8 + 8))(v7, v9);
  swift_beginAccess();
  *(v0 + 728) = 13;
  v15 = sub_20D567838();
  v17 = v16;
  swift_getErrorValue();
  v18 = *(v0 + 496);
  v19 = *(v0 + 504);
  *(v0 + 424) = v19;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 400));
  (*(*(v19 - 8) + 16))(boxed_opaque_existential_1, v18, v19);
  sub_20CEC80B0((v0 + 400), (v0 + 208));
  v21 = *(v0 + 704);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v24 = v21;
  sub_20CEEF74C((v0 + 208), v15, v17, isUniquelyReferenced_nonNull_native);

  *(v0 + 704) = v24;
  *(v0 + 976) = 0;

  return MEMORY[0x2822009F8](sub_20CFDE604, 0, 0);
}

uint64_t sub_20CFDEB0C()
{
  v25 = v0;

  v1 = *(v0 + 968);
  if (qword_27C81A2D8 != -1)
  {
    swift_once();
  }

  v2 = qword_27C838280;
  sub_20D565998();
  v3 = v1;
  v4 = sub_20D565968();
  v5 = sub_20D567EA8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 784);
  v8 = *(v0 + 776);
  v9 = *(v0 + 768);
  if (v6)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v24 = v12;
    *v10 = 136315394;
    *(v10 + 4) = sub_20CEE913C(0xD000000000000016, 0x800000020D5D33A0, &v24);
    *(v10 + 12) = 2112;
    v13 = v1;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v14;
    *v11 = v14;
    _os_log_impl(&dword_20CEB6000, v4, v5, "%s Error found %@", v10, 0x16u);
    sub_20CF31DFC(v11);
    MEMORY[0x20F31FC70](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x20F31FC70](v12, -1, -1);
    MEMORY[0x20F31FC70](v10, -1, -1);
  }

  (*(v8 + 8))(v7, v9);
  swift_beginAccess();
  *(v0 + 728) = 13;
  v15 = sub_20D567838();
  v17 = v16;
  swift_getErrorValue();
  v18 = *(v0 + 496);
  v19 = *(v0 + 504);
  *(v0 + 424) = v19;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 400));
  (*(*(v19 - 8) + 16))(boxed_opaque_existential_1, v18, v19);
  sub_20CEC80B0((v0 + 400), (v0 + 208));
  v21 = *(v0 + 704);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v24 = v21;
  sub_20CEEF74C((v0 + 208), v15, v17, isUniquelyReferenced_nonNull_native);

  *(v0 + 704) = v24;
  *(v0 + 976) = 0;

  return MEMORY[0x2822009F8](sub_20CFDE604, 0, 0);
}

uint64_t sub_20CFDEDF4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = sub_20D565988();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20D567838();
  v12 = v11;
  swift_beginAccess();
  v13 = *a2;
  v35[3] = MEMORY[0x277D83E88];
  v35[0] = v13;
  swift_beginAccess();
  sub_20CED9A44(v35, v10, v12);
  swift_endAccess();
  if (qword_27C81A2D8 != -1)
  {
    swift_once();
  }

  v14 = qword_27C838280;
  sub_20D565998();
  v15 = sub_20D565968();
  v16 = sub_20D567EC8();
  v17 = os_log_type_enabled(v15, v16);
  v34 = a1;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v35[0] = v33;
    *v18 = 136315394;
    *(v18 + 4) = sub_20CEE913C(0xD000000000000016, 0x800000020D5D33A0, v35);
    *(v18 + 12) = 2080;
    swift_beginAccess();
    sub_20D5663C8();
    v19 = sub_20D567768();
    v31 = v9;
    v32 = v6;
    v20 = v19;
    v22 = v21;

    v23 = sub_20CEE913C(v20, v22, v35);

    *(v18 + 14) = v23;
    _os_log_impl(&dword_20CEB6000, v15, v16, "%s Finishing with configuration results: %s", v18, 0x16u);
    v24 = v33;
    swift_arrayDestroy();
    MEMORY[0x20F31FC70](v24, -1, -1);
    MEMORY[0x20F31FC70](v18, -1, -1);

    (*(v7 + 8))(v31, v32);
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }

  v25 = OBJC_IVAR___HUUtilityOnboardingLoadingViewController_delegate;
  result = swift_beginAccess();
  v27 = *(a3 + v25);
  if (v27)
  {
    swift_beginAccess();
    swift_unknownObjectRetain();
    v28 = sub_20D5663C8();
    sub_20CF27E80(v28);

    v29 = sub_20D567738();

    [v27 viewController:a3 didFinishWithConfigurationResults:v29];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_20CFDF1B8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_20D5677F8();
  v3 = HULocalizedString(v2);

  sub_20D567838();
  sub_20CEF44D8();
  v4 = sub_20D5670E8();
  v6 = v5;
  v8 = v7;
  sub_20D566F98();
  v9 = sub_20D5670C8();
  v11 = v10;
  v13 = v12;
  v15 = v14;

  sub_20CF13F34(v4, v6, v8 & 1);

  LOBYTE(v4) = sub_20D566F38();
  result = sub_20D566778();
  *a1 = v9;
  *(a1 + 8) = v11;
  *(a1 + 16) = v13 & 1;
  *(a1 + 24) = v15;
  *(a1 + 32) = v4;
  *(a1 + 40) = v17;
  *(a1 + 48) = v18;
  *(a1 + 56) = v19;
  *(a1 + 64) = v20;
  *(a1 + 72) = 0;
  return result;
}

uint64_t sub_20CFDF2FC@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81EC00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81CA68);
  sub_20CFDF8FC();
  sub_20CF156D0(&qword_27C81EC18, &qword_27C81CA68);
  sub_20D567428();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81EC20);
  *(a1 + *(result + 36)) = 256;
  return result;
}

id UtilityOnboardingLoadingViewController.__allocating_init(title:detailText:symbolName:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v12 = sub_20D5677F8();

  if (!a4)
  {
    v13 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = 0;
    goto LABEL_6;
  }

  v13 = sub_20D5677F8();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = sub_20D5677F8();

LABEL_6:
  v15 = [objc_allocWithZone(v8) initWithTitle:v12 detailText:v13 symbolName:v14 contentLayout:a7];

  return v15;
}

id UtilityOnboardingLoadingViewController.__allocating_init(title:detailText:icon:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v7 = v6;
  v11 = sub_20D5677F8();

  if (a4)
  {
    v12 = sub_20D5677F8();
  }

  else
  {
    v12 = 0;
  }

  v13 = [objc_allocWithZone(v7) initWithTitle:v11 detailText:v12 icon:a5 contentLayout:a6];

  return v13;
}

id UtilityOnboardingLoadingViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UtilityOnboardingLoadingViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_20CFDF720(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20CEF5FFC;

  return sub_20CFDCA34(a1, v4, v5, v6);
}

unint64_t sub_20CFDF8FC()
{
  result = qword_27C81EC10;
  if (!qword_27C81EC10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27C81EC00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81EC10);
  }

  return result;
}

unint64_t sub_20CFDF980()
{
  result = qword_27C81EC38;
  if (!qword_27C81EC38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27C81EC20);
    sub_20CF156D0(&qword_27C81EC40, &qword_27C81EC48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81EC38);
  }

  return result;
}

id HUServiceDetailsViewController.createAccessoryDetailInfoListModuleController(with:)(uint64_t a1)
{
  v3 = type metadata accessor for AccessoryDetailInfoListModuleController();
  v4 = objc_allocWithZone(v3);
  v5 = &v4[OBJC_IVAR___HUAccessoryDetailInfoListModuleController_delegate];
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *(v5 + 4) = 0;
  v12.receiver = v4;
  v12.super_class = v3;
  v6 = objc_msgSendSuper2(&v12, sel_initWithModule_, a1);
  v11[3] = sub_20CFDFEFC();
  v11[4] = &protocol witness table for HUServiceDetailsViewController;
  v11[0] = v1;
  v7 = OBJC_IVAR___HUAccessoryDetailInfoListModuleController_delegate;
  swift_beginAccess();
  v8 = v1;
  sub_20CFDFF48(v11, v6 + v7);
  swift_endAccess();
  v9 = [v6 asGeneric];

  return v9;
}

id HUServiceDetailsViewController.finishPresentation(_:animated:)(void *a1, char a2)
{
  v5 = swift_dynamicCastObjCProtocolConditional();
  if (v5)
  {
    v6 = v5;
    v7 = a1;
    v8 = [v2 presentationDelegate];
    if (v8)
    {
      v9 = v8;
      if ([v6 requiresPresentingViewControllerDismissal])
      {
        [v2 setRequiresPresentingViewControllerDismissal_];
        v10 = [v9 finishPresentation:v2 animated:a2 & 1];

        swift_unknownObjectRelease();
        return v10;
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  type metadata accessor for ServiceGroupEditorViewController();
  if (swift_dynamicCastClass() || (type metadata accessor for ContainedSpeakersViewController(), swift_dynamicCastClass()) || (type metadata accessor for MediaSystemEditorViewController(), swift_dynamicCastClass()) || (objc_opt_self(), swift_dynamicCastObjCClass()))
  {
    v12 = [v2 hu:a2 & 1 dismissViewControllerAnimated:?];
  }

  else
  {
    v13 = [v2 navigationController];

    v12 = [objc_opt_self() futureWithNoResult];
  }

  return v12;
}

id sub_20CFDFD90(HUServiceDetailsViewController *self, SEL a2, id a3, BOOL a4)
{
  v6 = a3;
  v7 = self;
  v8 = HUServiceDetailsViewController.finishPresentation(_:animated:)(v6, a4);

  return v8;
}

void _sSo30HUServiceDetailsViewControllerC6HomeUIE9didSelect_3forySo6HFItemC_AC029AccessoryDetailInfoListModuleD0CtF_0(void *a1)
{
  v2 = v1;
  sub_20D565F48();
  if (swift_dynamicCastClass())
  {
    v4 = a1;
    v5 = sub_20D565D68();
    v6 = swift_dynamicCastObjCProtocolConditional();
    if (v6)
    {
      v7 = [objc_allocWithZone(HUServiceDetailsViewController) initWithServiceLikeItem_];
      [v7 setPresentationDelegate_];
      v8 = [v2 navigationController];
      if (v8)
      {
        v9 = v8;
        [v8 pushViewController:v7 animated:1];
      }

      v10 = v5;
    }

    else
    {
      v10 = v4;
      v4 = v5;
    }
  }
}

unint64_t sub_20CFDFEFC()
{
  result = qword_27C81EC50;
  if (!qword_27C81EC50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27C81EC50);
  }

  return result;
}

uint64_t sub_20CFDFF48(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81F170);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_20CFE015C(uint64_t a1)
{
  v3 = OBJC_IVAR___HUInformationalAccessoryGridViewController_visibleAccessories;
  swift_beginAccess();
  *(v1 + v3) = a1;

  sub_20CFE0224();
}

void sub_20CFE01B8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___HUInformationalAccessoryGridViewController_visibleAccessories;
  swift_beginAccess();
  *(v3 + v4) = v2;
  sub_20D5663C8();

  sub_20CFE0224();
}

void sub_20CFE0224()
{
  v1 = *&v0[OBJC_IVAR___HUInformationalAccessoryGridViewController_module];
  if (v1 && (v2 = *(v1 + OBJC_IVAR___HUAccessoryRepresentableItemModule_context), v3 = OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_accessoryContainer, swift_beginAccess(), *(v2 + v3)) && (type metadata accessor for InformationalAccessoryGridViewController.AccessoryLikeObjectContainer(), (v4 = swift_dynamicCastClass()) != 0))
  {
    v5 = v4;
    v6 = OBJC_IVAR___HUInformationalAccessoryGridViewController_visibleAccessories;
    swift_beginAccess();
    v7 = *&v0[v6];
    if (v7)
    {
      swift_unknownObjectRetain();
      v8 = v7;
    }

    else if (MEMORY[0x277D84F90] >> 62 && sub_20D568768())
    {
      swift_unknownObjectRetain();
      sub_20CEF853C(MEMORY[0x277D84F90]);
    }

    else
    {
      swift_unknownObjectRetain();
      v8 = MEMORY[0x277D84FA0];
    }

    *(v5 + OBJC_IVAR____TtCC6HomeUI40InformationalAccessoryGridViewControllerP33_1E0D713E2D70C07A82D0ABA514F9943228AccessoryLikeObjectContainer_hf_accessoryLikeObjects) = v8;
    sub_20D5663C8();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = [v0 itemManager];
    [v9 resetItemProvidersAndModules];
  }
}

void (*sub_20CFE0388(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_20CFE03EC;
}

void sub_20CFE03EC(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_20CFE0224();
  }
}

id InformationalAccessoryGridViewController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id InformationalAccessoryGridViewController.init(visibleAccessories:)(uint64_t a1)
{
  v3 = OBJC_IVAR___HUInformationalAccessoryGridViewController_visibleAccessories;
  *&v1[OBJC_IVAR___HUInformationalAccessoryGridViewController_visibleAccessories] = 0;
  *&v1[OBJC_IVAR___HUInformationalAccessoryGridViewController_module] = 0;
  *&v1[OBJC_IVAR___HUInformationalAccessoryGridViewController_moduleController] = 0;
  swift_beginAccess();
  *&v1[v3] = a1;
  v4 = [objc_allocWithZone(MEMORY[0x277D14B08]) initWithDelegate_];
  v30.receiver = v1;
  v30.super_class = type metadata accessor for InformationalAccessoryGridViewController();
  v27 = v4;
  v5 = objc_msgSendSuper2(&v30, sel_initUsingCompositionalLayoutWithItemManager_, v27);
  v6 = objc_allocWithZone(MEMORY[0x277D148D0]);
  v7 = v5;
  v25 = [v6 init];
  v26 = type metadata accessor for AccessoryRepresentableItemModule.Context();
  v8 = objc_allocWithZone(v26);
  v9 = OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_objectLevel;
  *&v8[OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_objectLevel] = 0;
  v10 = OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_accessoryContainer;
  *&v8[OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_accessoryContainer] = 0;
  v11 = OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_sectionGroupingType;
  *&v8[OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_sectionGroupingType] = 1;
  v12 = OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_hideSourceItemDescriptions;
  v8[OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_hideSourceItemDescriptions] = 0;
  v13 = OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_showFooter;
  v8[OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_showFooter] = 0;
  v14 = OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_valueSource;
  *&v8[v14] = [objc_allocWithZone(MEMORY[0x277D148D0]) init];
  v15 = &v8[OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_filter];
  *v15 = 0;
  v15[1] = 0;
  v16 = &v8[OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_itemFilter];
  *v16 = 0;
  v16[1] = 0;
  swift_beginAccess();
  *&v8[v9] = 0;
  swift_beginAccess();
  *&v8[v10] = 0;
  swift_unknownObjectRelease();
  swift_beginAccess();
  *&v8[v11] = 0;
  swift_beginAccess();
  v8[v12] = 1;
  swift_beginAccess();
  v8[v13] = 0;
  swift_beginAccess();
  *&v8[v14] = v25;
  swift_unknownObjectRelease();
  swift_beginAccess();
  v17 = *v15;
  *v15 = 0;
  v15[1] = 0;
  sub_20CEC8164(v17);
  swift_beginAccess();
  v18 = *v16;
  *v16 = 0;
  v16[1] = 0;
  sub_20CEC8164(v18);
  v29.receiver = v8;
  v29.super_class = v26;
  v19 = objc_msgSendSuper2(&v29, sel_init);
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = swift_allocObject();
  *(v21 + 16) = v19;
  *(v21 + 24) = v20;
  aBlock[4] = sub_20CFE0B10;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20CF35658;
  aBlock[3] = &block_descriptor_20;
  v22 = _Block_copy(aBlock);
  v23 = v19;

  [v27 setItemModuleCreator_];
  _Block_release(v22);
  [v27 setDelegate_];

  return v7;
}

double sub_20CFE0884(void *a1, uint64_t a2, char *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v7 = OBJC_IVAR___HUInformationalAccessoryGridViewController_visibleAccessories, v8 = Strong, swift_beginAccess(), v9 = *&v8[v7], sub_20D5663C8(), v8, !v9))
  {
    if (MEMORY[0x277D84F90] >> 62 && sub_20D568768())
    {
      sub_20CEF853C(MEMORY[0x277D84F90]);
      v9 = v28;
    }

    else
    {
      v9 = MEMORY[0x277D84FA0];
    }
  }

  v10 = type metadata accessor for InformationalAccessoryGridViewController.AccessoryLikeObjectContainer();
  v11 = objc_allocWithZone(v10);
  *&v11[OBJC_IVAR____TtCC6HomeUI40InformationalAccessoryGridViewControllerP33_1E0D713E2D70C07A82D0ABA514F9943228AccessoryLikeObjectContainer_hf_accessoryLikeObjects] = v9;
  v29.receiver = v11;
  v29.super_class = v10;
  v12 = objc_msgSendSuper2(&v29, sel_init);
  v13 = OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_accessoryContainer;
  swift_beginAccess();
  *&a3[v13] = v12;
  swift_unknownObjectRelease();
  v14 = objc_allocWithZone(type metadata accessor for AccessoryRepresentableItemModule());
  v15 = &v14[OBJC_IVAR___HUAccessoryRepresentableItemModule_selectionController];
  *v15 = 0;
  *(v15 + 1) = 0;
  *&v14[OBJC_IVAR___HUAccessoryRepresentableItemModule_accessoryItemProvider] = 0;
  *&v14[OBJC_IVAR___HUAccessoryRepresentableItemModule_context] = a3;
  swift_getObjectType();
  v16 = a3;
  v17 = a1;
  swift_unknownObjectRetain();
  v18 = sub_20CF86924(v17, a2, 0, 0, v14);

  swift_unknownObjectRelease();
  v19 = OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_sectionGroupingType;
  swift_beginAccess();
  v20 = *&v16[v19];
  v21 = OBJC_IVAR____TtC6HomeUI19AccessoryItemModule_sectionGroupingType;
  swift_beginAccess();
  *&v18[v21] = v20;
  swift_beginAccess();
  v22 = swift_unknownObjectWeakLoadStrong();
  if (v22)
  {
    v23 = *(v22 + OBJC_IVAR___HUInformationalAccessoryGridViewController_module);
    *(v22 + OBJC_IVAR___HUInformationalAccessoryGridViewController_module) = v18;
    v24 = v22;
    v25 = v18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF80);
  v26 = swift_allocObject();
  *&result = 1;
  *(v26 + 16) = xmmword_20D5BA040;
  *(v26 + 32) = v18;
  return result;
}

uint64_t block_copy_helper_20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_20CFE0B9C()
{
  v8.receiver = v0;
  v8.super_class = type metadata accessor for InformationalAccessoryGridViewController();
  objc_msgSendSuper2(&v8, sel_viewDidLoad);
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = objc_opt_self();
    v4 = [v3 clearColor];
    [v2 setBackgroundColor_];

    v5 = [v0 collectionView];
    if (v5)
    {
      v6 = v5;
      v7 = [v3 clearColor];
      [v6 setBackgroundColor_];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_20CFE0DB8()
{
  type metadata accessor for AccessoryRepresentableItemModule();
  v1 = swift_dynamicCastClass();
  if (v1)
  {
    v2 = [objc_allocWithZone(type metadata accessor for AccessoryGridModuleController()) initWithModule_];
    v3 = &v2[OBJC_IVAR____TtC6HomeUI29AccessoryGridModuleController_cellSettings];
    swift_beginAccess();
    *v3 = xmmword_20D5C35C0;
    *(v3 + 8) = 1;
    *(v3 + 3) = 0;
    v3[32] = 0;
    v4 = &v2[OBJC_IVAR____TtC6HomeUI29AccessoryGridModuleController_layoutStyle];
    swift_beginAccess();
    v5 = *v4;
    v6 = *(v4 + 1);
    *v4 = xmmword_20D5C35D0;
    v7 = v4[16];
    v4[16] = 2;
    sub_20CEFF424(v5, v6, v7);
    v8 = *(v0 + OBJC_IVAR___HUInformationalAccessoryGridViewController_moduleController);
    *(v0 + OBJC_IVAR___HUInformationalAccessoryGridViewController_moduleController) = v2;
    v9 = v2;

    v1 = [v9 asGeneric];
  }

  return v1;
}

id sub_20CFE0F48(uint64_t a1, uint64_t a2)
{
  v5 = sub_20D566268();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20D566288();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *&v2[OBJC_IVAR___HUInformationalAccessoryGridViewController_moduleController];
  if (!v13)
  {
    goto LABEL_5;
  }

  v20 = a2;
  v14 = v13;
  v15 = [v2 itemManager];
  v16 = [v15 displayedSectionIdentifierForSectionIndex_];

  if (!v16)
  {

LABEL_5:
    (*(v6 + 104))(v8, *MEMORY[0x277D74D50], v5);
    sub_20D566278();
    sub_20CECF940(0, &qword_27C81C378);
    v17 = sub_20D568278();
    (*(v10 + 8))(v12, v9);
    return v17;
  }

  v17 = [v14 collectionLayoutSectionForSectionWithIdentifier:v16 layoutEnvironment:v20];

  return v17;
}

id InformationalAccessoryGridViewController.__allocating_init(itemManager:collectionViewLayout:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithItemManager:a1 collectionViewLayout:a2];

  return v5;
}

id InformationalAccessoryGridViewController.__allocating_init(usingCompositionalLayoutWith:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initUsingCompositionalLayoutWithItemManager_];

  return v3;
}

id sub_20CFE14DC(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

unint64_t sub_20CFE165C()
{
  result = qword_27C81ECE0;
  if (!qword_27C81ECE0)
  {
    sub_20CECF940(255, &unk_27C81BF40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81ECE0);
  }

  return result;
}

uint64_t sub_20CFE17D0(uint64_t a1)
{
  v3 = OBJC_IVAR___HUUtilityOnboardingQuickLookupViewController_delegate;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_20CFE1828(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___HUUtilityOnboardingQuickLookupViewController_delegate;
  swift_beginAccess();
  *(v3 + v4) = v2;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

char *UtilityOnboardingQuickLookup.init(context:hideBackButton:)(void *a1, char a2)
{
  v3 = v2;
  *&v2[OBJC_IVAR___HUUtilityOnboardingQuickLookupViewController_delegate] = 0;
  *&v2[OBJC_IVAR___HUUtilityOnboardingQuickLookupViewController_continueButton] = 0;
  *&v2[OBJC_IVAR___HUUtilityOnboardingQuickLookupViewController_context] = a1;
  v2[OBJC_IVAR___HUUtilityOnboardingQuickLookupViewController_hideBackButton] = a2;
  swift_getKeyPath();
  v48[0] = a1;
  sub_20CFE5E58(&qword_27C81D080, type metadata accessor for UtilityOnboardingContext);
  v5 = a1;
  sub_20D563908();

  v6 = &v5[OBJC_IVAR____TtC6HomeUI24UtilityOnboardingContext__utilityID];
  swift_beginAccess();
  if (*(v6 + 1))
  {
    v7 = *v6;
    v8 = *(v6 + 1);
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  v9 = &v2[OBJC_IVAR___HUUtilityOnboardingQuickLookupViewController_utilityID];
  *v9 = v7;
  *(v9 + 1) = v8;
  swift_getKeyPath();
  v48[0] = v5;
  sub_20D5663C8();
  sub_20D563908();

  v10 = OBJC_IVAR____TtC6HomeUI24UtilityOnboardingContext__config;
  swift_beginAccess();
  v11 = *&v5[v10];
  if (v11)
  {
    v12 = v11;
    v13 = sub_20D564C08();
    if (!v14)
    {
      v13 = sub_20D564BE8();
    }

    v15 = v13;
    v16 = v14;
  }

  else
  {
    v15 = 0;
    v16 = 0xE000000000000000;
  }

  v17 = &v3[OBJC_IVAR___HUUtilityOnboardingQuickLookupViewController_utilityName];
  *v17 = v15;
  v17[1] = v16;
  swift_getKeyPath();
  v48[0] = v5;
  sub_20D563908();

  if (*&v5[v10])
  {
    v18 = sub_20D5663C8();
  }

  else
  {
    v18 = MEMORY[0x277D84F90];
  }

  *&v3[OBJC_IVAR___HUUtilityOnboardingQuickLookupViewController_fields] = v18;
  swift_getKeyPath();
  v48[0] = v5;
  sub_20D563908();

  v19 = *&v5[v10];
  if (v19)
  {
    v20 = v19;
    v21 = UtilityConfigurationHelper.sections.getter();
  }

  else
  {
    v21 = MEMORY[0x277D84F90];
  }

  *&v3[OBJC_IVAR___HUUtilityOnboardingQuickLookupViewController_sections] = v21;
  swift_getKeyPath();
  v48[0] = v5;
  sub_20D563908();

  swift_beginAccess();
  v22 = objc_allocWithZone(type metadata accessor for AccountDetailsDataModel());
  v23._rawValue = sub_20D5663C8();
  v24 = sub_20D10676C(v23);
  *&v3[OBJC_IVAR___HUUtilityOnboardingQuickLookupViewController_accountDetails] = v24;
  v26 = *v17;
  v25 = v17[1];
  sub_20CFE5E58(&qword_27C81ED40, type metadata accessor for AccountDetailsDataModel);
  v27 = v24;
  sub_20D5663C8();
  v48[0] = v26;
  v48[1] = v25;
  v48[2] = sub_20D566888();
  v48[3] = v28;
  v48[4] = 0;
  v48[5] = 0;
  v29 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81ED48));
  *&v3[OBJC_IVAR___HUUtilityOnboardingQuickLookupViewController_rootVC] = sub_20D566C08();
  v30 = sub_20D5677F8();
  v31 = HULocalizedString(v30);

  if (!v31)
  {
    sub_20D567838();
    v31 = sub_20D5677F8();
  }

  v32 = sub_20D5677F8();
  v33 = HULocalizedString(v32);

  sub_20D567838();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81C620);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_20D5BC410;
  v36 = *v17;
  v35 = v17[1];
  *(v34 + 56) = MEMORY[0x277D837D0];
  *(v34 + 64) = sub_20CED4498();
  *(v34 + 32) = v36;
  *(v34 + 40) = v35;
  sub_20D5663C8();
  sub_20D567808();

  v37 = sub_20D5677F8();

  v47.receiver = v3;
  v47.super_class = type metadata accessor for UtilityOnboardingQuickLookup();
  v38 = objc_msgSendSuper2(&v47, sel_initWithTitle_detailText_icon_contentLayout_, v31, v37, 0, 2);

  v39 = *&v38[OBJC_IVAR___HUUtilityOnboardingQuickLookupViewController_rootVC];
  v40 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v41 = v38;
  v42 = v39;

  v43 = sub_20D566C18();
  v45 = *(v44 + 32);
  *(v44 + 32) = sub_20CFE5E30;
  *(v44 + 40) = v40;
  sub_20CEC8164(v45);
  v43(v48, 0);

  return v41;
}

void sub_20CFE1F18()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_20CFE2E6C();
  }
}

id UtilityOnboardingQuickLookup.__allocating_init(context:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithContext:a1 hideBackButton:0];

  return v3;
}

id UtilityOnboardingQuickLookup.init(context:)(void *a1)
{
  v3 = [v1 initWithContext:a1 hideBackButton:0];

  return v3;
}

id sub_20CFE2038()
{
  v1 = v0;
  v68.receiver = v0;
  v68.super_class = type metadata accessor for UtilityOnboardingQuickLookup();
  objc_msgSendSuper2(&v68, sel_viewDidLoad);
  sub_20CEF3A4C(&unk_2823CE568);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81E440);
  swift_arrayDestroy();
  v2 = [v0 headerView];
  v3 = [v2 subviews];

  if (!v3)
  {
    sub_20CECF940(0, &qword_28111FB70);
    sub_20D567A78();
    v3 = sub_20D567A58();
  }

  v4 = objc_opt_self();
  v5 = sub_20D567738();
  [v4 setAccessibilityIDForViews:v3 withIDDictionary:v5];

  v6 = OBJC_IVAR___HUUtilityOnboardingQuickLookupViewController_context;
  v7 = *&v1[OBJC_IVAR___HUUtilityOnboardingQuickLookupViewController_context];
  v8 = OBJC_IVAR____TtC6HomeUI24UtilityOnboardingContext__onboardingMethod;
  swift_beginAccess();
  if (*&v7[v8] != 1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_20CFE5E58(&qword_27C81D080, type metadata accessor for UtilityOnboardingContext);
    v10 = v7;
    sub_20D5638F8();
  }

  v11 = *&v1[v6];
  v12 = OBJC_IVAR____TtC6HomeUI24UtilityOnboardingContext__didAttemptPasswordlessMethod;
  swift_beginAccess();
  if (v11[v12] == 1)
  {
    v11[v12] = 1;
  }

  else
  {
    v13 = swift_getKeyPath();
    MEMORY[0x28223BE20](v13);
    sub_20CFE5E58(&qword_27C81D080, type metadata accessor for UtilityOnboardingContext);
    v14 = v11;
    sub_20D5638F8();
  }

  v15 = *&v1[OBJC_IVAR___HUUtilityOnboardingQuickLookupViewController_rootVC];
  result = [v15 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_22;
  }

  v17 = result;
  [result setTranslatesAutoresizingMaskIntoConstraints_];

  result = [v15 view];
  if (!result)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v18 = result;
  v19 = [v1 contentView];
  [v19 bounds];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;

  [v18 setFrame_];
  [v1 addChildViewController_];
  v28 = [v1 contentView];
  result = [v15 view];
  if (!result)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v29 = result;
  [v28 addSubview_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF80);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_20D5BF1C0;
  result = [v15 view];
  if (!result)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v31 = result;
  v32 = [result topAnchor];

  v33 = [v1 contentView];
  v34 = [v33 topAnchor];

  v35 = [v32 constraintEqualToAnchor_];
  *(v30 + 32) = v35;
  result = [v15 view];
  if (!result)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v36 = result;
  v37 = [result centerXAnchor];

  v38 = [v1 contentView];
  v39 = [v38 centerXAnchor];

  v40 = [v37 constraintEqualToAnchor_];
  *(v30 + 40) = v40;
  result = [v15 view];
  if (!result)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v41 = result;
  v42 = [result leadingAnchor];

  v43 = [v1 contentView];
  v44 = [v43 leadingAnchor];

  v45 = [v42 constraintEqualToAnchor_];
  *(v30 + 48) = v45;
  result = [v15 view];
  if (!result)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v46 = result;
  v47 = [result trailingAnchor];

  v48 = [v1 contentView];
  v49 = [v48 trailingAnchor];

  v50 = [v47 constraintEqualToAnchor_];
  *(v30 + 56) = v50;
  result = [v15 view];
  if (!result)
  {
LABEL_28:
    __break(1u);
    return result;
  }

  v51 = result;

  v52 = objc_opt_self();
  v53 = [v51 bottomAnchor];

  v54 = [v1 contentView];
  v55 = [v54 bottomAnchor];

  v56 = [v53 constraintEqualToAnchor_];
  *(v30 + 64) = v56;
  sub_20CECF940(0, &qword_28111FEC0);
  v57 = sub_20D567A58();

  [v52 activateConstraints_];

  v58 = [objc_opt_self() boldButton];
  v59 = *&v1[OBJC_IVAR___HUUtilityOnboardingQuickLookupViewController_continueButton];
  *&v1[OBJC_IVAR___HUUtilityOnboardingQuickLookupViewController_continueButton] = v58;
  v60 = v58;

  if (v60)
  {
    v61 = sub_20D5677F8();
    v62 = HULocalizedString(v61);

    if (!v62)
    {
      sub_20D567838();
      v62 = sub_20D5677F8();
    }

    [v60 setTitle:v62 forState:0];

    [v60 addTarget:v1 action:sel_verifyAddressAndSubmitTAF forControlEvents:64];
    v63 = v60;
    v64 = sub_20D5677F8();
    [v63 setAccessibilityIdentifier_];

    v65 = [v1 buttonTray];
    [v65 addButton_];
  }

  v66 = [v1 navigationItem];
  [v66 setHidesBackButton_];

  v67 = [v1 navigationItem];
  [v67 setBackButtonDisplayMode_];

  return [v1 updateViewConstraints];
}

id sub_20CFE2B34(char a1)
{
  v2 = v1;
  v4 = sub_20D565988();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UtilityOnboardingQuickLookup();
  v20.receiver = v2;
  v20.super_class = v8;
  objc_msgSendSuper2(&v20, sel_viewWillDisappear_, a1 & 1);
  result = [v2 isMovingFromParentViewController];
  if (result)
  {
    v10 = sub_20D564B68();
    v19[3] = v10;
    v19[4] = sub_20CFE5E58(&qword_27C81BEB0, MEMORY[0x277D073A0]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v19);
    (*(*(v10 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D07370], v10);
    LOBYTE(v10) = sub_20D563968();
    __swift_destroy_boxed_opaque_existential_1(v19);
    if (v10)
    {
      if (qword_27C81A2D8 != -1)
      {
        swift_once();
      }

      v12 = qword_27C838280;
      sub_20D565998();
      v13 = sub_20D565968();
      v14 = sub_20D567EC8();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v19[0] = v16;
        *v15 = 136315138;
        *(v15 + 4) = sub_20CEE913C(0xD000000000000015, 0x800000020D5D01E0, v19);
        _os_log_impl(&dword_20CEB6000, v13, v14, "%s Tapped BACK button", v15, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v16);
        MEMORY[0x20F31FC70](v16, -1, -1);
        MEMORY[0x20F31FC70](v15, -1, -1);
      }

      return (*(v5 + 8))(v7, v4);
    }

    else
    {
      v17 = OBJC_IVAR___HUUtilityOnboardingQuickLookupViewController_delegate;
      swift_beginAccess();
      result = *&v2[v17];
      if (result)
      {
        return [result viewControllerDidGoBack_];
      }
    }
  }

  return result;
}

uint64_t sub_20CFE2E6C()
{
  v1 = v0;
  v2 = sub_20D565988();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27C81A2D8 != -1)
  {
    swift_once();
  }

  v6 = qword_27C838280;
  sub_20D565998();
  v7 = sub_20D565968();
  v8 = sub_20D567EA8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *&v24 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_20CEE913C(0xD000000000000020, 0x800000020D5D38C0, &v24);
    _os_log_impl(&dword_20CEB6000, v7, v8, "%s Tapped edit button", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x20F31FC70](v10, -1, -1);
    MEMORY[0x20F31FC70](v9, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v11 = sub_20D567838();
  v13 = v12;
  v25 = MEMORY[0x277D83E88];
  *&v24 = 4;
  sub_20CEC80B0(&v24, v23);
  v14 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = v14;
  sub_20CEEF74C(v23, v11, v13, isUniquelyReferenced_nonNull_native);

  v16 = v22;
  v17 = OBJC_IVAR___HUUtilityOnboardingQuickLookupViewController_delegate;
  swift_beginAccess();
  v18 = *(v1 + v17);
  if (!v18)
  {
  }

  swift_unknownObjectRetain();
  sub_20CF27E80(v16);

  v19 = sub_20D567738();

  [v18 viewController:v1 didFinishWithConfigurationResults:v19];

  return swift_unknownObjectRelease();
}

uint64_t sub_20CFE319C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C610);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v12 - v2;
  sub_20CFE43E8();
  v4 = swift_allocObject();
  *(v4 + 16) = 13;
  v5 = swift_allocObject();
  *(v5 + 16) = MEMORY[0x277D84F98];
  v6 = sub_20D567C58();
  (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
  sub_20D567C18();
  v7 = v0;

  v8 = sub_20D567C08();
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D85700];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = v7;
  v9[5] = v4;
  v9[6] = v5;
  sub_20CF18960(0, 0, v3, &unk_20D5C39B0, v9);
}

uint64_t sub_20CFE333C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[39] = a5;
  v6[40] = a6;
  v6[38] = a4;
  v7 = sub_20D565988();
  v6[41] = v7;
  v6[42] = *(v7 - 8);
  v6[43] = swift_task_alloc();
  v6[44] = swift_task_alloc();
  v6[45] = swift_task_alloc();
  v6[46] = sub_20D567C18();
  v6[47] = sub_20D567C08();
  v9 = sub_20D567BA8();
  v6[48] = v9;
  v6[49] = v8;

  return MEMORY[0x2822009F8](sub_20CFE3450, v9, v8);
}

uint64_t sub_20CFE3450()
{
  v1 = v0[38];
  v2 = sub_20D564B68();
  v0[5] = v2;
  v0[6] = sub_20CFE5E58(&qword_27C81BEB0, MEMORY[0x277D073A0]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  (*(*(v2 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D07370], v2);
  v4 = sub_20D563968();
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  v5 = *(v1 + OBJC_IVAR___HUUtilityOnboardingQuickLookupViewController_context);
  v0[50] = v5;
  v5;
  v6 = swift_task_alloc();
  v0[51] = v6;
  *v6 = v0;
  if (v4)
  {
    v7 = sub_20CFE35BC;
  }

  else
  {
    v7 = sub_20CFE3760;
  }

  v6[1] = v7;

  return sub_20CEDF698();
}

uint64_t sub_20CFE35BC()
{
  v2 = *v1;
  *(*v1 + 416) = v0;

  if (v0)
  {
    v3 = *(v2 + 384);
    v4 = *(v2 + 392);
    v5 = sub_20CFE3AD4;
  }

  else
  {

    v3 = *(v2 + 384);
    v4 = *(v2 + 392);
    v5 = sub_20CFE36D8;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_20CFE36D8()
{
  v1 = v0[39];
  swift_beginAccess();
  *(v1 + 16) = 5;
  v0[54] = v0[52];

  return MEMORY[0x2822009F8](sub_20CFE3904, 0, 0);
}

uint64_t sub_20CFE3760()
{
  v2 = *v1;
  *(*v1 + 424) = v0;

  if (v0)
  {
    v3 = *(v2 + 384);
    v4 = *(v2 + 392);
    v5 = sub_20CFE3E78;
  }

  else
  {

    v3 = *(v2 + 384);
    v4 = *(v2 + 392);
    v5 = sub_20CFE387C;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_20CFE387C()
{
  v1 = v0[39];
  swift_beginAccess();
  *(v1 + 16) = 17;
  v0[54] = v0[53];

  return MEMORY[0x2822009F8](sub_20CFE3904, 0, 0);
}

uint64_t sub_20CFE3904()
{
  *(v0 + 440) = sub_20D567C08();
  v2 = sub_20D567BA8();

  return MEMORY[0x2822009F8](sub_20CFE3990, v2, v1);
}

void sub_20CFE3990()
{
  v1 = v0[54];
  v3 = v0[39];
  v2 = v0[40];
  v4 = v0[38];

  sub_20CFE4170(v2 + 16, (v3 + 16), v4);
  if (v1)
  {
  }

  else
  {
    v5 = v0[48];
    v6 = v0[49];

    MEMORY[0x2822009F8](sub_20CFE3A4C, v5, v6);
  }
}

uint64_t sub_20CFE3A4C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20CFE3AD4()
{
  v1 = type metadata accessor for HomeEnergyManagerHelper();
  v2 = sub_20D5635C8();
  LOBYTE(v1) = [v1 redirectToOAuth_];

  if (v1)
  {
    if (qword_27C81A2D8 != -1)
    {
      swift_once();
    }

    v3 = qword_27C838280;
    sub_20D565998();
    v4 = sub_20D565968();
    v5 = sub_20D567EA8();
    v6 = os_log_type_enabled(v4, v5);
    v7 = *(v0 + 416);
    if (v6)
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_20CEB6000, v4, v5, "verifyAddressAndSubmitTAF(): Account Not Found", v8, 2u);
      MEMORY[0x20F31FC70](v8, -1, -1);
    }

    else
    {
    }

    v29 = *(v0 + 312);
    (*(*(v0 + 336) + 8))(*(v0 + 360), *(v0 + 328));
    swift_beginAccess();
    *(v29 + 16) = 12;
  }

  else
  {
    if (qword_27C81A2D8 != -1)
    {
      swift_once();
    }

    v9 = *(v0 + 416);
    v10 = qword_27C838280;
    sub_20D565998();
    v11 = v9;
    v12 = sub_20D565968();
    v13 = sub_20D567EA8();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = *(v0 + 416);
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      v17 = v14;
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 4) = v18;
      *v16 = v18;
      _os_log_impl(&dword_20CEB6000, v12, v13, "verifyAddressAndSubmitTAF(): Error submitting TAF information: %@", v15, 0xCu);
      sub_20CEF928C(v16, &unk_27C81BE60);
      MEMORY[0x20F31FC70](v16, -1, -1);
      MEMORY[0x20F31FC70](v15, -1, -1);
    }

    v19 = *(v0 + 416);
    v20 = *(v0 + 352);
    v21 = *(v0 + 328);
    v22 = *(v0 + 336);

    (*(v22 + 8))(v20, v21);
    v23 = sub_20D567838();
    v25 = v24;
    swift_getErrorValue();
    v26 = *(v0 + 192);
    v27 = *(v0 + 200);
    *(v0 + 112) = v27;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 88));
    (*(*(v27 - 8) + 16))(boxed_opaque_existential_1, v26, v27);
    swift_beginAccess();
    sub_20CED9A44(v0 + 88, v23, v25);
    swift_endAccess();
  }

  *(v0 + 432) = 0;

  return MEMORY[0x2822009F8](sub_20CFE3904, 0, 0);
}

uint64_t sub_20CFE3E78()
{
  v27 = v0;

  if (qword_27C81A2D8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 424);
  v2 = qword_27C838280;
  sub_20D565998();
  v3 = v1;
  v4 = sub_20D565968();
  v5 = sub_20D567EA8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 424);
    v8 = *(v0 + 336);
    v7 = *(v0 + 344);
    v9 = *(v0 + 328);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v26 = v12;
    *v10 = 136315394;
    *(v10 + 4) = sub_20CEE913C(0xD00000000000001BLL, 0x800000020D5CCA80, &v26);
    *(v10 + 12) = 2112;
    v13 = v6;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v14;
    *v11 = v14;
    _os_log_impl(&dword_20CEB6000, v4, v5, "%s Error submitting TAF information: %@", v10, 0x16u);
    sub_20CEF928C(v11, &unk_27C81BE60);
    MEMORY[0x20F31FC70](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x20F31FC70](v12, -1, -1);
    MEMORY[0x20F31FC70](v10, -1, -1);

    (*(v8 + 8))(v7, v9);
  }

  else
  {
    v16 = *(v0 + 336);
    v15 = *(v0 + 344);
    v17 = *(v0 + 328);

    (*(v16 + 8))(v15, v17);
  }

  v18 = *(v0 + 424);
  v19 = sub_20D567838();
  v21 = v20;
  swift_getErrorValue();
  v22 = *(v0 + 120);
  v23 = *(v0 + 128);
  *(v0 + 80) = v23;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 56));
  (*(*(v23 - 8) + 16))(boxed_opaque_existential_1, v22, v23);
  swift_beginAccess();
  sub_20CED9A44(v0 + 56, v19, v21);
  swift_endAccess();

  *(v0 + 432) = 0;

  return MEMORY[0x2822009F8](sub_20CFE3904, 0, 0);
}

void sub_20CFE4170(uint64_t a1, uint64_t *a2, char *a3)
{
  v5 = sub_20D567838();
  v7 = v6;
  swift_beginAccess();
  v8 = *a2;
  v18[3] = MEMORY[0x277D83B88];
  if (v8 < 0)
  {
    __break(1u);
  }

  else
  {
    v18[0] = v8;
    swift_beginAccess();
    sub_20CED9A44(v18, v5, v7);
    swift_endAccess();
    v9 = OBJC_IVAR___HUUtilityOnboardingQuickLookupViewController_delegate;
    swift_beginAccess();
    v10 = *&a3[v9];
    if (v10)
    {
      swift_beginAccess();
      swift_unknownObjectRetain();
      v11 = sub_20D5663C8();
      sub_20CF27E80(v11);

      v12 = sub_20D567738();

      [v10 viewController:a3 didFinishWithConfigurationResults:v12];

      swift_unknownObjectRelease();
    }

    v13 = *&a3[OBJC_IVAR___HUUtilityOnboardingQuickLookupViewController_accountDetails];
    swift_getKeyPath();
    swift_getKeyPath();
    v14 = v13;
    sub_20D566678();
    v15 = [a3 navigationItem];
    [v15 setHidesBackButton_];

    v16 = *&a3[OBJC_IVAR___HUUtilityOnboardingQuickLookupViewController_continueButton];
    if (v16)
    {
      [v16 setEnabled_];
    }

    v17 = [a3 navigationItem];
    [v17 setRightBarButtonItem_];
  }
}

void sub_20CFE43E8()
{
  v1 = *&v0[OBJC_IVAR___HUUtilityOnboardingQuickLookupViewController_accountDetails];
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  sub_20D566678();
  v3 = [v0 navigationItem];
  [v3 setHidesBackButton_];

  v4 = *&v0[OBJC_IVAR___HUUtilityOnboardingQuickLookupViewController_continueButton];
  if (v4)
  {
    [v4 setEnabled_];
  }

  v5 = [objc_allocWithZone(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle_];
  v6 = [v0 navigationItem];
  v7 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithCustomView_];
  [v6 setRightBarButtonItem_];

  [v5 startAnimating];
}

id UtilityOnboardingQuickLookup.__allocating_init(title:detailText:symbolName:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v12 = sub_20D5677F8();

  if (!a4)
  {
    v13 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = 0;
    goto LABEL_6;
  }

  v13 = sub_20D5677F8();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = sub_20D5677F8();

LABEL_6:
  v15 = [objc_allocWithZone(v8) initWithTitle:v12 detailText:v13 symbolName:v14 contentLayout:a7];

  return v15;
}

id UtilityOnboardingQuickLookup.__allocating_init(title:detailText:icon:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v7 = v6;
  v11 = sub_20D5677F8();

  if (a4)
  {
    v12 = sub_20D5677F8();
  }

  else
  {
    v12 = 0;
  }

  v13 = [objc_allocWithZone(v7) initWithTitle:v11 detailText:v12 icon:a5 contentLayout:a6];

  return v13;
}

id UtilityOnboardingQuickLookup.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UtilityOnboardingQuickLookup();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_20CFE4908@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_20D566BA8();
  *(a1 + 8) = 0x4024000000000000;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81EDC0);
  sub_20CFE4B58(v1, (a1 + *(v3 + 44)));
  v4 = sub_20D566EF8();
  sub_20D566778();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81EDC8) + 36);
  *v13 = v4;
  *(v13 + 8) = v6;
  *(v13 + 16) = v8;
  *(v13 + 24) = v10;
  *(v13 + 32) = v12;
  *(v13 + 40) = 0;
  v14 = sub_20D566F68();
  v15 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81EDD0) + 36);
  *v15 = v14;
  *(v15 + 8) = 0u;
  *(v15 + 24) = 0u;
  *(v15 + 40) = 1;
  *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81EDD8) + 36)) = 256;
  v16 = [objc_opt_self() tertiarySystemFillColor];
  v17 = sub_20D5672E8();
  v18 = sub_20D566F08();
  v19 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81EDE0) + 36);
  *v19 = v17;
  *(v19 + 8) = v18;
  v20 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81EDE8) + 36));
  v21 = *(sub_20D566978() + 20);
  v22 = *MEMORY[0x277CE0118];
  v23 = sub_20D566B58();
  (*(*(v23 - 8) + 104))(&v20[v21], v22, v23);
  __asm { FMOV            V0.2D, #12.0 }

  *v20 = _Q0;
  *&v20[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81EDF0) + 36)] = 256;
  LOBYTE(v22) = sub_20D566F18();
  sub_20D566778();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81EDF8);
  v38 = a1 + *(result + 36);
  *v38 = v22;
  *(v38 + 8) = v30;
  *(v38 + 16) = v32;
  *(v38 + 24) = v34;
  *(v38 + 32) = v36;
  *(v38 + 40) = 0;
  return result;
}

uint64_t sub_20CFE4B58@<X0>(__int128 *a1@<X0>, _OWORD *a2@<X8>)
{
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81EE00);
  MEMORY[0x28223BE20](v97);
  v5 = &v91 - v4;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81EE08);
  v6 = MEMORY[0x28223BE20](v98);
  v100 = &v91 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v99 = &v91 - v8;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81EE10);
  v9 = MEMORY[0x28223BE20](v93);
  v117 = &v91 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v91 - v11;
  v149 = a1[1];
  v13 = *(&v149 + 1);
  v14 = sub_20D105E2C();
  v16 = HIBYTE(v15) & 0xF;
  v119 = v14;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v16 = v14 & 0xFFFFFFFFFFFFLL;
  }

  if (v16)
  {
    v118 = v15;
    v17 = sub_20D5677F8();
    v18 = HULocalizedString(v17);

    v19 = sub_20D567838();
    v115 = v20;
    v116 = v19;

    *(&v113 + 1) = 0x800000020D5D3730;
    v114 = 0x800000020D5D3710;
    v112 = 0xD000000000000017;
    *&v113 = 0xD00000000000002BLL;
  }

  else
  {

    v115 = 0;
    v116 = 0;
    v118 = 0;
    v119 = 0;
    v112 = 0;
    v113 = 0uLL;
    v114 = 0;
  }

  v21 = sub_20D105F00();
  v23 = HIBYTE(v22) & 0xF;
  if ((v22 & 0x2000000000000000) == 0)
  {
    v23 = v21 & 0xFFFFFFFFFFFFLL;
  }

  if (v23)
  {
    *&v111 = v21;
    *(&v111 + 1) = v22;
    v24 = sub_20D5677F8();
    v25 = HULocalizedString(v24);

    v26 = sub_20D567838();
    v109 = v27;
    v110 = v26;

    v107 = 0x800000020D5D37C0;
    v108 = 0x800000020D5D37A0;
    v105 = 0xD00000000000002ELL;
    v106 = 0xD00000000000001ALL;
  }

  else
  {

    v109 = 0;
    v110 = 0;
    v111 = 0uLL;
    v105 = 0;
    v106 = 0;
    v107 = 0;
    v108 = 0;
  }

  v96 = v13;
  v28 = sub_20D107D74();
  if (v28)
  {
    v29 = v28;
    v30 = [objc_opt_self() stringFromPostalAddress:v28 style:0];
    v31 = sub_20D567838();
    v33 = v32;
  }

  else
  {
    v31 = 0;
    v33 = 0xE000000000000000;
  }

  v34 = HIBYTE(v33) & 0xF;
  if ((v33 & 0x2000000000000000) == 0)
  {
    v34 = v31 & 0xFFFFFFFFFFFFLL;
  }

  if (v34)
  {
    v103 = v33;
    v104 = v31;
    v35 = sub_20D5677F8();
    v36 = HULocalizedString(v35);

    v101 = sub_20D567838();
    v95 = v37;

    v94 = 0x800000020D5D3820;
    v38 = 0xD000000000000030;
    *(&v102 + 1) = 0xEA00000000006C6CLL;
    *&v102 = 0x69662E6573756F68;
  }

  else
  {

    v101 = 0;
    v102 = 0uLL;
    v94 = 0;
    v95 = 0;
    v103 = 0;
    v104 = 0;
    v38 = 0;
  }

  v91 = v38;
  sub_20D567528();
  v39 = sub_20D566F58();
  sub_20D566778();
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v48 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81EE18) + 36)];
  *v48 = v39;
  *(v48 + 1) = v41;
  *(v48 + 2) = v43;
  *(v48 + 3) = v45;
  *(v48 + 4) = v47;
  v48[40] = 0;
  v49 = sub_20D566F18();
  sub_20D566778();
  v50 = &v12[*(v93 + 36)];
  *v50 = v49;
  *(v50 + 1) = v51;
  *(v50 + 2) = v52;
  *(v50 + 3) = v53;
  *(v50 + 4) = v54;
  v50[40] = 0;
  v55 = sub_20D5677F8();
  v56 = HULocalizedString(v55);

  v57 = sub_20D567838();
  v58 = v12;
  v92 = v12;
  v60 = v59;

  v141 = v57;
  v142 = v60;
  v148 = *a1;
  v61 = *(a1 + 4);
  v62 = swift_allocObject();
  v63 = a1[1];
  v62[1] = *a1;
  v62[2] = v63;
  v62[3] = a1[2];
  sub_20CFE60E8(&v148, v135);
  sub_20CEF9178(&v149, v135, &unk_27C81EE20);
  sub_20CEC81F4(v61);
  sub_20CEF44D8();
  sub_20D5674A8();
  v64 = sub_20D567358();
  KeyPath = swift_getKeyPath();
  v66 = &v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81EE30) + 36)];
  *v66 = KeyPath;
  v66[1] = v64;
  LOBYTE(v64) = sub_20D566F28();
  sub_20D566778();
  v67 = &v5[*(v97 + 36)];
  *v67 = v64;
  *(v67 + 1) = v68;
  *(v67 + 2) = v69;
  *(v67 + 3) = v70;
  *(v67 + 4) = v71;
  v67[40] = 0;
  sub_20CFE6678(&qword_27C81EE38, &qword_27C81EE00, &unk_20D5C38A8, sub_20CFE6144);
  v72 = v99;
  sub_20D567188();
  sub_20CEF928C(v5, &qword_27C81EE00);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_20D566668();

  v73 = v141;
  v74 = swift_getKeyPath();
  v75 = swift_allocObject();
  *(v75 + 16) = v73;
  v76 = (v72 + *(v98 + 36));
  *v76 = v74;
  v76[1] = sub_20CFE6228;
  v76[2] = v75;
  v77 = v117;
  sub_20CEF9178(v58, v117, &qword_27C81EE10);
  v78 = v100;
  sub_20CEF9178(v72, v100, &qword_27C81EE08);
  *&v120 = v116;
  *(&v120 + 1) = v115;
  *&v121 = v119;
  *(&v121 + 1) = v118;
  *&v122 = v112;
  *(&v122 + 1) = v114;
  v123 = v113;
  v79 = v121;
  *a2 = v120;
  a2[1] = v79;
  v80 = v123;
  a2[2] = v122;
  a2[3] = v80;
  *&v124[0] = v110;
  *(&v124[0] + 1) = v109;
  v124[1] = v111;
  *&v125 = v106;
  *(&v125 + 1) = v108;
  *&v126 = v105;
  *(&v126 + 1) = v107;
  v81 = v124[0];
  v82 = v111;
  v83 = v126;
  a2[6] = v125;
  a2[7] = v83;
  a2[4] = v81;
  a2[5] = v82;
  v84 = v95;
  *&v127 = v101;
  *(&v127 + 1) = v95;
  *&v128 = v104;
  *(&v128 + 1) = v103;
  v129 = v102;
  *&v130 = v38;
  v85 = v94;
  *(&v130 + 1) = v94;
  v86 = v127;
  v87 = v128;
  v88 = v130;
  a2[10] = v102;
  a2[11] = v88;
  a2[8] = v86;
  a2[9] = v87;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81EE68);
  sub_20CEF9178(v77, a2 + *(v89 + 80), &qword_27C81EE10);
  sub_20CEF9178(v78, a2 + *(v89 + 96), &qword_27C81EE08);
  sub_20CEF9178(&v120, &v141, &qword_27C81EE70);
  sub_20CEF9178(v124, &v141, &qword_27C81EE70);
  sub_20CEF9178(&v127, &v141, &qword_27C81EE70);
  sub_20CEF928C(v72, &qword_27C81EE08);
  sub_20CEF928C(v92, &qword_27C81EE10);
  sub_20CEF928C(v78, &qword_27C81EE08);
  sub_20CEF928C(v117, &qword_27C81EE10);
  v131[0] = v101;
  v131[1] = v84;
  v131[2] = v104;
  v131[3] = v103;
  v132 = v102;
  v133 = v91;
  v134 = v85;
  sub_20CEF928C(v131, &qword_27C81EE70);
  v135[0] = v110;
  v135[1] = v109;
  v136 = v111;
  v137 = v106;
  v138 = v108;
  v139 = v105;
  v140 = v107;
  sub_20CEF928C(v135, &qword_27C81EE70);
  v141 = v116;
  v142 = v115;
  v143 = v119;
  v144 = v118;
  v145 = v112;
  v146 = v114;
  v147 = v113;
  return sub_20CEF928C(&v141, &qword_27C81EE70);
}

uint64_t sub_20CFE5538@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_20D566B88();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81EEF8);
  return sub_20CFE5590(a1, a2 + *(v4 + 44));
}

uint64_t sub_20CFE5590@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81EF00);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v28[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v28[-v8];
  v10 = a1[1];
  v33 = *a1;
  v34 = v10;
  sub_20CEF44D8();
  sub_20D5663C8();
  v11 = sub_20D5670E8();
  v30 = v12;
  v31 = v11;
  v29 = v13;
  v32 = v14;
  v15 = objc_opt_self();
  sub_20D5663C8();
  v16 = [v15 secondaryLabelColor];
  v33 = sub_20D5672E8();
  v17 = sub_20D5670B8();
  v19 = v18;
  LOBYTE(v10) = v20;
  v22 = v21;

  v33 = v17;
  v34 = v19;
  v35 = v10 & 1;
  v36 = v22;
  sub_20D5663C8();
  sub_20D567188();

  sub_20CF13F34(v17, v19, v10 & 1);

  sub_20CEF9178(v9, v7, &qword_27C81EF00);
  v24 = v30;
  v23 = v31;
  *a2 = v31;
  *(a2 + 8) = v24;
  v25 = v29 & 1;
  *(a2 + 16) = v29 & 1;
  *(a2 + 24) = v32;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81EF08);
  sub_20CEF9178(v7, a2 + *(v26 + 48), &qword_27C81EF00);
  sub_20CF14B58(v23, v24, v25);
  sub_20D5663C8();
  sub_20CEF928C(v9, &qword_27C81EF00);
  sub_20CEF928C(v7, &qword_27C81EF00);
  sub_20CF13F34(v23, v24, v25);
}

uint64_t sub_20CFE5840()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81EED0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8[-v3];
  v5 = v0[1];
  v11[0] = *v0;
  v11[1] = v5;
  v6 = v0[3];
  v11[2] = v0[2];
  v11[3] = v6;
  v10 = v11;
  v9 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81EED8);
  sub_20CF156D0(&qword_27C81EEE0, &qword_27C81EED8);
  sub_20D567428();
  sub_20CF156D0(&qword_27C81EEE8, &qword_27C81EED0);
  sub_20CFE6820();
  sub_20D567138();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_20CFE5A2C@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81EF18);
  v3 = v2 - 8;
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v25 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81EF20);
  v10 = v9 - 8;
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v25 - v14;
  sub_20D566D98();
  sub_20D5675E8();
  sub_20D566848();
  v16 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81EF28) + 36)];
  v17 = v25[1];
  *v16 = v25[0];
  *(v16 + 1) = v17;
  *(v16 + 2) = v25[2];
  v18 = sub_20D566F58();
  v19 = &v15[*(v10 + 44)];
  *v19 = v18;
  *(v19 + 8) = 0u;
  *(v19 + 24) = 0u;
  v19[40] = 1;
  sub_20D566DA8();
  v20 = sub_20D566F98();
  KeyPath = swift_getKeyPath();
  v22 = &v8[*(v3 + 44)];
  *v22 = KeyPath;
  v22[1] = v20;
  sub_20CEF9178(v15, v13, &qword_27C81EF20);
  sub_20CEF9178(v8, v6, &qword_27C81EF18);
  sub_20CEF9178(v13, a1, &qword_27C81EF20);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81EF30);
  sub_20CEF9178(v6, a1 + *(v23 + 48), &qword_27C81EF18);
  sub_20CEF928C(v8, &qword_27C81EF18);
  sub_20CEF928C(v15, &qword_27C81EF20);
  sub_20CEF928C(v6, &qword_27C81EF18);
  return sub_20CEF928C(v13, &qword_27C81EF20);
}

uint64_t sub_20CFE5CC4@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_20D566B18();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81EF10);
  return sub_20CFE5A2C(a1 + *(v2 + 44));
}

uint64_t sub_20CFE5D1C@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_20D566668();

  *a1 = v3;
  return result;
}

uint64_t sub_20CFE5D9C(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_20D566678();
}

uint64_t sub_20CFE5E58(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t get_enum_tag_for_layout_string_Ieg_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_20CFE5FF8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_20CFE6040(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_20CFE60B8()
{
  v1 = *(v0 + 48);
  if (v1)
  {
    return v1();
  }

  return result;
}

unint64_t sub_20CFE6144()
{
  result = qword_27C81EE40;
  if (!qword_27C81EE40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C81EE30);
    sub_20CF156D0(&qword_27C81CA18, &unk_27C81EE50);
    sub_20CF156D0(&qword_27C81CCB0, &qword_27C81EE60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81EE40);
  }

  return result;
}

uint64_t sub_20CFE6240(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_20CEF5FFC;

  return sub_20CFE333C(a1, v4, v5, v6, v7, v8);
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_20CFE631C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_20CFE6364(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_20CFE63C4()
{
  result = qword_27C81EE78;
  if (!qword_27C81EE78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C81EDF8);
    sub_20CFE6450();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81EE78);
  }

  return result;
}

unint64_t sub_20CFE6450()
{
  result = qword_27C81EE80;
  if (!qword_27C81EE80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C81EDE8);
    sub_20CFE6508();
    sub_20CF156D0(&qword_27C81C8A8, &qword_27C81EDF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81EE80);
  }

  return result;
}

unint64_t sub_20CFE6508()
{
  result = qword_27C81EE88;
  if (!qword_27C81EE88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C81EDE0);
    sub_20CFE65C0();
    sub_20CF156D0(&qword_27C81CBA8, &unk_27C81EEC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81EE88);
  }

  return result;
}

unint64_t sub_20CFE65C0()
{
  result = qword_27C81EE90;
  if (!qword_27C81EE90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C81EDD8);
    sub_20CFE6678(&qword_27C81EE98, &qword_27C81EDD0, &unk_20D5C3878, sub_20CFE66FC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81EE90);
  }

  return result;
}

uint64_t sub_20CFE6678(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

unint64_t sub_20CFE66FC()
{
  result = qword_27C81EEA0;
  if (!qword_27C81EEA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C81EDC8);
    sub_20CF156D0(&qword_27C81EEA8, &unk_27C81EEB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81EEA0);
  }

  return result;
}

uint64_t sub_20CFE67D8@<X0>(uint64_t *a1@<X8>)
{
  sub_20D5663C8();
  result = sub_20D5673C8();
  *a1 = result;
  return result;
}

unint64_t sub_20CFE6820()
{
  result = qword_27C81EEF0;
  if (!qword_27C81EEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81EEF0);
  }

  return result;
}

uint64_t static UIImage.filledVariant(of:)(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v3 = *MEMORY[0x277D49428];
  *&v9[0] = a1;
  *(&v9[0] + 1) = a2;
  sub_20D5663C8();
  v4 = [v3 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v4)
  {
    sub_20D568628();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9[0] = v7;
  v9[1] = v8;
  if (!*(&v8 + 1))
  {
    sub_20CFE69A4(v9);
    goto LABEL_8;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    sub_20D5663C8();
    return v2;
  }

  return v6;
}

uint64_t sub_20CFE69A4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81BF00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id static UIImage.hu_systemTabImage(named:filled:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = sub_20D5677F8();
  if (a3)
  {
    v5 = 0x40000000;
  }

  else
  {
    v5 = 0;
  }

  v6 = [objc_opt_self() _systemImageNamed_variant_];

  return v6;
}

id sub_20CFE6A74(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  sub_20D567838();
  v5 = sub_20D5677F8();
  if (a4)
  {
    v6 = 0x40000000;
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_opt_self() _systemImageNamed_variant_];

  return v7;
}

id sub_20CFE6B54()
{
  v1 = OBJC_IVAR___HUEmbeddedTriggerActionGridViewController_triggerBuilder;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_20CFE6C08(uint64_t a1)
{
  v3 = OBJC_IVAR___HUEmbeddedTriggerActionGridViewController_triggerBuilder;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_20CFE6C60(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___HUEmbeddedTriggerActionGridViewController_triggerBuilder;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

uint64_t sub_20CFE6E20()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_20CFE6E80(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR___HUEmbeddedTriggerActionGridViewController_triggerActionGridDelegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_20CED1190;
}

char *EmbeddedTriggerActionGridViewController.init(triggerBuilder:)(void *a1)
{
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR___HUEmbeddedTriggerActionGridViewController_triggerBuilder] = a1;
  v3 = a1;
  v4 = [v3 triggerActionSets];
  v5 = [v3 home];
  v6 = v4;
  v7 = sub_20CFE7364(v6, v5, v1);

  v8 = &v7[OBJC_IVAR____TtC6HomeUI24ActionGridViewController_delegate];
  swift_beginAccess();
  *(v8 + 1) = &protocol witness table for EmbeddedTriggerActionGridViewController;
  swift_unknownObjectWeakAssign();
  v9 = &v7[OBJC_IVAR____TtC6HomeUI24ActionGridViewController_actionGridConfig];
  swift_beginAccess();
  *(v9 + 3) = 1;
  v10 = *&v7[OBJC_IVAR____TtC6HomeUI24ActionGridViewController_actionGridModule];
  if (v10)
  {
    v11 = *v9;
    v12 = *(v9 + 1);
    v13 = *(v9 + 2);
    v27 = *(v9 + 24);
    v25 = v12;
    v26 = v13;
    v24 = v11;
    v14 = &v10[OBJC_IVAR____TtC6HomeUI20ActionGridItemModule_config];
    swift_beginAccess();
    v15 = *v14;
    v16 = *(v14 + 1);
    v17 = *(v14 + 2);
    v29 = *(v14 + 24);
    v28[1] = v16;
    v28[2] = v17;
    v28[0] = v15;
    v18 = v24;
    v19 = v25;
    v20 = v26;
    *(v14 + 24) = v27;
    *(v14 + 1) = v19;
    *(v14 + 2) = v20;
    *v14 = v18;
    v21 = v10;
    sub_20CFE769C(&v24, &v23);
    sub_20CFE76F8(v28);
  }

  return v7;
}

uint64_t sub_20CFE71D0()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = result;
    v3 = OBJC_IVAR___HUEmbeddedTriggerActionGridViewController_triggerBuilder;
    swift_beginAccess();
    v4 = *(v0 + v3);
    [v2 triggerActionGridViewController:v0 didUpdate:v4];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_20CFE72A4()
{
  v1 = v0 + OBJC_IVAR___HUEmbeddedTriggerActionGridViewController_triggerActionGridDelegate;

  return sub_20CEC8088(v1);
}

id EmbeddedTriggerActionGridViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EmbeddedTriggerActionGridViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_20CFE7364(uint64_t a1, void *a2, char *a3)
{
  v25[3] = sub_20CECF940(0, &qword_27C81EF70);
  v25[4] = MEMORY[0x277D13310];
  v25[0] = a1;
  *&a3[OBJC_IVAR____TtC6HomeUI24ActionGridViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v6 = &a3[OBJC_IVAR____TtC6HomeUI24ActionGridViewController_actionGridConfig];
  *v6 = 0;
  *(v6 + 1) = 0;
  v6[16] = 1;
  *(v6 + 24) = xmmword_20D5C3B50;
  *(v6 + 5) = 0;
  *(v6 + 24) = 1;
  *&a3[OBJC_IVAR____TtC6HomeUI24ActionGridViewController_actionGridModule] = 0;
  *&a3[OBJC_IVAR____TtC6HomeUI24ActionGridViewController_actionGridModuleController] = 0;
  *&a3[OBJC_IVAR____TtC6HomeUI24ActionGridViewController_dataModelObserverCancelable] = 0;
  sub_20CECF7A0(v25, &v18);
  type metadata accessor for ActionSetDeviceDataModel();
  v7 = swift_allocObject();
  sub_20D563808();
  sub_20CF02B6C(&v18, v7 + 16);
  *&a3[OBJC_IVAR____TtC6HomeUI24ActionGridViewController_accessoryControlDataModel] = v7;
  v8 = [objc_allocWithZone(MEMORY[0x277D14B08]) initWithDelegate_];
  v9 = type metadata accessor for ActionGridViewController();
  v24.receiver = a3;
  v24.super_class = v9;
  v10 = objc_msgSendSuper2(&v24, sel_initUsingCompositionalLayoutWithItemManager_, v8);
  [v8 setDelegate_];
  if (a2)
  {
    v11 = swift_allocObject();
    *(v11 + 16) = a2;
    v21 = sub_20CFE7D40;
    v22 = v11;
    *&v18 = MEMORY[0x277D85DD0];
    *(&v18 + 1) = 1107296256;
    v19 = sub_20CF351D8;
    v20 = &block_descriptor_36_0;
    v12 = _Block_copy(&v18);
    v13 = a2;

    [v8 setHomeCreator_];
    _Block_release(v12);
  }

  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_20CECF7A0(v25, v23);
  v15 = swift_allocObject();
  sub_20CF02B6C(v23, v15 + 16);
  *(v15 + 56) = v14;
  v21 = sub_20CFE7D34;
  v22 = v15;
  *&v18 = MEMORY[0x277D85DD0];
  *(&v18 + 1) = 1107296256;
  v19 = sub_20CF35658;
  v20 = &block_descriptor_29_2;
  v16 = _Block_copy(&v18);

  [v8 setItemModuleCreator_];
  _Block_release(v16);

  __swift_destroy_boxed_opaque_existential_1(v25);
  return v10;
}

id sub_20CFE797C(uint64_t a1, void *a2, char *a3)
{
  v25[3] = sub_20CECF940(0, &qword_27C81EF68);
  v25[4] = MEMORY[0x277D132E0];
  v25[0] = a1;
  *&a3[OBJC_IVAR____TtC6HomeUI24ActionGridViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v6 = &a3[OBJC_IVAR____TtC6HomeUI24ActionGridViewController_actionGridConfig];
  *v6 = 0;
  *(v6 + 1) = 0;
  v6[16] = 1;
  *(v6 + 24) = xmmword_20D5C3B50;
  *(v6 + 5) = 0;
  *(v6 + 24) = 1;
  *&a3[OBJC_IVAR____TtC6HomeUI24ActionGridViewController_actionGridModule] = 0;
  *&a3[OBJC_IVAR____TtC6HomeUI24ActionGridViewController_actionGridModuleController] = 0;
  *&a3[OBJC_IVAR____TtC6HomeUI24ActionGridViewController_dataModelObserverCancelable] = 0;
  sub_20CECF7A0(v25, &v18);
  type metadata accessor for ActionSetDeviceDataModel();
  v7 = swift_allocObject();
  sub_20D563808();
  sub_20CF02B6C(&v18, v7 + 16);
  *&a3[OBJC_IVAR____TtC6HomeUI24ActionGridViewController_accessoryControlDataModel] = v7;
  v8 = [objc_allocWithZone(MEMORY[0x277D14B08]) initWithDelegate_];
  v9 = type metadata accessor for ActionGridViewController();
  v24.receiver = a3;
  v24.super_class = v9;
  v10 = objc_msgSendSuper2(&v24, sel_initUsingCompositionalLayoutWithItemManager_, v8);
  [v8 setDelegate_];
  if (a2)
  {
    v11 = swift_allocObject();
    *(v11 + 16) = a2;
    v21 = sub_20CF02BA8;
    v22 = v11;
    *&v18 = MEMORY[0x277D85DD0];
    *(&v18 + 1) = 1107296256;
    v19 = sub_20CF351D8;
    v20 = &block_descriptor_21;
    v12 = _Block_copy(&v18);
    v13 = a2;

    [v8 setHomeCreator_];
    _Block_release(v12);
  }

  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_20CECF7A0(v25, v23);
  v15 = swift_allocObject();
  sub_20CF02B6C(v23, v15 + 16);
  *(v15 + 56) = v14;
  v21 = sub_20CFE7CB4;
  v22 = v15;
  *&v18 = MEMORY[0x277D85DD0];
  *(&v18 + 1) = 1107296256;
  v19 = sub_20CF35658;
  v20 = &block_descriptor_21;
  v16 = _Block_copy(&v18);

  [v8 setItemModuleCreator_];
  _Block_release(v16);

  __swift_destroy_boxed_opaque_existential_1(v25);
  return v10;
}

uint64_t block_copy_helper_21(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_14Tm()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

id sub_20CFE7EC8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t, id))
{
  if (a3)
  {
    v7 = sub_20D567838();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v10 = a4;
  v11 = a5(v7, v9, v10);

  return v11;
}

id sub_20CFE8034()
{
  v1 = v0;
  v2 = [objc_allocWithZone(MEMORY[0x277D2C8F8]) initWithObject_];
  if (!v2)
  {
    v19.receiver = v0;
    v19.super_class = type metadata accessor for DashboardContext();
    v16 = objc_msgSendSuper2(&v19, sel_description);
    v17 = sub_20D567838();
    goto LABEL_7;
  }

  v3 = v2;
  v4 = *&v0[OBJC_IVAR___HUDashboardContext_type];
  v5 = v1[OBJC_IVAR___HUDashboardContext_type + 8];
  LOBYTE(v18) = v5;
  sub_20CFEE3BC(v4, v5);
  v6 = sub_20D568C48();
  v7 = sub_20D5677F8();

  swift_unknownObjectRelease();
  v8 = *&v1[OBJC_IVAR___HUDashboardContext_home];
  v9 = sub_20D5677F8();

  v10 = *&v1[OBJC_IVAR___HUDashboardContext_room];
  v11 = sub_20D5677F8();

  if (!v5)
  {
    sub_20CFEE3BC(v4, 0);
    v12 = v4;
    v13 = sub_20D5677F8();
    v14 = [v3 appendObject:v12 withName:v13];

    sub_20CFEE3D0(v4, 0);
    sub_20CFEE3D0(v4, 0);
  }

  result = [v3 build];
  if (result)
  {
    v16 = result;
    v17 = sub_20D567838();

LABEL_7:
    return v17;
  }

  __break(1u);
  return result;
}

uint64_t sub_20CFE828C(uint64_t a1)
{
  sub_20CFB2168(a1, v20);
  if (!v21)
  {
    sub_20CEF928C(v20, &qword_27C81BF00);
    goto LABEL_16;
  }

  type metadata accessor for DashboardContext();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_16:
    LOBYTE(v9) = 0;
    return v9 & 1;
  }

  v2 = *(v1 + OBJC_IVAR___HUDashboardContext_type);
  v3 = *&v19[OBJC_IVAR___HUDashboardContext_type];
  v4 = v19[OBJC_IVAR___HUDashboardContext_type + 8];
  v5 = *(v1 + OBJC_IVAR___HUDashboardContext_type + 8);
  sub_20CFEE3BC(v3, v4);
  LOBYTE(v2) = sub_20CFED15C(v2, v5, v3, v4);
  sub_20CFEE3D0(v3, v4);
  if ((v2 & 1) == 0)
  {
    goto LABEL_15;
  }

  sub_20CECF940(0, &qword_28111FB10);
  v6 = *&v19[OBJC_IVAR___HUDashboardContext_home];
  v7 = sub_20D5683F8();

  if ((v7 & 1) == 0)
  {
    goto LABEL_15;
  }

  v8 = *(v1 + OBJC_IVAR___HUDashboardContext_room);
  v9 = *&v19[OBJC_IVAR___HUDashboardContext_room];
  if (!v8)
  {
    v12 = v1;
    if (!v9)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

  if (!v9)
  {
LABEL_21:

    return v9 & 1;
  }

  sub_20CECF940(0, &unk_27C81EFA0);
  v10 = v9;
  v11 = v8;
  v12 = v1;
  v13 = sub_20D5683F8();

  if ((v13 & 1) == 0)
  {
LABEL_15:

    goto LABEL_16;
  }

LABEL_8:
  v14 = (v12 + OBJC_IVAR___HUDashboardContext_overrideDashboardTitle);
  swift_beginAccess();
  v15 = *v14;
  v16 = v14[1];
  v17 = &v19[OBJC_IVAR___HUDashboardContext_overrideDashboardTitle];
  swift_beginAccess();
  v9 = v17[1];
  if (!v16)
  {
    sub_20D5663C8();

    if (!v9)
    {
      LOBYTE(v9) = 1;
      return v9 & 1;
    }

    goto LABEL_16;
  }

  if (!v9)
  {
    goto LABEL_21;
  }

  if (v15 != *v17 || v16 != v9)
  {
    LOBYTE(v9) = sub_20D568BF8();
    goto LABEL_21;
  }

  LOBYTE(v9) = 1;
  return v9 & 1;
}

unint64_t DashboardContext.BackgroundStyle.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

void *DashboardContext.room.getter()
{
  v1 = *(v0 + OBJC_IVAR___HUDashboardContext_room);
  v2 = v1;
  return v1;
}

id sub_20CFE8660()
{
  v1 = (v0 + OBJC_IVAR___HUDashboardContext_type);
  if (*(v0 + OBJC_IVAR___HUDashboardContext_type + 8))
  {
    return 0;
  }

  v2 = *v1;
  v3 = *v1;
  return v2;
}

uint64_t sub_20CFE86BC()
{
  if (!*(v0 + OBJC_IVAR___HUDashboardContext_type + 8))
  {
    v17 = objc_opt_self();
    v18 = [v17 energyAccessoryTypeGroup];
    sub_20CECF940(0, &qword_28111FEA8);
    v19 = sub_20D5683F8();

    if (v19)
    {
      return 0x79726F6765746163;
    }

    v21 = [v17 climateAccessoryTypeGroup];
    v22 = sub_20D5683F8();

    if (v22)
    {
      return 0xD000000000000010;
    }

    v23 = [v17 lightAccessoryTypeGroup];
    v24 = sub_20D5683F8();

    if (v24)
    {
      return 0x79726F6765746163;
    }

    v25 = [v17 mediaAccessoryTypeGroup];
    v26 = sub_20D5683F8();

    if (v26)
    {
      return 0x79726F6765746163;
    }

    v27 = [v17 securityAccessoryTypeGroup];
    v28 = sub_20D5683F8();

    if (v28)
    {
      return 0xD000000000000011;
    }

    v30 = [v17 waterAccessoryTypeGroup];
    v31 = sub_20D5683F8();

    if (v31)
    {
      return 0x79726F6765746163;
    }

    else
    {
      return 0;
    }
  }

  if (*(v0 + OBJC_IVAR___HUDashboardContext_type + 8) != 1)
  {
    if (*(v0 + OBJC_IVAR___HUDashboardContext_type))
    {
      return 1836019570;
    }

    else
    {
      return 1701670760;
    }
  }

  v1 = sub_20D567838();
  v3 = v2;
  if (v1 == sub_20D567838() && v3 == v4)
  {

    return 0xD000000000000015;
  }

  v6 = sub_20D568BF8();

  if (v6)
  {
    return 0xD000000000000015;
  }

  v7 = sub_20D567838();
  v9 = v8;
  if (v7 == sub_20D567838() && v9 == v10)
  {

    return 0xD000000000000014;
  }

  v12 = sub_20D568BF8();

  if (v12)
  {
    return 0xD000000000000014;
  }

  v13 = sub_20D567838();
  v15 = v14;
  if (v13 == sub_20D567838() && v15 == v16)
  {

    return 0xD00000000000001CLL;
  }

  v29 = sub_20D568BF8();

  if (v29)
  {
    return 0xD00000000000001CLL;
  }

  return 0;
}

uint64_t sub_20CFE8B0C()
{
  v1 = *(v0 + OBJC_IVAR___HUDashboardContext_type + 8);
  if (*(v0 + OBJC_IVAR___HUDashboardContext_type + 8))
  {
    if (v1 == 1)
    {
      v2 = sub_20D567838();
      v4 = v3;
      if (v2 == sub_20D567838() && v4 == v5)
      {
      }

      else
      {
        v7 = sub_20D568BF8();

        if ((v7 & 1) == 0)
        {
          v8 = sub_20D567838();
          v10 = v9;
          if (v8 == sub_20D567838() && v10 == v11)
          {
          }

          else
          {
            v13 = sub_20D568BF8();

            if ((v13 & 1) == 0)
            {
              return 0;
            }
          }
        }
      }
    }

    v14 = sub_20D5677F8();

    v15 = HULocalizedString(v14);

    v1 = sub_20D567838();
  }

  return v1;
}

id sub_20CFE8D08(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();
  v6 = v5;

  if (v6)
  {
    v7 = sub_20D5677F8();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

unint64_t sub_20CFE8D88()
{
  result = *(v0 + OBJC_IVAR___HUDashboardContext_type + 8);
  if (!*(v0 + OBJC_IVAR___HUDashboardContext_type + 8))
  {
    return result;
  }

  if (result != 1)
  {
    return 0xD00000000000002CLL;
  }

  v2 = sub_20D567838();
  v4 = v3;
  if (v2 == sub_20D567838() && v4 == v5)
  {

    return 0xD00000000000002FLL;
  }

  v7 = sub_20D568BF8();

  if (v7)
  {
    return 0xD00000000000002FLL;
  }

  v8 = sub_20D567838();
  v10 = v9;
  if (v8 == sub_20D567838() && v10 == v11)
  {
  }

  else
  {
    v13 = sub_20D568BF8();

    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  return 0xD00000000000002ELL;
}

uint64_t sub_20CFE8F78()
{
  v1 = OBJC_IVAR___HUDashboardContext_accessoryGroupingStyle;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_20CFE9058()
{
  v1 = OBJC_IVAR___HUDashboardContext_accessoryLikeItemObjectLevel;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_20CFE9138()
{
  v1 = OBJC_IVAR___HUDashboardContext_allowsAdding;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_20CFE9218()
{
  v1 = OBJC_IVAR___HUDashboardContext_allowsAnnounce;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_20CFE92F8()
{
  v1 = OBJC_IVAR___HUDashboardContext_allowsEditing;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_20CFE93D8()
{
  v1 = OBJC_IVAR___HUDashboardContext_allowsEnergyIndicator;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_20CFE94B8()
{
  v1 = OBJC_IVAR___HUDashboardContext_allowsHomeNavigation;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_20CFE9598()
{
  v1 = OBJC_IVAR___HUDashboardContext_includePredictedScenes;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_20CFE9678()
{
  v1 = OBJC_IVAR___HUDashboardContext_backgroundStyle;
  swift_beginAccess();
  return *(v0 + v1);
}

void *sub_20CFE975C()
{
  v1 = OBJC_IVAR___HUDashboardContext_overrideNavigationBarTintColor;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_20CFE9808(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___HUDashboardContext_overrideNavigationBarTintColor;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

uint64_t sub_20CFE98B0()
{
  v1 = OBJC_IVAR___HUDashboardContext_scenePresentationStyle;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_20CFE9990()
{
  v1 = OBJC_IVAR___HUDashboardContext_cameraPresentationStyle;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_20CFE9A70()
{
  v1 = OBJC_IVAR___HUDashboardContext_filterPresentationStyle;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_20CFE9B94()
{
  v1 = (v0 + OBJC_IVAR___HUDashboardContext_overrideDashboardTitle);
  swift_beginAccess();
  v2 = *v1;
  sub_20D5663C8();
  return v2;
}

uint64_t sub_20CFE9C68(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR___HUDashboardContext_overrideDashboardTitle);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;
  sub_20D5663C8();
}

uint64_t sub_20CFE9D1C()
{
  v1 = OBJC_IVAR___HUDashboardContext_shouldDelayItemUpdatesForViewVisibility;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_20CFE9DFC()
{
  v1 = OBJC_IVAR___HUDashboardContext_shouldHideEmptySections;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_20CFE9EDC()
{
  v1 = OBJC_IVAR___HUDashboardContext_shouldHidePlaceholderService;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_20CFE9FBC()
{
  v1 = OBJC_IVAR___HUDashboardContext_shouldHideForGuests;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_20CFEA09C()
{
  v1 = OBJC_IVAR___HUDashboardContext_shouldIncludeRoomInAccessoryNames;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_20CFEA134(void *a1)
{
  v3 = sub_20D565DE8();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v32 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v32 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = v32 - v14;
  ObjectType = swift_getObjectType();
  if (sub_20CFECCC8(a1, v1))
  {
    return 0;
  }

  sub_20D5681A8();
  objc_opt_self();
  v18 = swift_dynamicCastObjCClass();
  if (v18)
  {
    v19 = [v18 hf_isSupportedAccessory];
    swift_unknownObjectRelease();
    if (!v19)
    {
      return 1;
    }
  }

  else
  {
    swift_unknownObjectRelease();
  }

  v35 = a1;
  v32[1] = a1;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81F040);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81F048);
  if (swift_dynamicCast())
  {
    sub_20CF02B6C(v33, v36);
    v32[0] = ObjectType;
    __swift_project_boxed_opaque_existential_1(v36, v36[3]);
    sub_20D565EC8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81EA50);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_20D5BEE70;
    sub_20D565DB8();
    sub_20D565DA8();
    sub_20D565DD8();
    *&v33[0] = v20;
    sub_20CFEE3E4(&qword_27C81F060, MEMORY[0x277D13288]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81EA60);
    sub_20CFCF230();
    sub_20D5686B8();
    (*(v4 + 16))(v7, v15, v3);
    sub_20D568688();
    LOBYTE(v20) = sub_20D568698();
    v21 = *(v4 + 8);
    v21(v10, v3);
    v21(v13, v3);
    v21(v15, v3);
    __swift_destroy_boxed_opaque_existential_1(v36);
    if (v20)
    {
      return 0;
    }
  }

  else
  {
    v34 = 0;
    memset(v33, 0, sizeof(v33));
    sub_20CEF928C(v33, &unk_27C81F050);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_20D5BECD0;
  v23 = objc_opt_self();
  *(v22 + 32) = [v23 categoryType_];
  *(v22 + 40) = [v23 serviceType_];
  *(v22 + 48) = [v23 serviceType_];
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_20D5BA040;
  v25 = objc_allocWithZone(MEMORY[0x277D14378]);
  sub_20CECF940(0, &qword_27C81C3E0);
  v26 = sub_20D567A58();

  v27 = [v25 initWithAccessoryTypes_];

  *(v24 + 32) = v27;
  v28 = objc_opt_self();
  sub_20CECF940(0, &qword_28111FEA8);
  v29 = sub_20D567A58();

  v30 = [v28 unionGroups_];

  v31 = sub_20D568198();
  LODWORD(v28) = [v30 containsType_];

  return v28 ^ 1;
}

uint64_t sub_20CFEA6E0(void *a1)
{
  swift_getObjectType();

  return sub_20CFECCC8(a1, v1);
}

uint64_t sub_20CFEA78C(void *a1)
{
  v3 = [a1 accessoryRepresentableObject];
  swift_getObjectType();
  v4 = sub_20CFECCC8(v3, v1);
  swift_unknownObjectRelease();
  if (v4)
  {
    return 1;
  }

  if (*(v1 + OBJC_IVAR___HUDashboardContext_type + 8) < 2u || *(v1 + OBJC_IVAR___HUDashboardContext_type))
  {
    return 0;
  }

  v6 = [objc_msgSend(a1 accessoryRepresentableObject)];
  swift_unknownObjectRelease();
  return v6 ^ 1;
}

uint64_t sub_20CFEA874(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  swift_unknownObjectRetain();
  v7 = a1;
  LOBYTE(a4) = a4(a3);
  swift_unknownObjectRelease();

  return a4 & 1;
}

void sub_20CFEA938(uint64_t a1)
{
  v3 = sub_20D563DC8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([objc_opt_self() isHomeControlService])
  {
    return;
  }

  v7 = *(v1 + OBJC_IVAR___HUDashboardContext_type);
  if (!*(v1 + OBJC_IVAR___HUDashboardContext_type + 8))
  {
    sub_20CECF940(0, &unk_28111FD50);
    if (swift_dynamicCastMetatype())
    {
      return;
    }

    v40[1] = &unk_2825BD360;
    if (swift_dynamicCastTypeToObjCProtocolConditional())
    {
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v14 = v7;
      v15 = [ObjCClassFromMetadata serviceTypes];
      v16 = sub_20D567D08();

      v17 = 1 << *(v16 + 32);
      v18 = -1;
      if (v17 < 64)
      {
        v18 = ~(-1 << v17);
      }

      v19 = v18 & *(v16 + 56);
      v20 = (v17 + 63) >> 6;
      sub_20D5663C8();
      v21 = 0;
      while (v19)
      {
LABEL_19:
        v19 &= v19 - 1;
        v23 = objc_opt_self();
        sub_20D5663C8();
        v24 = sub_20D5677F8();
        v25 = [v23 serviceType_];

        LODWORD(v24) = [v14 containsType_];

        if (v24)
        {
LABEL_29:
          sub_20CFEE3D0(v7, 0);

          return;
        }
      }

      while (1)
      {
        v22 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          break;
        }

        if (v22 >= v20)
        {
          goto LABEL_29;
        }

        v19 = *(v16 + 56 + 8 * v22);
        ++v21;
        if (v19)
        {
          v21 = v22;
          goto LABEL_19;
        }
      }

      __break(1u);
      return;
    }

    sub_20CECF940(0, &qword_28111FEA8);
    v31 = objc_opt_self();
    v32 = v7;
    v33 = [v31 mediaAccessoryTypeGroup];
    v34 = sub_20D5683F8();

    if (v34)
    {
      sub_20CFEE3D0(v7, 0);
      sub_20CECF940(0, &qword_27C81F0E0);
    }

    else
    {
      v35 = [v31 securityAccessoryTypeGroup];
      v36 = sub_20D5683F8();

      if (v36)
      {
        sub_20CFEE3D0(v7, 0);
        sub_20D565E98();
      }

      else
      {
        v37 = [v31 climateAccessoryTypeGroup];
        v38 = sub_20D5683F8();

        if ((v38 & 1) == 0)
        {
          sub_20CFEE3D0(v7, 0);
          return;
        }

        (*(v4 + 104))(v6, *MEMORY[0x277D15280], v3);
        sub_20CFEE3E4(&qword_27C81D9F8, MEMORY[0x277D15298]);
        v39 = sub_20D563978();
        sub_20CFEE3D0(v7, 0);
        (*(v4 + 8))(v6, v3);
        if ((v39 & 1) == 0)
        {
          return;
        }

        sub_20D565E48();
      }
    }

    swift_dynamicCastMetatype();
    return;
  }

  if (*(v1 + OBJC_IVAR___HUDashboardContext_type + 8) == 1)
  {
    v8 = [objc_opt_self() hu_homeMenuStatusItemClasses];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81E7D0);
    v9 = sub_20D567A78();

    v10 = *(v9 + 16);
    v11 = 32;
    do
    {
      if (!v10)
      {
        break;
      }

      v12 = *(v9 + v11);
      v11 += 8;
      --v10;
    }

    while (v12 != a1);
LABEL_27:

    return;
  }

  if (!v7)
  {
    v26 = [objc_opt_self() hu_homeMenuStatusItemClasses];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81E7D0);
    v27 = sub_20D567A78();

    v28 = *(v27 + 16);
    v29 = 32;
    do
    {
      if (!v28)
      {
        break;
      }

      v30 = *(v27 + v29);
      v29 += 8;
      --v28;
    }

    while (v30 != a1);
    goto LABEL_27;
  }

  sub_20D565C38();
  if (!swift_dynamicCastMetatype())
  {
    sub_20CECF940(0, &unk_28111FD50);
    swift_dynamicCastMetatype();
  }
}

uint64_t sub_20CFEAF5C()
{
  sub_20CECF940(0, &unk_28111FED8);
  if (!swift_dynamicCastMetatype())
  {
    return 1;
  }

  if (*(v0 + OBJC_IVAR___HUDashboardContext_type + 8) < 2u || *(v0 + OBJC_IVAR___HUDashboardContext_type))
  {
    return 0;
  }

  return [objc_opt_self() isHomeControlService] ^ 1;
}

uint64_t sub_20CFEB090(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C180);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v108 - v6;
  v8 = sub_20D563DB8();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v108 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v2 + OBJC_IVAR___HUDashboardContext_type);
  v14 = *(v2 + OBJC_IVAR___HUDashboardContext_type + 8);
  if (v14 != 1)
  {
    v110 = v10;
    v19 = sub_20D5677F8();
    v20 = sub_20D567838();
    v22 = v21;
    if (v20 == sub_20D567838() && v22 == v23)
    {

      goto LABEL_15;
    }

    v109 = v13;
    v25 = sub_20D568BF8();
    v26 = v19;

    if (v25)
    {

      v13 = v109;
LABEL_15:
      if (v14 != 2 || v13 != 0)
      {
        goto LABEL_19;
      }

      v28 = [objc_opt_self() isHomeControlService];
      goto LABEL_21;
    }

    v108 = v26;
    v29 = sub_20D567838();
    v31 = v30;
    if (v29 == sub_20D567838() && v31 == v32)
    {
      v33 = v108;

      goto LABEL_27;
    }

    v34 = sub_20D568BF8();

    if (v34)
    {
      v33 = v108;

LABEL_27:
      if (v14 != 2 || v109 || [objc_opt_self() isHomeControlService])
      {
LABEL_30:

        v18 = 1;
        return v18 & 1;
      }

      v39 = [*(v2 + OBJC_IVAR___HUDashboardContext_home) hf_shouldBlockCurrentUserFromHome];
LABEL_40:
      v18 = v39;

      return v18 & 1;
    }

    v35 = sub_20D567838();
    v37 = v36;
    if (v35 == sub_20D567838() && v37 == v38)
    {
      v33 = v108;

      goto LABEL_37;
    }

    v40 = sub_20D568BF8();

    if (v40)
    {
      v33 = v108;

LABEL_37:
      if (v14 != 2 || v109)
      {
        goto LABEL_30;
      }

      v39 = [*(v2 + OBJC_IVAR___HUDashboardContext_home) hf_currentUserIsRestrictedGuest];
      goto LABEL_40;
    }

    v42 = sub_20D567838();
    v44 = v43;
    if (v42 == sub_20D567838() && v44 == v45)
    {
      v46 = v108;

LABEL_47:
      v49 = OBJC_IVAR___HUDashboardContext_cameraPresentationStyle;
LABEL_48:
      swift_beginAccess();
      v18 = *(v2 + v49) == 0;
      return v18 & 1;
    }

    v47 = sub_20D568BF8();

    if (v47)
    {
      v48 = v108;

      goto LABEL_47;
    }

    v50 = sub_20D567838();
    v52 = v51;
    if (v50 == sub_20D567838() && v52 == v53)
    {
      v54 = v108;

LABEL_54:
      v49 = OBJC_IVAR___HUDashboardContext_scenePresentationStyle;
      goto LABEL_48;
    }

    v55 = sub_20D568BF8();

    if (v55)
    {
      v56 = v108;

      goto LABEL_54;
    }

    v57 = sub_20D567838();
    v59 = v58;
    if (v57 == sub_20D567838() && v59 == v60)
    {
      v19 = v108;

      goto LABEL_60;
    }

    v61 = sub_20D568BF8();

    if (v61)
    {
      v19 = v108;

LABEL_60:
      v62 = v110;
      (*(v9 + 104))(v12, *MEMORY[0x277D15240], v110);
      sub_20CFEE3E4(&qword_2811209A0, MEMORY[0x277D15260]);
      v63 = sub_20D563978();
      (*(v9 + 8))(v12, v62);
      if ((v63 & 1) == 0 || v14 != 2 || v109 || [objc_opt_self() isHomeControlService])
      {
LABEL_19:

        v18 = 1;
        return v18 & 1;
      }

      v28 = [objc_opt_self() isAMac];
LABEL_21:
      v18 = v28;

      return v18 & 1;
    }

    v64 = sub_20D567838();
    v66 = v65;
    if (v64 == sub_20D567838() && v66 == v67)
    {

      goto LABEL_70;
    }

    v68 = sub_20D568BF8();

    if (v68)
    {

LABEL_70:
      if (v14 && !v109)
      {
LABEL_72:

        v18 = 1;
        return v18 & 1;
      }

      v69 = [objc_opt_self() isHomeControlService];
LABEL_74:
      v18 = v69;

      return v18 & 1;
    }

    v70 = sub_20D567838();
    v72 = v71;
    if (v70 == sub_20D567838() && v72 == v73)
    {
    }

    else
    {
      v74 = sub_20D568BF8();

      if ((v74 & 1) == 0)
      {
        v79 = sub_20D567838();
        v81 = v80;
        if (v79 == sub_20D567838() && v81 == v82)
        {
        }

        else
        {
          v83 = sub_20D568BF8();

          if ((v83 & 1) == 0)
          {
            v85 = sub_20D567838();
            v87 = v86;
            if (v85 == sub_20D567838() && v87 == v88)
            {
            }

            else
            {
              v92 = sub_20D568BF8();

              if ((v92 & 1) == 0)
              {
                v100 = HURoomIdentifierForDashboardSectionIdentifier(v108);
                if (v100)
                {
                  v101 = v100;
                  sub_20D5637E8();

                  v102 = sub_20D563818();
                  (*(*(v102 - 8) + 56))(v7, 0, 1, v102);
                  sub_20CEF928C(v7, &qword_27C81C180);
                  v103 = OBJC_IVAR___HUDashboardContext_accessoryGroupingStyle;
                  swift_beginAccess();
                  v90 = *(v2 + v103) == 2;
                }

                else
                {
                  v104 = sub_20D563818();
                  (*(*(v104 - 8) + 56))(v7, 1, 1, v104);
                  sub_20CEF928C(v7, &qword_27C81C180);
                  v105 = v108;
                  v106 = HUAccessoryTypeGroupForDashboardSectionIdentifier(v108);

                  if (!v106)
                  {
                    v18 = 0;
                    return v18 & 1;
                  }

                  v107 = OBJC_IVAR___HUDashboardContext_accessoryGroupingStyle;
                  swift_beginAccess();
                  v90 = *(v2 + v107) == 3;
                }

                goto LABEL_103;
              }
            }

            v93 = *(v2 + OBJC_IVAR___HUDashboardContext_home);
            v94 = [v93 accessories];
            sub_20CECF940(0, &qword_28111FFF0);
            v95 = sub_20D567A78();

            if (v95 >> 62)
            {
              v96 = sub_20D568768();
            }

            else
            {
              v96 = *((v95 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v97 = OBJC_IVAR___HUDashboardContext_accessoryGroupingStyle;
            swift_beginAccess();
            v98 = *(v2 + v97);
            if (v98 != 1 || !v96)
            {
              if (!v98)
              {
                v99 = [v93 hf_shouldBlockCurrentRestrictedGuestFromHome];

                v18 = v99 ^ 1;
                return v18 & 1;
              }

              goto LABEL_72;
            }

            goto LABEL_112;
          }
        }

        if (v14 != 2)
        {
          goto LABEL_72;
        }

        if (v109)
        {
          goto LABEL_72;
        }

        v84 = *(v2 + OBJC_IVAR___HUDashboardContext_home);
        if (([v84 hf_currentUserIsRestrictedGuest] & 1) == 0)
        {
          goto LABEL_72;
        }

        v69 = [v84 hf_shouldBlockCurrentUserFromHomeForRoarUpgrade];
        goto LABEL_74;
      }
    }

    v75 = *(v2 + OBJC_IVAR___HUDashboardContext_home);
    if ([v75 hf_currentUserIsRestrictedGuest] || objc_msgSend(v75, sel_hf_shouldBlockCurrentUserFromHome))
    {
      goto LABEL_72;
    }

    v76 = [v75 hf_isHomeEnergyHomeEmpty];
    v77 = [objc_opt_self() energyAccessoryTypeGroup];
    v78 = v77;
    if (!v76)
    {
      if (v14)
      {

        v18 = 1;
      }

      else
      {
        sub_20CECF940(0, &qword_28111FB10);
        v91 = sub_20D5683F8();

        v18 = v91 ^ 1;
      }

      return v18 & 1;
    }

    if (v14)
    {

      goto LABEL_100;
    }

    sub_20CECF940(0, &qword_28111FB10);
    v89 = sub_20D5683F8();

    if ((v89 & 1) == 0)
    {
LABEL_100:

      if (v109)
      {
        v90 = 0;
      }

      else
      {
        v90 = v14 == 2;
      }

LABEL_103:
      v18 = !v90;
      return v18 & 1;
    }

LABEL_112:

    v18 = 0;
    return v18 & 1;
  }

  if (sub_20D567838() == a1 && v15 == a2)
  {

    v18 = 0;
  }

  else
  {
    v17 = sub_20D568BF8();

    v18 = v17 ^ 1;
  }

  return v18 & 1;
}

BOOL sub_20CFEBD4C(uint64_t a1, uint64_t a2)
{
  if (*(v2 + OBJC_IVAR___HUDashboardContext_type + 8) == 1)
  {
    return 0;
  }

  if (*(v2 + OBJC_IVAR___HUDashboardContext_type + 8))
  {
    return 1;
  }

  if (sub_20D567838() == a1 && v5 == a2)
  {
    goto LABEL_14;
  }

  v7 = sub_20D568BF8();

  if (v7)
  {
    return 0;
  }

  if (sub_20D567838() == a1 && v8 == a2)
  {
LABEL_14:

    return 0;
  }

  v10 = sub_20D568BF8();

  return (v10 & 1) == 0;
}

uint64_t sub_20CFEBE50()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C180);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v36 - v2;
  if (*(v0 + OBJC_IVAR___HUDashboardContext_type + 8) < 2u || *(v0 + OBJC_IVAR___HUDashboardContext_type))
  {
    return 0;
  }

  v5 = sub_20D5677F8();
  v6 = sub_20D567838();
  v8 = v7;
  if (v6 == sub_20D567838() && v8 == v9)
  {
    goto LABEL_19;
  }

  v11 = sub_20D568BF8();
  v12 = v5;

  if (v11)
  {
LABEL_10:

LABEL_20:
    v23 = [objc_opt_self() isHomeControlService];

    return v23 ^ 1;
  }

  v13 = sub_20D567838();
  v15 = v14;
  if (v13 == sub_20D567838() && v15 == v16)
  {
    goto LABEL_18;
  }

  v18 = sub_20D568BF8();

  if (v18)
  {
    goto LABEL_10;
  }

  v19 = sub_20D567838();
  v21 = v20;
  if (v19 == sub_20D567838() && v21 == v22)
  {
LABEL_18:

LABEL_19:

    goto LABEL_20;
  }

  v24 = sub_20D568BF8();

  if (v24)
  {
    goto LABEL_10;
  }

  v25 = HUAccessoryTypeGroupForDashboardSectionIdentifier(v12);
  if (v25)
  {

    goto LABEL_10;
  }

  v26 = HURoomIdentifierForDashboardSectionIdentifier(v12);
  if (v26)
  {
    v27 = v26;

    sub_20D5637E8();
    v28 = sub_20D563818();
    (*(*(v28 - 8) + 56))(v3, 0, 1, v28);
    sub_20CEF928C(v3, &qword_27C81C180);
    return 1;
  }

  v29 = sub_20D563818();
  (*(*(v29 - 8) + 56))(v3, 1, 1, v29);
  sub_20CEF928C(v3, &qword_27C81C180);
  v30 = sub_20D567838();
  v32 = v31;
  v33 = sub_20D567838();
  v35 = v34;

  if (v30 != v33 || v32 != v35)
  {
    sub_20D568BF8();
  }

  return 0;
}

uint64_t sub_20CFEC1FC(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = sub_20D567838();
  v8 = v7;
  v9 = a1;
  LOBYTE(a4) = a4(v6, v8);

  return a4 & 1;
}

uint64_t sub_20CFEC264(uint64_t a1, uint64_t a2)
{
  if (sub_20D567838() == a1 && v4 == a2)
  {
  }

  else
  {
    v6 = sub_20D568BF8();

    if ((v6 & 1) == 0)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  result = 0x7FFFFFFFFFFFFFFFLL;
  if (*(v2 + OBJC_IVAR___HUDashboardContext_type + 8) >= 2u && !*(v2 + OBJC_IVAR___HUDashboardContext_type))
  {
    return 1;
  }

  return result;
}

void sub_20CFEC454(void *a1)
{
  v53 = *(v1 + OBJC_IVAR___HUDashboardContext_type);
  if (*(v1 + OBJC_IVAR___HUDashboardContext_type + 8) >= 2u && *(v1 + OBJC_IVAR___HUDashboardContext_type) == 0)
  {
    [a1 hf_effectiveShowInHomeDashboard];
    return;
  }

  v54 = *(v1 + OBJC_IVAR___HUDashboardContext_type + 8);
  v3 = [a1 hf_affectedServices];
  sub_20CECF940(0, &qword_27C81AEC0);
  sub_20CEF7F74(&qword_27C81D290, &qword_27C81AEC0);
  v4 = sub_20D567D08();

  if ((v4 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_20D568718();
    sub_20D567D58();
    v4 = v59;
    v5 = v60;
    v6 = v61;
    v7 = v62;
    v8 = v63;
  }

  else
  {
    v9 = -1 << *(v4 + 32);
    v5 = v4 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(v4 + 56);
    sub_20D5663C8();
    v7 = 0;
  }

  v12 = (v6 + 64) >> 6;
  while (1)
  {
    v13 = v8;
    if ((v4 & 0x8000000000000000) == 0)
    {
      break;
    }

    v18 = sub_20D568798();
    if (!v18)
    {
      goto LABEL_37;
    }

    v58 = v18;
    swift_dynamicCast();
    v17 = v64;
    v16 = v13;
    if (!v64)
    {
      goto LABEL_37;
    }

LABEL_23:
    v55 = v16;
    v19 = [v17 hf_accessoryLikeObject];
    v20 = *(v57 + OBJC_IVAR___HUDashboardContext_home);
    v21 = v19;
    if ([v20 hf_shouldBlockCurrentUserFromHomeForRoarUpgrade])
    {
      goto LABEL_13;
    }

    if (v54)
    {
      if (v54 != 1 && !v53 && ([v21 hf_effectiveIsFavorite] & 1) == 0 && (objc_msgSend(v21, sel_hf_effectiveShowInHomeDashboard) & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else if (![v21 hf_isVisibleInHomeStatus])
    {
      goto LABEL_13;
    }

    v22 = *(v57 + OBJC_IVAR___HUDashboardContext_room);
    if (!v22 || (sub_20CECF940(0, &unk_27C81BF40), v23 = v22, v24 = sub_20D568228(), v23, (v24)) && (v54 || (sub_20CECF940(0, &unk_27C81BF40), v50 = v53, v25 = sub_20D568198(), LODWORD(v50) = [v50 containsType_], sub_20CFEE3D0(v53, 0), v25, (v50)))
    {
      sub_20CECF940(0, &unk_27C81BF40);
      sub_20D5681A8();
      v26 = sub_20CFECE24();

      swift_unknownObjectRelease();
      v8 = v55;
      if ((v26 & 1) == 0)
      {
LABEL_67:
        sub_20CEC80DC();

        return;
      }
    }

    else
    {
LABEL_13:

      v8 = v55;
    }
  }

  v14 = v7;
  v15 = v8;
  if (v8)
  {
LABEL_19:
    v16 = (v15 - 1) & v15;
    v17 = *(*(v4 + 48) + ((v7 << 9) | (8 * __clz(__rbit64(v15)))));
    if (!v17)
    {
      goto LABEL_37;
    }

    goto LABEL_23;
  }

  while (1)
  {
    v7 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_70;
    }

    if (v7 >= v12)
    {
      break;
    }

    v15 = *(v5 + 8 * v7);
    ++v14;
    if (v15)
    {
      goto LABEL_19;
    }
  }

LABEL_37:
  sub_20CEC80DC();

  v27 = [a1 hf_affectedProfiles];
  sub_20CECF940(0, &unk_27C81D480);
  sub_20CEF7F74(&unk_27C81BF30, &unk_27C81D480);
  v28 = sub_20D567D08();

  if ((v28 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_20D568718();
    sub_20D567D58();
    v28 = v64;
    v29 = v65;
    v30 = v66;
    v31 = v67;
    v32 = v68;
  }

  else
  {
    v33 = -1 << *(v28 + 32);
    v29 = v28 + 56;
    v30 = ~v33;
    v34 = -v33;
    if (v34 < 64)
    {
      v35 = ~(-1 << v34);
    }

    else
    {
      v35 = -1;
    }

    v32 = v35 & *(v28 + 56);
    sub_20D5663C8();
    v31 = 0;
  }

  v36 = (v30 + 64) >> 6;
  while (1)
  {
    v37 = v32;
    if ((v28 & 0x8000000000000000) == 0)
    {
      break;
    }

    if (!sub_20D568798())
    {
      goto LABEL_67;
    }

    swift_dynamicCast();
    v41 = v58;
    v40 = v37;
    if (!v58)
    {
      goto LABEL_67;
    }

LABEL_54:
    v56 = v40;
    v42 = [v41 hf_accessoryLikeObject];
    v43 = *(v57 + OBJC_IVAR___HUDashboardContext_home);
    v44 = v42;
    if ([v43 hf_shouldBlockCurrentUserFromHomeForRoarUpgrade])
    {
      goto LABEL_44;
    }

    if (v54)
    {
      if (v54 != 1 && !v53 && ([v44 hf_effectiveIsFavorite] & 1) == 0 && (objc_msgSend(v44, sel_hf_effectiveShowInHomeDashboard) & 1) == 0)
      {
        goto LABEL_44;
      }
    }

    else if (![v44 hf_isVisibleInHomeStatus])
    {
      goto LABEL_44;
    }

    v45 = *(v57 + OBJC_IVAR___HUDashboardContext_room);
    if (v45 && (sub_20CECF940(0, &unk_27C81BF40), v46 = v45, v47 = sub_20D568228(), v46, (v47 & 1) == 0) || !v54 && (sub_20CECF940(0, &unk_27C81BF40), v52 = v53, v48 = sub_20D568198(), LOBYTE(v52) = [v52 containsType_], sub_20CFEE3D0(v53, 0), v48, (v52 & 1) == 0))
    {
LABEL_44:

      v32 = v56;
      continue;
    }

    sub_20CECF940(0, &unk_27C81BF40);
    sub_20D5681A8();
    v49 = sub_20CFECE24();

    swift_unknownObjectRelease();
    v32 = v56;
    if ((v49 & 1) == 0)
    {
      goto LABEL_67;
    }
  }

  v38 = v31;
  v39 = v32;
  if (v32)
  {
LABEL_50:
    v40 = (v39 - 1) & v39;
    v41 = *(*(v28 + 48) + ((v31 << 9) | (8 * __clz(__rbit64(v39)))));
    if (!v41)
    {
      goto LABEL_67;
    }

    goto LABEL_54;
  }

  while (1)
  {
    v31 = v38 + 1;
    if (__OFADD__(v38, 1))
    {
      break;
    }

    if (v31 >= v36)
    {
      goto LABEL_67;
    }

    v39 = *(v29 + 8 * v31);
    ++v38;
    if (v39)
    {
      goto LABEL_50;
    }
  }

LABEL_70:
  __break(1u);
}