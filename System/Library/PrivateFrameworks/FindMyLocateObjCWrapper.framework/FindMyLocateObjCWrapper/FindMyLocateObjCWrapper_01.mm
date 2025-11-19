uint64_t sub_24AEBB8DC@<X0>(uint64_t *a1@<X8>)
{
  v37 = sub_24AEC5EEC();
  v34 = *(v37 - 8);
  v3 = *(v34 + 64);
  v4 = MEMORY[0x28223BE20](v37);
  v36 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = v32 - v6;
  v8 = sub_24AEBA5A0(0);
  if (qword_280E21548 != -1)
  {
    swift_once();
  }

  v9 = sub_24AEC625C();
  __swift_project_value_buffer(v9, qword_280E21578);

  v10 = sub_24AEC623C();
  v11 = sub_24AEC645C();

  v12 = os_log_type_enabled(v10, v11);
  v33 = a1;
  if (v12)
  {
    v13 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v14 = v38;
    *v13 = 136446466;
    *(v13 + 4) = sub_24AEBFE20(0xD000000000000022, 0x800000024AEC7DE0, &v38);
    *(v13 + 12) = 2080;
    v15 = MEMORY[0x24C234690](v8, v37);
    v17 = v8;
    v18 = sub_24AEBFE20(v15, v16, &v38);

    *(v13 + 14) = v18;
    v8 = v17;
    _os_log_impl(&dword_24AE9B000, v10, v11, "%{public}s: %s", v13, 0x16u);
    swift_arrayDestroy();
    v19 = v14;
    a1 = v33;
    MEMORY[0x24C234F80](v19, -1, -1);
    MEMORY[0x24C234F80](v13, -1, -1);
  }

  v38 = MEMORY[0x277D84F90];
  v20 = *(v8 + 16);
  if (v20)
  {
    v32[2] = v1;
    v21 = sub_24AEC52B4(0, &qword_280E214E0, off_278FFF8E0);
    v22 = v34 + 16;
    v23 = *(v34 + 16);
    v24 = *(v34 + 80);
    v32[1] = v8;
    v25 = v8 + ((v24 + 32) & ~v24);
    v34 = *(v34 + 72);
    v35 = v21;
    v26 = (v22 - 8);
    do
    {
      v27 = v37;
      v23(v7, v25, v37);
      v28 = v36;
      v23(v36, v7, v27);
      FMLFriend.init(_:)(v28);
      v29 = (*v26)(v7, v27);
      MEMORY[0x24C234660](v29);
      if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24AEC639C();
      }

      sub_24AEC63AC();
      v25 += v34;
      --v20;
    }

    while (v20);
    v30 = v38;

    a1 = v33;
  }

  else
  {

    v30 = MEMORY[0x277D84F90];
  }

  *a1 = v30;
  return result;
}

id sub_24AEBBC94(char *a1)
{
  swift_getObjectType();
  v2 = *&a1[OBJC_IVAR____TtC23FindMyLocateObjCWrapper13ObjCBootstrap_serialQueue];
  v3 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0170, &qword_24AEC8A88);
  sub_24AEC648C();

  sub_24AEC52B4(0, &qword_280E214E0, off_278FFF8E0);
  v4 = sub_24AEC636C();

  return v4;
}

uint64_t sub_24AEBBD78()
{
  swift_getObjectType();
  v1 = *(v0 + OBJC_IVAR____TtC23FindMyLocateObjCWrapper13ObjCBootstrap_serialQueue);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0170, &qword_24AEC8A88);
  sub_24AEC648C();
  return v3;
}

uint64_t sub_24AEBBDF8@<X0>(uint64_t *a1@<X8>)
{
  v37 = sub_24AEC5EEC();
  v34 = *(v37 - 8);
  v3 = *(v34 + 64);
  v4 = MEMORY[0x28223BE20](v37);
  v36 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = v32 - v6;
  v8 = sub_24AEBA5A0(4);
  if (qword_280E21548 != -1)
  {
    swift_once();
  }

  v9 = sub_24AEC625C();
  __swift_project_value_buffer(v9, qword_280E21578);

  v10 = sub_24AEC623C();
  v11 = sub_24AEC645C();

  v12 = os_log_type_enabled(v10, v11);
  v33 = a1;
  if (v12)
  {
    v13 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v14 = v38;
    *v13 = 136446466;
    *(v13 + 4) = sub_24AEBFE20(0xD000000000000020, 0x800000024AEC7DB0, &v38);
    *(v13 + 12) = 2080;
    v15 = MEMORY[0x24C234690](v8, v37);
    v17 = v8;
    v18 = sub_24AEBFE20(v15, v16, &v38);

    *(v13 + 14) = v18;
    v8 = v17;
    _os_log_impl(&dword_24AE9B000, v10, v11, "%{public}s: %s", v13, 0x16u);
    swift_arrayDestroy();
    v19 = v14;
    a1 = v33;
    MEMORY[0x24C234F80](v19, -1, -1);
    MEMORY[0x24C234F80](v13, -1, -1);
  }

  v38 = MEMORY[0x277D84F90];
  v20 = *(v8 + 16);
  if (v20)
  {
    v32[2] = v1;
    v21 = sub_24AEC52B4(0, &qword_280E214E0, off_278FFF8E0);
    v22 = v34 + 16;
    v23 = *(v34 + 16);
    v24 = *(v34 + 80);
    v32[1] = v8;
    v25 = v8 + ((v24 + 32) & ~v24);
    v34 = *(v34 + 72);
    v35 = v21;
    v26 = (v22 - 8);
    do
    {
      v27 = v37;
      v23(v7, v25, v37);
      v28 = v36;
      v23(v36, v7, v27);
      FMLFriend.init(_:)(v28);
      v29 = (*v26)(v7, v27);
      MEMORY[0x24C234660](v29);
      if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24AEC639C();
      }

      sub_24AEC63AC();
      v25 += v34;
      --v20;
    }

    while (v20);
    v30 = v38;

    a1 = v33;
  }

  else
  {

    v30 = MEMORY[0x277D84F90];
  }

  *a1 = v30;
  return result;
}

uint64_t ObjCBootstrap.cachedOfferExpiration(for:groupId:)()
{
  swift_getObjectType();
  v1 = *(v0 + OBJC_IVAR____TtC23FindMyLocateObjCWrapper13ObjCBootstrap_serialQueue);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBFFD8, &qword_24AEC8568);
  return sub_24AEC648C();
}

