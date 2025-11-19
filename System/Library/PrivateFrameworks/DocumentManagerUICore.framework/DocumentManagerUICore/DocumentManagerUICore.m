uint64_t ImageCache.init()()
{
  v1 = MEMORY[0x277D84F90];
  v2 = sub_249CE21E0(MEMORY[0x277D84F90]);
  *(v0 + 16) = 0;
  *(v0 + 24) = v2;
  type metadata accessor for ImageCacheActor();
  v3 = swift_allocObject();
  swift_defaultActor_initialize();
  v4 = sub_249CE239C(v1);
  v5 = MEMORY[0x277D84FA0];
  *(v3 + 112) = v4;
  *(v3 + 120) = v5;
  *(v0 + 32) = v3;
  v6 = [objc_opt_self() defaultCenter];
  [v6 addObserver:v0 selector:sel_purge name:*MEMORY[0x277D76670] object:0];

  return v0;
}

unint64_t sub_249CE21E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF19950, &qword_249D08060);
    v3 = sub_249D04D1C();
    v4 = a1 + 32;

    for (i = v1 - 1; ; --i)
    {
      v6 = *(v4 + 32);
      v7 = *(v4 + 64);
      v20 = *(v4 + 48);
      v21 = v7;
      v8 = *(v4 + 80);
      v22 = v8;
      v9 = *(v4 + 16);
      v19[0] = *v4;
      v19[1] = v9;
      v19[2] = v6;
      v25 = v6;
      v26[0] = v20;
      *(v26 + 9) = *(v4 + 57);
      v23 = v19[0];
      v24 = v9;
      sub_249D03320(v19, v18, &qword_27EF19958, &qword_249D08068);
      result = sub_249CE8168(&v23, sub_249CEA370, sub_249CE6DB8);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v3[6] + 80 * result);
      v13 = v26[0];
      v12[2] = v25;
      v12[3] = v13;
      *(v12 + 57) = *(v26 + 9);
      v14 = v24;
      *v12 = v23;
      v12[1] = v14;
      *(v3[7] + 8 * result) = v8;
      v15 = v3[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_11;
      }

      v3[2] = v17;
      if (!i)
      {

        return v3;
      }

      v4 += 88;
    }

    __break(1u);
LABEL_11:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_249CE239C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF198D8, &qword_249D07FB0);
    v3 = sub_249D04D1C();
    v4 = a1 + 32;

    for (i = v1 - 1; ; --i)
    {
      v6 = *(v4 + 32);
      v7 = *(v4 + 64);
      v20 = *(v4 + 48);
      v21 = v7;
      v8 = *(v4 + 80);
      v22 = v8;
      v9 = *(v4 + 16);
      v19[0] = *v4;
      v19[1] = v9;
      v19[2] = v6;
      v25 = v6;
      v26[0] = v20;
      *(v26 + 9) = *(v4 + 57);
      v23 = v19[0];
      v24 = v9;
      sub_249D03320(v19, v18, &qword_27EF19948, &qword_249D08058);
      result = sub_249CE8168(&v23, sub_249CE93BC, sub_249CE93F4);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v3[6] + 80 * result);
      v13 = v26[0];
      v12[2] = v25;
      v12[3] = v13;
      *(v12 + 57) = *(v26 + 9);
      v14 = v24;
      *v12 = v23;
      v12[1] = v14;
      *(v3[7] + 8 * result) = v8;
      v15 = v3[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_11;
      }

      v3[2] = v17;
      if (!i)
      {

        return v3;
      }

      v4 += 88;
    }

    __break(1u);
LABEL_11:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

char *NodeThumbnail.init(node:imageOptions:imageCache:)(void *a1, uint64_t a2)
{
  v2 = sub_249CE2E48(a1, a2);
  swift_unknownObjectRelease();

  return v2;
}

char *sub_249CE2E48(void *a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = &v2[OBJC_IVAR____TtC21DocumentManagerUICore13NodeThumbnail_currentThumbnail];
  *v6 = 0;
  *(v6 + 1) = 0;
  *(v6 + 2) = 0;
  v6[24] = 2;
  v7 = &v2[OBJC_IVAR____TtC21DocumentManagerUICore13NodeThumbnail_listeners];
  *v7 = 0;
  v8 = MEMORY[0x277D84F90];
  *(v7 + 1) = MEMORY[0x277D84F90];
  v9 = &v2[OBJC_IVAR____TtC21DocumentManagerUICore13NodeThumbnail_completionHandlers];
  *v9 = 0;
  *(v9 + 1) = v8;
  swift_weakInit();
  *&v2[OBJC_IVAR____TtC21DocumentManagerUICore13NodeThumbnail_node] = a1;
  v10 = &v2[OBJC_IVAR____TtC21DocumentManagerUICore13NodeThumbnail_options];
  v11 = *(a2 + 48);
  *(v10 + 2) = *(a2 + 32);
  *(v10 + 3) = v11;
  v10[64] = *(a2 + 64);
  v12 = *(a2 + 16);
  *v10 = *a2;
  *(v10 + 1) = v12;
  v20.receiver = v2;
  v20.super_class = ObjectType;
  swift_unknownObjectRetain();
  v13 = objc_msgSendSuper2(&v20, sel_init);
  swift_weakAssign();
  v14 = *&v13[OBJC_IVAR____TtC21DocumentManagerUICore13NodeThumbnail_options + 48];
  v18[2] = *&v13[OBJC_IVAR____TtC21DocumentManagerUICore13NodeThumbnail_options + 32];
  v18[3] = v14;
  v19 = v13[OBJC_IVAR____TtC21DocumentManagerUICore13NodeThumbnail_options + 64];
  v15 = *&v13[OBJC_IVAR____TtC21DocumentManagerUICore13NodeThumbnail_options + 16];
  v18[0] = *&v13[OBJC_IVAR____TtC21DocumentManagerUICore13NodeThumbnail_options];
  v18[1] = v15;
  v16 = v13;
  sub_249CE2FA4(a1, v18, v16);

  return v16;
}

void sub_249CE2FA4(void *a1, __int128 *a2, char *a3)
{
  v4 = v3;
  v8 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF19670, &qword_249D07600) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v10 = &v77 - v9;
  v11 = a2[3];
  v86 = a2[2];
  v87 = v11;
  v88 = *(a2 + 64);
  v12 = a2[1];
  v84 = *a2;
  v85 = v12;
  v13 = [swift_unknownObjectRetain() thumbnailIdentifier];
  v14 = [v13 identifierIgnoringDownloadStatus];
  v15 = a2[3];
  v16 = a2[1];
  v91 = a2[2];
  v92 = v15;
  v93 = *(a2 + 64);
  v108 = v91;
  v109 = v15;
  v17 = *a2;
  v18 = *a2;
  v107 = a2[1];
  v89 = v17;
  v90 = v107;
  v105 = v13;
  v110 = v93;
  v106 = v17;
  v98 = *(a2 + 64);
  v19 = a2[3];
  v96 = v91;
  v97 = v19;
  v94 = v18;
  v95 = v16;
  v99 = v14;
  v100 = v18;
  v104 = v98;
  v103 = v19;
  v102 = v91;
  v101 = v16;
  v20 = v13;
  v82 = v14;
  os_unfair_lock_lock((v4 + 16));
  v21 = *(v4 + 24);
  if (!*(v21 + 16) || (v22 = sub_249CE8168(&v105, sub_249CEA370, sub_249CE6DB8), (v23 & 1) == 0))
  {
    os_unfair_lock_unlock((v4 + 16));
    goto LABEL_7;
  }

  v24 = *(*(v21 + 56) + 8 * v22);
  v25 = v24;
  os_unfair_lock_unlock((v4 + 16));
  if (v25)
  {
    if ([a1 isFolder])
    {

      goto LABEL_7;
    }

    v80 = v20;
    v44 = &a3[OBJC_IVAR____TtC21DocumentManagerUICore13NodeThumbnail_currentThumbnail];
    v45 = v25;
    os_unfair_lock_lock(v44);
    sub_249CE3970(*(v44 + 1), *(v44 + 2), v44[24]);
    *(v44 + 1) = v24;
    *(v44 + 2) = 2;
    v44[24] = 1;
    v46 = v45;
    os_unfair_lock_unlock(v44);
    v47 = &a3[OBJC_IVAR____TtC21DocumentManagerUICore13NodeThumbnail_listeners];
    os_unfair_lock_lock(&a3[OBJC_IVAR____TtC21DocumentManagerUICore13NodeThumbnail_listeners]);
    v48 = *(v47 + 1);
    v81 = a1;
    v79 = v46;
    if (v48 >> 62)
    {
      v49 = sub_249D04CEC();
      if (!v49)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v49 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v49)
      {
        goto LABEL_39;
      }
    }

    if (v49 < 1)
    {
      __break(1u);
      goto LABEL_48;
    }

    for (i = 0; i != v49; ++i)
    {
      if ((v48 & 0xC000000000000001) != 0)
      {
        MEMORY[0x24C1FED90](i, v48);
      }

      else
      {
        v51 = *(v48 + 8 * i + 32);
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        [Strong thumbnailLoaded_];
        swift_unknownObjectRelease();
      }
    }

LABEL_39:
    os_unfair_lock_unlock(v47);
    v64 = &a3[OBJC_IVAR____TtC21DocumentManagerUICore13NodeThumbnail_completionHandlers];
    os_unfair_lock_lock(v64);
    v65 = *&v64[2]._os_unfair_lock_opaque;
    v66 = *(v65 + 16);
    if (v66)
    {
      v67 = (v65 + 40);
      v68 = v80;
      do
      {
        v70 = *(v67 - 1);
        v69 = *v67;

        v70(v71);

        v67 += 2;
        --v66;
      }

      while (v66);
      v72 = *&v64[2]._os_unfair_lock_opaque;
    }

    else
    {
      v68 = v80;
    }

    v73 = MEMORY[0x277D84F90];
    *&v64[2]._os_unfair_lock_opaque = MEMORY[0x277D84F90];

    os_unfair_lock_unlock(v64);
    os_unfair_lock_lock(v47);
    v74 = *(v47 + 1);
    *(v47 + 1) = v73;

    os_unfair_lock_unlock(v47);
    v75 = v79;

    sub_249CE6DB8(&v99);
    sub_249CE6DB8(&v105);

    goto LABEL_14;
  }

LABEL_7:
  os_unfair_lock_lock((v4 + 16));
  v26 = *(v4 + 24);
  if (!*(v26 + 16) || (v27 = sub_249CE8168(&v99, sub_249CEA370, sub_249CE6DB8), (v28 & 1) == 0))
  {
    os_unfair_lock_unlock((v4 + 16));
    goto LABEL_13;
  }

  v29 = *(*(v26 + 56) + 8 * v27);
  v30 = v29;
  os_unfair_lock_unlock((v4 + 16));
  if (!v30)
  {
LABEL_13:
    sub_249D04B4C();
    v31 = sub_249D04B6C();
    (*(*(v31 - 8) + 56))(v10, 0, 1, v31);
    v32 = swift_allocObject();
    *(v32 + 16) = 0;
    *(v32 + 24) = 0;
    *(v32 + 32) = a1;
    v33 = v84;
    *(v32 + 56) = v85;
    v34 = v87;
    *(v32 + 72) = v86;
    *(v32 + 88) = v34;
    *(v32 + 104) = v88;
    *(v32 + 40) = v33;
    *(v32 + 112) = v4;
    *(v32 + 120) = v20;
    v35 = v89;
    v36 = v90;
    v37 = v91;
    v38 = v92;
    *(v32 + 192) = v93;
    *(v32 + 160) = v37;
    *(v32 + 176) = v38;
    *(v32 + 128) = v35;
    *(v32 + 144) = v36;
    v39 = v82;
    *(v32 + 200) = a3;
    *(v32 + 208) = v39;
    v40 = v95;
    *(v32 + 216) = v94;
    v41 = v96;
    v42 = v97;
    *(v32 + 280) = v98;
    *(v32 + 264) = v42;
    *(v32 + 248) = v41;
    *(v32 + 232) = v40;
    swift_unknownObjectRetain();

    sub_249CEA370(&v105, v83);
    v43 = a3;
    sub_249CEA370(&v99, v83);
    sub_249CFA160(0, 0, v10, &unk_249D08098, v32);

    sub_249CE6DB8(&v105);
    sub_249CE6DB8(&v99);

LABEL_14:
    swift_unknownObjectRelease();
    return;
  }

  if ([a1 isFolder])
  {

    goto LABEL_13;
  }

  v81 = a1;
  v53 = &a3[OBJC_IVAR____TtC21DocumentManagerUICore13NodeThumbnail_currentThumbnail];
  v54 = v30;
  os_unfair_lock_lock(v53);
  v55 = v53[24];
  v56 = *(v53 + 2);
  if (v55 != 1 || v56 != 2)
  {
    sub_249CE3970(*(v53 + 1), v56, v55);
    *(v53 + 1) = v29;
    *(v53 + 2) = 1;
    v53[24] = 1;
    v57 = v54;
  }

  os_unfair_lock_unlock(v53);
  v58 = &a3[OBJC_IVAR____TtC21DocumentManagerUICore13NodeThumbnail_listeners];
  os_unfair_lock_lock(&a3[OBJC_IVAR____TtC21DocumentManagerUICore13NodeThumbnail_listeners]);
  v59 = *(v58 + 1);
  v79 = v54;
  v80 = v20;
  v78 = v58;
  if (!(v59 >> 62))
  {
    v60 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v60)
    {
      goto LABEL_30;
    }

LABEL_46:
    os_unfair_lock_unlock(v78);
    v76 = v79;

    v20 = v80;
    a1 = v81;
    goto LABEL_13;
  }

  v60 = sub_249D04CEC();
  if (!v60)
  {
    goto LABEL_46;
  }

LABEL_30:
  if (v60 >= 1)
  {
    for (j = 0; j != v60; ++j)
    {
      if ((v59 & 0xC000000000000001) != 0)
      {
        MEMORY[0x24C1FED90](j, v59);
      }

      else
      {
        v62 = *(v59 + 8 * j + 32);
      }

      v63 = swift_unknownObjectWeakLoadStrong();
      if (v63)
      {
        [v63 thumbnailLoaded_];
        swift_unknownObjectRelease();
      }
    }

    goto LABEL_46;
  }

LABEL_48:
  __break(1u);
}

uint64_t sub_249CE368C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);
  swift_unknownObjectRelease();
  v3 = *(v0 + 112);

  return MEMORY[0x2821FE8E8](v0, 281, 7);
}

uint64_t NodeThumbnail.addListener(_:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF196F0, &unk_249D076E0);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v1 = v0 + OBJC_IVAR____TtC21DocumentManagerUICore13NodeThumbnail_listeners;
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC21DocumentManagerUICore13NodeThumbnail_listeners));

  MEMORY[0x24C1FEB80](v2);
  if (*((*(v1 + 8) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 8) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v4 = *((*(v1 + 8) & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_249D04ABC();
  }

  sub_249D04ACC();
  os_unfair_lock_unlock(v1);
}

id sub_249CE395C(id result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
    return result;
  }

  return result;
}

void sub_249CE3970(id a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }
}

void NodeThumbnail.thumbnail.getter()
{
  v1 = v0 + OBJC_IVAR____TtC21DocumentManagerUICore13NodeThumbnail_currentThumbnail;
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC21DocumentManagerUICore13NodeThumbnail_currentThumbnail));
  v2 = *(v1 + 24);
  sub_249CE395C(*(v1 + 8), *(v1 + 16), *(v1 + 24));
  os_unfair_lock_unlock(v1);
  if (v2 >= 2)
  {
    if (swift_weakLoadStrong())
    {
      v3 = *(v0 + OBJC_IVAR____TtC21DocumentManagerUICore13NodeThumbnail_node);
      v4 = *(v0 + OBJC_IVAR____TtC21DocumentManagerUICore13NodeThumbnail_options + 48);
      v8[2] = *(v0 + OBJC_IVAR____TtC21DocumentManagerUICore13NodeThumbnail_options + 32);
      v8[3] = v4;
      v9 = *(v0 + OBJC_IVAR____TtC21DocumentManagerUICore13NodeThumbnail_options + 64);
      v5 = *(v0 + OBJC_IVAR____TtC21DocumentManagerUICore13NodeThumbnail_options + 16);
      v8[0] = *(v0 + OBJC_IVAR____TtC21DocumentManagerUICore13NodeThumbnail_options);
      v8[1] = v5;
      sub_249CE3AE8(v3, v8);
    }

    else
    {
      v6 = sub_249D04A3C();
      v7 = [objc_opt_self() systemImageNamed_];

      if (!v7)
      {
        __break(1u);
      }
    }
  }
}

unint64_t sub_249CE3AE8(void *a1, uint64_t a2)
{
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF19670, &qword_249D07600) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v49 = &v48 - v5;
  v7 = *a2;
  v6 = *(a2 + 8);
  v8 = *(a2 + 16);
  v10 = *(a2 + 24);
  v9 = *(a2 + 32);
  v12 = *(a2 + 40);
  v11 = *(a2 + 48);
  v13 = *(a2 + 56);
  v14 = *(a2 + 64);
  v62[0] = [a1 thumbnailIdentifier];
  v62[1] = v7;
  v62[2] = v6;
  v62[3] = v8;
  v62[4] = v10;
  v62[5] = v9;
  v62[6] = v12;
  v62[7] = v11;
  v62[8] = v13;
  v63 = v14;
  v51 = v62[0];
  v15 = [a1 thumbnailIdentifier];
  v16 = [v15 identifierIgnoringDownloadStatus];

  v70[0] = v16;
  v70[1] = v7;
  v70[2] = v6;
  v70[3] = v8;
  v50 = v10;
  v70[4] = v10;
  v70[5] = v9;
  v17 = *&v13;
  v18 = *&v9;
  v70[6] = v12;
  v70[7] = v11;
  *&v70[8] = v17;
  v71 = v14;
  v19 = v16;
  if (![a1 isFolder])
  {
    v48 = v19;
    v22 = v11;
    v23 = v52;
    os_unfair_lock_lock(v52 + 4);
    v24 = *&v23[6]._os_unfair_lock_opaque;
    if (*(v24 + 16) && (v25 = sub_249CE8168(v62, sub_249CEA370, sub_249CE6DB8), (v26 & 1) != 0))
    {
      v27 = *(*(v24 + 56) + 8 * v25);
      os_unfair_lock_unlock(v23 + 4);
      if (v27)
      {
LABEL_12:

        sub_249CE6DB8(v62);
        sub_249CE6DB8(v70);
        return v27;
      }
    }

    else
    {
      os_unfair_lock_unlock(v23 + 4);
    }

    os_unfair_lock_lock(v23 + 4);
    v28 = *&v23[6]._os_unfair_lock_opaque;
    if (*(v28 + 16) && (v29 = sub_249CE8168(v70, sub_249CEA370, sub_249CE6DB8), (v30 & 1) != 0))
    {
      v27 = *(*(v28 + 56) + 8 * v29);
      os_unfair_lock_unlock(v23 + 4);
      if (v27)
      {
        goto LABEL_12;
      }
    }

    else
    {
      os_unfair_lock_unlock(v23 + 4);
    }

    v31 = [a1 typeIdentifier];
    v32 = sub_249D04A4C();
    v52 = v32;
    v34 = v33;

    *&v64 = v32;
    *(&v64 + 1) = v34;
    *&v65 = v7;
    *(&v65 + 1) = v6;
    *&v66 = v8;
    v35 = v49;
    v36 = v50;
    *(&v66 + 1) = v50;
    *&v67 = v18;
    *(&v67 + 1) = v12;
    *&v68 = v22;
    *(&v68 + 1) = v17;
    v69 = v14;
    sub_249D04B3C();
    v37 = sub_249D04B6C();
    (*(*(v37 - 8) + 56))(v35, 0, 1, v37);
    v38 = swift_allocObject();
    *(v38 + 16) = 0;
    *(v38 + 24) = 0;
    v39 = v67;
    *(v38 + 64) = v66;
    *(v38 + 80) = v39;
    *(v38 + 96) = v68;
    *(v38 + 112) = v69;
    v40 = v65;
    *(v38 + 32) = v64;
    *(v38 + 48) = v40;
    sub_249CE40CC(&v64, v60);
    sub_249CFA160(0, 0, v35, &unk_249D080F0, v38);

    *&v53 = v52;
    *(&v53 + 1) = v34;
    *&v54 = v7;
    *(&v54 + 1) = v6;
    *&v55 = v8;
    *(&v55 + 1) = v36;
    *&v56 = v18;
    *(&v56 + 1) = v12;
    *&v57 = v22;
    *(&v57 + 1) = v17;
    v58 = v14;
    sub_249CE4104(&v59);
    sub_249CE6DB8(v70);
    sub_249CE6DB8(v62);

    v60[2] = v55;
    v60[3] = v56;
    v60[4] = v57;
    v61 = v58;
    v60[0] = v53;
    v60[1] = v54;
    sub_249D03208(v60);
    return v59;
  }

  v20 = v52;
  if (v14)
  {
    swift_unknownObjectRetain();
    v21 = 0;
  }

  else
  {
    v41 = objc_allocWithZone(MEMORY[0x277D1B150]);
    swift_unknownObjectRetain();
    v21 = [v41 initWithRed:v18 green:*&v12 blue:*&v11 alpha:v17];
  }

  v64 = a1;
  LOBYTE(v65) = 1;
  *(&v65 + 1) = v7;
  *&v66 = v6;
  *(&v66 + 1) = v8;
  *&v67 = v21;
  result = FolderIconFetcher.fetchAvailableImage()();
  if (result)
  {
    v27 = result;
    os_unfair_lock_lock(v20 + 4);
    v43 = *&v20[6]._os_unfair_lock_opaque;
    if (*(v43 + 16) && (v44 = sub_249CE8168(v62, sub_249CEA370, sub_249CE6DB8), (v45 & 1) != 0))
    {
      v46 = *(*(v43 + 56) + 8 * v44);
      os_unfair_lock_unlock(v20 + 4);
      if (v46)
      {
        v64 = a1;
        LOBYTE(v65) = 1;
        *(&v65 + 1) = v7;
        *&v66 = v6;
        *(&v66 + 1) = v8;
        *&v67 = v21;
        isa = FolderIconFetcher.addImage(overlayImage:to:)(v46, v27).super.isa;

        sub_249CE6DB8(v62);
        sub_249CE6DB8(v70);
        swift_unknownObjectRelease();

        return isa;
      }
    }

    else
    {
      os_unfair_lock_unlock(v20 + 4);
    }

    swift_unknownObjectRelease();

    sub_249CE6DB8(v70);
    sub_249CE6DB8(v62);

    return v27;
  }

  __break(1u);
  return result;
}

void sub_249CE4104(uint64_t a1@<X8>)
{
  v3 = sub_249D049AC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20]();
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v9 = *(v1 + 1);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = *(v1 + 40);
  v14 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
  v15 = sub_249D04A3C();
  v16 = [v14 initWithType_];

  v17 = [objc_allocWithZone(MEMORY[0x277D1B1C8]) initWithSize:v10 scale:{v11, v12}];
  v18 = v17;
  if ((v13 & 1) == 0)
  {
    [v17 setVariantOptions_];
  }

  v19 = [v16 imageForDescriptor_];
  if (v19)
  {
    v20 = v16;
    sub_249CE6CC8(0, &qword_27EF19930, 0x277D755B8);
    v21 = v19;
    v22 = v18;
    v23 = sub_249CE6D10(v19, v22);
    if (v23)
    {
      v24 = v23;
      v25 = [v21 placeholder];

LABEL_10:
      *a1 = v24;
      *(a1 + 8) = v25;
LABEL_14:
      *(a1 + 9) = 0;
      return;
    }

    v16 = v20;
  }

  sub_249D0498C();
  sub_249D0497C();
  (*(v4 + 8))(v7, v3);
  v26 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
  v27 = sub_249D04A3C();

  v28 = [v26 initWithType_];

  v29 = [v28 imageForDescriptor_];
  if (v29)
  {
    sub_249CE6CC8(0, &qword_27EF19930, 0x277D755B8);
    v30 = v29;
    v31 = v18;
    v32 = v30;
    v33 = sub_249CE6D10(v29, v31);
    if (v33)
    {
      v24 = v33;
      v25 = [v32 placeholder];

      goto LABEL_10;
    }
  }

  v34 = sub_249D04A3C();
  v35 = [objc_opt_self() systemImageNamed_];

  if (v35)
  {

    *a1 = v35;
    *(a1 + 8) = 1;
    goto LABEL_14;
  }

  __break(1u);
}

uint64_t sub_249CE4480()
{
  type metadata accessor for IconActor();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  *(v0 + 112) = MEMORY[0x277D84FA0];
  qword_27EF19698 = v0;
  return result;
}

