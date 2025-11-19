unint64_t sub_251668E4C()
{
  result = qword_27F452588;
  if (!qword_27F452588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F452588);
  }

  return result;
}

unint64_t USOIdentifierNamespace.rawValue.getter(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x6D6572757361656DLL;
    v6 = 0x4E676F4C646F6F6DLL;
    if (a1 != 8)
    {
      v6 = 0x4C6E6F69746F6D65;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x6E5568746C616568;
    if (a1 != 5)
    {
      v7 = 0x697461636964656DLL;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x4E74756F6B726F77;
    v2 = 0xD000000000000016;
    v3 = 0x4C7373656E746966;
    if (a1 != 3)
    {
      v3 = 0x6F4C68746C616568;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x7974697669746361;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_25166903C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = USOIdentifierNamespace.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == USOIdentifierNamespace.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_251674978();
  }

  return v8 & 1;
}

uint64_t sub_2516690C4()
{
  v1 = *v0;
  sub_2516749F8();
  USOIdentifierNamespace.rawValue.getter(v1);
  sub_251674638();

  return sub_251674A18();
}

uint64_t sub_251669128()
{
  USOIdentifierNamespace.rawValue.getter(*v0);
  sub_251674638();
}

uint64_t sub_25166917C()
{
  v1 = *v0;
  sub_2516749F8();
  USOIdentifierNamespace.rawValue.getter(v1);
  sub_251674638();

  return sub_251674A18();
}

uint64_t sub_2516691DC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = _s18HealthDomainsTools22USOIdentifierNamespaceO8rawValueACSgSS_tcfC_0();
  *a2 = result;
  return result;
}

unint64_t sub_25166920C@<X0>(unint64_t *a1@<X8>)
{
  result = USOIdentifierNamespace.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_251669238(uint64_t a1, uint64_t a2)
{
  v108 = a1;
  v105 = sub_2516744A8();
  v107 = *(v105 - 8);
  v3 = *(v107 + 64);
  MEMORY[0x28223BE20](v105);
  v109 = &v83 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_251673778();
  v90 = *(v111 - 8);
  v5 = *(v90 + 64);
  MEMORY[0x28223BE20](v111);
  v110 = &v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_251673748();
  v106 = *(v99 - 8);
  v7 = *(v106 + 64);
  MEMORY[0x28223BE20](v99);
  v98 = &v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_251673648();
  v104 = *(v97 - 8);
  v9 = *(v104 + 64);
  MEMORY[0x28223BE20](v97);
  v89 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_251673708();
  v100 = *(v88 - 8);
  v11 = *(v100 + 64);
  MEMORY[0x28223BE20](v88);
  v87 = &v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_251673688();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v83 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_251673618();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v83 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_2516735D8();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v27 = &v83 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v24 + 16))(v27, v108, v23);
  if ((*(v24 + 88))(v27, v23) != *MEMORY[0x277D5C160])
  {
    (*(v24 + 8))(v27, v23);
    return MEMORY[0x277D84F90];
  }

  v29 = *(v24 + 96);
  v28 = (v24 + 96);
  v29(v27, v23);
  v84 = v19;
  v30 = *(v19 + 32);
  v85 = v18;
  v30(v22, v27, v18);
  v83 = v22;
  sub_2516735F8();
  v31 = sub_251673658();
  v32 = v17;
  v33 = v31;
  (*(v14 + 8))(v32, v13);
  v96 = *(v33 + 16);
  if (!v96)
  {

    v35 = MEMORY[0x277D84F90];
LABEL_37:
    v112 = v35;

    sub_25166BFF4(&v112);
    v70 = v85;
    v71 = v84;
    v72 = v83;

    v73 = v112;
    v74 = v112[2];
    if (v74)
    {
      v112 = MEMORY[0x277D84F90];
      sub_25166BADC(0, v74, 0);
      v75 = v112;
      v76 = v73 + 6;
      do
      {
        v78 = *(v76 - 1);
        v77 = *v76;
        v112 = v75;
        v79 = v75[2];
        v80 = v75[3];

        if (v79 >= v80 >> 1)
        {
          sub_25166BADC((v80 > 1), v79 + 1, 1);
          v75 = v112;
        }

        v75[2] = v79 + 1;
        v81 = &v75[2 * v79];
        v81[4] = v78;
        v81[5] = v77;
        v76 += 3;
        --v74;
      }

      while (v74);
      (*(v84 + 8))(v83, v85);

      return v75;
    }

    (*(v71 + 8))(v72, v70);
    return MEMORY[0x277D84F90];
  }

  v34 = 0;
  v95 = v33 + ((*(v100 + 80) + 32) & ~*(v100 + 80));
  v93 = (v106 + 8);
  v94 = v100 + 16;
  v108 = v90 + 16;
  v106 = v90 + 8;
  v107 += 8;
  v92 = (v104 + 8);
  v91 = (v100 + 8);
  v35 = MEMORY[0x277D84F90];
  v104 = a2;
  v36 = v105;
  v37 = v89;
  v38 = v88;
  v39 = v87;
  v86 = v33;
  while (v34 < *(v33 + 16))
  {
    v102 = v34;
    v103 = v35;
    (*(v100 + 16))(v39, v95 + *(v100 + 72) * v34, v38);
    v40 = v98;
    sub_2516736C8();
    sub_251673718();
    (*v93)(v40, v99);
    v41 = sub_251673638();
    v42 = *(v41 + 16);
    if (v42)
    {
      v43 = *(v90 + 80);
      v101 = v41;
      v44 = v41 + ((v43 + 32) & ~v43);
      v45 = *(v90 + 72);
      v46 = *(v90 + 16);
      v47 = MEMORY[0x277D84F90];
      v46(v110, v44, v111);
      while (1)
      {
        v48 = v109;
        sub_251673768();
        v49 = sub_251674498();
        v51 = v50;
        (*v107)(v48, v36);
        if (!*(a2 + 16))
        {
          break;
        }

        v52 = sub_25166B71C(v49, v51);
        v54 = v53;

        if ((v54 & 1) == 0)
        {
          goto LABEL_10;
        }

        v55 = *(*(a2 + 56) + 8 * v52);
        v56 = v110;
        v57 = sub_251673758();
        v59 = v58;
        (*v106)(v56, v111);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v47 = sub_25166B4C4(0, v47[2] + 1, 1, v47);
        }

        v61 = v47[2];
        v60 = v47[3];
        if (v61 >= v60 >> 1)
        {
          v47 = sub_25166B4C4((v60 > 1), v61 + 1, 1, v47);
        }

        v47[2] = v61 + 1;
        v62 = &v47[3 * v61];
        v62[4] = v55;
        v62[5] = v57;
        v62[6] = v59;
        a2 = v104;
        v36 = v105;
LABEL_11:
        v44 += v45;
        if (!--v42)
        {

          v37 = v89;
          v38 = v88;
          v39 = v87;
          v33 = v86;
          goto LABEL_22;
        }

        v46(v110, v44, v111);
      }

LABEL_10:
      (*v106)(v110, v111);
      goto LABEL_11;
    }

    v47 = MEMORY[0x277D84F90];
LABEL_22:
    (*v92)(v37, v97);
    (*v91)(v39, v38);
    v63 = v47[2];
    v35 = v103;
    v64 = v103[2];
    v28 = (v64 + v63);
    if (__OFADD__(v64, v63))
    {
      goto LABEL_47;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v28 > v35[3] >> 1)
    {
      if (v64 <= v28)
      {
        v66 = v64 + v63;
      }

      else
      {
        v66 = v64;
      }

      v35 = sub_25166B4C4(isUniquelyReferenced_nonNull_native, v66, 1, v35);
    }

    v36 = v105;
    if (v47[2])
    {
      if ((v35[3] >> 1) - v35[2] < v63)
      {
        goto LABEL_49;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4525C8, &qword_251675FB8);
      v36 = v105;
      swift_arrayInitWithCopy();

      if (v63)
      {
        v67 = v35[2];
        v68 = __OFADD__(v67, v63);
        v69 = v67 + v63;
        if (v68)
        {
          goto LABEL_50;
        }

        v35[2] = v69;
      }
    }

    else
    {

      if (v63)
      {
        goto LABEL_48;
      }
    }

    v34 = v102 + 1;
    if (v102 + 1 == v96)
    {

      goto LABEL_37;
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);

  __break(1u);
  return result;
}

BOOL sub_251669CEC(uint64_t a1, uint64_t a2)
{
  v3 = sub_25166CA84(a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F452590, &qword_251675E10);
  swift_arrayDestroy();
  v4 = sub_251669238(a1, v3);

  v5 = *(v4 + 16);

  return v5 != 0;
}

BOOL isProbablyWorkout(from:requireWorkoutIdentifier:)(uint64_t a1, char a2)
{
  v4 = sub_251673688();
  v38 = *(v4 - 8);
  v39 = v4;
  v5 = *(v38 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_251673708();
  v36 = *(v8 - 8);
  v37 = v8;
  v9 = *(v36 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v34 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v35 = &v34 - v12;
  v13 = sub_2516735D8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_251673618();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v23 = sub_25166CA84(&unk_28638F860);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F452590, &qword_251675E10);
    swift_arrayDestroy();
    v24 = sub_251669238(a1, v23);

    v25 = *(v24 + 16);

    if (!v25)
    {
      return 0;
    }
  }

  (*(v14 + 16))(v17, a1, v13);
  if ((*(v14 + 88))(v17, v13) != *MEMORY[0x277D5C160])
  {
    (*(v14 + 8))(v17, v13);
    return 0;
  }

  (*(v14 + 96))(v17, v13);
  v26 = v19;
  (*(v19 + 32))(v22, v17, v18);
  sub_2516735F8();
  v27 = sub_251673658();
  (*(v38 + 8))(v7, v39);
  if (!*(v27 + 16))
  {

LABEL_12:
    (*(v26 + 8))(v22, v18);
    return 0;
  }

  v29 = v36;
  v28 = v37;
  v30 = v34;
  (*(v36 + 16))(v34, v27 + ((*(v29 + 80) + 32) & ~*(v29 + 80)), v37);

  v31 = v35;
  (*(v29 + 32))(v35, v30, v28);
  if (!sub_2516736B8())
  {
    (*(v29 + 8))(v31, v28);
    goto LABEL_12;
  }

  sub_251673978();

  (*(v29 + 8))(v31, v28);
  (*(v26 + 8))(v22, v18);
  if (v41)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4525A8, &qword_251675E28);
    if (swift_dynamicCast())
    {
      v32 = *(&v43 + 1) != 0;
    }

    else
    {
      v32 = 0;
      v44 = 0;
      v42 = 0u;
      v43 = 0u;
    }
  }

  else
  {
    sub_251654A84(v40, &qword_27F452598, &qword_251675E18);
    v32 = 0;
    v42 = 0u;
    v43 = 0u;
    v44 = 0;
  }

  sub_251654A84(&v42, &qword_27F4525A0, &qword_251675E20);
  return v32;
}

