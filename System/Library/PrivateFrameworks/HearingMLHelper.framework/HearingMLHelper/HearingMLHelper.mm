void sub_251F6891C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  _Unwind_Resume(a1);
}

void sub_251F68B74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t HearingMLHelperSecureCodingClasses()
{
  v0 = MEMORY[0x277CBEB98];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  return [v0 setWithObjects:{v1, v2, objc_opt_class(), 0}];
}

id HearingMLHelperServiceInterface()
{
  if (HearingMLHelperServiceInterface_onceToken != -1)
  {
    HearingMLHelperServiceInterface_cold_1();
  }

  v1 = HearingMLHelperServiceInterface__Interface;

  return v1;
}

void __HearingMLHelperServiceInterface_block_invoke()
{
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_286434670];
  v1 = HearingMLHelperServiceInterface__Interface;
  HearingMLHelperServiceInterface__Interface = v0;

  v2 = HearingMLHelperSecureCodingClasses();
  [HearingMLHelperServiceInterface__Interface setClasses:v2 forSelector:sel_trainWithDetectorID_hallucinatorPath_pretrainedWeightsPath_resultHandler_ argumentIndex:0 ofReply:0];
  [HearingMLHelperServiceInterface__Interface setClasses:v2 forSelector:sel_trainWithDetectorID_hallucinatorPath_pretrainedWeightsPath_resultHandler_ argumentIndex:1 ofReply:0];
  [HearingMLHelperServiceInterface__Interface setClasses:v2 forSelector:sel_trainWithDetectorID_hallucinatorPath_pretrainedWeightsPath_resultHandler_ argumentIndex:2 ofReply:0];
  [HearingMLHelperServiceInterface__Interface setClasses:v2 forSelector:sel_trainWithDetectorID_hallucinatorPath_pretrainedWeightsPath_resultHandler_ argumentIndex:0 ofReply:1];
  [HearingMLHelperServiceInterface__Interface setClasses:v2 forSelector:sel_trainWithDetectorID_hallucinatorPath_pretrainedWeightsPath_resultHandler_ argumentIndex:1 ofReply:1];
}

id sub_251F68F40()
{
  v0 = sub_251F6B1D0();
  __swift_allocate_value_buffer(v0, qword_27F4C57E8);
  __swift_project_value_buffer(v0, qword_27F4C57E8);
  result = AXLogUltronKShot();
  if (result)
  {
    return sub_251F6B1E0();
  }

  __break(1u);
  return result;
}