uint64_t sub_249CE44F0()
{
  v16 = v0;
  v1 = *(v0 + 616);
  swift_beginAccess();
  v2 = *(v1 + 112);

  v3 = sub_249CE4694((v0 + 16), v2);

  if (v3)
  {
    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 608);
    swift_beginAccess();
    sub_249CE40CC(v0 + 16, v0 + 280);
    sub_249CE6E08(v14, v0 + 16);
    swift_endAccess();
    v7 = v14[3];
    *(v0 + 224) = v14[2];
    *(v0 + 240) = v7;
    *(v0 + 256) = v14[4];
    *(v0 + 272) = v15;
    v8 = v14[1];
    *(v0 + 192) = v14[0];
    *(v0 + 208) = v8;
    sub_249D031D8(v0 + 192);
    v9 = *(v6 + 16);
    *(v0 + 368) = *v6;
    *(v0 + 384) = v9;
    v10 = *(v6 + 32);
    v11 = *(v6 + 48);
    v12 = *(v6 + 64);
    *(v0 + 448) = *(v6 + 80);
    *(v0 + 416) = v11;
    *(v0 + 432) = v12;
    *(v0 + 400) = v10;
    sub_249CE40CC(v0 + 16, v0 + 456);
    v13 = swift_task_alloc();
    *(v0 + 624) = v13;
    *v13 = v0;
    v13[1] = sub_249CE7FF4;

    return sub_249CE7510(v0 + 592);
  }
}

uint64_t sub_249CE4694(float64x2_t *a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = *(a2 + 40);
  sub_249D04D7C();
  v5 = a1->f64[0];
  v6 = a1->f64[1];
  v7 = a1[1].f64[0];
  v8 = a1[1].f64[1];
  v9 = a1[2].f64[0];
  v10 = LOBYTE(a1[2].f64[1]);
  sub_249D04A6C();
  if (v7 == 0.0)
  {
    v11 = 0.0;
  }

  else
  {
    v11 = v7;
  }

  MEMORY[0x24C1FEE80](*&v11);
  if (v8 == 0.0)
  {
    v12 = 0.0;
  }

  else
  {
    v12 = v8;
  }

  MEMORY[0x24C1FEE80](*&v12);
  if (v9 == 0.0)
  {
    v13 = 0.0;
  }

  else
  {
    v13 = v9;
  }

  MEMORY[0x24C1FEE80](*&v13);
  v35 = a1[3];
  v36 = a1[4];
  v37 = LOBYTE(a1[5].f64[0]);
  sub_249D04D8C();
  sub_249D01748();
  v14 = sub_249D04DAC();
  v15 = a2 + 56;
  v16 = -1 << *(a2 + 32);
  v17 = v14 & ~v16;
  if ((*(a2 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
  {
    v18 = ~v16;
    v19 = *(a2 + 48);
    do
    {
      v20 = v19 + 88 * v17;
      v22 = *(v20 + 16);
      v21 = *(v20 + 24);
      v23 = *(v20 + 32);
      v24 = *(v20 + 40);
      v25 = *(v20 + 48);
      v26 = *(v20 + 64);
      v27 = *(v20 + 80);
      v28 = *v20 == *&v5 && *(v20 + 8) == *&v6;
      if (v28 || (v33 = *(v20 + 48), v34 = *(v20 + 64), v29 = sub_249D04D3C(), v25 = v33, v26 = v34, (v29 & 1) != 0))
      {
        v30 = v22 == v7 && v21 == v8;
        v31 = v30 && v23 == v9;
        if (v31 && ((v24 ^ v10) & 1) == 0)
        {
          if (v27)
          {
            if (v37)
            {
              return 1;
            }
          }

          else if ((v37 & 1) == 0 && (~vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_f64(v25, v35), vceqq_f64(v26, v36)), xmmword_249D076A0)) & 0xF) == 0)
          {
            return 1;
          }
        }
      }

      v17 = (v17 + 1) & v18;
    }

    while (((*(v15 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) != 0);
  }

  return 0;
}

uint64_t sub_249CE48C0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF19938, &qword_249D08028);
  result = sub_249D04C8C();
  v6 = result;
  if (*(v3 + 16))
  {
    v47 = v2;
    v48 = result;
    v7 = 0;
    v8 = v3 + 56;
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    v49 = v3;
    while (v11)
    {
      v20 = __clz(__rbit64(v11));
      v51 = (v11 - 1) & v11;
LABEL_17:
      v23 = *(v3 + 48) + 88 * (v20 | (v7 << 6));
      v25 = *(v23 + 48);
      v24 = *(v23 + 64);
      v26 = *(v23 + 32);
      v58 = *(v23 + 80);
      v56 = v25;
      v57 = v24;
      v55 = v26;
      v27 = *(v23 + 16);
      v53 = *v23;
      v54 = v27;
      v28 = *(v6 + 40);
      sub_249D04D7C();
      v29 = v54;
      v30 = *&v55;
      v31 = v56;
      v50 = v57;
      v32 = v58;
      sub_249CE40CC(&v53, v52);
      sub_249D04A6C();
      if (*&v29 == 0.0)
      {
        v33 = 0.0;
      }

      else
      {
        v33 = *&v29;
      }

      MEMORY[0x24C1FEE80](*&v33);
      if (*(&v29 + 1) == 0.0)
      {
        v34 = 0.0;
      }

      else
      {
        v34 = *(&v29 + 1);
      }

      MEMORY[0x24C1FEE80](*&v34);
      if (v30 == 0.0)
      {
        v35 = 0.0;
      }

      else
      {
        v35 = v30;
      }

      MEMORY[0x24C1FEE80](*&v35);
      sub_249D04D8C();
      if (v32 == 1)
      {
        sub_249D04D8C();
      }

      else
      {
        sub_249D04D8C();
        if ((v31 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v36 = v31;
        }

        else
        {
          v36 = 0;
        }

        MEMORY[0x24C1FEE80](v36);
        if ((*(&v31 + 1) & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v37 = *(&v31 + 1);
        }

        else
        {
          v37 = 0;
        }

        MEMORY[0x24C1FEE80](v37);
        if ((v50 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v38 = v50;
        }

        else
        {
          v38 = 0;
        }

        MEMORY[0x24C1FEE80](v38);
        if ((*(&v50 + 1) & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v39 = *(&v50 + 1);
        }

        else
        {
          v39 = 0;
        }

        MEMORY[0x24C1FEE80](v39);
      }

      result = sub_249D04DAC();
      v6 = v48;
      v3 = v49;
      v40 = -1 << *(v48 + 32);
      v41 = result & ~v40;
      v42 = v41 >> 6;
      if (((-1 << v41) & ~*(v13 + 8 * (v41 >> 6))) == 0)
      {
        v43 = 0;
        v44 = (63 - v40) >> 6;
        while (++v42 != v44 || (v43 & 1) == 0)
        {
          v45 = v42 == v44;
          if (v42 == v44)
          {
            v42 = 0;
          }

          v43 |= v45;
          v46 = *(v13 + 8 * v42);
          if (v46 != -1)
          {
            v14 = __clz(__rbit64(~v46)) + (v42 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_54;
      }

      v14 = __clz(__rbit64((-1 << v41) & ~*(v13 + 8 * (v41 >> 6)))) | v41 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v48 + 48) + 88 * v14;
      v16 = v54;
      *v15 = v53;
      v17 = v55;
      v18 = v56;
      v19 = v57;
      *(v15 + 80) = v58;
      *(v15 + 48) = v18;
      *(v15 + 64) = v19;
      *(v15 + 16) = v16;
      *(v15 + 32) = v17;
      ++*(v48 + 16);
      v11 = v51;
    }

    v21 = v7;
    while (1)
    {
      v7 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v2 = v47;
        goto LABEL_52;
      }

      v22 = *(v8 + 8 * v7);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v51 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_54:
    __break(1u);
  }

  else
  {

LABEL_52:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_249CE4C34(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_39;
  }

  if (a3)
  {
    sub_249CE7130(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_249D00630();
      goto LABEL_39;
    }

    sub_249CE48C0(v6 + 1);
  }

  v8 = *(v5 + 16);
  v9 = *(v5 + 24);
  v10 = *(v5 + 32);
  v11 = *(v5 + 40);
  v12 = *v3;
  v13 = *(*v3 + 40);
  sub_249D04D7C();
  v14 = *v5;
  v15 = *(v5 + 8);
  sub_249D04A6C();
  if (v8 == 0.0)
  {
    v16 = 0.0;
  }

  else
  {
    v16 = v8;
  }

  MEMORY[0x24C1FEE80](*&v16);
  if (v9 == 0.0)
  {
    v17 = 0.0;
  }

  else
  {
    v17 = v9;
  }

  MEMORY[0x24C1FEE80](*&v17);
  if (v10 == 0.0)
  {
    v18 = 0.0;
  }

  else
  {
    v18 = v10;
  }

  MEMORY[0x24C1FEE80](*&v18);
  v45 = *(v5 + 48);
  v46 = *(v5 + 64);
  v47 = *(v5 + 80);
  v19 = v11;
  sub_249D04D8C();
  sub_249D01748();
  result = sub_249D04DAC();
  v20 = v12 + 56;
  v21 = -1 << *(v12 + 32);
  a2 = result & ~v21;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v22 = ~v21;
    v23 = *(v12 + 48);
    do
    {
      v24 = v23 + 88 * a2;
      result = *v24;
      v26 = *(v24 + 16);
      v25 = *(v24 + 24);
      v27 = *(v24 + 32);
      v28 = *(v24 + 40);
      v29 = *(v24 + 48);
      v30 = *(v24 + 64);
      v31 = *(v24 + 80);
      v32 = *v24 == v14 && *(v24 + 8) == v15;
      if (v32 || (v43 = *(v24 + 48), v44 = *(v24 + 64), result = sub_249D04D3C(), v29 = v43, v30 = v44, (result & 1) != 0))
      {
        v33 = v26 == v8 && v25 == v9;
        v34 = v33 && v27 == v10;
        if (v34 && ((v28 ^ v19) & 1) == 0)
        {
          if (v31)
          {
            if (v47)
            {
              goto LABEL_38;
            }
          }

          else if ((v47 & 1) == 0 && (~vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_f64(v29, v45), vceqq_f64(v30, v46)), xmmword_249D076A0)) & 0xF) == 0)
          {
LABEL_38:
            result = sub_249D04D5C();
            __break(1u);
            break;
          }
        }
      }

      a2 = (a2 + 1) & v22;
    }

    while (((*(v20 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_39:
  v35 = *v42;
  *(*v42 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v36 = *(v35 + 48) + 88 * a2;
  v37 = *(v5 + 16);
  *v36 = *v5;
  *(v36 + 16) = v37;
  *(v36 + 80) = *(v5 + 80);
  v38 = *(v5 + 64);
  *(v36 + 48) = *(v5 + 48);
  *(v36 + 64) = v38;
  *(v36 + 32) = *(v5 + 32);
  v39 = *(v35 + 16);
  v40 = __OFADD__(v39, 1);
  v41 = v39 + 1;
  if (v40)
  {
    __break(1u);
  }

  else
  {
    *(v35 + 16) = v41;
  }

  return result;
}

unint64_t sub_249CE4F1C()
{
  result = qword_27EF198B0;
  if (!qword_27EF198B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF198B0);
  }

  return result;
}

uint64_t sub_249CE4F70(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF198D8, &qword_249D07FB0);
  v52 = a2;
  result = sub_249D04D0C();
  v8 = result;
  if (*(v5 + 16))
  {
    v50 = v3;
    v51 = v5;
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
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = v20 | (v9 << 6);
      if (v52)
      {
        v24 = *(v5 + 56);
        v25 = *(v5 + 48) + 80 * v23;
        v26 = *v25;
        v27 = *(v25 + 8);
        v28 = *(v25 + 16);
        v29 = *(v25 + 24);
        v30 = *(v25 + 32);
        v56[0] = *(v25 + 33);
        *(v56 + 3) = *(v25 + 36);
        v31 = *(v25 + 40);
        v54 = v31;
        v55 = *(v25 + 56);
        v32 = *(v25 + 72);
        v53 = *(v24 + 8 * v23);
      }

      else
      {
        v33 = (*(v5 + 48) + 80 * v23);
        v35 = v33[1];
        v34 = v33[2];
        v36 = v33[3];
        *&v59[25] = *(v33 + 57);
        *&v59[16] = v36;
        v57 = *v33;
        v58 = v35;
        *v59 = v34;
        v37 = *(*(v5 + 56) + 8 * v23);
        sub_249CE93BC(&v57, v56);
        v27 = *(&v57 + 1);
        v29 = *(&v58 + 1);
        v28 = *&v58;
        v30 = v59[0];
        v56[0] = *&v59[1];
        *(v56 + 3) = *&v59[4];
        v54 = *&v59[8];
        v55 = *&v59[24];
        v32 = v59[40];
        v53 = v37;
        v26 = v57;
      }

      v38 = *(v8 + 40);
      sub_249D04D7C();
      sub_249D04C5C();
      if (v27 == 0.0)
      {
        v39 = 0.0;
      }

      else
      {
        v39 = v27;
      }

      MEMORY[0x24C1FEE80](*&v39);
      if (v28 == 0.0)
      {
        v40 = 0.0;
      }

      else
      {
        v40 = v28;
      }

      MEMORY[0x24C1FEE80](*&v40);
      if (v29 == 0.0)
      {
        v41 = 0.0;
      }

      else
      {
        v41 = v29;
      }

      MEMORY[0x24C1FEE80](*&v41);
      v60 = v54;
      v61 = v55;
      v62 = v32 & 1;
      sub_249D04D8C();
      sub_249D01748();
      result = sub_249D04DAC();
      v42 = -1 << *(v8 + 32);
      v43 = result & ~v42;
      v44 = v43 >> 6;
      if (((-1 << v43) & ~*(v15 + 8 * (v43 >> 6))) == 0)
      {
        v45 = 0;
        v46 = (63 - v42) >> 6;
        v18 = v54;
        v17 = v55;
        while (++v44 != v46 || (v45 & 1) == 0)
        {
          v47 = v44 == v46;
          if (v44 == v46)
          {
            v44 = 0;
          }

          v45 |= v47;
          v48 = *(v15 + 8 * v44);
          if (v48 != -1)
          {
            v16 = __clz(__rbit64(~v48)) + (v44 << 6);
            goto LABEL_9;
          }
        }

LABEL_47:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v43) & ~*(v15 + 8 * (v43 >> 6)))) | v43 & 0x7FFFFFFFFFFFFFC0;
      v18 = v54;
      v17 = v55;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v19 = *(v8 + 48) + 80 * v16;
      *v19 = v26;
      *(v19 + 8) = v27;
      *(v19 + 16) = v28;
      *(v19 + 24) = v29;
      *(v19 + 32) = v30;
      *(v19 + 33) = v56[0];
      *(v19 + 36) = *(v56 + 3);
      *(v19 + 56) = v17;
      *(v19 + 40) = v18;
      *(v19 + 72) = v32;
      *(*(v8 + 56) + 8 * v16) = v53;
      ++*(v8 + 16);
      v5 = v51;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_47;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v52 & 1) == 0)
    {

      v3 = v50;
      goto LABEL_45;
    }

    v49 = 1 << *(v5 + 32);
    v3 = v50;
    if (v49 >= 64)
    {
      bzero(v10, ((v49 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v49;
    }

    *(v5 + 16) = 0;
  }

LABEL_45:
  *v3 = v8;
  return result;
}

unint64_t sub_249CE53A4()
{
  result = qword_27EF198B8;
  if (!qword_27EF198B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF198B8);
  }

  return result;
}

uint64_t sub_249CE53F8(uint64_t a1, uint64_t a2)
{
  v3[29] = a2;
  v3[30] = v2;
  v3[28] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF198E8, &qword_249D07FC0);
  v3[31] = v4;
  v5 = *(v4 - 8);
  v3[32] = v5;
  v6 = *(v5 + 64) + 15;
  v3[33] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF198F0, &qword_249D07FC8);
  v3[34] = v7;
  v8 = *(v7 - 8);
  v3[35] = v8;
  v9 = *(v8 + 64) + 15;
  v3[36] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF198F8, &qword_249D07FD0);
  v3[37] = v10;
  v11 = *(v10 - 8);
  v3[38] = v11;
  v12 = *(v11 + 64) + 15;
  v3[39] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF19900, &qword_249D07FD8);
  v3[40] = v13;
  v14 = *(v13 - 8);
  v3[41] = v14;
  v15 = *(v14 + 64) + 15;
  v3[42] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_249CE5600, v2, 0);
}

uint64_t sub_249CE5600()
{
  v1 = *(v0 + 240);
  v3 = *(v1 + 112);
  v2 = *(v1 + 120);
  v4 = *(v1 + 128);
  if (!(v4 >> 6))
  {
    v16 = *(v0 + 232) + OBJC_IVAR____TtC21DocumentManagerUICore13NodeThumbnail_currentThumbnail;
    sub_249CE395C(*(v1 + 112), *(v1 + 120), *(v1 + 128));
    os_unfair_lock_lock(v16);
    sub_249CFE4DC((v16 + 8), v3, v2, v4);
    os_unfair_lock_unlock(v16);
    v19 = *(v0 + 232) + OBJC_IVAR____TtC21DocumentManagerUICore13NodeThumbnail_listeners;
    os_unfair_lock_lock(v19);
    v95 = v19;
    v97 = v3;
    v20 = *(v19 + 8);
    if (v20 >> 62)
    {
      v7 = sub_249D04CEC();
      v21 = v7;
      if (!v7)
      {
        goto LABEL_42;
      }
    }

    else
    {
      v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v21)
      {
        goto LABEL_42;
      }
    }

    if (v21 < 1)
    {
      goto LABEL_70;
    }

    for (i = 0; i != v21; ++i)
    {
      if ((v20 & 0xC000000000000001) != 0)
      {
        MEMORY[0x24C1FED90](i, v20);
      }

      else
      {
        v23 = *(v20 + 8 * i + 32);
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        [Strong thumbnailLoaded_];
        swift_unknownObjectRelease();
      }
    }

LABEL_42:
    os_unfair_lock_unlock(v95);
    if (v4 == 1)
    {
      v43 = v2;
      if (v2 == 1)
      {
LABEL_52:
        v55 = *(v0 + 232);
        v56 = *(v0 + 240);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF19910, &qword_249D07FE0);
        swift_allocObject();
        swift_unknownObjectWeakInit();
        swift_unknownObjectWeakAssign();
        v57 = swift_beginAccess();
        MEMORY[0x24C1FEB80](v57);
        if (*((*(v56 + 136) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v56 + 136) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v91 = *((*(v56 + 136) & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_249D04ABC();
        }

        sub_249D04ACC();
        swift_endAccess();
        v28 = v97;
        v29 = v43;
        v42 = v4;
        goto LABEL_55;
      }
    }

    else
    {
      v43 = v2;
      if (v4 || (v2 & 0x100) == 0)
      {
        goto LABEL_52;
      }
    }

    v44 = *(v0 + 232) + OBJC_IVAR____TtC21DocumentManagerUICore13NodeThumbnail_completionHandlers;
    os_unfair_lock_lock(v44);
    v45 = *(v44 + 8);
    v46 = *(v45 + 16);
    if (v46)
    {
      v47 = v4;
      v48 = (v45 + 40);
      do
      {
        v50 = *(v48 - 1);
        v49 = *v48;

        v50(v51);

        v48 += 2;
        --v46;
      }

      while (v46);
      v52 = *(v44 + 8);
      LOBYTE(v4) = v47;
    }

    v53 = MEMORY[0x277D84F90];
    *(v44 + 8) = MEMORY[0x277D84F90];

    os_unfair_lock_unlock(v44);
    os_unfair_lock_lock(v95);
    v54 = *&v95[2]._os_unfair_lock_opaque;
    *&v95[2]._os_unfair_lock_opaque = v53;

    os_unfair_lock_unlock(v95);
    goto LABEL_52;
  }

  if (v4 >> 6 == 1)
  {
    v5 = *(v0 + 232) + OBJC_IVAR____TtC21DocumentManagerUICore13NodeThumbnail_currentThumbnail;
    sub_249CE395C(*(v1 + 112), *(v1 + 120), v4 & 0x3F);
    os_unfair_lock_lock(v5);
    sub_249CFE4DC((v5 + 8), v3, v2, v4 & 0x3F);
    os_unfair_lock_unlock(v5);
    v96 = v3;
    v99 = v2;
    v94 = v4;
    v6 = *(v0 + 232) + OBJC_IVAR____TtC21DocumentManagerUICore13NodeThumbnail_listeners;
    os_unfair_lock_lock(v6);
    lock = v6;
    v11 = *(v6 + 8);
    if (v11 >> 62)
    {
      if (v11 < 0)
      {
        v26 = *(v6 + 8);
      }

      v7 = sub_249D04CEC();
      v12 = v7;
      if (!v7)
      {
LABEL_30:
        os_unfair_lock_unlock(v6);
        if ((v4 & 0x3F) == 1)
        {
          v28 = v96;
          v29 = v99;
          v27 = v4;
          if (v99 == 1)
          {
LABEL_40:
            v42 = v27;
LABEL_55:
            sub_249CE9424(v28, v29, v42);
            goto LABEL_56;
          }
        }

        else
        {
          v27 = v4;
          v28 = v96;
          v29 = v99;
          if ((v4 & 0x3F) != 0 || (v99 & 0x100) == 0)
          {
            goto LABEL_40;
          }
        }

        v30 = v28;
        v31 = v29;
        v32 = *(v0 + 232) + OBJC_IVAR____TtC21DocumentManagerUICore13NodeThumbnail_completionHandlers;
        os_unfair_lock_lock(v32);
        v33 = *(v32 + 8);
        v34 = *(v33 + 16);
        if (v34)
        {
          v35 = (v33 + 40);
          do
          {
            v37 = *(v35 - 1);
            v36 = *v35;

            v37(v38);

            v35 += 2;
            --v34;
          }

          while (v34);
          v39 = *(v32 + 8);
          v27 = v94;
        }

        v40 = MEMORY[0x277D84F90];
        *(v32 + 8) = MEMORY[0x277D84F90];

        os_unfair_lock_unlock(v32);
        os_unfair_lock_lock(lock);
        v41 = *&lock[2]._os_unfair_lock_opaque;
        *&lock[2]._os_unfair_lock_opaque = v40;

        os_unfair_lock_unlock(lock);
        v28 = v30;
        v29 = v31;
        goto LABEL_40;
      }
    }

    else
    {
      v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v12)
      {
        goto LABEL_30;
      }
    }

    if (v12 >= 1)
    {
      for (j = 0; j != v12; ++j)
      {
        if ((v11 & 0xC000000000000001) != 0)
        {
          MEMORY[0x24C1FED90](j, v11);
        }

        else
        {
          v14 = *(v11 + 8 * j + 32);
        }

        v15 = swift_unknownObjectWeakLoadStrong();
        if (v15)
        {
          [v15 thumbnailLoaded_];
          swift_unknownObjectRelease();
        }
      }

      goto LABEL_30;
    }

    __break(1u);
LABEL_70:
    __break(1u);
    return MEMORY[0x2822003E8](v7, v8, v9, v10);
  }

  v17 = *(v0 + 232);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF19910, &qword_249D07FE0);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v18 = swift_beginAccess();
  MEMORY[0x24C1FEB80](v18);
  if (*((*(v1 + 136) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 136) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v25 = *((*(v1 + 136) & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_249D04ABC();
  }

  sub_249D04ACC();
  swift_endAccess();
LABEL_56:
  v58 = *(v1 + 128);
  if ((v58 & 0xC0) == 0x40)
  {
    v82 = *(v0 + 240);
    v83 = *(v0 + 224);
    v84 = *(v82 + 112);
    v85 = *(v82 + 120);
    *v83 = v84;
    *(v83 + 8) = v85;
    *(v83 + 16) = v58 & 0x3F;
    sub_249CE395C(v84, v85, v58 & 0x3F);
    v86 = *(v0 + 336);
    v87 = *(v0 + 312);
    v88 = *(v0 + 288);
    v89 = *(v0 + 264);

    v90 = *(v0 + 8);

    return v90();
  }

  else
  {
    if ((v58 & 0xC0) == 0x80 && v58 == 128)
    {
      v59 = *(v1 + 112);
      v60 = *(v1 + 120);
      if (*(v1 + 112) == 0)
      {
        v62 = *(v0 + 304);
        v61 = *(v0 + 312);
        v63 = *(v0 + 288);
        v98 = *(v0 + 296);
        v100 = *(v0 + 336);
        v65 = *(v0 + 272);
        v64 = *(v0 + 280);
        v66 = *(v0 + 240);
        *(v1 + 112) = xmmword_249D076B0;
        *(v1 + 128) = 0x80;
        sub_249CE9424(v59, v60, 0x80u);
        v67 = *(v66 + 160);
        *(v0 + 16) = *(v66 + 144);
        *(v0 + 32) = v67;
        v68 = *(v66 + 176);
        v69 = *(v66 + 192);
        v70 = *(v66 + 208);
        *(v0 + 96) = *(v66 + 224);
        *(v0 + 64) = v69;
        *(v0 + 80) = v70;
        *(v0 + 48) = v68;
        *(swift_task_alloc() + 16) = v0 + 16;
        (*(v64 + 104))(v63, *MEMORY[0x277D85778], v65);
        sub_249D04BCC();

        sub_249D04BAC();
        (*(v62 + 8))(v61, v98);
        *(v0 + 344) = sub_249CE6C80(&qword_27EF19908, 255, type metadata accessor for ImageRequest);
        swift_beginAccess();
        v71 = *(v0 + 344);
        v72 = *(v0 + 240);
        v73 = *(MEMORY[0x277D85798] + 4);
        v74 = swift_task_alloc();
        *(v0 + 352) = v74;
        *v74 = v0;
        v74[1] = sub_249CE94B0;
        v75 = *(v0 + 336);
        v10 = *(v0 + 320);
        v7 = v0 + 176;
        v8 = v72;
        v9 = v71;

        return MEMORY[0x2822003E8](v7, v8, v9, v10);
      }
    }

    v76 = *(v0 + 240);
    v77 = sub_249CE6C80(&qword_27EF19908, 255, type metadata accessor for ImageRequest);
    v78 = *(MEMORY[0x277D859E0] + 4);
    v79 = swift_task_alloc();
    *(v0 + 360) = v79;
    *v79 = v0;
    v79[1] = sub_249CFCB78;
    v80 = *(v0 + 240);
    v81 = *(v0 + 224);

    return MEMORY[0x2822007B8](v81, v76, v77, 0xD000000000000015, 0x8000000249D091E0, sub_249D02D94, v80, &type metadata for Thumbnail);
  }
}

uint64_t sub_249CE5F44()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF19880, &qword_249D07B20);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_249CE5F74()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF19888, &qword_249D07B28);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_249CE5FA4()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF19890, &qword_249D07B30);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_249CE5FD4()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF198A0, &qword_249D07B68);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

