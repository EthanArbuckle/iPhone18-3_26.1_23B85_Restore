id sub_20E1A1288(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868570, &qword_20E33B590);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v12 - v4;
  v6 = [objc_allocWithZone(MEMORY[0x277D580E0]) init];
  if (v6)
  {
    sub_20E1A13C8(a1, v5);
    v7 = type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequestAuthenticationLevel(0);
    if ((*(*(v7 - 8) + 48))(v5, 1, v7) == 1)
    {
      sub_20E1A1438(v5);
    }

    else
    {
      v8 = *v5;
      sub_20E1A14A0(v5);
      if (v8 != 2)
      {
        v9 = v6;
        if (v8)
        {
          v10 = 2;
        }

        else
        {
          v10 = 1;
        }

        goto LABEL_6;
      }
    }

    v9 = v6;
    v10 = 0;
LABEL_6:
    [v9 setAuthenticationLevel_];
  }

  return v6;
}

uint64_t sub_20E1A13C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868570, &qword_20E33B590);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20E1A1438(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868570, &qword_20E33B590);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20E1A14A0(uint64_t a1)
{
  v2 = type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequestAuthenticationLevel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_20E1A14FC(uint64_t a1)
{
  v2 = type metadata accessor for TranscriptProtoSystemRequirementMessage(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TranscriptProtoPermissionRequirement(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TranscriptProtoAppRequirement(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865B80, &qword_20E3263A0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v33 - v16;
  v18 = [objc_allocWithZone(MEMORY[0x277D57D28]) init];
  sub_20E1A18B8(a1, v17);
  v19 = type metadata accessor for TranscriptProtoActionRequirementEnum(0);
  if ((*(*(v19 - 8) + 48))(v17, 1, v19) != 1)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        sub_20E1A1928(v17, v9, type metadata accessor for TranscriptProtoPermissionRequirement);
        if (v18)
        {
          v30 = v18;
          v31 = sub_20E048240(v9);
          [v30 setPermissionRequirement_];
        }

        v28 = type metadata accessor for TranscriptProtoPermissionRequirement;
        v29 = v9;
        goto LABEL_26;
      }

      sub_20E1A1928(v17, v13, type metadata accessor for TranscriptProtoAppRequirement);
      if (!v18)
      {
LABEL_25:
        v28 = type metadata accessor for TranscriptProtoAppRequirement;
        v29 = v13;
LABEL_26:
        sub_20E1A1990(v29, v28);
        return v18;
      }

      v21 = objc_allocWithZone(MEMORY[0x277D57D48]);
      v22 = v18;
      v23 = [v21 init];
      v24 = v23;
      if (*v13 > 1u)
      {
        if (*v13 != 2 || !v23)
        {
          goto LABEL_24;
        }

        v25 = &selRef_setUserConfirmationRequired_;
        goto LABEL_23;
      }

      if (*v13)
      {
        if (v23)
        {
          v25 = &selRef_setAccountSetupRequired_;
          goto LABEL_23;
        }
      }

      else if (v23)
      {
        v25 = &selRef_setSignInRequired_;
LABEL_23:
        [v23 *v25];
      }

LABEL_24:
      [v22 setAppRequirement_];

      goto LABEL_25;
    }

    if (EnumCaseMultiPayload == 2)
    {
      sub_20E1A1928(v17, v5, type metadata accessor for TranscriptProtoSystemRequirementMessage);
      if (v18)
      {
        v26 = v18;
        v27 = sub_20E04AFA4(v5);
        [v26 setSystemRequirement_];
      }

      v28 = type metadata accessor for TranscriptProtoSystemRequirementMessage;
      v29 = v5;
      goto LABEL_26;
    }

    if (v18)
    {
      [v18 setUnsupported_];
    }
  }

  return v18;
}

uint64_t sub_20E1A18B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865B80, &qword_20E3263A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20E1A1928(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20E1A1990(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t UsageMetricsProducer.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0xD000000000000024;
  *(result + 24) = 0x800000020E35F5C0;
  return result;
}

uint64_t UsageMetricsProducer.init()()
{
  result = v0;
  *(v0 + 16) = 0xD000000000000024;
  *(v0 + 24) = 0x800000020E35F5C0;
  return result;
}

void sub_20E1A1A54(uint64_t a1, _BYTE *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868A48, &qword_20E33BEA0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v8 = &v25 - v7;
  v9 = type metadata accessor for UsageMetricsDefinitions();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a2)
  {
    if (qword_27C863978 != -1)
    {
      swift_once();
    }

    v14 = sub_20E3227C0();
    __swift_project_value_buffer(v14, qword_27C8CC290);
    v26 = sub_20E3227B0();
    v15 = sub_20E322A40();
    if (os_log_type_enabled(v26, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_20E031000, v26, v15, "Implement SELF for reporting", v16, 2u);
      MEMORY[0x20F32CA80](v16, -1, -1);
    }

    v17 = v26;
  }

  else
  {
    if (qword_27C863978 != -1)
    {
      swift_once();
    }

    v18 = sub_20E3227C0();
    __swift_project_value_buffer(v18, qword_27C8CC290);
    v19 = sub_20E3227B0();
    v20 = sub_20E322A40();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_20E031000, v19, v20, "Using CoreAnalytics for reporting", v21, 2u);
      MEMORY[0x20F32CA80](v21, -1, -1);
    }

    v22 = *(a1 + 16);
    if (v22)
    {
      v23 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
      v24 = *(v5 + 72);
      do
      {
        sub_20E0486F4(v23, v8, &qword_27C868A48, &qword_20E33BEA0);
        if ((*(v10 + 48))(v8, 1, v9) == 1)
        {
          sub_20E04875C(v8, &qword_27C868A48, &qword_20E33BEA0);
        }

        else
        {
          sub_20E1A2B0C(v8, v13, type metadata accessor for UsageMetricsDefinitions);
          type metadata accessor for CoreAnalyticsEmitter();
          swift_initStaticObject();
          CoreAnalyticsEmitter.sendSageMetrics(eventCategory:eventPayload:)(v26[2].isa, v26[3].isa, v13);
          sub_20E1A2C4C(v13, type metadata accessor for UsageMetricsDefinitions);
        }

        v23 += v24;
        --v22;
      }

      while (v22);
    }
  }
}

void sub_20E1A1E18(uint64_t a1, char *a2)
{
  v3 = *a2;
  if (qword_27C863978 != -1)
  {
    swift_once();
  }

  v4 = sub_20E3227C0();
  __swift_project_value_buffer(v4, qword_27C8CC290);
  v5 = sub_20E3227B0();
  v6 = sub_20E322A40();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_20E031000, v5, v6, "UsageMetricsProducer producing metrics", v7, 2u);
    MEMORY[0x20F32CA80](v7, -1, -1);
  }

  v8 = sub_20E1A20B8(a1);
  if (v8[2])
  {
    v12 = v3;
    sub_20E1A1A54(v8, &v12);
  }

  else
  {

    oslog = sub_20E3227B0();
    v9 = sub_20E322A40();
    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_20E031000, oslog, v9, "No metrics formulated for reporting", v10, 2u);
      MEMORY[0x20F32CA80](v10, -1, -1);
    }
  }
}

uint64_t UsageMetricsProducer.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t UsageMetricsProducer.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

void *sub_20E1A206C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_20E1A20B8(a1);
  *a2 = result;
  return result;
}

void *sub_20E1A20B8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868A48, &qword_20E33BEA0);
  v94 = *(v2 - 8);
  v3 = *(v94 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v93 = &v82 - v4;
  v107 = sub_20E322010();
  v5 = *(v107 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v107);
  v106 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for UsageMetricsDefinitions();
  v8 = *(v92 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v92);
  v105 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688E8, &unk_20E3573E0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v91 = (&v82 - v13);
  v90 = type metadata accessor for PerfMetricsDefinitions();
  v14 = *(*(v90 - 1) + 64);
  MEMORY[0x28223BE20](v90);
  v16 = (&v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = type metadata accessor for SessionData(0);
  v89 = *(v17 - 8);
  v18 = *(v89 + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v82 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v82 - v23;
  MEMORY[0x28223BE20](v22);
  v87 = &v82 - v25;
  v26 = *(a1 + *(type metadata accessor for SessionView(0) + 28));
  v27 = v26 + 64;
  v28 = 1 << *(v26 + 32);
  v29 = -1;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  v30 = v29 & *(v26 + 64);
  v96 = (v28 + 63) >> 6;
  v85 = (v5 + 16);
  v84 = (v5 + 32);
  v83 = (v8 + 56);
  v95 = v26;

  v32 = 0;
  v109 = MEMORY[0x277D84F90];
  *&v33 = 136315138;
  v82 = v33;
  v34 = v16;
  v108 = v16;
  v35 = v21;
  v104 = v17;
  v88 = v21;
  v36 = v24;
  v97 = v24;
  v86 = v27;
  for (i = v96; v30; i = v96)
  {
LABEL_8:
    v39 = v87;
    sub_20E1A2B74(*(v95 + 56) + *(v89 + 72) * (__clz(__rbit64(v30)) | (v32 << 6)), v87, type metadata accessor for SessionData);
    sub_20E1A2B0C(v39, v36, type metadata accessor for SessionData);
    if (qword_27C863978 != -1)
    {
      swift_once();
    }

    v40 = sub_20E3227C0();
    __swift_project_value_buffer(v40, qword_27C8CC290);
    sub_20E1A2B74(v36, v35, type metadata accessor for SessionData);
    v41 = sub_20E3227B0();
    v42 = sub_20E322A40();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v110 = v44;
      *v43 = v82;
      v45 = (v35 + *(v104 + 24));
      v46 = *v45;
      v47 = v45[1];

      sub_20E1A2C4C(v35, type metadata accessor for SessionData);
      v48 = v46;
      v36 = v97;
      v49 = sub_20E31B6C4(v48, v47, &v110);
      v34 = v108;

      *(v43 + 4) = v49;
      _os_log_impl(&dword_20E031000, v41, v42, "Formulating metrics from sessionId:  %s", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v44);
      v50 = v44;
      v17 = v104;
      MEMORY[0x20F32CA80](v50, -1, -1);
      MEMORY[0x20F32CA80](v43, -1, -1);
    }

    else
    {

      sub_20E1A2C4C(v35, type metadata accessor for SessionData);
    }

    v51 = v91;
    sub_20E2259D8(v36, v34);
    v52 = v36 + *(v17 + 20);
    v53 = type metadata accessor for SessionSignature(0);
    v54 = v53;
    if (*(v52 + 1) == 1)
    {
      sub_20E0486F4(v52 + *(v53 + 28), v51, &qword_27C8688E8, &unk_20E3573E0);
      v55 = type metadata accessor for AttributionTraits(0);
      if ((*(*(v55 - 8) + 48))(v51, 1, v55) == 1)
      {
        sub_20E04875C(v51, &qword_27C8688E8, &unk_20E3573E0);
LABEL_18:

        v57 = 0xE700000000000000;
        v58 = 0x6E776F6E6B6E75;
        goto LABEL_19;
      }

      v58 = *v51;
      v57 = v51[1];

      sub_20E1A2C4C(v51, type metadata accessor for AttributionTraits);
      if (!v57)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v56 = (v52 + *(v53 + 48));
      v58 = *v56;
      v57 = v56[1];
    }

LABEL_19:
    v59 = (v36 + *(v17 + 24));
    v60 = v59[1];
    v101 = *v59;
    (*v85)(v106, v36, v107);
    v61 = *(v52 + *(v54 + 36));
    v62 = v61[2];
    v102 = v58;
    v103 = v57;
    if (v62)
    {
      v63 = v61[5];
      v100 = v61[4];
    }

    else
    {
      v63 = 0xE300000000000000;
      v100 = 6369134;
    }

    v64 = *(v52 + 1);
    v66 = *(v52 + 8);
    v65 = *(v52 + 16);
    v67 = v107;
    v68 = *(v108 + v90[7]);
    v99 = *(v108 + v90[8]);
    v98 = *(v108 + v90[9]);
    v70 = v105;
    v69 = v106;
    *v105 = v101;
    *(v70 + 1) = v60;
    v71 = v92;
    (*v84)(&v70[*(v92 + 20)], v69, v67);
    v72 = &v70[v71[6]];
    *v72 = v100;
    v72[1] = v63;
    v70[v71[7]] = v64;
    v73 = &v70[v71[8]];
    *v73 = v66;
    *(v73 + 1) = v65;
    v74 = &v70[v71[9]];
    v75 = v103;
    *v74 = v102;
    v74[1] = v75;
    *&v70[v71[10]] = v68;
    v76 = v98;
    *&v70[v71[11]] = v99;
    *&v70[v71[12]] = v76;
    v77 = v93;
    sub_20E1A2B74(v70, v93, type metadata accessor for UsageMetricsDefinitions);
    (*v83)(v77, 0, 1, v71);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v109 = sub_20E225374(0, v109[2] + 1, 1, v109);
    }

    v78 = v104;
    v35 = v88;
    v34 = v108;
    v80 = v109[2];
    v79 = v109[3];
    v36 = v97;
    if (v80 >= v79 >> 1)
    {
      v109 = sub_20E225374(v79 > 1, v80 + 1, 1, v109);
    }

    v30 &= v30 - 1;
    sub_20E1A2C4C(v105, type metadata accessor for UsageMetricsDefinitions);
    sub_20E1A2C4C(v34, type metadata accessor for PerfMetricsDefinitions);
    v81 = v109;
    v109[2] = v80 + 1;
    sub_20E1A2BDC(v77, v81 + ((*(v94 + 80) + 32) & ~*(v94 + 80)) + *(v94 + 72) * v80);
    result = sub_20E1A2C4C(v36, type metadata accessor for SessionData);
    v27 = v86;
    v17 = v78;
  }

  while (1)
  {
    v38 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      break;
    }

    if (v38 >= i)
    {

      return v109;
    }

    v30 = *(v27 + 8 * v38);
    ++v32;
    if (v30)
    {
      v32 = v38;
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E1A2B0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20E1A2B74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20E1A2BDC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868A48, &qword_20E33BEA0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20E1A2C4C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_20E1A2CAC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868510, &qword_20E33B548);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = (&v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v4);
  v8 = &v20 - v7;
  v9 = type metadata accessor for TranscriptProtoFollowUpActionExecutableActionLinkAction(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E1A2EDC(a1, v8);
  v14 = *(v10 + 48);
  if (v14(v8, 1, v9) == 1)
  {
    sub_20E1A2F4C(v8);
    return 0;
  }

  else
  {
    sub_20E1A2FB4(v8, v13);
    v15 = [objc_allocWithZone(MEMORY[0x277D57E50]) init];
    if (v15)
    {
      sub_20E1A2EDC(a1, v6);
      if (v14(v6, 1, v9) == 1)
      {
        sub_20E1A2F4C(v6);
        v16 = 0;
      }

      else
      {
        v17 = *v6;
        v18 = v6[1];

        sub_20E1A3018(v6);
        v16 = sub_20E322860();
      }

      [v15 setBundleId_];

      [v15 setLinkShowOutputActionOptions_];
    }

    sub_20E1A3018(v13);
  }

  return v15;
}

uint64_t sub_20E1A2EDC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868510, &qword_20E33B548);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20E1A2F4C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868510, &qword_20E33B548);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20E1A2FB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoFollowUpActionExecutableActionLinkAction(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20E1A3018(uint64_t a1)
{
  v2 = type metadata accessor for TranscriptProtoFollowUpActionExecutableActionLinkAction(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_20E1A3074(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868510, &qword_20E33B548);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v28 - v4;
  v6 = type metadata accessor for TranscriptProtoFollowUpActionExecutableActionLinkAction(0);
  v28 = *(v6 - 8);
  v29 = v6;
  v7 = *(v28 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868500, &qword_20E33B538);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v28 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868518, &unk_20E33C300);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v28 - v16;
  v18 = type metadata accessor for TranscriptProtoFollowUpActionExecutableAction(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v17, &qword_27C868518, &unk_20E33C300);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_20E04875C(v17, &qword_27C868518, &unk_20E33C300);
    return 0;
  }

  sub_20E1A3464(v17, v22, type metadata accessor for TranscriptProtoFollowUpActionExecutableAction);
  v23 = [objc_allocWithZone(MEMORY[0x277D57E48]) init];
  if (!v23)
  {
    sub_20E1A3530(v22, type metadata accessor for TranscriptProtoFollowUpActionExecutableAction);
    return 0;
  }

  v24 = v23;
  sub_20E0486F4(v22, v13, &qword_27C868500, &qword_20E33B538);
  v25 = type metadata accessor for TranscriptProtoFollowUpActionExecutableActionEnum(0);
  if ((*(*(v25 - 8) + 48))(v13, 1, v25) != 1)
  {
    sub_20E1A3464(v13, v9, type metadata accessor for TranscriptProtoFollowUpActionExecutableActionLinkAction);
    sub_20E1A34CC(v9, v5);
    (*(v28 + 56))(v5, 0, 1, v29);
    v26 = sub_20E1A2CAC(v5);
    sub_20E04875C(v5, &qword_27C868510, &qword_20E33B548);
    [v24 setLinkAction_];

    sub_20E1A3530(v9, type metadata accessor for TranscriptProtoFollowUpActionExecutableActionLinkAction);
  }

  sub_20E1A3530(v22, type metadata accessor for TranscriptProtoFollowUpActionExecutableAction);
  return v24;
}

uint64_t sub_20E1A3464(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20E1A34CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoFollowUpActionExecutableActionLinkAction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20E1A3530(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_20E1A3590(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FB8, &unk_20E325F60);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v19 - v4;
  v6 = type metadata accessor for TranscriptProtoStatementResultPayload(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E1A3764(a1, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_20E1A37D4(v5);
    return 0;
  }

  else
  {
    sub_20E1A383C(v5, v10);
    v12 = [objc_allocWithZone(MEMORY[0x277D58090]) init];
    v11 = v12;
    if (v12)
    {
      v13 = v12;
      v14 = sub_20E051258(v10);
      [v13 setOutcome_];

      v15 = *(v6 + 20);
      v16 = v13;
      v17 = sub_20E04DEAC(&v10[v15]);
      [v16 setResponse_];
    }

    sub_20E1A38A0(v10);
  }

  return v11;
}

uint64_t sub_20E1A3764(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FB8, &unk_20E325F60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20E1A37D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FB8, &unk_20E325F60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20E1A383C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoStatementResultPayload(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20E1A38A0(uint64_t a1)
{
  v2 = type metadata accessor for TranscriptProtoStatementResultPayload(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_20E1A38FC(uint64_t a1, uint64_t a2)
{
  v100 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B88, &qword_20E323E78);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v97 = &v89 - v5;
  v6 = type metadata accessor for TranscriptProtoSystemPromptResolution(0);
  v93 = *(v6 - 8);
  v94 = v6;
  v7 = *(v93 + 64);
  MEMORY[0x28223BE20](v6);
  v95 = &v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = type metadata accessor for TranscriptProtoRequestContentSpeechContent(0);
  v9 = *(*(v91 - 8) + 64);
  MEMORY[0x28223BE20](v91);
  v99 = &v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868288, &qword_20E33B318);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v98 = &v89 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639D0, &unk_20E33C230);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v92 = (&v89 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16);
  v90 = (&v89 - v18);
  v102 = type metadata accessor for TranscriptProtoRequestContentTextContent(0);
  v96 = *(v102 - 8);
  v19 = *(v96 + 64);
  MEMORY[0x28223BE20](v102);
  v101 = &v89 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF8, &qword_20E33AFC8);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v24 = &v89 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865978, &qword_20E326390);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v25 - 8);
  v29 = &v89 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v31 = &v89 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863F90, &unk_20E3461E0);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32 - 8);
  v35 = &v89 - v34;
  v36 = type metadata accessor for TranscriptProtoRequest(0);
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36);
  v40 = &v89 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v35, &qword_27C863F90, &unk_20E3461E0);
  if ((*(v37 + 48))(v35, 1, v36) != 1)
  {
    sub_20E1A4544(v35, v40, type metadata accessor for TranscriptProtoRequest);
    v44 = [objc_allocWithZone(MEMORY[0x277D57FB0]) init];
    sub_20E0486F4(&v40[*(v36 + 20)], v24, &qword_27C867EF8, &qword_20E33AFC8);
    v45 = type metadata accessor for TranscriptProtoRequestContent(0);
    if ((*(*(v45 - 8) + 48))(v24, 1, v45) == 1)
    {
      sub_20E1A4614(v40, type metadata accessor for TranscriptProtoRequest);

      sub_20E04875C(v24, &qword_27C867EF8, &qword_20E33AFC8);
      v46 = type metadata accessor for TranscriptProtoRequestContentEnum(0);
      v47 = v31;
      (*(*(v46 - 8) + 56))(v31, 1, 1, v46);
LABEL_7:
      v41 = &qword_27C865978;
      v42 = &qword_20E326390;
      v43 = v47;
      goto LABEL_8;
    }

    v47 = v31;
    sub_20E0486F4(v24, v31, &qword_27C865978, &qword_20E326390);
    sub_20E1A4614(v24, type metadata accessor for TranscriptProtoRequestContent);
    v48 = type metadata accessor for TranscriptProtoRequestContentEnum(0);
    if ((*(*(v48 - 8) + 48))(v31, 1, v48) == 1)
    {
      sub_20E1A4614(v40, type metadata accessor for TranscriptProtoRequest);

      goto LABEL_7;
    }

    sub_20E0486F4(v31, v29, &qword_27C865978, &qword_20E326390);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v63 = v29;
        v64 = v95;
        sub_20E1A4544(v63, v95, type metadata accessor for TranscriptProtoSystemPromptResolution);
        v65 = v97;
        sub_20E1A45AC(v64, v97, type metadata accessor for TranscriptProtoSystemPromptResolution);
        (*(v93 + 56))(v65, 0, 1, v94);
        v66 = sub_20E04FB98(v65);
        sub_20E04875C(v65, &qword_27C863B88, &qword_20E323E78);
        [v44 setPromptResolution_];
        sub_20E1A4614(v64, type metadata accessor for TranscriptProtoSystemPromptResolution);
        sub_20E1A4614(v40, type metadata accessor for TranscriptProtoRequest);

LABEL_33:
        sub_20E04875C(v47, &qword_27C865978, &qword_20E326390);
        return v44;
      }

      v78 = [objc_allocWithZone(MEMORY[0x277D57FC8]) init];
      v79 = v78;
      if (v78)
      {
        [v78 setExists_];
      }

      if (v44)
      {
        [v44 setStop_];

        sub_20E1A4614(v40, type metadata accessor for TranscriptProtoRequest);
      }

      else
      {
        sub_20E1A4614(v40, type metadata accessor for TranscriptProtoRequest);
      }

      v80 = type metadata accessor for TranscriptProtoRequestContentEnum;
      v81 = v29;
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {
        v51 = v40;
        v52 = v29;
        v53 = v101;
        sub_20E1A4544(v52, v101, type metadata accessor for TranscriptProtoRequestContentTextContent);
        v54 = [objc_allocWithZone(MEMORY[0x277D57FD0]) init];
        if (v54)
        {
          v55 = v44;
          v56 = *(v102 + 20);
          v57 = objc_allocWithZone(MEMORY[0x277D58078]);
          v58 = v54;
          v59 = [v57 init];
          v60 = v53 + v56;
          v61 = v90;
          sub_20E0486F4(v60, v90, &qword_27C8639D0, &unk_20E33C230);
          v62 = type metadata accessor for TranscriptProtoStatementID(0);
          if ((*(*(v62 - 8) + 48))(v61, 1, v62) == 1)
          {
            sub_20E04875C(v61, &qword_27C8639D0, &unk_20E33C230);
          }

          else
          {
            v82 = *v61;
            sub_20E1A4614(v61, type metadata accessor for TranscriptProtoStatementID);
            v83 = v82;
            v53 = v101;
            [v59 setIndex_];
          }

          [v58 setStatementId_];

          v44 = v55;
        }

        v84 = v98;
        sub_20E1A45AC(v53, v98, type metadata accessor for TranscriptProtoRequestContentTextContent);
        (*(v96 + 56))(v84, 0, 1, v102);
        sub_20E31C960(v84, v100);
        v86 = v85;
        sub_20E04875C(v84, &qword_27C868288, &qword_20E33B318);
        [v54 setLinkId_];
        [v44 setText_];

        sub_20E1A4614(v53, type metadata accessor for TranscriptProtoRequestContentTextContent);
        sub_20E1A4614(v51, type metadata accessor for TranscriptProtoRequest);
        goto LABEL_33;
      }

      v67 = v40;
      v68 = v99;
      sub_20E1A4544(v29, v99, type metadata accessor for TranscriptProtoRequestContentSpeechContent);
      v69 = [objc_allocWithZone(MEMORY[0x277D57FC0]) init];
      v70 = [objc_allocWithZone(MEMORY[0x277D58070]) init];
      if (v70)
      {
        v71 = v70;
        v72 = v44;
        v73 = *(v91 + 24);
        v74 = [objc_allocWithZone(MEMORY[0x277D58078]) init];
        v75 = v68 + v73;
        v76 = v92;
        sub_20E0486F4(v75, v92, &qword_27C8639D0, &unk_20E33C230);
        v77 = type metadata accessor for TranscriptProtoStatementID(0);
        if ((*(*(v77 - 8) + 48))(v76, 1, v77) == 1)
        {
          sub_20E04875C(v76, &qword_27C8639D0, &unk_20E33C230);
        }

        else
        {
          v87 = *v76;
          sub_20E1A4614(v76, type metadata accessor for TranscriptProtoStatementID);
          [v74 setIndex_];
        }

        [v71 setStatementId_];

        v88 = v69;
        [v88 addCandidates_];

        v44 = v72;
      }

      [v44 setSpeech_];

      sub_20E1A4614(v68, type metadata accessor for TranscriptProtoRequestContentSpeechContent);
      v80 = type metadata accessor for TranscriptProtoRequest;
      v81 = v67;
    }

    sub_20E1A4614(v81, v80);
    goto LABEL_33;
  }

  v41 = &qword_27C863F90;
  v42 = &unk_20E3461E0;
  v43 = v35;
