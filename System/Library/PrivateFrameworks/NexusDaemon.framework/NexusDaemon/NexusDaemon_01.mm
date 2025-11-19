unint64_t sub_25C466618()
{
  result = sub_25C4C7E00();
  if (v1 <= 0x3F)
  {
    result = sub_25C4663EC();
    if (v2 <= 0x3F)
    {
      result = sub_25C46643C();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_25C4666F8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_25C466758(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_25C4667D8(void (*a1)(uint64_t, uint64_t, unint64_t))
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a1(v3, 0x74756F656D6974, 0xE700000000000000);
  }

  return result;
}

uint64_t sub_25C46685C(int a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    if (a1 == 1)
    {
      sub_25C45E3B8(a2);
    }

    else if (!a1)
    {
      if (a3)
      {
        swift_unknownObjectRetain();
        swift_getObjectType();
        v8 = sub_25C4C86C0();
        v123 = v7;
        if (v9)
        {
          v10 = v9;
          v121 = v8;
          v11 = sub_25C4C86C0();
          v122 = v12;
          v13 = MEMORY[0x277D84FA0];
          v133 = MEMORY[0x277D84FA0];
          xdict = a3;
          v14 = xpc_dictionary_get_dictionary(a3, "operations");
          v15 = swift_getExistentialTypeMetadata;
          if (!v14)
          {
            v119 = 0;
LABEL_20:
            v132 = v13;
            v33 = xpc_dictionary_get_dictionary(xdict, "requests");
            if (v33)
            {
              v34 = v33;
              v35 = swift_allocObject();
              *(v35 + 16) = &v132;
              v36 = swift_allocObject();
              v118 = sub_25C4675F8;
              *(v36 + 16) = sub_25C4675F8;
              *(v36 + 24) = v35;
              v128 = sub_25C46760C;
              v129 = v36;
              aBlock = MEMORY[0x277D85DD0];
              v125 = *(v15 + 256);
              v126 = sub_25C461B14;
              v127 = &block_descriptor_65;
              v37 = _Block_copy(&aBlock);

              xpc_dictionary_apply(v34, v37);
              swift_unknownObjectRelease();
              _Block_release(v37);
              LOBYTE(v34) = swift_isEscapingClosureAtFileLocation();

              if ((v34 & 1) == 0)
              {
LABEL_24:
                v38 = v122;
                if (qword_27FC0AC40 != -1)
                {
                  goto LABEL_86;
                }

LABEL_25:
                v39 = sub_25C4C7BD0();
                __swift_project_value_buffer(v39, qword_27FC0AC48);

                v40 = sub_25C4C7BB0();
                v41 = sub_25C4C8720();

                if (os_log_type_enabled(v40, v41))
                {
                  v42 = swift_slowAlloc();
                  v117 = swift_slowAlloc();
                  aBlock = v117;
                  *v42 = 136315906;
                  *(v42 + 4) = sub_25C458990(v121, v10, &aBlock);
                  *(v42 + 12) = 2080;
                  v43 = v11;
                  if (v122)
                  {
                    v44 = v122;
                  }

                  else
                  {
                    v11 = 7104878;
                    v44 = 0xE300000000000000;
                  }

                  v45 = sub_25C458990(v11, v44, &aBlock);

                  *(v42 + 14) = v45;
                  *(v42 + 22) = 2080;
                  swift_beginAccess();

                  v46 = sub_25C4C8620();
                  v48 = v47;

                  v49 = sub_25C458990(v46, v48, &aBlock);

                  *(v42 + 24) = v49;
                  *(v42 + 32) = 2080;
                  v38 = v122;
                  swift_beginAccess();

                  v50 = sub_25C4C8620();
                  v52 = v51;

                  v53 = sub_25C458990(v50, v52, &aBlock);
                  v7 = v123;

                  *(v42 + 34) = v53;
                  _os_log_impl(&dword_25C452000, v40, v41, "Add subscriber: id=%s, ids=%s, operations=%s, request=%s", v42, 0x2Au);
                  swift_arrayDestroy();
                  MEMORY[0x25F888630](v117, -1, -1);
                  v54 = v42;
                  v55 = v121;
                  MEMORY[0x25F888630](v54, -1, -1);
                }

                else
                {

                  v55 = v121;
                  v43 = v11;
                }

                swift_beginAccess();
                v56 = v133;
                swift_beginAccess();
                v57 = v132;
                type metadata accessor for NXXPCSubscriberInfo();
                v11 = swift_allocObject();
                *(v11 + 16) = v55;
                *(v11 + 24) = v10;
                *(v11 + 32) = v43;
                *(v11 + 40) = v38;
                *(v11 + 48) = a2;
                *(v11 + 56) = v56;
                *(v11 + 64) = v57;
                v58 = OBJC_IVAR____TtC11NexusDaemon14NXXPCPublisher__subscribers;
                swift_beginAccess();
                swift_retain_n();

                v59 = *(v7 + v58);
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v130 = *(v7 + v58);
                *(v7 + v58) = 0x8000000000000000;
                v61 = a2;
                a2 = v11;
                sub_25C463C84(v11, v61, isUniquelyReferenced_nonNull_native);
                *(v7 + v58) = v130;
                swift_endAccess();
                v62 = *(v11 + 40);
                if (v62)
                {
                  v63 = *(v11 + 32);
                  Strong = swift_weakLoadStrong();
                  if (Strong)
                  {
                    v11 = Strong;
                    v65 = OBJC_IVAR____TtC11NexusDaemon8NXDaemon_cloudServer;
                    swift_beginAccess();
                    v66 = *(v11 + v65);
                    if (v66)
                    {

                      v67 = v66;

                      sub_25C490F34(v63, v62, a2);
                    }

                    else
                    {
                    }
                  }
                }

                v68 = v133 + 56;
                v69 = 1 << *(v133 + 32);
                v70 = -1;
                if (v69 < 64)
                {
                  v70 = ~(-1 << v69);
                }

                v38 = v70 & *(v133 + 56);
                v71 = OBJC_IVAR____TtC11NexusDaemon14NXXPCPublisher__registeredOperations;
                v10 = (v69 + 63) >> 6;
                v121 = v133;

                v72 = 0;
                v122 = a2;
                while (1)
                {
                  if (!v38)
                  {
                    while (1)
                    {
                      v77 = v72 + 1;
                      if (__OFADD__(v72, 1))
                      {
                        __break(1u);
                        goto LABEL_81;
                      }

                      if (v77 >= v10)
                      {
                        break;
                      }

                      v38 = *(v68 + 8 * v77);
                      ++v72;
                      if (v38)
                      {
                        v72 = v77;
                        goto LABEL_46;
                      }
                    }

                    v10 = v132 + 56;
                    v93 = 1 << *(v132 + 32);
                    v94 = -1;
                    if (v93 < 64)
                    {
                      v94 = ~(-1 << v93);
                    }

                    v38 = v94 & *(v132 + 56);
                    v95 = OBJC_IVAR____TtC11NexusDaemon14NXXPCPublisher__registeredRequests;
                    v96 = (v93 + 63) >> 6;
                    v121 = v132;

                    v97 = 0;
                    while (2)
                    {
                      if (!v38)
                      {
                        while (1)
                        {
                          v102 = v97 + 1;
                          if (__OFADD__(v97, 1))
                          {
                            break;
                          }

                          if (v102 >= v96)
                          {

                            sub_25C45A2C8(v119);
                            sub_25C45A2C8(v118);
                            goto LABEL_77;
                          }

                          v38 = *(v10 + 8 * v102);
                          ++v97;
                          if (v38)
                          {
                            v97 = v102;
                            goto LABEL_66;
                          }
                        }

LABEL_81:
                        __break(1u);
LABEL_82:
                        __break(1u);
LABEL_83:
                        __break(1u);
LABEL_84:
                        __break(1u);
LABEL_85:
                        __break(1u);
LABEL_86:
                        swift_once();
                        goto LABEL_25;
                      }

LABEL_66:
                      v103 = (*(v121 + 48) + ((v97 << 10) | (16 * __clz(__rbit64(v38)))));
                      v104 = *v103;
                      v11 = v103[1];
                      swift_beginAccess();

                      v105 = *(v7 + v95);
                      a2 = swift_isUniquelyReferenced_nonNull_native();
                      v131 = *(v7 + v95);
                      v106 = v131;
                      *(v7 + v95) = 0x8000000000000000;
                      v107 = sub_25C462EC0(v104, v11);
                      v109 = v106[2];
                      v110 = (v108 & 1) == 0;
                      v86 = __OFADD__(v109, v110);
                      v111 = v109 + v110;
                      if (v86)
                      {
                        goto LABEL_83;
                      }

                      v7 = v108;
                      if (v106[3] >= v111)
                      {
                        if (a2)
                        {
                          goto LABEL_71;
                        }

                        v116 = v107;
                        sub_25C4642D4();
                        v107 = v116;
                        a2 = v122;
                        if (v7)
                        {
                          goto LABEL_59;
                        }

LABEL_72:
                        v99 = v131;
                        v131[(v107 >> 6) + 8] |= 1 << v107;
                        v113 = (v99[6] + 16 * v107);
                        *v113 = v104;
                        v113[1] = v11;
                        *(v99[7] + 8 * v107) = a2;
                        v114 = v99[2];
                        v86 = __OFADD__(v114, 1);
                        v115 = v114 + 1;
                        if (v86)
                        {
                          goto LABEL_85;
                        }

                        v99[2] = v115;
                      }

                      else
                      {
                        sub_25C462F7C(v111, a2);
                        v107 = sub_25C462EC0(v104, v11);
                        if ((v7 & 1) != (v112 & 1))
                        {
                          goto LABEL_89;
                        }

LABEL_71:
                        a2 = v122;
                        if ((v7 & 1) == 0)
                        {
                          goto LABEL_72;
                        }

LABEL_59:
                        v98 = v107;

                        v99 = v131;
                        v100 = v131[7];
                        v101 = *(v100 + 8 * v98);
                        *(v100 + 8 * v98) = a2;
                      }

                      v7 = v123;
                      v38 &= v38 - 1;
                      *(v123 + v95) = v99;
                      swift_endAccess();
                      continue;
                    }
                  }

LABEL_46:
                  v78 = (*(v121 + 48) + ((v72 << 10) | (16 * __clz(__rbit64(v38)))));
                  v79 = *v78;
                  v11 = v78[1];
                  swift_beginAccess();

                  v80 = *(v7 + v71);
                  a2 = swift_isUniquelyReferenced_nonNull_native();
                  v131 = *(v7 + v71);
                  v81 = v131;
                  *(v7 + v71) = 0x8000000000000000;
                  v82 = sub_25C462EC0(v79, v11);
                  v84 = v81[2];
                  v85 = (v83 & 1) == 0;
                  v86 = __OFADD__(v84, v85);
                  v87 = v84 + v85;
                  if (v86)
                  {
                    goto LABEL_82;
                  }

                  v7 = v83;
                  if (v81[3] < v87)
                  {
                    break;
                  }

                  if (a2)
                  {
                    goto LABEL_51;
                  }

                  v92 = v82;
                  sub_25C4642D4();
                  v82 = v92;
                  a2 = v122;
                  if (v7)
                  {
LABEL_39:
                    v73 = v82;

                    v74 = v131;
                    v75 = v131[7];
                    v76 = *(v75 + 8 * v73);
                    *(v75 + 8 * v73) = a2;

                    goto LABEL_40;
                  }

LABEL_52:
                  v74 = v131;
                  v131[(v82 >> 6) + 8] |= 1 << v82;
                  v89 = (v74[6] + 16 * v82);
                  *v89 = v79;
                  v89[1] = v11;
                  *(v74[7] + 8 * v82) = a2;
                  v90 = v74[2];
                  v86 = __OFADD__(v90, 1);
                  v91 = v90 + 1;
                  if (v86)
                  {
                    goto LABEL_84;
                  }

                  v74[2] = v91;
LABEL_40:
                  v7 = v123;
                  v38 &= v38 - 1;
                  *(v123 + v71) = v74;
                  swift_endAccess();
                }

                sub_25C462F7C(v87, a2);
                v82 = sub_25C462EC0(v79, v11);
                if ((v7 & 1) != (v88 & 1))
                {
LABEL_89:
                  result = sub_25C4C8A20();
                  __break(1u);
                  return result;
                }

LABEL_51:
                a2 = v122;
                if (v7)
                {
                  goto LABEL_39;
                }

                goto LABEL_52;
              }

              __break(1u);
            }

            v118 = 0;
            goto LABEL_24;
          }

          v16 = v14;
          v17 = v11;
          v18 = swift_allocObject();
          *(v18 + 16) = &v133;
          v19 = swift_allocObject();
          v119 = sub_25C4676E8;
          *(v19 + 16) = sub_25C4676E8;
          *(v19 + 24) = v18;
          v128 = sub_25C4676AC;
          v129 = v19;
          aBlock = MEMORY[0x277D85DD0];
          v125 = 1107296256;
          v126 = sub_25C461B14;
          v127 = &block_descriptor_75;
          v20 = _Block_copy(&aBlock);

          xpc_dictionary_apply(v16, v20);
          swift_unknownObjectRelease();
          _Block_release(v20);
          LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

          if ((v16 & 1) == 0)
          {
            v11 = v17;
            v15 = swift_getExistentialTypeMetadata;
            goto LABEL_20;
          }

          __break(1u);
        }

        else if (qword_27FC0AC40 == -1)
        {
          goto LABEL_16;
        }

        swift_once();
LABEL_16:
        v25 = sub_25C4C7BD0();
        __swift_project_value_buffer(v25, qword_27FC0AC48);
        swift_unknownObjectRetain();
        v26 = sub_25C4C7BB0();
        v27 = sub_25C4C8710();
        swift_unknownObjectRelease();
        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          v29 = swift_slowAlloc();
          aBlock = v29;
          *v28 = 134218242;
          *(v28 + 4) = a2;
          *(v28 + 12) = 2080;
          v30 = sub_25C4C8690();
          v32 = sub_25C458990(v30, v31, &aBlock);

          *(v28 + 14) = v32;
          _os_log_impl(&dword_25C452000, v26, v27, "### Add subscriber without ID: token=%llu, config=%s", v28, 0x16u);
          __swift_destroy_boxed_opaque_existential_0(v29);
          MEMORY[0x25F888630](v29, -1, -1);
          MEMORY[0x25F888630](v28, -1, -1);
        }

LABEL_77:
        swift_unknownObjectRelease();
      }

      if (qword_27FC0AC40 != -1)
      {
        swift_once();
      }

      v21 = sub_25C4C7BD0();
      __swift_project_value_buffer(v21, qword_27FC0AC48);
      v22 = sub_25C4C7BB0();
      v23 = sub_25C4C8710();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 134217984;
        *(v24 + 4) = a2;
        _os_log_impl(&dword_25C452000, v22, v23, "### Add subscriber without object: token=%llu", v24, 0xCu);
        MEMORY[0x25F888630](v24, -1, -1);
      }
    }
  }

  return result;
}

uint64_t sub_25C46760C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1() & 1;
}

uint64_t sub_25C467638()
{
  v1 = *(v0 + 16);
  v2 = sub_25C4C85A0();
  sub_25C4647CC(&v5, v2, v3);

  return 1;
}

uint64_t sub_25C4676EC()
{
  v0 = sub_25C4C7BD0();
  __swift_allocate_value_buffer(v0, qword_27FC0AF58);
  __swift_project_value_buffer(v0, qword_27FC0AF58);
  sub_25C4C7C80();
  return sub_25C4C7BC0();
}

uint64_t NXBluetoothAdvertiserDarwin.nearbyActionFlags.setter(int a1)
{
  result = swift_beginAccess();
  *(v1 + 32) = a1;
  return result;
}

uint64_t NXBluetoothAdvertiserDarwin.nearbyActionType.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 36) = a1;
  return result;
}

uint64_t NXBluetoothAdvertiserDarwin.__allocating_init(dispatchQueue:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 32) = 0;
  *(result + 36) = 0;
  *(result + 16) = 0;
  *(result + 24) = a1;
  return result;
}

uint64_t NXBluetoothAdvertiserDarwin.init(dispatchQueue:)(uint64_t a1)
{
  *(v1 + 32) = 0;
  *(v1 + 36) = 0;
  *(v1 + 16) = 0;
  *(v1 + 24) = a1;
  return v1;
}

Swift::Void __swiftcall NXBluetoothAdvertiserDarwin.activate()()
{
  swift_beginAccess();
  if (!*(v0 + 16))
  {
    v1 = [objc_allocWithZone(MEMORY[0x277CBDFF0]) init];
    v2 = *(v0 + 16);
    *(v0 + 16) = v1;
    v3 = v1;

    [v3 setDispatchQueue_];
    swift_beginAccess();
    [v3 setNearbyActionType_];
    swift_beginAccess();
    [v3 setNearbyActionFlags_];
    v4 = swift_allocObject();
    swift_weakInit();
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    aBlock[4] = sub_25C467DFC;
    aBlock[5] = v6;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_25C45BE80;
    aBlock[3] = &block_descriptor_2;
    v7 = _Block_copy(aBlock);

    [v3 activateWithCompletion_];
    _Block_release(v7);
  }
}

Swift::Void __swiftcall NXBluetoothAdvertiserDarwin.invalidate()()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  if (v1)
  {
    [v1 invalidate];
    v2 = *(v0 + 16);
    *(v0 + 16) = 0;
  }
}

uint64_t NXBluetoothAdvertiserDarwin.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 37, 7);
}

uint64_t sub_25C467BE8(int a1)
{
  result = swift_beginAccess();
  *(v1 + 32) = a1;
  return result;
}

uint64_t sub_25C467C5C(char a1)
{
  result = swift_beginAccess();
  *(v1 + 36) = a1;
  return result;
}

void sub_25C467CF0()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  if (v1)
  {
    [v1 invalidate];
    v2 = *(v0 + 16);
    *(v0 + 16) = 0;
  }
}

uint64_t sub_25C467D4C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25C467D84()
{
  MEMORY[0x25F8886B0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25C467DBC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_25C467DFC(void *a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v6 = Strong;
  swift_beginAccess();
  v7 = swift_unknownObjectWeakLoadStrong();
  if (!v7)
  {
LABEL_6:

    return;
  }

  v8 = v7;
  swift_beginAccess();
  v9 = *(v6 + 16);
  if (!v9 || v8 != v9 || !a1)
  {

    goto LABEL_6;
  }

  v10 = a1;
  if (qword_27FC0AF50 != -1)
  {
    swift_once();
  }

  v11 = sub_25C4C7BD0();
  __swift_project_value_buffer(v11, qword_27FC0AF58);
  v12 = a1;
  v13 = sub_25C4C7BB0();
  v14 = sub_25C4C8710();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v21 = v16;
    *v15 = 136315138;
    swift_getErrorValue();
    v17 = sub_25C4C8A30();
    v19 = sub_25C458990(v17, v18, &v21);

    *(v15 + 4) = v19;
    _os_log_impl(&dword_25C452000, v13, v14, "### Bluetooth setup advertiser start failed: error=%s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x25F888630](v16, -1, -1);
    MEMORY[0x25F888630](v15, -1, -1);
  }

  [v8 invalidate];
  v20 = *(v6 + 16);
  *(v6 + 16) = 0;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_25C468160(uint64_t a1, unint64_t *a2)
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

_DWORD *sub_25C4681AC@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

BOOL sub_25C46820C(_DWORD *a1, int *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

_DWORD *sub_25C46823C@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 4) = v3 == 0;
  return result;
}

int *sub_25C468268@<X0>(int *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 4) = v5 == 0;
  return result;
}

uint64_t sub_25C468368@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = sub_25C4684BC(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_25C468410(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CBNearbyActionFlags(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25C4684BC(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = result;
  LODWORD(result) = 0;
  v3 = (v2 + 32);
  do
  {
    v5 = *v3++;
    v4 = v5;
    if ((v5 & ~result) == 0)
    {
      v4 = 0;
    }

    result = v4 | result;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_25C4684F8()
{
  v0 = sub_25C4C7BD0();
  __swift_allocate_value_buffer(v0, qword_27FC0B1F8);
  __swift_project_value_buffer(v0, qword_27FC0B1F8);
  sub_25C4C7C80();
  return sub_25C4C7BC0();
}

uint64_t sub_25C468564(uint64_t a1)
{
  v2 = swift_allocObject();
  swift_weakInit();
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  swift_beginAccess();
  swift_weakAssign();
  v3 = *(a1 + 16);

  *(v2 + 24) = v3;
  return v2;
}

uint64_t sub_25C4685F8()
{
  v1 = v0;
  if (qword_27FC0B1F0 != -1)
  {
    swift_once();
  }

  v2 = sub_25C4C7BD0();
  __swift_project_value_buffer(v2, qword_27FC0B1F8);
  v3 = sub_25C4C7BB0();
  v4 = sub_25C4C8700();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_25C452000, v3, v4, "deinit", v5, 2u);
    MEMORY[0x25F888630](v5, -1, -1);
  }

  swift_weakDestroy();
  v6 = *(v1 + 48);
  sub_25C45C5F0(*(v1 + 40));
  return v1;
}

uint64_t sub_25C4686F0()
{
  sub_25C4685F8();

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t sub_25C468724()
{
  v1 = v0;
  v2 = sub_25C4C7FF0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 32;
  v7 = sub_25C4C84C0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = (v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0) + 32);
  v12 = *(v1 + 24);
  *v11 = v12;
  (*(v8 + 104))(v11, *MEMORY[0x277D85200], v7);
  v13 = v12;
  LOBYTE(v12) = sub_25C4C84E0();
  (*(v8 + 8))(v11, v7);
  if (v12)
  {
    if (qword_27FC0B1F0 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v14 = sub_25C4C7BD0();
  __swift_project_value_buffer(v14, qword_27FC0B1F8);
  v15 = sub_25C4C7BB0();
  v16 = sub_25C4C8720();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_25C452000, v15, v16, "Activate", v17, 2u);
    MEMORY[0x25F888630](v17, -1, -1);
  }

  swift_allocObject();
  swift_weakInit();
  sub_25C4C7FE0();
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    return (*(v3 + 8))(v6, v2);
  }

  v21[3] = v2;
  v21[4] = sub_25C4693DC(&qword_27FC0A3B0, 255, MEMORY[0x277D35828]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21);
  (*(v3 + 16))(boxed_opaque_existential_1, v6, v2);
  sub_25C4886CC(v21, 0x6E6F6D656144584ELL, 0xE800000000000000);
  (*(v3 + 8))(v6, v2);

  return __swift_destroy_boxed_opaque_existential_0(v21);
}

uint64_t sub_25C468BD0(void (*a1)(uint64_t *))
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FC0A3C0, &qword_25C4CA050);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v15[-v4];
  v6 = sub_25C4C84C0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v15[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = *(result + 24);
    *v10 = v12;
    (*(v7 + 104))(v10, *MEMORY[0x277D85200], v6);
    v13 = v12;
    LOBYTE(v12) = sub_25C4C84E0();
    result = (*(v7 + 8))(v10, v6);
    if (v12)
    {
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        NXDaemon.description.getter();
        sub_25C4C8010();
        swift_storeEnumTagMultiPayload();
        a1(v5);
      }

      else
      {
        v14 = objc_allocWithZone(sub_25C4C7B80());
        *v5 = sub_25C4C7B90();
        swift_storeEnumTagMultiPayload();
        a1(v5);
      }

      return sub_25C469448(v5);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_25C468E38()
{
  v1 = v0;
  v2 = sub_25C4C84C0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + 24);
  *v6 = v7;
  (*(v3 + 104))(v6, *MEMORY[0x277D85200], v2);
  v8 = v7;
  LOBYTE(v7) = sub_25C4C84E0();
  (*(v3 + 8))(v6, v2);
  if (v7)
  {
    if (qword_27FC0B1F0 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v9 = sub_25C4C7BD0();
  __swift_project_value_buffer(v9, qword_27FC0B1F8);
  v10 = sub_25C4C7BB0();
  v11 = sub_25C4C8720();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_25C452000, v10, v11, "Invalidate", v12, 2u);
    MEMORY[0x25F888630](v12, -1, -1);
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v13 = sub_25C4C8000();
    sub_25C488F8C(v13);
  }

  *(v1 + 32) = 1;
  return sub_25C469060();
}

uint64_t sub_25C469060()
{
  v1 = v0;
  v2 = sub_25C4C84C0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + 24);
  *v6 = v7;
  (*(v3 + 104))(v6, *MEMORY[0x277D85200], v2);
  v8 = v7;
  LOBYTE(v7) = sub_25C4C84E0();
  result = (*(v3 + 8))(v6, v2);
  if ((v7 & 1) == 0)
  {
    __break(1u);
LABEL_12:
    swift_once();
    goto LABEL_4;
  }

  if (*(v1 + 32) != 1)
  {
    return result;
  }

  if (qword_27FC0B1F0 != -1)
  {
    goto LABEL_12;
  }

LABEL_4:
  v10 = sub_25C4C7BD0();
  __swift_project_value_buffer(v10, qword_27FC0B1F8);
  v11 = sub_25C4C7BB0();
  v12 = sub_25C4C8720();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_25C452000, v11, v12, "Invalidated", v13, 2u);
    MEMORY[0x25F888630](v13, -1, -1);
  }

  swift_beginAccess();
  v14 = *(v1 + 40);
  if (v14)
  {
    v15 = *(v1 + 48);

    v14(v16);
    sub_25C45C5F0(v14);
    v17 = *(v1 + 40);
  }

  else
  {
    v17 = 0;
  }

  v18 = *(v1 + 48);
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  return sub_25C45C5F0(v17);
}

uint64_t sub_25C4692D8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_25C469384(uint64_t a1, uint64_t a2)
{
  result = sub_25C4693DC(&qword_27FC0A3B8, a2, type metadata accessor for NXDiagnosticsManager);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25C4693DC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_25C469448(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FC0A3C0, &qword_25C4CA050);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25C4694B0()
{
  v0 = sub_25C4C7BD0();
  __swift_allocate_value_buffer(v0, qword_27FC0B318);
  __swift_project_value_buffer(v0, qword_27FC0B318);
  sub_25C4C7C80();
  return sub_25C4C7BC0();
}

uint64_t NXXPCConnection._entitled.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 48) = a1;
  return result;
}

uint64_t sub_25C4695F0@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 64);
  v5 = *(v3 + 72);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_25C45C53C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_25C45A2B8(v4);
}

uint64_t sub_25C469684(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_25C45C514;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 64);
  v9 = *(v7 + 72);
  *(v7 + 64) = v6;
  *(v7 + 72) = v5;
  sub_25C45A2B8(v3);
  return sub_25C45A2C8(v8);
}

uint64_t NXXPCConnection.invalidationHandler.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  sub_25C45A2B8(v1);
  return v1;
}

uint64_t NXXPCConnection.invalidationHandler.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 64);
  v6 = *(v2 + 72);
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return sub_25C45A2C8(v5);
}

uint64_t sub_25C469834()
{
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A3D0, &qword_25C4CA058);
  v36 = *(v39 - 8);
  v1 = *(v36 + 64);
  v2 = MEMORY[0x28223BE20](v39);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v37 = &v34 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A3D8, &qword_25C4CA060);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v35 = &v34 - v8;
  swift_beginAccess();
  v9 = *(v0 + 136);
  v12 = *(v9 + 64);
  v11 = v9 + 64;
  v10 = v12;
  v13 = 1 << *(*(v0 + 136) + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v10;
  v16 = (v13 + 63) >> 6;
  v38 = *(v0 + 136);
  result = swift_bridgeObjectRetain_n();
  v18 = 0;
  if (v15)
  {
    while (1)
    {
      v19 = v18;
LABEL_8:
      v20 = __clz(__rbit64(v15)) | (v19 << 6);
      v21 = v38;
      v22 = *(v38 + 48);
      v23 = sub_25C4C7B20();
      v24 = *(v23 - 8);
      v25 = v22 + *(v24 + 72) * v20;
      v26 = v37;
      (*(v24 + 16))(v37, v25, v23);
      v27 = *(*(v21 + 56) + 8 * v20);
      v28 = v39;
      *(v26 + *(v39 + 48)) = v27;
      sub_25C465DA4(v26, v4, &qword_27FC0A3D0, &qword_25C4CA058);
      v29 = *&v4[*(v28 + 48)];
      v30 = OBJC_IVAR____TtC11NexusDaemon14NXServerDaemon_needsNetwork;
      swift_beginAccess();
      if (*(v29 + v30) == 1)
      {
        break;
      }

      v15 &= v15 - 1;

      result = sub_25C4666F8(v4, &qword_27FC0A3D0, &qword_25C4CA058);
      v18 = v19;
      if (!v15)
      {
        goto LABEL_5;
      }
    }

    v32 = v35;
    sub_25C465DA4(v4, v35, &qword_27FC0A3D0, &qword_25C4CA058);
    v31 = v36;
    (*(v36 + 56))(v32, 0, 1, v39);
LABEL_12:

    v33 = (*(v31 + 48))(v32, 1, v39) != 1;
    sub_25C4666F8(v32, &qword_27FC0A3D8, &qword_25C4CA060);
    return v33;
  }

  else
  {
LABEL_5:
    while (1)
    {
      v19 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v19 >= v16)
      {

        v32 = v35;
        v31 = v36;
        (*(v36 + 56))(v35, 1, 1, v39);
        goto LABEL_12;
      }

      v15 = *(v11 + 8 * v19);
      ++v18;
      if (v15)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_25C469BA4(_xpc_connection_s *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_25C469BF4(a1, a2);
  return v4;
}

uint64_t sub_25C469BF4(_xpc_connection_s *a1, uint64_t a2)
{
  *(v2 + 16) = 0;
  *(v2 + 24) = 0xE000000000000000;
  *(v2 + 48) = 0;
  v5 = CUNextID64();
  *(v2 + 96) = 0;
  *(v2 + 64) = 0;
  *(v2 + 72) = 0;
  *(v2 + 56) = v5;
  v6 = MEMORY[0x277D84F98];
  *(v2 + 104) = MEMORY[0x277D84F98];
  *(v2 + 112) = v6;
  *(v2 + 120) = v6;
  *(v2 + 128) = v6;
  *(v2 + 136) = v6;
  v7 = *(a2 + 16);
  *(v2 + 40) = v7;
  v8 = v7;
  *(v2 + 80) = xpc_connection_get_pid(a1);
  *(v2 + 32) = a2;
  *(v2 + 88) = a1;
  return v2;
}

uint64_t NXXPCConnection.deinit()
{
  v1 = v0;
  if (qword_27FC0B310 != -1)
  {
    swift_once();
  }

  v2 = sub_25C4C7BD0();
  __swift_project_value_buffer(v2, qword_27FC0B318);
  v3 = sub_25C4C7BB0();
  v4 = sub_25C4C8700();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_25C452000, v3, v4, "deinit", v5, 2u);
    MEMORY[0x25F888630](v5, -1, -1);
  }

  v6 = *(v1 + 24);

  v7 = *(v1 + 32);

  v8 = *(v1 + 72);
  sub_25C45A2C8(*(v1 + 64));
  v9 = *(v1 + 88);
  swift_unknownObjectRelease();
  v10 = *(v1 + 104);

  v11 = *(v1 + 112);

  v12 = *(v1 + 120);

  v13 = *(v1 + 128);

  v14 = *(v1 + 136);

  return v1;
}

