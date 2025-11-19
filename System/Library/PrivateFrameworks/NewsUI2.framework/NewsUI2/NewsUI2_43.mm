id sub_218B9BC7C()
{
  sub_2186DD120(0, qword_280EBBD80, type metadata accessor for ChannelUpsellTriggerRecord, MEMORY[0x277D83D88]);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v100 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v100 - v6;
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v100 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v112 = (&v100 - v12);
  MEMORY[0x28223BE20](v11);
  v14 = (&v100 - v13);
  v15 = OBJC_IVAR____TtC7NewsUI220ChannelUpsellHandler_internalTriggerRecord;
  v117 = v0;
  v16 = *(v0 + OBJC_IVAR____TtC7NewsUI220ChannelUpsellHandler_internalTriggerRecord);
  v17 = *(*v16 + *MEMORY[0x277D841D0] + 16);
  v18 = (*(*v16 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v16 + v18));
  sub_218B9D8F8(v16 + v17, v14, qword_280EBBD80, type metadata accessor for ChannelUpsellTriggerRecord);
  os_unfair_lock_unlock((v16 + v18));

  v19 = type metadata accessor for ChannelUpsellTriggerRecord();
  v20 = *(v19 - 8);
  v21 = *(v20 + 48);
  if (v21(v14, 1, v19))
  {
    v22 = v14;
    return sub_218B9D978(v22, qword_280EBBD80, type metadata accessor for ChannelUpsellTriggerRecord);
  }

  v109 = v20 + 48;
  v110 = v19;
  v107 = v10;
  v102 = v4;
  v103 = v7;
  v101 = v20;
  v113 = v15;
  v23 = *v14;

  sub_218B9D978(v14, qword_280EBBD80, type metadata accessor for ChannelUpsellTriggerRecord);
  v24 = v23 + 64;
  v25 = 1 << *(v23 + 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & *(v23 + 64);
  v108 = OBJC_IVAR____TtC7NewsUI220ChannelUpsellHandler_configurationManager;
  v28 = (v25 + 63) >> 6;
  v111 = v23;

  v29 = 0;
  v30 = 0;
  v31 = &selRef_boldSystemFontOfSize_;
  *&v32 = 136315138;
  v104 = v32;
  v33 = v117;
  v115 = v21;
  v105 = v28;
  v106 = v23 + 64;
  if (v27)
  {
    while (1)
    {
      while (1)
      {
LABEL_10:
        v35 = (*(v111 + 48) + ((v29 << 10) | (16 * __clz(__rbit64(v27)))));
        v36 = v35[1];
        v116 = *v35;
        v37 = *(v33 + v108);

        result = [v37 configuration];
        if (!result)
        {
          __break(1u);
          return result;
        }

        v39 = result;
        v27 &= v27 - 1;
        if ([result respondsToSelector_])
        {
          break;
        }

        swift_unknownObjectRelease();
LABEL_18:
        if (qword_280EE6050 != -1)
        {
          swift_once();
        }

        v43 = sub_219BE5434();
        __swift_project_value_buffer(v43, qword_280F62760);

        v44 = sub_219BE5414();
        v45 = sub_219BF6214();

        v46 = os_log_type_enabled(v44, v45);
        v114 = v30;
        if (v46)
        {
          v47 = swift_slowAlloc();
          v48 = swift_slowAlloc();
          v118[0] = v48;
          *v47 = v104;
          *(v47 + 4) = sub_2186D1058(v116, v36, v118);
          _os_log_impl(&dword_2186C1000, v44, v45, "Channel Upsell Configuration is no longer available for channel ID:%s.  Entry will be removed from trigger record.", v47, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v48);
          MEMORY[0x21CECF960](v48, -1, -1);
          MEMORY[0x21CECF960](v47, -1, -1);
        }

        v49 = v113;
        v50 = *(v117 + v113);
        v51 = MEMORY[0x277D841D0];
        v52 = *(*v50 + *MEMORY[0x277D841D0] + 16);
        v53 = (*(*v50 + 48) + 3) & 0x1FFFFFFFCLL;

        os_unfair_lock_lock((v50 + v53));
        v54 = v112;
        sub_218B9D8F8(v50 + v52, v112, qword_280EBBD80, type metadata accessor for ChannelUpsellTriggerRecord);
        os_unfair_lock_unlock((v50 + v53));

        v55 = v115(v54, 1, v110);
        v56 = v107;
        if (v55)
        {

          v57 = sub_218B9D8F8(v54, v56, qword_280EBBD80, type metadata accessor for ChannelUpsellTriggerRecord);
          v58 = *(v117 + v49);
          MEMORY[0x28223BE20](v57);
          *(&v100 - 2) = v56;
          v59 = *(*v58 + *v51 + 16);
          v60 = (*(*v58 + 48) + 3) & 0x1FFFFFFFCLL;

          os_unfair_lock_lock((v58 + v60));
          v61 = v58 + v59;
          v62 = v56;
          v30 = v114;
          sub_218B9FA00(v61);
          v63 = (v58 + v60);
          v33 = v117;
          os_unfair_lock_unlock(v63);

          sub_218B9D978(v62, qword_280EBBD80, type metadata accessor for ChannelUpsellTriggerRecord);
          v64 = v54;
        }

        else
        {
          v65 = sub_21870F700(v116, v36);
          v67 = v66;

          v33 = v117;
          v30 = v114;
          if (v67)
          {
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v70 = *v54;
            v118[0] = *v54;
            *v54 = 0x8000000000000000;
            if (!isUniquelyReferenced_nonNull_native)
            {
              sub_219492150();
              v70 = v118[0];
            }

            v68 = sub_2194B7E5C(v65, v70);
            *v54 = v70;
          }

          v71 = *(v33 + v113);
          MEMORY[0x28223BE20](v68);
          *(&v100 - 2) = v54;
          v72 = *(*v71 + *MEMORY[0x277D841D0] + 16);
          v73 = (*(*v71 + 48) + 3) & 0x1FFFFFFFCLL;

          os_unfair_lock_lock((v71 + v73));
          sub_218B9FA00(v71 + v72);
          os_unfair_lock_unlock((v71 + v73));

          v64 = v54;
        }

        sub_218B9D978(v64, qword_280EBBD80, type metadata accessor for ChannelUpsellTriggerRecord);
        v21 = v115;
        v28 = v105;
        v24 = v106;
        v31 = &selRef_boldSystemFontOfSize_;
        if (!v27)
        {
          goto LABEL_6;
        }
      }

      v40 = [v39 v31[347]];
      swift_unknownObjectRelease();
      sub_2186C6148(0, &unk_280E8E168);
      v41 = sub_219BF5214();

      if (!*(v41 + 16) || (sub_21870F700(v116, v36), (v42 & 1) == 0))
      {

        goto LABEL_18;
      }

      v33 = v117;
      if (!v27)
      {
        goto LABEL_6;
      }
    }
  }

  while (1)
  {
LABEL_6:
    v34 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      __break(1u);
      goto LABEL_46;
    }

    if (v34 >= v28)
    {
      break;
    }

    v27 = *(v24 + 8 * v34);
    ++v29;
    if (v27)
    {
      v29 = v34;
      goto LABEL_10;
    }
  }

  v27 = v113;
  v74 = *(v33 + v113);
  v29 = MEMORY[0x277D841D0];
  v75 = *(*v74 + *MEMORY[0x277D841D0] + 16);
  v76 = (*(*v74 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v74 + v76));
  v77 = v74 + v75;
  v78 = v103;
  sub_218B9D8F8(v77, v103, qword_280EBBD80, type metadata accessor for ChannelUpsellTriggerRecord);
  os_unfair_lock_unlock((v74 + v76));

  v24 = v110;
  if (v21(v78, 1, v110))
  {
    v22 = v78;
    return sub_218B9D978(v22, qword_280EBBD80, type metadata accessor for ChannelUpsellTriggerRecord);
  }

  v79 = *v78;

  sub_218B9D978(v78, qword_280EBBD80, type metadata accessor for ChannelUpsellTriggerRecord);
  v80 = *(v79 + 16);

  if (!v80)
  {
    if (qword_280EE6050 == -1)
    {
LABEL_37:
      v81 = sub_219BE5434();
      __swift_project_value_buffer(v81, qword_280F62760);
      v82 = sub_219BE5414();
      v83 = sub_219BF6214();
      v84 = os_log_type_enabled(v82, v83);
      v85 = v102;
      if (v84)
      {
        v86 = swift_slowAlloc();
        *v86 = 0;
        _os_log_impl(&dword_2186C1000, v82, v83, "No channel upsell trigger record entries remain.  Record will be removed from persistent store.", v86, 2u);
        v87 = v86;
        v24 = v110;
        MEMORY[0x21CECF960](v87, -1, -1);
      }

      sub_219BE2CF4();
      sub_219BE55A4();
      if (v30)
      {

        v88 = v30;
        v89 = sub_219BE5414();
        v90 = sub_219BF61F4();

        if (os_log_type_enabled(v89, v90))
        {
          v91 = swift_slowAlloc();
          v92 = swift_slowAlloc();
          *v91 = 138412290;
          v93 = v30;
          v94 = _swift_stdlib_bridgeErrorToNSError();
          *(v91 + 4) = v94;
          *v92 = v94;
          _os_log_impl(&dword_2186C1000, v89, v90, "Error deleting channel upsell trigger record: %@", v91, 0xCu);
          sub_218B9E6C8(v92, sub_2189B3F3C);
          MEMORY[0x21CECF960](v92, -1, -1);
          v95 = v91;
          v24 = v110;
          MEMORY[0x21CECF960](v95, -1, -1);
        }

        else
        {
        }
      }

      else
      {
      }

      v96 = (*(v101 + 56))(v85, 1, 1, v24);
      v97 = *(v33 + v27);
      MEMORY[0x28223BE20](v96);
      *(&v100 - 2) = v85;
      v98 = *(*v97 + *v29 + 16);
      v99 = (*(*v97 + 48) + 3) & 0x1FFFFFFFCLL;

      os_unfair_lock_lock((v97 + v99));
      sub_218B9FA00(v97 + v98);
      os_unfair_lock_unlock((v97 + v99));

      v22 = v85;
      return sub_218B9D978(v22, qword_280EBBD80, type metadata accessor for ChannelUpsellTriggerRecord);
    }

LABEL_46:
    swift_once();
    goto LABEL_37;
  }

  return result;
}

uint64_t sub_218B9C8B4(uint64_t a1)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x2821D53A8](a1, ObjectType);
}

uint64_t sub_218B9C904(uint64_t a1)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x2821D53A0](a1, ObjectType);
}

uint64_t get_enum_tag_for_layout_string_7NewsUI222UpsellTriggerConditionO(uint64_t a1)
{
  if ((*(a1 + 16) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 16) & 7;
  }
}

uint64_t sub_218B9C9D4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
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

uint64_t sub_218B9CA30(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

void sub_218B9CAA4()
{
  v97 = sub_219BED174();
  v96 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v94 = &v91 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_219BED1D4();
  v109 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v108 = &v91 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_219BED184();
  v106 = *(v3 - 8);
  v107 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v91 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186DD120(0, qword_280EBBD80, type metadata accessor for ChannelUpsellTriggerRecord, MEMORY[0x277D83D88]);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v91 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v91 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = (&v91 - v13);
  v15 = OBJC_IVAR____TtC7NewsUI220ChannelUpsellHandler_internalTriggerRecord;
  v111 = v0;
  v16 = *&v0[OBJC_IVAR____TtC7NewsUI220ChannelUpsellHandler_internalTriggerRecord];
  v17 = *(*v16 + *MEMORY[0x277D841D0] + 16);
  v18 = (*(*v16 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v16 + v18));
  sub_218B9D8F8(v16 + v17, v14, qword_280EBBD80, type metadata accessor for ChannelUpsellTriggerRecord);
  os_unfair_lock_unlock((v16 + v18));

  v19 = type metadata accessor for ChannelUpsellTriggerRecord();
  v20 = *(v19 - 8);
  v21 = *(v20 + 48);
  v22 = v20 + 48;
  if (!(v21)(v14, 1, v19))
  {
    v99 = v22;
    v101 = v19;
    v104 = v12;
    v105 = v15;
    v93 = v9;
    v92 = v5;
    v27 = *v14;

    sub_218B9D978(v14, qword_280EBBD80, type metadata accessor for ChannelUpsellTriggerRecord);
    if (qword_280EE6050 != -1)
    {
LABEL_35:
      swift_once();
    }

    v100 = v21;
    v28 = sub_219BE5434();
    __swift_project_value_buffer(v28, qword_280F62760);
    v29 = sub_219BE5414();
    v30 = sub_219BF6214();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_2186C1000, v29, v30, "User history was cleared. End-of-article presentation counts will be reset to zero.", v31, 2u);
      MEMORY[0x21CECF960](v31, -1, -1);
    }

    v32 = v111;
    v33 = v111;
    v34 = sub_218B9F10C(v27, 6, v33);
    v110 = 0;

    v91 = v33;

    v35 = 0;
    v37 = v34 + 8;
    v36 = v34[8];
    v103 = v34;
    v38 = 1 << *(v34 + 32);
    v39 = -1;
    if (v38 < 64)
    {
      v39 = ~(-1 << v38);
    }

    v21 = v39 & v36;
    v40 = (v38 + 63) >> 6;
    v42 = v108;
    v41 = v109;
    v44 = v106;
    v43 = v107;
    v98 = v40;
    while (v21)
    {
LABEL_19:
      v54 = (v103[6] + ((v35 << 10) | (16 * __clz(__rbit64(v21)))));
      v55 = v105;
      v56 = *&v32[v105];
      v27 = v54[1];
      v102 = *v54;
      v57 = *(*v56 + *MEMORY[0x277D841D0] + 16);
      v58 = (*(*v56 + 48) + 3) & 0x1FFFFFFFCLL;

      os_unfair_lock_lock((v56 + v58));
      v59 = v104;
      sub_218B9D8F8(v56 + v57, v104, qword_280EBBD80, type metadata accessor for ChannelUpsellTriggerRecord);
      os_unfair_lock_unlock((v56 + v58));

      if (v100(v59, 1, v101))
      {
        v45 = v32;

        v46 = v93;
        v47 = sub_218B9D8F8(v59, v93, qword_280EBBD80, type metadata accessor for ChannelUpsellTriggerRecord);
        v102 = &v91;
        v48 = *&v45[v55];
        MEMORY[0x28223BE20](v47);
        *(&v91 - 2) = v46;
        v49 = *(*v48 + *MEMORY[0x277D841D0] + 16);
        v50 = (*(*v48 + 48) + 3) & 0x1FFFFFFFCLL;

        os_unfair_lock_lock((v48 + v50));
        v51 = v48 + v49;
        v52 = v110;
        sub_218B9FA00(v51);
        v110 = v52;
        os_unfair_lock_unlock((v48 + v50));

        sub_218B9D978(v46, qword_280EBBD80, type metadata accessor for ChannelUpsellTriggerRecord);
        v41 = v109;
      }

      else
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        aBlock[0] = *(v59 + 56);
        v61 = aBlock[0];
        *(v59 + 56) = 0x8000000000000000;
        v62 = v102;
        v64 = sub_21870F700(v102, v27);
        v65 = *(v61 + 16);
        v66 = (v63 & 1) == 0;
        v67 = v65 + v66;
        if (__OFADD__(v65, v66))
        {
          __break(1u);
          goto LABEL_35;
        }

        v68 = v63;
        if (*(v61 + 24) >= v67)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_219492450();
          }
        }

        else
        {
          sub_2194815A0(v67, isUniquelyReferenced_nonNull_native);
          v69 = sub_21870F700(v62, v27);
          if ((v68 & 1) != (v70 & 1))
          {
            goto LABEL_37;
          }

          v64 = v69;
        }

        v71 = v111;
        v72 = v105;
        v73 = MEMORY[0x277D841D0];
        if (v68)
        {

          v74 = aBlock[0];
          *(*(aBlock[0] + 56) + 8 * v64) = 0;
        }

        else
        {
          v74 = aBlock[0];
          *(aBlock[0] + 8 * (v64 >> 6) + 64) |= 1 << v64;
          v75 = (v74[6] + 16 * v64);
          *v75 = v62;
          v75[1] = v27;
          *(v74[7] + 8 * v64) = 0;
          v76 = v74[2];
          v77 = __OFADD__(v76, 1);
          v78 = v76 + 1;
          if (v77)
          {
            __break(1u);
LABEL_37:
            sub_219BF79A4();
            __break(1u);
            return;
          }

          v74[2] = v78;
        }

        v59 = v104;
        *(v104 + 7) = v74;

        v80 = *&v71[v72];
        MEMORY[0x28223BE20](v79);
        *(&v91 - 2) = v59;
        v81 = *(*v80 + *v73 + 16);
        v82 = (*(*v80 + 48) + 3) & 0x1FFFFFFFCLL;

        os_unfair_lock_lock((v80 + v82));
        v83 = v80 + v81;
        v84 = v110;
        sub_218B9FA00(v83);
        v110 = v84;
        os_unfair_lock_unlock((v80 + v82));

        v41 = v109;
      }

      v21 &= v21 - 1;
      sub_218B9D978(v59, qword_280EBBD80, type metadata accessor for ChannelUpsellTriggerRecord);
      v43 = v107;
      v42 = v108;
      v32 = v111;
      v44 = v106;
      v40 = v98;
    }

    while (1)
    {
      v53 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v53 >= v40)
      {

        sub_2186C6148(0, &qword_280E8E3B0);
        v85 = v92;
        (*(v44 + 104))(v92, *MEMORY[0x277D851B8], v43);
        v86 = sub_219BF66E4();
        (*(v44 + 8))(v85, v43);
        v87 = swift_allocObject();
        swift_unknownObjectWeakInit();
        aBlock[4] = sub_218B9F9EC;
        aBlock[5] = v87;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_218793E0C;
        aBlock[3] = &block_descriptor_71;
        v88 = _Block_copy(aBlock);

        sub_219BED1A4();
        v112 = MEMORY[0x277D84F90];
        sub_218B9F7A4(&qword_280E927E0, 255, MEMORY[0x277D85198]);
        sub_2186DD120(0, &qword_280E8EFB0, MEMORY[0x277D85198], MEMORY[0x277D83940]);
        sub_21874EB68();
        v89 = v94;
        v90 = v97;
        sub_219BF7164();
        MEMORY[0x21CECD460](0, v42, v89, v88);
        _Block_release(v88);

        (*(v96 + 8))(v89, v90);
        (*(v41 + 8))(v42, v95);

        return;
      }

      v21 = v37[v53];
      ++v35;
      if (v21)
      {
        v35 = v53;
        goto LABEL_19;
      }
    }

    __break(1u);
    goto LABEL_33;
  }

  sub_218B9D978(v14, qword_280EBBD80, type metadata accessor for ChannelUpsellTriggerRecord);
  if (qword_280EE6050 != -1)
  {
LABEL_33:
    swift_once();
  }

  v23 = sub_219BE5434();
  __swift_project_value_buffer(v23, qword_280F62760);
  v24 = sub_219BE5414();
  v25 = sub_219BF6214();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_2186C1000, v24, v25, "User history was cleared but no end-of-article entries are available in the trigger record.", v26, 2u);
    MEMORY[0x21CECF960](v26, -1, -1);
  }
}

void sub_218B9D6C0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_218B93400();
  }
}

uint64_t sub_218B9D794(uint64_t a1)
{
  v3 = *(v1 + 16);
  sub_218B9D978(a1, qword_280EBBD80, type metadata accessor for ChannelUpsellTriggerRecord);
  return sub_218B9D8F8(v3, a1, qword_280EBBD80, type metadata accessor for ChannelUpsellTriggerRecord);
}

uint64_t sub_218B9D828(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChannelUpsellTriggerRecord();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_218B9D88C()
{
  if (!qword_280E8F948)
  {
    sub_219BDBD34();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280E8F948);
    }
  }
}

uint64_t sub_218B9D8F8(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2186DD120(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_218B9D978(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2186DD120(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_218B9D9E8()
{
  result = qword_280EBBD78;
  if (!qword_280EBBD78)
  {
    sub_2186DD120(255, qword_280EBBD80, type metadata accessor for ChannelUpsellTriggerRecord, MEMORY[0x277D83D88]);
    sub_218B9F7A4(&unk_280EBBE00, 255, type metadata accessor for ChannelUpsellTriggerRecord);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EBBD78);
  }

  return result;
}

void sub_218B9DAC4()
{
  if (!qword_280E8F820)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280E8F820);
    }
  }
}

unint64_t *sub_218B9DB24(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v10 = a5;
    sub_218B9EC54(v9, a2, a3, a4, v10);
    v12 = v11;

    return v12;
  }

  return result;
}

