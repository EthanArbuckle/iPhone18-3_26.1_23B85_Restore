void sub_229755CDC(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v9 = sub_22A4DD07C();
  v66 = *(v9 - 8);
  v67 = v9;
  v10 = *(v66 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v61[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v61[-v15];
  MEMORY[0x28223BE20](v14);
  v18 = &v61[-v17];
  if ((a3 & 0xC000000000000001) != 0)
  {
    v19 = sub_22A4DE0EC();
  }

  else
  {
    v19 = *(a3 + 16);
  }

  swift_beginAccess();
  v20 = *(v4 + 144);

  v21 = sub_22974C69C(a1, v20);

  if (v21)
  {
    if (!v19)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v21 = [a2 deviceFor_];
    if (!v19)
    {
LABEL_14:
      sub_229541CB0(ObjectType, &off_283CE36C8);
      v25 = a1;
      v26 = sub_22A4DD05C();
      v27 = sub_22A4DDCCC();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = v21;
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        *v29 = 138412290;
        *(v29 + 4) = v25;
        *v30 = v25;
        v31 = v25;
        _os_log_impl(&dword_229538000, v26, v27, "No longer monitoring nodeID: %@", v29, 0xCu);
        sub_22953EAE4(v30, &qword_27D87D7D0, &unk_22A578D90);
        MEMORY[0x22AAD4E50](v30, -1, -1);
        v32 = v29;
        v21 = v28;
        MEMORY[0x22AAD4E50](v32, -1, -1);
      }

      (*(v66 + 8))(v13, v67);
      [v21 removeDelegate_];
      swift_beginAccess();
      sub_2297FD4B4(v25);
      swift_endAccess();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      return;
    }

    swift_beginAccess();
    v22 = *(v4 + 144);
    if ((v22 & 0xC000000000000001) != 0)
    {
      if (v22 < 0)
      {
        v23 = *(v4 + 144);
      }

      else
      {
        v23 = v22 & 0xFFFFFFFFFFFFFF8;
      }

      swift_unknownObjectRetain_n();
      v24 = sub_22A4DE0EC();
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        return;
      }

      *(v4 + 144) = sub_22975DE14(v23, v24 + 1);
    }

    else
    {
      v33 = *(v4 + 144);
      swift_unknownObjectRetain_n();
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v68 = *(v4 + 144);
    sub_2295AB888(v21, a1, isUniquelyReferenced_nonNull_native);
    *(v4 + 144) = v68;
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v35 = *(v4 + 200);
    v36 = swift_getObjectType();
    v37 = (*(v35 + 88))(v4, v36, v35);
    swift_unknownObjectRelease();
    sub_229541CB0(ObjectType, &off_283CE36C8);
    v38 = a1;

    v39 = sub_22A4DD05C();
    v40 = sub_22A4DDCCC();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v63 = v42;
      v64 = swift_slowAlloc();
      v69[0] = v64;
      *v41 = 138412546;
      *(v41 + 4) = v38;
      *v42 = v38;
      *(v41 + 12) = 2080;
      v65 = v21;
      v62 = v40;
      sub_229562F68(0, &qword_27D87CF48, 0x277CD51C0);
      sub_22959E62C(&unk_27D87E450, &qword_27D87CF48, 0x277CD51C0);
      v43 = v38;
      v44 = sub_22A4DDB7C();
      v46 = sub_2295A3E30(v44, v45, v69);

      *(v41 + 14) = v46;
      v21 = v65;
      _os_log_impl(&dword_229538000, v39, v62, "Now monitoring nodeID: %@ for %s", v41, 0x16u);
      v47 = v63;
      sub_22953EAE4(v63, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v47, -1, -1);
      v48 = v64;
      __swift_destroy_boxed_opaque_existential_0(v64);
      MEMORY[0x22AAD4E50](v48, -1, -1);
      MEMORY[0x22AAD4E50](v41, -1, -1);
    }

    (*(v66 + 8))(v18, v67);
    v49 = sub_22975E184(a3, sub_229716310, sub_229715AD4);
    sub_22986A0C0(v49);

    v50 = sub_22A4DD81C();

    [v21 addDelegate:v4 queue:v37 interestedPathsForAttributes:v50 interestedPathsForEvents:0];
    swift_unknownObjectRelease();
  }

  else
  {
    sub_229541CB0(ObjectType, &off_283CE36C8);
    v51 = a1;

    v52 = sub_22A4DD05C();
    v53 = sub_22A4DDCEC();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v69[0] = v64;
      *v54 = 138412546;
      *(v54 + 4) = v51;
      *v55 = v51;
      *(v54 + 12) = 2080;
      v65 = v21;
      sub_229562F68(0, &qword_27D87CF48, 0x277CD51C0);
      sub_22959E62C(&unk_27D87E450, &qword_27D87CF48, 0x277CD51C0);
      v56 = v51;
      v57 = sub_22A4DDB7C();
      v59 = sub_2295A3E30(v57, v58, v69);

      *(v54 + 14) = v59;
      _os_log_impl(&dword_229538000, v52, v53, "No queue to monitor nodeID: %@ for %s", v54, 0x16u);
      sub_22953EAE4(v55, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v55, -1, -1);
      v60 = v64;
      __swift_destroy_boxed_opaque_existential_0(v64);
      MEMORY[0x22AAD4E50](v60, -1, -1);
      MEMORY[0x22AAD4E50](v54, -1, -1);
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }

    (*(v66 + 8))(v16, v67);
  }
}

void sub_2297564E4()
{
  swift_beginAccess();
  v1 = *(v0 + 208);
  v2 = v1 + 64;
  v3 = 1 << *(v1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = *(v0 + 208);

  v8 = 0;
  v54 = v1 + 64;
  v55 = v1;
  for (i = v6; ; v6 = i)
  {
    if (!v5)
    {
      do
      {
        v9 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_72;
        }

        if (v9 >= v6)
        {

          return;
        }

        v5 = *(v2 + 8 * v9);
        ++v8;
      }

      while (!v5);
      v8 = v9;
    }

    v10 = __clz(__rbit64(v5)) | (v8 << 6);
    v58 = *(*(v1 + 56) + v10);
    v60 = *(*(v1 + 48) + 8 * v10);
    v11 = [v60 actions];
    sub_229562F68(0, &qword_27D880928, off_278666018);
    v12 = sub_22A4DD83C();

    v61 = v12;
    if (v12 >> 62)
    {
      break;
    }

    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13)
    {
      goto LABEL_12;
    }

LABEL_65:

    if ((v58 & 1) == 0)
    {
      v48 = 1;
LABEL_67:
      swift_beginAccess();
      v49 = v60;
      v50 = *(v62 + 208);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v63 = *(v62 + 208);
      *(v62 + 208) = 0x8000000000000000;
      sub_2295ABA04(v48, v49, isUniquelyReferenced_nonNull_native);

      *(v62 + 208) = v63;
      swift_endAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v52 = *(v62 + 200);
        ObjectType = swift_getObjectType();
        (*(v52 + 40))(v49, v48, v62, ObjectType, v52);
        swift_unknownObjectRelease();
      }
    }

LABEL_4:
    v5 &= v5 - 1;
  }

  v13 = sub_22A4DE0EC();
  if (!v13)
  {
    goto LABEL_65;
  }

LABEL_12:
  v14 = 0;
  v59 = v13;
  while (1)
  {
    if ((v61 & 0xC000000000000001) != 0)
    {
      v16 = MEMORY[0x22AAD13F0](v14, v61);
    }

    else
    {
      if (v14 >= *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_74;
      }

      v16 = *(v61 + 32 + 8 * v14);
    }

    v17 = v16;
    if (__OFADD__(v14++, 1))
    {
      goto LABEL_73;
    }

    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v19 = [v17 type];
    if (v19 > 2)
    {
      break;
    }

    if (v19)
    {
      if (v19 != 1)
      {
        goto LABEL_60;
      }

      objc_opt_self();
      v27 = swift_dynamicCastObjCClass();
      if (!v27)
      {
LABEL_58:

        if ((v58 & 1) == 0)
        {
          goto LABEL_4;
        }

        goto LABEL_62;
      }

      sub_229756B74(v27);
    }

    else
    {
      objc_opt_self();
      v29 = swift_dynamicCastObjCClass();
      if (!v29)
      {
        goto LABEL_60;
      }

      v28 = sub_229763134(v29);
    }

    v15 = v28;

    if ((v15 & 1) == 0)
    {
      goto LABEL_61;
    }

LABEL_14:
    if (v14 == v13)
    {
      goto LABEL_65;
    }
  }

  if (v19 == 3)
  {
    objc_opt_self();
    v30 = swift_dynamicCastObjCClass();
    if (!v30)
    {
      goto LABEL_58;
    }

    v31 = v30;
    v32 = [v30 isNaturalLightingEnabled];
    v33 = [v31 lightProfile];
    if (!v33)
    {
      goto LABEL_60;
    }

    v34 = v33;
    v35 = v17;
    v36 = [v33 isNaturalLightingEnabled];

    v37 = v32 == v36;
LABEL_52:
    v13 = v59;
    if (!v37)
    {
      goto LABEL_61;
    }

    goto LABEL_14;
  }

  if (v19 == 4)
  {
    objc_opt_self();
    v38 = swift_dynamicCastObjCClass();
    if (!v38)
    {
      goto LABEL_58;
    }

    v39 = v38;
    v40 = [v38 targetSleepWakeState];
    v41 = [v39 accessory];
    if (!v41)
    {
LABEL_60:

LABEL_61:

      if ((v58 & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_62:
      v48 = 0;
      goto LABEL_67;
    }

    v42 = v41;
    v43 = v17;
    v44 = [v41 mediaProfile];

    v45 = [v44 mediaSession];
    if (!v45)
    {

      goto LABEL_61;
    }

    v46 = [v45 state];

    v47 = [v46 sleepWakeState];
    v37 = v40 == v47;
    goto LABEL_52;
  }

  if (v19 != 5)
  {
    goto LABEL_60;
  }

  objc_opt_self();
  v20 = swift_dynamicCastObjCClass();
  if (!v20)
  {
    goto LABEL_58;
  }

  v56 = v17;
  v21 = [v20 commands];
  sub_229562F68(0, &qword_27D880930, off_278666260);
  v22 = sub_22A4DD83C();

  if (v22 >> 62)
  {
    v23 = sub_22A4DE0EC();
  }

  else
  {
    v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v24 = 0;
  while (2)
  {
    if (v23 == v24)
    {

      v2 = v54;
      v1 = v55;
      v13 = v59;
      goto LABEL_14;
    }

    if ((v22 & 0xC000000000000001) != 0)
    {
      v26 = MEMORY[0x22AAD13F0](v24, v22);
      if (__OFADD__(v24, 1))
      {
        break;
      }

      goto LABEL_34;
    }

    if (v24 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_71;
    }

    v26 = *(v22 + 8 * v24 + 32);
    if (!__OFADD__(v24, 1))
    {
LABEL_34:
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v25 = sub_229758B54(v26);

      ++v24;
      if ((v25 & 1) == 0)
      {

        v2 = v54;
        v1 = v55;
        goto LABEL_61;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
}

void sub_229756B74(void *a1)
{
  ObjectType = swift_getObjectType();
  v2 = sub_22A4DD07C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v105 = &v103 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v103 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v103 - v11;
  MEMORY[0x28223BE20](v10);
  v106 = &v103 - v13;
  v118 = a1;
  v14 = [a1 mediaProfiles];
  v15 = sub_229562F68(0, &qword_27D880918, off_278666280);
  sub_22959E62C(&qword_27D880920, &qword_27D880918, off_278666280);
  v16 = sub_22A4DDB6C();

  v109 = v3;
  v110 = v2;
  v107 = v9;
  v104 = v12;
  v112 = v15;
  if ((v16 & 0xC000000000000001) != 0)
  {
    sub_22A4DE09C();
    sub_22A4DDBAC();
    v16 = v120[1];
    v17 = v120[2];
    v18 = v120[3];
    v19 = v120[4];
    v20 = v120[5];
  }

  else
  {
    v19 = 0;
    v21 = -1 << *(v16 + 32);
    v17 = v16 + 56;
    v18 = ~v21;
    v22 = -v21;
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    else
    {
      v23 = -1;
    }

    v20 = v23 & *(v16 + 56);
  }

  v111 = v18;
  v24 = (v18 + 64) >> 6;
  v113 = v16;
  v114 = v17;
  while (1)
  {
    if (v16 < 0)
    {
      v30 = sub_22A4DE12C();
      if (!v30 || (v119 = v30, swift_dynamicCast(), v29 = v120[0], v27 = v19, v28 = v20, !v120[0]))
      {
LABEL_45:
        sub_22953EE84();
        return;
      }
    }

    else
    {
      v25 = v19;
      v26 = v20;
      v27 = v19;
      if (!v20)
      {
        while (1)
        {
          v27 = v25 + 1;
          if (__OFADD__(v25, 1))
          {
            break;
          }

          if (v27 >= v24)
          {
            goto LABEL_45;
          }

          v26 = *(v17 + 8 * v27);
          ++v25;
          if (v26)
          {
            goto LABEL_14;
          }
        }

        __break(1u);
        return;
      }

LABEL_14:
      v28 = (v26 - 1) & v26;
      v29 = *(*(v16 + 48) + ((v27 << 9) | (8 * __clz(__rbit64(v26)))));
      if (!v29)
      {
        goto LABEL_45;
      }
    }

    v115 = v20;
    v116 = v19;
    v31 = [v29 mediaSession];
    if (!v31)
    {
      v63 = v105;
      sub_229541CB0(ObjectType, &off_283CE36C8);
      v57 = v29;
      v58 = sub_22A4DD05C();
      v59 = sub_22A4DDCCC();

      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        *v60 = 138412290;
        *(v60 + 4) = v57;
        *v61 = v57;
        v62 = v57;
        _os_log_impl(&dword_229538000, v58, v59, "Expected media session for profile %@", v60, 0xCu);
        sub_22953EAE4(v61, &qword_27D87D7D0, &unk_22A578D90);
        MEMORY[0x22AAD4E50](v61, -1, -1);
        MEMORY[0x22AAD4E50](v60, -1, -1);
      }

      else
      {
        v62 = v58;
        v58 = v57;
      }

      v82 = v109;
      v81 = v110;
      sub_22953EE84();

      goto LABEL_65;
    }

    v32 = v31;
    v117 = v29;
    v33 = v118;
    v34 = [v118 playbackArchive];
    v35 = &selRef_startSubscriptionForHome_;
    if (v34)
    {
      break;
    }

LABEL_37:
    if ([v33 v35[54]])
    {
      v49 = [v33 v35[54]];
      v50 = [v32 v35[54]];
      v51 = [v50 playbackState];

      v47 = v49 == v51;
      v33 = v118;
      v35 = &selRef_startSubscriptionForHome_;
      if (!v47)
      {
        v63 = v104;
        sub_229541CB0(ObjectType, &off_283CE36C8);
        v64 = v32;
        v65 = v33;
        v66 = v64;
        v67 = v65;
        v68 = sub_22A4DD05C();
        v69 = sub_22A4DDCDC();
        if (os_log_type_enabled(v68, v69))
        {
          v71 = swift_slowAlloc();
          *v71 = 134218240;
          *(v71 + 4) = [v67 state];

          *(v71 + 12) = 2048;
          v72 = [v66 state];
          v73 = [v72 playbackState];

          *(v71 + 14) = v73;
          _os_log_impl(&dword_229538000, v68, v69, "Expected playback state %ld does not match current media state %ld", v71, 0x16u);
          MEMORY[0x22AAD4E50](v71, -1, -1);
          sub_22953EE84();
          v67 = v117;
        }

        else
        {

          sub_22953EE84();
          v68 = v117;
        }

        v82 = v109;
        v81 = v110;

        goto LABEL_64;
      }
    }

    v52 = [v33 volume];
    if (v52)
    {
      v53 = v52;
      v54 = [v32 v35[54]];
      v55 = [v54 volume];

      if (!v55)
      {

LABEL_51:
        v63 = v107;
        sub_229541CB0(ObjectType, &off_283CE36C8);
        v74 = v32;
        v66 = v53;
        v68 = sub_22A4DD05C();
        v75 = sub_22A4DDCDC();

        if (os_log_type_enabled(v68, v75))
        {
          v76 = swift_slowAlloc();
          v77 = swift_slowAlloc();
          LODWORD(v118) = v75;
          v78 = v77;
          *v76 = 138412546;
          *(v76 + 4) = v66;
          *v77 = v66;
          *(v76 + 12) = 2112;
          v66 = v66;
          v79 = [v74 v35[54]];
          v80 = [v79 volume];

          *(v76 + 14) = v80;
          v78[1] = v80;
          _os_log_impl(&dword_229538000, v68, v118, "Expected volume %@ does not match current media state %@", v76, 0x16u);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7D0, &unk_22A578D90);
          swift_arrayDestroy();
          MEMORY[0x22AAD4E50](v78, -1, -1);
          MEMORY[0x22AAD4E50](v76, -1, -1);
          sub_22953EE84();
        }

        else
        {

          sub_22953EE84();
          v74 = v68;
          v68 = v117;
        }

        v82 = v109;
        v81 = v110;

LABEL_64:
LABEL_65:
        (*(v82 + 8))(v63, v81);
        return;
      }

      sub_229562F68(0, &qword_281401770, 0x277CCABB0);
      v56 = sub_22A4DDEDC();

      if ((v56 & 1) == 0)
      {
        goto LABEL_51;
      }
    }

    v19 = v27;
    v20 = v28;
  }

  v36 = v34;
  v37 = [v34 playbackSessionIdentifier];
  if (v37)
  {
    v38 = v37;
    v39 = sub_22A4DD5EC();
    v41 = v40;
  }

  else
  {
    v39 = 0;
    v41 = 0;
  }

  v42 = [v32 state];
  v43 = [v42 mediaUniqueIdentifier];

  if (!v43)
  {
    v35 = &selRef_startSubscriptionForHome_;
    if (v41)
    {
      goto LABEL_57;
    }

    goto LABEL_35;
  }

  v44 = sub_22A4DD5EC();
  v46 = v45;

  v35 = &selRef_startSubscriptionForHome_;
  if (v41)
  {
    if (!v46)
    {
      goto LABEL_57;
    }

    v47 = v39 == v44 && v41 == v46;
    if (v47)
    {

      goto LABEL_36;
    }

    v48 = sub_22A4DE60C();

    if ((v48 & 1) == 0)
    {
      goto LABEL_58;
    }

LABEL_35:

LABEL_36:
    v16 = v113;
    v17 = v114;
    v33 = v118;
    goto LABEL_37;
  }

  if (!v46)
  {
    goto LABEL_35;
  }

LABEL_57:

LABEL_58:
  v83 = v106;
  sub_229541CB0(ObjectType, &off_283CE36C8);
  v84 = v36;
  v85 = v32;
  v86 = sub_22A4DD05C();
  v87 = sub_22A4DDCDC();

  if (os_log_type_enabled(v86, v87))
  {
    v88 = swift_slowAlloc();
    v118 = swift_slowAlloc();
    v120[0] = v118;
    *v88 = 136315394;
    v89 = [v84 playbackSessionIdentifier];
    v90 = v109;
    if (v89)
    {
      v91 = v89;
      v92 = sub_22A4DD5EC();
      v94 = v93;
    }

    else
    {
      v94 = 0xE300000000000000;
      v92 = 7104878;
    }

    v95 = sub_2295A3E30(v92, v94, v120);

    *(v88 + 4) = v95;
    *(v88 + 12) = 2080;
    v96 = [v85 state];
    v97 = [v96 mediaUniqueIdentifier];

    if (v97)
    {
      v98 = sub_22A4DD5EC();
      v100 = v99;
    }

    else
    {
      v100 = 0xE300000000000000;
      v98 = 7104878;
    }

    v101 = sub_2295A3E30(v98, v100, v120);

    *(v88 + 14) = v101;
    _os_log_impl(&dword_229538000, v86, v87, "Expected playback archive identifier %s does not match current media session identifier %s", v88, 0x16u);
    v102 = v118;
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v102, -1, -1);
    MEMORY[0x22AAD4E50](v88, -1, -1);
    sub_22953EE84();

    (*(v90 + 8))(v106, v110);
  }

  else
  {

    sub_22953EE84();
    (*(v109 + 8))(v83, v110);
  }
}

uint64_t sub_229757764@<X0>(id *a1@<X0>, uint64_t *a2@<X1>, SEL *a3@<X2>, void *a4@<X8>)
{
  v5 = [*a1 actions];
  sub_229562F68(0, &qword_27D880928, off_278666018);
  v6 = sub_22A4DD83C();

  v21 = MEMORY[0x277D84F90];
  if (v6 >> 62)
  {
LABEL_22:
    v7 = sub_22A4DE0EC();
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_23:
    v9 = MEMORY[0x277D84F90];
    goto LABEL_24;
  }

  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v7)
  {
    goto LABEL_23;
  }

LABEL_3:
  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  do
  {
    v18 = v9;
    v10 = v8;
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x22AAD13F0](v10, v6);
      }

      else
      {
        if (v10 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v11 = *(v6 + 8 * v10 + 32);
      }

      v12 = v11;
      v8 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      v13 = *a2;
      objc_opt_self();
      v14 = swift_dynamicCastObjCClass();
      if (v14)
      {
        break;
      }

LABEL_6:
      ++v10;
      if (v8 == v7)
      {
        v9 = v18;
        goto LABEL_24;
      }
    }

    v15 = [v14 *a3];

    if (!v15)
    {
      goto LABEL_6;
    }

    MEMORY[0x22AAD09E0]();
    if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v16 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_22A4DD85C();
    }

    sub_22A4DD87C();
    v9 = v21;
  }

  while (v8 != v7);
LABEL_24:

  *a4 = v9;
  return result;
}

uint64_t sub_229757954@<X0>(id *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v4 = [*a1 actions];
  sub_229562F68(0, &qword_27D880928, off_278666018);
  v5 = sub_22A4DD83C();

  v16 = MEMORY[0x277D84F90];
  if (!(v5 >> 62))
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_20:
    v8 = MEMORY[0x277D84F90];
    goto LABEL_21;
  }

LABEL_19:
  v6 = sub_22A4DE0EC();
  if (!v6)
  {
    goto LABEL_20;
  }

LABEL_3:
  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  do
  {
    v9 = v7;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x22AAD13F0](v9, v5);
      }

      else
      {
        if (v9 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v10 = *(v5 + 8 * v9 + 32);
      }

      v11 = v10;
      v7 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v12 = *a2;
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        break;
      }

      ++v9;
      if (v7 == v6)
      {
        goto LABEL_21;
      }
    }

    MEMORY[0x22AAD09E0]();
    if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v13 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_22A4DD85C();
    }

    sub_22A4DD87C();
    v8 = v16;
  }

  while (v7 != v6);
LABEL_21:

  *a3 = v8;
  return result;
}

uint64_t sub_229757B18@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  v7 = *a1;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = [v7 actions];
  sub_229562F68(0, &qword_27D880928, off_278666018);
  v9 = sub_22A4DD83C();

  MEMORY[0x28223BE20](v10);
  v13[2] = a2;
  v13[3] = a3;
  v11 = sub_22974DB0C(sub_2297635E4, v13, v9);

  *a4 = v11;
  return result;
}

void sub_229757C30(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = *a1;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (v8)
  {
    v9 = v8;
    v10 = v7;
    v11 = [v9 commands];
    sub_229562F68(0, &qword_27D880930, off_278666260);
    v12 = sub_22A4DD83C();

    MEMORY[0x28223BE20](v13);
    v15[2] = a2;
    v15[3] = a3;
    v14 = sub_229716CE4(sub_229763600, v15, v12);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  *a4 = v14;
}

id sub_229757D90@<X0>(void **a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v5 = *a1;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = sub_229757E14(v5, a2);
  *a3 = result;
  return result;
}

id sub_229757E14(void *a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_22A4DD07C();
  v6 = *(v5 - 1);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v60 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = v60 - v14;
  v16 = [a1 expectedValues];
  if (v16)
  {
    v17 = v16;
    v63 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87C410, &qword_22A576EE0);
    v18 = sub_22A4DD83C();

    v19 = [a1 accessory];
    if (v19)
    {
      v20 = v19;
      v68 = &unk_283F010C8;
      v21 = swift_dynamicCastObjCProtocolConditional();
      if (v21)
      {
        v64 = v5;
        v22 = [v21 matterNodeID];
        sub_229562F68(0, &qword_281401770, 0x277CCABB0);
        v23 = sub_22A4DDEBC();
        v62 = v22;
        v24 = sub_22A4DDEDC();

        if (v24)
        {

          sub_229541CB0(ObjectType, &off_283CE36C8);
          v25 = a1;
          v26 = sub_22A4DD05C();
          v27 = sub_22A4DDCEC();

          if (os_log_type_enabled(v26, v27))
          {
            v28 = swift_slowAlloc();
            v29 = swift_slowAlloc();
            *v28 = 138412546;
            v30 = [v25 &selRef_activate];
            *(v28 + 4) = v30;
            *(v28 + 12) = 2112;
            *(v28 + 14) = v25;
            *v29 = v30;
            v29[1] = v25;
            v31 = v25;
            _os_log_impl(&dword_229538000, v26, v27, "Failed to get matter device on accessory %@ from command %@", v28, 0x16u);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7D0, &unk_22A578D90);
            swift_arrayDestroy();
            MEMORY[0x22AAD4E50](v29, -1, -1);
            MEMORY[0x22AAD4E50](v28, -1, -1);
            v32 = v20;
          }

          else
          {
            v32 = v26;
            v26 = v20;
          }

          v58 = v62;

          (*(v6 + 8))(v15, v64);
          return 0;
        }

        v61 = v20;
        v64 = [a1 matterPath];
        v48 = MEMORY[0x277D84F90];
        v67 = MEMORY[0x277D84F90];
        v49 = *(v18 + 16);
        if (v49)
        {
          v50 = 0;
          while (v50 < *(v18 + 16))
          {
            v66 = *(v18 + 32 + 8 * v50);

            sub_229758538(&v66, v64, a1, ObjectType, &v65);

            if (v65)
            {
              MEMORY[0x22AAD09E0](v51);
              if (*((v67 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v67 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                v60[1] = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
                sub_22A4DD85C();
              }

              sub_22A4DD87C();
              v48 = v67;
            }

            if (v49 == ++v50)
            {
              goto LABEL_26;
            }
          }

          __break(1u);
        }

        else
        {
LABEL_26:

          if (!(v48 >> 62))
          {
            v52 = v61;
            v53 = v62;
            if (!*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
LABEL_33:

              return 0;
            }

LABEL_28:
            sub_22A4DB76C();
            v54 = objc_allocWithZone(MEMORY[0x277CD1B58]);
            v55 = sub_22A4DD5AC();

            sub_229562F68(0, &qword_27D87CF48, 0x277CD51C0);
            v56 = sub_22A4DD81C();

            v57 = [v54 initWithMTRDeviceNodeID:v53 controllerID:v55 attributePaths:v56];

            return v57;
          }
        }

        v59 = sub_22A4DE0EC();
        v52 = v61;
        v53 = v62;
        if (!v59)
        {
          goto LABEL_33;
        }

        goto LABEL_28;
      }
    }

    else
    {
    }

    sub_229541CB0(ObjectType, &off_283CE36C8);
    v41 = a1;
    v42 = sub_22A4DD05C();
    v43 = sub_22A4DDCEC();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *v44 = 138412290;
      *(v44 + 4) = v41;
      *v45 = v41;
      v46 = v41;
      _os_log_impl(&dword_229538000, v42, v43, "Command has no related accessory: %@", v44, 0xCu);
      sub_22953EAE4(v45, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v45, -1, -1);
      MEMORY[0x22AAD4E50](v44, -1, -1);
    }

    v39 = *(v6 + 8);
    v40 = v13;
  }

  else
  {
    sub_229541CB0(ObjectType, &off_283CE36C8);
    v33 = a1;
    v34 = sub_22A4DD05C();
    v35 = sub_22A4DDCDC();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *v36 = 138412290;
      *(v36 + 4) = v33;
      *v37 = v33;
      v38 = v33;
      _os_log_impl(&dword_229538000, v34, v35, "Command has no expectedValues: %@", v36, 0xCu);
      sub_22953EAE4(v37, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v37, -1, -1);
      MEMORY[0x22AAD4E50](v36, -1, -1);
    }

    v39 = *(v6 + 8);
    v40 = v10;
  }

  v39(v40, v5);
  return 0;
}

