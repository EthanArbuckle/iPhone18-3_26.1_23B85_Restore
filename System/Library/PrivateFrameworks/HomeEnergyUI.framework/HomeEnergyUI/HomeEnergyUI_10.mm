uint64_t sub_20D8DEDE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v58 = a1;
  v59 = a3;
  v53 = sub_20D972838();
  v51 = *(v53 - 8);
  v4 = *(v51 + 64);
  MEMORY[0x28223BE20](v53);
  v48 = v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_20D9727B8();
  v52 = *(v54 - 8);
  v6 = *(v52 + 64);
  MEMORY[0x28223BE20](v54);
  v49 = v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20D972AF8();
  v55 = *(v8 - 8);
  v56 = v8;
  v9 = *(v55 + 64);
  MEMORY[0x28223BE20](v8);
  v57 = v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20D9727D8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_20D972628();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v50 = v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = v47 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = v47 - v24;
  v26 = type metadata accessor for HistoricalUsageSnapshot();
  v27 = *(v26 + 52);
  v47[1] = *(v26 + 48);
  sub_20D972E48();
  sub_20D972D38();
  (*(v12 + 8))(v15, v11);
  v28 = v55;
  v29 = v56;
  sub_20D972458();
  v31 = v30;
  (*(v17 + 16))(v23, v25, v16);
  v32 = a2 + v27;
  v33 = v57;
  (*(v28 + 16))(v57, v32, v29);
  v34 = (*(v28 + 88))(v33, v29);
  if (v34 == *MEMORY[0x277D075B0])
  {
    sub_20D9730E8();
    if (v35 * 0.5 < v31)
    {
      v36 = MEMORY[0x277CC9980];
LABEL_11:
      v38 = v52;
      v39 = v49;
      v40 = v54;
      (*(v52 + 104))(v49, *v36, v54);
      v41 = v48;
      sub_20D972E68();
      v42 = v50;
      goto LABEL_12;
    }

    goto LABEL_16;
  }

  if (v34 == *MEMORY[0x277D075B8] || v34 == *MEMORY[0x277D075C8])
  {
    sub_20D973018();
    if (v43 * 0.5 < v31)
    {
      v36 = MEMORY[0x277CC9968];
      goto LABEL_11;
    }

LABEL_16:
    (*(v17 + 8))(v25, v16);
    return (*(v17 + 32))(v59, v23, v16);
  }

  if (v34 == *MEMORY[0x277D075D0])
  {
    sub_20D973058();
    if (v37 * 0.5 < v31)
    {
      v38 = v52;
      v39 = v49;
      v40 = v54;
      (*(v52 + 104))(v49, *MEMORY[0x277CC99B8], v54);
      v41 = v48;
      sub_20D972E68();
      v42 = v50;
LABEL_12:
      sub_20D9730C8();
      (*(v51 + 8))(v41, v53);
      (*(v38 + 8))(v39, v40);
      v44 = *(v17 + 8);
      v44(v23, v16);
      v44(v25, v16);
      (*(v17 + 32))(v23, v42, v16);
      return (*(v17 + 32))(v59, v23, v16);
    }

    goto LABEL_16;
  }

  if (v34 == *MEMORY[0x277D075C0])
  {
    sub_20D9730A8();
    if (v45 * 0.5 < v31)
    {
      v36 = MEMORY[0x277CC9998];
      goto LABEL_11;
    }

    goto LABEL_16;
  }

  (*(v17 + 8))(v25, v16);
  (*(v17 + 32))(v59, v23, v16);
  return (*(v28 + 8))(v33, v29);
}

uint64_t sub_20D8DF438(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839550, &qword_20D979C30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20D8DF4E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839550, &qword_20D979C30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20D8DF578()
{
  result = type metadata accessor for DynamicEnergyUsagesCalculations.IntervalEnergyUsageData(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_20D8DF620()
{
  sub_20D8DF6D4();
  if (v0 <= 0x3F)
  {
    sub_20D8DF768();
    if (v1 <= 0x3F)
    {
      sub_20D8DF7C0();
      if (v2 <= 0x3F)
      {
        sub_20D8DF824();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_20D8DF6D4()
{
  if (!qword_281124BC8)
  {
    sub_20D972628();
    sub_20D865490(&qword_281126E30, MEMORY[0x277CC9578]);
    v0 = sub_20D975418();
    if (!v1)
    {
      atomic_store(v0, &qword_281124BC8);
    }
  }
}

void sub_20D8DF768()
{
  if (!qword_281124C08)
  {
    sub_20D972C58();
    v0 = sub_20D975288();
    if (!v1)
    {
      atomic_store(v0, &qword_281124C08);
    }
  }
}

void sub_20D8DF7C0()
{
  if (!qword_281124BE8)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_281124BE8);
    }
  }
}

void sub_20D8DF824()
{
  if (!qword_281124C48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83A658, &qword_20D97BEF8);
    v0 = sub_20D975508();
    if (!v1)
    {
      atomic_store(v0, &qword_281124C48);
    }
  }
}

id sub_20D8DF88C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  if (v4)
  {
    sub_20D8DFD74();
    v5 = sub_20D974F38();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void _s12HomeEnergyUI14HEUIFAnalyticsC9sendEvent5eventyAA0dF0C_tFZ_0(uint64_t a1)
{
  if (qword_27C838460 != -1)
  {
    swift_once();
  }

  v2 = sub_20D9734F8();
  __swift_project_value_buffer(v2, qword_27C840CB0);

  v3 = sub_20D9734D8();
  v4 = sub_20D975478();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v40 = v6;
    *v5 = 136315650;
    *(v5 + 4) = sub_20D7F4DC8(0xD000000000000011, 0x800000020D989AC0, &v40);
    *(v5 + 12) = 2080;
    v7 = *(a1 + 16);
    aBlock = 0x6C7070612E6D6F63;
    v42 = 0xEF2E656D6F482E65;
    v8 = HEUIFAnalyticsEventType.rawValue.getter();
    v10 = sub_20D7E5BB0(4, v8, v9);
    v12 = v11;
    v14 = v13;
    v16 = v15;

    v17 = MEMORY[0x20F323300](v10, v12, v14, v16);
    v19 = v18;

    MEMORY[0x20F323340](v17, v19);

    v20 = sub_20D7F4DC8(aBlock, v42, &v40);

    *(v5 + 14) = v20;
    *(v5 + 22) = 2080;
    sub_20D7E3B94();
    sub_20D8DFD74();
    v21 = sub_20D974F58();
    v23 = v22;

    v24 = sub_20D7F4DC8(v21, v23, &v40);

    *(v5 + 24) = v24;
    _os_log_impl(&dword_20D7C9000, v3, v4, "%s Sending analytics event for [%s]: %s", v5, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v6, -1, -1);
    MEMORY[0x20F324260](v5, -1, -1);
  }

  v25 = *(a1 + 16);
  aBlock = 0x6C7070612E6D6F63;
  v42 = 0xEF2E656D6F482E65;
  LOBYTE(v40) = v25;
  v26 = HEUIFAnalyticsEventType.rawValue.getter();
  v28 = sub_20D7E5BB0(4, v26, v27);
  v30 = v29;
  v32 = v31;
  v34 = v33;

  v35 = MEMORY[0x20F323300](v28, v30, v32, v34);
  v37 = v36;

  MEMORY[0x20F323340](v35, v37);

  v38 = sub_20D975078();

  v45 = sub_20D8DFD58;
  v46 = a1;
  aBlock = MEMORY[0x277D85DD0];
  v42 = 1107296256;
  v43 = sub_20D8DF88C;
  v44 = &block_descriptor_2;
  v39 = _Block_copy(&aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v39);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_20D8DFD74()
{
  result = qword_281124B88;
  if (!qword_281124B88)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281124B88);
  }

  return result;
}

void sub_20D8DFDC0()
{
  v0 = sub_20D975078();
  v1 = [objc_opt_self() bundleWithIdentifier_];

  if (v1)
  {
    qword_28112ABE8 = v1;
  }

  else
  {
    __break(1u);
  }
}

void sub_20D8DFE54(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8394E0, &qword_20D978CF0);
      v7 = *(sub_20D973158() - 8);
      v8 = *(v7 + 72);
      v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      if (!v8)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v11 - v9 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_16;
      }

      v10[2] = v5;
      v10[3] = 2 * ((v11 - v9) / v8);
      if (v4 != a3)
      {
LABEL_10:
        v13 = *(sub_20D973158() - 8);
        v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
        v15 = *(v13 + 72);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

void _s12HomeEnergyUI10PeakFinderC06filterD7Entries5start3end5peaks8timeZoneSay0A15UtilityServices0mD6PeriodVG10Foundation4DateV_AolM04TimeL0VtFZ_0(uint64_t a1, uint64_t a2, unsigned int (*a3)(unint64_t, uint64_t, uint64_t), uint64_t a4)
{
  v116 = a2;
  v117 = a1;
  v6 = sub_20D972628();
  v115 = *(v6 - 8);
  v7 = *(v115 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v107 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v114 = &v107 - v11;
  v132 = sub_20D973158();
  v12 = *(v132 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v132);
  v124 = &v107 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v107 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A660, &qword_20D97BF48);
  v129 = *(v18 - 8);
  v19 = *(v129 + 64);
  MEMORY[0x28223BE20](v18);
  v123 = (&v107 - v20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A668, &unk_20D97BF50);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v25 = &v107 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v23);
  v119 = (&v107 - v27);
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v107 - v29;
  MEMORY[0x28223BE20](v28);
  v32 = &v107 - v31;
  v33 = sub_20D972488();
  v34 = *(*(v33 - 8) + 64);
  v35 = MEMORY[0x28223BE20](v33);
  v38 = &v107 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = *(a3 + 2);
  if (v131 <= 1)
  {
    goto LABEL_2;
  }

  v118 = v25;
  v107 = v10;
  v113 = v6;
  v122 = a3;
  v112 = a4;
  v39 = v35;
  v40 = v36;
  v41 = v38;
  sub_20D972FD8();
  v42 = sub_20D972478();
  v125 = v43;
  v126 = v42;
  v44 = *(v40 + 8);
  v109 = v41;
  v111 = v39;
  v110 = v40 + 8;
  v108 = v44;
  v44(v41, v39);
  v45 = 0;
  v120 = v12 + 16;
  v121 = v12;
  v46 = v129;
  v129 += 48;
  v130 = (v46 + 56);
  v127 = (v12 + 32);
  v128 = (v12 + 8);
  while (1)
  {
    v48 = v131;
    if (v45 == v131)
    {
      v49 = 1;
      v45 = v131;
    }

    else
    {
      if (v45 >= v131)
      {
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        swift_once();
        goto LABEL_43;
      }

      if (__OFADD__(v45, 1))
      {
        goto LABEL_53;
      }

      v50 = v121;
      v51 = v123;
      v52 = v122 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v45;
      v53 = *(v18 + 48);
      *v123 = v45;
      (*(v50 + 16))(v51 + v53, v52, v132);
      sub_20D7EAF18(v51, v30, &qword_27C83A660, &qword_20D97BF48);
      v49 = 0;
      ++v45;
    }

    v54 = *v130;
    (*v130)(v30, v49, 1, v18);
    sub_20D7EAF18(v30, v32, &qword_27C83A668, &unk_20D97BF50);
    a3 = *v129;
    if ((*v129)(v32, 1, v18) == 1)
    {
      break;
    }

    v55 = *v32;
    (*v127)(v17, v32 + *(v18 + 48), v132);
    if (v126 == sub_20D973148() && v125 == v56)
    {

      (*v128)(v17, v132);
    }

    else
    {
      v47 = sub_20D9757C8();

      (*v128)(v17, v132);
      if (v47)
      {
        v48 = v55;
        break;
      }
    }
  }

  v57 = v114;
  v58 = v117;
  if (v48 < 1)
  {
    v126 = v48;
    if (qword_27C838480 != -1)
    {
      swift_once();
    }

    v59 = sub_20D9734F8();
    __swift_project_value_buffer(v59, qword_27C840CE0);
    v60 = v115;
    v61 = v113;
    (*(v115 + 16))(v57, v58, v113);
    v62 = sub_20D9734D8();
    v63 = sub_20D975458();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v125 = swift_slowAlloc();
      v133[0] = v125;
      *v64 = 136315394;
      *(v64 + 4) = sub_20D7F4DC8(0xD00000000000002CLL, 0x800000020D989B00, v133);
      *(v64 + 12) = 2080;
      sub_20D7F5854();
      v65 = sub_20D9757A8();
      v67 = v66;
      (*(v115 + 8))(v57, v61);
      v68 = sub_20D7F4DC8(v65, v67, v133);

      *(v64 + 14) = v68;
      _os_log_impl(&dword_20D7C9000, v62, v63, "%s: no data to determine TOU period in effect at start time %s", v64, 0x16u);
      v69 = v125;
      swift_arrayDestroy();
      MEMORY[0x20F324260](v69, -1, -1);
      MEMORY[0x20F324260](v64, -1, -1);
    }

    else
    {

      (*(v60 + 8))(v57, v61);
    }
  }

  else
  {
    v126 = v48 - 1;
  }

  v70 = v109;
  sub_20D972FD8();
  v71 = sub_20D972478();
  v73 = v72;
  v108(v70, v111);
  v32 = 0;
  while (1)
  {
    v30 = v131;
    if (v32 == v131)
    {
      v75 = 1;
      v32 = v131;
      v76 = v118;
    }

    else
    {
      if (v32 >= v131)
      {
        goto LABEL_54;
      }

      if (__OFADD__(v32, 1))
      {
        goto LABEL_55;
      }

      v77 = v121;
      v78 = v123;
      v79 = v122 + ((*(v77 + 80) + 32) & ~*(v77 + 80)) + *(v77 + 72) * v32;
      v80 = *(v18 + 48);
      *v123 = v32;
      (*(v77 + 16))(v78 + v80, v79, v132);
      v81 = v78;
      v76 = v118;
      sub_20D7EAF18(v81, v118, &qword_27C83A660, &qword_20D97BF48);
      v75 = 0;
      ++v32;
    }

    v54(v76, v75, 1, v18);
    v82 = v119;
    sub_20D7EAF18(v76, v119, &qword_27C83A668, &unk_20D97BF50);
    if (a3(v82, 1, v18) == 1)
    {

      goto LABEL_42;
    }

    v30 = *v82;
    (*v127)(v124, v82 + *(v18 + 48), v132);
    if (sub_20D973148() == v71 && v83 == v73)
    {
      break;
    }

    v74 = sub_20D9757C8();

    (*v128)(v124, v132);
    if ((v74 & 1) == 0)
    {
      goto LABEL_33;
    }
  }

  (*v128)(v124, v132);
LABEL_33:

  v84 = v131;
  if (v30 < v131)
  {
    ++v30;
    a3 = v122;
    v85 = v126;
    v32 = 0x27C838000;
    v86 = v30 - v126;
    if (v30 < v126)
    {
      goto LABEL_47;
    }

    goto LABEL_35;
  }

LABEL_42:
  v32 = 0x27C838000uLL;
  a3 = v122;
  if (qword_27C838480 != -1)
  {
    goto LABEL_56;
  }

LABEL_43:
  v87 = sub_20D9734F8();
  __swift_project_value_buffer(v87, qword_27C840CE0);
  v88 = v115;
  v89 = v107;
  v90 = v113;
  (*(v115 + 16))(v107, v116, v113);
  v91 = sub_20D9734D8();
  v92 = sub_20D975458();
  if (os_log_type_enabled(v91, v92))
  {
    v93 = v88;
    v94 = swift_slowAlloc();
    v95 = swift_slowAlloc();
    v133[0] = v95;
    *v94 = 136315394;
    *(v94 + 4) = sub_20D7F4DC8(0xD00000000000002CLL, 0x800000020D989B00, v133);
    *(v94 + 12) = 2080;
    sub_20D7F5854();
    v96 = sub_20D9757A8();
    v97 = v89;
    v99 = v98;
    (*(v93 + 8))(v97, v90);
    v100 = sub_20D7F4DC8(v96, v99, v133);

    *(v94 + 14) = v100;
    _os_log_impl(&dword_20D7C9000, v91, v92, "%s: no data to determine when TOU period in effect at end time %s ends", v94, 0x16u);
    swift_arrayDestroy();
    v101 = v95;
    v32 = 0x27C838000;
    MEMORY[0x20F324260](v101, -1, -1);
    MEMORY[0x20F324260](v94, -1, -1);
  }

  else
  {

    (*(v88 + 8))(v89, v90);
  }

  v84 = v131;
  v85 = v126;
  v86 = v30 - v126;
  if (v30 >= v126)
  {
LABEL_35:
    if (!v85 && v30 == v84)
    {
      goto LABEL_2;
    }

    if (v85 < 0)
    {
      __break(1u);
    }

    else if (v84 >= v30)
    {
      if (v84 != v86)
      {
        sub_20D8DFE54(a3, a3 + ((*(v121 + 80) + 32) & ~*(v121 + 80)), v85, (2 * v30) | 1);
        return;
      }

LABEL_2:

      return;
    }

    __break(1u);
    return;
  }

LABEL_47:
  if (*(v32 + 1152) != -1)
  {
    swift_once();
  }

  v102 = sub_20D9734F8();
  __swift_project_value_buffer(v102, qword_27C840CE0);
  v103 = sub_20D9734D8();
  v104 = sub_20D975458();
  if (os_log_type_enabled(v103, v104))
  {
    v105 = swift_slowAlloc();
    v106 = swift_slowAlloc();
    v133[0] = v106;
    *v105 = 136315138;
    *(v105 + 4) = sub_20D7F4DC8(0xD00000000000002CLL, 0x800000020D989B00, v133);
    _os_log_impl(&dword_20D7C9000, v103, v104, "%s: firstIndex > lastIndex", v105, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v106);
    MEMORY[0x20F324260](v106, -1, -1);
    MEMORY[0x20F324260](v105, -1, -1);
  }
}

uint64_t HistoricalUsageSummaryView.init(displayDate:snapshotManager:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v48 = a2;
  v50 = a1;
  v4 = type metadata accessor for HistoricalUsageSnapshot();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v51 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20D972628();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v49 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20D9744B8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for HistoricalUsageSummaryView(0);
  v17 = v16[8];
  v52 = v16;
  if (qword_281125B78 != -1)
  {
    swift_once();
    v16 = v52;
  }

  v18 = unk_281125C10;
  v54[10] = xmmword_281125C20;
  v54[11] = xmmword_281125C30;
  v19 = xmmword_281125C30;
  v54[12] = xmmword_281125C40;
  v20 = xmmword_281125BD0;
  v21 = xmmword_281125BE0;
  v54[6] = xmmword_281125BE0;
  v54[7] = xmmword_281125BF0;
  v22 = xmmword_281125BF0;
  v23 = xmmword_281125C00;
  v54[8] = xmmword_281125C00;
  v54[9] = unk_281125C10;
  v24 = xmmword_281125B90;
  v25 = xmmword_281125BA0;
  v54[2] = xmmword_281125BA0;
  v54[3] = xmmword_281125BB0;
  v26 = xmmword_281125BB0;
  v27 = xmmword_281125BC0;
  v54[4] = xmmword_281125BC0;
  v54[5] = xmmword_281125BD0;
  v28 = xmmword_281125B80;
  v54[0] = xmmword_281125B80;
  v54[1] = xmmword_281125B90;
  v29 = (a3 + v17);
  v29[10] = xmmword_281125C20;
  v29[11] = v19;
  v29[12] = xmmword_281125C40;
  v29[6] = v21;
  v29[7] = v22;
  v29[8] = v23;
  v29[9] = v18;
  v29[2] = v25;
  v29[3] = v26;
  v29[4] = v27;
  v29[5] = v20;
  *v29 = v28;
  v29[1] = v24;
  v30 = v16[9];
  v53[26] = 0x3FF0000000000000;
  (*(v12 + 104))(v15, *MEMORY[0x277CE0A68], v11);
  sub_20D85D690(v54, v53);
  sub_20D7E6420();
  sub_20D973B68();
  v47 = *(v8 + 16);
  v31 = v50;
  v47(a3, v50, v7);
  v32 = v16;
  v33 = v16[5];
  v34 = v48;
  *(a3 + v33) = v48;
  v46 = v7;
  v35 = v32[6];
  swift_getKeyPath();
  v53[0] = v34;
  sub_20D8E4540(&qword_27C839520, type metadata accessor for HistoricalUsageSnapshotManager);

  sub_20D972858();

  v36 = OBJC_IVAR____TtC12HomeEnergyUI30HistoricalUsageSnapshotManager__summaryWeeklySnapshot;
  swift_beginAccess();
  v37 = v34 + v36;
  v38 = v35;
  sub_20D8E1E18(v37, a3 + v35, type metadata accessor for HistoricalUsageSnapshot);
  v39 = v49;
  v40 = v31;
  v41 = v31;
  v42 = v46;
  v47(v49, v40, v46);
  v43 = a3 + v38;
  v44 = v51;
  sub_20D8E1E18(v43, v51, type metadata accessor for HistoricalUsageSnapshot);
  HistoricalUsageSnapshotDerivedInfo.init(requestedDisplayDate:snapshot:)(v39, v44, a3 + v52[7]);

  return (*(v8 + 8))(v41, v42);
}

uint64_t HistoricalUsageSummaryView.init(snapshotManager:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_20D972628();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20D9725C8();
  return HistoricalUsageSummaryView.init(displayDate:snapshotManager:)(v7, a1, a2);
}

uint64_t HistoricalUsageSummaryView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v72 = a1;
  v2 = type metadata accessor for HistoricalUsageSummaryView(0);
  v3 = *(v2 - 8);
  v68 = v2;
  v69 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v70 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A670, &qword_20D97BF88);
  v6 = v5 - 8;
  v7 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v67 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A678, &qword_20D97BF90);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v67 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A680, &qword_20D97BF98);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v67 - v16;
  *v9 = sub_20D974168();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v18 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A688, &qword_20D97BFA0) + 44)];
  v71 = v1;
  sub_20D8E1724(v1, v18);
  v19 = sub_20D974328();
  sub_20D973AD8();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A690, &qword_20D97BFA8) + 36)];
  *v28 = v19;
  *(v28 + 1) = v21;
  *(v28 + 2) = v23;
  *(v28 + 3) = v25;
  *(v28 + 4) = v27;
  v28[40] = 0;
  v29 = sub_20D974338();
  sub_20D973AD8();
  v30 = &v9[*(v6 + 44)];
  *v30 = v29;
  *(v30 + 1) = v31;
  *(v30 + 2) = v32;
  *(v30 + 3) = v33;
  *(v30 + 4) = v34;
  v30[40] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838C80, &unk_20D97BFB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20D977210;
  v36 = sub_20D974348();
  *(inited + 32) = v36;
  v37 = sub_20D974368();
  *(inited + 33) = v37;
  v38 = sub_20D974358();
  sub_20D974358();
  if (sub_20D974358() != v36)
  {
    v38 = sub_20D974358();
  }

  sub_20D974358();
  if (sub_20D974358() != v37)
  {
    v38 = sub_20D974358();
  }

  sub_20D973AD8();
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;
  sub_20D7EAF18(v9, v13, &qword_27C83A670, &qword_20D97BF88);
  v47 = &v13[*(v10 + 36)];
  *v47 = v38;
  *(v47 + 1) = v40;
  *(v47 + 2) = v42;
  *(v47 + 3) = v44;
  *(v47 + 4) = v46;
  v47[40] = 0;
  v48 = sub_20D974C48();
  v50 = v49;
  v51 = &v17[*(v14 + 36)];
  v52 = *(v68 + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A40, &unk_20D976D50);
  v53 = v71;
  sub_20D973B78();
  v54 = v73 * 24.0;
  v55 = *(sub_20D973DE8() + 20);
  v56 = *MEMORY[0x277CE0118];
  v57 = sub_20D974118();
  (*(*(v57 - 8) + 104))(v51 + v55, v56, v57);
  *v51 = v54;
  v51[1] = v54;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FD0, &unk_20D97BFC0);
  v59 = v51 + *(v58 + 52);
  sub_20D974C08();
  *(v51 + *(v58 + 56)) = 256;
  v60 = (v51 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FD8, &qword_20D977990) + 36));
  *v60 = v48;
  v60[1] = v50;
  sub_20D7EAF18(v13, v17, &qword_27C83A678, &qword_20D97BF90);
  v61 = v70;
  sub_20D8E1E18(v53, v70, type metadata accessor for HistoricalUsageSummaryView);
  v62 = (*(v69 + 80) + 16) & ~*(v69 + 80);
  v63 = swift_allocObject();
  sub_20D8E1E80(v61, v63 + v62);
  v64 = v72;
  sub_20D7EAF18(v17, v72, &qword_27C83A680, &qword_20D97BF98);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A6A0, &qword_20D97BFD0);
  v66 = (v64 + *(result + 36));
  *v66 = sub_20D8E1EE4;
  v66[1] = v63;
  v66[2] = 0;
  v66[3] = 0;
  return result;
}

uint64_t sub_20D8E1724@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v79 = a2;
  v3 = type metadata accessor for HistoricalUsageSnapshotDerivedInfo(0);
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v75 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for HistoricalUsageSummaryChart();
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v78 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v77 = &v66 - v11;
  v71 = sub_20D972628();
  v67 = *(v71 - 8);
  v12 = v67;
  v13 = *(v67 + 64);
  MEMORY[0x28223BE20](v71);
  v15 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for HistoricalUsageSnapshot();
  v17 = v16 - 8;
  v18 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A7C8, &qword_20D97C228);
  v22 = *(v21 - 8);
  v74 = v21 - 8;
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v21 - 8);
  v76 = &v66 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = &v66 - v26;
  v28 = type metadata accessor for HistoricalUsageSummaryView(0);
  v29 = *(v28 + 24);
  v30 = v28;
  v68 = a1;
  v69 = v28;
  v73 = v29;
  v70 = type metadata accessor for HistoricalUsageSnapshot;
  sub_20D8E1E18(a1 + v29, v20, type metadata accessor for HistoricalUsageSnapshot);
  v72 = a1 + *(v30 + 28);
  v31 = *(v12 + 16);
  v32 = v71;
  v31(v15, v72 + *(v4 + 60), v71);
  v33 = v27;
  sub_20D8E1E18(v20, v27, type metadata accessor for HistoricalUsageSnapshot);
  v34 = type metadata accessor for HistoricalUsageSummaryView.UsageSummaryView(0);
  v31(&v33[*(v34 + 20)], v15, v32);
  v35 = v20;
  v36 = &v20[*(v17 + 56)];
  LOBYTE(v36) = sub_20D972D68();
  (*(v67 + 8))(v15, v32);
  sub_20D8E4588(v20, type metadata accessor for HistoricalUsageSnapshot);
  v37 = v33;
  v33[*(v34 + 24)] = v36 & 1;
  LOBYTE(v36) = sub_20D974338();
  v38 = v68;
  v39 = v68 + *(v69 + 32);
  v40 = *(v39 + 88);
  sub_20D973AD8();
  v41 = v37 + *(v74 + 44);
  *v41 = v36;
  *(v41 + 8) = v42;
  *(v41 + 16) = v43;
  *(v41 + 24) = v44;
  *(v41 + 32) = v45;
  *(v41 + 40) = 0;
  v46 = v35;
  sub_20D8E1E18(v38 + v73, v35, v70);
  v47 = v75;
  sub_20D8E1E18(v72, v75, type metadata accessor for HistoricalUsageSnapshotDerivedInfo);
  v48 = *(v39 + 144);
  v49 = *(v39 + 176);
  v91 = *(v39 + 160);
  v92 = v49;
  v50 = *(v39 + 176);
  v93 = *(v39 + 192);
  v51 = *(v39 + 80);
  v52 = *(v39 + 112);
  v87 = *(v39 + 96);
  v88 = v52;
  v53 = *(v39 + 112);
  v54 = *(v39 + 144);
  v89 = *(v39 + 128);
  v90 = v54;
  v55 = *(v39 + 16);
  v56 = *(v39 + 48);
  v83 = *(v39 + 32);
  v84 = v56;
  v57 = *(v39 + 48);
  v58 = *(v39 + 80);
  v85 = *(v39 + 64);
  v86 = v58;
  v59 = *(v39 + 16);
  v82[0] = *v39;
  v82[1] = v59;
  v81[10] = v91;
  v81[11] = v50;
  v81[12] = *(v39 + 192);
  v81[6] = v87;
  v81[7] = v53;
  v81[8] = v89;
  v81[9] = v48;
  v81[2] = v83;
  v81[3] = v57;
  v81[4] = v85;
  v81[5] = v51;
  v81[0] = v82[0];
  v81[1] = v55;
  sub_20D85D690(v82, &v80);
  v60 = v77;
  sub_20D92046C(v46, v47, v81, v77);
  v61 = v76;
  sub_20D7EB7E8(v37, v76, &qword_27C83A7C8, &qword_20D97C228);
  v62 = v78;
  sub_20D8E1E18(v60, v78, type metadata accessor for HistoricalUsageSummaryChart);
  v63 = v79;
  sub_20D7EB7E8(v61, v79, &qword_27C83A7C8, &qword_20D97C228);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A7D0, &qword_20D97C230);
  sub_20D8E1E18(v62, v63 + *(v64 + 48), type metadata accessor for HistoricalUsageSummaryChart);
  sub_20D8E4588(v60, type metadata accessor for HistoricalUsageSummaryChart);
  sub_20D7E3944(v37, &qword_27C83A7C8, &qword_20D97C228);
  sub_20D8E4588(v62, type metadata accessor for HistoricalUsageSummaryChart);
  return sub_20D7E3944(v61, &qword_27C83A7C8, &qword_20D97C228);
}

uint64_t sub_20D8E1C6C(uint64_t a1)
{
  v1 = a1 + *(type metadata accessor for HistoricalUsageSummaryView(0) + 24);
  LODWORD(v2) = *(v1 + *(type metadata accessor for HistoricalUsageSnapshot() + 64));
  v3 = v2 == 6;
  __dst[424] = 1;
  if (v2 == 6)
  {
    v2 = 0;
  }

  else
  {
    v2 = v2;
  }

  __dst[416] = 1;
  __dst[408] = 1;
  __dst[400] = 1;
  __dst[392] = 1;
  __dst[384] = 1;
  __dst[376] = 1;
  __dst[368] = 1;
  __dst[360] = 1;
  __dst[352] = 1;
  __dst[344] = 1;
  __dst[336] = 1;
  __dst[328] = 1;
  __dst[320] = 1;
  __dst[312] = v3;
  __dst[304] = 1;
  v6[0] = 0;
  LOWORD(v6[1]) = 513;
  v6[2] = 0;
  LOBYTE(v6[3]) = 1;
  v6[4] = 0;
  LOBYTE(v6[5]) = 1;
  memset(&v6[6], 0, 24);
  LOBYTE(v6[9]) = 1;
  memset(&v6[10], 0, 24);
  LOBYTE(v6[13]) = 1;
  v6[14] = 0;
  LOWORD(v6[15]) = 513;
  v6[16] = 0;
  LOWORD(v6[17]) = 1;
  memset(&v6[18], 0, 24);
  LOBYTE(v6[21]) = 1;
  v6[22] = 0;
  LOBYTE(v6[23]) = 1;
  v6[24] = 0;
  LOBYTE(v6[25]) = 1;
  v6[26] = 0;
  LOWORD(v6[27]) = 513;
  v6[28] = 0;
  LOWORD(v6[29]) = 513;
  v6[30] = 0;
  LOBYTE(v6[31]) = 1;
  v6[32] = 0;
  LOBYTE(v6[33]) = 1;
  v6[34] = v2;
  LOBYTE(v6[35]) = v3;
  v6[36] = 0;
  LOBYTE(v6[37]) = 1;
  nullsub_5(v6);
  type metadata accessor for HEUIFAnalyticsEvent();
  v4 = swift_allocObject();
  sub_20D7E3AF0(__src);
  *(v4 + 16) = 31;
  memcpy(__dst, __src, 0x129uLL);
  memcpy((v4 + 24), v6, 0x129uLL);
  sub_20D7E3944(__dst, &qword_27C838A20, &qword_20D9768E0);
  _s12HomeEnergyUI14HEUIFAnalyticsC9sendEvent5eventyAA0dF0C_tFZ_0(v4);
}

uint64_t sub_20D8E1E18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20D8E1E80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HistoricalUsageSummaryView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20D8E1EE4()
{
  v1 = *(type metadata accessor for HistoricalUsageSummaryView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_20D8E1C6C(v2);
}

uint64_t sub_20D8E1F60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v100 = a2;
  v3 = sub_20D971FC8();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v94 = &v85 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A708, &qword_20D97C0D0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v99 = &v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v97 = &v85 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A710, &qword_20D97C0D8);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v98 = &v85 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v103 = (&v85 - v15);
  v16 = sub_20D974458();
  v17 = *(v16 - 8);
  v18 = v17[8];
  MEMORY[0x28223BE20](v16);
  v101 = &v85 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_20D9726E8();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = sub_20D975058();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A718, &qword_20D97C0E0);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24 - 8);
  v96 = &v85 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v102 = &v85 - v28;
  v93 = type metadata accessor for HistoricalUsageSummaryView.UsageSummaryView(0);
  v29 = *(v93 + 24);
  v95 = a1;
  if (*(a1 + v29) == 1)
  {
    sub_20D974FE8();
    if (qword_281126E98 != -1)
    {
      swift_once();
    }

    v30 = qword_28112ABE8;
    sub_20D9726B8();
    v31 = sub_20D975108();
  }

  else
  {
    sub_20D974FE8();
    if (qword_281126E98 != -1)
    {
      swift_once();
    }

    v33 = qword_28112ABE8;
    sub_20D9726B8();
    v31 = sub_20D9750F8();
  }

  *&v116 = v31;
  *(&v116 + 1) = v32;
  sub_20D7E1EF8();
  v34 = sub_20D9745C8();
  v36 = v35;
  v38 = v37;
  sub_20D974388();
  v89 = *MEMORY[0x277CE0A10];
  v39 = v17[13];
  v90 = v17 + 13;
  v91 = v39;
  v40 = v101;
  v39(v101);
  sub_20D974478();

  v41 = v17[1];
  v87 = v17 + 1;
  v88 = v41;
  v41(v40, v16);
  v42 = sub_20D974558();
  v86 = v16;
  v43 = v42;
  v45 = v44;
  v47 = v46;

  sub_20D7EADC0(v34, v36, v38 & 1);

  v92 = objc_opt_self();
  v48 = [v92 labelColor];
  sub_20D974888();
  v49 = sub_20D974508();
  v51 = v50;
  LOBYTE(v34) = v52;
  v54 = v53;

  sub_20D7EADC0(v43, v45, v47 & 1);

  sub_20D974C58();
  sub_20D973E08();
  v130 = v34 & 1;
  *&v116 = v49;
  *(&v116 + 1) = v51;
  LOBYTE(v117) = v34 & 1;
  *(&v117 + 1) = v54;
  LOWORD(v125) = 257;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A720, &qword_20D97C0E8);
  sub_20D8E3F4C();
  sub_20D9747D8();
  v128[6] = v122;
  v128[7] = v123;
  v128[8] = v124;
  v129 = v125;
  v128[2] = v118;
  v128[3] = v119;
  v128[4] = v120;
  v128[5] = v121;
  v128[0] = v116;
  v128[1] = v117;
  sub_20D7E3944(v128, &qword_27C83A720, &qword_20D97C0E8);
  v55 = sub_20D974088();
  v56 = v103;
  *v103 = v55;
  v56[1] = 0x4010000000000000;
  *(v56 + 16) = 0;
  v57 = v56 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A740, &qword_20D97C0F8) + 44);
  v58 = v95;
  sub_20D8E2A34(v95, v57);
  HistoricalUsageSnapshot.summaryDailyUsageOrSurplusTrend(_:)(v58 + *(v93 + 20), v94);
  v59 = sub_20D9745B8();
  v61 = v60;
  LOBYTE(v34) = v62;
  sub_20D974388();
  v63 = v101;
  v64 = v86;
  v91(v101, v89, v86);
  sub_20D974478();

  v88(v63, v64);
  v65 = sub_20D974558();
  v67 = v66;
  LOBYTE(v64) = v68;
  v101 = v69;

  sub_20D7EADC0(v59, v61, v34 & 1);

  KeyPath = swift_getKeyPath();
  v71 = swift_getKeyPath();
  LOBYTE(v116) = v64 & 1;
  LOBYTE(v104) = 0;
  v72 = [v92 secondaryLabelColor];
  v73 = sub_20D974888();
  v74 = swift_getKeyPath();
  sub_20D974C58();
  sub_20D973E08();
  *&v104 = v65;
  *(&v104 + 1) = v67;
  LOBYTE(v105) = v64 & 1;
  *(&v105 + 1) = v101;
  *&v106 = KeyPath;
  *(&v106 + 1) = 2;
  LOBYTE(v107) = 0;
  *(&v107 + 1) = v71;
  *&v108 = 0x3FE8000000000000;
  *(&v108 + 1) = v74;
  *&v109 = v73;
  WORD4(v115[1]) = 256;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A748, &qword_20D97C190);
  sub_20D8E4200();
  v75 = v97;
  sub_20D9747D8();
  v125 = v113;
  v126 = v114;
  v127[0] = v115[0];
  *(v127 + 10) = *(v115 + 10);
  v122 = v110;
  v123 = v111;
  v124 = v112;
  v118 = v106;
  v119 = v107;
  v120 = v108;
  v121 = v109;
  v116 = v104;
  v117 = v105;
  sub_20D7E3944(&v116, &qword_27C83A748, &qword_20D97C190);
  v76 = v102;
  v77 = v96;
  sub_20D7EB7E8(v102, v96, &qword_27C83A718, &qword_20D97C0E0);
  v78 = v103;
  v79 = v98;
  sub_20D7EB7E8(v103, v98, &qword_27C83A710, &qword_20D97C0D8);
  v80 = v75;
  v81 = v99;
  sub_20D7EB7E8(v75, v99, &qword_27C83A708, &qword_20D97C0D0);
  v82 = v100;
  sub_20D7EB7E8(v77, v100, &qword_27C83A718, &qword_20D97C0E0);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A7A8, &qword_20D97C1D0);
  sub_20D7EB7E8(v79, v82 + *(v83 + 48), &qword_27C83A710, &qword_20D97C0D8);
  sub_20D7EB7E8(v81, v82 + *(v83 + 64), &qword_27C83A708, &qword_20D97C0D0);
  sub_20D7E3944(v80, &qword_27C83A708, &qword_20D97C0D0);
  sub_20D7E3944(v78, &qword_27C83A710, &qword_20D97C0D8);
  sub_20D7E3944(v76, &qword_27C83A718, &qword_20D97C0E0);
  sub_20D7E3944(v81, &qword_27C83A708, &qword_20D97C0D0);
  sub_20D7E3944(v79, &qword_27C83A710, &qword_20D97C0D8);
  return sub_20D7E3944(v77, &qword_27C83A718, &qword_20D97C0E0);
}