void sub_249CE6004(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF19918, &qword_249D07FE8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20]();
  v8 = &v30 - v7;
  v9 = swift_allocObject();
  v10 = *(a2 + 48);
  *(v9 + 48) = *(a2 + 32);
  *(v9 + 64) = v10;
  *(v9 + 80) = *(a2 + 64);
  *(v9 + 96) = *(a2 + 80);
  v11 = *(a2 + 16);
  *(v9 + 16) = *a2;
  *(v9 + 32) = v11;
  sub_249CE9448(a2, aBlock);
  sub_249D04B7C();
  v12 = *(a2 + 72);
  if (v12)
  {
    v13 = objc_opt_self();
    v35 = v12;
    v34 = [v13 sharedGenerator];
    v37 = *(v5 + 16);
    v37(v8, a1, v4);
    v14 = v5;
    v15 = *(v5 + 80);
    v16 = swift_allocObject();
    v31 = a1;
    v17 = v16;
    v36 = *(v14 + 32);
    v36(v16 + ((v15 + 16) & ~v15), v8, v4);
    aBlock[4] = sub_249CEA43C;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_249CEA3A8;
    aBlock[3] = &block_descriptor_0;
    v33 = _Block_copy(aBlock);

    v37(v8, a1, v4);
    v18 = (v15 + 104) & ~v15;
    v19 = swift_allocObject();
    v20 = *(a2 + 48);
    *(v19 + 48) = *(a2 + 32);
    *(v19 + 64) = v20;
    *(v19 + 80) = *(a2 + 64);
    *(v19 + 96) = *(a2 + 80);
    v21 = *(a2 + 16);
    *(v19 + 16) = *a2;
    *(v19 + 32) = v21;
    v36(v19 + v18, v8, v4);
    v42 = sub_249D02D9C;
    v43 = v19;
    v38 = MEMORY[0x277D85DD0];
    v39 = 1107296256;
    v40 = sub_249CFC810;
    v41 = &block_descriptor_134;
    v32 = _Block_copy(&v38);
    sub_249CE9448(a2, aBlock);

    v37(v8, v31, v4);
    v22 = swift_allocObject();
    v23 = *(a2 + 48);
    *(v22 + 48) = *(a2 + 32);
    *(v22 + 64) = v23;
    *(v22 + 80) = *(a2 + 64);
    *(v22 + 96) = *(a2 + 80);
    v24 = *(a2 + 16);
    *(v22 + 16) = *a2;
    *(v22 + 32) = v24;
    v36(v22 + v18, v8, v4);
    v42 = sub_249CEA894;
    v43 = v22;
    v38 = MEMORY[0x277D85DD0];
    v39 = 1107296256;
    v40 = sub_249CEA4D0;
    v41 = &block_descriptor_140;
    v25 = _Block_copy(&v38);
    sub_249CE9448(a2, aBlock);

    v26 = v34;
    v27 = v35;
    v28 = v33;
    v29 = v32;
    [v34 generateThumbnailForRequest:v35 updateHandler:v33 statusHandler:v32 completionHandler:v25];
    _Block_release(v25);
    _Block_release(v29);
    _Block_release(v28);
  }
}

uint64_t sub_249CE64AC()
{
  v1 = *(v0 + 96);

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_249CE64EC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF19918, &qword_249D07FE8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_249CE6588(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_249CE6A30;

  return sub_249CE6640(a1, v5);
}

uint64_t sub_249CE6640(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_249CE6B28;

  return v7(a1);
}

uint64_t sub_249CE6738(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_249CE6A30;

  return sub_249CE68D8(a1, v4, v5, v1 + 32);
}

uint64_t sub_249CE67E8()
{
  if (qword_27EF19420 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 104);
  v2 = *(v1 + 16);
  *(v0 + 16) = *v1;
  *(v0 + 32) = v2;
  v4 = *(v1 + 48);
  v3 = *(v1 + 64);
  v5 = *(v1 + 32);
  *(v0 + 96) = *(v1 + 80);
  *(v0 + 64) = v4;
  *(v0 + 80) = v3;
  *(v0 + 48) = v5;
  v6 = swift_task_alloc();
  *(v0 + 112) = v6;
  *v6 = v0;
  v6[1] = sub_249CE693C;

  return sub_249CE68F8(v0 + 16);
}

uint64_t sub_249CE68F8(uint64_t a1)
{
  *(v2 + 616) = v1;
  *(v2 + 608) = a1;
  v3 = *(a1 + 48);
  *(v2 + 48) = *(a1 + 32);
  *(v2 + 64) = v3;
  *(v2 + 80) = *(a1 + 64);
  *(v2 + 96) = *(a1 + 80);
  v4 = *(a1 + 16);
  *(v2 + 16) = *a1;
  *(v2 + 32) = v4;
  return MEMORY[0x2822009F8](sub_249CE44F0, v1, 0);
}

uint64_t sub_249CE693C()
{
  v1 = *(*v0 + 112);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_249CE6A34()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_249CE6B2C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_249CE6C80(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_249CE6CC8(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

id sub_249CE6D10(void *a1, void *a2)
{
  if (a1)
  {
    v4 = [a1 CGImage];
    if (v4)
    {
      v5 = v4;
      v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      [a2 scale];
      v7 = [v6 initWithCGImage:v5 scale:0 orientation:?];

      return v7;
    }
  }

  return 0;
}

uint64_t sub_249CE6E08(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *(a2 + 32);
  v7 = *(a2 + 40);
  v8 = *(a2 + 57);
  *v58 = *(a2 + 41);
  *&v58[16] = v8;
  *&v58[32] = *(a2 + 73);
  v9 = *v2;
  v10 = *(*v2 + 40);
  sub_249D04D7C();
  v11 = *a2;
  v12 = *(a2 + 8);
  v51 = a2;
  sub_249D04A6C();
  if (v4 == 0.0)
  {
    v13 = 0.0;
  }

  else
  {
    v13 = v4;
  }

  MEMORY[0x24C1FEE80](*&v13);
  if (v5 == 0.0)
  {
    v14 = 0.0;
  }

  else
  {
    v14 = v5;
  }

  MEMORY[0x24C1FEE80](*&v14);
  if (v6 == 0.0)
  {
    v15 = 0.0;
  }

  else
  {
    v15 = v6;
  }

  MEMORY[0x24C1FEE80](*&v15);
  v59 = *&v58[7];
  v60 = *&v58[23];
  v61 = v58[39];
  v16 = v7;
  sub_249D04D8C();
  sub_249D01748();
  v17 = sub_249D04DAC();
  v18 = v9 + 56;
  v19 = -1 << *(v9 + 32);
  v20 = v17 & ~v19;
  if ((*(v9 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20))
  {
    v21 = ~v19;
    v49 = v9;
    v22 = *(v9 + 48);
    do
    {
      v23 = v22 + 88 * v20;
      v25 = *(v23 + 16);
      v24 = *(v23 + 24);
      v26 = *(v23 + 32);
      v27 = *(v23 + 40);
      v28 = *(v23 + 48);
      v29 = *(v23 + 64);
      v30 = *(v23 + 80);
      v31 = *v23 == v11 && *(v23 + 8) == v12;
      if (v31 || (v53 = *(v23 + 48), v54 = *(v23 + 64), v32 = sub_249D04D3C(), v28 = v53, v29 = v54, (v32 & 1) != 0))
      {
        v33 = v25 == v4 && v24 == v5;
        v34 = v33 && v26 == v6;
        if (v34 && ((v27 ^ v16) & 1) == 0)
        {
          if (v30)
          {
            if (v61)
            {
              goto LABEL_31;
            }
          }

          else if ((v61 & 1) == 0 && (~vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_f64(v28, v59), vceqq_f64(v29, v60)), xmmword_249D076A0)) & 0xF) == 0)
          {
LABEL_31:
            sub_249D031D8(v51);
            v35 = *(v49 + 48) + 88 * v20;
            v36 = *(v35 + 16);
            v56[0] = *v35;
            v56[1] = v36;
            v38 = *(v35 + 48);
            v37 = *(v35 + 64);
            v39 = *(v35 + 80);
            v56[2] = *(v35 + 32);
            v57 = v39;
            v56[3] = v38;
            v56[4] = v37;
            v40 = *(v35 + 16);
            *a1 = *v35;
            *(a1 + 16) = v40;
            v41 = *(v35 + 32);
            v42 = *(v35 + 48);
            v43 = *(v35 + 64);
            *(a1 + 80) = *(v35 + 80);
            *(a1 + 48) = v42;
            *(a1 + 64) = v43;
            *(a1 + 32) = v41;
            sub_249CE40CC(v56, v55);
            return 0;
          }
        }
      }

      v20 = (v20 + 1) & v21;
    }

    while (((*(v18 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) != 0);
  }

  v45 = *v50;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v55[0] = *v50;
  sub_249CE40CC(v51, v56);
  sub_249CE4C34(v51, v20, isUniquelyReferenced_nonNull_native);
  *v50 = v55[0];
  v47 = *(v51 + 48);
  *(a1 + 32) = *(v51 + 32);
  *(a1 + 48) = v47;
  *(a1 + 64) = *(v51 + 64);
  *(a1 + 80) = *(v51 + 80);
  v48 = *(v51 + 16);
  result = 1;
  *a1 = *v51;
  *(a1 + 16) = v48;
  return result;
}

uint64_t sub_249CE7130(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF19938, &qword_249D08028);
  v5 = sub_249D04C8C();
  v6 = v5;
  if (*(v3 + 16))
  {
    v7 = 0;
    v51 = v2;
    v52 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v5 + 56;
    v53 = v3;
    v54 = v5;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v56 = (v10 - 1) & v10;
LABEL_17:
      v19 = *(v3 + 48) + 88 * (v15 | (v7 << 6));
      v20 = *v19;
      v21 = *(v19 + 8);
      v22 = *(v19 + 16);
      v23 = *(v19 + 24);
      v24 = *(v19 + 32);
      v25 = *(v19 + 40);
      *v59 = *(v19 + 41);
      *&v59[3] = *(v19 + 44);
      v26 = *(v19 + 48);
      v27 = *(v19 + 56);
      v28 = *(v19 + 72);
      v58 = *(v19 + 64);
      v29 = *(v19 + 80);
      v30 = *(v6 + 40);
      sub_249D04D7C();
      v55 = v21;
      sub_249D04A6C();
      if (v22 == 0.0)
      {
        v31 = 0.0;
      }

      else
      {
        v31 = v22;
      }

      MEMORY[0x24C1FEE80](*&v31);
      if (v23 == 0.0)
      {
        v32 = 0.0;
      }

      else
      {
        v32 = v23;
      }

      MEMORY[0x24C1FEE80](*&v32);
      if (v24 == 0.0)
      {
        v33 = 0.0;
      }

      else
      {
        v33 = v24;
      }

      MEMORY[0x24C1FEE80](*&v33);
      v57 = v25;
      sub_249D04D8C();
      if (v29)
      {
        v34 = v28;
        v35 = v27;
        sub_249D04D8C();
        v36 = v58;
      }

      else
      {
        sub_249D04D8C();
        if ((v26 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v37 = v26;
        }

        else
        {
          v37 = 0;
        }

        MEMORY[0x24C1FEE80](v37);
        v35 = v27;
        if ((v27 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v38 = v27;
        }

        else
        {
          v38 = 0;
        }

        MEMORY[0x24C1FEE80](v38);
        v36 = v58;
        if ((v58 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v39 = v58;
        }

        else
        {
          v39 = 0;
        }

        MEMORY[0x24C1FEE80](v39);
        v34 = v28;
        if ((v28 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v40 = v28;
        }

        else
        {
          v40 = 0;
        }

        MEMORY[0x24C1FEE80](v40);
      }

      result = sub_249D04DAC();
      v6 = v54;
      v41 = -1 << *(v54 + 32);
      v42 = result & ~v41;
      v43 = v42 >> 6;
      if (((-1 << v42) & ~*(v12 + 8 * (v42 >> 6))) == 0)
      {
        v44 = 0;
        v45 = (63 - v41) >> 6;
        while (++v43 != v45 || (v44 & 1) == 0)
        {
          v46 = v43 == v45;
          if (v43 == v45)
          {
            v43 = 0;
          }

          v44 |= v46;
          v47 = *(v12 + 8 * v43);
          if (v47 != -1)
          {
            v13 = __clz(__rbit64(~v47)) + (v43 << 6);
            goto LABEL_9;
          }
        }

LABEL_56:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v42) & ~*(v12 + 8 * (v42 >> 6)))) | v42 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v54 + 48) + 88 * v13;
      *v14 = v20;
      *(v14 + 8) = v55;
      *(v14 + 16) = v22;
      *(v14 + 24) = v23;
      *(v14 + 32) = v24;
      *(v14 + 40) = v57;
      *(v14 + 41) = *v59;
      *(v14 + 44) = *&v59[3];
      *(v14 + 48) = v26;
      *(v14 + 56) = v35;
      *(v14 + 64) = v36;
      *(v14 + 72) = v34;
      *(v14 + 80) = v29;
      ++*(v54 + 16);
      v3 = v53;
      v10 = v56;
    }

    v16 = v7;
    result = v52;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_56;
      }

      if (v7 >= v11)
      {
        break;
      }

      v18 = v52[v7];
      ++v16;
      if (v18)
      {
        v15 = __clz(__rbit64(v18));
        v56 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v48 = 1 << *(v3 + 32);
    if (v48 >= 64)
    {
      v49 = v6;
      bzero(v52, ((v48 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      v6 = v49;
    }

    else
    {
      *v52 = -1 << v48;
    }

    v2 = v51;
    *(v3 + 16) = 0;
  }

  v50 = v6;

  *v2 = v50;
  return result;
}

uint64_t sub_249CE7510(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  v3 = *(v1 + 8);
  *(v2 + 32) = *v1;
  *(v2 + 40) = v3;
  *(v2 + 48) = *(v1 + 16);
  *(v2 + 64) = *(v1 + 32);
  *(v2 + 72) = *(v1 + 40);
  return MEMORY[0x2822009F8](sub_249CE7550, 0, 0);
}

id sub_249CE7550()
{
  v40 = v0;
  v1 = *(v0 + 72);
  v3 = *(v0 + 56);
  v2 = *(v0 + 64);
  v4 = *(v0 + 48);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  v7 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
  v8 = sub_249D04A3C();
  v9 = [v7 initWithType_];

  v10 = [objc_allocWithZone(MEMORY[0x277D1B1C8]) initWithSize:v4 scale:{v3, v2}];
  v11 = v10;
  if ((v1 & 1) == 0)
  {
    [v10 setVariantOptions_];
  }

  v12 = *(v0 + 72);
  v13 = *(v0 + 64);
  v14 = *(v0 + 40);
  v15 = *(v0 + 24);
  v32 = *(v0 + 32);
  v33 = v14;
  v34 = *(v0 + 48);
  v35 = v13;
  v36 = v12;
  v37 = *(v15 + 41);
  v38 = *(v15 + 57);
  v39 = *(v15 + 73);
  sub_249CE4104(&v29);
  v16 = v29;
  v17 = v30;
  v18 = v31;
  if (v30 == 1 && (v19 = [v9 prepareImageForDescriptor_]) != 0)
  {
    v20 = v19;
    sub_249CE6CC8(0, &qword_27EF19930, 0x277D755B8);
    v21 = v20;
    v22 = v11;
    result = sub_249CE6D10(v20, v22);
    if (!result)
    {
      __break(1u);
      return result;
    }

    v24 = result;
    v25 = *(v0 + 16);
    v26 = [v21 placeholder];

    v18 = 0;
    *v25 = v24;
    *(v25 + 8) = v26;
  }

  else
  {
    v27 = *(v0 + 16);

    *v27 = v16;
    *(v27 + 8) = v17;
  }

  *(*(v0 + 16) + 9) = v18;
  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_249CE7780(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF19920, &qword_249D07FF0);
  v5 = *(v4 - 8);
  v6 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  result = MEMORY[0x28223BE20]();
  v9 = v11 - v8;
  if (a1)
  {
    v10 = a1;
    v11[1] = [v10 UIImage];
    v11[2] = a2;
    v12 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF19918, &qword_249D07FE8);
    sub_249D04B8C();

    return (*(v5 + 8))(v9, v4);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_21DocumentManagerUICore9ThumbnailO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_249CE791C(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_249CE798C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF19950, &qword_249D08060);
  v54 = a2;
  result = sub_249D04D0C();
  v8 = result;
  if (*(v5 + 16))
  {
    v52 = v3;
    v53 = v5;
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
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = v20 | (v9 << 6);
      if (v54)
      {
        v24 = *(v5 + 56);
        v25 = *(v5 + 48) + 80 * v23;
        v26 = *v25;
        v27 = *(v25 + 8);
        v28 = *(v25 + 16);
        v29 = *(v25 + 24);
        v30 = *(v25 + 32);
        v58[0] = *(v25 + 33);
        *(v58 + 3) = *(v25 + 36);
        v31 = *(v25 + 40);
        v56 = v31;
        v57 = *(v25 + 56);
        v32 = *(v25 + 72);
        v55 = *(v24 + 8 * v23);
      }

      else
      {
        v33 = (*(v5 + 48) + 80 * v23);
        v35 = v33[1];
        v34 = v33[2];
        v36 = v33[3];
        *&v61[25] = *(v33 + 57);
        *&v61[16] = v36;
        v59 = *v33;
        v60 = v35;
        *v61 = v34;
        v37 = *(*(v5 + 56) + 8 * v23);
        sub_249CEA370(&v59, v58);
        v27 = *(&v59 + 1);
        v26 = v59;
        v29 = *(&v60 + 1);
        v28 = *&v60;
        v30 = v61[0];
        v58[0] = *&v61[1];
        *(v58 + 3) = *&v61[4];
        v56 = *&v61[8];
        v57 = *&v61[24];
        v38 = v61[40];
        v39 = v37;
        v32 = v38;
        v55 = v39;
      }

      v40 = *(v8 + 40);
      sub_249D04D7C();
      sub_249D04C5C();
      if (v27 == 0.0)
      {
        v41 = 0.0;
      }

      else
      {
        v41 = v27;
      }

      MEMORY[0x24C1FEE80](*&v41);
      if (v28 == 0.0)
      {
        v42 = 0.0;
      }

      else
      {
        v42 = v28;
      }

      MEMORY[0x24C1FEE80](*&v42);
      if (v29 == 0.0)
      {
        v43 = 0.0;
      }

      else
      {
        v43 = v29;
      }

      MEMORY[0x24C1FEE80](*&v43);
      v62 = v56;
      v63 = v57;
      v64 = v32 & 1;
      sub_249D04D8C();
      sub_249D01748();
      result = sub_249D04DAC();
      v44 = -1 << *(v8 + 32);
      v45 = result & ~v44;
      v46 = v45 >> 6;
      if (((-1 << v45) & ~*(v15 + 8 * (v45 >> 6))) == 0)
      {
        v47 = 0;
        v48 = (63 - v44) >> 6;
        v18 = v56;
        v17 = v57;
        while (++v46 != v48 || (v47 & 1) == 0)
        {
          v49 = v46 == v48;
          if (v46 == v48)
          {
            v46 = 0;
          }

          v47 |= v49;
          v50 = *(v15 + 8 * v46);
          if (v50 != -1)
          {
            v16 = __clz(__rbit64(~v50)) + (v46 << 6);
            goto LABEL_9;
          }
        }

LABEL_47:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v45) & ~*(v15 + 8 * (v45 >> 6)))) | v45 & 0x7FFFFFFFFFFFFFC0;
      v18 = v56;
      v17 = v57;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v19 = *(v8 + 48) + 80 * v16;
      *v19 = v26;
      *(v19 + 8) = v27;
      *(v19 + 16) = v28;
      *(v19 + 24) = v29;
      *(v19 + 32) = v30;
      *(v19 + 33) = v58[0];
      *(v19 + 36) = *(v58 + 3);
      *(v19 + 56) = v17;
      *(v19 + 40) = v18;
      *(v19 + 72) = v32;
      *(*(v8 + 56) + 8 * v16) = v55;
      ++*(v8 + 16);
      v5 = v53;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_47;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v54 & 1) == 0)
    {

      v3 = v52;
      goto LABEL_45;
    }

    v51 = 1 << *(v5 + 32);
    v3 = v52;
    if (v51 >= 64)
    {
      bzero(v10, ((v51 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v51;
    }

    *(v5 + 16) = 0;
  }

LABEL_45:
  *v3 = v8;
  return result;
}

unint64_t sub_249CE7D88()
{
  result = qword_27EF198A8;
  if (!qword_27EF198A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF198A8);
  }

  return result;
}

unint64_t sub_249CE7DDC(uint64_t *a1, uint64_t a2, void (*a3)(__int128 *, _BYTE *), void (*a4)(__int128 *))
{
  v5 = -1 << *(v4 + 32);
  v6 = a2 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v9 = ~v5;
    v10 = *(a1 + 1);
    v11 = *(a1 + 2);
    v12 = *(a1 + 3);
    v20 = *(a1 + 5);
    v21 = *(a1 + 7);
    v24 = *(a1 + 72);
    v25 = *(a1 + 32);
    sub_249CE6CC8(0, &qword_27EF198C0, 0x277D82BB8);
    v14 = *a1;
    while (1)
    {
      v15 = (*(v4 + 48) + 80 * v6);
      v27 = *v15;
      v17 = v15[2];
      v16 = v15[3];
      v18 = v15[1];
      *&v29[25] = *(v15 + 57);
      *&v29[16] = v16;
      v28 = v18;
      *v29 = v17;
      a3(&v27, v26);
      if (sub_249D04C4C() & 1) == 0 || *(&v27 + 1) != v10 || *&v28 != v11 || *(&v28 + 1) != v12 || ((v29[0] ^ v25))
      {
        goto LABEL_4;
      }

      if (v29[40])
      {
        break;
      }

      v22 = *&v29[8];
      v23 = *&v29[24];
      a4(&v27);
      if ((v24 & 1) == 0 && (~vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_f64(v22, v20), vceqq_f64(v23, v21)), xmmword_249D076A0)) & 0xF) == 0)
      {
        return v6;
      }

LABEL_5:
      v6 = (v6 + 1) & v9;
      if (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        return v6;
      }
    }

    if (v24)
    {
      (a4)(&v27, *(&v28 + 1));
      return v6;
    }

LABEL_4:
    a4(&v27);
    goto LABEL_5;
  }

  return v6;
}

uint64_t sub_249CE7FF4()
{
  v1 = *v0;
  v2 = *(*v0 + 624);
  v3 = *(*v0 + 616);
  v7 = *v0;

  v4 = *(v1 + 416);
  *(v1 + 136) = *(v1 + 400);
  *(v1 + 152) = v4;
  *(v1 + 168) = *(v1 + 432);
  *(v1 + 184) = *(v1 + 448);
  v5 = *(v1 + 384);
  *(v1 + 104) = *(v1 + 368);
  *(v1 + 120) = v5;
  sub_249D03208(v1 + 104);

  return MEMORY[0x2822009F8](sub_249CE8154, v3, 0);
}

unint64_t sub_249CE8168(uint64_t a1, void (*a2)(__int128 *, _BYTE *), void (*a3)(__int128 *))
{
  v7 = *(v3 + 40);
  sub_249D04D7C();
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  v12 = *(a1 + 32);
  sub_249D04C5C();
  if (v9 == 0.0)
  {
    v13 = 0.0;
  }

  else
  {
    v13 = v9;
  }

  MEMORY[0x24C1FEE80](*&v13);
  if (v10 == 0.0)
  {
    v14 = 0.0;
  }

  else
  {
    v14 = v10;
  }

  MEMORY[0x24C1FEE80](*&v14);
  if (v11 == 0.0)
  {
    v15 = 0.0;
  }

  else
  {
    v15 = v11;
  }

  MEMORY[0x24C1FEE80](*&v15);
  v18 = *(a1 + 40);
  v19 = *(a1 + 56);
  v20 = *(a1 + 72);
  sub_249D04D8C();
  sub_249D01748();
  v16 = sub_249D04DAC();
  return sub_249CE7DDC(a1, v16, a2, a3);
}

