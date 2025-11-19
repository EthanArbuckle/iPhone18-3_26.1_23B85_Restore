uint64_t sub_224D28F5C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = *(result + OBJC_IVAR____TtC10ChronoCore15LocationService_lock);
    os_unfair_lock_lock(*(v2 + 16));
    sub_224D28FF8(v1);
    os_unfair_lock_unlock(*(v2 + 16));
  }

  return result;
}

void sub_224D28FF8(void *a1)
{
  v2 = sub_224DAC378();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v117 = v115 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3948, &qword_224DB5C10);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v119 = v115 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v116 = v115 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v118 = v115 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v123 = v115 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v126 = v115 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = v115 - v18;
  v20 = OBJC_IVAR____TtC10ChronoCore15LocationService_extInfoByIdentifier;
  swift_beginAccess();
  v132 = a1;
  v21 = *(a1 + v20);
  if ((v21 & 0xC000000000000001) != 0)
  {
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = sub_224DAFA68() | 0x8000000000000000;
  }

  else
  {
    v26 = -1 << *(v21 + 32);
    v23 = ~v26;
    v22 = v21 + 64;
    v27 = -v26;
    if (v27 < 64)
    {
      v28 = ~(-1 << v27);
    }

    else
    {
      v28 = -1;
    }

    v24 = v28 & *(v21 + 64);
    v25 = v21;
  }

  v127 = v19;
  v125 = v2;

  LODWORD(v129) = 0;
  v29 = 0;
  v128 = v23;
  v30 = (v23 + 64) >> 6;
  v124 = (v3 + 48);
  v121 = (v3 + 32);
  v115[1] = v3 + 40;
  v120 = v3;
  v122 = (v3 + 56);
  v31 = &qword_224DB5C10;
  v130 = v22;
  v131 = v30;
  while (2)
  {
    v32 = v29;
    v33 = v24;
    if ((v25 & 0x8000000000000000) != 0)
    {
      while (1)
      {
        v44 = sub_224DAFB18();
        if (!v44)
        {
          goto LABEL_50;
        }

        v46 = v45;
        *&v135 = v44;
        sub_224DAF538();
        swift_dynamicCast();
        v43 = v137[0];
        *&v135 = v46;
        type metadata accessor for ExtensionInfo(0);
        swift_dynamicCast();
        v134 = v137[0];
        v29 = v32;
        v36 = v33;
        if (!v43)
        {
          goto LABEL_50;
        }

LABEL_17:
        v133 = v36;
        v47 = v22;
        v48 = v25;
        v49 = v31;

        v50 = v132[6];
        __swift_project_boxed_opaque_existential_1(v132 + 2, v132[5]);
        v51 = v134;
        v52 = *(v134 + 16);
        sub_224DAC6D8();

        if (v136)
        {
          break;
        }

        sub_224A3311C(&v135, &unk_27D6F4700, &unk_224DB3A10);
        v32 = v29;
        v33 = v133;
        v31 = v49;
        v25 = v48;
        v22 = v47;
        v30 = v131;
        if ((v25 & 0x8000000000000000) == 0)
        {
          goto LABEL_9;
        }
      }

      v53 = sub_224A36F98(&v135, v137);
      MEMORY[0x28223BE20](v53);
      v115[-2] = v51;
      v115[-1] = v137;
      v54 = v126;
      v55 = sub_224D2700C(v126, sub_224D2EE74);
      v56 = v54;
      v57 = v127;
      sub_224A71DBC(v56, v127);
      if (v55)
      {
        v58 = v57;
        v59 = v125;
        v129 = *v124;
        v60 = v129(v57, 1, v125);
        v61 = *(v132 + OBJC_IVAR____TtC10ChronoCore15LocationService_graceState);
        v62 = *(v51 + 16);
        if (v60 != 1)
        {
          v115[0] = v62;
          v75 = v58;
          v76 = v123;
          sub_224A3796C(v75, v123, &qword_27D6F3948, v49);
          v77 = v76;
          v78 = v118;
          sub_224A3796C(v77, v118, &qword_27D6F3948, v49);
          swift_beginAccess();
          if (v129(v78, 1, v59) == 1)
          {

            sub_224A3311C(v78, &qword_27D6F3948, v49);
            v79 = *(v61 + 16);
            v80 = sub_224A3E7EC(v115[0]);
            v81 = v61;
            if (v82)
            {
              v83 = v80;
              v84 = *(v61 + 16);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v86 = *(v61 + 16);
              v138 = v86;
              *(v61 + 16) = 0x8000000000000000;
              v87 = v125;
              if (!isUniquelyReferenced_nonNull_native)
              {
                sub_224B29914();
                v86 = v138;
              }

              v88 = v116;
              (*(v120 + 32))(v116, *(v86 + 56) + *(v120 + 72) * v83, v87);
              sub_224B1E1D8(v83, v86);
              v89 = *(v81 + 16);
              *(v81 + 16) = v86;

              v90 = 0;
            }

            else
            {
              v90 = 1;
              v88 = v116;
              v87 = v125;
            }

            (*v122)(v88, v90, 1, v87);
            v105 = v88;
            v31 = v49;
            sub_224A3311C(v105, &qword_27D6F3948, v49);
            v57 = v127;
          }

          else
          {
            v129 = *v121;
            v129(v117, v78, v59);

            v93 = *(v61 + 16);
            v94 = swift_isUniquelyReferenced_nonNull_native();
            v138 = *(v61 + 16);
            v95 = v138;
            *(v61 + 16) = 0x8000000000000000;
            v96 = sub_224A3E7EC(v115[0]);
            v98 = v95[2];
            v99 = (v97 & 1) == 0;
            v100 = __OFADD__(v98, v99);
            v101 = v98 + v99;
            if (v100)
            {
              goto LABEL_54;
            }

            v102 = v97;
            v103 = v61;
            if (v95[3] >= v101)
            {
              if ((v94 & 1) == 0)
              {
                v114 = v96;
                sub_224B29914();
                v96 = v114;
              }
            }

            else
            {
              sub_224B180B4(v101, v94);
              v96 = sub_224A3E7EC(v115[0]);
              if ((v102 & 1) != (v104 & 1))
              {
                goto LABEL_56;
              }
            }

            v106 = v125;
            v107 = v120;
            v57 = v127;
            v108 = v138;
            if (v102)
            {
              (*(v120 + 40))(v138[7] + *(v120 + 72) * v96, v117, v125);
            }

            else
            {
              v138[(v96 >> 6) + 8] |= 1 << v96;
              v109 = v115[0];
              *(v108[6] + 8 * v96) = v115[0];
              v129(v108[7] + *(v107 + 72) * v96, v117, v106);
              v110 = v108[2];
              v100 = __OFADD__(v110, 1);
              v111 = v110 + 1;
              if (v100)
              {
                goto LABEL_55;
              }

              v108[2] = v111;
              v112 = v109;
            }

            v31 = v49;
            v113 = *(v103 + 16);
            *(v103 + 16) = v108;
          }

          v25 = v48;
          swift_endAccess();

          sub_224A3311C(v123, &qword_27D6F3948, v31);
          LODWORD(v129) = 1;
          goto LABEL_49;
        }

        swift_beginAccess();
        v63 = *(v61 + 16);

        v64 = sub_224A3E7EC(v62);
        v65 = v61;
        if (v66)
        {
          v67 = v64;
          v68 = *(v61 + 16);
          v69 = swift_isUniquelyReferenced_nonNull_native();
          v70 = *(v61 + 16);
          v138 = v70;
          *(v61 + 16) = 0x8000000000000000;
          v71 = v125;
          if (!v69)
          {
            sub_224B29914();
            v70 = v138;
          }

          v72 = v119;
          (*(v120 + 32))(v119, *(v70 + 56) + *(v120 + 72) * v67, v71);
          sub_224B1E1D8(v67, v70);
          v73 = *(v65 + 16);
          *(v65 + 16) = v70;

          v74 = 0;
        }

        else
        {
          v74 = 1;
          v72 = v119;
          v71 = v125;
        }

        v91 = *v122;
        LODWORD(v129) = 1;
        v91(v72, v74, 1, v71);
        v92 = v72;
        v31 = v49;
        sub_224A3311C(v92, &qword_27D6F3948, v49);
        swift_endAccess();

        v57 = v127;
      }

      else
      {

        v31 = v49;
      }

      v25 = v48;
LABEL_49:
      v22 = v47;
      sub_224A3311C(v57, &qword_27D6F3948, v31);
      __swift_destroy_boxed_opaque_existential_1(v137);
      v30 = v131;
      v24 = v133;
      continue;
    }

    break;
  }

LABEL_9:
  v34 = v32;
  v35 = v33;
  v29 = v32;
  if (v33)
  {
LABEL_13:
    v36 = (v35 - 1) & v35;
    v37 = (v29 << 9) | (8 * __clz(__rbit64(v35)));
    v38 = *(v25 + 56);
    v39 = *(*(v25 + 48) + v37);
    v40 = v25;
    v41 = v31;
    v42 = *(v38 + v37);
    v43 = v39;
    v134 = v42;
    v31 = v41;
    v25 = v40;
    v22 = v130;

    if (v43)
    {
      goto LABEL_17;
    }

LABEL_50:
    sub_224A3B7E4();
    if (v129)
    {
      sub_224A83EBC();
      sub_224A843F0();
    }
  }

  else
  {
    while (1)
    {
      v29 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v29 >= v30)
      {
        goto LABEL_50;
      }

      v35 = *(v22 + 8 * v29);
      ++v34;
      if (v35)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    sub_224DAF538();
    sub_224DAFDD8();
    __break(1u);
  }
}

uint64_t sub_224D29AC8(uint64_t a1, uint64_t a2)
{
  sub_224A3317C(a2, v6);
  v3 = OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_ext;
  swift_beginAccess();
  sub_224A3796C(a1 + v3, v5, &unk_27D6F4700, &unk_224DB3A10);
  swift_beginAccess();
  sub_224C4D398(v6, a1 + v3, &unk_27D6F4700, &unk_224DB3A10);
  swift_endAccess();
  sub_224D25314(v5);
  sub_224A3311C(v5, &unk_27D6F4700, &unk_224DB3A10);
  return sub_224A3311C(v6, &unk_27D6F4700, &unk_224DB3A10);
}

uint64_t sub_224D29BA0(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3948, &qword_224DB5C10);
  v5 = *(*(v4 - 8) + 64);
  result = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v30 - v7;
  if ((*(a1 + OBJC_IVAR____TtC10ChronoCore15LocationService_invalidated) & 1) == 0)
  {
    v9 = OBJC_IVAR____TtC10ChronoCore15LocationService_extInfoByIdentifier;
    swift_beginAccess();
    if (sub_224A71E2C(a2, *(a1 + v9), sub_224A3E7EC, type metadata accessor for ExtensionInfo))
    {
      swift_endAccess();
    }

    else
    {
      swift_endAccess();
      v10 = sub_224DAC378();
      (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
      v11 = type metadata accessor for ExtensionInfo(0);
      v12 = *(v11 + 48);
      v13 = *(v11 + 52);
      swift_allocObject();
      v14 = a2;

      v15 = sub_224D2EC44(v14, a1, v8);

      v16 = *(v15 + 16);
      swift_beginAccess();
      v17 = *(a1 + v9);
      if ((v17 & 0xC000000000000001) != 0)
      {
        if (v17 < 0)
        {
          v18 = *(a1 + v9);
        }

        else
        {
          v18 = v17 & 0xFFFFFFFFFFFFFF8;
        }

        swift_retain_n();
        v19 = v16;
        result = sub_224DAF838();
        if (__OFADD__(result, 1))
        {
          __break(1u);
          return result;
        }

        *(a1 + v9) = sub_224D2CDF0(v18, result + 1, &qword_27D6F3940, &qword_224DB4740, type metadata accessor for ExtensionInfo, sub_224B19B38);
      }

      else
      {
        v20 = *(a1 + v9);
        swift_retain_n();
        v21 = v16;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v30 = *(a1 + v9);
      sub_224B237E0(v15, v16, isUniquelyReferenced_nonNull_native);
      *(a1 + v9) = v30;

      swift_endAccess();
      if (qword_281351430 != -1)
      {
        swift_once();
      }

      v23 = sub_224DAB258();
      __swift_project_value_buffer(v23, qword_281364D60);

      v24 = sub_224DAB228();
      v25 = sub_224DAF2A8();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        *v26 = 138543362;
        v28 = *(v15 + 16);
        *(v26 + 4) = v28;
        *v27 = v28;
        v29 = v28;
        _os_log_impl(&dword_224A2F000, v24, v25, "[ext:%{public}@] started tracking", v26, 0xCu);
        sub_224A3311C(v27, &unk_27D6F69F0, &unk_224DB3900);
        MEMORY[0x22AA5EED0](v27, -1, -1);
        MEMORY[0x22AA5EED0](v26, -1, -1);
      }
    }

    sub_224D274B0();
  }

  return result;
}

uint64_t sub_224D29F5C(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = *(result + OBJC_IVAR____TtC10ChronoCore15LocationService_lock);
    v5 = *(v4 + 16);

    os_unfair_lock_lock(v5);
    sub_224D2A014(v3, a1);
    os_unfair_lock_unlock(*(v4 + 16));
  }

  return result;
}

uint64_t sub_224D2A014(uint64_t a1, uint64_t a2)
{
  v4 = sub_224DAC378();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v4);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(a1 + OBJC_IVAR____TtC10ChronoCore15LocationService_invalidated) & 1) == 0)
  {
    v10 = *(a1 + OBJC_IVAR____TtC10ChronoCore15LocationService_graceTimer);
    if (v10 && v10 == a2)
    {
      v12 = result;
      if (qword_281351430 != -1)
      {
        swift_once();
      }

      v13 = sub_224DAB258();
      __swift_project_value_buffer(v13, qword_281364D60);
      v14 = sub_224DAB228();
      v15 = sub_224DAF278();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_224A2F000, v14, v15, "[service] scheduled timeout fired", v16, 2u);
        MEMORY[0x22AA5EED0](v16, -1, -1);
      }

      sub_224DAC338();
      sub_224D2A1DC(v9);
      return (*(v5 + 8))(v9, v12);
    }
  }

  return result;
}

uint64_t sub_224D2A1DC(uint64_t a1)
{
  v2 = v1;
  v131 = a1;
  v3 = sub_224DAC378();
  v127 = *(v3 - 8);
  v4 = *(v127 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v118 = v112 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v113 = v112 - v7;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6938, &qword_224DC0A70);
  v8 = *(*(v121 - 8) + 64);
  MEMORY[0x28223BE20](v121);
  v10 = v112 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3948, &qword_224DB5C10);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v114 = v112 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = v112 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v123 = v112 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v22 = v112 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v125 = v112 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v129 = v112 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v29 = v112 - v28;
  v30 = MEMORY[0x28223BE20](v27);
  v132 = v112 - v31;
  MEMORY[0x28223BE20](v30);
  v137 = v112 - v32;
  os_unfair_lock_assert_owner(*(*(v2 + OBJC_IVAR____TtC10ChronoCore15LocationService_lock) + 16));
  if ((*(v2 + OBJC_IVAR____TtC10ChronoCore15LocationService_invalidated) & 1) == 0)
  {
    v117 = v17;
    v122 = v10;
    v33 = OBJC_IVAR____TtC10ChronoCore15LocationService_graceTimer;
    if (*(v2 + OBJC_IVAR____TtC10ChronoCore15LocationService_graceTimer))
    {
      v34 = *(v2 + OBJC_IVAR____TtC10ChronoCore15LocationService_graceTimer);

      sub_224DAC5F8();

      v35 = *(v2 + v33);
    }

    v128 = v29;
    *(v2 + v33) = 0;

    v36 = OBJC_IVAR____TtC10ChronoCore15LocationService_extInfoByIdentifier;
    swift_beginAccess();
    v130 = v2;
    v37 = *(v2 + v36);
    v139 = v3;
    v116 = v22;
    if ((v37 & 0xC000000000000001) != 0)
    {
      v38 = 0;
      v39 = 0;
      v40 = 0;
      v41 = sub_224DAFA68() | 0x8000000000000000;
    }

    else
    {
      v42 = -1 << *(v37 + 32);
      v39 = ~v42;
      v38 = v37 + 64;
      v43 = -v42;
      if (v43 < 64)
      {
        v44 = ~(-1 << v43);
      }

      else
      {
        v44 = -1;
      }

      v40 = v44 & *(v37 + 64);
      v41 = v37;
    }

    v45 = 0;
    v124 = v39;
    v46 = (v39 + 64) >> 6;
    v138 = (v127 + 48);
    v133 = (v127 + 8);
    v126 = (v127 + 56);
    v119 = (v127 + 32);
    v112[1] = v127 + 40;
    v136 = v41;
    v135 = v38;
    for (i = v46; ; v46 = i)
    {
      if ((v41 & 0x8000000000000000) != 0)
      {
        v53 = sub_224DAFB18();
        if (!v53)
        {
          goto LABEL_69;
        }

        v55 = v54;
        *&v141 = v53;
        sub_224DAF538();
        swift_dynamicCast();
        v52 = v143;
        *&v141 = v55;
        type metadata accessor for ExtensionInfo(0);
        swift_dynamicCast();
        v51 = v143;
        v49 = v45;
        v140 = v40;
        if (!v52)
        {
LABEL_69:
          v110 = sub_224A3B7E4();
          return sub_224A843F0(v110);
        }
      }

      else
      {
        v47 = v45;
        v48 = v40;
        v49 = v45;
        if (!v40)
        {
          while (1)
          {
            v49 = v47 + 1;
            if (__OFADD__(v47, 1))
            {
              break;
            }

            if (v49 >= v46)
            {
              goto LABEL_69;
            }

            v48 = *(v38 + 8 * v49);
            ++v47;
            if (v48)
            {
              goto LABEL_18;
            }
          }

          __break(1u);
          goto LABEL_71;
        }

LABEL_18:
        v140 = (v48 - 1) & v48;
        v50 = (v49 << 9) | (8 * __clz(__rbit64(v48)));
        v51 = *(*(v41 + 56) + v50);
        v52 = *(*(v41 + 48) + v50);

        if (!v52)
        {
          goto LABEL_69;
        }
      }

      v56 = OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_grace;
      swift_beginAccess();
      v57 = v137;
      sub_224A3796C(v51 + v56, v137, &qword_27D6F3948, &qword_224DB5C10);
      v58 = *v138;
      v59 = v139;
      if ((*v138)(v57, 1, v139) != 1)
      {
        break;
      }

      sub_224A3311C(v57, &qword_27D6F3948, &qword_224DB5C10);
      v45 = v49;
      v40 = v140;
      v41 = v136;
LABEL_68:
      v38 = v135;
LABEL_12:
      ;
    }

    sub_224A3311C(v57, &qword_27D6F3948, &qword_224DB5C10);
    v60 = v132;
    sub_224A3796C(v51 + v56, v132, &qword_27D6F3948, &qword_224DB5C10);
    if (v58(v60, 1, v59) == 1)
    {
      goto LABEL_74;
    }

    sub_224A83A44(&qword_281350DF0, MEMORY[0x277CF9A10]);
    v61 = sub_224DAEDB8();
    v62 = v60;
    v63 = v61;
    v64 = *v133;
    (*v133)(v62, v59);
    if (v63)
    {

      v45 = v49;
      v40 = v140;
      v41 = v136;
      v38 = v135;
      goto LABEL_12;
    }

    v120 = v64;
    v65 = OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_ext;
    swift_beginAccess();
    sub_224A3796C(v51 + v65, &v141, &unk_27D6F4700, &unk_224DB3A10);
    if (v142)
    {
      sub_224A36F98(&v141, &v143);
      __swift_project_boxed_opaque_existential_1(&v143, v144);
      if (sub_224DAE278())
      {
        v59 = v139;
        v66 = v129;
        if (*(v51 + 48))
        {
          sub_224DAC2E8();
          (*v126)(v66, 0, 1, v59);
        }

        else
        {
          sub_224A3796C(v51 + v56, v129, &qword_27D6F3948, &qword_224DB5C10);
        }
      }

      else
      {
        v66 = v129;
        v59 = v139;
        (*v126)(v129, 1, 1, v139);
      }

      __swift_destroy_boxed_opaque_existential_1(&v143);
    }

    else
    {
      sub_224A3311C(&v141, &unk_27D6F4700, &unk_224DB3A10);
      v66 = v129;
      sub_224A3796C(v51 + v56, v129, &qword_27D6F3948, &qword_224DB5C10);
    }

    *(v51 + 32) = 0;
    sub_224D263EC();
    v67 = *(v51 + 32);
    *(v51 + 32) = 2;
    if ((v67 & 1) == 0)
    {
      v72 = v128;
      sub_224A71DBC(v66, v128);
LABEL_67:
      sub_224A6F4FC(v51);

      sub_224A3311C(v72, &qword_27D6F3948, &qword_224DB5C10);
      v45 = v49;
      v40 = v140;
      v41 = v136;
      goto LABEL_68;
    }

    sub_224A6FDF8();
    sub_224A3796C(v51 + v65, &v141, &unk_27D6F4700, &unk_224DB3A10);
    if (v142)
    {
      sub_224A36F98(&v141, &v143);
      __swift_project_boxed_opaque_existential_1(&v143, v144);
      v68 = sub_224DAE278();
      v69 = v128;
      if (v68)
      {
        v59 = v139;
        v70 = v122;
        v71 = v125;
        if (*(v51 + 48))
        {
          sub_224DAC2E8();
          (*v126)(v71, 0, 1, v59);
        }

        else
        {
          sub_224A3796C(v51 + v56, v125, &qword_27D6F3948, &qword_224DB5C10);
        }

        __swift_destroy_boxed_opaque_existential_1(&v143);
      }

      else
      {
        v71 = v125;
        v59 = v139;
        (*v126)(v125, 1, 1, v139);
        __swift_destroy_boxed_opaque_existential_1(&v143);
        v70 = v122;
      }
    }

    else
    {
      sub_224A3311C(&v141, &unk_27D6F4700, &unk_224DB3A10);
      v71 = v125;
      sub_224A3796C(v51 + v56, v125, &qword_27D6F3948, &qword_224DB5C10);
      v70 = v122;
      v69 = v128;
    }

    sub_224A3796C(v71, v69, &qword_27D6F3948, &qword_224DB5C10);
    v73 = v71;
    v74 = *(v121 + 48);
    v75 = v129;
    sub_224A3796C(v129, v70, &qword_27D6F3948, &qword_224DB5C10);
    v115 = v74;
    sub_224A3796C(v73, v70 + v74, &qword_27D6F3948, &qword_224DB5C10);
    if (v58(v70, 1, v59) == 1)
    {
      sub_224A3311C(v73, &qword_27D6F3948, &qword_224DB5C10);
      sub_224A3311C(v75, &qword_27D6F3948, &qword_224DB5C10);
      v76 = v58(v70 + v115, 1, v59);
      v72 = v128;
      v77 = v130;
      if (v76 == 1)
      {
        sub_224A3311C(v70, &qword_27D6F3948, &qword_224DB5C10);
        goto LABEL_67;
      }
    }

    else
    {
      v78 = v116;
      sub_224A3796C(v70, v116, &qword_27D6F3948, &qword_224DB5C10);
      v79 = v115;
      if (v58(v70 + v115, 1, v59) != 1)
      {
        v100 = v70 + v79;
        v101 = v113;
        (*v119)(v113, v100, v59);
        sub_224A83A44(&unk_281350DE0, MEMORY[0x277CF9A10]);
        v102 = sub_224DAEDD8();
        v103 = v101;
        v104 = v120;
        v120(v103, v59);
        sub_224A3311C(v125, &qword_27D6F3948, &qword_224DB5C10);
        sub_224A3311C(v129, &qword_27D6F3948, &qword_224DB5C10);
        v104(v78, v59);
        sub_224A3311C(v122, &qword_27D6F3948, &qword_224DB5C10);
        v72 = v128;
        v77 = v130;
        if (v102)
        {
          goto LABEL_67;
        }

LABEL_48:
        v80 = *(v77 + OBJC_IVAR____TtC10ChronoCore15LocationService_graceState);
        v120 = *(v51 + 16);
        v81 = v123;
        sub_224A3796C(v72, v123, &qword_27D6F3948, &qword_224DB5C10);
        v82 = v81;
        v83 = v117;
        sub_224A3796C(v82, v117, &qword_27D6F3948, &qword_224DB5C10);
        swift_beginAccess();
        if (v58(v83, 1, v59) == 1)
        {

          sub_224A3311C(v83, &qword_27D6F3948, &qword_224DB5C10);
          v84 = v114;
          sub_224B0E020(v120, v114);
          sub_224A3311C(v84, &qword_27D6F3948, &qword_224DB5C10);
LABEL_66:
          swift_endAccess();

          sub_224A3311C(v123, &qword_27D6F3948, &qword_224DB5C10);
          sub_224A83EBC();
          goto LABEL_67;
        }

        v85 = *v119;
        (*v119)(v118, v83, v59);

        v86 = *(v80 + 16);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v88 = v80;
        v89 = *(v80 + 16);
        *&v141 = v89;
        *(v88 + 16) = 0x8000000000000000;
        v90 = v120;
        v92 = sub_224A3E7EC(v120);
        v93 = *(v89 + 16);
        v94 = (v91 & 1) == 0;
        v95 = v93 + v94;
        if (__OFADD__(v93, v94))
        {
          goto LABEL_72;
        }

        v96 = v91;
        if (*(v89 + 24) < v95)
        {
          sub_224B180B4(v95, isUniquelyReferenced_nonNull_native);
          v97 = sub_224A3E7EC(v90);
          if ((v96 & 1) != (v98 & 1))
          {
            goto LABEL_75;
          }

          v92 = v97;
          v99 = v141;
          if ((v96 & 1) == 0)
          {
            goto LABEL_63;
          }

LABEL_60:
          (*(v127 + 40))(v99[7] + *(v127 + 72) * v92, v118, v139);
LABEL_65:
          v72 = v128;
          v109 = *(v88 + 16);
          *(v88 + 16) = v99;

          goto LABEL_66;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          v99 = v141;
          if (v91)
          {
            goto LABEL_60;
          }
        }

        else
        {
          sub_224B29914();
          v99 = v141;
          if (v96)
          {
            goto LABEL_60;
          }
        }

LABEL_63:
        v99[(v92 >> 6) + 8] |= 1 << v92;
        *(v99[6] + 8 * v92) = v90;
        v85((v99[7] + *(v127 + 72) * v92), v118, v139);
        v105 = v99[2];
        v106 = __OFADD__(v105, 1);
        v107 = v105 + 1;
        if (v106)
        {
          goto LABEL_73;
        }

        v99[2] = v107;
        v108 = v90;
        goto LABEL_65;
      }

      sub_224A3311C(v125, &qword_27D6F3948, &qword_224DB5C10);
      sub_224A3311C(v129, &qword_27D6F3948, &qword_224DB5C10);
      v120(v78, v59);
      v72 = v128;
      v77 = v130;
    }

    sub_224A3311C(v70, &qword_27D6F6938, &qword_224DC0A70);
    goto LABEL_48;
  }

LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  sub_224DAF538();
  result = sub_224DAFDD8();
  __break(1u);
  return result;
}

uint64_t sub_224D2B1D4(uint64_t a1, uint64_t a2, void *a3, const char *a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    v9 = *(result + OBJC_IVAR____TtC10ChronoCore15LocationService_lock);
    os_unfair_lock_lock(*(v9 + 16));
    sub_224D2B290(v8, a2, a3, a4);
    os_unfair_lock_unlock(*(v9 + 16));
  }

  return result;
}

void sub_224D2B290(uint64_t a1, uint64_t a2, void *a3, const char *a4)
{
  if (*(a1 + OBJC_IVAR____TtC10ChronoCore15LocationService_invalidated))
  {
    return;
  }

  v8 = *(a2 + 16);
  v9 = OBJC_IVAR____TtC10ChronoCore15LocationService_extInfoByIdentifier;
  swift_beginAccess();
  v10 = sub_224A71E2C(v8, *(a1 + v9), sub_224A3E7EC, type metadata accessor for ExtensionInfo);
  swift_endAccess();
  if (!v10)
  {
    __break(1u);
    return;
  }

  if (v10 == a2)
  {
    v11 = *(a2 + *a3);
    if (v11)
    {
      v12 = v11 - 1;
      *(a2 + *a3) = v12;
      if (*(a2 + 32) == 2)
      {
        sub_224A6FDF8();
      }

      else if (!v12)
      {
        *(a2 + 32) = 1;
      }

      if (qword_281351430 == -1)
      {
        goto LABEL_10;
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
  swift_once();
LABEL_10:
  v13 = sub_224DAB258();
  __swift_project_value_buffer(v13, qword_281364D60);

  v14 = sub_224DAB228();
  v15 = sub_224DAF278();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 138543362;
    *(v16 + 4) = v8;
    *v17 = v8;
    v18 = v8;
    _os_log_impl(&dword_224A2F000, v14, v15, a4, v16, 0xCu);
    sub_224A3311C(v17, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v17, -1, -1);
    MEMORY[0x22AA5EED0](v16, -1, -1);
  }

  sub_224A6F4FC(a2);
}

uint64_t sub_224D2B4CC(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = *(result + OBJC_IVAR____TtC10ChronoCore15LocationService_lock);
    os_unfair_lock_lock(*(v4 + 16));
    sub_224D2B9EC(v3, a1);
    os_unfair_lock_unlock(*(v4 + 16));
    v5 = *(v3 + OBJC_IVAR____TtC10ChronoCore15LocationService__authPermissionsChangedPublisher);
    sub_224DAB348();
  }

  return result;
}

uint64_t sub_224D2B584(uint64_t a1, char *a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_224D2B5E4(a2);
  }

  return result;
}