uint64_t sub_20D8E2A34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v129 = a2;
  v121 = sub_20D971F38();
  v3 = *(*(v121 - 8) + 64);
  MEMORY[0x28223BE20](v121);
  v5 = v110 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839268, &qword_20D978090);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v116 = v110 - v8;
  v9 = sub_20D975058();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v120 = v110 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_20D971F48();
  v112 = *(v114 - 8);
  v12 = *(v112 + 64);
  MEMORY[0x28223BE20](v114);
  v111 = v110 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_20D975038();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v110[1] = v110 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838C08, &qword_20D977450);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v125 = v110 - v19;
  v20 = sub_20D974458();
  v123 = *(v20 - 8);
  v124 = v20;
  v21 = *(v123 + 64);
  MEMORY[0x28223BE20](v20);
  v122 = v110 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_20D972AF8();
  v133 = *(v23 - 8);
  v24 = *(v133 + 64);
  v25 = MEMORY[0x28223BE20](v23);
  v131 = v110 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v132 = v110 - v27;
  v115 = sub_20D971FC8();
  v113 = *(v115 - 8);
  v28 = *(v113 + 64);
  v29 = MEMORY[0x28223BE20](v115);
  v31 = v110 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v119 = v110 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A718, &qword_20D97C0E0);
  v34 = *(*(v33 - 8) + 64);
  v35 = MEMORY[0x28223BE20](v33 - 8);
  v128 = v110 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v127 = v110 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A7B0, &qword_20D97C1D8);
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v38);
  v42 = (v110 - v41);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A7B8, &qword_20D97C1E0);
  v44 = *(*(v43 - 8) + 64);
  v45 = MEMORY[0x28223BE20](v43 - 8);
  v126 = v110 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45);
  v48 = v110 - v47;
  v49 = type metadata accessor for HistoricalUsageSummaryView.UsageSummaryView(0);
  v50 = *(v49 + 24);
  v117 = v5;
  v118 = a1;
  LODWORD(v50) = *(a1 + v50);
  v130 = v48;
  if (v50 == 1)
  {
    v110[0] = v31;
    if (qword_27C838770 != -1)
    {
      swift_once();
    }

    v51 = qword_27C840E88;
    v52 = (v42 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838BB0, &qword_20D977D40) + 36));
    v53 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838AE0, &qword_20D976F40) + 28);
    v54 = *MEMORY[0x277CE1050];
    v55 = sub_20D9749F8();
    (*(*(v55 - 8) + 104))(v52 + v53, v54, v55);
    *v52 = swift_getKeyPath();
    *v42 = v51;

    *(v42 + *(v38 + 36)) = sub_20D974908();
    v56 = v130;
    sub_20D7EAF18(v42, v130, &qword_27C83A7B0, &qword_20D97C1D8);
    (*(v39 + 56))(v56, 0, 1, v38);
    v31 = v110[0];
  }

  else
  {
    (*(v39 + 56))(v48, 1, 1, v38);
  }

  v57 = *(v49 + 20);
  v58 = *(type metadata accessor for HistoricalUsageSnapshot() + 48);
  sub_20D972DB8();
  v60 = v59;
  sub_20D972E58();
  (*(v133 + 104))(v131, *MEMORY[0x277D075B0], v23);
  sub_20D8E4540(&qword_2811250F0, MEMORY[0x277D075D8]);
  sub_20D975208();
  sub_20D975208();
  if (v144[0] == v134)
  {
    v61 = *(v133 + 8);
    v61(v131, v23);
    v61(v132, v23);

LABEL_9:
    sub_20D88D380(0, v119, v60, COERCE__INT64(1.0));
    goto LABEL_13;
  }

  v62 = v31;
  v63 = sub_20D9757C8();
  v64 = *(v133 + 8);
  v64(v131, v23);
  v64(v132, v23);

  if (v63)
  {
    goto LABEL_9;
  }

  v65 = v62;
  sub_20D88D380(0, v62, v60, COERCE__INT64(1.0));
  sub_20D975028();
  sub_20D975018();
  *&v144[0] = MEMORY[0x277D84F90];
  sub_20D8E4540(&qword_281126E58, MEMORY[0x277CC8B88]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839270, &qword_20D978098);
  sub_20D7EBC4C(&qword_281124C18, &qword_27C839270, &qword_20D978098);
  v66 = v111;
  v67 = v114;
  sub_20D9755D8();
  sub_20D974FF8();
  (*(v112 + 8))(v66, v67);
  sub_20D975018();
  sub_20D975048();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v68 = qword_28112ABE8;
  v69 = sub_20D9726E8();
  (*(*(v69 - 8) + 56))(v116, 1, 1, v69);
  *&v144[0] = MEMORY[0x277D84F90];
  sub_20D8E4540(&qword_281126E60, MEMORY[0x277CC8B58]);
  v70 = v68;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839278, &unk_20D9780A0);
  sub_20D7EBC4C(&qword_281124C20, &qword_27C839278, &unk_20D9780A0);
  sub_20D9755D8();
  sub_20D971FB8();
  (*(v113 + 8))(v65, v115);
LABEL_13:
  v71 = sub_20D9745B8();
  v73 = v72;
  v75 = v74;
  v76 = [objc_opt_self() labelColor];
  *&v144[0] = sub_20D974888();
  v77 = sub_20D974518();
  v79 = v78;
  v81 = v80;
  sub_20D7EADC0(v71, v73, v75 & 1);

  sub_20D974438();
  v83 = v122;
  v82 = v123;
  v84 = v124;
  (*(v123 + 104))(v122, *MEMORY[0x277CE0A10], v124);
  sub_20D974478();

  (*(v82 + 8))(v83, v84);
  v85 = sub_20D974558();
  v87 = v86;
  LOBYTE(v83) = v88;

  sub_20D7EADC0(v77, v79, v81 & 1);

  v89 = *MEMORY[0x277CE09A0];
  v90 = sub_20D9743C8();
  v91 = *(v90 - 8);
  v92 = v125;
  (*(v91 + 104))(v125, v89, v90);
  (*(v91 + 56))(v92, 0, 1, v90);
  v93 = sub_20D9744E8();
  v95 = v94;
  LOBYTE(v91) = v96;
  sub_20D7EADC0(v85, v87, v83 & 1);

  sub_20D7E3944(v92, &qword_27C838C08, &qword_20D977450);
  sub_20D9743F8();
  v97 = sub_20D9744F8();
  v99 = v98;
  LOBYTE(v87) = v100;
  v102 = v101;
  sub_20D7EADC0(v93, v95, v91 & 1);

  sub_20D974C58();
  sub_20D973E08();
  v146 = v87 & 1;
  *&v134 = v97;
  *(&v134 + 1) = v99;
  LOBYTE(v135) = v87 & 1;
  *(&v135 + 1) = v102;
  v143 = 257;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A720, &qword_20D97C0E8);
  sub_20D8E3F4C();
  v103 = v127;
  sub_20D9747D8();
  v144[6] = v140;
  v144[7] = v141;
  v144[8] = v142;
  v145 = v143;
  v144[2] = v136;
  v144[3] = v137;
  v144[4] = v138;
  v144[5] = v139;
  v144[0] = v134;
  v144[1] = v135;
  sub_20D7E3944(v144, &qword_27C83A720, &qword_20D97C0E8);
  v104 = v130;
  v105 = v126;
  sub_20D7EB7E8(v130, v126, &qword_27C83A7B8, &qword_20D97C1E0);
  v106 = v128;
  sub_20D7EB7E8(v103, v128, &qword_27C83A718, &qword_20D97C0E0);
  v107 = v129;
  sub_20D7EB7E8(v105, v129, &qword_27C83A7B8, &qword_20D97C1E0);
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A7C0, &qword_20D97C1E8);
  sub_20D7EB7E8(v106, v107 + *(v108 + 48), &qword_27C83A718, &qword_20D97C0E0);
  sub_20D7E3944(v103, &qword_27C83A718, &qword_20D97C0E0);
  sub_20D7E3944(v104, &qword_27C83A7B8, &qword_20D97C1E0);
  sub_20D7E3944(v106, &qword_27C83A718, &qword_20D97C0E0);
  return sub_20D7E3944(v105, &qword_27C83A7B8, &qword_20D97C1E0);
}

uint64_t sub_20D8E39F4@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_20D974168();
  *(a1 + 8) = 0x3FF0000000000000;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A700, &qword_20D97C0C8);
  return sub_20D8E1F60(v1, a1 + *(v3 + 44));
}

void sub_20D8E3A74()
{
  sub_20D972628();
  if (v0 <= 0x3F)
  {
    type metadata accessor for HistoricalUsageSnapshotManager();
    if (v1 <= 0x3F)
    {
      type metadata accessor for HistoricalUsageSnapshot();
      if (v2 <= 0x3F)
      {
        type metadata accessor for HistoricalUsageSnapshotDerivedInfo(319);
        if (v3 <= 0x3F)
        {
          sub_20D7E63C4();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_20D8E3B48()
{
  result = qword_27C83A6B8;
  if (!qword_27C83A6B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83A6A0, &qword_20D97BFD0);
    sub_20D8E3BD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83A6B8);
  }

  return result;
}

unint64_t sub_20D8E3BD4()
{
  result = qword_27C83A6C0;
  if (!qword_27C83A6C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83A680, &qword_20D97BF98);
    sub_20D8E3C8C();
    sub_20D7EBC4C(&qword_281124E40, &qword_27C838FD8, &qword_20D977990);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83A6C0);
  }

  return result;
}

unint64_t sub_20D8E3C8C()
{
  result = qword_27C83A6C8;
  if (!qword_27C83A6C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83A678, &qword_20D97BF90);
    sub_20D8E3D18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83A6C8);
  }

  return result;
}

unint64_t sub_20D8E3D18()
{
  result = qword_27C83A6D0;
  if (!qword_27C83A6D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83A670, &qword_20D97BF88);
    sub_20D8E3DA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83A6D0);
  }

  return result;
}

unint64_t sub_20D8E3DA4()
{
  result = qword_27C83A6D8;
  if (!qword_27C83A6D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83A690, &qword_20D97BFA8);
    sub_20D7EBC4C(&qword_27C83A6E0, &qword_27C83A6E8, &unk_20D97C050);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83A6D8);
  }

  return result;
}

uint64_t sub_20D8E3EA4()
{
  result = type metadata accessor for HistoricalUsageSnapshot();
  if (v1 <= 0x3F)
  {
    result = sub_20D972628();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_20D8E3F4C()
{
  result = qword_27C83A728;
  if (!qword_27C83A728)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83A720, &qword_20D97C0E8);
    sub_20D8E3FD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83A728);
  }

  return result;
}

unint64_t sub_20D8E3FD8()
{
  result = qword_27C83A730;
  if (!qword_27C83A730)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83A738, &qword_20D97C0F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83A730);
  }

  return result;
}

uint64_t sub_20D8E4080(uint64_t a1)
{
  v2 = sub_20D9749F8();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_20D973E28();
}

uint64_t sub_20D8E4148@<X0>(uint64_t a1@<X8>)
{
  result = sub_20D974018();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_20D8E417C(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_20D974028();
}

uint64_t sub_20D8E41AC@<X0>(void *a1@<X8>)
{
  result = sub_20D973ED8();
  *a1 = v3;
  return result;
}

unint64_t sub_20D8E4200()
{
  result = qword_27C83A750;
  if (!qword_27C83A750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83A748, &qword_20D97C190);
    sub_20D8E428C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83A750);
  }

  return result;
}

unint64_t sub_20D8E428C()
{
  result = qword_27C83A758;
  if (!qword_27C83A758)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83A760, &qword_20D97C198);
    sub_20D8E4318();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83A758);
  }

  return result;
}

unint64_t sub_20D8E4318()
{
  result = qword_27C83A768;
  if (!qword_27C83A768)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83A770, &qword_20D97C1A0);
    sub_20D8E43D0();
    sub_20D7EBC4C(&qword_281126F48, &qword_27C838B68, &unk_20D9771A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83A768);
  }

  return result;
}

unint64_t sub_20D8E43D0()
{
  result = qword_27C83A778;
  if (!qword_27C83A778)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83A780, &qword_20D97C1A8);
    sub_20D8E4488();
    sub_20D7EBC4C(&qword_281124DC8, &qword_27C83A7A0, &unk_20D97C1C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83A778);
  }

  return result;
}

unint64_t sub_20D8E4488()
{
  result = qword_27C83A788;
  if (!qword_27C83A788)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83A790, &unk_20D97C1B0);
    sub_20D7EBC4C(&qword_281124DA8, &qword_27C83A798, &unk_20D980730);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83A788);
  }

  return result;
}

uint64_t sub_20D8E4540(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20D8E4588(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_20D8E45FC()
{
  result = qword_27C83A7E8;
  if (!qword_27C83A7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83A7E8);
  }

  return result;
}

uint64_t sub_20D8E4650(uint64_t a1, char a2, uint64_t a3, int a4, double a5)
{
  v69 = a4;
  v68[1] = a3;
  v74 = sub_20D973C88();
  v8 = *(v74 - 8);
  v9 = *(*&v8 + 64);
  MEMORY[0x28223BE20](v74);
  v73 = v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v11 = 10.0;
  }

  else
  {
    v11 = *&a1;
  }

  v12 = sub_20D973CE8();
  v13 = sub_20D8E5248();
  v14 = sub_20D9753C8();
  v15 = MEMORY[0x277D84F90];
  if (v14)
  {
    v16 = v14;
    v77 = MEMORY[0x277D84F90];
    sub_20D95DA7C(0, v14 & ~(v14 >> 63), 0);
    v15 = v77;
    result = sub_20D9753B8();
    if (v16 < 0)
    {
      __break(1u);
      goto LABEL_48;
    }

    v71 = v8;
    *&v72 = *&v8 + 16;
    v18 = (*&v8 + 8);
    do
    {
      v19 = sub_20D9753F8();
      v20 = v13;
      v22 = v73;
      v21 = v74;
      (**&v72)(v73);
      v19(v76, 0);
      sub_20D973DD8();
      v76[0] = v23 & 1;
      v75 = v24 & 1;
      sub_20D973C68();
      v26 = v25;
      v28 = v27;
      (*v18)(v22, v21);
      v77 = v15;
      v30 = *(v15 + 16);
      v29 = *(v15 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_20D95DA7C((v29 > 1), v30 + 1, 1);
        v15 = v77;
      }

      *(v15 + 16) = v30 + 1;
      v31 = v15 + 16 * v30;
      *(v31 + 32) = v26;
      *(v31 + 40) = v28;
      sub_20D9753E8();
      --v16;
      v13 = v20;
    }

    while (v16);
    v8 = v71;
  }

  v32 = *(v15 + 16);
  if (v32)
  {
    v33 = (v15 + 32);
    v34 = 0.0;
    do
    {
      v35 = *v33;
      v33 += 2;
      v36 = v35;
      if (v34 <= v35)
      {
        v34 = v36;
      }

      --v32;
    }

    while (v32);
  }

  else
  {
    v34 = 0.0;
  }

  v37 = (v11 - a5) * 0.5;
  v38 = v11;
  if (v34 <= v37)
  {
    v39 = (v11 - a5) * 0.5;
  }

  else
  {
    v39 = 0.0;
  }

  if (v34 <= v37)
  {
    v38 = (v11 - a5) * 0.5;
  }

  v71 = v38;
  v72 = v39;
  v40 = sub_20D9753C8();
  v41 = MEMORY[0x277D84F90];
  if (!v40)
  {
LABEL_29:
    v56 = *(v41 + 16);
    if (v34 <= v37)
    {
      if (v56)
      {
        v59 = 0.0;
        v60 = 40;
        do
        {
          if (v59 <= *(v41 + v60))
          {
            v59 = *(v41 + v60);
          }

          v60 += 16;
          --v56;
        }

        while (v56);
      }
    }

    if (v56)
    {
      if (v56 == 1)
      {
        v57 = 0;
        v58 = 0.0;
      }

      else
      {
        v57 = v56 & 0x7FFFFFFFFFFFFFFELL;
        v61 = (v41 + 56);
        v58 = 0.0;
        v62 = v56 & 0x7FFFFFFFFFFFFFFELL;
        do
        {
          v63 = *(v61 - 2);
          v64 = *v61;
          v61 += 4;
          v58 = v58 + v63 + v64;
          v62 -= 2;
        }

        while (v62);
        if (v56 == v57)
        {
        }
      }

      v65 = v56 - v57;
      v66 = (v41 + 16 * v57 + 40);
      do
      {
        v67 = *v66;
        v66 += 2;
        v58 = v58 + v67;
        --v65;
      }

      while (v65);
    }
  }

  v42 = v40;
  v77 = MEMORY[0x277D84F90];
  sub_20D95DA7C(0, v40 & ~(v40 >> 63), 0);
  v41 = v77;
  result = sub_20D9753B8();
  if ((v42 & 0x8000000000000000) == 0)
  {
    v70 = (*&v8 + 16);
    v43 = (*&v8 + 8);
    do
    {
      v44 = sub_20D9753F8();
      v45 = v73;
      v46 = v13;
      v47 = v12;
      v48 = v74;
      (*v70)(v73);
      v44(v76, 0);
      v76[0] = 0;
      v75 = v34 > v37;
      sub_20D973C68();
      v50 = v49;
      v52 = v51;
      (*v43)(v45, v48);
      v77 = v41;
      v54 = *(v41 + 16);
      v53 = *(v41 + 24);
      if (v54 >= v53 >> 1)
      {
        sub_20D95DA7C((v53 > 1), v54 + 1, 1);
        v41 = v77;
      }

      *(v41 + 16) = v54 + 1;
      v55 = v41 + 16 * v54;
      *(v55 + 32) = v50;
      *(v55 + 40) = v52;
      sub_20D9753E8();
      --v42;
      v12 = v47;
      v13 = v46;
    }

    while (v42);
    goto LABEL_29;
  }

LABEL_48:
  __break(1u);
  return result;
}

uint64_t sub_20D8E4B64(uint64_t a1, int a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, double a7)
{
  v67 = *&a1;
  v13 = sub_20D973C88();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_20D973CE8();
  sub_20D8E5248();
  v19 = sub_20D9753C8();
  v20 = MEMORY[0x277D84F90];
  v66 = v14;
  if (v19)
  {
    v21 = v19;
    v72 = MEMORY[0x277D84F90];
    sub_20D95DA7C(0, v19 & ~(v19 >> 63), 0);
    v20 = v72;
    result = sub_20D9753B8();
    if (v21 < 0)
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v65 = a2;
    v23 = a7;
    *&v68 = v14 + 8;
    *&v69 = v14 + 16;
    do
    {
      v24 = sub_20D9753F8();
      (**&v69)(v17);
      v24(v71, 0);
      LOBYTE(v71[0]) = 0;
      v70 = 0;
      sub_20D973C68();
      v26 = v25;
      v28 = v27;
      v29 = v13;
      (**&v68)(v17, v13);
      v72 = v20;
      v30 = v18;
      v32 = *(v20 + 16);
      v31 = *(v20 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_20D95DA7C((v31 > 1), v32 + 1, 1);
        v20 = v72;
      }

      *(v20 + 16) = v32 + 1;
      v33 = v20 + 16 * v32;
      *(v33 + 32) = v26;
      *(v33 + 40) = v28;
      sub_20D9753E8();
      --v21;
      v18 = v30;
      v13 = v29;
    }

    while (v21);
    v34 = a3;
    v35 = a4;
    a7 = v23;
    LOBYTE(a2) = v65;
  }

  else
  {
    v34 = a3;
    v35 = a4;
  }

  v36 = a6;
  v37 = *(v20 + 16);
  if (v37)
  {
    v38 = a5;
    v39 = (v20 + 32);
    v40 = 0.0;
    do
    {
      v41 = *v39;
      v39 += 2;
      v42 = v41;
      if (v40 <= v41)
      {
        v40 = v42;
      }

      --v37;
    }

    while (v37);
  }

  else
  {
    v38 = a5;
    v40 = 0.0;
  }

  v43 = v67;
  if (a2)
  {
    v43 = 10.0;
  }

  v68 = (v43 - a7) * 0.5;
  v44 = v34;
  v73.origin.x = v34;
  v73.origin.y = v35;
  v73.size.width = v38;
  v73.size.height = v36;
  MinX = CGRectGetMinX(v73);
  v74.origin.x = v34;
  v74.origin.y = v35;
  v74.size.width = v38;
  v74.size.height = v36;
  MinY = CGRectGetMinY(v74);
  v75.origin.x = v44;
  v75.origin.y = v35;
  v75.size.width = v38;
  v75.size.height = v36;
  v47 = (CGRectGetWidth(v75) - a7) * 0.5;
  v76.origin.x = v44;
  v76.origin.y = v35;
  v76.size.width = v38;
  v48 = v68;
  v49 = v47;
  v76.size.height = v36;
  Width = CGRectGetWidth(v76);
  if (v40 > v48)
  {
    v51 = Width;
  }

  else
  {
    v51 = v49;
  }

  sub_20D9753B8();
  result = sub_20D9753D8();
  v52 = v71[0];
  v53 = v72;
  if (v72 < v71[0])
  {
    __break(1u);
    goto LABEL_34;
  }

  if (v71[0] == v72)
  {
    return result;
  }

  if (v71[0] >= v72)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v54 = (v66 + 8);
  v69 = v51 + a7;
  do
  {
    v55 = v52 + 1;
    sub_20D973CF8();
    LOBYTE(v71[0]) = 0;
    LOBYTE(v72) = 1;
    sub_20D973C68();
    v57 = v56;
    v58 = *v54;
    (*v54)(v17, v13);
    sub_20D973CF8();
    sub_20D974C98();
    v59 = v40 > v48;
    LOBYTE(v71[0]) = 0;
    LOBYTE(v72) = 0;
    if (v40 > v48)
    {
      v60 = MinY + v57 + a7;
    }

    else
    {
      v60 = MinY;
    }

    v61 = v48;
    v62 = a7;
    if (v59)
    {
      v63 = MinX;
    }

    else
    {
      v63 = v69 + MinX;
    }

    sub_20D973C78();
    result = (v58)(v17, v13);
    MinY = v60;
    MinX = v63;
    a7 = v62;
    v48 = v61;
    ++v52;
  }

  while (v53 != v55);
  return result;
}

void (*sub_20D8E511C(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_20D973A88();
  return sub_20D8E51A4;
}

void sub_20D8E51A4(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

unint64_t sub_20D8E51F4()
{
  result = qword_27C83A7F0;
  if (!qword_27C83A7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83A7F0);
  }

  return result;
}

unint64_t sub_20D8E5248()
{
  result = qword_27C83A7F8;
  if (!qword_27C83A7F8)
  {
    sub_20D973CE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83A7F8);
  }

  return result;
}

uint64_t sub_20D8E52A0(char a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      if (qword_281126E98 == -1)
      {
        return sub_20D971FF8();
      }
    }

    else if (qword_281126E98 == -1)
    {
      return sub_20D971FF8();
    }

    swift_once();
    return sub_20D971FF8();
  }

  if (qword_27C838378 != -1)
  {
    swift_once();
  }

  v1 = qword_27C8389D0;

  return v1;
}

uint64_t sub_20D8E5420(char a1, char a2, unsigned __int8 a3)
{
  v6 = sub_20D974898();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838CA0, &qword_20D979960);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_20D979110;
  if (a3 <= 1u)
  {
    goto LABEL_2;
  }

  if (a1)
  {
    if (a2)
    {
LABEL_2:
      (*(v7 + 104))(v10, *MEMORY[0x277CE0EE0], v6);
      v12 = sub_20D974978();
      goto LABEL_10;
    }
  }

  else if (a2)
  {
    goto LABEL_2;
  }

  if (qword_281126F30 != -1)
  {
    swift_once();
  }

LABEL_10:
  *(v11 + 32) = v12;
  return MEMORY[0x20F322D80](v11);
}

uint64_t sub_20D8E5710(char a1)
{
  v2 = sub_20D9726E8();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = sub_20D975058();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  if (!a1)
  {
    sub_20D974FE8();
    if (qword_281126E98 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  if (a1 == 1)
  {
    sub_20D974FE8();
    if (qword_281126E98 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  sub_20D974FE8();
  if (qword_281126E98 != -1)
  {
LABEL_9:
    swift_once();
  }

LABEL_8:
  v6 = qword_28112ABE8;
  sub_20D9726B8();
  return sub_20D975108();
}

uint64_t HistoricalUsageDetailsSheet.init(snapshotManager:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v27 = a1;
  v3 = sub_20D972AF8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v26 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v25 - v8;
  v10 = sub_20D972628();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v25 - v16;
  v18 = type metadata accessor for HistoricalUsageDetailsSheet();
  v19 = v18[5];
  sub_20D9725C8();
  (*(v11 + 16))(v15, v17, v10);
  sub_20D974A38();
  (*(v11 + 8))(v17, v10);
  v20 = v18[6];
  (*(v4 + 104))(v9, *MEMORY[0x277D075B8], v3);
  (*(v4 + 16))(v26, v9, v3);
  sub_20D974A38();
  (*(v4 + 8))(v9, v3);
  v21 = a2 + v18[7];
  v28 = 1;
  sub_20D974A38();
  v22 = v30;
  *v21 = v29[0];
  *(v21 + 1) = v22;
  v23 = v18[8];
  *(a2 + v23) = 12;
  *a2 = v27;
  result = sub_20D879E98(v29);
  *(a2 + v23) = v29[0];
  return result;
}

uint64_t type metadata accessor for HistoricalUsageDetailsSheet()
{
  result = qword_27C83A850;
  if (!qword_27C83A850)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t HistoricalUsageDetailsSheet.body.getter@<X0>(uint64_t a1@<X8>)
{
  v40 = a1;
  v2 = type metadata accessor for HistoricalUsageDetailsSheet();
  v43 = *(v2 - 8);
  v42 = *(v43 + 8);
  MEMORY[0x28223BE20](v2 - 8);
  v41 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_20D973CD8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A800, &qword_20D97C3D0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v39 - v12;
  v45 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A808, &qword_20D97C3D8);
  sub_20D7EBC4C(&qword_27C83A810, &qword_27C83A808, &qword_20D97C3D8);
  sub_20D9744D8();
  sub_20D973CC8();
  sub_20D7EBC4C(&qword_27C83A818, &qword_27C83A800, &qword_20D97C3D0);
  v14 = v40;
  sub_20D974878();
  (*(v5 + 8))(v8, v4);
  (*(v10 + 8))(v13, v9);
  v15 = objc_opt_self();
  v16 = [v15 defaultCenter];
  v17 = *MEMORY[0x277D76E80];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A820, &unk_20D97C3E0);
  v19 = v14 + *(v18 + 52);
  v20 = v14;
  sub_20D9754B8();

  v39 = type metadata accessor for HistoricalUsageDetailsSheet;
  v21 = v41;
  sub_20D8EB370(v44, v41, type metadata accessor for HistoricalUsageDetailsSheet);
  v22 = (*(v43 + 80) + 16) & ~*(v43 + 80);
  v23 = swift_allocObject();
  v43 = type metadata accessor for HistoricalUsageDetailsSheet;
  sub_20D8EAC00(v21, v23 + v22, type metadata accessor for HistoricalUsageDetailsSheet);
  v24 = (v14 + *(v18 + 56));
  *v24 = sub_20D8E9C54;
  v24[1] = v23;
  v25 = [v15 defaultCenter];
  v26 = *MEMORY[0x277D76E58];
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A838, &qword_20D97C3F8);
  v28 = v14 + *(v27 + 52);
  sub_20D9754B8();

  v29 = v44;
  v30 = v39;
  sub_20D8EB370(v44, v21, v39);
  v31 = swift_allocObject();
  v32 = v43;
  sub_20D8EAC00(v21, v31 + v22, v43);
  v33 = (v20 + *(v27 + 56));
  *v33 = sub_20D8E9FDC;
  v33[1] = v31;
  sub_20D8EB370(v29, v21, v30);
  v34 = swift_allocObject();
  sub_20D8EAC00(v21, v34 + v22, v32);
  v35 = (v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A840, &qword_20D97C400) + 36));
  *v35 = sub_20D8EA2D0;
  v35[1] = v34;
  v35[2] = 0;
  v35[3] = 0;
  sub_20D8EB370(v29, v21, v30);
  v36 = swift_allocObject();
  sub_20D8EAC00(v21, v36 + v22, v32);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A848, &qword_20D97C408);
  v38 = (v20 + *(result + 36));
  *v38 = 0;
  v38[1] = 0;
  v38[2] = sub_20D8EA6A4;
  v38[3] = v36;
  return result;
}

uint64_t sub_20D8E61C4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v135 = a2;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A890, &qword_20D97C498);
  v131 = *(v132 - 8);
  v3 = *(v131 + 64);
  MEMORY[0x28223BE20](v132);
  v124 = &v119 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A898, &qword_20D97C4A0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v134 = &v119 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v133 = &v119 - v9;
  v122 = sub_20D9744B8();
  v121 = *(v122 - 8);
  v10 = *(v121 + 64);
  MEMORY[0x28223BE20](v122);
  v120 = &v119 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = type metadata accessor for HistoricalUsageEnergyTip();
  v12 = *(*(v119 - 8) + 64);
  MEMORY[0x28223BE20](v119);
  v14 = &v119 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A8A0, &qword_20D97C4A8);
  v15 = *(*(v126 - 8) + 64);
  MEMORY[0x28223BE20](v126);
  v127 = &v119 - v16;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A8A8, &qword_20D97C4B0);
  v17 = *(v128 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v128);
  v125 = &v119 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v123 = &v119 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A8B0, &qword_20D97C4B8);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v130 = &v119 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v137 = &v119 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A8B8, &qword_20D97C4C0);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27);
  v30 = &v119 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A8C0, &qword_20D97C4C8);
  v32 = v31 - 8;
  v33 = *(*(v31 - 8) + 64);
  v34 = MEMORY[0x28223BE20](v31);
  v129 = &v119 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v37 = &v119 - v36;
  *v30 = sub_20D974158();
  *(v30 + 1) = 0;
  v30[16] = 0;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A8C8, &unk_20D97C4D0);
  sub_20D8E6F3C(a1, &v30[*(v38 + 44)]);
  sub_20D973BB8();
  sub_20D7EBC4C(&qword_27C83A8D0, &qword_27C83A8B8, &qword_20D97C4C0);
  sub_20D974798();
  sub_20D7E3944(v30, &qword_27C83A8B8, &qword_20D97C4C0);
  v39 = sub_20D974148();
  v40 = *(v32 + 44);
  v136 = v37;
  v41 = &v37[v40];
  *v41 = v39;
  v41[1] = sub_20D7EDA0C;
  v41[2] = 0;
  v42 = type metadata accessor for HistoricalUsageDetailsSheet();
  v43 = a1 + *(v42 + 28);
  v44 = *v43;
  v45 = *(v43 + 1);
  LOBYTE(v142) = *v43;
  v143 = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FC0, &qword_20D977980);
  sub_20D974A48();
  if (v138 == 1 && (v46 = *(a1 + *(v42 + 32)), v46 != 12))
  {
    LOBYTE(v138) = v44;
    v139 = v45;
    sub_20D974A68();
    v49 = v142;
    v50 = v143;
    v51 = v144;
    KeyPath = swift_getKeyPath();
    v53 = v119;
    *&v14[*(v119 + 24)] = KeyPath;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FA0, &qword_20D977960);
    swift_storeEnumTagMultiPayload();
    *v14 = v46;
    *(v14 + 1) = v49;
    *(v14 + 2) = v50;
    v14[24] = v51;
    v54 = *(v53 + 28);
    v142 = 0x3FF0000000000000;
    (*(v121 + 104))(v120, *MEMORY[0x277CE0A68], v122);
    sub_20D7E6420();
    sub_20D973B68();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838C80, &unk_20D97BFB0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_20D977210;
    v56 = sub_20D974328();
    *(inited + 32) = v56;
    v57 = sub_20D974338();
    *(inited + 33) = v57;
    v58 = sub_20D974358();
    sub_20D974358();
    if (sub_20D974358() != v56)
    {
      v58 = sub_20D974358();
    }

    sub_20D974358();
    if (sub_20D974358() != v57)
    {
      v58 = sub_20D974358();
    }

    sub_20D973AD8();
    v60 = v59;
    v62 = v61;
    v64 = v63;
    v66 = v65;
    v67 = v127;
    sub_20D8EAC00(v14, v127, type metadata accessor for HistoricalUsageEnergyTip);
    v68 = v67 + *(v126 + 36);
    *v68 = v58;
    *(v68 + 8) = v60;
    *(v68 + 16) = v62;
    *(v68 + 24) = v64;
    *(v68 + 32) = v66;
    *(v68 + 40) = 0;
    v69 = sub_20D974148();
    v70 = v125;
    sub_20D7EAF18(v67, v125, &qword_27C83A8A0, &qword_20D97C4A8);
    v71 = v128;
    v72 = (v70 + *(v128 + 36));
    *v72 = v69;
    v72[1] = sub_20D7EDA0C;
    v72[2] = 0;
    v73 = v70;
    v74 = v123;
    sub_20D7EAF18(v73, v123, &qword_27C83A8A8, &qword_20D97C4B0);
    sub_20D7EAF18(v74, v137, &qword_27C83A8A8, &qword_20D97C4B0);
    v48 = v71;
    v47 = 0;
  }

  else
  {
    v47 = 1;
    v48 = v128;
  }

  v75 = 1;
  (*(v17 + 56))(v137, v47, 1, v48);
  v76 = *a1;
  swift_getKeyPath();
  v142 = v76;
  sub_20D8EB134(&qword_27C839520, type metadata accessor for HistoricalUsageSnapshotManager);
  sub_20D972858();

  swift_beginAccess();
  v77 = *(v76 + 40);
  v78 = *(v76 + 48);

  sub_20D965130(v77, v78, &v142);
  v125 = v142;
  v128 = v143;
  v79 = v144;
  v127 = v145;
  v126 = v146;
  swift_getKeyPath();
  v138 = v76;
  sub_20D972858();

  if (*(v76 + 48))
  {
    v80 = *(v76 + 40);
    v81 = *(v76 + 48);

    v82 = _s12HomeEnergyUI25UtilityIntegrationStringsV20electricityUsageFrom11utilityNameS2S_tFZ_0();
    v84 = v83;

    v138 = v82;
    v139 = v84;
    sub_20D7E1EF8();
    v85 = sub_20D9745C8();
    v87 = v86;
    LOBYTE(v84) = v88;
    sub_20D974398();
    v89 = sub_20D974558();
    v91 = v90;
    v93 = v92;

    sub_20D7EADC0(v85, v87, v84 & 1);

    v94 = sub_20D974588();
    v96 = v95;
    LOBYTE(v84) = v97;
    sub_20D7EADC0(v89, v91, v93 & 1);

    sub_20D974968();
    v98 = sub_20D974508();
    v100 = v99;
    LOBYTE(v89) = v101;
    v103 = v102;

    sub_20D7EADC0(v94, v96, v84 & 1);

    v138 = v98;
    v139 = v100;
    v140 = v89 & 1;
    v141 = v103;
    sub_20D973BC8();
    v104 = v124;
    sub_20D974798();
    sub_20D7EADC0(v98, v100, v89 & 1);

    v105 = v131;
    v106 = v133;
    v107 = v132;
    (*(v131 + 32))(v133, v104, v132);
    v75 = 0;
  }

  else
  {
    v106 = v133;
    v107 = v132;
    v105 = v131;
  }

  (*(v105 + 56))(v106, v75, 1, v107);
  v108 = v129;
  sub_20D7EB7E8(v136, v129, &qword_27C83A8C0, &qword_20D97C4C8);
  v109 = v137;
  v110 = v130;
  sub_20D7EB7E8(v137, v130, &qword_27C83A8B0, &qword_20D97C4B8);
  v111 = v134;
  sub_20D7EB7E8(v106, v134, &qword_27C83A898, &qword_20D97C4A0);
  v112 = v135;
  sub_20D7EB7E8(v108, v135, &qword_27C83A8C0, &qword_20D97C4C8);
  v113 = v106;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A8D8, &qword_20D97C508);
  sub_20D7EB7E8(v110, v112 + v114[12], &qword_27C83A8B0, &qword_20D97C4B8);
  v115 = v112 + v114[16];
  v116 = v128;
  *v115 = v125;
  *(v115 + 8) = v116;
  *(v115 + 16) = v79;
  v117 = v126;
  *(v115 + 24) = v127;
  *(v115 + 32) = v117;
  *(v115 + 40) = 256;
  sub_20D7EB7E8(v111, v112 + v114[20], &qword_27C83A898, &qword_20D97C4A0);

  sub_20D7E3944(v113, &qword_27C83A898, &qword_20D97C4A0);
  sub_20D7E3944(v109, &qword_27C83A8B0, &qword_20D97C4B8);
  sub_20D7E3944(v136, &qword_27C83A8C0, &qword_20D97C4C8);
  sub_20D7E3944(v111, &qword_27C83A898, &qword_20D97C4A0);

  sub_20D7E3944(v110, &qword_27C83A8B0, &qword_20D97C4B8);
  return sub_20D7E3944(v108, &qword_27C83A8C0, &qword_20D97C4C8);
}