uint64_t NXXPCConnection.__deallocating_deinit()
{
  NXXPCConnection.deinit();

  return MEMORY[0x2821FE8D8](v0, 144, 7);
}

uint64_t sub_25C469DEC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v8 = *(v2 + 16);
  v9 = *(v2 + 24);

  MEMORY[0x25F887A50](a1, a2);
  v7 = *(v2 + 80);
  v5 = sub_25C4C89A0();
  MEMORY[0x25F887A50](v5);

  return v8;
}

uint64_t sub_25C469EC4()
{
  v1 = v0;
  v39[1] = *MEMORY[0x277D85DE8];
  v2 = sub_25C4C84C0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + 40);
  *v6 = v7;
  (*(v3 + 104))(v6, *MEMORY[0x277D85200], v2);
  v8 = v7;
  LOBYTE(v7) = sub_25C4C84E0();
  (*(v3 + 8))(v6, v2);
  if (v7)
  {
    v37 = 0u;
    v38 = 0u;
    v9 = *(v1 + 88);
    xpc_connection_get_audit_token();
    v10 = xpc_copy_entitlement_for_token();
    if (v10)
    {
      swift_unknownObjectRetain();
      sub_25C4C7C60();
      v11 = sub_25C4C8570();

      v12 = xpc_dictionary_get_BOOL(v10, (v11 + 32));

      swift_unknownObjectRelease();
      swift_beginAccess();
      *(v1 + 48) = v12;
      v13 = swift_unknownObjectRetain();
      if (xpc_dictionary_get_string(v13, "application-identifier"))
      {
        v14 = sub_25C4C85A0();
        v16 = v15;
        swift_unknownObjectRelease();
        swift_beginAccess();
        v17 = *(v1 + 24);
        *(v1 + 16) = v14;
        *(v1 + 24) = v16;

        goto LABEL_8;
      }

      swift_unknownObjectRelease();
    }

    v18 = xpc_copy_code_signing_identity_for_token();
    if (v18)
    {
      v19 = v18;
      v20 = sub_25C4C85A0();
      v22 = v21;
      swift_beginAccess();
      v23 = *(v1 + 24);
      *(v1 + 16) = v20;
      *(v1 + 24) = v22;

      free(v19);
    }

LABEL_8:
    if (qword_27FC0B310 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_13;
  }

  __break(1u);
LABEL_13:
  swift_once();
LABEL_9:
  v24 = sub_25C4C7BD0();
  __swift_project_value_buffer(v24, qword_27FC0B318);

  v25 = sub_25C4C7BB0();
  v26 = sub_25C4C8720();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v39[0] = v28;
    *v27 = 136315138;
    swift_beginAccess();
    v29 = *(v1 + 24);
    v35 = *(v1 + 16);
    v36 = v29;

    MEMORY[0x25F887A50](58, 0xE100000000000000);
    v34[3] = *(v1 + 80);
    v30 = sub_25C4C89A0();
    MEMORY[0x25F887A50](v30);

    v31 = sub_25C458990(v35, v36, v39);

    *(v27 + 4) = v31;
    _os_log_impl(&dword_25C452000, v25, v26, "XPC connection started: client=%s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v28);
    MEMORY[0x25F888630](v28, -1, -1);
    MEMORY[0x25F888630](v27, -1, -1);
  }

  result = swift_unknownObjectRelease();
  v33 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25C46A2AC()
{
  v1 = sub_25C4C84C0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = (&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + 40);
  *v5 = v6;
  (*(v2 + 104))(v5, *MEMORY[0x277D85200], v1);
  v7 = v6;
  LOBYTE(v6) = sub_25C4C84E0();
  (*(v2 + 8))(v5, v1);
  if (v6)
  {
    if ((*(v0 + 96) & 1) == 0)
    {
      xpc_connection_cancel(*(v0 + 88));
    }

    sub_25C46A3D8();
    sub_25C46A7A8();
    sub_25C46AB78();
    sub_25C46AF68();
    sub_25C46B368();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_25C46A3D8()
{
  v45 = sub_25C4C7B20();
  v1 = *(v45 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v45);
  v41 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A510, &qword_25C4CA238);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v35 - v9;
  swift_beginAccess();
  v11 = *(v0 + 104);
  v12 = *(v11 + 64);
  v36 = v11 + 64;
  v13 = 1 << *(v11 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v12;
  v16 = (v13 + 63) >> 6;
  v37 = v1 + 32;
  v38 = v1 + 16;
  v42 = v1;
  v43 = v11;
  v44 = (v1 + 8);

  v18 = 0;
  v39 = v10;
  v40 = v8;
  v19 = v41;
  if (v15)
  {
    while (1)
    {
      v20 = v18;
LABEL_12:
      v23 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v24 = v23 | (v20 << 6);
      v26 = v42;
      v25 = v43;
      v27 = v45;
      (*(v42 + 16))(v19, *(v43 + 48) + *(v42 + 72) * v24, v45);
      v28 = *(*(v25 + 56) + 8 * v24);
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FC0A518, &qword_25C4CA240);
      v30 = *(v29 + 48);
      v31 = *(v26 + 32);
      v8 = v40;
      v31(v40, v19, v27);
      *&v8[v30] = v28;
      (*(*(v29 - 8) + 56))(v8, 0, 1, v29);

      v22 = v20;
      v10 = v39;
LABEL_13:
      sub_25C465DA4(v8, v10, &qword_27FC0A510, &qword_25C4CA238);
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FC0A518, &qword_25C4CA240);
      if ((*(*(v32 - 8) + 48))(v10, 1, v32) == 1)
      {
      }

      v33 = *&v10[*(v32 + 48)];
      sub_25C479898();

      result = (*v44)(v10, v45);
      v18 = v22;
      if (!v15)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    if (v16 <= v18 + 1)
    {
      v21 = v18 + 1;
    }

    else
    {
      v21 = v16;
    }

    v22 = v21 - 1;
    while (1)
    {
      v20 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v20 >= v16)
      {
        v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FC0A518, &qword_25C4CA240);
        (*(*(v34 - 8) + 56))(v8, 1, 1, v34);
        v15 = 0;
        goto LABEL_13;
      }

      v15 = *(v36 + 8 * v20);
      ++v18;
      if (v15)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_25C46A7A8()
{
  v45 = sub_25C4C7B20();
  v1 = *(v45 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v45);
  v41 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A500, &qword_25C4CA228);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v35 - v9;
  swift_beginAccess();
  v11 = *(v0 + 112);
  v12 = *(v11 + 64);
  v36 = v11 + 64;
  v13 = 1 << *(v11 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v12;
  v16 = (v13 + 63) >> 6;
  v37 = v1 + 32;
  v38 = v1 + 16;
  v42 = v1;
  v43 = v11;
  v44 = (v1 + 8);

  v18 = 0;
  v39 = v10;
  v40 = v8;
  v19 = v41;
  if (v15)
  {
    while (1)
    {
      v20 = v18;
LABEL_12:
      v23 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v24 = v23 | (v20 << 6);
      v26 = v42;
      v25 = v43;
      v27 = v45;
      (*(v42 + 16))(v19, *(v43 + 48) + *(v42 + 72) * v24, v45);
      v28 = *(*(v25 + 56) + 8 * v24);
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A508, &qword_25C4CA230);
      v30 = *(v29 + 48);
      v31 = *(v26 + 32);
      v8 = v40;
      v31(v40, v19, v27);
      *&v8[v30] = v28;
      (*(*(v29 - 8) + 56))(v8, 0, 1, v29);

      v22 = v20;
      v10 = v39;
LABEL_13:
      sub_25C465DA4(v8, v10, &qword_27FC0A500, &qword_25C4CA228);
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A508, &qword_25C4CA230);
      if ((*(*(v32 - 8) + 48))(v10, 1, v32) == 1)
      {
      }

      v33 = *&v10[*(v32 + 48)];
      sub_25C47F1B8();

      result = (*v44)(v10, v45);
      v18 = v22;
      if (!v15)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    if (v16 <= v18 + 1)
    {
      v21 = v18 + 1;
    }

    else
    {
      v21 = v16;
    }

    v22 = v21 - 1;
    while (1)
    {
      v20 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v20 >= v16)
      {
        v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A508, &qword_25C4CA230);
        (*(*(v34 - 8) + 56))(v8, 1, 1, v34);
        v15 = 0;
        goto LABEL_13;
      }

      v15 = *(v36 + 8 * v20);
      ++v18;
      if (v15)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_25C46AB78()
{
  v48 = sub_25C4C7B20();
  v1 = *(v48 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v48);
  v44 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A3D8, &qword_25C4CA060);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v38 - v9;
  swift_beginAccess();
  v11 = *(v0 + 136);
  v12 = *(v11 + 64);
  v38 = v0;
  v39 = v11 + 64;
  v13 = 1 << *(v11 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v12;
  v16 = (v13 + 63) >> 6;
  v40 = v1 + 32;
  v41 = v1 + 16;
  v45 = v1;
  v46 = v11;
  v47 = (v1 + 8);

  v18 = 0;
  v42 = v10;
  v43 = v8;
  v19 = v44;
  if (v15)
  {
    while (1)
    {
      v20 = v18;
LABEL_12:
      v23 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v24 = v23 | (v20 << 6);
      v26 = v45;
      v25 = v46;
      v27 = v48;
      (*(v45 + 16))(v19, *(v46 + 48) + *(v45 + 72) * v24, v48);
      v28 = *(*(v25 + 56) + 8 * v24);
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A3D0, &qword_25C4CA058);
      v30 = *(v29 + 48);
      v31 = *(v26 + 32);
      v8 = v43;
      v31(v43, v19, v27);
      *&v8[v30] = v28;
      (*(*(v29 - 8) + 56))(v8, 0, 1, v29);

      v22 = v20;
      v10 = v42;
LABEL_13:
      sub_25C465DA4(v8, v10, &qword_27FC0A3D8, &qword_25C4CA060);
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A3D0, &qword_25C4CA058);
      if ((*(*(v32 - 8) + 48))(v10, 1, v32) == 1)
      {
        break;
      }

      v33 = *&v10[*(v32 + 48)];
      sub_25C4548F4();

      result = (*v47)(v10, v48);
      v18 = v22;
      if (!v15)
      {
        goto LABEL_5;
      }
    }

    v35 = v38;
    v36 = *(v38 + 136);
    *(v38 + 136) = MEMORY[0x277D84F98];

    v37 = *(v35 + 32);
    return sub_25C485248();
  }

  else
  {
LABEL_5:
    if (v16 <= v18 + 1)
    {
      v21 = v18 + 1;
    }

    else
    {
      v21 = v16;
    }

    v22 = v21 - 1;
    while (1)
    {
      v20 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v20 >= v16)
      {
        v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A3D0, &qword_25C4CA058);
        (*(*(v34 - 8) + 56))(v8, 1, 1, v34);
        v15 = 0;
        goto LABEL_13;
      }

      v15 = *(v39 + 8 * v20);
      ++v18;
      if (v15)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_25C46AF68()
{
  v47 = sub_25C4C7B20();
  v1 = *(v47 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v47);
  v43 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A4F0, &unk_25C4CACE0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v35 - v9;
  swift_beginAccess();
  v11 = *(v0 + 120);
  v12 = *(v11 + 64);
  v38 = v11 + 64;
  v13 = 1 << *(v11 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v12;
  v36 = v0;
  v37 = (v13 + 63) >> 6;
  v39 = v1 + 32;
  v40 = v1 + 16;
  v44 = v1;
  v45 = v11;
  v46 = (v1 + 8);

  v17 = 0;
  v41 = v10;
  v42 = v8;
  v18 = v43;
  if (v15)
  {
    while (1)
    {
      v19 = v17;
LABEL_12:
      v22 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v23 = v22 | (v19 << 6);
      v25 = v44;
      v24 = v45;
      v26 = v47;
      (*(v44 + 16))(v18, *(v45 + 48) + *(v44 + 72) * v23, v47);
      v27 = *(*(v24 + 56) + 8 * v23);
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A4F8, &qword_25C4CA220);
      v29 = *(v28 + 48);
      v30 = *(v25 + 32);
      v8 = v42;
      v30(v42, v18, v26);
      *&v8[v29] = v27;
      (*(*(v28 - 8) + 56))(v8, 0, 1, v28);

      v21 = v19;
      v10 = v41;
LABEL_13:
      sub_25C465DA4(v8, v10, &qword_27FC0A4F0, &unk_25C4CACE0);
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A4F8, &qword_25C4CA220);
      if ((*(*(v31 - 8) + 48))(v10, 1, v31) == 1)
      {
        break;
      }

      v32 = *&v10[*(v31 + 48)];
      sub_25C4C23B0(nullsub_1, 0);

      result = (*v46)(v10, v47);
      v17 = v21;
      if (!v15)
      {
        goto LABEL_5;
      }
    }

    v34 = *(v36 + 120);
    *(v36 + 120) = MEMORY[0x277D84F98];
  }

  else
  {
LABEL_5:
    if (v37 <= v17 + 1)
    {
      v20 = v17 + 1;
    }

    else
    {
      v20 = v37;
    }

    v21 = v20 - 1;
    while (1)
    {
      v19 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v19 >= v37)
      {
        v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A4F8, &qword_25C4CA220);
        (*(*(v33 - 8) + 56))(v8, 1, 1, v33);
        v15 = 0;
        goto LABEL_13;
      }

      v15 = *(v38 + 8 * v19);
      ++v17;
      if (v15)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_25C46B368()
{
  if (*(v0 + 96) == 1)
  {
    swift_beginAccess();
    if (!*(*(v0 + 104) + 16))
    {
      swift_beginAccess();
      if (!*(*(v0 + 112) + 16))
      {
        swift_beginAccess();
        if (!*(*(v0 + 120) + 16))
        {
          swift_beginAccess();
          if (!*(*(v0 + 136) + 16))
          {
            v1 = v0;
            if (qword_27FC0B310 != -1)
            {
              swift_once();
            }

            v2 = sub_25C4C7BD0();
            __swift_project_value_buffer(v2, qword_27FC0B318);
            v3 = sub_25C4C7BB0();
            v4 = sub_25C4C86F0();
            if (os_log_type_enabled(v3, v4))
            {
              v5 = swift_slowAlloc();
              *v5 = 0;
              _os_log_impl(&dword_25C452000, v3, v4, "Invalidated", v5, 2u);
              MEMORY[0x25F888630](v5, -1, -1);
            }

            v6 = v1;
            swift_beginAccess();
            v7 = *(v1 + 64);
            if (v7)
            {
              v8 = *(v1 + 72);

              v7(v9);
              v6 = v1;
              sub_25C45A2C8(v7);
              v10 = *(v1 + 64);
            }

            else
            {
              v10 = 0;
            }

            v11 = *(v6 + 72);
            *(v6 + 64) = 0;
            *(v6 + 72) = 0;
            sub_25C45A2C8(v10);
          }
        }
      }
    }
  }
}

xpc_object_t sub_25C46B534(void *a1)
{
  v2 = v1;
  v4 = sub_25C4C80B0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = xpc_dictionary_create_reply(a1);
  if (!result)
  {
    swift_getObjectType();
    (*(v5 + 104))(v8, *MEMORY[0x277D35858], v4);
    sub_25C4C80A0();
    (*(v5 + 8))(v8, v4);
    v10 = sub_25C4C86C0();
    v12 = v11;

    if (v12)
    {
      v13 = v10;
    }

    else
    {
      v13 = 7104878;
    }

    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = 0xE300000000000000;
    }

    if (qword_27FC0B310 != -1)
    {
      swift_once();
    }

    v15 = sub_25C4C7BD0();
    __swift_project_value_buffer(v15, qword_27FC0B318);

    v16 = sub_25C4C7BB0();
    v17 = sub_25C4C8710();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v27 = v19;
      *v18 = 136315394;
      v20 = sub_25C458990(v13, v14, &v27);

      *(v18 + 4) = v20;
      *(v18 + 12) = 2080;
      swift_beginAccess();
      v21 = *(v2 + 24);
      v25 = *(v2 + 16);
      v26 = v21;

      MEMORY[0x25F887A50](58, 0xE100000000000000);
      v24[3] = *(v2 + 80);
      v22 = sub_25C4C89A0();
      MEMORY[0x25F887A50](v22);

      v23 = sub_25C458990(v25, v26, &v27);

      *(v18 + 14) = v23;
      _os_log_impl(&dword_25C452000, v16, v17, "### XPC create reply failed: requestType='%s', client=%s", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F888630](v19, -1, -1);
      MEMORY[0x25F888630](v18, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  return result;
}

void sub_25C46B864(void *a1)
{
  v2 = v1;
  v4 = sub_25C4C84C0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = MEMORY[0x25F888910](a1);
  if (v9 == sub_25C4C7BF0())
  {
    sub_25C46BDC4(a1);
  }

  else
  {
    swift_getObjectType();
    v10 = sub_25C4C7C00();
    swift_unknownObjectRelease();
    if (v10 == a1)
    {
      if (qword_27FC0B310 != -1)
      {
        swift_once();
      }

      v21 = sub_25C4C7BD0();
      __swift_project_value_buffer(v21, qword_27FC0B318);

      v22 = sub_25C4C7BB0();
      v23 = sub_25C4C8720();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v37 = v25;
        *v24 = 136315138;
        swift_beginAccess();
        v26 = *(v2 + 24);
        v35 = *(v2 + 16);
        v36 = v26;

        MEMORY[0x25F887A50](58, 0xE100000000000000);
        v34 = *(v2 + 80);
        v27 = sub_25C4C89A0();
        MEMORY[0x25F887A50](v27);

        v28 = sub_25C458990(v35, v36, &v37);

        *(v24 + 4) = v28;
        _os_log_impl(&dword_25C452000, v22, v23, "XPC connection ended: client=%s", v24, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v25);
        MEMORY[0x25F888630](v25, -1, -1);
        MEMORY[0x25F888630](v24, -1, -1);
      }

      *(v2 + 96) = 1;
      v29 = *(v2 + 40);
      *v8 = v29;
      (*(v5 + 104))(v8, *MEMORY[0x277D85200], v4);
      v30 = v29;
      LOBYTE(v29) = sub_25C4C84E0();
      (*(v5 + 8))(v8, v4);
      if (v29)
      {
        if ((*(v2 + 96) & 1) == 0)
        {
          xpc_connection_cancel(*(v2 + 88));
        }

        sub_25C46A3D8();
        sub_25C46A7A8();
        sub_25C46AB78();
        sub_25C46AF68();
        sub_25C46B368();
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      if (qword_27FC0B310 != -1)
      {
        swift_once();
      }

      v11 = sub_25C4C7BD0();
      __swift_project_value_buffer(v11, qword_27FC0B318);

      swift_unknownObjectRetain();
      v33 = sub_25C4C7BB0();
      v12 = sub_25C4C8710();

      swift_unknownObjectRelease();
      if (os_log_type_enabled(v33, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v37 = v14;
        *v13 = 136315394;
        v15 = sub_25C4C8690();
        v17 = sub_25C458990(v15, v16, &v37);

        *(v13 + 4) = v17;
        *(v13 + 12) = 2080;
        swift_beginAccess();
        v18 = *(v2 + 24);
        v35 = *(v2 + 16);
        v36 = v18;

        MEMORY[0x25F887A50](58, 0xE100000000000000);
        v34 = *(v2 + 80);
        v19 = sub_25C4C89A0();
        MEMORY[0x25F887A50](v19);

        v20 = sub_25C458990(v35, v36, &v37);

        *(v13 + 14) = v20;
        _os_log_impl(&dword_25C452000, v33, v12, "### XPC connection error: xpc=%s, client=%s", v13, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x25F888630](v14, -1, -1);
        MEMORY[0x25F888630](v13, -1, -1);
      }

      else
      {
        v31 = v33;
      }
    }
  }
}

uint64_t sub_25C46BDC4(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A478, &qword_25C4CA1E0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v47 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v49 = &v46 - v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v46 - v10;
  v12 = sub_25C4C80B0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  (*(v13 + 104))(v16, *MEMORY[0x277D35858], v12);
  sub_25C4C80A0();
  (*(v13 + 8))(v16, v12);
  v46 = a1;
  v17 = sub_25C4C86C0();
  v19 = v18;

  if (!v19)
  {
    v25 = objc_allocWithZone(sub_25C4C7B80());
    sub_25C4C7B90();
    return swift_willThrow();
  }

  sub_25C4C7D40();
  swift_beginAccess();
  v20 = v11;
  if (*(v2 + 48) & 1) != 0 || (v21 = *(v2 + 32), swift_beginAccess(), (*(v21 + 24)))
  {
    v22 = v48;
    v23 = v49;
    if (v48)
    {
LABEL_5:
      sub_25C4666F8(v20, &qword_27FC0A478, &qword_25C4CA1E0);
    }
  }

  else
  {
    v51 = 0;
    v52 = 0xE000000000000000;
    sub_25C4C88F0();

    v51 = v17;
    v52 = v19;
    MEMORY[0x25F887A50](0xD000000000000017, 0x800000025C4D0980);
    v26 = sub_25C4C7C60();
    MEMORY[0x25F887A50](v26);

    v27 = objc_allocWithZone(sub_25C4C7B80());
    v22 = sub_25C4C7B90();
    swift_willThrow();
    v23 = v49;
    if (v22)
    {
      goto LABEL_5;
    }
  }

  v28 = v2;
  sub_25C478584(v20, v23);
  v29 = sub_25C4C7D60();
  v30 = *(v29 - 8);
  if ((*(v30 + 48))(v23, 1, v29) == 1)
  {
    goto LABEL_9;
  }

  v33 = v47;
  sub_25C478584(v23, v47);
  v34 = (*(v30 + 88))(v33, v29);
  if (v34 == *MEMORY[0x277D356C8])
  {

    sub_25C46CB9C(v46);
LABEL_14:
    sub_25C4666F8(v20, &qword_27FC0A478, &qword_25C4CA1E0);
    v32 = v23;
    return sub_25C4666F8(v32, &qword_27FC0A478, &qword_25C4CA1E0);
  }

  if (v34 == *MEMORY[0x277D356B0])
  {

    sub_25C46D730(v46);
    goto LABEL_14;
  }

  if (v34 != *MEMORY[0x277D356C0] && v34 != *MEMORY[0x277D356F8])
  {
    if (v34 == *MEMORY[0x277D35718])
    {

      sub_25C46FDD0(v46);
      goto LABEL_14;
    }

    if (v34 == *MEMORY[0x277D35728])
    {

      sub_25C470CF4(v46);
      goto LABEL_14;
    }

    if (v34 == *MEMORY[0x277D35720])
    {

      sub_25C4715BC(v46);
      goto LABEL_14;
    }

    if (v34 == *MEMORY[0x277D35710])
    {

      sub_25C471D78(v46);
      goto LABEL_14;
    }

    if (v34 == *MEMORY[0x277D35738])
    {

      sub_25C4726F8(v46);
      goto LABEL_14;
    }

    if (v34 == *MEMORY[0x277D35730])
    {

      sub_25C472E7C(v46);
      goto LABEL_14;
    }

    v35 = *MEMORY[0x277D35740];
    v48 = v20;
    if (v34 == v35)
    {

      if (qword_27FC0B310 != -1)
      {
        swift_once();
      }

      v36 = sub_25C4C7BD0();
      __swift_project_value_buffer(v36, qword_27FC0B318);

      v37 = sub_25C4C7BB0();
      v38 = sub_25C4C8720();

      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v55 = v40;
        *v39 = 136315138;
        swift_beginAccess();
        v41 = *(v28 + 24);
        v53 = *(v28 + 16);
        v54 = v41;

        MEMORY[0x25F887A50](58, 0xE100000000000000);
        v50 = *(v28 + 80);
        v42 = sub_25C4C89A0();
        MEMORY[0x25F887A50](v42);

        v43 = sub_25C458990(v53, v54, &v55);

        *(v39 + 4) = v43;
        _os_log_impl(&dword_25C452000, v37, v38, "XPC Ping: client=%s", v39, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v40);
        MEMORY[0x25F888630](v40, -1, -1);
        MEMORY[0x25F888630](v39, -1, -1);
      }

      v44 = sub_25C46B534(v46);
      if (v44)
      {
        xpc_connection_send_message(*(v28 + 88), v44);
        swift_unknownObjectRelease();
      }

LABEL_45:
      v20 = v48;
      v23 = v49;
      goto LABEL_14;
    }

    if (v34 == *MEMORY[0x277D356D0])
    {

      v45 = v22;
      sub_25C46DCF0(v46);
      goto LABEL_43;
    }

    if (v34 == *MEMORY[0x277D356E0])
    {

      v45 = v22;
      sub_25C473818(v46);
      goto LABEL_43;
    }

    if (v34 == *MEMORY[0x277D356B8])
    {

      v45 = v22;
      sub_25C47481C(v46);
      goto LABEL_43;
    }

    v20 = v48;
    v23 = v49;
    if (v34 != *MEMORY[0x277D356D8])
    {
      if (v34 == *MEMORY[0x277D35708])
      {

        v45 = v22;
        sub_25C46EC18(v46);
        goto LABEL_43;
      }

      if (v34 == *MEMORY[0x277D356F0])
      {

        v45 = v22;
        sub_25C46F810(v46);
        goto LABEL_43;
      }

      v20 = v48;
      v23 = v49;
      if (v34 != *MEMORY[0x277D35700])
      {
        if (v34 == *MEMORY[0x277D356E8])
        {

          v45 = v22;
          sub_25C46E520(v46);
LABEL_43:
          if (v45)
          {
            sub_25C4666F8(v48, &qword_27FC0A478, &qword_25C4CA1E0);
            v32 = v49;
            return sub_25C4666F8(v32, &qword_27FC0A478, &qword_25C4CA1E0);
          }

          goto LABEL_45;
        }

        (*(v30 + 8))(v47, v29);
        v20 = v48;
        v23 = v49;
      }
    }
  }

LABEL_9:
  sub_25C4666F8(v23, &qword_27FC0A478, &qword_25C4CA1E0);
  v51 = 0;
  v52 = 0xE000000000000000;
  sub_25C4C88F0();

  v51 = 0xD00000000000001BLL;
  v52 = 0x800000025C4D0690;
  MEMORY[0x25F887A50](v17, v19);

  MEMORY[0x25F887A50](39, 0xE100000000000000);
  v31 = objc_allocWithZone(sub_25C4C7B80());
  sub_25C4C7B90();
  swift_willThrow();
  v32 = v20;
  return sub_25C4666F8(v32, &qword_27FC0A478, &qword_25C4CA1E0);
}

uint64_t sub_25C46C7C4(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_25C4C80B0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27FC0B310 != -1)
  {
    swift_once();
  }

  v11 = sub_25C4C7BD0();
  __swift_project_value_buffer(v11, qword_27FC0B318);
  swift_unknownObjectRetain();

  v12 = a2;
  v13 = sub_25C4C7BB0();
  v14 = sub_25C4C8710();

  swift_unknownObjectRelease();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v39 = v35;
    *v15 = 136315650;
    swift_getObjectType();
    (*(v7 + 104))(v10, *MEMORY[0x277D35858], v6);
    v34 = v13;
    sub_25C4C80A0();
    HIDWORD(v33) = v14;
    (*(v7 + 8))(v10, v6);
    v16 = sub_25C4C86C0();
    v18 = v17;

    if (v18)
    {
      v19 = v16;
    }

    else
    {
      v19 = 7104878;
    }

    if (v18)
    {
      v20 = v18;
    }

    else
    {
      v20 = 0xE300000000000000;
    }

    v21 = sub_25C458990(v19, v20, &v39);

    *(v15 + 4) = v21;
    *(v15 + 12) = 2080;
    swift_beginAccess();
    v22 = *(v3 + 24);
    v37 = *(v3 + 16);
    v38 = v22;

    MEMORY[0x25F887A50](58, 0xE100000000000000);
    v36 = *(v3 + 80);
    v23 = sub_25C4C89A0();
    MEMORY[0x25F887A50](v23);

    v24 = sub_25C458990(v37, v38, &v39);

    *(v15 + 14) = v24;
    *(v15 + 22) = 2080;
    swift_getErrorValue();
    v25 = sub_25C4C8A30();
    v27 = sub_25C458990(v25, v26, &v39);

    *(v15 + 24) = v27;
    v28 = v34;
    _os_log_impl(&dword_25C452000, v34, BYTE4(v33), "### XPC error reply: requestType='%s', client=%s, error=%s", v15, 0x20u);
    v29 = v35;
    swift_arrayDestroy();
    MEMORY[0x25F888630](v29, -1, -1);
    MEMORY[0x25F888630](v15, -1, -1);
  }

  else
  {
  }

  result = xpc_dictionary_expects_reply();
  if (result)
  {
    result = sub_25C46B534(a1);
    if (result)
    {
      v31 = result;
      v32 = sub_25C4C7A80();
      CUXPCEncodeNSErrorStd(v31, v32);

      xpc_connection_send_message(*(v3 + 88), v31);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_25C46CB9C(void *a1)
{
  v108 = sub_25C4C7C50();
  v104 = *(v108 - 8);
  v2 = *(v104 + 64);
  v3 = MEMORY[0x28223BE20](v108);
  v103 = v95 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v100 = v95 - v6;
  MEMORY[0x28223BE20](v5);
  v111 = v95 - v7;
  v8 = sub_25C4C80B0();
  v9 = *(v8 - 8);
  v10 = v9[8];
  v11 = MEMORY[0x28223BE20](v8);
  v105 = (v95 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v14 = v95 - v13;
  v15 = sub_25C4C7B20();
  v16 = *(v15 - 8);
  v114 = v15;
  v115 = v16;
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v102 = v95 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = v95 - v21;
  v101 = v23;
  MEMORY[0x28223BE20](v20);
  v113 = v95 - v24;
  v25 = *MEMORY[0x277D358C8];
  v110 = v9[13];
  v110(v14, v25, v8);
  v26 = sub_25C4C80A0();
  v28 = v27;
  v30 = v9[1];
  v29 = (v9 + 1);
  v106 = v8;
  v31 = v8;
  v32 = v30;
  v30(v14, v31);
  ObjectType = swift_getObjectType();
  v109 = a1;
  v33 = sub_25C4C86D0();
  if (v33)
  {
    v34 = v33;
    v98 = v32;
    v35 = v112;
    v36 = v112[7];
    v97 = v34;
    sub_25C4C7B00();

    v38 = v115 + 32;
    v37 = *(v115 + 32);
    v39 = v113;
    v40 = v22;
    v41 = v114;
    v37(v113, v40, v114);
    swift_beginAccess();
    if (*(v35[13] + 16) && (sub_25C458F84(v39), (v42 & 1) != 0))
    {
      swift_endAccess();
      v119 = 0;
      v120 = 0xE000000000000000;
      sub_25C4C88F0();

      v119 = 0xD00000000000001DLL;
      v120 = 0x800000025C4D06B0;
      sub_25C478A8C(&unk_27FC0A3E0, 255, MEMORY[0x277CC95F0]);
      v43 = sub_25C4C89A0();
      MEMORY[0x25F887A50](v43);

      v44 = objc_allocWithZone(sub_25C4C7B80());
      sub_25C4C7B90();
      swift_willThrow();
      return (*(v115 + 8))(v39, v41);
    }

    else
    {
      v95[1] = v38;
      v96 = v37;
      swift_endAccess();
      v46 = v105;
      v47 = v106;
      v110(v105, *MEMORY[0x277D358D0], v106);
      swift_unknownObjectRetain();
      sub_25C4C80A0();
      v48 = v98;
      v105 = v29;
      v98(v46, v47);
      v49 = v107;
      sub_25C4C7C20();
      if (v49)
      {
        return (*(v115 + 8))(v113, v114);
      }

      else
      {
        v95[0] = 0;
        v110(v14, *MEMORY[0x277D35860], v47);
        sub_25C4C80A0();
        v48(v14, v47);
        v110 = sub_25C4C86C0();
        v106 = v51;

        v52 = v112;
        swift_beginAccess();
        v53 = v52[3];
        v117 = v52[2];
        v118 = v53;

        MEMORY[0x25F887A50](58, 0xE100000000000000);
        v116 = *(v52 + 20);
        v54 = sub_25C4C89A0();
        MEMORY[0x25F887A50](v54);

        v55 = v118;
        v105 = v117;
        if (qword_27FC0B310 != -1)
        {
          swift_once();
        }

        v56 = sub_25C4C7BD0();
        __swift_project_value_buffer(v56, qword_27FC0B318);
        v57 = v104;
        v58 = v100;
        v59 = v111;
        v60 = v108;
        ObjectType = *(v104 + 16);
        ObjectType(v100, v111, v108);

        v61 = sub_25C4C7BB0();
        v62 = sub_25C4C8720();

        if (os_log_type_enabled(v61, v62))
        {
          v63 = v57;
          v64 = swift_slowAlloc();
          v65 = swift_slowAlloc();
          v117 = v65;
          *v64 = 136315394;
          sub_25C478A8C(&qword_27FC0A480, 255, MEMORY[0x277D35630]);
          LODWORD(v98) = v62;
          v66 = sub_25C4C89A0();
          v68 = v67;
          v107 = *(v63 + 8);
          v107(v58, v108);
          v69 = sub_25C458990(v66, v68, &v117);
          v60 = v108;

          *(v64 + 4) = v69;
          *(v64 + 12) = 2080;
          v70 = v105;
          *(v64 + 14) = sub_25C458990(v105, v55, &v117);
          _os_log_impl(&dword_25C452000, v61, v98, "ClientStart: endpoint=%s, client=%s", v64, 0x16u);
          swift_arrayDestroy();
          v71 = v65;
          v59 = v111;
          MEMORY[0x25F888630](v71, -1, -1);
          MEMORY[0x25F888630](v64, -1, -1);
        }

        else
        {

          v107 = *(v57 + 8);
          v107(v58, v60);
          v70 = v105;
        }

        type metadata accessor for NXClientDaemon();
        v72 = v103;
        ObjectType(v103, v59, v60);
        v73 = v112;
        v74 = v112[2];
        v75 = v112[3];
        v76 = v112[4];
        v77 = v112[11];

        swift_unknownObjectRetain();
        v105 = v77;
        v78 = sub_25C478BC4(v72, v74, v75, v97, v70, v55, v76, v110, v106, v77);
        v79 = swift_allocObject();
        swift_weakInit();
        v80 = v114;
        v81 = v115 + 16;
        v82 = v102;
        v83 = v113;
        (*(v115 + 16))(v102, v113, v114);
        v84 = (*(v81 + 64) + 24) & ~*(v81 + 64);
        v85 = swift_allocObject();
        *(v85 + 16) = v79;
        v96(v85 + v84, v82, v80);
        v86 = (v78 + OBJC_IVAR____TtC11NexusDaemon14NXClientDaemon_invalidationHandler);
        swift_beginAccess();
        v87 = *v86;
        v88 = v86[1];
        *v86 = sub_25C478630;
        v86[1] = v85;

        sub_25C45A2C8(v87);

        swift_beginAccess();

        v89 = v73[13];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v121 = v73[13];
        v73[13] = 0x8000000000000000;
        sub_25C477AD0(v78, v83, isUniquelyReferenced_nonNull_native, &qword_27FC0A488, &qword_25C4CA1E8);
        v73[13] = v121;
        swift_endAccess();
        v91 = v95[0];
        sub_25C478F18();
        if (v91)
        {

          v107(v111, v108);
          return (*(v115 + 8))(v83, v80);
        }

        else
        {
          v92 = v115;
          v93 = v105;
          v94 = sub_25C46B534(v109);
          if (v94)
          {
            xpc_connection_send_message(v93, v94);

            swift_unknownObjectRelease();
          }

          else
          {
          }

          v107(v111, v108);
          return (*(v92 + 8))(v83, v80);
        }
      }
    }
  }

  else
  {
    v119 = 2125646;
    v120 = 0xE300000000000000;
    MEMORY[0x25F887A50](v26, v28);
    v50 = objc_allocWithZone(sub_25C4C7B80());
    sub_25C4C7B90();
    swift_willThrow();
  }
}

uint64_t sub_25C46D730(void *a1)
{
  v2 = sub_25C4C80B0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_25C4C7B20();
  v45 = *(v7 - 8);
  v8 = *(v45 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v42 - v12;
  (*(v3 + 104))(v6, *MEMORY[0x277D358C8], v2);
  v14 = sub_25C4C80A0();
  v16 = v15;
  (*(v3 + 8))(v6, v2);
  swift_getObjectType();
  v17 = a1;
  if (sub_25C4C86D0())
  {
    v18 = v44;
    v19 = *(v44 + 56);
    sub_25C4C7B00();

    v20 = v45;
    (*(v45 + 32))(v13, v11, v7);
    swift_beginAccess();
    v21 = *(v18 + 104);
    v22 = v7;
    v23 = v20;
    if (*(v21 + 16) && (v24 = sub_25C458F84(v13), (v25 & 1) != 0))
    {
      v26 = *(*(v21 + 56) + 8 * v24);
      swift_endAccess();
      v27 = qword_27FC0B310;

      if (v27 != -1)
      {
        swift_once();
      }

      v28 = sub_25C4C7BD0();
      __swift_project_value_buffer(v28, qword_27FC0B318);

      v29 = sub_25C4C7BB0();
      v30 = sub_25C4C8720();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v42[1] = v26;
        v43 = v13;
        v32 = v31;
        v33 = swift_slowAlloc();
        v51 = v33;
        *v32 = 136315138;
        swift_beginAccess();
        v34 = *(v18 + 24);
        v47 = *(v18 + 16);
        v48 = v34;

        MEMORY[0x25F887A50](58, 0xE100000000000000);
        v46 = *(v18 + 80);
        v35 = sub_25C4C89A0();
        MEMORY[0x25F887A50](v35);

        v36 = sub_25C458990(v47, v48, &v51);

        *(v32 + 4) = v36;
        _os_log_impl(&dword_25C452000, v29, v30, "ClientStop: client=%s", v32, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v33);
        MEMORY[0x25F888630](v33, -1, -1);
        v13 = v43;
        v23 = v45;
        MEMORY[0x25F888630](v32, -1, -1);
      }

      sub_25C479898();
      v37 = sub_25C46B534(v17);
      if (v37)
      {
        xpc_connection_send_message(*(v18 + 88), v37);

        swift_unknownObjectRelease();
        return (*(v23 + 8))(v13, v22);
      }

      else
      {
        (*(v23 + 8))(v13, v22);
      }
    }

    else
    {
      swift_endAccess();
      v49 = 0;
      v50 = 0xE000000000000000;
      sub_25C4C88F0();

      v49 = 0xD00000000000001DLL;
      v50 = 0x800000025C4D06D0;
      sub_25C478A8C(&unk_27FC0A3E0, 255, MEMORY[0x277CC95F0]);
      v39 = sub_25C4C89A0();
      MEMORY[0x25F887A50](v39);

      v40 = objc_allocWithZone(sub_25C4C7B80());
      sub_25C4C7B90();
      swift_willThrow();
      return (*(v20 + 8))(v13, v22);
    }
  }

  else
  {
    v49 = 2125646;
    v50 = 0xE300000000000000;
    MEMORY[0x25F887A50](v14, v16);
    v41 = objc_allocWithZone(sub_25C4C7B80());
    sub_25C4C7B90();
    swift_willThrow();
  }
}

uint64_t sub_25C46DCF0(uint64_t a1)
{
  v2 = sub_25C4C80B0();
  v3 = *(v2 - 8);
  v4 = v3[8];
  MEMORY[0x28223BE20](v2);
  v6 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_25C4C7B20();
  v8 = *(v7 - 8);
  v77 = v7;
  v78 = v8;
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v65 - v13;
  v15 = *MEMORY[0x277D358C8];
  v16 = v3[13];
  v75 = v3 + 13;
  v72 = v16;
  v16(v6, v15, v2);
  v17 = sub_25C4C80A0();
  v19 = v18;
  v21 = v3[1];
  v20 = v3 + 1;
  v73 = v2;
  v22 = v2;
  v23 = v21;
  v21(v6, v22);
  ObjectType = swift_getObjectType();
  v74 = a1;
  if (!sub_25C4C86D0())
  {
    v82 = 2125646;
    v83 = 0xE300000000000000;
    MEMORY[0x25F887A50](v17, v19);
    v45 = objc_allocWithZone(sub_25C4C7B80());
    sub_25C4C7B90();
    swift_willThrow();
  }

  v24 = v76;
  v25 = *(v76 + 56);
  sub_25C4C7B00();

  v27 = v77;
  v26 = v78;
  (*(v78 + 32))(v14, v12, v77);
  swift_beginAccess();
  v28 = *(v24 + 104);
  if (!*(v28 + 16) || (v29 = sub_25C458F84(v14), (v30 & 1) == 0))
  {
    swift_endAccess();
    v82 = 0;
    v83 = 0xE000000000000000;
    sub_25C4C88F0();

    v82 = 0xD00000000000001DLL;
    v83 = 0x800000025C4D06D0;
    sub_25C478A8C(&unk_27FC0A3E0, 255, MEMORY[0x277CC95F0]);
    v42 = sub_25C4C89A0();
    MEMORY[0x25F887A50](v42);

    v43 = objc_allocWithZone(sub_25C4C7B80());
    sub_25C4C7B90();
    swift_willThrow();
    return (*(v26 + 8))(v14, v27);
  }

  v70 = v14;
  v31 = *(*(v28 + 56) + 8 * v29);
  swift_endAccess();
  v32 = v20;
  v33 = v72;
  v34 = v73;
  v72(v6, *MEMORY[0x277D35850], v73);
  v69 = v31;

  sub_25C4C80A0();
  v67 = v32;
  v23(v6, v34);
  v35 = sub_25C4C86C0();
  v37 = v36;

  v68 = v37;
  if (!v37)
  {
    v46 = objc_allocWithZone(sub_25C4C7B80());
    goto LABEL_11;
  }

  v66 = v35;
  v33(v6, *MEMORY[0x277D35848], v34);
  sub_25C4C80A0();
  v23(v6, v34);
  v38 = sub_25C4C86A0();
  v40 = v39;

  if (v40 >> 60 != 15)
  {
    v75 = v38;
    v47 = v70;
    if (qword_27FC0B310 != -1)
    {
      swift_once();
    }

    v48 = sub_25C4C7BD0();
    __swift_project_value_buffer(v48, qword_27FC0B318);
    v49 = v68;

    v50 = v76;

    v51 = sub_25C4C7BB0();
    v52 = sub_25C4C8720();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v84 = v73;
      *v53 = 136315394;
      v54 = v66;
      *(v53 + 4) = sub_25C458990(v66, v49, &v84);
      *(v53 + 12) = 2080;
      swift_beginAccess();
      v55 = *(v50 + 24);
      v80 = *(v50 + 16);
      v81 = v55;

      MEMORY[0x25F887A50](58, 0xE100000000000000);
      v79 = *(v50 + 80);
      v56 = sub_25C4C89A0();
      MEMORY[0x25F887A50](v56);

      v57 = sub_25C458990(v80, v81, &v84);

      *(v53 + 14) = v57;
      v58 = v54;
      _os_log_impl(&dword_25C452000, v51, v52, "Send request: requestName=%s, client=%s", v53, 0x16u);
      v59 = v73;
      swift_arrayDestroy();
      MEMORY[0x25F888630](v59, -1, -1);
      v60 = v53;
      v47 = v70;
      MEMORY[0x25F888630](v60, -1, -1);
    }

    else
    {

      v58 = v66;
    }

    v61 = swift_allocObject();
    swift_weakInit();
    v62 = swift_allocObject();
    v63 = v74;
    *(v62 + 16) = v61;
    *(v62 + 24) = v63;

    swift_unknownObjectRetain();
    v64 = v75;
    sub_25C47A2D0(v58, v49, v75, v40, sub_25C47864C, v62);
    (*(v78 + 8))(v47, v77);

    sub_25C45A5B8(v64, v40);
  }

  v41 = objc_allocWithZone(sub_25C4C7B80());
LABEL_11:
  sub_25C4C7B90();
  swift_willThrow();

  return (*(v78 + 8))(v70, v77);
}

uint64_t sub_25C46E520(void *a1)
{
  v2 = sub_25C4C80B0();
  v3 = *(v2 - 8);
  v4 = v3[8];
  MEMORY[0x28223BE20](v2);
  v6 = (&v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v58 = sub_25C4C7B20();
  v60 = *(v58 - 8);
  v7 = *(v60 + 64);
  v8 = MEMORY[0x28223BE20](v58);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v49 - v11;
  v13 = *MEMORY[0x277D358C8];
  v14 = v3[13];
  v52 = v3 + 13;
  v53 = v14;
  v14(v6, v13, v2);
  v15 = sub_25C4C80A0();
  v17 = v16;
  v18 = v3[1];
  v54 = v6;
  v55 = v3 + 1;
  v56 = v2;
  v18(v6, v2);
  swift_getObjectType();
  v57 = a1;
  if (!sub_25C4C86D0())
  {
    v64 = 2125646;
    v65 = 0xE300000000000000;
    MEMORY[0x25F887A50](v15, v17);
    v46 = objc_allocWithZone(sub_25C4C7B80());
    sub_25C4C7B90();
    swift_willThrow();
  }

  v19 = v59;
  v20 = *(v59 + 56);
  sub_25C4C7B00();

  v21 = v58;
  (*(v60 + 32))(v12, v10, v58);
  swift_beginAccess();
  v22 = v19;
  v23 = *(v19 + 104);
  if (!*(v23 + 16) || (v24 = sub_25C458F84(v12), (v25 & 1) == 0))
  {
    swift_endAccess();
    v64 = 0;
    v65 = 0xE000000000000000;
    sub_25C4C88F0();

    v64 = 0xD00000000000001DLL;
    v65 = 0x800000025C4D06D0;
    sub_25C478A8C(&unk_27FC0A3E0, 255, MEMORY[0x277CC95F0]);
    v43 = sub_25C4C89A0();
    MEMORY[0x25F887A50](v43);

    v44 = objc_allocWithZone(sub_25C4C7B80());
    sub_25C4C7B90();
    swift_willThrow();
    return (*(v60 + 8))(v12, v21);
  }

  v50 = v12;
  v26 = *(*(v23 + 56) + 8 * v24);
  swift_endAccess();
  v27 = v54;
  v28 = v56;
  v53(v54, *MEMORY[0x277D358D8], v56);

  sub_25C4C80A0();
  v18(v27, v28);
  v29 = sub_25C4C86C0();
  v31 = v30;

  if (v31)
  {
    v55 = v26;
    v56 = v29;
    v32 = v21;
    v33 = v60;
    if (qword_27FC0B310 != -1)
    {
      swift_once();
    }

    v34 = sub_25C4C7BD0();
    __swift_project_value_buffer(v34, qword_27FC0B318);

    v35 = sub_25C4C7BB0();
    v36 = sub_25C4C8720();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v66 = v54;
      *v37 = 136315138;
      swift_beginAccess();
      v38 = *(v22 + 24);
      v62 = *(v22 + 16);
      v63 = v38;

      MEMORY[0x25F887A50](58, 0xE100000000000000);
      v61 = *(v22 + 80);
      v39 = sub_25C4C89A0();
      MEMORY[0x25F887A50](v39);

      v40 = sub_25C458990(v62, v63, &v66);

      *(v37 + 4) = v40;
      _os_log_impl(&dword_25C452000, v35, v36, "Try password: client=%s", v37, 0xCu);
      v41 = v54;
      __swift_destroy_boxed_opaque_existential_0(v54);
      MEMORY[0x25F888630](v41, -1, -1);
      MEMORY[0x25F888630](v37, -1, -1);
    }

    v42 = v51;
    sub_25C47A8D0();
    if (v42)
    {
      (*(v33 + 8))(v50, v32);
    }

    v48 = sub_25C46B534(v57);
    if (v48)
    {
      xpc_connection_send_message(*(v22 + 88), v48);

      swift_unknownObjectRelease();
      return (*(v33 + 8))(v50, v32);
    }

    else
    {
      (*(v33 + 8))(v50, v32);
    }
  }

  else
  {
    v47 = objc_allocWithZone(sub_25C4C7B80());
    sub_25C4C7B90();
    swift_willThrow();

    return (*(v60 + 8))(v50, v21);
  }
}

uint64_t sub_25C46EC18(void *a1)
{
  v104 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A490, &qword_25C4CA1F0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v100 = (&v87 - v3);
  v98 = sub_25C4C7F70();
  v94 = *(v98 - 8);
  v4 = *(v94 + 64);
  v5 = MEMORY[0x28223BE20](v98);
  v92 = &v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v93 = &v87 - v7;
  v8 = sub_25C4C80B0();
  v9 = *(v8 - 8);
  v10 = v9[8];
  v11 = MEMORY[0x28223BE20](v8);
  v96 = &v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v87 - v13;
  v15 = sub_25C4C7B20();
  v102 = *(v15 - 8);
  v103 = v15;
  v16 = *(v102 + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v91 = &v87 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v87 - v20;
  v90 = v22;
  MEMORY[0x28223BE20](v19);
  v101 = &v87 - v23;
  v24 = v9[13];
  v24(v14, *MEMORY[0x277D358C8], v8);
  v25 = sub_25C4C80A0();
  v27 = v26;
  v28 = v9[1];
  v28(v14, v8);
  ObjectType = swift_getObjectType();
  v29 = sub_25C4C86D0();
  if (v29)
  {
    v30 = v29;
    v31 = v99[7];
    v88 = v30;
    sub_25C4C7B00();

    v32 = v102 + 32;
    v89 = *(v102 + 32);
    v89(v101, v21, v103);
    v33 = v96;
    v24(v96, *MEMORY[0x277D358B0], v8);
    sub_25C4C80A0();
    v28(v33, v8);
    v34 = sub_25C4C7A10();
    v35 = *(v34 + 48);
    v36 = *(v34 + 52);
    swift_allocObject();
    v108 = sub_25C4C7A00();
    sub_25C478A8C(&qword_27FC0A498, 255, MEMORY[0x277D357E8]);
    sub_25C478A8C(&qword_27FC0A4A0, 255, MEMORY[0x277CC8710]);
    v37 = v97;
    v38 = v98;
    sub_25C4C8680();
    if (v37)
    {

      return (*(v102 + 8))(v101, v103);
    }

    else
    {
      v97 = v32;
      v41 = v103;

      v42 = v94;
      if ((*(v94 + 48))(v100, 1, v38) == 1)
      {
        sub_25C4666F8(v100, &qword_27FC0A490, &qword_25C4CA1F0);
        v108 = 0;
        v109 = 0xE000000000000000;
        sub_25C4C88F0();

        v108 = 0xD000000000000027;
        v109 = 0x800000025C4D06F0;
        sub_25C478A8C(&unk_27FC0A3E0, 255, MEMORY[0x277CC95F0]);
        v43 = v101;
        v44 = sub_25C4C89A0();
        MEMORY[0x25F887A50](v44);

        v45 = objc_allocWithZone(sub_25C4C7B80());
        sub_25C4C7B90();
        swift_willThrow();
        return (*(v102 + 8))(v43, v41);
      }

      else
      {
        v46 = v93;
        (*(v42 + 32))(v93, v100, v38);
        v47 = v99;
        swift_beginAccess();
        if (*(v47[14] + 16) && (v48 = v41, sub_25C458F84(v101), (v49 & 1) != 0))
        {
          swift_endAccess();
          v108 = 0;
          v109 = 0xE000000000000000;
          sub_25C4C88F0();

          v108 = 0xD000000000000027;
          v109 = 0x800000025C4D0720;
          sub_25C478A8C(&unk_27FC0A3E0, 255, MEMORY[0x277CC95F0]);
          v50 = v101;
          v51 = sub_25C4C89A0();
          MEMORY[0x25F887A50](v51);

          v52 = objc_allocWithZone(sub_25C4C7B80());
          sub_25C4C7B90();
          swift_willThrow();
          (*(v42 + 8))(v46, v38);
          return (*(v102 + 8))(v50, v48);
        }

        else
        {
          swift_endAccess();
          swift_beginAccess();
          v53 = v47[3];
          v106 = v47[2];
          v107 = v53;

          MEMORY[0x25F887A50](58, 0xE100000000000000);
          v105 = *(v47 + 20);
          v54 = sub_25C4C89A0();
          MEMORY[0x25F887A50](v54);

          v56 = v106;
          v55 = v107;
          if (qword_27FC0B310 != -1)
          {
            swift_once();
          }

          v57 = sub_25C4C7BD0();
          __swift_project_value_buffer(v57, qword_27FC0B318);

          v58 = sub_25C4C7BB0();
          v59 = sub_25C4C8720();

          if (os_log_type_enabled(v58, v59))
          {
            v60 = swift_slowAlloc();
            v61 = swift_slowAlloc();
            v106 = v61;
            *v60 = 136315138;
            v62 = sub_25C458990(v56, v55, &v106);

            *(v60 + 4) = v62;
            _os_log_impl(&dword_25C452000, v58, v59, "DiscoveryStart: client=%s", v60, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v61);
            v63 = v61;
            v64 = v102;
            MEMORY[0x25F888630](v63, -1, -1);
            MEMORY[0x25F888630](v60, -1, -1);

            v65 = v99;
          }

          else
          {

            v65 = v99;
            v64 = v102;
          }

          type metadata accessor for NXDiscoveryDaemon();
          v66 = v92;
          (*(v94 + 16))(v92, v93, v98);
          v67 = v65[4];
          v68 = v65[11];

          swift_unknownObjectRetain();
          v100 = v68;
          v69 = sub_25C47AD44(v66, v88, v67, v68);
          v70 = swift_allocObject();
          swift_weakInit();
          v72 = v64 + 16;
          v71 = *(v64 + 16);
          v73 = v91;
          v74 = v101;
          v75 = v103;
          v71(v91, v101, v103);
          v76 = (*(v72 + 64) + 24) & ~*(v72 + 64);
          v77 = swift_allocObject();
          *(v77 + 16) = v70;
          v89(v77 + v76, v73, v75);
          v78 = (v69 + OBJC_IVAR____TtC11NexusDaemon17NXDiscoveryDaemon_invalidationHandler);
          swift_beginAccess();
          v79 = *v78;
          v80 = v78[1];
          *v78 = sub_25C478730;
          v78[1] = v77;

          sub_25C45A2C8(v79);

          swift_beginAccess();

          v81 = v65[14];
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v110 = v65[14];
          v65[14] = 0x8000000000000000;
          sub_25C477AD0(v69, v74, isUniquelyReferenced_nonNull_native, &qword_27FC0A4A8, &qword_25C4CA1F8);
          v65[14] = v110;
          swift_endAccess();
          sub_25C47B034();
          v83 = v100;
          v84 = v102;
          v85 = sub_25C46B534(v104);
          if (v85)
          {
            xpc_connection_send_message(v83, v85);

            swift_unknownObjectRelease();
          }

          else
          {
          }

          v86 = v103;
          (*(v94 + 8))(v93, v98);
          return (*(v84 + 8))(v74, v86);
        }
      }
    }
  }

  else
  {
    v108 = 2125646;
    v109 = 0xE300000000000000;
    MEMORY[0x25F887A50](v25, v27);
    v40 = objc_allocWithZone(sub_25C4C7B80());
    sub_25C4C7B90();
    swift_willThrow();
  }
}

uint64_t sub_25C46F810(void *a1)
{
  v2 = sub_25C4C80B0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_25C4C7B20();
  v45 = *(v7 - 8);
  v8 = *(v45 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v42 - v12;
  (*(v3 + 104))(v6, *MEMORY[0x277D358C8], v2);
  v14 = sub_25C4C80A0();
  v16 = v15;
  (*(v3 + 8))(v6, v2);
  swift_getObjectType();
  v17 = a1;
  if (sub_25C4C86D0())
  {
    v18 = v44;
    v19 = *(v44 + 56);
    sub_25C4C7B00();

    v20 = v45;
    (*(v45 + 32))(v13, v11, v7);
    swift_beginAccess();
    v21 = *(v18 + 112);
    v22 = v7;
    v23 = v20;
    if (*(v21 + 16) && (v24 = sub_25C458F84(v13), (v25 & 1) != 0))
    {
      v26 = *(*(v21 + 56) + 8 * v24);
      swift_endAccess();
      v27 = qword_27FC0B310;

      if (v27 != -1)
      {
        swift_once();
      }

      v28 = sub_25C4C7BD0();
      __swift_project_value_buffer(v28, qword_27FC0B318);

      v29 = sub_25C4C7BB0();
      v30 = sub_25C4C8720();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v42[1] = v26;
        v43 = v13;
        v32 = v31;
        v33 = swift_slowAlloc();
        v51 = v33;
        *v32 = 136315138;
        swift_beginAccess();
        v34 = *(v18 + 24);
        v47 = *(v18 + 16);
        v48 = v34;

        MEMORY[0x25F887A50](58, 0xE100000000000000);
        v46 = *(v18 + 80);
        v35 = sub_25C4C89A0();
        MEMORY[0x25F887A50](v35);

        v36 = sub_25C458990(v47, v48, &v51);

        *(v32 + 4) = v36;
        _os_log_impl(&dword_25C452000, v29, v30, "DiscoveryStop: client=%s", v32, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v33);
        MEMORY[0x25F888630](v33, -1, -1);
        v13 = v43;
        v23 = v45;
        MEMORY[0x25F888630](v32, -1, -1);
      }

      sub_25C47F1B8();
      v37 = sub_25C46B534(v17);
      if (v37)
      {
        xpc_connection_send_message(*(v18 + 88), v37);

        swift_unknownObjectRelease();
        return (*(v23 + 8))(v13, v22);
      }

      else
      {
        (*(v23 + 8))(v13, v22);
      }
    }

    else
    {
      swift_endAccess();
      v49 = 0;
      v50 = 0xE000000000000000;
      sub_25C4C88F0();

      v49 = 0xD00000000000001DLL;
      v50 = 0x800000025C4D06D0;
      sub_25C478A8C(&unk_27FC0A3E0, 255, MEMORY[0x277CC95F0]);
      v39 = sub_25C4C89A0();
      MEMORY[0x25F887A50](v39);

      v40 = objc_allocWithZone(sub_25C4C7B80());
      sub_25C4C7B90();
      swift_willThrow();
      return (*(v20 + 8))(v13, v22);
    }
  }

  else
  {
    v49 = 2125646;
    v50 = 0xE300000000000000;
    MEMORY[0x25F887A50](v14, v16);
    v41 = objc_allocWithZone(sub_25C4C7B80());
    sub_25C4C7B90();
    swift_willThrow();
  }
}

uint64_t sub_25C46FDD0(uint64_t a1)
{
  v137 = sub_25C4C7B20();
  v134 = *(v137 - 8);
  v2 = *(v134 + 64);
  v3 = MEMORY[0x28223BE20](v137);
  v129 = &v115 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v3);
  v128 = &v115 - v5;
  v6 = MEMORY[0x28223BE20](v4);
  v126 = &v115 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v130 = &v115 - v9;
  MEMORY[0x28223BE20](v8);
  v133 = &v115 - v10;
  v11 = sub_25C4C80B0();
  v12 = *(v11 - 8);
  v13 = v12[8];
  v14 = MEMORY[0x28223BE20](v11);
  v132 = &v115 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v139 = &v115 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v115 - v18;
  v20 = sub_25C4C7C50();
  v135 = *(v20 - 8);
  v136 = v20;
  v21 = *(v135 + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v127 = &v115 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = &v115 - v24;
  v26 = *MEMORY[0x277D358D0];
  v140 = v12[13];
  v140(v19, v26, v11);
  swift_unknownObjectRetain();
  sub_25C4C80A0();
  v27 = v12[1];
  v138 = v11;
  v141 = v27;
  v27(v19, v11);
  v28 = v142;
  result = sub_25C4C7C20();
  if (!v28)
  {
    v123 = v2;
    v125 = v25;
    v124 = 0;
    swift_getObjectType();
    v31 = v138;
    v30 = v139;
    v32 = v140;
    v140(v139, *MEMORY[0x277D35860], v138);
    sub_25C4C80A0();
    v141(v30, v31);
    v122 = sub_25C4C86C0();
    v142 = v33;

    v32(v30, *MEMORY[0x277D35880], v31);
    sub_25C4C80A0();
    v141(v30, v31);
    v34 = sub_25C4C86C0();
    v36 = v35;

    if (!v36)
    {

      v62 = objc_allocWithZone(sub_25C4C7B80());
      sub_25C4C7B90();
      swift_willThrow();
      return (*(v135 + 8))(v125, v136);
    }

    v37 = a1;
    v38 = v36;
    v119 = v34;
    v39 = *MEMORY[0x277D35840];
    v40 = v132;
    v120 = v12 + 13;
    v140(v132, v39, v31);
    v41 = sub_25C4C80A0();
    v43 = v42;
    v44 = v31;
    v132 = (v12 + 1);
    v45 = v141;
    v141(v40, v44);
    v46 = sub_25C4C86D0();
    v47 = v125;
    if (v46)
    {
      v48 = v46;
      v49 = v45;
      v50 = v125;
      v51 = v49;
      v121 = v38;
      v118 = v37;
      v52 = v131;
      v53 = *(v131 + 56);
      v54 = v130;
      v116 = v48;
      sub_25C4C7B00();

      v56 = v133;
      v55 = v134;
      v57 = *(v134 + 32);
      v130 = (v134 + 32);
      v117 = v57;
      v57(v133, v54, v137);
      swift_beginAccess();
      if (*(*(v52 + 120) + 16))
      {
        sub_25C458F84(v56);
        if (v58)
        {
          swift_endAccess();

          v145 = 0;
          v146 = 0xE000000000000000;
          sub_25C4C88F0();

          v145 = 0xD000000000000020;
          v146 = 0x800000025C4D0790;
          sub_25C478A8C(&unk_27FC0A3E0, 255, MEMORY[0x277CC95F0]);
          v59 = v137;
          v60 = sub_25C4C89A0();
          MEMORY[0x25F887A50](v60);

          v61 = objc_allocWithZone(sub_25C4C7B80());
          sub_25C4C7B90();
          swift_willThrow();
          (*(v55 + 8))(v56, v59);
          return (*(v135 + 8))(v50, v136);
        }
      }

      swift_endAccess();
      v64 = v138;
      v63 = v139;
      v140(v139, *MEMORY[0x277D358A8], v138);
      sub_25C4C80A0();
      v51(v63, v64);
      v65 = sub_25C4C86A0();
      v67 = v66;

      if (v67 >> 60 == 15)
      {

        v145 = 0;
        v146 = 0xE000000000000000;
        sub_25C4C88F0();

        v145 = 0xD00000000000001ELL;
        v146 = 0x800000025C4D0770;
        sub_25C478A8C(&unk_27FC0A3E0, 255, MEMORY[0x277CC95F0]);
        v68 = v137;
        v69 = sub_25C4C89A0();
        MEMORY[0x25F887A50](v69);

        v70 = objc_allocWithZone(sub_25C4C7B80());
        sub_25C4C7B90();
        swift_willThrow();
        (*(v134 + 8))(v56, v68);
        return (*(v135 + 8))(v125, v136);
      }

      v139 = v65;
      v140 = v67;
      v72 = v134;
      if (qword_27FC0B310 != -1)
      {
        swift_once();
      }

      v73 = sub_25C4C7BD0();
      __swift_project_value_buffer(v73, qword_27FC0B318);
      v74 = *(v72 + 16);
      v75 = v126;
      v141 = (v72 + 16);
      v138 = v74;
      v74(v126, v133, v137);
      v76 = v121;

      v77 = v131;

      v78 = sub_25C4C7BB0();
      v79 = sub_25C4C8720();

      if (os_log_type_enabled(v78, v79))
      {
        v80 = swift_slowAlloc();
        v81 = swift_slowAlloc();
        v143 = v81;
        *v80 = 136315650;
        *(v80 + 4) = sub_25C458990(v119, v76, &v143);
        *(v80 + 12) = 2080;
        sub_25C478A8C(&unk_27FC0A3E0, 255, MEMORY[0x277CC95F0]);
        v82 = sub_25C4C89A0();
        v84 = v83;
        v132 = *(v134 + 8);
        (v132)(v75, v137);
        v85 = sub_25C458990(v82, v84, &v143);

        *(v80 + 14) = v85;
        *(v80 + 22) = 2080;
        v77 = v131;
        swift_beginAccess();
        v86 = *(v77 + 24);
        v145 = *(v77 + 16);
        v146 = v86;

        MEMORY[0x25F887A50](58, 0xE100000000000000);
        LODWORD(v147) = *(v77 + 80);
        v87 = sub_25C4C89A0();
        MEMORY[0x25F887A50](v87);

        v88 = sub_25C458990(v145, v146, &v143);

        *(v80 + 24) = v88;
        _os_log_impl(&dword_25C452000, v78, v79, "Operation start: operationName=%s, operationUUID=%s, client=%s", v80, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x25F888630](v81, -1, -1);
        v89 = v80;
        v90 = v125;
        MEMORY[0x25F888630](v89, -1, -1);

        v91 = v135;
        v92 = v136;
        v93 = v128;
        v94 = v127;
      }

      else
      {

        v132 = *(v134 + 8);
        (v132)(v75, v137);
        v91 = v135;
        v92 = v136;
        v93 = v128;
        v94 = v127;
        v90 = v125;
      }

      type metadata accessor for NXOperationDaemon();
      (*(v91 + 16))(v94, v90, v92);
      swift_beginAccess();
      v95 = *(v77 + 24);
      v143 = *(v77 + 16);
      v144 = v95;

      v96 = v94;
      MEMORY[0x25F887A50](58, 0xE100000000000000);
      LODWORD(v147) = *(v77 + 80);
      v97 = sub_25C4C89A0();
      MEMORY[0x25F887A50](v97);

      v98 = v143;
      v99 = v144;
      v100 = v133;
      v101 = v138;
      v138(v93, v133, v137);
      v102 = *(v77 + 32);
      v103 = *(v77 + 88);

      swift_unknownObjectRetain();
      v104 = sub_25C4BDCC4(v96, v98, v99, v122, v142, v119, v121, v116, v93, v102, v103);
      swift_beginAccess();

      v105 = *(v77 + 120);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v147 = *(v77 + 120);
      *(v77 + 120) = 0x8000000000000000;
      sub_25C477AD0(v104, v100, isUniquelyReferenced_nonNull_native, &qword_27FC0A4B0, &qword_25C4CACD0);
      *(v77 + 120) = v147;
      swift_endAccess();
      v107 = swift_allocObject();
      swift_weakInit();
      v108 = v129;
      v109 = v137;
      v101(v129, v100, v137);
      v110 = (*(v134 + 80) + 24) & ~*(v134 + 80);
      v111 = (v123 + v110 + 7) & 0xFFFFFFFFFFFFFFF8;
      v112 = swift_allocObject();
      *(v112 + 16) = v107;
      v117(v112 + v110, v108, v109);
      *(v112 + v111) = v118;
      swift_unknownObjectRetain();

      v114 = v139;
      v113 = v140;
      sub_25C4BE3F0(v139, v140, sub_25C4787C4, v112);

      sub_25C45A5B8(v114, v113);

      (v132)(v133, v109);
      (*(v135 + 8))(v125, v136);
    }

    else
    {
      v145 = 2125646;
      v146 = 0xE300000000000000;
      MEMORY[0x25F887A50](v41, v43);
      v71 = objc_allocWithZone(sub_25C4C7B80());
      sub_25C4C7B90();
      swift_willThrow();
      (*(v135 + 8))(v47, v136);
    }
  }

  return result;
}

uint64_t sub_25C470CF4(uint64_t a1)
{
  v2 = sub_25C4C80B0();
  v3 = *(v2 - 8);
  v4 = v3[8];
  v5 = MEMORY[0x28223BE20](v2);
  v73 = &v67[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v8 = &v67[-v7];
  v78 = sub_25C4C7B20();
  v76 = *(v78 - 8);
  v9 = *(v76 + 64);
  v10 = MEMORY[0x28223BE20](v78);
  v70 = &v67[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v67[-v13];
  MEMORY[0x28223BE20](v12);
  v16 = &v67[-v15];
  v17 = *MEMORY[0x277D35840];
  v72 = v3[13];
  v72(v8, v17, v2);
  v18 = sub_25C4C80A0();
  v20 = v19;
  v21 = v3[1];
  v74 = v2;
  v71 = v21;
  v21(v8, v2);
  swift_getObjectType();
  v75 = a1;
  if (sub_25C4C86D0())
  {
    v22 = v77;
    v23 = *(v77 + 56);
    sub_25C4C7B00();

    v24 = v76;
    v25 = v14;
    v26 = v78;
    (*(v76 + 32))(v16, v25, v78);
    swift_beginAccess();
    v27 = *(v22 + 120);
    if (!*(v27 + 16) || (v28 = sub_25C458F84(v16), (v29 & 1) == 0))
    {
      swift_endAccess();
      v82 = 0;
      v83 = 0xE000000000000000;
      sub_25C4C88F0();

      v82 = 0xD00000000000001ALL;
      v83 = 0x800000025C4D07C0;
      sub_25C478A8C(&unk_27FC0A3E0, 255, MEMORY[0x277CC95F0]);
      v39 = sub_25C4C89A0();
      MEMORY[0x25F887A50](v39);

      v40 = objc_allocWithZone(sub_25C4C7B80());
      sub_25C4C7B90();
      swift_willThrow();
      return (*(v24 + 8))(v16, v26);
    }

    v30 = *(*(v27 + 56) + 8 * v28);
    swift_endAccess();
    v31 = v73;
    v32 = v74;
    v72(v73, *MEMORY[0x277D358A8], v74);
    v33 = v30;

    sub_25C4C80A0();
    v71(v31, v32);
    v34 = v75;
    v73 = sub_25C4C86A0();
    v36 = v35;

    v74 = v36;
    if (v36 >> 60 == 15)
    {
      v82 = 0;
      v83 = 0xE000000000000000;
      sub_25C4C88F0();

      v82 = 0xD00000000000001FLL;
      v83 = 0x800000025C4D07E0;
      sub_25C478A8C(&unk_27FC0A3E0, 255, MEMORY[0x277CC95F0]);
      v26 = v78;
      v37 = sub_25C4C89A0();
      MEMORY[0x25F887A50](v37);

      v38 = objc_allocWithZone(sub_25C4C7B80());
      sub_25C4C7B90();
      swift_willThrow();

      return (*(v24 + 8))(v16, v26);
    }

    v72 = v33;
    v43 = v24;
    v44 = v78;
    if (qword_27FC0B310 != -1)
    {
      swift_once();
    }

    v45 = sub_25C4C7BD0();
    __swift_project_value_buffer(v45, qword_27FC0B318);
    v46 = *(v24 + 16);
    v47 = v70;
    v71 = v16;
    v46(v70, v16, v44);
    v48 = v77;

    v49 = sub_25C4C7BB0();
    v50 = sub_25C4C8720();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v84 = v69;
      *v51 = 136315394;
      sub_25C478A8C(&unk_27FC0A3E0, 255, MEMORY[0x277CC95F0]);
      v68 = v50;
      v52 = sub_25C4C89A0();
      v53 = v47;
      v54 = v52;
      v56 = v55;
      v57 = *(v43 + 8);
      v57(v53, v44);
      v58 = sub_25C458990(v54, v56, &v84);

      *(v51 + 4) = v58;
      *(v51 + 12) = 2080;
      swift_beginAccess();
      v59 = *(v48 + 24);
      v80 = *(v48 + 16);
      v81 = v59;

      MEMORY[0x25F887A50](58, 0xE100000000000000);
      v79 = *(v48 + 80);
      v60 = sub_25C4C89A0();
      MEMORY[0x25F887A50](v60);

      v61 = sub_25C458990(v80, v81, &v84);

      *(v51 + 14) = v61;
      _os_log_impl(&dword_25C452000, v49, v68, "Operation update: operationUUID=%s, client=%s", v51, 0x16u);
      v62 = v69;
      swift_arrayDestroy();
      MEMORY[0x25F888630](v62, -1, -1);
      MEMORY[0x25F888630](v51, -1, -1);
    }

    else
    {

      v57 = *(v43 + 8);
      v57(v47, v44);
    }

    v63 = swift_allocObject();
    swift_weakInit();
    v64 = swift_allocObject();
    *(v64 + 16) = v63;
    *(v64 + 24) = v34;

    swift_unknownObjectRetain();
    v66 = v73;
    v65 = v74;
    sub_25C4C1D5C(v73, v74, sub_25C4787DC, v64);
    v57(v71, v44);

    sub_25C45A5B8(v66, v65);
  }

  else
  {
    v82 = 2125646;
    v83 = 0xE300000000000000;
    MEMORY[0x25F887A50](v18, v20);
    v42 = objc_allocWithZone(sub_25C4C7B80());
    sub_25C4C7B90();
    swift_willThrow();
  }
}

uint64_t sub_25C4715BC(uint64_t a1)
{
  v2 = sub_25C4C80B0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_25C4C7B20();
  v73 = *(v7 - 8);
  v8 = *(v73 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v71 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v69 = &v61 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v61 - v14;
  v70 = v16;
  MEMORY[0x28223BE20](v13);
  v18 = &v61 - v17;
  (*(v3 + 104))(v6, *MEMORY[0x277D35840], v2);
  v19 = sub_25C4C80A0();
  v21 = v20;
  (*(v3 + 8))(v6, v2);
  swift_getObjectType();
  v72 = a1;
  if (sub_25C4C86D0())
  {
    v22 = v74;
    v23 = *(v74 + 56);
    sub_25C4C7B00();

    v24 = v73;
    v68 = *(v73 + 32);
    v68(v18, v15, v7);
    swift_beginAccess();
    v25 = *(v22 + 120);
    v26 = v7;
    v27 = v18;
    if (*(v25 + 16) && (v28 = sub_25C458F84(v18), (v29 & 1) != 0))
    {
      v30 = *(*(v25 + 56) + 8 * v28);
      swift_endAccess();
      v31 = qword_27FC0B310;
      v67 = v30;

      if (v31 != -1)
      {
        swift_once();
      }

      v32 = sub_25C4C7BD0();
      __swift_project_value_buffer(v32, qword_27FC0B318);
      v33 = v69;
      v66 = *(v24 + 16);
      v66(v69, v27, v7);

      v34 = sub_25C4C7BB0();
      v35 = sub_25C4C8720();

      v36 = os_log_type_enabled(v34, v35);
      v64 = v27;
      if (v36)
      {
        v37 = swift_slowAlloc();
        v61 = v37;
        v63 = swift_slowAlloc();
        v80 = v63;
        *v37 = 136315394;
        sub_25C478A8C(&unk_27FC0A3E0, 255, MEMORY[0x277CC95F0]);
        v62 = v35;
        v38 = v22;
        v39 = sub_25C4C89A0();
        v41 = v40;
        v42 = *(v24 + 8);
        v65 = (v24 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v69 = v42;
        (v42)(v33, v26);
        v43 = sub_25C458990(v39, v41, &v80);

        v44 = v61;
        *(v61 + 1) = v43;
        *(v44 + 6) = 2080;
        swift_beginAccess();
        v45 = *(v38 + 24);
        v76 = *(v38 + 16);
        v77 = v45;

        MEMORY[0x25F887A50](58, 0xE100000000000000);
        v75 = *(v38 + 80);
        v46 = sub_25C4C89A0();
        MEMORY[0x25F887A50](v46);

        v47 = sub_25C458990(v76, v77, &v80);

        *(v44 + 14) = v47;
        _os_log_impl(&dword_25C452000, v34, v62, "Operation cancel: operationUUID=%s, client=%s", v44, 0x16u);
        v48 = v63;
        swift_arrayDestroy();
        MEMORY[0x25F888630](v48, -1, -1);
        MEMORY[0x25F888630](v44, -1, -1);
      }

      else
      {

        v53 = *(v24 + 8);
        v65 = (v24 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v69 = v53;
        (v53)(v33, v26);
      }

      v54 = swift_allocObject();
      swift_weakInit();
      v55 = v71;
      v56 = v64;
      v66(v71, v64, v26);
      v57 = (*(v24 + 80) + 24) & ~*(v24 + 80);
      v58 = v26;
      v59 = (v70 + v57 + 7) & 0xFFFFFFFFFFFFFFF8;
      v60 = swift_allocObject();
      *(v60 + 16) = v54;
      v68((v60 + v57), v55, v58);
      *(v60 + v59) = v72;

      swift_unknownObjectRetain();
      sub_25C4C23B0(sub_25C478980, v60);

      (v69)(v56, v58);
    }

    else
    {
      swift_endAccess();
      v78 = 0;
      v79 = 0xE000000000000000;
      sub_25C4C88F0();

      v78 = 0xD00000000000001ALL;
      v79 = 0x800000025C4D07C0;
      sub_25C478A8C(&unk_27FC0A3E0, 255, MEMORY[0x277CC95F0]);
      v49 = sub_25C4C89A0();
      MEMORY[0x25F887A50](v49);

      v50 = objc_allocWithZone(sub_25C4C7B80());
      sub_25C4C7B90();
      swift_willThrow();
      return (*(v24 + 8))(v18, v7);
    }
  }

  else
  {
    v78 = 2125646;
    v79 = 0xE300000000000000;
    MEMORY[0x25F887A50](v19, v21);
    v52 = objc_allocWithZone(sub_25C4C7B80());
    sub_25C4C7B90();
    swift_willThrow();
  }
}

uint64_t sub_25C471D78(void *a1)
{
  v87 = a1;
  v1 = sub_25C4C7E50();
  v77 = *(v1 - 8);
  v78 = v1;
  v2 = *(v77 + 64);
  v3 = MEMORY[0x28223BE20](v1);
  v74 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v80 = &v70 - v5;
  v6 = sub_25C4C80B0();
  v7 = *(v6 - 8);
  v8 = v7[8];
  MEMORY[0x28223BE20](v6);
  v10 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A4B8, &qword_25C4CA200);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v70 - v13;
  v15 = sub_25C4C7B20();
  v84 = *(v15 - 8);
  v16 = *(v84 + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v75 = &v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v83 = &v70 - v19;
  swift_getObjectType();
  v20 = *MEMORY[0x277D35888];
  v81 = v7[13];
  v81(v10, v20, v6);
  sub_25C4C80A0();
  v21 = v7[1];
  v82 = v6;
  v22 = v6;
  v23 = v21;
  v21(v10, v22);
  sub_25C4C86B0();
  v24 = v84;

  if ((*(v24 + 48))(v14, 1, v15) == 1)
  {
    sub_25C4666F8(v14, &qword_27FC0A4B8, &qword_25C4CA200);
    v25 = objc_allocWithZone(sub_25C4C7B80());
    sub_25C4C7B90();
    return swift_willThrow();
  }

  else
  {
    v27 = v83;
    v28 = v14;
    v29 = v15;
    (*(v24 + 32))(v83, v28, v15);
    v30 = v82;
    v81(v10, *MEMORY[0x277D35898], v82);
    v31 = v24;
    sub_25C4C80A0();
    v23(v10, v30);
    v32 = sub_25C4C8570();

    v33 = xpc_dictionary_get_value(v87, (v32 + 32));

    if (v33)
    {
      swift_unknownObjectRetain();
      v34 = v79;
      v35 = v80;
      sub_25C4C7E40();
      if (v34)
      {
        (*(v24 + 8))(v27, v29);
        return swift_unknownObjectRelease();
      }

      else
      {
        v37 = v76;
        swift_beginAccess();
        v38 = *(v37 + 128);
        if (*(v38 + 16) && (v39 = sub_25C458F84(v27), (v40 & 1) != 0))
        {
          v41 = *(v38 + 56) + 16 * v39;
          v42 = *v41;
          v82 = *(v41 + 8);
          swift_endAccess();
          v43 = qword_27FC0B310;
          v87 = v42;
          swift_unknownObjectRetain();
          v44 = v77;
          if (v43 != -1)
          {
            swift_once();
          }

          v45 = sub_25C4C7BD0();
          __swift_project_value_buffer(v45, qword_27FC0B318);
          (*(v31 + 16))(v75, v27, v29);
          v46 = v74;
          (*(v44 + 16))(v74, v35, v78);
          v47 = sub_25C4C7BB0();
          LODWORD(v79) = sub_25C4C8720();
          v48 = os_log_type_enabled(v47, v79);
          v73 = v29;
          if (v48)
          {
            v49 = swift_slowAlloc();
            v76 = swift_slowAlloc();
            v85 = v76;
            *v49 = 136315394;
            sub_25C478A8C(&unk_27FC0A3E0, 255, MEMORY[0x277CC95F0]);
            v72 = v47;
            v50 = v75;
            v51 = sub_25C4C89A0();
            v53 = v52;
            v71 = *(v84 + 8);
            v71(v50, v29);
            v54 = sub_25C458990(v51, v53, &v85);

            *(v49 + 4) = v54;
            *(v49 + 12) = 2080;
            sub_25C478A8C(&unk_27FC0AA60, 255, MEMORY[0x277D35798]);
            v55 = v74;
            v56 = v78;
            v57 = sub_25C4C89A0();
            v59 = v58;
            v81 = *(v77 + 8);
            (v81)(v55, v56);
            v60 = v57;
            v61 = v71;
            v62 = sub_25C458990(v60, v59, &v85);
            v35 = v80;

            *(v49 + 14) = v62;
            v63 = v72;
            _os_log_impl(&dword_25C452000, v72, v79, "Server operation event: uuid=%s, event:%s", v49, 0x16u);
            v64 = v76;
            swift_arrayDestroy();
            MEMORY[0x25F888630](v64, -1, -1);
            MEMORY[0x25F888630](v49, -1, -1);
          }

          else
          {

            v81 = *(v44 + 8);
            (v81)(v46, v78);
            v67 = v29;
            v61 = *(v84 + 8);
            v61(v75, v67);
          }

          swift_getObjectType();
          v68 = sub_25C4C7F10();
          if (v68)
          {
            v69 = v68;
            v68(v35);
            sub_25C45A2C8(v69);
          }

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          (v81)(v35, v78);
          return (v61)(v27, v73);
        }

        else
        {
          swift_endAccess();
          v85 = 0;
          v86 = 0xE000000000000000;
          sub_25C4C88F0();

          v85 = 0xD000000000000029;
          v86 = 0x800000025C4D0840;
          sub_25C478A8C(&unk_27FC0A3E0, 255, MEMORY[0x277CC95F0]);
          v65 = sub_25C4C89A0();
          MEMORY[0x25F887A50](v65);

          v66 = objc_allocWithZone(sub_25C4C7B80());
          sub_25C4C7B90();
          swift_willThrow();
          swift_unknownObjectRelease();
          (*(v77 + 8))(v35, v78);
          return (*(v31 + 8))(v27, v29);
        }
      }
    }

    else
    {
      v36 = objc_allocWithZone(sub_25C4C7B80());
      sub_25C4C7B90();
      swift_willThrow();
      return (*(v24 + 8))(v27, v29);
    }
  }
}

uint64_t sub_25C4726F8(uint64_t a1)
{
  v2 = sub_25C4C80B0();
  v3 = *(v2 - 8);
  v4 = v3[8];
  MEMORY[0x28223BE20](v2);
  v6 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A4B8, &qword_25C4CA200);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v53 - v9;
  v62 = sub_25C4C7B20();
  v64 = *(v62 - 8);
  v11 = *(v64 + 64);
  v12 = MEMORY[0x28223BE20](v62);
  v54 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v61 = &v53 - v14;
  swift_getObjectType();
  v15 = *MEMORY[0x277D35888];
  v57 = v3[13];
  (v57)(v6, v15, v2);
  sub_25C4C80A0();
  v16 = v3[1];
  v58 = v3 + 1;
  v59 = v2;
  v56 = v16;
  v16(v6, v2);
  v60 = a1;
  sub_25C4C86B0();
  v17 = v64;
  v18 = v62;

  if ((*(v17 + 48))(v10, 1, v18) == 1)
  {
    sub_25C4666F8(v10, &qword_27FC0A4B8, &qword_25C4CA200);
    v19 = objc_allocWithZone(sub_25C4C7B80());
    sub_25C4C7B90();
    return swift_willThrow();
  }

  else
  {
    v21 = v61;
    (*(v17 + 32))(v61, v10, v18);
    v22 = v59;
    (v57)(v6, *MEMORY[0x277D358E0], v59);
    sub_25C4C80A0();
    v56(v6, v22);
    v23 = sub_25C4C86A0();
    v25 = v24;

    if (v25 >> 60 == 15)
    {
      v26 = objc_allocWithZone(sub_25C4C7B80());
      sub_25C4C7B90();
      swift_willThrow();
      return (*(v17 + 8))(v21, v18);
    }

    else
    {
      v27 = v55;
      swift_beginAccess();
      v28 = *(v27 + 128);
      v29 = v21;
      if (*(v28 + 16) && (v30 = sub_25C458F84(v21), (v31 & 1) != 0))
      {
        v32 = (*(v28 + 56) + 16 * v30);
        v33 = *v32;
        v59 = v32[1];
        swift_endAccess();
        v34 = qword_27FC0B310;
        v60 = v33;
        swift_unknownObjectRetain();
        if (v34 != -1)
        {
          swift_once();
        }

        v35 = sub_25C4C7BD0();
        __swift_project_value_buffer(v35, qword_27FC0B318);
        v36 = v64;
        v37 = v54;
        (*(v64 + 16))(v54, v21, v18);
        v38 = sub_25C4C7BB0();
        v39 = sub_25C4C8720();
        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          v57 = v40;
          v58 = swift_slowAlloc();
          v63[0] = v58;
          *v40 = 136315138;
          sub_25C478A8C(&unk_27FC0A3E0, 255, MEMORY[0x277CC95F0]);
          v41 = sub_25C4C89A0();
          v42 = v18;
          v44 = v43;
          v45 = *(v36 + 8);
          v45(v37, v42);
          v46 = sub_25C458990(v41, v44, v63);
          v18 = v42;
          v29 = v61;

          v47 = v57;
          *(v57 + 1) = v46;
          _os_log_impl(&dword_25C452000, v38, v39, "Server operation provider event: uuid=%s", v47, 0xCu);
          v48 = v58;
          __swift_destroy_boxed_opaque_existential_0(v58);
          MEMORY[0x25F888630](v48, -1, -1);
          MEMORY[0x25F888630](v47, -1, -1);
        }

        else
        {

          v45 = *(v36 + 8);
          v45(v37, v18);
        }

        swift_getObjectType();
        v51 = sub_25C4C7EF0();
        if (v51)
        {
          v52 = v51;
          v51(v23, v25);
          sub_25C45A2C8(v52);
        }

        sub_25C45A5B8(v23, v25);
        swift_unknownObjectRelease();
        return (v45)(v29, v18);
      }

      else
      {
        swift_endAccess();
        v63[0] = 0;
        v63[1] = 0xE000000000000000;
        sub_25C4C88F0();
        MEMORY[0x25F887A50](0xD000000000000032, 0x800000025C4D08A0);
        sub_25C478A8C(&unk_27FC0A3E0, 255, MEMORY[0x277CC95F0]);
        v49 = sub_25C4C89A0();
        MEMORY[0x25F887A50](v49);

        v50 = objc_allocWithZone(sub_25C4C7B80());
        sub_25C4C7B90();
        swift_willThrow();
        sub_25C45A5B8(v23, v25);
        return (*(v64 + 8))(v21, v18);
      }
    }
  }
}

uint64_t sub_25C472E7C(uint64_t a1)
{
  v2 = sub_25C4C80B0();
  v3 = *(v2 - 8);
  v4 = v3[8];
  MEMORY[0x28223BE20](v2);
  v6 = v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A4B8, &qword_25C4CA200);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v71 - v9;
  v11 = sub_25C4C7B20();
  v86 = *(v11 - 8);
  v12 = *(v86 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v76 = v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v83 = v71 - v15;
  swift_getObjectType();
  v16 = *MEMORY[0x277D35888];
  v77 = v3[13];
  v78 = (v3 + 13);
  v77(v6, v16, v2);
  sub_25C4C80A0();
  v18 = v3[1];
  v17 = v3 + 1;
  v79 = v6;
  v80 = v2;
  v19 = v2;
  v20 = v18;
  v18(v6, v19);
  v81 = a1;
  sub_25C4C86B0();
  v21 = v86;
  v22 = v11;

  if ((*(v21 + 48))(v10, 1, v11) == 1)
  {
    sub_25C4666F8(v10, &qword_27FC0A4B8, &qword_25C4CA200);
    v23 = objc_allocWithZone(sub_25C4C7B80());
    sub_25C4C7B90();
    return swift_willThrow();
  }

  v25 = v83;
  (*(v21 + 32))(v83, v10, v22);
  v26 = v82;
  swift_beginAccess();
  v27 = *(v26 + 128);
  if (!*(v27 + 16) || (v28 = sub_25C458F84(v25), (v29 & 1) == 0))
  {
    swift_endAccess();
    v84 = 0;
    v85 = 0xE000000000000000;
    sub_25C4C88F0();

    v84 = 0xD000000000000029;
    v85 = 0x800000025C4D0840;
    sub_25C478A8C(&unk_27FC0A3E0, 255, MEMORY[0x277CC95F0]);
    v42 = sub_25C4C89A0();
    MEMORY[0x25F887A50](v42);

    v43 = objc_allocWithZone(sub_25C4C7B80());
    sub_25C4C7B90();
    swift_willThrow();
    return (*(v86 + 8))(v25, v22);
  }

  v75 = v22;
  v30 = (*(v27 + 56) + 16 * v28);
  v31 = *v30;
  v71[1] = v30[1];
  swift_endAccess();
  v32 = v79;
  v33 = v80;
  v34 = v77;
  v77(v79, *MEMORY[0x277D35850], v80);
  v74 = v31;
  swift_unknownObjectRetain();
  sub_25C4C80A0();
  v73 = v17;
  v20(v32, v33);
  v35 = v81;
  v71[0] = sub_25C4C86C0();
  v37 = v36;

  if (!v37)
  {
    v44 = objc_allocWithZone(sub_25C4C7B80());
    goto LABEL_10;
  }

  v72 = v37;
  v34(v32, *MEMORY[0x277D35848], v33);
  sub_25C4C80A0();
  v20(v32, v33);
  v38 = sub_25C4C86A0();
  v40 = v39;

  if (v40 >> 60 == 15)
  {

    v41 = objc_allocWithZone(sub_25C4C7B80());
LABEL_10:
    sub_25C4C7B90();
    swift_willThrow();
    swift_unknownObjectRelease();
    return (*(v86 + 8))(v83, v75);
  }

  v80 = v38;
  swift_getObjectType();
  v45 = sub_25C4C7ED0();
  v47 = v75;
  if (v45)
  {
    v77 = v46;
    v78 = v45;
    v79 = v40;
    if (qword_27FC0B310 != -1)
    {
      swift_once();
    }

    v48 = sub_25C4C7BD0();
    __swift_project_value_buffer(v48, qword_27FC0B318);
    v49 = v86;
    v50 = v76;
    (*(v86 + 16))(v76, v83, v47);
    v51 = v72;

    v52 = v51;
    v53 = sub_25C4C7BB0();
    v54 = sub_25C4C8720();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v84 = v56;
      *v55 = 136315394;
      v57 = v71[0];
      *(v55 + 4) = sub_25C458990(v71[0], v52, &v84);
      *(v55 + 12) = 2080;
      sub_25C478A8C(&unk_27FC0A3E0, 255, MEMORY[0x277CC95F0]);
      v58 = sub_25C4C89A0();
      v59 = v50;
      v61 = v60;
      v86 = *(v49 + 8);
      (v86)(v59, v75);
      v62 = v57;
      v63 = sub_25C458990(v58, v61, &v84);
      v47 = v75;

      *(v55 + 14) = v63;
      v52 = v72;
      _os_log_impl(&dword_25C452000, v53, v54, "Send operation request: requestName=%s, uuid=%s", v55, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F888630](v56, -1, -1);
      v64 = v55;
      v35 = v81;
      MEMORY[0x25F888630](v64, -1, -1);
    }

    else
    {

      v86 = *(v49 + 8);
      (v86)(v50, v47);
      v62 = v71[0];
    }

    v66 = swift_allocObject();
    swift_weakInit();
    v67 = swift_allocObject();
    *(v67 + 16) = v66;
    *(v67 + 24) = v35;

    swift_unknownObjectRetain();
    v68 = v79;
    v69 = v80;
    v70 = v78;
    v78(v62, v52, v80, v79, sub_25C478B4C, v67);
    sub_25C45A2C8(v70);

    sub_25C45A5B8(v69, v68);

    swift_unknownObjectRelease();
    (v86)(v83, v47);
  }

  else
  {

    v65 = objc_allocWithZone(sub_25C4C7B80());
    sub_25C4C7B90();
    swift_willThrow();
    sub_25C45A5B8(v80, v40);
    swift_unknownObjectRelease();
    return (*(v86 + 8))(v83, v47);
  }
}

uint64_t sub_25C473818(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A4C0, &qword_25C4CA208);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v132 = &v113 - v4;
  v138 = sub_25C4C7D10();
  v129 = *(v138 - 8);
  v5 = *(v129 + 64);
  v6 = MEMORY[0x28223BE20](v138);
  v127 = &v113 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v126 = &v113 - v9;
  MEMORY[0x28223BE20](v8);
  v133 = &v113 - v10;
  v11 = sub_25C4C80B0();
  v12 = *(v11 - 8);
  v13 = v12[8];
  v14 = MEMORY[0x28223BE20](v11);
  v130 = &v113 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v113 - v16;
  v18 = sub_25C4C7B20();
  v142 = *(v18 - 8);
  v19 = *(v142 + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v113 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v113 - v23;
  v25 = *MEMORY[0x277D358C8];
  v140 = v12[13];
  v141 = v12 + 13;
  v140(v17, v25, v11);
  v26 = sub_25C4C80A0();
  v28 = v27;
  v30 = v12[1];
  v29 = (v12 + 1);
  v135 = v17;
  v136 = v11;
  v134 = v30;
  v30(v17, v11);
  ObjectType = swift_getObjectType();
  v137 = a1;
  v32 = sub_25C4C86D0();
  if (!v32)
  {
    v146 = 2125646;
    v147 = 0xE300000000000000;
    MEMORY[0x25F887A50](v26, v28);
    v53 = objc_allocWithZone(sub_25C4C7B80());
    sub_25C4C7B90();
    swift_willThrow();
  }

  v33 = v32;
  v128 = ObjectType;
  v34 = v139;
  v35 = *(v139 + 56);
  sub_25C4C7B00();

  v36 = v142;
  (*(v142 + 32))(v24, v22, v18);
  swift_beginAccess();
  if (*(*(v34 + 136) + 16))
  {
    sub_25C458F84(v24);
    if (v37)
    {
      swift_endAccess();
      v146 = 0;
      v147 = 0xE000000000000000;
      sub_25C4C88F0();

      v146 = 0xD00000000000001DLL;
      v147 = 0x800000025C4D0940;
      sub_25C478A8C(&unk_27FC0A3E0, 255, MEMORY[0x277CC95F0]);
      v38 = sub_25C4C89A0();
      MEMORY[0x25F887A50](v38);

      v39 = objc_allocWithZone(sub_25C4C7B80());
      sub_25C4C7B90();
      swift_willThrow();
      return (*(v36 + 8))(v24, v18);
    }
  }

  v121 = v33;
  v125 = v24;
  v124 = v18;
  swift_endAccess();
  v42 = v135;
  v41 = v136;
  v43 = v140;
  v140(v135, *MEMORY[0x277D35860], v136);
  sub_25C4C80A0();
  v44 = v134;
  v134(v42, v41);
  v120 = sub_25C4C86C0();
  v123 = v45;

  v46 = v130;
  v43(v130, *MEMORY[0x277D358B8], v41);
  v122 = sub_25C4C80A0();
  v130 = v29;
  v44(v46, v41);
  v47 = sub_25C4C7A10();
  v48 = *(v47 + 48);
  v49 = *(v47 + 52);
  swift_allocObject();
  v146 = sub_25C4C7A00();
  sub_25C478A8C(&qword_27FC0A4C8, 255, MEMORY[0x277D35678]);
  sub_25C478A8C(&qword_27FC0A4A0, 255, MEMORY[0x277CC8710]);
  v50 = v131;
  v51 = v132;
  v52 = v138;
  sub_25C4C8680();
  if (v50)
  {

    return (*(v142 + 8))(v125, v124);
  }

  v131 = 0;

  v54 = v129;
  v55 = *(v129 + 48);
  if (v55(v51, 1, v52) == 1)
  {
    (*(v54 + 104))(v133, *MEMORY[0x277D35668], v52);
    v56 = v55(v51, 1, v52);
    v58 = v135;
    v57 = v136;
    v59 = v140;
    if (v56 != 1)
    {
      sub_25C4666F8(v51, &qword_27FC0A4C0, &qword_25C4CA208);
    }
  }

  else
  {
    (*(v54 + 32))(v133, v51, v52);
    v58 = v135;
    v57 = v136;
    v59 = v140;
  }

  v59(v58, *MEMORY[0x277D35870], v57);
  sub_25C4C80A0();
  v60 = v134;
  v134(v58, v57);
  v61 = sub_25C4C8670();

  if (!v61)
  {

    v95 = objc_allocWithZone(sub_25C4C7B80());
LABEL_20:
    sub_25C4C7B90();
    swift_willThrow();
    (*(v129 + 8))(v133, v138);
    return (*(v142 + 8))(v125, v124);
  }

  v132 = v61;
  v140(v58, *MEMORY[0x277D358A0], v57);
  sub_25C4C80A0();
  v60(v58, v57);
  v62 = sub_25C4C8670();

  if (!v62)
  {

    v96 = objc_allocWithZone(sub_25C4C7B80());
    goto LABEL_20;
  }

  v63 = v139;
  swift_beginAccess();
  v64 = *(v63 + 24);
  v144 = *(v63 + 16);
  v145 = v64;

  MEMORY[0x25F887A50](58, 0xE100000000000000);
  LODWORD(v143) = *(v63 + 80);
  v65 = sub_25C4C89A0();
  MEMORY[0x25F887A50](v65);

  v66 = v145;
  v122 = v144;
  v67 = v129;
  if (qword_27FC0B310 != -1)
  {
    swift_once();
  }

  v68 = sub_25C4C7BD0();
  __swift_project_value_buffer(v68, qword_27FC0B318);
  v69 = v126;
  v70 = v138;
  v119 = *(v67 + 16);
  v118 = v67 + 16;
  v119(v126, v133, v138);
  v71 = v132;

  v72 = sub_25C4C7BB0();
  v73 = sub_25C4C8720();

  v115 = v73;
  v117 = v72;
  v74 = os_log_type_enabled(v72, v73);
  v116 = v66;
  if (v74)
  {
    v75 = v66;
    v76 = swift_slowAlloc();
    v114 = swift_slowAlloc();
    v144 = v114;
    *v76 = 136315906;
    sub_25C478A8C(&qword_27FC0A4D0, 255, MEMORY[0x277D35678]);
    v77 = v75;
    v78 = sub_25C4C89A0();
    v80 = v79;
    v128 = *(v129 + 8);
    v128(v69, v70);
    v81 = sub_25C458990(v78, v80, &v144);

    *(v76 + 4) = v81;
    *(v76 + 12) = 2080;
    v143 = v71;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A4D8, &qword_25C4CA210);
    sub_25C478AD4();
    v82 = sub_25C4C8520();
    v84 = sub_25C458990(v82, v83, &v144);

    *(v76 + 14) = v84;
    *(v76 + 22) = 2080;
    v143 = v62;
    v63 = v139;
    v85 = v136;
    v86 = sub_25C4C8520();
    v88 = sub_25C458990(v86, v87, &v144);

    *(v76 + 24) = v88;
    *(v76 + 32) = 2080;
    v89 = v62;
    v90 = v122;
    *(v76 + 34) = sub_25C458990(v122, v77, &v144);
    v91 = v117;
    _os_log_impl(&dword_25C452000, v117, v115, "ServerStart: mode=%s, requests=[%s], operations=[%s], client=%s", v76, 0x2Au);
    v92 = v114;
    swift_arrayDestroy();
    MEMORY[0x25F888630](v92, -1, -1);
    v93 = v76;
    v94 = v134;
    MEMORY[0x25F888630](v93, -1, -1);
  }

  else
  {

    v128 = *(v67 + 8);
    v128(v69, v70);
    v85 = v136;
    v94 = v134;
    v89 = v62;
    v90 = v122;
  }

  type metadata accessor for NXServerDaemon(0);
  v97 = v127;
  v119(v127, v133, v138);
  v98 = *(v63 + 32);

  v99 = sub_25C4535A8(v120, v123, v97, v71, v89, v121, v90, v116, v98, v63);
  v100 = v135;
  v140(v135, *MEMORY[0x277D35868], v85);
  sub_25C4C80A0();
  v101 = v63;
  v94(v100, v85);
  v102 = sub_25C4C8570();

  v103 = v137;
  v104 = xpc_dictionary_get_BOOL(v137, (v102 + 32));

  v105 = OBJC_IVAR____TtC11NexusDaemon14NXServerDaemon_needsNetwork;
  swift_beginAccess();
  *(v99 + v105) = v104;
  swift_beginAccess();

  v106 = *(v101 + 136);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v148 = *(v101 + 136);
  *(v101 + 136) = 0x8000000000000000;
  v108 = v125;
  sub_25C477AD0(v99, v125, isUniquelyReferenced_nonNull_native, &qword_27FC0A4E8, &qword_25C4CA218);
  *(v101 + 136) = v148;
  swift_endAccess();
  v109 = v131;
  sub_25C4536F0();
  if (!v109)
  {
    v110 = v133;
    v111 = v138;
    v112 = sub_25C46B534(v103);
    if (v112)
    {
      xpc_connection_send_message(*(v101 + 88), v112);
      sub_25C485248();

      swift_unknownObjectRelease();
    }

    else
    {
    }

    v128(v110, v111);
    return (*(v142 + 8))(v125, v124);
  }

  v128(v133, v138);
  return (*(v142 + 8))(v108, v124);
}

uint64_t sub_25C47481C(void *a1)
{
  v2 = sub_25C4C80B0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_25C4C7B20();
  v51 = *(v7 - 8);
  v8 = *(v51 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v48 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v46 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v46 - v14;
  (*(v3 + 104))(v6, *MEMORY[0x277D358C8], v2);
  v16 = sub_25C4C80A0();
  v18 = v17;
  (*(v3 + 8))(v6, v2);
  swift_getObjectType();
  v49 = a1;
  if (sub_25C4C86D0())
  {
    v19 = v50;
    v20 = *(v50 + 56);
    sub_25C4C7B00();

    v21 = v51;
    (*(v51 + 32))(v15, v13, v7);
    swift_beginAccess();
    v22 = *(v19 + 136);
    v23 = v7;
    v24 = v21;
    if (*(v22 + 16) && (v25 = sub_25C458F84(v15), (v26 & 1) != 0))
    {
      v27 = *(*(v22 + 56) + 8 * v25);
      swift_endAccess();
      v28 = qword_27FC0B310;

      if (v28 != -1)
      {
        swift_once();
      }

      v29 = sub_25C4C7BD0();
      __swift_project_value_buffer(v29, qword_27FC0B318);

      v30 = sub_25C4C7BB0();
      v31 = sub_25C4C8720();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v47 = v15;
        v33 = v32;
        v34 = swift_slowAlloc();
        v55 = v34;
        *v33 = 136315138;
        swift_beginAccess();
        v35 = *(v19 + 24);
        v53 = *(v19 + 16);
        v54 = v35;

        MEMORY[0x25F887A50](58, 0xE100000000000000);
        v52 = *(v19 + 80);
        v36 = sub_25C4C89A0();
        v37 = v19;
        MEMORY[0x25F887A50](v36);

        v38 = sub_25C458990(v53, v54, &v55);

        *(v33 + 4) = v38;
        v19 = v37;
        _os_log_impl(&dword_25C452000, v30, v31, "ServerStop: client=%s", v33, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v34);
        MEMORY[0x25F888630](v34, -1, -1);
        v15 = v47;
        v24 = v51;
        MEMORY[0x25F888630](v33, -1, -1);
      }

      v39 = v48;
      (*(v24 + 16))(v48, v15, v23);
      swift_beginAccess();
      sub_25C475138(0, v39, &qword_27FC0A4E8, &qword_25C4CA218);
      swift_endAccess();
      sub_25C4548F4();
      v40 = sub_25C46B534(v49);
      if (v40)
      {
        xpc_connection_send_message(*(v19 + 88), v40);
        v41 = *(v19 + 32);
        sub_25C485248();

        swift_unknownObjectRelease();
        return (*(v24 + 8))(v15, v23);
      }

      else
      {
        (*(v24 + 8))(v15, v23);
      }
    }

    else
    {
      swift_endAccess();
      v53 = 0;
      v54 = 0xE000000000000000;
      sub_25C4C88F0();

      v53 = 0xD00000000000001DLL;
      v54 = 0x800000025C4D0960;
      sub_25C478A8C(&unk_27FC0A3E0, 255, MEMORY[0x277CC95F0]);
      v43 = sub_25C4C89A0();
      MEMORY[0x25F887A50](v43);

      v44 = objc_allocWithZone(sub_25C4C7B80());
      sub_25C4C7B90();
      swift_willThrow();
      return (*(v21 + 8))(v15, v23);
    }
  }

  else
  {
    v53 = 2125646;
    v54 = 0xE300000000000000;
    MEMORY[0x25F887A50](v16, v18);
    v45 = objc_allocWithZone(sub_25C4C7B80());
    sub_25C4C7B90();
    swift_willThrow();
  }
}

uint64_t sub_25C474E64(uint64_t a1, uint64_t a2)
{
  v3 = sub_25C4C7B20();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = result;
    if (qword_27FC0B310 != -1)
    {
      swift_once();
    }

    v10 = sub_25C4C7BD0();
    __swift_project_value_buffer(v10, qword_27FC0B318);

    v11 = sub_25C4C7BB0();
    v12 = sub_25C4C8720();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v20 = a2;
      v14 = v13;
      v15 = swift_slowAlloc();
      v22 = v15;
      *v14 = 136315138;
      swift_beginAccess();
      v16 = *(v9 + 24);
      v23 = *(v9 + 16);
      v24 = v16;

      MEMORY[0x25F887A50](58, 0xE100000000000000);
      v21 = *(v9 + 80);
      v17 = sub_25C4C89A0();
      MEMORY[0x25F887A50](v17);

      v18 = sub_25C458990(v23, v24, &v22);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_25C452000, v11, v12, "ClientStopped: client=%s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x25F888630](v15, -1, -1);
      v19 = v14;
      a2 = v20;
      MEMORY[0x25F888630](v19, -1, -1);
    }

    (*(v4 + 16))(v7, a2, v3);
    swift_beginAccess();
    sub_25C475138(0, v7, &qword_27FC0A488, &qword_25C4CA1E8);
    swift_endAccess();
    sub_25C46B368();
  }

  return result;
}

uint64_t sub_25C475138(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  if (a1)
  {
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = *v4;
    sub_25C477AD0(a1, a2, isUniquelyReferenced_nonNull_native, a3, a4);
    v12 = sub_25C4C7B20();
    result = (*(*(v12 - 8) + 8))(a2, v12);
    *v4 = v28;
  }

  else
  {
    v14 = *v4;
    v15 = sub_25C458F84(a2);
    if (v16)
    {
      v17 = v15;
      v18 = *v7;
      v19 = swift_isUniquelyReferenced_nonNull_native();
      v20 = *v7;
      v29 = *v7;
      if (!v19)
      {
        sub_25C478010(a3, a4);
        v20 = v29;
      }

      v21 = *(v20 + 48);
      v22 = sub_25C4C7B20();
      v23 = *(v22 - 8);
      v24 = *(v23 + 8);
      v24(v21 + *(v23 + 72) * v17, v22);
      v25 = *(*(v20 + 56) + 8 * v17);

      sub_25C477488(v17, v20);
      result = (v24)(a2, v22);
      *v7 = v20;
    }

    else
    {
      v26 = sub_25C4C7B20();
      v27 = *(*(v26 - 8) + 8);

      return v27(a2, v26);
    }
  }

  return result;
}

uint64_t sub_25C47531C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    sub_25C477CAC(a1, a2, a3, isUniquelyReferenced_nonNull_native);
    v10 = sub_25C4C7B20();
    result = (*(*(v10 - 8) + 8))(a3, v10);
    *v3 = v26;
  }

  else
  {
    v12 = *v3;
    v13 = sub_25C458F84(a3);
    if (v14)
    {
      v15 = v13;
      v16 = *v4;
      v17 = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v4;
      v27 = *v4;
      if (!v17)
      {
        sub_25C478288();
        v18 = v27;
      }

      v19 = *(v18 + 48);
      v20 = sub_25C4C7B20();
      v21 = *(v20 - 8);
      v22 = *(v21 + 8);
      v22(v19 + *(v21 + 72) * v15, v20);
      v23 = *(*(v18 + 56) + 16 * v15);
      swift_unknownObjectRelease();
      sub_25C4777AC(v15, v18);
      result = (v22)(a3, v20);
      *v4 = v18;
    }

    else
    {
      v24 = sub_25C4C7B20();
      v25 = *(*(v24 - 8) + 8);

      return v25(a3, v24);
    }
  }

  return result;
}

uint64_t sub_25C4754E8(uint64_t a1, uint64_t a2)
{
  v3 = sub_25C4C7B20();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = result;
    if (qword_27FC0B310 != -1)
    {
      swift_once();
    }

    v10 = sub_25C4C7BD0();
    __swift_project_value_buffer(v10, qword_27FC0B318);

    v11 = sub_25C4C7BB0();
    v12 = sub_25C4C8720();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v20 = a2;
      v14 = v13;
      v15 = swift_slowAlloc();
      v22 = v15;
      *v14 = 136315138;
      swift_beginAccess();
      v16 = *(v9 + 24);
      v23 = *(v9 + 16);
      v24 = v16;

      MEMORY[0x25F887A50](58, 0xE100000000000000);
      v21 = *(v9 + 80);
      v17 = sub_25C4C89A0();
      MEMORY[0x25F887A50](v17);

      v18 = sub_25C458990(v23, v24, &v22);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_25C452000, v11, v12, "DiscoveryStopped: client=%s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x25F888630](v15, -1, -1);
      v19 = v14;
      a2 = v20;
      MEMORY[0x25F888630](v19, -1, -1);
    }

    (*(v4 + 16))(v7, a2, v3);
    swift_beginAccess();
    sub_25C475138(0, v7, &qword_27FC0A4A8, &qword_25C4CA1F8);
    swift_endAccess();
    sub_25C46B368();
  }

  return result;
}