void sub_251F68FA4(uint64_t a1@<X0>, unint64_t a2@<X1>, char *a3@<X2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v116 = a3;
  v117 = a4;
  v123 = a1;
  v113 = a5;
  v112 = sub_251F6B240();
  v111 = *(v112 - 8);
  v6 = *(v111 + 64);
  (MEMORY[0x28223BE20])();
  v8 = &v110 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C57C0, &qword_251F6B880) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v114 = &v110 - v10;
  v11 = sub_251F6B220();
  v122 = *(v11 - 8);
  v12 = *(v122 + 64);
  v13 = (MEMORY[0x28223BE20])();
  v118 = &v110 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v110 - v15;
  v130 = sub_251F6B1F0();
  v17 = *(v130 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v130);
  v115 = &v110 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v128 = &v110 - v21;
  v132 = sub_251F6B1B0();
  v22 = *(v132 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v132);
  v26 = &v110 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v127 = &v110 - v27;
  if (qword_27F4C57E0 != -1)
  {
    swift_once();
  }

  v28 = sub_251F6B1D0();
  v29 = __swift_project_value_buffer(v28, qword_27F4C57E8);

  v131 = v29;
  v30 = sub_251F6B1C0();
  v31 = sub_251F6B2F0();

  v32 = os_log_type_enabled(v30, v31);
  v120 = v8;
  v121 = v11;
  v129 = v17;
  v124 = a2;
  v125 = v16;
  if (v32)
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v133 = v34;
    *v33 = 136315138;
    v35 = v123;
    *(v33 + 4) = sub_251F69FA4(v123, v124, &v133);
    _os_log_impl(&dword_251F67000, v30, v31, "Starting to train model for detector ID: %s", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v34);
    v36 = v34;
    a2 = v124;
    MEMORY[0x253094D30](v36, -1, -1);
    MEMORY[0x253094D30](v33, -1, -1);
  }

  else
  {

    v35 = v123;
  }

  v133 = qword_27F4C5780;
  v134 = off_27F4C5788;

  MEMORY[0x253094950](v35, a2);
  v38 = v133;
  v37 = v134;
  v39 = v127;
  sub_251F6B170();
  v126 = v22;
  v40 = *(v22 + 16);
  v41 = v128;
  v40(v128, v39, v132);
  (*(v129 + 104))(v41, *MEMORY[0x277CC4F80], v130);

  v42 = sub_251F6B1C0();
  v43 = sub_251F6B2F0();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v133 = v45;
    *v44 = 136315138;
    *(v44 + 4) = sub_251F69FA4(v38, v37, &v133);
    _os_log_impl(&dword_251F67000, v42, v43, "Using data source at path: %s", v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v45);
    MEMORY[0x253094D30](v45, -1, -1);
    MEMORY[0x253094D30](v44, -1, -1);
  }

  v46 = qword_27F4C57B0;
  v47 = unk_27F4C57B8;
  v48 = HIBYTE(unk_27F4C57B8) & 0xFLL;
  v49 = qword_27F4C57B0 & 0xFFFFFFFFFFFFLL;
  if ((unk_27F4C57B8 & 0x2000000000000000) != 0)
  {
    v50 = HIBYTE(unk_27F4C57B8) & 0xFLL;
  }

  else
  {
    v50 = qword_27F4C57B0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v50)
  {
    __break(1u);
    goto LABEL_82;
  }

  if ((unk_27F4C57B8 & 0x1000000000000000) != 0)
  {
LABEL_82:

    sub_251F6A54C(v46, v47, 10);
    v109 = v108;

    if (v109)
    {
      goto LABEL_83;
    }

LABEL_70:

    v76 = v132;
    v40(v26, v116, v132);
    v77 = v114;
    v40(v114, v117, v76);
    (*(v126 + 56))(v77, 0, 1, v76);
    v78 = v125;
    sub_251F6B210();
    v79 = sub_251F6B1C0();
    v80 = sub_251F6B2F0();
    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v133 = v82;
      *v81 = 136315138;
      v83 = qword_27F4C57B0;
      v84 = unk_27F4C57B8;

      v85 = sub_251F69FA4(v83, v84, &v133);

      *(v81 + 4) = v85;
      v78 = v125;
      _os_log_impl(&dword_251F67000, v79, v80, "Beginning model training with max iterations: %s", v81, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v82);
      MEMORY[0x253094D30](v82, -1, -1);
      MEMORY[0x253094D30](v81, -1, -1);
    }

    v86 = v120;
    v87 = v122;
    v89 = v128;
    v88 = v129;
    v90 = v130;
    (*(v129 + 16))(v115, v128, v130);
    v91 = v121;
    (*(v87 + 16))(v118, v78, v121);
    v92 = v119;
    sub_251F6B200();
    if (v92)
    {
      (*(v87 + 8))(v78, v91);
      (*(v88 + 8))(v89, v90);
    }

    else
    {
      v133 = qword_27F4C5790;
      v134 = off_27F4C5798;

      MEMORY[0x253094950](v123, v124);
      v93 = aMlmodel[0];
      v94 = aMlmodel[1];

      MEMORY[0x253094950](v93, v94);

      v96 = v133;
      v95 = v134;
      sub_251F6B180();

      v97 = sub_251F6B1C0();
      v98 = sub_251F6B2F0();

      if (os_log_type_enabled(v97, v98))
      {
        v99 = swift_slowAlloc();
        v100 = swift_slowAlloc();
        v133 = v100;
        *v99 = 136315138;
        v101 = sub_251F69FA4(v96, v95, &v133);

        *(v99 + 4) = v101;
        _os_log_impl(&dword_251F67000, v97, v98, "Model training completed successfully, writing to: %s", v99, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v100);
        v102 = v100;
        v91 = v121;
        MEMORY[0x253094D30](v102, -1, -1);
        MEMORY[0x253094D30](v99, -1, -1);
      }

      else
      {
      }

      sub_251F6B230();
      v103 = v129;
      v104 = v125;
      v105 = sub_251F6B1C0();
      v106 = sub_251F6B2F0();
      if (os_log_type_enabled(v105, v106))
      {
        v107 = swift_slowAlloc();
        *v107 = 0;
        _os_log_impl(&dword_251F67000, v105, v106, "Model successfully written to disk", v107, 2u);
        MEMORY[0x253094D30](v107, -1, -1);
      }

      (*(v111 + 8))(v86, v112);
      (*(v122 + 8))(v104, v91);
      (*(v103 + 8))(v128, v130);
    }

    (*(v126 + 8))(v127, v132);
    return;
  }

  if ((unk_27F4C57B8 & 0x2000000000000000) == 0)
  {
    if ((qword_27F4C57B0 & 0x1000000000000000) == 0)
    {
      goto LABEL_84;
    }

    for (i = ((unk_27F4C57B8 & 0xFFFFFFFFFFFFFFFLL) + 32); ; i = sub_251F6B320())
    {
      v52 = *i;
      if (v52 == 43)
      {
        if (v49 < 1)
        {
          goto LABEL_87;
        }

        v48 = v49 - 1;
        if (v49 != 1)
        {
          v61 = 0;
          if (!i)
          {
            goto LABEL_60;
          }

          v62 = i + 1;
          while (1)
          {
            v63 = *v62 - 48;
            if (v63 > 9)
            {
              break;
            }

            v64 = 10 * v61;
            if ((v61 * 10) >> 64 != (10 * v61) >> 63)
            {
              break;
            }

            v61 = v64 + v63;
            if (__OFADD__(v64, v63))
            {
              break;
            }

            ++v62;
            if (!--v48)
            {
              goto LABEL_69;
            }
          }
        }
      }

      else if (v52 == 45)
      {
        if (v49 < 1)
        {
          __break(1u);
LABEL_86:
          __break(1u);
LABEL_87:
          __break(1u);
          goto LABEL_88;
        }

        v48 = v49 - 1;
        if (v49 != 1)
        {
          v53 = 0;
          if (!i)
          {
            goto LABEL_60;
          }

          v54 = i + 1;
          while (1)
          {
            v55 = *v54 - 48;
            if (v55 > 9)
            {
              break;
            }

            v56 = 10 * v53;
            if ((v53 * 10) >> 64 != (10 * v53) >> 63)
            {
              break;
            }

            v53 = v56 - v55;
            if (__OFSUB__(v56, v55))
            {
              break;
            }

            ++v54;
            if (!--v48)
            {
              goto LABEL_69;
            }
          }
        }
      }

      else if (v49)
      {
        v69 = 0;
        if (!i)
        {
LABEL_60:
          LOBYTE(v48) = 0;
          goto LABEL_69;
        }

        while (1)
        {
          v70 = *i - 48;
          if (v70 > 9)
          {
            break;
          }

          v71 = 10 * v69;
          if ((v69 * 10) >> 64 != (10 * v69) >> 63)
          {
            break;
          }

          v69 = v71 + v70;
          if (__OFADD__(v71, v70))
          {
            break;
          }

          ++i;
          if (!--v49)
          {
            goto LABEL_60;
          }
        }
      }

LABEL_68:
      LOBYTE(v48) = 1;
LABEL_69:
      v135 = v48;
      if ((v48 & 1) == 0)
      {
        goto LABEL_70;
      }

LABEL_83:
      __break(1u);
LABEL_84:
      ;
    }
  }

  v133 = qword_27F4C57B0;
  v134 = (unk_27F4C57B8 & 0xFFFFFFFFFFFFFFLL);
  if (qword_27F4C57B0 != 43)
  {
    if (qword_27F4C57B0 != 45)
    {
      if (v48)
      {
        v72 = 0;
        v73 = &v133;
        while (1)
        {
          v74 = *v73 - 48;
          if (v74 > 9)
          {
            break;
          }

          v75 = 10 * v72;
          if ((v72 * 10) >> 64 != (10 * v72) >> 63)
          {
            break;
          }

          v72 = v75 + v74;
          if (__OFADD__(v75, v74))
          {
            break;
          }

          v73 = (v73 + 1);
          if (!--v48)
          {
            goto LABEL_69;
          }
        }
      }

      goto LABEL_68;
    }

    if (v48)
    {
      if (--v48)
      {
        v57 = 0;
        v58 = &v133 + 1;
        while (1)
        {
          v59 = *v58 - 48;
          if (v59 > 9)
          {
            break;
          }

          v60 = 10 * v57;
          if ((v57 * 10) >> 64 != (10 * v57) >> 63)
          {
            break;
          }

          v57 = v60 - v59;
          if (__OFSUB__(v60, v59))
          {
            break;
          }

          ++v58;
          if (!--v48)
          {
            goto LABEL_69;
          }
        }
      }

      goto LABEL_68;
    }

    goto LABEL_86;
  }

  if (v48)
  {
    if (--v48)
    {
      v65 = 0;
      v66 = &v133 + 1;
      while (1)
      {
        v67 = *v66 - 48;
        if (v67 > 9)
        {
          break;
        }

        v68 = 10 * v65;
        if ((v65 * 10) >> 64 != (10 * v65) >> 63)
        {
          break;
        }

        v65 = v68 + v67;
        if (__OFADD__(v68, v67))
        {
          break;
        }

        ++v66;
        if (!--v48)
        {
          goto LABEL_69;
        }
      }
    }

    goto LABEL_68;
  }