uint64_t sub_249CE8270(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[14];
  v8 = v1[25];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_249CE6A34;

  return sub_249CE8358(a1, v4, v5, v6, (v1 + 5), v7, (v1 + 15), v8);
}

uint64_t sub_249CE8358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[88] = v10;
  v8[87] = a8;
  v8[86] = a7;
  v8[85] = a6;
  v8[84] = a5;
  v8[83] = a4;
  return MEMORY[0x2822009F8](sub_249CE8394, 0, 0);
}

uint64_t sub_249CE8394()
{
  v1 = *(v0 + 664);
  if ([swift_unknownObjectRetain() isFolder])
  {
    v2 = *(v0 + 672);
    v3 = *(v0 + 664);
    v4 = *v2;
    v5 = *(v2 + 2);
    if (v2[4])
    {
      v6 = 0;
    }

    else
    {
      v16 = *v2;
      v6 = [objc_allocWithZone(MEMORY[0x277D1B150]) initWithRed:*(v2 + 4) green:*(v2 + 5) blue:*(v2 + 6) alpha:*(v2 + 7)];
      v4 = v16;
    }

    *(v0 + 568) = v3;
    *(v0 + 576) = 0;
    *(v0 + 584) = 1;
    *(v0 + 592) = v4;
    *(v0 + 608) = v5;
    *(v0 + 616) = v6;
    v14 = swift_task_alloc();
    *(v0 + 712) = v14;
    *v14 = v0;
    v14[1] = sub_249CFECF8;

    return FolderIconFetcher.fetchImageAndOverlay()(v0 + 648);
  }

  else
  {
    v7 = *(v0 + 680);
    v8 = *(v0 + 672);
    v9 = *(v0 + 664);
    swift_unknownObjectRelease();
    v10 = *(v7 + 32);
    *(v0 + 720) = v10;
    *(v0 + 496) = *v8;
    v11 = *(v8 + 16);
    v12 = *(v8 + 32);
    v13 = *(v8 + 48);
    *(v0 + 560) = *(v8 + 64);
    *(v0 + 528) = v12;
    *(v0 + 544) = v13;
    *(v0 + 512) = v11;

    return MEMORY[0x2822009F8](sub_249CE8558, v10, 0);
  }
}

uint64_t sub_249CE8558()
{
  v1 = *(v0 + 720);
  *(v0 + 728) = sub_249CE8608(*(v0 + 664), (v0 + 496));
  v2 = swift_task_alloc();
  *(v0 + 736) = v2;
  *v2 = v0;
  v2[1] = sub_249CE9DAC;
  v3 = *(v0 + 696);

  return sub_249CE53F8(v0 + 624, v3);
}

uint64_t sub_249CE8608(void *a1, __int128 *a2)
{
  v3 = v2;
  v5 = [a1 thumbnailIdentifier];
  v6 = *a2;
  v33 = a2[1];
  v7 = a2[3];
  v34 = a2[2];
  v35 = v7;
  v36 = *(a2 + 64);
  v32 = v6;
  v31 = v5;
  swift_beginAccess();
  sub_249CE8850(&v31, &v26);
  swift_endAccess();
  v37[2] = v28;
  v38[0] = v29[0];
  *(v38 + 9) = *(v29 + 9);
  v37[0] = v26;
  v37[1] = v27;
  sub_249CE9184(v37, &qword_27EF19978, &qword_249D080A8);
  swift_beginAccess();
  v8 = *(v2 + 112);
  if (!*(v8 + 16))
  {
    goto LABEL_5;
  }

  v9 = *(v3 + 112);

  v10 = sub_249CE8168(&v31, sub_249CE93BC, sub_249CE93F4);
  if ((v11 & 1) == 0)
  {

LABEL_5:
    v13 = a2[3];
    v24[2] = a2[2];
    v24[3] = v13;
    v25 = *(a2 + 64);
    v14 = a2[1];
    v24[0] = *a2;
    v24[1] = v14;
    v15 = swift_unknownObjectRetain();
    sub_249CE8B3C(v15, v24, &v26);
    type metadata accessor for ImageRequest();
    v12 = swift_allocObject();
    swift_defaultActor_initialize();
    *(v12 + 112) = 0;
    *(v12 + 120) = 0;
    *(v12 + 128) = 0x80;
    v16 = MEMORY[0x277D84F90];
    *(v12 + 136) = MEMORY[0x277D84F90];
    v17 = v29[0];
    v18 = v29[1];
    *(v12 + 176) = v28;
    *(v12 + 192) = v17;
    *(v12 + 208) = v18;
    *(v12 + 224) = v30;
    *(v12 + 232) = v16;
    v19 = v27;
    *(v12 + 144) = v26;
    *(v12 + 160) = v19;
    swift_beginAccess();

    v20 = *(v3 + 112);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *(v3 + 112);
    *(v3 + 112) = 0x8000000000000000;
    sub_249CE91E4(v12, &v31, isUniquelyReferenced_nonNull_native);
    sub_249CE93F4(&v31);
    *(v3 + 112) = v23;
    swift_endAccess();
    return v12;
  }

  v12 = *(*(v8 + 56) + 8 * v10);

  sub_249CE93F4(&v31);

  return v12;
}

unint64_t sub_249CE8850@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  sub_249D04D7C();
  v6 = *a1;
  v7 = *(a1 + 1);
  v8 = *(a1 + 2);
  v9 = *(a1 + 3);
  v10 = *(a1 + 32);
  sub_249D04C5C();
  if (v7 == 0.0)
  {
    v11 = 0.0;
  }

  else
  {
    v11 = v7;
  }

  MEMORY[0x24C1FEE80](*&v11);
  if (v8 == 0.0)
  {
    v12 = 0.0;
  }

  else
  {
    v12 = v8;
  }

  MEMORY[0x24C1FEE80](*&v12);
  if (v9 == 0.0)
  {
    v13 = 0.0;
  }

  else
  {
    v13 = v9;
  }

  MEMORY[0x24C1FEE80](*&v13);
  v14 = *(a1 + 7);
  v40 = *(a1 + 5);
  v41 = v14;
  v42 = *(a1 + 72);
  sub_249D04D8C();
  sub_249D01748();
  result = sub_249D04DAC();
  v16 = -1 << *(v4 + 32);
  v17 = result & ~v16;
  if (((*(v4 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
  {
LABEL_24:
    *(a2 + 57) = 0u;
    a2[2] = 0u;
    a2[3] = 0u;
    *a2 = 0u;
    a2[1] = 0u;
    return result;
  }

  v18 = ~v16;
  sub_249CE6CC8(0, &qword_27EF198C0, 0x277D82BB8);
  while (1)
  {
    v19 = (*(v4 + 48) + 80 * v17);
    v37 = *v19;
    v21 = v19[2];
    v20 = v19[3];
    v22 = *(v19 + 57);
    v38 = v19[1];
    *v39 = v21;
    *&v39[25] = v22;
    *&v39[16] = v20;
    sub_249CE93BC(&v37, v36);
    if (sub_249D04C4C() & 1) == 0 || *(&v37 + 1) != v7 || *&v38 != v8 || *(&v38 + 1) != v9 || ((v39[0] ^ v10))
    {
      goto LABEL_13;
    }

    v23 = v42;
    if (v39[40])
    {
      break;
    }

    v34 = *&v39[8];
    v35 = *&v39[24];
    v32 = v40;
    v33 = v41;
    result = sub_249CE93F4(&v37);
    if ((v23 & 1) == 0 && (~vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_f64(v34, v32), vceqq_f64(v35, v33)), xmmword_249D076A0)) & 0xF) == 0)
    {
      goto LABEL_26;
    }

LABEL_14:
    v17 = (v17 + 1) & v18;
    if (((*(v4 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  if ((v42 & 1) == 0)
  {
LABEL_13:
    result = sub_249CE93F4(&v37);
    goto LABEL_14;
  }

  sub_249CE93F4(&v37);
LABEL_26:
  v24 = *v30;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v26 = *v30;
  v36[0] = *v30;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_249D007CC();
    v26 = v36[0];
  }

  v27 = (*(v26 + 48) + 80 * v17);
  v28 = v27[3];
  a2[2] = v27[2];
  a2[3] = v28;
  *(a2 + 57) = *(v27 + 57);
  v29 = v27[1];
  *a2 = *v27;
  a2[1] = v29;
  result = sub_249D01334(v17);
  *v30 = v36[0];
  return result;
}

double sub_249CE8B3C@<D0>(void *a1@<X0>, uint64_t a2@<X1>, double *a3@<X8>)
{
  v60 = a3;
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF19670, &qword_249D07600) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v59 = &v56 - v6;
  v7 = sub_249D049DC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20]();
  v11 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_249D0494C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20]();
  v16 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a2;
  v18 = *(a2 + 8);
  v19 = *(a2 + 16);
  v67 = *(a2 + 24);
  v68[0] = *(a2 + 40);
  v20 = v68[0];
  *(v68 + 9) = *(a2 + 49);
  v62 = v67;
  v63[0] = v20;
  *(v63 + 9) = *(v68 + 9);
  v21 = [a1 nodeURL];
  if (v21)
  {
    v22 = v21;
    sub_249D0493C();

    v23 = objc_allocWithZone(MEMORY[0x277CDAAD8]);
    v24 = sub_249D0492C();
    v25 = [v23 initWithFileAtURL:v24 size:6 scale:v17 representationTypes:{v18, v19}];

    (*(v13 + 8))(v16, v12);
    v58 = v25;
    if (!v25)
    {
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  v26 = v8;
  v27 = [a1 fpfs_fpItem];
  if (v27)
  {
    v28 = v27;
    v25 = [objc_allocWithZone(MEMORY[0x277CDAAD8]) initWithFPItem:v27 size:6 scale:v17 representationTypes:{v18, v19}];

    v58 = v25;
    if (v25)
    {
LABEL_6:
      v29 = [objc_opt_self() useBlastDoorThumbnails];
      v30 = [v29 isEnabled];

      [v25 setShouldUseRestrictedExtension_];
    }
  }

  else
  {
    sub_249D049CC();
    swift_unknownObjectRetain();
    v31 = sub_249D049BC();
    v32 = sub_249D04BFC();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v57 = v33;
      v58 = swift_slowAlloc();
      *&v64 = v58;
      *v33 = 136446210;
      v34 = [a1 description];
      v35 = sub_249D04A4C();
      v37 = v36;

      v38 = sub_249CFF658(v35, v37, &v64);

      v39 = v57;
      *(v57 + 1) = v38;
      _os_log_impl(&dword_249CE0000, v31, v32, "FAILED TO CREATE QLThumbnailGenerator.Request FOR NODE: %{public}s", v39, 0xCu);
      v40 = v58;
      __swift_destroy_boxed_opaque_existential_0(v58);
      MEMORY[0x24C1FF880](v40, -1, -1);
      MEMORY[0x24C1FF880](v39, -1, -1);
    }

    (*(v26 + 8))(v11, v7);
    v58 = 0;
  }

LABEL_10:
  v41 = [swift_unknownObjectRetain() typeIdentifier];
  v42 = sub_249D04A4C();
  v44 = v43;

  *&v64 = v42;
  *(&v64 + 1) = v44;
  *&v65 = v17;
  *(&v65 + 1) = v18;
  *v66 = v19;
  *&v66[8] = v67;
  *&v66[24] = v68[0];
  *&v66[33] = *(v68 + 9);
  v45 = v59;
  sub_249D04B3C();
  v46 = sub_249D04B6C();
  v47 = *(*(v46 - 8) + 56);
  v47(v45, 0, 1, v46);
  v48 = swift_allocObject();
  *(v48 + 16) = 0;
  *(v48 + 24) = 0;
  v49 = *&v66[16];
  *(v48 + 64) = *v66;
  *(v48 + 80) = v49;
  *(v48 + 96) = *&v66[32];
  *(v48 + 112) = v66[48];
  v50 = v65;
  *(v48 + 32) = v64;
  *(v48 + 48) = v50;
  sub_249CE40CC(&v64, &v61);
  sub_249CFA160(0, 0, v45, &unk_249D080B8, v48);

  swift_unknownObjectRelease();
  v47(v45, 1, 1, v46);
  v51 = swift_allocObject();
  *(v51 + 16) = 0;
  *(v51 + 24) = 0;
  *(v51 + 32) = v42;
  *(v51 + 40) = v44;
  *(v51 + 48) = v17;
  *(v51 + 56) = v18;
  *(v51 + 64) = v19;
  *(v51 + 72) = v67;
  *(v51 + 88) = v68[0];
  *(v51 + 97) = *(v68 + 9);
  v52 = sub_249CFA460(0, 0, v45, &unk_249D080C8, v51);
  swift_unknownObjectRelease();
  v53 = v60;
  *v60 = v17;
  v53[1] = v18;
  v53[2] = v19;
  v54 = v63[0];
  *(v53 + 3) = v62;
  *(v53 + 5) = v54;
  result = *(v63 + 9);
  *(v53 + 49) = *(v63 + 9);
  *(v53 + 9) = v58;
  *(v53 + 10) = v52;
  return result;
}

uint64_t sub_249CE9184(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_249CE91E4(uint64_t a1, _OWORD *a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_249CE8168(a2, sub_249CE93BC, sub_249CE93F4);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_249CE4F70(v14, a3 & 1);
      v18 = *v4;
      v9 = sub_249CE8168(a2, sub_249CE93BC, sub_249CE93F4);
      if ((v15 & 1) != (v19 & 1))
      {
LABEL_16:
        result = sub_249D04D6C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = v9;
      sub_249D00FD8();
      v9 = v17;
    }
  }

  v20 = *v4;
  if ((v15 & 1) == 0)
  {
    v20[(v9 >> 6) + 8] |= 1 << v9;
    v24 = (v20[6] + 80 * v9);
    *v24 = *a2;
    v25 = a2[1];
    v26 = a2[2];
    v27 = a2[3];
    *(v24 + 57) = *(a2 + 57);
    v24[2] = v26;
    v24[3] = v27;
    v24[1] = v25;
    *(v20[7] + 8 * v9) = a1;
    v28 = v20[2];
    v13 = __OFADD__(v28, 1);
    v29 = v28 + 1;
    if (!v13)
    {
      v20[2] = v29;
      return sub_249CE93BC(a2, &v30);
    }

    goto LABEL_15;
  }

  v21 = v20[7];
  v22 = *(v21 + 8 * v9);
  *(v21 + 8 * v9) = a1;
}

void sub_249CE9424(void *a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 >> 6)
  {
    if (a3 >> 6 != 1)
    {
      return;
    }

    a3 &= 0x3Fu;
  }

  sub_249CE3970(a1, a2, a3);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_249CE94B0()
{
  v1 = *(*v0 + 352);
  v2 = *(*v0 + 240);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_249CE95C0, v2, 0);
}

uint64_t sub_249CE95C0()
{
  v2 = (v0 + 22);
  v1 = v0[22];
  v3 = *(v0 + 192);
  if (v3 != 255)
  {
    v4 = v0[23];
    v5 = *(v0[30] + 17);
    v83 = v0[22];
    if (v5 >> 62)
    {
      goto LABEL_77;
    }

    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v86 = *(v0 + 192);
    if (v6)
    {
      do
      {
        v78 = v2;
        v79 = v0;
        v88 = v5 & 0xC000000000000001;
        v81 = v5 + 32;
        v82 = v5 & 0xFFFFFFFFFFFFFF8;
        v7 = 2;
        if (v4 == 2)
        {
          v7 = 3;
        }

        v80 = v7;

        v2 = 0;
        v0 = &selRef__setPickerMode_;
        v87 = v4;
        v84 = v6;
        v85 = v5;
        while (v88)
        {
          MEMORY[0x24C1FED90](v2, v5);
          v10 = __OFADD__(v2++, 1);
          if (v10)
          {
            goto LABEL_74;
          }

LABEL_16:
          Strong = swift_unknownObjectWeakLoadStrong();
          if (!Strong)
          {
            goto LABEL_9;
          }

          v13 = Strong;
          v14 = Strong + OBJC_IVAR____TtC21DocumentManagerUICore13NodeThumbnail_currentThumbnail;
          os_unfair_lock_lock((Strong + OBJC_IVAR____TtC21DocumentManagerUICore13NodeThumbnail_currentThumbnail));
          if (v3)
          {
            if (v3 == 1)
            {
              v15 = v80;
            }

            else
            {
              v15 = 0;
            }
          }

          else
          {
            v15 = 1;
          }

          v16 = *(v14 + 16);
          v17 = *(v14 + 24);
          if (!*(v14 + 24))
          {
            if (!v15)
            {
              goto LABEL_29;
            }

LABEL_28:
            sub_249CE3970(*(v14 + 8), v16, v17);
            *(v14 + 8) = v83;
            *(v14 + 16) = v4;
            *(v14 + 24) = v3;
            sub_249CE9D08(v83, v4, v3);
            goto LABEL_29;
          }

          if (v17 != 1)
          {
            goto LABEL_28;
          }

          if (v16 == 2)
          {
            if (v15 == 3)
            {
              goto LABEL_28;
            }
          }

          else if (v15 >= 2)
          {
            goto LABEL_28;
          }

LABEL_29:
          os_unfair_lock_unlock(v14);
          v18 = &v13[OBJC_IVAR____TtC21DocumentManagerUICore13NodeThumbnail_listeners];
          os_unfair_lock_lock(&v13[OBJC_IVAR____TtC21DocumentManagerUICore13NodeThumbnail_listeners]);
          v19 = *(v18 + 1);
          if (v19 >> 62)
          {
            if (v19 < 0)
            {
              v23 = *(v18 + 1);
            }

            v4 = sub_249D04CEC();
            if (!v4)
            {
              goto LABEL_44;
            }
          }

          else
          {
            v4 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (!v4)
            {
              goto LABEL_44;
            }
          }

          if (v4 < 1)
          {
            goto LABEL_75;
          }

          for (i = 0; i != v4; ++i)
          {
            if ((v19 & 0xC000000000000001) != 0)
            {
              MEMORY[0x24C1FED90](i, v19);
            }

            else
            {
              v21 = *(v19 + 8 * i + 32);
            }

            v22 = swift_unknownObjectWeakLoadStrong();
            if (v22)
            {
              [v22 thumbnailLoaded_];
              swift_unknownObjectRelease();
            }
          }

LABEL_44:
          os_unfair_lock_unlock(v18);
          v3 = v86;
          if (v86 == 1)
          {
            v4 = v87;
            if (v87 != 1)
            {
              goto LABEL_49;
            }
          }

          else
          {
            v4 = v87;
            if (!v86 && (v87 & 0x100) != 0)
            {
LABEL_49:
              v24 = &v13[OBJC_IVAR____TtC21DocumentManagerUICore13NodeThumbnail_completionHandlers];
              os_unfair_lock_lock(&v13[OBJC_IVAR____TtC21DocumentManagerUICore13NodeThumbnail_completionHandlers]);
              v25 = *(v24 + 1);
              v26 = *(v25 + 16);
              if (v26)
              {
                v27 = (v25 + 40);
                do
                {
                  v29 = *(v27 - 1);
                  v28 = *v27;

                  v29(v30);

                  v27 += 2;
                  --v26;
                }

                while (v26);
                v31 = *(v24 + 1);
                v4 = v87;
              }

              v8 = MEMORY[0x277D84F90];
              *(v24 + 1) = MEMORY[0x277D84F90];

              os_unfair_lock_unlock(v24);
              os_unfair_lock_lock(v18);
              v9 = *(v18 + 1);
              *(v18 + 1) = v8;

              os_unfair_lock_unlock(v18);
            }
          }

          v6 = v84;
          v5 = v85;
LABEL_9:

          if (v2 == v6)
          {

            v2 = v78;
            v0 = v79;
            v1 = v83;
            goto LABEL_54;
          }
        }

        if (v2 >= *(v82 + 16))
        {
          goto LABEL_76;
        }

        v11 = *(v81 + 8 * v2);

        v10 = __OFADD__(v2++, 1);
        if (!v10)
        {
          goto LABEL_16;
        }

LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        v77 = sub_249D04CEC();
        v1 = v83;
        v6 = v77;
        v86 = v3;
      }

      while (v77);
    }

LABEL_54:
    if (v3 == 1)
    {
      if (v4 == 1)
      {
LABEL_57:
        v32 = v0[30];
        v33 = *(v32 + 14);
        v34 = *(v32 + 15);
        *(v32 + 14) = v1;
        *(v32 + 15) = v4;
        v35 = v32[128];
        v32[128] = v3;
        sub_249CE9424(v33, v34, v35);
LABEL_68:
        v65 = v0[43];
        v66 = v0[30];
        v67 = *(MEMORY[0x277D85798] + 4);
        v68 = swift_task_alloc();
        v0[44] = v68;
        *v68 = v0;
        *(v68 + 1) = sub_249CE94B0;
        v69 = v0[42];
        v70 = v0[40];

        return MEMORY[0x2822003E8](v2, v66, v65, v70);
      }
    }

    else if (v3 || (v4 & 0x100) == 0)
    {
      goto LABEL_57;
    }

    v48 = v0[30];
    v50 = *(v48 + 14);
    v49 = *(v48 + 15);
    *(v48 + 14) = v1;
    *(v48 + 15) = v4;
    v51 = v48[128];
    v48[128] = v3 | 0x40;
    sub_249CE395C(v1, v4, v3);
    sub_249CE9424(v50, v49, v51);
    v52 = *(v48 + 17);
    v53 = v0;
    v54 = MEMORY[0x277D84F90];
    *(v48 + 17) = MEMORY[0x277D84F90];

    v55 = *(v48 + 29);
    v56 = *(v55 + 16);
    if (v56)
    {
      v57 = v0[32];
      v58 = v55 + ((v57[80] + 32) & ~v57[80]);
      v90 = *(v57 + 9);
      v89 = *(v57 + 2);

      v59 = v2;
      do
      {
        v61 = v53[32];
        v60 = v53[33];
        v62 = v53[31];
        v89(v60, v58, v62);
        v53[25] = v83;
        v53[26] = v4;
        *(v53 + 216) = v86;
        sub_249CE395C(v83, v4, v86);
        sub_249D04B0C();
        (*(v61 + 1))(v60, v62);
        v58 += v90;
        --v56;
      }

      while (v56);
      v63 = v53[30];

      v64 = *(v63 + 29);
      v2 = v59;
      v54 = MEMORY[0x277D84F90];
    }

    *(v53[30] + 29) = v54;

    sub_249CE9D54(v83, v4, v86);
    v0 = v53;
    goto LABEL_68;
  }

  v36 = v0[30];
  (*(v0[41] + 1))(v0[42], v0[40]);
  v37 = v36[128];
  if ((v37 & 0xC0) == 0x40)
  {
    v38 = v0[30];
    v39 = v0[28];
    v40 = *(v38 + 14);
    v41 = *(v38 + 15);
    *v39 = v40;
    *(v39 + 1) = v41;
    v39[16] = v37 & 0x3F;
    sub_249CE395C(v40, v41, v37 & 0x3F);
    v42 = v0[42];
    v43 = v0[39];
    v44 = v0[36];
    v45 = v0[33];

    v46 = v0[1];

    return v46();
  }

  else
  {
    v71 = v0[30];
    v72 = sub_249CE6C80(&qword_27EF19908, 255, type metadata accessor for ImageRequest);
    v73 = *(MEMORY[0x277D859E0] + 4);
    v74 = swift_task_alloc();
    v0[45] = v74;
    *v74 = v0;
    *(v74 + 1) = sub_249CFCB78;
    v75 = v0[30];
    v76 = v0[28];

    return MEMORY[0x2822007B8](v76, v71, v72, 0xD000000000000015, 0x8000000249D091E0, sub_249D02D94, v75, &type metadata for Thumbnail);
  }
}

id sub_249CE9D08(id result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_249CE395C(result, a2, a3);
  }

  return result;
}