void sub_224D2B5E4(char *a1)
{
  os_unfair_lock_assert_owner(*(*(v1 + OBJC_IVAR____TtC10ChronoCore15LocationService_lock) + 16));
  if ((*(v1 + OBJC_IVAR____TtC10ChronoCore15LocationService_invalidated) & 1) == 0)
  {
    v3 = OBJC_IVAR____TtC10ChronoCore33_LocationAuthorizationMonitorImpl__assertionCount;
    if (*&a1[OBJC_IVAR____TtC10ChronoCore33_LocationAuthorizationMonitorImpl__assertionCount])
    {
      v4 = OBJC_IVAR____TtC10ChronoCore15LocationService_authMonitorByIdentifier;
      swift_beginAccess();
      v5 = *(v1 + v4);
      if (!*(v5 + 16) || (v6 = OBJC_IVAR____TtC10ChronoCore33_LocationAuthorizationMonitorImpl_containerIdentifier, v7 = sub_224A89A08(&a1[OBJC_IVAR____TtC10ChronoCore33_LocationAuthorizationMonitorImpl_containerIdentifier]), (v8 & 1) == 0))
      {
        swift_endAccess();
        __break(1u);

        os_unfair_lock_unlock(*(v5 + 16));
        __break(1u);
        return;
      }

      v9 = *(*(v5 + 56) + 8 * v7);
      swift_endAccess();
      if (v9 == a1)
      {
        v10 = *&v3[a1];
        v11 = v10 != 0;
        v12 = v10 - 1;
        if (v11)
        {
          *&v3[a1] = v12;
          if (!v12)
          {
            v23 = *&a1[OBJC_IVAR____TtC10ChronoCore33_LocationAuthorizationMonitorImpl_lock];
            os_unfair_lock_lock(*(v23 + 16));
            sub_224DA7818(a1);
            os_unfair_lock_unlock(*(v23 + 16));
            swift_beginAccess();
            v24 = sub_224B3E35C(&a1[v6]);
            swift_endAccess();

            if (qword_281351430 != -1)
            {
              swift_once();
            }

            v25 = sub_224DAB258();
            __swift_project_value_buffer(v25, qword_281364D60);
            v26 = a1;
            v15 = sub_224DAB228();
            v16 = sub_224DAF2A8();

            if (!os_log_type_enabled(v15, v16))
            {
              goto LABEL_17;
            }

            v17 = swift_slowAlloc();
            v18 = swift_slowAlloc();
            v30[0] = v18;
            *v17 = 136446210;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
            sub_224A33088(&qword_281351940, &qword_27D6F3900, &unk_224DB4640);
            v27 = sub_224DAFD28();
            v29 = sub_224A33F74(v27, v28, v30);

            *(v17 + 4) = v29;
            v22 = "[mon:%{public}s] stopped monitoring location authorization";
            goto LABEL_16;
          }

          if (qword_281351430 == -1)
          {
LABEL_10:
            v13 = sub_224DAB258();
            __swift_project_value_buffer(v13, qword_281364D60);
            v14 = a1;
            v15 = sub_224DAB228();
            v16 = sub_224DAF278();

            if (!os_log_type_enabled(v15, v16))
            {
LABEL_17:

              return;
            }

            v17 = swift_slowAlloc();
            v18 = swift_slowAlloc();
            v30[0] = v18;
            *v17 = 136446210;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
            sub_224A33088(&qword_281351940, &qword_27D6F3900, &unk_224DB4640);
            v19 = sub_224DAFD28();
            v21 = sub_224A33F74(v19, v20, v30);

            *(v17 + 4) = v21;
            v22 = "[mon:%{public}s] removed refcount to location authorization monitor";
LABEL_16:
            _os_log_impl(&dword_224A2F000, v15, v16, v22, v17, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v18);
            MEMORY[0x22AA5EED0](v18, -1, -1);
            MEMORY[0x22AA5EED0](v17, -1, -1);
            goto LABEL_17;
          }

LABEL_22:
          swift_once();
          goto LABEL_10;
        }

LABEL_21:
        __break(1u);
        goto LABEL_22;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_21;
  }
}

uint64_t sub_224D2B9EC(uint64_t a1, uint64_t a2)
{
  v34 = a2;
  v3 = OBJC_IVAR____TtC10ChronoCore15LocationService_extInfoByIdentifier;
  swift_beginAccess();
  v4 = *(a1 + v3);
  if ((v4 & 0xC000000000000001) != 0)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = sub_224DAFA68() | 0x8000000000000000;
  }

  else
  {
    v9 = -1 << *(v4 + 32);
    v6 = ~v9;
    v5 = v4 + 64;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v7 = v11 & *(v4 + 64);
    v8 = v4;
  }

  v13 = 0;
  while ((v8 & 0x8000000000000000) != 0)
  {
    v21 = sub_224DAFB18();
    if (!v21)
    {
      return sub_224A3B7E4();
    }

    v23 = v22;
    *&v30 = v21;
    sub_224DAF538();
    swift_dynamicCast();
    v20 = v32[0];
    *&v30 = v23;
    type metadata accessor for ExtensionInfo(0);
    swift_dynamicCast();
    v19 = v32[0];
    v16 = v13;
    v17 = v7;
    if (!v20)
    {
      return sub_224A3B7E4();
    }

LABEL_21:

    v24 = OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_ext;
    swift_beginAccess();
    sub_224A3796C(v19 + v24, &v30, &unk_27D6F4700, &unk_224DB3A10);
    if (v31)
    {
      sub_224A36F98(&v30, v32);
      __swift_project_boxed_opaque_existential_1(v32, v33);
      if (sub_224DAE278())
      {
        __swift_project_boxed_opaque_existential_1(v32, v33);
        v25 = sub_224DAE328();
        v27 = v26;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
        if (v25 == sub_224DA9FE8() && v27 == v28)
        {
        }

        else
        {
          v29 = sub_224DAFD88();

          if ((v29 & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        sub_224D27494(0xD00000000000002ALL, 0x8000000224DCF1B0);
      }

LABEL_10:

      result = __swift_destroy_boxed_opaque_existential_1(v32);
      goto LABEL_11;
    }

    result = sub_224A3311C(&v30, &unk_27D6F4700, &unk_224DB3A10);
LABEL_11:
    v13 = v16;
    v7 = v17;
  }

  v14 = v13;
  v15 = v7;
  v16 = v13;
  if (v7)
  {
LABEL_17:
    v17 = (v15 - 1) & v15;
    v18 = (v16 << 9) | (8 * __clz(__rbit64(v15)));
    v19 = *(*(v8 + 56) + v18);
    v20 = *(*(v8 + 48) + v18);

    if (!v20)
    {
      return sub_224A3B7E4();
    }

    goto LABEL_21;
  }

  while (1)
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v16 >= ((v6 + 64) >> 6))
    {
      return sub_224A3B7E4();
    }

    v15 = *(v5 + 8 * v16);
    ++v14;
    if (v15)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

void sub_224D2BD4C(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v48 = a2;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v3 = *(v54 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v54);
  v6 = &v47 - v5;
  v60 = MEMORY[0x277D84F90];
  v7 = OBJC_IVAR____TtC10ChronoCore15LocationService_extInfoByIdentifier;
  swift_beginAccess();
  v55 = a1;
  v8 = *(a1 + v7);
  if ((v8 & 0xC000000000000001) != 0)
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = sub_224DAFA68() | 0x8000000000000000;
  }

  else
  {
    v13 = -1 << *(v8 + 32);
    v10 = ~v13;
    v9 = v8 + 64;
    v14 = -v13;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v11 = v15 & *(v8 + 64);
    v12 = v8;
  }

  v16 = 0;
  v47 = v10;
  v17 = (v10 + 64) >> 6;
  v50 = (v3 + 8);
  v49 = MEMORY[0x277D84F90];
  v52 = v12;
  v53 = v9;
  v51 = v17;
LABEL_8:
  v18 = v16;
  v19 = v11;
  if ((v12 & 0x8000000000000000) == 0)
  {
    while (1)
    {
      v25 = v18;
      v26 = v19;
      v16 = v18;
      if (!v19)
      {
        while (1)
        {
          v16 = v25 + 1;
          if (__OFADD__(v25, 1))
          {
            break;
          }

          if (v16 >= v17)
          {
            goto LABEL_33;
          }

          v26 = *(v9 + 8 * v16);
          ++v25;
          if (v26)
          {
            goto LABEL_18;
          }
        }

        __break(1u);
        return;
      }

LABEL_18:
      v56 = (v26 - 1) & v26;
      v27 = (v16 << 9) | (8 * __clz(__rbit64(v26)));
      v24 = *(*(v12 + 56) + v27);
      v23 = *(*(v12 + 48) + v27);

      if (!v23)
      {
        goto LABEL_33;
      }

LABEL_19:

      sub_224D27478();
      v28 = OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_ext;
      swift_beginAccess();
      sub_224A3796C(v24 + v28, v58, &unk_27D6F4700, &unk_224DB3A10);
      v29 = v59;
      if (!v59)
      {
        break;
      }

      v30 = __swift_project_boxed_opaque_existential_1(v58, v59);
      v31 = v6;
      v32 = *(v29 - 8);
      v33 = *(v32 + 64);
      MEMORY[0x28223BE20](v30);
      v35 = &v47 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v32 + 16))(v35);
      sub_224A3311C(v58, &unk_27D6F4700, &unk_224DB3A10);
      sub_224DAE328();
      (*(v32 + 8))(v35, v29);
      v6 = v31;
      sub_224DA9FF8();
      v36 = OBJC_IVAR____TtC10ChronoCore15LocationService_authMonitorByIdentifier;
      v37 = v55;
      swift_beginAccess();
      v38 = *(v37 + v36);
      if (*(v38 + 16) && (v39 = sub_224A89A08(v31), (v40 & 1) != 0))
      {
        v41 = *(*(v38 + 56) + 8 * v39);
        swift_endAccess();
        v42 = *v50;
        v43 = v41;
        v42(v31, v54);
        v44 = *&v43[OBJC_IVAR____TtC10ChronoCore33_LocationAuthorizationMonitorImpl_lock];
        os_unfair_lock_lock(*(v44 + 16));
        v45 = v43[OBJC_IVAR____TtC10ChronoCore33_LocationAuthorizationMonitorImpl_status];
        v12 = v52;
        v9 = v53;
        v17 = v51;
        if (v45 == 2)
        {
          os_unfair_lock_unlock(*(v44 + 16));
        }

        else
        {
          os_unfair_lock_unlock(*(v44 + 16));
          if (v45 & 1) != 0 && (sub_224D27494(0x2079646165726C61, 0xEF656C6269736976))
          {
            v46 = *(v24 + 16);
            MEMORY[0x22AA5D350](v46);
            if (*((v60 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v60 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v49 = v46;
              sub_224DAF038();
            }

            sub_224DAF078();

            v49 = v60;
            v11 = v56;
            goto LABEL_8;
          }
        }

LABEL_28:
        v18 = v16;
        v19 = v56;
        if ((v12 & 0x8000000000000000) != 0)
        {
          goto LABEL_11;
        }
      }

      else
      {
        swift_endAccess();

        (*v50)(v31, v54);
        v18 = v16;
        v19 = v56;
        v12 = v52;
        v9 = v53;
        v17 = v51;
        if ((v52 & 0x8000000000000000) != 0)
        {
          goto LABEL_11;
        }
      }
    }

    sub_224A3311C(v58, &unk_27D6F4700, &unk_224DB3A10);
    goto LABEL_28;
  }

LABEL_11:
  v20 = sub_224DAFB18();
  if (v20)
  {
    v22 = v21;
    v57 = v20;
    sub_224DAF538();
    swift_dynamicCast();
    v23 = v58[0];
    v57 = v22;
    type metadata accessor for ExtensionInfo(0);
    swift_dynamicCast();
    v24 = v58[0];
    v16 = v18;
    v56 = v19;
    if (v23)
    {
      goto LABEL_19;
    }
  }

LABEL_33:
  sub_224A3B7E4();
  *v48 = v49;
}

uint64_t sub_224D2C330()
{
  v1 = *(v0 + OBJC_IVAR____TtC10ChronoCore15LocationService_lock);
  os_unfair_lock_lock(*(v1 + 16));
  sub_224D2C3A4(v0, &v3);
  os_unfair_lock_unlock(*(v1 + 16));
  return v3;
}

uint64_t sub_224D2C3A4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_224DAC378();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v4);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + OBJC_IVAR____TtC10ChronoCore15LocationService_invalidated))
  {
    v10 = 0x6164696C61766E69;
    v11 = 0xEB00000000646574;
  }

  else
  {
    v39 = 0x203A656D6974;
    v40 = 0xE600000000000000;
    sub_224DAC338();
    sub_224A83A44(&unk_281350DD0, MEMORY[0x277CF9A10]);
    v12 = sub_224DAFD28();
    MEMORY[0x22AA5D210](v12);

    (*(v5 + 8))(v9, v4);
    MEMORY[0x22AA5D210](10, 0xE100000000000000);
    if (*(a1 + OBJC_IVAR____TtC10ChronoCore15LocationService_graceStoreFlushPending))
    {
      v13 = 0x3A676E69646E6570;
    }

    else
    {
      v13 = 0x3A64656873756C66;
    }

    MEMORY[0x22AA5D210](v13, 0xE900000000000020);

    v15 = v39;
    v14 = v40;
    v39 = *(a1 + OBJC_IVAR____TtC10ChronoCore15LocationService_graceState);
    type metadata accessor for LocationGraceRegistry();
    sub_224A83A44(qword_281358688, type metadata accessor for LocationGraceRegistry);
    v16 = sub_224DAFD28();
    v18 = v17;
    v39 = v15;
    v40 = v14;

    MEMORY[0x22AA5D210](v16, v18);

    v41 = v39;
    v42 = v40;
    v19 = OBJC_IVAR____TtC10ChronoCore15LocationService_extInfoByIdentifier;
    swift_beginAccess();
    v20 = *(a1 + v19);

    v22 = sub_224D24720(v21);

    v24 = sub_224D24A88(v23);
    sub_224D24454(v24);
    v26 = v25;

    if (*(v26 + 16))
    {
      v37 = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4710, &unk_224DB65E0);
      sub_224A33088(&qword_281350BA0, &qword_27D6F4710, &unk_224DB65E0);
      v27 = sub_224DAEDA8();
      v29 = v28;

      v37 = 0xD000000000000012;
      v38 = 0x8000000224DCF190;
      MEMORY[0x22AA5D210](v27, v29);

      MEMORY[0x22AA5D210](v37, v38);
    }

    v30 = sub_224D24D20(v22);
    sub_224D24454(v30);
    v32 = v31;

    if (*(v32 + 16))
    {
      v37 = v32;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4710, &unk_224DB65E0);
      sub_224A33088(&qword_281350BA0, &qword_27D6F4710, &unk_224DB65E0);
      v33 = sub_224DAEDA8();
      v35 = v34;

      v37 = 0xD000000000000013;
      v38 = 0x8000000224DCF170;
      MEMORY[0x22AA5D210](v33, v35);

      MEMORY[0x22AA5D210](v37, v38);
    }

    v10 = v41;
    v11 = v42;
  }

  *a2 = v10;
  a2[1] = v11;
  return result;
}

uint64_t sub_224D2C838()
{
  v2 = **v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6948, qword_224DC0A80);
  return sub_224DAEE28();
}