id sub_229758538@<X0>(uint64_t *a1@<X0>, void *a2@<X2>, void *a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  v32 = a5;
  v10 = sub_22A4DD07C();
  v31 = *(v10 - 8);
  v11 = *(v31 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = sub_22975A678(v14, a2);
  v16 = result;
  if (!result)
  {
    v30 = v5;
    sub_229541CB0(a4, &off_283CE36C8);

    v17 = a3;
    v18 = sub_22A4DD05C();
    v19 = sub_22A4DDCEC();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v33 = v29;
      *v20 = 136315394;
      v21 = sub_22A4DD4AC();
      v23 = sub_2295A3E30(v21, v22, &v33);

      *(v20 + 4) = v23;
      *(v20 + 12) = 2112;
      *(v20 + 14) = v17;
      v24 = v28;
      *v28 = v17;
      v25 = v17;
      _os_log_impl(&dword_229538000, v18, v19, "Nil attribute path for %s from command %@", v20, 0x16u);
      sub_22953EAE4(v24, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v24, -1, -1);
      v26 = v29;
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x22AAD4E50](v26, -1, -1);
      MEMORY[0x22AAD4E50](v20, -1, -1);
    }

    result = (*(v31 + 8))(v13, v10);
  }

  *v32 = v16;
  return result;
}

uint64_t sub_2297587F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_22A4DD07C();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2297588B4, 0, 0);
}

uint64_t sub_2297588B4()
{
  v1 = v0[6];
  sub_229541CB0(v0[3], &off_283CE36C8);
  v2 = sub_22A4DD05C();
  v3 = sub_22A4DDCDC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_229538000, v2, v3, "Retry timer fired", v4, 2u);
    MEMORY[0x22AAD4E50](v4, -1, -1);
  }

  v6 = v0[5];
  v5 = v0[6];
  v7 = v0[4];
  v8 = v0[2];

  (*(v6 + 8))(v5, v7);

  return MEMORY[0x2822009F8](sub_2297589D4, v8, 0);
}

uint64_t sub_2297589D4()
{
  v1 = v0[6];
  v2 = v0[2];
  sub_22975381C();

  v3 = v0[1];

  return v3();
}

uint64_t sub_229758B54(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_22A4DD07C();
  v6 = *(v5 - 1);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v65 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v65 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v65 - v17;
  v19 = [a1 expectedValues];
  if (!v19)
  {
    sub_229541CB0(ObjectType, &off_283CE36C8);
    v36 = a1;
    v37 = sub_22A4DD05C();
    v38 = sub_22A4DDCDC();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *v39 = 138412290;
      *(v39 + 4) = v36;
      *v40 = v36;
      v41 = v36;
      _os_log_impl(&dword_229538000, v37, v38, "Command has no expectedValues: %@", v39, 0xCu);
      sub_22953EAE4(v40, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v40, -1, -1);
      MEMORY[0x22AAD4E50](v39, -1, -1);
    }

    (*(v6 + 8))(v10, v5);
    return 0;
  }

  v20 = v19;
  v68 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87C410, &qword_22A576EE0);
  v21 = sub_22A4DD83C();

  v22 = [a1 accessory];
  if (!v22)
  {

LABEL_12:
    sub_229541CB0(ObjectType, &off_283CE36C8);
    v42 = a1;
    v43 = sub_22A4DD05C();
    v44 = sub_22A4DDCEC();

    v45 = os_log_type_enabled(v43, v44);
    v46 = v68;
    if (v45)
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      *v47 = 138412290;
      *(v47 + 4) = v42;
      *v48 = v42;
      v49 = v42;
      _os_log_impl(&dword_229538000, v43, v44, "Command has no related accessory: %@", v47, 0xCu);
      sub_22953EAE4(v48, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v48, -1, -1);
      MEMORY[0x22AAD4E50](v47, -1, -1);
    }

    (*(v6 + 8))(v13, v46);
    return 0;
  }

  v23 = v22;
  v69[4] = &unk_283F010C8;
  v24 = swift_dynamicCastObjCProtocolConditional();
  if (!v24)
  {

    goto LABEL_12;
  }

  v67 = v6;
  v25 = [v24 matterNodeID];
  sub_229562F68(0, &qword_281401770, 0x277CCABB0);
  v26 = sub_22A4DDEBC();
  v27 = sub_22A4DDEDC();

  if (v27)
  {

    sub_229541CB0(ObjectType, &off_283CE36C8);
    v28 = a1;
    v29 = sub_22A4DD05C();
    v30 = sub_22A4DDCEC();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v31 = 138412546;
      v33 = [v28 accessory];
      *(v31 + 4) = v33;
      *(v31 + 12) = 2112;
      *(v31 + 14) = v28;
      *v32 = v33;
      v32[1] = v28;
      v34 = v28;
      _os_log_impl(&dword_229538000, v29, v30, "Failed to get matter device on accessory %@ from command %@", v31, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7D0, &unk_22A578D90);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v32, -1, -1);
      MEMORY[0x22AAD4E50](v31, -1, -1);
      v35 = v25;
      v25 = v23;
    }

    else
    {
      v35 = v29;
      v29 = v23;
    }

    v56 = v68;

    (v67[1].isa)(v16, v56);
    return 0;
  }

  swift_beginAccess();
  v51 = *(v2 + 144);

  v52 = sub_22974C69C(v25, v51);

  if (!v52)
  {

    sub_229541CB0(ObjectType, &off_283CE36C8);
    v57 = v25;
    v58 = sub_22A4DD05C();
    v59 = sub_22A4DDCEC();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      *v60 = 138412290;
      *(v60 + 4) = v57;
      *v61 = v57;
      v62 = v57;
      _os_log_impl(&dword_229538000, v58, v59, "No monitored device for nodeID %@", v60, 0xCu);
      sub_22953EAE4(v61, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v61, -1, -1);
      MEMORY[0x22AAD4E50](v60, -1, -1);
      v57 = v23;
    }

    else
    {
      v62 = v58;
      v58 = v23;
    }

    v63 = v67;
    v64 = v68;

    (v63[1].isa)(v18, v64);
    return 0;
  }

  v66 = v25;
  v67 = v23;
  result = [a1 matterPath];
  v68 = result;
  v53 = *(v21 + 16);
  if (v53)
  {
    v54 = 0;
    while (v54 < *(v21 + 16))
    {
      v69[0] = *(v21 + 8 * v54 + 32);

      v55 = sub_229759304(v69, v2, v68, a1, v52, ObjectType);

      if ((v55 & 1) == 0)
      {

        swift_unknownObjectRelease();

        return 0;
      }

      if (v53 == ++v54)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_23:

    swift_unknownObjectRelease();

    return 1;
  }

  return result;
}

uint64_t sub_229759304(uint64_t *a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6)
{
  v172 = a6;
  v169 = a5;
  v178 = a3;
  v9 = sub_22A4DD07C();
  v10 = *(v9 - 8);
  v173 = v9;
  v174 = v10;
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v160 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v160 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v160 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v160 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v167 = &v160 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v168 = &v160 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v166 = &v160 - v29;
  MEMORY[0x28223BE20](v28);
  v165 = &v160 - v30;
  v31 = *a1;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v32 = sub_22975A678(v31, v178);
  if (!v32)
  {
    sub_229541CB0(v172, &off_283CE36C8);

    v74 = a4;
    v75 = sub_22A4DD05C();
    v76 = sub_22A4DDCEC();

    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v171 = v6;
      v79 = v78;
      v80 = swift_slowAlloc();
      v177[0] = v80;
      *v77 = 136315394;
      v81 = sub_22A4DD4AC();
      v83 = sub_2295A3E30(v81, v82, v177);

      *(v77 + 4) = v83;
      *(v77 + 12) = 2112;
      *(v77 + 14) = v74;
      *v79 = v74;
      v84 = v74;
      _os_log_impl(&dword_229538000, v75, v76, "Nil attribute path for %s from command %@", v77, 0x16u);
      sub_22953EAE4(v79, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v79, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v80);
      MEMORY[0x22AAD4E50](v80, -1, -1);
      MEMORY[0x22AAD4E50](v77, -1, -1);
    }

    (*(v174 + 8))(v14, v173);
    goto LABEL_25;
  }

  v170 = v32;
  v171 = v6;
  v33 = *MEMORY[0x277CD50D8];
  v34 = sub_22A4DD5EC();
  if (!*(v31 + 16))
  {

    goto LABEL_27;
  }

  v36 = sub_229543DBC(v34, v35);
  v38 = v37;

  if ((v38 & 1) == 0 || (sub_2295404B0(*(v31 + 56) + 32 * v36, v177), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87C410, &qword_22A576EE0), (swift_dynamicCast() & 1) == 0))
  {
LABEL_27:
    sub_229541CB0(v172, &off_283CE36C8);

    v85 = a4;
    v86 = sub_22A4DD05C();
    v87 = sub_22A4DDCEC();

    if (os_log_type_enabled(v86, v87))
    {
      v88 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      v177[0] = v90;
      *v88 = 136315394;
      v91 = sub_22A4DD4AC();
      v93 = sub_2295A3E30(v91, v92, v177);

      *(v88 + 4) = v93;
      *(v88 + 12) = 2112;
      *(v88 + 14) = v85;
      *v89 = v85;
      v94 = v85;
      _os_log_impl(&dword_229538000, v86, v87, "Failed to get data for %s from command %@", v88, 0x16u);
      sub_22953EAE4(v89, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v89, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v90);
      MEMORY[0x22AAD4E50](v90, -1, -1);
      MEMORY[0x22AAD4E50](v88, -1, -1);
    }

    else
    {
    }

    (*(v174 + 8))(v17, v173);
    goto LABEL_31;
  }

  v39 = v176[0];
  v40 = *MEMORY[0x277CD5188];
  v41 = sub_22A4DD5EC();
  if (!*(v39 + 16))
  {

    goto LABEL_34;
  }

  v164 = v40;
  v43 = sub_229543DBC(v41, v42);
  v45 = v44;

  if ((v45 & 1) == 0 || (sub_2295404B0(*(v39 + 56) + 32 * v43, v177), (swift_dynamicCast() & 1) == 0))
  {
LABEL_34:

    sub_229541CB0(v172, &off_283CE36C8);

    v96 = a4;
    v97 = sub_22A4DD05C();
    v98 = sub_22A4DDCEC();

    if (os_log_type_enabled(v97, v98))
    {
      v99 = swift_slowAlloc();
      v100 = swift_slowAlloc();
      v101 = swift_slowAlloc();
      v177[0] = v101;
      *v99 = 136315394;
      v102 = sub_22A4DD4AC();
      v104 = sub_2295A3E30(v102, v103, v177);

      *(v99 + 4) = v104;
      *(v99 + 12) = 2112;
      *(v99 + 14) = v96;
      *v100 = v96;
      v105 = v96;
      _os_log_impl(&dword_229538000, v97, v98, "Failed to get data type for %s from command %@", v99, 0x16u);
      sub_22953EAE4(v100, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v100, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v101);
      MEMORY[0x22AAD4E50](v101, -1, -1);
      MEMORY[0x22AAD4E50](v99, -1, -1);
    }

    else
    {
    }

    (*(v174 + 8))(v20, v173);
    goto LABEL_25;
  }

  v47 = v176[0];
  v46 = v176[1];
  v162 = *MEMORY[0x277CD51A0];
  v48 = sub_22A4DD5EC();
  if (!*(v39 + 16))
  {

LABEL_41:

    sub_229541CB0(v172, &off_283CE36C8);

    v106 = a4;
    v107 = sub_22A4DD05C();
    v108 = sub_22A4DDCEC();

    if (os_log_type_enabled(v107, v108))
    {
      v109 = swift_slowAlloc();
      v110 = swift_slowAlloc();
      v111 = swift_slowAlloc();
      v177[0] = v111;
      *v109 = 136315394;
      v112 = sub_22A4DD4AC();
      v114 = sub_2295A3E30(v112, v113, v177);

      *(v109 + 4) = v114;
      *(v109 + 12) = 2112;
      *(v109 + 14) = v106;
      *v110 = v106;
      v115 = v106;
      _os_log_impl(&dword_229538000, v107, v108, "Failed to get data value for %s from command %@", v109, 0x16u);
      sub_22953EAE4(v110, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v110, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v111);
      MEMORY[0x22AAD4E50](v111, -1, -1);
      MEMORY[0x22AAD4E50](v109, -1, -1);
    }

    else
    {
    }

    (*(v174 + 8))(v23, v173);
    goto LABEL_25;
  }

  v161 = v47;
  v163 = v46;
  v50 = sub_229543DBC(v48, v49);
  v52 = v51;

  if ((v52 & 1) == 0)
  {

    goto LABEL_41;
  }

  sub_2295404B0(*(v39 + 56) + 32 * v50, v177);

  v53 = v170;
  v54 = [v53 endpoint];
  v55 = [v53 cluster];

  v56 = [v53 attribute];
  v57 = [v169 readAttributeWithEndpointID:v54 clusterID:v55 attributeID:v56 params:0];

  if (!v57)
  {

    v116 = v167;
    sub_229541CB0(v172, &off_283CE36C8);
    v117 = v53;
    v118 = sub_22A4DD05C();
    v119 = sub_22A4DDCCC();

    if (os_log_type_enabled(v118, v119))
    {
      v120 = swift_slowAlloc();
      v121 = swift_slowAlloc();
      *v120 = 138412290;
      *(v120 + 4) = v117;
      *v121 = v170;
      v122 = v117;
      _os_log_impl(&dword_229538000, v118, v119, "Failed to get current value for (%@)", v120, 0xCu);
      sub_22953EAE4(v121, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v121, -1, -1);
      MEMORY[0x22AAD4E50](v120, -1, -1);
    }

    (*(v174 + 8))(v116, v173);
    goto LABEL_56;
  }

  v58 = sub_22A4DD49C();

  v59 = sub_22A4DD5EC();
  if (!*(v58 + 16))
  {

    goto LABEL_49;
  }

  v61 = sub_229543DBC(v59, v60);
  v63 = v62;

  if ((v63 & 1) == 0 || (sub_2295404B0(*(v58 + 56) + 32 * v61, v176), (swift_dynamicCast() & 1) == 0))
  {
LABEL_49:

    v123 = v168;
    sub_229541CB0(v172, &off_283CE36C8);

    v124 = sub_22A4DD05C();
    v125 = sub_22A4DDCEC();

    if (os_log_type_enabled(v124, v125))
    {
      v126 = swift_slowAlloc();
      v127 = swift_slowAlloc();
      v176[0] = v127;
      *v126 = 136315394;
      v128 = sub_22A4DD4AC();
      v130 = sub_2295A3E30(v128, v129, v176);
      v170 = v53;
      v131 = v130;

      *(v126 + 4) = v131;
      *(v126 + 12) = 2080;
      v132 = sub_22A4DD4AC();
      v134 = v133;

      v135 = sub_2295A3E30(v132, v134, v176);

      *(v126 + 14) = v135;
      _os_log_impl(&dword_229538000, v124, v125, "Failed to get read data type for %s from read data %s", v126, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v127, -1, -1);
      MEMORY[0x22AAD4E50](v126, -1, -1);

      (*(v174 + 8))(v168, v173);
LABEL_56:
      __swift_destroy_boxed_opaque_existential_0(v177);
LABEL_25:
      v73 = 0;
      return v73 & 1;
    }

LABEL_55:

    (*(v174 + 8))(v123, v173);
    goto LABEL_56;
  }

  v64 = v175[0];
  v65 = v175[1];
  v66 = sub_22A4DD5EC();
  if (!*(v58 + 16))
  {

LABEL_53:

    v123 = v166;
    sub_229541CB0(v172, &off_283CE36C8);

    v124 = sub_22A4DD05C();
    v136 = sub_22A4DDCEC();

    if (os_log_type_enabled(v124, v136))
    {
      v137 = swift_slowAlloc();
      v138 = swift_slowAlloc();
      v176[0] = v138;
      *v137 = 136315394;
      v139 = sub_22A4DD4AC();
      v141 = sub_2295A3E30(v139, v140, v176);
      v170 = v53;
      v142 = v141;

      *(v137 + 4) = v142;
      *(v137 + 12) = 2080;
      v143 = sub_22A4DD4AC();
      v145 = v144;

      v146 = sub_2295A3E30(v143, v145, v176);

      *(v137 + 14) = v146;
      _os_log_impl(&dword_229538000, v124, v136, "Failed to get read data value for %s from read data %s", v137, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v138, -1, -1);
      MEMORY[0x22AAD4E50](v137, -1, -1);

      (*(v174 + 8))(v166, v173);
      goto LABEL_56;
    }

    goto LABEL_55;
  }

  v68 = sub_229543DBC(v66, v67);
  v70 = v69;

  if ((v70 & 1) == 0)
  {
    goto LABEL_53;
  }

  sub_2295404B0(*(v58 + 56) + 32 * v68, v176);
  v71 = v161;
  v72 = v163;
  if ((v161 != v64 || v163 != v65) && (sub_22A4DE60C() & 1) == 0)
  {
    v170 = v53;
    sub_229541CB0(v172, &off_283CE36C8);

    v147 = v178;
    v148 = sub_22A4DD05C();
    v149 = sub_22A4DDCEC();

    if (os_log_type_enabled(v148, v149))
    {
      v150 = swift_slowAlloc();
      v151 = swift_slowAlloc();
      v178 = swift_slowAlloc();
      v175[0] = v178;
      *v150 = 136315906;
      v152 = sub_2295A3E30(v64, v65, v175);

      *(v150 + 4) = v152;
      *(v150 + 12) = 2080;
      v153 = sub_2295A3E30(v161, v163, v175);

      *(v150 + 14) = v153;
      *(v150 + 22) = 2080;
      v154 = sub_22A4DD4AC();
      v156 = v155;

      v157 = sub_2295A3E30(v154, v156, v175);

      *(v150 + 24) = v157;
      *(v150 + 32) = 2112;
      *(v150 + 34) = v147;
      *v151 = v147;
      v158 = v147;
      _os_log_impl(&dword_229538000, v148, v149, "Read data type %s does not match expected data type %s from read data %s for path %@", v150, 0x2Au);
      sub_22953EAE4(v151, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v151, -1, -1);
      v159 = v178;
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v159, -1, -1);
      MEMORY[0x22AAD4E50](v150, -1, -1);
    }

    else
    {
    }

    (*(v174 + 8))(v165, v173);
    __swift_destroy_boxed_opaque_existential_0(v176);
    __swift_destroy_boxed_opaque_existential_0(v177);
LABEL_31:
    v73 = 0;
    return v73 & 1;
  }

  v73 = sub_22975AD7C(v177, v176, v71, v72);

  __swift_destroy_boxed_opaque_existential_0(v176);
  __swift_destroy_boxed_opaque_existential_0(v177);
  return v73 & 1;
}

id sub_22975A678(uint64_t a1, void *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = sub_22A4DD07C();
  v61 = *(v7 - 8);
  v8 = *(v61 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v59 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v59 - v15;
  v17 = *MEMORY[0x277CD50B8];
  v18 = sub_22A4DD5EC();
  if (!*(a1 + 16))
  {

LABEL_8:
    sub_229541CB0(ObjectType, &off_283CE36C8);

    v33 = sub_22A4DD05C();
    v34 = sub_22A4DDCEC();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v63[0] = v37;
      *v35 = 136315394;
      v38 = sub_22A4DD4AC();
      v40 = sub_2295A3E30(v38, v39, v63);

      *(v35 + 4) = v40;
      *(v35 + 12) = 2112;
      *(v35 + 14) = v3;
      *v36 = v3;

      _os_log_impl(&dword_229538000, v33, v34, "Failed to get attribute path for %s from command %@", v35, 0x16u);
      sub_22953EAE4(v36, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v36, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v37);
      MEMORY[0x22AAD4E50](v37, -1, -1);
      MEMORY[0x22AAD4E50](v35, -1, -1);
    }

    (*(v61 + 8))(v11, v7);
    return 0;
  }

  v60 = v7;
  v20 = sub_229543DBC(v18, v19);
  v22 = v21;
  v7 = v60;

  if ((v22 & 1) == 0)
  {
    goto LABEL_8;
  }

  sub_2295404B0(*(a1 + 56) + 32 * v20, v63);
  sub_229562F68(0, &qword_27D87CF48, 0x277CD51C0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_8;
  }

  v23 = v62;
  v24 = [v23 endpoint];
  v25 = [v24 unsignedShortValue];

  v26 = [a2 endpointID];
  v27 = [v26 unsignedShortValue];

  if (v25 == v27)
  {
    v28 = [v23 cluster];

    v29 = [v28 unsignedIntValue];
    v30 = [a2 clusterID];
    v31 = [v30 unsignedIntValue];

    if (v29 == v31)
    {
      return v23;
    }

    sub_229541CB0(ObjectType, &off_283CE36C8);
    v50 = v23;
    v51 = a2;

    v52 = sub_22A4DD05C();
    v53 = sub_22A4DDCEC();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      *v54 = 138412802;
      v56 = [v50 &selRef_computeWithCoder_];
      *(v54 + 4) = v56;
      *v55 = v56;
      *(v54 + 12) = 2112;
      v57 = [v51 clusterID];
      *(v54 + 14) = v57;
      *(v54 + 22) = 2112;
      *(v54 + 24) = v3;
      v55[1] = v57;
      v55[2] = v3;

      _os_log_impl(&dword_229538000, v52, v53, "Cluster ID in expectedValues (%@) doesn't match HMMatterCommand (%@).  %@", v54, 0x20u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7D0, &unk_22A578D90);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v55, -1, -1);
      MEMORY[0x22AAD4E50](v54, -1, -1);
      v58 = v50;
    }

    else
    {
      v58 = v52;
      v52 = v50;
    }

    (*(v61 + 8))(v16, v60);
  }

  else
  {

    sub_229541CB0(ObjectType, &off_283CE36C8);
    v41 = v23;
    v42 = a2;

    v43 = sub_22A4DD05C();
    v44 = sub_22A4DDCEC();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      *v45 = 138412802;
      v47 = [v41 endpoint];
      *(v45 + 4) = v47;
      *v46 = v47;
      *(v45 + 12) = 2112;
      v48 = [v42 endpointID];
      *(v45 + 14) = v48;
      *(v45 + 22) = 2112;
      *(v45 + 24) = v3;
      v46[1] = v48;
      v46[2] = v3;

      _os_log_impl(&dword_229538000, v43, v44, "EndpointID in expectedValues (%@) doesn't match HMMatterCommand (%@). %@", v45, 0x20u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7D0, &unk_22A578D90);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v46, -1, -1);
      MEMORY[0x22AAD4E50](v45, -1, -1);
      v49 = v41;
    }

    else
    {
      v49 = v43;
      v43 = v41;
    }

    (*(v61 + 8))(v14, v60);
  }

  return 0;
}