uint64_t getWorkoutName(from:fallback:)(uint64_t a1, int a2)
{
  v4 = sub_251673848();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  if (!a1)
  {
    return 0;
  }

  if (sub_251673958())
  {
    v12 = sub_251673888();

    if (v12)
    {
      v33 = *(v12 + 16);
      if (v33)
      {
        v28 = v11;
        v29 = a2;
        v14 = 0;
        v32 = v12 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
        v30 = a1;
        v31 = v5 + 16;
        while (1)
        {
          if (v14 >= *(v12 + 16))
          {
            __break(1u);
            return result;
          }

          (*(v5 + 16))(v9, v32 + *(v5 + 72) * v14, v4);
          v15 = sub_251673838();
          v17 = v16 ? v15 : 0;
          v18 = v16 ? v16 : 0xE000000000000000;
          v34 = v17;
          v35 = v18;
          MEMORY[0x28223BE20](v15);
          *(&v27 - 2) = &v34;
          v19 = sub_25166BF48(sub_25166CBCC, (&v27 - 4), &unk_28638F8B0);

          if (v19)
          {
            break;
          }

          ++v14;
          result = (*(v5 + 8))(v9, v4);
          if (v33 == v14)
          {
            goto LABEL_19;
          }
        }

        swift_arrayDestroy();

        v20 = v28;
        (*(v5 + 32))(v28, v9, v4);
        v21 = sub_251673828();
        v23 = v22;
        (*(v5 + 8))(v20, v4);
        if (v21 == 0x7374756F6B726F77 && v23 == 0xE800000000000000 || (v25 = v21, (sub_251674978() & 1) != 0))
        {
LABEL_19:

          LOBYTE(a2) = v29;
          goto LABEL_20;
        }

        return v25;
      }
    }
  }

LABEL_20:
  if (!sub_251673958())
  {
    goto LABEL_25;
  }

  sub_2516737E8();

  if (!v35)
  {
    goto LABEL_25;
  }

  if (v34 == 0x7374756F6B726F77 && v35 == 0xE800000000000000)
  {

LABEL_25:

    return 0;
  }

  v24 = a2;
  v25 = v34;
  v26 = sub_251674978();

  if ((v26 & 1) != 0 || (v24 & 1) == 0)
  {

    return 0;
  }

  return v25;
}