LABEL_8:
  sub_20E04875C(v43, v41, v42);
  return 0;
}

uint64_t sub_20E1A4544(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20E1A45AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20E1A4614(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20E1A4674()
{
  v1 = sub_20E322730();
  sub_20E1B256C(&qword_27C868AE0, MEMORY[0x277D20360]);
  v2 = v1;
  sub_20E322740();
  if (!v0)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = MEMORY[0x277D84F90];
    __swift_project_boxed_opaque_existential_1(v9, v9[3]);

    sub_20E3227E0();

    if (qword_280E12B88 != -1)
    {
      swift_once();
    }

    v4 = sub_20E3227C0();
    __swift_project_value_buffer(v4, qword_280E12C48);

    v5 = sub_20E3227B0();
    v6 = sub_20E322A40();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 134217984;
      swift_beginAccess();
      *(v7 + 4) = *(*(v3 + 16) + 16);

      _os_log_impl(&dword_20E031000, v5, v6, "%ld of events loaded from Biome stream", v7, 0xCu);
      MEMORY[0x20F32CA80](v7, -1, -1);
    }

    else
    {
    }

    swift_beginAccess();
    v2 = *(v3 + 16);

    __swift_destroy_boxed_opaque_existential_0(v9);
  }

  return v2;
}

uint64_t sub_20E1A48F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E322600();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v5 + 16);
  v9(v8, a1, v4);
  swift_beginAccess();
  v10 = *(a2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 16) = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = sub_20E2250A8(0, v10[2] + 1, 1, v10);
    *(a2 + 16) = v10;
  }

  v13 = v10[2];
  v12 = v10[3];
  if (v13 >= v12 >> 1)
  {
    v10 = sub_20E2250A8((v12 > 1), v13 + 1, 1, v10);
    *(a2 + 16) = v10;
  }

  v17 = v4;
  v18 = MEMORY[0x277D1F720];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v16);
  v9(boxed_opaque_existential_1, v8, v4);
  v10[2] = v13 + 1;
  sub_20E06AF84(&v16, &v10[5 * v13 + 4]);
  (*(v5 + 8))(v8, v4);
  *(a2 + 16) = v10;
  return swift_endAccess();
}

void sub_20E1A4ABC(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_20E1A4B24(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_20E1A4B84(unint64_t a1)
{
  v10 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  sub_20E322B70();
  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_20E322BC0())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x20F32C150](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v5 = *(a1 + 8 * j + 32);
      }

      v6 = v5;
      v7 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {

        return 0;
      }

      sub_20E322B50();
      v8 = *(v10 + 16);
      sub_20E322B80();
      sub_20E322B90();
      sub_20E322B60();
      if (v7 == i)
      {
        return v10;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    sub_20E322BC0();
    sub_20E322B70();
  }

  return v10;
}

uint64_t sub_20E1A4CEC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868AD8, &qword_20E33C0B8);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v23 - v4;
  v6 = sub_20E322600();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v26 = &v23 - v12;
  v13 = *(a1 + 16);
  v28 = MEMORY[0x277D84F90];
  sub_20E2FFD84(0, v13, 0);
  v14 = v28;
  if (v13)
  {
    v15 = a1 + 32;
    v24 = v5;
    v25 = (v7 + 56);
    v16 = (v7 + 32);
    while (1)
    {
      sub_20E1B24E4(v15, v27);
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_27C864000, &unk_20E33C0C0);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      (*v25)(v5, 0, 1, v6);
      v17 = *v16;
      v18 = v26;
      (*v16)(v26, v5, v6);
      v17(v11, v18, v6);
      v28 = v14;
      v19 = v11;
      v21 = *(v14 + 16);
      v20 = *(v14 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_20E2FFD84(v20 > 1, v21 + 1, 1);
        v14 = v28;
      }

      *(v14 + 16) = v21 + 1;
      v17((v14 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v21), v19, v6);
      v15 += 40;
      --v13;
      v11 = v19;
      v5 = v24;
      if (!v13)
      {
        return v14;
      }
    }

    (*v25)(v5, 1, 1, v6);
    sub_20E04875C(v5, &qword_27C868AD8, &qword_20E33C0B8);
    return 0;
  }

  return v14;
}

uint64_t (*sub_20E1A4FBC(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_20E1AD2A8(v6, a2, a3);
  return sub_20E1B26A4;
}

uint64_t (*sub_20E1A5044(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_20E1AD354(v6, a2, a3);
  return sub_20E1A50CC;
}

void sub_20E1A50D0(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_20E1A511C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688F8, &unk_20E33C060);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v25 - v8;
  v10 = type metadata accessor for ParticipantInfo(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_20E04875C(a1, &qword_27C8688F8, &unk_20E33C060);
    v15 = *v3;
    v16 = sub_20E1ACB90(a2);
    if (v17)
    {
      v18 = v16;
      v19 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21 = *v3;
      v26 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_20E1AEC2C();
        v21 = v26;
      }

      sub_20E1B2624(*(v21 + 56) + *(v11 + 72) * v18, v9, type metadata accessor for ParticipantInfo);
      sub_20E1AE2BC(v18, v21);
      *v3 = v21;
      (*(v11 + 56))(v9, 0, 1, v10);
    }

    else
    {
      (*(v11 + 56))(v9, 1, 1, v10);
    }

    return sub_20E04875C(v9, &qword_27C8688F8, &unk_20E33C060);
  }

  else
  {
    sub_20E1B2624(a1, v14, type metadata accessor for ParticipantInfo);
    v22 = *v3;
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    result = sub_20E1AE65C(v14, a2, v23);
    *v3 = v26;
  }

  return result;
}

uint64_t sub_20E1A5370(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868A60, &unk_20E33BFF0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for RequestData(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v15 + 48))(a1, 1) == 1)
  {
    sub_20E04875C(a1, &qword_27C868A60, &unk_20E33BFF0);
    sub_20E1AD464(a2, a3, v10);

    return sub_20E04875C(v10, &qword_27C868A60, &unk_20E33BFF0);
  }

  else
  {
    sub_20E1B2624(a1, v14, type metadata accessor for RequestData);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_20E1AE7B0(v14, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v20;
  }

  return result;
}

uint64_t BiomeSessionBuilder.__allocating_init()()
{
  v0 = swift_allocObject();
  BiomeSessionBuilder.init()();
  return v0;
}

void *BiomeSessionBuilder.init()()
{
  v0[3] = 0xD000000000000020;
  v0[4] = 0x800000020E35F640;
  type metadata accessor for DataProcessorBookmarkProvider();
  v1 = swift_allocObject();
  v2 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v3 = sub_20E322860();
  v4 = [v2 initWithSuiteName_];

  v1[2] = v4;
  v1[3] = 0xD000000000000020;
  v1[4] = 0x800000020E35F640;
  v1[5] = 0xD000000000000035;
  v1[6] = 0x800000020E35F6A0;
  v0[2] = v1;
  return v0;
}

uint64_t sub_20E1A5650(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  if (qword_280E12B88 != -1)
  {
    swift_once();
  }

  v6 = sub_20E3227C0();
  __swift_project_value_buffer(v6, qword_280E12C48);

  v7 = sub_20E3227B0();
  v8 = sub_20E322A40();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_20E31B6C4(a1, a2, &v20);
    _os_log_impl(&dword_20E031000, v7, v8, "Updated user default to use custom bookmark: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x20F32CA80](v10, -1, -1);
    MEMORY[0x20F32CA80](v9, -1, -1);
  }

  v12 = v3[3];
  v11 = v3[4];
  type metadata accessor for DataProcessorBookmarkProvider();
  v13 = swift_allocObject();
  v14 = objc_allocWithZone(MEMORY[0x277CBEBD0]);

  v15 = sub_20E322860();
  v16 = [v14 initWithSuiteName_];

  v13[2] = v16;
  v13[3] = v12;
  v13[4] = v11;
  v20 = v12;
  v21 = v11;

  MEMORY[0x20F32BF40](0xD000000000000015, 0x800000020E35F6E0);
  v17 = v21;
  v13[5] = v20;
  v13[6] = v17;
  v18 = v3[2];
  v3[2] = v13;
}

uint64_t sub_20E1A5860(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for SessionViewConfigs();
  v4[6] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20E1A58F8, 0, 0);
}

uint64_t sub_20E1A58F8()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[3];
  v4 = v0[4];
  v5 = sub_20E322010();
  (*(*(v5 - 8) + 16))(v1, v3, v5);
  v6 = v1 + *(v2 + 20);
  result = sub_20E322000();
  if (v4 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = v0[6];
    v8 = v0[7];
    *(v8 + *(v9 + 24)) = v0[4];
    *(v8 + *(v9 + 28)) = &unk_282537450;
    v10 = swift_task_alloc();
    v0[8] = v10;
    *v10 = v0;
    v10[1] = sub_20E1A5A14;
    v11 = v0[7];
    v12 = v0[5];
    v13 = v0[2];

    return sub_20E1A8E9C(v13, v11);
  }

  return result;
}

uint64_t sub_20E1A5A14()
{
  v1 = *(*v0 + 64);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_20E1A5B10, 0, 0);
}

uint64_t sub_20E1A5B10()
{
  sub_20E1B2484(*(v0 + 56), type metadata accessor for SessionViewConfigs);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20E1A5B90(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for SessionViewConfigs();
  v2[4] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20E1A5C24, 0, 0);
}

uint64_t sub_20E1A5C24()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = *(v0[3] + 16);

  DataProcessorBookmarkProvider.lastCollectionDate.getter(v1);

  v4 = v1 + v2[5];
  sub_20E322000();
  *(v1 + v2[6]) = 0;
  *(v1 + v2[7]) = &unk_282537478;
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_20E1A5D0C;
  v6 = v0[5];
  v7 = v0[2];
  v8 = v0[3];

  return sub_20E1A8E9C(v7, v6);
}

uint64_t sub_20E1A5D0C()
{
  v1 = *(*v0 + 48);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_20E1A5E08, 0, 0);
}

uint64_t sub_20E1A5E08()
{
  sub_20E1B2484(*(v0 + 40), type metadata accessor for SessionViewConfigs);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20E1A5E88(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for SessionViewConfigs();
  v3[5] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20E1A5F20, 0, 0);
}

uint64_t sub_20E1A5F20()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  v4 = *(v0[4] + 16);

  DataProcessorBookmarkProvider.lastCollectionDate.getter(v1);

  v5 = v1 + v2[5];
  sub_20E322000();
  *(v1 + v2[6]) = 0;
  *(v1 + v2[7]) = v3;
  if (*(v3 + 16) == 1 && (*(v0[3] + 32) & 1) == 0)
  {

    v11 = swift_task_alloc();
    v0[7] = v11;
    *v11 = v0;
    v11[1] = sub_20E1A60A4;
    v12 = v0[6];
    v13 = v0[4];
    v14 = v0[2];

    return sub_20E1A8E9C(v14, v12);
  }

  else
  {

    v6 = swift_task_alloc();
    v0[8] = v6;
    *v6 = v0;
    v6[1] = sub_20E1A6220;
    v7 = v0[6];
    v8 = v0[4];
    v9 = v0[2];

    return sub_20E1A67E4(v9, v7);
  }
}

uint64_t sub_20E1A60A4()
{
  v1 = *(*v0 + 56);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_20E1A61A0, 0, 0);
}

uint64_t sub_20E1A61A0()
{
  sub_20E1B2484(*(v0 + 48), type metadata accessor for SessionViewConfigs);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20E1A6220()
{
  v1 = *(*v0 + 64);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_20E1B2694, 0, 0);
}

uint64_t sub_20E1A631C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = type metadata accessor for SessionViewConfigs();
  v5[7] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v5[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20E1A63B8, 0, 0);
}

uint64_t sub_20E1A63B8()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[3];
  v4 = v0[4];
  v5 = sub_20E322010();
  (*(*(v5 - 8) + 16))(v1, v3, v5);
  v6 = v1 + *(v2 + 20);
  result = sub_20E322000();
  if (v4 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = v0[7];
    v8 = v0[8];
    v10 = v0[5];
    *(v8 + *(v9 + 24)) = v0[4];
    *(v8 + *(v9 + 28)) = v10;
    if (*(v10 + 16) == 1 && (*(v0[5] + 32) & 1) == 0)
    {

      v15 = swift_task_alloc();
      v0[9] = v15;
      *v15 = v0;
      v15[1] = sub_20E1A656C;
      v16 = v0[8];
      v17 = v0[6];
      v18 = v0[2];

      return sub_20E1A8E9C(v18, v16);
    }

    else
    {

      v11 = swift_task_alloc();
      v0[10] = v11;
      *v11 = v0;
      v11[1] = sub_20E1A66E8;
      v12 = v0[8];
      v13 = v0[6];
      v14 = v0[2];

      return sub_20E1A67E4(v14, v12);
    }
  }

  return result;
}

uint64_t sub_20E1A656C()
{
  v1 = *(*v0 + 72);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_20E1A6668, 0, 0);
}

uint64_t sub_20E1A6668()
{
  sub_20E1B2484(*(v0 + 64), type metadata accessor for SessionViewConfigs);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20E1A66E8()
{
  v1 = *(*v0 + 80);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_20E1B2698, 0, 0);
}

uint64_t sub_20E1A67E4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868AD0, &qword_20E33C0A8) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v3[6] = swift_task_alloc();
  v3[7] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863F30, &qword_20E325D90) - 8) + 64) + 15;
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v6 = sub_20E322010();
  v3[10] = v6;
  v7 = *(v6 - 8);
  v3[11] = v7;
  v8 = *(v7 + 64) + 15;
  v3[12] = swift_task_alloc();
  v9 = type metadata accessor for SessionViewConfigs();
  v3[13] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v3[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20E1A696C, 0, 0);
}

uint64_t sub_20E1A696C()
{
  v53 = v0;
  if (qword_280E12B88 != -1)
  {
    swift_once();
  }

  v1 = sub_20E3227C0();
  v0[15] = __swift_project_value_buffer(v1, qword_280E12C48);
  v2 = sub_20E3227B0();
  v3 = sub_20E322A40();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_20E031000, v2, v3, "Building SessionView from IF Transcript and IF Telemetry stream", v4, 2u);
    MEMORY[0x20F32CA80](v4, -1, -1);
  }

  v5 = v0[14];
  v6 = v0[3];

  sub_20E1B25BC(v6, v5, type metadata accessor for SessionViewConfigs);
  v7 = sub_20E3227B0();
  v8 = sub_20E322A40();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[14];
  if (v9)
  {
    v11 = v0[13];
    v12 = v0[10];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v52 = v14;
    *v13 = 136315138;
    v15 = *(v11 + 20);
    sub_20E1B256C(&qword_280E12B30, MEMORY[0x277CC9578]);
    v16 = sub_20E322D50();
    v18 = v17;
    sub_20E1B2484(v10, type metadata accessor for SessionViewConfigs);
    v19 = sub_20E31B6C4(v16, v18, &v52);

    *(v13 + 4) = v19;
    _os_log_impl(&dword_20E031000, v7, v8, "Bookmark: updating lastCollectionDate to current Date %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x20F32CA80](v14, -1, -1);
    MEMORY[0x20F32CA80](v13, -1, -1);
  }

  else
  {

    sub_20E1B2484(v10, type metadata accessor for SessionViewConfigs);
  }

  v20 = v0[12];
  v21 = v0[10];
  v22 = v0[11];
  v23 = v0[9];
  v49 = v0[8];
  v50 = v0[13];
  v24 = v0[3];
  v51 = v0[4];
  v25 = *(v51 + 16);
  v26 = *(v50 + 20);
  v27 = v22[2];
  v27(v20, v24 + v26, v21);

  DataProcessorBookmarkProvider.lastCollectionDate.setter(v20);

  v27(v23, v24, v21);
  v28 = v22[7];
  v28(v23, 0, 1, v21);
  v27(v49, v24 + v26, v21);
  v28(v49, 0, 1, v21);
  if (*(v24 + *(v50 + 24)) >= 0x7FFFFFFFFFFFFFFFuLL)
  {
    v29 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v29 = *(v24 + *(v50 + 24));
  }

  v30 = v22[6];
  if (v30(v23, 1, v21) == 1)
  {
    v31 = 0;
  }

  else
  {
    v33 = v0[10];
    v32 = v0[11];
    v34 = v0[9];
    v31 = sub_20E321FB0();
    (*(v32 + 8))(v34, v33);
  }

  v35 = v0[10];
  v36 = v0[8];
  if (v30(v36, 1, v35) == 1)
  {
    v37 = 0;
  }

  else
  {
    v38 = v0[11];
    v37 = sub_20E321FB0();
    (*(v38 + 8))(v36, v35);
  }

  v39 = [objc_allocWithZone(MEMORY[0x277CF1A50]) initWithStartDate:v31 endDate:v37 maxEvents:v29 lastN:0 reversed:0];
  v0[16] = v39;

  v40 = sub_20E1A4674();
  v41 = MEMORY[0x277D84F90];
  if (v40)
  {
    v42 = sub_20E1A4CEC(v40);

    if (v42)
    {
      v41 = v42;
    }
  }

  v0[17] = v41;

  v43 = sub_20E3227B0();
  v44 = sub_20E322A40();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 134217984;
    *(v45 + 4) = *(v41 + 16);

    _os_log_impl(&dword_20E031000, v43, v44, "#BiomeSessionBuilder Number of IF Telemetry events events loaded: %ld", v45, 0xCu);
    MEMORY[0x20F32CA80](v45, -1, -1);
  }

  else
  {
  }

  v46 = *MEMORY[0x277CF0E60];
  v0[18] = *(v51 + 16);

  v47 = swift_task_alloc();
  v0[19] = v47;
  *v47 = v0;
  v47[1] = sub_20E1A6F68;

  return sub_20E1B0820(v46, v39, 0xD000000000000020, 0x800000020E35F790);
}

uint64_t sub_20E1A6F68(uint64_t a1)
{
  v2 = *(*v1 + 152);
  v3 = *(*v1 + 144);
  v5 = *v1;
  *(*v1 + 160) = a1;

  return MEMORY[0x2822009F8](sub_20E1A7088, 0, 0);
}

uint64_t sub_20E1A7088()
{
  if (*(v0 + 160) && (v1 = sub_20E1A4B84(*(v0 + 160)), *(v0 + 168) = v1, , v1))
  {
    if (v1 >> 62)
    {
      if (sub_20E322BC0())
      {
        goto LABEL_5;
      }
    }

    else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_5:
      v2 = *(v0 + 120);

      v3 = sub_20E3227B0();
      v4 = sub_20E322A40();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        *v5 = 134217984;
        if (v1 >> 62)
        {
          v6 = sub_20E322BC0();
        }

        else
        {
          v6 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *(v5 + 4) = v6;

        _os_log_impl(&dword_20E031000, v3, v4, "Number of Sage Transcript events: %ld", v5, 0xCu);
        MEMORY[0x20F32CA80](v5, -1, -1);
      }

      else
      {
      }

      v24 = swift_task_alloc();
      *(v0 + 176) = v24;
      *v24 = v0;
      v24[1] = sub_20E1A73E0;

      return sub_20E068EAC(v1);
    }

    v25 = *(v0 + 136);
    v26 = *(v0 + 120);

    v9 = sub_20E3227B0();
    v10 = sub_20E322A40();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      v12 = "BiomeSessionBuilder loaded empty list of events, not updating SessionView";
      goto LABEL_10;
    }
  }

  else
  {
    v7 = *(v0 + 136);
    v8 = *(v0 + 120);

    v9 = sub_20E3227B0();
    v10 = sub_20E322A40();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      v12 = "BiomeSessionBuilder loaded nil IF transcript events, exiting SessionView builder";
LABEL_10:
      _os_log_impl(&dword_20E031000, v9, v10, v12, v11, 2u);
      MEMORY[0x20F32CA80](v11, -1, -1);
    }
  }

  v13 = *(v0 + 16);

  v14 = type metadata accessor for SessionView(0);
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  v15 = *(v0 + 112);
  v16 = *(v0 + 96);
  v18 = *(v0 + 64);
  v17 = *(v0 + 72);
  v20 = *(v0 + 48);
  v19 = *(v0 + 56);
  v21 = *(v0 + 40);

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_20E1A73E0(uint64_t a1)
{
  v2 = *(*v1 + 176);
  v3 = *(*v1 + 168);
  v5 = *v1;
  *(*v1 + 184) = a1;

  return MEMORY[0x2822009F8](sub_20E1A7500, 0, 0);
}

uint64_t sub_20E1A7500()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 136);
  v3 = *(v0 + 120);
  v5 = *(v0 + 48);
  v4 = *(v0 + 56);
  sub_20E1A7784(v4);

  sub_20E0486F4(v4, v5, &qword_27C868AD0, &qword_20E33C0A8);
  v6 = sub_20E3227B0();
  v7 = sub_20E322A40();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 48);
  if (v8)
  {
    v10 = *(v0 + 40);
    v11 = swift_slowAlloc();
    *v11 = 134217984;
    sub_20E0486F4(v9, v10, &qword_27C868AD0, &qword_20E33C0A8);
    v12 = type metadata accessor for SessionView(0);
    v13 = (*(*(v12 - 8) + 48))(v10, 1, v12);
    v14 = *(v0 + 40);
    if (v13 == 1)
    {
      sub_20E04875C(v14, &qword_27C868AD0, &qword_20E33C0A8);
      v15 = -1;
    }

    else
    {
      v15 = *(v14 + *(v12 + 24));
      sub_20E1B2484(v14, type metadata accessor for SessionView);
    }

    sub_20E04875C(*(v0 + 48), &qword_27C868AD0, &qword_20E33C0A8);
    *(v11 + 4) = v15;
    _os_log_impl(&dword_20E031000, v6, v7, "Formulated SessionView: num= %ld", v11, 0xCu);
    MEMORY[0x20F32CA80](v11, -1, -1);
  }

  else
  {
    sub_20E04875C(*(v0 + 48), &qword_27C868AD0, &qword_20E33C0A8);
  }

  v16 = *(v0 + 56);
  v17 = *(v0 + 16);

  sub_20E195AA4(v16, v17, &qword_27C868AD0, &qword_20E33C0A8);
  v18 = *(v0 + 112);
  v19 = *(v0 + 96);
  v21 = *(v0 + 64);
  v20 = *(v0 + 72);
  v23 = *(v0 + 48);
  v22 = *(v0 + 56);
  v24 = *(v0 + 40);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_20E1A7784@<X0>(uint64_t a1@<X8>)
{
  v197 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688C0, &qword_20E33B870);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v196 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868778, &unk_20E33C000);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v196 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863F30, &qword_20E325D90);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v230 = &v196 - v11;
  v227 = type metadata accessor for RequestData(0);
  v226 = *(v227 - 8);
  v12 = *(v226 + 64);
  v13 = MEMORY[0x28223BE20](v227);
  v234 = &v196 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v233 = &v196 - v15;
  v16 = sub_20E322010();
  v236 = *(v16 - 8);
  v237 = v16;
  v17 = *(v236 + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v235 = &v196 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v206 = &v196 - v20;
  v217 = type metadata accessor for SessionData(0);
  v21 = *(*(v217 - 1) + 64);
  v22 = MEMORY[0x28223BE20](v217);
  v205 = &v196 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v238 = &v196 - v24;
  v208 = type metadata accessor for SessionSignature(0);
  v25 = *(*(v208 - 8) + 64);
  MEMORY[0x28223BE20](v208);
  v210 = &v196 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);

  v28 = sub_20E1B11DC(v27);

  v30 = sub_20E1B1754(v29);
  v216 = 0;

  v31 = *(v28 + 16);
  v209 = v28;
  v211 = v30;
  v213 = v8;
  if (v31)
  {
    v32 = v4;
    v33 = sub_20E225790(v31, 0);
    v34 = sub_20E1B06C8(v240, v33 + 4, v31, v28);

    sub_20E0381E8();
    if (v34 != v31)
    {
LABEL_102:
      __break(1u);
      goto LABEL_103;
    }

    v30 = v211;
    v4 = v32;
  }

  else
  {
    v33 = MEMORY[0x277D84F90];
  }

  v222 = v4;
  v35 = *(v30 + 16);
  v36 = MEMORY[0x277D84F90];
  if (v35)
  {
    v37 = sub_20E225790(*(v30 + 16), 0);
    v38 = sub_20E1B06C8(v240, v37 + 4, v35, v30);

    sub_20E0381E8();
    if (v38 != v35)
    {
LABEL_103:
      __break(1u);
      goto LABEL_104;
    }

    v36 = MEMORY[0x277D84F90];
  }

  else
  {
    v37 = MEMORY[0x277D84F90];
  }

  *&v240[0] = v33;
  sub_20E1AFBB8(v37);
  v39 = sub_20E1B1AB0(*&v240[0]);

  v40 = *(v39 + 16);
  if (v40)
  {
    v41 = sub_20E225790(*(v39 + 16), 0);
    v42 = sub_20E1B0570(v240, v41 + 4, v40, v39);
    sub_20E0381E8();
    if (v42 == v40)
    {
      goto LABEL_13;
    }

    __break(1u);
  }

  v41 = MEMORY[0x277D84F90];