uint64_t sub_218B9DC00(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_218742A78(0, &unk_280E8D1C8, MEMORY[0x277D84460]);
  result = sub_219BF75B4();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v32 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = *(v17 + 8 * v16);
    sub_219BF7AA4();

    sub_219BF5524();
    result = sub_219BF7AE4();
    v22 = -1 << *(v9 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v12 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = (*(v9 + 48) + 16 * v25);
    *v30 = v19;
    v30[1] = v20;
    *(*(v9 + 56) + 8 * v25) = v21;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v32;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
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

uint64_t sub_218B9DE54(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_218742B58(0, &unk_280E8D110, sub_2186D8870, MEMORY[0x277D84460]);
  result = sub_219BF75B4();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v32 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = *(v17 + 8 * v16);
    sub_219BF7AA4();

    swift_unknownObjectRetain();
    sub_219BF5524();
    result = sub_219BF7AE4();
    v22 = -1 << *(v9 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v12 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = (*(v9 + 48) + 16 * v25);
    *v30 = v19;
    v30[1] = v20;
    *(*(v9 + 56) + 8 * v25) = v21;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v32;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
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

uint64_t sub_218B9E0F8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, unint64_t *a6, uint64_t (*a7)(uint64_t), uint64_t (*a8)(uint64_t, uint64_t))
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v8 = a4;
  v9 = a3;
  if (*(a4 + 16) == a3)
  {

    return v8;
  }

  sub_218B9F2C4(0, a5, a6, a7, a8);
  result = sub_219BF75B4();
  v13 = result;
  if (a2 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *a1;
  }

  v15 = 0;
  v16 = result + 64;
  v36 = v8;
  while (v14)
  {
    v17 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
LABEL_16:
    v20 = v17 | (v15 << 6);
    v21 = *(v8 + 56);
    v22 = (*(v8 + 48) + 16 * v20);
    v23 = *v22;
    v24 = v22[1];
    v25 = *(v21 + 8 * v20);
    sub_219BF7AA4();

    sub_219BF5524();
    result = sub_219BF7AE4();
    v26 = -1 << *(v13 + 32);
    v27 = result & ~v26;
    v28 = v27 >> 6;
    if (((-1 << v27) & ~*(v16 + 8 * (v27 >> 6))) == 0)
    {
      v30 = 0;
      v31 = (63 - v26) >> 6;
      while (++v28 != v31 || (v30 & 1) == 0)
      {
        v32 = v28 == v31;
        if (v28 == v31)
        {
          v28 = 0;
        }

        v30 |= v32;
        v33 = *(v16 + 8 * v28);
        if (v33 != -1)
        {
          v29 = __clz(__rbit64(~v33)) + (v28 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v29 = __clz(__rbit64((-1 << v27) & ~*(v16 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v16 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
    v34 = (*(v13 + 48) + 16 * v29);
    *v34 = v23;
    v34[1] = v24;
    *(*(v13 + 56) + 8 * v29) = v25;
    ++*(v13 + 16);
    if (__OFSUB__(v9--, 1))
    {
      goto LABEL_32;
    }

    v8 = v36;
    if (!v9)
    {
      return v13;
    }
  }

  v18 = v15;
  while (1)
  {
    v15 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v15 >= a2)
    {
      return v13;
    }

    v19 = a1[v15];
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v14 = (v19 - 1) & v19;
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

unint64_t sub_218B9E340()
{
  result = qword_280E8FCA0;
  if (!qword_280E8FCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E8FCA0);
  }

  return result;
}

unint64_t sub_218B9E394()
{
  result = qword_280E8FCB0;
  if (!qword_280E8FCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E8FCB0);
  }

  return result;
}

uint64_t sub_218B9E3E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChannelUpsellTriggerRecord();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_218B9E44C()
{
  result = qword_280E8DA10;
  if (!qword_280E8DA10)
  {
    sub_2186C6148(255, &qword_280E8DA20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E8DA10);
  }

  return result;
}

uint64_t sub_218B9E4D4(uint64_t a1, uint64_t a2)
{
  sub_2186DD120(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_47Tm()
{
  v1 = sub_219BE41A4();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_218B9E654(uint64_t a1)
{
  v3 = *(sub_219BE41A4() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_2191EBF68(a1, v4, v5, v6);
}

uint64_t sub_218B9E6C8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_218B9E728(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4372656767697274 && a2 == 0xED000073746E756FLL;
  if (v4 || (sub_219BF78F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001CLL && 0x8000000219CEA1A0 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001DLL && 0x8000000219CEA1C0 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001ELL && 0x8000000219CEA1E0 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000023 && 0x8000000219CEA200 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000024 && 0x8000000219CEA230 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000025 && 0x8000000219CEA260 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000219CEA290 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD00000000000001BLL && 0x8000000219CEA2B0 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x4364656761676E65 && a2 == 0xEF736C656E6E6168 || (sub_219BF78F4() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000219CEA2D0 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000219CEA2F0 == a2)
  {

    return 11;
  }

  else
  {
    v6 = sub_219BF78F4();

    if (v6)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

uint64_t sub_218B9EAEC()
{
  v1 = (v0 + OBJC_IVAR____TtC7NewsUI220ChannelUpsellHandler_upsellCancellationClosure);
  v2 = *(v0 + OBJC_IVAR____TtC7NewsUI220ChannelUpsellHandler_upsellCancellationClosure);
  if (v2)
  {

    v2(v3);
    sub_2187FABEC(v2);
  }

  [*(v0 + OBJC_IVAR____TtC7NewsUI220ChannelUpsellHandler_postActionHandlerManager) removePostActionHandler:v0 forActionType:*MEMORY[0x277D55110]];
  v4 = (v0 + OBJC_IVAR____TtC7NewsUI220ChannelUpsellHandler_upsellShareClosure);
  v5 = *(v0 + OBJC_IVAR____TtC7NewsUI220ChannelUpsellHandler_upsellShareClosure);
  *v4 = 0;
  v4[1] = 0;
  sub_2187FABEC(v5);
  v6 = *v1;
  *v1 = 0;
  v1[1] = 0;

  return sub_2187FABEC(v6);
}

uint64_t sub_218B9EBA0()
{
  v1 = (v0 + OBJC_IVAR____TtC7NewsUI220ChannelUpsellHandler_upsellShareClosure);
  v2 = *(v0 + OBJC_IVAR____TtC7NewsUI220ChannelUpsellHandler_upsellShareClosure);
  if (v2)
  {

    v2(v3);
    sub_2187FABEC(v2);
  }

  [*(v0 + OBJC_IVAR____TtC7NewsUI220ChannelUpsellHandler_postActionHandlerManager) removePostActionHandler:v0 forActionType:*MEMORY[0x277D55110]];
  v4 = *v1;
  *v1 = 0;
  v1[1] = 0;
  sub_2187FABEC(v4);
  v5 = (v0 + OBJC_IVAR____TtC7NewsUI220ChannelUpsellHandler_upsellCancellationClosure);
  v6 = *(v0 + OBJC_IVAR____TtC7NewsUI220ChannelUpsellHandler_upsellCancellationClosure);
  *v5 = 0;
  v5[1] = 0;

  return sub_2187FABEC(v6);
}

void sub_218B9EC54(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v55 = a5;
  v58 = a4;
  v51 = a2;
  v52 = a1;
  sub_2186DD120(0, qword_280EBBD80, type metadata accessor for ChannelUpsellTriggerRecord, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v49 = &v45 - v9;
  v10 = 0;
  v11 = a3 + 64;
  v12 = 1 << *(a3 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a3 + 64);
  v53 = 0;
  v54 = OBJC_IVAR____TtC7NewsUI220ChannelUpsellHandler_configurationManager;
  v48 = OBJC_IVAR____TtC7NewsUI220ChannelUpsellHandler_internalTriggerRecord;
  v15 = (v12 + 63) >> 6;
  v59 = a3;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          if (!v14)
          {
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
                goto LABEL_33;
              }

              v18 = *(v11 + 8 * v10);
              ++v17;
              if (v18)
              {
                v16 = __clz(__rbit64(v18));
                v14 = (v18 - 1) & v18;
                goto LABEL_11;
              }
            }

            __break(1u);
LABEL_35:
            __break(1u);
            return;
          }

          v16 = __clz(__rbit64(v14));
          v14 &= v14 - 1;
LABEL_11:
          v19 = v16 | (v10 << 6);
          if (*(*(*(a3 + 56) + 8 * v19) + 16))
          {
            v20 = (*(a3 + 48) + 16 * v19);
            v21 = v20[1];
            v57 = *v20;
            sub_219320C04(v58);
            a3 = v59;
            if (v22)
            {
              break;
            }
          }
        }

        v23 = *(v55 + v54);
        v56 = v21;

        v24 = [v23 configuration];
        if (!v24)
        {
          goto LABEL_35;
        }

        v25 = v24;
        if ([v24 respondsToSelector_])
        {
          break;
        }

        swift_unknownObjectRelease();
        a3 = v59;
      }

      v50 = v6;
      v26 = [v25 channelUpsellConfigsByChannelID];
      swift_unknownObjectRelease();
      sub_2186C6148(0, &unk_280E8E168);
      v27 = sub_219BF5214();

      if (*(v27 + 16))
      {
        v28 = sub_21870F700(v57, v56);
        if (v29)
        {
          break;
        }
      }

      v6 = v50;
      a3 = v59;
    }

    v30 = *(*(v27 + 56) + 8 * v28);

    v47 = v30;
    v46 = [v30 presentationCap];
    v31 = *(v55 + v48);
    v32 = *(*v31 + *MEMORY[0x277D841D0] + 16);
    v33 = (*(*v31 + 48) + 3) & 0x1FFFFFFFCLL;

    os_unfair_lock_lock((v31 + v33));
    v34 = v31 + v32;
    v35 = v49;
    sub_218B9D8F8(v34, v49, qword_280EBBD80, type metadata accessor for ChannelUpsellTriggerRecord);
    os_unfair_lock_unlock((v31 + v33));

    v36 = type metadata accessor for ChannelUpsellTriggerRecord();
    if ((*(*(v36 - 8) + 48))(v35, 1, v36))
    {
      v37 = 0;
      v38 = v35;
      v6 = v50;
    }

    else
    {
      v39 = *(v35 + 56);
      v40 = v50;
      if (*(v39 + 16))
      {
        v41 = sub_21870F700(v57, v56);
        if (v42)
        {
          v37 = *(*(v39 + 56) + 8 * v41);
        }

        else
        {
          v37 = 0;
        }

        v38 = v49;
      }

      else
      {
        v38 = v35;
        v37 = 0;
      }

      v6 = v40;
    }

    sub_218B9D978(v38, qword_280EBBD80, type metadata accessor for ChannelUpsellTriggerRecord);

    v43 = v37 < v46;
    a3 = v59;
    if (v43)
    {
      *(v52 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      if (__OFADD__(v53++, 1))
      {
        break;
      }
    }
  }

  __break(1u);
LABEL_33:
  sub_218B9DC00(v52, v51, v53, a3);
}

unint64_t *sub_218B9F10C(uint64_t a1, uint64_t a2, void *a3)
{
  v18[1] = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = ((1 << v6) + 63) >> 6;
  v9 = 8 * v8;
  v10 = a3;
  v11 = v10;
  if (v7 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v16 = swift_slowAlloc();
      v17 = v11;
      v14 = sub_218B9DB24(v16, v8, a1, a2, v17);
      MEMORY[0x21CECF960](v16, -1, -1);

      return v14;
    }
  }

  MEMORY[0x28223BE20](v10);
  bzero(v18 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0), 8 * v8);
  v12 = v11;
  sub_218B9EC54((v18 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0)), v8, a1, a2, v12);
  v14 = v13;

  if (v3)
  {
    swift_willThrow();
  }

  return v14;
}

void sub_218B9F2C4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_2186DD120(255, a3, a4, a5);
    v6 = sub_219BF75C4();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_218B9F330()
{
  result = qword_280EBBE28[0];
  if (!qword_280EBBE28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280EBBE28);
  }

  return result;
}

unint64_t sub_218B9F384()
{
  result = qword_280E8FAD0;
  if (!qword_280E8FAD0)
  {
    sub_218742A78(255, &qword_280E8FAE0, MEMORY[0x277D834F8]);
    sub_218B9F644(&qword_280E8FA18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E8FAD0);
  }

  return result;
}

unint64_t sub_218B9F440()
{
  result = qword_280E8FC10;
  if (!qword_280E8FC10)
  {
    sub_218742B58(255, &qword_280E8FC20, MEMORY[0x277CC9578], MEMORY[0x277D834F8]);
    sub_218B9F7A4(&unk_280EE9C70, 255, MEMORY[0x277CC9578]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E8FC10);
  }

  return result;
}

void sub_218B9F524(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_218B9F330();
    v7 = a3(a1, &type metadata for ChannelUpsellTriggerRecord.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_218B9F588()
{
  result = qword_280E8FAD8;
  if (!qword_280E8FAD8)
  {
    sub_218742A78(255, &qword_280E8FAE0, MEMORY[0x277D834F8]);
    sub_218B9F644(&unk_280E8FA20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E8FAD8);
  }

  return result;
}

uint64_t sub_218B9F644(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_218742B00(255, &qword_280E8FA30);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_218B9F6C0()
{
  result = qword_280E8FC18;
  if (!qword_280E8FC18)
  {
    sub_218742B58(255, &qword_280E8FC20, MEMORY[0x277CC9578], MEMORY[0x277D834F8]);
    sub_218B9F7A4(&qword_280EE9CA0, 255, MEMORY[0x277CC9578]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E8FC18);
  }

  return result;
}

uint64_t sub_218B9F7A4(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_218B9F7EC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_218742B00(255, &qword_280E8FAC8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_218B9F868(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_2186E2394();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_218B9F8DC()
{
  result = qword_27CC0E978;
  if (!qword_27CC0E978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0E978);
  }

  return result;
}

unint64_t sub_218B9F934()
{
  result = qword_280EBBE10;
  if (!qword_280EBBE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EBBE10);
  }

  return result;
}

unint64_t sub_218B9F98C()
{
  result = qword_280EBBE18;
  if (!qword_280EBBE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EBBE18);
  }

  return result;
}

uint64_t sub_218B9FA18(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4, uint64_t a5, int64_t a6)
{
  v136 = a5;
  v171 = a4;
  v127 = a3;
  v128 = a2;
  v158 = sub_219BF34F4();
  v172 = *(v158 - 8);
  MEMORY[0x28223BE20](v158);
  v157 = v118 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = type metadata accessor for SportsModel();
  MEMORY[0x28223BE20](v156);
  v155 = v118 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = type metadata accessor for SportsManagementModel();
  v10 = MEMORY[0x28223BE20](v173);
  v169 = v118 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v118 - v12;
  sub_2189525B0();
  v162 = v14;
  v170 = *(v14 - 8);
  v15 = MEMORY[0x28223BE20](v14);
  v129 = v118 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = v118 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v168 = v118 - v21;
  MEMORY[0x28223BE20](v20);
  v130 = v118 - v22;
  sub_218BA1CA4();
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v135 = v118 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v134 = v118 - v26;
  v27 = type metadata accessor for SportsManagementSectionDescriptor();
  v28 = MEMORY[0x28223BE20](v27);
  v139 = v118 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v138 = (v118 - v31);
  MEMORY[0x28223BE20](v30);
  v152 = v118 - v32;
  sub_2189522EC();
  v34 = v33;
  v148 = *(v33 - 8);
  v35 = MEMORY[0x28223BE20](v33);
  v165 = v118 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v151 = v118 - v37;
  v126 = sub_219BE6DF4();
  v125 = *(v126 - 8);
  MEMORY[0x28223BE20](v126);
  v124 = v118 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218BA1E3C(0, &qword_27CC0E9B0, MEMORY[0x277D6DF88]);
  v123 = v39;
  v122 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v121 = v118 - v40;
  sub_218BA1D70();
  MEMORY[0x28223BE20](v41 - 8);
  v118[1] = v118 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189524C4();
  v44 = v43;
  v120 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v119 = v118 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_218BA1C5C(&qword_27CC0AFB8, sub_2189524C4);
  v47 = a1;
  v48 = sub_219BF5E44();
  v49 = MEMORY[0x277D84F90];
  v140 = v44;
  if (!v48)
  {
LABEL_55:
    v111 = sub_218BA1C5C(&qword_27CC0E9C0, sub_2189522EC);
    v112 = sub_218BA1C5C(&unk_27CC0E9C8, sub_2189522EC);
    MEMORY[0x21CEB9170](v49, v34, v111, v112);
    sub_218BA1C5C(&qword_27CC0F9E0, type metadata accessor for SportsManagementSectionDescriptor);
    sub_218BA1C5C(&qword_27CC0AF90, type metadata accessor for SportsManagementModel);
    v113 = v119;
    sub_219BEB2D4();
    v114 = v125;
    v115 = v124;
    v116 = v126;
    (*(v125 + 104))(v124, *MEMORY[0x277D6D868], v126);
    sub_218BA1C5C(&unk_27CC0E9D8, type metadata accessor for SportsManagementSectionDescriptor);
    v117 = v121;
    sub_219BE85E4();
    (*(v114 + 8))(v115, v116);
    v128(v117);
    (*(v122 + 8))(v117, v123);
    return (*(v120 + 8))(v113, v140);
  }

  v176 = MEMORY[0x277D84F90];
  v147 = v48;
  sub_218C34E80(0, v48 & ~(v48 >> 63), 0);
  v49 = v176;
  v146 = v46;
  result = sub_219BF5DF4();
  if (v147 < 0)
  {
    goto LABEL_60;
  }

  v51 = 0;
  v145 = (v148 + 16);
  v164 = (v170 + 16);
  v154 = (v172 + 16);
  v153 = (v172 + 8);
  v163 = (v170 + 8);
  v167 = v170 + 32;
  v143 = (v148 + 8);
  v52 = a6 & 0xFFFFFFFFFFFFFF8;
  v132 = a6 & 0xFFFFFFFFFFFFFF8;
  if (a6 < 0)
  {
    v52 = a6;
  }

  v118[0] = v52;
  v131 = a6 & 0xC000000000000001;
  v142 = v148 + 32;
  v133 = a6 >> 62;
  v144 = a6;
  v141 = v27;
  v159 = v19;
  v161 = v34;
  v137 = a1;
  while (1)
  {
    v53 = __OFADD__(v51, 1);
    v54 = v51 + 1;
    if (v53)
    {
      break;
    }

    v149 = v54;
    v150 = v49;
    v55 = sub_219BF5EC4();
    (*v145)(v165);
    v55(&v175, 0);
    sub_219BE6934();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v57 = v19;
    if (!EnumCaseMultiPayload)
    {
      sub_218BA1F30(v152, type metadata accessor for SportsManagementSectionDescriptor);
      if (v133)
      {
        v61 = sub_219BF7214();
      }

      else
      {
        v61 = *(v132 + 16);
      }

      v62 = MEMORY[0x277D84F90];
      if (v61)
      {
        v175 = MEMORY[0x277D84F90];
        result = sub_219BF73F4();
        if (v61 < 0)
        {
          goto LABEL_58;
        }

        v63 = 0;
        v64 = v131;
        do
        {
          if (v64)
          {
            v65 = MEMORY[0x21CECE0F0](v63, a6);
          }

          else
          {
            v65 = *(a6 + 8 * v63 + 32);
            swift_unknownObjectRetain();
          }

          ++v63;
          swift_getObjectType();
          sub_218E97A64(v65, v171);
          swift_unknownObjectRelease();
          sub_219BF73D4();
          sub_219BF7414();
          sub_219BF7424();
          sub_219BF73E4();
        }

        while (v61 != v63);
        v92 = v175;
        v62 = MEMORY[0x277D84F90];
      }

      else
      {
        v92 = MEMORY[0x277D84F90];
      }

      *v138 = v92;
      swift_storeEnumTagMultiPayload();
      if (v92 >> 62)
      {
        v94 = sub_219BF7214();
        v95 = v162;
        if (v94)
        {
LABEL_33:
          v175 = v62;

          result = sub_218C34ED0(0, v94 & ~(v94 >> 63), 0);
          if (v94 < 0)
          {
            goto LABEL_59;
          }

          v62 = v175;
          if ((v92 & 0xC000000000000001) != 0)
          {
            v96 = 0;
            v97 = v130;
            do
            {
              *v13 = MEMORY[0x21CECE0F0](v96, v92);
              swift_storeEnumTagMultiPayload();
              sub_218BA1C5C(&qword_27CC0AF90, type metadata accessor for SportsManagementModel);
              sub_219BE5FB4();
              v175 = v62;
              v99 = *(v62 + 16);
              v98 = *(v62 + 24);
              if (v99 >= v98 >> 1)
              {
                sub_218C34ED0(v98 > 1, v99 + 1, 1);
                v62 = v175;
              }

              ++v96;
              *(v62 + 16) = v99 + 1;
              (*(v170 + 32))(v62 + ((*(v170 + 80) + 32) & ~*(v170 + 80)) + *(v170 + 72) * v99, v97, v95);
            }

            while (v94 != v96);

            v34 = v161;
            v19 = v57;
          }

          else
          {
            sub_218BA1C5C(&qword_27CC0AF90, type metadata accessor for SportsManagementModel);
            v103 = 32;
            v104 = v129;
            do
            {
              *v13 = *(v92 + v103);
              swift_storeEnumTagMultiPayload();

              sub_219BE5FB4();
              v175 = v62;
              v106 = *(v62 + 16);
              v105 = *(v62 + 24);
              if (v106 >= v105 >> 1)
              {
                sub_218C34ED0(v105 > 1, v106 + 1, 1);
                v62 = v175;
              }

              *(v62 + 16) = v106 + 1;
              (*(v170 + 32))(v62 + ((*(v170 + 80) + 32) & ~*(v170 + 80)) + *(v170 + 72) * v106, v104, v95);
              v103 += 8;
              --v94;
            }

            while (v94);

            v19 = v159;
            v34 = v161;
          }
        }
      }

      else
      {
        v94 = *((v92 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v95 = v162;
        if (v94)
        {
          goto LABEL_33;
        }
      }

      v107 = sub_218BA1C5C(&qword_27CC0E998, sub_2189525B0);
      v108 = sub_218BA1C5C(&unk_27CC0E9A0, sub_2189525B0);
      MEMORY[0x21CEB9170](v62, v95, v107, v108);
      sub_218BA1C5C(&qword_27CC0F9E0, type metadata accessor for SportsManagementSectionDescriptor);
      sub_218BA1C5C(&qword_27CC0AF90, type metadata accessor for SportsManagementModel);
      sub_219BE6924();
      (*v143)(v165, v34);
      v49 = v150;
      v60 = v137;
      goto LABEL_48;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v58 = v165;
      sub_218BA10E0(*v152, *(v152 + 8), *(v152 + 16), v171, a6, v151);

      v59 = v58;
      v19 = v57;
      (*v143)(v59, v34);
      v49 = v150;
      v60 = v47;
    }

    else
    {
      v66 = v165;
      sub_219BE6934();
      v67 = sub_218BA1C5C(&qword_27CC0AFD0, sub_2189522EC);
      v68 = sub_219BF5E44();
      if (v68)
      {
        v69 = v68;
        v174 = MEMORY[0x277D84F90];
        sub_218C34ED0(0, v68 & ~(v68 >> 63), 0);
        v70 = v174;
        result = sub_219BF5DF4();
        v71 = v162;
        if (v69 < 0)
        {
          goto LABEL_57;
        }

        v172 = v70;
        v160 = v67;
        do
        {
          v166 = v69;
          v72 = sub_219BF5EC4();
          (*v164)(v19);
          v72(&v175, 0);
          sub_219BE5FC4();
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            swift_getObjectType();
            v73 = swift_unknownObjectRetain();
            v74 = sub_218E97A64(v73, v171);
            swift_unknownObjectRelease();
            *v13 = v74;
            swift_storeEnumTagMultiPayload();
            sub_218BA1C5C(&qword_27CC0AF90, type metadata accessor for SportsManagementModel);
            sub_219BE5FB4();

            (*v163)(v19, v71);
          }

          else
          {
            v75 = v155;
            sub_218A3A4F8(v169, v155);
            v76 = *v154;
            v77 = v157;
            v78 = v158;
            (*v154)(v157, v75, v158);
            v79 = v13;
            v80 = v156;
            swift_getObjectType();
            v81 = swift_unknownObjectRetain();
            v82 = sub_218E97A64(v81, v171);
            swift_unknownObjectRelease();
            v76(v79, v77, v78);
            v83 = sub_219BF34A4();
            v84 = v77;
            v85 = v159;
            v86 = v78;
            v34 = v161;
            v71 = v162;
            (*v153)(v84, v86);
            *&v79[*(v80 + 20)] = v83;
            v87 = *(v80 + 24);
            v13 = v79;
            v19 = v85;
            *&v13[v87] = v82;
            swift_storeEnumTagMultiPayload();
            sub_218BA1C5C(&qword_27CC0AF90, type metadata accessor for SportsManagementModel);
            sub_219BE5FB4();
            (*v163)(v85, v71);
            sub_218BA1F30(v75, type metadata accessor for SportsModel);
          }

          v88 = v172;
          v174 = v172;
          v90 = *(v172 + 16);
          v89 = *(v172 + 24);
          v66 = v165;
          if (v90 >= v89 >> 1)
          {
            sub_218C34ED0(v89 > 1, v90 + 1, 1);
            v88 = v174;
          }

          *(v88 + 16) = v90 + 1;
          v91 = (*(v170 + 80) + 32) & ~*(v170 + 80);
          v172 = v88;
          (*(v170 + 32))(v88 + v91 + *(v170 + 72) * v90, v168, v71);
          sub_219BF5E94();
          v69 = v166 - 1;
        }

        while (v166 != 1);
        v93 = v172;
      }

      else
      {
        v93 = MEMORY[0x277D84F90];
        v71 = v162;
      }

      v100 = sub_218BA1C5C(&qword_27CC0E998, sub_2189525B0);
      v101 = sub_218BA1C5C(&unk_27CC0E9A0, sub_2189525B0);
      MEMORY[0x21CEB9170](v93, v71, v100, v101);
      sub_218BA1C5C(&qword_27CC0F9E0, type metadata accessor for SportsManagementSectionDescriptor);
      sub_218BA1C5C(&qword_27CC0AF90, type metadata accessor for SportsManagementModel);
      sub_219BE6924();
      (*v143)(v66, v34);
      v102 = sub_219BF3AF4();
      (*(*(v102 - 8) + 8))(v152, v102);
      v60 = v137;
      v49 = v150;
    }

LABEL_48:
    v176 = v49;
    v110 = *(v49 + 16);
    v109 = *(v49 + 24);
    if (v110 >= v109 >> 1)
    {
      sub_218C34E80(v109 > 1, v110 + 1, 1);
      v49 = v176;
    }

    *(v49 + 16) = v110 + 1;
    (*(v148 + 32))(v49 + ((*(v148 + 80) + 32) & ~*(v148 + 80)) + *(v148 + 72) * v110, v151, v34);
    v47 = v60;
    result = sub_219BF5E94();
    v51 = v149;
    a6 = v144;
    if (v149 == v147)
    {
      goto LABEL_55;
    }
  }

  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
  return result;
}

uint64_t sub_218BA10E0@<X0>(uint64_t a1@<X1>, void *a2@<X2>, unint64_t a3@<X3>, uint64_t a4@<X4>, unint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v76 = a4;
  v70 = a3;
  v71 = a1;
  v67[2] = a6;
  v79 = type metadata accessor for SportsManagementModel();
  MEMORY[0x28223BE20](v79);
  v75 = (v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2189525B0();
  v77 = *(v9 - 8);
  v78 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218BA1CA4();
  MEMORY[0x28223BE20](v12 - 8);
  v67[1] = v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for SportsManagementSectionDescriptor();
  MEMORY[0x28223BE20](v69);
  v68 = (v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v81 = MEMORY[0x277D84FA0];
  if (a5 >> 62)
  {
LABEL_14:
    v15 = sub_219BF7214();
    v74 = v11;
    if (v15)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v15 = *((a5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v74 = v11;
    if (v15)
    {
LABEL_3:
      v73 = a2;
      v16 = 0;
      v11 = a5 & 0xC000000000000001;
      while (1)
      {
        if (v11)
        {
          v17 = MEMORY[0x21CECE0F0](v16, a5);
          v18 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
LABEL_11:
            __break(1u);
LABEL_12:
            v23 = v81;
            a2 = v73;
            goto LABEL_16;
          }
        }

        else
        {
          if (v16 >= *((a5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_14;
          }

          v17 = *(a5 + 8 * v16 + 32);
          swift_unknownObjectRetain();
          v18 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            goto LABEL_11;
          }
        }

        v19 = [v17 identifier];
        v20 = sub_219BF5414();
        v22 = v21;

        a2 = &v81;
        sub_219497B60(&v80, v20, v22);
        swift_unknownObjectRelease();

        ++v16;
        if (v18 == v15)
        {
          goto LABEL_12;
        }
      }
    }
  }

  v23 = MEMORY[0x277D84FA0];
LABEL_16:
  result = sub_2193F8EA4(v71, a2, v70);
  v81 = MEMORY[0x277D84F90];
  if (result >> 62)
  {
    goto LABEL_78;
  }

  v25 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v26 = MEMORY[0x277D84F90];
    if (v25)
    {
      v27 = 0;
      v72 = result & 0xFFFFFFFFFFFFFF8;
      v73 = result & 0xC000000000000001;
      v67[0] = result;
      v28 = result + 32;
      v11 = v23 + 56;
      while (1)
      {
        if (v73)
        {
          v29 = MEMORY[0x21CECE0F0](v27, v67[0]);
          v30 = __OFADD__(v27++, 1);
          if (v30)
          {
LABEL_38:
            __break(1u);
LABEL_39:
            v41 = v81;
            v26 = MEMORY[0x277D84F90];
            goto LABEL_41;
          }
        }

        else
        {
          if (v27 >= *(v72 + 16))
          {
            __break(1u);
            goto LABEL_77;
          }

          v29 = *(v28 + 8 * v27);

          v30 = __OFADD__(v27++, 1);
          if (v30)
          {
            goto LABEL_38;
          }
        }

        v31 = [*(v29 + 16) identifier];
        v32 = sub_219BF5414();
        v34 = v33;

        if (*(v23 + 16) && (sub_219BF7AA4(), sub_219BF5524(), v35 = sub_219BF7AE4(), v36 = -1 << *(v23 + 32), v37 = v35 & ~v36, ((*(v11 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v37) & 1) != 0))
        {
          v38 = ~v36;
          while (1)
          {
            v39 = (*(v23 + 48) + 16 * v37);
            v40 = *v39 == v32 && v39[1] == v34;
            if (v40 || (sub_219BF78F4() & 1) != 0)
            {
              break;
            }

            v37 = (v37 + 1) & v38;
            if (((*(v11 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v37) & 1) == 0)
            {
              goto LABEL_20;
            }
          }

          if (v27 == v25)
          {
            goto LABEL_39;
          }
        }

        else
        {
LABEL_20:

          sub_219BF73D4();
          sub_219BF7414();
          sub_219BF7424();
          result = sub_219BF73E4();
          if (v27 == v25)
          {
            goto LABEL_39;
          }
        }
      }
    }

    v41 = MEMORY[0x277D84F90];
LABEL_41:

    v23 = v70;
    if ((v70 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      LODWORD(v11) = v41 < 0 || (v41 & 0x4000000000000000) != 0;
      if ((v11 & 1) == 0)
      {
        result = *(v41 + 16);
        if (result >= v70)
        {
          v42 = v70;
        }

        else
        {
          v42 = *(v41 + 16);
        }

        if (v70)
        {
          v43 = v42;
        }

        else
        {
          v43 = 0;
        }

        if (result < v43)
        {
          goto LABEL_90;
        }

        goto LABEL_53;
      }
    }

    v65 = sub_219BF7214();
    result = sub_219BF7214();
    if (result < 0)
    {
      goto LABEL_93;
    }

    if (v65 >= v23)
    {
      v66 = v23;
    }

    else
    {
      v66 = v65;
    }

    if (v65 < 0)
    {
      v66 = v23;
    }

    if (v23)
    {
      v43 = v66;
    }

    else
    {
      v43 = 0;
    }

    result = sub_219BF7214();
    if (result < v43)
    {
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
      return result;
    }

LABEL_53:
    if ((v41 & 0xC000000000000001) != 0 && v43)
    {
      type metadata accessor for TagModel();

      v44 = 0;
      do
      {
        v45 = v44 + 1;
        sub_219BF7334();
        v44 = v45;
      }

      while (v43 != v45);
    }

    else
    {
    }

    if (v11)
    {
      v46 = sub_219BF7564();
      v48 = v47;
      v50 = v49;
      v52 = v51;

      v43 = v52 >> 1;
    }

    else
    {
      v50 = 0;
      v48 = v41 + 32;
      v46 = v41;
    }

    v53 = v68;
    *v68 = v71;
    v53[1] = v41;
    v53[2] = v23;
    result = swift_storeEnumTagMultiPayload();
    v54 = v43 - v50;
    if (__OFSUB__(v43, v50))
    {
      goto LABEL_91;
    }

    if (!v54)
    {
      break;
    }

    v80 = v26;

    result = sub_218C34ED0(0, v54 & ~(v54 >> 63), 0);
    if (v54 < 0)
    {
      goto LABEL_92;
    }

    v73 = v46;
    v55 = v80;
    if (v43 <= v50)
    {
      v56 = v50;
    }

    else
    {
      v56 = v43;
    }

    v57 = v56 - v50;
    v58 = v48 + 8 * v50;
    while (v57)
    {
      v59 = *(*v58 + 16);
      swift_getObjectType();

      v60 = sub_218E97A64(v59, v76);
      *v75 = v60;
      swift_storeEnumTagMultiPayload();
      sub_218BA1C5C(&qword_27CC0AF90, type metadata accessor for SportsManagementModel);
      v23 = v74;
      sub_219BE5FB4();

      v80 = v55;
      v62 = *(v55 + 16);
      v61 = *(v55 + 24);
      if (v62 >= v61 >> 1)
      {
        sub_218C34ED0(v61 > 1, v62 + 1, 1);
        v55 = v80;
      }

      *(v55 + 16) = v62 + 1;
      result = (*(v77 + 32))(v55 + ((*(v77 + 80) + 32) & ~*(v77 + 80)) + *(v77 + 72) * v62, v23, v78);
      --v57;
      v58 += 8;
      if (!--v54)
      {
        goto LABEL_75;
      }
    }

LABEL_77:
    __break(1u);
LABEL_78:
    v11 = result;
    v25 = sub_219BF7214();
    result = v11;
  }

  v55 = MEMORY[0x277D84F90];
LABEL_75:
  v63 = sub_218BA1C5C(&qword_27CC0E998, sub_2189525B0);
  v64 = sub_218BA1C5C(&unk_27CC0E9A0, sub_2189525B0);
  MEMORY[0x21CEB9170](v55, v78, v63, v64);
  sub_218BA1C5C(&qword_27CC0F9E0, type metadata accessor for SportsManagementSectionDescriptor);
  sub_218BA1C5C(&qword_27CC0AF90, type metadata accessor for SportsManagementModel);
  sub_219BE6924();
  return swift_unknownObjectRelease();
}

uint64_t sub_218BA19B8(uint64_t a1)
{
  v2 = sub_218BA1F90();

  return MEMORY[0x2821D4040](a1, v2);
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_218BA19F4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v11 = MEMORY[0x277D84F90];
  v4 = a3 & 0xFFFFFFFFFFFFFF8;
  if (a3 >> 62)
  {
LABEL_18:
    v5 = sub_219BF7214();
  }

  else
  {
    v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  while (v5 != v6)
  {
    if ((a3 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x21CECE0F0](v6, a3);
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_16;
      }
    }

    else
    {
      if (v6 >= *(v4 + 16))
      {
        goto LABEL_17;
      }

      v7 = *(a3 + 8 * v6 + 32);
      swift_unknownObjectRetain();
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
LABEL_16:
        __break(1u);
LABEL_17:
        __break(1u);
        goto LABEL_18;
      }
    }

    v9 = [v7 asSports];
    v10 = swift_unknownObjectRelease();
    ++v6;
    if (v9)
    {
      MEMORY[0x21CECC690](v10);
      if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_219BF5A14();
      }

      sub_219BF5A54();
      v6 = v8;
    }
  }
}

unint64_t sub_218BA1B78()
{
  result = qword_27CC0E980;
  if (!qword_27CC0E980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0E980);
  }

  return result;
}

uint64_t sub_218BA1C5C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_218BA1CA4()
{
  if (!qword_27CC0E990)
  {
    sub_2189525B0();
    sub_218BA1C5C(&qword_27CC0E998, sub_2189525B0);
    sub_218BA1C5C(&unk_27CC0E9A0, sub_2189525B0);
    v0 = sub_219BE2454();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0E990);
    }
  }
}

void sub_218BA1D70()
{
  if (!qword_27CC0E9B8)
  {
    sub_2189522EC();
    sub_218BA1C5C(&qword_27CC0E9C0, sub_2189522EC);
    sub_218BA1C5C(&unk_27CC0E9C8, sub_2189522EC);
    v0 = sub_219BE2454();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0E9B8);
    }
  }
}

void sub_218BA1E3C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for SportsManagementSectionDescriptor();
    v8[1] = type metadata accessor for SportsManagementModel();
    v8[2] = sub_218BA1C5C(&qword_27CC0F9E0, type metadata accessor for SportsManagementSectionDescriptor);
    v8[3] = sub_218BA1C5C(&qword_27CC0AF90, type metadata accessor for SportsManagementModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_218BA1F30(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_218BA1F90()
{
  result = qword_27CC0E9E8;
  if (!qword_27CC0E9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0E9E8);
  }

  return result;
}

uint64_t sub_218BA1FE4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_218718690(a1, v12);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE33B0);
  result = sub_219BE1E34();
  if (!v11)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EBDDB8);
  result = sub_219BE1E34();
  if (v9)
  {
    v6 = type metadata accessor for MagazineSectionsModule();
    v7 = swift_allocObject();
    sub_2186CB1F0(v12, v7 + 16);
    *(v7 + 56) = v5;
    sub_2186CB1F0(&v10, v7 + 64);
    result = sub_2186CB1F0(&v8, v7 + 104);
    a2[3] = v6;
    a2[4] = &off_282A3F718;
    *a2 = v7;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_218BA2154@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_218718690(a1, v8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    v5 = result;
    v6 = type metadata accessor for MagazineSectionsRouter();
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    result = sub_2186CB1F0(v8, v7 + 24);
    *(v7 + 64) = v5;
    a2[3] = v6;
    a2[4] = &off_282A39B28;
    *a2 = v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_218BA2210(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for MagazineSectionsViewController();
  v2 = sub_219BE1E24();
  swift_unknownObjectWeakAssign();
}

uint64_t sub_218BA2290()
{
  sub_2187164E4();
  swift_allocObject();
  return sub_219BE20D4();
}

uint64_t sub_218BA22F0()
{
  sub_2186C709C(0, qword_280E96128);
  sub_219BE2914();

  type metadata accessor for MagazineSectionsViewController();
  sub_219BE2904();

  sub_2186C709C(0, &unk_280EBB110);
  sub_219BE2914();

  sub_2186C709C(0, &qword_280EA5FD8);
  sub_219BE2914();

  sub_2186C709C(0, qword_280EAC440);
  sub_219BE2914();
  sub_219BE19D4();

  sub_2186C709C(0, qword_280EB8328);
  sub_219BE2914();

  sub_2186C709C(0, qword_280EA8DC0);
  sub_219BE2914();

  sub_2186C709C(0, qword_280EBDDB8);
  sub_219BE2914();

  sub_219BE7A84();
  sub_219BE2904();
}

uint64_t sub_218BA25AC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EBE108);
  result = sub_219BE1E34();
  if (!v78)
  {
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EC7BC0);
  result = sub_219BE1E34();
  if (!v76)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EC7AF0);
  result = sub_219BE1E34();
  if (!v74)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280E9FDE0);
  result = sub_219BE1E34();
  if (!v72)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v58 = a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280ED4A68);
  result = sub_219BE1E34();
  if (v70)
  {
    v5 = __swift_mutable_project_boxed_opaque_existential_1(v77, v78);
    v57 = v48;
    MEMORY[0x28223BE20](v5);
    v7 = (v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v8 + 16))(v7);
    v9 = __swift_mutable_project_boxed_opaque_existential_1(v73, v74);
    v56 = v48;
    MEMORY[0x28223BE20](v9);
    v11 = (v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v12 + 16))(v11);
    v13 = __swift_mutable_project_boxed_opaque_existential_1(v71, v72);
    v55 = v48;
    MEMORY[0x28223BE20](v13);
    v15 = (v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v16 + 16))(v15);
    v17 = __swift_mutable_project_boxed_opaque_existential_1(v69, v70);
    v54 = v48;
    MEMORY[0x28223BE20](v17);
    v19 = (v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v20 + 16))(v19);
    v21 = *v7;
    v22 = *v11;
    v23 = *v15;
    v24 = *v19;
    v25 = type metadata accessor for MagazineCatalogModule();
    v68[3] = v25;
    v68[4] = &off_282A9DCD0;
    v68[0] = v21;
    v52 = type metadata accessor for MagazineGridModule();
    v66 = v52;
    v67 = &off_282A9B468;
    v65[0] = v22;
    v51 = type metadata accessor for MagazineGridModelLoaderFactory();
    v63 = v51;
    v64 = &off_282A58670;
    v62[0] = v23;
    v49 = type metadata accessor for TagFeedModule();
    v60 = v49;
    v61 = &off_282A766D8;
    v59[0] = v24;
    v53 = type metadata accessor for MagazineSectionViewControllerFactory();
    v26 = swift_allocObject();
    v27 = __swift_mutable_project_boxed_opaque_existential_1(v68, v25);
    v50 = v48;
    MEMORY[0x28223BE20](v27);
    v29 = (v48 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v30 + 16))(v29);
    v31 = __swift_mutable_project_boxed_opaque_existential_1(v65, v66);
    v48[1] = v48;
    MEMORY[0x28223BE20](v31);
    v33 = (v48 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v34 + 16))(v33);
    v35 = __swift_mutable_project_boxed_opaque_existential_1(v62, v63);
    MEMORY[0x28223BE20](v35);
    v37 = (v48 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v38 + 16))(v37);
    v39 = __swift_mutable_project_boxed_opaque_existential_1(v59, v60);
    MEMORY[0x28223BE20](v39);
    v41 = (v48 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v42 + 16))(v41);
    v43 = *v29;
    v44 = *v33;
    v45 = *v37;
    v46 = *v41;
    v26[5] = v25;
    v26[6] = &off_282A9DCD0;
    v26[2] = v43;
    v26[15] = v52;
    v26[16] = &off_282A9B468;
    v26[12] = v44;
    v26[20] = v51;
    v26[21] = &off_282A58670;
    v26[17] = v45;
    v26[25] = v49;
    v26[26] = &off_282A766D8;
    v26[22] = v46;
    sub_2186CB1F0(&v75, (v26 + 7));
    __swift_destroy_boxed_opaque_existential_1(v59);
    __swift_destroy_boxed_opaque_existential_1(v62);
    __swift_destroy_boxed_opaque_existential_1(v65);
    __swift_destroy_boxed_opaque_existential_1(v68);
    __swift_destroy_boxed_opaque_existential_1(v69);
    __swift_destroy_boxed_opaque_existential_1(v71);
    __swift_destroy_boxed_opaque_existential_1(v73);
    result = __swift_destroy_boxed_opaque_existential_1(v77);
    v47 = v58;
    v58[3] = v53;
    v47[4] = &off_282A33210;
    *v47 = v26;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_218BA2E20(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EBB110);
  result = sub_219BE1E34();
  if (!v65)
  {
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EA5FD8);
  result = sub_219BE1E34();
  if (!v62)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280E96128);
  result = sub_219BE1E34();
  if (!v61)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE7A84();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187164E4();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v44 = result;
  v45 = v3;
  v46 = v63;
  v47 = v62;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EAF980);
  result = sub_219BE1E34();
  v4 = v58;
  if (v58)
  {
    v5 = v59;
    __swift_project_boxed_opaque_existential_1(v57, v58);
    v41 = (*(v5 + 16))(v4, v5);
    v6 = __swift_mutable_project_boxed_opaque_existential_1(v64, v65);
    v43 = v40;
    MEMORY[0x28223BE20](v6);
    v8 = (v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v9 + 16))(v8);
    v10 = __swift_mutable_project_boxed_opaque_existential_1(v60, v61);
    v42 = v40;
    MEMORY[0x28223BE20](v10);
    v12 = (v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v13 + 16))(v12);
    v14 = *v8;
    v15 = *v12;
    v16 = type metadata accessor for MagazineSectionsStyler();
    v55 = v16;
    v56 = &off_282A2E4B0;
    v54[0] = v14;
    v17 = type metadata accessor for MagazineSectionViewControllerFactory();
    v52 = v17;
    v53 = &off_282A33210;
    v51[0] = v15;
    v18 = type metadata accessor for MagazineSectionsViewController();
    v19 = objc_allocWithZone(v18);
    v20 = __swift_mutable_project_boxed_opaque_existential_1(v54, v55);
    v40[2] = v40;
    MEMORY[0x28223BE20](v20);
    v22 = (v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v23 + 16))(v22);
    v24 = __swift_mutable_project_boxed_opaque_existential_1(v51, v52);
    v40[1] = v40;
    MEMORY[0x28223BE20](v24);
    v26 = (v40 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v27 + 16))(v26);
    v28 = *v22;
    v29 = *v26;
    v50[3] = v16;
    v50[4] = &off_282A2E4B0;
    v49[4] = &off_282A33210;
    v50[0] = v28;
    v49[3] = v17;
    v49[0] = v29;
    v30 = OBJC_IVAR____TtC7NewsUI230MagazineSectionsViewController_coverViewManager;
    sub_219BE6C14();
    swift_allocObject();
    *&v19[v30] = sub_219BE6C04();
    v31 = OBJC_IVAR____TtC7NewsUI230MagazineSectionsViewController_scrollViewProxyManager;
    sub_219BE83D4();
    swift_allocObject();
    *&v19[v31] = sub_219BE83C4();
    v32 = OBJC_IVAR____TtC7NewsUI230MagazineSectionsViewController_viewControllerCache;
    sub_218BA47A4();
    swift_allocObject();
    *&v19[v32] = sub_219BE3284();
    v33 = OBJC_IVAR____TtC7NewsUI230MagazineSectionsViewController_eventManager;
    sub_21876A390(0, &qword_280EE7DE8, sub_218BA4888, &type metadata for MagazineSectionsViewController.Event, MEMORY[0x277D6CAA0]);
    swift_allocObject();
    *&v19[v33] = sub_219BE1D34();
    v34 = &v19[OBJC_IVAR____TtC7NewsUI230MagazineSectionsViewController_currentSection];
    *(v34 + 1) = 0;
    *(v34 + 2) = 0;
    *v34 = 0;
    v35 = &v19[OBJC_IVAR____TtC7NewsUI230MagazineSectionsViewController_currentViewController];
    *v35 = 0;
    *(v35 + 1) = 0;
    sub_218718690(v50, &v19[OBJC_IVAR____TtC7NewsUI230MagazineSectionsViewController_styler]);
    v36 = &v19[OBJC_IVAR____TtC7NewsUI230MagazineSectionsViewController_eventHandler];
    v37 = v46;
    *v36 = v47;
    *(v36 + 1) = v37;
    *&v19[OBJC_IVAR____TtC7NewsUI230MagazineSectionsViewController_barCompressionManager] = v45;
    sub_218718690(v49, &v19[OBJC_IVAR____TtC7NewsUI230MagazineSectionsViewController_sectionViewControllerFactory]);
    *&v19[OBJC_IVAR____TtC7NewsUI230MagazineSectionsViewController_sectionSelection] = v44;
    *&v19[OBJC_IVAR____TtC7NewsUI230MagazineSectionsViewController_offlineBannerCoordinator] = v41;
    v38 = &v19[OBJC_IVAR____TtC7NewsUI230MagazineSectionsViewController_presentation];
    *v38 = 0;
    *(v38 + 1) = 0;
    *(v38 + 8) = 255;
    v48.receiver = v19;
    v48.super_class = v18;
    v39 = objc_msgSendSuper2(&v48, sel_initWithNibName_bundle_, 0, 0);
    __swift_destroy_boxed_opaque_existential_1(v49);
    __swift_destroy_boxed_opaque_existential_1(v50);
    *(*&v39[OBJC_IVAR____TtC7NewsUI230MagazineSectionsViewController_eventHandler] + 24) = &off_282A4C520;
    swift_unknownObjectWeakAssign();
    __swift_destroy_boxed_opaque_existential_1(v51);
    __swift_destroy_boxed_opaque_existential_1(v54);
    __swift_destroy_boxed_opaque_existential_1(v60);
    __swift_destroy_boxed_opaque_existential_1(v64);
    __swift_destroy_boxed_opaque_existential_1(v57);
    return v39;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_218BA3564@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EDC810);
  result = sub_219BE1E34();
  if (v20)
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v19, v20);
    MEMORY[0x28223BE20](v4);
    v6 = (v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v7 + 16))(v6);
    v8 = *v6;
    v9 = type metadata accessor for BaseStyler();
    v18[3] = v9;
    v10 = sub_218725FE8();
    v18[4] = v10;
    v18[0] = v8;
    v11 = type metadata accessor for MagazineSectionsStyler();
    v12 = swift_allocObject();
    v13 = __swift_mutable_project_boxed_opaque_existential_1(v18, v9);
    MEMORY[0x28223BE20](v13);
    v15 = (v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v16 + 16))(v15);
    v17 = *v15;
    v12[5] = v9;
    v12[6] = v10;
    v12[2] = v17;
    __swift_destroy_boxed_opaque_existential_1(v18);
    result = __swift_destroy_boxed_opaque_existential_1(v19);
    a2[3] = v11;
    a2[4] = &off_282A2E4B0;
    *a2 = v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_218BA3794@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EAC440);
  result = sub_219BE1E34();
  v5 = v20;
  if (!v20)
  {
    __break(1u);
    goto LABEL_6;
  }

  v6 = v21;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EBB120);
  result = sub_219BE1E34();
  if (!v19)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EB8328);
  result = sub_219BE1E34();
  if (v17)
  {
    v7 = __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
    MEMORY[0x28223BE20](v7);
    v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v10 + 16))(v9);
    v11 = __swift_mutable_project_boxed_opaque_existential_1(v16, v17);
    MEMORY[0x28223BE20](v11);
    v13 = &v16[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v14 + 16))(v13);
    v15 = sub_218BA41B8(v5, v6, *v9, *v13);
    __swift_destroy_boxed_opaque_existential_1(v16);
    result = __swift_destroy_boxed_opaque_existential_1(v18);
    *a2 = v15;
    a2[1] = &off_282A728E8;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_218BA3A3C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EA8DC0);
  result = sub_219BE1E34();
  v5 = v33;
  if (!v33)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EA8DB0);
  result = sub_219BE1E34();
  if (!v32)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v24 = v34;
  v25 = a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21876A390(0, &qword_280E90690, sub_2186F1660, &type metadata for MagazineFeedOfflineModel, MEMORY[0x277D33538]);
  result = sub_219BE1E24();
  if (result)
  {
    v6 = result;
    v7 = __swift_mutable_project_boxed_opaque_existential_1(v31, v32);
    MEMORY[0x28223BE20](v7);
    v9 = (&v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v10 + 16))(v9);
    v11 = *v9;
    v12 = type metadata accessor for MagazinesBadgingCoordinator();
    v29 = v12;
    v30 = &off_282A3A448;
    v28[0] = v11;
    v13 = type metadata accessor for MagazineSectionsInteractor();
    v14 = objc_allocWithZone(v13);
    v15 = __swift_mutable_project_boxed_opaque_existential_1(v28, v29);
    MEMORY[0x28223BE20](v15);
    v17 = (&v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v18 + 16))(v17);
    v19 = *v17;
    v27[3] = v12;
    v27[4] = &off_282A3A448;
    v27[0] = v19;
    *&v14[OBJC_IVAR____TtC7NewsUI226MagazineSectionsInteractor_delegate + 8] = 0;
    swift_unknownObjectWeakInit();
    v20 = &v14[OBJC_IVAR____TtC7NewsUI226MagazineSectionsInteractor_dataManager];
    v21 = v24;
    *v20 = v5;
    *(v20 + 1) = v21;
    sub_218718690(v27, &v14[OBJC_IVAR____TtC7NewsUI226MagazineSectionsInteractor_magazinesBadgingCoordinator]);
    *&v14[OBJC_IVAR____TtC7NewsUI226MagazineSectionsInteractor_offlineManager] = v6;
    v26.receiver = v14;
    v26.super_class = v13;
    v22 = objc_msgSendSuper2(&v26, sel_init);
    __swift_destroy_boxed_opaque_existential_1(v27);
    __swift_destroy_boxed_opaque_existential_1(v28);
    result = __swift_destroy_boxed_opaque_existential_1(v31);
    v23 = v25;
    *v25 = v22;
    v23[1] = &off_282A722D8;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_218BA3DAC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    v4 = result;
    v5 = type metadata accessor for MagazineSectionsTracker();
    result = swift_allocObject();
    *(result + 16) = v4;
    a2[3] = v5;
    a2[4] = &off_282A69698;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_218BA3E34@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EB3EB8);
  result = sub_219BE1E34();
  if (!v18)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DC20);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EBB130);
  result = sub_219BE1E34();
  if (v16)
  {
    v6 = __swift_mutable_project_boxed_opaque_existential_1(v17, v18);
    MEMORY[0x28223BE20](v6);
    v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v9 + 16))(v8);
    v10 = __swift_mutable_project_boxed_opaque_existential_1(v15, v16);
    MEMORY[0x28223BE20](v10);
    v12 = &v15[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v13 + 16))(v12);
    v14 = sub_218BA45A0(*v8, v5, *v12);
    __swift_destroy_boxed_opaque_existential_1(v15);
    result = __swift_destroy_boxed_opaque_existential_1(v17);
    *a2 = v14;
    a2[1] = &off_282A3BF30;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_218BA40CC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DC20);
  result = sub_219BE1E24();
  if (result)
  {
    v5 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186D6710(0, &qword_280EC5430);
    result = sub_219BE1E24();
    if (result)
    {
      v6 = result;
      v7 = type metadata accessor for MagazineFeedMastheadModelProvider();
      result = swift_allocObject();
      *(result + 16) = v5;
      *(result + 24) = v6;
      a2[3] = v7;
      a2[4] = &off_282AA0030;
      *a2 = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_218BA41B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = *a4;
  v9 = type metadata accessor for MagazineSectionsRouter();
  v32[3] = v9;
  v32[4] = &off_282A39B28;
  v32[0] = a3;
  v30 = v8;
  v31 = &off_282A69698;
  v29[0] = a4;
  type metadata accessor for MagazineSectionsEventHandler();
  v10 = swift_allocObject();
  v11 = __swift_mutable_project_boxed_opaque_existential_1(v32, v9);
  MEMORY[0x28223BE20](v11);
  v13 = (&v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13);
  v15 = __swift_mutable_project_boxed_opaque_existential_1(v29, v30);
  MEMORY[0x28223BE20](v15);
  v17 = (&v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v18 + 16))(v17);
  v19 = *v13;
  v20 = *v17;
  v27 = v9;
  v28 = &off_282A39B28;
  v25 = &off_282A69698;
  *&v26 = v19;
  v24 = v8;
  *&v23 = v20;
  v10[3] = 0;
  swift_unknownObjectWeakInit();
  v10[4] = a1;
  v10[5] = a2;
  sub_2186CB1F0(&v26, (v10 + 6));
  sub_2186CB1F0(&v23, (v10 + 11));
  *(a1 + OBJC_IVAR____TtC7NewsUI226MagazineSectionsInteractor_delegate + 8) = &off_282A728B8;
  swift_unknownObjectWeakAssign();
  __swift_destroy_boxed_opaque_existential_1(v29);
  __swift_destroy_boxed_opaque_existential_1(v32);
  return v10;
}