uint64_t getHealthDataTypeName(from:)(uint64_t a1)
{
  v2 = sub_251673848();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v20 - v8;
  if (!a1)
  {
    return 0;
  }

  result = sub_251673888();
  if (!result)
  {

    swift_arrayDestroy();
    return 0;
  }

  v11 = result;
  v22 = *(result + 16);
  if (!v22)
  {
LABEL_16:

    return 0;
  }

  v20[0] = v9;
  v20[1] = a1;
  v12 = 0;
  v21 = result + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v20[2] = v3 + 16;
  while (v12 < *(v11 + 16))
  {
    (*(v3 + 16))(v7, v21 + *(v3 + 72) * v12, v2);
    v13 = sub_251673838();
    if (v14)
    {
      v15 = v13;
    }

    else
    {
      v15 = 0;
    }

    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = 0xE000000000000000;
    }

    v23[0] = v15;
    v23[1] = v16;
    MEMORY[0x28223BE20](v13);
    v20[-2] = v23;
    v17 = sub_25166BF48(sub_25166CEEC, &v20[-4], &unk_28638F8F0);

    if (v17)
    {

      v18 = v20[0];
      (*(v3 + 32))(v20[0], v7, v2);
      v19 = sub_251673828();

      (*(v3 + 8))(v18, v2);
      return v19;
    }

    ++v12;
    result = (*(v3 + 8))(v7, v2);
    if (v22 == v12)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t isExerciseRequest(in:)(uint64_t a1)
{
  v2 = sub_251673848();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v23 - v8;
  if (!a1)
  {
    goto LABEL_16;
  }

  result = sub_251673888();
  if (!result)
  {
LABEL_15:

LABEL_16:
    v18 = 0;
    return v18 & 1;
  }

  v11 = result;
  v25 = *(result + 16);
  if (!v25)
  {
LABEL_14:

    goto LABEL_15;
  }

  v23[0] = v9;
  v23[1] = a1;
  v12 = 0;
  v24 = result + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v23[2] = v3 + 16;
  while (1)
  {
    if (v12 >= *(v11 + 16))
    {
      __break(1u);
      return result;
    }

    (*(v3 + 16))(v7, v24 + *(v3 + 72) * v12, v2);
    v13 = sub_251673838();
    v15 = v14 ? v13 : 0;
    v16 = v14 ? v14 : 0xE000000000000000;
    v26[0] = v15;
    v26[1] = v16;
    MEMORY[0x28223BE20](v13);
    v23[-2] = v26;
    v17 = sub_25166BF48(sub_25166CEEC, &v23[-4], &unk_28638F940);

    if (v17)
    {
      break;
    }

    ++v12;
    result = (*(v3 + 8))(v7, v2);
    if (v25 == v12)
    {
      goto LABEL_14;
    }
  }

  sub_25166CBE8(aWorkoutname_2);

  v19 = v23[0];
  (*(v3 + 32))(v23[0], v7, v2);
  v20 = sub_251673828();
  v22 = v21;
  (*(v3 + 8))(v19, v2);
  if (v20 == 0x6573696372657865 && v22 == 0xE800000000000000)
  {

    v18 = 1;
  }

  else
  {
    v18 = sub_251674978();
  }

  return v18 & 1;
}

uint64_t getMeasurementUnit(from:)(uint64_t a1)
{
  if (a1)
  {
    v1 = sub_251673FF8();
  }

  else
  {
    v1 = 0;
  }

  v2 = getMeasurementUnit(from:)(v1);

  return v2;
}

{
  v2 = sub_251673848();
  v47 = *(v2 - 8);
  v3 = *(v47 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v46 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v45 = (v39 - v7);
  MEMORY[0x28223BE20](v6);
  v9 = v39 - v8;
  if (!a1)
  {
    return MEMORY[0x277D84F90];
  }

  result = sub_251673888();
  if (!result)
  {
    swift_arrayDestroy();
LABEL_28:

    return MEMORY[0x277D84F90];
  }

  v11 = result;
  v39[1] = a1;
  v12 = MEMORY[0x277D84F90];
  v44 = *(result + 16);
  if (!v44)
  {
LABEL_20:
    swift_arrayDestroy();

    v26 = *(v12 + 16);
    if (v26)
    {
      v48[0] = MEMORY[0x277D84F90];
      sub_25166BADC(0, v26, 0);
      v27 = v48[0];
      v28 = *(v47 + 16);
      v29 = *(v47 + 80);
      v43 = v12;
      v30 = v12 + ((v29 + 32) & ~v29);
      v44 = *(v47 + 72);
      v45 = v28;
      v47 += 16;
      v31 = (v47 - 8);
      do
      {
        v32 = v46;
        v45(v46, v30, v2);
        v33 = sub_251673828();
        v35 = v34;
        (*v31)(v32, v2);
        v48[0] = v27;
        v37 = *(v27 + 16);
        v36 = *(v27 + 24);
        if (v37 >= v36 >> 1)
        {
          sub_25166BADC((v36 > 1), v37 + 1, 1);
          v27 = v48[0];
        }

        *(v27 + 16) = v37 + 1;
        v38 = v27 + 16 * v37;
        *(v38 + 32) = v33;
        *(v38 + 40) = v35;
        v30 += v44;
        --v26;
      }

      while (v26);

      return v27;
    }

    goto LABEL_28;
  }

  v13 = 0;
  v40 = (v47 + 8);
  v41 = (v47 + 32);
  v42 = v47 + 16;
  v43 = result;
  while (v13 < *(v11 + 16))
  {
    v14 = v12;
    v15 = (*(v47 + 80) + 32) & ~*(v47 + 80);
    v16 = *(v47 + 72);
    (*(v47 + 16))(v9, v11 + v15 + v16 * v13, v2);
    v17 = sub_251673838();
    if (v18)
    {
      v19 = v17;
    }

    else
    {
      v19 = 0;
    }

    if (v18)
    {
      v20 = v18;
    }

    else
    {
      v20 = 0xE000000000000000;
    }

    v48[0] = v19;
    v48[1] = v20;
    MEMORY[0x28223BE20](v17);
    v39[-2] = v48;
    v21 = sub_25166BF48(sub_25166CEEC, &v39[-4], &unk_28638F970);

    if (v21)
    {
      v22 = *v41;
      (*v41)(v45, v9, v2);
      v12 = v14;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v49 = v14;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_25166BAFC(0, *(v14 + 16) + 1, 1);
        v12 = v49;
      }

      v25 = *(v12 + 16);
      v24 = *(v12 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_25166BAFC(v24 > 1, v25 + 1, 1);
        v12 = v49;
      }

      *(v12 + 16) = v25 + 1;
      result = (v22)(v12 + v15 + v25 * v16, v45, v2);
    }

    else
    {
      result = (*v40)(v9, v2);
      v12 = v14;
    }

    ++v13;
    v11 = v43;
    if (v44 == v13)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
  return result;
}

uint64_t getAreaType(from:)(uint64_t a1)
{
  v2 = sub_251673848();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - v8;
  if (!a1)
  {
    return 0;
  }

  if (!sub_251673958() || (v10 = sub_251673A28(), , !v10) || (v11 = sub_251673888(), result = , !v11))
  {
LABEL_15:

    return 0;
  }

  v22 = *(v11 + 16);
  if (!v22)
  {
LABEL_14:

    goto LABEL_15;
  }

  v19 = v9;
  v13 = 0;
  v21 = v11 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v20 = 0x8000000251676A40;
  while (v13 < *(v11 + 16))
  {
    (*(v3 + 16))(v7, v21 + *(v3 + 72) * v13, v2);
    v15 = sub_251673838();
    if (v16)
    {
      if (v15 == 0xD000000000000016 && v16 == v20)
      {

LABEL_18:

        v17 = v19;
        (*(v3 + 32))(v19, v7, v2);
        v18 = sub_251673828();

        (*(v3 + 8))(v17, v2);
        return v18;
      }

      v14 = sub_251674978();

      if (v14)
      {
        goto LABEL_18;
      }
    }

    ++v13;
    result = (*(v3 + 8))(v7, v2);
    if (v22 == v13)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

char *sub_25166B3C0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4525D0, &qword_251675FC0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_25166B4C4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4525D8, &qword_251675FC8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4525C8, &qword_251675FB8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_25166B60C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_251674758();

  return sub_25166B794(a1, v5);
}

unint64_t sub_25166B650(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_2516747C8();

  return sub_25166B858(a1, v5);
}

unint64_t sub_25166B694(char a1)
{
  v3 = *(v1 + 40);
  sub_2516749F8();
  HealthLogName.rawValue.getter(a1);
  sub_251674638();

  v4 = sub_251674A18();

  return sub_25166B920(a1, v4);
}

unint64_t sub_25166B71C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_2516749F8();
  sub_251674638();
  v6 = sub_251674A18();

  return sub_25166BA24(a1, a2, v6);
}

unint64_t sub_25166B794(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_2516744F8();
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_251674768();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_25166B858(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_25166CE3C(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x25307E6A0](v9, a1);
      sub_25166CE98(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_25166B920(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = HealthLogName.rawValue.getter(*(*(v2 + 48) + v4));
      v9 = v8;
      if (v7 == HealthLogName.rawValue.getter(a1) && v9 == v10)
      {
        break;
      }

      v12 = sub_251674978();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_25166BA24(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_251674978())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

char *sub_25166BADC(char *a1, int64_t a2, char a3)
{
  result = sub_25166BB1C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_25166BAFC(size_t a1, int64_t a2, char a3)
{
  result = sub_25166BD70(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25166BB1C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4525B8, &qword_251675FA8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_25166BC28(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4525D8, &qword_251675FC8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4525C8, &qword_251675FB8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_25166BD70(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4525C0, &qword_251675FB0);
  v10 = *(sub_251673848() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_251673848() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_25166BF48(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_25166BFF4(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_25166C978(v2);
  }

  v3 = v2[2];
  v19[0] = (v2 + 4);
  v19[1] = v3;
  result = sub_251674948();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 5;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v2[3 * i + 4];
        v12 = v9;
        v13 = v8;
        do
        {
          if (v11 >= *(v13 - 1))
          {
            break;
          }

          v14 = v13[3];
          v15 = v13[4];
          *(v13 + 1) = *(v13 - 1);
          v13[4] = v13[1];
          *(v13 - 1) = v11;
          *v13 = v14;
          v13[1] = v15;
          v13 -= 3;
        }

        while (!__CFADD__(v12++, 1));
        v8 += 3;
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4525C8, &qword_251675FB8);
      v7 = sub_2516746D8();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v17[0] = v7 + 32;
    v17[1] = v6;
    sub_25166C160(v17, v18, v19, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_25166C160(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v93 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x277D84F90];
LABEL_88:
    v94 = *v93;
    if (!*v93)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_25166C964(v7);
      v7 = result;
    }

    v85 = (v7 + 16);
    v86 = *(v7 + 16);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = (v7 + 16 * v86);
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_25166C728((*a3 + 24 * *v87), (*a3 + 24 * *v89), *a3 + 24 * v90, v94);
        if (v4)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_114;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_115;
        }

        *v87 = v88;
        v87[1] = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_116;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  v92 = a4;
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 24 * v6);
      v10 = 24 * v8;
      v11 = (*a3 + 24 * v8);
      v14 = *v11;
      v13 = v11 + 6;
      v12 = v14;
      v15 = v8 + 2;
      v16 = v9;
      while (v5 != v15)
      {
        v17 = *v13;
        v13 += 3;
        v18 = (v9 < v12) ^ (v17 >= v16);
        ++v15;
        v16 = v17;
        if ((v18 & 1) == 0)
        {
          v6 = v15 - 1;
          if (v9 >= v12)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v9 >= v12)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_119;
      }

      if (v8 < v6)
      {
        v19 = 0;
        v20 = 24 * v6;
        v21 = v8;
        do
        {
          if (v21 != v6 + v19 - 1)
          {
            v27 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v22 = (v27 + v10);
            v23 = v27 + v20;
            v24 = *(v22 + 2);
            v25 = *v22;
            v26 = *(v23 - 8);
            *v22 = *(v23 - 24);
            *(v22 + 2) = v26;
            *(v23 - 24) = v25;
            *(v23 - 8) = v24;
          }

          ++v21;
          --v19;
          v20 -= 24;
          v10 += 24;
        }

        while (v21 < v6 + v19);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_118;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_120;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v6 < v8)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_25166B3C0(0, *(v7 + 16) + 1, 1, v7);
      v7 = result;
    }

    v38 = *(v7 + 16);
    v37 = *(v7 + 24);
    v39 = v38 + 1;
    if (v38 >= v37 >> 1)
    {
      result = sub_25166B3C0((v37 > 1), v38 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 16) = v39;
    v40 = v7 + 32;
    v41 = (v7 + 32 + 16 * v38);
    *v41 = v8;
    v41[1] = v6;
    v94 = *v93;
    if (!*v93)
    {
      goto LABEL_127;
    }

    if (v38)
    {
      while (1)
      {
        v42 = v39 - 1;
        if (v39 >= 4)
        {
          break;
        }

        if (v39 == 3)
        {
          v43 = *(v7 + 32);
          v44 = *(v7 + 40);
          v53 = __OFSUB__(v44, v43);
          v45 = v44 - v43;
          v46 = v53;
LABEL_57:
          if (v46)
          {
            goto LABEL_104;
          }

          v59 = (v7 + 16 * v39);
          v61 = *v59;
          v60 = v59[1];
          v62 = __OFSUB__(v60, v61);
          v63 = v60 - v61;
          v64 = v62;
          if (v62)
          {
            goto LABEL_106;
          }

          v65 = (v40 + 16 * v42);
          v67 = *v65;
          v66 = v65[1];
          v53 = __OFSUB__(v66, v67);
          v68 = v66 - v67;
          if (v53)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v63, v68))
          {
            goto LABEL_111;
          }

          if (v63 + v68 >= v45)
          {
            if (v45 < v68)
            {
              v42 = v39 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v39 < 2)
        {
          goto LABEL_112;
        }

        v69 = (v7 + 16 * v39);
        v71 = *v69;
        v70 = v69[1];
        v53 = __OFSUB__(v70, v71);
        v63 = v70 - v71;
        v64 = v53;
LABEL_72:
        if (v64)
        {
          goto LABEL_108;
        }

        v72 = (v40 + 16 * v42);
        v74 = *v72;
        v73 = v72[1];
        v53 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v53)
        {
          goto LABEL_110;
        }

        if (v75 < v63)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v42 - 1 >= v39)
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

        v80 = (v40 + 16 * (v42 - 1));
        v81 = *v80;
        v82 = (v40 + 16 * v42);
        v83 = v82[1];
        sub_25166C728((*a3 + 24 * *v80), (*a3 + 24 * *v82), *a3 + 24 * v83, v94);
        if (v4)
        {
        }

        if (v83 < v81)
        {
          goto LABEL_99;
        }

        if (v42 > *(v7 + 16))
        {
          goto LABEL_100;
        }

        *v80 = v81;
        v80[1] = v83;
        v84 = *(v7 + 16);
        if (v42 >= v84)
        {
          goto LABEL_101;
        }

        v39 = v84 - 1;
        result = memmove((v40 + 16 * v42), v82 + 2, 16 * (v84 - 1 - v42));
        *(v7 + 16) = v84 - 1;
        if (v84 <= 2)
        {
          goto LABEL_3;
        }
      }

      v47 = v40 + 16 * v39;
      v48 = *(v47 - 64);
      v49 = *(v47 - 56);
      v53 = __OFSUB__(v49, v48);
      v50 = v49 - v48;
      if (v53)
      {
        goto LABEL_102;
      }

      v52 = *(v47 - 48);
      v51 = *(v47 - 40);
      v53 = __OFSUB__(v51, v52);
      v45 = v51 - v52;
      v46 = v53;
      if (v53)
      {
        goto LABEL_103;
      }

      v54 = (v7 + 16 * v39);
      v56 = *v54;
      v55 = v54[1];
      v53 = __OFSUB__(v55, v56);
      v57 = v55 - v56;
      if (v53)
      {
        goto LABEL_105;
      }

      v53 = __OFADD__(v45, v57);
      v58 = v45 + v57;
      if (v53)
      {
        goto LABEL_107;
      }

      if (v58 >= v50)
      {
        v76 = (v40 + 16 * v42);
        v78 = *v76;
        v77 = v76[1];
        v53 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v53)
        {
          goto LABEL_113;
        }

        if (v45 < v79)
        {
          v42 = v39 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    a4 = v92;
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v28 = *a3;
  v29 = *a3 + 24 * v6 - 24;
  v30 = v8 - v6;
LABEL_30:
  v31 = *(v28 + 24 * v6);
  v32 = v30;
  v33 = v29;
  while (1)
  {
    if (v31 >= *v33)
    {
LABEL_29:
      ++v6;
      v29 += 24;
      --v30;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v28)
    {
      break;
    }

    v34 = *(v33 + 32);
    v35 = *(v33 + 40);
    *(v33 + 24) = *v33;
    *(v33 + 40) = *(v33 + 16);
    *v33 = v31;
    *(v33 + 8) = v34;
    *(v33 + 16) = v35;
    v33 -= 24;
    if (__CFADD__(v32++, 1))
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

uint64_t sub_25166C728(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 24;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 24;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[24 * v9] <= a4)
    {
      memmove(a4, __dst, 24 * v9);
    }

    v12 = &v4[24 * v9];
    if (v8 < 24)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (*v6 < *v4)
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 24;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 24;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 24;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    v15 = *v13;
    *(v7 + 2) = *(v13 + 2);
    *v7 = v15;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[24 * v11] <= a4)
  {
    memmove(a4, __src, 24 * v11);
  }

  v12 = &v4[24 * v11];
  if (v10 >= 24 && v6 > v7)
  {
LABEL_20:
    v16 = v6 - 24;
    v5 -= 24;
    v17 = v12;
    do
    {
      v18 = (v5 + 24);
      v19 = *(v17 - 24);
      v17 -= 24;
      if (v19 < *v16)
      {
        if (v18 != v6)
        {
          v21 = *v16;
          *(v5 + 16) = *(v6 - 1);
          *v5 = v21;
        }

        if (v12 <= v4 || (v6 -= 24, v16 <= v7))
        {
          v6 = v16;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      if (v18 != v12)
      {
        v20 = *v17;
        *(v5 + 16) = *(v17 + 16);
        *v5 = v20;
      }

      v5 -= 24;
      v12 = v17;
    }

    while (v17 > v4);
    v12 = v17;
  }

LABEL_31:
  v22 = ((v12 - v4) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v23 = (v22 >> 2) + (v22 >> 63);
  if (v6 != v4 || v6 >= &v4[24 * v23])
  {
    memmove(v6, v4, 24 * v23);
  }

  return 1;
}

unint64_t sub_25166C98C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4525E8, &qword_251675FD8);
    v3 = sub_251674928();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 16);
      v7 = *(i - 1);
      v6 = *i;

      result = sub_25166B694(v5);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      v10 = (v3[7] + 16 * result);
      *v10 = v7;
      v10[1] = v6;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_25166CA84(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4525E0, &qword_251675FD0);
    v3 = sub_251674928();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_25166B71C(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t _s18HealthDomainsTools22USOIdentifierNamespaceO8rawValueACSgSS_tcfC_0()
{
  v0 = sub_251674938();

  if (v0 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_25166CC3C(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_251674978() & 1;
  }
}

unint64_t sub_25166CC98()
{
  result = qword_27F4525B0;
  if (!qword_27F4525B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4525B0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for USOIdentifierNamespace(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for USOIdentifierNamespace(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getWorkoutEntity(from:)()
{
  sub_251673978();
  sub_25166D11C(v6, v4);
  if (v5)
  {
    sub_25166D11C(v4, v3);
    sub_251673AF8();
    if (swift_dynamicCast())
    {

      sub_2516738E8();
LABEL_10:

      sub_25166D18C(v6);
      v0 = v2;
      __swift_destroy_boxed_opaque_existential_0(v3);
      goto LABEL_11;
    }

    sub_251673A78();
    if (swift_dynamicCast() || (sub_251673AB8(), swift_dynamicCast()) || (sub_251673B28(), swift_dynamicCast()))
    {

      sub_251673E18();
      goto LABEL_10;
    }

    sub_251673AE8();
    if (swift_dynamicCast())
    {

      sub_251673A48();
      goto LABEL_10;
    }

    sub_251673B38();
    if (swift_dynamicCast())
    {

      sub_251673D88();
      goto LABEL_10;
    }

    sub_251673B08();
    if (swift_dynamicCast())
    {

      sub_2516737A8();
      goto LABEL_10;
    }

    sub_25166D18C(v6);
    __swift_destroy_boxed_opaque_existential_0(v3);
  }

  else
  {
    sub_25166D18C(v6);
  }

  v0 = 0;
LABEL_11:
  sub_25166D18C(v4);
  return v0;
}

uint64_t sub_25166D11C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F452598, &qword_251675E18);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25166D18C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F452598, &qword_251675E18);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getHealthLogEntity(from:)()
{
  sub_251673978();
  sub_25166D11C(v6, v4);
  if (v5)
  {
    sub_25166D11C(v4, v3);
    sub_251673CD8();
    if (swift_dynamicCast())
    {

      sub_2516738E8();
LABEL_11:

      sub_25166D18C(v6);
      v0 = v2;
      __swift_destroy_boxed_opaque_existential_0(v3);
      goto LABEL_12;
    }

    sub_2516737C8();
    if (swift_dynamicCast())
    {

      sub_251674188();
      goto LABEL_11;
    }

    sub_251673B18();
    if (swift_dynamicCast() || (sub_2516740C8(), swift_dynamicCast()))
    {

      sub_251673A48();
      goto LABEL_11;
    }

    sub_25166D18C(v6);
    __swift_destroy_boxed_opaque_existential_0(v3);
  }

  else
  {
    sub_25166D18C(v6);
  }

  v0 = 0;
LABEL_12:
  sub_25166D18C(v4);
  return v0;
}

uint64_t getAppEntity(from:)()
{
  sub_251673978();
  sub_25166D11C(v6, v4);
  if (v5)
  {
    sub_25166D11C(v4, v3);
    sub_251673AF8();
    if (swift_dynamicCast())
    {

      sub_2516738E8();
      goto LABEL_10;
    }

    sub_251673A78();
    if (swift_dynamicCast() || (sub_251673AB8(), swift_dynamicCast()) || (sub_251673B28(), swift_dynamicCast()))
    {

      sub_251673E18();
      goto LABEL_10;
    }

    sub_251673AE8();
    if (swift_dynamicCast())
    {

      sub_251673A48();
      goto LABEL_10;
    }

    sub_251673B38();
    if (swift_dynamicCast())
    {

      sub_251673D88();
      goto LABEL_10;
    }

    sub_251673B08();
    if (swift_dynamicCast())
    {

      sub_2516737A8();
LABEL_10:

      if (v2)
      {
        v0 = sub_251673878();

        sub_25166D18C(v6);
      }

      else
      {
        sub_25166D18C(v6);

        v0 = 0;
      }

      goto LABEL_13;
    }

    sub_2516739E8();
    if (swift_dynamicCast())
    {

      sub_2516737A8();

      sub_25166D18C(v6);
      v0 = v2;
LABEL_13:
      __swift_destroy_boxed_opaque_existential_0(v3);
      goto LABEL_14;
    }

    sub_25166D18C(v6);
    __swift_destroy_boxed_opaque_existential_0(v3);
  }

  else
  {
    sub_25166D18C(v6);
  }

  v0 = 0;
LABEL_14:
  sub_25166D18C(v4);
  return v0;
}

uint64_t sub_25166D620(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4525F0, &qword_251675FE8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v40 = v35 - v5;
  v6 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v6)
  {
    v35[1] = v1;
    v46 = MEMORY[0x277D84F90];
    sub_251674878();
    v8 = a1 + 64;
    v9 = -1 << *(a1 + 32);
    result = sub_2516747B8();
    v10 = result;
    v11 = 0;
    v12 = *(a1 + 36);
    v36 = a1 + 72;
    v37 = v12;
    v38 = a1 + 64;
    v39 = v6;
    while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(a1 + 32))
    {
      if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
      {
        goto LABEL_21;
      }

      if (v12 != *(a1 + 36))
      {
        goto LABEL_22;
      }

      v42 = 1 << v10;
      v43 = v10 >> 6;
      v41 = v11;
      v14 = (*(a1 + 48) + 16 * v10);
      v16 = *v14;
      v15 = v14[1];
      v17 = (*(a1 + 56) + 16 * v10);
      v18 = v17[1];
      v44 = *v17;
      v45 = v15;
      v19 = sub_251674448();
      v20 = *(v19 + 48);
      v21 = *(v19 + 52);
      swift_allocObject();

      sub_251674438();
      v22 = v40;
      sub_251674628();
      v23 = sub_2516743F8();
      v24 = a1;
      v25 = *(*(v23 - 8) + 56);
      v25(v22, 0, 1, v23);
      sub_251674418();

      sub_251654A84(v22, &qword_27F4525F0, &qword_251675FE8);
      sub_251674628();
      v25(v22, 0, 1, v23);
      a1 = v24;
      sub_251674408();

      sub_251654A84(v22, &qword_27F4525F0, &qword_251675FE8);
      sub_251674428();

      sub_251674858();
      v26 = *(v46 + 16);
      sub_251674888();
      sub_251674898();
      result = sub_251674868();
      v13 = 1 << *(v24 + 32);
      if (v10 >= v13)
      {
        goto LABEL_23;
      }

      v8 = v38;
      v27 = v39;
      v28 = *(v38 + 8 * v43);
      if ((v28 & v42) == 0)
      {
        goto LABEL_24;
      }

      LODWORD(v12) = v37;
      if (v37 != *(v24 + 36))
      {
        goto LABEL_25;
      }

      v29 = v28 & (-2 << (v10 & 0x3F));
      if (v29)
      {
        v13 = __clz(__rbit64(v29)) | v10 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v30 = v43 << 6;
        v31 = v43 + 1;
        v32 = (v36 + 8 * v43);
        while (v31 < (v13 + 63) >> 6)
        {
          v34 = *v32++;
          v33 = v34;
          v30 += 64;
          ++v31;
          if (v34)
          {
            result = sub_2516605BC(v10, v37, 0);
            v13 = __clz(__rbit64(v33)) + v30;
            goto LABEL_4;
          }
        }

        result = sub_2516605BC(v10, v37, 0);
      }

LABEL_4:
      v11 = v41 + 1;
      v10 = v13;
      if (v41 + 1 == v27)
      {
        return v46;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

id getApplicationState(_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_251674568();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v6 = objc_allocWithZone(MEMORY[0x277CC1E70]);

  v7 = sub_25166E444(a1, a2, 0);
  v8 = [v7 applicationState];

  return v8;
}

id sub_25166DCE0(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = getApplicationState(_:)(a1, a2);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  if ([v4 isValid])
  {
    v6 = [v5 *a3];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t HealthApps.app.getter(char a1)
{
  sub_251674478();
  HealthApps.rawValue.getter(a1);
  return sub_251674458();
}

unint64_t HealthApps.rawValue.getter(char a1)
{
  result = 0x6C7070612E6D6F63;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000019;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
    case 7:
      return result;
    case 4:
      result = 0xD00000000000001FLL;
      break;
    case 5:
      result = 0xD00000000000001BLL;
      break;
    case 6:
    case 12:
      result = 0xD00000000000001CLL;
      break;
    case 8:
      result = 0xD000000000000015;
      break;
    case 9:
      result = 0xD000000000000019;
      break;
    case 10:
      result = 0xD000000000000011;
      break;
    case 11:
      result = 0xD000000000000010;
      break;
    case 13:
      result = 0xD00000000000003FLL;
      break;
    default:
      result = 0xD00000000000002ALL;
      break;
  }

  return result;
}

uint64_t HealthApps.sirikitApp.getter(char a1)
{
  sub_2516743E8();
  HealthApps.rawValue.getter(a1);
  return SirikitApp.init(_:)();
}

uint64_t SirikitApp.init(_:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4525F0, &qword_251675FE8);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v12 - v2;
  sub_251674478();

  sub_251674458();
  v4 = sub_251673548();

  if (v4 && (v5 = [v4 appNameMap], v4, v5))
  {
    v6 = sub_2516745B8();

    sub_25166D620(v6);

    v7 = sub_2516743C8();
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    swift_allocObject();
    sub_2516743B8();
    sub_251674628();

    v10 = sub_2516743F8();
    (*(*(v10 - 8) + 56))(v3, 0, 1, v10);
    sub_2516743A8();

    sub_251654A84(v3, &qword_27F4525F0, &qword_251675FE8);
    sub_251674398();

    return sub_2516743D8();
  }

  else
  {

    return 0;
  }
}

id sub_25166E1C4(char a1, SEL *a2)
{
  v3 = HealthApps.rawValue.getter(a1);
  v5 = getApplicationState(_:)(v3, v4);

  if (!v5)
  {
    return 0;
  }

  if ([v5 isValid])
  {
    v6 = [v5 *a2];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t sub_25166E248(char *a1, char *a2)
{
  v2 = *a2;
  v3 = HealthApps.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == HealthApps.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_251674978();
  }

  return v8 & 1;
}

uint64_t sub_25166E2D0()
{
  v1 = *v0;
  sub_2516749F8();
  HealthApps.rawValue.getter(v1);
  sub_251674638();

  return sub_251674A18();
}

uint64_t sub_25166E334()
{
  HealthApps.rawValue.getter(*v0);
  sub_251674638();
}

uint64_t sub_25166E388()
{
  v1 = *v0;
  sub_2516749F8();
  HealthApps.rawValue.getter(v1);
  sub_251674638();

  return sub_251674A18();
}

uint64_t sub_25166E3E8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = _s18HealthDomainsTools0A4AppsO8rawValueACSgSS_tcfC_0();
  *a2 = result;
  return result;
}

unint64_t sub_25166E418@<X0>(unint64_t *a1@<X8>)
{
  result = HealthApps.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

id sub_25166E444(uint64_t a1, uint64_t a2, char a3)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v5 = sub_2516745F8();

  v11[0] = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:v11];

  if (v6)
  {
    v7 = v11[0];
  }

  else
  {
    v8 = v11[0];
    sub_2516731C8();

    swift_willThrow();
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t _s18HealthDomainsTools0A4AppsO8rawValueACSgSS_tcfC_0()
{
  v0 = sub_251674938();

  if (v0 >= 0xE)
  {
    return 14;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_25166E570()
{
  result = qword_27F4525F8;
  if (!qword_27F4525F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4525F8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HealthApps(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HealthApps(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t LaunchAppFlow.init(app:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  result = sub_2516733E8();
  *(a2 + 40) = a1;
  return result;
}

uint64_t LaunchAppFlow.init(aceService:app:)@<X0>(__int128 *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  result = sub_251654C4C(a1, a3);
  *(a3 + 40) = a2;
  return result;
}

id sub_25166E770()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D47190]) init];
  HealthApps.rawValue.getter(*(v0 + 40));
  v2 = sub_2516745F8();

  [v1 setLaunchId_];

  v3 = *(v0 + 32);
  __swift_project_boxed_opaque_existential_1(v0, *(v0 + 24));
  v4 = v1;
  sub_251673588();
  if (v5)
  {
    v6 = sub_2516745F8();
  }

  else
  {
    v6 = 0;
  }

  [v4 setRefId_];

  return v4;
}

uint64_t LaunchAppFlow.execute(completion:)()
{
  sub_25166E8A8();

  return sub_251673318();
}

unint64_t sub_25166E8A8()
{
  result = qword_27F452600;
  if (!qword_27F452600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F452600);
  }

  return result;
}

uint64_t LaunchAppFlow.execute()(uint64_t a1)
{
  v2[24] = a1;
  v2[25] = v1;
  v3 = sub_251674568();
  v2[26] = v3;
  v4 = *(v3 - 8);
  v2[27] = v4;
  v5 = *(v4 + 64) + 15;
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25166E9D4, 0, 0);
}

uint64_t sub_25166E9D4()
{
  v29 = v0;
  if (qword_27F451F38 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 240);
  v2 = *(v0 + 208);
  v3 = *(v0 + 216);
  v4 = *(v0 + 200);
  v5 = __swift_project_value_buffer(v2, static Logger.common);
  *(v0 + 248) = v5;
  swift_beginAccess();
  v6 = *(v3 + 16);
  *(v0 + 256) = v6;
  *(v0 + 264) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v5, v2);
  sub_25166F374(v4, v0 + 16);
  v7 = sub_251674548();
  v8 = sub_251674718();
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 240);
  v11 = *(v0 + 208);
  v12 = *(v0 + 216);
  if (v9)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v28 = v14;
    *v13 = 136315138;
    v15 = HealthApps.rawValue.getter(*(v0 + 56));
    v17 = v16;
    sub_25166F3AC(v0 + 16);
    v18 = sub_25165445C(v15, v17, &v28);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_251650000, v7, v8, "Launching app : %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x25307EDE0](v14, -1, -1);
    MEMORY[0x25307EDE0](v13, -1, -1);
  }

  else
  {

    sub_25166F3AC(v0 + 16);
  }

  v19 = *(v12 + 8);
  v19(v10, v11);
  *(v0 + 272) = v19;
  v20 = *(v0 + 200);
  v21 = v20[3];
  v22 = v20[4];
  __swift_project_boxed_opaque_existential_1(v20, v21);
  v23 = sub_25166E770();
  *(v0 + 280) = v23;
  v24 = *(MEMORY[0x277D5BFB8] + 4);
  v25 = swift_task_alloc();
  *(v0 + 288) = v25;
  v26 = sub_251655B9C();
  *v25 = v0;
  v25[1] = sub_25166EC6C;

  return MEMORY[0x2821BB6A0](v23, v21, v26, v22);
}

uint64_t sub_25166EC6C(void *a1)
{
  v4 = *v2;
  v5 = *(*v2 + 288);
  v9 = *v2;
  *(*v2 + 296) = v1;

  if (v1)
  {
    v6 = sub_25166EF88;
  }

  else
  {
    v7 = *(v4 + 280);

    v6 = sub_25166ED98;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_25166ED98()
{
  v24 = v0;
  v1 = *(v0 + 264);
  v2 = *(v0 + 200);
  (*(v0 + 256))(*(v0 + 232), *(v0 + 248), *(v0 + 208));
  sub_25166F374(v2, v0 + 112);
  v3 = sub_251674548();
  v4 = sub_251674718();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 272);
  v7 = *(v0 + 232);
  v8 = *(v0 + 208);
  v9 = *(v0 + 216);
  if (v5)
  {
    v22 = *(v0 + 272);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v23 = v11;
    *v10 = 136315138;
    v12 = HealthApps.rawValue.getter(*(v0 + 152));
    v14 = v13;
    sub_25166F3AC(v0 + 112);
    v15 = sub_25165445C(v12, v14, &v23);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_251650000, v3, v4, "App launch submitted : %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x25307EDE0](v11, -1, -1);
    MEMORY[0x25307EDE0](v10, -1, -1);

    v22(v7, v8);
  }

  else
  {

    sub_25166F3AC(v0 + 112);
    v6(v7, v8);
  }

  v16 = *(v0 + 232);
  v17 = *(v0 + 240);
  v18 = *(v0 + 224);
  v19 = *(v0 + 192);
  sub_251673518();

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_25166EF88()
{
  v54 = v0;
  v1 = *(v0 + 296);
  v3 = *(v0 + 256);
  v2 = *(v0 + 264);
  v4 = *(v0 + 248);
  v5 = *(v0 + 224);
  v7 = *(v0 + 200);
  v6 = *(v0 + 208);

  v3(v5, v4, v6);
  sub_25166F374(v7, v0 + 64);
  v8 = v1;
  v9 = sub_251674548();
  v10 = sub_251674728();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = *(v0 + 296);
    v12 = *(v0 + 216);
    v50 = *(v0 + 224);
    v51 = *(v0 + 272);
    v13 = *(v0 + 208);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v53 = v15;
    *v14 = 136315394;
    v16 = HealthApps.rawValue.getter(*(v0 + 104));
    v18 = v17;
    sub_25166F3AC(v0 + 64);
    v19 = sub_25165445C(v16, v18, &v53);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2080;
    *(v0 + 184) = v11;
    v20 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4523C0, &qword_2516762D0);
    v21 = sub_251674618();
    v23 = sub_25165445C(v21, v22, &v53);

    *(v14 + 14) = v23;
    _os_log_impl(&dword_251650000, v9, v10, "Error launching app %s: %s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25307EDE0](v15, -1, -1);
    MEMORY[0x25307EDE0](v14, -1, -1);

    v51(v50, v13);
  }

  else
  {
    v24 = *(v0 + 296);
    v25 = *(v0 + 272);
    v27 = *(v0 + 216);
    v26 = *(v0 + 224);
    v28 = *(v0 + 208);

    sub_25166F3AC(v0 + 64);
    v25(v26, v28);
  }

  v29 = *(v0 + 264);
  v30 = *(v0 + 200);
  (*(v0 + 256))(*(v0 + 232), *(v0 + 248), *(v0 + 208));
  sub_25166F374(v30, v0 + 112);
  v31 = sub_251674548();
  v32 = sub_251674718();
  v33 = os_log_type_enabled(v31, v32);
  v34 = *(v0 + 272);
  v35 = *(v0 + 232);
  v36 = *(v0 + 208);
  v37 = *(v0 + 216);
  if (v33)
  {
    v52 = *(v0 + 272);
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v53 = v39;
    *v38 = 136315138;
    v40 = HealthApps.rawValue.getter(*(v0 + 152));
    v42 = v41;
    sub_25166F3AC(v0 + 112);
    v43 = sub_25165445C(v40, v42, &v53);

    *(v38 + 4) = v43;
    _os_log_impl(&dword_251650000, v31, v32, "App launch submitted : %s", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v39);
    MEMORY[0x25307EDE0](v39, -1, -1);
    MEMORY[0x25307EDE0](v38, -1, -1);

    v52(v35, v36);
  }

  else
  {

    sub_25166F3AC(v0 + 112);
    v34(v35, v36);
  }

  v44 = *(v0 + 232);
  v45 = *(v0 + 240);
  v46 = *(v0 + 224);
  v47 = *(v0 + 192);
  sub_251673518();

  v48 = *(v0 + 8);

  return v48();
}

uint64_t sub_25166F3E0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2516558DC;

  return LaunchAppFlow.execute()(a1);
}

uint64_t SACommandFlow.init(closure:)@<X0>(uint64_t (*a1)(uint64_t)@<X0>, void *a2@<X8>)
{
  sub_2516733E8();
  sub_251670164(v8, a2);
  v4 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v5 = sub_251673588();
  v6 = a1(v5);

  result = __swift_destroy_boxed_opaque_existential_0(v8);
  a2[5] = v6;
  return result;
}

uint64_t SACommandFlow.init(aceService:closure:)@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, void *a3@<X8>)
{
  sub_251670164(a1, a3);
  v6 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  v7 = sub_251673588();
  v8 = a2(v7);

  result = __swift_destroy_boxed_opaque_existential_0(a1);
  a3[5] = v8;
  return result;
}

uint64_t SACommandFlow.execute(completion:)()
{
  sub_2516701C8();

  return sub_251673318();
}

uint64_t SACommandFlow.execute()(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = sub_251674568();
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v5 = *(v4 + 64) + 15;
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25166F6DC, 0, 0);
}

uint64_t sub_25166F6DC()
{
  if (qword_27F451F38 != -1)
  {
    swift_once();
  }

  v1 = v0[11];
  v2 = v0[7];
  v3 = v0[8];
  v4 = __swift_project_value_buffer(v2, static Logger.common);
  v0[12] = v4;
  swift_beginAccess();
  v5 = *(v3 + 16);
  v0[13] = v5;
  v0[14] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = sub_251674548();
  v7 = sub_251674718();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_251650000, v6, v7, "Sending command", v8, 2u);
    MEMORY[0x25307EDE0](v8, -1, -1);
  }

  v9 = v0[11];
  v10 = v0[7];
  v11 = v0[8];
  v12 = v0[6];

  v13 = *(v11 + 8);
  v0[15] = v13;
  v13(v9, v10);
  v15 = v12[3];
  v14 = v12[4];
  __swift_project_boxed_opaque_existential_1(v12, v15);
  v16 = v12[5];
  v17 = *(MEMORY[0x277D5BFB8] + 4);
  v18 = swift_task_alloc();
  v0[16] = v18;
  v19 = sub_251655B9C();
  *v18 = v0;
  v18[1] = sub_25166F8D0;

  return MEMORY[0x2821BB6A0](v16, v15, v19, v14);
}

uint64_t sub_25166F8D0(void *a1)
{
  v4 = *(*v2 + 128);
  v7 = *v2;
  *(*v2 + 136) = v1;

  if (v1)
  {
    v5 = sub_25166FB2C;
  }

  else
  {

    v5 = sub_25166F9EC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_25166F9EC()
{
  v1 = *(v0 + 112);
  (*(v0 + 104))(*(v0 + 80), *(v0 + 96), *(v0 + 56));
  v2 = sub_251674548();
  v3 = sub_251674718();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_251650000, v2, v3, "command submitted", v4, 2u);
    MEMORY[0x25307EDE0](v4, -1, -1);
  }

  v5 = *(v0 + 120);
  v7 = *(v0 + 80);
  v6 = *(v0 + 88);
  v9 = *(v0 + 64);
  v8 = *(v0 + 72);
  v10 = *(v0 + 56);
  v11 = *(v0 + 40);

  v5(v7, v10);
  sub_251673518();

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_25166FB2C()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 112);
  (*(v0 + 104))(*(v0 + 72), *(v0 + 96), *(v0 + 56));
  v3 = v1;
  v4 = sub_251674548();
  v5 = sub_251674728();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 136);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_251650000, v4, v5, "Error sending command %@", v8, 0xCu);
    sub_251660554(v9);
    MEMORY[0x25307EDE0](v9, -1, -1);
    MEMORY[0x25307EDE0](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 64) + 8;
  (*(v0 + 120))(*(v0 + 72), *(v0 + 56));
  v13 = *(v0 + 112);
  (*(v0 + 104))(*(v0 + 80), *(v0 + 96), *(v0 + 56));
  v14 = sub_251674548();
  v15 = sub_251674718();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_251650000, v14, v15, "command submitted", v16, 2u);
    MEMORY[0x25307EDE0](v16, -1, -1);
  }

  v17 = *(v0 + 120);
  v19 = *(v0 + 80);
  v18 = *(v0 + 88);
  v21 = *(v0 + 64);
  v20 = *(v0 + 72);
  v22 = *(v0 + 56);
  v23 = *(v0 + 40);

  v17(v19, v22);
  sub_251673518();

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_25166FD84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277D5B890] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_251657F64;

  return MEMORY[0x2821BA650](a1, a2, a3);
}

uint64_t sub_25166FE34(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2516702E4;

  return SACommandFlow.execute()(a1);
}

uint64_t closeAppFlow(app:)@<X0>(char a1@<W0>, void *a2@<X8>)
{
  sub_2516733E8();
  sub_251670164(v9, a2);
  v4 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v5 = sub_251673588();
  v7 = sub_25166FF60(v5, v6, a1);

  result = __swift_destroy_boxed_opaque_existential_0(v9);
  a2[5] = v7;
  return result;
}

id sub_25166FF60(uint64_t a1, void *a2, char a3)
{
  v5 = [objc_allocWithZone(MEMORY[0x277D47198]) init];
  HealthApps.rawValue.getter(a3);
  v6 = sub_2516745F8();

  [v5 setAppBundleId_];

  v7 = sub_2516745F8();
  [v5 setSceneId_];

  v8 = v5;
  if (a2)
  {
    a2 = sub_2516745F8();
  }

  [v5 setRefId_];

  return v5;
}

uint64_t openAppFlow(app:)@<X0>(void *a1@<X8>)
{
  sub_2516733E8();
  sub_251670164(v10, a1);
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_251673588();
  v4 = v3;
  v5 = [objc_allocWithZone(MEMORY[0x277D47190]) init];
  v6 = sub_2516745F8();
  [v5 setLaunchId_];

  v7 = v5;
  if (v4)
  {
    v8 = sub_2516745F8();
  }

  else
  {
    v8 = 0;
  }

  [v5 setRefId_];

  result = __swift_destroy_boxed_opaque_existential_0(v10);
  a1[5] = v5;
  return result;
}

uint64_t sub_251670164(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_2516701C8()
{
  result = qword_27F452608;
  if (!qword_27F452608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F452608);
  }

  return result;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_251670230(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_251670278(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t static UsoEntity_common_WorkoutInstructor.builder(name:)(uint64_t a1, uint64_t a2)
{
  v3 = sub_251674178();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  v6 = sub_251674168();
  if (a2)
  {
    sub_251674158();
  }

  return v6;
}

uint64_t static UsoEntity_common_WorkoutInstructor.with(name:)(uint64_t a1, uint64_t a2)
{
  v3 = sub_251674178();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  v6 = sub_251674168();
  if (a2)
  {
    sub_251674158();
  }

  MEMORY[0x25307D850](v6);
  sub_251673E38();
  sub_251673A18();

  return v8;
}

uint64_t OutputFlow.init(templatingResult:snippets:flowConfig:rrEntities:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for OutputFlow();
  v11 = v10[7];
  sub_251655A40(a1, a5);
  *(a5 + v10[5]) = a2;
  sub_251670164(a3, a5 + v10[6]);
  *(a5 + v11) = a4;
  sub_2516744D8();
  v12 = sub_2516744C8();
  __swift_destroy_boxed_opaque_existential_0(a3);
  result = sub_251654A84(a1, &qword_27F4523B8, qword_251675280);
  *(a5 + v10[8]) = v12;
  return result;
}

uint64_t type metadata accessor for OutputFlow()
{
  result = qword_27F452618;
  if (!qword_27F452618)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t OutputFlow.execute(completion:)(void (*a1)(char *), uint64_t a2)
{
  v3 = v2;
  v49 = a1;
  v50 = a2;
  v4 = sub_251673538();
  v47 = *(v4 - 8);
  v48 = v4;
  v5 = *(v47 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_251674568();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F452610, qword_251676238);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v46 = &v46 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4523B8, qword_251675280);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v46 - v18;
  v20 = sub_251673558();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v46 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251655A40(v3, v19);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_251654A84(v19, &qword_27F4523B8, qword_251675280);
    if (qword_27F451F38 != -1)
    {
      swift_once();
    }

    v25 = __swift_project_value_buffer(v8, static Logger.common);
    swift_beginAccess();
    (*(v9 + 16))(v12, v25, v8);
    v26 = sub_251674548();
    v27 = sub_251674728();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_251650000, v26, v27, "Received error in TemplatingResult", v28, 2u);
      MEMORY[0x25307EDE0](v28, -1, -1);
    }

    (*(v9 + 8))(v12, v8);
    sub_251673518();
    v49(v7);
    return (*(v47 + 8))(v7, v48);
  }

  else
  {
    v47 = v21;
    v48 = v20;
    (*(v21 + 32))(v24, v19, v20);
    v30 = type metadata accessor for OutputFlow();
    v31 = (v3 + v30[6]);
    v32 = v31[3];
    v33 = v31[4];
    __swift_project_boxed_opaque_existential_1(v31, v32);
    (*(v33 + 8))(v51, v32, v33);
    __swift_project_boxed_opaque_existential_1(v51, v52);
    sub_251673408();
    v34 = sub_2516734B8();
    v35 = *(v34 + 48);
    v36 = *(v34 + 52);
    swift_allocObject();
    sub_2516734A8();
    v37 = *(v3 + v30[5]);
    __swift_project_boxed_opaque_existential_1(v51, v52);
    sub_251673408();
    v38 = sub_251673498();

    __swift_destroy_boxed_opaque_existential_0(v51);
    if (*(v3 + v30[7]))
    {
      v39 = *(v3 + v30[8]);
      v40 = sub_251674588();
      v41 = v46;
      (*(*(v40 - 8) + 56))(v46, 1, 1, v40);
      sub_2516744B8();
      sub_251654A84(v41, &qword_27F452610, qword_251676238);
    }

    v42 = v31[3];
    v43 = v31[4];
    __swift_project_boxed_opaque_existential_1(v31, v42);
    (*(v43 + 16))(v51, v42, v43);
    __swift_project_boxed_opaque_existential_1(v51, v52);
    v44 = swift_allocObject();
    v45 = v50;
    *(v44 + 16) = v49;
    *(v44 + 24) = v45;
    sub_251663748(0, &qword_27F4523C8, 0x277D471B0);

    sub_251673578();

    (*(v47 + 8))(v24, v48);
    return __swift_destroy_boxed_opaque_existential_0(v51);
  }
}

uint64_t sub_251670B2C(uint64_t a1, void (*a2)(char *))
{
  v3 = sub_251673538();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251673518();
  a2(v7);
  return (*(v4 + 8))(v7, v3);
}

uint64_t OutputFlow.getReferenceResolutionClient_ForTesting()()
{
  v1 = *(v0 + *(type metadata accessor for OutputFlow() + 32));
}

uint64_t sub_251670C3C(uint64_t a1, char a2)
{
  v3 = sub_251674568();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x28223BE20](v3);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    if (qword_27F451F38 != -1)
    {
      swift_once();
    }

    v9 = __swift_project_value_buffer(v3, static Logger.common);
    swift_beginAccess();
    (*(v4 + 16))(v8, v9, v3);
    v10 = sub_251674548();
    v11 = sub_251674728();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_251650000, v10, v11, "Failed to donate entities to Siri Reference Resolution", v12, 2u);
      MEMORY[0x25307EDE0](v12, -1, -1);
    }

    return (*(v4 + 8))(v8, v3);
  }

  return result;
}