LABEL_13:
  v204 = v41[2];
  if (v204)
  {
    v207 = v41;
    v43 = v208;
    v44 = v210;
    v45 = (v210 + *(v208 + 28));
    v46 = type metadata accessor for AttributionTraits(0);
    v47 = *(v46 - 8);
    v219 = *(v47 + 56);
    v218 = v47 + 56;
    v219(v45, 1, 1, v46);
    *v44 = 769;
    *(v44 + 8) = 0;
    *(v44 + 16) = 0xE000000000000000;
    *(v44 + v43[8]) = sub_20E049AE4(v36);
    *(v44 + v43[9]) = &unk_282537420;
    *(v44 + v43[10]) = v36;
    sub_20E04875C(v45, &qword_27C8688E8, &unk_20E3573E0);
    *(v45 + 2) = 0;
    *(v45 + 3) = 0;
    v48 = *(v46 + 24);
    v49 = sub_20E322060();
    v50 = *(v49 - 8);
    v51 = *(v50 + 56);
    v52 = v50 + 56;
    v51(&v45[v48], 1, 1, v49);
    v53 = &v45[*(v46 + 28)];
    *v45 = 0;
    *(v45 + 1) = 0;
    sub_20E04875C(&v45[v48], &qword_27C863A90, &unk_20E33C020);
    v202 = v49;
    v201 = v51;
    v200 = v52;
    v51(&v45[v48], 1, 1, v49);
    *v53 = 0;
    *(v53 + 1) = 0;
    v203 = v46;
    v219(v45, 0, 1, v46);
    *(v44 + v43[11]) = v36;
    v54 = v43[12];
    v55 = 0;
    v56 = v207;
    v57 = (v44 + v54);
    v199 = v207 + 4;
    v198 = (v236 + 40);
    v225 = (v236 + 56);
    v228 = (v236 + 32);
    v224 = (v236 + 48);
    v58 = MEMORY[0x277D84F98];
    *v57 = 0;
    v57[1] = 0xE000000000000000;
    while (v55 < v56[2])
    {
      v215 = v58;
      v214 = v55;
      v64 = &v199[2 * v55];
      v65 = v64[1];
      v220 = *v64;
      v221 = v65;

      v66 = v238;
      sub_20E322000();
      v67 = v66 + v217[5];
      v68 = v208;
      v69 = (v67 + *(v208 + 28));
      v70 = v203;
      v219(v69, 1, 1, v203);
      *v67 = 769;
      *(v67 + 8) = 0;
      *(v67 + 16) = 0xE000000000000000;
      *(v67 + v68[8]) = sub_20E049AE4(v36);
      *(v67 + v68[9]) = &unk_282537420;
      *(v67 + v68[10]) = v36;
      sub_20E04875C(v69, &qword_27C8688E8, &unk_20E3573E0);
      *(v69 + 2) = 0;
      *(v69 + 3) = 0;
      v71 = *(v70 + 24);
      v72 = v202;
      v73 = v201;
      v201(&v69[v71], 1, 1, v202);
      v74 = &v69[*(v70 + 28)];
      *v69 = 0;
      *(v69 + 1) = 0;
      sub_20E04875C(&v69[v71], &qword_27C863A90, &unk_20E33C020);
      v75 = v72;
      v76 = v221;
      v73(&v69[v71], 1, 1, v75);
      v77 = v220;
      *v74 = 0;
      *(v74 + 1) = 0;
      v219(v69, 0, 1, v70);
      *(v67 + v68[11]) = v36;
      v78 = (v67 + v68[12]);
      *v78 = 0;
      v78[1] = 0xE000000000000000;
      v79 = v217;
      v80 = v238;
      v81 = (v238 + v217[6]);
      v82 = (v238 + v217[7]);
      *v82 = 0;
      v82[1] = 0xE000000000000000;
      v83 = v79[8];
      v84 = sub_20E049CBC(v36);
      v236 = v83;
      *(v80 + v83) = v84;
      *v81 = v77;
      v81[1] = v76;

      v85 = v206;
      sub_20E322000();
      (*v198)(v80, v85, v237);
      sub_20E1B241C(v210, v67);
      v86 = v209;
      if (*(v209 + 16))
      {
        v87 = sub_20E1ACAD0(v77, v76);
        v88 = v211;
        if (v89)
        {
          v90 = *(*(v86 + 56) + 8 * v87);
        }

        else
        {
          v90 = v36;
        }
      }

      else
      {
        v90 = v36;
        v88 = v211;
      }

      v91 = v216;
      v229 = sub_20E1B1B48(v90);

      if (*(v88 + 16) && (v92 = sub_20E1ACAD0(v77, v76), (v93 & 1) != 0))
      {
        v94 = *(*(v88 + 56) + 8 * v92);
      }

      else
      {
        v94 = v36;
      }

      v95 = sub_20E1B20C0(v94);
      v216 = v91;

      v96 = *(v95 + 16);
      v223 = v82;
      if (v96)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868A98, &qword_20E33C070);
        v97 = swift_allocObject();
        v98 = _swift_stdlib_malloc_size(v97);
        v99 = v98 - 32;
        if (v98 < 32)
        {
          v99 = v98 - 17;
        }

        v97[2] = v96;
        v97[3] = 2 * (v99 >> 4);
        v100 = sub_20E1B06C8(v240, v97 + 4, v96, v95);

        sub_20E0381E8();
        if (v100 != v96)
        {
          goto LABEL_99;
        }

        v36 = MEMORY[0x277D84F90];
        v82 = v223;
      }

      else
      {
        v97 = v36;
      }

      v101 = v229;
      v102 = *(v229 + 16);
      if (v102)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868A98, &qword_20E33C070);
        v103 = swift_allocObject();
        v104 = _swift_stdlib_malloc_size(v103);
        v105 = v104 - 32;
        if (v104 < 32)
        {
          v105 = v104 - 17;
        }

        v103[2] = v102;
        v103[3] = 2 * (v105 >> 4);
        v232 = sub_20E1B06C8(v240, v103 + 4, v102, v101);

        sub_20E0381E8();
        if (v232 != v102)
        {
          goto LABEL_100;
        }

        v36 = MEMORY[0x277D84F90];
        v82 = v223;
      }

      else
      {
        v103 = v36;
      }

      *&v240[0] = v97;
      sub_20E1AFBB8(v103);
      v106 = sub_20E1B1AB0(*&v240[0]);

      v107 = *(v106 + 16);
      v59 = v221;
      if (!v107)
      {

        v108 = v36;
        v112 = *(v36 + 16);
        if (!v112)
        {
          goto LABEL_88;
        }

LABEL_44:
        v232 = (v112 - 1);
        v212 = v108;
        v113 = v108 + 5;
LABEL_45:
        v115 = *(v113 - 1);
        v114 = *v113;
        v116 = *(v95 + 16);

        if (v116)
        {
          v117 = sub_20E1ACAD0(v115, v114);
          if (v118)
          {
            v119 = *(*(v95 + 56) + 8 * v117);
            if (*(v119 + 16))
            {
              v120 = *(type metadata accessor for TranscriptProtoEvent(0) - 8);
              v121 = v119 + ((*(v120 + 80) + 32) & ~*(v120 + 80));
              v116 = *(v121 + 16);
              v122 = *(v121 + 24);

LABEL_51:

              *v82 = v116;
              v82[1] = v122;
              v231 = v122;
              v123 = type metadata accessor for IERequestFeatureProvider(0);
              v124 = *(v123 + 48);
              v125 = *(v123 + 52);
              v126 = swift_allocObject() + OBJC_IVAR____TtC23LighthouseDataProcessor24IERequestFeatureProvider_result;
              *v126 = 8;
              *(v126 + 8) = 0;
              *(v126 + 16) = 0xE000000000000000;
              v127 = type metadata accessor for RequestEventResult(0);
              v128 = v127[6];
              v129 = type metadata accessor for TranscriptProtoStatementOutcomeEnum(0);
              (*(*(v129 - 8) + 56))(v126 + v128, 1, 1, v129);
              *(v126 + v127[7]) = 0;
              *(v126 + v127[8]) = 0;
              *(v126 + v127[9]) = 0;
              *(v126 + v127[10]) = 0;
              *(v126 + v127[11]) = 0;
              *(v126 + v127[12]) = 0;
              *(v126 + v127[13]) = 0;
              *(v126 + v127[14]) = 0;
              *(v126 + v127[15]) = 0;
              *(v126 + v127[16]) = 0;
              *(v126 + v127[17]) = 0;
              *(v126 + v127[18]) = v36;
              v130 = v127[19];
              v131 = type metadata accessor for TranscriptProtoStatementID(0);
              (*(*(v131 - 8) + 56))(v126 + v130, 1, 1, v131);
              if (*(v95 + 16) && (v132 = sub_20E1ACAD0(v115, v114), (v133 & 1) != 0))
              {
                v134 = *(*(v95 + 56) + 8 * v132);
              }

              else
              {
                v134 = v36;
              }

              sub_20E06E834(v134, v240);

              if (!*(v95 + 16))
              {
                goto LABEL_63;
              }

              v135 = sub_20E1ACAD0(v115, v114);
              if ((v136 & 1) == 0)
              {
                goto LABEL_63;
              }

              v137 = *(*(v95 + 56) + 8 * v135);
              if (!*(v137 + 16))
              {
                goto LABEL_63;
              }

              v138 = type metadata accessor for TranscriptProtoEvent(0);
              v139 = v222;
              sub_20E0486F4(v137 + *(v138 + 52) + ((*(*(v138 - 8) + 80) + 32) & ~*(*(v138 - 8) + 80)), v222, &qword_27C8688C0, &qword_20E33B870);
              v140 = type metadata accessor for TranscriptProtoTimepoint(0);
              if ((*(*(v140 - 8) + 48))(v139, 1, v140) == 1)
              {
                v141 = v139;
                v142 = &qword_27C8688C0;
                v143 = &qword_20E33B870;
                goto LABEL_62;
              }

              v144 = v139 + *(v140 + 28);
              v145 = v213;
              sub_20E0486F4(v144, v213, &qword_27C868778, &unk_20E33C000);
              sub_20E1B2484(v139, type metadata accessor for TranscriptProtoTimepoint);
              v146 = sub_20E322150();
              v147 = *(v146 - 8);
              if ((*(v147 + 48))(v145, 1, v146) == 1)
              {
                v141 = v145;
                v142 = &qword_27C868778;
                v143 = &unk_20E33C000;
LABEL_62:
                sub_20E04875C(v141, v142, v143);
                v82 = v223;
LABEL_63:
                v148 = v230;
                v149 = v237;
                (*v225)(v230, 1, 1, v237);
                sub_20E322000();
                if ((*v224)(v148, 1, v149) != 1)
                {
                  sub_20E04875C(v230, &qword_27C863F30, &qword_20E325D90);
                }

                if (*(v95 + 16))
                {
LABEL_66:
                  v150 = sub_20E1ACAD0(v115, v114);
                  if (v151)
                  {
                    v152 = *(*(v95 + 56) + 8 * v150);

LABEL_70:
                    v156 = v229;
                    if (*(v229 + 16) && (v157 = sub_20E1ACAD0(v115, v114), (v158 & 1) != 0))
                    {
                      v159 = *(*(v156 + 56) + 8 * v157);
                    }

                    else
                    {
                      v159 = v36;
                    }

                    v160 = v233;
                    (*v228)(v233, v235, v237);
                    v161 = v227;
                    v162 = (v160 + *(v227 + 20));
                    *v162 = v115;
                    v162[1] = v114;
                    *(v160 + v161[6]) = v36;
                    v163 = (v160 + v161[7]);
                    *v163 = v152;
                    v163[1] = v159;
                    v164 = (v160 + v161[8]);
                    v165 = v240[1];
                    *v164 = v240[0];
                    v164[1] = v165;
                    v164[2] = *v241;
                    *(v164 + 46) = *&v241[14];
                    sub_20E1B25BC(v160, v234, type metadata accessor for RequestData);

                    v166 = v238;
                    v167 = v236;
                    v168 = *(v238 + v236);
                    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                    v170 = *(v166 + v167);
                    v239 = v170;
                    v172 = sub_20E1ACAD0(v115, v114);
                    v173 = v170[2];
                    v174 = (v171 & 1) == 0;
                    v175 = v173 + v174;
                    if (__OFADD__(v173, v174))
                    {
                      __break(1u);
LABEL_97:
                      __break(1u);
                      break;
                    }

                    v176 = v171;
                    if (v170[3] >= v175)
                    {
                      if (isUniquelyReferenced_nonNull_native)
                      {
                        v179 = v239;
                        if ((v171 & 1) == 0)
                        {
                          goto LABEL_78;
                        }
                      }

                      else
                      {
                        sub_20E1AF0B8();
                        v179 = v239;
                        if ((v176 & 1) == 0)
                        {
                          goto LABEL_78;
                        }
                      }
                    }

                    else
                    {
                      sub_20E1ADCA4(v175, isUniquelyReferenced_nonNull_native);
                      v177 = sub_20E1ACAD0(v115, v114);
                      if ((v176 & 1) != (v178 & 1))
                      {
                        result = sub_20E322DB0();
                        __break(1u);
                        return result;
                      }

                      v172 = v177;
                      v179 = v239;
                      if ((v176 & 1) == 0)
                      {
LABEL_78:
                        v179[(v172 >> 6) + 8] |= 1 << v172;
                        v180 = (v179[6] + 16 * v172);
                        *v180 = v115;
                        v180[1] = v114;
                        sub_20E1B2624(v234, v179[7] + *(v226 + 72) * v172, type metadata accessor for RequestData);
                        v181 = v179[2];
                        v182 = __OFADD__(v181, 1);
                        v183 = v181 + 1;
                        if (v182)
                        {
                          goto LABEL_97;
                        }

                        v179[2] = v183;

                        goto LABEL_83;
                      }
                    }

                    sub_20E1B1120(v234, v179[7] + *(v226 + 72) * v172, type metadata accessor for RequestData);

LABEL_83:
                    sub_20E1B2484(v233, type metadata accessor for RequestData);
                    *(v238 + v236) = v179;
                    v36 = MEMORY[0x277D84F90];
                    if (!v232)
                    {

                      v59 = v221;
                      goto LABEL_16;
                    }

                    v232 = (v232 - 1);
                    v113 += 2;
                    goto LABEL_45;
                  }
                }
              }

              else
              {
                v153 = v230;
                sub_20E322140();
                (*(v147 + 8))(v145, v146);
                v154 = v237;
                (*v225)(v153, 0, 1, v237);
                v155 = v153;
                v36 = MEMORY[0x277D84F90];
                (*v228)(v235, v155, v154);
                v82 = v223;
                if (*(v95 + 16))
                {
                  goto LABEL_66;
                }
              }

              v152 = v36;
              goto LABEL_70;
            }
          }

          v116 = 0;
        }

        v122 = 0xE000000000000000;
        goto LABEL_51;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868A98, &qword_20E33C070);
      v108 = swift_allocObject();
      v109 = _swift_stdlib_malloc_size(v108);
      v110 = v109 - 32;
      if (v109 < 32)
      {
        v110 = v109 - 17;
      }

      v108[2] = v107;
      v108[3] = 2 * (v110 >> 4);
      v111 = sub_20E1B0570(v240, v108 + 4, v107, v106);
      sub_20E0381E8();
      if (v111 != v107)
      {
        goto LABEL_101;
      }

      v112 = v108[2];
      if (v112)
      {
        goto LABEL_44;
      }

LABEL_88:

LABEL_16:
      v55 = v214 + 1;

      v60 = v238;
      v61 = v205;
      sub_20E1B25BC(v238, v205, type metadata accessor for SessionData);
      v62 = v215;
      v63 = swift_isUniquelyReferenced_nonNull_native();
      *&v240[0] = v62;
      sub_20E1AE944(v61, v220, v59, v63);

      v58 = *&v240[0];
      sub_20E1B2484(v60, type metadata accessor for SessionData);
      v56 = v207;
      if (v55 == v204)
      {

        v184 = v197;
        sub_20E322000();
        v185 = type metadata accessor for SessionView(0);
        v186 = v184 + v185[5];
        sub_20E322000();
        sub_20E1B2484(v210, type metadata accessor for SessionSignature);
        *(v184 + v185[6]) = *(v58 + 16);
        *(v184 + v185[7]) = v58;
        return (*(*(v185 - 1) + 56))(v184, 0, 1, v185);
      }
    }

    __break(1u);
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  if (qword_280E12B88 != -1)
  {
LABEL_104:
    swift_once();
  }

  v188 = sub_20E3227C0();
  __swift_project_value_buffer(v188, qword_280E12C48);
  v189 = sub_20E3227B0();
  v190 = sub_20E322A40();
  if (os_log_type_enabled(v189, v190))
  {
    v191 = swift_slowAlloc();
    *v191 = 0;
    _os_log_impl(&dword_20E031000, v189, v190, "Empty sessionIDs, SessionView cannot be created", v191, 2u);
    MEMORY[0x20F32CA80](v191, -1, -1);
  }

  v192 = type metadata accessor for SessionView(0);
  v193 = *(*(v192 - 8) + 56);
  v194 = v192;
  v195 = v197;

  return v193(v195, 1, 1, v194);
}

uint64_t sub_20E1A8E9C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for SessionView(0);
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863F30, &qword_20E325D90) - 8) + 64) + 15;
  v3[9] = swift_task_alloc();
  v8 = sub_20E322010();
  v3[10] = v8;
  v9 = *(v8 - 8);
  v3[11] = v9;
  v10 = *(v9 + 64) + 15;
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20E1A9030, 0, 0);
}

uint64_t sub_20E1A9030()
{
  v65 = v0;
  if (qword_280E12B88 != -1)
  {
    swift_once();
  }

  v1 = sub_20E3227C0();
  v0[17] = __swift_project_value_buffer(v1, qword_280E12C48);
  v2 = sub_20E3227B0();
  v3 = sub_20E322A40();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_20E031000, v2, v3, "Running Lighthouse MLHost Extension", v4, 2u);
    MEMORY[0x20F32CA80](v4, -1, -1);
  }

  v6 = v0[15];
  v5 = v0[16];
  v8 = v0[10];
  v7 = v0[11];
  v9 = v0[3];

  v10 = *(v7 + 16);
  v10(v5, v9, v8);
  v63 = v10;
  v10(v6, v5, v8);
  v11 = sub_20E3227B0();
  v12 = sub_20E322A40();
  v13 = os_log_type_enabled(v11, v12);
  v14 = v0[15];
  v16 = v0[10];
  v15 = v0[11];
  if (v13)
  {
    v17 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v64 = v61;
    *v17 = 136315138;
    sub_20E1B256C(&qword_280E12B30, MEMORY[0x277CC9578]);
    v18 = sub_20E322D50();
    v20 = v19;
    v21 = v16;
    v22 = *(v15 + 8);
    v22(v14, v21);
    v23 = sub_20E31B6C4(v18, v20, &v64);

    *(v17 + 4) = v23;
    _os_log_impl(&dword_20E031000, v11, v12, "Bookmark: start collection date %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v61);
    MEMORY[0x20F32CA80](v61, -1, -1);
    MEMORY[0x20F32CA80](v17, -1, -1);
  }

  else
  {

    v24 = v16;
    v22 = *(v15 + 8);
    v22(v14, v24);
  }

  v0[18] = v22;
  v26 = v0[13];
  v25 = v0[14];
  v27 = v0[10];
  v28 = v0[3];
  v29 = v28 + *(type metadata accessor for SessionViewConfigs() + 20);
  v63(v25, v29, v27);
  v63(v26, v25, v27);
  v30 = sub_20E3227B0();
  v31 = sub_20E322A40();
  v32 = os_log_type_enabled(v30, v31);
  v33 = v0[13];
  v34 = v0[10];
  v35 = v0[11];
  v60 = v22;
  if (v32)
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v64 = v37;
    *v36 = 136315138;
    sub_20E1B256C(&qword_280E12B30, MEMORY[0x277CC9578]);
    v38 = sub_20E322D50();
    v39 = v22;
    v40 = v38;
    v42 = v41;
    v39(v33, v34);
    v43 = sub_20E31B6C4(v40, v42, &v64);

    *(v36 + 4) = v43;
    _os_log_impl(&dword_20E031000, v30, v31, "Bookmark: updating lastCollectionDate to current Date %s", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v37);
    MEMORY[0x20F32CA80](v37, -1, -1);
    MEMORY[0x20F32CA80](v36, -1, -1);
  }

  else
  {

    v22(v33, v34);
  }

  v44 = v0[16];
  v45 = v0[14];
  v47 = v0[11];
  v46 = v0[12];
  v49 = v0[9];
  v48 = v0[10];
  v62 = v0[4];
  v50 = *(v62 + 16);
  v63(v46, v45, v48);

  DataProcessorBookmarkProvider.lastCollectionDate.setter(v46);

  v63(v49, v45, v48);
  (*(v47 + 56))(v49, 0, 1, v48);
  v51 = sub_20E321FB0();
  if ((*(v47 + 48))(v49, 1, v48) == 1)
  {
    v52 = 0;
  }

  else
  {
    v53 = v0[10];
    v54 = v0[11];
    v55 = v0[9];
    v52 = sub_20E321FB0();
    v60(v55, v53);
  }

  v56 = [objc_allocWithZone(MEMORY[0x277CF1A50]) initWithStartDate:v51 endDate:v52 maxEvents:0 lastN:0 reversed:0];
  v0[19] = v56;

  v57 = *MEMORY[0x277CF0E60];
  v0[20] = *(v62 + 16);

  v58 = swift_task_alloc();
  v0[21] = v58;
  *v58 = v0;
  v58[1] = sub_20E1A9668;

  return sub_20E1B0820(v57, v56, 0xD00000000000001ALL, 0x800000020E35F7C0);
}

uint64_t sub_20E1A9668(uint64_t a1)
{
  v2 = *(*v1 + 168);
  v3 = *(*v1 + 160);
  v5 = *v1;
  *(*v1 + 176) = a1;

  return MEMORY[0x2822009F8](sub_20E1A9788, 0, 0);
}

uint64_t sub_20E1A9788()
{
  if (*(v0 + 176) && (v1 = sub_20E1A4B84(*(v0 + 176)), *(v0 + 184) = v1, , v1))
  {
    if (v1 >> 62)
    {
      v28 = sub_20E322BC0();
      v29 = *(v0 + 136);
      if (v28)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v2 = *(v0 + 136);
      if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_5:

        v3 = sub_20E3227B0();
        v4 = sub_20E322A40();
        if (os_log_type_enabled(v3, v4))
        {
          v5 = swift_slowAlloc();
          *v5 = 134217984;
          if (v1 >> 62)
          {
            v6 = sub_20E322BC0();
          }

          else
          {
            v6 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          *(v5 + 4) = v6;

          _os_log_impl(&dword_20E031000, v3, v4, "Number of Sage Transcript events: %ld", v5, 0xCu);
          MEMORY[0x20F32CA80](v5, -1, -1);
        }

        else
        {
        }

        v27 = swift_task_alloc();
        *(v0 + 192) = v27;
        *v27 = v0;
        v27[1] = sub_20E1A9AFC;

        return sub_20E068EAC(v1);
      }
    }

    v8 = sub_20E3227B0();
    v9 = sub_20E322A40();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      v11 = "BiomeSessionBuilder loaded empty list of events, not updating SessionView";
      goto LABEL_10;
    }
  }

  else
  {
    v7 = *(v0 + 136);
    v8 = sub_20E3227B0();
    v9 = sub_20E322A40();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      v11 = "BiomeSessionBuilder loaded nil events, exiting SessionView builder";
LABEL_10:
      _os_log_impl(&dword_20E031000, v8, v9, v11, v10, 2u);
      MEMORY[0x20F32CA80](v10, -1, -1);
    }
  }

  v12 = *(v0 + 144);
  v13 = *(v0 + 128);
  v14 = *(v0 + 112);
  v15 = *(v0 + 80);
  v16 = *(v0 + 88);

  v12(v14, v15);
  v12(v13, v15);
  v17 = *(v0 + 120);
  v18 = *(v0 + 128);
  v20 = *(v0 + 104);
  v19 = *(v0 + 112);
  v21 = *(v0 + 96);
  v23 = *(v0 + 64);
  v22 = *(v0 + 72);
  v24 = *(v0 + 56);
  (*(*(v0 + 48) + 56))(*(v0 + 16), 1, 1, *(v0 + 40));

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_20E1A9AFC(uint64_t a1)
{
  v2 = *(*v1 + 192);
  v3 = *(*v1 + 184);
  v5 = *v1;
  *(*v1 + 200) = a1;

  return MEMORY[0x2822009F8](sub_20E1A9C1C, 0, 0);
}

