uint64_t sub_24B22EE9C()
{
  v21 = v0;
  v1 = *(v0 + 152);
  v2 = sub_24B2D3164();
  v3 = sub_24B2D5904();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v20 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_24AFF321C(0x29286576696CLL, 0xE600000000000000, &v20);
    _os_log_impl(&dword_24AFD2000, v2, v3, "SettingsFindMyServiceProvider: %s - New Value)", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x24C23D530](v5, -1, -1);
    MEMORY[0x24C23D530](v4, -1, -1);
  }

  v6 = *(v0 + 232);
  sub_24B22E448(*(v0 + 176), v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE910);
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v6, 1, v7);
  v10 = *(v0 + 232);
  if (v9 == 1)
  {
    sub_24AFF8258(*(v0 + 232), &qword_27EFCE908);
    v11 = 1;
  }

  else
  {
    *(v0 + 313) = (v1 - 1) < 2;
    sub_24B2D5704();
    (*(v8 + 8))(v10, v7);
    v11 = 0;
  }

  v12 = *(v0 + 192);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE918);
  (*(*(v13 - 8) + 56))(v12, v11, 1, v13);
  v14 = *(v0 + 248);
  sub_24AFF8258(*(v0 + 192), &qword_27EFCE8F0);
  sub_24AFF8258(v14, &unk_27EFCE7B0);
  v15 = sub_24B185E74();
  v16 = swift_task_alloc();
  *(v0 + 288) = v16;
  *v16 = v0;
  v16[1] = sub_24B22E85C;
  v17 = *(v0 + 248);
  v18 = *(v0 + 256);

  return MEMORY[0x282200308](v17, v18, v15);
}

uint64_t sub_24B22F170()
{
  v27 = v0;
  v1 = *(v0 + 304);
  swift_willThrow();
  v2 = v1;
  v3 = sub_24B2D3164();
  v4 = sub_24B2D5914();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 304);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v26 = v8;
    *v6 = 136315394;
    *(v6 + 4) = sub_24AFF321C(0x29286576696CLL, 0xE600000000000000, &v26);
    *(v6 + 12) = 2112;
    v9 = v5;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v10;
    *v7 = v10;
    _os_log_impl(&dword_24AFD2000, v3, v4, "SettingsFindMyServiceProvider: %s - error: %@", v6, 0x16u);
    sub_24AFF8258(v7, &qword_27EFC7BB8);
    MEMORY[0x24C23D530](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x24C23D530](v8, -1, -1);
    MEMORY[0x24C23D530](v6, -1, -1);
  }

  v11 = *(v0 + 224);
  sub_24B22E448(*(v0 + 176), v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE910);
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);
  v15 = *(v0 + 304);
  v16 = *(v0 + 224);
  if (v14 == 1)
  {

    sub_24AFF8258(v16, &qword_27EFCE908);
    v17 = 1;
  }

  else
  {
    *(v0 + 312) = 0;
    sub_24B2D5704();

    (*(v13 + 8))(v16, v12);
    v17 = 0;
  }

  v18 = *(v0 + 184);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE918);
  (*(*(v19 - 8) + 56))(v18, v17, 1, v19);
  v20 = *(v0 + 248);
  sub_24AFF8258(*(v0 + 184), &qword_27EFCE8F0);
  sub_24AFF8258(v20, &unk_27EFCE7B0);
  v21 = sub_24B185E74();
  v22 = swift_task_alloc();
  *(v0 + 288) = v22;
  *v22 = v0;
  v22[1] = sub_24B22E85C;
  v23 = *(v0 + 248);
  v24 = *(v0 + 256);

  return MEMORY[0x282200308](v23, v24, v21);
}

uint64_t sub_24B22F4CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE908);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B22F53C(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_24B2D3184() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE908) - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + v7);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_24AFFD370;

  return sub_24B22E4B8(a1, v10, v11, v1 + v6, v12, v1 + v9);
}

void sub_24B22F6B4(uint64_t a1, uint64_t a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v4 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE8F8);
    sub_24B2D5624();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE8F8);
    sub_24B2D5634();
  }
}

uint64_t SettingsFindMyServiceProvider.Subscription.hashValue.getter()
{
  sub_24B2D60E4();
  MEMORY[0x24C23C8D0](0);
  return sub_24B2D6124();
}

uint64_t SettingsFindMyServiceProvider.ServiceState.hashValue.getter()
{
  sub_24B2D60E4();
  sub_24B2D6104();
  return sub_24B2D6124();
}

uint64_t sub_24B22F8A8()
{
  sub_24B2D60E4();
  sub_24B2D6104();
  return sub_24B2D6124();
}

uint64_t sub_24B22F91C()
{
  sub_24B2D60E4();
  sub_24B2D6104();
  return sub_24B2D6124();
}

unint64_t sub_24B22F964()
{
  result = qword_27EFCE920;
  if (!qword_27EFCE920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCE920);
  }

  return result;
}

unint64_t sub_24B22F9BC()
{
  result = qword_27EFCE928[0];
  if (!qword_27EFCE928[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EFCE928);
  }

  return result;
}

Swift::Void __swiftcall SettingsSubscriptionsManager.removeSubscriber(_:)(FindMyUICore::SettingsSubscriber a1)
{
  v3 = v1;
  object = a1.rawValue._object;
  countAndFlagsBits = a1.rawValue._countAndFlagsBits;
  v6 = sub_24B2D3184();
  v37 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v38 = AssociatedTypeWitness;
  v36 = AssociatedConformanceWitness;
  v11 = type metadata accessor for SettingsSubscriptionManagerStorage();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v35 - v14;
  v17 = *countAndFlagsBits;
  v16 = countAndFlagsBits[1];
  v18 = *(v3 + 24);
  v42 = v3;
  v43 = v2;
  v41 = object;
  v19 = object;
  v20 = v6;
  v21 = v37;
  v18(v19, v3, v13);
  (*(v21 + 16))(v8, v15, v20);
  (*(v12 + 8))(v15, v11);

  v40 = v8;
  v22 = v16;
  v23 = sub_24B2D3164();
  v24 = sub_24B2D5934();

  v25 = os_log_type_enabled(v23, v24);
  v39 = v17;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v44 = v27;
    v45 = v17;
    *v26 = 141558275;
    *(v26 + 4) = 1752392040;
    *(v26 + 12) = 2081;
    v46 = v16;

    v28 = sub_24B2D53C4();
    v30 = sub_24AFF321C(v28, v29, &v44);

    *(v26 + 14) = v30;
    _os_log_impl(&dword_24AFD2000, v23, v24, "SettingsProviderProtocol: removeSubscriber\n- SettingsSubscriber: %{private,mask.hash}s", v26, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v27);
    MEMORY[0x24C23D530](v27, -1, -1);
    MEMORY[0x24C23D530](v26, -1, -1);
  }

  (*(v21 + 8))(v40, v20);
  v31 = v38;
  v32 = sub_24B2D5584();
  if (sub_24B2D55C4())
  {
    v33 = sub_24B1A2638(v32, v31, v36);
  }

  else
  {
    v33 = MEMORY[0x277D84FA0];
  }

  v34 = v39;

  v45 = v34;
  v46 = v22;
  SettingsSubscriptionsManager.setSubscriptions(_:for:)(v33, &v45, v41, v42);
}

uint64_t SettingsSubscriptionsManager.setSubscriptions(_:for:)(uint64_t a1, uint64_t *a2, uint64_t a3, char *a4)
{
  v8 = sub_24B2D3184();
  v175 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v158 = &v148 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v154 = &v148 - v11;
  MEMORY[0x28223BE20](v12);
  v151 = &v148 - v13;
  MEMORY[0x28223BE20](v14);
  v150 = &v148 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v148 - v17;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v167 = AssociatedTypeWitness;
  v20 = type metadata accessor for SettingsSubscriptionManagerStorage();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v153 = &v148 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v152 = &v148 - v24;
  MEMORY[0x28223BE20](v25);
  v149 = &v148 - v26;
  MEMORY[0x28223BE20](v27);
  v148 = &v148 - v28;
  MEMORY[0x28223BE20](v29);
  v159 = &v148 - v30;
  v32 = MEMORY[0x28223BE20](v31);
  v34 = &v148 - v33;
  v35 = a2[1];
  v169 = *a2;
  v172 = *(a4 + 3);
  v173 = a4 + 24;
  v172(a3, a4, v32);
  v36 = *(v175 + 16);
  v168 = v8;
  v162 = v175 + 16;
  v161 = v36;
  v36(v18, v34, v8);
  v37 = *(v21 + 8);
  v177 = v20;
  v174 = v21 + 8;
  v37(v34, v20);
  v38 = v37;

  v39 = sub_24B2D3164();
  v40 = sub_24B2D5934();

  v41 = os_log_type_enabled(v39, v40);
  v170 = a4;
  v165 = a1;
  v171 = v35;
  v178 = a3;
  if (v41)
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v181 = v43;
    *v42 = 136315394;
    v179 = a1;
    sub_24B2D5854();
    swift_getWitnessTable();
    v44 = sub_24B2D5FA4();
    v46 = sub_24AFF321C(v44, v45, &v181);

    *(v42 + 4) = v46;
    *(v42 + 12) = 2080;
    v179 = v169;
    v180 = v35;

    v47 = sub_24B2D53C4();
    v49 = sub_24AFF321C(v47, v48, &v181);
    a1 = v165;

    *(v42 + 14) = v49;
    _os_log_impl(&dword_24AFD2000, v39, v40, "SettingsProviderProtocol: subscriptions\n- subscriptions: %s\n- subscriber: %s", v42, 0x16u);
    swift_arrayDestroy();
    a4 = v170;
    MEMORY[0x24C23D530](v43, -1, -1);
    v50 = v42;
    a3 = v178;
    MEMORY[0x24C23D530](v50, -1, -1);
  }

  v164 = *(v175 + 8);
  v164(v18, v168);
  v51 = v159;
  (v172)(a3, a4);
  v52 = v177;
  v160 = *&v51[*(v177 + 40)];

  v163 = v38;
  v38(v51, v52);
  if (sub_24B2D5834())
  {
    v181 = v169;
    v182 = v171;
    v183 = 0;
    v53 = *(a4 + 5);
    v155 = (a4 + 40) & 0xFFFFFFFFFFFFLL | 0x673B000000000000;
  }

  else
  {
    v181 = v169;
    v182 = v171;
    v183 = a1;
    v53 = *(a4 + 5);
    v155 = (a4 + 40) & 0xFFFFFFFFFFFFLL | 0x673B000000000000;
  }

  v156 = v53;
  v54 = v53(&v179, v178, a4);
  sub_24B2D5854();
  sub_24B215428();
  sub_24B2D5214();
  v55 = v177;
  sub_24B2D5234();
  sub_24B232F84(v55);
  v54(&v179, 0);
  v56 = v159;
  v57 = v178;
  (v172)();
  v58 = *&v56[*(v55 + 36)];
  v59 = sub_24B2D5854();
  v60 = sub_24B215428();
  v179 = v58;
  MEMORY[0x28223BE20](v60);
  v61 = v170;
  *(&v148 - 2) = v57;
  *(&v148 - 1) = v61;
  sub_24B2D5204();

  swift_getWitnessTable();
  swift_getWitnessTable();
  v157 = v59;
  v62 = v177;
  v63 = sub_24B2D54D4();

  v64 = v170;
  v65 = v163;
  v163(v56, v62);
  v179 = v63;
  sub_24B2D55E4();
  swift_getWitnessTable();
  v66 = sub_24B2D5864();

  v67 = v156(&v179, v178, v64);
  SettingsSubscriptionManagerStorage.uniqueSubscriptions.setter(v66, v62);
  v67(&v179, 0);

  v159 = sub_24B2D5804();

  v68 = sub_24B2D5804();
  v69 = sub_24B2D5834();
  v156 = v68;
  if (v69)
  {

    v70 = v149;
    (v172)(v178, v64);
    v71 = v151;
    v72 = v168;
    v161(v151, v70, v168);
    v65(v70, v62);
    v73 = v171;

    v74 = sub_24B2D3164();
    v75 = sub_24B2D5934();

    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v181 = v77;
      *v76 = 136315651;
      v179 = v68;
      swift_getWitnessTable();
      v78 = v75;
      v79 = sub_24B2D5FA4();
      v81 = sub_24AFF321C(v79, v80, &v181);

      *(v76 + 4) = v81;
      *(v76 + 12) = 2160;
      *(v76 + 14) = 1752392040;
      *(v76 + 22) = 2081;
      v179 = v169;
      v180 = v73;

      v82 = sub_24B2D53C4();
      v84 = sub_24AFF321C(v82, v83, &v181);

      *(v76 + 24) = v84;
      _os_log_impl(&dword_24AFD2000, v74, v78, "SettingsProviderProtocol: setSubscriptions-didRemoveUniqueSubscriptions\n- Skipping notification due to%s\n- SettingsSubscriber: %{private,mask.hash}s", v76, 0x20u);
      swift_arrayDestroy();
      v85 = v170;
      MEMORY[0x24C23D530](v77, -1, -1);
      MEMORY[0x24C23D530](v76, -1, -1);

      v164(v71, v72);
      v86 = v72;
      v87 = v158;
    }

    else
    {

      v164(v71, v72);
      v86 = v72;
      v87 = v158;
      v85 = v170;
    }

    v106 = v159;
  }

  else
  {
    v88 = v148;
    v89 = v178;
    (v172)(v178, v64);
    v90 = v150;
    v161(v150, v88, v168);
    v65(v88, v62);
    v91 = v171;

    v92 = sub_24B2D3164();
    v93 = sub_24B2D5934();

    if (os_log_type_enabled(v92, v93))
    {
      v94 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      v181 = v95;
      *v94 = 136315651;
      v179 = v68;
      swift_getWitnessTable();
      v96 = sub_24B2D5FA4();
      v98 = sub_24AFF321C(v96, v97, &v181);

      *(v94 + 4) = v98;
      *(v94 + 12) = 2160;
      *(v94 + 14) = 1752392040;
      *(v94 + 22) = 2081;
      v179 = v169;
      v180 = v91;

      v99 = sub_24B2D53C4();
      v101 = sub_24AFF321C(v99, v100, &v181);

      *(v94 + 24) = v101;
      _os_log_impl(&dword_24AFD2000, v92, v93, "SettingsProviderProtocol: setSubscriptions-didRemoveUniqueSubscriptions\n- SubscriptionsThatDoNotExistAnymore: %s\n- SettingsSubscriber: %{private,mask.hash}s", v94, 0x20u);
      swift_arrayDestroy();
      v102 = v95;
      v103 = v170;
      MEMORY[0x24C23D530](v102, -1, -1);
      v104 = v94;
      v105 = v178;
      MEMORY[0x24C23D530](v104, -1, -1);

      v86 = v168;
      v164(v90, v168);
    }

    else
    {
      v105 = v89;

      v86 = v168;
      v164(v90, v168);
      v103 = v170;
    }

    v106 = v159;
    v107 = sub_24B2D5834();

    v108 = v68;
    v85 = v103;
    (*(v103 + 56))(v108, v107 & 1, v105, v103);
    v87 = v158;
  }

  if (sub_24B2D5834())
  {

    v109 = v153;
    v110 = v176;
    v111 = v85;
    (v172)(v178, v85);
    v161(v87, v109, v86);
    v163(v109, v177);
    v112 = v171;

    v113 = v156;

    v114 = sub_24B2D3164();
    v115 = sub_24B2D5934();

    if (os_log_type_enabled(v114, v115))
    {
      v116 = swift_slowAlloc();
      v117 = swift_slowAlloc();
      v181 = v117;
      *v116 = 136315651;
      v179 = v113;
      swift_getWitnessTable();
      v118 = v111;
      v119 = v176;
      v120 = sub_24B2D5FA4();
      v122 = v121;

      v123 = sub_24AFF321C(v120, v122, &v181);

      *(v116 + 4) = v123;
      *(v116 + 12) = 2160;
      *(v116 + 14) = 1752392040;
      *(v116 + 22) = 2081;
      v124 = v169;
      v179 = v169;
      v180 = v112;

      v125 = sub_24B2D53C4();
      v127 = sub_24AFF321C(v125, v126, &v181);

      *(v116 + 24) = v127;
      _os_log_impl(&dword_24AFD2000, v114, v115, "SettingsProviderProtocol: setSubscriptions-didAddNewUniqueSubscriptions\n- Skipping notification due to%s\n- SettingsSubscriber: %{private,mask.hash}s", v116, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C23D530](v117, -1, -1);
      MEMORY[0x24C23D530](v116, -1, -1);

      v164(v158, v168);
      v128 = v124;
      v129 = v165;
      v130 = v178;
    }

    else
    {

      v164(v87, v86);
      v129 = v165;
      v128 = v169;
      v130 = v178;
      v118 = v111;
      v119 = v110;
    }
  }

  else
  {

    v131 = v152;
    v119 = v176;
    v130 = v178;
    v118 = v85;
    (v172)(v178, v85);
    v132 = v154;
    v161(v154, v131, v86);
    v163(v131, v177);
    v112 = v171;

    v133 = sub_24B2D3164();
    v134 = sub_24B2D5934();

    if (os_log_type_enabled(v133, v134))
    {
      v135 = swift_slowAlloc();
      v136 = swift_slowAlloc();
      v181 = v136;
      *v135 = 136315394;
      v179 = v106;
      swift_getWitnessTable();
      v137 = sub_24B2D5FA4();
      v139 = sub_24AFF321C(v137, v138, &v181);

      *(v135 + 4) = v139;
      *(v135 + 12) = 2080;
      v179 = v169;
      v180 = v171;

      v140 = sub_24B2D53C4();
      v142 = sub_24AFF321C(v140, v141, &v181);

      *(v135 + 14) = v142;
      _os_log_impl(&dword_24AFD2000, v133, v134, "SettingsProviderProtocol: setSubscriptions-didAddNewUniqueSubscriptions\n- subscriptionsThatDidNotExistBefore: %s\n- subscriber: %s", v135, 0x16u);
      swift_arrayDestroy();
      v112 = v171;
      MEMORY[0x24C23D530](v136, -1, -1);
      v143 = v135;
      v130 = v178;
      MEMORY[0x24C23D530](v143, -1, -1);

      v144 = v154;
      v145 = v168;
    }

    else
    {

      v144 = v132;
      v145 = v86;
    }

    v164(v144, v145);
    v146 = sub_24B2D5834();

    (*(v118 + 48))(v106, v146 & 1, v130, v118);

    v129 = v165;
    v128 = v169;
  }

  return sub_24B2320B0(v119, v129, v128, v112, v130, v118);
}

uint64_t SettingsSubscriptionsManager.addSubscriptions(_:for:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v44 = a1;
  v8 = sub_24B2D3184();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v54 = AssociatedTypeWitness;
  v13 = type metadata accessor for SettingsSubscriptionManagerStorage();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v48 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v43 - v18;
  v20 = *a2;
  v21 = a2[1];
  v55 = v20;
  v56 = a4;
  v22 = *(a4 + 24);
  v57 = v4;
  v52 = a3;
  v45 = v22;
  v46 = a4 + 24;
  (v22)(a3, a4, v17);
  v49 = v9;
  v50 = v8;
  v23 = v9;
  v24 = v44;
  (*(v23 + 16))(v11, v19, v8);
  v25 = *(v14 + 8);
  v51 = v14 + 8;
  v47 = v25;
  v25(v19, v13);
  v26 = v11;

  v27 = sub_24B2D3164();
  v28 = sub_24B2D5934();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v43 = v13;
    v30 = v29;
    v31 = swift_slowAlloc();
    v60 = v31;
    *v30 = 136315394;
    v58 = v24;
    sub_24B2D5854();
    swift_getWitnessTable();
    v32 = sub_24B2D5FA4();
    v34 = sub_24AFF321C(v32, v33, &v60);

    *(v30 + 4) = v34;
    *(v30 + 12) = 2080;
    v35 = v55;
    v58 = v55;
    v59 = v21;

    v36 = sub_24B2D53C4();
    v38 = sub_24AFF321C(v36, v37, &v60);

    *(v30 + 14) = v38;
    _os_log_impl(&dword_24AFD2000, v27, v28, "SettingsProviderProtocol: addSubscriptions\n- requestedSubscriptions: %s\n- subscriber: %s", v30, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C23D530](v31, -1, -1);
    v39 = v30;
    v13 = v43;
    MEMORY[0x24C23D530](v39, -1, -1);

    (*(v49 + 8))(v26, v50);
  }

  else
  {

    (*(v49 + 8))(v11, v50);
    v35 = v55;
  }

  v40 = v48;
  v41 = v52;
  v45(v52, v56);
  v58 = v35;
  v59 = v21;
  sub_24B2D5854();
  sub_24B215428();
  sub_24B2D5224();

  if (v60)
  {
    v47(v40, v13);
    v58 = v24;

    swift_getWitnessTable();
    v24 = sub_24B2D5824();
  }

  else
  {
    v47(v40, v13);
  }

  v58 = v55;
  v59 = v21;
  SettingsSubscriptionsManager.setSubscriptions(_:for:)(v24, &v58, v41, v56);
}

uint64_t SettingsSubscriptionsManager.removeSubscriptions(_:for:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v96 = a1;
  v9 = sub_24B2D3184();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v81 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v77 - v13;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v84 = AssociatedTypeWitness;
  v16 = type metadata accessor for SettingsSubscriptionManagerStorage();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v80 = &v77 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v88 = &v77 - v20;
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v77 - v23;
  v25 = *a2;
  v26 = a2[1];
  v91 = v5;
  v92 = v25;
  v27 = *(a4 + 24);
  v28 = a4 + 24;
  v29 = a4;
  v30 = v26;
  v31 = a3;
  v32 = v27;
  v94 = v31;
  v95 = v29;
  v27(v22);
  v33 = *(v10 + 16);
  v93 = v9;
  v79 = v10 + 16;
  v78 = v33;
  v33(v14, v24, v9);
  v34 = *(v17 + 8);
  v89 = v17 + 8;
  v90 = v16;
  v35 = v16;
  v36 = v14;
  v85 = v34;
  v34(v24, v35);
  v37 = v96;

  v38 = v37;
  v39 = sub_24B2D3164();
  v40 = sub_24B2D5934();

  v41 = os_log_type_enabled(v39, v40);
  v82 = v10;
  v86 = v32;
  v87 = v28;
  if (v41)
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v99[0] = v43;
    *v42 = 136315651;
    v97 = v38;
    sub_24B2D5854();
    swift_getWitnessTable();
    v44 = sub_24B2D5FA4();
    v46 = sub_24AFF321C(v44, v45, v99);

    *(v42 + 4) = v46;
    *(v42 + 12) = 2160;
    *(v42 + 14) = 1752392040;
    *(v42 + 22) = 2081;
    v97 = v92;
    v98 = v30;

    v47 = sub_24B2D53C4();
    v49 = sub_24AFF321C(v47, v48, v99);

    *(v42 + 24) = v49;
    _os_log_impl(&dword_24AFD2000, v39, v40, "SettingsProviderProtocol: removeSubscriptions\n- subscriptionsToRemove: %s\n- subscriber: %{private,mask.hash}s", v42, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C23D530](v43, -1, -1);
    MEMORY[0x24C23D530](v42, -1, -1);

    v77 = *(v82 + 8);
    v77(v36, v93);
  }

  else
  {

    v77 = *(v10 + 8);
    v77(v14, v93);
  }

  v50 = v88;
  v51 = v86;
  (v86)(v94, v95);
  v52 = v90;
  v53 = v92;
  v97 = v92;
  v98 = v30;
  v54 = sub_24B2D5854();
  v84 = v30;
  v55 = v54;
  sub_24B215428();
  sub_24B2D5224();

  if (v99[0])
  {
    v85(v50, v52);
    v56 = sub_24B2D5804();
    v97 = v53;
    v98 = v84;
    SettingsSubscriptionsManager.setSubscriptions(_:for:)(v56, &v97, v94, v95);
  }

  else
  {
    AssociatedConformanceWitness = v55;
    v58 = v85;
    v85(v50, v52);
    v59 = v80;
    (v51)(v94, v95);
    v60 = v81;
    v78(v81, v59, v93);
    v58(v59, v52);
    v61 = v84;
    v62 = v96;

    v63 = sub_24B2D3164();
    v64 = sub_24B2D5934();

    if (os_log_type_enabled(v63, v64))
    {
      v65 = v53;
      v66 = swift_slowAlloc();
      v67 = v60;
      v68 = v62;
      v69 = swift_slowAlloc();
      v99[0] = v69;
      *v66 = 136315650;
      *(v66 + 4) = sub_24AFF321C(0xD00000000000001BLL, 0x800000024B2DD1B0, v99);
      *(v66 + 12) = 2080;
      v97 = v68;
      swift_getWitnessTable();
      v70 = sub_24B2D5FA4();
      v72 = sub_24AFF321C(v70, v71, v99);

      *(v66 + 14) = v72;
      *(v66 + 22) = 2080;
      v97 = v65;
      v98 = v61;

      v73 = sub_24B2D53C4();
      v75 = sub_24AFF321C(v73, v74, v99);

      *(v66 + 24) = v75;
      _os_log_impl(&dword_24AFD2000, v63, v64, "SettingsProviderProtocol: %s\n- Trying to remove a non existing subscriber %s\n- subscriber: %s", v66, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C23D530](v69, -1, -1);
      MEMORY[0x24C23D530](v66, -1, -1);

      v76 = v67;
    }

    else
    {

      v76 = v60;
    }

    return (v77)(v76, v93);
  }
}

uint64_t sub_24B231F14(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, void *, uint64_t, uint64_t))
{
  v8 = *a2;
  v9 = a2[1];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_24B1A25C4(AssociatedTypeWitness, AssociatedTypeWitness);
  v11 = *(AssociatedTypeWitness - 8);
  swift_allocObject();
  v12 = sub_24B2D5554();
  (*(v11 + 16))(v13, a1, AssociatedTypeWitness);
  v14 = sub_24B196F48(v12);
  if (sub_24B2D55C4())
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v16 = sub_24B1A2638(v14, AssociatedTypeWitness, AssociatedConformanceWitness);
  }

  else
  {
    v16 = MEMORY[0x277D84FA0];
  }

  v19[0] = v8;
  v19[1] = v9;
  a5(v16, v19, a3, a4);
}