uint64_t sub_24AEBC258@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X3>, uint64_t a4@<X8>)
{
  v80 = a4;
  v79 = a3;
  v6 = sub_24AEC5F4C();
  v72 = *(v6 - 8);
  v73 = v6;
  v7 = *(v72 + 64);
  MEMORY[0x28223BE20](v6);
  v71 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBFFD8, &qword_24AEC8568);
  v9 = *(*(v70 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v70);
  v69 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v74 = &v69 - v13;
  MEMORY[0x28223BE20](v12);
  v75 = &v69 - v14;
  v15 = sub_24AEC5EEC();
  v77 = *(v15 - 8);
  v78 = v15;
  v16 = *(v77 + 64);
  MEMORY[0x28223BE20](v15);
  v76 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0188, &qword_24AEC8C98);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v69 - v20;
  v22 = sub_24AEC5F7C();
  v23 = *(v22 - 1);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v69 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v29 = &v69 - v28;
  if (!a1)
  {
    (*(v23 + 104))(v27, *MEMORY[0x277D09300], v22);
    sub_24AEC5F6C();
    (*(v23 + 8))(v27, v22);
  }

  sub_24AEC5F5C();
  v30 = *(v23 + 48);
  if (v30(v21, 1, v22) == 1)
  {
    (*(v23 + 104))(v29, *MEMORY[0x277D09308], v22);
    if (v30(v21, 1, v22) != 1)
    {
      sub_24AEA5484(v21, &qword_27EFC0188, &qword_24AEC8C98);
    }
  }

  else
  {
    (*(v23 + 32))(v29, v21, v22);
  }

  v31 = [v79 identifier];
  sub_24AEC62FC();

  v32 = sub_24AEC631C();
  v34 = v33;

  v35 = OBJC_IVAR____TtC23FindMyLocateObjCWrapper13ObjCBootstrap_followers;
  swift_beginAccess();
  v36 = *(a2 + v35);
  if (*(v36 + 16) && (, v37 = sub_24AEC0A40(v32, v34, sub_24AEBF7A0), v39 = v38, , (v39 & 1) != 0))
  {
    (*(v77 + 16))(v76, *(v36 + 56) + *(v77 + 72) * v37, v78);

    v40 = v71;
    sub_24AEC5ECC();
    v41 = sub_24AEC5F0C();
    (*(v72 + 8))(v40, v73);
    if (*(v41 + 16) && (v42 = sub_24AEC0AC4(v29), (v43 & 1) != 0))
    {
      v44 = v42;
      v45 = *(v41 + 56);
      v46 = sub_24AEC5CDC();
      v47 = *(v46 - 8);
      v48 = v47;
      v49 = v45 + *(v47 + 72) * v44;
      v50 = v75;
      (*(v47 + 16))(v75, v49, v46);

      (*(v48 + 56))(v50, 0, 1, v46);
    }

    else
    {

      v57 = sub_24AEC5CDC();
      v50 = v75;
      (*(*(v57 - 8) + 56))(v75, 1, 1, v57);
    }

    v58 = v74;
    if (qword_280E21548 != -1)
    {
      swift_once();
    }

    v59 = sub_24AEC625C();
    __swift_project_value_buffer(v59, qword_280E21578);
    sub_24AEC5A6C(v50, v58, &qword_27EFBFFD8, &qword_24AEC8568);
    v60 = sub_24AEC623C();
    v61 = sub_24AEC645C();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v81 = v63;
      *v62 = 136315138;
      sub_24AEC5A6C(v58, v69, &qword_27EFBFFD8, &qword_24AEC8568);
      v64 = sub_24AEC630C();
      v79 = v22;
      v65 = v64;
      v74 = v29;
      v67 = v66;
      sub_24AEA5484(v58, &qword_27EFBFFD8, &qword_24AEC8568);
      v68 = sub_24AEBFE20(v65, v67, &v81);

      *(v62 + 4) = v68;
      v50 = v75;
      _os_log_impl(&dword_24AE9B000, v60, v61, "Expiration date: %s", v62, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v63);
      MEMORY[0x24C234F80](v63, -1, -1);
      MEMORY[0x24C234F80](v62, -1, -1);

      (*(v77 + 8))(v76, v78);
      (*(v23 + 8))(v74, v79);
    }

    else
    {

      sub_24AEA5484(v58, &qword_27EFBFFD8, &qword_24AEC8568);
      (*(v77 + 8))(v76, v78);
      (*(v23 + 8))(v29, v22);
    }

    return sub_24AEC5340(v50, v80, &qword_27EFBFFD8, &qword_24AEC8568);
  }

  else
  {

    if (qword_280E21548 != -1)
    {
      swift_once();
    }

    v51 = sub_24AEC625C();
    __swift_project_value_buffer(v51, qword_280E21578);
    v52 = sub_24AEC623C();
    v53 = sub_24AEC645C();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&dword_24AE9B000, v52, v53, "Trying to get cached offer expiration for handle that is not a follower, returning nil", v54, 2u);
      MEMORY[0x24C234F80](v54, -1, -1);
    }

    (*(v23 + 8))(v29, v22);
    v55 = sub_24AEC5CDC();
    return (*(*(v55 - 8) + 56))(v80, 1, 1, v55);
  }
}

uint64_t ObjCBootstrap.cachedCanShareLocationWithHandle(_:isFromGroup:)()
{
  swift_getObjectType();
  v1 = *(v0 + OBJC_IVAR____TtC23FindMyLocateObjCWrapper13ObjCBootstrap_serialQueue);
  type metadata accessor for FMLLocationShareState(0);
  sub_24AEC648C();
  return v3;
}

void sub_24AEBCE28(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v81 = a4;
  v83 = a2;
  v77 = sub_24AEC5F7C();
  v79 = *(v77 - 8);
  v6 = *(v79 + 64);
  v7 = MEMORY[0x28223BE20](v77);
  v71 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v73 = &v69 - v9;
  v10 = sub_24AEC5F4C();
  v75 = *(v10 - 8);
  v76 = v10;
  v11 = *(v75 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v70 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v72 = &v69 - v14;
  v15 = sub_24AEC5EEC();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v74 = &v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v78 = &v69 - v20;
  if (qword_280E21548 != -1)
  {
    swift_once();
  }

  v21 = sub_24AEC625C();
  v22 = __swift_project_value_buffer(v21, qword_280E21578);
  v23 = a1;
  v80 = v22;
  v24 = sub_24AEC623C();
  v25 = sub_24AEC645C();

  v26 = v15;
  if (os_log_type_enabled(v24, v25))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v82 = v29;
    *v27 = 136446722;
    *(v27 + 4) = sub_24AEBFE20(0xD000000000000030, 0x800000024AEC7D70, &v82);
    *(v27 + 12) = 2112;
    *(v27 + 14) = v23;
    *v28 = v23;
    *(v27 + 22) = 1024;
    *(v27 + 24) = v83 & 1;
    v30 = v23;
    _os_log_impl(&dword_24AE9B000, v24, v25, "%{public}s for handle: %@ isFromGroup: %{BOOL}d", v27, 0x1Cu);
    sub_24AEA5484(v28, &qword_27EFC0148, &qword_24AEC8A48);
    MEMORY[0x24C234F80](v28, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x24C234F80](v29, -1, -1);
    MEMORY[0x24C234F80](v27, -1, -1);
  }

  v31 = [v23 identifier];
  sub_24AEC62FC();

  v32 = sub_24AEC631C();
  v34 = v33;

  v35 = OBJC_IVAR____TtC23FindMyLocateObjCWrapper13ObjCBootstrap_followers;
  swift_beginAccess();
  v36 = *(a3 + v35);
  if (*(v36 + 16) && (, v37 = sub_24AEC0A40(v32, v34, sub_24AEBF7A0), v39 = v38, , (v39 & 1) != 0))
  {
    v40 = v16;
    v41 = *(v36 + 56) + *(v16 + 72) * v37;
    v42 = v78;
    v43 = v26;
    (*(v16 + 16))(v78, v41, v26);

    if ((v83 & 1) == 0)
    {
      (*(v16 + 8))(v42, v26);
      goto LABEL_21;
    }

    v44 = v72;
    sub_24AEC5ECC();
    v45 = sub_24AEC5F0C();
    (*(v75 + 8))(v44, v76);
    v46 = v73;
    v47 = v77;
    (*(v79 + 104))(v73, *MEMORY[0x277D092F8], v77);
    if (*(v45 + 16))
    {
      sub_24AEC0AC4(v46);
      v49 = v48;
    }

    else
    {
      v49 = 0;
    }

    (*(v79 + 8))(v46, v47);
    (*(v40 + 8))(v78, v43);

    if (v49)
    {
      goto LABEL_21;
    }
  }

  else
  {

    v43 = v26;
    v40 = v16;
  }

  v50 = [v23 identifier];
  sub_24AEC62FC();

  v51 = sub_24AEC631C();
  v53 = v52;

  v54 = OBJC_IVAR____TtC23FindMyLocateObjCWrapper13ObjCBootstrap_pendingOffers;
  swift_beginAccess();
  v55 = *(a3 + v54);
  if (!*(v55 + 16) || (, v56 = sub_24AEC0A40(v51, v53, sub_24AEBF7A0), v58 = v57, , (v58 & 1) == 0))
  {

    v65 = 0;
    goto LABEL_24;
  }

  v59 = v74;
  (*(v40 + 16))(v74, *(v55 + 56) + *(v40 + 72) * v56, v43);

  if (v83)
  {
    v60 = v70;
    sub_24AEC5ECC();
    v61 = sub_24AEC5F0C();
    (*(v75 + 8))(v60, v76);
    v62 = v71;
    v63 = v77;
    (*(v79 + 104))(v71, *MEMORY[0x277D092F8], v77);
    if (*(v61 + 16))
    {
      sub_24AEC0AC4(v62);
      v65 = v64;
    }

    else
    {
      v65 = 0;
    }

    (*(v79 + 8))(v62, v63);
    (*(v40 + 8))(v59, v43);

    goto LABEL_24;
  }

  (*(v40 + 8))(v59, v43);
LABEL_21:
  v65 = 1;
LABEL_24:
  v66 = sub_24AEC623C();
  v67 = sub_24AEC645C();
  if (os_log_type_enabled(v66, v67))
  {
    v68 = swift_slowAlloc();
    *v68 = 67109120;
    *(v68 + 4) = v65 & 1;
    _os_log_impl(&dword_24AE9B000, v66, v67, "hasShared: %{BOOL}d", v68, 8u);
    MEMORY[0x24C234F80](v68, -1, -1);
  }

  *v81 = (v65 & 1) == 0;
}