uint64_t sub_251670DEC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_251670E40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4523B8, qword_251675280);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_251670F1C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4523B8, qword_251675280);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_251670FE0()
{
  sub_2516710AC();
  if (v0 <= 0x3F)
  {
    sub_251671128();
    if (v1 <= 0x3F)
    {
      sub_251671190();
      if (v2 <= 0x3F)
      {
        sub_2516711F4();
        if (v3 <= 0x3F)
        {
          sub_2516744D8();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_2516710AC()
{
  if (!qword_27F452628)
  {
    sub_251673558();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4523C0, &qword_2516762D0);
    v0 = sub_251674A28();
    if (!v1)
    {
      atomic_store(v0, &qword_27F452628);
    }
  }
}

void sub_251671128()
{
  if (!qword_27F452630)
  {
    sub_251663748(255, &qword_27F452638, 0x277D47140);
    v0 = sub_2516746F8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F452630);
    }
  }
}

unint64_t sub_251671190()
{
  result = qword_27F452640;
  if (!qword_27F452640)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27F452640);
  }

  return result;
}

void sub_2516711F4()
{
  if (!qword_27F452648)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F452650, qword_2516762D8);
    v0 = sub_251674798();
    if (!v1)
    {
      atomic_store(v0, &qword_27F452648);
    }
  }
}

