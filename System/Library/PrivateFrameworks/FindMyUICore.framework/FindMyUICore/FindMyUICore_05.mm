void sub_24B058858(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = _s14descr285E46659O16SubscriptionDataOMa(0);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v126 = &v115 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v115 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v133 = &v115 - v14;
  MEMORY[0x28223BE20](v13);
  v132 = &v115 - v15;
  v129 = type metadata accessor for RepositorySubscriber();
  v16 = MEMORY[0x28223BE20](v129);
  v18 = &v115 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v130 = &v115 - v20;
  MEMORY[0x28223BE20](v19);
  v22 = &v115 - v21;
  if (qword_27EFC75E8 != -1)
  {
LABEL_62:
    swift_once();
  }

  v23 = sub_24B2D3184();
  v24 = __swift_project_value_buffer(v23, qword_27EFE4418);
  sub_24B05C848(a2, v22, type metadata accessor for RepositorySubscriber);

  v125 = v24;
  v25 = sub_24B2D3164();
  v26 = sub_24B2D5934();

  v27 = os_log_type_enabled(v25, v26);
  v124 = v18;
  v127 = v12;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v131 = v7;
    v29 = v28;
    v30 = swift_slowAlloc();
    v137[0] = v30;
    *v29 = 136315651;
    sub_24B05C6A4(&qword_27EFC8588, _s14descr285E46659O16SubscriptionDataOMa);
    v31 = sub_24B2D57F4();
    v128 = a1;
    v32 = a2;
    v33 = v6;
    v35 = v3;
    v36 = sub_24AFF321C(v31, v34, v137);

    *(v29 + 4) = v36;
    *(v29 + 12) = 2160;
    *(v29 + 14) = 1752392040;
    *(v29 + 22) = 2081;
    sub_24B05C848(v22, v130, type metadata accessor for RepositorySubscriber);
    v37 = sub_24B2D53C4();
    v39 = v38;
    sub_24B05C7E8(v22, type metadata accessor for RepositorySubscriber);
    v40 = sub_24AFF321C(v37, v39, v137);
    v3 = v35;

    *(v29 + 24) = v40;
    v6 = v33;
    a2 = v32;
    a1 = v128;
    _os_log_impl(&dword_24AFD2000, v25, v26, "RepositoryProvider: removeSubscriptions\n- subscriptionsToRemove: %s\n- subscriber: %{private,mask.hash}s", v29, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C23D530](v30, -1, -1);
    v41 = v29;
    v7 = v131;
    MEMORY[0x24C23D530](v41, -1, -1);

    if (!*(a1 + 16))
    {
      return;
    }
  }

  else
  {

    sub_24B05C7E8(v22, type metadata accessor for RepositorySubscriber);
    if (!*(a1 + 16))
    {
      return;
    }
  }

  v42 = OBJC_IVAR____TtC12FindMyUICore10Repository_subscriptionsBySubscriber;
  swift_beginAccess();
  v43 = *(v3 + v42);
  if (*(v43 + 16))
  {

    v44 = sub_24B181224(a2);
    if ((v45 & 1) == 0)
    {

      return;
    }

    v46 = *(*(v43 + 56) + 8 * v44);

    if (*(a1 + 16) <= *(v46 + 16) >> 3)
    {
      v136 = v46;
      sub_24B2A3A44(a1);
      v47 = v136;
    }

    else
    {
      v47 = sub_24B2A6758(a1, v46);
    }

    v48 = *(v47 + 16);
    v118 = a2;
    if (v48)
    {
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v135[0] = *(v3 + v42);
      *(v3 + v42) = 0x8000000000000000;
      sub_24B1C8FB0(v47, a2, isUniquelyReferenced_nonNull_native);
      *(v3 + v42) = v135[0];
    }

    else
    {

      v50 = a2;
      v51 = v130;
      sub_24B05C848(v50, v130, type metadata accessor for RepositorySubscriber);
      swift_beginAccess();
      sub_24B18BEF4(0, v51);
    }

    swift_endAccess();
    sub_24B00F238();

    v52 = sub_24B05C274(a1, v3);

    a1 = v52 + 56;
    v53 = 1 << *(v52 + 32);
    v54 = -1;
    if (v53 < 64)
    {
      v54 = ~(-1 << v53);
    }

    a2 = v54 & *(v52 + 56);
    v55 = OBJC_IVAR____TtC12FindMyUICore10Repository_subscriptionsByKind;

    v128 = v55;
    swift_beginAccess();
    v12 = 0;
    v22 = ((v53 + 63) >> 6);
    *(&v56 + 1) = 2;
    v120 = xmmword_24B2DE430;
    *&v56 = 136315138;
    v119 = v56;
    v18 = v127;
    v123 = v52 + 56;
    v121 = v6;
    v131 = v7;
    for (i = v52; ; v52 = i)
    {
      if (!a2)
      {
        while (1)
        {
          v58 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            __break(1u);
            goto LABEL_62;
          }

          if (v58 >= v22)
          {
            break;
          }

          a2 = *(a1 + 8 * v58);
          ++v12;
          if (a2)
          {
            v57 = v3;
            v12 = v58;
            goto LABEL_26;
          }
        }

        if (*(v52 + 16))
        {
          v102 = v124;
          sub_24B05C848(v118, v124, type metadata accessor for RepositorySubscriber);

          v103 = sub_24B2D3164();
          v104 = sub_24B2D5934();

          if (os_log_type_enabled(v103, v104))
          {
            v105 = swift_slowAlloc();
            v106 = swift_slowAlloc();
            v135[0] = v106;
            *v105 = 136315651;
            sub_24B05C6A4(&qword_27EFC8588, _s14descr285E46659O16SubscriptionDataOMa);
            v107 = sub_24B2D57F4();
            v108 = v52;
            v110 = sub_24AFF321C(v107, v109, v135);

            *(v105 + 4) = v110;
            *(v105 + 12) = 2160;
            *(v105 + 14) = 1752392040;
            *(v105 + 22) = 2081;
            sub_24B05C848(v102, v130, type metadata accessor for RepositorySubscriber);
            v111 = sub_24B2D53C4();
            v113 = v112;
            sub_24B05C7E8(v102, type metadata accessor for RepositorySubscriber);
            v114 = sub_24AFF321C(v111, v113, v135);

            *(v105 + 24) = v114;
            v52 = v108;
            _os_log_impl(&dword_24AFD2000, v103, v104, "RepositoryProvider: didRemoveUniqueSubscriptions\n- subscriptionsThatDoNotExistAnymore: %s\n- subscriber: %{private,mask.hash}s", v105, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x24C23D530](v106, -1, -1);
            MEMORY[0x24C23D530](v105, -1, -1);
          }

          else
          {

            sub_24B05C7E8(v102, type metadata accessor for RepositorySubscriber);
          }

          sub_24B03DE90(v52);
        }

        return;
      }

      v57 = v3;
LABEL_26:
      v59 = *(v52 + 48);
      v60 = v7;
      v61 = *(v7 + 72);
      v62 = v132;
      sub_24B05C848(v59 + v61 * (__clz(__rbit64(a2)) | (v12 << 6)), v132, _s14descr285E46659O16SubscriptionDataOMa);
      v63 = v62;
      v64 = v133;
      sub_24B05C780(v63, v133, _s14descr285E46659O16SubscriptionDataOMa);
      sub_24B05C848(v64, v18, _s14descr285E46659O16SubscriptionDataOMa);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 1)
      {
        if (EnumCaseMultiPayload)
        {
          sub_24B05C7E8(v18, _s14descr285E46659O16SubscriptionDataOMa);
          v66 = 3;
        }

        else
        {
          sub_24B05C7E8(v18, _s14descr285E46659O16SubscriptionDataOMa);
          v66 = 2;
        }
      }

      else if (EnumCaseMultiPayload == 2)
      {
        sub_24B05C7E8(v18, _s14descr285E46659O16SubscriptionDataOMa);
        v66 = 4;
      }

      else
      {
        v66 = EnumCaseMultiPayload != 3;
      }

      v7 = v60;
      v3 = v57;
      v67 = *(v57 + v128);
      a1 = v123;
      if (*(v67 + 16))
      {
        v68 = sub_24B1810E4(v66);
        if (v69)
        {
          break;
        }
      }

LABEL_19:
      a2 &= a2 - 1;
      sub_24B05C7E8(v133, _s14descr285E46659O16SubscriptionDataOMa);
    }

    v70 = *(*(v67 + 56) + 8 * v68);
    sub_24B05C848(v133, v126, _s14descr285E46659O16SubscriptionDataOMa);
    v71 = swift_getEnumCaseMultiPayload();

    v72 = v3;
    if (v71 <= 1)
    {
      sub_24B05C7E8(v126, _s14descr285E46659O16SubscriptionDataOMa);
      if (v71)
      {
        v73 = 3;
      }

      else
      {
        v73 = 2;
      }
    }

    else if (v71 == 2)
    {
      sub_24B05C7E8(v126, _s14descr285E46659O16SubscriptionDataOMa);
      v73 = 4;
    }

    else
    {
      v73 = v71 != 3;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8660);
    v74 = (*(v131 + 80) + 32) & ~*(v131 + 80);
    v75 = swift_allocObject();
    *(v75 + 16) = v120;
    sub_24B05C848(v133, v75 + v74, _s14descr285E46659O16SubscriptionDataOMa);
    v76 = sub_24B2A4D5C(v75, v70);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v3 = v72;
    v77 = v128;
    swift_beginAccess();
    v78 = swift_isUniquelyReferenced_nonNull_native();
    v134 = *(v3 + v77);
    v79 = v134;
    *(v3 + v77) = 0x8000000000000000;
    v80 = sub_24B1810E4(v73);
    v82 = v79[2];
    v83 = (v81 & 1) == 0;
    v84 = __OFADD__(v82, v83);
    v85 = v82 + v83;
    if (v84)
    {
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      sub_24B2D6054();
      __break(1u);
      return;
    }

    v86 = v81;
    if (v79[3] >= v85)
    {
      if ((v78 & 1) == 0)
      {
        v89 = v3;
        v90 = v80;
        sub_24B1CBD14();
        v80 = v90;
        v3 = v89;
        v88 = v134;
        if (v86)
        {
          goto LABEL_48;
        }

        goto LABEL_50;
      }
    }

    else
    {
      sub_24B1C18C0(v85, v78);
      v80 = sub_24B1810E4(v73);
      if ((v86 & 1) != (v87 & 1))
      {
        goto LABEL_65;
      }
    }

    v88 = v134;
    if (v86)
    {
LABEL_48:
      *(v88[7] + 8 * v80) = v76;

LABEL_52:
      *(v3 + v128) = v88;
      swift_endAccess();

      v93 = sub_24B2D3164();
      v94 = sub_24B2D5934();

      if (os_log_type_enabled(v93, v94))
      {
        v95 = swift_slowAlloc();
        v116 = swift_slowAlloc();
        v135[0] = v116;
        *v95 = v119;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8690);
        v117 = v3;
        sub_24B038C8C();
        v96 = sub_24B2D51F4();
        v98 = v97;

        v99 = v96;
        v3 = v117;
        v100 = sub_24AFF321C(v99, v98, v135);

        *(v95 + 4) = v100;
        _os_log_impl(&dword_24AFD2000, v93, v94, "Repository: subscriptionsByKind: %s", v95, 0xCu);
        v101 = v116;
        __swift_destroy_boxed_opaque_existential_0(v116);
        MEMORY[0x24C23D530](v101, -1, -1);
        MEMORY[0x24C23D530](v95, -1, -1);
      }

      v6 = v121;
      v7 = v131;
      v18 = v127;
      goto LABEL_19;
    }

LABEL_50:
    v88[(v80 >> 6) + 8] |= 1 << v80;
    *(v88[6] + v80) = v73;
    *(v88[7] + 8 * v80) = v76;
    v91 = v88[2];
    v84 = __OFADD__(v91, 1);
    v92 = v91 + 1;
    if (v84)
    {
      goto LABEL_64;
    }

    v88[2] = v92;
    goto LABEL_52;
  }
}

uint64_t sub_24B059688(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for RepositorySubscriber();
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v26[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v26[-1] - v8;
  if (qword_27EFC75E8 != -1)
  {
    swift_once();
  }

  v10 = sub_24B2D3184();
  __swift_project_value_buffer(v10, qword_27EFE4418);
  sub_24B05C848(a1, v9, type metadata accessor for RepositorySubscriber);
  v11 = sub_24B2D3164();
  v12 = sub_24B2D5934();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v26[0] = v14;
    *v13 = 141558275;
    *(v13 + 4) = 1752392040;
    *(v13 + 12) = 2081;
    sub_24B05C848(v9, v7, type metadata accessor for RepositorySubscriber);
    v15 = sub_24B2D53C4();
    v17 = v16;
    sub_24B05C7E8(v9, type metadata accessor for RepositorySubscriber);
    v18 = sub_24AFF321C(v15, v17, v26);

    *(v13 + 14) = v18;
    _os_log_impl(&dword_24AFD2000, v11, v12, "RepositoryProvider: removeSubscriber - subscriber: %{private,mask.hash}s", v13, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x24C23D530](v14, -1, -1);
    MEMORY[0x24C23D530](v13, -1, -1);
  }

  else
  {

    sub_24B05C7E8(v9, type metadata accessor for RepositorySubscriber);
  }

  v19 = OBJC_IVAR____TtC12FindMyUICore10Repository_subscriptionsBySubscriber;
  result = swift_beginAccess();
  v21 = *(v2 + v19);
  if (*(v21 + 16))
  {

    v22 = sub_24B181224(a1);
    if (v23)
    {
      v24 = *(*(v21 + 56) + 8 * v22);

      sub_24B058858(v24, a1);
    }
  }

  return result;
}

uint64_t sub_24B059990()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24B2D3214();
}

uint64_t sub_24B059A08(uint64_t a1)
{
  v3 = type metadata accessor for CompositeAppViewState(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24B05C848(a1, v5, type metadata accessor for CompositeAppViewState);

  sub_24B2D3224();
  v6 = *(v1 + OBJC_IVAR____TtC12FindMyUICore21CompositeAppViewModel_tintColorDidInvalidateHandler);
  if (v6)
  {

    v6(v7);
    sub_24AFD5890(v6);
  }

  return sub_24B05C7E8(a1, type metadata accessor for CompositeAppViewState);
}

uint64_t sub_24B059B2C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24B2D3214();

  return v1;
}

uint64_t sub_24B059BA0()
{
  swift_getKeyPath();
  swift_getKeyPath();

  result = sub_24B2D3224();
  v2 = *(v0 + OBJC_IVAR____TtC12FindMyUICore21CompositeAppViewModel_tintColorDidInvalidateHandler);
  if (v2)
  {

    v2(v3);
    return sub_24AFD5890(v2);
  }

  return result;
}

char *sub_24B059C44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v71 = a8;
  v72 = a6;
  v73 = a7;
  v68 = a4;
  v69 = a5;
  v67 = a3;
  v64 = a2;
  v65 = a1;
  v70 = a9;
  v63[1] = *v9;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8500);
  v11 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v13 = v63 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8A30);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = v63 - v16;
  v18 = type metadata accessor for CompositeAppViewState(0);
  v19 = MEMORY[0x28223BE20](v18);
  v21 = v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = v63 - v22;
  sub_24B2D24F4();
  *&v10[OBJC_IVAR____TtC12FindMyUICore21CompositeAppViewModel_internalRepository] = 0;
  v24 = OBJC_IVAR____TtC12FindMyUICore21CompositeAppViewModel_initialInfo;
  v25 = type metadata accessor for CompositeAppViewInitialInfo();
  (*(*(v25 - 8) + 56))(&v10[v24], 1, 1, v25);
  v26 = &v10[OBJC_IVAR____TtC12FindMyUICore21CompositeAppViewModel_didSelectSendLocationMessageHandler];
  *v26 = 0;
  *(v26 + 1) = 0;
  v27 = &v10[OBJC_IVAR____TtC12FindMyUICore21CompositeAppViewModel_didSelectSendStaticLocationMessageHandler];
  *v27 = 0;
  *(v27 + 1) = 0;
  v28 = &v10[OBJC_IVAR____TtC12FindMyUICore21CompositeAppViewModel_didSelectStopSharingHandler];
  *v28 = 0;
  *(v28 + 1) = 0;
  v29 = &v10[OBJC_IVAR____TtC12FindMyUICore21CompositeAppViewModel_tintColorDidInvalidateHandler];
  *v29 = 0;
  *(v29 + 1) = 0;
  v30 = &v10[OBJC_IVAR____TtC12FindMyUICore21CompositeAppViewModel_dismiss];
  *v30 = 0;
  *(v30 + 1) = 0;
  v10[OBJC_IVAR____TtC12FindMyUICore21CompositeAppViewModel_stillWantsToSubscribe] = 0;
  *&v10[OBJC_IVAR____TtC12FindMyUICore21CompositeAppViewModel_cancellables] = MEMORY[0x277D84F90];
  v31 = OBJC_IVAR____TtC12FindMyUICore21CompositeAppViewModel__state;
  swift_storeEnumTagMultiPayload();
  sub_24B05C848(v23, v21, type metadata accessor for CompositeAppViewState);
  sub_24B2D3204();
  v32 = v23;
  v33 = v65;
  sub_24B05C7E8(v32, type metadata accessor for CompositeAppViewState);
  (*(v15 + 32))(&v10[v31], v17, v14);
  v34 = OBJC_IVAR____TtC12FindMyUICore21CompositeAppViewModel__recentlyLoaded;
  LOBYTE(v75) = 1;
  sub_24B2D3204();
  v35 = v13;
  v36 = v67;
  (*(v11 + 32))(&v10[v34], v35, v66);
  *(v10 + 2) = v33;
  if (v36)
  {

    v38 = v68;
    v37 = v69;
    v39 = v64;
  }

  else
  {
    v40 = objc_opt_self();

    v41 = [v40 mainBundle];
    v42 = [v41 bundleIdentifier];

    if (v42)
    {
      v39 = sub_24B2D5394();
      v36 = v43;
    }

    else
    {
      v39 = 0;
      v36 = 0;
    }

    v38 = v68;
    v37 = v69;
  }

  *(v10 + 3) = v39;
  *(v10 + 4) = v36;
  v44 = &v10[OBJC_IVAR____TtC12FindMyUICore21CompositeAppViewModel_didSelectSendLocationMessageHandler];
  v45 = *&v10[OBJC_IVAR____TtC12FindMyUICore21CompositeAppViewModel_didSelectSendLocationMessageHandler];
  *v44 = v38;
  v44[1] = v37;
  sub_24AFD5880(v38);
  sub_24AFD5890(v45);
  v46 = &v10[OBJC_IVAR____TtC12FindMyUICore21CompositeAppViewModel_didSelectSendStaticLocationMessageHandler];
  v47 = *&v10[OBJC_IVAR____TtC12FindMyUICore21CompositeAppViewModel_didSelectSendStaticLocationMessageHandler];
  v48 = v72;
  v49 = v73;
  *v46 = v72;
  *(v46 + 1) = v49;
  sub_24AFD5880(v48);
  sub_24AFD5890(v47);
  v50 = &v10[OBJC_IVAR____TtC12FindMyUICore21CompositeAppViewModel_didSelectStopSharingHandler];
  v51 = *&v10[OBJC_IVAR____TtC12FindMyUICore21CompositeAppViewModel_didSelectStopSharingHandler];
  v53 = v70;
  v52 = v71;
  *v50 = v71;
  *(v50 + 1) = v53;
  sub_24AFD5880(v52);
  sub_24AFD5890(v51);
  if (qword_27EFC75E8 != -1)
  {
    swift_once();
  }

  v54 = sub_24B2D3184();
  __swift_project_value_buffer(v54, qword_27EFE4418);

  v55 = sub_24B2D3164();
  v56 = sub_24B2D5934();

  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v74 = v10;
    v75 = v58;
    *v57 = 136315394;

    v59 = sub_24B2D53C4();
    v61 = sub_24AFF321C(v59, v60, &v75);

    *(v57 + 4) = v61;
    *(v57 + 12) = 2080;
    *(v57 + 14) = sub_24AFF321C(0xD000000000000091, 0x800000024B2D90D0, &v75);
    _os_log_impl(&dword_24AFD2000, v55, v56, "CompositeAppViewModel: %s - %s", v57, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C23D530](v58, -1, -1);
    MEMORY[0x24C23D530](v57, -1, -1);
  }

  sub_24AFD5890(v71);
  sub_24AFD5890(v72);
  sub_24AFD5890(v38);

  return v10;
}

uint64_t sub_24B05A274()
{
  v1 = v0;
  if (qword_27EFC75E8 != -1)
  {
    swift_once();
  }

  v2 = sub_24B2D3184();
  __swift_project_value_buffer(v2, qword_27EFE4418);

  v3 = sub_24B2D3164();
  v4 = sub_24B2D5904();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v5 = 136315394;

    v7 = sub_24B2D53C4();
    v9 = sub_24AFF321C(v7, v8, &v15);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_24AFF321C(0x74696E696564, 0xE600000000000000, &v15);
    _os_log_impl(&dword_24AFD2000, v3, v4, "CompositeAppViewModel: %s - %s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C23D530](v6, -1, -1);
    MEMORY[0x24C23D530](v5, -1, -1);
  }

  sub_24B05C7E8(v1 + OBJC_IVAR____TtC12FindMyUICore21CompositeAppViewModel_subscriber, type metadata accessor for RepositorySubscriber);

  sub_24AFF8258(v1 + OBJC_IVAR____TtC12FindMyUICore21CompositeAppViewModel_initialInfo, &qword_27EFC8A28);
  sub_24AFD5890(*(v1 + OBJC_IVAR____TtC12FindMyUICore21CompositeAppViewModel_didSelectSendLocationMessageHandler));
  sub_24AFD5890(*(v1 + OBJC_IVAR____TtC12FindMyUICore21CompositeAppViewModel_didSelectSendStaticLocationMessageHandler));
  sub_24AFD5890(*(v1 + OBJC_IVAR____TtC12FindMyUICore21CompositeAppViewModel_didSelectStopSharingHandler));
  sub_24AFD5890(*(v1 + OBJC_IVAR____TtC12FindMyUICore21CompositeAppViewModel_tintColorDidInvalidateHandler));
  sub_24AFD5890(*(v1 + OBJC_IVAR____TtC12FindMyUICore21CompositeAppViewModel_dismiss));

  v10 = OBJC_IVAR____TtC12FindMyUICore21CompositeAppViewModel__state;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8A30);
  (*(*(v11 - 8) + 8))(v1 + v10, v11);
  v12 = OBJC_IVAR____TtC12FindMyUICore21CompositeAppViewModel__recentlyLoaded;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8500);
  (*(*(v13 - 8) + 8))(v1 + v12, v13);
  return v1;
}

uint64_t sub_24B05A5AC()
{
  sub_24B05A274();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CompositeAppViewModel()
{
  result = qword_27EFC89F8;
  if (!qword_27EFC89F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24B05A658()
{
  sub_24B2D2504();
  if (v0 <= 0x3F)
  {
    sub_24B05A838(319, &qword_27EFC8A08, type metadata accessor for CompositeAppViewInitialInfo, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_24B05A838(319, &qword_27EFC8A10, type metadata accessor for CompositeAppViewState, MEMORY[0x277CBCED0]);
      if (v2 <= 0x3F)
      {
        sub_24B011E9C();
        if (v3 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_24B05A838(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_24B05A89C()
{
  v1[3] = v0;
  v1[4] = *v0;
  sub_24B2D5694();
  v1[5] = sub_24B2D5684();
  v3 = sub_24B2D5604();
  v1[6] = v3;
  v1[7] = v2;

  return MEMORY[0x2822009F8](sub_24B05A95C, v3, v2);
}

uint64_t sub_24B05A95C()
{
  v20 = v0;
  v1 = v0[3];
  v2 = OBJC_IVAR____TtC12FindMyUICore21CompositeAppViewModel_internalRepository;
  v0[8] = OBJC_IVAR____TtC12FindMyUICore21CompositeAppViewModel_internalRepository;
  v3 = *(v1 + v2);
  if (v3)
  {

    v4 = v0[1];

    return v4(v3);
  }

  else
  {
    if (qword_27EFC75E8 != -1)
    {
      swift_once();
    }

    v6 = sub_24B2D3184();
    __swift_project_value_buffer(v6, qword_27EFE4418);

    v7 = sub_24B2D3164();
    v8 = sub_24B2D5934();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = v0[3];
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v19 = v11;
      *v10 = 136315394;
      v0[2] = v9;

      v12 = sub_24B2D53C4();
      v14 = sub_24AFF321C(v12, v13, &v19);

      *(v10 + 4) = v14;
      *(v10 + 12) = 2080;
      *(v10 + 14) = sub_24AFF321C(0x6F7469736F706572, 0xEC00000029287972, &v19);
      _os_log_impl(&dword_24AFD2000, v7, v8, "CompositeAppViewModel: %s - %s - No repository, getting one", v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C23D530](v11, -1, -1);
      MEMORY[0x24C23D530](v10, -1, -1);
    }

    v15 = v0[3];
    v16 = *(v15 + 24);
    v17 = *(v15 + 32);
    v18 = swift_task_alloc();
    v0[9] = v18;
    *v18 = v0;
    v18[1] = sub_24B05ABF4;

    return sub_24B04111C(v16, v17);
  }
}

uint64_t sub_24B05ABF4(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 80) = a1;

  v3 = *(v2 + 56);
  v4 = *(v2 + 48);

  return MEMORY[0x2822009F8](sub_24B05AD1C, v4, v3);
}

uint64_t sub_24B05AD1C()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[3];

  *(v3 + v2) = v1;

  sub_24B05ADB8();
  sub_24B0573F4();
  v4 = v0[10];
  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_24B05ADB8()
{
  v1 = v0;
  if (qword_27EFC75E8 != -1)
  {
    swift_once();
  }

  v2 = sub_24B2D3184();
  __swift_project_value_buffer(v2, qword_27EFE4418);
  v3 = sub_24B2D3164();
  v4 = sub_24B2D5904();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_24AFF321C(0xD000000000000020, 0x800000024B2D8FF0, &v12);
    _os_log_impl(&dword_24AFD2000, v3, v4, "CompositeAppViewModel: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x24C23D530](v6, -1, -1);
    MEMORY[0x24C23D530](v5, -1, -1);
  }

  type metadata accessor for Repository();
  sub_24B05C6A4(&qword_27EFC8A18, type metadata accessor for Repository);
  v12 = sub_24B2D31B4();
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = swift_allocObject();
  *(v8 + 16) = sub_24B05BBD4;
  *(v8 + 24) = v7;
  sub_24B2D31E4();
  v9 = sub_24B2D3274();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC7E98);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_24B2DF8E0;
  *(v10 + 32) = v9;
  *(v1 + OBJC_IVAR____TtC12FindMyUICore21CompositeAppViewModel_cancellables) = v10;
}

void *sub_24B05B038()
{
  v1 = *(v0 + OBJC_IVAR____TtC12FindMyUICore21CompositeAppViewModel_internalRepository);
  if (!v1)
  {
    return 0;
  }

  result = *(v1 + OBJC_IVAR____TtC12FindMyUICore10Repository_locationManager);
  if (result)
  {
    v3 = [result authorizationStatus];
    return (dword_285E483A0 == v3 || unk_285E483A4 == v3);
  }

  return result;
}

uint64_t sub_24B05B09C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8580);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v14 - v3;
  sub_24B2D5694();
  sub_24B2D5684();
  v5 = MEMORY[0x277D85700];
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_27EFC75E8 != -1)
  {
    swift_once();
  }

  v6 = sub_24B2D3184();
  __swift_project_value_buffer(v6, qword_27EFE4418);
  v7 = sub_24B2D3164();
  v8 = sub_24B2D5904();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_24AFD2000, v7, v8, "CompositeAppViewModel: Repository Will Change", v9, 2u);
    MEMORY[0x24C23D530](v9, -1, -1);
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    type metadata accessor for CompositeAppViewModel();
    sub_24B05C6A4(&qword_27EFC8A20, type metadata accessor for CompositeAppViewModel);
    sub_24B2D31B4();

    sub_24B2D31D4();
  }

  v10 = sub_24B2D56D4();
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);

  v11 = sub_24B2D5684();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = v5;
  v12[4] = a1;
  sub_24B00A9A4(0, 0, v4, &unk_24B2E1900, v12);
}

uint64_t sub_24B05B374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  sub_24B2D5694();
  *(v4 + 48) = sub_24B2D5684();
  v6 = sub_24B2D5604();

  return MEMORY[0x2822009F8](sub_24B05B40C, v6, v5);
}

uint64_t sub_24B05B40C()
{

  if (qword_27EFC75E8 != -1)
  {
    swift_once();
  }

  v1 = sub_24B2D3184();
  __swift_project_value_buffer(v1, qword_27EFE4418);
  v2 = sub_24B2D3164();
  v3 = sub_24B2D5904();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24AFD2000, v2, v3, "tintColorDidInvalidateHandler: Will Change", v4, 2u);
    MEMORY[0x24C23D530](v4, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = *(Strong + OBJC_IVAR____TtC12FindMyUICore21CompositeAppViewModel_tintColorDidInvalidateHandler);
    if (v6)
    {
      sub_24AFD5880(*(Strong + OBJC_IVAR____TtC12FindMyUICore21CompositeAppViewModel_tintColorDidInvalidateHandler));

      v6(v7);
      sub_24AFD5890(v6);
    }

    else
    {
    }
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_24B05B598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v5[4] = sub_24B2D5694();
  v5[5] = sub_24B2D5684();
  v6 = swift_task_alloc();
  v5[6] = v6;
  *v6 = v5;
  v6[1] = sub_24B05B648;

  return sub_24B05A89C();
}

uint64_t sub_24B05B648(uint64_t a1)
{
  *(*v1 + 56) = a1;

  v3 = sub_24B2D5604();

  return MEMORY[0x2822009F8](sub_24B05B78C, v3, v2);
}

uint64_t sub_24B05B78C()
{
  v13 = v0;
  v1 = v0[2];

  if (*(v1 + OBJC_IVAR____TtC12FindMyUICore21CompositeAppViewModel_stillWantsToSubscribe) == 1)
  {
    v2 = v0[2];
    v3 = sub_24AFF05EC();
    sub_24B0577B8(v3, v2 + OBJC_IVAR____TtC12FindMyUICore21CompositeAppViewModel_subscriber);
  }

  else
  {
    if (qword_27EFC75E8 != -1)
    {
      swift_once();
    }

    v4 = sub_24B2D3184();
    __swift_project_value_buffer(v4, qword_27EFE4418);
    v5 = sub_24B2D3164();
    v6 = sub_24B2D5934();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v12 = v8;
      *v7 = 136315138;
      *(v7 + 4) = sub_24AFF321C(0xD000000000000019, 0x800000024B2D79D0, &v12);
      _os_log_impl(&dword_24AFD2000, v5, v6, "CompositeAppViewModel: %s - Skipping subscriptions since view already tried to pause/stop", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x24C23D530](v8, -1, -1);
      MEMORY[0x24C23D530](v7, -1, -1);
    }
  }

  v9 = v0[3];
  sub_24B0573F4();
  sub_24B026B14(v9);

  v10 = v0[1];

  return v10();
}