uint64_t sub_249CE9D1C()
{
  MEMORY[0x24C1FF940](v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

void sub_249CE9D54(id a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    sub_249CE3970(a1, a2, a3);
  }
}

uint64_t sub_249CE9D68(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_249CE9DAC()
{
  v2 = *(*v1 + 736);
  v5 = *v1;

  if (v0)
  {

    v3 = sub_249CFF104;
  }

  else
  {
    v3 = sub_249CE9EC4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_249CE9EC4()
{
  v36 = v0;
  v1 = *(v0 + 624);
  v2 = *(v0 + 632);
  v3 = *(v0 + 640);
  if (v3 != 1)
  {
    v25 = *(v0 + 728);
    goto LABEL_9;
  }

  v4 = *(v0 + 704);
  v5 = *(v0 + 688);
  v6 = *(v0 + 680);
  os_unfair_lock_lock((v6 + 16));
  *(v0 + 16) = *v5;
  v7 = v5[1];
  v8 = v5[2];
  v9 = v5[3];
  *(v0 + 73) = *(v5 + 57);
  *(v0 + 48) = v8;
  *(v0 + 64) = v9;
  *(v0 + 32) = v7;
  sub_249CE395C(v1, v2, 1u);
  sub_249D03320(v5, v0 + 256, &qword_27EF19970, &qword_249D080A0);
  sub_249CE395C(v1, v2, 1u);
  v10 = *(v6 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v34[0] = *(v6 + 24);
  *(v6 + 24) = 0x8000000000000000;
  sub_249CEA19C(v1, (v0 + 16), isUniquelyReferenced_nonNull_native);
  *(v6 + 24) = *&v34[0];
  *(v0 + 96) = *v4;
  v12 = v4[1];
  v13 = v4[2];
  v14 = v4[3];
  *(v0 + 153) = *(v4 + 57);
  *(v0 + 128) = v13;
  *(v0 + 144) = v14;
  *(v0 + 112) = v12;
  v15 = *(v0 + 96);
  v16 = *(v0 + 16);
  sub_249CE6CC8(0, &qword_27EF198C0, 0x277D82BB8);
  sub_249D03320(v4, v0 + 336, &qword_27EF19970, &qword_249D080A0);
  v17 = sub_249D04C4C();
  v18 = *(v0 + 688);
  if ((v17 & 1) == 0)
  {
    sub_249CE9184(*(v0 + 688), &qword_27EF19970, &qword_249D080A0);
    goto LABEL_7;
  }

  v19 = *(v0 + 120);
  v20 = *(v0 + 152);
  v32[2] = *(v0 + 136);
  v32[3] = v20;
  v33 = *(v0 + 168);
  v32[0] = *(v0 + 104);
  v32[1] = v19;
  v21 = *(v0 + 40);
  v22 = *(v0 + 72);
  v34[2] = *(v0 + 56);
  v34[3] = v22;
  v35 = *(v0 + 88);
  v34[0] = *(v0 + 24);
  v34[1] = v21;
  v23 = _s21DocumentManagerUICore12ImageOptionsV2eeoiySbAC_ACtFZ_0(v32, v34);
  sub_249CE9184(v18, &qword_27EF19970, &qword_249D080A0);
  if ((v23 & 1) == 0)
  {
LABEL_7:
    v26 = *(v0 + 704);
    v27 = *(v6 + 24);
    v28 = swift_isUniquelyReferenced_nonNull_native();
    *&v34[0] = *(v6 + 24);
    *(v6 + 24) = 0x8000000000000000;
    sub_249CEA19C(v1, (v0 + 96), v28);
    sub_249CE9184(v26, &qword_27EF19970, &qword_249D080A0);
    *(v6 + 24) = *&v34[0];
    goto LABEL_8;
  }

  v24 = *(v0 + 704);
  sub_249CE3970(v1, v2, 1u);
  sub_249CE9184(v24, &qword_27EF19970, &qword_249D080A0);
LABEL_8:
  v29 = *(v0 + 728);
  os_unfair_lock_unlock((v6 + 16));
  LOBYTE(v3) = 1;
LABEL_9:
  sub_249CE3970(v1, v2, v3);

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_249CEA19C(uint64_t a1, _OWORD *a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_249CE8168(a2, sub_249CEA370, sub_249CE6DB8);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a3 & 1) != 0)
  {
LABEL_8:
    v20 = *v4;
    if (v15)
    {
      v21 = v20[7];
      v22 = *(v21 + 8 * v9);
      *(v21 + 8 * v9) = a1;

      return MEMORY[0x2821F96F8]();
    }

    v20[(v9 >> 6) + 8] |= 1 << v9;
    v23 = (v20[6] + 80 * v9);
    *v23 = *a2;
    v24 = a2[1];
    v25 = a2[2];
    v26 = a2[3];
    *(v23 + 57) = *(a2 + 57);
    v23[2] = v25;
    v23[3] = v26;
    v23[1] = v24;
    *(v20[7] + 8 * v9) = a1;
    v27 = v20[2];
    v13 = __OFADD__(v27, 1);
    v28 = v27 + 1;
    if (!v13)
    {
      v20[2] = v28;
      return sub_249CEA370(a2, &v30);
    }

    goto LABEL_15;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = v9;
    sub_249D01188();
    v9 = v17;
    goto LABEL_8;
  }

  sub_249CE798C(v14, a3 & 1);
  v18 = *v4;
  v9 = sub_249CE8168(a2, sub_249CEA370, sub_249CE6DB8);
  if ((v15 & 1) == (v19 & 1))
  {
    goto LABEL_8;
  }

LABEL_16:
  sub_249D04D6C();
  __break(1u);
  return MEMORY[0x2821F96F8]();
}

void sub_249CEA3A8(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  v10 = a2;
  v9 = a4;
  v8(a2, a3, a4);
}

uint64_t sub_249CEA43C(void *a1, uint64_t a2)
{
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF19918, &qword_249D07FE8) - 8) + 80);

  return sub_249CE7780(a1, a2);
}

void sub_249CEA4D0(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_249CEA55C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF19920, &qword_249D07FF0);
  v31 = *(v8 - 8);
  v32 = v8;
  v9 = (*(v31 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = &v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF19918, &qword_249D07FE8);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20]();
  v16 = &v30 - v15;
  v17 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF19670, &qword_249D07600) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v19 = &v30 - v18;
  if (a2 || !a1)
  {
    v25 = sub_249D04B6C();
    (*(*(v25 - 8) + 56))(v19, 1, 1, v25);
    (*(v13 + 16))(v16, a4, v12);
    v26 = (*(v13 + 80) + 120) & ~*(v13 + 80);
    v27 = swift_allocObject();
    *(v27 + 16) = 0;
    *(v27 + 24) = 0;
    v28 = *(a3 + 48);
    *(v27 + 64) = *(a3 + 32);
    *(v27 + 80) = v28;
    *(v27 + 96) = *(a3 + 64);
    *(v27 + 112) = *(a3 + 80);
    v29 = *(a3 + 16);
    *(v27 + 32) = *a3;
    *(v27 + 48) = v29;
    (*(v13 + 32))(v27 + v26, v16, v12);
    sub_249CE9448(a3, v33);
    sub_249CFA160(0, 0, v19, &unk_249D08000, v27);
  }

  else
  {
    v20 = *(a3 + 80);
    sub_249D04BDC();
    v21 = [a1 UIImage];
    if (v21)
    {
      v22 = v21;
      v23 = [a1 type];
      v33[0] = v22;
      v33[1] = v23;
      v34 = 1;
      sub_249D04B8C();
      (*(v31 + 8))(v11, v32);
    }

    return sub_249D04B9C();
  }
}

uint64_t sub_249CEA894(void *a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF19918, &qword_249D07FE8) - 8);
  v6 = v2 + ((*(v5 + 80) + 104) & ~*(v5 + 80));

  return sub_249CEA55C(a1, a2, v2 + 16, v6);
}

uint64_t sub_249CEA954(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_249CE6A30;

  return sub_249CEAABC(a1, v5);
}

uint64_t sub_249CEAA0C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_249CE6A30;

  return sub_249CEABB4(a1, v4, v5, v1 + 32);
}

uint64_t sub_249CEAABC(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_249CE6B2C;

  return v7(a1);
}

uint64_t sub_249CEABB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 48);
  *(v4 + 48) = *(a4 + 32);
  *(v4 + 64) = v6;
  *(v4 + 80) = *(a4 + 64);
  *(v4 + 96) = *(a4 + 80);
  v7 = *(a4 + 16);
  *(v4 + 16) = *a4;
  *(v4 + 32) = v7;
  v8 = swift_task_alloc();
  *(v4 + 104) = v8;
  *v8 = v4;
  v8[1] = sub_249CEAC70;

  return sub_249CE7510(a1);
}

uint64_t sub_249CEAC70()
{
  v1 = *(*v0 + 104);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_249CEB288()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_249CEB2C8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_249CEB300(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void *sub_249CEB310@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_249CEB340()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_249CEB3A8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_249CEB3EC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_249CEB424()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_249CEB464()
{
  MEMORY[0x24C1FF940](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_249CEB4D8()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 113, 7);
}

uint64_t sub_249CEB538()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EF19790, &unk_249D078B8);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_249CEB570()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_249CEB5A8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_249CEB5FC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

void sub_249CEEB24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v8 - 48), 8);
  objc_sync_exit(v7);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void DOCDocumentPickerExtensionUpdateWithConfiguration(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  [v4 _setPickerMode:{objc_msgSend(v3, "interactionMode")}];
  v5 = MEMORY[0x277CE1CB8];
  v7 = [v3 documentContentTypes];

  v6 = [v5 doc_identifiersForContentTypes:v7];
  [v4 _setPickableTypes:v6];
}

id DOCLogHandle()
{
  v0 = MEMORY[0x277D062B8];
  v1 = *MEMORY[0x277D062B8];
  if (!*MEMORY[0x277D062B8])
  {
    DOCInitLogging();
    v1 = *v0;
  }

  return v1;
}

DOCOpenLocationIntent *DOCCreateDefaultHomeScreenWidgetIntent()
{
  v0 = [DOCIntentLocation alloc];
  v1 = *MEMORY[0x277D060F8];
  v2 = _DocumentManagerBundle();
  v3 = [v2 localizedStringForKey:@"Recents" value:@"Recents" table:@"Localizable"];
  v4 = [(DOCIntentLocation *)v0 initWithIdentifier:v1 displayString:v3];

  v5 = [MEMORY[0x277CD3D10] systemImageNamed:@"folder"];
  [(DOCIntentLocation *)v4 setDisplayImage:v5];

  [(DOCIntentLocation *)v4 setLocationType:@"recents"];
  [(DOCIntentLocation *)v4 setLocationIdentifier:v1];
  v6 = objc_alloc_init(DOCOpenLocationIntent);
  [(DOCOpenLocationIntent *)v6 _setLaunchId:@"com.apple.DocumentsApp"];
  [(DOCOpenLocationIntent *)v6 _setExtensionBundleId:@"com.apple.DocumentManagerUICore.RecentsAvocadoIntentHandler"];
  [(DOCOpenLocationIntent *)v6 setLocation:v4];

  return v6;
}

id DOCConstraintsToResizeViewsWithSuperview(void *a1, double a2, double a3, double a4, double a5)
{
  v26 = *MEMORY[0x277D85DE8];
  v9 = a1;
  v10 = [MEMORY[0x277CBEB18] arrayWithCapacity:{4 * objc_msgSend(v9, "count")}];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v11 = v9;
  v12 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v22;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v22 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v21 + 1) + 8 * i);
        v17 = [v16 superview];
        v18 = DOCConstraintsToResizeWithReferenceView(v16, v17, a2, a3, a4, a5);
        [v10 addObjectsFromArray:v18];
      }

      v13 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v13);
  }

  v19 = *MEMORY[0x277D85DE8];

  return v10;
}

id DOCConstraintsToResizeWithReferenceView(void *a1, void *a2, double a3, double a4, double a5, double a6)
{
  v11 = a1;
  v12 = a2;
  v13 = [MEMORY[0x277CBEB18] arrayWithCapacity:4];
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  v14 = [v11 topAnchor];
  v15 = [v12 topAnchor];
  v16 = [v14 constraintEqualToAnchor:v15 constant:a3];
  [v13 addObject:v16];

  v17 = [v11 leadingAnchor];
  v18 = [v12 leadingAnchor];
  v19 = [v17 constraintEqualToAnchor:v18 constant:a4];
  [v13 addObject:v19];

  v20 = [v11 bottomAnchor];
  v21 = [v12 bottomAnchor];
  v22 = [v20 constraintEqualToAnchor:v21 constant:-a5];
  [v13 addObject:v22];

  v23 = [v11 trailingAnchor];
  v24 = [v12 trailingAnchor];
  v25 = [v23 constraintEqualToAnchor:v24 constant:-a6];
  [v13 addObject:v25];

  return v13;
}

id DOCConstraintsToResizeWithSuperview(void *a1, double a2, double a3, double a4, double a5)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v15[0] = a1;
  v9 = MEMORY[0x277CBEA60];
  v10 = a1;
  v11 = [v9 arrayWithObjects:v15 count:1];

  v12 = DOCConstraintsToResizeViewsWithSuperview(v11, a2, a3, a4, a5);

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

id DOCConstraintsToResizeWithSuperviewSafeArea(void *a1, double a2, double a3, double a4, double a5)
{
  v9 = a1;
  v10 = [MEMORY[0x277CBEB18] arrayWithCapacity:4];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  v11 = [v9 topAnchor];
  v12 = [v9 superview];
  v13 = [v12 safeAreaLayoutGuide];
  v14 = [v13 topAnchor];
  v15 = [v11 constraintEqualToAnchor:v14 constant:a2];
  [v10 addObject:v15];

  v16 = [v9 leadingAnchor];
  v17 = [v9 superview];
  v18 = [v17 safeAreaLayoutGuide];
  v19 = [v18 leadingAnchor];
  v20 = [v16 constraintEqualToAnchor:v19 constant:a3];
  [v10 addObject:v20];

  v21 = [v9 bottomAnchor];
  v22 = [v9 superview];
  v23 = [v22 safeAreaLayoutGuide];
  v24 = [v23 bottomAnchor];
  v25 = [v21 constraintEqualToAnchor:v24 constant:-a4];
  [v10 addObject:v25];

  v26 = [v9 trailingAnchor];
  v27 = [v9 superview];
  v28 = [v27 safeAreaLayoutGuide];
  v29 = [v28 trailingAnchor];
  v30 = [v26 constraintEqualToAnchor:v29 constant:-a5];
  [v10 addObject:v30];

  [v10 enumerateObjectsUsingBlock:&__block_literal_global_3];

  return v10;
}

id DOCConstraintWithPriority(void *a1, float a2)
{
  v3 = a1;
  *&v4 = a2;
  [v3 setPriority:v4];

  return v3;
}

id DOCConstraintsWithPriority(void *a1, float a2)
{
  v3 = MEMORY[0x277CBEB18];
  v4 = a1;
  v5 = [[v3 alloc] initWithCapacity:{objc_msgSend(v4, "count")}];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __DOCConstraintsWithPriority_block_invoke;
  v8[3] = &unk_278FB3A88;
  v6 = v5;
  v9 = v6;
  v10 = a2;
  [v4 enumerateObjectsUsingBlock:v8];

  return v6;
}

void __DOCConstraintsWithPriority_block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = a2;
  LODWORD(v4) = v3;
  [v5 setPriority:v4];
  [v2 addObject:v5];
}

id DOCUIFolderAnimationView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id DOCUIFolderAnimationView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v10.receiver = v4;
  v10.super_class = type metadata accessor for DOCUIFolderAnimationView();
  return objc_msgSendSuper2(&v10, sel_initWithFrame_, a1, a2, a3, a4);
}

id DOCUIFolderAnimationView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

uint64_t sub_249CF47F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19[1] = a3;
  v19[2] = a1;
  v20 = sub_249D0496C();
  v9 = *(v20 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v20);
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = swift_allocObject();
  *(v12 + 16) = a4;
  *(v12 + 24) = a5;
  *(swift_allocObject() + 16) = v5;
  sub_249CEB300(a4);
  sub_249CEB300(a2);
  v13 = v5;
  v14 = sub_249D0495C();
  MEMORY[0x28223BE20](v14);
  v15 = v20;
  (*(v9 + 16))(v19 - v11, v19 - v11, v20);
  v16 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF19428, &unk_249D07310));
  v17 = sub_249D04A2C();
  [v13 addSubview_];
  [v13 bounds];
  [v17 setFrame_];

  return (*(v9 + 8))(v19 - v11, v15);
}

uint64_t sub_249CF4A1C(void (*a1)(uint64_t))
{
  sub_249D04B2C();
  sub_249D04B1C();
  sub_249D04ADC();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  if (a1)
  {
    a1(isCurrentExecutor);
  }
}

void sub_249CF4AD8(void *a1)
{
  sub_249D04B2C();
  sub_249D04B1C();
  sub_249D04ADC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = [a1 window];
  if (v2 && (v3 = v2, v4 = [v2 windowScene], v3, v4))
  {
    v5 = [v4 screen];

    [v5 scale];
  }

  else
  {
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

id DOCUIFolderAnimationView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCUIFolderAnimationView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_249CF4CE4(uint64_t a1, int a2)
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

uint64_t sub_249CF4D04(uint64_t result, int a2, int a3)
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

void sub_249CF4D54(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

BOOL static FolderAssetType.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    return (*(a2 + 8) & 1) != 0;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  return *a1 == *a2;
}

uint64_t sub_249CF4DE4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  result = *(a2 + 8);
  if ((v3 & 1) == 0)
  {
    return (*a1 == *a2) & ~result;
  }

  return result;
}

void FolderIconFetcher.init(node:assetType:size:scale:traitCollection:)(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>)
{
  v12 = *a2;
  v13 = *(a2 + 8);
  if (a3)
  {
    v15 = UITraitCollection._ifColorForIconFolderTint.getter();
  }

  else
  {
    v15 = 0;
  }

  *a4 = a1;
  *(a4 + 8) = v12;
  *(a4 + 16) = v13;
  *(a4 + 24) = a5;
  *(a4 + 32) = a6;
  *(a4 + 40) = a7;
  *(a4 + 48) = v15;
}

uint64_t static FolderIconFetcher.prewarmGenericFolder()()
{
  if (qword_27EF193F0 != -1)
  {
    return swift_once();
  }

  return result;
}

uint64_t sub_249CF4EC4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF19670, &qword_249D07600);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v10 - v2;
  v4 = [objc_opt_self() mainScreen];
  [v4 scale];
  v6 = v5;

  v7 = sub_249D04B6C();
  (*(*(v7 - 8) + 56))(v3, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v6;
  sub_249CFA160(0, 0, v3, &unk_249D07668, v8);
}

uint64_t sub_249CF5018()
{
  v1 = *(v0 + 88);
  *(v0 + 24) = 0;
  *(v0 + 16) = 0;
  *(v0 + 32) = 1;
  *(v0 + 40) = vdupq_n_s64(0x4055000000000000uLL);
  *(v0 + 56) = v1;
  *(v0 + 64) = 0;
  v2 = swift_task_alloc();
  *(v0 + 96) = v2;
  *v2 = v0;
  v2[1] = sub_249CF50D8;

  return FolderIconFetcher.fetchImageAndOverlay()(v0 + 72);
}

uint64_t sub_249CF50D8()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v9 = *v1;

  if (v0)
  {

    v4 = *(v2 + 16);
    v5 = *(v2 + 64);
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = *(v2 + 16);
    v7 = *(v2 + 64);
    swift_unknownObjectRelease();

    v5 = *(v2 + 80);
  }

  return MEMORY[0x2822009F8](sub_249CE8154, 0, 0);
}

id FolderIconFetcher.init(node:assetType:imageOptions:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a3 + 16);
  v8 = *(a3 + 32);
  v9 = *(a3 + 40);
  v10 = *(a3 + 48);
  v11 = *(a3 + 56);
  v12 = *(a3 + 64);
  *a4 = a1;
  *(a4 + 8) = v5;
  *(a4 + 16) = v6;
  *(a4 + 24) = *a3;
  *(a4 + 40) = v7;
  if (v12)
  {
    result = 0;
  }

  else
  {
    result = [objc_allocWithZone(MEMORY[0x277D1B150]) initWithRed:v8 green:v9 blue:v10 alpha:v11];
  }

  *(a4 + 48) = result;
  return result;
}

uint64_t FolderIconFetcher.fetchImageAndOverlay()(uint64_t a1)
{
  *(v2 + 472) = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF195D0, &qword_249D074E8);
  *(v2 + 480) = v3;
  v4 = *(v3 - 8);
  *(v2 + 488) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 496) = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF195D8, &qword_249D074F0);
  *(v2 + 504) = v6;
  v7 = *(v6 - 8);
  *(v2 + 512) = v7;
  v8 = *(v7 + 64) + 15;
  *(v2 + 520) = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF195E0, &qword_249D074F8);
  *(v2 + 528) = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  *(v2 + 536) = swift_task_alloc();
  *(v2 + 544) = swift_task_alloc();
  v11 = *v1;
  *(v2 + 672) = *(v1 + 16);
  v12 = *(v1 + 24);
  *(v2 + 552) = v11;
  *(v2 + 568) = v12;
  *(v2 + 584) = *(v1 + 5);
  *(v2 + 592) = *(v1 + 6);

  return MEMORY[0x2822009F8](sub_249CF545C, 0, 0);
}

uint64_t sub_249CF545C()
{
  if (*(v0 + 552))
  {
    objc_opt_self();
    v1 = swift_dynamicCastObjCClass();
    if (v1)
    {
      v2 = v1;
      v3 = *(v0 + 536);
      v15 = *(v0 + 528);
      v4 = *(v0 + 520);
      v5 = *(v0 + 504);
      v6 = *(v0 + 512);
      *(v0 + 144) = v0;
      *(v0 + 184) = v3;
      *(v0 + 152) = sub_249CF56F8;
      swift_continuation_init();
      *(v0 + 392) = v5;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 368));
      swift_unknownObjectRetain_n();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF195F0, &qword_249D07508);
      sub_249D04AEC();
      (*(v6 + 32))(boxed_opaque_existential_0, v4, v5);
      *(v0 + 336) = MEMORY[0x277D85DD0];
      *(v0 + 344) = 1107296256;
      *(v0 + 352) = sub_249CF74F8;
      *(v0 + 360) = &block_descriptor_7;
      [v2 fetchURL_];
      (*(v6 + 8))(boxed_opaque_existential_0, v5);

      return MEMORY[0x282200938](v0 + 144);
    }

    swift_unknownObjectRetain_n();
    v8 = *(v0 + 552);
  }

  else
  {
    v8 = 0;
  }

  v9 = *(v0 + 592);
  v10 = *(v0 + 568);
  v11 = *(v0 + 672);
  v12 = *(v0 + 560);
  *(v0 + 400) = v8;
  *(v0 + 408) = v12;
  *(v0 + 416) = v11;
  *(v0 + 424) = v10;
  *(v0 + 432) = *(v0 + 576);
  *(v0 + 448) = v9;
  v13 = swift_task_alloc();
  *(v0 + 608) = v13;
  *v13 = v0;
  v13[1] = sub_249CF5900;

  return sub_249CF76A4();
}