uint64_t sub_24AEBD6D8(uint64_t a1, uint64_t a2)
{
  v27 = a2;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC01C8, &qword_24AEC8CD0);
  v2 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26);
  v4 = &v25 - v3;
  v5 = sub_24AEC5F4C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24AEC5ECC();
  v10 = sub_24AEC5F0C();
  (*(v6 + 8))(v9, v5);
  v11 = 1 << *(v10 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v10 + 64);
  v14 = (v11 + 63) >> 6;

  v16 = 0;
  while (v13)
  {
    v17 = v16;
LABEL_10:
    v18 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
    v19 = v18 | (v17 << 6);
    v20 = *(v10 + 48);
    v21 = sub_24AEC5F7C();
    (*(*(v21 - 8) + 16))(v4, v20 + *(*(v21 - 8) + 72) * v19, v21);
    v22 = *(v10 + 56);
    v23 = sub_24AEC5CDC();
    (*(*(v23 - 8) + 16))(&v4[*(v26 + 48)], v22 + *(*(v23 - 8) + 72) * v19, v23);
    sub_24AEC59BC(&qword_27EFC01D0, MEMORY[0x277CC9578]);
    LOBYTE(v19) = sub_24AEC62CC();
    result = sub_24AEA5484(v4, &qword_27EFC01C8, &qword_24AEC8CD0);
    if ((v19 & 1) == 0)
    {
      v24 = 1;
LABEL_13:

      return v24;
    }
  }

  while (1)
  {
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v17 >= v14)
    {
      v24 = 0;
      goto LABEL_13;
    }

    v13 = *(v10 + 64 + 8 * v17);
    ++v16;
    if (v13)
    {
      v16 = v17;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24AEBD9C0(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = MEMORY[0x24C234830](v5, a3);
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = sub_24AEC65AC();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t sub_24AEBDAE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[24] = a5;
  v6[25] = a6;
  v6[23] = a4;
  v7 = sub_24AEC5CFC();
  v6[26] = v7;
  v8 = *(v7 - 8);
  v6[27] = v8;
  v9 = *(v8 + 64) + 15;
  v6[28] = swift_task_alloc();
  v6[29] = swift_task_alloc();
  v10 = sub_24AEC626C();
  v6[30] = v10;
  v11 = *(v10 - 8);
  v6[31] = v11;
  v12 = *(v11 + 64) + 15;
  v6[32] = swift_task_alloc();
  v13 = sub_24AEC628C();
  v6[33] = v13;
  v14 = *(v13 - 8);
  v6[34] = v14;
  v15 = *(v14 + 64) + 15;
  v6[35] = swift_task_alloc();
  v16 = swift_task_alloc();
  v6[36] = v16;
  *v16 = v6;
  v16[1] = sub_24AEBDCA0;

  return sub_24AEA24C4();
}

uint64_t sub_24AEBDCA0(uint64_t a1)
{
  v2 = *(*v1 + 288);
  v4 = *v1;
  *(*v1 + 296) = a1;

  return MEMORY[0x2822009F8](sub_24AEBDDA0, 0, 0);
}

uint64_t sub_24AEBDDA0()
{
  v57 = v0;
  if (!v0[37])
  {
LABEL_33:
    v50 = v0[35];
    v51 = v0[32];
    v53 = v0[28];
    v52 = v0[29];

    v54 = v0[1];

    return v54();
  }

  v1 = v0[24];
  if (v1 > 1)
  {
    if ((v1 - 2) < 2)
    {
      if (qword_280E21548 != -1)
      {
        swift_once();
      }

      v2 = sub_24AEC625C();
      __swift_project_value_buffer(v2, qword_280E21578);
      v3 = sub_24AEC623C();
      v4 = sub_24AEC645C();
      if (!os_log_type_enabled(v3, v4))
      {
        goto LABEL_28;
      }

      v5 = v0[29];
      v6 = v0[26];
      v7 = v0[27];
      v8 = v0[24];
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 141558275;
      *(v9 + 4) = 1752392040;
      *(v9 + 12) = 2081;
      v11 = *(v7 + 104);
      v12 = MEMORY[0x277D09020];
      v56 = v10;
      if (v8 != 3)
      {
        v12 = MEMORY[0x277D09018];
      }

      v11(v5, *v12, v6);
      sub_24AEC59BC(&qword_27EFC0190, MEMORY[0x277D09038]);
      v13 = sub_24AEC663C();
      v15 = v14;
      (*(v7 + 8))(v5, v6);
      v16 = sub_24AEBFE20(v13, v15, &v56);

      *(v9 + 14) = v16;
      _os_log_impl(&dword_24AE9B000, v3, v4, "validFriends: %{private,mask.hash}s not supported", v9, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x24C234F80](v10, -1, -1);
      v17 = v9;
LABEL_10:
      MEMORY[0x24C234F80](v17, -1, -1);
LABEL_28:

      if (qword_280E21548 != -1)
      {
        swift_once();
      }

      v37 = v0[25];
      v38 = sub_24AEC625C();
      __swift_project_value_buffer(v38, qword_280E21578);

      v39 = sub_24AEC623C();
      v40 = sub_24AEC645C();

      v41 = os_log_type_enabled(v39, v40);
      v42 = v0[37];
      if (v41)
      {
        v43 = v0[25];
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v56 = v45;
        *v44 = 136315138;
        v46 = sub_24AEC5EEC();
        v47 = MEMORY[0x24C234690](v43, v46);
        v49 = sub_24AEBFE20(v47, v48, &v56);

        *(v44 + 4) = v49;
        _os_log_impl(&dword_24AE9B000, v39, v40, "Updated friends: %s) when expired", v44, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v45);
        MEMORY[0x24C234F80](v45, -1, -1);
        MEMORY[0x24C234F80](v44, -1, -1);
      }

      else
      {
      }

      goto LABEL_33;
    }

    if (v1 == 4)
    {
      v20 = *(MEMORY[0x277D09400] + 4);
      v21 = swift_task_alloc();
      v0[44] = v21;
      *v21 = v0;
      v21[1] = sub_24AEBEE54;

      return MEMORY[0x28215FB28]();
    }

LABEL_23:
    if (qword_280E21548 != -1)
    {
      swift_once();
    }

    v24 = sub_24AEC625C();
    __swift_project_value_buffer(v24, qword_280E21578);
    v3 = sub_24AEC623C();
    v25 = sub_24AEC645C();
    if (!os_log_type_enabled(v3, v25))
    {
      goto LABEL_28;
    }

    v26 = v0[24];
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v56 = v28;
    *v27 = 141558275;
    *(v27 + 4) = 1752392040;
    *(v27 + 12) = 2081;
    if (v26 != 4)
    {
      return sub_24AEC65DC();
    }

    v30 = v0[27];
    v29 = v0[28];
    v31 = v0[26];
    v32 = v28;
    (*(v30 + 104))(v29, *MEMORY[0x277D09010], v31);
    sub_24AEC59BC(&qword_27EFC0190, MEMORY[0x277D09038]);
    v33 = sub_24AEC663C();
    v35 = v34;
    (*(v30 + 8))(v29, v31);
    v36 = sub_24AEBFE20(v33, v35, &v56);

    *(v27 + 14) = v36;
    _os_log_impl(&dword_24AE9B000, v3, v25, "validFriends: %{private,mask.hash}s not supported", v27, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v32);
    MEMORY[0x24C234F80](v32, -1, -1);
    v17 = v27;
    goto LABEL_10;
  }

  if (v1)
  {
    if (v1 != 1)
    {
      goto LABEL_23;
    }

    v18 = *(MEMORY[0x277D09430] + 4);
    v19 = swift_task_alloc();
    v0[41] = v19;
    *v19 = v0;
    v19[1] = sub_24AEBE9AC;

    return MEMORY[0x28215FB60]();
  }

  else
  {
    v22 = *(MEMORY[0x277D09330] + 4);
    v23 = swift_task_alloc();
    v0[38] = v23;
    *v23 = v0;
    v23[1] = sub_24AEBE504;

    return MEMORY[0x28215FA40]();
  }
}

uint64_t sub_24AEBE504(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 304);
  v6 = *v2;
  *(*v2 + 312) = v1;

  if (v1)
  {
    v7 = sub_24AEBF2FC;
  }

  else
  {
    *(v4 + 320) = a1;
    v7 = sub_24AEBE62C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_24AEBE62C()
{
  v34 = v0;
  v1 = v0[40];
  v3 = v0[34];
  v2 = v0[35];
  v4 = v0[32];
  v32 = v0[33];
  v5 = v0[30];
  v6 = v0[31];
  v7 = v0[23];
  v31 = *&v7[OBJC_IVAR____TtC23FindMyLocateObjCWrapper13ObjCBootstrap_serialQueue];
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v1;
  v0[18] = sub_24AEC5BC8;
  v0[19] = v8;
  v0[14] = MEMORY[0x277D85DD0];
  v0[15] = 1107296256;
  v0[16] = sub_24AEA5684;
  v0[17] = &block_descriptor_339;
  v9 = _Block_copy(v0 + 14);
  v10 = v7;
  sub_24AEC627C();
  v0[22] = MEMORY[0x277D84F90];
  sub_24AEC59BC(&qword_280E21538, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0110, &qword_24AEC8968);
  sub_24AEC3EB4();
  sub_24AEC64FC();
  MEMORY[0x24C2347A0](0, v2, v4, v9);
  _Block_release(v9);
  (*(v6 + 8))(v4, v5);
  (*(v3 + 8))(v2, v32);
  v11 = v0[19];

  if (qword_280E21548 != -1)
  {
    swift_once();
  }

  v12 = v0[25];
  v13 = sub_24AEC625C();
  __swift_project_value_buffer(v13, qword_280E21578);

  v14 = sub_24AEC623C();
  v15 = sub_24AEC645C();

  v16 = os_log_type_enabled(v14, v15);
  v17 = v0[37];
  if (v16)
  {
    v18 = v0[25];
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v33 = v20;
    *v19 = 136315138;
    v21 = sub_24AEC5EEC();
    v22 = MEMORY[0x24C234690](v18, v21);
    v24 = sub_24AEBFE20(v22, v23, &v33);

    *(v19 + 4) = v24;
    _os_log_impl(&dword_24AE9B000, v14, v15, "Updated friends: %s) when expired", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x24C234F80](v20, -1, -1);
    MEMORY[0x24C234F80](v19, -1, -1);
  }

  else
  {
  }

  v25 = v0[35];
  v26 = v0[32];
  v28 = v0[28];
  v27 = v0[29];

  v29 = v0[1];

  return v29();
}

uint64_t sub_24AEBE9AC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 328);
  v6 = *v2;
  *(*v2 + 336) = v1;

  if (v1)
  {
    v7 = sub_24AEBF39C;
  }

  else
  {
    *(v4 + 344) = a1;
    v7 = sub_24AEBEAD4;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_24AEBEAD4()
{
  v34 = v0;
  v1 = v0[43];
  v3 = v0[34];
  v2 = v0[35];
  v4 = v0[32];
  v32 = v0[33];
  v5 = v0[30];
  v6 = v0[31];
  v7 = v0[23];
  v31 = *&v7[OBJC_IVAR____TtC23FindMyLocateObjCWrapper13ObjCBootstrap_serialQueue];
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v1;
  v0[12] = sub_24AEC5BC4;
  v0[13] = v8;
  v0[8] = MEMORY[0x277D85DD0];
  v0[9] = 1107296256;
  v0[10] = sub_24AEA5684;
  v0[11] = &block_descriptor_332;
  v9 = _Block_copy(v0 + 8);
  v10 = v7;
  sub_24AEC627C();
  v0[21] = MEMORY[0x277D84F90];
  sub_24AEC59BC(&qword_280E21538, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0110, &qword_24AEC8968);
  sub_24AEC3EB4();
  sub_24AEC64FC();
  MEMORY[0x24C2347A0](0, v2, v4, v9);
  _Block_release(v9);
  (*(v6 + 8))(v4, v5);
  (*(v3 + 8))(v2, v32);
  v11 = v0[13];

  if (qword_280E21548 != -1)
  {
    swift_once();
  }

  v12 = v0[25];
  v13 = sub_24AEC625C();
  __swift_project_value_buffer(v13, qword_280E21578);

  v14 = sub_24AEC623C();
  v15 = sub_24AEC645C();

  v16 = os_log_type_enabled(v14, v15);
  v17 = v0[37];
  if (v16)
  {
    v18 = v0[25];
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v33 = v20;
    *v19 = 136315138;
    v21 = sub_24AEC5EEC();
    v22 = MEMORY[0x24C234690](v18, v21);
    v24 = sub_24AEBFE20(v22, v23, &v33);

    *(v19 + 4) = v24;
    _os_log_impl(&dword_24AE9B000, v14, v15, "Updated friends: %s) when expired", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x24C234F80](v20, -1, -1);
    MEMORY[0x24C234F80](v19, -1, -1);
  }

  else
  {
  }

  v25 = v0[35];
  v26 = v0[32];
  v28 = v0[28];
  v27 = v0[29];

  v29 = v0[1];

  return v29();
}

uint64_t sub_24AEBEE54(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 352);
  v6 = *v2;
  *(*v2 + 360) = v1;

  if (v1)
  {
    v7 = sub_24AEBF43C;
  }

  else
  {
    *(v4 + 368) = a1;
    v7 = sub_24AEBEF7C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_24AEBEF7C()
{
  v34 = v0;
  v1 = v0[46];
  v3 = v0[34];
  v2 = v0[35];
  v4 = v0[32];
  v32 = v0[33];
  v5 = v0[30];
  v6 = v0[31];
  v7 = v0[23];
  v31 = *&v7[OBJC_IVAR____TtC23FindMyLocateObjCWrapper13ObjCBootstrap_serialQueue];
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v1;
  v0[6] = sub_24AEC5BC0;
  v0[7] = v8;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_24AEA5684;
  v0[5] = &block_descriptor_325;
  v9 = _Block_copy(v0 + 2);
  v10 = v7;
  sub_24AEC627C();
  v0[20] = MEMORY[0x277D84F90];
  sub_24AEC59BC(&qword_280E21538, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0110, &qword_24AEC8968);
  sub_24AEC3EB4();
  sub_24AEC64FC();
  MEMORY[0x24C2347A0](0, v2, v4, v9);
  _Block_release(v9);
  (*(v6 + 8))(v4, v5);
  (*(v3 + 8))(v2, v32);
  v11 = v0[7];

  if (qword_280E21548 != -1)
  {
    swift_once();
  }

  v12 = v0[25];
  v13 = sub_24AEC625C();
  __swift_project_value_buffer(v13, qword_280E21578);

  v14 = sub_24AEC623C();
  v15 = sub_24AEC645C();

  v16 = os_log_type_enabled(v14, v15);
  v17 = v0[37];
  if (v16)
  {
    v18 = v0[25];
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v33 = v20;
    *v19 = 136315138;
    v21 = sub_24AEC5EEC();
    v22 = MEMORY[0x24C234690](v18, v21);
    v24 = sub_24AEBFE20(v22, v23, &v33);

    *(v19 + 4) = v24;
    _os_log_impl(&dword_24AE9B000, v14, v15, "Updated friends: %s) when expired", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x24C234F80](v20, -1, -1);
    MEMORY[0x24C234F80](v19, -1, -1);
  }

  else
  {
  }

  v25 = v0[35];
  v26 = v0[32];
  v28 = v0[28];
  v27 = v0[29];

  v29 = v0[1];

  return v29();
}

uint64_t sub_24AEBF2FC()
{
  v1 = v0[39];
  v2 = v0[37];
  v3 = v0[35];
  v4 = v0[32];
  v6 = v0[28];
  v5 = v0[29];

  v7 = v0[1];

  return v7();
}

uint64_t sub_24AEBF39C()
{
  v1 = v0[42];
  v2 = v0[37];
  v3 = v0[35];
  v4 = v0[32];
  v6 = v0[28];
  v5 = v0[29];

  v7 = v0[1];

  return v7();
}

uint64_t sub_24AEBF43C()
{
  v1 = v0[45];
  v2 = v0[37];
  v3 = v0[35];
  v4 = v0[32];
  v6 = v0[28];
  v5 = v0[29];

  v7 = v0[1];

  return v7();
}

uint64_t sub_24AEBF4DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0090, &qword_24AEC88F0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  sub_24AEC5A6C(a3, v24 - v10, &qword_27EFC0090, &qword_24AEC88F0);
  v12 = sub_24AEC63EC();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_24AEA5484(v11, &qword_27EFC0090, &qword_24AEC88F0);
  }

  else
  {
    sub_24AEC63DC();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_24AEC63BC();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_24AEC632C() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_24AEA5484(a3, &qword_27EFC0090, &qword_24AEC88F0);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_24AEA5484(a3, &qword_27EFC0090, &qword_24AEC88F0);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

unint64_t sub_24AEBF7A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_24AEC665C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_24AEBF858(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_24AEA5670;

  return v7();
}

uint64_t sub_24AEBF940(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_24AEA2D48;

  return v8();
}

uint64_t sub_24AEBFA28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0090, &qword_24AEC88F0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v25 - v11;
  sub_24AEC5A6C(a3, v25 - v11, &qword_27EFC0090, &qword_24AEC88F0);
  v13 = sub_24AEC63EC();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_24AEA5484(v12, &qword_27EFC0090, &qword_24AEC88F0);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_24AEC63DC();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = sub_24AEC63BC();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = sub_24AEC632C() + 32;
    v20 = swift_allocObject();
    *(v20 + 16) = a4;
    *(v20 + 24) = a5;

    if (v18 | v16)
    {
      v26[0] = 0;
      v26[1] = 0;
      v21 = v26;
      v26[2] = v16;
      v26[3] = v18;
    }

    else
    {
      v21 = 0;
    }

    v25[1] = 7;
    v25[2] = v21;
    v25[3] = v19;
    v23 = swift_task_create();

    sub_24AEA5484(a3, &qword_27EFC0090, &qword_24AEC88F0);

    return v23;
  }

LABEL_8:
  sub_24AEA5484(a3, &qword_27EFC0090, &qword_24AEC88F0);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

size_t sub_24AEBFD24(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC01A8, &qword_24AEC8CB8);
  v4 = *(sub_24AEC5EEC() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_24AEBFE20(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_24AEBFEEC(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_24AEC3F60(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_24AEBFEEC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_24AEBFFF8(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_24AEC653C();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_24AEBFFF8(uint64_t a1, unint64_t a2)
{
  v4 = sub_24AEC0044(a1, a2);
  sub_24AEC0174(&unk_285E3A7B8);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_24AEC0044(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_24AEC0260(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_24AEC653C();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_24AEC634C();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_24AEC0260(v10, 0);
        result = sub_24AEC651C();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_24AEC0174(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_24AEC02D4(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_24AEC0260(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0248, &qword_24AEC8D58);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_24AEC02D4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0248, &qword_24AEC8D58);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

size_t sub_24AEC03C8(size_t a1, int64_t a2, char a3)
{
  result = sub_24AEC0450(a1, a2, a3, *v3, &qword_27EFC0250, &qword_24AEC8D60, MEMORY[0x277D092D8]);
  *v3 = result;
  return result;
}

size_t sub_24AEC040C(size_t a1, int64_t a2, char a3)
{
  result = sub_24AEC0450(a1, a2, a3, *v3, &qword_27EFC01A8, &qword_24AEC8CB8, MEMORY[0x277D092C0]);
  *v3 = result;
  return result;
}

size_t sub_24AEC0450(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
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

uint64_t sub_24AEC062C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_24AEC0A40(a1, a2, sub_24AEBF7A0);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v23 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_24AEC1B08();
      v12 = v23;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56);
    v15 = sub_24AEC5EEC();
    v22 = *(v15 - 8);
    (*(v22 + 32))(a3, v14 + *(v22 + 72) * v9, v15);
    sub_24AEC12D0(v9, v12);
    *v4 = v12;
    v16 = *(v22 + 56);
    v17 = a3;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = sub_24AEC5EEC();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a3;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_24AEC07B0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0210, &qword_24AEC8D18);
    v2 = sub_24AEC661C();
    v20 = v2;
    sub_24AEC659C();
    v3 = sub_24AEC65CC();
    if (v3)
    {
      v4 = v3;
      sub_24AEC52B4(0, &qword_280E214D0, off_278FFF8E8);
      v5 = v4;
      do
      {
        v18 = v5;
        swift_dynamicCast();
        sub_24AEC52B4(0, &qword_27EFC01E0, off_278FFF8F0);
        swift_dynamicCast();
        v13 = *(v2 + 16);
        if (*(v2 + 24) <= v13)
        {
          sub_24AEC0B5C(v13 + 1, 1);
        }

        v2 = v20;
        v6 = *(v20 + 40);
        result = sub_24AEC64BC();
        v8 = v20 + 64;
        v9 = -1 << *(v20 + 32);
        v10 = result & ~v9;
        v11 = v10 >> 6;
        if (((-1 << v10) & ~*(v20 + 64 + 8 * (v10 >> 6))) != 0)
        {
          v12 = __clz(__rbit64((-1 << v10) & ~*(v20 + 64 + 8 * (v10 >> 6)))) | v10 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v14 = 0;
          v15 = (63 - v9) >> 6;
          do
          {
            if (++v11 == v15 && (v14 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v16 = v11 == v15;
            if (v11 == v15)
            {
              v11 = 0;
            }

            v14 |= v16;
            v17 = *(v8 + 8 * v11);
          }

          while (v17 == -1);
          v12 = __clz(__rbit64(~v17)) + (v11 << 6);
        }

        *(v8 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
        *(*(v20 + 48) + 8 * v12) = v19;
        *(*(v20 + 56) + 8 * v12) = v18;
        ++*(v20 + 16);
        v5 = sub_24AEC65CC();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F98];
  }

  return v2;
}

unint64_t sub_24AEC09FC(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_24AEC64BC();

  return sub_24AEC1714(a1, v5);
}

uint64_t sub_24AEC0A40(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(v3 + 40);
  sub_24AEC66AC();
  sub_24AEC633C();
  v7 = sub_24AEC66BC();

  return a3(a1, a2, v7);
}

unint64_t sub_24AEC0AC4(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_24AEC5F7C();
  sub_24AEC59BC(&qword_27EFC0178, MEMORY[0x277D09310]);
  v5 = sub_24AEC62AC();

  return sub_24AEC17E8(a1, v5);
}

uint64_t sub_24AEC0B5C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0210, &qword_24AEC8D18);
  result = sub_24AEC660C();
  v8 = result;
  if (*(v5 + 16))
  {
    v34 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v23 = v21;
        v24 = v22;
      }

      v25 = *(v8 + 40);
      result = sub_24AEC64BC();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_24AEC0DC4(uint64_t a1, int a2)
{
  v3 = v2;
  v49 = sub_24AEC5EEC();
  v6 = *(v49 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v49);
  v48 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC01B0, &qword_24AEC8CC0);
  v46 = a2;
  result = sub_24AEC660C();
  v12 = result;
  if (*(v9 + 16))
  {
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v42 = v2;
    v43 = (v6 + 16);
    v44 = v9;
    v45 = v6;
    v47 = (v6 + 32);
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = (*(v9 + 48) + 16 * v25);
      v29 = *v27;
      v28 = v27[1];
      v30 = *(v45 + 72);
      v31 = v26 + v30 * v25;
      if (v46)
      {
        (*v47)(v48, v31, v49);
      }

      else
      {
        (*v43)(v48, v31, v49);
      }

      v32 = *(v12 + 40);
      sub_24AEC66AC();
      sub_24AEC633C();
      result = sub_24AEC66BC();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = (*(v12 + 48) + 16 * v20);
      *v21 = v29;
      v21[1] = v28;
      result = (*v47)(*(v12 + 56) + v30 * v20, v48, v49);
      ++*(v12 + 16);
      v9 = v44;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v46 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v42;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

void sub_24AEC1144(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_24AEC650C() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      v11 = sub_24AEC64BC();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
          }

          v18 = *(a2 + 56);
          v19 = (v18 + 8 * v3);
          v20 = (v18 + 8 * v6);
          if (v3 != v6 || v19 >= v20 + 1)
          {
            *v19 = *v20;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }
}

unint64_t sub_24AEC12D0(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_24AEC650C() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_24AEC66AC();

      sub_24AEC633C();
      v13 = sub_24AEC66BC();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v14 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v15 = *(a2 + 48);
      v16 = (v15 + 16 * v3);
      v17 = (v15 + 16 * v6);
      if (v3 != v6 || v16 >= v17 + 1)
      {
        *v16 = *v17;
      }

      v18 = *(a2 + 56);
      v19 = *(*(sub_24AEC5EEC() - 8) + 72);
      v20 = v19 * v3;
      result = v18 + v19 * v3;
      v21 = v19 * v6;
      v22 = v18 + v19 * v6 + v19;
      if (v20 < v21 || result >= v22)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v20 == v21)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v14 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v14)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v24 = *(a2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v26;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_24AEC14BC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_24AEC0A40(a2, a3, sub_24AEBF7A0);
  v13 = *(v10 + 16);
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = *(v10 + 24);
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_24AEC1B08();
      goto LABEL_7;
    }

    sub_24AEC0DC4(v15, a4 & 1);
    v26 = *v5;
    v27 = sub_24AEC0A40(a2, a3, sub_24AEBF7A0);
    if ((v16 & 1) == (v28 & 1))
    {
      v12 = v27;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_24AEC666C();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = sub_24AEC5EEC();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    return v22(v24, a1, v23);
  }

LABEL_13:
  sub_24AEC1664(v12, a2, a3, a1, v18);
}

uint64_t sub_24AEC1664(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_24AEC5EEC();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

unint64_t sub_24AEC1714(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_24AEC52B4(0, &qword_280E214D0, off_278FFF8E8);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_24AEC64CC();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_24AEC17E8(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_24AEC5F7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_24AEC59BC(&qword_27EFC0180, MEMORY[0x277D09310]);
      v16 = sub_24AEC62DC();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

id sub_24AEC19A8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0210, &qword_24AEC8D18);
  v2 = *v0;
  v3 = sub_24AEC65FC();
  v4 = v3;
  if (*(v2 + 16))
  {
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = v19;
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
        goto LABEL_19;
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

char *sub_24AEC1B08()
{
  v1 = v0;
  v36 = sub_24AEC5EEC();
  v38 = *(v36 - 8);
  v2 = *(v38 + 64);
  MEMORY[0x28223BE20](v36);
  v35 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC01B0, &qword_24AEC8CC0);
  v4 = *v0;
  v5 = sub_24AEC65FC();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v31 = v1;
    v32 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v37 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v33 = v38 + 32;
    v34 = v38 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v39 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = 16 * v19;
        v21 = (*(v4 + 48) + 16 * v19);
        v22 = *v21;
        v23 = v21[1];
        v24 = v38;
        v25 = *(v38 + 72) * v19;
        v26 = v35;
        v27 = v36;
        (*(v38 + 16))(v35, *(v4 + 56) + v25, v36);
        v28 = v37;
        v29 = (*(v37 + 48) + v20);
        *v29 = v22;
        v29[1] = v23;
        (*(v24 + 32))(*(v28 + 56) + v25, v26, v27);

        v14 = v39;
      }

      while (v39);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v31;
        v6 = v37;
        goto LABEL_18;
      }

      v18 = *(v32 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_24AEC1D88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v14[1] = *MEMORY[0x277D85DE8];
  v6 = *(a3 + 32);
  v7 = ((1 << v6) + 63) >> 6;
  if ((v6 & 0x3Fu) <= 0xD)
  {
LABEL_2:
    MEMORY[0x28223BE20](a1);
    v9 = v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    result = sub_24AEC1F08(v9, v7, a3, v5);
    if (v3)
    {
      result = swift_willThrow();
    }

    goto LABEL_4;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_2;
  }

  v12 = swift_slowAlloc();
  v13 = sub_24AEC2264(v12, v7, a3, v5);
  result = MEMORY[0x24C234F80](v12, -1, -1);
  if (!v3)
  {
    result = v13;
  }

LABEL_4:
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_24AEC1F08(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, char *))
{
  v45 = a4;
  v34 = a2;
  v35 = a1;
  v44 = sub_24AEC5CDC();
  v5 = *(v44 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v44);
  v47 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24AEC5F7C();
  v9 = *(*(v8 - 8) + 64);
  result = MEMORY[0x28223BE20](v8);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = 0;
  v46 = a3;
  v15 = *(a3 + 64);
  v36 = 0;
  v37 = a3 + 64;
  v16 = 1 << *(a3 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v15;
  v19 = (v16 + 63) >> 6;
  v40 = v5 + 16;
  v41 = v11 + 16;
  v42 = v11;
  v43 = v5;
  v38 = (v5 + 8);
  v39 = (v11 + 8);
  while (v18)
  {
    v48 = (v18 - 1) & v18;
    v20 = __clz(__rbit64(v18)) | (v14 << 6);
    v21 = v47;
LABEL_11:
    v24 = v46;
    (*(v42 + 16))(v13, v46[6] + *(v42 + 72) * v20, v8);
    v25 = v20;
    v26 = v24[7] + *(v43 + 72) * v20;
    v27 = v8;
    v28 = v44;
    (*(v43 + 16))(v21, v26, v44);
    v29 = v49;
    v30 = v45(v13, v21);
    v49 = v29;
    if (v29)
    {
      (*v38)(v21, v28);
      return (*v39)(v13, v27);
    }

    v31 = v30;
    (*v38)(v21, v28);
    result = (*v39)(v13, v27);
    v8 = v27;
    v18 = v48;
    if (v31)
    {
      *(v35 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
      if (__OFADD__(v36++, 1))
      {
        __break(1u);
        return sub_24AEC22F4(v35, v34, v36, v46);
      }
    }
  }

  v22 = v14;
  v21 = v47;
  while (1)
  {
    v14 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v14 >= v19)
    {
      return sub_24AEC22F4(v35, v34, v36, v46);
    }

    v23 = *(v37 + 8 * v14);
    ++v22;
    if (v23)
    {
      v48 = (v23 - 1) & v23;
      v20 = __clz(__rbit64(v23)) | (v14 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_24AEC2264(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, char *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_24AEC1F08(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_24AEC22F4(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v61 = sub_24AEC5CDC();
  v57 = *(v61 - 8);
  v8 = *(v57 + 64);
  v9 = MEMORY[0x28223BE20](v61);
  v60 = v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v51 = v47 - v11;
  v12 = sub_24AEC5F7C();
  v56 = *(v12 - 8);
  v13 = *(v56 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v59 = v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v50 = v47 - v16;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC01A0, &qword_24AEC8CB0);
  result = sub_24AEC662C();
  v18 = result;
  if (a2 < 1)
  {
    v19 = 0;
  }

  else
  {
    v19 = *a1;
  }

  v20 = 0;
  v47[3] = v56 + 16;
  v48 = a2;
  v58 = v56 + 32;
  v21 = result + 64;
  v49 = a1;
  v47[0] = a4;
  v47[1] = v57 + 32;
  v47[2] = v57 + 16;
  while (v19)
  {
    v22 = __clz(__rbit64(v19));
    v52 = (v19 - 1) & v19;
LABEL_16:
    v25 = v22 | (v20 << 6);
    v26 = a4[6];
    v27 = v56;
    v55 = *(v56 + 72);
    v28 = v50;
    (*(v56 + 16))(v50, v26 + v55 * v25, v12);
    v29 = a4[7];
    v30 = v57;
    v54 = *(v57 + 72);
    v31 = v29 + v54 * v25;
    v32 = v12;
    v33 = v51;
    v34 = v61;
    (*(v57 + 16))(v51, v31, v61);
    v53 = *(v27 + 32);
    v53(v59, v28, v32);
    v35 = *(v30 + 32);
    v36 = v33;
    v12 = v32;
    v35(v60, v36, v34);
    v37 = *(v18 + 40);
    sub_24AEC59BC(&qword_27EFC0178, MEMORY[0x277D09310]);
    result = sub_24AEC62AC();
    v38 = -1 << *(v18 + 32);
    v39 = result & ~v38;
    v40 = v39 >> 6;
    if (((-1 << v39) & ~*(v21 + 8 * (v39 >> 6))) == 0)
    {
      v42 = 0;
      v43 = (63 - v38) >> 6;
      a2 = v48;
      a1 = v49;
      while (++v40 != v43 || (v42 & 1) == 0)
      {
        v44 = v40 == v43;
        if (v40 == v43)
        {
          v40 = 0;
        }

        v42 |= v44;
        v45 = *(v21 + 8 * v40);
        if (v45 != -1)
        {
          v41 = __clz(__rbit64(~v45)) + (v40 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v41 = __clz(__rbit64((-1 << v39) & ~*(v21 + 8 * (v39 >> 6)))) | v39 & 0x7FFFFFFFFFFFFFC0;
    a2 = v48;
    a1 = v49;
LABEL_26:
    *(v21 + ((v41 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v41;
    v53((*(v18 + 48) + v41 * v55), v59, v32);
    result = (v35)(*(v18 + 56) + v41 * v54, v60, v61);
    ++*(v18 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v47[0];
    v19 = v52;
    if (!a3)
    {
      return v18;
    }
  }

  v23 = v20;
  while (1)
  {
    v20 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v20 >= a2)
    {
      return v18;
    }

    v24 = a1[v20];
    ++v23;
    if (v24)
    {
      v22 = __clz(__rbit64(v24));
      v52 = (v24 - 1) & v24;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_24AEC2798(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v41 = sub_24AEC5EEC();
  v43 = *(v41 - 8);
  v8 = *(v43 + 64);
  v9 = MEMORY[0x28223BE20](v41);
  v42 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v40 = &v34 - v12;
  v13 = a4 + 64;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 64);
  if (!a2)
  {
LABEL_19:
    v32 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v13;
    *(a1 + 16) = ~v14;
    *(a1 + 24) = v32;
    *(a1 + 32) = v16;
    return a3;
  }

  if (!a3)
  {
    v32 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = -1 << *(a4 + 32);
    v35 = a1;
    result = 0;
    v17 = 0;
    v18 = (63 - v14) >> 6;
    v36 = v43 + 32;
    v37 = v43 + 16;
    a1 = 1;
    v38 = a4 + 64;
    v39 = a3;
    v19 = v40;
    while (v16)
    {
      v45 = a2;
LABEL_15:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v44 = v17;
      v23 = a4;
      v24 = *(a4 + 56);
      v25 = v42;
      v26 = v43;
      v27 = *(v43 + 72);
      v28 = v41;
      (*(v43 + 16))(v42, v24 + v27 * (v22 | (v17 << 6)), v41);
      v29 = *(v26 + 32);
      v29(v19, v25, v28);
      v30 = v45;
      v29(v45, v19, v28);
      a3 = v39;
      if (a1 == v39)
      {
        v14 = v34;
        a1 = v35;
        a4 = v23;
        v32 = v44;
        v13 = v38;
        goto LABEL_25;
      }

      a2 = &v30[v27];
      result = a1;
      v31 = __OFADD__(a1++, 1);
      a4 = v23;
      v17 = v44;
      v13 = v38;
      if (v31)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        v45 = a2;
        v17 = v21;
        goto LABEL_15;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v33 = v17 + 1;
    }

    else
    {
      v33 = v18;
    }

    v32 = v33 - 1;
    a3 = result;
    v14 = v34;
    a1 = v35;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

unint64_t sub_24AEC2A3C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0258, &qword_24AEC8D68);
    v3 = sub_24AEC662C();
    v4 = a1 + 32;

    while (1)
    {
      sub_24AEC5A6C(v4, &v13, &unk_27EFC0260, &qword_24AEC8D70);
      v5 = v13;
      v6 = v14;
      result = sub_24AEC0A40(v13, v14, sub_24AEBF7A0);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_24AEC5AD4(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_24AEC2B80(uint64_t a1, char a2)
{
  *(v3 + 192) = a2;
  *(v3 + 32) = a1;
  *(v3 + 40) = v2;
  *(v3 + 48) = swift_getObjectType();
  v4 = sub_24AEC5F4C();
  *(v3 + 56) = v4;
  v5 = *(v4 - 8);
  *(v3 + 64) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 72) = swift_task_alloc();
  *(v3 + 80) = swift_task_alloc();
  v7 = sub_24AEC5CEC();
  *(v3 + 88) = v7;
  v8 = *(v7 - 8);
  *(v3 + 96) = v8;
  v9 = *(v8 + 64) + 15;
  *(v3 + 104) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0220, &qword_24AEC8D28);
  *(v3 + 112) = v10;
  v11 = *(v10 - 8);
  *(v3 + 120) = v11;
  v12 = *(v11 + 64) + 15;
  *(v3 + 128) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AEC2D20, 0, 0);
}

uint64_t sub_24AEC2D20()
{
  v18 = v0;
  if (qword_280E21548 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 32);
  v2 = sub_24AEC625C();
  *(v0 + 136) = __swift_project_value_buffer(v2, qword_280E21578);

  v3 = sub_24AEC623C();
  v4 = sub_24AEC645C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 192);
    v6 = *(v0 + 32);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136446722;
    *(v7 + 4) = sub_24AEBFE20(0xD000000000000041, 0x800000024AEC7EC0, &v17);
    *(v7 + 12) = 2080;
    v9 = sub_24AEC52B4(0, &qword_280E214D0, off_278FFF8E8);
    v10 = MEMORY[0x24C234690](v6, v9);
    v12 = sub_24AEBFE20(v10, v11, &v17);

    *(v7 + 14) = v12;
    *(v7 + 22) = 1024;
    *(v7 + 24) = v5;
    _os_log_impl(&dword_24AE9B000, v3, v4, "%{public}s handles %s reverseGeocode: %{BOOL}d", v7, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x24C234F80](v8, -1, -1);
    MEMORY[0x24C234F80](v7, -1, -1);
  }

  v13 = swift_task_alloc();
  *(v0 + 144) = v13;
  *(v13 + 16) = *(v0 + 40);
  v14 = *(MEMORY[0x277D859E0] + 4);
  v15 = swift_task_alloc();
  *(v0 + 152) = v15;
  *v15 = v0;
  v15[1] = sub_24AEC2FB8;

  return MEMORY[0x2822007B8]();
}

uint64_t sub_24AEC2FB8()
{
  v1 = *(*v0 + 152);
  v2 = *(*v0 + 144);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_24AEC30D0, 0, 0);
}

uint64_t sub_24AEC30D0()
{
  v1 = *(*(v0 + 40) + OBJC_IVAR____TtC23FindMyLocateObjCWrapper13ObjCBootstrap__session);
  *(v0 + 160) = v1;

  if (v1)
  {
    v2 = *(v0 + 32);
    if (v2 >> 62)
    {
      if (v2 < 0)
      {
        v39 = *(v0 + 32);
      }

      v3 = sub_24AEC65AC();
    }

    else
    {
      v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v4 = MEMORY[0x277D84F90];
    if (v3)
    {
      v40 = MEMORY[0x277D84F90];
      v5 = sub_24AEC03C8(0, v3 & ~(v3 >> 63), 0);
      if (v3 < 0)
      {
        __break(1u);
        return MEMORY[0x28215FB18](v5, v6, v7, v8);
      }

      v4 = v40;
      v9 = *(v0 + 64);
      if ((v2 & 0xC000000000000001) != 0)
      {
        for (i = 0; i != v3; ++i)
        {
          v11 = *(v0 + 80);
          MEMORY[0x24C234830](i, *(v0 + 32));
          v12 = [swift_unknownObjectRetain() identifier];
          sub_24AEC62FC();

          sub_24AEC5F3C();
          swift_unknownObjectRelease_n();
          v14 = *(v40 + 16);
          v13 = *(v40 + 24);
          if (v14 >= v13 >> 1)
          {
            sub_24AEC03C8(v13 > 1, v14 + 1, 1);
          }

          v15 = *(v0 + 80);
          v16 = *(v0 + 56);
          *(v40 + 16) = v14 + 1;
          (*(v9 + 32))(v40 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v14, v15, v16);
        }
      }

      else
      {
        v28 = (*(v0 + 32) + 32);
        do
        {
          v29 = v3;
          v30 = *(v0 + 72);
          v31 = *v28;
          v32 = [v31 identifier];
          sub_24AEC62FC();

          sub_24AEC5F3C();
          v34 = *(v40 + 16);
          v33 = *(v40 + 24);
          if (v34 >= v33 >> 1)
          {
            sub_24AEC03C8(v33 > 1, v34 + 1, 1);
          }

          v35 = *(v0 + 72);
          v36 = *(v0 + 56);
          *(v40 + 16) = v34 + 1;
          (*(v9 + 32))(v40 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v34, v35, v36);
          ++v28;
          v3 = v29 - 1;
        }

        while (v29 != 1);
      }
    }

    *(v0 + 168) = v4;
    (*(*(v0 + 96) + 104))(*(v0 + 104), *MEMORY[0x277D08FC8], *(v0 + 88));
    v37 = *(MEMORY[0x277D093F0] + 4);
    v38 = swift_task_alloc();
    *(v0 + 176) = v38;
    *v38 = v0;
    v38[1] = sub_24AEC35B8;
    v5 = *(v0 + 128);
    v7 = *(v0 + 104);
    v8 = *(v0 + 192);
    v6 = v4;

    return MEMORY[0x28215FB18](v5, v6, v7, v8);
  }

  v17 = *(v0 + 136);
  v18 = sub_24AEC623C();
  v19 = sub_24AEC644C();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_24AE9B000, v18, v19, "Missing FindMyLocate.Session!", v20, 2u);
    MEMORY[0x24C234F80](v20, -1, -1);
  }

  type metadata accessor for FMLSessionError(0);
  *(v0 + 24) = 5;
  sub_24AEC2A3C(MEMORY[0x277D84F90]);
  sub_24AEC59BC(&qword_27EFC0038, type metadata accessor for FMLSessionError);
  sub_24AEC5C8C();
  v21 = *(v0 + 16);
  swift_willThrow();
  v22 = *(v0 + 128);
  v23 = *(v0 + 104);
  v25 = *(v0 + 72);
  v24 = *(v0 + 80);

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_24AEC35B8()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v4 = *v1;
  *(*v1 + 184) = v0;

  v5 = v2[21];
  (*(v2[12] + 8))(v2[13], v2[11]);

  if (v0)
  {
    v6 = sub_24AEC3888;
  }

  else
  {
    v6 = sub_24AEC373C;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

void sub_24AEC373C()
{
  v1 = v0[23];
  v2 = v0[16];
  v4 = v0[5];
  v3 = v0[6];
  v5 = v0[4];
  v6 = &v4[OBJC_IVAR____TtC23FindMyLocateObjCWrapper13ObjCBootstrap_locationRefreshTaskLock];
  os_unfair_lock_lock(&v4[OBJC_IVAR____TtC23FindMyLocateObjCWrapper13ObjCBootstrap_locationRefreshTaskLock]);
  sub_24AEAA590(v6 + 1, v2, v5, v4, v3);
  if (v1)
  {

    os_unfair_lock_unlock(v6);
  }

  else
  {
    v7 = v0[20];
    v9 = v0[15];
    v8 = v0[16];
    v11 = v0[13];
    v10 = v0[14];
    v13 = v0[9];
    v12 = v0[10];
    os_unfair_lock_unlock(v6);

    (*(v9 + 8))(v8, v10);

    v14 = v0[1];

    v14();
  }
}

uint64_t sub_24AEC3888()
{
  v1 = v0[20];

  v2 = v0[23];
  v3 = v0[16];
  v4 = v0[13];
  v6 = v0[9];
  v5 = v0[10];

  v7 = v0[1];

  return v7();
}

uint64_t sub_24AEC391C(uint64_t a1)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = v1;
  return MEMORY[0x2822009F8](sub_24AEC393C, 0, 0);
}

uint64_t sub_24AEC393C()
{
  v16 = v0;
  if (qword_280E21548 != -1)
  {
    swift_once();
  }

  v1 = v0[18];
  v2 = sub_24AEC625C();
  __swift_project_value_buffer(v2, qword_280E21578);

  v3 = sub_24AEC623C();
  v4 = sub_24AEC645C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[18];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    *v6 = 136315138;
    v8 = sub_24AEC52B4(0, &qword_280E214D0, off_278FFF8E8);
    v9 = MEMORY[0x24C234690](v5, v8);
    v11 = sub_24AEBFE20(v9, v10, &v15);

    *(v6 + 4) = v11;
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x24C234F80](v7, -1, -1);
    MEMORY[0x24C234F80](v6, -1, -1);
  }

  v12 = v0[19];
  v0[2] = v0;
  v0[3] = sub_24AEC3B9C;
  v13 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0218, &qword_24AEC8D20);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_24AEAC7C4;
  v0[13] = &block_descriptor_402;
  v0[14] = v13;
  [v12 stopRefreshingLocationWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_24AEC3B9C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 160) = v2;
  if (v2)
  {
    v3 = sub_24AEC3CC4;
  }

  else
  {
    v3 = sub_24AEC3CAC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24AEC3CC4()
{
  v1 = *(v0 + 160);
  swift_willThrow();
  v2 = *(v0 + 8);
  v3 = *(v0 + 160);

  return v2();
}

uint64_t sub_24AEC3D30(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0140, &qword_24AEC8A28) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + v7);
  v11 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_24AEA5670;

  return sub_24AEB2C70(a1, v8, v9, v1 + v6, v10);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_24AEC3EB4()
{
  result = qword_280E21528;
  if (!qword_280E21528)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC0110, &qword_24AEC8968);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E21528);
  }

  return result;
}

uint64_t sub_24AEC3F60(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_24AEC3FE0@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_24AEBA200(a1);
}

uint64_t sub_24AEC3FFC@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_24AEBB8DC(a1);
}

uint64_t sub_24AEC4018@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_24AEBBDF8(a1);
}

uint64_t sub_24AEC4070@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 48);
  return sub_24AEBC258(*(v1 + 24), *(v1 + 32), *(v1 + 40), a1);
}

uint64_t sub_24AEC4094()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_24AEA5670;

  return sub_24AEB9768(v2, v3, v5, v4);
}

uint64_t sub_24AEC4154()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_24AEA5670;

  return sub_24AEBF858(v2, v3, v5);
}

uint64_t sub_24AEC4214(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24AEA5670;

  return sub_24AEBF940(a1, v4, v5, v7);
}

uint64_t sub_24AEC42E0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24AEA5670;

  return sub_24AEA4CC0(a1, v5);
}

uint64_t sub_24AEC4398()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_24AEA5670;

  return sub_24AEB8B8C(v2, v3, v5, v4);
}

uint64_t objectdestroy_102Tm()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24AEC44A4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_24AEA5670;

  return sub_24AEB7D18(v2, v3, v5, v4);
}

uint64_t sub_24AEC4580()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_24AEA2D48;

  return sub_24AEB7578(v2, v3, v4);
}

uint64_t sub_24AEC4634()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_24AEA5670;

  return sub_24AEB50F8(v2, v3);
}

uint64_t sub_24AEC46E0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_24AEA5670;

  return sub_24AEB43C8(v2, v3, v4);
}

uint64_t sub_24AEC4794()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_24AEA5670;

  return sub_24AEB3920(v2, v3);
}

uint64_t sub_24AEC4840()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_24AEA5670;

  return sub_24AEB2168(v2, v3);
}

uint64_t objectdestroy_134Tm()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24AEC492C()
{
  v2 = *(v0 + 16);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_24AEA5670;

  return sub_24AEB17B0(v2, v4, v3);
}

uint64_t sub_24AEC49E0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_24AEA5670;

  return sub_24AEAD00C(v2, v3);
}

uint64_t sub_24AEC4A8C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v6 = *(v0 + 40);
  v5 = *(v0 + 48);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_24AEA5670;

  return sub_24AEACA0C(v2, v3, v4, v6, v5);
}

uint64_t objectdestroy_239Tm()
{
  _Block_release(*(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_24AEC4B9C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 33);
  v7 = *(v0 + 40);
  v6 = *(v0 + 48);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_24AEA5670;

  return sub_24AEAC60C(v2, v3, v4, v5, v7, v6);
}

uint64_t sub_24AEC4C74()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v6 = *(v0 + 40);
  v5 = *(v0 + 48);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_24AEA5670;

  return sub_24AEA9D80(v2, v3, v4, v6, v5);
}

uint64_t objectdestroy_269Tm()
{
  _Block_release(*(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_24AEC4D8C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v6 = *(v0 + 40);
  v5 = *(v0 + 48);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_24AEA5670;

  return sub_24AEA8534(v2, v3, v4, v6, v5);
}

uint64_t sub_24AEC4E54()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v7 = *(v0 + 48);
  v6 = *(v0 + 56);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_24AEA5670;

  return sub_24AEA6DF0(v2, v3, v4, v5, v7, v6);
}

uint64_t objectdestroy_81Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

unint64_t sub_24AEC4F6C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC01C0, &qword_24AEC8CC8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC01B0, &qword_24AEC8CC0);
    v8 = sub_24AEC662C();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_24AEC5A6C(v10, v6, &qword_27EFC01C0, &qword_24AEC8CC8);
      v12 = *v6;
      v13 = v6[1];
      result = sub_24AEC0A40(*v6, v13, sub_24AEBF7A0);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = sub_24AEC5EEC();
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v16, v6 + v9, v19);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_24AEC518C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_24AEA2D48;

  return sub_24AEBDAE8(a1, v4, v5, v6, v7, v9);
}