uint64_t sub_24B05B970()
{
  v0[2] = sub_24B2D5694();
  v0[3] = sub_24B2D5684();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_24B05BA1C;

  return sub_24B05A89C();
}

uint64_t sub_24B05BA1C()
{

  v1 = sub_24B2D5604();

  return MEMORY[0x2822009F8](sub_24B02CE40, v1, v0);
}

id sub_24B05BB6C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();

  return v5;
}

uint64_t sub_24B05BC04(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24AFFDE44;

  return sub_24B05B374(a1, v4, v5, v6);
}

uint64_t sub_24B05BCB8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24AFFD370;

  return sub_24B05B970();
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t *sub_24B05BD84(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_24B05BF78(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

unint64_t *sub_24B05BE20(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_24B05C8B0(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

uint64_t sub_24B05BEBC(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = sub_24B1260D4(a2, v3);

  return v4 & 1;
}

uint64_t sub_24B05BF78(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a2;
  v30 = a1;
  v6 = _s14descr285E46659O16SubscriptionDataOMa(0);
  v34 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v36 = a3;
  v37 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 56);
  v9 = a3 + 56;
  v8 = v10;
  v11 = 1 << *(v9 - 24);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v8;
  v35 = a4;
  v33 = OBJC_IVAR____TtC12FindMyUICore10Repository_subscriptionsBySubscriber;
  result = swift_beginAccess();
  v31 = 0;
  v15 = 0;
  while (v13)
  {
    v20 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_12:
    v23 = v20 | (v15 << 6);
    v24 = *(v36 + 48);
    v25 = *(v34 + 72);
    v32 = v23;
    sub_24B05C848(v24 + v25 * v23, v37, _s14descr285E46659O16SubscriptionDataOMa);
    sub_24B2D5694();
    sub_24B2D5684();
    sub_24B2D5604();
    isCurrentExecutor = swift_task_isCurrentExecutor();
    if ((isCurrentExecutor & 1) == 0)
    {
      isCurrentExecutor = swift_task_reportUnexpectedExecutor();
    }

    v16 = *(v35 + v33);
    MEMORY[0x28223BE20](isCurrentExecutor);
    v17 = v37;
    *(&v29 - 2) = v37;

    v18 = v38;
    v19 = sub_24B1F3F1C(sub_24B05D150, (&v29 - 4), v16);
    v38 = v18;

    result = sub_24B05C7E8(v17, _s14descr285E46659O16SubscriptionDataOMa);
    if ((v19 & 1) == 0)
    {
      *(v30 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v32;
      if (__OFADD__(v31++, 1))
      {
        __break(1u);
LABEL_17:
        v28 = v36;

        return sub_24B2A0C50(v30, v29, v31, v28);
      }
    }
  }

  v21 = v15;
  while (1)
  {
    v15 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v15 >= ((v11 + 63) >> 6))
    {
      goto LABEL_17;
    }

    v22 = *(v9 + 8 * v15);
    ++v21;
    if (v22)
    {
      v20 = __clz(__rbit64(v22));
      v13 = (v22 - 1) & v22;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24B05C274(uint64_t a1, int64_t a2)
{
  v3 = v2;
  v40 = *MEMORY[0x277D85DE8];
  v6 = _s14descr285E46659O16SubscriptionDataOMa(0);
  v36 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v38 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v7) = *(a1 + 32);
  v8 = v7 & 0x3F;
  v9 = ((1 << v7) + 63) >> 6;
  v10 = 8 * v9;

  if (v8 > 0xD)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v39 = v3;
    v29[1] = v29;
    v30 = v9;
    MEMORY[0x28223BE20](v11);
    v31 = v29 - ((v10 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v31, v10);
    v12 = a1 + 56;
    v3 = 1 << *(a1 + 32);
    v13 = -1;
    if (v3 < 64)
    {
      v13 = ~(-1 << v3);
    }

    v14 = v13 & *(a1 + 56);
    v37 = a2;
    v34 = OBJC_IVAR____TtC12FindMyUICore10Repository_subscriptionsBySubscriber;
    swift_beginAccess();
    v32 = 0;
    v9 = 0;
    a2 = (v3 + 63) >> 6;
    v35 = a1;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_13:
      v21 = v18 | (v9 << 6);
      v22 = *(a1 + 48);
      v23 = *(v36 + 72);
      v33 = v21;
      sub_24B05C848(v22 + v23 * v21, v38, _s14descr285E46659O16SubscriptionDataOMa);
      sub_24B2D5694();
      v10 = sub_24B2D5684();
      sub_24B2D5604();
      isCurrentExecutor = swift_task_isCurrentExecutor();
      if ((isCurrentExecutor & 1) == 0)
      {
        isCurrentExecutor = swift_task_reportUnexpectedExecutor();
      }

      v15 = *(v37 + v34);
      MEMORY[0x28223BE20](isCurrentExecutor);
      v3 = v38;
      v29[-2] = v38;

      v16 = v39;
      v17 = sub_24B1F3F1C(sub_24B05C6EC, &v29[-4], v15);
      v39 = v16;

      sub_24B05C7E8(v3, _s14descr285E46659O16SubscriptionDataOMa);
      a1 = v35;
      if ((v17 & 1) == 0)
      {
        *&v31[(v33 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v33;
        if (__OFADD__(v32++, 1))
        {
          __break(1u);
LABEL_18:
          v26 = sub_24B2A0C50(v31, v30, v32, a1);

          return v26;
        }
      }
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v9 >= a2)
      {
        goto LABEL_18;
      }

      v20 = *(v12 + 8 * v9);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_21:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v28 = swift_slowAlloc();

  v26 = sub_24B05BD84(v28, v9, a1, a2);

  MEMORY[0x24C23D530](v28, -1, -1);

  return v26;
}

uint64_t sub_24B05C6A4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24B05C710(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8A28);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B05C780(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B05C7E8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24B05C848(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B05C8B0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a4;
  v27 = a2;
  v28 = a1;
  v5 = _s14descr285E46659O16SubscriptionDataOMa(0);
  v31 = *(v5 - 8);
  result = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = 0;
  v9 = 0;
  v33 = a3;
  v12 = *(a3 + 56);
  v11 = a3 + 56;
  v10 = v12;
  v13 = 1 << *(v11 - 24);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v10;
  v16 = (v13 + 63) >> 6;
  while (v15)
  {
    v18 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_12:
    v21 = v18 | (v9 << 6);
    v22 = *(v33 + 48);
    v23 = *(v31 + 72);
    v30 = v21;
    sub_24B05C848(v22 + v23 * v21, v8, _s14descr285E46659O16SubscriptionDataOMa);
    sub_24B2D5694();
    sub_24B2D5684();
    sub_24B2D5604();
    isCurrentExecutor = swift_task_isCurrentExecutor();
    if ((isCurrentExecutor & 1) == 0)
    {
      isCurrentExecutor = swift_task_reportUnexpectedExecutor();
    }

    MEMORY[0x28223BE20](isCurrentExecutor);
    *(&v27 - 2) = v8;
    v17 = sub_24B1F3F1C(sub_24B05D16C, (&v27 - 4), v32);

    result = sub_24B05C7E8(v8, _s14descr285E46659O16SubscriptionDataOMa);
    if ((v17 & 1) == 0)
    {
      *(v28 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
      if (__OFADD__(v29++, 1))
      {
        __break(1u);
LABEL_17:
        v26 = v33;

        return sub_24B2A0C50(v28, v27, v29, v26);
      }
    }
  }

  v19 = v9;
  while (1)
  {
    v9 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v9 >= v16)
    {
      goto LABEL_17;
    }

    v20 = *(v11 + 8 * v9);
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v15 = (v20 - 1) & v20;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24B05CB64(uint64_t a1, uint64_t a2)
{
  v39 = *MEMORY[0x277D85DE8];
  v4 = _s14descr285E46659O16SubscriptionDataOMa(0);
  v36 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v37 = a2;
  v38 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v5) = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;

  if (v6 > 0xD)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v30 = &v30;
    v31 = v7;
    MEMORY[0x28223BE20](v9);
    v32 = &v30 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v32, v8);
    v33 = 0;
    v10 = 0;
    v11 = a1 + 56;
    v12 = 1 << *(a1 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(a1 + 56);
    v7 = (v12 + 63) >> 6;
    v35 = a1;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_13:
      v21 = v18 | (v10 << 6);
      v22 = *(a1 + 48);
      v23 = *(v36 + 72);
      v34 = v21;
      sub_24B05C848(v22 + v23 * v21, v38, _s14descr285E46659O16SubscriptionDataOMa);
      sub_24B2D5694();
      v8 = sub_24B2D5684();
      sub_24B2D5604();
      isCurrentExecutor = swift_task_isCurrentExecutor();
      if ((isCurrentExecutor & 1) == 0)
      {
        isCurrentExecutor = swift_task_reportUnexpectedExecutor();
      }

      MEMORY[0x28223BE20](isCurrentExecutor);
      v15 = v37;
      v16 = v38;
      *(&v30 - 2) = v38;
      v17 = sub_24B1F3F1C(sub_24B05CF44, (&v30 - 4), v15);

      sub_24B05C7E8(v16, _s14descr285E46659O16SubscriptionDataOMa);
      a1 = v35;
      if ((v17 & 1) == 0)
      {
        *&v32[(v34 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v34;
        if (__OFADD__(v33++, 1))
        {
          __break(1u);
LABEL_18:
          v26 = sub_24B2A0C50(v32, v31, v33, a1);

          return v26;
        }
      }
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v7)
      {
        goto LABEL_18;
      }

      v20 = *(v11 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_21:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v28 = swift_slowAlloc();
  v29 = v37;

  v26 = sub_24B05BE20(v28, v7, a1, v29);

  MEMORY[0x24C23D530](v28, -1, -1);

  return v26;
}

uint64_t sub_24B05CF68(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8A28);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B05CFD8(uint64_t a1)
{
  v4 = *(type metadata accessor for CompositeAppViewInitialInfo() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24AFFDE44;

  return sub_24B05B598(a1, v6, v7, v8, v1 + v5);
}

unint64_t sub_24B05D0E4()
{
  result = qword_27EFC8A40;
  if (!qword_27EFC8A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC8A40);
  }

  return result;
}

uint64_t sub_24B05D1A0()
{
  v0[2] = sub_24B2D5694();
  v0[3] = sub_24B2D5684();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_24B03BC88;

  return sub_24B05D24C();
}

uint64_t sub_24B05D24C()
{
  v1[10] = v0;
  v2 = sub_24B2D2504();
  v1[11] = v2;
  v1[12] = *(v2 - 8);
  v1[13] = swift_task_alloc();
  type metadata accessor for MessagePayload(0);
  v1[14] = swift_task_alloc();
  sub_24B2D5694();
  v1[15] = sub_24B2D5684();
  v4 = sub_24B2D5604();
  v1[16] = v4;
  v1[17] = v3;

  return MEMORY[0x2822009F8](sub_24B05D36C, v4, v3);
}

uint64_t sub_24B05D36C()
{
  v41 = v0;
  if (qword_27EFC75E8 != -1)
  {
    swift_once();
  }

  v1 = sub_24B2D3184();
  *(v0 + 144) = __swift_project_value_buffer(v1, qword_27EFE4418);
  v2 = sub_24B2D3164();
  v3 = sub_24B2D5934();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v38 = v5;
    *v4 = 136315138;
    *(v0 + 16) = sub_24B061CC4(1);
    *(v0 + 24) = v6;
    *(v0 + 32) = v7;
    *(v0 + 40) = v8;
    sub_24B054B50();
    v9 = sub_24B2D5AA4();
    v11 = v10;

    v39 = v9;
    v40 = v11;
    *(v0 + 48) = sub_24B061D60(1uLL, 0xD00000000000001CLL, 0x800000024B2D9280);
    *(v0 + 56) = v12;
    *(v0 + 64) = v13;
    *(v0 + 72) = v14;
    sub_24B054BA4();
    sub_24B2D5424();

    v15 = sub_24AFF321C(v39, v40, &v38);

    *(v4 + 4) = v15;
    _os_log_impl(&dword_24AFD2000, v2, v3, "CompositeAppViewModel: will%s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x24C23D530](v5, -1, -1);
    MEMORY[0x24C23D530](v4, -1, -1);
  }

  v16 = *(v0 + 80) + OBJC_IVAR____TtC12FindMyUICore21CompositeAppViewModel_didSelectSendLocationMessageHandler;
  v17 = *v16;
  *(v0 + 152) = *v16;
  *(v0 + 160) = *(v16 + 8);
  if (v17)
  {
    v18 = *(v0 + 104);
    v19 = *(v0 + 112);
    v20 = *(v0 + 88);
    v21 = *(v0 + 96);

    sub_24B2D24F4();
    v22 = sub_24B2D24B4();
    v24 = v23;
    (*(v21 + 8))(v18, v20);
    v25 = type metadata accessor for MessagePayload.ContentV0(0);
    v26 = v25[6];
    v27 = sub_24B2D24A4();
    (*(*(v27 - 8) + 56))(v19 + v26, 1, 1, v27);
    *(v0 + 184) = 1;
    *v19 = v22;
    *(v19 + 8) = v24;
    *(v19 + 16) = 512;
    v28 = v19 + v25[7];
    *(v28 + 48) = 0u;
    *(v28 + 64) = 0u;
    *(v28 + 16) = 0u;
    *(v28 + 32) = 0u;
    *v28 = 0u;
    *(v28 + 80) = *(v0 + 184);
    *(v19 + v25[8]) = 0;
    v37 = (v17 + *v17);
    v29 = swift_task_alloc();
    *(v0 + 168) = v29;
    *v29 = v0;
    v29[1] = sub_24B05D838;
    v30 = *(v0 + 112);

    return v37(v30);
  }

  else
  {

    v32 = sub_24B2D3164();
    v33 = sub_24B2D5914();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v39 = v35;
      *v34 = 136315138;
      *(v34 + 4) = sub_24AFF321C(0xD00000000000001CLL, 0x800000024B2D9280, &v39);
      _os_log_impl(&dword_24AFD2000, v32, v33, "CompositeAppViewModel: %s - No didSelectSendLocationMessageHandler", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v35);
      MEMORY[0x24C23D530](v35, -1, -1);
      MEMORY[0x24C23D530](v34, -1, -1);
    }

    v36 = *(v0 + 8);

    return v36();
  }
}

uint64_t sub_24B05D838()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  v3 = *(v2 + 136);
  v4 = *(v2 + 128);
  if (v0)
  {
    v5 = sub_24B05D974;
  }

  else
  {
    v5 = sub_24B061F44;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24B05D974()
{
  v17 = v0;
  v1 = v0[22];
  v2 = v0[14];

  sub_24B061E10(v2, type metadata accessor for MessagePayload);
  v3 = v1;
  v4 = sub_24B2D3164();
  v5 = sub_24B2D5914();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[22];
  v8 = v0[19];
  if (v6)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v16 = v11;
    *v9 = 136315394;
    *(v9 + 4) = sub_24AFF321C(0xD00000000000001CLL, 0x800000024B2D9280, &v16);
    *(v9 + 12) = 2112;
    v12 = v7;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v13;
    *v10 = v13;
    _os_log_impl(&dword_24AFD2000, v4, v5, "CompositeAppViewModel: Error: %s %@", v9, 0x16u);
    sub_24AFF8258(v10, &qword_27EFC7BB8);
    MEMORY[0x24C23D530](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x24C23D530](v11, -1, -1);
    MEMORY[0x24C23D530](v9, -1, -1);
    sub_24AFD5890(v8);
  }

  else
  {
    sub_24AFD5890(v0[19]);
  }

  v14 = v0[1];

  return v14();
}

void sub_24B05DBB0(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Friend();
  v5 = MEMORY[0x28223BE20](v4);
  v7 = v95 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v95 - v9;
  MEMORY[0x28223BE20](v8);
  v102 = v95 - v11;
  v104 = sub_24B2D1704();
  v12 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v14 = v95 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EFC75E8 != -1)
  {
    swift_once();
  }

  v15 = sub_24B2D3184();
  v103 = __swift_project_value_buffer(v15, qword_27EFE4418);
  v16 = sub_24B2D3164();
  v17 = sub_24B2D5934();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v98 = v1;
    v19 = v18;
    v20 = swift_slowAlloc();
    v101 = v4;
    v97 = v20;
    v112 = v20;
    *v19 = 136315138;
    v99 = v7;
    v21 = sub_24B061CC4(1);
    v100 = v10;
    v111[0] = v21;
    v111[1] = v22;
    v111[2] = v23;
    v111[3] = v24;
    sub_24B054B50();
    v25 = sub_24B2D5AA4();
    v26 = v12;
    v28 = v27;

    v7 = v99;
    v29 = sub_24B061D60(1uLL, 0xD000000000000010, 0x800000024B2D9260);
    v109 = v25;
    v110 = v28;
    v12 = v26;
    v105 = v29;
    v106 = v30;
    v107 = v31;
    v108 = v32;
    sub_24B054BA4();
    sub_24B2D5424();

    v33 = sub_24AFF321C(v109, v110, &v112);
    v10 = v100;

    *(v19 + 4) = v33;
    _os_log_impl(&dword_24AFD2000, v16, v17, "CompositeAppViewModel: will%s", v19, 0xCu);
    v34 = v97;
    __swift_destroy_boxed_opaque_existential_0(v97);
    v4 = v101;
    MEMORY[0x24C23D530](v34, -1, -1);
    v35 = v19;
    v2 = v98;
    MEMORY[0x24C23D530](v35, -1, -1);
  }

  v36 = *&v2[OBJC_IVAR____TtC12FindMyUICore21CompositeAppViewModel_internalRepository];
  if (v36)
  {

    v37 = sub_24B025370(a1);
    if (v39 >= 2)
    {
      if (v39 != 2)
      {
        v100 = v38;
        v54 = v39;
        v55 = objc_allocWithZone(MEMORY[0x277CD4E80]);
        v99 = v54;
        v56 = [v55 initWithCLLocation_];
        if (v56)
        {
          v98 = v56;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8A50);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_24B2DEAD0;
          *(inited + 32) = sub_24B2D5394();
          v97 = inited + 32;
          *(inited + 40) = v58;
          v59 = sub_24B2D5394();
          *(inited + 72) = MEMORY[0x277D837D0];
          *(inited + 48) = v59;
          *(inited + 56) = v60;
          *(inited + 80) = sub_24B2D5394();
          *(inited + 88) = v61;
          v96 = inited;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC7980);
          v62 = (*(v12 + 80) + 32) & ~*(v12 + 80);
          v103 = *(v12 + 72);
          v63 = swift_allocObject();
          *(v63 + 16) = xmmword_24B2DE430;
          v64 = *(v12 + 16);
          v65 = a1 + *(v4 + 20);
          v102 = v12 + 16;
          v101 = v64;
          v66 = (v64)(v63 + v62, v65, v104);
          v67 = *(a1 + *(v4 + 24));
          MEMORY[0x28223BE20](v66);
          v95[-2] = a1;

          v68 = sub_24B00DCB0(sub_24AFF2290, &v95[-4], v67);
          v111[0] = v63;
          sub_24B0300DC(v68);
          v69 = v111[0];
          v70 = *(v111[0] + 16);
          if (v70)
          {
            v95[1] = v36;
            v111[0] = MEMORY[0x277D84F90];
            sub_24B0078D0(0, v70, 0);
            v71 = v12;
            v72 = v111[0];
            v95[0] = v69;
            v73 = v69 + v62;
            v74 = (v71 + 8);
            do
            {
              v75 = v104;
              v101(v14, v73, v104);
              v76 = sub_24B2D16F4();
              v78 = v77;
              (*v74)(v14, v75);
              v111[0] = v72;
              v80 = *(v72 + 16);
              v79 = *(v72 + 24);
              if (v80 >= v79 >> 1)
              {
                sub_24B0078D0((v79 > 1), v80 + 1, 1);
                v72 = v111[0];
              }

              *(v72 + 16) = v80 + 1;
              v81 = v72 + 16 * v80;
              *(v81 + 32) = v76;
              *(v81 + 40) = v78;
              v73 += v103;
              --v70;
            }

            while (v70);
          }

          else
          {

            v72 = MEMORY[0x277D84F90];
          }

          v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC7B90);
          v92 = v96;
          *(v96 + 120) = v91;
          *(v92 + 96) = v72;
          sub_24B193FC0(v92);
          swift_setDeallocating();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8A58);
          swift_arrayDestroy();
          v93 = sub_24B2D51D4();

          v94 = v98;
          [v98 openInMapsWithLaunchOptions_];
        }

        else
        {
          v82 = v102;
          sub_24B061E70(a1, v102, type metadata accessor for Friend);
          v83 = sub_24B2D3164();
          v84 = sub_24B2D5914();
          if (!os_log_type_enabled(v83, v84))
          {

            sub_24B061E10(v82, type metadata accessor for Friend);
            return;
          }

          v85 = swift_slowAlloc();
          v86 = swift_slowAlloc();
          v111[0] = v86;
          *v85 = 136315651;
          *(v85 + 4) = sub_24AFF321C(0xD000000000000010, 0x800000024B2D9260, v111);
          *(v85 + 12) = 2160;
          *(v85 + 14) = 1752392040;
          *(v85 + 22) = 2081;
          sub_24B061E70(v82, v10, type metadata accessor for Friend);
          v87 = sub_24B2D53C4();
          v89 = v88;
          sub_24B061E10(v82, type metadata accessor for Friend);
          v90 = sub_24AFF321C(v87, v89, v111);

          *(v85 + 24) = v90;
          _os_log_impl(&dword_24AFD2000, v83, v84, "CompositeAppViewModel: %s - no friendMapItem for friend: %{private,mask.hash}s", v85, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x24C23D530](v86, -1, -1);
          MEMORY[0x24C23D530](v85, -1, -1);
        }

        return;
      }
    }

    else
    {
      sub_24B0341D0(v37, v38, v39);
    }

    sub_24B061E70(a1, v7, type metadata accessor for Friend);
    v44 = sub_24B2D3164();
    v45 = sub_24B2D5914();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v111[0] = v47;
      *v46 = 136315651;
      *(v46 + 4) = sub_24AFF321C(0xD000000000000010, 0x800000024B2D9260, v111);
      *(v46 + 12) = 2160;
      *(v46 + 14) = 1752392040;
      *(v46 + 22) = 2081;
      sub_24B061E70(v7, v10, type metadata accessor for Friend);
      v48 = sub_24B2D53C4();
      v49 = v7;
      v50 = v48;
      v52 = v51;
      sub_24B061E10(v49, type metadata accessor for Friend);
      v53 = sub_24AFF321C(v50, v52, v111);

      *(v46 + 24) = v53;
      _os_log_impl(&dword_24AFD2000, v44, v45, "CompositeAppViewModel: %s - no location for friend: %{private,mask.hash}s", v46, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C23D530](v47, -1, -1);
      MEMORY[0x24C23D530](v46, -1, -1);
    }

    else
    {

      sub_24B061E10(v7, type metadata accessor for Friend);
    }
  }

  else
  {
    v40 = sub_24B2D3164();
    v41 = sub_24B2D5914();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v111[0] = v43;
      *v42 = 136315138;
      *(v42 + 4) = sub_24AFF321C(0xD000000000000010, 0x800000024B2D9260, v111);
      _os_log_impl(&dword_24AFD2000, v40, v41, "CompositeAppViewModel: %s - No Repository", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v43);
      MEMORY[0x24C23D530](v43, -1, -1);
      MEMORY[0x24C23D530](v42, -1, -1);
    }
  }
}

void sub_24B05E7F8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8A48);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v42 - v3;
  v5 = type metadata accessor for Friend();
  v45 = *(v5 - 8);
  v46 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8A28);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v42 - v9;
  v11 = type metadata accessor for CompositeAppViewInitialInfo();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v42 - v16;
  if (qword_27EFC75E8 != -1)
  {
    swift_once();
  }

  v18 = sub_24B2D3184();
  v47 = __swift_project_value_buffer(v18, qword_27EFE4418);
  v19 = sub_24B2D3164();
  v20 = sub_24B2D5934();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v44 = v15;
    v22 = v21;
    v23 = swift_slowAlloc();
    v43 = v7;
    v24 = v4;
    v25 = v1;
    v26 = v11;
    v27 = v17;
    v28 = v23;
    v49[0] = v23;
    *v22 = 136315138;
    *(v22 + 4) = sub_24AFF321C(0xD00000000000001ELL, 0x800000024B2D9240, v49);
    _os_log_impl(&dword_24AFD2000, v19, v20, "CompositeAppViewModel: willCall %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v28);
    v29 = v28;
    v17 = v27;
    v11 = v26;
    v1 = v25;
    v4 = v24;
    v7 = v43;
    MEMORY[0x24C23D530](v29, -1, -1);
    v30 = v22;
    v15 = v44;
    MEMORY[0x24C23D530](v30, -1, -1);
  }

  v31 = OBJC_IVAR____TtC12FindMyUICore21CompositeAppViewModel_initialInfo;
  swift_beginAccess();
  sub_24B05C710(v1 + v31, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_24AFF8258(v10, &qword_27EFC8A28);
    v32 = sub_24B2D3164();
    v33 = sub_24B2D5914();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v48 = v35;
      *v34 = 136315138;
      *(v34 + 4) = sub_24AFF321C(0xD00000000000001ELL, 0x800000024B2D9240, &v48);
      _os_log_impl(&dword_24AFD2000, v32, v33, "CompositeAppViewModel: %s - No initialInfo", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v35);
      MEMORY[0x24C23D530](v35, -1, -1);
      MEMORY[0x24C23D530](v34, -1, -1);
    }
  }

  else
  {
    sub_24B061ED8(v10, v17, type metadata accessor for CompositeAppViewInitialInfo);
    sub_24AFF02DC(v4);
    if ((*(v45 + 48))(v4, 1, v46) == 1)
    {
      sub_24AFF8258(v4, &qword_27EFC8A48);
      sub_24B061E70(v17, v15, type metadata accessor for CompositeAppViewInitialInfo);
      v36 = sub_24B2D3164();
      v37 = sub_24B2D5914();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v48 = v39;
        *v38 = 136315394;
        *(v38 + 4) = sub_24AFF321C(0xD00000000000001ELL, 0x800000024B2D9240, &v48);
        *(v38 + 12) = 2048;
        v40 = *(*&v15[*(v11 + 24)] + 16);
        sub_24B061E10(v15, type metadata accessor for CompositeAppViewInitialInfo);
        *(v38 + 14) = v40;
        _os_log_impl(&dword_24AFD2000, v36, v37, "CompositeAppViewModel: %s - friends.count: %ld", v38, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v39);
        MEMORY[0x24C23D530](v39, -1, -1);
        MEMORY[0x24C23D530](v38, -1, -1);
      }

      else
      {
        sub_24B061E10(v15, type metadata accessor for CompositeAppViewInitialInfo);
      }

      v41 = v17;
    }

    else
    {
      sub_24B061ED8(v4, v7, type metadata accessor for Friend);
      sub_24B05DBB0(v7);
      sub_24B061E10(v7, type metadata accessor for Friend);
      v41 = v17;
    }

    sub_24B061E10(v41, type metadata accessor for CompositeAppViewInitialInfo);
  }
}

uint64_t sub_24B05EE80(char *a1, uint64_t a2, int a3)
{
  v6 = sub_24B2D22D4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B00CDE8(a1, a2, a3, v9);
  v10 = [objc_opt_self() defaultWorkspace];
  if (v10)
  {
    v11 = v10;
    v12 = sub_24B2D2294();
    v13 = sub_24B2D51D4();
    [v11 openSensitiveURL:v12 withOptions:v13];
  }

  return (*(v7 + 8))(v9, v6);
}

void sub_24B05F004()
{
  v1 = v0;
  v2 = sub_24B2D22D4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v35 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8A28);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v32 - v6;
  v8 = type metadata accessor for CompositeAppViewInitialInfo();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v34 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EFC75E8 != -1)
  {
    swift_once();
  }

  v11 = sub_24B2D3184();
  __swift_project_value_buffer(v11, qword_27EFE4418);
  v12 = sub_24B2D3164();
  v13 = sub_24B2D5934();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v33 = v0;
    v15 = v3;
    v16 = v2;
    v17 = v14;
    v18 = swift_slowAlloc();
    v37[0] = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_24AFF321C(0xD000000000000020, 0x800000024B2D9210, v37);
    _os_log_impl(&dword_24AFD2000, v12, v13, "CompositeAppViewModel: willCall %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x24C23D530](v18, -1, -1);
    v19 = v17;
    v2 = v16;
    v3 = v15;
    v1 = v33;
    MEMORY[0x24C23D530](v19, -1, -1);
  }

  v20 = OBJC_IVAR____TtC12FindMyUICore21CompositeAppViewModel_initialInfo;
  swift_beginAccess();
  sub_24B05C710(v1 + v20, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_24AFF8258(v7, &qword_27EFC8A28);
    v21 = sub_24B2D3164();
    v22 = sub_24B2D5914();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v36 = v24;
      *v23 = 136315138;
      *(v23 + 4) = sub_24AFF321C(0xD000000000000020, 0x800000024B2D9210, &v36);
      _os_log_impl(&dword_24AFD2000, v21, v22, "CompositeAppViewModel: %s - No initialInfo", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x24C23D530](v24, -1, -1);
      MEMORY[0x24C23D530](v23, -1, -1);
    }
  }

  else
  {
    v25 = v7;
    v26 = v34;
    sub_24B061ED8(v25, v34, type metadata accessor for CompositeAppViewInitialInfo);
    v27 = v35;
    sub_24B00CDE8(*(v26 + *(v8 + 24)), 0, 0, v35);
    v28 = [objc_opt_self() defaultWorkspace];
    if (v28)
    {
      v29 = v28;
      v30 = sub_24B2D2294();
      v31 = sub_24B2D51D4();
      [v29 openSensitiveURL:v30 withOptions:v31];
    }

    (*(v3 + 8))(v27, v2);
    sub_24B061E10(v26, type metadata accessor for CompositeAppViewInitialInfo);
  }
}

uint64_t sub_24B05F4DC(uint64_t a1, char a2)
{
  v2[2] = sub_24B2D5694();
  v2[3] = sub_24B2D5684();
  v5 = swift_task_alloc();
  v2[4] = v5;
  *v5 = v2;
  v5[1] = sub_24B02CD04;

  return sub_24B05F5A0(a1, a2);
}