uint64_t sub_20E1A9C1C()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 144);
  v33 = *(v0 + 136);
  v3 = *(v0 + 88);
  v4 = *(v0 + 96);
  v5 = *(v0 + 80);
  v7 = *(v0 + 56);
  v6 = *(v0 + 64);
  v8 = *(v0 + 24);
  v9 = *(*(v0 + 32) + 16);

  DataProcessorBookmarkProvider.lastCollectionDate.getter(v4);

  sub_20E1A9EC0(v1, v8, v4, v6);

  v2(v4, v5);
  sub_20E1B25BC(v6, v7, type metadata accessor for SessionView);
  v10 = sub_20E3227B0();
  v11 = sub_20E322A40();
  v12 = os_log_type_enabled(v10, v11);
  v13 = *(v0 + 56);
  if (v12)
  {
    v14 = *(v0 + 40);
    v15 = swift_slowAlloc();
    *v15 = 134217984;
    v16 = *(v13 + *(v14 + 24));
    sub_20E1B2484(v13, type metadata accessor for SessionView);
    *(v15 + 4) = v16;
    _os_log_impl(&dword_20E031000, v10, v11, "Formulated SessionView: num= %ld", v15, 0xCu);
    MEMORY[0x20F32CA80](v15, -1, -1);
  }

  else
  {
    sub_20E1B2484(*(v0 + 56), type metadata accessor for SessionView);
  }

  v17 = *(v0 + 144);
  v18 = *(v0 + 128);
  v19 = *(v0 + 112);
  v20 = *(v0 + 80);
  v21 = *(v0 + 64);
  v22 = *(v0 + 16);

  v17(v19, v20);
  v17(v18, v20);
  sub_20E1B2624(v21, v22, type metadata accessor for SessionView);
  v23 = *(v0 + 120);
  v24 = *(v0 + 128);
  v26 = *(v0 + 104);
  v25 = *(v0 + 112);
  v27 = *(v0 + 96);
  v29 = *(v0 + 64);
  v28 = *(v0 + 72);
  v30 = *(v0 + 56);
  (*(*(v0 + 48) + 56))(*(v0 + 16), 0, 1, *(v0 + 40));

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_20E1A9EC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v308 = a3;
  v307 = a2;
  v367 = a1;
  v309 = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868A50, &qword_20E33BFD8);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v364 = &v306 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v363 = (&v306 - v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868A58, &unk_20E33BFE0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v326 = &v306 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v325 = &v306 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688F0, &unk_20E33B920);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v337 = &v306 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v318 = &v306 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868A60, &unk_20E33BFF0);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v312 = &v306 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v319 = &v306 - v23;
  v368 = type metadata accessor for SessionData(0);
  v356 = *(v368 - 8);
  v24 = *(v356 + 64);
  v25 = MEMORY[0x28223BE20](v368);
  v339 = &v306 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v330 = &v306 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688C0, &qword_20E33B870);
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x28223BE20](v28 - 8);
  v317 = &v306 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v329 = &v306 - v33;
  MEMORY[0x28223BE20](v32);
  v328 = &v306 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868778, &unk_20E33C000);
  v36 = *(*(v35 - 8) + 64);
  v37 = MEMORY[0x28223BE20](v35 - 8);
  v314 = &v306 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x28223BE20](v37);
  v324 = &v306 - v40;
  MEMORY[0x28223BE20](v39);
  v323 = &v306 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863F30, &qword_20E325D90);
  v43 = *(*(v42 - 8) + 64);
  v44 = MEMORY[0x28223BE20](v42 - 8);
  v320 = &v306 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = MEMORY[0x28223BE20](v44);
  v338 = &v306 - v47;
  MEMORY[0x28223BE20](v46);
  v327 = &v306 - v48;
  v353 = sub_20E322010();
  v311 = *(v353 - 8);
  v49 = *(v311 + 64);
  v50 = MEMORY[0x28223BE20](v353);
  v316 = &v306 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = MEMORY[0x28223BE20](v50);
  v345 = &v306 - v53;
  MEMORY[0x28223BE20](v52);
  v344 = &v306 - v54;
  v358 = type metadata accessor for RequestData(0);
  v360 = *(v358 - 8);
  v55 = *(v360 + 64);
  v56 = MEMORY[0x28223BE20](v358);
  v369 = &v306 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = MEMORY[0x28223BE20](v56);
  v359 = &v306 - v59;
  v60 = MEMORY[0x28223BE20](v58);
  v315 = &v306 - v61;
  MEMORY[0x28223BE20](v60);
  v343 = &v306 - v62;
  v355 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868A68, &unk_20E33C010);
  v310 = *(v355 - 8);
  v63 = *(v310 + 64);
  MEMORY[0x28223BE20](v355);
  v347 = &v306 - v64;
  v334 = type metadata accessor for TranscriptProtoEvent(0);
  v362 = *(v334 - 8);
  v65 = *(v362 + 64);
  v66 = MEMORY[0x28223BE20](v334);
  v306 = &v306 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v66);
  v365 = (&v306 - v68);
  v69 = type metadata accessor for SessionSignature(0);
  v70 = (v69 - 8);
  v71 = *(*(v69 - 8) + 64);
  MEMORY[0x28223BE20](v69);
  v73 = &v306 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  v376 = MEMORY[0x277D84F98];
  v74 = &v73[v70[9]];
  v75 = type metadata accessor for AttributionTraits(0);
  v366 = *(*(v75 - 8) + 56);
  v366(v74, 1, 1, v75);
  *v73 = 769;
  *(v73 + 1) = 0;
  *(v73 + 2) = 0xE000000000000000;
  v76 = MEMORY[0x277D84F90];
  *&v73[v70[10]] = sub_20E049AE4(MEMORY[0x277D84F90]);
  *&v73[v70[11]] = &unk_282537420;
  *&v73[v70[12]] = v76;
  sub_20E04875C(v74, &qword_27C8688E8, &unk_20E3573E0);
  *(v74 + 2) = 0;
  *(v74 + 3) = 0;
  v77 = *(v75 + 24);
  v78 = sub_20E322060();
  v79 = *(*(v78 - 8) + 56);
  v79(&v74[v77], 1, 1, v78);
  v80 = &v74[*(v75 + 28)];
  *v74 = 0;
  *(v74 + 1) = 0;
  sub_20E04875C(&v74[v77], &qword_27C863A90, &unk_20E33C020);
  v79(&v74[v77], 1, 1, v78);
  v81 = v347;
  *v80 = 0;
  *(v80 + 1) = 0;
  v82 = v74;
  v83 = v365;
  v366(v82, 0, 1, v75);
  v84 = v367;
  *&v73[v70[13]] = MEMORY[0x277D84F90];
  v85 = v70[14];
  v331 = v73;
  v86 = &v73[v85];
  *v86 = 0;
  *(v86 + 1) = 0xE000000000000000;
  v336 = *(v84 + 16);
  if (v336)
  {
    v87 = 0;
    v332 = *(v362 + 80);
    v333 = (v332 + 32) & ~v332;
    v335 = v84 + v333;
    v357 = *(v362 + 72);
    v349 = (v311 + 56);
    v361 = v311 + 32;
    v341 = (v311 + 48);
    v340 = (v356 + 56);
    v322 = (v356 + 48);
    v321 = (v360 + 56);
    v313 = (v360 + 48);
    v348 = xmmword_20E326380;
LABEL_5:
    v354 = (v87 + 1);
    sub_20E1B25BC(v335 + v357 * v87, v83, type metadata accessor for TranscriptProtoEvent);
    v90 = v83[7];
    v367 = v83[6];
    v366 = v90;
    v91 = v83[3];
    v350 = v83[2];
    v92 = v83[5];
    v362 = v83[4];
    v93 = v376;
    v94 = v376 + 64;
    v95 = 1 << *(v376 + 32);
    if (v95 < 64)
    {
      v96 = ~(-1 << v95);
    }

    else
    {
      v96 = -1;
    }

    v97 = v96 & *(v376 + 64);
    v98 = (v95 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v351 = v91;

    v352 = v92;

    v100 = 0;
    while (v97)
    {
LABEL_15:
      v103 = v368;
      v104 = __clz(__rbit64(v97)) | (v100 << 6);
      v105 = (v93[6] + 16 * v104);
      v107 = *v105;
      v106 = v105[1];
      v108 = *(v356 + 72);
      sub_20E1B25BC(v93[7] + v108 * v104, v81 + *(v355 + 48), type metadata accessor for SessionData);
      *v81 = v107;
      v81[1] = v106;
      if (v107 == v367 && v106 == v366)
      {

        sub_20E04875C(v81, &qword_27C868A68, &unk_20E33C010);

        goto LABEL_42;
      }

      v97 &= v97 - 1;
      v110 = sub_20E322D60();

      result = sub_20E04875C(v81, &qword_27C868A68, &unk_20E33C010);
      if (v110)
      {

        v103 = v368;
LABEL_42:

        v172 = v358;
        v173 = v318;
        v174 = v352;
        if (v93[2] && (v175 = sub_20E1ACAD0(v367, v366), (v176 & 1) != 0))
        {
          sub_20E1B25BC(v93[7] + v175 * v108, v173, type metadata accessor for SessionData);
          v177 = 0;
        }

        else
        {
          v177 = 1;
        }

        (*v340)(v173, v177, 1, v103);
        v178 = v103;
        v179 = *v322;
        v180 = (*v322)(v173, 1, v178);
        v181 = v353;
        if (v180)
        {
          sub_20E04875C(v173, &qword_27C8688F0, &unk_20E33B920);
          v182 = *v321;
          v183 = v319;
          (*v321)(v319, 1, 1, v172);
          goto LABEL_53;
        }

        v184 = *(v173 + *(v178 + 32));
        if (*(v184 + 16) && (v185 = sub_20E1ACAD0(v362, v174), (v186 & 1) != 0))
        {
          v187 = *(v184 + 56) + *(v360 + 72) * v185;
          v183 = v319;
          sub_20E1B25BC(v187, v319, type metadata accessor for RequestData);
          v188 = 0;
        }

        else
        {
          v188 = 1;
          v183 = v319;
        }

        v182 = *v321;
        (*v321)(v183, v188, 1, v172);
        sub_20E04875C(v173, &qword_27C8688F0, &unk_20E33B920);
        v189 = *v313;
        if ((*v313)(v183, 1, v172) == 1)
        {
LABEL_53:
          sub_20E04875C(v183, &qword_27C868A60, &unk_20E33BFF0);
          v190 = v317;
          sub_20E0486F4(v365 + *(v334 + 52), v317, &qword_27C8688C0, &qword_20E33B870);
          v191 = type metadata accessor for TranscriptProtoTimepoint(0);
          if ((*(*(v191 - 8) + 48))(v190, 1, v191) == 1)
          {
            v192 = v190;
            v193 = &qword_27C8688C0;
            v194 = &qword_20E33B870;
LABEL_57:
            sub_20E04875C(v192, v193, v194);
            v199 = v320;
            (*v349)(v320, 1, 1, v181);
            v200 = v316;
            sub_20E322000();
            v201 = (*v341)(v199, 1, v181);
            v202 = v315;
            if (v201 != 1)
            {
              sub_20E04875C(v320, &qword_27C863F30, &qword_20E325D90);
            }
          }

          else
          {
            v195 = v190 + *(v191 + 28);
            v196 = v314;
            sub_20E0486F4(v195, v314, &qword_27C868778, &unk_20E33C000);
            sub_20E1B2484(v190, type metadata accessor for TranscriptProtoTimepoint);
            v197 = sub_20E322150();
            v198 = *(v197 - 8);
            if ((*(v198 + 48))(v196, 1, v197) == 1)
            {
              v192 = v196;
              v193 = &qword_27C868778;
              v194 = &unk_20E33C000;
              goto LABEL_57;
            }

            v203 = v320;
            sub_20E322140();
            (*(v198 + 8))(v196, v197);
            (*v349)(v203, 0, 1, v181);
            v200 = v316;
            (*v361)(v316, v203, v181);
            v202 = v315;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868A70, &qword_20E346180);
          v204 = v333;
          v205 = swift_allocObject();
          *(v205 + 16) = v348;
          sub_20E1B25BC(v365, v205 + v204, type metadata accessor for TranscriptProtoEvent);
          (*v361)(v202, v200, v181);
          v206 = &v202[v172[5]];
          v207 = v362;
          *v206 = v362;
          *(v206 + 1) = v174;
          *&v202[v172[6]] = v205;
          v208 = &v202[v172[7]];
          v209 = MEMORY[0x277D84F90];
          *v208 = MEMORY[0x277D84F90];
          *(v208 + 1) = v209;
          v210 = &v202[v172[8]];
          *(v210 + 46) = 0u;
          *(v210 + 1) = 0u;
          *(v210 + 2) = 0u;
          *v210 = 0u;

          v211 = sub_20E1A4FBC(v372, v367, v366);
          v213 = v212;
          v214 = v202;
          v215 = v368;
          if (v179(v212, 1, v368))
          {
          }

          else
          {
            v216 = v312;
            sub_20E1B25BC(v214, v312, type metadata accessor for RequestData);
            v182(v216, 0, 1, v172);
            v217 = v213 + v215[8];
            sub_20E1A5370(v216, v207, v174);
          }

          (v211)(v372, 0);
          v148 = v215;
          v87 = v354;
          sub_20E1B2484(v214, type metadata accessor for RequestData);
          v81 = v347;
          v83 = v365;
        }

        else
        {
          sub_20E04875C(v183, &qword_27C868A60, &unk_20E33BFF0);
          v218 = sub_20E1A4FBC(v372, v367, v366);
          v220 = v219;
          v148 = v368;
          if (v179(v219, 1, v368))
          {

            (v218)(v372, 0);
LABEL_36:
            v83 = v365;
          }

          else
          {
            v221 = v220 + v148[8];
            v222 = sub_20E1A5044(v370, v362, v174);
            v224 = v223;
            v225 = v189(v223, 1, v172);
            v83 = v365;
            if (v225)
            {
              (v222)(v370, 0);

              (v218)(v372, 0);
            }

            else
            {
              sub_20E1B25BC(v365, v306, type metadata accessor for TranscriptProtoEvent);
              v226 = v172[6];
              v227 = *(v224 + v226);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *(v224 + v226) = v227;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v227 = sub_20E2251F0(0, v227[2] + 1, 1, v227);
                *(v224 + v226) = v227;
              }

              v230 = v227[2];
              v229 = v227[3];
              if (v230 >= v229 >> 1)
              {
                v227 = sub_20E2251F0(v229 > 1, v230 + 1, 1, v227);
                *(v224 + v226) = v227;
              }

              v227[2] = v230 + 1;
              sub_20E1B2624(v306, v227 + v333 + v230 * v357, type metadata accessor for TranscriptProtoEvent);
              (v222)(v370, 0);

              (v218)(v372, 0);
              v148 = v368;
            }
          }

          v87 = v354;
        }

        v166 = v376;
        if (*(v376 + 16) && (v167 = sub_20E1ACAD0(v367, v366), (v168 & 1) != 0))
        {
          v169 = *(v166 + 56);
          v170 = v356;
          v171 = v337;
          sub_20E1B25BC(v169 + *(v356 + 72) * v167, v337, type metadata accessor for SessionData);
          (*(v170 + 56))(v171, 0, 1, v148);
          sub_20E04875C(v171, &qword_27C8688F0, &unk_20E33B920);
          sub_20E196948(v83, &v376, v367, v366);
        }

        else
        {
          v88 = v337;
          (*v340)(v337, 1, 1, v148);
          v89 = v88;
          v81 = v347;
          sub_20E04875C(v89, &qword_27C8688F0, &unk_20E33B920);
        }

        sub_20E1B2484(v83, type metadata accessor for TranscriptProtoEvent);
        if (v87 == v336)
        {
          goto LABEL_73;
        }

        goto LABEL_5;
      }
    }

    v101 = v353;
    while (1)
    {
      v102 = v100 + 1;
      if (__OFADD__(v100, 1))
      {
        break;
      }

      if (v102 >= v98)
      {

        v111 = *(v334 + 52);
        v112 = v328;
        sub_20E0486F4(v365 + v111, v328, &qword_27C8688C0, &qword_20E33B870);
        v113 = type metadata accessor for TranscriptProtoTimepoint(0);
        v114 = *(*(v113 - 8) + 48);
        if (v114(v112, 1, v113) == 1)
        {
          sub_20E04875C(v112, &qword_27C8688C0, &qword_20E33B870);
          v115 = v358;
LABEL_25:
          v122 = *v349;
          v123 = v327;
          (*v349)(v327, 1, 1, v101);
          sub_20E322000();
          v124 = (*v341)(v123, 1, v101);
          v342 = v122;
          if (v124 != 1)
          {
            sub_20E04875C(v123, &qword_27C863F30, &qword_20E325D90);
          }
        }

        else
        {
          v116 = v323;
          sub_20E0486F4(v112 + *(v113 + 28), v323, &qword_27C868778, &unk_20E33C000);
          v117 = v112;
          v118 = v116;
          sub_20E1B2484(v117, type metadata accessor for TranscriptProtoTimepoint);
          v119 = sub_20E322150();
          v120 = *(v119 - 8);
          v121 = (*(v120 + 48))(v118, 1, v119);
          v115 = v358;
          if (v121 == 1)
          {
            sub_20E04875C(v118, &qword_27C868778, &unk_20E33C000);
            goto LABEL_25;
          }

          v125 = v327;
          sub_20E322140();
          (*(v120 + 8))(v118, v119);
          v342 = *v349;
          v342(v125, 0, 1, v101);
          (*v361)(v344, v125, v101);
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868A70, &qword_20E346180);
        v126 = v333;
        v127 = swift_allocObject();
        *(v127 + 16) = v348;
        v128 = v365;
        sub_20E1B25BC(v365, v127 + v126, type metadata accessor for TranscriptProtoEvent);
        v129 = v343;
        v130 = v101;
        v346 = *v361;
        v346(v343, v344, v101);
        v131 = (v129 + v115[5]);
        v132 = v352;
        *v131 = v362;
        v131[1] = v132;
        *(v129 + v115[6]) = v127;
        v133 = (v129 + v115[7]);
        v134 = MEMORY[0x277D84F90];
        *v133 = MEMORY[0x277D84F90];
        v133[1] = v134;
        v135 = (v129 + v115[8]);
        *(v135 + 46) = 0u;
        v135[1] = 0u;
        v135[2] = 0u;
        *v135 = 0u;
        v136 = v329;
        sub_20E0486F4(v128 + v111, v329, &qword_27C8688C0, &qword_20E33B870);
        if (v114(v136, 1, v113) == 1)
        {

          sub_20E04875C(v136, &qword_27C8688C0, &qword_20E33B870);
LABEL_32:
          v145 = v362;
          v146 = v338;
          v342(v338, 1, 1, v130);
          sub_20E322000();
          if ((*v341)(v146, 1, v130) != 1)
          {
            sub_20E04875C(v338, &qword_27C863F30, &qword_20E325D90);
          }
        }

        else
        {
          v137 = v136 + *(v113 + 28);
          v138 = v324;
          sub_20E0486F4(v137, v324, &qword_27C868778, &unk_20E33C000);

          v139 = v136;
          v140 = v138;
          sub_20E1B2484(v139, type metadata accessor for TranscriptProtoTimepoint);
          v141 = sub_20E322150();
          v142 = *(v141 - 8);
          v143 = (*(v142 + 48))(v140, 1, v141);
          v144 = v345;
          if (v143 == 1)
          {
            sub_20E04875C(v140, &qword_27C868778, &unk_20E33C000);
            goto LABEL_32;
          }

          v147 = v338;
          sub_20E322140();
          (*(v142 + 8))(v140, v141);
          v342(v147, 0, 1, v130);
          v346(v144, v147, v130);
          v145 = v362;
        }

        v148 = v368;
        v149 = v330;
        sub_20E1B25BC(v331, &v330[*(v368 + 20)], type metadata accessor for SessionSignature);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868A88, &unk_20E33C040);
        v150 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639E0, &qword_20E3238C0) - 8);
        v151 = *(*v150 + 72);
        v152 = (*(*v150 + 80) + 32) & ~*(*v150 + 80);
        v153 = swift_allocObject();
        *(v153 + 16) = v348;
        v154 = (v153 + v152);
        v155 = v150[14];
        *v154 = v145;
        v154[1] = v132;
        v156 = v343;
        sub_20E1B25BC(v343, v153 + v152 + v155, type metadata accessor for RequestData);
        v157 = v366;

        v158 = sub_20E049CBC(v153);
        swift_setDeallocating();
        sub_20E04875C(v153 + v152, &qword_27C8639E0, &qword_20E3238C0);
        swift_deallocClassInstance();
        v346(v149, v345, v353);
        v159 = (v149 + v148[6]);
        v160 = v367;
        *v159 = v367;
        v159[1] = v157;
        v161 = (v149 + v148[7]);
        v162 = v351;
        *v161 = v350;
        v161[1] = v162;
        *(v149 + v148[8]) = v158;
        v163 = v339;
        sub_20E1B25BC(v149, v339, type metadata accessor for SessionData);
        v164 = v376;
        v165 = swift_isUniquelyReferenced_nonNull_native();
        *&v372[0] = v164;
        sub_20E1AE944(v163, v160, v157, v165);
        sub_20E1B2484(v149, type metadata accessor for SessionData);
        sub_20E1B2484(v156, type metadata accessor for RequestData);
        v376 = *&v372[0];

        v81 = v347;
        goto LABEL_36;
      }

      v97 = *(v94 + 8 * v102);
      ++v100;
      if (v97)
      {
        v100 = v102;
        goto LABEL_15;
      }
    }

    __break(1u);
    goto LABEL_117;
  }

LABEL_73:
  v231 = *(v376 + 64);
  v347 = (v376 + 64);
  v232 = 1 << *(v376 + 32);
  if (v232 < 64)
  {
    v233 = ~(-1 << v232);
  }

  else
  {
    v233 = -1;
  }

  v234 = v233 & v231;
  v346 = ((v232 + 63) >> 6);
  v349 = (v310 + 56);
  v350 = (v310 + 48);
  v362 = v356 + 48;
  v357 = (v360 + 48);
  *&v348 = v376;

  v235 = 0;
  v236 = v364;
  v237 = v363;
LABEL_78:
  v238 = v326;
  v239 = v325;
  v240 = v353;
  v241 = v355;
  if (!v234)
  {
    if (v346 <= v235 + 1)
    {
      v243 = (v235 + 1);
    }

    else
    {
      v243 = v346;
    }

    v244 = (v243 - 1);
    while (1)
    {
      v242 = v235 + 1;
      if (__OFADD__(v235, 1))
      {
        break;
      }

      if (v242 >= v346)
      {
        (*v349)(v326, 1, 1, v355);
        v352 = 0;
        goto LABEL_88;
      }

      v234 = *&v347[8 * v242];
      ++v235;
      if (v234)
      {
        goto LABEL_87;
      }
    }

LABEL_117:
    __break(1u);
    return result;
  }

  v242 = v235;
LABEL_87:
  v352 = (v234 - 1) & v234;
  v245 = __clz(__rbit64(v234)) | (v242 << 6);
  v246 = (*(v348 + 48) + 16 * v245);
  v248 = *v246;
  v247 = v246[1];
  v249 = v339;
  sub_20E1B25BC(*(v348 + 56) + *(v356 + 72) * v245, v339, type metadata accessor for SessionData);
  v250 = *(v241 + 48);
  *v238 = v248;
  v238[1] = v247;
  sub_20E1B2624(v249, v238 + v250, type metadata accessor for SessionData);
  (*v349)(v238, 0, 1, v241);

  v244 = v242;
  v240 = v353;