uint64_t sub_22975AD7C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  ObjectType = swift_getObjectType();
  v8 = sub_22A4DD07C();
  v9 = *(v8 - 8);
  v219 = v8;
  v220 = v9;
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v216 = &v214 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v214 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v214 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v217 = &v214 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v214 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v214 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v214 - v27;
  v29 = *MEMORY[0x277CD50C0];
  if (sub_22A4DD5EC() == a3 && v30 == a4)
  {
  }

  else
  {
    v215 = v15;
    v32 = sub_22A4DE60C();

    if ((v32 & 1) == 0)
    {
      v33 = *MEMORY[0x277CD5178];
      if (sub_22A4DD5EC() == a3 && v34 == a4)
      {
      }

      else
      {
        v36 = sub_22A4DE60C();

        if ((v36 & 1) == 0)
        {
          v37 = *MEMORY[0x277CD5198];
          if (sub_22A4DD5EC() == a3 && v38 == a4)
          {

            v39 = a2;
LABEL_30:
            sub_2295404B0(a1, v224);
            if ((swift_dynamicCast() & 1) == 0 || (v64 = v222[0], sub_2295404B0(v39, v224), (swift_dynamicCast() & 1) == 0))
            {
              sub_229541CB0(ObjectType, &off_283CE36C8);
              sub_2295404B0(a1, v224);
              sub_2295404B0(v39, v222);
              v88 = sub_22A4DD05C();
              v89 = sub_22A4DDCEC();
              if (os_log_type_enabled(v88, v89))
              {
                v90 = swift_slowAlloc();
                v91 = swift_slowAlloc();
                v221 = v91;
                *v90 = 136315394;
                v92 = v225;
                v93 = __swift_project_boxed_opaque_existential_0(v224, v225);
                v94 = *(*(v92 - 8) + 64);
                MEMORY[0x28223BE20](v93);
                (*(v96 + 16))(&v214 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0));
                v97 = sub_22A4DD66C();
                v99 = v98;
                __swift_destroy_boxed_opaque_existential_0(v224);
                v100 = sub_2295A3E30(v97, v99, &v221);

                *(v90 + 4) = v100;
                *(v90 + 12) = 2080;
                v101 = v223;
                v102 = __swift_project_boxed_opaque_existential_0(v222, v223);
                v103 = *(*(v101 - 8) + 64);
                MEMORY[0x28223BE20](v102);
                (*(v105 + 16))(&v214 - ((v104 + 15) & 0xFFFFFFFFFFFFFFF0));
                v106 = sub_22A4DD66C();
                v108 = v107;
                __swift_destroy_boxed_opaque_existential_0(v222);
                v109 = sub_2295A3E30(v106, v108, &v221);

                *(v90 + 14) = v109;
                _os_log_impl(&dword_229538000, v88, v89, "Comparing UInt type, but couldn't cast all values: (%s) (%s)", v90, 0x16u);
                swift_arrayDestroy();
                MEMORY[0x22AAD4E50](v91, -1, -1);
                MEMORY[0x22AAD4E50](v90, -1, -1);

                (*(v220 + 8))(v23, v219);
                goto LABEL_57;
              }

              (*(v220 + 8))(v23, v219);
              goto LABEL_56;
            }

            goto LABEL_24;
          }

          v87 = sub_22A4DE60C();

          v39 = a2;
          if (v87)
          {
            goto LABEL_30;
          }

          v110 = *MEMORY[0x277CD5118];
          if (sub_22A4DD5EC() == a3 && v111 == a4)
          {

            goto LABEL_39;
          }

          v112 = sub_22A4DE60C();

          if (v112)
          {
LABEL_39:
            sub_2295404B0(a1, v224);
            if (swift_dynamicCast())
            {
              v113 = *v222;
              sub_2295404B0(a2, v224);
              v114 = swift_dynamicCast();
              v115 = v217;
              if (v114)
              {
                v41 = v113 == *v222;
                return v41 & 1;
              }
            }

            else
            {
              v115 = v217;
            }

            sub_229541CB0(ObjectType, &off_283CE36C8);
            sub_2295404B0(a1, v224);
            sub_2295404B0(a2, v222);
            v116 = sub_22A4DD05C();
            v117 = sub_22A4DDCEC();
            if (os_log_type_enabled(v116, v117))
            {
              v118 = swift_slowAlloc();
              v119 = swift_slowAlloc();
              v221 = v119;
              *v118 = 136315394;
              v120 = v225;
              v121 = __swift_project_boxed_opaque_existential_0(v224, v225);
              v122 = *(*(v120 - 8) + 64);
              MEMORY[0x28223BE20](v121);
              (*(v124 + 16))(&v214 - ((v123 + 15) & 0xFFFFFFFFFFFFFFF0));
              v125 = sub_22A4DD66C();
              v127 = v126;
              __swift_destroy_boxed_opaque_existential_0(v224);
              v128 = sub_2295A3E30(v125, v127, &v221);

              *(v118 + 4) = v128;
              *(v118 + 12) = 2080;
              v129 = v223;
              v130 = __swift_project_boxed_opaque_existential_0(v222, v223);
              v131 = *(*(v129 - 8) + 64);
              MEMORY[0x28223BE20](v130);
              (*(v133 + 16))(&v214 - ((v132 + 15) & 0xFFFFFFFFFFFFFFF0));
              v134 = sub_22A4DD66C();
              v136 = v135;
              __swift_destroy_boxed_opaque_existential_0(v222);
              v137 = sub_2295A3E30(v134, v136, &v221);

              *(v118 + 14) = v137;
              _os_log_impl(&dword_229538000, v116, v117, "Comparing Double type, but couldn't cast all values: (%s) (%s)", v118, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x22AAD4E50](v119, -1, -1);
              MEMORY[0x22AAD4E50](v118, -1, -1);

              (*(v220 + 8))(v115, v219);
              goto LABEL_57;
            }

            (*(v220 + 8))(v115, v219);
            goto LABEL_56;
          }

          v138 = *MEMORY[0x277CD5150];
          if (sub_22A4DD5EC() == a3 && v139 == a4)
          {

            v26 = v18;
LABEL_50:
            sub_2295404B0(a1, v224);
            if (swift_dynamicCast())
            {
              v141 = *v222;
              sub_2295404B0(a2, v224);
              if (swift_dynamicCast())
              {
                v41 = v141 == *v222;
                return v41 & 1;
              }
            }

            sub_229541CB0(ObjectType, &off_283CE36C8);
            sub_2295404B0(a1, v224);
            sub_2295404B0(a2, v222);
            v65 = sub_22A4DD05C();
            v142 = sub_22A4DDCEC();
            if (os_log_type_enabled(v65, v142))
            {
              v67 = swift_slowAlloc();
              v68 = swift_slowAlloc();
              v221 = v68;
              *v67 = 136315394;
              v143 = v225;
              v144 = __swift_project_boxed_opaque_existential_0(v224, v225);
              v145 = *(*(v143 - 8) + 64);
              MEMORY[0x28223BE20](v144);
              (*(v147 + 16))(&v214 - ((v146 + 15) & 0xFFFFFFFFFFFFFFF0));
              v148 = sub_22A4DD66C();
              v150 = v149;
              __swift_destroy_boxed_opaque_existential_0(v224);
              v151 = sub_2295A3E30(v148, v150, &v221);

              *(v67 + 4) = v151;
              *(v67 + 12) = 2080;
              v152 = v223;
              v153 = __swift_project_boxed_opaque_existential_0(v222, v223);
              v154 = *(*(v152 - 8) + 64);
              MEMORY[0x28223BE20](v153);
              (*(v156 + 16))(&v214 - ((v155 + 15) & 0xFFFFFFFFFFFFFFF0));
              v157 = sub_22A4DD66C();
              v159 = v158;
              __swift_destroy_boxed_opaque_existential_0(v222);
              v160 = sub_2295A3E30(v157, v159, &v221);

              *(v67 + 14) = v160;
              _os_log_impl(&dword_229538000, v65, v142, "Comparing Float type, but couldn't cast all values: (%s) (%s)", v67, 0x16u);
              goto LABEL_27;
            }

            goto LABEL_55;
          }

          v140 = sub_22A4DE60C();

          v26 = v18;
          if (v140)
          {
            goto LABEL_50;
          }

          v162 = *MEMORY[0x277CD50B0];
          if (sub_22A4DD5EC() == a3 && v163 == a4)
          {
          }

          else
          {
            v164 = sub_22A4DE60C();

            if ((v164 & 1) == 0)
            {
              v167 = v216;
              sub_229541CB0(ObjectType, &off_283CE36C8);
              sub_2295404B0(a1, v224);
              sub_2295404B0(v39, v222);

              v168 = sub_22A4DD05C();
              v169 = sub_22A4DDCEC();

              if (os_log_type_enabled(v168, v169))
              {
                v170 = swift_slowAlloc();
                v171 = swift_slowAlloc();
                v221 = v171;
                *v170 = 136315650;
                *(v170 + 4) = sub_2295A3E30(a3, a4, &v221);
                *(v170 + 12) = 2080;
                v172 = v225;
                v173 = __swift_project_boxed_opaque_existential_0(v224, v225);
                v174 = *(*(v172 - 8) + 64);
                MEMORY[0x28223BE20](v173);
                (*(v176 + 16))(&v214 - ((v175 + 15) & 0xFFFFFFFFFFFFFFF0));
                v177 = sub_22A4DD66C();
                v179 = v178;
                __swift_destroy_boxed_opaque_existential_0(v224);
                v180 = sub_2295A3E30(v177, v179, &v221);

                *(v170 + 14) = v180;
                *(v170 + 22) = 2080;
                v181 = v223;
                v182 = __swift_project_boxed_opaque_existential_0(v222, v223);
                v183 = *(*(v181 - 8) + 64);
                MEMORY[0x28223BE20](v182);
                (*(v185 + 16))(&v214 - ((v184 + 15) & 0xFFFFFFFFFFFFFFF0));
                v186 = sub_22A4DD66C();
                v188 = v187;
                __swift_destroy_boxed_opaque_existential_0(v222);
                v189 = sub_2295A3E30(v186, v188, &v221);

                *(v170 + 24) = v189;
                _os_log_impl(&dword_229538000, v168, v169, "Attempted to compare unsupported type: (%s) values: (%s) (%s)", v170, 0x20u);
                swift_arrayDestroy();
                MEMORY[0x22AAD4E50](v171, -1, -1);
                MEMORY[0x22AAD4E50](v170, -1, -1);

                (*(v220 + 8))(v167, v219);
                goto LABEL_57;
              }

              (*(v220 + 8))(v167, v219);
              goto LABEL_56;
            }
          }

          sub_2295404B0(a1, v224);
          sub_229562F68(0, &unk_27D880900, 0x277CBEA60);
          if (swift_dynamicCast())
          {
            v165 = v222[0];
            sub_2295404B0(a2, v224);
            if (swift_dynamicCast())
            {
              v166 = v222[0];
              sub_229562F68(0, &qword_281401760, 0x277D82BB8);
              v41 = sub_22A4DDEDC();

              return v41 & 1;
            }
          }

          v190 = v215;
          sub_229541CB0(ObjectType, &off_283CE36C8);
          sub_2295404B0(a1, v224);
          v191 = v190;
          sub_2295404B0(a2, v222);
          v192 = sub_22A4DD05C();
          v193 = sub_22A4DDCEC();
          if (os_log_type_enabled(v192, v193))
          {
            v194 = swift_slowAlloc();
            v195 = swift_slowAlloc();
            v221 = v195;
            *v194 = 136315394;
            v196 = v225;
            v197 = __swift_project_boxed_opaque_existential_0(v224, v225);
            v198 = *(*(v196 - 8) + 64);
            MEMORY[0x28223BE20](v197);
            (*(v200 + 16))(&v214 - ((v199 + 15) & 0xFFFFFFFFFFFFFFF0));
            v201 = sub_22A4DD66C();
            v203 = v202;
            __swift_destroy_boxed_opaque_existential_0(v224);
            v204 = sub_2295A3E30(v201, v203, &v221);

            *(v194 + 4) = v204;
            *(v194 + 12) = 2080;
            v205 = v223;
            v206 = __swift_project_boxed_opaque_existential_0(v222, v223);
            v207 = *(*(v205 - 8) + 64);
            MEMORY[0x28223BE20](v206);
            (*(v209 + 16))(&v214 - ((v208 + 15) & 0xFFFFFFFFFFFFFFF0));
            v210 = sub_22A4DD66C();
            v212 = v211;
            __swift_destroy_boxed_opaque_existential_0(v222);
            v213 = sub_2295A3E30(v210, v212, &v221);

            *(v194 + 14) = v213;
            _os_log_impl(&dword_229538000, v192, v193, "Comparing Array type, but couldn't cast all values: (%s) (%s)", v194, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x22AAD4E50](v195, -1, -1);
            MEMORY[0x22AAD4E50](v194, -1, -1);

            (*(v220 + 8))(v191, v219);
            goto LABEL_57;
          }

          (*(v220 + 8))(v191, v219);
LABEL_56:
          __swift_destroy_boxed_opaque_existential_0(v224);
          __swift_destroy_boxed_opaque_existential_0(v222);
          goto LABEL_57;
        }
      }

      sub_2295404B0(a1, v224);
      if (swift_dynamicCast())
      {
        v64 = v222[0];
        sub_2295404B0(a2, v224);
        if (swift_dynamicCast())
        {
LABEL_24:
          v41 = v64 == v222[0];
          return v41 & 1;
        }
      }

      sub_229541CB0(ObjectType, &off_283CE36C8);
      sub_2295404B0(a1, v224);
      sub_2295404B0(a2, v222);
      v65 = sub_22A4DD05C();
      v66 = sub_22A4DDCEC();
      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        v221 = v68;
        *v67 = 136315394;
        v69 = v225;
        v70 = __swift_project_boxed_opaque_existential_0(v224, v225);
        v71 = *(*(v69 - 8) + 64);
        MEMORY[0x28223BE20](v70);
        (*(v73 + 16))(&v214 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0));
        v74 = sub_22A4DD66C();
        v76 = v75;
        __swift_destroy_boxed_opaque_existential_0(v224);
        v77 = sub_2295A3E30(v74, v76, &v221);

        *(v67 + 4) = v77;
        *(v67 + 12) = 2080;
        v78 = v223;
        v79 = __swift_project_boxed_opaque_existential_0(v222, v223);
        v80 = *(*(v78 - 8) + 64);
        MEMORY[0x28223BE20](v79);
        (*(v82 + 16))(&v214 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0));
        v83 = sub_22A4DD66C();
        v85 = v84;
        __swift_destroy_boxed_opaque_existential_0(v222);
        v86 = sub_2295A3E30(v83, v85, &v221);

        *(v67 + 14) = v86;
        _os_log_impl(&dword_229538000, v65, v66, "Comparing Int type, but couldn't cast all values: (%s) (%s)", v67, 0x16u);
LABEL_27:
        swift_arrayDestroy();
        MEMORY[0x22AAD4E50](v68, -1, -1);
        MEMORY[0x22AAD4E50](v67, -1, -1);

        (*(v220 + 8))(v26, v219);
        goto LABEL_57;
      }

LABEL_55:

      (*(v220 + 8))(v26, v219);
      goto LABEL_56;
    }
  }

  sub_2295404B0(a1, v224);
  if ((swift_dynamicCast() & 1) == 0 || (v40 = v222[0], sub_2295404B0(a2, v224), (swift_dynamicCast() & 1) == 0))
  {
    sub_229541CB0(ObjectType, &off_283CE36C8);
    sub_2295404B0(a1, v224);
    sub_2295404B0(a2, v222);
    v42 = sub_22A4DD05C();
    v43 = sub_22A4DDCEC();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v221 = v45;
      *v44 = 136315394;
      v46 = v225;
      v47 = __swift_project_boxed_opaque_existential_0(v224, v225);
      v48 = *(*(v46 - 8) + 64);
      MEMORY[0x28223BE20](v47);
      (*(v50 + 16))(&v214 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0));
      v51 = sub_22A4DD66C();
      v53 = v52;
      __swift_destroy_boxed_opaque_existential_0(v224);
      v54 = sub_2295A3E30(v51, v53, &v221);

      *(v44 + 4) = v54;
      *(v44 + 12) = 2080;
      v55 = v223;
      v56 = __swift_project_boxed_opaque_existential_0(v222, v223);
      v57 = *(*(v55 - 8) + 64);
      MEMORY[0x28223BE20](v56);
      (*(v59 + 16))(&v214 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0));
      v60 = sub_22A4DD66C();
      v62 = v61;
      __swift_destroy_boxed_opaque_existential_0(v222);
      v63 = sub_2295A3E30(v60, v62, &v221);

      *(v44 + 14) = v63;
      _os_log_impl(&dword_229538000, v42, v43, "Comparing Bool type, but couldn't cast all values: (%s (%s)", v44, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v45, -1, -1);
      MEMORY[0x22AAD4E50](v44, -1, -1);

      (*(v220 + 8))(v28, v219);
LABEL_57:
      v41 = 0;
      return v41 & 1;
    }

    (*(v220 + 8))(v28, v219);
    goto LABEL_56;
  }

  v41 = v40 ^ LOBYTE(v222[0]) ^ 1;
  return v41 & 1;
}

uint64_t sub_22975C7CC()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 120);

  v3 = *(v0 + 128);
  swift_unknownObjectRelease();
  v4 = *(v0 + 136);

  v5 = *(v0 + 144);

  v6 = *(v0 + 160);

  v7 = *(v0 + 168);

  sub_2296B874C(v0 + 192);
  v8 = *(v0 + 208);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_22975C84C()
{
  sub_22975C7CC();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_22975C8B8(void *a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_22A4DD07C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_229541CB0(ObjectType, &off_283CE36C8);
  v10 = a1;
  v11 = sub_22A4DD05C();
  v12 = sub_22A4DDCDC();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412546;
    *(v13 + 4) = v10;
    *v14 = v10;
    *(v13 + 12) = 2048;
    *(v13 + 14) = a2;
    v15 = v10;
    _os_log_impl(&dword_229538000, v11, v12, "Device %@ state changed to %lu", v13, 0x16u);
    sub_22953EAE4(v14, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v14, -1, -1);
    MEMORY[0x22AAD4E50](v13, -1, -1);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_22975CAE4(void *a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v51 - v9;
  v11 = sub_22A4DD07C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_229541CB0(ObjectType, &off_283CE36C8);

  v16 = a1;
  v17 = sub_22A4DD05C();
  v18 = sub_22A4DDCDC();

  v19 = os_log_type_enabled(v17, v18);
  v55 = v10;
  v56 = v3;
  v54 = v16;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v53 = v12;
    v21 = v20;
    v22 = swift_slowAlloc();
    v52 = v11;
    v23 = v22;
    v24 = swift_slowAlloc();
    v57[0] = v24;
    *v21 = 136315394;
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87C410, &qword_22A576EE0);
    v26 = MEMORY[0x22AAD0A20](a2, v25);
    v28 = sub_2295A3E30(v26, v27, v57);

    *(v21 + 4) = v28;
    *(v21 + 12) = 2112;
    *(v21 + 14) = v16;
    *v23 = v16;
    v29 = v16;
    _os_log_impl(&dword_229538000, v17, v18, "Received attribute report %s for device %@", v21, 0x16u);
    sub_22953EAE4(v23, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v23, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v24);
    MEMORY[0x22AAD4E50](v24, -1, -1);
    MEMORY[0x22AAD4E50](v21, -1, -1);

    result = (*(v53 + 8))(v15, v52);
  }

  else
  {

    result = (*(v12 + 8))(v15, v11);
  }

  v31 = MEMORY[0x277D84F90];
  v58 = MEMORY[0x277D84F90];
  v32 = *(a2 + 16);
  if (!v32)
  {
    goto LABEL_20;
  }

  v33 = 0;
  v34 = a2 + 32;
  v35 = *MEMORY[0x277CD50B8];
  do
  {
    v36 = v33;
    while (1)
    {
      if (v36 >= v32)
      {
        __break(1u);
LABEL_22:
        __break(1u);
        return result;
      }

      v33 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        goto LABEL_22;
      }

      v37 = *(v34 + 8 * v36);
      v38 = sub_22A4DD5EC();
      v40 = v39;
      if (*(v37 + 16))
      {
        v41 = v38;

        v42 = sub_229543DBC(v41, v40);
        v44 = v43;

        if (v44)
        {
          break;
        }
      }

LABEL_8:
      ++v36;
      if (v33 == v32)
      {
        goto LABEL_20;
      }
    }

    sub_2295404B0(*(v37 + 56) + 32 * v42, v57);

    sub_229562F68(0, &qword_27D87CF48, 0x277CD51C0);
    result = swift_dynamicCast();
    if ((result & 1) == 0 || !v57[4])
    {
      goto LABEL_8;
    }

    MEMORY[0x22AAD09E0]();
    if (*((v58 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v58 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v45 = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_22A4DD85C();
    }

    result = sub_22A4DD87C();
    v31 = v58;
  }

  while (v33 != v32);
LABEL_20:
  v46 = sub_22A4DD9DC();
  v47 = v55;
  (*(*(v46 - 8) + 56))(v55, 1, 1, v46);
  v48 = swift_allocObject();
  v48[2] = 0;
  v48[3] = 0;
  v48[4] = v56;
  v48[5] = v31;
  v49 = v54;
  v48[6] = v54;
  v50 = v49;

  sub_22957F3C0(0, 0, v47, &unk_22A581DE0, v48);
}

uint64_t sub_22975CFB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_22975CFD4, 0, 0);
}

uint64_t sub_22975CFD4()
{
  v1 = *(v0 + 16);
  *(v0 + 40) = [*(v0 + 32) nodeID];

  return MEMORY[0x2822009F8](sub_22975D054, v1, 0);
}

uint64_t sub_22975D054()
{
  v1 = v0[5];
  v2 = v0[2];
  sub_22975D0C0(v0[3], v1);

  v3 = v0[1];

  return v3();
}

void sub_22975D0C0(unint64_t a1, int64_t a2)
{
  ObjectType = swift_getObjectType();
  v72 = sub_22A4DD07C();
  v71 = *(v72 - 8);
  v4 = *(v71 + 64);
  MEMORY[0x28223BE20](v72);
  v73 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = a1;
  if (a1 >> 62)
  {
    goto LABEL_63;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; v5 = v77)
  {
    v8 = 0;
    v78 = v5 & 0xC000000000000001;
    v75 = v5 & 0xFFFFFFFFFFFFFF8;
    v74 = v5 + 32;
    v9 = &selRef_microLocationScanTriggerTypeForLogEventObserver_;
    v83 = a2;
    v76 = i;
    while (1)
    {
      if (v78)
      {
        v10 = v8;
        v11 = MEMORY[0x22AAD13F0](v8);
        v12 = __OFADD__(v10, 1);
        v13 = v10 + 1;
        if (v12)
        {
          goto LABEL_61;
        }
      }

      else
      {
        if (v8 >= *(v75 + 16))
        {
          goto LABEL_62;
        }

        v14 = v8;
        v11 = *(v74 + 8 * v8);
        v12 = __OFADD__(v14, 1);
        v13 = v14 + 1;
        if (v12)
        {
          goto LABEL_61;
        }
      }

      v96 = v11;
      v80 = v13;
      v82 = *(v79 + 136);
      if ((v82 & 0xC000000000000001) != 0)
      {

        swift_unknownObjectRetain();
        sub_22A4DE09C();
        sub_229562F68(0, &unk_27D8808F0, 0x277CD1B58);
        sub_22959E62C(&qword_27D87E468, &unk_27D8808F0, 0x277CD1B58);
        sub_22A4DDBAC();
        v15 = v102;
        v16 = v103;
        v17 = v104;
        v18 = v105;
        v19 = v106;
      }

      else
      {
        v20 = -1 << *(v82 + 32);
        v21 = v82 + 56;
        v22 = ~v20;
        v23 = -v20;
        v24 = v23 < 64 ? ~(-1 << v23) : -1;
        v25 = v24 & *(v82 + 56);
        v26 = v82;
        swift_bridgeObjectRetain_n();
        v17 = v22;
        v18 = 0;
        v15 = v26;
        v16 = v21;
        v19 = v25;
      }

      v81 = v17;
      v27 = (v17 + 64) >> 6;
      v90 = v15;
      v88 = v27;
      v89 = v16;
LABEL_19:
      v91 = v18;
      if (v15 < 0)
      {
        break;
      }

      v28 = v18;
      v29 = v19;
      if (v19)
      {
LABEL_24:
        v93 = (v29 - 1) & v29;
        v30 = *(*(v15 + 48) + ((v18 << 9) | (8 * __clz(__rbit64(v29)))));
        if (!v30)
        {
          goto LABEL_51;
        }

        goto LABEL_28;
      }

      while (1)
      {
        v18 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          goto LABEL_60;
        }

        if (v18 >= v27)
        {
          break;
        }

        v29 = *(v16 + 8 * v18);
        ++v28;
        if (v29)
        {
          goto LABEL_24;
        }
      }

LABEL_51:
      sub_22953EE84();

      v8 = v80;
      if (v80 == v76)
      {
        return;
      }
    }

    v31 = sub_22A4DE12C();
    if (!v31)
    {
      goto LABEL_51;
    }

    v100 = v31;
    sub_229562F68(0, &unk_27D8808F0, 0x277CD1B58);
    swift_dynamicCast();
    v30 = v101;
    v93 = v19;
    if (!v101)
    {
      goto LABEL_51;
    }

LABEL_28:
    v87 = v19;
    v32 = v30;
    v33 = sub_229562F68(0, &qword_281401760, 0x277D82BB8);
    v34 = [v32 v9[464]];
    v35 = sub_22A4DDEDC();

    if ((v35 & 1) == 0)
    {

      v19 = v93;
LABEL_18:
      v16 = v89;
      v15 = v90;
      v27 = v88;
      goto LABEL_19;
    }

    v86 = v32;
    v36 = [v32 attributePaths];
    v37 = sub_229562F68(0, &qword_27D87CF48, 0x277CD51C0);
    sub_22959E62C(&unk_27D87E450, &qword_27D87CF48, 0x277CD51C0);
    v38 = sub_22A4DDB6C();

    v97 = v33;
    v85 = v38;
    v92 = v37;
    if ((v38 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      sub_22A4DE09C();
      sub_22A4DDBAC();
      v38 = v107;
      v39 = v108;
      v40 = v109;
      a2 = v110;
      v41 = v111;
    }

    else
    {
      v42 = -1 << *(v38 + 32);
      v39 = v38 + 56;
      v40 = ~v42;
      v43 = -v42;
      if (v43 < 64)
      {
        v44 = ~(-1 << v43);
      }

      else
      {
        v44 = -1;
      }

      v41 = v44 & *(v38 + 56);

      a2 = 0;
    }

    v84 = v40;
    v45 = (v40 + 64) >> 6;
    v98 = v38;
    while (1)
    {
      v46 = a2;
      if (v38 < 0)
      {
        v51 = sub_22A4DE12C();
        if (!v51 || (v100 = v51, swift_dynamicCast(), v50 = v101, v49 = v41, !v101))
        {
LABEL_50:

          sub_22953EE84();

          v19 = v93;
          a2 = v83;
          v9 = &selRef_microLocationScanTriggerTypeForLogEventObserver_;
          goto LABEL_18;
        }

        goto LABEL_46;
      }

      v47 = a2;
      v48 = v41;
      if (!v41)
      {
        break;
      }

LABEL_42:
      v49 = (v48 - 1) & v48;
      v50 = *(*(v38 + 48) + ((a2 << 9) | (8 * __clz(__rbit64(v48)))));
      if (!v50)
      {
        goto LABEL_50;
      }

LABEL_46:
      v99 = v49;
      v94 = v41;
      v95 = v46;
      v52 = [v50 endpoint];
      v53 = v96;
      v54 = [v96 endpoint];
      v55 = sub_22A4DDEDC();

      if (v55 & 1) != 0 && (v56 = [v50 cluster], v57 = objc_msgSend(v53, sel_cluster), v58 = sub_22A4DDEDC(), v56, v57, (v58))
      {
        v59 = [v50 attribute];
        v60 = [v53 attribute];
        v61 = sub_22A4DDEDC();

        v38 = v98;
        v41 = v99;
        if (v61)
        {

          sub_22953EE84();

          sub_22953EE84();

          sub_229541CB0(ObjectType, &off_283CE36C8);
          v62 = v96;
          v63 = sub_22A4DD05C();
          v64 = sub_22A4DDCDC();

          if (os_log_type_enabled(v63, v64))
          {
            v66 = swift_slowAlloc();
            v67 = swift_slowAlloc();
            *v66 = 138412290;
            *(v66 + 4) = v62;
            *v67 = v62;
            v68 = v62;
            _os_log_impl(&dword_229538000, v63, v64, "Detected relevant matter attribute change for %@, refreshing on state", v66, 0xCu);
            sub_22953EAE4(v67, &qword_27D87D7D0, &unk_22A578D90);
            MEMORY[0x22AAD4E50](v67, -1, -1);
            MEMORY[0x22AAD4E50](v66, -1, -1);
          }

          (*(v71 + 8))(v73, v72);
          sub_2297564E4();

          return;
        }
      }

      else
      {

        v38 = v98;
        v41 = v99;
      }
    }

    while (1)
    {
      a2 = v47 + 1;
      if (__OFADD__(v47, 1))
      {
        break;
      }

      if (a2 >= v45)
      {
        goto LABEL_50;
      }

      v48 = *(v39 + 8 * a2);
      ++v47;
      if (v48)
      {
        goto LABEL_42;
      }
    }

    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    i = sub_22A4DE0EC();
  }
}