uint64_t sub_249CF56F8()
{
  v1 = *v0;
  v2 = *(*v0 + 176);
  *(*v0 + 600) = v2;
  if (v2)
  {
    v3 = sub_249CF6728;
  }

  else
  {
    v3 = sub_249CF5808;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_249CF5808()
{
  v1 = *(v0 + 552);
  v2 = *(v0 + 544);
  v3 = *(v0 + 536);
  swift_unknownObjectRelease();
  sub_249CF9254(v3, v2);
  sub_249CE9184(v2, &unk_27EF195E0, &qword_249D074F8);
  v4 = *(v0 + 592);
  v5 = *(v0 + 568);
  v6 = *(v0 + 672);
  *(v0 + 400) = *(v0 + 552);
  *(v0 + 416) = v6;
  *(v0 + 424) = v5;
  *(v0 + 432) = *(v0 + 576);
  *(v0 + 448) = v4;
  v7 = swift_task_alloc();
  *(v0 + 608) = v7;
  *v7 = v0;
  v7[1] = sub_249CF5900;

  return sub_249CF76A4();
}

uint64_t sub_249CF5900(uint64_t a1)
{
  v2 = *(*v1 + 608);
  v4 = *v1;
  *(*v1 + 616) = a1;

  return MEMORY[0x2822009F8](sub_249CF5A00, 0, 0);
}

uint64_t sub_249CF5A00()
{
  v1 = [objc_allocWithZone(DOCThumbnailDescriptor) initWithSize:1 scale:0 style:0 isFolded:1 isInteractive:*(v0 + 568) isFolder:{*(v0 + 576), *(v0 + 584)}];
  *(v0 + 624) = v1;
  v2 = [objc_opt_self() folderOverlays];
  v3 = [v2 isEnabled];

  v4 = *(v0 + 552);
  if (v3)
  {
    v5 = *(v0 + 552);
    swift_unknownObjectRelease();
    if (!v4)
    {
      goto LABEL_17;
    }

    goto LABEL_8;
  }

  if (!v4)
  {
    goto LABEL_17;
  }

  if (![*(v0 + 552) doc_folderIconType] || objc_msgSend(v4, sel_doc_folderIconType) == 1)
  {
    swift_unknownObjectRelease();
LABEL_8:
    *(v0 + 648) = 0;
    v6 = [v4 fpfs_fpItem];
    if (v6)
    {
      v7 = v6;
      v8 = [v6 fp_appContainerBundleIdentifier];

      if (v8)
      {
        sub_249D04A4C();

        if (sub_249D04A7C() < 1)
        {
        }

        else
        {
          if (*(v0 + 672))
          {

LABEL_20:
            v9 = v0 + 80;
            v24 = *(v0 + 624);
            v25 = *(v0 + 552);
            v11 = *(v0 + 488);
            v26 = *(v0 + 496);
            v12 = *(v0 + 480);
            v27 = objc_opt_self();
            v28 = v24;
            v29 = [v27 sharedGenerator];
            v30 = [v29 thumbnailGenerator];

            v31 = [objc_allocWithZone(DOCRegularNodeThumbnailRequest) initWithNode:v25 descriptor:v28 thumbnailGenerator:v30];
            *(v0 + 656) = v31;

            swift_unknownObjectRelease();
            [v31 setOnlyCallbackOnOverlayImage_];
            *(v0 + 80) = v0;
            *(v0 + 120) = v0 + 464;
            *(v0 + 88) = sub_249CF6518;
            swift_continuation_init();
            *(v0 + 328) = v12;
            boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 304));
            sub_249CE6CC8(0, &qword_27EF19930, 0x277D755B8);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF195F0, &qword_249D07508);
            sub_249D04AEC();
            (*(v11 + 32))(boxed_opaque_existential_0, v26, v12);
            *(v0 + 272) = MEMORY[0x277D85DD0];
            *(v0 + 280) = 1107296256;
            *(v0 + 288) = sub_249CF809C;
            *(v0 + 296) = &block_descriptor_4;
            [v31 generateThumbnailWithCompletionHandler_];
            goto LABEL_21;
          }

          v15 = *(v0 + 560);

          if (!v15)
          {
            goto LABEL_20;
          }
        }
      }
    }

    v16 = *(v0 + 552);
    swift_unknownObjectRelease();
    v1 = *(v0 + 624);
LABEL_17:

    v17 = *(v0 + 544);
    v18 = *(v0 + 536);
    v19 = *(v0 + 520);
    v20 = *(v0 + 496);
    v21 = *(v0 + 472);
    *v21 = *(v0 + 616);
    v21[1] = 0;

    v22 = *(v0 + 8);

    return v22();
  }

  v9 = v0 + 16;
  v11 = *(v0 + 488);
  v10 = *(v0 + 496);
  v12 = *(v0 + 480);
  v13 = [objc_allocWithZone(DOCStaticBadgedFolderThumbnailRequest) initWithFolderType:objc_msgSend(v4 descriptor:{sel_doc_folderIconType), v1}];
  *(v0 + 632) = v13;
  [v13 setOnlyCallbackOnOverlayImage_];
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 456;
  *(v0 + 24) = sub_249CF6008;
  swift_continuation_init();
  *(v0 + 264) = v12;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 240));
  sub_249CE6CC8(0, &qword_27EF19930, 0x277D755B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF195F0, &qword_249D07508);
  sub_249D04AEC();
  (*(v11 + 32))(boxed_opaque_existential_0, v10, v12);
  *(v0 + 208) = MEMORY[0x277D85DD0];
  *(v0 + 216) = 1107296256;
  *(v0 + 224) = sub_249CF809C;
  *(v0 + 232) = &block_descriptor;
  [v13 generateThumbnailWithCompletionHandler_];
LABEL_21:
  (*(v11 + 8))(boxed_opaque_existential_0, v12);

  return MEMORY[0x282200938](v9);
}

uint64_t sub_249CF6008()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 640) = v2;
  if (v2)
  {
    v3 = sub_249CF6870;
  }

  else
  {
    v3 = sub_249CF6118;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_249CF6118()
{
  v1 = *(v0 + 552);
  v2.super.isa = *(v0 + 456);

  swift_unknownObjectRelease();
  v3 = *(v0 + 552);
  *(v0 + 648) = v2;
  v4 = [v3 fpfs_fpItem];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 fp_appContainerBundleIdentifier];

    if (v6)
    {
      sub_249D04A4C();

      if (sub_249D04A7C() < 1)
      {
      }

      else
      {
        if (*(v0 + 672))
        {

LABEL_14:
          v19 = *(v0 + 624);
          v20 = *(v0 + 552);
          v22 = *(v0 + 488);
          v21 = *(v0 + 496);
          v23 = *(v0 + 480);
          v24 = objc_opt_self();
          v25 = v19;
          v26 = [v24 sharedGenerator];
          v27 = [v26 thumbnailGenerator];

          v28 = [objc_allocWithZone(DOCRegularNodeThumbnailRequest) initWithNode:v20 descriptor:v25 thumbnailGenerator:v27];
          *(v0 + 656) = v28;

          swift_unknownObjectRelease();
          [v28 setOnlyCallbackOnOverlayImage_];
          *(v0 + 80) = v0;
          *(v0 + 120) = v0 + 464;
          *(v0 + 88) = sub_249CF6518;
          swift_continuation_init();
          *(v0 + 328) = v23;
          boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 304));
          sub_249CE6CC8(0, &qword_27EF19930, 0x277D755B8);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF195F0, &qword_249D07508);
          sub_249D04AEC();
          (*(v22 + 32))(boxed_opaque_existential_0, v21, v23);
          *(v0 + 272) = MEMORY[0x277D85DD0];
          *(v0 + 280) = 1107296256;
          *(v0 + 288) = sub_249CF809C;
          *(v0 + 296) = &block_descriptor_4;
          [v28 generateThumbnailWithCompletionHandler_];
          (*(v22 + 8))(boxed_opaque_existential_0, v23);

          return MEMORY[0x282200938](v0 + 80);
        }

        v7 = *(v0 + 560);

        if (!v7)
        {
          goto LABEL_14;
        }
      }
    }
  }

  v8 = *(v0 + 552);
  swift_unknownObjectRelease();
  v9 = *(v0 + 624);
  if (v2.super.isa)
  {
    v10 = *(v0 + 616);
    v30 = *(v0 + 552);
    v31 = *(v0 + 672);
    v32 = *(v0 + 568);
    v33 = *(v0 + 584);
    v34 = *(v0 + 592);
    v11.super.isa = FolderIconFetcher.addImage(overlayImage:to:)(v2, v10).super.isa;
  }

  else
  {

    v11.super.isa = *(v0 + 616);
  }

  v12 = *(v0 + 544);
  v13 = *(v0 + 536);
  v14 = *(v0 + 520);
  v15 = *(v0 + 496);
  v16 = *(v0 + 472);
  v16->super.isa = v11.super.isa;
  v16[1].super.isa = v2.super.isa;

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_249CF6518()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 664) = v2;
  if (v2)
  {
    v3 = sub_249CF6C30;
  }

  else
  {
    v3 = sub_249CF6628;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_249CF6628()
{
  v1 = *(v0 + 648);

  v2.super.isa = *(v0 + 464);
  v3 = *(v0 + 624);
  v4 = *(v0 + 616);
  v13 = *(v0 + 552);
  v14 = *(v0 + 672);
  v15 = *(v0 + 568);
  v16 = *(v0 + 584);
  v17 = *(v0 + 592);
  isa = FolderIconFetcher.addImage(overlayImage:to:)(v2, v4).super.isa;

  v6 = *(v0 + 544);
  v7 = *(v0 + 536);
  v8 = *(v0 + 520);
  v9 = *(v0 + 496);
  v10 = *(v0 + 472);
  *v10 = isa;
  v10[1] = v2.super.isa;

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_249CF6728()
{
  v1 = *(v0 + 600);
  v2 = *(v0 + 552);
  v3 = *(v0 + 544);
  swift_willThrow();
  swift_unknownObjectRelease();

  v4 = sub_249D0494C();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  sub_249CE9184(v3, &unk_27EF195E0, &qword_249D074F8);
  v5 = *(v0 + 592);
  v6 = *(v0 + 568);
  v7 = *(v0 + 672);
  *(v0 + 400) = *(v0 + 552);
  *(v0 + 416) = v7;
  *(v0 + 424) = v6;
  *(v0 + 432) = *(v0 + 576);
  *(v0 + 448) = v5;
  v8 = swift_task_alloc();
  *(v0 + 608) = v8;
  *v8 = v0;
  v8[1] = sub_249CF5900;

  return sub_249CF76A4();
}

uint64_t sub_249CF6870()
{
  v1 = *(v0 + 640);
  v2 = *(v0 + 632);
  v3 = *(v0 + 552);
  swift_willThrow();

  swift_unknownObjectRelease();
  v4 = *(v0 + 552);
  *(v0 + 648) = 0;
  v5 = [v4 fpfs_fpItem];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 fp_appContainerBundleIdentifier];

    if (v7)
    {
      sub_249D04A4C();

      if (sub_249D04A7C() < 1)
      {
      }

      else
      {
        if (*(v0 + 672))
        {

LABEL_11:
          v17 = *(v0 + 624);
          v18 = *(v0 + 552);
          v20 = *(v0 + 488);
          v19 = *(v0 + 496);
          v21 = *(v0 + 480);
          v22 = objc_opt_self();
          v23 = v17;
          v24 = [v22 sharedGenerator];
          v25 = [v24 thumbnailGenerator];

          v26 = [objc_allocWithZone(DOCRegularNodeThumbnailRequest) initWithNode:v18 descriptor:v23 thumbnailGenerator:v25];
          *(v0 + 656) = v26;

          swift_unknownObjectRelease();
          [v26 setOnlyCallbackOnOverlayImage_];
          *(v0 + 80) = v0;
          *(v0 + 120) = v0 + 464;
          *(v0 + 88) = sub_249CF6518;
          swift_continuation_init();
          *(v0 + 328) = v21;
          boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 304));
          sub_249CE6CC8(0, &qword_27EF19930, 0x277D755B8);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF195F0, &qword_249D07508);
          sub_249D04AEC();
          (*(v20 + 32))(boxed_opaque_existential_0, v19, v21);
          *(v0 + 272) = MEMORY[0x277D85DD0];
          *(v0 + 280) = 1107296256;
          *(v0 + 288) = sub_249CF809C;
          *(v0 + 296) = &block_descriptor_4;
          [v26 generateThumbnailWithCompletionHandler_];
          (*(v20 + 8))(boxed_opaque_existential_0, v21);

          return MEMORY[0x282200938](v0 + 80);
        }

        v8 = *(v0 + 560);

        if (!v8)
        {
          goto LABEL_11;
        }
      }
    }
  }

  v9 = *(v0 + 552);
  swift_unknownObjectRelease();

  v10 = *(v0 + 544);
  v11 = *(v0 + 536);
  v12 = *(v0 + 520);
  v13 = *(v0 + 496);
  v14 = *(v0 + 472);
  *v14 = *(v0 + 616);
  v14[1] = 0;

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_249CF6C30()
{
  v1 = v0[83];
  v2 = v0[82];
  v3 = v0[81];
  v4 = v0[78];
  swift_willThrow();

  v5 = v0[68];
  v6 = v0[67];
  v7 = v0[65];
  v8 = v0[62];
  v9 = v0[59];
  *v9 = v0[77];
  v9[1] = 0;

  v10 = v0[1];

  return v10();
}

uint64_t sub_249CF6D00()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 24);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  if (*(v0 + 16) != 1)
  {
    if (!v1)
    {
      return sub_249CF6EDC();
    }

    v15 = *(v0 + 24);
    v8 = [*v0 iconsFromIconPackage];
    if (!v8)
    {
      return sub_249CF6EDC();
    }

    v9 = v8;
    sub_249CE6CC8(0, &qword_27EF19678, 0x277D1B1A8);
    v10 = sub_249D04AAC();

    if (v10 >> 62)
    {
      if (sub_249D04CEC() < 3)
      {
        goto LABEL_9;
      }
    }

    else if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) < 3)
    {
LABEL_9:

      return sub_249CF6EDC();
    }

    if (v2 < 3)
    {
      v11 = qword_249D07678[v2];
      if ((v10 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x24C1FED90](v11, v10);
        goto LABEL_17;
      }

      if (v11 < *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v12 = *(v10 + 8 * v11 + 32);
LABEL_17:
        v13 = v12;

        return v13;
      }

      __break(1u);
    }

    type metadata accessor for FolderAnimationAsset(0);
    result = sub_249D04D4C();
    __break(1u);
    return result;
  }

  if (!v1)
  {
    return sub_249CF6EDC();
  }

  v14 = *(v0 + 24);
  v6 = [objc_msgSend(*v0 resolvedNode)];
  swift_unknownObjectRelease();
  result = v6;
  if (!v6)
  {
    return sub_249CF6EDC();
  }

  return result;
}

uint64_t sub_249CF6EDC()
{
  v1 = sub_249D049AC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20]();
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 16) == 1)
  {
    goto LABEL_7;
  }

  if (!*v0)
  {
    goto LABEL_7;
  }

  v6 = *(v0 + 8);
  v7 = [*v0 iconsFromIconPackage];
  if (!v7)
  {
    goto LABEL_7;
  }

  v8 = v7;
  sub_249CE6CC8(0, &qword_27EF19678, 0x277D1B1A8);
  v9 = sub_249D04AAC();

  if (v9 >> 62)
  {
    if (sub_249D04CEC() < 3)
    {
      goto LABEL_6;
    }
  }

  else if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) < 3)
  {
LABEL_6:

LABEL_7:
    sub_249D0499C();
    sub_249D0497C();
    (*(v2 + 8))(v5, v1);
    v10 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
    v11 = sub_249D04A3C();

    v12 = [v10 initWithType_];

    return v12;
  }

  if (v6 < 3)
  {
    v14 = qword_249D07678[v6];
    if ((v9 & 0xC000000000000001) != 0)
    {
      v15 = MEMORY[0x24C1FED90](v14, v9);
      goto LABEL_14;
    }

    if (v14 < *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v15 = *(v9 + 8 * v14 + 32);
LABEL_14:
      v12 = v15;

      return v12;
    }

    __break(1u);
  }

  type metadata accessor for FolderAnimationAsset(0);
  v16[1] = v6;
  result = sub_249D04D4C();
  __break(1u);
  return result;
}

uint64_t sub_249CF7114()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 24);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  if (*(v0 + 16) != 1)
  {
    if (!v1)
    {
      return sub_249CF6EDC();
    }

    v15 = *(v0 + 24);
    v8 = [*v0 iconsFromIconPackage];
    if (!v8)
    {
      return sub_249CF6EDC();
    }

    v9 = v8;
    sub_249CE6CC8(0, &qword_27EF19678, 0x277D1B1A8);
    v10 = sub_249D04AAC();

    if (v10 >> 62)
    {
      if (sub_249D04CEC() < 3)
      {
        goto LABEL_9;
      }
    }

    else if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) < 3)
    {
LABEL_9:

      return sub_249CF6EDC();
    }

    if (v2 < 3)
    {
      v11 = qword_249D07678[v2];
      if ((v10 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x24C1FED90](v11, v10);
        goto LABEL_17;
      }

      if (v11 < *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v12 = *(v10 + 8 * v11 + 32);
LABEL_17:
        v13 = v12;

        return v13;
      }

      __break(1u);
    }

    type metadata accessor for FolderAnimationAsset(0);
    result = sub_249D04D4C();
    __break(1u);
    return result;
  }

  if (!v1)
  {
    return sub_249CF6EDC();
  }

  v14 = *(v0 + 24);
  v6 = [objc_msgSend(*v0 resolvedNode)];
  swift_unknownObjectRelease();
  result = v6;
  if (!v6)
  {
    return sub_249CF6EDC();
  }

  return result;
}

UIImage_optional __swiftcall FolderIconFetcher.fetchAvailableImage()()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = *(v0 + 3);
  v5 = *(v0 + 4);
  v6 = *(v0 + 5);
  v7 = v0[6];
  v8 = objc_allocWithZone(MEMORY[0x277D1B1C8]);
  v9 = v7;
  v10 = [v8 initWithSize:v4 scale:{v5, v6}];
  v11 = v10;
  if (v7)
  {
    [v10 setTintColor_];
  }

  v12 = sub_249CF6D00();
  v13 = [v12 imageForDescriptor_];
  v14 = v13;
  if (v13)
  {
    v15 = v13;
    if (![v15 placeholder])
    {

      goto LABEL_11;
    }

    v16 = sub_249CF7114();
    v17 = v11;
    v14 = [v16 imageForDescriptor_];

    if (v14)
    {
      v18 = v14;
      if ([v18 placeholder])
      {
        v19 = v17;
        v14 = [v16 prepareImageForDescriptor_];

        goto LABEL_11;
      }
    }
  }

LABEL_11:
  sub_249CE6CC8(0, &qword_27EF19930, 0x277D755B8);
  v20 = sub_249CE6D10(v14, v11);

  v22 = v20;
  result.value.super.isa = v22;
  result.is_nil = v21;
  return result;
}

void sub_249CF74F8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF195E0, &qword_249D074F8) - 8) + 64);
  v7 = (MEMORY[0x28223BE20])();
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v15 - v10;
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v15[1] = a3;
    v12 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF195D8, &qword_249D074F0);
    sub_249D04AFC();
  }

  else
  {
    if (a2)
    {
      sub_249D0493C();
      v13 = sub_249D0494C();
      (*(*(v13 - 8) + 56))(v9, 0, 1, v13);
    }

    else
    {
      v14 = sub_249D0494C();
      (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
    }

    sub_249CF9254(v9, v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF195D8, &qword_249D074F0);
    sub_249D04B0C();
  }
}

uint64_t sub_249CF76A4()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF19680, &qword_249D07650);
  *(v1 + 288) = v2;
  v3 = *(v2 - 8);
  *(v1 + 296) = v3;
  v4 = *(v3 + 64) + 15;
  *(v1 + 304) = swift_task_alloc();
  v5 = *v0;
  *(v1 + 432) = *(v0 + 16);
  v6 = *(v0 + 24);
  *(v1 + 312) = v5;
  *(v1 + 328) = v6;
  *(v1 + 344) = *(v0 + 5);
  *(v1 + 352) = *(v0 + 6);

  return MEMORY[0x2822009F8](sub_249CF7794, 0, 0);
}

uint64_t sub_249CF7794()
{
  v1 = *(v0 + 352);
  v3 = *(v0 + 336);
  v2 = *(v0 + 344);
  v4 = *(v0 + 328);
  v5 = objc_allocWithZone(MEMORY[0x277D1B1C8]);
  v6 = v1;
  v7 = [v5 initWithSize:v4 scale:{v3, v2}];
  v8 = v7;
  *(v0 + 360) = v7;
  if (v1)
  {
    [v7 setTintColor_];
  }

  v18 = *(v0 + 312);
  v10 = *(v0 + 296);
  v9 = *(v0 + 304);
  v11 = *(v0 + 288);
  v19 = *(v0 + 432);
  v20 = *(v0 + 328);
  v21 = *(v0 + 344);
  v22 = *(v0 + 352);
  v12 = sub_249CF6D00();
  *(v0 + 368) = v12;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 272;
  *(v0 + 24) = sub_249CF7A1C;
  swift_continuation_init();
  *(v0 + 200) = v11;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 176));
  v14 = v12;
  *(v0 + 376) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF19688, &qword_249D07658);
  sub_249D04AEC();
  v15 = *(v10 + 32);
  *(v0 + 384) = v15;
  *(v0 + 392) = (v10 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v15(boxed_opaque_existential_0, v9, v11);
  *(v0 + 144) = MEMORY[0x277D85DD0];
  *(v0 + 152) = 1107296256;
  *(v0 + 160) = sub_249CF8798;
  *(v0 + 168) = &block_descriptor_54;
  [v14 getImageForImageDescriptor:v8 completion:?];
  v16 = *(v10 + 8);
  *(v0 + 400) = v16;
  *(v0 + 408) = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v16(boxed_opaque_existential_0, v11);

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_249CF7A1C()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_249CF7AFC, 0, 0);
}

uint64_t sub_249CF7AFC()
{
  v1 = *(v0 + 368);
  v2 = *(v0 + 272);
  *(v0 + 416) = v2;
  v3 = v2;

  if (v2)
  {
    v4 = *(v0 + 368);
    v5 = *(v0 + 416);
    if ([v3 placeholder])
    {
      v6 = *(v0 + 360);
      v7 = [v4 prepareImageForDescriptor_];

      v2 = v7;
    }

    else
    {

      v7 = v3;
    }

    v15 = *(v0 + 360);
    sub_249CE6CC8(0, &qword_27EF19930, 0x277D755B8);
    v16 = v7;
    v17 = sub_249CE6D10(v2, v15);
    v18 = *(v0 + 360);
    if (v17)
    {
      v19 = v17;
    }

    else
    {
      v19 = [objc_allocWithZone(MEMORY[0x277D755B8]) init];
    }

    v20 = *(v0 + 304);

    v21 = *(v0 + 8);

    return v21(v19);
  }

  else
  {
    v26 = *(v0 + 400);
    v27 = *(v0 + 408);
    v23 = *(v0 + 384);
    v24 = *(v0 + 392);
    v9 = *(v0 + 368);
    v8 = *(v0 + 376);
    v25 = *(v0 + 360);
    v28 = *(v0 + 312);
    v10 = *(v0 + 304);
    v11 = *(v0 + 288);
    v29 = *(v0 + 432);
    v30 = *(v0 + 328);
    v31 = *(v0 + 344);
    v32 = *(v0 + 352);
    v12 = sub_249CF6EDC();
    *(v0 + 424) = v12;

    *(v0 + 80) = v0;
    *(v0 + 120) = v0 + 280;
    *(v0 + 88) = sub_249CF7E38;
    swift_continuation_init();
    *(v0 + 264) = v11;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 240));
    v14 = v12;
    sub_249D04AEC();
    v23(boxed_opaque_existential_0, v10, v11);
    *(v0 + 208) = MEMORY[0x277D85DD0];
    *(v0 + 216) = 1107296256;
    *(v0 + 224) = sub_249CF8798;
    *(v0 + 232) = &block_descriptor_57;
    [v14 getImageForImageDescriptor:v25 completion:v0 + 208];
    v26(boxed_opaque_existential_0, v11);

    return MEMORY[0x282200938](v0 + 80);
  }
}

uint64_t sub_249CF7E38()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_249CF7F18, 0, 0);
}

uint64_t sub_249CF7F18()
{
  v1 = *(v0 + 280);

  if (v1)
  {
    v2 = *(v0 + 424);
    v3 = *(v0 + 416);
    v4 = v1;
    if ([v4 placeholder])
    {
      v5 = *(v0 + 360);
      v6 = [v2 prepareImageForDescriptor_];
    }

    else
    {

      v6 = v1;
    }
  }

  else
  {
    v6 = 0;
    v2 = *(v0 + 424);
  }

  v7 = *(v0 + 360);
  sub_249CE6CC8(0, &qword_27EF19930, 0x277D755B8);
  v8 = v6;
  v9 = sub_249CE6D10(v6, v7);
  v10 = *(v0 + 360);
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = [objc_allocWithZone(MEMORY[0x277D755B8]) init];
  }

  v12 = *(v0 + 304);

  v13 = *(v0 + 8);

  return v13(v11);
}

void sub_249CF809C(uint64_t a1, void *a2, void *a3)
{
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF195D0, &qword_249D074E8);
    sub_249D04AFC();
  }

  else if (a2)
  {
    v6 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF195D0, &qword_249D074E8);
    sub_249D04B0C();
  }

  else
  {
    __break(1u);
  }
}

UIImage __swiftcall FolderIconFetcher.addImage(overlayImage:to:)(UIImage overlayImage, UIImage to)
{
  v5 = v2[2];
  v23 = v2[1];
  v24 = v5;
  v22 = *v2;
  v25 = *(v2 + 6);
  v6 = v5;
  v7 = [objc_allocWithZone(DOCThumbnailDescriptor) initWithSize:1 scale:0 style:0 isFolded:1 isInteractive:*(&v23 + 1) isFolder:v5];
  v8 = [objc_allocWithZone(MEMORY[0x277D75568]) init];
  [v8 setScale_];
  v9 = [objc_allocWithZone(MEMORY[0x277D75560]) initWithSize:v8 format:{*(&v23 + 1), *&v6}];
  v10 = [objc_opt_self() folderIconForDescriptor_];
  v11 = swift_allocObject();
  v12 = v2[1];
  *(v11 + 16) = *v2;
  *(v11 + 32) = v12;
  *(v11 + 48) = v2[2];
  *(v11 + 64) = *(v2 + 6);
  *(v11 + 72) = to;
  *(v11 + 80) = v10;
  *(v11 + 88) = overlayImage;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_249CF92C4;
  *(v13 + 24) = v11;
  aBlock[4] = sub_249CF92D4;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_249CF874C;
  aBlock[3] = &block_descriptor_13;
  v14 = _Block_copy(aBlock);
  sub_249CF9314(&v22, v20);
  v15 = to.super.isa;
  v16 = v10;
  v17 = overlayImage.super.isa;

  v18 = [v9 imageWithActions_];

  _Block_release(v14);
  LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

  if ((v16 & 1) == 0)
  {
    return v18;
  }

  __break(1u);
  return result;
}

uint64_t FolderIconFetcher.fetchImageWithOverlays()()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  *(v1 + 16) = *v0;
  *(v1 + 32) = v2;
  *(v1 + 40) = *(v0 + 24);
  *(v1 + 56) = v3;
  *(v1 + 64) = v4;
  v5 = swift_task_alloc();
  *(v1 + 88) = v5;
  *v5 = v1;
  v5[1] = sub_249CF84AC;

  return FolderIconFetcher.fetchImageAndOverlay()(v1 + 72);
}