uint64_t sub_224D2C914@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_224D2C944(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3D20, &qword_224DB49C0);
    v2 = sub_224DAFBA8();
    v20 = v2;
    sub_224DAFA68();
    v3 = sub_224DAFB18();
    if (v3)
    {
      v4 = v3;
      sub_224DAE8A8();
      v5 = v4;
      do
      {
        v18 = v5;
        swift_dynamicCast();
        sub_224A3B79C(0, &qword_281350830, 0x277CFA358);
        swift_dynamicCast();
        v13 = *(v2 + 16);
        if (*(v2 + 24) <= v13)
        {
          sub_224B0F928(v13 + 1, 1);
        }

        v2 = v20;
        v6 = *(v20 + 40);
        result = sub_224DAF698();
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
        v5 = sub_224DAFB18();
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

uint64_t sub_224D2CB80(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3BF8, &qword_224DB48C8);
    v2 = sub_224DAFBA8();
    v20 = v2;
    sub_224DAFA68();
    v3 = sub_224DAFB18();
    if (v3)
    {
      v4 = v3;
      sub_224A3B79C(0, &qword_281350970, 0x277CFA418);
      v5 = v4;
      do
      {
        v18 = v5;
        swift_dynamicCast();
        type metadata accessor for WidgetRelevanceRefreshTask();
        swift_dynamicCast();
        v13 = *(v2 + 16);
        if (*(v2 + 24) <= v13)
        {
          sub_224B11970(v13 + 1, 1);
        }

        v2 = v20;
        v6 = *(v20 + 40);
        result = sub_224DAF698();
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
        v5 = sub_224DAFB18();
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

uint64_t sub_224D2CDF0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void (*a5)(void), void (*a6)(unint64_t, uint64_t))
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v8 = sub_224DAFBA8();
    v26 = v8;
    sub_224DAFA68();
    v9 = sub_224DAFB18();
    if (v9)
    {
      v10 = v9;
      sub_224DAF538();
      v11 = v10;
      do
      {
        v24 = v11;
        swift_dynamicCast();
        a5(0);
        swift_dynamicCast();
        v19 = *(v8 + 16);
        if (*(v8 + 24) <= v19)
        {
          a6(v19 + 1, 1);
        }

        v8 = v26;
        v12 = *(v26 + 40);
        result = sub_224DAF698();
        v14 = v26 + 64;
        v15 = -1 << *(v26 + 32);
        v16 = result & ~v15;
        v17 = v16 >> 6;
        if (((-1 << v16) & ~*(v26 + 64 + 8 * (v16 >> 6))) != 0)
        {
          v18 = __clz(__rbit64((-1 << v16) & ~*(v26 + 64 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v20 = 0;
          v21 = (63 - v15) >> 6;
          do
          {
            if (++v17 == v21 && (v20 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v22 = v17 == v21;
            if (v17 == v21)
            {
              v17 = 0;
            }

            v20 |= v22;
            v23 = *(v14 + 8 * v17);
          }

          while (v23 == -1);
          v18 = __clz(__rbit64(~v23)) + (v17 << 6);
        }

        *(v14 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
        *(*(v26 + 48) + 8 * v18) = v25;
        *(*(v26 + 56) + 8 * v18) = v24;
        ++*(v26 + 16);
        v11 = sub_224DAFB18();
      }

      while (v11);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F98];
  }

  return v8;
}

uint64_t sub_224D2D01C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3B20, &qword_224DB4838);
    v2 = sub_224DAFBA8();
    v20 = v2;
    sub_224DAFA68();
    v3 = sub_224DAFB18();
    if (v3)
    {
      v4 = v3;
      sub_224A3B79C(0, &qword_2813508E8, 0x277D7BC20);
      v5 = v4;
      do
      {
        v18 = v5;
        swift_dynamicCast();
        type metadata accessor for WidgetRendererSession();
        swift_dynamicCast();
        v13 = *(v2 + 16);
        if (*(v2 + 24) <= v13)
        {
          sub_224B18340(v13 + 1, 1);
        }

        v2 = v20;
        v6 = *(v20 + 40);
        result = sub_224DAF698();
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
        v5 = sub_224DAFB18();
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

uint64_t sub_224D2D28C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3AD8, &qword_224DB4810);
    v2 = sub_224DAFBA8();
    v20 = v2;
    sub_224DAFA68();
    v3 = sub_224DAFB18();
    if (v3)
    {
      v4 = v3;
      sub_224DAA0F8();
      v5 = v4;
      do
      {
        v18 = v5;
        swift_dynamicCast();
        type metadata accessor for ControlSession();
        swift_dynamicCast();
        v13 = *(v2 + 16);
        if (*(v2 + 24) <= v13)
        {
          sub_224B18B4C(v13 + 1, 1);
        }

        v2 = v20;
        v6 = *(v20 + 40);
        sub_224A83A44(&qword_2813518A8, MEMORY[0x277CF9FD8]);
        result = sub_224DAED88();
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
        v5 = sub_224DAFB18();
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

uint64_t sub_224D2D4FC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3AB8, &qword_224DB47F8);
    v2 = sub_224DAFBA8();
    v20 = v2;
    sub_224DAFA68();
    v3 = sub_224DAFB18();
    if (v3)
    {
      v4 = v3;
      sub_224DAA6D8();
      v5 = v4;
      do
      {
        v18 = v5;
        swift_dynamicCast();
        type metadata accessor for ActivityRendererSession();
        swift_dynamicCast();
        v13 = *(v2 + 16);
        if (*(v2 + 24) <= v13)
        {
          sub_224B18E44(v13 + 1, 1);
        }

        v2 = v20;
        v6 = *(v20 + 40);
        sub_224A83A44(&qword_2813517C8, MEMORY[0x277D7BB80]);
        result = sub_224DAED88();
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
        v5 = sub_224DAFB18();
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

uint64_t sub_224D2D820(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void (*a5)(void), void (*a6)(unint64_t, uint64_t))
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v7 = sub_224DAFBA8();
    v23 = v7;
    sub_224DAFA68();
    if (sub_224DAFB18())
    {
      type metadata accessor for EmptyKey();
      do
      {
        swift_dynamicCast();
        a5(0);
        swift_dynamicCast();
        v15 = *(v7 + 16);
        if (*(v7 + 24) <= v15)
        {
          a6(v15 + 1, 1);
        }

        v7 = v23;
        v8 = *(v23 + 40);
        sub_224DAFE68();
        result = sub_224DAFEA8();
        v10 = v23 + 64;
        v11 = -1 << *(v23 + 32);
        v12 = result & ~v11;
        v13 = v12 >> 6;
        if (((-1 << v12) & ~*(v23 + 64 + 8 * (v12 >> 6))) != 0)
        {
          v14 = __clz(__rbit64((-1 << v12) & ~*(v23 + 64 + 8 * (v12 >> 6)))) | v12 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v16 = 0;
          v17 = (63 - v11) >> 6;
          do
          {
            if (++v13 == v17 && (v16 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v18 = v13 == v17;
            if (v13 == v17)
            {
              v13 = 0;
            }

            v16 |= v18;
            v19 = *(v10 + 8 * v13);
          }

          while (v19 == -1);
          v14 = __clz(__rbit64(~v19)) + (v13 << 6);
        }

        *(v10 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
        *(*(v23 + 48) + 8 * v14) = v22;
        *(*(v23 + 56) + 8 * v14) = v21;
        ++*(v23 + 16);
      }

      while (sub_224DAFB18());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F98];
  }

  return v7;
}

uint64_t sub_224D2DA5C(uint64_t a1)
{
  v2 = a1;
  v49 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v36 = v4;
    v37 = v1;
    v35 = &v35;
    MEMORY[0x28223BE20](a1);
    v38 = &v35 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v38, v5);
    v39 = 0;
    v40 = v2;
    v6 = 0;
    v4 = v2 + 64;
    v7 = 1 << *(v2 + 32);
    v8 = -1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    v9 = v8 & *(v2 + 64);
    v10 = (v7 + 63) >> 6;
    v11 = &unk_27D6F4700;
    v12 = &unk_224DB3A10;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_13:
      v16 = v13 | (v6 << 6);
      v17 = *(v2 + 56);
      v45 = *(*(v2 + 48) + 8 * v16);
      v41 = v16;
      v18 = *(v17 + 8 * v16);
      v19 = OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_ext;
      swift_beginAccess();
      sub_224A3796C(v18 + v19, v46, v11, v12);
      v20 = v47;
      if (v47)
      {
        v42 = v48;
        v21 = __swift_project_boxed_opaque_existential_1(v46, v47);
        v43 = &v35;
        v22 = *(v20 - 8);
        v23 = *(v22 + 64);
        MEMORY[0x28223BE20](v21);
        v44 = v9;
        v25 = v12;
        v26 = v11;
        v27 = &v35 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v22 + 16))(v27);
        v45 = v45;

        sub_224A3311C(v46, v26, v25);
        LODWORD(v42) = sub_224DAE278();
        v28 = v27;
        v11 = v26;
        v12 = v25;
        v9 = v44;
        (*(v22 + 8))(v28, v20);
        v2 = v40;

        if ((v42 & 1) == 0)
        {
          *&v38[(v41 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v41;
          if (__OFADD__(v39++, 1))
          {
            __break(1u);
LABEL_18:
            result = sub_224B2EC7C(v38, v36, v39, v2);
            goto LABEL_19;
          }
        }
      }

      else
      {
        sub_224A3311C(v46, v11, v12);
      }
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_18;
      }

      v15 = *(v4 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
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

  v32 = swift_slowAlloc();
  sub_224D2E3F0(v32, v4, v2);
  v34 = v33;
  MEMORY[0x22AA5EED0](v32, -1, -1);
  result = v34;
LABEL_19:
  v31 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_224D2DE28(uint64_t a1)
{
  v2 = a1;
  v30 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v24 = v4;
    v25 = v1;
    v23 = &v23;
    MEMORY[0x28223BE20](a1);
    v26 = &v23 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v26, v5);
    v27 = 0;
    v6 = 0;
    v7 = 1 << *(v2 + 32);
    v8 = -1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    v9 = v8 & *(v2 + 64);
    v10 = (v7 + 63) >> 6;
    while (v9)
    {
      v11 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_12:
      v4 = v11 | (v6 << 6);
      v14 = *(*(v2 + 56) + 8 * v4);
      v15 = OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_ext;
      swift_beginAccess();
      sub_224A3796C(v14 + v15, v28, &unk_27D6F4700, &unk_224DB3A10);
      v16 = v29;
      sub_224A3311C(v28, &unk_27D6F4700, &unk_224DB3A10);
      if (!v16)
      {
        *&v26[(v4 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v4;
        if (__OFADD__(v27++, 1))
        {
          __break(1u);
LABEL_16:
          result = sub_224B2EC7C(v26, v24, v27, v2);
          goto LABEL_17;
        }
      }
    }

    v12 = v6;
    while (1)
    {
      v6 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_16;
      }

      v13 = *(v2 + 64 + 8 * v6);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v9 = (v13 - 1) & v13;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v20 = swift_slowAlloc();
  sub_224D2E6E8(v20, v4, v2);
  v22 = v21;
  MEMORY[0x22AA5EED0](v20, -1, -1);
  result = v22;
LABEL_17:
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_224D2E0B0(uint64_t a1)
{
  v2 = v1;
  v38 = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3948, &qword_224DB5C10);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v36 = v31 - v7;
  LOBYTE(v7) = *(a1 + 32);
  v8 = ((1 << v7) + 63) >> 6;
  if ((v7 & 0x3Fu) > 0xD)
  {
    goto LABEL_20;
  }

  while (1)
  {
    v32 = v8;
    v33 = v2;
    v31[1] = v31;
    MEMORY[0x28223BE20](v6);
    v34 = v31 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v34, v9);
    v35 = 0;
    v10 = 0;
    v8 = a1 + 64;
    v11 = 1 << *(a1 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(a1 + 64);
    v14 = (v11 + 63) >> 6;
    v2 = a1;
    while (v13)
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_12:
      v18 = v15 | (v10 << 6);
      v19 = *(*(v2 + 56) + 8 * v18);
      if (*(v19 + 40))
      {
        goto LABEL_15;
      }

      v20 = v2;
      v21 = OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_grace;
      v37 = v13;
      swift_beginAccess();
      v22 = v19 + v21;
      v2 = v20;
      a1 = v36;
      sub_224A3796C(v22, v36, &qword_27D6F3948, &qword_224DB5C10);
      v23 = sub_224DAC378();
      v24 = (*(*(v23 - 8) + 48))(a1, 1, v23);
      sub_224A3311C(a1, &qword_27D6F3948, &qword_224DB5C10);
      v13 = v37;
      if (v24 != 1)
      {
LABEL_15:
        *&v34[(v18 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v18;
        if (__OFADD__(v35++, 1))
        {
          __break(1u);
LABEL_17:
          result = sub_224B2EC7C(v34, v32, v35, v2);
          goto LABEL_18;
        }
      }
    }

    v16 = v10;
    while (1)
    {
      v10 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v10 >= v14)
      {
        goto LABEL_17;
      }

      v17 = *(v8 + 8 * v10);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_20:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v28 = swift_slowAlloc();
  sub_224D2E8A0(v28, v8, a1);
  v30 = v29;
  result = MEMORY[0x22AA5EED0](v28, -1, -1);
  if (!v2)
  {
    result = v30;
  }

LABEL_18:
  v27 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_224D2E3F0(void *a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      bzero(a1, 8 * a2);
    }

    v33 = a1;
    v34 = 0;
    v32 = a2;
    v6 = 0;
    v7 = a3 + 64;
    v8 = 1 << *(a3 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(a3 + 64);
    v11 = (v8 + 63) >> 6;
    v12 = &unk_27D6F4700;
    v35 = a3;
    while (v10)
    {
      v13 = __clz(__rbit64(v10));
      v43 = (v10 - 1) & v10;
LABEL_15:
      v16 = v13 | (v6 << 6);
      v17 = *(a3 + 56);
      v18 = *(*(a3 + 48) + 8 * v16);
      v36 = v16;
      v19 = *(v17 + 8 * v16);
      v20 = OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_ext;
      swift_beginAccess();
      sub_224A3796C(v19 + v20, v40, v12, &unk_224DB3A10);
      v21 = v41;
      if (v41)
      {
        v38 = v42;
        v22 = __swift_project_boxed_opaque_existential_1(v40, v41);
        v39 = &v31;
        v23 = v12;
        v24 = *(v21 - 8);
        v25 = *(v24 + 64);
        MEMORY[0x28223BE20](v22);
        v27 = &v31 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v24 + 16))(v27);
        v37 = v18;

        sub_224A3311C(v40, v23, &unk_224DB3A10);
        v28 = sub_224DAE278();
        v29 = v27;
        a3 = v35;
        (*(v24 + 8))(v29, v21);
        v12 = v23;

        v10 = v43;
        if ((v28 & 1) == 0)
        {
          *(v33 + ((v36 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v36;
          if (__OFADD__(v34++, 1))
          {
            __break(1u);
LABEL_20:
            sub_224B2EC7C(v33, v32, v34, a3);

            return;
          }
        }
      }

      else
      {
        sub_224A3311C(v40, v12, &unk_224DB3A10);
        v10 = v43;
      }
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v11)
      {
        goto LABEL_20;
      }

      v15 = *(v7 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v43 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void sub_224D2E6E8(void *a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      bzero(a1, 8 * a2);
    }

    v20 = a1;
    v19 = a2;
    v23 = 0;
    v6 = 0;
    v7 = 1 << *(a3 + 32);
    v8 = -1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    v9 = v8 & *(a3 + 64);
    v10 = (v7 + 63) >> 6;
    while (v9)
    {
      v11 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_14:
      v14 = v11 | (v6 << 6);
      v15 = *(*(a3 + 56) + 8 * v14);
      v16 = OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_ext;
      swift_beginAccess();
      sub_224A3796C(v15 + v16, v21, &unk_27D6F4700, &unk_224DB3A10);
      v17 = v22;
      sub_224A3311C(v21, &unk_27D6F4700, &unk_224DB3A10);
      if (!v17)
      {
        *(v20 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
        if (__OFADD__(v23++, 1))
        {
          __break(1u);
LABEL_18:
          sub_224B2EC7C(v20, v19, v23, a3);

          return;
        }
      }
    }

    v12 = v6;
    while (1)
    {
      v6 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_18;
      }

      v13 = *(a3 + 64 + 8 * v6);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v9 = (v13 - 1) & v13;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void sub_224D2E8A0(void *a1, uint64_t a2, uint64_t a3)
{
  v28 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3948, &qword_224DB5C10);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v24 - v7;
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      bzero(a1, 8 * a2);
    }

    v26 = a1;
    v27 = 0;
    v25 = a2;
    v9 = 0;
    v10 = v28 + 64;
    v11 = 1 << *(v28 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v28 + 64);
    v14 = (v11 + 63) >> 6;
    while (v13)
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_14:
      v18 = v15 | (v9 << 6);
      v19 = *(*(v28 + 56) + 8 * v18);
      if (!*(v19 + 40))
      {
        v20 = OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_grace;
        swift_beginAccess();
        sub_224A3796C(v19 + v20, v8, &qword_27D6F3948, &qword_224DB5C10);
        v21 = sub_224DAC378();
        v22 = (*(*(v21 - 8) + 48))(v8, 1, v21);
        sub_224A3311C(v8, &qword_27D6F3948, &qword_224DB5C10);
        if (v22 == 1)
        {
          continue;
        }
      }

      *(v26 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      if (__OFADD__(v27++, 1))
      {
        __break(1u);
LABEL_19:
        sub_224B2EC7C(v26, v25, v27, v28);

        return;
      }
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
        goto LABEL_19;
      }

      v17 = *(v10 + 8 * v9);
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

  __break(1u);
}

void sub_224D2EAF0(uint64_t a1, int a2, char a3, uint64_t a4)
{
  if (a3)
  {
    if (sub_224DAFAA8() == *(a4 + 36))
    {
      sub_224DAFAB8();
      sub_224DAF538();
      swift_dynamicCast();
      sub_224A3E7EC(v8);
      v6 = v5;

      if (v6)
      {
        sub_224DAFA78();
        sub_224DAFAD8();
        swift_unknownObjectRelease();
        return;
      }

      goto LABEL_14;
    }

    __break(1u);
    goto LABEL_12;
  }

  if (a1 < 0 || -(-1 << *(a4 + 32)) <= a1)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (((*(a4 + 64 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> a1) & 1) == 0)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (*(a4 + 36) != a2)
  {
LABEL_15:
    __break(1u);
    return;
  }

  sub_224DAF7B8();
  v7 = *(a4 + 36);
}

uint64_t sub_224D2EC44(void *a1, uint64_t a2, uint64_t a3)
{
  swift_weakInit();
  *(v3 + 32) = 2;
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
  v6 = OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_grace;
  v7 = sub_224DAC378();
  (*(*(v7 - 8) + 56))(v3 + v6, 1, 1, v7);
  *(v3 + OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_activeAssertionCount) = 0;
  *(v3 + OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_monitorAssertionCount) = 0;
  *(v3 + OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_refreshVisibility) = 0;
  v8 = (v3 + OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_allowLocationForVisibility);
  *v8 = 0;
  v8[1] = 0;
  v9 = (v3 + OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_allowLocationForActivity);
  *v9 = 0;
  v9[1] = 0;
  v10 = v3 + OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_monitorAssertion;
  *v10 = 0u;
  *(v10 + 16) = 0u;
  *(v10 + 32) = 0;
  *(v3 + OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_reloadForSignificantLocationChange) = 0;
  *(v3 + OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_reloadForVisibilityChange) = 0;
  v11 = v3 + OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_ext;
  *v11 = 0u;
  *(v11 + 16) = 0u;
  *(v11 + 32) = 0;
  *(v3 + 16) = a1;
  swift_weakAssign();
  v12 = OBJC_IVAR____TtC10ChronoCoreP33_3B3DE5DF8A555E73689BF9FC0FE3BDED13ExtensionInfo_grace;
  swift_beginAccess();
  v13 = a1;
  sub_224C4D398(a3, v3 + v12, &qword_27D6F3948, &qword_224DB5C10);
  swift_endAccess();
  sub_224A6FDF8();
  sub_224A3311C(a3, &qword_27D6F3948, &qword_224DB5C10);
  return v3;
}

uint64_t sub_224D2EE84@<X0>(uint64_t a1@<X8>)
{
  v45 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32B0, &qword_224DB3EA0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v44 = &v32 - v3;
  v4 = sub_224DAD928();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v43 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_224DAE7A8();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v42 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_224DAEB68();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v41 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_224DAD918();
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v40 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v39 = &v32 - v17;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F30E0, &unk_224DB2AD0);
  v18 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v19 = *(v33 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v33);
  v23 = &v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v34 = &v32 - v24;
  v25 = sub_224DA9908();
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v37 = &v32 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_224DAD988();
  v28 = sub_224DAD938();
  v35 = v29;
  v36 = v28;
  sub_224DAD958();
  sub_224DAA1E8();
  sub_224DA9898();
  sub_224B44F14(&qword_2813519C0);
  sub_224B44F14(&unk_281351998);
  sub_224B44F14(&qword_2813519B8);
  sub_224B44F14(&qword_2813519B0);
  sub_224DAA1D8();
  (*(v19 + 8))(v23, v33);
  v30 = v40;
  sub_224DAD968();
  sub_224DAD908();
  sub_224D2F33C(v30);
  sub_224DAD9B8();
  sub_224DAD9A8();
  sub_224DAD978();
  sub_224DAD948();
  return sub_224DAD998();
}

uint64_t sub_224D2F33C(uint64_t a1)
{
  v2 = sub_224DAD918();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_224D2F410@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = (*(a3 + 8))(a2, a3);
  if (*(v6 + 16) && (v7 = sub_224A438E8(a1), (v8 & 1) != 0))
  {
    v9 = v7;
    v10 = *(v6 + 56);
    v11 = sub_224DAD9C8();
    v18 = *(v11 - 8);
    (*(v18 + 16))(a4, v10 + *(v18 + 72) * v9, v11);

    v12 = *(v18 + 56);
    v13 = a4;
    v14 = 0;
    v15 = v11;
  }

  else
  {

    v16 = sub_224DAD9C8();
    v12 = *(*(v16 - 8) + 56);
    v15 = v16;
    v13 = a4;
    v14 = 1;
  }

  return v12(v13, v14, 1, v15);
}

uint64_t sub_224D2F580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = (*(a7 + 8))(a6, a7);
  v15[2] = a1;
  v15[3] = a2;
  v15[4] = a3;
  v15[5] = a4;
  v15[6] = a5;
  v13 = sub_224BA0870(sub_224D30530, v15, v12);

  return v13;
}

uint64_t sub_224D2F628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = (*(a4 + 8))(a3, a4);

  v7 = sub_224D3028C(v6, a1, a2);

  return v7;
}

BOOL sub_224D2F6B0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v75 = a4;
  v64 = a7;
  v68 = a6;
  v73 = a5;
  v74 = a3;
  v63 = sub_224DAE7A8();
  v62 = *(v63 - 8);
  v9 = *(v62 + 64);
  MEMORY[0x28223BE20](v63);
  v61 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_224DAEB68();
  v66 = *(v11 - 8);
  v67 = v11;
  v12 = *(v66 + 64);
  MEMORY[0x28223BE20](v11);
  v65 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v71 = *(v14 - 8);
  v72 = v14;
  v15 = *(v71 + 64);
  MEMORY[0x28223BE20](v14);
  v84 = &v60 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4C68, &unk_224DBA3F0);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v69 = &v60 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v70 = &v60 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v60 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v60 - v26;
  v28 = sub_224DA9908();
  v29 = *(v28 - 8);
  (*(v29 + 16))(v27, a1, v28);
  v30 = *(v17 + 48);
  v31 = sub_224DAD9C8();
  v32 = *(v31 - 8);
  (*(v32 + 16))(&v27[v30], a2, v31);
  sub_224D30458(v27, v25);
  v79 = v17;
  v33 = *(v17 + 48);
  v34 = sub_224DAD938();
  v36 = v35;
  v37 = *(v32 + 8);
  v77 = v31;
  v78 = v37;
  v37(&v25[v33], v31);
  if (v34 == v74 && v36 == v75)
  {

    v40 = *(v29 + 8);
    v40(v25, v28);
  }

  else
  {
    v39 = sub_224DAFD88();

    v40 = *(v29 + 8);
    v40(v25, v28);
    if ((v39 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  v75 = v40;
  v76 = v28;
  v41 = v70;
  sub_224D30458(v27, v70);
  v42 = *(v79 + 48);
  sub_224DAD958();
  v78(v41 + v42, v77);
  sub_224D30558();
  v43 = v72;
  sub_224DAEFA8();
  sub_224DAEFA8();
  if (v82 == v80 && v83 == v81)
  {
    v44 = 1;
  }

  else
  {
    v44 = sub_224DAFD88();
  }

  v45 = v76;
  (*(v71 + 8))(v84, v43);

  v46 = v41;
  v47 = v75;
  v75(v46, v45);
  if (v44)
  {
    v48 = v69;
    sub_224D30458(v27, v69);
    v49 = *(v79 + 48);
    v50 = v65;
    sub_224DAD9B8();
    v51 = v48 + v49;
    v52 = v76;
    v78(v51, v77);
    v53 = MEMORY[0x22AA5CEB0](v50, v68);
    (*(v66 + 8))(v50, v67);
    v47(v48, v52);
    if (v53)
    {
      v54 = v69;
      sub_224D30458(v27, v69);
      v55 = *(v79 + 48);
      v56 = v61;
      sub_224DAD9A8();
      v78(v54 + v55, v77);
      sub_224D305BC();
      v57 = v63;
      sub_224DAEFA8();
      sub_224DAEFA8();
      (*(v62 + 8))(v56, v57);
      sub_224D304C8(v27);
      v58 = v82 == v80;
      v47(v54, v76);
      return v58;
    }
  }

LABEL_15:
  sub_224D304C8(v27);
  return 0;
}

unint64_t *sub_224D2FD04(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

    v10 = sub_224D2FDA8(v9, a2, a3, a4, a5);
    swift_bridgeObjectRelease_n();

    return v10;
  }

  return result;
}

uint64_t sub_224D2FDA8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v67 = a5;
  v52 = a2;
  v53 = a1;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4C68, &unk_224DBA3F0);
  v7 = *(*(v65 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v65);
  v75 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v51 - v10;
  v74 = sub_224DAD9C8();
  v12 = *(v74 - 8);
  v13 = v12[8];
  MEMORY[0x28223BE20](v74);
  v72 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_224DA9908();
  v15 = *(*(v71 - 8) + 64);
  result = MEMORY[0x28223BE20](v71);
  v70 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = 0;
  v66 = a3;
  v20 = *(a3 + 64);
  v56 = a3 + 64;
  v21 = 1 << *(a3 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & v20;
  v54 = 0;
  v55 = (v21 + 63) >> 6;
  v60 = v12 + 2;
  v61 = v17 + 16;
  v73 = v12;
  v62 = v17;
  v63 = v11;
  v58 = (v17 + 8);
  v59 = v12 + 1;
  v64 = a4;
  while (v23)
  {
    v27 = v11;
    v28 = __clz(__rbit64(v23));
    v69 = (v23 - 1) & v23;
LABEL_12:
    v31 = v28 | (v19 << 6);
    v32 = v66;
    v33 = v66[6] + *(v62 + 72) * v31;
    v68 = *(v62 + 16);
    v34 = v70;
    v35 = v71;
    v68(v70, v33, v71);
    v36 = v32[7];
    v37 = v72;
    v38 = v73[9];
    v57 = v31;
    v39 = v73[2];
    v40 = v74;
    v39(v72, v36 + v38 * v31, v74);
    v68(v27, v34, v35);
    v41 = v65;
    v39((v27 + *(v65 + 48)), v37, v40);
    v42 = v75;
    sub_224D30458(v27, v75);
    v43 = *(v41 + 48);
    v44 = sub_224DAD938();
    v46 = v45;
    v47 = v73[1];
    v47(v42 + v43, v40);
    if (v44 == v64 && v46 == v67)
    {

      v11 = v63;
      sub_224D304C8(v63);
      v48 = *v58;
      v49 = v71;
      (*v58)(v75, v71);
      v47(v72, v74);
      result = (v48)(v70, v49);
      v23 = v69;
      goto LABEL_15;
    }

    v24 = sub_224DAFD88();

    v11 = v63;
    sub_224D304C8(v63);
    v25 = *v58;
    v26 = v71;
    (*v58)(v75, v71);
    v47(v72, v74);
    result = (v25)(v70, v26);
    v23 = v69;
    if (v24)
    {
LABEL_15:
      *(v53 + ((v57 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v57;
      if (__OFADD__(v54++, 1))
      {
        __break(1u);
        return sub_224B2DC20(v53, v52, v54, v66);
      }
    }
  }

  v29 = v19;
  while (1)
  {
    v19 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v19 >= v55)
    {
      return sub_224B2DC20(v53, v52, v54, v66);
    }

    v30 = *(v56 + 8 * v19);
    ++v29;
    if (v30)
    {
      v27 = v11;
      v28 = __clz(__rbit64(v30));
      v69 = (v30 - 1) & v30;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_224D3028C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 32);
  v8 = v7 & 0x3F;
  v9 = ((1 << v7) + 63) >> 6;
  v10 = 8 * v9;
  v11 = swift_bridgeObjectRetain_n();
  if (v8 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v15 = swift_slowAlloc();

      v12 = sub_224D2FD04(v15, v9, a1, a2, a3);
      MEMORY[0x22AA5EED0](v15, -1, -1);
      swift_bridgeObjectRelease_n();
      goto LABEL_6;
    }
  }

  MEMORY[0x28223BE20](v11);
  bzero(v16 - ((v10 + 15) & 0x3FFFFFFFFFFFFFF0), v10);

  v12 = sub_224D2FDA8((v16 - ((v10 + 15) & 0x3FFFFFFFFFFFFFF0)), v9, a1, a2, a3);

  if (v3)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
LABEL_6:
  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

uint64_t sub_224D30458(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4C68, &unk_224DBA3F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_224D304C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4C68, &unk_224DBA3F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_224D30558()
{
  result = qword_281351868;
  if (!qword_281351868)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D6F30D0, &unk_224DB2AC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281351868);
  }

  return result;
}

unint64_t sub_224D305BC()
{
  result = qword_281350C48;
  if (!qword_281350C48)
  {
    sub_224DAE7A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281350C48);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FeatureFlags.Widgets(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xED)
  {
    goto LABEL_17;
  }

  if (a2 + 19 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 19) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 19;
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

      return (*a1 | (v4 << 8)) - 19;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 19;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x14;
  v8 = v6 - 20;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FeatureFlags.Widgets(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 19) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xED)
  {
    v4 = 0;
  }

  if (a2 > 0xEC)
  {
    v5 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
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
    *result = a2 + 19;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_224D30778()
{
  result = qword_27D6F6950;
  if (!qword_27D6F6950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F6950);
  }

  return result;
}

unint64_t sub_224D307D0()
{
  result = qword_27D6F6958;
  if (!qword_27D6F6958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F6958);
  }

  return result;
}

uint64_t sub_224D3085C()
{
  v0 = sub_224DAB258();
  __swift_allocate_value_buffer(v0, qword_27D6F6960);
  __swift_project_value_buffer(v0, qword_27D6F6960);
  return sub_224DAB238();
}

unint64_t sub_224D308DC(void *a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
    if (a2)
    {
      v12 = 0;
      sub_224DAF938();
      MEMORY[0x22AA5D210](0xD00000000000001CLL, 0x8000000224DCF560);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5620, &unk_224DB3350);
      sub_224DAFA48();
    }

    else
    {
      sub_224DAF938();

      v12 = 0xD000000000000012;
      v3 = [a1 description];
      v4 = sub_224DAEE18();
      v6 = v5;

      MEMORY[0x22AA5D210](v4, v6);

      MEMORY[0x22AA5D210](0x63414E4C206F7420, 0xEC0000006E6F6974);
    }

    return v12;
  }

  if (a2 == 2)
  {
    sub_224DAF938();

    v12 = 0xD00000000000001CLL;
    v7 = [a1 description];
    v8 = sub_224DAEE18();
    v10 = v9;

    MEMORY[0x22AA5D210](v8, v10);

    return v12;
  }

  return 0xD00000000000001ALL;
}

unint64_t sub_224D30AE4(void *a1, unsigned __int8 a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4780, qword_224DB77A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_224DB3100;
  v5 = *MEMORY[0x277CCA450];
  *(inited + 32) = sub_224DAEE18();
  *(inited + 40) = v6;
  v7 = sub_224D308DC(a1, a2);
  *(inited + 72) = MEMORY[0x277D837D0];
  v9 = 0x206E776F6E6B6E55;
  if (v8)
  {
    v9 = v7;
  }

  v10 = 0xED0000726F727265;
  if (v8)
  {
    v10 = v8;
  }

  *(inited + 48) = v9;
  *(inited + 56) = v10;
  v11 = sub_224DA0AC0(inited);
  swift_setDeallocating();
  sub_224A3311C(inited + 32, &unk_27D6F58E0, &unk_224DB6450);
  return v11;
}

uint64_t sub_224D30BD8(uint64_t a1)
{
  v2 = sub_224D31908();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_224D30C14(uint64_t a1)
{
  v2 = sub_224D31908();

  return MEMORY[0x28211F4A8](a1, v2);
}

void sub_224D30C80(void *a1, void (*a2)(void *))
{
  if (a1)
  {
    sub_224D3177C();
    v4 = swift_allocError();
    *v5 = a1;
    *(v5 + 8) = 1;
  }

  else
  {
    v4 = 0;
  }

  v6 = a1;
  v7 = a1;
  a2(v4);
}

void sub_224D30D20(void *a1, char a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v91 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v91 - v15;
  objc_opt_self();
  v17 = swift_dynamicCastObjCClass();
  if (!v17)
  {
    v26 = v4[6];
    v25 = v4[7];
    sub_224D3177C();
    v27 = swift_allocError();
    *v28 = a1;
    *(v28 + 8) = 0;
    v29 = a1;

    v26(v27);

    goto LABEL_5;
  }

  v18 = v17;
  v98 = a3;
  v19 = v4[4];
  v20 = a1;
  if ([v19 isRemote])
  {
    v22 = v4[6];
    v21 = v4[7];
    sub_224D3177C();
    v23 = swift_allocError();
    *v24 = 0;
    *(v24 + 8) = 3;

    v22(v23);

LABEL_5:

    return;
  }

  v99 = v13;
  v30 = v4[4];
  v31 = *MEMORY[0x277CFA130];
  swift_beginAccess();
  v32 = v30 + v31;
  v33 = v99;
  sub_224AFD468(v32, v11);
  if ((*(v33 + 48))(v11, 1, v12) == 1)
  {
    sub_224A3311C(v11, &unk_27D6F5060, &qword_224DB5620);
    v35 = v4[6];
    v34 = v4[7];
    v36 = v4[4];
    sub_224D3177C();
    v37 = swift_allocError();
    *v38 = v36;
    *(v38 + 8) = 2;

    v39 = v36;
    v35(v37);

    if (qword_27D6F2D10 != -1)
    {
      swift_once();
    }

    v40 = sub_224DAB258();
    __swift_project_value_buffer(v40, qword_27D6F6960);
    v41 = v20;

    v42 = sub_224DAB228();
    v43 = sub_224DAF288();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v101[0] = v46;
      *v44 = 136446466;
      v47 = [v18 identifier];
      v48 = sub_224DAEE18();
      v50 = v49;

      v51 = sub_224A33F74(v48, v50, v101);

      *(v44 + 4) = v51;
      *(v44 + 12) = 2114;
      v52 = v4[4];
      *(v44 + 14) = v52;
      *v45 = v52;
      v53 = v52;
      _os_log_impl(&dword_224A2F000, v42, v43, "Unable to execute LNAction %{public}s for invalid identity: %{public}@", v44, 0x16u);
      sub_224A3311C(v45, &unk_27D6F69F0, &unk_224DB3900);
      MEMORY[0x22AA5EED0](v45, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v46);
      MEMORY[0x22AA5EED0](v46, -1, -1);
      MEMORY[0x22AA5EED0](v44, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    (*(v33 + 32))(v16, v11, v12);
    v54 = 9;
    if ((a2 & 0xFE) == 0)
    {
      v54 = 2;
    }

    v96 = v54;
    if (qword_27D6F2D10 != -1)
    {
      swift_once();
    }

    v97 = v18;
    v55 = sub_224DAB258();
    __swift_project_value_buffer(v55, qword_27D6F6960);
    v56 = v20;

    v57 = sub_224DAB228();
    v58 = sub_224DAF278();

    v95 = v56;

    if (os_log_type_enabled(v57, v58))
    {
      v94 = v58;
      v59 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      v101[0] = v93;
      *v59 = 136446978;
      v60 = v97;
      v61 = [v97 identifier];
      v62 = sub_224DAEE18();
      v64 = v63;

      v65 = sub_224A33F74(v62, v64, v101);

      *(v59 + 4) = v65;
      *(v59 + 12) = 2082;
      v66 = [v60 mangledTypeName];
      if (v66)
      {
        v67 = v66;
        v68 = sub_224DAEE18();
        v70 = v69;
      }

      else
      {
        v70 = 0xE200000000000000;
        v68 = 11565;
      }

      v71 = sub_224A33F74(v68, v70, v101);

      *(v59 + 14) = v71;
      *(v59 + 22) = 2114;
      v72 = v4[4];
      *(v59 + 24) = v72;
      v73 = v92;
      *v92 = v72;
      *(v59 + 32) = 2082;
      v100 = a2;
      v74 = v72;
      v75 = sub_224DAEE28();
      v77 = sub_224A33F74(v75, v76, v101);

      *(v59 + 34) = v77;
      _os_log_impl(&dword_224A2F000, v57, v94, "Started executing LNAction %{public}s(%{public}s) in %{public}@ from %{public}s.", v59, 0x2Au);
      sub_224A3311C(v73, &unk_27D6F69F0, &unk_224DB3900);
      MEMORY[0x22AA5EED0](v73, -1, -1);
      v78 = v93;
      swift_arrayDestroy();
      MEMORY[0x22AA5EED0](v78, -1, -1);
      MEMORY[0x22AA5EED0](v59, -1, -1);
    }

    sub_224DA9FE8();
    v79 = v4[4];
    v80 = *MEMORY[0x277CFA138];
    swift_beginAccess();
    v81 = v79;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
    sub_224DA9FE8();
    swift_endAccess();

    v82 = v4[2];
    v83 = v4[3];

    v84 = v95;
    v85 = sub_224DAEDE8();

    v86 = sub_224DAEDE8();

    if (v83)
    {
      v87 = sub_224DAEDE8();
    }

    else
    {
      v87 = 0;
    }

    v88 = v99;
    v89 = objc_allocWithZone(MEMORY[0x277D7A008]);
    v90 = [v89 initWithLinkAction:v97 appBundleIdentifier:v85 extensionBundleIdentifier:v86 runSource:v96 runSourceOverride:v87 authenticationPolicy:v98];

    [v90 setDelegate_];
    [v90 start];

    (*(v88 + 8))(v16, v12);
  }
}

id sub_224D31698()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InteractiveWidgetActionRunner.Delegate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_224D316E4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 56);

  return swift_deallocClassInstance();
}

unint64_t sub_224D3177C()
{
  result = qword_27D6F69E8;
  if (!qword_27D6F69E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F69E8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10ChronoCore29InteractiveWidgetActionRunnerC6ErrorsO(uint64_t a1)
{
  if ((*(a1 + 8) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_224D317FC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 9))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_224D31844(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t sub_224D31888(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 8) = a2;
  return result;
}

unint64_t sub_224D318B4()
{
  result = qword_27D6F6A00;
  if (!qword_27D6F6A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F6A00);
  }

  return result;
}

unint64_t sub_224D31908()
{
  result = qword_27D6F6A08[0];
  if (!qword_27D6F6A08[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D6F6A08);
  }

  return result;
}

uint64_t sub_224D31960(uint64_t a1)
{
  v2 = *(a1 + 96);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v7 = *(result - 8) + 64;
    v5 = *(a1 + 88);
    result = sub_224DAF728();
    if (v6 <= 0x3F)
    {
      v8 = *(result - 8) + 64;
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_224D31A4C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  sub_224D31A9C(a1, a2);
  return v7;
}

char *sub_224D31A9C(uint64_t a1, uint64_t a2)
{
  v17 = a1;
  v18 = a2;
  v3 = *v2;
  v4 = *(*v2 + 88);
  v19 = sub_224DAF728();
  v5 = *(v19 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v19);
  v8 = &v17 - v7;
  v9 = *(v4 - 8);
  v10 = *(v9 + 56);
  v10(&v2[*(v3 + 144)], 1, 1, v4);
  v11 = &v2[*(*v2 + 152)];
  *v11 = 0u;
  *(v11 + 1) = 0u;
  *(v11 + 4) = 0;
  v12 = *(*v2 + 160);
  type metadata accessor for UnfairLock();
  v13 = swift_allocObject();
  v14 = swift_slowAlloc();
  *v14 = 0;
  *&v2[v12] = v13;
  *(v13 + 16) = v14;
  (*(*(*(v3 + 96) - 8) + 32))(&v2[*(*v2 + 136)], v17);
  (*(v9 + 32))(v8, v18, v4);
  v10(v8, 0, 1, v4);
  v15 = *(*v2 + 144);
  swift_beginAccess();
  (*(v5 + 40))(&v2[v15], v8, v19);
  swift_endAccess();
  return v2;
}

uint64_t sub_224D31D20(void *a1)
{
  v3 = *v1;
  v4 = *(v1 + *(*v1 + 160));
  os_unfair_lock_lock(*(v4 + 16));
  v5 = *(*v1 + 152);
  swift_beginAccess();
  sub_224D3338C(v1 + v5, v13);
  v6 = v14;
  sub_224D333FC(v13);
  if (v6)
  {
    os_unfair_lock_unlock(*(v4 + 16));
    v7 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v8 = *(v7 + 8);
    return sub_224DAB2D8();
  }

  else
  {
    sub_224A3317C(a1, v13);
    swift_beginAccess();
    sub_224D33488(v13, v1 + v5);
    swift_endAccess();
    os_unfair_lock_unlock(*(v4 + 16));
    v10 = *(*v1 + 136);
    v14 = v3;
    WitnessTable = swift_getWitnessTable();
    v13[0] = v1;
    v11 = *(v3 + 96);
    v12 = *(v3 + 120);

    sub_224DAB2B8();
    return __swift_destroy_boxed_opaque_existential_1(v13);
  }
}

uint64_t sub_224D31EB8()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 120);
  v3 = v0 + *(*v0 + 136);
  return sub_224DAB2C8();
}

void sub_224D31F1C(char *a1)
{
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D6F6A90, &qword_224DC1058);
  v4 = *(v3 + 88);
  v5 = sub_224DAF728();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v28 = *(TupleTypeMetadata2 - 8);
  v7 = *(v28 + 64);
  v8 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v10 = &v26 - v9;
  v11 = *(v5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  v14 = &v26 - v13;
  v15 = *&v1[*(v3 + 160)];
  os_unfair_lock_lock(*(v15 + 16));
  v16 = *(*v1 + 152);
  swift_beginAccess();
  sub_224D3338C(&v1[v16], v29);
  v17 = v30;
  sub_224D333FC(v29);
  if (v17)
  {
    v18 = *(*v1 + 144);
    swift_beginAccess();
    v26 = v14;
    v27 = a1;
    v19 = *(v11 + 16);
    v19(v14, &v1[v18], v5);
    v20 = TupleTypeMetadata2;
    v21 = *(TupleTypeMetadata2 + 48);
    sub_224D3338C(&v1[v16], v10);
    v22 = (v19)(&v10[v21], &v1[v18], v5);
    MEMORY[0x28223BE20](v22);
    v23 = v27;
    *(&v26 - 4) = v1;
    *(&v26 - 3) = v23;
    v24 = v26;
    *(&v26 - 2) = v26;
    sub_224D328A0(v10, sub_224D33464, (&v26 - 6), v20, MEMORY[0x277D84A98], MEMORY[0x277D84F78] + 8, MEMORY[0x277D84AC0], v25);
    (*(v28 + 8))(v10, v20);
    (*(v11 + 8))(v24, v5);
  }

  else
  {
    os_unfair_lock_unlock(*(v15 + 16));
  }
}

uint64_t sub_224D32224(uint64_t a1, void (*a2)(char *, char *, uint64_t), uint64_t a3)
{
  v57 = a2;
  v58 = a3;
  v54 = *a1;
  v4 = v54;
  v5 = v54[14];
  v6 = v54[11];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v55 = *(AssociatedTypeWitness - 8);
  v8 = v55[8];
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v51 = &v46 - v9;
  v48 = v10;
  v11 = sub_224DAF728();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v50 = &v46 - v13;
  v52 = v5;
  v62 = swift_getAssociatedTypeWitness();
  v53 = *(v62 - 8);
  v14 = *(v53 + 64);
  v15 = MEMORY[0x28223BE20](v62);
  v59 = &v46 - v16;
  v17 = *(v6 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v15);
  v49 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v56 = &v46 - v21;
  v22 = sub_224DAF728();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v46 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v29 = &v46 - v28;
  v61 = 0;
  memset(v60, 0, sizeof(v60));
  v30 = v4[19];
  swift_beginAccess();
  sub_224D33488(v60, a1 + v30);
  swift_endAccess();
  (*(v17 + 56))(v29, 1, 1, v6);
  v31 = *(*a1 + 144);
  swift_beginAccess();
  (*(v23 + 40))(a1 + v31, v29, v22);
  swift_endAccess();
  os_unfair_lock_unlock(*(*(a1 + *(*a1 + 160)) + 16));
  v32 = v4[12];
  v33 = v4[15];
  v34 = a1 + *(*a1 + 136);
  sub_224DAB2A8();
  (*(v23 + 16))(v27, v58, v22);
  if ((*(v17 + 48))(v27, 1, v6) == 1)
  {
    return (*(v23 + 8))(v27, v22);
  }

  v36 = v56;
  (*(v17 + 32))(v56, v27, v6);
  v47 = v17;
  (*(v17 + 16))(v49, v36, v6);
  sub_224DAEF38();
  v52 = v6;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v38 = v50;
  v58 = AssociatedConformanceWitness;
  sub_224DAF738();
  v39 = v55[6];
  v40 = v48;
  v41 = v39(v38, 1, v48);
  v42 = v51;
  v43 = v54;
  if (v41 != 1)
  {
    v57 = v55[4];
    v44 = (v55 + 1);
    do
    {
      v57(v42, v38, v40);
      v45 = v43[16];
      sub_224DAB2D8();
      (*v44)(v42, v40);
      sub_224DAF738();
    }

    while (v39(v38, 1, v40) != 1);
  }

  (*(v53 + 8))(v59, v62);
  return (*(v47 + 8))(v56, v52);
}

uint64_t sub_224D328A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](a1);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v15(v14);
  if (v8)
  {
    return (*(v11 + 32))(a8, v14, a5);
  }

  return result;
}

void sub_224D32978()
{
  v1 = *(v0 + *(*v0 + 160));
  os_unfair_lock_lock(*(v1 + 16));
  v2 = *(*v0 + 152);
  swift_beginAccess();
  sub_224D3338C(v0 + v2, &v3);
  if (v4)
  {
    sub_224A36F98(&v3, v5);
    os_unfair_lock_unlock(*(v1 + 16));
    __swift_project_boxed_opaque_existential_1(v5, v5[3]);
    sub_224DAB2F8();
    __swift_destroy_boxed_opaque_existential_1(v5);
  }

  else
  {
    sub_224D333FC(&v3);
    os_unfair_lock_unlock(*(v1 + 16));
  }
}

void sub_224D32A58()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 112);
  v4 = *(*v0 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v46 = *(AssociatedTypeWitness - 8);
  v6 = *(v46 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v43 = &v40 - v7;
  v8 = sub_224DAF728();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v44 = &v40 - v10;
  v45 = v3;
  v51 = swift_getAssociatedTypeWitness();
  v47 = *(v51 - 8);
  v11 = *(v47 + 64);
  MEMORY[0x28223BE20](v51);
  v50 = &v40 - v12;
  v49 = sub_224DAF728();
  v13 = *(v49 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v49);
  v42 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v40 - v18;
  v20 = *(v4 - 8);
  v21 = *(v20 + 8);
  v22 = MEMORY[0x28223BE20](v17);
  v41 = &v40 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v48 = &v40 - v24;
  v25 = *(v0 + *(v1 + 160));
  os_unfair_lock_lock(*(v25 + 16));
  v26 = *(*v0 + 152);
  swift_beginAccess();
  sub_224D3338C(v0 + v26, &v52);
  v27 = *(&v53 + 1);
  sub_224D333FC(&v52);
  if (!v27)
  {
    goto LABEL_4;
  }

  v40 = v2;
  v28 = *(*v0 + 144);
  swift_beginAccess();
  (*(v13 + 16))(v19, v0 + v28, v49);
  if ((*(v20 + 6))(v19, 1, v4) == 1)
  {
    (*(v13 + 8))(v19, v49);
LABEL_4:
    os_unfair_lock_unlock(*(v25 + 16));
    return;
  }

  v29 = v48;
  (*(v20 + 4))(v48, v19, v4);
  v54 = 0;
  v52 = 0u;
  v53 = 0u;
  swift_beginAccess();
  sub_224D33488(&v52, v0 + v26);
  swift_endAccess();
  v30 = v42;
  (*(v20 + 7))(v42, 1, 1, v4);
  swift_beginAccess();
  (*(v13 + 40))(v0 + v28, v30, v49);
  swift_endAccess();
  os_unfair_lock_unlock(*(v25 + 16));
  v42 = v20;
  (*(v20 + 2))(v41, v29, v4);
  sub_224DAEF38();
  v45 = v4;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v32 = v44;
  v49 = AssociatedConformanceWitness;
  sub_224DAF738();
  v33 = v46;
  v34 = *(v46 + 48);
  v35 = v34(v32, 1, AssociatedTypeWitness);
  v36 = v43;
  v37 = v40;
  if (v35 != 1)
  {
    v38 = *(v33 + 32);
    do
    {
      v38(v36, v32, AssociatedTypeWitness);
      v39 = *(v37 + 128);
      sub_224DAB2D8();
      (*(v33 + 8))(v36, AssociatedTypeWitness);
      sub_224DAF738();
    }

    while (v34(v32, 1, AssociatedTypeWitness) != 1);
  }

  (*(v47 + 8))(v50, v51);
  (*(v42 + 1))(v48, v45);
}

uint64_t *sub_224D330F0()
{
  v1 = *v0;
  (*(*(*(*v0 + 96) - 8) + 8))(v0 + *(*v0 + 136));
  v2 = *(*v0 + 144);
  v3 = *(v1 + 88);
  v4 = sub_224DAF728();
  (*(*(v4 - 8) + 8))(v0 + v2, v4);
  sub_224D333FC(v0 + *(*v0 + 152));
  v5 = *(v0 + *(*v0 + 160));

  return v0;
}

uint64_t sub_224D33208()
{
  sub_224D330F0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_224D3336C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 104);
  v3 = *(a2 + 80);
  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_224D3338C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6A90, &qword_224DC1058);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_224D333FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6A90, &qword_224DC1058);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_224D33488(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6A90, &qword_224DC1058);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_224D334FC(char *a1, uint64_t a2, uint64_t a3, void (*a4)(void *, uint64_t), uint64_t a5)
{
  v72 = a5;
  v73 = a4;
  v8 = sub_224DAE6E8();
  v67 = *(v8 - 8);
  v68 = v8;
  v9 = *(v67 + 64);
  MEMORY[0x28223BE20](v8);
  v66 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_224DAC2B8();
  v71 = *(v11 - 8);
  v12 = *(v71 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v65 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v63 - v15;
  v17 = sub_224DAB258();
  v18 = *(v17 - 1);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v69 = &v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v63 - v22;
  v24 = sub_224A8689C(a2, sub_224A869E4, sub_224B2FE70);
  v25 = a1;
  v64 = a3;
  v26 = v70;
  if (sub_224D3BE10(a1, v24, a3))
  {
    v69 = v27;

    v28 = v23;
    (*(v18 + 16))(v23, v26 + OBJC_IVAR____TtC10ChronoCore21ControlReloadStrategy_logger, v17);
    v29 = v71;
    (*(v71 + 16))(v16, v25, v11);
    v30 = sub_224DAB228();
    v31 = sub_224DAF268();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v70 = v17;
      v68 = v18;
      v33 = v32;
      v34 = swift_slowAlloc();
      v74 = v34;
      *v33 = 136446210;
      sub_224D407A8(&unk_281350E08, MEMORY[0x277CF99B8]);
      v35 = sub_224DAFD28();
      v37 = v36;
      (*(v29 + 8))(v16, v11);
      v38 = sub_224A33F74(v35, v37, &v74);

      *(v33 + 4) = v38;
      _os_log_impl(&dword_224A2F000, v30, v31, "%{public}s Fetched from cache", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v34);
      MEMORY[0x22AA5EED0](v34, -1, -1);
      MEMORY[0x22AA5EED0](v33, -1, -1);

      (*(v68 + 8))(v28, v70);
    }

    else
    {

      (*(v29 + 8))(v16, v11);
      (*(v18 + 8))(v28, v17);
    }

    v73(v69, 0);
  }

  else
  {
    v39 = v26;
    v40 = v71;

    v41 = a1;
    v42 = sub_224DAC2A8();
    v43 = [v42 extensionIdentity];

    LOBYTE(v42) = [v43 isRemote];
    if ((v42 & 1) == 0)
    {
      v60 = sub_224D33C40(v25, v24, v64, v73, v72);

      return v60;
    }

    v44 = v18;
    v45 = v39 + OBJC_IVAR____TtC10ChronoCore21ControlReloadStrategy_logger;
    v46 = v69;
    v47 = v17;
    (*(v18 + 16))(v69, v45, v17);
    v48 = v40;
    v49 = v65;
    v50 = v11;
    (*(v40 + 16))(v65, v41, v11);
    v51 = sub_224DAB228();
    v52 = sub_224DAF268();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = v49;
      v54 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v74 = v70;
      *v54 = 136446210;
      sub_224D407A8(&unk_281350E08, MEMORY[0x277CF99B8]);
      v55 = sub_224DAFD28();
      v57 = v56;
      (*(v48 + 8))(v53, v50);
      v58 = sub_224A33F74(v55, v57, &v74);

      *(v54 + 4) = v58;
      _os_log_impl(&dword_224A2F000, v51, v52, "%{public}s Failed to fetch from cache", v54, 0xCu);
      v59 = v70;
      __swift_destroy_boxed_opaque_existential_1(v70);
      MEMORY[0x22AA5EED0](v59, -1, -1);
      MEMORY[0x22AA5EED0](v54, -1, -1);

      (*(v44 + 8))(v69, v47);
    }

    else
    {

      (*(v40 + 8))(v49, v50);
      (*(v44 + 8))(v46, v47);
    }

    sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
    (*(v67 + 104))(v66, *MEMORY[0x277CE3BF0], v68);
    v62 = sub_224DAF638();
    v73(v62, 1);
  }

  return 0;
}

uint64_t sub_224D33C40(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *, uint64_t), uint64_t a5)
{
  v282 = a4;
  v283 = a5;
  v288 = a3;
  v289 = a1;
  v281 = a2;
  v6 = sub_224DAE6E8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v234 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_224DACC88();
  v271 = *(v11 - 8);
  v12 = *(v271 + 64);
  MEMORY[0x28223BE20](v11);
  v270 = v234 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v278 = sub_224DAB258();
  v272 = *(v278 - 8);
  v14 = *(v272 + 64);
  MEMORY[0x28223BE20](v278);
  v287 = v234 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_224DAC2B8();
  v285 = *(v16 - 8);
  v17 = *(v285 + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v269 = v234 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v267 = v19;
  MEMORY[0x28223BE20](v18);
  v268 = v234 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4030, &unk_224DB5630);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v266 = v234 - v23;
  v265 = sub_224DA9908();
  v264 = *(v265 - 8);
  v24 = *(v264 + 64);
  MEMORY[0x28223BE20](v265);
  v263 = v234 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v262 = type metadata accessor for ExtensionTask.Identifier(0);
  v26 = *(*(v262 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v262);
  v284 = v234 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v286 = (v234 - v29);
  v253 = sub_224DACB08();
  v252 = *(v253 - 8);
  v30 = *(v252 + 64);
  MEMORY[0x28223BE20](v253);
  v32 = v234 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for ExtensionTask.SchedulingOption(0);
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  v36 = MEMORY[0x28223BE20](v33 - 8);
  v260 = (v234 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  v38 = MEMORY[0x28223BE20](v36);
  v40 = v234 - v39;
  v41 = MEMORY[0x28223BE20](v38);
  v244 = v234 - v42;
  MEMORY[0x28223BE20](v41);
  v239 = v234 - v43;
  v258 = sub_224DACB98();
  v257 = *(v258 - 8);
  v44 = *(v257 + 64);
  MEMORY[0x28223BE20](v258);
  v256 = v234 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v259 = sub_224DACB28();
  v273 = *(v259 - 8);
  v46 = *(v273 + 64);
  v47 = MEMORY[0x28223BE20](v259);
  v250 = v234 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = MEMORY[0x28223BE20](v47);
  v240 = v234 - v50;
  MEMORY[0x28223BE20](v49);
  v251 = v234 - v51;
  v280 = sub_224DA9878();
  v279 = *(v280 - 8);
  v52 = v279[8];
  v53 = MEMORY[0x28223BE20](v280);
  v261 = v234 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = MEMORY[0x28223BE20](v53);
  v238 = v234 - v56;
  MEMORY[0x28223BE20](v55);
  v245 = v234 - v57;
  v58 = type metadata accessor for ExtensionTask.SchedulingConfiguration(0);
  v59 = *(*(v58 - 8) + 64);
  v60 = MEMORY[0x28223BE20](v58 - 8);
  MEMORY[0x28223BE20](v60);
  v63 = v234 - v62;
  v290 = v5;
  if (!v5[2])
  {
    sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
    (*(v7 + 104))(v10, *MEMORY[0x277CE3C38], v6);
    v291[0] = 0;
    v291[1] = 0xE000000000000000;
    sub_224DAF938();
    MEMORY[0x22AA5D210](0xD000000000000051, 0x8000000224DCF750);
    v94 = type metadata accessor for EmptyKey();
    v95 = MEMORY[0x22AA5D380](v281, v94);
    MEMORY[0x22AA5D210](v95);

    MEMORY[0x22AA5D210](0x747865746E6F6320, 0xE90000000000003ALL);
    sub_224D407A8(&unk_281350E08, MEMORY[0x277CF99B8]);
    v96 = sub_224DAFD28();
    MEMORY[0x22AA5D210](v96);

    MEMORY[0x22AA5D210](0x756769666E6F6320, 0xEF3A6E6F69746172);
    sub_224D407A8(&qword_27D6F6AA8, MEMORY[0x277CF9C08]);
    v97 = sub_224DAFD28();
    MEMORY[0x22AA5D210](v97);

    v98 = sub_224DAF638();
    v282(v98, 1);

    return 0;
  }

  v235 = v32;
  v236 = v40;
  v275 = v61;
  v248 = v16;
  v277 = v11;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5070, &unk_224DB3670);
  v65 = *(v34 + 72);
  v66 = (*(v34 + 80) + 32) & ~*(v34 + 80);
  v234[1] = v64;
  v67 = swift_allocObject();
  *(v67 + 16) = xmmword_224DB3100;
  v68 = *MEMORY[0x277CE3D28];
  v69 = sub_224DAE8B8();
  v70 = *(v69 - 8);
  v71 = *(v70 + 104);
  v71(v67 + v66, v68, v69);
  v72 = *(v70 + 56);
  v72(v67 + v66, 0, 5, v69);
  v246 = v67;
  v293 = v67;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F33D0, qword_224DB3710);
  v74 = *(v73 - 8);
  v75 = *(v74 + 56);
  v276 = v63;
  v242 = v73;
  v243 = v75;
  v241 = v74 + 56;
  (v75)(v63, 1, 1);
  v76 = MEMORY[0x277CF9B58];
  v274 = *(v290 + OBJC_IVAR____TtC10ChronoCore21ControlReloadStrategy_isPreview);
  v249 = v72;
  v247 = v66;
  v255 = v70 + 56;
  v254 = (v70 + 104);
  v237 = v71;
  if (v274 != 1)
  {
    v251 = v69;
    v100 = v65;
    v101 = v250;
    sub_224DACC58();
    v102 = v273;
    v103 = v259;
    v104 = (*(v273 + 88))(v101, v259);
    if (v104 == *v76)
    {
      v92 = v276;
      sub_224A3D238(v276, type metadata accessor for ExtensionTask.SchedulingConfiguration);
      (*(v102 + 96))(v101, v103);
      v105 = v242;
      v106 = *(v242 + 48);
      (v279[4])(v92, v101, v280);
      *(v92 + v106) = 0x408C200000000000;
      v243(v92, 0, 1, v105);
      v107 = v290;
      v93 = v100;
      v84 = v251;
    }

    else
    {
      v107 = v290;
      v84 = v251;
      v120 = v249;
      if (v104 == *MEMORY[0x277CF9B50])
      {
        v121 = v239;
        v237(v239, *MEMORY[0x277CE3D18], v251);
        v120(v121, 0, 5, v84);
        v123 = v246[2];
        v122 = v246[3];
        v93 = v100;
        if (v123 >= v122 >> 1)
        {
          v246 = sub_224AD946C(v122 > 1, v123 + 1, 1, v246);
        }

        v92 = v276;
        v124 = v246;
        v246[2] = v123 + 1;
        sub_224B442EC(v121, v124 + v247 + v123 * v93);
        v293 = v124;
      }

      else
      {
        (*(v273 + 8))(v101, v103);
        v92 = v276;
        v93 = v100;
      }
    }

    v125 = v107[13];
    __swift_project_boxed_opaque_existential_1(v107 + 9, v107[12]);
    v126 = *(v125 + 24);
    if (sub_224DADA48())
    {
      v127 = sub_224DAC2A8();
      v128 = sub_224DACFB8();

      if (v128)
      {
        v129 = [v128 supportsPush];
        v84 = v251;
        if (v129)
        {
          v249(v244, 2, 5, v251);
          v131 = v246[2];
          v130 = v246[3];
          if (v131 >= v130 >> 1)
          {
            v246 = sub_224AD946C(v130 > 1, v131 + 1, 1, v246);
          }

          v132 = v246;
          v246[2] = v131 + 1;
          sub_224B442EC(v244, v132 + v247 + v131 * v93);
          v293 = v132;
        }

        else
        {
        }
      }

      else
      {
        v84 = v251;
      }
    }

    v133 = v235;
    sub_224DACC08();
    v134 = v252;
    v135 = v253;
    if ((*(v252 + 88))(v133, v253) == *MEMORY[0x277CF9B40])
    {
      v249(v236, 3, 5, v84);
      v137 = v246[2];
      v136 = v246[3];
      if (v137 >= v136 >> 1)
      {
        v246 = sub_224AD946C(v136 > 1, v137 + 1, 1, v246);
      }

      v138 = v246;
      v246[2] = v137 + 1;
      sub_224B442EC(v236, v138 + v247 + v137 * v93);
      v259 = 0;
      v293 = v138;
      LODWORD(v273) = 1;
    }

    else
    {
      (*(v134 + 8))(v133, v135);
      LODWORD(v273) = 0;
      v259 = 1;
    }

    goto LABEL_31;
  }

  v77 = swift_allocObject();
  *(v77 + 16) = xmmword_224DB30F0;
  v72(v77 + v66, 3, 5, v69);
  v71(v77 + v66 + v65, *MEMORY[0x277CE3D18], v69);
  v253 = v65;
  v72(v77 + v66 + v65, 0, 5, v69);
  sub_224B42B34(v77);
  v78 = v251;
  sub_224DACC58();
  v79 = v273;
  v80 = *(v273 + 88);
  v81 = v259;
  v82 = v80(v78, v259);
  v83 = *v76;
  v84 = v69;
  if (v82 != v83)
  {
    v108 = *(v79 + 8);
    v108(v78, v81);
    v109 = v256;
    sub_224DACC68();
    v110 = sub_224DACB48();
    (*(v257 + 8))(v109, v258);
    if (v110)
    {
      v111 = v240;
      sub_224DACC58();
      v92 = v276;
      sub_224A3D238(v276, type metadata accessor for ExtensionTask.SchedulingConfiguration);
      if (v80(v111, v81) == v83)
      {
        (*(v273 + 96))(v111, v81);
        v112 = v279[4];
        v113 = v238;
        v114 = v111;
        v115 = v84;
        v116 = v280;
        v112(v238, v114, v280);
        v117 = v242;
        v118 = *(v242 + 48);
        v119 = v116;
        v84 = v115;
        v112(v92, v113, v119);
        *(v92 + v118) = 0x408C200000000000;
        LODWORD(v273) = 1;
        v243(v92, 0, 1, v117);
        v259 = 0;
        goto LABEL_6;
      }

      v108(v111, v81);
    }

    else
    {
      v92 = v276;
      sub_224A3D238(v276, type metadata accessor for ExtensionTask.SchedulingConfiguration);
    }

    LODWORD(v273) = 1;
    v243(v92, 1, 1, v242);
    v259 = 0;
    v93 = v253;
    goto LABEL_31;
  }

  v85 = v276;
  sub_224A3D238(v276, type metadata accessor for ExtensionTask.SchedulingConfiguration);
  (*(v79 + 96))(v78, v81);
  v86 = v279[4];
  v87 = v245;
  v88 = v280;
  v86(v245, v78, v280);
  v89 = v242;
  v90 = *(v242 + 48);
  v91 = v88;
  v84 = v69;
  v86(v85, v87, v91);
  *(v85 + v90) = 0x408C200000000000;
  LODWORD(v273) = 1;
  v243(v85, 0, 1, v89);
  v259 = 0;
  v92 = v85;
LABEL_6:
  v93 = v253;
LABEL_31:
  if (sub_224DACBC8())
  {
    v139 = v260;
    v237(v260, *MEMORY[0x277CE3D20], v84);
    v249(v139, 0, 5, v84);
    v140 = v293;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v140 = sub_224AD946C(0, v140[2] + 1, 1, v140);
    }

    v141 = v247;
    v143 = v140[2];
    v142 = v140[3];
    if (v143 >= v142 >> 1)
    {
      v140 = sub_224AD946C(v142 > 1, v143 + 1, 1, v140);
    }

    v140[2] = v143 + 1;
    sub_224B442EC(v260, v140 + v141 + v143 * v93);
    v293 = v140;
  }

  v144 = sub_224DAC2A8();
  v145 = v144;
  if (v274)
  {
    v146 = v286;
    *v286 = v144;
  }

  else
  {
    v148 = sub_224D361A0();
    v146 = v286;
    *v286 = v145;
    v146[1] = v148;
  }

  v147 = v146;
  swift_storeEnumTagMultiPayload();
  v149 = v284;
  sub_224A4152C(v147, v284, type metadata accessor for ExtensionTask.Identifier);
  v150 = sub_224DAC2A8();
  v151 = [v150 extensionIdentity];

  v152 = v92;
  v153 = v275;
  sub_224A4152C(v152, v275, type metadata accessor for ExtensionTask.SchedulingConfiguration);
  v253 = v293;
  LODWORD(v255) = sub_224DACBD8();
  v254 = type metadata accessor for ExtensionTask(0);
  v154 = objc_allocWithZone(v254);
  sub_224DAE908();
  v155 = OBJC_IVAR____TtC10ChronoCore13ExtensionTask_schedulingOptions;
  *&v154[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_schedulingOptions] = MEMORY[0x277D84F90];
  v156 = OBJC_IVAR____TtC10ChronoCore13ExtensionTask_powerlogWakeReason;
  v157 = sub_224DAC938();
  v252 = *(v157 - 8);
  v158 = *(v252 + 56);
  v262 = v157;
  v260 = v158;
  (v158)(&v154[v156], 1, 1);
  v159 = &v154[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_syncWorkItem];
  *v159 = 0;
  v159[1] = 0;
  v160 = &v154[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_asyncWorkItem];
  *v160 = 0;
  v160[1] = 0;
  v161 = &v154[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_taskWorkItem];
  *v161 = 0;
  v161[1] = 0;
  v162 = &v154[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_completion];
  *v162 = 0;
  v162[1] = 0;
  v163 = v261;
  sub_224DA9868();
  (v279[4])(&v154[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_creationDate], v163, v280);
  *&v154[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_target] = v151;
  sub_224A4152C(v153, &v154[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_schedulingConfiguration], type metadata accessor for ExtensionTask.SchedulingConfiguration);
  swift_beginAccess();
  v164 = *&v154[v155];
  *&v154[v155] = v253;
  v279 = v151;

  v165 = &v154[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_cost];
  *v165 = v259;
  v165[8] = v273;
  sub_224A4152C(v149, &v154[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_identifier], type metadata accessor for ExtensionTask.Identifier);
  v166 = v263;
  sub_224DA98F8();
  v167 = v264;
  v168 = v265;
  (*(v264 + 16))(&v154[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_taskIdentifier], v166, v265);
  v291[0] = sub_224DA98E8();
  sub_224A3F6A4();
  sub_224DAEF18();
  v169 = sub_224A3D19C(8);
  v171 = v170;
  v173 = v172;
  v175 = v174;

  v176 = MEMORY[0x22AA5D1C0](v169, v171, v173, v175);
  v178 = v177;

  v179 = &v154[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_logDigest];
  *v179 = v176;
  v179[1] = v178;
  v154[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_allowCostOverride] = v255 & 1;
  v292.receiver = v154;
  v292.super_class = v254;
  v280 = objc_msgSendSuper2(&v292, sel_init);

  (*(v167 + 8))(v166, v168);
  sub_224A3D238(v275, type metadata accessor for ExtensionTask.SchedulingConfiguration);
  sub_224A3D238(v284, type metadata accessor for ExtensionTask.Identifier);
  if (v274)
  {
    v180 = v266;
    v181 = v262;
    (*(v252 + 104))(v266, *MEMORY[0x277CF9B00], v262);
    v182 = v248;
    v183 = v285;
    v184 = v181;
  }

  else
  {
    v185 = v256;
    sub_224DACC68();
    v180 = v266;
    sub_224DACB38();
    (*(v257 + 8))(v185, v258);
    v182 = v248;
    v183 = v285;
    v184 = v262;
  }

  (v260)(v180, 0, 1, v184);
  v186 = OBJC_IVAR____TtC10ChronoCore13ExtensionTask_powerlogWakeReason;
  v187 = v280;
  swift_beginAccess();
  sub_224A838C0(v180, v187 + v186, &qword_27D6F4030, &unk_224DB5630);
  swift_endAccess();
  v188 = swift_allocObject();
  *(v188 + 16) = 0;
  v189 = v183;
  v190 = *(v183 + 16);
  v275 = v183 + 16;
  v279 = v190;
  v191 = v268;
  (v190)(v268, v289, v182);
  v192 = (*(v183 + 80) + 24) & ~*(v183 + 80);
  v193 = (v267 + v192 + 7) & 0xFFFFFFFFFFFFFFF8;
  v194 = swift_allocObject();
  v195 = v290;
  *(v194 + 16) = v290;
  (*(v189 + 32))(v194 + v192, v191, v182);
  *(v194 + v193) = v281;
  *(v194 + ((v193 + 15) & 0xFFFFFFFFFFFFFFF8)) = v188;
  v196 = (v187 + OBJC_IVAR____TtC10ChronoCore13ExtensionTask_asyncWorkItem);
  v197 = *(v187 + OBJC_IVAR____TtC10ChronoCore13ExtensionTask_asyncWorkItem);
  v198 = *(v187 + OBJC_IVAR____TtC10ChronoCore13ExtensionTask_asyncWorkItem + 8);
  *v196 = sub_224D406D4;
  v196[1] = v194;

  sub_224A3D418(v197);
  v199 = swift_allocObject();
  v200 = v283;
  *(v199 + 2) = v282;
  *(v199 + 3) = v200;
  *(v199 + 4) = v188;
  v201 = (v187 + OBJC_IVAR____TtC10ChronoCore13ExtensionTask_completion);
  v202 = *(v187 + OBJC_IVAR____TtC10ChronoCore13ExtensionTask_completion);
  v203 = *(v187 + OBJC_IVAR____TtC10ChronoCore13ExtensionTask_completion + 8);
  *v201 = sub_224A8B280;
  v201[1] = v199;
  v284 = v188;

  sub_224A3D418(v202);
  v204 = v272;
  v205 = v278;
  (*(v272 + 16))(v287, v195 + OBJC_IVAR____TtC10ChronoCore21ControlReloadStrategy_logger, v278);
  v206 = v269;
  (v279)(v269, v289, v182);
  v207 = v271;
  v208 = v270;
  (*(v271 + 16))(v270, v288, v277);
  v209 = sub_224DAB228();
  v210 = sub_224DAF2A8();
  if (os_log_type_enabled(v209, v210))
  {
    v211 = swift_slowAlloc();
    v289 = swift_slowAlloc();
    v291[0] = v289;
    *v211 = 136446466;
    sub_224D407A8(&unk_281350E08, MEMORY[0x277CF99B8]);
    v212 = sub_224DAFD28();
    v213 = v204;
    v215 = v214;
    (*(v285 + 8))(v206, v182);
    v216 = sub_224A33F74(v212, v215, v291);

    *(v211 + 4) = v216;
    *(v211 + 12) = 2082;
    v217 = sub_224DACBA8();
    v219 = v218;
    (*(v207 + 8))(v208, v277);
    v220 = sub_224A33F74(v217, v219, v291);

    *(v211 + 14) = v220;
    _os_log_impl(&dword_224A2F000, v209, v210, "%{public}s scheduled %{public}s", v211, 0x16u);
    v221 = v289;
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v221, -1, -1);
    MEMORY[0x22AA5EED0](v211, -1, -1);

    (*(v213 + 8))(v287, v278);
  }

  else
  {

    (*(v207 + 8))(v208, v277);
    (*(v285 + 8))(v206, v182);
    (*(v204 + 8))(v287, v205);
  }

  sub_224DAD358();
  v222 = v290[21];
  v223 = v290[22];
  __swift_project_boxed_opaque_existential_1(v290 + 18, v222);
  v224 = v280;
  v225 = (*(v223 + 16))(v280, v222, v223);
  v227 = v226;
  v229 = v228;
  v231 = v230;
  v291[3] = &type metadata for TaskCancellable;
  v291[4] = sub_224A8B0FC();
  v232 = swift_allocObject();
  v291[0] = v232;
  v232[2] = v225;
  v232[3] = v227;
  v232[4] = v229;
  v232[5] = v231;
  v99 = sub_224DAD368();

  sub_224A3D238(v286, type metadata accessor for ExtensionTask.Identifier);
  sub_224A3D238(v276, type metadata accessor for ExtensionTask.SchedulingConfiguration);

  return v99;
}

uint64_t sub_224D35C04(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t *a4, unint64_t a5, unint64_t a6, uint64_t a7)
{
  v44 = a6;
  v49 = a4;
  v50 = a5;
  v11 = sub_224DAE6E8();
  v47 = *(v11 - 8);
  v12 = *(v47 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_224DAC2B8();
  v45 = *(v15 - 8);
  v46 = v15;
  v16 = *(v45 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_224DAB258();
  v19 = *(v51 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v51);
  v22 = &v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = swift_allocObject();
  v52 = a3;
  v53 = a7;
  v23[2] = a7;
  v23[3] = a2;
  v48 = a2;
  v23[4] = a3;
  sub_224A3796C(a1, v55, &qword_27D6F4760, &unk_224DB3680);
  if (v55[3])
  {
    swift_retain_n();
    swift_retain_n();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5080, &qword_224DB3690);
    if (swift_dynamicCast())
    {
      v24 = v54;
      v25 = swift_allocObject();
      v25[2] = v24;
      v25[3] = sub_224B819F8;
      v25[4] = v23;
      swift_unknownObjectRetain();

      sub_224D365D0(v24, v50, v44, sub_224B7F144, v25);

      swift_unknownObjectRelease();
    }

    v44 = v14;
  }

  else
  {
    v44 = v14;
    swift_retain_n();
    swift_retain_n();
    sub_224A3311C(v55, &qword_27D6F4760, &unk_224DB3680);
  }

  v26 = v19;
  (*(v19 + 16))(v22, &v49[OBJC_IVAR____TtC10ChronoCore21ControlReloadStrategy_logger], v51);
  v27 = v45;
  v28 = v46;
  (*(v45 + 16))(v18, v50, v46);
  v29 = sub_224DAB228();
  v30 = sub_224DAF288();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v50 = v11;
    v32 = v31;
    v49 = swift_slowAlloc();
    v55[0] = v49;
    *v32 = 136446210;
    sub_224D407A8(&unk_281350E08, MEMORY[0x277CF99B8]);
    v33 = sub_224DAFD28();
    v34 = v28;
    v35 = v22;
    v37 = v36;
    (*(v27 + 8))(v18, v34);
    v38 = sub_224A33F74(v33, v37, v55);

    *(v32 + 4) = v38;
    _os_log_impl(&dword_224A2F000, v29, v30, "%{public}s No extension session", v32, 0xCu);
    v39 = v49;
    __swift_destroy_boxed_opaque_existential_1(v49);
    MEMORY[0x22AA5EED0](v39, -1, -1);
    v40 = v32;
    v11 = v50;
    MEMORY[0x22AA5EED0](v40, -1, -1);

    (*(v26 + 8))(v35, v51);
  }

  else
  {

    (*(v27 + 8))(v18, v28);
    (*(v19 + 8))(v22, v51);
  }

  sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
  (*(v47 + 104))(v44, *MEMORY[0x277CE3C28], v11);
  v41 = sub_224DAF638();
  v48();
}

uint64_t sub_224D361A0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v32 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v32 - v9;
  v35 = 0;
  v11 = sub_224DAC2A8();
  v12 = [v11 extensionIdentity];

  v13 = *MEMORY[0x277CFA130];
  swift_beginAccess();
  sub_224A3796C(v12 + v13, v5, &unk_27D6F5060, &qword_224DB5620);

  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_224A3311C(v5, &unk_27D6F5060, &qword_224DB5620);
    return 0;
  }

  (*(v7 + 32))(v10, v5, v6);
  v15 = v1[26];
  v16 = v1[27];
  __swift_project_boxed_opaque_existential_1(v1 + 23, v15);
  v17 = (*(v16 + 24))(768, v15, v16);
  if (!v17)
  {
    (*(v7 + 8))(v10, v6);
    return 0;
  }

  v34 = v7;
  v18 = sub_224A7B208(v17);
  MEMORY[0x28223BE20](v18);
  *(&v32 - 2) = v10;
  v20 = sub_224A4ECE8(sub_224C8F404, (&v32 - 4), v19);

  if (v20 >> 62)
  {
    v21 = sub_224DAF838();
    v22 = v34;
    if (v21)
    {
      goto LABEL_6;
    }

LABEL_21:

    v31 = 0;
    goto LABEL_22;
  }

  v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v22 = v34;
  if (!v21)
  {
    goto LABEL_21;
  }

LABEL_6:
  v32 = v10;
  v33 = v6;
  result = sub_224A3B79C(0, &qword_281350840, 0x277D82BB8);
  if (v21 < 1)
  {
    __break(1u);
    return result;
  }

  for (i = 0; i != v21; ++i)
  {
    if ((v20 & 0xC000000000000001) != 0)
    {
      v24 = MEMORY[0x22AA5DCC0](i, v20);
    }

    else
    {
      v24 = *(v20 + 8 * i + 32);
    }

    v25 = v24;
    v26 = sub_224DAC2A8();
    v27 = [v25 controlIdentity];
    v28 = sub_224DAF6A8();

    if (v28)
    {
      v29 = v35;
      if (!v35)
      {
        v29 = MEMORY[0x277D84F90];
      }

      v35 = v29;
      v30 = v25;
      MEMORY[0x22AA5D350]();
      if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_224DAF038();
      }

      sub_224DAF078();
    }
  }

  v31 = v35;
  v6 = v33;
  v22 = v34;
  v10 = v32;
LABEL_22:
  (*(v22 + 8))(v10, v6);
  return v31;
}

void sub_224D365D0(void *a1, unint64_t a2, unint64_t a3, void (*a4)(void *, uint64_t), uint64_t a5)
{
  v226 = a5;
  v225 = a4;
  v240 = a3;
  v215 = a1;
  v214 = *v5;
  v221 = sub_224DAE6E8();
  v220 = *(v221 - 8);
  v7 = *(v220 + 64);
  MEMORY[0x28223BE20](v221);
  v222 = &v204 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v245 = sub_224DAB1F8();
  v243 = *(v245 - 8);
  v9 = v243[8];
  MEMORY[0x28223BE20](v245);
  v228 = &v204 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4808, &unk_224DB7990);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v234 = &v204 - v13;
  v239 = sub_224DAE4F8();
  v227 = *(v239 - 8);
  v14 = *(v227 + 64);
  v15 = MEMORY[0x28223BE20](v239);
  v242 = &v204 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v236 = &v204 - v17;
  v231 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4270, &qword_224DB6580);
  v18 = *(*(v231 - 1) + 64);
  v19 = MEMORY[0x28223BE20](v231);
  v230 = &v204 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v205 = (&v204 - v22);
  MEMORY[0x28223BE20](v21);
  v204 = &v204 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v244 = &v204 - v26;
  v241 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v237 = *(v241 - 8);
  v27 = *(v237 + 64);
  MEMORY[0x28223BE20](v241);
  v232 = &v204 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56C0, &unk_224DB3580);
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x28223BE20](v29 - 8);
  v235 = &v204 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v229 = (&v204 - v33);
  v34 = sub_224DAC2B8();
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  v37 = MEMORY[0x28223BE20](v34);
  v217 = &v204 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x28223BE20](v37);
  v41 = &v204 - v40;
  v212 = v42;
  MEMORY[0x28223BE20](v39);
  v44 = &v204 - v43;
  v45 = sub_224DAB258();
  v46 = *(v45 - 8);
  v47 = v46[8];
  v48 = MEMORY[0x28223BE20](v45);
  v216 = &v204 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v48);
  v51 = &v204 - v50;
  v52 = v46[2];
  v238 = v5;
  v207 = OBJC_IVAR____TtC10ChronoCore21ControlReloadStrategy_logger;
  v53 = v35;
  v209 = v46 + 2;
  v208 = v52;
  v52(&v204 - v50, v5 + OBJC_IVAR____TtC10ChronoCore21ControlReloadStrategy_logger, v45);
  v54 = *(v35 + 16);
  v54(v44, a2, v34);
  v246 = a2;
  v211 = v35 + 16;
  v210 = v54;
  v54(v41, a2, v34);
  v55 = sub_224DAB228();
  v56 = sub_224DAF2A8();
  v57 = os_log_type_enabled(v55, v56);
  v58 = v240;
  v233 = v34;
  v219 = v45;
  v218 = v46;
  v213 = v53;
  if (v57)
  {
    LODWORD(v223) = v56;
    v224 = v55;
    v59 = swift_slowAlloc();
    v206 = swift_slowAlloc();
    v255 = v206;
    *v59 = 136446466;
    sub_224D407A8(&unk_281350E08, MEMORY[0x277CF99B8]);
    v60 = sub_224DAFD28();
    v61 = v53;
    v63 = v62;
    v64 = *(v61 + 8);
    v64(v44, v34);
    v65 = sub_224A33F74(v60, v63, &v255);

    *(v59 + 4) = v65;
    *(v59 + 12) = 2080;
    v66 = v229;
    sub_224DAC288();
    v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
    v68 = *(v67 - 8);
    if ((*(v68 + 48))(v66, 1, v67) == 1)
    {
      sub_224A3311C(v66, &qword_27D6F56C0, &unk_224DB3580);
      v69 = 0;
      v70 = 1;
    }

    else
    {
      v69 = sub_224DAA1F8();
      v70 = v73;
      (*(v68 + 8))(v66, v67);
    }

    aBlock = v69;
    v248 = v70;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6AA0, &qword_224DC11A0);
    v74 = sub_224DAEE28();
    v76 = v75;
    v64(v41, v233);
    v77 = sub_224A33F74(v74, v76, &v255);

    *(v59 + 14) = v77;
    v78 = v224;
    _os_log_impl(&dword_224A2F000, v224, v223, "%{public}s reload: begin for host %s", v59, 0x16u);
    v79 = v206;
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v79, -1, -1);
    MEMORY[0x22AA5EED0](v59, -1, -1);

    v206 = v218[1];
    v206(v51, v219);
    v72 = v240;
  }

  else
  {

    v71 = *(v53 + 8);
    v71(v41, v34);
    v71(v44, v34);
    v206 = v46[1];
    v206(v51, v45);
    v72 = v58;
  }

  v80 = swift_allocObject();
  sub_224DAD198();
  aBlock = 0;
  v248 = 0xE000000000000000;
  sub_224DAF938();

  aBlock = 0xD000000000000010;
  v248 = 0x8000000224DCF6C0;
  v81 = sub_224DAC2A8();
  v82 = [v81 extensionIdentity];

  v83 = [v82 description];
  v84 = sub_224DAEE18();
  v86 = v85;

  MEMORY[0x22AA5D210](v84, v86);

  v87 = sub_224DAD188();
  v224 = v80;
  v80[2].isa = v87;
  v223 = swift_allocBox();
  v89 = v88;
  v90 = v243[7];
  (v90)(v88, 1, 1, v245);
  v91 = sub_224DAC2A8();
  v92 = [v91 extensionIdentity];

  v93 = *MEMORY[0x277CFA130];
  swift_beginAccess();
  v94 = v244;
  sub_224A3796C(v92 + v93, v244, &unk_27D6F5060, &qword_224DB5620);

  v95 = v237;
  v96 = v241;
  v97 = (*(v237 + 48))(v94, 1, v241);
  v98 = v239;
  if (v97 == 1)
  {
    sub_224A3311C(v94, &unk_27D6F5060, &qword_224DB5620);
    v99 = 0;
    goto LABEL_9;
  }

  (*(v95 + 32))(v232, v94, v96);
  v103 = sub_224DA9FE8();
  v105 = v104;
  v106 = objc_allocWithZone(MEMORY[0x277CC1E70]);
  v99 = 0;
  v107 = sub_224A921B4(v103, v105, 0);
  if (v107)
  {
    v153 = v107;
    if ([v107 developerType] == 1)
    {
      v244 = 0;
      if (qword_2813507E8 != -1)
      {
        swift_once();
      }

      v154 = qword_281364CC0;
      v155 = v204;
      v231 = v154;
      sub_224DAB1E8();
      v156 = v245;
      (v90)(v155, 0, 1, v245);
      sub_224A838C0(v155, v89, &qword_27D6F4270, &qword_224DB6580);
      LODWORD(v229) = sub_224DAF4B8();
      v157 = v205;
      sub_224A3796C(v89, v205, &qword_27D6F4270, &qword_224DB6580);
      v158 = v243;
      if ((v243[6])(v157, 1, v156) == 1)
      {
        __break(1u);
LABEL_89:
        type metadata accessor for EmptyKey();
        sub_224DAFDD8();
        __break(1u);
        return;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4278, &unk_224DB79B0);
      v90 = swift_allocObject();
      *(v90 + 16) = xmmword_224DB3100;
      v159 = sub_224DAC2A8();
      v160 = [v159 extensionIdentity];

      v161 = *MEMORY[0x277CFA138];
      swift_beginAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
      v162 = sub_224DA9FE8();
      v164 = v163;
      *(v90 + 56) = MEMORY[0x277D837D0];
      *(v90 + 64) = sub_224A92300();
      *(v90 + 32) = v162;
      *(v90 + 40) = v164;
      swift_endAccess();

      sub_224DAB1D8();

      (*(v237 + 8))(v232, v241);
      (v158[1])(v157, v156);
      v100 = v238;
      v98 = v239;
      v99 = v244;
LABEL_10:
      v101 = v234;
      v102 = v100[2];
      if (!v102)
      {
        goto LABEL_16;
      }

      goto LABEL_14;
    }

    (*(v237 + 8))(v232, v241);

LABEL_9:
    v100 = v238;
    goto LABEL_10;
  }

  v101 = v234;
  (*(v237 + 8))(v232, v241);
  v100 = v238;
  v102 = v238[2];
  if (!v102)
  {
LABEL_16:
    v111 = v230;
    sub_224A3796C(v89, v230, &qword_27D6F4270, &qword_224DB6580);
    v112 = v243;
    p_aBlock = v245;
    if ((v243[6])(v111, 1, v245) == 1)
    {
      sub_224A3311C(v111, &qword_27D6F4270, &qword_224DB6580);
    }

    else
    {
      v90 = v228;
      (*(v112 + 32))(v228, v111, p_aBlock);
      sub_224DAF4A8();
      if (qword_2813507E8 != -1)
      {
LABEL_86:
        swift_once();
      }

      sub_224DAB1D8();
      (*(v112 + 8))(v90, p_aBlock);
    }

    sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
    (*(v220 + 104))(v222, *MEMORY[0x277CE3C38], v221);
    aBlock = 0;
    v248 = 0xE000000000000000;
    sub_224DAF938();
    MEMORY[0x22AA5D210](0xD000000000000052, 0x8000000224DCF6E0);
    sub_224D407A8(&unk_281350E08, MEMORY[0x277CF99B8]);
    v113 = sub_224DAFD28();
    MEMORY[0x22AA5D210](v113);

    MEMORY[0x22AA5D210](0x746E616972617620, 0xED00003A7379654BLL);
    v114 = type metadata accessor for EmptyKey();
    v115 = MEMORY[0x22AA5D380](v72, v114);
    MEMORY[0x22AA5D210](v115);

    v116 = sub_224DAF638();
    v225(v116, 1);

    return;
  }