uint64_t sub_20D8E6F3C@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v102 = a2;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A8E0, &qword_20D97C540);
  v3 = *(*(v100 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v100);
  v103 = &v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v101 = &v78 - v6;
  v7 = type metadata accessor for HistoricalUsageDetailsSheet();
  v94 = *(v7 - 8);
  v8 = *(v94 + 64);
  MEMORY[0x28223BE20](v7);
  v95 = v9;
  v96 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20D972AF8();
  v98 = *(v10 - 8);
  v99 = v10;
  v11 = *(v98 + 64);
  MEMORY[0x28223BE20](v10);
  v97 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_20D974458();
  v89 = *(v90 - 8);
  v13 = *(v89 + 64);
  MEMORY[0x28223BE20](v90);
  v87 = &v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_20D9741E8();
  v84 = *(v85 - 8);
  v15 = *(v84 + 64);
  MEMORY[0x28223BE20](v85);
  v17 = &v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A8E8, &qword_20D97C548);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A8F0, &qword_20D97C550);
  v20 = *(v83 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v83);
  v23 = &v78 - v22;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A8F8, &qword_20D97C558);
  v24 = *(*(v86 - 8) + 64);
  MEMORY[0x28223BE20](v86);
  v26 = &v78 - v25;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A900, &qword_20D97C560);
  v27 = *(*(v88 - 8) + 64);
  MEMORY[0x28223BE20](v88);
  v29 = &v78 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A908, &qword_20D97C568);
  v92 = *(v30 - 8);
  v93 = v30;
  v31 = *(v92 + 64);
  v32 = MEMORY[0x28223BE20](v30);
  v91 = &v78 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v104 = &v78 - v34;
  if (qword_27C838680 != -1)
  {
    swift_once();
  }

  v105 = qword_27C840D30;
  v106 = *algn_27C840D38;
  v81 = *(v7 + 24);

  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A830, &qword_20D97C3F0);
  sub_20D974A68();
  v79 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A910, &qword_20D97C570);
  v82 = MEMORY[0x277D075D8];
  sub_20D8EB134(&qword_27C83A918, MEMORY[0x277D075D8]);
  sub_20D7EBC4C(&qword_27C83A920, &qword_27C83A910, &qword_20D97C570);
  sub_20D7E1EF8();
  v35 = v99;
  sub_20D974AF8();
  sub_20D9741D8();
  sub_20D7EBC4C(&qword_27C83A928, &qword_27C83A8F0, &qword_20D97C550);
  v36 = v83;
  v37 = v85;
  sub_20D974738();
  (*(v84 + 8))(v17, v37);
  (*(v20 + 8))(v23, v36);
  v38 = sub_20D974338();
  sub_20D973AD8();
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v47 = &v26[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A930, &qword_20D97C578) + 36)];
  *v47 = v38;
  *(v47 + 1) = v40;
  *(v47 + 2) = v42;
  *(v47 + 3) = v44;
  *(v47 + 4) = v46;
  v47[40] = 0;
  sub_20D974428();
  v48 = v89;
  v49 = v87;
  v50 = v90;
  (*(v89 + 104))(v87, *MEMORY[0x277CE0A10], v90);
  v51 = sub_20D974478();

  (*(v48 + 8))(v49, v50);
  KeyPath = swift_getKeyPath();
  v53 = &v26[*(v86 + 36)];
  *v53 = KeyPath;
  v53[1] = v51;
  sub_20D9743D8();
  sub_20D8EAC68();
  sub_20D974708();
  sub_20D7E3944(v26, &qword_27C83A8F8, &qword_20D97C558);
  v54 = sub_20D974958();
  v55 = swift_getKeyPath();
  v56 = &v29[*(v88 + 36)];
  *v56 = v55;
  v56[1] = v54;
  v57 = v79;
  v58 = v97;
  sub_20D974A48();
  v59 = v96;
  sub_20D8EB370(v57, v96, type metadata accessor for HistoricalUsageDetailsSheet);
  v60 = (*(v94 + 80) + 16) & ~*(v94 + 80);
  v61 = swift_allocObject();
  sub_20D8EAC00(v59, v61 + v60, type metadata accessor for HistoricalUsageDetailsSheet);
  sub_20D8EB040();
  sub_20D8EB134(&qword_2811250F8, v82);
  v62 = v104;
  sub_20D974848();

  (*(v98 + 8))(v58, v35);
  sub_20D7E3944(v29, &qword_27C83A900, &qword_20D97C560);
  v63 = v101;
  sub_20D8E8C8C(v57, v101);
  LOBYTE(v54) = sub_20D974338();
  sub_20D973AD8();
  v64 = v63 + *(v100 + 36);
  *v64 = v54;
  *(v64 + 8) = v65;
  *(v64 + 16) = v66;
  *(v64 + 24) = v67;
  *(v64 + 32) = v68;
  *(v64 + 40) = 0;
  v70 = v91;
  v69 = v92;
  v71 = *(v92 + 16);
  v72 = v93;
  v71(v91, v62, v93);
  v73 = v103;
  sub_20D7EB7E8(v63, v103, &qword_27C83A8E0, &qword_20D97C540);
  v74 = v102;
  v71(v102, v70, v72);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A950, &qword_20D97C5F0);
  sub_20D7EB7E8(v73, &v74[*(v75 + 48)], &qword_27C83A8E0, &qword_20D97C540);
  sub_20D7E3944(v63, &qword_27C83A8E0, &qword_20D97C540);
  v76 = *(v69 + 8);
  v76(v104, v72);
  sub_20D7E3944(v73, &qword_27C83A8E0, &qword_20D97C540);
  return (v76)(v70, v72);
}

uint64_t sub_20D8E79E0@<X0>(uint64_t a1@<X8>)
{
  v102 = a1;
  v1 = sub_20D972AF8();
  v2 = *(v1 - 8);
  v3 = v2[8];
  MEMORY[0x28223BE20](v1);
  v5 = &v95 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A9B0, &qword_20D97C6F8);
  v119 = *(v104 - 8);
  v6 = *(v119 + 64);
  MEMORY[0x28223BE20](v104);
  v8 = &v95 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A9B8, &unk_20D97C700);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v101 = &v95 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v100 = &v95 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v99 = &v95 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v98 = &v95 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v106 = &v95 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v97 = &v95 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v105 = &v95 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v113 = &v95 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v112 = &v95 - v28;
  MEMORY[0x28223BE20](v27);
  v111 = &v95 - v29;
  sub_20D9740F8();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v30 = qword_28112ABE8;
  v31 = qword_28112ABE8;
  v107 = v30;
  v32 = v31;
  v33 = sub_20D9745A8();
  v35 = v34;
  LOBYTE(v30) = v36;
  v38 = v37;
  v39 = *MEMORY[0x277D075B0];
  v40 = v2[13];
  v115 = v2 + 13;
  v109 = v40;
  v40(v5, v39, v1);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838810, &qword_20D976358);
  v42 = &v8[*(v41 + 36)];
  v43 = v2[4];
  v116 = v41;
  v117 = v2 + 4;
  v110 = v43;
  v44 = v5;
  v43(v42, v5, v1);
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838818, &qword_20D97C710);
  v42[*(v114 + 36)] = 1;
  *v8 = v33;
  *(v8 + 1) = v35;
  v8[16] = v30 & 1;
  *(v8 + 3) = v38;
  v45 = sub_20D8EB134(&qword_27C83A918, MEMORY[0x277D075D8]);
  v120 = MEMORY[0x277CE0BD8];
  v121 = v1;
  v122 = MEMORY[0x277CE0BC8];
  v123 = v45;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v46 = v104;
  sub_20D9747D8();
  v118 = *(v119 + 8);
  v119 += 8;
  v118(v8, v46);
  sub_20D9740F8();
  v47 = sub_20D9745A8();
  v49 = v48;
  LOBYTE(v42) = v50;
  v52 = v51;
  v53 = *MEMORY[0x277D075B8];
  v54 = v44;
  v103 = v44;
  v96 = v1;
  v109(v44, v53, v1);
  v55 = &v8[*(v116 + 36)];
  v110(v55, v54, v1);
  v55[*(v114 + 36)] = 1;
  *v8 = v47;
  *(v8 + 1) = v49;
  v8[16] = v42 & 1;
  *(v8 + 3) = v52;
  sub_20D9747D8();
  v118(v8, v46);
  sub_20D9740F8();
  v56 = sub_20D9745A8();
  v58 = v57;
  LOBYTE(v42) = v59;
  v61 = v60;
  v62 = v103;
  v63 = v96;
  v64 = v109;
  v109(v103, *MEMORY[0x277D075C8], v96);
  v65 = &v8[*(v116 + 36)];
  v110(v65, v62, v63);
  v65[*(v114 + 36)] = 1;
  *v8 = v56;
  *(v8 + 1) = v58;
  v8[16] = v42 & 1;
  *(v8 + 3) = v61;
  v66 = v104;
  sub_20D9747D8();
  v118(v8, v66);
  sub_20D9740F8();
  v67 = sub_20D9745A8();
  v69 = v68;
  LOBYTE(v42) = v70;
  v72 = v71;
  v73 = v103;
  v64(v103, *MEMORY[0x277D075D0], v63);
  v74 = &v8[*(v116 + 36)];
  v75 = v73;
  v76 = v73;
  v77 = v110;
  v110(v74, v75, v63);
  v74[*(v114 + 36)] = 1;
  *v8 = v67;
  *(v8 + 1) = v69;
  v8[16] = v42 & 1;
  *(v8 + 3) = v72;
  sub_20D9747D8();
  v118(v8, v66);
  sub_20D9740F8();
  v78 = sub_20D9745A8();
  v80 = v79;
  LOBYTE(v42) = v81;
  v83 = v82;
  v109(v76, *MEMORY[0x277D075C0], v63);
  v84 = &v8[*(v116 + 36)];
  v77(v84, v76, v63);
  v84[*(v114 + 36)] = 1;
  *v8 = v78;
  *(v8 + 1) = v80;
  v8[16] = v42 & 1;
  *(v8 + 3) = v83;
  v85 = v97;
  sub_20D9747D8();
  v118(v8, v66);
  v86 = v106;
  sub_20D7EB7E8(v111, v106, &qword_27C83A9B8, &unk_20D97C700);
  v87 = v98;
  sub_20D7EB7E8(v112, v98, &qword_27C83A9B8, &unk_20D97C700);
  v88 = v99;
  sub_20D7EB7E8(v113, v99, &qword_27C83A9B8, &unk_20D97C700);
  v89 = v105;
  v90 = v100;
  sub_20D7EB7E8(v105, v100, &qword_27C83A9B8, &unk_20D97C700);
  v91 = v101;
  sub_20D7EB7E8(v85, v101, &qword_27C83A9B8, &unk_20D97C700);
  v92 = v102;
  sub_20D7EB7E8(v86, v102, &qword_27C83A9B8, &unk_20D97C700);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A9C0, &qword_20D97C718);
  sub_20D7EB7E8(v87, v92 + v93[12], &qword_27C83A9B8, &unk_20D97C700);
  sub_20D7EB7E8(v88, v92 + v93[16], &qword_27C83A9B8, &unk_20D97C700);
  sub_20D7EB7E8(v90, v92 + v93[20], &qword_27C83A9B8, &unk_20D97C700);
  sub_20D7EB7E8(v91, v92 + v93[24], &qword_27C83A9B8, &unk_20D97C700);
  sub_20D7E3944(v85, &qword_27C83A9B8, &unk_20D97C700);
  sub_20D7E3944(v89, &qword_27C83A9B8, &unk_20D97C700);
  sub_20D7E3944(v113, &qword_27C83A9B8, &unk_20D97C700);
  sub_20D7E3944(v112, &qword_27C83A9B8, &unk_20D97C700);
  sub_20D7E3944(v111, &qword_27C83A9B8, &unk_20D97C700);
  sub_20D7E3944(v91, &qword_27C83A9B8, &unk_20D97C700);
  sub_20D7E3944(v90, &qword_27C83A9B8, &unk_20D97C700);
  sub_20D7E3944(v88, &qword_27C83A9B8, &unk_20D97C700);
  sub_20D7E3944(v87, &qword_27C83A9B8, &unk_20D97C700);
  return sub_20D7E3944(v106, &qword_27C83A9B8, &unk_20D97C700);
}

uint64_t sub_20D8E8520(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v43 = a3;
  v38 = a1;
  v4 = sub_20D972628();
  v41 = *(v4 - 8);
  v42 = v4;
  v5 = *(v41 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v40 = v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v39 = v36 - v8;
  v9 = sub_20D972AF8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27C838470 != -1)
  {
    swift_once();
  }

  v14 = sub_20D9734F8();
  __swift_project_value_buffer(v14, qword_27C840CC8);
  (*(v10 + 16))(v13, a2, v9);
  v15 = sub_20D9734D8();
  v16 = sub_20D975478();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v37 = a2;
    v18 = v17;
    v19 = swift_slowAlloc();
    v82[0] = v19;
    *v18 = 136315138;
    v20 = sub_20D972AE8();
    v22 = v21;
    (*(v10 + 8))(v13, v9);
    v23 = sub_20D7F4DC8(v20, v22, v82);

    *(v18 + 4) = v23;
    _os_log_impl(&dword_20D7C9000, v15, v16, "Picker selected: %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x20F324260](v19, -1, -1);
    MEMORY[0x20F324260](v18, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v13, v9);
  }

  v24 = sub_20D972AD8();
  LOBYTE(v82[0]) = 1;
  LOBYTE(v81[0]) = 1;
  LOBYTE(v78[0]) = 1;
  LOBYTE(v77[0]) = 1;
  LOBYTE(v76[0]) = 1;
  LOBYTE(v75[0]) = 1;
  LOBYTE(v70[0]) = 1;
  LOBYTE(v69[0]) = 1;
  LOBYTE(v68[0]) = 1;
  LOBYTE(v65[0]) = 1;
  LOBYTE(v64[0]) = 1;
  LOBYTE(v63[0]) = 1;
  LOBYTE(v79) = 0;
  LOBYTE(v73) = 1;
  LOBYTE(v71) = 1;
  LOBYTE(v66) = 1;
  v60[0] = 0;
  LOWORD(v60[1]) = 513;
  v60[2] = 0;
  LOBYTE(v60[3]) = 1;
  v60[4] = 0;
  LOBYTE(v60[5]) = 1;
  memset(&v60[6], 0, 24);
  LOBYTE(v60[9]) = 1;
  memset(&v60[10], 0, 24);
  LOBYTE(v60[13]) = 1;
  v60[14] = 0;
  LOWORD(v60[15]) = 513;
  v60[16] = 0;
  LOWORD(v60[17]) = 1;
  memset(&v60[18], 0, 24);
  LOBYTE(v60[21]) = 1;
  v60[22] = 0;
  LOBYTE(v60[23]) = 1;
  v60[24] = 0;
  LOBYTE(v60[25]) = 1;
  v60[26] = 0;
  LOWORD(v60[27]) = 513;
  v60[28] = 0;
  LOWORD(v60[29]) = 513;
  v60[30] = v24;
  LOBYTE(v60[31]) = 0;
  v60[32] = 0;
  LOBYTE(v60[33]) = 1;
  v60[34] = 0;
  LOBYTE(v60[35]) = 1;
  v60[36] = 0;
  LOBYTE(v60[37]) = 1;
  nullsub_5(v60);
  v37 = type metadata accessor for HEUIFAnalyticsEvent();
  v25 = swift_allocObject();
  sub_20D7E3AF0(v61);
  *(v25 + 16) = 32;
  memcpy(v62, v61, 0x129uLL);
  memcpy((v25 + 24), v60, 0x129uLL);
  sub_20D7E3944(v62, &qword_27C838A20, &qword_20D9768E0);
  _s12HomeEnergyUI14HEUIFAnalyticsC9sendEvent5eventyAA0dF0C_tFZ_0(v25);

  v26 = v39;
  sub_20D972618();
  v36[2] = *(type metadata accessor for HistoricalUsageDetailsSheet() + 20);
  v36[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A828, &qword_20D97F9C0);
  v27 = v40;
  sub_20D974A48();
  sub_20D972458();
  v29 = v28;
  v30 = v41;
  v31 = v42;
  v32 = *(v41 + 8);
  v32(v27, v42);
  v32(v26, v31);
  v33 = sub_20D972AD8();
  v59 = 0;
  v58 = 1;
  v57 = 1;
  v56 = 1;
  v55 = 1;
  v54 = 1;
  v53 = 1;
  v52 = 1;
  v51 = 1;
  v50 = 1;
  v49 = 1;
  v48 = 1;
  v47 = 0;
  v46 = 1;
  v45 = 1;
  v44 = 1;
  v81[0] = v29;
  LOWORD(v81[1]) = 512;
  *(&v81[1] + 2) = v79;
  HIWORD(v81[1]) = v80;
  v81[2] = 0;
  LOBYTE(v81[3]) = 1;
  *(&v81[3] + 1) = v78[0];
  HIDWORD(v81[3]) = *(v78 + 3);
  v81[4] = 0;
  LOBYTE(v81[5]) = 1;
  *(&v81[5] + 1) = v77[0];
  HIDWORD(v81[5]) = *(v77 + 3);
  memset(&v81[6], 0, 24);
  LOBYTE(v81[9]) = 1;
  HIDWORD(v81[9]) = *(v76 + 3);
  *(&v81[9] + 1) = v76[0];
  memset(&v81[10], 0, 24);
  LOBYTE(v81[13]) = 1;
  HIDWORD(v81[13]) = *(v75 + 3);
  *(&v81[13] + 1) = v75[0];
  v81[14] = 0;
  LOWORD(v81[15]) = 513;
  HIWORD(v81[15]) = v74;
  *(&v81[15] + 2) = v73;
  v81[16] = 0;
  LOWORD(v81[17]) = 1;
  *(&v81[17] + 2) = v71;
  HIWORD(v81[17]) = v72;
  memset(&v81[18], 0, 24);
  LOBYTE(v81[21]) = 1;
  *(&v81[21] + 1) = v70[0];
  HIDWORD(v81[21]) = *(v70 + 3);
  v81[22] = 0;
  LOBYTE(v81[23]) = 1;
  HIDWORD(v81[23]) = *(v69 + 3);
  *(&v81[23] + 1) = v69[0];
  v81[24] = 0;
  LOBYTE(v81[25]) = 1;
  HIDWORD(v81[25]) = *(v68 + 3);
  *(&v81[25] + 1) = v68[0];
  v81[26] = 0;
  LOWORD(v81[27]) = 513;
  *(&v81[27] + 2) = v66;
  HIWORD(v81[27]) = v67;
  v81[28] = 0;
  LOWORD(v81[29]) = 513;
  HIWORD(v81[29]) = v65[7];
  *(&v81[29] + 2) = *&v65[5];
  v81[30] = v33;
  LOBYTE(v81[31]) = 0;
  HIDWORD(v81[31]) = *(&v65[1] + 1);
  *(&v81[31] + 1) = *v65;
  v81[32] = 0;
  LOBYTE(v81[33]) = 1;
  *(&v81[33] + 1) = v64[0];
  HIDWORD(v81[33]) = *(v64 + 3);
  v81[34] = 0;
  LOBYTE(v81[35]) = 1;
  *(&v81[35] + 1) = v63[0];
  HIDWORD(v81[35]) = *(v63 + 3);
  v81[36] = 0;
  LOBYTE(v81[37]) = 1;
  nullsub_5(v81);
  v34 = swift_allocObject();
  *(v34 + 16) = 33;
  memcpy(v82, v61, 0x129uLL);
  memcpy((v34 + 24), v81, 0x129uLL);
  sub_20D7E3944(v82, &qword_27C838A20, &qword_20D9768E0);
  _s12HomeEnergyUI14HEUIFAnalyticsC9sendEvent5eventyAA0dF0C_tFZ_0(v34);

  sub_20D9725C8();
  (*(v30 + 16))(v27, v26, v31);
  sub_20D974A58();
  return (v32)(v26, v31);
}

uint64_t sub_20D8E8C8C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a2;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A958, &qword_20D97C5F8);
  v3 = *(*(v61 - 8) + 64);
  MEMORY[0x28223BE20](v61);
  v62 = v60 - v4;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A960, &qword_20D97C600);
  v5 = *(*(v72 - 8) + 64);
  MEMORY[0x28223BE20](v72);
  v63 = v60 - v6;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A968, &qword_20D97C608);
  v7 = *(*(v70 - 8) + 64);
  MEMORY[0x28223BE20](v70);
  v69 = v60 - v8;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A970, &qword_20D97C610);
  v9 = *(*(v65 - 8) + 64);
  MEMORY[0x28223BE20](v65);
  v68 = v60 - v10;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A978, &qword_20D97C618);
  v11 = *(*(v64 - 8) + 64);
  MEMORY[0x28223BE20](v64);
  v13 = v60 - v12;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A980, &qword_20D97C620);
  v14 = *(*(v66 - 8) + 64);
  MEMORY[0x28223BE20](v66);
  v16 = v60 - v15;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A988, &qword_20D97C628);
  v17 = *(*(v71 - 8) + 64);
  MEMORY[0x28223BE20](v71);
  v67 = v60 - v18;
  v19 = type metadata accessor for HistoricalUsageSnapshot();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for HistoricalUsageIntervalView();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v26 = v60 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_20D972AF8();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  v31 = v60 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *(type metadata accessor for HistoricalUsageDetailsSheet() + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A830, &qword_20D97C3F0);
  sub_20D974A48();
  v33 = v28;
  v34 = (*(v28 + 88))(v31, v27);
  if (v34 == *MEMORY[0x277D075B0])
  {
    v35 = *a1;
    swift_getKeyPath();
    v74 = v35;
    sub_20D8EB134(&qword_27C839520, type metadata accessor for HistoricalUsageSnapshotManager);
    sub_20D972858();

    v36 = OBJC_IVAR____TtC12HomeEnergyUI30HistoricalUsageSnapshotManager__dailyUsageSnapshot;
    swift_beginAccess();
    sub_20D8EB370(v35 + v36, v22, type metadata accessor for HistoricalUsageSnapshot);
    HistoricalUsageIntervalView.init(usageSnapshot:)(v22, v26);
    sub_20D8EB370(v26, v13, type metadata accessor for HistoricalUsageIntervalView);
    swift_storeEnumTagMultiPayload();
    sub_20D8EB134(&qword_27C83A990, type metadata accessor for HistoricalUsageIntervalView);
    sub_20D9741B8();
    sub_20D7EB7E8(v16, v68, &qword_27C83A980, &qword_20D97C620);
    swift_storeEnumTagMultiPayload();
    sub_20D8EB200();
    v37 = v67;
    sub_20D9741B8();
    sub_20D7E3944(v16, &qword_27C83A980, &qword_20D97C620);
    v38 = &qword_27C83A988;
    v39 = &qword_20D97C628;
    sub_20D7EB7E8(v37, v69, &qword_27C83A988, &qword_20D97C628);
    swift_storeEnumTagMultiPayload();
    sub_20D8EB17C();
    sub_20D8EB2B4();
    sub_20D9741B8();
    v40 = v37;
    goto LABEL_9;
  }

  v41 = a1;
  v60[0] = v16;
  v60[1] = v23;
  v43 = v67;
  v42 = v68;
  v44 = v69;
  if (v34 == *MEMORY[0x277D075B8])
  {
    v45 = *v41;
    swift_getKeyPath();
    v74 = v45;
    sub_20D8EB134(&qword_27C839520, type metadata accessor for HistoricalUsageSnapshotManager);
    sub_20D972858();

    v46 = OBJC_IVAR____TtC12HomeEnergyUI30HistoricalUsageSnapshotManager__detailedWeeklyUsageSnapshot;
    swift_beginAccess();
    sub_20D8EB370(v45 + v46, v22, type metadata accessor for HistoricalUsageSnapshot);
    HistoricalUsageIntervalView.init(usageSnapshot:)(v22, v26);
    sub_20D8EB370(v26, v13, type metadata accessor for HistoricalUsageIntervalView);
    swift_storeEnumTagMultiPayload();
    sub_20D8EB134(&qword_27C83A990, type metadata accessor for HistoricalUsageIntervalView);
    v47 = v60[0];
    sub_20D9741B8();
    sub_20D7EB7E8(v47, v42, &qword_27C83A980, &qword_20D97C620);
    swift_storeEnumTagMultiPayload();
    sub_20D8EB200();
    sub_20D9741B8();
    v48 = v47;
LABEL_7:
    sub_20D7E3944(v48, &qword_27C83A980, &qword_20D97C620);
    v38 = &qword_27C83A988;
    v39 = &qword_20D97C628;
    sub_20D7EB7E8(v43, v44, &qword_27C83A988, &qword_20D97C628);
LABEL_8:
    swift_storeEnumTagMultiPayload();
    sub_20D8EB17C();
    sub_20D8EB2B4();
    sub_20D9741B8();
    v40 = v43;
    goto LABEL_9;
  }

  if (v34 == *MEMORY[0x277D075C8])
  {
    v49 = *v41;
    swift_getKeyPath();
    v74 = v49;
    sub_20D8EB134(&qword_27C839520, type metadata accessor for HistoricalUsageSnapshotManager);
    sub_20D972858();

    v50 = OBJC_IVAR____TtC12HomeEnergyUI30HistoricalUsageSnapshotManager__monthlyUsageSnapshot;
    swift_beginAccess();
    sub_20D8EB370(v49 + v50, v22, type metadata accessor for HistoricalUsageSnapshot);
    HistoricalUsageIntervalView.init(usageSnapshot:)(v22, v26);
    sub_20D8EB370(v26, v13, type metadata accessor for HistoricalUsageIntervalView);
    swift_storeEnumTagMultiPayload();
    sub_20D8EB134(&qword_27C83A990, type metadata accessor for HistoricalUsageIntervalView);
    v51 = v60[0];
    sub_20D9741B8();
    sub_20D7EB7E8(v51, v42, &qword_27C83A980, &qword_20D97C620);
    swift_storeEnumTagMultiPayload();
    sub_20D8EB200();
    sub_20D9741B8();
    v48 = v51;
    goto LABEL_7;
  }

  if (v34 == *MEMORY[0x277D075D0])
  {
    v53 = *v41;
    swift_getKeyPath();
    v74 = v53;
    sub_20D8EB134(&qword_27C839520, type metadata accessor for HistoricalUsageSnapshotManager);
    sub_20D972858();

    v54 = OBJC_IVAR____TtC12HomeEnergyUI30HistoricalUsageSnapshotManager__sixMonthlyUsageSnapshot;
    swift_beginAccess();
    sub_20D8EB370(v53 + v54, v22, type metadata accessor for HistoricalUsageSnapshot);
    HistoricalUsageIntervalView.init(usageSnapshot:)(v22, v26);
    sub_20D8EB370(v26, v13, type metadata accessor for HistoricalUsageIntervalView);
    swift_storeEnumTagMultiPayload();
    sub_20D8EB134(&qword_27C83A990, type metadata accessor for HistoricalUsageIntervalView);
    v55 = v60[0];
    sub_20D9741B8();
    sub_20D7EB7E8(v55, v42, &qword_27C83A980, &qword_20D97C620);
    swift_storeEnumTagMultiPayload();
    sub_20D8EB200();
    sub_20D9741B8();
    sub_20D7E3944(v55, &qword_27C83A980, &qword_20D97C620);
    v38 = &qword_27C83A988;
    v39 = &qword_20D97C628;
    sub_20D7EB7E8(v43, v44, &qword_27C83A988, &qword_20D97C628);
    goto LABEL_8;
  }

  if (v34 != *MEMORY[0x277D075C0])
  {
    swift_storeEnumTagMultiPayload();
    sub_20D8EB134(&qword_27C83A990, type metadata accessor for HistoricalUsageIntervalView);
    v59 = v63;
    sub_20D9741B8();
    sub_20D7EB7E8(v59, v44, &qword_27C83A960, &qword_20D97C600);
    swift_storeEnumTagMultiPayload();
    sub_20D8EB17C();
    sub_20D8EB2B4();
    sub_20D9741B8();
    sub_20D7E3944(v59, &qword_27C83A960, &qword_20D97C600);
    return (*(v33 + 8))(v31, v27);
  }

  v56 = *v41;
  swift_getKeyPath();
  v74 = v56;
  sub_20D8EB134(&qword_27C839520, type metadata accessor for HistoricalUsageSnapshotManager);
  sub_20D972858();

  v57 = OBJC_IVAR____TtC12HomeEnergyUI30HistoricalUsageSnapshotManager__yearlyUsageSnapshot;
  swift_beginAccess();
  sub_20D8EB370(v56 + v57, v22, type metadata accessor for HistoricalUsageSnapshot);
  HistoricalUsageIntervalView.init(usageSnapshot:)(v22, v26);
  sub_20D8EB370(v26, v62, type metadata accessor for HistoricalUsageIntervalView);
  swift_storeEnumTagMultiPayload();
  sub_20D8EB134(&qword_27C83A990, type metadata accessor for HistoricalUsageIntervalView);
  v58 = v63;
  sub_20D9741B8();
  v38 = &qword_27C83A960;
  v39 = &qword_20D97C600;
  sub_20D7EB7E8(v58, v44, &qword_27C83A960, &qword_20D97C600);
  swift_storeEnumTagMultiPayload();
  sub_20D8EB17C();
  sub_20D8EB2B4();
  sub_20D9741B8();
  v40 = v58;
LABEL_9:
  sub_20D7E3944(v40, v38, v39);
  return sub_20D8EB3D8(v26);
}

uint64_t sub_20D8E9B18()
{
  v0 = sub_20D972628();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  sub_20D9725C8();
  v8 = *(type metadata accessor for HistoricalUsageDetailsSheet() + 20);
  (*(v1 + 16))(v5, v7, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A828, &qword_20D97F9C0);
  sub_20D974A58();
  return (*(v1 + 8))(v7, v0);
}

uint64_t sub_20D8E9C6C()
{
  v21 = sub_20D972AF8();
  v0 = *(v21 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v21);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_20D972628();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v21 - v10;
  sub_20D972618();
  v12 = type metadata accessor for HistoricalUsageDetailsSheet();
  v13 = *(v12 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A828, &qword_20D97F9C0);
  sub_20D974A48();
  sub_20D972458();
  v15 = v14;
  v16 = *(v5 + 8);
  v16(v9, v4);
  v16(v11, v4);
  v17 = *(v12 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A830, &qword_20D97C3F0);
  sub_20D974A48();
  v18 = sub_20D972AD8();
  (*(v0 + 8))(v3, v21);
  v37 = 0;
  v36 = 1;
  v35 = 1;
  v34 = 1;
  v33 = 1;
  v32 = 1;
  v31 = 1;
  v30 = 1;
  v29 = 1;
  v28 = 1;
  v27 = 1;
  v26 = 1;
  v25 = 0;
  v24 = 1;
  v23 = 1;
  v22 = 1;
  v38[0] = v15;
  LOWORD(v38[1]) = 512;
  v38[2] = 0;
  LOBYTE(v38[3]) = 1;
  v38[4] = 0;
  LOBYTE(v38[5]) = 1;
  memset(&v38[6], 0, 24);
  LOBYTE(v38[9]) = 1;
  memset(&v38[10], 0, 24);
  LOBYTE(v38[13]) = 1;
  v38[14] = 0;
  LOWORD(v38[15]) = 513;
  v38[16] = 0;
  LOWORD(v38[17]) = 1;
  memset(&v38[18], 0, 24);
  LOBYTE(v38[21]) = 1;
  v38[22] = 0;
  LOBYTE(v38[23]) = 1;
  v38[24] = 0;
  LOBYTE(v38[25]) = 1;
  v38[26] = 0;
  LOWORD(v38[27]) = 513;
  v38[28] = 0;
  LOWORD(v38[29]) = 513;
  v38[30] = v18;
  LOBYTE(v38[31]) = 0;
  v38[32] = 0;
  LOBYTE(v38[33]) = 1;
  v38[34] = 0;
  LOBYTE(v38[35]) = 1;
  v38[36] = 0;
  LOBYTE(v38[37]) = 1;
  nullsub_5(v38);
  type metadata accessor for HEUIFAnalyticsEvent();
  v19 = swift_allocObject();
  sub_20D7E3AF0(v39);
  *(v19 + 16) = 33;
  memcpy(v40, v39, 0x129uLL);
  memcpy((v19 + 24), v38, 0x129uLL);
  sub_20D7E3944(v40, &qword_27C838A20, &qword_20D9768E0);
  _s12HomeEnergyUI14HEUIFAnalyticsC9sendEvent5eventyAA0dF0C_tFZ_0(v19);
}