uint64_t sub_22975DA38(void *a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_22A4DD07C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_229541CB0(ObjectType, &off_283CE36C8);

  v10 = a1;
  v11 = sub_22A4DD05C();
  v12 = sub_22A4DDCDC();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v23 = v5;
    v24 = v15;
    v16 = v15;
    *v13 = 136315394;
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87C410, &qword_22A576EE0);
    v18 = MEMORY[0x22AAD0A20](a2, v17);
    v20 = sub_2295A3E30(v18, v19, &v24);

    *(v13 + 4) = v20;
    *(v13 + 12) = 2112;
    *(v13 + 14) = v10;
    *v14 = v10;
    v21 = v10;
    _os_log_impl(&dword_229538000, v11, v12, "Received event report %s for device %@", v13, 0x16u);
    sub_22953EAE4(v14, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v14, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x22AAD4E50](v16, -1, -1);
    MEMORY[0x22AAD4E50](v13, -1, -1);

    return (*(v6 + 8))(v9, v23);
  }

  else
  {

    return (*(v6 + 8))(v9, v5);
  }
}

uint64_t sub_22975DCA8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(id, uint64_t))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87C410, &qword_22A576EE0);
  v7 = sub_22A4DD83C();
  v8 = a3;

  a5(v8, v7);
}

uint64_t sub_22975DD4C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_229586D38;

  return sub_22975CFB0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_22975DE14(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880938, &qword_22A586CE0);
    v2 = sub_22A4DE3FC();
    v20 = v2;
    sub_22A4DE35C();
    v3 = sub_22A4DE38C();
    if (v3)
    {
      v4 = v3;
      sub_229562F68(0, &qword_281401770, 0x277CCABB0);
      v5 = v4;
      do
      {
        v18 = v5;
        swift_dynamicCast();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880910, &qword_22A581DE8);
        swift_dynamicCast();
        v13 = *(v2 + 16);
        if (*(v2 + 24) <= v13)
        {
          sub_229894FF0(v13 + 1, 1);
        }

        v2 = v20;
        v6 = *(v20 + 40);
        result = sub_22A4DDECC();
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
        v5 = sub_22A4DE38C();
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

void sub_22975E088(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D220, &unk_22A5785F0);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 40);
      if (v4 != a3)
      {
LABEL_5:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D228, &qword_22A578170);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

char *sub_22975E184(uint64_t a1, char *a2, uint64_t (*a3)(uint64_t *, char *, uint64_t, uint64_t))
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v6 = sub_22A4DE0EC();
  if (!v6)
  {
    return MEMORY[0x277D84F90];
  }

  while (1)
  {
    a2 = (a2)(v6, 0);

    a3 = a3(&v8, a2 + 32, v6, a1);
    sub_22953EE84();
    if (a3 == v6)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v6 = *(a1 + 16);
    if (!v6)
    {
      return MEMORY[0x277D84F90];
    }
  }

  return a2;
}