uint64_t sub_218BA4420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_219BED184();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for MagazineSectionBarModule();
  v19 = &off_282A68D20;
  *&v17 = a1;
  v15 = type metadata accessor for MagazineSectionService();
  v16 = &off_282A6ADF8;
  *&v14 = a3;
  sub_2186C6148(0, &qword_280E8E3B0);
  (*(v9 + 104))(v11, *MEMORY[0x277D851B8], v8);
  v12 = sub_219BF66E4();
  (*(v9 + 8))(v11, v8);
  *(a4 + 16) = v12;
  sub_2186CB1F0(&v17, a4 + 32);
  *(a4 + 24) = a2;
  sub_2186CB1F0(&v14, a4 + 72);
  return a4;
}

uint64_t sub_218BA45A0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *a3;
  v22 = type metadata accessor for MagazineSectionBarModule();
  v23 = &off_282A68D20;
  v21[0] = a1;
  v19 = v6;
  v20 = &off_282A6ADF8;
  v18[0] = a3;
  type metadata accessor for MagazineSectionsDataManager();
  v7 = swift_allocObject();
  v8 = __swift_mutable_project_boxed_opaque_existential_1(v21, v22);
  MEMORY[0x28223BE20](v8);
  v10 = (v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v11 + 16))(v10);
  v12 = __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
  MEMORY[0x28223BE20](v12);
  v14 = (v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14);
  v16 = sub_218BA4420(*v10, a2, *v14, v7);
  __swift_destroy_boxed_opaque_existential_1(v18);
  __swift_destroy_boxed_opaque_existential_1(v21);
  return v16;
}