uint64_t sub_20D8E9FF4(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for HistoricalUsageDetailsSheet() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_20D8EA078()
{
  v0 = sub_20D972AF8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(type metadata accessor for HistoricalUsageDetailsSheet() + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A830, &qword_20D97C3F0);
  sub_20D974A48();
  v6 = sub_20D972AD8();
  (*(v1 + 8))(v4, v0);
  v9[120] = 1;
  v9[112] = 1;
  v9[104] = 1;
  v9[96] = 1;
  v9[88] = 1;
  v9[80] = 1;
  v9[72] = 1;
  v9[64] = 1;
  v9[56] = 1;
  v9[48] = 1;
  v9[40] = 1;
  v9[32] = 1;
  v9[24] = 0;
  v9[16] = 1;
  v9[8] = 1;
  v9[0] = 1;
  v10[0] = 0;
  LOWORD(v10[1]) = 513;
  v10[2] = 0;
  LOBYTE(v10[3]) = 1;
  v10[4] = 0;
  LOBYTE(v10[5]) = 1;
  memset(&v10[6], 0, 24);
  LOBYTE(v10[9]) = 1;
  memset(&v10[10], 0, 24);
  LOBYTE(v10[13]) = 1;
  v10[14] = 0;
  LOWORD(v10[15]) = 513;
  v10[16] = 0;
  LOWORD(v10[17]) = 1;
  memset(&v10[18], 0, 24);
  LOBYTE(v10[21]) = 1;
  v10[22] = 0;
  LOBYTE(v10[23]) = 1;
  v10[24] = 0;
  LOBYTE(v10[25]) = 1;
  v10[26] = 0;
  LOWORD(v10[27]) = 513;
  v10[28] = 0;
  LOWORD(v10[29]) = 513;
  v10[30] = v6;
  LOBYTE(v10[31]) = 0;
  v10[32] = 0;
  LOBYTE(v10[33]) = 1;
  v10[34] = 0;
  LOBYTE(v10[35]) = 1;
  v10[36] = 0;
  LOBYTE(v10[37]) = 1;
  nullsub_5(v10);
  type metadata accessor for HEUIFAnalyticsEvent();
  v7 = swift_allocObject();
  sub_20D7E3AF0(v11);
  *(v7 + 16) = 32;
  memcpy(v12, v11, 0x129uLL);
  memcpy((v7 + 24), v10, 0x129uLL);
  sub_20D7E3944(v12, &qword_27C838A20, &qword_20D9768E0);
  _s12HomeEnergyUI14HEUIFAnalyticsC9sendEvent5eventyAA0dF0C_tFZ_0(v7);
}

uint64_t sub_20D8EA2E8()
{
  v22 = sub_20D972AF8();
  v0 = *(v22 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v22);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_20D972628();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v22 - v10;
  sub_20D972618();
  v12 = type metadata accessor for HistoricalUsageDetailsSheet();
  v13 = *(v12 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A828, &qword_20D97F9C0);
  sub_20D974A48();
  sub_20D972458();
  v15 = v14;
  v16 = *(v5 + 8);
  v16(v9, v4);
  v16(v11, v4);
  v17 = *(v12 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A830, &qword_20D97C3F0);
  sub_20D974A48();
  v18 = sub_20D972AD8();
  (*(v0 + 8))(v3, v22);
  v38 = 0;
  v37 = 1;
  v36 = 1;
  v35 = 1;
  v34 = 1;
  v33 = 1;
  v32 = 1;
  v31 = 1;
  v30 = 1;
  v29 = 1;
  v28 = 1;
  v27 = 1;
  v26 = 0;
  v25 = 1;
  v24 = 1;
  v23 = 1;
  v39[0] = v15;
  LOWORD(v39[1]) = 512;
  v39[2] = 0;
  LOBYTE(v39[3]) = 1;
  v39[4] = 0;
  LOBYTE(v39[5]) = 1;
  memset(&v39[6], 0, 24);
  LOBYTE(v39[9]) = 1;
  memset(&v39[10], 0, 24);
  LOBYTE(v39[13]) = 1;
  v39[14] = 0;
  LOWORD(v39[15]) = 513;
  v39[16] = 0;
  LOWORD(v39[17]) = 1;
  memset(&v39[18], 0, 24);
  LOBYTE(v39[21]) = 1;
  v39[22] = 0;
  LOBYTE(v39[23]) = 1;
  v39[24] = 0;
  LOBYTE(v39[25]) = 1;
  v39[26] = 0;
  LOWORD(v39[27]) = 513;
  v39[28] = 0;
  LOWORD(v39[29]) = 513;
  v39[30] = v18;
  LOBYTE(v39[31]) = 0;
  v39[32] = 0;
  LOBYTE(v39[33]) = 1;
  v39[34] = 0;
  LOBYTE(v39[35]) = 1;
  v39[36] = 0;
  LOBYTE(v39[37]) = 1;
  nullsub_5(v39);
  type metadata accessor for HEUIFAnalyticsEvent();
  v19 = swift_allocObject();
  sub_20D7E3AF0(v40);
  *(v19 + 16) = 33;
  memcpy(v41, v40, 0x129uLL);
  memcpy((v19 + 24), v39, 0x129uLL);
  sub_20D7E3944(v41, &qword_27C838A20, &qword_20D9768E0);
  _s12HomeEnergyUI14HEUIFAnalyticsC9sendEvent5eventyAA0dF0C_tFZ_0(v19);

  if (qword_27C8385C8 != -1)
  {
    swift_once();
  }

  v20 = qword_27C840D10;
  sub_20D9725C8();
  result = sub_20D88BE64(v11);
  *(v20 + 16) = 0;
  return result;
}

uint64_t sub_20D8EA6BC(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for HistoricalUsageDetailsSheet() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

void sub_20D8EA778()
{
  type metadata accessor for HistoricalUsageSnapshotManager();
  if (v0 <= 0x3F)
  {
    sub_20D8EA8C4(319, &qword_27C83A860, MEMORY[0x277CC9578]);
    if (v1 <= 0x3F)
    {
      sub_20D8EA8C4(319, &qword_27C83A868, MEMORY[0x277D075D8]);
      if (v2 <= 0x3F)
      {
        sub_20D8EA918(319, &qword_281124D80, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
        if (v3 <= 0x3F)
        {
          sub_20D8EA918(319, &qword_27C83A870, &type metadata for EnergyTip, MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_20D8EA8C4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_20D974A78();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_20D8EA918(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_20D8EA968()
{
  result = qword_27C83A878;
  if (!qword_27C83A878)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83A848, &qword_20D97C408);
    sub_20D8EA9F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83A878);
  }

  return result;
}

unint64_t sub_20D8EA9F4()
{
  result = qword_27C83A880;
  if (!qword_27C83A880)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83A840, &qword_20D97C400);
    sub_20D7EBC4C(&qword_27C83A888, &qword_27C83A838, &qword_20D97C3F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83A880);
  }

  return result;
}

uint64_t sub_20D8EAAAC()
{
  v0 = sub_20D9726E8();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_20D975058();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_20D974FE8();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v4 = qword_28112ABE8;
  sub_20D9726B8();
  result = sub_20D975108();
  qword_27C840D30 = result;
  *algn_27C840D38 = v6;
  return result;
}

uint64_t sub_20D8EAC00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_20D8EAC68()
{
  result = qword_27C83A938;
  if (!qword_27C83A938)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83A8F8, &qword_20D97C558);
    sub_20D8EAD20();
    sub_20D7EBC4C(&qword_281126F58, &qword_27C838B60, &qword_20D9774E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83A938);
  }

  return result;
}

unint64_t sub_20D8EAD20()
{
  result = qword_27C83A940;
  if (!qword_27C83A940)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83A930, &qword_20D97C578);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83A8F0, &qword_20D97C550);
    sub_20D9741E8();
    sub_20D7EBC4C(&qword_27C83A928, &qword_27C83A8F0, &qword_20D97C550);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83A940);
  }

  return result;
}

uint64_t objectdestroyTm_3()
{
  v1 = (type metadata accessor for HistoricalUsageDetailsSheet() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + v3);

  v6 = v0 + v3 + v1[7];
  v7 = sub_20D972628();
  (*(*(v7 - 8) + 8))(v6, v7);
  v8 = *(v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A828, &qword_20D97F9C0) + 28));

  v9 = v0 + v3 + v1[8];
  v10 = sub_20D972AF8();
  (*(*(v10 - 8) + 8))(v9, v10);
  v11 = *(v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A830, &qword_20D97C3F0) + 28));

  v12 = *(v0 + v3 + v1[9] + 8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_20D8EAFC0(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for HistoricalUsageDetailsSheet() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_20D8E8520(a1, a2, v6);
}

unint64_t sub_20D8EB040()
{
  result = qword_27C83A948;
  if (!qword_27C83A948)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83A900, &qword_20D97C560);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83A8F8, &qword_20D97C558);
    sub_20D8EAC68();
    swift_getOpaqueTypeConformance2();
    sub_20D7EBC4C(&qword_281126F48, &qword_27C838B68, &unk_20D9771A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83A948);
  }

  return result;
}

uint64_t sub_20D8EB134(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_20D8EB17C()
{
  result = qword_27C83A998;
  if (!qword_27C83A998)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83A988, &qword_20D97C628);
    sub_20D8EB200();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83A998);
  }

  return result;
}

unint64_t sub_20D8EB200()
{
  result = qword_27C83A9A0;
  if (!qword_27C83A9A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83A980, &qword_20D97C620);
    sub_20D8EB134(&qword_27C83A990, type metadata accessor for HistoricalUsageIntervalView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83A9A0);
  }

  return result;
}

unint64_t sub_20D8EB2B4()
{
  result = qword_27C83A9A8;
  if (!qword_27C83A9A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83A960, &qword_20D97C600);
    sub_20D8EB134(&qword_27C83A990, type metadata accessor for HistoricalUsageIntervalView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83A9A8);
  }

  return result;
}

uint64_t sub_20D8EB370(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20D8EB3D8(uint64_t a1)
{
  v2 = type metadata accessor for HistoricalUsageIntervalView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t RectangularLockUtilityInfoView.init(widgetStartDate:infoSnapshot:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_20D9726E8();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = sub_20D975058();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  *a3 = swift_getKeyPath();
  *(a3 + 8) = 0;
  v10 = type metadata accessor for RectangularLockUtilityInfoView();
  v11 = v10[5];
  v12 = sub_20D972628();
  v13 = *(v12 - 8);
  (*(v13 + 16))(a3 + v11, a1, v12);
  sub_20D815A38(a2, a3 + v10[6]);
  if (*(a2 + *(type metadata accessor for UtilityRateInfoSnapshot() + 44)) == 6)
  {
    sub_20D974FE8();
    if (qword_281126E98 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_6;
  }

  sub_20D974FE8();
  if (qword_281126E98 != -1)
  {
LABEL_6:
    swift_once();
  }

LABEL_5:
  v14 = qword_28112ABE8;
  sub_20D9726B8();
  v15 = sub_20D975108();
  v17 = v16;
  sub_20D815AB8(a2);
  result = (*(v13 + 8))(a1, v12);
  v19 = (a3 + v10[7]);
  *v19 = v15;
  v19[1] = v17;
  return result;
}

uint64_t RectangularLockUtilityInfoView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A9C8, &qword_20D97C750);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - v5;
  *v6 = sub_20D974168();
  *(v6 + 1) = 0x3FE0000000000000;
  v6[16] = 0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A9D0, &qword_20D97C758);
  sub_20D8EB818(v1, &v6[*(v7 + 44)]);
  *&v6[*(v3 + 36)] = 0;
  sub_20D8EE150();
  sub_20D974718();
  sub_20D7E3944(v6, &qword_27C83A9C8, &qword_20D97C750);
  v8 = sub_20D973DC8();
  v9 = sub_20D974318();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A9F0, &qword_20D97C770);
  v11 = a1 + *(result + 36);
  *v11 = v8;
  *(v11 + 8) = v9;
  return result;
}

uint64_t sub_20D8EB818@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v123 = a2;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AA10, &qword_20D97C7F0);
  v3 = *(*(v110 - 8) + 64);
  MEMORY[0x28223BE20](v110);
  v106 = &v100 - v4;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AA18, &qword_20D97C7F8);
  v5 = *(*(v107 - 8) + 64);
  MEMORY[0x28223BE20](v107);
  v109 = &v100 - v6;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AA20, &qword_20D97C800);
  v7 = *(*(v122 - 8) + 64);
  MEMORY[0x28223BE20](v122);
  v111 = &v100 - v8;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AA28, &qword_20D97C808);
  v9 = *(*(v108 - 8) + 64);
  MEMORY[0x28223BE20](v108);
  v101 = (&v100 - v10);
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AA30, &qword_20D97C810);
  v11 = *(*(v115 - 8) + 64);
  MEMORY[0x28223BE20](v115);
  v104 = &v100 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AA38, &qword_20D97C818);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v102 = &v100 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v103 = (&v100 - v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AA40, &qword_20D97C820);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v22 = &v100 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v105 = (&v100 - v23);
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AA48, &qword_20D97C828);
  v24 = *(*(v116 - 8) + 64);
  MEMORY[0x28223BE20](v116);
  v121 = &v100 - v25;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AA50, &qword_20D97C830);
  v26 = *(*(v112 - 8) + 64);
  MEMORY[0x28223BE20](v112);
  v28 = &v100 - v27;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AA58, &qword_20D97C838);
  v29 = *(*(v117 - 8) + 64);
  MEMORY[0x28223BE20](v117);
  v114 = &v100 - v30;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AA60, &qword_20D97C840);
  v31 = *(*(v113 - 8) + 64);
  MEMORY[0x28223BE20](v113);
  v33 = &v100 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AA68, &qword_20D97C848);
  v35 = *(*(v34 - 8) + 64);
  v36 = MEMORY[0x28223BE20](v34 - 8);
  v38 = &v100 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v40 = &v100 - v39;
  v41 = sub_20D9726E8();
  v42 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41 - 8);
  v43 = sub_20D975058();
  v44 = *(*(v43 - 8) + 64);
  MEMORY[0x28223BE20](v43 - 8);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AA70, &qword_20D97C850);
  v46 = *(*(v45 - 8) + 64);
  v47 = MEMORY[0x28223BE20](v45 - 8);
  v120 = &v100 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v47);
  v119 = &v100 - v49;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838EC0, &unk_20D977FE0);
  v51 = *(*(v50 - 8) + 64);
  v52 = MEMORY[0x28223BE20](v50 - 8);
  v118 = &v100 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v52);
  v55 = &v100 - v54;
  *v55 = sub_20D974088();
  *(v55 + 1) = 0;
  v55[16] = 1;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838EC8, &qword_20D9777B0);
  sub_20D8EC7A4(a1, &v55[*(v56 + 44)]);
  v57 = a1 + *(type metadata accessor for RectangularLockUtilityInfoView() + 24);
  v58 = type metadata accessor for UtilityRateInfoSnapshot();
  if (*(v57 + *(v58 + 44)) == 6)
  {
    v59 = *(v58 + 40);
    v60 = *(v57 + v59);
    if (v60 == 7)
    {
      goto LABEL_3;
    }

    if (sub_20D96659C(v60, 1u))
    {
      v82 = sub_20D974088();
      v83 = v105;
      *v105 = v82;
      *(v83 + 8) = 0x4008000000000000;
      *(v83 + 16) = 0;
      v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AAC8, &qword_20D97C870);
      sub_20D8ECDE4((v83 + *(v84 + 44)));
      v85 = sub_20D974088();
      v86 = v103;
      *v103 = v85;
      *(v86 + 8) = 0;
      *(v86 + 16) = 1;
      v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AAD0, &qword_20D97C878);
      sub_20D8ED144(a1, v86 + *(v87 + 44));
      sub_20D7EB7E8(v83, v22, &qword_27C83AA40, &qword_20D97C820);
      v88 = v102;
      sub_20D7EB7E8(v86, v102, &qword_27C83AA38, &qword_20D97C818);
      v89 = v104;
      sub_20D7EB7E8(v22, v104, &qword_27C83AA40, &qword_20D97C820);
      v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AAD8, &qword_20D97C880);
      sub_20D7EB7E8(v88, v89 + *(v90 + 48), &qword_27C83AA38, &qword_20D97C818);
      sub_20D7E3944(v88, &qword_27C83AA38, &qword_20D97C818);
      sub_20D7E3944(v22, &qword_27C83AA40, &qword_20D97C820);
      sub_20D7EB7E8(v89, v28, &qword_27C83AA30, &qword_20D97C810);
      swift_storeEnumTagMultiPayload();
      sub_20D7EBC4C(&qword_27C83AAA0, &qword_27C83AA60, &qword_20D97C840);
      sub_20D7EBC4C(&qword_27C83AAA8, &qword_27C83AA30, &qword_20D97C810);
      v91 = v114;
      sub_20D9741B8();
      sub_20D7EB7E8(v91, v121, &qword_27C83AA58, &qword_20D97C838);
      swift_storeEnumTagMultiPayload();
      sub_20D8EE4EC();
      sub_20D8EE5CC();
      v71 = v119;
      sub_20D9741B8();
      sub_20D7E3944(v91, &qword_27C83AA58, &qword_20D97C838);
      sub_20D7E3944(v89, &qword_27C83AA30, &qword_20D97C810);
      sub_20D7E3944(v86, &qword_27C83AA38, &qword_20D97C818);
      v72 = v105;
      v73 = &qword_27C83AA40;
      v74 = &qword_20D97C820;
      goto LABEL_10;
    }

    v97 = *(v57 + v59);
    if (v97 == 7 || (sub_20D96659C(v97, 2u) & 1) == 0)
    {
LABEL_3:
      v61 = sub_20D974088();
      sub_20D8EDE48(a1, &v124);
      v63 = v124;
      v62 = v125;
      v64 = v126;
      v65 = v127;
      v66 = v128;
      v133 = 0;
      v132 = v127;
      v124 = v61;
      v125 = 0x4008000000000000;
      LOBYTE(v126) = 0;
      v127 = v63;
      v128 = v62;
      v129 = v64;
      v130 = v132;
      v131 = v66;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AA78, &qword_20D97C858);
      sub_20D7EBC4C(&qword_27C83AA80, &qword_27C83AA78, &qword_20D97C858);
      v67 = v106;
      sub_20D9747D8();

      sub_20D7EADC0(v62, v64, v65);

      v68 = &qword_27C83AA10;
      v69 = &qword_20D97C7F0;
      sub_20D7EB7E8(v67, v109, &qword_27C83AA10, &qword_20D97C7F0);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      v98 = sub_20D974088();
      v67 = v101;
      *v101 = v98;
      *(v67 + 8) = 0x4008000000000000;
      *(v67 + 16) = 0;
      v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AAC0, &qword_20D97C868);
      sub_20D8EDAB8((v67 + *(v99 + 44)));
      v68 = &qword_27C83AA28;
      v69 = &qword_20D97C808;
      sub_20D7EB7E8(v67, v109, &qword_27C83AA28, &qword_20D97C808);
      swift_storeEnumTagMultiPayload();
    }

    sub_20D7EBC4C(&qword_27C83AA88, &qword_27C83AA28, &qword_20D97C808);
    sub_20D8EE434();
    v70 = v111;
    sub_20D9741B8();
    sub_20D7EB7E8(v70, v121, &qword_27C83AA20, &qword_20D97C800);
    swift_storeEnumTagMultiPayload();
    sub_20D8EE4EC();
    sub_20D8EE5CC();
    v71 = v119;
    sub_20D9741B8();
    sub_20D7E3944(v70, &qword_27C83AA20, &qword_20D97C800);
    v72 = v67;
    v73 = v68;
    v74 = v69;
LABEL_10:
    sub_20D7E3944(v72, v73, v74);
    goto LABEL_11;
  }

  sub_20D974FE8();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v75 = qword_28112ABE8;
  sub_20D9726B8();
  v76 = sub_20D975108();
  v78 = v77;
  *v40 = sub_20D974088();
  *(v40 + 1) = 0;
  v40[16] = 1;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AAE0, &qword_20D97C888);
  sub_20D8EC9E4(v76, v78, &v40[*(v79 + 44)]);

  sub_20D7EB7E8(v40, v38, &qword_27C83AA68, &qword_20D97C848);
  sub_20D7EB7E8(v38, v33, &qword_27C83AA68, &qword_20D97C848);
  v80 = &v33[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AAE8, &unk_20D97C890) + 48)];
  *v80 = 0;
  v80[8] = 1;
  sub_20D7E3944(v38, &qword_27C83AA68, &qword_20D97C848);
  sub_20D7EB7E8(v33, v28, &qword_27C83AA60, &qword_20D97C840);
  swift_storeEnumTagMultiPayload();
  sub_20D7EBC4C(&qword_27C83AAA0, &qword_27C83AA60, &qword_20D97C840);
  sub_20D7EBC4C(&qword_27C83AAA8, &qword_27C83AA30, &qword_20D97C810);
  v81 = v114;
  sub_20D9741B8();
  sub_20D7EB7E8(v81, v121, &qword_27C83AA58, &qword_20D97C838);
  swift_storeEnumTagMultiPayload();
  sub_20D8EE4EC();
  sub_20D8EE5CC();
  v71 = v119;
  sub_20D9741B8();
  sub_20D7E3944(v81, &qword_27C83AA58, &qword_20D97C838);
  sub_20D7E3944(v33, &qword_27C83AA60, &qword_20D97C840);
  sub_20D7E3944(v40, &qword_27C83AA68, &qword_20D97C848);
LABEL_11:
  v92 = v118;
  sub_20D7EB7E8(v55, v118, &qword_27C838EC0, &unk_20D977FE0);
  v93 = v120;
  sub_20D7EB7E8(v71, v120, &qword_27C83AA70, &qword_20D97C850);
  v94 = v123;
  sub_20D7EB7E8(v92, v123, &qword_27C838EC0, &unk_20D977FE0);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AAB8, &qword_20D97C860);
  sub_20D7EB7E8(v93, v94 + *(v95 + 48), &qword_27C83AA70, &qword_20D97C850);
  sub_20D7E3944(v71, &qword_27C83AA70, &qword_20D97C850);
  sub_20D7E3944(v55, &qword_27C838EC0, &unk_20D977FE0);
  sub_20D7E3944(v93, &qword_27C83AA70, &qword_20D97C850);
  return sub_20D7E3944(v92, &qword_27C838EC0, &unk_20D977FE0);
}

uint64_t sub_20D8EC7A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838F18, &unk_20D977860);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v27 - v8;
  v10 = (a1 + *(type metadata accessor for RectangularLockUtilityInfoView() + 28));
  v11 = v10[1];
  v28 = *v10;
  v29 = v11;
  sub_20D7E1EF8();

  v12 = sub_20D9745C8();
  v14 = v13;
  v16 = v15;
  LODWORD(v28) = sub_20D974248();
  v17 = sub_20D974518();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  sub_20D7EADC0(v12, v14, v16 & 1);

  v28 = v17;
  v29 = v19;
  v21 &= 1u;
  v30 = v21;
  v31 = v23;
  sub_20D9747D8();
  sub_20D7EADC0(v17, v19, v21);

  sub_20D7EB7E8(v9, v7, &qword_27C838F18, &unk_20D977860);
  v24 = v27;
  sub_20D7EB7E8(v7, v27, &qword_27C838F18, &unk_20D977860);
  v25 = v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838F20, &unk_20D97C950) + 48);
  *v25 = 0;
  *(v25 + 8) = 1;
  sub_20D7E3944(v9, &qword_27C838F18, &unk_20D977860);
  return sub_20D7E3944(v7, &qword_27C838F18, &unk_20D977860);
}

uint64_t sub_20D8EC9E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v46 = a3;
  v43 = sub_20D974458();
  v41 = *(v43 - 8);
  v5 = *(v41 + 64);
  MEMORY[0x28223BE20](v43);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838F00, &qword_20D9777E8);
  v8 = *(*(v45 - 8) + 64);
  MEMORY[0x28223BE20](v45);
  v10 = &v40 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AAF0, &qword_20D97C8A0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v44 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v42 = &v40 - v15;
  v47 = a1;
  v48 = a2;
  sub_20D7E1EF8();

  v16 = sub_20D9745C8();
  v18 = v17;
  v20 = v19;
  LODWORD(v47) = sub_20D974248();
  v21 = sub_20D974518();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  sub_20D7EADC0(v16, v18, v20 & 1);

  v47 = v21;
  v48 = v23;
  v49 = v25 & 1;
  v50 = v27;
  sub_20D974868();
  sub_20D7EADC0(v21, v23, v25 & 1);

  sub_20D974488();
  v28 = v41;
  v29 = v43;
  (*(v41 + 104))(v7, *MEMORY[0x277CE0A10], v43);
  v30 = sub_20D974478();

  (*(v28 + 8))(v7, v29);
  KeyPath = swift_getKeyPath();
  v32 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838F08, &qword_20D977820) + 36)];
  *v32 = KeyPath;
  v32[1] = v30;
  v33 = swift_getKeyPath();
  v34 = &v10[*(v45 + 36)];
  *v34 = v33;
  v34[8] = 0;
  sub_20D8EE6D8();
  v35 = v42;
  sub_20D9747D8();
  sub_20D7E3944(v10, &qword_27C838F00, &qword_20D9777E8);
  v36 = v44;
  sub_20D7EB7E8(v35, v44, &qword_27C83AAF0, &qword_20D97C8A0);
  v37 = v46;
  sub_20D7EB7E8(v36, v46, &qword_27C83AAF0, &qword_20D97C8A0);
  v38 = v37 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AB10, &unk_20D97C910) + 48);
  *v38 = 0;
  *(v38 + 8) = 1;
  sub_20D7E3944(v35, &qword_27C83AAF0, &qword_20D97C8A0);
  return sub_20D7E3944(v36, &qword_27C83AAF0, &qword_20D97C8A0);
}

uint64_t sub_20D8ECDE4@<X0>(uint64_t *a1@<X8>)
{
  v36 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838F18, &unk_20D977860);
  v33 = *(v1 - 8);
  v34 = v1;
  v2 = *(v33 + 64);
  MEMORY[0x28223BE20](v1);
  v32 = &v31 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AB18, &qword_20D97C928);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v35 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v31 - v8;
  v10 = *(type metadata accessor for RectangularLockUtilityInfoView() + 24);
  v11 = UtilityRateInfoSnapshot.peakSymbol.getter();
  UtilityRateInfoSnapshot.attributedPeak.getter(&v42);
  v12 = v45;
  if (v45 != 1)
  {
    v31 = v11;
    v14 = v43;
    v13 = v44;
    v15 = v42;
    v37 = v42;
    v38 = v43 & 1;
    v39 = v44;
    v40 = v45;
    v41 = v46;
    PeakPeriodAttributes.variableValue.getter();
    sub_20D8EE800(v15, v14, v13, v12);
  }

  v16 = sub_20D9749A8();
  v17 = UtilityRateInfoSnapshot.peakName.getter();
  if (v18)
  {
    v42 = v17;
    v43 = v18;
    sub_20D7E1EF8();
    v19 = sub_20D9745C8();
    v21 = v20;
    v42 = v19;
    v43 = v20;
    v23 = v22 & 1;
    LOBYTE(v44) = v22 & 1;
    v45 = v24;
    v25 = v32;
    sub_20D9747D8();
    sub_20D7EADC0(v19, v21, v23);

    sub_20D8EE790(v25, v9);
    (*(v33 + 56))(v9, 0, 1, v34);
  }

  else
  {
    (*(v33 + 56))(v9, 1, 1, v34);
  }

  v26 = v35;
  sub_20D7EB7E8(v9, v35, &qword_27C83AB18, &qword_20D97C928);
  v27 = v36;
  *v36 = v16;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AB28, &qword_20D97C940);
  sub_20D7EB7E8(v26, v27 + *(v28 + 48), &qword_27C83AB18, &qword_20D97C928);
  v29 = v27 + *(v28 + 64);
  *v29 = 0;
  v29[8] = 1;

  sub_20D7E3944(v9, &qword_27C83AB18, &qword_20D97C928);
  sub_20D7E3944(v26, &qword_27C83AB18, &qword_20D97C928);
}

uint64_t sub_20D8ED144@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v89 = a2;
  v3 = sub_20D972188();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v84 = v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_20D972838();
  v83 = *(v85 - 8);
  v6 = *(v83 + 64);
  MEMORY[0x28223BE20](v85);
  v78 = v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20D9727D8();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v77 = v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8396E8, &unk_20D9798C0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v76 = v71 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C83CA50, &qword_20D97C920);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v75 = v71 - v16;
  v17 = sub_20D972408();
  v81 = *(v17 - 8);
  v82 = v17;
  v18 = *(v81 + 64);
  MEMORY[0x28223BE20](v17);
  v80 = v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_20D9726E8();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = sub_20D975058();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838F18, &unk_20D977860);
  v88 = *(v24 - 8);
  v25 = *(v88 + 64);
  MEMORY[0x28223BE20](v24);
  v79 = v71 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v30 = v71 - v29;
  v31 = sub_20D972628();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  v35 = v71 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AB18, &qword_20D97C928);
  v37 = *(*(v36 - 8) + 64);
  v38 = MEMORY[0x28223BE20](v36 - 8);
  v40 = v71 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v42 = v71 - v41;
  v43 = a1 + *(type metadata accessor for RectangularLockUtilityInfoView() + 24);
  UtilityRateInfoSnapshot.peakUntil.getter(v30);
  v86 = v32;
  v87 = v31;
  if ((*(v32 + 48))(v30, 1, v31) == 1)
  {
    sub_20D7E3944(v30, &qword_27C8389E8, &qword_20D9768D0);
    v44 = 1;
  }

  else
  {
    v72 = v42;
    v73 = v40;
    v74 = v24;
    (*(v86 + 32))(v35, v30, v87);
    v45 = *(type metadata accessor for UtilityRateInfoSnapshot() + 36);
    if (qword_281126E98 != -1)
    {
      swift_once();
    }

    v46 = qword_28112ABE8;
    sub_20D88F060(v35, v43 + v45);
    sub_20D975068();
    sub_20D9726B8();
    v47 = v46;
    v71[1] = sub_20D975108();
    v71[0] = v48;
    v49 = sub_20D972248();
    (*(*(v49 - 8) + 56))(v75, 1, 1, v49);
    v50 = v76;
    sub_20D9721F8();
    v51 = sub_20D972208();
    (*(*(v51 - 8) + 56))(v50, 0, 1, v51);
    sub_20D9726A8();
    v52 = v35;
    sub_20D972738();
    v53 = v78;
    sub_20D972818();
    sub_20D972178();
    v54 = v80;
    sub_20D972268();
    (*(v83 + 16))(v53, v43 + v45, v85);
    sub_20D9723F8();
    v55 = sub_20D9723C8();
    v57 = v56;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8394D0, &qword_20D9790A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_20D979110;
    *(inited + 32) = v55;
    *(inited + 40) = v57;
    v90 = inited;
    sub_20D95AEB8(MEMORY[0x277D84F90]);
    sub_20D9678F8(v90);

    v59 = sub_20D9750B8();
    v61 = v60;

    (*(v81 + 8))(v54, v82);
    v90 = v59;
    v91 = v61;
    sub_20D7E1EF8();
    v62 = sub_20D9745C8();
    v64 = v63;
    v90 = v62;
    v91 = v63;
    LOBYTE(v53) = v65 & 1;
    v92 = v65 & 1;
    v93 = v66;
    v67 = v79;
    sub_20D9747D8();
    sub_20D7EADC0(v62, v64, v53);

    (*(v86 + 8))(v52, v87);
    v42 = v72;
    sub_20D8EE790(v67, v72);
    v44 = 0;
    v24 = v74;
    v40 = v73;
  }

  (*(v88 + 56))(v42, v44, 1, v24);
  sub_20D7EB7E8(v42, v40, &qword_27C83AB18, &qword_20D97C928);
  v68 = v89;
  sub_20D7EB7E8(v40, v89, &qword_27C83AB18, &qword_20D97C928);
  v69 = v68 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AB20, &unk_20D97C930) + 48);
  *v69 = 0;
  *(v69 + 8) = 1;
  sub_20D7E3944(v42, &qword_27C83AB18, &qword_20D97C928);
  return sub_20D7E3944(v40, &qword_27C83AB18, &qword_20D97C928);
}

uint64_t sub_20D8EDAB8@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_20D9726E8();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = sub_20D975058();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838F18, &unk_20D977860);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v31 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v29 - v10;
  v12 = *(type metadata accessor for RectangularLockUtilityInfoView() + 24);
  UtilityRateInfoSnapshot.peakSymbol.getter();
  UtilityRateInfoSnapshot.attributedPeak.getter(&v37);
  v13 = v40;
  if (v40 != 1)
  {
    v29 = v11;
    v30 = a1;
    v15 = v38;
    v14 = v39;
    v16 = v37;
    v32 = v37;
    v33 = v38 & 1;
    v34 = v39;
    v35 = v40;
    v36 = v41;
    PeakPeriodAttributes.variableValue.getter();
    v11 = v29;
    a1 = v30;
    sub_20D8EE800(v16, v15, v14, v13);
  }

  v17 = sub_20D9749A8();
  sub_20D974FE8();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v18 = qword_28112ABE8;
  sub_20D9726B8();
  v37 = sub_20D975108();
  v38 = v19;
  sub_20D7E1EF8();
  v20 = sub_20D9745C8();
  v22 = v21;
  v37 = v20;
  v38 = v21;
  v24 = v23 & 1;
  LOBYTE(v39) = v23 & 1;
  v40 = v25;
  sub_20D9747D8();
  sub_20D7EADC0(v20, v22, v24);

  v26 = v31;
  sub_20D7EB7E8(v11, v31, &qword_27C838F18, &unk_20D977860);
  *a1 = v17;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AB30, &qword_20D97C948);
  sub_20D7EB7E8(v26, a1 + *(v27 + 48), &qword_27C838F18, &unk_20D977860);

  sub_20D7E3944(v11, &qword_27C838F18, &unk_20D977860);
  sub_20D7E3944(v26, &qword_27C838F18, &unk_20D977860);
}

uint64_t sub_20D8EDE48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for RectangularLockUtilityInfoView() + 24);
  UtilityRateInfoSnapshot.peakSymbol.getter();
  UtilityRateInfoSnapshot.attributedPeak.getter(&v19);
  v4 = v22;
  if (v22 != 1)
  {
    v6 = v20;
    v5 = v21;
    v7 = v19;
    PeakPeriodAttributes.variableValue.getter();
    sub_20D8EE800(v7, v6, v5, v4);
  }

  v8 = sub_20D9749A8();
  v9 = type metadata accessor for UtilityRateInfoSnapshot();
  if (*(v3 + *(v9 + 40)) == 7)
  {
    v10 = 0xE200000000000000;
    v11 = 11565;
  }

  else
  {
    LOBYTE(v19) = *(v3 + *(v9 + 40));
    v11 = sub_20D967D64();
  }

  v19 = v11;
  v20 = v10;
  sub_20D7E1EF8();
  v12 = sub_20D9745C8();
  v14 = v13;
  *a2 = v8;
  *(a2 + 8) = v12;
  *(a2 + 16) = v13;
  v16 = v15 & 1;
  *(a2 + 24) = v15 & 1;
  *(a2 + 32) = v17;

  sub_20D7DDC4C(v12, v14, v16);

  sub_20D7EADC0(v12, v14, v16);
}