uint64_t sub_24B05F5A0(uint64_t a1, char a2)
{
  *(v3 + 185) = a2;
  *(v3 + 88) = a1;
  *(v3 + 96) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8450);
  *(v3 + 104) = swift_task_alloc();
  type metadata accessor for MessagePayload(0);
  *(v3 + 112) = swift_task_alloc();
  sub_24B2D5694();
  *(v3 + 120) = sub_24B2D5684();
  v5 = sub_24B2D5604();
  *(v3 + 128) = v5;
  *(v3 + 136) = v4;

  return MEMORY[0x2822009F8](sub_24B05F6A0, v5, v4);
}

uint64_t sub_24B05F6A0()
{
  v44 = v0;
  if (qword_27EFC75E8 != -1)
  {
    swift_once();
  }

  v1 = sub_24B2D3184();
  *(v0 + 144) = __swift_project_value_buffer(v1, qword_27EFE4418);
  v2 = sub_24B2D3164();
  v3 = sub_24B2D5934();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v41 = v5;
    *v4 = 136315138;
    *(v0 + 16) = sub_24B061CC4(1);
    *(v0 + 24) = v6;
    *(v0 + 32) = v7;
    *(v0 + 40) = v8;
    sub_24B054B50();
    v9 = sub_24B2D5AA4();
    v11 = v10;

    v42 = v9;
    v43 = v11;
    *(v0 + 48) = sub_24B061D60(1uLL, 0xD000000000000031, 0x800000024B2D9170);
    *(v0 + 56) = v12;
    *(v0 + 64) = v13;
    *(v0 + 72) = v14;
    sub_24B054BA4();
    sub_24B2D5424();

    v15 = sub_24AFF321C(v42, v43, &v41);

    *(v4 + 4) = v15;
    _os_log_impl(&dword_24AFD2000, v2, v3, "CompositeAppViewModel: will%s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x24C23D530](v5, -1, -1);
    MEMORY[0x24C23D530](v4, -1, -1);
  }

  v16 = *(v0 + 96) + OBJC_IVAR____TtC12FindMyUICore21CompositeAppViewModel_didSelectSendLocationMessageHandler;
  v17 = *v16;
  *(v0 + 152) = *v16;
  *(v0 + 160) = *(v16 + 8);
  if (v17)
  {
    v18 = *(v0 + 104);
    v19 = *(v0 + 88);
    v20 = objc_allocWithZone(MEMORY[0x277CCAD78]);

    v21 = [v20 init];
    v22 = [v21 UUIDString];

    v23 = sub_24B2D5394();
    v25 = v24;

    v26 = sub_24B2D24A4();
    (*(*(v26 - 8) + 56))(v18, 1, 1, v26);
    if (v19 >= 4)
    {
      *(v0 + 80) = *(v0 + 88);

      return sub_24B2D6024();
    }

    else
    {
      v27 = *(v0 + 104);
      v28 = *(v0 + 112);
      if (*(v0 + 185))
      {
        v29 = 256;
      }

      else
      {
        v29 = 0;
      }

      *(v0 + 184) = 1;
      *v28 = v23;
      *(v28 + 8) = v25;
      *(v28 + 16) = v29 | v19;
      v30 = type metadata accessor for MessagePayload.ContentV0(0);
      sub_24AFF26A8(v27, v28 + v30[6]);
      v31 = v28 + v30[7];
      *(v31 + 48) = 0u;
      *(v31 + 64) = 0u;
      *(v31 + 16) = 0u;
      *(v31 + 32) = 0u;
      *v31 = 0u;
      *(v31 + 80) = *(v0 + 184);
      *(v28 + v30[8]) = 0;
      v40 = (v17 + *v17);
      v32 = swift_task_alloc();
      *(v0 + 168) = v32;
      *v32 = v0;
      v32[1] = sub_24B05FC08;
      v33 = *(v0 + 112);

      return v40(v33);
    }
  }

  else
  {

    v35 = sub_24B2D3164();
    v36 = sub_24B2D5914();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v42 = v38;
      *v37 = 136315138;
      *(v37 + 4) = sub_24AFF321C(0xD000000000000031, 0x800000024B2D9170, &v42);
      _os_log_impl(&dword_24AFD2000, v35, v36, "CompositeAppViewModel: %s - No didSelectSendLocationMessageHandler", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v38);
      MEMORY[0x24C23D530](v38, -1, -1);
      MEMORY[0x24C23D530](v37, -1, -1);
    }

    v39 = *(v0 + 8);

    return v39();
  }
}

uint64_t sub_24B05FC08()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  v3 = *(v2 + 136);
  v4 = *(v2 + 128);
  if (v0)
  {
    v5 = sub_24B05FDDC;
  }

  else
  {
    v5 = sub_24B05FD44;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24B05FD44()
{
  v1 = v0[14];
  sub_24AFD5890(v0[19]);

  sub_24B061E10(v1, type metadata accessor for MessagePayload);

  v2 = v0[1];

  return v2();
}

uint64_t sub_24B05FDDC()
{
  v17 = v0;
  v1 = v0[22];
  v2 = v0[14];

  sub_24B061E10(v2, type metadata accessor for MessagePayload);
  v3 = v1;
  v4 = sub_24B2D3164();
  v5 = sub_24B2D5914();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[22];
  v8 = v0[19];
  if (v6)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v16 = v11;
    *v9 = 136315394;
    *(v9 + 4) = sub_24AFF321C(0xD000000000000031, 0x800000024B2D9170, &v16);
    *(v9 + 12) = 2112;
    v12 = v7;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v13;
    *v10 = v13;
    _os_log_impl(&dword_24AFD2000, v4, v5, "CompositeAppViewModel: Error: %s %@", v9, 0x16u);
    sub_24AFF8258(v10, &qword_27EFC7BB8);
    MEMORY[0x24C23D530](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x24C23D530](v11, -1, -1);
    MEMORY[0x24C23D530](v9, -1, -1);
    sub_24AFD5890(v8);
  }

  else
  {
    sub_24AFD5890(v0[19]);
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_24B05FFF4(double a1, double a2, double a3, double a4, double a5, double a6)
{
  v6[2] = sub_24B2D5694();
  v6[3] = sub_24B2D5684();
  v13 = swift_task_alloc();
  v6[4] = v13;
  *v13 = v6;
  v13[1] = sub_24B03BC88;

  return sub_24B0600E8(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_24B0600E8(double a1, double a2, double a3, double a4, double a5, double a6)
{
  *(v7 + 128) = v6;
  *(v7 + 112) = a5;
  *(v7 + 120) = a6;
  *(v7 + 96) = a3;
  *(v7 + 104) = a4;
  *(v7 + 80) = a1;
  *(v7 + 88) = a2;
  sub_24B2D5694();
  *(v7 + 136) = sub_24B2D5684();
  v9 = sub_24B2D5604();
  *(v7 + 144) = v9;
  *(v7 + 152) = v8;

  return MEMORY[0x2822009F8](sub_24B06018C, v9, v8);
}

uint64_t sub_24B06018C()
{
  v35 = v0;
  if (qword_27EFC75E8 != -1)
  {
    swift_once();
  }

  v1 = sub_24B2D3184();
  v0[20] = __swift_project_value_buffer(v1, qword_27EFE4418);
  v2 = sub_24B2D3164();
  v3 = sub_24B2D5934();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v32 = v5;
    *v4 = 136315138;
    v0[2] = sub_24B061CC4(1);
    v0[3] = v6;
    v0[4] = v7;
    v0[5] = v8;
    sub_24B054B50();
    v9 = sub_24B2D5AA4();
    v11 = v10;

    v33 = v9;
    v34 = v11;
    v0[6] = sub_24B061D60(1uLL, 0xD000000000000032, 0x800000024B2D91D0);
    v0[7] = v12;
    v0[8] = v13;
    v0[9] = v14;
    sub_24B054BA4();
    sub_24B2D5424();

    v15 = sub_24AFF321C(v33, v34, &v32);

    *(v4 + 4) = v15;
    _os_log_impl(&dword_24AFD2000, v2, v3, "CompositeAppViewModel: will%s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x24C23D530](v5, -1, -1);
    MEMORY[0x24C23D530](v4, -1, -1);
  }

  v16 = v0[16] + OBJC_IVAR____TtC12FindMyUICore21CompositeAppViewModel_didSelectSendStaticLocationMessageHandler;
  v17 = *v16;
  v0[21] = *v16;
  v0[22] = *(v16 + 8);
  if (v17)
  {

    v31 = (v17 + *v17);
    v18 = swift_task_alloc();
    v0[23] = v18;
    *v18 = v0;
    v18[1] = sub_24B060588;
    v19.n128_u64[0] = v0[14];
    v20.n128_u64[0] = v0[15];
    v21.n128_u64[0] = v0[12];
    v22.n128_u64[0] = v0[13];
    v23.n128_u64[0] = v0[10];
    v24.n128_u64[0] = v0[11];

    return v31(v23, v24, v21, v22, v19, v20);
  }

  else
  {

    v26 = sub_24B2D3164();
    v27 = sub_24B2D5914();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v33 = v29;
      *v28 = 136315138;
      *(v28 + 4) = sub_24AFF321C(0xD000000000000032, 0x800000024B2D91D0, &v33);
      _os_log_impl(&dword_24AFD2000, v26, v27, "CompositeAppViewModel: %s - No didSelectSendStaticLocationMessageHandler", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x24C23D530](v29, -1, -1);
      MEMORY[0x24C23D530](v28, -1, -1);
    }

    v30 = v0[1];

    return v30();
  }
}

uint64_t sub_24B060588()
{
  v2 = *v1;
  *(*v1 + 192) = v0;

  v3 = *(v2 + 152);
  v4 = *(v2 + 144);
  if (v0)
  {
    v5 = sub_24B060734;
  }

  else
  {
    v5 = sub_24B0606C4;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24B0606C4()
{
  v1 = *(v0 + 168);

  sub_24AFD5890(v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24B060734()
{
  v16 = v0;
  v1 = v0[24];

  v2 = v1;
  v3 = sub_24B2D3164();
  v4 = sub_24B2D5914();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[24];
  v7 = v0[21];
  if (v5)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v8 = 136315394;
    *(v8 + 4) = sub_24AFF321C(0xD000000000000032, 0x800000024B2D91D0, &v15);
    *(v8 + 12) = 2112;
    v11 = v6;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v12;
    *v9 = v12;
    _os_log_impl(&dword_24AFD2000, v3, v4, "CompositeAppViewModel: Error: %s %@", v8, 0x16u);
    sub_24AFF8258(v9, &qword_27EFC7BB8);
    MEMORY[0x24C23D530](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x24C23D530](v10, -1, -1);
    MEMORY[0x24C23D530](v8, -1, -1);
    sub_24AFD5890(v7);
  }

  else
  {
    sub_24AFD5890(v0[21]);
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_24B060920()
{
  v0[2] = sub_24B2D5694();
  v0[3] = sub_24B2D5684();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_24B03BC88;

  return sub_24B0609CC();
}

uint64_t sub_24B0609CC()
{
  v1[13] = v0;
  v2 = type metadata accessor for Friend();
  v1[14] = v2;
  v1[15] = *(v2 - 8);
  v1[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8A28);
  v1[17] = swift_task_alloc();
  v3 = type metadata accessor for CompositeAppViewInitialInfo();
  v1[18] = v3;
  v1[19] = *(v3 - 8);
  v1[20] = swift_task_alloc();
  sub_24B2D5694();
  v1[21] = sub_24B2D5684();
  v5 = sub_24B2D5604();
  v1[22] = v5;
  v1[23] = v4;

  return MEMORY[0x2822009F8](sub_24B060B54, v5, v4);
}

uint64_t sub_24B060B54()
{
  v33 = v0;
  if (qword_27EFC75E8 != -1)
  {
    swift_once();
  }

  v1 = sub_24B2D3184();
  v0[24] = __swift_project_value_buffer(v1, qword_27EFE4418);
  v2 = sub_24B2D3164();
  v3 = sub_24B2D5934();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v30 = v5;
    *v4 = 136315138;
    v0[2] = sub_24B061CC4(1);
    v0[3] = v6;
    v0[4] = v7;
    v0[5] = v8;
    sub_24B054B50();
    v9 = sub_24B2D5AA4();
    v11 = v10;

    v31 = v9;
    v32 = v11;
    v0[6] = sub_24B061D60(1uLL, 0xD000000000000013, 0x800000024B2D91B0);
    v0[7] = v12;
    v0[8] = v13;
    v0[9] = v14;
    sub_24B054BA4();
    sub_24B2D5424();

    v15 = sub_24AFF321C(v31, v32, &v30);

    *(v4 + 4) = v15;
    _os_log_impl(&dword_24AFD2000, v2, v3, "CompositeAppViewModel: will%s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x24C23D530](v5, -1, -1);
    MEMORY[0x24C23D530](v4, -1, -1);
  }

  v16 = v0[18];
  v17 = v0[19];
  v18 = v0[17];
  v19 = v0[13];
  v20 = OBJC_IVAR____TtC12FindMyUICore21CompositeAppViewModel_initialInfo;
  swift_beginAccess();
  sub_24B05C710(v19 + v20, v18);
  v21 = (*(v17 + 48))(v18, 1, v16);
  v22 = v0[17];
  if (v21 == 1)
  {

    sub_24AFF8258(v22, &qword_27EFC8A28);
    v23 = sub_24B2D3164();
    v24 = sub_24B2D5914();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v31 = v26;
      *v25 = 136315138;
      *(v25 + 4) = sub_24AFF321C(0xD000000000000013, 0x800000024B2D91B0, &v31);
      _os_log_impl(&dword_24AFD2000, v23, v24, "CompositeAppViewModel: %s - StopSharingLocation with no initialInfo", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x24C23D530](v26, -1, -1);
      MEMORY[0x24C23D530](v25, -1, -1);
    }

    v27 = v0[1];

    return v27();
  }

  else
  {
    sub_24B061ED8(v0[17], v0[20], type metadata accessor for CompositeAppViewInitialInfo);
    v29 = swift_task_alloc();
    v0[25] = v29;
    *v29 = v0;
    v29[1] = sub_24B060F74;

    return sub_24B05A89C();
  }
}

uint64_t sub_24B060F74(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 208) = a1;

  v3 = *(v2 + 184);
  v4 = *(v2 + 176);

  return MEMORY[0x2822009F8](sub_24B06109C, v4, v3);
}

uint64_t sub_24B06109C()
{
  v1 = v0;
  v2 = *(v0[20] + *(v0[18] + 24));
  v3 = MEMORY[0x277D84F90];
  v25 = MEMORY[0x277D84F90];
  v4 = *(v2 + 16);
  if (v4)
  {
    v21 = *(v0[20] + *(v0[18] + 24));
    v5 = v0[15];
    v6 = v0[16];
    v7 = v0[14];
    v8 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v23 = *(v7 + 24);
    v24 = *(v7 + 20);
    v22 = *(v5 + 72);
    do
    {
      v9 = v1[16];
      sub_24B061E70(v8, v9, type metadata accessor for Friend);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC7980);
      v10 = sub_24B2D1704();
      v11 = *(v10 - 8);
      v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_24B2DE430;
      (*(v11 + 16))(v13 + v12, v6 + v24, v10);
      v14 = *(v6 + v23);
      v15 = swift_task_alloc();
      *(v15 + 16) = v9;

      v16 = sub_24B00DCB0(sub_24AFF2118, v15, v14);

      sub_24B0300DC(v16);
      sub_24B061E10(v9, type metadata accessor for Friend);
      sub_24B0300DC(v13);
      v8 += v22;
      --v4;
    }

    while (v4);
    v3 = v25;
    v17 = *(v21 + 16) > 1uLL;
  }

  else
  {
    v17 = 0;
  }

  v1[27] = v3;
  v18 = swift_task_alloc();
  v1[28] = v18;
  *v18 = v1;
  v18[1] = sub_24B061358;
  v19 = v1[20];

  return sub_24B04DCC4(v3, v19, v17);
}

uint64_t sub_24B061358()
{
  v2 = *v1;
  *(*v1 + 232) = v0;

  v3 = *(v2 + 184);
  v4 = *(v2 + 176);
  if (v0)
  {
    v5 = sub_24B0617AC;
  }

  else
  {
    v5 = sub_24B0614AC;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24B0614AC()
{
  v1 = v0[13] + OBJC_IVAR____TtC12FindMyUICore21CompositeAppViewModel_didSelectStopSharingHandler;
  v2 = *v1;
  v0[30] = *v1;
  v0[31] = *(v1 + 8);
  if (v2)
  {

    v6 = (v2 + *v2);
    v3 = swift_task_alloc();
    v0[32] = v3;
    *v3 = v0;
    v3[1] = sub_24B061644;

    return v6();
  }

  else
  {
    sub_24B061E10(v0[20], type metadata accessor for CompositeAppViewInitialInfo);

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_24B061644()
{
  v3 = *v1;
  v2 = *v1;

  v4 = *(v2 + 240);
  if (v0)
  {

    sub_24AFD5890(v4);
    v5 = *(v3 + 176);
    v6 = *(v3 + 184);
    v7 = sub_24B061F40;
  }

  else
  {
    sub_24AFD5890(v4);
    v5 = *(v3 + 176);
    v6 = *(v3 + 184);
    v7 = sub_24B0619CC;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_24B0617AC()
{
  v16 = v0;
  v1 = v0[29];

  v2 = v1;
  v3 = sub_24B2D3164();
  v4 = sub_24B2D5914();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[29];
  v7 = v0[20];
  if (v5)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v8 = 136315394;
    *(v8 + 4) = sub_24AFF321C(0xD000000000000013, 0x800000024B2D91B0, &v15);
    *(v8 + 12) = 2112;
    v11 = v6;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v12;
    *v9 = v12;
    _os_log_impl(&dword_24AFD2000, v3, v4, "CompositeAppViewModel: Error: %s %@", v8, 0x16u);
    sub_24AFF8258(v9, &qword_27EFC7BB8);
    MEMORY[0x24C23D530](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x24C23D530](v10, -1, -1);
    MEMORY[0x24C23D530](v8, -1, -1);
  }

  else
  {
  }

  sub_24B061E10(v7, type metadata accessor for CompositeAppViewInitialInfo);

  v13 = v0[1];

  return v13();
}

uint64_t sub_24B0619CC()
{
  v1 = *(v0 + 160);

  sub_24B061E10(v1, type metadata accessor for CompositeAppViewInitialInfo);

  v2 = *(v0 + 8);

  return v2();
}

void sub_24B061A94()
{
  v1 = v0;
  if (qword_27EFC75E8 != -1)
  {
    swift_once();
  }

  v2 = sub_24B2D3184();
  __swift_project_value_buffer(v2, qword_27EFE4418);
  v3 = sub_24B2D3164();
  v4 = sub_24B2D5934();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136315138;
    sub_24B061CC4(1);
    sub_24B054B50();
    v7 = sub_24B2D5AA4();
    v9 = v8;

    sub_24B061D60(1uLL, 0x417373696D736964, 0xEF29286E6F697463);
    sub_24B054BA4();
    sub_24B2D5424();

    v10 = sub_24AFF321C(v7, v9, &v13);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_24AFD2000, v3, v4, "CompositeAppViewModel: will%s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x24C23D530](v6, -1, -1);
    MEMORY[0x24C23D530](v5, -1, -1);
  }

  v11 = *(v1 + OBJC_IVAR____TtC12FindMyUICore21CompositeAppViewModel_dismiss);
  if (v11)
  {

    v11(v12);
    sub_24AFD5890(v11);
  }
}

uint64_t sub_24B061CC4(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_24B2D5414();

    return sub_24B2D54A4();
  }

  return result;
}

unint64_t sub_24B061D60(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = sub_24B2D5414();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return sub_24B2D54A4();
}

uint64_t sub_24B061E10(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24B061E70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B061ED8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B061F48(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  sub_24B2D5694();
  v2[9] = sub_24B2D5684();
  v4 = sub_24B2D5604();
  v2[10] = v4;
  v2[11] = v3;

  return MEMORY[0x2822009F8](sub_24B061FE0, v4, v3);
}

uint64_t sub_24B061FE0()
{
  v9 = v0;
  if (qword_27EFC75E8 != -1)
  {
    swift_once();
  }

  v1 = sub_24B2D3184();
  __swift_project_value_buffer(v1, qword_27EFE4418);
  v2 = sub_24B2D3164();
  v3 = sub_24B2D5934();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_24AFF321C(0xD00000000000002BLL, 0x800000024B2D92E0, &v8);
    _os_log_impl(&dword_24AFD2000, v2, v3, "CompositeAppViewModel: %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x24C23D530](v5, -1, -1);
    MEMORY[0x24C23D530](v4, -1, -1);
  }

  v6 = swift_task_alloc();
  *(v0 + 96) = v6;
  *v6 = v0;
  v6[1] = sub_24B06218C;

  return sub_24B05A89C();
}

uint64_t sub_24B06218C(uint64_t a1)
{
  v2 = *v1;
  v5 = *v1;
  *(v2 + 104) = a1;

  v3 = swift_task_alloc();
  *(v2 + 112) = v3;
  *v3 = v5;
  v3[1] = sub_24B0622BC;

  return sub_24B01A744();
}

uint64_t sub_24B0622BC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 120) = v1;

  if (v1)
  {
    v5 = v4[10];
    v6 = v4[11];
    v7 = sub_24B0624AC;
  }

  else
  {
    v4[16] = a1;
    v5 = v4[10];
    v6 = v4[11];
    v7 = sub_24B0623E4;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_24B0623E4()
{
  v1 = *(v0 + 128);

  [v1 coordinate];
  *(v0 + 32) = 0u;
  *(v0 + 16) = 0u;
  *(v0 + 48) = 1;
  sub_24B06251C(v0 + 16, v2, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_24B0624AC()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_24B06251C(uint64_t a1, double a2, double a3)
{
  if (!CLLocationCoordinate2DIsValid(*&a2))
  {
    if (qword_27EFC75E8 != -1)
    {
      swift_once();
    }

    v13 = sub_24B2D3184();
    __swift_project_value_buffer(v13, qword_27EFE4418);
    v14 = sub_24B2D3164();
    v15 = sub_24B2D5914();
    if (!os_log_type_enabled(v14, v15))
    {
      goto LABEL_18;
    }

    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v25 = v17;
    *v16 = 136315138;
    *(v16 + 4) = sub_24AFF321C(0xD00000000000001ALL, 0x800000024B2D92A0, &v25);
    v18 = "CompositeAppViewModel: %s - Invalid Coordinate";
    goto LABEL_17;
  }

  type metadata accessor for FindMyUICore();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = [objc_opt_self() bundleForClass_];
  v8 = sub_24B2D5374();
  v9 = [v7 localizedStringForKey:v8 value:0 table:0];

  if (!v9)
  {
    sub_24B2D5394();
    v9 = sub_24B2D5374();
  }

  v10 = [objc_allocWithZone(MEMORY[0x277CD4FA8]) initForCoordinate:v9 label:{a2, a3}];

  if (!v10)
  {
    if (qword_27EFC75E8 != -1)
    {
      swift_once();
    }

    v19 = sub_24B2D3184();
    __swift_project_value_buffer(v19, qword_27EFE4418);
    v14 = sub_24B2D3164();
    v15 = sub_24B2D5914();
    if (!os_log_type_enabled(v14, v15))
    {
      goto LABEL_18;
    }

    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v25 = v17;
    *v16 = 136315138;
    *(v16 + 4) = sub_24AFF321C(0xD00000000000001ALL, 0x800000024B2D92A0, &v25);
    v18 = "CompositeAppViewModel: %s - No builder";
LABEL_17:
    _os_log_impl(&dword_24AFD2000, v14, v15, v18, v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x24C23D530](v17, -1, -1);
    MEMORY[0x24C23D530](v16, -1, -1);
LABEL_18:

    sub_24B0629E8();
    swift_allocError();
    swift_willThrow();
    return;
  }

  if ((*(a1 + 32) & 1) == 0)
  {
    [v10 setDisplayRegion_];
  }

  v11 = [v10 buildForWeb];
  if (v11)
  {
    v12 = v11;
    sub_24B2D22A4();
  }

  else
  {
    if (qword_27EFC75E8 != -1)
    {
      swift_once();
    }

    v20 = sub_24B2D3184();
    __swift_project_value_buffer(v20, qword_27EFE4418);
    v21 = sub_24B2D3164();
    v22 = sub_24B2D5914();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v25 = v24;
      *v23 = 136315138;
      *(v23 + 4) = sub_24AFF321C(0xD00000000000001ALL, 0x800000024B2D92A0, &v25);
      _os_log_impl(&dword_24AFD2000, v21, v22, "CompositeAppViewModel: %s - Nil URL", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x24C23D530](v24, -1, -1);
      MEMORY[0x24C23D530](v23, -1, -1);
    }

    sub_24B0629E8();
    swift_allocError();
    swift_willThrow();
  }
}

unint64_t sub_24B0629E8()
{
  result = qword_27EFC8A60;
  if (!qword_27EFC8A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC8A60);
  }

  return result;
}

double sub_24B062A78@<D0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24B2D3214();

  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

void sub_24B062B00()
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_24B2D3224();
  sub_24B00EAF4();
}

uint64_t sub_24B062B90@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24B2D3214();

  *a1 = v3;
  return result;
}

void sub_24B062C10()
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_24B2D3224();
  sub_24B00ED5C();
}

uint64_t sub_24B062CC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t))
{
  swift_getKeyPath();
  swift_getKeyPath();

  v8 = sub_24B2D3224();
  return a7(v8);
}

uint64_t sub_24B062D54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v109 = a3;
  v110 = a4;
  v113 = a1;
  v115 = a5;
  v7 = type metadata accessor for Friend();
  MEMORY[0x28223BE20](v7);
  v103 = (&v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for Annotation();
  v107 = *(v9 - 8);
  v108 = v9;
  MEMORY[0x28223BE20](v9);
  v104 = &v102 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  Action = type metadata accessor for LocateAction();
  MEMORY[0x28223BE20](Action - 8);
  v106 = &v102 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8480);
  v13 = MEMORY[0x28223BE20](v112);
  v15 = &v102 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v111 = &v102 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v102 - v19;
  MEMORY[0x28223BE20](v18);
  v114 = &v102 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8450);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v102 - v23;
  v25 = sub_24B2D24A4();
  v26 = *(v25 - 8);
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v102 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v31 = &v102 - v30;
  v105 = v5;
  if (*(v5 + OBJC_IVAR____TtC12FindMyUICore21CompositeAppViewModel_internalRepository))
  {
    sub_24B008890(a2, v24, &qword_27EFC8450);
    if ((*(v26 + 48))(v24, 1, v25) == 1)
    {

      sub_24AFF8258(v24, &qword_27EFC8450);
      goto LABEL_20;
    }

    (*(v26 + 32))(v31, v24, v25);
    swift_getKeyPath();
    swift_getKeyPath();

    sub_24B2D3214();

    v42 = v117[0];
    if (*(v117[0] + 16) && (v43 = sub_24B054238(v109, v110), (v44 & 1) != 0))
    {
      (*(v26 + 16))(v29, *(v42 + 56) + *(v26 + 72) * v43, v25);

      if (sub_24B2D23C4())
      {
        if (qword_27EFC75E8 != -1)
        {
          swift_once();
        }

        v45 = sub_24B2D3184();
        __swift_project_value_buffer(v45, qword_27EFE4418);
        v46 = sub_24B2D3164();
        v47 = sub_24B2D5934();
        if (os_log_type_enabled(v46, v47))
        {
          v48 = swift_slowAlloc();
          v49 = swift_slowAlloc();
          v117[0] = v49;
          *v48 = 136315138;
          *(v48 + 4) = sub_24AFF321C(0xD00000000000003CLL, 0x800000024B2D93D0, v117);
          _os_log_impl(&dword_24AFD2000, v46, v47, "CompositeAppViewModel: %s - not last message", v48, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v49);
          MEMORY[0x24C23D530](v49, -1, -1);
          MEMORY[0x24C23D530](v48, -1, -1);
        }

        v50 = *(v26 + 8);
        v50(v29, v25);
        v50(v31, v25);
        v51 = type metadata accessor for ShareReceivedMessageView.State.Active(0);
        return (*(*(v51 - 8) + 56))(v115, 3, 3, v51);
      }

      v90 = *(v26 + 8);
      v90(v29, v25);
      v90(v31, v25);
    }

    else
    {

      (*(v26 + 8))(v31, v25);
    }

LABEL_20:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC7980);
    v52 = sub_24B2D1704();
    v53 = *(v52 - 8);
    v54 = (*(v53 + 80) + 32) & ~*(v53 + 80);
    v55 = swift_allocObject();
    *(v55 + 16) = xmmword_24B2DE430;
    v56 = v55 + v54;
    v57 = v113;
    v58 = (*(v53 + 16))(v56, v113 + *(v7 + 20), v52);
    v59 = *(v57 + *(v7 + 24));
    MEMORY[0x28223BE20](v58);
    *(&v102 - 2) = v57;

    v60 = sub_24B00DCB0(sub_24AFF2290, (&v102 - 4), v59);
    v117[0] = v55;
    sub_24B0300DC(v60);
    v61 = v114;
    sub_24B02466C(v117[0], v114);

    if (qword_27EFC75E8 != -1)
    {
      swift_once();
    }

    v62 = sub_24B2D3184();
    __swift_project_value_buffer(v62, qword_27EFE4418);
    sub_24B008890(v61, v20, &qword_27EFC8480);
    v63 = sub_24B2D3164();
    v64 = sub_24B2D5934();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v117[0] = v66;
      *v65 = 136315394;
      *(v65 + 4) = sub_24AFF321C(0xD00000000000003CLL, 0x800000024B2D93D0, v117);
      *(v65 + 12) = 2080;
      v110 = v15;
      sub_24B008890(v20, v111, &qword_27EFC8480);
      v67 = sub_24B2D53C4();
      v69 = v68;
      sub_24AFF8258(v20, &qword_27EFC8480);
      v70 = sub_24AFF321C(v67, v69, v117);

      *(v65 + 14) = v70;
      v15 = v110;
      _os_log_impl(&dword_24AFD2000, v63, v64, "CompositeAppViewModel: %s - followingState: %s", v65, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C23D530](v66, -1, -1);
      v61 = v114;
      MEMORY[0x24C23D530](v65, -1, -1);
    }

    else
    {

      sub_24AFF8258(v20, &qword_27EFC8480);
    }

    sub_24B008890(v61, v15, &qword_27EFC8480);
    v71 = type metadata accessor for SessionFollowingState(0);
    if ((*(*(v71 - 8) + 48))(v15, 1, v71) == 1)
    {
      goto LABEL_26;
    }

    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload != 2)
      {
LABEL_26:
        sub_24AFF8258(v61, &qword_27EFC8480);

        v72 = type metadata accessor for ShareReceivedMessageView.State.Active(0);
        return (*(*(v72 - 8) + 56))(v115, 1, 3, v72);
      }

      sub_24AFF8258(v61, &qword_27EFC8480);
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {
        v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8458);
        sub_24AFF8258(&v15[*(v74 + 48)], &qword_27EFC8450);
        sub_24AFF8258(v15, &qword_27EFC8450);
        v75 = sub_24B025370(v113);
        v77 = v76;
        v79 = v78;
        v81 = v80;
        sub_24B068E78(v75, v76, v78);
        v82 = sub_24B2D3164();
        v83 = sub_24B2D5934();
        sub_24B0341D0(v75, v77, v79);
        if (os_log_type_enabled(v82, v83))
        {
          v84 = swift_slowAlloc();
          v85 = swift_slowAlloc();
          v119[0] = v85;
          *v84 = 136315394;
          *(v84 + 4) = sub_24AFF321C(0xD00000000000003CLL, 0x800000024B2D93D0, v119);
          *(v84 + 12) = 2080;
          v117[0] = v75;
          v117[1] = v77;
          v117[2] = v79;
          v118 = v81;
          sub_24B068E78(v75, v77, v79);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8A88);
          v86 = sub_24B2D53C4();
          v88 = sub_24AFF321C(v86, v87, v119);

          *(v84 + 14) = v88;
          _os_log_impl(&dword_24AFD2000, v82, v83, "CompositeAppViewModel: %s - %s", v84, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x24C23D530](v85, -1, -1);
          MEMORY[0x24C23D530](v84, -1, -1);
        }

        if (v79)
        {
          if (v79 == 1)
          {

            sub_24B0341D0(v75, v77, 1);
          }

          else
          {
            if (v79 != 2)
            {

              v95 = v79;
              v96 = v106;
              v97 = v113;
              sub_24B066640(v113, v106);
              v98 = sub_24B066AB0();
              v99 = v103;
              sub_24B068D40(v97, v103, type metadata accessor for Friend);
              v100 = v104;
              sub_24B066154(v77, v95, v81, v99, v104);

              sub_24B0341D0(v75, v77, v79);
              sub_24AFF8258(v114, &qword_27EFC8480);
              v101 = v100;
              v91 = v115;
              sub_24B068DA8(v101, v115, type metadata accessor for Annotation);
              (*(v107 + 56))(v91, 0, 2, v108);
              v92 = type metadata accessor for ShareReceivedMessageView.State.Active(0);
              sub_24B068DA8(v96, v91 + *(v92 + 20), type metadata accessor for LocateAction);
              *(v91 + *(v92 + 24)) = v98;
              return (*(*(v92 - 8) + 56))(v91, 0, 3, v92);
            }
          }

          sub_24AFF8258(v114, &qword_27EFC8480);
          v91 = v115;
          (*(v107 + 56))(v115, 2, 2, v108);
        }

        else
        {

          sub_24B0341D0(v75, v77, 0);
          sub_24AFF8258(v114, &qword_27EFC8480);
          v91 = v115;
          (*(v107 + 56))(v115, 1, 2, v108);
        }

        v92 = type metadata accessor for ShareReceivedMessageView.State.Active(0);
        v93 = *(v92 + 20);
        v94 = type metadata accessor for DirectionsState();
        (*(*(v94 - 8) + 56))(v91 + v93, 1, 2, v94);
        *(v91 + *(v92 + 24)) = 0;
        return (*(*(v92 - 8) + 56))(v91, 0, 3, v92);
      }

      sub_24AFF8258(v61, &qword_27EFC8480);

      sub_24AFF8258(v15, &qword_27EFC8450);
    }

    v89 = type metadata accessor for ShareReceivedMessageView.State.Active(0);
    return (*(*(v89 - 8) + 56))(v115, 2, 3, v89);
  }

  if (qword_27EFC75E8 != -1)
  {
    swift_once();
  }

  v32 = sub_24B2D3184();
  __swift_project_value_buffer(v32, qword_27EFE4418);
  v33 = sub_24B2D3164();
  v34 = sub_24B2D5934();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v117[0] = v36;
    *v35 = 136315138;
    *(v35 + 4) = sub_24AFF321C(0xD00000000000003CLL, 0x800000024B2D93D0, v117);
    _os_log_impl(&dword_24AFD2000, v33, v34, "CompositeAppViewModel: %s - No Repository", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v36);
    MEMORY[0x24C23D530](v36, -1, -1);
    MEMORY[0x24C23D530](v35, -1, -1);
  }

  v37 = type metadata accessor for ShareReceivedMessageView.State.Active(0);
  v38 = *(*(v37 - 8) + 56);
  v39 = v37;
  v40 = v115;

  return v38(v40, 1, 3, v39);
}