LABEL_14:
  v244 = v99;
  v108 = v100[3];

  (v102)(v246);
  p_aBlock = v102;
  v110 = v227;
  if ((*(v227 + 48))(v101, 1, v98) == 1)
  {
    sub_224A3D418(p_aBlock);
    sub_224A3311C(v101, &qword_27D6F4808, &unk_224DB7990);
    goto LABEL_16;
  }

  v205 = p_aBlock;
  (*(v110 + 32))(v236, v101, v98);
  v117 = MEMORY[0x277D84F90];
  v254 = MEMORY[0x277D84F90];
  v118 = sub_224DA2B24(MEMORY[0x277D84F90]);
  v243 = sub_224DA2C34(v117);
  if (v72 >> 62)
  {
    v112 = sub_224DAF838();
  }

  else
  {
    v112 = *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v204 = v108;
  if (v112)
  {
    v119 = 0;
    v230 = OBJC_IVAR____TtC10ChronoCore21ControlReloadStrategy_isPreview;
    v232 = (v72 & 0xC000000000000001);
    v231 = (v72 & 0xFFFFFFFFFFFFFF8);
    v234 = MEMORY[0x277D84F90];
    v229 = (v227 + 16);
    v228 = v112;
    while (1)
    {
      if (v232)
      {
        v90 = MEMORY[0x22AA5DCC0](v119, v72);
        v121 = v119 + 1;
        if (__OFADD__(v119, 1))
        {
          goto LABEL_81;
        }
      }

      else
      {
        if (v119 >= v231[2])
        {
          goto LABEL_82;
        }

        v90 = *(v72 + 8 * v119 + 32);

        v121 = v119 + 1;
        if (__OFADD__(v119, 1))
        {
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
          goto LABEL_86;
        }
      }

      v237 = v121;
      v123 = v100[14];
      v122 = v100[15];
      swift_getObjectType();
      v124 = *(*(v122 + 16) + 16);
      v125 = v244;
      v72 = sub_224DAC438();
      v127 = v125;
      v241 = v90;
      if (v125)
      {
        break;
      }

      v128 = v126;
      swift_getObjectType();
      swift_unknownObjectRetain();
      v129 = sub_224DABCE8();
      v244 = 0;
      v130 = v129;
      swift_unknownObjectRelease();
      swift_unknownObjectRetain();
      v245 = v130;

      v131 = v243;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      aBlock = v131;
      sub_224B237F4(v72, v128, v90, isUniquelyReferenced_nonNull_native);

      v243 = aBlock;
      sub_224DAC2A8();
      (*v229)(v242, v236, v98);
      v133 = v235;
      sub_224DAC288();
      v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
      v135 = *(v134 - 8);
      if ((*(v135 + 48))(v133, 1, v134) == 1)
      {
        sub_224A3311C(v133, &qword_27D6F56C0, &unk_224DB3580);
        v90 = 0;
      }

      else
      {
        sub_224DAA1F8();
        v90 = v136;
        (*(v135 + 8))(v133, v134);
      }

      sub_224DAEA38();
      v100 = v238;
      v137 = *(v238 + v230);
      v138 = sub_224DAEA08();
      MEMORY[0x22AA5D350](v138);
      if (*((v254 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v254 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v152 = *((v254 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_224DAF038();
        v100 = v238;
      }

      sub_224DAF078();
      v112 = v254;
      v234 = v254;
      if ((v118 & 0xC000000000000001) != 0)
      {
        if (v118 < 0)
        {
          p_aBlock = v118;
        }

        else
        {
          p_aBlock = (v118 & 0xFFFFFFFFFFFFFF8);
        }

        v139 = v138;
        v140 = sub_224DAF838();
        if (__OFADD__(v140, 1))
        {
          goto LABEL_84;
        }

        v118 = sub_224D2D7A8(p_aBlock, v140 + 1);
      }

      else
      {
        v141 = v138;
      }

      v142 = swift_isUniquelyReferenced_nonNull_native();
      aBlock = v118;
      p_aBlock = v118;
      v90 = sub_224B304F8();
      v144 = *(v118 + 16);
      v145 = (v143 & 1) == 0;
      v146 = v144 + v145;
      if (__OFADD__(v144, v145))
      {
        goto LABEL_83;
      }

      v112 = v143;
      if (*(v118 + 24) >= v146)
      {
        if ((v142 & 1) == 0)
        {
          p_aBlock = &aBlock;
          sub_224B2A6C8();
        }
      }

      else
      {
        sub_224B19B4C(v146, v142);
        p_aBlock = aBlock;
        v147 = sub_224B304F8();
        if ((v112 & 1) != (v148 & 1))
        {
          goto LABEL_89;
        }

        v90 = v147;
      }

      v98 = v239;
      v118 = aBlock;
      if (v112)
      {
        v120 = aBlock[7];
        p_aBlock = *(v120 + 8 * v90);
        *(v120 + 8 * v90) = v138;
        swift_unknownObjectRelease();
      }

      else
      {
        aBlock[(v90 >> 6) + 8] |= 1 << v90;
        *(*(v118 + 48) + 8 * v90) = v241;
        *(*(v118 + 56) + 8 * v90) = v138;
        swift_unknownObjectRelease();

        v149 = *(v118 + 16);
        v150 = __OFADD__(v149, 1);
        v151 = v149 + 1;
        if (v150)
        {
          goto LABEL_85;
        }

        *(v118 + 16) = v151;
      }

      ++v119;
      v112 = v228;
      v72 = v240;
      if (v237 == v228)
      {
        goto LABEL_62;
      }
    }

    v176 = v90;

    v242 = 0;
    v177 = v125;

    v90 = v216;
    v178 = v219;
    v208(v216, v238 + v207, v219);

    v179 = v177;
    p_aBlock = v90;
    v180 = sub_224DAB228();
    v181 = sub_224DAF288();

    v182 = os_log_type_enabled(v180, v181);
    v244 = v177;
    if (v182)
    {
      p_aBlock = swift_slowAlloc();
      v183 = swift_slowAlloc();
      v184 = swift_slowAlloc();
      aBlock = v184;
      *p_aBlock = 136446466;
      v185 = *(v176 + 16);
      v186 = *(v176 + 24);

      v90 = sub_224A33F74(v185, v186, &aBlock);

      *(p_aBlock + 4) = v90;
      *(p_aBlock + 6) = 2114;
      v187 = v177;
      v188 = _swift_stdlib_bridgeErrorToNSError();
      *(p_aBlock + 14) = v188;
      *v183 = v188;
      _os_log_impl(&dword_224A2F000, v180, v181, "%{public}s reload: could not create file handle because %{public}@", p_aBlock, 0x16u);
      sub_224A3311C(v183, &unk_27D6F69F0, &unk_224DB3900);
      MEMORY[0x22AA5EED0](v183, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v184);
      MEMORY[0x22AA5EED0](v184, -1, -1);
      MEMORY[0x22AA5EED0](p_aBlock, -1, -1);

      v189 = v216;
      v190 = v219;
    }

    else
    {

      v189 = v90;
      v190 = v178;
    }

    v206(v189, v190);
    v191 = 0;
    v193 = v243 + 8;
    v192 = v243[8];
    v194 = 1 << *(v243 + 32);
    v195 = -1;
    if (v194 < 64)
    {
      v195 = ~(-1 << v194);
    }

    v196 = v195 & v192;
    v197 = (v194 + 63) >> 6;
    v245 = "MobileTimelineReload";
    v112 = v241;
    if ((v195 & v192) != 0)
    {
      while (1)
      {
        v198 = v191;
LABEL_74:
        v199 = __clz(__rbit64(v196));
        v196 &= v196 - 1;
        v200 = (v243[7] + ((v198 << 10) | (16 * v199)));
        v90 = *v200;
        v246 = v200[1];
        swift_getObjectType();
        aBlock = 0;
        v248 = 0xE000000000000000;
        swift_unknownObjectRetain();
        sub_224DAF938();
        MEMORY[0x22AA5D210](0xD00000000000001FLL, v245 | 0x8000000000000000);
        v253 = v244;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5620, &unk_224DB3350);
        sub_224DAFA48();
        p_aBlock = v90;
        sub_224DABD08();
        swift_unknownObjectRelease();

        v112 = v241;
        if (!v196)
        {
          goto LABEL_70;
        }
      }
    }

    while (1)
    {
LABEL_70:
      v198 = v191 + 1;
      if (__OFADD__(v191, 1))
      {
        __break(1u);
        goto LABEL_81;
      }

      if (v198 >= v197)
      {
        break;
      }

      v196 = v193[v198];
      ++v191;
      if (v196)
      {
        v191 = v198;
        goto LABEL_74;
      }
    }

    sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
    (*(v220 + 104))(v222, *MEMORY[0x277CE3C10], v221);
    v201 = v244;
    v202 = v244;
    v203 = sub_224DAF638();
    v225(v203, 1);
    sub_224A3D418(v205);

    (*(v227 + 8))(v236, v239);

    if (!v127)
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v234 = MEMORY[0x277D84F90];
LABEL_62:
    sub_224DAEA38();
    v245 = sub_224DAEFF8();

    v210(v217, v246, v233);
    v165 = v213;
    v166 = (*(v213 + 80) + 40) & ~*(v213 + 80);
    v167 = (v212 + v166 + 7) & 0xFFFFFFFFFFFFFFF8;
    v168 = (v167 + 15) & 0xFFFFFFFFFFFFFFF8;
    v169 = (v168 + 23) & 0xFFFFFFFFFFFFFFF8;
    v170 = swift_allocObject();
    v171 = v243;
    *(v170 + 2) = v118;
    *(v170 + 3) = v171;
    *(v170 + 4) = v100;
    (*(v165 + 32))(&v170[v166], v217, v233);
    *&v170[v167] = v223;
    v172 = &v170[v168];
    v173 = v226;
    *v172 = v225;
    *(v172 + 1) = v173;
    *&v170[v169] = v224;
    *&v170[(v169 + 15) & 0xFFFFFFFFFFFFFFF8] = v214;
    v251 = sub_224D40608;
    v252 = v170;
    aBlock = MEMORY[0x277D85DD0];
    v248 = 1107296256;
    v249 = sub_224BC6D2C;
    v250 = &block_descriptor_54;
    v174 = _Block_copy(&aBlock);

    v175 = v245;
    [v215 getControlTemplatesWithRequests:v245 completion:{v174, v204}];
    sub_224A3D418(v205);
    _Block_release(v174);

    (*(v227 + 8))(v236, v98);
  }
}

uint64_t sub_224D38464(void *a1, uint64_t a2, uint64_t a3, char *a4, NSObject *a5, uint64_t a6, char *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v175 = a5;
  v177 = a4;
  v176 = a3;
  v173 = a1;
  v13 = sub_224DAE6E8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v143[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4270, &qword_224DB6580);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v22 = &v143[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v20);
  v155 = &v143[-v23];
  v167 = sub_224DAB1F8();
  v166 = *(v167 - 8);
  v24 = *(v166 + 64);
  v25 = MEMORY[0x28223BE20](v167);
  v152 = &v143[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v25);
  v151 = &v143[-v27];
  v164 = sub_224DAC2B8();
  v163 = *(v164 - 8);
  v28 = *(v163 + 64);
  v29 = MEMORY[0x28223BE20](v164);
  v154 = &v143[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v29);
  v153 = &v143[-v31];
  v178 = sub_224DAB258();
  v32 = *(v178 - 8);
  v33 = *(v32 + 64);
  v34 = MEMORY[0x28223BE20](v178);
  v161 = &v143[-((v35 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v36 = MEMORY[0x28223BE20](v34);
  v160 = &v143[-v37];
  v38 = MEMORY[0x28223BE20](v36);
  v181 = &v143[-v39];
  MEMORY[0x28223BE20](v38);
  v150 = &v143[-v40];
  v41 = swift_projectBox();
  v192 = sub_224DA2A0C(MEMORY[0x277D84F90]);
  v170 = a9;
  v169 = a7;
  v168 = a8;
  v159 = v13;
  v158 = v14;
  v157 = v17;
  v165 = v41;
  v156 = v22;
  if ((a2 & 0xC000000000000001) != 0)
  {
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v45 = sub_224DAFA68() | 0x8000000000000000;
  }

  else
  {
    v46 = -1 << *(a2 + 32);
    v43 = ~v46;
    v42 = a2 + 64;
    v47 = -v46;
    if (v47 < 64)
    {
      v48 = ~(-1 << v47);
    }

    else
    {
      v48 = -1;
    }

    v44 = v48 & *(a2 + 64);
    v45 = a2;
  }

  v172 = a10;

  LODWORD(ObjectType) = 0;
  v49 = 0;
  v179 = 0;
  v162 = v43;
  v50 = (v43 + 64) >> 6;
  v182 = (v32 + 8);
  v183 = (v32 + 16);
  v149 = 0x8000000224DC7DB0;
  *&v51 = 136446210;
  v174 = v51;
  *&v51 = 136446466;
  v148 = v51;
  v52 = v178;
  v53 = v177;
  v54 = v176;
  v180 = v42;
  v184 = v50;
  v185 = v45;
LABEL_8:
  v55 = v49;
  if ((v45 & 0x8000000000000000) == 0)
  {
    while (1)
    {
      v56 = v55;
      v57 = v44;
      v49 = v55;
      if (!v44)
      {
        break;
      }

LABEL_16:
      v187 = (v57 - 1) & v57;
      v58 = (v49 << 9) | (8 * __clz(__rbit64(v57)));
      v59 = *(v45 + 56);
      v60 = *(*(v45 + 48) + v58);
      v61 = *(v59 + v58);

      v62 = v61;
      if (!v60)
      {
        goto LABEL_31;
      }

LABEL_20:
      v186 = v62;
      if (*(v54 + 16) && (v66 = sub_224B304F8(), (v67 & 1) != 0))
      {
        v68 = v53;
        v69 = v52;
        v70 = (*(v54 + 56) + 16 * v66);
        v71 = *v70;
        v72 = v70[1];
        v73 = swift_unknownObjectRetain();
        a2 = MEMORY[0x22AA5E4C0](v73);
        v74 = v68;
        v75 = v68;
        v76 = v186;
        v77 = v179;
        sub_224D39784(v173, v75, v186, v175, v71, v72, v60, &v192, v172, &v190);
        if (v77)
        {
          v89 = v190;
          objc_autoreleasePoolPop(a2);
          v179 = v89;
          swift_getErrorValue();
          v90 = sub_224D1680C(v188);
          v92 = v91;
          v147 = v91;
          ObjectType = swift_getObjectType();
          v190 = 0;
          v191 = 0xE000000000000000;
          sub_224DAF938();

          v190 = 0xD000000000000020;
          v191 = v149;
          v146 = v90;
          MEMORY[0x22AA5D210](v90, v92);
          sub_224DABD08();

          v93 = v150;
          v52 = v69;
          v94 = v147;
          (*v183)(v150, &v74[OBJC_IVAR____TtC10ChronoCore21ControlReloadStrategy_logger], v52);

          a2 = sub_224DAB228();
          v95 = sub_224DAF288();

          if (os_log_type_enabled(a2, v95))
          {
            v96 = swift_slowAlloc();
            v145 = a2;
            a2 = v96;
            ObjectType = swift_slowAlloc();
            v190 = ObjectType;
            *a2 = v148;
            v144 = v95;
            v97 = *(v60 + 16);
            v98 = *(v60 + 24);

            v99 = sub_224A33F74(v97, v98, &v190);

            *(a2 + 4) = v99;
            *(a2 + 12) = 2082;
            v100 = sub_224A33F74(v146, v94, &v190);

            *(a2 + 14) = v100;
            v101 = v145;
            _os_log_impl(&dword_224A2F000, v145, v144, "%{public}s reload: failed with error %{public}s)", a2, 0x16u);
            v102 = ObjectType;
            swift_arrayDestroy();
            MEMORY[0x22AA5EED0](v102, -1, -1);
            MEMORY[0x22AA5EED0](a2, -1, -1);
            swift_unknownObjectRelease();

            (*v182)(v150, v52);
          }

          else
          {

            swift_unknownObjectRelease();

            (*v182)(v93, v52);
          }

          v179 = 0;
          LODWORD(ObjectType) = 1;
          v42 = v180;
          v50 = v184;
          v45 = v185;
          v44 = v187;
          v53 = v74;
          goto LABEL_8;
        }

        v179 = 0;
        objc_autoreleasePoolPop(a2);

        swift_unknownObjectRelease();

        v55 = v49;
        v44 = v187;
        v42 = v180;
        v50 = v184;
        v45 = v185;
        v52 = v69;
        v53 = v74;
        if ((v185 & 0x8000000000000000) != 0)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v78 = v181;
        (*v183)(v181, &v53[OBJC_IVAR____TtC10ChronoCore21ControlReloadStrategy_logger], v52);

        a2 = sub_224DAB228();
        v79 = sub_224DAF288();

        if (os_log_type_enabled(a2, v79))
        {
          v80 = swift_slowAlloc();
          v81 = swift_slowAlloc();
          v190 = v81;
          *v80 = v174;
          v82 = v78;
          v84 = *(v60 + 16);
          v83 = *(v60 + 24);

          v85 = sub_224A33F74(v84, v83, &v190);

          *(v80 + 4) = v85;
          v53 = v177;
          _os_log_impl(&dword_224A2F000, a2, v79, "%{public}s reload: missing file promise", v80, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v81);
          v86 = v81;
          v52 = v178;
          MEMORY[0x22AA5EED0](v86, -1, -1);
          v87 = v182;
          v54 = v176;
          MEMORY[0x22AA5EED0](v80, -1, -1);

          v88 = v82;
          v42 = v180;
          (*v87)(v88, v52);
        }

        else
        {

          (*v182)(v78, v52);
        }

        v55 = v49;
        v44 = v187;
        v50 = v184;
        v45 = v185;
        if ((v185 & 0x8000000000000000) != 0)
        {
          goto LABEL_18;
        }
      }
    }

    while (1)
    {
      v49 = v56 + 1;
      if (__OFADD__(v56, 1))
      {
        break;
      }

      if (v49 >= v50)
      {
        goto LABEL_31;
      }

      v57 = *(v42 + 8 * v49);
      ++v56;
      if (v57)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
    goto LABEL_51;
  }

LABEL_18:
  v63 = sub_224DAFB18();
  if (v63)
  {
    v65 = v64;
    v189 = v63;
    type metadata accessor for EmptyKey();
    swift_dynamicCast();
    v60 = v190;
    v189 = v65;
    sub_224DAEA38();
    swift_dynamicCast();
    v62 = v190;
    v49 = v55;
    v187 = v44;
    if (v60)
    {
      goto LABEL_20;
    }
  }

LABEL_31:
  sub_224A3B7E4();
  v103 = *v183;
  v104 = v163;
  v105 = (v163 + 16);
  if (ObjectType)
  {
    v106 = v160;
    v103(v160, &v53[OBJC_IVAR____TtC10ChronoCore21ControlReloadStrategy_logger], v52);
    v107 = v153;
    v108 = v164;
    (*v105)(v153, v175, v164);
    v109 = sub_224DAB228();
    v110 = sub_224DAF2A8();
    if (os_log_type_enabled(v109, v110))
    {
      v111 = swift_slowAlloc();
      v112 = swift_slowAlloc();
      v113 = v182;
      v114 = v112;
      v190 = v112;
      *v111 = v174;
      sub_224D407A8(&unk_281350E08, MEMORY[0x277CF99B8]);
      v115 = sub_224DAFD28();
      v116 = v107;
      v118 = v117;
      (*(v104 + 8))(v116, v108);
      v119 = sub_224A33F74(v115, v118, &v190);

      *(v111 + 4) = v119;
      _os_log_impl(&dword_224A2F000, v109, v110, "%{public}s reload: failed", v111, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v114);
      MEMORY[0x22AA5EED0](v114, -1, -1);
      MEMORY[0x22AA5EED0](v111, -1, -1);

      (*v113)(v160, v52);
    }

    else
    {

      (*(v104 + 8))(v107, v108);
      (*v182)(v106, v52);
    }

    v42 = v170;
    v53 = v169;
    a2 = v167;
    v54 = v166;
    v52 = v159;
    v45 = v158;
    v44 = v157;
    v131 = v155;
    v132 = v165;
    swift_beginAccess();
    sub_224A3796C(v132, v131, &qword_27D6F4270, &qword_224DB6580);
    if ((*(v54 + 48))(v131, 1, a2) == 1)
    {
      sub_224A3311C(v131, &qword_27D6F4270, &qword_224DB6580);
LABEL_44:
      sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
      (*(v45 + 104))(v44, *MEMORY[0x277CE3C28], v52);
      v139 = sub_224DAF638();
      (v53)(v139, 1);

      goto LABEL_49;
    }

    v138 = v151;
    (*(v54 + 32))(v151, v131, a2);
    sub_224DAF4A8();
    if (qword_2813507E8 == -1)
    {
LABEL_43:
      sub_224DAB1D8();
      (*(v54 + 8))(v138, a2);
      goto LABEL_44;
    }

LABEL_51:
    swift_once();
    v138 = v151;
    goto LABEL_43;
  }

  v120 = v161;
  v103(v161, &v53[OBJC_IVAR____TtC10ChronoCore21ControlReloadStrategy_logger], v52);
  v121 = v154;
  v122 = v164;
  (*v105)(v154, v175, v164);
  v123 = sub_224DAB228();
  v124 = sub_224DAF2A8();
  if (os_log_type_enabled(v123, v124))
  {
    v125 = swift_slowAlloc();
    v126 = swift_slowAlloc();
    v190 = v126;
    *v125 = v174;
    sub_224D407A8(&unk_281350E08, MEMORY[0x277CF99B8]);
    v127 = sub_224DAFD28();
    v129 = v128;
    (*(v104 + 8))(v121, v122);
    v130 = sub_224A33F74(v127, v129, &v190);

    *(v125 + 4) = v130;
    _os_log_impl(&dword_224A2F000, v123, v124, "%{public}s reload: succeeded", v125, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v126);
    MEMORY[0x22AA5EED0](v126, -1, -1);
    MEMORY[0x22AA5EED0](v125, -1, -1);

    (*v182)(v161, v52);
  }

  else
  {

    (*(v104 + 8))(v121, v122);
    (*v182)(v120, v52);
  }

  v42 = v170;
  v133 = v169;
  v134 = v167;
  v135 = v166;
  v136 = v156;
  v137 = v165;
  swift_beginAccess();
  sub_224A3796C(v137, v136, &qword_27D6F4270, &qword_224DB6580);
  if ((*(v135 + 48))(v136, 1, v134) == 1)
  {
    sub_224A3311C(v136, &qword_27D6F4270, &qword_224DB6580);
  }

  else
  {
    v140 = v152;
    (*(v135 + 32))(v152, v136, v134);
    sub_224DAF4A8();
    if (qword_2813507E8 != -1)
    {
      swift_once();
      v140 = v152;
    }

    sub_224DAB1D8();
    (*(v135 + 8))(v140, v134);
  }

  (v133)(v192, 0);
LABEL_49:
  swift_beginAccess();
  v141 = *(v42 + 16);
  *(v42 + 16) = 0;
}

void sub_224D39784(id a1, char *a2, void *a3, NSObject *a4, uint64_t a5, void *a6, uint64_t a7, uint64_t *a8, uint64_t a9, void *a10)
{
  v196 = a8;
  v201 = a7;
  v204 = a5;
  v205 = a6;
  v203 = a4;
  v198 = a3;
  v211 = a2;
  v218 = *MEMORY[0x277D85DE8];
  v11 = sub_224DA9688();
  v200 = *(v11 - 8);
  v12 = *(v200 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v190 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v190 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v190 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v190 - v22;
  v199 = sub_224DAE4F8();
  v202 = *(v199 - 8);
  v24 = *(v202 + 8);
  v25 = MEMORY[0x28223BE20](v199);
  v194 = &v190 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v197 = &v190 - v27;
  v28 = sub_224DAB258();
  v212 = *(v28 - 8);
  v213 = v28;
  v29 = v212[8];
  v30 = MEMORY[0x28223BE20](v28);
  v32 = &v190 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v30);
  v35 = &v190 - v34;
  v36 = MEMORY[0x28223BE20](v33);
  v38 = &v190 - v37;
  v39 = MEMORY[0x28223BE20](v36);
  v195 = (&v190 - v40);
  MEMORY[0x28223BE20](v39);
  v206 = &v190 - v41;
  v42 = sub_224DAE6E8();
  v208 = *(v42 - 8);
  v209 = v42;
  v43 = v208[8];
  MEMORY[0x28223BE20](v42);
  v207 = &v190 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    v202 = v18;
    v55 = v21;
    v199 = v35;
    v197 = v32;
    v206 = v11;
    swift_getObjectType();
    v56 = v210;
    sub_224DABCF8();
    if (v56)
    {
      a1 = v56;
LABEL_16:
      *a10 = a1;
      goto LABEL_17;
    }

    v205 = 0;
    v80 = v212[2];
    v192 = OBJC_IVAR____TtC10ChronoCore21ControlReloadStrategy_logger;
    v81 = v38;
    v82 = v213;
    v194 = (v212 + 2);
    v193 = v80;
    v80(v38, &v211[OBJC_IVAR____TtC10ChronoCore21ControlReloadStrategy_logger], v213);
    v83 = v200;
    v84 = *(v200 + 16);
    v85 = v55;
    v204 = v23;
    v86 = v206;
    v84(v55, v23, v206);
    v87 = v201;

    v88 = sub_224DAB228();
    v89 = sub_224DAF278();

    if (os_log_type_enabled(v88, v89))
    {
      v90 = swift_slowAlloc();
      v210 = swift_slowAlloc();
      v215[0] = v210;
      *v90 = 136446466;
      v195 = v88;
      v92 = *(v87 + 16);
      v91 = *(v87 + 24);

      v93 = sub_224A33F74(v92, v91, v215);

      *(v90 + 4) = v93;
      *(v90 + 12) = 2082;
      sub_224DA9548();
      LODWORD(v191) = v89;
      v94 = v202;
      sub_224DA9568();
      v95 = *(v83 + 8);
      v95(v15, v86);
      sub_224D407A8(&qword_281351A70, MEMORY[0x277CC9260]);
      v96 = sub_224DAFD28();
      v97 = v81;
      v99 = v98;
      v95(v94, v86);
      v95(v85, v86);
      v87 = v201;
      v100 = sub_224A33F74(v96, v99, v215);

      *(v90 + 14) = v100;
      v101 = v195;
      _os_log_impl(&dword_224A2F000, v195, v191, "%{public}s: %{public}s", v90, 0x16u);
      v102 = v210;
      swift_arrayDestroy();
      MEMORY[0x22AA5EED0](v102, -1, -1);
      v103 = v90;
      v82 = v213;
      MEMORY[0x22AA5EED0](v103, -1, -1);

      v104 = v212[1];
      v105 = v97;
    }

    else
    {

      v95 = *(v83 + 8);
      v95(v85, v86);
      v104 = v212[1];
      v105 = v81;
    }

    v195 = v104;
    (v104)(v105, v82);
    v210 = objc_opt_self();
    v114 = [v210 defaultManager];
    v115 = v204;
    sub_224DA9658();
    v116 = sub_224DAEDE8();

    v215[0] = 0;
    v117 = [v114 attributesOfItemAtPath:v116 error:v215];

    v118 = v215[0];
    a1 = v205;
    if (!v117)
    {
      v146 = v215[0];
      a1 = sub_224DA9528();

      swift_willThrow();
      v95(v115, v206);
      goto LABEL_16;
    }

    type metadata accessor for FileAttributeKey(0);
    sub_224D407A8(&qword_281350A08, type metadata accessor for FileAttributeKey);
    v119 = sub_224DAECE8();
    v120 = v118;

    v121 = *(v119 + 16);
    v202 = v95;
    if (v121 && (v122 = sub_224B0BA4C(*MEMORY[0x277CCA1C0]), (v123 & 1) != 0))
    {
      sub_224A33E0C(*(v119 + 56) + 32 * v122, v215);

      sub_224A3B79C(0, &qword_281350850, 0x277CCABB0);
      if (swift_dynamicCast())
      {
        v124 = v214;
        if ([v214 unsignedLongLongValue] > 0x100000)
        {
          v125 = v199;
          v193(v199, &v211[v192], v82);

          v126 = v124;
          v127 = sub_224DAB228();
          v128 = sub_224DAF288();

          v129 = os_log_type_enabled(v127, v128);
          v211 = v126;
          if (v129)
          {
            v130 = swift_slowAlloc();
            v205 = swift_slowAlloc();
            v131 = swift_slowAlloc();
            v215[0] = v131;
            *v130 = 136446466;
            v133 = *(v87 + 16);
            v132 = *(v87 + 24);

            v134 = v82;
            v135 = sub_224A33F74(v133, v132, v215);

            *(v130 + 4) = v135;
            *(v130 + 12) = 2114;
            *(v130 + 14) = v126;
            v136 = v205;
            *v205 = v126;
            v137 = v126;
            _os_log_impl(&dword_224A2F000, v127, v128, "%{public}s reload: failed with too large archive %{public}@", v130, 0x16u);
            sub_224A3311C(v136, &unk_27D6F69F0, &unk_224DB3900);
            MEMORY[0x22AA5EED0](v136, -1, -1);
            __swift_destroy_boxed_opaque_existential_1(v131);
            MEMORY[0x22AA5EED0](v131, -1, -1);
            MEMORY[0x22AA5EED0](v130, -1, -1);

            v138 = v125;
            v139 = v134;
          }

          else
          {

            v138 = v125;
            v139 = v82;
          }

          (v195)(v138, v139);
          v182 = v206;
          v183 = [v210 defaultManager];
          v184 = v204;
          v185 = sub_224DA95F8();
          v215[0] = 0;
          v186 = [v183 removeItemAtURL:v185 error:v215];

          if (v186)
          {
            v187 = v215[0];
          }

          else
          {
            v188 = v215[0];
            v189 = sub_224DA9528();

            swift_willThrow();
          }

          sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
          (v208[13])(v207, *MEMORY[0x277CE3C28], v209);
          a1 = sub_224DAF638();
          swift_willThrow();

          v144 = v184;
          v145 = v182;
          goto LABEL_33;
        }
      }
    }

    else
    {
    }

    v140 = v211;
    v142 = *(v211 + 14);
    v141 = *(v211 + 15);
    swift_getObjectType();
    v143 = *(*(v141 + 8) + 8);
    sub_224DAC418();
    if (!a1)
    {
      v153 = v215[0];
      sub_224DAC9F8();
      v154 = v216;
      v155 = v217;
      v156 = __swift_project_boxed_opaque_existential_1(v215, v216);
      v157 = sub_224DAC2A8();
      v158 = [v157 extensionIdentity];

      sub_224D3AB88(v156, v158, v154, v155);
      __swift_destroy_boxed_opaque_existential_1(v215);
      sub_224D3F078(v203);
      v210 = 0;
      v191 = v153;
      v173 = &v140[v192];
      v174 = v197;
      v175 = v213;
      v193(v197, v173, v213);
      v176 = v198;
      v177 = sub_224DAB228();
      v178 = sub_224DAF2A8();

      if (os_log_type_enabled(v177, v178))
      {
        v179 = swift_slowAlloc();
        v180 = swift_slowAlloc();
        *v179 = 138543362;
        v181 = sub_224DAEA28();
        *(v179 + 4) = v181;
        *v180 = v181;
        _os_log_impl(&dword_224A2F000, v177, v178, "Reload %{public}@: succeeded", v179, 0xCu);
        sub_224A3311C(v180, &unk_27D6F69F0, &unk_224DB3900);
        v175 = v213;
        MEMORY[0x22AA5EED0](v180, -1, -1);
        MEMORY[0x22AA5EED0](v179, -1, -1);
      }

      (v195)(v174, v175);
      (v202)(v204, v206);
      v167 = v196;
      goto LABEL_44;
    }

    v144 = v204;
    v145 = v206;
LABEL_33:
    (v202)(v144, v145);
    goto LABEL_16;
  }

  v45 = a1;
  v46 = sub_224DA9518();
  v47 = [v46 domain];
  v48 = sub_224DAEE18();
  v50 = v49;

  v51 = *MEMORY[0x277CFA188];
  if (v48 == sub_224DAEE18() && v50 == v52)
  {

    v53 = v213;
    v54 = v211;
  }

  else
  {
    v57 = sub_224DAFD88();

    v53 = v213;
    v54 = v211;
    if ((v57 & 1) == 0)
    {
LABEL_15:
      swift_willThrow();

      goto LABEL_16;
    }
  }

  v58 = [v46 code];
  v59 = v207;
  v60 = v208;
  v61 = v209;
  (v208[13])(v207, *MEMORY[0x277CE3C50], v209);
  v62 = sub_224DAE6D8();
  v211 = v46;
  v63 = v62;
  (v60[1])(v59, v61);
  v64 = v58 == v63;
  v46 = v211;
  if (!v64)
  {
    goto LABEL_15;
  }

  v65 = v212[2];
  v204 = OBJC_IVAR____TtC10ChronoCore21ControlReloadStrategy_logger;
  v205 = a1;
  v207 = v65;
  v208 = v212 + 2;
  (v65)(v206, v54 + OBJC_IVAR____TtC10ChronoCore21ControlReloadStrategy_logger, v53);
  v66 = v198;
  v67 = sub_224DAB228();
  v68 = sub_224DAF2A8();

  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    *v69 = 138543362;
    v71 = sub_224DAEA28();
    *(v69 + 4) = v71;
    *v70 = v71;
    _os_log_impl(&dword_224A2F000, v67, v68, "Reload %{public}@: error'd due to developer value provider - noting error and continuing.", v69, 0xCu);
    sub_224A3311C(v70, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v70, -1, -1);
    v53 = v213;
    MEMORY[0x22AA5EED0](v69, -1, -1);
  }

  v72 = v212 + 1;
  v209 = v212[1];
  v209(v206, v53);
  v74 = v54[14];
  v73 = v54[15];
  ObjectType = swift_getObjectType();
  v76 = v197;
  sub_224DAEA18();
  v77 = v210;
  v78 = sub_224D3E918(v74, v203, v76, ObjectType, v73);
  v210 = v77;
  if (v77)
  {
    (*(v202 + 1))(v76, v199);

LABEL_14:
    a1 = v210;
    goto LABEL_16;
  }

  v106 = v78;
  v107 = v66;
  v108 = v213;
  v109 = v76;
  v110 = v202 + 8;
  v111 = *(v202 + 1);
  v111(v109, v199);
  v112 = *(v54 + OBJC_IVAR____TtC10ChronoCore21ControlReloadStrategy_isPreview);
  v212 = v72;
  if (v112)
  {
    v113 = v205;
  }

  else
  {
    v191 = v106;
    v147 = v54;
    v148 = v54[16];
    if (v148)
    {
      v202 = v110;
      v149 = v54[17];
      v150 = swift_getObjectType();
      swift_unknownObjectRetain();
      v151 = v194;
      sub_224DAEA18();
      v152 = v210;
      sub_224D3E918(v148, v203, v151, v150, v149);
      v210 = v152;
      v113 = v205;
      if (v152)
      {

        swift_unknownObjectRelease();

        v111(v151, v199);
        goto LABEL_14;
      }

      swift_unknownObjectRelease();

      v111(v151, v199);
      v54 = v147;
    }

    else
    {
      v113 = v205;
    }
  }

  v159 = v195;
  (v207)(v195, v54 + v204, v108);
  v160 = v107;
  v161 = sub_224DAB228();
  v162 = sub_224DAF2A8();

  if (os_log_type_enabled(v161, v162))
  {
    v163 = swift_slowAlloc();
    v164 = swift_slowAlloc();
    *v163 = 138543362;
    v165 = sub_224DAEA28();
    *(v163 + 4) = v165;
    *v164 = v165;
    _os_log_impl(&dword_224A2F000, v161, v162, "Reload %{public}@: error'd due to developer value provider - noted error and continuing.", v163, 0xCu);
    sub_224A3311C(v164, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v164, -1, -1);
    v166 = v163;
    v108 = v213;
    MEMORY[0x22AA5EED0](v166, -1, -1);
  }

  v209(v159, v108);
  v87 = v201;
  v167 = v196;
LABEL_44:
  v168 = sub_224DAC9D8();
  v169 = *v167;
  if ((*v167 & 0xC000000000000001) != 0)
  {
    if (v169 < 0)
    {
      v170 = *v167;
    }

    else
    {
      v170 = v169 & 0xFFFFFFFFFFFFFF8;
    }

    v171 = sub_224DAF838();
    if (__OFADD__(v171, 1))
    {
      __break(1u);
    }

    *v167 = sub_224D2D7E4(v170, v171 + 1);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v215[0] = *v167;
  sub_224B23960(v168, v87, isUniquelyReferenced_nonNull_native);
  *v167 = v215[0];

LABEL_17:
  v79 = *MEMORY[0x277D85DE8];
}

uint64_t sub_224D3AB88(uint64_t a1, void *a2, uint64_t a3, char *a4)
{
  v24[2] = a3;
  v25 = a4;
  v24[1] = a1;
  v6 = sub_224DAE6E8();
  v24[0] = *(v6 - 8);
  v7 = *(v24[0] + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_224DAB258();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v4[8];
  __swift_project_boxed_opaque_existential_1(v4 + 4, v4[7]);
  sub_224DAC6D8();
  if (v27)
  {
    sub_224A36F98(&v26, v28);
    v16 = sub_224DAE828();
    sub_224D3AEF8(v28, v16);
    __swift_destroy_boxed_opaque_existential_1(v28);
  }

  else
  {
    v25 = v9;
    v29 = v6;
    sub_224A3311C(&v26, &unk_27D6F4700, &unk_224DB3A10);
    (*(v11 + 16))(v14, v4 + OBJC_IVAR____TtC10ChronoCore21ControlReloadStrategy_logger, v10);
    v18 = a2;
    v19 = sub_224DAB228();
    v20 = sub_224DAF288();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138543362;
      *(v21 + 4) = v18;
      *v22 = v18;
      v23 = v18;
      _os_log_impl(&dword_224A2F000, v19, v20, "Couldn't find extension for %{public}@", v21, 0xCu);
      sub_224A3311C(v22, &unk_27D6F69F0, &unk_224DB3900);
      MEMORY[0x22AA5EED0](v22, -1, -1);
      MEMORY[0x22AA5EED0](v21, -1, -1);
    }

    (*(v11 + 8))(v14, v10);
    sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
    (*(v24[0] + 104))(v25, *MEMORY[0x277CE3C10], v29);
    sub_224DAF638();
    return swift_willThrow();
  }
}

uint64_t sub_224D3AEF8(uint64_t (*a1)(char *, uint64_t, uint64_t), uint64_t a2)
{
  v19 = a1;
  v4 = sub_224DAE8E8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v4);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a2 + 16);
  if (v10)
  {
    v12 = *(v5 + 16);
    v11 = v5 + 16;
    v18 = v12;
    v13 = (v11 - 8);
    v14 = a2 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v15 = *(v11 + 56);
    while (1)
    {
      v16 = v18(v9, v14, v4);
      MEMORY[0x28223BE20](v16);
      v17 = v20;
      *(&v18 - 4) = v9;
      *(&v18 - 3) = v17;
      *(&v18 - 2) = v19;
      sub_224DAE8D8();
      if (v2)
      {
        break;
      }

      result = (*v13)(v9, v4);
      v14 += v15;
      if (!--v10)
      {
        return result;
      }
    }

    return (*v13)(v9, v4);
  }

  return result;
}

uint64_t sub_224D3B0A8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v116 = a4;
  v120 = a3;
  v127 = a2;
  v5 = sub_224DAE6E8();
  v121 = *(v5 - 8);
  v6 = *(v121 + 64);
  MEMORY[0x28223BE20](v5);
  v122 = &v111 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_224DAB258();
  v132 = *(v8 - 8);
  v9 = *(v132 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = (&v111 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v114 = &v111 - v13;
  v14 = sub_224DAB748();
  v123 = *(v14 - 8);
  v124 = v14;
  v15 = *(v123 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v111 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = sub_224DA9688();
  v18 = *(v128 - 8);
  isa = v18[8].isa;
  v20 = MEMORY[0x28223BE20](v128);
  v112 = &v111 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v117 = &v111 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v118 = &v111 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v115 = &v111 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v126 = &v111 - v29;
  MEMORY[0x28223BE20](v28);
  v125 = &v111 - v30;
  v31 = sub_224DAB788();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  v34 = MEMORY[0x28223BE20](v31);
  v119 = &v111 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x28223BE20](v34);
  v111 = &v111 - v37;
  MEMORY[0x28223BE20](v36);
  v39 = &v111 - v38;
  v40 = sub_224DAB768();
  v130 = *(v40 - 8);
  v131 = v40;
  v41 = *(v130 + 64);
  MEMORY[0x28223BE20](v40);
  v129 = &v111 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = a1;
  if (sub_224DAB778())
  {
    goto LABEL_3;
  }

  sub_224DAE8C8();
  v133 = v18;
  v113 = v12;
  __swift_project_boxed_opaque_existential_1(v135, v135[3]);
  v43 = v113;
  v18 = v133;
  v44 = sub_224DAE848();
  __swift_destroy_boxed_opaque_existential_1(v135);
  if (v44)
  {
LABEL_3:
    v127 = v5;
    v45 = *(v32 + 16);
    v45(v39, v136, v31);
    if ((*(v32 + 88))(v39, v31) == *MEMORY[0x277CDE3E0])
    {
      v113 = v45;
      v119 = v8;
      v133 = v18;
      (*(v32 + 96))(v39, v31);
      v46 = v129;
      v47 = v130;
      v48 = v39;
      v49 = v131;
      (*(v130 + 32))(v129, v48, v131);
      sub_224DAB758();
      v50 = v17;
      v52 = v123;
      v51 = v124;
      if ((*(v123 + 88))(v50, v124) == *MEMORY[0x277CDE3D0])
      {
        (*(v52 + 96))(v50, v51);
        v53 = v133;
        v54 = v50;
        v55 = v128;
        (v133[4].isa)(v125, v54, v128);
        v56 = v116[3];
        v124 = v116[4];
        __swift_project_boxed_opaque_existential_1(v116, v56);
        v57 = v115;
        sub_224DAE2C8();
        sub_224DA9618();
        v59 = v53[1].isa;
        v58 = v53 + 1;
        v124 = v59;
        v59(v57, v55);
        v60 = v118;
        sub_224DA9618();
        sub_224DA95A8();
        sub_224DA95A8();
        LOBYTE(v56) = sub_224DAEEE8();

        if (v56)
        {
          v61 = v128;
          v62 = v124;
          v124(v60, v128);
          v62(v126, v61);
          v62(v125, v61);
          return (*(v130 + 8))(v129, v131);
        }

        else
        {
          v134 = v58;
          v78 = v114;
          (*(v132 + 16))(v114, v120 + OBJC_IVAR____TtC10ChronoCore21ControlReloadStrategy_logger, v119);
          v79 = v111;
          v113(v111, v136, v31);
          v80 = v133[2].isa;
          v81 = v128;
          (v80)(v117, v60, v128);
          v82 = v112;
          (v80)(v112, v126, v81);
          v83 = sub_224DAB228();
          LODWORD(v136) = sub_224DAF288();
          if (os_log_type_enabled(v83, v136))
          {
            v84 = swift_slowAlloc();
            v85 = swift_slowAlloc();
            v135[0] = v85;
            *v84 = 136446722;
            v86 = sub_224DAB738();
            v133 = v83;
            v87 = v86;
            v89 = v88;
            (*(v32 + 8))(v79, v31);
            v90 = sub_224A33F74(v87, v89, v135);

            *(v84 + 4) = v90;
            *(v84 + 12) = 2082;
            v91 = v117;
            v92 = sub_224DA95A8();
            v94 = v93;
            v95 = v91;
            v96 = v124;
            v124(v95, v128);
            v97 = sub_224A33F74(v92, v94, v135);

            *(v84 + 14) = v97;
            *(v84 + 22) = 2082;
            v98 = sub_224DA95A8();
            v100 = v99;
            v101 = v82;
            v102 = v96;
            v96(v101, v128);
            v103 = sub_224A33F74(v98, v100, v135);

            *(v84 + 24) = v103;
            v104 = v133;
            _os_log_impl(&dword_224A2F000, v133, v136, "Invalid control icon URL for %{public}s: %{public}s - outside the container's bundle path: %{public}s", v84, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x22AA5EED0](v85, -1, -1);
            v105 = v84;
            v106 = v118;
            v81 = v128;
            MEMORY[0x22AA5EED0](v105, -1, -1);

            (*(v132 + 8))(v114, v119);
          }

          else
          {
            v106 = v60;

            v107 = v82;
            v102 = v124;
            v124(v107, v81);
            v102(v117, v81);
            (*(v32 + 8))(v79, v31);
            (*(v132 + 8))(v78, v119);
          }

          v108 = v127;
          v109 = v125;
          v110 = v129;
          sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
          (*(v121 + 104))(v122, *MEMORY[0x277CE3C20], v108);
          sub_224DAF638();
          swift_willThrow();
          v102(v106, v81);
          v102(v126, v81);
          v102(v109, v81);
          return (*(v130 + 8))(v110, v131);
        }
      }

      else
      {
        (*(v47 + 8))(v46, v49);
        return (*(v52 + 8))(v50, v51);
      }
    }

    else
    {
      return (*(v32 + 8))(v39, v31);
    }
  }

  else
  {
    v64 = v132;
    (*(v132 + 16))(v43, v120 + OBJC_IVAR____TtC10ChronoCore21ControlReloadStrategy_logger, v8);
    v65 = v119;
    (*(v32 + 16))(v119, v136, v31);
    v66 = v43;
    v67 = sub_224DAB228();
    v68 = sub_224DAF288();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v127 = v5;
      v70 = v69;
      v71 = swift_slowAlloc();
      v135[0] = v71;
      *v70 = 136446210;
      v72 = sub_224DAB738();
      v73 = v65;
      v75 = v74;
      (*(v32 + 8))(v73, v31);
      v76 = sub_224A33F74(v72, v75, v135);

      *(v70 + 4) = v76;
      _os_log_impl(&dword_224A2F000, v67, v68, "Control icon %{public}s can have only symbols and not images", v70, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v71);
      MEMORY[0x22AA5EED0](v71, -1, -1);
      v77 = v70;
      v5 = v127;
      MEMORY[0x22AA5EED0](v77, -1, -1);

      (*(v132 + 8))(v113, v8);
    }

    else
    {

      (*(v32 + 8))(v65, v31);
      (*(v64 + 8))(v66, v8);
    }

    sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
    (*(v121 + 104))(v122, *MEMORY[0x277CE3C20], v5);
    sub_224DAF638();
    return swift_willThrow();
  }
}

BOOL sub_224D3BE10(char *a1, unint64_t a2, uint64_t a3)
{
  v54 = a3;
  v6 = sub_224DAC2B8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v46[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_224DAB258();
  v12 = *(v11 - 1);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v53 = &v46[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14);
  v17 = &v46[-v16];
  v59 = 0;
  v18 = *(v12 + 16);
  v50 = OBJC_IVAR____TtC10ChronoCore21ControlReloadStrategy_logger;
  v51 = v18;
  v55 = v3;
  v52 = v12 + 16;
  v18(&v46[-v16], v3 + OBJC_IVAR____TtC10ChronoCore21ControlReloadStrategy_logger, v11);
  v19 = *(v7 + 16);
  v56 = a1;
  v19(v10, a1, v6);
  v20 = sub_224DAB228();
  v21 = sub_224DAF268();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v48 = v22;
    v49 = swift_slowAlloc();
    v58 = v49;
    *v22 = 136446210;
    sub_224D407A8(&unk_281350E08, MEMORY[0x277CF99B8]);
    v47 = v21;
    v23 = sub_224DAFD28();
    v24 = v12;
    v25 = a2;
    v27 = v26;
    (*(v7 + 8))(v10, v6);
    v28 = sub_224A33F74(v23, v27, &v58);
    a2 = v25;

    v29 = v48;
    *(v48 + 1) = v28;
    v30 = v29;
    _os_log_impl(&dword_224A2F000, v20, v47, "%{public}s Trying cache", v29, 0xCu);
    v31 = v49;
    __swift_destroy_boxed_opaque_existential_1(v49);
    MEMORY[0x22AA5EED0](v31, -1, -1);
    MEMORY[0x22AA5EED0](v30, -1, -1);

    v32 = v24;
  }

  else
  {

    (*(v7 + 8))(v10, v6);
    v32 = v12;
  }

  v33 = *(v32 + 8);
  (v33)(v17, v11);
  v58 = sub_224DA2A0C(MEMORY[0x277D84F90]);
  if ((sub_224D3DD2C(v56, v54) & 1) == 0)
  {
LABEL_17:
    v59 = 1;
    v41 = v11;
    v51(v53, v55 + v50, v11);
    v42 = sub_224DAB228();
    v43 = sub_224DAF268();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_224A2F000, v42, v43, "Cache should not be consulted", v44, 2u);
      MEMORY[0x22AA5EED0](v44, -1, -1);
    }

    (v33)(v53, v41);
    return (v59 & 1) == 0;
  }

  if (a2 >> 62)
  {
    goto LABEL_22;
  }

  v11 = v55;
  v34 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v34)
  {
    while (1)
    {
      v33 = 0;
      v35 = a2 & 0xC000000000000001;
      v36 = a2 & 0xFFFFFFFFFFFFFF8;
      while (v35)
      {
        v37 = a2;
        v38 = MEMORY[0x22AA5DCC0](v33, a2);
        v39 = (v33 + 1);
        if (__OFADD__(v33, 1))
        {
LABEL_16:
          __break(1u);
          goto LABEL_17;
        }

LABEL_11:
        v57 = 0;
        v40 = MEMORY[0x22AA5E4C0]();
        sub_224D3C334(v11, v56, v38, &v59, &v58, &v57);
        objc_autoreleasePoolPop(v40);

        if ((v57 & 1) == 0)
        {
          a2 = v37;
          ++v33;
          if (v39 != v34)
          {
            continue;
          }
        }

        return (v59 & 1) == 0;
      }

      if (v33 < *(v36 + 16))
      {
        break;
      }

      __break(1u);
LABEL_22:
      v11 = v55;
      v34 = sub_224DAF838();
      if (!v34)
      {
        return (v59 & 1) == 0;
      }
    }

    v37 = a2;
    v38 = *(a2 + 8 * v33 + 32);

    v39 = (v33 + 1);
    if (__OFADD__(v33, 1))
    {
      goto LABEL_16;
    }

    goto LABEL_11;
  }

  return (v59 & 1) == 0;
}

uint64_t sub_224D3C334(uint64_t *a1, NSObject *a2, uint64_t a3, _BYTE *a4, uint64_t *a5, void *a6)
{
  v236 = a6;
  v221 = a5;
  v237 = a4;
  v241 = a3;
  v246[5] = *MEMORY[0x277D85DE8];
  v218 = sub_224DAC2B8();
  v226 = *(v218 - 8);
  v8 = *(v226 + 64);
  v9 = MEMORY[0x28223BE20](v218);
  v220 = &v210 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v215 = &v210 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56C0, &unk_224DB3580);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v222 = &v210 - v14;
  v229 = sub_224DAE6C8();
  v228 = *(v229 - 8);
  v15 = *(v228 + 64);
  MEMORY[0x28223BE20](v229);
  v227 = &v210 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v243 = sub_224DAB258();
  v239 = *(v243 - 8);
  v17 = *(v239 + 64);
  v18 = MEMORY[0x28223BE20](v243);
  v225 = &v210 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v242 = &v210 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v224 = &v210 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v217 = &v210 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v223 = &v210 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v216 = &v210 - v29;
  MEMORY[0x28223BE20](v28);
  v230 = &v210 - v30;
  v234 = sub_224DA9878();
  v233 = *(v234 - 1);
  v31 = *(v233 + 64);
  v32 = MEMORY[0x28223BE20](v234);
  v219 = &v210 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v231 = &v210 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32B0, &qword_224DB3EA0);
  v36 = *(*(v35 - 8) + 64);
  v37 = MEMORY[0x28223BE20](v35 - 8);
  v39 = &v210 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v41 = &v210 - v40;
  v42 = sub_224DA9688();
  v232 = *(v42 - 8);
  v43 = *(v232 + 64);
  MEMORY[0x28223BE20](v42);
  v45 = &v210 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = a1[14];
  v47 = a1[15];
  v240 = a1;
  swift_getObjectType();
  v48 = *(*(v47 + 8) + 8);
  v235 = a2;
  v49 = v238;
  sub_224DAC418();
  v50 = v49;
  if (v49)
  {
    v52 = v241;
LABEL_4:
    v53 = v239;
    v54 = v242;
    v55 = v243;
    (*(v239 + 16))(v242, &v240[OBJC_IVAR____TtC10ChronoCore21ControlReloadStrategy_logger], v243);

    v56 = v50;
    v57 = sub_224DAB228();
    v58 = sub_224DAF2A8();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v238 = 0;
      v61 = v60;
      v62 = swift_slowAlloc();
      v246[0] = v62;
      *v59 = 136446466;
      v63 = *(v52 + 16);
      v64 = *(v52 + 24);

      v65 = v53;
      v66 = sub_224A33F74(v63, v64, v246);

      *(v59 + 4) = v66;
      *(v59 + 12) = 2114;
      v67 = v50;
      v68 = _swift_stdlib_bridgeErrorToNSError();
      *(v59 + 14) = v68;
      *v61 = v68;
      _os_log_impl(&dword_224A2F000, v57, v58, "%{public}s Cache miss: %{public}@", v59, 0x16u);
      sub_224A3311C(v61, &unk_27D6F69F0, &unk_224DB3900);
      MEMORY[0x22AA5EED0](v61, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v62);
      MEMORY[0x22AA5EED0](v62, -1, -1);
      MEMORY[0x22AA5EED0](v59, -1, -1);

      result = (*(v65 + 8))(v242, v243);
    }

    else
    {

      result = (*(v53 + 8))(v54, v55);
    }

    v70 = v236;
    *v237 = 1;
    *v70 = 1;
    goto LABEL_8;
  }

  v211 = v39;
  v212 = v47;
  v213 = v42;
  v214 = v41;
  v51 = v246[0];
  sub_224DAC3F8();
  v72 = v46;
  v73 = [objc_opt_self() defaultManager];
  sub_224DA9658();
  v74 = sub_224DAEDE8();

  *&v244 = 0;
  v75 = [v73 attributesOfItemAtPath:v74 error:&v244];

  v76 = v244;
  v52 = v241;
  if (!v75)
  {
    v97 = v244;
    v50 = sub_224DA9528();

    swift_willThrow();

    (*(v232 + 8))(v45, v213);
    goto LABEL_4;
  }

  v238 = 0;
  type metadata accessor for FileAttributeKey(0);
  sub_224D407A8(&qword_281350A08, type metadata accessor for FileAttributeKey);
  v77 = sub_224DAECE8();
  v78 = v76;

  if (*(v77 + 16) && (v79 = sub_224B0BA4C(*MEMORY[0x277CCA108]), (v80 & 1) != 0))
  {
    sub_224A33E0C(*(v77 + 56) + 32 * v79, v246);

    v81 = v214;
    v82 = v234;
    v83 = swift_dynamicCast();
    (*(v233 + 56))(v81, v83 ^ 1u, 1, v82);
  }

  else
  {

    v81 = v214;
    (*(v233 + 56))(v214, 1, 1, v234);
  }

  v84 = v240;
  v85 = v240[OBJC_IVAR____TtC10ChronoCore21ControlReloadStrategy_expirationDuration + 8];
  v86 = v231;
  v210 = v51;
  if (v85)
  {
    goto LABEL_15;
  }

  v98 = *&v240[OBJC_IVAR____TtC10ChronoCore21ControlReloadStrategy_expirationDuration];
  v99 = *(v233 + 48);
  if (v99(v81, 1, v234) == 1)
  {
LABEL_23:
    v104 = v239;
    v105 = v230;
    v106 = v243;
    (*(v239 + 16))(v230, v84 + OBJC_IVAR____TtC10ChronoCore21ControlReloadStrategy_logger, v243);
    v107 = v241;

    v108 = sub_224DAB228();
    v109 = sub_224DAF2A8();

    if (os_log_type_enabled(v108, v109))
    {
      v110 = swift_slowAlloc();
      v111 = swift_slowAlloc();
      v246[0] = v111;
      *v110 = 136446210;
      v112 = *(v107 + 16);
      v113 = *(v107 + 24);

      v114 = sub_224A33F74(v112, v113, v246);

      *(v110 + 4) = v114;
      _os_log_impl(&dword_224A2F000, v108, v109, "%{public}s Cache miss due to expired content", v110, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v111);
      MEMORY[0x22AA5EED0](v111, -1, -1);
      MEMORY[0x22AA5EED0](v110, -1, -1);

      (*(v104 + 8))(v230, v106);
    }

    else
    {

      (*(v104 + 8))(v105, v106);
    }

    goto LABEL_42;
  }

  v242 = v45;
  v100 = v211;
  sub_224A3796C(v81, v211, &qword_27D6F32B0, &qword_224DB3EA0);
  v101 = v234;
  result = (v99)(v100, 1, v234);
  if (result != 1)
  {
    v102 = v219;
    sub_224DA9808();
    sub_224DA9768();
    v103 = *(v233 + 8);
    v103(v102, v101);
    LOBYTE(v102) = sub_224DA9788();
    v103(v86, v101);
    v103(v100, v101);
    v45 = v242;
    v84 = v240;
    if ((v102 & 1) == 0)
    {
LABEL_15:
      v236 = v72;
      v87 = v84[8];
      __swift_project_boxed_opaque_existential_1(v84 + 4, v84[7]);
      v88 = sub_224DAC2A8();
      v89 = [v88 extensionIdentity];

      sub_224DAC6D8();
      if (v245)
      {
        sub_224A36F98(&v244, v246);
        sub_224DAC9F8();
        __swift_project_boxed_opaque_existential_1(&v244, v245);
        v90 = v227;
        sub_224DAE808();
        v91 = sub_224DAE6B8();
        v93 = v92;
        (*(v228 + 8))(v90, v229);
        __swift_project_boxed_opaque_existential_1(v246, v246[3]);
        if (v91 == sub_224DAE398() && v93 == v94)
        {

          __swift_destroy_boxed_opaque_existential_1(&v244);
          v95 = v243;
          v96 = v239;
          goto LABEL_27;
        }

        v116 = sub_224DAFD88();

        __swift_destroy_boxed_opaque_existential_1(&v244);
        v95 = v243;
        v96 = v239;
        if (v116)
        {
LABEL_27:
          v242 = v45;
          v117 = v222;
          sub_224DAC288();
          v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
          v119 = *(v118 - 8);
          if ((*(v119 + 48))(v117, 1, v118) == 1)
          {
            sub_224A3311C(v117, &qword_27D6F56C0, &unk_224DB3580);
            v120 = v223;
          }

          else
          {
            sub_224DAA1F8();
            v122 = v121;
            (*(v119 + 8))(v117, v118);
            v120 = v223;
            if (v122)
            {

              sub_224DAC9F8();
              __swift_project_boxed_opaque_existential_1(&v244, v245);
              v123 = *(sub_224DAE818() + 16);

              __swift_destroy_boxed_opaque_existential_1(&v244);
              if (!v123)
              {
                v192 = v216;
                (*(v96 + 16))(v216, v84 + OBJC_IVAR____TtC10ChronoCore21ControlReloadStrategy_logger, v95);
                v193 = v241;

                v194 = sub_224DAB228();
                v195 = sub_224DAF2A8();

                if (os_log_type_enabled(v194, v195))
                {
                  v196 = swift_slowAlloc();
                  v197 = swift_slowAlloc();
                  *&v244 = v197;
                  *v196 = 136446210;
                  v198 = *(v193 + 16);
                  v199 = *(v193 + 24);

                  v200 = sub_224A33F74(v198, v199, &v244);

                  *(v196 + 4) = v200;
                  _os_log_impl(&dword_224A2F000, v194, v195, "%{public}s Cache miss because existing archive is local only and we need remote-capable", v196, 0xCu);
                  __swift_destroy_boxed_opaque_existential_1(v197);
                  MEMORY[0x22AA5EED0](v197, -1, -1);
                  MEMORY[0x22AA5EED0](v196, -1, -1);
                }

                (*(v96 + 8))(v192, v95);
                (*(v232 + 8))(v242, v213);
                *v237 = 1;
                goto LABEL_65;
              }
            }
          }

          v124 = *(v96 + 16);
          v233 = OBJC_IVAR____TtC10ChronoCore21ControlReloadStrategy_logger;
          v237 = (v96 + 16);
          v234 = v124;
          (v124)(v120, v84 + OBJC_IVAR____TtC10ChronoCore21ControlReloadStrategy_logger, v95);
          v125 = v241;

          v126 = sub_224DAB228();
          v127 = sub_224DAF268();

          if (os_log_type_enabled(v126, v127))
          {
            v128 = swift_slowAlloc();
            v129 = swift_slowAlloc();
            *&v244 = v129;
            *v128 = 136446210;
            v130 = *(v125 + 16);
            v131 = *(v125 + 24);

            v132 = sub_224A33F74(v130, v131, &v244);

            *(v128 + 4) = v132;
            _os_log_impl(&dword_224A2F000, v126, v127, "%{public}s Cache hit", v128, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v129);
            MEMORY[0x22AA5EED0](v129, -1, -1);
            MEMORY[0x22AA5EED0](v128, -1, -1);
          }

          v231 = *(v96 + 8);
          (v231)(v120, v95);
          v133 = v238;
          v134 = v226;
          sub_224DAEC08();
          sub_224D407A8(&qword_281350C08, MEMORY[0x277CE3EC8]);
          v135 = v235;
          sub_224DAE7D8();
          v136 = v225;
          v137 = v220;
          if (v133)
          {
            v138 = 0;
            (v234)(v225, &v240[v233], v95);
            v139 = v218;
            (*(v134 + 16))(v137, v135, v218);
            v140 = v133;
            v141 = sub_224DAB228();
            v142 = sub_224DAF288();

            if (os_log_type_enabled(v141, v142))
            {
              v143 = swift_slowAlloc();
              v236 = swift_slowAlloc();
              v144 = swift_slowAlloc();
              v238 = 0;
              v145 = v144;
              *&v244 = v144;
              *v143 = 136446466;
              sub_224D407A8(&unk_281350E08, MEMORY[0x277CF99B8]);
              v146 = sub_224DAFD28();
              v148 = v147;
              (*(v226 + 8))(v137, v139);
              v149 = sub_224A33F74(v146, v148, &v244);
              v95 = v243;

              *(v143 + 4) = v149;
              *(v143 + 12) = 2114;
              v150 = v133;
              v151 = _swift_stdlib_bridgeErrorToNSError();
              *(v143 + 14) = v151;
              v152 = v236;
              *v236 = v151;
              _os_log_impl(&dword_224A2F000, v141, v142, "%{public}s failed to save encoded vector glyph asset libs for control: %{public}@", v143, 0x16u);
              sub_224A3311C(v152, &unk_27D6F69F0, &unk_224DB3900);
              MEMORY[0x22AA5EED0](v152, -1, -1);
              __swift_destroy_boxed_opaque_existential_1(v145);
              v153 = v145;
              v138 = v238;
              MEMORY[0x22AA5EED0](v153, -1, -1);
              MEMORY[0x22AA5EED0](v143, -1, -1);

              v154 = v225;
            }

            else
            {

              (*(v134 + 8))(v137, v139);
              v154 = v136;
            }

            (v231)(v154, v95);
          }

          else
          {
            v138 = 0;
          }

          v164 = v240;
          v165 = v241;
          if ((v240[OBJC_IVAR____TtC10ChronoCore21ControlReloadStrategy_isPreview] & 1) == 0 && *(v240 + 16))
          {
            v166 = *(v240 + 17);
            v167 = *(v240 + 16);
            swift_getObjectType();
            v168 = *(*(v166 + 8) + 8);
            swift_unknownObjectRetain();
            v169 = v235;
            if ((sub_224DAC3D8() & 1) != 0 || (sub_224D3F078(v169), !v138))
            {
              swift_unknownObjectRelease();
            }

            else
            {
              swift_unknownObjectRelease();
              v170 = v217;
              (v234)(v217, v164 + v233, v95);
              v171 = v226;
              v172 = v215;
              v173 = v169;
              v174 = v218;
              (*(v226 + 16))(v215, v173, v218);
              v175 = v138;
              v176 = sub_224DAB228();
              v177 = sub_224DAF288();

              if (os_log_type_enabled(v176, v177))
              {
                v178 = swift_slowAlloc();
                LODWORD(v237) = v177;
                v179 = v172;
                v180 = v178;
                v181 = swift_slowAlloc();
                v238 = v138;
                v182 = v181;
                v240 = swift_slowAlloc();
                *&v244 = v240;
                *v180 = 136446466;
                sub_224D407A8(&unk_281350E08, MEMORY[0x277CF99B8]);
                v183 = sub_224DAFD28();
                v185 = v184;
                (*(v171 + 8))(v179, v174);
                v186 = sub_224A33F74(v183, v185, &v244);
                v165 = v241;

                *(v180 + 4) = v186;
                *(v180 + 12) = 2114;
                v187 = v238;
                v188 = v238;
                v189 = _swift_stdlib_bridgeErrorToNSError();
                *(v180 + 14) = v189;
                *v182 = v189;
                _os_log_impl(&dword_224A2F000, v176, v237, "%{public}s Unable to write out placeholder archive for cached control: %{public}@", v180, 0x16u);
                sub_224A3311C(v182, &unk_27D6F69F0, &unk_224DB3900);
                MEMORY[0x22AA5EED0](v182, -1, -1);
                v190 = v240;
                __swift_destroy_boxed_opaque_existential_1(v240);
                MEMORY[0x22AA5EED0](v190, -1, -1);
                MEMORY[0x22AA5EED0](v180, -1, -1);

                v191 = v217;
              }

              else
              {

                (*(v171 + 8))(v172, v174);
                v191 = v170;
              }

              (v231)(v191, v95);
            }
          }

          v201 = sub_224DAC9D8();
          v202 = v221;
          v203 = *v221;
          v204 = v232;
          v205 = v213;
          v206 = v242;
          if ((*v221 & 0xC000000000000001) != 0)
          {
            if (v203 < 0)
            {
              v207 = *v221;
            }

            else
            {
              v207 = v203 & 0xFFFFFFFFFFFFFF8;
            }

            v208 = sub_224DAF838();
            if (__OFADD__(v208, 1))
            {
              __break(1u);
            }

            *v202 = sub_224D2D7E4(v207, v208 + 1);
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v244 = *v202;
          sub_224B23960(v201, v165, isUniquelyReferenced_nonNull_native);
          *v202 = v244;

          (*(v204 + 8))(v206, v205);
LABEL_65:
          __swift_destroy_boxed_opaque_existential_1(v246);
          goto LABEL_66;
        }

        __swift_destroy_boxed_opaque_existential_1(v246);
        v115 = v95;
      }

      else
      {
        sub_224A3311C(&v244, &unk_27D6F4700, &unk_224DB3A10);
        v115 = v243;
        v96 = v239;
      }

      v155 = v224;
      (*(v96 + 16))(v224, v84 + OBJC_IVAR____TtC10ChronoCore21ControlReloadStrategy_logger, v115);
      v156 = v241;

      v157 = sub_224DAB228();
      v158 = sub_224DAF2A8();

      if (os_log_type_enabled(v157, v158))
      {
        v159 = swift_slowAlloc();
        v160 = swift_slowAlloc();
        v246[0] = v160;
        *v159 = 136446210;
        v161 = *(v156 + 16);
        v162 = *(v156 + 24);

        v163 = sub_224A33F74(v161, v162, v246);

        *(v159 + 4) = v163;
        _os_log_impl(&dword_224A2F000, v157, v158, "%{public}s Cache miss for extension bundle version difference (or extension didn't exist)", v159, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v160);
        MEMORY[0x22AA5EED0](v160, -1, -1);
        MEMORY[0x22AA5EED0](v159, -1, -1);

        (*(v96 + 8))(v155, v243);
      }

      else
      {

        (*(v96 + 8))(v155, v115);
      }

LABEL_42:
      (*(v232 + 8))(v45, v213);
      *v237 = 1;
LABEL_66:
      result = sub_224A3311C(v214, &qword_27D6F32B0, &qword_224DB3EA0);
LABEL_8:
      v71 = *MEMORY[0x277D85DE8];
      return result;
    }

    goto LABEL_23;
  }

  __break(1u);
  return result;
}