uint64_t sub_249CF84AC()
{
  v2 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_249CF8628;
  }

  else
  {
    v3 = sub_249CF85C0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_249CF85C0()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 8);

  return v2(v1);
}

void sub_249CF8640(void *a1, uint64_t a2, id a3, void *a4, void *a5)
{
  [a3 drawInRect_];
  c = [a1 CGContext];
  CGContextSaveGState(c);
  UIRectCenteredRect();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  [a4 bottomInset];
  [a5 drawInRect_];
  CGContextRestoreGState(c);
}

void sub_249CF874C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v2();
}

uint64_t sub_249CF8798(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v3 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF19680, &qword_249D07650);
  return sub_249D04B0C();
}

id DOCFolderIcon.init(node:size:scale:)(uint64_t a1, double a2, double a3, double a4)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNode:a1 size:a2 scale:{a3, a4}];
  swift_unknownObjectRelease();
  return v4;
}

{
  v5 = v4 + OBJC_IVAR___DOCFolderIcon_fetcher;
  *v5 = a1;
  *(v5 + 8) = 0;
  *(v5 + 16) = 1;
  *(v5 + 24) = a2;
  *(v5 + 32) = a3;
  *(v5 + 40) = a4;
  *(v5 + 48) = 0;
  v7.super_class = DOCFolderIcon;
  return objc_msgSendSuper2(&v7, sel_init);
}

UIImage_optional __swiftcall DOCFolderIcon.imageWithMinimalIO()()
{
  v5 = *(v0 + OBJC_IVAR___DOCFolderIcon_fetcher);
  v6 = *(v0 + OBJC_IVAR___DOCFolderIcon_fetcher + 16);
  v7 = *(v0 + OBJC_IVAR___DOCFolderIcon_fetcher + 24);
  v8 = *(v0 + OBJC_IVAR___DOCFolderIcon_fetcher + 40);
  v1 = *(v0 + OBJC_IVAR___DOCFolderIcon_fetcher + 48);
  swift_unknownObjectRetain();
  v2 = FolderIconFetcher.fetchAvailableImage()();

  swift_unknownObjectRelease();
  v4 = v2;
  result.value.super.isa = v4;
  result.is_nil = v3;
  return result;
}

uint64_t sub_249CF8A88()
{
  v1 = *(v0 + 88) + OBJC_IVAR___DOCFolderIcon_fetcher;
  v2 = *(v1 + 16);
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  v5 = *(v1 + 24);
  *(v0 + 16) = *v1;
  *(v0 + 32) = v2;
  *(v0 + 40) = v5;
  *(v0 + 56) = v3;
  *(v0 + 64) = v4;
  v6 = swift_task_alloc();
  *(v0 + 96) = v6;
  *v6 = v0;
  v6[1] = sub_249CF8B58;

  return FolderIconFetcher.fetchImageAndOverlay()(v0 + 72);
}

uint64_t sub_249CF8B58()
{
  v2 = *(*v1 + 96);
  v5 = *v1;

  if (v0)
  {

    v3 = sub_249CF8CD4;
  }

  else
  {
    v3 = sub_249CF8C70;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_249CF8C70()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_249CF8E60(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_249CF8F08;

  return DOCFolderIcon.fetchImage()();
}

uint64_t sub_249CF8F08(void *a1)
{
  v3 = *v1;
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  v6 = *(*v1 + 16);
  v7 = *v1;

  if (v5)
  {
    v8 = *(v3 + 24);
    (v8)[2](v8, a1);

    _Block_release(v8);
  }

  else
  {
  }

  v9 = *(v7 + 8);

  return v9();
}

void __swiftcall DOCFolderIcon.init()(DOCFolderIcon *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_249CF91AC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_249CF9254(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF195E0, &qword_249D074F8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_249CF92D4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for FolderAssetType(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for FolderAssetType(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_249CF93B0(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_249CF93D0(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t sub_249CF9400(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_249CF9448(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_249CF94B0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_249CF950C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_249CF9590()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_249CE6A30;

  return sub_249CF8E60(v2, v3);
}

uint64_t sub_249CF963C(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_249CE6A30;

  return v7();
}

uint64_t sub_249CF9724()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_249CE6A30;

  return sub_249CF963C(v2, v3, v5);
}

uint64_t sub_249CF97E4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_249CE6A34;

  return v8();
}

uint64_t objectdestroy_32Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_249CF990C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_249CE6A30;

  return sub_249CF97E4(a1, v4, v5, v7);
}

uint64_t sub_249CF99D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF19670, &qword_249D07600);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v25 - v11;
  sub_249CF9CC4(a3, v25 - v11);
  v13 = sub_249D04B6C();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_249CE9184(v12, &qword_27EF19670, &qword_249D07600);
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

  sub_249D04B5C();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = sub_249D04ADC();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = sub_249D04A5C() + 32;
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

    sub_249CE9184(a3, &qword_27EF19670, &qword_249D07600);

    return v23;
  }

LABEL_8:
  sub_249CE9184(a3, &qword_27EF19670, &qword_249D07600);
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

uint64_t sub_249CF9CC4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF19670, &qword_249D07600);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_249CF9D34(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_249CE6A30;

  return sub_249CEAABC(a1, v5);
}

uint64_t sub_249CF9DEC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_249CE6A34;

  return sub_249CEAABC(a1, v5);
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_249CF9EE8()
{
  v2 = *(v0 + 2);
  v3 = *(v0 + 3);
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_249CE6A34;

  return sub_249CF4FF8(v4);
}

id UITraitCollection._ifColorForIconFolderTint.getter()
{
  sub_249CFA0E0();
  sub_249D04C2C();
  if (!v11)
  {
    return 0;
  }

  v0 = [v11 tintColor];

  if (!v0)
  {
    return 0;
  }

  [v0 red];
  v2 = v1;
  [v0 green];
  v4 = v3;
  [v0 blue];
  v6 = v5;
  [v0 alpha];
  GenericRGB = CGColorCreateGenericRGB(v2, v4, v6, v7);
  v9 = [objc_allocWithZone(MEMORY[0x277D1B150]) initWithCGColor_];

  return v9;
}

unint64_t sub_249CFA0E0()
{
  result = qword_27EF196A0;
  if (!qword_27EF196A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF196A0);
  }

  return result;
}

__n128 ImageOptions.init(size:scale:isFolded:folderTintComponents:)@<Q0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>)
{
  v6 = *(a2 + 32);
  *a3 = a4;
  *(a3 + 8) = a5;
  *(a3 + 16) = a6;
  *(a3 + 24) = a1;
  result = *a2;
  v8 = *(a2 + 16);
  *(a3 + 32) = *a2;
  *(a3 + 48) = v8;
  *(a3 + 64) = v6;
  return result;
}

uint64_t sub_249CFA160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF19670, &qword_249D07600) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = v26 - v10;
  sub_249D03320(a3, v26 - v10, &qword_27EF19670, &qword_249D07600);
  v12 = sub_249D04B6C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_249CE9184(v11, &qword_27EF19670, &qword_249D07600);
  }

  else
  {
    sub_249D04B5C();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_249D04ADC();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_249D04A5C() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_249CE9184(a3, &qword_27EF19670, &qword_249D07600);

      return v24;
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

  sub_249CE9184(a3, &qword_27EF19670, &qword_249D07600);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_249CFA460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF19670, &qword_249D07600) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = v26 - v10;
  sub_249D03320(a3, v26 - v10, &qword_27EF19670, &qword_249D07600);
  v12 = sub_249D04B6C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_249CE9184(v11, &qword_27EF19670, &qword_249D07600);
  }

  else
  {
    sub_249D04B5C();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_249D04ADC();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_249D04A5C() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_249CE9184(a3, &qword_27EF19670, &qword_249D07600);

      return v24;
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

  sub_249CE9184(a3, &qword_27EF19670, &qword_249D07600);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

id ImageOptions.folderTintColor.getter()
{
  if (*(v0 + 64))
  {
    return 0;
  }

  else
  {
    return [objc_allocWithZone(MEMORY[0x277D1B150]) initWithRed:*(v0 + 32) green:*(v0 + 40) blue:*(v0 + 48) alpha:*(v0 + 56)];
  }
}

uint64_t sub_249CFA7BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  sub_249D04B2C();
  v5[5] = sub_249D04B1C();
  v7 = sub_249D04ADC();

  return MEMORY[0x2822009F8](sub_249CFA858, v7, v6);
}

uint64_t sub_249CFA858()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[2];
  v4 = v0[3];

  v4(v5);
  v6 = v0[1];

  return v6();
}

uint64_t sub_249CFA938()
{
  type metadata accessor for HomeScreenTintObserver();
  v0 = swift_allocObject();
  result = sub_249CFA974();
  qword_27EF19690 = v0;
  return result;
}

uint64_t sub_249CFA974()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 40) = MEMORY[0x277D84F90];
  *(v0 + 48) = 0;
  v1 = [objc_allocWithZone(MEMORY[0x277D66AB8]) init];
  *(v0 + 32) = v1;
  v2 = [v1 homeScreenIconStyleConfiguration];
  os_unfair_lock_lock((v0 + 16));

  *(v0 + 24) = v2;
  v3 = v2;
  os_unfair_lock_unlock((v0 + 16));
  v4 = *(v0 + 32);

  v5 = [v4 addHomeScreenIconStyleObserver_];

  v6 = *(v0 + 48);
  *(v0 + 48) = v5;
  swift_unknownObjectRelease();
  return v0;
}

void sub_249CFAA5C()
{
  v1 = sub_249D049FC();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  os_unfair_lock_lock((v0 + 16));
  sub_249D04B2C();
  sub_249D04B1C();
  sub_249D04ADC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = *(v0 + 24);

  os_unfair_lock_unlock((v0 + 16));
  v4 = v3;
  sub_249D04C0C();
  sub_249CFA0E0();
  sub_249D049EC();
  sub_249D04C1C();
}

uint64_t sub_249CFABBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  swift_beginAccess();
  v6 = *(v3 + 40);
  v8 = v6 + 2;
  v7 = v6[2];
  if (!v7)
  {
LABEL_5:
    v10 = *v8;
    v13 = *v8;
    goto LABEL_9;
  }

  v9 = 0;
  v10 = 0;
  while (1)
  {
    v11 = v6[v9 + 6];
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      break;
    }

    swift_unknownObjectRelease();
    ++v10;
    v9 += 3;
    if (v7 == v10)
    {
      goto LABEL_5;
    }
  }

  v13 = v10 + 1;
  if (__OFADD__(v10, 1))
  {
LABEL_33:
    __break(1u);
    return result;
  }

  v14 = *v8;
  if (v13 != *v8)
  {
    v29 = v5;
    while (v13 < v14)
    {
      v4 = &v6[v9];
      v19 = v6[v9 + 9];
      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        result = swift_unknownObjectRelease();
        if (v13 != v10)
        {
          if ((v10 & 0x8000000000000000) != 0)
          {
            goto LABEL_27;
          }

          if (v10 >= *v8)
          {
            goto LABEL_28;
          }

          if (v13 >= *v8)
          {
            goto LABEL_29;
          }

          v20 = &v6[3 * v10 + 4];
          v5 = v20[1];
          v32 = *v20;
          v21 = v20[2];
          v22 = v4[7];
          v23 = v6[v9 + 8];
          v8 = v4[9];

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v6 = sub_249D016D0(v6);
          }

          v24 = &v6[3 * v10];
          v4 = v24[5];
          v25 = v24[6];
          v24[4] = v22;
          v24[5] = v23;
          v24[6] = v8;

          if (v13 >= v6[2])
          {
            goto LABEL_30;
          }

          v26 = &v6[v9];
          v28 = v6[v9 + 8];
          v27 = v6[v9 + 9];
          v26[7] = v32;
          v26[8] = v5;
          v26[9] = v21;

          v5 = v29;
          *(v29 + 40) = v6;
        }

        ++v10;
      }

      ++v13;
      v8 = v6 + 2;
      v14 = v6[2];
      v9 += 3;
      if (v13 == v14)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

LABEL_8:
  if (v13 < v10)
  {
    __break(1u);
    goto LABEL_33;
  }

LABEL_9:
  sub_249D01EC8(v10, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF19988, &qword_249D080F8);
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v4 = swift_allocObject();
  v4[2] = a2;
  v4[3] = a3;
  v8 = *(v5 + 40);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + 40) = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_31:
    v8 = sub_249CFF1EC(0, v8[2] + 1, 1, v8);
    *(v5 + 40) = v8;
  }

  v17 = v8[2];
  v16 = v8[3];
  if (v17 >= v16 >> 1)
  {
    v8 = sub_249CFF1EC((v16 > 1), v17 + 1, 1, v8);
  }

  v8[2] = v17 + 1;
  v18 = &v8[3 * v17];
  v18[4] = sub_249D039CC;
  v18[5] = v4;
  v18[6] = v6;
  *(v5 + 40) = v8;
  return swift_endAccess();
}

uint64_t sub_249CFAED4()
{
  sub_249CE9184(v0 + 24, &qword_27EF19940, &qword_249D08050);

  v1 = *(v0 + 40);

  v2 = *(v0 + 48);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

id sub_249CFAF34()
{
  result = [objc_opt_self() defaultValue];
  if (result)
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      qword_27EF1A4E0 = result;
      return result;
    }

    result = swift_unknownObjectRelease();
  }

  qword_27EF1A4E0 = 0;
  return result;
}

void sub_249CFAFE0(uint64_t a1, SEL *a2, uint64_t *a3, void *a4)
{
  v6 = [objc_opt_self() *a2];
  v7 = sub_249D04A4C();
  v9 = v8;

  *a3 = v7;
  *a4 = v9;
}

id sub_249CFB050()
{
  result = [objc_opt_self() affectsColorAppearance];
  byte_27EF1A508 = result;
  return result;
}

uint64_t sub_249CFB084@<X0>(uint64_t *a1@<X8>)
{
  sub_249D04B2C();
  sub_249D04B1C();
  sub_249D04ADC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_27EF19400 != -1)
  {
    swift_once();
  }

  v2 = qword_27EF1A4E0;
  v3 = qword_27EF1A4E0;

  *a1 = v2;
  return result;
}

uint64_t sub_249CFB14C()
{
  sub_249D04B2C();
  sub_249D04B1C();
  sub_249D04ADC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_27EF19408 != -1)
  {
    swift_once();
  }

  v0 = qword_27EF1A4E8;

  return v0;
}

uint64_t sub_249CFB21C()
{
  sub_249D04B2C();
  sub_249D04B1C();
  sub_249D04ADC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_27EF19410 != -1)
  {
    swift_once();
  }

  v0 = qword_27EF1A4F8;

  return v0;
}

uint64_t sub_249CFB2EC()
{
  sub_249D04B2C();
  sub_249D04B1C();
  sub_249D04ADC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_27EF19418 != -1)
  {
    swift_once();
  }

  v0 = byte_27EF1A508;

  return v0;
}

Swift::Bool __swiftcall UITraitCollection.traitCollectionTintEqual(_:)(UITraitCollection_optional a1)
{
  if (a1.value.super.isa)
  {
    isa = a1.value.super.isa;
    sub_249CFA0E0();
    v2 = isa;
    sub_249D04C2C();
    v3 = [v7 tintColor];

    sub_249D04C2C();
    v4 = [v7 tintColor];

    if (v3)
    {
      if (v4)
      {
        sub_249CE6CC8(0, &qword_27EF196A8, 0x277CF0BC8);
        v5 = sub_249D04C4C();
      }

      else
      {
        v5 = 0;
      }

      goto LABEL_12;
    }

    if (v4)
    {
      v5 = 0;
      v2 = v4;
      goto LABEL_12;
    }
  }

  else
  {
    sub_249CFA0E0();
    sub_249D04C2C();
    v2 = [v7 tintColor];

    if (v2)
    {
      v5 = 0;
LABEL_12:

      return v5 & 1;
    }
  }

  v5 = 1;
  return v5 & 1;
}

void UITraitCollection._ifColorForIconFolderTintComponents.getter(uint64_t a1@<X8>)
{
  sub_249CFA0E0();
  sub_249D04C2C();
  v2 = 0uLL;
  if (v14)
  {
    v3 = [v14 tintColor];

    if (v3)
    {
      [v3 red];
      v13 = v4;
      [v3 green];
      v12 = v5;
      [v3 blue];
      v10 = v6;
      [v3 alpha];
      v11 = v7;

      *&v2 = v13;
      v8 = 0;
      *(&v2 + 1) = v12;
      *&v9 = v10;
      *(&v9 + 1) = v11;
    }

    else
    {
      v8 = 1;
      v9 = 0uLL;
      v2 = 0uLL;
    }
  }

  else
  {
    v8 = 1;
    v9 = 0uLL;
  }

  *a1 = v2;
  *(a1 + 16) = v9;
  *(a1 + 32) = v8;
}

void ImageOptions.ImageOptionsFolderColorComponents.init(red:green:blue:alpha:)(double *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
  a1[3] = a5;
}

uint64_t UIViewController.forcefullyRegisterForIconStyleChanges(with:)(uint64_t a1, uint64_t a2)
{
  if (qword_27EF193F8 != -1)
  {
    swift_once();
  }

  sub_249CFAA5C();
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = a1;
  v6[4] = a2;

  sub_249CFABBC(v2, sub_249CFB8B8, v6);
}

void sub_249CFB748(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF19670, &qword_249D07600);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v16 - v7;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = sub_249D04B6C();
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
    sub_249D04B2C();
    v12 = v10;

    v13 = sub_249D04B1C();
    v14 = swift_allocObject();
    v15 = MEMORY[0x277D85700];
    v14[2] = v13;
    v14[3] = v15;
    v14[4] = v12;
    v14[5] = a2;
    v14[6] = a3;
    sub_249CFA160(0, 0, v8, &unk_249D08118, v14);
  }
}

uint64_t sub_249CFB8C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_249D04B2C();
  v6[5] = sub_249D04B1C();
  v8 = sub_249D04ADC();

  return MEMORY[0x2822009F8](sub_249CFB960, v8, v7);
}

uint64_t sub_249CFB960()
{
  v1 = v0[5];

  if (qword_27EF193F8 != -1)
  {
    swift_once();
  }

  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[2];
  sub_249CFAA5C();
  v3();
  v5 = v0[1];

  return v5();
}

uint64_t UIView.registerForHomeScreenTraitChanges(handler:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF196B0, &unk_249D076D0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_249D07690;
  v5 = sub_249CFA0E0();
  *(v4 + 32) = &type metadata for _DOCSBSUITraitHomeScreenIconStyle;
  *(v4 + 40) = v5;
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  sub_249CE6CC8(0, &qword_27EF196B8, 0x277D75D18);

  sub_249D04C3C();
  swift_unknownObjectRelease();
}

uint64_t sub_249CFBB10(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  sub_249D04B2C();
  sub_249D04B1C();
  sub_249D04ADC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  a3(a1, a2);
}

uint64_t ImageOptions.ImageOptionsFolderColorComponents.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x24C1FEE80](*&v1);
  if (v2 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v2;
  }

  MEMORY[0x24C1FEE80](*&v5);
  if (v3 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v3;
  }

  MEMORY[0x24C1FEE80](*&v6);
  if (v4 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v4;
  }

  return MEMORY[0x24C1FEE80](*&v7);
}

uint64_t ImageOptions.ImageOptionsFolderColorComponents.hashValue.getter()
{
  v2 = *v0;
  v3 = v0[1];
  sub_249D04D7C();
  ImageOptions.ImageOptionsFolderColorComponents.hash(into:)();
  return sub_249D04DAC();
}

uint64_t sub_249CFBCB0()
{
  v2 = *v0;
  v3 = v0[1];
  sub_249D04D7C();
  ImageOptions.ImageOptionsFolderColorComponents.hash(into:)();
  return sub_249D04DAC();
}

uint64_t sub_249CFBD00()
{
  v2 = *v0;
  v3 = v0[1];
  sub_249D04D7C();
  ImageOptions.ImageOptionsFolderColorComponents.hash(into:)();
  return sub_249D04DAC();
}

uint64_t ImageOptions.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v10 = *(v0 + 48);
  v6 = *(v0 + 64);
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x24C1FEE80](*&v1);
  if (v2 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v2;
  }

  MEMORY[0x24C1FEE80](*&v7);
  if (v3 == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = v3;
  }

  MEMORY[0x24C1FEE80](*&v8);
  sub_249D04D8C();
  return sub_249D01748();
}

uint64_t ImageOptions.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v9 = *(v0 + 32);
  v10 = *(v0 + 48);
  v11 = *(v0 + 64);
  sub_249D04D7C();
  if (v1 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v1;
  }

  MEMORY[0x24C1FEE80](*&v5);
  if (v2 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v2;
  }

  MEMORY[0x24C1FEE80](*&v6);
  if (v3 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v3;
  }

  MEMORY[0x24C1FEE80](*&v7);
  sub_249D04D8C();
  sub_249D01748();
  return sub_249D04DAC();
}

uint64_t sub_249CFBEBC()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v7 = *(v0 + 32);
  v8 = *(v0 + 48);
  v9 = *(v0 + 64);
  sub_249D04D7C();
  sub_249D017D0(v1, v2);
  v5 = 0.0;
  if (v3 != 0.0)
  {
    v5 = v3;
  }

  MEMORY[0x24C1FEE80](*&v5);
  sub_249D04D8C();
  sub_249D01748();
  return sub_249D04DAC();
}

uint64_t sub_249CFBF60()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = *(v0 + 40);
  v11 = *(v0 + 3);
  v12 = *(v0 + 4);
  v13 = *(v0 + 80);
  sub_249D04A6C();
  if (v3 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v3;
  }

  MEMORY[0x24C1FEE80](*&v7);
  if (v4 == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = v4;
  }

  MEMORY[0x24C1FEE80](*&v8);
  if (v5 == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = v5;
  }

  MEMORY[0x24C1FEE80](*&v9);
  sub_249D04D8C();
  return sub_249D01748();
}

uint64_t sub_249CFC010()
{
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = *(v0 + 80);
  v2 = *v0;
  v3 = v0[1];
  sub_249D04D7C();
  sub_249CFBF60();
  return sub_249D04DAC();
}

uint64_t sub_249CFC078()
{
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = *(v0 + 80);
  v2 = *v0;
  v3 = v0[1];
  sub_249D04D7C();
  sub_249CFBF60();
  return sub_249D04DAC();
}

uint64_t sub_249CFC0D8(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v4 || (v5 = sub_249D04D3C(), v6 = 0, (v5 & 1) != 0))
  {
    v7 = *(a1 + 64);
    v14[2] = *(a1 + 48);
    v14[3] = v7;
    v15 = *(a1 + 80);
    v8 = *(a1 + 32);
    v14[0] = *(a1 + 16);
    v14[1] = v8;
    v9 = *(a2 + 64);
    v12[2] = *(a2 + 48);
    v12[3] = v9;
    v13 = *(a2 + 80);
    v10 = *(a2 + 32);
    v12[0] = *(a2 + 16);
    v12[1] = v10;
    v6 = _s21DocumentManagerUICore12ImageOptionsV2eeoiySbAC_ACtFZ_0(v14, v12);
  }

  return v6 & 1;
}

uint64_t sub_249CFC170()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

BOOL sub_249CFC1B4(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    if (*(a2 + 16) == 1)
    {
      v2 = 2;
      if (*(a2 + 8) == 2)
      {
        v2 = 3;
      }
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = 1;
  }

  v3 = 2;
  if (*(a1 + 8) == 2)
  {
    v3 = 3;
  }

  if (*(a1 + 16) != 1)
  {
    v3 = 0;
  }

  if (*(a1 + 16))
  {
    v4 = v3;
  }

  else
  {
    v4 = 1;
  }

  return v2 >= v4;
}

BOOL sub_249CFC218(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16))
  {
    if (*(a1 + 16) == 1)
    {
      v2 = 2;
      if (*(a1 + 8) == 2)
      {
        v2 = 3;
      }
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = 1;
  }

  v3 = 2;
  if (*(a2 + 8) == 2)
  {
    v3 = 3;
  }

  if (*(a2 + 16) != 1)
  {
    v3 = 0;
  }

  if (*(a2 + 16))
  {
    v4 = v3;
  }

  else
  {
    v4 = 1;
  }

  return v2 >= v4;
}

BOOL sub_249CFC27C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    if (*(a2 + 16) == 1)
    {
      v2 = 2;
      if (*(a2 + 8) == 2)
      {
        v2 = 3;
      }
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = 1;
  }

  v3 = 2;
  if (*(a1 + 8) == 2)
  {
    v3 = 3;
  }

  if (*(a1 + 16) != 1)
  {
    v3 = 0;
  }

  if (*(a1 + 16))
  {
    v4 = v3;
  }

  else
  {
    v4 = 1;
  }

  return v2 < v4;
}