uint64_t sub_24B063DB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(v2 + OBJC_IVAR____TtC12FindMyUICore21CompositeAppViewModel_internalRepository))
  {
    v5 = qword_27EFC75E8;

    if (v5 != -1)
    {
      swift_once();
    }

    v6 = sub_24B2D3184();
    __swift_project_value_buffer(v6, qword_27EFE4418);
    v7 = sub_24B2D3164();
    v8 = sub_24B2D5934();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *&v19 = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_24AFF321C(0xD000000000000024, 0x800000024B2D9410, &v19);
      _os_log_impl(&dword_24AFD2000, v7, v8, "CompositeAppViewModel: %s - pendingShare", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x24C23D530](v10, -1, -1);
      MEMORY[0x24C23D530](v9, -1, -1);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_24B2D3214();

    v11 = v20;
    v12 = v19;
    *a2 = a1;
    *(a2 + 8) = v12;
    *(a2 + 24) = v11;
  }

  else
  {
    if (qword_27EFC75E8 != -1)
    {
      swift_once();
    }

    v13 = sub_24B2D3184();
    __swift_project_value_buffer(v13, qword_27EFE4418);
    v14 = sub_24B2D3164();
    v15 = sub_24B2D5934();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *&v19 = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_24AFF321C(0xD000000000000024, 0x800000024B2D9410, &v19);
      _os_log_impl(&dword_24AFD2000, v14, v15, "CompositeAppViewModel: %s - No Repository", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x24C23D530](v17, -1, -1);
      MEMORY[0x24C23D530](v16, -1, -1);
    }

    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *a2 = a1;
    *(a2 + 24) = 0;
  }

  type metadata accessor for ShareSentMessageView.ShareState(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_24B0640B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v85 = a3;
  v86 = a4;
  v88 = a1;
  v91 = a5;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8448);
  v7 = MEMORY[0x28223BE20](v87);
  v89 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v81 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v81 - v13;
  MEMORY[0x28223BE20](v12);
  v90 = &v81 - v15;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8450);
  v16 = MEMORY[0x28223BE20](v82);
  v81 = &v81 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v83 = &v81 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v84 = &v81 - v21;
  MEMORY[0x28223BE20](v20);
  v23 = &v81 - v22;
  v24 = sub_24B2D24A4();
  v25 = *(v24 - 8);
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v81 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v30 = &v81 - v29;
  v31 = *(v5 + OBJC_IVAR____TtC12FindMyUICore21CompositeAppViewModel_internalRepository);
  if (!v31)
  {
    if (qword_27EFC75E8 != -1)
    {
      swift_once();
    }

    v32 = sub_24B2D3184();
    __swift_project_value_buffer(v32, qword_27EFE4418);
    v33 = sub_24B2D3164();
    v34 = sub_24B2D5934();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v92[0] = v36;
      *v35 = 136315138;
      *(v35 + 4) = sub_24AFF321C(0xD000000000000041, 0x800000024B2D9440, v92);
      _os_log_impl(&dword_24AFD2000, v33, v34, "CompositeAppViewModel: %s - No Repository", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v36);
      MEMORY[0x24C23D530](v36, -1, -1);
      MEMORY[0x24C23D530](v35, -1, -1);
    }

    type metadata accessor for ShareSentMessageView.ShareState(0);

    return swift_storeEnumTagMultiPayload();
  }

  sub_24B008890(a2, v23, &qword_27EFC8450);
  if ((*(v25 + 48))(v23, 1, v24) == 1)
  {

    sub_24AFF8258(v23, &qword_27EFC8450);
  }

  else
  {
    (*(v25 + 32))(v30, v23, v24);
    swift_getKeyPath();
    swift_getKeyPath();

    sub_24B2D3214();

    v38 = v92[0];
    if (*(v92[0] + 16) && (v39 = sub_24B054238(v85, v86), (v40 & 1) != 0))
    {
      (*(v25 + 16))(v28, *(v38 + 56) + *(v25 + 72) * v39, v24);

      if (sub_24B2D23C4())
      {
        if (qword_27EFC75E8 != -1)
        {
          swift_once();
        }

        v41 = sub_24B2D3184();
        __swift_project_value_buffer(v41, qword_27EFE4418);
        v42 = sub_24B2D3164();
        v43 = sub_24B2D5934();
        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          v45 = swift_slowAlloc();
          v92[0] = v45;
          *v44 = 136315138;
          *(v44 + 4) = sub_24AFF321C(0xD000000000000041, 0x800000024B2D9440, v92);
          _os_log_impl(&dword_24AFD2000, v42, v43, "CompositeAppViewModel: %s - not last message", v44, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v45);
          MEMORY[0x24C23D530](v45, -1, -1);
          MEMORY[0x24C23D530](v44, -1, -1);
        }

        v46 = *(v25 + 8);
        v46(v28, v24);
        v46(v30, v24);
        type metadata accessor for ShareSentMessageView.ShareState(0);
        return swift_storeEnumTagMultiPayload();
      }

      v74 = *(v25 + 8);
      v74(v28, v24);
      v74(v30, v24);
    }

    else
    {

      (*(v25 + 8))(v30, v24);
    }
  }

  v47 = v90;
  sub_24B022ED8(v88, v90);
  if (qword_27EFC75E8 != -1)
  {
    swift_once();
  }

  v88 = v31;
  v48 = sub_24B2D3184();
  __swift_project_value_buffer(v48, qword_27EFE4418);
  sub_24B008890(v47, v14, &qword_27EFC8448);
  v49 = sub_24B2D3164();
  v50 = sub_24B2D5934();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v92[0] = v52;
    *v51 = 136315394;
    *(v51 + 4) = sub_24AFF321C(0xD000000000000041, 0x800000024B2D9440, v92);
    *(v51 + 12) = 2080;
    sub_24B008890(v14, v11, &qword_27EFC8448);
    v53 = sub_24B2D53C4();
    v54 = v14;
    v56 = v55;
    sub_24AFF8258(v54, &qword_27EFC8448);
    v57 = sub_24AFF321C(v53, v56, v92);

    *(v51 + 14) = v57;
    _os_log_impl(&dword_24AFD2000, v49, v50, "CompositeAppViewModel: %s - followerState: %s", v51, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C23D530](v52, -1, -1);
    v58 = v51;
    v47 = v90;
    MEMORY[0x24C23D530](v58, -1, -1);
  }

  else
  {

    sub_24AFF8258(v14, &qword_27EFC8448);
  }

  v59 = v89;
  sub_24B008890(v47, v89, &qword_27EFC8448);
  v60 = type metadata accessor for SessionFollowerState(0);
  if ((*(*(v60 - 8) + 48))(v59, 1, v60) == 1)
  {
    goto LABEL_26;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
LABEL_26:
      sub_24AFF8258(v47, &qword_27EFC8448);

      type metadata accessor for ShareSentMessageView.ShareState(0);
      return swift_storeEnumTagMultiPayload();
    }

    sub_24AFF8258(v47, &qword_27EFC8448);

    goto LABEL_34;
  }

  if (EnumCaseMultiPayload)
  {
    sub_24AFF8258(v47, &qword_27EFC8448);

    sub_24AFF8258(v59, &qword_27EFC8450);
LABEL_34:
    type metadata accessor for ShareSentMessageView.ShareState(0);
    return swift_storeEnumTagMultiPayload();
  }

  v62 = v84;
  sub_24B0391CC(v59, v84, &qword_27EFC8450);
  v63 = v62;
  v64 = v83;
  sub_24B008890(v63, v83, &qword_27EFC8450);
  v65 = sub_24B2D3164();
  v66 = sub_24B2D5934();
  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v92[0] = v68;
    *v67 = 136315394;
    *(v67 + 4) = sub_24AFF321C(0xD000000000000041, 0x800000024B2D9440, v92);
    *(v67 + 12) = 2080;
    sub_24B008890(v64, v81, &qword_27EFC8450);
    v69 = sub_24B2D53C4();
    v71 = v70;
    sub_24AFF8258(v64, &qword_27EFC8450);
    v72 = v69;
    v47 = v90;
    v73 = sub_24AFF321C(v72, v71, v92);

    *(v67 + 14) = v73;
    _os_log_impl(&dword_24AFD2000, v65, v66, "CompositeAppViewModel: %s - active - expiryDate: %s", v67, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C23D530](v68, -1, -1);
    MEMORY[0x24C23D530](v67, -1, -1);
  }

  else
  {

    sub_24AFF8258(v64, &qword_27EFC8450);
  }

  v75 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8458) + 48);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24B2D3214();

  sub_24AFF8258(v47, &qword_27EFC8448);
  v76 = v92[0];
  v77 = v92[1];
  v78 = v93;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8A38);
  v80 = v91 + *(v79 + 48);
  sub_24B0391CC(v84, v91, &qword_27EFC8450);
  *v80 = v76;
  *(v80 + 8) = v77;
  *(v80 + 16) = v78;
  type metadata accessor for ShareSentMessageView.ShareState(0);
  swift_storeEnumTagMultiPayload();
  return sub_24AFF8258(v59 + v75, &qword_27EFC8450);
}

uint64_t sub_24B064D40@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v171 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8A68);
  MEMORY[0x28223BE20](v3 - 8);
  v164 = &v156 - v4;
  v5 = type metadata accessor for Annotation();
  v174 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v175 = &v156 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v162 = &v156 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8A48);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v156 - v10;
  v172 = type metadata accessor for Friend();
  v167 = *(v172 - 8);
  v12 = MEMORY[0x28223BE20](v172);
  v14 = &v156 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v173 = (&v156 - v16);
  MEMORY[0x28223BE20](v15);
  v165 = &v156 - v17;
  Action = type metadata accessor for LocateAction();
  MEMORY[0x28223BE20](Action - 8);
  v170 = &v156 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8450);
  MEMORY[0x28223BE20](v20 - 8);
  v169 = &v156 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8A70);
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v163 = (&v156 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v23);
  v166 = (&v156 - v25);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8A28);
  MEMORY[0x28223BE20](v26 - 8);
  v28 = &v156 - v27;
  v29 = type metadata accessor for CompositeAppViewInitialInfo();
  v30 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v32 = &v156 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = OBJC_IVAR____TtC12FindMyUICore21CompositeAppViewModel_initialInfo;
  swift_beginAccess();
  sub_24B008890(v2 + v33, v28, &qword_27EFC8A28);
  if ((*(v30 + 48))(v28, 1, v29) == 1)
  {
    sub_24AFF8258(v28, &qword_27EFC8A28);
    if (qword_27EFC75E8 != -1)
    {
      swift_once();
    }

    v34 = sub_24B2D3184();
    __swift_project_value_buffer(v34, qword_27EFE4418);
    v35 = sub_24B2D3164();
    v36 = sub_24B2D5914();
    v37 = os_log_type_enabled(v35, v36);
    v38 = v171;
    if (v37)
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v176[0] = v40;
      *v39 = 136315138;
      *(v39 + 4) = sub_24AFF321C(0xD000000000000012, 0x800000024B2D9350, v176);
      _os_log_impl(&dword_24AFD2000, v35, v36, "CompositeAppViewModel: %s - MonitorState with no initialInfo", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v40);
      MEMORY[0x24C23D530](v40, -1, -1);
      MEMORY[0x24C23D530](v39, -1, -1);
    }

    v41 = type metadata accessor for DetailsAppView.State(0);
    v42 = v41[5];
    v43 = type metadata accessor for SessionLocation.Description(0);
    (*(*(v43 - 8) + 56))(&v38[v42], 1, 1, v43);
    v44 = v41[6];
    v45 = sub_24B2D24A4();
    (*(*(v45 - 8) + 56))(&v38[v44], 1, 1, v45);
    v46 = v41[11];
    v47 = type metadata accessor for DirectionsState();
    result = (*(*(v47 - 8) + 56))(&v38[v46], 1, 2, v47);
    *v38 = 0;
    *&v38[v41[7]] = MEMORY[0x277D84F90];
    v49 = &v38[v41[8]];
    *v49 = 0;
    *(v49 + 1) = 0;
    v38[v41[9]] = 0;
    v38[v41[10]] = 0;
  }

  else
  {
    sub_24B068DA8(v28, v32, type metadata accessor for CompositeAppViewInitialInfo);
    v161 = v2;
    v50 = *(v2 + OBJC_IVAR____TtC12FindMyUICore21CompositeAppViewModel_internalRepository);
    v51 = v32;
    if (v50)
    {
      v159 = v29;
      v52 = *&v32[*(v29 + 24)];

      sub_24B022554(v52, v169);
      sub_24AFF02DC(v11);
      v53 = v167;
      v54 = (*(v167 + 48))(v11, 1, v172);
      v172 = v50;
      v160 = v32;
      v158 = v52;
      if (v54 != 1)
      {
        v99 = v171;
        v100 = v165;
        sub_24B068DA8(v11, v165, type metadata accessor for Friend);
        v102 = sub_24B025370(v100);
        v104 = v103;
        v105 = v101;
        v107 = v106;
        v108 = v166;
        if (v101 >= 3)
        {
          v110 = v173;
          sub_24B068D40(v100, v173, type metadata accessor for Friend);

          v111 = v105;
          v112 = v162;
          sub_24B066154(v104, v111, v107, v110, v162);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC7FA8);
          v113 = (*(v174 + 80) + 32) & ~*(v174 + 80);
          v114 = swift_allocObject();
          *(v114 + 16) = xmmword_24B2DE430;
          v175 = v114;
          sub_24B068D40(v112, v114 + v113, type metadata accessor for Annotation);
          sub_24B041F70(v102, v104, v111, v107, v108);
          v115 = v112;
          v100 = v165;
          sub_24B068CE0(v115, type metadata accessor for Annotation);
          v109 = 0;
        }

        else
        {
          v175 = qword_24B2E1BD8[v101];
          v109 = 1;
        }

        v116 = type metadata accessor for SessionLocation.Description(0);
        (*(*(v116 - 8) + 56))(v108, v109, 1, v116);
        sub_24B066640(v100, v170);
        sub_24B0341D0(v102, v104, v105);
        sub_24B068CE0(v100, type metadata accessor for Friend);
        v56 = v99;
        goto LABEL_50;
      }

      sub_24AFF8258(v11, &qword_27EFC8A48);
      v55 = *(v52 + 16);
      v56 = v171;
      if (v55)
      {
        v157 = 0;
        LODWORD(v162) = 0;
        v57 = 0;
        v58 = *(v53 + 72);
        v59 = -v55;
        v60 = v52 + ((*(v53 + 80) + 32) & ~*(v53 + 80));
        v61 = MEMORY[0x277D84F90];
        v167 = v59;
        v168 = v14;
        v165 = v60;
LABEL_11:
        v62 = v60 + v58 * v57++;
        while (1)
        {
          sub_24B068D40(v62, v14, type metadata accessor for Friend);
          v63 = sub_24B025370(v14);
          if (v65 == 2)
          {
            sub_24B068CE0(v14, type metadata accessor for Friend);
          }

          else
          {
            v67 = v64;
            v68 = v65;
            v69 = v66;
            if (!v65)
            {
              sub_24B0341D0(v63, v64, 0);
              sub_24B068CE0(v14, type metadata accessor for Friend);
              LODWORD(v162) = 1;
              v60 = v165;
              if (v59 + v57)
              {
                goto LABEL_11;
              }

              if (*(v61 + 16))
              {
                v175 = v61;
                v56 = v171;
                v51 = v160;
LABEL_36:
                v52 = v158;
                goto LABEL_40;
              }

              v117 = v170;
              v56 = v171;
              v51 = v160;
              v108 = v166;
              goto LABEL_47;
            }

            if (v65 == 1)
            {
              v157 = 1;
              sub_24B0341D0(v63, v64, 1);
              sub_24B068CE0(v14, type metadata accessor for Friend);
              v60 = v165;
              if (v59 + v57)
              {
                goto LABEL_11;
              }

LABEL_34:
              v51 = v160;
              if (*(v61 + 16))
              {
                v175 = v61;
                v56 = v171;
                goto LABEL_36;
              }

              v117 = v170;
              v56 = v171;
              v108 = v166;
              if (v162)
              {
LABEL_47:
                v142 = type metadata accessor for SessionLocation.Description(0);
                (*(*(v142 - 8) + 56))(v108, 1, 1, v142);
                v143 = type metadata accessor for DirectionsState();
                (*(*(v143 - 8) + 56))(v117, 1, 2, v143);
                v175 = 0;
                goto LABEL_50;
              }

LABEL_49:
              v144 = type metadata accessor for SessionLocation.Description(0);
              v145 = *(*(v144 - 8) + 56);
              v175 = 1;
              v145(v108, 1, 1, v144);
              v146 = type metadata accessor for DirectionsState();
              (*(*(v146 - 8) + 56))(v117, 1, 2, v146);
              goto LABEL_50;
            }

            v70 = v14;
            v71 = v58;
            v72 = v63;
            v73 = v173;
            sub_24B068D40(v70, v173, type metadata accessor for Friend);

            v74 = v68;
            sub_24B066154(v67, v74, v69, v73, v175);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v61 = sub_24B0069AC(0, *(v61 + 16) + 1, 1, v61);
            }

            v76 = *(v61 + 16);
            v75 = *(v61 + 24);
            v77 = v61;
            if (v76 >= v75 >> 1)
            {
              v77 = sub_24B0069AC(v75 > 1, v76 + 1, 1, v61);
            }

            v78 = v72;
            v58 = v71;
            sub_24B0341D0(v78, v67, v68);
            v14 = v168;
            sub_24B068CE0(v168, type metadata accessor for Friend);
            *(v77 + 16) = v76 + 1;
            v61 = v77;
            sub_24B068DA8(v175, v77 + ((*(v174 + 80) + 32) & ~*(v174 + 80)) + *(v174 + 72) * v76, type metadata accessor for Annotation);
            v59 = v167;
          }

          ++v57;
          v62 += v58;
          if (v59 + v57 == 1)
          {
            goto LABEL_34;
          }
        }
      }

      v175 = MEMORY[0x277D84F90];
      v117 = v170;
      v108 = v166;
      if (!*(MEMORY[0x277D84F90] + 16))
      {

        goto LABEL_49;
      }

LABEL_40:
      v118 = &v51[*(v159 + 20)];
      v119 = v118[1];
      if (v119)
      {
        v120 = *v118;

        v121 = v119;
      }

      else
      {
        type metadata accessor for FindMyUICore();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v123 = objc_opt_self();

        v124 = [v123 bundleForClass_];
        v125 = sub_24B2D5374();
        v126 = [v124 localizedStringForKey:v125 value:0 table:0];

        v120 = sub_24B2D5394();
        v121 = v127;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8A78);
      v128 = swift_allocObject();
      *(v128 + 16) = xmmword_24B2DE430;
      v129 = *(v52 + 16);
      v130 = MEMORY[0x277D83C10];
      *(v128 + 56) = MEMORY[0x277D83B88];
      *(v128 + 64) = v130;
      *(v128 + 32) = v129;
      if (qword_27EFC7600 != -1)
      {
        swift_once();
      }

      v131 = sub_24B2D1454();
      v132 = __swift_project_value_buffer(v131, qword_27EFE4478);
      v133 = *(v131 - 8);
      v134 = v164;
      (*(v133 + 16))(v164, v132, v131);
      (*(v133 + 56))(v134, 0, 1, v131);
      v135 = sub_24B2D52D4();
      v137 = v136;

      sub_24AFF8258(v134, &qword_27EFC8A68);
      v176[0] = v135;
      v176[1] = v137;
      v138 = type metadata accessor for SessionLocation.Description(0);
      sub_24B2D13C4();
      v139 = v163;
      sub_24B2D1AA4();
      *v139 = v120;
      v139[1] = v121;
      v140 = (v139 + *(v138 + 24));
      *v140 = 0;
      v140[1] = 0;
      (*(*(v138 - 8) + 56))(v139, 0, 1, v138);
      v108 = v166;
      sub_24B0391CC(v139, v166, &qword_27EFC8A70);
      v141 = type metadata accessor for DirectionsState();
      (*(*(v141 - 8) + 56))(v170, 2, 2, v141);
LABEL_50:
      v147 = type metadata accessor for DetailsAppView.State(0);
      sub_24B008890(v108, v56 + v147[5], &qword_27EFC8A70);
      v148 = v169;
      sub_24B008890(v169, v56 + v147[6], &qword_27EFC8450);
      v149 = &v51[*(v159 + 20)];
      v150 = *v149;
      v151 = *(v149 + 1);

      v152 = v158;

      v153 = sub_24B066AB0();
      v154 = sub_24B06765C();

      sub_24AFF8258(v148, &qword_27EFC8450);
      sub_24AFF8258(v108, &qword_27EFC8A70);
      *v56 = v175;
      *(v56 + v147[7]) = v152;
      v155 = (v56 + v147[8]);
      *v155 = v150;
      v155[1] = v151;
      *(v56 + v147[9]) = v153;
      *(v56 + v147[10]) = v154;
      sub_24B068DA8(v170, v56 + v147[11], type metadata accessor for LocateAction);
      v98 = v160;
    }

    else
    {
      if (qword_27EFC75E8 != -1)
      {
        swift_once();
      }

      v79 = sub_24B2D3184();
      __swift_project_value_buffer(v79, qword_27EFE4418);
      v80 = sub_24B2D3164();
      v81 = sub_24B2D5934();
      v82 = os_log_type_enabled(v80, v81);
      v83 = v171;
      if (v82)
      {
        v84 = swift_slowAlloc();
        v85 = swift_slowAlloc();
        v176[0] = v85;
        *v84 = 136315138;
        *(v84 + 4) = sub_24AFF321C(0xD000000000000012, 0x800000024B2D9350, v176);
        _os_log_impl(&dword_24AFD2000, v80, v81, "CompositeAppViewModel: %s - No Repository", v84, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v85);
        MEMORY[0x24C23D530](v85, -1, -1);
        MEMORY[0x24C23D530](v84, -1, -1);
      }

      v86 = type metadata accessor for DetailsAppView.State(0);
      v87 = v86[5];
      v88 = type metadata accessor for SessionLocation.Description(0);
      (*(*(v88 - 8) + 56))(&v83[v87], 1, 1, v88);
      v89 = v86[6];
      v90 = sub_24B2D24A4();
      (*(*(v90 - 8) + 56))(&v83[v89], 1, 1, v90);
      v91 = *(v29 + 20);
      v92 = *&v32[*(v29 + 24)];
      v94 = *&v32[v91];
      v93 = *&v32[v91 + 8];
      v95 = v86[11];
      v96 = type metadata accessor for DirectionsState();
      (*(*(v96 - 8) + 56))(&v83[v95], 1, 2, v96);
      *v83 = 0;
      *&v83[v86[7]] = v92;
      v97 = &v83[v86[8]];
      *v97 = v94;
      *(v97 + 1) = v93;
      v83[v86[9]] = 0;
      v83[v86[10]] = 0;

      v98 = v32;
    }

    return sub_24B068CE0(v98, type metadata accessor for CompositeAppViewInitialInfo);
  }

  return result;
}

uint64_t sub_24B066154@<X0>(uint64_t a1@<X1>, void *a2@<X2>, int a3@<W3>, uint64_t *a4@<X4>, char *a5@<X8>)
{
  LODWORD(v55) = a3;
  v63 = a2;
  v61 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8A80);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v50 - v8;
  v10 = sub_24B2D24A4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8450);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v62 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v50 - v17;
  v19 = type metadata accessor for Friend();
  v20 = sub_24B2D16F4();
  v59 = v21;
  v60 = v20;
  if (a4[1])
  {
    v22 = *a4;
    v57 = a4[1];
    v58 = v22;
  }

  else
  {
    v23 = sub_24B2D16D4();
    v57 = v24;
    v58 = v23;
  }

  v56 = *(a4 + *(v19 + 28));

  v25 = v63;
  [v63 coordinate];
  v27 = v26;
  v29 = v28;
  v30 = v55;
  v53 = v11;
  v54 = v10;
  v52 = a4;
  if (v55 == 2)
  {
    v31 = [v25 timestamp];
    sub_24B2D2484();

    sub_24B2D18F4();
    sub_24B2D6174();
    sub_24B2D2354();
    (*(v11 + 8))(v13, v10);
    v32 = v25;
    v33 = 1;
    v55 = *(v11 + 56);
    v55(v18, 0, 1, v10);
    [v32 horizontalAccuracy];
    v35 = v34;
  }

  else
  {
    v36 = v25;
    v33 = 1;
    v37 = v10;
    v38 = *(v11 + 56);
    v38(v18, 1, 1, v37);
    [v36 horizontalAccuracy];
    v35 = v39;
    v55 = v38;
    if (v30 == 3)
    {
      sub_24B2D1BA4();
      v33 = 0;
    }

    v32 = v63;
  }

  v40 = sub_24B2D1BB4();
  v51 = *(*(v40 - 8) + 56);
  v51(v9, v33, 1, v40);
  v41 = v62;
  sub_24B008890(v18, v62, &qword_27EFC8450);
  v42 = type metadata accessor for Annotation();
  v63 = v9;
  v43 = v42[9];
  sub_24B2D14A4();

  sub_24B068CE0(v52, type metadata accessor for Friend);
  sub_24AFF8258(v18, &qword_27EFC8450);
  v44 = sub_24B2D1494();
  (*(*(v44 - 8) + 56))(&a5[v43], 0, 1, v44);
  type metadata accessor for PlatterWithIcon.Icon(0);
  swift_storeEnumTagMultiPayload();
  v45 = v42[7];
  v55(&a5[v45], 1, 1, v54);
  v46 = v42[10];
  v51(&a5[v46], 1, 1, v40);
  v47 = v59;
  *a5 = v60;
  *(a5 + 1) = v47;
  v48 = v57;
  *(a5 + 2) = v58;
  *(a5 + 3) = v48;
  *(a5 + 4) = v27;
  *(a5 + 5) = v29;
  sub_24B068E10(v41, &a5[v45], &qword_27EFC8450);
  *&a5[v42[8]] = v35;
  return sub_24B068E10(v63, &a5[v46], &qword_27EFC8A80);
}