uint64_t sub_22975E244(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D2A0, &unk_22A578BD0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v20 - v5;
  v7 = sub_22A4DB7DC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  result = MEMORY[0x28223BE20](v7);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    v13 = 1 << *(a1 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(a1 + 56);
    v16 = (v13 + 63) >> 6;
    v20[0] = v8 + 8;
    v20[1] = v8 + 16;

    for (i = 0; v15; result = sub_22953EAE4(v6, &unk_27D87D2A0, &unk_22A578BD0))
    {
      v18 = i;
LABEL_10:
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      (*(v8 + 16))(v12, *(a1 + 48) + *(v8 + 72) * (v19 | (v18 << 6)), v7);
      sub_229578E38(v12, v6);
      (*(v8 + 8))(v12, v7);
    }

    while (1)
    {
      v18 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v18 >= v16)
      {
      }

      v15 = *(a1 + 56 + 8 * v18);
      ++i;
      if (v15)
      {
        i = v18;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_22975E460(uint64_t a1, unint64_t *a2, uint64_t *a3, unint64_t *a4, uint64_t (*a5)(id))
{
  v8 = *v5;
  if ((*v5 & 0xC000000000000001) != 0)
  {
    if (v8 < 0)
    {
      v9 = *v5;
    }

    if (!sub_22A4DE0EC())
    {
      return;
    }
  }

  else if (!*(v8 + 16))
  {
    return;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_22A4DE09C();
    sub_229562F68(0, a2, a3);
    sub_22959E62C(a4, a2, a3);
    sub_22A4DDBAC();
    a1 = v28;
    v10 = v29;
    v11 = v30;
    v12 = v31;
    v13 = v32;
  }

  else
  {
    v14 = -1 << *(a1 + 32);
    v10 = a1 + 56;
    v11 = ~v14;
    v15 = -v14;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v13 = v16 & *(a1 + 56);

    v12 = 0;
  }

  v17 = (v11 + 64) >> 6;
  if (a1 < 0)
  {
    goto LABEL_20;
  }

  while (1)
  {
    v18 = v12;
    v19 = v13;
    v20 = v12;
    if (!v13)
    {
      break;
    }

LABEL_18:
    v21 = (v19 - 1) & v19;
    v22 = *(*(a1 + 48) + ((v20 << 9) | (8 * __clz(__rbit64(v19)))));
    if (!v22)
    {
LABEL_24:
      sub_22953EE84();
      return;
    }

    while (1)
    {
      v23 = a5(v22);

      v12 = v20;
      v13 = v21;
      if ((a1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_20:
      if (sub_22A4DE12C())
      {
        sub_229562F68(0, a2, a3);
        swift_dynamicCast();
        v22 = v27;
        v20 = v12;
        v21 = v13;
        if (v27)
        {
          continue;
        }
      }

      goto LABEL_24;
    }
  }

  while (1)
  {
    v20 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v20 >= v17)
    {
      goto LABEL_24;
    }

    v19 = *(v10 + 8 * v20);
    ++v18;
    if (v19)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
}

uint64_t sub_22975E690(unint64_t a1, uint64_t a2)
{
  v2 = a2;
  v55[2] = *MEMORY[0x277D85DE8];
  if (*(a2 + 16))
  {
    v55[0] = a1;
    v46 = a1 >> 62;
    if (a1 >> 62)
    {
LABEL_47:
      v37 = a1;
      v3 = sub_22A4DE0EC();
      a1 = v37;
    }

    else
    {
      v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v51 = a1;

    if (v3)
    {
      v4 = 0;
      v52 = v51 & 0xC000000000000001;
      v50 = v51 & 0xFFFFFFFFFFFFFF8;
      v48 = v51 + 32;
      v54 = (v2 + 56);
      while (1)
      {
        if (v52)
        {
          a1 = MEMORY[0x22AAD13F0](v4, v51);
        }

        else
        {
          if (v4 >= *(v50 + 16))
          {
            goto LABEL_46;
          }

          a1 = *(v48 + 8 * v4);
        }

        v53 = a1;
        v5 = __OFADD__(v4++, 1);
        if (v5)
        {
          goto LABEL_45;
        }

        v6 = *(v2 + 40);
        v7 = sub_22A4DDECC();
        v8 = -1 << *(v2 + 32);
        v9 = v7 & ~v8;
        v10 = v9 >> 6;
        v11 = 1 << v9;
        if (((1 << v9) & v54[v9 >> 6]) != 0)
        {
          break;
        }

LABEL_6:

        if (v4 == v3)
        {
          goto LABEL_40;
        }
      }

      v12 = ~v8;
      sub_229562F68(0, &qword_281401920, off_278666038);
      while (1)
      {
        v13 = *(*(v2 + 48) + 8 * v9);
        v14 = sub_22A4DDEDC();

        if (v14)
        {
          break;
        }

        v9 = (v9 + 1) & v12;
        v10 = v9 >> 6;
        v11 = 1 << v9;
        if (((1 << v9) & v54[v9 >> 6]) == 0)
        {
          goto LABEL_6;
        }
      }

      v55[1] = v4;

      v16 = *(v2 + 32);
      v17 = v16 & 0x3F;
      v18 = ((1 << v16) + 63) >> 6;
      v44 = v18;
      if (v17 <= 0xD)
      {
LABEL_19:
        v45 = &v43;
        MEMORY[0x28223BE20](v15);
        v20 = &v43 - ((v19 + 15) & 0x3FFFFFFFFFFFFFF0);
        a1 = memcpy(v20, v54, v19);
        v21 = *(v2 + 16);
        v22 = *&v20[8 * v10] & ~v11;
        v49 = v20;
        *&v20[8 * v10] = v22;
        v47 = v21 - 1;
        if (v46)
        {
          a1 = sub_22A4DE0EC();
          v53 = a1;
        }

        else
        {
          v53 = *(v50 + 16);
        }

        while (1)
        {
          if (v4 == v53)
          {
            v2 = sub_22966F34C(v49, v44, v47, v2);
            goto LABEL_40;
          }

          if (v52)
          {
            a1 = MEMORY[0x22AAD13F0](v4, v51);
          }

          else
          {
            if ((v4 & 0x8000000000000000) != 0)
            {
              goto LABEL_43;
            }

            if (v4 >= *(v50 + 16))
            {
              goto LABEL_44;
            }

            a1 = *(v48 + 8 * v4);
          }

          v23 = a1;
          v5 = __OFADD__(v4++, 1);
          if (v5)
          {
            break;
          }

          v24 = *(v2 + 40);
          v25 = sub_22A4DDECC();
          v26 = -1 << *(v2 + 32);
          v27 = v25 & ~v26;
          v28 = v27 >> 6;
          v29 = 1 << v27;
          if (((1 << v27) & v54[v27 >> 6]) != 0)
          {
            v30 = ~v26;
            while (1)
            {
              v31 = *(*(v2 + 48) + 8 * v27);
              v32 = sub_22A4DDEDC();

              if (v32)
              {
                break;
              }

              v27 = (v27 + 1) & v30;
              v28 = v27 >> 6;
              v29 = 1 << v27;
              if (((1 << v27) & v54[v27 >> 6]) == 0)
              {
                goto LABEL_22;
              }
            }

            v33 = v49[v28];
            v49[v28] = v33 & ~v29;
            if ((v33 & v29) != 0)
            {
              v34 = v47 - 1;
              if (__OFSUB__(v47, 1))
              {
                __break(1u);
              }

              --v47;
              if (!v34)
              {

                v2 = MEMORY[0x277D84FA0];
                goto LABEL_40;
              }
            }
          }

          else
          {
LABEL_22:
          }
        }

        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

      v38 = 8 * v18;

      v39 = v38;
      if (swift_stdlib_isStackAllocationSafe())
      {

        goto LABEL_19;
      }

      v40 = swift_slowAlloc();
      memcpy(v40, v54, v39);
      sub_22976033C(v40, v44, v2, v9, v55);
      v42 = v41;

      MEMORY[0x22AAD4E50](v40, -1, -1);

      v2 = v42;
    }

    else
    {
LABEL_40:
    }
  }

  else
  {

    v2 = MEMORY[0x277D84FA0];
  }

  v35 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t sub_22975EB68(uint64_t a1, uint64_t a2)
{
  v98 = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D2A0, &unk_22A578BD0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = (&v69 - v10);
  v12 = sub_22A4DB7DC();
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v89 = (&v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = MEMORY[0x28223BE20](v14);
  v18 = (&v69 - v17);
  MEMORY[0x28223BE20](v16);
  v84 = (&v69 - v20);
  if (!*(a2 + 16))
  {

    a2 = MEMORY[0x277D84FA0];
    goto LABEL_54;
  }

  v70 = v11;
  v72 = v9;
  v22 = a1 + 56;
  v21 = *(a1 + 56);
  v23 = -1 << *(a1 + 32);
  v83 = ~v23;
  if (-v23 < 64)
  {
    v24 = ~(-1 << -v23);
  }

  else
  {
    v24 = -1;
  }

  v91 = (v24 & v21);
  v76 = (63 - v23) >> 6;
  v90 = v19 + 16;
  v81 = (v19 + 48);
  v82 = (v19 + 56);
  v80 = (v19 + 32);
  v86 = (a2 + 56);
  v71 = v19;
  v92 = (v19 + 8);

  v26 = 0;
  v73 = a1;
  for (i = a1 + 56; ; v22 = i)
  {
    v27 = v91;
    v28 = v26;
    if (v91)
    {
LABEL_14:
      v2 = (v27 - 1) & v27;
      v32 = v70;
      (*(v71 + 16))(v70, *(a1 + 48) + *(v71 + 72) * (__clz(__rbit64(v27)) | (v28 << 6)), v12);
      v33 = 0;
      v30 = v28;
    }

    else
    {
      v29 = v76 <= (v26 + 1) ? v26 + 1 : v76;
      v30 = v29 - 1;
      v31 = v26;
      while (1)
      {
        v28 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          goto LABEL_57;
        }

        if (v28 >= v76)
        {
          break;
        }

        v27 = *(v22 + 8 * v28);
        ++v31;
        if (v27)
        {
          goto LABEL_14;
        }
      }

      v2 = 0;
      v33 = 1;
      v32 = v70;
    }

    v78 = *v82;
    v78(v32, v33, 1, v12);
    v93 = a1;
    v94 = v22;
    v95 = v83;
    v96 = v30;
    v97 = v2;
    v77 = *v81;
    if (v77(v32, 1, v12) == 1)
    {
      sub_22953EAE4(v32, &unk_27D87D2A0, &unk_22A578BD0);
      goto LABEL_52;
    }

    v75 = *v80;
    v75(v84, v32, v12);
    v34 = *(a2 + 40);
    v74 = sub_229763570(&qword_281403880, 255, MEMORY[0x277CC95F0]);
    v35 = sub_22A4DD4EC();
    v36 = -1 << *(a2 + 32);
    v26 = v35 & ~v36;
    v28 = v26 >> 6;
    v22 = 1 << v26;
    if (((1 << v26) & v86[v26 >> 6]) != 0)
    {
      break;
    }

    (*v92)(v84, v12);
LABEL_22:
    v26 = v30;
    v91 = v2;
  }

  v69 = v92 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v85 = ~v36;
  v37 = *(v71 + 72);
  v87 = *(v71 + 16);
  v88 = v37;
  while (1)
  {
    v87(v18, *(a2 + 48) + v88 * v26, v12);
    v38 = sub_229763570(&qword_281403870, 255, MEMORY[0x277CC95F0]);
    v39 = sub_22A4DD58C();
    v91 = *v92;
    v91(v18, v12);
    if (v39)
    {
      break;
    }

    v26 = (v26 + 1) & v85;
    v28 = v26 >> 6;
    v22 = 1 << v26;
    if (((1 << v26) & v86[v26 >> 6]) == 0)
    {
      a1 = v73;
      v91(v84, v12);
      goto LABEL_22;
    }
  }

  v85 = v38;
  v40 = (v91)(v84, v12);
  v41 = *(a2 + 32);
  v69 = ((1 << v41) + 63) >> 6;
  v25 = 8 * v69;
  a1 = v73;
  if ((v41 & 0x3Fu) > 0xD)
  {
    goto LABEL_58;
  }

  while (2)
  {
    v70 = &v69;
    MEMORY[0x28223BE20](v40);
    v43 = &v69 - ((v42 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v43, v86, v42);
    v44 = *&v43[8 * v28] & ~v22;
    v45 = *(a2 + 16);
    v84 = v43;
    *&v43[8 * v28] = v44;
    v46 = v45 - 1;
    v26 = v72;
    v47 = i;
    v48 = v76;
LABEL_26:
    v71 = v46;
    while (v2)
    {
      v49 = v30;
LABEL_38:
      v52 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v87(v26, *(a1 + 48) + (v52 | (v49 << 6)) * v88, v12);
      v53 = 0;
LABEL_39:
      v78(v26, v53, 1, v12);
      v93 = a1;
      v94 = v47;
      v95 = v83;
      v96 = v30;
      v97 = v2;
      if (v77(v26, 1, v12) == 1)
      {
        sub_22953EAE4(v26, &unk_27D87D2A0, &unk_22A578BD0);
        a2 = sub_22966F7C0(v84, v69, v71, a2);
        goto LABEL_52;
      }

      v75(v89, v26, v12);
      v54 = *(a2 + 40);
      v55 = sub_22A4DD4EC();
      v56 = a2;
      v57 = -1 << *(a2 + 32);
      v58 = v55 & ~v57;
      v28 = v58 >> 6;
      v22 = 1 << v58;
      if (((1 << v58) & v86[v58 >> 6]) != 0)
      {
        v87(v18, *(v56 + 48) + v58 * v88, v12);
        v59 = sub_22A4DD58C();
        v91(v18, v12);
        if ((v59 & 1) == 0)
        {
          v60 = ~v57;
          do
          {
            v58 = (v58 + 1) & v60;
            v28 = v58 >> 6;
            v22 = 1 << v58;
            if (((1 << v58) & v86[v58 >> 6]) == 0)
            {
              goto LABEL_27;
            }

            v87(v18, *(v56 + 48) + v58 * v88, v12);
            v61 = sub_22A4DD58C();
            v91(v18, v12);
          }

          while ((v61 & 1) == 0);
        }

        v91(v89, v12);
        v62 = v84[v28];
        v84[v28] = v62 & ~v22;
        a2 = v56;
        a1 = v73;
        v26 = v72;
        v47 = i;
        v48 = v76;
        if ((v62 & v22) != 0)
        {
          v46 = v71 - 1;
          if (__OFSUB__(v71, 1))
          {
            __break(1u);
          }

          if (v71 == 1)
          {

            a2 = MEMORY[0x277D84FA0];
            goto LABEL_52;
          }

          goto LABEL_26;
        }
      }

      else
      {
LABEL_27:
        v91(v89, v12);
        a2 = v56;
        a1 = v73;
        v26 = v72;
        v47 = i;
        v48 = v76;
      }
    }

    if (v48 <= (v30 + 1))
    {
      v50 = v30 + 1;
    }

    else
    {
      v50 = v48;
    }

    v51 = v50 - 1;
    while (1)
    {
      v49 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v49 >= v48)
      {
        v2 = 0;
        v53 = 1;
        v30 = v51;
        goto LABEL_39;
      }

      v2 = *(v47 + 8 * v49);
      ++v30;
      if (v2)
      {
        v30 = v49;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    v65 = v25;

    v84 = a2;
    v66 = v65;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v67 = v84;

      a2 = v67;
      continue;
    }

    break;
  }

  v68 = swift_slowAlloc();
  memcpy(v68, v86, v66);
  a2 = sub_22976058C(v68, v69, v84, v26, &v93);

  MEMORY[0x22AAD4E50](v68, -1, -1);
LABEL_52:
  sub_22953EE84();
LABEL_54:
  v63 = *MEMORY[0x277D85DE8];
  return a2;
}

uint64_t sub_22975F5D4(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v86 = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    v3 = MEMORY[0x277D84FA0];
    goto LABEL_63;
  }

  v4 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_22A4DE09C();
    sub_229562F68(0, &qword_281401B70, off_278666148);
    sub_22959E62C(&unk_27D87E480, &qword_281401B70, off_278666148);
    sub_22A4DDBAC();
    v4 = v81;
    v6 = v82;
    v7 = v83;
    v8 = v84;
    v9 = v85;
  }

  else
  {
    v10 = -1 << *(a1 + 32);
    v6 = a1 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(a1 + 56);

    v8 = 0;
  }

  v76 = v4;
  v77 = v6;
  v78 = v7;
  v79 = v8;
  v67 = v7;
  v13 = (v7 + 64) >> 6;
  v73 = (v3 + 56);
  v80 = v9;
  v70 = v6;
  v71 = v4;
  for (i = v13; ; v13 = i)
  {
    if (v4 < 0)
    {
      v21 = sub_22A4DE12C();
      if (!v21)
      {
        goto LABEL_62;
      }

      v74 = v21;
      sub_229562F68(0, &qword_281401B70, off_278666148);
      swift_dynamicCast();
      v19 = v75;
      v17 = v8;
      v2 = v9;
      if (!v75)
      {
        goto LABEL_62;
      }
    }

    else
    {
      v14 = v9;
      v15 = v8;
      if (v9)
      {
LABEL_20:
        v2 = (v14 - 1) & v14;
        v19 = *(*(v4 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
        v20 = v19;
        v17 = v15;
      }

      else
      {
        v16 = v13 <= (v8 + 1) ? v8 + 1 : v13;
        v17 = v16 - 1;
        v18 = v8;
        while (1)
        {
          v15 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            goto LABEL_66;
          }

          if (v15 >= v13)
          {
            break;
          }

          v14 = *(v6 + 8 * v15);
          ++v18;
          if (v14)
          {
            goto LABEL_20;
          }
        }

        v19 = 0;
        v2 = 0;
      }

      v76 = v4;
      v77 = v6;
      v78 = v67;
      v79 = v17;
      v80 = v2;
      if (!v19)
      {
        goto LABEL_62;
      }
    }

    v22 = *(v3 + 40);
    v23 = v19;
    v24 = sub_22A4DDECC();
    v25 = -1 << *(v3 + 32);
    v8 = v24 & ~v25;
    v4 = v8 >> 6;
    v15 = 1 << v8;
    if (((1 << v8) & v73[v8 >> 6]) != 0)
    {
      break;
    }

LABEL_10:

    v8 = v17;
    v9 = v2;
    v6 = v70;
    v4 = v71;
  }

  v26 = ~v25;
  v27 = sub_229562F68(0, &qword_281401B70, off_278666148);
  v28 = *(*(v3 + 48) + 8 * v8);
  v72 = v27;
  while (1)
  {
    v29 = sub_22A4DDEDC();

    if (v29)
    {
      break;
    }

    v8 = (v8 + 1) & v26;
    v4 = v8 >> 6;
    v15 = 1 << v8;
    if (((1 << v8) & v73[v8 >> 6]) == 0)
    {
      goto LABEL_10;
    }

    v28 = *(*(v3 + 48) + 8 * v8);
  }

  v31 = *(v3 + 32);
  v64 = ((1 << v31) + 63) >> 6;
  v5 = 8 * v64;
  if ((v31 & 0x3Fu) > 0xD)
  {
    goto LABEL_67;
  }

  while (2)
  {
    v65 = &v63;
    MEMORY[0x28223BE20](v30);
    v33 = &v63 - ((v32 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v33, v73, v32);
    v34 = *&v33[8 * v4] & ~v15;
    v35 = *(v3 + 16);
    v66 = v33;
    *&v33[8 * v4] = v34;
    v4 = v35 - 1;
    v37 = v70;
    v36 = v71;
    v38 = i;
LABEL_33:
    v68 = v4;
    while (v36 < 0)
    {
      v39 = sub_22A4DE12C();
      if (!v39)
      {
        goto LABEL_61;
      }

      v74 = v39;
      swift_dynamicCast();
      v40 = v75;
      if (!v75)
      {
        goto LABEL_61;
      }

LABEL_50:
      v45 = *(v3 + 40);
      v46 = sub_22A4DDECC();
      v47 = v3;
      v48 = -1 << *(v3 + 32);
      v49 = v46 & ~v48;
      v50 = v49 >> 6;
      v51 = 1 << v49;
      if (((1 << v49) & v73[v49 >> 6]) != 0)
      {
        v52 = ~v48;
        while (1)
        {
          v8 = *(*(v47 + 48) + 8 * v49);
          v53 = sub_22A4DDEDC();

          if (v53)
          {
            break;
          }

          v49 = (v49 + 1) & v52;
          v50 = v49 >> 6;
          v51 = 1 << v49;
          if (((1 << v49) & v73[v49 >> 6]) == 0)
          {
            goto LABEL_34;
          }
        }

        v54 = v66[v50];
        v66[v50] = v54 & ~v51;
        v55 = (v54 & v51) == 0;
        v3 = v47;
        v37 = v70;
        v36 = v71;
        v4 = v68;
        v38 = i;
        if (!v55)
        {
          v4 = v68 - 1;
          if (__OFSUB__(v68, 1))
          {
            __break(1u);
          }

          if (v68 == 1)
          {

            v3 = MEMORY[0x277D84FA0];
            goto LABEL_62;
          }

          goto LABEL_33;
        }
      }

      else
      {
LABEL_34:

        v3 = v47;
        v37 = v70;
        v36 = v71;
        v4 = v68;
        v38 = i;
      }
    }

    if (v2)
    {
      v15 = v17;
LABEL_48:
      v43 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v40 = *(*(v36 + 48) + ((v15 << 9) | (8 * v43)));
      v44 = v40;
      v42 = v15;
LABEL_49:
      v76 = v36;
      v77 = v37;
      v78 = v67;
      v79 = v42;
      v17 = v42;
      v80 = v2;
      if (!v40)
      {
LABEL_61:
        v3 = sub_22966FAE8(v66, v64, v4, v3);
        goto LABEL_62;
      }

      goto LABEL_50;
    }

    if (v38 <= v17 + 1)
    {
      v41 = v17 + 1;
    }

    else
    {
      v41 = v38;
    }

    v42 = v41 - 1;
    while (1)
    {
      v15 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v15 >= v38)
      {
        v40 = 0;
        v2 = 0;
        goto LABEL_49;
      }

      v2 = *(v37 + 8 * v15);
      ++v17;
      if (v2)
      {
        goto LABEL_48;
      }
    }

    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    v58 = v5;

    v59 = v58;
    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v60 = swift_slowAlloc();
  memcpy(v60, v73, v59);
  sub_229760A68(v60, v64, v3, v8, &v76);
  v62 = v61;

  MEMORY[0x22AAD4E50](v60, -1, -1);
  v3 = v62;
LABEL_62:
  sub_22953EE84();
LABEL_63:
  v56 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t sub_22975FC6C(unint64_t a1, uint64_t a2, unint64_t *a3, uint64_t *a4, unint64_t *a5, uint64_t (*a6)(unint64_t *, unint64_t, unint64_t, uint64_t), void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v74 = a4;
  v72 = a3;
  v8 = a2;
  v92 = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    v8 = MEMORY[0x277D84FA0];
    goto LABEL_63;
  }

  v9 = a1;
  v71 = a6;
  v70 = a7;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_22A4DE09C();
    v7 = sub_229562F68(0, v72, v74);
    sub_22959E62C(a5, v72, v74);
    sub_22A4DDBAC();
    v9 = v87;
    v12 = v88;
    v13 = v89;
    v14 = v90;
    v15 = v91;
  }

  else
  {
    v16 = -1 << *(a1 + 32);
    v12 = a1 + 56;
    v13 = ~v16;
    v17 = -v16;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v15 = v18 & *(a1 + 56);

    v14 = 0;
  }

  v82 = v9;
  v83 = v12;
  v84 = v13;
  v85 = v14;
  v73 = v13;
  v19 = (v13 + 64) >> 6;
  v79 = (v8 + 56);
  v86 = v15;
  v76 = v12;
  v77 = v9;
  for (i = v19; ; v19 = i)
  {
    if ((v9 & 0x8000000000000000) != 0)
    {
      v27 = sub_22A4DE12C();
      if (!v27)
      {
        goto LABEL_62;
      }

      v80 = v27;
      sub_229562F68(0, v72, v74);
      swift_dynamicCast();
      v25 = v81;
      v23 = v14;
      v7 = v15;
      if (!v81)
      {
        goto LABEL_62;
      }
    }

    else
    {
      v20 = v15;
      v21 = v14;
      if (v15)
      {
LABEL_20:
        v7 = (v20 - 1) & v20;
        v25 = *(*(v9 + 48) + ((v21 << 9) | (8 * __clz(__rbit64(v20)))));
        v26 = v25;
        v23 = v21;
      }

      else
      {
        v22 = v19 <= v14 + 1 ? v14 + 1 : v19;
        v23 = v22 - 1;
        v24 = v14;
        while (1)
        {
          v21 = v24 + 1;
          if (__OFADD__(v24, 1))
          {
            goto LABEL_66;
          }

          if (v21 >= v19)
          {
            break;
          }

          v20 = *(v12 + 8 * v21);
          ++v24;
          if (v20)
          {
            goto LABEL_20;
          }
        }

        v25 = 0;
        v7 = 0;
      }

      v82 = v9;
      v83 = v12;
      v84 = v73;
      v85 = v23;
      v86 = v7;
      if (!v25)
      {
        goto LABEL_62;
      }
    }

    v28 = *(v8 + 40);
    v29 = v25;
    v30 = sub_22A4DDECC();
    v31 = -1 << *(v8 + 32);
    v15 = v30 & ~v31;
    v9 = v15 >> 6;
    v21 = 1 << v15;
    if (((1 << v15) & v79[v15 >> 6]) != 0)
    {
      break;
    }

LABEL_10:

    v14 = v23;
    v15 = v7;
    v12 = v76;
    v9 = v77;
  }

  v32 = ~v31;
  v33 = sub_229562F68(0, v72, v74);
  v34 = *(*(v8 + 48) + 8 * v15);
  v78 = v33;
  while (1)
  {
    v35 = sub_22A4DDEDC();

    if (v35)
    {
      break;
    }

    v15 = (v15 + 1) & v32;
    v9 = v15 >> 6;
    v21 = 1 << v15;
    if (((1 << v15) & v79[v15 >> 6]) == 0)
    {
      goto LABEL_10;
    }

    v34 = *(*(v8 + 48) + 8 * v15);
  }

  v37 = *(v8 + 32);
  v69 = ((1 << v37) + 63) >> 6;
  v11 = 8 * v69;
  if ((v37 & 0x3Fu) > 0xD)
  {
    goto LABEL_67;
  }

  while (2)
  {
    v70 = &v69;
    MEMORY[0x28223BE20](v36);
    v39 = &v69 - ((v38 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v39, v79, v38);
    v40 = *&v39[8 * v9] & ~v21;
    v41 = *(v8 + 16);
    v72 = v39;
    *&v39[8 * v9] = v40;
    v9 = v41 - 1;
    v43 = v76;
    v42 = v77;
    v44 = i;
LABEL_33:
    v74 = v9;
    while ((v42 & 0x8000000000000000) != 0)
    {
      v45 = sub_22A4DE12C();
      if (!v45)
      {
        goto LABEL_61;
      }

      v80 = v45;
      swift_dynamicCast();
      v15 = v81;
      if (!v81)
      {
        goto LABEL_61;
      }

LABEL_50:
      v50 = *(v8 + 40);
      v51 = sub_22A4DDECC();
      v52 = v8;
      v53 = -1 << *(v8 + 32);
      v54 = v51 & ~v53;
      v55 = v54 >> 6;
      v56 = 1 << v54;
      if (((1 << v54) & v79[v54 >> 6]) != 0)
      {
        v57 = ~v53;
        while (1)
        {
          v58 = *(*(v52 + 48) + 8 * v54);
          v59 = sub_22A4DDEDC();

          if (v59)
          {
            break;
          }

          v54 = (v54 + 1) & v57;
          v55 = v54 >> 6;
          v56 = 1 << v54;
          if (((1 << v54) & v79[v54 >> 6]) == 0)
          {
            goto LABEL_34;
          }
        }

        v44 = i;

        v60 = v72[v55];
        v72[v55] = v60 & ~v56;
        v61 = (v60 & v56) == 0;
        v8 = v52;
        v43 = v76;
        v42 = v77;
        v9 = v74;
        if (!v61)
        {
          v9 = v74 - 1;
          if (__OFSUB__(v74, 1))
          {
            __break(1u);
          }

          if (v74 == 1)
          {

            v8 = MEMORY[0x277D84FA0];
            goto LABEL_62;
          }

          goto LABEL_33;
        }
      }

      else
      {
LABEL_34:

        v8 = v52;
        v43 = v76;
        v42 = v77;
        v9 = v74;
        v44 = i;
      }
    }

    if (v7)
    {
      v21 = v23;
LABEL_48:
      v48 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v15 = *(*(v42 + 48) + ((v21 << 9) | (8 * v48)));
      v49 = v15;
      v47 = v21;
LABEL_49:
      v82 = v42;
      v83 = v43;
      v84 = v73;
      v85 = v47;
      v23 = v47;
      v86 = v7;
      if (!v15)
      {
LABEL_61:
        v8 = v71(v72, v69, v9, v8);
        goto LABEL_62;
      }

      goto LABEL_50;
    }

    if (v44 <= v23 + 1)
    {
      v46 = v23 + 1;
    }

    else
    {
      v46 = v44;
    }

    v47 = v46 - 1;
    while (1)
    {
      v21 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v21 >= v44)
      {
        v15 = 0;
        v7 = 0;
        goto LABEL_49;
      }

      v7 = *(v43 + 8 * v21);
      ++v23;
      if (v7)
      {
        goto LABEL_48;
      }
    }

    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    v64 = v11;

    v65 = v8;
    v66 = v64;
    if (swift_stdlib_isStackAllocationSafe())
    {

      v8 = v65;
      continue;
    }

    break;
  }

  v67 = swift_slowAlloc();
  memcpy(v67, v79, v66);
  sub_229760D0C(v67, v69, v65, v15, &v82, v72, v74, v70);
  v8 = v68;

  MEMORY[0x22AAD4E50](v67, -1, -1);
LABEL_62:
  sub_22953EE84();
LABEL_63:
  v62 = *MEMORY[0x277D85DE8];
  return v8;
}

void sub_22976033C(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5)
{
  v5 = a5;
  v7 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v33 = a3 + 56;
  while (2)
  {
    v30 = v8;
    do
    {
      while (1)
      {
        v9 = *v5;
        if (*v5 >> 62)
        {
          if (v9 < 0)
          {
            v27 = *v5;
          }

          v10 = sub_22A4DE0EC();
        }

        else
        {
          v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v11 = v5[1];
        if (v11 == v10)
        {

          sub_22966F34C(a1, a2, v30, a3);
          return;
        }

        v12 = *v5;
        if ((*v5 & 0xC000000000000001) != 0)
        {
          v13 = MEMORY[0x22AAD13F0](v5[1]);
          v28 = v5[1];
          v14 = v28 + 1;
          if (__OFADD__(v28, 1))
          {
            goto LABEL_29;
          }
        }

        else
        {
          if ((v11 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_29:
            __break(1u);
LABEL_30:
            __break(1u);
LABEL_31:
            __break(1u);
            return;
          }

          if (v11 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_30;
          }

          v13 = *(v12 + 8 * v11 + 32);
          v14 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            goto LABEL_29;
          }
        }

        v5[1] = v14;
        v15 = *(a3 + 40);
        v16 = sub_22A4DDECC();
        v17 = -1 << *(a3 + 32);
        v18 = v16 & ~v17;
        v19 = v18 >> 6;
        v20 = 1 << v18;
        if (((1 << v18) & *(v33 + 8 * (v18 >> 6))) == 0)
        {
          goto LABEL_3;
        }

        sub_229562F68(0, &qword_281401920, off_278666038);
        v21 = *(*(a3 + 48) + 8 * v18);
        v22 = sub_22A4DDEDC();

        if (v22)
        {
          break;
        }

        v23 = ~v17;
        while (1)
        {
          v18 = (v18 + 1) & v23;
          v19 = v18 >> 6;
          v20 = 1 << v18;
          if (((1 << v18) & *(v33 + 8 * (v18 >> 6))) == 0)
          {
            break;
          }

          v24 = *(*(a3 + 48) + 8 * v18);
          v25 = sub_22A4DDEDC();

          if (v25)
          {
            goto LABEL_16;
          }
        }

LABEL_3:

        v5 = a5;
      }

LABEL_16:
      v5 = a5;

      v26 = a1[v19];
      a1[v19] = v26 & ~v20;
    }

    while ((v26 & v20) == 0);
    v8 = v30 - 1;
    if (__OFSUB__(v30, 1))
    {
      goto LABEL_31;
    }

    if (v30 != 1)
    {
      continue;
    }

    break;
  }
}

uint64_t sub_22976058C(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v50 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D2A0, &unk_22A578BD0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v49 - v11;
  v13 = sub_22A4DB7DC();
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v60 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v15);
  v66 = &v49 - v18;
  v19 = *(a3 + 16);
  v20 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v21 = *(a1 + v20);
  v52 = a1;
  v53 = v12;
  *(a1 + v20) = v21 & ((-1 << a4) - 1);
  v22 = v19 - 1;
  v63 = v23 + 16;
  v64 = a3;
  v57 = (v23 + 48);
  v58 = (v23 + 56);
  v56 = (v23 + 32);
  v62 = a3 + 56;
  v59 = v23;
  v65 = (v23 + 8);
  v54 = a5;
  while (2)
  {
    v51 = v22;
    do
    {
      while (1)
      {
        v25 = *a5;
        v26 = a5[1];
        v28 = a5[2];
        v27 = a5[3];
        v29 = a5[4];
        if (!v29)
        {
          v31 = (v28 + 64) >> 6;
          if (v31 <= v27 + 1)
          {
            v32 = v27 + 1;
          }

          else
          {
            v32 = (v28 + 64) >> 6;
          }

          v33 = v32 - 1;
          while (1)
          {
            v30 = v27 + 1;
            if (__OFADD__(v27, 1))
            {
              break;
            }

            if (v30 >= v31)
            {
              v34 = 0;
              v35 = 1;
              goto LABEL_15;
            }

            v29 = *(v26 + 8 * v30);
            ++v27;
            if (v29)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
          goto LABEL_30;
        }

        v30 = a5[3];
LABEL_14:
        v34 = (v29 - 1) & v29;
        (*(v59 + 16))(v12, *(v25 + 48) + *(v59 + 72) * (__clz(__rbit64(v29)) | (v30 << 6)), v13);
        v35 = 0;
        v33 = v30;
LABEL_15:
        (*v58)(v12, v35, 1, v13);
        *a5 = v25;
        a5[1] = v26;
        a5[2] = v28;
        a5[3] = v33;
        a5[4] = v34;
        if ((*v57)(v12, 1, v13) == 1)
        {
          sub_22953EAE4(v12, &unk_27D87D2A0, &unk_22A578BD0);
          v48 = v64;

          return sub_22966F7C0(v52, v50, v51, v48);
        }

        (*v56)(v66, v12, v13);
        v36 = v64;
        v37 = *(v64 + 40);
        sub_229763570(&qword_281403880, 255, MEMORY[0x277CC95F0]);
        v38 = sub_22A4DD4EC();
        v39 = -1 << *(v36 + 32);
        v40 = v38 & ~v39;
        v41 = v40 >> 6;
        v42 = 1 << v40;
        if (((1 << v40) & *(v62 + 8 * (v40 >> 6))) != 0)
        {
          break;
        }

        v24 = *v65;
LABEL_4:
        result = (v24)(v66, v13);
      }

      v55 = v65 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v61 = ~v39;
      v43 = *(v59 + 72);
      v44 = *(v59 + 16);
      while (1)
      {
        v45 = v60;
        v44(v60, *(v64 + 48) + v43 * v40, v13);
        sub_229763570(&qword_281403870, 255, MEMORY[0x277CC95F0]);
        v46 = sub_22A4DD58C();
        v24 = *v65;
        (*v65)(v45, v13);
        if (v46)
        {
          break;
        }

        v40 = (v40 + 1) & v61;
        v41 = v40 >> 6;
        v42 = 1 << v40;
        if (((1 << v40) & *(v62 + 8 * (v40 >> 6))) == 0)
        {
          v12 = v53;
          a5 = v54;
          goto LABEL_4;
        }
      }

      result = (v24)(v66, v13);
      v12 = v53;
      v47 = v52[v41];
      v52[v41] = v47 & ~v42;
      a5 = v54;
    }

    while ((v47 & v42) == 0);
    v22 = v51 - 1;
    if (__OFSUB__(v51, 1))
    {
LABEL_30:
      __break(1u);
      return result;
    }

    if (v51 != 1)
    {
      continue;
    }

    return MEMORY[0x277D84FA0];
  }
}

void sub_229760A68(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v5 = a5;
  v7 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v34 = a3 + 56;
  while (2)
  {
    v31 = v8;
    do
    {
      while (1)
      {
        if ((*v5 & 0x8000000000000000) != 0)
        {
          if (!sub_22A4DE12C())
          {
            goto LABEL_29;
          }

          sub_229562F68(0, &qword_281401B70, off_278666148);
          swift_dynamicCast();
          v12 = v35;
          if (!v35)
          {
            goto LABEL_29;
          }
        }

        else
        {
          v9 = v5[3];
          v10 = v5[4];
          if (!v10)
          {
            v13 = (v5[2] + 64) >> 6;
            if (v13 <= v9 + 1)
            {
              v14 = v9 + 1;
            }

            else
            {
              v14 = (v5[2] + 64) >> 6;
            }

            v15 = v14 - 1;
            while (1)
            {
              v11 = v9 + 1;
              if (__OFADD__(v9, 1))
              {
                break;
              }

              if (v11 >= v13)
              {
                v5[3] = v15;
                v5[4] = 0;
                goto LABEL_29;
              }

              v10 = *(v5[1] + 8 * v11);
              ++v9;
              if (v10)
              {
                goto LABEL_17;
              }
            }

            __break(1u);
            goto LABEL_31;
          }

          v11 = v5[3];
LABEL_17:
          v16 = (v10 - 1) & v10;
          v12 = *(*(*v5 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));
          v17 = v12;
          v5[3] = v11;
          v5[4] = v16;
          if (!v12)
          {
LABEL_29:

            sub_22966FAE8(a1, a2, v31, a3);
            return;
          }
        }

        v18 = *(a3 + 40);
        v19 = sub_22A4DDECC();
        v20 = -1 << *(a3 + 32);
        v21 = v19 & ~v20;
        v22 = v21 >> 6;
        v23 = 1 << v21;
        if (((1 << v21) & *(v34 + 8 * (v21 >> 6))) == 0)
        {
          goto LABEL_3;
        }

        sub_229562F68(0, &qword_281401B70, off_278666148);
        v24 = *(*(a3 + 48) + 8 * v21);
        v25 = sub_22A4DDEDC();

        if (v25)
        {
          break;
        }

        v26 = ~v20;
        while (1)
        {
          v21 = (v21 + 1) & v26;
          v22 = v21 >> 6;
          v23 = 1 << v21;
          if (((1 << v21) & *(v34 + 8 * (v21 >> 6))) == 0)
          {
            break;
          }

          v27 = *(*(a3 + 48) + 8 * v21);
          v28 = sub_22A4DDEDC();

          if (v28)
          {
            goto LABEL_23;
          }
        }

LABEL_3:

        v5 = a5;
      }

LABEL_23:

      v29 = a1[v22];
      a1[v22] = v29 & ~v23;
      v5 = a5;
    }

    while ((v29 & v23) == 0);
    v8 = v31 - 1;
    if (__OFSUB__(v31, 1))
    {
LABEL_31:
      __break(1u);
      return;
    }

    if (v31 != 1)
    {
      continue;
    }

    break;
  }
}

void sub_229760D0C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5, unint64_t *a6, uint64_t *a7, void (*a8)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v8 = a5;
  v10 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v11 = v10 - 1;
  v40 = a3 + 56;
  while (2)
  {
    v35 = v11;
    do
    {
      while (1)
      {
        if ((*v8 & 0x8000000000000000) != 0)
        {
          if (!sub_22A4DE12C())
          {
            goto LABEL_30;
          }

          sub_229562F68(0, a6, a7);
          swift_dynamicCast();
          v15 = v41;
          if (!v41)
          {
            goto LABEL_30;
          }
        }

        else
        {
          v12 = v8[3];
          v13 = v8[4];
          if (!v13)
          {
            v16 = (v8[2] + 64) >> 6;
            if (v16 <= v12 + 1)
            {
              v17 = v12 + 1;
            }

            else
            {
              v17 = (v8[2] + 64) >> 6;
            }

            v18 = v17 - 1;
            while (1)
            {
              v14 = v12 + 1;
              if (__OFADD__(v12, 1))
              {
                break;
              }

              if (v14 >= v16)
              {
                v15 = 0;
                v19 = 0;
                goto LABEL_18;
              }

              v13 = *(v8[1] + 8 * v14);
              ++v12;
              if (v13)
              {
                goto LABEL_17;
              }
            }

            __break(1u);
            goto LABEL_32;
          }

          v14 = v8[3];
LABEL_17:
          v19 = (v13 - 1) & v13;
          v15 = *(*(*v8 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));
          v20 = v15;
          v18 = v14;
LABEL_18:
          v8[3] = v18;
          v8[4] = v19;
          if (!v15)
          {
LABEL_30:

            a8(a1, a2, v35, a3);
            return;
          }
        }

        v21 = *(a3 + 40);
        v22 = sub_22A4DDECC();
        v23 = -1 << *(a3 + 32);
        v24 = v22 & ~v23;
        v25 = v24 >> 6;
        v26 = 1 << v24;
        if (((1 << v24) & *(v40 + 8 * (v24 >> 6))) == 0)
        {
          goto LABEL_3;
        }

        sub_229562F68(0, a6, a7);
        v27 = *(*(a3 + 48) + 8 * v24);
        v28 = sub_22A4DDEDC();

        if (v28)
        {
          break;
        }

        v29 = ~v23;
        while (1)
        {
          v24 = (v24 + 1) & v29;
          v25 = v24 >> 6;
          v26 = 1 << v24;
          if (((1 << v24) & *(v40 + 8 * (v24 >> 6))) == 0)
          {
            break;
          }

          v30 = *(*(a3 + 48) + 8 * v24);
          v31 = sub_22A4DDEDC();

          if (v31)
          {
            goto LABEL_24;
          }
        }

LABEL_3:

        v8 = a5;
      }

LABEL_24:
      v8 = a5;

      v32 = *(a1 + 8 * v25);
      *(a1 + 8 * v25) = v32 & ~v26;
    }

    while ((v32 & v26) == 0);
    v11 = v35 - 1;
    if (__OFSUB__(v35, 1))
    {
LABEL_32:
      __break(1u);
      return;
    }

    if (v35 != 1)
    {
      continue;
    }

    break;
  }
}

uint64_t sub_229760F9C(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v18[6] = *MEMORY[0x277D85DE8];
  v17 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v18[3] = &v17;
  v18[4] = a2;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  if (v5 <= 0xD || (v13 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    v9 = &v16 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    v10 = sub_229761514(v9, v7, v3, a2);
  }

  else
  {
    v14 = v13;
    v15 = swift_slowAlloc();
    bzero(v15, v14);
    sub_229763EF4(v15, v7, v18);
    v10 = v18[0];

    MEMORY[0x22AAD4E50](v15, -1, -1);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t sub_22976113C(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v19[6] = *MEMORY[0x277D85DE8];
  v18 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v19[3] = &v18;
  v19[4] = a2;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  if (v5 <= 0xD || (v14 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    v9 = &v17 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    sub_2297616F4(v9, v7, v3, a2);
    v11 = v10;
  }

  else
  {
    v15 = v14;
    v16 = swift_slowAlloc();
    bzero(v16, v15);
    sub_2297635B8(v16, v7, v19);
    v11 = v19[0];

    MEMORY[0x22AAD4E50](v16, -1, -1);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

void *sub_2297612DC(uint64_t a1, uint64_t a2)
{
  v3 = a1 & 0xC000000000000001;
  if ((a2 & 0xC000000000000001) != 0)
  {
    if (v3)
    {
      if (a2 < 0)
      {
        v4 = a2;
      }

      else
      {
        v4 = a2 & 0xFFFFFFFFFFFFFF8;
      }

      v5 = sub_22A4DE0EC();
      a2 = sub_229572B8C(v4, v5);
      goto LABEL_8;
    }

    sub_229562F68(0, &unk_27D8808F0, 0x277CD1B58);
    v7 = MEMORY[0x277D84FA0];
    v18 = MEMORY[0x277D84FA0];
    sub_22A4DE09C();
    if (sub_22A4DE12C())
    {
      v8 = a1 + 56;
      do
      {
        swift_dynamicCast();
        if (*(a1 + 16) && (v9 = *(a1 + 40), v10 = sub_22A4DDECC(), v11 = -1 << *(a1 + 32), v12 = v10 & ~v11, ((*(v8 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0))
        {
          v13 = ~v11;
          while (1)
          {
            v14 = *(*(a1 + 48) + 8 * v12);
            v15 = sub_22A4DDEDC();

            if (v15)
            {
              break;
            }

            v12 = (v12 + 1) & v13;
            if (((*(v8 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
            {
              goto LABEL_13;
            }
          }

          v16 = *(v7 + 16);
          if (*(v7 + 24) <= v16)
          {
            sub_229574584(v16 + 1);
          }

          v7 = v18;
          sub_22957A4A8(v17, v18);
        }

        else
        {
LABEL_13:
        }
      }

      while (sub_22A4DE12C());
    }

    return v7;
  }

  else
  {
    if (v3)
    {
LABEL_8:

      return sub_22976113C(a1, a2);
    }

    return sub_229670018(a1, a2);
  }
}

uint64_t sub_229761514(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v6 = 0;
  v7 = *(a3 + 16);
  v28 = a3 + 32;
  v8 = a4 + 56;
  v26 = result;
  v27 = v7;
  while (2)
  {
    v25 = v5;
    if (v6 != v7)
    {
      while (1)
      {
        while (1)
        {
          if (v6 >= v7)
          {
            __break(1u);
LABEL_26:
            __break(1u);
            return result;
          }

          v9 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_26;
          }

          v10 = (v28 + 16 * v6);
          v12 = *v10;
          v11 = v10[1];
          v13 = *(a4 + 40);
          sub_22A4DE77C();

          sub_22A4DD6BC();
          v14 = sub_22A4DE7BC();
          v15 = -1 << *(a4 + 32);
          v16 = v14 & ~v15;
          v17 = v16 >> 6;
          v18 = 1 << v16;
          if (((1 << v16) & *(v8 + 8 * (v16 >> 6))) != 0)
          {
            break;
          }

LABEL_5:
          v6 = v9;

          if (v9 == v7)
          {
            goto LABEL_24;
          }
        }

        v19 = (*(a4 + 48) + 16 * v16);
        if (*v19 != v12 || v19[1] != v11)
        {
          v21 = ~v15;
          while ((sub_22A4DE60C() & 1) == 0)
          {
            v16 = (v16 + 1) & v21;
            v17 = v16 >> 6;
            v18 = 1 << v16;
            if (((1 << v16) & *(v8 + 8 * (v16 >> 6))) == 0)
            {
              v7 = v27;
              goto LABEL_5;
            }

            v22 = (*(a4 + 48) + 16 * v16);
            if (*v22 == v12 && v22[1] == v11)
            {
              break;
            }
          }
        }

        v23 = v26[v17];
        v26[v17] = v23 | v18;
        if ((v23 & v18) == 0)
        {
          break;
        }

        v7 = v27;
        v6 = v9;
        if (v9 == v27)
        {
          goto LABEL_24;
        }
      }

      v5 = v25 + 1;
      v7 = v27;
      v6 = v9;
      if (!__OFADD__(v25, 1))
      {
        continue;
      }

      __break(1u);
    }

    break;
  }

LABEL_24:

  return sub_22966F360(v26, a2, v25, a4);
}

void sub_2297616F4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a3;
  if ((a3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_22A4DE09C();
    sub_229562F68(0, &unk_27D8808F0, 0x277CD1B58);
    sub_22959E62C(&qword_27D87E468, &unk_27D8808F0, 0x277CD1B58);
    sub_22A4DDBAC();
    v4 = v39;
    v5 = v40;
    v6 = v41;
    v7 = v42;
    v8 = v43;
  }

  else
  {
    v9 = -1 << *(a3 + 32);
    v5 = a3 + 56;
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

    v8 = v11 & *(a3 + 56);

    v7 = 0;
  }

  v33 = 0;
  v12 = (v6 + 64) >> 6;
  v37 = a4 + 56;
  v35 = v5;
  v36 = v4;
LABEL_8:
  v13 = v7;
  v14 = v8;
  while (v4 < 0)
  {
    if (!sub_22A4DE12C())
    {
      goto LABEL_29;
    }

    sub_229562F68(0, &unk_27D8808F0, 0x277CD1B58);
    swift_dynamicCast();
    v17 = v44;
    v7 = v13;
    v8 = v14;
    if (!v44)
    {
      goto LABEL_29;
    }

LABEL_19:
    v18 = *(a4 + 40);
    v19 = sub_22A4DDECC();
    v20 = -1 << *(a4 + 32);
    v21 = v19 & ~v20;
    v22 = v21 >> 6;
    v23 = 1 << v21;
    if (((1 << v21) & *(v37 + 8 * (v21 >> 6))) == 0)
    {
      goto LABEL_9;
    }

    sub_229562F68(0, &unk_27D8808F0, 0x277CD1B58);
    v24 = *(*(a4 + 48) + 8 * v21);
    v25 = sub_22A4DDEDC();

    if (v25)
    {
LABEL_24:
      v12 = (v6 + 64) >> 6;

      v29 = a1[v22];
      a1[v22] = v29 | v23;
      v13 = v7;
      v14 = v8;
      v30 = (v29 & v23) == 0;
      v5 = v35;
      v4 = v36;
      if (v30)
      {
        if (!__OFADD__(v33++, 1))
        {
          goto LABEL_8;
        }

        __break(1u);
LABEL_29:
        sub_22953EE84();

        sub_22966FB24(a1, a2, v33, a4);
        return;
      }
    }

    else
    {
      v26 = ~v20;
      while (1)
      {
        v21 = (v21 + 1) & v26;
        v22 = v21 >> 6;
        v23 = 1 << v21;
        if (((1 << v21) & *(v37 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v27 = *(*(a4 + 48) + 8 * v21);
        v28 = sub_22A4DDEDC();

        if (v28)
        {
          goto LABEL_24;
        }
      }

LABEL_9:

      v13 = v7;
      v12 = (v6 + 64) >> 6;
      v14 = v8;
      v5 = v35;
      v4 = v36;
    }
  }

  v15 = v13;
  v16 = v14;
  v7 = v13;
  if (v14)
  {
LABEL_15:
    v8 = (v16 - 1) & v16;
    v17 = *(*(v4 + 48) + ((v7 << 9) | (8 * __clz(__rbit64(v16)))));
    if (!v17)
    {
      goto LABEL_29;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v7 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v7 >= v12)
    {
      goto LABEL_29;
    }

    v16 = *(v5 + 8 * v7);
    ++v15;
    if (v16)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

uint64_t sub_229761A4C(void *a1, void *a2)
{
  v4 = MEMORY[0x277D84F90];
  v13 = MEMORY[0x277D84F90];
  if ([a1 state])
  {
    v5 = [a2 smartSpeakerCurrentMediaStateCharacteristic];
    if (v5)
    {
      v6 = v5;
      MEMORY[0x22AAD09E0]();
      if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v12 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_22A4DD85C();
      }

      sub_22A4DD87C();

      v4 = v13;
    }
  }

  v7 = [a1 volume];
  if (v7)
  {

    v8 = [a2 smartSpeakerVolumeCharacteristic];
    if (v8)
    {
      v9 = v8;
      MEMORY[0x22AAD09E0]();
      if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v11 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_22A4DD85C();
      }

      sub_22A4DD87C();

      return v13;
    }
  }

  return v4;
}

uint64_t sub_229761BB8(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_22A4DE09C();
    sub_229562F68(0, &qword_27D880918, off_278666280);
    sub_22959E62C(&qword_27D880920, &qword_27D880918, off_278666280);
    result = sub_22A4DDBAC();
    v3 = v48[4];
    v45 = v48[5];
    v5 = v48[6];
    v6 = v48[7];
    v7 = v48[8];
  }

  else
  {
    v8 = -1 << *(a1 + 32);
    v45 = a1 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(a1 + 56);

    v6 = 0;
  }

  v11 = MEMORY[0x277D84F90];
  v42 = v3;
  while (v3 < 0)
  {
    v17 = sub_22A4DE12C();
    if (!v17)
    {
      goto LABEL_53;
    }

    v48[11] = v17;
    sub_229562F68(0, &qword_27D880918, off_278666280);
    swift_dynamicCast();
    v16 = v48[0];
    v14 = v6;
    v15 = v7;
    if (!v48[0])
    {
      goto LABEL_53;
    }

LABEL_18:
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    objc_opt_self();
    v18 = swift_dynamicCastObjCClass();
    v47 = v15;
    if (v18)
    {
      v19 = v18;
      v20 = v16;
      v21 = sub_229761A4C(a3, v19);
    }

    else
    {
      v21 = MEMORY[0x277D84F90];
    }

    v22 = v21 >> 62;
    if (v21 >> 62)
    {
      v23 = sub_22A4DE0EC();
    }

    else
    {
      v23 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v24 = v11 >> 62;
    if (v11 >> 62)
    {
      v41 = sub_22A4DE0EC();
      v26 = v41 + v23;
      if (__OFADD__(v41, v23))
      {
LABEL_52:
        __break(1u);
LABEL_53:
        sub_22953EE84();
        return v11;
      }
    }

    else
    {
      v25 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v26 = v25 + v23;
      if (__OFADD__(v25, v23))
      {
        goto LABEL_52;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (!result)
    {
      if (v24)
      {
LABEL_34:
        sub_22A4DE0EC();
      }

      else
      {
        v27 = v11 & 0xFFFFFFFFFFFFFF8;
LABEL_33:
        v28 = *(v27 + 16);
      }

      result = sub_22A4DE22C();
      v46 = result;
      v27 = result & 0xFFFFFFFFFFFFFF8;
      goto LABEL_36;
    }

    if (v24)
    {
      goto LABEL_34;
    }

    v27 = v11 & 0xFFFFFFFFFFFFFF8;
    if (v26 > *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_33;
    }

    v46 = v11;
LABEL_36:
    v29 = *(v27 + 16);
    v30 = *(v27 + 24);
    if (v22)
    {
      v32 = v27;
      result = sub_22A4DE0EC();
      v27 = v32;
      v31 = result;
      if (result)
      {
        goto LABEL_40;
      }

LABEL_8:

      v6 = v14;
      v11 = v46;
      v7 = v47;
      if (v23 > 0)
      {
        goto LABEL_55;
      }
    }

    else
    {
      v31 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v31)
      {
        goto LABEL_8;
      }

LABEL_40:
      if (((v30 >> 1) - v29) < v23)
      {
        goto LABEL_56;
      }

      v33 = v27 + 8 * v29 + 32;
      v44 = v27;
      if (v22)
      {
        if (v31 < 1)
        {
          goto LABEL_58;
        }

        sub_2297636E4(&qword_27D87D518, &unk_27D880960, &qword_22A578820);
        for (i = 0; i != v31; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D880960, &qword_22A578820);
          v35 = sub_22958C03C(v48, i, v21);
          v37 = *v36;
          (v35)(v48, 0);
          *(v33 + 8 * i) = v37;
        }
      }

      else
      {
        sub_229562F68(0, &unk_27D87E490, off_2786660B8);
        swift_arrayInitWithCopy();
      }

      v6 = v14;
      v11 = v46;
      v7 = v47;
      v3 = v42;
      if (v23 >= 1)
      {
        v38 = *(v44 + 16);
        v39 = __OFADD__(v38, v23);
        v40 = v38 + v23;
        if (v39)
        {
          goto LABEL_57;
        }

        *(v44 + 16) = v40;
        v6 = v14;
        v7 = v47;
      }
    }
  }

  v12 = v6;
  v13 = v7;
  v14 = v6;
  if (v7)
  {
LABEL_14:
    v15 = (v13 - 1) & v13;
    v16 = *(*(v3 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));
    if (!v16)
    {
      goto LABEL_53;
    }

    goto LABEL_18;
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= ((v5 + 64) >> 6))
    {
      goto LABEL_53;
    }

    v13 = *(v45 + 8 * v14);
    ++v12;
    if (v13)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
  return result;
}

unint64_t sub_2297620A8(unint64_t isUniquelyReferenced_nonNull_bridgeObject, uint64_t a2)
{
  v3 = v2;
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_68;
  }

  v5 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v7 = 0;
  v39 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
  v40 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
  v37 = v5;
  v38 = isUniquelyReferenced_nonNull_bridgeObject + 32;
  v34 = isUniquelyReferenced_nonNull_bridgeObject;
  v35 = MEMORY[0x277D84F90] >> 62;
  v36 = a2;
  do
  {
    if (v40)
    {
      isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x22AAD13F0](v7, v34);
    }

    else
    {
      if (v7 >= *(v39 + 16))
      {
        goto LABEL_62;
      }

      isUniquelyReferenced_nonNull_bridgeObject = *(v38 + 8 * v7);
    }

    v9 = isUniquelyReferenced_nonNull_bridgeObject;
    v10 = __OFADD__(v7, 1);
    v11 = v7 + 1;
    if (v10)
    {
      goto LABEL_61;
    }

    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    objc_opt_self();
    v12 = swift_dynamicCastObjCClass();
    if (v12)
    {
      v13 = v12;
      v14 = v9;
      v15 = [v13 mediaProfiles];
      sub_229562F68(0, &qword_27D880918, off_278666280);
      sub_22959E62C(&qword_27D880920, &qword_27D880918, off_278666280);
      v16 = sub_22A4DDB6C();

      a2 = v36;
      v17 = v14;

      v18 = sub_229761BB8(v16, v36, v13);

      if ((v18 & 0x8000000000000000) == 0 && (v18 & 0x4000000000000000) == 0)
      {
LABEL_17:
        v43 = 0;
        v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if ((v6 & 0x8000000000000000) == 0 && (v6 & 0x4000000000000000) == 0)
        {
          goto LABEL_19;
        }

        goto LABEL_32;
      }
    }

    else
    {

      v18 = MEMORY[0x277D84F90];
      if (!v35)
      {
        goto LABEL_17;
      }
    }

    v19 = sub_22A4DE0EC();
    v43 = 1;
    if ((v6 & 0x8000000000000000) == 0 && (v6 & 0x4000000000000000) == 0)
    {
LABEL_19:
      isUniquelyReferenced_nonNull_bridgeObject = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v20 = isUniquelyReferenced_nonNull_bridgeObject + v19;
      if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v19))
      {
        goto LABEL_63;
      }

      goto LABEL_20;
    }

LABEL_32:
    isUniquelyReferenced_nonNull_bridgeObject = sub_22A4DE0EC();
    v20 = isUniquelyReferenced_nonNull_bridgeObject + v19;
    if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v19))
    {
      goto LABEL_63;
    }

LABEL_20:
    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v42 = v11;
    if (isUniquelyReferenced_nonNull_bridgeObject)
    {
      if ((v6 & 0x8000000000000000) != 0 || (v6 & 0x4000000000000000) != 0)
      {
        goto LABEL_35;
      }

      v21 = v6 & 0xFFFFFFFFFFFFFF8;
      v22 = a2;
      if (v20 <= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        a2 = v3;
        v3 = v19;
        goto LABEL_37;
      }
    }

    else
    {
      if ((v6 & 0x8000000000000000) != 0 || (v6 & 0x4000000000000000) != 0)
      {
LABEL_35:
        v22 = a2;
        a2 = v3;
        sub_22A4DE0EC();
        goto LABEL_36;
      }

      v22 = a2;
      v21 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    a2 = v3;
    v23 = *(v21 + 16);
LABEL_36:
    v3 = v19;
    isUniquelyReferenced_nonNull_bridgeObject = sub_22A4DE22C();
    v6 = isUniquelyReferenced_nonNull_bridgeObject;
    v21 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_37:
    v24 = *(v21 + 16);
    v25 = *(v21 + 24);
    if (v43)
    {
      isUniquelyReferenced_nonNull_bridgeObject = sub_22A4DE0EC();
      v26 = isUniquelyReferenced_nonNull_bridgeObject;
      if (!isUniquelyReferenced_nonNull_bridgeObject)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v26 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v26)
      {
LABEL_5:

        v8 = v3 <= 0;
        v3 = a2;
        a2 = v22;
        if (!v8)
        {
          goto LABEL_64;
        }

        goto LABEL_7;
      }
    }

    if (((v25 >> 1) - v24) < v3)
    {
      goto LABEL_65;
    }

    v27 = v3;
    v41 = a2;
    v3 = (v21 + 8 * v24 + 32);
    if ((v43 & 1) == 0)
    {
      sub_229562F68(0, &unk_27D87E490, off_2786660B8);
      swift_arrayInitWithCopy();

      a2 = v22;
      goto LABEL_54;
    }

    if (v26 < 1)
    {
      goto LABEL_67;
    }

    v28 = 0;
    a2 = v18 & 0xFFFFFFFFFFFFFF8;
    if ((v18 & 0xC000000000000001) == 0)
    {
      goto LABEL_47;
    }

    while (1)
    {
      isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x22AAD13F0](v28++, v18);
      *v3 = isUniquelyReferenced_nonNull_bridgeObject;
      if (v28 == v26)
      {
        break;
      }

      while (1)
      {
        ++v3;
        if ((v18 & 0xC000000000000001) != 0)
        {
          break;
        }

LABEL_47:
        if ((v28 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_60:
          __break(1u);
LABEL_61:
          __break(1u);
LABEL_62:
          __break(1u);
LABEL_63:
          __break(1u);
LABEL_64:
          __break(1u);
LABEL_65:
          __break(1u);
LABEL_66:
          __break(1u);
LABEL_67:
          __break(1u);
LABEL_68:
          v33 = isUniquelyReferenced_nonNull_bridgeObject;
          v5 = sub_22A4DE0EC();
          isUniquelyReferenced_nonNull_bridgeObject = v33;
          goto LABEL_3;
        }

        if (v28 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_60;
        }

        v29 = *(v18 + 32 + 8 * v28++);
        *v3 = v29;
        isUniquelyReferenced_nonNull_bridgeObject = v29;
        if (v28 == v26)
        {
          goto LABEL_53;
        }
      }
    }

LABEL_53:

    a2 = v36;
LABEL_54:
    v3 = v41;
    if (v27 >= 1)
    {
      v30 = *(v21 + 16);
      v10 = __OFADD__(v30, v27);
      v31 = v30 + v27;
      if (v10)
      {
        goto LABEL_66;
      }

      *(v21 + 16) = v31;
    }

LABEL_7:
    v7 = v42;
  }

  while (v42 != v37);
  return v6;
}

unint64_t sub_229762550(unint64_t isUniquelyReferenced_nonNull_bridgeObject, uint64_t a2)
{
  v3 = v2;
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_49;
  }

  for (i = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10); i; isUniquelyReferenced_nonNull_bridgeObject = v30)
  {
    v6 = 0;
    v36 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v37 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v32 = isUniquelyReferenced_nonNull_bridgeObject;
    v35 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v7 = MEMORY[0x277D84F90];
    v34 = i;
    v33 = a2;
    while (1)
    {
      if (v37)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x22AAD13F0](v6, v32);
      }

      else
      {
        if (v6 >= *(v36 + 16))
        {
          goto LABEL_44;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v35 + 8 * v6);
      }

      v8 = isUniquelyReferenced_nonNull_bridgeObject;
      v9 = __OFADD__(v6++, 1);
      if (v9)
      {
        break;
      }

      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v10 = [v8 actions];
      sub_229562F68(0, &qword_27D880928, off_278666018);
      v11 = sub_22A4DD83C();

      v12 = v3;
      v13 = sub_2297620A8(v11, a2);

      v14 = v13 >> 62;
      if (v13 >> 62)
      {
        v15 = sub_22A4DE0EC();
      }

      else
      {
        v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v16 = v7 >> 62;
      if (v7 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_22A4DE0EC();
        v17 = isUniquelyReferenced_nonNull_bridgeObject + v15;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v15))
        {
LABEL_42:
          __break(1u);
          break;
        }
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v17 = isUniquelyReferenced_nonNull_bridgeObject + v15;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v15))
        {
          goto LABEL_42;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (v16)
        {
          goto LABEL_23;
        }

        v40 = v7;
        v18 = v7 & 0xFFFFFFFFFFFFFF8;
        if (v17 <= *(v18 + 24) >> 1)
        {
          goto LABEL_25;
        }
      }

      else
      {
        if (v16)
        {
LABEL_23:
          sub_22A4DE0EC();
          goto LABEL_24;
        }

        v40 = v7;
        v18 = v7 & 0xFFFFFFFFFFFFFF8;
      }

      v19 = *(v18 + 16);
LABEL_24:
      isUniquelyReferenced_nonNull_bridgeObject = sub_22A4DE22C();
      v40 = isUniquelyReferenced_nonNull_bridgeObject;
      v18 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_25:
      v38 = v15;
      v20 = *(v18 + 16);
      v21 = *(v18 + 24);
      if (v14)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_22A4DE0EC();
        v22 = isUniquelyReferenced_nonNull_bridgeObject;
      }

      else
      {
        v22 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v22)
      {
        if (((v21 >> 1) - v20) < v38)
        {
          goto LABEL_46;
        }

        v23 = v18 + 8 * v20 + 32;
        if (v14)
        {
          if (v22 < 1)
          {
            goto LABEL_48;
          }

          sub_2297636E4(&qword_27D87D518, &unk_27D880960, &qword_22A578820);
          for (j = 0; j != v22; ++j)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D880960, &qword_22A578820);
            v25 = sub_22958C03C(v39, j, v13);
            v27 = *v26;
            (v25)(v39, 0);
            *(v23 + 8 * j) = v27;
          }
        }

        else
        {
          sub_229562F68(0, &unk_27D87E490, off_2786660B8);
          swift_arrayInitWithCopy();
        }

        v3 = v12;
        a2 = v33;
        if (v38 >= 1)
        {
          v28 = *(v18 + 16);
          v9 = __OFADD__(v28, v38);
          v29 = v28 + v38;
          if (v9)
          {
            goto LABEL_47;
          }

          *(v18 + 16) = v29;
        }
      }

      else
      {

        if (v38 > 0)
        {
          goto LABEL_45;
        }
      }

      v7 = v40;
      if (v6 == v34)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    v30 = isUniquelyReferenced_nonNull_bridgeObject;
    i = sub_22A4DE0EC();
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_229762958(unint64_t a1)
{
  v48 = sub_22A4DB7DC();
  v44 = *(v48 - 8);
  v2 = *(v44 + 64);
  v3 = MEMORY[0x28223BE20](v48);
  v43 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v47 = &v41 - v5;
  v6 = sub_22974D080(a1);
  v59 = MEMORY[0x277D84F90];
  if (v6 >> 62)
  {
    goto LABEL_37;
  }

  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v7)
  {
LABEL_38:
    v37 = MEMORY[0x277D84F90];
    goto LABEL_39;
  }

  while (1)
  {
    v8 = 0;
    v51 = v6 & 0xFFFFFFFFFFFFFF8;
    v52 = v6 & 0xC000000000000001;
    v42 = v6;
    v50 = v6 + 32;
    v46 = (v44 + 32);
    v49 = v7;
LABEL_5:
    if (v52)
    {
      v6 = MEMORY[0x22AAD13F0](v8, v42);
    }

    else
    {
      if (v8 >= *(v51 + 16))
      {
        goto LABEL_36;
      }

      v6 = *(v50 + 8 * v8);
    }

    v9 = v6;
    if (!__OFADD__(v8++, 1))
    {
      break;
    }

LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    v38 = v6;
    v7 = sub_22A4DE0EC();
    v6 = v38;
    if (!v7)
    {
      goto LABEL_38;
    }
  }

  v11 = [v6 mediaProfiles];
  v12 = sub_229562F68(0, &qword_27D880918, off_278666280);
  sub_22959E62C(&qword_27D880920, &qword_27D880918, off_278666280);
  v13 = sub_22A4DDB6C();

  v54 = v9;
  v56 = v12;
  if ((v13 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_22A4DE09C();
    v6 = sub_22A4DDBAC();
    v15 = v60;
    v14 = v61;
    v16 = v62;
    v17 = v63;
    v18 = v64;
  }

  else
  {
    v19 = -1 << *(v13 + 32);
    v14 = v13 + 56;
    v16 = ~v19;
    v20 = -v19;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v18 = v21 & *(v13 + 56);

    v17 = 0;
    v15 = v13;
  }

  v53 = v16;
  v22 = (v16 + 64) >> 6;
  v55 = MEMORY[0x277D84F90];
  while (v15 < 0)
  {
    v26 = sub_22A4DE12C();
    if (!v26)
    {
      goto LABEL_4;
    }

    v57 = v26;
    swift_dynamicCast();
    v25 = v58;
    if (!v58)
    {
      goto LABEL_4;
    }

LABEL_25:
    v27 = [v25 accessory];
    if (v27)
    {
      v28 = v27;
      v29 = [v27 uuid];

      v30 = v43;
      sub_22A4DB79C();

      v31 = *v46;
      (*v46)(v47, v30, v48);
      v32 = v55;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v45 = v31;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v32 = sub_22958B1F0(0, v32[2] + 1, 1, v32);
      }

      v35 = v32[2];
      v34 = v32[3];
      if (v35 >= v34 >> 1)
      {
        v32 = sub_22958B1F0(v34 > 1, v35 + 1, 1, v32);
      }

      v32[2] = v35 + 1;
      v36 = (*(v44 + 80) + 32) & ~*(v44 + 80);
      v55 = v32;
      v6 = v45(v32 + v36 + *(v44 + 72) * v35, v47, v48);
    }

    else
    {
    }
  }

  v23 = v17;
  v24 = v18;
  if (!v18)
  {
    while (1)
    {
      v17 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v17 >= v22)
      {
        goto LABEL_4;
      }

      v24 = *(v14 + 8 * v17);
      ++v23;
      if (v24)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_35;
  }

LABEL_21:
  v18 = (v24 - 1) & v24;
  v25 = *(*(v15 + 48) + ((v17 << 9) | (8 * __clz(__rbit64(v24)))));
  if (v25)
  {
    goto LABEL_25;
  }

LABEL_4:

  sub_22953EE84();

  v6 = sub_2296F0BBC(v55);
  if (v8 != v49)
  {
    goto LABEL_5;
  }

  v37 = v59;
LABEL_39:

  v39 = sub_2296727F4(v37);

  return v39;
}

uint64_t sub_229762E64(unint64_t a1)
{
  v30 = sub_22A4DB7DC();
  v27 = *(v30 - 8);
  v2 = *(v27 + 64);
  v3 = MEMORY[0x28223BE20](v30);
  v26 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = &v26 - v5;
  v7 = sub_22974D400(a1);
  v8 = v7;
  if (v7 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22A4DE0EC())
  {
    v10 = 0;
    v28 = v8 & 0xFFFFFFFFFFFFFF8;
    v29 = v8 & 0xC000000000000001;
    v11 = (v27 + 32);
    v12 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v29)
      {
        v13 = MEMORY[0x22AAD13F0](v10, v8);
      }

      else
      {
        if (v10 >= *(v28 + 16))
        {
          goto LABEL_18;
        }

        v13 = *(v8 + 8 * v10 + 32);
      }

      v14 = v13;
      v15 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      v16 = [v13 accessory];
      if (v16)
      {
        v17 = i;
        v18 = v16;
        v19 = [v16 uuid];

        v20 = v26;
        sub_22A4DB79C();

        v21 = *v11;
        (*v11)(v6, v20, v30);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_22958B1F0(0, *(v12 + 2) + 1, 1, v12);
        }

        v23 = *(v12 + 2);
        v22 = *(v12 + 3);
        if (v23 >= v22 >> 1)
        {
          v12 = sub_22958B1F0(v22 > 1, v23 + 1, 1, v12);
        }

        *(v12 + 2) = v23 + 1;
        v21(&v12[((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v23], v6, v30);
        i = v17;
      }

      else
      {
      }

      ++v10;
      if (v15 == i)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  v12 = MEMORY[0x277D84F90];
LABEL_21:

  v24 = sub_2296727F4(v12);

  return v24;
}

uint64_t sub_229763134(void *a1)
{
  v2 = [a1 characteristic];
  if (!v2)
  {
    v39 = 0u;
    v40 = 0u;
LABEL_12:
    sub_22953EAE4(&v39, &unk_27D87FC20, &unk_22A578810);
    goto LABEL_13;
  }

  v3 = v2;
  v4 = [v2 value];

  if (v4)
  {
    sub_22A4DE01C();
    swift_unknownObjectRelease();
    v5 = v36;
    v6 = __swift_project_boxed_opaque_existential_0(v35, v36);
    v34[3] = v5;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v34);
    (*(*(v5 - 8) + 16))(boxed_opaque_existential_1, v6, v5);
    sub_229543C58(v34, &v37);
    __swift_destroy_boxed_opaque_existential_0(v35);
  }

  else
  {
    v37 = 0u;
    v38 = 0u;
  }

  v39 = v37;
  v40 = v38;
  if (!*(&v38 + 1))
  {
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
  sub_229562F68(0, &qword_281401770, 0x277CCABB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_13:
    v32 = 0;
    return v32 & 1;
  }

  v8 = v37;
  v9 = [a1 targetValue];
  sub_22A4DE01C();
  swift_unknownObjectRelease();
  v10 = *(&v40 + 1);
  v11 = __swift_project_boxed_opaque_existential_0(&v39, *(&v40 + 1));
  v12 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  (*(v14 + 16))(v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (!swift_dynamicCast())
  {

    __swift_destroy_boxed_opaque_existential_0(&v39);
    goto LABEL_13;
  }

  v15 = v37;
  __swift_destroy_boxed_opaque_existential_0(&v39);
  v16 = [a1 characteristic];
  v17 = [v16 metadata];

  v18 = [v17 minimumValue];
  v19 = [a1 characteristic];
  v20 = [v19 metadata];

  v21 = [v20 maximumValue];
  if (v21 && v18)
  {
    v22 = v21;
    v23 = v18;
    [v8 floatValue];
    v25 = v24;
    [v15 floatValue];
    v27 = vabds_f32(v25, v26);
    [v22 floatValue];
    v29 = v28;
    [v23 floatValue];
    v31 = v30;

    v32 = v27 <= ((v29 - v31) * 0.02);
  }

  else
  {
    sub_229562F68(0, &qword_281401760, 0x277D82BB8);
    v32 = sub_22A4DDEDC();
  }

  return v32 & 1;
}

uint64_t sub_229763570(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_22976361C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_229586D38;

  return sub_22975412C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_2297636E4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_229763738(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_229586D38;

  return sub_229751EE4(a1, v4, v5, v7, v6);
}

uint64_t sub_2297637F8(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_229763804(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_229586D38;

  return sub_2297514C4(a1, v4, v5, v7, v6);
}

uint64_t sub_2297638C4(uint64_t a1)
{
  v4 = *(sub_22A4DB7DC() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_229586D38;

  return sub_229750BDC(a1, v6, v7, v8, v1 + v5, v9);
}

uint64_t sub_2297639F4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_229586D38;

  return sub_229750380(a1, v4, v5, v7, v6);
}

uint64_t sub_229763AB4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_229586D38;

  return sub_22974FBD4(a1, v4, v5, v7, v6);
}

uint64_t sub_229763B74(uint64_t a1)
{
  v4 = *(sub_22A4DB7DC() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_229586D38;

  return sub_22974F980(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_229763C6C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_229586D38;

  return sub_2297587F4(a1, v4, v5, v7, v6);
}

uint64_t sub_229763D2C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_229586D38;

  return sub_229752120(v2, v3, v4);
}

uint64_t objectdestroy_57Tm(uint64_t a1)
{
  v3 = v1[2];
  swift_unknownObjectRelease();
  v4 = v1[4];

  v5 = v1[5];

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_229763E34(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_229569B30;

  return sub_22974E5A0(a1, v4, v5, v7, v6);
}

uint64_t sub_229763F20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, uint64_t, void, void)@<X2>, uint64_t *a4@<X8>)
{
  result = a3(a1, a2, **(v4 + 16), *(v4 + 24));
  if (!v5)
  {
    *a4 = result;
  }

  return result;
}

uint64_t sub_229763F5C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = result;
    v7 = 0;
    v8 = a3 + 32;
    v9 = MEMORY[0x277D84F90];
    v14 = result;
    while (v7 < *(a3 + 16))
    {
      sub_22957F1C4(v8, v16);
      v10 = v6(v16);
      if (v3)
      {
        __swift_destroy_boxed_opaque_existential_0(v16);

        goto LABEL_15;
      }

      if (v10)
      {
        sub_229557188(v16, v15);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v17 = v9;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_229583B04(0, *(v9 + 16) + 1, 1);
          v9 = v17;
        }

        v13 = *(v9 + 16);
        v12 = *(v9 + 24);
        if (v13 >= v12 >> 1)
        {
          sub_229583B04((v12 > 1), v13 + 1, 1);
          v9 = v17;
        }

        *(v9 + 16) = v13 + 1;
        result = sub_229557188(v15, v9 + 40 * v13 + 32);
        v6 = v14;
      }

      else
      {
        result = __swift_destroy_boxed_opaque_existential_0(v16);
      }

      ++v7;
      v8 += 40;
      if (v5 == v7)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
LABEL_15:

    return v9;
  }

  return result;
}

uint64_t sub_229764130@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_22A4DCEBC();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  swift_unknownObjectRetain();
  result = sub_22A4DCE7C();
  a1[3] = v2;
  a1[4] = &off_283CE3910;
  *a1 = result;
  return result;
}

uint64_t sub_2297641A8()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_22A4DD07C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_229541CB0(v2, &off_283CE3968);
  v8 = sub_22A4DD05C();
  v9 = sub_22A4DDCCC();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_229538000, v8, v9, "Start network diagnostics.", v10, 2u);
    MEMORY[0x22AAD4E50](v10, -1, -1);
  }

  (*(v4 + 8))(v7, v3);
  if (qword_281401AF0 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_281401AF8);

  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  qword_281401B00 = v1;

  os_unfair_lock_unlock(&dword_281401AF8);
  return sub_2297645C4(v11, v12);
}

uint64_t sub_2297643B4()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_22A4DD07C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_229541CB0(v2, &off_283CE3968);
  v8 = sub_22A4DD05C();
  v9 = sub_22A4DDCCC();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_229538000, v8, v9, "Stop network diagnostics.", v10, 2u);
    MEMORY[0x22AAD4E50](v10, -1, -1);
  }

  (*(v4 + 8))(v7, v3);
  if (qword_281401AF0 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_281401AF8);
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_281401B00 == v1)
  {

    qword_281401B00 = 0;
  }

  os_unfair_lock_unlock(&dword_281401AF8);
  return sub_229764914();
}

uint64_t sub_2297645C4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(v2 + 160);
  v4 = *(v2 + 168);
  v6 = sub_229767DE4(&qword_281401AE8, a2, _s26NetworkDiagnosticsObserverCMa);
  v5(v17, v3, v6);
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = v18;
  v9 = v19;
  __swift_mutable_project_boxed_opaque_existential_0(v17, v18);
  v10 = *(v9 + 32);
  swift_retain_n();
  v10(sub_229767E2C, v7, v8, v9);
  v11 = v18;
  v12 = v19;
  __swift_mutable_project_boxed_opaque_existential_0(v17, v18);
  (*(v12 + 56))(sub_229767E2C, v7, v11, v12);
  v13 = __swift_project_boxed_opaque_existential_0(v17, v18);
  sub_22A4DCF1C();
  v14 = *v13;
  sub_22A4DCE6C();

  sub_22957F1C4(v17, v16);
  swift_beginAccess();
  sub_229767D74(v16, v3 + 112);
  swift_endAccess();
  return __swift_destroy_boxed_opaque_existential_0(v17);
}

uint64_t sub_229764770()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v8 - v2;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    v6 = sub_22A4DD9DC();
    (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
    v7 = swift_allocObject();
    v7[2] = 0;
    v7[3] = 0;
    v7[4] = v5;
    sub_22957F3C0(0, 0, v3, &unk_22A582070, v7);
  }

  return result;
}

uint64_t sub_2297648B0()
{
  v1 = *(v0 + 16);
  v2 = sub_229764914();
  sub_2297645C4(v2, v3);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_229764914()
{
  v1 = v0;
  swift_beginAccess();
  sub_229767D04(v0 + 112, &v6);
  if (*(&v7 + 1))
  {
    sub_22957F1C4(&v6, v5);
    sub_22953EAE4(&v6, &qword_27D8809D8, &unk_22A582040);
    v2 = __swift_project_boxed_opaque_existential_0(v5, v5[3]);
    sub_22A4DCF1C();
    v3 = *v2;
    sub_22A4DCE8C();

    __swift_destroy_boxed_opaque_existential_0(v5);
  }

  else
  {
    sub_22953EAE4(&v6, &qword_27D8809D8, &unk_22A582040);
  }

  v8 = 0;
  v6 = 0u;
  v7 = 0u;
  swift_beginAccess();
  sub_229767D74(&v6, v1 + 112);
  return swift_endAccess();
}

uint64_t sub_229764A10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_beginAccess();

  v8 = *(v3 + 192);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v28 = *(v3 + 192);
  *(v3 + 192) = 0x8000000000000000;
  sub_2295ABB70(a1, a2, a3, isUniquelyReferenced_nonNull_native);

  *(v3 + 192) = v28;
  swift_endAccess();
  v10 = *(a1 + 16);
  v11 = MEMORY[0x277D84F90];
  if (v10)
  {
    v28 = MEMORY[0x277D84F90];
    sub_22A4DE29C();
    v12 = sub_229562F68(0, &unk_281401750, 0x277CD1E80);
    v13 = a1 + 32;
    do
    {
      sub_22957F1C4(v13, v25);
      v14 = v26;
      v15 = v27;
      v16 = __swift_project_boxed_opaque_existential_0(v25, v26);
      v17 = *(*(v14 - 8) + 64);
      MEMORY[0x28223BE20](v16);
      v19 = v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v20 + 16))(v19);
      sub_229766C74(v19, v12, v14, v15);
      __swift_destroy_boxed_opaque_existential_0(v25);
      sub_22A4DE27C();
      v21 = *(v28 + 16);
      sub_22A4DE2AC();
      sub_22A4DE2BC();
      sub_22A4DE28C();
      v13 += 40;
      --v10;
    }

    while (v10);
    v11 = v28;
  }

  if (!swift_unknownObjectWeakLoadStrong())
  {
  }

  v22 = *(v4 + 184);
  ObjectType = swift_getObjectType();
  (*(v22 + 8))(a2, a3, v11, ObjectType, v22);

  return swift_unknownObjectRelease();
}