uint64_t sub_224D3DD2C(char *a1, uint64_t a2)
{
  v117 = a1;
  v120 = sub_224DACC88();
  v113 = *(v120 - 8);
  v3 = *(v113 + 64);
  v4 = MEMORY[0x28223BE20](v120);
  v109 = (&v106 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v4);
  v112 = (&v106 - v6);
  v7 = sub_224DAC2B8();
  v8 = *(v7 - 8);
  v118 = v7;
  v119 = v8;
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v107 = &v106 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v106 = &v106 - v13;
  MEMORY[0x28223BE20](v12);
  v111 = &v106 - v14;
  v15 = sub_224DAB258();
  v121 = *(v15 - 8);
  v122 = v15;
  v16 = *(v121 + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v110 = &v106 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v108 = &v106 - v20;
  MEMORY[0x28223BE20](v19);
  v22 = &v106 - v21;
  v23 = sub_224DACB98();
  v24 = *(v23 - 8);
  v25 = v24[8];
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v106 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v30 = &v106 - v29;
  sub_224DACC68();
  v31 = v24[13];
  v31(v28, *MEMORY[0x277CF9BF0], v23);
  v32 = sub_224DACB88();
  v33 = v24[1];
  v33(v28, v23);
  v114 = v23;
  v115 = v33;
  v33(v30, v23);
  if (v32 & 1) != 0 || (sub_224DACC68(), v34 = v114, v31(v28, *MEMORY[0x277CF9B60], v114), v35 = sub_224DACB88(), v36 = v115, v115(v28, v34), v36(v30, v34), (v35))
  {
    v37 = v121;
    v38 = v22;
    (*(v121 + 16))(v22, v116 + OBJC_IVAR____TtC10ChronoCore21ControlReloadStrategy_logger, v122);
    v40 = v118;
    v39 = v119;
    v41 = v111;
    (*(v119 + 16))(v111, v117, v118);
    v42 = v112;
    v43 = v113;
    v44 = a2;
    v45 = v120;
    (*(v113 + 16))(v112, v44, v120);
    v117 = v38;
    v46 = sub_224DAB228();
    LODWORD(v116) = sub_224DAF2A8();
    if (os_log_type_enabled(v46, v116))
    {
      v47 = swift_slowAlloc();
      v110 = swift_slowAlloc();
      v123 = v110;
      *v47 = 136446466;
      sub_224D407A8(&unk_281350E08, MEMORY[0x277CF99B8]);
      v109 = v46;
      v48 = sub_224DAFD28();
      v50 = v49;
      (*(v39 + 8))(v41, v40);
      v51 = sub_224A33F74(v48, v50, &v123);

      *(v47 + 4) = v51;
      *(v47 + 12) = 2082;
      sub_224DACC68();
      sub_224D407A8(&unk_281350D28, MEMORY[0x277CF9BF8]);
      v52 = v114;
      v53 = sub_224DAFD28();
      v55 = v54;
      v115(v30, v52);
      (*(v43 + 8))(v42, v120);
      v56 = sub_224A33F74(v53, v55, &v123);

      *(v47 + 14) = v56;
      v57 = v109;
      _os_log_impl(&dword_224A2F000, v109, v116, "%{public}s Checking cache because config reason is %{public}s", v47, 0x16u);
      v58 = v110;
      swift_arrayDestroy();
      MEMORY[0x22AA5EED0](v58, -1, -1);
      MEMORY[0x22AA5EED0](v47, -1, -1);

      (*(v121 + 8))(v117, v122);
      return 1;
    }

    (*(v43 + 8))(v42, v45);
    (*(v39 + 8))(v41, v40);
    (*(v37 + 8))(v117, v122);
    return 1;
  }

  else
  {
    v60 = v117;
    v61 = sub_224DAC2A8();
    v62 = [v61 extensionIdentity];

    v63 = [v62 isRemote];
    v64 = v121;
    v65 = *(v121 + 16);
    v66 = v119;
    v67 = (v119 + 16);
    if (v63)
    {
      v68 = v108;
      v69 = v122;
      v65(v108, v116 + OBJC_IVAR____TtC10ChronoCore21ControlReloadStrategy_logger, v122);
      v70 = v106;
      v71 = v118;
      (*v67)(v106, v60, v118);
      v72 = sub_224DAB228();
      v73 = sub_224DAF2A8();
      if (os_log_type_enabled(v72, v73))
      {
        v74 = v70;
        v75 = swift_slowAlloc();
        v76 = v69;
        v77 = swift_slowAlloc();
        v123 = v77;
        *v75 = 136446210;
        sub_224D407A8(&unk_281350E08, MEMORY[0x277CF99B8]);
        v78 = sub_224DAFD28();
        v79 = v66;
        v81 = v80;
        (*(v79 + 8))(v74, v71);
        v82 = sub_224A33F74(v78, v81, &v123);

        *(v75 + 4) = v82;
        _os_log_impl(&dword_224A2F000, v72, v73, "%{public}s Checking cache because extension is remote", v75, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v77);
        MEMORY[0x22AA5EED0](v77, -1, -1);
        MEMORY[0x22AA5EED0](v75, -1, -1);

        (*(v121 + 8))(v68, v76);
      }

      else
      {

        (*(v66 + 8))(v70, v71);
        (*(v121 + 8))(v68, v69);
      }

      return 1;
    }

    v83 = v122;
    v65(v110, v116 + OBJC_IVAR____TtC10ChronoCore21ControlReloadStrategy_logger, v122);
    v84 = v107;
    v85 = v118;
    (*v67)(v107, v60, v118);
    v86 = v113;
    v87 = v109;
    v88 = a2;
    v89 = v120;
    (*(v113 + 16))(v109, v88, v120);
    v90 = sub_224DAB228();
    LODWORD(v117) = sub_224DAF2A8();
    if (os_log_type_enabled(v90, v117))
    {
      v91 = swift_slowAlloc();
      v116 = swift_slowAlloc();
      v123 = v116;
      *v91 = 136446466;
      sub_224D407A8(&unk_281350E08, MEMORY[0x277CF99B8]);
      v112 = v90;
      v92 = sub_224DAFD28();
      v93 = v85;
      v94 = v64;
      v96 = v95;
      (*(v119 + 8))(v84, v93);
      v97 = sub_224A33F74(v92, v96, &v123);

      *(v91 + 4) = v97;
      *(v91 + 12) = 2082;
      sub_224DACC68();
      sub_224D407A8(&unk_281350D28, MEMORY[0x277CF9BF8]);
      v98 = v83;
      v99 = v114;
      v100 = sub_224DAFD28();
      v102 = v101;
      v115(v30, v99);
      (*(v86 + 8))(v87, v120);
      v103 = sub_224A33F74(v100, v102, &v123);

      *(v91 + 14) = v103;
      v104 = v112;
      _os_log_impl(&dword_224A2F000, v112, v117, "%{public}s Not checking cache (%{public}s)", v91, 0x16u);
      v105 = v116;
      swift_arrayDestroy();
      MEMORY[0x22AA5EED0](v105, -1, -1);
      MEMORY[0x22AA5EED0](v91, -1, -1);

      (*(v94 + 8))(v110, v98);
    }

    else
    {

      (*(v86 + 8))(v87, v89);
      (*(v119 + 8))(v84, v85);
      (*(v64 + 8))(v110, v83);
    }

    return 0;
  }
}

uint64_t sub_224D3E918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v76 = a4;
  v69 = a3;
  v7 = sub_224DAE6E8();
  v73 = *(v7 - 8);
  v74 = v7;
  v8 = *(v73 + 64);
  MEMORY[0x28223BE20](v7);
  v71 = v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56C0, &unk_224DB3580);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v60 - v12;
  v14 = sub_224DA9688();
  v72 = *(v14 - 8);
  v15 = *(v72 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = v60 - v19;
  v21 = a5;
  v22 = *(*(a5 + 8) + 8);
  v23 = v75;
  result = sub_224DAC3F8();
  if (!v23)
  {
    v67 = a1;
    v68 = v21;
    v65 = v22;
    v66 = 0;
    v63 = v13;
    v64 = v18;
    v75 = v14;
    v25 = [objc_opt_self() defaultManager];
    sub_224DA95A8();
    v26 = sub_224DAEDE8();

    v27 = [v25 fileExistsAtPath_];

    if (v27)
    {
      v28 = *(*(v68 + 16) + 16);
      v29 = v66;
      sub_224DAC488();
      v30 = v29;
      v31 = v72;
      if (!v29)
      {
        sub_224DAC418();
        (*(v31 + 8))(v20, v75);
        return v77;
      }

      v32 = v75;
      goto LABEL_9;
    }

    v33 = *(v70 + 13);
    __swift_project_boxed_opaque_existential_1(v70 + 9, *(v70 + 12));
    v34 = *(v33 + 24);
    v35 = sub_224DADA48();
    v31 = v72;
    v36 = v68;
    if (!v35 || (v37 = sub_224DAC2A8(), v38 = sub_224DACFB8(), , v37, !v38))
    {
      sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
      v45 = v73;
      v44 = v71;
      (*(v73 + 104))(v71, *MEMORY[0x277CE3C18], v74);
      v30 = sub_224DAF638();
      swift_willThrow();
      v32 = v75;
      goto LABEL_13;
    }

    v39 = *(*(v36 + 16) + 16);
    v40 = v38;
    v41 = v66;
    v42 = sub_224DAC438();
    v30 = v41;
    v32 = v75;
    if (v41)
    {

LABEL_9:
      v44 = v71;
      v45 = v73;
LABEL_13:
      sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
      (*(v45 + 104))(v44, *MEMORY[0x277CE3C50], v74);
      v50 = v30;
      sub_224DAF638();
      swift_willThrow();

      return (*(v31 + 8))(v20, v32);
    }

    v46 = v42;
    v70 = v20;
    v47 = v43;
    ObjectType = swift_getObjectType();
    v68 = v47;
    v49 = sub_224DABCE8();
    v60[1] = v39;
    v60[2] = ObjectType;
    v61 = v40;
    v62 = v49;
    v60[3] = v46;
    v51 = sub_224DAC2A8();
    v52 = v63;
    sub_224DAC288();
    v53 = v52;
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
    v55 = *(v54 - 8);
    if ((*(v55 + 48))(v53, 1, v54) == 1)
    {
      sub_224A3311C(v53, &qword_27D6F56C0, &unk_224DB3580);
      v66 = 0;
    }

    else
    {
      sub_224DAA1F8();
      v66 = v56;
      (*(v55 + 8))(v53, v54);
    }

    v57 = v64;
    v77 = v61;
    sub_224D4053C();
    sub_224DAE838();

    sub_224DABCF8();
    v58 = *(v31 + 8);
    v58(v57, v32);
    sub_224DAC488();
    sub_224DAC418();
    swift_unknownObjectRelease();
    v59 = v61;

    v58(v70, v32);
    return v77;
  }

  return result;
}