uint64_t sub_24B066640@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8488);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v20 - v6;
  v8 = type metadata accessor for DirectionsState();
  v20 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + OBJC_IVAR____TtC12FindMyUICore21CompositeAppViewModel_internalRepository))
  {

    if (sub_24B026274(a1))
    {
      (*(v20 + 56))(a2, 2, 2, v8);
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_24B2D3214();

      sub_24B025BBC(a1, v21, v7);

      v18 = *(v20 + 48);
      if (v18(v7, 1, v8) == 1)
      {
        if (qword_27EFC75F0 != -1)
        {
          swift_once();
        }

        v19 = __swift_project_value_buffer(v8, qword_27EFE4430);
        sub_24B068D40(v19, v10, type metadata accessor for DirectionsState);

        if (v18(v7, 1, v8) != 1)
        {
          sub_24AFF8258(v7, &qword_27EFC8488);
        }
      }

      else
      {

        sub_24B068DA8(v7, v10, type metadata accessor for DirectionsState);
      }

      sub_24B068DA8(v10, a2, type metadata accessor for DirectionsState);
      return (*(v20 + 56))(a2, 0, 2, v8);
    }
  }

  else
  {
    if (qword_27EFC75E8 != -1)
    {
      swift_once();
    }

    v12 = sub_24B2D3184();
    __swift_project_value_buffer(v12, qword_27EFE4418);
    v13 = sub_24B2D3164();
    v14 = sub_24B2D5934();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v21 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_24AFF321C(0xD000000000000012, 0x800000024B2D93B0, &v21);
      _os_log_impl(&dword_24AFD2000, v13, v14, "CompositeAppViewModel: %s - No Repository", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x24C23D530](v16, -1, -1);
      MEMORY[0x24C23D530](v15, -1, -1);
    }

    v17 = *(v20 + 56);

    return v17(a2, 1, 2, v8);
  }
}

uint64_t sub_24B066AB0()
{
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8448);
  v1 = MEMORY[0x28223BE20](v71);
  v3 = &v62 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v1);
  v70 = &v62 - v5;
  v6 = MEMORY[0x28223BE20](v4);
  v75 = &v62 - v7;
  MEMORY[0x28223BE20](v6);
  v72 = &v62 - v8;
  v9 = type metadata accessor for Friend();
  v74 = *(v9 - 8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8A28);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v62 - v13;
  v15 = type metadata accessor for CompositeAppViewInitialInfo();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = OBJC_IVAR____TtC12FindMyUICore21CompositeAppViewModel_initialInfo;
  swift_beginAccess();
  sub_24B008890(v0 + v19, v14, &qword_27EFC8A28);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_24AFF8258(v14, &qword_27EFC8A28);
    if (qword_27EFC75E8 != -1)
    {
LABEL_44:
      swift_once();
    }

    v20 = sub_24B2D3184();
    __swift_project_value_buffer(v20, qword_27EFE4418);
    v21 = sub_24B2D3164();
    v22 = sub_24B2D5914();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v76 = v24;
      *v23 = 136315138;
      *(v23 + 4) = sub_24AFF321C(0xD000000000000010, 0x800000024B2D9310, &v76);
      _os_log_impl(&dword_24AFD2000, v21, v22, "CompositeAppViewModel: %s - MonitorState with no initialInfo", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x24C23D530](v24, -1, -1);
      MEMORY[0x24C23D530](v23, -1, -1);
    }

    return 0;
  }

  sub_24B068DA8(v14, v18, type metadata accessor for CompositeAppViewInitialInfo);
  if (*(v0 + OBJC_IVAR____TtC12FindMyUICore21CompositeAppViewModel_internalRepository))
  {
    v25 = *&v18[*(v15 + 24)];
    v68 = *(v25 + 16);
    if (v68)
    {
      v63 = v18;
      v69 = v25 + ((*(v74 + 80) + 32) & ~*(v74 + 80));
      v66 = "ThisDeviceCurrentLocation()";

      v26 = 0;
      *&v27 = 136315394;
      v64 = v27;
      v28 = v75;
      v29 = v72;
      v65 = v25;
      while (1)
      {
        if (v26 >= *(v25 + 16))
        {
          __break(1u);
          goto LABEL_44;
        }

        sub_24B068D40(v69 + *(v74 + 72) * v26, v11, type metadata accessor for Friend);
        sub_24B022374(v11, v29);
        sub_24B068CE0(v11, type metadata accessor for Friend);
        if (qword_27EFC75E8 != -1)
        {
          swift_once();
        }

        v67 = sub_24B2D3184();
        __swift_project_value_buffer(v67, qword_27EFE4418);
        sub_24B008890(v29, v28, &qword_27EFC8448);
        v30 = sub_24B2D3164();
        v31 = sub_24B2D5934();
        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          v33 = swift_slowAlloc();
          v76 = v33;
          *v32 = v64;
          *(v32 + 4) = sub_24AFF321C(0xD000000000000010, v66 | 0x8000000000000000, &v76);
          *(v32 + 12) = 2080;
          sub_24B008890(v28, v70, &qword_27EFC8448);
          v34 = sub_24B2D53C4();
          v36 = v35;
          sub_24AFF8258(v75, &qword_27EFC8448);
          v37 = sub_24AFF321C(v34, v36, &v76);
          v29 = v72;

          *(v32 + 14) = v37;
          v28 = v75;
          _os_log_impl(&dword_24AFD2000, v30, v31, "CompositeAppViewModel: %s - followerState: %s", v32, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x24C23D530](v33, -1, -1);
          v38 = v32;
          v25 = v65;
          MEMORY[0x24C23D530](v38, -1, -1);
        }

        else
        {

          sub_24AFF8258(v28, &qword_27EFC8448);
        }

        sub_24B0391CC(v29, v3, &qword_27EFC8448);
        v39 = type metadata accessor for SessionFollowerState(0);
        if ((*(*(v39 - 8) + 48))(v3, 1, v39) == 1)
        {

          v53 = v63;
          goto LABEL_30;
        }

        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload)
        {
          break;
        }

        ++v26;
        v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8458);
        sub_24AFF8258(&v3[*(v41 + 48)], &qword_27EFC8450);
        sub_24AFF8258(v3, &qword_27EFC8450);
        if (v68 == v26)
        {
          if (qword_27EFC75E8 != -1)
          {
            swift_once();
          }

          __swift_project_value_buffer(v67, qword_27EFE4418);
          v56 = sub_24B2D3164();
          v57 = sub_24B2D5934();
          v58 = os_log_type_enabled(v56, v57);
          v59 = v63;
          if (v58)
          {
            v60 = swift_slowAlloc();
            v61 = swift_slowAlloc();
            v76 = v61;
            *v60 = 136315138;
            *(v60 + 4) = sub_24AFF321C(0xD000000000000010, v66 | 0x8000000000000000, &v76);
            _os_log_impl(&dword_24AFD2000, v56, v57, "CompositeAppViewModel: %s - Action: .canStopSharingLocation", v60, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v61);
            MEMORY[0x24C23D530](v61, -1, -1);
            MEMORY[0x24C23D530](v60, -1, -1);
          }

          sub_24B068CE0(v59, type metadata accessor for CompositeAppViewInitialInfo);
          return 2;
        }
      }

      if (EnumCaseMultiPayload == 1)
      {

        sub_24B068CE0(v63, type metadata accessor for CompositeAppViewInitialInfo);
        sub_24AFF8258(v3, &qword_27EFC8450);
        return 1;
      }

      v55 = v63;
      if (EnumCaseMultiPayload == 2)
      {

        sub_24B068CE0(v55, type metadata accessor for CompositeAppViewInitialInfo);
        return 1;
      }

      v53 = v55;
      goto LABEL_30;
    }

    v47 = qword_27EFC75E8;

    if (v47 != -1)
    {
      swift_once();
    }

    v48 = sub_24B2D3184();
    __swift_project_value_buffer(v48, qword_27EFE4418);
    v49 = sub_24B2D3164();
    v50 = sub_24B2D5934();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v76 = v52;
      *v51 = 136315138;
      *(v51 + 4) = sub_24AFF321C(0xD000000000000010, 0x800000024B2D9310, &v76);
      _os_log_impl(&dword_24AFD2000, v49, v50, "CompositeAppViewModel: %s - Action: .none - No friends", v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v52);
      MEMORY[0x24C23D530](v52, -1, -1);
      MEMORY[0x24C23D530](v51, -1, -1);
    }
  }

  else
  {
    if (qword_27EFC75E8 != -1)
    {
      swift_once();
    }

    v42 = sub_24B2D3184();
    __swift_project_value_buffer(v42, qword_27EFE4418);
    v43 = sub_24B2D3164();
    v44 = sub_24B2D5934();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v76 = v46;
      *v45 = 136315138;
      *(v45 + 4) = sub_24AFF321C(0xD000000000000010, 0x800000024B2D9310, &v76);
      _os_log_impl(&dword_24AFD2000, v43, v44, "CompositeAppViewModel: %s - No Repository", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v46);
      MEMORY[0x24C23D530](v46, -1, -1);
      MEMORY[0x24C23D530](v45, -1, -1);
    }
  }

  v53 = v18;
LABEL_30:
  sub_24B068CE0(v53, type metadata accessor for CompositeAppViewInitialInfo);
  return 0;
}

uint64_t sub_24B06765C()
{
  v1 = v0;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8480);
  v2 = MEMORY[0x28223BE20](v79);
  v81 = &v78 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v78 = &v78 - v5;
  v6 = MEMORY[0x28223BE20](v4);
  v80 = &v78 - v7;
  MEMORY[0x28223BE20](v6);
  v82 = &v78 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8A48);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v78 - v10;
  v12 = type metadata accessor for Friend();
  v85 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v84 = &v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8A28);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v78 - v15;
  v17 = type metadata accessor for CompositeAppViewInitialInfo();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v78 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = OBJC_IVAR____TtC12FindMyUICore21CompositeAppViewModel_initialInfo;
  swift_beginAccess();
  v83 = v1;
  sub_24B008890(v1 + v21, v16, &qword_27EFC8A28);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_24AFF8258(v16, &qword_27EFC8A28);
    if (qword_27EFC75E8 != -1)
    {
      swift_once();
    }

    v22 = sub_24B2D3184();
    __swift_project_value_buffer(v22, qword_27EFE4418);
    v23 = sub_24B2D3164();
    v24 = sub_24B2D5914();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v87 = v26;
      *v25 = 136315138;
      *(v25 + 4) = sub_24AFF321C(0xD000000000000011, 0x800000024B2D9330, &v87);
      _os_log_impl(&dword_24AFD2000, v23, v24, "CompositeAppViewModel: %s - MonitorState with no initialInfo", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x24C23D530](v26, -1, -1);
      MEMORY[0x24C23D530](v25, -1, -1);
    }

    return 0;
  }

  sub_24B068DA8(v16, v20, type metadata accessor for CompositeAppViewInitialInfo);
  sub_24AFF02DC(v11);
  v27 = v20;
  if ((*(v85 + 48))(v11, 1, v12) == 1)
  {
    sub_24AFF8258(v11, &qword_27EFC8A48);
    if (qword_27EFC75E8 != -1)
    {
      swift_once();
    }

    v28 = sub_24B2D3184();
    __swift_project_value_buffer(v28, qword_27EFE4418);
    v29 = sub_24B2D3164();
    v30 = sub_24B2D5914();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v87 = v32;
      *v31 = 136315138;
      *(v31 + 4) = sub_24AFF321C(0xD000000000000011, 0x800000024B2D9330, &v87);
      _os_log_impl(&dword_24AFD2000, v29, v30, "CompositeAppViewModel: %s - No friendForNonGroupChat", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x24C23D530](v32, -1, -1);
      MEMORY[0x24C23D530](v31, -1, -1);
    }

    v33 = type metadata accessor for CompositeAppViewInitialInfo;
    v34 = v20;
LABEL_23:
    sub_24B068CE0(v34, v33);
    return 0;
  }

  v35 = v12;
  v36 = v84;
  sub_24B068DA8(v11, v84, type metadata accessor for Friend);
  v37 = *(v83 + OBJC_IVAR____TtC12FindMyUICore21CompositeAppViewModel_internalRepository);
  if (!v37)
  {
    if (qword_27EFC75E8 != -1)
    {
      swift_once();
    }

    v60 = sub_24B2D3184();
    __swift_project_value_buffer(v60, qword_27EFE4418);
    v61 = sub_24B2D3164();
    v62 = sub_24B2D5934();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v87 = v64;
      *v63 = 136315138;
      *(v63 + 4) = sub_24AFF321C(0xD000000000000011, 0x800000024B2D9330, &v87);
      _os_log_impl(&dword_24AFD2000, v61, v62, "CompositeAppViewModel: %s - No Repository", v63, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v64);
      MEMORY[0x24C23D530](v64, -1, -1);
      MEMORY[0x24C23D530](v63, -1, -1);
    }

    sub_24B068CE0(v27, type metadata accessor for CompositeAppViewInitialInfo);
    v33 = type metadata accessor for Friend;
    v34 = v36;
    goto LABEL_23;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC7980);
  v38 = sub_24B2D1704();
  v39 = *(v38 - 8);
  v40 = (*(v39 + 80) + 32) & ~*(v39 + 80);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_24B2DE430;
  v42 = (*(v39 + 16))(v41 + v40, v36 + *(v35 + 20), v38);
  v43 = *(v36 + *(v35 + 24));
  MEMORY[0x28223BE20](v42);
  *(&v78 - 2) = v36;

  v44 = sub_24B00DCB0(sub_24AFF2118, (&v78 - 4), v43);
  v87 = v41;
  sub_24B0300DC(v44);
  v45 = v82;
  sub_24B02466C(v87, v82);

  if (qword_27EFC75E8 != -1)
  {
    swift_once();
  }

  v46 = sub_24B2D3184();
  __swift_project_value_buffer(v46, qword_27EFE4418);
  v47 = v80;
  sub_24B008890(v45, v80, &qword_27EFC8480);
  v48 = sub_24B2D3164();
  v49 = sub_24B2D5934();
  v50 = os_log_type_enabled(v48, v49);
  v85 = v37;
  if (v50)
  {
    v51 = swift_slowAlloc();
    v83 = v27;
    v52 = v51;
    v53 = swift_slowAlloc();
    v87 = v53;
    *v52 = 136315394;
    *(v52 + 4) = sub_24AFF321C(0xD000000000000011, 0x800000024B2D9330, &v87);
    *(v52 + 12) = 2080;
    sub_24B008890(v47, v78, &qword_27EFC8480);
    v54 = sub_24B2D53C4();
    v55 = v47;
    v56 = v54;
    v58 = v57;
    sub_24AFF8258(v55, &qword_27EFC8480);
    v59 = sub_24AFF321C(v56, v58, &v87);
    v45 = v82;

    *(v52 + 14) = v59;
    _os_log_impl(&dword_24AFD2000, v48, v49, "CompositeAppViewModel: %s - followingState: %s", v52, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C23D530](v53, -1, -1);
    v27 = v83;
    MEMORY[0x24C23D530](v52, -1, -1);
  }

  else
  {

    sub_24AFF8258(v47, &qword_27EFC8480);
  }

  v66 = v81;
  sub_24B008890(v45, v81, &qword_27EFC8480);
  v67 = type metadata accessor for SessionFollowingState(0);
  if ((*(*(v67 - 8) + 48))(v66, 1, v67) != 1)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v68 = 1;
        goto LABEL_28;
      }
    }

    else
    {
      if (EnumCaseMultiPayload)
      {
        sub_24AFF8258(v66, &qword_27EFC8450);
        v68 = 2;
        goto LABEL_28;
      }

      v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8458);
      sub_24AFF8258(v66 + *(v77 + 48), &qword_27EFC8450);
      sub_24AFF8258(v66, &qword_27EFC8450);
    }
  }

  v68 = 0;
LABEL_28:
  v69 = sub_24B2D3164();
  v70 = sub_24B2D5934();
  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v87 = v72;
    *v71 = 136315394;
    *(v71 + 4) = sub_24AFF321C(0xD000000000000011, 0x800000024B2D9330, &v87);
    *(v71 + 12) = 2080;
    v86 = v68;
    v73 = sub_24B2D53C4();
    v75 = sub_24AFF321C(v73, v74, &v87);

    *(v71 + 14) = v75;
    _os_log_impl(&dword_24AFD2000, v69, v70, "CompositeAppViewModel: %s - Action: %s", v71, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C23D530](v72, -1, -1);
    MEMORY[0x24C23D530](v71, -1, -1);
  }

  sub_24AFF8258(v45, &qword_27EFC8480);
  sub_24B068CE0(v27, type metadata accessor for CompositeAppViewInitialInfo);
  sub_24B068CE0(v84, type metadata accessor for Friend);
  return v68;
}

uint64_t sub_24B0683AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v59 = a3;
  v60 = a4;
  v63 = a1;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8448);
  v6 = MEMORY[0x28223BE20](v62);
  v8 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v61 = &v57 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v57 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v57 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8450);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v57 - v17;
  v19 = sub_24B2D24A4();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v19);
  MEMORY[0x28223BE20](v21);
  v24 = &v57 - v23;
  if (!*(v4 + OBJC_IVAR____TtC12FindMyUICore21CompositeAppViewModel_internalRepository))
  {
    if (qword_27EFC75E8 != -1)
    {
      swift_once();
    }

    v27 = sub_24B2D3184();
    __swift_project_value_buffer(v27, qword_27EFE4418);
    v28 = sub_24B2D3164();
    v29 = sub_24B2D5934();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v64 = v31;
      *v30 = 136315138;
      *(v30 + 4) = sub_24AFF321C(0xD00000000000003ELL, 0x800000024B2D9490, &v64);
      _os_log_impl(&dword_24AFD2000, v28, v29, "CompositeAppViewModel: %s - No Repository", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v31);
      MEMORY[0x24C23D530](v31, -1, -1);
      MEMORY[0x24C23D530](v30, -1, -1);
    }

    return 0;
  }

  v57 = v22;
  v58 = v8;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_24B2D3214();

  if (v64 != 1)
  {

    return 3;
  }

  sub_24B008890(a2, v18, &qword_27EFC8450);
  v25 = v20;
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_24AFF8258(v18, &qword_27EFC8450);
    v26 = v15;
  }

  else
  {
    (*(v20 + 32))(v24, v18, v19);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_24B2D3214();

    v33 = v64;
    v26 = v15;
    if (*(v64 + 16) && (v34 = sub_24B054238(v59, v60), (v35 & 1) != 0))
    {
      v36 = v57;
      (*(v25 + 16))(v57, *(v33 + 56) + *(v25 + 72) * v34, v19);

      if (sub_24B2D23C4())
      {
        if (qword_27EFC75E8 != -1)
        {
          swift_once();
        }

        v37 = sub_24B2D3184();
        __swift_project_value_buffer(v37, qword_27EFE4418);
        v38 = sub_24B2D3164();
        v39 = sub_24B2D5934();
        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          v41 = swift_slowAlloc();
          v64 = v41;
          *v40 = 136315138;
          *(v40 + 4) = sub_24AFF321C(0xD00000000000003ELL, 0x800000024B2D9490, &v64);
          _os_log_impl(&dword_24AFD2000, v38, v39, "CompositeAppViewModel: %s - not last message", v40, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v41);
          MEMORY[0x24C23D530](v41, -1, -1);
          MEMORY[0x24C23D530](v40, -1, -1);
        }

        v42 = *(v25 + 8);
        v42(v57, v19);
        v42(v24, v19);
        return 2;
      }

      v56 = *(v25 + 8);
      v56(v36, v19);
      v56(v24, v19);
    }

    else
    {

      (*(v25 + 8))(v24, v19);
    }
  }

  sub_24B022374(v63, v26);
  if (qword_27EFC75E8 != -1)
  {
    swift_once();
  }

  v43 = sub_24B2D3184();
  __swift_project_value_buffer(v43, qword_27EFE4418);
  sub_24B008890(v26, v13, &qword_27EFC8448);
  v44 = sub_24B2D3164();
  v45 = sub_24B2D5934();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v64 = v47;
    *v46 = 136315394;
    *(v46 + 4) = sub_24AFF321C(0xD00000000000003ELL, 0x800000024B2D9490, &v64);
    *(v46 + 12) = 2080;
    sub_24B008890(v13, v61, &qword_27EFC8448);
    v48 = sub_24B2D53C4();
    v50 = v49;
    sub_24AFF8258(v13, &qword_27EFC8448);
    v51 = sub_24AFF321C(v48, v50, &v64);

    *(v46 + 14) = v51;
    _os_log_impl(&dword_24AFD2000, v44, v45, "CompositeAppViewModel: %s - followerState: %s", v46, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C23D530](v47, -1, -1);
    MEMORY[0x24C23D530](v46, -1, -1);
  }

  else
  {

    sub_24AFF8258(v13, &qword_27EFC8448);
  }

  v52 = v58;
  sub_24B0391CC(v26, v58, &qword_27EFC8448);
  v53 = type metadata accessor for SessionFollowerState(0);
  if ((*(*(v53 - 8) + 48))(v52, 1, v53) == 1)
  {
    return 0;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      return 0;
    }

    return 2;
  }

  else if (EnumCaseMultiPayload)
  {
    sub_24AFF8258(v52, &qword_27EFC8450);
    return 1;
  }

  else
  {
    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8458);
    sub_24AFF8258(v52 + *(v55 + 48), &qword_27EFC8450);
    sub_24AFF8258(v52, &qword_27EFC8450);
    return 2;
  }
}

uint64_t sub_24B068CE0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24B068D40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B068DA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B068E10(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

void sub_24B068E78(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3 != 2)
  {
    sub_24B034224(a1, a2, a3);
  }
}

uint64_t sub_24B068E88(uint64_t a1)
{
  v1 = a1;
  v21 = MEMORY[0x277D84F90];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_24B2D5B84();
    sub_24B038248(0, &qword_27EFC8AB0);
    sub_24B0751C4();
    result = sub_24B2D5844();
    v1 = v16;
    v3 = v17;
    v4 = v18;
    v5 = v19;
    v6 = v20;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);

    v5 = 0;
  }

  v14 = MEMORY[0x277D84F90];
  while (v1 < 0)
  {
    if (!sub_24B2D5B94() || (sub_24B038248(0, &qword_27EFC8AB0), swift_dynamicCast(), (v12 = v15) == 0))
    {
LABEL_24:
      sub_24B0363BC();
      return v14;
    }

LABEL_17:
    sub_24B2D5694();
    sub_24B2D5684();
    sub_24B2D5604();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {

      MEMORY[0x24C23BCF0](v13);
      if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24B2D5574();
      }

      result = sub_24B2D55B4();
      v14 = v21;
    }

    else
    {
    }
  }

  v10 = v5;
  v11 = v6;
  if (v6)
  {
LABEL_13:
    v6 = (v11 - 1) & v11;
    v12 = *(*(v1 + 48) + ((v5 << 9) | (8 * __clz(__rbit64(v11)))));
    if (!v12)
    {
      goto LABEL_24;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v5 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v5 >= ((v4 + 64) >> 6))
    {
      goto LABEL_24;
    }

    v11 = *(v3 + 8 * v5);
    ++v10;
    if (v11)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24B06915C(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  sub_24B2D5694();
  v3[8] = sub_24B2D5684();
  v5 = sub_24B2D5604();
  v3[9] = v5;
  v3[10] = v4;

  return MEMORY[0x2822009F8](sub_24B0691F8, v5, v4);
}

uint64_t sub_24B0691F8()
{
  v18 = v0;
  v1 = v0[7];
  if (*(v1 + OBJC_IVAR____TtC12FindMyUICore10Repository_isValidatingMessage) == 1)
  {

    if (qword_27EFC75E8 != -1)
    {
      swift_once();
    }

    v2 = sub_24B2D3184();
    __swift_project_value_buffer(v2, qword_27EFE4418);
    v3 = sub_24B2D3164();
    v4 = sub_24B2D5934();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v17[0] = v6;
      *v5 = 136315138;
      *(v5 + 4) = sub_24AFF321C(0xD00000000000002BLL, 0x800000024B2D8630, v17);
      _os_log_impl(&dword_24AFD2000, v3, v4, "Repository: %s - Already validating another message.", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v6);
      MEMORY[0x24C23D530](v6, -1, -1);
      MEMORY[0x24C23D530](v5, -1, -1);
    }

    sub_24B0382A8();
    swift_allocError();
    *v7 = 1;
    swift_willThrow();
    v8 = v0[1];

    return v8(0);
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC12FindMyUICore10Repository_isValidatingMessage) = 1;
    if (qword_27EFC75E8 != -1)
    {
      swift_once();
    }

    v10 = sub_24B2D3184();
    __swift_project_value_buffer(v10, qword_27EFE4418);
    v11 = sub_24B2D3164();
    v12 = sub_24B2D5904();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v17[0] = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_24AFF321C(0xD00000000000002BLL, 0x800000024B2D8630, v17);
      _os_log_impl(&dword_24AFD2000, v11, v12, "Repository: %s - isValidatingMessage: true", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x24C23D530](v14, -1, -1);
      MEMORY[0x24C23D530](v13, -1, -1);
    }

    v16 = (v0[5] + *v0[5]);
    v15 = swift_task_alloc();
    v0[11] = v15;
    *v15 = v0;
    v15[1] = sub_24B0695A8;

    return v16(v0 + 2);
  }
}

uint64_t sub_24B0695A8()
{
  v1 = *v0;

  v2 = *(v1 + 80);
  v3 = *(v1 + 72);

  return MEMORY[0x2822009F8](sub_24B0696C8, v3, v2);
}

uint64_t sub_24B0696C8()
{
  v1 = *(v0 + 56);

  sub_24B011F40(v1);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 8);

  return v5(v2, v3, v4);
}

uint64_t sub_24B06973C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[9] = a2;
  v6[10] = a3;
  v6[8] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8A90);
  v6[13] = swift_task_alloc();
  v7 = sub_24B2D2C54();
  v6[14] = v7;
  v6[15] = *(v7 - 8);
  v6[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8A98);
  v6[17] = swift_task_alloc();
  v6[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8A48);
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFC9330);
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8450);
  v6[24] = swift_task_alloc();
  v6[25] = swift_task_alloc();
  type metadata accessor for MessagePayload(0);
  v6[26] = swift_task_alloc();
  v6[27] = swift_task_alloc();
  v6[28] = swift_task_alloc();
  v8 = sub_24B2D24A4();
  v6[29] = v8;
  v6[30] = *(v8 - 8);
  v6[31] = swift_task_alloc();
  v6[32] = swift_task_alloc();
  v6[33] = swift_task_alloc();
  v6[34] = swift_task_alloc();
  v9 = sub_24B2D2504();
  v6[35] = v9;
  v6[36] = *(v9 - 8);
  v6[37] = swift_task_alloc();
  v10 = sub_24B2D1704();
  v6[38] = v10;
  v6[39] = *(v10 - 8);
  v6[40] = swift_task_alloc();
  v6[41] = swift_task_alloc();
  v6[42] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8448);
  v6[43] = swift_task_alloc();
  v6[44] = swift_task_alloc();
  v6[45] = swift_task_alloc();
  v11 = type metadata accessor for Friend();
  v6[46] = v11;
  v6[47] = *(v11 - 8);
  v6[48] = swift_task_alloc();
  v6[49] = swift_task_alloc();
  v6[50] = swift_task_alloc();
  v6[51] = swift_task_alloc();
  v6[52] = swift_task_alloc();
  v6[53] = sub_24B2D5694();
  v6[54] = sub_24B2D5684();
  v13 = sub_24B2D5604();
  v6[55] = v13;
  v6[56] = v12;

  return MEMORY[0x2822009F8](sub_24B069C00, v13, v12);
}