uint64_t sub_24B2320B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v11 = type metadata accessor for SettingsSubscriptionManagerStorage();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v19 - v14;
  (*(a6 + 24))(a5, a6, v13);
  v16 = *&v15[*(v11 + 48)];
  v17 = *(v12 + 8);

  v17(v15, v11);
  v19[0] = a3;
  v19[1] = a4;
  v16(a2, v19);
}

uint64_t sub_24B232234@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a2 = v3;
  return result;
}

Swift::Void __swiftcall SettingsSubscriptionsManager.resumeSubscriptions()()
{
  v2 = v1;
  v3 = v0;
  v4 = sub_24B2D3184();
  v24 = *(v4 - 8);
  v25 = v4;
  MEMORY[0x28223BE20](v4);
  v27 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v6 = type metadata accessor for SettingsSubscriptionManagerStorage();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v24 - v12;
  v14 = *(v2 + 24);
  v14(v3, v2, v11);
  v15 = v13[*(v6 + 44)];
  v26 = *(v7 + 8);
  v26(v13, v6);
  if (v15 == 1)
  {
    v16 = (*(v2 + 40))(v28, v3, v2);
    SettingsSubscriptionManagerStorage.isPaused.setter(0, v6);
    v16(v28, 0);
    (v14)(v3, v2);
    v17 = *&v13[*(v6 + 40)];

    v26(v13, v6);
    (*(v2 + 48))(v17, 1, v3, v2);
  }

  else
  {
    (v14)(v3, v2);
    v19 = v24;
    v18 = v25;
    (*(v24 + 16))(v27, v9, v25);
    v26(v9, v6);
    v20 = sub_24B2D3164();
    v21 = sub_24B2D5934();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v28[0] = v23;
      *v22 = 136315138;
      *(v22 + 4) = sub_24AFF321C(0xD000000000000015, 0x800000024B2D7A10, v28);
      _os_log_impl(&dword_24AFD2000, v20, v21, "SettingsProviderProtocol: %s - Skipping since it's not paused", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x24C23D530](v23, -1, -1);
      MEMORY[0x24C23D530](v22, -1, -1);
    }

    (*(v19 + 8))(v27, v18);
  }
}

Swift::Void __swiftcall SettingsSubscriptionsManager.pauseSubscriptions()()
{
  v2 = v1;
  v3 = v0;
  v4 = sub_24B2D3184();
  v24 = *(v4 - 8);
  v25 = v4;
  MEMORY[0x28223BE20](v4);
  v27 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v6 = type metadata accessor for SettingsSubscriptionManagerStorage();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v24 - v12;
  v14 = *(v2 + 24);
  v14(v3, v2, v11);
  v15 = v13[*(v6 + 44)];
  v26 = *(v7 + 8);
  v26(v13, v6);
  if (v15)
  {
    (v14)(v3, v2);
    v17 = v24;
    v16 = v25;
    (*(v24 + 16))(v27, v9, v25);
    v26(v9, v6);
    v18 = sub_24B2D3164();
    v19 = sub_24B2D5934();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v28[0] = v21;
      *v20 = 136315138;
      *(v20 + 4) = sub_24AFF321C(0xD000000000000014, 0x800000024B2D79F0, v28);
      _os_log_impl(&dword_24AFD2000, v18, v19, "SettingsProviderProtocol: %s - Skipping since it's already paused", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x24C23D530](v21, -1, -1);
      MEMORY[0x24C23D530](v20, -1, -1);
    }

    (*(v17 + 8))(v27, v16);
  }

  else
  {
    v22 = (*(v2 + 40))(v28, v3, v2);
    SettingsSubscriptionManagerStorage.isPaused.setter(1, v6);
    v22(v28, 0);
    (v14)(v3, v2);
    v23 = *&v13[*(v6 + 40)];

    v26(v13, v6);
    (*(v2 + 56))(v23, 1, v3, v2);
  }
}

uint64_t SettingsSubscriptionManagerStorage.init(identifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v29[1] = a1;
  v29[2] = a2;
  v30 = sub_24B2D3184();
  v8 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29[3] = v9;
  MEMORY[0x28223BE20](v11);
  v13 = v29 - v12;
  v14 = type metadata accessor for SettingsSubscriptionManagerStorage();
  v15 = v14[9];
  v31 = a4;
  v16 = sub_24B2D5854();
  swift_getTupleTypeMetadata2();
  v17 = sub_24B2D5584();
  v18 = sub_24B215428();
  v19 = sub_24B1A4278(v17, &type metadata for SettingsSubscriber, v16, v18);

  *(a5 + v15) = v19;
  v20 = sub_24B2D5584();
  if (sub_24B2D55C4())
  {
    v21 = sub_24B1A2638(v20, a3, v31);
  }

  else
  {
    v21 = MEMORY[0x277D84FA0];
  }

  *(a5 + v14[10]) = v21;
  *(a5 + v14[11]) = 0;
  sub_24B2D3174();
  v22 = v30;
  (*(v8 + 16))(a5, v13, v30);
  v23 = *(v8 + 32);
  v23(v10, v13, v22);
  v24 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v25 = swift_allocObject();
  v26 = v31;
  *(v25 + 16) = a3;
  *(v25 + 24) = v26;
  result = (v23)(v25 + v24, v10, v22);
  v28 = (a5 + v14[12]);
  *v28 = sub_24B233998;
  v28[1] = v25;
  return result;
}

uint64_t *(*SettingsSubscriptionManagerStorage.subscriptionsBySubscriber.modify(void *a1, uint64_t a2))(uint64_t *result, char a2)
{
  *a1 = a2;
  a1[1] = v2;
  return sub_24B232E34;
}

uint64_t *sub_24B232E34(uint64_t *result, char a2)
{
  if ((a2 & 1) == 0)
  {
    return sub_24B232F84(*result);
  }

  return result;
}

uint64_t SettingsSubscriptionManagerStorage.uniqueSubscriptions.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 40);

  *(v2 + v5) = a1;

  return sub_24B233214(a2);
}

uint64_t SettingsSubscriptionManagerStorage.logger.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24B2D3184();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t SettingsSubscriptionManagerStorage.subscriptionsBySubscriber.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 36);

  *(v2 + v5) = a1;

  return sub_24B232F84(a2);
}

uint64_t sub_24B232F84(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24B2D3184();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v2 + *(a1 + 36));
  (*(v5 + 16))(v7, v2, v4);

  v9 = sub_24B2D3164();
  v10 = sub_24B2D5904();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = v8;
    v18 = v12;
    *v11 = 136315138;
    sub_24B2D5854();
    sub_24B215428();
    sub_24B2D5214();
    swift_getWitnessTable();
    v13 = sub_24B232AB0();
    v15 = sub_24AFF321C(v13, v14, &v18);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_24AFD2000, v9, v10, "SettingsSubscriptionManagerStorage: subscriptionsBySubscriber - %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x24C23D530](v12, -1, -1);
    MEMORY[0x24C23D530](v11, -1, -1);
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_24B2331BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v6 = type metadata accessor for SettingsSubscriptionManagerStorage();

  return a5(v7, v6);
}

uint64_t sub_24B233214(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24B2D3184();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v2 + *(a1 + 40));
  (*(v5 + 16))(v7, v2, v4);

  v9 = sub_24B2D3164();
  v10 = sub_24B2D5904();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = v8;
    v18 = v12;
    *v11 = 136315138;
    sub_24B2D5854();
    swift_getWitnessTable();
    v13 = sub_24B232AB0();
    v15 = sub_24AFF321C(v13, v14, &v18);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_24AFD2000, v9, v10, "SettingsSubscriptionManagerStorage: uniqueSubscriptions - %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x24C23D530](v12, -1, -1);
    MEMORY[0x24C23D530](v11, -1, -1);
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t *(*SettingsSubscriptionManagerStorage.uniqueSubscriptions.modify(void *a1, uint64_t a2))(uint64_t *result, char a2)
{
  *a1 = a2;
  a1[1] = v2;
  return sub_24B233448;
}

uint64_t *sub_24B233448(uint64_t *result, char a2)
{
  if ((a2 & 1) == 0)
  {
    return sub_24B233214(*result);
  }

  return result;
}

uint64_t sub_24B233480(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24B2D3184();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v2 + *(a1 + 44));
  (*(v5 + 16))(v7, v2, v4);
  v9 = sub_24B2D3164();
  v10 = sub_24B2D5904();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18 = v12;
    *v11 = 136315138;
    if (v8)
    {
      v13 = 1702195828;
    }

    else
    {
      v13 = 0x65736C6166;
    }

    if (v8)
    {
      v14 = 0xE400000000000000;
    }

    else
    {
      v14 = 0xE500000000000000;
    }

    v15 = sub_24AFF321C(v13, v14, &v18);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_24AFD2000, v9, v10, "SettingsSubscriptionManagerStorage: isPaused - %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x24C23D530](v12, -1, -1);
    MEMORY[0x24C23D530](v11, -1, -1);
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t *(*SettingsSubscriptionManagerStorage.isPaused.modify(void *a1, uint64_t a2))(uint64_t *result, char a2)
{
  *a1 = a2;
  a1[1] = v2;
  return sub_24B233690;
}

uint64_t *sub_24B233690(uint64_t *result, char a2)
{
  if ((a2 & 1) == 0)
  {
    return sub_24B233480(*result);
  }

  return result;
}

uint64_t sub_24B2336BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = *(a2 + a3 - 16);
  v7 = *(a1 + *(type metadata accessor for SettingsSubscriptionManagerStorage() + 48));
  v5 = swift_allocObject();
  *(v5 + 16) = v8;
  *(v5 + 32) = v7;
  *a4 = sub_24B233B7C;
  a4[1] = v5;
}

uint64_t sub_24B233754(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 + a4 - 16);
  v9 = *a1;
  v5 = swift_allocObject();
  *(v5 + 16) = v8;
  *(v5 + 32) = v9;
  v6 = (a2 + *(type metadata accessor for SettingsSubscriptionManagerStorage() + 48));

  *v6 = sub_24B233B44;
  v6[1] = v5;
  return result;
}

uint64_t SettingsSubscriptionManagerStorage.setSubscriptionsCallback.getter(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 48));

  return v2;
}

uint64_t SettingsSubscriptionManagerStorage.setSubscriptionsCallback.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 + *(a3 + 48));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

void sub_24B233894()
{
  oslog = sub_24B2D3164();
  v0 = sub_24B2D5904();
  if (os_log_type_enabled(oslog, v0))
  {
    v1 = swift_slowAlloc();
    v2 = swift_slowAlloc();
    v4 = v2;
    *v1 = 136315138;
    *(v1 + 4) = sub_24AFF321C(0xD000000000000011, 0x800000024B2DD1D0, &v4);
    _os_log_impl(&dword_24AFD2000, oslog, v0, "SettingsSubscriptionManagerStorage: empty callback - %s", v1, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v2);
    MEMORY[0x24C23D530](v2, -1, -1);
    MEMORY[0x24C23D530](v1, -1, -1);
  }
}

void sub_24B233998()
{
  sub_24B2D3184();

  sub_24B233894();
}

unint64_t sub_24B233A2C()
{
  result = sub_24B2D3184();
  if (v1 <= 0x3F)
  {
    v2 = sub_24B2D5854();
    v4 = v3;
    sub_24B215428();
    result = sub_24B2D5214();
    if (v5 <= 0x3F)
    {
      if (v4 > 0x3F)
      {
        return v2;
      }

      else
      {
        result = sub_24B07A804();
        if (v6 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_24B233B44(uint64_t a1)
{
  v2 = *(v1 + 32);
  v4 = a1;
  return v2(&v4);
}

FindMyUICore::SettingsSubscriber __swiftcall SettingsSubscriber.init()()
{
  v1 = v0;
  v2 = sub_24B2D2504();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B2D24F4();
  v6 = sub_24B2D24B4();
  v8 = v7;
  v9 = (*(v3 + 8))(v5, v2);
  *v1 = v6;
  v1[1] = v8;
  result.rawValue._object = v10;
  result.rawValue._countAndFlagsBits = v9;
  return result;
}

uint64_t SettingsSubscriber.debugDescription.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t static SettingsSubscriber.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_24B2D6004();
  }
}

uint64_t SettingsSubscriber.hashValue.getter()
{
  sub_24B2D60E4();
  sub_24B2D5404();
  return sub_24B2D6124();
}

unint64_t sub_24B233D44()
{
  result = qword_27EFCE9B0;
  if (!qword_27EFCE9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCE9B0);
  }

  return result;
}

uint64_t SettingsPeopleRelationshipsProvider.__allocating_init(dependencies:)(__int128 *a1)
{
  v2 = swift_allocObject();
  SettingsPeopleRelationshipsProvider.init(dependencies:)(a1);
  return v2;
}

uint64_t SettingsPeopleRelationshipsProvider.storage.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_24B23CE24(&qword_27EFCE608, type metadata accessor for SettingsPeopleRelationshipsProvider);
  sub_24B2D2584();

  v3 = OBJC_IVAR____TtC12FindMyUICore35SettingsPeopleRelationshipsProvider__storage;
  swift_beginAccess();
  return sub_24B008890(v5 + v3, a1, &qword_27EFCE6D8);
}

uint64_t sub_24B233ED8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24B23CE24(&qword_27EFCE608, type metadata accessor for SettingsPeopleRelationshipsProvider);
  sub_24B2D2584();

  v4 = OBJC_IVAR____TtC12FindMyUICore35SettingsPeopleRelationshipsProvider__storage;
  swift_beginAccess();
  return sub_24B008890(v3 + v4, a2, &qword_27EFCE6D8);
}

uint64_t sub_24B233FB0(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE6D8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9[-v5];
  sub_24B008890(a1, &v9[-v5], &qword_27EFCE6D8);
  v7 = *a2;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  v12 = v7;
  sub_24B23CE24(&qword_27EFCE608, type metadata accessor for SettingsPeopleRelationshipsProvider);
  sub_24B2D2574();

  return sub_24AFF8258(v6, &qword_27EFCE6D8);
}

uint64_t SettingsPeopleRelationshipsProvider.storage.setter(uint64_t a1)
{
  swift_getKeyPath();
  sub_24B23CE24(&qword_27EFCE608, type metadata accessor for SettingsPeopleRelationshipsProvider);
  sub_24B2D2574();

  return sub_24AFF8258(a1, &qword_27EFCE6D8);
}

uint64_t sub_24B2341E0(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC12FindMyUICore35SettingsPeopleRelationshipsProvider__storage;
  swift_beginAccess();
  sub_24B23D338(a2, a1 + v4);
  return swift_endAccess();
}

void (*SettingsPeopleRelationshipsProvider.storage.modify(uint64_t *a1))(void **a1)
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
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC12FindMyUICore35SettingsPeopleRelationshipsProvider___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_24B23CE24(&qword_27EFCE608, type metadata accessor for SettingsPeopleRelationshipsProvider);
  sub_24B2D2584();

  *v4 = v1;
  swift_getKeyPath();
  sub_24B2D25A4();

  swift_beginAccess();
  return sub_24B234394;
}

uint64_t SettingsPeopleRelationshipsProvider.didAddNewFollowingWithIdentifierCallback.getter()
{
  swift_getKeyPath();
  sub_24B23CE24(&qword_27EFCE608, type metadata accessor for SettingsPeopleRelationshipsProvider);
  sub_24B2D2584();

  v1 = (v0 + OBJC_IVAR____TtC12FindMyUICore35SettingsPeopleRelationshipsProvider__didAddNewFollowingWithIdentifierCallback);
  swift_beginAccess();
  v2 = *v1;
  sub_24AFD5880(*v1);
  return v2;
}

uint64_t sub_24B234474@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24B23CE24(&qword_27EFCE608, type metadata accessor for SettingsPeopleRelationshipsProvider);
  sub_24B2D2584();

  v4 = (v3 + OBJC_IVAR____TtC12FindMyUICore35SettingsPeopleRelationshipsProvider__didAddNewFollowingWithIdentifierCallback);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  if (v5)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    *(v7 + 24) = v6;
    v8 = sub_24B23D310;
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  *a2 = v8;
  a2[1] = v7;
  return sub_24AFD5880(v5);
}

uint64_t sub_24B234580(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_24B23D2E8;
  }

  else
  {
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_24AFD5880(v1);
  sub_24B23CE24(&qword_27EFCE608, type metadata accessor for SettingsPeopleRelationshipsProvider);
  sub_24B2D2574();
  sub_24AFD5890(v4);
}

uint64_t SettingsPeopleRelationshipsProvider.didAddNewFollowingWithIdentifierCallback.setter(uint64_t a1)
{
  swift_getKeyPath();
  sub_24B23CE24(&qword_27EFCE608, type metadata accessor for SettingsPeopleRelationshipsProvider);
  sub_24B2D2574();
  sub_24AFD5890(a1);
}

uint64_t sub_24B2347C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (a1 + OBJC_IVAR____TtC12FindMyUICore35SettingsPeopleRelationshipsProvider__didAddNewFollowingWithIdentifierCallback);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a2;
  v5[1] = a3;
  sub_24AFD5880(a2);
  return sub_24AFD5890(v6);
}

void (*SettingsPeopleRelationshipsProvider.didAddNewFollowingWithIdentifierCallback.modify(uint64_t *a1))(void **a1)
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
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC12FindMyUICore35SettingsPeopleRelationshipsProvider___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_24B23CE24(&qword_27EFCE608, type metadata accessor for SettingsPeopleRelationshipsProvider);
  sub_24B2D2584();

  *v4 = v1;
  swift_getKeyPath();
  sub_24B2D25A4();

  swift_beginAccess();
  return sub_24B23498C;
}

void sub_24B234998(void **a1)
{
  v1 = *a1;
  swift_endAccess();
  *v1 = v1[3];
  swift_getKeyPath();
  sub_24B2D2594();

  free(v1);
}

uint64_t sub_24B234A30()
{
  swift_getKeyPath();
  sub_24B23CE24(&qword_27EFCE608, type metadata accessor for SettingsPeopleRelationshipsProvider);
  sub_24B2D2584();

  swift_beginAccess();
}

uint64_t sub_24B234AE8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12FindMyUICore35SettingsPeopleRelationshipsProvider__loadingStateResetTaskBySubscription;
  swift_beginAccess();

  v5 = sub_24B1E47C8(v4, a1);

  if (v5)
  {
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24B23CE24(&qword_27EFCE608, type metadata accessor for SettingsPeopleRelationshipsProvider);
    sub_24B2D2574();
  }
}

uint64_t sub_24B234C38(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC12FindMyUICore35SettingsPeopleRelationshipsProvider__loadingStateResetTaskBySubscription;
  swift_beginAccess();
  *(a1 + v4) = a2;
}

uint64_t SettingsPeopleRelationshipsProvider.isLoading.getter()
{
  swift_getKeyPath();
  sub_24B23CE24(&qword_27EFCE608, type metadata accessor for SettingsPeopleRelationshipsProvider);
  sub_24B2D2584();

  return *(v0 + OBJC_IVAR____TtC12FindMyUICore35SettingsPeopleRelationshipsProvider__isLoading);
}

uint64_t sub_24B234D50@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24B23CE24(&qword_27EFCE608, type metadata accessor for SettingsPeopleRelationshipsProvider);
  sub_24B2D2584();

  *a2 = *(v3 + OBJC_IVAR____TtC12FindMyUICore35SettingsPeopleRelationshipsProvider__isLoading);
  return result;
}

uint64_t sub_24B234E28(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC12FindMyUICore35SettingsPeopleRelationshipsProvider__isLoading) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC12FindMyUICore35SettingsPeopleRelationshipsProvider__isLoading) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24B23CE24(&qword_27EFCE608, type metadata accessor for SettingsPeopleRelationshipsProvider);
    sub_24B2D2574();
  }

  return result;
}

uint64_t sub_24B234F40()
{
  v1 = v0;
  v2 = sub_24B2D3184();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v6 = OBJC_IVAR____TtC12FindMyUICore35SettingsPeopleRelationshipsProvider___observationRegistrar;
  v28 = v0;
  v7 = sub_24B23CE24(&qword_27EFCE608, type metadata accessor for SettingsPeopleRelationshipsProvider);
  sub_24B2D2584();

  v8 = OBJC_IVAR____TtC12FindMyUICore35SettingsPeopleRelationshipsProvider__storage;
  swift_beginAccess();
  (*(v3 + 16))(v5, v1 + v8, v2);

  v9 = sub_24B2D3164();
  v10 = sub_24B2D5904();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v25 = v7;
    v12 = v11;
    v23 = swift_slowAlloc();
    v27 = v23;
    *v12 = 136315138;
    swift_getKeyPath();
    v26 = v1;
    sub_24B2D2584();

    swift_beginAccess();
    type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier(0);
    type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState(0);
    v24 = v6;
    sub_24B23CE24(&qword_27EFCEA18, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
    v22 = v2;

    v13 = sub_24B2D51F4();
    v15 = v14;

    v16 = sub_24AFF321C(v13, v15, &v27);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_24AFD2000, v9, v10, "SettingsPeopleRelationshipsProvider: data - %s", v12, 0xCu);
    v17 = v23;
    __swift_destroy_boxed_opaque_existential_0(v23);
    MEMORY[0x24C23D530](v17, -1, -1);
    MEMORY[0x24C23D530](v12, -1, -1);

    (*(v3 + 8))(v5, v22);
  }

  else
  {

    (*(v3 + 8))(v5, v2);
  }

  swift_getKeyPath();
  v27 = v1;
  sub_24B2D2584();

  v19 = *(v1 + OBJC_IVAR____TtC12FindMyUICore35SettingsPeopleRelationshipsProvider__didChangeDataStorageCallback);
  if (v19)
  {

    v19(v20);
    return sub_24AFD5890(v19);
  }

  return result;
}

uint64_t sub_24B2352F0()
{
  swift_getKeyPath();
  sub_24B23CE24(&qword_27EFCE608, type metadata accessor for SettingsPeopleRelationshipsProvider);
  sub_24B2D2584();

  v1 = *(v0 + OBJC_IVAR____TtC12FindMyUICore35SettingsPeopleRelationshipsProvider__didChangeDataStorageCallback);
  sub_24AFD5880(v1);
  return v1;
}

uint64_t sub_24B2353C4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_24B23CE24(&qword_27EFCE608, type metadata accessor for SettingsPeopleRelationshipsProvider);
  sub_24B2D2584();

  v6 = *a2;
  swift_beginAccess();
  *a3 = *(v5 + v6);
}

uint64_t type metadata accessor for SettingsPeopleRelationshipsProvider()
{
  result = qword_27EFCEA00;
  if (!qword_27EFCEA00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24B235508(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12FindMyUICore35SettingsPeopleRelationshipsProvider__data;
  swift_beginAccess();

  v5 = sub_24B1E4C44(v4, a1);

  if (v5)
  {
    *(v1 + v3) = a1;

    return sub_24B234F40();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24B23CE24(&qword_27EFCE608, type metadata accessor for SettingsPeopleRelationshipsProvider);
    sub_24B2D2574();
  }
}

uint64_t sub_24B23565C(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC12FindMyUICore35SettingsPeopleRelationshipsProvider__data;
  swift_beginAccess();
  *(a1 + v4) = a2;

  return sub_24B234F40();
}

uint64_t sub_24B2356D4()
{
  swift_getKeyPath();
  sub_24B23CE24(&qword_27EFCE608, type metadata accessor for SettingsPeopleRelationshipsProvider);
  sub_24B2D2584();
}

uint64_t sub_24B235780@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24B23CE24(&qword_27EFCE608, type metadata accessor for SettingsPeopleRelationshipsProvider);
  sub_24B2D2584();

  *a2 = *(v3 + OBJC_IVAR____TtC12FindMyUICore35SettingsPeopleRelationshipsProvider__valuePublisher);
}

uint64_t sub_24B235834(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12FindMyUICore35SettingsPeopleRelationshipsProvider__valuePublisher;
  if (!*(v1 + OBJC_IVAR____TtC12FindMyUICore35SettingsPeopleRelationshipsProvider__valuePublisher))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24B23CE24(&qword_27EFCE608, type metadata accessor for SettingsPeopleRelationshipsProvider);
    sub_24B2D2574();
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  v4 = sub_24B2D5754();

  if ((v4 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v1 + v3) = a1;
}

uint64_t sub_24B2359C4@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24B23CE24(&qword_27EFCE608, type metadata accessor for SettingsPeopleRelationshipsProvider);
  sub_24B2D2584();

  v4 = *(v3 + OBJC_IVAR____TtC12FindMyUICore35SettingsPeopleRelationshipsProvider__didChangeDataStorageCallback);
  v5 = *(v3 + OBJC_IVAR____TtC12FindMyUICore35SettingsPeopleRelationshipsProvider__didChangeDataStorageCallback + 8);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_24B05BBDC;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_24AFD5880(v4);
}

uint64_t sub_24B235ABC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_24B23CEC4;
  }

  else
  {
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_24AFD5880(v1);
  sub_24B23CE24(&qword_27EFCE608, type metadata accessor for SettingsPeopleRelationshipsProvider);
  sub_24B2D2574();
  sub_24AFD5890(v4);
}