uint64_t sub_224D3F078(NSObject *a1)
{
  v127 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4680, &unk_224DB4610);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v117 = v103 - v5;
  v125 = sub_224DAC2B8();
  v123 = *(v125 - 8);
  v6 = *(v123 + 64);
  v7 = MEMORY[0x28223BE20](v125);
  v122 = v103 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v121 = v103 - v10;
  MEMORY[0x28223BE20](v9);
  v12 = v103 - v11;
  v13 = sub_224DAB258();
  v124 = *(v13 - 8);
  v14 = *(v124 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v126 = v103 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v120 = v103 - v17;
  v119 = sub_224DA9688();
  v118 = *(v119 - 8);
  v18 = *(v118 + 64);
  MEMORY[0x28223BE20](v119);
  v20 = v103 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56C0, &unk_224DB3580);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v24 = v103 - v23;
  v25 = sub_224DAE4F8();
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v25);
  v29 = v103 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v27);
  v33 = v103 - v32;
  if ((*(v1 + OBJC_IVAR____TtC10ChronoCore21ControlReloadStrategy_isPreview) & 1) == 0)
  {
    v34 = *(v1 + 128);
    if (v34)
    {
      v112 = v20;
      v114 = v31;
      v115 = result;
      v111 = v12;
      v116 = v13;
      v35 = v1;
      v36 = *(v1 + 136);
      v37 = v34;
      ObjectType = swift_getObjectType();
      v39 = *(*(v36 + 16) + 16);
      swift_unknownObjectRetain();
      v40 = sub_224DAC438();
      if (v2)
      {
        return swift_unknownObjectRelease();
      }

      v110 = v41;
      v107 = v35;
      v105 = v36;
      v106 = ObjectType;
      v113 = v40;
      v109 = v37;
      if (sub_224DAC9E8())
      {
        sub_224DAC9F8();
        __swift_project_boxed_opaque_existential_1(&v129, v131);
        sub_224DAE7E8();
        sub_224D3E918(v109, v127, v33, v106, v105);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        (*(v114 + 8))(v33, v115);
        return __swift_destroy_boxed_opaque_existential_1(&v129);
      }

      v42 = swift_getObjectType();
      v43 = sub_224DABCE8();
      v44 = v107;
      v103[1] = v42;
      v104 = v43;
      v108 = 0;
      v45 = sub_224DAC2A8();
      sub_224DAC9F8();
      __swift_project_boxed_opaque_existential_1(&v129, v131);
      sub_224DAE7E8();
      sub_224DAC288();
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
      v47 = *(v46 - 8);
      if ((*(v47 + 48))(v24, 1, v46) == 1)
      {
        sub_224A3311C(v24, &qword_27D6F56C0, &unk_224DB3580);
      }

      else
      {
        sub_224DAA1F8();
        (*(v47 + 8))(v24, v46);
      }

      sub_224DAEC78();
      sub_224DAC9F8();
      v128 = sub_224DAEC68();
      v48 = v104;
      v49 = v108;
      sub_224DAE838();
      if (v49)
      {

        (*(v114 + 8))(v29, v115);
        __swift_destroy_boxed_opaque_existential_1(&v129);
        v51 = v125;
        v52 = v123;
        swift_getObjectType();
        v129 = 0;
        v130 = 0xE000000000000000;
        sub_224DAF938();

        v129 = 0xD000000000000025;
        v130 = 0x8000000224DCF630;
        swift_getErrorValue();
        v53 = sub_224D1680C(v132);
        MEMORY[0x22AA5D210](v53);

        sub_224DABD08();

        v54 = v124;
        v55 = v126;
        (*(v124 + 16))(v126, v44 + OBJC_IVAR____TtC10ChronoCore21ControlReloadStrategy_logger, v116);
        v56 = v122;
        (*(v52 + 16))(v122, v127, v51);
        v57 = v49;
        v58 = sub_224DAB228();
        v59 = sub_224DAF288();

        if (os_log_type_enabled(v58, v59))
        {
          v60 = v56;
          v61 = swift_slowAlloc();
          v127 = swift_slowAlloc();
          v62 = swift_slowAlloc();
          v108 = v49;
          v63 = v62;
          v129 = v62;
          *v61 = 136446466;
          sub_224D407A8(&unk_281350E08, MEMORY[0x277CF99B8]);
          v64 = sub_224DAFD28();
          v65 = v51;
          v66 = v54;
          v68 = v67;
          (*(v52 + 8))(v60, v65);
          v69 = sub_224A33F74(v64, v68, &v129);

          *(v61 + 4) = v69;
          *(v61 + 12) = 2114;
          v70 = v108;
          v71 = _swift_stdlib_bridgeErrorToNSError();
          *(v61 + 14) = v71;
          v72 = v127;
          v127->isa = v71;
          _os_log_impl(&dword_224A2F000, v58, v59, "%{public}s Failed to write placeholder archive: %{public}@", v61, 0x16u);
          sub_224A3311C(v72, &unk_27D6F69F0, &unk_224DB3900);
          MEMORY[0x22AA5EED0](v72, -1, -1);
          __swift_destroy_boxed_opaque_existential_1(v63);
          MEMORY[0x22AA5EED0](v63, -1, -1);
          MEMORY[0x22AA5EED0](v61, -1, -1);

          (*(v66 + 8))(v126, v116);
        }

        else
        {

          (*(v52 + 8))(v56, v51);
          (*(v54 + 8))(v55, v116);
        }

        swift_willThrow();
        swift_unknownObjectRelease();
        return swift_unknownObjectRelease();
      }

      (*(v114 + 8))(v29, v115);
      __swift_destroy_boxed_opaque_existential_1(&v129);
      v50 = v112;
      sub_224DABCF8();
      v108 = 0;
      v73 = *(v118 + 8);
      v126 = (v118 + 8);
      v122 = v73;
      (v73)(v50, v119);
      v74 = v124;
      v75 = v120;
      v76 = v116;
      (*(v124 + 16))(v120, v44 + OBJC_IVAR____TtC10ChronoCore21ControlReloadStrategy_logger, v116);
      v77 = v123;
      v78 = *(v123 + 16);
      v79 = v111;
      v80 = v127;
      v81 = v125;
      v78(v111, v127, v125);
      v78(v121, v80, v81);
      swift_unknownObjectRetain();
      v82 = sub_224DAB228();
      v83 = sub_224DAF2A8();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v82, v83))
      {
        LODWORD(v115) = v83;
        v127 = v82;
        v84 = swift_slowAlloc();
        v114 = swift_slowAlloc();
        v129 = v114;
        *v84 = 136446466;
        sub_224D407A8(&unk_281350E08, MEMORY[0x277CF99B8]);
        v85 = sub_224DAFD28();
        v87 = v86;
        v88 = *(v77 + 8);
        v88(v79, v81);
        v89 = sub_224A33F74(v85, v87, &v129);

        *(v84 + 4) = v89;
        *(v84 + 12) = 2080;
        v90 = *(*(v105 + 8) + 8);
        v91 = v117;
        v92 = v121;
        v93 = v108;
        sub_224DAC3F8();
        if (v93)
        {

          (*(v118 + 56))(v91, 1, 1, v119);
          sub_224A3311C(v91, &unk_27D6F4680, &unk_224DB4610);
          v94 = 0xE300000000000000;
          v95 = 7104878;
        }

        else
        {
          v97 = v119;
          (*(v118 + 56))(v91, 0, 1, v119);
          v95 = sub_224DA9578();
          v94 = v98;
          (v122)(v91, v97);
        }

        v99 = v120;
        v88(v92, v125);
        v100 = sub_224A33F74(v95, v94, &v129);

        *(v84 + 14) = v100;
        v101 = v127;
        _os_log_impl(&dword_224A2F000, v127, v115, "%{public}s Successfully saved placeholder archive: %s", v84, 0x16u);
        v102 = v114;
        swift_arrayDestroy();
        MEMORY[0x22AA5EED0](v102, -1, -1);
        MEMORY[0x22AA5EED0](v84, -1, -1);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        return (*(v124 + 8))(v99, v116);
      }

      else
      {
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        v96 = *(v77 + 8);
        v96(v121, v81);
        v96(v79, v81);
        return (*(v74 + 8))(v75, v76);
      }
    }
  }

  return result;
}