uint64_t sub_229764C6C(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_22A4DCF3C();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x28223BE20](v4);
  v57 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v52 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v52 - v12;
  v14 = sub_22A4DD07C();
  v60 = *(v14 - 8);
  v15 = *(v60 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v61 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v52 - v18;
  v56 = v3;
  sub_229541CB0(v3, &off_283CE3968);
  v20 = v5[2];
  v59 = a1;
  v62 = v20;
  v63 = v5 + 2;
  v20(v13, a1, v4);
  v21 = sub_22A4DD05C();
  v22 = sub_22A4DDCCC();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v58 = v14;
    v24 = v23;
    v25 = swift_slowAlloc();
    v53 = v5;
    v26 = v25;
    v64[0] = v25;
    *v24 = 136315138;
    v27 = sub_22A4DCF2C();
    v54 = v11;
    v29 = v28;
    v55 = v5[1];
    v55(v13, v4);
    v30 = sub_2295A3E30(v27, v29, v64);
    v11 = v54;

    *(v24 + 4) = v30;
    _os_log_impl(&dword_229538000, v21, v22, "Network diagnostics event occurred: %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v26);
    MEMORY[0x22AAD4E50](v26, -1, -1);
    v31 = v24;
    v14 = v58;
    MEMORY[0x22AAD4E50](v31, -1, -1);

    v32 = *(v60 + 8);
    v32(v19, v14);
    v33 = v53;
  }

  else
  {

    v55 = v5[1];
    v55(v13, v4);
    v33 = v5;
    v32 = *(v60 + 8);
    v32(v19, v14);
  }

  v34 = v59;
  v62(v11, v59, v4);
  v35 = (v33[11])(v11, v4);
  v36 = v61;
  if (v35 == *MEMORY[0x277D6B270])
  {
    (v33[12])(v11, v4);
    v37 = sub_22A4DCF8C();
    v38 = MEMORY[0x277D6B2B8];
LABEL_16:
    v64[3] = v37;
    v64[4] = v38;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v64);
    (*(*(v37 - 8) + 32))(boxed_opaque_existential_1, v11, v37);
    sub_2297653A4(v64);
    return __swift_destroy_boxed_opaque_existential_0(v64);
  }

  if (v35 == *MEMORY[0x277D6B280])
  {
    (v33[12])(v11, v4);
    v37 = sub_22A4DCE5C();
    v38 = MEMORY[0x277D6B230];
    goto LABEL_16;
  }

  if (v35 == *MEMORY[0x277D6B260])
  {
    (v33[12])(v11, v4);
    v37 = sub_22A4DCF6C();
    v38 = MEMORY[0x277D6B2A8];
    goto LABEL_16;
  }

  if (v35 == *MEMORY[0x277D6B278])
  {
    (v33[12])(v11, v4);
    v37 = sub_22A4DCF9C();
    v38 = MEMORY[0x277D6B2C0];
    goto LABEL_16;
  }

  if (v35 == *MEMORY[0x277D6B258])
  {
    (v33[12])(v11, v4);
    v37 = sub_22A4DCF4C();
    v38 = MEMORY[0x277D6B2A0];
    goto LABEL_16;
  }

  if (v35 == *MEMORY[0x277D6B268])
  {
    (v33[12])(v11, v4);
    v37 = sub_22A4DCF7C();
    v38 = MEMORY[0x277D6B2B0];
    goto LABEL_16;
  }

  v58 = v14;
  sub_229541CB0(v56, &off_283CE3968);
  v41 = v57;
  v62(v57, v34, v4);
  v42 = sub_22A4DD05C();
  v43 = sub_22A4DDCEC();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v64[0] = v63;
    *v44 = 136315138;
    v45 = sub_22A4DCF2C();
    v47 = v46;
    v48 = v55;
    v55(v41, v4);
    v49 = sub_2295A3E30(v45, v47, v64);

    *(v44 + 4) = v49;
    _os_log_impl(&dword_229538000, v42, v43, "Unsupported payload type: %s", v44, 0xCu);
    v50 = v63;
    __swift_destroy_boxed_opaque_existential_0(v63);
    MEMORY[0x22AAD4E50](v50, -1, -1);
    MEMORY[0x22AAD4E50](v44, -1, -1);

    v51 = v61;
  }

  else
  {

    v48 = v55;
    v55(v41, v4);
    v51 = v36;
  }

  v32(v51, v58);
  return v48(v11, v4);
}