_OWORD *SettingsPeopleRelationshipsProvider.init(dependencies:)(__int128 *a1)
{
  v2 = v1;
  v4 = sub_24B2D2504();
  MEMORY[0x28223BE20](v4 - 8);
  v34[1] = v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDB58);
  MEMORY[0x28223BE20](v6 - 8);
  v34[0] = v34 - v7;
  v8 = sub_24B2D3184();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v34 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE6D8);
  v16 = (v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = v34 - v17;
  v19 = a1[1];
  v35 = *a1;
  v36 = v19;
  v20 = a1[3];
  v37 = a1[2];
  v38 = v20;
  v21 = v16[11];
  *&v18[v21] = sub_24B195834(MEMORY[0x277D84F90]);
  *&v18[v16[12]] = MEMORY[0x277D84FA0];
  v18[v16[13]] = 0;
  sub_24B2D3174();
  (*(v9 + 16))(v18, v14, v8);
  v22 = *(v9 + 32);
  v22(v11, v14, v8);
  v23 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v24 = swift_allocObject();
  v22((v24 + v23), v11, v8);
  v25 = &v18[v16[14]];
  *v25 = sub_24B21B8F4;
  v25[1] = v24;
  sub_24B0391CC(v18, v2 + OBJC_IVAR____TtC12FindMyUICore35SettingsPeopleRelationshipsProvider__storage, &qword_27EFCE6D8);
  v26 = (v2 + OBJC_IVAR____TtC12FindMyUICore35SettingsPeopleRelationshipsProvider__didAddNewFollowingWithIdentifierCallback);
  *v26 = 0;
  v26[1] = 0;
  v27 = MEMORY[0x277D84F90];
  *(v2 + OBJC_IVAR____TtC12FindMyUICore35SettingsPeopleRelationshipsProvider__loadingStateResetTaskBySubscription) = sub_24B195438(MEMORY[0x277D84F90]);
  v28 = OBJC_IVAR____TtC12FindMyUICore35SettingsPeopleRelationshipsProvider_taskQueue;
  sub_24B2D12D4();
  v29 = sub_24B2D1294();
  (*(*(v29 - 8) + 56))(v34[0], 1, 1, v29);
  sub_24B2D24F4();
  *(v2 + v28) = sub_24B2D12B4();
  *(v2 + OBJC_IVAR____TtC12FindMyUICore35SettingsPeopleRelationshipsProvider__isLoading) = 0;
  *(v2 + OBJC_IVAR____TtC12FindMyUICore35SettingsPeopleRelationshipsProvider__data) = sub_24B19561C(v27);
  *(v2 + OBJC_IVAR____TtC12FindMyUICore35SettingsPeopleRelationshipsProvider__valuePublisher) = 0;
  v30 = (v2 + OBJC_IVAR____TtC12FindMyUICore35SettingsPeopleRelationshipsProvider__didChangeDataStorageCallback);
  *v30 = 0;
  v30[1] = 0;
  sub_24B2D25B4();
  v31 = v36;
  v2[1] = v35;
  v2[2] = v31;
  v32 = v38;
  v2[3] = v37;
  v2[4] = v32;
  return v2;
}

uint64_t sub_24B236070(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24B2D3184();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v18 = v1;
  sub_24B23CE24(&qword_27EFCE608, type metadata accessor for SettingsPeopleRelationshipsProvider);
  sub_24B2D2584();

  v8 = (v1 + OBJC_IVAR____TtC12FindMyUICore35SettingsPeopleRelationshipsProvider__didAddNewFollowingWithIdentifierCallback);
  swift_beginAccess();
  v9 = *v8;
  if (*v8)
  {

    v9(a1);
    return sub_24AFD5890(v9);
  }

  else
  {
    swift_getKeyPath();
    v17[1] = v2;
    sub_24B2D2584();

    v11 = OBJC_IVAR____TtC12FindMyUICore35SettingsPeopleRelationshipsProvider__storage;
    swift_beginAccess();
    (*(v5 + 16))(v7, v2 + v11, v4);
    v12 = sub_24B2D3164();
    v13 = sub_24B2D5904();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v17[0] = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_24AFF321C(0xD000000000000019, 0x800000024B2DD330, v17);
      _os_log_impl(&dword_24AFD2000, v12, v13, "SettingsSubscriptionManagerStorage: empty callback - %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x24C23D530](v15, -1, -1);
      MEMORY[0x24C23D530](v14, -1, -1);
    }

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_24B236340()
{
  v1[6] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8580);
  v1[7] = swift_task_alloc();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCEA20);
  v1[8] = v2;
  v3 = *(v2 - 8);
  v1[9] = v3;
  v1[10] = *(v3 + 64);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipStreamChange(0);
  v1[14] = swift_task_alloc();
  v1[15] = sub_24B2D5694();
  v1[16] = sub_24B2D5684();
  v5 = sub_24B2D5604();
  v1[17] = v5;
  v1[18] = v4;

  return MEMORY[0x2822009F8](sub_24B2364C0, v5, v4);
}

uint64_t sub_24B2364C0()
{
  v1 = v0[6];
  swift_getKeyPath();
  v0[2] = v1;
  v0[19] = OBJC_IVAR____TtC12FindMyUICore35SettingsPeopleRelationshipsProvider___observationRegistrar;
  v0[20] = sub_24B23CE24(&qword_27EFCE608, type metadata accessor for SettingsPeopleRelationshipsProvider);
  sub_24B2D2584();

  v2 = OBJC_IVAR____TtC12FindMyUICore35SettingsPeopleRelationshipsProvider__valuePublisher;
  if (*(v1 + OBJC_IVAR____TtC12FindMyUICore35SettingsPeopleRelationshipsProvider__valuePublisher) && (, sub_24B2D5764(), , *(v1 + v2)))
  {
    v3 = v0[6];
    swift_getKeyPath();
    v4 = swift_task_alloc();
    *(v4 + 16) = v3;
    *(v4 + 24) = 0;
    v0[5] = v3;
    sub_24B2D2574();
  }

  else
  {
    *(v1 + v2) = 0;
  }

  v5 = v0[6];
  v6 = OBJC_IVAR____TtC12FindMyUICore35SettingsPeopleRelationshipsProvider__isLoading;
  v0[21] = OBJC_IVAR____TtC12FindMyUICore35SettingsPeopleRelationshipsProvider__isLoading;
  if (*(v5 + v6))
  {
    *(v5 + v6) = 1;
  }

  else
  {
    swift_getKeyPath();
    v7 = swift_task_alloc();
    *(v7 + 16) = v5;
    *(v7 + 24) = 1;
    v0[3] = v5;
    sub_24B2D2574();
  }

  v10 = (*(v0[6] + 48) + **(v0[6] + 48));
  v8 = swift_task_alloc();
  v0[22] = v8;
  *v8 = v0;
  v8[1] = sub_24B23679C;

  return v10();
}

uint64_t sub_24B23679C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 184) = a1;
  *(v4 + 192) = v1;

  v5 = *(v3 + 144);
  v6 = *(v3 + 136);
  if (v1)
  {
    v7 = sub_24B236E9C;
  }

  else
  {
    v7 = sub_24B2368E0;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_24B2368E0()
{
  v1 = v0[23];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipStreamChange.Friendship(0) - 8);
    v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v5 = *(v3 + 72);
    do
    {
      v6 = v0[14];
      sub_24B23D0BC(v4, v6, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipStreamChange.Friendship);
      swift_storeEnumTagMultiPayload();
      sub_24B236FDC(v6);
      sub_24B23D05C(v6, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipStreamChange);
      v4 += v5;
      --v2;
    }

    while (v2);
  }

  v7 = v0[21];
  v8 = v0[6];
  if (*(v8 + v7))
  {
    swift_getKeyPath();
    v9 = swift_task_alloc();
    *(v9 + 16) = v8;
    *(v9 + 24) = 0;
    v0[4] = v8;
    sub_24B2D2574();
  }

  else
  {
    *(v8 + v7) = 0;
  }

  v13 = (*(v0[6] + 16) + **(v0[6] + 16));
  v10 = swift_task_alloc();
  v0[25] = v10;
  *v10 = v0;
  v10[1] = sub_24B236B58;
  v11 = v0[12];

  return v13(v11);
}

uint64_t sub_24B236B58()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  v3 = *(v2 + 144);
  v4 = *(v2 + 136);
  if (v0)
  {
    v5 = sub_24B236F3C;
  }

  else
  {
    v5 = sub_24B236C94;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24B236C94()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[9];
  v4 = v0[10];
  v5 = v0[7];
  v6 = v0[8];
  v17 = v5;

  v7 = sub_24B2D56D4();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  v8 = swift_allocObject();
  swift_weakInit();
  (*(v3 + 16))(v1, v2, v6);

  v9 = sub_24B2D5684();
  v10 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v11 = (v4 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  *(v12 + 16) = v9;
  *(v12 + 24) = v13;
  (*(v3 + 32))(v12 + v10, v1, v6);
  *(v12 + v11) = v8;

  v14 = sub_24B00A9A4(0, 0, v17, &unk_24B2F2A50, v12);
  sub_24B235834(v14);
  (*(v3 + 8))(v2, v6);

  v15 = v0[1];

  return v15();
}

uint64_t sub_24B236E9C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B236F3C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B236FDC(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier(0);
  MEMORY[0x28223BE20](v4 - 8);
  v165 = &v149 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.LoadedState(0);
  v163 = *(v170 - 8);
  MEMORY[0x28223BE20](v170);
  v169 = (&v149 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v158 = (&v149 - v8);
  v168 = type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.FollowingState(0);
  MEMORY[0x28223BE20](v168);
  v157 = &v149 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v156 = &v149 - v11;
  MEMORY[0x28223BE20](v12);
  v155 = &v149 - v13;
  v171 = type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState(0);
  v14 = *(v171 - 8);
  MEMORY[0x28223BE20](v171);
  v154 = &v149 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v152 = &v149 - v17;
  MEMORY[0x28223BE20](v18);
  v153 = &v149 - v19;
  MEMORY[0x28223BE20](v20);
  v151 = &v149 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDE28);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v149 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v164 = &v149 - v26;
  MEMORY[0x28223BE20](v27);
  v29 = &v149 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE5F8);
  MEMORY[0x28223BE20](v30 - 8);
  v160 = &v149 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v150 = &v149 - v33;
  MEMORY[0x28223BE20](v34);
  v162 = &v149 - v35;
  MEMORY[0x28223BE20](v36);
  v159 = &v149 - v37;
  MEMORY[0x28223BE20](v38);
  v40 = &v149 - v39;
  MEMORY[0x28223BE20](v41);
  v149 = &v149 - v42;
  MEMORY[0x28223BE20](v43);
  v166 = &v149 - v44;
  v45 = type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipStreamChange(0);
  MEMORY[0x28223BE20](v45);
  v47 = &v149 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v167 = type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipStreamChange.Friendship(0);
  MEMORY[0x28223BE20](v167);
  v49 = &v149 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v50);
  v52 = &v149 - v51;
  sub_24B23D0BC(a1, v47, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipStreamChange);
  if (swift_getEnumCaseMultiPayload() <= 1)
  {
    sub_24B23D124(v47, v52, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipStreamChange.Friendship);
    swift_getKeyPath();
    v53 = OBJC_IVAR____TtC12FindMyUICore35SettingsPeopleRelationshipsProvider___observationRegistrar;
    v173 = v2;
    v54 = sub_24B23CE24(&qword_27EFCE608, type metadata accessor for SettingsPeopleRelationshipsProvider);
    v162 = v53;
    v160 = v54;
    sub_24B2D2584();

    v55 = OBJC_IVAR____TtC12FindMyUICore35SettingsPeopleRelationshipsProvider__data;
    swift_beginAccess();
    v154 = v55;
    v56 = *(v2 + v55);
    v57 = *(v56 + 16);
    v161 = v52;
    if (v57)
    {

      v58 = sub_24B18176C(v52);
      v59 = v167;
      if (v60)
      {
        sub_24B23D0BC(*(v56 + 56) + *(v14 + 72) * v58, v29, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState);
        v61 = 0;
      }

      else
      {
        v61 = 1;
      }

      v72 = v2;
      v73 = v159;
    }

    else
    {
      v61 = 1;
      v59 = v167;
      v72 = v2;
      v73 = v159;
    }

    v74 = v14 + 56;
    v75 = v171;
    v169 = *(v14 + 56);
    v169(v29, v61, 1, v171);
    if ((*(v14 + 48))(v29, 1, v75))
    {
      sub_24AFF8258(v29, &qword_27EFCDE28);
      v76 = v163;
      v77 = v166;
      v78 = v170;
      (*(v163 + 56))(v166, 1, 1, v170);
      v79 = v158;
    }

    else
    {
      v80 = v151;
      sub_24B23D0BC(v29, v151, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState);
      sub_24AFF8258(v29, &qword_27EFCDE28);
      v81 = v80;
      v82 = v153;
      sub_24B23D124(v81, v153, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v78 = v170;
      if (EnumCaseMultiPayload == 1)
      {
        v84 = v82;
        v85 = v149;
        sub_24B23D124(v84, v149, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.LoadedState);
        v86 = 0;
        v79 = v158;
        v76 = v163;
      }

      else
      {
        v86 = 1;
        v79 = v158;
        v76 = v163;
        v85 = v149;
      }

      (*(v76 + 56))(v85, v86, 1, v78);
      v97 = v85;
      v77 = v166;
      sub_24B0391CC(v97, v166, &qword_27EFCE5F8);
    }

    sub_24B008890(v77, v40, &qword_27EFCE5F8);
    v98 = *(v76 + 48);
    if (v98(v40, 1, v78) == 1)
    {
      sub_24AFF8258(v40, &qword_27EFCE5F8);
      LODWORD(v167) = 0;
      v99 = v161;
    }

    else
    {
      v163 = v74;
      v100 = v59;
      v101 = v155;
      sub_24B23D0BC(&v40[v78[7]], v155, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.FollowingState);
      sub_24B23D05C(v40, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.LoadedState);
      v102 = v156;
      sub_24B23D124(v101, v156, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.FollowingState);
      v103 = swift_getEnumCaseMultiPayload();
      if (v103)
      {
        v59 = v100;
        if (v103 == 1)
        {
          sub_24AFF8258(v102, &qword_27EFC8450);
        }

        LODWORD(v167) = 0;
        v99 = v161;
      }

      else
      {
        v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8458);
        sub_24AFF8258(v102 + *(v118 + 48), &qword_27EFC8450);
        v73 = v159;
        v77 = v166;
        sub_24AFF8258(v102, &qword_27EFC8450);
        LODWORD(v167) = 1;
        v99 = v161;
        v59 = v100;
      }
    }

    sub_24B008890(v77, v73, &qword_27EFCE5F8);
    if (v98(v73, 1, v78) == 1)
    {
      sub_24B23D0BC(v99, v79, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
      v119 = (v99 + v59[5]);
      v121 = *v119;
      v120 = v119[1];
      type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.FollowerState(0);
      v78 = v170;
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      v122 = (v79 + v78[5]);
      *v122 = v121;
      v122[1] = v120;
      v123 = v98(v73, 1, v78);
      v99 = v161;
      LODWORD(v121) = v123;

      if (v121 != 1)
      {
        sub_24AFF8258(v73, &qword_27EFCE5F8);
      }
    }

    else
    {
      sub_24B23D124(v73, v79, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.LoadedState);
    }

    if (*(v99 + v59[6]) <= 1u)
    {
      if (*(v99 + v59[6]))
      {
        v129 = v79 + v78[7];
        sub_24B23D05C(v129, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.FollowingState);
        v130 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8458) + 48);
        sub_24B008890(v99 + v59[8], v129, &qword_27EFC8450);
        v131 = v129 + v130;
        v78 = v170;
        sub_24B008890(v99 + v59[9], v131, &qword_27EFC8450);
      }

      else
      {
        v125 = v79 + v78[6];
        sub_24B23D05C(v125, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.FollowerState);
        v126 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8458) + 48);
        sub_24B008890(v99 + v59[8], v125, &qword_27EFC8450);
        v127 = v125 + v126;
        v78 = v170;
        sub_24B008890(v99 + v59[9], v127, &qword_27EFC8450);
        type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.FollowerState(0);
      }
    }

    else if (*(v99 + v59[6]) == 3)
    {
      v124 = v78[7];
      sub_24B23D05C(v79 + v124, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.FollowingState);
      sub_24B008890(v99 + v59[9], v79 + v124, &qword_27EFC8450);
    }

    else
    {
      v128 = v78[6];
      sub_24B23D05C(v79 + v128, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.FollowerState);
      sub_24B008890(v99 + v59[9], v79 + v128, &qword_27EFC8450);
      type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.FollowerState(0);
    }

    swift_storeEnumTagMultiPayload();
    v132 = v169;
    v133 = v99 + v59[7];
    v134 = *v133;
    LOBYTE(v133) = *(v133 + 8);
    v135 = v79 + v78[8];
    *v135 = v134;
    *(v135 + 8) = v133;
    v136 = v99;
    v137 = v78;
    v138 = v165;
    sub_24B23D0BC(v136, v165, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
    v139 = v79;
    v140 = v79;
    v141 = v164;
    sub_24B23D0BC(v139, v164, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.LoadedState);
    v142 = v171;
    swift_storeEnumTagMultiPayload();
    v132(v141, 0, 1, v142);
    swift_getKeyPath();
    v172 = v72;
    sub_24B2D2584();

    v172 = v72;
    swift_getKeyPath();
    sub_24B2D25A4();

    swift_beginAccess();
    sub_24B18CC28(v141, v138);
    swift_endAccess();
    sub_24B234F40();
    v172 = v72;
    swift_getKeyPath();
    sub_24B2D2594();

    if (v167)
    {
      sub_24AFF8258(v166, &qword_27EFCE5F8);
      v143 = v161;
    }

    else
    {
      v144 = v157;
      sub_24B23D0BC(v140 + v137[7], v157, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.FollowingState);
      v145 = swift_getEnumCaseMultiPayload();
      if (v145)
      {
        v146 = v161;
        if (v145 == 1)
        {
          sub_24AFF8258(v166, &qword_27EFCE5F8);
          sub_24B23D05C(v146, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipStreamChange.Friendship);
          sub_24AFF8258(v144, &qword_27EFC8450);
LABEL_62:
          v69 = v140;
          return sub_24B23D05C(v69, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.LoadedState);
        }
      }

      else
      {
        v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8458);
        sub_24AFF8258(v144 + *(v147 + 48), &qword_27EFC8450);
        sub_24AFF8258(v144, &qword_27EFC8450);
        v146 = v161;
        sub_24B236070(v161);
      }

      sub_24AFF8258(v166, &qword_27EFCE5F8);
      v143 = v146;
    }

    sub_24B23D05C(v143, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipStreamChange.Friendship);
    goto LABEL_62;
  }

  sub_24B23D124(v47, v49, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipStreamChange.Friendship);
  swift_getKeyPath();
  v62 = OBJC_IVAR____TtC12FindMyUICore35SettingsPeopleRelationshipsProvider___observationRegistrar;
  v173 = v2;
  v63 = sub_24B23CE24(&qword_27EFCE608, type metadata accessor for SettingsPeopleRelationshipsProvider);
  v166 = v62;
  v159 = v63;
  sub_24B2D2584();

  v64 = OBJC_IVAR____TtC12FindMyUICore35SettingsPeopleRelationshipsProvider__data;
  swift_beginAccess();
  v161 = v64;
  v65 = *(v2 + v64);
  v66 = v2;
  if (*(v65 + 16))
  {

    v67 = sub_24B18176C(v49);
    v68 = v167;
    v69 = v169;
    if (v70)
    {
      sub_24B23D0BC(*(v65 + 56) + *(v14 + 72) * v67, v24, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState);
      v71 = 0;
    }

    else
    {
      v71 = 1;
    }
  }

  else
  {
    v71 = 1;
    v68 = v167;
    v69 = v169;
  }

  v87 = v171;
  v158 = *(v14 + 56);
  v158(v24, v71, 1, v171);
  if ((*(v14 + 48))(v24, 1, v87))
  {
    sub_24AFF8258(v24, &qword_27EFCDE28);
    v89 = v162;
    v88 = v163;
    v90 = v170;
    (*(v163 + 56))(v162, 1, 1, v170);
    v91 = v160;
  }

  else
  {
    v92 = v152;
    sub_24B23D0BC(v24, v152, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState);
    sub_24AFF8258(v24, &qword_27EFCDE28);
    v93 = v154;
    sub_24B23D124(v92, v154, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState);
    v94 = swift_getEnumCaseMultiPayload();
    v90 = v170;
    v91 = v160;
    if (v94 == 1)
    {
      v95 = v150;
      sub_24B23D124(v93, v150, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.LoadedState);
      v96 = 0;
      v89 = v162;
      v88 = v163;
    }

    else
    {
      v96 = 1;
      v89 = v162;
      v88 = v163;
      v95 = v150;
    }

    (*(v88 + 56))(v95, v96, 1, v90);
    sub_24B0391CC(v95, v89, &qword_27EFCE5F8);
  }

  sub_24B008890(v89, v91, &qword_27EFCE5F8);
  v104 = *(v88 + 48);
  if (v104(v91, 1, v90) == 1)
  {
    sub_24B23D0BC(v49, v69, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
    v105 = &v49[v68[5]];
    v107 = *v105;
    v106 = *(v105 + 1);
    type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.FollowerState(0);
    v68 = v167;
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    v108 = v169 + v90[5];
    *v108 = v107;
    *(v108 + 1) = v106;
    v109 = v160;
    v110 = v104(v160, 1, v90);
    v69 = v169;
    v111 = v110;

    if (v111 != 1)
    {
      sub_24AFF8258(v109, &qword_27EFCE5F8);
    }
  }

  else
  {
    sub_24B23D124(v91, v69, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.LoadedState);
  }

  if (v49[v68[6]] <= 1u)
  {
    if (v49[v68[6]])
    {
      goto LABEL_38;
    }

LABEL_40:
    sub_24B23D05C(v69 + v90[6], type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.FollowerState);
    type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.FollowerState(0);
    goto LABEL_41;
  }

  if (v49[v68[6]] != 3)
  {
    goto LABEL_40;
  }

LABEL_38:
  sub_24B23D05C(v69 + v90[7], type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.FollowingState);
LABEL_41:
  swift_storeEnumTagMultiPayload();
  v112 = &v49[v68[7]];
  v113 = *v112;
  LOBYTE(v112) = v112[8];
  v114 = v69 + v90[8];
  *v114 = v113;
  *(v114 + 8) = v112;
  v115 = v165;
  sub_24B23D0BC(v49, v165, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
  v116 = v164;
  sub_24B23D0BC(v69, v164, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.LoadedState);
  v117 = v171;
  swift_storeEnumTagMultiPayload();
  v158(v116, 0, 1, v117);
  swift_getKeyPath();
  v172 = v66;
  sub_24B2D2584();

  v172 = v66;
  swift_getKeyPath();
  sub_24B2D25A4();

  swift_beginAccess();
  sub_24B18CC28(v116, v115);
  swift_endAccess();
  sub_24B234F40();
  v172 = v66;
  swift_getKeyPath();
  sub_24B2D2594();

  sub_24AFF8258(v162, &qword_27EFCE5F8);
  sub_24B23D05C(v49, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipStreamChange.Friendship);
  return sub_24B23D05C(v69, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.LoadedState);
}

uint64_t sub_24B238624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v6 = sub_24B2D3184();
  v5[11] = v6;
  v5[12] = *(v6 - 8);
  v5[13] = swift_task_alloc();
  v7 = type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipStreamChange(0);
  v5[14] = v7;
  v5[15] = *(v7 - 8);
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCEA28);
  v5[19] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCEA30);
  v5[20] = v8;
  v5[21] = *(v8 - 8);
  v5[22] = swift_task_alloc();
  v5[23] = sub_24B2D5694();
  v5[24] = sub_24B2D5684();
  v10 = sub_24B2D5604();
  v5[25] = v10;
  v5[26] = v9;

  return MEMORY[0x2822009F8](sub_24B238830, v10, v9);
}

uint64_t sub_24B238830()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCEA20);
  sub_24B2D5724();
  swift_beginAccess();
  v1 = sub_24B2D5684();
  v0[27] = v1;
  v2 = swift_task_alloc();
  v0[28] = v2;
  *v2 = v0;
  v2[1] = sub_24B238928;
  v3 = v0[19];
  v4 = v0[20];
  v5 = MEMORY[0x277D85700];

  return MEMORY[0x2822003E8](v3, v1, v5, v4);
}

uint64_t sub_24B238928()
{
  v1 = *v0;

  v2 = *(v1 + 208);
  v3 = *(v1 + 200);

  return MEMORY[0x2822009F8](sub_24B238A6C, v3, v2);
}

uint64_t sub_24B238A6C()
{
  v40 = v0;
  v1 = v0[19];
  if ((*(v0[15] + 48))(v1, 1, v0[14]) == 1)
  {
    (*(v0[21] + 8))(v0[22], v0[20]);

LABEL_7:

    v26 = v0[1];

    return v26();
  }

  sub_24B23D124(v1, v0[18], type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipStreamChange);
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    v23 = v0[21];
    v22 = v0[22];
    v24 = v0[20];
    v25 = v0[18];

    sub_24B23D05C(v25, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipStreamChange);
    (*(v23 + 8))(v22, v24);
    goto LABEL_7;
  }

  v3 = Strong;
  v5 = v0[17];
  v4 = v0[18];
  v7 = v0[12];
  v6 = v0[13];
  v8 = v0[11];
  swift_getKeyPath();
  v0[8] = v3;
  sub_24B23CE24(&qword_27EFCE608, type metadata accessor for SettingsPeopleRelationshipsProvider);
  sub_24B2D2584();

  v9 = OBJC_IVAR____TtC12FindMyUICore35SettingsPeopleRelationshipsProvider__storage;
  swift_beginAccess();
  (*(v7 + 16))(v6, v3 + v9, v8);
  sub_24B23D0BC(v4, v5, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipStreamChange);
  v10 = sub_24B2D3164();
  v11 = sub_24B2D5934();
  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[17];
  if (v12)
  {
    v14 = v0[16];
    v15 = v0[12];
    v37 = v0[11];
    v38 = v0[13];
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v39 = v17;
    *v16 = 136315138;
    sub_24B23D0BC(v13, v14, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipStreamChange);
    v18 = sub_24B2D53C4();
    v20 = v19;
    sub_24B23D05C(v13, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipStreamChange);
    v21 = sub_24AFF321C(v18, v20, &v39);

    *(v16 + 4) = v21;
    _os_log_impl(&dword_24AFD2000, v10, v11, "SettingsPeopleRelationshipsProvider: change - %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x24C23D530](v17, -1, -1);
    MEMORY[0x24C23D530](v16, -1, -1);

    (*(v15 + 8))(v38, v37);
  }

  else
  {
    v29 = v0[12];
    v28 = v0[13];
    v30 = v0[11];

    sub_24B23D05C(v13, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipStreamChange);
    (*(v29 + 8))(v28, v30);
  }

  v31 = v0[18];
  sub_24B236FDC(v31);

  sub_24B23D05C(v31, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipStreamChange);
  v32 = sub_24B2D5684();
  v0[27] = v32;
  v33 = swift_task_alloc();
  v0[28] = v33;
  *v33 = v0;
  v33[1] = sub_24B238928;
  v34 = v0[19];
  v35 = v0[20];
  v36 = MEMORY[0x277D85700];

  return MEMORY[0x2822003E8](v34, v32, v36, v35);
}