LABEL_88:
  sub_20E195AA4(v238, v239, &qword_27C868A58, &unk_20E33BFE0);
  if ((*v350)(v239, 1, v241) != 1)
  {
    v351 = v244;
    v251 = *(v239 + 8);
    v366 = *v239;
    v367 = v251;
    v252 = v239 + *(v241 + 48);
    v253 = *(v252 + *(v368 + 32));

    sub_20E1B2484(v252, type metadata accessor for SessionData);
    v254 = 0;
    v240 = v253 + 64;
    v255 = *(v253 + 64);
    v361 = v253;
    v256 = 1 << *(v253 + 32);
    if (v256 < 64)
    {
      v257 = ~(-1 << v256);
    }

    else
    {
      v257 = -1;
    }

    v258 = v257 & v255;
    v259 = (v256 + 63) >> 6;
    v365 = v240;
    while (v258)
    {
      v260 = v254;
LABEL_105:
      v263 = __clz(__rbit64(v258));
      v258 &= v258 - 1;
      v264 = v263 | (v260 << 6);
      v265 = (*(v361 + 48) + 16 * v264);
      v267 = *v265;
      v266 = v265[1];
      v268 = v359;
      sub_20E1B25BC(*(v361 + 56) + *(v360 + 72) * v264, v359, type metadata accessor for RequestData);
      v269 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868A78, &unk_20E33C030);
      v270 = *(v269 + 48);
      *v236 = v267;
      v236[1] = v266;
      sub_20E1B2624(v268, v236 + v270, type metadata accessor for RequestData);
      (*(*(v269 - 8) + 56))(v236, 0, 1, v269);

LABEL_106:
      sub_20E195AA4(v236, v237, &qword_27C868A50, &qword_20E33BFD8);
      v271 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868A78, &unk_20E33C030);
      if ((*(*(v271 - 8) + 48))(v237, 1, v271) == 1)
      {

        v235 = v351;
        v234 = v352;
        goto LABEL_78;
      }

      v273 = *v237;
      v272 = v237[1];
      sub_20E1B2624(v237 + *(v271 + 48), v369, type metadata accessor for RequestData);
      v274 = type metadata accessor for IERequestFeatureProvider(0);
      v275 = *(v274 + 48);
      v276 = *(v274 + 52);
      v277 = swift_allocObject() + OBJC_IVAR____TtC23LighthouseDataProcessor24IERequestFeatureProvider_result;
      *v277 = 8;
      *(v277 + 8) = 0;
      *(v277 + 16) = 0xE000000000000000;
      v278 = type metadata accessor for RequestEventResult(0);
      v279 = v278[6];
      v280 = type metadata accessor for TranscriptProtoStatementOutcomeEnum(0);
      (*(*(v280 - 8) + 56))(v277 + v279, 1, 1, v280);
      *(v277 + v278[7]) = 0;
      *(v277 + v278[8]) = 0;
      *(v277 + v278[9]) = 0;
      *(v277 + v278[10]) = 0;
      *(v277 + v278[11]) = 0;
      *(v277 + v278[12]) = 0;
      *(v277 + v278[13]) = 0;
      *(v277 + v278[14]) = 0;
      *(v277 + v278[15]) = 0;
      *(v277 + v278[16]) = 0;
      *(v277 + v278[17]) = 0;
      *(v277 + v278[18]) = MEMORY[0x277D84F90];
      v281 = v278[19];
      v282 = type metadata accessor for TranscriptProtoStatementID(0);
      (*(*(v282 - 8) + 56))(v277 + v281, 1, 1, v282);
      v283 = sub_20E1A4FBC(&v375, v366, v367);
      v285 = v284;
      v286 = v368;
      if ((*v362)(v284, 1, v368))
      {

        (v283)(&v375, 0);

        v236 = v364;
        v240 = v365;
      }

      else
      {
        v287 = v285 + *(v286 + 32);
        v288 = sub_20E1A5044(&v374, v273, v272);
        v290 = v289;
        v291 = v358;
        v292 = (*v357)(v289, 1, v358);
        v240 = v365;
        if (v292)
        {
          (v288)(&v374, 0);
        }

        else
        {
          v294 = *(v369 + *(v291 + 24));
          v354 = v288;
          sub_20E06E834(v294, v370);
          v295 = (v290 + *(v291 + 32));
          v296 = *v295;
          v297 = v295[1];
          v298 = v295[2];
          *&v373[14] = *(v295 + 46);
          v372[1] = v297;
          *v373 = v298;
          v372[0] = v296;
          v299 = *&v371[14];
          v300 = *v371;
          v301 = v370[1];
          *v295 = v370[0];
          v295[1] = v301;
          v295[2] = v300;
          *(v295 + 46) = v299;
          sub_20E04875C(v372, &qword_27C868A80, &qword_20E3573F0);
          (v354)(&v374, 0);
        }

        (v283)(&v375, 0);

        v236 = v364;
      }

      sub_20E1B2484(v369, type metadata accessor for RequestData);
      v237 = v363;
    }

    if (v259 <= v254 + 1)
    {
      v261 = v254 + 1;
    }

    else
    {
      v261 = v259;
    }

    v262 = v261 - 1;
    while (1)
    {
      v260 = v254 + 1;
      if (__OFADD__(v254, 1))
      {
        break;
      }

      if (v260 >= v259)
      {
        v293 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868A78, &unk_20E33C030);
        (*(*(v293 - 8) + 56))(v236, 1, 1, v293);
        v258 = 0;
        v254 = v262;
        goto LABEL_106;
      }

      v258 = *(v240 + 8 * v260);
      ++v254;
      if (v258)
      {
        v254 = v260;
        goto LABEL_105;
      }
    }

    __break(1u);
  }

  sub_20E1B2484(v331, type metadata accessor for SessionSignature);

  v302 = *(v311 + 16);
  v303 = v309;
  v302(v309, v307, v240);
  v304 = type metadata accessor for SessionView(0);
  result = (v302)(v303 + v304[5], v308, v240);
  v305 = v376;
  *(v303 + v304[6]) = *(v376 + 16);
  *(v303 + v304[7]) = v305;
  return result;
}

uint64_t BiomeSessionBuilder.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return v0;
}

uint64_t BiomeSessionBuilder.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_20E1AC728(uint64_t a1)
{
  v2[2] = a1;
  v3 = type metadata accessor for SessionViewConfigs();
  v2[3] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v5 = swift_task_alloc();
  v6 = *v1;
  v2[4] = v5;
  v2[5] = v6;

  return MEMORY[0x2822009F8](sub_20E1AC7C0, 0, 0);
}

uint64_t sub_20E1AC7C0()
{
  v1 = v0[4];
  v2 = v0[3];
  v3 = *(v0[5] + 16);

  DataProcessorBookmarkProvider.lastCollectionDate.getter(v1);

  v4 = v1 + v2[5];
  sub_20E322000();
  *(v1 + v2[6]) = 0;
  *(v1 + v2[7]) = &unk_282537478;
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_20E1AC8A8;
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[2];

  return sub_20E1A8E9C(v8, v6);
}

uint64_t sub_20E1AC8A8()
{
  v1 = *(*v0 + 48);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_20E1AC9A4, 0, 0);
}

uint64_t sub_20E1AC9A4()
{
  sub_20E1B2484(*(v0 + 32), type metadata accessor for SessionViewConfigs);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20E1ACA24(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_20E04CC18;

  return sub_20E1A5E88(a1, a2);
}

unint64_t sub_20E1ACAD0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_20E322DE0();
  sub_20E3228F0();
  v6 = sub_20E322E00();

  return sub_20E1ACBD4(a1, a2, v6);
}

unint64_t sub_20E1ACB48(unsigned int a1)
{
  v3 = MEMORY[0x20F32C400](*(v1 + 40), a1, 4);

  return sub_20E1ACC8C(a1, v3);
}

unint64_t sub_20E1ACB90(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_20E322DD0();

  return sub_20E1ACCF8(a1, v4);
}