uint64_t sub_24B069C00()
{
  v56 = v0;
  v1 = *(*(v0 + 72) + 16);
  if ((v1 & 0xFF00) == 0x200)
  {
    v2 = *(v0 + 368);
    v3 = *(v0 + 376);
    v4 = *(v0 + 152);
    sub_24AFF02DC(v4);
    if ((*(v3 + 48))(v4, 1, v2) == 1)
    {
      v5 = *(v0 + 152);

      sub_24AFF8258(v5, &qword_27EFC8A48);
      if (qword_27EFC75E8 != -1)
      {
        swift_once();
      }

      v6 = sub_24B2D3184();
      __swift_project_value_buffer(v6, qword_27EFE4418);
      v7 = sub_24B2D3164();
      v8 = sub_24B2D5914();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        v55 = v10;
        *v9 = 136315138;
        *(v9 + 4) = sub_24AFF321C(0xD00000000000002CLL, 0x800000024B2D94F0, &v55);
        _os_log_impl(&dword_24AFD2000, v7, v8, "CompositeAppViewModel: %s - Can only be requested to 1 friend", v9, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v10);
        MEMORY[0x24C23D530](v10, -1, -1);
        MEMORY[0x24C23D530](v9, -1, -1);
      }

LABEL_21:

      v24 = *(v0 + 64);
      *v24 = 0;
      type metadata accessor for FindMyUICore();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v41 = [objc_opt_self() bundleForClass_];
      v42 = sub_24B2D5374();
      v43 = [v41 localizedStringForKey:v42 value:0 table:0];

      v44 = sub_24B2D5394();
      v31 = v45;

      *(v24 + 8) = v44;
LABEL_22:
      *(v24 + 16) = v31;

      v46 = *(v0 + 8);

      return v46();
    }

    v13 = *(v0 + 368);
    v14 = *(v0 + 112);
    v15 = *(v0 + 120);
    v16 = *(v0 + 104);
    sub_24B074F3C(*(v0 + 152), *(v0 + 384), type metadata accessor for Friend);
    *(v0 + 60) = *(v13 + 20);
    sub_24B2D16F4();
    sub_24B2D2C44();
    if ((*(v15 + 48))(v16, 1, v14) == 1)
    {
      v17 = *(v0 + 104);

      sub_24AFF8258(v17, &qword_27EFC8A90);
      if (qword_27EFC75E8 != -1)
      {
        swift_once();
      }

      v18 = sub_24B2D3184();
      __swift_project_value_buffer(v18, qword_27EFE4418);
      v19 = sub_24B2D3164();
      v20 = sub_24B2D5934();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v55 = v22;
        *v21 = 136315138;
        *(v21 + 4) = sub_24AFF321C(0xD00000000000002CLL, 0x800000024B2D94F0, &v55);
        _os_log_impl(&dword_24AFD2000, v19, v20, "CompositeAppViewModel: %s - Cannot create queryDestination", v21, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v22);
        MEMORY[0x24C23D530](v22, -1, -1);
        MEMORY[0x24C23D530](v21, -1, -1);
      }

      v23 = *(v0 + 384);
      v24 = *(v0 + 64);
      *v24 = 0;
      type metadata accessor for FindMyUICore();
      v25 = swift_getObjCClassFromMetadata();
      v26 = [objc_opt_self() bundleForClass_];
      v27 = sub_24B2D5374();
      v28 = [v26 localizedStringForKey:v27 value:0 table:0];

      v29 = sub_24B2D5394();
      v31 = v30;

      sub_24B075294(v23, type metadata accessor for Friend);
      *(v24 + 8) = v29;
      goto LABEL_22;
    }

    (*(*(v0 + 120) + 32))(*(v0 + 128), *(v0 + 104), *(v0 + 112));
    sub_24B2D2C74();
    *(v0 + 864) = sub_24B2D2C64();
    if (qword_27EFC75E0 != -1)
    {
      swift_once();
    }

    v48 = qword_27EFE4408;
    v49 = unk_27EFE4410;
    v54 = (*MEMORY[0x277D094D0] + MEMORY[0x277D094D0]);
    v50 = swift_task_alloc();
    *(v0 + 872) = v50;
    *v50 = v0;
    v50[1] = sub_24B070344;
    v51 = *(v0 + 128);

    return v54(v51, v48, v49);
  }

  else
  {
    *(v0 + 456) = *(*(v0 + 72) + 16);
    if ((v1 & 0x100) != 0)
    {
      v32 = *(v0 + 368);
      v33 = *(v0 + 376);
      v34 = *(v0 + 160);
      sub_24AFF02DC(v34);
      if ((*(v33 + 48))(v34, 1, v32) == 1)
      {
        v35 = *(v0 + 160);

        sub_24AFF8258(v35, &qword_27EFC8A48);
        if (qword_27EFC75E8 != -1)
        {
          swift_once();
        }

        v36 = sub_24B2D3184();
        __swift_project_value_buffer(v36, qword_27EFE4418);
        v7 = sub_24B2D3164();
        v37 = sub_24B2D5914();
        if (os_log_type_enabled(v7, v37))
        {
          v38 = swift_slowAlloc();
          v39 = swift_slowAlloc();
          v55 = v39;
          *v38 = 136315138;
          *(v38 + 4) = sub_24AFF321C(0xD00000000000002CLL, 0x800000024B2D94F0, &v55);
          _os_log_impl(&dword_24AFD2000, v7, v37, "CompositeAppViewModel: %s - Can only be requested to 1 friend", v38, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v39);
          MEMORY[0x24C23D530](v39, -1, -1);
          MEMORY[0x24C23D530](v38, -1, -1);
        }

        goto LABEL_21;
      }

      v52 = *(v0 + 80);
      sub_24B074F3C(*(v0 + 160), *(v0 + 392), type metadata accessor for Friend);
      *(v0 + 664) = *(v52 + OBJC_IVAR____TtC12FindMyUICore10Repository_session);
      v53 = swift_task_alloc();
      *(v0 + 672) = v53;
      *v53 = v0;
      v53[1] = sub_24B06D7BC;
      v12 = v0 + 40;
    }

    else
    {
      *(v0 + 464) = *(*(v0 + 80) + OBJC_IVAR____TtC12FindMyUICore10Repository_session);
      v11 = swift_task_alloc();
      *(v0 + 472) = v11;
      *v11 = v0;
      v11[1] = sub_24B06A68C;
      v12 = v0 + 16;
    }

    return sub_24B043620(v12);
  }
}

uint64_t sub_24B06A68C()
{
  v2 = *v1;
  *(*v1 + 480) = v0;

  v3 = *(v2 + 448);
  v4 = *(v2 + 440);
  if (v0)
  {
    v5 = sub_24B06AD20;
  }

  else
  {
    v5 = sub_24B06A7C8;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24B06A7C8()
{
  v1 = *(v0 + 24);
  *(v0 + 488) = *(v0 + 16);
  *(v0 + 496) = v1;
  if (v1)
  {
    v2 = *(v0 + 32);
    *(v0 + 34) = v2;
    if (v2 & 0x100) != 0 || (v2)
    {

      v14 = *(v0 + 88);
      v15 = *(v14 + *(type metadata accessor for CompositeAppViewInitialInfo() + 24));
      *(v0 + 552) = v15;
      v16 = MEMORY[0x277D84F90];
      v37 = MEMORY[0x277D84F90];
      v17 = *(v15 + 16);
      if (v17)
      {
        v36 = *(v0 + 416);
        v19 = *(v0 + 368);
        v18 = *(v0 + 376);
        v20 = *(v0 + 312);
        v32 = v15;
        v21 = v15 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
        v34 = *(v19 + 24);
        v35 = *(v19 + 20);
        v33 = *(v18 + 72);
        do
        {
          v22 = *(v0 + 416);
          v23 = *(v0 + 304);
          sub_24B07522C(v21, v22, type metadata accessor for Friend);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC7980);
          v24 = (*(v20 + 80) + 32) & ~*(v20 + 80);
          v25 = swift_allocObject();
          *(v25 + 16) = xmmword_24B2DE430;
          (*(v20 + 16))(v25 + v24, v36 + v35, v23);
          v26 = *(v36 + v34);
          v27 = swift_task_alloc();
          *(v27 + 16) = v22;

          v28 = sub_24B00DCB0(sub_24AFF2118, v27, v26);

          sub_24B0300DC(v28);
          sub_24B075294(v22, type metadata accessor for Friend);
          sub_24B0300DC(v25);
          v21 += v33;
          --v17;
        }

        while (v17);
        v16 = v37;
        v29 = *(v32 + 16) > 1uLL;
      }

      else
      {
        v29 = 0;
      }

      *(v0 + 560) = v16;
      v30 = swift_task_alloc();
      *(v0 + 568) = v30;
      *v30 = v0;
      v30[1] = sub_24B06B850;

      return sub_24B04F64C(v16, v29);
    }

    else
    {
      *(v0 + 504) = sub_24B2D5684();
      v4 = sub_24B2D5604();
      *(v0 + 512) = v4;
      *(v0 + 520) = v3;

      return MEMORY[0x2822009F8](sub_24B06B124, v4, v3);
    }
  }

  else
  {
    v5 = *(v0 + 64);

    *v5 = 0;
    type metadata accessor for FindMyUICore();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v7 = [objc_opt_self() bundleForClass_];
    v8 = sub_24B2D5374();
    v9 = [v7 localizedStringForKey:v8 value:0 table:0];

    v10 = sub_24B2D5394();
    v12 = v11;

    *(v5 + 8) = v10;
    *(v5 + 16) = v12;

    v13 = *(v0 + 8);

    return v13();
  }
}

uint64_t sub_24B06AD20()
{
  v22 = v0;

  v1 = v0[60];
  if (qword_27EFC75E8 != -1)
  {
    swift_once();
  }

  v2 = sub_24B2D3184();
  __swift_project_value_buffer(v2, qword_27EFE4418);
  v3 = v1;
  v4 = sub_24B2D3164();
  v5 = sub_24B2D5914();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v21 = v8;
    *v6 = 136315394;
    *(v6 + 4) = sub_24AFF321C(0xD00000000000002CLL, 0x800000024B2D94F0, &v21);
    *(v6 + 12) = 2112;
    v9 = v1;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v10;
    *v7 = v10;
    _os_log_impl(&dword_24AFD2000, v4, v5, "CompositeAppViewModel: %s - Couldn't start location sharing with error: %@", v6, 0x16u);
    sub_24AFF8258(v7, &qword_27EFC7BB8);
    MEMORY[0x24C23D530](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x24C23D530](v8, -1, -1);
    MEMORY[0x24C23D530](v6, -1, -1);
  }

  v11 = v0[8];
  *v11 = 0;
  type metadata accessor for FindMyUICore();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13 = [objc_opt_self() bundleForClass_];
  v14 = sub_24B2D5374();
  v15 = [v13 localizedStringForKey:v14 value:0 table:0];

  v16 = sub_24B2D5394();
  v18 = v17;

  *(v11 + 8) = v16;
  *(v11 + 16) = v18;

  v19 = v0[1];

  return v19();
}

uint64_t sub_24B06B124()
{
  v2 = v0[61];
  v1 = v0[62];
  v3 = sub_24B2D5684();
  v0[66] = v3;
  v4 = swift_task_alloc();
  v0[67] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v5 = swift_task_alloc();
  v0[68] = v5;
  *v5 = v0;
  v5[1] = sub_24B06B238;
  v6 = MEMORY[0x277D85700];
  v7 = MEMORY[0x277D839B0];

  return MEMORY[0x2822007B8](v0 + 921, v3, v6, 0xD000000000000045, 0x800000024B2D96D0, sub_24B074FA4, v4, v7);
}

uint64_t sub_24B06B238()
{
  v1 = *v0;

  v2 = *(v1 + 520);
  v3 = *(v1 + 512);

  return MEMORY[0x2822009F8](sub_24B06B3BC, v3, v2);
}

uint64_t sub_24B06B3BC()
{

  *(v0 + 923) = *(v0 + 921);
  v1 = *(v0 + 440);
  v2 = *(v0 + 448);

  return MEMORY[0x2822009F8](sub_24B06B428, v1, v2);
}

uint64_t sub_24B06B428()
{
  if (*(v0 + 923))
  {
    v1 = *(v0 + 88);
    v2 = *(v1 + *(type metadata accessor for CompositeAppViewInitialInfo() + 24));
    *(v0 + 552) = v2;
    v3 = MEMORY[0x277D84F90];
    v26 = MEMORY[0x277D84F90];
    v4 = *(v2 + 16);
    if (v4)
    {
      v25 = *(v0 + 416);
      v6 = *(v0 + 368);
      v5 = *(v0 + 376);
      v7 = *(v0 + 312);
      v21 = v2;
      v8 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
      v23 = *(v6 + 24);
      v24 = *(v6 + 20);
      v22 = *(v5 + 72);
      do
      {
        v9 = *(v0 + 416);
        v10 = *(v0 + 304);
        sub_24B07522C(v8, v9, type metadata accessor for Friend);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC7980);
        v11 = (*(v7 + 80) + 32) & ~*(v7 + 80);
        v12 = swift_allocObject();
        *(v12 + 16) = xmmword_24B2DE430;
        (*(v7 + 16))(v12 + v11, v25 + v24, v10);
        v13 = *(v25 + v23);
        v14 = swift_task_alloc();
        *(v14 + 16) = v9;

        v15 = sub_24B00DCB0(sub_24AFF2118, v14, v13);

        sub_24B0300DC(v15);
        sub_24B075294(v9, type metadata accessor for Friend);
        sub_24B0300DC(v12);
        v8 += v22;
        --v4;
      }

      while (v4);
      v3 = v26;
      v16 = *(v21 + 16) > 1uLL;
    }

    else
    {
      v16 = 0;
    }

    *(v0 + 560) = v3;
    v20 = swift_task_alloc();
    *(v0 + 568) = v20;
    *v20 = v0;
    v20[1] = sub_24B06B850;

    return sub_24B04F64C(v3, v16);
  }

  else
  {
    v17 = *(v0 + 64);

    *v17 = 0;
    *(v17 + 8) = 0;
    *(v17 + 16) = 0;

    v18 = *(v0 + 8);

    return v18();
  }
}

uint64_t sub_24B06B850(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 576) = a1;
  *(v4 + 584) = v1;

  v5 = *(v3 + 448);
  v6 = *(v3 + 440);
  if (v1)
  {
    v7 = sub_24B06C3F0;
  }

  else
  {
    v7 = sub_24B06B9B0;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_24B06B9B0()
{
  v82 = v0;
  v1 = v0;
  v71 = *(v0[69] + 16);
  if (v71)
  {
    v2 = 0;
    v3 = v0[46];
    v72 = v0[39];
    v73 = v0[47];
    while (1)
    {
      v4 = v1[69];
      if (v2 >= *(v4 + 16))
      {
        __break(1u);
        goto LABEL_32;
      }

      v5 = v1[51];
      v74 = v1[45];
      v75 = v1[72];
      v76 = v1[44];
      v6 = v1[38];
      v69 = (*(v73 + 80) + 32) & ~*(v73 + 80);
      v70 = v1[69];
      v80 = *(v73 + 72);
      sub_24B07522C(v4 + v69 + v80 * v2, v5, type metadata accessor for Friend);
      type metadata accessor for Repository();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC7980);
      v7 = (*(v72 + 80) + 32) & ~*(v72 + 80);
      v79 = *(v72 + 72);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_24B2DE430;
      v78 = v7;
      v77 = *(v72 + 16);
      v77(v8 + v7, v5 + *(v3 + 20), v6);
      v9 = v3;
      v10 = *(v5 + *(v3 + 24));
      v11 = swift_task_alloc();
      *(v11 + 16) = v5;

      v12 = sub_24B00DCB0(sub_24AFF2290, v11, v10);

      v81[0] = v8;
      sub_24B0300DC(v12);
      sub_24B0231F4(v8, v75, v74);

      sub_24B075294(v5, type metadata accessor for Friend);
      sub_24B0391CC(v74, v76, &qword_27EFC8448);
      v13 = type metadata accessor for SessionFollowerState(0);
      if ((*(*(v13 - 8) + 48))(v76, 1, v13) == 1)
      {

        goto LABEL_22;
      }

      sub_24B008890(v1[44], v1[43], &qword_27EFC8448);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v15 = v1[43];
      if (EnumCaseMultiPayload)
      {
        break;
      }

      ++v2;
      v16 = v1[44];
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8458);
      sub_24AFF8258(v15 + *(v17 + 48), &qword_27EFC8450);
      sub_24AFF8258(v15, &qword_27EFC8450);
      sub_24AFF8258(v16, &qword_27EFC8448);
      v3 = v9;
      if (v71 == v2)
      {
        goto LABEL_7;
      }
    }

    sub_24B075294(v15, type metadata accessor for SessionFollowerState);
LABEL_22:
    v53 = v1[69];
    sub_24AFF8258(v1[44], &qword_27EFC8448);
    v54 = *(v53 + 16);
    v55 = MEMORY[0x277D84F90];
    if (v54)
    {
      v56 = v1[39];
      v81[0] = MEMORY[0x277D84F90];
      sub_24B0076F4(0, v54, 0);
      v55 = v81[0];
      v57 = (v56 + 32);
      v58 = v70 + v69;
      do
      {
        v59 = v1[50];
        v60 = v1[42];
        v61 = v1[38];
        sub_24B07522C(v58, v59, type metadata accessor for Friend);
        v77(v60, v59 + *(v9 + 20), v61);
        sub_24B075294(v59, type metadata accessor for Friend);
        v81[0] = v55;
        v63 = *(v55 + 16);
        v62 = *(v55 + 24);
        if (v63 >= v62 >> 1)
        {
          sub_24B0076F4(v62 > 1, v63 + 1, 1);
          v55 = v81[0];
        }

        v64 = v1[42];
        v65 = v1[38];
        *(v55 + 16) = v63 + 1;
        (*v57)(v55 + v78 + v63 * v79, v64, v65);
        v58 += v80;
        --v54;
      }

      while (v54);
      LOBYTE(v54) = *(v1[69] + 16) > 1uLL;
    }

    v1[74] = v55;
    v66 = swift_task_alloc();
    v1[75] = v66;
    *v66 = v1;
    v66[1] = sub_24B06C7F4;
    v67 = v1[57];
    v68 = v1[11];

    return sub_24B04CE70(v55, v68, v67, v54);
  }

  else
  {
LABEL_7:

    if (qword_27EFC75E8 != -1)
    {
LABEL_32:
      swift_once();
    }

    v18 = sub_24B2D3184();
    __swift_project_value_buffer(v18, qword_27EFE4418);
    v19 = sub_24B2D3164();
    v20 = sub_24B2D5934();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v81[0] = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_24AFF321C(0xD00000000000002CLL, 0x800000024B2D94F0, v81);
      _os_log_impl(&dword_24AFD2000, v19, v20, "CompositeAppViewModel: %s - Skipped server request due to already sharing", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x24C23D530](v22, -1, -1);
      MEMORY[0x24C23D530](v21, -1, -1);
    }

    v24 = v1[36];
    v23 = v1[37];
    v25 = v1[35];
    sub_24B2D24F4();
    v26 = sub_24B2D24B4();
    v28 = v27;
    (*(v24 + 8))(v23, v25);
    v1[80] = v28;
    v1[79] = v26;
    *(v1 + 924) = 1;
    v29 = *(v1 + 17);
    sub_24B2D2494();
    if (v29 & 0x100) != 0 || (v29)
    {
      v52 = swift_task_alloc();
      v1[81] = v52;
      *v52 = v1;
      v52[1] = sub_24B06D170;

      return sub_24B01A744();
    }

    else
    {

      v30 = *(v1 + 456);
      v31 = v1[29];
      v32 = v1[30];
      v33 = v1[25];
      (*(v32 + 16))(v33, v1[34], v31);
      (*(v32 + 56))(v33, 0, 1, v31);
      v34 = v1[80];
      v35 = *(v1 + 924);
      v36 = v1[28];
      v37 = v1[25];
      v38 = v1[23];
      *v36 = v1[79];
      *(v36 + 8) = v34;
      *(v36 + 16) = v30;
      v39 = type metadata accessor for MessagePayload.ContentV0(0);
      sub_24B0391CC(v37, v36 + v39[6], &qword_27EFC8450);
      v40 = v36 + v39[7];
      *(v40 + 48) = 0u;
      *(v40 + 64) = 0u;
      *(v40 + 16) = 0u;
      *(v40 + 32) = 0u;
      *v40 = 0u;
      *(v40 + 80) = 1;
      *(v36 + v39[8]) = v35;
      MessagePayload.url.getter(v38);
      v41 = sub_24B2D22D4();
      v42 = *(v41 - 8);
      v43 = 0;
      if ((*(v42 + 48))(v38, 1, v41) != 1)
      {
        v44 = v1[23];
        v43 = sub_24B2D2294();
        (*(v42 + 8))(v44, v41);
      }

      v45 = v1[34];
      v46 = v1[29];
      v47 = v1[30];
      v48 = v1[28];
      v49 = v1[8];
      [v1[12] setURL_];

      sub_24B075294(v48, type metadata accessor for MessagePayload);
      (*(v47 + 8))(v45, v46);
      *v49 = 1;
      *(v49 + 8) = 0;
      *(v49 + 16) = 0;

      v50 = v1[1];

      return v50();
    }
  }
}

uint64_t sub_24B06C3F0()
{
  v22 = v0;

  v1 = v0[73];
  if (qword_27EFC75E8 != -1)
  {
    swift_once();
  }

  v2 = sub_24B2D3184();
  __swift_project_value_buffer(v2, qword_27EFE4418);
  v3 = v1;
  v4 = sub_24B2D3164();
  v5 = sub_24B2D5914();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v21 = v8;
    *v6 = 136315394;
    *(v6 + 4) = sub_24AFF321C(0xD00000000000002CLL, 0x800000024B2D94F0, &v21);
    *(v6 + 12) = 2112;
    v9 = v1;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v10;
    *v7 = v10;
    _os_log_impl(&dword_24AFD2000, v4, v5, "CompositeAppViewModel: %s - Couldn't start location sharing with error: %@", v6, 0x16u);
    sub_24AFF8258(v7, &qword_27EFC7BB8);
    MEMORY[0x24C23D530](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x24C23D530](v8, -1, -1);
    MEMORY[0x24C23D530](v6, -1, -1);
  }

  v11 = v0[8];
  *v11 = 0;
  type metadata accessor for FindMyUICore();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13 = [objc_opt_self() bundleForClass_];
  v14 = sub_24B2D5374();
  v15 = [v13 localizedStringForKey:v14 value:0 table:0];

  v16 = sub_24B2D5394();
  v18 = v17;

  *(v11 + 8) = v16;
  *(v11 + 16) = v18;

  v19 = v0[1];

  return v19();
}

uint64_t sub_24B06C7F4(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 608) = v2;

  if (v2)
  {
    v7 = v6[55];
    v8 = v6[56];
    v9 = sub_24B06CD6C;
  }

  else
  {
    v6[77] = a2;
    v6[78] = a1;
    v7 = v6[55];
    v8 = v6[56];
    v9 = sub_24B06C940;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_24B06C940()
{
  v1 = *(v0 + 624);
  *(v0 + 640) = *(v0 + 616);
  *(v0 + 632) = v1;
  *(v0 + 924) = 0;
  v2 = *(v0 + 34);
  sub_24B2D2494();
  if (v2 & 0x100) != 0 || (v2)
  {
    v25 = swift_task_alloc();
    *(v0 + 648) = v25;
    *v25 = v0;
    v25[1] = sub_24B06D170;

    return sub_24B01A744();
  }

  else
  {

    v3 = *(v0 + 456);
    v4 = *(v0 + 232);
    v5 = *(v0 + 240);
    v6 = *(v0 + 200);
    (*(v5 + 16))(v6, *(v0 + 272), v4);
    (*(v5 + 56))(v6, 0, 1, v4);
    v7 = *(v0 + 640);
    v8 = *(v0 + 924);
    v9 = *(v0 + 224);
    v10 = *(v0 + 200);
    v11 = *(v0 + 184);
    *v9 = *(v0 + 632);
    *(v9 + 8) = v7;
    *(v9 + 16) = v3;
    v12 = type metadata accessor for MessagePayload.ContentV0(0);
    sub_24B0391CC(v10, v9 + v12[6], &qword_27EFC8450);
    v13 = v9 + v12[7];
    *(v13 + 48) = 0u;
    *(v13 + 64) = 0u;
    *(v13 + 16) = 0u;
    *(v13 + 32) = 0u;
    *v13 = 0u;
    *(v13 + 80) = 1;
    *(v9 + v12[8]) = v8;
    MessagePayload.url.getter(v11);
    v14 = sub_24B2D22D4();
    v15 = *(v14 - 8);
    v16 = 0;
    if ((*(v15 + 48))(v11, 1, v14) != 1)
    {
      v17 = *(v0 + 184);
      v16 = sub_24B2D2294();
      (*(v15 + 8))(v17, v14);
    }

    v18 = *(v0 + 272);
    v19 = *(v0 + 232);
    v20 = *(v0 + 240);
    v21 = *(v0 + 224);
    v22 = *(v0 + 64);
    [*(v0 + 96) setURL_];

    sub_24B075294(v21, type metadata accessor for MessagePayload);
    (*(v20 + 8))(v18, v19);
    *v22 = 1;
    *(v22 + 8) = 0;
    *(v22 + 16) = 0;

    v23 = *(v0 + 8);

    return v23();
  }
}

uint64_t sub_24B06CD6C()
{
  v22 = v0;

  v1 = v0[76];
  if (qword_27EFC75E8 != -1)
  {
    swift_once();
  }

  v2 = sub_24B2D3184();
  __swift_project_value_buffer(v2, qword_27EFE4418);
  v3 = v1;
  v4 = sub_24B2D3164();
  v5 = sub_24B2D5914();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v21 = v8;
    *v6 = 136315394;
    *(v6 + 4) = sub_24AFF321C(0xD00000000000002CLL, 0x800000024B2D94F0, &v21);
    *(v6 + 12) = 2112;
    v9 = v1;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v10;
    *v7 = v10;
    _os_log_impl(&dword_24AFD2000, v4, v5, "CompositeAppViewModel: %s - Couldn't start location sharing with error: %@", v6, 0x16u);
    sub_24AFF8258(v7, &qword_27EFC7BB8);
    MEMORY[0x24C23D530](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x24C23D530](v8, -1, -1);
    MEMORY[0x24C23D530](v6, -1, -1);
  }

  v11 = v0[8];
  *v11 = 0;
  type metadata accessor for FindMyUICore();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13 = [objc_opt_self() bundleForClass_];
  v14 = sub_24B2D5374();
  v15 = [v13 localizedStringForKey:v14 value:0 table:0];

  v16 = sub_24B2D5394();
  v18 = v17;

  *(v11 + 8) = v16;
  *(v11 + 16) = v18;

  v19 = v0[1];

  return v19();
}