uint64_t sub_20D8EDFDC@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A9C8, &qword_20D97C750);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - v5;
  *v6 = sub_20D974168();
  *(v6 + 1) = 0x3FE0000000000000;
  v6[16] = 0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A9D0, &qword_20D97C758);
  sub_20D8EB818(v1, &v6[*(v7 + 44)]);
  *&v6[*(v3 + 36)] = 0;
  sub_20D8EE150();
  sub_20D974718();
  sub_20D7E3944(v6, &qword_27C83A9C8, &qword_20D97C750);
  v8 = sub_20D973DC8();
  v9 = sub_20D974318();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A9F0, &qword_20D97C770);
  v11 = a1 + *(result + 36);
  *v11 = v8;
  *(v11 + 8) = v9;
  return result;
}

uint64_t type metadata accessor for RectangularLockUtilityInfoView()
{
  result = qword_27C83A9F8;
  if (!qword_27C83A9F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_20D8EE150()
{
  result = qword_27C83A9D8;
  if (!qword_27C83A9D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83A9C8, &qword_20D97C750);
    sub_20D7EBC4C(&qword_27C83A9E0, &qword_27C83A9E8, &unk_20D97C760);
    sub_20D7EBC4C(&qword_281124FF0, &qword_27C838E68, &qword_20D9776C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83A9D8);
  }

  return result;
}

void sub_20D8EE278()
{
  sub_20D8EE31C();
  if (v0 <= 0x3F)
  {
    sub_20D972628();
    if (v1 <= 0x3F)
    {
      type metadata accessor for UtilityRateInfoSnapshot();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_20D8EE31C()
{
  if (!qword_281125000)
  {
    v0 = sub_20D973B28();
    if (!v1)
    {
      atomic_store(v0, &qword_281125000);
    }
  }
}

unint64_t sub_20D8EE36C()
{
  result = qword_27C83AA08;
  if (!qword_27C83AA08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83A9F0, &qword_20D97C770);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83A9C8, &qword_20D97C750);
    sub_20D8EE150();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83AA08);
  }

  return result;
}

unint64_t sub_20D8EE434()
{
  result = qword_27C83AA90;
  if (!qword_27C83AA90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83AA10, &qword_20D97C7F0);
    sub_20D7EBC4C(&qword_27C83AA80, &qword_27C83AA78, &qword_20D97C858);
    sub_20D7EB424();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83AA90);
  }

  return result;
}

unint64_t sub_20D8EE4EC()
{
  result = qword_27C83AA98;
  if (!qword_27C83AA98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83AA58, &qword_20D97C838);
    sub_20D7EBC4C(&qword_27C83AAA0, &qword_27C83AA60, &qword_20D97C840);
    sub_20D7EBC4C(&qword_27C83AAA8, &qword_27C83AA30, &qword_20D97C810);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83AA98);
  }

  return result;
}

unint64_t sub_20D8EE5CC()
{
  result = qword_27C83AAB0;
  if (!qword_27C83AAB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C83AA20, &qword_20D97C800);
    sub_20D7EBC4C(&qword_27C83AA88, &qword_27C83AA28, &qword_20D97C808);
    sub_20D8EE434();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83AAB0);
  }

  return result;
}

uint64_t sub_20D8EE684@<X0>(_BYTE *a1@<X8>)
{
  result = sub_20D973F28();
  *a1 = result;
  return result;
}

unint64_t sub_20D8EE6D8()
{
  result = qword_27C83AAF8;
  if (!qword_27C83AAF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C838F00, &qword_20D9777E8);
    sub_20D7FF1F4();
    sub_20D7EBC4C(&qword_27C83AB00, &qword_27C83AB08, &qword_20D97D780);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C83AAF8);
  }

  return result;
}

uint64_t sub_20D8EE790(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838F18, &unk_20D977860);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20D8EE800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 1)
  {
  }

  return result;
}

uint64_t type metadata accessor for HistoricalUsageChart()
{
  result = qword_27C83ABA0;
  if (!qword_27C83ABA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20D8EE888()
{
  type metadata accessor for HistoricalUsageSnapshot();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CGSize(319);
    if (v1 <= 0x3F)
    {
      sub_20D8EEAEC();
      if (v2 <= 0x3F)
      {
        sub_20D8EEBA0(319, &qword_27C83ABB0, MEMORY[0x277CC9578], MEMORY[0x277CE11F8]);
        if (v3 <= 0x3F)
        {
          sub_20D8EEB3C();
          if (v4 <= 0x3F)
          {
            sub_20D972628();
            if (v5 <= 0x3F)
            {
              sub_20D8EEBA0(319, &qword_27C83ABC0, type metadata accessor for CGSize, MEMORY[0x277CE10B8]);
              if (v6 <= 0x3F)
              {
                sub_20D8EEBA0(319, &qword_281127050, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
                if (v7 <= 0x3F)
                {
                  sub_20D8EEBA0(319, &qword_281127058, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
                  if (v8 <= 0x3F)
                  {
                    sub_20D8EEBA0(319, &qword_27C83ABC8, MEMORY[0x277CDFAA0], MEMORY[0x277CDF468]);
                    if (v9 <= 0x3F)
                    {
                      sub_20D7E63C4();
                      if (v10 <= 0x3F)
                      {
                        swift_cvw_initStructMetadataWithLayoutString();
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

void sub_20D8EEAEC()
{
  if (!qword_281124BD8)
  {
    v0 = sub_20D975508();
    if (!v1)
    {
      atomic_store(v0, &qword_281124BD8);
    }
  }
}

void sub_20D8EEB3C()
{
  if (!qword_27C83ABB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8389E8, &qword_20D9768D0);
    v0 = sub_20D974B58();
    if (!v1)
    {
      atomic_store(v0, &qword_27C83ABB8);
    }
  }
}

void sub_20D8EEBA0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_20D8EEC20@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B128, &unk_20D97D130);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v19 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A130, &qword_20D97B288);
  sub_20D973648();
  v10 = *(v9 - 8);
  (*(v10 + 16))(v8, *a1, v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839F78, &qword_20D97AF78);
  sub_20D8AB914();
  v12 = *(v5 + 56);
  v20 = v12;
  v13 = *(v11 - 8);
  (*(v13 + 16))(&v8[v12], a1[1], v11);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A120, &qword_20D97B278);
  sub_20D973978();
  v15 = *(v5 + 72);
  v16 = a1[2];
  v17 = *(v14 - 8);
  (*(v17 + 16))(&v8[v15], v16, v14);
  (*(v10 + 32))(a2, v8, v9);
  (*(v13 + 32))(a2 + *(v5 + 56), &v8[v20], v11);
  return (*(v17 + 32))(a2 + *(v5 + 72), &v8[v15], v14);
}

uint64_t sub_20D8EEE5C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B020, &qword_20D97CEA0);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v19 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B008, &qword_20D97CDD0);
  sub_20D909D58();
  v10 = *(v9 - 8);
  v11 = *(v10 + 16);
  v11(v8, *a1, v9);
  v12 = *(v5 + 56);
  v11(&v8[v12], a1[1], v9);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B018, &qword_20D97CE98);
  v14 = *(v5 + 72);
  v15 = a1[2];
  v16 = *(v13 - 8);
  (*(v16 + 16))(&v8[v14], v15, v13);
  v17 = *(v10 + 32);
  v17(a2, v8, v9);
  v17(a2 + *(v5 + 56), &v8[v12], v9);
  return (*(v16 + 32))(a2 + *(v5 + 72), &v8[v14], v13);
}

uint64_t sub_20D8EF030@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B010, &qword_20D97CE90);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v19 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B008, &qword_20D97CDD0);
  sub_20D909D58();
  v10 = *(v9 - 8);
  v11 = *(v10 + 16);
  v11(v8, *a1, v9);
  v12 = *(v5 + 56);
  v11(&v8[v12], a1[1], v9);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AFE8, &qword_20D97CDB0);
  sub_20D7EBC4C(&qword_27C83ACC8, &qword_27C83ACC0, &qword_20D97CAA8);
  v14 = *(v5 + 72);
  v15 = a1[2];
  v16 = *(v13 - 8);
  (*(v16 + 16))(&v8[v14], v15, v13);
  v17 = *(v10 + 32);
  v17(a2, v8, v9);
  v17(a2 + *(v5 + 56), &v8[v12], v9);
  return (*(v16 + 32))(a2 + *(v5 + 72), &v8[v14], v13);
}

uint64_t sub_20D8EF234@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B068, &qword_20D97CF20);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - v7;
  sub_20D9099DC();
  sub_20D7EB7E8(*a1, v8, &qword_27C83AC58, &qword_20D97CA68);
  sub_20D90AE28();
  v9 = *(v5 + 56);
  sub_20D7EB7E8(a1[1], &v8[v9], &qword_27C83AE28, &qword_20D97CB70);
  v10 = *(v5 + 72);
  sub_20D7EB7E8(a1[2], &v8[v10], &qword_27C83AE28, &qword_20D97CB70);
  sub_20D7EAF18(v8, a2, &qword_27C83AC58, &qword_20D97CA68);
  sub_20D7EAF18(&v8[v9], a2 + *(v5 + 56), &qword_27C83AE28, &qword_20D97CB70);
  return sub_20D7EAF18(&v8[v10], a2 + *(v5 + 72), &qword_27C83AE28, &qword_20D97CB70);
}

uint64_t sub_20D8EF37C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B0C8, &qword_20D97D0A8);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B0D0, &unk_20D97D0B0);
  sub_20D9102F0();
  sub_20D910610();
  v10 = *(v9 - 8);
  (*(v10 + 16))(v8, *a1, v9);
  sub_20D910724();
  v11 = *(v5 + 56);
  sub_20D7EB7E8(a1[1], &v8[v11], &qword_27C83B110, &unk_20D97D0F0);
  sub_20D910828();
  v12 = *(v5 + 72);
  sub_20D7EB7E8(a1[2], &v8[v12], &qword_27C83B118, &unk_20D97D100);
  (*(v10 + 32))(a2, v8, v9);
  sub_20D7EAF18(&v8[v11], a2 + *(v5 + 56), &qword_27C83B110, &unk_20D97D0F0);
  return sub_20D7EAF18(&v8[v12], a2 + *(v5 + 72), &qword_27C83B118, &unk_20D97D100);
}

uint64_t sub_20D8EF520@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AFB8, &qword_20D97CCB0);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v20 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AFB0, &qword_20D97CCA8);
  sub_20D973578();
  v10 = *a1;
  v21 = v9;
  v11 = *(v9 - 8);
  (*(v11 + 16))(v8, v10, v9);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AFA8, &qword_20D97CCA0);
  sub_20D7EBC4C(&qword_281125058, &qword_27C83AFA0, &unk_20D97E150);
  v13 = *(v5 + 56);
  v14 = *(v12 - 8);
  (*(v14 + 16))(&v8[v13], a1[1], v12);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A0D0, &qword_20D97B1F8);
  sub_20D973938();
  v16 = *(v5 + 72);
  v17 = a1[2];
  v18 = *(v15 - 8);
  (*(v18 + 16))(&v8[v16], v17, v15);
  (*(v11 + 32))(a2, v8, v21);
  (*(v14 + 32))(a2 + *(v5 + 56), &v8[v13], v12);
  return (*(v18 + 32))(a2 + *(v5 + 72), &v8[v16], v15);
}

uint64_t sub_20D8EF784@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_20D974048();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FA0, &qword_20D977960);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for HistoricalUsageChart();
  sub_20D7EB7E8(v1 + *(v12 + 60), v11, &qword_27C838FA0, &qword_20D977960);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_20D973D58();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_20D975468();
    v16 = sub_20D9742C8();
    sub_20D973408();

    sub_20D974038();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_20D8EF98C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_20D974048();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838AA0, &qword_20D978750);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for HistoricalUsageChart();
  sub_20D7EB7E8(v1 + *(v12 + 64), v11, &qword_27C838AA0, &qword_20D978750);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_20D973B18();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_20D975468();
    v16 = sub_20D9742C8();
    sub_20D973408();

    sub_20D974038();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_20D8EFB94@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_20D974048();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AEA8, &unk_20D97E1E0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for HistoricalUsageChart();
  sub_20D7EB7E8(v1 + *(v12 + 68), v11, &qword_27C83AEA8, &unk_20D97E1E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_20D973D78();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_20D975468();
    v16 = sub_20D9742C8();
    sub_20D973408();

    sub_20D974038();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_20D8EFD9C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v33 - v5;
  v7 = sub_20D972628();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v33 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v33 - v16;
  v18 = type metadata accessor for HistoricalUsageChart();
  v19 = *(v18 + 36);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AB90, &unk_20D97D270);
  v34 = v1;
  MEMORY[0x20F322CD0](v20);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_20D7E3944(v6, &qword_27C8389E8, &qword_20D9768D0);
    v21 = 1;
  }

  else
  {
    v33 = a1;
    (*(v8 + 32))(v17, v6, v7);
    v22 = *(v18 + 32);
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AB88, &unk_20D97C960);
    MEMORY[0x20F322CD0]();
    sub_20D911038(&qword_281126E30, MEMORY[0x277CC9578]);
    v24 = sub_20D974FA8();
    v25 = *(v8 + 8);
    v25(v15, v7);
    if (v24)
    {
      goto LABEL_6;
    }

    v26 = v34;
    MEMORY[0x20F322CD0](v23);
    v27 = v26 + *(type metadata accessor for HistoricalUsageSnapshot() + 52);
    v28 = type metadata accessor for HistoricalUsageSnapshotDerivedInfo(0);
    v29 = *(v27 + *(v28 + 24));
    sub_20D972558();
    v25(v12, v7);
    v30 = sub_20D972548();
    v25(v15, v7);
    if ((v30 & 1) == 0)
    {
LABEL_6:
      v25(v17, v7);
      v21 = 1;
      a1 = v33;
    }

    else
    {
      v31 = v27 + *(v28 + 64);
      a1 = v33;
      sub_20D972D38();
      v25(v17, v7);
      v21 = 0;
    }
  }

  return (*(v8 + 56))(a1, v21, 1, v7);
}

uint64_t sub_20D8F0118@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v305 = a1;
  v304 = sub_20D973D58();
  v303 = *(v304 - 8);
  v3 = *(v303 + 64);
  MEMORY[0x28223BE20](v304);
  v302 = &v247 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v296 = sub_20D973818();
  v295 = *(v296 - 8);
  v5 = *(v295 + 64);
  MEMORY[0x28223BE20](v296);
  v292 = &v247 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83ABD0, &qword_20D97C9F0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v291 = &v247 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83CAA0, &qword_20D978AA0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v283 = &v247 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839548, &unk_20D979C20);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v279 = &v247 - v15;
  v287 = sub_20D971EA8();
  v285 = *(v287 - 8);
  v16 = *(v285 + 64);
  v17 = MEMORY[0x28223BE20](v287);
  v278 = &v247 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v284 = &v247 - v19;
  v294 = sub_20D973868();
  v289 = *(v294 - 8);
  v20 = *(v289 + 64);
  MEMORY[0x28223BE20](v294);
  v286 = &v247 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83ABD8, &qword_20D97C9F8);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v316 = &v247 - v24;
  v267 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AB90, &unk_20D97D270);
  v25 = *(*(v267 - 8) + 64);
  MEMORY[0x28223BE20](v267);
  v268 = &v247 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AB88, &unk_20D97C960);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27);
  v263 = &v247 - v29;
  v255 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83ABE0, &qword_20D97CA00);
  v253 = *(v255 - 8);
  v30 = *(v253 + 64);
  MEMORY[0x28223BE20](v255);
  v252 = &v247 - v31;
  v258 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83ABE8, &qword_20D97CA08);
  v256 = *(v258 - 8);
  v32 = *(v256 + 64);
  MEMORY[0x28223BE20](v258);
  v254 = &v247 - v33;
  v261 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83ABF0, &qword_20D97CA10);
  v259 = *(v261 - 8);
  v34 = *(v259 + 64);
  MEMORY[0x28223BE20](v261);
  v257 = &v247 - v35;
  v264 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83ABF8, &qword_20D97CA18);
  v262 = *(v264 - 8);
  v36 = *(v262 + 64);
  MEMORY[0x28223BE20](v264);
  v260 = &v247 - v37;
  v269 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AC00, &qword_20D97CA20);
  v266 = *(v269 - 8);
  v38 = *(v266 + 64);
  MEMORY[0x28223BE20](v269);
  v265 = &v247 - v39;
  v272 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AC08, &qword_20D97CA28);
  v270 = *(v272 - 8);
  v40 = *(v270 + 64);
  MEMORY[0x28223BE20](v272);
  v310 = &v247 - v41;
  v275 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AC10, &qword_20D97CA30);
  v274 = *(v275 - 8);
  v42 = *(v274 + 64);
  MEMORY[0x28223BE20](v275);
  v273 = &v247 - v43;
  v281 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AC18, &qword_20D97CA38);
  v277 = *(v281 - 8);
  v44 = *(v277 + 64);
  MEMORY[0x28223BE20](v281);
  v311 = &v247 - v45;
  v288 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AC20, &qword_20D97CA40);
  v282 = *(v288 - 8);
  v46 = *(v282 + 64);
  MEMORY[0x28223BE20](v288);
  v280 = &v247 - v47;
  v293 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AC28, &qword_20D97CA48);
  v290 = *(v293 - 8);
  v48 = *(v290 + 64);
  MEMORY[0x28223BE20](v293);
  v314 = &v247 - v49;
  v300 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AC30, &qword_20D97CA50);
  v298 = *(v300 - 8);
  v50 = *(v298 + 64);
  MEMORY[0x28223BE20](v300);
  v315 = &v247 - v51;
  v301 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AC38, &qword_20D97CA58);
  v299 = *(v301 - 8);
  v52 = *(v299 + 64);
  MEMORY[0x28223BE20](v301);
  v297 = &v247 - v53;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0);
  v55 = *(*(v54 - 8) + 64);
  v56 = MEMORY[0x28223BE20](v54 - 8);
  v322 = &v247 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = MEMORY[0x28223BE20](v56);
  v336 = &v247 - v59;
  v60 = MEMORY[0x28223BE20](v58);
  v345 = (&v247 - v61);
  MEMORY[0x28223BE20](v60);
  v346 = (&v247 - v62);
  v63 = type metadata accessor for HistoricalUsageChart();
  v271 = *(v63 - 8);
  v64 = *(v271 + 64);
  v65 = MEMORY[0x28223BE20](v63);
  v276 = &v247 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  v312 = v66;
  MEMORY[0x28223BE20](v65);
  v306 = &v247 - v67;
  v344 = sub_20D972C58();
  isa = v344[-1].isa;
  v69 = *(isa + 8);
  v70 = MEMORY[0x28223BE20](v344);
  v321 = &v247 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v70);
  v343 = &v247 - v72;
  v73 = sub_20D972628();
  v74 = *(v73 - 8);
  v75 = *(v74 + 64);
  v76 = MEMORY[0x28223BE20](v73);
  v247 = &v247 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = MEMORY[0x28223BE20](v76);
  v248 = &v247 - v79;
  v80 = MEMORY[0x28223BE20](v78);
  v320 = &v247 - v81;
  v82 = MEMORY[0x28223BE20](v80);
  v335 = &v247 - v83;
  v84 = MEMORY[0x28223BE20](v82);
  v86 = &v247 - v85;
  MEMORY[0x28223BE20](v84);
  v88 = &v247 - v87;
  v89 = v1 + *(v63 + 32);
  v313 = v27;
  v307 = v89;
  MEMORY[0x20F322CD0](v27);
  v90 = type metadata accessor for HistoricalUsageSnapshot();
  v91 = (v2 + *(v90 + 52));
  v92 = type metadata accessor for HistoricalUsageSnapshotDerivedInfo(0);
  v93 = v92[7];
  v250 = v63;
  v94 = (v2 + *(v63 + 48));
  v95 = v92[11];
  v308 = v92;
  v96 = &v91[v92[16]];
  v251 = v94;
  v317 = v91;
  v97 = sub_20D8F2858(v88, &v91[v93], v94, &v91[v95], v91, v96);
  v341 = *(v74 + 8);
  v338 = v74 + 8;
  v309 = v88;
  v341(v88, v73);
  v249 = v90;
  v98 = *(v90 + 48);
  v318 = v2;
  v99 = sub_20D972E38();
  v100 = *(v99 + 16);
  v337 = v97;
  v326 = v74;
  v334 = v100;
  if (v100)
  {
    v101 = 0;
    v331 = isa + 16;
    v325 = v74 + 16;
    v330 = (v74 + 56);
    v102 = (v74 + 48);
    v328 = (v74 + 32);
    v319 = (isa + 32);
    v333 = isa;
    v327 = (isa + 8);
    v323 = MEMORY[0x277D84F90];
    v103 = v346;
    v332 = v99;
    v329 = v86;
    v324 = v102;
    while (1)
    {
      if (v101 >= *(v99 + 16))
      {
        __break(1u);
        goto LABEL_36;
      }

      v340 = (*(v333 + 80) + 32) & ~*(v333 + 80);
      v104 = *(v333 + 9);
      v342 = v101;
      v339 = v104;
      v105 = (*(v333 + 2))(v343, v99 + v340 + v104 * v101, v344);
      MEMORY[0x20F320D90](v105);
      v106 = *(v97 + 16);
      if (v106)
      {
        v107 = v326;
        v108 = v97 + ((*(v326 + 80) + 32) & ~*(v326 + 80));
        v109 = *(v326 + 16);
        v109(v346, v108, v73);
        v110 = *(v107 + 56);
        v110(v346, 0, 1, v73);
        v111 = v108 + *(v107 + 72) * (v106 - 1);
        v112 = v345;
        v109(v345, v111, v73);
        v102 = v324;
        v103 = v346;
        v110(v112, 0, 1, v73);
      }

      else
      {
        v113 = *v330;
        (*v330)(v103, 1, 1, v73);
        v113(v345, 1, 1, v73);
      }

      v114 = v336;
      sub_20D7EB7E8(v103, v336, &qword_27C8389E8, &qword_20D9768D0);
      v115 = *v102;
      v116 = (*v102)(v114, 1, v73);
      v117 = v335;
      if (v116 == 1)
      {
        sub_20D972428();
        v118 = v115(v114, 1, v73);
        v119 = v329;
        if (v118 != 1)
        {
          sub_20D7E3944(v114, &qword_27C8389E8, &qword_20D9768D0);
        }
      }

      else
      {
        (*v328)(v335, v114, v73);
        v119 = v329;
      }

      sub_20D911038(&qword_281126E30, MEMORY[0x277CC9578]);
      v120 = v117;
      v121 = sub_20D974FA8();
      v122 = v120;
      v123 = v341;
      v341(v122, v73);
      if (v121)
      {
        sub_20D7E3944(v345, &qword_27C8389E8, &qword_20D9768D0);
        v103 = v346;
        sub_20D7E3944(v346, &qword_27C8389E8, &qword_20D9768D0);
        v123(v119, v73);
      }

      else
      {
        v124 = v322;
        sub_20D7EB7E8(v345, v322, &qword_27C8389E8, &qword_20D9768D0);
        if (v115(v124, 1, v73) == 1)
        {
          v125 = v320;
          sub_20D972448();
          if (v115(v124, 1, v73) != 1)
          {
            sub_20D7E3944(v124, &qword_27C8389E8, &qword_20D9768D0);
          }
        }

        else
        {
          v125 = v320;
          (*v328)(v320, v124, v73);
        }

        v126 = v125;
        v127 = sub_20D974FA8();
        v128 = v126;
        v129 = v341;
        v341(v128, v73);
        sub_20D7E3944(v345, &qword_27C8389E8, &qword_20D9768D0);
        v103 = v346;
        sub_20D7E3944(v346, &qword_27C8389E8, &qword_20D9768D0);
        v129(v119, v73);
        if ((v127 & 1) == 0)
        {
          v130 = *v319;
          (*v319)(v321, v343, v344);
          v131 = v323;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v348 = v131;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_20D95D484(0, *(v131 + 16) + 1, 1);
            v131 = v348;
          }

          v134 = *(v131 + 16);
          v133 = *(v131 + 24);
          if (v134 >= v133 >> 1)
          {
            sub_20D95D484(v133 > 1, v134 + 1, 1);
            v131 = v348;
          }

          *(v131 + 16) = v134 + 1;
          v323 = v131;
          v130(v131 + v340 + v134 * v339, v321, v344);
          v97 = v337;
          v103 = v346;
          goto LABEL_5;
        }
      }

      (*v327)(v343, v344);
      v97 = v337;
LABEL_5:
      v101 = (v342 + 1);
      v99 = v332;
      if (v334 == (v342 + 1))
      {
        goto LABEL_26;
      }
    }
  }

  v323 = MEMORY[0x277D84F90];
LABEL_26:

  if (qword_281125088 != -1)
  {
LABEL_36:
    swift_once();
  }

  v135 = sub_20D9734F8();
  __swift_project_value_buffer(v135, qword_28112AB78);
  v136 = v306;
  sub_20D91092C(v318, v306, type metadata accessor for HistoricalUsageChart);
  swift_retain_n();

  v137 = sub_20D9734D8();
  v138 = sub_20D975448();

  v139 = os_log_type_enabled(v137, v138);
  v140 = v326;
  if (!v139)
  {

    v163 = sub_20D9098E0(v136);
LABEL_34:
    v346 = &v247;
    MEMORY[0x28223BE20](v163);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AC40, &qword_20D97CA60);
    sub_20D909948();
    v168 = v252;
    sub_20D973878();

    sub_20D9742D8();
    v169 = sub_20D7EBC4C(&qword_27C83AE38, &qword_27C83ABE0, &qword_20D97CA00);
    v170 = v254;
    v171 = v255;
    sub_20D974688();
    (*(v253 + 8))(v168, v171);
    v172 = v308;
    v353 = *&v317[v308[6]];
    v348 = v171;
    v349 = v169;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v174 = MEMORY[0x277D839F8];
    v175 = MEMORY[0x277D83A38];
    v176 = v257;
    v177 = v258;
    v178 = MEMORY[0x277CBB590];
    sub_20D974698();
    (*(v256 + 8))(v170, v177);
    v179 = v263;
    sub_20D974B48();
    v348 = v177;
    v349 = v174;
    v350 = OpaqueTypeConformance2;
    v351 = v178;
    v352 = v175;
    v180 = swift_getOpaqueTypeConformance2();
    v181 = MEMORY[0x277CBB1E8];
    v182 = v260;
    v183 = v261;
    sub_20D974678();
    sub_20D7E3944(v179, &qword_27C83AB88, &unk_20D97C960);
    (*(v259 + 8))(v176, v183);
    v184 = v318 + *(v250 + 36);
    v185 = v268;
    sub_20D974B48();
    v348 = v183;
    v349 = v73;
    v350 = v180;
    v351 = v181;
    v186 = swift_getOpaqueTypeConformance2();
    v187 = v265;
    v188 = v264;
    sub_20D974668();
    sub_20D7E3944(v185, &qword_27C83AB90, &unk_20D97D270);
    (*(v262 + 8))(v182, v188);
    v189 = v172[8];
    v343 = sub_20D9739E8();
    v190 = *(v343 - 1);
    v342 = *(v190 + 56);
    v344 = (v190 + 56);
    v191 = v316;
    v342();
    v345 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A698, &qword_20D97CB80);
    v348 = v188;
    v349 = v73;
    v350 = v186;
    v351 = v181;
    v340 = swift_getOpaqueTypeConformance2();
    v192 = sub_20D90AF8C(&qword_281124C38, &qword_27C83A698, &qword_20D97CB80);
    v193 = v269;
    sub_20D974618();
    sub_20D7E3944(v191, &qword_27C83ABD8, &qword_20D97C9F8);
    (*(v266 + 8))(v187, v193);
    v194 = sub_20D9727D8();
    (*(*(v194 - 8) + 56))(v279, 1, 1, v194);
    v195 = sub_20D972838();
    (*(*(v195 - 8) + 56))(v283, 1, 1, v195);
    v196 = v284;
    sub_20D971E98();
    v197 = v278;
    sub_20D8F93B8();
    v198 = v291;
    sub_20D973798();
    v199 = *(v285 + 8);
    v200 = v197;
    v201 = v287;
    v199(v200, v287);
    v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AE40, &qword_20D97CB88);
    (*(*(v202 - 8) + 56))(v198, 0, 1, v202);
    v203 = v292;
    sub_20D973808();
    v204 = v286;
    sub_20D9737F8();
    (*(v295 + 8))(v203, v296);
    sub_20D7E3944(v198, &qword_27C83ABD0, &qword_20D97C9F0);
    v199(v196, v201);
    v348 = v193;
    v349 = v345;
    v350 = v340;
    v351 = v192;
    v340 = swift_getOpaqueTypeConformance2();
    v205 = sub_20D911038(&qword_27C83AE48, MEMORY[0x277CBB3E8]);
    v206 = v273;
    v207 = v272;
    v208 = v294;
    v209 = v310;
    sub_20D9746A8();
    (*(v289 + 8))(v204, v208);
    (*(v270 + 8))(v209, v207);
    MEMORY[0x20F322CD0](v313);
    v210 = v302;
    v211 = sub_20D8EF784(v302);
    v345 = &v247;
    MEMORY[0x28223BE20](v211);
    v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AE50, &qword_20D97CB90);
    v348 = v207;
    v349 = v208;
    v350 = v340;
    v351 = v205;
    v213 = swift_getOpaqueTypeConformance2();
    v214 = sub_20D7EBC4C(&qword_27C83AE58, &qword_27C83AE50, &qword_20D97CB90);
    v215 = v275;
    sub_20D9745E8();

    v341(v309, v73);
    (*(v303 + 8))(v210, v304);
    (*(v274 + 8))(v206, v215);
    v347 = *&v317[v308[14]];
    v216 = v316;
    (v342)(v316, 1, 1, v343);
    v217 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AE60, &qword_20D97CB98);
    v348 = v215;
    v349 = v212;
    v350 = v213;
    v351 = v214;
    v218 = swift_getOpaqueTypeConformance2();
    v219 = sub_20D90AF8C(&qword_281124C30, &qword_27C83AE60, &qword_20D97CB98);
    v220 = v280;
    v221 = v281;
    v222 = v311;
    sub_20D974628();
    sub_20D7E3944(v216, &qword_27C83ABD8, &qword_20D97C9F8);
    v223 = (*(v277 + 8))(v222, v221);
    v344 = &v247;
    MEMORY[0x28223BE20](v223);
    v224 = v318;
    v341 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AE68, &qword_20D97CBA0);
    v348 = v221;
    v349 = v217;
    v350 = v218;
    v351 = v219;
    v225 = swift_getOpaqueTypeConformance2();
    v226 = sub_20D90AFFC();
    v227 = v288;
    sub_20D9745F8();
    (*(v282 + 8))(v220, v227);
    v343 = type metadata accessor for HistoricalUsageChart;
    v228 = v276;
    sub_20D91092C(v224, v276, type metadata accessor for HistoricalUsageChart);
    v229 = (*(v271 + 80) + 16) & ~*(v271 + 80);
    v230 = swift_allocObject();
    v342 = type metadata accessor for HistoricalUsageChart;
    sub_20D910994(v228, v230 + v229, type metadata accessor for HistoricalUsageChart);
    sub_20D974C48();
    v231 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AEB0, &qword_20D97CBC0);
    v348 = v227;
    v349 = v341;
    v350 = v225;
    v351 = v226;
    v232 = swift_getOpaqueTypeConformance2();
    v233 = sub_20D90B1EC();
    v234 = v293;
    v235 = v314;
    sub_20D974658();

    (*(v290 + 8))(v235, v234);
    sub_20D974C38();
    v341 = v236;
    sub_20D91092C(v318, v228, v343);
    v237 = swift_allocObject();
    sub_20D910994(v228, v237 + v229, v342);
    v238 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AED0, &qword_20D97CBD0);
    v348 = v234;
    v349 = v231;
    v350 = v232;
    v351 = v233;
    v239 = swift_getOpaqueTypeConformance2();
    v240 = sub_20D7EBC4C(&qword_27C83AED8, &qword_27C83AED0, &qword_20D97CBD0);
    v241 = v297;
    v242 = v300;
    v243 = v315;
    sub_20D974638();

    (*(v298 + 8))(v243, v242);
    v348 = v242;
    v349 = v238;
    v350 = v239;
    v351 = v240;
    swift_getOpaqueTypeConformance2();
    v244 = v305;
    v245 = v301;
    sub_20D9747D8();
    (*(v299 + 8))(v241, v245);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AEE0, &qword_20D97CBD8);
    v246 = v244 + *(result + 36);
    *v246 = 0x4004000000000000;
    *(v246 + 8) = 0;
    return result;
  }

  LODWORD(v346) = v138;
  v141 = swift_slowAlloc();
  v345 = swift_slowAlloc();
  v348 = v345;
  *v141 = 136315906;
  v142 = v136 + *(v249 + 52);
  v143 = sub_20D972AE8();
  v145 = v144;
  sub_20D9098E0(v136);
  v146 = sub_20D7F4DC8(v143, v145, &v348);

  *(v141 + 4) = v146;
  *(v141 + 12) = 2080;
  v147 = *(v97 + 16);
  if (!v147)
  {
    v160 = 7104878;
    v162 = 0xE300000000000000;
    v164 = sub_20D7F4DC8(7104878, 0xE300000000000000, &v348);

    *(v141 + 14) = v164;
    *(v141 + 22) = 2080;
    goto LABEL_33;
  }

  v344 = v137;
  v148 = *(v140 + 16);
  v149 = v97 + ((*(v140 + 80) + 32) & ~*(v140 + 80));
  v150 = v248;
  v343 = v148;
  (v148)(v248, v149, v73);
  v151 = sub_20D972418();
  v153 = v152;
  v154 = v150;
  v155 = v341;
  v341(v154, v73);
  v156 = sub_20D7F4DC8(v151, v153, &v348);

  *(v141 + 14) = v156;
  *(v141 + 22) = 2080;
  if (v147 <= *(v97 + 16))
  {
    v158 = v149 + *(v326 + 72) * (v147 - 1);
    v159 = v247;
    (v343)(v247, v158, v73);
    v160 = sub_20D972418();
    v162 = v161;
    v155(v159, v73);
    v137 = v344;
LABEL_33:
    v165 = sub_20D7F4DC8(v160, v162, &v348);

    *(v141 + 24) = v165;
    *(v141 + 32) = 2048;
    v166 = *(v323 + 16);

    *(v141 + 34) = v166;

    _os_log_impl(&dword_20D7C9000, v137, v346, "BODY: %s: viewport range: %s...%s containing %ld usages", v141, 0x2Au);
    v167 = v345;
    swift_arrayDestroy();
    MEMORY[0x20F324260](v167, -1, -1);
    MEMORY[0x20F324260](v141, -1, -1);

    goto LABEL_34;
  }

  __break(1u);
  return result;
}