uint64_t sub_24B238F10()
{
  v1[5] = v0;
  sub_24B2D5694();
  v1[6] = sub_24B2D5684();
  v3 = sub_24B2D5604();
  v1[7] = v3;
  v1[8] = v2;

  return MEMORY[0x2822009F8](sub_24B238FA8, v3, v2);
}

uint64_t sub_24B238FA8()
{
  v1 = v0[5];
  swift_getKeyPath();
  v0[2] = v1;
  sub_24B23CE24(&qword_27EFCE608, type metadata accessor for SettingsPeopleRelationshipsProvider);
  sub_24B2D2584();

  v2 = OBJC_IVAR____TtC12FindMyUICore35SettingsPeopleRelationshipsProvider__valuePublisher;
  if (*(v1 + OBJC_IVAR____TtC12FindMyUICore35SettingsPeopleRelationshipsProvider__valuePublisher) && (, sub_24B2D5764(), , *(v1 + v2)))
  {
    v3 = v0[5];
    swift_getKeyPath();
    v4 = swift_task_alloc();
    *(v4 + 16) = v3;
    *(v4 + 24) = 0;
    v0[4] = v3;
    sub_24B2D2574();
  }

  else
  {
    *(v1 + v2) = 0;
  }

  v5 = v0[5];
  if (*(v5 + OBJC_IVAR____TtC12FindMyUICore35SettingsPeopleRelationshipsProvider__isLoading))
  {
    swift_getKeyPath();
    v6 = swift_task_alloc();
    *(v6 + 16) = v5;
    *(v6 + 24) = 0;
    v0[3] = v5;
    sub_24B2D2574();
  }

  else
  {
    *(v5 + OBJC_IVAR____TtC12FindMyUICore35SettingsPeopleRelationshipsProvider__isLoading) = 0;
  }

  v7 = v0[5];
  v8 = sub_24B19561C(MEMORY[0x277D84F90]);
  sub_24B235508(v8);
  v11 = (*(v7 + 32) + **(v7 + 32));
  v9 = swift_task_alloc();
  v0[9] = v9;
  *v9 = v0;
  v9[1] = sub_24B239280;

  return v11();
}