uint64_t sub_24B06D170(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = v4[55];
    v6 = v4[56];
    v7 = sub_24B07124C;
  }

  else
  {
    v4[82] = a1;
    v5 = v4[55];
    v6 = v4[56];
    v7 = sub_24B06D29C;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_24B06D29C()
{
  v1 = *(v0 + 656);

  v2 = *(v0 + 232);
  v3 = *(v0 + 240);
  v4 = *(v0 + 200);
  v5 = *(v0 + 456);
  (*(v3 + 16))(v4, *(v0 + 272), v2);
  (*(v3 + 56))(v4, 0, 1, v2);
  if (v1)
  {
    v6 = *(v0 + 264);
    v7 = *(v0 + 232);
    v8 = *(v0 + 240);
    v9 = v1;
    [v9 coordinate];
    v54 = v10;
    [v9 coordinate];
    v47 = v11;
    [v9 altitude];
    v52 = v12;
    [v9 horizontalAccuracy];
    v46 = v13;
    [v9 verticalAccuracy];
    v50 = v14;
    [v9 course];
    v45 = v15;
    [v9 courseAccuracy];
    v48 = v16;
    [v9 speed];
    v44 = v17;
    [v9 speedAccuracy];
    v19 = v18;
    v20 = [v9 timestamp];
    sub_24B2D2484();

    sub_24B2D2404();
    v22 = v21;

    (*(v8 + 8))(v6, v7);
    v23 = 0;
    *&v24 = v54;
    *(&v24 + 1) = v47;
    v55 = v24;
    *&v24 = v52;
    *(&v24 + 1) = v46;
    v53 = v24;
    *&v24 = v50;
    *(&v24 + 1) = v45;
    v51 = v24;
    *&v25 = v48;
    *(&v25 + 1) = v44;
  }

  else
  {
    v23 = 1;
    v25 = 0uLL;
    v53 = 0u;
    v55 = 0u;
    v19 = 0;
    v22 = 0;
    v51 = 0u;
  }

  v49 = v25;
  v26 = *(v0 + 640);
  v27 = *(v0 + 924);
  v28 = *(v0 + 224);
  v29 = *(v0 + 200);
  v30 = *(v0 + 184);
  *v28 = *(v0 + 632);
  *(v28 + 8) = v26;
  *(v28 + 16) = v5;
  v31 = type metadata accessor for MessagePayload.ContentV0(0);
  sub_24B0391CC(v29, v28 + v31[6], &qword_27EFC8450);
  v32 = v28 + v31[7];
  *v32 = v55;
  *(v32 + 16) = v53;
  *(v32 + 32) = v51;
  *(v32 + 48) = v49;
  *(v32 + 64) = v19;
  *(v32 + 72) = v22;
  *(v32 + 80) = v23;
  *(v28 + v31[8]) = v27;
  MessagePayload.url.getter(v30);
  v33 = sub_24B2D22D4();
  v34 = *(v33 - 8);
  v35 = 0;
  if ((*(v34 + 48))(v30, 1, v33) != 1)
  {
    v36 = *(v0 + 184);
    v35 = sub_24B2D2294();
    (*(v34 + 8))(v36, v33);
  }

  v37 = *(v0 + 272);
  v38 = *(v0 + 232);
  v39 = *(v0 + 240);
  v40 = *(v0 + 224);
  v41 = *(v0 + 64);
  [*(v0 + 96) setURL_];

  sub_24B075294(v40, type metadata accessor for MessagePayload);
  (*(v39 + 8))(v37, v38);
  *v41 = 1;
  *(v41 + 8) = 0;
  *(v41 + 16) = 0;

  v42 = *(v0 + 8);

  return v42();
}

uint64_t sub_24B06D7BC()
{
  v2 = *v1;
  *(*v1 + 680) = v0;

  v3 = *(v2 + 448);
  v4 = *(v2 + 440);
  if (v0)
  {
    v5 = sub_24B06DCB8;
  }

  else
  {
    v5 = sub_24B06D8F8;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24B06D8F8()
{
  *(v0 + 688) = *(v0 + 40);
  v1 = *(v0 + 48);
  *(v0 + 696) = v1;
  if (v1)
  {
    v2 = *(v0 + 56);
    *(v0 + 58) = v2;
    if (v2 & 0x100) != 0 || (v2)
    {

      v15 = swift_task_alloc();
      *(v0 + 752) = v15;
      *v15 = v0;
      v15[1] = sub_24B06E66C;

      return sub_24B04C230();
    }

    else
    {
      *(v0 + 704) = sub_24B2D5684();
      v4 = sub_24B2D5604();
      *(v0 + 712) = v4;
      *(v0 + 720) = v3;

      return MEMORY[0x2822009F8](sub_24B06E0DC, v4, v3);
    }
  }

  else
  {
    v5 = *(v0 + 392);
    v6 = *(v0 + 64);

    *v6 = 0;
    type metadata accessor for FindMyUICore();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v8 = [objc_opt_self() bundleForClass_];
    v9 = sub_24B2D5374();
    v10 = [v8 localizedStringForKey:v9 value:0 table:0];

    v11 = sub_24B2D5394();
    v13 = v12;

    *(v6 + 8) = v11;
    *(v6 + 16) = v13;
    sub_24B075294(v5, type metadata accessor for Friend);

    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_24B06DCB8()
{
  v23 = v0;

  v1 = v0[85];
  if (qword_27EFC75E8 != -1)
  {
    swift_once();
  }

  v2 = sub_24B2D3184();
  __swift_project_value_buffer(v2, qword_27EFE4418);
  v3 = v1;
  v4 = sub_24B2D3164();
  v5 = sub_24B2D5914();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v22 = v8;
    *v6 = 136315394;
    *(v6 + 4) = sub_24AFF321C(0xD00000000000002CLL, 0x800000024B2D94F0, &v22);
    *(v6 + 12) = 2112;
    v9 = v1;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v10;
    *v7 = v10;
    _os_log_impl(&dword_24AFD2000, v4, v5, "CompositeAppViewModel: %s - %@", v6, 0x16u);
    sub_24AFF8258(v7, &qword_27EFC7BB8);
    MEMORY[0x24C23D530](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x24C23D530](v8, -1, -1);
    MEMORY[0x24C23D530](v6, -1, -1);
  }

  v11 = v0[49];
  v12 = v0[8];
  *v12 = 0;
  type metadata accessor for FindMyUICore();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v14 = [objc_opt_self() bundleForClass_];
  v15 = sub_24B2D5374();
  v16 = [v14 localizedStringForKey:v15 value:0 table:0];

  v17 = sub_24B2D5394();
  v19 = v18;

  *(v12 + 8) = v17;
  *(v12 + 16) = v19;
  sub_24B075294(v11, type metadata accessor for Friend);

  v20 = v0[1];

  return v20();
}

uint64_t sub_24B06E0DC()
{
  v1 = v0[87];
  v2 = v0[86];
  v3 = sub_24B2D5684();
  v0[91] = v3;
  v4 = swift_task_alloc();
  v0[92] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v5 = swift_task_alloc();
  v0[93] = v5;
  *v5 = v0;
  v5[1] = sub_24B06E1F4;
  v6 = MEMORY[0x277D85700];
  v7 = MEMORY[0x277D839B0];

  return MEMORY[0x2822007B8](v0 + 922, v3, v6, 0xD000000000000045, 0x800000024B2D96D0, sub_24B0752FC, v4, v7);
}

uint64_t sub_24B06E1F4()
{
  v1 = *v0;

  v2 = *(v1 + 720);
  v3 = *(v1 + 712);

  return MEMORY[0x2822009F8](sub_24B06E378, v3, v2);
}

uint64_t sub_24B06E378()
{

  *(v0 + 925) = *(v0 + 922);
  v1 = *(v0 + 440);
  v2 = *(v0 + 448);

  return MEMORY[0x2822009F8](sub_24B06E3E4, v1, v2);
}

uint64_t sub_24B06E3E4()
{
  if (*(v0 + 925))
  {
    v1 = swift_task_alloc();
    *(v0 + 752) = v1;
    *v1 = v0;
    v1[1] = sub_24B06E66C;

    return sub_24B04C230();
  }

  else
  {
    v3 = *(v0 + 392);
    v4 = *(v0 + 64);

    *v4 = 0;
    *(v4 + 8) = 0;
    *(v4 + 16) = 0;
    sub_24B075294(v3, type metadata accessor for Friend);

    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_24B06E66C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 760) = v1;

  if (v1)
  {
    v5 = v4[55];
    v6 = v4[56];
    v7 = sub_24B06EDA0;
  }

  else
  {
    v4[96] = a1;
    v5 = v4[55];
    v6 = v4[56];
    v7 = sub_24B06E794;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_24B06E794()
{
  v39 = v0;
  v1 = *(v0 + 768);
  v2 = *(v0 + 392);
  v4 = *(v0 + 136);
  v3 = *(v0 + 144);
  *(swift_task_alloc() + 16) = v2;
  sub_24B26DE98(sub_24B074FAC, v1, v3);

  sub_24B008890(v3, v4, &qword_27EFC8A98);
  v5 = type metadata accessor for SessionFriend(0);
  if ((*(*(v5 - 8) + 48))(v4, 1, v5) == 1)
  {
    v6 = *(v0 + 136);

    sub_24AFF8258(v6, &qword_27EFC8A98);
    if (qword_27EFC75E8 != -1)
    {
      swift_once();
    }

    v7 = sub_24B2D3184();
    __swift_project_value_buffer(v7, qword_27EFE4418);
    v8 = sub_24B2D3164();
    v9 = sub_24B2D5914();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v38 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_24AFF321C(0xD00000000000002CLL, 0x800000024B2D94F0, &v38);
      _os_log_impl(&dword_24AFD2000, v8, v9, "CompositeAppViewModel: %s - Cannot find friend on friendsRequestedMyLocation", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x24C23D530](v11, -1, -1);
      MEMORY[0x24C23D530](v10, -1, -1);
    }

    v12 = *(v0 + 392);
    v13 = *(v0 + 144);
    v14 = *(v0 + 64);
    *v14 = 0;
    type metadata accessor for FindMyUICore();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v16 = [objc_opt_self() bundleForClass_];
    v17 = sub_24B2D5374();
    v18 = [v16 localizedStringForKey:v17 value:0 table:0];

    v19 = sub_24B2D5394();
    v21 = v20;

    sub_24AFF8258(v13, &qword_27EFC8A98);
    *(v14 + 8) = v19;
    *(v14 + 16) = v21;
    sub_24B075294(v12, type metadata accessor for Friend);

    v22 = *(v0 + 8);

    return v22();
  }

  else
  {
    v24 = *(v0 + 320);
    v25 = *(v0 + 328);
    v26 = *(v0 + 304);
    v27 = *(v0 + 312);
    v28 = *(v0 + 136);
    v29 = *(v0 + 88);
    v30 = *(v27 + 16);
    v30(v24, v28, v26);
    sub_24B075294(v28, type metadata accessor for SessionFriend);
    (*(v27 + 32))(v25, v24, v26);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC7980);
    v31 = *(v27 + 80);
    *(v0 + 36) = v31;
    v32 = (v31 + 32) & ~v31;
    v33 = swift_allocObject();
    *(v0 + 776) = v33;
    *(v33 + 16) = xmmword_24B2DE430;
    v30(v33 + v32, v25, v26);
    v34 = *(*(v29 + *(type metadata accessor for CompositeAppViewInitialInfo() + 24)) + 16) > 1uLL;
    v35 = swift_task_alloc();
    *(v0 + 784) = v35;
    *v35 = v0;
    v35[1] = sub_24B06F1C4;
    v36 = *(v0 + 456);
    v37 = *(v0 + 88);

    return sub_24B04CE70(v33, v37, v36, v34);
  }
}

uint64_t sub_24B06EDA0()
{
  v23 = v0;

  v1 = v0[95];
  if (qword_27EFC75E8 != -1)
  {
    swift_once();
  }

  v2 = sub_24B2D3184();
  __swift_project_value_buffer(v2, qword_27EFE4418);
  v3 = v1;
  v4 = sub_24B2D3164();
  v5 = sub_24B2D5914();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v22 = v8;
    *v6 = 136315394;
    *(v6 + 4) = sub_24AFF321C(0xD00000000000002CLL, 0x800000024B2D94F0, &v22);
    *(v6 + 12) = 2112;
    v9 = v1;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v10;
    *v7 = v10;
    _os_log_impl(&dword_24AFD2000, v4, v5, "CompositeAppViewModel: %s - %@", v6, 0x16u);
    sub_24AFF8258(v7, &qword_27EFC7BB8);
    MEMORY[0x24C23D530](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x24C23D530](v8, -1, -1);
    MEMORY[0x24C23D530](v6, -1, -1);
  }

  v11 = v0[49];
  v12 = v0[8];
  *v12 = 0;
  type metadata accessor for FindMyUICore();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v14 = [objc_opt_self() bundleForClass_];
  v15 = sub_24B2D5374();
  v16 = [v14 localizedStringForKey:v15 value:0 table:0];

  v17 = sub_24B2D5394();
  v19 = v18;

  *(v12 + 8) = v17;
  *(v12 + 16) = v19;
  sub_24B075294(v11, type metadata accessor for Friend);

  v20 = v0[1];

  return v20();
}

uint64_t sub_24B06F1C4(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v5[99] = a1;
  v5[100] = a2;
  v5[101] = v2;

  v6 = v4[97];
  v7 = v4[39];
  v8 = v4[38];
  v9 = (*(v5 + 36) + 32) & ~*(v5 + 36);
  swift_setDeallocating();
  v10 = *(v7 + 8);
  v11 = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  if (v2)
  {
    v5[104] = v10;
    v5[105] = v11;
    v10(v6 + v9, v8);
    swift_deallocClassInstance();
    v12 = v5[55];
    v13 = v5[56];
    v14 = sub_24B06F82C;
  }

  else
  {
    v5[102] = v10;
    v5[103] = v11;
    v10(v6 + v9, v8);
    swift_deallocClassInstance();
    v12 = v5[55];
    v13 = v5[56];
    v14 = sub_24B06F3AC;
  }

  return MEMORY[0x2822009F8](v14, v12, v13);
}

uint64_t sub_24B06F3AC()
{
  v1 = *(v0 + 58);
  sub_24B2D2494();
  if (v1 & 0x100) != 0 || (v1)
  {
    v27 = swift_task_alloc();
    *(v0 + 848) = v27;
    *v27 = v0;
    v27[1] = sub_24B06FC88;

    return sub_24B01A744();
  }

  else
  {

    v2 = *(v0 + 456);
    v3 = *(v0 + 232);
    v4 = *(v0 + 240);
    v5 = *(v0 + 192);
    (*(v4 + 16))(v5, *(v0 + 256), v3);
    (*(v4 + 56))(v5, 0, 1, v3);
    v6 = v2 | 0x100;
    v7 = *(v0 + 800);
    v8 = *(v0 + 216);
    v9 = *(v0 + 192);
    v10 = *(v0 + 176);
    *v8 = *(v0 + 792);
    *(v8 + 8) = v7;
    *(v8 + 16) = v6;
    v11 = type metadata accessor for MessagePayload.ContentV0(0);
    sub_24B0391CC(v9, v8 + v11[6], &qword_27EFC8450);
    v12 = v8 + v11[7];
    *(v12 + 48) = 0u;
    *(v12 + 64) = 0u;
    *(v12 + 16) = 0u;
    *(v12 + 32) = 0u;
    *v12 = 0u;
    *(v12 + 80) = 1;
    *(v8 + v11[8]) = 0;
    MessagePayload.url.getter(v10);
    v13 = sub_24B2D22D4();
    v14 = *(v13 - 8);
    v15 = 0;
    if ((*(v14 + 48))(v10, 1, v13) != 1)
    {
      v16 = *(v0 + 176);
      v15 = sub_24B2D2294();
      (*(v14 + 8))(v16, v13);
    }

    v28 = *(v0 + 816);
    v29 = *(v0 + 392);
    v17 = *(v0 + 328);
    v18 = *(v0 + 304);
    v19 = *(v0 + 256);
    v20 = *(v0 + 232);
    v21 = *(v0 + 240);
    v22 = *(v0 + 216);
    v23 = *(v0 + 144);
    v24 = *(v0 + 64);
    [*(v0 + 96) setURL_];

    sub_24B075294(v22, type metadata accessor for MessagePayload);
    (*(v21 + 8))(v19, v20);
    v28(v17, v18);
    sub_24AFF8258(v23, &qword_27EFC8A98);
    *v24 = 1;
    *(v24 + 8) = 0;
    *(v24 + 16) = 0;
    sub_24B075294(v29, type metadata accessor for Friend);

    v25 = *(v0 + 8);

    return v25();
  }
}

uint64_t sub_24B06F82C()
{
  v27 = v0;
  v1 = v0[104];
  v2 = v0[41];
  v3 = v0[38];
  v4 = v0[18];

  v1(v2, v3);
  sub_24AFF8258(v4, &qword_27EFC8A98);
  v5 = v0[101];
  if (qword_27EFC75E8 != -1)
  {
    swift_once();
  }

  v6 = sub_24B2D3184();
  __swift_project_value_buffer(v6, qword_27EFE4418);
  v7 = v5;
  v8 = sub_24B2D3164();
  v9 = sub_24B2D5914();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v26 = v12;
    *v10 = 136315394;
    *(v10 + 4) = sub_24AFF321C(0xD00000000000002CLL, 0x800000024B2D94F0, &v26);
    *(v10 + 12) = 2112;
    v13 = v5;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v14;
    *v11 = v14;
    _os_log_impl(&dword_24AFD2000, v8, v9, "CompositeAppViewModel: %s - %@", v10, 0x16u);
    sub_24AFF8258(v11, &qword_27EFC7BB8);
    MEMORY[0x24C23D530](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x24C23D530](v12, -1, -1);
    MEMORY[0x24C23D530](v10, -1, -1);
  }

  v15 = v0[49];
  v16 = v0[8];
  *v16 = 0;
  type metadata accessor for FindMyUICore();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v18 = [objc_opt_self() bundleForClass_];
  v19 = sub_24B2D5374();
  v20 = [v18 localizedStringForKey:v19 value:0 table:0];

  v21 = sub_24B2D5394();
  v23 = v22;

  *(v16 + 8) = v21;
  *(v16 + 16) = v23;
  sub_24B075294(v15, type metadata accessor for Friend);

  v24 = v0[1];

  return v24();
}

uint64_t sub_24B06FC88(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = v4[55];
    v6 = v4[56];
    v7 = sub_24B0715D8;
  }

  else
  {
    v4[107] = a1;
    v5 = v4[55];
    v6 = v4[56];
    v7 = sub_24B06FDB4;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_24B06FDB4()
{
  v1 = *(v0 + 856);

  v2 = *(v0 + 456);
  v3 = *(v0 + 232);
  v4 = *(v0 + 240);
  v5 = *(v0 + 192);
  (*(v4 + 16))(v5, *(v0 + 256), v3);
  (*(v4 + 56))(v5, 0, 1, v3);
  v6 = v2 | 0x100;
  if (v1)
  {
    v7 = *(v0 + 264);
    v8 = *(v0 + 232);
    v9 = *(v0 + 240);
    v10 = v1;
    [v10 coordinate];
    v59 = v11;
    [v10 coordinate];
    v50 = v12;
    [v10 altitude];
    v57 = v13;
    [v10 horizontalAccuracy];
    v49 = v14;
    [v10 verticalAccuracy];
    v54 = v15;
    [v10 course];
    v48 = v16;
    [v10 courseAccuracy];
    v52 = v17;
    [v10 speed];
    v47 = v18;
    [v10 speedAccuracy];
    v20 = v19;
    v21 = [v10 timestamp];
    sub_24B2D2484();

    sub_24B2D2404();
    v23 = v22;

    (*(v9 + 8))(v7, v8);
    v24 = 0;
    *&v25 = v59;
    *(&v25 + 1) = v50;
    v60 = v25;
    *&v25 = v57;
    *(&v25 + 1) = v49;
    v58 = v25;
    *&v25 = v54;
    *(&v25 + 1) = v48;
    v55 = v25;
    *&v26 = v52;
    *(&v26 + 1) = v47;
  }

  else
  {
    v24 = 1;
    v26 = 0uLL;
    v58 = 0u;
    v60 = 0u;
    v20 = 0;
    v23 = 0;
    v55 = 0u;
  }

  v53 = v26;
  v51 = v1;
  v27 = *(v0 + 800);
  v28 = *(v0 + 216);
  v29 = *(v0 + 192);
  v30 = *(v0 + 176);
  *v28 = *(v0 + 792);
  *(v28 + 8) = v27;
  *(v28 + 16) = v6;
  v31 = type metadata accessor for MessagePayload.ContentV0(0);
  sub_24B0391CC(v29, v28 + v31[6], &qword_27EFC8450);
  v32 = v28 + v31[7];
  *v32 = v60;
  *(v32 + 16) = v58;
  *(v32 + 32) = v55;
  *(v32 + 48) = v53;
  *(v32 + 64) = v20;
  *(v32 + 72) = v23;
  *(v32 + 80) = v24;
  *(v28 + v31[8]) = 0;
  MessagePayload.url.getter(v30);
  v33 = sub_24B2D22D4();
  v34 = *(v33 - 8);
  v35 = 0;
  if ((*(v34 + 48))(v30, 1, v33) != 1)
  {
    v36 = *(v0 + 176);
    v35 = sub_24B2D2294();
    (*(v34 + 8))(v36, v33);
  }

  v56 = *(v0 + 816);
  v61 = *(v0 + 392);
  v37 = *(v0 + 328);
  v38 = *(v0 + 304);
  v39 = *(v0 + 256);
  v40 = *(v0 + 232);
  v41 = *(v0 + 240);
  v42 = *(v0 + 216);
  v43 = *(v0 + 144);
  v44 = *(v0 + 64);
  [*(v0 + 96) setURL_];

  sub_24B075294(v42, type metadata accessor for MessagePayload);
  (*(v41 + 8))(v39, v40);
  v56(v37, v38);
  sub_24AFF8258(v43, &qword_27EFC8A98);
  *v44 = 1;
  *(v44 + 8) = 0;
  *(v44 + 16) = 0;
  sub_24B075294(v61, type metadata accessor for Friend);

  v45 = *(v0 + 8);

  return v45();
}

uint64_t sub_24B070344(char a1)
{
  v4 = *v2;
  *(*v2 + 880) = v1;

  if (v1)
  {
    v5 = *(v4 + 440);
    v6 = *(v4 + 448);
    v7 = sub_24B0719CC;
  }

  else
  {
    *(v4 + 926) = a1 & 1;
    v5 = *(v4 + 440);
    v6 = *(v4 + 448);
    v7 = sub_24B070470;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_24B070470()
{
  v25 = v0;
  if (*(v0 + 926) == 1)
  {
    v1 = *(v0 + 60);
    v2 = *(v0 + 384);
    v3 = swift_task_alloc();
    *(v0 + 888) = v3;
    *v3 = v0;
    v3[1] = sub_24B0708F4;
    v4 = *(v0 + 88);

    return sub_24B04E92C(v2 + v1, v4);
  }

  else
  {

    if (qword_27EFC75E8 != -1)
    {
      swift_once();
    }

    v6 = sub_24B2D3184();
    __swift_project_value_buffer(v6, qword_27EFE4418);
    v7 = sub_24B2D3164();
    v8 = sub_24B2D5914();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v24 = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_24AFF321C(0xD00000000000002CLL, 0x800000024B2D94F0, &v24);
      _os_log_impl(&dword_24AFD2000, v7, v8, "CompositeAppViewModel: %s - Can't request to friends that don't support find my plugin", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x24C23D530](v10, -1, -1);
      MEMORY[0x24C23D530](v9, -1, -1);
    }

    v11 = *(v0 + 384);
    v13 = *(v0 + 120);
    v12 = *(v0 + 128);
    v14 = *(v0 + 112);
    v15 = *(v0 + 64);
    *v15 = 0;
    type metadata accessor for FindMyUICore();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v17 = [objc_opt_self() bundleForClass_];
    v18 = sub_24B2D5374();
    v19 = [v17 localizedStringForKey:v18 value:0 table:0];

    v20 = sub_24B2D5394();
    v22 = v21;

    (*(v13 + 8))(v12, v14);
    sub_24B075294(v11, type metadata accessor for Friend);
    *(v15 + 8) = v20;
    *(v15 + 16) = v22;

    v23 = *(v0 + 8);

    return v23();
  }
}

uint64_t sub_24B0708F4(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 896) = v2;

  if (v2)
  {
    v7 = v6[55];
    v8 = v6[56];
    v9 = sub_24B070DFC;
  }

  else
  {
    v6[113] = a2;
    v6[114] = a1;
    v7 = v6[55];
    v8 = v6[56];
    v9 = sub_24B070A2C;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_24B070A2C()
{
  v1 = *(v0 + 912);
  v2 = *(v0 + 904);
  v4 = *(v0 + 240);
  v3 = *(v0 + 248);
  v5 = *(v0 + 232);
  v6 = *(v0 + 208);
  v7 = *(v0 + 168);

  sub_24B2D2494();
  v8 = type metadata accessor for MessagePayload.ContentV0(0);
  v9 = v8[6];
  (*(v4 + 16))(v6 + v9, v3, v5);
  (*(v4 + 56))(v6 + v9, 0, 1, v5);
  *(v0 + 920) = 1;
  *v6 = v1;
  *(v6 + 8) = v2;
  *(v6 + 16) = 512;
  v10 = v6 + v8[7];
  *(v10 + 48) = 0u;
  *(v10 + 64) = 0u;
  *(v10 + 16) = 0u;
  *(v10 + 32) = 0u;
  *v10 = 0u;
  *(v10 + 80) = *(v0 + 920);
  *(v6 + v8[8]) = 0;
  MessagePayload.url.getter(v7);
  v11 = sub_24B2D22D4();
  v12 = *(v11 - 8);
  v13 = 0;
  if ((*(v12 + 48))(v7, 1, v11) != 1)
  {
    v14 = *(v0 + 168);
    v13 = sub_24B2D2294();
    (*(v12 + 8))(v14, v11);
  }

  v16 = *(v0 + 240);
  v15 = *(v0 + 248);
  v17 = *(v0 + 232);
  v18 = *(v0 + 208);
  v19 = *(v0 + 120);
  v24 = *(v0 + 128);
  v25 = *(v0 + 384);
  v20 = *(v0 + 112);
  v21 = *(v0 + 64);
  [*(v0 + 96) setURL_];

  sub_24B075294(v18, type metadata accessor for MessagePayload);
  (*(v16 + 8))(v15, v17);
  (*(v19 + 8))(v24, v20);
  sub_24B075294(v25, type metadata accessor for Friend);
  *v21 = 1;
  *(v21 + 8) = 0;
  *(v21 + 16) = 0;

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_24B070DFC()
{
  v26 = v0;
  v1 = v0[112];
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[14];

  (*(v3 + 8))(v2, v4);
  if (qword_27EFC75E8 != -1)
  {
    swift_once();
  }

  v5 = sub_24B2D3184();
  __swift_project_value_buffer(v5, qword_27EFE4418);
  v6 = v1;
  v7 = sub_24B2D3164();
  v8 = sub_24B2D5914();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v25 = v11;
    *v9 = 136315394;
    *(v9 + 4) = sub_24AFF321C(0xD00000000000002CLL, 0x800000024B2D94F0, &v25);
    *(v9 + 12) = 2112;
    v12 = v1;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v13;
    *v10 = v13;
    _os_log_impl(&dword_24AFD2000, v7, v8, "CompositeAppViewModel: %s - %@", v9, 0x16u);
    sub_24AFF8258(v10, &qword_27EFC7BB8);
    MEMORY[0x24C23D530](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x24C23D530](v11, -1, -1);
    MEMORY[0x24C23D530](v9, -1, -1);
  }

  v14 = v0[48];
  v15 = v0[8];
  *v15 = 0;
  type metadata accessor for FindMyUICore();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v17 = [objc_opt_self() bundleForClass_];
  v18 = sub_24B2D5374();
  v19 = [v17 localizedStringForKey:v18 value:0 table:0];

  v20 = sub_24B2D5394();
  v22 = v21;

  sub_24B075294(v14, type metadata accessor for Friend);
  *(v15 + 8) = v20;
  *(v15 + 16) = v22;

  v23 = v0[1];

  return v23();
}

uint64_t sub_24B07124C()
{

  v1 = *(v0 + 456);
  v2 = *(v0 + 232);
  v3 = *(v0 + 240);
  v4 = *(v0 + 200);
  (*(v3 + 16))(v4, *(v0 + 272), v2);
  (*(v3 + 56))(v4, 0, 1, v2);
  v5 = *(v0 + 640);
  v6 = *(v0 + 924);
  v7 = *(v0 + 224);
  v8 = *(v0 + 200);
  v9 = *(v0 + 184);
  *v7 = *(v0 + 632);
  *(v7 + 8) = v5;
  *(v7 + 16) = v1;
  v10 = type metadata accessor for MessagePayload.ContentV0(0);
  sub_24B0391CC(v8, v7 + v10[6], &qword_27EFC8450);
  v11 = v7 + v10[7];
  *(v11 + 48) = 0u;
  *(v11 + 64) = 0u;
  *(v11 + 16) = 0u;
  *(v11 + 32) = 0u;
  *v11 = 0u;
  *(v11 + 80) = 1;
  *(v7 + v10[8]) = v6;
  MessagePayload.url.getter(v9);
  v12 = sub_24B2D22D4();
  v13 = *(v12 - 8);
  v14 = 0;
  if ((*(v13 + 48))(v9, 1, v12) != 1)
  {
    v15 = *(v0 + 184);
    v14 = sub_24B2D2294();
    (*(v13 + 8))(v15, v12);
  }

  v16 = *(v0 + 272);
  v17 = *(v0 + 232);
  v18 = *(v0 + 240);
  v19 = *(v0 + 224);
  v20 = *(v0 + 64);
  [*(v0 + 96) setURL_];

  sub_24B075294(v19, type metadata accessor for MessagePayload);
  (*(v18 + 8))(v16, v17);
  *v20 = 1;
  *(v20 + 8) = 0;
  *(v20 + 16) = 0;

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_24B0715D8()
{

  v1 = *(v0 + 456);
  v2 = *(v0 + 232);
  v3 = *(v0 + 240);
  v4 = *(v0 + 192);
  (*(v3 + 16))(v4, *(v0 + 256), v2);
  (*(v3 + 56))(v4, 0, 1, v2);
  v5 = v1 | 0x100;
  v6 = *(v0 + 800);
  v7 = *(v0 + 216);
  v8 = *(v0 + 192);
  v9 = *(v0 + 176);
  *v7 = *(v0 + 792);
  *(v7 + 8) = v6;
  *(v7 + 16) = v5;
  v10 = type metadata accessor for MessagePayload.ContentV0(0);
  sub_24B0391CC(v8, v7 + v10[6], &qword_27EFC8450);
  v11 = v7 + v10[7];
  *(v11 + 48) = 0u;
  *(v11 + 64) = 0u;
  *(v11 + 16) = 0u;
  *(v11 + 32) = 0u;
  *v11 = 0u;
  *(v11 + 80) = 1;
  *(v7 + v10[8]) = 0;
  MessagePayload.url.getter(v9);
  v12 = sub_24B2D22D4();
  v13 = *(v12 - 8);
  v14 = 0;
  if ((*(v13 + 48))(v9, 1, v12) != 1)
  {
    v15 = *(v0 + 176);
    v14 = sub_24B2D2294();
    (*(v13 + 8))(v15, v12);
  }

  v26 = *(v0 + 816);
  v27 = *(v0 + 392);
  v16 = *(v0 + 328);
  v17 = *(v0 + 304);
  v18 = *(v0 + 256);
  v19 = *(v0 + 232);
  v20 = *(v0 + 240);
  v21 = *(v0 + 216);
  v22 = *(v0 + 144);
  v23 = *(v0 + 64);
  [*(v0 + 96) setURL_];

  sub_24B075294(v21, type metadata accessor for MessagePayload);
  (*(v20 + 8))(v18, v19);
  v26(v16, v17);
  sub_24AFF8258(v22, &qword_27EFC8A98);
  *v23 = 1;
  *(v23 + 8) = 0;
  *(v23 + 16) = 0;
  sub_24B075294(v27, type metadata accessor for Friend);

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_24B0719CC()
{
  v26 = v0;
  v1 = v0[110];
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[14];

  (*(v3 + 8))(v2, v4);
  if (qword_27EFC75E8 != -1)
  {
    swift_once();
  }

  v5 = sub_24B2D3184();
  __swift_project_value_buffer(v5, qword_27EFE4418);
  v6 = v1;
  v7 = sub_24B2D3164();
  v8 = sub_24B2D5914();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v25 = v11;
    *v9 = 136315394;
    *(v9 + 4) = sub_24AFF321C(0xD00000000000002CLL, 0x800000024B2D94F0, &v25);
    *(v9 + 12) = 2112;
    v12 = v1;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v13;
    *v10 = v13;
    _os_log_impl(&dword_24AFD2000, v7, v8, "CompositeAppViewModel: %s - %@", v9, 0x16u);
    sub_24AFF8258(v10, &qword_27EFC7BB8);
    MEMORY[0x24C23D530](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x24C23D530](v11, -1, -1);
    MEMORY[0x24C23D530](v9, -1, -1);
  }

  v14 = v0[48];
  v15 = v0[8];
  *v15 = 0;
  type metadata accessor for FindMyUICore();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v17 = [objc_opt_self() bundleForClass_];
  v18 = sub_24B2D5374();
  v19 = [v17 localizedStringForKey:v18 value:0 table:0];

  v20 = sub_24B2D5394();
  v22 = v21;

  sub_24B075294(v14, type metadata accessor for Friend);
  *(v15 + 8) = v20;
  *(v15 + 16) = v22;

  v23 = v0[1];

  return v23();
}

uint64_t sub_24B071E1C(uint64_t a1, uint64_t a2)
{
  v30 = a1;
  v3 = sub_24B2D1704();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24B2D5694();
  v24[1] = sub_24B2D5684();
  v27 = v7;
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC7980);
  v8 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v26 = *(v4 + 72);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_24B2DE430;
  v10 = type metadata accessor for Friend();
  v11 = *(v10 + 20);
  v28 = *(v4 + 16);
  v29 = v4 + 16;
  v12 = v28(v9 + v8, a2 + v11, v3);
  v13 = *(a2 + *(v10 + 24));
  MEMORY[0x28223BE20](v12);
  v24[-2] = a2;

  v14 = v13;
  v15 = v25;
  v16 = sub_24B00DCB0(sub_24AFF2290, &v24[-4], v14);
  v24[0] = v15;
  v31 = v9;
  result = sub_24B0300DC(v16);
  v18 = v31;
  v19 = *(v31 + 16);
  if (v19)
  {
    v20 = 0;
    v21 = v31 + v8;
    v25 = v19 - 1;
    while (v20 < *(v18 + 16))
    {
      v28(v6, v21, v3);
      sub_24B2D5684();
      sub_24B2D5604();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      sub_24B074FCC();
      v22 = sub_24B2D52A4();
      (*(v4 + 8))(v6, v3);

      if ((v22 & 1) == 0)
      {
        v21 += v26;
        if (v25 != v20++)
        {
          continue;
        }
      }

      goto LABEL_13;
    }

    __break(1u);
  }

  else
  {
    v22 = 0;
LABEL_13:

    return v22 & 1;
  }

  return result;
}

void sub_24B07214C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v91 = a1;
  v102 = *MEMORY[0x277D85DE8];
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8AA0);
  v87 = *(v90 - 8);
  v5 = *(v87 + 64);
  MEMORY[0x28223BE20](v90);
  v88 = v82 - v6;
  v7 = sub_24B2D5694();
  v82[0] = sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v89 = v5;
  v82[1] = 0;
  v93 = v7;
  type metadata accessor for FindMyUICore();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = objc_opt_self();
  v10 = [v9 bundleForClass_];
  v11 = sub_24B2D5374();
  v12 = [v10 localizedStringForKey:v11 value:0 table:0];

  if (!v12)
  {
    sub_24B2D5394();
    v12 = sub_24B2D5374();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8A78);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_24B2DE430;
  *(v13 + 56) = MEMORY[0x277D837D0];
  *(v13 + 64) = sub_24B075024();
  *(v13 + 32) = a2;
  *(v13 + 40) = a3;

  v14 = [v9 bundleForClass_];
  v15 = sub_24B2D5374();
  v16 = [v14 localizedStringForKey:v15 value:0 table:0];

  sub_24B2D5394();
  sub_24B2D53A4();

  v17 = sub_24B2D5374();

  v92 = [objc_opt_self() alertControllerWithTitle:v12 message:v17 preferredStyle:1];

  v86 = ObjCClassFromMetadata;
  v18 = [v9 bundleForClass_];
  v19 = sub_24B2D5374();
  v20 = [v18 localizedStringForKey:v19 value:0 table:0];

  if (!v20)
  {
    sub_24B2D5394();
    v20 = sub_24B2D5374();
  }

  v22 = v87;
  v21 = v88;
  v24 = v90;
  v23 = v91;
  v85 = *(v87 + 16);
  v85(v88, v91, v90);
  v25 = (*(v22 + 80) + 16) & ~*(v22 + 80);
  v26 = swift_allocObject();
  v87 = *(v22 + 32);
  (v87)(v26 + v25, v21, v24);
  v100 = sub_24B075078;
  v101 = v26;
  aBlock = MEMORY[0x277D85DD0];
  v97 = 1107296256;
  v27 = v23;
  v84 = &v98;
  v98 = sub_24B072F50;
  v99 = &block_descriptor_2;
  v28 = _Block_copy(&aBlock);

  v83 = objc_opt_self();
  v29 = [v83 actionWithTitle:v20 style:0 handler:v28];
  _Block_release(v28);

  [v92 addAction_];
  v30 = [v9 bundleForClass_];
  v31 = sub_24B2D5374();
  v32 = [v30 localizedStringForKey:v31 value:0 table:0];

  if (!v32)
  {
    sub_24B2D5394();
    v32 = sub_24B2D5374();
  }

  v33 = v88;
  v85(v88, v27, v24);
  v34 = swift_allocObject();
  (v87)(v34 + v25, v33, v24);
  v100 = sub_24B075130;
  v101 = v34;
  aBlock = MEMORY[0x277D85DD0];
  v97 = 1107296256;
  v98 = sub_24B072F50;
  v99 = &block_descriptor_26_1;
  v35 = _Block_copy(&aBlock);

  v36 = [v83 actionWithTitle:v32 style:1 handler:v35];
  _Block_release(v35);

  [v92 addAction_];
  v37 = [objc_opt_self() sharedApplication];
  v38 = [v37 connectedScenes];

  sub_24B038248(0, &qword_27EFC8AB0);
  sub_24B0751C4();
  v39 = sub_24B2D57E4();

  if ((v39 & 0xC000000000000001) == 0)
  {
    v56 = *(v39 + 32);
    v37 = ((1 << v56) + 63) >> 6;
    v57 = 8 * v37;
    if ((v56 & 0x3Fu) <= 0xD)
    {
      goto LABEL_32;
    }

    goto LABEL_81;
  }

  v41 = MEMORY[0x277D84FA0];
  aBlock = MEMORY[0x277D84FA0];
  sub_24B2D5B84();
  v42 = sub_24B2D5B94();
  if (v42)
  {
    v37 = &unk_279003000;
    do
    {
      v94 = v42;
      swift_dynamicCast();
      v44 = v95;
      sub_24B2D5684();
      sub_24B2D5604();
      v39 = v45;
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v43 = [v44 activationState];

      v35 = v95;
      if (v43)
      {
      }

      else
      {
        if (*(v41 + 24) <= *(v41 + 16))
        {
          sub_24B1B3294();
        }

        v41 = aBlock;
        v46 = sub_24B2D5A24();
        v47 = v41 + 56;
        v48 = -1 << *(v41 + 32);
        v49 = v46 & ~v48;
        v50 = v49 >> 6;
        if (((-1 << v49) & ~*(v41 + 56 + 8 * (v49 >> 6))) != 0)
        {
          v51 = __clz(__rbit64((-1 << v49) & ~*(v41 + 56 + 8 * (v49 >> 6)))) | v49 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v52 = 0;
          v53 = (63 - v48) >> 6;
          do
          {
            if (++v50 == v53 && (v52 & 1) != 0)
            {
              __break(1u);
              goto LABEL_68;
            }

            v54 = v50 == v53;
            if (v50 == v53)
            {
              v50 = 0;
            }

            v52 |= v54;
            v55 = *(v47 + 8 * v50);
          }

          while (v55 == -1);
          v51 = __clz(__rbit64(~v55)) + (v50 << 6);
        }

        *(v47 + ((v51 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v51;
        *(*(v41 + 48) + 8 * v51) = v35;
        ++*(v41 + 16);
      }

      v42 = sub_24B2D5B94();
    }

    while (v42);
  }

LABEL_49:
  v35 = sub_24B068E88(v41);

  if (v35 >> 62)
  {
    while (1)
    {
      if (!sub_24B2D5DA4())
      {
        goto LABEL_75;
      }

LABEL_51:
      if ((v35 & 0xC000000000000001) != 0)
      {
        break;
      }

      if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v69 = *(v35 + 32);
LABEL_54:
        v37 = v69;

        v70 = [v37 windows];

        sub_24B038248(0, &qword_27EFC8AC0);
        v35 = sub_24B2D5534();

        if (v35 >> 62)
        {
          v71 = sub_24B2D5DA4();
          if (!v71)
          {
            goto LABEL_75;
          }
        }

        else
        {
          v71 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v71)
          {
            goto LABEL_75;
          }
        }

        v72 = 0;
        while (1)
        {
          if ((v35 & 0xC000000000000001) != 0)
          {
            v73 = MEMORY[0x24C23C450](v72, v35);
          }

          else
          {
            if (v72 >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_70;
            }

            v73 = *(v35 + 8 * v72 + 32);
          }

          v37 = v73;
          v74 = v72 + 1;
          if (__OFADD__(v72, 1))
          {
            goto LABEL_69;
          }

          sub_24B2D5684();
          sub_24B2D5604();
          v39 = v75;
          if ((swift_task_isCurrentExecutor() & 1) == 0)
          {
            swift_task_reportUnexpectedExecutor();
          }

          v76 = [v37 isKeyWindow];

          if (v76)
          {
            goto LABEL_76;
          }

          ++v72;
          if (v74 == v71)
          {
            v37 = 0;
            goto LABEL_76;
          }
        }
      }

      __break(1u);
LABEL_81:
      v80 = v57;

      v35 = v80;
      if (!swift_stdlib_isStackAllocationSafe())
      {
        v81 = swift_slowAlloc();
        v41 = sub_24B0734BC(v81, v37, v39, sub_24B073084);

        MEMORY[0x24C23D530](v81, -1, -1);
        goto LABEL_49;
      }

LABEL_32:
      v86 = v82;
      v87 = v37;
      MEMORY[0x28223BE20](v40);
      v88 = v82 - ((v58 + 15) & 0x3FFFFFFFFFFFFFF0);
      bzero(v88, v58);
      v89 = 0;
      v59 = 0;
      v60 = 1 << *(v39 + 32);
      v61 = -1;
      if (v60 < 64)
      {
        v61 = ~(-1 << v60);
      }

      v62 = v61 & *(v39 + 56);
      v63 = (v60 + 63) >> 6;
      while (v62)
      {
        v65 = __clz(__rbit64(v62));
        v62 &= v62 - 1;
LABEL_43:
        v37 = v65 | (v59 << 6);
        v35 = *(*(v39 + 48) + 8 * v37);
        sub_24B2D5684();
        sub_24B2D5604();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        v64 = [v35 activationState];

        if (!v64)
        {
          *&v88[(v37 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v37;
          if (__OFADD__(v89++, 1))
          {
            __break(1u);
LABEL_48:
            v41 = sub_24B2A2488(v88, v87, v89, v39);
            goto LABEL_49;
          }
        }
      }

      v66 = v59;
      while (1)
      {
        v59 = v66 + 1;
        if (__OFADD__(v66, 1))
        {
          break;
        }

        if (v59 >= v63)
        {
          goto LABEL_48;
        }

        v67 = *(v39 + 56 + 8 * v59);
        ++v66;
        if (v67)
        {
          v65 = __clz(__rbit64(v67));
          v62 = (v67 - 1) & v67;
          goto LABEL_43;
        }
      }

LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
    }

    v69 = MEMORY[0x24C23C450](0, v35);
    goto LABEL_54;
  }

  if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_51;
  }

LABEL_75:
  v37 = 0;
LABEL_76:

  v77 = [v37 rootViewController];
  if (v77)
  {
    v78 = v77;
    v79 = v92;
    [v77 presentViewController:v92 animated:1 completion:0];
  }

  else
  {
    LOBYTE(aBlock) = 1;
    sub_24B2D5634();
  }
}

void sub_24B072F50(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_24B072FB8()
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8AA0);
  sub_24B2D5634();
}

BOOL sub_24B073084(void **a1)
{
  v1 = *a1;
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = [v1 activationState];

  return v2 == 0;
}

uint64_t sub_24B073138(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  v30 = a4;
  v26 = a2;
  v27 = a1;
  v6 = _s14descr285E46659O16SubscriptionDataO9LocationsVMa(0);
  v29 = *(v6 - 8);
  result = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = 0;
  v10 = 0;
  v31 = a3;
  v13 = *(a3 + 56);
  v12 = a3 + 56;
  v11 = v13;
  v14 = 1 << *(v12 - 24);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v11;
  v17 = (v14 + 63) >> 6;
  while (v16)
  {
    v18 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
LABEL_11:
    v21 = v18 | (v10 << 6);
    sub_24B07522C(*(v31 + 48) + *(v29 + 72) * v21, v9, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
    v22 = v30(v9);
    result = sub_24B075294(v9, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
    if (v4)
    {
      return result;
    }

    if (v22)
    {
      *(v27 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      if (__OFADD__(v28++, 1))
      {
        __break(1u);
LABEL_16:
        v24 = v31;

        return sub_24B2A2154(v27, v26, v28, v24);
      }
    }
  }

  v19 = v10;
  while (1)
  {
    v10 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v10 >= v17)
    {
      goto LABEL_16;
    }

    v20 = *(v12 + 8 * v10);
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v16 = (v20 - 1) & v20;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void sub_24B073350(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
{
  v20 = 0;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v23 = *(*(a3 + 48) + 8 * v14);
    v15 = v23;
    v16 = a4(&v23);

    if (v4)
    {
      return;
    }

    if (v16)
    {
      *(a1 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
LABEL_16:

        sub_24B2A2488(a1, a2, v20, a3);
        return;
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_16;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void *sub_24B0734BC(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
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

    sub_24B073350(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

uint64_t sub_24B07354C(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v2[8] = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8A28);
  v2[9] = swift_task_alloc();
  v3 = type metadata accessor for CompositeAppViewInitialInfo();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC7E18);
  v2[14] = swift_task_alloc();
  v4 = type metadata accessor for MessagePayload(0);
  v2[15] = v4;
  v2[16] = *(v4 - 8);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v5 = sub_24B2D22D4();
  v2[20] = v5;
  v2[21] = *(v5 - 8);
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  sub_24B2D5694();
  v2[24] = sub_24B2D5684();
  v7 = sub_24B2D5604();
  v2[25] = v7;
  v2[26] = v6;

  return MEMORY[0x2822009F8](sub_24B0737C0, v7, v6);
}

uint64_t sub_24B0737C0()
{
  v107 = v0;
  v1 = [*(v0 + 48) URL];
  if (!v1)
  {

    if (qword_27EFC75E8 != -1)
    {
      swift_once();
    }

    v26 = sub_24B2D3184();
    __swift_project_value_buffer(v26, qword_27EFE4418);
    v27 = sub_24B2D3164();
    v28 = sub_24B2D5914();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v106 = v30;
      *v29 = 136315138;
      *(v29 + 4) = sub_24AFF321C(0xD00000000000002CLL, 0x800000024B2D94F0, &v106);
      _os_log_impl(&dword_24AFD2000, v27, v28, "CompositeAppViewModel: %s - no url on the MSMessage", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x24C23D530](v30, -1, -1);
      MEMORY[0x24C23D530](v29, -1, -1);
    }

    type metadata accessor for FindMyUICore();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v32 = [objc_opt_self() bundleForClass_];
    v33 = sub_24B2D5374();
    v34 = [v32 localizedStringForKey:v33 value:0 table:0];

    v105 = sub_24B2D5394();
    v25 = v35;

    goto LABEL_29;
  }

  v2 = *(v0 + 176);
  v3 = *(v0 + 184);
  v4 = *(v0 + 160);
  v5 = *(v0 + 168);
  v6 = *(v0 + 120);
  v7 = *(v0 + 128);
  v8 = *(v0 + 112);
  v9 = v1;
  sub_24B2D22A4();

  (*(v5 + 16))(v2, v3, v4);
  MessagePayload.init(from:)(v2, v8);
  v10 = (*(v7 + 48))(v8, 1, v6);
  v11 = *(v0 + 112);
  if (v10 == 1)
  {

    sub_24AFF8258(v11, &qword_27EFC7E18);
    if (qword_27EFC75E8 != -1)
    {
      swift_once();
    }

    v12 = sub_24B2D3184();
    __swift_project_value_buffer(v12, qword_27EFE4418);
    v13 = sub_24B2D3164();
    v14 = sub_24B2D5914();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v106 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_24AFF321C(0xD00000000000002CLL, 0x800000024B2D94F0, &v106);
      _os_log_impl(&dword_24AFD2000, v13, v14, "CompositeAppViewModel: %s - could not create a MessagePayload from the MSMessage", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x24C23D530](v16, -1, -1);
      MEMORY[0x24C23D530](v15, -1, -1);
    }

    v17 = *(v0 + 184);
    v18 = *(v0 + 160);
    v19 = *(v0 + 168);
    type metadata accessor for FindMyUICore();
    v20 = swift_getObjCClassFromMetadata();
    v21 = [objc_opt_self() bundleForClass_];
    v22 = sub_24B2D5374();
    v23 = [v21 localizedStringForKey:v22 value:0 table:0];

    v105 = sub_24B2D5394();
    v25 = v24;

    (*(v19 + 8))(v17, v18);
    goto LABEL_29;
  }

  v36 = *(v0 + 80);
  v37 = *(v0 + 88);
  v38 = *(v0 + 72);
  v39 = *(v0 + 56);
  sub_24B074F3C(*(v0 + 112), *(v0 + 152), type metadata accessor for MessagePayload);
  v40 = OBJC_IVAR____TtC12FindMyUICore21CompositeAppViewModel_initialInfo;
  swift_beginAccess();
  sub_24B008890(v39 + v40, v38, &qword_27EFC8A28);
  v41 = (*(v37 + 48))(v38, 1, v36);
  v42 = *(v0 + 72);
  if (v41 == 1)
  {

    sub_24AFF8258(v42, &qword_27EFC8A28);
    if (qword_27EFC75E8 != -1)
    {
      swift_once();
    }

    v43 = sub_24B2D3184();
    __swift_project_value_buffer(v43, qword_27EFE4418);
    v44 = sub_24B2D3164();
    v45 = sub_24B2D5914();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v106 = v47;
      *v46 = 136315138;
      *(v46 + 4) = sub_24AFF321C(0xD00000000000002CLL, 0x800000024B2D94F0, &v106);
      _os_log_impl(&dword_24AFD2000, v44, v45, "CompositeAppViewModel: %s - ShareLocation with no initialInfo", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v47);
      MEMORY[0x24C23D530](v47, -1, -1);
      MEMORY[0x24C23D530](v46, -1, -1);
    }

    v48 = *(v0 + 184);
    v49 = *(v0 + 160);
    v50 = *(v0 + 168);
    v51 = *(v0 + 152);
    type metadata accessor for FindMyUICore();
    v52 = swift_getObjCClassFromMetadata();
    v53 = [objc_opt_self() bundleForClass_];
    v54 = sub_24B2D5374();
    v55 = [v53 localizedStringForKey:v54 value:0 table:0];

    v105 = sub_24B2D5394();
    v25 = v56;

    (*(v50 + 8))(v48, v49);
    goto LABEL_28;
  }

  sub_24B074F3C(*(v0 + 72), *(v0 + 104), type metadata accessor for CompositeAppViewInitialInfo);
  sub_24B2D2AE4();
  v57 = sub_24B2D2A74();
  v58 = MEMORY[0x24C2392B0]();
  if (qword_27EFC75E8 != -1)
  {
    swift_once();
  }

  v60 = *(v0 + 96);
  v59 = *(v0 + 104);
  v61 = sub_24B2D3184();
  *(v0 + 216) = __swift_project_value_buffer(v61, qword_27EFE4418);
  sub_24B07522C(v59, v60, type metadata accessor for CompositeAppViewInitialInfo);
  v62 = sub_24B2D3164();
  v63 = sub_24B2D5934();
  v64 = os_log_type_enabled(v62, v63);
  v65 = *(v0 + 96);
  if (v64)
  {
    v66 = *(v0 + 80);
    v67 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v106 = v68;
    *v67 = 136315906;
    *(v67 + 4) = sub_24AFF321C(0xD00000000000002CLL, 0x800000024B2D94F0, &v106);
    *(v67 + 12) = 1024;
    *(v67 + 14) = v57 & 1;
    *(v67 + 18) = 1024;
    *(v67 + 20) = v58 & 1;
    *(v67 + 24) = 1024;
    LODWORD(v66) = *(v65 + *(v66 + 32));
    sub_24B075294(v65, type metadata accessor for CompositeAppViewInitialInfo);
    *(v67 + 26) = v66;
    _os_log_impl(&dword_24AFD2000, v62, v63, "CompositeAppViewModel: %s - isRestrictedInScreenTime: %{BOOL}d - isProvisionedForLocationSharing: %{BOOL}d, areFindMyFeaturesDisable: %{BOOL}d", v67, 0x1Eu);
    __swift_destroy_boxed_opaque_existential_0(v68);
    MEMORY[0x24C23D530](v68, -1, -1);
    MEMORY[0x24C23D530](v67, -1, -1);

    if ((v58 & 1) == 0)
    {
LABEL_23:
      v69 = *(v0 + 168);

      type metadata accessor for FindMyUICore();
      v70 = swift_getObjCClassFromMetadata();
      v71 = [objc_opt_self() bundleForClass_];
      v72 = (v69 + 8);
      v73 = *(v0 + 184);
      v51 = *(v0 + 152);
      v74 = *(v0 + 160);
      v75 = *(v0 + 104);
      v76 = sub_24B2D5374();
      v99 = [v71 localizedStringForKey:v76 value:0 table:0];

      v105 = sub_24B2D5394();
      v25 = v100;

      (*v72)(v73, v74);
      sub_24B075294(v75, type metadata accessor for CompositeAppViewInitialInfo);
LABEL_28:
      sub_24B075294(v51, type metadata accessor for MessagePayload);
LABEL_29:

      v101 = *(v0 + 8);

      return v101(0, v105, v25);
    }
  }

  else
  {
    sub_24B075294(*(v0 + 96), type metadata accessor for CompositeAppViewInitialInfo);

    if ((v58 & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  if (v57)
  {
    goto LABEL_23;
  }

  v77 = *(v0 + 48);
  sub_24B07522C(*(v0 + 152), *(v0 + 144), type metadata accessor for MessagePayload);
  v78 = v77;

  v79 = sub_24B2D3164();
  v80 = sub_24B2D5934();

  v81 = os_log_type_enabled(v79, v80);
  v82 = *(v0 + 144);
  if (v81)
  {
    v104 = *(v0 + 136);
    v83 = *(v0 + 56);
    v84 = *(v0 + 48);
    v85 = swift_slowAlloc();
    v86 = swift_slowAlloc();
    v106 = v86;
    *v85 = 136315906;
    *(v85 + 4) = sub_24AFF321C(0xD00000000000002CLL, 0x800000024B2D94F0, &v106);
    *(v85 + 12) = 2080;
    v87 = [v84 debugDescription];
    v88 = sub_24B2D5394();
    v90 = v89;

    v91 = sub_24AFF321C(v88, v90, &v106);

    *(v85 + 14) = v91;
    *(v85 + 22) = 2080;
    *(v0 + 40) = v83;

    v92 = sub_24B2D53C4();
    v94 = sub_24AFF321C(v92, v93, &v106);

    *(v85 + 24) = v94;
    *(v85 + 32) = 2080;
    sub_24B07522C(v82, v104, type metadata accessor for MessagePayload);
    v95 = sub_24B2D53C4();
    v97 = v96;
    sub_24B075294(v82, type metadata accessor for MessagePayload);
    v98 = sub_24AFF321C(v95, v97, &v106);

    *(v85 + 34) = v98;
    _os_log_impl(&dword_24AFD2000, v79, v80, "CompositeAppViewModel: %s - %s - %s - payload: %s", v85, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x24C23D530](v86, -1, -1);
    MEMORY[0x24C23D530](v85, -1, -1);
  }

  else
  {

    sub_24B075294(v82, type metadata accessor for MessagePayload);
  }

  v103 = swift_task_alloc();
  *(v0 + 224) = v103;
  *v103 = v0;
  v103[1] = sub_24B07464C;

  return sub_24B05A89C();
}

uint64_t sub_24B07464C(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 232) = a1;

  v3 = *(v2 + 208);
  v4 = *(v2 + 200);

  return MEMORY[0x2822009F8](sub_24B074774, v4, v3);
}

uint64_t sub_24B074774()
{
  v1 = v0[29];
  v2 = v0[19];
  v3 = v0[13];
  v5 = v0[6];
  v4 = v0[7];
  v6 = swift_task_alloc();
  v0[30] = v6;
  v6[2] = v2;
  v6[3] = v1;
  v6[4] = v4;
  v6[5] = v3;
  v6[6] = v5;
  v7 = swift_task_alloc();
  v0[31] = v7;
  *v7 = v0;
  v7[1] = sub_24B074870;

  return (sub_24B06915C)(&unk_24B2E1C08, v6);
}

uint64_t sub_24B074870(char a1, uint64_t a2, uint64_t a3)
{
  v8 = *v4;
  *(*v4 + 256) = v3;

  if (v3)
  {
    v9 = *(v8 + 200);
    v10 = *(v8 + 208);
    v11 = sub_24B074B14;
  }

  else
  {
    *(v8 + 264) = a3;
    *(v8 + 272) = a2;
    *(v8 + 280) = a1 & 1;

    v9 = *(v8 + 200);
    v10 = *(v8 + 208);
    v11 = sub_24B0749B4;
  }

  return MEMORY[0x2822009F8](v11, v9, v10);
}

uint64_t sub_24B0749B4()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 160);
  v3 = *(v0 + 168);
  v4 = *(v0 + 152);
  v5 = *(v0 + 104);

  (*(v3 + 8))(v1, v2);
  sub_24B075294(v5, type metadata accessor for CompositeAppViewInitialInfo);
  sub_24B075294(v4, type metadata accessor for MessagePayload);
  v10 = *(v0 + 280);
  v6 = *(v0 + 264);
  v9 = *(v0 + 272);

  v7 = *(v0 + 8);

  return v7(v10, v9, v6);
}

uint64_t sub_24B074B14()
{
  v24 = v0;

  v1 = sub_24B2D3164();
  v2 = sub_24B2D5934();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v23 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_24AFF321C(0xD00000000000002CLL, 0x800000024B2D94F0, &v23);
    _os_log_impl(&dword_24AFD2000, v1, v2, "CompositeAppViewModel: %s - Already validating a message!", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v4);
    MEMORY[0x24C23D530](v4, -1, -1);
    MEMORY[0x24C23D530](v3, -1, -1);
  }

  v5 = v0[21];
  v6 = *(v0[19] + 17) << 8;
  type metadata accessor for FindMyUICore();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = [objc_opt_self() bundleForClass_];
  v9 = v0[32];
  v10 = v0[23];
  v11 = v0[20];
  v22 = v0[19];
  v12 = v0[13];
  v13 = sub_24B2D5374();
  if (v6 == 512)
  {
    v14 = [v8 localizedStringForKey:v13 value:0 table:0];

    v21 = sub_24B2D5394();
    v16 = v15;
  }

  else
  {
    v17 = [v8 localizedStringForKey:v13 value:0 table:0];

    v21 = sub_24B2D5394();
    v16 = v18;
  }

  (*(v5 + 8))(v10, v11);
  sub_24B075294(v12, type metadata accessor for CompositeAppViewInitialInfo);
  sub_24B075294(v22, type metadata accessor for MessagePayload);

  v19 = v0[1];

  return v19(0, v21, v16);
}

uint64_t sub_24B074E74(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24AFFD370;

  return sub_24B06973C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_24B074F3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_24B074FCC()
{
  result = qword_27EFC7E90;
  if (!qword_27EFC7E90)
  {
    sub_24B2D1704();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC7E90);
  }

  return result;
}

unint64_t sub_24B075024()
{
  result = qword_27EFC8AA8;
  if (!qword_27EFC8AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC8AA8);
  }

  return result;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroyTm_0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8AA0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

unint64_t sub_24B0751C4()
{
  result = qword_27EFC8AB8;
  if (!qword_27EFC8AB8)
  {
    sub_24B038248(255, &qword_27EFC8AB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC8AB8);
  }

  return result;
}

uint64_t sub_24B07522C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B075294(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

int64_t sub_24B075300(unint64_t a1, char a2)
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a1 >> 62)
  {
    v6 = sub_24B2D5DA4();
    if (sub_24B2D5DA4() < 0)
    {
      __break(1u);
    }

    if (v6 >= 5)
    {
      v7 = 5;
    }

    else
    {
      v7 = v6;
    }

    if (v6 >= 0)
    {
      v5 = v7;
    }

    else
    {
      v5 = 5;
    }

    result = sub_24B2D5DA4();
    if (result >= v5)
    {
      goto LABEL_8;
    }

LABEL_28:
    __break(1u);
    return result;
  }

  result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result >= 5)
  {
    v5 = 5;
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result < v5)
  {
    goto LABEL_28;
  }

LABEL_8:
  if ((a1 & 0xC000000000000001) != 0 && v5)
  {
    sub_24AFFF54C();

    sub_24B2D5C54();
    if (v5 != 1)
    {
      sub_24B2D5C54();
      if (v5 != 2)
      {
        sub_24B2D5C54();
        if (v5 != 3)
        {
          sub_24B2D5C54();
          if (v5 != 4)
          {
            sub_24B2D5C54();
          }
        }
      }
    }
  }

  else
  {
  }

  if (a1 >> 62)
  {

    sub_24B2D5DB4();
  }

  *(swift_allocObject() + 16) = a2 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8B78);
  sub_24B2D2504();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8B80);
  sub_24B039184(&qword_27EFC8B88, &qword_27EFC8B78);
  sub_24B076940();
  sub_24B0769FC(qword_27EFC8BA0, sub_24AFFF54C);
  sub_24B2D4EE4();
}

double sub_24B075628@<D0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = v3;
  sub_24B2D14A4();
  v5 = sub_24B2D1494();
  (*(*(v5 - 8) + 56))(a2, 0, 1, v5);
  type metadata accessor for PlatterWithIcon.Icon(0);
  swift_storeEnumTagMultiPayload();
  v6 = [objc_opt_self() systemGray2Color];
  sub_24B2D4B94();
  v7 = sub_24B2D34A4();
  *&v12 = sub_24B2D4B04();
  v8 = sub_24B2D34A4();
  v9 = a2 + *(type metadata accessor for PlatterWithIcon(0) + 20);
  *v9 = v7;
  *(v9 + 8) = 0;
  *(v9 + 16) = v8;
  *(v9 + 24) = 0x4010000000000000;
  *(v9 + 40) = 0;
  *(v9 + 48) = 0;
  *(v9 + 32) = 0;
  sub_24B2D5064();
  sub_24B2D3494();

  v10 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8B80) + 36));
  *v10 = v12;
  v10[1] = v13;
  result = *&v14;
  v10[2] = v14;
  return result;
}