uint64_t sub_20D8F2858(char *a1, char *a2, char *a3, uint64_t a4, unsigned int (*a5)(void, void, void), uint64_t a6)
{
  v269 = a6;
  v247 = a4;
  v238 = a3;
  v253 = a2;
  v262 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v244 = (&v228 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = MEMORY[0x28223BE20](v9);
  v257 = &v228 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v254 = (&v228 - v14);
  v15 = MEMORY[0x28223BE20](v13);
  v231 = &v228 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v237 = &v228 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v241 = &v228 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v251 = &v228 - v22;
  MEMORY[0x28223BE20](v21);
  v261 = &v228 - v23;
  v24 = sub_20D972AF8();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x28223BE20](v24);
  v239 = &v228 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v228 - v30;
  MEMORY[0x28223BE20](v29);
  v33 = &v228 - v32;
  v264 = sub_20D972628();
  v266 = *(v264 - 8);
  v34 = *(v266 + 64);
  v35 = MEMORY[0x28223BE20](v264);
  v242 = (&v228 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = MEMORY[0x28223BE20](v35);
  v243 = &v228 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v252 = &v228 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v255 = &v228 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v256 = (&v228 - v44);
  v45 = MEMORY[0x28223BE20](v43);
  v232 = &v228 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v229 = &v228 - v48;
  v49 = MEMORY[0x28223BE20](v47);
  v230 = &v228 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v236 = &v228 - v52;
  v53 = MEMORY[0x28223BE20](v51);
  v240 = &v228 - v54;
  v55 = MEMORY[0x28223BE20](v53);
  v234 = &v228 - v56;
  v57 = MEMORY[0x28223BE20](v55);
  v233 = &v228 - v58;
  v59 = MEMORY[0x28223BE20](v57);
  v245 = &v228 - v60;
  v61 = MEMORY[0x28223BE20](v59);
  v250 = &v228 - v62;
  v63 = MEMORY[0x28223BE20](v61);
  v249 = &v228 - v64;
  v65 = MEMORY[0x28223BE20](v63);
  v248 = &v228 - v66;
  v67 = MEMORY[0x28223BE20](v65);
  v258 = &v228 - v68;
  MEMORY[0x28223BE20](v67);
  v70 = &v228 - v69;
  v71 = sub_20D9727B8();
  v72 = *(v71 - 8);
  v73 = *(v72 + 64);
  v74 = MEMORY[0x28223BE20](v71);
  v260 = &v228 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = MEMORY[0x28223BE20](v74);
  v78 = &v228 - v77;
  MEMORY[0x28223BE20](v76);
  v80 = &v228 - v79;
  v81 = *(v25 + 16);
  v263 = a5;
  v81(v33, a5, v24);
  v82 = (*(v25 + 88))(v33, v24);
  v83 = *MEMORY[0x277D075B0];
  v265 = v71;
  v267 = v80;
  v268 = v72;
  v235 = v83;
  if (v82 == v83)
  {
    v84 = MEMORY[0x277D075D0];
    v85 = *(v72 + 104);
    v85(v80, *MEMORY[0x277CC9980], v71);
    v86 = *MEMORY[0x277CC9968];
    v259 = v85;
    v85(v78, v86, v71);
    sub_20D972718();
    v246 = sub_20D90D470;
    v87 = v70;
  }

  else
  {
    if (v82 == *MEMORY[0x277D075B8])
    {
      v84 = MEMORY[0x277D075D0];
      v88 = *(v268 + 104);
      v88(v267, *MEMORY[0x277CC9968], v71);
      v89 = *MEMORY[0x277CC9940];
      v259 = v88;
      v88(v78, v89, v71);
      v87 = v70;
      sub_20D973098();
      v90 = sub_20D90D450;
    }

    else if (v82 == *MEMORY[0x277D075C8])
    {
      v84 = MEMORY[0x277D075D0];
      v91 = *(v268 + 104);
      v91(v267, *MEMORY[0x277CC9968], v71);
      v92 = *MEMORY[0x277CC9998];
      v259 = v91;
      v91(v78, v92, v71);
      v87 = v70;
      sub_20D972FF8();
      v90 = sub_20D9110D8;
    }

    else if (v82 == *MEMORY[0x277D075D0])
    {
      v84 = MEMORY[0x277D075D0];
      v93 = *(v268 + 104);
      v93(v267, *MEMORY[0x277CC9940], v71);
      v94 = *MEMORY[0x277CC99A0];
      v259 = v93;
      v93(v78, v94, v71);
      v87 = v70;
      sub_20D972718();
      v90 = sub_20D9110D8;
    }

    else
    {
      if (v82 != *MEMORY[0x277D075C0])
      {
        sub_20D972718();
        (*(v266 + 8))(v70, v264);
        (*(v25 + 8))(v33, v24);
        return MEMORY[0x277D84F90];
      }

      v84 = MEMORY[0x277D075D0];
      v95 = *(v268 + 104);
      v95(v267, *MEMORY[0x277CC9998], v71);
      v96 = *MEMORY[0x277CC9988];
      v259 = v95;
      v95(v78, v96, v71);
      v87 = v70;
      sub_20D972FC8();
      v90 = sub_20D90D44C;
    }

    v246 = v90;
  }

  v97 = *(v25 + 104);
  (v97)(v31, *v84, v24);
  sub_20D911038(&qword_2811250F8, MEMORY[0x277D075D8]);
  v98 = sub_20D974FD8();
  v101 = *(v25 + 8);
  v100 = (v25 + 8);
  v99 = v101;
  (v101)(v31, v24);
  v102 = v261;
  if ((v98 & 1) == 0)
  {
    v228 = v24;
    v255 = v97;
    v256 = v99;
    v257 = v100;
    sub_20D972758();
    v113 = v266;
    v114 = v78;
    v116 = (v266 + 48);
    v115 = *(v266 + 48);
    v117 = v264;
    if (v115(v102, 1, v264) == 1)
    {
      sub_20D7E3944(v102, &qword_27C8389E8, &qword_20D9768D0);
      (*(v113 + 8))(v87, v117);
LABEL_21:
      v128 = *(v268 + 8);
      v129 = v265;
      v128(v114, v265);
      v130 = v267;
LABEL_22:
      v128(v130, v129);
      return MEMORY[0x277D84F90];
    }

    v125 = (v113 + 32);
    v254 = *(v113 + 32);
    v254(v258, v102, v117);
    v126 = v251;
    sub_20D972758();
    if (v115(v126, 1, v117) == 1)
    {
      sub_20D7E3944(v126, &qword_27C8389E8, &qword_20D9768D0);
      v127 = *(v113 + 8);
      v127(v258, v117);
      v127(v87, v117);
      goto LABEL_21;
    }

    v261 = v87;
    v262 = v114;
    v140 = v248;
    v254(v248, v126, v117);
    v141 = v241;
    v142 = v116;
    v143 = v267;
    sub_20D972758();
    v252 = v142;
    if (v115(v141, 1, v117) == 1)
    {
      sub_20D7E3944(v141, &qword_27C8389E8, &qword_20D9768D0);
      v144 = *(v266 + 8);
      v144(v140, v117);
      v144(v258, v117);
      v144(v261, v117);
      v128 = *(v268 + 8);
      v129 = v265;
      v128(v262, v265);
      v130 = v143;
      goto LABEL_22;
    }

    v243 = v125;
    v152 = v254;
    v254(v249, v141, v117);
    sub_20D911038(&qword_281126E30, MEMORY[0x277CC9578]);
    v153 = v253;
    v154 = v258;
    v155 = sub_20D974FB8();
    v156 = *(v266 + 16);
    v251 = (v266 + 16);
    v244 = v156;
    if (v155)
    {
      v157 = v250;
      v158 = v153;
    }

    else
    {
      v157 = v250;
      v158 = v154;
    }

    (v156)(v157, v158, v117);
    v167 = v238;
    v168 = v237;
    sub_20D7EB7E8(v247, v237, &qword_27C8389E8, &qword_20D9768D0);
    v169 = v115(v168, 1, v117);
    v242 = v115;
    if (v169 == 1)
    {
      sub_20D7E3944(v168, &qword_27C8389E8, &qword_20D9768D0);
      v170 = v249;
      if (sub_20D974FA8())
      {
        v171 = v245;
        v172 = v245;
        v173 = v167;
      }

      else
      {
        v173 = v170;
        v171 = v245;
        v172 = v245;
      }

      (v244)(v172, v173, v117);
    }

    else
    {
      v174 = v233;
      v152(v233, v168, v117);
      if (sub_20D974FB8())
      {
        v175 = v234;
        v176 = v234;
        v177 = v174;
      }

      else
      {
        v175 = v234;
        v176 = v234;
        v177 = v167;
      }

      (v244)(v176, v177, v117);
      v178 = v266;
      v179 = v249;
      v180 = sub_20D974FA8();
      v181 = *(v178 + 8);
      v181(v174, v117);
      if (v180)
      {
        v171 = v245;
        v152 = v254;
        v254(v245, v175, v117);
      }

      else
      {
        v181(v175, v117);
        v171 = v245;
        (v244)(v245, v179, v117);
        v152 = v254;
      }
    }

    v182 = v240;
    v183 = v236;
    sub_20D972498();
    if (sub_20D974FB8())
    {
      v152(v182, v183, v117);
    }

    else
    {
      (*(v266 + 8))(v183, v117);
      (v244)(v182, v171, v117);
    }

    v184 = v249;
    v185 = v228;
    v186 = v239;
    (v255)(v239, v235, v228);
    sub_20D911038(&qword_2811250F0, MEMORY[0x277D075D8]);
    sub_20D975208();
    sub_20D975208();
    v187 = v250;
    if (v272[0] == v270 && v272[1] == v271)
    {
      v256(v186, v185);

      v188 = v266;
      v190 = v268;
      v189 = v269;
      v191 = v245;
    }

    else
    {
      v192 = sub_20D9757C8();
      v256(v186, v185);

      v188 = v266;
      v190 = v268;
      v189 = v269;
      v191 = v245;
      if ((v192 & 1) == 0)
      {
LABEL_69:
        swift_beginAccess();
        v223 = v246(v187, v182, v189);
        v224 = *(v188 + 8);
        v225 = v264;
        v224(v182, v264);
        v224(v191, v225);
        v224(v184, v225);
        v224(v248, v225);
        v224(v258, v225);
        v224(v261, v225);
        v226 = *(v190 + 8);
        v227 = v265;
        v226(v262, v265);
        v226(v267, v227);
        v224(v187, v225);
        return v223;
      }
    }

    if (sub_20D972538())
    {
      v193 = v260;
      v194 = v265;
      v259(v260, *MEMORY[0x277CC9968], v265);
      v195 = v231;
      sub_20D972758();
      (*(v190 + 8))(v193, v194);
      v196 = v264;
      if (v242(v195, 1, v264) == 1)
      {
        sub_20D7E3944(v195, &qword_27C8389E8, &qword_20D9768D0);
        v187 = v250;
      }

      else
      {
        v197 = v195;
        v198 = v230;
        v254(v230, v197, v196);
        if (qword_281125088 != -1)
        {
          swift_once();
        }

        v199 = sub_20D9734F8();
        __swift_project_value_buffer(v199, qword_28112AB78);
        v200 = v229;
        v201 = v244;
        (v244)(v229, v240, v196);
        v201(v232, v198, v196);
        v202 = sub_20D9734D8();
        v203 = sub_20D975478();
        v204 = os_log_type_enabled(v202, v203);
        v187 = v250;
        if (v204)
        {
          v205 = swift_slowAlloc();
          v263 = swift_slowAlloc();
          v272[0] = v263;
          *v205 = 136315650;
          swift_beginAccess();
          sub_20D911038(&qword_281127730, MEMORY[0x277CC9578]);
          LODWORD(v260) = v203;
          v206 = sub_20D9757A8();
          v208 = v190;
          v209 = sub_20D7F4DC8(v206, v207, v272);

          *(v205 + 4) = v209;
          *(v205 + 12) = 2080;
          v210 = sub_20D9757A8();
          v212 = v211;
          v213 = v232;
          v214 = *(v266 + 8);
          v214(v200, v264);
          v215 = sub_20D7F4DC8(v210, v212, v272);
          v190 = v208;
          v189 = v269;

          *(v205 + 14) = v215;
          *(v205 + 22) = 2080;
          v216 = sub_20D9757A8();
          v218 = v217;
          v214(v213, v264);
          v191 = v245;
          v187 = v250;
          v219 = sub_20D7F4DC8(v216, v218, v272);
          v198 = v230;
          v196 = v264;

          *(v205 + 24) = v219;
          _os_log_impl(&dword_20D7C9000, v202, v260, "generateViewPortDatesForScrollDate: startDate > stopDate, resetting startDate %s to 3 days before stopDate %s -> %s", v205, 0x20u);
          v220 = v263;
          swift_arrayDestroy();
          MEMORY[0x20F324260](v220, -1, -1);
          v221 = v205;
          v188 = v266;
          MEMORY[0x20F324260](v221, -1, -1);
        }

        else
        {

          v222 = *(v188 + 8);
          v222(v232, v196);
          v222(v200, v196);
        }

        v184 = v249;
        swift_beginAccess();
        (*(v188 + 40))(v187, v198, v196);
      }

      v182 = v240;
    }

    goto LABEL_69;
  }

  v262 = v78;
  v103 = *MEMORY[0x277CC9940];
  v104 = v268;
  v105 = v260;
  v106 = v265;
  v259(v260, v103, v265);
  v107 = v254;
  sub_20D972758();
  v110 = *(v104 + 8);
  v108 = v104 + 8;
  v109 = v110;
  (v110)(v105, v106);
  v111 = v266;
  v112 = v264;
  v263 = *(v266 + 48);
  if (v263(v107, 1, v264) == 1)
  {
    sub_20D7E3944(v107, &qword_27C8389E8, &qword_20D9768D0);
    (*(v111 + 8))(v87, v112);
    (v109)(v262, v106);
    (v109)(v267, v106);
    return MEMORY[0x277D84F90];
  }

  v258 = v109;
  v261 = v87;
  v268 = v108;
  v118 = v256;
  v254 = *(v111 + 32);
  v254(v256, v107, v112);
  v119 = sub_20D911038(&qword_281126E30, MEMORY[0x277CC9578]);
  v120 = v253;
  v251 = v119;
  v121 = sub_20D974FB8();
  v122 = *(v111 + 16);
  v250 = (v111 + 16);
  v249 = v122;
  if (v121)
  {
    v123 = v255;
    v124 = v120;
  }

  else
  {
    v123 = v255;
    v124 = v118;
  }

  (v122)(v123, v124, v112);
  v131 = v258;
  v132 = v260;
  v133 = v103;
  v134 = v265;
  v259(v260, v133, v265);
  v135 = v261;
  sub_20D972758();
  v136 = v257;
  v131(v132, v134);
  v137 = v263;
  v138 = v112;
  if (v263(v136, 1, v112) == 1)
  {
    sub_20D7E3944(v136, &qword_27C8389E8, &qword_20D9768D0);
    v139 = *(v266 + 8);
    v139(v255, v112);
    v139(v256, v112);
    v139(v135, v112);
    v131(v262, v134);
    v131(v267, v134);
    return MEMORY[0x277D84F90];
  }

  v145 = v254;
  v254(v252, v136, v112);
  v146 = v244;
  sub_20D7EB7E8(v247, v244, &qword_27C8389E8, &qword_20D9768D0);
  if (v137(v146, 1, v112) == 1)
  {
    v147 = v242;
    sub_20D972428();
    v148 = v137(v146, 1, v138);
    v149 = v269;
    v150 = v256;
    v151 = v243;
    if (v148 != 1)
    {
      sub_20D7E3944(v146, &qword_27C8389E8, &qword_20D9768D0);
    }
  }

  else
  {
    v147 = v242;
    v145(v242, v146, v138);
    v149 = v269;
    v150 = v256;
    v151 = v243;
  }

  v159 = v252;
  if (sub_20D974FB8())
  {
    v254(v151, v147, v138);
    v160 = v266;
  }

  else
  {
    v160 = v266;
    (*(v266 + 8))(v147, v138);
    (v249)(v151, v159, v138);
  }

  v161 = v255;
  v162 = v246(v255, v151, v149);
  v163 = *(v160 + 8);
  v163(v151, v138);
  v163(v159, v138);
  v163(v161, v138);
  v163(v150, v138);
  v163(v261, v138);
  v164 = v265;
  v165 = v258;
  (v258)(v262, v265);
  v165(v267, v164);
  return v162;
}

uint64_t sub_20D8F44EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v142 = a3;
  v150 = a4;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AFC0, &qword_20D97CCB8);
  v144 = *(v147 - 8);
  v6 = *(v144 + 64);
  MEMORY[0x28223BE20](v147);
  v151 = &v127 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AE28, &qword_20D97CB70);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v149 = &v127 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v148 = &v127 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v146 = &v127 - v15;
  MEMORY[0x28223BE20](v14);
  v145 = &v127 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AD98, &qword_20D97CB20);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v127 - v19;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AFC8, &qword_20D97CCC0);
  v21 = *(*(v134 - 8) + 64);
  MEMORY[0x28223BE20](v134);
  v133 = &v127 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83ACF0, &qword_20D97CAC0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v135 = &v127 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AD10, &qword_20D97CAD0);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v26 - 8);
  v132 = &v127 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v131 = &v127 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AD00, &qword_20D97CAC8);
  v32 = *(*(v31 - 8) + 64);
  v33 = MEMORY[0x28223BE20](v31 - 8);
  v130 = &v127 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v129 = &v127 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83ACD8, &qword_20D97CAB0);
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v36 - 8);
  v128 = &v127 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AC78, &qword_20D97CA78);
  v40 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39 - 8);
  v139 = &v127 - v41;
  v137 = sub_20D973D58();
  v136 = *(v137 - 8);
  v42 = *(v136 + 64);
  MEMORY[0x28223BE20](v137);
  v44 = &v127 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_20D973B18();
  v46 = *(v45 - 8);
  v47 = *(v46 + 64);
  v48 = MEMORY[0x28223BE20](v45);
  v50 = &v127 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v48);
  v52 = &v127 - v51;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AC88, &qword_20D97CA80);
  v54 = *(*(v53 - 8) + 64);
  MEMORY[0x28223BE20](v53 - 8);
  v138 = &v127 - v55;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AC68, &qword_20D97CA70);
  v57 = *(*(v56 - 8) + 64);
  v58 = MEMORY[0x28223BE20](v56 - 8);
  v141 = &v127 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v58);
  v140 = &v127 - v60;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AC58, &qword_20D97CA68);
  v62 = *(*(v61 - 8) + 64);
  v63 = MEMORY[0x28223BE20](v61 - 8);
  v143 = &v127 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v63);
  v66 = &v127 - v65;
  v67 = type metadata accessor for HistoricalUsageChart();
  v68 = v67;
  v69 = *(a1 + v67[11]);
  v152 = v66;
  if (v69 != 1)
  {
    v83 = a1 + v67[7];
    v84 = *v83;
    v85 = *(v83 + 8);
    v86 = a1 + v67[6];
    v87 = *v86;
    v88 = *(v86 + 8);
    v89 = (a1 + v67[13]);
    v90 = *(v89 + 2);
    v153 = *v89;
    v154 = v90;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AF28, &qword_20D97D2D0);
    sub_20D974A48();
    v91 = a1;
    sub_20D8F5E8C(v84, v85, v87, v88, v20);
    sub_20D7EAF18(v20, v66, &qword_27C83AD98, &qword_20D97CB20);
    v93 = v146;
    v92 = v147;
    v94 = v144;
    v95 = v145;
    goto LABEL_11;
  }

  v70 = sub_20D8F5360(a2);
  v71 = (a1 + v68[7]);
  v72 = (a1 + v68[6]);
  v73 = *v72;
  if ((v71[1] & 1) == 0)
  {
    v74 = *v71;
    if (*v71 <= 2)
    {

      MEMORY[0x28223BE20](v75);
      *(&v127 - 2) = v74;
      KeyPath = swift_getKeyPath();
      sub_20D8EF98C(v52);
      (*(v46 + 104))(v50, *MEMORY[0x277CDF3C0], v45);
      v77 = sub_20D973B08();
      v78 = *(v46 + 8);
      v78(v50, v45);
      v78(v52, v45);
      sub_20D8EF784(v44);
      LOBYTE(v78) = sub_20D973D38();
      (*(v136 + 8))(v44, v137);
      v79 = sub_20D8E5420(v77 & 1, v78 & 1, v74);
      *&v153 = 0;
      *(&v153 + 1) = 0xE000000000000000;
      sub_20D975678();
      MEMORY[0x20F323340](0xD000000000000043, 0x800000020D989F90);
      v80 = sub_20D8E52A0(v74);
      MEMORY[0x20F323340](v80);

      MEMORY[0x20F323340](0x657463656C65532ELL, 0xE900000000000064);
      v81 = v138;
      sub_20D8FE204(v142, KeyPath, v79, v153, *(&v153 + 1), v138, 0.8);

      v82 = v139;
      sub_20D7EAF18(v81, v139, &qword_27C83AC88, &qword_20D97CA80);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AFE0, &qword_20D97CD40);
LABEL_9:
      swift_storeEnumTagMultiPayload();
      v104 = v141;
      sub_20D7EAF18(v82, v141, &qword_27C83AC78, &qword_20D97CA78);
      goto LABEL_10;
    }
  }

  if ((v72[1] & 1) == 0)
  {

    MEMORY[0x28223BE20](v105);
    *(&v127 - 2) = v73;
    v106 = swift_getKeyPath();
    v107 = *(a1 + v68[10] + 16);
    v108 = sub_20D87746C();
    v109 = v128;
    sub_20D8FF500(v142, v106, v107, v108, v110, v128);

    v82 = v139;
    sub_20D7EAF18(v109, v139, &qword_27C83ACD8, &qword_20D97CAB0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AFE0, &qword_20D97CD40);
    goto LABEL_9;
  }

  v96 = v129;
  sub_20D9007DC(v142, v129);
  v97 = v131;
  sub_20D90167C(v70, v131);

  v98 = v130;
  sub_20D7EB7E8(v96, v130, &qword_27C83AD00, &qword_20D97CAC8);
  v99 = v132;
  sub_20D7EB7E8(v97, v132, &qword_27C83AD10, &qword_20D97CAD0);
  sub_20D90A034();
  v100 = v133;
  sub_20D7EB7E8(v98, v133, &qword_27C83AD00, &qword_20D97CAC8);
  sub_20D90A154();
  v101 = v134;
  v102 = *(v134 + 48);
  sub_20D7EB7E8(v99, v100 + v102, &qword_27C83AD10, &qword_20D97CAD0);
  v103 = v135;
  sub_20D7EAF18(v100, v135, &qword_27C83AD00, &qword_20D97CAC8);
  sub_20D7EAF18(v100 + v102, v103 + *(v101 + 48), &qword_27C83AD10, &qword_20D97CAD0);
  sub_20D7E3944(v97, &qword_27C83AD10, &qword_20D97CAD0);
  sub_20D7E3944(v96, &qword_27C83AD00, &qword_20D97CAC8);
  sub_20D7E3944(v99, &qword_27C83AD10, &qword_20D97CAD0);
  sub_20D7E3944(v98, &qword_27C83AD00, &qword_20D97CAC8);
  v104 = v141;
  sub_20D7EAF18(v103, v141, &qword_27C83ACF0, &qword_20D97CAC0);
LABEL_10:
  v93 = v146;
  v92 = v147;
  v95 = v145;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AFD8, &qword_20D97CCD0);
  swift_storeEnumTagMultiPayload();
  v111 = v104;
  v112 = v140;
  sub_20D7EAF18(v111, v140, &qword_27C83AC68, &qword_20D97CA70);
  sub_20D7EAF18(v112, v152, &qword_27C83AC68, &qword_20D97CA70);
  v94 = v144;
  v91 = a1;
LABEL_11:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AFD0, &qword_20D97CCC8);
  swift_storeEnumTagMultiPayload();
  v113 = v91 + *(type metadata accessor for HistoricalUsageSnapshot() + 52);
  v114 = type metadata accessor for HistoricalUsageSnapshotDerivedInfo(0);
  v115 = *(v113 + *(v114 + 36));
  if (v115)
  {
    v116 = v151;
    sub_20D8F8BA8(v115, 1, v151);
    (*(v94 + 32))(v95, v116, v92);
    v117 = 0;
  }

  else
  {
    v117 = 1;
  }

  v118 = *(v94 + 56);
  v119 = 1;
  v118(v95, v117, 1, v92);
  v120 = *(v113 + *(v114 + 40));
  if (v120)
  {
    v121 = v151;
    sub_20D8F8BA8(v120, 0, v151);
    (*(v94 + 32))(v93, v121, v92);
    v119 = 0;
  }

  v118(v93, v119, 1, v92);
  v122 = v152;
  v123 = v143;
  sub_20D7EB7E8(v152, v143, &qword_27C83AC58, &qword_20D97CA68);
  *&v153 = v123;
  v124 = v148;
  sub_20D7EB7E8(v95, v148, &qword_27C83AE28, &qword_20D97CB70);
  *(&v153 + 1) = v124;
  v125 = v149;
  sub_20D7EB7E8(v93, v149, &qword_27C83AE28, &qword_20D97CB70);
  v154 = v125;
  sub_20D8EF234(&v153, v150);
  sub_20D7E3944(v93, &qword_27C83AE28, &qword_20D97CB70);
  sub_20D7E3944(v95, &qword_27C83AE28, &qword_20D97CB70);
  sub_20D7E3944(v122, &qword_27C83AC58, &qword_20D97CA68);
  sub_20D7E3944(v125, &qword_27C83AE28, &qword_20D97CB70);
  sub_20D7E3944(v124, &qword_27C83AE28, &qword_20D97CB70);
  return sub_20D7E3944(v123, &qword_27C83AC58, &qword_20D97CA68);
}

uint64_t sub_20D8F5360(uint64_t a1)
{
  v100 = sub_20D972AF8();
  v95 = *(v100 - 1);
  v2 = *(v95 + 64);
  v3 = MEMORY[0x28223BE20](v100);
  v90 = v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v94 = v81 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v81 - v11;
  v13 = sub_20D972628();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v17 = MEMORY[0x28223BE20](v16);
  v91 = v81 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v93 = v81 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v89 = v81 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v98 = v81 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v96 = v81 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v97 = v81 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v99 = v81 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  MEMORY[0x28223BE20](v31);
  v33 = v81 - v32;
  v34 = *(a1 + 16);
  v102 = v14;
  v103 = v35;
  v101 = v81 - v32;
  v92 = v36;
  if (v34)
  {
    v37 = a1 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v87 = *(v14 + 16);
    v87(v12, v37, v13);
    v38 = v102[7];
    v38(v12, 0, 1, v13);
    v40 = v102 + 4;
    v39 = v102[4];
    v39(v101, v12, v13);
    v87(v10, v37 + v40[5] * (v34 - 1), v13);
    v38(v10, 0, 1, v13);
    v33 = v101;
    v41 = v102;
    v39(v103, v10, v13);
  }

  else
  {
    v42 = *(v14 + 56);
    v42(v12, 1, 1, v13);
    sub_20D972428();
    v43 = *(v14 + 48);
    if (v43(v12, 1, v13) != 1)
    {
      sub_20D7E3944(v12, &qword_27C8389E8, &qword_20D9768D0);
    }

    v42(v10, 1, 1, v13);
    sub_20D972448();
    v44 = v43(v10, 1, v13);
    v41 = v14;
    if (v44 != 1)
    {
      sub_20D7E3944(v10, &qword_27C8389E8, &qword_20D9768D0);
    }
  }

  v45 = v88 + *(type metadata accessor for HistoricalUsageSnapshot() + 52);
  v46 = type metadata accessor for HistoricalUsageSnapshotDerivedInfo(0);
  v81[0] = *(v46 + 20);
  v88 = v46;
  v81[1] = *(v46 + 64);
  v47 = v41[2];
  v48 = v97;
  v47(v97, v33, v13);
  v49 = v96;
  v87 = v47;
  v47(v96, v48, v13);
  v51 = v94;
  v50 = v95;
  v52 = v100;
  v85 = *(v95 + 16);
  v86 = v95 + 16;
  (v85)(v94, v45, v100);
  v84 = *(v50 + 88);
  v53 = v84(v51, v52);
  v83 = *MEMORY[0x277D075B0];
  v82 = v45;
  if (v53 == v83)
  {
    sub_20D9730E8();
    v54 = v98;
    sub_20D972498();
    v55 = v41[1];
    v55(v49, v13);
LABEL_15:
    v55(v48, v13);
    v58 = v41[4];
    v58(v49, v54, v13);
    goto LABEL_16;
  }

  if (v53 == *MEMORY[0x277D075B8] || v53 == *MEMORY[0x277D075C8])
  {
    goto LABEL_14;
  }

  if (v53 == *MEMORY[0x277D075D0])
  {
    v57 = v97;
    v56 = v98;
    sub_20D972F98();
    sub_20D973018();
    sub_20D972498();
    v55 = v41[1];
    v55(v56, v13);
    v55(v49, v13);
    v55(v57, v13);
    v58 = v41[4];
    v58(v49, v89, v13);
    goto LABEL_16;
  }

  if (v53 == *MEMORY[0x277D075C0])
  {
LABEL_14:
    v48 = v97;
    v59 = v98;
    sub_20D9730D8();
    sub_20D972458();
    v54 = v89;
    sub_20D972498();
    v55 = v41[1];
    v60 = v59;
    v49 = v96;
    v55(v60, v13);
    v55(v49, v13);
    goto LABEL_15;
  }

  v55 = v41[1];
  v55(v49, v13);
  v58 = v41[4];
  v58(v49, v97, v13);
  (*(v95 + 8))(v94, v100);
LABEL_16:
  v58(v99, v49, v13);
  v61 = v91;
  v62 = v87;
  v87(v91, v103, v13);
  v63 = v92;
  v62(v92, v61, v13);
  v64 = v90;
  v65 = v82;
  v66 = v100;
  v85(v90);
  v67 = v84(v64, v66);
  if (v67 != v83)
  {
    if (v67 != *MEMORY[0x277D075B8] && v67 != *MEMORY[0x277D075C8])
    {
      if (v67 == *MEMORY[0x277D075D0])
      {
        v71 = v98;
        sub_20D972F98();
        sub_20D973018();
        v100 = v58;
        v72 = v89;
        v73 = v61;
LABEL_24:
        sub_20D972498();
        v55(v71, v13);
        v55(v63, v13);
        v55(v73, v13);
        v74 = v72;
        v58 = v100;
        (v100)(v63, v74, v13);
        goto LABEL_25;
      }

      if (v67 != *MEMORY[0x277D075C0])
      {
        v55(v63, v13);
        v58(v63, v61, v13);
        (*(v95 + 8))(v64, v100);
        goto LABEL_25;
      }
    }

    v71 = v98;
    sub_20D9730D8();
    v73 = v61;
    sub_20D972458();
    v100 = v58;
    v72 = v89;
    goto LABEL_24;
  }

  sub_20D9730E8();
  v68 = v58;
  v69 = v98;
  sub_20D972498();
  v55(v63, v13);
  v55(v61, v13);
  v70 = v69;
  v58 = v68;
  v68(v63, v70, v13);
LABEL_25:
  v75 = v93;
  v76 = (v58)(v93, v63, v13);
  v77 = *(v65 + *(v88 + 48));
  MEMORY[0x28223BE20](v76);
  v78 = v99;
  v81[-2] = v99;
  v81[-1] = v75;

  v79 = sub_20D8A3BFC(sub_20D90D42C, &v81[-4], v77);
  v55(v103, v13);
  v55(v101, v13);
  v55(v75, v13);
  v55(v78, v13);
  return v79;
}

uint64_t sub_20D8F5E8C@<X0>(unint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  LODWORD(v307) = a4;
  v275 = a3;
  LODWORD(v326) = a2;
  v335 = a1;
  v334 = a5;
  v333 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B070, &qword_20D97CF28);
  v6 = *(*(v333 - 8) + 64);
  MEMORY[0x28223BE20](v333);
  v332 = &v272 - v7;
  v329 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B078, &qword_20D97CF30);
  v328 = *(v329 - 8);
  v8 = *(v328 + 64);
  MEMORY[0x28223BE20](v329);
  v314 = &v272 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AE18, &qword_20D97CB68);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v331 = &v272 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v330 = &v272 - v14;
  v311 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B080, &qword_20D97CF38);
  v15 = *(*(v311 - 8) + 64);
  MEMORY[0x28223BE20](v311);
  v310 = &v272 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83ADF8, &qword_20D97CB58);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v272 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AE08, &qword_20D97CB60);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v309 = &v272 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v308 = &v272 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v316 = &v272 - v28;
  MEMORY[0x28223BE20](v27);
  KeyPath = &v272 - v29;
  v283 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B088, &qword_20D97CF40);
  v30 = *(*(v283 - 8) + 64);
  MEMORY[0x28223BE20](v283);
  v282 = &v272 - v31;
  v278 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83ACE0, &qword_20D97CAB8);
  v277 = *(v278 - 1);
  v32 = *(v277 + 8);
  MEMORY[0x28223BE20](v278);
  v276 = &v272 - v33;
  v319 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83ADE8, &qword_20D97CB50);
  v318 = *(v319 - 8);
  v34 = *(v318 + 64);
  MEMORY[0x28223BE20](v319);
  v315 = &v272 - v35;
  v281 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B090, &qword_20D97CF48);
  v280 = *(v281 - 8);
  v36 = *(v280 + 64);
  v37 = MEMORY[0x28223BE20](v281);
  v293 = &v272 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v292 = &v272 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83ADE0, &qword_20D97CB48);
  v41 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40 - 8);
  v279 = &v272 - v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83ADB8, &qword_20D97CB30);
  v44 = *(*(v43 - 8) + 64);
  MEMORY[0x28223BE20](v43 - 8);
  v306 = &v272 - v45;
  v297 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B098, &qword_20D97CF50);
  v46 = *(*(v297 - 8) + 64);
  MEMORY[0x28223BE20](v297);
  v296 = &v272 - v47;
  v290 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83ACB8, &qword_20D97CAA0);
  v288 = *(v290 - 8);
  v48 = *(v288 + 64);
  MEMORY[0x28223BE20](v290);
  v286 = &v272 - v49;
  v291 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83ADD0, &qword_20D97CB40);
  v289 = *(v291 - 8);
  v50 = *(v289 + 64);
  MEMORY[0x28223BE20](v291);
  v287 = (&v272 - v51);
  v295 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B0A0, &qword_20D97CF58);
  v294 = *(v295 - 8);
  v52 = *(v294 + 64);
  v53 = MEMORY[0x28223BE20](v295);
  v313 = &v272 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v53);
  v312 = &v272 - v55;
  v324 = sub_20D974118();
  v339 = *(v324 - 8);
  v56 = *(v339 + 64);
  MEMORY[0x28223BE20](v324);
  v303 = &v272 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AFF0, &qword_20D97CDB8);
  v59 = *(*(v58 - 8) + 64);
  MEMORY[0x28223BE20](v58 - 8);
  v323 = &v272 - v60;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AFF8, &qword_20D97CDC0);
  v62 = *(*(v61 - 8) + 64);
  v63 = MEMORY[0x28223BE20](v61 - 8);
  v322 = &v272 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v63);
  v321 = &v272 - v65;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839548, &unk_20D979C20);
  v67 = *(*(v66 - 8) + 64);
  MEMORY[0x28223BE20](v66 - 8);
  v317 = &v272 - v68;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B000, &qword_20D97CDC8);
  v70 = *(*(v69 - 8) + 64);
  MEMORY[0x28223BE20](v69 - 8);
  v337 = &v272 - v71;
  v302 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AC98, &qword_20D97CA90);
  v338 = *(v302 - 8);
  v72 = *(v338 + 64);
  MEMORY[0x28223BE20](v302);
  v320 = &v272 - v73;
  v301 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AC90, &qword_20D97CA88);
  v300 = *(v301 - 8);
  v74 = *(v300 + 64);
  MEMORY[0x28223BE20](v301);
  v299 = &v272 - v75;
  v305 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B008, &qword_20D97CDD0);
  v304 = *(v305 - 8);
  v76 = *(v304 + 64);
  v77 = MEMORY[0x28223BE20](v305);
  v325 = &v272 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v77);
  v340 = &v272 - v79;
  v80 = sub_20D973D58();
  v284 = *(v80 - 8);
  v81 = v284[8];
  MEMORY[0x28223BE20](v80);
  v83 = &v272 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_20D973B18();
  v85 = *(v84 - 8);
  v86 = *(v85 + 64);
  v87 = MEMORY[0x28223BE20](v84);
  v89 = &v272 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v87);
  v91 = &v272 - v90;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83ADC8, &qword_20D97CB38);
  v93 = *(*(v92 - 8) + 64);
  MEMORY[0x28223BE20](v92 - 8);
  v285 = &v272 - v94;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83ADA8, &qword_20D97CB28);
  v96 = *(*(v95 - 8) + 64);
  v97 = MEMORY[0x28223BE20](v95 - 8);
  v327 = &v272 - ((v98 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v97);
  v343 = &v272 - v99;
  v298 = type metadata accessor for HistoricalUsageChart();
  v100 = *(v298 + 52);
  v342 = v5;
  v101 = v5 + v100;
  v102 = *(v101 + 16);
  v344 = *v101;
  v345 = v102;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AF28, &qword_20D97D2D0);
  sub_20D974A48();

  v104 = sub_20D90C230(v103);

  if (!*(v104 + 16))
  {
    v109 = 0;
    v341 = 0;
    goto LABEL_13;
  }

  v105 = sub_20D8D4C18(2);
  if (v106)
  {
    v341 = *(*(v104 + 56) + 8 * v105);

    if (*(v104 + 16))
    {
      goto LABEL_4;
    }

LABEL_9:
    v109 = 0;
    goto LABEL_13;
  }

  v341 = 0;
  if (!*(v104 + 16))
  {
    goto LABEL_9;
  }

