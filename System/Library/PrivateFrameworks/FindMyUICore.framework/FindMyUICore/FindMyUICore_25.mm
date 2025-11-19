uint64_t sub_24B28DC6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[21] = a3;
  v4[22] = v3;
  v4[19] = a1;
  v4[20] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8580);
  v4[23] = swift_task_alloc();
  v5 = sub_24B2D2504();
  v4[24] = v5;
  v4[25] = *(v5 - 8);
  v4[26] = swift_task_alloc();
  v6 = sub_24B2D3184();
  v4[27] = v6;
  v4[28] = *(v6 - 8);
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B28DDF4, v3, 0);
}

void sub_24B28DDF4()
{
  v182 = v0;
  v1 = v0[33];
  v2 = v0[27];
  v3 = v0[28];
  v4 = v0[22];
  v5 = OBJC_IVAR____TtC12FindMyUICore16ContactsProvider_subscriptionsStorage;
  v0[34] = OBJC_IVAR____TtC12FindMyUICore16ContactsProvider_subscriptionsStorage;
  v6 = v4 + v5;
  swift_beginAccess();
  v175 = *(v3 + 16);
  v175(v1, v6, v2);

  v7 = sub_24B2D3164();
  v8 = sub_24B2D5934();

  v173 = v6;
  if (os_log_type_enabled(v7, v8))
  {
    v178 = v0[33];
    v167 = v0[28];
    v169 = v0[27];
    v9 = v0[25];
    v10 = v0[26];
    v11 = v0[24];
    v159 = v0[20];
    v162 = v0[21];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v181 = v13;
    *v12 = 136447235;
    sub_24B2D12A4();
    v14 = sub_24B2D24B4();
    v16 = v15;
    (*(v9 + 8))(v10, v11);
    v17 = sub_24AFF321C(v14, v16, &v181);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2160;
    *(v12 + 14) = 1752392040;
    *(v12 + 22) = 2081;
    type metadata accessor for ContactsProvider.Subscription(0);
    sub_24B2BF448(&qword_27EFCDB80, type metadata accessor for ContactsProvider.Subscription);
    v18 = sub_24B2D57F4();
    v20 = sub_24AFF321C(v18, v19, &v181);

    *(v12 + 24) = v20;
    *(v12 + 32) = 2160;
    *(v12 + 34) = 1752392040;
    *(v12 + 42) = 2081;
    v0[16] = v159;
    v0[17] = v162;

    v21 = sub_24B2D53C4();
    v23 = sub_24AFF321C(v21, v22, &v181);

    *(v12 + 44) = v23;
    _os_log_impl(&dword_24AFD2000, v7, v8, "Provider(%{public}s):setSubscriptions\n- subscriptions: %{private,mask.hash}s)\n- subscriber: %{private,mask.hash}s)", v12, 0x34u);
    swift_arrayDestroy();
    v24 = v13;
    v6 = v173;
    MEMORY[0x24C23D530](v24, -1, -1);
    MEMORY[0x24C23D530](v12, -1, -1);

    v25 = *(v167 + 8);
    v25(v178, v169);
  }

  else
  {
    v26 = v0[33];
    v27 = v0[27];
    v28 = v0[28];

    v25 = *(v28 + 8);
    v25(v26, v27);
  }

  v29 = v0[19];
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDB48);
  v0[35] = v30;
  v31 = *(v6 + *(v30 + 40));
  v32 = *(v6 + *(v30 + 36));
  v0[18] = v32;
  v34 = v0[20];
  v33 = v0[21];
  v179 = v31;
  if (*(v29 + 16))
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v181 = v32;
    sub_24B1C94F8(v29, v34, v33, isUniquelyReferenced_nonNull_native);

    v36 = v181;
    v0[18] = v181;
  }

  else
  {

    sub_24B18C26C(0, v34, v33);
    v36 = v0[18];
  }

  v0[36] = v36;
  v37 = *(v36 + 64);
  v181 = MEMORY[0x277D84F90];
  v38 = -1;
  v39 = -1 << *(v36 + 32);
  if (-v39 < 64)
  {
    v38 = ~(-1 << -v39);
  }

  v40 = v38 & v37;
  v41 = (63 - v39) >> 6;
  swift_bridgeObjectRetain_n();
  v42 = 0;
  if (v40)
  {
    goto LABEL_15;
  }

  while (1)
  {
    v43 = v42 + 1;
    if (__OFADD__(v42, 1))
    {
      __break(1u);
      return;
    }

    if (v43 >= v41)
    {
      break;
    }

    v40 = *(v36 + 64 + 8 * v43);
    ++v42;
    if (v40)
    {
      v42 = v43;
      do
      {
LABEL_15:
        v40 &= v40 - 1;

        sub_24B030120(v44);
      }

      while (v40);
      continue;
    }
  }

  v45 = sub_24B1D032C(v181);
  v0[37] = v45;

  v46 = v0[19];
  if (*(v31 + 16) <= *(v29 + 16) >> 3)
  {
    v181 = v0[19];

    sub_24B2A3C64(v31);
    v47 = v181;
  }

  else
  {

    v47 = sub_24B2A85C0(v31, v46);
  }

  v170 = v47;
  v0[38] = v47;
  if (*(v45 + 16) <= *(v31 + 16) >> 3)
  {
    v181 = v31;

    sub_24B2A3C64(v45);
    v48 = v181;
  }

  else
  {

    v48 = sub_24B2A85C0(v45, v31);
  }

  v49 = v0[27];
  v168 = v25;
  if (*(v48 + 16))
  {
    v175(v0[31], v6, v49);

    v50 = sub_24B2D3164();
    v51 = sub_24B2D5934();

    v163 = v51;
    v52 = os_log_type_enabled(v50, v51);
    v53 = v0[31];
    v54 = v0[27];
    if (v52)
    {
      v160 = v0[27];
      v56 = v0[25];
      v55 = v0[26];
      v57 = v0[24];
      v156 = v0[31];
      v151 = v0[20];
      v152 = v0[21];
      v58 = swift_slowAlloc();
      v154 = swift_slowAlloc();
      v181 = v154;
      *v58 = 136447235;
      sub_24B2D12A4();
      v59 = sub_24B2D24B4();
      v61 = v60;
      (*(v56 + 8))(v55, v57);
      v62 = sub_24AFF321C(v59, v61, &v181);

      *(v58 + 4) = v62;
      *(v58 + 12) = 2160;
      *(v58 + 14) = 1752392040;
      *(v58 + 22) = 2081;
      type metadata accessor for ContactsProvider.Subscription(0);
      sub_24B2BF448(&qword_27EFCDB80, type metadata accessor for ContactsProvider.Subscription);
      v63 = sub_24B2D57F4();
      v65 = sub_24AFF321C(v63, v64, &v181);

      *(v58 + 24) = v65;
      *(v58 + 32) = 2160;
      *(v58 + 34) = 1752392040;
      *(v58 + 42) = 2081;
      v0[12] = v151;
      v0[13] = v152;

      v66 = sub_24B2D53C4();
      v68 = sub_24AFF321C(v66, v67, &v181);

      *(v58 + 44) = v68;
      _os_log_impl(&dword_24AFD2000, v50, v163, "Provider(%{public}s):setSubscriptions-didRemoveUniqueSubscriptions:YES\n- SubscriptionsThatDoNotExistAnymore: %{private,mask.hash}s)\n- Subscriber: %{private,mask.hash}s", v58, 0x34u);
      swift_arrayDestroy();
      MEMORY[0x24C23D530](v154, -1, -1);
      v69 = v58;
      v25 = v168;
      MEMORY[0x24C23D530](v69, -1, -1);

      v70 = v156;
      v71 = v160;
    }

    else
    {

      v70 = v53;
      v71 = v54;
    }

    v25(v70, v71);
    if (!*(v45 + 16))
    {
      sub_24B17EF28();
    }
  }

  else
  {
    v175(v0[32], v6, v49);

    v72 = sub_24B2D3164();
    v73 = sub_24B2D5934();

    v74 = os_log_type_enabled(v72, v73);
    v75 = v0[32];
    v76 = v0[27];
    if (v74)
    {
      v77 = v0[25];
      v78 = v0[26];
      v164 = v0[32];
      v79 = v0[24];
      v153 = v0[20];
      v155 = v0[21];
      v80 = swift_slowAlloc();
      v157 = swift_slowAlloc();
      v181 = v157;
      *v80 = 136447235;
      sub_24B2D12A4();
      v81 = sub_24B2D24B4();
      v158 = v76;
      v83 = v82;
      (*(v77 + 8))(v78, v79);
      v84 = sub_24AFF321C(v81, v83, &v181);

      *(v80 + 4) = v84;
      *(v80 + 12) = 2160;
      *(v80 + 14) = 1752392040;
      *(v80 + 22) = 2081;
      type metadata accessor for ContactsProvider.Subscription(0);
      sub_24B2BF448(&qword_27EFCDB80, type metadata accessor for ContactsProvider.Subscription);
      v85 = sub_24B2D57F4();
      v87 = sub_24AFF321C(v85, v86, &v181);

      *(v80 + 24) = v87;
      *(v80 + 32) = 2160;
      *(v80 + 34) = 1752392040;
      *(v80 + 42) = 2081;
      v0[14] = v153;
      v0[15] = v155;

      v88 = sub_24B2D53C4();
      v90 = sub_24AFF321C(v88, v89, &v181);

      *(v80 + 44) = v90;
      _os_log_impl(&dword_24AFD2000, v72, v73, "Provider(%{public}s):setSubscriptions-didRemoveUniqueSubscriptions:NO\n- Skipping notification due to %{private,mask.hash}s)\n- Subscriber: %{private,mask.hash}s", v80, 0x34u);
      swift_arrayDestroy();
      MEMORY[0x24C23D530](v157, -1, -1);
      MEMORY[0x24C23D530](v80, -1, -1);

      v91 = v164;
      v92 = v158;
    }

    else
    {

      v91 = v75;
      v92 = v76;
    }

    v25 = v168;
    v168(v91, v92);
  }

  v93 = v0[27];
  if (!*(v170 + 16))
  {
    v115 = v0[30];

    v175(v115, v173, v93);

    v116 = sub_24B2D3164();
    v117 = sub_24B2D5934();

    v118 = os_log_type_enabled(v116, v117);
    v119 = v0[30];
    v120 = v0[27];
    if (v118)
    {
      v180 = v0[27];
      v122 = v0[25];
      v121 = v0[26];
      v177 = v0[30];
      v123 = v0[24];
      v171 = v0[21];
      v166 = v0[20];
      v124 = swift_slowAlloc();
      v172 = swift_slowAlloc();
      v181 = v172;
      *v124 = 136447235;
      sub_24B2D12A4();
      v125 = sub_24B2D24B4();
      v127 = v126;
      (*(v122 + 8))(v121, v123);
      v128 = sub_24AFF321C(v125, v127, &v181);

      *(v124 + 4) = v128;
      *(v124 + 12) = 2160;
      *(v124 + 14) = 1752392040;
      *(v124 + 22) = 2081;
      type metadata accessor for ContactsProvider.Subscription(0);
      sub_24B2BF448(&qword_27EFCDB80, type metadata accessor for ContactsProvider.Subscription);
      v129 = sub_24B2D57F4();
      v131 = v130;

      v132 = sub_24AFF321C(v129, v131, &v181);

      *(v124 + 24) = v132;
      *(v124 + 32) = 2160;
      *(v124 + 34) = 1752392040;
      *(v124 + 42) = 2081;
      v0[10] = v166;
      v0[11] = v171;

      v133 = sub_24B2D53C4();
      v135 = sub_24AFF321C(v133, v134, &v181);

      *(v124 + 44) = v135;
      _os_log_impl(&dword_24AFD2000, v116, v117, "Provider(%{public}s):setSubscriptions-didAddNewUniqueSubscriptions:NO\n- Skipping notification due to %{private,mask.hash}s)\n- Subscriber: %{private,mask.hash}s", v124, 0x34u);
      swift_arrayDestroy();
      MEMORY[0x24C23D530](v172, -1, -1);
      MEMORY[0x24C23D530](v124, -1, -1);

      v168(v177, v180);
    }

    else
    {

      v25(v119, v120);
    }

LABEL_45:
    v144 = v0[19];
    if (*(v144 + 16))
    {
    }

    else
    {
      v144 = 0;
    }

    v145 = v0[37];
    v146 = v0[35];
    v147 = v0[22] + v0[34];
    v149 = v0[20];
    v148 = v0[21];
    swift_beginAccess();

    sub_24B18C26C(v144, v149, v148);
    sub_24B297674(&qword_27EFCDB48, &unk_24B2EEE80, &qword_27EFCF870);
    *(v147 + *(v146 + 40)) = v145;

    sub_24B297AEC();
    swift_endAccess();

    v150 = v0[1];

    v150();
    return;
  }

  v94 = v0[29];

  v175(v94, v173, v93);

  v95 = sub_24B2D3164();
  v96 = sub_24B2D5934();

  v97 = os_log_type_enabled(v95, v96);
  v98 = v0[29];
  v99 = v0[27];
  if (v97)
  {
    v174 = v0[29];
    v176 = v0[27];
    v100 = v0[25];
    v101 = v0[26];
    v102 = v0[24];
    v161 = v0[20];
    v165 = v0[21];
    v103 = swift_slowAlloc();
    v104 = swift_slowAlloc();
    v181 = v104;
    *v103 = 136447235;
    sub_24B2D12A4();
    v105 = sub_24B2D24B4();
    v107 = v106;
    (*(v100 + 8))(v101, v102);
    v108 = sub_24AFF321C(v105, v107, &v181);

    *(v103 + 4) = v108;
    *(v103 + 12) = 2160;
    *(v103 + 14) = 1752392040;
    *(v103 + 22) = 2081;
    type metadata accessor for ContactsProvider.Subscription(0);
    sub_24B2BF448(&qword_27EFCDB80, type metadata accessor for ContactsProvider.Subscription);
    v109 = sub_24B2D57F4();
    v111 = sub_24AFF321C(v109, v110, &v181);

    *(v103 + 24) = v111;
    *(v103 + 32) = 2160;
    *(v103 + 34) = 1752392040;
    *(v103 + 42) = 2081;
    v0[8] = v161;
    v0[9] = v165;

    v112 = sub_24B2D53C4();
    v114 = sub_24AFF321C(v112, v113, &v181);

    *(v103 + 44) = v114;
    _os_log_impl(&dword_24AFD2000, v95, v96, "Provider(%{public}s):setSubscriptions-didAddNewUniqueSubscriptions:YES\n- subscriptionsThatDidNotExistBefore: %{private,mask.hash}s)\n- subscriber: %{private,mask.hash}s)", v103, 0x34u);
    swift_arrayDestroy();
    MEMORY[0x24C23D530](v104, -1, -1);
    MEMORY[0x24C23D530](v103, -1, -1);

    v168(v174, v176);
  }

  else
  {

    v25(v98, v99);
  }

  v136 = *(v179 + 16);

  if (v136)
  {
    v137 = v0[38];
    v138 = v0[22];
    v139 = v0[23];
    v140 = sub_24B2D56D4();
    (*(*(v140 - 8) + 56))(v139, 1, 1, v140);
    v141 = sub_24B2BF448(&qword_27EFCDB68, type metadata accessor for ContactsProvider);
    v142 = swift_allocObject();
    v142[2] = v138;
    v142[3] = v141;
    v142[4] = v138;
    v142[5] = v137;
    swift_retain_n();
    sub_24B00A9A4(0, 0, v139, &unk_24B2EEEC0, v142);

    goto LABEL_45;
  }

  v143 = swift_task_alloc();
  v0[39] = v143;
  *v143 = v0;
  v143[1] = sub_24B28F0A8;

  sub_24B17D404();
}

uint64_t sub_24B28F0A8()
{
  v2 = *v1;
  *(*v1 + 320) = v0;

  if (v0)
  {
    v3 = *(v2 + 176);

    v4 = sub_24B28F434;
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 176);
    v4 = sub_24B28F1D8;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

uint64_t sub_24B28F1D8()
{
  v1 = v0[38];
  v2 = v0[22];
  v3 = v0[23];
  v4 = sub_24B2D56D4();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = sub_24B2BF448(&qword_27EFCDB68, type metadata accessor for ContactsProvider);
  v6 = swift_allocObject();
  v6[2] = v2;
  v6[3] = v5;
  v6[4] = v2;
  v6[5] = v1;
  swift_retain_n();
  sub_24B00A9A4(0, 0, v3, &unk_24B2EEEC0, v6);

  v7 = v0[19];
  if (*(v7 + 16))
  {
  }

  else
  {
    v7 = 0;
  }

  v8 = v0[37];
  v9 = v0[35];
  v10 = v0[22] + v0[34];
  v12 = v0[20];
  v11 = v0[21];
  swift_beginAccess();

  sub_24B18C26C(v7, v12, v11);
  sub_24B297674(&qword_27EFCDB48, &unk_24B2EEE80, &qword_27EFCF870);
  *(v10 + *(v9 + 40)) = v8;

  sub_24B297AEC();
  swift_endAccess();

  v13 = v0[1];

  return v13();
}

uint64_t sub_24B28F434()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B28F4FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[21] = a3;
  v4[22] = v3;
  v4[19] = a1;
  v4[20] = a2;
  v5 = sub_24B2D2504();
  v4[23] = v5;
  v4[24] = *(v5 - 8);
  v4[25] = swift_task_alloc();
  v6 = sub_24B2D3184();
  v4[26] = v6;
  v4[27] = *(v6 - 8);
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B28F64C, v3, 0);
}

void sub_24B28F64C()
{
  v184 = v0;
  v1 = v0[32];
  v3 = v0[26];
  v2 = v0[27];
  v4 = v0[22];
  v5 = OBJC_IVAR____TtC12FindMyUICore23PeopleLocationsProvider_subscriptionsStorage;
  v0[33] = OBJC_IVAR____TtC12FindMyUICore23PeopleLocationsProvider_subscriptionsStorage;
  v6 = v4 + v5;
  swift_beginAccess();
  v7 = *(v2 + 16);
  v0[34] = v7;
  v0[35] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v170 = v7;
  v7(v1, v6, v3);

  v8 = sub_24B2D3164();
  v9 = sub_24B2D5934();

  v178 = v6;
  if (os_log_type_enabled(v8, v9))
  {
    v163 = v0[26];
    v168 = v0[32];
    v11 = v0[24];
    v10 = v0[25];
    v12 = v0[23];
    v154 = v0[21];
    v158 = v0[27];
    v152 = v0[20];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v183 = v14;
    *v13 = 136447235;
    sub_24B2D12A4();
    v15 = sub_24B2D24B4();
    v17 = v16;
    (*(v11 + 8))(v10, v12);
    v18 = sub_24AFF321C(v15, v17, &v183);

    *(v13 + 4) = v18;
    *(v13 + 12) = 2160;
    *(v13 + 14) = 1752392040;
    *(v13 + 22) = 2081;
    type metadata accessor for PeopleLocationsProvider.Subscription(0);
    sub_24B2BF448(&qword_27EFCC7D8, type metadata accessor for PeopleLocationsProvider.Subscription);
    v19 = sub_24B2D57F4();
    v21 = sub_24AFF321C(v19, v20, &v183);

    *(v13 + 24) = v21;
    *(v13 + 32) = 2160;
    *(v13 + 34) = 1752392040;
    *(v13 + 42) = 2081;
    v0[16] = v152;
    v0[17] = v154;

    v22 = sub_24B2D53C4();
    v24 = sub_24AFF321C(v22, v23, &v183);

    *(v13 + 44) = v24;
    _os_log_impl(&dword_24AFD2000, v8, v9, "Provider(%{public}s):setSubscriptions\n- subscriptions: %{private,mask.hash}s)\n- subscriber: %{private,mask.hash}s)", v13, 0x34u);
    swift_arrayDestroy();
    v25 = v14;
    v6 = v178;
    MEMORY[0x24C23D530](v25, -1, -1);
    MEMORY[0x24C23D530](v13, -1, -1);

    v26 = *(v158 + 8);
    v26(v168, v163);
  }

  else
  {
    v27 = v0[32];
    v28 = v0[26];
    v29 = v0[27];

    v26 = *(v29 + 8);
    v26(v27, v28);
  }

  v0[36] = v26;
  v30 = v0[19];
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC7D0);
  v0[37] = v31;
  v32 = *(v6 + *(v31 + 40));
  v0[38] = v32;
  v33 = *(v6 + *(v31 + 36));
  v0[18] = v33;
  v35 = v0[20];
  v34 = v0[21];
  if (*(v30 + 16))
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v183 = v33;
    sub_24B1C96E0(v30, v35, v34, isUniquelyReferenced_nonNull_native);

    v37 = v183;
    v0[18] = v183;
  }

  else
  {

    sub_24B18C3B8(0, v35, v34);
    v37 = v0[18];
  }

  v0[39] = v37;
  v38 = *(v37 + 64);
  v183 = MEMORY[0x277D84F90];
  v39 = -1;
  v40 = -1 << *(v37 + 32);
  if (-v40 < 64)
  {
    v39 = ~(-1 << -v40);
  }

  v41 = v39 & v38;
  v42 = (63 - v40) >> 6;
  swift_bridgeObjectRetain_n();
  v43 = 0;
  if (v41)
  {
    goto LABEL_15;
  }

  while (1)
  {
    v44 = v43 + 1;
    if (__OFADD__(v43, 1))
    {
      __break(1u);
      return;
    }

    if (v44 >= v42)
    {
      break;
    }

    v41 = *(v37 + 64 + 8 * v44);
    ++v43;
    if (v41)
    {
      v43 = v44;
      do
      {
LABEL_15:
        v41 &= v41 - 1;

        sub_24B030820(v45);
      }

      while (v41);
      continue;
    }
  }

  v46 = sub_24B1D04BC(v183);
  v0[40] = v46;

  v47 = v0[19];
  if (*(v32 + 16) <= *(v30 + 16) >> 3)
  {
    v183 = v0[19];

    sub_24B2A3E6C(v32);
    v48 = v183;
  }

  else
  {

    v48 = sub_24B2AA7D8(v32, v47);
  }

  v0[41] = v48;
  if (*(v46 + 16) <= *(v32 + 16) >> 3)
  {
    v183 = v32;

    sub_24B2A3E6C(v46);
    v49 = v183;
  }

  else
  {

    v49 = sub_24B2AA7D8(v46, v32);
  }

  v0[42] = v49;
  v50 = v0[26];
  if (*(v49 + 16))
  {
    v170(v0[30], v178, v50);

    v51 = sub_24B2D3164();
    v52 = sub_24B2D5934();

    v53 = os_log_type_enabled(v51, v52);
    v54 = v0[30];
    v55 = v0[26];
    if (v53)
    {
      v174 = v0[26];
      v164 = v52;
      v57 = v0[24];
      v56 = v0[25];
      v169 = v0[30];
      v58 = v0[23];
      v153 = v0[20];
      v155 = v0[21];
      v59 = swift_slowAlloc();
      v159 = swift_slowAlloc();
      v183 = v159;
      *v59 = 136447235;
      sub_24B2D12A4();
      v60 = sub_24B2D24B4();
      v179 = v26;
      v62 = v61;
      (*(v57 + 8))(v56, v58);
      v63 = sub_24AFF321C(v60, v62, &v183);

      *(v59 + 4) = v63;
      *(v59 + 12) = 2160;
      *(v59 + 14) = 1752392040;
      *(v59 + 22) = 2081;
      type metadata accessor for PeopleLocationsProvider.Subscription(0);
      sub_24B2BF448(&qword_27EFCC7D8, type metadata accessor for PeopleLocationsProvider.Subscription);
      v64 = sub_24B2D57F4();
      v66 = sub_24AFF321C(v64, v65, &v183);

      *(v59 + 24) = v66;
      *(v59 + 32) = 2160;
      *(v59 + 34) = 1752392040;
      *(v59 + 42) = 2081;
      v0[12] = v153;
      v0[13] = v155;

      v67 = sub_24B2D53C4();
      v69 = sub_24AFF321C(v67, v68, &v183);

      *(v59 + 44) = v69;
      _os_log_impl(&dword_24AFD2000, v51, v164, "Provider(%{public}s):setSubscriptions-didRemoveUniqueSubscriptions:YES\n- SubscriptionsThatDoNotExistAnymore: %{private,mask.hash}s)\n- Subscriber: %{private,mask.hash}s", v59, 0x34u);
      swift_arrayDestroy();
      MEMORY[0x24C23D530](v159, -1, -1);
      MEMORY[0x24C23D530](v59, -1, -1);

      v179(v169, v174);
    }

    else
    {

      v26(v54, v55);
    }

    v89 = *(v46 + 16) == 0;
    v90 = swift_task_alloc();
    v0[45] = v90;
    *v90 = v0;
    v90[1] = sub_24B290B80;

    sub_24B1FADF4(v49, v89);
  }

  else
  {
    v170(v0[31], v178, v50);

    v70 = sub_24B2D3164();
    v71 = sub_24B2D5934();

    v72 = os_log_type_enabled(v70, v71);
    v73 = v0[31];
    v74 = v0[26];
    if (v72)
    {
      v171 = v0[31];
      v175 = v0[26];
      v76 = v0[24];
      v75 = v0[25];
      v77 = v0[23];
      v156 = v0[20];
      v160 = v0[21];
      v78 = swift_slowAlloc();
      v165 = swift_slowAlloc();
      v183 = v165;
      *v78 = 136447235;
      sub_24B2D12A4();
      v79 = sub_24B2D24B4();
      v180 = v26;
      v81 = v80;
      (*(v76 + 8))(v75, v77);
      v82 = sub_24AFF321C(v79, v81, &v183);

      *(v78 + 4) = v82;
      *(v78 + 12) = 2160;
      *(v78 + 14) = 1752392040;
      *(v78 + 22) = 2081;
      type metadata accessor for PeopleLocationsProvider.Subscription(0);
      sub_24B2BF448(&qword_27EFCC7D8, type metadata accessor for PeopleLocationsProvider.Subscription);
      v83 = sub_24B2D57F4();
      v85 = sub_24AFF321C(v83, v84, &v183);

      *(v78 + 24) = v85;
      *(v78 + 32) = 2160;
      *(v78 + 34) = 1752392040;
      *(v78 + 42) = 2081;
      v0[14] = v156;
      v0[15] = v160;

      v86 = sub_24B2D53C4();
      v88 = sub_24AFF321C(v86, v87, &v183);

      *(v78 + 44) = v88;
      _os_log_impl(&dword_24AFD2000, v70, v71, "Provider(%{public}s):setSubscriptions-didRemoveUniqueSubscriptions:NO\n- Skipping notification due to %{private,mask.hash}s)\n- Subscriber: %{private,mask.hash}s", v78, 0x34u);
      swift_arrayDestroy();
      MEMORY[0x24C23D530](v165, -1, -1);
      MEMORY[0x24C23D530](v78, -1, -1);

      v180(v171, v175);
    }

    else
    {

      v26(v73, v74);
    }

    if (*(v0[41] + 16))
    {
      v91 = v0[34];
      v92 = v0[33];
      v93 = v0[28];
      v94 = v0[26];
      v95 = v0[22];

      v91(v93, v95 + v92, v94);

      v96 = sub_24B2D3164();
      v97 = sub_24B2D5934();

      if (os_log_type_enabled(v96, v97))
      {
        v176 = v0[28];
        v181 = v0[36];
        v98 = v0[25];
        v172 = v0[26];
        v99 = v0[23];
        v100 = v0[24];
        v166 = v0[21];
        v161 = v0[20];
        v101 = swift_slowAlloc();
        v102 = swift_slowAlloc();
        v183 = v102;
        *v101 = 136447235;
        sub_24B2D12A4();
        v103 = sub_24B2D24B4();
        v105 = v104;
        (*(v100 + 8))(v98, v99);
        v106 = sub_24AFF321C(v103, v105, &v183);

        *(v101 + 4) = v106;
        *(v101 + 12) = 2160;
        *(v101 + 14) = 1752392040;
        *(v101 + 22) = 2081;
        type metadata accessor for PeopleLocationsProvider.Subscription(0);
        sub_24B2BF448(&qword_27EFCC7D8, type metadata accessor for PeopleLocationsProvider.Subscription);
        v107 = sub_24B2D57F4();
        v109 = sub_24AFF321C(v107, v108, &v183);

        *(v101 + 24) = v109;
        *(v101 + 32) = 2160;
        *(v101 + 34) = 1752392040;
        *(v101 + 42) = 2081;
        v0[8] = v161;
        v0[9] = v166;

        v110 = sub_24B2D53C4();
        v112 = sub_24AFF321C(v110, v111, &v183);

        *(v101 + 44) = v112;
        _os_log_impl(&dword_24AFD2000, v96, v97, "Provider(%{public}s):setSubscriptions-didAddNewUniqueSubscriptions:YES\n- subscriptionsThatDidNotExistBefore: %{private,mask.hash}s)\n- subscriber: %{private,mask.hash}s)", v101, 0x34u);
        swift_arrayDestroy();
        MEMORY[0x24C23D530](v102, -1, -1);
        MEMORY[0x24C23D530](v101, -1, -1);

        v181(v176, v172);
      }

      else
      {
        v139 = v0[36];
        v140 = v0[28];
        v141 = v0[26];

        v139(v140, v141);
      }

      v142 = *(v0[38] + 16);

      v143 = swift_task_alloc();
      v0[43] = v143;
      *v143 = v0;
      v143[1] = sub_24B2908BC;
      v144 = v0[41];

      sub_24B1FA3E8(v144, v142 == 0);
    }

    else
    {
      v113 = v0[34];
      v114 = v0[33];
      v115 = v0[29];
      v116 = v0[26];
      v117 = v0[22];

      v113(v115, v117 + v114, v116);

      v118 = sub_24B2D3164();
      v119 = sub_24B2D5934();

      v120 = os_log_type_enabled(v118, v119);
      v121 = v0[36];
      v122 = v0[29];
      v123 = v0[26];
      if (v120)
      {
        v177 = v0[36];
        v182 = v0[29];
        v125 = v0[24];
        v124 = v0[25];
        v173 = v0[26];
        v126 = v0[23];
        v157 = v0[20];
        v162 = v0[21];
        v127 = swift_slowAlloc();
        v167 = swift_slowAlloc();
        v183 = v167;
        *v127 = 136447235;
        sub_24B2D12A4();
        v128 = sub_24B2D24B4();
        v130 = v129;
        (*(v125 + 8))(v124, v126);
        v131 = sub_24AFF321C(v128, v130, &v183);

        *(v127 + 4) = v131;
        *(v127 + 12) = 2160;
        *(v127 + 14) = 1752392040;
        *(v127 + 22) = 2081;
        type metadata accessor for PeopleLocationsProvider.Subscription(0);
        sub_24B2BF448(&qword_27EFCC7D8, type metadata accessor for PeopleLocationsProvider.Subscription);
        v132 = sub_24B2D57F4();
        v134 = v133;

        v135 = sub_24AFF321C(v132, v134, &v183);

        *(v127 + 24) = v135;
        *(v127 + 32) = 2160;
        *(v127 + 34) = 1752392040;
        *(v127 + 42) = 2081;
        v0[10] = v157;
        v0[11] = v162;

        v136 = sub_24B2D53C4();
        v138 = sub_24AFF321C(v136, v137, &v183);

        *(v127 + 44) = v138;
        _os_log_impl(&dword_24AFD2000, v118, v119, "Provider(%{public}s):setSubscriptions-didAddNewUniqueSubscriptions:NO\n- Skipping notification due to %{private,mask.hash}s)\n- Subscriber: %{private,mask.hash}s", v127, 0x34u);
        swift_arrayDestroy();
        MEMORY[0x24C23D530](v167, -1, -1);
        MEMORY[0x24C23D530](v127, -1, -1);

        v177(v182, v173);
      }

      else
      {

        v121(v122, v123);
      }

      v145 = v0[19];
      if (*(v145 + 16))
      {
      }

      else
      {
        v145 = 0;
      }

      v146 = v0[40];
      v147 = v0[37];
      v148 = v0[21];
      v149 = v0[22] + v0[33];
      v150 = v0[20];
      swift_beginAccess();

      sub_24B18C3B8(v145, v150, v148);
      sub_24B297674(&qword_27EFCC7D0, &unk_24B2EC040, &qword_27EFCF868);
      *(v149 + *(v147 + 40)) = v146;

      sub_24B297D1C();
      swift_endAccess();

      v151 = v0[1];

      v151();
    }
  }
}

uint64_t sub_24B2908BC()
{
  v2 = *v1;
  *(*v1 + 352) = v0;

  if (v0)
  {
    v3 = *(v2 + 176);

    v4 = sub_24B2BF7D8;
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 176);
    v4 = sub_24B290A08;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

uint64_t sub_24B290A08()
{
  v1 = v0[19];
  if (*(v1 + 16))
  {
  }

  else
  {
    v1 = 0;
  }

  v2 = v0[40];
  v3 = v0[37];
  v4 = v0[21];
  v5 = v0[22] + v0[33];
  v6 = v0[20];
  swift_beginAccess();

  sub_24B18C3B8(v1, v6, v4);
  sub_24B297674(&qword_27EFCC7D0, &unk_24B2EC040, &qword_27EFCF868);
  *(v5 + *(v3 + 40)) = v2;

  sub_24B297D1C();
  swift_endAccess();

  v7 = v0[1];

  return v7();
}

uint64_t sub_24B290B80()
{
  v2 = *v1;
  *(*v1 + 368) = v0;

  if (v0)
  {
    v3 = *(v2 + 176);

    v4 = sub_24B2BF7DC;
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 176);
    v4 = sub_24B290CD0;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

uint64_t sub_24B290CD0()
{
  v75 = v0;
  if (*(v0[41] + 16))
  {
    v1 = v0[34];
    v2 = v0[33];
    v3 = v0[28];
    v4 = v0[26];
    v5 = v0[22];

    v1(v3, v5 + v2, v4);

    v6 = sub_24B2D3164();
    v7 = sub_24B2D5934();

    if (os_log_type_enabled(v6, v7))
    {
      v70 = v0[28];
      v72 = v0[36];
      v8 = v0[25];
      v68 = v0[26];
      v9 = v0[23];
      v10 = v0[24];
      v66 = v0[21];
      v64 = v0[20];
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v74 = v12;
      *v11 = 136447235;
      sub_24B2D12A4();
      v13 = sub_24B2D24B4();
      v15 = v14;
      (*(v10 + 8))(v8, v9);
      v16 = sub_24AFF321C(v13, v15, &v74);

      *(v11 + 4) = v16;
      *(v11 + 12) = 2160;
      *(v11 + 14) = 1752392040;
      *(v11 + 22) = 2081;
      type metadata accessor for PeopleLocationsProvider.Subscription(0);
      sub_24B2BF448(&qword_27EFCC7D8, type metadata accessor for PeopleLocationsProvider.Subscription);
      v17 = sub_24B2D57F4();
      v19 = sub_24AFF321C(v17, v18, &v74);

      *(v11 + 24) = v19;
      *(v11 + 32) = 2160;
      *(v11 + 34) = 1752392040;
      *(v11 + 42) = 2081;
      v0[8] = v64;
      v0[9] = v66;

      v20 = sub_24B2D53C4();
      v22 = sub_24AFF321C(v20, v21, &v74);

      *(v11 + 44) = v22;
      _os_log_impl(&dword_24AFD2000, v6, v7, "Provider(%{public}s):setSubscriptions-didAddNewUniqueSubscriptions:YES\n- subscriptionsThatDidNotExistBefore: %{private,mask.hash}s)\n- subscriber: %{private,mask.hash}s)", v11, 0x34u);
      swift_arrayDestroy();
      MEMORY[0x24C23D530](v12, -1, -1);
      MEMORY[0x24C23D530](v11, -1, -1);

      v72(v70, v68);
    }

    else
    {
      v49 = v0[36];
      v50 = v0[28];
      v51 = v0[26];

      v49(v50, v51);
    }

    v52 = *(v0[38] + 16);

    v53 = swift_task_alloc();
    v0[43] = v53;
    *v53 = v0;
    v53[1] = sub_24B2908BC;
    v54 = v0[41];

    return sub_24B1FA3E8(v54, v52 == 0);
  }

  else
  {
    v23 = v0[34];
    v24 = v0[33];
    v25 = v0[29];
    v26 = v0[26];
    v27 = v0[22];

    v23(v25, v27 + v24, v26);

    v28 = sub_24B2D3164();
    v29 = sub_24B2D5934();

    v30 = os_log_type_enabled(v28, v29);
    v31 = v0[36];
    v32 = v0[29];
    v33 = v0[26];
    if (v30)
    {
      v71 = v0[36];
      v73 = v0[29];
      v35 = v0[24];
      v34 = v0[25];
      v69 = v0[26];
      v36 = v0[23];
      v63 = v0[20];
      v65 = v0[21];
      v37 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v74 = v67;
      *v37 = 136447235;
      sub_24B2D12A4();
      v38 = sub_24B2D24B4();
      v40 = v39;
      (*(v35 + 8))(v34, v36);
      v41 = sub_24AFF321C(v38, v40, &v74);

      *(v37 + 4) = v41;
      *(v37 + 12) = 2160;
      *(v37 + 14) = 1752392040;
      *(v37 + 22) = 2081;
      type metadata accessor for PeopleLocationsProvider.Subscription(0);
      sub_24B2BF448(&qword_27EFCC7D8, type metadata accessor for PeopleLocationsProvider.Subscription);
      v42 = sub_24B2D57F4();
      v44 = v43;

      v45 = sub_24AFF321C(v42, v44, &v74);

      *(v37 + 24) = v45;
      *(v37 + 32) = 2160;
      *(v37 + 34) = 1752392040;
      *(v37 + 42) = 2081;
      v0[10] = v63;
      v0[11] = v65;

      v46 = sub_24B2D53C4();
      v48 = sub_24AFF321C(v46, v47, &v74);

      *(v37 + 44) = v48;
      _os_log_impl(&dword_24AFD2000, v28, v29, "Provider(%{public}s):setSubscriptions-didAddNewUniqueSubscriptions:NO\n- Skipping notification due to %{private,mask.hash}s)\n- Subscriber: %{private,mask.hash}s", v37, 0x34u);
      swift_arrayDestroy();
      MEMORY[0x24C23D530](v67, -1, -1);
      MEMORY[0x24C23D530](v37, -1, -1);

      v71(v73, v69);
    }

    else
    {

      v31(v32, v33);
    }

    v56 = v0[19];
    if (*(v56 + 16))
    {
    }

    else
    {
      v56 = 0;
    }

    v57 = v0[40];
    v58 = v0[37];
    v59 = v0[21];
    v60 = v0[22] + v0[33];
    v61 = v0[20];
    swift_beginAccess();

    sub_24B18C3B8(v56, v61, v59);
    sub_24B297674(&qword_27EFCC7D0, &unk_24B2EC040, &qword_27EFCF868);
    *(v60 + *(v58 + 40)) = v57;

    sub_24B297D1C();
    swift_endAccess();

    v62 = v0[1];

    return v62();
  }
}

uint64_t sub_24B29146C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[21] = a3;
  v4[22] = v3;
  v4[19] = a1;
  v4[20] = a2;
  v5 = sub_24B2D2504();
  v4[23] = v5;
  v4[24] = *(v5 - 8);
  v4[25] = swift_task_alloc();
  v6 = sub_24B2D3184();
  v4[26] = v6;
  v4[27] = *(v6 - 8);
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B2915BC, v3, 0);
}

void sub_24B2915BC()
{
  v184 = v0;
  v1 = v0[32];
  v3 = v0[26];
  v2 = v0[27];
  v4 = v0[22];
  v5 = OBJC_IVAR____TtC12FindMyUICore14PeopleProvider_subscriptionsStorage;
  v0[33] = OBJC_IVAR____TtC12FindMyUICore14PeopleProvider_subscriptionsStorage;
  v6 = v4 + v5;
  swift_beginAccess();
  v7 = *(v2 + 16);
  v0[34] = v7;
  v0[35] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v170 = v7;
  v7(v1, v6, v3);

  v8 = sub_24B2D3164();
  v9 = sub_24B2D5934();

  v178 = v6;
  if (os_log_type_enabled(v8, v9))
  {
    v163 = v0[26];
    v168 = v0[32];
    v11 = v0[24];
    v10 = v0[25];
    v12 = v0[23];
    v154 = v0[21];
    v158 = v0[27];
    v152 = v0[20];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v183 = v14;
    *v13 = 136447235;
    sub_24B2D12A4();
    v15 = sub_24B2D24B4();
    v17 = v16;
    (*(v11 + 8))(v10, v12);
    v18 = sub_24AFF321C(v15, v17, &v183);

    *(v13 + 4) = v18;
    *(v13 + 12) = 2160;
    *(v13 + 14) = 1752392040;
    *(v13 + 22) = 2081;
    type metadata accessor for PeopleProvider.Subscription(0);
    sub_24B2BF448(&qword_27EFCC7F0, type metadata accessor for PeopleProvider.Subscription);
    v19 = sub_24B2D57F4();
    v21 = sub_24AFF321C(v19, v20, &v183);

    *(v13 + 24) = v21;
    *(v13 + 32) = 2160;
    *(v13 + 34) = 1752392040;
    *(v13 + 42) = 2081;
    v0[16] = v152;
    v0[17] = v154;

    v22 = sub_24B2D53C4();
    v24 = sub_24AFF321C(v22, v23, &v183);

    *(v13 + 44) = v24;
    _os_log_impl(&dword_24AFD2000, v8, v9, "Provider(%{public}s):setSubscriptions\n- subscriptions: %{private,mask.hash}s)\n- subscriber: %{private,mask.hash}s)", v13, 0x34u);
    swift_arrayDestroy();
    v25 = v14;
    v6 = v178;
    MEMORY[0x24C23D530](v25, -1, -1);
    MEMORY[0x24C23D530](v13, -1, -1);

    v26 = *(v158 + 8);
    v26(v168, v163);
  }

  else
  {
    v27 = v0[32];
    v28 = v0[26];
    v29 = v0[27];

    v26 = *(v29 + 8);
    v26(v27, v28);
  }

  v0[36] = v26;
  v30 = v0[19];
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC7E8);
  v0[37] = v31;
  v32 = *(v6 + *(v31 + 40));
  v0[38] = v32;
  v33 = *(v6 + *(v31 + 36));
  v0[18] = v33;
  v35 = v0[20];
  v34 = v0[21];
  if (*(v30 + 16))
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v183 = v33;
    sub_24B1C9710(v30, v35, v34, isUniquelyReferenced_nonNull_native);

    v37 = v183;
    v0[18] = v183;
  }

  else
  {

    sub_24B18C3F8(0, v35, v34);
    v37 = v0[18];
  }

  v0[39] = v37;
  v38 = *(v37 + 64);
  v183 = MEMORY[0x277D84F90];
  v39 = -1;
  v40 = -1 << *(v37 + 32);
  if (-v40 < 64)
  {
    v39 = ~(-1 << -v40);
  }

  v41 = v39 & v38;
  v42 = (63 - v40) >> 6;
  swift_bridgeObjectRetain_n();
  v43 = 0;
  if (v41)
  {
    goto LABEL_15;
  }

  while (1)
  {
    v44 = v43 + 1;
    if (__OFADD__(v43, 1))
    {
      __break(1u);
      return;
    }

    if (v44 >= v42)
    {
      break;
    }

    v41 = *(v37 + 64 + 8 * v44);
    ++v43;
    if (v41)
    {
      v43 = v44;
      do
      {
LABEL_15:
        v41 &= v41 - 1;

        sub_24B030F20(v45);
      }

      while (v41);
      continue;
    }
  }

  v46 = sub_24B1D064C(v183);
  v0[40] = v46;

  v47 = v0[19];
  if (*(v32 + 16) <= *(v30 + 16) >> 3)
  {
    v183 = v0[19];

    sub_24B2A4074(v32);
    v48 = v183;
  }

  else
  {

    v48 = sub_24B2AB678(v32, v47);
  }

  v0[41] = v48;
  if (*(v46 + 16) <= *(v32 + 16) >> 3)
  {
    v183 = v32;

    sub_24B2A4074(v46);
    v49 = v183;
  }

  else
  {

    v49 = sub_24B2AB678(v46, v32);
  }

  v0[42] = v49;
  v50 = v0[26];
  if (*(v49 + 16))
  {
    v170(v0[30], v178, v50);

    v51 = sub_24B2D3164();
    v52 = sub_24B2D5934();

    v53 = os_log_type_enabled(v51, v52);
    v54 = v0[30];
    v55 = v0[26];
    if (v53)
    {
      v174 = v0[26];
      v164 = v52;
      v57 = v0[24];
      v56 = v0[25];
      v169 = v0[30];
      v58 = v0[23];
      v153 = v0[20];
      v155 = v0[21];
      v59 = swift_slowAlloc();
      v159 = swift_slowAlloc();
      v183 = v159;
      *v59 = 136447235;
      sub_24B2D12A4();
      v60 = sub_24B2D24B4();
      v179 = v26;
      v62 = v61;
      (*(v57 + 8))(v56, v58);
      v63 = sub_24AFF321C(v60, v62, &v183);

      *(v59 + 4) = v63;
      *(v59 + 12) = 2160;
      *(v59 + 14) = 1752392040;
      *(v59 + 22) = 2081;
      type metadata accessor for PeopleProvider.Subscription(0);
      sub_24B2BF448(&qword_27EFCC7F0, type metadata accessor for PeopleProvider.Subscription);
      v64 = sub_24B2D57F4();
      v66 = sub_24AFF321C(v64, v65, &v183);

      *(v59 + 24) = v66;
      *(v59 + 32) = 2160;
      *(v59 + 34) = 1752392040;
      *(v59 + 42) = 2081;
      v0[12] = v153;
      v0[13] = v155;

      v67 = sub_24B2D53C4();
      v69 = sub_24AFF321C(v67, v68, &v183);

      *(v59 + 44) = v69;
      _os_log_impl(&dword_24AFD2000, v51, v164, "Provider(%{public}s):setSubscriptions-didRemoveUniqueSubscriptions:YES\n- SubscriptionsThatDoNotExistAnymore: %{private,mask.hash}s)\n- Subscriber: %{private,mask.hash}s", v59, 0x34u);
      swift_arrayDestroy();
      MEMORY[0x24C23D530](v159, -1, -1);
      MEMORY[0x24C23D530](v59, -1, -1);

      v179(v169, v174);
    }

    else
    {

      v26(v54, v55);
    }

    v89 = *(v46 + 16) == 0;
    v90 = swift_task_alloc();
    v0[45] = v90;
    *v90 = v0;
    v90[1] = sub_24B292AF0;

    sub_24B1EE0F8(v49, v89);
  }

  else
  {
    v170(v0[31], v178, v50);

    v70 = sub_24B2D3164();
    v71 = sub_24B2D5934();

    v72 = os_log_type_enabled(v70, v71);
    v73 = v0[31];
    v74 = v0[26];
    if (v72)
    {
      v171 = v0[31];
      v175 = v0[26];
      v76 = v0[24];
      v75 = v0[25];
      v77 = v0[23];
      v156 = v0[20];
      v160 = v0[21];
      v78 = swift_slowAlloc();
      v165 = swift_slowAlloc();
      v183 = v165;
      *v78 = 136447235;
      sub_24B2D12A4();
      v79 = sub_24B2D24B4();
      v180 = v26;
      v81 = v80;
      (*(v76 + 8))(v75, v77);
      v82 = sub_24AFF321C(v79, v81, &v183);

      *(v78 + 4) = v82;
      *(v78 + 12) = 2160;
      *(v78 + 14) = 1752392040;
      *(v78 + 22) = 2081;
      type metadata accessor for PeopleProvider.Subscription(0);
      sub_24B2BF448(&qword_27EFCC7F0, type metadata accessor for PeopleProvider.Subscription);
      v83 = sub_24B2D57F4();
      v85 = sub_24AFF321C(v83, v84, &v183);

      *(v78 + 24) = v85;
      *(v78 + 32) = 2160;
      *(v78 + 34) = 1752392040;
      *(v78 + 42) = 2081;
      v0[14] = v156;
      v0[15] = v160;

      v86 = sub_24B2D53C4();
      v88 = sub_24AFF321C(v86, v87, &v183);

      *(v78 + 44) = v88;
      _os_log_impl(&dword_24AFD2000, v70, v71, "Provider(%{public}s):setSubscriptions-didRemoveUniqueSubscriptions:NO\n- Skipping notification due to %{private,mask.hash}s)\n- Subscriber: %{private,mask.hash}s", v78, 0x34u);
      swift_arrayDestroy();
      MEMORY[0x24C23D530](v165, -1, -1);
      MEMORY[0x24C23D530](v78, -1, -1);

      v180(v171, v175);
    }

    else
    {

      v26(v73, v74);
    }

    if (*(v0[41] + 16))
    {
      v91 = v0[34];
      v92 = v0[33];
      v93 = v0[28];
      v94 = v0[26];
      v95 = v0[22];

      v91(v93, v95 + v92, v94);

      v96 = sub_24B2D3164();
      v97 = sub_24B2D5934();

      if (os_log_type_enabled(v96, v97))
      {
        v176 = v0[28];
        v181 = v0[36];
        v98 = v0[25];
        v172 = v0[26];
        v99 = v0[23];
        v100 = v0[24];
        v166 = v0[21];
        v161 = v0[20];
        v101 = swift_slowAlloc();
        v102 = swift_slowAlloc();
        v183 = v102;
        *v101 = 136447235;
        sub_24B2D12A4();
        v103 = sub_24B2D24B4();
        v105 = v104;
        (*(v100 + 8))(v98, v99);
        v106 = sub_24AFF321C(v103, v105, &v183);

        *(v101 + 4) = v106;
        *(v101 + 12) = 2160;
        *(v101 + 14) = 1752392040;
        *(v101 + 22) = 2081;
        type metadata accessor for PeopleProvider.Subscription(0);
        sub_24B2BF448(&qword_27EFCC7F0, type metadata accessor for PeopleProvider.Subscription);
        v107 = sub_24B2D57F4();
        v109 = sub_24AFF321C(v107, v108, &v183);

        *(v101 + 24) = v109;
        *(v101 + 32) = 2160;
        *(v101 + 34) = 1752392040;
        *(v101 + 42) = 2081;
        v0[8] = v161;
        v0[9] = v166;

        v110 = sub_24B2D53C4();
        v112 = sub_24AFF321C(v110, v111, &v183);

        *(v101 + 44) = v112;
        _os_log_impl(&dword_24AFD2000, v96, v97, "Provider(%{public}s):setSubscriptions-didAddNewUniqueSubscriptions:YES\n- subscriptionsThatDidNotExistBefore: %{private,mask.hash}s)\n- subscriber: %{private,mask.hash}s)", v101, 0x34u);
        swift_arrayDestroy();
        MEMORY[0x24C23D530](v102, -1, -1);
        MEMORY[0x24C23D530](v101, -1, -1);

        v181(v176, v172);
      }

      else
      {
        v139 = v0[36];
        v140 = v0[28];
        v141 = v0[26];

        v139(v140, v141);
      }

      v142 = *(v0[38] + 16);

      v143 = swift_task_alloc();
      v0[43] = v143;
      *v143 = v0;
      v143[1] = sub_24B29282C;
      v144 = v0[41];

      sub_24B1EC900(v144, v142 == 0);
    }

    else
    {
      v113 = v0[34];
      v114 = v0[33];
      v115 = v0[29];
      v116 = v0[26];
      v117 = v0[22];

      v113(v115, v117 + v114, v116);

      v118 = sub_24B2D3164();
      v119 = sub_24B2D5934();

      v120 = os_log_type_enabled(v118, v119);
      v121 = v0[36];
      v122 = v0[29];
      v123 = v0[26];
      if (v120)
      {
        v177 = v0[36];
        v182 = v0[29];
        v125 = v0[24];
        v124 = v0[25];
        v173 = v0[26];
        v126 = v0[23];
        v157 = v0[20];
        v162 = v0[21];
        v127 = swift_slowAlloc();
        v167 = swift_slowAlloc();
        v183 = v167;
        *v127 = 136447235;
        sub_24B2D12A4();
        v128 = sub_24B2D24B4();
        v130 = v129;
        (*(v125 + 8))(v124, v126);
        v131 = sub_24AFF321C(v128, v130, &v183);

        *(v127 + 4) = v131;
        *(v127 + 12) = 2160;
        *(v127 + 14) = 1752392040;
        *(v127 + 22) = 2081;
        type metadata accessor for PeopleProvider.Subscription(0);
        sub_24B2BF448(&qword_27EFCC7F0, type metadata accessor for PeopleProvider.Subscription);
        v132 = sub_24B2D57F4();
        v134 = v133;

        v135 = sub_24AFF321C(v132, v134, &v183);

        *(v127 + 24) = v135;
        *(v127 + 32) = 2160;
        *(v127 + 34) = 1752392040;
        *(v127 + 42) = 2081;
        v0[10] = v157;
        v0[11] = v162;

        v136 = sub_24B2D53C4();
        v138 = sub_24AFF321C(v136, v137, &v183);

        *(v127 + 44) = v138;
        _os_log_impl(&dword_24AFD2000, v118, v119, "Provider(%{public}s):setSubscriptions-didAddNewUniqueSubscriptions:NO\n- Skipping notification due to %{private,mask.hash}s)\n- Subscriber: %{private,mask.hash}s", v127, 0x34u);
        swift_arrayDestroy();
        MEMORY[0x24C23D530](v167, -1, -1);
        MEMORY[0x24C23D530](v127, -1, -1);

        v177(v182, v173);
      }

      else
      {

        v121(v122, v123);
      }

      v145 = v0[19];
      if (*(v145 + 16))
      {
      }

      else
      {
        v145 = 0;
      }

      v146 = v0[40];
      v147 = v0[37];
      v148 = v0[21];
      v149 = v0[22] + v0[33];
      v150 = v0[20];
      swift_beginAccess();

      sub_24B18C3F8(v145, v150, v148);
      sub_24B297674(&qword_27EFCC7E8, &unk_24B2EC060, &qword_27EFCF878);
      *(v149 + *(v147 + 40)) = v146;

      sub_24B297F4C();
      swift_endAccess();

      v151 = v0[1];

      v151();
    }
  }
}

uint64_t sub_24B29282C()
{
  v2 = *v1;
  *(*v1 + 352) = v0;

  if (v0)
  {
    v3 = *(v2 + 176);

    v4 = sub_24B2BF7D8;
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 176);
    v4 = sub_24B292978;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

uint64_t sub_24B292978()
{
  v1 = v0[19];
  if (*(v1 + 16))
  {
  }

  else
  {
    v1 = 0;
  }

  v2 = v0[40];
  v3 = v0[37];
  v4 = v0[21];
  v5 = v0[22] + v0[33];
  v6 = v0[20];
  swift_beginAccess();

  sub_24B18C3F8(v1, v6, v4);
  sub_24B297674(&qword_27EFCC7E8, &unk_24B2EC060, &qword_27EFCF878);
  *(v5 + *(v3 + 40)) = v2;

  sub_24B297F4C();
  swift_endAccess();

  v7 = v0[1];

  return v7();
}

uint64_t sub_24B292AF0()
{
  v2 = *v1;
  *(*v1 + 368) = v0;

  if (v0)
  {
    v3 = *(v2 + 176);

    v4 = sub_24B2BF7DC;
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 176);
    v4 = sub_24B292C40;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

uint64_t sub_24B292C40()
{
  v75 = v0;
  if (*(v0[41] + 16))
  {
    v1 = v0[34];
    v2 = v0[33];
    v3 = v0[28];
    v4 = v0[26];
    v5 = v0[22];

    v1(v3, v5 + v2, v4);

    v6 = sub_24B2D3164();
    v7 = sub_24B2D5934();

    if (os_log_type_enabled(v6, v7))
    {
      v70 = v0[28];
      v72 = v0[36];
      v8 = v0[25];
      v68 = v0[26];
      v9 = v0[23];
      v10 = v0[24];
      v66 = v0[21];
      v64 = v0[20];
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v74 = v12;
      *v11 = 136447235;
      sub_24B2D12A4();
      v13 = sub_24B2D24B4();
      v15 = v14;
      (*(v10 + 8))(v8, v9);
      v16 = sub_24AFF321C(v13, v15, &v74);

      *(v11 + 4) = v16;
      *(v11 + 12) = 2160;
      *(v11 + 14) = 1752392040;
      *(v11 + 22) = 2081;
      type metadata accessor for PeopleProvider.Subscription(0);
      sub_24B2BF448(&qword_27EFCC7F0, type metadata accessor for PeopleProvider.Subscription);
      v17 = sub_24B2D57F4();
      v19 = sub_24AFF321C(v17, v18, &v74);

      *(v11 + 24) = v19;
      *(v11 + 32) = 2160;
      *(v11 + 34) = 1752392040;
      *(v11 + 42) = 2081;
      v0[8] = v64;
      v0[9] = v66;

      v20 = sub_24B2D53C4();
      v22 = sub_24AFF321C(v20, v21, &v74);

      *(v11 + 44) = v22;
      _os_log_impl(&dword_24AFD2000, v6, v7, "Provider(%{public}s):setSubscriptions-didAddNewUniqueSubscriptions:YES\n- subscriptionsThatDidNotExistBefore: %{private,mask.hash}s)\n- subscriber: %{private,mask.hash}s)", v11, 0x34u);
      swift_arrayDestroy();
      MEMORY[0x24C23D530](v12, -1, -1);
      MEMORY[0x24C23D530](v11, -1, -1);

      v72(v70, v68);
    }

    else
    {
      v49 = v0[36];
      v50 = v0[28];
      v51 = v0[26];

      v49(v50, v51);
    }

    v52 = *(v0[38] + 16);

    v53 = swift_task_alloc();
    v0[43] = v53;
    *v53 = v0;
    v53[1] = sub_24B29282C;
    v54 = v0[41];

    return sub_24B1EC900(v54, v52 == 0);
  }

  else
  {
    v23 = v0[34];
    v24 = v0[33];
    v25 = v0[29];
    v26 = v0[26];
    v27 = v0[22];

    v23(v25, v27 + v24, v26);

    v28 = sub_24B2D3164();
    v29 = sub_24B2D5934();

    v30 = os_log_type_enabled(v28, v29);
    v31 = v0[36];
    v32 = v0[29];
    v33 = v0[26];
    if (v30)
    {
      v71 = v0[36];
      v73 = v0[29];
      v35 = v0[24];
      v34 = v0[25];
      v69 = v0[26];
      v36 = v0[23];
      v63 = v0[20];
      v65 = v0[21];
      v37 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v74 = v67;
      *v37 = 136447235;
      sub_24B2D12A4();
      v38 = sub_24B2D24B4();
      v40 = v39;
      (*(v35 + 8))(v34, v36);
      v41 = sub_24AFF321C(v38, v40, &v74);

      *(v37 + 4) = v41;
      *(v37 + 12) = 2160;
      *(v37 + 14) = 1752392040;
      *(v37 + 22) = 2081;
      type metadata accessor for PeopleProvider.Subscription(0);
      sub_24B2BF448(&qword_27EFCC7F0, type metadata accessor for PeopleProvider.Subscription);
      v42 = sub_24B2D57F4();
      v44 = v43;

      v45 = sub_24AFF321C(v42, v44, &v74);

      *(v37 + 24) = v45;
      *(v37 + 32) = 2160;
      *(v37 + 34) = 1752392040;
      *(v37 + 42) = 2081;
      v0[10] = v63;
      v0[11] = v65;

      v46 = sub_24B2D53C4();
      v48 = sub_24AFF321C(v46, v47, &v74);

      *(v37 + 44) = v48;
      _os_log_impl(&dword_24AFD2000, v28, v29, "Provider(%{public}s):setSubscriptions-didAddNewUniqueSubscriptions:NO\n- Skipping notification due to %{private,mask.hash}s)\n- Subscriber: %{private,mask.hash}s", v37, 0x34u);
      swift_arrayDestroy();
      MEMORY[0x24C23D530](v67, -1, -1);
      MEMORY[0x24C23D530](v37, -1, -1);

      v71(v73, v69);
    }

    else
    {

      v31(v32, v33);
    }

    v56 = v0[19];
    if (*(v56 + 16))
    {
    }

    else
    {
      v56 = 0;
    }

    v57 = v0[40];
    v58 = v0[37];
    v59 = v0[21];
    v60 = v0[22] + v0[33];
    v61 = v0[20];
    swift_beginAccess();

    sub_24B18C3F8(v56, v61, v59);
    sub_24B297674(&qword_27EFCC7E8, &unk_24B2EC060, &qword_27EFCF878);
    *(v60 + *(v58 + 40)) = v57;

    sub_24B297F4C();
    swift_endAccess();

    v62 = v0[1];

    return v62();
  }
}

uint64_t sub_24B2933DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[21] = a3;
  v4[22] = v3;
  v4[19] = a1;
  v4[20] = a2;
  v5 = sub_24B2D2504();
  v4[23] = v5;
  v4[24] = *(v5 - 8);
  v4[25] = swift_task_alloc();
  v6 = sub_24B2D3184();
  v4[26] = v6;
  v4[27] = *(v6 - 8);
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B29352C, v3, 0);
}

void sub_24B29352C()
{
  v184 = v0;
  v1 = v0[32];
  v3 = v0[26];
  v2 = v0[27];
  v4 = v0[22];
  v5 = OBJC_IVAR____TtC12FindMyUICore22ItemsLocationsProvider_subscriptionsStorage;
  v0[33] = OBJC_IVAR____TtC12FindMyUICore22ItemsLocationsProvider_subscriptionsStorage;
  v6 = v4 + v5;
  swift_beginAccess();
  v7 = *(v2 + 16);
  v0[34] = v7;
  v0[35] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v170 = v7;
  v7(v1, v6, v3);

  v8 = sub_24B2D3164();
  v9 = sub_24B2D5934();

  v178 = v6;
  if (os_log_type_enabled(v8, v9))
  {
    v163 = v0[26];
    v168 = v0[32];
    v11 = v0[24];
    v10 = v0[25];
    v12 = v0[23];
    v154 = v0[21];
    v158 = v0[27];
    v152 = v0[20];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v183 = v14;
    *v13 = 136447235;
    sub_24B2D12A4();
    v15 = sub_24B2D24B4();
    v17 = v16;
    (*(v11 + 8))(v10, v12);
    v18 = sub_24AFF321C(v15, v17, &v183);

    *(v13 + 4) = v18;
    *(v13 + 12) = 2160;
    *(v13 + 14) = 1752392040;
    *(v13 + 22) = 2081;
    type metadata accessor for ItemsLocationsProvider.Subscription(0);
    sub_24B2BF448(&qword_27EFCE130, type metadata accessor for ItemsLocationsProvider.Subscription);
    v19 = sub_24B2D57F4();
    v21 = sub_24AFF321C(v19, v20, &v183);

    *(v13 + 24) = v21;
    *(v13 + 32) = 2160;
    *(v13 + 34) = 1752392040;
    *(v13 + 42) = 2081;
    v0[16] = v152;
    v0[17] = v154;

    v22 = sub_24B2D53C4();
    v24 = sub_24AFF321C(v22, v23, &v183);

    *(v13 + 44) = v24;
    _os_log_impl(&dword_24AFD2000, v8, v9, "Provider(%{public}s):setSubscriptions\n- subscriptions: %{private,mask.hash}s)\n- subscriber: %{private,mask.hash}s)", v13, 0x34u);
    swift_arrayDestroy();
    v25 = v14;
    v6 = v178;
    MEMORY[0x24C23D530](v25, -1, -1);
    MEMORY[0x24C23D530](v13, -1, -1);

    v26 = *(v158 + 8);
    v26(v168, v163);
  }

  else
  {
    v27 = v0[32];
    v28 = v0[26];
    v29 = v0[27];

    v26 = *(v29 + 8);
    v26(v27, v28);
  }

  v0[36] = v26;
  v30 = v0[19];
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE1B0);
  v0[37] = v31;
  v32 = *(v6 + *(v31 + 40));
  v0[38] = v32;
  v33 = *(v6 + *(v31 + 36));
  v0[18] = v33;
  v35 = v0[20];
  v34 = v0[21];
  if (*(v30 + 16))
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v183 = v33;
    sub_24B1C9E58(v30, v35, v34, isUniquelyReferenced_nonNull_native);

    v37 = v183;
    v0[18] = v183;
  }

  else
  {

    sub_24B18C66C(0, v35, v34);
    v37 = v0[18];
  }

  v0[39] = v37;
  v38 = *(v37 + 64);
  v183 = MEMORY[0x277D84F90];
  v39 = -1;
  v40 = -1 << *(v37 + 32);
  if (-v40 < 64)
  {
    v39 = ~(-1 << -v40);
  }

  v41 = v39 & v38;
  v42 = (63 - v40) >> 6;
  swift_bridgeObjectRetain_n();
  v43 = 0;
  if (v41)
  {
    goto LABEL_15;
  }

  while (1)
  {
    v44 = v43 + 1;
    if (__OFADD__(v43, 1))
    {
      __break(1u);
      return;
    }

    if (v44 >= v42)
    {
      break;
    }

    v41 = *(v37 + 64 + 8 * v44);
    ++v43;
    if (v41)
    {
      v43 = v44;
      do
      {
LABEL_15:
        v41 &= v41 - 1;

        sub_24B03173C(v45);
      }

      while (v41);
      continue;
    }
  }

  v46 = sub_24B1D0B08(v183);
  v0[40] = v46;

  v47 = v0[19];
  if (*(v32 + 16) <= *(v30 + 16) >> 3)
  {
    v183 = v0[19];

    sub_24B2A427C(v32);
    v48 = v183;
  }

  else
  {

    v48 = sub_24B2ACBA8(v32, v47);
  }

  v0[41] = v48;
  if (*(v46 + 16) <= *(v32 + 16) >> 3)
  {
    v183 = v32;

    sub_24B2A427C(v46);
    v49 = v183;
  }

  else
  {

    v49 = sub_24B2ACBA8(v46, v32);
  }

  v0[42] = v49;
  v50 = v0[26];
  if (*(v49 + 16))
  {
    v170(v0[30], v178, v50);

    v51 = sub_24B2D3164();
    v52 = sub_24B2D5934();

    v53 = os_log_type_enabled(v51, v52);
    v54 = v0[30];
    v55 = v0[26];
    if (v53)
    {
      v174 = v0[26];
      v164 = v52;
      v57 = v0[24];
      v56 = v0[25];
      v169 = v0[30];
      v58 = v0[23];
      v153 = v0[20];
      v155 = v0[21];
      v59 = swift_slowAlloc();
      v159 = swift_slowAlloc();
      v183 = v159;
      *v59 = 136447235;
      sub_24B2D12A4();
      v60 = sub_24B2D24B4();
      v179 = v26;
      v62 = v61;
      (*(v57 + 8))(v56, v58);
      v63 = sub_24AFF321C(v60, v62, &v183);

      *(v59 + 4) = v63;
      *(v59 + 12) = 2160;
      *(v59 + 14) = 1752392040;
      *(v59 + 22) = 2081;
      type metadata accessor for ItemsLocationsProvider.Subscription(0);
      sub_24B2BF448(&qword_27EFCE130, type metadata accessor for ItemsLocationsProvider.Subscription);
      v64 = sub_24B2D57F4();
      v66 = sub_24AFF321C(v64, v65, &v183);

      *(v59 + 24) = v66;
      *(v59 + 32) = 2160;
      *(v59 + 34) = 1752392040;
      *(v59 + 42) = 2081;
      v0[12] = v153;
      v0[13] = v155;

      v67 = sub_24B2D53C4();
      v69 = sub_24AFF321C(v67, v68, &v183);

      *(v59 + 44) = v69;
      _os_log_impl(&dword_24AFD2000, v51, v164, "Provider(%{public}s):setSubscriptions-didRemoveUniqueSubscriptions:YES\n- SubscriptionsThatDoNotExistAnymore: %{private,mask.hash}s)\n- Subscriber: %{private,mask.hash}s", v59, 0x34u);
      swift_arrayDestroy();
      MEMORY[0x24C23D530](v159, -1, -1);
      MEMORY[0x24C23D530](v59, -1, -1);

      v179(v169, v174);
    }

    else
    {

      v26(v54, v55);
    }

    v89 = *(v46 + 16) == 0;
    v90 = swift_task_alloc();
    v0[45] = v90;
    *v90 = v0;
    v90[1] = sub_24B294A60;

    sub_24B1DD814(v49, v89);
  }

  else
  {
    v170(v0[31], v178, v50);

    v70 = sub_24B2D3164();
    v71 = sub_24B2D5934();

    v72 = os_log_type_enabled(v70, v71);
    v73 = v0[31];
    v74 = v0[26];
    if (v72)
    {
      v171 = v0[31];
      v175 = v0[26];
      v76 = v0[24];
      v75 = v0[25];
      v77 = v0[23];
      v156 = v0[20];
      v160 = v0[21];
      v78 = swift_slowAlloc();
      v165 = swift_slowAlloc();
      v183 = v165;
      *v78 = 136447235;
      sub_24B2D12A4();
      v79 = sub_24B2D24B4();
      v180 = v26;
      v81 = v80;
      (*(v76 + 8))(v75, v77);
      v82 = sub_24AFF321C(v79, v81, &v183);

      *(v78 + 4) = v82;
      *(v78 + 12) = 2160;
      *(v78 + 14) = 1752392040;
      *(v78 + 22) = 2081;
      type metadata accessor for ItemsLocationsProvider.Subscription(0);
      sub_24B2BF448(&qword_27EFCE130, type metadata accessor for ItemsLocationsProvider.Subscription);
      v83 = sub_24B2D57F4();
      v85 = sub_24AFF321C(v83, v84, &v183);

      *(v78 + 24) = v85;
      *(v78 + 32) = 2160;
      *(v78 + 34) = 1752392040;
      *(v78 + 42) = 2081;
      v0[14] = v156;
      v0[15] = v160;

      v86 = sub_24B2D53C4();
      v88 = sub_24AFF321C(v86, v87, &v183);

      *(v78 + 44) = v88;
      _os_log_impl(&dword_24AFD2000, v70, v71, "Provider(%{public}s):setSubscriptions-didRemoveUniqueSubscriptions:NO\n- Skipping notification due to %{private,mask.hash}s)\n- Subscriber: %{private,mask.hash}s", v78, 0x34u);
      swift_arrayDestroy();
      MEMORY[0x24C23D530](v165, -1, -1);
      MEMORY[0x24C23D530](v78, -1, -1);

      v180(v171, v175);
    }

    else
    {

      v26(v73, v74);
    }

    if (*(v0[41] + 16))
    {
      v91 = v0[34];
      v92 = v0[33];
      v93 = v0[28];
      v94 = v0[26];
      v95 = v0[22];

      v91(v93, v95 + v92, v94);

      v96 = sub_24B2D3164();
      v97 = sub_24B2D5934();

      if (os_log_type_enabled(v96, v97))
      {
        v176 = v0[28];
        v181 = v0[36];
        v98 = v0[25];
        v172 = v0[26];
        v99 = v0[23];
        v100 = v0[24];
        v166 = v0[21];
        v161 = v0[20];
        v101 = swift_slowAlloc();
        v102 = swift_slowAlloc();
        v183 = v102;
        *v101 = 136447235;
        sub_24B2D12A4();
        v103 = sub_24B2D24B4();
        v105 = v104;
        (*(v100 + 8))(v98, v99);
        v106 = sub_24AFF321C(v103, v105, &v183);

        *(v101 + 4) = v106;
        *(v101 + 12) = 2160;
        *(v101 + 14) = 1752392040;
        *(v101 + 22) = 2081;
        type metadata accessor for ItemsLocationsProvider.Subscription(0);
        sub_24B2BF448(&qword_27EFCE130, type metadata accessor for ItemsLocationsProvider.Subscription);
        v107 = sub_24B2D57F4();
        v109 = sub_24AFF321C(v107, v108, &v183);

        *(v101 + 24) = v109;
        *(v101 + 32) = 2160;
        *(v101 + 34) = 1752392040;
        *(v101 + 42) = 2081;
        v0[8] = v161;
        v0[9] = v166;

        v110 = sub_24B2D53C4();
        v112 = sub_24AFF321C(v110, v111, &v183);

        *(v101 + 44) = v112;
        _os_log_impl(&dword_24AFD2000, v96, v97, "Provider(%{public}s):setSubscriptions-didAddNewUniqueSubscriptions:YES\n- subscriptionsThatDidNotExistBefore: %{private,mask.hash}s)\n- subscriber: %{private,mask.hash}s)", v101, 0x34u);
        swift_arrayDestroy();
        MEMORY[0x24C23D530](v102, -1, -1);
        MEMORY[0x24C23D530](v101, -1, -1);

        v181(v176, v172);
      }

      else
      {
        v139 = v0[36];
        v140 = v0[28];
        v141 = v0[26];

        v139(v140, v141);
      }

      v142 = *(v0[38] + 16);

      v143 = swift_task_alloc();
      v0[43] = v143;
      *v143 = v0;
      v143[1] = sub_24B29479C;
      v144 = v0[41];

      sub_24B1DC994(v144, v142 == 0);
    }

    else
    {
      v113 = v0[34];
      v114 = v0[33];
      v115 = v0[29];
      v116 = v0[26];
      v117 = v0[22];

      v113(v115, v117 + v114, v116);

      v118 = sub_24B2D3164();
      v119 = sub_24B2D5934();

      v120 = os_log_type_enabled(v118, v119);
      v121 = v0[36];
      v122 = v0[29];
      v123 = v0[26];
      if (v120)
      {
        v177 = v0[36];
        v182 = v0[29];
        v125 = v0[24];
        v124 = v0[25];
        v173 = v0[26];
        v126 = v0[23];
        v157 = v0[20];
        v162 = v0[21];
        v127 = swift_slowAlloc();
        v167 = swift_slowAlloc();
        v183 = v167;
        *v127 = 136447235;
        sub_24B2D12A4();
        v128 = sub_24B2D24B4();
        v130 = v129;
        (*(v125 + 8))(v124, v126);
        v131 = sub_24AFF321C(v128, v130, &v183);

        *(v127 + 4) = v131;
        *(v127 + 12) = 2160;
        *(v127 + 14) = 1752392040;
        *(v127 + 22) = 2081;
        type metadata accessor for ItemsLocationsProvider.Subscription(0);
        sub_24B2BF448(&qword_27EFCE130, type metadata accessor for ItemsLocationsProvider.Subscription);
        v132 = sub_24B2D57F4();
        v134 = v133;

        v135 = sub_24AFF321C(v132, v134, &v183);

        *(v127 + 24) = v135;
        *(v127 + 32) = 2160;
        *(v127 + 34) = 1752392040;
        *(v127 + 42) = 2081;
        v0[10] = v157;
        v0[11] = v162;

        v136 = sub_24B2D53C4();
        v138 = sub_24AFF321C(v136, v137, &v183);

        *(v127 + 44) = v138;
        _os_log_impl(&dword_24AFD2000, v118, v119, "Provider(%{public}s):setSubscriptions-didAddNewUniqueSubscriptions:NO\n- Skipping notification due to %{private,mask.hash}s)\n- Subscriber: %{private,mask.hash}s", v127, 0x34u);
        swift_arrayDestroy();
        MEMORY[0x24C23D530](v167, -1, -1);
        MEMORY[0x24C23D530](v127, -1, -1);

        v177(v182, v173);
      }

      else
      {

        v121(v122, v123);
      }

      v145 = v0[19];
      if (*(v145 + 16))
      {
      }

      else
      {
        v145 = 0;
      }

      v146 = v0[40];
      v147 = v0[37];
      v148 = v0[21];
      v149 = v0[22] + v0[33];
      v150 = v0[20];
      swift_beginAccess();

      sub_24B18C66C(v145, v150, v148);
      sub_24B297674(&qword_27EFCE1B0, &unk_24B2F0110, &qword_27EFCF880);
      *(v149 + *(v147 + 40)) = v146;

      sub_24B29817C();
      swift_endAccess();

      v151 = v0[1];

      v151();
    }
  }
}

uint64_t sub_24B29479C()
{
  v2 = *v1;
  *(*v1 + 352) = v0;

  if (v0)
  {
    v3 = *(v2 + 176);

    v4 = sub_24B2BF7D8;
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 176);
    v4 = sub_24B2948E8;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

uint64_t sub_24B2948E8()
{
  v1 = v0[19];
  if (*(v1 + 16))
  {
  }

  else
  {
    v1 = 0;
  }

  v2 = v0[40];
  v3 = v0[37];
  v4 = v0[21];
  v5 = v0[22] + v0[33];
  v6 = v0[20];
  swift_beginAccess();

  sub_24B18C66C(v1, v6, v4);
  sub_24B297674(&qword_27EFCE1B0, &unk_24B2F0110, &qword_27EFCF880);
  *(v5 + *(v3 + 40)) = v2;

  sub_24B29817C();
  swift_endAccess();

  v7 = v0[1];

  return v7();
}

uint64_t sub_24B294A60()
{
  v2 = *v1;
  *(*v1 + 368) = v0;

  if (v0)
  {
    v3 = *(v2 + 176);

    v4 = sub_24B2BF7DC;
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 176);
    v4 = sub_24B294BB0;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

uint64_t sub_24B294BB0()
{
  v75 = v0;
  if (*(v0[41] + 16))
  {
    v1 = v0[34];
    v2 = v0[33];
    v3 = v0[28];
    v4 = v0[26];
    v5 = v0[22];

    v1(v3, v5 + v2, v4);

    v6 = sub_24B2D3164();
    v7 = sub_24B2D5934();

    if (os_log_type_enabled(v6, v7))
    {
      v70 = v0[28];
      v72 = v0[36];
      v8 = v0[25];
      v68 = v0[26];
      v9 = v0[23];
      v10 = v0[24];
      v66 = v0[21];
      v64 = v0[20];
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v74 = v12;
      *v11 = 136447235;
      sub_24B2D12A4();
      v13 = sub_24B2D24B4();
      v15 = v14;
      (*(v10 + 8))(v8, v9);
      v16 = sub_24AFF321C(v13, v15, &v74);

      *(v11 + 4) = v16;
      *(v11 + 12) = 2160;
      *(v11 + 14) = 1752392040;
      *(v11 + 22) = 2081;
      type metadata accessor for ItemsLocationsProvider.Subscription(0);
      sub_24B2BF448(&qword_27EFCE130, type metadata accessor for ItemsLocationsProvider.Subscription);
      v17 = sub_24B2D57F4();
      v19 = sub_24AFF321C(v17, v18, &v74);

      *(v11 + 24) = v19;
      *(v11 + 32) = 2160;
      *(v11 + 34) = 1752392040;
      *(v11 + 42) = 2081;
      v0[8] = v64;
      v0[9] = v66;

      v20 = sub_24B2D53C4();
      v22 = sub_24AFF321C(v20, v21, &v74);

      *(v11 + 44) = v22;
      _os_log_impl(&dword_24AFD2000, v6, v7, "Provider(%{public}s):setSubscriptions-didAddNewUniqueSubscriptions:YES\n- subscriptionsThatDidNotExistBefore: %{private,mask.hash}s)\n- subscriber: %{private,mask.hash}s)", v11, 0x34u);
      swift_arrayDestroy();
      MEMORY[0x24C23D530](v12, -1, -1);
      MEMORY[0x24C23D530](v11, -1, -1);

      v72(v70, v68);
    }

    else
    {
      v49 = v0[36];
      v50 = v0[28];
      v51 = v0[26];

      v49(v50, v51);
    }

    v52 = *(v0[38] + 16);

    v53 = swift_task_alloc();
    v0[43] = v53;
    *v53 = v0;
    v53[1] = sub_24B29479C;
    v54 = v0[41];

    return sub_24B1DC994(v54, v52 == 0);
  }

  else
  {
    v23 = v0[34];
    v24 = v0[33];
    v25 = v0[29];
    v26 = v0[26];
    v27 = v0[22];

    v23(v25, v27 + v24, v26);

    v28 = sub_24B2D3164();
    v29 = sub_24B2D5934();

    v30 = os_log_type_enabled(v28, v29);
    v31 = v0[36];
    v32 = v0[29];
    v33 = v0[26];
    if (v30)
    {
      v71 = v0[36];
      v73 = v0[29];
      v35 = v0[24];
      v34 = v0[25];
      v69 = v0[26];
      v36 = v0[23];
      v63 = v0[20];
      v65 = v0[21];
      v37 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v74 = v67;
      *v37 = 136447235;
      sub_24B2D12A4();
      v38 = sub_24B2D24B4();
      v40 = v39;
      (*(v35 + 8))(v34, v36);
      v41 = sub_24AFF321C(v38, v40, &v74);

      *(v37 + 4) = v41;
      *(v37 + 12) = 2160;
      *(v37 + 14) = 1752392040;
      *(v37 + 22) = 2081;
      type metadata accessor for ItemsLocationsProvider.Subscription(0);
      sub_24B2BF448(&qword_27EFCE130, type metadata accessor for ItemsLocationsProvider.Subscription);
      v42 = sub_24B2D57F4();
      v44 = v43;

      v45 = sub_24AFF321C(v42, v44, &v74);

      *(v37 + 24) = v45;
      *(v37 + 32) = 2160;
      *(v37 + 34) = 1752392040;
      *(v37 + 42) = 2081;
      v0[10] = v63;
      v0[11] = v65;

      v46 = sub_24B2D53C4();
      v48 = sub_24AFF321C(v46, v47, &v74);

      *(v37 + 44) = v48;
      _os_log_impl(&dword_24AFD2000, v28, v29, "Provider(%{public}s):setSubscriptions-didAddNewUniqueSubscriptions:NO\n- Skipping notification due to %{private,mask.hash}s)\n- Subscriber: %{private,mask.hash}s", v37, 0x34u);
      swift_arrayDestroy();
      MEMORY[0x24C23D530](v67, -1, -1);
      MEMORY[0x24C23D530](v37, -1, -1);

      v71(v73, v69);
    }

    else
    {

      v31(v32, v33);
    }

    v56 = v0[19];
    if (*(v56 + 16))
    {
    }

    else
    {
      v56 = 0;
    }

    v57 = v0[40];
    v58 = v0[37];
    v59 = v0[21];
    v60 = v0[22] + v0[33];
    v61 = v0[20];
    swift_beginAccess();

    sub_24B18C66C(v56, v61, v59);
    sub_24B297674(&qword_27EFCE1B0, &unk_24B2F0110, &qword_27EFCF880);
    *(v60 + *(v58 + 40)) = v57;

    sub_24B29817C();
    swift_endAccess();

    v62 = v0[1];

    return v62();
  }
}

uint64_t sub_24B29534C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[21] = a3;
  v4[22] = v3;
  v4[19] = a1;
  v4[20] = a2;
  v5 = sub_24B2D2504();
  v4[23] = v5;
  v4[24] = *(v5 - 8);
  v4[25] = swift_task_alloc();
  v6 = sub_24B2D3184();
  v4[26] = v6;
  v4[27] = *(v6 - 8);
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B29549C, v3, 0);
}

void sub_24B29549C()
{
  v184 = v0;
  v1 = v0[32];
  v3 = v0[26];
  v2 = v0[27];
  v4 = v0[22];
  v5 = OBJC_IVAR____TtC12FindMyUICore13ItemsProvider_subscriptionsStorage;
  v0[33] = OBJC_IVAR____TtC12FindMyUICore13ItemsProvider_subscriptionsStorage;
  v6 = v4 + v5;
  swift_beginAccess();
  v7 = *(v2 + 16);
  v0[34] = v7;
  v0[35] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v170 = v7;
  v7(v1, v6, v3);

  v8 = sub_24B2D3164();
  v9 = sub_24B2D5934();

  v178 = v6;
  if (os_log_type_enabled(v8, v9))
  {
    v163 = v0[26];
    v168 = v0[32];
    v11 = v0[24];
    v10 = v0[25];
    v12 = v0[23];
    v154 = v0[21];
    v158 = v0[27];
    v152 = v0[20];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v183 = v14;
    *v13 = 136447235;
    sub_24B2D12A4();
    v15 = sub_24B2D24B4();
    v17 = v16;
    (*(v11 + 8))(v10, v12);
    v18 = sub_24AFF321C(v15, v17, &v183);

    *(v13 + 4) = v18;
    *(v13 + 12) = 2160;
    *(v13 + 14) = 1752392040;
    *(v13 + 22) = 2081;
    type metadata accessor for ItemsProvider.Subscription(0);
    sub_24B2BF448(&qword_27EFCC858, type metadata accessor for ItemsProvider.Subscription);
    v19 = sub_24B2D57F4();
    v21 = sub_24AFF321C(v19, v20, &v183);

    *(v13 + 24) = v21;
    *(v13 + 32) = 2160;
    *(v13 + 34) = 1752392040;
    *(v13 + 42) = 2081;
    v0[16] = v152;
    v0[17] = v154;

    v22 = sub_24B2D53C4();
    v24 = sub_24AFF321C(v22, v23, &v183);

    *(v13 + 44) = v24;
    _os_log_impl(&dword_24AFD2000, v8, v9, "Provider(%{public}s):setSubscriptions\n- subscriptions: %{private,mask.hash}s)\n- subscriber: %{private,mask.hash}s)", v13, 0x34u);
    swift_arrayDestroy();
    v25 = v14;
    v6 = v178;
    MEMORY[0x24C23D530](v25, -1, -1);
    MEMORY[0x24C23D530](v13, -1, -1);

    v26 = *(v158 + 8);
    v26(v168, v163);
  }

  else
  {
    v27 = v0[32];
    v28 = v0[26];
    v29 = v0[27];

    v26 = *(v29 + 8);
    v26(v27, v28);
  }

  v0[36] = v26;
  v30 = v0[19];
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC850);
  v0[37] = v31;
  v32 = *(v6 + *(v31 + 40));
  v0[38] = v32;
  v33 = *(v6 + *(v31 + 36));
  v0[18] = v33;
  v35 = v0[20];
  v34 = v0[21];
  if (*(v30 + 16))
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v183 = v33;
    sub_24B1C9E88(v30, v35, v34, isUniquelyReferenced_nonNull_native);

    v37 = v183;
    v0[18] = v183;
  }

  else
  {

    sub_24B18C6AC(0, v35, v34);
    v37 = v0[18];
  }

  v0[39] = v37;
  v38 = *(v37 + 64);
  v183 = MEMORY[0x277D84F90];
  v39 = -1;
  v40 = -1 << *(v37 + 32);
  if (-v40 < 64)
  {
    v39 = ~(-1 << -v40);
  }

  v41 = v39 & v38;
  v42 = (63 - v40) >> 6;
  swift_bridgeObjectRetain_n();
  v43 = 0;
  if (v41)
  {
    goto LABEL_15;
  }

  while (1)
  {
    v44 = v43 + 1;
    if (__OFADD__(v43, 1))
    {
      __break(1u);
      return;
    }

    if (v44 >= v42)
    {
      break;
    }

    v41 = *(v37 + 64 + 8 * v44);
    ++v43;
    if (v41)
    {
      v43 = v44;
      do
      {
LABEL_15:
        v41 &= v41 - 1;

        sub_24B031E3C(v45);
      }

      while (v41);
      continue;
    }
  }

  v46 = sub_24B1D0C98(v183);
  v0[40] = v46;

  v47 = v0[19];
  if (*(v32 + 16) <= *(v30 + 16) >> 3)
  {
    v183 = v0[19];

    sub_24B2A4484(v32);
    v48 = v183;
  }

  else
  {

    v48 = sub_24B2AD7AC(v32, v47);
  }

  v0[41] = v48;
  if (*(v46 + 16) <= *(v32 + 16) >> 3)
  {
    v183 = v32;

    sub_24B2A4484(v46);
    v49 = v183;
  }

  else
  {

    v49 = sub_24B2AD7AC(v46, v32);
  }

  v0[42] = v49;
  v50 = v0[26];
  if (*(v49 + 16))
  {
    v170(v0[30], v178, v50);

    v51 = sub_24B2D3164();
    v52 = sub_24B2D5934();

    v53 = os_log_type_enabled(v51, v52);
    v54 = v0[30];
    v55 = v0[26];
    if (v53)
    {
      v174 = v0[26];
      v164 = v52;
      v57 = v0[24];
      v56 = v0[25];
      v169 = v0[30];
      v58 = v0[23];
      v153 = v0[20];
      v155 = v0[21];
      v59 = swift_slowAlloc();
      v159 = swift_slowAlloc();
      v183 = v159;
      *v59 = 136447235;
      sub_24B2D12A4();
      v60 = sub_24B2D24B4();
      v179 = v26;
      v62 = v61;
      (*(v57 + 8))(v56, v58);
      v63 = sub_24AFF321C(v60, v62, &v183);

      *(v59 + 4) = v63;
      *(v59 + 12) = 2160;
      *(v59 + 14) = 1752392040;
      *(v59 + 22) = 2081;
      type metadata accessor for ItemsProvider.Subscription(0);
      sub_24B2BF448(&qword_27EFCC858, type metadata accessor for ItemsProvider.Subscription);
      v64 = sub_24B2D57F4();
      v66 = sub_24AFF321C(v64, v65, &v183);

      *(v59 + 24) = v66;
      *(v59 + 32) = 2160;
      *(v59 + 34) = 1752392040;
      *(v59 + 42) = 2081;
      v0[12] = v153;
      v0[13] = v155;

      v67 = sub_24B2D53C4();
      v69 = sub_24AFF321C(v67, v68, &v183);

      *(v59 + 44) = v69;
      _os_log_impl(&dword_24AFD2000, v51, v164, "Provider(%{public}s):setSubscriptions-didRemoveUniqueSubscriptions:YES\n- SubscriptionsThatDoNotExistAnymore: %{private,mask.hash}s)\n- Subscriber: %{private,mask.hash}s", v59, 0x34u);
      swift_arrayDestroy();
      MEMORY[0x24C23D530](v159, -1, -1);
      MEMORY[0x24C23D530](v59, -1, -1);

      v179(v169, v174);
    }

    else
    {

      v26(v54, v55);
    }

    v89 = *(v46 + 16) == 0;
    v90 = swift_task_alloc();
    v0[45] = v90;
    *v90 = v0;
    v90[1] = sub_24B296A8C;

    sub_24B1AB2EC(v49, v89);
  }

  else
  {
    v170(v0[31], v178, v50);

    v70 = sub_24B2D3164();
    v71 = sub_24B2D5934();

    v72 = os_log_type_enabled(v70, v71);
    v73 = v0[31];
    v74 = v0[26];
    if (v72)
    {
      v171 = v0[31];
      v175 = v0[26];
      v76 = v0[24];
      v75 = v0[25];
      v77 = v0[23];
      v156 = v0[20];
      v160 = v0[21];
      v78 = swift_slowAlloc();
      v165 = swift_slowAlloc();
      v183 = v165;
      *v78 = 136447235;
      sub_24B2D12A4();
      v79 = sub_24B2D24B4();
      v180 = v26;
      v81 = v80;
      (*(v76 + 8))(v75, v77);
      v82 = sub_24AFF321C(v79, v81, &v183);

      *(v78 + 4) = v82;
      *(v78 + 12) = 2160;
      *(v78 + 14) = 1752392040;
      *(v78 + 22) = 2081;
      type metadata accessor for ItemsProvider.Subscription(0);
      sub_24B2BF448(&qword_27EFCC858, type metadata accessor for ItemsProvider.Subscription);
      v83 = sub_24B2D57F4();
      v85 = sub_24AFF321C(v83, v84, &v183);

      *(v78 + 24) = v85;
      *(v78 + 32) = 2160;
      *(v78 + 34) = 1752392040;
      *(v78 + 42) = 2081;
      v0[14] = v156;
      v0[15] = v160;

      v86 = sub_24B2D53C4();
      v88 = sub_24AFF321C(v86, v87, &v183);

      *(v78 + 44) = v88;
      _os_log_impl(&dword_24AFD2000, v70, v71, "Provider(%{public}s):setSubscriptions-didRemoveUniqueSubscriptions:NO\n- Skipping notification due to %{private,mask.hash}s)\n- Subscriber: %{private,mask.hash}s", v78, 0x34u);
      swift_arrayDestroy();
      MEMORY[0x24C23D530](v165, -1, -1);
      MEMORY[0x24C23D530](v78, -1, -1);

      v180(v171, v175);
    }

    else
    {

      v26(v73, v74);
    }

    if (*(v0[41] + 16))
    {
      v91 = v0[34];
      v92 = v0[33];
      v93 = v0[28];
      v94 = v0[26];
      v95 = v0[22];

      v91(v93, v95 + v92, v94);

      v96 = sub_24B2D3164();
      v97 = sub_24B2D5934();

      if (os_log_type_enabled(v96, v97))
      {
        v176 = v0[28];
        v181 = v0[36];
        v98 = v0[25];
        v172 = v0[26];
        v99 = v0[23];
        v100 = v0[24];
        v166 = v0[21];
        v161 = v0[20];
        v101 = swift_slowAlloc();
        v102 = swift_slowAlloc();
        v183 = v102;
        *v101 = 136447235;
        sub_24B2D12A4();
        v103 = sub_24B2D24B4();
        v105 = v104;
        (*(v100 + 8))(v98, v99);
        v106 = sub_24AFF321C(v103, v105, &v183);

        *(v101 + 4) = v106;
        *(v101 + 12) = 2160;
        *(v101 + 14) = 1752392040;
        *(v101 + 22) = 2081;
        type metadata accessor for ItemsProvider.Subscription(0);
        sub_24B2BF448(&qword_27EFCC858, type metadata accessor for ItemsProvider.Subscription);
        v107 = sub_24B2D57F4();
        v109 = sub_24AFF321C(v107, v108, &v183);

        *(v101 + 24) = v109;
        *(v101 + 32) = 2160;
        *(v101 + 34) = 1752392040;
        *(v101 + 42) = 2081;
        v0[8] = v161;
        v0[9] = v166;

        v110 = sub_24B2D53C4();
        v112 = sub_24AFF321C(v110, v111, &v183);

        *(v101 + 44) = v112;
        _os_log_impl(&dword_24AFD2000, v96, v97, "Provider(%{public}s):setSubscriptions-didAddNewUniqueSubscriptions:YES\n- subscriptionsThatDidNotExistBefore: %{private,mask.hash}s)\n- subscriber: %{private,mask.hash}s)", v101, 0x34u);
        swift_arrayDestroy();
        MEMORY[0x24C23D530](v102, -1, -1);
        MEMORY[0x24C23D530](v101, -1, -1);

        v181(v176, v172);
      }

      else
      {
        v139 = v0[36];
        v140 = v0[28];
        v141 = v0[26];

        v139(v140, v141);
      }

      v142 = *(v0[38] + 16);

      v143 = swift_task_alloc();
      v0[43] = v143;
      *v143 = v0;
      v143[1] = sub_24B29670C;
      v144 = v0[41];

      sub_24B1A9AD0(v144, v142 == 0);
    }

    else
    {
      v113 = v0[34];
      v114 = v0[33];
      v115 = v0[29];
      v116 = v0[26];
      v117 = v0[22];

      v113(v115, v117 + v114, v116);

      v118 = sub_24B2D3164();
      v119 = sub_24B2D5934();

      v120 = os_log_type_enabled(v118, v119);
      v121 = v0[36];
      v122 = v0[29];
      v123 = v0[26];
      if (v120)
      {
        v177 = v0[36];
        v182 = v0[29];
        v125 = v0[24];
        v124 = v0[25];
        v173 = v0[26];
        v126 = v0[23];
        v157 = v0[20];
        v162 = v0[21];
        v127 = swift_slowAlloc();
        v167 = swift_slowAlloc();
        v183 = v167;
        *v127 = 136447235;
        sub_24B2D12A4();
        v128 = sub_24B2D24B4();
        v130 = v129;
        (*(v125 + 8))(v124, v126);
        v131 = sub_24AFF321C(v128, v130, &v183);

        *(v127 + 4) = v131;
        *(v127 + 12) = 2160;
        *(v127 + 14) = 1752392040;
        *(v127 + 22) = 2081;
        type metadata accessor for ItemsProvider.Subscription(0);
        sub_24B2BF448(&qword_27EFCC858, type metadata accessor for ItemsProvider.Subscription);
        v132 = sub_24B2D57F4();
        v134 = v133;

        v135 = sub_24AFF321C(v132, v134, &v183);

        *(v127 + 24) = v135;
        *(v127 + 32) = 2160;
        *(v127 + 34) = 1752392040;
        *(v127 + 42) = 2081;
        v0[10] = v157;
        v0[11] = v162;

        v136 = sub_24B2D53C4();
        v138 = sub_24AFF321C(v136, v137, &v183);

        *(v127 + 44) = v138;
        _os_log_impl(&dword_24AFD2000, v118, v119, "Provider(%{public}s):setSubscriptions-didAddNewUniqueSubscriptions:NO\n- Skipping notification due to %{private,mask.hash}s)\n- Subscriber: %{private,mask.hash}s", v127, 0x34u);
        swift_arrayDestroy();
        MEMORY[0x24C23D530](v167, -1, -1);
        MEMORY[0x24C23D530](v127, -1, -1);

        v177(v182, v173);
      }

      else
      {

        v121(v122, v123);
      }

      v145 = v0[19];
      if (*(v145 + 16))
      {
      }

      else
      {
        v145 = 0;
      }

      v146 = v0[40];
      v147 = v0[37];
      v148 = v0[21];
      v149 = v0[22] + v0[33];
      v150 = v0[20];
      swift_beginAccess();

      sub_24B18C6AC(v145, v150, v148);
      sub_24B297674(&qword_27EFCC850, &unk_24B2EC0F0, &qword_27EFCF890);
      *(v149 + *(v147 + 40)) = v146;

      sub_24B2983AC();
      swift_endAccess();

      v151 = v0[1];

      v151();
    }
  }
}

uint64_t sub_24B29670C()
{
  v2 = *v1;
  *(*v1 + 352) = v0;

  if (v0)
  {
    v3 = *(v2 + 176);

    v4 = sub_24B2969D0;
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 176);
    v4 = sub_24B296858;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

uint64_t sub_24B296858()
{
  v1 = v0[19];
  if (*(v1 + 16))
  {
  }

  else
  {
    v1 = 0;
  }

  v2 = v0[40];
  v3 = v0[37];
  v4 = v0[21];
  v5 = v0[22] + v0[33];
  v6 = v0[20];
  swift_beginAccess();

  sub_24B18C6AC(v1, v6, v4);
  sub_24B297674(&qword_27EFCC850, &unk_24B2EC0F0, &qword_27EFCF890);
  *(v5 + *(v3 + 40)) = v2;

  sub_24B2983AC();
  swift_endAccess();

  v7 = v0[1];

  return v7();
}

uint64_t sub_24B2969D0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B296A8C()
{
  v2 = *v1;
  *(*v1 + 368) = v0;

  if (v0)
  {
    v3 = *(v2 + 176);

    v4 = sub_24B297378;
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 176);
    v4 = sub_24B296BDC;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

uint64_t sub_24B296BDC()
{
  v75 = v0;
  if (*(v0[41] + 16))
  {
    v1 = v0[34];
    v2 = v0[33];
    v3 = v0[28];
    v4 = v0[26];
    v5 = v0[22];

    v1(v3, v5 + v2, v4);

    v6 = sub_24B2D3164();
    v7 = sub_24B2D5934();

    if (os_log_type_enabled(v6, v7))
    {
      v70 = v0[28];
      v72 = v0[36];
      v8 = v0[25];
      v68 = v0[26];
      v9 = v0[23];
      v10 = v0[24];
      v66 = v0[21];
      v64 = v0[20];
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v74 = v12;
      *v11 = 136447235;
      sub_24B2D12A4();
      v13 = sub_24B2D24B4();
      v15 = v14;
      (*(v10 + 8))(v8, v9);
      v16 = sub_24AFF321C(v13, v15, &v74);

      *(v11 + 4) = v16;
      *(v11 + 12) = 2160;
      *(v11 + 14) = 1752392040;
      *(v11 + 22) = 2081;
      type metadata accessor for ItemsProvider.Subscription(0);
      sub_24B2BF448(&qword_27EFCC858, type metadata accessor for ItemsProvider.Subscription);
      v17 = sub_24B2D57F4();
      v19 = sub_24AFF321C(v17, v18, &v74);

      *(v11 + 24) = v19;
      *(v11 + 32) = 2160;
      *(v11 + 34) = 1752392040;
      *(v11 + 42) = 2081;
      v0[8] = v64;
      v0[9] = v66;

      v20 = sub_24B2D53C4();
      v22 = sub_24AFF321C(v20, v21, &v74);

      *(v11 + 44) = v22;
      _os_log_impl(&dword_24AFD2000, v6, v7, "Provider(%{public}s):setSubscriptions-didAddNewUniqueSubscriptions:YES\n- subscriptionsThatDidNotExistBefore: %{private,mask.hash}s)\n- subscriber: %{private,mask.hash}s)", v11, 0x34u);
      swift_arrayDestroy();
      MEMORY[0x24C23D530](v12, -1, -1);
      MEMORY[0x24C23D530](v11, -1, -1);

      v72(v70, v68);
    }

    else
    {
      v49 = v0[36];
      v50 = v0[28];
      v51 = v0[26];

      v49(v50, v51);
    }

    v52 = *(v0[38] + 16);

    v53 = swift_task_alloc();
    v0[43] = v53;
    *v53 = v0;
    v53[1] = sub_24B29670C;
    v54 = v0[41];

    return sub_24B1A9AD0(v54, v52 == 0);
  }

  else
  {
    v23 = v0[34];
    v24 = v0[33];
    v25 = v0[29];
    v26 = v0[26];
    v27 = v0[22];

    v23(v25, v27 + v24, v26);

    v28 = sub_24B2D3164();
    v29 = sub_24B2D5934();

    v30 = os_log_type_enabled(v28, v29);
    v31 = v0[36];
    v32 = v0[29];
    v33 = v0[26];
    if (v30)
    {
      v71 = v0[36];
      v73 = v0[29];
      v35 = v0[24];
      v34 = v0[25];
      v69 = v0[26];
      v36 = v0[23];
      v63 = v0[20];
      v65 = v0[21];
      v37 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v74 = v67;
      *v37 = 136447235;
      sub_24B2D12A4();
      v38 = sub_24B2D24B4();
      v40 = v39;
      (*(v35 + 8))(v34, v36);
      v41 = sub_24AFF321C(v38, v40, &v74);

      *(v37 + 4) = v41;
      *(v37 + 12) = 2160;
      *(v37 + 14) = 1752392040;
      *(v37 + 22) = 2081;
      type metadata accessor for ItemsProvider.Subscription(0);
      sub_24B2BF448(&qword_27EFCC858, type metadata accessor for ItemsProvider.Subscription);
      v42 = sub_24B2D57F4();
      v44 = v43;

      v45 = sub_24AFF321C(v42, v44, &v74);

      *(v37 + 24) = v45;
      *(v37 + 32) = 2160;
      *(v37 + 34) = 1752392040;
      *(v37 + 42) = 2081;
      v0[10] = v63;
      v0[11] = v65;

      v46 = sub_24B2D53C4();
      v48 = sub_24AFF321C(v46, v47, &v74);

      *(v37 + 44) = v48;
      _os_log_impl(&dword_24AFD2000, v28, v29, "Provider(%{public}s):setSubscriptions-didAddNewUniqueSubscriptions:NO\n- Skipping notification due to %{private,mask.hash}s)\n- Subscriber: %{private,mask.hash}s", v37, 0x34u);
      swift_arrayDestroy();
      MEMORY[0x24C23D530](v67, -1, -1);
      MEMORY[0x24C23D530](v37, -1, -1);

      v71(v73, v69);
    }

    else
    {

      v31(v32, v33);
    }

    v56 = v0[19];
    if (*(v56 + 16))
    {
    }

    else
    {
      v56 = 0;
    }

    v57 = v0[40];
    v58 = v0[37];
    v59 = v0[21];
    v60 = v0[22] + v0[33];
    v61 = v0[20];
    swift_beginAccess();

    sub_24B18C6AC(v56, v61, v59);
    sub_24B297674(&qword_27EFCC850, &unk_24B2EC0F0, &qword_27EFCF890);
    *(v60 + *(v58 + 40)) = v57;

    sub_24B2983AC();
    swift_endAccess();

    v62 = v0[1];

    return v62();
  }
}

uint64_t sub_24B297378()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B297434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_24AFFDE44;

  return sub_24B28F4FC(a2, a3, a4);
}

uint64_t sub_24B2974E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_24AFFD370;

  return sub_24B28DC6C(a2, a3, a4);
}

uint64_t sub_24B29759C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_24AFFDE44;

  return sub_24B2933DC(a2, a3, a4);
}

uint64_t sub_24B297674(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v6 = v3;
  v7 = sub_24B2D3184();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  (*(v8 + 16))(v10, v6, v7);

  v11 = sub_24B2D3164();
  v12 = sub_24B2D5904();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v20 = v14;
    *v13 = 136315138;
    __swift_instantiateConcreteTypeFromMangledNameV2(a3);
    sub_24B1A35D0();
    v15 = sub_24B2D51F4();
    v17 = sub_24AFF321C(v15, v16, &v20);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_24AFD2000, v11, v12, "SubscriptionManagerStorage: subscriptionsBySubscriber - %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x24C23D530](v14, -1, -1);
    MEMORY[0x24C23D530](v13, -1, -1);
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_24B2978F4()
{
  v1 = v0;
  v2 = sub_24B2D3184();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC838);
  (*(v3 + 16))(v5, v1, v2);

  v6 = sub_24B2D3164();
  v7 = sub_24B2D5904();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136315138;
    sub_24B137F64();
    v10 = sub_24B2D57F4();
    v12 = sub_24AFF321C(v10, v11, &v15);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_24AFD2000, v6, v7, "SubscriptionManagerStorage: uniqueSubscriptions - %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x24C23D530](v9, -1, -1);
    MEMORY[0x24C23D530](v8, -1, -1);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_24B297AEC()
{
  v1 = v0;
  v2 = sub_24B2D3184();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDB48);
  (*(v3 + 16))(v5, v1, v2);

  v6 = sub_24B2D3164();
  v7 = sub_24B2D5904();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136315138;
    type metadata accessor for ContactsProvider.Subscription(0);
    sub_24B2BF448(&qword_27EFCDB80, type metadata accessor for ContactsProvider.Subscription);
    v10 = sub_24B2D57F4();
    v12 = sub_24AFF321C(v10, v11, &v15);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_24AFD2000, v6, v7, "SubscriptionManagerStorage: uniqueSubscriptions - %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x24C23D530](v9, -1, -1);
    MEMORY[0x24C23D530](v8, -1, -1);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_24B297D1C()
{
  v1 = v0;
  v2 = sub_24B2D3184();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC7D0);
  (*(v3 + 16))(v5, v1, v2);

  v6 = sub_24B2D3164();
  v7 = sub_24B2D5904();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136315138;
    type metadata accessor for PeopleLocationsProvider.Subscription(0);
    sub_24B2BF448(&qword_27EFCC7D8, type metadata accessor for PeopleLocationsProvider.Subscription);
    v10 = sub_24B2D57F4();
    v12 = sub_24AFF321C(v10, v11, &v15);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_24AFD2000, v6, v7, "SubscriptionManagerStorage: uniqueSubscriptions - %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x24C23D530](v9, -1, -1);
    MEMORY[0x24C23D530](v8, -1, -1);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_24B297F4C()
{
  v1 = v0;
  v2 = sub_24B2D3184();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC7E8);
  (*(v3 + 16))(v5, v1, v2);

  v6 = sub_24B2D3164();
  v7 = sub_24B2D5904();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136315138;
    type metadata accessor for PeopleProvider.Subscription(0);
    sub_24B2BF448(&qword_27EFCC7F0, type metadata accessor for PeopleProvider.Subscription);
    v10 = sub_24B2D57F4();
    v12 = sub_24AFF321C(v10, v11, &v15);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_24AFD2000, v6, v7, "SubscriptionManagerStorage: uniqueSubscriptions - %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x24C23D530](v9, -1, -1);
    MEMORY[0x24C23D530](v8, -1, -1);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_24B29817C()
{
  v1 = v0;
  v2 = sub_24B2D3184();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE1B0);
  (*(v3 + 16))(v5, v1, v2);

  v6 = sub_24B2D3164();
  v7 = sub_24B2D5904();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136315138;
    type metadata accessor for ItemsLocationsProvider.Subscription(0);
    sub_24B2BF448(&qword_27EFCE130, type metadata accessor for ItemsLocationsProvider.Subscription);
    v10 = sub_24B2D57F4();
    v12 = sub_24AFF321C(v10, v11, &v15);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_24AFD2000, v6, v7, "SubscriptionManagerStorage: uniqueSubscriptions - %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x24C23D530](v9, -1, -1);
    MEMORY[0x24C23D530](v8, -1, -1);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_24B2983AC()
{
  v1 = v0;
  v2 = sub_24B2D3184();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC850);
  (*(v3 + 16))(v5, v1, v2);

  v6 = sub_24B2D3164();
  v7 = sub_24B2D5904();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136315138;
    type metadata accessor for ItemsProvider.Subscription(0);
    sub_24B2BF448(&qword_27EFCC858, type metadata accessor for ItemsProvider.Subscription);
    v10 = sub_24B2D57F4();
    v12 = sub_24AFF321C(v10, v11, &v15);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_24AFD2000, v6, v7, "SubscriptionManagerStorage: uniqueSubscriptions - %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x24C23D530](v9, -1, -1);
    MEMORY[0x24C23D530](v8, -1, -1);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_24B2985DC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB298);
  MEMORY[0x28223BE20](v4 - 8);
  v278 = v226 - v5;
  v6 = sub_24B2D5324();
  MEMORY[0x28223BE20](v6 - 8);
  v274 = v226 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24B2D2534();
  MEMORY[0x28223BE20](v8 - 8);
  v273 = v226 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v272 = sub_24B2D2204();
  v268 = *(v272 - 8);
  MEMORY[0x28223BE20](v272);
  v269 = v226 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24B2D5344();
  MEMORY[0x28223BE20](v11 - 8);
  v279 = v226 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24B2D2214();
  v14 = *(v13 - 8);
  v281 = v13;
  v282 = v14;
  MEMORY[0x28223BE20](v13);
  v267 = v226 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v275 = v226 - v17;
  MEMORY[0x28223BE20](v18);
  v271 = v226 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB288);
  MEMORY[0x28223BE20](v20 - 8);
  v258 = v226 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF758);
  MEMORY[0x28223BE20](v22 - 8);
  v277 = v226 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v235 = v226 - v25;
  MEMORY[0x28223BE20](v26);
  v28 = v226 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB278);
  MEMORY[0x28223BE20](v29 - 8);
  v234 = v226 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB280);
  MEMORY[0x28223BE20](v31 - 8);
  v229 = v226 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB270);
  MEMORY[0x28223BE20](v33 - 8);
  v276 = v226 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v270 = v226 - v36;
  MEMORY[0x28223BE20](v37);
  v280 = v226 - v38;
  MEMORY[0x28223BE20](v39);
  v246 = v226 - v40;
  MEMORY[0x28223BE20](v41);
  v236 = v226 - v42;
  MEMORY[0x28223BE20](v43);
  v262 = v226 - v44;
  v233 = sub_24B2D1524();
  v232 = *(v233 - 8);
  MEMORY[0x28223BE20](v233);
  v231 = v226 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v250 = sub_24B2D1544();
  v249 = *(v250 - 8);
  MEMORY[0x28223BE20](v250);
  v248 = v226 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v266 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB2A0);
  MEMORY[0x28223BE20](v266);
  v238 = v226 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v48);
  v242 = v226 - v49;
  MEMORY[0x28223BE20](v50);
  v243 = v226 - v51;
  MEMORY[0x28223BE20](v52);
  v244 = v226 - v53;
  MEMORY[0x28223BE20](v54);
  v230 = v226 - v55;
  MEMORY[0x28223BE20](v56);
  v260 = v226 - v57;
  MEMORY[0x28223BE20](v58);
  v261 = v226 - v59;
  MEMORY[0x28223BE20](v60);
  v259 = v226 - v61;
  MEMORY[0x28223BE20](v62);
  v247 = v226 - v63;
  v265 = sub_24B2D1874();
  v264 = *(v265 - 8);
  MEMORY[0x28223BE20](v265);
  v257 = v226 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v65);
  v245 = v226 - v66;
  v252 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF518);
  MEMORY[0x28223BE20](v252);
  v253 = v226 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v68);
  v254 = v226 - v69;
  MEMORY[0x28223BE20](v70);
  v255 = v226 - v71;
  MEMORY[0x28223BE20](v72);
  v263 = v226 - v73;
  MEMORY[0x28223BE20](v74);
  v237 = v226 - v75;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCCD50);
  MEMORY[0x28223BE20](v76 - 8);
  v240 = v226 - v77;
  v78 = type metadata accessor for PersonDetailsController.State();
  MEMORY[0x28223BE20](v78);
  v80 = v226 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
  v241 = type metadata accessor for DetailsPersonInfo();
  v239 = *(v241 - 8);
  MEMORY[0x28223BE20](v241);
  v251 = v226 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF4F8);
  MEMORY[0x28223BE20](v82 - 8);
  v84 = v226 - v83;
  swift_getKeyPath();
  v284 = v1;
  sub_24B2BF448(&qword_27EFC8128, type metadata accessor for EmbeddedPeopleSummaryMapViewModel);
  sub_24B2D2584();

  v85 = v1[48];
  v256 = v28;
  if (v85 > 1)
  {
    v87 = 0;
  }

  else
  {
    v86 = *(v1 + 5);

    v87 = sub_24B128D40(0, v86);
  }

  swift_getKeyPath();
  v284 = v2;
  sub_24B2D2584();

  if (v2[48] > 1u)
  {
    v109 = v281;
    v110 = *(v282 + 56);
    v110(a1, 1, 1, v281);
    v111 = type metadata accessor for EmbeddedPeopleSummaryMapView.State(0);
    v110(a1 + v111[5], 1, 1, v109);
    v112 = v111[6];
    v113 = sub_24B2D1954();
    (*(*(v113 - 8) + 56))(a1 + v112, 1, 1, v113);
    v110(a1 + v111[7], 1, 1, v109);
    v114 = v111[9];
    Action = type metadata accessor for PersonLocateAction();
    result = (*(*(Action - 8) + 56))(a1 + v114, 1, 1, Action);
    *(a1 + v111[8]) = 0;
    return result;
  }

  v227 = v87;
  v228 = a1;
  v88 = *(v2 + 3);
  v226[1] = *(v2 + 2);
  v89 = *(v2 + 4);
  v90 = *(v2 + 5);
  if (*(v89 + 16) == 1)
  {
    sub_24B2D1494();

    v91 = sub_24B2D1484();
    sub_24B2D5A64();

    v92 = sub_24B2D15F4();
    if ((*(*(v92 - 8) + 48))(v84, 1, v92) != 1)
    {

      sub_24AFF8258(v84, &qword_27EFCF4F8);
      swift_getKeyPath();
      v284 = v2;
      sub_24B2D2584();

      v93 = *&v2[OBJC_IVAR____TtC12FindMyUICore33EmbeddedPeopleSummaryMapViewModel__detailsController];
      if (!v93)
      {
        v139 = v266;
        v140 = sub_24B2D1944();
        v141 = v258;
        (*(*(v140 - 8) + 56))(v258, 1, 1, v140);
        v142 = v264;
        v143 = v257;
        v144 = v265;
        (*(v264 + 104))(v257, *MEMORY[0x277D08CB0], v265);
        v145 = v259;
        sub_24B2D1894();
        (*(v142 + 8))(v143, v144);
        sub_24AFF8258(v141, &qword_27EFCB288);
        v146 = v261;
        sub_24B008890(v145, v261, &qword_27EFCB2A0);
        v147 = *(v139 + 48);
        v279 = *(v139 + 64);
        v280 = v147;
        v148 = v260;
        sub_24B008890(v145, v260, &qword_27EFCB2A0);
        v149 = *(v139 + 48);
        v278 = *(v139 + 64);
        v150 = v238;
        sub_24B0391CC(v145, v238, &qword_27EFCB2A0);
        v277 = *(v139 + 48);
        v151 = *(v139 + 64);
        v152 = type metadata accessor for EmbeddedPeopleSummaryMapView.State(0);
        v153 = v228;
        (*(v282 + 56))(v228 + v152[7], 1, 1, v281);
        v154 = v152[9];
        v155 = type metadata accessor for PersonLocateAction();
        (*(*(v155 - 8) + 56))(v153 + v154, 1, 1, v155);
        sub_24B0391CC(v146, v153, &qword_27EFCB270);
        sub_24B0391CC(v148 + v149, v153 + v152[5], &qword_27EFCB270);
        sub_24B0391CC(v150 + v151, v153 + v152[6], &qword_27EFCB298);
        *(v153 + v152[8]) = 1;
        sub_24AFF8258(v150 + v277, &qword_27EFCB270);
        sub_24AFF8258(v150, &qword_27EFCB270);
        sub_24AFF8258(v148 + v278, &qword_27EFCB298);
        sub_24AFF8258(v148, &qword_27EFCB270);
        sub_24AFF8258(&v279[v146], &qword_27EFCB298);
        v156 = v146 + v280;
        return sub_24AFF8258(v156, &qword_27EFCB270);
      }

      swift_getKeyPath();
      v284 = v93;
      sub_24B2BF448(&qword_27EFCCD10, type metadata accessor for PersonDetailsController);

      sub_24B2D2584();

      v94 = OBJC_IVAR____TtC12FindMyUICore23PersonDetailsController__state;
      swift_beginAccess();
      sub_24B2BF490(&v93[v94], v80, type metadata accessor for PersonDetailsController.State);
      v95 = &v80[*(v78 + 20)];
      v96 = v240;
      sub_24B0391CC(v95, v240, &qword_27EFCCD50);
      v97 = v241;
      v98 = (*(v239 + 48))(v96, 1, v241);
      v99 = v265;
      v100 = v264;
      if (v98 == 1)
      {
        sub_24AFF8258(v96, &qword_27EFCCD50);
        swift_getKeyPath();
        v283 = v93;
        sub_24B2D2584();

        v101 = v93[v94];
        v102 = sub_24B2D1944();
        v103 = v258;
        (*(*(v102 - 8) + 56))(v258, 1, 1, v102);
        v104 = v257;
        (*(v100 + 104))(v257, *MEMORY[0x277D08CB0], v99);
        v105 = v230;
        LODWORD(v280) = v101 ^ 1;
        sub_24B2D1894();

        (*(v100 + 8))(v104, v99);
        sub_24AFF8258(v103, &qword_27EFCB288);
        sub_24B008890(v105, v244, &qword_27EFCB2A0);
        sub_24B008890(v105, v243, &qword_27EFCB2A0);
        sub_24B0391CC(v105, v242, &qword_27EFCB2A0);
        (*(v282 + 56))(v246, 1, 1, v281);
        v106 = v228;
        if (v101)
        {
          v107 = v235;
          *v235 = 0;
          v108 = type metadata accessor for PersonLocateAction();
          swift_storeEnumTagMultiPayload();
          (*(*(v108 - 8) + 56))(v107, 0, 1, v108);
        }

        else
        {
          v176 = type metadata accessor for PersonLocateAction();
          v107 = v235;
          (*(*(v176 - 8) + 56))(v235, 1, 1, v176);
        }

        v177 = *(v266 + 48);
        v178 = *(v266 + 64);
        v179 = v244;
        sub_24B0391CC(v244, v106, &qword_27EFCB270);
        v180 = type metadata accessor for EmbeddedPeopleSummaryMapView.State(0);
        v181 = v243;
        sub_24B0391CC(v243 + v177, v106 + v180[5], &qword_27EFCB270);
        v182 = v242;
        sub_24B0391CC(v242 + v178, v106 + v180[6], &qword_27EFCB298);
        sub_24B0391CC(v246, v106 + v180[7], &qword_27EFCB270);
        *(v106 + v180[8]) = v280;
        sub_24B0391CC(v107, v106 + v180[9], &qword_27EFCF758);
        sub_24AFF8258(v182 + v177, &qword_27EFCB270);
        sub_24AFF8258(v182, &qword_27EFCB270);
        sub_24AFF8258(v181 + v178, &qword_27EFCB298);
        sub_24AFF8258(v181, &qword_27EFCB270);
        sub_24AFF8258(v179 + v178, &qword_27EFCB298);
        return sub_24AFF8258(v179 + v177, &qword_27EFCB270);
      }

      v279 = v93;
      v157 = v265;
      v158 = v251;
      sub_24B2BF380(v96, v251, type metadata accessor for DetailsPersonInfo);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF520);
      v159 = sub_24B2D17A4();
      v160 = *(v159 - 8);
      v161 = *(v160 + 72);
      v162 = (*(v160 + 80) + 32) & ~*(v160 + 80);
      v163 = swift_allocObject();
      *(v163 + 16) = xmmword_24B2DEAD0;
      v164 = v163 + v162;
      v165 = *(v160 + 104);
      v165(v164, *MEMORY[0x277D08C58], v159);
      v165(v164 + v161, *MEMORY[0x277D08C50], v159);
      v277 = sub_24B1377DC(v163);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      (*(v100 + 104))(v245, *MEMORY[0x277D08CB0], v157);
      v280 = *(v266 + 48);
      LODWORD(v157) = *(v158 + *(v97 + 24));
      v166 = v248;
      sub_24B2D1554();
      v167 = v231;
      sub_24B2D1534();
      v168 = v97;
      v169 = v249 + 8;
      v278 = *(v249 + 8);
      (v278)(v166, v250);
      sub_24B2D1514();
      (*(v232 + 8))(v167, v233);
      LODWORD(v280) = v157;
      sub_24B2D1894();
      v170 = v234;
      sub_24B008890(v158 + *(v168 + 32), v234, &qword_27EFCB278);
      v171 = sub_24B2D1824();
      v172 = *(v171 - 8);
      v173 = (*(v172 + 48))(v170, 1, v171);
      v174 = v282;
      if (v173 == 1)
      {

        sub_24AFF8258(v170, &qword_27EFCB278);
        v175 = 1;
      }

      else
      {
        v249 = v169;
        v183 = v229;
        sub_24B2D1814();

        (*(v172 + 8))(v170, v171);
        v184 = sub_24B2D1F54();
        v185 = *(v184 - 8);
        if ((*(v185 + 48))(v183, 1, v184) == 1)
        {
          sub_24AFF8258(v183, &qword_27EFCB280);
          v175 = 1;
        }

        else
        {
          sub_24B2D1F34();
          (*(v185 + 8))(v183, v184);
          v175 = 0;
        }
      }

      v186 = v264;
      v187 = v265;
      v188 = *(v174 + 56);
      v282 = v174 + 56;
      v188(v262, v175, 1, v281);
      v273 = v252[12];
      v189 = v252[20];
      v275 = v252[16];
      v276 = v189;
      v277 = v252[24];
      v190 = v248;
      sub_24B2D1554();
      v191 = v236;
      sub_24B2D14F4();
      (v278)(v190, v250);
      sub_24AFF8258(v191, &qword_27EFCB270);
      (*(v186 + 8))(v245, v187);
      v192 = v247;
      v193 = v259;
      sub_24B008890(v247, v259, &qword_27EFCB2A0);
      v194 = v266;
      v278 = *(v266 + 48);
      v274 = *(v266 + 64);
      v195 = v237;
      sub_24B0391CC(v193, v237, &qword_27EFCB270);
      v196 = v261;
      sub_24B008890(v192, v261, &qword_27EFCB2A0);
      v197 = *(v194 + 48);
      v272 = *(v194 + 64);
      sub_24B0391CC(v196 + v197, &v273[v195], &qword_27EFCB270);
      v198 = v192;
      v199 = v260;
      sub_24B0391CC(v198, v260, &qword_27EFCB2A0);
      v200 = *(v194 + 48);
      sub_24B0391CC(v199 + *(v194 + 64), &v275[v195], &qword_27EFCB298);
      sub_24B0391CC(v262, &v276[v195], &qword_27EFCB270);
      v188(v195 + v277, 1, 1, v281);
      sub_24AFF8258(v199 + v200, &qword_27EFCB270);
      sub_24AFF8258(v199, &qword_27EFCB270);
      sub_24AFF8258(v196 + v272, &qword_27EFCB298);
      sub_24AFF8258(v196, &qword_27EFCB270);
      sub_24AFF8258(&v274[v193], &qword_27EFCB298);
      sub_24AFF8258(v193 + v278, &qword_27EFCB270);
      sub_24B008890(v195, v263, &qword_27EFCF518);
      sub_24B008890(v195, v255, &qword_27EFCF518);
      sub_24B008890(v195, v254, &qword_27EFCF518);
      sub_24B008890(v195, v253, &qword_27EFCF518);
      if (v227)
      {
        v201 = sub_24B137AFC(&unk_285E48FB0);
        v202 = v251;
        v203 = DetailsPersonInfo.locateActions(allowedActions:)(v201);

        v204 = v202;
        if (v203[2])
        {
          v205 = type metadata accessor for PersonLocateAction();
          v206 = *(v205 - 8);
          v207 = v256;
          sub_24B2BF490(v203 + ((*(v206 + 80) + 32) & ~*(v206 + 80)), v256, type metadata accessor for PersonLocateAction);

          sub_24AFF8258(v195, &qword_27EFCF518);
          sub_24B2BF3E8(v204, type metadata accessor for DetailsPersonInfo);
          (*(v206 + 56))(v207, 0, 1, v205);
LABEL_36:
          v210 = v252[12];
          v211 = v252[16];
          v212 = v252[20];
          v213 = v252[24];
          v281 = v212;
          v282 = v213;
          v214 = v228;
          sub_24B0391CC(v263, v228, &qword_27EFCB270);
          v215 = type metadata accessor for EmbeddedPeopleSummaryMapView.State(0);
          v216 = v255;
          sub_24B0391CC(v255 + v210, v214 + v215[5], &qword_27EFCB270);
          v217 = v254;
          sub_24B0391CC(v254 + v211, v214 + v215[6], &qword_27EFCB298);
          v218 = v253;
          sub_24B0391CC(v253 + v212, v214 + v215[7], &qword_27EFCB270);
          *(v214 + v215[8]) = v280;
          sub_24B0391CC(v256, v214 + v215[9], &qword_27EFCF758);
          v219 = v282;
          sub_24AFF8258(v218 + v282, &qword_27EFCB270);
          v220 = v211;
          sub_24AFF8258(v218 + v211, &qword_27EFCB298);
          sub_24AFF8258(v218 + v210, &qword_27EFCB270);
          sub_24AFF8258(v218, &qword_27EFCB270);
          v221 = v219;
          sub_24AFF8258(v217 + v219, &qword_27EFCB270);
          v222 = v281;
          sub_24AFF8258(v217 + v281, &qword_27EFCB270);
          sub_24AFF8258(v217 + v210, &qword_27EFCB270);
          sub_24AFF8258(v217, &qword_27EFCB270);
          sub_24AFF8258(v216 + v219, &qword_27EFCB270);
          v223 = v222;
          sub_24AFF8258(v216 + v222, &qword_27EFCB270);
          v224 = v220;
          sub_24AFF8258(v216 + v220, &qword_27EFCB298);
          sub_24AFF8258(v216, &qword_27EFCB270);
          v225 = v263;
          sub_24AFF8258(v263 + v221, &qword_27EFCB270);
          sub_24AFF8258(v225 + v223, &qword_27EFCB270);
          sub_24AFF8258(v225 + v224, &qword_27EFCB298);
          v156 = v225 + v210;
          return sub_24AFF8258(v156, &qword_27EFCB270);
        }

        sub_24AFF8258(v195, &qword_27EFCF518);
        v208 = v202;
      }

      else
      {

        sub_24AFF8258(v195, &qword_27EFCF518);
        v208 = v251;
      }

      sub_24B2BF3E8(v208, type metadata accessor for DetailsPersonInfo);
      v209 = type metadata accessor for PersonLocateAction();
      (*(*(v209 - 8) + 56))(v256, 1, 1, v209);
      goto LABEL_36;
    }
  }

  else
  {
    v117 = sub_24B2D15F4();
    (*(*(v117 - 8) + 56))(v84, 1, 1, v117);
  }

  v266 = v90;
  v279 = v88;
  sub_24AFF8258(v84, &qword_27EFCF4F8);
  sub_24B2D52E4();
  if (qword_27EFC7730 != -1)
  {
    swift_once();
  }

  v118 = v272;
  v119 = __swift_project_value_buffer(v272, qword_27EFE4628);
  v120 = v269;
  v121 = *(v268 + 16);
  v121(v269, v119, v118);
  sub_24B2D2524();
  v122 = v271;
  sub_24B2D2224();
  sub_24B2D5314();
  sub_24B2D5304();
  v284 = *(v89 + 16);
  sub_24B2D52F4();
  sub_24B2D5304();
  sub_24B2D5334();
  v121(v120, v119, v118);
  sub_24B2D2524();
  v123 = v275;
  sub_24B2D2224();
  v124 = v281;
  v125 = v282;
  v126 = *(v282 + 56);
  v126(v280, 1, 1, v281);
  if (v279)
  {
    v127 = v267;
    sub_24B2D21F4();

    (*(v125 + 8))(v122, v124);
    v128 = v127;
    v129 = v228;
  }

  else
  {

    v129 = v228;
    v128 = v122;
  }

  v130 = v270;
  v131 = *(v125 + 32);
  v131(v270, v128, v124);
  v126(v130, 0, 1, v124);
  v132 = v278;
  v131(v278, v123, v124);
  v133 = sub_24B2D1954();
  swift_storeEnumTagMultiPayload();
  (*(*(v133 - 8) + 56))(v132, 0, 1, v133);
  v134 = v276;
  v126(v276, 1, 1, v124);
  if (v227)
  {
    v135 = v277;
    *v277 = 0;
    v136 = type metadata accessor for PersonLocateAction();
    swift_storeEnumTagMultiPayload();
    (*(*(v136 - 8) + 56))(v135, 0, 1, v136);
  }

  else
  {
    v137 = type metadata accessor for PersonLocateAction();
    v135 = v277;
    (*(*(v137 - 8) + 56))(v277, 1, 1, v137);
  }

  sub_24B0391CC(v280, v129, &qword_27EFCB270);
  v138 = type metadata accessor for EmbeddedPeopleSummaryMapView.State(0);
  sub_24B0391CC(v130, v129 + v138[5], &qword_27EFCB270);
  sub_24B0391CC(v132, v129 + v138[6], &qword_27EFCB298);
  sub_24B0391CC(v134, v129 + v138[7], &qword_27EFCB270);
  *(v129 + v138[8]) = 0;
  return sub_24B0391CC(v135, v129 + v138[9], &qword_27EFCF758);
}

uint64_t sub_24B29ABE0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF500);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v9 - v2;
  swift_getKeyPath();
  v10 = v0;
  sub_24B2BF448(&qword_27EFC8128, type metadata accessor for EmbeddedPeopleSummaryMapViewModel);
  sub_24B2D2584();

  v4 = *(v0 + OBJC_IVAR____TtC12FindMyUICore33EmbeddedPeopleSummaryMapViewModel__listController);
  v9[0] = &_s25OrganizedListExtraStorageVN_0;
  v9[1] = sub_24B2A0804();
  swift_getKeyPath();
  v10 = v4;
  sub_24B039184(&qword_27EFCF850, &qword_27EFCF858);

  sub_24B2D2584();

  v5 = *(*v4 + 128);
  swift_beginAccess();
  sub_24B008890(v4 + v5, v3, &qword_27EFCF500);

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF860);
  sub_24B2D1984();
  (*(*(v6 - 8) + 8))(v3, v6);
  v7 = v9[3];

  return v7;
}

uint64_t sub_24B29AE28()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF500);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v8 - v2;
  swift_getKeyPath();
  v9 = v0;
  sub_24B2BF448(&qword_27EFC8128, type metadata accessor for EmbeddedPeopleSummaryMapViewModel);
  sub_24B2D2584();

  v4 = *(v0 + OBJC_IVAR____TtC12FindMyUICore33EmbeddedPeopleSummaryMapViewModel__listController);
  v8[0] = &_s25OrganizedListExtraStorageVN_0;
  v8[1] = sub_24B2A0804();
  swift_getKeyPath();
  v9 = v4;
  sub_24B039184(&qword_27EFCF850, &qword_27EFCF858);

  sub_24B2D2584();

  v5 = *(*v4 + 128);
  swift_beginAccess();
  sub_24B008890(v4 + v5, v3, &qword_27EFCF500);

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF860);
  sub_24B2D1984();
  (*(*(v6 - 8) + 8))(v3, v6);

  return v8[4];
}

uint64_t sub_24B29B070@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v102 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC190);
  MEMORY[0x28223BE20](v3 - 8);
  v96 = v92 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v97 = v92 - v6;
  v101 = type metadata accessor for PinCollection.PinInfo(0);
  v99 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v98 = v92 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_24B2D1494();
  v100 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v109 = v92 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Icon(0);
  v107 = *(v9 - 8);
  v108 = v9;
  MEMORY[0x28223BE20](v9);
  v106 = v92 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB288);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v92 - v12;
  v95 = type metadata accessor for ListPersonInfo();
  v14 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v16 = v92 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF500);
  v18 = v17 - 8;
  MEMORY[0x28223BE20](v17);
  v94 = v92 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = v92 - v21;
  swift_getKeyPath();
  v23 = OBJC_IVAR____TtC12FindMyUICore33EmbeddedPeopleSummaryMapViewModel___observationRegistrar;
  v117 = v2;
  v103 = sub_24B2BF448(&qword_27EFC8128, type metadata accessor for EmbeddedPeopleSummaryMapViewModel);
  v104 = v23;
  sub_24B2D2584();

  v24 = OBJC_IVAR____TtC12FindMyUICore33EmbeddedPeopleSummaryMapViewModel__listController;
  v105 = v2;
  v25 = *(v2 + OBJC_IVAR____TtC12FindMyUICore33EmbeddedPeopleSummaryMapViewModel__listController);
  v111 = &_s25OrganizedListExtraStorageVN_0;
  v93 = sub_24B2A0804();
  v112 = v93;
  swift_getKeyPath();
  v117 = v25;
  v26 = sub_24B039184(&qword_27EFCF850, &qword_27EFCF858);

  v92[1] = v26;
  sub_24B2D2584();

  v27 = *(*v25 + 128);
  swift_beginAccess();
  sub_24B008890(v25 + v27, v22, &qword_27EFCF500);

  v28 = v22[*(v18 + 44)];
  sub_24AFF8258(v22, &qword_27EFCF500);
  if (v28 > 4 || ((1 << v28) & 0x19) == 0)
  {
    swift_getKeyPath();
    v57 = v105;
    v116 = v105;
    sub_24B2D2584();

    v59 = *(v57 + v24);
    MEMORY[0x28223BE20](v58);
    v60 = v93;
    v92[-2] = &_s25OrganizedListExtraStorageVN_0;
    v92[-1] = v60;
    swift_getKeyPath();
    v116 = v59;

    sub_24B2D2584();

    v61 = *(*v59 + 128);
    swift_beginAccess();
    v62 = v94;
    sub_24B008890(v59 + v61, v94, &qword_27EFCF500);

    v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF860);
    v64 = sub_24B2D19A4();
    result = (*(*(v63 - 8) + 8))(v62, v63);
    v65 = 0;
    v66 = *(v64 + 16);
    v67 = v95;
    while (1)
    {
      if (v66 == v65)
      {

        goto LABEL_3;
      }

      if (v65 >= *(v64 + 16))
      {
        break;
      }

      sub_24B2BF490(v64 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v65++, v16, type metadata accessor for ListPersonInfo);
      sub_24B008890(&v16[*(v67 + 28)], v13, &qword_27EFCB288);
      v68 = sub_24B2D1944();
      v69 = (*(*(v68 - 8) + 48))(v13, 1, v68);
      sub_24AFF8258(v13, &qword_27EFCB288);
      result = sub_24B2BF3E8(v16, type metadata accessor for ListPersonInfo);
      if (v69 != 1)
      {

        v70 = type metadata accessor for PinCollection.Style(0);
        return (*(*(v70 - 8) + 56))(v102, 1, 1, v70);
      }
    }

    __break(1u);
    goto LABEL_36;
  }

LABEL_3:
  swift_getKeyPath();
  v29 = v105;
  v114 = v105;
  sub_24B2D2584();

  if (*(v29 + 48) > 1u)
  {
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC1E0);
    v44 = v43[12];
    v45 = v43[16];
    v46 = v102;
    v47 = (v102 + v43[20]);
    (*(v100 + 56))(v102, 1, 1, v110);
    swift_storeEnumTagMultiPayload();
    v48 = v101;
    *(v46 + *(v101 + 20)) = 0;
    v49 = *(v99 + 56);
    v49(v46 + v44, 1, 1, v48);
    v49(v46 + v45, 1, 1, v48);
LABEL_23:
    v75 = type metadata accessor for PinCollection.Style(0);
    *v47 = 0;
    v47[1] = 0;
    swift_storeEnumTagMultiPayload();
    v76 = *(*(v75 - 8) + 56);
    v77 = v46;
    return v76(v77, 0, 1, v75);
  }

  v30 = *(v29 + 32);
  v31 = *(v30 + 16);
  v32 = MEMORY[0x277D84F90];
  if (v31)
  {
    v33 = *(v29 + 24);
    v34 = *(v29 + 40);
    v114 = MEMORY[0x277D84F90];
    v94 = v33;

    v93 = v34;

    sub_24B007C78(0, v31, 0);
    sub_24B2D5694();
    v104 = *(v100 + 16);
    v32 = v114;
    v35 = (*(v100 + 80) + 32) & ~*(v100 + 80);
    v95 = v30;
    v36 = v30 + v35;
    v103 = *(v100 + 72);
    v37 = (v100 + 32);
    v105 = v100 + 16;
    v38 = (v100 + 56);
    v39 = v106;
    do
    {
      v104(v109, v36, v110);
      sub_24B2D5684();
      sub_24B2D5604();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v40 = v110;
      (*v37)(v39, v109, v110);
      (*v38)(v39, 0, 1, v40);
      swift_storeEnumTagMultiPayload();

      v114 = v32;
      v42 = *(v32 + 16);
      v41 = *(v32 + 24);
      if (v42 >= v41 >> 1)
      {
        sub_24B007C78(v41 > 1, v42 + 1, 1);
        v32 = v114;
      }

      *(v32 + 16) = v42 + 1;
      sub_24B2BF380(v39, v32 + ((*(v107 + 80) + 32) & ~*(v107 + 80)) + *(v107 + 72) * v42, type metadata accessor for Icon);
      v36 += v103;
      --v31;
    }

    while (v31);
  }

  v50 = v101;
  v51 = *(v32 + 16);
  v52 = v99;
  if (!v51)
  {

    v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC1E0);
    v72 = v71[12];
    v73 = v71[16];
    v46 = v102;
    v47 = (v102 + v71[20]);
    (*(v100 + 56))(v102, 1, 1, v110);
    swift_storeEnumTagMultiPayload();
    *(v46 + *(v50 + 20)) = 0;
    v74 = *(v52 + 56);
    v74(v46 + v72, 1, 1, v50);
    v74(v46 + v73, 1, 1, v50);
    goto LABEL_23;
  }

  if (v51 >= 4)
  {
    v114 = 43;
    v115 = 0xE100000000000000;
    v113 = v51 - 3;
    v53 = sub_24B2D5FA4();
    MEMORY[0x24C23BC10](v53);

    v55 = *(v32 + 16);
    if (v55)
    {
      v56 = v114;
      v110 = v115;
      goto LABEL_25;
    }

LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v110 = 0;
  v56 = 0;
  v55 = v51;
LABEL_25:
  v78 = v32 + ((*(v107 + 80) + 32) & ~*(v107 + 80));
  v79 = v98;
  result = sub_24B2BF490(v78, v98, type metadata accessor for Icon);
  *(v79 + *(v50 + 20)) = 0;
  if (v51 == 1)
  {
    v80 = *(v52 + 56);
    v80(v97, 1, 1, v50);
LABEL_32:

    v85 = v96;
    v80(v96, 1, 1, v50);
    goto LABEL_33;
  }

  if (v55 == 1)
  {
    goto LABEL_37;
  }

  v81 = *(v107 + 72);
  v82 = v97;
  sub_24B2BF490(v78 + v81, v97, type metadata accessor for Icon);
  *(v82 + *(v50 + 20)) = 0;
  v80 = *(v52 + 56);
  result = (v80)(v82, 0, 1, v50);
  if (v51 < 3)
  {
    goto LABEL_32;
  }

  if (v55 >= 3)
  {
    v83 = v78 + 2 * v81;
    v84 = v96;
    sub_24B2BF490(v83, v96, type metadata accessor for Icon);

    *(v84 + *(v50 + 20)) = 0;
    v80(v84, 0, 1, v50);
    v85 = v84;
LABEL_33:
    v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC1E0);
    v87 = v86[12];
    v88 = v86[16];
    v89 = v102;
    v90 = (v102 + v86[20]);
    sub_24B2BF380(v98, v102, type metadata accessor for PinCollection.PinInfo);
    sub_24B0391CC(v97, v89 + v87, &qword_27EFCC190);
    sub_24B0391CC(v85, v89 + v88, &qword_27EFCC190);
    v91 = v110;
    *v90 = v56;
    v90[1] = v91;
    v75 = type metadata accessor for PinCollection.Style(0);
    swift_storeEnumTagMultiPayload();
    v76 = *(*(v75 - 8) + 56);
    v77 = v89;
    return v76(v77, 0, 1, v75);
  }

LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_24B29BF2C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8580);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v37 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF4F8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v37 - v6;
  v8 = sub_24B2D15F4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v37 - v13;
  swift_getKeyPath();
  *&v41 = v0;
  sub_24B2BF448(&qword_27EFC8128, type metadata accessor for EmbeddedPeopleSummaryMapViewModel);
  sub_24B2D2584();

  if (*(v0 + 48) <= 1u)
  {
    v16 = *(v0 + 24);
    v39 = *(v1 + 16);
    *&v40 = v4;
    v17 = *(v1 + 32);
    v18 = *(v1 + 40);

    if (sub_24B128D40(1, v18))
    {
      v19 = *(v1 + 64);
      v20 = *(v1 + 72);
      v21 = *(v1 + 80);
      v22 = *(v1 + 136);
      *&v41 = *(v1 + 56);
      *(&v41 + 1) = v19;
      v42 = v20;
      v43 = v21;
      v23 = *(v1 + 104);
      v37[0] = *(v1 + 88);
      v37[1] = v23;
      v44 = v37[0];
      v45 = v23;
      v40 = *(v1 + 120);
      v46 = v40;
      v47 = v22;
      type metadata accessor for EmbeddedPeopleInteractiveMapViewModel();
      swift_allocObject();

      v24 = sub_24B273E54(0, v39, v16, v17, &v41);

      return sub_24B29C508(v24);
    }

    else
    {
      v25 = *(v17 + 16);
      v38 = v16;
      if (v25 == 1)
      {
        sub_24B2D1494();
        v26 = sub_24B2D1484();
        sub_24B2D5A64();
      }

      else
      {
        (*(v9 + 56))(v7, 1, 1, v8);
      }

      if ((*(v9 + 48))(v7, 1, v8) == 1)
      {
        sub_24AFF8258(v7, &qword_27EFCF4F8);
        v27 = sub_24B2D56D4();
        v28 = v40;
        (*(*(v27 - 8) + 56))(v40, 1, 1, v27);
        sub_24B2D5694();

        v29 = sub_24B2D5684();
        v30 = swift_allocObject();
        v31 = MEMORY[0x277D85700];
        v30[2] = v29;
        v30[3] = v31;
        v30[4] = v1;
        sub_24B00B0F0(0, 0, v28, &unk_24B2F5718, v30);
      }

      else
      {
        v39 = *(v9 + 32);
        v39(v14, v7, v8);
        v32 = sub_24B2D56D4();
        (*(*(v32 - 8) + 56))(v40, 1, 1, v32);
        (*(v9 + 16))(v11, v14, v8);
        sub_24B2D5694();

        v33 = sub_24B2D5684();
        v34 = (*(v9 + 80) + 40) & ~*(v9 + 80);
        v35 = swift_allocObject();
        v36 = MEMORY[0x277D85700];
        *(v35 + 2) = v33;
        *(v35 + 3) = v36;
        *(v35 + 4) = v1;
        v39(&v35[v34], v11, v8);
        sub_24B00B0F0(0, 0, v40, &unk_24B2F5728, v35);

        return (*(v9 + 8))(v14, v8);
      }
    }
  }

  return result;
}

uint64_t sub_24B29C508(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC12FindMyUICore33EmbeddedPeopleSummaryMapViewModel__fullScreenInteractiveMap);
  if (!v2)
  {
    if (!a1)
    {
      goto LABEL_3;
    }

LABEL_7:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24B2BF448(&qword_27EFC8128, type metadata accessor for EmbeddedPeopleSummaryMapViewModel);
    sub_24B2D2574();
  }

  if (v2 != a1)
  {
    goto LABEL_7;
  }

LABEL_3:
  *(v1 + OBJC_IVAR____TtC12FindMyUICore33EmbeddedPeopleSummaryMapViewModel__fullScreenInteractiveMap) = a1;
}

uint64_t sub_24B29C6C0(uint64_t a1, unint64_t a2, uint64_t (*a3)(void))
{
  v5 = sub_24B2D3164();
  v6 = sub_24B2D5934();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_24AFF321C(a1, a2, &v11);
    _os_log_impl(&dword_24AFD2000, v5, v6, "EmbeddedPeopleSummaryMapViewModel: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x24C23D530](v8, -1, -1);
    MEMORY[0x24C23D530](v7, -1, -1);
  }

  return a3();
}

uint64_t sub_24B29C7E4(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v3 = sub_24B2D1794();
  v2[14] = v3;
  v2[15] = *(v3 - 8);
  v2[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB020);
  v2[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB288);
  v2[18] = swift_task_alloc();
  v4 = sub_24B2D1C44();
  v2[19] = v4;
  v2[20] = *(v4 - 8);
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = type metadata accessor for OpenFindMyAction.Destination();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = type metadata accessor for PersonDetailsController.State();
  v2[27] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCCD50);
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v5 = type metadata accessor for DetailsPersonInfo();
  v2[30] = v5;
  v2[31] = *(v5 - 8);
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();
  v2[34] = type metadata accessor for PersonLocateAction();
  v2[35] = swift_task_alloc();
  sub_24B2D5694();
  v2[36] = sub_24B2D5684();
  v7 = sub_24B2D5604();
  v2[37] = v7;
  v2[38] = v6;

  return MEMORY[0x2822009F8](sub_24B29CAF8, v7, v6);
}

uint64_t sub_24B29CAF8()
{
  sub_24B2BF490(v0[12], v0[35], type metadata accessor for PersonLocateAction);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  swift_getKeyPath();
  v2 = v0[13];
  if (EnumCaseMultiPayload != 1)
  {
    v0[10] = v2;
    sub_24B2BF448(&qword_27EFC8128, type metadata accessor for EmbeddedPeopleSummaryMapViewModel);
    sub_24B2D2584();

    v10 = *(v2 + OBJC_IVAR____TtC12FindMyUICore33EmbeddedPeopleSummaryMapViewModel__detailsController);
    v11 = v0[30];
    v12 = v0[31];
    v13 = v0[29];
    if (v10)
    {
      v15 = v0[26];
      v14 = v0[27];
      swift_getKeyPath();
      v0[11] = v10;
      sub_24B2BF448(&qword_27EFCCD10, type metadata accessor for PersonDetailsController);

      sub_24B2D2584();

      v16 = OBJC_IVAR____TtC12FindMyUICore23PersonDetailsController__state;
      swift_beginAccess();
      sub_24B2BF490(v10 + v16, v14, type metadata accessor for PersonDetailsController.State);

      sub_24B0391CC(v14 + *(v15 + 20), v13, &qword_27EFCCD50);
      if ((*(v12 + 48))(v13, 1, v11) != 1)
      {
        v17 = v0[13];
        sub_24B2BF380(v0[29], v0[33], type metadata accessor for DetailsPersonInfo);
        v18 = *(v17 + 112);
        sub_24B2D1724();
        swift_storeEnumTagMultiPayload();
        v51 = (v18 + *v18);
        v19 = swift_task_alloc();
        v0[39] = v19;
        *v19 = v0;
        v19[1] = sub_24B29D418;
        v20 = v0[25];
LABEL_15:

        return v51(v20);
      }
    }

    else
    {
      (*(v12 + 56))(v13, 1, 1, v11);
    }

    v28 = v0[13];
    sub_24AFF8258(v0[29], &qword_27EFCCD50);
    v29 = *(v28 + 112);
    swift_storeEnumTagMultiPayload();
    v51 = (v29 + *v29);
    v30 = swift_task_alloc();
    v0[40] = v30;
    *v30 = v0;
    v30[1] = sub_24B29D6B0;
    v20 = v0[24];
    goto LABEL_15;
  }

  v0[8] = v2;
  sub_24B2BF448(&qword_27EFC8128, type metadata accessor for EmbeddedPeopleSummaryMapViewModel);
  sub_24B2D2584();

  v3 = *(v2 + OBJC_IVAR____TtC12FindMyUICore33EmbeddedPeopleSummaryMapViewModel__detailsController);
  if (!v3)
  {
    v21 = v0[30];
    v22 = v0[31];
    v23 = v0[28];

    (*(v22 + 56))(v23, 1, 1, v21);
    goto LABEL_9;
  }

  v4 = v0[30];
  v5 = v0[31];
  v7 = v0[27];
  v6 = v0[28];
  v8 = v0[26];
  swift_getKeyPath();
  v0[9] = v3;
  sub_24B2BF448(&qword_27EFCCD10, type metadata accessor for PersonDetailsController);

  sub_24B2D2584();

  v9 = OBJC_IVAR____TtC12FindMyUICore23PersonDetailsController__state;
  swift_beginAccess();
  sub_24B2BF490(v3 + v9, v7, type metadata accessor for PersonDetailsController.State);

  sub_24B0391CC(v7 + *(v8 + 20), v6, &qword_27EFCCD50);
  if ((*(v5 + 48))(v6, 1, v4) == 1)
  {

LABEL_9:
    v24 = v0[28];
    v25 = &qword_27EFCCD50;
LABEL_10:
    sub_24AFF8258(v24, v25);
    sub_24AFF8258(v0[35], &qword_27EFCB280);

    v26 = v0[1];

    return v26();
  }

  v31 = v0[32];
  v32 = v0[30];
  v33 = v0[18];
  sub_24B2BF380(v0[28], v31, type metadata accessor for DetailsPersonInfo);
  sub_24B008890(v31 + *(v32 + 28), v33, &qword_27EFCB288);
  v34 = sub_24B2D1944();
  v35 = *(v34 - 8);
  if ((*(v35 + 48))(v33, 1, v34) == 1)
  {
    v36 = v0[18];
    sub_24B2BF3E8(v0[32], type metadata accessor for DetailsPersonInfo);

    v25 = &qword_27EFCB288;
    v24 = v36;
    goto LABEL_10;
  }

  v37 = v0[21];
  v49 = v0[22];
  v50 = v0[32];
  v38 = v0[20];
  v48 = v0[19];
  v39 = v0[18];
  v40 = v0[15];
  v41 = v0[16];
  v42 = v0[13];
  v43 = v0[14];
  sub_24B2D18B4();
  (*(v35 + 8))(v39, v34);
  (*(v38 + 32))(v49, v37, v48);
  v44 = *(v42 + 96);
  (*(v40 + 16))(v41, v50, v43);
  sub_24B2D1F24();
  sub_24B2D1AA4();
  v52 = (v44 + *v44);
  v45 = swift_task_alloc();
  v0[41] = v45;
  *v45 = v0;
  v45[1] = sub_24B29D81C;
  v46 = v0[22];
  v47 = v0[17];

  return v52(v46, v47);
}

uint64_t sub_24B29D418()
{
  v3 = *v1;
  v2 = *v1;

  v4 = *(v2 + 200);
  if (v0)
  {

    sub_24B2BF3E8(v4, type metadata accessor for OpenFindMyAction.Destination);
    v5 = *(v3 + 296);
    v6 = *(v3 + 304);
    v7 = sub_24B2BF7E0;
  }

  else
  {
    sub_24B2BF3E8(v4, type metadata accessor for OpenFindMyAction.Destination);
    v5 = *(v3 + 296);
    v6 = *(v3 + 304);
    v7 = sub_24B29D584;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_24B29D584()
{
  v1 = *(v0 + 264);

  sub_24B2BF3E8(v1, type metadata accessor for DetailsPersonInfo);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24B29D6B0()
{
  v3 = *v1;
  v2 = *v1;

  v4 = *(v2 + 192);
  if (v0)
  {

    sub_24B2BF3E8(v4, type metadata accessor for OpenFindMyAction.Destination);
    v5 = *(v3 + 296);
    v6 = *(v3 + 304);
    v7 = sub_24B276EE4;
  }

  else
  {
    sub_24B2BF3E8(v4, type metadata accessor for OpenFindMyAction.Destination);
    v5 = *(v3 + 296);
    v6 = *(v3 + 304);
    v7 = sub_24B27324C;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_24B29D81C()
{
  v3 = *v1;
  v2 = *v1;

  v4 = *(v2 + 136);
  if (v0)
  {

    sub_24AFF8258(v4, &qword_27EFCB020);
    v5 = *(v3 + 296);
    v6 = *(v3 + 304);
    v7 = sub_24B2BF7C8;
  }

  else
  {
    sub_24AFF8258(v4, &qword_27EFCB020);
    v5 = *(v3 + 296);
    v6 = *(v3 + 304);
    v7 = sub_24B29D980;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_24B29D980()
{
  v1 = v0[35];
  v2 = v0[32];
  v3 = v0[22];
  v4 = v0[19];
  v5 = v0[20];

  (*(v5 + 8))(v3, v4);
  sub_24B2BF3E8(v2, type metadata accessor for DetailsPersonInfo);
  sub_24AFF8258(v1, &qword_27EFCB280);

  v6 = v0[1];

  return v6();
}

uint64_t sub_24B29DAE4@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v9 = v1;
  sub_24B2BF448(&qword_27EFC8128, type metadata accessor for EmbeddedPeopleSummaryMapViewModel);
  sub_24B2D2584();

  v3 = *(v1 + 16);
  v4 = *(v9 + 24);
  v5 = *(v9 + 32);
  v6 = *(v9 + 40);
  v7 = *(v9 + 48);
  result = sub_24B2A0910(v3, v4, v5, v6, v7);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  return result;
}

uint64_t sub_24B29DBBC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24B2BF448(&qword_27EFC8128, type metadata accessor for EmbeddedPeopleSummaryMapViewModel);
  sub_24B2D2584();

  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = *(v3 + 32);
  v7 = *(v3 + 40);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  v8 = *(v3 + 48);
  *(a2 + 32) = v8;
  return sub_24B2A0910(v4, v5, v6, v7, v8);
}

uint64_t sub_24B29DC78()
{
  swift_getKeyPath();
  sub_24B2BF448(&qword_27EFC8128, type metadata accessor for EmbeddedPeopleSummaryMapViewModel);
  sub_24B2D2574();
}

uint64_t sub_24B29DD54(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a2 + 16);
  *(a1 + 16) = *a2;
  *(a1 + 32) = v6;
  v7 = *(a1 + 48);
  *(a1 + 48) = *(a2 + 32);
  sub_24B2A0880(a2, v9);
  return sub_24B2A08B8(v2, v3, v4, v5, v7);
}

uint64_t sub_24B29DDD4()
{
  swift_getKeyPath();
  sub_24B2BF448(&qword_27EFC8128, type metadata accessor for EmbeddedPeopleSummaryMapViewModel);
  sub_24B2D2584();
}

uint64_t sub_24B29DE80@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24B2BF448(&qword_27EFC8128, type metadata accessor for EmbeddedPeopleSummaryMapViewModel);
  sub_24B2D2584();

  *a2 = *(v3 + OBJC_IVAR____TtC12FindMyUICore33EmbeddedPeopleSummaryMapViewModel__listController);
}

uint64_t sub_24B29DF34(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC12FindMyUICore33EmbeddedPeopleSummaryMapViewModel__listController) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24B2BF448(&qword_27EFC8128, type metadata accessor for EmbeddedPeopleSummaryMapViewModel);
    sub_24B2D2574();
  }
}

uint64_t sub_24B29E084()
{
  swift_getKeyPath();
  sub_24B2BF448(&qword_27EFC8128, type metadata accessor for EmbeddedPeopleSummaryMapViewModel);
  sub_24B2D2584();
}

uint64_t sub_24B29E128(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC12FindMyUICore33EmbeddedPeopleSummaryMapViewModel__detailsController;
  v3 = *(v1 + OBJC_IVAR____TtC12FindMyUICore33EmbeddedPeopleSummaryMapViewModel__detailsController);
  *(v1 + OBJC_IVAR____TtC12FindMyUICore33EmbeddedPeopleSummaryMapViewModel__detailsController) = a1;

  if (v3)
  {
    PersonDetailsController.onDisappear()();
  }

  swift_getKeyPath();
  sub_24B2BF448(&qword_27EFC8128, type metadata accessor for EmbeddedPeopleSummaryMapViewModel);
  sub_24B2D2584();

  if (*(v1 + v2))
  {

    PersonDetailsController.onAppear()();
  }
}

uint64_t sub_24B29E224@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24B2BF448(&qword_27EFC8128, type metadata accessor for EmbeddedPeopleSummaryMapViewModel);
  sub_24B2D2584();

  *a2 = *(v3 + OBJC_IVAR____TtC12FindMyUICore33EmbeddedPeopleSummaryMapViewModel__detailsController);
}

uint64_t sub_24B29E2D8()
{
  swift_getKeyPath();
  sub_24B2BF448(&qword_27EFC8128, type metadata accessor for EmbeddedPeopleSummaryMapViewModel);
  sub_24B2D2574();
}

uint64_t sub_24B29E3A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v6 = v5;
  v36 = a4;
  v43 = a3;
  v37 = a2;
  v35 = a1;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF500) - 8;
  MEMORY[0x28223BE20](v42);
  v41 = &v35 - v8;
  v9 = sub_24B2D2504();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a5;
  v13 = a5[1];
  v15 = a5[3];
  v44 = a5[2];
  v38 = v15;
  v16 = *(a5 + 3);
  v53 = *(a5 + 2);
  v54 = v16;
  v17 = a5[9];
  v55 = a5[8];
  v18 = a5[10];
  *(v6 + 16) = 0u;
  *(v6 + 32) = 0u;
  *(v6 + 48) = 2;
  sub_24B2D24F4();
  v19 = sub_24B2D24B4();
  v21 = v20;
  (*(v10 + 8))(v12, v9);
  *(v6 + 144) = v19;
  *(v6 + 152) = v21;
  sub_24B2D3174();
  *(v6 + OBJC_IVAR____TtC12FindMyUICore33EmbeddedPeopleSummaryMapViewModel__detailsController) = 0;
  *(v6 + OBJC_IVAR____TtC12FindMyUICore33EmbeddedPeopleSummaryMapViewModel__fullScreenInteractiveMap) = 0;
  sub_24B2D25B4();
  v22 = v54;
  *(v6 + 88) = v53;
  *(v6 + 56) = v14;
  *(v6 + 64) = v13;
  v23 = v44;
  v24 = v38;
  *(v6 + 72) = v44;
  *(v6 + 80) = v24;
  *(v6 + 104) = v22;
  *(v6 + 120) = v55;
  *(v6 + 128) = v17;
  *(v6 + 136) = v18;
  *&v48 = v14;
  *(&v48 + 1) = v13;
  v49 = v23;
  v50 = v24;
  v51 = v17;
  v52 = v18;
  v40 = type metadata accessor for ListPersonInfo();
  v39 = sub_24B2BF448(&qword_27EFCCEE8, type metadata accessor for ListPersonInfo);
  sub_24B2BF448(&qword_27EFCCEF0, type metadata accessor for ListPersonInfo);
  sub_24B2BF448(&qword_27EFCCEF8, type metadata accessor for ListPersonInfo);
  sub_24B2BF448(&qword_27EFCCF00, type metadata accessor for ListPersonInfo);
  sub_24B2BF448(&qword_27EFCCF08, type metadata accessor for ListPersonInfo);
  sub_24B2A0804();

  v25 = v41;
  sub_24B2D19C4();
  *(v25 + *(v42 + 44)) = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF858);
  swift_allocObject();
  v26 = sub_24B26E264(v25, &v48);
  v27 = OBJC_IVAR____TtC12FindMyUICore33EmbeddedPeopleSummaryMapViewModel__listController;
  *(v6 + OBJC_IVAR____TtC12FindMyUICore33EmbeddedPeopleSummaryMapViewModel__listController) = v26;
  swift_getKeyPath();
  v46[0] = v6;
  sub_24B2BF448(&qword_27EFC8128, type metadata accessor for EmbeddedPeopleSummaryMapViewModel);
  sub_24B2D2584();

  v28 = *(v6 + v27);
  v29 = swift_allocObject();
  swift_weakInit();
  v30 = (v28 + *(*v28 + 152));
  swift_beginAccess();
  v31 = *v30;
  *v30 = sub_24B2BEDD4;
  v30[1] = v29;

  v32 = v43;
  sub_24AFD5890(v31);

  if (v32)
  {
    v46[0] = v35;
    v46[1] = v37;
    v46[2] = v32;
    v46[3] = v36;
    v47 = 1;
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v35 - 2) = v6;
    *(&v35 - 1) = v46;
    v45 = v6;
    sub_24B2D2574();
  }

  return v6;
}

uint64_t sub_24B29E97C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8580);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  v5 = sub_24B2D56D4();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  sub_24B2D5694();

  v7 = sub_24B2D5684();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = v6;
  v8[5] = a1;

  sub_24B00B0F0(0, 0, v4, &unk_24B2F5788, v8);
}

uint64_t sub_24B29EB10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  sub_24B2D5694();
  v5[8] = sub_24B2D5684();
  v7 = sub_24B2D5604();

  return MEMORY[0x2822009F8](sub_24B29EBAC, v7, v6);
}

uint64_t sub_24B29EBAC()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_24B29EC54(*(v0 + 56));
  }

  **(v0 + 40) = Strong == 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24B29EC54(uint64_t a1)
{
  v2 = v1;
  v74 = a1;
  v3 = sub_24B2D2504();
  v71 = *(v3 - 8);
  v72 = v3;
  MEMORY[0x28223BE20](v3);
  v68 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for PersonDetailsController.State();
  MEMORY[0x28223BE20](v67);
  v66 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24B2D1574();
  v69 = *(v6 - 8);
  v70 = v6;
  MEMORY[0x28223BE20](v6);
  v77 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB018);
  MEMORY[0x28223BE20](v8 - 8);
  v73 = &v59 - v9;
  v10 = sub_24B2D1794();
  v75 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF4F8);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v59 - v14;
  v16 = sub_24B2D15F4();
  v76 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v19 = OBJC_IVAR____TtC12FindMyUICore33EmbeddedPeopleSummaryMapViewModel___observationRegistrar;
  v78 = v1;
  v20 = sub_24B2BF448(&qword_27EFC8128, type metadata accessor for EmbeddedPeopleSummaryMapViewModel);
  sub_24B2D2584();

  if (!*(v1 + 48))
  {
    v64 = v12;
    v65 = v15;
    v23 = v76;
    v22 = v77;
    v63 = v18;
    swift_getKeyPath();
    v78 = v1;
    v62 = v20;
    sub_24B2D2584();

    if (*(v1 + 48) >= 2u)
    {
      v31 = v65;
      (*(v23 + 56))(v65, 1, 1, v16);
      return sub_24AFF8258(v31, &qword_27EFCF4F8);
    }

    v24 = v19;
    v61 = v10;
    v25 = *(*(v1 + 32) + 16);
    if (v25 < 2)
    {
      v32 = v22;
      if (v25)
      {
        sub_24B2D1494();

        v33 = sub_24B2D1484();
        v31 = v65;
        sub_24B2D5A64();

        v28 = v61;
        v29 = v16;
        v26 = v23;
      }

      else
      {
        v26 = v23;
        v31 = v65;
        v29 = v16;
        (*(v23 + 56))(v65, 1, 1, v16);

        v28 = v61;
      }

      v30 = v32;
    }

    else
    {
      v26 = v23;
      v27 = v65;
      (*(v23 + 56))(v65, 1, 1, v16);

      v28 = v61;
      v29 = v16;
      v30 = v22;
      v31 = v27;
    }

    v34 = (*(v26 + 48))(v31, 1, v29);
    v35 = v64;
    if (v34 == 1)
    {
      return sub_24AFF8258(v31, &qword_27EFCF4F8);
    }

    v36 = v26;
    v37 = v63;
    (*(v26 + 32))(v63, v31, v29);
    swift_getKeyPath();
    v78 = v2;
    sub_24B2D2584();

    if (*(v2 + OBJC_IVAR____TtC12FindMyUICore33EmbeddedPeopleSummaryMapViewModel__detailsController))
    {
      return (*(v36 + 8))(v37, v29);
    }

    v77 = v24;
    MEMORY[0x28223BE20](v38);
    *(&v59 - 2) = v37;
    v39 = v73;
    sub_24B26E064(sub_24B2BEE9C, v74, v73);
    v40 = v75;
    if ((*(v75 + 48))(v39, 1, v28) == 1)
    {
      sub_24AFF8258(v39, &qword_27EFCB018);
      return (*(v36 + 8))(v37, v29);
    }

    v76 = 0;
    (*(v40 + 32))(v35, v39, v28);
    _s12FindMyUICore17DetailsPersonInfoV2id0aB4Core0E5ModelV16UniqueIdentifierVvg_0();
    v41 = v2[8];
    v43 = v2[9];
    v42 = v2[10];
    v44 = v2[11];
    v45 = qword_27EFC76D0;
    v74 = v2[7];

    v73 = v41;

    v65 = v43;

    v60 = v42;
    v46 = v44;

    v47 = v30;
    if (v45 != -1)
    {
      swift_once();
    }

    v48 = __swift_project_value_buffer(v67, qword_27EFCCDA0);
    v49 = v66;
    sub_24B2BF490(v48, v66, type metadata accessor for PersonDetailsController.State);
    type metadata accessor for PersonDetailsController();
    v50 = swift_allocObject();
    v51 = v68;
    sub_24B2D24F4();
    v52 = sub_24B2D24B4();
    v54 = v53;
    (*(v71 + 8))(v51, v72);
    *(v50 + 16) = v52;
    *(v50 + 24) = v54;
    sub_24B2D3174();
    *(v50 + OBJC_IVAR____TtC12FindMyUICore23PersonDetailsController__observationTask) = 0;
    *(v50 + OBJC_IVAR____TtC12FindMyUICore23PersonDetailsController_isAutomaticSubscriptionsForwardingEnabled) = 0;
    sub_24B2D25B4();
    (*(v69 + 32))(v50 + OBJC_IVAR____TtC12FindMyUICore23PersonDetailsController_personIdentifier, v47, v70);
    sub_24B2BF380(v49, v50 + OBJC_IVAR____TtC12FindMyUICore23PersonDetailsController__state, type metadata accessor for PersonDetailsController.State);
    v55 = (v50 + OBJC_IVAR____TtC12FindMyUICore23PersonDetailsController_dependencies);
    v56 = v73;
    *v55 = v74;
    v55[1] = v56;
    v57 = v60;
    v55[2] = v65;
    v55[3] = v57;
    v55[4] = v46;
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v59 - 2) = v2;
    *(&v59 - 1) = v50;
    v78 = v2;
    sub_24B2D2574();

    (*(v75 + 8))(v64, v61);
    return (*(v36 + 8))(v63, v29);
  }

  return result;
}

uint64_t sub_24B29F5A4@<X0>(uint64_t a1@<X2>, uint64_t *a2@<X8>)
{
  v31 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF4F8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v30 - v4;
  v6 = sub_24B2D15F4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v39 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_24B2D1494();
  MEMORY[0x28223BE20](v38);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 16);
  if (v12)
  {
    v14 = *(v9 + 16);
    v13 = v9 + 16;
    v15 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v36 = *(v13 + 56);
    v37 = v14;
    v16 = (v7 + 48);
    v32 = v7;
    v34 = (v7 + 32);
    v35 = (v13 - 8);
    v17 = MEMORY[0x277D84F90];
    v33 = v6;
    do
    {
      v18 = v38;
      v19 = v13;
      v37(v11, v15, v38);
      v20 = sub_24B2D1484();
      sub_24B2D5A64();

      (*v35)(v11, v18);
      if ((*v16)(v5, 1, v6) == 1)
      {
        sub_24AFF8258(v5, &qword_27EFCF4F8);
      }

      else
      {
        v21 = *v34;
        (*v34)(v39, v5, v6);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = sub_24B006880(0, v17[2] + 1, 1, v17);
        }

        v23 = v17[2];
        v22 = v17[3];
        if (v23 >= v22 >> 1)
        {
          v17 = sub_24B006880(v22 > 1, v23 + 1, 1, v17);
        }

        v17[2] = v23 + 1;
        v24 = v17 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v23;
        v6 = v33;
        v21(v24, v39, v33);
      }

      v15 += v36;
      --v12;
      v13 = v19;
    }

    while (v12);
  }

  else
  {
    v17 = MEMORY[0x277D84F90];
  }

  v25 = sub_24B1D0160(v17);

  v26 = v31;
  *v31 = v25;
  v27 = *MEMORY[0x277D08B88];
  v28 = sub_24B2D1654();
  return (*(*(v28 - 8) + 104))(v26, v27, v28);
}

uint64_t sub_24B29F940(uint64_t a1, uint64_t a2)
{
  v3 = sub_24B2D15F4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_24B2D1724();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8020);
  v7 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_24B2DE430;
  (*(v4 + 16))(v8 + v7, a2, v3);
  sub_24B137C44(v8);
  swift_setDeallocating();
  v9 = *(v4 + 8);
  v9(v8 + v7, v3);
  swift_deallocClassInstance();
  LOBYTE(v8) = sub_24B2D15E4();

  v9(v6, v3);

  return v8 & 1;
}

uint64_t sub_24B29FB44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v4[4] = type metadata accessor for OpenFindMyAction.Destination();
  v4[5] = swift_task_alloc();
  sub_24B2D5694();
  v4[6] = sub_24B2D5684();
  v6 = sub_24B2D5604();
  v4[7] = v6;
  v4[8] = v5;

  return MEMORY[0x2822009F8](sub_24B29FC0C, v6, v5);
}

uint64_t sub_24B29FC0C()
{
  v1 = *(v0[3] + 112);
  swift_storeEnumTagMultiPayload();
  v5 = (v1 + *v1);
  v2 = swift_task_alloc();
  v0[9] = v2;
  *v2 = v0;
  v2[1] = sub_24B29FD10;
  v3 = v0[5];

  return v5(v3);
}

uint64_t sub_24B29FD10()
{
  v2 = *v1;
  v2[10] = v0;

  v3 = v2[5];
  if (v0)
  {

    sub_24B2BF3E8(v3, type metadata accessor for OpenFindMyAction.Destination);
    v4 = v2[7];
    v5 = v2[8];
    v6 = sub_24B2BF7D0;
  }

  else
  {
    sub_24B2BF3E8(v3, type metadata accessor for OpenFindMyAction.Destination);
    v4 = v2[7];
    v5 = v2[8];
    v6 = sub_24B29FE80;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_24B29FE80()
{
  v1 = v0[10];
  v2 = v0[2];

  *v2 = v1 != 0;

  v3 = v0[1];

  return v3();
}

uint64_t sub_24B29FF04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  v5[5] = type metadata accessor for OpenFindMyAction.Destination();
  v5[6] = swift_task_alloc();
  sub_24B2D5694();
  v5[7] = sub_24B2D5684();
  v7 = sub_24B2D5604();
  v5[8] = v7;
  v5[9] = v6;

  return MEMORY[0x2822009F8](sub_24B29FFD0, v7, v6);
}

uint64_t sub_24B29FFD0()
{
  v1 = v0[6];
  v2 = v0[4];
  v3 = *(v0[3] + 112);
  v4 = sub_24B2D15F4();
  (*(*(v4 - 8) + 16))(v1, v2, v4);
  swift_storeEnumTagMultiPayload();
  v8 = (v3 + *v3);
  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_24B2A0124;
  v6 = v0[6];

  return v8(v6);
}

uint64_t sub_24B2A0124()
{
  v2 = *v1;
  v2[11] = v0;

  v3 = v2[6];
  if (v0)
  {

    sub_24B2BF3E8(v3, type metadata accessor for OpenFindMyAction.Destination);
    v4 = v2[8];
    v5 = v2[9];
    v6 = sub_24B2BF7D4;
  }

  else
  {
    sub_24B2BF3E8(v3, type metadata accessor for OpenFindMyAction.Destination);
    v4 = v2[8];
    v5 = v2[9];
    v6 = sub_24B2A0294;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_24B2A0294()
{
  v1 = v0[11];
  v2 = v0[2];

  *v2 = v1 != 0;

  v3 = v0[1];

  return v3();
}

uint64_t sub_24B2A0318()
{
  sub_24B2A08B8(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  v1 = OBJC_IVAR____TtC12FindMyUICore33EmbeddedPeopleSummaryMapViewModel_logger;
  v2 = sub_24B2D3184();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC12FindMyUICore33EmbeddedPeopleSummaryMapViewModel___observationRegistrar;
  v4 = sub_24B2D25C4();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t sub_24B2A046C()
{
  sub_24B2A0318();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for EmbeddedPeopleSummaryMapViewModel()
{
  result = qword_27EFCF820;
  if (!qword_27EFCF820)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24B2A0518()
{
  result = sub_24B2D3184();
  if (v1 <= 0x3F)
  {
    result = sub_24B2D25C4();
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12FindMyUICore33EmbeddedPeopleSummaryMapViewModelC5State33_0E35A95CF2CF42A4B880F844CAB075F4LLO(uint64_t a1)
{
  if ((*(a1 + 32) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 32) & 3;
  }
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_24B2A0648(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 33))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 32);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_24B2A0690(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_24B2A06D8(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

uint64_t sub_24B2A074C(uint64_t a1)
{
  *(a1 + 8) = sub_24B2BF448(&qword_27EFCF838, type metadata accessor for EmbeddedPeopleSummaryMapViewModel);
  result = sub_24B2BF448(&qword_27EFCF840, type metadata accessor for EmbeddedPeopleSummaryMapViewModel);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_24B2A0804()
{
  result = qword_27EFCF848;
  if (!qword_27EFCF848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCF848);
  }

  return result;
}

uint64_t sub_24B2A0858()
{
  result = sub_24B134048(&unk_285E482A8);
  qword_27EFE4640 = result;
  return result;
}

uint64_t sub_24B2A08B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 <= 1u)
  {
  }

  return result;
}

uint64_t sub_24B2A0910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 <= 1u)
  {
  }

  return result;
}

uint64_t sub_24B2A0968()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC12FindMyUICore33EmbeddedPeopleSummaryMapViewModel__listController) = *(v0 + 24);
}

uint64_t sub_24B2A09AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_24B2D1704();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SettingsContactsProvider.Subscription();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B2D60E4();
  sub_24B2BF490(a1, v11, type metadata accessor for SettingsContactsProvider.Subscription);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    MEMORY[0x24C23C8D0](1);
    sub_24B2D5404();
  }

  else
  {
    (*(v5 + 32))(v7, v11, v4);
    MEMORY[0x24C23C8D0](0);
    sub_24B2BF448(&unk_27EFC7E58, MEMORY[0x277D08BF8]);
    sub_24B2D5254();
    (*(v5 + 8))(v7, v4);
  }

  sub_24B2D6124();
  v12 = sub_24B2D5B74();
  *(a2 + 56 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
  result = sub_24B2BF380(a1, *(a2 + 48) + *(v9 + 72) * v12, type metadata accessor for SettingsContactsProvider.Subscription);
  ++*(a2 + 16);
  return result;
}

uint64_t sub_24B2A0C50(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v56 = a4;
  v7 = _s14descr285E46659O16SubscriptionDataO9LocationsVMa(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _s14descr285E46659O16SubscriptionDataO10DirectionsVMa(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _s14descr285E46659O16SubscriptionDataO10FriendshipVMa(0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = _s14descr285E46659O16SubscriptionDataOMa(0);
  v53 = *(v16 - 8);
  v54 = v16;
  v17 = MEMORY[0x28223BE20](v16);
  v52 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v47 - v19;
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(v56 + 16) == a3)
  {
    return v56;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC8E0);
  result = sub_24B2D5C04();
  v21 = result;
  v50 = v9;
  v51 = v7;
  v48 = v15;
  v49 = v12;
  if (a2 < 1)
  {
    v23 = 0;
  }

  else
  {
    v23 = *a1;
  }

  v24 = 0;
  v25 = result + 56;
  v26 = v52;
  while (v23)
  {
    v27 = __clz(__rbit64(v23));
    v23 &= v23 - 1;
LABEL_16:
    v30 = *(v56 + 48);
    v55 = *(v53 + 72);
    sub_24B2BF490(v30 + v55 * (v27 | (v24 << 6)), v20, _s14descr285E46659O16SubscriptionDataOMa);
    sub_24B2D60E4();
    sub_24B2BF490(v20, v26, _s14descr285E46659O16SubscriptionDataOMa);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        v36 = v26;
        v33 = v49;
        sub_24B2BF380(v36, v49, _s14descr285E46659O16SubscriptionDataO10DirectionsVMa);
        MEMORY[0x24C23C8D0](3);
        v47 = sub_24B2D1704();
        sub_24B2BF448(&unk_27EFC7E58, MEMORY[0x277D08BF8]);
        sub_24B2D5254();
        v34 = _s14descr285E46659O16SubscriptionDataO10DirectionsVMa;
      }

      else
      {
        v32 = v26;
        v33 = v48;
        sub_24B2BF380(v32, v48, _s14descr285E46659O16SubscriptionDataO10FriendshipVMa);
        MEMORY[0x24C23C8D0](2);
        v47 = sub_24B2D1704();
        sub_24B2BF448(&unk_27EFC7E58, MEMORY[0x277D08BF8]);
        sub_24B2D5254();
        v34 = _s14descr285E46659O16SubscriptionDataO10FriendshipVMa;
      }

      goto LABEL_25;
    }

    if (EnumCaseMultiPayload == 2)
    {
      v35 = v26;
      v33 = v50;
      sub_24B2BF380(v35, v50, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
      MEMORY[0x24C23C8D0](4);
      v47 = sub_24B2D1704();
      sub_24B2BF448(&unk_27EFC7E58, MEMORY[0x277D08BF8]);
      sub_24B2D5254();
      sub_24B2D6104();
      v34 = _s14descr285E46659O16SubscriptionDataO9LocationsVMa;
LABEL_25:
      v37 = v33;
      v26 = v52;
      sub_24B2BF3E8(v37, v34);
      goto LABEL_26;
    }

    if (EnumCaseMultiPayload == 3)
    {
      MEMORY[0x24C23C8D0](0);
    }

    else
    {
      MEMORY[0x24C23C8D0](1);
    }

LABEL_26:
    result = sub_24B2D6124();
    v38 = -1 << *(v21 + 32);
    v39 = result & ~v38;
    v40 = v39 >> 6;
    if (((-1 << v39) & ~*(v25 + 8 * (v39 >> 6))) == 0)
    {
      v42 = 0;
      v43 = (63 - v38) >> 6;
      while (++v40 != v43 || (v42 & 1) == 0)
      {
        v44 = v40 == v43;
        if (v40 == v43)
        {
          v40 = 0;
        }

        v42 |= v44;
        v45 = *(v25 + 8 * v40);
        if (v45 != -1)
        {
          v41 = __clz(__rbit64(~v45)) + (v40 << 6);
          goto LABEL_36;
        }
      }

      goto LABEL_41;
    }

    v41 = __clz(__rbit64((-1 << v39) & ~*(v25 + 8 * (v39 >> 6)))) | v39 & 0x7FFFFFFFFFFFFFC0;
LABEL_36:
    *(v25 + ((v41 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v41;
    result = sub_24B2BF380(v20, *(v21 + 48) + v41 * v55, _s14descr285E46659O16SubscriptionDataOMa);
    ++*(v21 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_42;
    }

    if (!a3)
    {
LABEL_38:

      return v21;
    }
  }

  v28 = v24;
  while (1)
  {
    v24 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v24 >= a2)
    {
      goto LABEL_38;
    }

    v29 = a1[v24];
    ++v28;
    if (v29)
    {
      v27 = __clz(__rbit64(v29));
      v23 = (v29 - 1) & v29;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

uint64_t sub_24B2A1260(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_24B2D14C4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_24B2D15F4();
  v12 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v66 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC810);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v65 = &v51 - v18;
  v19 = type metadata accessor for ContactsProvider.Subscription(0);
  v63 = *(v19 - 8);
  v64 = v19;
  MEMORY[0x28223BE20](v19);
  v21 = &v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v70 = &v51 - v23;
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  v60 = v16;
  v54 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC818);
  result = sub_24B2D5C04();
  v24 = result;
  v61 = v8;
  v62 = a4;
  if (a2 < 1)
  {
    v26 = 0;
  }

  else
  {
    v26 = *a1;
  }

  v27 = 0;
  v59 = (v12 + 32);
  v58 = (v9 + 48);
  v53 = (v9 + 32);
  v52 = (v9 + 8);
  v57 = (v12 + 8);
  v28 = result + 56;
  v29 = v70;
  v56 = v21;
  v55 = a1;
  while (v26)
  {
    v30 = __clz(__rbit64(v26));
    v68 = (v26 - 1) & v26;
LABEL_16:
    v33 = *(v62 + 48);
    v69 = *(v63 + 72);
    sub_24B2BF490(v33 + v69 * (v30 | (v27 << 6)), v29, type metadata accessor for ContactsProvider.Subscription);
    sub_24B2D60E4();
    sub_24B2BF490(v29, v21, type metadata accessor for ContactsProvider.Subscription);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      MEMORY[0x24C23C8D0](1);
      sub_24B2D5404();
      v29 = v70;
    }

    else
    {
      v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC820) + 48);
      v35 = v65;
      sub_24B0391CC(v21, v65, &qword_27EFCC810);
      (*v59)(v66, &v21[v34], v67);
      MEMORY[0x24C23C8D0](0);
      v36 = v60;
      sub_24B008890(v35, v60, &qword_27EFCC810);
      v37 = v61;
      if ((*v58)(v36, 1, v61) == 1)
      {
        sub_24B2D6104();
        v29 = v70;
      }

      else
      {
        v38 = v54;
        (*v53)(v54, v36, v37);
        sub_24B2D6104();
        sub_24B2BF448(&qword_27EFCC830, MEMORY[0x277D08B38]);
        sub_24B2D5254();
        v39 = v38;
        v29 = v70;
        (*v52)(v39, v37);
      }

      sub_24B2BF448(&qword_27EFCC740, MEMORY[0x277D08B70]);
      v40 = v66;
      v41 = v67;
      sub_24B2D5254();
      (*v57)(v40, v41);
      sub_24AFF8258(v65, &qword_27EFCC810);
      v21 = v56;
      a1 = v55;
    }

    result = sub_24B2D6124();
    v42 = -1 << *(v24 + 32);
    v43 = result & ~v42;
    v44 = v43 >> 6;
    if (((-1 << v43) & ~*(v28 + 8 * (v43 >> 6))) == 0)
    {
      v46 = 0;
      v47 = (63 - v42) >> 6;
      while (++v44 != v47 || (v46 & 1) == 0)
      {
        v48 = v44 == v47;
        if (v44 == v47)
        {
          v44 = 0;
        }

        v46 |= v48;
        v49 = *(v28 + 8 * v44);
        if (v49 != -1)
        {
          v45 = __clz(__rbit64(~v49)) + (v44 << 6);
          goto LABEL_32;
        }
      }

      goto LABEL_37;
    }

    v45 = __clz(__rbit64((-1 << v43) & ~*(v28 + 8 * (v43 >> 6)))) | v43 & 0x7FFFFFFFFFFFFFC0;
LABEL_32:
    *(v28 + ((v45 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v45;
    result = sub_24B2BF380(v29, *(v24 + 48) + v45 * v69, type metadata accessor for ContactsProvider.Subscription);
    ++*(v24 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_38;
    }

    v26 = v68;
    if (!a3)
    {
LABEL_34:

      return v24;
    }
  }

  v31 = v27;
  while (1)
  {
    v27 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      break;
    }

    if (v27 >= a2)
    {
      goto LABEL_34;
    }

    v32 = a1[v27];
    ++v31;
    if (v32)
    {
      v30 = __clz(__rbit64(v32));
      v68 = (v32 - 1) & v32;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_24B2A196C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for PeopleLocationsProvider.Subscription(0);
  v31 = *(v8 - 8);
  v32 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC7E0);
  result = sub_24B2D5C04();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  v30 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_16:
    v19 = *(a4 + 48);
    v33 = *(v31 + 72);
    sub_24B2BF490(v19 + v33 * (v16 | (v14 << 6)), v10, type metadata accessor for PeopleLocationsProvider.Subscription);
    sub_24B2D60E4();
    sub_24B2D1574();
    sub_24B2BF448(&qword_27EFCC6C0, MEMORY[0x277D08B50]);
    sub_24B2D5254();
    sub_24B2D5404();

    result = sub_24B2D6124();
    v20 = -1 << *(v11 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v15 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      a4 = v30;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v15 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v15 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
    a4 = v30;
LABEL_26:
    *(v15 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    result = sub_24B2BF380(v10, *(v11 + 48) + v23 * v33, type metadata accessor for PeopleLocationsProvider.Subscription);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    if (!a3)
    {
LABEL_28:

      return v11;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_28;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v13 = (v18 - 1) & v18;
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

uint64_t sub_24B2A1CDC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_24B2D1574();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PeopleProvider.Subscription(0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12 - 8);
  v45 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v48 = &v39 - v16;
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  v44 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC7F8);
  result = sub_24B2D5C04();
  v17 = result;
  v41 = v11;
  if (a2 < 1)
  {
    v19 = 0;
  }

  else
  {
    v19 = *a1;
  }

  v20 = 0;
  v42 = a4;
  v43 = (v9 + 48);
  v39 = (v9 + 8);
  v40 = (v9 + 32);
  v21 = result + 56;
  v22 = v45;
  while (v19)
  {
    v23 = __clz(__rbit64(v19));
    v46 = (v19 - 1) & v19;
LABEL_16:
    v26 = *(a4 + 48);
    v47 = *(v13 + 72);
    v27 = v48;
    sub_24B2BF490(v26 + v47 * (v23 | (v20 << 6)), v48, type metadata accessor for PeopleProvider.Subscription);
    sub_24B2D60E4();
    sub_24B2BF490(v27, v22, type metadata accessor for PeopleProvider.Subscription);
    v28 = v44;
    if ((*v43)(v22, 1, v44) == 1)
    {
      MEMORY[0x24C23C8D0](0);
    }

    else
    {
      v29 = v41;
      (*v40)(v41, v22, v28);
      MEMORY[0x24C23C8D0](1);
      sub_24B2BF448(&qword_27EFCC6C0, MEMORY[0x277D08B50]);
      sub_24B2D5254();
      v22 = v45;
      (*v39)(v29, v28);
    }

    result = sub_24B2D6124();
    v30 = -1 << *(v17 + 32);
    v31 = result & ~v30;
    v32 = v31 >> 6;
    if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
    {
      v34 = 0;
      v35 = (63 - v30) >> 6;
      while (++v32 != v35 || (v34 & 1) == 0)
      {
        v36 = v32 == v35;
        if (v32 == v35)
        {
          v32 = 0;
        }

        v34 |= v36;
        v37 = *(v21 + 8 * v32);
        if (v37 != -1)
        {
          v33 = __clz(__rbit64(~v37)) + (v32 << 6);
          goto LABEL_29;
        }
      }

      goto LABEL_34;
    }

    v33 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_29:
    *(v21 + ((v33 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v33;
    result = sub_24B2BF380(v48, *(v17 + 48) + v33 * v47, type metadata accessor for PeopleProvider.Subscription);
    ++*(v17 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_35;
    }

    a4 = v42;
    v19 = v46;
    if (!a3)
    {
LABEL_31:

      return v17;
    }
  }

  v24 = v20;
  while (1)
  {
    v20 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v20 >= a2)
    {
      goto LABEL_31;
    }

    v25 = a1[v20];
    ++v24;
    if (v25)
    {
      v23 = __clz(__rbit64(v25));
      v46 = (v25 - 1) & v25;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_24B2A2154(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = _s14descr285E46659O16SubscriptionDataO9LocationsVMa(0);
  v31 = *(v8 - 8);
  v32 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE140);
  result = sub_24B2D5C04();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  v30 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_16:
    v19 = *(a4 + 48);
    v33 = *(v31 + 72);
    sub_24B2BF490(v19 + v33 * (v16 | (v14 << 6)), v10, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
    sub_24B2D60E4();
    sub_24B2D1704();
    sub_24B2BF448(&unk_27EFC7E58, MEMORY[0x277D08BF8]);
    sub_24B2D5254();
    sub_24B2D6104();
    result = sub_24B2D6124();
    v20 = -1 << *(v11 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v15 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      a4 = v30;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v15 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v15 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
    a4 = v30;
LABEL_26:
    *(v15 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    result = sub_24B2BF380(v10, *(v11 + 48) + v23 * v33, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    if (!a3)
    {
LABEL_28:

      return v11;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_28;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v13 = (v18 - 1) & v18;
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

uint64_t sub_24B2A2488(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE138);
  result = sub_24B2D5C04();
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
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    result = sub_24B2D5A24();
    v17 = -1 << *(v9 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 48) + 8 * v20) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
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
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_24B2A267C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for ItemsLocationsProvider.Subscription(0);
  v32 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  v31 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE128);
  result = sub_24B2D5C04();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v15 = v31;
  v30 = a4;
  while (v12)
  {
    v16 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_16:
    v19 = *(a4 + 48);
    v20 = *(v32 + 72);
    sub_24B2BF490(v19 + v20 * (v16 | (v13 << 6)), v15, type metadata accessor for ItemsLocationsProvider.Subscription);
    sub_24B2D60E4();
    sub_24B2D1DA4();
    sub_24B2BF448(&qword_27EFCC630, MEMORY[0x277D08E20]);
    sub_24B2D5254();
    sub_24B2D5404();
    result = sub_24B2D6124();
    v21 = -1 << *(v10 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      v15 = v31;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v14 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
    v15 = v31;
LABEL_26:
    *(v14 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    result = sub_24B2BF380(v15, *(v10 + 48) + v24 * v20, type metadata accessor for ItemsLocationsProvider.Subscription);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v30;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v17 = v13;
  while (1)
  {
    v13 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v18 = a1[v13];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v12 = (v18 - 1) & v18;
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

uint64_t sub_24B2A29B4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_24B2D1DA4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ItemsProvider.Subscription(0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12 - 8);
  v45 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v48 = &v39 - v16;
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  v44 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC860);
  result = sub_24B2D5C04();
  v17 = result;
  v41 = v11;
  if (a2 < 1)
  {
    v19 = 0;
  }

  else
  {
    v19 = *a1;
  }

  v20 = 0;
  v42 = a4;
  v43 = (v9 + 48);
  v39 = (v9 + 8);
  v40 = (v9 + 32);
  v21 = result + 56;
  v22 = v45;
  while (v19)
  {
    v23 = __clz(__rbit64(v19));
    v46 = (v19 - 1) & v19;
LABEL_16:
    v26 = *(a4 + 48);
    v47 = *(v13 + 72);
    v27 = v48;
    sub_24B2BF490(v26 + v47 * (v23 | (v20 << 6)), v48, type metadata accessor for ItemsProvider.Subscription);
    sub_24B2D60E4();
    sub_24B2BF490(v27, v22, type metadata accessor for ItemsProvider.Subscription);
    v28 = v44;
    if ((*v43)(v22, 1, v44) == 1)
    {
      MEMORY[0x24C23C8D0](0);
    }

    else
    {
      v29 = v41;
      (*v40)(v41, v22, v28);
      MEMORY[0x24C23C8D0](1);
      sub_24B2BF448(&qword_27EFCC630, MEMORY[0x277D08E20]);
      sub_24B2D5254();
      v22 = v45;
      (*v39)(v29, v28);
    }

    result = sub_24B2D6124();
    v30 = -1 << *(v17 + 32);
    v31 = result & ~v30;
    v32 = v31 >> 6;
    if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
    {
      v34 = 0;
      v35 = (63 - v30) >> 6;
      while (++v32 != v35 || (v34 & 1) == 0)
      {
        v36 = v32 == v35;
        if (v32 == v35)
        {
          v32 = 0;
        }

        v34 |= v36;
        v37 = *(v21 + 8 * v32);
        if (v37 != -1)
        {
          v33 = __clz(__rbit64(~v37)) + (v32 << 6);
          goto LABEL_29;
        }
      }

      goto LABEL_34;
    }

    v33 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_29:
    *(v21 + ((v33 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v33;
    result = sub_24B2BF380(v48, *(v17 + 48) + v33 * v47, type metadata accessor for ItemsProvider.Subscription);
    ++*(v17 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_35;
    }

    a4 = v42;
    v19 = v46;
    if (!a3)
    {
LABEL_31:

      return v17;
    }
  }

  v24 = v20;
  while (1)
  {
    v20 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v20 >= a2)
    {
      goto LABEL_31;
    }

    v25 = a1[v20];
    ++v24;
    if (v25)
    {
      v23 = __clz(__rbit64(v25));
      v46 = (v25 - 1) & v25;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_24B2A2E2C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for SettingsContactsProvider.Subscription();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE0C0);
  result = sub_24B2D5C04();
  v12 = result;
  if (a2 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *a1;
  }

  v15 = 0;
  while (v14)
  {
    v16 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
LABEL_16:
    sub_24B2BF490(*(a4 + 48) + *(v9 + 72) * (v16 | (v15 << 6)), v11, type metadata accessor for SettingsContactsProvider.Subscription);
    result = sub_24B2A09AC(v11, v12);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_21;
    }

    if (!a3)
    {
LABEL_18:

      return v12;
    }
  }

  v17 = v15;
  while (1)
  {
    v15 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v15 >= a2)
    {
      goto LABEL_18;
    }

    v18 = a1[v15];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v14 = (v18 - 1) & v18;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_24B2A2FF4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC7A0);
  result = sub_24B2D5C04();
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
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + (v13 | (v11 << 6)));
    sub_24B2D60E4();
    MEMORY[0x24C23C8D0](0);
    sub_24B2D6104();
    result = sub_24B2D6124();
    v17 = -1 << *(v9 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 48) + v20) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
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
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_24B2A3208(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v42 = type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier(0);
  v8 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription(0);
  v41 = *(v11 - 8);
  MEMORY[0x28223BE20](v11 - 8);
  v40 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v44 = &v36 - v14;
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC7B0);
  result = sub_24B2D5C04();
  v15 = result;
  v37 = v10;
  if (a2 < 1)
  {
    v17 = 0;
  }

  else
  {
    v17 = *a1;
  }

  v18 = 0;
  v38 = a4;
  v39 = (v8 + 48);
  v19 = result + 56;
  v20 = v40;
  while (v17)
  {
    v21 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
LABEL_16:
    v24 = *(a4 + 48);
    v43 = *(v41 + 72);
    v25 = v44;
    sub_24B2BF490(v24 + v43 * (v21 | (v18 << 6)), v44, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
    sub_24B2D60E4();
    sub_24B2BF490(v25, v20, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
    if ((*v39)(v20, 1, v42) == 1)
    {
      MEMORY[0x24C23C8D0](0);
    }

    else
    {
      v26 = v37;
      sub_24B2BF380(v20, v37, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
      MEMORY[0x24C23C8D0](1);
      sub_24B2D1704();
      sub_24B2BF448(&unk_27EFC7E58, MEMORY[0x277D08BF8]);
      v20 = v40;
      sub_24B2D5254();
      sub_24B2BF3E8(v26, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
    }

    result = sub_24B2D6124();
    v27 = -1 << *(v15 + 32);
    v28 = result & ~v27;
    v29 = v28 >> 6;
    if (((-1 << v28) & ~*(v19 + 8 * (v28 >> 6))) == 0)
    {
      v31 = 0;
      v32 = (63 - v27) >> 6;
      while (++v29 != v32 || (v31 & 1) == 0)
      {
        v33 = v29 == v32;
        if (v29 == v32)
        {
          v29 = 0;
        }

        v31 |= v33;
        v34 = *(v19 + 8 * v29);
        if (v34 != -1)
        {
          v30 = __clz(__rbit64(~v34)) + (v29 << 6);
          goto LABEL_29;
        }
      }

      goto LABEL_34;
    }

    v30 = __clz(__rbit64((-1 << v28) & ~*(v19 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_29:
    *(v19 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
    result = sub_24B2BF380(v44, *(v15 + 48) + v30 * v43, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
    ++*(v15 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_35;
    }

    a4 = v38;
    if (!a3)
    {
LABEL_31:

      return v15;
    }
  }

  v22 = v18;
  while (1)
  {
    v18 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v18 >= a2)
    {
      goto LABEL_31;
    }

    v23 = a1[v18];
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v17 = (v23 - 1) & v23;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_24B2A366C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = a4;
  if (!a3)
  {
    v10 = MEMORY[0x277D84FA0];
LABEL_6:

    return v10;
  }

  v6 = a3;
  if (*(a4 + 16) == a3)
  {
    return v5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  result = sub_24B2D5C04();
  v10 = result;
  if (a2 < 1)
  {
    v11 = 0;
  }

  else
  {
    v11 = *a1;
  }

  v12 = 0;
  v13 = result + 56;
  while (v11)
  {
LABEL_15:
    sub_24B2D60E4();
    MEMORY[0x24C23C8D0](0);
    result = sub_24B2D6124();
    v15 = -1 << *(v10 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v13 + 8 * (v16 >> 6))) == 0)
    {
      v19 = 0;
      v20 = (63 - v15) >> 6;
      while (++v17 != v20 || (v19 & 1) == 0)
      {
        v21 = v17 == v20;
        if (v17 == v20)
        {
          v17 = 0;
        }

        v19 |= v21;
        v22 = *(v13 + 8 * v17);
        if (v22 != -1)
        {
          v18 = __clz(__rbit64(~v22)) + (v17 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_29;
    }

    v18 = __clz(__rbit64((-1 << v16) & ~*(v13 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v13 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
    ++*(v10 + 16);
    if (__OFSUB__(v6--, 1))
    {
      goto LABEL_30;
    }

    v11 &= v11 - 1;
    if (!v6)
    {
      goto LABEL_6;
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_6;
    }

    v11 = a1[v14];
    ++v12;
    if (v11)
    {
      v12 = v14;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_24B2A383C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF8A0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v18 - v4;
  v6 = _s14descr285E46659O16SubscriptionDataO9LocationsVMa(0);
  v7 = *(v6 - 8);
  result = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    v11 = 1 << *(a1 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(a1 + 56);
    v14 = (v11 + 63) >> 6;

    for (i = 0; v13; result = sub_24AFF8258(v5, &qword_27EFCF8A0))
    {
      v16 = i;
LABEL_10:
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      sub_24B2BF490(*(a1 + 48) + *(v7 + 72) * (v17 | (v16 << 6)), v10, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
      sub_24B2B8228(v10, v5);
      sub_24B2BF3E8(v10, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
    }

    while (1)
    {
      v16 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v16 >= v14)
      {
      }

      v13 = *(a1 + 56 + 8 * v16);
      ++i;
      if (v13)
      {
        i = v16;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_24B2A3A44(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF898);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v18 - v4;
  v6 = _s14descr285E46659O16SubscriptionDataOMa(0);
  v7 = *(v6 - 8);
  result = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    v11 = 1 << *(a1 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(a1 + 56);
    v14 = (v11 + 63) >> 6;

    for (i = 0; v13; result = sub_24AFF8258(v5, &qword_27EFCF898))
    {
      v16 = i;
LABEL_10:
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      sub_24B2BF490(*(a1 + 48) + *(v7 + 72) * (v17 | (v16 << 6)), v10, _s14descr285E46659O16SubscriptionDataOMa);
      sub_24B2B8524(v10, v5);
      sub_24B2BF3E8(v10, _s14descr285E46659O16SubscriptionDataOMa);
    }

    while (1)
    {
      v16 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v16 >= v14)
      {
      }

      v13 = *(a1 + 56 + 8 * v16);
      ++i;
      if (v13)
      {
        i = v16;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_24B2A3C64(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC84B0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v17 - v4;
  v6 = type metadata accessor for ContactsProvider.Subscription(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    v10 = 1 << *(a1 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(a1 + 56);
    v13 = (v10 + 63) >> 6;

    v14 = 0;
    while (v12)
    {
      v15 = v14;
LABEL_10:
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      sub_24B2BF490(*(a1 + 48) + *(v7 + 72) * (v16 | (v15 << 6)), v9, type metadata accessor for ContactsProvider.Subscription);
      sub_24B2B8758(v9, v5);
      sub_24B2BF3E8(v9, type metadata accessor for ContactsProvider.Subscription);
      sub_24AFF8258(v5, &qword_27EFC84B0);
    }

    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v13)
      {

        return;
      }

      v12 = *(a1 + 56 + 8 * v15);
      ++v14;
      if (v12)
      {
        v14 = v15;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

void sub_24B2A3E6C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC84A8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v17 - v4;
  v6 = type metadata accessor for PeopleLocationsProvider.Subscription(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    v10 = 1 << *(a1 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(a1 + 56);
    v13 = (v10 + 63) >> 6;

    v14 = 0;
    while (v12)
    {
      v15 = v14;
LABEL_10:
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      sub_24B2BF490(*(a1 + 48) + *(v7 + 72) * (v16 | (v15 << 6)), v9, type metadata accessor for PeopleLocationsProvider.Subscription);
      sub_24B2B898C(v9, v5);
      sub_24B2BF3E8(v9, type metadata accessor for PeopleLocationsProvider.Subscription);
      sub_24AFF8258(v5, &qword_27EFC84A8);
    }

    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v13)
      {

        return;
      }

      v12 = *(a1 + 56 + 8 * v15);
      ++v14;
      if (v12)
      {
        v14 = v15;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

void sub_24B2A4074(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC85C8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v17 - v4;
  v6 = type metadata accessor for PeopleProvider.Subscription(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    v10 = 1 << *(a1 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(a1 + 56);
    v13 = (v10 + 63) >> 6;

    v14 = 0;
    while (v12)
    {
      v15 = v14;
LABEL_10:
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      sub_24B2BF490(*(a1 + 48) + *(v7 + 72) * (v16 | (v15 << 6)), v9, type metadata accessor for PeopleProvider.Subscription);
      sub_24B2B8DC4(v9, v5);
      sub_24B2BF3E8(v9, type metadata accessor for PeopleProvider.Subscription);
      sub_24AFF8258(v5, &qword_27EFC85C8);
    }

    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v13)
      {

        return;
      }

      v12 = *(a1 + 56 + 8 * v15);
      ++v14;
      if (v12)
      {
        v14 = v15;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

void sub_24B2A427C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC85D0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v17 - v4;
  v6 = type metadata accessor for ItemsLocationsProvider.Subscription(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    v10 = 1 << *(a1 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(a1 + 56);
    v13 = (v10 + 63) >> 6;

    v14 = 0;
    while (v12)
    {
      v15 = v14;
LABEL_10:
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      sub_24B2BF490(*(a1 + 48) + *(v7 + 72) * (v16 | (v15 << 6)), v9, type metadata accessor for ItemsLocationsProvider.Subscription);
      sub_24B2B9564(v9, v5);
      sub_24B2BF3E8(v9, type metadata accessor for ItemsLocationsProvider.Subscription);
      sub_24AFF8258(v5, &qword_27EFC85D0);
    }

    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v13)
      {

        return;
      }

      v12 = *(a1 + 56 + 8 * v15);
      ++v14;
      if (v12)
      {
        v14 = v15;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

void sub_24B2A4484(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC85E0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v17 - v4;
  v6 = type metadata accessor for ItemsProvider.Subscription(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    v10 = 1 << *(a1 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(a1 + 56);
    v13 = (v10 + 63) >> 6;

    v14 = 0;
    while (v12)
    {
      v15 = v14;
LABEL_10:
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      sub_24B2BF490(*(a1 + 48) + *(v7 + 72) * (v16 | (v15 << 6)), v9, type metadata accessor for ItemsProvider.Subscription);
      sub_24B2B98B4(v9, v5);
      sub_24B2BF3E8(v9, type metadata accessor for ItemsProvider.Subscription);
      sub_24AFF8258(v5, &qword_27EFC85E0);
    }

    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v13)
      {

        return;
      }

      v12 = *(a1 + 56 + 8 * v15);
      ++v14;
      if (v12)
      {
        v14 = v15;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

void sub_24B2A468C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC85B8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v17 - v4;
  v6 = type metadata accessor for SettingsContactsProvider.Subscription();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    v10 = 1 << *(a1 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(a1 + 56);
    v13 = (v10 + 63) >> 6;

    v14 = 0;
    while (v12)
    {
      v15 = v14;
LABEL_10:
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      sub_24B2BF490(*(a1 + 48) + *(v7 + 72) * (v16 | (v15 << 6)), v9, type metadata accessor for SettingsContactsProvider.Subscription);
      sub_24B2BA054(v9, v5);
      sub_24B2BF3E8(v9, type metadata accessor for SettingsContactsProvider.Subscription);
      sub_24AFF8258(v5, &qword_27EFC85B8);
    }

    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v13)
      {

        return;
      }

      v12 = *(a1 + 56 + 8 * v15);
      ++v14;
      if (v12)
      {
        v14 = v15;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

uint64_t sub_24B2A4894(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        result = sub_24B2BA758(*(*(v2 + 48) + (v10 | (v9 << 6))), &v11);
        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

void sub_24B2A4998(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC85C0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v17 - v4;
  v6 = type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    v10 = 1 << *(a1 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(a1 + 56);
    v13 = (v10 + 63) >> 6;

    v14 = 0;
    while (v12)
    {
      v15 = v14;
LABEL_10:
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      sub_24B2BF490(*(a1 + 48) + *(v7 + 72) * (v16 | (v15 << 6)), v9, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
      sub_24B2BA874(v9, v5);
      sub_24B2BF3E8(v9, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
      sub_24AFF8258(v5, &qword_27EFC85C0);
    }

    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v13)
      {

        return;
      }

      v12 = *(a1 + 56 + 8 * v15);
      ++v14;
      if (v12)
      {
        v14 = v15;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

uint64_t sub_24B2A4BB8(uint64_t result, void (*a2)(void))
{
  v3 = *v2;
  if (*(*v2 + 16))
  {
    v4 = result + 56;
    v5 = 1 << *(result + 32);
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    else
    {
      v6 = -1;
    }

    v7 = v6 & *(result + 56);
    v8 = (v5 + 63) >> 6;

    v9 = 0;
    v10 = v3 + 56;
    if (!v7)
    {
      goto LABEL_8;
    }

    do
    {
LABEL_6:
      while (1)
      {
        v7 &= v7 - 1;
        sub_24B2D60E4();
        MEMORY[0x24C23C8D0](0);
        result = sub_24B2D6124();
        v11 = result & ~(-1 << *(v3 + 32));
        if ((*(v10 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
        {
          break;
        }

        if (!v7)
        {
          goto LABEL_8;
        }
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v15;
      if (!isUniquelyReferenced_nonNull_native)
      {
        a2();
      }

      result = sub_24B2BDB5C(v11);
      v3 = v16;
      *v15 = v16;
      v10 = v16 + 56;
    }

    while (v7);
    while (1)
    {
LABEL_8:
      v12 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
        return result;
      }

      if (v12 >= v8)
      {
        break;
      }

      v7 = *(v4 + 8 * v12);
      ++v9;
      if (v7)
      {
        v9 = v12;
        goto LABEL_6;
      }
    }
  }

  return result;
}

uint64_t sub_24B2A4D5C(uint64_t a1, uint64_t a2)
{
  v166[2] = *MEMORY[0x277D85DE8];
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFC8650);
  v4 = MEMORY[0x28223BE20](v162);
  v6 = &v134 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v134 - v7;
  v146 = _s14descr285E46659O16SubscriptionDataO9LocationsVMa(0);
  v9 = MEMORY[0x28223BE20](v146);
  v150 = &v134 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v136 = &v134 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v141 = &v134 - v14;
  MEMORY[0x28223BE20](v13);
  v134 = &v134 - v15;
  v16 = _s14descr285E46659O16SubscriptionDataO10DirectionsVMa(0);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v149 = &v134 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v140 = &v134 - v20;
  MEMORY[0x28223BE20](v19);
  v138 = &v134 - v21;
  v22 = _s14descr285E46659O16SubscriptionDataO10FriendshipVMa(0);
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v145 = &v134 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v139 = &v134 - v26;
  MEMORY[0x28223BE20](v25);
  v137 = &v134 - v27;
  v28 = _s14descr285E46659O16SubscriptionDataOMa(0);
  v29 = *(v28 - 8);
  v30 = MEMORY[0x28223BE20](v28);
  v32 = &v134 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v30);
  v34 = MEMORY[0x28223BE20](v33);
  v159 = &v134 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v155 = &v134 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v151 = &v134 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v161 = &v134 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v152 = (&v134 - v43);
  v44 = MEMORY[0x28223BE20](v42);
  v45 = MEMORY[0x28223BE20](v44);
  v47 = (&v134 - v46);
  v48 = MEMORY[0x28223BE20](v45);
  v160 = &v134 - v49;
  v50 = MEMORY[0x28223BE20](v48);
  v142 = &v134 - v51;
  MEMORY[0x28223BE20](v50);
  v157 = &v134 - v54;
  if (*(a2 + 16))
  {
    v144 = v53;
    v154 = v52;
    v166[0] = a1;
    v55 = *(a1 + 16);

    v135 = v55;
    if (v55)
    {
      v56 = 0;
      v147 = a1 + ((*(v29 + 80) + 32) & ~*(v29 + 80));
      v57 = *(v29 + 72);
      v164 = a2;
      v165 = v57;
      v163 = (a2 + 56);
      v148 = a1;
      v158 = v32;
      v143 = v47;
      while (1)
      {
        v58 = v56 + 1;
        v166[1] = v56 + 1;
        v59 = v157;
        sub_24B2BF490(v147 + v165 * v56, v157, _s14descr285E46659O16SubscriptionDataOMa);
        sub_24B2D60E4();
        sub_24B2BF490(v59, v142, _s14descr285E46659O16SubscriptionDataOMa);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v153 = v58;
        if (EnumCaseMultiPayload <= 1)
        {
          if (EnumCaseMultiPayload)
          {
            v61 = v138;
            sub_24B2BF380(v142, v138, _s14descr285E46659O16SubscriptionDataO10DirectionsVMa);
            MEMORY[0x24C23C8D0](3);
            sub_24B2D1704();
            sub_24B2BF448(&unk_27EFC7E58, MEMORY[0x277D08BF8]);
            sub_24B2D5254();
            v62 = _s14descr285E46659O16SubscriptionDataO10DirectionsVMa;
          }

          else
          {
            v61 = v137;
            sub_24B2BF380(v142, v137, _s14descr285E46659O16SubscriptionDataO10FriendshipVMa);
            MEMORY[0x24C23C8D0](2);
            sub_24B2D1704();
            sub_24B2BF448(&unk_27EFC7E58, MEMORY[0x277D08BF8]);
            sub_24B2D5254();
            v62 = _s14descr285E46659O16SubscriptionDataO10FriendshipVMa;
          }

          sub_24B2BF3E8(v61, v62);
          a2 = v164;
        }

        else if (EnumCaseMultiPayload == 2)
        {
          v63 = v134;
          sub_24B2BF380(v142, v134, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
          MEMORY[0x24C23C8D0](4);
          sub_24B2D1704();
          sub_24B2BF448(&unk_27EFC7E58, MEMORY[0x277D08BF8]);
          a2 = v164;
          sub_24B2D5254();
          sub_24B2D6104();
          sub_24B2BF3E8(v63, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
        }

        else if (EnumCaseMultiPayload == 3)
        {
          MEMORY[0x24C23C8D0](0);
        }

        else
        {
          MEMORY[0x24C23C8D0](1);
        }

        v64 = sub_24B2D6124();
        v65 = -1 << *(a2 + 32);
        v66 = v64 & ~v65;
        v67 = v66 >> 6;
        v68 = 1 << v66;
        if (((1 << v66) & v163[v66 >> 6]) != 0)
        {
          break;
        }

LABEL_4:
        sub_24B2BF3E8(v157, _s14descr285E46659O16SubscriptionDataOMa);
        v56 = v153;
        a2 = v164;
        if (v153 == v135)
        {
          goto LABEL_49;
        }
      }

      v156 = ~v65;
      while (1)
      {
        v71 = v160;
        sub_24B2BF490(*(v164 + 48) + v66 * v165, v160, _s14descr285E46659O16SubscriptionDataOMa);
        v72 = *(v162 + 48);
        sub_24B2BF490(v71, v8, _s14descr285E46659O16SubscriptionDataOMa);
        sub_24B2BF490(v157, &v8[v72], _s14descr285E46659O16SubscriptionDataOMa);
        v73 = swift_getEnumCaseMultiPayload();
        if (v73 > 1)
        {
          break;
        }

        if (!v73)
        {
          sub_24B2BF490(v8, v47, _s14descr285E46659O16SubscriptionDataOMa);
          if (!swift_getEnumCaseMultiPayload())
          {
            v86 = v139;
            sub_24B2BF380(&v8[v72], v139, _s14descr285E46659O16SubscriptionDataO10FriendshipVMa);
            sub_24B2D1704();
            sub_24B2BF448(&qword_27EFC7E90, MEMORY[0x277D08BF8]);
            v87 = sub_24B2D52A4();
            sub_24B2BF3E8(v86, _s14descr285E46659O16SubscriptionDataO10FriendshipVMa);
            sub_24B2BF3E8(v160, _s14descr285E46659O16SubscriptionDataOMa);
            sub_24B2BF3E8(v47, _s14descr285E46659O16SubscriptionDataO10FriendshipVMa);
            v70 = v158;
            if (v87)
            {
              goto LABEL_46;
            }

            goto LABEL_43;
          }

          sub_24B2BF3E8(v160, _s14descr285E46659O16SubscriptionDataOMa);
          v74 = _s14descr285E46659O16SubscriptionDataO10FriendshipVMa;
          v75 = v47;
LABEL_37:
          sub_24B2BF3E8(v75, v74);
          goto LABEL_19;
        }

        v83 = v144;
        sub_24B2BF490(v8, v144, _s14descr285E46659O16SubscriptionDataOMa);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v84 = v140;
          sub_24B2BF380(&v8[v72], v140, _s14descr285E46659O16SubscriptionDataO10DirectionsVMa);
          sub_24B2D1704();
          sub_24B2BF448(&qword_27EFC7E90, MEMORY[0x277D08BF8]);
          v85 = sub_24B2D52A4();
          sub_24B2BF3E8(v84, _s14descr285E46659O16SubscriptionDataO10DirectionsVMa);
          sub_24B2BF3E8(v160, _s14descr285E46659O16SubscriptionDataOMa);
          sub_24B2BF3E8(v83, _s14descr285E46659O16SubscriptionDataO10DirectionsVMa);
          v70 = v158;
          v47 = v143;
          if (v85)
          {
            goto LABEL_46;
          }

LABEL_43:
          sub_24B2BF3E8(v8, _s14descr285E46659O16SubscriptionDataOMa);
          goto LABEL_20;
        }

        sub_24B2BF3E8(v160, _s14descr285E46659O16SubscriptionDataOMa);
        sub_24B2BF3E8(v83, _s14descr285E46659O16SubscriptionDataO10DirectionsVMa);
        v47 = v143;
LABEL_19:
        sub_24AFF8258(v8, &unk_27EFC8650);
LABEL_20:
        v66 = (v66 + 1) & v156;
        v67 = v66 >> 6;
        v68 = 1 << v66;
        if ((v163[v66 >> 6] & (1 << v66)) == 0)
        {
          goto LABEL_4;
        }
      }

      if (v73 != 2)
      {
        if (v73 == 3)
        {
          sub_24B2BF3E8(v160, _s14descr285E46659O16SubscriptionDataOMa);
          v69 = swift_getEnumCaseMultiPayload() == 3;
        }

        else
        {
          sub_24B2BF3E8(v160, _s14descr285E46659O16SubscriptionDataOMa);
          v69 = swift_getEnumCaseMultiPayload() == 4;
        }

        v70 = v158;
        if (v69)
        {
          goto LABEL_46;
        }

        goto LABEL_19;
      }

      sub_24B2BF490(v8, v152, _s14descr285E46659O16SubscriptionDataOMa);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v76 = &v8[v72];
        v77 = v141;
        sub_24B2BF380(v76, v141, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
        sub_24B2D1704();
        sub_24B2BF448(&qword_27EFC7E90, MEMORY[0x277D08BF8]);
        v78 = sub_24B2D52A4();
        sub_24B2BF3E8(v160, _s14descr285E46659O16SubscriptionDataOMa);
        if (v78)
        {
          v79 = *(v146 + 20);
          v80 = *(v152 + v79);
          v81 = v77;
          v82 = *(v77 + v79);
          sub_24B2BF3E8(v81, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
          v69 = v80 == v82;
          v70 = v158;
          if (v69)
          {
            sub_24B2BF3E8(v152, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
LABEL_46:
            sub_24B2BF3E8(v8, _s14descr285E46659O16SubscriptionDataOMa);
            v88 = sub_24B2BF3E8(v157, _s14descr285E46659O16SubscriptionDataOMa);
            v89 = v164;
            v90 = *(v164 + 32);
            v143 = ((1 << v90) + 63) >> 6;
            v91 = 8 * v143;
            if ((v90 & 0x3Fu) > 0xD)
            {
              goto LABEL_101;
            }

            while (1)
            {
              v144 = &v134;
              MEMORY[0x28223BE20](v88);
              v93 = &v134 - ((v92 + 15) & 0x3FFFFFFFFFFFFFF0);
              memcpy(v93, v163, v92);
              v94 = *(v89 + 16);
              v95 = *&v93[8 * v67] & ~v68;
              v152 = v93;
              *&v93[8 * v67] = v95;
              v156 = v94 - 1;
              v96 = v148;
              v67 = v153;
              v157 = *(v148 + 16);
              v66 = v89;
              if (v153 == v157)
              {
LABEL_48:
                a2 = sub_24B2A0C50(v152, v143, v156, v66);
                goto LABEL_49;
              }

              v98 = v155;
LABEL_55:
              if (v67 < *(v96 + 16))
              {
                break;
              }

              __break(1u);
LABEL_100:
              __break(1u);
LABEL_101:
              v131 = v91;

              v132 = v131;
              if (!swift_stdlib_isStackAllocationSafe())
              {
                v133 = swift_slowAlloc();
                memcpy(v133, v163, v132);
                a2 = sub_24B2B1CCC(v133, v143, v89, v66, v166);

                MEMORY[0x24C23D530](v133, -1, -1);
                goto LABEL_49;
              }
            }

            v99 = v161;
            sub_24B2BF490(v147 + v67 * v165, v161, _s14descr285E46659O16SubscriptionDataOMa);
            sub_24B2D60E4();
            sub_24B2BF490(v99, v151, _s14descr285E46659O16SubscriptionDataOMa);
            v100 = swift_getEnumCaseMultiPayload();
            v153 = v67;
            if (v100 <= 1)
            {
              if (v100)
              {
                v101 = v138;
                sub_24B2BF380(v151, v138, _s14descr285E46659O16SubscriptionDataO10DirectionsVMa);
                MEMORY[0x24C23C8D0](3);
                sub_24B2D1704();
                sub_24B2BF448(&unk_27EFC7E58, MEMORY[0x277D08BF8]);
                sub_24B2D5254();
                v102 = _s14descr285E46659O16SubscriptionDataO10DirectionsVMa;
              }

              else
              {
                v101 = v137;
                sub_24B2BF380(v151, v137, _s14descr285E46659O16SubscriptionDataO10FriendshipVMa);
                MEMORY[0x24C23C8D0](2);
                sub_24B2D1704();
                sub_24B2BF448(&unk_27EFC7E58, MEMORY[0x277D08BF8]);
                sub_24B2D5254();
                v102 = _s14descr285E46659O16SubscriptionDataO10FriendshipVMa;
              }

              sub_24B2BF3E8(v101, v102);
              v66 = v164;
            }

            else if (v100 == 2)
            {
              v103 = v136;
              sub_24B2BF380(v151, v136, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
              MEMORY[0x24C23C8D0](4);
              sub_24B2D1704();
              sub_24B2BF448(&unk_27EFC7E58, MEMORY[0x277D08BF8]);
              v66 = v164;
              sub_24B2D5254();
              sub_24B2D6104();
              sub_24B2BF3E8(v103, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
            }

            else if (v100 == 3)
            {
              MEMORY[0x24C23C8D0](0);
            }

            else
            {
              MEMORY[0x24C23C8D0](1);
            }

            v104 = sub_24B2D6124();
            v105 = -1 << *(v66 + 32);
            v89 = v104 & ~v105;
            v68 = v89 >> 6;
            v106 = 1 << v89;
            if (((1 << v89) & v163[v89 >> 6]) == 0)
            {
LABEL_52:
              sub_24B2BF3E8(v161, _s14descr285E46659O16SubscriptionDataOMa);
LABEL_53:
              v96 = v148;
              v67 = v153;
              goto LABEL_54;
            }

            v160 = ~v105;
            while (2)
            {
              sub_24B2BF490(*(v66 + 48) + v89 * v165, v98, _s14descr285E46659O16SubscriptionDataOMa);
              v108 = *(v162 + 48);
              sub_24B2BF490(v98, v6, _s14descr285E46659O16SubscriptionDataOMa);
              sub_24B2BF490(v161, &v6[v108], _s14descr285E46659O16SubscriptionDataOMa);
              v109 = swift_getEnumCaseMultiPayload();
              if (v109 <= 1)
              {
                if (v109)
                {
                  v119 = v28;
                  v120 = v154;
                  sub_24B2BF490(v6, v154, _s14descr285E46659O16SubscriptionDataOMa);
                  v121 = v119;
                  if (swift_getEnumCaseMultiPayload() != 1)
                  {
                    v98 = v155;
                    sub_24B2BF3E8(v155, _s14descr285E46659O16SubscriptionDataOMa);
                    sub_24B2BF3E8(v120, _s14descr285E46659O16SubscriptionDataO10DirectionsVMa);
                    v66 = v164;
                    v28 = v119;
                    goto LABEL_70;
                  }

                  v122 = v149;
                  sub_24B2BF380(&v6[v108], v149, _s14descr285E46659O16SubscriptionDataO10DirectionsVMa);
                  sub_24B2D1704();
                  sub_24B2BF448(&qword_27EFC7E90, MEMORY[0x277D08BF8]);
                  v123 = sub_24B2D52A4();
                  v124 = v122;
                  v70 = v158;
                  sub_24B2BF3E8(v124, _s14descr285E46659O16SubscriptionDataO10DirectionsVMa);
                  v98 = v155;
                  sub_24B2BF3E8(v155, _s14descr285E46659O16SubscriptionDataOMa);
                  sub_24B2BF3E8(v120, _s14descr285E46659O16SubscriptionDataO10DirectionsVMa);
                  v66 = v164;
                  v28 = v121;
                  if (v123)
                  {
                    goto LABEL_95;
                  }

                  goto LABEL_94;
                }

                sub_24B2BF490(v6, v159, _s14descr285E46659O16SubscriptionDataOMa);
                if (!swift_getEnumCaseMultiPayload())
                {
                  v125 = v145;
                  sub_24B2BF380(&v6[v108], v145, _s14descr285E46659O16SubscriptionDataO10FriendshipVMa);
                  sub_24B2D1704();
                  sub_24B2BF448(&qword_27EFC7E90, MEMORY[0x277D08BF8]);
                  v126 = v159;
                  v127 = sub_24B2D52A4();
                  v128 = v125;
                  v70 = v158;
                  sub_24B2BF3E8(v128, _s14descr285E46659O16SubscriptionDataO10FriendshipVMa);
                  sub_24B2BF3E8(v98, _s14descr285E46659O16SubscriptionDataOMa);
                  sub_24B2BF3E8(v126, _s14descr285E46659O16SubscriptionDataO10FriendshipVMa);
                  v66 = v164;
                  if (v127)
                  {
                    goto LABEL_95;
                  }

LABEL_94:
                  sub_24B2BF3E8(v6, _s14descr285E46659O16SubscriptionDataOMa);
                  goto LABEL_71;
                }

                sub_24B2BF3E8(v98, _s14descr285E46659O16SubscriptionDataOMa);
                v110 = _s14descr285E46659O16SubscriptionDataO10FriendshipVMa;
                v111 = v159;
              }

              else
              {
                if (v109 != 2)
                {
                  if (v109 == 3)
                  {
                    sub_24B2BF3E8(v98, _s14descr285E46659O16SubscriptionDataOMa);
                    v107 = swift_getEnumCaseMultiPayload() == 3;
                  }

                  else
                  {
                    sub_24B2BF3E8(v98, _s14descr285E46659O16SubscriptionDataOMa);
                    v107 = swift_getEnumCaseMultiPayload() == 4;
                  }

                  v66 = v164;
                  if (v107)
                  {
                    goto LABEL_95;
                  }

LABEL_70:
                  sub_24AFF8258(v6, &unk_27EFC8650);
LABEL_71:
                  v89 = (v89 + 1) & v160;
                  v68 = v89 >> 6;
                  v106 = 1 << v89;
                  if ((v163[v89 >> 6] & (1 << v89)) == 0)
                  {
                    goto LABEL_52;
                  }

                  continue;
                }

                sub_24B2BF490(v6, v70, _s14descr285E46659O16SubscriptionDataOMa);
                if (swift_getEnumCaseMultiPayload() == 2)
                {
                  v112 = &v6[v108];
                  v113 = v150;
                  sub_24B2BF380(v112, v150, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
                  sub_24B2D1704();
                  sub_24B2BF448(&qword_27EFC7E90, MEMORY[0x277D08BF8]);
                  v114 = sub_24B2D52A4();
                  sub_24B2BF3E8(v98, _s14descr285E46659O16SubscriptionDataOMa);
                  if (v114)
                  {
                    v115 = *(v146 + 20);
                    v116 = *(v70 + v115);
                    v117 = v113;
                    v118 = *(v113 + v115);
                    sub_24B2BF3E8(v117, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
                    v69 = v116 == v118;
                    v66 = v164;
                    if (v69)
                    {
                      sub_24B2BF3E8(v70, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
LABEL_95:
                      sub_24B2BF3E8(v6, _s14descr285E46659O16SubscriptionDataOMa);
                      sub_24B2BF3E8(v161, _s14descr285E46659O16SubscriptionDataOMa);
                      v129 = v152[v68];
                      v152[v68] = v129 & ~v106;
                      if ((v129 & v106) == 0)
                      {
                        goto LABEL_53;
                      }

                      v130 = v156 - 1;
                      v96 = v148;
                      v67 = v153;
                      if (__OFSUB__(v156, 1))
                      {
                        goto LABEL_100;
                      }

                      --v156;
                      if (!v130)
                      {

                        a2 = MEMORY[0x277D84FA0];
                        goto LABEL_49;
                      }

LABEL_54:
                      if (++v67 == v157)
                      {
                        goto LABEL_48;
                      }

                      goto LABEL_55;
                    }
                  }

                  else
                  {
                    sub_24B2BF3E8(v113, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
                    v66 = v164;
                  }

                  sub_24B2BF3E8(v70, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
                  goto LABEL_94;
                }

                sub_24B2BF3E8(v98, _s14descr285E46659O16SubscriptionDataOMa);
                v110 = _s14descr285E46659O16SubscriptionDataO9LocationsVMa;
                v111 = v70;
              }

              break;
            }

            sub_24B2BF3E8(v111, v110);
            v66 = v164;
            goto LABEL_70;
          }
        }

        else
        {
          sub_24B2BF3E8(v77, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
        }

        sub_24B2BF3E8(v152, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
        goto LABEL_43;
      }

      sub_24B2BF3E8(v160, _s14descr285E46659O16SubscriptionDataOMa);
      v74 = _s14descr285E46659O16SubscriptionDataO9LocationsVMa;
      v75 = v152;
      goto LABEL_37;
    }

LABEL_49:
  }

  else
  {

    return MEMORY[0x277D84FA0];
  }

  return a2;
}

uint64_t sub_24B2A6758(uint64_t a1, uint64_t a2)
{
  v205 = *MEMORY[0x277D85DE8];
  v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFC8650);
  v4 = MEMORY[0x28223BE20](v196);
  v6 = &v157 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v186 = (&v157 - v7);
  v172 = _s14descr285E46659O16SubscriptionDataO9LocationsVMa(0);
  v8 = MEMORY[0x28223BE20](v172);
  v10 = &v157 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v163 = &v157 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v162 = &v157 - v14;
  MEMORY[0x28223BE20](v13);
  v158 = &v157 - v15;
  v16 = _s14descr285E46659O16SubscriptionDataO10DirectionsVMa(0);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v183 = &v157 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v161 = &v157 - v20;
  MEMORY[0x28223BE20](v19);
  v166 = &v157 - v21;
  v22 = _s14descr285E46659O16SubscriptionDataO10FriendshipVMa(0);
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v171 = &v157 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v159 = &v157 - v26;
  MEMORY[0x28223BE20](v25);
  v165 = &v157 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF898);
  v29 = MEMORY[0x28223BE20](v28 - 8);
  v31 = &v157 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v160 = &v157 - v32;
  v33 = _s14descr285E46659O16SubscriptionDataOMa(0);
  v34 = MEMORY[0x28223BE20](v33);
  v35 = MEMORY[0x28223BE20](v34);
  v192 = &v157 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v38 = MEMORY[0x28223BE20](v37);
  v194 = &v157 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v184 = &v157 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v197 = &v157 - v43;
  MEMORY[0x28223BE20](v42);
  v45 = MEMORY[0x28223BE20](&v157 - v44);
  v46 = MEMORY[0x28223BE20](v45);
  v48 = &v157 - v47;
  v49 = MEMORY[0x28223BE20](v46);
  v195 = &v157 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v167 = &v157 - v52;
  v53 = MEMORY[0x28223BE20](v51);
  v191 = &v157 - v58;
  v199 = a2;
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v169 = v54;
  v170 = v53;
  v189 = v56;
  v190 = v55;
  v173 = v31;
  v182 = v10;
  v157 = 0;
  v60 = a1 + 56;
  v59 = *(a1 + 56);
  v61 = -1 << *(a1 + 32);
  v181 = ~v61;
  if (-v61 < 64)
  {
    v62 = ~(-1 << -v61);
  }

  else
  {
    v62 = -1;
  }

  v198 = v62 & v59;
  v174 = (63 - v61) >> 6;
  v180 = (v57 + 56);
  v164 = v57;
  v179 = (v57 + 48);
  v193 = (v199 + 56);

  v64 = 0;
  v177 = a1 + 56;
  v178 = a1;
  v168 = v48;
  while (1)
  {
    v65 = v198;
    v66 = v64;
    if (v198)
    {
LABEL_15:
      v70 = a1;
      v71 = (v65 - 1) & v65;
      v72 = v160;
      sub_24B2BF490(*(v70 + 48) + *(v164 + 72) * (__clz(__rbit64(v65)) | (v66 << 6)), v160, _s14descr285E46659O16SubscriptionDataOMa);
      v73 = 0;
    }

    else
    {
      if (v174 <= (v64 + 1))
      {
        v67 = v64 + 1;
      }

      else
      {
        v67 = v174;
      }

      v68 = v67 - 1;
      v69 = v64;
      while (1)
      {
        v66 = v69 + 1;
        if (__OFADD__(v69, 1))
        {
          goto LABEL_119;
        }

        if (v66 >= v174)
        {
          break;
        }

        v65 = *(v60 + 8 * v66);
        ++v69;
        if (v65)
        {
          goto LABEL_15;
        }
      }

      v70 = a1;
      v71 = 0;
      v73 = 1;
      v66 = v68;
      v72 = v160;
    }

    v176 = *v180;
    v176(v72, v73, 1, v33);
    v200 = v70;
    v201 = v60;
    v202 = v181;
    v203 = v66;
    v188 = v71;
    v204 = v71;
    v175 = *v179;
    if (v175(v72, 1, v33) == 1)
    {
      sub_24AFF8258(v72, &qword_27EFCF898);
      goto LABEL_116;
    }

    v74 = v191;
    sub_24B2BF380(v72, v191, _s14descr285E46659O16SubscriptionDataOMa);
    sub_24B2D60E4();
    sub_24B2BF490(v74, v167, _s14descr285E46659O16SubscriptionDataOMa);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v187 = v66;
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        v76 = v166;
        sub_24B2BF380(v167, v166, _s14descr285E46659O16SubscriptionDataO10DirectionsVMa);
        MEMORY[0x24C23C8D0](3);
        sub_24B2D1704();
        sub_24B2BF448(&unk_27EFC7E58, MEMORY[0x277D08BF8]);
        sub_24B2D5254();
        v77 = _s14descr285E46659O16SubscriptionDataO10DirectionsVMa;
      }

      else
      {
        v76 = v165;
        sub_24B2BF380(v167, v165, _s14descr285E46659O16SubscriptionDataO10FriendshipVMa);
        MEMORY[0x24C23C8D0](2);
        sub_24B2D1704();
        sub_24B2BF448(&unk_27EFC7E58, MEMORY[0x277D08BF8]);
        sub_24B2D5254();
        v77 = _s14descr285E46659O16SubscriptionDataO10FriendshipVMa;
      }

      goto LABEL_26;
    }

    if (EnumCaseMultiPayload == 2)
    {
      v76 = v158;
      sub_24B2BF380(v167, v158, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
      MEMORY[0x24C23C8D0](4);
      sub_24B2D1704();
      sub_24B2BF448(&unk_27EFC7E58, MEMORY[0x277D08BF8]);
      sub_24B2D5254();
      sub_24B2D6104();
      v77 = _s14descr285E46659O16SubscriptionDataO9LocationsVMa;
LABEL_26:
      sub_24B2BF3E8(v76, v77);
      goto LABEL_27;
    }

    if (EnumCaseMultiPayload == 3)
    {
      MEMORY[0x24C23C8D0](0);
    }

    else
    {
      MEMORY[0x24C23C8D0](1);
    }

LABEL_27:
    v78 = sub_24B2D6124();
    v79 = -1 << *(v199 + 32);
    v64 = v78 & ~v79;
    v60 = v64 >> 6;
    v66 = 1 << v64;
    if (((1 << v64) & v193[v64 >> 6]) != 0)
    {
      break;
    }

LABEL_6:
    sub_24B2BF3E8(v191, _s14descr285E46659O16SubscriptionDataOMa);
    v64 = v187;
    v198 = v188;
    v60 = v177;
    a1 = v178;
  }

  v185 = ~v79;
  v198 = *(v164 + 72);
  while (1)
  {
    v81 = v195;
    sub_24B2BF490(*(v199 + 48) + v198 * v64, v195, _s14descr285E46659O16SubscriptionDataOMa);
    v82 = *(v196 + 48);
    v83 = v81;
    v84 = v186;
    sub_24B2BF490(v83, v186, _s14descr285E46659O16SubscriptionDataOMa);
    v85 = v84;
    sub_24B2BF490(v191, v84 + v82, _s14descr285E46659O16SubscriptionDataOMa);
    v86 = swift_getEnumCaseMultiPayload();
    if (v86 > 1)
    {
      break;
    }

    if (!v86)
    {
      sub_24B2BF490(v84, v48, _s14descr285E46659O16SubscriptionDataOMa);
      if (!swift_getEnumCaseMultiPayload())
      {
        v101 = v84 + v82;
        v102 = v159;
        sub_24B2BF380(v101, v159, _s14descr285E46659O16SubscriptionDataO10FriendshipVMa);
        sub_24B2D1704();
        sub_24B2BF448(&qword_27EFC7E90, MEMORY[0x277D08BF8]);
        v103 = sub_24B2D52A4();
        sub_24B2BF3E8(v102, _s14descr285E46659O16SubscriptionDataO10FriendshipVMa);
        sub_24B2BF3E8(v195, _s14descr285E46659O16SubscriptionDataOMa);
        sub_24B2BF3E8(v48, _s14descr285E46659O16SubscriptionDataO10FriendshipVMa);
        if (v103)
        {
          goto LABEL_58;
        }

LABEL_51:
        v104 = v84;
LABEL_54:
        sub_24B2BF3E8(v104, _s14descr285E46659O16SubscriptionDataOMa);
        goto LABEL_32;
      }

      sub_24B2BF3E8(v195, _s14descr285E46659O16SubscriptionDataOMa);
      v87 = _s14descr285E46659O16SubscriptionDataO10FriendshipVMa;
      v88 = v48;
      goto LABEL_48;
    }

    v98 = v169;
    sub_24B2BF490(v84, v169, _s14descr285E46659O16SubscriptionDataOMa);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v99 = v161;
      sub_24B2BF380(v84 + v82, v161, _s14descr285E46659O16SubscriptionDataO10DirectionsVMa);
      sub_24B2D1704();
      sub_24B2BF448(&qword_27EFC7E90, MEMORY[0x277D08BF8]);
      v100 = sub_24B2D52A4();
      sub_24B2BF3E8(v99, _s14descr285E46659O16SubscriptionDataO10DirectionsVMa);
      sub_24B2BF3E8(v195, _s14descr285E46659O16SubscriptionDataOMa);
      sub_24B2BF3E8(v98, _s14descr285E46659O16SubscriptionDataO10DirectionsVMa);
      v48 = v168;
      if (v100)
      {
        goto LABEL_58;
      }

      goto LABEL_51;
    }

    sub_24B2BF3E8(v195, _s14descr285E46659O16SubscriptionDataOMa);
    sub_24B2BF3E8(v98, _s14descr285E46659O16SubscriptionDataO10DirectionsVMa);
    v48 = v168;
LABEL_31:
    sub_24AFF8258(v84, &unk_27EFC8650);
LABEL_32:
    v64 = (v64 + 1) & v185;
    v60 = v64 >> 6;
    v66 = 1 << v64;
    if ((v193[v64 >> 6] & (1 << v64)) == 0)
    {
      goto LABEL_6;
    }
  }

  if (v86 != 2)
  {
    if (v86 == 3)
    {
      sub_24B2BF3E8(v195, _s14descr285E46659O16SubscriptionDataOMa);
      v80 = swift_getEnumCaseMultiPayload() == 3;
    }

    else
    {
      sub_24B2BF3E8(v195, _s14descr285E46659O16SubscriptionDataOMa);
      v80 = swift_getEnumCaseMultiPayload() == 4;
    }

    if (v80)
    {
      goto LABEL_58;
    }

    goto LABEL_31;
  }

  v89 = v84;
  v90 = v170;
  sub_24B2BF490(v89, v170, _s14descr285E46659O16SubscriptionDataOMa);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_24B2BF3E8(v195, _s14descr285E46659O16SubscriptionDataOMa);
    v87 = _s14descr285E46659O16SubscriptionDataO9LocationsVMa;
    v88 = v90;
LABEL_48:
    sub_24B2BF3E8(v88, v87);
    v84 = v85;
    goto LABEL_31;
  }

  v91 = v85 + v82;
  v92 = v162;
  sub_24B2BF380(v91, v162, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
  sub_24B2D1704();
  sub_24B2BF448(&qword_27EFC7E90, MEMORY[0x277D08BF8]);
  v93 = sub_24B2D52A4();
  sub_24B2BF3E8(v195, _s14descr285E46659O16SubscriptionDataOMa);
  if ((v93 & 1) == 0)
  {
    sub_24B2BF3E8(v92, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
    goto LABEL_53;
  }

  v94 = *(v172 + 20);
  v95 = *(v90 + v94);
  v96 = v92;
  v97 = *(v92 + v94);
  sub_24B2BF3E8(v96, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
  if (v95 != v97)
  {
LABEL_53:
    sub_24B2BF3E8(v90, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
    v104 = v186;
    goto LABEL_54;
  }

  sub_24B2BF3E8(v90, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
  v84 = v186;
LABEL_58:
  sub_24B2BF3E8(v84, _s14descr285E46659O16SubscriptionDataOMa);
  v105 = sub_24B2BF3E8(v191, _s14descr285E46659O16SubscriptionDataOMa);
  v106 = *(v199 + 32);
  v169 = ((1 << v106) + 63) >> 6;
  v63 = 8 * v169;
  if ((v106 & 0x3Fu) > 0xD)
  {
    goto LABEL_120;
  }

  while (2)
  {
    v170 = &v157;
    MEMORY[0x28223BE20](v105);
    v108 = &v157 - ((v107 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v108, v193, v107);
    v109 = *&v108[8 * v60] & ~v66;
    v186 = v108;
    *&v108[8 * v60] = v109;
    v110 = *(v199 + 16) - 1;
    v111 = v178;
    v64 = v173;
    v191 = v33;
    v112 = v177;
    v113 = v174;
    v66 = v187;
    v60 = v188;
LABEL_60:
    v185 = v110;
    while (2)
    {
      if (v60)
      {
        v114 = v66;
LABEL_72:
        v117 = __clz(__rbit64(v60));
        v118 = (v60 - 1) & v60;
        sub_24B2BF490(*(v111 + 48) + (v117 | (v114 << 6)) * v198, v64, _s14descr285E46659O16SubscriptionDataOMa);
        v119 = 0;
LABEL_73:
        v176(v64, v119, 1, v33);
        v200 = v111;
        v201 = v112;
        v202 = v181;
        v203 = v66;
        v204 = v118;
        if (v175(v64, 1, v33) == 1)
        {
          sub_24AFF8258(v64, &qword_27EFCF898);
          v199 = sub_24B2A0C50(v186, v169, v185, v199);
          goto LABEL_116;
        }

        v120 = v64;
        v121 = v197;
        sub_24B2BF380(v120, v197, _s14descr285E46659O16SubscriptionDataOMa);
        sub_24B2D60E4();
        sub_24B2BF490(v121, v184, _s14descr285E46659O16SubscriptionDataOMa);
        v122 = swift_getEnumCaseMultiPayload();
        v187 = v66;
        v188 = v118;
        if (v122 <= 1)
        {
          v123 = v193;
          if (v122)
          {
            v124 = v166;
            sub_24B2BF380(v184, v166, _s14descr285E46659O16SubscriptionDataO10DirectionsVMa);
            MEMORY[0x24C23C8D0](3);
            sub_24B2D1704();
            sub_24B2BF448(&unk_27EFC7E58, MEMORY[0x277D08BF8]);
            sub_24B2D5254();
            v125 = _s14descr285E46659O16SubscriptionDataO10DirectionsVMa;
          }

          else
          {
            v124 = v165;
            sub_24B2BF380(v184, v165, _s14descr285E46659O16SubscriptionDataO10FriendshipVMa);
            MEMORY[0x24C23C8D0](2);
            sub_24B2D1704();
            sub_24B2BF448(&unk_27EFC7E58, MEMORY[0x277D08BF8]);
            sub_24B2D5254();
            v125 = _s14descr285E46659O16SubscriptionDataO10FriendshipVMa;
          }
        }

        else
        {
          v123 = v193;
          if (v122 != 2)
          {
            if (v122 == 3)
            {
              MEMORY[0x24C23C8D0](0);
            }

            else
            {
              MEMORY[0x24C23C8D0](1);
            }

LABEL_84:
            v126 = v194;
            v127 = sub_24B2D6124();
            v128 = -1 << *(v199 + 32);
            v129 = v127 & ~v128;
            v130 = v129 >> 6;
            v131 = 1 << v129;
            if (((1 << v129) & v123[v129 >> 6]) == 0)
            {
LABEL_61:
              sub_24B2BF3E8(v197, _s14descr285E46659O16SubscriptionDataOMa);
              v111 = v178;
              v64 = v173;
              v112 = v177;
              v113 = v174;
              v66 = v187;
              v60 = v188;
              continue;
            }

            v195 = ~v128;
LABEL_89:
            sub_24B2BF490(*(v199 + 48) + v129 * v198, v126, _s14descr285E46659O16SubscriptionDataOMa);
            v132 = *(v196 + 48);
            sub_24B2BF490(v126, v6, _s14descr285E46659O16SubscriptionDataOMa);
            sub_24B2BF490(v197, &v6[v132], _s14descr285E46659O16SubscriptionDataOMa);
            v133 = swift_getEnumCaseMultiPayload();
            if (v133 <= 1)
            {
              v134 = v192;
              if (v133)
              {
                sub_24B2BF490(v6, v192, _s14descr285E46659O16SubscriptionDataOMa);
                if (swift_getEnumCaseMultiPayload() != 1)
                {
                  sub_24B2BF3E8(v126, _s14descr285E46659O16SubscriptionDataOMa);
                  sub_24B2BF3E8(v134, _s14descr285E46659O16SubscriptionDataO10DirectionsVMa);
                  goto LABEL_87;
                }

                v142 = v183;
                sub_24B2BF380(&v6[v132], v183, _s14descr285E46659O16SubscriptionDataO10DirectionsVMa);
                sub_24B2D1704();
                sub_24B2BF448(&qword_27EFC7E90, MEMORY[0x277D08BF8]);
                v143 = sub_24B2D52A4();
                v144 = v142;
                v33 = v191;
                sub_24B2BF3E8(v144, _s14descr285E46659O16SubscriptionDataO10DirectionsVMa);
                sub_24B2BF3E8(v126, _s14descr285E46659O16SubscriptionDataOMa);
                sub_24B2BF3E8(v134, _s14descr285E46659O16SubscriptionDataO10DirectionsVMa);
                if (v143)
                {
                  goto LABEL_111;
                }
              }

              else
              {
                v135 = v189;
                sub_24B2BF490(v6, v189, _s14descr285E46659O16SubscriptionDataOMa);
                if (swift_getEnumCaseMultiPayload())
                {
                  v126 = v194;
                  sub_24B2BF3E8(v194, _s14descr285E46659O16SubscriptionDataOMa);
                  sub_24B2BF3E8(v135, _s14descr285E46659O16SubscriptionDataO10FriendshipVMa);
                  v123 = v193;
                  goto LABEL_87;
                }

                v147 = v171;
                sub_24B2BF380(&v6[v132], v171, _s14descr285E46659O16SubscriptionDataO10FriendshipVMa);
                sub_24B2D1704();
                sub_24B2BF448(&qword_27EFC7E90, MEMORY[0x277D08BF8]);
                v148 = sub_24B2D52A4();
                v149 = v147;
                v33 = v191;
                sub_24B2BF3E8(v149, _s14descr285E46659O16SubscriptionDataO10FriendshipVMa);
                v126 = v194;
                sub_24B2BF3E8(v194, _s14descr285E46659O16SubscriptionDataOMa);
                sub_24B2BF3E8(v135, _s14descr285E46659O16SubscriptionDataO10FriendshipVMa);
                v123 = v193;
                if (v148)
                {
                  goto LABEL_111;
                }
              }

              sub_24B2BF3E8(v6, _s14descr285E46659O16SubscriptionDataOMa);
            }

            else if (v133 == 2)
            {
              v136 = v190;
              sub_24B2BF490(v6, v190, _s14descr285E46659O16SubscriptionDataOMa);
              if (swift_getEnumCaseMultiPayload() != 2)
              {
                v145 = v194;
                sub_24B2BF3E8(v194, _s14descr285E46659O16SubscriptionDataOMa);
                v146 = v136;
                v126 = v145;
                sub_24B2BF3E8(v146, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
                goto LABEL_87;
              }

              v137 = v182;
              sub_24B2BF380(&v6[v132], v182, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
              sub_24B2D1704();
              sub_24B2BF448(&qword_27EFC7E90, MEMORY[0x277D08BF8]);
              v138 = sub_24B2D52A4();
              sub_24B2BF3E8(v194, _s14descr285E46659O16SubscriptionDataOMa);
              if (v138)
              {
                v139 = *(v172 + 20);
                v140 = *(v136 + v139);
                v141 = *(v137 + v139);
                sub_24B2BF3E8(v137, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
                if (v140 == v141)
                {
                  sub_24B2BF3E8(v136, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
                  v33 = v191;
LABEL_111:
                  sub_24B2BF3E8(v6, _s14descr285E46659O16SubscriptionDataOMa);
                  sub_24B2BF3E8(v197, _s14descr285E46659O16SubscriptionDataOMa);
                  v150 = v186[v130];
                  v186[v130] = v150 & ~v131;
                  v111 = v178;
                  v64 = v173;
                  v112 = v177;
                  v113 = v174;
                  v66 = v187;
                  v60 = v188;
                  if ((v150 & v131) != 0)
                  {
                    v110 = v185 - 1;
                    if (__OFSUB__(v185, 1))
                    {
                      __break(1u);
                    }

                    if (v185 == 1)
                    {

                      v199 = MEMORY[0x277D84FA0];
                      goto LABEL_116;
                    }

                    goto LABEL_60;
                  }

                  continue;
                }
              }

              else
              {
                sub_24B2BF3E8(v137, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
              }

              sub_24B2BF3E8(v136, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
              sub_24B2BF3E8(v6, _s14descr285E46659O16SubscriptionDataOMa);
              v33 = v191;
              v126 = v194;
            }

            else
            {
              if (v133 == 3)
              {
                sub_24B2BF3E8(v126, _s14descr285E46659O16SubscriptionDataOMa);
                if (swift_getEnumCaseMultiPayload() == 3)
                {
                  goto LABEL_111;
                }
              }

              else
              {
                sub_24B2BF3E8(v126, _s14descr285E46659O16SubscriptionDataOMa);
                if (swift_getEnumCaseMultiPayload() == 4)
                {
                  goto LABEL_111;
                }
              }

LABEL_87:
              sub_24AFF8258(v6, &unk_27EFC8650);
            }

            v129 = (v129 + 1) & v195;
            v130 = v129 >> 6;
            v131 = 1 << v129;
            if ((v123[v129 >> 6] & (1 << v129)) == 0)
            {
              goto LABEL_61;
            }

            goto LABEL_89;
          }

          v124 = v163;
          sub_24B2BF380(v184, v163, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
          MEMORY[0x24C23C8D0](4);
          sub_24B2D1704();
          sub_24B2BF448(&unk_27EFC7E58, MEMORY[0x277D08BF8]);
          sub_24B2D5254();
          sub_24B2D6104();
          v125 = _s14descr285E46659O16SubscriptionDataO9LocationsVMa;
        }

        sub_24B2BF3E8(v124, v125);
        goto LABEL_84;
      }

      break;
    }

    if (v113 <= v66 + 1)
    {
      v115 = v66 + 1;
    }

    else
    {
      v115 = v113;
    }

    v116 = v115 - 1;
    while (1)
    {
      v114 = v66 + 1;
      if (__OFADD__(v66, 1))
      {
        break;
      }

      if (v114 >= v113)
      {
        v118 = 0;
        v119 = 1;
        v66 = v116;
        goto LABEL_73;
      }

      v60 = *(v112 + 8 * v114);
      ++v66;
      if (v60)
      {
        v66 = v114;
        goto LABEL_72;
      }
    }

    __break(1u);
LABEL_119:
    __break(1u);
LABEL_120:
    v152 = v63;

    v153 = v152;
    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v154 = swift_slowAlloc();
  memcpy(v154, v193, v153);
  v155 = v157;
  v156 = sub_24B2B2A18(v154, v169, v199, v64, &v200);

  if (v155)
  {

    result = MEMORY[0x24C23D530](v154, -1, -1);
    __break(1u);
  }

  else
  {

    MEMORY[0x24C23D530](v154, -1, -1);
    v199 = v156;
LABEL_116:
    sub_24B0363BC();
    return v199;
  }

  return result;
}

uint64_t sub_24B2A8558(uint64_t a1, uint64_t a2)
{

  return sub_24B2B18E0(a1, a2, &qword_27EFCC848, &unk_24B2EC0E0);
}

uint64_t sub_24B2A85C0(unint64_t a1, uint64_t a2)
{
  v266 = *MEMORY[0x277D85DE8];
  v243 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC800);
  MEMORY[0x28223BE20](v243);
  v246 = &v204 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v215 = &v204 - v6;
  v257 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC808);
  MEMORY[0x28223BE20](v257);
  v260 = &v204 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v204 - v9;
  v247 = sub_24B2D14C4();
  v11 = *(v247 - 8);
  MEMORY[0x28223BE20](v247);
  v233 = &v204 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v254 = sub_24B2D15F4();
  v259 = *(v254 - 8);
  MEMORY[0x28223BE20](v254);
  v251 = &v204 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v249 = &v204 - v15;
  MEMORY[0x28223BE20](v16);
  v222 = &v204 - v17;
  MEMORY[0x28223BE20](v18);
  v219 = &v204 - v19;
  MEMORY[0x28223BE20](v20);
  v218 = &v204 - v21;
  MEMORY[0x28223BE20](v22);
  v208 = &v204 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC810);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v204 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v213 = &v204 - v28;
  MEMORY[0x28223BE20](v29);
  v221 = &v204 - v30;
  MEMORY[0x28223BE20](v31);
  v33 = &v204 - v32;
  MEMORY[0x28223BE20](v34);
  v205 = &v204 - v35;
  MEMORY[0x28223BE20](v36);
  v207 = &v204 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC84B0);
  MEMORY[0x28223BE20](v38 - 8);
  v40 = &v204 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v209 = &v204 - v42;
  v43 = type metadata accessor for ContactsProvider.Subscription(0);
  MEMORY[0x28223BE20](v43);
  v250 = (&v204 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v45);
  v47 = &v204 - v46;
  MEMORY[0x28223BE20](v48);
  v252 = &v204 - v49;
  MEMORY[0x28223BE20](v50);
  v220 = &v204 - v51;
  MEMORY[0x28223BE20](v52);
  v258 = &v204 - v53;
  MEMORY[0x28223BE20](v54);
  v217 = (&v204 - v55);
  MEMORY[0x28223BE20](v56);
  v216 = &v204 - v57;
  MEMORY[0x28223BE20](v58);
  v255 = &v204 - v59;
  MEMORY[0x28223BE20](v60);
  v206 = &v204 - v61;
  MEMORY[0x28223BE20](v62);
  v241 = &v204 - v64;
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v214 = v10;
  v223 = v40;
  v234 = v26;
  v204 = 0;
  v66 = a1 + 56;
  v65 = *(a1 + 56);
  v67 = -1 << *(a1 + 32);
  v231 = ~v67;
  if (-v67 < 64)
  {
    v68 = ~(-1 << -v67);
  }

  else
  {
    v68 = -1;
  }

  v69 = v68 & v65;
  v224 = (63 - v67) >> 6;
  v230 = (v63 + 56);
  v211 = v63;
  v229 = (v63 + 48);
  v245 = (v259 + 32);
  v244 = (v11 + 48);
  v232 = (v11 + 32);
  v237 = (v11 + 8);
  v253 = (v259 + 8);
  v259 = (a2 + 56);

  v71 = 0;
  v256 = a2;
  v228 = a1;
  v242 = v43;
  v248 = v47;
  v72 = v252;
  v227 = a1 + 56;
  v212 = v33;
  v73 = a1;
  while (1)
  {
    v74 = v69;
    v75 = v71;
    v76 = v209;
    if (v69)
    {
LABEL_15:
      v80 = (v74 - 1) & v74;
      sub_24B2BF490(*(v73 + 48) + *(v211 + 72) * (__clz(__rbit64(v74)) | (v75 << 6)), v209, type metadata accessor for ContactsProvider.Subscription);
      v81 = 0;
      v78 = v75;
    }

    else
    {
      v77 = v224 <= v71 + 1 ? v71 + 1 : v224;
      v78 = v77 - 1;
      v79 = v71;
      while (1)
      {
        v75 = v79 + 1;
        if (__OFADD__(v79, 1))
        {
          goto LABEL_115;
        }

        if (v75 >= v224)
        {
          break;
        }

        v74 = *(v66 + 8 * v75);
        ++v79;
        if (v74)
        {
          goto LABEL_15;
        }
      }

      v80 = 0;
      v81 = 1;
    }

    v226 = *v230;
    v226(v76, v81, 1, v43);
    v261 = v73;
    v262 = v66;
    v263 = v231;
    v264 = v78;
    v265 = v80;
    v225 = *v229;
    if (v225(v76, 1, v43) == 1)
    {
      sub_24AFF8258(v76, &qword_27EFC84B0);
      sub_24B0363BC();
      return v256;
    }

    v82 = v241;
    sub_24B2BF380(v76, v241, type metadata accessor for ContactsProvider.Subscription);
    sub_24B2D60E4();
    v83 = v206;
    sub_24B2BF490(v82, v206, type metadata accessor for ContactsProvider.Subscription);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v240 = v78;
    v239 = v80;
    if (EnumCaseMultiPayload == 1)
    {
      MEMORY[0x24C23C8D0](1);
      sub_24B2D5404();
      v78 = v256;
    }

    else
    {
      v85 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC820) + 48);
      v86 = v207;
      sub_24B0391CC(v83, v207, &qword_27EFCC810);
      (*v245)(v208, v83 + v85, v254);
      MEMORY[0x24C23C8D0](0);
      v87 = v205;
      sub_24B008890(v86, v205, &qword_27EFCC810);
      v88 = v247;
      if ((*v244)(v87, 1, v247) == 1)
      {
        sub_24B2D6104();
      }

      else
      {
        v89 = v233;
        (*v232)(v233, v87, v88);
        sub_24B2D6104();
        sub_24B2BF448(&qword_27EFCC830, MEMORY[0x277D08B38]);
        sub_24B2D5254();
        (*v237)(v89, v88);
      }

      sub_24B2BF448(&qword_27EFCC740, MEMORY[0x277D08B70]);
      v90 = v208;
      v91 = v254;
      sub_24B2D5254();
      (*v253)(v90, v91);
      sub_24AFF8258(v207, &qword_27EFCC810);
      v78 = v256;
    }

    v92 = sub_24B2D6124();
    v93 = -1 << *(v78 + 32);
    v69 = v92 & ~v93;
    v94 = v69 >> 6;
    v47 = 1 << v69;
    v95 = v214;
    if (((1 << v69) & *&v259[8 * (v69 >> 6)]) != 0)
    {
      break;
    }

LABEL_6:
    sub_24B2BF3E8(v241, type metadata accessor for ContactsProvider.Subscription);
    v71 = v240;
    v69 = v239;
    v73 = v228;
    v66 = v227;
  }

  v236 = ~v93;
  v76 = *(v211 + 72);
  v238 = v76;
  while (1)
  {
    v235 = v94;
    v96 = v78;
    v97 = *(v78 + 48) + v76 * v69;
    v98 = v255;
    sub_24B2BF490(v97, v255, type metadata accessor for ContactsProvider.Subscription);
    v99 = (v95 + *(v257 + 48));
    sub_24B2BF490(v98, v95, type metadata accessor for ContactsProvider.Subscription);
    sub_24B2BF490(v241, v99, type metadata accessor for ContactsProvider.Subscription);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v107 = v216;
      sub_24B2BF490(v95, v216, type metadata accessor for ContactsProvider.Subscription);
      v108 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC820) + 48);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_24B2BF3E8(v255, type metadata accessor for ContactsProvider.Subscription);
        (*v253)((v107 + v108), v254);
        sub_24AFF8258(v107, &qword_27EFCC810);
        v78 = v96;
LABEL_26:
        sub_24AFF8258(v95, &qword_27EFCC808);
        goto LABEL_27;
      }

      v109 = v107;
      v110 = *v245;
      v111 = v254;
      (*v245)(v218, v107 + v108, v254);
      v110(v219, v99 + v108, v111);
      v112 = v247;
      v113 = *(v243 + 48);
      v114 = v215;
      sub_24B0391CC(v109, v215, &qword_27EFCC810);
      sub_24B0391CC(v99, v114 + v113, &qword_27EFCC810);
      v115 = *v244;
      if ((*v244)(v114, 1, v112) == 1)
      {
        if (v115(v114 + v113, 1, v112) == 1)
        {
          sub_24AFF8258(v114, &qword_27EFCC810);
          v78 = v256;
          v76 = v238;
          goto LABEL_47;
        }

        v118 = *v253;
        v119 = v254;
        (*v253)(v219, v254);
        v118(v218, v119);
        sub_24B2BF3E8(v255, type metadata accessor for ContactsProvider.Subscription);
      }

      else
      {
        sub_24B008890(v114, v212, &qword_27EFCC810);
        if (v115(v114 + v113, 1, v112) != 1)
        {
          v120 = v233;
          (*v232)(v233, v114 + v113, v112);
          sub_24B2BF448(&qword_27EFCC828, MEMORY[0x277D08B38]);
          v121 = v212;
          v210 = sub_24B2D52A4();
          v122 = *v237;
          v123 = v120;
          v43 = v242;
          (*v237)(v123, v112);
          v122(v121, v112);
          sub_24AFF8258(v114, &qword_27EFCC810);
          v78 = v256;
          v76 = v238;
          if (v210)
          {
LABEL_47:
            v124 = v218;
            v125 = v219;
            v126 = MEMORY[0x24C237DB0](v218, v219);
            v127 = *v253;
            v128 = v125;
            v129 = v254;
            (*v253)(v128, v254);
            v127(v124, v129);
            sub_24B2BF3E8(v255, type metadata accessor for ContactsProvider.Subscription);
            v95 = v214;
            sub_24B2BF3E8(v214, type metadata accessor for ContactsProvider.Subscription);
            v72 = v252;
            if (v126)
            {
              goto LABEL_54;
            }

            goto LABEL_27;
          }

          v130 = *v253;
          v131 = v254;
          (*v253)(v219, v254);
          v130(v218, v131);
          sub_24B2BF3E8(v255, type metadata accessor for ContactsProvider.Subscription);
LABEL_45:
          v72 = v252;
          v95 = v214;
          sub_24B2BF3E8(v214, type metadata accessor for ContactsProvider.Subscription);
          goto LABEL_27;
        }

        v116 = *v253;
        v117 = v254;
        (*v253)(v219, v254);
        v116(v218, v117);
        sub_24B2BF3E8(v255, type metadata accessor for ContactsProvider.Subscription);
        (*v237)(v212, v112);
      }

      v78 = v256;
      v76 = v238;
      sub_24AFF8258(v215, &qword_27EFCC800);
      goto LABEL_45;
    }

    v100 = v217;
    sub_24B2BF490(v95, v217, type metadata accessor for ContactsProvider.Subscription);
    v101 = *v100;
    v102 = v100[1];
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_24B2BF3E8(v255, type metadata accessor for ContactsProvider.Subscription);

      v78 = v256;
      goto LABEL_26;
    }

    v103 = *v99;
    v104 = v99[1];
    v105 = v101 == v103 && v102 == v104;
    if (v105)
    {
      break;
    }

    v106 = sub_24B2D6004();

    sub_24B2BF3E8(v255, type metadata accessor for ContactsProvider.Subscription);
    if (v106)
    {
      goto LABEL_53;
    }

    sub_24B2BF3E8(v95, type metadata accessor for ContactsProvider.Subscription);
    v78 = v256;
LABEL_27:
    v69 = (v69 + 1) & v236;
    v94 = v69 >> 6;
    v47 = 1 << v69;
    if ((*&v259[8 * (v69 >> 6)] & (1 << v69)) == 0)
    {
      goto LABEL_6;
    }
  }

  sub_24B2BF3E8(v255, type metadata accessor for ContactsProvider.Subscription);
LABEL_53:
  sub_24B2BF3E8(v95, type metadata accessor for ContactsProvider.Subscription);
  v78 = v256;
LABEL_54:
  v133 = sub_24B2BF3E8(v241, type metadata accessor for ContactsProvider.Subscription);
  v134 = *(v78 + 32);
  v73 = ((1 << v134) + 63) >> 6;
  v70 = 8 * v73;
  if ((v134 & 0x3Fu) > 0xD)
  {
    goto LABEL_116;
  }

  while (2)
  {
    v218 = v73;
    v219 = &v204;
    MEMORY[0x28223BE20](v133);
    v136 = &v204 - ((v135 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v136, v259, v135);
    v137 = *&v136[8 * v235] & ~v47;
    v236 = v136;
    *&v136[8 * v235] = v137;
    v138 = *(v78 + 16) - 1;
    v47 = &unk_24B2F5690;
    v139 = v228;
    v140 = v223;
    v73 = v227;
    v141 = v224;
    v78 = v240;
    v69 = v239;
LABEL_56:
    v235 = v138;
    while (2)
    {
      if (v69)
      {
        v142 = v78;
        v143 = v247;
LABEL_68:
        v146 = __clz(__rbit64(v69));
        v147 = (v69 - 1) & v69;
        sub_24B2BF490(*(v139 + 48) + (v146 | (v142 << 6)) * v76, v140, type metadata accessor for ContactsProvider.Subscription);
        v148 = 0;
LABEL_69:
        v226(v140, v148, 1, v43);
        v261 = v139;
        v262 = v73;
        v263 = v231;
        v264 = v78;
        v265 = v147;
        if (v225(v140, 1, v43) == 1)
        {
          sub_24AFF8258(v140, &qword_27EFC84B0);
          v132 = sub_24B2A1260(v236, v218, v235, v256);
          goto LABEL_111;
        }

        v149 = v258;
        sub_24B2BF380(v140, v258, type metadata accessor for ContactsProvider.Subscription);
        sub_24B2D60E4();
        v150 = v220;
        sub_24B2BF490(v149, v220, type metadata accessor for ContactsProvider.Subscription);
        v151 = swift_getEnumCaseMultiPayload();
        v240 = v78;
        v239 = v147;
        if (v151 == 1)
        {
          MEMORY[0x24C23C8D0](1);
          sub_24B2D5404();
          v152 = v256;
        }

        else
        {
          v153 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC820) + 48);
          v154 = v221;
          sub_24B0391CC(v150, v221, &qword_27EFCC810);
          (*v245)(v222, v150 + v153, v254);
          MEMORY[0x24C23C8D0](0);
          v155 = v213;
          sub_24B008890(v154, v213, &qword_27EFCC810);
          if ((*v244)(v155, 1, v143) == 1)
          {
            sub_24B2D6104();
          }

          else
          {
            v156 = v233;
            (*v232)(v233, v155, v143);
            sub_24B2D6104();
            sub_24B2BF448(&qword_27EFCC830, MEMORY[0x277D08B38]);
            sub_24B2D5254();
            (*v237)(v156, v143);
          }

          v72 = v252;
          sub_24B2BF448(&qword_27EFCC740, MEMORY[0x277D08B70]);
          v157 = v222;
          v158 = v254;
          sub_24B2D5254();
          (*v253)(v157, v158);
          sub_24AFF8258(v221, &qword_27EFCC810);
          v152 = v256;
        }

        v159 = sub_24B2D6124();
        v160 = -1 << *(v152 + 32);
        v161 = v159 & ~v160;
        v162 = v161 >> 6;
        v163 = 1 << v161;
        if (((1 << v161) & *&v259[8 * (v161 >> 6)]) == 0)
        {
LABEL_57:
          sub_24B2BF3E8(v258, type metadata accessor for ContactsProvider.Subscription);
          v139 = v228;
          v140 = v223;
          v73 = v227;
          v141 = v224;
          v78 = v240;
          v69 = v239;
          v47 = &unk_24B2F5690;
          continue;
        }

        v255 = ~v160;
LABEL_81:
        sub_24B2BF490(*(v152 + 48) + v161 * v76, v72, type metadata accessor for ContactsProvider.Subscription);
        v166 = (v260 + *(v257 + 48));
        sub_24B2BF490(v72, v260, type metadata accessor for ContactsProvider.Subscription);
        sub_24B2BF490(v258, v166, type metadata accessor for ContactsProvider.Subscription);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v167 = v250;
          sub_24B2BF490(v260, v250, type metadata accessor for ContactsProvider.Subscription);
          v168 = *v167;
          v169 = v167[1];
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v170 = *v166;
            v171 = v166[1];
            if (v168 == v170 && v169 == v171)
            {

              sub_24B2BF3E8(v72, type metadata accessor for ContactsProvider.Subscription);
LABEL_105:
              sub_24B2BF3E8(v260, type metadata accessor for ContactsProvider.Subscription);
LABEL_106:
              sub_24B2BF3E8(v258, type metadata accessor for ContactsProvider.Subscription);
              v198 = *(v236 + 8 * v162);
              *(v236 + 8 * v162) = v198 & ~v163;
              v105 = (v198 & v163) == 0;
              v139 = v228;
              v140 = v223;
              v73 = v227;
              v141 = v224;
              v78 = v240;
              v69 = v239;
              v47 = &unk_24B2F5690;
              if (!v105)
              {
                v138 = v235 - 1;
                if (__OFSUB__(v235, 1))
                {
                  __break(1u);
                }

                if (v235 == 1)
                {

                  v132 = MEMORY[0x277D84FA0];
                  goto LABEL_111;
                }

                goto LABEL_56;
              }

              continue;
            }

            v173 = sub_24B2D6004();

            sub_24B2BF3E8(v72, type metadata accessor for ContactsProvider.Subscription);
            if (v173)
            {
              goto LABEL_105;
            }

            sub_24B2BF3E8(v260, type metadata accessor for ContactsProvider.Subscription);
            v152 = v256;
            goto LABEL_80;
          }

          sub_24B2BF3E8(v72, type metadata accessor for ContactsProvider.Subscription);

          v152 = v256;
LABEL_79:
          sub_24AFF8258(v260, &qword_27EFCC808);
LABEL_80:
          v161 = (v161 + 1) & v255;
          v162 = v161 >> 6;
          v163 = 1 << v161;
          if ((*&v259[8 * (v161 >> 6)] & (1 << v161)) == 0)
          {
            goto LABEL_57;
          }

          goto LABEL_81;
        }

        v174 = v248;
        sub_24B2BF490(v260, v248, type metadata accessor for ContactsProvider.Subscription);
        v175 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC820) + 48);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v164 = v252;
          sub_24B2BF3E8(v252, type metadata accessor for ContactsProvider.Subscription);
          (*v253)((v174 + v175), v254);
          v165 = v174;
          v72 = v164;
          sub_24AFF8258(v165, &qword_27EFCC810);
          goto LABEL_79;
        }

        v176 = *v245;
        v177 = v254;
        (*v245)(v249, v174 + v175, v254);
        v176(v251, v166 + v175, v177);
        v178 = *(v243 + 48);
        v179 = v246;
        sub_24B0391CC(v174, v246, &qword_27EFCC810);
        sub_24B0391CC(v166, v179 + v178, &qword_27EFCC810);
        v180 = *v244;
        v181 = v247;
        if ((*v244)(v179, 1, v247) == 1)
        {
          v182 = v180(v179 + v178, 1, v181);
          v72 = v252;
          if (v182 == 1)
          {
            sub_24AFF8258(v179, &qword_27EFCC810);
            v152 = v256;
            v183 = v72;
            v184 = v251;
            goto LABEL_100;
          }

          v188 = *v253;
          v189 = v254;
          (*v253)(v251, v254);
          v188(v249, v189);
          sub_24B2BF3E8(v72, type metadata accessor for ContactsProvider.Subscription);
LABEL_97:
          v152 = v256;
          sub_24AFF8258(v246, &qword_27EFCC800);
          v43 = v242;
        }

        else
        {
          v185 = v234;
          sub_24B008890(v179, v234, &qword_27EFCC810);
          if (v180(v179 + v178, 1, v181) == 1)
          {
            v186 = *v253;
            v187 = v254;
            (*v253)(v251, v254);
            v186(v249, v187);
            v72 = v252;
            sub_24B2BF3E8(v252, type metadata accessor for ContactsProvider.Subscription);
            (*v237)(v185, v181);
            goto LABEL_97;
          }

          v190 = v233;
          (*v232)(v233, v179 + v178, v181);
          sub_24B2BF448(&qword_27EFCC828, MEMORY[0x277D08B38]);
          LODWORD(v241) = sub_24B2D52A4();
          v191 = *v237;
          v192 = v190;
          v184 = v251;
          (*v237)(v192, v181);
          v191(v185, v181);
          sub_24AFF8258(v179, &qword_27EFCC810);
          v152 = v256;
          v183 = v252;
          if (v241)
          {
LABEL_100:
            v193 = v249;
            LODWORD(v241) = MEMORY[0x24C237DB0](v249, v184);
            v194 = *v253;
            v195 = v254;
            (*v253)(v184, v254);
            v194(v193, v195);
            sub_24B2BF3E8(v183, type metadata accessor for ContactsProvider.Subscription);
            sub_24B2BF3E8(v260, type metadata accessor for ContactsProvider.Subscription);
            v43 = v242;
            v76 = v238;
            v72 = v183;
            if (v241)
            {
              goto LABEL_106;
            }

            goto LABEL_80;
          }

          v196 = *v253;
          v197 = v254;
          (*v253)(v184, v254);
          v196(v249, v197);
          sub_24B2BF3E8(v183, type metadata accessor for ContactsProvider.Subscription);
          v43 = v242;
          v76 = v238;
          v72 = v183;
        }

        sub_24B2BF3E8(v260, type metadata accessor for ContactsProvider.Subscription);
        goto LABEL_80;
      }

      break;
    }

    if (v141 <= v78 + 1)
    {
      v144 = v78 + 1;
    }

    else
    {
      v144 = v141;
    }

    v145 = v144 - 1;
    v143 = v247;
    while (1)
    {
      v142 = v78 + 1;
      if (__OFADD__(v78, 1))
      {
        break;
      }

      if (v142 >= v141)
      {
        v147 = 0;
        v148 = 1;
        v78 = v145;
        goto LABEL_69;
      }

      v69 = *(v73 + 8 * v142);
      ++v78;
      if (v69)
      {
        v78 = v142;
        goto LABEL_68;
      }
    }

    __break(1u);
LABEL_115:
    __break(1u);
LABEL_116:
    v200 = v70;

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v201 = swift_slowAlloc();
  memcpy(v201, v259, v200);
  v202 = v204;
  sub_24B2B387C(v201, v73, v78, v69, &v261);
  v132 = v203;

  if (v202)
  {

    result = MEMORY[0x24C23D530](v201, -1, -1);
    __break(1u);
  }

  else
  {

    MEMORY[0x24C23D530](v201, -1, -1);
LABEL_111:
    sub_24B0363BC();
    return v132;
  }

  return result;
}

uint64_t sub_24B2AA7D8(uint64_t a1, uint64_t a2)
{
  v120 = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC84A8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v82 - v9;
  v11 = type metadata accessor for PeopleLocationsProvider.Subscription(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v13);
  v110 = &v82 - v14;
  MEMORY[0x28223BE20](v15);
  MEMORY[0x28223BE20](v16);
  v103 = &v82 - v20;
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v102 = v17;
  v101 = v19;
  v104 = v18;
  v83 = 0;
  v22 = a1 + 56;
  v21 = *(a1 + 56);
  v23 = -1 << *(a1 + 32);
  v99 = ~v23;
  if (-v23 < 64)
  {
    v24 = ~(-1 << -v23);
  }

  else
  {
    v24 = -1;
  }

  v109 = v24 & v21;
  v94 = (63 - v23) >> 6;
  v98 = (v12 + 56);
  v97 = (v12 + 48);
  v107 = (a2 + 56);

  v26 = 0;
  v85 = v10;
  v106 = a2;
  for (i = v12; ; v12 = i)
  {
    v27 = v109;
    v28 = v26;
    if (v109)
    {
      goto LABEL_16;
    }

    v29 = v94 <= (v26 + 1) ? v26 + 1 : v94;
    v30 = v29 - 1;
    v31 = v26;
    do
    {
      v28 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        __break(1u);
        goto LABEL_107;
      }

      if (v28 >= v94)
      {
        v34 = 0;
        v33 = 1;
        goto LABEL_17;
      }

      v27 = *(v22 + 8 * v28);
      ++v31;
    }

    while (!v27);
    v12 = i;
LABEL_16:
    v32 = (v27 - 1) & v27;
    sub_24B2BF490(*(a1 + 48) + *(v12 + 72) * (__clz(__rbit64(v27)) | (v28 << 6)), v85, type metadata accessor for PeopleLocationsProvider.Subscription);
    v33 = 0;
    v30 = v28;
    v34 = v32;
    v10 = v85;
LABEL_17:
    v2 = v102;
    v96 = *v98;
    v96(v10, v33, 1, v102);
    v115 = a1;
    v116 = a1 + 56;
    v117 = v99;
    v118 = v30;
    v119 = v34;
    v95 = *v97;
    if (v95(v10, 1, v2) == 1)
    {
      goto LABEL_105;
    }

    v100 = v34;
    sub_24B2BF380(v10, v103, type metadata accessor for PeopleLocationsProvider.Subscription);
    sub_24B2D60E4();
    v35 = sub_24B2D1574();
    v36 = sub_24B2BF448(&qword_27EFCC6C0, MEMORY[0x277D08B50]);
    v109 = v35;
    v93 = v36;
    sub_24B2D5254();
    v86 = *(v2 + 20);
    sub_24B2D5404();

    v37 = sub_24B2D6124();
    v38 = -1 << *(a2 + 32);
    v28 = v37 & ~v38;
    v39 = v28 >> 6;
    v40 = (1 << v28);
    v10 = v101;
    if (((1 << v28) & v107[v28 >> 6]) != 0)
    {
      break;
    }

LABEL_6:
    sub_24B2BF3E8(v103, type metadata accessor for PeopleLocationsProvider.Subscription);
    v26 = v30;
    v109 = v100;
    v10 = v85;
  }

  v87 = ~v38;
  v108 = *(i + 72);
  while (1)
  {
    v88 = v40;
    v89 = v39;
    sub_24B2BF490(*(a2 + 48) + v108 * v28, v10, type metadata accessor for PeopleLocationsProvider.Subscription);
    v41 = sub_24B2BF448(&qword_27EFCC6D8, MEMORY[0x277D08B50]);
    sub_24B2D54E4();
    v105 = v41;
    sub_24B2D54E4();
    v2 = v114;
    v42 = v113 == v111 && v114 == v112;
    if (v42)
    {
    }

    else
    {
      v43 = sub_24B2D6004();

      if ((v43 & 1) == 0)
      {
        v10 = v101;
        sub_24B2BF3E8(v101, type metadata accessor for PeopleLocationsProvider.Subscription);
        goto LABEL_21;
      }
    }

    v44 = v101;
    v45 = *(v101 + *(v102 + 20)) ? 0x776F6C6C616873 : 1702259052;
    v2 = *(v101 + *(v102 + 20)) ? 0xE700000000000000 : 0xE400000000000000;
    v46 = *(v103 + v86) ? 0x776F6C6C616873 : 1702259052;
    v10 = (*(v103 + v86) ? 0xE700000000000000 : 0xE400000000000000);
    if (v45 == v46 && v2 == v10)
    {
      break;
    }

    v48 = sub_24B2D6004();

    sub_24B2BF3E8(v44, type metadata accessor for PeopleLocationsProvider.Subscription);
    v10 = v44;
    if (v48)
    {
      goto LABEL_50;
    }

LABEL_21:
    v28 = (v28 + 1) & v87;
    v39 = v28 >> 6;
    v40 = (1 << v28);
    a2 = v106;
    if ((v107[v28 >> 6] & (1 << v28)) == 0)
    {
      goto LABEL_6;
    }
  }

  sub_24B2BF3E8(v44, type metadata accessor for PeopleLocationsProvider.Subscription);
LABEL_50:
  v49 = sub_24B2BF3E8(v103, type metadata accessor for PeopleLocationsProvider.Subscription);
  v2 = v106;
  v50 = *(v106 + 32);
  v86 = ((1 << v50) + 63) >> 6;
  v25 = 8 * v86;
  a2 = v102;
  if ((v50 & 0x3Fu) > 0xD)
  {
LABEL_107:
    v78 = v25;

    v10 = v78;
    if (swift_stdlib_isStackAllocationSafe())
    {

      goto LABEL_51;
    }

    v79 = swift_slowAlloc();
    memcpy(v79, v107, v78);
    v80 = v83;
    sub_24B2B494C(v79, v86, v2, v28, &v115);
    a2 = v81;

    if (!v80)
    {

      MEMORY[0x24C23D530](v79, -1, -1);
      goto LABEL_102;
    }

    result = MEMORY[0x24C23D530](v79, -1, -1);
    __break(1u);
    return result;
  }

LABEL_51:
  v87 = &v82;
  MEMORY[0x28223BE20](v49);
  v52 = &v82 - ((v51 + 15) & 0x3FFFFFFFFFFFFFF0);
  memcpy(v52, v107, v51);
  v53 = *&v52[8 * v89] & ~v88;
  v88 = v52;
  *&v52[8 * v89] = v53;
  v54 = *(v2 + 16) - 1;
  v55 = v94;
  v56 = v100;
  v92 = a1;
  v91 = v7;
  v90 = a1 + 56;
LABEL_52:
  v89 = v54;
  while (2)
  {
    if (v56)
    {
      v57 = v30;
LABEL_64:
      v60 = __clz(__rbit64(v56));
      v61 = (v56 - 1) & v56;
      sub_24B2BF490(*(a1 + 48) + (v60 | (v57 << 6)) * v108, v7, type metadata accessor for PeopleLocationsProvider.Subscription);
      v62 = 0;
LABEL_65:
      v96(v7, v62, 1, a2);
      v115 = a1;
      v116 = v22;
      v117 = v99;
      v118 = v30;
      v119 = v61;
      if (v95(v7, 1, a2) == 1)
      {
        sub_24AFF8258(v7, &qword_27EFC84A8);
        a2 = sub_24B2A196C(v88, v86, v89, v2);
        goto LABEL_102;
      }

      v100 = v61;
      sub_24B2BF380(v7, v110, type metadata accessor for PeopleLocationsProvider.Subscription);
      sub_24B2D60E4();
      sub_24B2D5254();
      v101 = *(a2 + 20);
      sub_24B2D5404();

      v10 = &v113;
      v63 = sub_24B2D6124();
      v64 = -1 << *(v2 + 32);
      v65 = v63 & ~v64;
      v66 = v65 >> 6;
      v67 = 1 << v65;
      if (((1 << v65) & v107[v65 >> 6]) == 0)
      {
LABEL_53:
        sub_24B2BF3E8(v110, type metadata accessor for PeopleLocationsProvider.Subscription);
        a1 = v92;
        v7 = v91;
        a2 = v102;
        v22 = v90;
        v55 = v94;
        v56 = v100;
        continue;
      }

      v103 = ~v64;
      v68 = v104;
LABEL_70:
      sub_24B2BF490(*(v2 + 48) + v65 * v108, v68, type metadata accessor for PeopleLocationsProvider.Subscription);
      sub_24B2D54E4();
      sub_24B2D54E4();
      v10 = v112;
      if (v113 != v111 || v114 != v112)
      {
        v70 = sub_24B2D6004();

        if (v70)
        {
LABEL_77:
          v68 = v104;
          if (*(v104 + *(v102 + 20)))
          {
            v71 = 0x776F6C6C616873;
          }

          else
          {
            v71 = 1702259052;
          }

          if (*(v104 + *(v102 + 20)))
          {
            v72 = 0xE700000000000000;
          }

          else
          {
            v72 = 0xE400000000000000;
          }

          if (*(v110 + v101))
          {
            v73 = 0x776F6C6C616873;
          }

          else
          {
            v73 = 1702259052;
          }

          if (*(v110 + v101))
          {
            v10 = 0xE700000000000000;
          }

          else
          {
            v10 = 0xE400000000000000;
          }

          if (v71 == v73 && v72 == v10)
          {

            sub_24B2BF3E8(v68, type metadata accessor for PeopleLocationsProvider.Subscription);
LABEL_97:
            sub_24B2BF3E8(v110, type metadata accessor for PeopleLocationsProvider.Subscription);
            v76 = v88[v66];
            v88[v66] = v76 & ~v67;
            v42 = (v76 & v67) == 0;
            v2 = v106;
            a1 = v92;
            v7 = v91;
            a2 = v102;
            v22 = v90;
            v55 = v94;
            v56 = v100;
            if (!v42)
            {
              v54 = v89 - 1;
              if (__OFSUB__(v89, 1))
              {
                __break(1u);
              }

              if (v89 == 1)
              {

                a2 = MEMORY[0x277D84FA0];
                goto LABEL_102;
              }

              goto LABEL_52;
            }

            continue;
          }

          v75 = sub_24B2D6004();

          sub_24B2BF3E8(v68, type metadata accessor for PeopleLocationsProvider.Subscription);
          if (v75)
          {
            goto LABEL_97;
          }
        }

        else
        {
          v68 = v104;
          sub_24B2BF3E8(v104, type metadata accessor for PeopleLocationsProvider.Subscription);
        }

        v65 = (v65 + 1) & v103;
        v66 = v65 >> 6;
        v67 = 1 << v65;
        v2 = v106;
        if ((v107[v65 >> 6] & (1 << v65)) == 0)
        {
          goto LABEL_53;
        }

        goto LABEL_70;
      }

      goto LABEL_77;
    }

    break;
  }

  if (v55 <= (v30 + 1))
  {
    v58 = v30 + 1;
  }

  else
  {
    v58 = v55;
  }

  v59 = v58 - 1;
  while (1)
  {
    v57 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    if (v57 >= v55)
    {
      v61 = 0;
      v62 = 1;
      v30 = v59;
      goto LABEL_65;
    }

    v56 = *(v22 + 8 * v57);
    ++v30;
    if (v56)
    {
      v30 = v57;
      goto LABEL_64;
    }
  }

  __break(1u);
LABEL_105:
  sub_24AFF8258(v10, &qword_27EFC84A8);
LABEL_102:
  sub_24B0363BC();
  return a2;
}

uint64_t sub_24B2AB678(unint64_t a1, uint64_t a2)
{
  v164 = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC6D0);
  MEMORY[0x28223BE20](v4);
  v6 = &v116 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v137 = (&v116 - v8);
  v9 = sub_24B2D1574();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v144 = &v116 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v121 = &v116 - v13;
  MEMORY[0x28223BE20](v14);
  v120 = &v116 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC85C8);
  MEMORY[0x28223BE20](v16 - 8);
  v124 = &v116 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v116 - v19;
  v135 = type metadata accessor for PeopleProvider.Subscription(0);
  v21 = *(v135 - 8);
  MEMORY[0x28223BE20](v135);
  v146 = &v116 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  MEMORY[0x28223BE20](v24);
  v123 = &v116 - v25;
  MEMORY[0x28223BE20](v26);
  v151 = &v116 - v27;
  MEMORY[0x28223BE20](v28);
  MEMORY[0x28223BE20](v29);
  MEMORY[0x28223BE20](v30);
  v118 = &v116 - v31;
  MEMORY[0x28223BE20](v32);
  v136 = &v116 - v36;
  v153 = a2;
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v147 = v35;
  v122 = v34;
  v117 = v20;
  v154 = v33;
  v143 = v9;
  v116 = 0;
  v38 = a1 + 56;
  v37 = *(a1 + 56);
  v39 = -1 << *(a1 + 32);
  v134 = ~v39;
  if (-v39 < 64)
  {
    v40 = ~(-1 << -v39);
  }

  else
  {
    v40 = -1;
  }

  v41 = v40 & v37;
  v42 = (63 - v39) >> 6;
  v133 = (v21 + 56);
  v132 = (v21 + 48);
  v152 = (v10 + 48);
  v141 = (v10 + 32);
  v145 = (v10 + 8);
  v149 = (v153 + 56);

  v44 = 0;
  v127 = a1 + 56;
  v45 = a1;
  v119 = v21;
  v128 = a1;
  v142 = v4;
  v138 = v42;
  while (1)
  {
    v46 = v41;
    v47 = v44;
    v150 = v41;
    if (v41)
    {
LABEL_16:
      a1 = (v46 - 1) & v46;
      v51 = v117;
      sub_24B2BF490(*(v45 + 48) + *(v21 + 72) * (__clz(__rbit64(v46)) | (v47 << 6)), v117, type metadata accessor for PeopleProvider.Subscription);
      v52 = 0;
      v49 = v47;
    }

    else
    {
      v48 = v42 <= v44 + 1 ? v44 + 1 : v42;
      v49 = v48 - 1;
      v50 = v44;
      while (1)
      {
        v47 = v50 + 1;
        if (__OFADD__(v50, 1))
        {
          goto LABEL_78;
        }

        if (v47 >= v42)
        {
          break;
        }

        v46 = *(v38 + 8 * v47);
        ++v50;
        if (v46)
        {
          v21 = v119;
          goto LABEL_16;
        }
      }

      a1 = 0;
      v52 = 1;
      v51 = v117;
    }

    v53 = v135;
    v126 = *v133;
    v126(v51, v52, 1, v135);
    v159 = v45;
    v160 = v38;
    v161 = v134;
    v162 = v49;
    v163 = a1;
    v125 = *v132;
    if (v125(v51, 1, v53) == 1)
    {
      sub_24AFF8258(v51, &qword_27EFC85C8);
      goto LABEL_74;
    }

    v54 = v136;
    sub_24B2BF380(v51, v136, type metadata accessor for PeopleProvider.Subscription);
    sub_24B2D60E4();
    v55 = v118;
    sub_24B2BF490(v54, v118, type metadata accessor for PeopleProvider.Subscription);
    v56 = *v152;
    v57 = v143;
    if ((*v152)(v55, 1, v143) == 1)
    {
      MEMORY[0x24C23C8D0](0);
    }

    else
    {
      v58 = v120;
      (*v141)(v120, v55, v57);
      MEMORY[0x24C23C8D0](1);
      sub_24B2BF448(&qword_27EFCC6C0, MEMORY[0x277D08B50]);
      sub_24B2D5254();
      (*v145)(v58, v57);
    }

    v59 = sub_24B2D6124();
    v60 = -1 << *(v153 + 32);
    v41 = v59 & ~v60;
    v61 = v41 >> 6;
    v62 = 1 << v41;
    if (((1 << v41) & v149[v41 >> 6]) != 0)
    {
      break;
    }

LABEL_6:
    sub_24B2BF3E8(v136, type metadata accessor for PeopleProvider.Subscription);
    v44 = v49;
    v41 = a1;
    v38 = v127;
    v45 = v128;
    v21 = v119;
  }

  v129 = ~v60;
  v150 = *(v119 + 72);
  v148 = v56;
  v139 = v49;
  v140 = a1;
  while (1)
  {
    v130 = v62;
    v131 = v61;
    v65 = v56;
    v66 = v147;
    sub_24B2BF490(*(v153 + 48) + v150 * v41, v147, type metadata accessor for PeopleProvider.Subscription);
    v67 = *(v4 + 48);
    v68 = v137;
    sub_24B2BF490(v66, v137, type metadata accessor for PeopleProvider.Subscription);
    sub_24B2BF490(v136, v68 + v67, type metadata accessor for PeopleProvider.Subscription);
    v69 = v143;
    if (v65(v68, 1, v143) == 1)
    {
      sub_24B2BF3E8(v66, type metadata accessor for PeopleProvider.Subscription);
      v63 = v65(v68 + v67, 1, v69) == 1;
      v64 = v68;
      v56 = v65;
      if (v63)
      {
        goto LABEL_36;
      }

      goto LABEL_24;
    }

    v70 = v122;
    sub_24B2BF490(v68, v122, type metadata accessor for PeopleProvider.Subscription);
    if (v65(v68 + v67, 1, v69) == 1)
    {
      v56 = v65;
      sub_24B2BF3E8(v147, type metadata accessor for PeopleProvider.Subscription);
      (*v145)(v70, v69);
      v64 = v68;
      v42 = v138;
LABEL_24:
      sub_24AFF8258(v64, &qword_27EFCC6D0);
      goto LABEL_25;
    }

    (*v141)(v121, v68 + v67, v69);
    sub_24B2BF448(&qword_27EFCC6D8, MEMORY[0x277D08B50]);
    sub_24B2D54E4();
    sub_24B2D54E4();
    if (v157 == v155 && v158 == v156)
    {
      break;
    }

    v71 = sub_24B2D6004();
    v72 = *v145;
    v73 = v143;
    (*v145)(v121, v143);
    sub_24B2BF3E8(v147, type metadata accessor for PeopleProvider.Subscription);

    v72(v122, v73);
    v49 = v139;
    v56 = v148;
    v64 = v137;
    v42 = v138;
    if (v71)
    {
      goto LABEL_36;
    }

    sub_24B2BF3E8(v137, type metadata accessor for PeopleProvider.Subscription);
LABEL_25:
    v4 = v142;
    a1 = v140;
    v41 = (v41 + 1) & v129;
    v61 = v41 >> 6;
    v62 = 1 << v41;
    if ((v149[v41 >> 6] & (1 << v41)) == 0)
    {
      goto LABEL_6;
    }
  }

  v74 = *v145;
  v75 = v143;
  (*v145)(v121, v143);
  sub_24B2BF3E8(v147, type metadata accessor for PeopleProvider.Subscription);

  v74(v122, v75);
  v49 = v139;
  v64 = v137;
  v42 = v138;
LABEL_36:
  sub_24B2BF3E8(v64, type metadata accessor for PeopleProvider.Subscription);
  v76 = sub_24B2BF3E8(v136, type metadata accessor for PeopleProvider.Subscription);
  v77 = *(v153 + 32);
  v122 = ((1 << v77) + 63) >> 6;
  v43 = 8 * v122;
  v4 = v142;
  a1 = v140;
  v45 = v128;
  if ((v77 & 0x3Fu) > 0xD)
  {
    goto LABEL_79;
  }

  while (2)
  {
    v129 = &v116;
    MEMORY[0x28223BE20](v76);
    v79 = &v116 - ((v78 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v79, v149, v78);
    v80 = *&v79[8 * v131] & ~v130;
    v137 = v79;
    *&v79[8 * v131] = v80;
    v81 = *(v153 + 16) - 1;
    v41 = v143;
    v82 = v124;
    v83 = v127;
LABEL_38:
    v136 = v81;
    while (2)
    {
      if (a1)
      {
        v84 = v49;
LABEL_50:
        v87 = __clz(__rbit64(a1));
        v88 = (a1 - 1) & a1;
        sub_24B2BF490(*(v45 + 48) + (v87 | (v84 << 6)) * v150, v82, type metadata accessor for PeopleProvider.Subscription);
        v89 = 0;
LABEL_51:
        v90 = v135;
        v126(v82, v89, 1, v135);
        v159 = v45;
        v160 = v83;
        v161 = v134;
        v162 = v49;
        v163 = v88;
        if (v125(v82, 1, v90) == 1)
        {
          sub_24AFF8258(v82, &qword_27EFC85C8);
          v153 = sub_24B2A1CDC(v137, v122, v136, v153);
          goto LABEL_74;
        }

        v91 = v82;
        v92 = v151;
        sub_24B2BF380(v91, v151, type metadata accessor for PeopleProvider.Subscription);
        sub_24B2D60E4();
        v93 = v123;
        sub_24B2BF490(v92, v123, type metadata accessor for PeopleProvider.Subscription);
        v94 = v148(v93, 1, v41);
        v139 = v49;
        v140 = v88;
        if (v94 == 1)
        {
          MEMORY[0x24C23C8D0](0);
        }

        else
        {
          v95 = v120;
          (*v141)(v120, v93, v41);
          MEMORY[0x24C23C8D0](1);
          sub_24B2BF448(&qword_27EFCC6C0, MEMORY[0x277D08B50]);
          sub_24B2D5254();
          (*v145)(v95, v41);
        }

        v96 = sub_24B2D6124();
        v97 = -1 << *(v153 + 32);
        v98 = v96 & ~v97;
        v99 = v98 >> 6;
        v100 = 1 << v98;
        if (((1 << v98) & v149[v98 >> 6]) == 0)
        {
LABEL_39:
          sub_24B2BF3E8(v151, type metadata accessor for PeopleProvider.Subscription);
          v45 = v128;
          v82 = v124;
          v83 = v127;
          v42 = v138;
          v49 = v139;
          a1 = v140;
          continue;
        }

        v147 = ~v97;
LABEL_60:
        v101 = v154;
        sub_24B2BF490(*(v153 + 48) + v98 * v150, v154, type metadata accessor for PeopleProvider.Subscription);
        v102 = *(v4 + 48);
        sub_24B2BF490(v101, v6, type metadata accessor for PeopleProvider.Subscription);
        sub_24B2BF490(v151, &v6[v102], type metadata accessor for PeopleProvider.Subscription);
        v103 = v148;
        if (v148(v6, 1, v41) == 1)
        {
          sub_24B2BF3E8(v101, type metadata accessor for PeopleProvider.Subscription);
          if (v103(&v6[v102], 1, v41) == 1)
          {
            goto LABEL_69;
          }

LABEL_58:
          sub_24AFF8258(v6, &qword_27EFCC6D0);
        }

        else
        {
          v104 = v146;
          sub_24B2BF490(v6, v146, type metadata accessor for PeopleProvider.Subscription);
          if (v103(&v6[v102], 1, v41) == 1)
          {
            sub_24B2BF3E8(v154, type metadata accessor for PeopleProvider.Subscription);
            (*v145)(v104, v41);
            goto LABEL_58;
          }

          (*v141)(v144, &v6[v102], v41);
          sub_24B2BF448(&qword_27EFCC6D8, MEMORY[0x277D08B50]);
          sub_24B2D54E4();
          sub_24B2D54E4();
          if (v157 == v155 && v158 == v156)
          {
            v107 = *v145;
            v41 = v143;
            (*v145)(v144, v143);
            sub_24B2BF3E8(v154, type metadata accessor for PeopleProvider.Subscription);

            v107(v146, v41);
LABEL_69:
            sub_24B2BF3E8(v6, type metadata accessor for PeopleProvider.Subscription);
            sub_24B2BF3E8(v151, type metadata accessor for PeopleProvider.Subscription);
            v108 = v137[v99];
            v137[v99] = v108 & ~v100;
            v63 = (v108 & v100) == 0;
            v45 = v128;
            v82 = v124;
            v83 = v127;
            v42 = v138;
            v49 = v139;
            a1 = v140;
            if (!v63)
            {
              v81 = v136 - 1;
              if (__OFSUB__(v136, 1))
              {
                __break(1u);
              }

              if (v136 == 1)
              {

                v153 = MEMORY[0x277D84FA0];
                goto LABEL_74;
              }

              goto LABEL_38;
            }

            continue;
          }

          v105 = sub_24B2D6004();
          v106 = *v145;
          v41 = v143;
          (*v145)(v144, v143);
          sub_24B2BF3E8(v154, type metadata accessor for PeopleProvider.Subscription);

          v106(v146, v41);
          v4 = v142;
          if (v105)
          {
            goto LABEL_69;
          }

          sub_24B2BF3E8(v6, type metadata accessor for PeopleProvider.Subscription);
        }

        v98 = (v98 + 1) & v147;
        v99 = v98 >> 6;
        v100 = 1 << v98;
        if ((v149[v98 >> 6] & (1 << v98)) == 0)
        {
          goto LABEL_39;
        }

        goto LABEL_60;
      }

      break;
    }

    if (v42 <= v49 + 1)
    {
      v85 = v49 + 1;
    }

    else
    {
      v85 = v42;
    }

    v86 = v85 - 1;
    while (1)
    {
      v84 = v49 + 1;
      if (__OFADD__(v49, 1))
      {
        break;
      }

      if (v84 >= v42)
      {
        v88 = 0;
        v89 = 1;
        v49 = v86;
        goto LABEL_51;
      }

      a1 = *(v83 + 8 * v84);
      ++v49;
      if (a1)
      {
        v49 = v84;
        goto LABEL_50;
      }
    }

    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    v110 = v43;

    v111 = v110;
    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v112 = swift_slowAlloc();
  memcpy(v112, v149, v111);
  v113 = v116;
  sub_24B2B4FB8(v112, v122, v153, v41, &v159);
  v115 = v114;

  if (v113)
  {

    result = MEMORY[0x24C23D530](v112, -1, -1);
    __break(1u);
  }

  else
  {

    MEMORY[0x24C23D530](v112, -1, -1);
    v153 = v115;
LABEL_74:
    sub_24B0363BC();
    return v153;
  }

  return result;
}

uint64_t sub_24B2ACBA8(uint64_t a1, uint64_t a2)
{
  v106 = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC85D0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v74 - v9;
  v90 = type metadata accessor for ItemsLocationsProvider.Subscription(0);
  MEMORY[0x28223BE20](v90);
  v92 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v96 = &v74 - v13;
  MEMORY[0x28223BE20](v14);
  v76 = &v74 - v15;
  MEMORY[0x28223BE20](v16);
  v79 = (&v74 - v18);
  if (*(a2 + 16))
  {
    v80 = v7;
    v74 = 0;
    v20 = a1 + 56;
    v19 = *(a1 + 56);
    v21 = -1 << *(a1 + 32);
    v89 = ~v21;
    if (-v21 < 64)
    {
      v22 = ~(-1 << -v21);
    }

    else
    {
      v22 = -1;
    }

    v23 = v22 & v19;
    v24 = (63 - v21) >> 6;
    v88 = (v17 + 56);
    v77 = v17;
    v87 = (v17 + 48);
    v93 = (a2 + 56);

    v26 = 0;
    v91 = a2;
    v85 = a1;
    v84 = a1 + 56;
    v86 = v24;
    v75 = v10;
    while (1)
    {
      v27 = v23;
      v28 = v26;
      if (!v23)
      {
        if (v24 <= v26 + 1)
        {
          v29 = v26 + 1;
        }

        else
        {
          v29 = v24;
        }

        v30 = v29 - 1;
        v31 = v26;
        while (1)
        {
          v28 = v31 + 1;
          if (__OFADD__(v31, 1))
          {
            break;
          }

          if (v28 >= v24)
          {
            v2 = 0;
            v32 = 1;
            goto LABEL_16;
          }

          v27 = *(v20 + 8 * v28);
          ++v31;
          if (v27)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        goto LABEL_67;
      }

LABEL_15:
      v2 = (v27 - 1) & v27;
      sub_24B2BF490(*(a1 + 48) + v77[9] * (__clz(__rbit64(v27)) | (v28 << 6)), v10, type metadata accessor for ItemsLocationsProvider.Subscription);
      v32 = 0;
      v30 = v28;
LABEL_16:
      v33 = v90;
      v83 = *v88;
      v83(v10, v32, 1, v90);
      v101 = a1;
      v102 = v20;
      v103 = v89;
      v104 = v30;
      v105 = v2;
      v82 = *v87;
      if (v82(v10, 1, v33) == 1)
      {
        goto LABEL_65;
      }

      sub_24B2BF380(v10, v79, type metadata accessor for ItemsLocationsProvider.Subscription);
      sub_24B2D60E4();
      v34 = sub_24B2D1DA4();
      v35 = sub_24B2BF448(&qword_27EFCC630, MEMORY[0x277D08E20]);
      v95 = v34;
      v81 = v35;
      sub_24B2D5254();
      sub_24B2D5404();
      v36 = sub_24B2D6124();
      v37 = -1 << *(a2 + 32);
      v20 = v36 & ~v37;
      v24 = v20 >> 6;
      a1 = 1 << v20;
      v38 = v76;
      if (((1 << v20) & v93[v20 >> 6]) != 0)
      {
        break;
      }

LABEL_6:
      sub_24B2BF3E8(v79, type metadata accessor for ItemsLocationsProvider.Subscription);
      v26 = v30;
      v23 = v2;
      v20 = v84;
      v24 = v86;
      v10 = v75;
      a1 = v85;
    }

    v78 = ~v37;
    v94 = v77[9];
    while (1)
    {
      sub_24B2BF490(*(a2 + 48) + v94 * v20, v38, type metadata accessor for ItemsLocationsProvider.Subscription);
      sub_24B2BF448(&qword_27EFCC6E8, MEMORY[0x277D08E20]);
      sub_24B2D54E4();
      sub_24B2D54E4();
      v39 = v99 == v97 && v100 == v98;
      v40 = v38;
      if (v39)
      {
        break;
      }

      v41 = sub_24B2D6004();

      if (v41)
      {
        goto LABEL_29;
      }

      sub_24B2BF3E8(v40, type metadata accessor for ItemsLocationsProvider.Subscription);
      v20 = (v20 + 1) & v78;
      v24 = v20 >> 6;
      a1 = 1 << v20;
      v38 = v40;
      a2 = v91;
      if ((v93[v20 >> 6] & (1 << v20)) == 0)
      {
        goto LABEL_6;
      }
    }

LABEL_29:
    sub_24B2BF3E8(v40, type metadata accessor for ItemsLocationsProvider.Subscription);
    v42 = sub_24B2BF3E8(v79, type metadata accessor for ItemsLocationsProvider.Subscription);
    v10 = v91;
    v43 = v91[32];
    v76 = ((1 << v43) + 63) >> 6;
    v25 = 8 * v76;
    a2 = v86;
    if ((v43 & 0x3Fu) <= 0xD)
    {
      goto LABEL_30;
    }

LABEL_67:
    v69 = v25;

    v70 = v69;
    if (swift_stdlib_isStackAllocationSafe())
    {

LABEL_30:
      v77 = &v74;
      MEMORY[0x28223BE20](v42);
      v45 = &v74 - ((v44 + 15) & 0x3FFFFFFFFFFFFFF0);
      memcpy(v45, v93, v44);
      v46 = *&v45[8 * v24] & ~a1;
      v47 = *(v10 + 2);
      v79 = v45;
      *&v45[8 * v24] = v46;
      v48 = v47 - 1;
      v49 = v80;
      v50 = v84;
      v51 = v85;
LABEL_31:
      v78 = v48;
      while (v2)
      {
        v52 = v30;
LABEL_43:
        v55 = __clz(__rbit64(v2));
        v2 &= v2 - 1;
        sub_24B2BF490(*(v51 + 48) + (v55 | (v52 << 6)) * v94, v49, type metadata accessor for ItemsLocationsProvider.Subscription);
        v56 = 0;
LABEL_44:
        v57 = v90;
        v83(v49, v56, 1, v90);
        v101 = v51;
        v102 = v50;
        v103 = v89;
        v104 = v30;
        v105 = v2;
        if (v82(v49, 1, v57) == 1)
        {
          sub_24AFF8258(v49, &qword_27EFC85D0);
          a2 = sub_24B2A267C(v79, v76, v78, v10);
          goto LABEL_62;
        }

        sub_24B2BF380(v49, v96, type metadata accessor for ItemsLocationsProvider.Subscription);
        sub_24B2D60E4();
        sub_24B2D5254();
        sub_24B2D5404();
        v58 = sub_24B2D6124();
        v59 = -1 << v10[32];
        v60 = v58 & ~v59;
        v61 = v60 >> 6;
        v62 = 1 << v60;
        if (((1 << v60) & v93[v60 >> 6]) != 0)
        {
          v63 = ~v59;
          v64 = v92;
          while (1)
          {
            sub_24B2BF490(*(v10 + 6) + v60 * v94, v64, type metadata accessor for ItemsLocationsProvider.Subscription);
            sub_24B2D54E4();
            sub_24B2D54E4();
            if (v99 == v97 && v100 == v98)
            {
              break;
            }

            v66 = sub_24B2D6004();

            if (v66)
            {
              goto LABEL_55;
            }

            v64 = v92;
            sub_24B2BF3E8(v92, type metadata accessor for ItemsLocationsProvider.Subscription);
            v60 = (v60 + 1) & v63;
            v61 = v60 >> 6;
            v62 = 1 << v60;
            v10 = v91;
            if ((v93[v60 >> 6] & (1 << v60)) == 0)
            {
              goto LABEL_32;
            }
          }

LABEL_55:
          sub_24B2BF3E8(v92, type metadata accessor for ItemsLocationsProvider.Subscription);
          sub_24B2BF3E8(v96, type metadata accessor for ItemsLocationsProvider.Subscription);
          v67 = v79[v61];
          v79[v61] = v67 & ~v62;
          v39 = (v67 & v62) == 0;
          v10 = v91;
          v51 = v85;
          v49 = v80;
          v50 = v84;
          a2 = v86;
          if (!v39)
          {
            v48 = v78 - 1;
            if (__OFSUB__(v78, 1))
            {
              __break(1u);
            }

            if (v78 == 1)
            {

              a2 = MEMORY[0x277D84FA0];
              goto LABEL_62;
            }

            goto LABEL_31;
          }
        }

        else
        {
LABEL_32:
          sub_24B2BF3E8(v96, type metadata accessor for ItemsLocationsProvider.Subscription);
          v51 = v85;
          v49 = v80;
          v50 = v84;
          a2 = v86;
        }
      }

      if (a2 <= v30 + 1)
      {
        v53 = v30 + 1;
      }

      else
      {
        v53 = a2;
      }

      v54 = v53 - 1;
      while (1)
      {
        v52 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
          break;
        }

        if (v52 >= a2)
        {
          v2 = 0;
          v56 = 1;
          v30 = v54;
          goto LABEL_44;
        }

        v2 = *(v50 + 8 * v52);
        ++v30;
        if (v2)
        {
          v30 = v52;
          goto LABEL_43;
        }
      }

      __break(1u);
LABEL_65:
      sub_24AFF8258(v10, &qword_27EFC85D0);
LABEL_62:
      sub_24B0363BC();
      return a2;
    }

    v71 = swift_slowAlloc();
    memcpy(v71, v93, v70);
    v72 = v74;
    sub_24B2B59F8(v71, v76, v10, v20, &v101);
    a2 = v73;

    if (!v72)
    {

      MEMORY[0x24C23D530](v71, -1, -1);
      goto LABEL_62;
    }

    result = MEMORY[0x24C23D530](v71, -1, -1);
    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_24B2AD7AC(unint64_t a1, uint64_t a2)
{
  v164 = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC6E0);
  MEMORY[0x28223BE20](v4);
  v6 = &v116 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v137 = (&v116 - v8);
  v9 = sub_24B2D1DA4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v144 = &v116 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v121 = &v116 - v13;
  MEMORY[0x28223BE20](v14);
  v120 = &v116 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC85E0);
  MEMORY[0x28223BE20](v16 - 8);
  v124 = &v116 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v116 - v19;
  v135 = type metadata accessor for ItemsProvider.Subscription(0);
  v21 = *(v135 - 8);
  MEMORY[0x28223BE20](v135);
  v146 = &v116 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  MEMORY[0x28223BE20](v24);
  v123 = &v116 - v25;
  MEMORY[0x28223BE20](v26);
  v151 = &v116 - v27;
  MEMORY[0x28223BE20](v28);
  MEMORY[0x28223BE20](v29);
  MEMORY[0x28223BE20](v30);
  v118 = &v116 - v31;
  MEMORY[0x28223BE20](v32);
  v136 = &v116 - v36;
  v153 = a2;
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v147 = v35;
  v122 = v34;
  v117 = v20;
  v154 = v33;
  v143 = v9;
  v116 = 0;
  v38 = a1 + 56;
  v37 = *(a1 + 56);
  v39 = -1 << *(a1 + 32);
  v134 = ~v39;
  if (-v39 < 64)
  {
    v40 = ~(-1 << -v39);
  }

  else
  {
    v40 = -1;
  }

  v41 = v40 & v37;
  v42 = (63 - v39) >> 6;
  v133 = (v21 + 56);
  v132 = (v21 + 48);
  v152 = (v10 + 48);
  v141 = (v10 + 32);
  v145 = (v10 + 8);
  v149 = (v153 + 56);

  v44 = 0;
  v127 = a1 + 56;
  v45 = a1;
  v119 = v21;
  v128 = a1;
  v142 = v4;
  v138 = v42;
  while (1)
  {
    v46 = v41;
    v47 = v44;
    v150 = v41;
    if (v41)
    {
LABEL_16:
      a1 = (v46 - 1) & v46;
      v51 = v117;
      sub_24B2BF490(*(v45 + 48) + *(v21 + 72) * (__clz(__rbit64(v46)) | (v47 << 6)), v117, type metadata accessor for ItemsProvider.Subscription);
      v52 = 0;
      v49 = v47;
    }

    else
    {
      v48 = v42 <= v44 + 1 ? v44 + 1 : v42;
      v49 = v48 - 1;
      v50 = v44;
      while (1)
      {
        v47 = v50 + 1;
        if (__OFADD__(v50, 1))
        {
          goto LABEL_78;
        }

        if (v47 >= v42)
        {
          break;
        }

        v46 = *(v38 + 8 * v47);
        ++v50;
        if (v46)
        {
          v21 = v119;
          goto LABEL_16;
        }
      }

      a1 = 0;
      v52 = 1;
      v51 = v117;
    }

    v53 = v135;
    v126 = *v133;
    v126(v51, v52, 1, v135);
    v159 = v45;
    v160 = v38;
    v161 = v134;
    v162 = v49;
    v163 = a1;
    v125 = *v132;
    if (v125(v51, 1, v53) == 1)
    {
      sub_24AFF8258(v51, &qword_27EFC85E0);
      goto LABEL_74;
    }

    v54 = v136;
    sub_24B2BF380(v51, v136, type metadata accessor for ItemsProvider.Subscription);
    sub_24B2D60E4();
    v55 = v118;
    sub_24B2BF490(v54, v118, type metadata accessor for ItemsProvider.Subscription);
    v56 = *v152;
    v57 = v143;
    if ((*v152)(v55, 1, v143) == 1)
    {
      MEMORY[0x24C23C8D0](0);
    }

    else
    {
      v58 = v120;
      (*v141)(v120, v55, v57);
      MEMORY[0x24C23C8D0](1);
      sub_24B2BF448(&qword_27EFCC630, MEMORY[0x277D08E20]);
      sub_24B2D5254();
      (*v145)(v58, v57);
    }

    v59 = sub_24B2D6124();
    v60 = -1 << *(v153 + 32);
    v41 = v59 & ~v60;
    v61 = v41 >> 6;
    v62 = 1 << v41;
    if (((1 << v41) & v149[v41 >> 6]) != 0)
    {
      break;
    }

LABEL_6:
    sub_24B2BF3E8(v136, type metadata accessor for ItemsProvider.Subscription);
    v44 = v49;
    v41 = a1;
    v38 = v127;
    v45 = v128;
    v21 = v119;
  }

  v129 = ~v60;
  v150 = *(v119 + 72);
  v148 = v56;
  v139 = v49;
  v140 = a1;
  while (1)
  {
    v130 = v62;
    v131 = v61;
    v65 = v56;
    v66 = v147;
    sub_24B2BF490(*(v153 + 48) + v150 * v41, v147, type metadata accessor for ItemsProvider.Subscription);
    v67 = *(v4 + 48);
    v68 = v137;
    sub_24B2BF490(v66, v137, type metadata accessor for ItemsProvider.Subscription);
    sub_24B2BF490(v136, v68 + v67, type metadata accessor for ItemsProvider.Subscription);
    v69 = v143;
    if (v65(v68, 1, v143) == 1)
    {
      sub_24B2BF3E8(v66, type metadata accessor for ItemsProvider.Subscription);
      v63 = v65(v68 + v67, 1, v69) == 1;
      v64 = v68;
      v56 = v65;
      if (v63)
      {
        goto LABEL_36;
      }

      goto LABEL_24;
    }

    v70 = v122;
    sub_24B2BF490(v68, v122, type metadata accessor for ItemsProvider.Subscription);
    if (v65(v68 + v67, 1, v69) == 1)
    {
      v56 = v65;
      sub_24B2BF3E8(v147, type metadata accessor for ItemsProvider.Subscription);
      (*v145)(v70, v69);
      v64 = v68;
      v42 = v138;
LABEL_24:
      sub_24AFF8258(v64, &qword_27EFCC6E0);
      goto LABEL_25;
    }

    (*v141)(v121, v68 + v67, v69);
    sub_24B2BF448(&qword_27EFCC6E8, MEMORY[0x277D08E20]);
    sub_24B2D54E4();
    sub_24B2D54E4();
    if (v157 == v155 && v158 == v156)
    {
      break;
    }

    v71 = sub_24B2D6004();
    v72 = *v145;
    v73 = v143;
    (*v145)(v121, v143);
    sub_24B2BF3E8(v147, type metadata accessor for ItemsProvider.Subscription);

    v72(v122, v73);
    v49 = v139;
    v56 = v148;
    v64 = v137;
    v42 = v138;
    if (v71)
    {
      goto LABEL_36;
    }

    sub_24B2BF3E8(v137, type metadata accessor for ItemsProvider.Subscription);
LABEL_25:
    v4 = v142;
    a1 = v140;
    v41 = (v41 + 1) & v129;
    v61 = v41 >> 6;
    v62 = 1 << v41;
    if ((v149[v41 >> 6] & (1 << v41)) == 0)
    {
      goto LABEL_6;
    }
  }

  v74 = *v145;
  v75 = v143;
  (*v145)(v121, v143);
  sub_24B2BF3E8(v147, type metadata accessor for ItemsProvider.Subscription);

  v74(v122, v75);
  v49 = v139;
  v64 = v137;
  v42 = v138;
LABEL_36:
  sub_24B2BF3E8(v64, type metadata accessor for ItemsProvider.Subscription);
  v76 = sub_24B2BF3E8(v136, type metadata accessor for ItemsProvider.Subscription);
  v77 = *(v153 + 32);
  v122 = ((1 << v77) + 63) >> 6;
  v43 = 8 * v122;
  v4 = v142;
  a1 = v140;
  v45 = v128;
  if ((v77 & 0x3Fu) > 0xD)
  {
    goto LABEL_79;
  }

  while (2)
  {
    v129 = &v116;
    MEMORY[0x28223BE20](v76);
    v79 = &v116 - ((v78 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v79, v149, v78);
    v80 = *&v79[8 * v131] & ~v130;
    v137 = v79;
    *&v79[8 * v131] = v80;
    v81 = *(v153 + 16) - 1;
    v41 = v143;
    v82 = v124;
    v83 = v127;
LABEL_38:
    v136 = v81;
    while (2)
    {
      if (a1)
      {
        v84 = v49;
LABEL_50:
        v87 = __clz(__rbit64(a1));
        v88 = (a1 - 1) & a1;
        sub_24B2BF490(*(v45 + 48) + (v87 | (v84 << 6)) * v150, v82, type metadata accessor for ItemsProvider.Subscription);
        v89 = 0;
LABEL_51:
        v90 = v135;
        v126(v82, v89, 1, v135);
        v159 = v45;
        v160 = v83;
        v161 = v134;
        v162 = v49;
        v163 = v88;
        if (v125(v82, 1, v90) == 1)
        {
          sub_24AFF8258(v82, &qword_27EFC85E0);
          v153 = sub_24B2A29B4(v137, v122, v136, v153);
          goto LABEL_74;
        }

        v91 = v82;
        v92 = v151;
        sub_24B2BF380(v91, v151, type metadata accessor for ItemsProvider.Subscription);
        sub_24B2D60E4();
        v93 = v123;
        sub_24B2BF490(v92, v123, type metadata accessor for ItemsProvider.Subscription);
        v94 = v148(v93, 1, v41);
        v139 = v49;
        v140 = v88;
        if (v94 == 1)
        {
          MEMORY[0x24C23C8D0](0);
        }

        else
        {
          v95 = v120;
          (*v141)(v120, v93, v41);
          MEMORY[0x24C23C8D0](1);
          sub_24B2BF448(&qword_27EFCC630, MEMORY[0x277D08E20]);
          sub_24B2D5254();
          (*v145)(v95, v41);
        }

        v96 = sub_24B2D6124();
        v97 = -1 << *(v153 + 32);
        v98 = v96 & ~v97;
        v99 = v98 >> 6;
        v100 = 1 << v98;
        if (((1 << v98) & v149[v98 >> 6]) == 0)
        {
LABEL_39:
          sub_24B2BF3E8(v151, type metadata accessor for ItemsProvider.Subscription);
          v45 = v128;
          v82 = v124;
          v83 = v127;
          v42 = v138;
          v49 = v139;
          a1 = v140;
          continue;
        }

        v147 = ~v97;
LABEL_60:
        v101 = v154;
        sub_24B2BF490(*(v153 + 48) + v98 * v150, v154, type metadata accessor for ItemsProvider.Subscription);
        v102 = *(v4 + 48);
        sub_24B2BF490(v101, v6, type metadata accessor for ItemsProvider.Subscription);
        sub_24B2BF490(v151, &v6[v102], type metadata accessor for ItemsProvider.Subscription);
        v103 = v148;
        if (v148(v6, 1, v41) == 1)
        {
          sub_24B2BF3E8(v101, type metadata accessor for ItemsProvider.Subscription);
          if (v103(&v6[v102], 1, v41) == 1)
          {
            goto LABEL_69;
          }

LABEL_58:
          sub_24AFF8258(v6, &qword_27EFCC6E0);
        }

        else
        {
          v104 = v146;
          sub_24B2BF490(v6, v146, type metadata accessor for ItemsProvider.Subscription);
          if (v103(&v6[v102], 1, v41) == 1)
          {
            sub_24B2BF3E8(v154, type metadata accessor for ItemsProvider.Subscription);
            (*v145)(v104, v41);
            goto LABEL_58;
          }

          (*v141)(v144, &v6[v102], v41);
          sub_24B2BF448(&qword_27EFCC6E8, MEMORY[0x277D08E20]);
          sub_24B2D54E4();
          sub_24B2D54E4();
          if (v157 == v155 && v158 == v156)
          {
            v107 = *v145;
            v41 = v143;
            (*v145)(v144, v143);
            sub_24B2BF3E8(v154, type metadata accessor for ItemsProvider.Subscription);

            v107(v146, v41);
LABEL_69:
            sub_24B2BF3E8(v6, type metadata accessor for ItemsProvider.Subscription);
            sub_24B2BF3E8(v151, type metadata accessor for ItemsProvider.Subscription);
            v108 = v137[v99];
            v137[v99] = v108 & ~v100;
            v63 = (v108 & v100) == 0;
            v45 = v128;
            v82 = v124;
            v83 = v127;
            v42 = v138;
            v49 = v139;
            a1 = v140;
            if (!v63)
            {
              v81 = v136 - 1;
              if (__OFSUB__(v136, 1))
              {
                __break(1u);
              }

              if (v136 == 1)
              {

                v153 = MEMORY[0x277D84FA0];
                goto LABEL_74;
              }

              goto LABEL_38;
            }

            continue;
          }

          v105 = sub_24B2D6004();
          v106 = *v145;
          v41 = v143;
          (*v145)(v144, v143);
          sub_24B2BF3E8(v154, type metadata accessor for ItemsProvider.Subscription);

          v106(v146, v41);
          v4 = v142;
          if (v105)
          {
            goto LABEL_69;
          }

          sub_24B2BF3E8(v6, type metadata accessor for ItemsProvider.Subscription);
        }

        v98 = (v98 + 1) & v147;
        v99 = v98 >> 6;
        v100 = 1 << v98;
        if ((v149[v98 >> 6] & (1 << v98)) == 0)
        {
          goto LABEL_39;
        }

        goto LABEL_60;
      }

      break;
    }

    if (v42 <= v49 + 1)
    {
      v85 = v49 + 1;
    }

    else
    {
      v85 = v42;
    }

    v86 = v85 - 1;
    while (1)
    {
      v84 = v49 + 1;
      if (__OFADD__(v49, 1))
      {
        break;
      }

      if (v84 >= v42)
      {
        v88 = 0;
        v89 = 1;
        v49 = v86;
        goto LABEL_51;
      }

      a1 = *(v83 + 8 * v84);
      ++v49;
      if (a1)
      {
        v49 = v84;
        goto LABEL_50;
      }
    }

    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    v110 = v43;

    v111 = v110;
    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v112 = swift_slowAlloc();
  memcpy(v112, v149, v111);
  v113 = v116;
  sub_24B2B5F64(v112, v122, v153, v41, &v159);
  v115 = v114;

  if (v113)
  {

    result = MEMORY[0x24C23D530](v112, -1, -1);
    __break(1u);
  }

  else
  {

    MEMORY[0x24C23D530](v112, -1, -1);
    v153 = v115;
LABEL_74:
    sub_24B0363BC();
    return v153;
  }

  return result;
}

uint64_t sub_24B2AECDC(unint64_t a1, uint64_t a2)
{
  v172 = *MEMORY[0x277D85DE8];
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDBC8);
  MEMORY[0x28223BE20](v161);
  v5 = &v130 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v130 - v7;
  v158 = sub_24B2D1704();
  v9 = *(v158 - 8);
  MEMORY[0x28223BE20](v158);
  v154 = &v130 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v134 = &v130 - v12;
  MEMORY[0x28223BE20](v13);
  v136 = &v130 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC85B8);
  MEMORY[0x28223BE20](v15 - 8);
  v141 = &v130 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v132 = &v130 - v18;
  v19 = type metadata accessor for SettingsContactsProvider.Subscription();
  MEMORY[0x28223BE20](v19);
  v156 = (&v130 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v21);
  v165 = &v130 - v22;
  MEMORY[0x28223BE20](v23);
  v159 = &v130 - v24;
  MEMORY[0x28223BE20](v25);
  v140 = &v130 - v26;
  MEMORY[0x28223BE20](v27);
  v162 = &v130 - v28;
  MEMORY[0x28223BE20](v29);
  v139 = (&v130 - v30);
  MEMORY[0x28223BE20](v31);
  MEMORY[0x28223BE20](v32);
  v160 = &v130 - v33;
  MEMORY[0x28223BE20](v34);
  v131 = &v130 - v35;
  MEMORY[0x28223BE20](v36);
  v135 = &v130 - v39;
  v166 = a2;
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v138 = v38;
  v130 = 0;
  v41 = a1 + 56;
  v40 = *(a1 + 56);
  v42 = -1 << *(a1 + 32);
  v150 = ~v42;
  if (-v42 < 64)
  {
    v43 = ~(-1 << -v42);
  }

  else
  {
    v43 = -1;
  }

  v44 = v43 & v40;
  v142 = (63 - v42) >> 6;
  v149 = (v37 + 56);
  v133 = v37;
  v148 = (v37 + 48);
  v155 = (v9 + 32);
  v157 = (v9 + 8);
  v163 = (v166 + 56);

  v46 = 0;
  v145 = a1 + 56;
  for (i = a1; ; a1 = i)
  {
    v47 = v44;
    v48 = v46;
    v164 = v44;
    if (v44)
    {
LABEL_15:
      v52 = (v47 - 1) & v47;
      v53 = v132;
      sub_24B2BF490(*(a1 + 48) + *(v133 + 72) * (__clz(__rbit64(v47)) | (v48 << 6)), v132, type metadata accessor for SettingsContactsProvider.Subscription);
      v54 = 0;
      v50 = v48;
    }

    else
    {
      v49 = v142 <= (v46 + 1) ? v46 + 1 : v142;
      v50 = v49 - 1;
      v51 = v46;
      while (1)
      {
        v48 = v51 + 1;
        if (__OFADD__(v51, 1))
        {
          goto LABEL_87;
        }

        if (v48 >= v142)
        {
          break;
        }

        v47 = *(v41 + 8 * v48);
        ++v51;
        if (v47)
        {
          goto LABEL_15;
        }
      }

      v52 = 0;
      v54 = 1;
      v53 = v132;
    }

    v144 = *v149;
    v144(v53, v54, 1, v19);
    v167 = a1;
    v168 = v41;
    v169 = v150;
    v170 = v50;
    v171 = v52;
    v143 = *v148;
    if (v143(v53, 1, v19) == 1)
    {
      sub_24AFF8258(v53, &qword_27EFC85B8);
      goto LABEL_83;
    }

    v55 = v53;
    v9 = v135;
    sub_24B2BF380(v55, v135, type metadata accessor for SettingsContactsProvider.Subscription);
    sub_24B2D60E4();
    v56 = v131;
    sub_24B2BF490(v9, v131, type metadata accessor for SettingsContactsProvider.Subscription);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v153 = v50;
    v152 = v52;
    if (EnumCaseMultiPayload == 1)
    {
      MEMORY[0x24C23C8D0](1);
      sub_24B2D5404();
    }

    else
    {
      v58 = v136;
      v59 = v158;
      (*v155)(v136, v56, v158);
      MEMORY[0x24C23C8D0](0);
      sub_24B2BF448(&unk_27EFC7E58, MEMORY[0x277D08BF8]);
      sub_24B2D5254();
      (*v157)(v58, v59);
    }

    v60 = sub_24B2D6124();
    v61 = -1 << *(v166 + 32);
    v46 = v60 & ~v61;
    v62 = v46 >> 6;
    a1 = 1 << v46;
    if (((1 << v46) & v163[v46 >> 6]) != 0)
    {
      break;
    }

LABEL_6:
    sub_24B2BF3E8(v9, type metadata accessor for SettingsContactsProvider.Subscription);
    v46 = v153;
    v44 = v152;
    v41 = v145;
  }

  v151 = ~v61;
  v164 = *(v133 + 72);
  while (1)
  {
    v63 = v160;
    sub_24B2BF490(*(v166 + 48) + v164 * v46, v160, type metadata accessor for SettingsContactsProvider.Subscription);
    v64 = &v8[*(v161 + 48)];
    sub_24B2BF490(v63, v8, type metadata accessor for SettingsContactsProvider.Subscription);
    sub_24B2BF490(v9, v64, type metadata accessor for SettingsContactsProvider.Subscription);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      break;
    }

    v72 = v138;
    sub_24B2BF490(v8, v138, type metadata accessor for SettingsContactsProvider.Subscription);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v147 = v62;
      v73 = v134;
      v74 = v158;
      (*v155)(v134, v64, v158);
      MyUICore35SettingsPeopleRelationshipsProviderC12SubscriptionO10IdentifierV2eeoiySbAG_AGtFZ_0 = _s12FindMyUICore35SettingsPeopleRelationshipsProviderC12SubscriptionO10IdentifierV2eeoiySbAG_AGtFZ_0();
      v75 = v72;
      v76 = *v157;
      v77 = v73;
      v9 = v135;
      (*v157)(v77, v74);
      sub_24B2BF3E8(v160, type metadata accessor for SettingsContactsProvider.Subscription);
      v76(v75, v74);
      if (MyUICore35SettingsPeopleRelationshipsProviderC12SubscriptionO10IdentifierV2eeoiySbAG_AGtFZ_0)
      {
        goto LABEL_40;
      }

      goto LABEL_35;
    }

    sub_24B2BF3E8(v160, type metadata accessor for SettingsContactsProvider.Subscription);
    (*v157)(v72, v158);
LABEL_23:
    sub_24AFF8258(v8, &qword_27EFCDBC8);
LABEL_24:
    v46 = (v46 + 1) & v151;
    v62 = v46 >> 6;
    a1 = 1 << v46;
    if ((v163[v46 >> 6] & (1 << v46)) == 0)
    {
      goto LABEL_6;
    }
  }

  v147 = v62;
  v65 = v139;
  sub_24B2BF490(v8, v139, type metadata accessor for SettingsContactsProvider.Subscription);
  v66 = *v65;
  v67 = v65[1];
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_24B2BF3E8(v160, type metadata accessor for SettingsContactsProvider.Subscription);

    goto LABEL_23;
  }

  v68 = *v64;
  v69 = *(v64 + 1);
  if (v66 != v68 || v67 != v69)
  {
    v71 = sub_24B2D6004();

    sub_24B2BF3E8(v160, type metadata accessor for SettingsContactsProvider.Subscription);
    if (v71)
    {
      goto LABEL_40;
    }

LABEL_35:
    sub_24B2BF3E8(v8, type metadata accessor for SettingsContactsProvider.Subscription);
    goto LABEL_24;
  }

  sub_24B2BF3E8(v160, type metadata accessor for SettingsContactsProvider.Subscription);
LABEL_40:
  sub_24B2BF3E8(v8, type metadata accessor for SettingsContactsProvider.Subscription);
  v78 = sub_24B2BF3E8(v9, type metadata accessor for SettingsContactsProvider.Subscription);
  v79 = *(v166 + 32);
  v50 = ((1 << v79) + 63) >> 6;
  v45 = 8 * v50;
  v9 = v147;
  if ((v79 & 0x3Fu) > 0xD)
  {
    goto LABEL_88;
  }

  while (2)
  {
    v138 = v50;
    v139 = &v130;
    MEMORY[0x28223BE20](v78);
    v81 = &v130 - ((v80 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v81, v163, v80);
    v82 = *&v81[8 * v9] & ~a1;
    v151 = v81;
    *&v81[8 * v9] = v82;
    v83 = *(v166 + 16) - 1;
    v9 = 1;
    v84 = i;
    v85 = v141;
    v46 = v145;
    v86 = v142;
    v87 = v153;
    v50 = v152;
LABEL_42:
    v147 = v83;
    while (2)
    {
      if (v50)
      {
        v88 = v87;
LABEL_54:
        v91 = __clz(__rbit64(v50));
        v92 = (v50 - 1) & v50;
        sub_24B2BF490(*(v84 + 48) + (v91 | (v88 << 6)) * v164, v85, type metadata accessor for SettingsContactsProvider.Subscription);
        v93 = 0;
LABEL_55:
        v144(v85, v93, 1, v19);
        v167 = v84;
        v168 = v46;
        v169 = v150;
        v170 = v87;
        v171 = v92;
        if (v143(v85, 1, v19) == 1)
        {
          sub_24AFF8258(v85, &qword_27EFC85B8);
          v166 = sub_24B2A2E2C(v151, v138, v147, v166);
          goto LABEL_83;
        }

        v94 = v85;
        v95 = v162;
        sub_24B2BF380(v94, v162, type metadata accessor for SettingsContactsProvider.Subscription);
        sub_24B2D60E4();
        v96 = v95;
        v97 = v140;
        sub_24B2BF490(v96, v140, type metadata accessor for SettingsContactsProvider.Subscription);
        v98 = swift_getEnumCaseMultiPayload();
        v153 = v87;
        v152 = v92;
        if (v98 == 1)
        {
          MEMORY[0x24C23C8D0](1);
          sub_24B2D5404();
        }

        else
        {
          v99 = v136;
          v100 = v97;
          v101 = v158;
          (*v155)(v136, v100, v158);
          MEMORY[0x24C23C8D0](0);
          sub_24B2BF448(&unk_27EFC7E58, MEMORY[0x277D08BF8]);
          sub_24B2D5254();
          (*v157)(v99, v101);
        }

        v102 = v159;
        v103 = sub_24B2D6124();
        v104 = -1 << *(v166 + 32);
        a1 = v103 & ~v104;
        v105 = a1 >> 6;
        v106 = 1 << a1;
        if (((1 << a1) & v163[a1 >> 6]) == 0)
        {
LABEL_43:
          sub_24B2BF3E8(v162, type metadata accessor for SettingsContactsProvider.Subscription);
          v84 = i;
          v85 = v141;
          v46 = v145;
          v86 = v142;
          v87 = v153;
          v50 = v152;
          continue;
        }

        v160 = ~v104;
LABEL_64:
        sub_24B2BF490(*(v166 + 48) + a1 * v164, v102, type metadata accessor for SettingsContactsProvider.Subscription);
        v107 = &v5[*(v161 + 48)];
        sub_24B2BF490(v102, v5, type metadata accessor for SettingsContactsProvider.Subscription);
        sub_24B2BF490(v162, v107, type metadata accessor for SettingsContactsProvider.Subscription);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v108 = v156;
          sub_24B2BF490(v5, v156, type metadata accessor for SettingsContactsProvider.Subscription);
          v109 = *v108;
          v110 = v108[1];
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v111 = *v107;
            v112 = *(v107 + 1);
            v113 = v109 == v111 && v110 == v112;
            v102 = v159;
            if (v113)
            {

              sub_24B2BF3E8(v102, type metadata accessor for SettingsContactsProvider.Subscription);
LABEL_78:
              sub_24B2BF3E8(v5, type metadata accessor for SettingsContactsProvider.Subscription);
              sub_24B2BF3E8(v162, type metadata accessor for SettingsContactsProvider.Subscription);
              v122 = *(v151 + 8 * v105);
              *(v151 + 8 * v105) = v122 & ~v106;
              v84 = i;
              v85 = v141;
              v46 = v145;
              v86 = v142;
              v87 = v153;
              v50 = v152;
              if ((v122 & v106) != 0)
              {
                v83 = v147 - 1;
                if (__OFSUB__(v147, 1))
                {
                  __break(1u);
                }

                if (v147 == 1)
                {

                  v166 = MEMORY[0x277D84FA0];
                  goto LABEL_83;
                }

                goto LABEL_42;
              }

              continue;
            }

            v114 = sub_24B2D6004();

            sub_24B2BF3E8(v102, type metadata accessor for SettingsContactsProvider.Subscription);
            if (v114)
            {
              goto LABEL_78;
            }

LABEL_74:
            sub_24B2BF3E8(v5, type metadata accessor for SettingsContactsProvider.Subscription);
LABEL_63:
            a1 = (a1 + 1) & v160;
            v105 = a1 >> 6;
            v106 = 1 << a1;
            if ((v163[a1 >> 6] & (1 << a1)) == 0)
            {
              goto LABEL_43;
            }

            goto LABEL_64;
          }

          v102 = v159;
          sub_24B2BF3E8(v159, type metadata accessor for SettingsContactsProvider.Subscription);
        }

        else
        {
          sub_24B2BF490(v5, v165, type metadata accessor for SettingsContactsProvider.Subscription);
          if (swift_getEnumCaseMultiPayload() != 1)
          {
            v115 = v5;
            v116 = v19;
            v117 = v154;
            v118 = v158;
            (*v155)(v154, v107, v158);
            v119 = _s12FindMyUICore35SettingsPeopleRelationshipsProviderC12SubscriptionO10IdentifierV2eeoiySbAG_AGtFZ_0();
            v120 = *v157;
            v121 = v117;
            v19 = v116;
            v5 = v115;
            v102 = v159;
            (*v157)(v121, v118);
            sub_24B2BF3E8(v102, type metadata accessor for SettingsContactsProvider.Subscription);
            v120(v165, v118);
            v9 = 1;
            if (v119)
            {
              goto LABEL_78;
            }

            goto LABEL_74;
          }

          sub_24B2BF3E8(v102, type metadata accessor for SettingsContactsProvider.Subscription);
          (*v157)(v165, v158);
        }

        sub_24AFF8258(v5, &qword_27EFCDBC8);
        goto LABEL_63;
      }

      break;
    }

    if (v86 <= (v87 + 1))
    {
      v89 = v87 + 1;
    }

    else
    {
      v89 = v86;
    }

    v90 = v89 - 1;
    while (1)
    {
      v88 = v87 + 1;
      if (__OFADD__(v87, 1))
      {
        break;
      }

      if (v88 >= v86)
      {
        v92 = 0;
        v93 = 1;
        v87 = v90;
        goto LABEL_55;
      }

      v50 = *(v46 + 8 * v88);
      ++v87;
      if (v50)
      {
        v87 = v88;
        goto LABEL_54;
      }
    }

    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    v124 = v45;

    v125 = v124;
    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v126 = swift_slowAlloc();
  memcpy(v126, v163, v125);
  v127 = v130;
  sub_24B2B69A4(v126, v50, v166, v46, &v167);
  v129 = v128;

  if (v127)
  {

    result = MEMORY[0x24C23D530](v126, -1, -1);
    __break(1u);
  }

  else
  {

    MEMORY[0x24C23D530](v126, -1, -1);
    v166 = v129;
LABEL_83:
    sub_24B0363BC();
    return v166;
  }

  return result;
}

uint64_t sub_24B2B00F8(uint64_t a1, uint64_t a2)
{
  v6 = a2;
  v53 = *MEMORY[0x277D85DE8];
  if (*(a2 + 16))
  {
    v46 = a1;
    v47 = 0;
    v8 = a1 + 56;
    v7 = *(a1 + 56);
    v9 = -1 << *(a1 + 32);
    v45 = ~v9;
    if (-v9 < 64)
    {
      v10 = ~(-1 << -v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & v7;
    v12 = (63 - v9) >> 6;
    v13 = a2 + 56;
    v14 = 1;
    while (1)
    {
      do
      {
        if (!v11)
        {
          v15 = v46;
          v16 = v47;
          while (1)
          {
            v17 = v16 + 1;
            if (__OFADD__(v16, 1))
            {
              break;
            }

            if (v17 >= v12)
            {

              goto LABEL_43;
            }

            v11 = *(v8 + 8 * v17);
            ++v16;
            if (v11)
            {
              v47 = v17;
              goto LABEL_13;
            }
          }

LABEL_46:
          __break(1u);
          goto LABEL_47;
        }

        v15 = v46;
LABEL_13:
        v18 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v5 = *(*(v15 + 48) + (v18 | (v47 << 6)));
        sub_24B2D60E4();
        MEMORY[0x24C23C8D0](0);
        sub_24B2D6104();
        v19 = sub_24B2D6124();
        v20 = -1 << *(v6 + 32);
        v2 = v19 & ~v20;
        v3 = v2 >> 6;
        v4 = 1 << v2;
      }

      while (((1 << v2) & *(v13 + 8 * (v2 >> 6))) == 0);
      v21 = *(v6 + 48);
      if (v5 == *(v21 + v2))
      {
        break;
      }

      while (1)
      {
        v2 = (v2 + 1) & ~v20;
        v3 = v2 >> 6;
        v4 = 1 << v2;
        if (((1 << v2) & *(v13 + 8 * (v2 >> 6))) == 0)
        {
          break;
        }

        if (v5 == *(v21 + v2))
        {
          goto LABEL_17;
        }
      }
    }

LABEL_17:
    v50 = v45;
    v51 = v47;
    v52 = v11;
    v49[0] = v46;
    v49[1] = v8;
    v14 = (63 - v20) >> 6;
    v5 = 8 * v14;

    if (v14 <= 0x80)
    {
      goto LABEL_18;
    }

LABEL_47:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v39 = swift_slowAlloc();
      memcpy(v39, (v6 + 56), v5);
      v40 = sub_24B2B7340(v39, v14, v6, v2, v49);

      MEMORY[0x24C23D530](v39, -1, -1);
      v45 = v50;
      v47 = v51;
      v6 = v40;
      goto LABEL_43;
    }

LABEL_18:
    v42 = v14;
    v43 = &v41;
    MEMORY[0x28223BE20](v22);
    v14 = &v41 - v23;
    memcpy(&v41 - v23, (v6 + 56), v5);
    v24 = *(v6 + 16);
    *(v14 + 8 * v3) &= ~v4;
    v25 = v24 - 1;
    v3 = 1;
    v4 = v46;
LABEL_19:
    v44 = v25;
    while (v11)
    {
LABEL_27:
      v29 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v5 = *(*(v4 + 48) + (v29 | (v47 << 6)));
      sub_24B2D60E4();
      v2 = &v48;
      MEMORY[0x24C23C8D0](0);
      sub_24B2D6104();
      v30 = sub_24B2D6124();
      v31 = -1 << *(v6 + 32);
      v32 = v30 & ~v31;
      v33 = v32 >> 6;
      v34 = 1 << v32;
      if (((1 << v32) & *(v13 + 8 * (v32 >> 6))) != 0)
      {
        v35 = *(v6 + 48);
        if (v5 == *(v35 + v32))
        {
LABEL_20:
          v26 = *(v14 + 8 * v33);
          *(v14 + 8 * v33) = v26 & ~v34;
          if ((v26 & v34) != 0)
          {
            v25 = v44 - 1;
            if (__OFSUB__(v44, 1))
            {
              __break(1u);
            }

            if (v44 == 1)
            {

              v6 = MEMORY[0x277D84FA0];
              goto LABEL_43;
            }

            goto LABEL_19;
          }
        }

        else
        {
          v36 = ~v31;
          while (1)
          {
            v32 = (v32 + 1) & v36;
            v33 = v32 >> 6;
            v34 = 1 << v32;
            if (((1 << v32) & *(v13 + 8 * (v32 >> 6))) == 0)
            {
              break;
            }

            if (v5 == *(v35 + v32))
            {
              goto LABEL_20;
            }
          }
        }
      }
    }

    v27 = v47;
    while (1)
    {
      v28 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        goto LABEL_46;
      }

      if (v28 >= v12)
      {
        break;
      }

      v11 = *(v8 + 8 * v28);
      ++v27;
      if (v11)
      {
        v47 = v28;
        goto LABEL_27;
      }
    }

    if (v12 <= v47 + 1)
    {
      v37 = v47 + 1;
    }

    else
    {
      v37 = v12;
    }

    v47 = v37 - 1;
    v6 = sub_24B2A2FF4(v14, v42, v44, v6);
LABEL_43:
    sub_24B0363BC();
  }

  else
  {

    return MEMORY[0x277D84FA0];
  }

  return v6;
}

uint64_t sub_24B2B0588(uint64_t a1, uint64_t a2)
{
  v167 = *MEMORY[0x277D85DE8];
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC7A8);
  MEMORY[0x28223BE20](v154);
  v5 = &v127 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v127 - v7;
  v161 = type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier(0);
  v9 = *(v161 - 8);
  MEMORY[0x28223BE20](v161);
  v152 = &v127 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v132 = &v127 - v12;
  MEMORY[0x28223BE20](v13);
  v133 = &v127 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC85C0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v127 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v130 = &v127 - v19;
  v146 = type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription(0);
  v20 = *(v146 - 8);
  MEMORY[0x28223BE20](v146);
  v153 = &v127 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v127 - v23;
  MEMORY[0x28223BE20](v25);
  v136 = &v127 - v26;
  MEMORY[0x28223BE20](v27);
  v155 = &v127 - v28;
  MEMORY[0x28223BE20](v29);
  MEMORY[0x28223BE20](v30);
  v135 = (&v127 - v31);
  MEMORY[0x28223BE20](v32);
  MEMORY[0x28223BE20](v33);
  v150 = &v127 - v36;
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v129 = v35;
  v134 = v34;
  v137 = v17;
  v128 = 0;
  v37 = a1;
  v39 = a1 + 56;
  v38 = *(a1 + 56);
  v40 = -1 << *(a1 + 32);
  v144 = ~v40;
  if (-v40 < 64)
  {
    v41 = ~(-1 << -v40);
  }

  else
  {
    v41 = -1;
  }

  v42 = (v41 & v38);
  v138 = (63 - v40) >> 6;
  v143 = (v20 + 56);
  v142 = (v20 + 48);
  v43 = v9 + 48;
  v156 = (a2 + 56);
  v145 = v37;

  v45 = 0;
  v141 = v39;
  v160 = (v9 + 48);
  v46 = a2;
  v131 = v20;
  v158 = a2;
  while (1)
  {
    v47 = v42;
    v48 = v45;
    v159 = v42;
    v157 = v45;
    if (v42)
    {
LABEL_16:
      v52 = (v47 - 1) & v47;
      v53 = v145;
      v54 = v130;
      sub_24B2BF490(*(v145 + 48) + *(v20 + 72) * (__clz(__rbit64(v47)) | (v48 << 6)), v130, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
      v55 = 0;
      v50 = v48;
    }

    else
    {
      v49 = v138 <= v45 + 1 ? v45 + 1 : v138;
      v50 = v49 - 1;
      v51 = v45;
      while (1)
      {
        v48 = v51 + 1;
        if (__OFADD__(v51, 1))
        {
          goto LABEL_73;
        }

        if (v48 >= v138)
        {
          break;
        }

        v47 = *(v39 + 8 * v48);
        ++v51;
        if (v47)
        {
          v20 = v131;
          goto LABEL_16;
        }
      }

      v52 = 0;
      v55 = 1;
      v53 = v145;
      v54 = v130;
    }

    v56 = v146;
    v140 = *v143;
    v140(v54, v55, 1, v146);
    v162 = v53;
    v163 = v39;
    v164 = v144;
    v165 = v50;
    v151 = v52;
    v166 = v52;
    v139 = *v142;
    v57 = v139(v54, 1, v56);
    v58 = v161;
    if (v57 == 1)
    {
      sub_24AFF8258(v54, &qword_27EFC85C0);
      sub_24B0363BC();
      return v46;
    }

    v59 = v54;
    v60 = v150;
    sub_24B2BF380(v59, v150, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
    sub_24B2D60E4();
    v61 = v60;
    v62 = v129;
    sub_24B2BF490(v61, v129, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
    v159 = *v160;
    if (v159(v62, 1, v58) == 1)
    {
      MEMORY[0x24C23C8D0](0);
    }

    else
    {
      v63 = v133;
      sub_24B2BF380(v62, v133, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
      MEMORY[0x24C23C8D0](1);
      sub_24B2D1704();
      sub_24B2BF448(&unk_27EFC7E58, MEMORY[0x277D08BF8]);
      sub_24B2D5254();
      sub_24B2BF3E8(v63, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
    }

    v64 = v135;
    v65 = sub_24B2D6124();
    v66 = -1 << *(v46 + 32);
    v43 = v65 & ~v66;
    v67 = v43 >> 6;
    v68 = 1 << v43;
    if (((1 << v43) & v156[v43 >> 6]) != 0)
    {
      break;
    }

LABEL_6:
    sub_24B2BF3E8(v150, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
    v45 = v50;
    v42 = v151;
    v39 = v141;
    v20 = v131;
  }

  v149 = ~v66;
  v157 = *(v131 + 72);
  while (1)
  {
    v147 = v68;
    v148 = v67;
    sub_24B2BF490(*(v46 + 48) + v157 * v43, v64, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
    v70 = *(v154 + 48);
    sub_24B2BF490(v64, v8, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
    sub_24B2BF490(v150, &v8[v70], type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
    v71 = v8;
    v72 = v161;
    v73 = v8;
    v74 = v159;
    if (v159(v71, 1, v161) == 1)
    {
      sub_24B2BF3E8(v64, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
      v69 = v74(v73 + v70, 1, v72);
      v8 = v73;
      if (v69 == 1)
      {
        goto LABEL_32;
      }

      goto LABEL_24;
    }

    v75 = v134;
    sub_24B2BF490(v73, v134, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
    if (v74(v73 + v70, 1, v72) != 1)
    {
      break;
    }

    v76 = v135;
    sub_24B2BF3E8(v135, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
    v77 = v75;
    v64 = v76;
    sub_24B2BF3E8(v77, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
    v8 = v73;
LABEL_24:
    sub_24AFF8258(v8, &qword_27EFCC7A8);
LABEL_25:
    v46 = v158;
    v43 = (v43 + 1) & v149;
    v67 = v43 >> 6;
    v68 = 1 << v43;
    if ((v156[v43 >> 6] & (1 << v43)) == 0)
    {
      goto LABEL_6;
    }
  }

  v78 = v132;
  sub_24B2BF380(v73 + v70, v132, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
  MyUICore35SettingsPeopleRelationshipsProviderC12SubscriptionO10IdentifierV2eeoiySbAG_AGtFZ_0 = _s12FindMyUICore35SettingsPeopleRelationshipsProviderC12SubscriptionO10IdentifierV2eeoiySbAG_AGtFZ_0();
  sub_24B2BF3E8(v78, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
  v80 = v135;
  sub_24B2BF3E8(v135, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
  v81 = v75;
  v64 = v80;
  sub_24B2BF3E8(v81, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
  v8 = v73;
  if ((MyUICore35SettingsPeopleRelationshipsProviderC12SubscriptionO10IdentifierV2eeoiySbAG_AGtFZ_0 & 1) == 0)
  {
    sub_24B2BF3E8(v73, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
    goto LABEL_25;
  }

LABEL_32:
  sub_24B2BF3E8(v8, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
  v82 = sub_24B2BF3E8(v150, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
  v46 = v158;
  v83 = *(v158 + 32);
  v134 = ((1 << v83) + 63) >> 6;
  v44 = 8 * v134;
  v84 = v145;
  if ((v83 & 0x3Fu) > 0xD)
  {
    goto LABEL_74;
  }

  while (2)
  {
    v135 = &v127;
    MEMORY[0x28223BE20](v82);
    v86 = &v127 - ((v85 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v86, v156, v85);
    v87 = *&v86[8 * v148] & ~v147;
    v149 = v86;
    *&v86[8 * v148] = v87;
    v88 = *(v46 + 16) - 1;
    v43 = v137;
    v89 = v141;
    v90 = v138;
    v91 = v151;
LABEL_34:
    v148 = v88;
    while (2)
    {
      if (v91)
      {
        v92 = v46;
        v93 = v50;
        v94 = v161;
LABEL_46:
        v97 = (v91 - 1) & v91;
        sub_24B2BF490(*(v84 + 48) + (__clz(__rbit64(v91)) | (v93 << 6)) * v157, v43, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
        v98 = 0;
LABEL_47:
        v99 = v146;
        v140(v43, v98, 1, v146);
        v162 = v84;
        v163 = v89;
        v164 = v144;
        v165 = v50;
        v151 = v97;
        v166 = v97;
        if (v139(v43, 1, v99) == 1)
        {
          sub_24AFF8258(v43, &qword_27EFC85C0);
          v46 = sub_24B2A3208(v149, v134, v148, v92);
          goto LABEL_68;
        }

        v100 = v43;
        v101 = v155;
        sub_24B2BF380(v100, v155, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
        sub_24B2D60E4();
        v102 = v101;
        v103 = v136;
        sub_24B2BF490(v102, v136, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
        if (v159(v103, 1, v94) == 1)
        {
          MEMORY[0x24C23C8D0](0);
        }

        else
        {
          v104 = v133;
          sub_24B2BF380(v103, v133, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
          MEMORY[0x24C23C8D0](1);
          sub_24B2D1704();
          sub_24B2BF448(&unk_27EFC7E58, MEMORY[0x277D08BF8]);
          sub_24B2D5254();
          sub_24B2BF3E8(v104, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
        }

        v150 = v50;
        v105 = sub_24B2D6124();
        v106 = -1 << *(v92 + 32);
        v107 = v105 & ~v106;
        v108 = v107 >> 6;
        v109 = 1 << v107;
        if (((1 << v107) & v156[v107 >> 6]) == 0)
        {
LABEL_35:
          sub_24B2BF3E8(v155, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
          v46 = v158;
          v84 = v145;
          v43 = v137;
          v89 = v141;
          v90 = v138;
          v50 = v150;
          v91 = v151;
          continue;
        }

        v110 = ~v106;
LABEL_56:
        sub_24B2BF490(*(v158 + 48) + v107 * v157, v24, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
        v111 = *(v154 + 48);
        sub_24B2BF490(v24, v5, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
        sub_24B2BF490(v155, &v5[v111], type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
        v112 = v161;
        v113 = v159;
        if (v159(v5, 1, v161) == 1)
        {
          sub_24B2BF3E8(v24, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
          if (v113(&v5[v111], 1, v112) == 1)
          {
            goto LABEL_61;
          }

LABEL_54:
          sub_24AFF8258(v5, &qword_27EFCC7A8);
        }

        else
        {
          sub_24B2BF490(v5, v153, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
          if (v113(&v5[v111], 1, v112) == 1)
          {
            sub_24B2BF3E8(v24, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
            sub_24B2BF3E8(v153, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
            goto LABEL_54;
          }

          v114 = v24;
          v115 = v153;
          v116 = v152;
          sub_24B2BF380(&v5[v111], v152, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
          v117 = _s12FindMyUICore35SettingsPeopleRelationshipsProviderC12SubscriptionO10IdentifierV2eeoiySbAG_AGtFZ_0();
          v118 = v116;
          v119 = v115;
          v24 = v114;
          sub_24B2BF3E8(v118, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
          sub_24B2BF3E8(v114, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
          sub_24B2BF3E8(v119, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
          if (v117)
          {
LABEL_61:
            sub_24B2BF3E8(v5, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
            sub_24B2BF3E8(v155, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
            v120 = *(v149 + 8 * v108);
            *(v149 + 8 * v108) = v120 & ~v109;
            v46 = v158;
            v84 = v145;
            v43 = v137;
            v89 = v141;
            v90 = v138;
            v50 = v150;
            v91 = v151;
            if ((v120 & v109) != 0)
            {
              v88 = v148 - 1;
              if (__OFSUB__(v148, 1))
              {
                __break(1u);
              }

              if (v148 == 1)
              {

                v46 = MEMORY[0x277D84FA0];
                goto LABEL_68;
              }

              goto LABEL_34;
            }

            continue;
          }

          sub_24B2BF3E8(v5, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
        }

        v107 = (v107 + 1) & v110;
        v108 = v107 >> 6;
        v109 = 1 << v107;
        if ((v156[v107 >> 6] & (1 << v107)) == 0)
        {
          goto LABEL_35;
        }

        goto LABEL_56;
      }

      break;
    }

    if (v90 <= v50 + 1)
    {
      v95 = v50 + 1;
    }

    else
    {
      v95 = v90;
    }

    v96 = v95 - 1;
    while (1)
    {
      v93 = v50 + 1;
      if (__OFADD__(v50, 1))
      {
        break;
      }

      if (v93 >= v90)
      {
        v92 = v46;
        v97 = 0;
        v98 = 1;
        v50 = v96;
        v94 = v161;
        goto LABEL_47;
      }

      v91 = *(v89 + 8 * v93);
      ++v50;
      if (v91)
      {
        v92 = v46;
        v50 = v93;
        v94 = v161;
        goto LABEL_46;
      }
    }

    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    v122 = v44;

    if (swift_stdlib_isStackAllocationSafe())
    {

      v84 = v145;
      continue;
    }

    break;
  }

  v123 = swift_slowAlloc();
  memcpy(v123, v156, v122);
  v124 = v128;
  sub_24B2B7520(v123, v134, v46, v43, &v162);
  v126 = v125;

  if (v124)
  {

    result = MEMORY[0x24C23D530](v123, -1, -1);
    __break(1u);
  }

  else
  {

    MEMORY[0x24C23D530](v123, -1, -1);
    v46 = v126;
LABEL_68:
    sub_24B0363BC();
    return v46;
  }

  return result;
}

uint64_t sub_24B2B1810(uint64_t a1, uint64_t a2)
{

  return sub_24B2B18E0(a1, a2, &qword_27EFCC790, &unk_24B2EC000);
}

uint64_t sub_24B2B1878(uint64_t a1, uint64_t a2)
{

  return sub_24B2B18E0(a1, a2, &qword_27EFCC798, &unk_24B2EC008);
}

uint64_t sub_24B2B18E0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v7 = a2;
  v50 = *MEMORY[0x277D85DE8];
  if (*(a2 + 16))
  {
    v40 = a3;
    v41 = a4;
    v39 = 0;
    v8 = 0;
    v10 = a1 + 56;
    v9 = *(a1 + 56);
    v11 = -1 << *(a1 + 32);
    v42 = a1;
    v43 = ~v11;
    if (-v11 < 64)
    {
      v12 = ~(-1 << -v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & v9;
    v14 = (63 - v11) >> 6;
    v44 = (a2 + 56);
    v15 = 1;
    do
    {
      if (!v13)
      {
        v18 = v8;
        while (1)
        {
          v19 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            __break(1u);
            goto LABEL_32;
          }

          if (v19 >= v14)
          {
            break;
          }

          v13 = *(v10 + 8 * v19);
          ++v18;
          if (v13)
          {
            v8 = v19;
            goto LABEL_6;
          }
        }

        goto LABEL_14;
      }

LABEL_6:
      v13 &= v13 - 1;
      sub_24B2D60E4();
      MEMORY[0x24C23C8D0](0);
      v16 = sub_24B2D6124();
      v17 = -1 << *(v7 + 32);
      v5 = v16 & ~v17;
      v4 = v5 >> 6;
      v6 = 1 << v5;
    }

    while (((1 << v5) & v44[v5 >> 6]) == 0);
    v46[0] = v42;
    v46[1] = v10;
    v47 = v43;
    v48 = v8;
    v49 = v13;
    v21 = (63 - v17) >> 6;
    v15 = 8 * v21;

    v37 = v21;
    if (v21 >= 0x81)
    {
      goto LABEL_33;
    }

    while (1)
    {
      v38 = &v36;
      MEMORY[0x28223BE20](v22);
      v5 = &v36 - ((v15 + 15) & 0x3FFFFFFFFFFFFFF0);
      memcpy(v5, v44, v15);
      v23 = *(v7 + 16);
      *(v5 + 8 * v4) &= ~v6;
      v6 = v23 - 1;
      v24 = v8;
      v8 = -1;
      while (v13)
      {
LABEL_25:
        v13 &= v13 - 1;
        sub_24B2D60E4();
        v4 = &v45;
        MEMORY[0x24C23C8D0](0);
        v27 = sub_24B2D6124() & ~(-1 << *(v7 + 32));
        v28 = v27 >> 6;
        v29 = v44[v27 >> 6];
        v30 = 1 << v27;
        if ((v30 & v29) != 0)
        {
          v31 = *(v5 + 8 * v28);
          *(v5 + 8 * v28) = v31 & ~v30;
          if ((v31 & v30) != 0)
          {
            if (__OFSUB__(v6--, 1))
            {
              __break(1u);
            }

            if (!v6)
            {

              v7 = MEMORY[0x277D84FA0];
              goto LABEL_14;
            }
          }
        }
      }

      v25 = v24;
      while (1)
      {
        v26 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          break;
        }

        if (v26 >= v14)
        {
          v7 = sub_24B2A366C((&v36 - ((v15 + 15) & 0x3FFFFFFFFFFFFFF0)), v37, v6, v7, v40);
          goto LABEL_14;
        }

        v13 = *(v10 + 8 * v26);
        ++v25;
        if (v13)
        {
          v24 = v26;
          goto LABEL_25;
        }
      }

LABEL_32:
      __break(1u);
LABEL_33:

      if (!swift_stdlib_isStackAllocationSafe())
      {
        break;
      }
    }

    v33 = swift_slowAlloc();
    memcpy(v33, v44, v15);
    v34 = v39;
    v35 = sub_24B2B7DF8(v33, v37, v7, v5, v46, v40);

    if (!v34)
    {

      MEMORY[0x24C23D530](v33, -1, -1);
      v43 = v47;
      v7 = v35;
LABEL_14:
      sub_24B0363BC();
      return v7;
    }

    result = MEMORY[0x24C23D530](v33, -1, -1);
    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_24B2B1CCC(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v74 = a2;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFC8650);
  MEMORY[0x28223BE20](v92);
  v10 = &v73 - v9;
  v80 = _s14descr285E46659O16SubscriptionDataO9LocationsVMa(0);
  v11 = MEMORY[0x28223BE20](v80);
  v13 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v77 = &v73 - v14;
  v15 = _s14descr285E46659O16SubscriptionDataO10DirectionsVMa(0);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v87 = &v73 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v76 = &v73 - v18;
  v19 = _s14descr285E46659O16SubscriptionDataO10FriendshipVMa(0);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v81 = &v73 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v75 = &v73 - v22;
  v23 = _s14descr285E46659O16SubscriptionDataOMa(0);
  v84 = *(v23 - 8);
  v24 = MEMORY[0x28223BE20](v23);
  v90 = &v73 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v91 = &v73 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v89 = &v73 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v98 = &v73 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v88 = &v73 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v83 = &v73 - v35;
  result = MEMORY[0x28223BE20](v34);
  v97 = &v73 - v37;
  v38 = *(a3 + 16);
  v39 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v40 = *(a1 + v39) & ((-1 << a4) - 1);
  v78 = a1;
  *(a1 + v39) = v40;
  v79 = v38 - 1;
  v41 = *a5;
  v42 = a5[1];
  v43 = *(*a5 + 16);
  if (v42 == v43)
  {
LABEL_2:

    return sub_24B2A0C50(v78, v74, v79, a3);
  }

  v94 = a3 + 56;
  v82 = a5;
  v86 = v13;
  v96 = a3;
  v85 = v23;
  while (2)
  {
    if (v42 >= v43)
    {
      __break(1u);
      break;
    }

    v44 = v41 + ((*(v84 + 80) + 32) & ~*(v84 + 80));
    v95 = *(v84 + 72);
    v45 = v83;
    sub_24B2BF490(v44 + v95 * v42, v83, _s14descr285E46659O16SubscriptionDataOMa);
    a5[1] = v42 + 1;
    v46 = v97;
    sub_24B2BF380(v45, v97, _s14descr285E46659O16SubscriptionDataOMa);
    sub_24B2D60E4();
    sub_24B2BF490(v46, v88, _s14descr285E46659O16SubscriptionDataOMa);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        v48 = v76;
        sub_24B2BF380(v88, v76, _s14descr285E46659O16SubscriptionDataO10DirectionsVMa);
        MEMORY[0x24C23C8D0](3);
        sub_24B2D1704();
        sub_24B2BF448(&unk_27EFC7E58, MEMORY[0x277D08BF8]);
        sub_24B2D5254();
        v49 = _s14descr285E46659O16SubscriptionDataO10DirectionsVMa;
      }

      else
      {
        v48 = v75;
        sub_24B2BF380(v88, v75, _s14descr285E46659O16SubscriptionDataO10FriendshipVMa);
        MEMORY[0x24C23C8D0](2);
        sub_24B2D1704();
        sub_24B2BF448(&unk_27EFC7E58, MEMORY[0x277D08BF8]);
        sub_24B2D5254();
        v49 = _s14descr285E46659O16SubscriptionDataO10FriendshipVMa;
      }
    }

    else
    {
      if (EnumCaseMultiPayload != 2)
      {
        if (EnumCaseMultiPayload == 3)
        {
          MEMORY[0x24C23C8D0](0);
        }

        else
        {
          MEMORY[0x24C23C8D0](1);
        }

        goto LABEL_17;
      }

      v48 = v77;
      sub_24B2BF380(v88, v77, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
      MEMORY[0x24C23C8D0](4);
      sub_24B2D1704();
      sub_24B2BF448(&unk_27EFC7E58, MEMORY[0x277D08BF8]);
      sub_24B2D5254();
      sub_24B2D6104();
      v49 = _s14descr285E46659O16SubscriptionDataO9LocationsVMa;
    }

    sub_24B2BF3E8(v48, v49);
LABEL_17:
    v50 = sub_24B2D6124();
    v51 = -1 << *(a3 + 32);
    v52 = v50 & ~v51;
    v53 = v52 >> 6;
    v54 = 1 << v52;
    if (((1 << v52) & *(v94 + 8 * (v52 >> 6))) == 0)
    {
LABEL_4:
      result = sub_24B2BF3E8(v97, _s14descr285E46659O16SubscriptionDataOMa);
      a3 = v96;
      goto LABEL_5;
    }

    v93 = ~v51;
    while (1)
    {
      v55 = v98;
      sub_24B2BF490(*(v96 + 48) + v52 * v95, v98, _s14descr285E46659O16SubscriptionDataOMa);
      v56 = *(v92 + 48);
      sub_24B2BF490(v55, v10, _s14descr285E46659O16SubscriptionDataOMa);
      sub_24B2BF490(v97, &v10[v56], _s14descr285E46659O16SubscriptionDataOMa);
      v57 = swift_getEnumCaseMultiPayload();
      if (v57 > 1)
      {
        break;
      }

      v59 = v91;
      if (v57)
      {
        sub_24B2BF490(v10, v91, _s14descr285E46659O16SubscriptionDataOMa);
        v58 = v23;
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v67 = v87;
          sub_24B2BF380(&v10[v56], v87, _s14descr285E46659O16SubscriptionDataO10DirectionsVMa);
          sub_24B2D1704();
          sub_24B2BF448(&qword_27EFC7E90, MEMORY[0x277D08BF8]);
          v68 = sub_24B2D52A4();
          v69 = _s14descr285E46659O16SubscriptionDataO10DirectionsVMa;
LABEL_43:
          v70 = v69;
          sub_24B2BF3E8(v67, v69);
          sub_24B2BF3E8(v98, _s14descr285E46659O16SubscriptionDataOMa);
          sub_24B2BF3E8(v59, v70);
          if (v68)
          {
            goto LABEL_47;
          }

          sub_24B2BF3E8(v10, _s14descr285E46659O16SubscriptionDataOMa);
          goto LABEL_39;
        }

        sub_24B2BF3E8(v98, _s14descr285E46659O16SubscriptionDataOMa);
        v60 = _s14descr285E46659O16SubscriptionDataO10DirectionsVMa;
      }

      else
      {
        v59 = v89;
        sub_24B2BF490(v10, v89, _s14descr285E46659O16SubscriptionDataOMa);
        v58 = v23;
        if (!swift_getEnumCaseMultiPayload())
        {
          v67 = v81;
          sub_24B2BF380(&v10[v56], v81, _s14descr285E46659O16SubscriptionDataO10FriendshipVMa);
          sub_24B2D1704();
          sub_24B2BF448(&qword_27EFC7E90, MEMORY[0x277D08BF8]);
          v68 = sub_24B2D52A4();
          v69 = _s14descr285E46659O16SubscriptionDataO10FriendshipVMa;
          goto LABEL_43;
        }

        sub_24B2BF3E8(v98, _s14descr285E46659O16SubscriptionDataOMa);
        v60 = _s14descr285E46659O16SubscriptionDataO10FriendshipVMa;
      }

      sub_24B2BF3E8(v59, v60);
LABEL_38:
      sub_24AFF8258(v10, &unk_27EFC8650);
LABEL_39:
      v23 = v58;
LABEL_40:
      v52 = (v52 + 1) & v93;
      v53 = v52 >> 6;
      v54 = 1 << v52;
      if ((*(v94 + 8 * (v52 >> 6)) & (1 << v52)) == 0)
      {
        goto LABEL_4;
      }
    }

    if (v57 != 2)
    {
      if (v57 == 3)
      {
        sub_24B2BF3E8(v98, _s14descr285E46659O16SubscriptionDataOMa);
        v58 = v23;
        if (swift_getEnumCaseMultiPayload() == 3)
        {
          goto LABEL_47;
        }
      }

      else
      {
        sub_24B2BF3E8(v98, _s14descr285E46659O16SubscriptionDataOMa);
        v58 = v23;
        if (swift_getEnumCaseMultiPayload() == 4)
        {
          goto LABEL_47;
        }
      }

      goto LABEL_38;
    }

    v61 = v90;
    sub_24B2BF490(v10, v90, _s14descr285E46659O16SubscriptionDataOMa);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      v58 = v23;
      sub_24B2BF3E8(v98, _s14descr285E46659O16SubscriptionDataOMa);
      sub_24B2BF3E8(v61, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
      goto LABEL_38;
    }

    v62 = v86;
    sub_24B2BF380(&v10[v56], v86, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
    sub_24B2D1704();
    sub_24B2BF448(&qword_27EFC7E90, MEMORY[0x277D08BF8]);
    v63 = sub_24B2D52A4();
    sub_24B2BF3E8(v98, _s14descr285E46659O16SubscriptionDataOMa);
    if ((v63 & 1) == 0)
    {
      sub_24B2BF3E8(v62, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
      goto LABEL_46;
    }

    v64 = *(v80 + 20);
    v65 = *(v61 + v64);
    v66 = *(v62 + v64);
    sub_24B2BF3E8(v62, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
    if (v65 != v66)
    {
LABEL_46:
      sub_24B2BF3E8(v61, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
      sub_24B2BF3E8(v10, _s14descr285E46659O16SubscriptionDataOMa);
      v23 = v85;
      goto LABEL_40;
    }

    sub_24B2BF3E8(v61, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
    v58 = v85;
LABEL_47:
    sub_24B2BF3E8(v10, _s14descr285E46659O16SubscriptionDataOMa);
    result = sub_24B2BF3E8(v97, _s14descr285E46659O16SubscriptionDataOMa);
    v71 = v78[v53];
    v78[v53] = v71 & ~v54;
    if ((v71 & v54) == 0)
    {
      a3 = v96;
      v23 = v58;
      goto LABEL_5;
    }

    v72 = v79 - 1;
    a3 = v96;
    if (!__OFSUB__(v79, 1))
    {
      --v79;
      v23 = v58;
      if (!v72)
      {
        return MEMORY[0x277D84FA0];
      }

LABEL_5:
      a5 = v82;
      v41 = *v82;
      v42 = v82[1];
      v43 = *(*v82 + 16);
      if (v42 == v43)
      {
        goto LABEL_2;
      }

      continue;
    }

    break;
  }

  __break(1u);
  return result;
}

uint64_t sub_24B2B2A18(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v101 = a5;
  v86[0] = a2;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFC8650);
  MEMORY[0x28223BE20](v105);
  v9 = v86 - v8;
  v92 = _s14descr285E46659O16SubscriptionDataO9LocationsVMa(0);
  v10 = MEMORY[0x28223BE20](v92);
  v98 = v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v90 = v86 - v12;
  v13 = _s14descr285E46659O16SubscriptionDataO10DirectionsVMa(0);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v97 = v86 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v89 = v86 - v16;
  v17 = _s14descr285E46659O16SubscriptionDataO10FriendshipVMa(0);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v93 = v86 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v88 = v86 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF898);
  MEMORY[0x28223BE20](v21 - 8);
  v96 = v86 - v22;
  v23 = _s14descr285E46659O16SubscriptionDataOMa(0);
  v24 = MEMORY[0x28223BE20](v23);
  v103 = v86 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v102 = v86 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v104 = v86 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v111 = v86 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v100 = v86 - v33;
  result = MEMORY[0x28223BE20](v32);
  v109 = v86 - v35;
  v36 = *(a3 + 16);
  v37 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v38 = *(a1 + v37) & ((-1 << a4) - 1);
  v91 = a1;
  *(a1 + v37) = v38;
  v39 = v36 - 1;
  v95 = (v40 + 56);
  v99 = v40;
  v94 = (v40 + 48);
  v110 = a3;
  v108 = a3 + 56;
LABEL_2:
  v87 = v39;
LABEL_4:
  while (2)
  {
    v41 = *v101;
    v42 = v101[1];
    v44 = v101[2];
    v43 = v101[3];
    v45 = v101[4];
    if (v45)
    {
      v46 = v101[3];
LABEL_13:
      v50 = (v45 - 1) & v45;
      v51 = v96;
      sub_24B2BF490(*(v41 + 48) + *(v99 + 72) * (__clz(__rbit64(v45)) | (v46 << 6)), v96, _s14descr285E46659O16SubscriptionDataOMa);
      v52 = 0;
      v49 = v46;
LABEL_14:
      (*v95)(v51, v52, 1, v23);
      v53 = v101;
      *v101 = v41;
      v53[1] = v42;
      v53[2] = v44;
      v53[3] = v49;
      v53[4] = v50;
      if ((*v94)(v51, 1, v23) == 1)
      {
        sub_24AFF8258(v51, &qword_27EFCF898);
        v85 = v110;

        return sub_24B2A0C50(v91, v86[0], v87, v85);
      }

      v54 = v109;
      sub_24B2BF380(v51, v109, _s14descr285E46659O16SubscriptionDataOMa);
      sub_24B2D60E4();
      sub_24B2BF490(v54, v100, _s14descr285E46659O16SubscriptionDataOMa);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 1)
      {
        v56 = v103;
        if (EnumCaseMultiPayload)
        {
          v57 = v89;
          sub_24B2BF380(v100, v89, _s14descr285E46659O16SubscriptionDataO10DirectionsVMa);
          MEMORY[0x24C23C8D0](3);
          sub_24B2D1704();
          sub_24B2BF448(&unk_27EFC7E58, MEMORY[0x277D08BF8]);
          sub_24B2D5254();
          v58 = _s14descr285E46659O16SubscriptionDataO10DirectionsVMa;
        }

        else
        {
          v57 = v88;
          sub_24B2BF380(v100, v88, _s14descr285E46659O16SubscriptionDataO10FriendshipVMa);
          MEMORY[0x24C23C8D0](2);
          sub_24B2D1704();
          sub_24B2BF448(&unk_27EFC7E58, MEMORY[0x277D08BF8]);
          sub_24B2D5254();
          v58 = _s14descr285E46659O16SubscriptionDataO10FriendshipVMa;
        }
      }

      else
      {
        v56 = v103;
        if (EnumCaseMultiPayload != 2)
        {
          if (EnumCaseMultiPayload == 3)
          {
            MEMORY[0x24C23C8D0](0);
          }

          else
          {
            MEMORY[0x24C23C8D0](1);
          }

          goto LABEL_25;
        }

        v57 = v90;
        sub_24B2BF380(v100, v90, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
        MEMORY[0x24C23C8D0](4);
        sub_24B2D1704();
        sub_24B2BF448(&unk_27EFC7E58, MEMORY[0x277D08BF8]);
        sub_24B2D5254();
        sub_24B2D6104();
        v58 = _s14descr285E46659O16SubscriptionDataO9LocationsVMa;
      }

      sub_24B2BF3E8(v57, v58);
LABEL_25:
      v59 = sub_24B2D6124();
      v60 = -1 << *(v110 + 32);
      v61 = v59 & ~v60;
      v62 = v61 >> 6;
      v63 = 1 << v61;
      if (((1 << v61) & *(v108 + 8 * (v61 >> 6))) == 0)
      {
LABEL_3:
        result = sub_24B2BF3E8(v109, _s14descr285E46659O16SubscriptionDataOMa);
        continue;
      }

      v106 = ~v60;
      v107 = *(v99 + 72);
      while (1)
      {
        v64 = v111;
        sub_24B2BF490(*(v110 + 48) + v107 * v61, v111, _s14descr285E46659O16SubscriptionDataOMa);
        v65 = *(v105 + 48);
        sub_24B2BF490(v64, v9, _s14descr285E46659O16SubscriptionDataOMa);
        sub_24B2BF490(v109, &v9[v65], _s14descr285E46659O16SubscriptionDataOMa);
        v66 = swift_getEnumCaseMultiPayload();
        if (v66 <= 1)
        {
          if (v66)
          {
            v74 = v23;
            v75 = v102;
            sub_24B2BF490(v9, v102, _s14descr285E46659O16SubscriptionDataOMa);
            v76 = v74;
            if (swift_getEnumCaseMultiPayload() == 1)
            {
              v77 = v97;
              sub_24B2BF380(&v9[v65], v97, _s14descr285E46659O16SubscriptionDataO10DirectionsVMa);
              sub_24B2D1704();
              sub_24B2BF448(&qword_27EFC7E90, MEMORY[0x277D08BF8]);
              v78 = sub_24B2D52A4();
              v79 = v77;
              v56 = v103;
              sub_24B2BF3E8(v79, _s14descr285E46659O16SubscriptionDataO10DirectionsVMa);
              sub_24B2BF3E8(v111, _s14descr285E46659O16SubscriptionDataOMa);
              sub_24B2BF3E8(v75, _s14descr285E46659O16SubscriptionDataO10DirectionsVMa);
              v23 = v76;
              if (v78)
              {
                goto LABEL_53;
              }

LABEL_51:
              sub_24B2BF3E8(v9, _s14descr285E46659O16SubscriptionDataOMa);
              goto LABEL_29;
            }

            sub_24B2BF3E8(v111, _s14descr285E46659O16SubscriptionDataOMa);
            sub_24B2BF3E8(v75, _s14descr285E46659O16SubscriptionDataO10DirectionsVMa);
            v23 = v74;
          }

          else
          {
            sub_24B2BF490(v9, v104, _s14descr285E46659O16SubscriptionDataOMa);
            if (!swift_getEnumCaseMultiPayload())
            {
              v80 = v93;
              sub_24B2BF380(&v9[v65], v93, _s14descr285E46659O16SubscriptionDataO10FriendshipVMa);
              sub_24B2D1704();
              sub_24B2BF448(&qword_27EFC7E90, MEMORY[0x277D08BF8]);
              v81 = v104;
              v82 = sub_24B2D52A4();
              v83 = v80;
              v56 = v103;
              sub_24B2BF3E8(v83, _s14descr285E46659O16SubscriptionDataO10FriendshipVMa);
              sub_24B2BF3E8(v111, _s14descr285E46659O16SubscriptionDataOMa);
              sub_24B2BF3E8(v81, _s14descr285E46659O16SubscriptionDataO10FriendshipVMa);
              if (v82)
              {
                goto LABEL_53;
              }

              goto LABEL_51;
            }

            sub_24B2BF3E8(v111, _s14descr285E46659O16SubscriptionDataOMa);
            sub_24B2BF3E8(v104, _s14descr285E46659O16SubscriptionDataO10FriendshipVMa);
          }
        }

        else if (v66 == 2)
        {
          sub_24B2BF490(v9, v56, _s14descr285E46659O16SubscriptionDataOMa);
          if (swift_getEnumCaseMultiPayload() == 2)
          {
            v67 = &v9[v65];
            v68 = v98;
            sub_24B2BF380(v67, v98, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
            sub_24B2D1704();
            sub_24B2BF448(&qword_27EFC7E90, MEMORY[0x277D08BF8]);
            v69 = sub_24B2D52A4();
            sub_24B2BF3E8(v111, _s14descr285E46659O16SubscriptionDataOMa);
            if (v69)
            {
              v70 = *(v92 + 20);
              v71 = *(v56 + v70);
              v72 = v68;
              v73 = *(v68 + v70);
              sub_24B2BF3E8(v72, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
              if (v71 == v73)
              {
                sub_24B2BF3E8(v56, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
LABEL_53:
                sub_24B2BF3E8(v9, _s14descr285E46659O16SubscriptionDataOMa);
                result = sub_24B2BF3E8(v109, _s14descr285E46659O16SubscriptionDataOMa);
                v84 = v91[v62];
                v91[v62] = v84 & ~v63;
                if ((v84 & v63) != 0)
                {
                  v39 = v87 - 1;
                  if (__OFSUB__(v87, 1))
                  {
                    goto LABEL_59;
                  }

                  if (v87 == 1)
                  {
                    return MEMORY[0x277D84FA0];
                  }

                  goto LABEL_2;
                }

                goto LABEL_4;
              }
            }

            else
            {
              sub_24B2BF3E8(v68, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
            }

            sub_24B2BF3E8(v56, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
            goto LABEL_51;
          }

          sub_24B2BF3E8(v111, _s14descr285E46659O16SubscriptionDataOMa);
          sub_24B2BF3E8(v56, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
        }

        else if (v66 == 3)
        {
          sub_24B2BF3E8(v111, _s14descr285E46659O16SubscriptionDataOMa);
          if (swift_getEnumCaseMultiPayload() == 3)
          {
            goto LABEL_53;
          }
        }

        else
        {
          sub_24B2BF3E8(v111, _s14descr285E46659O16SubscriptionDataOMa);
          if (swift_getEnumCaseMultiPayload() == 4)
          {
            goto LABEL_53;
          }
        }

        sub_24AFF8258(v9, &unk_27EFC8650);
LABEL_29:
        v61 = (v61 + 1) & v106;
        v62 = v61 >> 6;
        v63 = 1 << v61;
        if ((*(v108 + 8 * (v61 >> 6)) & (1 << v61)) == 0)
        {
          goto LABEL_3;
        }
      }
    }

    break;
  }

  v47 = (v44 + 64) >> 6;
  if (v47 <= v43 + 1)
  {
    v48 = v43 + 1;
  }

  else
  {
    v48 = (v44 + 64) >> 6;
  }

  v49 = v48 - 1;
  while (1)
  {
    v46 = v43 + 1;
    if (__OFADD__(v43, 1))
    {
      break;
    }

    if (v46 >= v47)
    {
      v50 = 0;
      v52 = 1;
      v51 = v96;
      goto LABEL_14;
    }

    v45 = *(v42 + 8 * v46);
    ++v43;
    if (v45)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_59:
  __break(1u);
  return result;
}

void sub_24B2B387C(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v125 = a5;
  v110 = a2;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC800);
  MEMORY[0x28223BE20](v127);
  v131 = &v109 - v8;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC808);
  MEMORY[0x28223BE20](v141);
  v10 = &v109 - v9;
  v130 = sub_24B2D14C4();
  v11 = *(v130 - 8);
  MEMORY[0x28223BE20](v130);
  v121 = &v109 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = sub_24B2D15F4();
  v13 = *(v140 - 8);
  MEMORY[0x28223BE20](v140);
  v137 = &v109 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v136 = &v109 - v16;
  MEMORY[0x28223BE20](v17);
  v116 = &v109 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC810);
  MEMORY[0x28223BE20](v19 - 8);
  v123 = &v109 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v113 = &v109 - v22;
  MEMORY[0x28223BE20](v23);
  v115 = &v109 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC84B0);
  MEMORY[0x28223BE20](v25 - 8);
  v119 = &v109 - v26;
  v145 = type metadata accessor for ContactsProvider.Subscription(0);
  MEMORY[0x28223BE20](v145);
  v135 = (&v109 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v28);
  v134 = &v109 - v29;
  MEMORY[0x28223BE20](v30);
  v32 = &v109 - v31;
  MEMORY[0x28223BE20](v33);
  v114 = &v109 - v34;
  MEMORY[0x28223BE20](v35);
  v37 = &v109 - v36;
  v38 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v39 = *(a3 + 16);
  v40 = *(a1 + v38) & ((-1 << a4) - 1);
  v112 = a1;
  *(a1 + v38) = v40;
  v41 = v39 - 1;
  v118 = (v42 + 56);
  v122 = v42;
  v117 = (v42 + 48);
  v129 = (v13 + 32);
  v128 = (v11 + 48);
  v120 = (v11 + 32);
  v124 = (v11 + 8);
  v138 = (v13 + 8);
  v139 = v10;
  v146 = a3;
  v144 = a3 + 56;
  v133 = &v109 - v36;
  v132 = v32;
  do
  {
    v111 = v41;
    do
    {
      while (1)
      {
        v43 = *v125;
        v44 = v125[1];
        v46 = v125[2];
        v45 = v125[3];
        v47 = v125[4];
        if (!v47)
        {
          v49 = (v46 + 64) >> 6;
          if (v49 <= v45 + 1)
          {
            v50 = v45 + 1;
          }

          else
          {
            v50 = (v46 + 64) >> 6;
          }

          v51 = v50 - 1;
          while (1)
          {
            v48 = v45 + 1;
            if (__OFADD__(v45, 1))
            {
              break;
            }

            if (v48 >= v49)
            {
              v52 = 0;
              v54 = 1;
              v53 = v119;
              goto LABEL_14;
            }

            v47 = *(v44 + 8 * v48);
            ++v45;
            if (v47)
            {
              goto LABEL_13;
            }
          }

          __break(1u);
LABEL_58:
          __break(1u);
          return;
        }

        v48 = v125[3];
LABEL_13:
        v52 = (v47 - 1) & v47;
        v53 = v119;
        sub_24B2BF490(*(v43 + 48) + *(v122 + 72) * (__clz(__rbit64(v47)) | (v48 << 6)), v119, type metadata accessor for ContactsProvider.Subscription);
        v54 = 0;
        v51 = v48;
LABEL_14:
        v55 = v145;
        (*v118)(v53, v54, 1, v145);
        v56 = v125;
        *v125 = v43;
        v56[1] = v44;
        v56[2] = v46;
        v56[3] = v51;
        v56[4] = v52;
        if ((*v117)(v53, 1, v55) == 1)
        {
          sub_24AFF8258(v53, &qword_27EFC84B0);
          v108 = v146;

          sub_24B2A1260(v112, v110, v111, v108);
          return;
        }

        sub_24B2BF380(v53, v37, type metadata accessor for ContactsProvider.Subscription);
        sub_24B2D60E4();
        v57 = v114;
        sub_24B2BF490(v37, v114, type metadata accessor for ContactsProvider.Subscription);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          MEMORY[0x24C23C8D0](1);
          sub_24B2D5404();

          v58 = v144;
        }

        else
        {
          v59 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC820) + 48);
          v60 = v115;
          sub_24B0391CC(v57, v115, &qword_27EFCC810);
          (*v129)(v116, v57 + v59, v140);
          MEMORY[0x24C23C8D0](0);
          v61 = v113;
          sub_24B008890(v60, v113, &qword_27EFCC810);
          v62 = v130;
          v63 = (*v128)(v61, 1, v130);
          v58 = v144;
          if (v63 == 1)
          {
            sub_24B2D6104();
          }

          else
          {
            v64 = v121;
            (*v120)(v121, v61, v62);
            sub_24B2D6104();
            sub_24B2BF448(&qword_27EFCC830, MEMORY[0x277D08B38]);
            sub_24B2D5254();
            (*v124)(v64, v62);
          }

          sub_24B2BF448(&qword_27EFCC740, MEMORY[0x277D08B70]);
          v65 = v116;
          v66 = v140;
          sub_24B2D5254();
          (*v138)(v65, v66);
          sub_24AFF8258(v115, &qword_27EFCC810);
        }

        v67 = sub_24B2D6124();
        v68 = -1 << *(v146 + 32);
        v69 = v67 & ~v68;
        v70 = v69 >> 6;
        v71 = 1 << v69;
        v72 = v139;
        if (((1 << v69) & *(v58 + 8 * (v69 >> 6))) != 0)
        {
          break;
        }

LABEL_3:
        sub_24B2BF3E8(v37, type metadata accessor for ContactsProvider.Subscription);
      }

      v142 = ~v68;
      v143 = *(v122 + 72);
      while (1)
      {
        sub_24B2BF490(*(v146 + 48) + v143 * v69, v32, type metadata accessor for ContactsProvider.Subscription);
        v76 = (v72 + *(v141 + 48));
        sub_24B2BF490(v32, v72, type metadata accessor for ContactsProvider.Subscription);
        sub_24B2BF490(v37, v76, type metadata accessor for ContactsProvider.Subscription);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          break;
        }

        v84 = v134;
        sub_24B2BF490(v72, v134, type metadata accessor for ContactsProvider.Subscription);
        v85 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC820) + 48);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v73 = v132;
          sub_24B2BF3E8(v132, type metadata accessor for ContactsProvider.Subscription);
          (*v138)((v84 + v85), v140);
          v74 = v84;
          v32 = v73;
          sub_24AFF8258(v74, &qword_27EFCC810);
          v37 = v133;
          goto LABEL_24;
        }

        v86 = *v129;
        v87 = v140;
        (*v129)(v136, v84 + v85, v140);
        v86(v137, v76 + v85, v87);
        v88 = *(v127 + 48);
        v89 = v131;
        sub_24B0391CC(v84, v131, &qword_27EFCC810);
        sub_24B0391CC(v76, v89 + v88, &qword_27EFCC810);
        v90 = *v128;
        v91 = v130;
        if ((*v128)(v89, 1, v130) == 1)
        {
          if (v90(v89 + v88, 1, v91) != 1)
          {
            v98 = *v138;
            v99 = v140;
            (*v138)(v137, v140);
            v98(v136, v99);
            v32 = v132;
            sub_24B2BF3E8(v132, type metadata accessor for ContactsProvider.Subscription);
            goto LABEL_43;
          }

          sub_24AFF8258(v89, &qword_27EFCC810);
          v92 = v140;
          v32 = v132;
        }

        else
        {
          v93 = v123;
          sub_24B008890(v89, v123, &qword_27EFCC810);
          if (v90(v89 + v88, 1, v91) == 1)
          {
            v94 = *v138;
            v95 = v140;
            (*v138)(v137, v140);
            v94(v136, v95);
            v96 = v132;
            sub_24B2BF3E8(v132, type metadata accessor for ContactsProvider.Subscription);
            v97 = v91;
            v32 = v96;
            (*v124)(v93, v97);
LABEL_43:
            sub_24AFF8258(v131, &qword_27EFCC800);
LABEL_44:
            v72 = v139;
            v37 = v133;
            v75 = v144;
            sub_24B2BF3E8(v139, type metadata accessor for ContactsProvider.Subscription);
            goto LABEL_26;
          }

          v100 = v89 + v88;
          v101 = v121;
          (*v120)(v121, v100, v91);
          sub_24B2BF448(&qword_27EFCC828, MEMORY[0x277D08B38]);
          v126 = sub_24B2D52A4();
          v102 = *v124;
          (*v124)(v101, v91);
          v102(v93, v91);
          sub_24AFF8258(v89, &qword_27EFCC810);
          v92 = v140;
          v32 = v132;
          if ((v126 & 1) == 0)
          {
            v106 = *v138;
            (*v138)(v137, v140);
            v106(v136, v92);
            sub_24B2BF3E8(v32, type metadata accessor for ContactsProvider.Subscription);
            goto LABEL_44;
          }
        }

        v103 = v136;
        v104 = v137;
        v126 = MEMORY[0x24C237DB0](v136, v137);
        v105 = *v138;
        (*v138)(v104, v92);
        v105(v103, v92);
        sub_24B2BF3E8(v32, type metadata accessor for ContactsProvider.Subscription);
        v72 = v139;
        sub_24B2BF3E8(v139, type metadata accessor for ContactsProvider.Subscription);
        v37 = v133;
        v75 = v144;
        if (v126)
        {
          goto LABEL_52;
        }

LABEL_26:
        v69 = (v69 + 1) & v142;
        v70 = v69 >> 6;
        v71 = 1 << v69;
        if ((*(v75 + 8 * (v69 >> 6)) & (1 << v69)) == 0)
        {
          goto LABEL_3;
        }
      }

      v77 = v135;
      sub_24B2BF490(v72, v135, type metadata accessor for ContactsProvider.Subscription);
      v79 = *v77;
      v78 = v77[1];
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        sub_24B2BF3E8(v32, type metadata accessor for ContactsProvider.Subscription);

        v72 = v139;
LABEL_24:
        sub_24AFF8258(v72, &qword_27EFCC808);
LABEL_25:
        v75 = v144;
        goto LABEL_26;
      }

      v80 = *v76;
      v81 = v76[1];
      if (v79 != v80 || v78 != v81)
      {
        v83 = sub_24B2D6004();

        sub_24B2BF3E8(v32, type metadata accessor for ContactsProvider.Subscription);
        if (v83)
        {
          goto LABEL_51;
        }

        v72 = v139;
        sub_24B2BF3E8(v139, type metadata accessor for ContactsProvider.Subscription);
        goto LABEL_25;
      }

      sub_24B2BF3E8(v32, type metadata accessor for ContactsProvider.Subscription);
LABEL_51:
      sub_24B2BF3E8(v139, type metadata accessor for ContactsProvider.Subscription);
LABEL_52:
      sub_24B2BF3E8(v37, type metadata accessor for ContactsProvider.Subscription);
      v107 = v112[v70];
      v112[v70] = v107 & ~v71;
    }

    while ((v107 & v71) == 0);
    v41 = v111 - 1;
    if (__OFSUB__(v111, 1))
    {
      goto LABEL_58;
    }
  }

  while (v111 != 1);
}

void sub_24B2B494C(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v50[0] = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC84A8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v50 - v10;
  v59 = type metadata accessor for PeopleLocationsProvider.Subscription(0);
  MEMORY[0x28223BE20](v59);
  v13 = v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v67 = v50 - v15;
  v16 = *(a3 + 16);
  v17 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v18 = *(a1 + v17) & ((-1 << a4) - 1);
  v52 = a1;
  *(a1 + v17) = v18;
  v19 = v16 - 1;
  v56 = (v20 + 56);
  v57 = v20;
  v54 = a5;
  v55 = (v20 + 48);
  v61 = a3 + 56;
  v62 = a3;
  v53 = v11;
  do
  {
    v51 = v19;
    do
    {
      while (1)
      {
        v21 = *a5;
        v22 = a5[1];
        v24 = a5[2];
        v23 = a5[3];
        v25 = a5[4];
        if (!v25)
        {
          v27 = (v24 + 64) >> 6;
          if (v27 <= v23 + 1)
          {
            v28 = v23 + 1;
          }

          else
          {
            v28 = (v24 + 64) >> 6;
          }

          v29 = v28 - 1;
          while (1)
          {
            v26 = v23 + 1;
            if (__OFADD__(v23, 1))
            {
              break;
            }

            if (v26 >= v27)
            {
              v30 = 0;
              v31 = 1;
              goto LABEL_14;
            }

            v25 = *(v22 + 8 * v26);
            ++v23;
            if (v25)
            {
              goto LABEL_13;
            }
          }

          __break(1u);
LABEL_52:
          __break(1u);
          return;
        }

        v26 = a5[3];
LABEL_13:
        v30 = (v25 - 1) & v25;
        sub_24B2BF490(*(v21 + 48) + *(v57 + 72) * (__clz(__rbit64(v25)) | (v26 << 6)), v11, type metadata accessor for PeopleLocationsProvider.Subscription);
        v31 = 0;
        v29 = v26;
LABEL_14:
        v32 = v59;
        (*v56)(v11, v31, 1, v59);
        *a5 = v21;
        a5[1] = v22;
        a5[2] = v24;
        a5[3] = v29;
        a5[4] = v30;
        if ((*v55)(v11, 1, v32) == 1)
        {
          sub_24AFF8258(v11, &qword_27EFC84A8);
          v49 = v62;

          sub_24B2A196C(v52, v50[0], v51, v49);
          return;
        }

        sub_24B2BF380(v11, v67, type metadata accessor for PeopleLocationsProvider.Subscription);
        v33 = v62;
        sub_24B2D60E4();
        sub_24B2D1574();
        sub_24B2BF448(&qword_27EFCC6C0, MEMORY[0x277D08B50]);
        sub_24B2D5254();
        v58 = *(v32 + 20);
        sub_24B2D5404();

        v34 = sub_24B2D6124();
        v35 = -1 << *(v33 + 32);
        v36 = v34 & ~v35;
        v37 = v36 >> 6;
        v38 = 1 << v36;
        if (((1 << v36) & *(v61 + 8 * (v36 >> 6))) != 0)
        {
          break;
        }

LABEL_3:
        sub_24B2BF3E8(v67, type metadata accessor for PeopleLocationsProvider.Subscription);
        v11 = v53;
        a5 = v54;
      }

      v60 = ~v35;
      v39 = *(v57 + 72);
      while (1)
      {
        sub_24B2BF490(*(v62 + 48) + v39 * v36, v13, type metadata accessor for PeopleLocationsProvider.Subscription);
        sub_24B2BF448(&qword_27EFCC6D8, MEMORY[0x277D08B50]);
        sub_24B2D54E4();
        sub_24B2D54E4();
        if (v65 == v63 && v66 == v64)
        {
        }

        else
        {
          v41 = sub_24B2D6004();

          if ((v41 & 1) == 0)
          {
            sub_24B2BF3E8(v13, type metadata accessor for PeopleLocationsProvider.Subscription);
            goto LABEL_18;
          }
        }

        v42 = v13[*(v59 + 20)] ? 0x776F6C6C616873 : 1702259052;
        v43 = v13[*(v59 + 20)] ? 0xE700000000000000 : 0xE400000000000000;
        v44 = *(v67 + v58) ? 0x776F6C6C616873 : 1702259052;
        v45 = *(v67 + v58) ? 0xE700000000000000 : 0xE400000000000000;
        if (v42 == v44 && v43 == v45)
        {
          break;
        }

        v47 = sub_24B2D6004();

        sub_24B2BF3E8(v13, type metadata accessor for PeopleLocationsProvider.Subscription);
        if (v47)
        {
          goto LABEL_46;
        }

LABEL_18:
        v36 = (v36 + 1) & v60;
        v37 = v36 >> 6;
        v38 = 1 << v36;
        if ((*(v61 + 8 * (v36 >> 6)) & (1 << v36)) == 0)
        {
          goto LABEL_3;
        }
      }

      sub_24B2BF3E8(v13, type metadata accessor for PeopleLocationsProvider.Subscription);
LABEL_46:
      sub_24B2BF3E8(v67, type metadata accessor for PeopleLocationsProvider.Subscription);
      v48 = v52[v37];
      v52[v37] = v48 & ~v38;
      v11 = v53;
      a5 = v54;
    }

    while ((v48 & v38) == 0);
    v19 = v51 - 1;
    if (__OFSUB__(v51, 1))
    {
      goto LABEL_52;
    }
  }

  while (v51 != 1);
}

void sub_24B2B4FB8(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v77 = a5;
  v67 = a2;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC6D0);
  MEMORY[0x28223BE20](v85);
  v9 = &v66 - v8;
  v10 = sub_24B2D1574();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v81 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v70 = &v66 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC85C8);
  MEMORY[0x28223BE20](v15 - 8);
  v75 = &v66 - v16;
  v74 = type metadata accessor for PeopleProvider.Subscription(0);
  MEMORY[0x28223BE20](v74);
  v83 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v89 = &v66 - v19;
  MEMORY[0x28223BE20](v20);
  v71 = &v66 - v21;
  MEMORY[0x28223BE20](v22);
  v92 = &v66 - v23;
  v24 = *(a3 + 16);
  v25 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v26 = *(a1 + v25) & ((-1 << a4) - 1);
  v69 = a1;
  *(a1 + v25) = v26;
  v27 = v24 - 1;
  v73 = (v28 + 56);
  v76 = v28;
  v72 = (v28 + 48);
  v91 = (v11 + 48);
  v79 = (v11 + 32);
  v82 = (v11 + 8);
  v97 = a3;
  v29 = a3 + 56;
  v84 = v10;
  v78 = v9;
  v80 = v29;
  do
  {
    v68 = v27;
    do
    {
      while (1)
      {
        v31 = *v77;
        v30 = v77[1];
        v33 = v77[2];
        v32 = v77[3];
        v34 = v77[4];
        v90 = v33;
        if (!v34)
        {
          v36 = (v33 + 64) >> 6;
          if (v36 <= v32 + 1)
          {
            v37 = v32 + 1;
          }

          else
          {
            v37 = (v33 + 64) >> 6;
          }

          v38 = v37 - 1;
          while (1)
          {
            v35 = v32 + 1;
            if (__OFADD__(v32, 1))
            {
              break;
            }

            if (v35 >= v36)
            {
              v39 = 0;
              v41 = 1;
              v40 = v75;
              goto LABEL_14;
            }

            v34 = *(v30 + 8 * v35);
            ++v32;
            if (v34)
            {
              goto LABEL_13;
            }
          }

          __break(1u);
LABEL_38:
          __break(1u);
          return;
        }

        v35 = v32;
LABEL_13:
        v39 = (v34 - 1) & v34;
        v40 = v75;
        sub_24B2BF490(*(v31 + 48) + *(v76 + 72) * (__clz(__rbit64(v34)) | (v35 << 6)), v75, type metadata accessor for PeopleProvider.Subscription);
        v41 = 0;
        v38 = v35;
LABEL_14:
        v42 = v74;
        (*v73)(v40, v41, 1, v74);
        v43 = v77;
        *v77 = v31;
        v43[1] = v30;
        v43[2] = v90;
        v43[3] = v38;
        v43[4] = v39;
        if ((*v72)(v40, 1, v42) == 1)
        {
          sub_24AFF8258(v40, &qword_27EFC85C8);
          v65 = v97;

          sub_24B2A1CDC(v69, v67, v68, v65);
          return;
        }

        v44 = v92;
        sub_24B2BF380(v40, v92, type metadata accessor for PeopleProvider.Subscription);
        sub_24B2D60E4();
        v45 = v44;
        v46 = v71;
        sub_24B2BF490(v45, v71, type metadata accessor for PeopleProvider.Subscription);
        v90 = *v91;
        if (v90(v46, 1, v10) == 1)
        {
          MEMORY[0x24C23C8D0](0);
        }

        else
        {
          v47 = v70;
          (*v79)(v70, v46, v10);
          MEMORY[0x24C23C8D0](1);
          sub_24B2BF448(&qword_27EFCC6C0, MEMORY[0x277D08B50]);
          sub_24B2D5254();
          (*v82)(v47, v10);
        }

        v48 = v89;
        v49 = sub_24B2D6124();
        v50 = -1 << *(v97 + 32);
        v51 = v49 & ~v50;
        v52 = v51 >> 6;
        v53 = 1 << v51;
        if (((1 << v51) & *(v29 + 8 * (v51 >> 6))) != 0)
        {
          break;
        }

LABEL_3:
        sub_24B2BF3E8(v92, type metadata accessor for PeopleProvider.Subscription);
      }

      v86 = ~v50;
      v88 = *(v76 + 72);
      while (1)
      {
        v87 = v52;
        sub_24B2BF490(*(v97 + 48) + v88 * v51, v48, type metadata accessor for PeopleProvider.Subscription);
        v55 = *(v85 + 48);
        sub_24B2BF490(v48, v9, type metadata accessor for PeopleProvider.Subscription);
        sub_24B2BF490(v92, &v9[v55], type metadata accessor for PeopleProvider.Subscription);
        v56 = v9;
        v57 = v9;
        v58 = v90;
        if (v90(v56, 1, v10) == 1)
        {
          sub_24B2BF3E8(v48, type metadata accessor for PeopleProvider.Subscription);
          v54 = v58(v57 + v55, 1, v10);
          v9 = v57;
          if (v54 == 1)
          {
            goto LABEL_32;
          }

          goto LABEL_21;
        }

        v59 = v83;
        sub_24B2BF490(v57, v83, type metadata accessor for PeopleProvider.Subscription);
        if (v58(v57 + v55, 1, v10) == 1)
        {
          sub_24B2BF3E8(v48, type metadata accessor for PeopleProvider.Subscription);
          (*v82)(v59, v10);
          v9 = v57;
          v29 = v80;
LABEL_21:
          sub_24AFF8258(v9, &qword_27EFCC6D0);
          goto LABEL_22;
        }

        (*v79)(v81, v57 + v55, v10);
        sub_24B2BF448(&qword_27EFCC6D8, MEMORY[0x277D08B50]);
        sub_24B2D54E4();
        sub_24B2D54E4();
        if (v95 == v93 && v96 == v94)
        {
          break;
        }

        v60 = v48;
        v61 = sub_24B2D6004();
        v62 = *v82;
        (*v82)(v81, v10);
        sub_24B2BF3E8(v60, type metadata accessor for PeopleProvider.Subscription);

        v62(v83, v10);
        v9 = v78;
        v29 = v80;
        if (v61)
        {
          goto LABEL_32;
        }

        sub_24B2BF3E8(v78, type metadata accessor for PeopleProvider.Subscription);
LABEL_22:
        v51 = (v51 + 1) & v86;
        v52 = v51 >> 6;
        v53 = 1 << v51;
        v10 = v84;
        v48 = v89;
        if ((*(v29 + 8 * (v51 >> 6)) & (1 << v51)) == 0)
        {
          goto LABEL_3;
        }
      }

      v63 = *v82;
      (*v82)(v81, v10);
      sub_24B2BF3E8(v48, type metadata accessor for PeopleProvider.Subscription);

      v63(v83, v10);
      v9 = v78;
      v29 = v80;
LABEL_32:
      sub_24B2BF3E8(v9, type metadata accessor for PeopleProvider.Subscription);
      sub_24B2BF3E8(v92, type metadata accessor for PeopleProvider.Subscription);
      v64 = v69[v87];
      v69[v87] = v64 & ~v53;
      v10 = v84;
    }

    while ((v64 & v53) == 0);
    v27 = v68 - 1;
    if (__OFSUB__(v68, 1))
    {
      goto LABEL_38;
    }
  }

  while (v68 != 1);
}

void sub_24B2B59F8(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v46 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC85D0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v45 - v10;
  v53 = type metadata accessor for ItemsLocationsProvider.Subscription(0);
  MEMORY[0x28223BE20](v53);
  v56 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v62 = &v45 - v14;
  v15 = *(a3 + 16);
  v16 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v17 = *(a1 + v16);
  v48 = a1;
  v49 = v11;
  *(a1 + v16) = v17 & ((-1 << a4) - 1);
  v18 = v15 - 1;
  v51 = (v19 + 48);
  v52 = (v19 + 56);
  v57 = a3;
  v54 = v19;
  v55 = a3 + 56;
  v50 = a5;
  while (2)
  {
    v47 = v18;
    do
    {
      while (1)
      {
        v20 = *a5;
        v21 = a5[1];
        v23 = a5[2];
        v22 = a5[3];
        v24 = a5[4];
        if (!v24)
        {
          v26 = (v23 + 64) >> 6;
          if (v26 <= v22 + 1)
          {
            v27 = v22 + 1;
          }

          else
          {
            v27 = (v23 + 64) >> 6;
          }

          v28 = v27 - 1;
          while (1)
          {
            v25 = v22 + 1;
            if (__OFADD__(v22, 1))
            {
              break;
            }

            if (v25 >= v26)
            {
              v29 = 0;
              v30 = 1;
              goto LABEL_14;
            }

            v24 = *(v21 + 8 * v25);
            ++v22;
            if (v24)
            {
              goto LABEL_13;
            }
          }

          __break(1u);
          goto LABEL_33;
        }

        v25 = a5[3];
LABEL_13:
        v29 = (v24 - 1) & v24;
        sub_24B2BF490(*(v20 + 48) + *(v54 + 72) * (__clz(__rbit64(v24)) | (v25 << 6)), v11, type metadata accessor for ItemsLocationsProvider.Subscription);
        v30 = 0;
        v28 = v25;
LABEL_14:
        v31 = v53;
        (*v52)(v11, v30, 1, v53);
        *a5 = v20;
        a5[1] = v21;
        a5[2] = v23;
        a5[3] = v28;
        a5[4] = v29;
        if ((*v51)(v11, 1, v31) == 1)
        {
          sub_24AFF8258(v11, &qword_27EFC85D0);
          v44 = v57;

          sub_24B2A267C(v48, v46, v47, v44);
          return;
        }

        sub_24B2BF380(v11, v62, type metadata accessor for ItemsLocationsProvider.Subscription);
        v32 = v57;
        sub_24B2D60E4();
        sub_24B2D1DA4();
        sub_24B2BF448(&qword_27EFCC630, MEMORY[0x277D08E20]);
        sub_24B2D5254();
        sub_24B2D5404();
        v33 = sub_24B2D6124();
        v34 = -1 << *(v32 + 32);
        v35 = v33 & ~v34;
        v36 = v35 >> 6;
        v37 = 1 << v35;
        if (((1 << v35) & *(v55 + 8 * (v35 >> 6))) != 0)
        {
          break;
        }

LABEL_3:
        sub_24B2BF3E8(v62, type metadata accessor for ItemsLocationsProvider.Subscription);
        v11 = v49;
        a5 = v50;
      }

      v38 = ~v34;
      v39 = *(v54 + 72);
      v40 = v56;
      while (1)
      {
        sub_24B2BF490(*(v57 + 48) + v39 * v35, v40, type metadata accessor for ItemsLocationsProvider.Subscription);
        sub_24B2BF448(&qword_27EFCC6E8, MEMORY[0x277D08E20]);
        sub_24B2D54E4();
        sub_24B2D54E4();
        if (v60 == v58 && v61 == v59)
        {
          break;
        }

        v42 = sub_24B2D6004();

        if (v42)
        {
          goto LABEL_25;
        }

        v40 = v56;
        sub_24B2BF3E8(v56, type metadata accessor for ItemsLocationsProvider.Subscription);
        v35 = (v35 + 1) & v38;
        v36 = v35 >> 6;
        v37 = 1 << v35;
        if ((*(v55 + 8 * (v35 >> 6)) & (1 << v35)) == 0)
        {
          goto LABEL_3;
        }
      }

LABEL_25:
      sub_24B2BF3E8(v56, type metadata accessor for ItemsLocationsProvider.Subscription);
      sub_24B2BF3E8(v62, type metadata accessor for ItemsLocationsProvider.Subscription);
      v11 = v49;
      v43 = v48[v36];
      v48[v36] = v43 & ~v37;
      a5 = v50;
    }

    while ((v43 & v37) == 0);
    v18 = v47 - 1;
    if (__OFSUB__(v47, 1))
    {
LABEL_33:
      __break(1u);
      return;
    }

    if (v47 != 1)
    {
      continue;
    }

    break;
  }
}

void sub_24B2B5F64(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v77 = a5;
  v67 = a2;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC6E0);
  MEMORY[0x28223BE20](v85);
  v9 = &v66 - v8;
  v10 = sub_24B2D1DA4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v81 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v70 = &v66 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC85E0);
  MEMORY[0x28223BE20](v15 - 8);
  v75 = &v66 - v16;
  v74 = type metadata accessor for ItemsProvider.Subscription(0);
  MEMORY[0x28223BE20](v74);
  v83 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v89 = &v66 - v19;
  MEMORY[0x28223BE20](v20);
  v71 = &v66 - v21;
  MEMORY[0x28223BE20](v22);
  v92 = &v66 - v23;
  v24 = *(a3 + 16);
  v25 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v26 = *(a1 + v25) & ((-1 << a4) - 1);
  v69 = a1;
  *(a1 + v25) = v26;
  v27 = v24 - 1;
  v73 = (v28 + 56);
  v76 = v28;
  v72 = (v28 + 48);
  v91 = (v11 + 48);
  v79 = (v11 + 32);
  v82 = (v11 + 8);
  v97 = a3;
  v29 = a3 + 56;
  v84 = v10;
  v78 = v9;
  v80 = v29;
  do
  {
    v68 = v27;
    do
    {
      while (1)
      {
        v31 = *v77;
        v30 = v77[1];
        v33 = v77[2];
        v32 = v77[3];
        v34 = v77[4];
        v90 = v33;
        if (!v34)
        {
          v36 = (v33 + 64) >> 6;
          if (v36 <= v32 + 1)
          {
            v37 = v32 + 1;
          }

          else
          {
            v37 = (v33 + 64) >> 6;
          }

          v38 = v37 - 1;
          while (1)
          {
            v35 = v32 + 1;
            if (__OFADD__(v32, 1))
            {
              break;
            }

            if (v35 >= v36)
            {
              v39 = 0;
              v41 = 1;
              v40 = v75;
              goto LABEL_14;
            }

            v34 = *(v30 + 8 * v35);
            ++v32;
            if (v34)
            {
              goto LABEL_13;
            }
          }

          __break(1u);
LABEL_38:
          __break(1u);
          return;
        }

        v35 = v32;
LABEL_13:
        v39 = (v34 - 1) & v34;
        v40 = v75;
        sub_24B2BF490(*(v31 + 48) + *(v76 + 72) * (__clz(__rbit64(v34)) | (v35 << 6)), v75, type metadata accessor for ItemsProvider.Subscription);
        v41 = 0;
        v38 = v35;
LABEL_14:
        v42 = v74;
        (*v73)(v40, v41, 1, v74);
        v43 = v77;
        *v77 = v31;
        v43[1] = v30;
        v43[2] = v90;
        v43[3] = v38;
        v43[4] = v39;
        if ((*v72)(v40, 1, v42) == 1)
        {
          sub_24AFF8258(v40, &qword_27EFC85E0);
          v65 = v97;

          sub_24B2A29B4(v69, v67, v68, v65);
          return;
        }

        v44 = v92;
        sub_24B2BF380(v40, v92, type metadata accessor for ItemsProvider.Subscription);
        sub_24B2D60E4();
        v45 = v44;
        v46 = v71;
        sub_24B2BF490(v45, v71, type metadata accessor for ItemsProvider.Subscription);
        v90 = *v91;
        if (v90(v46, 1, v10) == 1)
        {
          MEMORY[0x24C23C8D0](0);
        }

        else
        {
          v47 = v70;
          (*v79)(v70, v46, v10);
          MEMORY[0x24C23C8D0](1);
          sub_24B2BF448(&qword_27EFCC630, MEMORY[0x277D08E20]);
          sub_24B2D5254();
          (*v82)(v47, v10);
        }

        v48 = v89;
        v49 = sub_24B2D6124();
        v50 = -1 << *(v97 + 32);
        v51 = v49 & ~v50;
        v52 = v51 >> 6;
        v53 = 1 << v51;
        if (((1 << v51) & *(v29 + 8 * (v51 >> 6))) != 0)
        {
          break;
        }

LABEL_3:
        sub_24B2BF3E8(v92, type metadata accessor for ItemsProvider.Subscription);
      }

      v86 = ~v50;
      v88 = *(v76 + 72);
      while (1)
      {
        v87 = v52;
        sub_24B2BF490(*(v97 + 48) + v88 * v51, v48, type metadata accessor for ItemsProvider.Subscription);
        v55 = *(v85 + 48);
        sub_24B2BF490(v48, v9, type metadata accessor for ItemsProvider.Subscription);
        sub_24B2BF490(v92, &v9[v55], type metadata accessor for ItemsProvider.Subscription);
        v56 = v9;
        v57 = v9;
        v58 = v90;
        if (v90(v56, 1, v10) == 1)
        {
          sub_24B2BF3E8(v48, type metadata accessor for ItemsProvider.Subscription);
          v54 = v58(v57 + v55, 1, v10);
          v9 = v57;
          if (v54 == 1)
          {
            goto LABEL_32;
          }

          goto LABEL_21;
        }

        v59 = v83;
        sub_24B2BF490(v57, v83, type metadata accessor for ItemsProvider.Subscription);
        if (v58(v57 + v55, 1, v10) == 1)
        {
          sub_24B2BF3E8(v48, type metadata accessor for ItemsProvider.Subscription);
          (*v82)(v59, v10);
          v9 = v57;
          v29 = v80;
LABEL_21:
          sub_24AFF8258(v9, &qword_27EFCC6E0);
          goto LABEL_22;
        }

        (*v79)(v81, v57 + v55, v10);
        sub_24B2BF448(&qword_27EFCC6E8, MEMORY[0x277D08E20]);
        sub_24B2D54E4();
        sub_24B2D54E4();
        if (v95 == v93 && v96 == v94)
        {
          break;
        }

        v60 = v48;
        v61 = sub_24B2D6004();
        v62 = *v82;
        (*v82)(v81, v10);
        sub_24B2BF3E8(v60, type metadata accessor for ItemsProvider.Subscription);

        v62(v83, v10);
        v9 = v78;
        v29 = v80;
        if (v61)
        {
          goto LABEL_32;
        }

        sub_24B2BF3E8(v78, type metadata accessor for ItemsProvider.Subscription);
LABEL_22:
        v51 = (v51 + 1) & v86;
        v52 = v51 >> 6;
        v53 = 1 << v51;
        v10 = v84;
        v48 = v89;
        if ((*(v29 + 8 * (v51 >> 6)) & (1 << v51)) == 0)
        {
          goto LABEL_3;
        }
      }

      v63 = *v82;
      (*v82)(v81, v10);
      sub_24B2BF3E8(v48, type metadata accessor for ItemsProvider.Subscription);

      v63(v83, v10);
      v9 = v78;
      v29 = v80;
LABEL_32:
      sub_24B2BF3E8(v9, type metadata accessor for ItemsProvider.Subscription);
      sub_24B2BF3E8(v92, type metadata accessor for ItemsProvider.Subscription);
      v64 = v69[v87];
      v69[v87] = v64 & ~v53;
      v10 = v84;
    }

    while ((v64 & v53) == 0);
    v27 = v68 - 1;
    if (__OFSUB__(v68, 1))
    {
      goto LABEL_38;
    }
  }

  while (v68 != 1);
}

void sub_24B2B69A4(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v74 = a2;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDBC8);
  MEMORY[0x28223BE20](v93);
  v10 = &v73 - v9;
  v92 = sub_24B2D1704();
  v11 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v85 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v77 = &v73 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC85B8);
  MEMORY[0x28223BE20](v15 - 8);
  v82 = &v73 - v16;
  v17 = type metadata accessor for SettingsContactsProvider.Subscription();
  MEMORY[0x28223BE20](v17);
  v90 = (&v73 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v19);
  v89 = &v73 - v20;
  MEMORY[0x28223BE20](v21);
  v23 = &v73 - v22;
  MEMORY[0x28223BE20](v24);
  v78 = &v73 - v25;
  MEMORY[0x28223BE20](v26);
  v97 = &v73 - v27;
  v28 = *(a3 + 16);
  v29 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v30 = *(a1 + v29) & ((-1 << a4) - 1);
  v76 = a1;
  *(a1 + v29) = v30;
  v31 = v28 - 1;
  v81 = (v32 + 56);
  v83 = v32;
  v80 = (v32 + 48);
  v86 = (v11 + 32);
  v91 = (v11 + 8);
  v98 = a3;
  v96 = a3 + 56;
  v79 = a5;
  v87 = v33;
  v84 = v10;
  do
  {
    v75 = v31;
    do
    {
      while (1)
      {
        v35 = *a5;
        v34 = a5[1];
        v37 = a5[2];
        v36 = a5[3];
        v38 = a5[4];
        v95 = v37;
        if (!v38)
        {
          v40 = (v37 + 64) >> 6;
          if (v40 <= v36 + 1)
          {
            v41 = v36 + 1;
          }

          else
          {
            v41 = (v37 + 64) >> 6;
          }

          v42 = v41 - 1;
          while (1)
          {
            v39 = v36 + 1;
            if (__OFADD__(v36, 1))
            {
              break;
            }

            if (v39 >= v40)
            {
              v43 = 0;
              v45 = 1;
              v44 = v82;
              goto LABEL_14;
            }

            v38 = *(v34 + 8 * v39);
            ++v36;
            if (v38)
            {
              goto LABEL_13;
            }
          }

          __break(1u);
LABEL_43:
          __break(1u);
          return;
        }

        v39 = v36;
LABEL_13:
        v43 = (v38 - 1) & v38;
        v44 = v82;
        sub_24B2BF490(*(v35 + 48) + *(v83 + 72) * (__clz(__rbit64(v38)) | (v39 << 6)), v82, type metadata accessor for SettingsContactsProvider.Subscription);
        v45 = 0;
        v42 = v39;
LABEL_14:
        v46 = v87;
        (*v81)(v44, v45, 1, v87);
        *a5 = v35;
        a5[1] = v34;
        a5[2] = v95;
        a5[3] = v42;
        a5[4] = v43;
        if ((*v80)(v44, 1, v46) == 1)
        {
          sub_24AFF8258(v44, &qword_27EFC85B8);
          v72 = v98;

          sub_24B2A2E2C(v76, v74, v75, v72);
          return;
        }

        v47 = v97;
        sub_24B2BF380(v44, v97, type metadata accessor for SettingsContactsProvider.Subscription);
        sub_24B2D60E4();
        v48 = v47;
        v49 = v78;
        sub_24B2BF490(v48, v78, type metadata accessor for SettingsContactsProvider.Subscription);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          MEMORY[0x24C23C8D0](1);
          sub_24B2D5404();
        }

        else
        {
          v50 = v77;
          v51 = v92;
          (*v86)(v77, v49, v92);
          MEMORY[0x24C23C8D0](0);
          sub_24B2BF448(&unk_27EFC7E58, MEMORY[0x277D08BF8]);
          sub_24B2D5254();
          (*v91)(v50, v51);
        }

        v52 = sub_24B2D6124();
        v53 = -1 << *(v98 + 32);
        v54 = v52 & ~v53;
        v55 = v54 >> 6;
        v56 = 1 << v54;
        if (((1 << v54) & *(v96 + 8 * (v54 >> 6))) != 0)
        {
          break;
        }

LABEL_3:
        sub_24B2BF3E8(v97, type metadata accessor for SettingsContactsProvider.Subscription);
        a5 = v79;
      }

      v94 = ~v53;
      v95 = *(v83 + 72);
      while (1)
      {
        sub_24B2BF490(*(v98 + 48) + v95 * v54, v23, type metadata accessor for SettingsContactsProvider.Subscription);
        v57 = &v10[*(v93 + 48)];
        sub_24B2BF490(v23, v10, type metadata accessor for SettingsContactsProvider.Subscription);
        sub_24B2BF490(v97, v57, type metadata accessor for SettingsContactsProvider.Subscription);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          break;
        }

        v65 = v89;
        sub_24B2BF490(v10, v89, type metadata accessor for SettingsContactsProvider.Subscription);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          v66 = v85;
          v67 = v92;
          (*v86)(v85, v57, v92);
          MyUICore35SettingsPeopleRelationshipsProviderC12SubscriptionO10IdentifierV2eeoiySbAG_AGtFZ_0 = _s12FindMyUICore35SettingsPeopleRelationshipsProviderC12SubscriptionO10IdentifierV2eeoiySbAG_AGtFZ_0();
          v68 = v65;
          v69 = *v91;
          (*v91)(v66, v67);
          sub_24B2BF3E8(v23, type metadata accessor for SettingsContactsProvider.Subscription);
          v70 = v68;
          v10 = v84;
          v69(v70, v67);
          if (MyUICore35SettingsPeopleRelationshipsProviderC12SubscriptionO10IdentifierV2eeoiySbAG_AGtFZ_0)
          {
            goto LABEL_37;
          }

          goto LABEL_33;
        }

        sub_24B2BF3E8(v23, type metadata accessor for SettingsContactsProvider.Subscription);
        (*v91)(v65, v92);
LABEL_21:
        sub_24AFF8258(v10, &qword_27EFCDBC8);
LABEL_22:
        v54 = (v54 + 1) & v94;
        v55 = v54 >> 6;
        v56 = 1 << v54;
        if ((*(v96 + 8 * (v54 >> 6)) & (1 << v54)) == 0)
        {
          goto LABEL_3;
        }
      }

      v58 = v90;
      sub_24B2BF490(v10, v90, type metadata accessor for SettingsContactsProvider.Subscription);
      v60 = *v58;
      v59 = v58[1];
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        sub_24B2BF3E8(v23, type metadata accessor for SettingsContactsProvider.Subscription);

        goto LABEL_21;
      }

      v61 = *v57;
      v62 = *(v57 + 1);
      if (v60 != v61 || v59 != v62)
      {
        v64 = sub_24B2D6004();

        sub_24B2BF3E8(v23, type metadata accessor for SettingsContactsProvider.Subscription);
        if (v64)
        {
          goto LABEL_37;
        }

LABEL_33:
        sub_24B2BF3E8(v10, type metadata accessor for SettingsContactsProvider.Subscription);
        goto LABEL_22;
      }

      sub_24B2BF3E8(v23, type metadata accessor for SettingsContactsProvider.Subscription);
LABEL_37:
      sub_24B2BF3E8(v10, type metadata accessor for SettingsContactsProvider.Subscription);
      sub_24B2BF3E8(v97, type metadata accessor for SettingsContactsProvider.Subscription);
      v71 = v76[v55];
      v76[v55] = v71 & ~v56;
      a5 = v79;
    }

    while ((v71 & v56) == 0);
    v31 = v75 - 1;
    if (__OFSUB__(v75, 1))
    {
      goto LABEL_43;
    }
  }

  while (v75 != 1);
}

uint64_t sub_24B2B7340(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = result;
  v8 = *(a3 + 16);
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v9 = v8 - 1;
  v10 = a3 + 56;
  while (1)
  {
    v12 = a5[3];
    v13 = a5[4];
    if (!v13)
    {
      break;
    }

    v14 = a5[3];
LABEL_9:
    v17 = *(*(*a5 + 48) + (__clz(__rbit64(v13)) | (v14 << 6)));
    a5[3] = v14;
    a5[4] = (v13 - 1) & v13;
    sub_24B2D60E4();
    MEMORY[0x24C23C8D0](0);
    sub_24B2D6104();
    result = sub_24B2D6124();
    v18 = -1 << *(a3 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    v21 = 1 << v19;
    if (((1 << v19) & *(v10 + 8 * (v19 >> 6))) != 0)
    {
      v22 = *(a3 + 48);
      if (v17 == *(v22 + v19))
      {
LABEL_2:
        v11 = v7[v20];
        v7[v20] = v11 & ~v21;
        if ((v11 & v21) != 0)
        {
          if (__OFSUB__(v9--, 1))
          {
LABEL_24:
            __break(1u);
            return result;
          }

          if (!v9)
          {
            return MEMORY[0x277D84FA0];
          }
        }
      }

      else
      {
        v23 = ~v18;
        while (1)
        {
          v19 = (v19 + 1) & v23;
          v20 = v19 >> 6;
          v21 = 1 << v19;
          if (((1 << v19) & *(v10 + 8 * (v19 >> 6))) == 0)
          {
            break;
          }

          if (v17 == *(v22 + v19))
          {
            goto LABEL_2;
          }
        }
      }
    }
  }

  v15 = (a5[2] + 64) >> 6;
  v16 = a5[3];
  while (1)
  {
    v14 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      goto LABEL_24;
    }

    if (v14 >= v15)
    {
      break;
    }

    v13 = *(a5[1] + 8 * v14);
    ++v16;
    if (v13)
    {
      goto LABEL_9;
    }
  }

  if (v15 <= v12 + 1)
  {
    v25 = v12 + 1;
  }

  else
  {
    v25 = (a5[2] + 64) >> 6;
  }

  a5[3] = v25 - 1;
  a5[4] = 0;

  return sub_24B2A2FF4(v7, a2, v9, a3);
}

void sub_24B2B7520(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v61[0] = a2;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC7A8);
  MEMORY[0x28223BE20](v75);
  v65 = v61 - v9;
  v82 = type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier(0);
  v10 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v73 = v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v64 = v61 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC85C0);
  MEMORY[0x28223BE20](v14 - 8);
  v71 = v61 - v15;
  v70 = type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription(0);
  MEMORY[0x28223BE20](v70);
  v74 = v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = v61 - v18;
  MEMORY[0x28223BE20](v20);
  v66 = v61 - v21;
  MEMORY[0x28223BE20](v22);
  v83 = v61 - v23;
  v24 = *(a3 + 16);
  v25 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v26 = *(a1 + v25) & ((-1 << a4) - 1);
  v63 = a1;
  *(a1 + v25) = v26;
  v27 = v24 - 1;
  v69 = (v28 + 56);
  v72 = v28;
  v68 = (v28 + 48);
  v84 = a3;
  v80 = a3 + 56;
  v81 = (v10 + 48);
  v67 = a5;
  do
  {
    v62 = v27;
    do
    {
      while (1)
      {
        v29 = *a5;
        v30 = a5[1];
        v32 = a5[2];
        v31 = a5[3];
        v33 = a5[4];
        if (!v33)
        {
          v35 = (v32 + 64) >> 6;
          if (v35 <= v31 + 1)
          {
            v36 = v31 + 1;
          }

          else
          {
            v36 = (v32 + 64) >> 6;
          }

          v37 = v36 - 1;
          while (1)
          {
            v34 = v31 + 1;
            if (__OFADD__(v31, 1))
            {
              break;
            }

            if (v34 >= v35)
            {
              v38 = 0;
              v40 = 1;
              v39 = v71;
              goto LABEL_14;
            }

            v33 = *(v30 + 8 * v34);
            ++v31;
            if (v33)
            {
              goto LABEL_13;
            }
          }

          __break(1u);
LABEL_36:
          __break(1u);
          return;
        }

        v34 = a5[3];
LABEL_13:
        v38 = (v33 - 1) & v33;
        v39 = v71;
        sub_24B2BF490(*(v29 + 48) + *(v72 + 72) * (__clz(__rbit64(v33)) | (v34 << 6)), v71, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
        v40 = 0;
        v37 = v34;
LABEL_14:
        v41 = v70;
        (*v69)(v39, v40, 1, v70);
        *a5 = v29;
        a5[1] = v30;
        a5[2] = v32;
        a5[3] = v37;
        a5[4] = v38;
        if ((*v68)(v39, 1, v41) == 1)
        {
          sub_24AFF8258(v39, &qword_27EFC85C0);
          v60 = v84;

          sub_24B2A3208(v63, v61[0], v62, v60);
          return;
        }

        v42 = v83;
        sub_24B2BF380(v39, v83, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
        sub_24B2D60E4();
        v43 = v42;
        v44 = v66;
        sub_24B2BF490(v43, v66, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
        v45 = *v81;
        if ((*v81)(v44, 1, v82) == 1)
        {
          MEMORY[0x24C23C8D0](0);
        }

        else
        {
          v46 = v64;
          sub_24B2BF380(v44, v64, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
          MEMORY[0x24C23C8D0](1);
          sub_24B2D1704();
          sub_24B2BF448(&unk_27EFC7E58, MEMORY[0x277D08BF8]);
          sub_24B2D5254();
          sub_24B2BF3E8(v46, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
        }

        v47 = v74;
        v48 = sub_24B2D6124();
        v49 = -1 << *(v84 + 32);
        v50 = v48 & ~v49;
        v51 = v50 >> 6;
        v52 = 1 << v50;
        if (((1 << v50) & *(v80 + 8 * (v50 >> 6))) != 0)
        {
          break;
        }

LABEL_3:
        sub_24B2BF3E8(v83, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
        a5 = v67;
      }

      v77 = ~v49;
      v78 = *(v72 + 72);
      v79 = v45;
      v53 = v65;
      while (1)
      {
        v76 = v51;
        sub_24B2BF490(*(v84 + 48) + v78 * v50, v19, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
        v54 = *(v75 + 48);
        sub_24B2BF490(v19, v53, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
        sub_24B2BF490(v83, v53 + v54, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
        v55 = v82;
        v56 = v79;
        if (v79(v53, 1, v82) == 1)
        {
          sub_24B2BF3E8(v19, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
          if (v56(v53 + v54, 1, v55) == 1)
          {
            goto LABEL_28;
          }

          goto LABEL_21;
        }

        sub_24B2BF490(v53, v47, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
        if (v56(v53 + v54, 1, v55) != 1)
        {
          break;
        }

        sub_24B2BF3E8(v19, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
        sub_24B2BF3E8(v47, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
LABEL_21:
        sub_24AFF8258(v53, &qword_27EFCC7A8);
LABEL_22:
        v50 = (v50 + 1) & v77;
        v51 = v50 >> 6;
        v52 = 1 << v50;
        if ((*(v80 + 8 * (v50 >> 6)) & (1 << v50)) == 0)
        {
          goto LABEL_3;
        }
      }

      v57 = v73;
      sub_24B2BF380(v53 + v54, v73, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
      MyUICore35SettingsPeopleRelationshipsProviderC12SubscriptionO10IdentifierV2eeoiySbAG_AGtFZ_0 = _s12FindMyUICore35SettingsPeopleRelationshipsProviderC12SubscriptionO10IdentifierV2eeoiySbAG_AGtFZ_0();
      v47 = v74;
      sub_24B2BF3E8(v57, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
      sub_24B2BF3E8(v19, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
      sub_24B2BF3E8(v47, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
      if ((MyUICore35SettingsPeopleRelationshipsProviderC12SubscriptionO10IdentifierV2eeoiySbAG_AGtFZ_0 & 1) == 0)
      {
        sub_24B2BF3E8(v53, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
        goto LABEL_22;
      }

LABEL_28:
      sub_24B2BF3E8(v53, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
      sub_24B2BF3E8(v83, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
      v59 = v63[v76];
      v63[v76] = v59 & ~v52;
      a5 = v67;
    }

    while ((v59 & v52) == 0);
    v27 = v62 - 1;
    if (__OFSUB__(v62, 1))
    {
      goto LABEL_36;
    }
  }

  while (v62 != 1);
}

uint64_t sub_24B2B7DF8(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5, uint64_t *a6)
{
  v8 = result;
  v9 = *(a3 + 16);
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v10 = v9 - 1;
  v11 = a3 + 56;
  v12 = MEMORY[0x277D84FA0];
  while (1)
  {
    while (1)
    {
      v13 = a5[3];
      v14 = a5[4];
      if (!v14)
      {
        v16 = (a5[2] + 64) >> 6;
        v17 = a5[3];
        while (1)
        {
          v15 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            __break(1u);
            goto LABEL_19;
          }

          if (v15 >= v16)
          {
            break;
          }

          v14 = *(a5[1] + 8 * v15);
          ++v17;
          if (v14)
          {
            goto LABEL_8;
          }
        }

        if (v16 <= v13 + 1)
        {
          v24 = v13 + 1;
        }

        else
        {
          v24 = (a5[2] + 64) >> 6;
        }

        a5[3] = v24 - 1;
        a5[4] = 0;

        return sub_24B2A366C(v8, a2, v10, a3, a6);
      }

      v15 = a5[3];
LABEL_8:
      a5[3] = v15;
      a5[4] = (v14 - 1) & v14;
      sub_24B2D60E4();
      MEMORY[0x24C23C8D0](0);
      result = sub_24B2D6124();
      v18 = result & ~(-1 << *(a3 + 32));
      v19 = v18 >> 6;
      v20 = *(v11 + 8 * (v18 >> 6));
      v21 = 1 << v18;
      if ((v21 & v20) != 0)
      {
        v22 = v8[v19];
        v8[v19] = v22 & ~v21;
        if ((v22 & v21) != 0)
        {
          break;
        }
      }
    }

    if (__OFSUB__(v10--, 1))
    {
      break;
    }

    if (!v10)
    {
      return v12;
    }
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_24B2B7F80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_24B2D1704();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_24B2BF448(&unk_27EFC7E58, MEMORY[0x277D08BF8]);
  v31 = a1;
  v10 = sub_24B2D5244();
  v11 = v9 + 56;
  v29 = v9 + 56;
  v30 = v9;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v8, *(v30 + 48) + v18 * v13, v5);
      sub_24B2BF448(&qword_27EFC7E90, MEMORY[0x277D08BF8]);
      v19 = sub_24B2D52A4();
      (*(v16 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_24B1BAF00();
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    sub_24B2BAE94(v13);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

uint64_t sub_24B2B8228@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v4 = _s14descr285E46659O16SubscriptionDataO9LocationsVMa(0);
  v21 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = v2;
  v7 = *v2;
  sub_24B2D60E4();
  sub_24B2D1704();
  sub_24B2BF448(&unk_27EFC7E58, MEMORY[0x277D08BF8]);
  sub_24B2D5254();
  v23 = v4;
  v22 = *(a1 + *(v4 + 20));
  sub_24B2D6104();
  v8 = sub_24B2D6124();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
    return (*(v21 + 56))(v20, 1, 1, v23);
  }

  v11 = ~v9;
  v12 = *(v21 + 72);
  while (1)
  {
    sub_24B2BF490(*(v7 + 48) + v12 * v10, v6, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
    sub_24B2BF448(&qword_27EFC7E90, MEMORY[0x277D08BF8]);
    if (sub_24B2D52A4())
    {
      break;
    }

    sub_24B2BF3E8(v6, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
LABEL_4:
    v10 = (v10 + 1) & v11;
    if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      return (*(v21 + 56))(v20, 1, 1, v23);
    }
  }

  v13 = v6[*(v23 + 20)];
  sub_24B2BF3E8(v6, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
  if (v22 != v13)
  {
    goto LABEL_4;
  }

  v14 = v19;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v14;
  v24 = *v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_24B1BAF28();
    v16 = v24;
  }

  v17 = v20;
  sub_24B2BF380(*(v16 + 48) + v12 * v10, v20, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
  sub_24B2BB19C(v10);
  *v14 = v24;
  return (*(v21 + 56))(v17, 0, 1, v23);
}

uint64_t sub_24B2B8524@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = _s14descr285E46659O16SubscriptionDataOMa(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_24B2D60E4();
  sub_24B03ABC8();
  v10 = sub_24B2D6124();
  v11 = -1 << *(v9 + 32);
  v12 = v10 & ~v11;
  if ((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v21 = v2;
    v22 = v5;
    v23 = a2;
    v13 = ~v11;
    v14 = *(v6 + 72);
    while (1)
    {
      sub_24B2BF490(*(v9 + 48) + v14 * v12, v8, _s14descr285E46659O16SubscriptionDataOMa);
      v15 = sub_24B0401A4(v8, a1);
      sub_24B2BF3E8(v8, _s14descr285E46659O16SubscriptionDataOMa);
      if (v15)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        v16 = 1;
        a2 = v23;
        goto LABEL_10;
      }
    }

    v17 = v21;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v17;
    v24 = *v17;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_24B1BACF4();
      v19 = v24;
    }

    a2 = v23;
    sub_24B2BF380(*(v19 + 48) + v14 * v12, v23, _s14descr285E46659O16SubscriptionDataOMa);
    sub_24B2BB4BC(v12);
    v16 = 0;
    *v17 = v24;
LABEL_10:
    v5 = v22;
  }

  else
  {
    v16 = 1;
  }

  return (*(v6 + 56))(a2, v16, 1, v5);
}

uint64_t sub_24B2B8758@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for ContactsProvider.Subscription(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_24B2D60E4();
  ContactsProvider.Subscription.hash(into:)();
  v10 = sub_24B2D6124();
  v11 = -1 << *(v9 + 32);
  v12 = v10 & ~v11;
  if ((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v21 = v2;
    v22 = v5;
    v23 = a2;
    v13 = ~v11;
    v14 = *(v6 + 72);
    while (1)
    {
      sub_24B2BF490(*(v9 + 48) + v14 * v12, v8, type metadata accessor for ContactsProvider.Subscription);
      MyUICore16ContactsProviderC12SubscriptionO2eeoiySbAE_AEtFZ_0 = _s12FindMyUICore16ContactsProviderC12SubscriptionO2eeoiySbAE_AEtFZ_0(v8, a1);
      sub_24B2BF3E8(v8, type metadata accessor for ContactsProvider.Subscription);
      if (MyUICore16ContactsProviderC12SubscriptionO2eeoiySbAE_AEtFZ_0)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        v16 = 1;
        a2 = v23;
        goto LABEL_10;
      }
    }

    v17 = v21;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v17;
    v24 = *v17;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_24B1BB6A0();
      v19 = v24;
    }

    a2 = v23;
    sub_24B2BF380(*(v19 + 48) + v14 * v12, v23, type metadata accessor for ContactsProvider.Subscription);
    sub_24B2BBAB0(v12);
    v16 = 0;
    *v17 = v24;
LABEL_10:
    v5 = v22;
  }

  else
  {
    v16 = 1;
  }

  return (*(v6 + 56))(a2, v16, 1, v5);
}

uint64_t sub_24B2B898C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = type metadata accessor for PeopleLocationsProvider.Subscription(0);
  v28 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = v2;
  v7 = *v2;
  sub_24B2D60E4();
  sub_24B2D1574();
  sub_24B2BF448(&qword_27EFCC6C0, MEMORY[0x277D08B50]);
  sub_24B2D5254();
  v29 = *(v4 + 20);
  v30 = v4;
  sub_24B2D5404();

  v8 = sub_24B2D6124();
  v9 = v7 + 56;
  v32 = v7;
  v10 = -1 << *(v7 + 32);
  v11 = v8 & ~v10;
  if (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
    return (*(v28 + 56))(v27, 1, 1, v30);
  }

  v31 = ~v10;
  v12 = *(v28 + 72);
  while (1)
  {
    sub_24B2BF490(*(v32 + 48) + v12 * v11, v6, type metadata accessor for PeopleLocationsProvider.Subscription);
    sub_24B2BF448(&qword_27EFCC6D8, MEMORY[0x277D08B50]);
    sub_24B2D54E4();
    sub_24B2D54E4();
    if (v35 == v33 && v36 == v34)
    {
    }

    else
    {
      v14 = sub_24B2D6004();

      if ((v14 & 1) == 0)
      {
        sub_24B2BF3E8(v6, type metadata accessor for PeopleLocationsProvider.Subscription);
        goto LABEL_4;
      }
    }

    v15 = v6[*(v30 + 20)] ? 0x776F6C6C616873 : 1702259052;
    v16 = v6[*(v30 + 20)] ? 0xE700000000000000 : 0xE400000000000000;
    v17 = *(a1 + v29) ? 0x776F6C6C616873 : 1702259052;
    v18 = *(a1 + v29) ? 0xE700000000000000 : 0xE400000000000000;
    if (v15 == v17 && v16 == v18)
    {
      break;
    }

    v20 = sub_24B2D6004();

    sub_24B2BF3E8(v6, type metadata accessor for PeopleLocationsProvider.Subscription);
    if (v20)
    {
      goto LABEL_32;
    }

LABEL_4:
    v11 = (v11 + 1) & v31;
    if (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      return (*(v28 + 56))(v27, 1, 1, v30);
    }
  }

  sub_24B2BF3E8(v6, type metadata accessor for PeopleLocationsProvider.Subscription);
LABEL_32:
  v22 = v26;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v24 = *v22;
  v35 = *v22;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_24B1BB8AC();
    v24 = v35;
  }

  v25 = v27;
  sub_24B2BF380(*(v24 + 48) + v12 * v11, v27, type metadata accessor for PeopleLocationsProvider.Subscription);
  sub_24B2BC1A0(v11);
  *v22 = v35;
  return (*(v28 + 56))(v25, 0, 1, v30);
}

uint64_t sub_24B2B8DC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC6D0);
  MEMORY[0x28223BE20](v6);
  v8 = &v41 - v7;
  v9 = sub_24B2D1574();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v51 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v41 - v13;
  v44 = type metadata accessor for PeopleProvider.Subscription(0);
  v45 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v48 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v41 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v41 - v20;
  v58 = *v3;
  sub_24B2D60E4();
  sub_24B2BF490(a1, v21, type metadata accessor for PeopleProvider.Subscription);
  v56 = *(v10 + 48);
  v57 = v10 + 48;
  if (v56(v21, 1, v9) == 1)
  {
    MEMORY[0x24C23C8D0](0);
  }

  else
  {
    (*(v10 + 32))(v14, v21, v9);
    MEMORY[0x24C23C8D0](1);
    sub_24B2BF448(&qword_27EFCC6C0, MEMORY[0x277D08B50]);
    sub_24B2D5254();
    (*(v10 + 8))(v14, v9);
  }

  v22 = sub_24B2D6124();
  v23 = -1 << *(v58 + 32);
  v24 = v22 & ~v23;
  v55 = v58 + 56;
  if (((*(v58 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
  {
    v35 = 1;
    return (*(v45 + 56))(a2, v35, 1, v44);
  }

  v42 = v3;
  v43 = a2;
  v52 = ~v23;
  v54 = *(v45 + 72);
  v46 = (v10 + 32);
  v50 = (v10 + 8);
  v25 = v48;
  v47 = v18;
  while (1)
  {
    v26 = *(v58 + 48);
    v53 = v54 * v24;
    sub_24B2BF490(v26 + v54 * v24, v18, type metadata accessor for PeopleProvider.Subscription);
    v27 = *(v6 + 48);
    sub_24B2BF490(v18, v8, type metadata accessor for PeopleProvider.Subscription);
    sub_24B2BF490(a1, &v8[v27], type metadata accessor for PeopleProvider.Subscription);
    v28 = v56;
    if (v56(v8, 1, v9) == 1)
    {
      sub_24B2BF3E8(v18, type metadata accessor for PeopleProvider.Subscription);
      if (v28(&v8[v27], 1, v9) == 1)
      {
        goto LABEL_19;
      }

      goto LABEL_7;
    }

    sub_24B2BF490(v8, v25, type metadata accessor for PeopleProvider.Subscription);
    if (v28(&v8[v27], 1, v9) == 1)
    {
      sub_24B2BF3E8(v18, type metadata accessor for PeopleProvider.Subscription);
      (*v50)(v25, v9);
LABEL_7:
      sub_24AFF8258(v8, &qword_27EFCC6D0);
      goto LABEL_8;
    }

    (*v46)(v51, &v8[v27], v9);
    sub_24B2BF448(&qword_27EFCC6D8, MEMORY[0x277D08B50]);
    sub_24B2D54E4();
    sub_24B2D54E4();
    if (v61 == v59 && v62 == v60)
    {
      break;
    }

    v49 = sub_24B2D6004();
    v29 = v6;
    v30 = a1;
    v31 = *v50;
    (*v50)(v51, v9);
    v32 = v9;
    v33 = v47;
    sub_24B2BF3E8(v47, type metadata accessor for PeopleProvider.Subscription);

    v34 = v48;
    v31(v48, v32);
    if (v49)
    {
      goto LABEL_19;
    }

    v18 = v33;
    v9 = v32;
    a1 = v30;
    v6 = v29;
    v25 = v34;
    sub_24B2BF3E8(v8, type metadata accessor for PeopleProvider.Subscription);
LABEL_8:
    v24 = (v24 + 1) & v52;
    if (((*(v55 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
    {
      v35 = 1;
      a2 = v43;
      return (*(v45 + 56))(a2, v35, 1, v44);
    }
  }

  v36 = *v50;
  (*v50)(v51, v9);
  sub_24B2BF3E8(v47, type metadata accessor for PeopleProvider.Subscription);

  v36(v48, v9);
LABEL_19:
  sub_24B2BF3E8(v8, type metadata accessor for PeopleProvider.Subscription);
  v37 = v42;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v39 = *v37;
  v61 = *v37;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_24B1BBAB8();
    v39 = v61;
  }

  a2 = v43;
  sub_24B2BF380(*(v39 + 48) + v53, v43, type metadata accessor for PeopleProvider.Subscription);
  sub_24B2BC4F0(v24);
  v35 = 0;
  *v37 = v61;
  return (*(v45 + 56))(a2, v35, 1, v44);
}

uint64_t sub_24B2B9564@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for ItemsLocationsProvider.Subscription(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v3;
  sub_24B2D60E4();
  sub_24B2D1DA4();
  sub_24B2BF448(&qword_27EFCC630, MEMORY[0x277D08E20]);
  v28 = a1;
  sub_24B2D5254();
  sub_24B2D5404();
  v11 = sub_24B2D6124();
  v12 = -1 << *(v10 + 32);
  v13 = v11 & ~v12;
  if ((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v23 = v3;
    v24 = v7;
    v25 = v6;
    v26 = a2;
    v27 = ~v12;
    v14 = *(v7 + 72);
    while (1)
    {
      sub_24B2BF490(*(v10 + 48) + v14 * v13, v9, type metadata accessor for ItemsLocationsProvider.Subscription);
      sub_24B2BF448(&qword_27EFCC6E8, MEMORY[0x277D08E20]);
      sub_24B2D54E4();
      sub_24B2D54E4();
      if (v31 == v29 && v32 == v30)
      {
        break;
      }

      v16 = sub_24B2D6004();

      if (v16)
      {
        goto LABEL_12;
      }

      sub_24B2BF3E8(v9, type metadata accessor for ItemsLocationsProvider.Subscription);
      v13 = (v13 + 1) & v27;
      if (((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v17 = 1;
        a2 = v26;
        goto LABEL_15;
      }
    }

LABEL_12:
    sub_24B2BF3E8(v9, type metadata accessor for ItemsLocationsProvider.Subscription);
    v18 = v23;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v18;
    v31 = *v18;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_24B1BBED0();
      v20 = v31;
    }

    a2 = v26;
    sub_24B2BF380(*(v20 + 48) + v14 * v13, v26, type metadata accessor for ItemsLocationsProvider.Subscription);
    sub_24B2BC950(v13);
    v17 = 0;
    *v18 = v31;
LABEL_15:
    v7 = v24;
    v6 = v25;
  }

  else
  {
    v17 = 1;
  }

  return (*(v7 + 56))(a2, v17, 1, v6);
}

uint64_t sub_24B2B98B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC6E0);
  MEMORY[0x28223BE20](v6);
  v8 = &v41 - v7;
  v9 = sub_24B2D1DA4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v51 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v41 - v13;
  v44 = type metadata accessor for ItemsProvider.Subscription(0);
  v45 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v48 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v41 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v41 - v20;
  v58 = *v3;
  sub_24B2D60E4();
  sub_24B2BF490(a1, v21, type metadata accessor for ItemsProvider.Subscription);
  v56 = *(v10 + 48);
  v57 = v10 + 48;
  if (v56(v21, 1, v9) == 1)
  {
    MEMORY[0x24C23C8D0](0);
  }

  else
  {
    (*(v10 + 32))(v14, v21, v9);
    MEMORY[0x24C23C8D0](1);
    sub_24B2BF448(&qword_27EFCC630, MEMORY[0x277D08E20]);
    sub_24B2D5254();
    (*(v10 + 8))(v14, v9);
  }

  v22 = sub_24B2D6124();
  v23 = -1 << *(v58 + 32);
  v24 = v22 & ~v23;
  v55 = v58 + 56;
  if (((*(v58 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
  {
    v35 = 1;
    return (*(v45 + 56))(a2, v35, 1, v44);
  }

  v42 = v3;
  v43 = a2;
  v52 = ~v23;
  v54 = *(v45 + 72);
  v46 = (v10 + 32);
  v50 = (v10 + 8);
  v25 = v48;
  v47 = v18;
  while (1)
  {
    v26 = *(v58 + 48);
    v53 = v54 * v24;
    sub_24B2BF490(v26 + v54 * v24, v18, type metadata accessor for ItemsProvider.Subscription);
    v27 = *(v6 + 48);
    sub_24B2BF490(v18, v8, type metadata accessor for ItemsProvider.Subscription);
    sub_24B2BF490(a1, &v8[v27], type metadata accessor for ItemsProvider.Subscription);
    v28 = v56;
    if (v56(v8, 1, v9) == 1)
    {
      sub_24B2BF3E8(v18, type metadata accessor for ItemsProvider.Subscription);
      if (v28(&v8[v27], 1, v9) == 1)
      {
        goto LABEL_19;
      }

      goto LABEL_7;
    }

    sub_24B2BF490(v8, v25, type metadata accessor for ItemsProvider.Subscription);
    if (v28(&v8[v27], 1, v9) == 1)
    {
      sub_24B2BF3E8(v18, type metadata accessor for ItemsProvider.Subscription);
      (*v50)(v25, v9);
LABEL_7:
      sub_24AFF8258(v8, &qword_27EFCC6E0);
      goto LABEL_8;
    }

    (*v46)(v51, &v8[v27], v9);
    sub_24B2BF448(&qword_27EFCC6E8, MEMORY[0x277D08E20]);
    sub_24B2D54E4();
    sub_24B2D54E4();
    if (v61 == v59 && v62 == v60)
    {
      break;
    }

    v49 = sub_24B2D6004();
    v29 = v6;
    v30 = a1;
    v31 = *v50;
    (*v50)(v51, v9);
    v32 = v9;
    v33 = v47;
    sub_24B2BF3E8(v47, type metadata accessor for ItemsProvider.Subscription);

    v34 = v48;
    v31(v48, v32);
    if (v49)
    {
      goto LABEL_19;
    }

    v18 = v33;
    v9 = v32;
    a1 = v30;
    v6 = v29;
    v25 = v34;
    sub_24B2BF3E8(v8, type metadata accessor for ItemsProvider.Subscription);
LABEL_8:
    v24 = (v24 + 1) & v52;
    if (((*(v55 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
    {
      v35 = 1;
      a2 = v43;
      return (*(v45 + 56))(a2, v35, 1, v44);
    }
  }

  v36 = *v50;
  (*v50)(v51, v9);
  sub_24B2BF3E8(v47, type metadata accessor for ItemsProvider.Subscription);

  v36(v48, v9);
LABEL_19:
  sub_24B2BF3E8(v8, type metadata accessor for ItemsProvider.Subscription);
  v37 = v42;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v39 = *v37;
  v61 = *v37;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_24B1BC0DC();
    v39 = v61;
  }

  a2 = v43;
  sub_24B2BF380(*(v39 + 48) + v53, v43, type metadata accessor for ItemsProvider.Subscription);
  sub_24B2BCC80(v24);
  v35 = 0;
  *v37 = v61;
  return (*(v45 + 56))(a2, v35, 1, v44);
}

uint64_t sub_24B2BA054@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDBC8);
  MEMORY[0x28223BE20](v59);
  v6 = &v48 - v5;
  v7 = sub_24B2D1704();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v52 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v48 - v11;
  v13 = type metadata accessor for SettingsContactsProvider.Subscription();
  v50 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v53 = (&v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v15);
  v55 = &v48 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v48 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v48 - v21;
  v61 = *v2;
  sub_24B2D60E4();
  v60 = a1;
  sub_24B2BF490(a1, v22, type metadata accessor for SettingsContactsProvider.Subscription);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v54 = v7;
  v49 = v2;
  if (EnumCaseMultiPayload == 1)
  {
    MEMORY[0x24C23C8D0](1);
    sub_24B2D5404();
  }

  else
  {
    (*(v8 + 32))(v12, v22, v7);
    MEMORY[0x24C23C8D0](0);
    sub_24B2BF448(&unk_27EFC7E58, MEMORY[0x277D08BF8]);
    sub_24B2D5254();
    (*(v8 + 8))(v12, v7);
  }

  v24 = sub_24B2D6124();
  v25 = -1 << *(v61 + 32);
  v26 = v24 & ~v25;
  v58 = v61 + 56;
  v27 = v55;
  if (((*(v61 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
  {
    v43 = 1;
    return (*(v50 + 56))(a2, v43, 1, v13);
  }

  v48 = a2;
  v56 = ~v25;
  v57 = *(v50 + 72);
  v51 = (v8 + 32);
  v28 = (v8 + 8);
  while (1)
  {
    v29 = v57 * v26;
    sub_24B2BF490(*(v61 + 48) + v57 * v26, v19, type metadata accessor for SettingsContactsProvider.Subscription);
    v30 = &v6[*(v59 + 48)];
    sub_24B2BF490(v19, v6, type metadata accessor for SettingsContactsProvider.Subscription);
    sub_24B2BF490(v60, v30, type metadata accessor for SettingsContactsProvider.Subscription);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      break;
    }

    sub_24B2BF490(v6, v27, type metadata accessor for SettingsContactsProvider.Subscription);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v38 = v52;
      v39 = v54;
      (*v51)(v52, v30, v54);
      MyUICore35SettingsPeopleRelationshipsProviderC12SubscriptionO10IdentifierV2eeoiySbAG_AGtFZ_0 = _s12FindMyUICore35SettingsPeopleRelationshipsProviderC12SubscriptionO10IdentifierV2eeoiySbAG_AGtFZ_0();
      v41 = *v28;
      v42 = v38;
      v27 = v55;
      (*v28)(v42, v39);
      sub_24B2BF3E8(v19, type metadata accessor for SettingsContactsProvider.Subscription);
      v41(v27, v39);
      if (MyUICore35SettingsPeopleRelationshipsProviderC12SubscriptionO10IdentifierV2eeoiySbAG_AGtFZ_0)
      {
        goto LABEL_24;
      }

      goto LABEL_19;
    }

    sub_24B2BF3E8(v19, type metadata accessor for SettingsContactsProvider.Subscription);
    (*v28)(v27, v54);
LABEL_7:
    sub_24AFF8258(v6, &qword_27EFCDBC8);
LABEL_8:
    v26 = (v26 + 1) & v56;
    if (((*(v58 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
    {
      v43 = 1;
      a2 = v48;
      return (*(v50 + 56))(a2, v43, 1, v13);
    }
  }

  v31 = v53;
  sub_24B2BF490(v6, v53, type metadata accessor for SettingsContactsProvider.Subscription);
  v33 = *v31;
  v32 = v31[1];
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_24B2BF3E8(v19, type metadata accessor for SettingsContactsProvider.Subscription);

    goto LABEL_7;
  }

  v34 = *v30;
  v35 = *(v30 + 1);
  if (v33 != v34 || v32 != v35)
  {
    v37 = sub_24B2D6004();

    sub_24B2BF3E8(v19, type metadata accessor for SettingsContactsProvider.Subscription);
    if (v37)
    {
      goto LABEL_24;
    }

LABEL_19:
    sub_24B2BF3E8(v6, type metadata accessor for SettingsContactsProvider.Subscription);
    goto LABEL_8;
  }

  sub_24B2BF3E8(v19, type metadata accessor for SettingsContactsProvider.Subscription);
LABEL_24:
  sub_24B2BF3E8(v6, type metadata accessor for SettingsContactsProvider.Subscription);
  v44 = v49;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v46 = *v44;
  v62 = *v44;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_24B1BC2E8();
    v46 = v62;
  }

  a2 = v48;
  sub_24B2BF380(*(v46 + 48) + v29, v48, type metadata accessor for SettingsContactsProvider.Subscription);
  sub_24B2BD0E0(v26);
  v43 = 0;
  *v44 = v62;
  return (*(v50 + 56))(a2, v43, 1, v13);
}

unint64_t sub_24B2BA758@<X0>(char a1@<W0>, _BYTE *a2@<X8>)
{
  v5 = *v2;
  sub_24B2D60E4();
  MEMORY[0x24C23C8D0](0);
  v6 = a1 & 1;
  sub_24B2D6104();
  result = sub_24B2D6124();
  v8 = -1 << *(v5 + 32);
  v9 = result & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (*(*(v5 + 48) + v9) != v6)
    {
      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    v13 = *v2;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_24B1BC4F4();
      v12 = v13;
    }

    *a2 = *(*(v12 + 48) + v9);
    result = sub_24B2BD53C(v9);
    *v2 = v13;
  }

  else
  {
LABEL_5:
    *a2 = 2;
  }

  return result;
}

uint64_t sub_24B2BA874@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC7A8);
  MEMORY[0x28223BE20](v48);
  v7 = &v39 - v6;
  v8 = type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v43 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v39 - v12;
  v14 = type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription(0);
  v15 = *(v14 - 8);
  v41 = v14;
  v42 = v15;
  MEMORY[0x28223BE20](v14);
  v44 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v39 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v39 - v21;
  v50 = *v3;
  sub_24B2D60E4();
  v49 = a1;
  sub_24B2BF490(a1, v22, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
  v23 = *(v9 + 48);
  if (v23(v22, 1, v8) == 1)
  {
    MEMORY[0x24C23C8D0](0);
  }

  else
  {
    sub_24B2BF380(v22, v13, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
    MEMORY[0x24C23C8D0](1);
    sub_24B2D1704();
    sub_24B2BF448(&unk_27EFC7E58, MEMORY[0x277D08BF8]);
    sub_24B2D5254();
    sub_24B2BF3E8(v13, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
  }

  v24 = sub_24B2D6124();
  v25 = -1 << *(v50 + 32);
  v26 = v24 & ~v25;
  v47 = v50 + 56;
  if (((*(v50 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
  {
    v33 = 1;
    return (*(v42 + 56))(a2, v33, 1, v41);
  }

  v39 = v3;
  v40 = a2;
  v45 = ~v25;
  v46 = *(v42 + 72);
  v27 = v44;
  while (1)
  {
    v28 = v46 * v26;
    sub_24B2BF490(*(v50 + 48) + v46 * v26, v19, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
    v29 = *(v48 + 48);
    sub_24B2BF490(v19, v7, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
    sub_24B2BF490(v49, &v7[v29], type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
    if (v23(v7, 1, v8) == 1)
    {
      sub_24B2BF3E8(v19, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
      if (v23(&v7[v29], 1, v8) == 1)
      {
        goto LABEL_16;
      }

      goto LABEL_7;
    }

    sub_24B2BF490(v7, v27, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
    if (v23(&v7[v29], 1, v8) != 1)
    {
      break;
    }

    sub_24B2BF3E8(v19, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
    sub_24B2BF3E8(v27, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
LABEL_7:
    sub_24AFF8258(v7, &qword_27EFCC7A8);
LABEL_8:
    v26 = (v26 + 1) & v45;
    if (((*(v47 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
    {
      v33 = 1;
      a2 = v40;
      return (*(v42 + 56))(a2, v33, 1, v41);
    }
  }

  v30 = v43;
  sub_24B2BF380(&v7[v29], v43, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
  MyUICore35SettingsPeopleRelationshipsProviderC12SubscriptionO10IdentifierV2eeoiySbAG_AGtFZ_0 = _s12FindMyUICore35SettingsPeopleRelationshipsProviderC12SubscriptionO10IdentifierV2eeoiySbAG_AGtFZ_0();
  v32 = v30;
  v27 = v44;
  sub_24B2BF3E8(v32, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
  sub_24B2BF3E8(v19, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
  sub_24B2BF3E8(v27, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
  if ((MyUICore35SettingsPeopleRelationshipsProviderC12SubscriptionO10IdentifierV2eeoiySbAG_AGtFZ_0 & 1) == 0)
  {
    sub_24B2BF3E8(v7, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
    goto LABEL_8;
  }

LABEL_16:
  sub_24B2BF3E8(v7, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
  v34 = v39;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v34;
  v51 = *v34;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_24B1BC634();
    v36 = v51;
  }

  v37 = *(v36 + 48) + v28;
  a2 = v40;
  sub_24B2BF380(v37, v40, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
  sub_24B2BD6F0(v26);
  v33 = 0;
  *v34 = v51;
  return (*(v42 + 56))(a2, v33, 1, v41);
}

uint64_t sub_24B2BAE94(int64_t a1)
{
  v3 = sub_24B2D1704();
  v4 = *(v3 - 8);
  result = MEMORY[0x28223BE20](v3);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v9 = *v1 + 56;
  v10 = -1 << *(*v1 + 32);
  v11 = (a1 + 1) & ~v10;
  if (((1 << v11) & *(v9 + 8 * (v11 >> 6))) != 0)
  {
    v12 = ~v10;

    v13 = sub_24B2D5B64();
    if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) != 0)
    {
      v14 = v12;
      v15 = (v13 + 1) & v12;
      v35 = *(v4 + 16);
      v36 = v4 + 16;
      v16 = *(v4 + 72);
      v33 = (v4 + 8);
      v34 = v9;
      v17 = v16;
      do
      {
        v18 = v17;
        v19 = v17 * v11;
        v35(v7, *(v8 + 48) + v17 * v11, v3);
        v20 = v8;
        v21 = v15;
        v22 = v14;
        v23 = v20;
        sub_24B2BF448(&unk_27EFC7E58, MEMORY[0x277D08BF8]);
        v24 = sub_24B2D5244();
        (*v33)(v7, v3);
        v25 = v24 & v22;
        v14 = v22;
        v15 = v21;
        if (a1 >= v21)
        {
          if (v25 >= v21 && a1 >= v25)
          {
LABEL_16:
            v8 = v23;
            v28 = *(v23 + 48);
            v17 = v18;
            v29 = v18 * a1;
            if (v18 * a1 < v19 || v28 + v18 * a1 >= (v28 + v19 + v18))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v11;
            }

            else
            {
              a1 = v11;
              if (v29 != v19)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v11;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v25 >= v21 || a1 >= v25)
        {
          goto LABEL_16;
        }

        v8 = v23;
        v17 = v18;
LABEL_5:
        v11 = (v11 + 1) & v14;
        v9 = v34;
      }

      while (((*(v34 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
    }

    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v30 = *(v8 + 16);
  v31 = __OFSUB__(v30, 1);
  v32 = v30 - 1;
  if (v31)
  {
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v32;
    ++*(v8 + 36);
  }

  return result;
}

uint64_t sub_24B2BB19C(int64_t a1)
{
  v27 = _s14descr285E46659O16SubscriptionDataO9LocationsVMa(0);
  v3 = *(v27 - 8);
  result = MEMORY[0x28223BE20](v27);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = *v1 + 56;
  v9 = -1 << *(*v1 + 32);
  v10 = (a1 + 1) & ~v9;
  if (((1 << v10) & *(v8 + 8 * (v10 >> 6))) != 0)
  {
    v11 = ~v9;

    v12 = sub_24B2D5B64();
    if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) != 0)
    {
      v26 = (v12 + 1) & v11;
      v13 = *(v3 + 72);
      v14 = v11;
      do
      {
        v15 = v8;
        v16 = v13;
        v17 = v13 * v10;
        sub_24B2BF490(*(v7 + 48) + v13 * v10, v6, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
        sub_24B2D60E4();
        sub_24B2D1704();
        sub_24B2BF448(&unk_27EFC7E58, MEMORY[0x277D08BF8]);
        v18 = v14;
        sub_24B2D5254();
        sub_24B2D6104();
        v19 = sub_24B2D6124();
        sub_24B2BF3E8(v6, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
        v20 = v19 & v18;
        v14 = v18;
        if (a1 >= v26)
        {
          if (v20 < v26)
          {
            v13 = v16;
            goto LABEL_5;
          }

          v13 = v16;
          if (a1 < v20)
          {
            goto LABEL_5;
          }
        }

        else
        {
          v13 = v16;
          if (v20 < v26 && a1 < v20)
          {
            goto LABEL_5;
          }
        }

        v21 = v13 * a1;
        if (v13 * a1 < v17 || *(v7 + 48) + v13 * a1 >= (*(v7 + 48) + v17 + v13))
        {
          swift_arrayInitWithTakeFrontToBack();
          goto LABEL_17;
        }

        a1 = v10;
        if (v21 != v17)
        {
          swift_arrayInitWithTakeBackToFront();
LABEL_17:
          a1 = v10;
        }

LABEL_5:
        v10 = (v10 + 1) & v14;
        v8 = v15;
      }

      while (((*(v15 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
    }

    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v22 = *(v7 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v24;
    ++*(v7 + 36);
  }

  return result;
}

uint64_t sub_24B2BB4BC(unint64_t a1)
{
  v40 = _s14descr285E46659O16SubscriptionDataO9LocationsVMa(0);
  MEMORY[0x28223BE20](v40);
  v39 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = _s14descr285E46659O16SubscriptionDataO10DirectionsVMa(0);
  MEMORY[0x28223BE20](v4 - 8);
  v38 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = _s14descr285E46659O16SubscriptionDataO10FriendshipVMa(0);
  MEMORY[0x28223BE20](v6 - 8);
  v37 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = _s14descr285E46659O16SubscriptionDataOMa(0);
  v8 = *(v44 - 8);
  v9 = MEMORY[0x28223BE20](v44);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v14 = &v36 - v13;
  v15 = *v1;
  v16 = *v1 + 56;
  v17 = -1 << *(*v1 + 32);
  v18 = (a1 + 1) & ~v17;
  if (((1 << v18) & *(v16 + 8 * (v18 >> 6))) != 0)
  {
    v19 = ~v17;

    v20 = sub_24B2D5B64();
    if ((*(v16 + 8 * (v18 >> 6)) & (1 << v18)) != 0)
    {
      v42 = v16;
      v43 = (v20 + 1) & v19;
      v21 = *(v8 + 72);
      v22 = v19;
      v41 = v19;
      while (1)
      {
        v23 = v21;
        v24 = v21 * v18;
        sub_24B2BF490(*(v15 + 48) + v21 * v18, v14, _s14descr285E46659O16SubscriptionDataOMa);
        sub_24B2D60E4();
        sub_24B2BF490(v14, v11, _s14descr285E46659O16SubscriptionDataOMa);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload <= 1)
        {
          if (EnumCaseMultiPayload)
          {
            v26 = v38;
            sub_24B2BF380(v11, v38, _s14descr285E46659O16SubscriptionDataO10DirectionsVMa);
            MEMORY[0x24C23C8D0](3);
            sub_24B2D1704();
            sub_24B2BF448(&unk_27EFC7E58, MEMORY[0x277D08BF8]);
            sub_24B2D5254();
            v27 = _s14descr285E46659O16SubscriptionDataO10DirectionsVMa;
          }

          else
          {
            v26 = v37;
            sub_24B2BF380(v11, v37, _s14descr285E46659O16SubscriptionDataO10FriendshipVMa);
            MEMORY[0x24C23C8D0](2);
            sub_24B2D1704();
            sub_24B2BF448(&unk_27EFC7E58, MEMORY[0x277D08BF8]);
            sub_24B2D5254();
            v27 = _s14descr285E46659O16SubscriptionDataO10FriendshipVMa;
          }

          sub_24B2BF3E8(v26, v27);
          v22 = v41;
          v16 = v42;
        }

        else if (EnumCaseMultiPayload == 2)
        {
          v28 = v39;
          sub_24B2BF380(v11, v39, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
          MEMORY[0x24C23C8D0](4);
          sub_24B2D1704();
          sub_24B2BF448(&unk_27EFC7E58, MEMORY[0x277D08BF8]);
          v22 = v41;
          sub_24B2D5254();
          sub_24B2D6104();
          v29 = v28;
          v16 = v42;
          sub_24B2BF3E8(v29, _s14descr285E46659O16SubscriptionDataO9LocationsVMa);
        }

        else if (EnumCaseMultiPayload == 3)
        {
          MEMORY[0x24C23C8D0](0);
        }

        else
        {
          MEMORY[0x24C23C8D0](1);
        }

        v30 = sub_24B2D6124();
        sub_24B2BF3E8(v14, _s14descr285E46659O16SubscriptionDataOMa);
        v31 = v30 & v22;
        if (a1 >= v43)
        {
          break;
        }

        v21 = v23;
        if (v31 < v43)
        {
          goto LABEL_21;
        }

LABEL_22:
        v32 = v21 * a1;
        if ((v21 * a1) < v24 || *(v15 + 48) + v21 * a1 >= *(v15 + 48) + v24 + v21)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else
        {
          a1 = v18;
          if (v32 == v24)
          {
            goto LABEL_6;
          }

          swift_arrayInitWithTakeBackToFront();
        }

        a1 = v18;
LABEL_6:
        v18 = (v18 + 1) & v22;
        if (((*(v16 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
        {
          goto LABEL_26;
        }
      }

      v21 = v23;
      if (v31 < v43)
      {
        goto LABEL_6;
      }

LABEL_21:
      if (a1 < v31)
      {
        goto LABEL_6;
      }

      goto LABEL_22;
    }

LABEL_26:

    *(v16 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v16 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v33 = *(v15 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(v15 + 16) = v35;
    ++*(v15 + 36);
  }

  return result;
}

void sub_24B2BBAB0(int64_t a1)
{
  v54 = sub_24B2D14C4();
  v3 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v49 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_24B2D15F4();
  v5 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC810);
  MEMORY[0x28223BE20](v8 - 8);
  v53 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v46 - v11;
  v62 = type metadata accessor for ContactsProvider.Subscription(0);
  v13 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v59 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v55 = &v46 - v16;
  v17 = *v1;
  v18 = *v1 + 56;
  v19 = -1 << *(*v1 + 32);
  v20 = (a1 + 1) & ~v19;
  v21 = v20 >> 6;
  v22 = *(v18 + 8 * (v20 >> 6));
  v63 = v20;
  v23 = 1 << v20;
  if (((1 << v20) & v22) != 0)
  {
    v50 = v5;
    v57 = v3;
    v24 = ~v19;

    v25 = sub_24B2D5B64();
    if ((*(v18 + 8 * v21) & v23) != 0)
    {
      v56 = (v25 + 1) & v24;
      v26 = *(v13 + 72);
      v52 = (v50 + 4);
      v51 = (v57 + 48);
      v48 = (v57 + 32);
      v47 = (v57 + 8);
      ++v50;
      v57 = v18;
      v27 = v55;
      v28 = v63;
      v60 = v26;
      v61 = v24;
      while (1)
      {
        v30 = *(v17 + 48);
        v63 = v28;
        v31 = v26 * v28;
        sub_24B2BF490(v30 + v26 * v28, v27, type metadata accessor for ContactsProvider.Subscription);
        sub_24B2D60E4();
        v32 = v59;
        sub_24B2BF490(v27, v59, type metadata accessor for ContactsProvider.Subscription);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          MEMORY[0x24C23C8D0](1);
          v27 = v55;
          sub_24B2D5404();
        }

        else
        {
          v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC820) + 48);
          sub_24B0391CC(v32, v12, &qword_27EFCC810);
          (*v52)(v7, v32 + v33, v58);
          MEMORY[0x24C23C8D0](0);
          v34 = v53;
          sub_24B008890(v12, v53, &qword_27EFCC810);
          if ((*v51)(v34, 1, v54) == 1)
          {
            sub_24B2D6104();
          }

          else
          {
            v35 = v49;
            v36 = v54;
            (*v48)(v49, v53, v54);
            sub_24B2D6104();
            sub_24B2BF448(&qword_27EFCC830, MEMORY[0x277D08B38]);
            sub_24B2D5254();
            v37 = v35;
            v27 = v55;
            (*v47)(v37, v36);
          }

          sub_24B2BF448(&qword_27EFCC740, MEMORY[0x277D08B70]);
          v38 = v58;
          sub_24B2D5254();
          (*v50)(v7, v38);
          sub_24AFF8258(v12, &qword_27EFCC810);
        }

        v39 = sub_24B2D6124();
        sub_24B2BF3E8(v27, type metadata accessor for ContactsProvider.Subscription);
        v29 = v61;
        v40 = v39 & v61;
        if (a1 >= v56)
        {
          break;
        }

        v18 = v57;
        v41 = v63;
        v26 = v60;
        if (v40 < v56)
        {
          goto LABEL_17;
        }

LABEL_18:
        v42 = v26 * a1;
        if (v26 * a1 < v31 || *(v17 + 48) + v26 * a1 >= (*(v17 + 48) + v31 + v26))
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else
        {
          a1 = v41;
          if (v42 == v31)
          {
            goto LABEL_6;
          }

          swift_arrayInitWithTakeBackToFront();
        }

        v26 = v60;
        v29 = v61;
        a1 = v41;
LABEL_6:
        v28 = (v41 + 1) & v29;
        if (((*(v18 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      v18 = v57;
      v41 = v63;
      v26 = v60;
      if (v40 < v56)
      {
        goto LABEL_6;
      }

LABEL_17:
      if (a1 < v40)
      {
        goto LABEL_6;
      }

      goto LABEL_18;
    }

LABEL_22:

    *(v18 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v18 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v43 = *(v17 + 16);
  v44 = __OFSUB__(v43, 1);
  v45 = v43 - 1;
  if (v44)
  {
    __break(1u);
  }

  else
  {
    *(v17 + 16) = v45;
    ++*(v17 + 36);
  }
}

void sub_24B2BC1A0(int64_t a1)
{
  v24 = type metadata accessor for PeopleLocationsProvider.Subscription(0);
  v3 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  v7 = *v1 + 56;
  v8 = -1 << *(*v1 + 32);
  v9 = (a1 + 1) & ~v8;
  if (((1 << v9) & *(v7 + 8 * (v9 >> 6))) != 0)
  {
    v10 = ~v8;

    v11 = sub_24B2D5B64();
    if ((*(v7 + 8 * (v9 >> 6)) & (1 << v9)) != 0)
    {
      v23 = (v11 + 1) & v10;
      v12 = *(v3 + 72);
      do
      {
        v13 = v7;
        v14 = v12;
        v15 = v12 * v9;
        sub_24B2BF490(*(v6 + 48) + v12 * v9, v5, type metadata accessor for PeopleLocationsProvider.Subscription);
        sub_24B2D60E4();
        sub_24B2D1574();
        sub_24B2BF448(&qword_27EFCC6C0, MEMORY[0x277D08B50]);
        sub_24B2D5254();
        sub_24B2D5404();

        v16 = sub_24B2D6124();
        sub_24B2BF3E8(v5, type metadata accessor for PeopleLocationsProvider.Subscription);
        v17 = v16 & v10;
        if (a1 >= v23)
        {
          if (v17 < v23)
          {
            v12 = v14;
            goto LABEL_5;
          }

          v12 = v14;
          if (a1 < v17)
          {
            goto LABEL_5;
          }
        }

        else
        {
          v12 = v14;
          if (v17 < v23 && a1 < v17)
          {
            goto LABEL_5;
          }
        }

        v18 = v12 * a1;
        if (v12 * a1 < v15 || *(v6 + 48) + v12 * a1 >= (*(v6 + 48) + v15 + v12))
        {
          swift_arrayInitWithTakeFrontToBack();
          goto LABEL_17;
        }

        a1 = v9;
        if (v18 != v15)
        {
          swift_arrayInitWithTakeBackToFront();
LABEL_17:
          a1 = v9;
        }

LABEL_5:
        v9 = (v9 + 1) & v10;
        v7 = v13;
      }

      while (((*(v13 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
    }

    *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v19 = *(v6 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v21;
    ++*(v6 + 36);
  }
}

void sub_24B2BC4F0(unint64_t a1)
{
  v3 = sub_24B2D1574();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v41 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for PeopleProvider.Subscription(0);
  MEMORY[0x28223BE20](v37);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v37 - v10;
  v12 = *v1;
  v13 = *v1 + 56;
  v14 = -1 << *(*v1 + 32);
  v15 = (a1 + 1) & ~v14;
  if (((1 << v15) & *(v13 + 8 * (v15 >> 6))) != 0)
  {
    v43 = v9;
    v38 = v4;
    v16 = ~v14;

    v17 = sub_24B2D5B64();
    if ((*(v13 + 8 * (v15 >> 6)) & (1 << v15)) != 0)
    {
      v18 = (v17 + 1) & v16;
      v19 = *(v43 + 72);
      v20 = v38;
      v42 = (v38 + 6);
      v43 = v19;
      ++v38;
      v39 = (v20 + 4);
      v21 = v16;
      v22 = v19;
      v40 = v11;
      v44 = v18;
      v45 = v3;
      while (1)
      {
        v23 = v22 * v15;
        sub_24B2BF490(*(v12 + 48) + v22 * v15, v11, type metadata accessor for PeopleProvider.Subscription);
        sub_24B2D60E4();
        sub_24B2BF490(v11, v7, type metadata accessor for PeopleProvider.Subscription);
        v24 = v45;
        if ((*v42)(v7, 1, v45) == 1)
        {
          MEMORY[0x24C23C8D0](0);
        }

        else
        {
          v25 = a1;
          v26 = v12;
          v27 = v21;
          v28 = v13;
          v29 = v41;
          (*v39)(v41, v7, v24);
          MEMORY[0x24C23C8D0](1);
          sub_24B2BF448(&qword_27EFCC6C0, MEMORY[0x277D08B50]);
          sub_24B2D5254();
          v30 = v29;
          v13 = v28;
          v21 = v27;
          v12 = v26;
          a1 = v25;
          v11 = v40;
          (*v38)(v30, v24);
        }

        v31 = sub_24B2D6124();
        sub_24B2BF3E8(v11, type metadata accessor for PeopleProvider.Subscription);
        v32 = v31 & v21;
        v22 = v43;
        if (a1 >= v44)
        {
          break;
        }

        if (v32 < v44)
        {
          goto LABEL_14;
        }

LABEL_15:
        v33 = v43 * a1;
        if ((v43 * a1) < v23 || *(v12 + 48) + v43 * a1 >= *(v12 + 48) + v23 + v43)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else
        {
          a1 = v15;
          if (v33 == v23)
          {
            goto LABEL_6;
          }

          swift_arrayInitWithTakeBackToFront();
        }

        a1 = v15;
LABEL_6:
        v15 = (v15 + 1) & v21;
        if (((*(v13 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
        {
          goto LABEL_19;
        }
      }

      if (v32 < v44)
      {
        goto LABEL_6;
      }

LABEL_14:
      if (a1 < v32)
      {
        goto LABEL_6;
      }

      goto LABEL_15;
    }

LABEL_19:

    *(v13 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v13 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v34 = *(v12 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(v12 + 16) = v36;
    ++*(v12 + 36);
  }
}

void sub_24B2BC950(int64_t a1)
{
  v24 = type metadata accessor for ItemsLocationsProvider.Subscription(0);
  v3 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  v7 = *v1 + 56;
  v8 = -1 << *(*v1 + 32);
  v9 = (a1 + 1) & ~v8;
  if (((1 << v9) & *(v7 + 8 * (v9 >> 6))) != 0)
  {
    v10 = ~v8;

    v11 = sub_24B2D5B64();
    if ((*(v7 + 8 * (v9 >> 6)) & (1 << v9)) != 0)
    {
      v25 = (v11 + 1) & v10;
      v12 = *(v3 + 72);
      v13 = v10;
      do
      {
        v14 = v12;
        v15 = v12 * v9;
        sub_24B2BF490(*(v6 + 48) + v12 * v9, v5, type metadata accessor for ItemsLocationsProvider.Subscription);
        sub_24B2D60E4();
        sub_24B2D1DA4();
        sub_24B2BF448(&qword_27EFCC630, MEMORY[0x277D08E20]);
        v16 = v13;
        sub_24B2D5254();
        sub_24B2D5404();
        v17 = sub_24B2D6124();
        sub_24B2BF3E8(v5, type metadata accessor for ItemsLocationsProvider.Subscription);
        v18 = v17 & v16;
        v13 = v16;
        if (a1 >= v25)
        {
          if (v18 < v25)
          {
            v12 = v14;
            goto LABEL_5;
          }

          v12 = v14;
          if (a1 < v18)
          {
            goto LABEL_5;
          }
        }

        else
        {
          v12 = v14;
          if (v18 < v25 && a1 < v18)
          {
            goto LABEL_5;
          }
        }

        v19 = v12 * a1;
        if (v12 * a1 < v15 || *(v6 + 48) + v12 * a1 >= (*(v6 + 48) + v15 + v12))
        {
          swift_arrayInitWithTakeFrontToBack();
          goto LABEL_17;
        }

        a1 = v9;
        if (v19 != v15)
        {
          swift_arrayInitWithTakeBackToFront();
LABEL_17:
          a1 = v9;
        }

LABEL_5:
        v9 = (v9 + 1) & v13;
      }

      while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
    }

    *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v20 = *(v6 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v22;
    ++*(v6 + 36);
  }
}

void sub_24B2BCC80(unint64_t a1)
{
  v3 = sub_24B2D1DA4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v41 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for ItemsProvider.Subscription(0);
  MEMORY[0x28223BE20](v37);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v37 - v10;
  v12 = *v1;
  v13 = *v1 + 56;
  v14 = -1 << *(*v1 + 32);
  v15 = (a1 + 1) & ~v14;
  if (((1 << v15) & *(v13 + 8 * (v15 >> 6))) != 0)
  {
    v43 = v9;
    v38 = v4;
    v16 = ~v14;

    v17 = sub_24B2D5B64();
    if ((*(v13 + 8 * (v15 >> 6)) & (1 << v15)) != 0)
    {
      v18 = (v17 + 1) & v16;
      v19 = *(v43 + 72);
      v20 = v38;
      v42 = (v38 + 6);
      v43 = v19;
      ++v38;
      v39 = (v20 + 4);
      v21 = v16;
      v22 = v19;
      v40 = v11;
      v44 = v18;
      v45 = v3;
      while (1)
      {
        v23 = v22 * v15;
        sub_24B2BF490(*(v12 + 48) + v22 * v15, v11, type metadata accessor for ItemsProvider.Subscription);
        sub_24B2D60E4();
        sub_24B2BF490(v11, v7, type metadata accessor for ItemsProvider.Subscription);
        v24 = v45;
        if ((*v42)(v7, 1, v45) == 1)
        {
          MEMORY[0x24C23C8D0](0);
        }

        else
        {
          v25 = a1;
          v26 = v12;
          v27 = v21;
          v28 = v13;
          v29 = v41;
          (*v39)(v41, v7, v24);
          MEMORY[0x24C23C8D0](1);
          sub_24B2BF448(&qword_27EFCC630, MEMORY[0x277D08E20]);
          sub_24B2D5254();
          v30 = v29;
          v13 = v28;
          v21 = v27;
          v12 = v26;
          a1 = v25;
          v11 = v40;
          (*v38)(v30, v24);
        }

        v31 = sub_24B2D6124();
        sub_24B2BF3E8(v11, type metadata accessor for ItemsProvider.Subscription);
        v32 = v31 & v21;
        v22 = v43;
        if (a1 >= v44)
        {
          break;
        }

        if (v32 < v44)
        {
          goto LABEL_14;
        }

LABEL_15:
        v33 = v43 * a1;
        if ((v43 * a1) < v23 || *(v12 + 48) + v43 * a1 >= *(v12 + 48) + v23 + v43)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else
        {
          a1 = v15;
          if (v33 == v23)
          {
            goto LABEL_6;
          }

          swift_arrayInitWithTakeBackToFront();
        }

        a1 = v15;
LABEL_6:
        v15 = (v15 + 1) & v21;
        if (((*(v13 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
        {
          goto LABEL_19;
        }
      }

      if (v32 < v44)
      {
        goto LABEL_6;
      }

LABEL_14:
      if (a1 < v32)
      {
        goto LABEL_6;
      }

      goto LABEL_15;
    }

LABEL_19:

    *(v13 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v13 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v34 = *(v12 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(v12 + 16) = v36;
    ++*(v12 + 36);
  }
}

void sub_24B2BD0E0(unint64_t a1)
{
  v37 = sub_24B2D1704();
  v3 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v36 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for SettingsContactsProvider.Subscription();
  v5 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v38 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v41 = &v33 - v8;
  v9 = *v1;
  v10 = *v1 + 56;
  v11 = -1 << *(*v1 + 32);
  v12 = (a1 + 1) & ~v11;
  if (((1 << v12) & *(v10 + 8 * (v12 >> 6))) == 0)
  {
    *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
    goto LABEL_22;
  }

  v13 = ~v11;

  v14 = a1;
  v15 = sub_24B2D5B64();
  if ((*(v10 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
  {
    goto LABEL_20;
  }

  v40 = v9;
  v16 = (v15 + 1) & v13;
  v17 = *(v5 + 72);
  v34 = (v3 + 8);
  v35 = (v3 + 32);
  do
  {
    v18 = v13;
    v19 = v10;
    v20 = v41;
    v21 = v17;
    v22 = v17 * v12;
    sub_24B2BF490(*(v40 + 48) + v17 * v12, v41, type metadata accessor for SettingsContactsProvider.Subscription);
    sub_24B2D60E4();
    v23 = v38;
    sub_24B2BF490(v20, v38, type metadata accessor for SettingsContactsProvider.Subscription);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      MEMORY[0x24C23C8D0](1);
      sub_24B2D5404();
    }

    else
    {
      v24 = v36;
      v25 = v23;
      v26 = v37;
      (*v35)(v36, v25, v37);
      MEMORY[0x24C23C8D0](0);
      sub_24B2BF448(&unk_27EFC7E58, MEMORY[0x277D08BF8]);
      sub_24B2D5254();
      (*v34)(v24, v26);
    }

    v27 = sub_24B2D6124();
    sub_24B2BF3E8(v41, type metadata accessor for SettingsContactsProvider.Subscription);
    v13 = v18;
    v28 = v27 & v18;
    if (v14 >= v16)
    {
      v10 = v19;
      v17 = v21;
      if (v28 < v16)
      {
        goto LABEL_6;
      }

LABEL_14:
      if (v14 < v28)
      {
        goto LABEL_6;
      }

      goto LABEL_15;
    }

    v10 = v19;
    v17 = v21;
    if (v28 < v16)
    {
      goto LABEL_14;
    }

LABEL_15:
    v29 = v17 * v14;
    if (v17 * v14 < v22 || *(v40 + 48) + v17 * v14 >= (*(v40 + 48) + v22 + v17))
    {
      swift_arrayInitWithTakeFrontToBack();
LABEL_5:
      v14 = v12;
      goto LABEL_6;
    }

    v14 = v12;
    if (v29 != v22)
    {
      swift_arrayInitWithTakeBackToFront();
      goto LABEL_5;
    }

LABEL_6:
    v12 = (v12 + 1) & v18;
  }

  while (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  v9 = v40;
LABEL_20:

  *(v10 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v14) - 1;
LABEL_22:
  v30 = *(v9 + 16);
  v31 = __OFSUB__(v30, 1);
  v32 = v30 - 1;
  if (v31)
  {
    __break(1u);
  }

  else
  {
    *(v9 + 16) = v32;
    ++*(v9 + 36);
  }
}

unint64_t sub_24B2BD53C(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_24B2D5B64();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_24B2D60E4();
        MEMORY[0x24C23C8D0](0);
        sub_24B2D6104();
        v10 = sub_24B2D6124() & v7;
        if (v2 >= v9)
        {
          if (v10 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v10 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v10)
        {
LABEL_11:
          v11 = *(v3 + 48);
          v12 = (v11 + v2);
          v13 = (v11 + v6);
          if (v2 != v6 || v12 >= v13 + 1)
          {
            *v12 = *v13;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v14 = *(v3 + 16);
  v15 = __OFSUB__(v14, 1);
  v16 = v14 - 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v16;
    ++*(v3 + 36);
  }

  return result;
}

void sub_24B2BD6F0(unint64_t a1)
{
  v3 = type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v32 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription(0);
  MEMORY[0x28223BE20](v29);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v29 - v10;
  v12 = *v1;
  v13 = *v1 + 56;
  v14 = -1 << *(*v1 + 32);
  v15 = (a1 + 1) & ~v14;
  if (((1 << v15) & *(v13 + 8 * (v15 >> 6))) != 0)
  {
    v34 = v9;
    v35 = v4;
    v16 = ~v14;

    v17 = sub_24B2D5B64();
    if ((*(v13 + 8 * (v15 >> 6)) & (1 << v15)) != 0)
    {
      v18 = (v17 + 1) & v16;
      v19 = *(v34 + 72);
      v33 = (v35 + 48);
      v34 = v19;
      v30 = v18;
      v31 = v16;
      while (1)
      {
        v20 = *(v12 + 48);
        v35 = v19 * v15;
        sub_24B2BF490(v20 + v19 * v15, v11, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
        sub_24B2D60E4();
        sub_24B2BF490(v11, v7, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
        if ((*v33)(v7, 1, v3) == 1)
        {
          MEMORY[0x24C23C8D0](0);
        }

        else
        {
          v21 = v32;
          sub_24B2BF380(v7, v32, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
          MEMORY[0x24C23C8D0](1);
          sub_24B2D1704();
          sub_24B2BF448(&unk_27EFC7E58, MEMORY[0x277D08BF8]);
          v16 = v31;
          sub_24B2D5254();
          v22 = v21;
          v18 = v30;
          sub_24B2BF3E8(v22, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
        }

        v23 = sub_24B2D6124();
        sub_24B2BF3E8(v11, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
        v24 = v23 & v16;
        if (a1 >= v18)
        {
          break;
        }

        v19 = v34;
        if (v24 < v18)
        {
          goto LABEL_14;
        }

LABEL_15:
        v25 = v19 * a1;
        if ((v19 * a1) < v35 || *(v12 + 48) + v19 * a1 >= *(v12 + 48) + v35 + v19)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else
        {
          a1 = v15;
          if (v25 == v35)
          {
            goto LABEL_6;
          }

          swift_arrayInitWithTakeBackToFront();
        }

        a1 = v15;
LABEL_6:
        v15 = (v15 + 1) & v16;
        if (((*(v13 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
        {
          goto LABEL_19;
        }
      }

      v19 = v34;
      if (v24 < v18)
      {
        goto LABEL_6;
      }

LABEL_14:
      if (a1 < v24)
      {
        goto LABEL_6;
      }

      goto LABEL_15;
    }

LABEL_19:

    *(v13 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v13 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v26 = *(v12 + 16);
  v27 = __OFSUB__(v26, 1);
  v28 = v26 - 1;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    *(v12 + 16) = v28;
    ++*(v12 + 36);
  }
}

unint64_t sub_24B2BDB5C(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_24B2D5B64();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_24B2D60E4();
        MEMORY[0x24C23C8D0](0);
        v10 = sub_24B2D6124() & v7;
        if (v2 >= v9)
        {
          if (v10 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v10 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v10)
        {
LABEL_11:
          v11 = *(v3 + 48);
          v12 = (v11 + v2);
          v13 = (v11 + v6);
          if (v2 != v6 || v12 >= v13 + 1)
          {
            *v12 = *v13;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v14 = *(v3 + 16);
  v15 = __OFSUB__(v14, 1);
  v16 = v14 - 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v16;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_24B2BDD00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  return MEMORY[0x2822009F8](sub_24B2BDD24, 0, 0);
}

uint64_t sub_24B2BDD24()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {

    return MEMORY[0x2822009F8](sub_24B2BDDE8, Strong, 0);
  }

  else
  {
    **(v0 + 40) = 1;
    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_24B2BDDE8()
{
  sub_24B28C36C(*(v0 + 56));

  return MEMORY[0x2822009F8](sub_24B2BF7FC, 0, 0);
}

uint64_t sub_24B2BDE58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  return MEMORY[0x2822009F8](sub_24B2BDE7C, 0, 0);
}

uint64_t sub_24B2BDE7C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {

    return MEMORY[0x2822009F8](sub_24B2BDF40, Strong, 0);
  }

  else
  {
    **(v0 + 40) = 1;
    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_24B2BDF40()
{
  sub_24B28C634(*(v0 + 56), &OBJC_IVAR____TtC12FindMyUICore16ContactsProvider_dataStorage);

  return MEMORY[0x2822009F8](sub_24B2BF7FC, 0, 0);
}

uint64_t sub_24B2BDFB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  return MEMORY[0x2822009F8](sub_24B2BDFDC, 0, 0);
}

uint64_t sub_24B2BDFDC()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {

    return MEMORY[0x2822009F8](sub_24B2BE0A0, Strong, 0);
  }

  else
  {
    **(v0 + 40) = 1;
    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_24B2BE0A0()
{
  sub_24B28C634(*(v0 + 56), &OBJC_IVAR____TtC12FindMyUICore23PeopleLocationsProvider_dataStorage);

  return MEMORY[0x2822009F8](sub_24B2BF7FC, 0, 0);
}

uint64_t sub_24B2BE118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  return MEMORY[0x2822009F8](sub_24B2BE13C, 0, 0);
}

uint64_t sub_24B2BE13C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {

    return MEMORY[0x2822009F8](sub_24B2BE200, Strong, 0);
  }

  else
  {
    **(v0 + 40) = 1;
    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_24B2BE200()
{
  sub_24B28C634(*(v0 + 56), &OBJC_IVAR____TtC12FindMyUICore14PeopleProvider_dataStorage);

  return MEMORY[0x2822009F8](sub_24B2BF7FC, 0, 0);
}

uint64_t sub_24B2BE278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  return MEMORY[0x2822009F8](sub_24B2BE29C, 0, 0);
}

uint64_t sub_24B2BE29C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {

    return MEMORY[0x2822009F8](sub_24B2BE360, Strong, 0);
  }

  else
  {
    **(v0 + 40) = 1;
    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_24B2BE360()
{
  sub_24B28C634(*(v0 + 56), &OBJC_IVAR____TtC12FindMyUICore22ItemsLocationsProvider_dataStorage);

  return MEMORY[0x2822009F8](sub_24B2BF7FC, 0, 0);
}

uint64_t sub_24B2BE3D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  return MEMORY[0x2822009F8](sub_24B2BE3FC, 0, 0);
}

uint64_t sub_24B2BE3FC()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {

    return MEMORY[0x2822009F8](sub_24B2BE4C0, Strong, 0);
  }

  else
  {
    **(v0 + 40) = 1;
    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_24B2BE4C0()
{
  sub_24B28C634(*(v0 + 56), &OBJC_IVAR____TtC12FindMyUICore13ItemsProvider_dataStorage);

  return MEMORY[0x2822009F8](sub_24B2BE538, 0, 0);
}

uint64_t sub_24B2BE560(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_24AFFDE44;

  return sub_24B283A18(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_24B2BE73C(uint64_t a1)
{
  v4 = *(sub_24B2D2504() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24AFFDE44;

  return sub_24B2BDD00(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_24B2BE870(uint64_t a1)
{
  v4 = *(sub_24B2D2504() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24AFFDE44;

  return sub_24B2BDE58(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_24B2BE9A4(uint64_t a1)
{
  v4 = *(sub_24B2D2504() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24AFFDE44;

  return sub_24B2BDFB8(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_24B2BEAD8(uint64_t a1)
{
  v4 = *(sub_24B2D2504() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24AFFDE44;

  return sub_24B2BE118(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_24B2BEBE4()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC12FindMyUICore33EmbeddedPeopleSummaryMapViewModel__fullScreenInteractiveMap) = *(v0 + 24);
}

uint64_t sub_24B2BEC28(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24AFFDE44;

  return sub_24B29FB44(a1, v4, v5, v6);
}

uint64_t sub_24B2BECDC(uint64_t a1)
{
  v4 = *(sub_24B2D15F4() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24AFFDE44;

  return sub_24B29FF04(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_24B2BEDDC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24AFFDE44;

  return sub_24B29EB10(a1, v4, v5, v7, v6);
}

uint64_t sub_24B2BEF18(uint64_t a1)
{
  v4 = *(sub_24B2D2504() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24AFFDE44;

  return sub_24B2BE278(a1, v6, v7, v8, v1 + v5);
}

uint64_t objectdestroy_75Tm()
{
  v1 = sub_24B2D2504();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t objectdestroy_79Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 40) & ~v4;
  v6 = *(v3 + 64);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x2821FE8E8](v1, v5 + v6, v4 | 7);
}

uint64_t sub_24B2BF274(uint64_t a1)
{
  v4 = *(sub_24B2D2504() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24AFFD370;

  return sub_24B2BE3D8(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_24B2BF380(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B2BF3E8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24B2BF448(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24B2BF490(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_24B2BF51C()
{
  result = qword_27EFCF8A8;
  if (!qword_27EFCF8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCF8A8);
  }

  return result;
}

uint64_t objectdestroyTm_30(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 32));

  return MEMORY[0x2821FE8E8](v2, 40, 7);
}

uint64_t sub_24B2BF5C8()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_24AFFDE44;

  return sub_24B132B8C(v2, v3, v5, v4);
}

uint64_t objectdestroy_43Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_24B2BF6D4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_24AFFDE44;

  return sub_24B285594(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_24B2BF820@<X0>(void *a1@<X8>)
{
  v66 = a1;
  v1 = sub_24B2D2674();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_24B2D3184();
  v5 = *(v57 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v57);
  v63 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v7);
  v62 = &v57 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v57 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v57 - v13;
  v70 = &v57 - v13;
  sub_24B2D3174();
  v67 = sub_24B2D2AE4();
  LODWORD(v69) = *MEMORY[0x277D09048];
  v64 = *(v2 + 104);
  v58 = v1;
  v64(v4);
  v15 = sub_24B2D2954();
  v16 = *(v2 + 8);
  v59 = (v2 + 8);
  v60 = v16;
  (v16)(v4, v1);
  v71 = v5;
  v17 = v5 + 32;
  v18 = *(v5 + 32);
  v68 = v12;
  v19 = v14;
  v20 = v57;
  v18(v12, v19, v57);
  v72 = *(v5 + 80);
  v21 = (v72 + 24) & ~v72;
  v22 = swift_allocObject();
  *(v22 + 16) = v15;
  v23 = v12;
  v24 = v20;
  v18((v22 + v21), v23, v20);
  v25 = swift_allocObject();
  *(v25 + 16) = &unk_24B2F09A0;
  *(v25 + 24) = v15;
  *&v74 = &unk_24B2F0990;
  *(&v74 + 1) = v22;
  *&v75 = &unk_24B2F09B0;
  *(&v75 + 1) = v25;
  v76 = sub_24B1F0DA0;
  v77 = 0;
  type metadata accessor for PeopleProvider();
  swift_allocObject();

  v65 = PeopleProvider.init(dependencies:)(&v74);
  v26 = v70;
  sub_24B2D3174();
  v27 = v58;
  (v64)(v4, v69, v58);
  v28 = sub_24B2D2954();
  v60(v4, v27);
  v29 = v68;
  v30 = v26;
  v61 = v17;
  v18(v68, v26, v24);
  v31 = swift_allocObject();
  *(v31 + 16) = v28;
  v18((v31 + v21), v29, v24);
  v32 = swift_allocObject();
  *(v32 + 16) = &unk_24B2F0F08;
  *(v32 + 24) = v28;
  *&v74 = &unk_24B2F0EF8;
  *(&v74 + 1) = v31;
  *&v75 = &unk_24B2F0F38;
  *(&v75 + 1) = v32;
  v76 = &unk_24B2F0F18;
  v77 = v28;
  v78 = &unk_24B2F0F28;
  v79 = v28;
  v80 = sub_24B1FEF20;
  v81 = 0;
  v82 = sub_24B1FEF34;
  v83 = 0;
  type metadata accessor for PeopleLocationsProvider();
  swift_allocObject();
  swift_retain_n();
  v64 = PeopleLocationsProvider.init(dependencies:)(&v74);
  sub_24B2D3174();
  v59 = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
  v33 = *(v71++ + 2);
  v33(v29, v30, v24);
  v34 = (v72 + 16) & ~v72;
  v35 = v34 + v6;
  v60 = swift_allocObject();
  v18(v60 + v34, v29, v24);
  v36 = v62;
  v37 = v70;
  v33(v62, v70, v24);
  v67 = v35;
  v38 = swift_allocObject();
  v69 = v34;
  v18((v38 + v34), v36, v24);
  *(v38 + ((v35 + 7) & 0xFFFFFFFFFFFFFFF8)) = v59;
  v39 = v63;
  v18(v63, v37, v24);
  v40 = swift_allocObject();
  v18((v40 + v34), v39, v24);
  v41 = swift_allocObject();
  *(v41 + 16) = &unk_24B2EF0B0;
  *(v41 + 24) = v40;
  *&v74 = sub_24B183EAC;
  *(&v74 + 1) = v60;
  *&v75 = &unk_24B2EF0A0;
  *(&v75 + 1) = v38;
  v76 = &unk_24B2EF0C0;
  v77 = v41;
  type metadata accessor for ContactsProvider();
  swift_allocObject();
  v71 = ContactsProvider.init(dependencies:)(&v74);
  static UserLocationProvider.Dependencies.live(customEffectiveBundleIdentifier:)(0, 0, &v74);
  v73[0] = v74;
  v73[1] = v75;
  type metadata accessor for UserLocationProvider();
  swift_allocObject();
  v63 = UserLocationProvider.init(dependencies:)(v73);
  v42 = v37;
  sub_24B2D3174();
  v43 = v68;
  v18(v68, v42, v24);
  v44 = swift_allocObject();
  v18((v44 + v69), v43, v24);
  type metadata accessor for ETAProvider();
  v45 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_24B2D3174();
  v46 = v45 + OBJC_IVAR____TtC12FindMyUICore11ETAProvider_dataStorage;
  v47 = MEMORY[0x277D84F90];
  *(v46 + 24) = sub_24B193CA8(MEMORY[0x277D84F90]);
  *(v46 + 16) = 0;
  *(v46 + 32) = sub_24B1933E8(v47);
  *v46 = 0x69766F7250415445;
  *(v46 + 8) = 0xEB00000000726564;
  v48 = OBJC_IVAR____TtC12FindMyUICore11ETAProvider_etaQueryTaskByIdentifier;
  *(v45 + v48) = sub_24B193E9C(v47);
  *(v45 + 112) = &unk_24B2EF440;
  *(v45 + 120) = v44;
  v49 = v70;
  sub_24B2D3174();
  v18(v43, v49, v24);
  v62 = swift_allocObject();
  v50 = v69;
  v18(&v62[v69], v43, v24);
  sub_24B2D3174();
  v18(v43, v49, v24);
  v51 = swift_allocObject();
  v18((v51 + v50), v43, v24);
  sub_24B2D3174();
  v18(v43, v49, v24);
  v52 = swift_allocObject();
  result = (v18)(v52 + v50, v43, v24);
  v54 = v66;
  v55 = v64;
  *v66 = v65;
  v54[1] = v55;
  v56 = v63;
  v54[2] = v71;
  v54[3] = v56;
  v54[4] = v45;
  v54[5] = &unk_24B2F4BE0;
  v54[6] = v62;
  v54[7] = &unk_24B2F4BE8;
  v54[8] = v51;
  v54[9] = sub_24B1246F4;
  v54[10] = v52;
  return result;
}

uint64_t sub_24B2C0340@<X0>(int a1@<W0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v79 = a2;
  v76 = a1;
  v81 = a3;
  v4 = sub_24B2D1744();
  v70 = *(v4 - 8);
  v71 = v4;
  MEMORY[0x28223BE20](v4);
  v69 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24B2D1544();
  v67 = *(v6 - 8);
  v68 = v6;
  MEMORY[0x28223BE20](v6);
  v66 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24B2D1844();
  v64 = *(v8 - 8);
  v65 = v8;
  MEMORY[0x28223BE20](v8);
  v63 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24B2D18D4();
  v61 = *(v10 - 8);
  v62 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB288);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v59 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8A80);
  MEMORY[0x28223BE20](v19 - 8);
  v60 = &v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v72 = &v59 - v22;
  MEMORY[0x28223BE20](v23);
  v80 = &v59 - v24;
  MEMORY[0x28223BE20](v25);
  v78 = &v59 - v26;
  MEMORY[0x28223BE20](v27);
  v77 = &v59 - v28;
  MEMORY[0x28223BE20](v29);
  v75 = &v59 - v30;
  MEMORY[0x28223BE20](v31);
  v33 = &v59 - v32;
  v34 = *(type metadata accessor for ListPersonInfo() + 28);
  v74 = v3;
  sub_24B008890(v3 + v34, v18, &qword_27EFCB288);
  v35 = sub_24B2D1944();
  v36 = *(v35 - 8);
  v37 = *(v36 + 48);
  v38 = v37(v18, 1, v35);
  v73 = v33;
  if (v38 == 1)
  {
    sub_24AFF8258(v18, &qword_27EFCB288);
    v39 = sub_24B2D1BB4();
    (*(*(v39 - 8) + 56))(v33, 1, 1, v39);
  }

  else
  {
    sub_24B2D18E4();
    (*(v36 + 8))(v18, v35);
    sub_24B2D18C4();
    (*(v61 + 8))(v12, v62);
  }

  sub_24B008890(v74 + v34, v15, &qword_27EFCB288);
  if (v37(v15, 1, v35) == 1)
  {
    sub_24AFF8258(v15, &qword_27EFCB288);
    v40 = sub_24B2D1BB4();
    v41 = v75;
    (*(*(v40 - 8) + 56))(v75, 1, 1, v40);
  }

  else
  {
    v42 = v63;
    sub_24B2D1854();
    (*(v36 + 8))(v15, v35);
    v41 = v75;
    sub_24B2D1834();
    (*(v64 + 8))(v42, v65);
  }

  v43 = v80;
  v45 = v77;
  v44 = v78;
  if (v76)
  {
    v46 = v66;
    sub_24B2D1554();
    sub_24B2D1504();
    (*(v67 + 8))(v46, v68);
    if ((v79 & 1) == 0)
    {
LABEL_9:
      v47 = sub_24B2D1BB4();
      (*(*(v47 - 8) + 56))(v44, 1, 1, v47);
      goto LABEL_12;
    }
  }

  else
  {
    v48 = sub_24B2D1BB4();
    (*(*(v48 - 8) + 56))(v45, 1, 1, v48);
    if ((v79 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  v49 = v69;
  sub_24B2D1774();
  sub_24B2D1734();
  (*(v70 + 8))(v49, v71);
LABEL_12:
  sub_24B0391CC(v73, v43, &qword_27EFC8A80);
  v50 = sub_24B2D1BB4();
  v51 = *(v50 - 8);
  v52 = *(v51 + 48);
  if (v52(v43, 1, v50) == 1)
  {
    v53 = v72;
    sub_24B0391CC(v41, v72, &qword_27EFC8A80);
    if (v52(v53, 1, v50) == 1)
    {
      v54 = v60;
      sub_24B0391CC(v45, v60, &qword_27EFC8A80);
      if (v52(v54, 1, v50) == 1)
      {
        sub_24B0391CC(v44, v81, &qword_27EFC8A80);
        if (v52(v54, 1, v50) != 1)
        {
          sub_24AFF8258(v54, &qword_27EFC8A80);
        }
      }

      else
      {
        sub_24AFF8258(v44, &qword_27EFC8A80);
        v58 = v81;
        (*(v51 + 32))(v81, v54, v50);
        (*(v51 + 56))(v58, 0, 1, v50);
      }

      if (v52(v53, 1, v50) != 1)
      {
        sub_24AFF8258(v53, &qword_27EFC8A80);
      }
    }

    else
    {
      sub_24AFF8258(v44, &qword_27EFC8A80);
      sub_24AFF8258(v45, &qword_27EFC8A80);
      v57 = v81;
      (*(v51 + 32))(v81, v53, v50);
      (*(v51 + 56))(v57, 0, 1, v50);
    }

    result = (v52)(v43, 1, v50);
    if (result != 1)
    {
      return sub_24AFF8258(v43, &qword_27EFC8A80);
    }
  }

  else
  {
    sub_24AFF8258(v44, &qword_27EFC8A80);
    sub_24AFF8258(v45, &qword_27EFC8A80);
    sub_24AFF8258(v41, &qword_27EFC8A80);
    v55 = v81;
    (*(v51 + 32))(v81, v43, v50);
    return (*(v51 + 56))(v55, 0, 1, v50);
  }

  return result;
}

uint64_t sub_24B2C0D5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24B2D1C44();
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  if (v9)
  {
    v36 = a2;
    v40 = MEMORY[0x277D84F90];
    v37 = v5;
    sub_24B0079DC(0, v9, 0);
    v10 = v40;
    v11 = *(v37 + 16);
    v12 = a1 + ((*(v37 + 80) + 32) & ~*(v37 + 80));
    v38 = *(v37 + 72);
    v39 = v11;
    v13 = (v37 + 8);
    do
    {
      v39(v8, v12, v4);
      v14 = sub_24B2D1BD4();
      [v14 coordinate];
      v16 = v15;
      v18 = v17;

      v42.latitude = v16;
      v42.longitude = v18;
      v19 = MKMapPointForCoordinate(v42);
      v20 = v4;
      (*v13)(v8, v4);
      v40 = v10;
      v22 = *(v10 + 16);
      v21 = *(v10 + 24);
      v23 = v22 + 1;
      if (v22 >= v21 >> 1)
      {
        sub_24B0079DC((v21 > 1), v22 + 1, 1);
        v10 = v40;
      }

      *(v10 + 16) = v23;
      *(v10 + 16 * v22 + 32) = v19;
      v12 += v38;
      --v9;
      v4 = v20;
    }

    while (v9);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_24B006AD8(0, v23, 0, v10);
    }

    v24 = v36;
    MKMapRectBoundingMapPoints();
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;

    v43.origin.x = v26;
    v43.origin.y = v28;
    v43.size.width = v30;
    v43.size.height = v32;
    v44 = MKCoordinateRegionForMapRect(v43);
    [objc_allocWithZone(MEMORY[0x277CE41F8]) initWithLatitude:v44.center.latitude longitude:v44.center.longitude];
    sub_24B2D1BC4();
    return (*(v37 + 56))(v24, 0, 1, v20);
  }

  else
  {
    v34 = *(v5 + 56);

    return v34(a2, 1, 1, v4, v6);
  }
}

uint64_t sub_24B2C1058@<X0>(uint64_t a1@<X0>, void (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = sub_24B2C1080(a1, a2, a3);
  *a4 = result;
  a4[1] = v6;
  return result;
}

uint64_t sub_24B2C1080(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v167 = a3;
  v196 = a2;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDCC8);
  v195 = *(v145 - 8);
  MEMORY[0x28223BE20](v145);
  v144 = &v137 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v143 = &v137 - v5;
  v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC7FE8);
  v166 = *(v193 - 8);
  MEMORY[0x28223BE20](v193);
  v142 = &v137 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v162 = &v137 - v8;
  MEMORY[0x28223BE20](v9);
  v190 = &v137 - v10;
  MEMORY[0x28223BE20](v11);
  v192 = &v137 - v12;
  MEMORY[0x28223BE20](v13);
  v191 = &v137 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE590);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v137 - v16;
  v18 = sub_24B2D1C44();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v138 = &v137 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v141 = &v137 - v22;
  MEMORY[0x28223BE20](v23);
  v140 = &v137 - v24;
  MEMORY[0x28223BE20](v25);
  v188 = &v137 - v26;
  MEMORY[0x28223BE20](v27);
  v147 = &v137 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8A80);
  MEMORY[0x28223BE20](v29 - 8);
  v161 = &v137 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8450);
  MEMORY[0x28223BE20](v31 - 8);
  v160 = &v137 - v32;
  v159 = sub_24B2D14C4();
  v33 = *(v159 - 8);
  MEMORY[0x28223BE20](v159);
  v158 = &v137 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = type metadata accessor for AnnotationV2();
  v156 = *(v157 - 8);
  MEMORY[0x28223BE20](v157);
  v175 = &v137 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v174 = &v137 - v37;
  v38 = sub_24B2D1974();
  v39 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v137 = &v137 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v179 = &v137 - v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB288);
  MEMORY[0x28223BE20](v43 - 8);
  v165 = &v137 - v44;
  v164 = sub_24B2D1944();
  v45 = *(v164 - 8);
  MEMORY[0x28223BE20](v164);
  v47 = &v137 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = type metadata accessor for ListPersonInfo();
  v48 = *(v163 - 8);
  MEMORY[0x28223BE20](v163);
  v180 = &v137 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);

  result = v167;
  v51 = *(v167 + 16);
  v52 = MEMORY[0x277D84F90];
  v186 = v19;
  v176 = v39;
  v173 = v51;
  if (v51)
  {
    v182 = v47;
    v53 = 0;
    v54 = v48;
    v171 = v167 + ((*(v48 + 80) + 32) & ~*(v48 + 80));
    v170 = (v45 + 48);
    v154 = (v45 + 32);
    v153 = *MEMORY[0x277D08CF0];
    v152 = (v39 + 104);
    v169 = (v39 + 16);
    v151 = (v33 + 8);
    v178 = (v19 + 32);
    v184 = (v19 + 16);
    v185 = (v39 + 32);
    v150 = (v19 + 48);
    v146 = (v19 + 8);
    v139 = (v195 + 8);
    v149 = (v39 + 8);
    v148 = (v45 + 8);
    v177 = MEMORY[0x277D84F90];
    v55 = MEMORY[0x277D84F90];
    v155 = v17;
    v56 = v165;
    v57 = v164;
    v58 = v163;
    v59 = v54;
    v60 = v167;
    v189 = v38;
    v172 = v54;
    while (1)
    {
      if (v53 >= *(v60 + 16))
      {
        __break(1u);
        return result;
      }

      v61 = v60;
      v62 = *(v59 + 72);
      v183 = v53;
      v63 = v180;
      sub_24B279348(v171 + v62 * v53, v180, type metadata accessor for ListPersonInfo);
      sub_24B008890(v63 + *(v58 + 28), v56, &qword_27EFCB288);
      if ((*v170)(v56, 1, v57) != 1)
      {
        break;
      }

      sub_24B279484(v63, type metadata accessor for ListPersonInfo);
      result = sub_24AFF8258(v56, &qword_27EFCB288);
      v60 = v61;
LABEL_4:
      v53 = v183 + 1;
      v59 = v172;
      if (v183 + 1 == v173)
      {

        v52 = MEMORY[0x277D84F90];
        v122 = v177;
        goto LABEL_35;
      }
    }

    v181 = v55;
    (*v154)(v182, v56, v57);
    v64 = v179;
    _s12FindMyUICore17DetailsPersonInfoV2id0aB4Core0E5ModelV16UniqueIdentifierVvg_0();
    (*v152)(v64, v153, v38);
    v65 = v174;
    v168 = *v169;
    v168(v174, v64, v38);
    v66 = v158;
    sub_24B2D14D4();
    v196 = sub_24B2D14B4();
    v68 = v67;
    (*v151)(v66, v159);
    v69 = v157;
    v70 = *(v157 + 24);
    v71 = *(v58 + 20);
    v72 = sub_24B2D1494();
    v73 = *(v72 - 8);
    (*(v73 + 16))(v65 + v70, v63 + v71, v72);
    (*(v73 + 56))(v65 + v70, 0, 1, v72);
    type metadata accessor for Icon(0);
    swift_storeEnumTagMultiPayload();
    sub_24B2D18B4();
    v74 = v160;
    sub_24B2D1864();
    v75 = v161;
    sub_24B2C0340(0, 0, v161);
    v76 = v69[8];
    v77 = sub_24B2D24A4();
    (*(*(v77 - 8) + 56))(v65 + v76, 1, 1, v77);
    v78 = v69[9];
    v79 = sub_24B2D1BB4();
    (*(*(v79 - 8) + 56))(v65 + v78, 1, 1, v79);
    v80 = (v65 + v69[5]);
    *v80 = v196;
    v80[1] = v68;
    sub_24B068E10(v74, v65 + v76, &qword_27EFC8450);
    v81 = v177;
    sub_24B068E10(v75, v65 + v78, &qword_27EFC8A80);
    sub_24B279348(v65, v175, type metadata accessor for AnnotationV2);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v81 = sub_24B007360(0, v81[2] + 1, 1, v81);
    }

    v82 = v178;
    v84 = v81[2];
    v83 = v81[3];
    v38 = v189;
    v55 = v181;
    v85 = v182;
    if (v84 >= v83 >> 1)
    {
      v81 = sub_24B007360(v83 > 1, v84 + 1, 1, v81);
    }

    v81[2] = v84 + 1;
    v86 = (*(v156 + 80) + 32) & ~*(v156 + 80);
    v177 = v81;
    sub_24B2793B0(v175, v81 + v86 + *(v156 + 72) * v84);
    v87 = v55[2];
    if (v87)
    {
      v197 = MEMORY[0x277D84F90];
      sub_24B007C34(0, v87, 0);
      v88 = v197;
      v89 = v55 + ((*(v166 + 80) + 32) & ~*(v166 + 80));
      v187 = *(v166 + 72);
      v90 = v188;
      do
      {
        v195 = v87;
        v196 = v88;
        v91 = v18;
        v92 = v191;
        sub_24B008890(v89, v191, &qword_27EFC7FE8);
        v93 = v192;
        sub_24B008890(v92, v192, &qword_27EFC7FE8);
        v94 = *(v193 + 48);
        v95 = v190;
        (*v185)(v190, v93, v189);
        v194 = *v82;
        (v194)(v95 + v94, v93 + v94, v91);
        (*v184)(v90, v95 + v94, v91);
        sub_24AFF8258(v95, &qword_27EFC7FE8);
        v88 = v196;
        sub_24AFF8258(v92, &qword_27EFC7FE8);
        v197 = v88;
        v97 = *(v88 + 16);
        v96 = *(v88 + 24);
        if (v97 >= v96 >> 1)
        {
          sub_24B007C34(v96 > 1, v97 + 1, 1);
          v88 = v197;
        }

        *(v88 + 16) = v97 + 1;
        v90 = v188;
        (v194)(v88 + ((*(v186 + 80) + 32) & ~*(v186 + 80)) + *(v186 + 72) * v97, v188, v91);
        v89 += v187;
        v87 = (v195 - 1);
        v18 = v91;
      }

      while (v195 != 1);
      v60 = v167;
      v38 = v189;
      v98 = v155;
      v55 = v181;
      v85 = v182;
    }

    else
    {
      v88 = MEMORY[0x277D84F90];
      v60 = v167;
      v98 = v155;
    }

    sub_24B2C0D5C(v88, v98);

    if ((*v150)(v98, 1, v18) == 1)
    {
      sub_24AFF8258(v98, &qword_27EFCE590);
      v99 = v140;
      sub_24B2D18B4();
      v100 = *(v193 + 48);
      v101 = v162;
      v168(v162, v179, v38);
      (*v178)(&v101[v100], v99, v18);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v55 = sub_24B007154(0, v55[2] + 1, 1, v55);
      }

      v57 = v164;
      v103 = v55[2];
      v102 = v55[3];
      if (v103 >= v102 >> 1)
      {
        v55 = sub_24B007154(v102 > 1, v103 + 1, 1, v55);
      }

      (*v149)(v179, v38);
      (*v148)(v85, v57);
      sub_24B279484(v180, type metadata accessor for ListPersonInfo);
      v55[2] = v103 + 1;
      v104 = v55 + ((*(v166 + 80) + 32) & ~*(v166 + 80)) + *(v166 + 72) * v103;
      v105 = &v194;
    }

    else
    {
      v106 = v147;
      v195 = *v82;
      (v195)(v147, v98, v18);
      v107 = v141;
      sub_24B2D18B4();
      v108 = v143;
      sub_24B2D1C34();
      v196 = *v146;
      (v196)(v107, v18);
      v109 = [objc_opt_self() kilometers];
      sub_24B2794E4();
      v110 = v144;
      sub_24B2D1FE4();
      sub_24B279530();
      v111 = v145;
      v112 = sub_24B2D5284();
      v113 = *v139;
      (*v139)(v110, v111);
      v113(v108, v111);
      if ((v112 & 1) == 0)
      {
        (v196)(v106, v18);
        (*v149)(v179, v38);
        v57 = v164;
        (*v148)(v182, v164);
        sub_24B279484(v180, type metadata accessor for ListPersonInfo);
        result = sub_24B279484(v174, type metadata accessor for AnnotationV2);
        v60 = v167;
        v55 = v181;
        goto LABEL_32;
      }

      v114 = v196;
      v115 = v138;
      sub_24B2D18B4();
      v116 = *(v193 + 48);
      v117 = v142;
      v168(v142, v179, v38);
      (v195)(&v117[v116], v115, v18);
      v55 = v181;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v57 = v164;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v55 = sub_24B007154(0, v55[2] + 1, 1, v55);
      }

      v60 = v167;
      v119 = v114;
      v121 = v55[2];
      v120 = v55[3];
      if (v121 >= v120 >> 1)
      {
        v55 = sub_24B007154(v120 > 1, v121 + 1, 1, v55);
      }

      v119();
      (*v149)(v179, v38);
      (*v148)(v182, v57);
      sub_24B279484(v180, type metadata accessor for ListPersonInfo);
      v55[2] = v121 + 1;
      v104 = v55 + ((*(v166 + 80) + 32) & ~*(v166 + 80)) + *(v166 + 72) * v121;
      v105 = &v174;
    }

    sub_24B0391CC(*(v105 - 32), v104, &qword_27EFC7FE8);
    result = sub_24B279484(v174, type metadata accessor for AnnotationV2);
LABEL_32:
    v56 = v165;
    v58 = v163;
    goto LABEL_4;
  }

  v122 = MEMORY[0x277D84F90];
  v55 = MEMORY[0x277D84F90];
LABEL_35:
  v123 = v55[2];
  v124 = v186;
  if (v123)
  {
    v188 = v18;
    v197 = v52;
    v177 = v122;

    sub_24B007BF0(0, v123, 0);
    v125 = v197;
    v126 = (*(v166 + 80) + 32) & ~*(v166 + 80);
    v181 = v55;
    v127 = v55 + v126;
    v187 = *(v166 + 72);
    v128 = (v176 + 32);
    v185 = (v176 + 16);
    v186 = v124 + 32;
    v129 = v137;
    do
    {
      v195 = v123;
      v196 = v125;
      v130 = v191;
      sub_24B008890(v127, v191, &qword_27EFC7FE8);
      v131 = v192;
      sub_24B008890(v130, v192, &qword_27EFC7FE8);
      v132 = *(v193 + 48);
      v133 = v190;
      v194 = *v128;
      (v194)(v190, v131, v38);
      (*v186)(v133 + v132, v131 + v132, v188);
      (*v185)(v129, v133, v38);
      sub_24AFF8258(v133, &qword_27EFC7FE8);
      v134 = v130;
      v125 = v196;
      sub_24AFF8258(v134, &qword_27EFC7FE8);
      v197 = v125;
      v136 = *(v125 + 16);
      v135 = *(v125 + 24);
      if (v136 >= v135 >> 1)
      {
        sub_24B007BF0(v135 > 1, v136 + 1, 1);
        v125 = v197;
      }

      *(v125 + 16) = v136 + 1;
      (v194)(v125 + ((*(v176 + 80) + 32) & ~*(v176 + 80)) + *(v176 + 72) * v136, v129, v38);
      v127 += v187;
      v123 = (v195 - 1);
    }

    while (v195 != 1);
    v122 = v177;
  }

  else
  {

    v125 = MEMORY[0x277D84F90];
  }

  sub_24B1D1980(v125);

  return v122;
}

uint64_t type metadata accessor for NonInteractiveMapView()
{
  result = qword_27EFCF8B8;
  if (!qword_27EFCF8B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24B2C277C()
{
  sub_24B2C2818();
  if (v0 <= 0x3F)
  {
    sub_24B178270();
    if (v1 <= 0x3F)
    {
      sub_24B2C2870();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24B2C2818()
{
  if (!qword_27EFCD9D8)
  {
    type metadata accessor for AnnotationV2();
    v0 = sub_24B2D55E4();
    if (!v1)
    {
      atomic_store(v0, &qword_27EFCD9D8);
    }
  }
}

void sub_24B2C2870()
{
  if (!qword_27EFCF8C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCD8B0);
    v0 = sub_24B2D4D04();
    if (!v1)
    {
      atomic_store(v0, &qword_27EFCF8C8);
    }
  }
}

uint64_t sub_24B2C28F0@<X0>(uint64_t a1@<X8>)
{
  v71 = a1;
  v2 = sub_24B2D2DE4();
  v58 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v70 = &v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v58 - v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v58 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD8A8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v58 - v11;
  v13 = type metadata accessor for InteractiveMapV2();
  MEMORY[0x28223BE20](v13);
  v15 = (&v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF8D0);
  v67 = *(v16 - 8);
  v68 = v16;
  MEMORY[0x28223BE20](v16);
  v65 = &v58 - v17;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF8D8);
  MEMORY[0x28223BE20](v64);
  v63 = &v58 - v18;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF8E0);
  MEMORY[0x28223BE20](v62);
  v61 = &v58 - v19;
  v21 = *v1;
  v20 = v1[1];
  type metadata accessor for NonInteractiveMapView();
  v60 = v21;
  v22 = v58;

  v59 = v20;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF8B0);
  v66 = v12;
  sub_24B2D4CF4();
  v69 = v9;
  sub_24B2D2DD4();
  *v15 = 0;
  v23 = v15 + v13[8];
  sub_24B2D2DD4();
  (*(v22 + 16))(v70, v6, v2);
  sub_24B2D4CC4();
  v24 = *(v22 + 8);
  v70 = v2;
  v24(v6, v2);
  v25 = v15 + v13[9];
  v72 = 0uLL;
  LOBYTE(v73) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD8A0);
  sub_24B2D4CC4();
  v26 = v75;
  v27 = *(&v75 + 1);
  *v25 = v74;
  v25[16] = v26;
  *(v25 + 3) = v27;
  type metadata accessor for CustomMapStyleLoader();
  v28 = swift_allocObject();
  v29 = objc_opt_self();
  v30 = [v29 standardUserDefaults];
  v31 = sub_24B166FFC();

  if (v31 == 2)
  {
    v32 = [v29 standardUserDefaults];
    v31 = sub_24B166D7C(0);

    v33 = (v31 >> 8) & 1;
    v34 = HIWORD(v31) & 1;
  }

  else
  {
    v33 = ((v31 & 0xFFFFFF) >> 8) & 1;
    v34 = ((v31 & 0xFFFFFF) >> 16) & 1;
  }

  v35 = (v15 + v13[10]);
  v28[16] = v31 & 1;
  v28[17] = v33;
  v28[18] = v34;
  sub_24B2D25B4();
  *&v72 = v28;
  sub_24B2D4CC4();
  v36 = *(&v74 + 1);
  *v35 = v74;
  v35[1] = v36;
  v37 = v15 + v13[11];
  v38 = *(MEMORY[0x277CD4BB0] + 16);
  v72 = *MEMORY[0x277CD4BB0];
  v73 = v38;
  type metadata accessor for MKMapRect(0);
  sub_24B2D4CC4();
  v39 = v76;
  v40 = v75;
  *v37 = v74;
  *(v37 + 1) = v40;
  *(v37 + 4) = v39;
  v41 = v15 + v13[12];
  LOBYTE(v72) = 1;
  sub_24B2D4CC4();
  v42 = *(&v74 + 1);
  *v41 = v74;
  *(v41 + 1) = v42;
  v43 = v15 + v13[13];
  LOBYTE(v72) = 0;
  sub_24B2D4CC4();
  v44 = *(&v74 + 1);
  *v43 = v74;
  *(v43 + 1) = v44;
  v45 = v15 + v13[14];
  *v45 = swift_getKeyPath();
  *(v45 + 4) = 0;
  v46 = v15 + v13[15];
  *v46 = swift_getKeyPath();
  *(v46 + 4) = 0;
  v47 = v15 + v13[16];
  *v47 = swift_getKeyPath();
  v47[8] = 0;
  v48 = v15 + v13[17];
  *v48 = swift_getKeyPath();
  v48[8] = 0;
  sub_24B2C303C(v23);
  *(v23 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA028) + 28)) = 0;
  (*(v22 + 32))(v23, v69, v70);
  v49 = v59;
  v15[1] = v60;
  v15[2] = v49;
  sub_24B2C30A4(v66, v15 + v13[7]);
  sub_24B2C3114(&qword_27EFCEFF8, type metadata accessor for InteractiveMapV2);
  v50 = v65;
  sub_24B2D4644();
  sub_24B2C315C(v15);
  KeyPath = swift_getKeyPath();
  v52 = v63;
  (*(v67 + 32))(v63, v50, v68);
  v53 = v52 + *(v64 + 36);
  *v53 = KeyPath;
  *(v53 + 8) = 2;
  v54 = v61;
  sub_24B0391CC(v52, v61, &qword_27EFCF8D8);
  *(v54 + *(v62 + 36)) = 0;
  v55 = v54;
  v56 = v71;
  sub_24B0391CC(v55, v71, &qword_27EFCF8E0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF8E8);
  *(v56 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_24B2C303C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA028);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24B2C30A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCD8A8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B2C3114(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24B2C315C(uint64_t a1)
{
  v2 = type metadata accessor for InteractiveMapV2();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24B2C31B8()
{
  result = qword_27EFCF8F0;
  if (!qword_27EFCF8F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCF8E8);
    sub_24B2C3270();
    sub_24B039184(&qword_27EFC9868, &qword_27EFC9870);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCF8F0);
  }

  return result;
}

unint64_t sub_24B2C3270()
{
  result = qword_27EFCF8F8;
  if (!qword_27EFCF8F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCF8E0);
    sub_24B2C32FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCF8F8);
  }

  return result;
}

unint64_t sub_24B2C32FC()
{
  result = qword_27EFCF900;
  if (!qword_27EFCF900)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCF8D8);
    type metadata accessor for InteractiveMapV2();
    sub_24B2C3114(&qword_27EFCEFF8, type metadata accessor for InteractiveMapV2);
    swift_getOpaqueTypeConformance2();
    sub_24B039184(&qword_27EFCF908, &qword_27EFCF910);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCF900);
  }

  return result;
}

FindMyUICore::TnLDeviceType_optional __swiftcall TnLDeviceType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 6;
  if ((rawValue + 1) < 6)
  {
    v2 = rawValue + 1;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_24B2C3468()
{
  v1 = *v0;
  sub_24B2D60E4();
  MEMORY[0x24C23C8D0](v1 - 1);
  return sub_24B2D6124();
}

uint64_t sub_24B2C34E0()
{
  v1 = *v0;
  sub_24B2D60E4();
  MEMORY[0x24C23C8D0](v1 - 1);
  return sub_24B2D6124();
}

unint64_t sub_24B2C3594()
{
  result = qword_27EFCF918;
  if (!qword_27EFCF918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCF918);
  }

  return result;
}

unint64_t sub_24B2C35EC()
{
  result = qword_27EFCF920;
  if (!qword_27EFCF920)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCF928);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCF920);
  }

  return result;
}

unint64_t sub_24B2C3654()
{
  result = qword_27EFCF930;
  if (!qword_27EFCF930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCF930);
  }

  return result;
}

unint64_t sub_24B2C36AC()
{
  result = qword_27EFCF938;
  if (!qword_27EFCF938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCF938);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DeviceUseCase(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEC)
  {
    goto LABEL_17;
  }

  if (a2 + 20 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 20) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 20;
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

      return (*a1 | (v4 << 8)) - 20;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 20;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x15;
  v8 = v6 - 21;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DeviceUseCase(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 20 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 20) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEC)
  {
    v4 = 0;
  }

  if (a2 > 0xEB)
  {
    v5 = ((a2 - 236) >> 8) + 1;
    *result = a2 + 20;
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
    *result = a2 + 20;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t type metadata accessor for FlyingUnicornDisclaimerView()
{
  result = qword_27EFCF940;
  if (!qword_27EFCF940)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24B2C38F0()
{
  sub_24B2C39D4(319, &qword_27EFCF950, type metadata accessor for FlyingUnicornDisclaimerViewModel, MEMORY[0x277CE10B8]);
  if (v0 <= 0x3F)
  {
    sub_24B2C39D4(319, &qword_27EFC9B78, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24B2C39D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_24B2C3A54@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v41 = a1;
  v3 = type metadata accessor for FlyingUnicornDisclaimerView();
  v40 = *(v3 - 8);
  v4 = *(v40 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8A68);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v33 - v6;
  v8 = v1[1];
  *&v48[0] = *v1;
  *(&v48[0] + 1) = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF958);
  sub_24B2D4CD4();
  v9 = *(v42 + 16);

  v10 = [v9 title];

  v39 = sub_24B2D5394();
  v38 = v11;

  type metadata accessor for TheftAndLossModule();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13 = [objc_opt_self() bundleForClass_];
  v14 = sub_24B2D5374();
  v37 = [objc_opt_self() imageNamed:v14 inBundle:v13];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF960);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_24B2DEAD0;
  if (qword_27EFC7740 != -1)
  {
    swift_once();
  }

  v16 = sub_24B2D1454();
  v36 = __swift_project_value_buffer(v16, qword_27EFE4648);
  v17 = *(v16 - 8);
  v35 = *(v17 + 16);
  v35(v7, v36, v16);
  v34 = *(v17 + 56);
  v34(v7, 0, 1, v16);
  v18 = sub_24B2D52D4();
  v33[0] = v19;
  sub_24B0C6490(v7);
  sub_24B2C4308(v2, v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v40 + 80);
  v40 = v2;
  v22 = (v21 + 16) & ~v21;
  v23 = swift_allocObject();
  v33[1] = v4;
  v24 = v23;
  sub_24B2C436C(v20, v23 + v22);
  v25 = v33[0];
  *(v15 + 32) = v18;
  *(v15 + 40) = v25;
  *(v15 + 48) = 0;
  *(v15 + 56) = sub_24B2C43D0;
  *(v15 + 64) = v24;
  v35(v7, v36, v16);
  v34(v7, 0, 1, v16);
  v26 = sub_24B2D52D4();
  v28 = v27;
  sub_24B0C6490(v7);
  v29 = v40;
  sub_24B2C4308(v40, v20);
  v30 = swift_allocObject();
  sub_24B2C436C(v20, v30 + v22);
  *(v15 + 72) = v26;
  *(v15 + 80) = v28;
  *(v15 + 88) = 256;
  *(v15 + 96) = sub_24B2C450C;
  *(v15 + 104) = v30;
  v31 = sub_24B2C3FB0(v29);
  *&v42 = v39;
  *(&v42 + 1) = v38;
  v43 = 0uLL;
  v44 = v37;
  v45 = v31;
  v46 = 0uLL;
  *&v47 = MEMORY[0x277D84F90];
  *(&v47 + 1) = v15;
  sub_24B2C45A8();
  sub_24B2D4894();
  v48[2] = v44;
  v48[3] = v45;
  v48[4] = v46;
  v48[5] = v47;
  v48[0] = v42;
  v48[1] = v43;
  return sub_24B2C45FC(v48);
}

uint64_t sub_24B2C3FB0(uint64_t *a1)
{
  v9 = *a1;
  v10 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF958);
  sub_24B2D4CD4();
  v1 = *(v11 + 16);

  v2 = [v1 message];

  sub_24B2D5394();
  sub_24AFFE0A4();
  v3 = sub_24B2D4604();
  v5 = v4;
  v7 = v6;
  sub_24B2D43A4();
  sub_24B2D45C4();

  sub_24B083C34(v3, v5, v7 & 1);

  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8B20);
  sub_24B076708();
  return sub_24B2D4E24();
}

uint64_t sub_24B2C4130()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF958);
  sub_24B2D4CD4();
  v0 = *(v2 + 24);
  sub_24AFD5880(v0);

  if (v0)
  {
    v0(result);
    return sub_24AFD5890(v0);
  }

  return result;
}

uint64_t sub_24B2C41B8(uint64_t a1, void *a2)
{
  v3 = sub_24B2D34F4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2[1];
  v11[2] = *a2;
  v11[3] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF958);
  sub_24B2D4CD4();
  v8 = *(v11[1] + 40);
  sub_24AFD5880(v8);

  if (v8)
  {
    v8(v9);
    sub_24AFD5890(v8);
  }

  type metadata accessor for FlyingUnicornDisclaimerView();
  sub_24B163AA0(v6);
  sub_24B2D34E4();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_24B2C4308(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FlyingUnicornDisclaimerView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B2C436C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FlyingUnicornDisclaimerView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_31()
{
  v1 = (type metadata accessor for FlyingUnicornDisclaimerView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC97E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_24B2D34F4();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24B2C4524(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for FlyingUnicornDisclaimerView() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

unint64_t sub_24B2C45A8()
{
  result = qword_27EFCF968;
  if (!qword_27EFCF968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCF968);
  }

  return result;
}

uint64_t sub_24B2C4650()
{
  sub_24AFD5890(*(v0 + 24));
  sub_24AFD5890(*(v0 + 40));
  v1 = OBJC_IVAR____TtC12FindMyUICore32FlyingUnicornDisclaimerViewModel___observationRegistrar;
  v2 = sub_24B2D25C4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FlyingUnicornDisclaimerViewModel()
{
  result = qword_27EFCF978;
  if (!qword_27EFCF978)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24B2C4758()
{
  result = sub_24B2D25C4();
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

uint64_t sub_24B2C4828()
{
  v0 = sub_24B2D1454();
  __swift_allocate_value_buffer(v0, qword_27EFE4648);
  __swift_project_value_buffer(v0, qword_27EFE4648);
  type metadata accessor for TnLModule();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  return sub_24B2D1434();
}

_BYTE *TheftAndLossDisclaimerContext.init(useCase:serialNumber:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = *result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

uint64_t TheftAndLossDisclaimerContext.serialNumber.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t sub_24B2C4918(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_24B2C4974(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TheftAndLossDisclaimerContext.UseCase(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE8)
  {
    goto LABEL_20;
  }

  v2 = a2 + 24;
  if (a2 + 24 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 24;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 24;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 0x15)
  {
    v8 = v7 - 20;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 5)
  {
    return v8 - 4;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TheftAndLossDisclaimerContext.UseCase(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 24;
  if (a3 + 24 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xE8)
  {
    v5 = 0;
  }

  if (a2 > 0xE7)
  {
    v6 = ((a2 - 232) >> 8) + 1;
    *result = a2 + 24;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 24;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_24B2C4B30(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 0x15)
  {
    return v1 - 20;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_24B2C4B44(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 20;
  }

  return result;
}

uint64_t FindMyTheftAndLossDisclaimerViewController.disclaimerViewController(context:confirmActionHandler:cancelActionHandler:completion:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v25 = a6;
  ObjectType = swift_getObjectType();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8580);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v24 - v15;
  v17 = sub_24B2D56D4();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  sub_24B2D5694();
  v18 = a1;

  sub_24AFD5880(a4);

  v19 = sub_24B2D5684();
  v20 = swift_allocObject();
  v21 = MEMORY[0x277D85700];
  v20[2] = v19;
  v20[3] = v21;
  v20[4] = v18;
  v20[5] = a2;
  v20[6] = a3;
  v20[7] = a4;
  v22 = v25;
  v20[8] = a5;
  v20[9] = v22;
  v20[10] = a7;
  v20[11] = ObjectType;
  sub_24B00A9A4(0, 0, v16, &unk_24B2F6068, v20);
}

uint64_t sub_24B2C4CFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 96) = v14;
  *(v8 + 80) = v13;
  *(v8 + 64) = a7;
  *(v8 + 72) = a8;
  *(v8 + 48) = a5;
  *(v8 + 56) = a6;
  *(v8 + 40) = a4;
  sub_24B2D5694();
  *(v8 + 104) = sub_24B2D5684();
  v10 = sub_24B2D5604();
  *(v8 + 112) = v10;
  *(v8 + 120) = v9;

  return MEMORY[0x2822009F8](sub_24B2C4DB0, v10, v9);
}

uint64_t sub_24B2C4DB0()
{
  v13 = v0;
  sub_24B2C525C(*(v0 + 40), v10);
  v1 = v10[0];
  v2 = v11;
  v3 = v12;
  *(v0 + 128) = v12;
  *(v0 + 16) = v1;
  *(v0 + 24) = v2;
  *(v0 + 32) = v3;
  v4 = swift_task_alloc();
  *(v0 + 136) = v4;
  *v4 = v0;
  v4[1] = sub_24B2C4EFC;
  v5 = *(v0 + 64);
  v6 = *(v0 + 72);
  v7 = *(v0 + 48);
  v8 = *(v0 + 56);

  return sub_24B2C98A4((v0 + 16), v7, v8, v5, v6);
}

uint64_t sub_24B2C4EFC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 144) = v1;

  if (v1)
  {
    v5 = v4[14];
    v6 = v4[15];
    v7 = sub_24B2C50B8;
  }

  else
  {
    v4[19] = a1;

    v5 = v4[14];
    v6 = v4[15];
    v7 = sub_24B2C5028;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_24B2C5028()
{
  v1 = v0[19];
  v2 = v0[10];

  v3 = v1;
  v2(v1, 0);

  v4 = v0[1];

  return v4();
}

uint64_t sub_24B2C50B8()
{

  v1 = v0[18];
  v2 = v0[10];
  v3 = v1;
  v2(0, v1);

  v4 = v0[1];

  return v4();
}

uint64_t sub_24B2C515C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_24AFFDE44;

  return sub_24B2C4CFC(a1, v4, v5, v6, v7, v8, v9, v10);
}

void sub_24B2C525C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 useCase];
  v5 = sub_24B2D5394();
  v7 = v6;
  if (v5 == sub_24B2D5394() && v7 == v8)
  {

    goto LABEL_8;
  }

  v10 = sub_24B2D6004();

  if (v10)
  {

LABEL_8:
    v11 = [a1 serialNumber];
    if (v11)
    {
      v12 = v11;
      v13 = sub_24B2D5394();
      v15 = v14;
    }

    else
    {
      v13 = 0;
      v15 = 0;
    }

    v16 = 21;
LABEL_12:
    *a2 = v16;
    *(a2 + 8) = v13;
    *(a2 + 16) = v15;
    return;
  }

  v17 = sub_24B2D5394();
  v19 = v18;
  if (v17 == sub_24B2D5394() && v19 == v20)
  {

    goto LABEL_20;
  }

  v22 = sub_24B2D6004();

  if (v22)
  {

LABEL_20:
    v23 = [a1 serialNumber];
    if (v23)
    {
      v24 = v23;
      v13 = sub_24B2D5394();
      v15 = v25;
    }

    else
    {
      v13 = 0;
      v15 = 0;
    }

    v16 = 22;
    goto LABEL_12;
  }

  v26 = sub_24B2D5394();
  v28 = v27;
  if (v26 == sub_24B2D5394() && v28 == v29)
  {

LABEL_29:
    v31 = [a1 serialNumber];
    if (v31)
    {
      v32 = v31;
      v13 = sub_24B2D5394();
      v15 = v33;
    }

    else
    {
      v13 = 0;
      v15 = 0;
    }

    v16 = 23;
    goto LABEL_12;
  }

  v30 = sub_24B2D6004();

  if (v30)
  {

    goto LABEL_29;
  }

  v34 = sub_24B2D5394();
  v36 = v35;
  if (v34 == sub_24B2D5394() && v36 == v37)
  {

LABEL_37:
    v39 = [a1 serialNumber];
    if (v39)
    {
      v40 = v39;
      v13 = sub_24B2D5394();
      v15 = v41;
    }

    else
    {
      v13 = 0;
      v15 = 0;
    }

    v16 = 24;
    goto LABEL_12;
  }

  v38 = sub_24B2D6004();

  if (v38)
  {
    goto LABEL_37;
  }

  if (qword_27EFC7748 != -1)
  {
    swift_once();
  }

  v42 = sub_24B2D3184();
  __swift_project_value_buffer(v42, qword_27EFCF988);
  v43 = a1;
  v44 = sub_24B2D3164();
  v45 = sub_24B2D5914();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v54 = v47;
    *v46 = 136315138;
    v48 = [v43 useCase];
    v49 = sub_24B2D5394();
    v51 = v50;

    v52 = sub_24AFF321C(v49, v51, &v54);

    *(v46 + 4) = v52;
    _os_log_impl(&dword_24AFD2000, v44, v45, "Unrecognized useCase: %s", v46, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v47);
    MEMORY[0x24C23D530](v47, -1, -1);
    MEMORY[0x24C23D530](v46, -1, -1);
  }

  sub_24B2C6570();
  swift_allocError();
  *v53 = 0;
  swift_willThrow();
}

uint64_t FindMyTheftAndLossDisclaimerViewController.disclaimerLabel(context:completion:)(void *a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8580);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = sub_24B2D56D4();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_24B2D5694();
  v11 = a1;

  v12 = sub_24B2D5684();
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  v13[2] = v12;
  v13[3] = v14;
  v13[4] = v11;
  v13[5] = a2;
  v13[6] = a3;
  v13[7] = ObjectType;
  sub_24B00A9A4(0, 0, v9, &unk_24B2F6078, v13);
}

uint64_t sub_24B2C5B00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  sub_24B2D5694();
  v7[9] = sub_24B2D5684();
  v9 = sub_24B2D5604();
  v7[10] = v9;
  v7[11] = v8;

  return MEMORY[0x2822009F8](sub_24B2C5B9C, v9, v8);
}

uint64_t sub_24B2C5B9C()
{
  v9 = v0;
  sub_24B2C525C(*(v0 + 40), v6);
  v1 = v6[0];
  v2 = v7;
  v3 = v8;
  *(v0 + 96) = v8;
  *(v0 + 16) = v1;
  *(v0 + 24) = v2;
  *(v0 + 32) = v3;
  v4 = swift_task_alloc();
  *(v0 + 104) = v4;
  *v4 = v0;
  v4[1] = sub_24B2C5CE4;

  return sub_24B2C9F14(v0 + 16);
}

uint64_t sub_24B2C5CE4(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 112) = v2;

  if (v2)
  {
    v7 = v6[10];
    v8 = v6[11];
    v9 = sub_24B2C5EA0;
  }

  else
  {
    v6[15] = a2;
    v6[16] = a1;

    v7 = v6[10];
    v8 = v6[11];
    v9 = sub_24B2C5E14;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_24B2C5E14()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[6];

  v3(v2, v1, 0);

  v4 = v0[1];

  return v4();
}

uint64_t sub_24B2C5EA0()
{

  v1 = v0[14];
  v2 = v0[6];
  v3 = v1;
  v2(0, 0, v1);

  v4 = v0[1];

  return v4();
}

uint64_t sub_24B2C5F48(uint64_t a1)
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
  v10[1] = sub_24AFFDE44;

  return sub_24B2C5B00(a1, v4, v5, v6, v7, v9, v8);
}

void sub_24B2C61AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v6 = sub_24B2D5374();
    if (a3)
    {
LABEL_3:
      v7 = sub_24B2D21D4();
      goto LABEL_6;
    }
  }

  else
  {
    v6 = 0;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_6:
  v8 = v7;
  (*(a4 + 16))(a4, v6);
}

FindMyTheftAndLossDisclaimerViewController __swiftcall FindMyTheftAndLossDisclaimerViewController.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for FindMyTheftAndLossDisclaimerViewController()
{
  result = qword_27EFCF9A0;
  if (!qword_27EFCF9A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EFCF9A0);
  }

  return result;
}

uint64_t objectdestroy_3Tm_1()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t objectdestroyTm_32()
{
  swift_unknownObjectRelease();

  if (*(v0 + 56))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_24B2C63F8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_24AFFD370;

  return sub_24B2C4CFC(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_24B2C64F8()
{
  v0 = sub_24B2D3184();
  __swift_allocate_value_buffer(v0, qword_27EFCF988);
  __swift_project_value_buffer(v0, qword_27EFCF988);
  return sub_24B2D3174();
}

unint64_t sub_24B2C6570()
{
  result = qword_27EFCF9A8;
  if (!qword_27EFCF9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCF9A8);
  }

  return result;
}

uint64_t static TheftAndLossModalBuilder.disclaimerViewController(context:confirmActionHandler:cancelActionHandler:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_24B0C9468;

  return sub_24B2C98A4(a1, a2, a3, a4, a5);
}

uint64_t static TheftAndLossModalBuilder.disclaimerLabel(context:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24B0E66F4;

  return sub_24B2C9F14(a1);
}

uint64_t TheftAndLossModalBuilderError.hashValue.getter()
{
  v1 = *v0;
  sub_24B2D60E4();
  MEMORY[0x24C23C8D0](v1);
  return sub_24B2D6124();
}

uint64_t static TheftAndLossModalBuilder.createTnLDisclaimerViewController(deviceClass:confirmActionHandler:cancelActionHandler:)()
{
  sub_24B2C6570();
  swift_allocError();
  *v0 = 0;
  return swift_willThrow();
}

uint64_t sub_24B2C6834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[3] = a2;
  v5 = sub_24B2D5654();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8580);
  v4[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B2C6930, 0, 0);
}

uint64_t sub_24B2C6930()
{
  v1 = v0[9];
  v3 = v0[4];
  v2 = v0[5];
  v4 = sub_24B2D56D4();
  v5 = *(*(v4 - 8) + 56);
  v5(v1, 1, 1, v4);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v3;
  v6[5] = v2;
  sub_24B2CAB0C(v1, &unk_24B2F6210, v6);
  sub_24AFF8258(v1, &qword_27EFC8580);
  v5(v1, 1, 1, v4);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  sub_24B2CAB0C(v1, &unk_24B2F6220, v7);
  sub_24AFF8258(v1, &qword_27EFC8580);
  v8 = swift_task_alloc();
  v0[10] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF9E8);
  *v8 = v0;
  v8[1] = sub_24B2C6B14;

  return MEMORY[0x2822004D0](v0 + 12, 0, 0, v9);
}

uint64_t sub_24B2C6B14()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_24B2C6C94;
  }

  else
  {
    v2 = sub_24B2C6C28;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24B2C6C28()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B2C6C94()
{
  v1 = *(v0 + 88);
  *(v0 + 16) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFC85A0);
  if (swift_dynamicCast())
  {

    if (qword_27EFC77F8 != -1)
    {
      swift_once();
    }

    v3 = sub_24B2D3184();
    __swift_project_value_buffer(v3, qword_27EFCF9B0);
    v4 = sub_24B2D3164();
    v5 = sub_24B2D5914();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_24AFD2000, v4, v5, "Download timed out", v6, 2u);
      MEMORY[0x24C23D530](v6, -1, -1);
    }

    v8 = *(v0 + 56);
    v7 = *(v0 + 64);
    v9 = *(v0 + 48);

    (*(v8 + 8))(v7, v9);
    v10 = *(v0 + 16);
  }

  else
  {

    if (qword_27EFC77F8 != -1)
    {
      swift_once();
    }

    v11 = *(v0 + 88);
    v12 = sub_24B2D3184();
    __swift_project_value_buffer(v12, qword_27EFCF9B0);
    v13 = v11;
    v14 = sub_24B2D3164();
    v15 = sub_24B2D5914();

    v16 = os_log_type_enabled(v14, v15);
    v17 = *(v0 + 88);
    if (v16)
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      v20 = v17;
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 4) = v21;
      *v19 = v21;
      _os_log_impl(&dword_24AFD2000, v14, v15, "Download failed: %@", v18, 0xCu);
      sub_24AFF8258(v19, &qword_27EFC7BB8);
      MEMORY[0x24C23D530](v19, -1, -1);
      MEMORY[0x24C23D530](v18, -1, -1);

      goto LABEL_13;
    }

    v10 = v17;
  }

LABEL_13:

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_24B2C6F80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_24B2D5D64();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B2C7040, 0, 0);
}

uint64_t sub_24B2C7040()
{
  sub_24B2D6084();
  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_24B2C7100;
  v3 = v0[2];
  v2 = v0[3];

  return sub_24B09A030(v3, v2, 0, 0, 1);
}

uint64_t sub_24B2C7100()
{
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  *(*v1 + 64) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_24B2C7310;
  }

  else
  {
    v5 = sub_24B2C7270;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_24B2C7270()
{
  sub_24B2D5654();
  sub_24B2CA7E4();
  swift_allocError();
  sub_24B2D51C4();
  swift_willThrow();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B2C7310()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B2C7374()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8138);
  v0[18] = v1;
  v0[19] = *(v1 - 8);
  v0[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B2C743C, 0, 0);
}

uint64_t sub_24B2C743C()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 10;
  v5 = v0[19];
  v4 = v0[20];
  v6 = v0[18];
  v7 = [objc_opt_self() sharedInstance];
  v1[21] = v7;
  v1[2] = v1;
  v1[3] = sub_24B2C7610;
  swift_continuation_init();
  v1[17] = v6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFC85A0);
  sub_24B2D5614();
  (*(v5 + 32))(boxed_opaque_existential_0, v4, v6);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_24B2CACEC;
  v1[13] = &block_descriptor_30;
  [v7 downloadWithReply_];
  (*(v5 + 8))(boxed_opaque_existential_0, v6);

  return MEMORY[0x282200938](v2);
}

uint64_t sub_24B2C7610()
{
  v1 = *(*v0 + 48);
  *(*v0 + 176) = v1;
  if (v1)
  {
    v2 = sub_24B2C778C;
  }

  else
  {
    v2 = sub_24B2C7720;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24B2C7720()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B2C778C()
{
  v1 = *(v0 + 168);
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24B2C7808()
{
  result = sub_24B2D5374();
  qword_27EFE4660 = result;
  return result;
}

uint64_t sub_24B2C783C()
{
  result = sub_24B2D5374();
  qword_27EFE4668 = result;
  return result;
}

uint64_t sub_24B2C787C()
{
  result = sub_24B2D5374();
  qword_27EFE4670 = result;
  return result;
}

uint64_t sub_24B2C78BC()
{
  result = sub_24B2D5374();
  qword_27EFE4678 = result;
  return result;
}

uint64_t sub_24B2C78FC()
{
  result = sub_24B2D5374();
  qword_27EFE4680 = result;
  return result;
}

uint64_t sub_24B2C7938()
{
  result = sub_24B2D5374();
  qword_27EFE4688 = result;
  return result;
}

uint64_t sub_24B2C7964()
{
  result = sub_24B2D5374();
  qword_27EFE4690 = result;
  return result;
}

uint64_t sub_24B2C79A0()
{
  result = sub_24B2D5374();
  qword_27EFE4698 = result;
  return result;
}

uint64_t sub_24B2C79D8()
{
  result = sub_24B2D5374();
  qword_27EFE46A0 = result;
  return result;
}

uint64_t sub_24B2C7A14()
{
  result = sub_24B2D5374();
  qword_27EFE46A8 = result;
  return result;
}

uint64_t sub_24B2C7A44()
{
  result = sub_24B2D5374();
  qword_27EFE46B0 = result;
  return result;
}

uint64_t sub_24B2C7A84()
{
  result = sub_24B2D5374();
  qword_27EFE46B8 = result;
  return result;
}

uint64_t sub_24B2C7AC0()
{
  result = sub_24B2D5374();
  qword_27EFE46C0 = result;
  return result;
}

uint64_t sub_24B2C7B00()
{
  result = sub_24B2D5374();
  qword_27EFE46C8 = result;
  return result;
}

uint64_t sub_24B2C7B2C()
{
  result = sub_24B2D5374();
  qword_27EFE46D0 = result;
  return result;
}

uint64_t sub_24B2C7B64()
{
  result = sub_24B2D5374();
  qword_27EFE46D8 = result;
  return result;
}

uint64_t sub_24B2C7B98()
{
  result = sub_24B2D5374();
  qword_27EFE46E0 = result;
  return result;
}

uint64_t sub_24B2C7BD4()
{
  result = sub_24B2D5374();
  qword_27EFE46E8 = result;
  return result;
}

uint64_t sub_24B2C7C0C()
{
  result = sub_24B2D5374();
  qword_27EFE46F0 = result;
  return result;
}

uint64_t sub_24B2C7C48()
{
  result = sub_24B2D5374();
  qword_27EFE46F8 = result;
  return result;
}

uint64_t sub_24B2C7C78()
{
  result = sub_24B2D5374();
  qword_27EFE4700 = result;
  return result;
}

uint64_t sub_24B2C7CAC()
{
  v0 = sub_24B2D3184();
  __swift_allocate_value_buffer(v0, qword_27EFCF9B0);
  __swift_project_value_buffer(v0, qword_27EFCF9B0);
  return sub_24B2D3174();
}

uint64_t sub_24B2C7D24(uint64_t result)
{
  if (result > 2)
  {
    switch(result)
    {
      case 3:
        v4 = [objc_opt_self() currentDevice];
        v5 = [v4 userInterfaceIdiom];

        result = 0;
        if (v5 <= 1)
        {
          if (v5)
          {
            if (v5 != 1)
            {
              return result;
            }

            if (qword_27EFC7788 != -1)
            {
              swift_once();
            }

            v1 = qword_27EFE4698;
          }

          else
          {
            if (qword_27EFC77A8 != -1)
            {
              swift_once();
            }

            v1 = qword_27EFE46B8;
          }

          goto LABEL_37;
        }

        if (v5 == 2)
        {
          if (qword_27EFC7758 != -1)
          {
            swift_once();
          }

          v1 = qword_27EFE4668;
          goto LABEL_37;
        }

        if (v5 == 5)
        {
          if (qword_27EFC77D8 != -1)
          {
            swift_once();
          }

          v1 = qword_27EFE46E8;
          goto LABEL_37;
        }

        break;
      case 4:
        if (qword_27EFC77F0 != -1)
        {
          swift_once();
        }

        v1 = qword_27EFE4700;
        goto LABEL_37;
      case 5:
        v2 = [objc_opt_self() currentDevice];
        v3 = [v2 userInterfaceIdiom];

        result = 0;
        if (v3 <= 1)
        {
          if (v3)
          {
            if (v3 != 1)
            {
              return result;
            }

            if (qword_27EFC7790 != -1)
            {
              swift_once();
            }

            v1 = qword_27EFE46A0;
          }

          else
          {
            if (qword_27EFC77B0 != -1)
            {
              swift_once();
            }

            v1 = qword_27EFE46C0;
          }

          goto LABEL_37;
        }

        if (v3 == 2)
        {
          if (qword_27EFC7760 != -1)
          {
            swift_once();
          }

          v1 = qword_27EFE4670;
          goto LABEL_37;
        }

        if (v3 == 5)
        {
          if (qword_27EFC77E0 != -1)
          {
            swift_once();
          }

          v1 = qword_27EFE46F0;
          goto LABEL_37;
        }

        break;
      default:
LABEL_23:
        v6 = result;
        if (qword_27EFC77F8 != -1)
        {
          swift_once();
        }

        v7 = sub_24B2D3184();
        __swift_project_value_buffer(v7, qword_27EFCF9B0);
        v8 = sub_24B2D3164();
        v9 = sub_24B2D5914();
        if (os_log_type_enabled(v8, v9))
        {
          v10 = swift_slowAlloc();
          *v10 = 134349056;
          *(v10 + 4) = v6;
          _os_log_impl(&dword_24AFD2000, v8, v9, "Unhandled coverage: %{public}lu", v10, 0xCu);
          MEMORY[0x24C23D530](v10, -1, -1);
        }

        return 0;
    }
  }

  else
  {
    if (!result)
    {
      return result;
    }

    if (result != 1)
    {
      if (result == 2)
      {
        if (qword_27EFC77E8 != -1)
        {
          swift_once();
        }

        v1 = qword_27EFE46F8;
LABEL_37:
        v13 = v1;
        return v1;
      }

      goto LABEL_23;
    }

    v11 = [objc_opt_self() currentDevice];
    v12 = [v11 userInterfaceIdiom];

    result = 0;
    if (v12 <= 1)
    {
      if (v12)
      {
        if (v12 != 1)
        {
          return result;
        }

        if (qword_27EFC7778 != -1)
        {
          swift_once();
        }

        v1 = qword_27EFE4688;
      }

      else
      {
        if (qword_27EFC7798 != -1)
        {
          swift_once();
        }

        v1 = qword_27EFE46A8;
      }

      goto LABEL_37;
    }

    if (v12 == 2)
    {
      if (qword_27EFC7750 != -1)
      {
        swift_once();
      }

      v1 = qword_27EFE4660;
      goto LABEL_37;
    }

    if (v12 == 5)
    {
      if (qword_27EFC77B8 != -1)
      {
        swift_once();
      }

      v1 = qword_27EFE46C8;
      goto LABEL_37;
    }
  }

  return result;
}

id sub_24B2C82B4(_BYTE *a1)
{
  switch(*a1)
  {
    case 1:
      if (qword_27EFC7778 != -1)
      {
        swift_once();
      }

      v1 = &qword_27EFE4688;
      break;
    case 2:
      if (qword_27EFC77E8 != -1)
      {
        swift_once();
      }

      v1 = &qword_27EFE46F8;
      break;
    case 3:
      if (qword_27EFC77F0 != -1)
      {
        swift_once();
      }

      v1 = &qword_27EFE4700;
      break;
    case 4:
      if (qword_27EFC77B8 != -1)
      {
        swift_once();
      }

      v1 = &qword_27EFE46C8;
      break;
    case 5:
      if (qword_27EFC77A8 != -1)
      {
        swift_once();
      }

      v1 = &qword_27EFE46B8;
      break;
    case 6:
      if (qword_27EFC77B0 != -1)
      {
        swift_once();
      }

      v1 = &qword_27EFE46C0;
      break;
    case 7:
      if (qword_27EFC7750 != -1)
      {
        swift_once();
      }

      v1 = &qword_27EFE4660;
      break;
    case 8:
      if (qword_27EFC7758 != -1)
      {
        swift_once();
      }

      v1 = &qword_27EFE4668;
      break;
    case 9:
      if (qword_27EFC7760 != -1)
      {
        swift_once();
      }

      v1 = &qword_27EFE4670;
      break;
    case 0xA:
      if (qword_27EFC7768 != -1)
      {
        swift_once();
      }

      v1 = &qword_27EFE4678;
      break;
    case 0xB:
      if (qword_27EFC7770 != -1)
      {
        swift_once();
      }

      v1 = &qword_27EFE4680;
      break;
    case 0xC:
      if (qword_27EFC7788 != -1)
      {
        swift_once();
      }

      v1 = &qword_27EFE4698;
      break;
    case 0xD:
      if (qword_27EFC7780 != -1)
      {
        swift_once();
      }

      v1 = &qword_27EFE4690;
      break;
    case 0xE:
      if (qword_27EFC7790 != -1)
      {
        swift_once();
      }

      v1 = &qword_27EFE46A0;
      break;
    case 0xF:
      if (qword_27EFC77A0 != -1)
      {
        swift_once();
      }

      v1 = &qword_27EFE46B0;
      break;
    case 0x10:
      if (qword_27EFC77C0 != -1)
      {
        swift_once();
      }

      v1 = &qword_27EFE46D0;
      break;
    case 0x11:
      if (qword_27EFC77C8 != -1)
      {
        swift_once();
      }

      v1 = &qword_27EFE46D8;
      break;
    case 0x12:
      if (qword_27EFC77D0 != -1)
      {
        swift_once();
      }

      v1 = &qword_27EFE46E0;
      break;
    case 0x13:
      if (qword_27EFC77D8 != -1)
      {
        swift_once();
      }

      v1 = &qword_27EFE46E8;
      break;
    case 0x14:
      if (qword_27EFC77E0 != -1)
      {
        swift_once();
      }

      v1 = &qword_27EFE46F0;
      break;
    default:
      if (qword_27EFC7798 != -1)
      {
        swift_once();
      }

      v1 = &qword_27EFE46A8;
      break;
  }

  v2 = *v1;

  return v2;
}

uint64_t sub_24B2C87E8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF9E0);
  *(v1 + 288) = v3;
  *(v1 + 296) = *(v3 - 8);
  *(v1 + 304) = swift_task_alloc();
  *(v1 + 440) = *a1;
  *(v1 + 312) = *(a1 + 8);

  return MEMORY[0x2822009F8](sub_24B2C88C8, 0, 0);
}

uint64_t sub_24B2C88C8()
{
  v21 = v0;
  v1 = *(v0 + 440);
  if ((v1 - 21) < 3)
  {
    v2 = *(v0 + 320);
    v19 = [objc_opt_self() sharedInstance];
    *(v0 + 328) = v19;
    if (v2)
    {
      v3 = sub_24B2D5374();
    }

    else
    {
      v3 = 0;
    }

    v6 = v0 + 208;
    v7 = v0 + 80;
    *(v0 + 336) = v3;
    v9 = *(v0 + 296);
    v8 = *(v0 + 304);
    v10 = *(v0 + 288);
    *(v0 + 80) = v0;
    *(v0 + 120) = v0 + 280;
    *(v0 + 88) = sub_24B2C8D14;
    swift_continuation_init();
    *(v0 + 264) = v10;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 240));
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFC85A0);
    sub_24B2D5614();
    (*(v9 + 32))(boxed_opaque_existential_0, v8, v10);
    *(v0 + 208) = MEMORY[0x277D85DD0];
    *(v0 + 216) = 1107296256;
    *(v0 + 224) = sub_24B2CAA68;
    *(v0 + 232) = &block_descriptor_18;
LABEL_15:
    [v19 getTheftAndLossCoverageWithSerialNumber:v3 reply:{v6, v19}];
    (*(v9 + 8))(boxed_opaque_existential_0, v10);

    return MEMORY[0x282200938](v7);
  }

  if (v1 == 24)
  {
    v4 = *(v0 + 320);
    v5 = [objc_opt_self() sharedInstance];
    *(v0 + 392) = v5;
    v19 = v5;
    if (v4)
    {
      v3 = sub_24B2D5374();
    }

    else
    {
      v3 = 0;
    }

    v7 = v0 + 16;
    v6 = v0 + 144;
    *(v0 + 400) = v3;
    v9 = *(v0 + 296);
    v16 = *(v0 + 304);
    v10 = *(v0 + 288);
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 272;
    *(v0 + 24) = sub_24B2C92BC;
    swift_continuation_init();
    *(v0 + 200) = v10;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 176));
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFC85A0);
    sub_24B2D5614();
    (*(v9 + 32))(boxed_opaque_existential_0, v16, v10);
    *(v0 + 144) = MEMORY[0x277D85DD0];
    *(v0 + 152) = 1107296256;
    *(v0 + 160) = sub_24B2CAA68;
    *(v0 + 168) = &block_descriptor_10;
    goto LABEL_15;
  }

  v20[0] = *(v0 + 440);
  v12 = sub_24B2C82B4(v20);
  if (v12)
  {
    v13 = v12;

    v14 = *(v0 + 8);

    return v14(v13);
  }

  else
  {
    sub_24B2CA4A4();
    swift_allocError();
    *v17 = 2;
    swift_willThrow();

    v18 = *(v0 + 8);

    return v18();
  }
}

uint64_t sub_24B2C8D14()
{
  v1 = *(*v0 + 112);
  *(*v0 + 344) = v1;
  if (v1)
  {
    v2 = sub_24B2C9824;
  }

  else
  {
    v2 = sub_24B2C8E24;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24B2C8E24()
{
  v1 = v0[41];
  v2 = v0[42];
  v3 = v0[35];
  v0[44] = v3;

  if (v3)
  {
    v4 = swift_task_alloc();
    v0[45] = v4;
    *(v4 + 16) = xmmword_24B2F60A0;
    v5 = swift_task_alloc();
    v0[46] = v5;
    *v5 = v0;
    v5[1] = sub_24B2C8F90;

    return MEMORY[0x282200740]();
  }

  else
  {
    sub_24B2D5694();
    v0[47] = sub_24B2D5684();
    v7 = sub_24B2D5604();

    return MEMORY[0x2822009F8](sub_24B2C90CC, v7, v6);
  }
}

void sub_24B2C8F90()
{

  if (v0)
  {
  }

  else
  {

    MEMORY[0x2822009F8](sub_24B2C9228, 0, 0);
  }
}

uint64_t sub_24B2C90CC()
{
  v1 = *(v0 + 352);

  *(v0 + 384) = sub_24B2C7D24(v1);

  return MEMORY[0x2822009F8](sub_24B2C9144, 0, 0);
}

uint64_t sub_24B2C9144()
{
  v1 = *(v0 + 384);
  if (v1)
  {

    v2 = *(v0 + 8);

    return v2(v1);
  }

  else
  {
    sub_24B2CA4A4();
    swift_allocError();
    *v4 = 2;
    swift_willThrow();

    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_24B2C9228()
{
  sub_24B2D5694();
  *(v0 + 376) = sub_24B2D5684();
  v2 = sub_24B2D5604();

  return MEMORY[0x2822009F8](sub_24B2C90CC, v2, v1);
}

uint64_t sub_24B2C92BC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 408) = v1;
  if (v1)
  {
    v2 = sub_24B2C97A4;
  }

  else
  {
    v2 = sub_24B2C93CC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24B2C93CC()
{
  v1 = v0[49];
  v2 = v0[50];
  v3 = v0[34];
  v0[52] = v3;

  if (v3)
  {
    v4 = swift_task_alloc();
    v0[53] = v4;
    *(v4 + 16) = xmmword_24B2F60A0;
    v5 = swift_task_alloc();
    v0[54] = v5;
    *v5 = v0;
    v5[1] = sub_24B2C9540;

    return MEMORY[0x282200740]();
  }

  else
  {
    sub_24B2CA4A4();
    swift_allocError();
    *v6 = 1;
    swift_willThrow();

    v7 = v0[1];

    return v7();
  }
}

void sub_24B2C9540()
{

  if (v0)
  {
  }

  else
  {

    MEMORY[0x2822009F8](sub_24B2C967C, 0, 0);
  }
}

uint64_t sub_24B2C967C()
{
  if (*(v0 + 416))
  {
    if (qword_27EFC77E8 != -1)
    {
      swift_once();
    }

    v4 = qword_27EFE46F8;

    v5 = *(v0 + 8);

    return v5(v4);
  }

  else
  {
    sub_24B2CA4A4();
    swift_allocError();
    *v1 = 1;
    swift_willThrow();

    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_24B2C97A4()
{
  v1 = v0[50];
  v2 = v0[49];
  swift_willThrow();

  v3 = v0[1];

  return v3();
}

uint64_t sub_24B2C9824()
{
  v1 = v0[42];
  v2 = v0[41];
  swift_willThrow();

  v3 = v0[1];

  return v3();
}

uint64_t sub_24B2C98A4(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 208) = a4;
  *(v5 + 216) = a5;
  *(v5 + 192) = a2;
  *(v5 + 200) = a3;
  *(v5 + 224) = type metadata accessor for FlyingUnicornDisclaimerView();
  *(v5 + 232) = swift_task_alloc();
  *(v5 + 240) = swift_task_alloc();
  v7 = *a1;
  v8 = *(a1 + 1);
  v9 = *(a1 + 2);
  *(v5 + 248) = sub_24B2D5694();
  *(v5 + 256) = sub_24B2D5684();
  *(v5 + 120) = v7;
  *(v5 + 128) = v8;
  *(v5 + 136) = v9;
  v10 = swift_task_alloc();
  *(v5 + 264) = v10;
  *v10 = v5;
  v10[1] = sub_24B2C99B0;

  return sub_24B2C87E8(v5 + 120);
}

uint64_t sub_24B2C99B0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 272) = a1;
  *(v3 + 280) = v1;

  v5 = sub_24B2D5604();
  if (v1)
  {
    v6 = sub_24B2C9EA0;
  }

  else
  {
    v6 = sub_24B2C9AF4;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_24B2C9AF4()
{
  v1 = *(v0 + 272);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 entryForConfiguration:*MEMORY[0x277D08F68] deviceClasses:v1];

  v4 = sub_24B2D51E4();
  *(v0 + 144) = sub_24B2D5394();
  *(v0 + 152) = v5;

  result = sub_24B2D5BC4();
  if (!*(v4 + 16))
  {
    __break(1u);
    goto LABEL_11;
  }

  v7 = sub_24B181B58(v0 + 16);
  v9 = v8;

  if ((v9 & 1) == 0)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  sub_24AFF3FA0(*(v4 + 56) + 32 * v7, v0 + 88);

  sub_24B1830A8(v0 + 16);
  sub_24B0E4E94((v0 + 88), (v0 + 56));
  sub_24B2CA458();
  swift_dynamicCast();
  v10 = *(v0 + 176);
  if ([v10 isEnabled])
  {
    v11 = *(v0 + 240);
    v27 = *(v0 + 232);
    v28 = *(v0 + 272);
    v12 = *(v0 + 216);
    v26 = *(v0 + 224);
    v14 = *(v0 + 200);
    v13 = *(v0 + 208);
    v15 = *(v0 + 192);
    type metadata accessor for FlyingUnicornDisclaimerViewModel();
    v16 = swift_allocObject();
    v17 = v10;

    sub_24B2D25B4();
    v16[5] = v13;
    v16[6] = v12;
    v16[3] = v15;
    v16[4] = v14;
    v16[2] = v17;
    v18 = *(v26 + 20);
    *(v11 + v18) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC97E0);
    swift_storeEnumTagMultiPayload();
    *(v0 + 184) = v16;
    sub_24AFD5880(v13);

    sub_24B2D4CC4();
    v19 = *(v0 + 168);
    *v11 = *(v0 + 160);
    v11[1] = v19;
    sub_24B2C4308(v11, v27);
    v20 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF9F8));
    v21 = sub_24B2D3EA4();

    sub_24B2CA83C(v11);

    v22 = *(v0 + 8);

    return v22(v21);
  }

  else
  {
    v23 = *(v0 + 272);
    sub_24B2CA4A4();
    swift_allocError();
    *v24 = 1;
    swift_willThrow();

    v25 = *(v0 + 8);

    return v25();
  }
}

uint64_t sub_24B2C9EA0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B2C9F14(uint64_t a1)
{
  *(v1 + 120) = *a1;
  *(v1 + 128) = *(a1 + 8);
  v2 = swift_task_alloc();
  *(v1 + 168) = v2;
  *v2 = v1;
  v2[1] = sub_24B2C9FB8;

  return sub_24B2C87E8(v1 + 120);
}

uint64_t sub_24B2C9FB8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 176) = a1;
  *(v3 + 184) = v1;

  if (v1)
  {
    v4 = sub_24B2CA39C;
  }

  else
  {
    v4 = sub_24B2CA0CC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24B2CA0CC()
{
  v1 = *(v0 + 176);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 entryForConfiguration:*MEMORY[0x277D08F68] deviceClasses:v1];

  v4 = sub_24B2D51E4();
  *(v0 + 144) = sub_24B2D5394();
  *(v0 + 152) = v5;

  result = sub_24B2D5BC4();
  if (!*(v4 + 16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v7 = sub_24B181B58(v0 + 16);
  v9 = v8;

  if ((v9 & 1) == 0)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  sub_24AFF3FA0(*(v4 + 56) + 32 * v7, v0 + 88);

  sub_24B1830A8(v0 + 16);
  sub_24B0E4E94((v0 + 88), (v0 + 56));
  sub_24B2CA458();
  swift_dynamicCast();
  v10 = *(v0 + 160);
  if ([v10 isEnabled])
  {
    v11 = [v10 disclaimer];
    v12 = sub_24B2D5394();
    v14 = v13;

    v15 = HIBYTE(v14) & 0xF;
    if ((v14 & 0x2000000000000000) == 0)
    {
      v15 = v12 & 0xFFFFFFFFFFFFLL;
    }

    v16 = *(v0 + 176);
    if (v15)
    {
      v17 = [v10 disclaimer];
      v18 = sub_24B2D5394();
      v20 = v19;

      v21 = *(v0 + 8);

      return v21(v18, v20);
    }
  }

  else
  {
    v16 = *(v0 + 176);
  }

  sub_24B2CA4A4();
  swift_allocError();
  *v22 = 1;
  swift_willThrow();

  v23 = *(v0 + 8);

  return v23();
}

unint64_t sub_24B2CA3B8()
{
  result = qword_27EFCF9C8;
  if (!qword_27EFCF9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCF9C8);
  }

  return result;
}

unint64_t sub_24B2CA458()
{
  result = qword_27EFCF9D0;
  if (!qword_27EFCF9D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EFCF9D0);
  }

  return result;
}

unint64_t sub_24B2CA4A4()
{
  result = qword_27EFCF9D8;
  if (!qword_27EFCF9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCF9D8);
  }

  return result;
}

uint64_t sub_24B2CA510(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_24AFFDE44;

  return sub_24B2C6834(a1, a2, v7, v6);
}

uint64_t sub_24B2CA5C4(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_24AFFD370;

  return sub_24B2C6834(a1, a2, v7, v6);
}

uint64_t sub_24B2CA678(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24AFFDE44;

  return sub_24B2C6F80(a1, v4, v5, v7, v6);
}

uint64_t sub_24B2CA738()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24AFFDE44;

  return sub_24B2C7374();
}

unint64_t sub_24B2CA7E4()
{
  result = qword_27EFCF9F0;
  if (!qword_27EFCF9F0)
  {
    sub_24B2D5654();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCF9F0);
  }

  return result;
}

uint64_t sub_24B2CA83C(uint64_t a1)
{
  v2 = type metadata accessor for FlyingUnicornDisclaimerView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *TheftAndLossReminderContext.init(useCase:serialNumber:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = *result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

uint64_t TheftAndLossReminderContext.serialNumber.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t getEnumTagSinglePayload for TheftAndLossReminderContext.UseCase(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEB)
  {
    goto LABEL_20;
  }

  v2 = a2 + 21;
  if (a2 + 21 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 21;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 21;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 21;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 0x15;
  v9 = v7 - 21;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TheftAndLossReminderContext.UseCase(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 21;
  if (a3 + 21 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xEB)
  {
    v5 = 0;
  }

  if (a2 > 0xEA)
  {
    v6 = ((a2 - 235) >> 8) + 1;
    *result = a2 + 21;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 21;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

void sub_24B2CAA68(uint64_t a1, uint64_t a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v4 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF9E0);
    sub_24B2D5624();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF9E0);
    sub_24B2D5634();
  }
}

uint64_t sub_24B2CAB0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8580);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v18 - v8;
  sub_24AFFDC5C(a1, v18 - v8);
  v10 = sub_24B2D56D4();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_24AFF8258(v9, &qword_27EFC8580);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v12 = sub_24B2D5604();
      v14 = v13;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_24B2D56C4();
    (*(v11 + 8))(v9, v10);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v12 = 0;
  v14 = 0;
LABEL_6:
  v15 = *v4;
  v16 = (v14 | v12);
  if (v14 | v12)
  {
    v19[0] = 0;
    v19[1] = 0;
    v16 = v19;
    v19[2] = v12;
    v19[3] = v14;
  }

  v18[1] = 1;
  v18[2] = v16;
  v18[3] = v15;
  swift_task_create();
}

void sub_24B2CACEC(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a2)
  {
    v3 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8138);
    sub_24B2D5624();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8138);
    sub_24B2D5634();
  }
}

uint64_t sub_24B2CAD7C()
{
  v0 = sub_24B2D3184();
  __swift_allocate_value_buffer(v0, qword_27EFCFA00);
  __swift_project_value_buffer(v0, qword_27EFCFA00);
  return sub_24B2D3174();
}

uint64_t static TheftAndLossReminderModalBuilder.reminderViewController(context:actionHandler:)(char *a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24B0C9468;

  return sub_24B2CC9F0(a1, a2, a3);
}

BOOL sub_24B2CAEB4()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 enableFMIPInContext_];

  if (v1)
  {
    if (qword_27EFC7800 != -1)
    {
      swift_once();
    }

    v2 = sub_24B2D3184();
    __swift_project_value_buffer(v2, qword_27EFCFA00);
    v3 = v1;
    v4 = sub_24B2D3164();
    v5 = sub_24B2D5914();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138412290;
      v8 = v3;
      v9 = _swift_stdlib_bridgeErrorToNSError();
      *(v6 + 4) = v9;
      *v7 = v9;
      _os_log_impl(&dword_24AFD2000, v4, v5, "Failed to enable FMIP, error: %@", v6, 0xCu);
      sub_24AFF8258(v7, &qword_27EFC7BB8);
      MEMORY[0x24C23D530](v7, -1, -1);
      MEMORY[0x24C23D530](v6, -1, -1);

      v4 = v8;
    }

    else
    {
    }
  }

  else
  {
    if (qword_27EFC7800 != -1)
    {
      swift_once();
    }

    v10 = sub_24B2D3184();
    __swift_project_value_buffer(v10, qword_27EFCFA00);
    v4 = sub_24B2D3164();
    v11 = sub_24B2D5934();
    if (os_log_type_enabled(v4, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_24AFD2000, v4, v11, "FMIP enabled", v12, 2u);
      MEMORY[0x24C23D530](v12, -1, -1);
    }
  }

  return v1 == 0;
}

uint64_t sub_24B2CB100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[3] = a2;
  v5 = sub_24B2D5654();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8580);
  v4[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B2CB1FC, 0, 0);
}

uint64_t sub_24B2CB1FC()
{
  v1 = v0[9];
  v3 = v0[4];
  v2 = v0[5];
  v4 = sub_24B2D56D4();
  v5 = *(*(v4 - 8) + 56);
  v5(v1, 1, 1, v4);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v3;
  v6[5] = v2;
  sub_24B2CAB0C(v1, &unk_24B2F6350, v6);
  sub_24AFF8258(v1, &qword_27EFC8580);
  v5(v1, 1, 1, v4);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  sub_24B2CAB0C(v1, &unk_24B2F6360, v7);
  sub_24AFF8258(v1, &qword_27EFC8580);
  v8 = swift_task_alloc();
  v0[10] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF9E8);
  *v8 = v0;
  v8[1] = sub_24B2CB3E0;

  return MEMORY[0x2822004D0](v0 + 12, 0, 0, v9);
}

uint64_t sub_24B2CB3E0()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_24B2CB4F4;
  }

  else
  {
    v2 = sub_24B2C6C28;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24B2CB4F4()
{
  v1 = *(v0 + 88);
  *(v0 + 16) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFC85A0);
  if (swift_dynamicCast())
  {

    if (qword_27EFC7800 != -1)
    {
      swift_once();
    }

    v3 = sub_24B2D3184();
    __swift_project_value_buffer(v3, qword_27EFCFA00);
    v4 = sub_24B2D3164();
    v5 = sub_24B2D5914();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_24AFD2000, v4, v5, "Download timed out", v6, 2u);
      MEMORY[0x24C23D530](v6, -1, -1);
    }

    v8 = *(v0 + 56);
    v7 = *(v0 + 64);
    v9 = *(v0 + 48);

    (*(v8 + 8))(v7, v9);
    v10 = *(v0 + 16);
  }

  else
  {

    if (qword_27EFC7800 != -1)
    {
      swift_once();
    }

    v11 = *(v0 + 88);
    v12 = sub_24B2D3184();
    __swift_project_value_buffer(v12, qword_27EFCFA00);
    v13 = v11;
    v14 = sub_24B2D3164();
    v15 = sub_24B2D5914();

    v16 = os_log_type_enabled(v14, v15);
    v17 = *(v0 + 88);
    if (v16)
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      v20 = v17;
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 4) = v21;
      *v19 = v21;
      _os_log_impl(&dword_24AFD2000, v14, v15, "Download failed: %@", v18, 0xCu);
      sub_24AFF8258(v19, &qword_27EFC7BB8);
      MEMORY[0x24C23D530](v19, -1, -1);
      MEMORY[0x24C23D530](v18, -1, -1);

      goto LABEL_13;
    }

    v10 = v17;
  }

LABEL_13:

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_24B2CB7E0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8138);
  v0[18] = v1;
  v0[19] = *(v1 - 8);
  v0[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B2CB8A8, 0, 0);
}

uint64_t sub_24B2CB8A8()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 10;
  v5 = v0[19];
  v4 = v0[20];
  v6 = v0[18];
  v7 = [objc_opt_self() sharedInstance];
  v1[21] = v7;
  v1[2] = v1;
  v1[3] = sub_24B2C7610;
  swift_continuation_init();
  v1[17] = v6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFC85A0);
  sub_24B2D5614();
  (*(v5 + 32))(boxed_opaque_existential_0, v4, v6);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_24B2CACEC;
  v1[13] = &block_descriptor_20;
  [v7 downloadWithReply_];
  (*(v5 + 8))(boxed_opaque_existential_0, v6);

  return MEMORY[0x282200938](v2);
}

uint64_t sub_24B2CBA7C(uint64_t result)
{
  if (result > 2)
  {
    switch(result)
    {
      case 3:
        v4 = [objc_opt_self() currentDevice];
        v5 = [v4 userInterfaceIdiom];

        result = 0;
        if (v5 <= 1)
        {
          if (v5)
          {
            if (v5 != 1)
            {
              return result;
            }

            if (qword_27EFC7788 != -1)
            {
              swift_once();
            }

            v1 = qword_27EFE4698;
          }

          else
          {
            if (qword_27EFC77A8 != -1)
            {
              swift_once();
            }

            v1 = qword_27EFE46B8;
          }

          goto LABEL_37;
        }

        if (v5 == 2)
        {
          if (qword_27EFC7758 != -1)
          {
            swift_once();
          }

          v1 = qword_27EFE4668;
          goto LABEL_37;
        }

        if (v5 == 5)
        {
          if (qword_27EFC77D8 != -1)
          {
            swift_once();
          }

          v1 = qword_27EFE46E8;
          goto LABEL_37;
        }

        break;
      case 4:
        if (qword_27EFC77F0 != -1)
        {
          swift_once();
        }

        v1 = qword_27EFE4700;
        goto LABEL_37;
      case 5:
        v2 = [objc_opt_self() currentDevice];
        v3 = [v2 userInterfaceIdiom];

        result = 0;
        if (v3 <= 1)
        {
          if (v3)
          {
            if (v3 != 1)
            {
              return result;
            }

            if (qword_27EFC7790 != -1)
            {
              swift_once();
            }

            v1 = qword_27EFE46A0;
          }

          else
          {
            if (qword_27EFC77B0 != -1)
            {
              swift_once();
            }

            v1 = qword_27EFE46C0;
          }

          goto LABEL_37;
        }

        if (v3 == 2)
        {
          if (qword_27EFC7760 != -1)
          {
            swift_once();
          }

          v1 = qword_27EFE4670;
          goto LABEL_37;
        }

        if (v3 == 5)
        {
          if (qword_27EFC77E0 != -1)
          {
            swift_once();
          }

          v1 = qword_27EFE46F0;
          goto LABEL_37;
        }

        break;
      default:
LABEL_23:
        v6 = result;
        if (qword_27EFC7800 != -1)
        {
          swift_once();
        }

        v7 = sub_24B2D3184();
        __swift_project_value_buffer(v7, qword_27EFCFA00);
        v8 = sub_24B2D3164();
        v9 = sub_24B2D5914();
        if (os_log_type_enabled(v8, v9))
        {
          v10 = swift_slowAlloc();
          *v10 = 134349056;
          *(v10 + 4) = v6;
          _os_log_impl(&dword_24AFD2000, v8, v9, "Unhandled coverage: %{public}lu", v10, 0xCu);
          MEMORY[0x24C23D530](v10, -1, -1);
        }

        return 0;
    }
  }

  else
  {
    if (!result)
    {
      return result;
    }

    if (result != 1)
    {
      if (result == 2)
      {
        if (qword_27EFC77E8 != -1)
        {
          swift_once();
        }

        v1 = qword_27EFE46F8;
LABEL_37:
        v13 = v1;
        return v1;
      }

      goto LABEL_23;
    }

    v11 = [objc_opt_self() currentDevice];
    v12 = [v11 userInterfaceIdiom];

    result = 0;
    if (v12 <= 1)
    {
      if (v12)
      {
        if (v12 != 1)
        {
          return result;
        }

        if (qword_27EFC7778 != -1)
        {
          swift_once();
        }

        v1 = qword_27EFE4688;
      }

      else
      {
        if (qword_27EFC7798 != -1)
        {
          swift_once();
        }

        v1 = qword_27EFE46A8;
      }

      goto LABEL_37;
    }

    if (v12 == 2)
    {
      if (qword_27EFC7750 != -1)
      {
        swift_once();
      }

      v1 = qword_27EFE4660;
      goto LABEL_37;
    }

    if (v12 == 5)
    {
      if (qword_27EFC77B8 != -1)
      {
        swift_once();
      }

      v1 = qword_27EFE46C8;
      goto LABEL_37;
    }
  }

  return result;
}

uint64_t sub_24B2CC00C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF9E0);
  *(v1 + 152) = v3;
  *(v1 + 160) = *(v3 - 8);
  *(v1 + 168) = swift_task_alloc();
  *(v1 + 256) = *a1;
  *(v1 + 176) = *(a1 + 8);

  return MEMORY[0x2822009F8](sub_24B2CC0E8, 0, 0);
}

uint64_t sub_24B2CC0E8()
{
  v15 = v0;
  if (*(v0 + 256) == 21)
  {
    v1 = *(v0 + 184);
    v13 = [objc_opt_self() sharedInstance];
    *(v0 + 192) = v13;
    if (v1)
    {
      v2 = sub_24B2D5374();
    }

    else
    {
      v2 = 0;
    }

    *(v0 + 200) = v2;
    v8 = *(v0 + 160);
    v7 = *(v0 + 168);
    v9 = *(v0 + 152);
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 144;
    *(v0 + 24) = sub_24B2CC3C8;
    swift_continuation_init();
    *(v0 + 136) = v9;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 112));
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFC85A0);
    sub_24B2D5614();
    (*(v8 + 32))(boxed_opaque_existential_0, v7, v9);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_24B2CAA68;
    *(v0 + 104) = &block_descriptor_11;
    [v13 getTheftAndLossCoverageWithSerialNumber:v2 reply:v0 + 80];
    (*(v8 + 8))(boxed_opaque_existential_0, v9);

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {
    v14[0] = *(v0 + 256);
    v3 = sub_24B2C82B4(v14);
    if (v3)
    {
      v4 = v3;

      v5 = *(v0 + 8);

      return v5(v4);
    }

    else
    {
      sub_24B2CA4A4();
      swift_allocError();
      *v11 = 2;
      swift_willThrow();

      v12 = *(v0 + 8);

      return v12();
    }
  }
}

uint64_t sub_24B2CC3C8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 208) = v1;
  if (v1)
  {
    v2 = sub_24B2CC970;
  }

  else
  {
    v2 = sub_24B2CC4D8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24B2CC4D8()
{
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[18];
  v0[27] = v3;

  if (v3)
  {
    v4 = swift_task_alloc();
    v0[28] = v4;
    *(v4 + 16) = xmmword_24B2F60A0;
    v5 = swift_task_alloc();
    v0[29] = v5;
    *v5 = v0;
    v5[1] = sub_24B2CC644;

    return MEMORY[0x282200740]();
  }

  else
  {
    sub_24B2D5694();
    v0[30] = sub_24B2D5684();
    v7 = sub_24B2D5604();

    return MEMORY[0x2822009F8](sub_24B2CC780, v7, v6);
  }
}

void sub_24B2CC644()
{

  if (v0)
  {
  }

  else
  {

    MEMORY[0x2822009F8](sub_24B2CC8DC, 0, 0);
  }
}

uint64_t sub_24B2CC780()
{
  v1 = *(v0 + 216);

  *(v0 + 248) = sub_24B2CBA7C(v1);

  return MEMORY[0x2822009F8](sub_24B2CC7F8, 0, 0);
}

uint64_t sub_24B2CC7F8()
{
  v1 = *(v0 + 248);
  if (v1)
  {

    v2 = *(v0 + 8);

    return v2(v1);
  }

  else
  {
    sub_24B2CA4A4();
    swift_allocError();
    *v4 = 2;
    swift_willThrow();

    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_24B2CC8DC()
{
  sub_24B2D5694();
  *(v0 + 240) = sub_24B2D5684();
  v2 = sub_24B2D5604();

  return MEMORY[0x2822009F8](sub_24B2CC780, v2, v1);
}

uint64_t sub_24B2CC970()
{
  v1 = v0[25];
  v2 = v0[24];
  swift_willThrow();

  v3 = v0[1];

  return v3();
}

uint64_t sub_24B2CC9F0(char *a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 176) = a2;
  *(v3 + 184) = a3;
  v4 = *a1;
  v5 = *(a1 + 1);
  v6 = *(a1 + 2);
  *(v3 + 192) = sub_24B2D5694();
  *(v3 + 200) = sub_24B2D5684();
  *(v3 + 88) = v4;
  *(v3 + 96) = v5;
  *(v3 + 104) = v6;
  v7 = swift_task_alloc();
  *(v3 + 208) = v7;
  *v7 = v3;
  v7[1] = sub_24B2CCAB8;

  return sub_24B2CC00C(v3 + 88);
}

uint64_t sub_24B2CCAB8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 216) = a1;
  *(v3 + 224) = v1;

  v5 = sub_24B2D5604();
  if (v1)
  {
    v6 = sub_24B2CCF30;
  }

  else
  {
    v6 = sub_24B2CCBFC;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_24B2CCBFC()
{
  v1 = v0[27];

  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 entryForConfiguration:*MEMORY[0x277D08F68] deviceClasses:v1];

  v4 = sub_24B2D51E4();
  v0[14] = sub_24B2D5394();
  v0[15] = v5;
  sub_24B2D5BC4();
  if (*(v4 + 16) && (v6 = sub_24B181B58((v0 + 2)), (v7 & 1) != 0))
  {
    sub_24AFF3FA0(*(v4 + 56) + 32 * v6, (v0 + 7));
    sub_24B1830A8((v0 + 2));

    sub_24B2CCFA4();
    if (swift_dynamicCast())
    {
      v8 = v0[27];
      v10 = v0[22];
      v9 = v0[23];
      v11 = v0[20];
      type metadata accessor for TheftAndLossReminderViewModel();
      v12 = swift_allocObject();
      *(v12 + 32) = 0u;
      *(v12 + 48) = 0u;
      *(v12 + 64) = 0;
      v13 = v11;
      sub_24B2D25B4();
      *(v12 + 16) = v13;
      *(v12 + 24) = 0;
      sub_24B258AB4(*(v12 + 32), *(v12 + 40));
      *(v12 + 32) = 0u;
      *(v12 + 48) = 0u;
      *(v12 + 64) = 0;
      *(v12 + 72) = sub_24B2CAEB4;
      *(v12 + 80) = 0;
      *(v12 + 88) = v10;
      *(v12 + 96) = v9;
      v0[21] = v12;

      sub_24B2D4CC4();
      v14 = v0[17];
      v0[18] = v0[16];
      v0[19] = v14;
      v15 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCFA20));

      v16 = sub_24B2D3EA4();

      v17 = v0[1];

      return v17(v16);
    }
  }

  else
  {

    sub_24B1830A8((v0 + 2));
  }

  v19 = v0[27];
  sub_24B2C6570();
  swift_allocError();
  *v20 = 1;
  swift_willThrow();

  v21 = v0[1];

  return v21();
}

uint64_t sub_24B2CCF30()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_24B2CCFA4()
{
  result = qword_27EFCFA18;
  if (!qword_27EFCFA18)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EFCFA18);
  }

  return result;
}

uint64_t sub_24B2CD008(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_24AFFD370;

  return sub_24B2CB100(a1, a2, v7, v6);
}

uint64_t sub_24B2CD0BC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24AFFDE44;

  return sub_24B2C6F80(a1, v4, v5, v7, v6);
}

uint64_t sub_24B2CD17C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24AFFDE44;

  return sub_24B2CB7E0();
}

unint64_t sub_24B2CD244()
{
  result = qword_27EFCFA28;
  if (!qword_27EFCFA28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCFA30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCFA28);
  }

  return result;
}

void *sub_24B2CD2A8@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

unint64_t sub_24B2CD2E8()
{
  result = qword_27EFCFA38;
  if (!qword_27EFCFA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCFA38);
  }

  return result;
}

uint64_t TheftAndLossReminderView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v67 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8A68);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v57 - v3;
  v5 = *v1;
  v6 = v1[1];
  *&v76 = *v1;
  *(&v76 + 1) = v6;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCFA40);
  sub_24B2D4CD4();
  v7 = *(*&v75[0] + 16);

  v8 = [v7 title];

  v9 = sub_24B2D5394();
  v65 = v10;
  v66 = v9;

  type metadata accessor for TheftAndLossModule();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = [objc_opt_self() bundleForClass_];
  v13 = sub_24B2D5374();
  v64 = [objc_opt_self() imageNamed:v13 inBundle:v12];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCF960);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_24B2DEAD0;
  if (qword_27EFC7740 != -1)
  {
    swift_once();
  }

  v15 = sub_24B2D1454();
  v16 = __swift_project_value_buffer(v15, qword_27EFE4648);
  v17 = *(v15 - 8);
  v18 = *(v17 + 16);
  v61 = v17 + 16;
  v62 = v16;
  v63 = v18;
  v18(v4, v16, v15);
  v60 = *(v17 + 56);
  v60(v4, 0, 1, v15);
  v19 = sub_24B2D52D4();
  v58 = v20;
  v59 = v19;
  sub_24B0C6490(v4);
  *&v76 = v5;
  *(&v76 + 1) = v6;
  sub_24B2D4CD4();
  v21 = *&v75[0];
  swift_getKeyPath();
  *&v76 = v21;
  v68 = sub_24B2CEEEC();
  sub_24B2D2584();

  v22 = *(v21 + 24);

  if (v22)
  {
    v23 = 2;
  }

  else
  {
    v23 = 0;
  }

  v24 = swift_allocObject();
  *(v24 + 16) = v5;
  *(v24 + 24) = v6;
  v25 = v58;
  *(v14 + 32) = v59;
  *(v14 + 40) = v25;
  *(v14 + 48) = v23;
  *(v14 + 49) = 0;
  *(v14 + 56) = sub_24B2CEF44;
  *(v14 + 64) = v24;
  v63(v4, v62, v15);
  v60(v4, 0, 1, v15);

  v26 = sub_24B2D52D4();
  v28 = v27;
  sub_24B0C6490(v4);
  v29 = swift_allocObject();
  *(v29 + 16) = v5;
  *(v29 + 24) = v6;
  *(v14 + 72) = v26;
  *(v14 + 80) = v28;
  *(v14 + 88) = 256;
  *(v14 + 96) = sub_24B2CEF4C;
  *(v14 + 104) = v29;

  v30 = v64;
  v31 = v64;
  v32 = sub_24B2CDB14(v5, v6);

  *&v76 = v66;
  *(&v76 + 1) = v65;
  v77 = 0uLL;
  v78 = v30;
  v79 = v32;
  v80 = 0uLL;
  *&v81 = MEMORY[0x277D84F90];
  *(&v81 + 1) = v14;
  *&v75[0] = v5;
  *(&v75[0] + 1) = v6;
  v66 = v6;
  sub_24B2D4CD4();
  v33 = v70;
  swift_getKeyPath();
  *&v75[0] = v33;
  sub_24B2D2584();

  v34 = *(v33 + 32);
  v35 = *(v33 + 40);
  sub_24B258A64(v34, v35);

  if (v35)
  {

    v36 = v34;
    v37 = v35;
  }

  else
  {
    v36 = 0;
    v37 = 0xE000000000000000;
  }

  sub_24B258AB4(v34, v35);
  *&v75[0] = v36;
  *(&v75[0] + 1) = v37;
  sub_24AFFE0A4();
  v38 = sub_24B2D4604();
  v64 = v39;
  v65 = v38;
  LODWORD(v62) = v40;
  v63 = v41;
  sub_24B2D5694();

  v42 = v66;

  v43 = sub_24B2D5684();
  v44 = swift_allocObject();
  v45 = MEMORY[0x277D85700];
  v44[2] = v43;
  v44[3] = v45;
  v44[4] = v5;
  v44[5] = v42;

  v46 = sub_24B2D5684();
  v47 = swift_allocObject();
  v47[2] = v46;
  v47[3] = v45;
  v47[4] = v5;
  v47[5] = v42;
  sub_24B2D4E74();
  *&v75[0] = v5;
  *(&v75[0] + 1) = v42;
  sub_24B2D4CD4();
  v48 = v70;
  swift_getKeyPath();
  *&v75[0] = v48;
  sub_24B2D2584();

  v49 = v48[4];
  v50 = v48[5];
  v51 = v48[6];
  v52 = v48[7];
  v53 = v48[8];
  sub_24B258A64(v49, v50);

  v70 = v49;
  v71 = v50;
  v72 = v51;
  v73 = v52;
  v74 = v53;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCEC60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCEC68);
  sub_24B2C45A8();
  sub_24B258D3C();
  LOBYTE(v52) = v62;
  v55 = v64;
  v54 = v65;
  sub_24B2D48E4();

  sub_24B083C34(v54, v55, v52 & 1);

  sub_24B258AB4(v70, v71);
  v75[2] = v78;
  v75[3] = v79;
  v75[4] = v80;
  v75[5] = v81;
  v75[0] = v76;
  v75[1] = v77;
  return sub_24B2C45FC(v75);
}

uint64_t sub_24B2CDB14(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCFA40);
  sub_24B2D4CD4();
  v2 = *(v12 + 16);

  v3 = [v2 message];

  sub_24B2D5394();
  sub_24AFFE0A4();
  v4 = sub_24B2D4604();
  v6 = v5;
  v8 = v7;
  sub_24B2D43A4();
  sub_24B2D45C4();

  sub_24B083C34(v4, v6, v8 & 1);

  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8B20);
  sub_24B076708();
  return sub_24B2D4E24();
}

uint64_t sub_24B2CDC90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8A68);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v34 - v6;
  v44 = a2;
  v45 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCFA40);
  sub_24B2D4CD4();
  v8 = v43;
  if (*(v43 + 24) == 1)
  {
    *(v43 + 24) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v41 = &v34;
    MEMORY[0x28223BE20](KeyPath);
    *(&v34 - 2) = v8;
    *(&v34 - 8) = 1;
    v44 = v8;
    sub_24B2CEEEC();
    sub_24B2D2574();
  }

  v44 = a2;
  v45 = a3;
  sub_24B2D4CD4();
  v10 = *(v43 + 72);

  v12 = v10(v11);

  if (v12)
  {
    v44 = a2;
    v45 = a3;
    sub_24B2D4CD4();
    v13 = *(v43 + 88);

    v13(0);
  }

  else
  {
    v44 = a2;
    v45 = a3;
    sub_24B2D4CD4();
    v15 = v43;
    v16 = *(v43 + 24);
    v42 = a2;
    if (v16)
    {
      v17 = swift_getKeyPath();
      MEMORY[0x28223BE20](v17);
      *(&v34 - 2) = v15;
      *(&v34 - 8) = 0;
      v44 = v15;
      sub_24B2CEEEC();
      sub_24B2D2574();

      a2 = v42;
    }

    else
    {
      *(v43 + 24) = 0;
    }

    v41 = 0;
    v44 = a2;
    v45 = a3;
    sub_24B2D4CD4();
    v40 = v43;
    if (qword_27EFC7740 != -1)
    {
      swift_once();
    }

    v18 = sub_24B2D1454();
    v19 = __swift_project_value_buffer(v18, qword_27EFE4648);
    v20 = *(v18 - 8);
    v21 = *(v20 + 16);
    v21(v7, v19, v18);
    v22 = *(v20 + 56);
    v22(v7, 0, 1, v18);
    v37 = sub_24B2D52D4();
    v39 = v23;
    sub_24B0C6490(v7);
    v36 = v21;
    v21(v7, v19, v18);
    v22(v7, 0, 1, v18);
    v35 = sub_24B2D52D4();
    v38 = v24;
    sub_24B0C6490(v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8078);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_24B2DE430;
    v26 = swift_allocObject();
    *(v26 + 16) = v42;
    *(v26 + 24) = a3;
    v27 = qword_27EFC7648;

    if (v27 != -1)
    {
      swift_once();
    }

    v28 = __swift_project_value_buffer(v18, qword_27EFCB478);
    v36(v7, v28, v18);
    v22(v7, 0, 1, v18);
    v29 = sub_24B2D52D4();
    v31 = v30;
    sub_24B0C6490(v7);
    *(v25 + 56) = sub_24B2CF1F4;
    *(v25 + 64) = v26;
    *(v25 + 32) = v29;
    *(v25 + 40) = v31;
    *(v25 + 48) = 2;
    v44 = v37;
    v45 = v39;
    v46 = v35;
    v47 = v38;
    v48 = v25;
    v32 = swift_getKeyPath();
    MEMORY[0x28223BE20](v32);
    v33 = v40;
    *(&v34 - 2) = v40;
    *(&v34 - 1) = &v44;
    v43 = v33;
    sub_24B2CEEEC();
    sub_24B2D2574();
  }
}

uint64_t sub_24B2CE2F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8580);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12 - v5;
  v7 = sub_24B2D56D4();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_24B2D5694();

  v8 = sub_24B2D5684();
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D85700];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = a1;
  v9[5] = a2;
  sub_24B00A9A4(0, 0, v6, &unk_24B2F65D0, v9);
}

uint64_t sub_24B2CE420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  sub_24B2D5694();
  v5[7] = sub_24B2D5684();
  v7 = sub_24B2D5604();

  return MEMORY[0x2822009F8](sub_24B2CE4B8, v7, v6);
}

uint64_t sub_24B2CE4B8()
{
  v1 = v0[6];
  v2 = v0[5];

  v0[2] = v2;
  v0[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCFA40);
  sub_24B2D4CD4();
  v3 = *(v0[4] + 88);

  v3(2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_24B2CE57C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCFA40);
  sub_24B2D4CD4();
  v0 = *(v2 + 88);

  v0(1);
}

uint64_t sub_24B2CE5F8@<X0>(BOOL *a1@<X8>)
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCFA40);
  sub_24B2D4CD4();
  swift_getKeyPath();
  sub_24B2CEEEC();
  sub_24B2D2584();

  v3 = *(v5 + 32);
  v2 = *(v5 + 40);
  sub_24B258A64(v3, v2);

  if (v2)
  {
    sub_24B258AB4(v3, v2);
  }

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_24B2CE75C()
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCFA40);
  sub_24B2D4CD4();
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_24B2CEEEC();
  sub_24B2D2574();
}

uint64_t sub_24B2CE8D4()
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_getKeyPath();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCEE60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9318);
  sub_24B039184(&qword_27EFCEE68, &qword_27EFCEE60);
  sub_24B039184(&qword_27EFC9C08, &qword_27EFC9318);
  sub_24B2D4ED4();
}

uint64_t sub_24B2CEA70(__int128 *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9310);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v16[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x28223BE20](v5);
  v7 = &v16[-v6 - 8];
  v8 = a1[1];
  v18 = *a1;
  v19 = v8;
  v20 = *(a1 + 4);
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v17 = v18;
  v9 = v19;
  if (v19 == 2)
  {
    v10 = sub_24B2D32E4();
    (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  }

  else
  {

    if (v9)
    {
      sub_24B2D32B4();
    }

    else
    {
      sub_24B2D32D4();
    }

    v11 = sub_24B2D32E4();
    (*(*(v11 - 8) + 56))(v4, 0, 1, v11);
    sub_24B2CF148(v4, v7);
  }

  v12 = swift_allocObject();
  v13 = v19;
  *(v12 + 16) = v18;
  *(v12 + 32) = v13;
  *(v12 + 48) = v20;
  sub_24B2CF0D8(&v18, v16);
  sub_24AFFE0A4();
  sub_24B2D4D64();
}

uint64_t sub_24B2CECC0(uint64_t a1)
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  (*(a1 + 24))(isCurrentExecutor);
}

uint64_t sub_24B2CED64@<X0>(uint64_t a1@<X8>)
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

  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v8;
  return result;
}

uint64_t sub_24B2CEE4C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24B2CEEEC();
  sub_24B2D2584();

  *a2 = *(v3 + 24);
  return result;
}

unint64_t sub_24B2CEEEC()
{
  result = qword_27EFCFA48;
  if (!qword_27EFCFA48)
  {
    type metadata accessor for TheftAndLossReminderViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCFA48);
  }

  return result;
}

uint64_t sub_24B2CEF54@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24B2CEEEC();
  sub_24B2D2584();

  v4 = v3[4];
  v5 = v3[5];
  v6 = v3[6];
  v7 = v3[7];
  v8 = v3[8];
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  a2[4] = v8;
  return sub_24B258A64(v4, v5);
}

uint64_t sub_24B2CEFE0()
{
  swift_getKeyPath();
  sub_24B2CEEEC();
  sub_24B2D2574();
}

uint64_t sub_24B2CF0D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8080);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B2CF148(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9310);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B2CF1FC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24AFFD370;

  return sub_24B2CE420(a1, v4, v5, v7, v6);
}

void sub_24B2CF2EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_24B2D21D4();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

uint64_t static FindMyTheftAndLossReminderFactory.reminderViewController(context:actionHandler:completion:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8580);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v21 - v13;
  v15 = sub_24B2D56D4();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  sub_24B2D5694();
  v16 = a1;

  v17 = sub_24B2D5684();
  v18 = swift_allocObject();
  v19 = MEMORY[0x277D85700];
  v18[2] = v17;
  v18[3] = v19;
  v18[4] = v16;
  v18[5] = a2;
  v18[6] = a3;
  v18[7] = a4;
  v18[8] = a5;
  v18[9] = v6;
  sub_24B00A9A4(0, 0, v14, &unk_24B2F6610, v18);
}

uint64_t sub_24B2CF4C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a8;
  v8[10] = v13;
  v8[7] = a6;
  v8[8] = a7;
  v8[5] = a4;
  v8[6] = a5;
  sub_24B2D5694();
  v8[11] = sub_24B2D5684();
  v10 = sub_24B2D5604();
  v8[12] = v10;
  v8[13] = v9;

  return MEMORY[0x2822009F8](sub_24B2CF570, v10, v9);
}

uint64_t sub_24B2CF570()
{
  v11 = v0;
  sub_24B2CFA04(*(v0 + 40), v8);
  v1 = v8[0];
  v2 = v9;
  v3 = v10;
  *(v0 + 112) = v10;
  *(v0 + 16) = v1;
  *(v0 + 24) = v2;
  *(v0 + 32) = v3;
  v4 = swift_task_alloc();
  *(v0 + 120) = v4;
  *v4 = v0;
  v4[1] = sub_24B2CF6B8;
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);

  return sub_24B2CC9F0((v0 + 16), v5, v6);
}

uint64_t sub_24B2CF6B8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 128) = v1;

  if (v1)
  {
    v5 = v4[12];
    v6 = v4[13];
    v7 = sub_24B2CF874;
  }

  else
  {
    v4[17] = a1;

    v5 = v4[12];
    v6 = v4[13];
    v7 = sub_24B2CF7E4;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_24B2CF7E4()
{
  v1 = v0[17];
  v2 = v0[8];

  v3 = v1;
  v2(v1, 0);

  v4 = v0[1];

  return v4();
}

uint64_t sub_24B2CF874()
{

  v1 = v0[16];
  v2 = v0[8];
  v3 = v1;
  v2(0, v1);

  v4 = v0[1];

  return v4();
}

uint64_t sub_24B2CF918(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_24AFFD370;

  return sub_24B2CF4C8(a1, v4, v5, v6, v7, v8, v9, v10);
}

void sub_24B2CFA04(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 useCase];
  v5 = sub_24B2D5394();
  v7 = v6;
  if (v5 == sub_24B2D5394() && v7 == v8)
  {

    goto LABEL_12;
  }

  v10 = sub_24B2D6004();

  if (v10)
  {
LABEL_12:
    v23 = [a1 serialNumber];
    if (v23)
    {
      v24 = v23;
      v25 = sub_24B2D5394();
      v27 = v26;
    }

    else
    {
      v25 = 0;
      v27 = 0;
    }

    *a2 = 21;
    *(a2 + 8) = v25;
    *(a2 + 16) = v27;
    return;
  }

  if (qword_27EFC7808 != -1)
  {
    swift_once();
  }

  v11 = sub_24B2D3184();
  __swift_project_value_buffer(v11, qword_27EFCFA50);
  v12 = a1;
  v13 = sub_24B2D3164();
  v14 = sub_24B2D5914();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v28 = v16;
    *v15 = 136315138;
    v17 = [v12 useCase];
    v18 = sub_24B2D5394();
    v20 = v19;

    v21 = sub_24AFF321C(v18, v20, &v28);

    *(v15 + 4) = v21;
    _os_log_impl(&dword_24AFD2000, v13, v14, "Unrecognized useCase: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x24C23D530](v16, -1, -1);
    MEMORY[0x24C23D530](v15, -1, -1);
  }

  sub_24B2C6570();
  swift_allocError();
  *v22 = 0;
  swift_willThrow();
}

FindMyTheftAndLossReminderFactory __swiftcall FindMyTheftAndLossReminderFactory.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for FindMyTheftAndLossReminderFactory()
{
  result = qword_27EFCFA68;
  if (!qword_27EFCFA68)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EFCFA68);
  }

  return result;
}

uint64_t sub_24B2CFEFC()
{
  v0 = sub_24B2D3184();
  __swift_allocate_value_buffer(v0, qword_27EFCFA50);
  __swift_project_value_buffer(v0, qword_27EFCFA50);
  return sub_24B2D3174();
}

uint64_t sub_24B2CFF74(uint64_t result)
{
  if (*(v1 + 24) == (result & 1))
  {
    *(v1 + 24) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24B2CEEEC();
    sub_24B2D2574();
  }

  return result;
}

uint64_t sub_24B2D0054@<X0>(uint64_t *a1@<X8>)
{
  swift_getKeyPath();
  sub_24B2CEEEC();
  sub_24B2D2584();

  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[6];
  v6 = v1[7];
  v7 = v1[8];
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  return sub_24B258A64(v3, v4);
}

uint64_t sub_24B2D00E0()
{
  swift_getKeyPath();
  sub_24B2CEEEC();
  sub_24B2D2584();

  return *(v0 + 24);
}

uint64_t sub_24B2D015C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a2 + 16);
  *(a1 + 32) = *a2;
  *(a1 + 48) = v4;
  *(a1 + 64) = *(a2 + 32);
  sub_24B2D03B8(a2, v6);
  return sub_24B258AB4(v2, v3);
}

uint64_t sub_24B2D01DC()
{
  sub_24B258AB4(*(v0 + 32), *(v0 + 40));

  v1 = OBJC_IVAR____TtC12FindMyUICore29TheftAndLossReminderViewModel___observationRegistrar;
  v2 = sub_24B2D25C4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TheftAndLossReminderViewModel()
{
  result = qword_27EFCFA78;
  if (!qword_27EFCFA78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24B2D02F4()
{
  result = sub_24B2D25C4();
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

uint64_t sub_24B2D03B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCEF58);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_24B2D045C()
{
  type metadata accessor for ResourceBundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_27EFCFA88 = result;
  return result;
}

uint64_t sub_24B2D04B4()
{
  v0 = sub_24B2D3084();
  __swift_allocate_value_buffer(v0, qword_27EFE4708);
  __swift_project_value_buffer(v0, qword_27EFE4708);
  if (qword_27EFC7810 != -1)
  {
    swift_once();
  }

  v1 = qword_27EFCFA88;
  return sub_24B2D3074();
}

uint64_t sub_24B2D055C()
{
  v0 = sub_24B2D3084();
  __swift_allocate_value_buffer(v0, qword_27EFE4720);
  __swift_project_value_buffer(v0, qword_27EFE4720);
  if (qword_27EFC7810 != -1)
  {
    swift_once();
  }

  v1 = qword_27EFCFA88;
  return sub_24B2D3074();
}

uint64_t sub_24B2D060C()
{
  v0 = sub_24B2D3084();
  __swift_allocate_value_buffer(v0, qword_27EFE4738);
  __swift_project_value_buffer(v0, qword_27EFE4738);
  if (qword_27EFC7810 != -1)
  {
    swift_once();
  }

  v1 = qword_27EFCFA88;
  return sub_24B2D3074();
}

uint64_t sub_24B2D06B4()
{
  v0 = sub_24B2D3084();
  __swift_allocate_value_buffer(v0, qword_27EFE4750);
  __swift_project_value_buffer(v0, qword_27EFE4750);
  if (qword_27EFC7810 != -1)
  {
    swift_once();
  }

  v1 = qword_27EFCFA88;
  return sub_24B2D3074();
}

uint64_t sub_24B2D075C()
{
  v0 = sub_24B2D3084();
  __swift_allocate_value_buffer(v0, qword_27EFE4768);
  __swift_project_value_buffer(v0, qword_27EFE4768);
  if (qword_27EFC7810 != -1)
  {
    swift_once();
  }

  v1 = qword_27EFCFA88;
  return sub_24B2D3074();
}

uint64_t sub_24B2D0804()
{
  v0 = sub_24B2D3084();
  __swift_allocate_value_buffer(v0, qword_27EFE4780);
  __swift_project_value_buffer(v0, qword_27EFE4780);
  if (qword_27EFC7810 != -1)
  {
    swift_once();
  }

  v1 = qword_27EFCFA88;
  return sub_24B2D3074();
}

uint64_t sub_24B2D08AC()
{
  v0 = sub_24B2D3084();
  __swift_allocate_value_buffer(v0, qword_27EFE4798);
  __swift_project_value_buffer(v0, qword_27EFE4798);
  if (qword_27EFC7810 != -1)
  {
    swift_once();
  }

  v1 = qword_27EFCFA88;
  return sub_24B2D3074();
}

uint64_t sub_24B2D0954()
{
  v0 = sub_24B2D3084();
  __swift_allocate_value_buffer(v0, qword_27EFE47B0);
  __swift_project_value_buffer(v0, qword_27EFE47B0);
  if (qword_27EFC7810 != -1)
  {
    swift_once();
  }

  v1 = qword_27EFCFA88;
  return sub_24B2D3074();
}

uint64_t sub_24B2D09FC()
{
  v0 = sub_24B2D3084();
  __swift_allocate_value_buffer(v0, qword_27EFE47C8);
  __swift_project_value_buffer(v0, qword_27EFE47C8);
  if (qword_27EFC7810 != -1)
  {
    swift_once();
  }

  v1 = qword_27EFCFA88;
  return sub_24B2D3074();
}

uint64_t sub_24B2D0AA4()
{
  v0 = sub_24B2D3084();
  __swift_allocate_value_buffer(v0, qword_27EFE47E0);
  __swift_project_value_buffer(v0, qword_27EFE47E0);
  if (qword_27EFC7810 != -1)
  {
    swift_once();
  }

  v1 = qword_27EFCFA88;
  return sub_24B2D3074();
}

uint64_t sub_24B2D0B4C()
{
  v0 = sub_24B2D3084();
  __swift_allocate_value_buffer(v0, qword_27EFE47F8);
  __swift_project_value_buffer(v0, qword_27EFE47F8);
  if (qword_27EFC7810 != -1)
  {
    swift_once();
  }

  v1 = qword_27EFCFA88;
  return sub_24B2D3074();
}

uint64_t sub_24B2D0BF4()
{
  v0 = sub_24B2D3084();
  __swift_allocate_value_buffer(v0, qword_27EFE4810);
  __swift_project_value_buffer(v0, qword_27EFE4810);
  if (qword_27EFC7810 != -1)
  {
    swift_once();
  }

  v1 = qword_27EFCFA88;
  return sub_24B2D3074();
}

uint64_t sub_24B2D0C9C()
{
  v0 = sub_24B2D3084();
  __swift_allocate_value_buffer(v0, qword_27EFE4828);
  __swift_project_value_buffer(v0, qword_27EFE4828);
  if (qword_27EFC7810 != -1)
  {
    swift_once();
  }

  v1 = qword_27EFCFA88;
  return sub_24B2D3074();
}

uint64_t __isPlatformVersionAtLeast(uint64_t a1, int a2, int a3, int a4)
{
  if (qword_27EFE43F8 == -1)
  {
    if (qword_27EFE4400)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    __isPlatformVersionAtLeast_cold_1();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_27EFE4400)
    {
      return _availability_version_check();
    }
  }

  if (qword_27EFE43F0 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    __isPlatformVersionAtLeast_cold_2();
    a3 = v10;
    a4 = v9;
    v8 = _MergedGlobals < v11;
    if (_MergedGlobals > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_27EFE43E4 > a3)
      {
        return 1;
      }

      if (dword_27EFE43E4 >= a3)
      {
        return dword_27EFE43E8 >= a4;
      }
    }

    return 0;
  }

  v8 = _MergedGlobals < a2;
  if (_MergedGlobals <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t _initializeAvailabilityCheck(uint64_t result)
{
  v29 = *MEMORY[0x277D85DE8];
  v1 = qword_27EFE4400;
  if (qword_27EFE4400)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (MEMORY[0x28223BE68])
    {
      v1 = MEMORY[0x28223BE68];
      qword_27EFE4400 = MEMORY[0x28223BE68];
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = MEMORY[0x24C23CD60](v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &_MergedGlobals, &dword_27EFE43E4, &dword_27EFE43E8);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

MKCoordinateRegion MKCoordinateRegionForMapRect(MKMapRect rect)
{
  MEMORY[0x282123640](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.span.longitudeDelta = v4;
  result.span.latitudeDelta = v3;
  result.center.longitude = v2;
  result.center.latitude = v1;
  return result;
}

MKMapPoint MKMapPointForCoordinate(CLLocationCoordinate2D coordinate)
{
  MEMORY[0x282123658](coordinate, *&coordinate.longitude);
  result.y = v2;
  result.x = v1;
  return result;
}

MKMapRect MKMapRectUnion(MKMapRect rect1, MKMapRect rect2)
{
  MEMORY[0x2821236C0](rect1.origin, *&rect1.origin.y, rect1.size, *&rect1.size.height, rect2.origin, *&rect2.origin.y, rect2.size, *&rect2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}