unint64_t sub_20E1ACBD4(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_20E322D60())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_20E1ACC8C(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 4 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_20E1ACCF8(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t dispatch thunk of BiomeSessionBuilder.buildSessionView(startDate:maxEvents:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 160);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_20E04CE24;

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of BiomeSessionBuilder.buildSessionView()(uint64_t a1)
{
  v4 = *(*v1 + 168);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_20E04CE24;

  return v8(a1);
}

uint64_t dispatch thunk of BiomeSessionBuilder.buildSessionView(streams:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 176);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_20E04CC18;

  return v10(a1, a2);
}

uint64_t dispatch thunk of BiomeSessionBuilder.buildSessionView(startDate:maxEvents:streams:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(*v4 + 184);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_20E04CE24;

  return v14(a1, a2, a3, a4);
}

uint64_t (*sub_20E1AD2A8(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x50uLL);
  }

  v8 = v7;
  *a1 = v7;
  v9 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8[8] = sub_20E1AFB5C(v8);
  v8[9] = sub_20E1AF310(v8 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_20E1B26A8;
}

uint64_t (*sub_20E1AD354(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x50uLL);
  }

  v8 = v7;
  *a1 = v7;
  v9 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8[8] = sub_20E1AFB84(v8);
  v8[9] = sub_20E1AF628(v8 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_20E1AD400;
}

void sub_20E1AD404(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

uint64_t sub_20E1AD464@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_20E1ACAD0(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v23 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_20E1AF0B8();
      v12 = v23;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56);
    v15 = type metadata accessor for RequestData(0);
    v22 = *(v15 - 8);
    sub_20E1B2624(v14 + *(v22 + 72) * v9, a3, type metadata accessor for RequestData);
    sub_20E1AE468(v9, v12, type metadata accessor for RequestData);
    *v4 = v12;
    v16 = *(v22 + 56);
    v17 = a3;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = type metadata accessor for RequestData(0);
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a3;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_20E1AD5E4(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for ParticipantInfo(0);
  v40 = *(v6 - 8);
  v7 = *(v40 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v11 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863A10, &qword_20E3238F0);
  v41 = a2;
  result = sub_20E322BE0();
  v13 = result;
  if (*(v10 + 16))
  {
    v39 = v3;
    v14 = 0;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v20 = result + 64;
    while (v18)
    {
      v22 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_17:
      v25 = v22 | (v14 << 6);
      v26 = *(*(v10 + 48) + 8 * v25);
      v27 = *(v40 + 72);
      v28 = *(v10 + 56) + v27 * v25;
      if (v41)
      {
        sub_20E1B2624(v28, v9, type metadata accessor for ParticipantInfo);
      }

      else
      {
        sub_20E1B25BC(v28, v9, type metadata accessor for ParticipantInfo);
      }

      v29 = *(v13 + 40);
      result = sub_20E322DD0();
      v30 = -1 << *(v13 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v20 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v20 + 8 * v32);
          if (v36 != -1)
          {
            v21 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v31) & ~*(v20 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      *(*(v13 + 48) + 8 * v21) = v26;
      result = sub_20E1B2624(v9, *(v13 + 56) + v27 * v21, type metadata accessor for ParticipantInfo);
      ++*(v13 + 16);
    }

    v23 = v14;
    while (1)
    {
      v14 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v14 >= v19)
      {
        break;
      }

      v24 = v15[v14];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v18 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v10 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero((v10 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v37;
    }

    *(v10 + 16) = 0;
  }

LABEL_36:
  *v3 = v13;
  return result;
}

uint64_t sub_20E1AD92C(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for SessionData(0);
  v43 = *(v6 - 8);
  v7 = *(v43 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v45 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868A90, &unk_20E33C050);
  v44 = a2;
  result = sub_20E322BE0();
  v12 = result;
  if (*(v9 + 16))
  {
    v41 = v3;
    v42 = v9;
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
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = (*(v9 + 48) + 16 * v25);
      v28 = *v27;
      v29 = v27[1];
      v30 = *(v43 + 72);
      v31 = v26 + v30 * v25;
      if (v44)
      {
        sub_20E1B2624(v31, v45, type metadata accessor for SessionData);
      }

      else
      {
        sub_20E1B25BC(v31, v45, type metadata accessor for SessionData);
      }

      v32 = *(v12 + 40);
      sub_20E322DE0();
      sub_20E3228F0();
      result = sub_20E322E00();
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
      *v21 = v28;
      v21[1] = v29;
      result = sub_20E1B2624(v45, *(v12 + 56) + v30 * v20, type metadata accessor for SessionData);
      ++*(v12 + 16);
      v9 = v42;
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

    if ((v44 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v41;
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

uint64_t sub_20E1ADCA4(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for RequestData(0);
  v43 = *(v6 - 8);
  v7 = *(v43 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v45 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639E8, &qword_20E3238C8);
  v44 = a2;
  result = sub_20E322BE0();
  v12 = result;
  if (*(v9 + 16))
  {
    v41 = v3;
    v42 = v9;
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
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = (*(v9 + 48) + 16 * v25);
      v28 = *v27;
      v29 = v27[1];
      v30 = *(v43 + 72);
      v31 = v26 + v30 * v25;
      if (v44)
      {
        sub_20E1B2624(v31, v45, type metadata accessor for RequestData);
      }

      else
      {
        sub_20E1B25BC(v31, v45, type metadata accessor for RequestData);
      }

      v32 = *(v12 + 40);
      sub_20E322DE0();
      sub_20E3228F0();
      result = sub_20E322E00();
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
      *v21 = v28;
      v21[1] = v29;
      result = sub_20E1B2624(v45, *(v12 + 56) + v30 * v20, type metadata accessor for RequestData);
      ++*(v12 + 16);
      v9 = v42;
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

    if ((v44 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v41;
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

uint64_t sub_20E1AE01C(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v40 = a2;
  result = sub_20E322BE0();
  v10 = result;
  if (*(v7 + 16))
  {
    v38 = v5;
    v39 = v7;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v23 = v20 | (v11 << 6);
      v24 = (*(v7 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(v7 + 56) + 8 * v23);
      if ((v40 & 1) == 0)
      {
        v28 = v24[1];
      }

      v29 = *(v10 + 40);
      sub_20E322DE0();
      sub_20E3228F0();
      result = sub_20E322E00();
      v30 = -1 << *(v10 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v17 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v17 + 8 * v32);
          if (v36 != -1)
          {
            v18 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v31) & ~*(v17 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v10 + 56) + 8 * v18) = v27;
      ++*(v10 + 16);
      v7 = v39;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v5 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v7 + 32);
    v5 = v38;
    if (v37 >= 64)
    {
      bzero(v12, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v37;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

unint64_t sub_20E1AE2BC(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_20E322AC0() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(a2 + 48);
      v11 = (v10 + 8 * v6);
      v12 = *v11;
      result = sub_20E322DD0();
      v13 = result & v7;
      if (v3 >= v8)
      {
        if (v13 < v8 || v3 < v13)
        {
          goto LABEL_5;
        }
      }

      else if (v13 < v8 && v3 < v13)
      {
        goto LABEL_5;
      }

      v16 = (v10 + 8 * v3);
      if (v3 != v6 || v16 >= v11 + 1)
      {
        *v16 = *v11;
      }

      v17 = *(a2 + 56);
      v18 = *(*(type metadata accessor for ParticipantInfo(0) - 8) + 72);
      v19 = v18 * v3;
      result = v17 + v18 * v3;
      v20 = v18 * v6;
      v21 = v17 + v18 * v6 + v18;
      if (v19 < v20 || result >= v21)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v19 == v20)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_20E1AE468(unint64_t result, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v9 = ~v6;
    v10 = (sub_20E322AC0() + 1) & ~v6;
    while (1)
    {
      v11 = *(a2 + 40);
      v12 = (*(a2 + 48) + 16 * v7);
      v13 = *v12;
      v14 = v12[1];
      sub_20E322DE0();

      sub_20E3228F0();
      v15 = sub_20E322E00();

      v16 = v15 & v9;
      if (v4 >= v10)
      {
        break;
      }

      if (v16 < v10)
      {
        goto LABEL_10;
      }

LABEL_11:
      v17 = *(a2 + 48);
      v18 = (v17 + 16 * v4);
      v19 = (v17 + 16 * v7);
      if (v4 != v7 || v18 >= v19 + 1)
      {
        *v18 = *v19;
      }

      v20 = *(a2 + 56);
      v21 = *(*(a3(0) - 8) + 72);
      v22 = v21 * v4;
      result = v20 + v21 * v4;
      v23 = v21 * v7;
      v24 = v20 + v21 * v7 + v21;
      if (v22 < v23 || result >= v24)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v4 = v7;
        if (v22 == v23)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v4 = v7;
LABEL_5:
      v7 = (v7 + 1) & v9;
      if (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v16 < v10)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v4 < v16)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v26 = *(a2 + 16);
  v27 = __OFSUB__(v26, 1);
  v28 = v26 - 1;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v28;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_20E1AE65C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_20E1ACB90(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 >= v13 && (a3 & 1) != 0)
  {
LABEL_7:
    v16 = *v4;
    if (v14)
    {
LABEL_8:
      v17 = v16[7];
      v18 = type metadata accessor for ParticipantInfo(0);
      return sub_20E1B1120(a1, v17 + *(*(v18 - 8) + 72) * v10, type metadata accessor for ParticipantInfo);
    }

    goto LABEL_11;
  }

  if (v15 >= v13 && (a3 & 1) == 0)
  {
    sub_20E1AEC2C();
    goto LABEL_7;
  }

  sub_20E1AD5E4(v13, a3 & 1);
  v20 = *v4;
  v21 = sub_20E1ACB90(a2);
  if ((v14 & 1) != (v22 & 1))
  {
LABEL_15:
    result = sub_20E322DB0();
    __break(1u);
    return result;
  }

  v10 = v21;
  v16 = *v4;
  if (v14)
  {
    goto LABEL_8;
  }

LABEL_11:

  return sub_20E1AEAD8(v10, a2, a1, v16);
}

uint64_t sub_20E1AE7B0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_20E1ACAD0(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for RequestData(0);
      return sub_20E1B1120(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for RequestData);
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_20E1AF0B8();
    goto LABEL_7;
  }

  sub_20E1ADCA4(v15, a4 & 1);
  v22 = *v5;
  v23 = sub_20E1ACAD0(a2, a3);
  if ((v16 & 1) != (v24 & 1))
  {
LABEL_15:
    result = sub_20E322DB0();
    __break(1u);
    return result;
  }

  v12 = v23;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_20E1AEB80(v12, a2, a3, a1, v18, type metadata accessor for RequestData, type metadata accessor for RequestData);
}

uint64_t sub_20E1AE944(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_20E1ACAD0(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for SessionData(0);
      return sub_20E1B1120(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for SessionData);
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_20E1AEE60();
    goto LABEL_7;
  }

  sub_20E1AD92C(v15, a4 & 1);
  v22 = *v5;
  v23 = sub_20E1ACAD0(a2, a3);
  if ((v16 & 1) != (v24 & 1))
  {
LABEL_15:
    result = sub_20E322DB0();
    __break(1u);
    return result;
  }

  v12 = v23;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_20E1AEB80(v12, a2, a3, a1, v18, type metadata accessor for SessionData, type metadata accessor for SessionData);
}

uint64_t sub_20E1AEAD8(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = type metadata accessor for ParticipantInfo(0);
  result = sub_20E1B2624(a3, v7 + *(*(v8 - 8) + 72) * a1, type metadata accessor for ParticipantInfo);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

uint64_t sub_20E1AEB80(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v11 = (a5[6] + 16 * a1);
  *v11 = a2;
  v11[1] = a3;
  v12 = a5[7];
  v13 = a6(0);
  result = sub_20E1B2624(a4, v12 + *(*(v13 - 8) + 72) * a1, a7);
  v15 = a5[2];
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v17;
  }

  return result;
}

void *sub_20E1AEC2C()
{
  v1 = v0;
  v2 = type metadata accessor for ParticipantInfo(0);
  v25 = *(v2 - 8);
  v3 = *(v25 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863A10, &qword_20E3238F0);
  v6 = *v0;
  v7 = sub_20E322BD0();
  v8 = v7;
  if (*(v6 + 16))
  {
    v24 = v1;
    result = (v7 + 64);
    v10 = v6 + 64;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 64), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v12 << 6);
        v22 = *(*(v6 + 48) + 8 * v21);
        v23 = *(v25 + 72) * v21;
        sub_20E1B25BC(*(v6 + 56) + v23, v5, type metadata accessor for ParticipantInfo);
        *(*(v8 + 48) + 8 * v21) = v22;
        result = sub_20E1B2624(v5, *(v8 + 56) + v23, type metadata accessor for ParticipantInfo);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v24;
        goto LABEL_18;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

void *sub_20E1AEE60()
{
  v1 = v0;
  v2 = type metadata accessor for SessionData(0);
  v32 = *(v2 - 8);
  v3 = *(v32 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v31 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868A90, &unk_20E33C050);
  v5 = *v0;
  v6 = sub_20E322BD0();
  v7 = v6;
  if (*(v5 + 16))
  {
    v30 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v33 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = *(v5 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = 16 * v21;
        v23 = (*(v5 + 48) + 16 * v21);
        v24 = *v23;
        v25 = v23[1];
        v26 = v31;
        v27 = *(v32 + 72) * v21;
        sub_20E1B25BC(*(v5 + 56) + v27, v31, type metadata accessor for SessionData);
        v28 = v33;
        v29 = (*(v33 + 48) + v22);
        *v29 = v24;
        v29[1] = v25;
        sub_20E1B2624(v26, *(v28 + 56) + v27, type metadata accessor for SessionData);
      }

      while (v16);
    }

    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v17)
      {

        v1 = v30;
        v7 = v33;
        goto LABEL_18;
      }

      v20 = *(v9 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

void *sub_20E1AF0B8()
{
  v1 = v0;
  v2 = type metadata accessor for RequestData(0);
  v32 = *(v2 - 8);
  v3 = *(v32 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v31 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639E8, &qword_20E3238C8);
  v5 = *v0;
  v6 = sub_20E322BD0();
  v7 = v6;
  if (*(v5 + 16))
  {
    v30 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v33 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = *(v5 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = 16 * v21;
        v23 = (*(v5 + 48) + 16 * v21);
        v24 = *v23;
        v25 = v23[1];
        v26 = v31;
        v27 = *(v32 + 72) * v21;
        sub_20E1B25BC(*(v5 + 56) + v27, v31, type metadata accessor for RequestData);
        v28 = v33;
        v29 = (*(v33 + 48) + v22);
        *v29 = v24;
        v29[1] = v25;
        sub_20E1B2624(v26, *(v28 + 56) + v27, type metadata accessor for RequestData);
      }

      while (v16);
    }

    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v17)
      {

        v1 = v30;
        v7 = v33;
        goto LABEL_18;
      }

      v20 = *(v9 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

void (*sub_20E1AF310(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t a1, char a2)
{
  v5 = v4;
  v9 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x68uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[1] = a3;
  v10[2] = v5;
  *v10 = a2;
  v12 = type metadata accessor for SessionData(0);
  v11[3] = v12;
  v13 = *(v12 - 8);
  v14 = v13;
  v11[4] = v13;
  v15 = *(v13 + 64);
  if (v9)
  {
    v11[5] = swift_coroFrameAlloc();
    v11[6] = swift_coroFrameAlloc();
    v16 = swift_coroFrameAlloc();
  }

  else
  {
    v11[5] = malloc(*(v13 + 64));
    v11[6] = malloc(v15);
    v16 = malloc(v15);
  }

  v11[7] = v16;
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688F0, &unk_20E33B920) - 8) + 64);
  if (v9)
  {
    v11[8] = swift_coroFrameAlloc();
    v11[9] = swift_coroFrameAlloc();
    v18 = swift_coroFrameAlloc();
  }

  else
  {
    v11[8] = malloc(v17);
    v11[9] = malloc(v17);
    v18 = malloc(v17);
  }

  v19 = v18;
  v11[10] = v18;
  v20 = *v5;
  v22 = sub_20E1ACAD0(a2, a3);
  *(v11 + 96) = v21 & 1;
  v23 = *(v20 + 16);
  v24 = (v21 & 1) == 0;
  v25 = v23 + v24;
  if (__OFADD__(v23, v24))
  {
    __break(1u);
  }

  else
  {
    v26 = v21;
    v27 = *(v20 + 24);
    if (v27 >= v25 && (a4 & 1) != 0)
    {
LABEL_16:
      v11[11] = v22;
      if (v26)
      {
LABEL_17:
        sub_20E1B2624(*(*v5 + 56) + *(v14 + 72) * v22, v19, type metadata accessor for SessionData);
        v28 = 0;
LABEL_21:
        (*(v14 + 56))(v19, v28, 1, v12);
        return sub_20E1AF5EC;
      }

LABEL_20:
      v28 = 1;
      goto LABEL_21;
    }

    if (v27 >= v25 && (a4 & 1) == 0)
    {
      sub_20E1AEE60();
      goto LABEL_16;
    }

    sub_20E1AD92C(v25, a4 & 1);
    v29 = *v5;
    v30 = sub_20E1ACAD0(a2, a3);
    if ((v26 & 1) == (v31 & 1))
    {
      v22 = v30;
      v11[11] = v30;
      if (v26)
      {
        goto LABEL_17;
      }

      goto LABEL_20;
    }
  }

  result = sub_20E322DB0();
  __break(1u);
  return result;
}

void (*sub_20E1AF628(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t a1, char a2)
{
  v5 = v4;
  v9 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x68uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[1] = a3;
  v10[2] = v5;
  *v10 = a2;
  v12 = type metadata accessor for RequestData(0);
  v11[3] = v12;
  v13 = *(v12 - 8);
  v14 = v13;
  v11[4] = v13;
  v15 = *(v13 + 64);
  if (v9)
  {
    v11[5] = swift_coroFrameAlloc();
    v11[6] = swift_coroFrameAlloc();
    v16 = swift_coroFrameAlloc();
  }

  else
  {
    v11[5] = malloc(*(v13 + 64));
    v11[6] = malloc(v15);
    v16 = malloc(v15);
  }

  v11[7] = v16;
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868A60, &unk_20E33BFF0) - 8) + 64);
  if (v9)
  {
    v11[8] = swift_coroFrameAlloc();
    v11[9] = swift_coroFrameAlloc();
    v18 = swift_coroFrameAlloc();
  }

  else
  {
    v11[8] = malloc(v17);
    v11[9] = malloc(v17);
    v18 = malloc(v17);
  }

  v19 = v18;
  v11[10] = v18;
  v20 = *v5;
  v22 = sub_20E1ACAD0(a2, a3);
  *(v11 + 96) = v21 & 1;
  v23 = *(v20 + 16);
  v24 = (v21 & 1) == 0;
  v25 = v23 + v24;
  if (__OFADD__(v23, v24))
  {
    __break(1u);
  }

  else
  {
    v26 = v21;
    v27 = *(v20 + 24);
    if (v27 >= v25 && (a4 & 1) != 0)
    {
LABEL_16:
      v11[11] = v22;
      if (v26)
      {
LABEL_17:
        sub_20E1B2624(*(*v5 + 56) + *(v14 + 72) * v22, v19, type metadata accessor for RequestData);
        v28 = 0;
LABEL_21:
        (*(v14 + 56))(v19, v28, 1, v12);
        return sub_20E1AF904;
      }

LABEL_20:
      v28 = 1;
      goto LABEL_21;
    }

    if (v27 >= v25 && (a4 & 1) == 0)
    {
      sub_20E1AF0B8();
      goto LABEL_16;
    }

    sub_20E1ADCA4(v25, a4 & 1);
    v29 = *v5;
    v30 = sub_20E1ACAD0(a2, a3);
    if ((v26 & 1) == (v31 & 1))
    {
      v22 = v30;
      v11[11] = v30;
      if (v26)
      {
        goto LABEL_17;
      }

      goto LABEL_20;
    }
  }

  result = sub_20E322DB0();
  __break(1u);
  return result;
}

void sub_20E1AF940(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v10 = *a1;
  v11 = *(*a1 + 24);
  v12 = (*(*a1 + 32) + 48);
  v13 = *(*a1 + 80);
  if (a2)
  {
    v14 = *(v10 + 8);
    sub_20E0486F4(v13, v14, a3, a4);
    v15 = (*v12)(v14, 1, v11);
    v16 = *(v10 + 96);
    v17 = *(v10 + 8);
    if (v15 != 1)
    {
      v18 = *(v10 + 2);
      sub_20E1B2624(v17, *(v10 + 6), a5);
      v19 = *v18;
      v20 = *(v10 + 11);
      v21 = *(v10 + 6);
      if ((v16 & 1) == 0)
      {
LABEL_4:
        v22 = *(v10 + 5);
        v24 = *v10;
        v23 = *(v10 + 1);
        sub_20E1B2624(v21, v22, a5);
        sub_20E1AEB80(v20, v24, v23, v22, v19, a6, a5);

        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v25 = *(v10 + 9);
    sub_20E0486F4(v13, v25, a3, a4);
    v26 = (*v12)(v25, 1, v11);
    v16 = *(v10 + 96);
    v17 = *(v10 + 9);
    if (v26 != 1)
    {
      v29 = *(v10 + 2);
      sub_20E1B2624(v17, *(v10 + 7), a5);
      v19 = *v29;
      v20 = *(v10 + 11);
      v21 = *(v10 + 7);
      if ((v16 & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      sub_20E1B2624(v21, v19[7] + *(*(v10 + 4) + 72) * v20, a5);
      goto LABEL_10;
    }
  }

  sub_20E04875C(v17, a3, a4);
  if (v16)
  {
    v27 = *(v10 + 11);
    v28 = **(v10 + 2);
    sub_20E1B1188(*(v28 + 48) + 16 * v27);
    sub_20E1AE468(v27, v28, a6);
  }

LABEL_10:
  v30 = *(v10 + 9);
  v31 = *(v10 + 10);
  v33 = *(v10 + 7);
  v32 = *(v10 + 8);
  v35 = *(v10 + 5);
  v34 = *(v10 + 6);
  sub_20E04875C(v31, a3, a4);
  free(v31);
  free(v30);
  free(v32);
  free(v33);
  free(v34);
  free(v35);

  free(v10);
}

uint64_t (*sub_20E1AFB5C(void *a1))()
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_20E1B2690;
}

uint64_t (*sub_20E1AFB84(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_20E1AFBAC;
}

uint64_t sub_20E1AFBB8(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_20E225240(result, v11, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_20E1AFCAC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_20E322DE0();
  sub_20E3228F0();
  v9 = sub_20E322E00();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_20E322D60() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_20E1B005C(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_20E1AFDFC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868AC8, &qword_20E33C0A0);
  result = sub_20E322AE0();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
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
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_20E322DE0();
      sub_20E3228F0();
      result = sub_20E322E00();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_20E1B005C(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_20E1AFDFC(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_20E1B01DC();
      goto LABEL_16;
    }

    sub_20E1B0338(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_20E322DE0();
  sub_20E3228F0();
  result = sub_20E322E00();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_20E322D60();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_20E322DA0();
  __break(1u);
  return result;
}

void *sub_20E1B01DC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868AC8, &qword_20E33C0A0);
  v2 = *v0;
  v3 = sub_20E322AD0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_20E1B0338(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868AC8, &qword_20E33C0A0);
  result = sub_20E322AE0();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
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
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_20E322DE0();

      sub_20E3228F0();
      result = sub_20E322E00();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

void *sub_20E1B0570(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_20E1B06C8(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_20E1B0820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *MEMORY[0x277D85DE8];
  v4[23] = a3;
  v4[24] = a4;
  v4[21] = a1;
  v4[22] = a2;
  v5 = sub_20E322010();
  v4[25] = v5;
  v6 = *(v5 - 8);
  v4[26] = v6;
  v7 = *(v6 + 64) + 15;
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v8 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_20E1B091C, 0, 0);
}

uint64_t sub_20E1B091C()
{
  v79 = v0;
  v78[1] = *MEMORY[0x277D85DE8];
  v1 = [v0[22] startDate];
  if (v1)
  {
    v2 = v0[28];
    v3 = v1;
    sub_20E321FD0();

    if (qword_280E12B88 != -1)
    {
      swift_once();
    }

    v4 = v0[27];
    v5 = v0[28];
    v6 = v0[25];
    v7 = v0[26];
    v8 = sub_20E3227C0();
    __swift_project_value_buffer(v8, qword_280E12C48);
    (*(v7 + 16))(v4, v5, v6);
    v9 = sub_20E3227B0();
    v10 = sub_20E322A40();
    v11 = os_log_type_enabled(v9, v10);
    v12 = v0[27];
    v13 = v0[28];
    v15 = v0[25];
    v14 = v0[26];
    if (v11)
    {
      v76 = v0[28];
      v16 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v78[0] = v75;
      *v16 = 136315138;
      sub_20E1B256C(&qword_280E12B30, MEMORY[0x277CC9578]);
      v17 = sub_20E322D50();
      v19 = v18;
      v20 = *(v14 + 8);
      v20(v12, v15);
      v21 = sub_20E31B6C4(v17, v19, v78);

      *(v16 + 4) = v21;
      _os_log_impl(&dword_20E031000, v9, v10, "Loading biome events with bookmark: collecting from %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v75);
      MEMORY[0x20F32CA80](v75, -1, -1);
      MEMORY[0x20F32CA80](v16, -1, -1);

      v20(v76, v15);
    }

    else
    {

      v22 = *(v14 + 8);
      v22(v12, v15);
      v22(v13, v15);
    }
  }

  v23 = v0[21];
  v24 = swift_allocObject();
  *(v24 + 16) = MEMORY[0x277D84F90];
  v25 = (v24 + 16);
  v26 = BiomeLibrary();
  v0[20] = 0;
  v27 = [v26 streamWithIdentifier:v23 error:v0 + 20];
  swift_unknownObjectRelease();
  v28 = v0[20];
  if (v27)
  {
    v29 = v0[22];
    v30 = v28;
    v31 = sub_20E322860();
    v32 = [v27 publisherWithUseCase:v31 options:v29];

    if (v32)
    {
      v34 = v0[23];
      v33 = v0[24];
      v35 = v0[21];
      v0[6] = nullsub_1;
      v0[7] = 0;
      v0[2] = MEMORY[0x277D85DD0];
      v0[3] = 1107296256;
      v0[4] = sub_20E1A4ABC;
      v0[5] = &block_descriptor_1;
      v36 = _Block_copy(v0 + 2);
      v37 = swift_allocObject();
      v37[2] = v24;
      v37[3] = v34;
      v37[4] = v33;
      v37[5] = v35;
      v0[12] = sub_20E1B2560;
      v0[13] = v37;
      v0[8] = MEMORY[0x277D85DD0];
      v0[9] = 1107296256;
      v0[10] = sub_20E1A4B24;
      v0[11] = &block_descriptor_29;
      v38 = _Block_copy(v0 + 8);
      v39 = v0[13];
      v40 = v35;

      v41 = v32;
      v42 = v32;

      v43 = [v42 sinkWithCompletion:v36 receiveInput:v38];
      _Block_release(v38);
      _Block_release(v36);

      v32 = v41;
    }

    if (qword_280E12B88 != -1)
    {
      swift_once();
    }

    v44 = v0[21];
    v45 = sub_20E3227C0();
    __swift_project_value_buffer(v45, qword_280E12C48);
    v46 = v44;

    v47 = sub_20E3227B0();
    v48 = sub_20E322A40();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v78[0] = v50;
      *v49 = 134218242;
      swift_beginAccess();
      v77 = v32;
      if (*v25 >> 62)
      {
        v51 = sub_20E322BC0();
      }

      else
      {
        v51 = *((*v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v52 = v0[21];
      *(v49 + 4) = v51;

      *(v49 + 12) = 2080;
      v53 = sub_20E322890();
      v55 = sub_20E31B6C4(v53, v54, v78);

      *(v49 + 14) = v55;
      _os_log_impl(&dword_20E031000, v47, v48, "%ld of events loaded from %s Biome stream", v49, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v50);
      MEMORY[0x20F32CA80](v50, -1, -1);
      MEMORY[0x20F32CA80](v49, -1, -1);
    }

    else
    {
    }

    swift_beginAccess();
    v69 = *(v24 + 16);
  }

  else
  {
    v56 = v28;
    v57 = sub_20E321EF0();

    swift_willThrow();
    if (qword_280E12B88 != -1)
    {
      swift_once();
    }

    v58 = v0[21];
    v59 = sub_20E3227C0();
    __swift_project_value_buffer(v59, qword_280E12C48);
    v60 = v58;
    v61 = sub_20E3227B0();
    v62 = sub_20E322A50();

    if (os_log_type_enabled(v61, v62))
    {
      v63 = v0[21];
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v78[0] = v65;
      *v64 = 136315138;
      v66 = sub_20E322890();
      v68 = sub_20E31B6C4(v66, v67, v78);

      *(v64 + 4) = v68;
      _os_log_impl(&dword_20E031000, v61, v62, "Unable to create stream from BMLibrary identifer:  %s", v64, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v65);
      MEMORY[0x20F32CA80](v65, -1, -1);
      MEMORY[0x20F32CA80](v64, -1, -1);
    }

    v69 = 0;
  }

  v71 = v0[27];
  v70 = v0[28];

  v72 = v0[1];
  v73 = *MEMORY[0x277D85DE8];

  return v72(v69);
}

uint64_t sub_20E1B1120(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_20E1B11DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868AA8, &qword_20E33C080);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v50 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868AB0, &qword_20E33C088);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v53 = &v50 - v8;
  v63 = sub_20E322600();
  v9 = *(v63 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v63);
  v60 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v62 = &v50 - v13;
  v14 = MEMORY[0x277D84F98];
  v64 = MEMORY[0x277D84F98];
  v15 = *(a1 + 16);
  if (!v15)
  {
    return v14;
  }

  v17 = *(v9 + 16);
  v16 = v9 + 16;
  v59 = v17;
  v52 = *(v16 + 64);
  v57 = (v52 + 32) & ~v52;
  v18 = a1 + v57;
  v19 = *(v16 + 56);
  v54 = 0x800000020E35F770;
  v61 = (v16 + 16);
  v51 = xmmword_20E326380;
  v55 = v16;
  v56 = v5;
  v58 = v19;
  while (1)
  {
    v59(v62, v18, v63);
    sub_20E3225F0();
    v20 = sub_20E3225E0();
    v21 = *(v20 - 8);
    if ((*(v21 + 48))(v5, 1, v20) == 1)
    {
      sub_20E04875C(v5, &qword_27C868AA8, &qword_20E33C080);
      v22 = 0xD000000000000011;
      v23 = v54;
    }

    else
    {
      v24 = v53;
      sub_20E3225D0();
      v25 = v24;
      (*(v21 + 8))(v5, v20);
      v26 = sub_20E322630();
      v27 = *(v26 - 8);
      if ((*(v27 + 48))(v24, 1, v26) == 1)
      {
        sub_20E04875C(v24, &qword_27C868AB0, &qword_20E33C088);
        v22 = 0xD000000000000011;
        v23 = v54;
      }

      else
      {
        v22 = sub_20E322620();
        v23 = v28;
        (*(v27 + 8))(v25, v26);
      }

      v19 = v58;
    }

    v30 = sub_20E1ACAD0(v22, v23);
    v31 = v14[2];
    v32 = (v29 & 1) == 0;
    v33 = v31 + v32;
    if (__OFADD__(v31, v32))
    {
      break;
    }

    v34 = v29;
    if (v14[3] < v33)
    {
      sub_20E1AE01C(v33, 1, &qword_27C868AC0, &qword_20E33C098);
      v14 = v64;
      v35 = sub_20E1ACAD0(v22, v23);
      if ((v34 & 1) != (v36 & 1))
      {
        goto LABEL_25;
      }

      v30 = v35;
    }

    if (v34)
    {

      v37 = v14[7];
      v38 = *v61;
      (*v61)(v60, v62, v63);
      v39 = *(v37 + 8 * v30);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v37 + 8 * v30) = v39;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v39 = sub_20E225564(0, *(v39 + 2) + 1, 1, v39);
        *(v37 + 8 * v30) = v39;
      }

      v42 = *(v39 + 2);
      v41 = *(v39 + 3);
      if (v42 >= v41 >> 1)
      {
        v39 = sub_20E225564(v41 > 1, v42 + 1, 1, v39);
        *(v37 + 8 * v30) = v39;
      }

      *(v39 + 2) = v42 + 1;
      v19 = v58;
      v38(&v39[v57 + v42 * v58], v60, v63);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868AB8, &qword_20E33C090);
      v43 = v57;
      v44 = swift_allocObject();
      *(v44 + 16) = v51;
      (*v61)((v44 + v43), v62, v63);
      v14[(v30 >> 6) + 8] |= 1 << v30;
      v45 = (v14[6] + 16 * v30);
      *v45 = v22;
      v45[1] = v23;
      *(v14[7] + 8 * v30) = v44;
      v46 = v14[2];
      v47 = __OFADD__(v46, 1);
      v48 = v46 + 1;
      if (v47)
      {
        goto LABEL_24;
      }

      v14[2] = v48;
    }

    v18 += v19;
    --v15;
    v5 = v56;
    if (!v15)
    {
      return v14;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  result = sub_20E322DB0();
  __break(1u);
  return result;
}

uint64_t sub_20E1B1754(uint64_t a1)
{
  v2 = type metadata accessor for TranscriptProtoEvent(0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v37 - v7;
  v9 = MEMORY[0x277D84F98];
  v43 = MEMORY[0x277D84F98];
  v10 = *(a1 + 16);
  if (!v10)
  {
    return v9;
  }

  v39 = *(v5 + 80);
  v11 = *(v5 + 72);
  v41 = (v39 + 32) & ~v39;
  v12 = a1 + v41;
  v38 = xmmword_20E326380;
  v42 = v6;
  v40 = v11;
  while (1)
  {
    sub_20E1B25BC(v12, v8, type metadata accessor for TranscriptProtoEvent);
    v16 = *(v8 + 6);
    v15 = *(v8 + 7);

    v18 = sub_20E1ACAD0(v16, v15);
    v19 = v9[2];
    v20 = (v17 & 1) == 0;
    v21 = v19 + v20;
    if (__OFADD__(v19, v20))
    {
      break;
    }

    v22 = v17;
    if (v9[3] < v21)
    {
      sub_20E1AE01C(v21, 1, &qword_27C868AA0, &qword_20E33C078);
      v9 = v43;
      v23 = sub_20E1ACAD0(v16, v15);
      if ((v22 & 1) != (v24 & 1))
      {
        goto LABEL_19;
      }

      v18 = v23;
    }

    if (v22)
    {

      v25 = v9[7];
      sub_20E1B2624(v8, v42, type metadata accessor for TranscriptProtoEvent);
      v26 = *(v25 + 8 * v18);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v25 + 8 * v18) = v26;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v26 = sub_20E2251F0(0, v26[2] + 1, 1, v26);
        *(v25 + 8 * v18) = v26;
      }

      v29 = v26[2];
      v28 = v26[3];
      if (v29 >= v28 >> 1)
      {
        v26 = sub_20E2251F0(v28 > 1, v29 + 1, 1, v26);
        *(v25 + 8 * v18) = v26;
      }

      v26[2] = v29 + 1;
      v13 = v26 + v41 + v29 * v40;
      v14 = v40;
      sub_20E1B2624(v42, v13, type metadata accessor for TranscriptProtoEvent);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868A70, &qword_20E346180);
      v30 = v41;
      v31 = swift_allocObject();
      *(v31 + 16) = v38;
      sub_20E1B2624(v8, v31 + v30, type metadata accessor for TranscriptProtoEvent);
      v9[(v18 >> 6) + 8] |= 1 << v18;
      v32 = (v9[6] + 16 * v18);
      *v32 = v16;
      v32[1] = v15;
      *(v9[7] + 8 * v18) = v31;
      v33 = v9[2];
      v34 = __OFADD__(v33, 1);
      v35 = v33 + 1;
      if (v34)
      {
        goto LABEL_18;
      }

      v9[2] = v35;
      v14 = v40;
    }

    v12 += v14;
    if (!--v10)
    {
      return v9;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_20E322DB0();
  __break(1u);
  return result;
}

uint64_t sub_20E1B1AB0(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x20F32C070](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_20E1AFCAC(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_20E1B1B48(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868AA8, &qword_20E33C080);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v50 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868AB0, &qword_20E33C088);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v53 = &v50 - v8;
  v63 = sub_20E322600();
  v9 = *(v63 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v63);
  v60 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v62 = &v50 - v13;
  v14 = MEMORY[0x277D84F98];
  v64 = MEMORY[0x277D84F98];
  v15 = *(a1 + 16);
  if (!v15)
  {
    return v14;
  }

  v17 = *(v9 + 16);
  v16 = v9 + 16;
  v59 = v17;
  v52 = *(v16 + 64);
  v57 = (v52 + 32) & ~v52;
  v18 = a1 + v57;
  v19 = *(v16 + 56);
  v54 = 0x800000020E35F750;
  v61 = (v16 + 16);
  v51 = xmmword_20E326380;
  v55 = v16;
  v56 = v5;
  v58 = v19;
  while (1)
  {
    v59(v62, v18, v63);
    sub_20E3225F0();
    v20 = sub_20E3225E0();
    v21 = *(v20 - 8);
    if ((*(v21 + 48))(v5, 1, v20) == 1)
    {
      sub_20E04875C(v5, &qword_27C868AA8, &qword_20E33C080);
      v22 = 0xD000000000000011;
      v23 = v54;
    }

    else
    {
      v24 = v53;
      sub_20E3225D0();
      v25 = v24;
      (*(v21 + 8))(v5, v20);
      v26 = sub_20E322630();
      v27 = *(v26 - 8);
      if ((*(v27 + 48))(v24, 1, v26) == 1)
      {
        sub_20E04875C(v24, &qword_27C868AB0, &qword_20E33C088);
        v22 = 0xD000000000000011;
        v23 = v54;
      }

      else
      {
        v22 = sub_20E322610();
        v23 = v28;
        (*(v27 + 8))(v25, v26);
      }

      v19 = v58;
    }

    v30 = sub_20E1ACAD0(v22, v23);
    v31 = v14[2];
    v32 = (v29 & 1) == 0;
    v33 = v31 + v32;
    if (__OFADD__(v31, v32))
    {
      break;
    }

    v34 = v29;
    if (v14[3] < v33)
    {
      sub_20E1AE01C(v33, 1, &qword_27C868AC0, &qword_20E33C098);
      v14 = v64;
      v35 = sub_20E1ACAD0(v22, v23);
      if ((v34 & 1) != (v36 & 1))
      {
        goto LABEL_25;
      }

      v30 = v35;
    }

    if (v34)
    {

      v37 = v14[7];
      v38 = *v61;
      (*v61)(v60, v62, v63);
      v39 = *(v37 + 8 * v30);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v37 + 8 * v30) = v39;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v39 = sub_20E225564(0, *(v39 + 2) + 1, 1, v39);
        *(v37 + 8 * v30) = v39;
      }

      v42 = *(v39 + 2);
      v41 = *(v39 + 3);
      if (v42 >= v41 >> 1)
      {
        v39 = sub_20E225564(v41 > 1, v42 + 1, 1, v39);
        *(v37 + 8 * v30) = v39;
      }

      *(v39 + 2) = v42 + 1;
      v19 = v58;
      v38(&v39[v57 + v42 * v58], v60, v63);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868AB8, &qword_20E33C090);
      v43 = v57;
      v44 = swift_allocObject();
      *(v44 + 16) = v51;
      (*v61)((v44 + v43), v62, v63);
      v14[(v30 >> 6) + 8] |= 1 << v30;
      v45 = (v14[6] + 16 * v30);
      *v45 = v22;
      v45[1] = v23;
      *(v14[7] + 8 * v30) = v44;
      v46 = v14[2];
      v47 = __OFADD__(v46, 1);
      v48 = v46 + 1;
      if (v47)
      {
        goto LABEL_24;
      }

      v14[2] = v48;
    }

    v18 += v19;
    --v15;
    v5 = v56;
    if (!v15)
    {
      return v14;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  result = sub_20E322DB0();
  __break(1u);
  return result;
}

uint64_t sub_20E1B20C0(uint64_t a1)
{
  v2 = type metadata accessor for TranscriptProtoEvent(0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v37 - v7;
  v9 = MEMORY[0x277D84F98];
  v43 = MEMORY[0x277D84F98];
  v10 = *(a1 + 16);
  if (!v10)
  {
    return v9;
  }

  v39 = *(v5 + 80);
  v11 = *(v5 + 72);
  v41 = (v39 + 32) & ~v39;
  v12 = a1 + v41;
  v38 = xmmword_20E326380;
  v42 = v6;
  v40 = v11;
  while (1)
  {
    sub_20E1B25BC(v12, v8, type metadata accessor for TranscriptProtoEvent);
    v16 = *(v8 + 4);
    v15 = *(v8 + 5);

    v18 = sub_20E1ACAD0(v16, v15);
    v19 = v9[2];
    v20 = (v17 & 1) == 0;
    v21 = v19 + v20;
    if (__OFADD__(v19, v20))
    {
      break;
    }

    v22 = v17;
    if (v9[3] < v21)
    {
      sub_20E1AE01C(v21, 1, &qword_27C868AA0, &qword_20E33C078);
      v9 = v43;
      v23 = sub_20E1ACAD0(v16, v15);
      if ((v22 & 1) != (v24 & 1))
      {
        goto LABEL_19;
      }

      v18 = v23;
    }

    if (v22)
    {

      v25 = v9[7];
      sub_20E1B2624(v8, v42, type metadata accessor for TranscriptProtoEvent);
      v26 = *(v25 + 8 * v18);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v25 + 8 * v18) = v26;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v26 = sub_20E2251F0(0, v26[2] + 1, 1, v26);
        *(v25 + 8 * v18) = v26;
      }

      v29 = v26[2];
      v28 = v26[3];
      if (v29 >= v28 >> 1)
      {
        v26 = sub_20E2251F0(v28 > 1, v29 + 1, 1, v26);
        *(v25 + 8 * v18) = v26;
      }

      v26[2] = v29 + 1;
      v13 = v26 + v41 + v29 * v40;
      v14 = v40;
      sub_20E1B2624(v42, v13, type metadata accessor for TranscriptProtoEvent);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868A70, &qword_20E346180);
      v30 = v41;
      v31 = swift_allocObject();
      *(v31 + 16) = v38;
      sub_20E1B2624(v8, v31 + v30, type metadata accessor for TranscriptProtoEvent);
      v9[(v18 >> 6) + 8] |= 1 << v18;
      v32 = (v9[6] + 16 * v18);
      *v32 = v16;
      v32[1] = v15;
      *(v9[7] + 8 * v18) = v31;
      v33 = v9[2];
      v34 = __OFADD__(v33, 1);
      v35 = v33 + 1;
      if (v34)
      {
        goto LABEL_18;
      }

      v9[2] = v35;
      v14 = v40;
    }

    v12 += v14;
    if (!--v10)
    {
      return v9;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_20E322DB0();
  __break(1u);
  return result;
}

uint64_t sub_20E1B241C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SessionSignature(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_20E1B2484(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20E1B24E4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_20E1B256C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20E1B25BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20E1B2624(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t JoinableStreams.debugDescription.getter()
{
  if (*v0)
  {
    result = 0xD00000000000001ALL;
  }

  else
  {
    result = 0xD00000000000001BLL;
  }

  *v0;
  return result;
}

uint64_t JoinableStreams.hashValue.getter()
{
  v1 = *v0;
  sub_20E322DE0();
  MEMORY[0x20F32C430](v1);
  return sub_20E322E00();
}

unint64_t sub_20E1B2774()
{
  result = qword_27C868AE8;
  if (!qword_27C868AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C868AE8);
  }

  return result;
}

unint64_t sub_20E1B27C8()
{
  if (*v0)
  {
    result = 0xD00000000000001ALL;
  }

  else
  {
    result = 0xD00000000000001BLL;
  }

  *v0;
  return result;
}

uint64_t type metadata accessor for SessionViewConfigs()
{
  result = qword_280E10148;
  if (!qword_280E10148)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20E1B2884()
{
  sub_20E322010();
  if (v0 <= 0x3F)
  {
    sub_20E1B2918();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_20E1B2918()
{
  if (!qword_27C868AF0)
  {
    v0 = sub_20E3229D0();
    if (!v1)
    {
      atomic_store(v0, &qword_27C868AF0);
    }
  }
}

unint64_t TranscriptProtoEvent.init()@<X0>(char *a1@<X8>)
{
  v2 = type metadata accessor for TranscriptProtoEvent(0);
  *(a1 + 11) = 0;
  *(a1 + 12) = 0;
  v3 = v2[11];
  v4 = type metadata accessor for TranscriptProtoPayload(0);
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v5 = &a1[v2[12]];
  *v5 = 0;
  *(v5 + 1) = 0;
  v6 = v2[13];
  v7 = type metadata accessor for TranscriptProtoTimepoint(0);
  (*(*(v7 - 8) + 56))(&a1[v6], 1, 1, v7);
  v8 = v2[14];
  v9 = type metadata accessor for TranscriptProtoParticipantID(0);
  (*(*(v9 - 8) + 56))(&a1[v8], 1, 1, v9);
  v10 = v2[15];
  v11 = type metadata accessor for TranscriptProtoSpanID(0);
  (*(*(v11 - 8) + 56))(&a1[v10], 1, 1, v11);
  v12 = &a1[v2[16]];
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  *(a1 + 2) = 0;
  *(a1 + 3) = 0xE000000000000000;
  *(a1 + 4) = 0;
  *(a1 + 5) = 0xE000000000000000;
  *(a1 + 6) = 0;
  *(a1 + 7) = 0xE000000000000000;
  *(a1 + 8) = 0;
  *(a1 + 9) = 0xE000000000000000;
  result = sub_20E048A4C(MEMORY[0x277D84F90]);
  *(a1 + 10) = result;
  return result;
}

LighthouseDataProcessor::TranscriptProtoCandidateSource_optional __swiftcall TranscriptProtoCandidateSource.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 8;
  if (rawValue < 8)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

LighthouseDataProcessor::TranscriptProtoPlanSource_optional __swiftcall TranscriptProtoPlanSource.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 0x5040302060100uLL >> (8 * rawValue);
  if (rawValue >= 7)
  {
    LOBYTE(v2) = 6;
  }

  *v1 = v2;
  return rawValue;
}

LighthouseDataProcessor::TranscriptProtoPrefixExpression_PrefixOp_optional __swiftcall TranscriptProtoPrefixExpression_PrefixOp.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

LighthouseDataProcessor::TranscriptProtoInfixExpression_InfixOp_optional __swiftcall TranscriptProtoInfixExpression_InfixOp.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 19;
  if (rawValue < 0x13)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

LighthouseDataProcessor::TranscriptProtoUpdateParameterExpression_UpdateKind_optional __swiftcall TranscriptProtoUpdateParameterExpression_UpdateKind.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

LighthouseDataProcessor::TranscriptProtoGender_optional __swiftcall TranscriptProtoGender.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t TranscriptProtoEvent.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TranscriptProtoEvent(0) + 64);
  v4 = sub_20E3221C0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t TranscriptProtoEvent.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TranscriptProtoEvent(0) + 64);
  v4 = sub_20E3221C0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t TranscriptProtoTranscript.init()@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for TranscriptProtoTranscript(0);
  a1[3] = 0;
  a1[4] = 0;
  v3 = a1 + *(v2 + 28);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = MEMORY[0x277D84F90];
  return result;
}

uint64_t TranscriptProtoTimepoint.init()@<X0>(char *a1@<X8>)
{
  v2 = type metadata accessor for TranscriptProtoTimepoint(0);
  v3 = *(v2 + 28);
  v4 = sub_20E322150();
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v5 = &a1[*(v2 + 32)];
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = 0;
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  *(a1 + 3) = 0xE000000000000000;
  return result;
}

uint64_t TranscriptProtoSessionStart.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for TranscriptProtoLocaleSettings(0);
  (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  v3 = type metadata accessor for TranscriptProtoSessionStart(0);
  v4 = v3[5];
  v5 = type metadata accessor for TranscriptProtoDeviceDetails(0);
  (*(*(v5 - 8) + 56))(a1 + v4, 1, 1, v5);
  v6 = v3[6];
  v7 = type metadata accessor for TranscriptProtoGenderSettings(0);
  (*(*(v7 - 8) + 56))(a1 + v6, 1, 1, v7);
  *(a1 + v3[7]) = 2;
  v8 = a1 + v3[8];
  return _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
}

uint64_t sub_20E1B3138@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 32);
  v5 = sub_20E3221C0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_20E1B31D4(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 32);
  v5 = sub_20E3221C0();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t TranscriptProtoRequest.init()@<X0>(_BYTE *a1@<X8>)
{
  v2 = type metadata accessor for TranscriptProtoRequest(0);
  v3 = v2[5];
  v4 = type metadata accessor for TranscriptProtoRequestContent(0);
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v5 = v2[6];
  v6 = type metadata accessor for TranscriptProtoRequestPrescribedPlan(0);
  (*(*(v6 - 8) + 56))(&a1[v5], 1, 1, v6);
  v7 = &a1[v2[7]];
  *v7 = 0;
  v7[1] = 0;
  v8 = v2[8];
  v9 = type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata(0);
  (*(*(v9 - 8) + 56))(&a1[v8], 1, 1, v9);
  v10 = v2[9];
  v11 = type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0);
  (*(*(v11 - 8) + 56))(&a1[v10], 1, 1, v11);
  v12 = v2[10];
  v13 = type metadata accessor for TranscriptProtoRequestSuggestedInvocation(0);
  (*(*(v13 - 8) + 56))(&a1[v12], 1, 1, v13);
  v14 = v2[11];
  v15 = type metadata accessor for TranscriptProtoDateTimeContext(0);
  (*(*(v15 - 8) + 56))(&a1[v14], 1, 1, v15);
  v16 = &a1[v2[12]];
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = 0;
  return result;
}

uint64_t sub_20E1B35CC@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = a1(0);
  (*(*(v5 - 8) + 56))(a3, 1, 1, v5);
  v6 = a3 + *(a2(0) + 20);
  return _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
}

uint64_t sub_20E1B3668@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = sub_20E3221C0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_20E1B3704(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  v5 = sub_20E3221C0();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_20E1B38B4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, char *a3@<X8>)
{
  v5 = a1(0);
  v6 = *(v5 + 20);
  v7 = a2(0);
  (*(*(v7 - 8) + 56))(&a3[v6], 1, 1, v7);
  v8 = &a3[*(v5 + 24)];
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a3 = 0;
  *(a3 + 1) = 0xE000000000000000;
  return result;
}

uint64_t sub_20E1B3968@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 24);
  v5 = sub_20E3221C0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_20E1B3A04(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 24);
  v5 = sub_20E3221C0();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t TranscriptProtoRequestContentSpeechContent.init()@<X0>(char *a1@<X8>)
{
  v2 = type metadata accessor for TranscriptProtoRequestContentSpeechContent(0);
  v3 = v2[5];
  v4 = type metadata accessor for TranscriptProtoSpeechPackage(0);
  v5 = *(*(v4 - 8) + 56);
  v5(&a1[v3], 1, 1, v4);
  v6 = v2[6];
  v7 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v7 - 8) + 56))(&a1[v6], 1, 1, v7);
  v5(&a1[v2[7]], 1, 1, v4);
  v8 = &a1[v2[8]];
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  return result;
}

uint64_t sub_20E1B3CF8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = a3 + *(a1(0) + 20);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a3 = a2;
  return result;
}

double TranscriptProtoSpeechPackage.Token.init()@<D0>(uint64_t a1@<X8>)
{
  v2 = a1 + *(type metadata accessor for TranscriptProtoSpeechPackage.Token(0) + 36);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

uint64_t TranscriptProtoExternalAgentRequest.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for TranscriptProtoRequestContent(0);
  (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  v3 = type metadata accessor for TranscriptProtoExternalAgentRequest(0);
  v4 = (a1 + v3[5]);
  *v4 = 0;
  v4[1] = 0;
  v5 = v3[6];
  v6 = type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata(0);
  (*(*(v6 - 8) + 56))(a1 + v5, 1, 1, v6);
  v7 = a1 + v3[7];
  return _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
}

uint64_t sub_20E1B3FF0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 28);
  v5 = sub_20E3221C0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_20E1B408C(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 28);
  v5 = sub_20E3221C0();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_20E1B4338@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  v3 = a2 + *(a1(0) + 20);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  return result;
}

uint64_t TranscriptProtoRequestPrescribedPlanConvertTool.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for TranscriptProtoRequestPrescribedPlanConvertTool(0);
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  v3 = a1 + *(v2 + 32);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  return result;
}

uint64_t sub_20E1B4560@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  v4 = a2 + *(v3 + 28);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  return result;
}

uint64_t TranscriptProtoRequestPrescribedPlanOpenTool.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  v3 = type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool(0);
  v4 = a1 + *(v3 + 20);
  *v4 = 0;
  *(v4 + 8) = 1;
  v5 = a1 + *(v3 + 24);
  return _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
}

uint64_t TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  v1 = a1 + *(type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool(0) + 20);
  return _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
}

unint64_t TranscriptProtoAction.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for TranscriptProtoAction(0);
  v3 = v2[6];
  v4 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v5 = (a1 + v2[7]);
  *v5 = 0;
  v5[1] = 0;
  v6 = (a1 + v2[8]);
  *v6 = 0;
  v6[1] = 0;
  v7 = v2[9];
  v8 = type metadata accessor for TranscriptProtoGlobalToolIdentifier(0);
  (*(*(v8 - 8) + 56))(a1 + v7, 1, 1, v8);
  v9 = a1 + v2[10];
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = 0;
  result = sub_20E048D9C(MEMORY[0x277D84F90]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_20E1B4E98@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v7 = a1(0);
  (*(*(v7 - 8) + 56))(a4, 1, 1, v7);
  v8 = a2(0);
  v9 = *(v8 + 20);
  v10 = a3(0);
  (*(*(v10 - 8) + 56))(a4 + v9, 1, 1, v10);
  v11 = a4 + *(v8 + 24);
  return _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
}

uint64_t TranscriptProtoExternalAgentOutcome.init()@<X0>(char *a1@<X8>)
{
  v2 = type metadata accessor for TranscriptProtoExternalAgentOutcome(0);
  v3 = v2[5];
  v4 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v5 = v2[6];
  v6 = type metadata accessor for TranscriptProtoStatementOutcome(0);
  (*(*(v6 - 8) + 56))(&a1[v5], 1, 1, v6);
  v7 = &a1[v2[7]];
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = MEMORY[0x277D84F90];
  return result;
}

uint64_t TranscriptProtoStatementResult.init()@<X0>(char *a1@<X8>)
{
  v2 = type metadata accessor for TranscriptProtoStatementResult(0);
  *a1 = 0;
  *(a1 + 1) = 0;
  v3 = v2[5];
  v4 = type metadata accessor for TranscriptProtoStatementResultPayload(0);
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v5 = v2[6];
  v6 = type metadata accessor for TranscriptProtoStatementID(0);
  v7 = *(*(v6 - 8) + 56);
  v7(&a1[v5], 1, 1, v6);
  v7(&a1[v2[7]], 1, 1, v6);
  v7(&a1[v2[8]], 1, 1, v6);
  v8 = v2[9];
  v9 = type metadata accessor for TranscriptProtoGlobalToolIdentifier(0);
  (*(*(v9 - 8) + 56))(&a1[v8], 1, 1, v9);
  v10 = &a1[v2[10]];
  return _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
}

uint64_t sub_20E1B53F4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 40);
  v5 = sub_20E3221C0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_20E1B5490(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 40);
  v5 = sub_20E3221C0();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_20E1B56D4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 256;
  v2 = a2 + *(a1(0) + 20);
  return _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
}

unint64_t TranscriptProtoClientAction.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for TranscriptProtoClientAction(0);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  v3 = *(v2 + 36);
  v4 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v5 = a1 + *(v2 + 40);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  v6 = MEMORY[0x277D84F90];
  *(a1 + 16) = sub_20E04916C(MEMORY[0x277D84F90]);
  result = sub_20E049354(v6);
  *(a1 + 24) = result;
  return result;
}

uint64_t TranscriptProtoPersonQuery.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for TranscriptProtoPersonQuery(0);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = v2[6];
  v4 = type metadata accessor for TranscriptProtoPersonQuery.Handle(0);
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v5 = (a1 + v2[7]);
  *v5 = 0;
  v5[1] = 0;
  v6 = a1 + v2[8];
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = 0;
  return result;
}

uint64_t sub_20E1B5BB8@<X0>(char a1@<W0>, uint64_t (*a2)(void)@<X1>, _BYTE *a3@<X8>)
{
  *a3 = a1;
  v3 = &a3[*(a2(0) + 20)];
  return _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
}

uint64_t sub_20E1B5C84@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  v3 = a1(0);
  a2[1] = 0;
  a2[2] = 0;
  v4 = a2 + *(v3 + 24);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = MEMORY[0x277D84F90];
  return result;
}