uint64_t AppPunchOutFlow.init(aceService:url:instrumentationTask:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v31 = a4;
  v9 = sub_2516731E8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = a1;
  sub_251670164(a1, a5);
  v14 = type metadata accessor for AppPunchOutFlow();
  v15 = *(v10 + 16);
  v15(a5 + v14[5], a2, v9);
  v16 = (a5 + v14[6]);
  v17 = v31;
  *v16 = a3;
  v16[1] = v17;
  sub_251663748(0, &qword_27F452658, 0x277D479F0);
  sub_251670164(a1, v33);
  v18 = a2;
  v15(v13, a2, v9);
  v19 = SAUIAppPunchOut.init(aceService:url:)(v33, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F452660, &qword_251676330);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_251676320;
  v21 = *MEMORY[0x277D48B28];
  v22 = sub_251674608();
  v23 = MEMORY[0x277D837D0];
  *(v20 + 56) = MEMORY[0x277D837D0];
  *(v20 + 32) = v22;
  *(v20 + 40) = v24;
  v25 = *MEMORY[0x277D48B20];
  v26 = sub_251674608();
  *(v20 + 88) = v23;
  *(v20 + 64) = v26;
  *(v20 + 72) = v27;
  v28 = sub_2516746A8();

  [v19 setLaunchOptions_];

  (*(v10 + 8))(v18, v9);
  result = __swift_destroy_boxed_opaque_existential_0(v32);
  *(a5 + v14[7]) = v19;
  return result;
}