uint64_t objectdestroy_42Tm()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24AEC52B4(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_24AEC5340(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t objectdestroyTm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 32) & ~v5;
  v7 = (*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + 16);
  swift_unknownObjectRelease();
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, ((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v5 | 7);
}

uint64_t sub_24AEC548C(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0138, &qword_24AEC8A10) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + v7);
  v11 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_24AEA5670;

  return sub_24AEADB6C(a1, v8, v9, v1 + v6, v10);
}

uint64_t sub_24AEC56BC()
{
  v1 = *(sub_24AEC5EEC() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_24AEB0D04(v2, v3);
}

uint64_t objectdestroy_347Tm()
{
  v1 = sub_24AEC5EEC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_24AEC5808(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0220, &qword_24AEC8D28) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = *(v1 + v7);
  v12 = *(v1 + v8);
  v13 = *(v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_24AEA5670;

  return sub_24AEAA808(a1, v9, v10, v1 + v6, v11, v12);
}

uint64_t objectdestroy_149Tm(void (*a1)(void))
{
  a1(*(v1 + 16));

  return MEMORY[0x2821FE8E8](v1, 32, 7);
}

uint64_t sub_24AEC59BC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24AEC5A04(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = *v2;
  sub_24AEC52B4(0, &qword_280E214D0, off_278FFF8E8);
  return sub_24AEC64CC() & 1;
}

uint64_t sub_24AEC5A6C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

_OWORD *sub_24AEC5AD4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}