uint64_t sub_24B075830@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Friend();
  v46 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8B00);
  v49 = *(v7 - 8);
  v50 = v7;
  MEMORY[0x28223BE20](v7);
  v48 = &v43 - v8;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8B08);
  v9 = MEMORY[0x28223BE20](v53);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v47 = &v43 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8B10);
  v14 = MEMORY[0x28223BE20](v13);
  v54 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v43 - v17;
  MEMORY[0x28223BE20](v16);
  v51 = &v43 - v19;
  sub_24B2D5694();
  v52 = sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v20 = a1;
  v21 = *(a1 + 32);
  v22 = *(v21 + 16);
  v23 = MEMORY[0x277D84F90];
  v55 = a2;
  if (v22)
  {
    v44 = v13;
    v45 = v11;
    v56 = MEMORY[0x277D84F90];
    sub_24B2D5CF4();
    v24 = v21 + ((*(v46 + 80) + 32) & ~*(v46 + 80));
    v25 = *(v46 + 72);
    do
    {
      sub_24B00D804(v24, v6);
      v26 = *&v6[*(v4 + 28)];
      sub_24B00D868(v6);
      sub_24B2D5CC4();
      sub_24B2D5D04();
      sub_24B2D5D14();
      sub_24B2D5CD4();
      v24 += v25;
      --v22;
    }

    while (v22);
    v23 = v56;
    v13 = v44;
    v11 = v45;
  }

  v27 = *(v20 + 40);
  *v18 = sub_24B2D3CD4();
  *(v18 + 1) = 0xC038000000000000;
  v18[16] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8B18);
  sub_24B075300(v23, v27);

  if (qword_27EFC7608 != -1)
  {
    swift_once();
  }

  v28 = &v18[*(v13 + 36)];
  *v28 = qword_27EFE44C8;
  *(v28 + 1) = sub_24B075808;
  *(v28 + 2) = 0;
  v29 = v51;
  v30 = sub_24B076688(v18, v51);
  v31 = MEMORY[0x28223BE20](v30);
  *(&v43 - 2) = v20;
  MEMORY[0x28223BE20](v31);
  *(&v43 - 2) = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8B20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8B28);
  sub_24B076708();
  sub_24B0767C0();
  v32 = v48;
  sub_24B2D4C34();
  sub_24B039184(&qword_27EFC8B50, &qword_27EFC8B00);
  sub_24B076874();
  v33 = v47;
  v34 = v50;
  sub_24B2D46C4();
  (*(v49 + 8))(v32, v34);
  sub_24B2D4394();
  sub_24B2D43E4();
  v35 = sub_24B2D4424();

  KeyPath = swift_getKeyPath();
  v37 = (v33 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8B60) + 36));
  *v37 = KeyPath;
  v37[1] = v35;
  v38 = sub_24B2D3FD4();
  v39 = v54;
  *(v33 + *(v53 + 36)) = v38;
  sub_24B0768C8(v29, v39);
  sub_24AFD7A3C(v33, v11);
  v40 = v55;
  sub_24B0768C8(v39, v55);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8B68);
  sub_24AFD7A3C(v11, v40 + *(v41 + 48));
  sub_24AFF8258(v33, &qword_27EFC8B08);
  sub_24AFF8258(v29, &qword_27EFC8B10);
  sub_24AFF8258(v11, &qword_27EFC8B08);
  sub_24AFF8258(v39, &qword_27EFC8B10);
}

uint64_t sub_24B075EA4@<X0>(uint64_t a1@<X8>)
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_24AFFE0A4();

  v2 = sub_24B2D4604();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  KeyPath = swift_getKeyPath();

  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v8;
  *(a1 + 32) = KeyPath;
  *(a1 + 40) = 1;
  return result;
}

uint64_t sub_24B075FAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24B2D3694();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8B28);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v14 - v9;
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (*(a1 + 24))
  {
    v14[0] = a2;
    sub_24B2D5684();
    sub_24B2D5604();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v14[1] = sub_24B2D4BC4();
    sub_24B2D3674();
    sub_24B2D4714();
    (*(v5 + 8))(v7, v4);

    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8B70);
    (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
    a2 = v14[0];
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8B70);
    (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
  }

  sub_24AFD7AAC(v10, a2);
}