uint64_t type metadata accessor for AppPunchOutFlow()
{
  result = qword_27F452678;
  if (!qword_27F452678)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AppPunchOutFlow.execute(completion:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v50 = a1;
  v51 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F452668, qword_251676338);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v49 = v43 - v6;
  v7 = sub_2516734C8();
  v46 = *(v7 - 8);
  v47 = v7;
  v8 = *(v46 + 64);
  MEMORY[0x28223BE20](v7);
  v48 = v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AppPunchOutFlow();
  v11 = *(*(v10 - 1) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_251674568();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F451F38 != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(v14, static Logger.common);
  swift_beginAccess();
  (*(v15 + 16))(v18, v19, v14);
  sub_251671A60(v2, v13);
  v20 = sub_251674548();
  v21 = sub_251674718();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v45 = v2;
    v24 = v23;
    v52[0] = v23;
    *v22 = 136315138;
    v25 = v10[5];
    sub_2516731E8();
    v44 = v10;
    sub_251671C40();
    v26 = sub_251674958();
    v28 = v27;
    sub_251671AC4(v13);
    v29 = sub_25165445C(v26, v28, v52);
    v10 = v44;

    *(v22 + 4) = v29;
    _os_log_impl(&dword_251650000, v20, v21, "Punching out to: %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v24);
    v30 = v24;
    v3 = v45;
    MEMORY[0x25307EDE0](v30, -1, -1);
    MEMORY[0x25307EDE0](v22, -1, -1);
  }

  else
  {

    sub_251671AC4(v13);
  }

  (*(v15 + 8))(v18, v14);
  v31 = (v3 + v10[6]);
  if (v31[1])
  {
    v44 = *v31;

    sub_251673388();
    v45 = v52[4];
    v43[1] = __swift_project_boxed_opaque_existential_1(v52, v52[3]);
    sub_2516733D8();
    (*(v46 + 104))(v48, *MEMORY[0x277D5BBA8], v47);
    v32 = v10;
    v33 = *MEMORY[0x277D5B948];
    v34 = sub_2516733A8();
    v35 = *(v34 - 8);
    v36 = v49;
    v37 = v33;
    v10 = v32;
    (*(v35 + 104))(v49, v37, v34);
    (*(v35 + 56))(v36, 0, 1, v34);
    sub_2516733B8();
    sub_251673398();

    __swift_destroy_boxed_opaque_existential_0(v52);
  }

  v38 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  v39 = *(v3 + v10[7]);
  v40 = swift_allocObject();
  v41 = v51;
  *(v40 + 16) = v50;
  *(v40 + 24) = v41;
  sub_251663748(0, &qword_27F4523C8, 0x277D471B0);

  sub_251673578();
}

uint64_t sub_251671A60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppPunchOutFlow();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_251671AC4(uint64_t a1)
{
  v2 = type metadata accessor for AppPunchOutFlow();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_251671B20(uint64_t a1, void (*a2)(char *))
{
  v3 = sub_251673538();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251673518();
  a2(v7);
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_251671BFC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

unint64_t sub_251671C40()
{
  result = qword_27F452670;
  if (!qword_27F452670)
  {
    sub_2516731E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F452670);
  }

  return result;
}

uint64_t sub_251671CAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_2516731E8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_251671D6C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_2516731E8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_251671E10()
{
  sub_251671ED4();
  if (v0 <= 0x3F)
  {
    sub_2516731E8();
    if (v1 <= 0x3F)
    {
      sub_251671F38();
      if (v2 <= 0x3F)
      {
        sub_251663748(319, &qword_27F452658, 0x277D479F0);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_251671ED4()
{
  result = qword_27F452688;
  if (!qword_27F452688)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27F452688);
  }

  return result;
}

void sub_251671F38()
{
  if (!qword_27F452690)
  {
    v0 = sub_251674798();
    if (!v1)
    {
      atomic_store(v0, &qword_27F452690);
    }
  }
}

uint64_t SequenceFlow.flows.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 56);
}

uint64_t SequenceFlow.flows.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 56);
  *(v1 + 56) = a1;
}