LABEL_4:
  v107 = sub_20D8D4C18(0);
  if ((v108 & 1) == 0)
  {
    v109 = 0;
    if (*(v104 + 16))
    {
      goto LABEL_11;
    }

LABEL_13:
    v112 = 0;
    goto LABEL_14;
  }

  v109 = *(*(v104 + 56) + 8 * v107);

  if (!*(v104 + 16))
  {
    goto LABEL_13;
  }

LABEL_11:
  v110 = sub_20D8D4C18(1);
  if ((v111 & 1) == 0)
  {
    goto LABEL_13;
  }

  v112 = *(*(v104 + 56) + 8 * v110);

LABEL_14:

  if ((v326 & 1) != 0 || v335 > 2)
  {
    v335 = v20;
    v181 = v319;
    v182 = v318;
    if (v307)
    {
      v183 = v316;
      if (v109)
      {
        v184 = v315;
        sub_20D8FCC14(v109, v315);

        (*(v182 + 32))(KeyPath, v184, v181);
        v185 = 0;
        goto LABEL_40;
      }
    }

    else
    {
      v183 = v316;
      if (v109)
      {

        if (v341)
        {
          v186 = v341;
        }

        else
        {
          v186 = MEMORY[0x277D84F90];
        }

        *&v344 = v109;

        v187 = sub_20D95B09C(v186);
        v188 = v344;
        MEMORY[0x28223BE20](v187);
        KeyPath = swift_getKeyPath();
        v335 = swift_getKeyPath();
        v189 = v342;
        v295 = v342 + *(v298 + 40);
        v190 = *(v295 + 16);
        v316 = sub_20D87746C();
        v326 = v191;
        v348 = v190;
        v347 = v188;
        v192 = qword_27C8386D8;
        v313 = v188;

        if (v192 != -1)
        {
          swift_once();
        }

        v193 = *(&xmmword_27C83AB58 + 1);
        v310 = xmmword_27C83AB58;
        v344 = xmmword_27C83AB58;
        swift_getKeyPath();
        v194 = v189 + *(type metadata accessor for HistoricalUsageSnapshot() + 52);
        v195 = type metadata accessor for HistoricalUsageSnapshotDerivedInfo(0);
        v196 = v194 + *(v195 + 20);
        v197 = v194 + *(v195 + 64);
        v198 = sub_20D9727D8();
        v199 = *(v198 - 8);
        v200 = *(v199 + 16);
        v201 = v317;
        v308 = v197;
        v298 = v199 + 16;
        v297 = v200;
        v200(v317, v197, v198);
        v202 = *(v199 + 56);
        v309 = v198;
        v307 = v199 + 56;
        v296 = v202;
        (v202)(v201, 0, 1, v198);
        v203 = sub_20D7E1EF8();
        swift_bridgeObjectRetain_n();
        v311 = v196;
        sub_20D9737C8();

        sub_20D7E3944(v201, &qword_27C839548, &unk_20D979C20);
        v312 = v193;

        if (qword_27C8386E0 != -1)
        {
          swift_once();
        }

        v204 = *(&xmmword_27C83AB68 + 1);
        v344 = xmmword_27C83AB68;
        v205 = xmmword_27C83AB68;
        v291 = xmmword_27C83AB68;
        swift_getKeyPath();
        swift_bridgeObjectRetain_n();
        sub_20D9737B8();

        *&v344 = v205;
        *(&v344 + 1) = v204;

        sub_20D9737B8();

        v294 = sub_20D972C58();
        sub_20D9736E8();
        v284 = v203;
        v289 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C83C780, &qword_20D97E0C0);
        v288 = sub_20D972628();
        v290 = sub_20D7EBC4C(&qword_281124C00, &unk_27C83C780, &qword_20D97E0C0);
        v206 = v320;
        sub_20D973668();
        v207 = [objc_opt_self() secondarySystemFillColor];
        *&v344 = sub_20D974888();
        v208 = sub_20D909D58();
        v209 = MEMORY[0x277CE0F78];
        v210 = v299;
        v211 = v302;
        v212 = v208;
        v273 = v208;
        sub_20D9735B8();
        v213 = *(v338 + 8);
        v338 += 8;
        v287 = v213;
        v213(v206, v211);

        v214 = *(v295 + 8);
        sub_20D9741C8();
        LODWORD(v295) = *MEMORY[0x277CE0118];
        v215 = v339;
        v216 = *(v339 + 104);
        v285 = (v339 + 104);
        v286 = v216;
        v217 = v303;
        v218 = v324;
        (v216)(v303);
        *&v344 = v211;
        *(&v344 + 1) = v209;
        v345 = v212;
        v346 = MEMORY[0x277CE0F60];
        v275 = MEMORY[0x277CBB260];
        swift_getOpaqueTypeConformance2();
        v219 = v301;
        sub_20D9735D8();
        v220 = *(v215 + 8);
        v339 = v215 + 8;
        v274 = v220;
        v220(v217, v218);
        (*(v300 + 8))(v210, v219);
        v347 = v313;
        *&v344 = v310;
        *(&v344 + 1) = v312;
        swift_getKeyPath();
        v221 = v309;
        (v297)(v201, v308, v309);
        (v296)(v201, 0, 1, v221);
        sub_20D9737C8();

        sub_20D7E3944(v201, &qword_27C839548, &unk_20D979C20);

        v222 = v291;
        *&v344 = v291;
        *(&v344 + 1) = v204;
        swift_getKeyPath();
        sub_20D9737B8();

        *&v344 = v222;
        *(&v344 + 1) = v204;
        sub_20D9737B8();

        sub_20D9736E8();
        v223 = v320;
        sub_20D973668();
        v224 = MEMORY[0x277CE1318];
        v225 = MEMORY[0x277CE1310];
        v226 = v276;
        v227 = v273;
        sub_20D9735B8();
        v287(v223, v211);
        sub_20D9741C8();
        v228 = v324;
        (v286)(v217, v295, v324);
        *&v344 = v211;
        *(&v344 + 1) = v224;
        v345 = v227;
        v346 = v225;
        OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
        v230 = v315;
        v231 = v278;
        sub_20D9735D8();
        v274(v217, v228);
        (*(v277 + 1))(v226, v231);
        *&v344 = v231;
        *(&v344 + 1) = OpaqueTypeConformance2;
        swift_getOpaqueTypeConformance2();
        v232 = v292;
        v233 = v319;
        sub_20D9735E8();

        (*(v318 + 8))(v230, v233);
        v234 = v304;
        v235 = *(v304 + 16);
        v236 = v325;
        v237 = v305;
        v235(v325, v340, v305);
        v238 = v280;
        v239 = *(v280 + 16);
        v240 = v281;
        v239(v293, v232, v281);
        v241 = v282;
        v235(v282, v236, v237);
        v242 = v283;
        v243 = *(v283 + 48);
        v244 = v293;
        v239(&v241[v243], v293, v240);
        v245 = v279;
        (*(v234 + 32))(v279, v241, v237);
        (*(v238 + 32))(v245 + *(v242 + 48), &v241[v243], v240);

        v246 = *(v238 + 8);
        v246(v292, v240);
        v247 = *(v234 + 8);
        v247(v340, v237);
        v246(v244, v240);
        v247(v325, v237);
        v180 = v306;
        sub_20D7EAF18(v245, v306, &qword_27C83ADE0, &qword_20D97CB48);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B0B0, &qword_20D97D000);
        goto LABEL_37;
      }
    }

    v185 = 1;
    goto LABEL_40;
  }

  if (v109)
  {

    if (v341)
    {
      v113 = v341;
    }

    else
    {
      v113 = MEMORY[0x277D84F90];
    }

    *&v344 = v109;

    v114 = sub_20D95B09C(v113);
    v319 = v344;
    MEMORY[0x28223BE20](v114);
    v115 = v335;
    KeyPath = swift_getKeyPath();
    v326 = swift_getKeyPath();
    v116 = v85;
    v117 = v80;
    v118 = v342;
    sub_20D8EF98C(v91);
    (*(v116 + 104))(v89, *MEMORY[0x277CDF3C0], v84);
    v119 = sub_20D973B08();
    v120 = *(v116 + 8);
    v120(v89, v84);
    v120(v91, v84);
    sub_20D8EF784(v83);
    v121 = sub_20D973D38();
    (v284[1])(v83, v117);
    v122 = sub_20D8E5420(v119 & 1, v121 & 1, v115);
    *&v344 = 0;
    *(&v344 + 1) = 0xE000000000000000;
    sub_20D975678();
    MEMORY[0x20F323340](0xD000000000000043, 0x800000020D989F90);
    v123 = sub_20D8E52A0(v115);
    MEMORY[0x20F323340](v123);

    MEMORY[0x20F323340](0x657463656C65532ELL, 0xE900000000000064);
    v335 = *(&v344 + 1);
    v318 = v344;
    v316 = v122;
    v348 = v122;
    v349 = 1061997773;
    v347 = v319;
    v124 = qword_27C8386D8;

    if (v124 != -1)
    {
      swift_once();
    }

    v125 = *(&xmmword_27C83AB58 + 1);
    v310 = xmmword_27C83AB58;
    v344 = xmmword_27C83AB58;
    swift_getKeyPath();
    v126 = v118 + *(type metadata accessor for HistoricalUsageSnapshot() + 52);
    v127 = type metadata accessor for HistoricalUsageSnapshotDerivedInfo(0);
    v128 = v126 + *(v127 + 20);
    v129 = v126 + *(v127 + 64);
    v130 = sub_20D9727D8();
    v131 = *(v130 - 8);
    v132 = *(v131 + 16);
    v133 = v317;
    v308 = v129;
    v293 = (v131 + 16);
    v292 = v132;
    (v132)(v317, v129, v130);
    v134 = *(v131 + 56);
    v309 = v130;
    v307 = v131 + 56;
    v284 = v134;
    (v134)(v133, 0, 1, v130);
    v135 = sub_20D7E1EF8();
    swift_bridgeObjectRetain_n();
    v311 = v128;
    sub_20D9737C8();

    sub_20D7E3944(v133, &qword_27C839548, &unk_20D979C20);
    v315 = v125;

    if (qword_27C8386E0 != -1)
    {
      swift_once();
    }

    v136 = *(&xmmword_27C83AB68 + 1);
    v344 = xmmword_27C83AB68;
    v137 = xmmword_27C83AB68;
    v282 = xmmword_27C83AB68;
    swift_getKeyPath();
    swift_bridgeObjectRetain_n();
    v272 = v135;
    sub_20D9737B8();

    *&v344 = v137;
    *(&v344 + 1) = v136;

    sub_20D9737B8();

    v283 = sub_20D972C58();
    sub_20D9736E8();
    v280 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C83C780, &qword_20D97E0C0);
    v279 = sub_20D972628();
    v281 = sub_20D7EBC4C(&qword_281124C00, &unk_27C83C780, &qword_20D97E0C0);
    v138 = v320;
    sub_20D973668();
    v139 = [objc_opt_self() secondarySystemFillColor];
    *&v344 = sub_20D974888();
    v140 = sub_20D909D58();
    v141 = MEMORY[0x277CE0F78];
    v142 = v299;
    v143 = v302;
    v273 = v140;
    sub_20D9735B8();
    v144 = *(v338 + 8);
    v338 += 8;
    v278 = v144;
    (v144)(v138, v143);

    v145 = *(v342 + *(v298 + 40) + 8);
    sub_20D9741C8();
    LODWORD(v298) = *MEMORY[0x277CE0118];
    v146 = v339;
    v147 = *(v339 + 104);
    v276 = (v339 + 104);
    v277 = v147;
    v148 = v303;
    v149 = v324;
    v147(v303);
    *&v344 = v143;
    *(&v344 + 1) = v141;
    v345 = v140;
    v346 = MEMORY[0x277CE0F60];
    v275 = MEMORY[0x277CBB260];
    swift_getOpaqueTypeConformance2();
    v150 = v301;
    sub_20D9735D8();
    v151 = *(v146 + 8);
    v339 = v146 + 8;
    v274 = v151;
    v151(v148, v149);
    (*(v300 + 8))(v142, v150);
    v347 = v319;
    *&v344 = v310;
    *(&v344 + 1) = v315;
    swift_getKeyPath();
    v152 = v317;
    v153 = v309;
    (v292)(v317, v308, v309);
    (v284)(v152, 0, 1, v153);
    sub_20D9737C8();

    sub_20D7E3944(v152, &qword_27C839548, &unk_20D979C20);

    v154 = v282;
    *&v344 = v282;
    *(&v344 + 1) = v136;
    swift_getKeyPath();
    sub_20D9737B8();

    *&v344 = v154;
    *(&v344 + 1) = v136;
    sub_20D9737B8();

    sub_20D9736E8();
    v155 = v320;
    sub_20D973668();
    v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83ACC0, &qword_20D97CAA8);
    v157 = sub_20D7EBC4C(&qword_27C83ACC8, &qword_27C83ACC0, &qword_20D97CAA8);
    v158 = v286;
    v159 = v273;
    sub_20D9735B8();
    (v278)(v155, v143);

    sub_20D9741C8();
    v160 = v324;
    (v277)(v148, v298, v324);
    *&v344 = v143;
    *(&v344 + 1) = v156;
    v345 = v159;
    v346 = v157;
    v161 = swift_getOpaqueTypeConformance2();
    v162 = v287;
    v163 = v290;
    sub_20D9735D8();
    v274(v148, v160);
    (*(v288 + 8))(v158, v163);
    *&v344 = v163;
    *(&v344 + 1) = v161;
    swift_getOpaqueTypeConformance2();
    v164 = v312;
    v165 = v291;
    sub_20D9735E8();

    (*(v289 + 8))(v162, v165);
    v166 = v304;
    v167 = *(v304 + 16);
    v168 = v325;
    v169 = v305;
    v167(v325, v340, v305);
    v170 = v294;
    v171 = *(v294 + 16);
    v172 = v295;
    v171(v313, v164, v295);
    v173 = v296;
    v167(v296, v168, v169);
    v174 = v297;
    v175 = *(v297 + 48);
    v176 = v313;
    v171(&v173[v175], v313, v172);
    v177 = v285;
    (*(v166 + 32))(v285, v173, v169);
    (*(v170 + 32))(v177 + *(v174 + 48), &v173[v175], v172);

    v178 = *(v170 + 8);
    v178(v312, v172);
    v179 = *(v166 + 8);
    v179(v340, v169);
    v178(v176, v172);
    v179(v325, v169);
    v180 = v306;
    sub_20D7EAF18(v177, v306, &qword_27C83ADC8, &qword_20D97CB38);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B0B0, &qword_20D97D000);
LABEL_37:
    swift_storeEnumTagMultiPayload();
    sub_20D7EAF18(v180, v343, &qword_27C83ADB8, &qword_20D97CB30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B0A8, &qword_20D97CF60);
    goto LABEL_43;
  }

  v335 = v20;
  v185 = 1;
  v181 = v319;
  v182 = v318;
  v183 = v316;
LABEL_40:
  v248 = *(v182 + 56);
  v249 = 1;
  v248(KeyPath, v185, 1, v181);
  if (v112)
  {
    v250 = v315;
    sub_20D8FD388(v112, v315);

    (*(v182 + 32))(v183, v250, v181);
    v249 = 0;
  }

  v248(v183, v249, 1, v181);
  v251 = KeyPath;
  v252 = v308;
  sub_20D7EB7E8(KeyPath, v308, &qword_27C83AE08, &qword_20D97CB60);
  v253 = v309;
  sub_20D7EB7E8(v183, v309, &qword_27C83AE08, &qword_20D97CB60);
  sub_20D90ABF8();
  v254 = v310;
  sub_20D7EB7E8(v252, v310, &qword_27C83AE08, &qword_20D97CB60);
  v255 = v311;
  v256 = *(v311 + 48);
  sub_20D7EB7E8(v253, v254 + v256, &qword_27C83AE08, &qword_20D97CB60);
  v257 = v335;
  sub_20D7EAF18(v254, v335, &qword_27C83AE08, &qword_20D97CB60);
  sub_20D7EAF18(v254 + v256, v257 + *(v255 + 48), &qword_27C83AE08, &qword_20D97CB60);
  sub_20D7E3944(v183, &qword_27C83AE08, &qword_20D97CB60);
  sub_20D7E3944(v251, &qword_27C83AE08, &qword_20D97CB60);
  sub_20D7E3944(v253, &qword_27C83AE08, &qword_20D97CB60);
  sub_20D7E3944(v252, &qword_27C83AE08, &qword_20D97CB60);
  sub_20D7EAF18(v257, v343, &qword_27C83ADF8, &qword_20D97CB58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B0A8, &qword_20D97CF60);
LABEL_43:
  swift_storeEnumTagMultiPayload();
  v258 = v330;
  v259 = v329;
  if (v341)
  {
    v260 = v314;
    sub_20D8FDB00(v341, v314);

    v261 = v328;
    (*(v328 + 32))(v258, v260, v259);
    v262 = 0;
  }

  else
  {
    v262 = 1;
    v261 = v328;
  }

  (*(v261 + 56))(v258, v262, 1, v259);
  v263 = v343;
  v264 = v327;
  sub_20D7EB7E8(v343, v327, &qword_27C83ADA8, &qword_20D97CB28);
  v265 = v331;
  sub_20D7EB7E8(v258, v331, &qword_27C83AE18, &qword_20D97CB68);
  sub_20D90A674();
  v266 = v332;
  sub_20D7EB7E8(v264, v332, &qword_27C83ADA8, &qword_20D97CB28);
  sub_20D90AD10();
  v267 = v258;
  v268 = v333;
  v269 = *(v333 + 48);
  sub_20D7EB7E8(v265, v266 + v269, &qword_27C83AE18, &qword_20D97CB68);
  v270 = v334;
  sub_20D7EAF18(v266, v334, &qword_27C83ADA8, &qword_20D97CB28);
  sub_20D7EAF18(v266 + v269, v270 + *(v268 + 48), &qword_27C83AE18, &qword_20D97CB68);
  sub_20D7E3944(v267, &qword_27C83AE18, &qword_20D97CB68);
  sub_20D7E3944(v263, &qword_27C83ADA8, &qword_20D97CB28);
  sub_20D7E3944(v265, &qword_27C83AE18, &qword_20D97CB68);
  return sub_20D7E3944(v264, &qword_27C83ADA8, &qword_20D97CB28);
}

uint64_t sub_20D8F8BA8@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v57 = a2;
  v65 = a3;
  v66 = sub_20D974118();
  v64 = *(v66 - 8);
  v5 = *(v64 + 64);
  MEMORY[0x28223BE20](v66);
  v63 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AFF0, &qword_20D97CDB8);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v60 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v58 = &v51 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AFF8, &qword_20D97CDC0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839548, &unk_20D979C20);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v51 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B000, &qword_20D97CDC8);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v67 = &v51 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AC98, &qword_20D97CA90);
  v53 = *(v21 - 8);
  v54 = v21;
  v22 = *(v53 + 64);
  MEMORY[0x28223BE20](v21);
  v51 = &v51 - v23;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AC90, &qword_20D97CA88);
  v55 = *(v59 - 8);
  v24 = *(v55 + 64);
  MEMORY[0x28223BE20](v59);
  v52 = &v51 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AE30, &qword_20D97CB78);
  v61 = *(v26 - 8);
  v62 = v26;
  v27 = *(v61 + 64);
  MEMORY[0x28223BE20](v26);
  v56 = &v51 - v28;
  v72 = a1;
  v29 = qword_27C8386D8;

  if (v29 != -1)
  {
    swift_once();
  }

  v68 = xmmword_27C83AB58;
  swift_getKeyPath();
  v30 = v3 + *(type metadata accessor for HistoricalUsageSnapshot() + 52);
  v31 = type metadata accessor for HistoricalUsageSnapshotDerivedInfo(0);
  v32 = *(v31 + 20);
  v33 = *(v31 + 64);
  v34 = sub_20D9727D8();
  v35 = *(v34 - 8);
  (*(v35 + 16))(v17, v30 + v33, v34);
  (*(v35 + 56))(v17, 0, 1, v34);
  sub_20D7E1EF8();

  sub_20D9737C8();

  sub_20D7E3944(v17, &qword_27C839548, &unk_20D979C20);

  if (qword_27C8386E0 != -1)
  {
    swift_once();
  }

  v68 = xmmword_27C83AB68;
  v71 = 0;
  sub_20D972C58();
  sub_20D9737A8();
  sub_20D9736D8();
  sub_20D9736E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C83C780, &qword_20D97E0C0);
  sub_20D972628();
  sub_20D7EBC4C(&qword_281124C00, &unk_27C83C780, &qword_20D97E0C0);
  v36 = v51;
  sub_20D973658();
  v37 = [objc_opt_self() systemOrangeColor];
  *&v68 = sub_20D974888();
  v38 = sub_20D909D58();
  v39 = MEMORY[0x277CE0F78];
  v40 = MEMORY[0x277CE0F60];
  v41 = v52;
  v42 = v54;
  sub_20D9735B8();

  (*(v53 + 8))(v36, v42);
  *&v68 = v42;
  *(&v68 + 1) = v39;
  v69 = v38;
  v70 = v40;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v44 = v56;
  v45 = v59;
  sub_20D973618();
  (*(v55 + 8))(v41, v45);
  v47 = v63;
  v46 = v64;
  v48 = v66;
  (*(v64 + 104))(v63, *MEMORY[0x277CE0118], v66);
  *&v68 = v45;
  *(&v68 + 1) = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v49 = v62;
  sub_20D9735A8();
  (*(v46 + 8))(v47, v48);
  return (*(v61 + 8))(v44, v49);
}

uint64_t sub_20D8F93B8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83CAA0, &qword_20D978AA0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v23 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839548, &unk_20D979C20);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v23 - v7;
  v9 = sub_20D972AF8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v0 + *(type metadata accessor for HistoricalUsageSnapshot() + 48);
  sub_20D972E58();
  v15 = (*(v10 + 88))(v13, v9);
  if (v15 == *MEMORY[0x277D075B0] || v15 == *MEMORY[0x277D075B8] || v15 == *MEMORY[0x277D075C8] || v15 == *MEMORY[0x277D075D0])
  {
    v16 = sub_20D9727D8();
    (*(*(v16 - 8) + 56))(v8, 1, 1, v16);
    v17 = sub_20D972838();
    (*(*(v17 - 8) + 56))(v4, 1, 1, v17);
    return sub_20D971E98();
  }

  v19 = *MEMORY[0x277D075C0];
  v20 = v15;
  v21 = sub_20D9727D8();
  (*(*(v21 - 8) + 56))(v8, 1, 1, v21);
  v22 = sub_20D972838();
  (*(*(v22 - 8) + 56))(v4, 1, 1, v22);
  if (v20 == v19)
  {
    return sub_20D971E98();
  }

  sub_20D971E98();
  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_20D8F9A04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AF50, &qword_20D97CC50);
  v3 = *(*(v60 - 8) + 64);
  MEMORY[0x28223BE20](v60);
  v59 = &v50 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AEA0, &qword_20D97CBB8);
  v56 = *(v5 - 8);
  v57 = v5;
  v6 = *(v56 + 64);
  MEMORY[0x28223BE20](v5);
  v51 = &v50 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AE90, &qword_20D97CBB0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v58 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v54 = &v50 - v12;
  v13 = sub_20D973738();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = sub_20D973688();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = type metadata accessor for HistoricalUsageChart();
  v18 = v17 - 8;
  v19 = *(v17 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v17);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AE80, &qword_20D97CBA8);
  v53 = *(v55 - 8);
  v21 = *(v53 + 64);
  v22 = MEMORY[0x28223BE20](v55);
  v24 = &v50 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v50 - v25;
  v27 = *(type metadata accessor for HistoricalUsageSnapshot() + 52);
  v52 = a1;
  v28 = *(a1 + v27 + *(type metadata accessor for HistoricalUsageSnapshotDerivedInfo(0) + 56) + 16);
  sub_20D91092C(a1, &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for HistoricalUsageChart);
  v29 = (*(v19 + 80) + 16) & ~*(v19 + 80);
  v30 = swift_allocObject();
  sub_20D910994(&v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), v30 + v29, type metadata accessor for HistoricalUsageChart);

  sub_20D973678();
  sub_20D973728();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AF58, &qword_20D97CC58);
  sub_20D7EBC4C(&qword_27C83AF60, &qword_27C83AF58, &qword_20D97CC58);
  sub_20D973998();
  if (*(v52 + *(v18 + 52)) == 1)
  {
    sub_20D973678();
    sub_20D973728();
    sub_20D973578();
    v31 = v51;
    sub_20D9739A8();
    v33 = v56;
    v32 = v57;
    v34 = v54;
    (*(v56 + 32))(v54, v31, v57);
    v35 = 0;
    v36 = v32;
    v37 = v33;
  }

  else
  {
    v35 = 1;
    v34 = v54;
    v37 = v56;
    v36 = v57;
  }

  (*(v37 + 56))(v34, v35, 1, v36);
  v38 = v53;
  v39 = *(v53 + 16);
  v40 = v26;
  v41 = v26;
  v42 = v55;
  v39(v24, v41, v55);
  v43 = v58;
  sub_20D7EB7E8(v34, v58, &qword_27C83AE90, &qword_20D97CBB0);
  sub_20D7EBC4C(&qword_27C83AE78, &qword_27C83AE80, &qword_20D97CBA8);
  v44 = v59;
  v39(v59, v24, v42);
  sub_20D90B0BC();
  v45 = v60;
  v46 = *(v60 + 48);
  sub_20D7EB7E8(v43, &v44[v46], &qword_27C83AE90, &qword_20D97CBB0);
  v47 = v61;
  (*(v38 + 32))(v61, v44, v42);
  sub_20D7EAF18(&v44[v46], v47 + *(v45 + 48), &qword_27C83AE90, &qword_20D97CBB0);
  sub_20D7E3944(v34, &qword_27C83AE90, &qword_20D97CBB0);
  v48 = *(v38 + 8);
  v48(v40, v42);
  sub_20D7E3944(v43, &qword_27C83AE90, &qword_20D97CBB0);
  return (v48)(v24, v42);
}

unint64_t sub_20D8FA0B0(uint64_t a1, uint64_t a2)
{
  v3 = sub_20D9737E8();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = sub_20D973858();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = a2 + *(type metadata accessor for HistoricalUsageSnapshot() + 52);
  v8 = *(v7 + *(type metadata accessor for HistoricalUsageSnapshotDerivedInfo(0) + 56) + 16);
  result = sub_20D9739C8();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *(v8 + 16))
  {
    v10 = *(v8 + 8 * result + 32);
    v11 = sub_20D974C68();
    MEMORY[0x28223BE20](v11);
    sub_20D973848();
    sub_20D9737D8();
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AF68, &unk_20D97CC60);
    v17 = sub_20D90BE64();
    v14 = sub_20D90BE18;
    v15 = &v12;
    v13 = 1;
    v12 = 0;
    return sub_20D9736B8();
  }

  __break(1u);
  return result;
}

uint64_t sub_20D8FA2CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v18 = a1;
  v5 = sub_20D973548();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for HistoricalUsageChart();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = sub_20D9748F8();
  sub_20D91092C(a2, &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for HistoricalUsageChart);
  (*(v6 + 16))(v8, v18, v5);
  v13 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v14 = (v11 + *(v6 + 80) + v13) & ~*(v6 + 80);
  v15 = swift_allocObject();
  sub_20D910994(&v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v13, type metadata accessor for HistoricalUsageChart);
  result = (*(v6 + 32))(v15 + v14, v8, v5);
  *a3 = v12;
  *(a3 + 8) = 256;
  *(a3 + 16) = sub_20D90B598;
  *(a3 + 24) = v15;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  return result;
}

uint64_t sub_20D8FA4E4(uint64_t a1)
{
  sub_20D973508();
  v2 = (a1 + *(type metadata accessor for HistoricalUsageChart() + 52));
  v4 = *v2;
  v5 = *(v2 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AF28, &qword_20D97D2D0);
  return sub_20D974A58();
}

uint64_t sub_20D8FA56C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v95 = a1;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AEE8, &qword_20D97CBE0);
  v105 = *(v106 - 8);
  v5 = *(v105 + 64);
  MEMORY[0x28223BE20](v106);
  v101 = &v83 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AEF0, &qword_20D97CBE8);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v108 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v107 = &v83 - v11;
  v100 = type metadata accessor for HistoricalUsageChart();
  v92 = *(v100 - 8);
  v12 = *(v92 + 64);
  MEMORY[0x28223BE20](v100);
  v93 = v13;
  v99 = &v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_20D973548();
  v94 = *(v98 - 8);
  v14 = *(v94 + 64);
  MEMORY[0x28223BE20](v98);
  v91 = v15;
  v97 = &v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_20D972C58();
  v102 = *(v103 - 8);
  v16 = *(v102 + 64);
  v17 = MEMORY[0x28223BE20](v103);
  v96 = &v83 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v90 = &v83 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AEF8, &qword_20D97CBF0);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = &v83 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v83 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v29 = &v83 - v28;
  v30 = sub_20D972628();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  v33 = MEMORY[0x28223BE20](v30);
  v104 = &v83 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v35 = &v83 - v34;
  sub_20D8EFD9C(v29);
  if ((*(v31 + 48))(v29, 1, v30) == 1)
  {
    sub_20D7E3944(v29, &qword_27C8389E8, &qword_20D9768D0);
    v36 = 0;
    v37 = 1;
    v38 = a2;
  }

  else
  {
    v89 = a3;
    v88 = *(v31 + 32);
    v88(v35, v29, v30);
    v86 = sub_20D8FB0AC(v25);
    sub_20D7EAF18(v25, v23, &qword_27C83AEF8, &qword_20D97CBF0);
    v38 = a2;
    if ((*(v102 + 48))(v23, 1, v103) == 1)
    {
      (*(v31 + 8))(v35, v30);
      sub_20D7E3944(v23, &qword_27C83AEF8, &qword_20D97CBF0);
      v37 = 0;
      v36 = 0;
    }

    else
    {
      v87 = v31;
      v40 = v102 + 32;
      v39 = *(v102 + 32);
      v41 = v90;
      v85 = v30;
      v42 = v103;
      v39(v90, v23);
      v43 = v39;
      v84 = v39;
      v44 = v94;
      (*(v94 + 16))(v97, v95, v98);
      sub_20D91092C(v38, v99, type metadata accessor for HistoricalUsageChart);
      v45 = v42;
      v30 = v85;
      v43(v96, v41, v45);
      v88(v104, v35, v30);
      v46 = (*(v44 + 80) + 16) & ~*(v44 + 80);
      v47 = (v91 + *(v92 + 80) + v46) & ~*(v92 + 80);
      v48 = *(v40 + 48);
      v102 = v38;
      v49 = (v93 + v48 + v47) & ~v48;
      v50 = (v16 + *(v87 + 80) + v49) & ~*(v87 + 80);
      v36 = swift_allocObject();
      (*(v44 + 32))(v36 + v46, v97, v98);
      sub_20D910994(v99, v36 + v47, type metadata accessor for HistoricalUsageChart);
      v51 = v36 + v49;
      v38 = v102;
      v84(v51, v96, v103);
      v31 = v87;
      v88((v36 + v50), v104, v30);
      *(v36 + v50 + v32) = v86 & 1;

      v37 = sub_20D90B3B4;
    }

    a3 = v89;
  }

  v52 = v38 + *(type metadata accessor for HistoricalUsageSnapshot() + 52);
  if (*(v52 + *(type metadata accessor for HistoricalUsageSnapshotDerivedInfo(0) + 60)) == 1)
  {
    *&v115[0] = 0x203A4453434CLL;
    *(&v115[0] + 1) = 0xE600000000000000;
    v53 = *(v100 + 32);
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AB88, &unk_20D97C960);
    v55 = v104;
    MEMORY[0x20F322CD0](v54);
    v56 = sub_20D9725F8();
    v58 = v57;
    (*(v31 + 8))(v55, v30);
    MEMORY[0x20F323340](v56, v58);

    sub_20D974488();
    v59 = sub_20D974558();
    v61 = v60;
    v63 = v62;
    v65 = v64;

    v66 = sub_20D974338();
    sub_20D973AD8();
    v68 = v67;
    v70 = v69;
    v72 = v71;
    v74 = v73;
    LOBYTE(v115[0]) = v63 & 1;
    LOBYTE(v109) = 0;
    v75 = sub_20D9748B8();
    *&v109 = v59;
    *(&v109 + 1) = v61;
    LOBYTE(v110) = v63 & 1;
    *(&v110 + 1) = v65;
    LOBYTE(v111) = v66;
    *(&v111 + 1) = v68;
    *&v112 = v70;
    *(&v112 + 1) = v72;
    *&v113 = v74;
    BYTE8(v113) = 0;
    v114 = v75;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AF08, &unk_20D97CC00);
    sub_20D90B2DC();
    v76 = v101;
    sub_20D9747F8();
    v115[2] = v111;
    v115[3] = v112;
    v115[4] = v113;
    v116 = v114;
    v115[0] = v109;
    v115[1] = v110;
    sub_20D7E3944(v115, &qword_27C83AF08, &unk_20D97CC00);
    v77 = v105;
    v78 = v107;
    v79 = v106;
    (*(v105 + 32))(v107, v76, v106);
    (*(v77 + 56))(v78, 0, 1, v79);
  }

  else
  {
    v78 = v107;
    (*(v105 + 56))(v107, 1, 1, v106);
  }

  v80 = v108;
  sub_20D7EB7E8(v78, v108, &qword_27C83AEF0, &qword_20D97CBE8);
  *a3 = v37;
  a3[1] = v36;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AF00, &qword_20D97CBF8);
  sub_20D7EB7E8(v80, a3 + *(v81 + 48), &qword_27C83AEF0, &qword_20D97CBE8);
  sub_20D90B2BC(v37);
  sub_20D90B2CC(v37);
  sub_20D7E3944(v78, &qword_27C83AEF0, &qword_20D97CBE8);
  sub_20D7E3944(v80, &qword_27C83AEF0, &qword_20D97CBE8);
  return sub_20D90B2CC(v37);
}