uint64_t sub_2297653A4(void *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_22A4DD07C();
  v62 = *(v5 - 8);
  v63 = v5;
  v6 = *(v62 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v61 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v60 = &v53 - v9;
  v10 = sub_22A4DD26C();
  v58 = *(v10 - 8);
  v59 = v10;
  v11 = *(v58 + 64);
  MEMORY[0x28223BE20](v10);
  v56 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_22A4DD29C();
  v55 = *(v57 - 8);
  v13 = *(v55 + 64);
  MEMORY[0x28223BE20](v57);
  v54 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22A4DCECC();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v53 - v21;
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_22A4DCEFC();
  (*(v16 + 104))(v20, *MEMORY[0x277D6B240], v15);
  sub_229767DE4(&qword_281401CF8, 255, MEMORY[0x277D6B248]);
  v24 = sub_22A4DD58C();
  v25 = *(v16 + 8);
  v25(v20, v15);
  v25(v22, v15);
  if (v24)
  {
    v26 = v61;
    sub_229541CB0(v4, &off_283CE3968);
    sub_22957F1C4(a1, aBlock);
    v27 = sub_22A4DD05C();
    v28 = sub_22A4DDCCC();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *&v69[0] = v30;
      *v29 = 136315138;
      __swift_project_boxed_opaque_existential_0(aBlock, v66);
      v31 = sub_22A4DCEEC();
      v33 = v32;
      __swift_destroy_boxed_opaque_existential_0(aBlock);
      v34 = sub_2295A3E30(v31, v33, v69);

      *(v29 + 4) = v34;
      _os_log_impl(&dword_229538000, v27, v28, "Receive invalid event: %s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x22AAD4E50](v30, -1, -1);
      MEMORY[0x22AAD4E50](v29, -1, -1);

      return (*(v62 + 8))(v26, v63);
    }

    (*(v62 + 8))(v26, v63);
    return __swift_destroy_boxed_opaque_existential_0(aBlock);
  }

  v36 = v4;
  v37 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  if ((sub_22A4DCEDC() & 1) == 0)
  {
    v47 = v2[19];
    sub_22957F1C4(a1, v69);
    v48 = swift_allocObject();
    sub_229557188(v69, v48 + 16);
    *(v48 + 56) = v2;
    *(v48 + 64) = v36;
    v67 = sub_229767C14;
    v68 = v48;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22953E640;
    v66 = &block_descriptor_29;
    v49 = _Block_copy(aBlock);

    v50 = v54;
    sub_22A4DD28C();
    v64 = MEMORY[0x277D84F90];
    sub_229767DE4(&qword_281401CF0, 255, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87CEA0, &unk_22A577A40);
    sub_229579858(qword_281401CB0, &unk_27D87CEA0, &unk_22A577A40);
    v51 = v56;
    v52 = v59;
    sub_22A4DE03C();
    MEMORY[0x22AAD0F80](0, v50, v51, v49);
    _Block_release(v49);
    (*(v58 + 8))(v51, v52);
    (*(v55 + 8))(v50, v57);
  }

  v38 = v60;
  sub_229541CB0(v36, &off_283CE3968);
  sub_22957F1C4(a1, aBlock);
  v39 = sub_22A4DD05C();
  v40 = sub_22A4DDCCC();
  if (!os_log_type_enabled(v39, v40))
  {

    (*(v62 + 8))(v38, v63);
    return __swift_destroy_boxed_opaque_existential_0(aBlock);
  }

  v41 = swift_slowAlloc();
  v42 = swift_slowAlloc();
  *&v69[0] = v42;
  *v41 = 136315138;
  __swift_project_boxed_opaque_existential_0(aBlock, v66);
  v43 = sub_22A4DCEEC();
  v45 = v44;
  __swift_destroy_boxed_opaque_existential_0(aBlock);
  v46 = sub_2295A3E30(v43, v45, v69);

  *(v41 + 4) = v46;
  _os_log_impl(&dword_229538000, v39, v40, "Ignore synthetic event: %s", v41, 0xCu);
  __swift_destroy_boxed_opaque_existential_0(v42);
  MEMORY[0x22AAD4E50](v42, -1, -1);
  MEMORY[0x22AAD4E50](v41, -1, -1);

  return (*(v62 + 8))(v38, v63);
}

uint64_t sub_229765B9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v13 - v8;
  v10 = sub_22A4DD9DC();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_22957F1C4(a1, v14);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  sub_229557188(v14, (v11 + 4));
  v11[9] = a2;
  v11[10] = a3;

  sub_22957F3C0(0, 0, v9, &unk_22A582058, v11);
}

uint64_t sub_229765CCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[18] = a5;
  v6[19] = a6;
  v6[17] = a4;
  v7 = sub_22A4DCECC();
  v6[20] = v7;
  v8 = *(v7 - 8);
  v6[21] = v8;
  v9 = *(v8 + 64) + 15;
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();
  v10 = sub_22A4DD07C();
  v6[24] = v10;
  v11 = *(v10 - 8);
  v6[25] = v11;
  v12 = *(v11 + 64) + 15;
  v6[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_229765DF8, 0, 0);
}

uint64_t sub_229765DF8()
{
  v23 = v0;
  v1 = v0[26];
  v2 = v0[17];
  sub_229541CB0(v0[19], &off_283CE3968);
  sub_22957F1C4(v2, (v0 + 2));
  v3 = sub_22A4DD05C();
  v4 = sub_22A4DDCDC();
  v5 = os_log_type_enabled(v3, v4);
  v7 = v0[25];
  v6 = v0[26];
  v8 = v0[24];
  if (v5)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v22 = v10;
    *v9 = 136315138;
    v11 = v0[6];
    __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v21 = v6;
    v12 = sub_22A4DCEEC();
    v14 = v13;
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    v15 = sub_2295A3E30(v12, v14, &v22);

    *(v9 + 4) = v15;
    _os_log_impl(&dword_229538000, v3, v4, "Adding network diagnostics payload: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x22AAD4E50](v10, -1, -1);
    MEMORY[0x22AAD4E50](v9, -1, -1);

    (*(v7 + 8))(v21, v8);
  }

  else
  {

    (*(v7 + 8))(v6, v8);
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  }

  v16 = v0[17];
  v17 = v0[18];
  v18 = v16[4];
  __swift_project_boxed_opaque_existential_0(v16, v16[3]);
  v0[15] = sub_22A4DCF0C();
  v0[16] = v19;
  v0[27] = v19;

  return MEMORY[0x2822009F8](sub_22976600C, v17, 0);
}

uint64_t sub_22976600C()
{
  v1 = *(v0 + 144);
  swift_beginAccess();
  *(v0 + 224) = *(v1 + 192);

  return MEMORY[0x2822009F8](sub_229766094, 0, 0);
}

uint64_t sub_229766094()
{
  v1 = *(v0 + 216);
  if (*(*(v0 + 224) + 16))
  {
    v2 = *(v0 + 224);
    v3 = sub_229543DBC(*(v0 + 120), *(v0 + 216));
    v5 = v4;

    if (v5)
    {
      v6 = *(*(*(v0 + 224) + 56) + 8 * v3);
      swift_bridgeObjectRetain_n();
      goto LABEL_6;
    }
  }

  else
  {
    v7 = *(v0 + 216);
  }

  v6 = MEMORY[0x277D84F90];
LABEL_6:

  v9 = *(v0 + 176);
  v8 = *(v0 + 184);
  v10 = *(v0 + 160);
  v11 = *(v0 + 168);
  v12 = *(v0 + 136);
  v13 = swift_task_alloc();
  *(v13 + 16) = v12;
  v14 = sub_229763F5C(sub_229767CE4, v13, v6);

  v15 = v12[4];
  __swift_project_boxed_opaque_existential_0(v12, v12[3]);
  sub_22A4DCEFC();
  (*(v11 + 104))(v9, *MEMORY[0x277D6B238], v10);
  sub_229767DE4(&qword_281401CF8, 255, MEMORY[0x277D6B248]);
  v16 = sub_22A4DD58C();
  v17 = *(v11 + 8);
  v17(v9, v10);
  v17(v8, v10);
  if ((v16 & 1) == 0)
  {
    sub_22957F1C4(*(v0 + 136), v0 + 56);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_22958B7D4(0, v14[2] + 1, 1, v14);
    }

    v19 = v14[2];
    v18 = v14[3];
    if (v19 >= v18 >> 1)
    {
      v14 = sub_22958B7D4((v18 > 1), v19 + 1, 1, v14);
    }

    v14[2] = v19 + 1;
    sub_229557188((v0 + 56), &v14[5 * v19 + 4]);
  }

  *(v0 + 232) = v14;
  v20 = *(v0 + 136);
  v21 = *(v0 + 144);
  v22 = v20[4];
  __swift_project_boxed_opaque_existential_0(v20, v20[3]);
  *(v0 + 240) = sub_22A4DCF0C();
  *(v0 + 248) = v23;

  return MEMORY[0x2822009F8](sub_229766344, v21, 0);
}

uint64_t sub_229766344()
{
  v1 = v0[26];
  v3 = v0[22];
  v2 = v0[23];
  v4 = v0[18];
  sub_229764A10(v0[29], v0[30], v0[31]);

  v5 = v0[1];

  return v5();
}

BOOL sub_2297663F4(void *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  DynamicType = swift_getDynamicType();
  __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  return DynamicType != swift_getDynamicType();
}

uint64_t sub_229766464()
{
  sub_22953EAE4(v0 + 112, &qword_27D8809D8, &unk_22A582040);

  v1 = *(v0 + 168);

  sub_2296B874C(v0 + 176);
  v2 = *(v0 + 192);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

void sub_2297664D0()
{
  sub_229562F68(0, &unk_281401750, 0x277CD1E80);
  v1 = sub_22A4DD81C();
  v2 = sub_22A4DD5AC();
  [v0 _updateSymptoms_forIDSIdentifier_];
}

uint64_t sub_229766594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return MEMORY[0x2822009F8](sub_2297665B4, 0, 0);
}