uint64_t SequenceFlow.__allocating_init(aceService:flows:)(__int128 *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_251655CC8(a1, v4 + 16);
  *(v4 + 56) = a2;
  return v4;
}

uint64_t SequenceFlow.init(aceService:flows:)(__int128 *a1, uint64_t a2)
{
  sub_251655CC8(a1, v2 + 16);
  *(v2 + 56) = a2;
  return v2;
}

uint64_t SequenceFlow.__allocating_init(with:)(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_2516733F8();
  *(v2 + 56) = a1;
  return v2;
}

uint64_t SequenceFlow.init(with:)(uint64_t a1)
{
  sub_2516733F8();
  sub_251655CC8(&v4, v1 + 16);
  *(v1 + 56) = a1;
  return v1;
}

uint64_t SequenceFlow.execute(completion:)(void (*a1)(void), uint64_t a2)
{
  v3 = v2;
  v6 = sub_251673538();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_251674568();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v16 = *(v3 + 56);
  if (v16 >> 62)
  {
    if (v16 < 0)
    {
      v23 = *(v3 + 56);
    }

    if (sub_251674918())
    {
      goto LABEL_3;
    }

LABEL_14:
    sub_251673518();
    goto LABEL_15;
  }

  if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_14;
  }

LABEL_3:
  v28 = a2;
  if (qword_27F451F38 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v11, static Logger.common);
  swift_beginAccess();
  (*(v12 + 16))(v15, v17, v11);

  v18 = sub_251674548();
  v19 = sub_251674718();
  if (os_log_type_enabled(v18, v19))
  {
    v27 = a1;
    v20 = swift_slowAlloc();
    *v20 = 134217984;
    v21 = *(v3 + 56);
    if (v21 >> 62)
    {
      if (v21 < 0)
      {
        v25 = *(v3 + 56);
      }

      v22 = sub_251674918();
    }

    else
    {
      v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v20 + 4) = v22;

    _os_log_impl(&dword_251650000, v18, v19, "Flows remaining : %ld", v20, 0xCu);
    MEMORY[0x25307EDE0](v20, -1, -1);

    a1 = v27;
  }

  else
  {
  }

  (*(v12 + 8))(v15, v11);
  swift_beginAccess();
  sub_2516724BC();
  swift_endAccess();
  sub_251673508();