uint64_t sub_24B239280()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  v3 = *(v2 + 64);
  v4 = *(v2 + 56);
  if (v0)
  {
    v5 = sub_24B239420;
  }

  else
  {
    v5 = sub_24B2393BC;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24B2393BC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B239420()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B239484(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8580);
  MEMORY[0x28223BE20](v4 - 8);
  v42 = &v35 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDE28);
  MEMORY[0x28223BE20](v6 - 8);
  v37 = &v35 - v7;
  v8 = type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState(0);
  v43 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v36 = (&v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier(0);
  v40 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v41 = v12;
  v45 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = (*(v1 + 64))(v11);
  v38 = v14;
  v39 = v13;
  swift_getKeyPath();
  v49 = v1;
  sub_24B23CE24(&qword_27EFCE608, type metadata accessor for SettingsPeopleRelationshipsProvider);
  sub_24B2D2584();

  v15 = OBJC_IVAR____TtC12FindMyUICore35SettingsPeopleRelationshipsProvider__loadingStateResetTaskBySubscription;
  swift_beginAccess();
  if (*(*(v1 + v15) + 16))
  {

    sub_24B18176C(a1);
    if (v16)
    {

      sub_24B2D5764();
    }

    else
    {
    }
  }

  v17 = v45;
  sub_24B23D0BC(a1, v45, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
  swift_getKeyPath();
  v48 = v1;
  sub_24B2D2584();

  v48 = v1;
  swift_getKeyPath();
  sub_24B2D25A4();

  swift_beginAccess();
  sub_24B18CE10(0, v17);
  swift_endAccess();
  v48 = v1;
  swift_getKeyPath();
  sub_24B2D2594();

  swift_getKeyPath();
  v48 = v1;
  sub_24B2D2584();

  v18 = OBJC_IVAR____TtC12FindMyUICore35SettingsPeopleRelationshipsProvider__data;
  swift_beginAccess();
  v19 = *(v1 + v18);
  if (*(v19 + 16))
  {

    v20 = sub_24B18176C(a1);
    if (v21)
    {
      sub_24B23D0BC(*(v19 + 56) + *(v43 + 72) * v20, v36, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState);

      if (swift_getEnumCaseMultiPayload() == 1)
      {
        return sub_24B23D05C(v36, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState);
      }
    }

    else
    {
    }
  }

  v44 = a1;
  v36 = type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier;
  v23 = a1;
  v24 = v45;
  sub_24B23D0BC(v23, v45, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
  v25 = v37;
  *v37 = 1;
  swift_storeEnumTagMultiPayload();
  (*(v43 + 56))(v25, 0, 1, v8);
  swift_getKeyPath();
  v47 = v2;
  sub_24B2D2584();

  v47 = v2;
  swift_getKeyPath();
  sub_24B2D25A4();

  swift_beginAccess();
  sub_24B18CC28(v25, v24);
  swift_endAccess();
  sub_24B234F40();
  v47 = v2;
  swift_getKeyPath();
  sub_24B2D2594();

  v26 = sub_24B2D56D4();
  v27 = v42;
  (*(*(v26 - 8) + 56))(v42, 1, 1, v26);
  sub_24B23D0BC(v44, v24, v36);
  sub_24B2D5694();

  v28 = sub_24B2D5684();
  v29 = (*(v40 + 80) + 56) & ~*(v40 + 80);
  v30 = swift_allocObject();
  v31 = MEMORY[0x277D85700];
  v30[2] = v28;
  v30[3] = v31;
  v32 = v38;
  v30[4] = v39;
  v30[5] = v32;
  v30[6] = v2;
  sub_24B23D124(v24, v30 + v29, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
  v33 = sub_24B00A9A4(0, 0, v27, &unk_24B2F2AA0, v30);
  swift_getKeyPath();
  v47 = v2;
  sub_24B2D2584();

  v47 = v2;
  swift_getKeyPath();
  sub_24B2D25A4();

  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v46 = *(v2 + v15);
  *(v2 + v15) = 0x8000000000000000;
  sub_24B1CB244(v33, v44, isUniquelyReferenced_nonNull_native);
  *(v2 + v15) = v46;
  swift_endAccess();
  v47 = v2;
  swift_getKeyPath();
  sub_24B2D2594();
}

uint64_t sub_24B239C40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  v7[10] = type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier(0);
  v7[11] = swift_task_alloc();
  v7[12] = swift_task_alloc();
  v8 = sub_24B2D3184();
  v7[13] = v8;
  v7[14] = *(v8 - 8);
  v7[15] = swift_task_alloc();
  v9 = sub_24B2D5D64();
  v7[16] = v9;
  v7[17] = *(v9 - 8);
  v7[18] = swift_task_alloc();
  sub_24B2D5694();
  v7[19] = sub_24B2D5684();
  v11 = sub_24B2D5604();
  v7[20] = v11;
  v7[21] = v10;

  return MEMORY[0x2822009F8](sub_24B239DD0, v11, v10);
}

uint64_t sub_24B239DD0()
{
  sub_24B2D6084();
  v1 = swift_task_alloc();
  v0[22] = v1;
  *v1 = v0;
  v1[1] = sub_24B239E90;
  v3 = v0[6];
  v2 = v0[7];

  return sub_24B09A030(v3, v2, 0, 0, 1);
}

uint64_t sub_24B239E90()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *(*v1 + 136);
  v5 = *(*v1 + 128);
  *(*v1 + 184) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 168);
  v7 = *(v2 + 160);
  if (v0)
  {
    v8 = sub_24B23A0C4;
  }

  else
  {
    v8 = sub_24B23A028;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_24B23A028()
{
  v1 = *(v0 + 72);

  sub_24B23A3C8(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24B23A0C4()
{
  v28 = v0;
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  v25 = v0[12];
  v4 = v0[8];
  v5 = v0[9];

  swift_getKeyPath();
  v0[5] = v4;
  sub_24B23CE24(&qword_27EFCE608, type metadata accessor for SettingsPeopleRelationshipsProvider);
  sub_24B2D2584();

  v6 = OBJC_IVAR____TtC12FindMyUICore35SettingsPeopleRelationshipsProvider__storage;
  swift_beginAccess();
  (*(v2 + 16))(v1, v4 + v6, v3);
  sub_24B23D0BC(v5, v25, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
  v7 = sub_24B2D3164();
  v8 = sub_24B2D5904();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[23];
  v11 = v0[14];
  v12 = v0[15];
  v14 = v0[12];
  v13 = v0[13];
  if (v9)
  {
    v26 = v0[15];
    v15 = v0[11];
    v24 = v0[13];
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v27 = v17;
    *v16 = 136315138;
    sub_24B23D0BC(v14, v15, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
    v18 = sub_24B2D53C4();
    v20 = v19;
    sub_24B23D05C(v14, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
    v21 = sub_24AFF321C(v18, v20, &v27);

    *(v16 + 4) = v21;
    _os_log_impl(&dword_24AFD2000, v7, v8, "PeopleLocationsProvider: loadingStateResetTaskBySubscription was cancelled - identifier: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x24C23D530](v17, -1, -1);
    MEMORY[0x24C23D530](v16, -1, -1);

    (*(v11 + 8))(v26, v24);
  }

  else
  {

    sub_24B23D05C(v14, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
    (*(v11 + 8))(v12, v13);
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_24B23A3C8(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDE28);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v21 - v5;
  v7 = type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier(0);
  MEMORY[0x28223BE20](v7 - 8);
  v22 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v24 = v1;
  sub_24B23CE24(&qword_27EFCE608, type metadata accessor for SettingsPeopleRelationshipsProvider);
  sub_24B2D2584();

  v13 = OBJC_IVAR____TtC12FindMyUICore35SettingsPeopleRelationshipsProvider__data;
  result = swift_beginAccess();
  v15 = *(v1 + v13);
  if (*(v15 + 16))
  {
    v21 = v6;

    v16 = sub_24B18176C(a1);
    if (v17)
    {
      sub_24B23D0BC(*(v15 + 56) + *(v10 + 72) * v16, v12, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState);

      if (swift_getEnumCaseMultiPayload() == 1)
      {
        return sub_24B23D05C(v12, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState);
      }

      else
      {
        v18 = a1;
        v19 = v22;
        sub_24B23D0BC(v18, v22, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
        v20 = v21;
        *v21 = 0;
        swift_storeEnumTagMultiPayload();
        (*(v10 + 56))(v20, 0, 1, v9);
        swift_getKeyPath();
        v23 = v2;
        sub_24B2D2584();

        v23 = v2;
        swift_getKeyPath();
        sub_24B2D25A4();

        swift_beginAccess();
        sub_24B18CC28(v20, v19);
        swift_endAccess();
        sub_24B234F40();
        v23 = v2;
        swift_getKeyPath();
        sub_24B2D2594();
      }
    }

    else
    {
    }
  }

  return result;
}

uint64_t SettingsPeopleRelationshipsProvider.didAddNewUniqueSubscriptions(addedSubscriptions:wasEmpty:)(uint64_t a1, int a2)
{
  v31 = a2;
  v32 = sub_24B2D3184();
  v30 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v28[1] = v3;
  v29 = v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier(0);
  v4 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v6 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription(0);
  v34 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v28 - v11;
  v13 = 1 << *(a1 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(a1 + 56);
  v16 = (v13 + 63) >> 6;

  v18 = 0;
  while (v15)
  {
LABEL_9:
    v20 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    sub_24B23D0BC(*(a1 + 48) + *(v34 + 72) * (v20 | (v18 << 6)), v12, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
    sub_24B23D124(v12, v9, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
    result = (*(v4 + 48))(v9, 1, v35);
    if (result != 1)
    {
      sub_24B23D124(v9, v6, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
      sub_24B239484(v6);
      result = sub_24B23D05C(v6, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
    }
  }

  while (1)
  {
    v19 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v19 >= v16)
    {

      v21 = v33;
      swift_getKeyPath();
      v36 = v21;
      sub_24B23CE24(&qword_27EFCE608, type metadata accessor for SettingsPeopleRelationshipsProvider);
      sub_24B2D2584();

      v22 = OBJC_IVAR____TtC12FindMyUICore35SettingsPeopleRelationshipsProvider__storage;
      swift_beginAccess();
      v24 = v29;
      v23 = v30;
      v25 = v32;
      (*(v30 + 16))(v29, v21 + v22, v32);
      v26 = (*(v23 + 80) + 32) & ~*(v23 + 80);
      v27 = swift_allocObject();
      *(v27 + 16) = v31 & 1;
      *(v27 + 24) = v21;
      (*(v23 + 32))(v27 + v26, v24, v25);

      sub_24B2D12C4();
    }

    v15 = *(a1 + 56 + 8 * v19);
    ++v18;
    if (v15)
    {
      v18 = v19;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24B23ABBC(char a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a3;
  if (a1)
  {
    v4 = swift_task_alloc();
    v3[3] = v4;
    *v4 = v3;
    v4[1] = sub_24B23AC88;

    return sub_24B236340();
  }

  else
  {
    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_24B23AC88()
{
  v2 = *v1;
  *(v2 + 32) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24B23ADBC, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_24B23ADBC()
{
  v15 = v0;
  v1 = *(v0 + 32);
  v2 = v1;
  v3 = sub_24B2D3164();
  v4 = sub_24B2D5914();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 32);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v7 = 136315394;
    *(v7 + 4) = sub_24AFF321C(0xD00000000000003ALL, 0x800000024B2DCF70, &v14);
    *(v7 + 12) = 2114;
    v10 = v6;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v11;
    *v8 = v11;
    _os_log_impl(&dword_24AFD2000, v3, v4, "PeopleLocationsProvider: %s - error: %{public}@", v7, 0x16u);
    sub_24AFF8258(v8, &qword_27EFC7BB8);
    MEMORY[0x24C23D530](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x24C23D530](v9, -1, -1);
    MEMORY[0x24C23D530](v7, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t SettingsPeopleRelationshipsProvider.didRemoveUniqueSubscriptions(removedSubscriptions:isEmpty:)(uint64_t a1, int a2)
{
  v85 = a2;
  v86 = sub_24B2D3184();
  v84 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v82 = v4;
  v83 = &v68[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDE28);
  MEMORY[0x28223BE20](v5 - 8);
  v73 = &v68[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v78 = &v68[-v8];
  v87 = type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState(0);
  v9 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v75 = &v68[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v80 = &v68[-v12];
  v95 = type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier(0);
  v13 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v79 = &v68[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v17 = &v68[-v16];
  v18 = type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription(0);
  v94 = *(v18 - 8);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v68[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v21);
  v93 = &v68[-v22];
  v23 = a1 + 56;
  v24 = 1 << *(a1 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & *(a1 + 56);
  v91 = OBJC_IVAR____TtC12FindMyUICore35SettingsPeopleRelationshipsProvider___observationRegistrar;
  v27 = OBJC_IVAR____TtC12FindMyUICore35SettingsPeopleRelationshipsProvider__data;

  v90 = v27;
  swift_beginAccess();
  v28 = 0;
  v29 = (v24 + 63) >> 6;
  v72 = v13;
  v92 = (v13 + 48);
  v30 = v2;
  v77 = (v9 + 56);
  v81 = v9;
  v76 = (v9 + 48);
  v88 = v20;
  v89 = a1;
  while (v26)
  {
LABEL_12:
    v34 = __clz(__rbit64(v26));
    v26 &= v26 - 1;
    v35 = v93;
    sub_24B23D0BC(*(a1 + 48) + *(v94 + 72) * (v34 | (v28 << 6)), v93, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
    sub_24B23D124(v35, v20, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
    if ((*v92)(v20, 1, v95) != 1)
    {
      sub_24B23D124(v20, v17, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
      swift_getKeyPath();
      v97 = v30;
      v36 = sub_24B23CE24(&qword_27EFCE608, type metadata accessor for SettingsPeopleRelationshipsProvider);
      sub_24B2D2584();

      v37 = *(v30 + v90);
      if (*(v37 + 16))
      {

        v38 = sub_24B18176C(v17);
        a1 = v89;
        if (v39)
        {
          v74 = v36;
          v40 = *(v81 + 72);
          v41 = v80;
          sub_24B23D0BC(*(v37 + 56) + v40 * v38, v80, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState);

          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_24B23D05C(v17, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
            v42 = type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState;
            v43 = v41;
            goto LABEL_18;
          }

          v70 = v40;
          v71 = v17;
          sub_24B23D0BC(v17, v79, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
          v44 = v78;
          *v78 = 0;
          swift_storeEnumTagMultiPayload();
          (*v77)(v44, 0, 1, v87);
          swift_getKeyPath();
          v97 = v30;
          sub_24B2D2584();

          v97 = v30;
          swift_getKeyPath();
          sub_24B2D25A4();
          v45 = v44;

          v46 = v90;
          swift_beginAccess();
          if ((*v76)(v45, 1, v87) != 1)
          {
            sub_24B23D124(v45, v75, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v96 = *(v30 + v46);
            v47 = v96;
            *(v30 + v46) = 0x8000000000000000;
            v48 = v79;
            v50 = sub_24B18176C(v79);
            v51 = v47[2];
            v52 = (v49 & 1) == 0;
            v53 = v51 + v52;
            if (__OFADD__(v51, v52))
            {
              goto LABEL_34;
            }

            v54 = v49;
            if (v47[3] >= v53)
            {
              if (isUniquelyReferenced_nonNull_native)
              {
                v57 = v96;
                if ((v49 & 1) == 0)
                {
                  goto LABEL_29;
                }
              }

              else
              {
                sub_24B1CF3B8();
                v57 = v96;
                if ((v54 & 1) == 0)
                {
                  goto LABEL_29;
                }
              }
            }

            else
            {
              sub_24B1C7AC0(v53, isUniquelyReferenced_nonNull_native);
              v55 = sub_24B18176C(v48);
              if ((v54 & 1) != (v56 & 1))
              {
                goto LABEL_36;
              }

              v50 = v55;
              v57 = v96;
              if ((v54 & 1) == 0)
              {
LABEL_29:
                v57[(v50 >> 6) + 8] |= 1 << v50;
                sub_24B23D0BC(v48, v57[6] + *(v72 + 72) * v50, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
                sub_24B23D124(v75, v57[7] + v50 * v70, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState);
                sub_24B23D05C(v48, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
                v58 = v57[2];
                v59 = __OFADD__(v58, 1);
                v60 = v58 + 1;
                if (v59)
                {
                  goto LABEL_35;
                }

                v57[2] = v60;
LABEL_31:
                v17 = v71;
                *(v30 + v90) = v57;

LABEL_5:
                swift_endAccess();
                sub_24B234F40();
                v97 = v30;
                swift_getKeyPath();
                sub_24B2D2594();

                goto LABEL_6;
              }
            }

            sub_24B23CA1C(v75, v57[7] + v50 * v70);
            sub_24B23D05C(v48, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
            goto LABEL_31;
          }

          sub_24AFF8258(v45, &qword_27EFCDE28);
          v31 = v73;
          v32 = v79;
          sub_24B23C7A4(v79, v73);
          sub_24AFF8258(v31, &qword_27EFCDE28);
          sub_24B23D05C(v32, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
          v17 = v71;
          goto LABEL_5;
        }

        v42 = type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier;
        v43 = v17;
LABEL_18:
        sub_24B23D05C(v43, v42);
        v20 = v88;
      }

      else
      {
LABEL_6:
        sub_24B23D05C(v17, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
        v20 = v88;
        a1 = v89;
      }
    }
  }

  while (1)
  {
    v33 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v33 >= v29)
    {

      swift_getKeyPath();
      v97 = v30;
      sub_24B23CE24(&qword_27EFCE608, type metadata accessor for SettingsPeopleRelationshipsProvider);
      sub_24B2D2584();

      v61 = OBJC_IVAR____TtC12FindMyUICore35SettingsPeopleRelationshipsProvider__storage;
      swift_beginAccess();
      v63 = v83;
      v62 = v84;
      v64 = v86;
      (*(v84 + 16))(v83, v30 + v61, v86);
      v65 = (*(v62 + 80) + 32) & ~*(v62 + 80);
      v66 = swift_allocObject();
      *(v66 + 16) = v85 & 1;
      *(v66 + 24) = v30;
      (*(v62 + 32))(v66 + v65, v63, v64);

      sub_24B2D12C4();
    }

    v26 = *(v23 + 8 * v33);
    ++v28;
    if (v26)
    {
      v28 = v33;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  result = sub_24B2D6054();
  __break(1u);
  return result;
}

uint64_t sub_24B23BAB0(char a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a3;
  if (a1)
  {
    v4 = swift_task_alloc();
    v3[3] = v4;
    *v4 = v3;
    v4[1] = sub_24B23BB7C;

    return sub_24B238F10();
  }

  else
  {
    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_24B23BB7C()
{
  v2 = *v1;
  *(v2 + 32) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24B23BCB0, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_24B23BCB0()
{
  v15 = v0;
  v1 = *(v0 + 32);
  v2 = v1;
  v3 = sub_24B2D3164();
  v4 = sub_24B2D5914();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 32);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v7 = 136315394;
    *(v7 + 4) = sub_24AFF321C(0xD00000000000003BLL, 0x800000024B2DCF30, &v14);
    *(v7 + 12) = 2114;
    v10 = v6;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v11;
    *v8 = v11;
    _os_log_impl(&dword_24AFD2000, v3, v4, "PeopleLocationsProvider: %s - error: %{public}@", v7, 0x16u);
    sub_24AFF8258(v8, &qword_27EFC7BB8);
    MEMORY[0x24C23D530](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x24C23D530](v9, -1, -1);
    MEMORY[0x24C23D530](v7, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t SettingsPeopleRelationshipsProvider.deinit()
{

  sub_24AFF8258(v0 + OBJC_IVAR____TtC12FindMyUICore35SettingsPeopleRelationshipsProvider__storage, &qword_27EFCE6D8);
  sub_24AFD5890(*(v0 + OBJC_IVAR____TtC12FindMyUICore35SettingsPeopleRelationshipsProvider__didAddNewFollowingWithIdentifierCallback));

  sub_24AFD5890(*(v0 + OBJC_IVAR____TtC12FindMyUICore35SettingsPeopleRelationshipsProvider__didChangeDataStorageCallback));
  v1 = OBJC_IVAR____TtC12FindMyUICore35SettingsPeopleRelationshipsProvider___observationRegistrar;
  v2 = sub_24B2D25C4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t SettingsPeopleRelationshipsProvider.__deallocating_deinit()
{
  SettingsPeopleRelationshipsProvider.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_24B23BFE8@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_24B23CE24(&qword_27EFCE608, type metadata accessor for SettingsPeopleRelationshipsProvider);
  sub_24B2D2584();

  v3 = OBJC_IVAR____TtC12FindMyUICore35SettingsPeopleRelationshipsProvider__storage;
  swift_beginAccess();
  return sub_24B008890(v5 + v3, a1, &qword_27EFCE6D8);
}

uint64_t sub_24B23C0C0(uint64_t a1)
{
  swift_getKeyPath();
  sub_24B23CE24(&qword_27EFCE608, type metadata accessor for SettingsPeopleRelationshipsProvider);
  sub_24B2D2574();

  return sub_24AFF8258(a1, &qword_27EFCE6D8);
}

void (*sub_24B23C1A0(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = SettingsPeopleRelationshipsProvider.storage.modify(v2);
  return sub_24B0E122C;
}

uint64_t sub_24B23C218@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  swift_getKeyPath();
  sub_24B23CE24(&qword_27EFCE608, type metadata accessor for SettingsPeopleRelationshipsProvider);
  sub_24B2D2584();

  v4 = OBJC_IVAR____TtC12FindMyUICore35SettingsPeopleRelationshipsProvider__data;
  swift_beginAccess();
  *a1 = *(v3 + v4);
}

uint64_t sub_24B23C2E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_24B181398(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_24B1CC520();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = sub_24B2D2504();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDD00);
    v20 = *(v13 - 8);
    (*(v20 + 32))(a2, v12 + *(v20 + 72) * v7, v13);
    sub_24B18F878(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDD00);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_24B23C498@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_24B181150(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_24B1CCED4();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = sub_24B2D1704();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    v13 = type metadata accessor for DirectionsState();
    v20 = *(v13 - 8);
    sub_24B23D124(v12 + *(v20 + 72) * v7, a2, type metadata accessor for DirectionsState);
    sub_24B190250(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = type metadata accessor for DirectionsState();
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_24B23C634@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_24B054238(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_24B1CD200();
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = sub_24B2D24A4();
    v19 = *(v12 - 8);
    (*(v19 + 32))(a3, v11 + *(v19 + 72) * v8, v12);
    sub_24B190594(v8, v10);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = sub_24B2D24A4();
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

uint64_t sub_24B23C7A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_24B18176C(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_24B1CF3B8();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier(0);
    sub_24B23D05C(v10 + *(*(v11 - 8) + 72) * v7, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
    v12 = *(v9 + 56);
    v13 = type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState(0);
    v20 = *(v13 - 8);
    sub_24B23D124(v12 + *(v20 + 72) * v7, a2, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState);
    sub_24B19191C(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState(0);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_24B23C93C()
{
  v2 = *(sub_24B2D3184() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_24AFFD370;

  return sub_24B23ABBC(v4, v5, v0 + v3);
}

uint64_t sub_24B23CA1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B23CA80()
{
  v2 = *(sub_24B2D3184() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_24AFFDE44;

  return sub_24B23BAB0(v4, v5, v0 + v3);
}

uint64_t sub_24B23CBA8(uint64_t a1)
{
  result = sub_24B23CE24(&qword_27EFCE608, type metadata accessor for SettingsPeopleRelationshipsProvider);
  *(a1 + 8) = result;
  return result;
}

void sub_24B23CC08()
{
  sub_24B23CD44();
  if (v0 <= 0x3F)
  {
    sub_24B2D25C4();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_24B23CD44()
{
  if (!qword_27EFCEA10)
  {
    type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription(255);
    sub_24B23CE24(&qword_27EFCE0F0, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
    v0 = type metadata accessor for SettingsSubscriptionManagerStorage();
    if (!v1)
    {
      atomic_store(v0, &qword_27EFCEA10);
    }
  }
}

uint64_t sub_24B23CE24(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24B23CE6C()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = (v0[2] + OBJC_IVAR____TtC12FindMyUICore35SettingsPeopleRelationshipsProvider__didChangeDataStorageCallback);
  v4 = *v3;
  *v3 = v1;
  v3[1] = v2;
  sub_24AFD5880(v1);
  return sub_24AFD5890(v4);
}

uint64_t sub_24B23CEEC(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCEA20) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24AFFD370;

  return sub_24B238624(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_24B23D018()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC12FindMyUICore35SettingsPeopleRelationshipsProvider__valuePublisher) = *(v0 + 24);
}

uint64_t sub_24B23D05C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24B23D0BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B23D124(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B23D1C0(uint64_t a1)
{
  v4 = *(type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier(0) - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_24AFFDE44;

  return sub_24B239C40(a1, v6, v7, v8, v9, v10, v1 + v5);
}

uint64_t sub_24B23D338(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE6D8);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t SettingsPeopleRelationshipsProvider.Dependencies.startRelationshipsStream.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SettingsPeopleRelationshipsProvider.Dependencies.startRelationshipsStream.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_24B23D490(uint64_t a1, int *a2)
{
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_24AFFD370;

  return v5();
}

uint64_t sub_24B23D578(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;

  *(a2 + 16) = &unk_24B2F2B18;
  *(a2 + 24) = v5;
  return result;
}

uint64_t sub_24B23D5E8(int *a1)
{
  v4 = (a1 + *a1);
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_24AFFDE44;

  return v4();
}

uint64_t SettingsPeopleRelationshipsProvider.Dependencies.stopRelationshipsStream.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t SettingsPeopleRelationshipsProvider.Dependencies.stopRelationshipsStream.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_24B23D758(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_24B0170D0;

  return v5();
}

uint64_t sub_24B23D844(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;

  *(a2 + 32) = &unk_24B2F2AF8;
  *(a2 + 40) = v5;
  return result;
}

uint64_t sub_24B23D8B4(int *a1)
{
  v4 = (a1 + *a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_24B22605C;

  return v4(v1 + 16);
}

uint64_t SettingsPeopleRelationshipsProvider.Dependencies.initialRelationships.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t SettingsPeopleRelationshipsProvider.Dependencies.initialRelationships.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t sub_24B23DA2C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;

  *(a2 + 48) = sub_24B23DBE0;
  *(a2 + 56) = v5;
  return result;
}

uint64_t SettingsPeopleRelationshipsProvider.Dependencies.loadingStateResetDuration.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t SettingsPeopleRelationshipsProvider.Dependencies.loadingStateResetDuration.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t SettingsPeopleRelationshipsProvider.Dependencies.init(startRelationshipsStream:stopRelationshipsStream:initialRelationships:loadingStateResetDuration:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  *a9 = result;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  return result;
}

uint64_t sub_24B23DB38(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_24B23DB80(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_24B23DC18@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_24B23DC48()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24B0384BC;

  return sub_24B23D8B4(v2);
}

uint64_t sub_24B23DCF4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24AFFD370;

  return sub_24B23D758(a1, v4);
}

uint64_t sub_24B23DDAC()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24AFFDE44;

  return sub_24B23D5E8(v2);
}

uint64_t sub_24B23DE58(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24AFFDE44;

  return sub_24B23D490(a1, v4);
}

uint64_t static SettingsPeopleRelationshipsProvider.Dependencies.live()@<X0>(void *a1@<X8>)
{
  v2 = sub_24B2D2674();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24B2D2694();
  v7 = MEMORY[0x28223BE20](v6 - 8);
  (*(v3 + 104))(v5, *MEMORY[0x277D09048], v2, v7);
  sub_24B2D26A4();
  sub_24B2D2AE4();
  swift_allocObject();
  v8 = sub_24B2D2B04();
  *a1 = &unk_24B2F1908;
  a1[1] = v8;
  a1[2] = &unk_24B2F1910;
  a1[3] = v8;
  a1[4] = &unk_24B2F1918;
  a1[5] = v8;
  a1[6] = sub_24B1F0DA0;
  a1[7] = 0;
  return swift_retain_n();
}

uint64_t sub_24B23E0A8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24AFFD370;

  return sub_24B23E144(a1);
}

uint64_t sub_24B23E144(uint64_t a1)
{
  v1[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8580);
  v1[3] = swift_task_alloc();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCEA40);
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCEA48) - 8);
  v1[7] = v3;
  v1[8] = *(v3 + 64);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8918);
  v4 = swift_task_alloc();
  v1[12] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCEA50);
  v1[13] = v5;
  v6 = *(v5 - 8);
  v1[14] = v6;
  v1[15] = *(v6 + 64);
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v7 = swift_task_alloc();
  v1[18] = v7;
  *v7 = v1;
  v7[1] = sub_24B23E3C0;

  return MEMORY[0x28215FAF0](v4, 0);
}

uint64_t sub_24B23E3C0()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_24B23E814;
  }

  else
  {
    v2 = sub_24B23E4D4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24B23E4D4()
{
  v1 = v0[17];
  v2 = v0[14];
  v16 = v0[13];
  v17 = v0[16];
  v20 = v0[15];
  v3 = v0[10];
  v4 = v0[6];
  v18 = v0[9];
  v19 = v0[7];
  v6 = v0[4];
  v5 = v0[5];
  v15 = v0[3];
  type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipStreamChange(0);
  sub_24B241794();
  v14 = v1;
  sub_24B2D5F94();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCEA58);
  (*(*(v7 - 8) + 56))(v3, 1, 1, v7);
  *(swift_task_alloc() + 16) = v3;
  (*(v5 + 104))(v4, *MEMORY[0x277D85778], v6);
  sub_24B2D5744();

  v8 = sub_24B2D56D4();
  (*(*(v8 - 8) + 56))(v15, 1, 1, v8);
  (*(v2 + 16))(v17, v1, v16);
  sub_24B008890(v3, v18, &qword_27EFCEA48);
  v9 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v10 = (v20 + *(v19 + 80) + v9) & ~*(v19 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  (*(v2 + 32))(v11 + v9, v17, v16);
  sub_24B241800(v18, v11 + v10);
  sub_24B00A9A4(0, 0, v15, &unk_24B2F2B90, v11);

  (*(v2 + 8))(v14, v16);
  sub_24AFF8258(v3, &qword_27EFCEA48);

  v12 = v0[1];

  return v12();
}

uint64_t sub_24B23E814()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B23E8C8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24AFFDE44;

  return MEMORY[0x28215FAD8]();
}

uint64_t sub_24B23E95C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24B0C9468;

  return sub_24B23E9EC();
}

uint64_t sub_24B23E9EC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCEA38);
  v0[2] = swift_task_alloc();
  v1 = type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipStreamChange.Friendship(0);
  v0[3] = v1;
  v0[4] = *(v1 - 8);
  v0[5] = swift_task_alloc();
  v2 = sub_24B2D2884();
  v0[6] = v2;
  v0[7] = *(v2 - 8);
  v0[8] = swift_task_alloc();
  v3 = sub_24B2D26C4();
  v0[9] = v3;
  v0[10] = *(v3 - 8);
  v4 = swift_task_alloc();
  v0[11] = v4;
  v5 = swift_task_alloc();
  v0[12] = v5;
  *v5 = v0;
  v5[1] = sub_24B23EBD4;

  return MEMORY[0x28215FA68](v4);
}

uint64_t sub_24B23EBD4()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_24B23EF70;
  }

  else
  {
    v2 = sub_24B23ECE8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24B23ECE8()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[9];
  v4 = sub_24B2D26B4();
  (*(v1 + 8))(v2, v3);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = v0[7];
    v21 = *(v6 + 16);
    v19 = v0[4];
    v7 = v4 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v20 = *(v6 + 72);
    v8 = (v6 + 8);
    v9 = MEMORY[0x277D84F90];
    do
    {
      v10 = v0[8];
      v11 = v0[6];
      v13 = v0[2];
      v12 = v0[3];
      v21(v10, v7, v11);
      sub_24B240104(v13);
      (*v8)(v10, v11);
      if ((*(v19 + 48))(v13, 1, v12) == 1)
      {
        sub_24AFF8258(v0[2], &qword_27EFCEA38);
      }

      else
      {
        sub_24B2419D8(v0[2], v0[5], type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipStreamChange.Friendship);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_24B007018(0, v9[2] + 1, 1, v9);
        }

        v15 = v9[2];
        v14 = v9[3];
        if (v15 >= v14 >> 1)
        {
          v9 = sub_24B007018(v14 > 1, v15 + 1, 1, v9);
        }

        v16 = v0[5];
        v9[2] = v15 + 1;
        sub_24B2419D8(v16, v9 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v15, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipStreamChange.Friendship);
      }

      v7 += v20;
      --v5;
    }

    while (v5);
  }

  else
  {

    v9 = MEMORY[0x277D84F90];
  }

  v17 = v0[1];

  return v17(v9);
}

uint64_t sub_24B23EF70()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B23F000@<X0>(uint64_t a1@<X8>)
{
  v53 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCEA38);
  MEMORY[0x28223BE20](v1 - 8);
  v50 = &v46 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v48 = &v46 - v4;
  MEMORY[0x28223BE20](v5);
  v7 = &v46 - v6;
  v52 = type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipStreamChange.Friendship(0);
  v8 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v47 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v46 = &v46 - v11;
  MEMORY[0x28223BE20](v12);
  v49 = &v46 - v13;
  v14 = sub_24B2D2884();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v46 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v46 - v22;
  v24 = sub_24B2D2744();
  v25 = *(v24 - 8);
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v46 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 16))(v28, v51, v24, v26);
  v29 = (*(v25 + 88))(v28, v24);
  if (v29 == *MEMORY[0x277D090C0])
  {
    (*(v25 + 96))(v28, v24);
    (*(v15 + 32))(v23, v28, v14);
    sub_24B240104(v7);
    (*(v15 + 8))(v23, v14);
    if ((*(v8 + 48))(v7, 1, v52) == 1)
    {
      v30 = v7;
LABEL_11:
      sub_24AFF8258(v30, &qword_27EFCEA38);
      v39 = type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipStreamChange(0);
      return (*(*(v39 - 8) + 56))(v53, 1, 1, v39);
    }

    v34 = v49;
    sub_24B2419D8(v7, v49, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipStreamChange.Friendship);
    v35 = v34;
    v36 = v53;
    sub_24B2419D8(v35, v53, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipStreamChange.Friendship);
    v37 = type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipStreamChange(0);
  }

  else
  {
    v31 = v8;
    v32 = v52;
    if (v29 == *MEMORY[0x277D090C8])
    {
      (*(v25 + 96))(v28, v24);
      (*(v15 + 32))(v17, v28, v14);
      v33 = v50;
      sub_24B240104(v50);
      (*(v15 + 8))(v17, v14);
      if ((*(v31 + 48))(v33, 1, v32) == 1)
      {
        v30 = v33;
        goto LABEL_11;
      }

      v41 = v47;
      sub_24B2419D8(v33, v47, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipStreamChange.Friendship);
      v42 = v41;
      v36 = v53;
      sub_24B2419D8(v42, v53, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipStreamChange.Friendship);
      v37 = type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipStreamChange(0);
    }

    else
    {
      if (v29 != *MEMORY[0x277D090D0])
      {
        v43 = type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipStreamChange(0);
        (*(*(v43 - 8) + 56))(v53, 1, 1, v43);
        return (*(v25 + 8))(v28, v24);
      }

      (*(v25 + 96))(v28, v24);
      (*(v15 + 32))(v20, v28, v14);
      v38 = v48;
      sub_24B240104(v48);
      (*(v15 + 8))(v20, v14);
      if ((*(v31 + 48))(v38, 1, v32) == 1)
      {
        v30 = v38;
        goto LABEL_11;
      }

      v44 = v46;
      sub_24B2419D8(v38, v46, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipStreamChange.Friendship);
      v45 = v44;
      v36 = v53;
      sub_24B2419D8(v45, v53, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipStreamChange.Friendship);
      v37 = type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipStreamChange(0);
    }
  }

  swift_storeEnumTagMultiPayload();
  return (*(*(v37 - 8) + 56))(v36, 0, 1, v37);
}

uint64_t sub_24B23F6F8(uint64_t a1)
{
  sub_24B23F000(a1);
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_24B23F75C(uint64_t a1, uint64_t a2)
{
  sub_24AFF8258(a2, &qword_27EFCEA48);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCEA58);
  v7 = *(v4 - 8);
  (*(v7 + 16))(a2, a1, v4);
  v5 = *(v7 + 56);

  return v5(a2, 0, 1, v4);
}

uint64_t sub_24B23F838(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCEA60);
  v5[5] = swift_task_alloc();
  v6 = type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipStreamChange(0);
  v5[6] = v6;
  v5[7] = *(v6 - 8);
  v5[8] = swift_task_alloc();
  v5[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCEA48);
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCEA28);
  v5[12] = swift_task_alloc();
  v5[13] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8918);
  v5[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8950);
  v5[15] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCEA68);
  v5[16] = v7;
  v5[17] = *(v7 - 8);
  v5[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B23FA94, 0, 0);
}

uint64_t sub_24B23FA94()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCEA50);
  MEMORY[0x24C23C720]();
  sub_24B241794();
  sub_24B2D57B4();
  sub_24B2D5F64();
  sub_24B2D5F74();
  v1 = swift_task_alloc();
  *(v0 + 152) = v1;
  *v1 = v0;
  v1[1] = sub_24B23FBF4;
  v2 = *(v0 + 96);

  return sub_24B24CBA0(v2, 0, 0);
}

uint64_t sub_24B23FBF4()
{

  if (!v0)
  {

    return MEMORY[0x2822009F8](sub_24B23FD04, 0, 0);
  }

  return result;
}

uint64_t sub_24B23FD04()
{
  v1 = v0[12];
  if ((*(v0[7] + 48))(v1, 1, v0[6]) == 1)
  {
    v2 = v0[11];
    v3 = v0[4];
    (*(v0[17] + 8))(v0[18], v0[16]);
    sub_24B008890(v3, v2, &qword_27EFCEA48);
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCEA58);
    v5 = *(v4 - 8);
    v6 = (*(v5 + 48))(v2, 1, v4);
    v7 = v0[11];
    if (v6 == 1)
    {
      sub_24AFF8258(v0[11], &qword_27EFCEA48);
    }

    else
    {
      sub_24B2D5714();
      (*(v5 + 8))(v7, v4);
    }

    v16 = v0[1];

    return v16();
  }

  else
  {
    v8 = v0[10];
    v9 = v0[4];
    sub_24B2419D8(v1, v0[9], type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipStreamChange);
    sub_24B008890(v9, v8, &qword_27EFCEA48);
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCEA58);
    v11 = *(v10 - 8);
    v12 = (*(v11 + 48))(v8, 1, v10);
    v14 = v0[9];
    v13 = v0[10];
    if (v12 == 1)
    {
      sub_24B241A40(v0[9]);
      sub_24AFF8258(v13, &qword_27EFCEA48);
      v15 = 1;
    }

    else
    {
      sub_24B241A9C(v0[9], v0[8]);
      sub_24B2D5704();
      sub_24B241A40(v14);
      (*(v11 + 8))(v13, v10);
      v15 = 0;
    }

    v18 = v0[5];
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCEA70);
    (*(*(v19 - 8) + 56))(v18, v15, 1, v19);
    sub_24AFF8258(v18, &qword_27EFCEA60);
    v20 = swift_task_alloc();
    v0[19] = v20;
    *v20 = v0;
    v20[1] = sub_24B23FBF4;
    v21 = v0[12];

    return (sub_24B24CBA0)(v21, 0, 0, v0 + 2);
  }
}

unsigned __int8 *sub_24B240104@<X0>(uint64_t a1@<X8>)
{
  v96 = a1;
  v2 = sub_24B2D28E4();
  v94 = *(v2 - 8);
  v95 = v2;
  MEMORY[0x28223BE20](v2);
  v93 = &v85 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v92 = &v85 - v5;
  MEMORY[0x28223BE20](v6);
  v91 = &v85 - v7;
  v8 = type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier(0);
  MEMORY[0x28223BE20](v8 - 8);
  v98 = &v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24B2D24A4();
  v90 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v86 = &v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC88A0);
  MEMORY[0x28223BE20](v12);
  v14 = &v85 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8450);
  MEMORY[0x28223BE20](v15 - 8);
  v88 = &v85 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v85 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v85 - v21;
  MEMORY[0x28223BE20](v23);
  v97 = &v85 - v24;
  v25 = sub_24B2D2664();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v28 = &v85 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v31 = &v85 - v30;
  v99 = v1;
  sub_24B2D2844();
  (*(v26 + 32))(v28, v31, v25);
  v32 = (*(v26 + 88))(v28, v25);
  if (v32 == *MEMORY[0x277D09028])
  {
    v89 = 0;
  }

  else
  {
    if (v32 == *MEMORY[0x277D09030])
    {
      v33 = 1;
    }

    else if (v32 == *MEMORY[0x277D09018])
    {
      v33 = 2;
    }

    else if (v32 == *MEMORY[0x277D09020])
    {
      v33 = 3;
    }

    else
    {
      if (v32 != *MEMORY[0x277D09010])
      {
        (*(v26 + 8))(v28, v25);
        v83 = type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipStreamChange.Friendship(0);
        return (*(*(v83 - 8) + 56))(v96, 1, 1, v83);
      }

      v33 = 4;
    }

    v89 = v33;
  }

  sub_24B2D2854();
  sub_24B2D2334();
  v34 = v90;
  v87 = *(v90 + 56);
  v87(v19, 0, 1, v10);
  v35 = *(v12 + 48);
  sub_24B008890(v22, v14, &qword_27EFC8450);
  sub_24B008890(v19, &v14[v35], &qword_27EFC8450);
  v36 = *(v34 + 48);
  if (v36(v14, 1, v10) != 1)
  {
    v37 = v88;
    sub_24B008890(v14, v88, &qword_27EFC8450);
    if (v36(&v14[v35], 1, v10) != 1)
    {
      v38 = v86;
      (*(v34 + 32))(v86, &v14[v35], v10);
      sub_24B2412C8();
      v39 = sub_24B2D52A4();
      v40 = *(v34 + 8);
      v40(v38, v10);
      sub_24AFF8258(v19, &qword_27EFC8450);
      sub_24AFF8258(v22, &qword_27EFC8450);
      v40(v88, v10);
      sub_24AFF8258(v14, &qword_27EFC8450);
      if (v39)
      {
        goto LABEL_20;
      }

LABEL_18:
      sub_24B2D2854();
      goto LABEL_21;
    }

    sub_24AFF8258(v19, &qword_27EFC8450);
    sub_24AFF8258(v22, &qword_27EFC8450);
    (*(v34 + 8))(v37, v10);
LABEL_17:
    sub_24AFF8258(v14, &qword_27EFC88A0);
    goto LABEL_18;
  }

  sub_24AFF8258(v19, &qword_27EFC8450);
  sub_24AFF8258(v22, &qword_27EFC8450);
  if (v36(&v14[v35], 1, v10) != 1)
  {
    goto LABEL_17;
  }

  sub_24AFF8258(v14, &qword_27EFC8450);
LABEL_20:
  v87(v97, 1, 1, v10);
LABEL_21:
  v41 = v91;
  sub_24B2D2864();
  sub_24B2D28A4();
  sub_24B2D16E4();
  v42 = v95;
  v43 = *(v94 + 8);
  v43(v41, v95);
  v44 = v92;
  sub_24B2D2864();
  v45 = sub_24B2D28D4();
  v47 = v46;
  v43(v44, v42);
  v48 = v93;
  sub_24B2D2864();
  v49 = sub_24B2D28B4();
  v51 = v50;
  result = (v43)(v48, v42);
  v99 = v47;
  if (!v51)
  {
    v57 = v45;
LABEL_42:
    v58 = 0;
    v62 = 1;
LABEL_88:
    v77 = type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipStreamChange.Friendship(0);
    v79 = v96;
    v78 = v97;
    sub_24B008890(v97, v96 + v77[8], &qword_27EFC8450);
    sub_24B2D2874();
    sub_24AFF8258(v78, &qword_27EFC8450);
    sub_24B2419D8(v98, v79, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
    v80 = (v79 + v77[5]);
    v81 = v99;
    *v80 = v57;
    v80[1] = v81;
    *(v79 + v77[6]) = v89;
    v82 = v79 + v77[7];
    *v82 = v58;
    *(v82 + 8) = v62 & 1;
    return (*(*(v77 - 1) + 56))(v79, 0, 1, v77);
  }

  v53 = HIBYTE(v51) & 0xF;
  v54 = v49 & 0xFFFFFFFFFFFFLL;
  if ((v51 & 0x2000000000000000) != 0)
  {
    v55 = HIBYTE(v51) & 0xF;
  }

  else
  {
    v55 = v49 & 0xFFFFFFFFFFFFLL;
  }

  if (!v55)
  {
    v57 = v45;

    goto LABEL_42;
  }

  if ((v51 & 0x1000000000000000) != 0)
  {
    v57 = v45;

    v58 = sub_24B240D3C(v49, v51, 10);
    v62 = v84;
    swift_bridgeObjectRelease_n();
LABEL_86:
    if (v62)
    {
      v58 = 0;
    }

    goto LABEL_88;
  }

  if ((v51 & 0x2000000000000000) != 0)
  {
    v100[0] = v49;
    v100[1] = v51 & 0xFFFFFFFFFFFFFFLL;
    if (v49 == 43)
    {
      if (v53)
      {
        v57 = v45;
        if (--v53)
        {
          v58 = 0;
          v69 = v100 + 1;
          while (1)
          {
            v70 = *v69 - 48;
            if (v70 > 9)
            {
              break;
            }

            v71 = 10 * v58;
            if ((v58 * 10) >> 64 != (10 * v58) >> 63)
            {
              break;
            }

            v58 = v71 + v70;
            if (__OFADD__(v71, v70))
            {
              break;
            }

            ++v69;
            if (!--v53)
            {
              goto LABEL_85;
            }
          }
        }

        goto LABEL_84;
      }

      goto LABEL_96;
    }

    if (v49 != 45)
    {
      v57 = v45;
      if (v53)
      {
        v58 = 0;
        v74 = v100;
        while (1)
        {
          v75 = *v74 - 48;
          if (v75 > 9)
          {
            break;
          }

          v76 = 10 * v58;
          if ((v58 * 10) >> 64 != (10 * v58) >> 63)
          {
            break;
          }

          v58 = v76 + v75;
          if (__OFADD__(v76, v75))
          {
            break;
          }

          ++v74;
          if (!--v53)
          {
            goto LABEL_85;
          }
        }
      }

      goto LABEL_84;
    }

    if (v53)
    {
      v57 = v45;
      if (--v53)
      {
        v58 = 0;
        v63 = v100 + 1;
        while (1)
        {
          v64 = *v63 - 48;
          if (v64 > 9)
          {
            break;
          }

          v65 = 10 * v58;
          if ((v58 * 10) >> 64 != (10 * v58) >> 63)
          {
            break;
          }

          v58 = v65 - v64;
          if (__OFSUB__(v65, v64))
          {
            break;
          }

          ++v63;
          if (!--v53)
          {
            goto LABEL_85;
          }
        }
      }

      goto LABEL_84;
    }
  }

  else
  {
    if ((v49 & 0x1000000000000000) != 0)
    {
      result = ((v51 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      result = sub_24B2D5CB4();
    }

    v56 = *result;
    if (v56 == 43)
    {
      if (v54 >= 1)
      {
        v57 = v45;
        v53 = v54 - 1;
        if (v54 != 1)
        {
          v58 = 0;
          if (result)
          {
            v66 = result + 1;
            while (1)
            {
              v67 = *v66 - 48;
              if (v67 > 9)
              {
                goto LABEL_84;
              }

              v68 = 10 * v58;
              if ((v58 * 10) >> 64 != (10 * v58) >> 63)
              {
                goto LABEL_84;
              }

              v58 = v68 + v67;
              if (__OFADD__(v68, v67))
              {
                goto LABEL_84;
              }

              ++v66;
              if (!--v53)
              {
                goto LABEL_85;
              }
            }
          }

          goto LABEL_76;
        }

        goto LABEL_84;
      }

      goto LABEL_95;
    }

    if (v56 != 45)
    {
      v57 = v45;
      if (v54)
      {
        v58 = 0;
        if (result)
        {
          while (1)
          {
            v72 = *result - 48;
            if (v72 > 9)
            {
              goto LABEL_84;
            }

            v73 = 10 * v58;
            if ((v58 * 10) >> 64 != (10 * v58) >> 63)
            {
              goto LABEL_84;
            }

            v58 = v73 + v72;
            if (__OFADD__(v73, v72))
            {
              goto LABEL_84;
            }

            ++result;
            if (!--v54)
            {
              goto LABEL_76;
            }
          }
        }

        goto LABEL_76;
      }

LABEL_84:
      v58 = 0;
      LOBYTE(v53) = 1;
      goto LABEL_85;
    }

    if (v54 >= 1)
    {
      v57 = v45;
      v53 = v54 - 1;
      if (v54 != 1)
      {
        v58 = 0;
        if (result)
        {
          v59 = result + 1;
          while (1)
          {
            v60 = *v59 - 48;
            if (v60 > 9)
            {
              goto LABEL_84;
            }

            v61 = 10 * v58;
            if ((v58 * 10) >> 64 != (10 * v58) >> 63)
            {
              goto LABEL_84;
            }

            v58 = v61 - v60;
            if (__OFSUB__(v61, v60))
            {
              goto LABEL_84;
            }

            ++v59;
            if (!--v53)
            {
              goto LABEL_85;
            }
          }
        }

LABEL_76:
        LOBYTE(v53) = 0;
LABEL_85:
        v101 = v53;
        v62 = v53;

        goto LABEL_86;
      }

      goto LABEL_84;
    }

    __break(1u);
  }

  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
  return result;
}

void *sub_24B240CC8(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC7BA0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unsigned __int8 *sub_24B240D3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_24B2D5494();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_24B241320();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_24B2D5CB4();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

unint64_t sub_24B2412C8()
{
  result = qword_27EFC88B0;
  if (!qword_27EFC88B0)
  {
    sub_24B2D24A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC88B0);
  }

  return result;
}

uint64_t sub_24B241320()
{
  v0 = sub_24B2D54A4();
  v4 = sub_24B2413A0(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_24B2413A0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_24B2D5A94();
    if (!v9 || (v10 = v9, v11 = sub_24B240CC8(v9, 0), v12 = sub_24B2414F8(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_24B2D53F4();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_24B2D53F4();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_24B2D5CB4();
LABEL_4:

  return sub_24B2D53F4();
}

unint64_t sub_24B2414F8(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_24B241718(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_24B2D5474();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_24B2D5CB4();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_24B241718(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_24B2D5454();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_24B241718(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_24B2D5484();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x24C23BC40](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

unint64_t sub_24B241794()
{
  result = qword_27EFC8940;
  if (!qword_27EFC8940)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC8918);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC8940);
  }

  return result;
}

uint64_t sub_24B241800(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCEA48);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B241870(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCEA50) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCEA48) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_24AFFD370;

  return sub_24B23F838(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_24B2419D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B241A40(uint64_t a1)
{
  v2 = type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipStreamChange(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24B241A9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipStreamChange(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t SettingsPeopleRelationshipsProvider.RelationshipState.loadedState.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B241DF4(v2, v6, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_24B244F5C(v6, a1, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.LoadedState);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.LoadedState(0);
  return (*(*(v8 - 8) + 56))(a1, v7, 1, v8);
}

uint64_t SettingsPeopleRelationshipsProvider.Subscription.Identifier.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24B2D1704();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t SettingsPeopleRelationshipsProvider.RelationshipState.FollowingState.isActive.getter()
{
  v1 = type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.FollowingState(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B241DF4(v0, v3, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.FollowingState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    v5 = 0;
    v6 = 0;
    if (EnumCaseMultiPayload != 1)
    {
      return v6;
    }
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8458);
    sub_24AFF8258(&v3[*(v7 + 48)], &qword_27EFC8450);
    v5 = 1;
  }

  sub_24AFF8258(v3, &qword_27EFC8450);
  return v5;
}

uint64_t sub_24B241DF4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t SettingsPeopleRelationshipsProvider.RelationshipState.FollowerState.isActive.getter()
{
  v1 = type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.FollowerState(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B241DF4(v0, v3, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.FollowerState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = 0;
  if ((EnumCaseMultiPayload - 1) < 2)
  {
    goto LABEL_4;
  }

  if (!EnumCaseMultiPayload)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8458);
    sub_24AFF8258(&v3[*(v6 + 48)], &qword_27EFC8450);
    v5 = 1;
LABEL_4:
    sub_24AFF8258(v3, &qword_27EFC8450);
  }

  return v5;
}

uint64_t SettingsPeopleRelationshipsProvider.Subscription.Identifier.rawValue.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24B2D1704();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t SettingsPeopleRelationshipsProvider.Subscription.Identifier.hash(into:)()
{
  sub_24B2D1704();
  sub_24B2468B0(&unk_27EFC7E58, MEMORY[0x277D08BF8]);

  return sub_24B2D5254();
}

uint64_t SettingsPeopleRelationshipsProvider.Subscription.Identifier.hashValue.getter()
{
  sub_24B2D60E4();
  sub_24B2D1704();
  sub_24B2468B0(&unk_27EFC7E58, MEMORY[0x277D08BF8]);
  sub_24B2D5254();
  return sub_24B2D6124();
}

uint64_t sub_24B2420FC()
{
  sub_24B2D60E4();
  sub_24B2D1704();
  sub_24B2468B0(&unk_27EFC7E58, MEMORY[0x277D08BF8]);
  sub_24B2D5254();
  return sub_24B2D6124();
}

uint64_t sub_24B242184()
{
  sub_24B2D1704();
  sub_24B2468B0(&unk_27EFC7E58, MEMORY[0x277D08BF8]);

  return sub_24B2D5254();
}

uint64_t sub_24B242208()
{
  sub_24B2D60E4();
  sub_24B2D1704();
  sub_24B2468B0(&unk_27EFC7E58, MEMORY[0x277D08BF8]);
  sub_24B2D5254();
  return sub_24B2D6124();
}

uint64_t SettingsPeopleRelationshipsProvider.Subscription.hash(into:)()
{
  v1 = type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B241DF4(v0, v7, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
  if ((*(v2 + 48))(v7, 1, v1) == 1)
  {
    return MEMORY[0x24C23C8D0](0);
  }

  sub_24B244F5C(v7, v4, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
  MEMORY[0x24C23C8D0](1);
  sub_24B2D1704();
  sub_24B2468B0(&unk_27EFC7E58, MEMORY[0x277D08BF8]);
  sub_24B2D5254();
  return sub_24B244FC4(v4, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
}

uint64_t SettingsPeopleRelationshipsProvider.Subscription.hashValue.getter()
{
  v1 = v0;
  v2 = type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B2D60E4();
  sub_24B241DF4(v1, v8, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    MEMORY[0x24C23C8D0](0);
  }

  else
  {
    sub_24B244F5C(v8, v5, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
    MEMORY[0x24C23C8D0](1);
    sub_24B2D1704();
    sub_24B2468B0(&unk_27EFC7E58, MEMORY[0x277D08BF8]);
    sub_24B2D5254();
    sub_24B244FC4(v5, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
  }

  return sub_24B2D6124();
}

uint64_t sub_24B242668()
{
  v1 = type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B241DF4(v0, v7, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
  if ((*(v2 + 48))(v7, 1, v1) == 1)
  {
    return MEMORY[0x24C23C8D0](0);
  }

  sub_24B244F5C(v7, v4, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
  MEMORY[0x24C23C8D0](1);
  sub_24B2D1704();
  sub_24B2468B0(&unk_27EFC7E58, MEMORY[0x277D08BF8]);
  sub_24B2D5254();
  return sub_24B244FC4(v4, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
}

uint64_t sub_24B242840()
{
  v1 = v0;
  v2 = type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B2D60E4();
  sub_24B241DF4(v1, v8, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    MEMORY[0x24C23C8D0](0);
  }

  else
  {
    sub_24B244F5C(v8, v5, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
    MEMORY[0x24C23C8D0](1);
    sub_24B2D1704();
    sub_24B2468B0(&unk_27EFC7E58, MEMORY[0x277D08BF8]);
    sub_24B2D5254();
    sub_24B244FC4(v5, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
  }

  return sub_24B2D6124();
}

uint64_t SettingsPeopleRelationshipsProvider.RelationshipState.isLoading.getter()
{
  v1 = type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B241DF4(v0, v3, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return *v3;
  }

  sub_24B244FC4(v3, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState);
  return 0;
}

uint64_t SettingsPeopleRelationshipsProvider.RelationshipState.LoadedState.favoriteOrder.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.LoadedState(0);
  v6 = v2 + *(result + 32);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t SettingsPeopleRelationshipsProvider.RelationshipState.LoadedState.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24B2D24A4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v50 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8450);
  MEMORY[0x28223BE20](v7 - 8);
  v49 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v47 = &v46 - v10;
  MEMORY[0x28223BE20](v11);
  v48 = &v46 - v12;
  MEMORY[0x28223BE20](v13);
  v46 = &v46 - v14;
  MEMORY[0x28223BE20](v15);
  v51 = &v46 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v46 - v18;
  v20 = type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.FollowingState(0);
  MEMORY[0x28223BE20](v20);
  v22 = &v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B2D1704();
  sub_24B2468B0(&unk_27EFC7E58, MEMORY[0x277D08BF8]);
  sub_24B2D5254();
  v23 = type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.LoadedState(0);
  v24 = v23;
  if (*(v1 + *(v23 + 20) + 8))
  {
    v25 = a1;
    v26 = v19;
    v27 = v23;
    sub_24B2D6104();
    v24 = v27;
    v19 = v26;
    a1 = v25;
    sub_24B2D5404();
  }

  else
  {
    sub_24B2D6104();
  }

  SettingsPeopleRelationshipsProvider.RelationshipState.FollowerState.hash(into:)(a1);
  sub_24B241DF4(v2 + *(v24 + 28), v22, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.FollowingState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v29 = v48;
      sub_24AFF26A8(v22, v48);
      MEMORY[0x24C23C8D0](2);
      v30 = v47;
      sub_24AFF249C(v29, v47);
      if ((*(v5 + 48))(v30, 1, v4) == 1)
      {
        sub_24B2D6104();
      }

      else
      {
        v38 = v50;
        (*(v5 + 32))(v50, v30, v4);
        sub_24B2D6104();
        sub_24B2468B0(&qword_27EFCB108, MEMORY[0x277CC9578]);
        sub_24B2D5254();
        (*(v5 + 8))(v38, v4);
      }

      sub_24AFF8258(v29, &qword_27EFC8450);
    }

    else
    {
      MEMORY[0x24C23C8D0](1);
    }
  }

  else
  {
    v31 = v24;
    v32 = v2;
    v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8458) + 48);
    sub_24AFF26A8(v22, v19);
    v34 = &v22[v33];
    v35 = v51;
    sub_24AFF26A8(v34, v51);
    MEMORY[0x24C23C8D0](0);
    v36 = v46;
    sub_24AFF249C(v19, v46);
    v37 = *(v5 + 48);
    if (v37(v36, 1, v4) == 1)
    {
      sub_24B2D6104();
    }

    else
    {
      v39 = v50;
      (*(v5 + 32))(v50, v36, v4);
      sub_24B2D6104();
      sub_24B2468B0(&qword_27EFCB108, MEMORY[0x277CC9578]);
      sub_24B2D5254();
      v40 = v39;
      v35 = v51;
      (*(v5 + 8))(v40, v4);
    }

    v41 = v49;
    sub_24AFF249C(v35, v49);
    if (v37(v41, 1, v4) == 1)
    {
      sub_24B2D6104();
    }

    else
    {
      v42 = v50;
      (*(v5 + 32))(v50, v41, v4);
      sub_24B2D6104();
      sub_24B2468B0(&qword_27EFCB108, MEMORY[0x277CC9578]);
      sub_24B2D5254();
      (*(v5 + 8))(v42, v4);
    }

    sub_24AFF8258(v35, &qword_27EFC8450);
    sub_24AFF8258(v19, &qword_27EFC8450);
    v2 = v32;
    v24 = v31;
  }

  v43 = (v2 + *(v24 + 32));
  if (v43[1])
  {
    return sub_24B2D6104();
  }

  v45 = *v43;
  sub_24B2D6104();
  return MEMORY[0x24C23C8D0](v45);
}

uint64_t SettingsPeopleRelationshipsProvider.RelationshipState.hash(into:)(uint64_t a1)
{
  v3 = sub_24B2D24A4();
  v51 = *(v3 - 8);
  v52 = v3;
  MEMORY[0x28223BE20](v3);
  v49 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8450);
  MEMORY[0x28223BE20](v5 - 8);
  v48 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v46 - v8;
  MEMORY[0x28223BE20](v10);
  v47 = &v46 - v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v46 - v13;
  MEMORY[0x28223BE20](v15);
  v53 = &v46 - v16;
  MEMORY[0x28223BE20](v17);
  v50 = &v46 - v18;
  v19 = type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.FollowingState(0);
  MEMORY[0x28223BE20](v19);
  v21 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.LoadedState(0);
  MEMORY[0x28223BE20](v22);
  v24 = &v46 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState(0);
  MEMORY[0x28223BE20](v25);
  v27 = &v46 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B241DF4(v1, v27, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    MEMORY[0x24C23C8D0](0);
    return sub_24B2D6104();
  }

  sub_24B244F5C(v27, v24, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.LoadedState);
  MEMORY[0x24C23C8D0](1);
  sub_24B2D1704();
  sub_24B2468B0(&unk_27EFC7E58, MEMORY[0x277D08BF8]);
  sub_24B2D5254();
  if (*&v24[v22[5] + 8])
  {
    sub_24B2D6104();
    sub_24B2D5404();
  }

  else
  {
    sub_24B2D6104();
  }

  v29 = v51;
  v30 = v53;
  SettingsPeopleRelationshipsProvider.RelationshipState.FollowerState.hash(into:)(a1);
  sub_24B241DF4(&v24[v22[7]], v21, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.FollowingState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8458) + 48);
    v35 = v50;
    sub_24AFF26A8(v21, v50);
    sub_24AFF26A8(&v21[v34], v30);
    MEMORY[0x24C23C8D0](0);
    sub_24AFF249C(v35, v14);
    v36 = *(v29 + 48);
    v37 = v52;
    if (v36(v14, 1, v52) == 1)
    {
      sub_24B2D6104();
    }

    else
    {
      v40 = v49;
      (*(v29 + 32))(v49, v14, v37);
      sub_24B2D6104();
      sub_24B2468B0(&qword_27EFCB108, MEMORY[0x277CC9578]);
      sub_24B2D5254();
      v41 = v40;
      v30 = v53;
      (*(v29 + 8))(v41, v37);
    }

    v42 = v48;
    sub_24AFF249C(v30, v48);
    if (v36(v42, 1, v37) == 1)
    {
      sub_24B2D6104();
    }

    else
    {
      v43 = v49;
      (*(v29 + 32))(v49, v42, v37);
      sub_24B2D6104();
      sub_24B2468B0(&qword_27EFCB108, MEMORY[0x277CC9578]);
      sub_24B2D5254();
      (*(v29 + 8))(v43, v37);
    }

    sub_24AFF8258(v30, &qword_27EFC8450);
    v39 = v50;
    goto LABEL_20;
  }

  v32 = v52;
  if (EnumCaseMultiPayload == 1)
  {
    v33 = v47;
    sub_24AFF26A8(v21, v47);
    MEMORY[0x24C23C8D0](2);
    sub_24AFF249C(v33, v9);
    if ((*(v29 + 48))(v9, 1, v32) == 1)
    {
      sub_24B2D6104();
    }

    else
    {
      v38 = v49;
      (*(v29 + 32))(v49, v9, v32);
      sub_24B2D6104();
      sub_24B2468B0(&qword_27EFCB108, MEMORY[0x277CC9578]);
      sub_24B2D5254();
      (*(v29 + 8))(v38, v32);
    }

    v39 = v33;
LABEL_20:
    sub_24AFF8258(v39, &qword_27EFC8450);
    goto LABEL_21;
  }

  MEMORY[0x24C23C8D0](1);
LABEL_21:
  v44 = &v24[v22[8]];
  if (v44[8] == 1)
  {
    sub_24B2D6104();
  }

  else
  {
    v45 = *v44;
    sub_24B2D6104();
    MEMORY[0x24C23C8D0](v45);
  }

  return sub_24B244FC4(v24, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.LoadedState);
}

uint64_t sub_24B243CEC(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));

  return v2;
}

uint64_t SettingsPeopleRelationshipsProvider.RelationshipStreamChange.Friendship.friendshipType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipStreamChange.Friendship(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t SettingsPeopleRelationshipsProvider.RelationshipStreamChange.Friendship.expiryDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipStreamChange.Friendship(0) + 32);

  return sub_24AFF249C(v3, a1);
}

uint64_t SettingsPeopleRelationshipsProvider.RelationshipStreamChange.Friendship.createdDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipStreamChange.Friendship(0) + 36);

  return sub_24AFF249C(v3, a1);
}

uint64_t SettingsPeopleRelationshipsProvider.RelationshipStreamChange.Friendship.FriendshipType.hashValue.getter()
{
  v1 = *v0;
  sub_24B2D60E4();
  MEMORY[0x24C23C8D0](v1);
  return sub_24B2D6124();
}

uint64_t SettingsPeopleRelationshipsProvider.RelationshipState.FollowerState.hash(into:)(uint64_t a1)
{
  v51 = a1;
  v2 = sub_24B2D24A4();
  v49 = *(v2 - 8);
  v50 = v2;
  MEMORY[0x28223BE20](v2);
  v48 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8450);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v46 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v46 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v46 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v46 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v46 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v46 - v23;
  MEMORY[0x28223BE20](v25);
  v47 = &v46 - v26;
  v27 = type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.FollowerState(0);
  MEMORY[0x28223BE20](v27);
  v29 = &v46 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B241DF4(v1, v29, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.FollowerState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      return MEMORY[0x24C23C8D0](1);
    }

    sub_24AFF26A8(v29, v9);
    MEMORY[0x24C23C8D0](3);
    sub_24AFF249C(v9, v6);
    v37 = v49;
    v36 = v50;
    if ((*(v49 + 48))(v6, 1, v50) == 1)
    {
      sub_24B2D6104();
    }

    else
    {
      v42 = v48;
      (*(v37 + 32))(v48, v6, v36);
      sub_24B2D6104();
      sub_24B2468B0(&qword_27EFCB108, MEMORY[0x277CC9578]);
      sub_24B2D5254();
      (*(v37 + 8))(v42, v36);
    }

    v43 = v9;
  }

  else if (EnumCaseMultiPayload)
  {
    sub_24AFF26A8(v29, v15);
    MEMORY[0x24C23C8D0](2);
    sub_24AFF249C(v15, v12);
    v39 = v49;
    v38 = v50;
    if ((*(v49 + 48))(v12, 1, v50) == 1)
    {
      sub_24B2D6104();
    }

    else
    {
      v44 = v48;
      (*(v39 + 32))(v48, v12, v38);
      sub_24B2D6104();
      sub_24B2468B0(&qword_27EFCB108, MEMORY[0x277CC9578]);
      sub_24B2D5254();
      (*(v39 + 8))(v44, v38);
    }

    v43 = v15;
  }

  else
  {
    v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8458) + 48);
    v32 = v47;
    sub_24AFF26A8(v29, v47);
    sub_24AFF26A8(&v29[v31], v24);
    MEMORY[0x24C23C8D0](0);
    sub_24AFF249C(v32, v21);
    v34 = v49;
    v33 = v50;
    v35 = *(v49 + 48);
    if (v35(v21, 1, v50) == 1)
    {
      sub_24B2D6104();
    }

    else
    {
      v41 = v48;
      (*(v34 + 32))(v48, v21, v33);
      sub_24B2D6104();
      sub_24B2468B0(&qword_27EFCB108, MEMORY[0x277CC9578]);
      sub_24B2D5254();
      (*(v34 + 8))(v41, v33);
    }

    sub_24AFF249C(v24, v18);
    if (v35(v18, 1, v33) == 1)
    {
      sub_24B2D6104();
    }

    else
    {
      v45 = v48;
      (*(v34 + 32))(v48, v18, v33);
      sub_24B2D6104();
      sub_24B2468B0(&qword_27EFCB108, MEMORY[0x277CC9578]);
      sub_24B2D5254();
      (*(v34 + 8))(v45, v33);
    }

    sub_24AFF8258(v24, &qword_27EFC8450);
    v43 = v47;
  }

  return sub_24AFF8258(v43, &qword_27EFC8450);
}

uint64_t SettingsPeopleRelationshipsProvider.RelationshipState.FollowingState.hash(into:)(uint64_t a1)
{
  v40 = a1;
  v2 = sub_24B2D24A4();
  v39 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v38 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8450);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v37 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v37 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v37 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v37 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v37 - v20;
  v22 = type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.FollowingState(0);
  MEMORY[0x28223BE20](v22);
  v24 = &v37 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B241DF4(v1, v24, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.FollowingState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      return MEMORY[0x24C23C8D0](1);
    }

    sub_24AFF26A8(v24, v9);
    MEMORY[0x24C23C8D0](2);
    sub_24AFF249C(v9, v6);
    v26 = v39;
    if ((*(v39 + 48))(v6, 1, v2) == 1)
    {
      sub_24B2D6104();
    }

    else
    {
      v31 = v38;
      (*(v26 + 32))(v38, v6, v2);
      sub_24B2D6104();
      sub_24B2468B0(&qword_27EFCB108, MEMORY[0x277CC9578]);
      sub_24B2D5254();
      (*(v26 + 8))(v31, v2);
    }

    v32 = v9;
  }

  else
  {
    v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8458) + 48);
    sub_24AFF26A8(v24, v21);
    sub_24AFF26A8(&v24[v27], v18);
    MEMORY[0x24C23C8D0](0);
    sub_24AFF249C(v21, v15);
    v28 = v39;
    v29 = *(v39 + 48);
    if (v29(v15, 1, v2) == 1)
    {
      sub_24B2D6104();
    }

    else
    {
      v33 = *(v28 + 32);
      v37 = v29;
      v34 = v38;
      v33(v38, v15, v2);
      sub_24B2D6104();
      sub_24B2468B0(&qword_27EFCB108, MEMORY[0x277CC9578]);
      sub_24B2D5254();
      v35 = v34;
      v29 = v37;
      (*(v28 + 8))(v35, v2);
    }

    sub_24AFF249C(v18, v12);
    if (v29(v12, 1, v2) == 1)
    {
      sub_24B2D6104();
    }

    else
    {
      v36 = v38;
      (*(v28 + 32))(v38, v12, v2);
      sub_24B2D6104();
      sub_24B2468B0(&qword_27EFCB108, MEMORY[0x277CC9578]);
      sub_24B2D5254();
      (*(v28 + 8))(v36, v2);
    }

    sub_24AFF8258(v18, &qword_27EFC8450);
    v32 = v21;
  }

  return sub_24AFF8258(v32, &qword_27EFC8450);
}

uint64_t sub_24B244B28(void (*a1)(_BYTE *))
{
  sub_24B2D60E4();
  a1(v3);
  return sub_24B2D6124();
}

uint64_t sub_24B244B88(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *))
{
  sub_24B2D60E4();
  a3(v5);
  return sub_24B2D6124();
}

uint64_t sub_24B244BEC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_24B2D60E4();
  a4(v6);
  return sub_24B2D6124();
}

uint64_t _s12FindMyUICore35SettingsPeopleRelationshipsProviderC12SubscriptionO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC7A8);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v19 - v12;
  v15 = *(v14 + 56);
  sub_24B241DF4(a1, &v19 - v12, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
  sub_24B241DF4(a2, &v13[v15], type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_24B241DF4(v13, v10, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      sub_24B244F5C(&v13[v15], v7, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
      MyUICore35SettingsPeopleRelationshipsProviderC12SubscriptionO10IdentifierV2eeoiySbAG_AGtFZ_0 = _s12FindMyUICore35SettingsPeopleRelationshipsProviderC12SubscriptionO10IdentifierV2eeoiySbAG_AGtFZ_0();
      sub_24B244FC4(v7, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
      sub_24B244FC4(v10, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
      sub_24B244FC4(v13, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
      return MyUICore35SettingsPeopleRelationshipsProviderC12SubscriptionO10IdentifierV2eeoiySbAG_AGtFZ_0 & 1;
    }

    sub_24B244FC4(v10, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
    goto LABEL_6;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_24AFF8258(v13, &qword_27EFCC7A8);
    MyUICore35SettingsPeopleRelationshipsProviderC12SubscriptionO10IdentifierV2eeoiySbAG_AGtFZ_0 = 0;
    return MyUICore35SettingsPeopleRelationshipsProviderC12SubscriptionO10IdentifierV2eeoiySbAG_AGtFZ_0 & 1;
  }

  sub_24B244FC4(v13, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
  MyUICore35SettingsPeopleRelationshipsProviderC12SubscriptionO10IdentifierV2eeoiySbAG_AGtFZ_0 = 1;
  return MyUICore35SettingsPeopleRelationshipsProviderC12SubscriptionO10IdentifierV2eeoiySbAG_AGtFZ_0 & 1;
}

uint64_t sub_24B244F5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B244FC4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24B245024(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t _s12FindMyUICore35SettingsPeopleRelationshipsProviderC17RelationshipStateO09FollowingI0O2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v79 = a1;
  v80 = a2;
  v2 = sub_24B2D24A4();
  v3 = *(v2 - 8);
  v75 = v2;
  v76 = v3;
  MEMORY[0x28223BE20](v2);
  v73 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC88A0);
  v5 = MEMORY[0x28223BE20](v78);
  v74 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v71 = &v69 - v8;
  MEMORY[0x28223BE20](v7);
  v77 = &v69 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8450);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v72 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v69 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v69 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v69 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v69 - v22;
  v24 = type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.FollowingState(0);
  v25 = MEMORY[0x28223BE20](v24);
  v27 = &v69 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v29 = &v69 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCEB30);
  v31 = MEMORY[0x28223BE20](v30 - 8);
  v33 = &v69 - v32;
  v34 = &v69 + *(v31 + 56) - v32;
  sub_24B241DF4(v79, &v69 - v32, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.FollowingState);
  sub_24B241DF4(v80, v34, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.FollowingState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v41 = v18;
    v42 = v77;
    v79 = v21;
    v80 = v23;
    v74 = v15;
    sub_24B241DF4(v33, v29, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.FollowingState);
    v43 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8458) + 48);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_24AFF8258(&v29[v43], &qword_27EFC8450);
LABEL_12:
      sub_24AFF8258(v29, &qword_27EFC8450);
      goto LABEL_13;
    }

    v46 = v80;
    sub_24AFF26A8(&v29[v43], v80);
    v47 = v79;
    sub_24AFF26A8(&v34[v43], v79);
    v48 = *(v78 + 48);
    v49 = v42;
    sub_24AFF26A8(v29, v42);
    sub_24AFF26A8(v34, v42 + v48);
    v51 = v75;
    v50 = v76;
    v52 = *(v76 + 48);
    v53 = v52(v49, 1, v75);
    v70 = v33;
    if (v53 == 1)
    {
      if (v52(v49 + v48, 1, v51) == 1)
      {
        sub_24AFF8258(v49, &qword_27EFC8450);
        goto LABEL_29;
      }
    }

    else
    {
      sub_24AFF249C(v49, v41);
      if (v52(v49 + v48, 1, v51) != 1)
      {
        v58 = v73;
        (*(v50 + 32))(v73, v49 + v48, v51);
        sub_24B2468B0(&qword_27EFC88B0, MEMORY[0x277CC9578]);
        v59 = sub_24B2D52A4();
        v60 = *(v50 + 8);
        v61 = v58;
        v46 = v80;
        v60(v61, v51);
        v60(v41, v51);
        v47 = v79;
        sub_24AFF8258(v49, &qword_27EFC8450);
        if (v59)
        {
LABEL_29:
          v62 = *(v78 + 48);
          v63 = v71;
          sub_24AFF249C(v46, v71);
          sub_24AFF249C(v47, v63 + v62);
          if (v52(v63, 1, v51) == 1)
          {
            sub_24AFF8258(v47, &qword_27EFC8450);
            sub_24AFF8258(v46, &qword_27EFC8450);
            if (v52(v63 + v62, 1, v51) == 1)
            {
              sub_24AFF8258(v63, &qword_27EFC8450);
              v44 = v70;
              goto LABEL_37;
            }
          }

          else
          {
            v64 = v74;
            sub_24AFF249C(v63, v74);
            if (v52(v63 + v62, 1, v51) != 1)
            {
              v65 = v76;
              v66 = v73;
              (*(v76 + 32))(v73, v63 + v62, v51);
              sub_24B2468B0(&qword_27EFC88B0, MEMORY[0x277CC9578]);
              v67 = sub_24B2D52A4();
              v68 = *(v65 + 8);
              v68(v66, v51);
              sub_24AFF8258(v79, &qword_27EFC8450);
              sub_24AFF8258(v80, &qword_27EFC8450);
              v68(v64, v51);
              sub_24AFF8258(v63, &qword_27EFC8450);
              v44 = v70;
              if (v67)
              {
                goto LABEL_37;
              }

              goto LABEL_35;
            }

            sub_24AFF8258(v79, &qword_27EFC8450);
            sub_24AFF8258(v80, &qword_27EFC8450);
            (*(v76 + 8))(v64, v51);
          }

          sub_24AFF8258(v63, &qword_27EFC88A0);
          v44 = v70;
LABEL_35:
          sub_24B244FC4(v44, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.FollowingState);
          return 0;
        }

LABEL_25:
        sub_24AFF8258(v47, &qword_27EFC8450);
        sub_24AFF8258(v46, &qword_27EFC8450);
        sub_24B244FC4(v70, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.FollowingState);
        return 0;
      }

      (*(v50 + 8))(v41, v51);
    }

    sub_24AFF8258(v49, &qword_27EFC88A0);
    goto LABEL_25;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_24B241DF4(v33, v27, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.FollowingState);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v36 = *(v78 + 48);
      v37 = v74;
      sub_24AFF26A8(v27, v74);
      sub_24AFF26A8(v34, v37 + v36);
      v38 = v75;
      v39 = v76;
      v40 = *(v76 + 48);
      if (v40(v37, 1, v75) == 1)
      {
        if (v40(v37 + v36, 1, v38) == 1)
        {
          sub_24AFF8258(v37, &qword_27EFC8450);
LABEL_27:
          v44 = v33;
          goto LABEL_37;
        }
      }

      else
      {
        v54 = v72;
        sub_24AFF249C(v37, v72);
        if (v40(v37 + v36, 1, v38) != 1)
        {
          v55 = v73;
          (*(v39 + 32))(v73, v37 + v36, v38);
          sub_24B2468B0(&qword_27EFC88B0, MEMORY[0x277CC9578]);
          v56 = sub_24B2D52A4();
          v57 = *(v39 + 8);
          v57(v55, v38);
          v57(v54, v38);
          sub_24AFF8258(v37, &qword_27EFC8450);
          if (v56)
          {
            goto LABEL_27;
          }

          goto LABEL_21;
        }

        (*(v39 + 8))(v54, v38);
      }

      sub_24AFF8258(v37, &qword_27EFC88A0);
LABEL_21:
      sub_24B244FC4(v33, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.FollowingState);
      return 0;
    }

    v29 = v27;
    goto LABEL_12;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
LABEL_13:
    sub_24AFF8258(v33, &qword_27EFCEB30);
    return 0;
  }

  v44 = v33;
LABEL_37:
  sub_24B244FC4(v44, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.FollowingState);
  return 1;
}

uint64_t _s12FindMyUICore35SettingsPeopleRelationshipsProviderC17RelationshipStateO08FollowerI0O2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_24B2D24A4();
  v91 = *(v4 - 8);
  v92 = v4;
  MEMORY[0x28223BE20](v4);
  v86 = &v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC88A0);
  v6 = MEMORY[0x28223BE20](v93);
  v89 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v88 = &v80 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v82 = &v80 - v11;
  MEMORY[0x28223BE20](v10);
  v85 = &v80 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8450);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v84 = &v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v80 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v81 = &v80 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v83 = &v80 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v90 = &v80 - v24;
  MEMORY[0x28223BE20](v23);
  v87 = &v80 - v25;
  v26 = type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.FollowerState(0);
  v27 = MEMORY[0x28223BE20](v26);
  v29 = &v80 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v27);
  v32 = &v80 - v31;
  MEMORY[0x28223BE20](v30);
  v34 = &v80 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCEB38);
  v36 = MEMORY[0x28223BE20](v35 - 8);
  v38 = &v80 - v37;
  v39 = &v80 + *(v36 + 56) - v37;
  sub_24B241DF4(a1, &v80 - v37, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.FollowerState);
  sub_24B241DF4(a2, v39, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.FollowerState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_24B241DF4(v38, v34, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.FollowerState);
      v41 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8458) + 48);
      if (swift_getEnumCaseMultiPayload())
      {
        sub_24AFF8258(&v34[v41], &qword_27EFC8450);
LABEL_19:
        sub_24AFF8258(v34, &qword_27EFC8450);
        goto LABEL_20;
      }

      v53 = v87;
      sub_24AFF26A8(&v34[v41], v87);
      v54 = v90;
      sub_24AFF26A8(&v39[v41], v90);
      v55 = *(v93 + 48);
      v56 = v34;
      v57 = v85;
      sub_24AFF26A8(v56, v85);
      sub_24AFF26A8(v39, v57 + v55);
      v59 = v91;
      v58 = v92;
      v60 = *(v91 + 48);
      if (v60(v57, 1, v92) == 1)
      {
        if (v60(v57 + v55, 1, v58) == 1)
        {
          sub_24AFF8258(v57, &qword_27EFC8450);
LABEL_38:
          v74 = *(v93 + 48);
          v75 = v82;
          sub_24AFF249C(v53, v82);
          sub_24AFF249C(v54, v75 + v74);
          if (v60(v75, 1, v58) == 1)
          {
            sub_24AFF8258(v54, &qword_27EFC8450);
            sub_24AFF8258(v53, &qword_27EFC8450);
            if (v60(v75 + v74, 1, v58) == 1)
            {
              v51 = v75;
              goto LABEL_14;
            }

            goto LABEL_43;
          }

          v76 = v81;
          sub_24AFF249C(v75, v81);
          if (v60(v75 + v74, 1, v58) == 1)
          {
            sub_24AFF8258(v90, &qword_27EFC8450);
            sub_24AFF8258(v53, &qword_27EFC8450);
            (*(v59 + 8))(v76, v58);
LABEL_43:
            v62 = &qword_27EFC88A0;
            v63 = v75;
            goto LABEL_44;
          }

          v77 = v86;
          (*(v59 + 32))(v86, v75 + v74, v58);
          sub_24B2468B0(&qword_27EFC88B0, MEMORY[0x277CC9578]);
          v78 = sub_24B2D52A4();
          v79 = *(v59 + 8);
          v79(v77, v58);
          sub_24AFF8258(v90, &qword_27EFC8450);
          sub_24AFF8258(v53, &qword_27EFC8450);
          v79(v76, v58);
          sub_24AFF8258(v75, &qword_27EFC8450);
          if (v78)
          {
            goto LABEL_16;
          }

LABEL_45:
          sub_24B244FC4(v38, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.FollowerState);
          return 0;
        }
      }

      else
      {
        v64 = v83;
        sub_24AFF249C(v57, v83);
        if (v60(v57 + v55, 1, v58) != 1)
        {
          v70 = v64;
          v71 = v86;
          (*(v59 + 32))(v86, v57 + v55, v58);
          sub_24B2468B0(&qword_27EFC88B0, MEMORY[0x277CC9578]);
          LODWORD(v89) = sub_24B2D52A4();
          v72 = *(v59 + 8);
          v72(v71, v58);
          v73 = v70;
          v53 = v87;
          v72(v73, v58);
          v54 = v90;
          sub_24AFF8258(v57, &qword_27EFC8450);
          if (v89)
          {
            goto LABEL_38;
          }

          goto LABEL_32;
        }

        (*(v59 + 8))(v64, v58);
      }

      sub_24AFF8258(v57, &qword_27EFC88A0);
LABEL_32:
      sub_24AFF8258(v54, &qword_27EFC8450);
      v63 = v53;
      v62 = &qword_27EFC8450;
      goto LABEL_44;
    }

    sub_24B241DF4(v38, v32, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.FollowerState);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v34 = v32;
      goto LABEL_19;
    }

    v47 = *(v93 + 48);
    v43 = v88;
    sub_24AFF26A8(v32, v88);
    sub_24AFF26A8(v39, v43 + v47);
    v49 = v91;
    v48 = v92;
    v50 = *(v91 + 48);
    if (v50(v43, 1, v92) == 1)
    {
      if (v50(v43 + v47, 1, v48) == 1)
      {
        goto LABEL_13;
      }

      goto LABEL_28;
    }

    sub_24AFF249C(v43, v18);
    if (v50(v43 + v47, 1, v48) == 1)
    {
      (*(v49 + 8))(v18, v48);
      goto LABEL_28;
    }

    v68 = v86;
    (*(v49 + 32))(v86, v43 + v47, v48);
    sub_24B2468B0(&qword_27EFC88B0, MEMORY[0x277CC9578]);
    v66 = sub_24B2D52A4();
    v69 = *(v49 + 8);
    v69(v68, v48);
    v69(v18, v48);
    goto LABEL_35;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_24B241DF4(v38, v29, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.FollowerState);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      v34 = v29;
      goto LABEL_19;
    }

    v42 = *(v93 + 48);
    v43 = v89;
    sub_24AFF26A8(v29, v89);
    sub_24AFF26A8(v39, v43 + v42);
    v45 = v91;
    v44 = v92;
    v46 = *(v91 + 48);
    if (v46(v43, 1, v92) == 1)
    {
      if (v46(v43 + v42, 1, v44) == 1)
      {
LABEL_13:
        v51 = v43;
LABEL_14:
        sub_24AFF8258(v51, &qword_27EFC8450);
LABEL_16:
        sub_24B244FC4(v38, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.FollowerState);
        return 1;
      }

LABEL_28:
      v62 = &qword_27EFC88A0;
      v63 = v43;
LABEL_44:
      sub_24AFF8258(v63, v62);
      goto LABEL_45;
    }

    v61 = v84;
    sub_24AFF249C(v43, v84);
    if (v46(v43 + v42, 1, v44) == 1)
    {
      (*(v45 + 8))(v61, v44);
      goto LABEL_28;
    }

    v65 = v86;
    (*(v45 + 32))(v86, v43 + v42, v44);
    sub_24B2468B0(&qword_27EFC88B0, MEMORY[0x277CC9578]);
    v66 = sub_24B2D52A4();
    v67 = *(v45 + 8);
    v67(v65, v44);
    v67(v61, v44);
LABEL_35:
    sub_24AFF8258(v43, &qword_27EFC8450);
    if (v66)
    {
      goto LABEL_16;
    }

    goto LABEL_45;
  }

  if (swift_getEnumCaseMultiPayload() == 3)
  {
    goto LABEL_16;
  }

LABEL_20:
  sub_24AFF8258(v38, &qword_27EFCEB38);
  return 0;
}

uint64_t _s12FindMyUICore35SettingsPeopleRelationshipsProviderC17RelationshipStateO06LoadedI0V2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((_s12FindMyUICore35SettingsPeopleRelationshipsProviderC12SubscriptionO10IdentifierV2eeoiySbAG_AGtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.LoadedState(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    v10 = *v6 == *v8 && v7 == v9;
    if (!v10 && (sub_24B2D6004() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  if (_s12FindMyUICore35SettingsPeopleRelationshipsProviderC17RelationshipStateO08FollowerI0O2eeoiySbAG_AGtFZ_0(a1 + v4[6], a2 + v4[6]) & 1) != 0 && (_s12FindMyUICore35SettingsPeopleRelationshipsProviderC17RelationshipStateO09FollowingI0O2eeoiySbAG_AGtFZ_0(a1 + v4[7], a2 + v4[7]))
  {
    v11 = v4[8];
    v12 = (a1 + v11);
    v13 = *(a1 + v11 + 8);
    v14 = (a2 + v11);
    v15 = *(a2 + v11 + 8);
    if (v13)
    {
      if (v15)
      {
        return 1;
      }
    }

    else
    {
      if (*v12 != *v14)
      {
        v15 = 1;
      }

      if ((v15 & 1) == 0)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_24B2468B0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s12FindMyUICore35SettingsPeopleRelationshipsProviderC17RelationshipStateO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.LoadedState(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v21 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE250);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v21 - v14;
  v17 = *(v16 + 56);
  sub_24B241DF4(a1, &v21 - v14, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState);
  sub_24B241DF4(a2, &v15[v17], type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_24B241DF4(v15, v12, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v19 = *v12 ^ v15[v17];
      sub_24B244FC4(v15, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState);
      MyUICore35SettingsPeopleRelationshipsProviderC17RelationshipStateO06LoadedI0V2eeoiySbAG_AGtFZ_0 = v19 ^ 1;
      return MyUICore35SettingsPeopleRelationshipsProviderC17RelationshipStateO06LoadedI0V2eeoiySbAG_AGtFZ_0 & 1;
    }

LABEL_7:
    sub_24AFF8258(v15, &qword_27EFCE250);
    MyUICore35SettingsPeopleRelationshipsProviderC17RelationshipStateO06LoadedI0V2eeoiySbAG_AGtFZ_0 = 0;
    return MyUICore35SettingsPeopleRelationshipsProviderC17RelationshipStateO06LoadedI0V2eeoiySbAG_AGtFZ_0 & 1;
  }

  sub_24B241DF4(v15, v9, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_24B244FC4(v9, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.LoadedState);
    goto LABEL_7;
  }

  sub_24B244F5C(&v15[v17], v6, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.LoadedState);
  MyUICore35SettingsPeopleRelationshipsProviderC17RelationshipStateO06LoadedI0V2eeoiySbAG_AGtFZ_0 = _s12FindMyUICore35SettingsPeopleRelationshipsProviderC17RelationshipStateO06LoadedI0V2eeoiySbAG_AGtFZ_0(v9, v6);
  sub_24B244FC4(v6, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.LoadedState);
  sub_24B244FC4(v9, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.LoadedState);
  sub_24B244FC4(v15, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState);
  return MyUICore35SettingsPeopleRelationshipsProviderC17RelationshipStateO06LoadedI0V2eeoiySbAG_AGtFZ_0 & 1;
}

unint64_t sub_24B246D1C()
{
  result = qword_27EFCEA98;
  if (!qword_27EFCEA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCEA98);
  }

  return result;
}

uint64_t sub_24B246E28()
{
  v0 = type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

void sub_24B246EFC()
{
  type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier(319);
  if (v0 <= 0x3F)
  {
    sub_24AFF7E78(319, &qword_27EFC7900);
    if (v1 <= 0x3F)
    {
      type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.FollowerState(319);
      if (v2 <= 0x3F)
      {
        type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.FollowingState(319);
        if (v3 <= 0x3F)
        {
          sub_24AFF7E78(319, &qword_27EFCC5D8);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_24B247008()
{
  result = type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipStreamChange.Friendship(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

void sub_24B247094()
{
  type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier(319);
  if (v0 <= 0x3F)
  {
    sub_24AFF7E78(319, &qword_27EFC7900);
    if (v1 <= 0x3F)
    {
      sub_24AFF7E78(319, &qword_27EFCC5D8);
      if (v2 <= 0x3F)
      {
        sub_24AFF7E20();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_24B247180()
{
  sub_24B042588();
  if (v0 <= 0x3F)
  {
    sub_24B0425FC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t sub_24B247220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t SettingsProvider.storage.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_24B247514();
  sub_24B2D2584();

  v3 = OBJC_IVAR____TtC12FindMyUICore16SettingsProvider__storage;
  swift_beginAccess();
  return sub_24B008890(v5 + v3, a1, &qword_27EFCE6A0);
}

uint64_t sub_24B24734C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24B247514();
  sub_24B2D2584();

  v4 = OBJC_IVAR____TtC12FindMyUICore16SettingsProvider__storage;
  swift_beginAccess();
  return sub_24B008890(v3 + v4, a2, &qword_27EFCE6A0);
}

uint64_t sub_24B2473F4(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE6A0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9[-v5];
  sub_24B008890(a1, &v9[-v5], &qword_27EFCE6A0);
  v7 = *a2;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  v12 = v7;
  sub_24B247514();
  sub_24B2D2574();

  return sub_24AFF8258(v6, &qword_27EFCE6A0);
}

unint64_t sub_24B247514()
{
  result = qword_27EFCE6B0;
  if (!qword_27EFCE6B0)
  {
    type metadata accessor for SettingsProvider();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCE6B0);
  }

  return result;
}

uint64_t type metadata accessor for SettingsProvider()
{
  result = qword_27EFCEB68;
  if (!qword_27EFCEB68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SettingsProvider.storage.setter(uint64_t a1)
{
  swift_getKeyPath();
  sub_24B247514();
  sub_24B2D2574();

  return sub_24AFF8258(a1, &qword_27EFCE6A0);
}

uint64_t sub_24B247668(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC12FindMyUICore16SettingsProvider__storage;
  swift_beginAccess();
  sub_24B24AC50(a2, a1 + v4);
  return swift_endAccess();
}

void (*SettingsProvider.storage.modify(uint64_t *a1))(void **a1)
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
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC12FindMyUICore16SettingsProvider___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_24B247514();
  sub_24B2D2584();

  *v4 = v1;
  swift_getKeyPath();
  sub_24B2D25A4();

  swift_beginAccess();
  return sub_24B247808;
}

void sub_24B247808(void **a1)
{
  v1 = *a1;
  swift_endAccess();
  *v1 = v1[3];
  swift_getKeyPath();
  sub_24B2D2594();

  free(v1);
}

uint64_t sub_24B24788C()
{
  v1 = v0;
  v2 = sub_24B2D3184();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v24 = v0;
  sub_24B247514();
  sub_24B2D2584();

  v6 = OBJC_IVAR____TtC12FindMyUICore16SettingsProvider__storage;
  swift_beginAccess();
  (*(v3 + 16))(v5, v1 + v6, v2);

  v7 = sub_24B2D3164();
  v8 = sub_24B2D5934();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v23 = v2;
    v10 = v9;
    v22 = swift_slowAlloc();
    v30 = v22;
    *v10 = 136315138;
    swift_getKeyPath();
    v24 = v1;
    sub_24B2D2584();

    v11 = *(v1 + OBJC_IVAR____TtC12FindMyUICore16SettingsProvider__data + 8);
    v12 = *(v1 + OBJC_IVAR____TtC12FindMyUICore16SettingsProvider__data + 16);
    v13 = *(v1 + OBJC_IVAR____TtC12FindMyUICore16SettingsProvider__data + 24);
    v14 = *(v1 + OBJC_IVAR____TtC12FindMyUICore16SettingsProvider__data + 34);
    v15 = *(v1 + OBJC_IVAR____TtC12FindMyUICore16SettingsProvider__data + 32);
    v24 = *(v1 + OBJC_IVAR____TtC12FindMyUICore16SettingsProvider__data);
    v25 = v11;
    v26 = v12;
    v27 = v13;
    v29 = v14;
    v28 = v15;
    sub_24B247D44(v24, v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCEB90);
    v16 = sub_24B2D53C4();
    v18 = sub_24AFF321C(v16, v17, &v30);

    *(v10 + 4) = v18;
    _os_log_impl(&dword_24AFD2000, v7, v8, "SettingsProvider: data - %s", v10, 0xCu);
    v19 = v22;
    __swift_destroy_boxed_opaque_existential_0(v22);
    MEMORY[0x24C23D530](v19, -1, -1);
    MEMORY[0x24C23D530](v10, -1, -1);

    return (*(v3 + 8))(v5, v23);
  }

  else
  {

    return (*(v3 + 8))(v5, v2);
  }
}

uint64_t SettingsProvider.data.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_24B247514();
  sub_24B2D2584();

  v3 = *(v1 + OBJC_IVAR____TtC12FindMyUICore16SettingsProvider__data);
  v4 = *(v1 + OBJC_IVAR____TtC12FindMyUICore16SettingsProvider__data + 8);
  v5 = *(v1 + OBJC_IVAR____TtC12FindMyUICore16SettingsProvider__data + 16);
  v6 = *(v1 + OBJC_IVAR____TtC12FindMyUICore16SettingsProvider__data + 24);
  v7 = *(v1 + OBJC_IVAR____TtC12FindMyUICore16SettingsProvider__data + 34);
  v8 = *(v1 + OBJC_IVAR____TtC12FindMyUICore16SettingsProvider__data + 32);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 34) = v7;
  *(a1 + 32) = v8;
  return sub_24B247D44(v3, v4);
}

uint64_t sub_24B247BF4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24B247514();
  sub_24B2D2584();

  v4 = *(v3 + OBJC_IVAR____TtC12FindMyUICore16SettingsProvider__data);
  v5 = *(v3 + OBJC_IVAR____TtC12FindMyUICore16SettingsProvider__data + 8);
  v6 = *(v3 + OBJC_IVAR____TtC12FindMyUICore16SettingsProvider__data + 16);
  v7 = *(v3 + OBJC_IVAR____TtC12FindMyUICore16SettingsProvider__data + 24);
  v8 = *(v3 + OBJC_IVAR____TtC12FindMyUICore16SettingsProvider__data + 34);
  v9 = *(v3 + OBJC_IVAR____TtC12FindMyUICore16SettingsProvider__data + 32);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 34) = v8;
  *(a2 + 32) = v9;
  return sub_24B247D44(v4, v5);
}

uint64_t sub_24B247C98()
{
  swift_getKeyPath();
  sub_24B247514();
  sub_24B2D2574();
}

uint64_t sub_24B247D44(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
    return sub_24B247D54(a1, a2);
  }

  return a1;
}

uint64_t sub_24B247D54(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_24B247D98(uint64_t a1, uint64_t a2)
{
  v2 = a1 + OBJC_IVAR____TtC12FindMyUICore16SettingsProvider__data;
  v3 = *(a1 + OBJC_IVAR____TtC12FindMyUICore16SettingsProvider__data);
  v4 = *(a1 + OBJC_IVAR____TtC12FindMyUICore16SettingsProvider__data + 8);
  v5 = *(a2 + 16);
  *v2 = *a2;
  *(v2 + 16) = v5;
  *(v2 + 31) = *(a2 + 31);
  sub_24B008890(a2, v7, &qword_27EFCEB90);
  sub_24B24A774(v3, v4);
  return sub_24B24788C();
}

uint64_t sub_24B247E4C()
{
  swift_getKeyPath();
  sub_24B247514();
  sub_24B2D2584();
}

uint64_t sub_24B247EC8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24B247514();
  sub_24B2D2584();

  *a2 = *(v3 + OBJC_IVAR____TtC12FindMyUICore16SettingsProvider__valuePublisher);
}

uint64_t sub_24B247F4C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12FindMyUICore16SettingsProvider__valuePublisher;
  if (!*(v1 + OBJC_IVAR____TtC12FindMyUICore16SettingsProvider__valuePublisher))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24B247514();
    sub_24B2D2574();
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  v4 = sub_24B2D5754();

  if ((v4 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v1 + v3) = a1;
}

uint64_t SettingsProvider.__allocating_init(dependencies:)(uint64_t a1)
{
  v2 = swift_allocObject();
  SettingsProvider.init(dependencies:)(a1);
  return v2;
}

uint64_t SettingsProvider.init(dependencies:)(uint64_t a1)
{
  v2 = v1;
  *&v32 = a1;
  v3 = sub_24B2D2504();
  MEMORY[0x28223BE20](v3 - 8);
  v34 = v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDB58);
  MEMORY[0x28223BE20](v5 - 8);
  v33 = v30 - v6;
  v7 = sub_24B2D3184();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v30 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE6A0);
  v15 = (v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = v30 - v16;
  v18 = v15[11];
  *&v17[v18] = sub_24B195CD0(MEMORY[0x277D84F90]);
  *&v17[v15[12]] = MEMORY[0x277D84FA0];
  v17[v15[13]] = 0;
  sub_24B2D3174();
  v19 = *(v8 + 16);
  v30[1] = "tingsProvider.swift";
  v20 = *(v32 + 16);
  v31 = *v32;
  v32 = v20;
  v19(v17, v13, v7);
  v21 = *(v8 + 32);
  v21(v10, v13, v7);
  v22 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v23 = swift_allocObject();
  v21((v23 + v22), v10, v7);
  v24 = &v17[v15[14]];
  *v24 = sub_24B24A4E0;
  v24[1] = v23;
  sub_24B24A540(v17, v2 + OBJC_IVAR____TtC12FindMyUICore16SettingsProvider__storage);
  v25 = OBJC_IVAR____TtC12FindMyUICore16SettingsProvider_taskQueue;
  sub_24B2D12D4();
  v26 = sub_24B2D1294();
  (*(*(v26 - 8) + 56))(v33, 1, 1, v26);
  sub_24B2D24F4();
  *(v2 + v25) = sub_24B2D12B4();
  v27 = v2 + OBJC_IVAR____TtC12FindMyUICore16SettingsProvider__data;
  *v27 = xmmword_24B2E4D60;
  *(v27 + 31) = 0;
  *(v27 + 16) = 0;
  *(v27 + 24) = 0;
  *(v2 + OBJC_IVAR____TtC12FindMyUICore16SettingsProvider__valuePublisher) = 0;
  sub_24B2D25B4();
  v28 = v32;
  *(v2 + 16) = v31;
  *(v2 + 32) = v28;
  return v2;
}

uint64_t sub_24B2484B0()
{
  v1[15] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8580);
  v1[16] = swift_task_alloc();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCEB80);
  v1[17] = v2;
  v3 = *(v2 - 8);
  v1[18] = v3;
  v1[19] = *(v3 + 64);
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = sub_24B2D5694();
  v1[23] = sub_24B2D5684();
  v5 = sub_24B2D5604();
  v1[24] = v5;
  v1[25] = v4;

  return MEMORY[0x2822009F8](sub_24B248600, v5, v4);
}

uint64_t sub_24B248600()
{
  v1 = v0[15];
  swift_getKeyPath();
  v0[12] = v1;
  v0[26] = OBJC_IVAR____TtC12FindMyUICore16SettingsProvider___observationRegistrar;
  v0[27] = sub_24B247514();
  sub_24B2D2584();

  v2 = OBJC_IVAR____TtC12FindMyUICore16SettingsProvider__valuePublisher;
  if (*(v1 + OBJC_IVAR____TtC12FindMyUICore16SettingsProvider__valuePublisher) && (, sub_24B2D5764(), , *(v1 + v2)))
  {
    v3 = v0[15];
    swift_getKeyPath();
    v4 = swift_task_alloc();
    *(v4 + 16) = v3;
    *(v4 + 24) = 0;
    v0[14] = v3;
    sub_24B2D2574();
  }

  else
  {
    *(v1 + v2) = 0;
  }

  v7 = (*(v0[15] + 16) + **(v0[15] + 16));
  v5 = swift_task_alloc();
  v0[28] = v5;
  *v5 = v0;
  v5[1] = sub_24B248820;

  return v7(v0 + 7);
}

uint64_t sub_24B248820()
{
  v2 = *v1;
  *(*v1 + 232) = v0;

  v3 = *(v2 + 200);
  v4 = *(v2 + 192);
  if (v0)
  {
    v5 = sub_24B248E70;
  }

  else
  {
    v5 = sub_24B24895C;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24B24895C()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 64);
  v10 = *(v0 + 56);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v5 = *(v0 + 90) != 0;
  *(v0 + 16) = v10;
  *(v0 + 24) = v2;
  *(v0 + 32) = v3;
  *(v0 + 40) = v4;
  *(v0 + 48) = *(v0 + 88);
  *(v0 + 50) = v5;
  swift_getKeyPath();
  v6 = swift_task_alloc();
  *(v6 + 16) = v1;
  *(v6 + 24) = v0 + 16;
  *(v0 + 104) = v1;
  sub_24B2D2574();
  sub_24B24A784(v10, v2);

  v11 = (*(v1 + 32) + **(v1 + 32));
  v7 = swift_task_alloc();
  *(v0 + 240) = v7;
  *v7 = v0;
  v7[1] = sub_24B248B3C;
  v8 = *(v0 + 168);

  return v11(v8);
}

uint64_t sub_24B248B3C()
{
  v2 = *v1;
  *(*v1 + 248) = v0;

  v3 = *(v2 + 200);
  v4 = *(v2 + 192);
  if (v0)
  {
    v5 = sub_24B248EF8;
  }

  else
  {
    v5 = sub_24B248C78;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24B248C78()
{
  v1 = v0[20];
  v2 = v0[21];
  v4 = v0[18];
  v3 = v0[19];
  v5 = v0[16];
  v6 = v0[17];
  v17 = v5;

  v7 = sub_24B2D56D4();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  v8 = swift_allocObject();
  swift_weakInit();
  (*(v4 + 16))(v1, v2, v6);

  v9 = sub_24B2D5684();
  v10 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v11 = (v3 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  *(v12 + 16) = v9;
  *(v12 + 24) = v13;
  (*(v4 + 32))(v12 + v10, v1, v6);
  *(v12 + v11) = v8;

  v14 = sub_24B00A9A4(0, 0, v17, &unk_24B2F3190, v12);
  sub_24B247F4C(v14);
  (*(v4 + 8))(v2, v6);

  v15 = v0[1];

  return v15();
}

uint64_t sub_24B248E70()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B248EF8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B248F80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[26] = a4;
  v5[27] = a5;
  v6 = sub_24B2D3184();
  v5[28] = v6;
  v5[29] = *(v6 - 8);
  v5[30] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCEB88);
  v5[31] = v7;
  v5[32] = *(v7 - 8);
  v5[33] = swift_task_alloc();
  v5[34] = sub_24B2D5694();
  v5[35] = sub_24B2D5684();
  v9 = sub_24B2D5604();
  v5[36] = v9;
  v5[37] = v8;

  return MEMORY[0x2822009F8](sub_24B2490E0, v9, v8);
}

uint64_t sub_24B2490E0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCEB80);
  sub_24B2D5724();
  swift_beginAccess();
  v0[38] = 0;
  v1 = sub_24B2D5684();
  v0[39] = v1;
  v2 = swift_task_alloc();
  v0[40] = v2;
  *v2 = v0;
  v2[1] = sub_24B2491E0;
  v3 = v0[31];
  v4 = MEMORY[0x277D85700];

  return MEMORY[0x2822003E8](v0 + 7, v1, v4, v3);
}

uint64_t sub_24B2491E0()
{
  v1 = *v0;

  v2 = *(v1 + 296);
  v3 = *(v1 + 288);

  return MEMORY[0x2822009F8](sub_24B249324, v3, v2);
}

uint64_t sub_24B249324()
{
  v52 = v0;
  v1 = *(v0 + 56);
  if (*(v0 + 90) == 255)
  {
    (*(*(v0 + 256) + 8))(*(v0 + 264), *(v0 + 248));

LABEL_7:

    v24 = *(v0 + 8);

    return v24();
  }

  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v5 = *(v0 + 88) | (*(v0 + 90) << 16);
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    (*(*(v0 + 256) + 8))(*(v0 + 264), *(v0 + 248));

    sub_24B24AAD8(v1, v2, v3, v4, v5);
    goto LABEL_7;
  }

  v7 = Strong;
  v47 = *(v0 + 240);
  v50 = v1;
  v8 = *(v0 + 232);
  v43 = *(v0 + 224);
  swift_getKeyPath();
  v49 = v3;
  *(v0 + 184) = v7;
  sub_24B247514();
  sub_24B2D2584();

  v9 = OBJC_IVAR____TtC12FindMyUICore16SettingsProvider__storage;
  swift_beginAccess();
  v46 = v7;
  (*(v8 + 16))(v47, v7 + v9, v43);
  v10 = v50;
  v11 = v2;
  sub_24B24AAFC(v50, v2, v3, v4, v5, BYTE2(v5) & 1);
  v12 = sub_24B2D3164();
  v13 = sub_24B2D5934();
  sub_24B24AAD8(v50, v11, v3, v4, v5);
  v42 = v13;
  v14 = os_log_type_enabled(v12, v13);
  v15 = *(v0 + 232);
  v16 = *(v0 + 240);
  v48 = *(v0 + 224);
  v44 = v4;
  v45 = v11;
  if (v14)
  {
    v41 = *(v0 + 240);
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v19 = v3;
    v20 = v18;
    v51 = v18;
    *v17 = 136315138;
    *(v0 + 96) = v50;
    *(v0 + 104) = v11;
    *(v0 + 112) = v19;
    *(v0 + 120) = v4;
    *(v0 + 128) = v5;
    *(v0 + 130) = BYTE2(v5) & 1;
    sub_24B24AAFC(v50, v11, v19, v4, v5, BYTE2(v5) & 1);
    v21 = sub_24B2D53C4();
    v23 = sub_24AFF321C(v21, v22, &v51);

    *(v17 + 4) = v23;
    v10 = v50;
    _os_log_impl(&dword_24AFD2000, v12, v42, "SettingsProvider: change - %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x24C23D530](v20, -1, -1);
    MEMORY[0x24C23D530](v17, -1, -1);

    (*(v15 + 8))(v41, v48);
  }

  else
  {

    (*(v15 + 8))(v16, v48);
  }

  swift_getKeyPath();
  *(v0 + 192) = v46;
  sub_24B2D2584();

  v26 = *(v46 + OBJC_IVAR____TtC12FindMyUICore16SettingsProvider__data);
  v27 = *(v46 + OBJC_IVAR____TtC12FindMyUICore16SettingsProvider__data + 8);
  v28 = *(v46 + OBJC_IVAR____TtC12FindMyUICore16SettingsProvider__data + 32) | (*(v46 + OBJC_IVAR____TtC12FindMyUICore16SettingsProvider__data + 34) << 16);
  if ((v5 & 0x10000) != 0)
  {
    if (v27 == 1)
    {
      v10 = 0;
    }

    else
    {
      v10 = *(v46 + OBJC_IVAR____TtC12FindMyUICore16SettingsProvider__data);
    }

    if (v27 == 1)
    {
      v29 = 0;
    }

    else
    {
      v29 = *(v46 + OBJC_IVAR____TtC12FindMyUICore16SettingsProvider__data + 8);
    }

    if (v27 == 1)
    {
      v30 = 0;
    }

    else
    {
      v30 = *(v46 + OBJC_IVAR____TtC12FindMyUICore16SettingsProvider__data + 16);
    }

    v49 = v30;
    if (v27 == 1)
    {
      v31 = 0;
    }

    else
    {
      v31 = *(v46 + OBJC_IVAR____TtC12FindMyUICore16SettingsProvider__data + 24);
    }

    v44 = v31;
    v45 = v29;
    if (v27 == 1)
    {
      v32 = 0;
    }

    else
    {
      v32 = *(v46 + OBJC_IVAR____TtC12FindMyUICore16SettingsProvider__data + 32);
    }

    sub_24B247D44(v26, v27);
    sub_24B24A784(0, 0);
    v33 = v32;
    if (v50)
    {
      goto LABEL_28;
    }

LABEL_32:
    v34 = 0;
    goto LABEL_33;
  }

  sub_24B247D44(v26, v27);
  sub_24B24A784(0, 0);
  if (v27 == 1)
  {
    v34 = 0;
    v33 = v5;
    goto LABEL_33;
  }

  sub_24B24A774(v26, v27);
  v33 = v5;
  if ((v28 & 0x10000) == 0)
  {
    goto LABEL_32;
  }

LABEL_28:
  v34 = 0x10000;
LABEL_33:
  v35 = *(v0 + 304);
  *(v0 + 16) = v10;
  *(v0 + 24) = v45;
  *(v0 + 32) = v49;
  *(v0 + 40) = v44;
  *(v0 + 50) = BYTE2(v34);
  *(v0 + 48) = v34 | v33;
  swift_getKeyPath();
  v36 = swift_task_alloc();
  *(v36 + 16) = v46;
  *(v36 + 24) = v0 + 16;
  *(v0 + 200) = v46;
  sub_24B2D2574();
  sub_24B24A784(v10, v45);

  *(v0 + 304) = v35;
  v37 = sub_24B2D5684();
  *(v0 + 312) = v37;
  v38 = swift_task_alloc();
  *(v0 + 320) = v38;
  *v38 = v0;
  v38[1] = sub_24B2491E0;
  v39 = *(v0 + 248);
  v40 = MEMORY[0x277D85700];

  return MEMORY[0x2822003E8](v0 + 56, v37, v40, v39);
}

uint64_t sub_24B249918(char a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a3;
  if (a1)
  {
    v4 = swift_task_alloc();
    v3[3] = v4;
    *v4 = v3;
    v4[1] = sub_24B2499E4;

    return sub_24B2484B0();
  }

  else
  {
    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_24B2499E4()
{
  v2 = *v1;
  *(v2 + 32) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24B249B18, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_24B249B18()
{
  v15 = v0;
  v1 = *(v0 + 32);
  v2 = v1;
  v3 = sub_24B2D3164();
  v4 = sub_24B2D5914();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 32);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v7 = 136315394;
    *(v7 + 4) = sub_24AFF321C(0xD00000000000003ALL, 0x800000024B2DCF70, &v14);
    *(v7 + 12) = 2114;
    v10 = v6;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v11;
    *v8 = v11;
    _os_log_impl(&dword_24AFD2000, v3, v4, "SettingsProvider: %s - error: %{public}@", v7, 0x16u);
    sub_24AFF8258(v8, &qword_27EFC7BB8);
    MEMORY[0x24C23D530](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x24C23D530](v9, -1, -1);
    MEMORY[0x24C23D530](v7, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t SettingsProvider.didRemoveUniqueSubscriptions(removedSubscriptions:isEmpty:)(uint64_t a1, char a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  *(v4 + 24) = v2;

  sub_24B2D12C4();
}

uint64_t sub_24B249D70(char a1, uint64_t a2)
{
  *(v2 + 24) = a2;
  *(v2 + 40) = a1;
  return MEMORY[0x2822009F8](sub_24B249D94, 0, 0);
}

uint64_t sub_24B249D94()
{
  if (*(v0 + 40) == 1)
  {
    sub_24B2D5694();
    *(v0 + 32) = sub_24B2D5684();
    v2 = sub_24B2D5604();

    return MEMORY[0x2822009F8](sub_24B249E68, v2, v1);
  }

  else
  {
    v3 = *(v0 + 8);

    return v3();
  }
}

uint64_t sub_24B249E68()
{
  v1 = v0[3];

  swift_getKeyPath();
  v0[2] = v1;
  sub_24B247514();
  sub_24B2D2584();

  v2 = OBJC_IVAR____TtC12FindMyUICore16SettingsProvider__valuePublisher;
  if (*(v1 + OBJC_IVAR____TtC12FindMyUICore16SettingsProvider__valuePublisher) && (, sub_24B2D5764(), , *(v1 + v2)))
  {
    v3 = v0[3];
    swift_getKeyPath();
    v4 = swift_task_alloc();
    *(v4 + 16) = v3;
    *(v4 + 24) = 0;
    v0[2] = v3;
    sub_24B2D2574();
  }

  else
  {
    *(v1 + v2) = 0;
  }

  v5 = v0[1];

  return v5();
}

uint64_t SettingsProvider.deinit()
{

  sub_24AFF8258(v0 + OBJC_IVAR____TtC12FindMyUICore16SettingsProvider__storage, &qword_27EFCE6A0);

  sub_24B24A774(*(v0 + OBJC_IVAR____TtC12FindMyUICore16SettingsProvider__data), *(v0 + OBJC_IVAR____TtC12FindMyUICore16SettingsProvider__data + 8));

  v1 = OBJC_IVAR____TtC12FindMyUICore16SettingsProvider___observationRegistrar;
  v2 = sub_24B2D25C4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t SettingsProvider.__deallocating_deinit()
{

  sub_24AFF8258(v0 + OBJC_IVAR____TtC12FindMyUICore16SettingsProvider__storage, &qword_27EFCE6A0);

  sub_24B24A774(*(v0 + OBJC_IVAR____TtC12FindMyUICore16SettingsProvider__data), *(v0 + OBJC_IVAR____TtC12FindMyUICore16SettingsProvider__data + 8));

  v1 = OBJC_IVAR____TtC12FindMyUICore16SettingsProvider___observationRegistrar;
  v2 = sub_24B2D25C4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_24B24A1D8@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_24B247514();
  sub_24B2D2584();

  v3 = OBJC_IVAR____TtC12FindMyUICore16SettingsProvider__storage;
  swift_beginAccess();
  return sub_24B008890(v5 + v3, a1, &qword_27EFCE6A0);
}

uint64_t sub_24B24A280(uint64_t a1)
{
  swift_getKeyPath();
  sub_24B247514();
  sub_24B2D2574();

  return sub_24AFF8258(a1, &qword_27EFCE6A0);
}

void (*sub_24B24A330(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = SettingsProvider.storage.modify(v2);
  return sub_24B0E122C;
}

uint64_t sub_24B24A3A8(uint64_t a1, char a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  *(v4 + 24) = v2;

  sub_24B2D12C4();
}

uint64_t sub_24B24A43C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_getKeyPath();
  sub_24B247514();
  sub_24B2D2584();

  v4 = *(v3 + OBJC_IVAR____TtC12FindMyUICore16SettingsProvider__data);
  v5 = *(v3 + OBJC_IVAR____TtC12FindMyUICore16SettingsProvider__data + 8);
  v6 = *(v3 + OBJC_IVAR____TtC12FindMyUICore16SettingsProvider__data + 16);
  v7 = *(v3 + OBJC_IVAR____TtC12FindMyUICore16SettingsProvider__data + 24);
  v8 = *(v3 + OBJC_IVAR____TtC12FindMyUICore16SettingsProvider__data + 34);
  v9 = *(v3 + OBJC_IVAR____TtC12FindMyUICore16SettingsProvider__data + 32);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 34) = v8;
  *(a1 + 32) = v9;
  return sub_24B247D44(v4, v5);
}

void sub_24B24A4E0()
{
  sub_24B2D3184();

  sub_24B24AB4C();
}

uint64_t sub_24B24A540(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE6A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B24A5B0(char a1)
{
  v2 = v1;
  v4 = sub_24B2D3184();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  swift_getKeyPath();
  v12 = v1;
  sub_24B247514();
  sub_24B2D2584();

  v7 = OBJC_IVAR____TtC12FindMyUICore16SettingsProvider__storage;
  swift_beginAccess();
  (*(v5 + 16))(&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v2 + v7, v4);
  v8 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = v2;
  (*(v5 + 32))(v9 + v8, &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);

  sub_24B2D12C4();
}

uint64_t sub_24B24A774(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
    return sub_24B24A784(a1, a2);
  }

  return a1;
}

uint64_t sub_24B24A784(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_24B24A7CC(uint64_t a1)
{
  result = sub_24B247514();
  *(a1 + 8) = result;
  return result;
}

void sub_24B24A7FC()
{
  sub_24B24A91C();
  if (v0 <= 0x3F)
  {
    sub_24B2D25C4();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_24B24A91C()
{
  if (!qword_27EFCEB78)
  {
    sub_24B1D23E0();
    v0 = type metadata accessor for SettingsSubscriptionManagerStorage();
    if (!v1)
    {
      atomic_store(v0, &qword_27EFCEB78);
    }
  }
}

uint64_t sub_24B24A994(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCEB80) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24AFFD370;

  return sub_24B248F80(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_24B24AAD8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (BYTE2(a5) != 255)
  {
    return sub_24B24AAF0(result, a2, a3, a4, a5, BYTE2(a5) & 1);
  }

  return result;
}

uint64_t sub_24B24AAF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if ((a6 & 1) == 0)
  {
    return sub_24B24A784(a1, a2);
  }

  return a1;
}

uint64_t sub_24B24AAFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if ((a6 & 1) == 0)
  {
    return sub_24B247D54(a1, a2);
  }

  return a1;
}

uint64_t sub_24B24AB08()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC12FindMyUICore16SettingsProvider__valuePublisher) = *(v0 + 24);
}

void sub_24B24AB4C()
{
  oslog = sub_24B2D3164();
  v0 = sub_24B2D5904();
  if (os_log_type_enabled(oslog, v0))
  {
    v1 = swift_slowAlloc();
    v2 = swift_slowAlloc();
    v4 = v2;
    *v1 = 136315138;
    *(v1 + 4) = sub_24AFF321C(0xD000000000000011, 0x800000024B2DD1D0, &v4);
    _os_log_impl(&dword_24AFD2000, oslog, v0, "SettingsSubscriptionManagerStorage: empty callback - %s", v1, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v2);
    MEMORY[0x24C23D530](v2, -1, -1);
    MEMORY[0x24C23D530](v1, -1, -1);
  }
}

uint64_t sub_24B24AC50(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE6A0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t SettingsProvider.Dependencies.initialSettings.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SettingsProvider.Dependencies.initialSettings.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t SettingsProvider.Dependencies.settingsStateStream.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t SettingsProvider.Dependencies.settingsStateStream.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t SettingsProvider.Dependencies.init(initialSettings:settingsStateStream:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t sub_24B24AE38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[11] = a3;
  v4[12] = v3;
  v4[9] = a1;
  v4[10] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCEBD0);
  v4[13] = swift_task_alloc();
  v6 = sub_24B2D27A4();
  v4[14] = v6;
  v4[15] = *(v6 - 8);
  v4[16] = swift_task_alloc();
  if (a2)
  {
    swift_getObjectType();
    v7 = sub_24B2D5604();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v4[17] = v7;
  v4[18] = v9;

  return MEMORY[0x2822009F8](sub_24B24AF70, v7, v9);
}

uint64_t sub_24B24AF70()
{
  v0[19] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8908);
  v0[20] = sub_24B2D5F54();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8900);
  sub_24B039184(&qword_27EFCEBD8, &qword_27EFC8900);
  v1 = swift_task_alloc();
  v0[21] = v1;
  *v1 = v0;
  v1[1] = sub_24B24B098;
  v2 = v0[13];
  v3 = v0[10];
  v4 = v0[11];

  return MEMORY[0x282200310](v2, v3, v4);
}

uint64_t sub_24B24B098()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 136);
    v4 = *(v2 + 144);
    v5 = sub_24B24B3A0;
  }

  else
  {
    (*(v2 + 160))();
    v3 = *(v2 + 136);
    v4 = *(v2 + 144);
    v5 = sub_24B24B1C0;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_24B24B1C0()
{
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[13];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[9];
    sub_24AFF8258(v3, &qword_27EFCEBD0);
    *v4 = 0;
    *(v4 + 8) = 0;
    *(v4 + 18) = -1;
    *(v4 + 16) = 0;

    v5 = v0[1];

    return v5();
  }

  else
  {
    (*(v2 + 32))(v0[16], v3, v1);
    v7 = sub_24B2D5F64();
    v0[22] = v8;
    v11 = (v7 + *v7);
    v9 = swift_task_alloc();
    v0[23] = v9;
    *v9 = v0;
    v9[1] = sub_24B24B42C;
    v10 = v0[16];

    return (v11)(v0 + 6, v10);
  }
}

uint64_t sub_24B24B3A0()
{
  (*(v0 + 160))();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B24B42C()
{
  v1 = *v0;
  v2 = *(*v0 + 128);
  v3 = *(*v0 + 120);
  v4 = *(*v0 + 112);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 144);
  v6 = *(v1 + 136);

  return MEMORY[0x2822009F8](sub_24B24B5CC, v6, v5);
}

uint64_t sub_24B24B5CC()
{
  v1 = *(v0 + 64) | (*(v0 + 66) << 16);
  if (*(v0 + 66) == 255)
  {
    sub_24B038F24(*(v0 + 48), *(v0 + 56), v1);
    *(v0 + 152) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8908);
    *(v0 + 160) = sub_24B2D5F54();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8900);
    sub_24B039184(&qword_27EFCEBD8, &qword_27EFC8900);
    v2 = swift_task_alloc();
    *(v0 + 168) = v2;
    *v2 = v0;
    v2[1] = sub_24B24B098;
    v3 = *(v0 + 104);
    v4 = *(v0 + 80);
    v5 = *(v0 + 88);

    return MEMORY[0x282200310](v3, v4, v5);
  }

  else
  {
    v6 = *(v0 + 72);
    *v6 = *(v0 + 48);
    *(v6 + 16) = v1;
    *(v6 + 18) = BYTE2(v1);

    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_24B24B778(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[8] = a3;
  v4[9] = v3;
  v4[6] = a1;
  v4[7] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC89A0);
  v4[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCEBF0);
  v4[11] = swift_task_alloc();
  v6 = sub_24B2D2794();
  v4[12] = v6;
  v4[13] = *(v6 - 8);
  v4[14] = swift_task_alloc();
  if (a2)
  {
    swift_getObjectType();
    v7 = sub_24B2D5604();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v4[15] = v7;
  v4[16] = v9;

  return MEMORY[0x2822009F8](sub_24B24B8E8, v7, v9);
}

uint64_t sub_24B24B8E8()
{
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC89B0);
  v0[18] = sub_24B2D5F54();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC89A8);
  sub_24B039184(&qword_27EFCEBF8, &qword_27EFC89A8);
  v1 = swift_task_alloc();
  v0[19] = v1;
  *v1 = v0;
  v1[1] = sub_24B24BA10;
  v2 = v0[11];
  v3 = v0[7];
  v4 = v0[8];

  return MEMORY[0x282200310](v2, v3, v4);
}