uint64_t sub_20D8FB0AC(uint64_t a1)
{
  v2 = v1;
  v58 = a1;
  v3 = sub_20D972C58();
  v4 = *(v3 - 8);
  v5 = v4[8];
  v6 = MEMORY[0x28223BE20](v3);
  v53 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v52 = &v51 - v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v51 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AEF8, &qword_20D97CBF0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v54 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v51 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v51 - v19;
  v21 = v4[7];
  v21(&v51 - v19, 1, 1, v3);
  v22 = type metadata accessor for HistoricalUsageSnapshot();
  v23 = v1 + *(v22 + 48);
  v24 = sub_20D972E38();
  v55 = v2;
  v59 = v2;
  sub_20D8711C0(sub_20D9110DC, v24, v18);

  v57 = v4[6];
  v25 = v57(v18, 1, v3);
  v56 = v4 + 6;
  if (v25 == 1)
  {
    v26 = v20;
    sub_20D7E3944(v18, &qword_27C83AEF8, &qword_20D97CBF0);
    v27 = v55;
    v28 = v55 + *(v22 + 52);
    v29 = type metadata accessor for HistoricalUsageSnapshotDerivedInfo(0);
    if (*(v28 + *(v29 + 36)))
    {
      MEMORY[0x28223BE20](v29);
      *(&v51 - 2) = v27;
      v30 = v54;
      sub_20D8711C0(sub_20D90B578, v31, v54);
      v32 = v3;
      v33 = v4;
      if (v57(v30, 1, v3) != 1)
      {
        v34 = v4[4];
        v35 = v52;
        v34(v52, v30, v3);
        v20 = v26;
        sub_20D7E3944(v26, &qword_27C83AEF8, &qword_20D97CBF0);
        v34(v26, v35, v3);
        v32 = v3;
        v36 = 1;
        v21(v26, 0, 1, v3);
        goto LABEL_8;
      }
    }

    else
    {
      v30 = v54;
      v32 = v3;
      v21(v54, 1, 1, v3);
      v33 = v4;
    }

    sub_20D7E3944(v30, &qword_27C83AEF8, &qword_20D97CBF0);
    v36 = 0;
    v20 = v26;
  }

  else
  {
    v37 = v4[4];
    v37(v11, v18, v3);
    sub_20D7E3944(v20, &qword_27C83AEF8, &qword_20D97CBF0);
    v37(v20, v11, v3);
    v21(v20, 0, 1, v3);
    v36 = 0;
    v33 = v4;
    v32 = v3;
  }

LABEL_8:
  if (qword_281125088 != -1)
  {
    swift_once();
  }

  v38 = sub_20D9734F8();
  __swift_project_value_buffer(v38, qword_28112AB78);
  v39 = sub_20D9734D8();
  v40 = sub_20D975448();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v60 = v42;
    *v41 = 136315138;
    swift_beginAccess();
    if (v57(v20, 1, v32))
    {
      v43 = 0xE500000000000000;
      v44 = 0x3E4C494E3CLL;
    }

    else
    {
      v45 = v53;
      (v33[2])(v53, v20, v32);
      v46 = sub_20D972B08();
      v47 = v32;
      v43 = v48;
      (v33[1])(v45, v47);
      v44 = v46;
    }

    v49 = sub_20D7F4DC8(v44, v43, &v60);

    *(v41 + 4) = v49;
    _os_log_impl(&dword_20D7C9000, v39, v40, "Lollipop selected usage: %s", v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v42);
    MEMORY[0x20F324260](v42, -1, -1);
    MEMORY[0x20F324260](v41, -1, -1);
  }

  swift_beginAccess();
  sub_20D7EB7E8(v20, v58, &qword_27C83AEF8, &qword_20D97CBF0);
  sub_20D7E3944(v20, &qword_27C83AEF8, &qword_20D97CBF0);
  return v36;
}

uint64_t sub_20D8FB6D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, int a5@<W5>, uint64_t a6@<X8>)
{
  v114 = a5;
  v121 = a4;
  v122 = a3;
  v125 = a6;
  v126 = a2;
  v113 = type metadata accessor for LollipopSelectionView(0);
  v7 = *(*(v113 - 8) + 64);
  MEMORY[0x28223BE20](v113);
  v117 = &v110 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AF18, &qword_20D97CC18);
  v9 = *(*(v116 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v116);
  v118 = &v110 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v115 = &v110 - v13;
  MEMORY[0x28223BE20](v12);
  v119 = &v110 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AF20, &unk_20D97CC20);
  v123 = *(v15 - 8);
  v124 = v15;
  v16 = *(v123 + 64);
  MEMORY[0x28223BE20](v15);
  v120 = (&v110 - v17);
  v18 = sub_20D973D78();
  v111 = *(v18 - 8);
  v112 = v18;
  v19 = *(v111 + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v110 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v110 - v23;
  v25 = sub_20D972628();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  v29 = &v110 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_20D973538();
  if (result)
  {
    type metadata accessor for CGRect(0);
    v110 = a1;
    sub_20D973C58();

    v31 = v141;
    v32 = v142;
    v33 = v122;
    sub_20D8FC110();
    *&v141 = v34;
    *&v35 = COERCE_DOUBLE(sub_20D973518());
    v121 = v36;
    if (v37)
    {
      return (*(v123 + 56))(v125, 1, 1, v124);
    }

    v38 = *&v35;
    sub_20D8FC268(v29);
    sub_20D972BC8();
    *&v141 = v39;
    v40 = COERCE_DOUBLE(sub_20D973518());
    v42 = v41;
    (*(v26 + 8))(v29, v25);
    if (v42)
    {
      return (*(v123 + 56))(v125, 1, 1, v124);
    }

    else
    {
      v43 = v38;
      v44 = v126;
      sub_20D8EFB94(v24);
      v46 = v111;
      v45 = v112;
      (*(v111 + 104))(v22, *MEMORY[0x277CDFA88], v112);
      v47 = sub_20D973D68();
      v48 = *(v46 + 8);
      v48(v22, v45);
      v48(v24, v45);
      v49 = v33;
      if (v47)
      {
        v160.origin = v31;
        v160.size = v32;
        v50 = (v40 - v43) * 0.5 + CGRectGetMinX(v160) + v43;
      }

      else
      {
        sub_20D973C38();
        v53 = v52;
        v161.origin = v31;
        v161.size = v32;
        v50 = v53 - (CGRectGetMinX(v161) + v43);
      }

      v51 = v117;
      v54 = type metadata accessor for HistoricalUsageChart();
      v55 = *(v44 + v54[5] + 8);
      v56 = *(v44 + v54[10] + 184);
      v57 = v44 + *(type metadata accessor for HistoricalUsageSnapshot() + 52);
      v58 = type metadata accessor for HistoricalUsageSnapshotDerivedInfo(0);
      v59 = -70.0;
      if (!*(v57 + *(v58 + 60)))
      {
        v59 = 0.0;
      }

      v60 = -v55 - v56 + v59;
      v61 = (v44 + v54[14]);
      v62 = *v61;
      v63 = v61[1];
      v64 = v61[2];
      *&v141 = *v61;
      *(&v141 + 1) = v63;
      *&v142 = v64;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AF28, &qword_20D97D2D0);
      sub_20D974A48();
      if (*(v44 + v54[11]) == 1 && *(v44 + v54[6] + 8) == 1)
      {
        *(v44 + v54[7] + 8);
      }

      v65 = sub_20D974158();
      v66 = v120;
      *v120 = v65;
      v66[1] = 0;
      *(v66 + 16) = 0;
      sub_20D91092C(v44, v51, type metadata accessor for HistoricalUsageChart);
      v67 = v113;
      v68 = *(v113 + 20);
      v69 = sub_20D972C58();
      (*(*(v69 - 8) + 16))(v51 + v68, v49, v69);
      v132 = v62;
      v133 = v63;
      v134 = v64;
      sub_20D974A68();
      v70 = v141;
      v71 = v142;
      *(v51 + v67[6]) = v114 & 1;
      v72 = (v51 + v67[7]);
      *v72 = v70;
      v72[1] = v71;
      v73 = (v51 + v67[8]);
      if (qword_27C838450 != -1)
      {
        swift_once();
      }

      v74 = unk_27C839870;
      v151 = xmmword_27C839880;
      v152 = xmmword_27C839890;
      v75 = xmmword_27C839890;
      v153 = xmmword_27C8398A0;
      v76 = xmmword_27C839830;
      v77 = xmmword_27C839840;
      v147 = xmmword_27C839840;
      v148 = xmmword_27C839850;
      v78 = xmmword_27C839850;
      v79 = xmmword_27C839860;
      v149 = xmmword_27C839860;
      v150 = unk_27C839870;
      v80 = xmmword_27C8397F0;
      v81 = xmmword_27C839800;
      v143 = xmmword_27C839800;
      v144 = xmmword_27C839810;
      v82 = xmmword_27C839810;
      v83 = xmmword_27C839820;
      v145 = xmmword_27C839820;
      v146 = xmmword_27C839830;
      v84 = xmmword_27C8397E0;
      v141 = xmmword_27C8397E0;
      v142 = xmmword_27C8397F0;
      v73[10] = xmmword_27C839880;
      v73[11] = v75;
      v73[12] = xmmword_27C8398A0;
      v73[6] = v77;
      v73[7] = v78;
      v73[8] = v79;
      v73[9] = v74;
      v73[2] = v81;
      v73[3] = v82;
      v73[4] = v83;
      v73[5] = v76;
      *v73 = v84;
      v73[1] = v80;
      sub_20D85D690(&v141, &v132);
      sub_20D973C38();
      v86 = v85;
      v132 = v62;
      v133 = v63;
      v134 = v64;
      sub_20D974A48();
      v87 = v86 - *&v127;
      v132 = v62;
      v133 = v63;
      v134 = v64;
      sub_20D974A48();
      v88 = v50 - *&v127 * 0.5;
      if (v88 >= v87)
      {
        v88 = v87;
      }

      if (v88 < 0.0)
      {
        v89 = 0.0;
      }

      else
      {
        v89 = v88;
      }

      v90 = v66 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AF30, &qword_20D97CC30) + 44);
      v91 = v115;
      sub_20D910994(v51, v115, type metadata accessor for LollipopSelectionView);
      v92 = (v91 + *(v116 + 36));
      *v92 = v89;
      v92[1] = v60;
      v93 = v119;
      sub_20D7EAF18(v91, v119, &qword_27C83AF18, &qword_20D97CC18);
      sub_20D974C48();
      sub_20D973C18();
      v94 = v64;
      v95 = v154;
      v96 = v155;
      v126 = v156;
      v97 = v157;
      v121 = v159;
      v122 = v158;
      v98 = [objc_opt_self() lightGrayColor];
      v117 = sub_20D974888();
      v132 = v62;
      v133 = v63;
      v134 = v94;
      sub_20D974A48();
      v99 = v50 - *&v127 * 0.5;
      LODWORD(v116) = v96;
      LOBYTE(v132) = v96;
      LOBYTE(v127) = v97;
      v100 = v118;
      sub_20D7EB7E8(v93, v118, &qword_27C83AF18, &qword_20D97CC18);
      sub_20D7EB7E8(v100, v90, &qword_27C83AF18, &qword_20D97CC18);
      v101 = v90 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AF38, &qword_20D97CC38) + 48);
      *&v127 = v95;
      v102 = v95;
      BYTE8(v127) = v96;
      v103 = v126;
      *&v128 = v126;
      BYTE8(v128) = v97;
      v104 = v121;
      v105 = v122;
      *&v129 = v122;
      *(&v129 + 1) = v121;
      v106 = v117;
      *&v130 = v117;
      *(&v130 + 1) = v99;
      v131 = v60;
      v107 = v128;
      *v101 = v127;
      *(v101 + 16) = v107;
      v108 = v130;
      *(v101 + 32) = v129;
      *(v101 + 48) = v108;
      *(v101 + 64) = v131;
      sub_20D7EB7E8(&v127, &v132, &qword_27C83AF40, &qword_20D97CC40);
      sub_20D7E3944(v119, &qword_27C83AF18, &qword_20D97CC18);
      v132 = v102;
      LOBYTE(v133) = v116;
      v134 = v103;
      v135 = v97;
      v136 = v105;
      v137 = v104;
      v138 = v106;
      v139 = v99;
      v140 = v60;
      sub_20D7E3944(&v132, &qword_27C83AF40, &qword_20D97CC40);
      sub_20D7E3944(v100, &qword_27C83AF18, &qword_20D97CC18);
      v109 = v125;
      sub_20D7EAF18(v120, v125, &qword_27C83AF20, &unk_20D97CC20);
      return (*(v123 + 56))(v109, 0, 1, v124);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20D8FC110()
{
  v1 = type metadata accessor for HistoricalUsageChart();
  v2 = v1;
  if (*(v0 + v1[11]) == 1)
  {
    v3 = (v0 + v1[6]);
    v4 = (v0 + v1[7]);
    if (*(v3 + 8) != 1)
    {
      if (v4[1])
      {
        v9 = *v3;
        result = sub_20D972B78();
        if ((v9 & 0x8000000000000000) != 0)
        {
LABEL_25:
          __break(1u);
          goto LABEL_26;
        }

        v4 = *(result + 16);
        if (v9 < v4)
        {
LABEL_15:
          v10 = *(result + 8 * v9 + 32);
        }

        __break(1u);
      }

LABEL_13:
      v9 = *v4;
      result = sub_20D972B58();
      if ((v9 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v9 < *(result + 16))
      {
        goto LABEL_15;
      }

      __break(1u);
      goto LABEL_25;
    }

    if (!*(v4 + 8))
    {
      goto LABEL_13;
    }

    return sub_20D972BC8();
  }

  result = sub_20D972BC8();
  if (v6 >= 0.0)
  {
    v7 = (v0 + v2[7]);
    if (*(v7 + 8) == 1)
    {
      v8 = (v0 + v2[6]);
      if (v8[1])
      {
        return sub_20D972BC8();
      }
    }

    else
    {
      v11 = *v7;
      result = sub_20D972B28();
      if ((v11 & 0x8000000000000000) != 0)
      {
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      v8 = *(result + 16);
      if (v11 < v8)
      {
        goto LABEL_21;
      }

      __break(1u);
    }

    v11 = *v8;
    result = sub_20D972B38();
    if ((v11 & 0x8000000000000000) != 0)
    {
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    if (v11 >= *(result + 16))
    {
LABEL_28:
      __break(1u);
      return result;
    }

LABEL_21:
    v12 = *(result + 8 * v11 + 32);
  }

  return result;
}

uint64_t sub_20D8FC268@<X0>(uint64_t a1@<X8>)
{
  v51 = a1;
  v2 = sub_20D9727B8();
  v46 = *(v2 - 8);
  v47 = v2;
  v3 = *(v46 + 64);
  MEMORY[0x28223BE20](v2);
  v45 = &v40[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_20D972AF8();
  v48 = *(v5 - 8);
  v6 = *(v48 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v40[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v11 = &v40[-v10];
  v12 = sub_20D9727D8();
  v49 = *(v12 - 8);
  v50 = v12;
  v13 = *(v49 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v40[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v40[-v18];
  v20 = sub_20D972628();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v40[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_20D8EFD9C(v19);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    sub_20D7E3944(v19, &qword_27C8389E8, &qword_20D9768D0);
    return sub_20D9725C8();
  }

  v26 = *(v21 + 32);
  v43 = v24;
  v26(v24, v19, v20);
  v42 = type metadata accessor for HistoricalUsageSnapshot();
  v27 = *(v42 + 48);
  v44 = v15;
  sub_20D972E48();
  sub_20D972E58();
  v28 = v48;
  (*(v48 + 104))(v9, *MEMORY[0x277D075D0], v5);
  sub_20D911038(&qword_2811250F0, MEMORY[0x277D075D8]);
  sub_20D975208();
  sub_20D975208();
  if (v54 == v52 && v55 == v53)
  {
    v29 = *(v28 + 8);
    v29(v9, v5);
    v29(v11, v5);

LABEL_7:
    v32 = v45;
    v31 = v46;
    v33 = v47;
    (*(v46 + 104))(v45, *MEMORY[0x277CC9968], v47);
    v35 = v43;
    v34 = v44;
    sub_20D9730D8();
    (*(v31 + 8))(v32, v33);
    (*(v49 + 8))(v34, v50);
    return (*(v21 + 8))(v35, v20);
  }

  v41 = sub_20D9757C8();
  v30 = *(v28 + 8);
  v30(v9, v5);
  v30(v11, v5);

  if (v41)
  {
    goto LABEL_7;
  }

  v36 = v1 + *(v42 + 52);
  v37 = v36 + *(type metadata accessor for HistoricalUsageSnapshotDerivedInfo(0) + 20);
  v39 = v43;
  v38 = v44;
  sub_20D9730D8();
  (*(v49 + 8))(v38, v50);
  return (*(v21 + 8))(v39, v20);
}

uint64_t sub_20D8FC7C8()
{
  v0 = sub_20D972628();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v27 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AF48, &qword_20D97CC48);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v27 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v28 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v27 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v27 - v17;
  MEMORY[0x20F320DF0](v16);
  (*(v1 + 56))(v18, 0, 1, v0);
  sub_20D8EFD9C(v15);
  v19 = *(v5 + 56);
  sub_20D7EB7E8(v18, v8, &qword_27C8389E8, &qword_20D9768D0);
  sub_20D7EB7E8(v15, &v8[v19], &qword_27C8389E8, &qword_20D9768D0);
  v20 = v1;
  v21 = *(v1 + 48);
  if (v21(v8, 1, v0) != 1)
  {
    sub_20D7EB7E8(v8, v28, &qword_27C8389E8, &qword_20D9768D0);
    if (v21(&v8[v19], 1, v0) != 1)
    {
      v23 = v1;
      v24 = v27;
      (*(v20 + 32))(v27, &v8[v19], v0);
      sub_20D911038(&qword_281127740, MEMORY[0x277CC9578]);
      v22 = sub_20D974FD8();
      v25 = *(v23 + 8);
      v25(v24, v0);
      sub_20D7E3944(v15, &qword_27C8389E8, &qword_20D9768D0);
      sub_20D7E3944(v18, &qword_27C8389E8, &qword_20D9768D0);
      v25(v28, v0);
      sub_20D7E3944(v8, &qword_27C8389E8, &qword_20D9768D0);
      return v22 & 1;
    }

    sub_20D7E3944(v15, &qword_27C8389E8, &qword_20D9768D0);
    sub_20D7E3944(v18, &qword_27C8389E8, &qword_20D9768D0);
    (*(v1 + 8))(v28, v0);
    goto LABEL_6;
  }

  sub_20D7E3944(v15, &qword_27C8389E8, &qword_20D9768D0);
  sub_20D7E3944(v18, &qword_27C8389E8, &qword_20D9768D0);
  if (v21(&v8[v19], 1, v0) != 1)
  {
LABEL_6:
    sub_20D7E3944(v8, &qword_27C83AF48, &qword_20D97CC48);
    v22 = 0;
    return v22 & 1;
  }

  sub_20D7E3944(v8, &qword_27C8389E8, &qword_20D9768D0);
  v22 = 1;
  return v22 & 1;
}

uint64_t sub_20D8FCC14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v4 = sub_20D974118();
  v60 = *(v4 - 8);
  v61 = v4;
  v5 = *(v60 + 64);
  MEMORY[0x28223BE20](v4);
  v58 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AFF0, &qword_20D97CDB8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v57 = &v48 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AFF8, &qword_20D97CDC0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v52 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v51 = &v48 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839548, &unk_20D979C20);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v48 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B000, &qword_20D97CDC8);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AC98, &qword_20D97CA90);
  v50 = *(v54 - 8);
  v21 = *(v50 + 64);
  MEMORY[0x28223BE20](v54);
  v23 = &v48 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83ACE0, &qword_20D97CAB8);
  v55 = *(v24 - 8);
  v56 = v24;
  v25 = *(v55 + 64);
  MEMORY[0x28223BE20](v24);
  v53 = &v48 - v26;
  v66 = a1;
  v27 = qword_27C8386D8;

  if (v27 != -1)
  {
    swift_once();
  }

  v62 = qword_27C83AB58;
  v63 = unk_27C83AB60;
  swift_getKeyPath();
  v28 = v2 + *(type metadata accessor for HistoricalUsageSnapshot() + 52);
  v29 = type metadata accessor for HistoricalUsageSnapshotDerivedInfo(0);
  v30 = *(v29 + 20);
  v49 = v2;
  v31 = *(v29 + 64);
  v32 = sub_20D9727D8();
  v33 = *(v32 - 8);
  (*(v33 + 16))(v18, v28 + v31, v32);
  (*(v33 + 56))(v18, 0, 1, v32);
  sub_20D7E1EF8();

  sub_20D9737C8();

  sub_20D7E3944(v18, &qword_27C839548, &unk_20D979C20);

  if (qword_27C8386E0 != -1)
  {
    swift_once();
  }

  v34 = qword_27C83AB68;
  v35 = unk_27C83AB70;
  v62 = qword_27C83AB68;
  v63 = unk_27C83AB70;
  swift_getKeyPath();
  swift_bridgeObjectRetain_n();
  sub_20D9737B8();

  v62 = v34;
  v63 = v35;
  swift_getKeyPath();
  sub_20D9737B8();

  sub_20D972C58();
  sub_20D9736E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C83C780, &qword_20D97E0C0);
  sub_20D972628();
  sub_20D7EBC4C(&qword_281124C00, &unk_27C83C780, &qword_20D97E0C0);
  sub_20D973668();
  v36 = v49 + *(type metadata accessor for HistoricalUsageChart() + 40);
  v62 = *(v36 + 16);
  v37 = sub_20D909D58();
  v38 = MEMORY[0x277CE1318];
  v39 = MEMORY[0x277CE1310];
  v41 = v53;
  v40 = v54;
  sub_20D9735B8();
  (*(v50 + 8))(v23, v40);
  v42 = *(v36 + 8);
  sub_20D9741C8();
  v44 = v60;
  v43 = v61;
  v45 = v58;
  (*(v60 + 104))(v58, *MEMORY[0x277CE0118], v61);
  v62 = v40;
  v63 = v38;
  v64 = v37;
  v65 = v39;
  swift_getOpaqueTypeConformance2();
  v46 = v56;
  sub_20D9735D8();
  (*(v44 + 8))(v45, v43);
  return (*(v55 + 8))(v41, v46);
}

uint64_t sub_20D8FD388@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v4 = sub_20D974118();
  v60 = *(v4 - 8);
  v61 = v4;
  v5 = *(v60 + 64);
  MEMORY[0x28223BE20](v4);
  v58 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AFF0, &qword_20D97CDB8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v57 = &v48 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AFF8, &qword_20D97CDC0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v53 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v51 = &v48 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839548, &unk_20D979C20);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v48 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B000, &qword_20D97CDC8);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AC98, &qword_20D97CA90);
  v50 = *(v54 - 8);
  v21 = *(v50 + 64);
  MEMORY[0x28223BE20](v54);
  v23 = &v48 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83ACE0, &qword_20D97CAB8);
  v55 = *(v24 - 8);
  v56 = v24;
  v25 = *(v55 + 64);
  MEMORY[0x28223BE20](v24);
  v52 = &v48 - v26;
  v66 = a1;
  v27 = qword_27C8386D8;

  if (v27 != -1)
  {
    swift_once();
  }

  v62 = qword_27C83AB58;
  v63 = unk_27C83AB60;
  swift_getKeyPath();
  v28 = v2 + *(type metadata accessor for HistoricalUsageSnapshot() + 52);
  v29 = type metadata accessor for HistoricalUsageSnapshotDerivedInfo(0);
  v30 = *(v29 + 20);
  v49 = v2;
  v31 = *(v29 + 64);
  v32 = sub_20D9727D8();
  v33 = *(v32 - 8);
  (*(v33 + 16))(v18, v28 + v31, v32);
  (*(v33 + 56))(v18, 0, 1, v32);
  sub_20D7E1EF8();

  sub_20D9737C8();

  sub_20D7E3944(v18, &qword_27C839548, &unk_20D979C20);

  if (qword_27C8386E0 != -1)
  {
    swift_once();
  }

  v34 = qword_27C83AB68;
  v35 = unk_27C83AB70;
  v62 = qword_27C83AB68;
  v63 = unk_27C83AB70;
  swift_getKeyPath();
  swift_bridgeObjectRetain_n();
  sub_20D9737B8();

  v62 = v34;
  v63 = v35;
  swift_getKeyPath();
  sub_20D9737B8();

  sub_20D972C58();
  sub_20D9736E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C83C780, &qword_20D97E0C0);
  sub_20D972628();
  sub_20D7EBC4C(&qword_281124C00, &unk_27C83C780, &qword_20D97E0C0);
  sub_20D973668();
  v36 = v49 + *(type metadata accessor for HistoricalUsageChart() + 40);
  v62 = *(v36 + 24);
  v37 = sub_20D909D58();
  v38 = MEMORY[0x277CE1318];
  v39 = MEMORY[0x277CE1310];
  v40 = v52;
  v41 = v54;
  sub_20D9735B8();
  (*(v50 + 8))(v23, v41);
  v42 = *(v36 + 8);
  sub_20D9741C8();
  v44 = v60;
  v43 = v61;
  v45 = v58;
  (*(v60 + 104))(v58, *MEMORY[0x277CE0118], v61);
  v62 = v41;
  v63 = v38;
  v64 = v37;
  v65 = v39;
  swift_getOpaqueTypeConformance2();
  v46 = v56;
  sub_20D9735D8();
  (*(v44 + 8))(v45, v43);
  return (*(v55 + 8))(v40, v46);
}

uint64_t sub_20D8FDB00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v54 = a2;
  v55 = sub_20D974118();
  v53 = *(v55 - 8);
  v5 = *(v53 + 64);
  MEMORY[0x28223BE20](v55);
  v52 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AFF0, &qword_20D97CDB8);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v50 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v48 = &v45 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AFF8, &qword_20D97CDC0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839548, &unk_20D979C20);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v45 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B000, &qword_20D97CDC8);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v56 = &v45 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AC98, &qword_20D97CA90);
  v46 = *(v21 - 8);
  v47 = v21;
  v22 = *(v46 + 64);
  MEMORY[0x28223BE20](v21);
  v24 = &v45 - v23;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AC90, &qword_20D97CA88);
  v49 = *(v51 - 8);
  v25 = *(v49 + 64);
  MEMORY[0x28223BE20](v51);
  v45 = &v45 - v26;
  v62 = a1;
  v27 = qword_27C8386D8;

  if (v27 != -1)
  {
    swift_once();
  }

  v57 = qword_27C83AB58;
  v58 = unk_27C83AB60;
  swift_getKeyPath();
  v28 = v3 + *(type metadata accessor for HistoricalUsageSnapshot() + 52);
  v29 = type metadata accessor for HistoricalUsageSnapshotDerivedInfo(0);
  v30 = *(v29 + 20);
  v31 = *(v29 + 64);
  v32 = sub_20D9727D8();
  v33 = *(v32 - 8);
  (*(v33 + 16))(v17, v28 + v31, v32);
  (*(v33 + 56))(v17, 0, 1, v32);
  sub_20D7E1EF8();

  sub_20D9737C8();

  sub_20D7E3944(v17, &qword_27C839548, &unk_20D979C20);

  if (qword_27C8386E0 != -1)
  {
    swift_once();
  }

  v57 = qword_27C83AB68;
  v58 = unk_27C83AB70;
  v61 = 0;
  sub_20D972C58();
  sub_20D9737A8();
  sub_20D9736D8();
  sub_20D9736E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C83C780, &qword_20D97E0C0);
  sub_20D972628();
  sub_20D7EBC4C(&qword_281124C00, &unk_27C83C780, &qword_20D97E0C0);
  sub_20D973658();
  v34 = [objc_opt_self() secondarySystemFillColor];
  v57 = sub_20D974888();
  v35 = sub_20D909D58();
  v36 = MEMORY[0x277CE0F78];
  v37 = MEMORY[0x277CE0F60];
  v38 = v45;
  v39 = v47;
  sub_20D9735B8();

  (*(v46 + 8))(v24, v39);
  v41 = v52;
  v40 = v53;
  v42 = v55;
  (*(v53 + 104))(v52, *MEMORY[0x277CE0118], v55);
  v57 = v39;
  v58 = v36;
  v59 = v35;
  v60 = v37;
  swift_getOpaqueTypeConformance2();
  v43 = v51;
  sub_20D9735A8();
  (*(v40 + 8))(v41, v42);
  return (*(v49 + 8))(v38, v43);
}

uint64_t sub_20D8FE204@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, float a7@<S0>)
{
  v129 = a5;
  v128 = a4;
  v156 = a2;
  v133 = a6;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83ACB8, &qword_20D97CAA0);
  v126 = *(v127 - 8);
  v11 = *(v126 + 64);
  MEMORY[0x28223BE20](v127);
  v124 = v111 - v12;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AFE8, &qword_20D97CDB0);
  v131 = *(v132 - 8);
  v13 = *(v131 + 64);
  v14 = MEMORY[0x28223BE20](v132);
  v130 = v111 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v125 = v111 - v16;
  v154 = sub_20D974118();
  v165 = *(v154 - 8);
  v17 = *(v165 + 64);
  MEMORY[0x28223BE20](v154);
  v120 = v111 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AFF0, &qword_20D97CDB8);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v159 = v111 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AFF8, &qword_20D97CDC0);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v26 = v111 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v160 = v111 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839548, &unk_20D979C20);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v152 = v111 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B000, &qword_20D97CDC8);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31 - 8);
  v34 = v111 - v33;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AC98, &qword_20D97CA90);
  v167 = *(v163 - 8);
  v35 = *(v167 + 64);
  MEMORY[0x28223BE20](v163);
  v161 = v111 - v36;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83AC90, &qword_20D97CA88);
  v164 = *(v153 - 8);
  v37 = *(v164 + 64);
  MEMORY[0x28223BE20](v153);
  v162 = v111 - v38;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83B008, &qword_20D97CDD0);
  v122 = *(v123 - 8);
  v39 = *(v122 + 64);
  v40 = MEMORY[0x28223BE20](v123);
  v121 = v111 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x28223BE20](v40);
  v157 = v111 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v155 = v111 - v45;
  MEMORY[0x28223BE20](v44);
  v166 = v111 - v46;
  v171 = a1;
  v172 = a3;
  v173 = a7;
  v47 = qword_27C8386D8;
  v158 = a1;

  if (v47 != -1)
  {
    swift_once();
  }

  v48 = *(&xmmword_27C83AB58 + 1);
  v150 = xmmword_27C83AB58;
  v168 = xmmword_27C83AB58;
  swift_getKeyPath();
  v49 = v7 + *(type metadata accessor for HistoricalUsageSnapshot() + 52);
  v50 = type metadata accessor for HistoricalUsageSnapshotDerivedInfo(0);
  v51 = v49 + *(v50 + 20);
  v52 = v49 + *(v50 + 64);
  v53 = sub_20D9727D8();
  v54 = *(v53 - 8);
  v55 = *(v54 + 16);
  v56 = v152;
  v148 = v52;
  v146 = v54 + 16;
  v145 = v55;
  v55(v152, v52, v53);
  v57 = *(v54 + 56);
  v149 = v53;
  v147 = v54 + 56;
  v144 = v57;
  v57(v56, 0, 1, v53);
  v58 = sub_20D7E1EF8();
  swift_bridgeObjectRetain_n();
  v151 = v51;
  sub_20D9737C8();

  sub_20D7E3944(v56, &qword_27C839548, &unk_20D979C20);
  v119 = v7;
  v143 = v48;

  v59 = v34;
  if (qword_27C8386E0 != -1)
  {
    swift_once();
  }

  v60 = *(&xmmword_27C83AB68 + 1);
  v168 = xmmword_27C83AB68;
  v61 = xmmword_27C83AB68;
  v136 = xmmword_27C83AB68;
  swift_bridgeObjectRetain_n();
  v135 = v58;
  sub_20D9737B8();

  *&v168 = v61;
  *(&v168 + 1) = v60;
  swift_getKeyPath();

  sub_20D9737B8();

  v142 = sub_20D972C58();
  sub_20D9736E8();
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C83C780, &qword_20D97E0C0);
  v139 = sub_20D972628();
  v141 = sub_20D7EBC4C(&qword_281124C00, &unk_27C83C780, &qword_20D97E0C0);
  v62 = v161;
  sub_20D973668();
  v118 = objc_opt_self();
  v63 = [v118 secondarySystemFillColor];
  v64 = sub_20D974888();
  v111[1] = v26;
  *&v168 = v64;
  v65 = sub_20D909D58();
  v66 = v163;
  v67 = MEMORY[0x277CE0F78];
  v68 = v65;
  v137 = v65;
  v69 = MEMORY[0x277CE0F60];
  sub_20D9735B8();

  v70 = *(v167 + 8);
  v167 += 8;
  v138 = v70;
  v70(v62, v66);
  v71 = *(v119 + *(type metadata accessor for HistoricalUsageChart() + 40) + 8);
  sub_20D9741C8();
  v117 = *MEMORY[0x277CE0118];
  v72 = v165;
  v73 = *(v165 + 104);
  v115 = v165 + 104;
  v116 = v73;
  v74 = v120;
  v75 = v154;
  v73(v120);
  *&v168 = v66;
  *(&v168 + 1) = v67;
  v169 = v68;
  v170 = v69;
  v119 = MEMORY[0x277CBB260];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v134 = v59;
  v76 = v153;
  v77 = v162;
  sub_20D9735D8();
  v78 = *(v72 + 8);
  v165 = v72 + 8;
  v113 = v78;
  v78(v74, v75);
  v79 = *(v164 + 8);
  v164 += 8;
  v112 = v79;
  v79(v77, v76);
  v171 = v158;
  *&v168 = v150;
  *(&v168 + 1) = v143;
  swift_getKeyPath();
  v80 = v152;
  v81 = v149;
  v145(v152, v148, v149);
  v144(v80, 0, 1, v81);

  sub_20D9737C8();

  sub_20D7E3944(v80, &qword_27C839548, &unk_20D979C20);

  v82 = v136;
  *&v168 = v136;
  *(&v168 + 1) = v60;
  swift_getKeyPath();

  sub_20D9737B8();

  *&v168 = v82;
  *(&v168 + 1) = v60;
  swift_getKeyPath();

  sub_20D9737B8();

  sub_20D9736E8();
  v83 = v161;
  sub_20D973668();
  v84 = [v118 secondarySystemFillColor];
  *&v168 = sub_20D974888();
  v85 = v162;
  v86 = v163;
  sub_20D9735B8();

  v138(v83, v86);
  sub_20D9741C8();
  v87 = v154;
  v116(v74, v117, v154);
  v88 = v153;
  sub_20D9735D8();
  v113(v74, v87);
  v112(v85, v88);
  v171 = v158;
  *&v168 = v150;
  *(&v168 + 1) = v143;
  swift_getKeyPath();
  v89 = v149;
  v145(v80, v148, v149);
  v144(v80, 0, 1, v89);

  sub_20D9737C8();

  sub_20D7E3944(v80, &qword_27C839548, &unk_20D979C20);

  v90 = v136;
  *&v168 = v136;
  *(&v168 + 1) = v60;
  swift_getKeyPath();
  sub_20D9737B8();

  *&v168 = v90;
  *(&v168 + 1) = v60;
  sub_20D9737B8();

  sub_20D9736E8();
  v91 = v161;
  sub_20D973668();
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83ACC0, &qword_20D97CAA8);
  v93 = sub_20D7EBC4C(&qword_27C83ACC8, &qword_27C83ACC0, &qword_20D97CAA8);
  v94 = v124;
  v95 = v163;
  v96 = v137;
  sub_20D9735B8();
  v138(v91, v95);
  *&v168 = v95;
  *(&v168 + 1) = v92;
  v169 = v96;
  v170 = v93;
  swift_getOpaqueTypeConformance2();
  v97 = v125;
  v98 = v127;
  sub_20D9735E8();
  (*(v126 + 8))(v94, v98);
  v99 = v122;
  v100 = *(v122 + 16);
  v101 = v157;
  v102 = v123;
  v100(v157, v166, v123);
  *&v168 = v101;
  v103 = v121;
  v104 = v155;
  v100(v121, v155, v102);
  *(&v168 + 1) = v103;
  v105 = v131;
  v106 = v130;
  v107 = v132;
  (*(v131 + 16))(v130, v97, v132);
  v169 = v106;
  sub_20D8EF030(&v168, v133);
  v108 = *(v105 + 8);
  v108(v97, v107);
  v109 = *(v99 + 8);
  v109(v104, v102);
  v109(v166, v102);
  v108(v106, v107);
  v109(v103, v102);
  return (v109)(v157, v102);
}