uint64_t sub_224D3FF9C()
{
  v1 = v0[3];
  sub_224A3D418(v0[2]);
  __swift_destroy_boxed_opaque_existential_1(v0 + 4);
  __swift_destroy_boxed_opaque_existential_1(v0 + 9);
  v2 = v0[14];
  swift_unknownObjectRelease();
  v3 = v0[16];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 18);
  __swift_destroy_boxed_opaque_existential_1(v0 + 23);
  v4 = OBJC_IVAR____TtC10ChronoCore21ControlReloadStrategy_logger;
  v5 = sub_224DAB258();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ControlReloadStrategy()
{
  result = qword_281358940;
  if (!qword_281358940)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_224D400C4()
{
  result = sub_224DAB258();
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

uint64_t sub_224D4028C@<X0>(void *a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = sub_224DAE6E8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 controlType];
  if (v9 == 1)
  {
    a2[3] = sub_224DAE998();
    a2[4] = sub_224D407A8(&qword_27D6F6AB0, MEMORY[0x277CE3DF8]);
    __swift_allocate_boxed_opaque_existential_1(a2);
    return sub_224DAE988();
  }

  else if (v9 == 3)
  {
    a2[3] = sub_224DAE978();
    a2[4] = sub_224D407A8(&qword_27D6F6AB8, MEMORY[0x277CE3DE8]);
    __swift_allocate_boxed_opaque_existential_1(a2);
    return sub_224DAE968();
  }

  else if (v9 == 2)
  {
    a2[3] = sub_224DAE958();
    a2[4] = sub_224D407A8(&qword_27D6F6AC0, MEMORY[0x277CE3DD8]);
    __swift_allocate_boxed_opaque_existential_1(a2);
    return sub_224DAE948();
  }

  else
  {
    sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
    (*(v5 + 104))(v8, *MEMORY[0x277CE3C30], v4);
    sub_224DAF638();
    return swift_willThrow();
  }
}

unint64_t sub_224D4053C()
{
  result = qword_27D6F6A98;
  if (!qword_27D6F6A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F6A98);
  }

  return result;
}