uint64_t TranscriptProtoActionParameterContext.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for TranscriptProtoActionParameterContext(0);
  v3 = v2[6];
  v4 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v5 = v2[7];
  v6 = type metadata accessor for TranscriptProtoGlobalToolIdentifier(0);
  (*(*(v6 - 8) + 56))(a1 + v5, 1, 1, v6);
  v7 = a1 + v2[8];
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  return result;
}

uint64_t sub_20E1B5EB0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = a3 + *(a1(0) + 24);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a3 = 0;
  a3[1] = 0xE000000000000000;
  a3[2] = a2;
  return result;
}

uint64_t TranscriptProtoSystemRequirementUserLocationForSystemRequest.init()@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  v2 = a1 + *(type metadata accessor for TranscriptProtoSystemRequirementUserLocationForSystemRequest(0) + 28);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = 0;
  return result;
}

uint64_t TranscriptProtoActionFailureDeveloperDefinedError.init()@<X0>(void *a1@<X8>)
{
  v2 = a1 + *(type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError(0) + 28);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  a1[4] = 0;
  return result;
}

uint64_t TranscriptProtoActionSuccess.init()@<X0>(char *a1@<X8>)
{
  v2 = type metadata accessor for TranscriptProtoActionSuccess(0);
  v3 = v2[6];
  v4 = type metadata accessor for ToolKitProtoTypedValue(0);
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v5 = v2[7];
  v6 = type metadata accessor for TranscriptProtoUndoContext(0);
  (*(*(v6 - 8) + 56))(&a1[v5], 1, 1, v6);
  v7 = v2[8];
  v8 = type metadata accessor for TranscriptProtoFollowUpAction(0);
  (*(*(v8 - 8) + 56))(&a1[v7], 1, 1, v8);
  v9 = &a1[v2[9]];
  *v9 = 0;
  *(v9 + 1) = 0;
  v10 = v2[10];
  v11 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v11 - 8) + 56))(&a1[v10], 1, 1, v11);
  v12 = &a1[v2[11]];
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = 0;
  return result;
}

uint64_t TranscriptProtoActionSuccess.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TranscriptProtoActionSuccess(0) + 44);
  v4 = sub_20E3221C0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t TranscriptProtoActionSuccess.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TranscriptProtoActionSuccess(0) + 44);
  v4 = sub_20E3221C0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

double TranscriptProtoFollowUpActionExecutableActionLinkAction.init()@<D0>(uint64_t a1@<X8>)
{
  v2 = a1 + *(type metadata accessor for TranscriptProtoFollowUpActionExecutableActionLinkAction(0) + 28);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  result = 0.0;
  *(a1 + 16) = xmmword_20E326350;
  *(a1 + 32) = 0;
  return result;
}

uint64_t TranscriptProtoParameterConfirmation.init()@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  v2 = type metadata accessor for TranscriptProtoParameterConfirmation(0);
  v3 = v2[6];
  v4 = type metadata accessor for ToolKitProtoTypedValue(0);
  v5 = *(*(v4 - 8) + 56);
  v5(a1 + v3, 1, 1, v4);
  v5(a1 + v2[7], 1, 1, v4);
  v6 = a1 + v2[8];
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  return result;
}

uint64_t TranscriptProtoParameterDisambiguation.init()@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  v2 = a1 + *(type metadata accessor for TranscriptProtoParameterDisambiguation(0) + 28);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_20E1B74E4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = a1(0);
  v6 = *(v5 + 24);
  v7 = a2(0);
  (*(*(v7 - 8) + 56))(a3 + v6, 1, 1, v7);
  v8 = a3 + *(v5 + 28);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a3 = 0;
  *(a3 + 8) = 0xE000000000000000;
  *(a3 + 16) = 0;
  return result;
}

uint64_t TranscriptProtoPlan.init()@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 6;
  v2 = a1 + *(type metadata accessor for TranscriptProtoPlan(0) + 36);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_20E1B7834@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 36);
  v5 = sub_20E3221C0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_20E1B78D0(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 36);
  v5 = sub_20E3221C0();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t TranscriptProtoPlanGenerationModelOutputError.init()@<X0>(char *a1@<X8>)
{
  v2 = type metadata accessor for TranscriptProtoPlanGenerationModelOutputError(0);
  v3 = *(v2 + 24);
  v4 = type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v5 = &a1[*(v2 + 28)];
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  *(a1 + 2) = 0;
  *(a1 + 3) = 0xE000000000000000;
  return result;
}

uint64_t sub_20E1B7CD4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t (*a4)(void)@<X3>, _BYTE *a5@<X8>)
{
  v9 = a1(0);
  v10 = v9[5];
  v11 = a2(0);
  (*(*(v11 - 8) + 56))(&a5[v10], 1, 1, v11);
  v12 = v9[6];
  v13 = a3(0);
  (*(*(v13 - 8) + 56))(&a5[v12], 1, 1, v13);
  v14 = v9[7];
  v15 = a4(0);
  (*(*(v15 - 8) + 56))(&a5[v14], 1, 1, v15);
  v16 = &a5[v9[8]];
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a5 = 0;
  return result;
}

uint64_t TranscriptProtoQueryStepResults.init()@<X0>(char *a1@<X8>)
{
  StepResults = type metadata accessor for TranscriptProtoQueryStepResults(0);
  v3 = *(StepResults + 24);
  v4 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v5 = &a1[*(StepResults + 28)];
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = MEMORY[0x277D84F90];
  *(a1 + 1) = 0;
  *(a1 + 2) = 0xE000000000000000;
  return result;
}

uint64_t TranscriptProtoResponseDialog.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for TranscriptProtoResponseDialog(0);
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  v3 = a1 + *(v2 + 32);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  return result;
}

uint64_t TranscriptProtoResponseOutput.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for TranscriptProtoResponseOutput(0);
  v3 = v2[7];
  v4 = type metadata accessor for TranscriptProtoDialogType(0);
  v5 = *(*(v4 - 8) + 56);
  v5(a1 + v3, 1, 1, v4);
  v5(a1 + v2[8], 1, 1, v4);
  v6 = v2[9];
  v7 = type metadata accessor for TranscriptProtoVisualOutputOptions(0);
  (*(*(v7 - 8) + 56))(a1 + v6, 1, 1, v7);
  v8 = v2[10];
  v9 = type metadata accessor for TranscriptProtoVisualOutput(0);
  (*(*(v9 - 8) + 56))(a1 + v8, 1, 1, v9);
  v10 = (a1 + v2[11]);
  *v10 = 0;
  v10[1] = 0;
  v11 = a1 + v2[12];
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  v13 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  *(a1 + 8) = 0;
  *(a1 + 16) = v13;
  return result;
}

uint64_t sub_20E1B845C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 48);
  v5 = sub_20E3221C0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_20E1B84F8(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 48);
  v5 = sub_20E3221C0();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t TranscriptProtoResponseManifest.init()@<X0>(char *a1@<X8>)
{
  v2 = type metadata accessor for TranscriptProtoResponseManifest(0);
  v3 = v2[5];
  v4 = type metadata accessor for TranscriptProtoResponseDialog(0);
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v5 = v2[6];
  v6 = type metadata accessor for TranscriptProtoResponseVisual(0);
  (*(*(v6 - 8) + 56))(&a1[v5], 1, 1, v6);
  v7 = &a1[v2[7]];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8 = &a1[v2[8]];
  *v8 = 0;
  *(v8 + 1) = 0;
  a1[v2[9]] = 2;
  a1[v2[10]] = 2;
  v9 = v2[11];
  v10 = type metadata accessor for TranscriptProtoUIType(0);
  (*(*(v10 - 8) + 56))(&a1[v9], 1, 1, v10);
  v11 = &a1[v2[12]];
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = MEMORY[0x277D84F90];
  return result;
}

uint64_t TranscriptProtoResponseParameter.init()@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 16) = xmmword_20E323EA0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 2;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 2;
  v2 = a1 + *(type metadata accessor for TranscriptProtoResponseParameter(0) + 40);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  return result;
}

uint64_t TranscriptProtoResponseVisual.init()@<X0>(char *a1@<X8>)
{
  v2 = type metadata accessor for TranscriptProtoResponseVisual(0);
  v3 = *(v2 + 24);
  v4 = type metadata accessor for TranscriptProtoResponseVisualOptions(0);
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v5 = &a1[*(v2 + 28)];
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  v7 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  *(a1 + 1) = v7;
  return result;
}

uint64_t sub_20E1B9008@<X0>(uint64_t (*a1)(void)@<X0>, _BYTE *a2@<X8>)
{
  v3 = &a2[*(a1(0) + 20)];
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = 0;
  return result;
}

uint64_t TranscriptProtoUIConfirmationLabel.init()@<X0>(void *a1@<X8>)
{
  v2 = a1 + *(type metadata accessor for TranscriptProtoUIConfirmationLabel(0) + 24);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  return result;
}

double TranscriptProtoArchiveViewPayload.init()@<D0>(_OWORD *a1@<X8>)
{
  v2 = type metadata accessor for TranscriptProtoArchiveViewPayload(0);
  a1[1] = 0u;
  a1[2] = 0u;
  v3 = a1 + *(v2 + 28);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  result = 0.0;
  *a1 = xmmword_20E326350;
  return result;
}

double sub_20E1B9428@<D0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = a2 + *(a1(0) + 24);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  result = 0.0;
  *a2 = xmmword_20E326350;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  return result;
}

double sub_20E1B9508@<D0>(uint64_t (*a1)(void)@<X0>, _OWORD *a2@<X8>)
{
  v3 = a2 + *(a1(0) + 20);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  result = 0.0;
  *a2 = xmmword_20E326350;
  return result;
}