void sub_25C4757BC(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_25C4C7B20();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v16[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    if (a1)
    {
      (*(v8 + 16))(v11, a3, v7);
      swift_beginAccess();
      v14 = a1;
      sub_25C475138(0, v11, &qword_27FC0A4B0, &qword_25C4CACD0);
      swift_endAccess();
      sub_25C46C7C4(a4, a1);
    }

    else
    {
      v15 = sub_25C46B534(a4);
      if (v15)
      {
        xpc_connection_send_message(*(v13 + 88), v15);
        swift_unknownObjectRelease();
      }
    }
  }
}

void sub_25C47595C(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_25C4C7B20();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v16[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    (*(v8 + 16))(v11, a3, v7);
    swift_beginAccess();
    sub_25C475138(0, v11, &qword_27FC0A4B0, &qword_25C4CACD0);
    swift_endAccess();
    if (a1)
    {
      v14 = a1;
      sub_25C46C7C4(a4, a1);
    }

    else
    {
      v15 = sub_25C46B534(a4);
      if (v15)
      {
        xpc_connection_send_message(*(v13 + 88), v15);
        swift_unknownObjectRelease();
      }
    }
  }
}

uint64_t sub_25C475AFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_25C4C84C0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20]();
  v12 = (&v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v4 + 40);
  *v12 = v13;
  (*(v9 + 104))(v12, *MEMORY[0x277D85200], v8);
  v14 = v13;
  LOBYTE(v13) = sub_25C4C84E0();
  result = (*(v9 + 8))(v12, v8);
  if (v13)
  {
    swift_beginAccess();
    if (*(*(v4 + 128) + 16) && (sub_25C458F84(a1), (v16 & 1) != 0))
    {
      swift_endAccess();
      v22 = 0;
      v23 = 0xE000000000000000;
      sub_25C4C88F0();

      v22 = 0xD00000000000002ALL;
      v23 = 0x800000025C4D0540;
      sub_25C4C7B20();
      sub_25C478A8C(&unk_27FC0A3E0, 255, MEMORY[0x277CC95F0]);
      v17 = sub_25C4C89A0();
      MEMORY[0x25F887A50](v17);

      v18 = objc_allocWithZone(sub_25C4C7B80());
      sub_25C4C7B90();
      return swift_willThrow();
    }

    else
    {
      swift_endAccess();
      swift_beginAccess();
      swift_unknownObjectRetain();
      v19 = *(v4 + 128);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v24 = *(v4 + 128);
      *(v4 + 128) = 0x8000000000000000;
      sub_25C477CAC(a2, a3, a1, isUniquelyReferenced_nonNull_native);
      *(v4 + 128) = v24;
      return swift_endAccess();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25C475DA4(uint64_t a1)
{
  v3 = sub_25C4C7B20();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20]();
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_25C4C84C0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20]();
  v12 = (&v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v1 + 40);
  *v12 = v13;
  (*(v9 + 104))(v12, *MEMORY[0x277D85200], v8);
  v14 = v13;
  LOBYTE(v13) = sub_25C4C84E0();
  result = (*(v9 + 8))(v12, v8);
  if (v13)
  {
    (*(v4 + 16))(v7, a1, v3);
    swift_beginAccess();
    sub_25C47531C(0, 0, v7);
    return swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_25C475F88(uint64_t a1, uint64_t a2)
{
  v5 = sub_25C4C7E50();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v49[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_25C4C7B20();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v49[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v17 = &v49[-v16];
  swift_beginAccess();
  v18 = *(v2 + 128);
  if (*(v18 + 16) && (v19 = sub_25C458F84(a2), (v20 & 1) != 0))
  {
    v21 = (*(v18 + 56) + 16 * v19);
    v22 = *v21;
    v53 = v21[1];
    v54 = a1;
    swift_endAccess();
    v23 = qword_27FC0B310;
    swift_unknownObjectRetain();
    if (v23 != -1)
    {
      swift_once();
    }

    v24 = sub_25C4C7BD0();
    __swift_project_value_buffer(v24, qword_27FC0B318);
    (*(v11 + 16))(v17, a2, v10);
    (*(v6 + 16))(v9, v54, v5);
    v25 = sub_25C4C7BB0();
    v26 = sub_25C4C8720();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v52 = v22;
      v28 = v27;
      v51 = swift_slowAlloc();
      v55[0] = v51;
      *v28 = 136315394;
      sub_25C478A8C(&unk_27FC0A3E0, 255, MEMORY[0x277CC95F0]);
      v29 = sub_25C4C89A0();
      v50 = v26;
      v31 = v30;
      (*(v11 + 8))(v17, v10);
      v32 = sub_25C458990(v29, v31, v55);

      *(v28 + 4) = v32;
      *(v28 + 12) = 2080;
      sub_25C478A8C(&unk_27FC0AA60, 255, MEMORY[0x277D35798]);
      v33 = sub_25C4C89A0();
      v35 = v34;
      (*(v6 + 8))(v9, v5);
      v36 = sub_25C458990(v33, v35, v55);

      *(v28 + 14) = v36;
      _os_log_impl(&dword_25C452000, v25, v50, "Server operation event: uuid=%s, event:%s", v28, 0x16u);
      v37 = v51;
      swift_arrayDestroy();
      MEMORY[0x25F888630](v37, -1, -1);
      MEMORY[0x25F888630](v28, -1, -1);
    }

    else
    {

      (*(v6 + 8))(v9, v5);
      (*(v11 + 8))(v17, v10);
    }

    swift_getObjectType();
    v47 = sub_25C4C7F10();
    if (v47)
    {
      v48 = v47;
      v47(v54);
      sub_25C45A2C8(v48);
    }

    swift_unknownObjectRelease();
  }

  else
  {
    swift_endAccess();
    if (qword_27FC0B310 != -1)
    {
      swift_once();
    }

    v38 = sub_25C4C7BD0();
    __swift_project_value_buffer(v38, qword_27FC0B318);
    (*(v11 + 16))(v15, a2, v10);
    v39 = sub_25C4C7BB0();
    v40 = sub_25C4C8720();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v55[0] = v42;
      *v41 = 136315138;
      sub_25C478A8C(&unk_27FC0A3E0, 255, MEMORY[0x277CC95F0]);
      v43 = sub_25C4C89A0();
      v45 = v44;
      (*(v11 + 8))(v15, v10);
      v46 = sub_25C458990(v43, v45, v55);

      *(v41 + 4) = v46;
      _os_log_impl(&dword_25C452000, v39, v40, "Server operation handler not found: uuid=%s", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v42);
      MEMORY[0x25F888630](v42, -1, -1);
      MEMORY[0x25F888630](v41, -1, -1);
    }

    else
    {

      (*(v11 + 8))(v15, v10);
    }
  }
}

uint64_t sub_25C4765C8(void *a1, uint64_t a2, char a3, uint64_t a4, void *a5)
{
  v8 = sub_25C4C80B0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v14 = result;
    if (a3)
    {
      sub_25C46C7C4(a5, a1);
    }

    else
    {
      v15 = sub_25C46B534(a5);
      if (v15)
      {
        v16 = v15;
        (*(v9 + 104))(v12, *MEMORY[0x277D35878], v8);
        sub_25C4C80A0();
        (*(v9 + 8))(v12, v8);
        v17 = sub_25C4C7AC0();
        v18 = sub_25C4C8570();

        xpc_dictionary_set_value(v16, (v18 + 32), v17);
        swift_unknownObjectRelease();

        v19 = *(v14 + 88);
        v20 = swift_unknownObjectRetain();
        xpc_connection_send_message(v20, v16);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

uint64_t sub_25C4767A8(uint64_t a1)
{
  v46 = a1;
  v47 = sub_25C4C7B20();
  v2 = *(v47 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v47);
  v42 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A3D8, &qword_25C4CA060);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v35 - v10;
  swift_beginAccess();
  v12 = *(v1 + 136);
  v13 = *(v12 + 64);
  v37 = v12 + 64;
  v14 = 1 << *(v12 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v13;
  v36 = (v14 + 63) >> 6;
  v38 = v2 + 32;
  v39 = v2 + 16;
  v43 = v2;
  v44 = v12;
  v45 = (v2 + 8);

  v18 = 0;
  v40 = v11;
  v41 = v9;
  v19 = v42;
  if (v16)
  {
    while (1)
    {
      v20 = v18;
LABEL_12:
      v23 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v24 = v23 | (v20 << 6);
      v26 = v43;
      v25 = v44;
      v27 = v47;
      (*(v43 + 16))(v19, *(v44 + 48) + *(v43 + 72) * v24, v47);
      v28 = *(*(v25 + 56) + 8 * v24);
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A3D0, &qword_25C4CA058);
      v30 = *(v29 + 48);
      v31 = *(v26 + 32);
      v9 = v41;
      v31(v41, v19, v27);
      *&v9[v30] = v28;
      (*(*(v29 - 8) + 56))(v9, 0, 1, v29);

      v22 = v20;
      v11 = v40;
LABEL_13:
      sub_25C465DA4(v9, v11, &qword_27FC0A3D8, &qword_25C4CA060);
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A3D0, &qword_25C4CA058);
      if ((*(*(v32 - 8) + 48))(v11, 1, v32) == 1)
      {
      }

      v33 = *&v11[*(v32 + 48)];
      sub_25C45558C(v46);

      result = (*v45)(v11, v47);
      v18 = v22;
      if (!v16)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    if (v36 <= v18 + 1)
    {
      v21 = v18 + 1;
    }

    else
    {
      v21 = v36;
    }

    v22 = v21 - 1;
    while (1)
    {
      v20 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v20 >= v36)
      {
        v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A3D0, &qword_25C4CA058);
        (*(*(v34 - 8) + 56))(v9, 1, 1, v34);
        v16 = 0;
        goto LABEL_13;
      }

      v16 = *(v37 + 8 * v20);
      ++v18;
      if (v16)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t NXXPCConnection.hashValue.getter()
{
  sub_25C4C8A60();
  MEMORY[0x25F887F30](v0);
  return sub_25C4C8A90();
}

uint64_t sub_25C476C04()
{
  v1 = *v0;
  sub_25C4C8A60();
  MEMORY[0x25F887F30](v1);
  return sub_25C4C8A90();
}

uint64_t sub_25C476C78()
{
  v1 = *v0;
  sub_25C4C8A60();
  MEMORY[0x25F887F30](v1);
  return sub_25C4C8A90();
}

uint64_t sub_25C476CCC(uint64_t a1, int a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v10 = sub_25C4C7B20();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v7;
  if (*(*v7 + 24) > a1)
  {
    v16 = *(*v7 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v47 = a2;
  result = sub_25C4C8970();
  v18 = result;
  if (*(v15 + 16))
  {
    v51 = v14;
    v43 = v7;
    v19 = 0;
    v20 = (v15 + 64);
    v21 = 1 << *(v15 + 32);
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v23 = v22 & *(v15 + 64);
    v24 = (v21 + 63) >> 6;
    v44 = (v11 + 16);
    v45 = v15;
    v46 = v11;
    v48 = (v11 + 32);
    v25 = result + 64;
    while (v23)
    {
      v27 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
LABEL_17:
      v30 = v27 | (v19 << 6);
      v31 = *(v15 + 48);
      v50 = *(v46 + 72);
      v32 = v31 + v50 * v30;
      if (v47)
      {
        (*v48)(v51, v32, v10);
        v49 = *(*(v15 + 56) + 8 * v30);
      }

      else
      {
        (*v44)(v51, v32, v10);
        v49 = *(*(v15 + 56) + 8 * v30);
      }

      v33 = *(v18 + 40);
      sub_25C478A8C(&unk_27FC0A960, 255, MEMORY[0x277CC95F0]);
      result = sub_25C4C8510();
      v34 = -1 << *(v18 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v25 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v25 + 8 * v36);
          if (v40 != -1)
          {
            v26 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v35) & ~*(v25 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v25 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      result = (*v48)(*(v18 + 48) + v50 * v26, v51, v10);
      *(*(v18 + 56) + 8 * v26) = v49;
      ++*(v18 + 16);
      v15 = v45;
    }

    v28 = v19;
    while (1)
    {
      v19 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v19 >= v24)
      {
        break;
      }

      v29 = v20[v19];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v23 = (v29 - 1) & v29;
        goto LABEL_17;
      }
    }

    if ((v47 & 1) == 0)
    {

      v7 = v43;
      goto LABEL_36;
    }

    v41 = 1 << *(v15 + 32);
    v7 = v43;
    if (v41 >= 64)
    {
      bzero(v20, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v20 = -1 << v41;
    }

    *(v15 + 16) = 0;
  }

LABEL_36:
  *v7 = v18;
  return result;
}

uint64_t sub_25C4770AC(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_25C4C7B20();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20]();
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FC0A460, &qword_25C4CA1D8);
  v42 = a2;
  result = sub_25C4C8970();
  v14 = result;
  if (*(v11 + 16))
  {
    v46 = v10;
    v47 = v6;
    v38 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v39 = (v7 + 16);
    v40 = v7;
    v43 = (v7 + 32);
    v21 = result + 64;
    v41 = v11;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v45 = *(v7 + 72);
      v28 = v27 + v45 * v26;
      if (v42)
      {
        (*v43)(v46, v28, v47);
        v44 = *(*(v11 + 56) + 16 * v26);
      }

      else
      {
        (*v39)(v46, v28, v47);
        v44 = *(*(v11 + 56) + 16 * v26);
        swift_unknownObjectRetain();
      }

      v29 = *(v14 + 40);
      sub_25C478A8C(&unk_27FC0A960, 255, MEMORY[0x277CC95F0]);
      result = sub_25C4C8510();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        v7 = v40;
        v11 = v41;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
      v7 = v40;
      v11 = v41;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v43)(*(v14 + 48) + v45 * v22, v46, v47);
      *(*(v14 + 56) + 16 * v22) = v44;
      ++*(v14 + 16);
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

unint64_t sub_25C477488(int64_t a1, uint64_t a2)
{
  v43 = sub_25C4C7B20();
  v4 = *(v43 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x28223BE20](v43);
  v42 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v44 = v7;
    v13 = sub_25C4C8810();
    v14 = v43;
    v7 = v44;
    v15 = v12;
    v41 = (v13 + 1) & v12;
    v17 = *(v4 + 16);
    v16 = v4 + 16;
    v39 = a2 + 64;
    v40 = v17;
    v18 = *(v16 + 56);
    v38 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v11;
      v21 = v42;
      v22 = v15;
      v23 = v16;
      v24 = v7;
      v40(v42, *(v7 + 48) + v18 * v11, v14);
      v25 = *(v24 + 40);
      sub_25C478A8C(&unk_27FC0A960, 255, MEMORY[0x277CC95F0]);
      v26 = sub_25C4C8510();
      result = (*v38)(v21, v14);
      v15 = v22;
      v27 = v26 & v22;
      if (a1 >= v41)
      {
        if (v27 >= v41 && a1 >= v27)
        {
LABEL_15:
          v7 = v44;
          v30 = *(v44 + 48);
          result = v30 + v19 * a1;
          v16 = v23;
          if (v19 * a1 < v20 || (v18 = v19, result >= v30 + v20 + v19))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v7 = v44;
            v18 = v19;
            v15 = v22;
            v9 = v39;
          }

          else
          {
            v9 = v39;
            if (v19 * a1 != v20)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v7 = v44;
              v18 = v19;
              v15 = v22;
            }
          }

          v31 = *(v7 + 56);
          v32 = (v31 + 8 * a1);
          v33 = (v31 + 8 * v11);
          if (a1 != v11 || v32 >= v33 + 1)
          {
            *v32 = *v33;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v27 >= v41 || a1 >= v27)
      {
        goto LABEL_15;
      }

      v16 = v23;
      v9 = v39;
      v18 = v19;
      v7 = v44;
LABEL_4:
      v11 = (v11 + 1) & v15;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(v7 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v36;
    ++*(v7 + 36);
  }

  return result;
}

unint64_t sub_25C4777AC(int64_t a1, uint64_t a2)
{
  v43 = sub_25C4C7B20();
  v4 = *(v43 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x28223BE20]();
  v42 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v44 = v7;
    v13 = sub_25C4C8810();
    v14 = v43;
    v7 = v44;
    v15 = v12;
    v41 = (v13 + 1) & v12;
    v17 = *(v4 + 16);
    v16 = v4 + 16;
    v39 = a2 + 64;
    v40 = v17;
    v18 = *(v16 + 56);
    v38 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v11;
      v21 = v42;
      v22 = v15;
      v23 = v16;
      v24 = v7;
      v40(v42, *(v7 + 48) + v18 * v11, v14);
      v25 = *(v24 + 40);
      sub_25C478A8C(&unk_27FC0A960, 255, MEMORY[0x277CC95F0]);
      v26 = sub_25C4C8510();
      result = (*v38)(v21, v14);
      v15 = v22;
      v27 = v26 & v22;
      if (a1 >= v41)
      {
        if (v27 >= v41 && a1 >= v27)
        {
LABEL_15:
          v7 = v44;
          v30 = *(v44 + 48);
          result = v30 + v19 * a1;
          v16 = v23;
          if (v19 * a1 < v20 || (v18 = v19, result >= v30 + v20 + v19))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v7 = v44;
            v18 = v19;
            v15 = v22;
            v9 = v39;
          }

          else
          {
            v9 = v39;
            if (v19 * a1 != v20)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v7 = v44;
              v18 = v19;
              v15 = v22;
            }
          }

          v31 = *(v7 + 56);
          v32 = (v31 + 16 * a1);
          v33 = (v31 + 16 * v11);
          if (a1 != v11 || v32 >= v33 + 1)
          {
            *v32 = *v33;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v27 >= v41 || a1 >= v27)
      {
        goto LABEL_15;
      }

      v16 = v23;
      v9 = v39;
      v18 = v19;
      v7 = v44;
LABEL_4:
      v11 = (v11 + 1) & v15;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(v7 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v36;
    ++*(v7 + 36);
  }

  return result;
}

uint64_t sub_25C477AD0(uint64_t a1, uint64_t a2, char a3, uint64_t *a4, uint64_t *a5)
{
  v30 = a4;
  v31 = a5;
  v6 = v5;
  v10 = sub_25C4C7B20();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v5;
  v17 = sub_25C458F84(a2);
  v18 = *(v15 + 16);
  v19 = (v16 & 1) == 0;
  v20 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
    goto LABEL_15;
  }

  v21 = v16;
  v22 = *(v15 + 24);
  if (v22 < v20 || (a3 & 1) == 0)
  {
    if (v22 >= v20 && (a3 & 1) == 0)
    {
      sub_25C478010(v30, v31);
      goto LABEL_7;
    }

    sub_25C476CCC(v20, a3 & 1, v30, v31);
    v27 = *v6;
    v28 = sub_25C458F84(a2);
    if ((v21 & 1) == (v29 & 1))
    {
      v17 = v28;
      v23 = *v6;
      if (v21)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v11 + 16))(v14, a2, v10);
      return sub_25C4598E4(v17, v14, a1, v23);
    }

LABEL_15:
    result = sub_25C4C8A20();
    __break(1u);
    return result;
  }

LABEL_7:
  v23 = *v6;
  if ((v21 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v24 = v23[7];
  v25 = *(v24 + 8 * v17);
  *(v24 + 8 * v17) = a1;
}

uint64_t sub_25C477CAC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v31 = a1;
  v9 = sub_25C4C7B20();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20]();
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v4;
  v16 = sub_25C458F84(a3);
  v17 = *(v14 + 16);
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_15;
  }

  v20 = v15;
  v21 = *(v14 + 24);
  if (v21 < v19 || (a4 & 1) == 0)
  {
    if (v21 >= v19 && (a4 & 1) == 0)
    {
      sub_25C478288();
      goto LABEL_9;
    }

    sub_25C4770AC(v19, a4 & 1);
    v22 = *v5;
    v23 = sub_25C458F84(a3);
    if ((v20 & 1) == (v24 & 1))
    {
      v16 = v23;
      goto LABEL_9;
    }

LABEL_15:
    result = sub_25C4C8A20();
    __break(1u);
    return result;
  }

LABEL_9:
  v25 = v31;
  v26 = *v5;
  if (v20)
  {
    v27 = (v26[7] + 16 * v16);
    v28 = *v27;
    *v27 = v31;
    v27[1] = a2;

    return swift_unknownObjectRelease();
  }

  else
  {
    (*(v10 + 16))(v13, a3, v9);
    return sub_25C477F50(v16, v13, v25, a2, v26);
  }
}

uint64_t sub_25C477F18()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25C477F50(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a5[6];
  v11 = sub_25C4C7B20();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  v13 = (a5[7] + 16 * a1);
  *v13 = a3;
  v13[1] = a4;
  v14 = a5[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v16;
  }

  return result;
}

void *sub_25C478010(uint64_t *a1, uint64_t *a2)
{
  v5 = v2;
  v36 = sub_25C4C7B20();
  v38 = *(v36 - 8);
  v6 = *(v38 + 64);
  MEMORY[0x28223BE20](v36);
  v35 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v8 = *v2;
  v9 = sub_25C4C8960();
  v10 = v9;
  if (*(v8 + 16))
  {
    result = (v9 + 64);
    v12 = ((1 << *(v10 + 32)) + 63) >> 6;
    v31 = v5;
    v32 = (v8 + 64);
    if (v10 != v8 || result >= v8 + 64 + 8 * v12)
    {
      result = memmove(result, v32, 8 * v12);
    }

    v14 = 0;
    v15 = *(v8 + 16);
    v37 = v10;
    *(v10 + 16) = v15;
    v16 = 1 << *(v8 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v8 + 64);
    v19 = (v16 + 63) >> 6;
    v33 = v38 + 32;
    v34 = v38 + 16;
    if (v18)
    {
      do
      {
        v20 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
LABEL_17:
        v23 = v20 | (v14 << 6);
        v24 = v38;
        v25 = *(v38 + 72) * v23;
        v27 = v35;
        v26 = v36;
        (*(v38 + 16))(v35, *(v8 + 48) + v25, v36);
        v28 = *(*(v8 + 56) + 8 * v23);
        v29 = v37;
        (*(v24 + 32))(*(v37 + 48) + v25, v27, v26);
        *(*(v29 + 56) + 8 * v23) = v28;

        v18 = v39;
      }

      while (v39);
    }

    v21 = v14;
    while (1)
    {
      v14 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v14 >= v19)
      {

        v5 = v31;
        v10 = v37;
        goto LABEL_21;
      }

      v22 = *(v32 + v14);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v39 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v5 = v10;
  }

  return result;
}

void *sub_25C478288()
{
  v1 = v0;
  v31 = sub_25C4C7B20();
  v33 = *(v31 - 8);
  v2 = *(v33 + 64);
  MEMORY[0x28223BE20]();
  v30 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FC0A460, &qword_25C4CA1D8);
  v4 = *v0;
  v5 = sub_25C4C8960();
  v6 = v5;
  if (*(v4 + 16))
  {
    v26 = v1;
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v4 + 16);
    v32 = v6;
    *(v6 + 16) = v10;
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 64);
    v14 = (v11 + 63) >> 6;
    v29 = v33 + 16;
    v27 = v4 + 64;
    for (i = v33 + 32; v13; result = swift_unknownObjectRetain())
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_14:
      v18 = v15 | (v9 << 6);
      v19 = v33;
      v20 = *(v33 + 72) * v18;
      v21 = v30;
      v22 = v31;
      (*(v33 + 16))(v30, *(v4 + 48) + v20, v31);
      v18 *= 16;
      v23 = v32;
      v24 = *(v32 + 48);
      v25 = *(v19 + 32);
      v34 = *(*(v4 + 56) + v18);
      v25(v24 + v20, v21, v22);
      *(*(v23 + 56) + v18) = v34;
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v26;
        v6 = v32;
        goto LABEL_18;
      }

      v17 = *(v27 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
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

void CUXPCEncodeNSErrorStd(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  CUXPCEncodeNSError();
}

uint64_t sub_25C478584(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A478, &qword_25C4CA1E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25C4785F4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t objectdestroy_10Tm()
{
  v1 = sub_25C4C7B20();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_25C478748(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = *(sub_25C4C7B20() - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return a1(v3, v4);
}

void sub_25C4787DC(void *a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (a1)
    {
      v7 = a1;
      sub_25C46C7C4(v3, a1);
    }

    else
    {
      v8 = sub_25C46B534(v3);
      if (v8)
      {
        v9 = v8;
        v10 = *(v6 + 88);
        v11 = swift_unknownObjectRetain();
        xpc_connection_send_message(v11, v9);

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }
}

uint64_t objectdestroy_22Tm()
{
  v1 = sub_25C4C7B20();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_25C478998(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, unint64_t, uint64_t))
{
  v4 = *(sub_25C4C7B20() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v2 + 16);
  v7 = *(v2 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a2(a1, v6, v2 + v5, v7);
}

uint64_t objectdestroy_14Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25C478A8C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t sub_25C478AD4()
{
  result = qword_27FC0A4E0;
  if (!qword_27FC0A4E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FC0A4D8, &qword_25C4CA210);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC0A4E0);
  }

  return result;
}

uint64_t sub_25C478B50()
{
  v0 = sub_25C4C7BD0();
  __swift_allocate_value_buffer(v0, qword_27FC0B538);
  __swift_project_value_buffer(v0, qword_27FC0B538);
  sub_25C4C7C80();
  return sub_25C4C7BC0();
}

void *sub_25C478BC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = v10;
  v19 = *(v11 + 48);
  v20 = *(v11 + 52);
  v21 = swift_allocObject();
  v21[5] = 0;
  v21[6] = 0;
  *(v21 + OBJC_IVAR____TtC11NexusDaemon14NXClientDaemon__invalidateCalled) = 0;
  v22 = (v21 + OBJC_IVAR____TtC11NexusDaemon14NXClientDaemon_invalidationHandler);
  *v22 = 0;
  v22[1] = 0;
  *(v21 + OBJC_IVAR____TtC11NexusDaemon14NXClientDaemon__session) = 0;
  v21[2] = a2;
  v21[3] = a3;
  v21[4] = a4;
  v23 = *(a7 + 16);
  v21[7] = a7;
  v21[8] = v23;
  v24 = OBJC_IVAR____TtC11NexusDaemon14NXClientDaemon__endpoint;
  v25 = sub_25C4C7C50();
  (*(*(v25 - 8) + 32))(v21 + v24, a1, v25);
  v26 = (v21 + OBJC_IVAR____TtC11NexusDaemon14NXClientDaemon__idsServiceID);
  *v26 = a8;
  v26[1] = a9;
  v27 = (v21 + OBJC_IVAR____TtC11NexusDaemon14NXClientDaemon_label);
  *v27 = a5;
  v27[1] = a6;
  *(v21 + OBJC_IVAR____TtC11NexusDaemon14NXClientDaemon__xpcConnection) = a10;
  v28 = v23;
  return v21;
}

uint64_t sub_25C478CFC()
{
  v1 = v0;
  if (qword_27FC0B530 != -1)
  {
    swift_once();
  }

  v2 = sub_25C4C7BD0();
  __swift_project_value_buffer(v2, qword_27FC0B538);
  v3 = sub_25C4C7BB0();
  v4 = sub_25C4C8700();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_25C452000, v3, v4, "deinit", v5, 2u);
    MEMORY[0x25F888630](v5, -1, -1);
  }

  v6 = OBJC_IVAR____TtC11NexusDaemon14NXClientDaemon__session;
  v7 = *(v1 + OBJC_IVAR____TtC11NexusDaemon14NXClientDaemon__session);
  if (v7)
  {
    v8 = v7;
    sub_25C497730(v1, &off_286E22D60, 0);
  }

  v9 = *(v1 + 24);

  v10 = *(v1 + 48);
  sub_25C45A2C8(*(v1 + 40));
  v11 = *(v1 + 56);

  v12 = OBJC_IVAR____TtC11NexusDaemon14NXClientDaemon__endpoint;
  v13 = sub_25C4C7C50();
  (*(*(v13 - 8) + 8))(v1 + v12, v13);
  v14 = *(v1 + OBJC_IVAR____TtC11NexusDaemon14NXClientDaemon__idsServiceID + 8);

  v15 = *(v1 + OBJC_IVAR____TtC11NexusDaemon14NXClientDaemon_label + 8);

  v16 = *(v1 + OBJC_IVAR____TtC11NexusDaemon14NXClientDaemon_invalidationHandler + 8);
  sub_25C45A2C8(*(v1 + OBJC_IVAR____TtC11NexusDaemon14NXClientDaemon_invalidationHandler));

  v17 = *(v1 + OBJC_IVAR____TtC11NexusDaemon14NXClientDaemon__xpcConnection);
  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_25C478EC0()
{
  sub_25C478CFC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void sub_25C478F18()
{
  v2 = v0;
  v3 = sub_25C4C7C50();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_25C4C84C0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = (&v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v2 + 64);
  *v12 = v13;
  (*(v9 + 104))(v12, *MEMORY[0x277D85200], v8);
  v14 = v13;
  LOBYTE(v13) = sub_25C4C84E0();
  (*(v9 + 8))(v12, v8);
  if (v13)
  {
    v43 = v7;
    if (qword_27FC0B530 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v15 = sub_25C4C7BD0();
  __swift_project_value_buffer(v15, qword_27FC0B538);

  v16 = sub_25C4C7BB0();
  v17 = sub_25C4C8720();

  v18 = qword_27FC0AF58 + 168;
  if (os_log_type_enabled(v16, v17))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v40 = v1;
    v41 = v20;
    v21 = v20;
    *v19 = 136315394;
    sub_25C47AAA4(&qword_27FC0A480, MEMORY[0x277D35630]);
    v22 = sub_25C4C89A0();
    v24 = sub_25C458990(v22, v23, &v41);

    *(v19 + 4) = v24;
    *(v19 + 12) = 2080;
    *(v19 + 14) = sub_25C458990(*(v2 + OBJC_IVAR____TtC11NexusDaemon14NXClientDaemon_label), *(v2 + OBJC_IVAR____TtC11NexusDaemon14NXClientDaemon_label + 8), &v41);
    _os_log_impl(&dword_25C452000, v16, v17, "Activate: endpoint=%s, client=%s", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F888630](v21, -1, -1);
    v25 = v19;
    v18 = &qword_27FC0AF58[21];
    MEMORY[0x25F888630](v25, -1, -1);
  }

  v26 = v43;
  (*(v4 + 16))(v43, v2 + v18[172], v3);
  v27 = (*(v4 + 88))(v26, v3);
  if (v27 == *MEMORY[0x277D35620])
  {
    goto LABEL_6;
  }

  if (v27 == *MEMORY[0x277D355F0] || v27 == *MEMORY[0x277D35628])
  {
    goto LABEL_10;
  }

  if (v27 != *MEMORY[0x277D35608] && v27 != *MEMORY[0x277D355F8] && v27 != *MEMORY[0x277D35610])
  {
    if (v27 == *MEMORY[0x277D35600])
    {
      (*(v4 + 96))(v26, v3);
      v39 = sub_25C4C8170();
      (*(*(v39 - 8) + 8))(v26, v39);
      goto LABEL_11;
    }

    if (v27 == *MEMORY[0x277D35618])
    {
      return;
    }

LABEL_10:
    (*(v4 + 8))(v26, v3);
LABEL_11:
    v41 = 0;
    v42 = 0xE000000000000000;
    sub_25C4C88F0();

    v41 = 0xD000000000000016;
    v42 = 0x800000025C4D09B0;
    v37 = sub_25C4C7C10();
    MEMORY[0x25F887A50](v37);

    v38 = objc_allocWithZone(sub_25C4C7B80());
    sub_25C4C7B90();
    swift_willThrow();
    return;
  }

LABEL_6:
  (*(v4 + 8))(v26, v3);
  v28 = OBJC_IVAR____TtC11NexusDaemon14NXClientDaemon__session;
  if (!*(v2 + OBJC_IVAR____TtC11NexusDaemon14NXClientDaemon__session))
  {
    v29 = *(v2 + 56);
    v30 = sub_25C48988C(v2 + v18[172], *(v2 + OBJC_IVAR____TtC11NexusDaemon14NXClientDaemon__idsServiceID), *(v2 + OBJC_IVAR____TtC11NexusDaemon14NXClientDaemon__idsServiceID + 8));
    v31 = swift_allocObject();
    swift_weakInit();
    v32 = &v30[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon_invalidationHandler];
    swift_beginAccess();
    v33 = *v32;
    v34 = v32[1];
    *v32 = sub_25C47AC70;
    v32[1] = v31;

    sub_25C45A2C8(v33);

    v35 = *(v2 + v28);
    *(v2 + v28) = v30;
    v36 = v30;

    sub_25C494DD4(v2, &off_286E22D60);
  }
}

uint64_t sub_25C479530()
{
  v1 = sub_25C4C84C0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v25[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = v0[8];
  *v5 = v6;
  (*(v2 + 104))(v5, *MEMORY[0x277D85200], v1);
  v7 = v6;
  LOBYTE(v6) = sub_25C4C84E0();
  result = (*(v2 + 8))(v5, v1);
  if ((v6 & 1) == 0)
  {
    __break(1u);
LABEL_13:
    swift_once();
    goto LABEL_5;
  }

  if (*(v0 + OBJC_IVAR____TtC11NexusDaemon14NXClientDaemon__invalidateCalled) != 1 || *(v0 + OBJC_IVAR____TtC11NexusDaemon14NXClientDaemon__session))
  {
    return result;
  }

  if (qword_27FC0B530 != -1)
  {
    goto LABEL_13;
  }

LABEL_5:
  v9 = sub_25C4C7BD0();
  __swift_project_value_buffer(v9, qword_27FC0B538);

  v10 = sub_25C4C7BB0();
  v11 = sub_25C4C8720();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v26[0] = v13;
    *v12 = 136315394;
    sub_25C4C7C50();
    sub_25C47AAA4(&qword_27FC0A480, MEMORY[0x277D35630]);
    v14 = sub_25C4C89A0();
    v16 = sub_25C458990(v14, v15, v26);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_25C458990(*(v0 + OBJC_IVAR____TtC11NexusDaemon14NXClientDaemon_label), *(v0 + OBJC_IVAR____TtC11NexusDaemon14NXClientDaemon_label + 8), v26);
    _os_log_impl(&dword_25C452000, v10, v11, "Invalidated: endpoint=%s, client=%s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F888630](v13, -1, -1);
    MEMORY[0x25F888630](v12, -1, -1);
  }

  swift_beginAccess();
  v17 = v0[5];
  v18 = v0[6];
  v0[5] = 0;
  v0[6] = 0;
  sub_25C45A2C8(v17);
  v19 = (v0 + OBJC_IVAR____TtC11NexusDaemon14NXClientDaemon_invalidationHandler);
  swift_beginAccess();
  v20 = *v19;
  if (*v19)
  {
    v21 = v19[1];

    v20(v22);
    sub_25C45A2C8(v20);
    v23 = *v19;
  }

  else
  {
    v23 = 0;
  }

  v24 = v19[1];
  *v19 = 0;
  v19[1] = 0;
  return sub_25C45A2C8(v23);
}

uint64_t sub_25C479898()
{
  v1 = v0;
  v2 = sub_25C4C84C0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + 64);
  *v6 = v7;
  (*(v3 + 104))(v6, *MEMORY[0x277D85200], v2);
  v8 = v7;
  LOBYTE(v7) = sub_25C4C84E0();
  (*(v3 + 8))(v6, v2);
  if (v7)
  {
    if (qword_27FC0B530 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v9 = sub_25C4C7BD0();
  __swift_project_value_buffer(v9, qword_27FC0B538);

  v10 = sub_25C4C7BB0();
  v11 = sub_25C4C8720();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v21 = v13;
    *v12 = 136315394;
    sub_25C4C7C50();
    sub_25C47AAA4(&qword_27FC0A480, MEMORY[0x277D35630]);
    v14 = sub_25C4C89A0();
    v16 = sub_25C458990(v14, v15, &v21);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_25C458990(*(v1 + OBJC_IVAR____TtC11NexusDaemon14NXClientDaemon_label), *(v1 + OBJC_IVAR____TtC11NexusDaemon14NXClientDaemon_label + 8), &v21);
    _os_log_impl(&dword_25C452000, v10, v11, "Invalidate: endpoint=%s, client=%s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F888630](v13, -1, -1);
    MEMORY[0x25F888630](v12, -1, -1);
  }

  *(v1 + OBJC_IVAR____TtC11NexusDaemon14NXClientDaemon__invalidateCalled) = 1;
  v17 = *(v1 + OBJC_IVAR____TtC11NexusDaemon14NXClientDaemon__session);
  if (v17)
  {
    v18 = v17;
    sub_25C497730(v1, &off_286E22D60, 1);
  }

  return sub_25C479530();
}

void sub_25C479B98(uint64_t a1)
{
  v65 = a1;
  v2 = sub_25C4C7D30();
  v59 = *(v2 - 8);
  v60 = v2;
  v3 = *(v59 + 64);
  MEMORY[0x28223BE20](v2);
  v58 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_25C4C7D60();
  v5 = *(v64 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v64);
  v8 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25C4C80B0();
  v10 = *(v9 - 8);
  v11 = v10[8];
  v12 = MEMORY[0x28223BE20](v9);
  v66 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v57 - v14;
  v16 = sub_25C4C84C0();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = (&v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v67 = v1;
  v21 = *(v1 + 64);
  *v20 = v21;
  (*(v17 + 104))(v20, *MEMORY[0x277D85200], v16);
  v22 = v21;
  v23 = sub_25C4C84E0();
  (*(v17 + 8))(v20, v16);
  if (v23)
  {
    empty = xpc_dictionary_create_empty();
    v24 = *MEMORY[0x277D35858];
    v25 = v10[13];
    v62 = v10 + 13;
    v63 = v25;
    v26 = v9;
    v25(v15, v24, v9);
    sub_25C4C80A0();
    v61 = v10[1];
    v61(v15, v9);
    v27 = v8;
    v28 = v8;
    v29 = v64;
    (*(v5 + 104))(v28, *MEMORY[0x277D356C0], v64);
    sub_25C4C7D50();
    (*(v5 + 8))(v27, v29);
    v30 = sub_25C4C8570();

    v31 = sub_25C4C8570();

    v32 = empty;
    xpc_dictionary_set_string(empty, (v30 + 32), (v31 + 32));

    v33 = v63;
    v63(v15, *MEMORY[0x277D358C8], v9);
    sub_25C4C80A0();
    v34 = v61;
    v61(v15, v26);
    v35 = *(v67 + 32);
    v36 = sub_25C4C8570();

    xpc_dictionary_set_uint64(v32, (v36 + 32), v35);

    v37 = v66;
    v33(v66, *MEMORY[0x277D358C0], v26);
    sub_25C4C80A0();
    v34(v37, v26);
    v54 = sub_25C4C7D20();
    v55 = sub_25C4C8570();

    v56 = empty;
    xpc_dictionary_set_value(empty, (v55 + 32), v54);
    swift_unknownObjectRelease();

    xpc_connection_send_message(*(v67 + OBJC_IVAR____TtC11NexusDaemon14NXClientDaemon__xpcConnection), v56);
    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
    swift_once();
    v38 = sub_25C4C7BD0();
    __swift_project_value_buffer(v38, qword_27FC0B538);
    v40 = v58;
    v39 = v59;
    v41 = v60;
    (*(v59 + 16))(v58, v23, v60);
    v42 = v5;
    v43 = sub_25C4C7BB0();
    v44 = sub_25C4C8710();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v69[0] = v46;
      *v45 = 136315394;
      sub_25C47AAA4(&qword_27FC0A528, MEMORY[0x277D356A0]);
      v47 = sub_25C4C89A0();
      v49 = v48;
      (*(v39 + 8))(v40, v41);
      v50 = sub_25C458990(v47, v49, v69);

      *(v45 + 4) = v50;
      *(v45 + 12) = 2080;
      swift_getErrorValue();
      v51 = sub_25C4C8A30();
      v53 = sub_25C458990(v51, v52, v69);

      *(v45 + 14) = v53;
      _os_log_impl(&dword_25C452000, v43, v44, "### Handle client event failed: event=%s, error=%s", v45, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F888630](v46, -1, -1);
      MEMORY[0x25F888630](v45, -1, -1);
    }

    else
    {

      (*(v39 + 8))(v40, v41);
    }
  }
}

void sub_25C47A2D0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v57 = a6;
  v53 = a4;
  v54 = a5;
  v51 = a2;
  v52 = a3;
  v50 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A1B0, &qword_25C4C9B00);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v46 = v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v45 = v44 - v12;
  v13 = sub_25C4C7E00();
  v48 = *(v13 - 8);
  v49 = v13;
  v14 = *(v48 + 64);
  MEMORY[0x28223BE20](v13);
  v47 = v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_25C4C7C50();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_25C4C84C0();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = (v44 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = v7[8];
  *v25 = v26;
  (*(v22 + 104))(v25, *MEMORY[0x277D85200], v21);
  v27 = v26;
  LOBYTE(v26) = sub_25C4C84E0();
  (*(v22 + 8))(v25, v21);
  if (v26)
  {
    (*(v17 + 16))(v20, v7 + OBJC_IVAR____TtC11NexusDaemon14NXClientDaemon__endpoint, v16);
    v28 = (*(v17 + 88))(v20, v16);
    if (v28 == *MEMORY[0x277D35620])
    {
LABEL_3:
      (*(v17 + 8))(v20, v16);
      v29 = *(v7 + OBJC_IVAR____TtC11NexusDaemon14NXClientDaemon__session);
      if (v29)
      {
        v30 = v29;
        sub_25C49F4C8(v50, v51, v52, v53, v54, v57);

        return;
      }

      v34 = objc_allocWithZone(sub_25C4C7B80());
      goto LABEL_10;
    }

    v31 = v28;
    if (v28 == *MEMORY[0x277D355F0] || v28 == *MEMORY[0x277D35628])
    {
      goto LABEL_7;
    }

    if (v28 == *MEMORY[0x277D35608] || v28 == *MEMORY[0x277D355F8] || v28 == *MEMORY[0x277D35610])
    {
      goto LABEL_3;
    }

    if (v28 == *MEMORY[0x277D35600])
    {
      (*(v17 + 96))(v20, v16);
      v35 = sub_25C4C8170();
      (*(*(v35 - 8) + 8))(v20, v35);
      goto LABEL_8;
    }

    if (v28 != *MEMORY[0x277D35618])
    {
LABEL_7:
      (*(v17 + 8))(v20, v16);
LABEL_8:
      v55 = 0;
      v56 = 0xE000000000000000;
      sub_25C4C88F0();

      v55 = 0xD000000000000016;
      v56 = 0x800000025C4D09B0;
      v32 = sub_25C4C7C10();
      MEMORY[0x25F887A50](v32);

      v33 = objc_allocWithZone(sub_25C4C7B80());
LABEL_10:
      sub_25C4C7B90();
      swift_willThrow();
      return;
    }

    v36 = v7[7];
    v44[0] = *(v17 + 104);
    v44[1] = v36;
    v37 = v45;
    (v44[0])(v45, v28, v16);
    v38 = *(v17 + 56);
    v38(v37, 0, 1, v16);
    v39 = v46;
    (v44[0])(v46, v31, v16);
    v38(v39, 0, 1, v16);
    v40 = v7[2];
    v41 = v7[3];

    v42 = v47;
    sub_25C4C7DC0();
    v43 = sub_25C4880B8();
    sub_25C4892D0(v50, v51, v52, v53, v42, v43 & 1, v54, v57);
    (*(v48 + 8))(v42, v49);
  }

  else
  {
    __break(1u);
  }
}

void sub_25C47A8D0()
{
  v1 = sub_25C4C84C0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = (&v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + 64);
  *v5 = v6;
  (*(v2 + 104))(v5, *MEMORY[0x277D85200], v1);
  v7 = v6;
  LOBYTE(v6) = sub_25C4C84E0();
  (*(v2 + 8))(v5, v1);
  if (v6)
  {
    v8 = *(v0 + OBJC_IVAR____TtC11NexusDaemon14NXClientDaemon__session);
    if (v8)
    {
      v9 = v8;
      sub_25C4B42D4();
    }

    else
    {
      v10 = objc_allocWithZone(sub_25C4C7B80());
      sub_25C4C7B90();
      swift_willThrow();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_25C47AA68()
{
  v1 = *(v0 + OBJC_IVAR____TtC11NexusDaemon14NXClientDaemon_label);
  v2 = *(v0 + OBJC_IVAR____TtC11NexusDaemon14NXClientDaemon_label + 8);

  return v1;
}

uint64_t sub_25C47AAA4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for NXClientDaemon()
{
  result = qword_27FC0B578;
  if (!qword_27FC0B578)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25C47AB40()
{
  result = sub_25C4C7C50();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_25C47AC38()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25C47AC70()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + OBJC_IVAR____TtC11NexusDaemon14NXClientDaemon__session);
    *(result + OBJC_IVAR____TtC11NexusDaemon14NXClientDaemon__session) = 0;

    sub_25C479530();
  }

  return result;
}

uint64_t sub_25C47ACD8()
{
  v0 = sub_25C4C7BD0();
  __swift_allocate_value_buffer(v0, qword_27FC0B590);
  __swift_project_value_buffer(v0, qword_27FC0B590);
  sub_25C4C7C80();
  return sub_25C4C7BC0();
}

uint64_t sub_25C47AD44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + OBJC_IVAR____TtC11NexusDaemon17NXDiscoveryDaemon__discoveryResults) = MEMORY[0x277D84F98];
  *(v11 + OBJC_IVAR____TtC11NexusDaemon17NXDiscoveryDaemon__invalidateCalled) = 0;
  v12 = (v11 + OBJC_IVAR____TtC11NexusDaemon17NXDiscoveryDaemon_invalidationHandler);
  *v12 = 0;
  v12[1] = 0;
  v13 = (v11 + OBJC_IVAR____TtC11NexusDaemon17NXDiscoveryDaemon__nanSubscriber);
  *v13 = 0;
  v13[1] = 0;
  *(v11 + 24) = a2;
  v14 = OBJC_IVAR____TtC11NexusDaemon17NXDiscoveryDaemon__configuration;
  v15 = sub_25C4C7F70();
  (*(*(v15 - 8) + 32))(v11 + v14, a1, v15);
  *(v11 + OBJC_IVAR____TtC11NexusDaemon17NXDiscoveryDaemon__daemon) = a3;
  v16 = *(a3 + 16);
  *(v11 + OBJC_IVAR____TtC11NexusDaemon17NXDiscoveryDaemon__dispatchQueue) = v16;
  *(v11 + OBJC_IVAR____TtC11NexusDaemon17NXDiscoveryDaemon__xpcConnection) = a4;
  v17 = v16;
  return v11;
}

uint64_t sub_25C47AE50()
{
  v1 = v0;
  if (qword_27FC0B588 != -1)
  {
    swift_once();
  }

  v2 = sub_25C4C7BD0();
  __swift_project_value_buffer(v2, qword_27FC0B590);
  v3 = sub_25C4C7BB0();
  v4 = sub_25C4C8700();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_25C452000, v3, v4, "deinit", v5, 2u);
    MEMORY[0x25F888630](v5, -1, -1);
  }

  v6 = *(v1 + 16);

  v7 = OBJC_IVAR____TtC11NexusDaemon17NXDiscoveryDaemon__configuration;
  v8 = sub_25C4C7F70();
  (*(*(v8 - 8) + 8))(v1 + v7, v8);
  v9 = *(v1 + OBJC_IVAR____TtC11NexusDaemon17NXDiscoveryDaemon__daemon);

  v10 = *(v1 + OBJC_IVAR____TtC11NexusDaemon17NXDiscoveryDaemon__discoveryResults);

  v11 = *(v1 + OBJC_IVAR____TtC11NexusDaemon17NXDiscoveryDaemon_invalidationHandler + 8);
  sub_25C45C5F0(*(v1 + OBJC_IVAR____TtC11NexusDaemon17NXDiscoveryDaemon_invalidationHandler));
  v12 = *(v1 + OBJC_IVAR____TtC11NexusDaemon17NXDiscoveryDaemon__nanSubscriber);
  swift_unknownObjectRelease();
  v13 = *(v1 + OBJC_IVAR____TtC11NexusDaemon17NXDiscoveryDaemon__xpcConnection);
  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_25C47AFDC()
{
  sub_25C47AE50();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_25C47B034()
{
  v2 = v0;
  v3 = sub_25C4C7F70();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_25C4C84C0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = (v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v2 + OBJC_IVAR____TtC11NexusDaemon17NXDiscoveryDaemon__dispatchQueue);
  *v12 = v13;
  (*(v9 + 104))(v12, *MEMORY[0x277D85200], v8);
  v14 = v13;
  LOBYTE(v13) = sub_25C4C84E0();
  (*(v9 + 8))(v12, v8);
  if (v13)
  {
    if (qword_27FC0B588 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v15 = sub_25C4C7BD0();
  __swift_project_value_buffer(v15, qword_27FC0B590);

  v16 = sub_25C4C7BB0();
  v17 = sub_25C4C8720();

  v18 = &unk_27FC0C000;
  if (os_log_type_enabled(v16, v17))
  {
    v19 = swift_slowAlloc();
    v34 = v4;
    v20 = v19;
    v21 = swift_slowAlloc();
    v31[1] = v1;
    v32 = v21;
    v22 = v21;
    *v20 = 136315138;
    sub_25C481670(&qword_27FC0A530, MEMORY[0x277D357E8]);
    v23 = sub_25C4C89A0();
    v25 = sub_25C458990(v23, v24, &v32);
    v18 = &unk_27FC0C000;

    *(v20 + 4) = v25;
    _os_log_impl(&dword_25C452000, v16, v17, "Activate: configuration=%s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);
    MEMORY[0x25F888630](v22, -1, -1);
    v26 = v20;
    v4 = v34;
    MEMORY[0x25F888630](v26, -1, -1);
  }

  (*(v4 + 16))(v7, v2 + v18[67], v3);
  v27 = (*(v4 + 88))(v7, v3);
  if (v27 == *MEMORY[0x277D357E0])
  {
    return sub_25C47B4B0();
  }

  if (v27 == *MEMORY[0x277D357D8])
  {
    return sub_25C47B7D4();
  }

  v32 = 0;
  v33 = 0xE000000000000000;
  sub_25C4C88F0();

  v32 = 0xD000000000000029;
  v33 = 0x800000025C4D0A80;
  sub_25C481670(&qword_27FC0A530, MEMORY[0x277D357E8]);
  v29 = sub_25C4C89A0();
  MEMORY[0x25F887A50](v29);

  v30 = objc_allocWithZone(sub_25C4C7B80());
  sub_25C4C7B90();
  swift_willThrow();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_25C47B4B0()
{
  v1 = sub_25C4C83A0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v23 - v7;
  if (*(v0 + 16))
  {

    sub_25C4C8440();
  }

  *v8 = sub_25C4C7CB0();
  *(v8 + 1) = v9;
  *(v8 + 1) = xmmword_25C4CA310;
  (*(v2 + 104))(v8, *MEMORY[0x277CD90D8], v1);
  (*(v2 + 16))(v6, v8, v1);
  sub_25C4C8350();
  sub_25C4C8340();
  v10 = sub_25C4C8450();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  v13 = sub_25C4C83D0();
  v14 = *(v0 + 16);
  *(v0 + 16) = v13;
  swift_retain_n();

  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  *(v17 + 16) = v15;
  *(v17 + 24) = v16;

  sub_25C4C83C0();

  v18 = swift_allocObject();
  swift_weakInit();
  v19 = swift_allocObject();
  swift_weakInit();

  v20 = swift_allocObject();
  *(v20 + 16) = v18;
  *(v20 + 24) = v19;

  sub_25C4C83B0();

  v21 = *(v0 + OBJC_IVAR____TtC11NexusDaemon17NXDiscoveryDaemon__dispatchQueue);
  sub_25C4C83F0();

  return (*(v2 + 8))(v8, v1);
}

uint64_t sub_25C47B7D4()
{
  v1 = sub_25C4C7B30();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (v0 + OBJC_IVAR____TtC11NexusDaemon17NXDiscoveryDaemon__nanSubscriber);
  swift_beginAccess();
  if (*v6)
  {
    v7 = v6[1];
    v8 = *v6;
    ObjectType = swift_getObjectType();
    v10 = *(v7 + 112);
    swift_unknownObjectRetain();
    v10(ObjectType, v7);
    swift_unknownObjectRelease();
  }

  (*(v2 + 16))(v5, *(v0 + OBJC_IVAR____TtC11NexusDaemon17NXDiscoveryDaemon__daemon) + OBJC_IVAR____TtC11NexusDaemon8NXDaemon_environment, v1);
  v11 = CUEnvironmentValues.createNANSubscriber.getter();
  (*(v2 + 8))(v5, v1);
  v12 = v11(*(v0 + OBJC_IVAR____TtC11NexusDaemon17NXDiscoveryDaemon__dispatchQueue));
  v14 = v13;

  v15 = *v6;
  *v6 = v12;
  v6[1] = v14;
  swift_unknownObjectRetain_n();
  swift_unknownObjectRelease();
  v16 = swift_getObjectType();
  v17 = sub_25C4C7CA0();
  (*(v14 + 88))(v17);
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = swift_allocObject();
  *(v19 + 24) = v14;
  swift_unknownObjectWeakInit();
  v20 = swift_allocObject();
  *(v20 + 16) = v18;
  *(v20 + 24) = v19;
  v21 = *(v14 + 16);

  v21(sub_25C4816F0, v20, v16, v14);

  v22 = swift_allocObject();
  swift_weakInit();
  v23 = swift_allocObject();
  *(v23 + 24) = v14;
  swift_unknownObjectWeakInit();
  v24 = swift_allocObject();
  *(v24 + 16) = v22;
  *(v24 + 24) = v23;
  v25 = *(v14 + 40);

  v25(sub_25C481708, v24, v16, v14);

  v26 = swift_allocObject();
  swift_weakInit();
  v27 = swift_allocObject();
  *(v27 + 24) = v14;
  swift_unknownObjectWeakInit();
  swift_unknownObjectRelease();
  v28 = swift_allocObject();
  *(v28 + 16) = v26;
  *(v28 + 24) = v27;
  v29 = *(v14 + 64);

  v29(sub_25C481810, v28, v16, v14);

  (*(v14 + 104))(v16, v14);
  return swift_unknownObjectRelease();
}

uint64_t sub_25C47BC24(uint64_t a1)
{
  v259 = sub_25C4C7D90();
  v258 = *(v259 - 8);
  v2 = *(v258 + 64);
  MEMORY[0x28223BE20](v259);
  v257 = &v212[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FC0A558, &unk_25C4CA3D8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v226 = &v212[-v6];
  v256 = sub_25C4C7F60();
  v264 = *(v256 - 8);
  v7 = *(v264 + 64);
  v8 = MEMORY[0x28223BE20](v256);
  v222 = &v212[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = MEMORY[0x28223BE20](v8);
  v237 = &v212[-v11];
  MEMORY[0x28223BE20](v10);
  v248 = &v212[-v12];
  v254 = sub_25C4C7EA0();
  v13 = *(v254 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v254);
  v221 = &v212[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = MEMORY[0x28223BE20](v15);
  v225 = &v212[-v18];
  v19 = MEMORY[0x28223BE20](v17);
  v224 = &v212[-v20];
  v21 = MEMORY[0x28223BE20](v19);
  v240 = &v212[-v22];
  v23 = MEMORY[0x28223BE20](v21);
  v250 = &v212[-v24];
  MEMORY[0x28223BE20](v23);
  v252 = &v212[-v25];
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A1B0, &qword_25C4C9B00);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v26 - 8);
  v230 = &v212[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v30 = MEMORY[0x28223BE20](v28);
  v229 = &v212[-v31];
  v32 = MEMORY[0x28223BE20](v30);
  v263 = &v212[-v33];
  MEMORY[0x28223BE20](v32);
  v269 = &v212[-v34];
  v276 = sub_25C4C7C50();
  v35 = *(v276 - 8);
  v36 = *(v35 + 64);
  v37 = MEMORY[0x28223BE20](v276);
  v223 = &v212[-((v38 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v39 = MEMORY[0x28223BE20](v37);
  v232 = &v212[-v40];
  v41 = MEMORY[0x28223BE20](v39);
  v236 = &v212[-v42];
  v43 = MEMORY[0x28223BE20](v41);
  v246 = &v212[-v44];
  MEMORY[0x28223BE20](v43);
  v249 = &v212[-v45];
  v46 = sub_25C4C8430();
  v47 = *(v46 - 1);
  v48 = *(v47 + 64);
  v49 = MEMORY[0x28223BE20](v46);
  v238 = &v212[-((v50 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v51 = MEMORY[0x28223BE20](v49);
  v235 = &v212[-v52];
  v53 = MEMORY[0x28223BE20](v51);
  v262 = &v212[-v54];
  v55 = MEMORY[0x28223BE20](v53);
  v57 = &v212[-v56];
  MEMORY[0x28223BE20](v55);
  v268 = &v212[-v58];
  v59 = sub_25C4C8410();
  v60 = *(v59 - 8);
  v61 = *(v60 + 64);
  v62 = MEMORY[0x28223BE20](v59);
  MEMORY[0x28223BE20](v62);
  v281 = &v212[-v64];
  v65 = a1 + 56;
  v66 = a1;
  v67 = 1 << *(a1 + 32);
  v68 = -1;
  if (v67 < 64)
  {
    v68 = ~(-1 << v67);
  }

  v69 = v68 & *(a1 + 56);
  v253 = OBJC_IVAR____TtC11NexusDaemon17NXDiscoveryDaemon__discoveryResults;
  v70 = (v67 + 63) >> 6;
  v279 = v60 + 32;
  v280 = v60 + 16;
  v278 = v60 + 88;
  v277 = *MEMORY[0x277CD9130];
  v267 = *MEMORY[0x277CD9140];
  v261 = *MEMORY[0x277CD9138];
  v260 = *MEMORY[0x277CD9148];
  v255 = (v60 + 8);
  v272 = (v47 + 32);
  v273 = (v60 + 96);
  v274 = (v47 + 16);
  v271 = (v35 + 48);
  v247 = (v35 + 32);
  v244 = (v35 + 16);
  v251 = (v13 + 16);
  v220 = *MEMORY[0x277D357C8];
  v243 = (v264 + 104);
  v242 = v264 + 32;
  v233 = v13 + 32;
  v231 = v13 + 40;
  v228 = *MEMORY[0x277D357D0];
  v241 = (v13 + 8);
  v245 = (v35 + 8);
  v71 = v63;
  v270 = (v47 + 8);
  v234 = *MEMORY[0x277D357C0];
  v239 = v13;
  v227 = (v13 + 56);
  v72 = v57;
  v282 = v66;

  v73 = 0;
  v266 = MEMORY[0x277D84F90];
  v275 = v71;
  while (v69)
  {
LABEL_11:
    v79 = __clz(__rbit64(v69));
    v69 &= v69 - 1;
    v80 = v281;
    (*(v60 + 16))(v281, *(v282 + 48) + *(v60 + 72) * (v79 | (v73 << 6)), v59);
    (*(v60 + 32))(v71, v80, v59);
    v81 = (*(v60 + 88))(v71, v59);
    if (v81 == v277)
    {
      (*v273)(v71, v59);
      v74 = v268;
      (*v272)(v268, v71, v46);
      (*v274)(v72, v74, v46);
      v75 = v269;
      sub_25C47F41C(v72, v269);
      v76 = (*v271)(v75, 1, v276);
      v77 = v74;
      if (v76 == 1)
      {
        goto LABEL_5;
      }

      v218 = v72;
      v219 = v46;
      v106 = v249;
      v107 = v276;
      (*v247)(v249, v269, v276);
      (*v244)(v246, v106, v107);
      sub_25C4C7C10();
      sub_25C4C7C40();
      v108 = v252;
      sub_25C4C7E90();
      v217 = sub_25C4C7E80();
      v216 = v109;
      v110 = v265;
      v111 = v253;
      swift_beginAccess();
      v112 = *v251;
      (*v251)(v250, v108, v254);
      v113 = *(v110 + v111);
      LODWORD(v215) = swift_isUniquelyReferenced_nonNull_native();
      v283 = *(v110 + v111);
      v114 = v283;
      *(v110 + v111) = 0x8000000000000000;
      v115 = v216;
      v116 = v217;
      v118 = sub_25C462EC0(v217, v216);
      v119 = v114[2];
      v120 = (v117 & 1) == 0;
      v121 = v119 + v120;
      if (__OFADD__(v119, v120))
      {
        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        result = sub_25C4C8A20();
        __break(1u);
        return result;
      }

      v214 = v112;
      if (v114[3] >= v121)
      {
        v46 = v219;
        if (v215)
        {
          if ((v117 & 1) == 0)
          {
            goto LABEL_54;
          }
        }

        else
        {
          v215 = v118;
          v213 = v117;
          sub_25C4813F0();
          v118 = v215;
          if ((v213 & 1) == 0)
          {
            goto LABEL_54;
          }
        }
      }

      else
      {
        v122 = v117;
        sub_25C480C54(v121, v215);
        v123 = sub_25C462EC0(v116, v115);
        v125 = v124 & 1;
        v126 = v122;
        v127 = (v122 & 1) == v125;
        v46 = v219;
        if (!v127)
        {
          goto LABEL_77;
        }

        v118 = v123;
        if ((v126 & 1) == 0)
        {
LABEL_54:
          v132 = v283;
          v283[(v118 >> 6) + 8] |= 1 << v118;
          v176 = (v132[6] + 16 * v118);
          *v176 = v116;
          v176[1] = v115;
          (*(v239 + 32))(v132[7] + *(v239 + 72) * v118, v250, v254);
          v177 = v132[2];
          v178 = __OFADD__(v177, 1);
          v179 = v177 + 1;
          if (v178)
          {
            goto LABEL_74;
          }

          v132[2] = v179;
          v134 = v254;
          goto LABEL_56;
        }
      }

      v131 = v118;

      v132 = v283;
      v133 = v283[7] + *(v239 + 72) * v131;
      v134 = v254;
      (*(v239 + 40))(v133, v250, v254);
LABEL_56:
      v180 = *(v265 + v253);
      *(v265 + v253) = v132;

      swift_endAccess();
      v181 = v248;
      v214(v248, v252, v134);
      (*v243)(v181, v234, v256);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v266 = sub_25C480568(0, v266[2] + 1, 1, v266);
      }

      v183 = v266[2];
      v182 = v266[3];
      v72 = v218;
      if (v183 >= v182 >> 1)
      {
        v266 = sub_25C480568(v182 > 1, v183 + 1, 1, v266);
      }

      (*v241)(v252);
      (*v245)(v249, v276);
      (*v270)(v268, v46);
      v184 = v266;
      v266[2] = v183 + 1;
      (*(v264 + 32))(v184 + ((*(v264 + 80) + 32) & ~*(v264 + 80)) + *(v264 + 72) * v183, v248, v256);
LABEL_61:
      v71 = v275;
    }

    else if (v81 == v267)
    {
      (*v273)(v71, v59);
      v82 = v72;
      v83 = v262;
      (*v272)(v262, v71, v46);
      (*v274)(v82, v83, v46);
      v75 = v263;
      sub_25C47F41C(v82, v263);
      v84 = (*v271)(v75, 1, v276);
      v77 = v83;
      v72 = v82;
      if (v84 != 1)
      {
        v219 = v46;
        v85 = v236;
        v86 = v276;
        (*v247)(v236, v263, v276);
        (*v244)(v246, v85, v86);
        sub_25C4C7C10();
        v218 = v87;
        sub_25C4C7C40();
        sub_25C4C7E90();
        v218 = sub_25C4C7E80();
        v89 = v88;
        v90 = v265;
        v91 = v253;
        swift_beginAccess();
        v92 = *(v90 + v91);
        v93 = v218;
        v218 = v89;
        v94 = sub_25C462EC0(v93, v89);
        if (v95)
        {
          v217 = v94;
          v96 = v265;
          v97 = *(v265 + v91);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v99 = *(v96 + v91);
          v283 = v99;
          *(v96 + v91) = 0x8000000000000000;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_25C4813F0();
            v99 = v283;
          }

          v100 = v217;
          v101 = *(*(v99 + 48) + 16 * v217 + 8);

          v102 = *(v99 + 56) + *(v239 + 72) * v100;
          v103 = v226;
          v104 = v254;
          (*(v239 + 32))(v226, v102, v254);
          sub_25C480FD4(v217, v99);
          v105 = 0;
          *(v265 + v253) = v99;
        }

        else
        {
          v105 = 1;
          v103 = v226;
          v104 = v254;
        }

        (*v227)(v103, v105, 1, v104);

        sub_25C4666F8(v103, &unk_27FC0A558, &unk_25C4CA3D8);
        swift_endAccess();
        v135 = v237;
        (*v251)(v237, v240, v104);
        (*v243)(v135, v228, v256);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v266 = sub_25C480568(0, v266[2] + 1, 1, v266);
        }

        v137 = v266[2];
        v136 = v266[3];
        v138 = v254;
        v46 = v219;
        v72 = v82;
        if (v137 >= v136 >> 1)
        {
          v175 = sub_25C480568(v136 > 1, v137 + 1, 1, v266);
          v138 = v254;
          v266 = v175;
        }

        (*v241)(v240, v138);
        (*v245)(v236, v276);
        (*v270)(v262, v46);
        v139 = v266;
        v266[2] = v137 + 1;
        (*(v264 + 32))(v139 + ((*(v264 + 80) + 32) & ~*(v264 + 80)) + *(v264 + 72) * v137, v237, v256);
        goto LABEL_61;
      }

LABEL_5:
      (*v270)(v77, v46);
      sub_25C4666F8(v75, &qword_27FC0A1B0, &qword_25C4C9B00);
      v71 = v275;
    }

    else if (v81 == v261)
    {
      (*v273)(v71, v59);
      v217 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A568, &qword_25C4CA3E8);
      v218 = *(v217 + 48);
      v219 = *v272;
      v128 = v235;
      (v219)(v235, v71, v46);
      (v219)(v238, v275 + v218, v46);
      v219 = *v274;
      (v219)(v72, v128, v46);
      v129 = v229;
      sub_25C47F41C(v72, v229);
      v218 = *v271;
      if ((v218)(v129, 1, v276) == 1)
      {
        v219 = *v270;
        (v219)(v238, v46);
        (v219)(v235, v46);
        v130 = v129;
LABEL_40:
        sub_25C4666F8(v130, &qword_27FC0A1B0, &qword_25C4C9B00);
        goto LABEL_66;
      }

      v216 = *v247;
      (v216)(v232, v129, v276);
      (v219)(v72, v238, v46);
      v140 = v230;
      sub_25C47F41C(v72, v230);
      v141 = v140;
      v142 = v276;
      if ((v218)(v141, 1, v276) == 1)
      {
        (*v245)(v232, v142);
        v143 = *v270;
        (*v270)(v238, v46);
        (v143)(v235, v46);
        v130 = v230;
        goto LABEL_40;
      }

      v218 = v72;
      v219 = v46;
      (v216)(v223, v230, v142);
      v144 = *v244;
      (*v244)(v246, v232, v142);
      v216 = sub_25C4C7C10();
      v215 = v145;
      sub_25C4C7C40();
      v146 = v246;
      sub_25C4C7E90();
      v144(v146, v223, v276);
      sub_25C4C7C10();
      v216 = v147;
      sub_25C4C7C40();
      sub_25C4C7E90();
      v216 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A570, &qword_25C4CA3F0) + 48);
      v148 = *v251;
      v149 = v222;
      v150 = v254;
      (*v251)(v222, v224, v254);
      v151 = &v149[v216];
      v216 = v148;
      v148(v151, v225, v150);
      (*v243)(v149, v220, v256);
      v152 = v266;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v152 = sub_25C480568(0, v152[2] + 1, 1, v152);
      }

      v154 = v152[2];
      v153 = v152[3];
      v266 = v152;
      if (v154 >= v153 >> 1)
      {
        v266 = sub_25C480568(v153 > 1, v154 + 1, 1, v266);
      }

      v46 = v219;
      v155 = v266;
      v266[2] = v154 + 1;
      (*(v264 + 32))(v155 + ((*(v264 + 80) + 32) & ~*(v264 + 80)) + *(v264 + 72) * v154, v222, v256);
      v156 = v225;
      v219 = sub_25C4C7E80();
      v215 = v157;
      v158 = v265;
      v159 = v253;
      swift_beginAccess();
      (v216)(v221, v156, v254);
      v160 = *(v158 + v159);
      LODWORD(v216) = swift_isUniquelyReferenced_nonNull_native();
      v283 = *(v158 + v159);
      v161 = v283;
      *(v158 + v159) = 0x8000000000000000;
      v162 = v215;
      v163 = v219;
      v165 = sub_25C462EC0(v219, v215);
      v166 = v161[2];
      v167 = (v164 & 1) == 0;
      v168 = v166 + v167;
      if (__OFADD__(v166, v167))
      {
        goto LABEL_75;
      }

      if (v161[3] >= v168)
      {
        if (v216)
        {
          if ((v164 & 1) == 0)
          {
            goto LABEL_63;
          }
        }

        else
        {
          v216 = v165;
          LODWORD(v214) = v164;
          sub_25C4813F0();
          v165 = v216;
          if ((v214 & 1) == 0)
          {
            goto LABEL_63;
          }
        }
      }

      else
      {
        LODWORD(v214) = v164;
        sub_25C480C54(v168, v216);
        v169 = sub_25C462EC0(v163, v162);
        if ((v214 & 1) != (v170 & 1))
        {
          goto LABEL_77;
        }

        v165 = v169;
        if ((v214 & 1) == 0)
        {
LABEL_63:
          v172 = v283;
          v283[(v165 >> 6) + 8] |= 1 << v165;
          v185 = (v172[6] + 16 * v165);
          *v185 = v163;
          v185[1] = v162;
          (*(v239 + 32))(v172[7] + *(v239 + 72) * v165, v221, v254);
          v186 = v172[2];
          v178 = __OFADD__(v186, 1);
          v187 = v186 + 1;
          if (v178)
          {
            goto LABEL_76;
          }

          v172[2] = v187;
          v174 = v254;
          goto LABEL_65;
        }
      }

      v171 = v165;

      v172 = v283;
      v173 = v283[7] + *(v239 + 72) * v171;
      v174 = v254;
      (*(v239 + 40))(v173, v221, v254);
LABEL_65:
      v188 = *(v265 + v253);
      *(v265 + v253) = v172;

      swift_endAccess();
      v189 = *v241;
      (*v241)(v225, v174);
      (v189)(v224, v174);
      v190 = *v245;
      v191 = v276;
      (*v245)(v223, v276);
      v190(v232, v191);
      v192 = *v270;
      (*v270)(v238, v46);
      (v192)(v235, v46);
      v72 = v218;
LABEL_66:
      v193 = *(v217 + 64);
      v194 = sub_25C4C8400();
      v195 = v275 + v193;
      v71 = v275;
      (*(*(v194 - 8) + 8))(v195, v194);
    }

    else if (v81 != v260)
    {
      (*v255)(v71, v59);
    }
  }

  while (1)
  {
    v78 = v73 + 1;
    if (__OFADD__(v73, 1))
    {
      __break(1u);
      goto LABEL_72;
    }

    if (v78 >= v70)
    {
      break;
    }

    v69 = *(v65 + 8 * v78);
    ++v73;
    if (v69)
    {
      v73 = v78;
      goto LABEL_11;
    }
  }

  if (qword_27FC0B588 == -1)
  {
    goto LABEL_68;
  }

LABEL_72:
  swift_once();
LABEL_68:
  v196 = sub_25C4C7BD0();
  __swift_project_value_buffer(v196, qword_27FC0B590);
  v197 = sub_25C4C7BB0();
  v198 = sub_25C4C86F0();
  v199 = os_log_type_enabled(v197, v198);
  v200 = v266;
  if (v199)
  {
    v201 = swift_slowAlloc();
    v202 = swift_slowAlloc();
    v284 = v202;
    *v201 = 136315138;

    v204 = MEMORY[0x25F887AA0](v203, v256);
    v206 = v205;

    v207 = sub_25C458990(v204, v206, &v284);

    *(v201 + 4) = v207;
    _os_log_impl(&dword_25C452000, v197, v198, "Results changed: changes=%s", v201, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v202);
    MEMORY[0x25F888630](v202, -1, -1);
    MEMORY[0x25F888630](v201, -1, -1);
  }

  v208 = v259;
  v209 = v258;
  v210 = v257;
  *v257 = v200;
  (*(v209 + 104))(v210, *MEMORY[0x277D35768], v208);

  sub_25C47FEA0(v210);
  (*(v209 + 8))(v210, v208);
}

void sub_25C47D9BC(uint64_t a1)
{
  v3 = sub_25C4C8390();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v65 = (&v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v63 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v63 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v63 - v14;
  v16 = sub_25C4C83E0();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v20, a1, v16);
  v21 = (*(v17 + 88))(v20, v16);
  if (v21 == *MEMORY[0x277CD9108])
  {
    (*(v17 + 96))(v20, v16);
    (*(v4 + 32))(v15, v20, v3);
    if (qword_27FC0B588 != -1)
    {
      swift_once();
    }

    v22 = sub_25C4C7BD0();
    __swift_project_value_buffer(v22, qword_27FC0B590);
    (*(v4 + 16))(v13, v15, v3);
    v23 = sub_25C4C7BB0();
    v24 = sub_25C4C8710();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v66 = v65;
      *v25 = 136315138;
      sub_25C481670(&qword_27FC0A550, MEMORY[0x277CD8FC0]);
      v26 = sub_25C4C8A30();
      v28 = v27;
      v29 = *(v4 + 8);
      v29(v13, v3);
      v30 = sub_25C458990(v26, v28, &v66);

      *(v25 + 4) = v30;
      _os_log_impl(&dword_25C452000, v23, v24, "Bonjour browser failed: error=%s", v25, 0xCu);
      v31 = v65;
      __swift_destroy_boxed_opaque_existential_0(v65);
      MEMORY[0x25F888630](v31, -1, -1);
      MEMORY[0x25F888630](v25, -1, -1);

      v29(v15, v3);
    }

    else
    {

      v47 = *(v4 + 8);
      v47(v13, v3);
      v47(v15, v3);
    }
  }

  else if (v21 == *MEMORY[0x277CD9110])
  {
    (*(v17 + 96))(v20, v16);
    v32 = v4;
    v33 = v10;
    (*(v4 + 32))(v10, v20, v3);
    if (qword_27FC0B588 != -1)
    {
      swift_once();
    }

    v34 = sub_25C4C7BD0();
    __swift_project_value_buffer(v34, qword_27FC0B590);
    v35 = *(v4 + 16);
    v36 = v65;
    v35(v65, v10, v3);
    v37 = sub_25C4C7BB0();
    v38 = sub_25C4C8720();
    v39 = v32;
    if (os_log_type_enabled(v37, v38))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v66 = v41;
      *v40 = 136315138;
      sub_25C481670(&qword_27FC0A550, MEMORY[0x277CD8FC0]);
      v42 = sub_25C4C8A30();
      v44 = v43;
      v64 = v33;
      v45 = *(v39 + 8);
      v45(v36, v3);
      v46 = sub_25C458990(v42, v44, &v66);

      *(v40 + 4) = v46;
      _os_log_impl(&dword_25C452000, v37, v38, "Bonjour browser waiting: error=%s", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v41);
      MEMORY[0x25F888630](v41, -1, -1);
      MEMORY[0x25F888630](v40, -1, -1);

      v45(v64, v3);
    }

    else
    {

      v52 = *(v32 + 8);
      v52(v36, v3);
      v52(v33, v3);
    }
  }

  else if (v21 != *MEMORY[0x277CD9100])
  {
    if (v21 == *MEMORY[0x277CD90F8])
    {
      if (qword_27FC0B588 != -1)
      {
        swift_once();
      }

      v48 = sub_25C4C7BD0();
      __swift_project_value_buffer(v48, qword_27FC0B590);
      v49 = sub_25C4C7BB0();
      v50 = sub_25C4C8720();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        *v51 = 0;
        _os_log_impl(&dword_25C452000, v49, v50, "Bonjour browser ready", v51, 2u);
        MEMORY[0x25F888630](v51, -1, -1);
      }
    }

    else if (v21 == *MEMORY[0x277CD9118])
    {
      v53 = v1;
      if (qword_27FC0B588 != -1)
      {
        swift_once();
      }

      v54 = sub_25C4C7BD0();
      __swift_project_value_buffer(v54, qword_27FC0B590);
      v55 = sub_25C4C7BB0();
      v56 = sub_25C4C8720();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        *v57 = 0;
        _os_log_impl(&dword_25C452000, v55, v56, "Bonjour browser cancelled", v57, 2u);
        MEMORY[0x25F888630](v57, -1, -1);
      }

      v58 = *(v53 + 16);
      *(v53 + 16) = 0;

      sub_25C47EF4C();
    }

    else
    {
      if (qword_27FC0B588 != -1)
      {
        swift_once();
      }

      v59 = sub_25C4C7BD0();
      __swift_project_value_buffer(v59, qword_27FC0B590);
      v60 = sub_25C4C7BB0();
      v61 = sub_25C4C8720();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        *v62 = 0;
        _os_log_impl(&dword_25C452000, v60, v61, "Bonjour browser unknown state", v62, 2u);
        MEMORY[0x25F888630](v62, -1, -1);
      }

      (*(v17 + 8))(v20, v16);
    }
  }
}

uint64_t sub_25C47E27C(uint64_t *a1)
{
  v2 = sub_25C4C7D90();
  v75 = *(v2 - 8);
  v76 = v2;
  v3 = *(v75 + 64);
  MEMORY[0x28223BE20](v2);
  v74 = (&v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FC0A558, &unk_25C4CA3D8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v70 = &v66 - v7;
  v80 = sub_25C4C7F60();
  v69 = *(v80 - 8);
  v8 = *(v69 + 64);
  v9 = MEMORY[0x28223BE20](v80);
  v68 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v66 = &v66 - v11;
  v12 = sub_25C4C7EA0();
  v79 = *(v12 - 8);
  v13 = *(v79 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v67 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v66 - v16;
  v18 = sub_25C4C7C50();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v66 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = (&v66 - v24);
  v26 = *a1;
  v27 = a1[1];
  v29 = a1[2];
  v28 = a1[3];
  *v25 = v26;
  v25[1] = v27;
  (*(v19 + 104))(&v66 - v24, *MEMORY[0x277D35610], v18);
  v71 = v25;
  v72 = v19;
  v30 = *(v19 + 16);
  v73 = v18;
  v30(v23, v25, v18);
  swift_bridgeObjectRetain_n();

  v81 = v17;
  v31 = v12;
  sub_25C4C7E90();
  v32 = OBJC_IVAR____TtC11NexusDaemon17NXDiscoveryDaemon__discoveryResults;
  v33 = v78;
  swift_beginAccess();
  v34 = *(v33 + v32);
  v35 = *(v34 + 16);
  v77 = v31;
  if (v35 && (v36 = sub_25C462EC0(v26, v27), (v37 & 1) != 0))
  {
    v38 = *(v79 + 16);
    v39 = v67;
    v38(v67, *(v34 + 56) + *(v79 + 72) * v36, v31);
    swift_endAccess();
    v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A570, &qword_25C4CA3F0) + 48);
    v41 = v66;
    v38(v66, v39, v31);
    v38(&v41[v40], v81, v31);
    v42 = v69;
    v43 = v41;
    (*(v69 + 104))(v41, *MEMORY[0x277D357C8], v80);
    v44 = sub_25C480568(0, 1, 1, MEMORY[0x277D84F90]);
    v46 = v44[2];
    v45 = v44[3];
    v47 = v46 + 1;
    if (v46 >= v45 >> 1)
    {
      v44 = sub_25C480568(v45 > 1, v46 + 1, 1, v44);
    }

    (*(v79 + 8))(v67, v77);
  }

  else
  {
    swift_endAccess();
    v38 = *(v79 + 16);
    v43 = v68;
    v38(v68, v81, v31);
    v42 = v69;
    (*(v69 + 104))(v43, *MEMORY[0x277D357C0], v80);
    v44 = sub_25C480568(0, 1, 1, MEMORY[0x277D84F90]);
    v46 = v44[2];
    v48 = v44[3];
    v47 = v46 + 1;
    if (v46 >= v48 >> 1)
    {
      v44 = sub_25C480568(v48 > 1, v46 + 1, 1, v44);
    }
  }

  v44[2] = v47;
  (*(v42 + 32))(v44 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v46, v43, v80);
  v49 = v70;
  v50 = v77;
  v38(v70, v81, v77);
  v51 = v79;
  (*(v79 + 56))(v49, 0, 1, v50);
  swift_beginAccess();

  sub_25C47FCC8(v49, v26, v27);
  swift_endAccess();
  if (qword_27FC0B588 != -1)
  {
    swift_once();
  }

  v52 = sub_25C4C7BD0();
  __swift_project_value_buffer(v52, qword_27FC0B590);
  v53 = sub_25C4C7BB0();
  v54 = sub_25C4C86F0();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v82 = v56;
    *v55 = 136315138;

    v58 = MEMORY[0x25F887AA0](v57, v80);
    v60 = v59;

    v61 = sub_25C458990(v58, v60, &v82);
    v50 = v77;

    *(v55 + 4) = v61;
    _os_log_impl(&dword_25C452000, v53, v54, "NAN found: changes=%s", v55, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v56);
    MEMORY[0x25F888630](v56, -1, -1);
    MEMORY[0x25F888630](v55, -1, -1);
  }

  v63 = v74;
  v62 = v75;
  *v74 = v44;
  v64 = v76;
  (*(v62 + 104))(v63, *MEMORY[0x277D35768], v76);

  sub_25C47FEA0(v63);
  (*(v62 + 8))(v63, v64);
  (*(v51 + 8))(v81, v50);
  (*(v72 + 8))(v71, v73);
}

uint64_t sub_25C47EA80(uint64_t *a1)
{
  v2 = v1;
  v4 = sub_25C4C7D90();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v45 = (&v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FC0A558, &unk_25C4CA3D8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v42 - v10;
  v12 = sub_25C4C7EA0();
  v46 = *(v12 - 8);
  v13 = *(v46 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  v17 = a1[1];
  v18 = OBJC_IVAR____TtC11NexusDaemon17NXDiscoveryDaemon__discoveryResults;
  swift_beginAccess();
  v19 = *(v2 + v18);
  if (!*(v19 + 16))
  {
    return swift_endAccess();
  }

  v20 = sub_25C462EC0(v16, v17);
  if ((v21 & 1) == 0)
  {
    return swift_endAccess();
  }

  v43 = v5;
  v44 = v4;
  v22 = *(v19 + 56);
  v23 = v46;
  v24 = *(v46 + 16);
  v24(v15, v22 + *(v46 + 72) * v20, v12);
  swift_endAccess();
  (*(v23 + 56))(v11, 1, 1, v12);
  swift_beginAccess();

  sub_25C47FCC8(v11, v16, v17);
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FC0A590, &qword_25C4CA400);
  v25 = sub_25C4C7F60();
  v26 = *(v25 - 8);
  v27 = *(v26 + 72);
  v28 = (*(v26 + 80) + 32) & ~*(v26 + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_25C4CA320;
  v24((v29 + v28), v15, v12);
  (*(v26 + 104))(v29 + v28, *MEMORY[0x277D357D0], v25);
  if (qword_27FC0B588 != -1)
  {
    swift_once();
  }

  v30 = sub_25C4C7BD0();
  __swift_project_value_buffer(v30, qword_27FC0B590);

  v31 = sub_25C4C7BB0();
  v32 = sub_25C4C86F0();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v47 = v34;
    *v33 = 136315138;
    v35 = MEMORY[0x25F887AA0](v29, v25);
    v37 = sub_25C458990(v35, v36, &v47);

    *(v33 + 4) = v37;
    _os_log_impl(&dword_25C452000, v31, v32, "NAN lost: changes=%s", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v34);
    MEMORY[0x25F888630](v34, -1, -1);
    MEMORY[0x25F888630](v33, -1, -1);
  }

  v39 = v43;
  v38 = v44;
  v40 = v45;
  *v45 = v29;
  (*(v39 + 104))(v40, *MEMORY[0x277D35768], v38);
  sub_25C47FEA0(v40);
  (*(v39 + 8))(v40, v38);
  return (*(v46 + 8))(v15, v12);
}

uint64_t sub_25C47EF4C()
{
  v1 = sub_25C4C84C0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v21[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *(v0 + OBJC_IVAR____TtC11NexusDaemon17NXDiscoveryDaemon__dispatchQueue);
  *v5 = v6;
  (*(v2 + 104))(v5, *MEMORY[0x277D85200], v1);
  v7 = v6;
  v8 = sub_25C4C84E0();
  result = (*(v2 + 8))(v5, v1);
  if ((v8 & 1) == 0)
  {
    __break(1u);
LABEL_14:
    swift_once();
    goto LABEL_6;
  }

  if (*(v0 + OBJC_IVAR____TtC11NexusDaemon17NXDiscoveryDaemon__invalidateCalled) != 1)
  {
    return result;
  }

  if (*(v0 + 16))
  {
    return result;
  }

  v10 = OBJC_IVAR____TtC11NexusDaemon17NXDiscoveryDaemon__nanSubscriber;
  result = swift_beginAccess();
  if (*(v0 + v10))
  {
    return result;
  }

  v8 = v0;
  if (qword_27FC0B588 != -1)
  {
    goto LABEL_14;
  }

LABEL_6:
  v11 = sub_25C4C7BD0();
  __swift_project_value_buffer(v11, qword_27FC0B590);
  v12 = sub_25C4C7BB0();
  v13 = sub_25C4C8720();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_25C452000, v12, v13, "Invalidated", v14, 2u);
    MEMORY[0x25F888630](v14, -1, -1);
  }

  v15 = (v8 + OBJC_IVAR____TtC11NexusDaemon17NXDiscoveryDaemon_invalidationHandler);
  swift_beginAccess();
  v16 = *v15;
  if (*v15)
  {
    v17 = v15[1];

    v16(v18);
    sub_25C45C5F0(v16);
    v19 = *v15;
  }

  else
  {
    v19 = 0;
  }

  v20 = v15[1];
  *v15 = 0;
  v15[1] = 0;
  return sub_25C45C5F0(v19);
}

uint64_t sub_25C47F1B8()
{
  v1 = v0;
  v2 = sub_25C4C84C0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + OBJC_IVAR____TtC11NexusDaemon17NXDiscoveryDaemon__dispatchQueue);
  *v6 = v7;
  (*(v3 + 104))(v6, *MEMORY[0x277D85200], v2);
  v8 = v7;
  LOBYTE(v7) = sub_25C4C84E0();
  (*(v3 + 8))(v6, v2);
  if (v7)
  {
    if (qword_27FC0B588 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v9 = sub_25C4C7BD0();
  __swift_project_value_buffer(v9, qword_27FC0B590);
  v10 = sub_25C4C7BB0();
  v11 = sub_25C4C8720();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_25C452000, v10, v11, "Invalidate", v12, 2u);
    MEMORY[0x25F888630](v12, -1, -1);
  }

  *(v1 + OBJC_IVAR____TtC11NexusDaemon17NXDiscoveryDaemon__invalidateCalled) = 1;
  if (*(v1 + 16))
  {
    v13 = *(v1 + 16);

    sub_25C4C8440();
  }

  v14 = (v1 + OBJC_IVAR____TtC11NexusDaemon17NXDiscoveryDaemon__nanSubscriber);
  swift_beginAccess();
  if (*v14)
  {
    v15 = v14[1];
    ObjectType = swift_getObjectType();
    v17 = *(v15 + 112);
    swift_unknownObjectRetain();
    v17(ObjectType, v15);
    swift_unknownObjectRelease();
  }

  return sub_25C47EF4C();
}

uint64_t sub_25C47F41C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v84 = a2;
  v3 = sub_25C4C7AB0();
  v75 = *(v3 - 8);
  v76 = v3;
  v4 = *(v75 + 64);
  MEMORY[0x28223BE20](v3);
  v74 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A538, &qword_25C4CA330);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v78 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v77 = &v73 - v10;
  v11 = sub_25C4C8160();
  v80 = *(v11 - 8);
  v81 = v11;
  v12 = v80[8];
  MEMORY[0x28223BE20](v11);
  v79 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_25C4C8120();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v73 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_25C4C8170();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = (&v73 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = sub_25C4C7C50();
  v82 = *(v24 - 8);
  v25 = *(v82 + 64);
  v26 = MEMORY[0x28223BE20](v24);
  v28 = (&v73 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v26);
  v30 = (&v73 - v29);
  v83 = a1;
  sub_25C4C8420();
  v31 = (*(v20 + 88))(v23, v19);
  if (v31 == *MEMORY[0x277CD8B08])
  {
    (*(v20 + 96))(v23, v19);
    v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0AA00, &qword_25C4CA340) + 48);
    (*(v15 + 32))(v18, v23, v14);
    v33 = v80;
    v34 = v81;
    v35 = v23 + v32;
    v36 = v79;
    (v80[4])(v79, v35, v81);
    v85 = 0;
    v86 = 0xE000000000000000;
    sub_25C4C8920();
    MEMORY[0x25F887A50](58, 0xE100000000000000);
    sub_25C4C8920();
    v37 = v85;
    v38 = v86;
    v39 = sub_25C4C8430();
    (*(*(v39 - 8) + 8))(v83, v39);
    (v33[1])(v36, v34);
    (*(v15 + 8))(v18, v14);
    *v30 = v37;
    v30[1] = v38;
LABEL_3:
    v40 = v82;
    (*(v82 + 104))(v30, *MEMORY[0x277D355F8], v24);
LABEL_13:
    v63 = v84;
    (*(v40 + 32))(v84, v30, v24);
    v62 = 0;
    return (*(v40 + 56))(v63, v62, 1, v24);
  }

  v80 = v30;
  v81 = v24;
  v41 = v83;
  if (v31 == *MEMORY[0x277CD8B00])
  {
    (*(v20 + 96))(v23, v19);
    v42 = *v23;
    v43 = v23[1];
    v44 = v23[2];
    v79 = v23[3];
    v45 = v23[4];
    v75 = v23[5];
    v76 = v45;
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FC0A540, &qword_25C4CA338);
    v47 = v77;
    sub_25C480740(v23 + *(v46 + 80), v77);
    v48 = v78;
    sub_25C4807B0(v47, v78);
    v49 = sub_25C4C8240();
    v50 = *(v49 - 8);
    if ((*(v50 + 48))(v48, 1, v49) == 1)
    {
      v51 = sub_25C4C8430();
      (*(*(v51 - 8) + 8))(v41, v51);
      sub_25C4666F8(v47, &qword_27FC0A538, &qword_25C4CA330);
      sub_25C4666F8(v48, &qword_27FC0A538, &qword_25C4CA330);
      v52 = 0;
      v53 = 0;
    }

    else
    {
      v52 = sub_25C4C8230();
      v74 = v44;
      v64 = v43;
      v65 = v42;
      v66 = v48;
      v53 = v67;
      v68 = sub_25C4C8430();
      (*(*(v68 - 8) + 8))(v41, v68);
      sub_25C4666F8(v47, &qword_27FC0A538, &qword_25C4CA330);
      v69 = v66;
      v42 = v65;
      v43 = v64;
      v44 = v74;
      (*(v50 + 8))(v69, v49);
    }

    *v28 = v42;
    v28[1] = v43;
    v70 = v79;
    v28[2] = v44;
    v28[3] = v70;
    v71 = v75;
    v28[4] = v76;
    v28[5] = v71;
    v28[6] = v52;
    v28[7] = v53;
    v24 = v81;
    v40 = v82;
    (*(v82 + 104))(v28, *MEMORY[0x277D35620], v81);
    v30 = v80;
    (*(v40 + 32))(v80, v28, v24);
    goto LABEL_13;
  }

  if (v31 != *MEMORY[0x277CD8AF0] && v31 == *MEMORY[0x277CD8AD0])
  {
    (*(v20 + 96))(v23, v19);
    v55 = v74;
    v54 = v75;
    v56 = v76;
    (*(v75 + 32))(v74, v23, v76);
    v57 = sub_25C4C7AA0();
    v59 = v58;
    v60 = sub_25C4C8430();
    (*(*(v60 - 8) + 8))(v41, v60);
    (*(v54 + 8))(v55, v56);
    v30 = v80;
    v24 = v81;
    *v80 = v57;
    v30[1] = v59;
    goto LABEL_3;
  }

  v61 = sub_25C4C8430();
  (*(*(v61 - 8) + 8))(v41, v61);
  (*(v20 + 8))(v23, v19);
  v62 = 1;
  v63 = v84;
  v24 = v81;
  v40 = v82;
  return (*(v40 + 56))(v63, v62, 1, v24);
}