uint64_t sub_224D40608(void *a1)
{
  v3 = *(sub_224DAC2B8() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  return sub_224D38464(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), (v1 + v4), *(v1 + v5), *(v1 + v6), *(v1 + v6 + 8), *(v1 + ((v6 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v6 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_224D406D4(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v7 = *(sub_224DAC2B8() - 8);
  v8 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v3 + 16);
  v11 = *(v3 + v9);
  v12 = *(v3 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_224D35C04(a1, a2, a3, v10, v3 + v8, v11, v12);
}

uint64_t sub_224D407A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_224D4082C(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v21 = a1;
  v22 = a2;
  v20 = sub_224DAAF48();
  v6 = *(v20 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v20);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  v11 = MEMORY[0x277D84F90];
  if (!v10)
  {
    return v11;
  }

  v23 = MEMORY[0x277D84F90];
  sub_224ADA17C(0, v10, 0);
  v11 = v23;
  v12 = *(sub_224DAAE38() - 8);
  v13 = a3 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
  v19 = v6 + 32;
  v18 = *(v12 + 72);
  while (1)
  {
    v21(v13);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v23 = v11;
    v15 = *(v11 + 16);
    v14 = *(v11 + 24);
    if (v15 >= v14 >> 1)
    {
      sub_224ADA17C(v14 > 1, v15 + 1, 1);
      v11 = v23;
    }

    *(v11 + 16) = v15 + 1;
    (*(v6 + 32))(v11 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15, v9, v20);
    v13 += v18;
    if (!--v10)
    {
      return v11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_224D40A30(void (*a1)(void **__return_ptr, id *), uint64_t a2, unint64_t a3)
{
  v5 = v3;
  if (a3 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_224DAF838())
  {
    result = MEMORY[0x277D84F90];
    if (!i)
    {
      break;
    }

    v16 = MEMORY[0x277D84F90];
    sub_224DAF9E8();
    if (i < 0)
    {
      __break(1u);
LABEL_19:

      __break(1u);
      return result;
    }

    for (j = 0; ; ++j)
    {
      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      if ((a3 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x22AA5DCC0](j, a3);
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v11 = *(a3 + 8 * j + 32);
      }

      v4 = v11;
      v14 = v11;
      a1(&v15, &v14);
      if (v5)
      {
        goto LABEL_19;
      }

      v5 = 0;

      v4 = v15;
      sub_224DAF9B8();
      v12 = *(v16 + 16);
      sub_224DAF9F8();
      sub_224DAFA08();
      sub_224DAF9C8();
      if (v10 == i)
      {
        return v16;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  return result;
}

void sub_224D40BA4(void (*a1)(__int128 *__return_ptr, id *), uint64_t a2, unint64_t a3)
{
  v5 = v3;
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_224DAF838())
  {
    v17 = MEMORY[0x277D84F90];
    sub_224ADA4E0(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      __break(1u);
LABEL_20:

      __break(1u);
      return;
    }

    v8 = 0;
    v9 = v17;
    while (1)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if ((a3 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x22AA5DCC0](v8, a3);
      }

      else
      {
        if (v8 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v11 = *(a3 + 8 * v8 + 32);
      }

      v4 = v11;
      v15 = v11;
      a1(v16, &v15);
      if (v5)
      {
        goto LABEL_20;
      }

      v5 = 0;

      v17 = v9;
      v13 = *(v9 + 16);
      v12 = *(v9 + 24);
      v4 = (v13 + 1);
      if (v13 >= v12 >> 1)
      {
        sub_224ADA4E0((v12 > 1), v13 + 1, 1);
        v9 = v17;
      }

      *(v9 + 16) = v4;
      sub_224A36F98(v16, v9 + 40 * v13 + 32);
      ++v8;
      if (v10 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }
}

void sub_224D40D40(void (*a1)(id *), void *a2, unint64_t a3)
{
  v4 = v3;
  v26 = a1;
  v27 = a2;
  v25 = sub_224DAC268();
  v6 = *(v25 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v25);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_224DAF838())
  {
    v11 = a3;
    v29 = MEMORY[0x277D84F90];
    a3 = &v29;
    sub_224ADA224(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      __break(1u);
LABEL_20:

      __break(1u);
      return;
    }

    v12 = 0;
    v13 = v29;
    v14 = v11;
    v23 = v11;
    v24 = v11 & 0xC000000000000001;
    v20 = v11 & 0xFFFFFFFFFFFFFF8;
    v21 = v6 + 32;
    v22 = i;
    while (1)
    {
      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v24)
      {
        v16 = MEMORY[0x22AA5DCC0](v12, v14);
      }

      else
      {
        if (v12 >= *(v20 + 16))
        {
          goto LABEL_17;
        }

        v16 = *(v14 + 8 * v12 + 32);
      }

      i = v16;
      v28 = v16;
      a3 = v27;
      v26(&v28);
      if (v4)
      {
        goto LABEL_20;
      }

      v4 = 0;

      v29 = v13;
      v18 = *(v13 + 16);
      v17 = *(v13 + 24);
      if (v18 >= v17 >> 1)
      {
        a3 = &v29;
        sub_224ADA224(v17 > 1, v18 + 1, 1);
        v13 = v29;
      }

      *(v13 + 16) = v18 + 1;
      (*(v6 + 32))(v13 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v18, v9, v25);
      ++v12;
      v14 = v23;
      if (v15 == v22)
      {
        return;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }
}

uint64_t sub_224D40F88(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v21 = a1;
  v22 = a2;
  v20 = sub_224DA9688();
  v6 = *(v20 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v20);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  v11 = MEMORY[0x277D84F90];
  if (!v10)
  {
    return v11;
  }

  v23 = MEMORY[0x277D84F90];
  sub_224ADA268(0, v10, 0);
  v11 = v23;
  v19 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v12 = a3 + v19;
  v18 = (v6 + 32);
  v13 = *(v6 + 72);
  while (1)
  {
    v21(v12);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v23 = v11;
    v15 = *(v11 + 16);
    v14 = *(v11 + 24);
    if (v15 >= v14 >> 1)
    {
      sub_224ADA268(v14 > 1, v15 + 1, 1);
      v11 = v23;
    }

    *(v11 + 16) = v15 + 1;
    (*v18)(v11 + v19 + v15 * v13, v9, v20);
    v12 += v13;
    if (!--v10)
    {
      return v11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_224D41144(void (*a1)(uint64_t, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v19 = a1;
  v20 = a2;
  v18 = sub_224DAB018();
  v6 = *(v18 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v18);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  v11 = MEMORY[0x277D84F90];
  if (v10)
  {
    v22 = MEMORY[0x277D84F90];
    sub_224ADA758(0, v10, 0);
    v11 = v22;
    v12 = *(sub_224DAC268() - 8);
    v13 = a3 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v17[1] = v6 + 32;
    v17[0] = *(v12 + 72);
    while (1)
    {
      v19(v13, &v21);
      if (v4)
      {
        break;
      }

      v4 = 0;
      v22 = v11;
      v15 = *(v11 + 16);
      v14 = *(v11 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_224ADA758(v14 > 1, v15 + 1, 1);
        v11 = v22;
      }

      *(v11 + 16) = v15 + 1;
      (*(v6 + 32))(v11 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15, v9, v18);
      v13 += v17[0];
      if (!--v10)
      {
        return v11;
      }
    }
  }

  return v11;
}