uint64_t sub_249CFC2E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF19918, &qword_249D07FE8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20]();
  v10 = &v21[-v9 - 8];
  v11 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF19670, &qword_249D07600) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  result = MEMORY[0x28223BE20]();
  v14 = &v21[-v13 - 8];
  if (a1 == 1)
  {
    v15 = sub_249D04B6C();
    (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
    (*(v7 + 16))(v10, a3, v6);
    v16 = (*(v7 + 80) + 120) & ~*(v7 + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = 0;
    *(v17 + 24) = 0;
    v18 = *(a2 + 48);
    *(v17 + 64) = *(a2 + 32);
    *(v17 + 80) = v18;
    *(v17 + 96) = *(a2 + 64);
    *(v17 + 112) = *(a2 + 80);
    v19 = *(a2 + 16);
    *(v17 + 32) = *a2;
    *(v17 + 48) = v19;
    (*(v7 + 32))(v17 + v16, v10, v6);
    sub_249CE9448(a2, v21);
    sub_249CFA160(0, 0, v14, &unk_249D08010, v17);
  }

  return result;
}

uint64_t sub_249CFC500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF19920, &qword_249D07FF0);
  v5[8] = v7;
  v8 = *(v7 - 8);
  v5[9] = v8;
  v9 = *(v8 + 64) + 15;
  v10 = swift_task_alloc();
  v11 = *(a4 + 80);
  v5[10] = v10;
  v5[11] = v11;
  v12 = *(MEMORY[0x277D857E0] + 4);
  v13 = swift_task_alloc();
  v5[12] = v13;
  *v13 = v5;
  v13[1] = sub_249CFC618;

  return MEMORY[0x282200460](v5 + 5, v11, &type metadata for IconImage);
}

uint64_t sub_249CFC618()
{
  v1 = *(*v0 + 96);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_249CFC714, 0, 0);
}

uint64_t sub_249CFC714()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = *(v0 + 49);
  if (swift_task_isCancelled())
  {
  }

  else
  {
    *(v0 + 16) = v2;
    v6 = *(v0 + 72);
    v5 = *(v0 + 80);
    v7 = *(v0 + 56);
    v8 = *(v0 + 64);
    v9 = 256;
    if (!v4)
    {
      v9 = 0;
    }

    *(v0 + 24) = v9 | v3;
    *(v0 + 32) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF19918, &qword_249D07FE8);
    sub_249D04B8C();
    (*(v6 + 8))(v5, v8);
  }

  v10 = *(v0 + 80);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_249CFC810(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_249CFC864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF19920, &qword_249D07FF0);
  v5[8] = v7;
  v8 = *(v7 - 8);
  v5[9] = v8;
  v9 = *(v8 + 64) + 15;
  v10 = swift_task_alloc();
  v11 = *(a4 + 80);
  v5[10] = v10;
  v5[11] = v11;
  v12 = *(MEMORY[0x277D857E0] + 4);
  v13 = swift_task_alloc();
  v5[12] = v13;
  *v13 = v5;
  v13[1] = sub_249CFC97C;

  return MEMORY[0x282200460](v5 + 5, v11, &type metadata for IconImage);
}

uint64_t sub_249CFC97C()
{
  v1 = *(*v0 + 96);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_249CFCA78, 0, 0);
}

uint64_t sub_249CFCA78()
{
  v1 = *(v0 + 88);
  if ((swift_task_isCancelled() & 1) == 0)
  {
    v2 = *(v0 + 40);
    *(v0 + 16) = v2;
    v4 = *(v0 + 72);
    v3 = *(v0 + 80);
    v5 = *(v0 + 56);
    v6 = *(v0 + 64);
    *(v0 + 49) = 1;
    *(v0 + 24) = *(v0 + 48) | 0x100;
    *(v0 + 32) = 0;
    v7 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF19918, &qword_249D07FE8);
    sub_249D04B8C();
    (*(v4 + 8))(v3, v6);
    sub_249D04B9C();
  }

  v8 = *(v0 + 80);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_249CFCB78()
{
  v1 = *v0;
  v2 = *(*v0 + 360);
  v9 = *v0;

  v3 = v1[42];
  v4 = v1[39];
  v5 = v1[36];
  v6 = v1[33];

  v7 = *(v9 + 8);

  return v7();
}

void NodeThumbnail.imageChanged(with:)(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = v1 + OBJC_IVAR____TtC21DocumentManagerUICore13NodeThumbnail_currentThumbnail;
  os_unfair_lock_lock((v1 + OBJC_IVAR____TtC21DocumentManagerUICore13NodeThumbnail_currentThumbnail));
  v23 = v3;
  sub_249CFE4DC((v5 + 8), v2, v3, v4);
  os_unfair_lock_unlock(v5);
  v6 = v1 + OBJC_IVAR____TtC21DocumentManagerUICore13NodeThumbnail_listeners;
  os_unfair_lock_lock((v1 + OBJC_IVAR____TtC21DocumentManagerUICore13NodeThumbnail_listeners));
  v7 = *(v6 + 8);
  if (v7 >> 62)
  {
    if (v7 < 0)
    {
      v12 = *(v6 + 8);
    }

    v8 = sub_249D04CEC();
    if (!v8)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v8)
    {
      goto LABEL_14;
    }
  }

  if (v8 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v8; ++i)
  {
    if ((v7 & 0xC000000000000001) != 0)
    {
      MEMORY[0x24C1FED90](i, v7);
    }

    else
    {
      v10 = *(v7 + 8 * i + 32);
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong thumbnailLoaded_];
      swift_unknownObjectRelease();
    }
  }

LABEL_14:
  os_unfair_lock_unlock(v6);
  if (v4)
  {
    if (v4 != 1 || v23 == 1)
    {
      return;
    }
  }

  else if ((v23 & 0x100) == 0)
  {
    return;
  }

  v13 = v1 + OBJC_IVAR____TtC21DocumentManagerUICore13NodeThumbnail_completionHandlers;
  os_unfair_lock_lock((v1 + OBJC_IVAR____TtC21DocumentManagerUICore13NodeThumbnail_completionHandlers));
  v14 = *(v13 + 8);
  v15 = *(v14 + 16);
  if (v15)
  {
    v16 = (v14 + 40);
    do
    {
      v18 = *(v16 - 1);
      v17 = *v16;

      v18(v19);

      v16 += 2;
      --v15;
    }

    while (v15);
    v20 = *(v13 + 8);
  }

  v21 = MEMORY[0x277D84F90];
  *(v13 + 8) = MEMORY[0x277D84F90];

  os_unfair_lock_unlock(v13);
  os_unfair_lock_lock(v6);
  v22 = *(v6 + 8);
  *(v6 + 8) = v21;

  os_unfair_lock_unlock(v6);
}

uint64_t sub_249CFCF08(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF198E8, &qword_249D07FC0);
  v5 = *(v4 - 8);
  v6 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v8 = &v14 - v7;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(v5 + 16))(v8, a1, v4);
  v9 = *(a2 + 232);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 232) = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = sub_249CFF468(0, v9[2] + 1, 1, v9);
    *(a2 + 232) = v9;
  }

  v12 = v9[2];
  v11 = v9[3];
  if (v12 >= v11 >> 1)
  {
    v9 = sub_249CFF468(v11 > 1, v12 + 1, 1, v9);
  }

  v9[2] = v12 + 1;
  result = (*(v5 + 32))(v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v12, v8, v4);
  *(a2 + 232) = v9;
  return result;
}

uint64_t sub_249CFD0B8()
{
  v1 = *(v0 + 232);
  v2 = MEMORY[0x277D84F90];
  *(v0 + 232) = MEMORY[0x277D84F90];

  swift_beginAccess();
  v3 = *(v0 + 136);
  *(v0 + 136) = v2;

  v4 = *(v0 + 216);
  if (v4)
  {
    v5 = objc_opt_self();
    v6 = v4;
    v7 = [v5 sharedGenerator];
    [v7 cancelRequest_];
  }

  sub_249CE9424(*(v0 + 112), *(v0 + 120), *(v0 + 128));
  v8 = *(v0 + 136);

  v10 = *(v0 + 216);
  v9 = *(v0 + 224);

  v11 = *(v0 + 232);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_249CFD1A0()
{
  v0 = sub_249CFD0B8();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_249CFD1C8()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  v4 = *(v0 + 3);
  v5 = *(v0 + 32);
  v10 = *(v0 + 5);
  v11 = *(v0 + 7);
  v12 = *(v0 + 72);
  sub_249D04C5C();
  if (v2 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v2;
  }

  MEMORY[0x24C1FEE80](*&v6);
  if (v3 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v3;
  }

  MEMORY[0x24C1FEE80](*&v7);
  if (v4 == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = v4;
  }

  MEMORY[0x24C1FEE80](*&v8);
  sub_249D04D8C();
  return sub_249D01748();
}

uint64_t sub_249CFD280()
{
  v4 = v0[2];
  *v5 = v0[3];
  *&v5[9] = *(v0 + 57);
  v2 = *v0;
  v3 = v0[1];
  sub_249D04D7C();
  sub_249CFD1C8();
  return sub_249D04DAC();
}

uint64_t sub_249CFD2DC()
{
  v4 = v0[2];
  *v5 = v0[3];
  *&v5[9] = *(v0 + 57);
  v2 = *v0;
  v3 = v0[1];
  sub_249D04D7C();
  sub_249CFD1C8();
  return sub_249D04DAC();
}

uint64_t sub_249CFD334(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 3);
  v4 = *(a1 + 7);
  v16 = *(a1 + 5);
  v17 = v4;
  v18 = *(a1 + 72);
  v14 = *(a1 + 1);
  v15 = v3;
  v5 = *a2;
  v6 = *(a2 + 3);
  v7 = *(a2 + 7);
  v21 = *(a2 + 5);
  v22 = v7;
  v23 = *(a2 + 72);
  v19 = *(a2 + 1);
  v20 = v6;
  sub_249CE6CC8(0, &qword_27EF198C0, 0x277D82BB8);
  if (sub_249D04C4C())
  {
    v12[2] = v16;
    v12[3] = v17;
    v13 = v18;
    v12[0] = v14;
    v12[1] = v15;
    v10[2] = v21;
    v10[3] = v22;
    v11 = v23;
    v10[0] = v19;
    v10[1] = v20;
    v8 = _s21DocumentManagerUICore12ImageOptionsV2eeoiySbAC_ACtFZ_0(v12, v10);
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_249CFD420(uint64_t a1, _OWORD *a2)
{
  v3 = v2;
  if (a1)
  {
    v6 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v20[0] = *v2;
    sub_249CEA19C(a1, a2, isUniquelyReferenced_nonNull_native);
    result = sub_249CE6DB8(a2);
    *v2 = *&v20[0];
  }

  else
  {
    v9 = *v2;
    v10 = sub_249CE8168(a2, sub_249CEA370, sub_249CE6DB8);
    if (v11)
    {
      v12 = v10;
      v13 = *v3;
      v14 = swift_isUniquelyReferenced_nonNull_native();
      v15 = *v3;
      v22 = *v3;
      if (!v14)
      {
        sub_249D01188();
        v15 = v22;
      }

      v16 = (*(v15 + 48) + 80 * v12);
      v20[0] = *v16;
      v18 = v16[2];
      v17 = v16[3];
      v19 = *(v16 + 57);
      v20[1] = v16[1];
      v20[2] = v18;
      *&v21[9] = v19;
      *v21 = v17;
      sub_249CE6DB8(v20);

      sub_249D00CCC(v12, v15, sub_249CEA370, sub_249CE6DB8);
      result = sub_249CE6DB8(a2);
      *v3 = v15;
    }

    else
    {

      return sub_249CE6DB8(a2);
    }
  }

  return result;
}

uint64_t sub_249CFD59C(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *(v3 + 40) = a2[1];
  v5 = a2[3];
  *(v3 + 56) = a2[2];
  *(v3 + 72) = v5;
  *(v3 + 328) = a1;
  *(v3 + 336) = v2;
  *(v3 + 88) = *(a2 + 64);
  *(v3 + 24) = v4;
  return MEMORY[0x2822009F8](sub_249CFD5DC, v2, 0);
}

uint64_t sub_249CFD5DC()
{
  v1 = *(v0 + 336);
  *(v0 + 16) = [*(v0 + 328) thumbnailIdentifier];
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16))
  {

    v3 = sub_249CE8168(v0 + 16, sub_249CE93BC, sub_249CE93F4);
    if (v4)
    {
      v5 = *(*(v2 + 56) + 8 * v3);
      *(v0 + 344) = v5;

      return MEMORY[0x2822009F8](sub_249CFD720, v5, 0);
    }

    sub_249CE93F4(v0 + 16);
  }

  else
  {
    sub_249CE93F4(v0 + 16);
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_249CFD720()
{
  v2 = v0[42];
  v1 = v0[43];
  swift_beginAccess();
  v0[44] = *(v1 + 136);

  return MEMORY[0x2822009F8](sub_249CFD7A8, v2, 0);
}

uint64_t sub_249CFD7A8()
{
  v23 = v0;
  v1 = *(v0 + 352);
  *&v21[0] = MEMORY[0x277D84F90];
  v2 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v1 >> 62)
  {
LABEL_25:
    v3 = sub_249D04CEC();
    v4 = *(v0 + 352);
  }

  else
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v4 = v1;
  }

  v5 = 0;
  v6 = v1 & 0xC000000000000001;
  v7 = v4 + 32;
  v1 = MEMORY[0x277D84F90];
  while (v3 != v5)
  {
    if (v6)
    {
      MEMORY[0x24C1FED90](v5, *(v0 + 352));
      v9 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_23;
      }
    }

    else
    {
      if (v5 >= *(v2 + 16))
      {
        goto LABEL_24;
      }

      v8 = *(v7 + 8 * v5);

      v9 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }
    }

    Strong = swift_unknownObjectWeakLoadStrong();

    ++v5;
    if (Strong)
    {
      MEMORY[0x24C1FEB80](v11);
      if (*((*&v21[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v21[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v12 = *((*&v21[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_249D04ABC();
      }

      sub_249D04ACC();
      v1 = *&v21[0];
      v5 = v9;
    }
  }

  v13 = *(v0 + 352);

  if (v1 >> 62)
  {
    v14 = sub_249D04CEC();
  }

  else
  {
    v14 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v15 = *(v0 + 344);
  if (v14)
  {
    sub_249CE93F4(v0 + 16);
  }

  else
  {
    v16 = *(v0 + 336);
    swift_beginAccess();
    sub_249CE93BC(v0 + 16, v0 + 176);
    sub_249CFFC00(v21, v0 + 16);
    swift_endAccess();

    sub_249CE93F4(v0 + 16);
    v17 = v22[0];
    *(v0 + 128) = v21[2];
    *(v0 + 144) = v17;
    *(v0 + 153) = *(v22 + 9);
    v18 = v21[1];
    *(v0 + 96) = v21[0];
    *(v0 + 112) = v18;
    sub_249CE93F4(v0 + 96);
  }

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_249CFDA00()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 120);
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 56);
  v6 = (v3 + 63) >> 6;
  v7 = *(v0 + 120);

  v9 = 0;
  while (v5)
  {
LABEL_11:
    v11 = (*(v2 + 48) + 80 * (__clz(__rbit64(v5)) | (v9 << 6)));
    v32[0] = *v11;
    v13 = v11[2];
    v12 = v11[3];
    v14 = *(v11 + 57);
    v32[1] = v11[1];
    v32[2] = v13;
    *&v33[9] = v14;
    *v33 = v12;
    v15 = sub_249CE93BC(v32, v30);
    v16 = MEMORY[0x24C1FF150](v15);
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    swift_beginAccess();
    v17 = *(v1 + 112);
    sub_249CE93BC(v32, v30);
    v18 = sub_249CE8168(v32, sub_249CE93BC, sub_249CE93F4);
    if (v19)
    {
      v20 = v18;
      v21 = *(v1 + 112);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v23 = *(v1 + 112);
      *(v1 + 112) = 0x8000000000000000;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_249D00FD8();
      }

      v24 = (*(v23 + 48) + 80 * v20);
      v30[0] = *v24;
      v26 = v24[2];
      v25 = v24[3];
      v27 = *(v24 + 57);
      v30[1] = v24[1];
      v30[2] = v26;
      *&v31[9] = v27;
      *v31 = v25;
      sub_249CE93F4(v30);
      v28 = *(*(v23 + 56) + 8 * v20);

      sub_249D00CCC(v20, v23, sub_249CE93BC, sub_249CE93F4);
      sub_249CE93F4(v32);
      *(v1 + 112) = v23;
    }

    else
    {
      sub_249CE93F4(v32);
    }

    v5 &= v5 - 1;
    swift_endAccess();
    objc_autoreleasePoolPop(v16);
    result = sub_249CE93F4(v32);
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      v29 = *(v1 + 120);
      *(v1 + 120) = MEMORY[0x277D84FA0];
    }

    v5 = *(v2 + 56 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_249CFDC90()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 120);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t NodeThumbnail.isLoading.getter()
{
  v1 = v0 + OBJC_IVAR____TtC21DocumentManagerUICore13NodeThumbnail_currentThumbnail;
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC21DocumentManagerUICore13NodeThumbnail_currentThumbnail));
  v3 = *(v1 + 8);
  v2 = *(v1 + 16);
  v4 = *(v1 + 24);
  sub_249CE395C(v3, v2, *(v1 + 24));
  os_unfair_lock_unlock(v1);
  if (v4)
  {
    if (v4 == 1)
    {
      sub_249CE3970(v3, v2, 1u);
      return v2 == 1;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    sub_249CE3970(v3, v2, 0);
    return (v2 & 0x100) == 0;
  }
}

BOOL NodeThumbnail.isRepresentativeIcon.getter()
{
  v1 = v0 + OBJC_IVAR____TtC21DocumentManagerUICore13NodeThumbnail_currentThumbnail;
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC21DocumentManagerUICore13NodeThumbnail_currentThumbnail));
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  sub_249CE395C(v2, v3, *(v1 + 24));
  os_unfair_lock_unlock(v1);
  sub_249CE3970(v2, v3, v4);
  return v4 == 1;
}

char *NodeThumbnail.__allocating_init(node:imageOptions:imageCache:)(void *a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = sub_249CE2E48(a1, a2);
  swift_unknownObjectRelease();

  return v6;
}

UIColor __swiftcall NodeThumbnail.averageColor(inRect:)(CGRect inRect)
{
  v1 = [objc_opt_self() whiteColor];

  return v1;
}

uint64_t NodeThumbnail.removeListener(_:)(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC21DocumentManagerUICore13NodeThumbnail_listeners;
  swift_unknownObjectRetain();
  os_unfair_lock_lock(v3);
  swift_unknownObjectRetain();
  v4 = sub_249D01F88((v3 + 8), a1);
  result = swift_unknownObjectRelease();
  v6 = *(v3 + 8);
  if (v6 >> 62)
  {
    if (v6 < 0)
    {
      v8 = *(v3 + 8);
    }

    result = sub_249D04CEC();
    v7 = result;
    if (result >= v4)
    {
      goto LABEL_3;
    }

LABEL_9:
    __break(1u);
    return result;
  }

  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v7 < v4)
  {
    goto LABEL_9;
  }

LABEL_3:
  sub_249D0237C(v4, v7);
  os_unfair_lock_unlock(v3);

  return swift_unknownObjectRelease();
}

BOOL NodeThumbnail.hasFinishedTryingToFetchCorrectThumbnail.getter()
{
  v1 = v0 + OBJC_IVAR____TtC21DocumentManagerUICore13NodeThumbnail_currentThumbnail;
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC21DocumentManagerUICore13NodeThumbnail_currentThumbnail));
  v3 = *(v1 + 8);
  v2 = *(v1 + 16);
  v4 = *(v1 + 24);
  sub_249CE395C(v3, v2, *(v1 + 24));
  os_unfair_lock_unlock(v1);
  if (v4)
  {
    if (v4 == 1)
    {
      sub_249CE3970(v3, v2, 1u);
      return v2 != 1;
    }

    else
    {
      sub_249CE3970(v3, v2, v4);
      return 0;
    }
  }

  else
  {
    v5 = (v2 >> 8) & 1;
    sub_249CE3970(v3, v2, 0);
  }

  return v5;
}

uint64_t NodeThumbnail.registerGenerationCompletionHandler(_:)(uint64_t a1, uint64_t a2)
{
  v5 = v2 + OBJC_IVAR____TtC21DocumentManagerUICore13NodeThumbnail_currentThumbnail;
  os_unfair_lock_lock((v2 + OBJC_IVAR____TtC21DocumentManagerUICore13NodeThumbnail_currentThumbnail));
  v7 = *(v5 + 8);
  v6 = *(v5 + 16);
  v8 = *(v5 + 24);
  sub_249CE395C(v7, v6, *(v5 + 24));
  os_unfair_lock_unlock(v5);
  if (v8 == 1)
  {
    sub_249CE3970(v7, v6, 1u);
    if (v6 != 1)
    {
      return 0;
    }
  }

  else if (v8)
  {
    sub_249CE3970(v7, v6, v8);
  }

  else
  {
    sub_249CE3970(v7, v6, 0);
    if ((v6 & 0x100) != 0)
    {
      return 0;
    }
  }

  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = v2 + OBJC_IVAR____TtC21DocumentManagerUICore13NodeThumbnail_completionHandlers;

  os_unfair_lock_lock(v11);
  v12 = *(v11 + 8);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v11 + 8) = v12;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = sub_249CFF334(0, v12[2] + 1, 1, v12);
    *(v11 + 8) = v12;
  }

  v15 = v12[2];
  v14 = v12[3];
  if (v15 >= v14 >> 1)
  {
    v12 = sub_249CFF334((v14 > 1), v15 + 1, 1, v12);
    *(v11 + 8) = v12;
  }

  v12[2] = v15 + 1;
  v16 = &v12[2 * v15];
  v16[4] = sub_249D02454;
  v16[5] = v10;
  os_unfair_lock_unlock(v11);

  return 1;
}

void *sub_249CFE4DC(void *result, void *a2, uint64_t a3, unsigned __int8 a4)
{
  v7 = *(result + 16);
  if (!a4)
  {
    v9 = 1;
    v10 = result[1];
    if (*(result + 16))
    {
      goto LABEL_8;
    }

LABEL_13:
    if (!v9)
    {
      return result;
    }

    goto LABEL_14;
  }

  v8 = 2;
  if (a3 == 2)
  {
    v8 = 3;
  }

  if (a4 == 1)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = result[1];
  if (!*(result + 16))
  {
    goto LABEL_13;
  }

LABEL_8:
  if (v7 == 1)
  {
    if (v10 == 2)
    {
      if (v9 != 3)
      {
        return result;
      }
    }

    else if (v9 < 2)
    {
      return result;
    }
  }

LABEL_14:
  v11 = result;
  sub_249CE3970(*result, v10, v7);
  *v11 = a2;
  v11[1] = a3;
  *(v11 + 16) = a4;
  return sub_249CE395C(a2, a3, a4);
}

id NodeThumbnail.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF19670, &qword_249D07600);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v16 - v4;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = *&v0[OBJC_IVAR____TtC21DocumentManagerUICore13NodeThumbnail_node];
    v9 = *&v0[OBJC_IVAR____TtC21DocumentManagerUICore13NodeThumbnail_options + 48];
    v19 = *&v0[OBJC_IVAR____TtC21DocumentManagerUICore13NodeThumbnail_options + 32];
    v20 = v9;
    v21 = v0[OBJC_IVAR____TtC21DocumentManagerUICore13NodeThumbnail_options + 64];
    v10 = *&v0[OBJC_IVAR____TtC21DocumentManagerUICore13NodeThumbnail_options + 16];
    v17 = *&v0[OBJC_IVAR____TtC21DocumentManagerUICore13NodeThumbnail_options];
    v18 = v10;
    v11 = sub_249D04B6C();
    (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
    v12 = swift_allocObject();
    *(v12 + 16) = 0;
    *(v12 + 24) = 0;
    *(v12 + 32) = v7;
    *(v12 + 40) = v8;
    v13 = v20;
    *(v12 + 80) = v19;
    *(v12 + 96) = v13;
    *(v12 + 112) = v21;
    v14 = v18;
    *(v12 + 48) = v17;
    *(v12 + 64) = v14;
    swift_unknownObjectRetain();
    sub_249CFA160(0, 0, v5, &unk_249D07700, v12);
  }

  v16.receiver = v0;
  v16.super_class = ObjectType;
  return objc_msgSendSuper2(&v16, sel_dealloc);
}

id NodeThumbnail.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t ImageCache.__allocating_init()()
{
  v0 = swift_allocObject();
  ImageCache.init()();
  return v0;
}

Swift::Void __swiftcall ImageCache.purge()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF19670, &qword_249D07600);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v13 - v4;
  v6 = sub_249D04B6C();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_249D04B2C();

  v7 = sub_249D04B1C();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = v1;
  sub_249CFA160(0, 0, v5, &unk_249D07710, v8);

  v11 = MEMORY[0x24C1FF150](v10);
  os_unfair_lock_lock((v1 + 16));
  v12 = *(v1 + 24);

  *(v1 + 24) = sub_249CE21E0(MEMORY[0x277D84F90]);
  os_unfair_lock_unlock((v1 + 16));
  objc_autoreleasePoolPop(v11);
}