uint64_t sub_2297665B4()
{
  v1 = *(v0 + 24);
  v2 = objc_opt_self();
  v3 = v1;
  v4 = [v2 defaultDataSource];
  _s26NetworkDiagnosticsObserverCMa();
  v5 = swift_allocObject();
  v6 = sub_2297678B0(v3, v4, sub_229764130, 0, v5);
  *(v0 + 32) = v6;
  if (v6)
  {

    return MEMORY[0x2822009F8](sub_2297666C8, v6, 0);
  }

  else
  {
    **(v0 + 16) = 1;
    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_2297666C8()
{
  v1 = *(v0 + 32);
  sub_2297641A8();

  return MEMORY[0x2822009F8](sub_2296BB844, 0, 0);
}

uint64_t sub_22976685C()
{
  if (qword_281401AF0 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_281401AF8);
  v1 = qword_281401B00;
  *(v0 + 16) = qword_281401B00;

  os_unfair_lock_unlock(&dword_281401AF8);
  if (v1)
  {

    return MEMORY[0x2822009F8](sub_229766954, v1, 0);
  }

  else
  {
    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_229766954()
{
  v1 = *(v0 + 16);
  sub_2297643B4();

  return MEMORY[0x2822009F8](sub_2297669C4, 0, 0);
}

uint64_t sub_2297669C4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_229766B14()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_229586D38;

  return sub_229766840();
}

uint64_t sub_229766BC0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_229586D38;

  return sub_229766594(a1, v4, v5, v6);
}

id sub_229766C74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](a1);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v18 - v12;
  (*(v7 + 32))(&v18 - v12);
  (*(v7 + 16))(v11, v13, a3);
  v14 = sub_229766E3C(v11, a3, a4);
  if (sub_22976747C(v13, a2, a3, a4))
  {
    sub_229562F68(0, &qword_281401760, 0x277D82BB8);
    v15 = sub_22A4DD47C();
  }

  else
  {
    v15 = 0;
  }

  v16 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithType:v14 infoDictionary:v15];

  (*(v7 + 8))(v13, a3);
  return v16;
}

uint64_t sub_229766E3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v53 = a1;
  v45 = sub_22A4DCF7C();
  v42 = *(v45 - 8);
  v5 = *(v42 + 64);
  MEMORY[0x28223BE20](v45);
  v44 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_22A4DCF8C();
  v43 = *(v48 - 8);
  v7 = *(v43 + 64);
  MEMORY[0x28223BE20](v48);
  v46 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_22A4DCE5C();
  v49 = *(v52 - 8);
  v9 = *(v49 + 64);
  v10 = MEMORY[0x28223BE20](v52);
  v47 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v51 = &v41 - v12;
  v13 = sub_22A4DCF4C();
  v50 = *(v13 - 8);
  v14 = *(v50 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22A4DCF6C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_22A4DCF9C();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v41 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55[3] = a2;
  v55[4] = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v55);
  (*(*(a2 - 8) + 32))(boxed_opaque_existential_1, v53, a2);
  sub_22957F1C4(v55, v54);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8809E0, &qword_22A582060);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(v55);
    (*(v23 + 8))(v26, v22);
    v28 = 113;
  }

  else if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(v55);
    (*(v18 + 8))(v21, v17);
    v28 = 112;
  }

  else if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(v55);
    (*(v50 + 8))(v16, v13);
    v28 = 114;
  }

  else
  {
    v31 = v51;
    v30 = v52;
    if (swift_dynamicCast())
    {
      v32 = v49;
      v33 = v47;
      (*(v49 + 32))(v47, v31, v30);
      v34 = sub_22A4DCE3C();
      if (v34 == 2 || (v34 & 1) == 0)
      {
        v37 = sub_22A4DCE4C();
        if (v37 == 2 || (v37 & 1) == 0)
        {
          v38 = sub_22A4DCE2C();
          (*(v32 + 8))(v33, v30);
          if (v38 == 2)
          {
            __swift_destroy_boxed_opaque_existential_0(v55);
          }

          else
          {
            __swift_destroy_boxed_opaque_existential_0(v55);
            if ((v38 & 1) == 0)
            {
              v28 = 103;
              goto LABEL_7;
            }
          }

          v28 = 100;
        }

        else
        {
          (*(v32 + 8))(v33, v30);
          __swift_destroy_boxed_opaque_existential_0(v55);
          v28 = 102;
        }
      }

      else
      {
        (*(v32 + 8))(v33, v30);
        __swift_destroy_boxed_opaque_existential_0(v55);
        v28 = 101;
      }
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_0(v55);
      v35 = v46;
      v36 = v48;
      if (swift_dynamicCast())
      {
        (*(v43 + 8))(v35, v36);
        v28 = 111;
      }

      else
      {
        v39 = v44;
        v40 = v45;
        if (swift_dynamicCast())
        {
          (*(v42 + 8))(v39, v40);
          v28 = 115;
        }

        else
        {
          v28 = 110;
        }
      }
    }
  }

LABEL_7:
  __swift_destroy_boxed_opaque_existential_0(v54);
  return v28;
}

unint64_t sub_22976747C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_22A4DCE5C();
  v37 = *(v7 - 8);
  v8 = *(v37 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0) + 152;
  MEMORY[0x28223BE20](v9);
  v13 = v38 - v12 + 152;
  v14 = sub_22A4DCF6C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0) + 152;
  MEMORY[0x28223BE20](v17);
  v21 = v38 - v20 + 152;
  v39[3] = a3;
  v39[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v39);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a1, a3);
  sub_22957F1C4(v39, v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8809E0, &qword_22A582060);
  if (swift_dynamicCast())
  {
    (*(v15 + 32))(v19, v21, v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87CCC0, &unk_22A5779A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22A576180;
    v24 = *MEMORY[0x277CD11C8];
    *(inited + 32) = sub_22A4DD5EC();
    *(inited + 40) = v25;
    sub_22A4DCF5C();
    v26 = sub_22A4DD81C();

    *(inited + 48) = v26;
    v27 = sub_22956AC48(inited);
    swift_setDeallocating();
    sub_22953EAE4(inited + 32, &qword_27D87CD90, &qword_22A5779F0);
    (*(v15 + 8))(v19, v14);
  }

  else
  {
    v27 = 0;
    if (swift_dynamicCast())
    {
      v28 = v37;
      (*(v37 + 32))(v11, v13, v7);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87CCC0, &unk_22A5779A0);
      v29 = swift_initStackObject();
      *(v29 + 16) = xmmword_22A5761B0;
      v30 = *MEMORY[0x277CD11B0];
      *(v29 + 32) = sub_22A4DD5EC();
      *(v29 + 40) = v31;
      sub_22A4DCE4C();
      *(v29 + 48) = sub_22A4DD8AC();
      v32 = *MEMORY[0x277CD11B8];
      *(v29 + 56) = sub_22A4DD5EC();
      *(v29 + 64) = v33;
      sub_22A4DCE3C();
      *(v29 + 72) = sub_22A4DD8AC();
      v34 = *MEMORY[0x277CD11C0];
      *(v29 + 80) = sub_22A4DD5EC();
      *(v29 + 88) = v35;
      sub_22A4DCE2C();
      *(v29 + 96) = sub_22A4DD8AC();
      v27 = sub_22956AC48(v29);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CD90, &qword_22A5779F0);
      swift_arrayDestroy();
      (*(v28 + 8))(v11, v7);
    }
  }

  __swift_destroy_boxed_opaque_existential_0(v38);
  __swift_destroy_boxed_opaque_existential_0(v39);
  return v27;
}

uint64_t sub_2297678B0(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26 = a1;
  v27 = a4;
  v20 = a3;
  v24 = a2;
  v25 = sub_22A4DDD7C();
  v23 = *(v25 - 8);
  v6 = *(v23 + 64);
  MEMORY[0x28223BE20](v25);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22A4DDD5C();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v11 = sub_22A4DD29C();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  swift_defaultActor_initialize();
  v13 = sub_229562F68(0, &qword_281401980, 0x277D85C78);
  *(a5 + 112) = 0u;
  *(a5 + 128) = 0u;
  v21 = &OBJC_IVAR____TtCE13HomeKitDaemonCSo17HMDSymptomManager26NetworkDiagnosticsObserver_serialQueue;
  v22 = v13;
  *(a5 + 144) = 0;
  sub_22A4DD28C();
  v28 = MEMORY[0x277D84F90];
  sub_229767DE4(&qword_281401990, 255, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87BAF0, &unk_22A5761E0);
  sub_229579858(&qword_281401CA0, &unk_27D87BAF0, &unk_22A5761E0);
  v14 = v24;
  sub_22A4DE03C();
  (*(v23 + 104))(v8, *MEMORY[0x277D85260], v25);
  *(a5 + 152) = sub_22A4DDDCC();
  *(a5 + 184) = 0;
  swift_unknownObjectWeakInit();
  *(a5 + 192) = MEMORY[0x277D84F98];
  if ([v14 isNetworkDiagnosticsEnabled])
  {

    *(a5 + 184) = &off_283CE3958;
    v15 = v26;
    swift_unknownObjectWeakAssign();

    v16 = v27;
    *(a5 + 160) = v20;
    *(a5 + 168) = v16;
  }

  else
  {
    sub_22953EAE4(a5 + 112, &qword_27D8809D8, &unk_22A582040);

    sub_2296B874C(a5 + 176);
    v17 = *(a5 + 192);

    _s26NetworkDiagnosticsObserverCMa();
    swift_defaultActor_destroy();

    swift_deallocPartialClassInstance();
    return 0;
  }

  return a5;
}

uint64_t sub_229767C20(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = v1[10];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_229586D38;

  return sub_229765CCC(a1, v4, v5, (v1 + 4), v6, v7);
}

uint64_t sub_229767D04(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8809D8, &unk_22A582040);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_229767D74(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8809D8, &unk_22A582040);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_229767DE4(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_229767E34(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_229569B30;

  return sub_229764890(a1, v4, v5, v6);
}

uint64_t sub_229767EE8(uint64_t a1)
{
  v38 = a1;
  v1 = sub_22A4DCC4C();
  v33 = v1;
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v36 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = v32 - v6;
  v8 = sub_22A4DC75C();
  v35 = v8;
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v32 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C350, &qword_22A576E40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22A582080;
  sub_22A4DC72C();
  sub_22A4DC74C();
  v34 = *(v9 + 8);
  v34(v15, v8);
  v17 = sub_22A4DE7DC();
  sub_22A4DCB6C();
  sub_22A4DCC3C();
  v18 = *(v2 + 8);
  v32[1] = v2 + 8;
  v18(v7, v1);
  v19 = sub_22A4DE7DC();
  v20 = [v37 accessory];
  v21 = objc_opt_self();
  v22 = [v21 PathWithEventID:v17 endpointID:v38 clusterID:v19 accessory:v20];

  *(inited + 32) = v22;
  sub_22A4DC73C();
  sub_22A4DC74C();
  v34(v13, v35);
  v23 = sub_22A4DE7DC();
  v24 = v36;
  sub_22A4DCC0C();
  sub_22A4DCC3C();
  v18(v24, v33);
  v25 = sub_22A4DE7DC();
  v26 = [v37 accessory];
  v27 = [v21 PathWithEventID:v23 endpointID:v38 clusterID:v25 accessory:v26];

  *(inited + 40) = v27;
  sub_22965C5B0(inited);
  v29 = v28;
  swift_setDeallocating();
  v30 = *(inited + 16);
  swift_arrayDestroy();
  return v29;
}

uint64_t sub_229768300(void *a1)
{
  v3 = sub_22A4DD07C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [v1 accessory];
  if (v8)
  {
    v9 = v8;
    objc_opt_self();
    v10 = swift_dynamicCastObjCClass();
    if (v10)
    {
      v11 = v10;
      if ([v10 supportsClimateAutomations])
      {
        v12 = [v11 home];
        if (v12)
        {
          v13 = v12;
          v14 = [a1 eventID];
          if (v14)
          {
            v15 = v14;
            if ([v13 isCurrentDeviceConfirmedPrimaryResident])
            {
              v16 = [a1 clusterID];
              v17 = sub_2297686D0(v15, v16, &selRef_supportsAdaptiveTemperatureAutomations, MEMORY[0x277D17228], MEMORY[0x277D17398]);

              if (v17)
              {

                v18 = 1;
              }

              else
              {
                v26 = [a1 clusterID];
                v18 = sub_2297686D0(v15, v26, &selRef_supportsCleanEnergyAutomation, MEMORY[0x277D17230], MEMORY[0x277D173B8]);
              }

              return v18 & 1;
            }

            v9 = v13;
          }

          else
          {
            v15 = v13;
          }

          v9 = v15;
        }
      }
    }
  }

  sub_229562F68(0, &qword_27D8809F0, off_278666248);
  sub_22A4DDC0C();
  sub_22A4DD08C();
  v19 = a1;
  v20 = sub_22A4DD05C();
  v21 = sub_22A4DDCEC();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v22 = 138412290;
    *(v22 + 4) = v19;
    *v23 = v19;
    v24 = v19;
    _os_log_impl(&dword_229538000, v20, v21, "Climate should not handle event report with matter path: %@", v22, 0xCu);
    sub_22953EAE4(v23, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v23, -1, -1);
    MEMORY[0x22AAD4E50](v22, -1, -1);
  }

  (*(v4 + 8))(v7, v3);
  v18 = 0;
  return v18 & 1;
}

uint64_t sub_2297686D0(uint64_t a1, uint64_t a2, SEL *a3, void (*a4)(void), void (*a5)(void))
{
  v30 = a5;
  v8 = v5;
  v10 = sub_22A4DCC4C();
  v29 = *(v10 - 8);
  v11 = *(v29 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22A4DC75C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = [v8 accessory];
  if (!v19)
  {
    goto LABEL_8;
  }

  v20 = v19;
  objc_opt_self();
  v21 = swift_dynamicCastObjCClass();
  if (!v21)
  {
LABEL_7:

LABEL_8:
    LOBYTE(v23) = 0;
    return v23 & 1;
  }

  v28[1] = a2;
  v22 = [v21 *a3];
  v23 = [v22 BOOLValue];

  if (v23)
  {
    sub_229562F68(0, &qword_281401760, 0x277D82BB8);
    a4();
    sub_22A4DC74C();
    (*(v15 + 8))(v18, v14);
    v24 = sub_22A4DE7DC();
    v25 = sub_22A4DDEDC();

    if (v25)
    {
      v30();
      sub_22A4DCC3C();
      (*(v29 + 8))(v13, v10);
      v26 = sub_22A4DE7DC();
      LOBYTE(v23) = sub_22A4DDEDC();

      goto LABEL_6;
    }

    goto LABEL_7;
  }

LABEL_6:

  return v23 & 1;
}

unint64_t sub_229768968()
{
  result = qword_27D8819F0;
  if (!qword_27D8819F0)
  {
    sub_229562F68(255, &qword_27D87E358, off_278666270);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8819F0);
  }

  return result;
}

uint64_t sub_2297689D0(uint64_t a1)
{
  v2[28] = a1;
  v2[29] = v1;
  v2[30] = swift_getObjectType();
  v3 = sub_22A4DD07C();
  v2[31] = v3;
  v4 = *(v3 - 8);
  v2[32] = v4;
  v5 = *(v4 + 64) + 15;
  v2[33] = swift_task_alloc();
  v6 = sub_22A4DC86C();
  v2[34] = v6;
  v7 = *(v6 - 8);
  v2[35] = v7;
  v8 = *(v7 + 64) + 15;
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881900, &unk_22A576E70) - 8) + 64) + 15;
  v2[38] = swift_task_alloc();
  v10 = sub_22A4DC8EC();
  v2[39] = v10;
  v11 = *(v10 - 8);
  v2[40] = v11;
  v12 = *(v11 + 64) + 15;
  v2[41] = swift_task_alloc();
  v13 = sub_22A4DCA0C();
  v2[42] = v13;
  v14 = *(v13 - 8);
  v2[43] = v14;
  v15 = *(v14 + 64) + 15;
  v2[44] = swift_task_alloc();
  v2[45] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_229768C00, 0, 0);
}

uint64_t sub_229768C00()
{
  v1 = v0[44];
  v2 = v0[28];

  sub_22A4DC9FC();
  (*(v0[43] + 32))(v0[45], v0[44], v0[42]);
  v3 = swift_task_alloc();
  v0[46] = v3;
  *v3 = v0;
  v3[1] = sub_229768E78;
  v4 = v0[38];
  v5 = v0[29];

  return sub_2297693CC(v4);
}

uint64_t sub_229768E78()
{
  v1 = *(*v0 + 368);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_229768F74, 0, 0);
}

uint64_t sub_229768F74()
{
  v42 = v0;
  v1 = *(v0 + 312);
  v2 = *(v0 + 320);
  v3 = *(v0 + 304);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    (*(*(v0 + 344) + 8))(*(v0 + 360), *(v0 + 336));
    sub_22953EAE4(v3, &qword_27D881900, &unk_22A576E70);
    v4 = 0;
  }

  else
  {
    v40 = *(v0 + 360);
    v5 = *(v0 + 288);
    v6 = *(v0 + 296);
    v8 = *(v0 + 272);
    v7 = *(v0 + 280);
    (*(v2 + 32))(*(v0 + 328), v3, v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D080, &qword_22A57CF50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22A576180;
    *(inited + 32) = 0xD000000000000017;
    *(inited + 40) = 0x800000022A589450;
    v10 = sub_22A4DC8DC();
    *(inited + 72) = MEMORY[0x277D84B78];
    *(inited + 48) = v10;
    v4 = sub_22956AC5C(inited);
    swift_setDeallocating();
    sub_22953EAE4(inited + 32, &unk_27D87DE50, &qword_22A577CD0);
    sub_22A4DC9BC();
    (*(v7 + 104))(v5, *MEMORY[0x277D17280], v8);
    sub_22976B5B8();
    sub_22A4DD7DC();
    sub_22A4DD7DC();
    v11 = *(v7 + 8);
    v11(v5, v8);
    v11(v6, v8);
    v12 = *(v0 + 360);
    if (*(v0 + 376) == *(v0 + 377))
    {
      v13 = sub_22A4DC9DC();
      v12 = *(v0 + 360);
      if ((v13 & 0x10000) == 0)
      {
        v14 = v13;
        v15 = sub_22A4DC9EC();
        if ((v15 & 0x10000) == 0)
        {
          v16 = *(v0 + 232);
          v17 = sub_22976A7CC(v14, v15);
          if (v17 != 2)
          {
            v29 = *(v0 + 336);
            v30 = *(v0 + 312);
            v31 = (*(v0 + 320) + 8);
            v32 = (*(v0 + 344) + 8);
            v33 = *(v0 + 360);
            v34 = *(v0 + 328);
            if (v17)
            {
              *(v0 + 184) = MEMORY[0x277D839B0];
              *(v0 + 160) = 1;
              sub_229543C58(v0 + 160, v0 + 192);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v41 = v4;
              v36 = __swift_mutable_project_boxed_opaque_existential_0(v0 + 192, *(v0 + 216));
              sub_2297FEF7C(*v36, 0x6E69746165487369, 0xE900000000000067, isUniquelyReferenced_nonNull_native, &v41);
              (*v31)(v34, v30);
              (*v32)(v33, v29);
              v37 = (v0 + 192);
            }

            else
            {
              *(v0 + 120) = MEMORY[0x277D839B0];
              *(v0 + 96) = 1;
              sub_229543C58(v0 + 96, v0 + 128);
              v38 = swift_isUniquelyReferenced_nonNull_native();
              v41 = v4;
              v39 = __swift_mutable_project_boxed_opaque_existential_0(v0 + 128, *(v0 + 152));
              sub_2297FEF7C(*v39, 0x6E696C6F6F437369, 0xE900000000000067, v38, &v41);
              (*v31)(v34, v30);
              (*v32)(v33, v29);
              v37 = (v0 + 128);
            }

            __swift_destroy_boxed_opaque_existential_0(v37);
            v4 = v41;
            goto LABEL_9;
          }
        }

        v12 = *(v0 + 360);
      }
    }

    v18 = *(v0 + 336);
    v19 = *(v0 + 344);
    (*(*(v0 + 320) + 8))(*(v0 + 328), *(v0 + 312));
    (*(v19 + 8))(v12, v18);
  }

LABEL_9:
  v21 = *(v0 + 352);
  v20 = *(v0 + 360);
  v22 = *(v0 + 328);
  v24 = *(v0 + 296);
  v23 = *(v0 + 304);
  v25 = *(v0 + 288);
  v26 = *(v0 + 264);

  v27 = *(v0 + 8);

  return v27(v4);
}

uint64_t sub_2297693CC(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v2[14] = swift_getObjectType();
  v3 = sub_22A4DD07C();
  v2[15] = v3;
  v4 = *(v3 - 8);
  v2[16] = v4;
  v5 = *(v4 + 64) + 15;
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8818D0, &qword_22A57A448) - 8) + 64) + 15;
  v2[20] = swift_task_alloc();
  v7 = sub_22A4DC85C();
  v2[21] = v7;
  v8 = *(v7 - 8);
  v2[22] = v8;
  v9 = *(v8 + 64) + 15;
  v2[23] = swift_task_alloc();
  v10 = sub_22A4DCA3C();
  v2[24] = v10;
  v11 = *(v10 - 8);
  v2[25] = v11;
  v12 = *(v11 + 64) + 15;
  v2[26] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8818C0, &unk_22A5820B0) - 8) + 64) + 15;
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v14 = sub_22A4DCD0C();
  v2[30] = v14;
  v15 = *(v14 - 8);
  v2[31] = v15;
  v16 = *(v15 + 64) + 15;
  v2[32] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22976964C, 0, 0);
}

uint64_t sub_22976964C()
{
  v50 = v0;
  v1 = [*(v0 + 104) matterDevice];
  *(v0 + 264) = v1;
  if (v1)
  {
    v2 = v1;
    v3 = [*(v0 + 104) accessory];
    if (v3)
    {
      v4 = v3;
      objc_opt_self();
      v5 = swift_dynamicCastObjCClass();
      if (v5)
      {
        v6 = [v5 valenciaMatterEndpoint];

        if (v6)
        {
          v7 = *(v0 + 256);
          [v6 unsignedShortValue];

          sub_22A4DCCEC();
          v8 = sub_229562F68(0, &qword_27D87DB90, 0x277CD5310);
          *(v0 + 272) = v8;
          v9 = MEMORY[0x277D17450];
          *(v0 + 40) = v8;
          *(v0 + 48) = v9;
          *(v0 + 16) = v2;
          v10 = *(MEMORY[0x277D17320] + 4);
          v11 = v2;
          v12 = swift_task_alloc();
          *(v0 + 280) = v12;
          *v12 = v0;
          v12[1] = sub_229769ADC;
          v13 = *(v0 + 256);
          v14 = *(v0 + 224);

          return MEMORY[0x282171618](v14, v0 + 16, v13);
        }
      }

      else
      {
      }
    }

    v25 = *(v0 + 152);
    v26 = *(v0 + 112);
    sub_2296F8604();
    v27 = sub_22A4DD05C();
    v28 = sub_22A4DDCEC();
    v29 = os_log_type_enabled(v27, v28);
    v30 = *(v0 + 152);
    v31 = *(v0 + 120);
    v32 = *(v0 + 128);
    if (v29)
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v49 = v34;
      *v33 = 136315138;
      *(v33 + 4) = sub_2295A3E30(0xD000000000000019, 0x800000022A595270, &v49);
      _os_log_impl(&dword_229538000, v27, v28, "%s Cannot determine the endpoint for the Thermostat cluster", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v34);
      MEMORY[0x22AAD4E50](v34, -1, -1);
      MEMORY[0x22AAD4E50](v33, -1, -1);
    }

    else
    {
    }

    (*(v32 + 8))(v30, v31);
  }

  else
  {
    v15 = *(v0 + 144);
    v16 = *(v0 + 112);
    sub_2296F8604();
    v17 = sub_22A4DD05C();
    v18 = sub_22A4DDCEC();
    v19 = os_log_type_enabled(v17, v18);
    v20 = *(v0 + 144);
    v21 = *(v0 + 120);
    v22 = *(v0 + 128);
    if (v19)
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v49 = v24;
      *v23 = 136315138;
      *(v23 + 4) = sub_2295A3E30(0xD000000000000019, 0x800000022A595270, &v49);
      _os_log_impl(&dword_229538000, v17, v18, "%s matterDevice is nil", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x22AAD4E50](v24, -1, -1);
      MEMORY[0x22AAD4E50](v23, -1, -1);
    }

    (*(v22 + 8))(v20, v21);
  }

  v35 = *(v0 + 96);
  v36 = sub_22A4DC8EC();
  (*(*(v36 - 8) + 56))(v35, 1, 1, v36);
  v37 = *(v0 + 256);
  v38 = *(v0 + 224);
  v39 = *(v0 + 232);
  v41 = *(v0 + 208);
  v40 = *(v0 + 216);
  v42 = *(v0 + 184);
  v44 = *(v0 + 152);
  v43 = *(v0 + 160);
  v46 = *(v0 + 136);
  v45 = *(v0 + 144);

  v47 = *(v0 + 8);

  return v47();
}

uint64_t sub_229769ADC()
{
  v2 = *v1;
  v3 = *(*v1 + 280);
  v6 = *v1;
  *(*v1 + 288) = v0;

  if (v0)
  {
    v4 = sub_22976A184;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0((v2 + 16));
    v4 = sub_229769BF8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_229769BF8()
{
  v2 = v0[33];
  v1 = v0[34];
  sub_22976B610(v0[28], v0[29]);
  v3 = MEMORY[0x277D17450];
  v0[10] = v1;
  v0[11] = v3;
  v0[7] = v2;
  v4 = *(MEMORY[0x277D17268] + 4);
  v5 = v2;
  v6 = swift_task_alloc();
  v0[37] = v6;
  *v6 = v0;
  v6[1] = sub_229769CC0;
  v7 = v0[32];

  return MEMORY[0x282171560](v0 + 7, v7);
}