LABEL_15:
  a1(v10);
  return (*(v7 + 8))(v10, v6);
}

void sub_2516724BC()
{
  v1 = *v0;
  v2 = *v0 >> 62;
  if (!v2)
  {
    if (*((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_13:
    __break(1u);
LABEL_14:
    MEMORY[0x25307E6F0](0, v1);
    if (!v2)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

  if (v1 < 0)
  {
    v5 = *v0;
  }

  else
  {
    v5 = *v0 & 0xFFFFFFFFFFFFFF8;
  }

  if (!sub_251674918())
  {
    goto LABEL_20;
  }

  if (!sub_251674918())
  {
    __break(1u);
    goto LABEL_13;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    goto LABEL_14;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v3 = *(v1 + 32);

    if (!v2)
    {
LABEL_6:
      v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_16;
    }

LABEL_15:
    v4 = sub_251674918();
LABEL_16:
    if (v4)
    {
      sub_25167281C(0, 1);
      return;
    }

    goto LABEL_19;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
}

uint64_t SequenceFlow.deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 56);

  return v0;
}

uint64_t SequenceFlow.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 56);

  return swift_deallocClassInstance();
}

uint64_t sub_251672620()
{
  type metadata accessor for SequenceFlow();

  return sub_251673358();
}

uint64_t sub_25167267C(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_251674918();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_251674838();
  *v1 = result;
  return result;
}

uint64_t sub_25167271C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  sub_251673308();
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_251674918();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_251674918();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_25167281C(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v4 = a1;
    v5 = *v3;
    v6 = *v3 >> 62;
    if (!v6)
    {
      result = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_251674918();
  if (result < v2)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v2, v4))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v4 - v2;
  if (__OFSUB__(0, v2 - v4))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v6)
  {
    v9 = sub_251674918();
  }

  else
  {
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = __OFADD__(v9, v8);
  result = v9 + v8;
  if (v10)
  {
    goto LABEL_18;
  }

  sub_25167267C(result);

  return sub_25167271C(v4, v2, 0);
}

uint64_t static UsoEntity_common_Workout.builder(workoutName:goalDefinedValue:goalUnitType:goalValue:areaType:sequenceLabel:usoAssociatedAppIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v77 = a1;
  v78 = a8;
  v67 = a7;
  v72 = a6;
  v73 = a4;
  v71 = a3;
  v69 = a5;
  v70 = a9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F452390, &unk_251675D30);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v65 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v66 = &v63 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v63 - v18;
  v80 = sub_251673AC8();
  v75 = *(v80 - 8);
  v20 = *(v75 + 64);
  v21 = MEMORY[0x28223BE20](v80);
  v64 = &v63 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v74 = &v63 - v23;
  v24 = sub_251673848();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v28 = &v63 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_251673CB8();
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  swift_allocObject();
  v32 = sub_251673CA8();
  v33 = sub_251673DC8();
  v34 = *(v33 + 48);
  v35 = *(v33 + 52);
  swift_allocObject();
  v79 = sub_251673DB8();
  if (a2)
  {
    v36 = sub_2516739D8();
    v37 = *(v36 + 48);
    v38 = *(v36 + 52);
    swift_allocObject();
    swift_bridgeObjectRetain_n();
    v39 = sub_2516739C8();
    sub_251673818();
    sub_2516737D8();
    (*(v25 + 8))(v28, v24);
    v81 = v39;
    sub_251673868();
  }

  v68 = v28;
  v76 = v25;
  v77 = v24;
  if (v78)
  {
    _s12SiriOntology31UsoEntity_common_GeographicAreaC18HealthDomainsToolsE7builder8areaTypeAA0cd8Builder_e1_fG0CSSSg_tFZ_0(v67, v78);
    sub_251673D98();
  }

  sub_251673C78();

  v78 = sub_251658E48(v71, v73, v69, v72 & 1);
  sub_251673C88();
  sub_251654A14(v70, v19);
  v40 = v75;
  v41 = *(v75 + 48);
  if (v41(v19, 1, v80) == 1)
  {
    sub_25165ECFC(v19);
    v43 = v76;
    v42 = v77;
    if (!a11)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v73 = v32;
  v44 = *(v40 + 32);
  v45 = v74;
  v46 = v80;
  v44(v74, v19, v80);
  v47 = v66;
  (*(v40 + 16))(v66, v45, v46);
  (*(v40 + 56))(v47, 0, 1, v46);
  v48 = sub_251673F18();
  v49 = *(v48 + 48);
  v50 = *(v48 + 52);
  swift_allocObject();
  sub_251673F08();
  v51 = v65;
  sub_251654A14(v47, v65);
  if (v41(v51, 1, v46) == 1)
  {
    sub_25165ECFC(v47);
    v47 = v51;
  }

  else
  {
    v52 = v64;
    v53 = v80;
    v44(v64, v51, v80);
    sub_251673EF8();
    (*(v40 + 8))(v52, v53);
  }

  v43 = v76;
  v42 = v77;
  sub_25165ECFC(v47);

  v32 = v73;
  sub_2516739F8();

  (*(v40 + 8))(v74, v80);
  if (a11)
  {
LABEL_12:
    v54 = sub_251673A68();
    v55 = *(v54 + 48);
    v56 = *(v54 + 52);
    swift_allocObject();
    sub_251673A58();
    v57 = sub_2516739D8();
    v58 = *(v57 + 48);
    v59 = *(v57 + 52);
    swift_allocObject();

    v60 = sub_2516739C8();
    v61 = v68;
    sub_251673818();
    sub_2516737D8();
    (*(v43 + 8))(v61, v42);
    v81 = v60;
    sub_251673868();

    sub_251673A08();
  }

LABEL_13:

  return v32;
}

uint64_t static UsoEntity_common_Workout.builder(name:goal:healthLog:workoutClass:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = sub_251673CB8();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  v14 = sub_251673CA8();
  if (a2)
  {
    sub_251673C98();
  }

  if (a3)
  {

    sub_251673C88();
  }

  if (a5)
  {

    sub_251673C78();
  }

  if (a7)
  {

    sub_251673C68();
  }

  return v14;
}

uint64_t static UsoEntity_common_Workout.with(name:goal:healthLog:workoutClass:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = sub_251673CB8();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  v14 = sub_251673CA8();
  if (a2)
  {
    sub_251673C98();
  }

  if (a3)
  {

    sub_251673C88();
  }

  if (a5)
  {

    sub_251673C78();
  }

  if (a7)
  {

    sub_251673C68();
  }

  MEMORY[0x25307D850](v14);
  sub_251673968();
  sub_251673A18();

  return v16;
}