void sub_218BA47A4()
{
  if (!qword_280EE68C0)
  {
    sub_218BA480C();
    v0 = sub_219BE3294();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE68C0);
    }
  }
}

unint64_t sub_218BA480C()
{
  result = qword_280EE5D78;
  if (!qword_280EE5D78)
  {
    sub_2186C6148(255, &qword_280E8E480);
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280EE5D78);
  }

  return result;
}

unint64_t sub_218BA4888()
{
  result = qword_280EAC430;
  if (!qword_280EAC430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EAC430);
  }

  return result;
}

uint64_t sub_218BA48DC()
{
  MEMORY[0x21CECFA80](v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t _sSo7FCIssueC7NewsUI2E1loiySbAB_ABtFZ_0(void *a1, void *a2)
{
  v4 = sub_219BDBD34();
  v25 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v24 - v8;
  v10 = [objc_msgSend(a1 sourceChannel)];
  swift_unknownObjectRelease();
  sub_219BF5414();

  v11 = sub_219BF54D4();
  v13 = v12;

  v28 = v11;
  v29 = v13;
  v14 = [objc_msgSend(a2 sourceChannel)];
  swift_unknownObjectRelease();
  sub_219BF5414();

  v15 = sub_219BF54D4();
  v17 = v16;

  v26 = v15;
  v27 = v17;
  sub_2187F3BD4();
  v18 = sub_219BF7014();

  if (v18 == -1)
  {
    return 1;
  }

  if (v18)
  {
    if (v18 == 1)
    {
      return 0;
    }

    else
    {
      type metadata accessor for ComparisonResult(0);
      v28 = v18;
      result = sub_219BF7974();
      __break(1u);
    }
  }

  else
  {
    v19 = [a1 publicationDate];
    sub_219BDBCA4();

    v20 = [a2 publicationDate];
    sub_219BDBCA4();

    v21 = sub_219BDBCC4();
    v22 = *(v25 + 8);
    v22(v7, v4);
    v22(v9, v4);
    return v21 == 1;
  }

  return result;
}

unint64_t sub_218BA4C14()
{
  result = qword_27CC0E9F0;
  if (!qword_27CC0E9F0)
  {
    sub_218A59B7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0E9F0);
  }

  return result;
}

uint64_t sub_218BA4C6C(uint64_t a1)
{
  v82 = sub_219BF0744();
  v91 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v81 = &v75 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BF0444();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v78 = &v75 - v9;
  v10 = type metadata accessor for MagazineGridItemModel();
  v89 = *(v10 - 8);
  v90 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = v1;
  sub_219ADE0A8();
  v14 = v13;
  v15 = *a1;
  v16 = *(*a1 + 16);
  if (!v16)
  {

    return MEMORY[0x277D84F90];
  }

  v77 = v8;
  v93 = MEMORY[0x277D84F90];
  sub_218C34F20(0, v16, 0);
  v17 = a1;
  v18 = 0;
  v19 = v93;
  v80 = v17;
  v87 = *(v17 + 32);
  v88 = v15 + 32;
  v79 = (v91 + 32);
  v91 = v14 + 56;
  v76 = v5;
  v84 = (v5 + 32);
  v75 = xmmword_219C09BA0;
  v85 = v16;
  v86 = v4;
  v20 = v16;
  do
  {
    v21 = (v88 + 120 * v18);
    v22 = *v21;
    v23 = v21[1];
    v24 = v21[3];
    v95[0] = v21[2];
    v95[1] = v24;
    v94[0] = v22;
    v94[1] = v23;
    v25 = v21[4];
    v26 = v21[5];
    v27 = v21[6];
    v96 = *(v21 + 14);
    v95[3] = v26;
    v95[4] = v27;
    v95[2] = v25;
    v28 = *(v21 + 72);
    v29 = *(v21 + 104);
    v98 = *(v21 + 88);
    v99 = v29;
    v97 = v28;
    v30 = *(v21 + 8);
    *&v104[9] = *(v21 + 17);
    *v104 = v30;
    v31 = *&v94[0];
    v101 = v98;
    v102 = v29;
    v100 = v97;
    v32 = *(*&v94[0] + 16);
    swift_retain_n();
    sub_218BA744C(v94, v92);
    sub_218BA74A8(v104, v92, &qword_27CC0C608);
    v33 = [v32 isNewspaper];
    v34 = *v104;
    if (*v104)
    {
      v35 = v33;
      v105 = *&v104[8];
      v106 = v104[24];

      if (v87 < 3)
      {

        sub_218BA74A8(&v100, v92, &qword_280E8F860);
        sub_218BA74A8(&v101, v92, &qword_280E8F860);
        sub_218BA74A8(&v102, v92, &qword_27CC0EA08);
        v36 = v81;
        sub_218BA6624(v80, v94, v14, v81);
        sub_218BA7578(v94);
        sub_2189E96A0();
        v38 = *(v37 + 48);
        v39 = &v12[*(v37 + 64)];
        *v12 = v34;
        *(v12 + 8) = v105;
        v12[24] = v106;
        (*v79)(&v12[v38], v36, v82);
        goto LABEL_33;
      }

      if ((v35 & 1) == 0)
      {

        v103[0] = *(v95 + 8);
        *(v103 + 9) = *(&v95[1] + 1);
        sub_218BA74A8(&v100, v92, &qword_280E8F860);
        sub_218BA74A8(&v101, v92, &qword_280E8F860);
        sub_218BA74A8(&v102, v92, &qword_27CC0EA08);
        v62 = v81;
        sub_218BA6624(v80, v94, v14, v81);
        sub_2189E9570(0);
        v64 = *(v63 + 64);
        v39 = &v12[*(v63 + 80)];
        *v12 = v34;
        *(v12 + 8) = v105;
        v12[24] = v106;
        sub_218BA74A8(v103, v92, &qword_27CC0C608);
        sub_218BA7578(v94);
        *(v12 + 2) = v103[0];
        *(v12 + 41) = *(v103 + 9);
        (*v79)(&v12[v64], v62, v82);
        goto LABEL_33;
      }

      v51 = [*(v31 + 16) identifier];
      v52 = sub_219BF5414();
      v54 = v53;

      if (*(v14 + 16) && (sub_219BF7AA4(), sub_219BF5524(), v55 = sub_219BF7AE4(), v56 = -1 << *(v14 + 32), v57 = v55 & ~v56, ((*(v91 + ((v57 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v57) & 1) != 0))
      {
        v58 = ~v56;
        while (1)
        {
          v59 = (*(v14 + 48) + 16 * v57);
          v60 = *v59 == v52 && v59[1] == v54;
          if (v60 || (sub_219BF78F4() & 1) != 0)
          {
            break;
          }

          v57 = (v57 + 1) & v58;
          if (((*(v91 + ((v57 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v57) & 1) == 0)
          {
            goto LABEL_26;
          }
        }

        v61 = MEMORY[0x277D32CB0];
        sub_218BA75CC(0, &qword_27CC0EA00, MEMORY[0x277D32CB0], MEMORY[0x277D84560]);
        v68 = swift_allocObject();
        *(v68 + 16) = v75;
        sub_219BF0434();
        v92[0] = v68;
        sub_218BA7394(&qword_280E90F40, MEMORY[0x277D32CB0]);
      }

      else
      {
LABEL_26:

        v92[0] = MEMORY[0x277D84F90];
        sub_218BA7394(&qword_280E90F40, MEMORY[0x277D32CB0]);
        v61 = MEMORY[0x277D32CB0];
      }

      sub_218BA75CC(0, &qword_280E8EF18, v61, MEMORY[0x277D83940]);
      sub_218BA7514(&qword_280E8EF10, &qword_280E8EF18, v61);
      v66 = v77;
      v67 = v86;
      sub_219BF7164();
      sub_218744C90(v104, &qword_27CC0C608);
    }

    else
    {

      v40 = [*(v31 + 16) identifier];
      v41 = sub_219BF5414();
      v43 = v42;

      if (*(v14 + 16) && (sub_219BF7AA4(), sub_219BF5524(), v44 = sub_219BF7AE4(), v45 = -1 << *(v14 + 32), v46 = v44 & ~v45, ((*(v91 + ((v46 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v46) & 1) != 0))
      {
        v47 = ~v45;
        while (1)
        {
          v48 = (*(v14 + 48) + 16 * v46);
          v49 = *v48 == v41 && v48[1] == v43;
          if (v49 || (sub_219BF78F4() & 1) != 0)
          {
            break;
          }

          v46 = (v46 + 1) & v47;
          if (((*(v91 + ((v46 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v46) & 1) == 0)
          {
            goto LABEL_15;
          }
        }

        v50 = MEMORY[0x277D32CB0];
        sub_218BA75CC(0, &qword_27CC0EA00, MEMORY[0x277D32CB0], MEMORY[0x277D84560]);
        v65 = swift_allocObject();
        *(v65 + 16) = v75;
        sub_219BF0434();
        v92[0] = v65;
        sub_218BA7394(&qword_280E90F40, MEMORY[0x277D32CB0]);
      }

      else
      {
LABEL_15:

        v92[0] = MEMORY[0x277D84F90];
        sub_218BA7394(&qword_280E90F40, MEMORY[0x277D32CB0]);
        v50 = MEMORY[0x277D32CB0];
      }

      sub_218BA75CC(0, &qword_280E8EF18, v50, MEMORY[0x277D83940]);
      sub_218BA7514(&qword_280E8EF10, &qword_280E8EF18, v50);
      v66 = v78;
      v67 = v86;
      sub_219BF7164();
    }

    sub_2189E93F4();
    v70 = *(v69 + 48);
    v39 = &v12[*(v69 + 64)];
    *v12 = v31;
    (*v84)(&v12[v70], v66, v67);
    sub_218BA74A8(&v100, v92, &qword_280E8F860);
    sub_218BA74A8(&v101, v92, &qword_280E8F860);
    sub_218BA74A8(&v102, v92, &qword_27CC0EA08);
    sub_218BA7578(v94);
    v20 = v85;
LABEL_33:
    v71 = v98;
    *v39 = v97;
    *(v39 + 1) = v71;
    *(v39 + 2) = v99;
    swift_storeEnumTagMultiPayload();
    v93 = v19;
    v73 = *(v19 + 16);
    v72 = *(v19 + 24);
    if (v73 >= v72 >> 1)
    {
      sub_218C34F20(v72 > 1, v73 + 1, 1);
      v19 = v93;
    }

    ++v18;
    *(v19 + 16) = v73 + 1;
    sub_2189F5020(v12, v19 + ((*(v89 + 80) + 32) & ~*(v89 + 80)) + *(v89 + 72) * v73);
  }

  while (v18 != v20);

  return v19;
}

uint64_t sub_218BA57B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v81 = sub_219BF0744();
  *&v79 = *(v81 - 8);
  v6 = MEMORY[0x28223BE20](v81);
  *&v80 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v73 - v8;
  v78 = sub_219BF0444();
  *&v77 = *(v78 - 8);
  v10 = MEMORY[0x28223BE20](v78);
  *&v76 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v73 - v12;
  v84 = type metadata accessor for MagazineGridItemModel();
  MEMORY[0x28223BE20](v84);
  v15 = &v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [sub_218EF7B34() identifier];
  swift_unknownObjectRelease();
  v17 = sub_219BF5414();
  v19 = v18;

  v83 = a2;
  v20 = [*(a2 + 16) identifier];
  v21 = sub_219BF5414();
  v23 = v22;

  if (v17 == v21 && v19 == v23)
  {
  }

  else
  {
    v24 = sub_219BF78F4();

    if ((v24 & 1) == 0)
    {

      return sub_2189F50E4(a1, a3);
    }
  }

  sub_219ADE0A8();
  v26 = v25;
  sub_2189F50E4(a1, v15);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v85[0] = *v15;
    *(v85 + 9) = *(v15 + 9);
    sub_2189E96A0();
    v44 = v43;
    v45 = *(v43 + 48);
    v46 = &v15[*(v43 + 64)];
    v47 = *(v46 + 5);
    *&v82 = *(v46 + 4);
    v78 = v47;
    v48 = v79;
    v49 = *(v79 + 32);
    v50 = *v46;
    v76 = *(v46 + 1);
    v77 = v50;
    v51 = &v15[v45];
    v52 = v81;
    v49(v9, v51, v81);
    v53 = v80;
    sub_218BA61B0(v83, v26, v80);

    (*(v48 + 8))(v9, v52);
    v54 = *(v44 + 48);
    v55 = a3 + *(v44 + 64);
    *a3 = v85[0];
    *(a3 + 9) = *(v85 + 9);
    v49((a3 + v54), v53, v52);
    v56 = v76;
    *v55 = v77;
    *(v55 + 16) = v56;
    v57 = v78;
    *(v55 + 32) = v82;
    *(v55 + 40) = v57;
    return swift_storeEnumTagMultiPayload();
  }

  if (EnumCaseMultiPayload == 1)
  {
    v85[0] = *v15;
    *(v85 + 9) = *(v15 + 9);
    v82 = *(v15 + 2);
    v78 = *(v15 + 6);
    LODWORD(v77) = v15[56];
    sub_2189E9570(0);
    v29 = v28;
    v30 = *(v28 + 64);
    v31 = &v15[*(v28 + 80)];
    v32 = *(v31 + 5);
    *&v76 = *(v31 + 4);
    v75 = v32;
    v33 = v79;
    v34 = *(v79 + 32);
    v35 = *(v31 + 1);
    v74 = *v31;
    v73 = v35;
    v36 = &v15[v30];
    v37 = v81;
    v34(v9, v36, v81);
    v38 = v80;
    sub_218BA61B0(v83, v26, v80);

    (*(v33 + 8))(v9, v37);
    v39 = *(v29 + 64);
    v40 = a3 + *(v29 + 80);
    *a3 = v85[0];
    *(a3 + 9) = *(v85 + 9);
    *(a3 + 32) = v82;
    *(a3 + 48) = v78;
    *(a3 + 56) = v77;
    v34((a3 + v39), v38, v37);
    v41 = v73;
    *v40 = v74;
    *(v40 + 16) = v41;
    v42 = v75;
    *(v40 + 32) = v76;
    *(v40 + 40) = v42;
    return swift_storeEnumTagMultiPayload();
  }

  sub_2189E93F4();
  v60 = v59;
  v61 = *(v59 + 48);
  v62 = &v15[*(v59 + 64)];
  v63 = *(v62 + 4);
  v81 = *(v62 + 5);
  *&v82 = v63;
  v64 = v77;
  v75 = *(v77 + 32);
  v65 = *v62;
  v79 = *(v62 + 1);
  v80 = v65;
  v66 = v78;
  v75(v13, &v15[v61], v78);
  v67 = v76;
  v68 = v83;
  sub_218BA5DEC(v83, v26, v76);

  (*(v64 + 8))(v13, v66);
  v69 = *(v60 + 48);
  v70 = a3 + *(v60 + 64);
  *a3 = v68;
  v75(a3 + v69, v67, v66);
  v71 = v79;
  *v70 = v80;
  *(v70 + 16) = v71;
  v72 = v81;
  *(v70 + 32) = v82;
  *(v70 + 40) = v72;
  swift_storeEnumTagMultiPayload();
}

uint64_t sub_218BA5DEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  sub_218BA75CC(0, &qword_27CC0E9F8, MEMORY[0x277D32CB0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v35 = &v33 - v9;
  v10 = sub_219BF0444();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v34 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v33 = &v33 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v33 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v33 - v19;
  v21 = *(v11 + 16);
  v36 = a3;
  v21(a3, v4, v10);
  v22 = [*(a1 + 16) identifier];
  v23 = sub_219BF5414();
  v25 = v24;

  LOBYTE(a2) = sub_2188537B8(v23, v25, a2);

  if (a2)
  {
    sub_219BF0434();
    sub_21922121C(v20, v18);
    v26 = *(v11 + 8);
    v26(v18, v10);
    return (v26)(v20, v10);
  }

  else
  {
    v28 = v33;
    sub_219BF0434();
    v21(v20, v36, v10);
    sub_218BA7394(&qword_280E90F40, MEMORY[0x277D32CB0]);
    v29 = v34;
    sub_219BF70E4();
    if (sub_219BF7114())
    {
      v30 = *(v11 + 8);
      v30(v29, v10);
      v30(v28, v10);
      v31 = 1;
      v32 = v35;
    }

    else
    {
      sub_219BF7134();
      (*(v11 + 8))(v28, v10);
      v32 = v35;
      (*(v11 + 32))(v35, v29, v10);
      v31 = 0;
    }

    (*(v11 + 56))(v32, v31, 1, v10);
    return sub_218BA73DC(v32, &qword_27CC0E9F8, MEMORY[0x277D32CB0]);
  }
}

uint64_t sub_218BA61B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v44 = a2;
  v42 = a1;
  sub_218BA75CC(0, &qword_280E90EB0, MEMORY[0x277D32F30], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v41 = &v36 - v6;
  v7 = sub_219BF0744();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v40 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v39 = &v36 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v38 = &v36 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v36 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v36 - v18;
  sub_219BF06C4();
  sub_218BA7394(&qword_280E90EB8, MEMORY[0x277D32F30]);
  v20 = sub_219BF70D4();
  v43 = *(v8 + 8);
  v43(v19, v7);
  v45 = v8;
  v21 = *(v8 + 16);
  if (v20)
  {
    return v21(a3, v3, v7);
  }

  v37 = a3;
  v21(v17, v3, v7);
  v23 = [*(v42 + 16) identifier];
  v24 = sub_219BF5414();
  v26 = v25;

  LOBYTE(v23) = sub_2188537B8(v24, v26, v44);

  if (v23)
  {
    v27 = v38;
    sub_219BF0724();
    sub_21922153C(v19, v27);
    v28 = v43;
    v43(v27, v7);
    v28(v19, v7);
    v29 = v37;
    v30 = v45;
  }

  else
  {
    v31 = v39;
    sub_219BF0724();
    v21(v19, v17, v7);
    v32 = v40;
    sub_219BF70E4();
    if (sub_219BF7114())
    {
      v33 = v43;
      v43(v32, v7);
      v33(v31, v7);
      v34 = 1;
      v29 = v37;
      v30 = v45;
      v35 = v41;
    }

    else
    {
      sub_219BF7134();
      v43(v31, v7);
      v30 = v45;
      v35 = v41;
      (*(v45 + 32))(v41, v32, v7);
      v34 = 0;
      v29 = v37;
    }

    (*(v30 + 56))(v35, v34, 1, v7);
    sub_218BA73DC(v35, &qword_280E90EB0, MEMORY[0x277D32F30]);
  }

  return (*(v30 + 32))(v29, v17, v7);
}

void sub_218BA6624(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v10 = sub_219BF0744();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v77 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v76 - v14;
  *&v86 = 0;
  v16 = sub_218BA7394(&unk_27CC15860, MEMORY[0x277D32F30]);
  sub_219BF7C64();
  v78 = a1;
  v79 = v11;
  v17 = *(a1 + 32);
  v82 = v15;
  v83 = a4;
  v80 = v16;
  v81 = a2;
  if (v17 == 1)
  {
    sub_219BF06C4();
    sub_218BA7394(&qword_27CC0EA10, MEMORY[0x277D32F30]);
    sub_219BF5874();
    v18 = *(v11 + 8);
    v18(a4, v10);
    sub_219BF5874();
    *&v86 = v88 | v84;
    sub_219BF7C64();
    v18(v15, v10);
    v19 = v4;
  }

  else
  {
    v20 = [*(*a2 + 16) identifier];
    v21 = sub_219BF5414();
    v23 = v22;

    LOBYTE(v20) = sub_2188537B8(v21, v23, a3);
    v24 = v82;

    if (v20)
    {
      sub_219BF0724();
      sub_218BA7394(&qword_27CC0EA10, MEMORY[0x277D32F30]);
      sub_219BF5874();
      v25 = *(v79 + 8);
      v25(v83, v10);
      sub_219BF5874();
      *&v86 = v88 | v84;
      sub_219BF7C64();
      v25(v24, v10);
      a4 = v83;
    }

    v19 = v5;
    if (v17 == 2)
    {
      v32 = MEMORY[0x277D32F30];
      sub_218BA75CC(0, &qword_27CC15870, MEMORY[0x277D32F30], MEMORY[0x277D84560]);
      v33 = v79;
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_219C09EC0;
      sub_219BF0704();
      sub_219BF06F4();
      *&v86 = v34;
      sub_218BA7394(&qword_280E90EB8, MEMORY[0x277D32F30]);
      sub_218BA75CC(0, &qword_280E8EF08, v32, MEMORY[0x277D83940]);
      sub_218BA7514(&qword_280E8EF00, &qword_280E8EF08, v32);
      v35 = v77;
      v36 = v82;
      sub_219BF7164();
      sub_21922153C(v36, v35);
      v37 = *(v33 + 8);
      v37(v35, v10);
      v37(v36, v10);
    }

    else if (!v17)
    {
      sub_219BF0734();
      v26 = MEMORY[0x277D32F30];
      sub_218BA7394(&qword_27CC0EA10, MEMORY[0x277D32F30]);
      sub_219BF5874();
      v27 = *(v79 + 8);
      v27(v83, v10);
      sub_219BF5874();
      *&v86 = v88 | v84;
      sub_219BF7C64();
      v27(v24, v10);
      v28 = MEMORY[0x277D32F30];
      sub_218BA75CC(0, &qword_27CC15870, MEMORY[0x277D32F30], MEMORY[0x277D84560]);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_219C09EC0;
      sub_219BF0714();
      sub_219BF06F4();
      *&v86 = v29;
      sub_218BA7394(&qword_280E90EB8, v26);
      sub_218BA75CC(0, &qword_280E8EF08, v28, MEMORY[0x277D83940]);
      sub_218BA7514(&qword_280E8EF00, &qword_280E8EF08, v28);
      v30 = v77;
      v31 = v82;
      sub_219BF7164();
      sub_21922153C(v31, v30);
      v27(v30, v10);
      v27(v31, v10);
      a4 = v83;
    }
  }

  if ((*(v78 + 40) & 1) == 0)
  {
    goto LABEL_40;
  }

  v38 = *(*v81 + 16);
  v39 = *(v19 + 16);
  v40 = [v39 purchaseProvider];
  if ([swift_unknownObjectRetain() tagType] == 3)
  {
    v41 = [v38 asSection];
    if (!v41 || (v42 = [v41 parentID], swift_unknownObjectRelease(), !v42))
    {
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      goto LABEL_16;
    }
  }

  else
  {
    v42 = [v38 identifier];
  }

  v43 = sub_219BF5414();
  v45 = v44;

  v46 = [v40 purchasedTagIDs];
  v47 = sub_219BF5D44();

  LOBYTE(v43) = sub_2188537B8(v43, v45, v47);

  swift_unknownObjectRelease();
  v48 = v82;

  swift_unknownObjectRelease();
  if (v43)
  {
LABEL_39:
    sub_219BF06E4();
    sub_218BA7394(&qword_27CC0EA10, MEMORY[0x277D32F30]);
    sub_219BF5874();
    v59 = *(v79 + 8);
    v59(a4, v10);
    sub_219BF5874();
    *&v86 = v88 | v84;
    sub_219BF7C64();
    v59(v48, v10);
    goto LABEL_40;
  }

LABEL_16:
  v49 = [objc_msgSend(v39 bundleSubscriptionProvider)];
  swift_unknownObjectRelease();
  if (objc_getAssociatedObject(v49, v49 + 1))
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v84 = 0u;
    v85 = 0u;
  }

  v86 = v84;
  v87 = v85;
  if (!*(&v85 + 1))
  {
    sub_218744C90(&v86, &qword_280E8B4F0);
    goto LABEL_24;
  }

  sub_21870AD58();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_24:
    v50 = 0;
    v52 = 0;
    goto LABEL_25;
  }

  v50 = v88;
  v51 = [v88 integerValue];
  if (v51 == -1)
  {

    v48 = v82;
    a4 = v83;
    goto LABEL_36;
  }

  v52 = v51;
LABEL_25:
  if (objc_getAssociatedObject(v49, ~v52))
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v84 = 0u;
    v85 = 0u;
  }

  v86 = v84;
  v87 = v85;
  if (!*(&v85 + 1))
  {
    sub_218744C90(&v86, &qword_280E8B4F0);
LABEL_33:

    a4 = v83;
    v48 = v82;
    if ((v52 & 1) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_36;
  }

  sub_21870AD58();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_33;
  }

  v53 = v88;
  v54 = [v53 integerValue];

  v55 = v54 ^ v52;
  v48 = v82;
  a4 = v83;
  if ((v55 & 1) == 0)
  {
    goto LABEL_40;
  }

LABEL_36:
  v56 = [objc_msgSend(v39 bundleSubscriptionProvider)];
  swift_unknownObjectRelease();
  v57 = [v38 identifier];
  if (!v57)
  {
    sub_219BF5414();
    v57 = sub_219BF53D4();
  }

  v58 = [v56 containsTagID_];

  if (v58)
  {
    goto LABEL_39;
  }

LABEL_40:
  v60 = *(v81 + 8);
  if (v60)
  {
    v61 = *(v81 + 16);
    v62 = *(v81 + 24);
    LODWORD(v81) = *(v81 + 32);
    v63 = *(v19 + 48);
    ObjectType = swift_getObjectType();
    v65 = *(v63 + 56);
    v66 = v60;
    v67 = v62;
    v65(ObjectType, v63);
    sub_219BE2184();

    v68 = v86;
    v69 = [v66 identifier];
    v70 = sub_219BF5414();
    v72 = v71;

    LOBYTE(v69) = sub_2188537B8(v70, v72, v68);

    if (v69)
    {
      v73 = v82;
      sub_219BF06D4();
      sub_218BA7394(&qword_27CC0EA10, MEMORY[0x277D32F30]);
      v74 = v83;
      sub_219BF5874();
      v75 = *(v79 + 8);
      v75(v74, v10);
      sub_219BF5874();
      *&v86 = v88 | v84;
      sub_219BF7C64();
      sub_2189E9530(v60, v61, v62);
      v75(v73, v10);
    }

    else
    {
      sub_2189E9530(v60, v61, v62);
    }
  }
}

uint64_t sub_218BA7328()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_218BA7394(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_218BA73DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_218BA75CC(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_218BA74A8(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  sub_2186DEEA0(0, a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_218BA7514(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_218BA75CC(255, a2, a3, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_218BA75CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_218BA7630()
{
  sub_218BA782C(0, &qword_280EE39B0, MEMORY[0x277D6EBD0]);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v4 = &v6 - v3;
  sub_218BA782C(0, &qword_280EE3948, MEMORY[0x277D6EBE8]);
  (*(v2 + 104))(v4, *MEMORY[0x277D6EBC8], v1);
  result = sub_219BEA914();
  qword_280EE38A8 = result;
  return result;
}

uint64_t static Commands.PuzzleTapToRadar.reportIssue.getter()
{
  if (qword_280EE38A0 != -1)
  {
    swift_once();
  }
}

uint64_t getEnumTagSinglePayload for PuzzleTapToRadarCommandContext(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PuzzleTapToRadarCommandContext(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
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

  *(result + 8) = v3;
  return result;
}

void sub_218BA782C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for PuzzleTapToRadarCommandContext);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_218BA7880@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + *(_s20FeedItemFetchMetricsVMa(0) + 32));
  v37 = MEMORY[0x277D84FA0];
  v3 = v2 >> 62;
  if (v2 >> 62)
  {
LABEL_45:
    v4 = sub_219BF7214();
    if (v4)
    {
LABEL_3:
      v34 = v3;
      v5 = 0;
      v3 = v2 & 0xC000000000000001;
      do
      {
        if (v3)
        {
          v7 = MEMORY[0x21CECE0F0](v5, v2);
        }

        else
        {
          if (v5 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v7 = *(v2 + 8 * v5 + 32);
        }

        v8 = v7;
        v9 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          __break(1u);
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
          goto LABEL_45;
        }

        v10 = [v7 smarterFetchSources];
        if (v10)
        {
          v11 = v10;
          v6 = sub_219BF5924();
        }

        else
        {
          v6 = MEMORY[0x277D84F90];
        }

        sub_218DDBE70(v6);

        ++v5;
      }

      while (v9 != v4);
      v12 = v37;
      v3 = v34;
      v13 = *(v37 + 16);
      if (!v13)
      {
        goto LABEL_47;
      }

LABEL_14:
      v14 = sub_21947D1C0(v13, 0);
      v15 = sub_2194ABD64(&v37, v14 + 4, v13, v12);
      result = sub_21892DE98();
      if (v15 != v13)
      {
        __break(1u);
        return result;
      }

      if (v3)
      {
        v17 = sub_219BF7214();
        if (v17)
        {
LABEL_17:
          v18 = 0;
          v3 = v2 & 0xC000000000000001;
          v19 = MEMORY[0x277D84F90];
          do
          {
            v20 = v18;
            while (1)
            {
              if (v3)
              {
                v21 = MEMORY[0x21CECE0F0](v20, v2);
                v18 = v20 + 1;
                if (__OFADD__(v20, 1))
                {
                  goto LABEL_43;
                }
              }

              else
              {
                if (v20 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_44;
                }

                v21 = *(v2 + 8 * v20 + 32);
                v18 = v20 + 1;
                if (__OFADD__(v20, 1))
                {
                  goto LABEL_43;
                }
              }

              v22 = v21;
              v23 = [v22 smarterFetchStrategy];
              if (v23)
              {
                break;
              }

              ++v20;
              if (v18 == v17)
              {
                goto LABEL_36;
              }
            }

            v35 = v14;
            v24 = v23;
            v25 = sub_219BF5414();
            v33 = v26;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v19 = sub_218840D24(0, *(v19 + 2) + 1, 1, v19);
            }

            v28 = *(v19 + 2);
            v27 = *(v19 + 3);
            if (v28 >= v27 >> 1)
            {
              v19 = sub_218840D24((v27 > 1), v28 + 1, 1, v19);
            }

            *(v19 + 2) = v28 + 1;
            v29 = &v19[16 * v28];
            v14 = v35;
            *(v29 + 4) = v25;
            *(v29 + 5) = v33;
          }

          while (v18 != v17);
          goto LABEL_36;
        }
      }

      else
      {
        v17 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v17)
        {
          goto LABEL_17;
        }
      }

      v19 = MEMORY[0x277D84F90];
LABEL_36:
      if (*(v19 + 2))
      {
      }

      sub_219BDFE84();
      v30 = sub_219BDFE94();
      v31 = *(*(v30 - 8) + 56);

      return v31(a1, 0, 1, v30);
    }
  }

  else
  {
    v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }
  }

  v12 = MEMORY[0x277D84FA0];
  v13 = *(MEMORY[0x277D84FA0] + 16);
  if (v13)
  {
    goto LABEL_14;
  }

LABEL_47:
  v32 = sub_219BDFE94();
  (*(*(v32 - 8) + 56))(a1, 1, 1, v32);
}

void sub_218BA7C7C(void *a1@<X0>, unint64_t a2@<X1>, __objc2_prot **a3@<X8>)
{
  v6 = CACurrentMediaTime();
  sub_2186C6148(0, &qword_280E8E800);
  v7 = sub_219BF5904();
  v8 = [a1 scoreProfilesForFeedItems:v7 configurationSet:0];

  if (!(a2 >> 62))
  {
    v9 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_24:
    v20 = MEMORY[0x277D84F90];
    if ((MEMORY[0x277D84F90] & 0x8000000000000000) == 0)
    {
LABEL_25:
      if ((v20 & 0x4000000000000000) == 0)
      {
LABEL_26:

        v21 = CACurrentMediaTime();
        *a3 = v8;
        *(a3 + 1) = v21 - v6;
        return;
      }
    }

LABEL_27:
    sub_219BF7214();
    goto LABEL_26;
  }

LABEL_23:
  v9 = sub_219BF7214();
  if (!v9)
  {
    goto LABEL_24;
  }

LABEL_3:
  if (v9 >= 1)
  {
    v23 = a3;
    v10 = 0;
    v11 = a2 & 0xC000000000000001;
    a3 = &_OBJC_LABEL_PROTOCOL___FCAudioPlaylistType;
    do
    {
      if (v11)
      {
        v12 = MEMORY[0x21CECE0F0](v10, a2);
      }

      else
      {
        v12 = *(a2 + 8 * v10 + 32);
      }

      v13 = v12;
      ++v10;
      v14 = [v8 objectForKey_];
      [v13 setScoreProfile_];
    }

    while (v9 != v10);
    v22 = v8;
    v15 = 0;
    v24 = MEMORY[0x277D84F90];
    v8 = &selRef_boldSystemFontOfSize_;
    do
    {
      if (v11)
      {
        v17 = MEMORY[0x21CECE0F0](v15, a2);
      }

      else
      {
        if (v15 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v17 = *(a2 + 8 * v15 + 32);
      }

      v18 = v17;
      a3 = (v15 + 1);
      if (__OFADD__(v15, 1))
      {
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v19 = [v17 scoreProfile];
      if (v19)
      {
        v16 = v19;
      }

      else
      {
        sub_219BF73D4();
        sub_219BF7414();
        sub_219BF7424();
        sub_219BF73E4();
      }

      ++v15;
    }

    while (a3 != v9);
    a3 = v23;
    v20 = v24;
    v8 = v22;
    if ((v24 & 0x8000000000000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_27;
  }

  __break(1u);
}

void sub_218BA7EEC(unint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_219BE2CF4();
  v4 = sub_218BACCDC(a1, v5);

  *a2 = v4;
}

void sub_218BA7F48(id *a1, uint64_t *a2)
{
  v3 = *a2;
  sub_219BE2CF4();
  v4 = [v5 objectForKey_];

  if (v4)
  {
    [*a1 setObject:v4 forKey:v3];
  }
}

uint64_t sub_218BA7FE0(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_2194AB998(v2);
  }

  v3 = v2[2];
  v18[0] = (v2 + 4);
  v18[1] = v3;
  result = sub_219BF7884();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = (v2 + 6);
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = *&v2[2 * i + 5];
        v12 = v9;
        v13 = v8;
        do
        {
          if (*(v13 - 1) >= v11)
          {
            break;
          }

          v14 = *v13;
          *v13 = *(v13 - 1);
          *(v13 - 1) = v11;
          *(v13 - 2) = v14;
          v13 -= 2;
        }

        while (!__CFADD__(v12++, 1));
        v8 += 2;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      sub_218BADDF4();
      v7 = sub_219BF5A34();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_218BABD6C(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_218BA8134()
{
  sub_2186DEF90(0, &qword_280EE6900, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE30B4();
}

uint64_t sub_218BA81C0(uint64_t a1, uint64_t a2, void *a3, id a4, void *a5, void *a6, void *a7, uint64_t a8)
{
  v64 = a8;
  v62 = a7;
  v69 = a6;
  v61 = a5;
  v60 = a4;
  sub_218BADEC0(0, &qword_280E8EAA0, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v56 - v11;
  v13 = sub_219BDBD34();
  v67 = *(v13 - 8);
  v68 = v13;
  v14 = *(v67 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v66 = v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = v14;
  MEMORY[0x28223BE20](v15);
  v65 = v56 - v16;
  sub_219BDBD24();
  v17 = swift_allocObject();
  v63 = v17;
  v18 = MEMORY[0x277D84FA0];
  *(v17 + 16) = MEMORY[0x277D84FA0];
  v19 = (v17 + 16);

  sub_218DD87DC(v20);

  sub_218DD88E0(v21);
  v22 = *v19;

  v23 = CACurrentMediaTime();
  v24 = swift_allocObject();
  *(v24 + 16) = v22;
  type metadata accessor for FeedItemStream();
  v25 = swift_allocObject();
  v26 = MEMORY[0x277D84F90];
  v27 = sub_2194AFD70(MEMORY[0x277D84F90]);
  *&v74 = v26;
  *(&v74 + 1) = v27;
  v75 = v18;
  v76 = v26;
  v77 = 0;
  sub_2186DEF90(0, &qword_280EE7AF0, &type metadata for FeedItemStream.State, MEMORY[0x277D6CB78]);
  swift_allocObject();
  v25[4] = sub_219BE2174();
  sub_2186DEF90(0, &qword_280EE7350, &type metadata for FeedItemStream.State, MEMORY[0x277D6CE00]);
  swift_allocObject();
  v25[5] = sub_219BE2B44();
  v25[2] = sub_218BACBDC;
  v25[3] = v24;
  v28 = sub_219BF5BF4();
  (*(*(v28 - 8) + 56))(v12, 1, 1, v28);
  sub_218718690(v60, &v74);
  sub_218718690(v61, v73);
  v29 = swift_allocObject();
  v29[2] = 0.0;
  v29[3] = 0.0;
  *(v29 + 4) = a3;
  *(v29 + 5) = a1;
  sub_2186CB1F0(&v74, (v29 + 6));
  sub_2186CB1F0(v73, (v29 + 11));
  *(v29 + 16) = v25;
  v29[17] = v23;
  v60 = a3;

  v59 = v25;

  sub_218AB3D80(0, 0, v12, &unk_219C1FA68, v29);

  v30 = *v19;

  v61 = sub_218BACDF0(v69, v30);

  v62 = sub_218BAD2C4(v62, v30);

  v31 = swift_allocObject();
  swift_weakInit();
  v32 = swift_allocObject();
  swift_weakInit();
  v33 = swift_allocObject();
  swift_weakInit();
  v70 = v31;
  v71 = v32;
  v72 = v33;
  sub_218BAD7C8();
  v56[1] = sub_219BE3204();

  v34 = v67;
  v35 = *(v67 + 16);
  v56[2] = v67 + 16;
  v57 = v35;
  v36 = v66;
  v37 = v68;
  (v35)(v66, v65, v68);
  v38 = *(v34 + 80);
  v39 = (v38 + 40) & ~v38;
  v40 = swift_allocObject();
  v41 = v69;
  *(v40 + 2) = v64;
  *(v40 + 3) = v41;
  v42 = v60;
  *(v40 + 4) = v60;
  v43 = *(v34 + 32);
  v43(&v40[v39], v36, v37);
  *&v40[(v14 + v39 + 7) & 0xFFFFFFFFFFFFFFF8] = v63;
  v44 = swift_allocObject();
  *(v44 + 16) = sub_218BAD828;
  *(v44 + 24) = v40;
  v45 = v42;
  swift_unknownObjectRetain();
  v46 = v69;

  v47 = sub_219BE2E54();
  _s19FeedItemFetchResultVMa(0);
  sub_219BE2F74();

  v48 = v66;
  v49 = v65;
  v50 = v68;
  v57(v66);
  v51 = swift_allocObject();
  v43((v51 + ((v38 + 16) & ~v38)), v48, v50);
  v52 = sub_219BE2E54();
  v53 = sub_219BE2FD4();

  *&v74 = v53;
  *(&v74 + 1) = v59;
  v75 = v61;
  v76 = v62;
  sub_2186DEF90(0, &qword_280EE6E40, &_s20FeedItemFetchResultsVN, MEMORY[0x277D6CF30]);
  swift_allocObject();
  v54 = sub_219BE3014();
  (*(v67 + 8))(v49, v50);

  return v54;
}

uint64_t sub_218BA8964()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        result = MEMORY[0x21CEB98C0]();
        if (result)
        {
          result = MEMORY[0x21CEB98C0]();
          if (result)
          {
            result = MEMORY[0x21CEB98C0]();
            if (result)
            {
              v1 = sub_219BE2E54();
              v2 = sub_219BE2E44();

              return v2;
            }

            goto LABEL_16;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
LABEL_16:
        __break(1u);
        return result;
      }
    }
  }

  if (qword_280E8D910 != -1)
  {
    swift_once();
  }

  sub_219BF61F4();
  sub_219BE5314();
  sub_218BADE6C();
  swift_allocError();
  sub_218BADEC0(0, &unk_27CC0EA20, sub_218BAD7C8, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE2FF4();
}

uint64_t sub_218BA8BB0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void *a5@<X4>, char *a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, unint64_t *a9@<X8>)
{
  v57 = a8;
  v54 = a7;
  v63 = a6;
  v53 = a5;
  v61 = a4;
  v60 = a9;
  v59 = sub_219BE1BF4();
  MEMORY[0x28223BE20](v59);
  v58 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_219BDBD34();
  v13 = *(v51 - 8);
  v14 = MEMORY[0x28223BE20](v51);
  MEMORY[0x28223BE20](v14);
  v16 = &v51 - v15;
  v52 = sub_219BDB184();
  v17 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v19 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MetricsVMa = _s20FeedItemFetchMetricsVMa(0);
  v21 = MEMORY[0x28223BE20](MetricsVMa);
  v62 = &v51 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v51 - v23;
  v55 = a1;
  v56 = a2;
  sub_218BAC84C(a1, a2, v64);
  sub_218BAC84C(v64, a3, v65);
  v73 = v64[0];
  sub_218B009F0(&v73, &qword_280E8ED70, &qword_280E8E800);
  v72 = v64[1];
  sub_218BAD9FC(&v72, sub_218B00868);
  v71 = v64[2];
  sub_218BAD9FC(&v71, sub_218B00940);
  v70 = v64[3];
  sub_218B009F0(&v70, &qword_280E8ED20, &qword_280E8E6A8);
  v25 = objc_allocWithZone(MEMORY[0x277D30FC8]);
  v26 = [v25 initWithFeedPersonalizer_];
  v27 = [objc_msgSend(v63 configurationManager)];
  result = swift_unknownObjectRelease();
  if (v27)
  {
    [v53 prewarmScoreCache:v26 configuration:v27];
    swift_unknownObjectRelease();
    (*(v13 + 16))(v16, v54, v51);
    sub_219BDBD24();
    sub_219BDB144();
    v29 = v55;
    v30 = sub_218C876F4(v55[2]);
    if (v31)
    {
      v32 = 0;
    }

    else
    {
      v32 = v30;
    }

    v33 = v29[3];
    v68 = *(v56 + 24);
    v69 = v33;
    v67 = v65[3];
    (*(v17 + 32))(v24, v19, v52);
    *&v24[MetricsVMa[5]] = v32;
    v34 = v68;
    *&v24[MetricsVMa[6]] = v69;
    *&v24[MetricsVMa[7]] = v34;
    *&v24[MetricsVMa[8]] = v67;
    sub_218BACA50(&v69, &v66, &qword_280E8ED20, &qword_280E8E6A8);
    sub_218BACA50(&v68, &v66, &qword_280E8ED20, &qword_280E8E6A8);
    sub_218BACA50(&v67, &v66, &qword_280E8ED20, &qword_280E8E6A8);
    v35 = [v63 readingHistory];
    v36 = v65[0];
    sub_218BADA5C(v57 + 16, v65[0]);
    v37 = sub_219BF5904();

    [v35 willAccessArticleIDs_];

    if (qword_280E8D910 != -1)
    {
      swift_once();
    }

    sub_2186F20D4();
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_219C09EC0;
    if (v36 >> 62)
    {
      v39 = sub_219BF7214();
    }

    else
    {
      v39 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v40 = MEMORY[0x277D83C10];
    *(v38 + 56) = MEMORY[0x277D83B88];
    *(v38 + 64) = v40;
    *(v38 + 32) = v39;
    sub_219BDB174();
    v41 = sub_219BF5CC4();
    v42 = MEMORY[0x277D84A90];
    *(v38 + 96) = MEMORY[0x277D84A28];
    *(v38 + 104) = v42;
    *(v38 + 72) = v41;
    sub_219BF6214();
    sub_219BE5314();

    v43 = v65[1];
    v44 = v62;
    sub_218BADD08(v24, v62, _s20FeedItemFetchMetricsVMa);
    v45 = v60;
    *v60 = v36;
    v45[1] = v26;
    v45[3] = v43;
    ResultVMa = _s19FeedItemFetchResultVMa(0);
    sub_218BADD08(v44, v45 + *(ResultVMa + 36), _s20FeedItemFetchMetricsVMa);
    v47 = swift_allocObject();
    v63 = v24;
    *(v47 + 16) = v26;
    *(v47 + 24) = v36;
    v66 = MEMORY[0x277D84F90];
    v57 = sub_218720F54();
    sub_218BADEC0(0, &qword_280E8F610, MEMORY[0x277D6CA70], MEMORY[0x277D83940]);
    sub_218711654();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v61 = v26;
    sub_219BF7164();
    sub_2186DEF90(0, &unk_280EE7240, &_s21FeedItemScoringResultVN, MEMORY[0x277D6CEE8]);
    swift_allocObject();
    v48 = sub_219BE2D14();
    v49 = swift_allocObject();
    v49[2] = v36;
    v49[3] = v43;
    v49[4] = v48;
    v66 = MEMORY[0x277D84F90];

    sub_219BF7164();
    sub_218BADD84();
    swift_allocObject();
    v50 = sub_219BE2D14();

    v66 = v65[2];
    sub_218BAD9FC(&v66, sub_218B00940);
    sub_218B009F0(&v67, &qword_280E8ED20, &qword_280E8E6A8);

    sub_218BAD9FC(v62, _s20FeedItemFetchMetricsVMa);
    result = sub_218BAD9FC(v63, _s20FeedItemFetchMetricsVMa);
    v45[2] = v48;
    v45[4] = v50;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_218BA9484()
{
  if (qword_280E8D910 != -1)
  {
    swift_once();
  }

  sub_2186F20D4();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_219C09EC0;
  sub_2186CFDE4(0, &qword_280E8B580);
  sub_219BF7484();
  *(v0 + 56) = MEMORY[0x277D837D0];
  *(v0 + 64) = sub_2186FC3BC();
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  v1 = sub_219BDBC04();
  v2 = [v1 fc_millisecondTimeIntervalUntilNow];

  v3 = MEMORY[0x277D84D90];
  *(v0 + 96) = MEMORY[0x277D84D38];
  *(v0 + 104) = v3;
  *(v0 + 72) = v2;
  sub_219BF6214();
  sub_219BE5314();
}

uint64_t sub_218BA95E4(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 288) = a1;
  *(v9 + 272) = a8;
  *(v9 + 280) = a9;
  *(v9 + 256) = a6;
  *(v9 + 264) = a7;
  *(v9 + 248) = a5;
  v10 = sub_219BED314();
  *(v9 + 296) = v10;
  *(v9 + 304) = *(v10 - 8);
  *(v9 + 312) = swift_task_alloc();
  sub_218BADEC0(0, &unk_280E927B8, MEMORY[0x277D303F0], MEMORY[0x277D83D88]);
  *(v9 + 320) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_218BA970C, 0, 0);
}

uint64_t sub_218BA970C()
{
  if (qword_280E8D910 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 248);
  *(v0 + 328) = qword_280F617C0;
  sub_219BF6214();
  sub_219BE5314();
  v2 = [v1 tagController];
  v3 = [v1 localChannelsProvider];
  if (!v3)
  {
    __break(1u);
    goto LABEL_9;
  }

  v11 = v3;
  v3 = [*(v0 + 248) paidAccessChecker];
  if (!v3)
  {
LABEL_9:
    __break(1u);
    return MEMORY[0x28218EB28](v3, v4, v5, v6, v7, v8, v9, v10);
  }

  v12 = v3;
  v14 = *(v0 + 256);
  v13 = *(v0 + 264);
  type metadata accessor for TodayFeedQuerySidecar();
  v15 = swift_allocObject();
  *(v0 + 336) = v15;
  v15[7] = 0;
  v15[8] = 0;
  v15[5] = v14;
  v15[6] = 0;
  v15[2] = v2;
  v15[3] = v11;
  v15[4] = v12;
  v16 = v13[3];
  v17 = v13[4];
  __swift_project_boxed_opaque_existential_1(v13, v16);
  v18 = OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_context;
  *(v0 + 344) = OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_context;
  v19 = *(v14 + v18 + 8);
  v20 = *(v14 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_appConfig);
  *(v0 + 352) = v20;

  swift_unknownObjectRetain();

  v21 = swift_task_alloc();
  *(v0 + 360) = v21;
  *v21 = v0;
  v21[1] = sub_218BA9938;
  v3 = v19;
  v4 = v20;
  v5 = v15;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = v16;
  v10 = v17;

  return MEMORY[0x28218EB28](v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_218BA9938(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 368) = a1;
  *(v3 + 376) = v1;

  if (v1)
  {
    v4 = sub_218BAA46C;
  }

  else
  {

    swift_unknownObjectRelease();
    v4 = sub_218BA9A60;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_218BA9A60()
{
  v1 = *(v0 + 344);
  v2 = *(v0 + 256);
  sub_219BF6214();
  sub_219BE5314();
  v3 = *(v2 + v1);
  if (!v3)
  {
LABEL_4:

    goto LABEL_6;
  }

  v4 = sub_219BF78F4();

  if ((v4 & 1) == 0)
  {
    if (v3 != 1)
    {
      v5 = sub_219BF78F4();

      if ((v5 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    goto LABEL_4;
  }

LABEL_6:
  v6 = *(v0 + 368);
  sub_219BED354();
  v7 = v6;
  MEMORY[0x21CEC40E0](v6);
LABEL_7:
  v8 = *(v0 + 272);
  sub_219BF6214();
  sub_219BE5314();
  __swift_project_boxed_opaque_existential_1(v8, v8[3]);
  sub_219BED3C4();
  v9 = *(v0 + 80);
  v10 = __swift_project_boxed_opaque_existential_1((v0 + 56), v9);
  v11 = *(v9 - 8);
  v12 = swift_task_alloc();
  (*(v11 + 16))(v12, v10, v9);
  *(v0 + 40) = swift_getAssociatedTypeWitness();
  *(v0 + 48) = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1((v0 + 16));
  sub_219BF5C84();

  __swift_destroy_boxed_opaque_existential_1(v0 + 56);
  *(v0 + 132) = *MEMORY[0x277D303E8];
  *(v0 + 172) = *MEMORY[0x277D303E0];
  v13 = *(v0 + 40);
  v14 = *(v0 + 48);
  __swift_mutable_project_boxed_opaque_existential_1(v0 + 16, v13);
  v15 = swift_task_alloc();
  *(v0 + 384) = v15;
  *v15 = v0;
  v15[1] = sub_218BA9E9C;
  v16 = *(v0 + 320);

  return MEMORY[0x282200310](v16, 0, 0, v0 + 240, v13, v14);
}

uint64_t sub_218BA9E9C()
{

  if (v0)
  {
    v1 = sub_218BAA620;
  }

  else
  {
    v1 = sub_218BA9FAC;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_218BA9FAC()
{
  v1 = *(v0 + 320);
  v2 = *(v0 + 296);
  v3 = *(v0 + 304);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 16);
    sub_2186F20D4();
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_219C09EC0;
    sub_219BE2184();
    v5 = *(v0 + 96);

    if (v5 >> 62)
    {
      v6 = sub_219BF7214();
    }

    else
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v7 = *(v0 + 368);

    v8 = MEMORY[0x277D83C10];
    *(v4 + 56) = MEMORY[0x277D83B88];
    *(v4 + 64) = v8;
    *(v4 + 32) = v6;
    sub_219BF5CD4();
    v9 = MEMORY[0x277D83A80];
    *(v4 + 96) = MEMORY[0x277D839F8];
    *(v4 + 104) = v9;
    *(v4 + 72) = v10;
    sub_219BF6214();
    sub_219BE5314();

    sub_219BE2194();
    sub_219BE2184();
    v11 = *(v0 + 144);
    v12 = *(v0 + 152);
    v13 = *(v0 + 160);
    v14 = *(v0 + 168);
    *(v0 + 176) = *(v0 + 136);
    *(v0 + 184) = v11;
    *(v0 + 192) = v12;
    *(v0 + 200) = v13;
    *(v0 + 208) = v14;
    sub_219BE2B34();

    v15 = *(v0 + 8);

    return v15();
  }

  v17 = *(v0 + 132);
  v18 = *(v0 + 312);
  (*(v3 + 32))(v18, v1, v2);
  v19 = (*(v3 + 88))(v18, v2);
  if (v19 != v17)
  {
    if (v19 != *(v0 + 172))
    {
      return sub_219BF7514();
    }

    v26 = *(v0 + 312);
    (*(*(v0 + 304) + 96))(v26, *(v0 + 296));
    v27 = *v26;
    if (*v26 >> 62)
    {
      if (sub_219BF7214())
      {
        goto LABEL_12;
      }
    }

    else if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_12:
      *(swift_task_alloc() + 16) = v27;
      sub_219BE2194();

      goto LABEL_13;
    }

    goto LABEL_14;
  }

  v20 = *(v0 + 312);
  v21 = *(v0 + 280);
  (*(*(v0 + 304) + 96))(v20, *(v0 + 296));
  v22 = *v20;
  v23 = v20[1];
  v24 = v20[2];
  v25 = swift_task_alloc();
  v25[2] = v22;
  v25[3] = v21;
  v25[4] = v23;
  v25[5] = v24;
  sub_219BE2194();

LABEL_13:

LABEL_14:
  v28 = *(v0 + 40);
  v29 = *(v0 + 48);
  __swift_mutable_project_boxed_opaque_existential_1(v0 + 16, v28);
  v30 = swift_task_alloc();
  *(v0 + 384) = v30;
  *v30 = v0;
  v30[1] = sub_218BA9E9C;
  v31 = *(v0 + 320);

  return MEMORY[0x282200310](v31, 0, 0, v0 + 240, v28, v29);
}

uint64_t sub_218BAA46C()
{

  swift_unknownObjectRelease();
  v1 = v0[47];
  sub_2186F20D4();
  v2 = swift_allocObject();
  v0[27] = 0;
  *(v2 + 16) = xmmword_219C09EC0;
  v0[28] = 0xE000000000000000;
  v0[29] = v1;
  sub_2186CFDE4(0, &qword_280E8B580);
  sub_219BF7484();
  v3 = v0[27];
  v4 = v0[28];
  *(v2 + 56) = MEMORY[0x277D837D0];
  *(v2 + 64) = sub_2186FC3BC();
  *(v2 + 32) = v3;
  *(v2 + 40) = v4;
  sub_219BF5CD4();
  v5 = MEMORY[0x277D83A80];
  *(v2 + 96) = MEMORY[0x277D839F8];
  *(v2 + 104) = v5;
  *(v2 + 72) = v6;
  sub_219BF6214();
  sub_219BE5314();

  v7 = v1;
  sub_219BE2B14();

  v8 = v0[1];

  return v8();
}

uint64_t sub_218BAA620()
{
  v1 = v0[46];

  v2 = v0[30];
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  sub_2186F20D4();
  v3 = swift_allocObject();
  v0[27] = 0;
  *(v3 + 16) = xmmword_219C09EC0;
  v0[28] = 0xE000000000000000;
  v0[29] = v2;
  sub_2186CFDE4(0, &qword_280E8B580);
  sub_219BF7484();
  v4 = v0[27];
  v5 = v0[28];
  *(v3 + 56) = MEMORY[0x277D837D0];
  *(v3 + 64) = sub_2186FC3BC();
  *(v3 + 32) = v4;
  *(v3 + 40) = v5;
  sub_219BF5CD4();
  v6 = MEMORY[0x277D83A80];
  *(v3 + 96) = MEMORY[0x277D839F8];
  *(v3 + 104) = v6;
  *(v3 + 72) = v7;
  sub_219BF6214();
  sub_219BE5314();

  v8 = v2;
  sub_219BE2B14();

  v9 = v0[1];

  return v9();
}

uint64_t sub_218BAA7D4(int a1, int a2, id a3, double a4)
{
  v6 = [a3 allFeedItems];
  sub_2186C6148(0, &qword_280E8E800);
  sub_219BF5924();

  sub_2194AFD70(MEMORY[0x277D84F90]);
  sub_219BE2194();

  v7 = [a3 allNetworkEvents];
  sub_2186C6148(0, &qword_280E8E6A8);
  v8 = sub_219BF5924();

  v9 = sub_218BAAB34(v8, a4);

  if (v9 >> 62)
  {
    v10 = sub_219BF7214();
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
LABEL_3:
      MEMORY[0x28223BE20](v10);
      sub_219BE2194();

      goto LABEL_6;
    }
  }

LABEL_6:
  sub_219BE2194();
  sub_219BE2184();
  sub_219BE2B34();

  if (qword_280E8D910 != -1)
  {
    swift_once();
  }

  sub_2186F20D4();
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_219C09EC0;
  sub_219BE2184();

  if (v17 >> 62)
  {
    v12 = sub_219BF7214();
  }

  else
  {
    v12 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = MEMORY[0x277D83C10];
  *(v11 + 56) = MEMORY[0x277D83B88];
  *(v11 + 64) = v13;
  *(v11 + 32) = v12;
  sub_219BF5CD4();
  v14 = MEMORY[0x277D83A80];
  *(v11 + 96) = MEMORY[0x277D839F8];
  *(v11 + 104) = v14;
  *(v11 + 72) = v15;
  sub_219BF6214();
  sub_219BE5314();
}

uint64_t sub_218BAAB34(unint64_t a1, double a2)
{
  v11 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_219BF7214())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x21CECE0F0](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v6 = *(a1 + 8 * j + 32);
      }

      v7 = v6;
      v8 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      [v6 endTime];
      if (v9 <= a2)
      {
      }

      else
      {
        sub_219BF73D4();
        sub_219BF7414();
        sub_219BF7424();
        sub_219BF73E4();
      }

      if (v8 == i)
      {
        return v11;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return MEMORY[0x277D84F90];
}

id sub_218BAAC80(void *a1, uint64_t a2)
{
  result = [a1 articleID];
  if (result)
  {
    v4 = result;
    v5 = sub_219BF5414();
    v7 = v6;

    v8 = sub_2188537B8(v5, v7, a2);

    return ((v8 & 1) == 0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_218BAACFC(int a1, int a2, id a3, double a4)
{
  v6 = [a3 allFeedItems];
  sub_2186C6148(0, &qword_280E8E800);
  sub_219BF5924();

  sub_2194AFD70(MEMORY[0x277D84F90]);
  sub_219BE2194();

  v7 = [a3 allNetworkEvents];
  sub_2186C6148(0, &qword_280E8E6A8);
  v8 = sub_219BF5924();

  v9 = sub_218BAAB34(v8, a4);

  if (v9 >> 62)
  {
    v10 = sub_219BF7214();
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
LABEL_3:
      MEMORY[0x28223BE20](v10);
      sub_219BE2194();

      goto LABEL_6;
    }
  }

LABEL_6:
  if (qword_280E8D910 != -1)
  {
    swift_once();
  }

  sub_2186F20D4();
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_219C09EC0;
  v12 = [a3 allFeedItems];
  v13 = sub_219BF5924();

  if (v13 >> 62)
  {
    v14 = sub_219BF7214();
  }

  else
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v15 = MEMORY[0x277D83C10];
  *(v11 + 56) = MEMORY[0x277D83B88];
  *(v11 + 64) = v15;
  *(v11 + 32) = v14;
  sub_219BF5CD4();
  v16 = MEMORY[0x277D83A80];
  *(v11 + 96) = MEMORY[0x277D839F8];
  *(v11 + 104) = v16;
  *(v11 + 72) = v17;
  sub_219BF6214();
  sub_219BE5314();

  sub_219BE2194();
  sub_219BE2184();
  sub_219BE2B34();
}

void sub_218BAB058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;

  v11 = CACurrentMediaTime();
  if (qword_280E8D910 != -1)
  {
    swift_once();
  }

  sub_219BF6214();
  sub_219BE5314();
  v12 = swift_allocObject();
  v12[2] = v11;
  *(v12 + 3) = a6;
  *(v12 + 4) = sub_2187A913C;
  *(v12 + 5) = v10;
  v14[4] = sub_218BADF58;
  v14[5] = v12;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_218793E0C;
  v14[3] = &block_descriptor_62;
  v13 = _Block_copy(v14);
  swift_unknownObjectRetain();

  [a5 prepareFavorites_];
  _Block_release(v13);
}

void sub_218BAB1FC(void *a1, uint64_t a2, uint64_t a3, double a4)
{
  if (qword_280E8D910 != -1)
  {
    swift_once();
  }

  sub_2186F20D4();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_219C09BA0;
  sub_219BF5CD4();
  v9 = MEMORY[0x277D83A80];
  *(v8 + 56) = MEMORY[0x277D839F8];
  *(v8 + 64) = v9;
  *(v8 + 32) = v10;
  sub_219BF6214();
  sub_219BE5314();

  v11 = swift_allocObject();
  *(v11 + 16) = a4;
  *(v11 + 24) = a2;
  *(v11 + 32) = a3;
  v13[4] = sub_218BADF68;
  v13[5] = v11;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_218793E0C;
  v13[3] = &block_descriptor_68;
  v12 = _Block_copy(v13);

  [a1 prepareForUseWithCompletionHandler_];
  _Block_release(v12);
}

uint64_t sub_218BAB3A8(uint64_t (*a1)(uint64_t))
{
  if (qword_280E8D910 != -1)
  {
    swift_once();
  }

  sub_2186F20D4();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_219C09BA0;
  result = sub_219BF5CD4();
  if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v4 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v4 < 9.22337204e18)
  {
    v5 = MEMORY[0x277D84A90];
    *(v2 + 56) = MEMORY[0x277D84A28];
    *(v2 + 64) = v5;
    *(v2 + 32) = v4;
    sub_219BF6214();
    sub_219BE5314();

    return a1(v6);
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_218BAB4E0(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 articleID];
  if (v3)
  {
    v4 = v3;
    v5 = sub_219BF5414();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

double sub_218BAB558@<D0>(__int128 *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v6 = a6;
  v29 = *(a1 + 32);
  v7 = a1[1];
  v27 = *a1;
  v28 = v7;
  if (v29)
  {
    v32 = v27;
    v30[0] = *(&v28 + 1);
    *&v25[0] = v28;
    v8 = a1[1];
    *a6 = *a1;
    *(a6 + 16) = v8;
    *(a6 + 32) = *(a1 + 32);
    sub_218BACA50(&v32, v24, &qword_280E8ED70, &qword_280E8E800);
    sub_218BADD08(&v32 + 8, v24, sub_218B00868);
    sub_218BADD08(v25, v24, sub_218B00940);
    sub_218BACA50(v30, v24, &qword_280E8ED20, &qword_280E8E6A8);
  }

  else
  {
    v13 = *(a3 + 16);
    v30[0] = MEMORY[0x277D84F90];
    if (a2 >> 62)
    {
      goto LABEL_18;
    }

    for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_219BF7214())
    {
      v21 = a5;
      v22 = a4;
      v23 = v6;
      v15 = 0;
      a4 = a2 & 0xC000000000000001;
      v6 = a2 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (a4)
        {
          v16 = MEMORY[0x21CECE0F0](v15, a2);
        }

        else
        {
          if (v15 >= *(v6 + 16))
          {
            goto LABEL_17;
          }

          v16 = *(a2 + 8 * v15 + 32);
        }

        v17 = v16;
        a5 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v13(v16))
        {
          sub_219BF73D4();
          sub_219BF7414();
          v6 = a2 & 0xFFFFFFFFFFFFFF8;
          sub_219BF7424();
          sub_219BF73E4();
        }

        else
        {
        }

        ++v15;
        if (a5 == i)
        {
          v18 = v30[0];
          a4 = v22;
          v6 = v23;
          a5 = v21;
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      ;
    }

    v18 = MEMORY[0x277D84F90];
LABEL_20:
    *(&v32 + 1) = v28;
    v30[0] = v28;
    sub_218BADD08(&v32 + 8, v25, sub_218B00940);
    sub_219498B24(v25, a5);
    v19 = v30[0];
    v30[0] = v18;
    v30[1] = a4;
    v30[2] = v19;
    v30[3] = *(&v28 + 1);
    v31 = 0;

    sub_218BAC84C(&v27, v30, v25);

    result = *v25;
    v20 = v25[1];
    *v6 = v25[0];
    *(v6 + 16) = v20;
    *(v6 + 32) = v26;
  }

  return result;
}

double sub_218BAB84C@<D0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = *(a1 + 32);
  v3 = a1[1];
  v14 = *a1;
  v15 = v3;
  if (v16)
  {
    v21 = v14;
    *&v17 = *(&v15 + 1);
    *&v12[0] = v15;
    v4 = a1[1];
    *a2 = *a1;
    *(a2 + 16) = v4;
    *(a2 + 32) = *(a1 + 32);
    sub_218BACA50(&v21, &v11, &qword_280E8ED70, &qword_280E8E800);
    sub_218BADD08(&v21 + 8, &v11, sub_218B00868);
    sub_218BADD08(v12, &v11, sub_218B00940);
    sub_218BACA50(&v17, &v11, &qword_280E8ED20, &qword_280E8E6A8);
  }

  else
  {
    v6 = v14;
    *(&v21 + 1) = *(&v15 + 1);
    *&v17 = *(&v15 + 1);
    v7 = v15;

    sub_218BACA50(&v21 + 8, v12, &qword_280E8ED20, &qword_280E8E6A8);

    sub_2191EDCBC(v8);
    v9 = v17;
    v17 = v6;
    v18 = v7;
    v19 = v9;
    v20 = 0;
    sub_218BAC84C(&v14, &v17, v12);

    result = *v12;
    v10 = v12[1];
    *a2 = v12[0];
    *(a2 + 16) = v10;
    *(a2 + 32) = v13;
  }

  return result;
}

uint64_t sub_218BAB9FC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = 1;
}

uint64_t sub_218BABA64()
{

  return swift_deallocClassInstance();
}

uint64_t sub_218BABAD0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_218BABB18(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_218BABB6C@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  sub_218BADEC0(0, &unk_280EE9DC8, MEMORY[0x277CC88A8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  v7 = sub_219BDB184();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [*a1 dateInterval];
  sub_219BDB124();

  sub_219BDB114();
  (*(v8 + 8))(v10, v7);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_218BACB50(v6);
    v12 = 1;
  }

  else
  {
    (*(v8 + 32))(a2, v6, v7);
    v12 = 0;
  }

  return (*(v8 + 56))(a2, v12, 1, v7);
}

uint64_t sub_218BABD6C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v89 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *v89;
    if (!*v89)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_218C81048(v8);
      v8 = result;
    }

    v81 = (v8 + 16);
    v82 = *(v8 + 16);
    if (v82 >= 2)
    {
      while (*a3)
      {
        v83 = (v8 + 16 * v82);
        v84 = *v83;
        v85 = &v81[2 * v82];
        v86 = v85[1];
        sub_218BAC300((*a3 + 16 * *v83), (*a3 + 16 * *v85), (*a3 + 16 * v86), v5);
        if (v4)
        {
        }

        if (v86 < v84)
        {
          goto LABEL_114;
        }

        if (v82 - 2 >= *v81)
        {
          goto LABEL_115;
        }

        *v83 = v84;
        v83[1] = v86;
        v87 = *v81 - v82;
        if (*v81 < v82)
        {
          goto LABEL_116;
        }

        v82 = *v81 - 1;
        result = memmove(v85, v85 + 2, 16 * v87);
        *v81 = v82;
        if (v82 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v88 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 16 * v7 + 8);
      v11 = 16 * v9;
      v12 = *a3 + 16 * v9;
      v13 = *(v12 + 8);
      v14 = v9 + 2;
      v15 = (v12 + 40);
      v16 = v10;
      while (v6 != v14)
      {
        v17 = *v15;
        v15 += 2;
        v18 = v16 >= v17;
        ++v14;
        v16 = v17;
        if ((((v13 < v10) ^ v18) & 1) == 0)
        {
          v7 = v14 - 1;
          if (v13 >= v10)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v13 >= v10)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v19 = 0;
        v20 = 16 * v7;
        v21 = v9;
        do
        {
          if (v21 != v7 + v19 - 1)
          {
            v26 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v22 = (v26 + v11);
            v23 = v26 + v20;
            v24 = *v22;
            v25 = v22[1];
            *v22 = *(v23 - 16);
            *(v23 - 16) = v24;
            *(v23 - 8) = v25;
          }

          ++v21;
          --v19;
          v20 -= 16;
          v11 += 16;
        }

        while (v21 < v7 + v19);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_2191F6B60(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v35 = *(v8 + 24);
    v36 = v5 + 1;
    if (v5 >= v35 >> 1)
    {
      result = sub_2191F6B60((v35 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v36;
    v37 = v8 + 32;
    v38 = (v8 + 32 + 16 * v5);
    *v38 = v9;
    v38[1] = v7;
    v90 = *v89;
    if (!*v89)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v36 - 1;
        if (v36 >= 4)
        {
          break;
        }

        if (v36 == 3)
        {
          v39 = *(v8 + 32);
          v40 = *(v8 + 40);
          v49 = __OFSUB__(v40, v39);
          v41 = v40 - v39;
          v42 = v49;
LABEL_57:
          if (v42)
          {
            goto LABEL_104;
          }

          v55 = (v8 + 16 * v36);
          v57 = *v55;
          v56 = v55[1];
          v58 = __OFSUB__(v56, v57);
          v59 = v56 - v57;
          v60 = v58;
          if (v58)
          {
            goto LABEL_106;
          }

          v61 = (v37 + 16 * v5);
          v63 = *v61;
          v62 = v61[1];
          v49 = __OFSUB__(v62, v63);
          v64 = v62 - v63;
          if (v49)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v59, v64))
          {
            goto LABEL_111;
          }

          if (v59 + v64 >= v41)
          {
            if (v41 < v64)
            {
              v5 = v36 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v36 < 2)
        {
          goto LABEL_112;
        }

        v65 = (v8 + 16 * v36);
        v67 = *v65;
        v66 = v65[1];
        v49 = __OFSUB__(v66, v67);
        v59 = v66 - v67;
        v60 = v49;
LABEL_72:
        if (v60)
        {
          goto LABEL_108;
        }

        v68 = (v37 + 16 * v5);
        v70 = *v68;
        v69 = v68[1];
        v49 = __OFSUB__(v69, v70);
        v71 = v69 - v70;
        if (v49)
        {
          goto LABEL_110;
        }

        if (v71 < v59)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v36)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v76 = (v37 + 16 * (v5 - 1));
        v77 = *v76;
        v78 = (v37 + 16 * v5);
        v79 = v78[1];
        sub_218BAC300((*a3 + 16 * *v76), (*a3 + 16 * *v78), (*a3 + 16 * v79), v90);
        if (v4)
        {
        }

        if (v79 < v77)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v76 = v77;
        v76[1] = v79;
        v80 = *(v8 + 16);
        if (v5 >= v80)
        {
          goto LABEL_101;
        }

        v36 = v80 - 1;
        result = memmove((v37 + 16 * v5), v78 + 2, 16 * (v80 - 1 - v5));
        *(v8 + 16) = v80 - 1;
        if (v80 <= 2)
        {
          goto LABEL_3;
        }
      }

      v43 = v37 + 16 * v36;
      v44 = *(v43 - 64);
      v45 = *(v43 - 56);
      v49 = __OFSUB__(v45, v44);
      v46 = v45 - v44;
      if (v49)
      {
        goto LABEL_102;
      }

      v48 = *(v43 - 48);
      v47 = *(v43 - 40);
      v49 = __OFSUB__(v47, v48);
      v41 = v47 - v48;
      v42 = v49;
      if (v49)
      {
        goto LABEL_103;
      }

      v50 = (v8 + 16 * v36);
      v52 = *v50;
      v51 = v50[1];
      v49 = __OFSUB__(v51, v52);
      v53 = v51 - v52;
      if (v49)
      {
        goto LABEL_105;
      }

      v49 = __OFADD__(v41, v53);
      v54 = v41 + v53;
      if (v49)
      {
        goto LABEL_107;
      }

      if (v54 >= v46)
      {
        v72 = (v37 + 16 * v5);
        v74 = *v72;
        v73 = v72[1];
        v49 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v49)
        {
          goto LABEL_113;
        }

        if (v41 < v75)
        {
          v5 = v36 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v88;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v27 = *a3;
  v28 = *a3 + 16 * v7;
  v29 = v9 - v7;
LABEL_30:
  v30 = *(v27 + 16 * v7 + 8);
  v31 = v29;
  v32 = v28;
  while (1)
  {
    if (*(v32 - 1) >= v30)
    {
LABEL_29:
      ++v7;
      v28 += 16;
      --v29;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v27)
    {
      break;
    }

    v33 = *v32;
    *v32 = *(v32 - 1);
    *(v32 - 1) = v30;
    *(v32 - 2) = v33;
    v32 -= 2;
    if (__CFADD__(v31++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_218BAC300(double *__dst, double *__src, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[2 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[2 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (v4[1] < v6[1])
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 2;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 2;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 2;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[2 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[2 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_24:
    v5 -= 2;
    do
    {
      v17 = v5 + 2;
      if (*(v6 - 1) < *(v14 - 1))
      {
        v19 = v6 - 2;
        if (v17 != v6)
        {
          *v5 = *v19;
        }

        if (v14 <= v4 || (v6 -= 2, v19 <= v7))
        {
          v6 = v19;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      v18 = v14 - 2;
      if (v17 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 2;
      v14 -= 2;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v20 = v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v20 & 0xFFFFFFFFFFFFFFF0)))
  {
    memmove(v6, v4, 16 * (v20 >> 4));
  }

  return 1;
}

void *sub_218BAC504(unint64_t isUniquelyReferenced_nonNull_native, uint64_t *a2, void *a3)
{
  if (isUniquelyReferenced_nonNull_native >> 62)
  {
LABEL_31:
    v31 = isUniquelyReferenced_nonNull_native;
    v3 = sub_219BF7214();
    isUniquelyReferenced_nonNull_native = v31;
    if (v3)
    {
      goto LABEL_3;
    }

    return MEMORY[0x277D84F90];
  }

  v3 = *((isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    return MEMORY[0x277D84F90];
  }

LABEL_3:
  v4 = 0;
  v35 = isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8;
  v36 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
  v32 = isUniquelyReferenced_nonNull_native;
  v34 = isUniquelyReferenced_nonNull_native + 32;
  v37 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v36)
    {
      isUniquelyReferenced_nonNull_native = MEMORY[0x21CECE0F0](v4, v32);
    }

    else
    {
      if (v4 >= *(v35 + 16))
      {
        goto LABEL_30;
      }

      isUniquelyReferenced_nonNull_native = *(v34 + 8 * v4);
    }

    v5 = isUniquelyReferenced_nonNull_native;
    if (__OFADD__(v4++, 1))
    {
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v7 = *a2;

    result = [v5 articleID];
    if (!result)
    {
      break;
    }

    v9 = result;
    v10 = sub_219BF5414();
    v12 = v11;

    if (*(v7 + 16) && (sub_219BF7AA4(), sub_219BF5524(), v13 = sub_219BF7AE4(), v14 = -1 << *(v7 + 32), v15 = v13 & ~v14, ((*(v7 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) != 0))
    {
      v16 = ~v14;
      while (1)
      {
        v17 = (*(v7 + 48) + 16 * v15);
        v18 = *v17 == v10 && v17[1] == v12;
        if (v18 || (sub_219BF78F4() & 1) != 0)
        {
          break;
        }

        v15 = (v15 + 1) & v16;
        if (((*(v7 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
        {
          goto LABEL_19;
        }
      }

      if (v4 == v3)
      {
        return v37;
      }
    }

    else
    {
LABEL_19:

      result = [v5 articleID];
      if (!result)
      {
        goto LABEL_35;
      }

      v19 = result;
      v20 = sub_219BF5414();
      v22 = v21;

      sub_219497B60(&v39, v20, v22);

      v23 = v5;
      v24 = [a3 objectForKey_];
      if (v24)
      {
        v25 = v24;
        [v24 sortingScore];
        v27 = v26;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          goto LABEL_27;
        }
      }

      else
      {

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v27 = 0;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
LABEL_27:
          isUniquelyReferenced_nonNull_native = sub_2191F7D78(0, v37[2] + 1, 1, v37);
          v37 = isUniquelyReferenced_nonNull_native;
        }
      }

      v29 = v37[2];
      v28 = v37[3];
      if (v29 >= v28 >> 1)
      {
        isUniquelyReferenced_nonNull_native = sub_2191F7D78((v28 > 1), v29 + 1, 1, v37);
        v37 = isUniquelyReferenced_nonNull_native;
      }

      v37[2] = v29 + 1;
      v30 = &v37[2 * v29];
      v30[4] = v23;
      v30[5] = v27;
      if (v4 == v3)
      {
        return v37;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_218BAC84C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v18 = *a1;
  v19 = v18;
  sub_218BACA50(&v19, &v17, &qword_280E8ED70, &qword_280E8E800);

  sub_2191EDCE8(v6);
  sub_2187995D4(0, &qword_280E8ED70, &qword_280E8E800);
  sub_2186DEF90(0, &qword_280E8F860, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  sub_218BACAC0();
  sub_218A42594();
  v7 = sub_219BF56E4();

  sub_2186C6148(0, &qword_280E8E760);
  v8 = sub_219BE2804();
  v9 = a1[2];

  v11 = sub_2194799C0(v10, v9);
  v17 = a1[3];
  v18 = v17;
  sub_218BACA50(&v18, v16, &qword_280E8ED20, &qword_280E8E6A8);

  result = sub_2191EDCBC(v12);
  v14 = v17;
  if (a1[4])
  {
    v15 = 1;
  }

  else
  {
    v15 = *(a2 + 32);
  }

  *a3 = v7;
  *(a3 + 8) = v8;
  *(a3 + 16) = v11;
  *(a3 + 24) = v14;
  *(a3 + 32) = v15;
  return result;
}

uint64_t sub_218BACA50(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4)
{
  sub_2187995D4(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_218BACAC0()
{
  result = qword_280E8ED60;
  if (!qword_280E8ED60)
  {
    sub_2187995D4(255, &qword_280E8ED70, &qword_280E8E800);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E8ED60);
  }

  return result;
}

uint64_t sub_218BACB50(uint64_t a1)
{
  sub_218BADEC0(0, &unk_280EE9DC8, MEMORY[0x277CC88A8], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_218BACBFC(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = *(v1 + 5);
  v8 = *(v1 + 16);
  v9 = v1[17];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_2187608D4;

  return sub_218BA95E4(v9, a1, v4, v5, v6, v7, (v1 + 6), (v1 + 11), v8);
}

uint64_t sub_218BACCDC(unint64_t a1, void *a2)
{
  v13 = MEMORY[0x277D84FA0];
  v3 = a2;
  v4 = sub_218BAC504(a1, &v13, v3);

  v12 = v4;
  sub_218BA7FE0(&v12);
  v5 = v12;
  v6 = v12[2];
  if (v6)
  {
    v11 = MEMORY[0x277D84F90];
    sub_219BF73F4();
    v7 = 4;
    do
    {
      v8 = v5[v7];
      sub_219BF73D4();
      sub_219BF7414();
      sub_219BF7424();
      sub_219BF73E4();
      v7 += 2;
      --v6;
    }

    while (v6);

    v9 = v11;
  }

  else
  {

    v9 = MEMORY[0x277D84F90];
  }

  return v9;
}

void *sub_218BACDF0(void *a1, uint64_t a2)
{
  v4 = CACurrentMediaTime();
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  type metadata accessor for FeedItemStream();
  v6 = swift_allocObject();

  sub_2194AFD70(MEMORY[0x277D84F90]);
  sub_2186DEF90(0, &qword_280EE7AF0, &type metadata for FeedItemStream.State, MEMORY[0x277D6CB78]);
  swift_allocObject();
  v6[4] = sub_219BE2174();
  sub_2186DEF90(0, &qword_280EE7350, &type metadata for FeedItemStream.State, MEMORY[0x277D6CE00]);
  swift_allocObject();
  v6[5] = sub_219BE2B44();
  v6[2] = sub_218BAE248;
  v6[3] = v5;
  v7 = swift_allocObject();
  *(v7 + 2) = v6;
  *(v7 + 3) = a1;
  v7[4] = v4;
  v22 = sub_218BADF44;
  v23 = v7;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_218A1DA70;
  aBlock[3] = &block_descriptor_45;
  v8 = _Block_copy(aBlock);

  v9 = a1;

  [v9 refreshIfNeededWithCompletion_];
  _Block_release(v8);
  sub_219BE2184();

  if (v22)
  {
    return v6;
  }

  v10 = [v9 allFeedItems];
  sub_2186C6148(0, &qword_280E8E800);
  sub_219BF5924();

  v11 = sub_2194AFD70(MEMORY[0x277D84F90]);
  MEMORY[0x28223BE20](v11);
  sub_219BE2194();

  v12 = [v9 allNetworkEvents];
  sub_2186C6148(0, &qword_280E8E6A8);
  v13 = sub_219BF5924();

  v14 = sub_218BAAB34(v13, v4);

  if (v14 >> 62)
  {
    v15 = sub_219BF7214();
    if (v15)
    {
      goto LABEL_4;
    }

LABEL_6:

    goto LABEL_7;
  }

  v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v15)
  {
    goto LABEL_6;
  }

LABEL_4:
  MEMORY[0x28223BE20](v15);
  sub_219BE2194();

LABEL_7:
  if (qword_280E8D910 != -1)
  {
    swift_once();
  }

  sub_2186F20D4();
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_219C09BA0;
  sub_219BE2184();
  v17 = aBlock[0];

  if (v17 >> 62)
  {
    v18 = sub_219BF7214();
  }

  else
  {
    v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v19 = MEMORY[0x277D83C10];
  *(v16 + 56) = MEMORY[0x277D83B88];
  *(v16 + 64) = v19;
  *(v16 + 32) = v18;
  sub_219BF6214();
  sub_219BE5314();

  return v6;
}

void *sub_218BAD2C4(void *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  type metadata accessor for FeedItemStream();
  v5 = swift_allocObject();

  sub_2194AFD70(MEMORY[0x277D84F90]);
  sub_2186DEF90(0, &qword_280EE7AF0, &type metadata for FeedItemStream.State, MEMORY[0x277D6CB78]);
  swift_allocObject();
  v5[4] = sub_219BE2174();
  sub_2186DEF90(0, &qword_280EE7350, &type metadata for FeedItemStream.State, MEMORY[0x277D6CE00]);
  swift_allocObject();
  v5[5] = sub_219BE2B44();
  v5[2] = sub_218BAE248;
  v5[3] = v4;
  v6 = CACurrentMediaTime();
  v7 = swift_allocObject();
  *(v7 + 2) = v5;
  *(v7 + 3) = a1;
  v7[4] = v6;
  v22 = sub_218BADF24;
  v23 = v7;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_218A1DA70;
  aBlock[3] = &block_descriptor_29;
  v8 = _Block_copy(aBlock);

  swift_unknownObjectRetain();

  [a1 refreshIfNeededWithCompletion_];
  _Block_release(v8);
  sub_219BE2184();

  if (v22)
  {
    return v5;
  }

  v9 = [a1 allFeedItems];
  sub_2186C6148(0, &qword_280E8E800);
  sub_219BF5924();

  v10 = sub_2194AFD70(MEMORY[0x277D84F90]);
  MEMORY[0x28223BE20](v10);
  sub_219BE2194();

  v11 = [a1 allNetworkEvents];
  sub_2186C6148(0, &qword_280E8E6A8);
  v12 = sub_219BF5924();

  v13 = sub_218BAAB34(v12, v6);

  if (v13 >> 62)
  {
    v14 = sub_219BF7214();
    if (v14)
    {
      goto LABEL_4;
    }

LABEL_6:

    goto LABEL_7;
  }

  v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v14)
  {
    goto LABEL_6;
  }

LABEL_4:
  MEMORY[0x28223BE20](v14);
  sub_219BE2194();

LABEL_7:
  if (qword_280E8D910 != -1)
  {
    swift_once();
  }

  sub_2186F20D4();
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_219C09BA0;
  v16 = [a1 allFeedItems];
  v17 = sub_219BF5924();

  if (v17 >> 62)
  {
    v18 = sub_219BF7214();
  }

  else
  {
    v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v19 = MEMORY[0x277D83C10];
  *(v15 + 56) = MEMORY[0x277D83B88];
  *(v15 + 64) = v19;
  *(v15 + 32) = v18;
  sub_219BF6214();
  sub_219BE5314();

  return v5;
}

void sub_218BAD7C8()
{
  if (!qword_280EDC718[0])
  {
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, qword_280EDC718);
    }
  }
}

uint64_t sub_218BAD828@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  v9 = *(sub_219BDBD34() - 8);
  v10 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v11 = v4[2];
  v12 = v4[3];
  v13 = v4[4];
  v14 = *(v4 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_218BA8BB0(a1, a2, a3, v11, v12, v13, v4 + v10, v14, a4);
}

uint64_t sub_218BAD8F4(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v8 = *(a1 + 32);
  v4 = *(a1 + 56);
  v9[0] = *(a1 + 40);
  v9[1] = v4;
  v10 = *(a1 + 72);
  v5 = *(a1 + 96);
  v11[0] = *(a1 + 80);
  v11[1] = v5;
  v12 = *(a1 + 112);
  return v2(v7, v9, v11);
}

uint64_t sub_218BAD98C()
{
  sub_219BDBD34();

  return sub_218BA9484();
}

uint64_t sub_218BAD9FC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_218BADA5C(uint64_t a1, unint64_t a2)
{
  v30 = MEMORY[0x277D84FA0];
  swift_beginAccess();

  sub_218DD88E0(v3);
  if (a2 >> 62)
  {
    goto LABEL_27;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_219BF7214())
  {
    v5 = MEMORY[0x277D84F90];
    if (!i)
    {
      break;
    }

    v29 = MEMORY[0x277D84F90];
    v6 = &v29;
    sub_21870B65C(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      __break(1u);
LABEL_29:

LABEL_30:
      __break(1u);
      return;
    }

    v5 = v29;
    if ((a2 & 0xC000000000000001) == 0)
    {
      v16 = (a2 + 32);
      while (1)
      {
        v6 = *v16;
        v17 = [v6 articleID];
        if (!v17)
        {
          goto LABEL_29;
        }

        v18 = v17;
        v19 = sub_219BF5414();
        v21 = v20;

        if (!v21)
        {
          goto LABEL_30;
        }

        v29 = v5;
        v23 = *(v5 + 16);
        v22 = *(v5 + 24);
        if (v23 >= v22 >> 1)
        {
          sub_21870B65C((v22 > 1), v23 + 1, 1);
          v5 = v29;
        }

        *(v5 + 16) = v23 + 1;
        v24 = v5 + 16 * v23;
        *(v24 + 32) = v19;
        *(v24 + 40) = v21;
        ++v16;
        if (!--i)
        {
          goto LABEL_21;
        }
      }
    }

    v7 = 0;
    while (1)
    {
      MEMORY[0x21CECE0F0](v7, a2);
      v8 = [swift_unknownObjectRetain() articleID];
      if (v8)
      {
        v9 = v8;
        v10 = sub_219BF5414();
        v12 = v11;
      }

      else
      {
        v10 = 0;
        v12 = 0;
      }

      swift_unknownObjectRelease_n();
      if (!v12)
      {
        break;
      }

      v29 = v5;
      v14 = *(v5 + 16);
      v13 = *(v5 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_21870B65C((v13 > 1), v14 + 1, 1);
        v5 = v29;
      }

      ++v7;
      *(v5 + 16) = v14 + 1;
      v15 = v5 + 16 * v14;
      *(v15 + 32) = v10;
      *(v15 + 40) = v12;
      if (i == v7)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_27:
    ;
  }

LABEL_21:
  sub_218DDBE70(v5);

  v25 = v30;
  v26 = *(v30 + 16);
  if (v26)
  {
    v27 = sub_21947D1C0(*(v30 + 16), 0);
    v28 = sub_2194ABD64(&v29, v27 + 4, v26, v25);
    sub_21892DE98();
    if (v28 == v26)
    {
      return;
    }

    __break(1u);
  }
}

uint64_t sub_218BADD08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_218BADD84()
{
  if (!qword_280EE7148)
  {
    sub_2187995D4(255, &qword_280E8ED70, &qword_280E8E800);
    v0 = sub_219BE2D24();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE7148);
    }
  }
}

void sub_218BADDF4()
{
  if (!qword_280E8E7D0)
  {
    sub_2186C6148(255, &qword_280E8E800);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280E8E7D0);
    }
  }
}

unint64_t sub_218BADE6C()
{
  result = qword_27CC0EA18;
  if (!qword_27CC0EA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0EA18);
  }

  return result;
}

void sub_218BADEC0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_218BADFCC()
{
  sub_219BDB184();
  if (v0 <= 0x3F)
  {
    sub_2187995D4(319, &qword_280E8ED20, &qword_280E8E6A8);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_218BAE0A0()
{
  sub_2187995D4(319, &qword_280E8ED70, &qword_280E8E800);
  if (v0 <= 0x3F)
  {
    sub_2186C6148(319, &unk_280E8E1F0);
    if (v1 <= 0x3F)
    {
      sub_2186DEF90(319, &unk_280EE7240, &_s21FeedItemScoringResultVN, MEMORY[0x277D6CEE8]);
      if (v2 <= 0x3F)
      {
        sub_218B00868();
        if (v3 <= 0x3F)
        {
          sub_218BADD84();
          if (v4 <= 0x3F)
          {
            _s20FeedItemFetchMetricsVMa(319);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

unint64_t sub_218BAE1D4()
{
  result = qword_27CC0EA30;
  if (!qword_27CC0EA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0EA30);
  }

  return result;
}

uint64_t sub_218BAE24C()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  v4 = sub_219BDB5E4();

  v5 = [v2 bundleForClass_];
  v6 = sub_219BDB5E4();

  if (*(v0 + 16))
  {
    v7 = v4;
  }

  else
  {
    v7 = v6;
  }

  return v7;
}

uint64_t sub_218BAE3E8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_218718690(a1, v8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    v5 = result;
    v6 = type metadata accessor for SportsFavoritesSyncModule();
    v7 = swift_allocObject();
    result = sub_2186CB1F0(v8, v7 + 16);
    *(v7 + 56) = v5;
    a2[3] = v6;
    a2[4] = &protocol witness table for SportsFavoritesSyncModule;
    *a2 = v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_218BAE498()
{
  type metadata accessor for SportsFavoritesSyncViewController();
  sub_219BE2904();

  sub_2186C709C(0, &qword_27CC0EA40);
  sub_219BE2914();

  sub_2186C709C(0, &qword_27CC0EA48);
  sub_219BE2914();
  type metadata accessor for SportsFavoritesSyncRouter();
  sub_219BE19C4();

  sub_2186C709C(0, &qword_27CC0EA50);
  sub_219BE2914();

  sub_2186C709C(0, &qword_27CC0EA58);
  sub_219BE2914();

  sub_2186C709C(0, &qword_27CC0EA60);
  sub_219BE2914();

  sub_2186C709C(0, &qword_27CC0EA68);
  sub_219BE2914();
}

uint64_t sub_218BAE6E4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC0EA40);
  result = sub_219BE1E34();
  if (!v24)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC0EA50);
  result = sub_219BE1E34();
  v3 = v21;
  if (!v21)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v4 = v22;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE39D0);
  result = sub_219BE1E34();
  if (v20[3])
  {
    v5 = __swift_mutable_project_boxed_opaque_existential_1(v23, v24);
    MEMORY[0x28223BE20](v5);
    v7 = (&v17[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v8 + 16))(v7);
    v9 = *v7;
    v18 = type metadata accessor for SportsFavoritesSyncStyler();
    v19 = &off_282A3DB58;
    v17[0] = v9;
    v10 = objc_allocWithZone(type metadata accessor for SportsFavoritesSyncViewController());
    v11 = __swift_mutable_project_boxed_opaque_existential_1(v17, v18);
    MEMORY[0x28223BE20](v11);
    v13 = (&v17[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v14 + 16))(v13);
    v15 = sub_218BAF4E8(*v13, v3, v4, v20, v10);
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v17);
    __swift_destroy_boxed_opaque_existential_1(v23);
    return v15;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_218BAE9B8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EDC810);
  result = sub_219BE1E34();
  if (v20)
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v19, v20);
    MEMORY[0x28223BE20](v4);
    v6 = (v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v7 + 16))(v6);
    v8 = *v6;
    v9 = type metadata accessor for BaseStyler();
    v18[3] = v9;
    v10 = sub_218725FE8();
    v18[4] = v10;
    v18[0] = v8;
    v11 = type metadata accessor for SportsFavoritesSyncStyler();
    v12 = swift_allocObject();
    v13 = __swift_mutable_project_boxed_opaque_existential_1(v18, v9);
    MEMORY[0x28223BE20](v13);
    v15 = (v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v16 + 16))(v15);
    v17 = *v15;
    v12[5] = v9;
    v12[6] = v10;
    v12[2] = v17;
    __swift_destroy_boxed_opaque_existential_1(v18);
    result = __swift_destroy_boxed_opaque_existential_1(v19);
    a2[3] = v11;
    a2[4] = &off_282A3DB58;
    *a2 = v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_218BAEBE8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_218718690(a1, v9);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    v5 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186CF94C();
    result = sub_219BE1E24();
    if (result)
    {
      v6 = result;
      v7 = type metadata accessor for SportsFavoritesSyncRouter();
      v8 = swift_allocObject();
      swift_unknownObjectWeakInit();
      result = sub_2186CB1F0(v9, v8 + 24);
      *(v8 + 64) = v5;
      *(v8 + 72) = v6;
      a2[3] = v7;
      a2[4] = &off_282A83F00;
      *a2 = v8;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_218BAECE4(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for SportsFavoritesSyncViewController();
  v2 = sub_219BE1E24();
  swift_unknownObjectWeakAssign();
}

uint64_t sub_218BAED64@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC0EA58);
  result = sub_219BE1E34();
  v5 = v20;
  if (!v20)
  {
    __break(1u);
    goto LABEL_6;
  }

  v6 = v21;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC0EA48);
  result = sub_219BE1E34();
  if (!v19)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC0EA60);
  result = sub_219BE1E34();
  if (v17)
  {
    v7 = __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
    MEMORY[0x28223BE20](v7);
    v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v10 + 16))(v9);
    v11 = __swift_mutable_project_boxed_opaque_existential_1(v16, v17);
    MEMORY[0x28223BE20](v11);
    v13 = &v16[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v14 + 16))(v13);
    v15 = sub_218BAF28C(v5, v6, *v9, *v13);
    __swift_destroy_boxed_opaque_existential_1(v16);
    result = __swift_destroy_boxed_opaque_existential_1(v18);
    *a2 = v15;
    a2[1] = &off_282A548C8;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_218BAF00C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC0EA68);
  result = sub_219BE1E34();
  v5 = v11;
  if (!v11)
  {
    __break(1u);
    goto LABEL_6;
  }

  v6 = v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EC99B0);
  result = sub_219BE1E34();
  if (!v10)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218783DA0();
  result = sub_219BE1E24();
  if (result)
  {
    v7 = result;
    type metadata accessor for SportsFavoritesSyncInteractor();
    v8 = swift_allocObject();
    v8[3] = 0;
    swift_unknownObjectWeakInit();
    v8[4] = v5;
    v8[5] = v6;
    result = sub_2186CB1F0(&v9, (v8 + 6));
    v8[11] = v7;
    *a2 = v8;
    a2[1] = &off_282A494B8;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_218BAF170@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    v4 = result;
    v5 = type metadata accessor for SportsFavoritesSyncTracker();
    result = swift_allocObject();
    *(result + 16) = v4;
    a2[3] = v5;
    a2[4] = &off_282AA12B8;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_218BAF1F8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_219BE1E34();
  if (v5 == 2)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for SportsFavoritesSyncDataManager();
    result = swift_allocObject();
    *(result + 16) = v4;
    *(result + 24) = v5;
    *a2 = result;
    a2[1] = &off_282A820C8;
  }

  return result;
}

void *sub_218BAF28C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = *a4;
  v9 = type metadata accessor for SportsFavoritesSyncRouter();
  v32[3] = v9;
  v32[4] = &off_282A83F00;
  v32[0] = a3;
  v30 = v8;
  v31 = &off_282AA12B8;
  v29[0] = a4;
  type metadata accessor for SportsFavoritesSyncEventHandler();
  v10 = swift_allocObject();
  v11 = __swift_mutable_project_boxed_opaque_existential_1(v32, v9);
  MEMORY[0x28223BE20](v11);
  v13 = (&v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13);
  v15 = __swift_mutable_project_boxed_opaque_existential_1(v29, v30);
  MEMORY[0x28223BE20](v15);
  v17 = (&v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v18 + 16))(v17);
  v19 = *v13;
  v20 = *v17;
  v27 = v9;
  v28 = &off_282A83F00;
  v25 = &off_282AA12B8;
  *&v26 = v19;
  v24 = v8;
  *&v23 = v20;
  v10[3] = 0;
  swift_unknownObjectWeakInit();
  v10[4] = a1;
  v10[5] = a2;
  sub_2186CB1F0(&v26, (v10 + 6));
  sub_2186CB1F0(&v23, (v10 + 11));
  *(a1 + 24) = &off_282A548B8;
  swift_unknownObjectWeakAssign();
  __swift_destroy_boxed_opaque_existential_1(v29);
  __swift_destroy_boxed_opaque_existential_1(v32);
  return v10;
}

char *sub_218BAF4E8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, _BYTE *a5)
{
  ObjectType = swift_getObjectType();
  v34[3] = type metadata accessor for SportsFavoritesSyncStyler();
  v34[4] = &off_282A3DB58;
  v34[0] = a1;
  v11 = OBJC_IVAR____TtC7NewsUI233SportsFavoritesSyncViewController_imageView;
  *&a5[v11] = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithFrame_];
  v12 = OBJC_IVAR____TtC7NewsUI233SportsFavoritesSyncViewController_confirmationButton;
  *&a5[v12] = [objc_opt_self() boldButton];
  v13 = OBJC_IVAR____TtC7NewsUI233SportsFavoritesSyncViewController_deferButton;
  *&a5[v13] = [objc_opt_self() linkButton];
  a5[OBJC_IVAR____TtC7NewsUI233SportsFavoritesSyncViewController_conclusion] = 3;
  sub_218718690(v34, &a5[OBJC_IVAR____TtC7NewsUI233SportsFavoritesSyncViewController_styler]);
  v14 = &a5[OBJC_IVAR____TtC7NewsUI233SportsFavoritesSyncViewController_eventHandler];
  *v14 = a2;
  v14[1] = a3;
  sub_218718690(a4, &a5[OBJC_IVAR____TtC7NewsUI233SportsFavoritesSyncViewController_app]);
  swift_unknownObjectRetain();
  sub_218DF5180(&v35);

  sub_218BAF928(&v35);
  v15 = sub_219BF53D4();

  sub_218DF5180(v36);

  sub_218BAF928(v36);
  v16 = sub_219BF53D4();

  v33.receiver = a5;
  v33.super_class = ObjectType;
  v17 = objc_msgSendSuper2(&v33, sel_initWithTitle_detailText_icon_contentLayout_, v15, v16, 0, 1);

  v18 = v17;
  [v18 setModalInPresentation_];
  *(*&v18[OBJC_IVAR____TtC7NewsUI233SportsFavoritesSyncViewController_eventHandler] + 24) = &off_282A6B0E8;
  swift_unknownObjectWeakAssign();
  [v18 setModalPresentationStyle_];
  __swift_project_boxed_opaque_existential_1(a4, a4[3]);
  v19 = sub_219BEA8D4();
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v31 = sub_218BAF97C;
  v32 = v20;
  aBlock = MEMORY[0x277D85DD0];
  v28 = 1107296256;
  v29 = sub_218793E0C;
  v30 = &block_descriptor_30;
  v21 = _Block_copy(&aBlock);

  v22 = [v19 onWindowDidBecomeBackgroundWithBlock_];
  swift_unknownObjectRelease();
  _Block_release(v21);
  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v31 = sub_218BAF984;
  v32 = v23;
  aBlock = MEMORY[0x277D85DD0];
  v28 = 1107296256;
  v29 = sub_218793E0C;
  v30 = &block_descriptor_5;
  v24 = _Block_copy(&aBlock);

  v25 = [v22 onWindowWillBecomeForegroundWithBlock_];
  _Block_release(v24);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_project_boxed_opaque_existential_1(a4, a4[3]);
  [sub_219BEA8D4() setIsActive_];

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v34);
  __swift_destroy_boxed_opaque_existential_1(a4);
  return v18;
}

uint64_t sub_218BAF9DC()
{
  if ([*(v0[2] + *(type metadata accessor for FoodHubSetupStartupTask() + 24)) useFood])
  {
    ObjectType = swift_getObjectType();
    v2 = swift_task_alloc();
    v0[3] = v2;
    *v2 = v0;
    v2[1] = sub_218BAFBA8;

    return MEMORY[0x282193DF0](0, ObjectType);
  }

  else
  {
    if (qword_280EE5F60 != -1)
    {
      swift_once();
    }

    v3 = sub_219BE5434();
    __swift_project_value_buffer(v3, qword_280F625B0);
    v4 = sub_219BE5414();
    v5 = sub_219BF6214();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_2186C1000, v4, v5, "Will not run FoodHubSetupStartupTask when food feature is disabled.", v6, 2u);
      MEMORY[0x21CECF960](v6, -1, -1);
    }

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_218BAFBA8(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 32) = a1;

    return MEMORY[0x2822009F8](sub_218BAFCF4, 0, 0);
  }
}

uint64_t sub_218BAFCF4()
{
  v1 = [*(v0 + 32) foodHubTagID];
  swift_unknownObjectRelease();
  if (v1)
  {
    v2 = *(v0 + 16);
    v3 = sub_219BF5414();
    v5 = v4;

    *(v0 + 40) = v5;
    v6 = swift_task_alloc();
    *(v0 + 48) = v6;
    v6[2] = v2;
    v6[3] = v3;
    v6[4] = v5;
    v7 = swift_task_alloc();
    *(v0 + 56) = v7;
    *v7 = v0;
    v7[1] = sub_218BAFF14;

    return MEMORY[0x282200740]();
  }

  else
  {
    if (qword_280EE5F60 != -1)
    {
      swift_once();
    }

    v8 = sub_219BE5434();
    __swift_project_value_buffer(v8, qword_280F625B0);
    v9 = sub_219BE5414();
    v10 = sub_219BF61F4();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_2186C1000, v9, v10, "FoodHubSetupStartupTask will not run when we fail to fetch the foodHubTagID.", v11, 2u);
      MEMORY[0x21CECF960](v11, -1, -1);
    }

    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_218BAFF14()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_218BB0050;
  }

  else
  {

    v2 = sub_218BB0038;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_218BB0050()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_218BB00BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[2] = a2;
  v5[3] = a3;
  v6 = *(type metadata accessor for FoodHubSetupStartupTask() - 8);
  v5[6] = v6;
  v5[7] = *(v6 + 64);
  v5[8] = swift_task_alloc();
  sub_218760638();
  v5[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_218BB01B0, 0, 0);
}

uint64_t sub_218BB01B0()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[4];
  v16 = v0[5];
  v6 = v0[3];
  v7 = sub_219BF5BF4();
  v17 = *(*(v7 - 8) + 56);
  v17(v1, 1, 1, v7);
  sub_218BB197C(v6, v2);
  v8 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v9 = (v4 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  sub_218BB19E0(v2, v10 + v8);
  v11 = (v10 + v9);
  *v11 = v5;
  v11[1] = v16;

  sub_219750754(v1, &unk_219C1FD50, v10);
  sub_218BB1D14(v1, sub_218760638);
  v17(v1, 1, 1, v7);
  sub_218BB197C(v6, v2);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  sub_218BB19E0(v2, v12 + v8);
  v13 = (v12 + v9);
  *v13 = v5;
  v13[1] = v16;

  sub_219750754(v1, &unk_219C1FD60, v12);
  sub_218BB1D14(v1, sub_218760638);
  v14 = swift_task_alloc();
  v0[10] = v14;
  *v14 = v0;
  v14[1] = sub_218BB0428;

  return sub_21976A178(0, 0);
}

uint64_t sub_218BB0428()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_218BB055C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = sub_2187609C8;

  return sub_218BB0608(a5, a6);
}

uint64_t sub_218BB0608(uint64_t a1, uint64_t a2)
{
  v3[20] = a2;
  v3[21] = v2;
  v3[19] = a1;
  v4 = type metadata accessor for FoodHubSetupStartupTask();
  v3[22] = v4;
  v5 = *(v4 - 8);
  v3[23] = v5;
  v3[24] = *(v5 + 64);
  v3[25] = swift_task_alloc();
  sub_218760638();
  v3[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_218BB0700, 0, 0);
}

uint64_t sub_218BB0700()
{
  v1 = *(v0[21] + *(v0[22] + 28));
  v0[27] = v1;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_218BB081C;
  v2 = swift_continuation_init();
  sub_218BB1EA4();
  v0[17] = v3;
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_219369FA0;
  v0[13] = &block_descriptor_28;
  v0[14] = v2;
  [v1 syncWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_218BB081C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 224) = v1;
  if (v1)
  {
    v2 = sub_218BB0BE8;
  }

  else
  {
    v2 = sub_218BB092C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_218BB092C()
{
  if (v0[18] == 2)
  {
    sub_218BB2044();
    swift_allocError();
    *v1 = 0;
    swift_willThrow();

    v2 = v0[1];
  }

  else
  {
    v3 = v0[27];
    v4 = sub_219BF53D4();
    LODWORD(v3) = [v3 hasIgnoredSubscriptionForTagID_];

    if (v3)
    {
      v6 = v0[25];
      v5 = v0[26];
      v8 = v0[23];
      v7 = v0[24];
      v10 = v0[20];
      v9 = v0[21];
      v11 = v0[19];
      v12 = sub_219BF5BF4();
      (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
      sub_218BB197C(v9, v6);
      sub_219BF5BD4();

      v13 = sub_219BF5BC4();
      v14 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v15 = (v7 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
      v16 = swift_allocObject();
      v17 = MEMORY[0x277D85700];
      *(v16 + 16) = v13;
      *(v16 + 24) = v17;
      sub_218BB19E0(v6, v16 + v14);
      v18 = (v16 + v15);
      *v18 = v11;
      v18[1] = v10;
      sub_218AB3D80(0, 0, v5, &unk_219C1FD90, v16);
    }

    else
    {
      if (qword_280EE5F60 != -1)
      {
        swift_once();
      }

      v19 = sub_219BE5434();
      __swift_project_value_buffer(v19, qword_280F625B0);
      v20 = sub_219BE5414();
      v21 = sub_219BF6214();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_2186C1000, v20, v21, "FoodHubSetupStartupTask.removeFoodHubIgnore will not run when the foodhub is not ignored.", v22, 2u);
        MEMORY[0x21CECF960](v22, -1, -1);
      }
    }

    v2 = v0[1];
  }

  return v2();
}

uint64_t sub_218BB0BE8()
{
  swift_willThrow();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_218BB0C64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = sub_2187608D4;

  return sub_218BB0D10(a5, a6);
}

uint64_t sub_218BB0D10(uint64_t a1, uint64_t a2)
{
  v3[20] = a2;
  v3[21] = v2;
  v3[19] = a1;
  v4 = type metadata accessor for FoodHubSetupStartupTask();
  v3[22] = v4;
  v5 = *(v4 - 8);
  v3[23] = v5;
  v3[24] = *(v5 + 64);
  v3[25] = swift_task_alloc();
  sub_218760638();
  v3[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_218BB0E08, 0, 0);
}

uint64_t sub_218BB0E08()
{
  v1 = *(v0[21] + *(v0[22] + 32));
  v0[27] = v1;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_218BB0F24;
  v2 = swift_continuation_init();
  sub_218BB1EA4();
  v0[17] = v3;
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_219369FA0;
  v0[13] = &block_descriptor_31;
  v0[14] = v2;
  [v1 syncWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_218BB0F24()
{
  v1 = *(*v0 + 48);
  *(*v0 + 224) = v1;
  if (v1)
  {
    v2 = sub_218BB2360;
  }

  else
  {
    v2 = sub_218BB1034;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_218BB1034()
{
  if (v0[18] == 2)
  {
    sub_218BB2044();
    swift_allocError();
    *v1 = 1;
    swift_willThrow();

    v2 = v0[1];
  }

  else
  {
    v3 = v0[27];
    v4 = sub_219BF53D4();
    LODWORD(v3) = [v3 containsShortcut_];

    if (v3)
    {
      v6 = v0[25];
      v5 = v0[26];
      v8 = v0[23];
      v7 = v0[24];
      v10 = v0[20];
      v9 = v0[21];
      v11 = v0[19];
      v12 = sub_219BF5BF4();
      (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
      sub_218BB197C(v9, v6);
      sub_219BF5BD4();

      v13 = sub_219BF5BC4();
      v14 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v15 = (v7 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
      v16 = swift_allocObject();
      v17 = MEMORY[0x277D85700];
      *(v16 + 16) = v13;
      *(v16 + 24) = v17;
      sub_218BB19E0(v6, v16 + v14);
      v18 = (v16 + v15);
      *v18 = v11;
      v18[1] = v10;
      sub_218AB3D80(0, 0, v5, &unk_219C1FD78, v16);
    }

    else
    {
      if (qword_280EE5F60 != -1)
      {
        swift_once();
      }

      v19 = sub_219BE5434();
      __swift_project_value_buffer(v19, qword_280F625B0);
      v20 = sub_219BE5414();
      v21 = sub_219BF6214();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_2186C1000, v20, v21, "FoodHubSetupStartupTask.removeFoodHubShortcut will not run when the foodhub is not a shortcut.", v22, 2u);
        MEMORY[0x21CECF960](v22, -1, -1);
      }
    }

    v2 = v0[1];
  }

  return v2();
}

void sub_218BB12F4(void *a1)
{
  if (qword_280EE5F60 != -1)
  {
    swift_once();
  }

  v2 = sub_219BE5434();
  __swift_project_value_buffer(v2, qword_280F625B0);
  v3 = a1;
  oslog = sub_219BE5414();
  v4 = sub_219BF61F4();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138543362;
    v7 = a1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_2186C1000, oslog, v4, "FoodHubSetupStartupTask failed to run with error=%{public}@", v5, 0xCu);
    sub_218BB1D14(v6, sub_2189B3F3C);
    MEMORY[0x21CECF960](v6, -1, -1);
    MEMORY[0x21CECF960](v5, -1, -1);
  }
}

uint64_t sub_218BB1454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_219BF5BD4();
  v6[5] = sub_219BF5BC4();
  v8 = sub_219BF5B44();

  return MEMORY[0x2822009F8](sub_218BB14F0, v8, v7);
}

uint64_t sub_218BB14F0()
{
  v1 = *(v0 + 16);

  v2 = *(v1 + *(type metadata accessor for FoodHubSetupStartupTask() + 28));
  v3 = sub_219BF53D4();
  [v2 removeSubscriptionForTagID:v3 type:5];

  if (qword_280EE5F60 != -1)
  {
    swift_once();
  }

  v4 = sub_219BE5434();
  __swift_project_value_buffer(v4, qword_280F625B0);
  v5 = sub_219BE5414();
  v6 = sub_219BF6214();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_2186C1000, v5, v6, "FoodHubSetupStartupTask removed the foodHub from the ignored tags.", v7, 2u);
    MEMORY[0x21CECF960](v7, -1, -1);
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_218BB164C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_219BF5BD4();
  v6[5] = sub_219BF5BC4();
  v8 = sub_219BF5B44();

  return MEMORY[0x2822009F8](sub_218BB16E8, v8, v7);
}

uint64_t sub_218BB16E8()
{
  v1 = *(v0 + 16);

  v2 = *(v1 + *(type metadata accessor for FoodHubSetupStartupTask() + 32));
  v3 = sub_219BF53D4();
  [v2 removeShortcutWithIdentifier_];

  if (qword_280EE5F60 != -1)
  {
    swift_once();
  }

  v4 = sub_219BE5434();
  __swift_project_value_buffer(v4, qword_280F625B0);
  v5 = sub_219BE5414();
  v6 = sub_219BF6214();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_2186C1000, v5, v6, "FoodHubSetupStartupTask removed the foodHub from shortcuts.", v7, 2u);
    MEMORY[0x21CECF960](v7, -1, -1);
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_218BB1840(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  sub_21879D924();
  sub_218BB197C(v1, &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  sub_218BB19E0(&v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5 + v4);
  sub_219BE2F54();
  v6 = sub_219BE2E54();
  v7 = sub_219BE2FD4();

  return v7;
}

uint64_t sub_218BB197C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FoodHubSetupStartupTask();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_218BB19E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FoodHubSetupStartupTask();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_218BB1A44(uint64_t a1)
{
  v4 = *(type metadata accessor for FoodHubSetupStartupTask() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2187608D4;

  return sub_218BAF9BC(a1, v1 + v5);
}

uint64_t sub_218BB1B20(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2187609C8;

  return sub_218BB00BC(a1, a2, v6, v7, v8);
}

uint64_t sub_218BB1BE4(uint64_t a1)
{
  v4 = *(type metadata accessor for FoodHubSetupStartupTask() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_2187609C8;

  return sub_218BB055C(a1, v6, v7, v1 + v5, v9, v10);
}

uint64_t sub_218BB1D14(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_218BB1D74(uint64_t a1)
{
  v4 = *(type metadata accessor for FoodHubSetupStartupTask() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_2187609C8;

  return sub_218BB0C64(a1, v6, v7, v1 + v5, v9, v10);
}

void sub_218BB1EA4()
{
  if (!qword_280E8EA60)
  {
    type metadata accessor for FCFetchResult(255);
    sub_218A450F0();
    v0 = sub_219BF5C44();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8EA60);
    }
  }
}

uint64_t sub_218BB1F14(uint64_t a1)
{
  v4 = *(type metadata accessor for FoodHubSetupStartupTask() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_2187609C8;

  return sub_218BB164C(a1, v6, v7, v1 + v5, v9, v10);
}

unint64_t sub_218BB2044()
{
  result = qword_27CC0EA70;
  if (!qword_27CC0EA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0EA70);
  }

  return result;
}

uint64_t objectdestroy_8Tm()
{
  v1 = (type metadata accessor for FoodHubSetupStartupTask() - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;
  v4 = sub_219BE2C14();
  (*(*(v4 - 8) + 8))(v3, v4);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_218BB21C4(uint64_t a1)
{
  v4 = *(type metadata accessor for FoodHubSetupStartupTask() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_2187608D4;

  return sub_218BB1454(a1, v6, v7, v1 + v5, v9, v10);
}

unint64_t sub_218BB2308()
{
  result = qword_27CC0EA78;
  if (!qword_27CC0EA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0EA78);
  }

  return result;
}

uint64_t sub_218BB241C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v74 = a2;
  v78 = a3;
  sub_218BB361C(0, &qword_280E91A90, sub_218700FF8);
  MEMORY[0x28223BE20](v4 - 8);
  v64 = &v62 - v5;
  v68 = type metadata accessor for ArticleListAudioPlaylistFeedGroupKnobs();
  v65 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v66 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218BB361C(0, &qword_280E98668, type metadata accessor for ArticleListAudioPlaylistFeedGroupKnobs);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v67 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v62 - v10;
  v72 = type metadata accessor for AudioPlaylistFeedGroupKnobs();
  v77 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v71 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218BB361C(0, &qword_280EB9208, type metadata accessor for AudioPlaylistFeedGroupKnobs);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v70 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v76 = &v62 - v16;
  sub_218BB361C(0, qword_280EB54A0, type metadata accessor for AudioPlaylistFeedKnobsConfig);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v62 - v18;
  v79 = type metadata accessor for AudioPlaylistFeedKnobsConfig();
  v20 = *(v79 - 8);
  v21 = MEMORY[0x28223BE20](v79);
  v69 = &v62 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v73 = &v62 - v23;
  sub_218BB361C(0, qword_280EC5CA0, type metadata accessor for AudioPlaylistFeedConfig);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v62 - v25;
  v27 = type metadata accessor for AudioPlaylistFeedConfig();
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v30 = &v62 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = a1;
  sub_218BB3670(a1, v26, qword_280EC5CA0, type metadata accessor for AudioPlaylistFeedConfig);
  v31 = *(v28 + 48);
  if (v31(v26, 1, v27) == 1)
  {
    v32 = sub_219BDBD34();
    (*(*(v32 - 8) + 56))(v30, 1, 1, v32);
    v33 = *(v27 + 24);
    v34 = sub_219BEE5B4();
    (*(*(v34 - 8) + 56))(&v30[v33], 1, 1, v34);
    *&v30[*(v27 + 20)] = MEMORY[0x277D84F90];
    if (v31(v26, 1, v27) != 1)
    {
      sub_218BB36DC(v26, qword_280EC5CA0, type metadata accessor for AudioPlaylistFeedConfig);
    }
  }

  else
  {
    sub_218BB3738(v26, v30, type metadata accessor for AudioPlaylistFeedConfig);
  }

  v35 = v78;
  sub_218BB3738(v30, v78, type metadata accessor for AudioPlaylistFeedConfig);
  v36 = v74;
  sub_218BB3670(v74, v19, qword_280EB54A0, type metadata accessor for AudioPlaylistFeedKnobsConfig);
  v37 = *(v20 + 48);
  v38 = v37(v19, 1, v79);
  v39 = v76;
  if (v38 == 1)
  {
    v63 = v37;
    v40 = v77;
    v41 = v72;
    (*(v77 + 56))(v76, 1, 1, v72);
    v42 = v70;
    sub_218BB3670(v39, v70, &qword_280EB9208, type metadata accessor for AudioPlaylistFeedGroupKnobs);
    v43 = *(v40 + 48);
    v77 = v40 + 48;
    if (v43(v42, 1, v41) == 1)
    {
      v62 = v43;
      v44 = v65;
      v45 = v68;
      (*(v65 + 56))(v11, 1, 1, v68);
      v46 = v67;
      sub_218BB3670(v11, v67, &qword_280E98668, type metadata accessor for ArticleListAudioPlaylistFeedGroupKnobs);
      v47 = *(v44 + 48);
      v48 = v47(v46, 1, v45);
      v49 = v71;
      if (v48 == 1)
      {
        sub_218700FF8();
        v51 = v64;
        (*(*(v50 - 8) + 56))(v64, 1, 1, v50);
        v52 = v66;
        v53 = v51;
        v54 = v67;
        sub_2190F6EC8(v53, v66);
        sub_218BB36DC(v11, &qword_280E98668, type metadata accessor for ArticleListAudioPlaylistFeedGroupKnobs);
        if (v47(v54, 1, v68) != 1)
        {
          sub_218BB36DC(v54, &qword_280E98668, type metadata accessor for ArticleListAudioPlaylistFeedGroupKnobs);
        }
      }

      else
      {
        sub_218BB36DC(v11, &qword_280E98668, type metadata accessor for ArticleListAudioPlaylistFeedGroupKnobs);
        v52 = v66;
        sub_218BB3738(v46, v66, type metadata accessor for ArticleListAudioPlaylistFeedGroupKnobs);
      }

      sub_218BB3738(v52, v49, type metadata accessor for ArticleListAudioPlaylistFeedGroupKnobs);
      sub_218BB36DC(v36, qword_280EB54A0, type metadata accessor for AudioPlaylistFeedKnobsConfig);
      sub_218BB36DC(v75, qword_280EC5CA0, type metadata accessor for AudioPlaylistFeedConfig);
      sub_218BB36DC(v76, &qword_280EB9208, type metadata accessor for AudioPlaylistFeedGroupKnobs);
      v56 = v62(v42, 1, v72);
      v35 = v78;
      if (v56 != 1)
      {
        sub_218BB36DC(v42, &qword_280EB9208, type metadata accessor for AudioPlaylistFeedGroupKnobs);
      }
    }

    else
    {
      sub_218BB36DC(v36, qword_280EB54A0, type metadata accessor for AudioPlaylistFeedKnobsConfig);
      sub_218BB36DC(v75, qword_280EC5CA0, type metadata accessor for AudioPlaylistFeedConfig);
      sub_218BB36DC(v39, &qword_280EB9208, type metadata accessor for AudioPlaylistFeedGroupKnobs);
      v49 = v71;
      sub_218BB3738(v42, v71, type metadata accessor for AudioPlaylistFeedGroupKnobs);
    }

    v57 = v69;
    sub_218BB3738(v49, v69, type metadata accessor for AudioPlaylistFeedGroupKnobs);
    v58 = v79;
    *(v57 + *(v79 + 20)) = 0x7FFFFFFFFFFFFFFFLL;
    v59 = v57;
    v55 = v73;
    sub_218BB3738(v59, v73, type metadata accessor for AudioPlaylistFeedKnobsConfig);
    if (v63(v19, 1, v58) != 1)
    {
      sub_218BB36DC(v19, qword_280EB54A0, type metadata accessor for AudioPlaylistFeedKnobsConfig);
    }
  }

  else
  {
    sub_218BB36DC(v36, qword_280EB54A0, type metadata accessor for AudioPlaylistFeedKnobsConfig);
    sub_218BB36DC(v75, qword_280EC5CA0, type metadata accessor for AudioPlaylistFeedConfig);
    v55 = v73;
    sub_218BB3738(v19, v73, type metadata accessor for AudioPlaylistFeedKnobsConfig);
  }

  v60 = type metadata accessor for AudioPlaylistFeedContentConfig();
  return sub_218BB3738(v55, v35 + *(v60 + 20), type metadata accessor for AudioPlaylistFeedKnobsConfig);
}

uint64_t sub_218BB2F1C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  sub_218BB361C(0, qword_280EB54A0, type metadata accessor for AudioPlaylistFeedKnobsConfig);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  sub_218BB361C(0, qword_280EC5CA0, type metadata accessor for AudioPlaylistFeedConfig);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v15 - v8;
  sub_218BB356C();
  v11 = v10;
  v15 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218BB35C8();
  sub_219BF7B34();
  if (!v2)
  {
    type metadata accessor for AudioPlaylistFeedConfig();
    v18 = 0;
    sub_2187010F8(&qword_280EC5CE8, type metadata accessor for AudioPlaylistFeedConfig);
    sub_219BF7674();
    type metadata accessor for AudioPlaylistFeedKnobsConfig();
    v17 = 1;
    sub_2187010F8(qword_280EB54E0, type metadata accessor for AudioPlaylistFeedKnobsConfig);
    sub_219BF7674();
    sub_218BB241C(v9, v6, v16);
    (*(v15 + 8))(v13, v11);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_218BB31E4@<X0>(char *a1@<X8>)
{
  v2 = sub_219BF7614();

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

uint64_t sub_218BB3244@<X0>(char *a1@<X8>)
{
  v2 = sub_219BF7614();

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

uint64_t sub_218BB32A8(uint64_t a1)
{
  v2 = sub_218BB35C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218BB32E4(uint64_t a1)
{
  v2 = sub_218BB35C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_218BB33A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_218BB361C(0, qword_280EB54A0, type metadata accessor for AudioPlaylistFeedKnobsConfig);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  sub_218BB361C(0, qword_280EC5CA0, type metadata accessor for AudioPlaylistFeedConfig);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v16 - v11;
  sub_218BB37A0(a1, &v16 - v11, type metadata accessor for AudioPlaylistFeedConfig);
  v13 = type metadata accessor for AudioPlaylistFeedConfig();
  (*(*(v13 - 8) + 56))(v12, 0, 1, v13);
  sub_218BB37A0(v3 + *(a2 + 20), v9, type metadata accessor for AudioPlaylistFeedKnobsConfig);
  v14 = type metadata accessor for AudioPlaylistFeedKnobsConfig();
  (*(*(v14 - 8) + 56))(v9, 0, 1, v14);
  return sub_218BB241C(v12, v9, a3);
}

void sub_218BB356C()
{
  if (!qword_280E8CB50)
  {
    sub_218BB35C8();
    v0 = sub_219BF7774();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8CB50);
    }
  }
}

unint64_t sub_218BB35C8()
{
  result = qword_280EAD698[0];
  if (!qword_280EAD698[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280EAD698);
  }

  return result;
}

void sub_218BB361C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_219BF6FB4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_218BB3670(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_218BB361C(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_218BB36DC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_218BB361C(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_218BB3738(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_218BB37A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_218BB381C()
{
  result = qword_27CC0EA88;
  if (!qword_27CC0EA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0EA88);
  }

  return result;
}

unint64_t sub_218BB3874()
{
  result = qword_280EAD688;
  if (!qword_280EAD688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EAD688);
  }

  return result;
}

unint64_t sub_218BB38CC()
{
  result = qword_280EAD690;
  if (!qword_280EAD690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EAD690);
  }

  return result;
}

uint64_t sub_218BB3920(uint64_t a1, uint64_t a2)
{
  sub_218BB398C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

void sub_218BB398C()
{
  if (!qword_27CC0EA90)
  {
    v0 = type metadata accessor for MagazineGridItemModel();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0EA90);
    }
  }
}

uint64_t sub_218BB39D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_218BB398C();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a3, v6);
}

uint64_t type metadata accessor for MagazineCatalogModel()
{
  result = qword_27CC0EA98;
  if (!qword_27CC0EA98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_218BB3A9C(uint64_t a1)
{
  sub_218BB398C();
  v3 = v2;
  if (v4 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    v5 = type metadata accessor for MagazineGridItemModel();
    v3 = v5;
    if (v6 <= 0x3F)
    {
      *(*(a1 - 8) + 84) = *(*(v5 - 8) + 84);
      return 0;
    }
  }

  return v3;
}