uint64_t TranscriptProtoSystemPromptResolution.init()@<X0>(char *a1@<X8>)
{
  v2 = type metadata accessor for TranscriptProtoSystemPromptResolution(0);
  *(a1 + 2) = 0;
  *(a1 + 3) = 0;
  v3 = v2[6];
  v4 = type metadata accessor for TranscriptProtoSystemPromptResolutionUserAction(0);
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v5 = v2[7];
  v6 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v6 - 8) + 56))(&a1[v5], 1, 1, v6);
  v7 = v2[8];
  v8 = type metadata accessor for TranscriptProtoSystemPromptResolutionInput(0);
  (*(*(v8 - 8) + 56))(&a1[v7], 1, 1, v8);
  v9 = &a1[v2[9]];
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  return result;
}

uint64_t TranscriptProtoActionResolverRequest.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for TranscriptProtoActionResolverRequest(0);
  v3 = v2[7];
  v4 = type metadata accessor for TranscriptProtoParameterSet(0);
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v5 = v2[8];
  v6 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v6 - 8) + 56))(a1 + v5, 1, 1, v6);
  v7 = v2[9];
  v8 = type metadata accessor for TranscriptProtoGlobalToolIdentifier(0);
  (*(*(v8 - 8) + 56))(a1 + v7, 1, 1, v8);
  v9 = a1 + v2[10];
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = MEMORY[0x277D84F90];
  *(a1 + 8) = 0;
  return result;
}

uint64_t TranscriptProtoContextRetrieved.init()@<X0>(void *a1@<X8>)
{
  v2 = a1 + *(type metadata accessor for TranscriptProtoContextRetrieved(0) + 24);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  v4 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  a1[1] = v4;
  return result;
}

uint64_t sub_20E1B9BF0@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  v3 = a1(0);
  *a2 = 0;
  a2[1] = 0;
  v4 = a2 + *(v3 + 20);
  return _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
}

uint64_t TranscriptProtoParameter.init()@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  v2 = type metadata accessor for TranscriptProtoParameter(0);
  v3 = *(v2 + 24);
  v4 = type metadata accessor for TranscriptProtoCandidate(0);
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v5 = a1 + *(v2 + 28);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  return result;
}

uint64_t sub_20E1B9FE4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t *a4@<X8>)
{
  v7 = a1(0);
  v8 = *(v7 + 20);
  v9 = a2(0);
  (*(*(v9 - 8) + 56))(a4 + v8, 1, 1, v9);
  v10 = a4 + *(v7 + 24);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  result = a3(MEMORY[0x277D84F90]);
  *a4 = result;
  return result;
}

uint64_t sub_20E1BA144@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v7 = a1(0);
  v8 = *(v7 + 20);
  v9 = a2(0);
  (*(*(v9 - 8) + 56))(&a4[v8], 1, 1, v9);
  v10 = &a4[*(v7 + 24)];
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a4 = a3;
  return result;
}

unint64_t TranscriptProtoASTFlatExprCallVariant.init()@<X0>(void *a1@<X8>)
{
  v2 = a1 + *(type metadata accessor for TranscriptProtoASTFlatExprCallVariant(0) + 24);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  result = sub_20E049714(MEMORY[0x277D84F90]);
  a1[2] = result;
  return result;
}

uint64_t TranscriptProtoASTPickType.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = -1;
  v1 = a1 + *(type metadata accessor for TranscriptProtoASTPickType(0) + 20);
  return _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
}

uint64_t sub_20E1BA790@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = a2 + *(a1(0) + 28);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  return result;
}

uint64_t TranscriptProtoASTFlatExprUpdateVariant.init()@<X0>(uint64_t a1@<X8>)
{
  updated = type metadata accessor for TranscriptProtoASTFlatExprUpdateVariant(0);
  v3 = updated[6];
  v4 = type metadata accessor for TranscriptProtoASTFlatValue(0);
  v5 = *(*(v4 - 8) + 56);
  v5(a1 + v3, 1, 1, v4);
  v5(a1 + updated[7], 1, 1, v4);
  v6 = a1 + updated[8];
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = MEMORY[0x277D84F90];
  *(a1 + 8) = 0;
  return result;
}

uint64_t sub_20E1BAE38@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t *a3@<X8>)
{
  v5 = a3 + *(a1(0) + 20);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  result = a2(MEMORY[0x277D84F90]);
  *a3 = result;
  return result;
}

uint64_t sub_20E1BAF30@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = a1(0);
  v6 = *(*(v5 - 8) + 56);
  v6(a3, 1, 1, v5);
  v7 = a2(0);
  v6(a3 + *(v7 + 20), 1, 1, v5);
  v8 = a3 + *(v7 + 24);
  return _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
}

uint64_t sub_20E1BB45C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, _BYTE *a3@<X8>)
{
  v5 = a1(0);
  v6 = v5[5];
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 56);
  v8(&a3[v6], 1, 1, v7);
  v8(&a3[v5[6]], 1, 1, v7);
  v9 = &a3[v5[7]];
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a3 = 0;
  return result;
}

uint64_t sub_20E1BB5C4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, _BYTE *a3@<X8>)
{
  v5 = a1(0);
  v6 = *(v5 + 20);
  v7 = a2(0);
  (*(*(v7 - 8) + 56))(&a3[v6], 1, 1, v7);
  v8 = &a3[*(v5 + 24)];
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a3 = 0;
  return result;
}

uint64_t TranscriptProtoUpdateParameterExpression_UpdateParameter.init()@<X0>(uint64_t a1@<X8>)
{
  updated = type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter(0);
  v3 = updated[6];
  v4 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v5 = a1 + updated[7];
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = a1 + updated[8];
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  return result;
}

uint64_t TranscriptProtoGlobalToolIdentifier.init()@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for TranscriptProtoGlobalToolIdentifier(0);
  a1[2] = 0;
  a1[3] = 0;
  v3 = a1 + *(v2 + 24);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  return result;
}

uint64_t TranscriptProtoSearchExpression.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = a1 + *(type metadata accessor for TranscriptProtoSearchExpression(0) + 32);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 18) = 0;
  return result;
}

unint64_t TranscriptProtoStructuredSearchExpression.init()@<X0>(unint64_t *a1@<X8>)
{
  v2 = type metadata accessor for TranscriptProtoStructuredSearchExpression(0);
  v3 = *(v2 + 24);
  v4 = type metadata accessor for ToolKitProtoTypeInstance(0);
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v5 = a1 + *(v2 + 28);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  v6 = MEMORY[0x277D84F90];
  result = sub_20E0498FC(MEMORY[0x277D84F90]);
  *a1 = result;
  a1[1] = v6;
  return result;
}

uint64_t TranscriptProtoStructuredSearchExpression.StructuredSearchProperty.init()@<X0>(char *a1@<X8>)
{
  v2 = type metadata accessor for TranscriptProtoStructuredSearchExpression.StructuredSearchProperty(0);
  *(a1 + 2) = 0;
  *(a1 + 3) = 0;
  v3 = *(v2 + 24);
  v4 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v5 = &a1[*(v2 + 28)];
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  return result;
}

uint64_t TranscriptProtoUserConfirmExpression.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for TranscriptProtoStatementID(0);
  v3 = *(*(v2 - 8) + 56);
  v3(a1, 1, 1, v2);
  v4 = type metadata accessor for TranscriptProtoUserConfirmExpression(0);
  v3(a1 + v4[5], 1, 1, v2);
  v3(a1 + v4[6], 1, 1, v2);
  v5 = a1 + v4[7];
  return _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
}

uint64_t TranscriptProtoToolRetrievalResponse.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = a1 + *(type metadata accessor for TranscriptProtoToolRetrievalResponse(0) + 36);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 0;
  v4 = MEMORY[0x277D84F90];
  *(a1 + 40) = MEMORY[0x277D84F90];
  *(a1 + 48) = v4;
  return result;
}

uint64_t TranscriptProtoSystemResponse.init()@<X0>(char *a1@<X8>)
{
  v2 = type metadata accessor for TranscriptProtoSystemResponse(0);
  v3 = v2[5];
  v4 = type metadata accessor for TranscriptProtoResponseOutput(0);
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v5 = &a1[v2[6]];
  *v5 = 0;
  *(v5 + 1) = 0;
  v6 = &a1[v2[7]];
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = MEMORY[0x277D84F90];
  return result;
}

uint64_t TranscriptProtoInterpretedStatementResult.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for TranscriptProtoStatementOutcome(0);
  (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  v3 = type metadata accessor for TranscriptProtoInterpretedStatementResult(0);
  v4 = v3[5];
  v5 = type metadata accessor for TranscriptProtoStatementID(0);
  v6 = *(*(v5 - 8) + 56);
  v6(a1 + v4, 1, 1, v5);
  v6(a1 + v3[6], 1, 1, v5);
  v7 = (a1 + v3[7]);
  *v7 = 0;
  v7[1] = 0;
  v8 = (a1 + v3[8]);
  *v8 = 0;
  v8[1] = 0;
  v6(a1 + v3[9], 1, 1, v5);
  v9 = a1 + v3[10];
  return _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
}

uint64_t TranscriptProtoProgramStatement.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  v3 = type metadata accessor for TranscriptProtoProgramStatement(0);
  v4 = v3[5];
  v5 = type metadata accessor for TranscriptProtoExpression(0);
  (*(*(v5 - 8) + 56))(a1 + v4, 1, 1, v5);
  *(a1 + v3[6]) = 2;
  *(a1 + v3[7]) = 2;
  v6 = a1 + v3[8];
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = v3[9];
  v8 = type metadata accessor for TranscriptProtoProgramStatement.ExecutionSupportType(0);
  (*(*(v8 - 8) + 56))(a1 + v7, 1, 1, v8);
  v9 = a1 + v3[10];
  return _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
}

uint64_t sub_20E1BD020@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  v3 = a2 + *(a1(0) + 28);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = 0;
  a2[3] = 0xE000000000000000;
  a2[4] = 0;
  a2[5] = 0xE000000000000000;
  return result;
}

uint64_t TranscriptProtoGenderSettings.init()@<X0>(_WORD *a1@<X8>)
{
  v2 = a1 + *(type metadata accessor for TranscriptProtoGenderSettings(0) + 24);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = 0;
  return result;
}

uint64_t TranscriptProtoDeviceDetailsDeviceType.init()@<X0>(_DWORD *a1@<X8>)
{
  v2 = a1 + *(type metadata accessor for TranscriptProtoDeviceDetailsDeviceType(0) + 20);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = 0;
  return result;
}

uint64_t TranscriptProtoStatementID.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for TranscriptProtoStatementID(0);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = a1 + *(v2 + 24);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = 0;
  return result;
}

uint64_t TranscriptProtoUndoRedoRequest.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for TranscriptProtoUndoRedoRequest(0);
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v3 = v2[7];
  v4 = type metadata accessor for TranscriptProtoStatementID(0);
  v5 = *(*(v4 - 8) + 56);
  v5(a1 + v3, 1, 1, v4);
  v5(a1 + v2[8], 1, 1, v4);
  v6 = a1 + v2[9];
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  return result;
}

uint64_t TranscriptProtoClientUndoRedoRequest.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for TranscriptProtoClientUndoRedoRequest(0);
  v3 = v2[6];
  v4 = type metadata accessor for TranscriptProtoStatementID(0);
  v5 = *(*(v4 - 8) + 56);
  v5(a1 + v3, 1, 1, v4);
  v5(a1 + v2[7], 1, 1, v4);
  v6 = a1 + v2[8];
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  return result;
}

uint64_t TranscriptProtoTypeConversionRequest.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ToolKitProtoTypedValue(0);
  (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  v3 = type metadata accessor for TranscriptProtoTypeConversionRequest(0);
  v4 = v3[5];
  v5 = type metadata accessor for ToolKitProtoTypeInstance(0);
  (*(*(v5 - 8) + 56))(a1 + v4, 1, 1, v5);
  v6 = v3[6];
  v7 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v7 - 8) + 56))(a1 + v6, 1, 1, v7);
  v8 = a1 + v3[7];
  return _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
}

uint64_t sub_20E1BD858@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = a1(0);
  (*(*(v5 - 8) + 56))(a3, 1, 1, v5);
  v6 = a2(0);
  v7 = v6[5];
  v8 = type metadata accessor for TranscriptProtoStatementID(0);
  v9 = *(*(v8 - 8) + 56);
  v9(a3 + v7, 1, 1, v8);
  v9(a3 + v6[6], 1, 1, v8);
  v10 = a3 + v6[7];
  return _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
}

uint64_t TranscriptProtoQueryDecorationResult.init()@<X0>(char *a1@<X8>)
{
  DecorationResult = type metadata accessor for TranscriptProtoQueryDecorationResult(0);
  v3 = *(DecorationResult + 28);
  DecorationToolRetrievalResponse = type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse(0);
  (*(*(DecorationToolRetrievalResponse - 8) + 56))(&a1[v3], 1, 1, DecorationToolRetrievalResponse);
  v5 = &a1[*(DecorationResult + 32)];
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  v7 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  *(a1 + 1) = v7;
  *(a1 + 2) = v7;
  return result;
}

uint64_t sub_20E1BDB1C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, char *a4@<X8>)
{
  v7 = a1(0);
  v8 = v7[5];
  v9 = a2(0);
  (*(*(v9 - 8) + 56))(&a4[v8], 1, 1, v9);
  v10 = v7[6];
  v11 = a3(0);
  (*(*(v11 - 8) + 56))(&a4[v10], 1, 1, v11);
  v12 = &a4[v7[7]];
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a4 = 0;
  *(a4 + 1) = 0xE000000000000000;
  return result;
}

uint64_t sub_20E1BE4D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E1846E4();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_20E1BE57C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E1959FC();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_20E1BE5E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E1847E0();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_20E1BE64C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E1959A8();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_20E1BE6B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E184834();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_20E1BE71C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E1848DC();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_20E1BE784(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E184930();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_20E1BE7EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E184888();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_20E1BE854(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E184984();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_20E1BE8BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E1849D8();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_20E1BE924(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E184738();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_20E1BE994(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E184A2C();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_20E1BE9FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E184A80();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t TranscriptProtoEvent.clientRequestID.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t TranscriptProtoEvent.clientRequestID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t TranscriptProtoEvent.clientSessionID.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t TranscriptProtoEvent.clientSessionID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56);

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t TranscriptProtoEvent.clientApplicationID.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t TranscriptProtoEvent.clientApplicationID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 72);

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

uint64_t TranscriptProtoEvent.rawInitiatedSpans.setter(uint64_t a1)
{
  v3 = *(v1 + 80);

  *(v1 + 80) = a1;
  return result;
}

uint64_t TranscriptProtoEvent.rawQueryEventID.getter()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);

  return v1;
}

uint64_t TranscriptProtoEvent.rawQueryEventID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 96);

  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
  return result;
}

uint64_t TranscriptProtoEvent.clientGroupID.getter()
{
  v1 = (v0 + *(type metadata accessor for TranscriptProtoEvent(0) + 48));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t TranscriptProtoEvent.clientGroupID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for TranscriptProtoEvent(0) + 48));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t TranscriptProtoEvent.init(rawID:rawSessionID:rawQueryEventID:rawPayload:clientRequestID:clientSessionID:clientApplicationID:clientGroupID:timepoint:sender:postingSpan:rawInitiatedSpans:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __int128 a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v22 = type metadata accessor for TranscriptProtoEvent(0);
  v23 = v22[11];
  v24 = type metadata accessor for TranscriptProtoPayload(0);
  (*(*(v24 - 8) + 56))(a9 + v23, 1, 1, v24);
  v25 = v22[13];
  v26 = (a9 + v22[12]);
  v27 = type metadata accessor for TranscriptProtoTimepoint(0);
  (*(*(v27 - 8) + 56))(a9 + v25, 1, 1, v27);
  v28 = v22[14];
  v29 = type metadata accessor for TranscriptProtoParticipantID(0);
  (*(*(v29 - 8) + 56))(a9 + v28, 1, 1, v29);
  v30 = v22[15];
  v31 = type metadata accessor for TranscriptProtoSpanID(0);
  (*(*(v31 - 8) + 56))(a9 + v30, 1, 1, v31);
  v32 = a9 + v22[16];
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 88) = a5;
  *(a9 + 96) = a6;
  sub_20E05EC5C(a7, a9 + v23, &qword_27C863FC0, &unk_20E325F70);
  *(a9 + 32) = a8;
  *(a9 + 40) = a10;
  *(a9 + 56) = a11;
  *(a9 + 72) = a12;
  *v26 = a13;
  v26[1] = a14;
  sub_20E05EC5C(a15, a9 + v25, &qword_27C8688C0, &qword_20E33B870);
  sub_20E05EC5C(a16, a9 + v28, &qword_27C8688B0, &unk_20E33C1C0);
  result = sub_20E05EC5C(a17, a9 + v30, &qword_27C8688A0, &qword_20E33B858);
  *(a9 + 80) = a18;
  return result;
}

uint64_t TranscriptProtoTranscript.sessionID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t TranscriptProtoTranscript.sessionID.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t TranscriptProtoTranscript.events.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t TranscriptProtoTranscript.clientSessionID.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t TranscriptProtoTranscript.clientSessionID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t TranscriptProtoTranscript.init(sessionID:clientSessionID:events:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v12 = a6 + *(type metadata accessor for TranscriptProtoTranscript(0) + 28);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a6 = a1;
  a6[1] = a2;
  a6[3] = a3;
  a6[4] = a4;
  a6[2] = a5;
  return result;
}

uint64_t TranscriptProtoTimepoint.init(rawDate:suspendingClockInstantNs:continuousClockInstantNs:rawBootSessionUuid:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v12 = type metadata accessor for TranscriptProtoTimepoint(0);
  v13 = *(v12 + 28);
  v14 = sub_20E322150();
  (*(*(v14 - 8) + 56))(&a6[v13], 1, 1, v14);
  v15 = &a6[*(v12 + 32)];
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  result = sub_20E05EC5C(a1, &a6[v13], &qword_27C868778, &unk_20E33C000);
  *a6 = a2;
  *(a6 + 1) = a3;
  *(a6 + 2) = a4;
  *(a6 + 3) = a5;
  return result;
}

uint64_t TranscriptProtoSessionStart.shouldExecutePreviousActionsForUserPrompt.setter(char a1)
{
  result = type metadata accessor for TranscriptProtoSessionStart(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t TranscriptProtoSessionStart.init(initialLocaleSettings:originatingDevice:genderSettings:shouldExecutePreviousActionsForUserPrompt:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for TranscriptProtoLocaleSettings(0);
  (*(*(v10 - 8) + 56))(a5, 1, 1, v10);
  v11 = type metadata accessor for TranscriptProtoSessionStart(0);
  v12 = v11[5];
  v13 = type metadata accessor for TranscriptProtoDeviceDetails(0);
  (*(*(v13 - 8) + 56))(a5 + v12, 1, 1, v13);
  v14 = v11[6];
  v15 = type metadata accessor for TranscriptProtoGenderSettings(0);
  (*(*(v15 - 8) + 56))(a5 + v14, 1, 1, v15);
  v16 = v11[7];
  v17 = a5 + v11[8];
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  sub_20E05EC5C(a1, a5, &qword_27C8687B0, &unk_20E33C1E0);
  sub_20E05EC5C(a2, a5 + v12, &qword_27C8687A0, &unk_20E3461A0);
  result = sub_20E05EC5C(a3, a5 + v14, &qword_27C868790, &unk_20E33C1F0);
  *(a5 + v16) = a4;
  return result;
}

uint64_t TranscriptProtoRequest.init(content:safetyMode:prescribedPlan:rawRewriteMetadataEventID:rewriteMetadataInlined:siriRequestContext:suggestedInvocation:datetimeContext:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _BYTE *a9@<X8>, uint64_t a10)
{
  v12 = type metadata accessor for TranscriptProtoRequest(0);
  v13 = v12[5];
  v14 = type metadata accessor for TranscriptProtoRequestContent(0);
  (*(*(v14 - 8) + 56))(&a9[v13], 1, 1, v14);
  v15 = v12[6];
  v16 = type metadata accessor for TranscriptProtoRequestPrescribedPlan(0);
  (*(*(v16 - 8) + 56))(&a9[v15], 1, 1, v16);
  v17 = v12[8];
  v18 = &a9[v12[7]];
  v19 = type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata(0);
  (*(*(v19 - 8) + 56))(&a9[v17], 1, 1, v19);
  v20 = v12[9];
  v21 = type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0);
  (*(*(v21 - 8) + 56))(&a9[v20], 1, 1, v21);
  v22 = v12[10];
  v23 = type metadata accessor for TranscriptProtoRequestSuggestedInvocation(0);
  (*(*(v23 - 8) + 56))(&a9[v22], 1, 1, v23);
  v24 = v12[11];
  v25 = type metadata accessor for TranscriptProtoDateTimeContext(0);
  (*(*(v25 - 8) + 56))(&a9[v24], 1, 1, v25);
  v26 = &a9[v12[12]];
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  sub_20E05EC5C(a1, &a9[v13], &qword_27C867EF8, &qword_20E33AFC8);
  *a9 = a2;
  sub_20E05EC5C(a3, &a9[v15], &qword_27C863F88, &unk_20E33C200);
  *v18 = a4;
  v18[1] = a5;
  sub_20E05EC5C(a6, &a9[v17], &qword_27C868708, &qword_20E33B700);
  sub_20E05EC5C(a7, &a9[v20], &qword_27C868758, &unk_20E33C210);
  sub_20E05EC5C(a8, &a9[v22], &qword_27C868748, &qword_20E33B738);
  return sub_20E05EC5C(a10, &a9[v24], &qword_27C868738, &unk_20E33C220);
}

uint64_t TranscriptProtoRequestContentSpeechContent.init(text:speechPackage:statementID:preItnspeechPackage:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v9 = type metadata accessor for TranscriptProtoRequestContentSpeechContent(0);
  v10 = v9[5];
  v11 = type metadata accessor for TranscriptProtoSpeechPackage(0);
  v12 = *(*(v11 - 8) + 56);
  v12(&a6[v10], 1, 1, v11);
  v13 = v9[6];
  v14 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v14 - 8) + 56))(&a6[v13], 1, 1, v14);
  v15 = v9[7];
  v12(&a6[v15], 1, 1, v11);
  v16 = &a6[v9[8]];
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a6 = a1;
  *(a6 + 1) = a2;
  sub_20E05EC5C(a3, &a6[v10], &qword_27C868718, &qword_20E33B710);
  sub_20E05EC5C(a4, &a6[v13], &qword_27C8639D0, &unk_20E33C230);
  return sub_20E05EC5C(a5, &a6[v15], &qword_27C868718, &qword_20E33B710);
}

uint64_t sub_20E1C0BA8@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, void *a3@<X8>)
{
  v5 = a3 + *(a2(0) + 20);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a3 = a1;
  return result;
}

uint64_t TranscriptProtoSpeechPackage.Token.init(text:confidenceScore:startTime:silenceStartTime:endTime:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>)
{
  v14 = a4 + *(type metadata accessor for TranscriptProtoSpeechPackage.Token(0) + 36);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  *(a4 + 24) = a5;
  *(a4 + 32) = a6;
  *(a4 + 40) = a7;
  return result;
}

uint64_t TranscriptProtoExternalAgentRequest.rawRewriteMetadataEventID.getter()
{
  v1 = (v0 + *(type metadata accessor for TranscriptProtoExternalAgentRequest(0) + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t TranscriptProtoExternalAgentRequest.rawRewriteMetadataEventID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for TranscriptProtoExternalAgentRequest(0) + 20));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t TranscriptProtoExternalAgentRequest.init(content:rawRewriteMetadataEventID:rewriteMetadataInlined:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for TranscriptProtoRequestContent(0);
  (*(*(v10 - 8) + 56))(a5, 1, 1, v10);
  v11 = type metadata accessor for TranscriptProtoExternalAgentRequest(0);
  v12 = v11[6];
  v13 = (a5 + v11[5]);
  v14 = type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata(0);
  (*(*(v14 - 8) + 56))(a5 + v12, 1, 1, v14);
  v15 = a5 + v11[7];
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  sub_20E05EC5C(a1, a5, &qword_27C867EF8, &qword_20E33AFC8);
  *v13 = a2;
  v13[1] = a3;
  return sub_20E05EC5C(a4, a5 + v12, &qword_27C868708, &qword_20E33B700);
}

uint64_t sub_20E1C11E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, void *a4@<X8>)
{
  v7 = a4 + *(a3(0) + 20);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a4 = a1;
  a4[1] = a2;
  return result;
}

uint64_t TranscriptProtoRequestPrescribedPlanConvertTool.init(query:isExplicit:partner:directInvocationClient:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v16 = a8 + *(type metadata accessor for TranscriptProtoRequestPrescribedPlanConvertTool(0) + 32);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6;
  *(a8 + 48) = a7;
  return result;
}

uint64_t sub_20E1C141C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t (*a6)(void)@<X5>, uint64_t a7@<X8>)
{
  v13 = a7 + *(a6(0) + 28);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  return result;
}

uint64_t TranscriptProtoRequestPrescribedPlanOpenTool.elementAtIndex.getter()
{
  v1 = (v0 + *(type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool(0) + 20));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}