LABEL_88:
  __break(1u);
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_251F69FA4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_251F6A070(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_251F6AB24(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_251F6A070(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_251F6A17C(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_251F6B320();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_251F6A17C(uint64_t a1, unint64_t a2)
{
  v4 = sub_251F6A1C8(a1, a2);
  sub_251F6A2F8(&unk_286432E58);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_251F6A1C8(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_251F6A3E4(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_251F6B320();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_251F6B280();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_251F6A3E4(v10, 0);
        result = sub_251F6B310();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_251F6A2F8(uint64_t result)
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
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_251F6A458(result, v12, 1, v3);
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
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_251F6A3E4(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C57C8, &qword_251F6B888);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_251F6A458(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C57C8, &qword_251F6B888);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unsigned __int8 *sub_251F6A54C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_251F6B2D0();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_251F6AB84();
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
      result = sub_251F6B320();
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

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_251F6AB24(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_251F6AB84()
{
  v0 = sub_251F6B2E0();
  v4 = sub_251F6AC04(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_251F6AC04(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_251F6B260();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_251F6B300();
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_251F6A3E4(v9, 0);
  v12 = sub_251F6AD5C(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_251F6B260();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_251F6B320();
LABEL_4:

  return sub_251F6B260();
}

unint64_t sub_251F6AD5C(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
      result = sub_251F6AF7C(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_251F6B2B0();
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
          result = sub_251F6B320();
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

    result = sub_251F6AF7C(v12, a6, a7);
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

    result = sub_251F6B290();
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

uint64_t sub_251F6AF7C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_251F6B2C0();
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
    v5 = MEMORY[0x253094980](15, a1 >> 16);
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

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}