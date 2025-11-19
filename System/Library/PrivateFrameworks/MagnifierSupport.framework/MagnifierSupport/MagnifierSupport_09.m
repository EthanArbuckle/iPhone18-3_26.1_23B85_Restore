uint64_t sub_257C77984()
{
  v0 = sub_257ECCB70();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v85 = &v84 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v96 = &v84 - v5;
  v6 = MEMORY[0x28223BE20](v4);
  v94 = &v84 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v101 = &v84 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v95 = (&v84 - v11);
  v12 = MEMORY[0x28223BE20](v10);
  v93 = &v84 - v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v84 - v14;
  sub_257ECCC30();
  v17 = round(v16 * 1000.0);
  if ((*&v17 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_113;
  }

  if (v17 <= -9.22337204e18)
  {
LABEL_114:
    __break(1u);
    goto LABEL_115;
  }

  if (v17 >= 9.22337204e18)
  {
LABEL_115:
    __break(1u);
    goto LABEL_116;
  }

  if (qword_27F8F46D8 != -1)
  {
LABEL_116:
    swift_once();
  }

  v100 = v17;
  v89 = qword_27F9132E8;
  v18 = sub_257C73204();
  v92 = v18[2];
  if (v92)
  {
    v19 = 0;
    v88 = (*(v1 + 80) + 32) & ~*(v1 + 80);
    v91 = v18 + v88;
    v98 = (v1 + 2);
    v99 = v1 + 1;
    v86 = v102 + 1;
    v87 = (v1 + 4);
    v20 = MEMORY[0x277D84F90];
    v90 = v18;
    while (1)
    {
      if (v19 >= v18[2])
      {
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
        goto LABEL_114;
      }

      v97 = v1[9];
      v21 = v1[2];
      v21(v15, &v91[v97 * v19], v0);
      v22 = v93;
      sub_257ECCAF0();
      v23 = sub_257ECCAD0();
      v25 = v24;
      v26 = v1[1];
      v26(v22, v0);
      v27 = HIBYTE(v25) & 0xF;
      v28 = v23 & 0xFFFFFFFFFFFFLL;
      if ((v25 & 0x2000000000000000) != 0)
      {
        v29 = HIBYTE(v25) & 0xF;
      }

      else
      {
        v29 = v23 & 0xFFFFFFFFFFFFLL;
      }

      if (!v29)
      {

LABEL_73:
        if (v100 >= 1)
        {
          goto LABEL_76;
        }

        goto LABEL_7;
      }

      if ((v25 & 0x1000000000000000) == 0)
      {
        break;
      }

      v103 = 0;
      v32 = sub_257C762CC(v23, v25, 10);
      v50 = v55;
LABEL_72:

      if (v50)
      {
        goto LABEL_73;
      }

      if (v32 < v100)
      {
LABEL_76:
        v51 = *(v89 + 64);
        v52 = sub_257ECCAE0();
        [v51 removeObjectForKey_];

        v21(v95, v15, v0);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_257BFDA50(0, *(v20 + 2) + 1, 1, v20);
        }

        v54 = *(v20 + 2);
        v53 = *(v20 + 3);
        if (v54 >= v53 >> 1)
        {
          v20 = sub_257BFDA50(v53 > 1, v54 + 1, 1, v20);
        }

        v26(v15, v0);
        *(v20 + 2) = v54 + 1;
        (*v87)(&v20[v88 + v54 * v97], v95, v0);
        goto LABEL_8;
      }

LABEL_7:
      v26(v15, v0);
LABEL_8:
      v18 = v90;
      if (++v19 == v92)
      {

        goto LABEL_86;
      }
    }

    if ((v25 & 0x2000000000000000) != 0)
    {
      v102[0] = v23;
      v102[1] = v25 & 0xFFFFFFFFFFFFFFLL;
      if (v23 == 43)
      {
        if (!v27)
        {
          goto LABEL_109;
        }

        if (--v27)
        {
          v32 = 0;
          v42 = v86;
          while (1)
          {
            v43 = *v42 - 48;
            if (v43 > 9)
            {
              break;
            }

            v44 = 10 * v32;
            if ((v32 * 10) >> 64 != (10 * v32) >> 63)
            {
              break;
            }

            v32 = v44 + v43;
            if (__OFADD__(v44, v43))
            {
              break;
            }

            ++v42;
            if (!--v27)
            {
              goto LABEL_71;
            }
          }
        }
      }

      else if (v23 == 45)
      {
        if (!v27)
        {
          goto LABEL_111;
        }

        if (--v27)
        {
          v32 = 0;
          v36 = v86;
          while (1)
          {
            v37 = *v36 - 48;
            if (v37 > 9)
            {
              break;
            }

            v38 = 10 * v32;
            if ((v32 * 10) >> 64 != (10 * v32) >> 63)
            {
              break;
            }

            v32 = v38 - v37;
            if (__OFSUB__(v38, v37))
            {
              break;
            }

            ++v36;
            if (!--v27)
            {
              goto LABEL_71;
            }
          }
        }
      }

      else if (v27)
      {
        v32 = 0;
        v47 = v102;
        while (1)
        {
          v48 = *v47 - 48;
          if (v48 > 9)
          {
            break;
          }

          v49 = 10 * v32;
          if ((v32 * 10) >> 64 != (10 * v32) >> 63)
          {
            break;
          }

          v32 = v49 + v48;
          if (__OFADD__(v49, v48))
          {
            break;
          }

          ++v47;
          if (!--v27)
          {
            goto LABEL_71;
          }
        }
      }

      goto LABEL_70;
    }

    if ((v23 & 0x1000000000000000) != 0)
    {
      v30 = ((v25 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v30 = sub_257ED0320();
    }

    v31 = *v30;
    if (v31 == 43)
    {
      if (v28 < 1)
      {
        goto LABEL_112;
      }

      v27 = v28 - 1;
      if (v28 == 1)
      {
        goto LABEL_70;
      }

      v32 = 0;
      if (v30)
      {
        v39 = v30 + 1;
        while (1)
        {
          v40 = *v39 - 48;
          if (v40 > 9)
          {
            goto LABEL_70;
          }

          v41 = 10 * v32;
          if ((v32 * 10) >> 64 != (10 * v32) >> 63)
          {
            goto LABEL_70;
          }

          v32 = v41 + v40;
          if (__OFADD__(v41, v40))
          {
            goto LABEL_70;
          }

          ++v39;
          if (!--v27)
          {
            goto LABEL_71;
          }
        }
      }
    }

    else if (v31 == 45)
    {
      if (v28 < 1)
      {
        goto LABEL_110;
      }

      v27 = v28 - 1;
      if (v28 == 1)
      {
        goto LABEL_70;
      }

      v32 = 0;
      if (v30)
      {
        v33 = v30 + 1;
        while (1)
        {
          v34 = *v33 - 48;
          if (v34 > 9)
          {
            goto LABEL_70;
          }

          v35 = 10 * v32;
          if ((v32 * 10) >> 64 != (10 * v32) >> 63)
          {
            goto LABEL_70;
          }

          v32 = v35 - v34;
          if (__OFSUB__(v35, v34))
          {
            goto LABEL_70;
          }

          ++v33;
          if (!--v27)
          {
            goto LABEL_71;
          }
        }
      }
    }

    else
    {
      if (!v28)
      {
LABEL_70:
        v32 = 0;
        LOBYTE(v27) = 1;
        goto LABEL_71;
      }

      v32 = 0;
      if (v30)
      {
        do
        {
          v45 = *v30 - 48;
          if (v45 > 9)
          {
            goto LABEL_70;
          }

          v46 = 10 * v32;
          if ((v32 * 10) >> 64 != (10 * v32) >> 63)
          {
            goto LABEL_70;
          }

          v32 = v46 + v45;
          if (__OFADD__(v46, v45))
          {
            goto LABEL_70;
          }

          ++v30;
        }

        while (--v28);
      }
    }

    LOBYTE(v27) = 0;
LABEL_71:
    v103 = v27;
    v50 = v27;
    goto LABEL_72;
  }

  v20 = MEMORY[0x277D84F90];
LABEL_86:
  v56 = v85;
  if (qword_27F8F46E0 != -1)
  {
    swift_once();
  }

  v95 = qword_27F9132F0;
  v57 = sub_257C73204();
  v58 = *(v57 + 2);
  if (!v58)
  {

    v77 = *(v20 + 2);
    if (v77)
    {
      goto LABEL_103;
    }
  }

  v90 = v1;
  v91 = v57;
  v60 = v1[2];
  v59 = v1 + 2;
  v98 = v60;
  v99 = v20;
  v93 = ((*(v59 + 64) + 32) & ~*(v59 + 64));
  v61 = &v93[v57];
  v62 = v59[7];
  v63 = (v59 - 1);
  v97 = v59;
  v92 = (v59 + 2);
  v60(v101, &v93[v57], v0);
  while (1)
  {
    v64 = v94;
    sub_257ECCAF0();
    v65 = sub_257ECCAD0();
    v67 = v66;
    v68 = *v63;
    (*v63)(v64, v0);
    v69 = sub_257C743A0(v65, v67);
    if (v70)
    {
      if (v100 <= 0)
      {
        goto LABEL_90;
      }
    }

    else if (v69 >= v100)
    {
LABEL_90:
      v68(v101, v0);
      goto LABEL_91;
    }

    v71 = v95[8];
    v72 = v101;
    v73 = sub_257ECCAE0();
    [v71 removeObjectForKey_];

    v98(v96, v72, v0);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v99 = sub_257BFDA50(0, v99[2] + 1, 1, v99);
    }

    v75 = v99[2];
    v74 = v99[3];
    if (v75 >= v74 >> 1)
    {
      v99 = sub_257BFDA50(v74 > 1, v75 + 1, 1, v99);
    }

    v68(v101, v0);
    v76 = v99;
    v99[2] = v75 + 1;
    (*v92)(&v93[v76 + v75 * v62], v96, v0);
LABEL_91:
    v61 += v62;
    if (!--v58)
    {
      break;
    }

    v98(v101, v61, v0);
  }

  v1 = v90;
  v56 = v85;
  v20 = v99;
  v77 = v99[2];
  if (v77)
  {
LABEL_103:
    v80 = v1[2];
    v79 = v1 + 2;
    v78 = v80;
    v81 = &v20[(*(v79 + 64) + 32) & ~*(v79 + 64)];
    v82 = v79[7];
    do
    {
      v78(v56, v81, v0);
      sub_257E875E8(v56);
      (*(v79 - 1))(v56, v0);
      v81 += v82;
      --v77;
    }

    while (v77);
  }
}

uint64_t sub_257C7837C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6CA0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_257ECCA10();
  v3 = *(v12[0] - 8);
  MEMORY[0x28223BE20](v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_257ECCD90();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_257ECF4B0();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_257ECCA30();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = sub_257ECC660();
  __swift_allocate_value_buffer(v10, qword_27F8F6BE8);
  __swift_project_value_buffer(v10, qword_27F8F6BE8);
  sub_257ECF460();
  sub_257ECCD80();
  (*(v3 + 104))(v5, *MEMORY[0x277CC9110], v12[0]);
  sub_257ECCA40();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_257ECC650();
}

uint64_t static DetectionTypeEnum.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F8F45D0 != -1)
  {
    swift_once();
  }

  v2 = sub_257ECC660();
  v3 = __swift_project_value_buffer(v2, qword_27F8F6BE8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_257C78700()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6CD0);
  MEMORY[0x28223BE20](v0 - 8);
  v43 = &v39 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6CA0);
  MEMORY[0x28223BE20](v2 - 8);
  v59 = &v39 - v3;
  v57 = sub_257ECCA10();
  v4 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_257ECCD90();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_257ECF4B0();
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_257ECCA30();
  v48 = v13;
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6CD8);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F56F0);
  v60 = v15;
  v16 = *(v15 - 8);
  v52 = *(v16 + 72);
  v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v18 = swift_allocObject();
  v44 = v18;
  *(v18 + 16) = xmmword_257EDBE50;
  v42 = *(v15 + 48);
  *(v18 + v17) = 0;
  v19 = v18 + v17;
  sub_257ECF460();
  sub_257ECCD80();
  v58 = *MEMORY[0x277CC9110];
  v50 = *(v4 + 104);
  v51 = v4 + 104;
  v20 = v57;
  v50(v6);
  v21 = v6;
  sub_257ECCA40();
  v22 = *(v14 + 56);
  v49 = v14 + 56;
  v55 = v22;
  v22(v59, 1, 1, v13);
  v23 = v43;
  sub_257ECC560();
  v54 = sub_257ECC570();
  v24 = *(v54 - 8);
  v53 = *(v24 + 56);
  v47 = v24 + 56;
  v53(v23, 0, 1, v54);
  v56 = v19;
  sub_257ECC580();
  v25 = v52;
  v42 = *(v60 + 48);
  *(v19 + v52) = 1;
  v45 = v12;
  sub_257ECF460();
  v46 = v9;
  sub_257ECCD80();
  v39 = v21;
  v26 = v21;
  v27 = v50;
  (v50)(v26, v58, v20);
  sub_257ECCA40();
  v28 = v48;
  v55(v59, 1, 1, v48);
  sub_257ECC560();
  v53(v23, 0, 1, v54);
  sub_257ECC580();
  v42 = 2 * v25;
  v40 = (v56 + 2 * v25);
  v41 = *(v60 + 48);
  *v40 = 2;
  sub_257ECF460();
  sub_257ECCD80();
  v29 = v39;
  (v27)(v39, v58, v57);
  v30 = v29;
  sub_257ECCA40();
  v31 = v59;
  v32 = v28;
  v33 = v55;
  v55(v59, 1, 1, v32);
  sub_257ECC560();
  v34 = v53;
  v35 = v54;
  v53(v23, 0, 1, v54);
  sub_257ECC580();
  v36 = (v56 + v42 + v52);
  v52 = *(v60 + 48);
  *v36 = 3;
  sub_257ECF460();
  sub_257ECCD80();
  (v50)(v30, v58, v57);
  sub_257ECCA40();
  v33(v31, 1, 1, v48);
  sub_257ECC560();
  v34(v23, 0, 1, v35);
  sub_257ECC580();
  v37 = sub_257BE96FC(v44);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_27F8F6C00 = v37;
  return result;
}

uint64_t static DetectionTypeEnum.caseDisplayRepresentations.getter()
{
  if (qword_27F8F45D8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static DetectionTypeEnum.caseDisplayRepresentations.setter(uint64_t a1)
{
  if (qword_27F8F45D8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27F8F6C00 = a1;
}

uint64_t (*static DetectionTypeEnum.caseDisplayRepresentations.modify())()
{
  if (qword_27F8F45D8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_257C790C8@<X0>(void *a1@<X8>)
{
  if (qword_27F8F45D8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_27F8F6C00;
}

uint64_t sub_257C79148(uint64_t *a1)
{
  v1 = *a1;
  v2 = qword_27F8F45D8;

  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27F8F6C00 = v1;
}

MagnifierSupport::DetectionTypeEnum_optional __swiftcall DetectionTypeEnum.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_257ED04B0();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t DetectionTypeEnum.rawValue.getter()
{
  v1 = 0x656C706F6570;
  v2 = 1954047348;
  if (*v0 != 2)
  {
    v2 = 0x727574696E727566;
  }

  if (*v0)
  {
    v1 = 0x73726F6F64;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_257C792B8()
{
  result = qword_27F8F6C08;
  if (!qword_27F8F6C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F6C08);
  }

  return result;
}

uint64_t sub_257C7930C()
{
  sub_257ED07B0();
  sub_257ECF5D0();

  return sub_257ED0800();
}

uint64_t sub_257C793C4()
{
  sub_257ECF5D0();
}

uint64_t sub_257C79468()
{
  sub_257ED07B0();
  sub_257ECF5D0();

  return sub_257ED0800();
}

void sub_257C79528(uint64_t *a1@<X8>)
{
  v2 = 0xE600000000000000;
  v3 = 0x656C706F6570;
  v4 = 0xE400000000000000;
  v5 = 1954047348;
  if (*v1 != 2)
  {
    v5 = 0x727574696E727566;
    v4 = 0xE900000000000065;
  }

  if (*v1)
  {
    v3 = 0x73726F6F64;
    v2 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_257C795A0()
{
  result = qword_27F8F6C10;
  if (!qword_27F8F6C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F6C10);
  }

  return result;
}

unint64_t sub_257C795F8()
{
  result = qword_27F8F6C18;
  if (!qword_27F8F6C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F6C18);
  }

  return result;
}

unint64_t sub_257C79650()
{
  result = qword_27F8F6C20;
  if (!qword_27F8F6C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F6C20);
  }

  return result;
}

unint64_t sub_257C796B4()
{
  result = qword_27F8F6C28;
  if (!qword_27F8F6C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F6C28);
  }

  return result;
}

unint64_t sub_257C79708()
{
  result = qword_27F8F6C30;
  if (!qword_27F8F6C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F6C30);
  }

  return result;
}

unint64_t sub_257C7975C()
{
  result = qword_27F8F6C38;
  if (!qword_27F8F6C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F6C38);
  }

  return result;
}

unint64_t sub_257C797B4()
{
  result = qword_27F8F6C40;
  if (!qword_27F8F6C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F6C40);
  }

  return result;
}

unint64_t sub_257C79894()
{
  result = qword_27F8F6C48;
  if (!qword_27F8F6C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F6C48);
  }

  return result;
}

uint64_t sub_257C798E8(uint64_t a1)
{
  v2 = sub_257C79894();

  return MEMORY[0x28210B458](a1, v2);
}

unint64_t sub_257C79938()
{
  result = qword_27F8F6C50;
  if (!qword_27F8F6C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F6C50);
  }

  return result;
}

unint64_t sub_257C79990()
{
  result = qword_27F8F6C58;
  if (!qword_27F8F6C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F6C58);
  }

  return result;
}

unint64_t sub_257C799E8()
{
  result = qword_27F8F6C60;
  if (!qword_27F8F6C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F6C60);
  }

  return result;
}

uint64_t sub_257C79A3C()
{
  if (qword_27F8F45D8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t sub_257C79AB4(uint64_t a1)
{
  v2 = sub_257C797B4();

  return MEMORY[0x28210C300](a1, v2);
}

unint64_t sub_257C79B58()
{
  result = qword_27F8F6C78;
  if (!qword_27F8F6C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F6C78);
  }

  return result;
}

unint64_t sub_257C79BB0()
{
  result = qword_27F8F6C80;
  if (!qword_27F8F6C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F6C80);
  }

  return result;
}

uint64_t sub_257C79C3C()
{
  v0 = sub_257ECCA30();
  __swift_allocate_value_buffer(v0, qword_27F912F20);
  __swift_project_value_buffer(v0, qword_27F912F20);
  return sub_257ECCA00();
}

uint64_t sub_257C79CC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[14] = a4;
  v5 = sub_257ECDA30();
  v4[15] = v5;
  v4[16] = *(v5 - 8);
  v4[17] = swift_task_alloc();
  sub_257ECF900();
  v4[18] = sub_257ECF8F0();
  v7 = sub_257ECF8B0();
  v4[19] = v7;
  v4[20] = v6;

  return MEMORY[0x2822009F8](sub_257C79DB8, v7, v6);
}

uint64_t sub_257C79DB8()
{
  sub_257ECC360();
  if (*(v0 + 33) > 1u)
  {
    if (*(v0 + 33) == 2)
    {
      if (qword_27F8F4770 != -1)
      {
        swift_once();
      }

      *(v0 + 40) = xmmword_257EDA120;
      v1 = v0 + 40;
      *(v0 + 56) = 7;
      v2 = swift_task_alloc();
      *(v0 + 200) = v2;
      *v2 = v0;
      v3 = sub_257C7A348;
    }

    else
    {
      if (qword_27F8F4770 != -1)
      {
        swift_once();
      }

      *(v0 + 16) = xmmword_257EDE760;
      v1 = v0 + 16;
      *(v0 + 32) = 7;
      v2 = swift_task_alloc();
      *(v0 + 216) = v2;
      *v2 = v0;
      v3 = sub_257C7A488;
    }
  }

  else if (*(v0 + 33))
  {
    if (qword_27F8F4770 != -1)
    {
      swift_once();
    }

    *(v0 + 64) = xmmword_257EDE770;
    v1 = v0 + 64;
    *(v0 + 80) = 7;
    v2 = swift_task_alloc();
    *(v0 + 184) = v2;
    *v2 = v0;
    v3 = sub_257C7A208;
  }

  else
  {
    if (qword_27F8F4770 != -1)
    {
      swift_once();
    }

    *(v0 + 88) = xmmword_257EDE780;
    v1 = v0 + 88;
    *(v0 + 104) = 7;
    v2 = swift_task_alloc();
    *(v0 + 168) = v2;
    *v2 = v0;
    v3 = sub_257C7A060;
  }

  v2[1] = v3;

  return MAGActionHandler.send(_:)(v1);
}

uint64_t sub_257C7A060()
{
  v2 = *v1;
  *(v2 + 176) = v0;

  sub_257C6DA74(*(v2 + 88), *(v2 + 96), *(v2 + 104));
  v3 = *(v2 + 152);
  v4 = *(v2 + 160);
  if (v0)
  {
    v5 = sub_257C7A5C8;
  }

  else
  {
    v5 = sub_257C7A1A0;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_257C7A1A0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_257C7A208()
{
  v2 = *v1;
  *(v2 + 192) = v0;

  sub_257C6DA74(*(v2 + 64), *(v2 + 72), *(v2 + 80));
  v3 = *(v2 + 152);
  v4 = *(v2 + 160);
  if (v0)
  {
    v5 = sub_257C7A744;
  }

  else
  {
    v5 = sub_257C7B80C;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_257C7A348()
{
  v2 = *v1;
  *(v2 + 208) = v0;

  sub_257C6DA74(*(v2 + 40), *(v2 + 48), *(v2 + 56));
  v3 = *(v2 + 152);
  v4 = *(v2 + 160);
  if (v0)
  {
    v5 = sub_257C7A8C0;
  }

  else
  {
    v5 = sub_257C7B80C;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_257C7A488()
{
  v2 = *v1;
  *(v2 + 224) = v0;

  sub_257C6DA74(*(v2 + 16), *(v2 + 24), *(v2 + 32));
  v3 = *(v2 + 152);
  v4 = *(v2 + 160);
  if (v0)
  {
    v5 = sub_257C7AA3C;
  }

  else
  {
    v5 = sub_257C7B80C;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_257C7A5C8()
{

  v1 = v0[22];
  sub_257ECD3A0();
  v2 = v1;
  v3 = sub_257ECDA20();
  v4 = sub_257ECFBE0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_257BAC000, v3, v4, "Could not complete StartDetectionTypeIntent: %@", v5, 0xCu);
    sub_257C11B14(v6);
    MEMORY[0x259C74820](v6, -1, -1);
    MEMORY[0x259C74820](v5, -1, -1);
  }

  else
  {
  }

  (*(v0[16] + 8))(v0[17], v0[15]);

  v9 = v0[1];

  return v9();
}

uint64_t sub_257C7A744()
{

  v1 = v0[24];
  sub_257ECD3A0();
  v2 = v1;
  v3 = sub_257ECDA20();
  v4 = sub_257ECFBE0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_257BAC000, v3, v4, "Could not complete StartDetectionTypeIntent: %@", v5, 0xCu);
    sub_257C11B14(v6);
    MEMORY[0x259C74820](v6, -1, -1);
    MEMORY[0x259C74820](v5, -1, -1);
  }

  else
  {
  }

  (*(v0[16] + 8))(v0[17], v0[15]);

  v9 = v0[1];

  return v9();
}

uint64_t sub_257C7A8C0()
{

  v1 = v0[26];
  sub_257ECD3A0();
  v2 = v1;
  v3 = sub_257ECDA20();
  v4 = sub_257ECFBE0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_257BAC000, v3, v4, "Could not complete StartDetectionTypeIntent: %@", v5, 0xCu);
    sub_257C11B14(v6);
    MEMORY[0x259C74820](v6, -1, -1);
    MEMORY[0x259C74820](v5, -1, -1);
  }

  else
  {
  }

  (*(v0[16] + 8))(v0[17], v0[15]);

  v9 = v0[1];

  return v9();
}

uint64_t sub_257C7AA3C()
{

  v1 = v0[28];
  sub_257ECD3A0();
  v2 = v1;
  v3 = sub_257ECDA20();
  v4 = sub_257ECFBE0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_257BAC000, v3, v4, "Could not complete StartDetectionTypeIntent: %@", v5, 0xCu);
    sub_257C11B14(v6);
    MEMORY[0x259C74820](v6, -1, -1);
    MEMORY[0x259C74820](v5, -1, -1);
  }

  else
  {
  }

  (*(v0[16] + 8))(v0[17], v0[15]);

  v9 = v0[1];

  return v9();
}

uint64_t sub_257C7ABF0@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  if (*a1 == -1)
  {
    v6 = a2(0);
  }

  else
  {
    swift_once();
    v6 = a2(0);
  }

  v7 = v6;
  v8 = __swift_project_value_buffer(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t sub_257C7AC98()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6CB8);
  MEMORY[0x28223BE20](v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6CC0);
  MEMORY[0x28223BE20](v1);
  sub_257ECC5F0();
  sub_257ECC5E0();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6CC8);
  sub_257ECC5D0();

  sub_257ECC5E0();
  sub_257ECC600();
  return sub_257ECC5C0();
}

uint64_t sub_257C7AE3C(uint64_t a1)
{
  v2[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5D70);
  v3 = swift_task_alloc();
  v4 = *v1;
  v2[3] = v3;
  v2[4] = v4;
  v2[5] = sub_257ECF900();
  v2[6] = sub_257ECF8F0();
  v6 = sub_257ECF8B0();

  return MEMORY[0x2822009F8](sub_257C7AF14, v6, v5);
}

uint64_t sub_257C7AF14()
{
  v1 = v0[3];
  v2 = v0[4];

  v3 = sub_257ECF930();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  sub_257ECC3F0();
  v4 = sub_257ECF8F0();
  v5 = swift_allocObject();
  v6 = MEMORY[0x277D85700];
  v5[2] = v4;
  v5[3] = v6;
  v5[4] = v2;
  sub_257C3FBD4(0, 0, v1, &unk_257EDEBB8, v5);

  sub_257ECC350();

  v7 = v0[1];

  return v7();
}

uint64_t sub_257C7B038@<X0>(uint64_t *a1@<X8>)
{
  result = sub_257C7B0BC();
  *a1 = result;
  return result;
}

uint64_t sub_257C7B060(uint64_t a1)
{
  v2 = sub_257C7B704();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t sub_257C7B0BC()
{
  v17 = sub_257ECC610();
  v0 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v2 = &v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6C98);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6CA0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v17 - v10;
  v12 = sub_257ECCA30();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6CA8);
  sub_257ECCA00();
  (*(v13 + 56))(v11, 1, 1, v12);
  v18 = 4;
  v14 = sub_257ECC340();
  v15 = *(*(v14 - 8) + 56);
  v15(v8, 1, 1, v14);
  v15(v6, 1, 1, v14);
  (*(v0 + 104))(v2, *MEMORY[0x277CBA308], v17);
  sub_257C79894();
  return sub_257ECC390();
}

uint64_t sub_257C7B3C8(unsigned __int8 *a1)
{
  v22 = sub_257ECC610();
  v2 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v4 = &v20[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6C98);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v20[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v20[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6CA0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v20[-v12];
  v14 = sub_257ECCA30();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v21 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6CA8);
  sub_257ECCA00();
  (*(v15 + 56))(v13, 1, 1, v14);
  v24 = 4;
  v16 = sub_257ECC340();
  v17 = *(*(v16 - 8) + 56);
  v17(v10, 1, 1, v16);
  v17(v8, 1, 1, v16);
  (*(v2 + 104))(v4, *MEMORY[0x277CBA308], v22);
  sub_257C79894();
  v18 = sub_257ECC390();
  v23 = v21;
  sub_257ECC3F0();
  sub_257ECC370();

  return v18;
}

unint64_t sub_257C7B704()
{
  result = qword_27F8F6CB0;
  if (!qword_27F8F6CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F6CB0);
  }

  return result;
}

uint64_t sub_257C7B758(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_257BE3DE0;

  return sub_257C79CC4(a1, v4, v5, v6);
}

void sub_257C7BA74()
{
  v0 = sub_257ECDA30();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v25[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (v28 == 1)
  {
    type metadata accessor for MAGUtilities();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v5 = [objc_opt_self() bundleForClass_];
    v6 = sub_257ECF4C0();
    v7 = sub_257ECF4C0();
    v8 = [v5 localizedStringForKey:v6 value:0 table:v7];

    if (!v8)
    {
      sub_257ECF500();
      v8 = sub_257ECF4C0();
    }

    UIAccessibilitySpeak();

    sub_257ECD440();
    v9 = sub_257ECDA20();
    v10 = sub_257ECFBD0();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 67109120;
      _os_log_impl(&dword_257BAC000, v9, v10, "Setting detectionModeOn to %{BOOL}d", v11, 8u);
      MEMORY[0x259C74820](v11, -1, -1);
    }

    (*(v1 + 8))(v3, v0);
    swift_getKeyPath();
    swift_getKeyPath();
    v25[10] = 0;
    sub_257ECC3F0();
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if (v27 == 1)
    {
      type metadata accessor for MAGUtilities();
      v12 = swift_getObjCClassFromMetadata();
      v13 = [objc_opt_self() bundleForClass_];
      v14 = sub_257ECF4C0();
      v15 = sub_257ECF4C0();
      v16 = [v13 localizedStringForKey:v14 value:0 table:v15];

      if (!v16)
      {
        sub_257ECF500();
        v16 = sub_257ECF4C0();
      }

      v17 = *MEMORY[0x277D74010];
      v18 = AXAttributedStringForBetterPronuciation();

      if (!v18)
      {
        __break(1u);
        return;
      }

      UIAccessibilitySpeak();

      swift_getKeyPath();
      swift_getKeyPath();
      v25[11] = 0;
      sub_257ECC3F0();
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_257ECDD60();

      if (v26 && v26 == 1)
      {
      }

      else
      {
        v19 = sub_257ED0640();

        if ((v19 & 1) == 0)
        {
          return;
        }
      }

      type metadata accessor for MAGUtilities();
      v20 = swift_getObjCClassFromMetadata();
      v21 = [objc_opt_self() bundleForClass_];
      v22 = sub_257ECF4C0();
      v23 = sub_257ECF4C0();
      v24 = [v21 localizedStringForKey:v22 value:0 table:v23];

      if (!v24)
      {
        sub_257ECF500();
        v24 = sub_257ECF4C0();
      }

      UIAccessibilitySpeak();

      swift_getKeyPath();
      swift_getKeyPath();
      v25[12] = 0;
      sub_257ECC3F0();
    }
  }

  sub_257ECDD70();
}

unint64_t sub_257C7C0F8()
{
  result = qword_281543E30;
  if (!qword_281543E30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281543E30);
  }

  return result;
}

uint64_t sub_257C7C144(void *a1)
{
  v2 = type metadata accessor for DetectedTextBlock();
  v15 = *(v2 - 8);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v3);
  v16 = &v15 - v7;
  v8 = a1[2];
  if (v8 < 2)
  {
    return a1;
  }

  v9 = 0;
  v10 = v8 >> 1;
  for (i = v8 - 1; ; --i)
  {
    if (v9 == i)
    {
      goto LABEL_5;
    }

    v12 = a1[2];
    if (v9 >= v12)
    {
      break;
    }

    v13 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v14 = *(v15 + 72);
    result = sub_257C7E2F0(a1 + v13 + v14 * v9, v16);
    if (i >= v12)
    {
      goto LABEL_14;
    }

    sub_257C7E2F0(a1 + v13 + v14 * i, v5);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      a1 = sub_257C7DEEC(a1);
    }

    result = sub_257C7E354(v5, a1 + v13 + v14 * v9);
    if (i >= a1[2])
    {
      goto LABEL_15;
    }

    result = sub_257C7E354(v16, a1 + v13 + v14 * i);
LABEL_5:
    if (v10 == ++v9)
    {
      return a1;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_257C7C2F4(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2 < 2)
  {
    return v1;
  }

  v3 = 0;
  v4 = 0;
  v5 = v2 >> 1;
  v6 = v2 - 1;
  for (i = 16 * v2 + 24; ; i -= 16)
  {
    if (v4 == v6)
    {
      goto LABEL_5;
    }

    v9 = *(v1 + 2);
    if (v4 >= v9)
    {
      break;
    }

    if (v6 >= v9)
    {
      goto LABEL_14;
    }

    v11 = *&v1[v3 + 32];
    v10 = *&v1[v3 + 40];
    v13 = *&v1[i - 8];
    v12 = *&v1[i];

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = sub_257C7DF28(v1);
    }

    v14 = &v1[v3];
    *(v14 + 4) = v13;
    *(v14 + 5) = v12;

    if (v6 >= *(v1 + 2))
    {
      goto LABEL_15;
    }

    v8 = &v1[i];
    *(v8 - 1) = v11;
    *v8 = v10;

LABEL_5:
    ++v4;
    --v6;
    v3 += 16;
    if (v5 == v4)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

unint64_t sub_257C7C40C(uint64_t a1)
{
  if (!(a1 >> 62))
  {
    v1 = a1 & 0xFFFFFFFFFFFFFF8;
    goto LABEL_3;
  }

  while (1)
  {
    v18 = a1;
    v19 = sub_257ED0210();
    if (v19)
    {
      v20 = v19;
      v1 = sub_257C69A4C(v19, 0);
      sub_257EB4BE8(v1 + 32, v20, v18);
      v22 = v21;

      if (v22 != v20)
      {
        __break(1u);
        goto LABEL_38;
      }

      goto LABEL_3;
    }

    while (1)
    {

      v1 = MEMORY[0x277D84F90];
LABEL_3:
      if ((v1 & 0x8000000000000000) == 0 && (v1 & 0x4000000000000000) == 0)
      {
        v2 = *(v1 + 16);
        v3 = v2 >> 1;
        goto LABEL_6;
      }

LABEL_38:
      a1 = sub_257ED0210();
      if (a1 >= -1)
      {
        break;
      }

      __break(1u);
    }

    v2 = a1;
    v3 = a1 / 2;
LABEL_6:
    if (v2 + 1 < 3)
    {
      return v1;
    }

    v5 = -v3;
    v6 = 4;
    while (1)
    {
      v7 = v2 - (v6 - 3);
      if (__OFSUB__(v2, v6 - 3))
      {
        break;
      }

      a1 = v6 - 4;
      if (v6 - 4 != v7)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x259C72E20]();
          v11 = MEMORY[0x259C72E20](v2 - (v6 - 3), v1);
        }

        else
        {
          if (a1 < 0)
          {
            goto LABEL_31;
          }

          v8 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (a1 >= v8)
          {
            goto LABEL_32;
          }

          if (v7 >= v8)
          {
            goto LABEL_33;
          }

          v9 = *(v1 + 8 * v7 + 32);
          v10 = *(v1 + 8 * v6);
          v11 = v9;
        }

        v12 = v11;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
        {
          v1 = sub_257C7DF3C(v1);
          v13 = (v1 >> 62) & 1;
        }

        else
        {
          LODWORD(v13) = 0;
        }

        v14 = v1 & 0xFFFFFFFFFFFFFF8;
        v15 = *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v6);
        *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v6) = v12;

        if ((v1 & 0x8000000000000000) != 0 || v13)
        {
          a1 = sub_257C7DF3C(v1);
          v1 = a1;
          v14 = a1 & 0xFFFFFFFFFFFFFF8;
          if ((v7 & 0x8000000000000000) != 0)
          {
LABEL_29:
            __break(1u);
            break;
          }
        }

        else if ((v7 & 0x8000000000000000) != 0)
        {
          goto LABEL_29;
        }

        if (v7 >= *(v14 + 16))
        {
          goto LABEL_34;
        }

        v16 = v14 + 8 * v7;
        v17 = *(v16 + 32);
        *(v16 + 32) = v10;
      }

      ++v6;
      if (v5 + v6 == 4)
      {
        return v1;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }
}

void sub_257C7C61C()
{
  v0 = sub_257ECF120();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v122 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v4 = qword_281548348;
  swift_beginAccess();
  v5 = v4[11];
  v6 = v4[12];
  v135 = v4;
  v7 = v4[13];
  v141[0] = v5;
  v141[1] = v6;
  v141[2] = v7;
  v8 = qword_2815447E0;

  if (v8 != -1)
  {
    v9 = swift_once();
  }

  v10 = qword_2815447E8;
  MEMORY[0x28223BE20](v9);
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D90);
  v136 = v10;
  sub_257ECFD50();

  v11 = v140[0];
  v12 = *(v140[0] + 16);
  if (v12)
  {
    v13 = sub_257C63CC4(*(v140[0] + 16), 0);
    v14 = sub_257C67A48(v141, v13 + 4, v12, v11);
    sub_257C02520();
    if (v14 == v12)
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  v13 = MEMORY[0x277D84F90];
LABEL_9:
  v141[0] = v13;
  sub_257ECC3F0();
  sub_257C63C58(v141);
  v15 = v135;

  v16 = v141[0];
  if (!*(v141[0] + 2))
  {
    swift_beginAccess();
    v140[1] = 0;
    v140[0] = 0;
    v17 = sub_257ECF110();
    MEMORY[0x28223BE20](v17);
    sub_257ECFD40();
    (*(v1 + 8))(v3, v0);
    swift_endAccess();
  }

  v18 = sub_257C7C2F4(v16);
  v142 = MEMORY[0x277D84F90];
  v19 = *(v18 + 16);
  v126 = v19;
  if (v19)
  {
    v130 = objc_opt_self();
    v129 = sub_257BD2C2C(0, &unk_281543D90);
    type metadata accessor for MAGUtilities();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v20 = objc_opt_self();
    v127 = v20;
    v133 = v19 - 1;
    v125 = v18;
    for (i = (v18 + 40); ; i = v132 + 2)
    {
      v22 = *(i - 1);
      v23 = *i;
      v132 = i;
      v24 = v15[12];
      v25 = v15[13];
      v141[0] = v15[11];
      v141[1] = v24;
      v141[2] = v25;
      MEMORY[0x28223BE20](v20);

      sub_257ECFD50();

      v26 = v140[0];
      if (*(v140[0] + 16) && (v27 = sub_257C03F6C(v22, v23), (v28 & 1) != 0))
      {
        v29 = (*(v26 + 56) + 296 * v27);
        memcpy(v140, v29, sizeof(v140));
        memmove(v141, v29, 0x128uLL);
        sub_257C09C58(v140, v139);

        CGSizeMake(v141);
      }

      else
      {

        sub_257C10998(v140);
        memcpy(v141, v140, sizeof(v141));
      }

      memcpy(v140, v141, sizeof(v140));
      if (sub_257C108C4(v140) == 1)
      {
        memcpy(v138, v141, sizeof(v138));
        sub_257C109C8(v138);
        sub_257D54F8C(v137);
        memcpy(v139, v137, sizeof(v139));

        sub_257C63C04(v139);
      }

      else
      {
        memcpy(v139, v141, sizeof(v139));

        sub_257C109C8(v139);
      }

      v30 = sub_257ECF4C0();

      v31 = [v130 systemImageNamed_];

      v32 = v127;
      v33 = [v127 bundleForClass_];
      v34 = sub_257ECF4C0();
      v35 = sub_257ECF4C0();
      v36 = [v33 localizedStringForKey:v34 value:0 table:v35];

      sub_257ECF500();
      v37 = [v32 mainBundle];
      sub_257ECC900();

      v38 = swift_allocObject();
      v39 = v131;
      v38[2] = v131;
      v38[3] = v22;
      v38[4] = v23;

      v40 = v31;
      v41 = v39;
      v42 = sub_257ECFF90();
      v43 = v135[12];
      v44 = v135[13];
      v139[0] = v135[11];
      v139[1] = v43;
      v139[2] = v44;
      MEMORY[0x28223BE20](v42);

      sub_257ECFD50();

      v45 = v138[0];
      if (*(v138[0] + 16))
      {
        v46 = sub_257C03F6C(v22, v23);
        v48 = v47;

        if (v48)
        {
          v49 = (*(v45 + 56) + 296 * v46);
          memcpy(v138, v49, sizeof(v138));
          memmove(v139, v49, 0x128uLL);
          sub_257C09C58(v138, v137);

          CGSizeMake(v139);
          goto LABEL_25;
        }
      }

      else
      {
      }

      sub_257C10998(v138);
      memcpy(v139, v138, sizeof(v139));
LABEL_25:
      v15 = v135;
      memcpy(v138, v139, sizeof(v138));
      if (sub_257C108C4(v138) == 1)
      {
        memcpy(v137, v139, sizeof(v137));
        sub_257C109C8(v137);
        v50 = 0;
      }

      else
      {
        v50 = LOBYTE(v139[0]);
        memcpy(v137, v139, sizeof(v137));
        sub_257C109C8(v137);
      }

      [v42 setState_];
      v51 = v42;
      MEMORY[0x259C72300]();
      if (*((v142 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v142 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_257ECF830();
      }

      sub_257ECF860();

      if (!v133)
      {
        v52 = v142;

        goto LABEL_34;
      }

      --v133;
    }
  }

  v52 = MEMORY[0x277D84F90];
LABEL_34:
  v132 = v52;
  if (v52 >> 62)
  {
    sub_257BD2C2C(0, &unk_281543F80);

    sub_257ED0420();
  }

  else
  {

    sub_257ED0660();
    sub_257BD2C2C(0, &unk_281543F80);
  }

  v133 = sub_257BD2C2C(0, qword_281543E10);
  v134 = sub_257ECFEA0();
  v53 = sub_257ECF4C0();
  v124 = objc_opt_self();
  v54 = [v124 systemImageNamed_];

  v55 = sub_257BD2C2C(0, &unk_281543D90);
  type metadata accessor for MAGUtilities();
  v56 = swift_getObjCClassFromMetadata();
  v127 = objc_opt_self();
  ObjCClassFromMetadata = v56;
  v57 = [v127 bundleForClass_];
  v58 = sub_257ECF4C0();
  v59 = sub_257ECF4C0();
  v60 = [v57 localizedStringForKey:v58 value:0 table:v59];

  sub_257ECF500();
  v61 = swift_allocObject();
  v62 = v131;
  *(v61 + 16) = v131;
  v63 = v62;
  v64 = v54;
  v125 = v55;
  v65 = sub_257ECFF90();
  v66 = v65;
  if (!v126)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430);
    v78 = swift_allocObject();
    *(v78 + 16) = xmmword_257ED9BF0;
    *(v78 + 32) = v66;
    v79 = v66;
    v80 = sub_257ECFEA0();
    v81 = sub_257D83270();
    [v81 setMenu_];
    v82 = v63;
    v77 = v64;
    v83 = v134;
    goto LABEL_52;
  }

  v129 = v65;
  v130 = v63;
  v131 = v64;
  v67 = swift_beginAccess();
  v68 = v15[16];
  v69 = v15[17];
  v70 = v15[18];
  v141[0] = v15[15];
  v141[1] = v68;
  v141[2] = v69;
  v141[3] = v70;
  MEMORY[0x28223BE20](v67);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D70);
  sub_257ECFD50();

  v71 = v139[1];
  if (!v139[1])
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430);
    v84 = swift_allocObject();
    *(v84 + 16) = xmmword_257ED9BE0;
    v66 = v129;
    v83 = v134;
    *(v84 + 32) = v129;
    *(v84 + 40) = v83;
    v85 = v66;
    v86 = v83;
    v80 = sub_257ECFEA0();
    v82 = v130;
    v81 = sub_257D83270();
    [v81 setMenu_];
    v77 = v131;
    goto LABEL_52;
  }

  v72 = v139[0];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (LOBYTE(v141[0]) != 1)
  {
    v77 = v131;
    goto LABEL_46;
  }

  v126 = v72;
  v123 = v71;
  v74 = v15[16];
  v75 = v15[17];
  v76 = v15[18];
  v141[0] = v15[15];
  v141[1] = v74;
  v141[2] = v75;
  v141[3] = v76;
  MEMORY[0x28223BE20](v73);

  sub_257ECFD50();

  v77 = v131;
  if (v139[1])
  {
    if (v139[0] == 0xD000000000000010 && v139[1] == 0x8000000257EFBEB0)
    {

      v15 = v135;
LABEL_46:
      v66 = v129;
      v82 = v130;

LABEL_47:

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430);
      v87 = swift_allocObject();
      *(v87 + 16) = xmmword_257ED9BE0;
      v83 = v134;
      *(v87 + 32) = v66;
      *(v87 + 40) = v83;
      v88 = v66;
      v89 = v83;
      v80 = sub_257ECFEA0();
      v81 = sub_257D83270();
      [v81 setMenu_];
      goto LABEL_52;
    }

    v90 = sub_257ED0640();

    if (v90)
    {
      v15 = v135;
      v66 = v129;
      v82 = v130;
      goto LABEL_47;
    }
  }

  else
  {
  }

  v91 = sub_257ECF4C0();
  v132 = [v124 systemImageNamed_];

  v92 = [v127 bundleForClass_];
  v93 = sub_257ECF4C0();
  v94 = sub_257ECF4C0();
  v95 = [v92 localizedStringForKey:v93 value:0 table:v94];

  sub_257ECF500();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F58E0);
  v96 = swift_allocObject();
  *(v96 + 16) = xmmword_257ED6D30;
  v97 = [v127 bundleForClass_];
  v98 = v123;
  v99 = sub_257ECF4C0();
  v100 = sub_257ECF4C0();
  v101 = [v97 localizedStringForKey:v99 value:0 table:v100];

  v102 = sub_257ECF500();
  v104 = v103;

  *(v96 + 56) = MEMORY[0x277D837D0];
  *(v96 + 64) = sub_257BFB13C();
  *(v96 + 32) = v102;
  *(v96 + 40) = v104;
  sub_257ECF540();

  v105 = swift_allocObject();
  v106 = v130;
  v107 = v126;
  v105[2] = v130;
  v105[3] = v107;
  v105[4] = v98;
  v108 = v106;
  v109 = v132;
  v110 = sub_257ECFF90();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430);
  v111 = swift_allocObject();
  *(v111 + 16) = xmmword_257EDED10;
  v66 = v129;
  *(v111 + 32) = v129;
  *(v111 + 40) = v110;
  v112 = v134;
  *(v111 + 48) = v134;
  v113 = v66;
  v132 = v110;
  v114 = v112;
  v80 = sub_257ECFEA0();
  v82 = v106;
  v77 = v131;
  v81 = sub_257D83270();
  [v81 setMenu_];

  v83 = v112;
  v15 = v135;
LABEL_52:

  v115 = v15 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__activityInstructionsDisplayed;
  v116 = swift_beginAccess();
  v117 = *(v115 + 1);
  v118 = v115[16];
  v139[0] = *v115;
  v139[1] = v117;
  LOBYTE(v139[2]) = v118;
  MEMORY[0x28223BE20](v116);

  sub_257ECFD50();

  v119 = LOBYTE(v138[0]);
  v120 = sub_257D83270();
  v121 = v120;
  if (v119 == 1)
  {
    [v120 setShowsMenuAsPrimaryAction_];
  }

  else
  {
    [v120 addTarget:v82 action:sel_didTapActivitiesButton_ forControlEvents:64];
  }

  sub_257D832D0();
}

uint64_t sub_257C7DAA8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v8 = swift_allocObject();
    v8[2] = a3;
    v8[3] = a4;
    v8[4] = v7;

    sub_257ECC3F0();
    sub_257D61CE8(a3, a4, 0, sub_257C7E064, v8);
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_257C7DBE4()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_257DF6348();

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_257C7DC40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_257DF6A74(a3, a4);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_257C7DD1C@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  *a1 = v3;
  return result;
}

uint64_t sub_257C7DD9C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECC3F0();
  return sub_257ECDD70();
}

uint64_t sub_257C7DF3C(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_257ED0210();
  }

  return sub_257ED0310();
}

uint64_t sub_257C7DFC8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_257D13000(*a1, a1[1], a1[2]);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

void sub_257C7E070()
{
  v1 = sub_257ECF120();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v13[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = swift_allocObject();
  *(v5 + 16) = v0;
  v6 = objc_allocWithZone(type metadata accessor for ActivityOnboardingViewController());
  v7 = v0;
  v8 = sub_257C32C80(sub_257C7E2D8, v5);
  v9 = [v7 navigationController];
  if (v9)
  {
    v10 = v9;
    [v9 presentViewController:v8 animated:1 completion:0];
  }

  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v11 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__activityInstructionsDisplayed;
  swift_beginAccess();
  v14 = 1;
  if (qword_2815447E0 != -1)
  {
    swift_once();
  }

  v12 = sub_257ECF110();
  MEMORY[0x28223BE20](v12);
  *&v13[-16] = &v14;
  *&v13[-8] = v11;
  sub_257ECFD40();
  (*(v2 + 8))(v4, v1);
  swift_endAccess();
}

uint64_t sub_257C7E2F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DetectedTextBlock();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_257C7E354(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DetectedTextBlock();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id sub_257C7E3BC(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC16MagnifierSupport8MFSlider_trackColor;
  *&v1[v4] = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.7 alpha:1.0];
  *&v1[OBJC_IVAR____TtC16MagnifierSupport8MFSlider_extraTouchInset] = 0xC020000000000000;
  v15.receiver = v1;
  v15.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v15, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_257ED9BF0;
  if ((a1 & 0x100000000) != 0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = *&a1;
  }

  v8 = objc_allocWithZone(MEMORY[0x277D76258]);
  v9 = v5;
  *&v10 = v7;
  *(v6 + 32) = [v8 initWithPosition:0 title:0 image:v10];
  v11 = objc_allocWithZone(MEMORY[0x277D76250]);
  sub_257C7EE4C();
  v12 = sub_257ECF7F0();

  v13 = [v11 initWithTicks:v12 behavior:2];

  [v9 _setSliderConfiguration_];
  sub_257C7E558();

  return v9;
}

void sub_257C7E558()
{
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_257ECF4C0();
  v4 = objc_opt_self();
  v24 = [v4 imageNamed:v3 inBundle:v2];

  if (v24)
  {
    v5 = [v24 CGImage];
    if (v5)
    {

      v6 = [v24 CGImage];
      if (!v6)
      {
        __break(1u);
        return;
      }

      v7 = v6;
      [v24 scale];
      v9 = v8 * 1.1;
      v10 = [v24 imageOrientation];
      v11 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage:v7 scale:v10 orientation:v9];

      v12 = v11;
      [v0 setThumbImage:v12 forState:0];
      [v0 setThumbImage:v12 forState:4];
      [v0 setThumbImage:v12 forState:1];

      v13 = sub_257ECF4C0();
      v14 = [v4 systemImageNamed_];

      if (v14)
      {
        v15 = [objc_opt_self() configurationWithPointSize:5 weight:2 scale:25.0];
        v16 = [v14 imageByApplyingSymbolConfiguration_];
      }

      else
      {
        v16 = 0;
      }

      [v0 setMinimumValueImage_];

      v18 = sub_257ECF4C0();
      v19 = [v4 systemImageNamed_];

      if (v19)
      {
        v20 = [objc_opt_self() configurationWithPointSize:5 weight:2 scale:25.0];
        v21 = [v19 imageByApplyingSymbolConfiguration_];
      }

      else
      {
        v21 = 0;
      }

      [v0 setMaximumValueImage_];

      v22 = *&v0[OBJC_IVAR____TtC16MagnifierSupport8MFSlider_trackColor];
      [v0 setMinimumTrackTintColor_];
      [v0 setMaximumTrackTintColor_];
      v23 = [objc_opt_self() whiteColor];
      [v0 setTintColor_];

      v17 = v23;
    }

    else
    {
      v17 = v24;
    }
  }
}

uint64_t sub_257C7EA44(void *a1)
{
  [a1 locationInView_];
  v48 = v3;
  v49 = v2;
  [v1 bounds];
  [v1 minimumValueImageRectForBounds_];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [v1 bounds];
  [v1 maximumValueImageRectForBounds_];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v53.origin.x = v5;
  v53.origin.y = v7;
  v47 = v9;
  v53.size.width = v9;
  v53.size.height = v11;
  v54 = CGRectInset(v53, -8.0, -8.0);
  x = v54.origin.x;
  y = v54.origin.y;
  width = v54.size.width;
  height = v54.size.height;
  v54.origin.x = v13;
  v54.origin.y = v15;
  v46 = v17;
  v54.size.width = v17;
  v54.size.height = v19;
  v55 = CGRectInset(v54, -8.0, -8.0);
  v24 = v55.origin.x;
  v25 = v55.origin.y;
  v26 = v55.size.width;
  v27 = v55.size.height;
  v55.origin.x = x;
  v55.origin.y = y;
  v55.size.width = width;
  v55.size.height = height;
  v50.x = v49;
  v50.y = v48;
  if (CGRectContainsPoint(v55, v50))
  {
    return 3;
  }

  v56.origin.x = v24;
  v56.origin.y = v25;
  v56.size.width = v26;
  v56.size.height = v27;
  v51.x = v49;
  v51.y = v48;
  if (CGRectContainsPoint(v56, v51))
  {
    return 4;
  }

  [v1 bounds];
  v58 = CGRectInset(v57, 0.0, -8.0);
  v52.x = v49;
  v52.y = v48;
  result = CGRectContainsPoint(v58, v52);
  if (result)
  {
    [v1 bounds];
    v30 = v29;
    v32 = v31;
    v34 = v33 - (v47 + v46);
    v36 = v47 + v35;
    [v1 value];
    v38 = v37;
    [v1 minimumValue];
    v40 = v38 - v39;
    [v1 maximumValue];
    v42 = v41;
    [v1 minimumValue];
    v44 = v34 * (v40 / (v42 - v43));
    if ([v1 effectiveUserInterfaceLayoutDirection] == 1)
    {
      v59.origin.x = v36;
      v59.origin.y = v30;
      v59.size.width = v34;
      v59.size.height = v32;
      v45 = CGRectGetMaxX(v59) - v44;
    }

    else
    {
      v45 = v36 + v44;
    }

    if (CGFAbs(v45 - v49) > 40.0)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }

  return result;
}

unint64_t sub_257C7EE4C()
{
  result = qword_27F8F6CF8;
  if (!qword_27F8F6CF8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F8F6CF8);
  }

  return result;
}

BOOL sub_257C7EE98(void *a1)
{
  v2 = sub_257C7EA44(a1);
  if (v2 <= 2)
  {
    return v2 >= 2;
  }

  if (v2 == 3)
  {
    [v1 value];
    v5 = roundf(v4 * 10.0) / 10.0;
    [v1 maximumValue];
    v7 = v6;
    [v1 minimumValue];
    v9 = v5 + ((v7 - v8) * -0.1);
    [v1 minimumValue];
    if (v9 > *&v10)
    {
      *&v10 = v9;
    }
  }

  else
  {
    [v1 value];
    v12 = roundf(v11 * 10.0) / 10.0;
    [v1 maximumValue];
    v14 = v13;
    [v1 minimumValue];
    v16 = v12 + ((v14 - v15) * 0.1);
    [v1 maximumValue];
    if (*&v10 >= v16)
    {
      *&v10 = v16;
    }
  }

  [v1 setValue:1 animated:v10];
  [v1 sendActionsForControlEvents_];
  return 0;
}

void *sub_257C7EFF8()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC16MagnifierSupport20ControlContainerView_primaryButtonRow) + OBJC_IVAR____TtC16MagnifierSupport13ButtonRowBase_buttons);
  v2 = *(*(v0 + OBJC_IVAR____TtC16MagnifierSupport20ControlContainerView_featureTrayButtonRow) + OBJC_IVAR____TtC16MagnifierSupport13ButtonRowBase_buttons);
  v3 = *(v1 + 16);
  v4 = *(MEMORY[0x277D84F90] + 16);
  v5 = v4 + v3;
  v6 = __OFADD__(v4, v3);

  if (v6)
  {
    goto LABEL_32;
  }

  v8 = MEMORY[0x277D84F90];
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v8[3] >> 1)
  {
    if (*(v1 + 16))
    {
LABEL_8:
      if ((v8[3] >> 1) - v8[2] < v3)
      {
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8FBBC0);
      swift_arrayInitWithCopy();

      v9 = v8[2];
      if (v3)
      {
        v10 = __OFADD__(v9, v3);
        v9 += v3;
        if (v10)
        {
          goto LABEL_35;
        }

        v8[2] = v9;
      }

      goto LABEL_18;
    }
  }

  else
  {
    if (v4 <= v5)
    {
      v11 = v4 + v3;
    }

    else
    {
      v11 = v4;
    }

    result = sub_257BFD91C(result, v11, 1, MEMORY[0x277D84F90]);
    v8 = result;
    if (*(v1 + 16))
    {
      goto LABEL_8;
    }
  }

  if (v3)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v9 = v8[2];
LABEL_18:
  v12 = *(v2 + 16);
  v13 = v9 + v12;
  if (__OFADD__(v9, v12))
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v13 <= v8[3] >> 1)
  {
    if (*(v2 + 16))
    {
      goto LABEL_22;
    }

    goto LABEL_30;
  }

  if (v9 <= v13)
  {
    v16 = v9 + v12;
  }

  else
  {
    v16 = v9;
  }

  result = sub_257BFD91C(result, v16, 1, v8);
  v8 = result;
  if (!*(v2 + 16))
  {
LABEL_30:

    if (!v12)
    {
      goto LABEL_31;
    }

    goto LABEL_33;
  }

LABEL_22:
  if ((v8[3] >> 1) - v8[2] < v12)
  {
    goto LABEL_34;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8FBBC0);
  swift_arrayInitWithCopy();

  if (!v12)
  {
LABEL_31:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6D18);
    swift_arrayDestroy();
    v17 = sub_257EB7770(v8);

    return v17;
  }

  v14 = v8[2];
  v10 = __OFADD__(v14, v12);
  v15 = v14 + v12;
  if (!v10)
  {
    v8[2] = v15;
    goto LABEL_31;
  }

LABEL_35:
  __break(1u);
  return result;
}

char *sub_257C7F260(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = OBJC_IVAR____TtC16MagnifierSupport20ControlContainerView_buttonMap;
  *&v5[v11] = sub_257BE98E4(MEMORY[0x277D84F90]);
  v12 = OBJC_IVAR____TtC16MagnifierSupport20ControlContainerView_primaryButtonRow;
  v13 = type metadata accessor for UnifiedButtonRow();
  v14 = objc_allocWithZone(v13);
  *&v5[v12] = sub_257E8A7CC(0);
  v15 = OBJC_IVAR____TtC16MagnifierSupport20ControlContainerView_featureTrayButtonRow;
  v16 = objc_allocWithZone(v13);
  *&v5[v15] = sub_257E8A7CC(1);
  v20.receiver = v5;
  v20.super_class = ObjectType;
  v17 = objc_msgSendSuper2(&v20, sel_initWithFrame_, a1, a2, a3, a4);
  sub_257C7F820();
  sub_257C7F9D0(0);
  [v17 addSubview_];
  [v17 addSubview_];
  sub_257C7F3E4();
  v18 = [objc_opt_self() defaultCenter];
  [v18 addObserver:v17 selector:sel_deviceOrientationDidChange_ name:*MEMORY[0x277D76878] object:0];

  return v17;
}

void sub_257C7F3E4()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport20ControlContainerView_featureTrayButtonRow;
  [*&v0[OBJC_IVAR____TtC16MagnifierSupport20ControlContainerView_featureTrayButtonRow] setTranslatesAutoresizingMaskIntoConstraints_];
  v2 = *&v0[OBJC_IVAR____TtC16MagnifierSupport20ControlContainerView_primaryButtonRow];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  v3 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257EDED80;
  v5 = [v2 topAnchor];
  v6 = [v0 topAnchor];
  v7 = [v5 constraintEqualToAnchor_];

  *(v4 + 32) = v7;
  v8 = [v2 leadingAnchor];
  v9 = [v0 leadingAnchor];
  v10 = [v8 constraintEqualToAnchor:v9 constant:0.0];

  *(v4 + 40) = v10;
  v11 = [v2 trailingAnchor];
  v12 = [v0 trailingAnchor];
  v13 = [v11 constraintEqualToAnchor:v12 constant:-0.0];

  *(v4 + 48) = v13;
  v14 = [*&v0[v1] leadingAnchor];
  v15 = [v0 leadingAnchor];
  v16 = [v14 constraintEqualToAnchor:v15 constant:0.0];

  *(v4 + 56) = v16;
  v17 = [*&v0[v1] trailingAnchor];
  v18 = [v0 trailingAnchor];
  v19 = [v17 constraintEqualToAnchor:v18 constant:-0.0];

  *(v4 + 64) = v19;
  v20 = [*&v0[v1] bottomAnchor];
  v21 = [v0 bottomAnchor];
  v22 = [v20 constraintEqualToAnchor_];

  *(v4 + 72) = v22;
  sub_257C80FFC();
  v23 = sub_257ECF7F0();

  [v3 activateConstraints_];
}

void sub_257C7F820()
{
  v1 = sub_257BE98E4(MEMORY[0x277D84F90]);
  v2 = OBJC_IVAR____TtC16MagnifierSupport20ControlContainerView_buttonMap;
  swift_beginAccess();
  *(v0 + v2) = v1;

  v3 = byte_2869037B0;
  sub_257C800E0(&v3, v0);
  v3 = byte_2869037B1;
  sub_257C800E0(&v3, v0);
  v3 = byte_2869037B2;
  sub_257C800E0(&v3, v0);
  v3 = byte_2869037B3;
  sub_257C800E0(&v3, v0);
  v3 = byte_2869037B4;
  sub_257C800E0(&v3, v0);
  v3 = byte_2869037B5;
  sub_257C800E0(&v3, v0);
  v3 = byte_2869037B6;
  sub_257C800E0(&v3, v0);
  v3 = byte_2869037B7;
  sub_257C800E0(&v3, v0);
  v3 = byte_2869037B8;
  sub_257C800E0(&v3, v0);
  v3 = byte_2869037B9;
  sub_257C800E0(&v3, v0);
  v3 = byte_2869037BA;
  sub_257C800E0(&v3, v0);
  v3 = byte_2869037BB;
  sub_257C800E0(&v3, v0);
  v3 = byte_2869037BC;
  sub_257C800E0(&v3, v0);
  v3 = byte_2869037BD;
  sub_257C800E0(&v3, v0);
  v3 = byte_2869037BE;
  sub_257C800E0(&v3, v0);
  v3 = byte_2869037BF;
  sub_257C800E0(&v3, v0);
}

void sub_257C7F9D0(char a1)
{
  v2 = v1;
  if (qword_281544FE0 != -1)
  {
    goto LABEL_40;
  }

  while (1)
  {
    v3 = qword_281548348;
    v4 = (qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__primaryControls);
    swift_beginAccess();
    v5 = v4[1];
    v6 = v4[2];
    aBlock = *v4;
    v64 = v5;
    v65 = v6;
    v7 = qword_2815447E0;

    if (v7 != -1)
    {
      v8 = swift_once();
    }

    MEMORY[0x28223BE20](v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F70B0);
    sub_257ECFD50();

    v9 = *(v70 + 16);
    if (v9)
    {
      v10 = OBJC_IVAR____TtC16MagnifierSupport20ControlContainerView_buttonMap;
      v11 = (v70 + 32);
      v12 = MEMORY[0x277D84F90];
      do
      {
        v14 = *v11++;
        v13 = v14;
        swift_beginAccess();
        v15 = *&v2[v10];
        if (*(v15 + 16) && (v16 = sub_257C040E4(v13), (v17 & 1) != 0))
        {
          v61 = *(*(v15 + 56) + 16 * v16);
          swift_endAccess();
          v18 = v61;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v12 = sub_257BFD91C(0, v12[2] + 1, 1, v12);
          }

          v20 = v12[2];
          v19 = v12[3];
          if (v20 >= v19 >> 1)
          {
            v12 = sub_257BFD91C((v19 > 1), v20 + 1, 1, v12);
          }

          v12[2] = v20 + 1;
          *&v12[2 * v20 + 4] = v61;
        }

        else
        {
          swift_endAccess();
        }

        --v9;
      }

      while (v9);
    }

    else
    {
      v12 = MEMORY[0x277D84F90];
    }

    v21 = (v3 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__secondaryControls);
    v22 = swift_beginAccess();
    v23 = v21[1];
    v58 = v21;
    v24 = v21[2];
    aBlock = *v21;
    v64 = v23;
    v65 = v24;
    MEMORY[0x28223BE20](v22);

    sub_257ECFD50();
    v57 = 0;

    v25 = *(v69 + 16);
    if (v25)
    {
      v26 = OBJC_IVAR____TtC16MagnifierSupport20ControlContainerView_buttonMap;
      v27 = (v69 + 32);
      v28 = MEMORY[0x277D84F90];
      do
      {
        v30 = *v27++;
        v29 = v30;
        swift_beginAccess();
        v31 = *&v2[v26];
        if (*(v31 + 16) && (v32 = sub_257C040E4(v29), (v33 & 1) != 0))
        {
          v62 = *(*(v31 + 56) + 16 * v32);
          swift_endAccess();
          v34 = v62;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v28 = sub_257BFD91C(0, v28[2] + 1, 1, v28);
          }

          v36 = v28[2];
          v35 = v28[3];
          if (v36 >= v35 >> 1)
          {
            v28 = sub_257BFD91C((v35 > 1), v36 + 1, 1, v28);
          }

          v28[2] = v36 + 1;
          *&v28[2 * v36 + 4] = v62;
        }

        else
        {
          swift_endAccess();
        }

        --v25;
      }

      while (v25);
    }

    else
    {
      v28 = MEMORY[0x277D84F90];
    }

    v37 = sub_257C7EFF8();
    v38 = v37;
    v59 = v28;
    if (v37 >> 62)
    {
      break;
    }

    v39 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v39)
    {
      goto LABEL_42;
    }

LABEL_30:
    v40 = 0;
    while (1)
    {
      if ((v38 & 0xC000000000000001) != 0)
      {
        v41 = MEMORY[0x259C72E20](v40, v38);
      }

      else
      {
        if (v40 >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_39;
        }

        v41 = *(v38 + 8 * v40 + 32);
      }

      v42 = v41;
      v43 = v40 + 1;
      if (__OFADD__(v40, 1))
      {
        break;
      }

      [v41 setAlpha_];
      [v42 removeFromSuperview];

      ++v40;
      if (v43 == v39)
      {
        goto LABEL_42;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    swift_once();
  }

  v39 = sub_257ED0210();
  if (v39)
  {
    goto LABEL_30;
  }

LABEL_42:

  sub_257E8A5B8(v12);

  v45 = OBJC_IVAR____TtC16MagnifierSupport20ControlContainerView_featureTrayButtonRow;
  v46 = v58[1];
  v47 = v58[2];
  aBlock = *v58;
  v64 = v46;
  v65 = v47;
  MEMORY[0x28223BE20](v44);
  v49 = v48;

  sub_257ECFD50();

  v50 = *(v69 + 16);

  v49[OBJC_IVAR____TtC16MagnifierSupport16UnifiedButtonRow_style] = v50 > 2;

  v51 = *&v2[v45];
  sub_257E8A5B8(v59);

  if (a1)
  {
    v52 = 0.3;
  }

  else
  {
    v52 = 0.0;
  }

  v53 = objc_opt_self();
  v54 = swift_allocObject();
  *(v54 + 16) = v2;
  v67 = sub_257C80BCC;
  v68 = v54;
  aBlock = MEMORY[0x277D85DD0];
  v64 = 1107296256;
  v65 = sub_257D231C0;
  v66 = &block_descriptor_15;
  v55 = _Block_copy(&aBlock);
  v56 = v2;

  [v53 animateWithDuration:0x10000 delay:v55 options:0 animations:v52 completion:0.0];
  _Block_release(v55);
}

void sub_257C800E0(unsigned __int8 *a1, uint64_t a2)
{
  v3 = *a1;
  switch(*a1)
  {
    case 3u:
      v46[0] = 3;
      v4 = objc_allocWithZone(type metadata accessor for ScrubberButton());
      v5 = sub_257D30B64(v46, &type metadata for LayoutConstants.CommonButtonRow, &off_28690AB80);
      v6 = OBJC_IVAR____TtC16MagnifierSupport20ControlContainerView_buttonMap;
      swift_beginAccess();
      v7 = v5;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v45 = *(a2 + v6);
      *(a2 + v6) = 0x8000000000000000;
      v9 = &off_28690D558;
      v10 = v7;
      v11 = 3;
      break;
    case 4u:
      if (qword_281544FE0 != -1)
      {
        swift_once();
      }

      v28 = sub_257ECF4C0();
      v29 = MGGetBoolAnswer();

      if (v29)
      {
        v46[0] = 4;
        v30 = objc_allocWithZone(type metadata accessor for SliderButton());
        v7 = sub_257D49560(v46, &type metadata for LayoutConstants.CommonButtonRow, &off_28690AB80);
        v31 = v7;
        v32 = &off_28690E098;
      }

      else
      {
        v32 = 0;
        v7 = 0;
      }

      swift_beginAccess();
      sub_257CBA13C(v7, v32, 4);
      goto LABEL_38;
    case 5u:
      if (qword_27F8F4618 != -1)
      {
        swift_once();
      }

      if (byte_27F8F78A0 != 1)
      {
        return;
      }

      v46[0] = 5;
      v22 = objc_allocWithZone(type metadata accessor for ToggleButton());
      v23 = sub_257CA18EC(v46, &type metadata for LayoutConstants.CommonButtonRow, &off_28690AB80);
      v6 = OBJC_IVAR____TtC16MagnifierSupport20ControlContainerView_buttonMap;
      swift_beginAccess();
      v7 = v23;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v45 = *(a2 + v6);
      *(a2 + v6) = 0x8000000000000000;
      v9 = &off_28690A770;
      v10 = v7;
      v11 = 5;
      break;
    case 6u:
      v46[0] = 6;
      v24 = objc_allocWithZone(type metadata accessor for ToggleButton());
      v25 = sub_257CA18EC(v46, &type metadata for LayoutConstants.CommonButtonRow, &off_28690AB80);
      v6 = OBJC_IVAR____TtC16MagnifierSupport20ControlContainerView_buttonMap;
      swift_beginAccess();
      v7 = v25;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v45 = *(a2 + v6);
      *(a2 + v6) = 0x8000000000000000;
      v9 = &off_28690A770;
      v10 = v7;
      v11 = 6;
      break;
    case 7u:
      v46[0] = 7;
      v14 = objc_allocWithZone(type metadata accessor for MenuButton());
      sub_257CFA1E8(v46, &type metadata for LayoutConstants.CommonButtonRow, &off_28690AB80);
      v16 = v15;
      v6 = OBJC_IVAR____TtC16MagnifierSupport20ControlContainerView_buttonMap;
      swift_beginAccess();
      v7 = v16;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v45 = *(a2 + v6);
      *(a2 + v6) = 0x8000000000000000;
      v9 = &off_28690C2B8;
      v10 = v7;
      v11 = 7;
      break;
    case 8u:
      v46[0] = 8;
      v33 = objc_allocWithZone(type metadata accessor for SegmentedButton());
      v34 = sub_257DBA4F4(v46, &type metadata for LayoutConstants.CommonButtonRow, &off_28690AB80);
      v6 = OBJC_IVAR____TtC16MagnifierSupport20ControlContainerView_buttonMap;
      swift_beginAccess();
      v7 = v34;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v45 = *(a2 + v6);
      *(a2 + v6) = 0x8000000000000000;
      v9 = &off_286910C18;
      v10 = v7;
      v11 = 8;
      break;
    case 9u:
      if (qword_27F8F4618 != -1)
      {
        swift_once();
      }

      if (byte_27F8F78A0 != 1)
      {
        return;
      }

      v46[0] = 9;
      v39 = objc_allocWithZone(type metadata accessor for ToggleButton());
      v40 = sub_257CA18EC(v46, &type metadata for LayoutConstants.CommonButtonRow, &off_28690AB80);
      v6 = OBJC_IVAR____TtC16MagnifierSupport20ControlContainerView_buttonMap;
      swift_beginAccess();
      v7 = v40;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v45 = *(a2 + v6);
      *(a2 + v6) = 0x8000000000000000;
      v9 = &off_28690A770;
      v10 = v7;
      v11 = 9;
      break;
    case 0xAu:
      if (qword_27F8F4618 != -1)
      {
        swift_once();
      }

      if (byte_27F8F78A0 != 1)
      {
        return;
      }

      v46[0] = 10;
      v26 = objc_allocWithZone(type metadata accessor for ToggleButton());
      v27 = sub_257CA18EC(v46, &type metadata for LayoutConstants.CommonButtonRow, &off_28690AB80);
      v6 = OBJC_IVAR____TtC16MagnifierSupport20ControlContainerView_buttonMap;
      swift_beginAccess();
      v7 = v27;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v45 = *(a2 + v6);
      *(a2 + v6) = 0x8000000000000000;
      v9 = &off_28690A770;
      v10 = v7;
      v11 = 10;
      break;
    case 0xBu:
      if (qword_27F8F4618 != -1)
      {
        swift_once();
      }

      if (byte_27F8F78A0 != 1)
      {
        return;
      }

      v46[0] = 11;
      v43 = objc_allocWithZone(type metadata accessor for ToggleButton());
      v44 = sub_257CA18EC(v46, &type metadata for LayoutConstants.CommonButtonRow, &off_28690AB80);
      v6 = OBJC_IVAR____TtC16MagnifierSupport20ControlContainerView_buttonMap;
      swift_beginAccess();
      v7 = v44;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v45 = *(a2 + v6);
      *(a2 + v6) = 0x8000000000000000;
      v9 = &off_28690A770;
      v10 = v7;
      v11 = 11;
      break;
    case 0xCu:
      v46[0] = 12;
      v20 = objc_allocWithZone(type metadata accessor for ToggleButton());
      v21 = sub_257CA18EC(v46, &type metadata for LayoutConstants.CommonButtonRow, &off_28690AB80);
      v6 = OBJC_IVAR____TtC16MagnifierSupport20ControlContainerView_buttonMap;
      swift_beginAccess();
      v7 = v21;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v45 = *(a2 + v6);
      *(a2 + v6) = 0x8000000000000000;
      v9 = &off_28690A770;
      v10 = v7;
      v11 = 12;
      break;
    case 0xDu:
      if (qword_27F8F4618 != -1)
      {
        swift_once();
      }

      if (byte_27F8F78A0 != 1)
      {
        return;
      }

      v46[0] = 13;
      v41 = objc_allocWithZone(type metadata accessor for ToggleButton());
      v42 = sub_257CA18EC(v46, &type metadata for LayoutConstants.CommonButtonRow, &off_28690AB80);
      v6 = OBJC_IVAR____TtC16MagnifierSupport20ControlContainerView_buttonMap;
      swift_beginAccess();
      v7 = v42;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v45 = *(a2 + v6);
      *(a2 + v6) = 0x8000000000000000;
      v9 = &off_28690A770;
      v10 = v7;
      v11 = 13;
      break;
    case 0xEu:
      if (qword_27F8F4618 != -1)
      {
        swift_once();
      }

      if (byte_27F8F78A0 != 1)
      {
        return;
      }

      v46[0] = 14;
      v12 = objc_allocWithZone(type metadata accessor for ToggleButton());
      v13 = sub_257CA18EC(v46, &type metadata for LayoutConstants.CommonButtonRow, &off_28690AB80);
      v6 = OBJC_IVAR____TtC16MagnifierSupport20ControlContainerView_buttonMap;
      swift_beginAccess();
      v7 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v45 = *(a2 + v6);
      *(a2 + v6) = 0x8000000000000000;
      v9 = &off_28690A770;
      v10 = v7;
      v11 = 14;
      break;
    case 0xFu:
      v46[0] = 15;
      v17 = objc_allocWithZone(type metadata accessor for MenuButton());
      sub_257CFA1E8(v46, &type metadata for LayoutConstants.CommonButtonRow, &off_28690AB80);
      v19 = v18;
      v6 = OBJC_IVAR____TtC16MagnifierSupport20ControlContainerView_buttonMap;
      swift_beginAccess();
      v7 = v19;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v45 = *(a2 + v6);
      *(a2 + v6) = 0x8000000000000000;
      v9 = &off_28690C2B8;
      v10 = v7;
      v11 = 15;
      break;
    default:
      v46[0] = *a1;
      v35 = objc_allocWithZone(type metadata accessor for SliderButton());
      v36 = sub_257D49560(v46, &type metadata for LayoutConstants.CommonButtonRow, &off_28690AB80);
      v37 = OBJC_IVAR____TtC16MagnifierSupport20ControlContainerView_buttonMap;
      swift_beginAccess();
      v7 = v36;
      v38 = swift_isUniquelyReferenced_nonNull_native();
      v45 = *(a2 + v37);
      *(a2 + v37) = 0x8000000000000000;
      sub_257C80BF4(v7, v3, v38, &v45, &off_28690E098);
      *(a2 + v37) = v45;
      goto LABEL_38;
  }

  sub_257C80BF4(v10, v11, isUniquelyReferenced_nonNull_native, &v45, v9);
  *(a2 + v6) = v45;
LABEL_38:
  swift_endAccess();
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_257ECC3F0();
}

void sub_257C80BF4(uint64_t a1, uint64_t a2, char a3, void *a4, uint64_t a5)
{
  v10 = *a4;
  v11 = sub_257C040E4(a2);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 < v16 || (a3 & 1) != 0)
    {
      sub_257EC4E74(v16, a3 & 1);
      v11 = sub_257C040E4(a2);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        sub_257ED06C0();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_257C08F9C();
      v11 = v19;
    }
  }

  v21 = *a4;
  if ((v17 & 1) == 0)
  {
    v21[(v11 >> 6) + 8] |= 1 << v11;
    *(v21[6] + v11) = a2;
    v24 = (v21[7] + 16 * v11);
    *v24 = a1;
    v24[1] = a5;
    v25 = v21[2];
    v15 = __OFADD__(v25, 1);
    v26 = v25 + 1;
    if (!v15)
    {
      v21[2] = v26;
      return;
    }

    goto LABEL_15;
  }

  v22 = v21[7] + 16 * v11;
  v23 = *v22;
  *v22 = a1;
  *(v22 + 8) = a5;
}

void sub_257C80D54()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport20ControlContainerView_featureTrayButtonRow);
  v2 = objc_opt_self();
  v3 = v1;
  v4 = [v2 currentDevice];
  v5 = [v4 orientation];

  v6 = objc_opt_self();
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v5;
  v19 = sub_257C80FF4;
  v20 = v8;
  v15 = MEMORY[0x277D85DD0];
  v16 = 1107296256;
  v17 = sub_257D231C0;
  v18 = &block_descriptor_12_0;
  v9 = _Block_copy(&v15);

  _Block_release(v9);
  v10 = [v2 currentDevice];
  v11 = [v10 orientation];

  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = v11;
  v19 = sub_257C81050;
  v20 = v13;
  v15 = MEMORY[0x277D85DD0];
  v16 = 1107296256;
  v17 = sub_257D231C0;
  v18 = &block_descriptor_20_0;
  v14 = _Block_copy(&v15);

  _Block_release(v14);
}

unint64_t sub_257C80FFC()
{
  result = qword_281543EF0;
  if (!qword_281543EF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281543EF0);
  }

  return result;
}

void sub_257C8105C()
{
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = qword_2815447E0;

  if (v1 != -1)
  {
    v2 = swift_once();
  }

  MEMORY[0x28223BE20](v2);
  sub_257ECFD50();

  v19 = v0;
  if (v20 && v20 != 1)
  {
    goto LABEL_10;
  }

  v3 = sub_257ED0640();

  if ((v3 & 1) == 0)
  {
    MEMORY[0x28223BE20](v4);

    sub_257ECFD50();

    if (v20 && v20 == 1)
    {
LABEL_10:

      goto LABEL_13;
    }

    sub_257ED0640();
  }

LABEL_13:
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = objc_opt_self();
  v7 = [v6 bundleForClass_];
  v8 = sub_257ECF4C0();
  v9 = sub_257ECF4C0();
  v10 = [v7 localizedStringForKey:v8 value:0 table:v9];

  sub_257ECF500();

  MEMORY[0x259C72150](8236, 0xE200000000000000);

  v11 = [v6 bundleForClass_];
  v12 = sub_257ECF4C0();
  v13 = sub_257ECF4C0();
  v14 = [v11 localizedStringForKey:v12 value:0 table:v13];

  v15 = sub_257ECF500();
  v17 = v16;

  MEMORY[0x259C72150](v15, v17);

  v18 = sub_257ECF4C0();

  [v19 setAccessibilityLabel_];
}

id sub_257C817BC()
{
  [v0 addSubview_];
  [v0 setIsAccessibilityElement_];
  sub_257C8105C();
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_257ECF4C0();
  v4 = sub_257ECF4C0();
  v5 = [v2 localizedStringForKey:v3 value:0 table:v4];

  if (!v5)
  {
    sub_257ECF500();
    v5 = sub_257ECF4C0();
  }

  [v0 setAccessibilityHint_];

  return [v0 setAccessibilityRespondsToUserInteraction_];
}

void sub_257C81928()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC16MagnifierSupport9MFGrabber_backgroundView];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  v3 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257EDBE40;
  v5 = [v2 topAnchor];
  v6 = [v1 topAnchor];
  v7 = [v5 constraintEqualToAnchor:v6 constant:*MEMORY[0x277D77580] + -3.0];

  *(v4 + 32) = v7;
  v8 = [v2 bottomAnchor];
  v9 = [v1 bottomAnchor];
  v10 = [v8 constraintEqualToAnchor_];

  *(v4 + 40) = v10;
  v11 = [v2 centerXAnchor];
  v12 = [v1 centerXAnchor];
  v13 = [v11 constraintEqualToAnchor_];

  *(v4 + 48) = v13;
  v14 = [v2 leftAnchor];
  v15 = [v1 leftAnchor];
  v16 = [v14 constraintEqualToAnchor_];

  *(v4 + 56) = v16;
  sub_257C80FFC();
  v17 = sub_257ECF7F0();

  [v3 activateConstraints_];
}

void sub_257C81D24()
{
  ObjectType = swift_getObjectType();
  v2 = *&v0[OBJC_IVAR____TtC16MagnifierSupport9MFGrabber_backgroundView];
  v3 = [*&v2[OBJC_IVAR____TtC16MagnifierSupport13MFChevronView_chevronLayer] path];
  if (!v3)
  {
    goto LABEL_6;
  }

  v4 = v3;
  v5 = [objc_opt_self() sharedApplication];
  v6 = sub_257CA7574();

  if (!v6)
  {

LABEL_6:
    v9.receiver = v0;
    v9.super_class = ObjectType;
    objc_msgSendSuper2(&v9, sel_accessibilityFrame);
    return;
  }

  PathBoundingBox = CGPathGetPathBoundingBox(v4);
  [v2 convertRect:v6 toCoordinateSpace:{PathBoundingBox.origin.x, PathBoundingBox.origin.y, PathBoundingBox.size.width, PathBoundingBox.size.height}];
  v7 = [v0 superview];
  if (v7)
  {
    v8 = v7;
    [v7 bounds];
  }
}

uint64_t sub_257C81FEC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x656C6464696DLL;
  if (v2 != 1)
  {
    v3 = 0x6D6F74746F62;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 7368564;
  }

  if (v2)
  {
    v5 = 0xE600000000000000;
  }

  else
  {
    v5 = 0xE300000000000000;
  }

  v6 = 0x656C6464696DLL;
  if (*a2 != 1)
  {
    v6 = 0x6D6F74746F62;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 7368564;
  }

  if (*a2)
  {
    v8 = 0xE600000000000000;
  }

  else
  {
    v8 = 0xE300000000000000;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_257ED0640();
  }

  return v9 & 1;
}

uint64_t sub_257C820D8()
{
  sub_257ED07B0();
  sub_257ECF5D0();

  return sub_257ED0800();
}

uint64_t sub_257C8216C()
{
  sub_257ECF5D0();
}

uint64_t sub_257C821EC()
{
  sub_257ED07B0();
  sub_257ECF5D0();

  return sub_257ED0800();
}

uint64_t sub_257C8227C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_257C8247C();
  *a1 = result;
  return result;
}

void sub_257C822AC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 0x656C6464696DLL;
  if (v2 != 1)
  {
    v4 = 0x6D6F74746F62;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 7368564;
  }

  if (!v5)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

unint64_t sub_257C823C0()
{
  result = qword_27F8F6D28;
  if (!qword_27F8F6D28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F6D30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F6D28);
  }

  return result;
}

unint64_t sub_257C82428()
{
  result = qword_27F8F6D38;
  if (!qword_27F8F6D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F6D38);
  }

  return result;
}

uint64_t sub_257C8247C()
{
  v0 = sub_257ED04B0();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_257C824C8()
{
  result = qword_27F8F6D40;
  if (!qword_27F8F6D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F6D40);
  }

  return result;
}

double sub_257C82520(uint64_t a1, char a2)
{
  v4 = sub_257ECDA30();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 1) == 0 && (a1 - 1) < 4)
  {
    return dbl_257EDEF78[a1 - 1];
  }

  sub_257ECD470();
  v9 = sub_257ECDA20();
  v10 = sub_257ECFBE0();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_257BAC000, v9, v10, "Unable to get valid video rotation angle.", v11, 2u);
    MEMORY[0x259C74820](v11, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  return 0.0;
}

uint64_t static UIInterfaceOrientation.fromDeviceOrientation(_:)(uint64_t result)
{
  if ((result - 5) < 0xFFFFFFFFFFFFFFFCLL)
  {
    return 0;
  }

  return result;
}

void _sSo22UIInterfaceOrientationV16MagnifierSupportE6windowABvgZ_0()
{
  v0 = sub_257ECDA30();
  v43 = *(v0 - 8);
  v1 = MEMORY[0x28223BE20](v0);
  v40 = &v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v4 = &v40 - v3;
  v5 = [objc_opt_self() sharedApplication];
  v6 = [v5 connectedScenes];

  v7 = sub_257BD2C2C(0, &unk_281543DE0);
  sub_257C82BC4();
  v44 = v7;
  v8 = sub_257ECFA70();

  v9 = v8 & 0xC000000000000001;
  if ((v8 & 0xC000000000000001) != 0)
  {
    if (sub_257ED0210() < 2)
    {
      goto LABEL_3;
    }

LABEL_6:
    sub_257ECD470();

    v15 = sub_257ECDA20();
    v16 = sub_257ECFBE0();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v42 = v8 & 0xC000000000000001;
      v18 = v17;
      v19 = swift_slowAlloc();
      v47[0] = v19;
      *v18 = 136315138;
      v20 = sub_257ECFA80();
      v22 = sub_257BF1FC8(v20, v21, v47);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_257BAC000, v15, v16, "Unexpectedly had multiple scenes: %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x259C74820](v19, -1, -1);
      v23 = v18;
      v9 = v42;
      MEMORY[0x259C74820](v23, -1, -1);
    }

    (*(v43 + 8))(v4, v0);
    v41 = v0;
    if (v9)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  if (*(v8 + 16) >= 2)
  {
    goto LABEL_6;
  }

LABEL_3:
  v41 = v0;
  if (v9)
  {
LABEL_4:
    swift_unknownObjectRetain();
    sub_257ED01D0();
    sub_257ECFAA0();
    v11 = v47[0];
    v10 = v47[1];
    v13 = v47[2];
    v12 = v47[3];
    v14 = v47[4];
    goto LABEL_13;
  }

LABEL_9:
  v24 = -1 << *(v8 + 32);
  v10 = v8 + 56;
  v13 = ~v24;
  v25 = -v24;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  else
  {
    v26 = -1;
  }

  v14 = v26 & *(v8 + 56);

  v12 = 0;
  v11 = v8;
LABEL_13:
  v42 = v13;
  v27 = (v13 + 64) >> 6;
  if (v11 < 0)
  {
    goto LABEL_20;
  }

LABEL_14:
  v28 = v12;
  v29 = v14;
  v30 = v12;
  if (v14)
  {
LABEL_18:
    v31 = (v29 - 1) & v29;
    v32 = *(*(v11 + 48) + ((v30 << 9) | (8 * __clz(__rbit64(v29)))));
    if (v32)
    {
      while (1)
      {
        sub_257BD2C2C(0, &qword_27F8F6D48);
        if ([v32 isKindOfClass_])
        {
          break;
        }

        v12 = v30;
        v14 = v31;
        if ((v11 & 0x8000000000000000) == 0)
        {
          goto LABEL_14;
        }

LABEL_20:
        v33 = sub_257ED0230();
        if (v33)
        {
          v45 = v33;
          swift_dynamicCast();
          v32 = v46;
          v30 = v12;
          v31 = v14;
          if (v46)
          {
            continue;
          }
        }

        goto LABEL_25;
      }

      sub_257C02520();

      objc_opt_self();
      v39 = swift_dynamicCastObjCClass();
      if (v39)
      {
        [v39 interfaceOrientation];

        return;
      }
    }

    else
    {
LABEL_25:
      sub_257C02520();
    }

    v35 = v40;
    v34 = v41;
    sub_257ECD470();
    v36 = sub_257ECDA20();
    v37 = sub_257ECFBE0();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_257BAC000, v36, v37, "Unexpectedly had no window scene.", v38, 2u);
      MEMORY[0x259C74820](v38, -1, -1);
    }

    (*(v43 + 8))(v35, v34);
  }

  else
  {
    while (1)
    {
      v30 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v30 >= v27)
      {
        goto LABEL_25;
      }

      v29 = *(v10 + 8 * v30);
      ++v28;
      if (v29)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
  }
}

unint64_t sub_257C82BC4()
{
  result = qword_281543DD8;
  if (!qword_281543DD8)
  {
    sub_257BD2C2C(255, &unk_281543DE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281543DD8);
  }

  return result;
}

uint64_t sub_257C82C5C(void (*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(a3 + 16);
  result = MEMORY[0x277D84F90];
  if (v6)
  {
    v15 = MEMORY[0x277D84F90];
    sub_257ED0360();
    for (i = (a3 + 56); ; i += 4)
    {
      v10 = *(i - 2);
      v11 = *(i - 1);
      v12 = *i;
      v13[0] = *(i - 3);
      v13[1] = v10;
      v13[2] = v11;
      v13[3] = v12;

      a1(&v14, v13);
      if (v4)
      {
        break;
      }

      v4 = 0;

      sub_257ED0330();
      sub_257ED0370();
      sub_257ED0380();
      sub_257ED0340();
      if (!--v6)
      {
        return v15;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_257C82D88(uint64_t a1, float32x4_t a2)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v29 = MEMORY[0x277D84F90];
  sub_257BF2664(0, v2, 0);
  v3 = v29;
  v4 = a1 + 56;
  result = sub_257ED0190();
  v6 = result;
  v7 = a1;
  v8 = 0;
  v26 = v2;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v7 + 32))
  {
    v11 = v6 >> 6;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_21;
    }

    v28 = *(v7 + 36);
    v12 = v7;
    result = sub_257E4FDE8(a2);
    v14 = v3;
    v30 = v3;
    v15 = *(v3 + 16);
    v16 = *(v14 + 24);
    if (v15 >= v16 >> 1)
    {
      v24 = v13;
      result = sub_257BF2664((v16 > 1), v15 + 1, 1);
      v13 = v24;
      v14 = v30;
    }

    *(v14 + 16) = v15 + 1;
    *(v14 + 16 * v15 + 32) = v13;
    v9 = 1 << *(v12 + 32);
    if (v6 >= v9)
    {
      goto LABEL_22;
    }

    v17 = *(v4 + 8 * v11);
    if ((v17 & (1 << v6)) == 0)
    {
      goto LABEL_23;
    }

    v7 = v12;
    v3 = v14;
    if (v28 != *(v12 + 36))
    {
      goto LABEL_24;
    }

    v18 = v17 & (-2 << (v6 & 0x3F));
    if (v18)
    {
      v9 = __clz(__rbit64(v18)) | v6 & 0x7FFFFFFFFFFFFFC0;
      v10 = v26;
    }

    else
    {
      v19 = v11 << 6;
      v20 = v11 + 1;
      v21 = (a1 + 64 + 8 * v11);
      v10 = v26;
      while (v20 < (v9 + 63) >> 6)
      {
        v23 = *v21++;
        v22 = v23;
        v19 += 64;
        ++v20;
        if (v23)
        {
          result = sub_257C58A64(v6, v28, 0);
          v7 = a1;
          v9 = __clz(__rbit64(v22)) + v19;
          goto LABEL_4;
        }
      }

      result = sub_257C58A64(v6, v28, 0);
      v7 = a1;
    }

LABEL_4:
    ++v8;
    v6 = v9;
    if (v8 == v10)
    {
      return v3;
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
  return result;
}

uint64_t sub_257C82FF8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v26 = MEMORY[0x277D84F90];
  sub_257BF26A4(0, v1, 0);
  v2 = v26;
  v25 = a1 + 56;
  result = sub_257ED0190();
  v5 = result;
  v6 = 0;
  v24 = v1;
  while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(a1 + 32))
  {
    v9 = v5 >> 6;
    if ((*(v25 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
    {
      goto LABEL_21;
    }

    v10 = *(a1 + 36);
    result = sub_257ECF500();
    v13 = *(v26 + 16);
    v12 = *(v26 + 24);
    if (v13 >= v12 >> 1)
    {
      v22 = v11;
      v23 = result;
      sub_257BF26A4((v12 > 1), v13 + 1, 1);
      v11 = v22;
      result = v23;
    }

    *(v26 + 16) = v13 + 1;
    v14 = v26 + 16 * v13;
    *(v14 + 32) = result;
    *(v14 + 40) = v11;
    v7 = 1 << *(a1 + 32);
    if (v5 >= v7)
    {
      goto LABEL_22;
    }

    v15 = *(v25 + 8 * v9);
    if ((v15 & (1 << v5)) == 0)
    {
      goto LABEL_23;
    }

    if (v10 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v16 = v15 & (-2 << (v5 & 0x3F));
    if (v16)
    {
      v7 = __clz(__rbit64(v16)) | v5 & 0x7FFFFFFFFFFFFFC0;
      v8 = v24;
    }

    else
    {
      v17 = v9 << 6;
      v18 = v9 + 1;
      v8 = v24;
      v19 = (a1 + 64 + 8 * v9);
      while (v18 < (v7 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          result = sub_257C58A64(v5, v10, 0);
          v7 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      result = sub_257C58A64(v5, v10, 0);
    }

LABEL_4:
    ++v6;
    v5 = v7;
    if (v6 == v8)
    {
      return v2;
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
  return result;
}

uint64_t sub_257C8321C(void (*a1)(void *__return_ptr, __int128 *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v37 = a2;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v36 = MEMORY[0x277D84F90];
  sub_257BF26A4(0, v5, 0);
  v6 = v36;
  v8 = (a3 + 32);
  for (i = v5 - 1; ; --i)
  {
    v10 = v8[3];
    v11 = v8[1];
    v33 = v8[2];
    v34 = v10;
    v12 = v8[3];
    v35[0] = v8[4];
    *(v35 + 12) = *(v8 + 76);
    v13 = v8[1];
    v32[0] = *v8;
    v32[1] = v13;
    v28 = v33;
    v29 = v12;
    v30[0] = v8[4];
    *(v30 + 12) = *(v8 + 76);
    v26 = v32[0];
    v27 = v11;
    sub_257C58DDC(v32, &v21);
    a1(v31, &v26);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v23 = v28;
    v24 = v29;
    v25[0] = v30[0];
    *(v25 + 12) = *(v30 + 12);
    v21 = v26;
    v22 = v27;
    sub_257C58E38(&v21);
    v14 = v31[0];
    v15 = v31[1];
    v36 = v6;
    v17 = *(v6 + 16);
    v16 = *(v6 + 24);
    if (v17 >= v16 >> 1)
    {
      sub_257BF26A4((v16 > 1), v17 + 1, 1);
      v6 = v36;
    }

    *(v6 + 16) = v17 + 1;
    v18 = v6 + 16 * v17;
    *(v18 + 32) = v14;
    *(v18 + 40) = v15;
    if (!i)
    {
      return v6;
    }

    v8 += 6;
  }

  v23 = v28;
  v24 = v29;
  v25[0] = v30[0];
  *(v25 + 12) = *(v30 + 12);
  v21 = v26;
  v22 = v27;
  sub_257C58E38(&v21);

  __break(1u);
  return result;
}

uint64_t sub_257C833D4(void (*a1)(void *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v18 = MEMORY[0x277D84F90];
  sub_257BF26A4(0, v5, 0);
  v6 = v18;
  for (i = (a3 + 32); ; ++i)
  {
    v16 = *i;

    a1(v17, &v16);
    if (v4)
    {
      break;
    }

    v4 = 0;

    v10 = v17[0];
    v9 = v17[1];
    v18 = v6;
    v12 = *(v6 + 16);
    v11 = *(v6 + 24);
    if (v12 >= v11 >> 1)
    {
      sub_257BF26A4((v11 > 1), v12 + 1, 1);
      v6 = v18;
    }

    *(v6 + 16) = v12 + 1;
    v13 = v6 + 16 * v12;
    *(v13 + 32) = v10;
    *(v13 + 40) = v9;
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

id sub_257C834FC(uint64_t a1)
{
  v35 = sub_257ECCCF0();
  v3 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v5 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x277D84F90];
  if (!v6)
  {
    return v7;
  }

  v33 = v5;
  v29[1] = v1;
  v38 = MEMORY[0x277D84F90];
  sub_257BF2904(0, v6, 0);
  v7 = v38;
  v8 = a1 + 56;
  result = sub_257ED0190();
  v10 = result;
  v11 = 0;
  v34 = v3;
  v31 = v6;
  v32 = v3 + 32;
  v30 = a1 + 64;
  while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(a1 + 32))
  {
    v14 = v10 >> 6;
    if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
    {
      goto LABEL_23;
    }

    v15 = *(a1 + 36);
    v36 = v11;
    v37 = v15;
    v16 = a1;
    v17 = *(*(a1 + 48) + 80 * v10);
    result = [v17 identifier];
    if (!result)
    {
      goto LABEL_27;
    }

    v18 = result;
    v19 = v33;
    sub_257ECCCD0();

    v38 = v7;
    v21 = *(v7 + 16);
    v20 = *(v7 + 24);
    if (v21 >= v20 >> 1)
    {
      sub_257BF2904(v20 > 1, v21 + 1, 1);
      v7 = v38;
    }

    *(v7 + 16) = v21 + 1;
    result = (*(v34 + 32))(v7 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v21, v19, v35);
    v12 = 1 << *(v16 + 32);
    if (v10 >= v12)
    {
      goto LABEL_24;
    }

    v22 = *(v8 + 8 * v14);
    if ((v22 & (1 << v10)) == 0)
    {
      goto LABEL_25;
    }

    a1 = v16;
    if (v37 != *(v16 + 36))
    {
      goto LABEL_26;
    }

    v23 = v22 & (-2 << (v10 & 0x3F));
    if (v23)
    {
      v12 = __clz(__rbit64(v23)) | v10 & 0x7FFFFFFFFFFFFFC0;
      v13 = v36;
    }

    else
    {
      v24 = v14 << 6;
      v25 = v14 + 1;
      v26 = (v30 + 8 * v14);
      while (v25 < (v12 + 63) >> 6)
      {
        v28 = *v26++;
        v27 = v28;
        v24 += 64;
        ++v25;
        if (v28)
        {
          result = sub_257C58A64(v10, v37, 0);
          v12 = __clz(__rbit64(v27)) + v24;
          goto LABEL_20;
        }
      }

      result = sub_257C58A64(v10, v37, 0);
LABEL_20:
      v13 = v36;
    }

    v11 = v13 + 1;
    v10 = v12;
    if (v11 == v31)
    {
      return v7;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_257C83814(void (*a1)(__int128 *__return_ptr, char *), uint64_t a2, uint64_t a3)
{
  v35 = a1;
  v5 = sub_257ECCCF0();
  MEMORY[0x28223BE20](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a3 + 56;
  v10 = 1 << *(a3 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a3 + 56);
  v13 = (v10 + 63) >> 6;
  v33 = v6 + 16;
  v34 = v6;
  v36 = (v6 + 8);
  v43 = a3;

  v15 = 0;
  v32 = MEMORY[0x277D84F90];
LABEL_4:
  v16 = v15;
  if (!v12)
  {
    goto LABEL_6;
  }

  do
  {
    v15 = v16;
LABEL_9:
    (*(v34 + 16))(v8, *(v43 + 48) + *(v34 + 72) * (__clz(__rbit64(v12)) | (v15 << 6)), v5);
    v35(&v38, v8);
    if (v3)
    {
      (*v36)(v8, v5);

LABEL_19:

      return v32;
    }

    v12 &= v12 - 1;
    v17 = v5;
    (*v36)(v8, v5);
    v18 = v38;
    if (v38)
    {
      v31 = v39;
      v30 = v40;
      v29 = v41;
      v28 = v42;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_257BFD7D4(0, *(v32 + 2) + 1, 1, v32);
        v32 = result;
      }

      v20 = *(v32 + 2);
      v19 = *(v32 + 3);
      v21 = v20 + 1;
      if (v20 >= v19 >> 1)
      {
        v27 = v20 + 1;
        v26 = v20;
        result = sub_257BFD7D4((v19 > 1), v20 + 1, 1, v32);
        v21 = v27;
        v20 = v26;
        v32 = result;
      }

      v22 = v32;
      *(v32 + 2) = v21;
      v23 = &v22[80 * v20];
      *(v23 + 4) = v18;
      v24 = v30;
      *(v23 + 3) = v31;
      *(v23 + 4) = v24;
      v25 = v28;
      *(v23 + 5) = v29;
      *(v23 + 6) = v25;
      v5 = v17;
      goto LABEL_4;
    }

    v37[2] = v40;
    v37[3] = v41;
    v37[4] = v42;
    v37[0] = v38;
    v37[1] = v39;
    result = sub_257BE4084(v37, &qword_27F8F9C90);
    v16 = v15;
    v5 = v17;
  }

  while (v12);
LABEL_6:
  while (1)
  {
    v15 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v15 >= v13)
    {
      goto LABEL_19;
    }

    v12 = *(v9 + 8 * v15);
    ++v16;
    if (v12)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void *sub_257C83BA8(void (*a1)(uint64_t *__return_ptr, __int128 *), uint64_t a2, uint64_t a3)
{
  v41 = a2;
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  v5 = (a3 + 32);
  v6 = MEMORY[0x277D84F90];
  while (1)
  {
    v8 = v5[3];
    v9 = v5[1];
    v38 = v5[2];
    v39 = v8;
    v10 = v5[3];
    v40[0] = v5[4];
    *(v40 + 12) = *(v5 + 76);
    v11 = v5[1];
    v37[0] = *v5;
    v37[1] = v11;
    v34 = v38;
    v35 = v10;
    v36[0] = v5[4];
    *(v36 + 12) = *(v5 + 76);
    v32 = v37[0];
    v33 = v9;
    sub_257C58DDC(v37, &v22);
    a1(&v27, &v32);
    if (v3)
    {
      break;
    }

    v24 = v34;
    v25 = v35;
    v26[0] = v36[0];
    *(v26 + 12) = *(v36 + 12);
    v22 = v32;
    v23 = v33;
    sub_257C58E38(&v22);
    v12 = v28;
    if (v28)
    {
      v13 = v27;
      v14 = v29;
      v15 = v30;
      v21 = v31;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_257BFDBE4(0, v6[2] + 1, 1, v6);
      }

      v17 = v6[2];
      v16 = v6[3];
      v18 = v6;
      if (v17 >= v16 >> 1)
      {
        v18 = sub_257BFDBE4((v16 > 1), v17 + 1, 1, v6);
      }

      v18[2] = v17 + 1;
      v6 = v18;
      v7 = &v18[6 * v17];
      v7[4] = v13;
      v7[5] = v12;
      v7[6] = v14;
      v7[7] = v15;
      *(v7 + 4) = v21;
    }

    v5 += 6;
    if (!--v4)
    {
      return v6;
    }
  }

  v24 = v34;
  v25 = v35;
  v26[0] = v36[0];
  *(v26 + 12) = *(v36 + 12);
  v22 = v32;
  v23 = v33;
  sub_257C58E38(&v22);

  return v6;
}

uint64_t static MAGOutputEvent.objectUnderstanding(detectedObject:cameraPosition:detectedOccupants:source:environment:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X2>, _BYTE *a4@<X3>, uint64_t a5@<X8>, __n128 a6@<Q0>)
{
  v22 = a6;
  v11 = type metadata accessor for MAGOutputEvent.EventType(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[3];
  v25 = a1[2];
  v26 = v14;
  v27 = a1[4];
  v15 = v27;
  v16 = a1[1];
  v24[0] = *a1;
  v17 = v24[0];
  v24[1] = v16;
  LOBYTE(a3) = *a3;
  LOBYTE(a4) = *a4;
  *(v13 + 2) = v25;
  *(v13 + 3) = v14;
  *v13 = v17;
  *(v13 + 1) = v16;
  v18 = v22;
  *(v13 + 4) = v15;
  *(v13 + 5) = v18;
  *(v13 + 12) = a2;
  swift_storeEnumTagMultiPayload();
  sub_257BE401C(v24, v23, &qword_27F8F9C90);

  sub_257ECCCE0();
  v19 = type metadata accessor for MAGOutputEvent(0);
  sub_257C9A79C(v13, a5 + v19[5], type metadata accessor for MAGOutputEvent.EventType);
  *(a5 + v19[6]) = a3;
  *(a5 + v19[7]) = a4;
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v20 = qword_281548348;
  sub_257ECC3F0();
  result = sub_257C9A804(v13, type metadata accessor for MAGOutputEvent.EventType);
  *(a5 + v19[8]) = v20;
  return result;
}

uint64_t static MAGOutputEvent.objectUnderstanding(detectedObjectGroup:cameraPosition:detectedOccupants:source:environment:)@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, _BYTE *a3@<X2>, char *a4@<X3>, uint64_t a5@<X8>, __n128 a6@<Q0>)
{
  v18 = a6;
  v11 = type metadata accessor for MAGOutputEvent.EventType(0);
  MEMORY[0x28223BE20](v11);
  v13 = (&v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  LOBYTE(a3) = *a3;
  v14 = *a4;
  v13->n128_u64[0] = a1;
  v13[1] = v18;
  v13[2].n128_u64[0] = a2;
  swift_storeEnumTagMultiPayload();

  sub_257ECCCE0();
  v15 = type metadata accessor for MAGOutputEvent(0);
  sub_257C9A79C(v13, a5 + v15[5], type metadata accessor for MAGOutputEvent.EventType);
  *(a5 + v15[6]) = a3;
  *(a5 + v15[7]) = v14;
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v16 = qword_281548348;
  sub_257ECC3F0();
  result = sub_257C9A804(v13, type metadata accessor for MAGOutputEvent.EventType);
  *(a5 + v15[8]) = v16;
  return result;
}

uint64_t static MAGOutputEvent.objectUnderstanding(furnitureDetections:cameraPosition:source:environment:)@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>, __n128 a5@<Q0>)
{
  v16 = a5;
  v9 = type metadata accessor for MAGOutputEvent.EventType(0);
  MEMORY[0x28223BE20](v9);
  v11 = (&v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  LOBYTE(a2) = *a2;
  v12 = *a3;
  v11->n128_u64[0] = a1;
  v11[1] = v16;
  swift_storeEnumTagMultiPayload();

  sub_257ECCCE0();
  v13 = type metadata accessor for MAGOutputEvent(0);
  sub_257C9A79C(v11, a4 + v13[5], type metadata accessor for MAGOutputEvent.EventType);
  *(a4 + v13[6]) = a2;
  *(a4 + v13[7]) = v12;
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v14 = qword_281548348;
  sub_257ECC3F0();
  result = sub_257C9A804(v11, type metadata accessor for MAGOutputEvent.EventType);
  *(a4 + v13[8]) = v14;
  return result;
}

uint64_t static MAGOutputEvent.doorDetection(_:_:openStateConfidenceThreshold:source:environment:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X2>, char *a4@<X3>, uint64_t a5@<X8>, float a6@<S0>)
{
  v12 = type metadata accessor for MAGOutputEvent.EventType(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(a3) = *a3;
  v15 = *a4;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F38);
  v17 = *(v16 + 48);
  v18 = *(v16 + 64);
  sub_257C9A79C(a1, v14, type metadata accessor for DetectedDoor);
  *&v14[v17] = a2;
  *&v14[v18] = a6;
  swift_storeEnumTagMultiPayload();

  sub_257ECCCE0();
  v19 = type metadata accessor for MAGOutputEvent(0);
  sub_257C9A79C(v14, a5 + v19[5], type metadata accessor for MAGOutputEvent.EventType);
  *(a5 + v19[6]) = a3;
  *(a5 + v19[7]) = v15;
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v20 = qword_281548348;
  sub_257ECC3F0();
  result = sub_257C9A804(v14, type metadata accessor for MAGOutputEvent.EventType);
  *(a5 + v19[8]) = v20;
  return result;
}

uint64_t MAGOutputEvent.UserCoachingInstruction.displayContent.getter()
{
  sub_257C95DE4();
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_257ECF4C0();

  v3 = sub_257ECF4C0();
  v4 = [v1 localizedStringForKey:v2 value:0 table:v3];

  v5 = sub_257ECF500();
  return v5;
}

uint64_t sub_257C844F0@<X0>(_BYTE *a1@<X0>, _BYTE *a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for MAGOutputEvent.EventType(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(a2) = *a2;
  LOBYTE(a3) = *a3;
  *v10 = *a1;
  swift_storeEnumTagMultiPayload();
  sub_257ECCCE0();
  v11 = type metadata accessor for MAGOutputEvent(0);
  sub_257C9A79C(v10, a4 + v11[5], type metadata accessor for MAGOutputEvent.EventType);
  *(a4 + v11[6]) = a2;
  *(a4 + v11[7]) = a3;
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v12 = qword_281548348;
  sub_257ECC3F0();
  result = sub_257C9A804(v10, type metadata accessor for MAGOutputEvent.EventType);
  *(a4 + v11[8]) = v12;
  return result;
}

MagnifierSupport::MAGOutputEventCategory_optional __swiftcall MAGOutputEventCategory.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_257ED0670();

  v5 = 17;
  if (v3 < 0x11)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t MAGOutputEventCategory.rawValue.getter()
{
  result = 0x746C7561666564;
  switch(*v0)
  {
    case 1:
      result = 0x6544656C706F6570;
      break;
    case 2:
      v2 = 1919905636;
      goto LABEL_15;
    case 3:
      result = 0xD000000000000013;
      break;
    case 4:
      result = 0x7061436567616D69;
      break;
    case 5:
      result = 0x646E41746E696F70;
      break;
    case 6:
      v2 = 1954047348;
LABEL_15:
      result = v2 | 0x6574654400000000;
      break;
    case 7:
      result = 0x746E656D75636F64;
      break;
    case 8:
      result = 0xD000000000000012;
      break;
    case 9:
      result = 0x7061546B636162;
      break;
    case 0xA:
      result = 0x65636E756F6E6E61;
      break;
    case 0xB:
      result = 0x6F72506C65646F6DLL;
      break;
    case 0xC:
      result = 0x6E616353706F6F6CLL;
      break;
    case 0xD:
    case 0xE:
      result = 0x65636E6164697567;
      break;
    case 0xF:
      result = 0x75476E4F6B636F6CLL;
      break;
    case 0x10:
      result = 0x4766664F6B636F6CLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_257C848DC()
{
  v0 = MAGOutputEventCategory.rawValue.getter();
  v2 = v1;
  if (v0 == MAGOutputEventCategory.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_257ED0640();
  }

  return v5 & 1;
}

uint64_t sub_257C84984@<X0>(uint64_t *a1@<X8>)
{
  result = MAGOutputEventCategory.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_257C849AC()
{
  sub_257ED07B0();
  MAGOutputEventCategory.rawValue.getter();
  sub_257ECF5D0();

  return sub_257ED0800();
}

uint64_t sub_257C84A14()
{
  MAGOutputEventCategory.rawValue.getter();
  sub_257ECF5D0();
}

uint64_t sub_257C84A78()
{
  sub_257ED07B0();
  MAGOutputEventCategory.rawValue.getter();
  sub_257ECF5D0();

  return sub_257ED0800();
}

uint64_t MAGOutputEventEnvironment.hashValue.getter()
{
  v1 = *v0;
  sub_257ED07B0();
  MEMORY[0x259C732E0](v1);
  return sub_257ED0800();
}

uint64_t MAGOutputEvent.init(_:source:environment:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a2;
  v7 = *a3;
  sub_257ECCCE0();
  v8 = type metadata accessor for MAGOutputEvent(0);
  sub_257C9A79C(a1, a4 + v8[5], type metadata accessor for MAGOutputEvent.EventType);
  *(a4 + v8[6]) = v6;
  *(a4 + v8[7]) = v7;
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v9 = qword_281548348;
  sub_257ECC3F0();
  result = sub_257C9A804(a1, type metadata accessor for MAGOutputEvent.EventType);
  *(a4 + v8[8]) = v9;
  return result;
}

uint64_t sub_257C84CC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X2>, _BYTE *a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for MAGOutputEvent.EventType(0);
  MEMORY[0x28223BE20](v10);
  v12 = (&v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  LOBYTE(a3) = *a3;
  LOBYTE(a4) = *a4;
  *v12 = a1;
  v12[1] = a2;
  swift_storeEnumTagMultiPayload();

  sub_257ECCCE0();
  v13 = type metadata accessor for MAGOutputEvent(0);
  sub_257C9A79C(v12, a5 + v13[5], type metadata accessor for MAGOutputEvent.EventType);
  *(a5 + v13[6]) = a3;
  *(a5 + v13[7]) = a4;
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v14 = qword_281548348;
  sub_257ECC3F0();
  result = sub_257C9A804(v12, type metadata accessor for MAGOutputEvent.EventType);
  *(a5 + v13[8]) = v14;
  return result;
}

uint64_t sub_257C84E34@<X0>(_BYTE *a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for MAGOutputEvent.EventType(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(a1) = *a1;
  LOBYTE(a2) = *a2;
  swift_storeEnumTagMultiPayload();
  sub_257ECCCE0();
  v9 = type metadata accessor for MAGOutputEvent(0);
  sub_257C9A79C(v8, a3 + v9[5], type metadata accessor for MAGOutputEvent.EventType);
  *(a3 + v9[6]) = a1;
  *(a3 + v9[7]) = a2;
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v10 = qword_281548348;
  sub_257ECC3F0();
  result = sub_257C9A804(v8, type metadata accessor for MAGOutputEvent.EventType);
  *(a3 + v9[8]) = v10;
  return result;
}

uint64_t static MAGOutputEvent.backTap(attributedLabel:source:environment:)@<X0>(void *a1@<X0>, _BYTE *a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for MAGOutputEvent.EventType(0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  LOBYTE(a2) = *a2;
  v11 = *a3;
  *v10 = a1;
  swift_storeEnumTagMultiPayload();
  v12 = a1;
  sub_257ECCCE0();
  v13 = type metadata accessor for MAGOutputEvent(0);
  sub_257C9A79C(v10, a4 + v13[5], type metadata accessor for MAGOutputEvent.EventType);
  *(a4 + v13[6]) = a2;
  *(a4 + v13[7]) = v11;
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v14 = qword_281548348;
  sub_257ECC3F0();
  result = sub_257C9A804(v10, type metadata accessor for MAGOutputEvent.EventType);
  *(a4 + v13[8]) = v14;
  return result;
}

uint64_t sub_257C850DC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for MAGOutputEvent.EventType(0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  LOBYTE(a2) = *a2;
  LOBYTE(a3) = *a3;
  *v10 = a1;
  swift_storeEnumTagMultiPayload();

  sub_257ECCCE0();
  v11 = type metadata accessor for MAGOutputEvent(0);
  sub_257C9A79C(v10, a4 + v11[5], type metadata accessor for MAGOutputEvent.EventType);
  *(a4 + v11[6]) = a2;
  *(a4 + v11[7]) = a3;
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v12 = qword_281548348;
  sub_257ECC3F0();
  result = sub_257C9A804(v10, type metadata accessor for MAGOutputEvent.EventType);
  *(a4 + v11[8]) = v12;
  return result;
}

uint64_t static MAGOutputEvent.peopleDetection(closestPerson:depth:source:environment:)@<X0>(void *a1@<X0>, int a2@<W1>, _BYTE *a3@<X2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for MAGOutputEvent.EventType(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(a3) = *a3;
  v13 = *a4;
  *v12 = a1;
  *(v12 + 2) = a2;
  swift_storeEnumTagMultiPayload();
  v14 = a1;
  sub_257ECCCE0();
  v15 = type metadata accessor for MAGOutputEvent(0);
  sub_257C9A79C(v12, a5 + v15[5], type metadata accessor for MAGOutputEvent.EventType);
  *(a5 + v15[6]) = a3;
  *(a5 + v15[7]) = v13;
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v16 = qword_281548348;
  sub_257ECC3F0();
  result = sub_257C9A804(v12, type metadata accessor for MAGOutputEvent.EventType);
  *(a5 + v15[8]) = v16;
  return result;
}

uint64_t static MAGOutputEvent.peopleDetection(closestPerson:depth:closestPersonAction:source:environment:)@<X0>(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X4>, char *a6@<X5>, uint64_t a7@<X8>)
{
  v14 = type metadata accessor for MAGOutputEvent.EventType(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(a5) = *a5;
  v17 = *a6;
  *v16 = a1;
  *(v16 + 2) = a2;
  *(v16 + 2) = a3;
  *(v16 + 3) = a4;
  swift_storeEnumTagMultiPayload();
  v18 = a1;

  sub_257ECCCE0();
  v19 = type metadata accessor for MAGOutputEvent(0);
  sub_257C9A79C(v16, a7 + v19[5], type metadata accessor for MAGOutputEvent.EventType);
  *(a7 + v19[6]) = a5;
  *(a7 + v19[7]) = v17;
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v20 = qword_281548348;
  sub_257ECC3F0();
  result = sub_257C9A804(v16, type metadata accessor for MAGOutputEvent.EventType);
  *(a7 + v19[8]) = v20;
  return result;
}

uint64_t static MAGOutputEvent.objectUnderstanding(surfaceLabel:depth:source:environment:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, _BYTE *a4@<X3>, char *a5@<X4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for MAGOutputEvent.EventType(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(a4) = *a4;
  v15 = *a5;
  *v14 = a1;
  *(v14 + 1) = a2;
  *(v14 + 4) = a3;
  swift_storeEnumTagMultiPayload();

  sub_257ECCCE0();
  v16 = type metadata accessor for MAGOutputEvent(0);
  sub_257C9A79C(v14, a6 + v16[5], type metadata accessor for MAGOutputEvent.EventType);
  *(a6 + v16[6]) = a4;
  *(a6 + v16[7]) = v15;
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v17 = qword_281548348;
  sub_257ECC3F0();
  result = sub_257C9A804(v14, type metadata accessor for MAGOutputEvent.EventType);
  *(a6 + v16[8]) = v17;
  return result;
}

uint64_t MAGOutputEvent.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_257ECCCF0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t MAGOutputEvent.source.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for MAGOutputEvent(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t MAGOutputEvent.environment.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for MAGOutputEvent(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t MAGOutputEvent.category.getter@<X0>(char *a1@<X8>)
{
  v3 = type metadata accessor for MAGOutputEvent.EventType(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MAGOutputEvent(0);
  sub_257C9A79C(v1 + *(v6 + 20), v5, type metadata accessor for MAGOutputEvent.EventType);
  result = swift_getEnumCaseMultiPayload();
  v8 = 10;
  switch(result)
  {
    case 0:
    case 1:
      result = sub_257C9A804(v5, type metadata accessor for MAGOutputEvent.EventType);
      v8 = 1;
      break;
    case 2:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F38);

      result = sub_257C9A804(v5, type metadata accessor for DetectedDoor);
      v8 = 2;
      break;
    case 3:
    case 4:
    case 5:
    case 6:
      result = sub_257C9A804(v5, type metadata accessor for MAGOutputEvent.EventType);
      v8 = 3;
      break;
    case 7:
      result = sub_257C9A804(v5, type metadata accessor for MAGOutputEvent.EventType);
      v8 = 4;
      break;
    case 8:
      result = sub_257C9A804(v5, type metadata accessor for MAGOutputEvent.EventType);
      v8 = 5;
      break;
    case 9:
      result = sub_257C9A804(v5, type metadata accessor for MAGOutputEvent.EventType);
      v8 = 6;
      break;
    case 12:
      result = sub_257C9A804(v5, type metadata accessor for MAGOutputEvent.EventType);
      v8 = 7;
      break;
    case 13:
      result = sub_257C9A804(v5, type metadata accessor for MAGOutputEvent.EventType);
      v8 = 9;
      break;
    case 15:
      break;
    case 17:
      v8 = 8;
      break;
    case 25:
      v8 = 11;
      break;
    case 26:
      v8 = 12;
      break;
    case 27:
      v8 = 13;
      break;
    case 28:
      v8 = 14;
      break;
    case 29:
      v8 = 15;
      break;
    case 30:
      v8 = 16;
      break;
    default:
      result = sub_257C9A804(v5, type metadata accessor for MAGOutputEvent.EventType);
      v8 = 0;
      break;
  }

  *a1 = v8;
  return result;
}

uint64_t MAGOutputEvent.replacesEventsWithSameCategory.getter()
{
  v1 = type metadata accessor for MAGOutputEvent.EventType(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MAGOutputEvent(0);
  sub_257C9A79C(v0 + *(v4 + 20), v3, type metadata accessor for MAGOutputEvent.EventType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v6 = type metadata accessor for MAGOutputEvent.EventType;
  if (EnumCaseMultiPayload > 0x18)
  {
    goto LABEL_6;
  }

  v7 = 1;
  if (((1 << EnumCaseMultiPayload) & 0x33E3) != 0)
  {
LABEL_7:
    sub_257C9A804(v3, v6);
    return v7;
  }

  if (((1 << EnumCaseMultiPayload) & 0x1FE8000) == 0)
  {
    if (EnumCaseMultiPayload == 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F38);

      v6 = type metadata accessor for DetectedDoor;
      goto LABEL_7;
    }

LABEL_6:
    v7 = 0;
    v6 = type metadata accessor for MAGOutputEvent.EventType;
    goto LABEL_7;
  }

  return v7;
}

Swift::Bool __swiftcall MAGOutputEvent.interruptsSpeechEventsWithCategory(_:)(MagnifierSupport::MAGOutputEventCategory a1)
{
  v2 = a1;
  v3 = type metadata accessor for MAGOutputEvent.EventType(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v30[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v6 = *v2;
  v7 = type metadata accessor for MAGOutputEvent(0);
  sub_257C9A79C(v1 + *(v7 + 20), v5, type metadata accessor for MAGOutputEvent.EventType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload < 2)
    {
      sub_257C9A804(v5, type metadata accessor for MAGOutputEvent.EventType);
      MAGOutputEvent.category.getter(v31);
      v31[1] = v6;
      v15 = MAGOutputEventCategory.rawValue.getter();
      v17 = v16;
      goto LABEL_17;
    }

    if (EnumCaseMultiPayload == 3)
    {
      goto LABEL_16;
    }

    if (EnumCaseMultiPayload == 4)
    {
      v10 = *v5;

      MAGOutputEvent.category.getter(v32);
      v32[1] = v6;
      v11 = MAGOutputEventCategory.rawValue.getter();
      v13 = v12;
      if (v11 == MAGOutputEventCategory.rawValue.getter() && v13 == v14)
      {
      }

      else
      {
        v25 = sub_257ED0640();

        if ((v25 & 1) == 0)
        {

          goto LABEL_34;
        }
      }

      v9 = v10 != 0;

      return v9 & 1;
    }

LABEL_29:
    sub_257C9A804(v5, type metadata accessor for MAGOutputEvent.EventType);
LABEL_34:
    v9 = 0;
    return v9 & 1;
  }

  if (EnumCaseMultiPayload > 0x1B)
  {
LABEL_15:
    if ((EnumCaseMultiPayload - 5) < 2)
    {
LABEL_16:
      sub_257C9A804(v5, type metadata accessor for MAGOutputEvent.EventType);
      MAGOutputEvent.category.getter(v33);
      v33[1] = v6;
      v15 = MAGOutputEventCategory.rawValue.getter();
      v17 = v18;
      goto LABEL_17;
    }

    if (EnumCaseMultiPayload == 8)
    {
      sub_257C9A804(v5, type metadata accessor for MAGOutputEvent.EventType);
      MAGOutputEvent.category.getter(v30);
      v30[1] = v6;
      v21 = MAGOutputEventCategory.rawValue.getter();
      v23 = v22;
      if (v21 == MAGOutputEventCategory.rawValue.getter() && v23 == v24)
      {
      }

      else
      {
        v27 = sub_257ED0640();

        if (v27)
        {
          goto LABEL_4;
        }

        HIBYTE(v29) = v6;
        if (MAGOutputEventCategory.rawValue.getter() != 0x6574654474786574 || v28 != 0xED00006E6F697463)
        {
          v9 = sub_257ED0640();
LABEL_22:

          return v9 & 1;
        }
      }

      v9 = 1;
      return v9 & 1;
    }

    goto LABEL_29;
  }

  if (((1 << EnumCaseMultiPayload) & 0x9FE8000) == 0)
  {
    if (EnumCaseMultiPayload == 9)
    {
      sub_257C9A804(v5, type metadata accessor for MAGOutputEvent.EventType);
      MAGOutputEvent.category.getter(&v29 + 5);
      BYTE6(v29) = v6;
      v15 = MAGOutputEventCategory.rawValue.getter();
      v17 = v26;
LABEL_17:
      if (v15 == MAGOutputEventCategory.rawValue.getter() && v17 == v19)
      {
        v9 = 1;
      }

      else
      {
        v9 = sub_257ED0640();
      }

      goto LABEL_22;
    }

    if (EnumCaseMultiPayload == 13)
    {
      sub_257C9A804(v5, type metadata accessor for MAGOutputEvent.EventType);
      v9 = 1;
      return v9 & 1;
    }

    goto LABEL_15;
  }

LABEL_4:
  v9 = 1;
  return v9 & 1;
}

uint64_t MAGOutputEvent.soundEffect.getter@<X0>(char *a1@<X8>)
{
  v3 = type metadata accessor for MAGOutputEvent.EventType(0);
  MEMORY[0x28223BE20](v3);
  v5 = (&v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for MAGOutputEvent(0);
  sub_257C9A79C(v1 + *(v6 + 20), v5, type metadata accessor for MAGOutputEvent.EventType);
  result = swift_getEnumCaseMultiPayload();
  if (result > 22)
  {
    if (result > 30)
    {
      switch(result)
      {
        case 0x1F:
          v14 = 12;
          goto LABEL_39;
        case 0x20:
          v14 = 13;
          goto LABEL_39;
        case 0x21:
          v14 = 0;
          goto LABEL_39;
      }
    }

    else
    {
      switch(result)
      {
        case 0x17:
LABEL_22:
          v14 = 10;
          goto LABEL_39;
        case 0x18:
          v14 = 11;
          goto LABEL_39;
        case 0x19:
          v14 = 14;
          goto LABEL_39;
      }
    }

LABEL_36:
    result = sub_257C9A804(v5, type metadata accessor for MAGOutputEvent.EventType);
    goto LABEL_38;
  }

  if (result > 19)
  {
    v14 = 9;
    if (result != 21)
    {
      goto LABEL_39;
    }

    goto LABEL_22;
  }

  if (result == 8)
  {
    v15 = *v5;
    v16 = (*(v1 + *(v6 + 32)) + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__selectedPointSpeakFeedbacks);
    swift_beginAccess();
    v17 = v16[1];
    v18 = v16[2];
    v30 = *v16;
    v31 = v17;
    v32 = v18;
    v19 = qword_2815447E0;

    if (v19 != -1)
    {
      v20 = swift_once();
    }

    MEMORY[0x28223BE20](v20);
    *(&v29 - 2) = &v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F90);
    sub_257ECFD50();

    v21 = sub_257C592D0(2u, v33);

    if (v21)
    {
      v22 = *(v15 + 16);

      if (v22)
      {
        v14 = 6;
        goto LABEL_39;
      }
    }

    else
    {
    }

LABEL_38:
    v14 = 20;
    goto LABEL_39;
  }

  if (result != 18)
  {
    if (result == 19)
    {
      v8 = (*(v1 + *(v6 + 32)) + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__selectedPauseDetectionModeFeedbacks);
      swift_beginAccess();
      v9 = v8[1];
      v10 = v8[2];
      v30 = *v8;
      v31 = v9;
      v32 = v10;
      v11 = qword_2815447E0;

      if (v11 != -1)
      {
        v12 = swift_once();
      }

      MEMORY[0x28223BE20](v12);
      *(&v29 - 2) = &v30;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7080);
      sub_257ECFD50();

      v13 = sub_257C592D0(1u, v33);

      if (v13)
      {
        v14 = 8;
      }

      else
      {
        v14 = 20;
      }

      goto LABEL_39;
    }

    goto LABEL_36;
  }

  v23 = (*(v1 + *(v6 + 32)) + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__selectedPauseDetectionModeFeedbacks);
  swift_beginAccess();
  v24 = v23[1];
  v25 = v23[2];
  v30 = *v23;
  v31 = v24;
  v32 = v25;
  v26 = qword_2815447E0;

  if (v26 != -1)
  {
    v27 = swift_once();
  }

  MEMORY[0x28223BE20](v27);
  *(&v29 - 2) = &v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7080);
  sub_257ECFD50();

  v28 = sub_257C592D0(1u, v33);

  if (v28)
  {
    v14 = 7;
  }

  else
  {
    v14 = 20;
  }

LABEL_39:
  *a1 = v14;
  return result;
}

uint64_t MAGOutputEvent.hapticEffect.getter@<X0>(char *a1@<X8>)
{
  v3 = type metadata accessor for MAGOutputEvent.EventType(0);
  MEMORY[0x28223BE20](v3);
  v5 = (&v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for MAGOutputEvent(0);
  sub_257C9A79C(v1 + *(v6 + 20), v5, type metadata accessor for MAGOutputEvent.EventType);
  result = swift_getEnumCaseMultiPayload();
  v8 = 0;
  switch(result)
  {
    case 0:
      v9 = *v5;
      if (*v5)
      {
        goto LABEL_26;
      }

      goto LABEL_36;
    case 1:
      v9 = *v5;

      if (!v9)
      {
        goto LABEL_36;
      }

LABEL_26:

      v35 = (*(v1 + *(v6 + 32)) + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__selectedPeopleDetectionFeedbacks);
      swift_beginAccess();
      v36 = v35[1];
      v37 = v35[2];
      v42 = *v35;
      v43 = v36;
      v44 = v37;
      v38 = qword_2815447E0;

      if (v38 != -1)
      {
        v39 = swift_once();
      }

      MEMORY[0x28223BE20](v39);
      *(&v41 - 2) = &v42;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6AD8);
      sub_257ECFD50();

      v40 = sub_257C592D0(3u, v45);

      if (v40)
      {
        v8 = 1;
      }

      else
      {
        v8 = 11;
      }

      goto LABEL_37;
    case 2:
      v28 = (*(v5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F38) + 48)))[2];

      if (!v28)
      {
        goto LABEL_33;
      }

      v29 = (*(v1 + *(v6 + 32)) + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__selectedDoorDetectionFeedbacks);
      swift_beginAccess();
      v30 = v29[1];
      v31 = v29[2];
      v42 = *v29;
      v43 = v30;
      v44 = v31;
      v32 = qword_2815447E0;

      if (v32 != -1)
      {
        v33 = swift_once();
      }

      MEMORY[0x28223BE20](v33);
      *(&v41 - 2) = &v42;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5880);
      sub_257ECFD50();

      v34 = sub_257C592D0(3u, v45);

      if (v34)
      {
        v8 = 2;
      }

      else
      {
LABEL_33:
        v8 = 11;
      }

      result = sub_257C9A804(v5, type metadata accessor for DetectedDoor);
      goto LABEL_37;
    case 8:
      v10 = *v5;
      v11 = (*(v1 + *(v6 + 32)) + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__selectedPointSpeakFeedbacks);
      swift_beginAccess();
      v12 = v11[1];
      v13 = v11[2];
      v42 = *v11;
      v43 = v12;
      v44 = v13;
      v14 = qword_2815447E0;

      if (v14 != -1)
      {
        v15 = swift_once();
      }

      MEMORY[0x28223BE20](v15);
      *(&v41 - 2) = &v42;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F90);
      sub_257ECFD50();

      v16 = sub_257C592D0(3u, v45);

      if (v16)
      {
        v17 = v10[2];

        if (v17)
        {
LABEL_10:
          v8 = 3;
          goto LABEL_37;
        }
      }

      else
      {
      }

LABEL_36:
      v8 = 11;
LABEL_37:
      *a1 = v8;
      return result;
    case 17:
    case 20:
    case 21:
    case 22:
    case 23:
    case 31:
    case 32:
      goto LABEL_37;
    case 18:
      v23 = (*(v1 + *(v6 + 32)) + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__selectedPauseDetectionModeFeedbacks);
      swift_beginAccess();
      v24 = v23[1];
      v25 = v23[2];
      v42 = *v23;
      v43 = v24;
      v44 = v25;
      v26 = qword_2815447E0;

      if (v26 == -1)
      {
        goto LABEL_15;
      }

      goto LABEL_38;
    case 19:
      v18 = (*(v1 + *(v6 + 32)) + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__selectedPauseDetectionModeFeedbacks);
      swift_beginAccess();
      v19 = v18[1];
      v20 = v18[2];
      v42 = *v18;
      v43 = v19;
      v44 = v20;
      v21 = qword_2815447E0;

      if (v21 == -1)
      {
        goto LABEL_15;
      }

LABEL_38:
      v22 = swift_once();
LABEL_15:
      MEMORY[0x28223BE20](v22);
      *(&v41 - 2) = &v42;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7080);
      sub_257ECFD50();

      v27 = sub_257C592D0(2u, v45);

      if (v27)
      {
        v8 = 0;
      }

      else
      {
        v8 = 11;
      }

      goto LABEL_37;
    case 24:
      v8 = 5;
      goto LABEL_37;
    case 26:
      v8 = 6;
      goto LABEL_37;
    case 27:
      v8 = 7;
      goto LABEL_37;
    case 28:
      v8 = 8;
      goto LABEL_37;
    case 29:
      v8 = 9;
      goto LABEL_37;
    case 30:
      v8 = 10;
      goto LABEL_37;
    case 34:
      goto LABEL_10;
    default:
      result = sub_257C9A804(v5, type metadata accessor for MAGOutputEvent.EventType);
      goto LABEL_36;
  }
}

uint64_t MAGOutputEvent.speechContent(withPreviousEvent:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v424 = a1;
  v428 = a2;
  v426.i64[0] = sub_257ECD1A0();
  v406 = *(v426.i64[0] - 8);
  MEMORY[0x28223BE20](v426.i64[0]);
  v405 = &v402 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6D50);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v415 = &v402 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v412 = &v402 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v416 = &v402 - v9;
  MEMORY[0x28223BE20](v8);
  v413 = &v402 - v10;
  v11 = type metadata accessor for MAGOutputEvent(0);
  v423 = *(v11 - 1);
  v12 = MEMORY[0x28223BE20](v11);
  v411 = &v402 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v409 = &v402 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v414 = &v402 - v17;
  MEMORY[0x28223BE20](v16);
  v410 = &v402 - v18;
  v19 = type metadata accessor for DetectedDoor(0);
  MEMORY[0x28223BE20](v19 - 8);
  v422 = &v402 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for MAGOutputEvent.EventType(0);
  v22 = MEMORY[0x28223BE20](v21);
  v421 = &v402 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v425 = (&v402 - v25);
  v26 = MEMORY[0x28223BE20](v24);
  v420 = (&v402 - v27);
  v28 = MEMORY[0x28223BE20](v26);
  v419 = &v402 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v418 = &v402 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v417 = &v402 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v407 = &v402 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v403 = (&v402 - v37);
  v38 = MEMORY[0x28223BE20](v36);
  v40 = (&v402 - v39);
  v41 = MEMORY[0x28223BE20](v38);
  v408 = &v402 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v404 = &v402 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v47 = &v402 - v46;
  v48 = MEMORY[0x28223BE20](v45);
  v50 = &v402 - v49;
  v51 = MEMORY[0x28223BE20](v48);
  v53 = &v402 - v52;
  v54 = MEMORY[0x28223BE20](v51);
  v56 = &v402 - v55;
  v57 = MEMORY[0x28223BE20](v54);
  v59 = &v402 - v58;
  MEMORY[0x28223BE20](v57);
  v61 = &v402 - v60;
  v427 = v11;
  sub_257C9A79C(v430 + v11[5], &v402 - v60, type metadata accessor for MAGOutputEvent.EventType);
  v429 = v61;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      sub_257C9A79C(v429, v59, type metadata accessor for MAGOutputEvent.EventType);
      v94 = *v59;
      v95 = *(v59 + 2);
      v96 = v427;
      v97 = v430;
      if ((*(v430 + v427[7]) & 1) == 0)
      {
        v184 = (*(v430 + v427[8]) + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__selectedPeopleDetectionFeedbacks);
        swift_beginAccess();
        v185 = v184[1];
        v186 = v184[2];
        *&v437 = *v184;
        *(&v437 + 1) = v185;
        *&v438 = v186;
        v187 = qword_2815447E0;

        if (v187 != -1)
        {
          v188 = swift_once();
        }

        MEMORY[0x28223BE20](v188);
        *(&v402 - 2) = &v437;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6AD8);
        sub_257ECFD50();

        v189 = sub_257C592D0(1u, v431);

        if (v189)
        {
          sub_257C8AB74(v94, v95, v424, v428);
        }

        else
        {
          v273 = v428;
          v428[4] = 0;
          *v273 = 0u;
          v273[1] = 0u;
        }

        goto LABEL_297;
      }

      sub_257C8AB74(*v59, *(v59 + 2), v424, &v443);
      v98 = *(v97 + v96[6]);
      v99 = [objc_opt_self() sharedInstance];
      v100 = v99;
      if (v98 != 2)
      {
        goto LABEL_161;
      }

      goto LABEL_20;
    case 1u:
      sub_257C9A79C(v429, v56, type metadata accessor for MAGOutputEvent.EventType);
      v94 = *v56;
      v101 = *(v56 + 2);
      v103 = *(v56 + 2);
      v102 = *(v56 + 3);
      v104 = v427;
      v105 = v430;
      if ((*(v430 + v427[7]) & 1) == 0)
      {
        v190 = (*(v430 + v427[8]) + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__selectedPeopleDetectionFeedbacks);
        swift_beginAccess();
        v191 = v190[1];
        v192 = v190[2];
        *&v437 = *v190;
        *(&v437 + 1) = v191;
        *&v438 = v192;
        v193 = qword_2815447E0;

        if (v193 != -1)
        {
          v194 = swift_once();
        }

        MEMORY[0x28223BE20](v194);
        *(&v402 - 2) = &v437;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6AD8);
        sub_257ECFD50();

        v195 = sub_257C592D0(1u, v431);

        if (v195)
        {
          sub_257C8B51C(v94, v101, v103, v102, v424, v428);
        }

        else
        {
          v278 = v428;
          v428[4] = 0;
          *v278 = 0u;
          v278[1] = 0u;
        }

        goto LABEL_297;
      }

      sub_257C8B51C(v94, v101, v103, v102, v424, &v443);

      v106 = *(v105 + v104[6]);
      v99 = [objc_opt_self() sharedInstance];
      v100 = v99;
      if (v106 == 2)
      {
LABEL_20:
        v107 = [v99 liveRecognitionActivity];

        if (v107)
        {
          v84 = [v107 peopleFeedbacksSpeech];

          goto LABEL_53;
        }

        goto LABEL_164;
      }

LABEL_161:
      v274 = [v99 liveRecognitionPeopleFeedbacks];

      if (!v274)
      {
LABEL_164:
        __swift_destroy_boxed_opaque_existential_0(&v443);

        goto LABEL_296;
      }

      sub_257BD2C2C(0, &qword_281543DC0);
      sub_257C9CE74();
      v275 = sub_257ECFA70();

      v276 = sub_257ECFAC0();
      v277 = sub_257C409E8(v276, v275);

      if (v277)
      {
        goto LABEL_181;
      }

      goto LABEL_211;
    case 2u:
      sub_257C9A79C(v429, v53, type metadata accessor for MAGOutputEvent.EventType);
      v76 = *&v53[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F38) + 48)];
      v77 = v422;
      sub_257C9CF58(v53, v422, type metadata accessor for DetectedDoor);
      if (!*(v76 + 16))
      {
        goto LABEL_152;
      }

      v78 = v427;
      v79 = v430;
      if ((*(v430 + v427[7]) & 1) == 0)
      {
        v262 = (*(v430 + v427[8]) + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__selectedDoorDetectionFeedbacks);
        swift_beginAccess();
        v263 = v262[1];
        v264 = v262[2];
        *&v437 = *v262;
        *(&v437 + 1) = v263;
        *&v438 = v264;
        v265 = qword_2815447E0;

        if (v265 != -1)
        {
          goto LABEL_331;
        }

        goto LABEL_150;
      }

      sub_257C8C0BC(v77, v76, &v443);

      v80 = *(v79 + v78[6]);
      v81 = [objc_opt_self() sharedInstance];
      v82 = v81;
      if (v80 == 2)
      {
        v83 = [v81 liveRecognitionActivity];

        if (v83)
        {
          v84 = [v83 doorsFeedbacksSpeech];

          sub_257C9A804(v77, type metadata accessor for DetectedDoor);
          goto LABEL_53;
        }

        __swift_destroy_boxed_opaque_existential_0(&v443);
        sub_257C9A804(v77, type metadata accessor for DetectedDoor);
        goto LABEL_296;
      }

      v319 = [v81 liveRecognitionDoorsFeedbacks];

      if (!v319)
      {
        __swift_destroy_boxed_opaque_existential_0(&v443);
        sub_257C9A804(v77, type metadata accessor for DetectedDoor);
        v352 = v428;
        *v428 = 0u;
        *(v352 + 1) = 0u;
        v352[4] = 0;
        goto LABEL_297;
      }

      sub_257BD2C2C(0, &qword_281543DC0);
      sub_257C9CE74();
      v320 = sub_257ECFA70();

      v321 = sub_257ECFAC0();
      v322 = sub_257C409E8(v321, v320);

      sub_257C9A804(v77, type metadata accessor for DetectedDoor);
      if (v322)
      {
        goto LABEL_181;
      }

      goto LABEL_211;
    case 3u:
      sub_257C9A79C(v429, v50, type metadata accessor for MAGOutputEvent.EventType);
      v132 = *v50;
      v131 = *(v50 + 1);
      v133 = *(v50 + 4);
      v134 = v427;
      v135 = v430;
      if (*(v430 + v427[7]))
      {
        sub_257C8D0E0(*v50, *(v50 + 1), *(v50 + 4), v424, &v443);

        v136 = *(v135 + v134[6]);
        v114 = [objc_opt_self() sharedInstance];
        v115 = v114;
        if (v136 != 2)
        {
          goto LABEL_167;
        }

        goto LABEL_36;
      }

      v208 = (*(v430 + v427[8]) + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__selectedObjectUnderstandingFeedbacks);
      swift_beginAccess();
      v209 = v208[1];
      v210 = v208[2];
      *&v437 = *v208;
      *(&v437 + 1) = v209;
      *&v438 = v210;
      v211 = qword_2815447E0;

      if (v211 != -1)
      {
        v212 = swift_once();
      }

      MEMORY[0x28223BE20](v212);
      *(&v402 - 2) = &v437;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F4B90);
      sub_257ECFD50();

      v213 = sub_257C592D0(1u, v431);

      if (v213)
      {
        sub_257C8D0E0(v132, v131, v133, v424, v428);
        goto LABEL_96;
      }

      goto LABEL_95;
    case 4u:
      sub_257C9A79C(v429, v47, type metadata accessor for MAGOutputEvent.EventType);
      v139 = *(v47 + 4);
      v426 = *(v47 + 5);
      v140 = *(v47 + 2);
      v446 = *(v47 + 3);
      v447 = v139;
      v141 = *v47;
      v444 = *(v47 + 1);
      v445 = v140;
      v443 = v141;
      v142 = *(v47 + 12);
      v143 = v427;
      if (*(v430 + v427[7]))
      {
        v144 = v416;
        sub_257BE401C(v424, v416, &qword_27F8F6D50);
        if ((*(v423 + 48))(v144, 1, v143) == 1)
        {
          sub_257BE4084(v144, &qword_27F8F6D50);
          goto LABEL_279;
        }

        v287 = v414;
        sub_257C9CF58(v144, v414, type metadata accessor for MAGOutputEvent);
        v288 = MAGOutputEvent.itemIDs.getter();
        v289 = MAGOutputEvent.itemIDs.getter();
        if (v288)
        {
          if (v289)
          {
            v290 = sub_257C943E4(v288, v289);

            if ((v290 & 1) == 0)
            {
              goto LABEL_241;
            }

LABEL_229:
            v335 = v408;
            sub_257C9A79C(v287 + v143[5], v408, type metadata accessor for MAGOutputEvent.EventType);
            if (swift_getEnumCaseMultiPayload() == 4)
            {
              v336 = *(v335 + 16);
              v437 = *v335;
              v438 = v336;
              v337 = *(v335 + 48);
              v439 = *(v335 + 32);
              v440 = v337;
              v441 = *(v335 + 64);
              v338 = *(v335 + 96);
              if (v437)
              {
                v339 = *(v335 + 80);
                v431 = v437;
                v433 = v438;
                v434 = v439;
                v435 = v440;
                v436 = v441;
                sub_257C97430(&v431, v338, 1, &v448, v339);
                v340 = v448;
                v341 = v449;
                v342 = v450;
                v343 = v451;
                v344 = v452;
                v345 = v453;

                sub_257C9A804(v287, type metadata accessor for MAGOutputEvent);
                sub_257BE4084(&v437, &qword_27F8F9C90);
                goto LABEL_280;
              }

              sub_257C9A804(v287, type metadata accessor for MAGOutputEvent);
            }

            else
            {
              sub_257C9A804(v287, type metadata accessor for MAGOutputEvent);
              sub_257C9A804(v335, type metadata accessor for MAGOutputEvent.EventType);
            }

LABEL_279:
            v340 = 0;
            v341 = 0;
            v342 = 0;
            v343 = 0;
            v344 = 0;
            v345 = 0;
LABEL_280:
            v431 = v340;
            v432 = v341;
            *&v433 = v342;
            *(&v433 + 1) = v343;
            *&v434 = v344;
            *(&v434 + 1) = v345;
            if (v443)
            {
              *&v437 = v443;
              v438 = v444;
              v439 = v445;
              v440 = v446;
              v441 = v447;
              v381 = v443;
              sub_257C97430(&v437, v142, 1, &v454, v426);

              if (v455)
              {
                v426.i64[0] = v340;
                v382 = v430;
                sub_257C98BE4(v454, v455, v456, v457, v458, v459, &v431);
                v383 = v341;
                v384 = v382;
                sub_257C9CF08(v426.i64[0], v383);

                sub_257BE4084(&v443, &qword_27F8F9C90);
                goto LABEL_286;
              }

              sub_257C9CF08(v340, v341);
              sub_257BE4084(&v443, &qword_27F8F9C90);
            }

            else
            {

              sub_257C9CF08(v340, v341);
            }

            v384 = v430;
            v442[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6D60);
            v442[4] = sub_257BD2D4C(&qword_27F8F6D68, &qword_27F8F6D60);
            v442[0] = MEMORY[0x277D84F90];
LABEL_286:
            v385 = *(v384 + v427[6]);
            v386 = [objc_opt_self() sharedInstance];
            v387 = v386;
            if (v385 == 2)
            {
              v388 = [v386 liveRecognitionActivity];

              if (!v388)
              {
                __swift_destroy_boxed_opaque_existential_0(v442);
                sub_257BE4084(&v443, &qword_27F8F9C90);
                goto LABEL_296;
              }

              v389 = [v388 furnitureFeedbacksSpeech];
              sub_257BE4084(&v443, &qword_27F8F9C90);

              v159 = v442;
              if (v389)
              {
                goto LABEL_182;
              }
            }

            else
            {
              v390 = [v386 liveRecognitionFurnitureFeedbacks];

              if (v390)
              {
                sub_257BD2C2C(0, &qword_281543DC0);
                sub_257C9CE74();
                v391 = sub_257ECFA70();

                v392 = sub_257ECFAC0();
                v393 = sub_257C409E8(v392, v391);
                sub_257BE4084(&v443, &qword_27F8F9C90);

                v159 = v442;
                if (v393)
                {
                  goto LABEL_182;
                }
              }

              else
              {
                sub_257BE4084(&v443, &qword_27F8F9C90);
                v159 = v442;
              }
            }

            goto LABEL_295;
          }
        }

        else if (!v289)
        {
          goto LABEL_229;
        }

LABEL_241:
        sub_257C9A804(v287, type metadata accessor for MAGOutputEvent);
        goto LABEL_279;
      }

      v214 = (*(v430 + v427[8]) + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__selectedObjectUnderstandingFeedbacks);
      swift_beginAccess();
      v215 = v214[1];
      v216 = v214[2];
      *&v437 = *v214;
      *(&v437 + 1) = v215;
      *&v438 = v216;
      v217 = qword_2815447E0;

      if (v217 != -1)
      {
        v218 = swift_once();
      }

      MEMORY[0x28223BE20](v218);
      *(&v402 - 2) = &v437;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F4B90);
      sub_257ECFD50();

      v219 = sub_257C592D0(1u, v431);

      if (!v219)
      {
        v291 = v428;
        v428[4] = 0;
        *v291 = 0u;
        v291[1] = 0u;

        sub_257BE4084(&v443, &qword_27F8F9C90);
        goto LABEL_297;
      }

      v220 = v413;
      sub_257BE401C(v424, v413, &qword_27F8F6D50);
      if ((*(v423 + 48))(v220, 1, v143) == 1)
      {
        sub_257BE4084(v220, &qword_27F8F6D50);
        goto LABEL_301;
      }

      v329 = v410;
      sub_257C9CF58(v220, v410, type metadata accessor for MAGOutputEvent);
      v330 = MAGOutputEvent.itemIDs.getter();
      v331 = MAGOutputEvent.itemIDs.getter();
      if (v330)
      {
        if (v331)
        {
          v332 = sub_257C943E4(v330, v331);

          if (v332)
          {
LABEL_246:
            v355 = v404;
            sub_257C9A79C(v329 + v143[5], v404, type metadata accessor for MAGOutputEvent.EventType);
            if (swift_getEnumCaseMultiPayload() == 4)
            {
              v356 = *(v355 + 16);
              v437 = *v355;
              v438 = v356;
              v357 = *(v355 + 48);
              v439 = *(v355 + 32);
              v440 = v357;
              v441 = *(v355 + 64);
              v358 = *(v355 + 96);
              if (v437)
              {
                v359 = *(v355 + 80);
                v431 = v437;
                v433 = v438;
                v434 = v439;
                v435 = v440;
                v436 = v441;
                sub_257C97430(&v431, v358, 1, &v448, v359);
                v360 = v448;
                v361 = v449;
                v362 = v450;
                v363 = v451;
                v364 = v452;
                v365 = v453;

                sub_257C9A804(v329, type metadata accessor for MAGOutputEvent);
                sub_257BE4084(&v437, &qword_27F8F9C90);
LABEL_302:
                v431 = v360;
                v432 = v361;
                *&v433 = v362;
                *(&v433 + 1) = v363;
                *&v434 = v364;
                *(&v434 + 1) = v365;
                if (v443)
                {
                  *&v437 = v443;
                  v438 = v444;
                  v439 = v445;
                  v440 = v446;
                  v441 = v447;
                  v395 = v443;
                  sub_257C97430(&v437, v142, 1, &v454, v426);

                  v396 = v455;
                  if (v455)
                  {
                    v427 = v361;
                    v397 = v459;
                    v425 = v458;
                    v426.i64[0] = v360;
                    v398 = v456;
                    v399 = v457;
                    v400 = v454;
                    sub_257BE4084(&v443, &qword_27F8F9C90);
                    sub_257C98BE4(v400, v396, v398, v399, v425, v397, &v431);
                    sub_257C9CF08(v426.i64[0], v427);

                    sub_257BE4084(&v443, &qword_27F8F9C90);
                    goto LABEL_297;
                  }

                  sub_257C9CF08(v360, v361);
                  sub_257BE4084(&v443, &qword_27F8F9C90);
                }

                else
                {

                  sub_257C9CF08(v360, v361);
                }

                v401 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6D60);
                v380 = v428;
                v428[3] = v401;
                v380[4] = sub_257BD2D4C(&qword_27F8F6D68, &qword_27F8F6D60);
                sub_257BE4084(&v443, &qword_27F8F9C90);
                goto LABEL_308;
              }

              sub_257C9A804(v329, type metadata accessor for MAGOutputEvent);
            }

            else
            {
              sub_257C9A804(v329, type metadata accessor for MAGOutputEvent);
              sub_257C9A804(v355, type metadata accessor for MAGOutputEvent.EventType);
            }

LABEL_301:
            v360 = 0;
            v361 = 0;
            v362 = 0;
            v363 = 0;
            v364 = 0;
            v365 = 0;
            goto LABEL_302;
          }

LABEL_270:
          sub_257C9A804(v329, type metadata accessor for MAGOutputEvent);
          goto LABEL_301;
        }
      }

      else if (!v331)
      {
        goto LABEL_246;
      }

      goto LABEL_270;
    case 5u:
      sub_257C9A79C(v429, v40, type metadata accessor for MAGOutputEvent.EventType);
      v50 = v40->i64[0];
      v426 = v40[1];
      v85 = v40[2].u64[0];
      v86 = v427;
      if (*(v430 + v427[7]))
      {
        v87 = v415;
        sub_257BE401C(v424, v415, &qword_27F8F6D50);
        if ((*(v423 + 48))(v87, 1, v86) == 1)
        {
          sub_257BE4084(v87, &qword_27F8F6D50);
          v88 = 0;
          v89 = 0;
          v90 = 0;
          v91 = 0;
          v92 = 0;
          v93 = 0;
          goto LABEL_252;
        }

        v425 = v85;
        v268 = v411;
        sub_257C9CF58(v87, v411, type metadata accessor for MAGOutputEvent);
        v269 = MAGOutputEvent.itemIDs.getter();
        v270 = MAGOutputEvent.itemIDs.getter();
        if (v269)
        {
          if (!v270)
          {

            sub_257C9A804(v268, type metadata accessor for MAGOutputEvent);
            v88 = 0;
            v89 = 0;
            v90 = 0;
            v91 = 0;
            v92 = 0;
            v93 = 0;
            goto LABEL_251;
          }

          v271 = sub_257C943E4(v269, v270);

          if (v271)
          {
            goto LABEL_232;
          }
        }

        else
        {
          if (!v270)
          {
LABEL_232:
            v346 = v407;
            sub_257C9A79C(v268 + v86[5], v407, type metadata accessor for MAGOutputEvent.EventType);
            if (swift_getEnumCaseMultiPayload() == 5)
            {
              v347 = *v346;
              v348 = *(v346 + 16);
              v423 = *(v346 + 32);
              sub_257C97B70(v347, v423, 1, &v431, v348);
              v88 = v431;
              v349 = v268;
              v89 = v432;
              v350 = *(&v433 + 1);
              v424 = v433;
              v351 = v434;

              sub_257C9A804(v349, type metadata accessor for MAGOutputEvent);
              v93 = *(&v351 + 1);
              v92 = v351;
              v91 = v350;
              v90 = v424;
LABEL_251:
              v85 = v425;
LABEL_252:
              *&v443 = v88;
              *(&v443 + 1) = v89;
              *&v444 = v90;
              *(&v444 + 1) = v91;
              *&v445 = v92;
              *(&v445 + 1) = v93;
              v425 = v93;
              sub_257C97B70(v50, v85, 1, &v437, v426);

              if (*(&v437 + 1))
              {
                sub_257C98BE4(v437, *(&v437 + 1), v438, *(&v438 + 1), v439, *(&v439 + 1), &v443);
                sub_257C9CF08(v88, v89);
              }

              else
              {
                sub_257C9CF08(v88, v89);
                v457 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6D60);
                v458 = sub_257BD2D4C(&qword_27F8F6D68, &qword_27F8F6D60);
                v454 = MEMORY[0x277D84F90];
              }

              v366 = *(v430 + v427[6]);
              v367 = [objc_opt_self() sharedInstance];
              v368 = v367;
              if (v366 == 2)
              {
                v369 = [v367 liveRecognitionActivity];

                if (v369)
                {
                  v370 = [v369 furnitureFeedbacksSpeech];

                  v159 = &v454;
                  if (v370)
                  {
                    goto LABEL_182;
                  }

                  goto LABEL_295;
                }
              }

              else
              {
                v371 = [v367 liveRecognitionFurnitureFeedbacks];

                if (v371)
                {
                  sub_257BD2C2C(0, &qword_281543DC0);
                  sub_257C9CE74();
                  v372 = sub_257ECFA70();

                  v373 = sub_257ECFAC0();
                  v374 = sub_257C409E8(v373, v372);

                  if (v374)
                  {
                    v159 = &v454;
                    goto LABEL_182;
                  }
                }
              }

              v159 = &v454;
              goto LABEL_295;
            }

            sub_257C9A804(v268, type metadata accessor for MAGOutputEvent);
            v333 = type metadata accessor for MAGOutputEvent.EventType;
            v334 = v346;
LABEL_250:
            sub_257C9A804(v334, v333);
            v88 = 0;
            v89 = 0;
            v90 = 0;
            v91 = 0;
            v92 = 0;
            v93 = 0;
            goto LABEL_251;
          }
        }

        v333 = type metadata accessor for MAGOutputEvent;
        v334 = v268;
        goto LABEL_250;
      }

      v171 = (*(v430 + v427[8]) + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__selectedObjectUnderstandingFeedbacks);
      swift_beginAccess();
      v172 = v171[1];
      v173 = v171[2];
      *&v443 = *v171;
      *(&v443 + 1) = v172;
      *&v444 = v173;
      v174 = qword_2815447E0;

      if (v174 != -1)
      {
        goto LABEL_329;
      }

      goto LABEL_61;
    case 6u:
      v108 = v417;
      sub_257C9A79C(v429, v417, type metadata accessor for MAGOutputEvent.EventType);
      v109 = *v108;
      v110 = *(v108 + 16);
      v111 = v427;
      v112 = v430;
      if ((*(v430 + v427[7]) & 1) == 0)
      {
        v426 = v110;
        v196 = (*(v430 + v427[8]) + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__selectedObjectUnderstandingFeedbacks);
        swift_beginAccess();
        v197 = v196[1];
        v198 = v196[2];
        *&v437 = *v196;
        *(&v437 + 1) = v197;
        *&v438 = v198;
        v199 = qword_2815447E0;

        if (v199 != -1)
        {
          v200 = swift_once();
        }

        MEMORY[0x28223BE20](v200);
        *(&v402 - 2) = &v437;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F4B90);
        sub_257ECFD50();

        v201 = sub_257C592D0(1u, v431);

        if (v201)
        {
          sub_257C8D780(v109, v424, v428, v426);
        }

        else
        {
          v280 = v428;
          v428[4] = 0;
          *v280 = 0u;
          v280[1] = 0u;
        }

        goto LABEL_96;
      }

      sub_257C8D780(v109, v424, &v443, v110);

      v113 = *(v112 + v111[6]);
      v114 = [objc_opt_self() sharedInstance];
      v115 = v114;
      if (v113 != 2)
      {
LABEL_167:
        v279 = [v114 liveRecognitionFurnitureFeedbacks];
        goto LABEL_179;
      }

LABEL_36:
      v137 = [v114 liveRecognitionActivity];

      if (!v137)
      {
        goto LABEL_211;
      }

      v138 = [v137 furnitureFeedbacksSpeech];
      goto LABEL_52;
    case 7u:
      sub_257C9A79C(v429, v418, type metadata accessor for MAGOutputEvent.EventType);
      if ((*(v430 + v427[7]) & 1) == 0)
      {
        v202 = (*(v430 + v427[8]) + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__selectedImageCaptionFeedbacks);
        swift_beginAccess();
        v203 = v202[1];
        v204 = v202[2];
        *&v437 = *v202;
        *(&v437 + 1) = v203;
        *&v438 = v204;
        v205 = qword_2815447E0;

        if (v205 != -1)
        {
          v206 = swift_once();
        }

        MEMORY[0x28223BE20](v206);
        *(&v402 - 2) = &v437;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F8470);
        sub_257ECFD50();

        v207 = sub_257C592E8(1, v431);

        if (v207)
        {
          goto LABEL_171;
        }

        goto LABEL_95;
      }

      v116 = *(v430 + v427[6]);
      v117 = [objc_opt_self() sharedInstance];
      v118 = v117;
      if (v116 == 2)
      {
        v119 = [v117 liveRecognitionActivity];

        if (!v119)
        {
          goto LABEL_153;
        }

        if ([v119 sceneFeedbacksSpeech])
        {
          v120 = v405;
          sub_257ECD1B0();
          v121 = MEMORY[0x277D70398];
          v122 = v428;
          v123 = v426.i64[0];
          v428[3] = v426.i64[0];
          v122[4] = v121;
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v122);
          (*(v406 + 32))(boxed_opaque_existential_1, v120, v123);

          goto LABEL_297;
        }

        goto LABEL_296;
      }

      v281 = [v117 liveRecognitionSceneFeedbacks];

      if (!v281)
      {
        goto LABEL_153;
      }

      sub_257BD2C2C(0, &qword_281543DC0);
      sub_257C9CE74();
      v282 = sub_257ECFA70();

      v283 = sub_257ECFAC0();
      v284 = sub_257C409E8(v283, v282);

      if ((v284 & 1) == 0)
      {
        goto LABEL_153;
      }

      goto LABEL_171;
    case 8u:
      v154 = sub_257C9A79C(v429, v419, type metadata accessor for MAGOutputEvent.EventType);
      v155 = v427;
      v156 = v430;
      if ((*(v430 + v427[7]) & 1) == 0)
      {
        v221 = v430;
        v222 = (*(v430 + v427[8]) + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__selectedPointSpeakFeedbacks);
        swift_beginAccess();
        v223 = v222[1];
        v224 = v222[2];
        *&v443 = *v222;
        *(&v443 + 1) = v223;
        *&v444 = v224;
        v225 = qword_2815447E0;

        if (v225 != -1)
        {
          v226 = swift_once();
        }

        MEMORY[0x28223BE20](v226);
        *(&v402 - 2) = &v443;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F90);
        sub_257ECFD50();

        v227 = sub_257C592D0(1u, v437);

        if (v227)
        {
          MEMORY[0x28223BE20](v228);
          *(&v402 - 2) = v221;
          *(&v438 + 1) = sub_257ECD1C0();
          *&v439 = MEMORY[0x277D703A0];
          __swift_allocate_boxed_opaque_existential_1(&v437);
          type metadata accessor for DetectedTextBlock();
          goto LABEL_218;
        }

LABEL_95:
        v229 = v428;
        v428[4] = 0;
        *v229 = 0u;
        v229[1] = 0u;
LABEL_96:

        goto LABEL_297;
      }

      MEMORY[0x28223BE20](v154);
      *(&v402 - 2) = v156;
      *(&v433 + 1) = sub_257ECD1C0();
      *&v434 = MEMORY[0x277D703A0];
      __swift_allocate_boxed_opaque_existential_1(&v431);
      type metadata accessor for DetectedTextBlock();
      sub_257ECD1D0();
      sub_257ECD130();
      __swift_destroy_boxed_opaque_existential_0(&v431);
      sub_257ECD130();
      __swift_destroy_boxed_opaque_existential_0(&v437);
      v157 = *(v156 + v155[6]);
      v158 = [objc_opt_self() sharedInstance];
      v115 = v158;
      if (v157 == 2)
      {
        v137 = [v158 liveRecognitionActivity];

        if (!v137)
        {
          goto LABEL_211;
        }

        v138 = [v137 pointAndSpeakFeedbacksSpeech];
LABEL_52:
        v84 = v138;

LABEL_53:
        v159 = &v443;
        if (!v84)
        {
          goto LABEL_295;
        }
      }

      else
      {
        v279 = [v158 liveRecognitionPointAndSpeakFeedbacks];
LABEL_179:
        v292 = v279;

        if (!v292 || (sub_257BD2C2C(0, &qword_281543DC0), sub_257C9CE74(), v293 = sub_257ECFA70(), v292, v294 = sub_257ECFAC0(), v295 = sub_257C409E8(v294, v293), v294, , (v295 & 1) == 0))
        {
LABEL_211:
          v159 = &v443;
LABEL_295:
          __swift_destroy_boxed_opaque_existential_0(v159);
          goto LABEL_296;
        }

LABEL_181:
        v159 = &v443;
      }

LABEL_182:
      sub_257BE40E4(v159, v428);
      goto LABEL_297;
    case 9u:
      v145 = v420;
      sub_257C9A79C(v429, v420, type metadata accessor for MAGOutputEvent.EventType);
      v86 = *v145;
      if (*(v430 + v427[6]))
      {
        if (*(v430 + v427[6]) != 1)
        {
          v249 = [objc_opt_self() sharedInstance];
          v250 = [v249 liveRecognitionActivity];

          if (v250)
          {
            if (![v250 textFeedbacksSpeech])
            {

              goto LABEL_296;
            }

            v427 = v250;
            v251 = *(v86 + 2);
            if (v251)
            {
              v85 = 0;
              v252 = MEMORY[0x277D84F90];
              while (v85 < *(v86 + 2))
              {
                v253 = *&v86[2 * v85 + 8];
                v254 = *(v253 + 16);
                v255 = v252[2];
                v256 = v255 + v254;
                if (__OFADD__(v255, v254))
                {
                  goto LABEL_315;
                }

                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                if (!isUniquelyReferenced_nonNull_native || v256 > v252[3] >> 1)
                {
                  if (v255 <= v256)
                  {
                    v258 = v255 + v254;
                  }

                  else
                  {
                    v258 = v255;
                  }

                  v252 = sub_257BFD440(isUniquelyReferenced_nonNull_native, v258, 1, v252);
                }

                if (*(v253 + 16))
                {
                  v50 = v252[2];
                  v259 = (v252[3] >> 1) - v50;
                  type metadata accessor for DetectedTextBlock();
                  if (v259 < v254)
                  {
                    goto LABEL_320;
                  }

                  swift_arrayInitWithCopy();

                  if (v254)
                  {
                    v260 = v252[2];
                    v235 = __OFADD__(v260, v254);
                    v261 = v260 + v254;
                    if (v235)
                    {
                      goto LABEL_326;
                    }

                    v252[2] = v261;
                  }
                }

                else
                {

                  if (v254)
                  {
                    goto LABEL_316;
                  }
                }

                if (v251 == ++v85)
                {
                  goto LABEL_266;
                }
              }

              goto LABEL_314;
            }

LABEL_266:

            MEMORY[0x28223BE20](v378);
            *(&v402 - 2) = v430;
            *(&v438 + 1) = sub_257ECD1C0();
            *&v439 = MEMORY[0x277D703A0];
            __swift_allocate_boxed_opaque_existential_1(&v437);
            type metadata accessor for DetectedTextBlock();
            sub_257ECD1D0();
            sub_257ECD130();
            __swift_destroy_boxed_opaque_existential_0(&v437);
            sub_257ECD130();

            goto LABEL_219;
          }

          goto LABEL_153;
        }

        if (*(v430 + v427[7]))
        {
          v146 = [objc_opt_self() sharedInstance];
          v147 = [v146 liveRecognitionTextFeedbacks];

          if (v147)
          {
            sub_257BD2C2C(0, &qword_281543DC0);
            sub_257C9CE74();
            v148 = sub_257ECFA70();

            v149 = sub_257ECFAC0();
            v150 = sub_257C409E8(v149, v148);

            if (v150)
            {
              v151 = *(v86 + 2);
              if (v151)
              {
                v152 = 0;
                v85 = (v86 + 8);
                v153 = MEMORY[0x277D84F90];
                while (v152 < *(v86 + 2))
                {
                  v76 = *(v85 + 8 * v152);
                  v230 = *(v76 + 16);
                  v231 = v153[2];
                  v50 = (v231 + v230);
                  if (__OFADD__(v231, v230))
                  {
                    goto LABEL_323;
                  }

                  v232 = swift_isUniquelyReferenced_nonNull_native();
                  if (!v232 || v50 > v153[3] >> 1)
                  {
                    if (v231 <= v50)
                    {
                      v233 = v231 + v230;
                    }

                    else
                    {
                      v233 = v231;
                    }

                    v153 = sub_257BFD440(v232, v233, 1, v153);
                  }

                  if (*(v76 + 16))
                  {
                    v77 = v153[2];
                    v50 = ((v153[3] >> 1) - v77);
                    type metadata accessor for DetectedTextBlock();
                    if (v50 < v230)
                    {
                      goto LABEL_327;
                    }

                    swift_arrayInitWithCopy();

                    if (v230)
                    {
                      v234 = v153[2];
                      v235 = __OFADD__(v234, v230);
                      v236 = v234 + v230;
                      if (v235)
                      {
                        __break(1u);
LABEL_331:
                        v266 = swift_once();
LABEL_150:
                        MEMORY[0x28223BE20](v266);
                        *(&v402 - 2) = &v437;
                        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5880);
                        sub_257ECFD50();

                        v267 = sub_257C592D0(1u, v431);

                        if (v267)
                        {
                          sub_257C8C0BC(v77, v76, v428);

                          sub_257C9A804(v77, type metadata accessor for DetectedDoor);
                          goto LABEL_297;
                        }

LABEL_152:
                        sub_257C9A804(v77, type metadata accessor for DetectedDoor);
                        goto LABEL_153;
                      }

                      v153[2] = v236;
                    }
                  }

                  else
                  {

                    if (v230)
                    {
                      goto LABEL_325;
                    }
                  }

                  if (v151 == ++v152)
                  {
                    goto LABEL_217;
                  }
                }

                __break(1u);
LABEL_323:
                __break(1u);
LABEL_324:
                __break(1u);
LABEL_325:
                __break(1u);
LABEL_326:
                __break(1u);
LABEL_327:
                __break(1u);
LABEL_328:
                __break(1u);
LABEL_329:
                v175 = swift_once();
LABEL_61:
                MEMORY[0x28223BE20](v175);
                *(&v402 - 2) = &v443;
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F4B90);
                sub_257ECFD50();

                v176 = sub_257C592D0(1u, v437);

                if (!v176)
                {
                  v272 = v428;
                  v428[4] = 0;
                  *v272 = 0u;
                  v272[1] = 0u;

                  goto LABEL_297;
                }

                v177 = v412;
                sub_257BE401C(v424, v412, &qword_27F8F6D50);
                if ((*(v423 + 48))(v177, 1, v86) == 1)
                {
                  sub_257BE4084(v177, &qword_27F8F6D50);
LABEL_64:
                  v178 = 0;
                  v179 = 0;
                  v180 = 0;
                  v181 = 0;
                  v182 = 0;
                  v183 = 0;
LABEL_273:
                  *&v443 = v178;
                  *(&v443 + 1) = v179;
                  *&v444 = v180;
                  *(&v444 + 1) = v181;
                  *&v445 = v182;
                  *(&v445 + 1) = v183;
                  sub_257C97B70(v50, v85, 1, &v437, v426);

                  if (*(&v437 + 1))
                  {
                    v427 = v183;
                    sub_257C98BE4(v437, *(&v437 + 1), v438, *(&v438 + 1), v439, *(&v439 + 1), &v443);
                    sub_257C9CF08(v178, v179);

                    goto LABEL_297;
                  }

                  sub_257C9CF08(v178, v179);
                  v379 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6D60);
                  v380 = v428;
                  v428[3] = v379;
                  v380[4] = sub_257BD2D4C(&qword_27F8F6D68, &qword_27F8F6D60);
LABEL_308:
                  *v380 = MEMORY[0x277D84F90];
                  goto LABEL_297;
                }

                v324 = v409;
                sub_257C9CF58(v177, v409, type metadata accessor for MAGOutputEvent);
                v325 = MAGOutputEvent.itemIDs.getter();
                v326 = MAGOutputEvent.itemIDs.getter();
                if (v325)
                {
                  if (!v326)
                  {

                    sub_257C9A804(v324, type metadata accessor for MAGOutputEvent);
                    goto LABEL_64;
                  }

                  v327 = sub_257C943E4(v325, v326);

                  if (v327)
                  {
                    goto LABEL_263;
                  }
                }

                else
                {
                  if (!v326)
                  {
LABEL_263:
                    v375 = v403;
                    sub_257C9A79C(v324 + v86[5], v403, type metadata accessor for MAGOutputEvent.EventType);
                    if (swift_getEnumCaseMultiPayload() == 5)
                    {
                      v425 = v85;
                      sub_257C97B70(v375->i64[0], v375[2].i64[0], 1, &v431, v375[1]);
                      v427 = v431;
                      v424 = v432;
                      v376 = v324;
                      v181 = *(&v433 + 1);
                      v180 = v433;
                      v183 = *(&v434 + 1);
                      v182 = v434;
                      v85 = v425;

                      v377 = v376;
                      v178 = v427;
                      v179 = v424;
                      sub_257C9A804(v377, type metadata accessor for MAGOutputEvent);
                      goto LABEL_273;
                    }

                    sub_257C9A804(v324, type metadata accessor for MAGOutputEvent);
                    v353 = type metadata accessor for MAGOutputEvent.EventType;
                    v354 = v375;
LABEL_272:
                    sub_257C9A804(v354, v353);
                    v178 = 0;
                    v179 = 0;
                    v180 = 0;
                    v181 = 0;
                    v182 = 0;
                    v183 = 0;
                    goto LABEL_273;
                  }
                }

                v353 = type metadata accessor for MAGOutputEvent;
                v354 = v324;
                goto LABEL_272;
              }

              goto LABEL_217;
            }

LABEL_212:
            v323 = v428;
            v428[4] = 0;
            *v323 = 0u;
            v323[1] = 0u;

            goto LABEL_297;
          }

LABEL_153:

          goto LABEL_296;
        }

        v302 = (*(v430 + v427[8]) + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__selectedTextDetectionFeedbacks);
        swift_beginAccess();
        v303 = v302[1];
        v304 = v302[2];
        *&v443 = *v302;
        *(&v443 + 1) = v303;
        *&v444 = v304;
        v305 = qword_2815447E0;

        if (v305 != -1)
        {
          v306 = swift_once();
        }

        MEMORY[0x28223BE20](v306);
        *(&v402 - 2) = &v443;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5540);
        sub_257ECFD50();

        v307 = sub_257C592E8(1, v437);

        if (!v307)
        {
          goto LABEL_212;
        }

        v308 = *(v86 + 2);
        if (v308)
        {
          v85 = 0;
          v309 = MEMORY[0x277D84F90];
          while (v85 < *(v86 + 2))
          {
            v310 = *&v86[2 * v85 + 8];
            v311 = *(v310 + 16);
            v312 = v309[2];
            v313 = v312 + v311;
            if (__OFADD__(v312, v311))
            {
              goto LABEL_318;
            }

            v314 = swift_isUniquelyReferenced_nonNull_native();
            if (!v314 || v313 > v309[3] >> 1)
            {
              if (v312 <= v313)
              {
                v315 = v312 + v311;
              }

              else
              {
                v315 = v312;
              }

              v309 = sub_257BFD440(v314, v315, 1, v309);
            }

            if (*(v310 + 16))
            {
              v50 = v309[2];
              v316 = (v309[3] >> 1) - v50;
              type metadata accessor for DetectedTextBlock();
              if (v316 < v311)
              {
                goto LABEL_324;
              }

              swift_arrayInitWithCopy();

              if (v311)
              {
                v317 = v309[2];
                v235 = __OFADD__(v317, v311);
                v318 = v317 + v311;
                if (v235)
                {
                  goto LABEL_328;
                }

                v309[2] = v318;
              }
            }

            else
            {

              if (v311)
              {
                goto LABEL_319;
              }
            }

            if (v308 == ++v85)
            {
              goto LABEL_217;
            }
          }

          goto LABEL_317;
        }

LABEL_217:

        MEMORY[0x28223BE20](v328);
        *(&v402 - 2) = v430;
        *(&v438 + 1) = sub_257ECD1C0();
        *&v439 = MEMORY[0x277D703A0];
        __swift_allocate_boxed_opaque_existential_1(&v437);
        type metadata accessor for DetectedTextBlock();
LABEL_218:
        sub_257ECD1D0();
        sub_257ECD130();
        __swift_destroy_boxed_opaque_existential_0(&v437);
        sub_257ECD130();
LABEL_219:
        __swift_destroy_boxed_opaque_existential_0(&v443);
        goto LABEL_297;
      }

      v237 = *(v86 + 2);
      if (!v237)
      {
        goto LABEL_217;
      }

      v238 = 0;
      v239 = MEMORY[0x277D84F90];
      break;
    case 0xAu:
    case 0x10u:
      v62 = v429;
      sub_257C9A79C(v429, v425, type metadata accessor for MAGOutputEvent.EventType);
      sub_257C9A804(v62, type metadata accessor for MAGOutputEvent.EventType);
      v63 = MEMORY[0x277D70398];
      v64 = v428;
      v428[3] = v426.i64[0];
      v64[4] = v63;
      __swift_allocate_boxed_opaque_existential_1(v64);
      return sub_257ECD1B0();
    case 0xBu:
    case 0xCu:
      v66 = v429;
      sub_257C9A79C(v429, v425, type metadata accessor for MAGOutputEvent.EventType);
      v67 = MEMORY[0x277D70398];
      v68 = v428;
      v428[3] = v426.i64[0];
      v68[4] = v67;
      __swift_allocate_boxed_opaque_existential_1(v68);
      sub_257ECD1B0();
      v69 = v66;
      return sub_257C9A804(v69, type metadata accessor for MAGOutputEvent.EventType);
    case 0xDu:
      v125 = v429;
      v126 = v425;
      sub_257C9A79C(v429, v425, type metadata accessor for MAGOutputEvent.EventType);
      v127 = *v126;
      sub_257D3EF70(v428);

      v69 = v125;
      return sub_257C9A804(v69, type metadata accessor for MAGOutputEvent.EventType);
    case 0xFu:
      v128 = v421;
      sub_257C9A79C(v429, v421, type metadata accessor for MAGOutputEvent.EventType);
      v129 = *v128;
      v130 = 1 << *v128;
      if ((v130 & 0x7EFE) != 0)
      {
        LOBYTE(v443) = *v128;
      }

      else if ((v130 & 0x101) != 0)
      {
        v296 = (*(v430 + v427[8]) + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__selectedTextDetectionFeedbacks);
        swift_beginAccess();
        v297 = v296[1];
        v298 = v296[2];
        *&v437 = *v296;
        *(&v437 + 1) = v297;
        *&v438 = v298;
        v299 = qword_2815447E0;

        if (v299 != -1)
        {
          v300 = swift_once();
        }

        MEMORY[0x28223BE20](v300);
        *(&v402 - 2) = &v437;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5540);
        sub_257ECFD50();

        v301 = sub_257C592E8(1, v431);

        if (!v301)
        {
          goto LABEL_296;
        }

        LOBYTE(v437) = v129;
      }

      else
      {
        if (!UIAccessibilityIsVoiceOverRunning())
        {
          goto LABEL_296;
        }

        LOBYTE(v443) = 15;
      }

      MAGOutputAnnouncement.displayContent.getter();
LABEL_171:
      v285 = MEMORY[0x277D70398];
      v286 = v428;
      v428[3] = v426.i64[0];
      v286[4] = v285;
      __swift_allocate_boxed_opaque_existential_1(v286);
      sub_257ECD1B0();
      goto LABEL_297;
    case 0x11u:
    case 0x16u:
    case 0x17u:
      type metadata accessor for MAGUtilities();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v167 = [objc_opt_self() bundleForClass_];
      v168 = sub_257ECF4C0();
      v169 = sub_257ECF4C0();
      v170 = [v167 localizedStringForKey:v168 value:0 table:v169];

      sub_257ECF500();
      goto LABEL_171;
    case 0x12u:
      v160 = (*(v430 + v427[8]) + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__selectedPauseDetectionModeFeedbacks);
      swift_beginAccess();
      v161 = v160[1];
      v162 = v160[2];
      *&v437 = *v160;
      *(&v437 + 1) = v161;
      *&v438 = v162;
      v163 = qword_2815447E0;

      if (v163 != -1)
      {
        v164 = swift_once();
      }

      MEMORY[0x28223BE20](v164);
      *(&v402 - 2) = &v437;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7080);
      sub_257ECFD50();

      v165 = sub_257C592D0(0, v431);

      if (v165)
      {
        goto LABEL_58;
      }

      goto LABEL_296;
    case 0x13u:
      v70 = (*(v430 + v427[8]) + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__selectedPauseDetectionModeFeedbacks);
      swift_beginAccess();
      v71 = v70[1];
      v72 = v70[2];
      *&v437 = *v70;
      *(&v437 + 1) = v71;
      *&v438 = v72;
      v73 = qword_2815447E0;

      if (v73 == -1)
      {
        goto LABEL_5;
      }

      goto LABEL_321;
    default:
      goto LABEL_296;
  }

  while (v238 < *(v86 + 2))
  {
    v240 = *&v86[2 * v238 + 8];
    v241 = *(v240 + 16);
    v242 = v239[2];
    v243 = v242 + v241;
    if (__OFADD__(v242, v241))
    {
      goto LABEL_310;
    }

    v244 = swift_isUniquelyReferenced_nonNull_native();
    if (v244 && v243 <= v239[3] >> 1)
    {
      if (*(v240 + 16))
      {
        goto LABEL_126;
      }
    }

    else
    {
      if (v242 <= v243)
      {
        v245 = v242 + v241;
      }

      else
      {
        v245 = v242;
      }

      v239 = sub_257BFD440(v244, v245, 1, v239);
      if (*(v240 + 16))
      {
LABEL_126:
        v246 = (v239[3] >> 1) - v239[2];
        type metadata accessor for DetectedTextBlock();
        if (v246 < v241)
        {
          goto LABEL_312;
        }

        swift_arrayInitWithCopy();

        if (v241)
        {
          v247 = v239[2];
          v235 = __OFADD__(v247, v241);
          v248 = v247 + v241;
          if (v235)
          {
            goto LABEL_313;
          }

          v239[2] = v248;
        }

        goto LABEL_115;
      }
    }

    if (v241)
    {
      goto LABEL_311;
    }

LABEL_115:
    if (v237 == ++v238)
    {
      goto LABEL_217;
    }
  }

  __break(1u);
LABEL_310:
  __break(1u);
LABEL_311:
  __break(1u);
LABEL_312:
  __break(1u);
LABEL_313:
  __break(1u);
LABEL_314:
  __break(1u);
LABEL_315:
  __break(1u);
LABEL_316:
  __break(1u);
LABEL_317:
  __break(1u);
LABEL_318:
  __break(1u);
LABEL_319:
  __break(1u);
LABEL_320:
  __break(1u);
LABEL_321:
  v74 = swift_once();
LABEL_5:
  MEMORY[0x28223BE20](v74);
  *(&v402 - 2) = &v437;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7080);
  sub_257ECFD50();

  v75 = sub_257C592D0(0, v431);

  if (v75)
  {
LABEL_58:
    String.localized.getter();
    goto LABEL_171;
  }

LABEL_296:
  v394 = v428;
  v428[4] = 0;
  *v394 = 0u;
  v394[1] = 0u;
LABEL_297:
  v69 = v429;
  return sub_257C9A804(v69, type metadata accessor for MAGOutputEvent.EventType);
}

uint64_t sub_257C8AB74@<X0>(void *a1@<X0>, Swift::Int32 a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v57 = a3;
  v58 = a4;
  v55 = type metadata accessor for MAGOutputEvent.EventType(0);
  MEMORY[0x28223BE20](v55);
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6D50);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v53 - v9;
  v11 = type metadata accessor for MAGOutputEvent(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v15 = [a1 faceName];
    if (v15)
    {
      v16 = v15;
      v17 = sub_257ECF500();
      v19 = v18;

      v20 = generateTextToDisplay(depth:longUnitStyle:)(a2, 1);
      countAndFlagsBits = v20._countAndFlagsBits;
      object = v20._object;
      v56 = v17;
      goto LABEL_6;
    }
  }

  v54 = v14;
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v24 = [objc_opt_self() bundleForClass_];
  v25 = sub_257ECF4C0();
  v26 = sub_257ECF4C0();
  v27 = [v24 localizedStringForKey:v25 value:0 table:v26];

  sub_257ECF500();
  v28 = sub_257ECF540();

  v29 = generateTextToDisplay(depth:longUnitStyle:)(a2, 1);
  object = v29._object;
  if (a1)
  {
    v56 = v28;
    countAndFlagsBits = v29._countAndFlagsBits;
    v19 = 0;
    v17 = 0;
    v14 = v54;
LABEL_6:
    sub_257BE401C(v57, v10, &qword_27F8F6D50);
    if ((*(v12 + 48))(v10, 1, v11) == 1)
    {

      sub_257BE4084(v10, &qword_27F8F6D50);
LABEL_25:
      v43 = sub_257ECD1A0();
      v44 = MEMORY[0x277D70398];
      *(&v64 + 1) = v43;
      v65 = MEMORY[0x277D70398];
      __swift_allocate_boxed_opaque_existential_1(&v63);
      sub_257ECD1B0();
      sub_257ECD130();
      __swift_destroy_boxed_opaque_existential_0(&v63);
      *(&v64 + 1) = v43;
      v65 = v44;
      __swift_allocate_boxed_opaque_existential_1(&v63);
      sub_257ECD1B0();
      sub_257ECD130();
      __swift_destroy_boxed_opaque_existential_0(&v63);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5A00);
      v45 = swift_allocObject();
      *(v45 + 16) = xmmword_257ED9BD0;
      sub_257C024BC(v62, v45 + 32);
      sub_257C024BC(v61, v45 + 72);
      MEMORY[0x259C6FC60](v60, v45);

      sub_257ECD130();
      __swift_destroy_boxed_opaque_existential_0(v60);
      __swift_destroy_boxed_opaque_existential_0(v61);
      __swift_destroy_boxed_opaque_existential_0(v62);
LABEL_26:
      sub_257ECD130();
      sub_257C024BC(v62, v61);
      sub_257ECD180();
      sub_257BE4084(v61, &qword_27F8F6E68);
      __swift_destroy_boxed_opaque_existential_0(v62);
      __swift_destroy_boxed_opaque_existential_0(&v63);
      goto LABEL_27;
    }

    sub_257C9CF58(v10, v14, type metadata accessor for MAGOutputEvent);
    sub_257C9A79C(&v14[*(v11 + 20)], v7, type metadata accessor for MAGOutputEvent.EventType);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_257C9A804(v14, type metadata accessor for MAGOutputEvent);

      v30 = type metadata accessor for MAGOutputEvent.EventType;
      v31 = v7;
LABEL_24:
      sub_257C9A804(v31, v30);
      goto LABEL_25;
    }

    v32 = object;
    v33 = *v7;
    v34 = *(v7 + 2);
    v35 = MAGOutputEvent.itemIDs.getter();
    v54 = v14;
    v36 = MAGOutputEvent.itemIDs.getter();
    if (v35)
    {
      if (v36)
      {
        v37 = sub_257C943E4(v35, v36);

        if ((v37 & 1) == 0)
        {

LABEL_23:

          v30 = type metadata accessor for MAGOutputEvent;
          v31 = v54;
          goto LABEL_24;
        }

LABEL_16:
        if (v33 && (v38 = [v33 faceName]) != 0)
        {
          v39 = v38;
          v40 = sub_257ECF500();
          v42 = v41;

          if (v19)
          {
            if (v40 == v17 && v19 == v42)
            {

LABEL_32:

              v47 = v32;
              v65 = 0;
              v63 = 0u;
              v64 = 0u;
              sub_257ECD180();
              sub_257BE4084(&v63, &qword_27F8F6E68);
              goto LABEL_33;
            }

            v48 = sub_257ED0640();

            if (v48)
            {
              goto LABEL_32;
            }

LABEL_30:
            v62[3] = sub_257ECD1A0();
            v62[4] = MEMORY[0x277D70398];
            __swift_allocate_boxed_opaque_existential_1(v62);
            sub_257ECD1B0();
            sub_257ECD130();
            __swift_destroy_boxed_opaque_existential_0(v62);
            sub_257ECD130();
            sub_257C024BC(v61, v60);
            sub_257ECD180();
            sub_257BE4084(v60, &qword_27F8F6E68);
            __swift_destroy_boxed_opaque_existential_0(v61);
            __swift_destroy_boxed_opaque_existential_0(&v63);
            v47 = v32;
LABEL_33:
            v49 = generateTextToDisplay(depth:longUnitStyle:)(v34, 1);
            if (countAndFlagsBits == v49._countAndFlagsBits && v47 == v49._object)
            {
            }

            else
            {
              v50 = sub_257ED0640();

              if ((v50 & 1) == 0)
              {
                v61[3] = sub_257ECD1A0();
                v61[4] = MEMORY[0x277D70398];
                __swift_allocate_boxed_opaque_existential_1(v61);
                sub_257ECD1B0();
                sub_257ECD130();
                __swift_destroy_boxed_opaque_existential_0(v61);
                sub_257ECD130();
                sub_257C024BC(v60, v59);
                sub_257ECD180();
                sub_257BE4084(v59, &qword_27F8F6E68);
                __swift_destroy_boxed_opaque_existential_0(v60);
                __swift_destroy_boxed_opaque_existential_0(&v63);
                v51 = v54;
                goto LABEL_39;
              }
            }

            v51 = v54;

            v65 = 0;
            v63 = 0u;
            v64 = 0u;
            sub_257ECD180();
            sub_257BE4084(&v63, &qword_27F8F6E68);
LABEL_39:
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5A00);
            v52 = swift_allocObject();
            *(v52 + 16) = xmmword_257ED9BD0;
            sub_257C024BC(v62, v52 + 32);
            sub_257C024BC(v61, v52 + 72);
            MEMORY[0x259C6FC60](v60, v52);

            sub_257ECD130();

            __swift_destroy_boxed_opaque_existential_0(v60);
            __swift_destroy_boxed_opaque_existential_0(v61);
            __swift_destroy_boxed_opaque_existential_0(v62);
            sub_257C9A804(v51, type metadata accessor for MAGOutputEvent);
            goto LABEL_26;
          }
        }

        else if (!v19)
        {
          goto LABEL_32;
        }

        goto LABEL_30;
      }
    }

    else if (!v36)
    {
      goto LABEL_16;
    }

    goto LABEL_23;
  }

  v65 = 0;
  v63 = 0u;
  v64 = 0u;
  sub_257ECD180();
  sub_257BE4084(&v63, &qword_27F8F6E68);
LABEL_27:
  sub_257ECD130();
  return __swift_destroy_boxed_opaque_existential_0(v66);
}

uint64_t sub_257C8B51C@<X0>(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v72 = a5;
  v73 = a3;
  LODWORD(countAndFlagsBits) = a2;
  v67 = type metadata accessor for MAGOutputEvent.EventType(0);
  MEMORY[0x28223BE20](v67);
  v10 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6D50);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v63 - v12;
  v14 = type metadata accessor for MAGOutputEvent(0);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v68 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v17 = [a1 faceName];
    if (v17)
    {
      v18 = v17;
      v19 = sub_257ECF500();
      v20 = v15;
      v21 = v14;
      v22 = a4;
      v23 = v10;
      v25 = v24;

      v26 = generateTextToDisplay(depth:longUnitStyle:)(countAndFlagsBits, 1);
      countAndFlagsBits = v26._countAndFlagsBits;
      object = v26._object;
      v70 = v25;
      v71 = v25;
      v10 = v23;
      v28 = v22;
      v14 = v21;
      v15 = v20;
      v64 = v19;
      v69 = v19;
      goto LABEL_6;
    }
  }

  v65 = a6;
  v66 = a4;
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v30 = [objc_opt_self() bundleForClass_];
  v31 = sub_257ECF4C0();
  v32 = sub_257ECF4C0();
  v33 = [v30 localizedStringForKey:v31 value:0 table:v32];

  sub_257ECF500();
  v34 = sub_257ECF540();
  v36 = v35;

  v37 = generateTextToDisplay(depth:longUnitStyle:)(countAndFlagsBits, 1);
  object = v37._object;
  if (a1)
  {
    v69 = v34;
    v70 = 0;
    v71 = v36;
    countAndFlagsBits = v37._countAndFlagsBits;
    v64 = 0;
    v28 = v66;
LABEL_6:
    sub_257BE401C(v72, v13, &qword_27F8F6D50);
    if ((*(v15 + 48))(v13, 1, v14) == 1)
    {

      sub_257BE4084(v13, &qword_27F8F6D50);
LABEL_26:
      v50 = sub_257ECD1A0();
      v51 = MEMORY[0x277D70398];
      *(&v81 + 1) = v50;
      v82 = MEMORY[0x277D70398];
      __swift_allocate_boxed_opaque_existential_1(&v80);
      sub_257ECD1B0();
      sub_257ECD130();
      __swift_destroy_boxed_opaque_existential_0(&v80);
      *(&v81 + 1) = v50;
      v82 = v51;
      __swift_allocate_boxed_opaque_existential_1(&v80);
      sub_257ECD1B0();
      sub_257ECD130();
      __swift_destroy_boxed_opaque_existential_0(&v80);
      *(&v81 + 1) = v50;
      v82 = v51;
      __swift_allocate_boxed_opaque_existential_1(&v80);

      sub_257ECD1B0();
      sub_257ECD130();
      __swift_destroy_boxed_opaque_existential_0(&v80);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5A00);
      v52 = swift_allocObject();
      *(v52 + 16) = xmmword_257EDBBA0;
      sub_257C024BC(v79, v52 + 32);
      sub_257C024BC(v78, v52 + 72);
      sub_257C024BC(v77, v52 + 112);
      MEMORY[0x259C6FC60](v76, v52);

      sub_257ECD130();
      __swift_destroy_boxed_opaque_existential_0(v76);
      __swift_destroy_boxed_opaque_existential_0(v77);
      __swift_destroy_boxed_opaque_existential_0(v78);
      __swift_destroy_boxed_opaque_existential_0(v79);
LABEL_27:
      sub_257ECD130();
      sub_257C024BC(v79, v78);
      sub_257ECD180();
      sub_257BE4084(v78, &qword_27F8F6E68);
      __swift_destroy_boxed_opaque_existential_0(v79);
      __swift_destroy_boxed_opaque_existential_0(&v80);
      goto LABEL_28;
    }

    v38 = object;
    v39 = v68;
    sub_257C9CF58(v13, v68, type metadata accessor for MAGOutputEvent);
    sub_257C9A79C(v39 + *(v14 + 20), v10, type metadata accessor for MAGOutputEvent.EventType);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_257C9A804(v39, type metadata accessor for MAGOutputEvent);

      sub_257C9A804(v10, type metadata accessor for MAGOutputEvent.EventType);
      goto LABEL_26;
    }

    v66 = v28;
    v40 = *v10;
    LODWORD(v65) = *(v10 + 2);
    v41 = *(v10 + 3);
    v67 = *(v10 + 2);
    v42 = MAGOutputEvent.itemIDs.getter();
    v43 = MAGOutputEvent.itemIDs.getter();
    if (v42)
    {
      if (!v43)
      {

        goto LABEL_25;
      }

      v72 = v41;
      v44 = sub_257C943E4(v42, v43);

      if ((v44 & 1) == 0)
      {

LABEL_17:

LABEL_25:
        sub_257C9A804(v39, type metadata accessor for MAGOutputEvent);
        goto LABEL_26;
      }
    }

    else
    {
      v72 = v41;
      if (v43)
      {

        goto LABEL_17;
      }
    }

    v63 = v40;
    if (v40 && (v45 = [v40 faceName]) != 0)
    {
      v46 = v45;
      v47 = sub_257ECF500();
      v49 = v48;

      if (v70)
      {
        if (v47 == v64 && v70 == v49)
        {

LABEL_30:

          v54 = v73;
          v55 = v65;
          v82 = 0;
          v80 = 0u;
          v81 = 0u;
          sub_257ECD180();
          sub_257BE4084(&v80, &qword_27F8F6E68);
LABEL_33:
          v56 = generateTextToDisplay(depth:longUnitStyle:)(v55, 1);
          if (countAndFlagsBits == v56._countAndFlagsBits && v38 == v56._object)
          {

            v57 = v66;
          }

          else
          {
            v58 = sub_257ED0640();

            v57 = v66;
            if ((v58 & 1) == 0)
            {
              v78[3] = sub_257ECD1A0();
              v78[4] = MEMORY[0x277D70398];
              __swift_allocate_boxed_opaque_existential_1(v78);
              sub_257ECD1B0();
              sub_257ECD130();
              __swift_destroy_boxed_opaque_existential_0(v78);
              sub_257ECD130();
              sub_257C024BC(v77, v76);
              sub_257ECD180();
              sub_257BE4084(v76, &qword_27F8F6E68);
              __swift_destroy_boxed_opaque_existential_0(v77);
              __swift_destroy_boxed_opaque_existential_0(&v80);
              goto LABEL_39;
            }
          }

          v82 = 0;
          v80 = 0u;
          v81 = 0u;
          sub_257ECD180();
          sub_257BE4084(&v80, &qword_27F8F6E68);
LABEL_39:
          v59 = v63;
          if (v67 == v54 && v72 == v57)
          {
          }

          else
          {
            v60 = sub_257ED0640();

            if ((v60 & 1) == 0)
            {
              v77[3] = sub_257ECD1A0();
              v77[4] = MEMORY[0x277D70398];
              __swift_allocate_boxed_opaque_existential_1(v77);

              sub_257ECD1B0();
              sub_257ECD130();
              __swift_destroy_boxed_opaque_existential_0(v77);
              sub_257ECD130();
              sub_257C024BC(v76, v75);
              sub_257ECD180();
              sub_257BE4084(v75, &qword_27F8F6E68);
              __swift_destroy_boxed_opaque_existential_0(v76);
              __swift_destroy_boxed_opaque_existential_0(&v80);
              goto LABEL_45;
            }
          }

          v82 = 0;
          v80 = 0u;
          v81 = 0u;
          sub_257ECD180();
          sub_257BE4084(&v80, &qword_27F8F6E68);
LABEL_45:
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5A00);
          v61 = swift_allocObject();
          *(v61 + 16) = xmmword_257EDBBA0;
          sub_257C024BC(v79, v61 + 32);
          sub_257C024BC(v78, v61 + 72);
          sub_257C024BC(v77, v61 + 112);
          MEMORY[0x259C6FC60](v76, v61);

          sub_257ECD130();

          __swift_destroy_boxed_opaque_existential_0(v76);
          __swift_destroy_boxed_opaque_existential_0(v77);
          __swift_destroy_boxed_opaque_existential_0(v78);
          __swift_destroy_boxed_opaque_existential_0(v79);
          sub_257C9A804(v39, type metadata accessor for MAGOutputEvent);
          goto LABEL_27;
        }

        v62 = sub_257ED0640();

        if (v62)
        {
          goto LABEL_30;
        }

LABEL_32:
        v79[3] = sub_257ECD1A0();
        v79[4] = MEMORY[0x277D70398];
        __swift_allocate_boxed_opaque_existential_1(v79);
        sub_257ECD1B0();
        sub_257ECD130();
        __swift_destroy_boxed_opaque_existential_0(v79);
        sub_257ECD130();
        sub_257C024BC(v78, v77);
        sub_257ECD180();
        sub_257BE4084(v77, &qword_27F8F6E68);
        __swift_destroy_boxed_opaque_existential_0(v78);
        __swift_destroy_boxed_opaque_existential_0(&v80);
        v54 = v73;
        v55 = v65;
        goto LABEL_33;
      }
    }

    else if (!v70)
    {
      goto LABEL_30;
    }

    goto LABEL_32;
  }

  v82 = 0;
  v80 = 0u;
  v81 = 0u;
  sub_257ECD180();
  sub_257BE4084(&v80, &qword_27F8F6E68);
LABEL_28:
  sub_257ECD130();
  return __swift_destroy_boxed_opaque_existential_0(v83);
}

uint64_t sub_257C8C0BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v69[1] = a3;
  *&v72 = sub_257C96638(a1);
  v73 = v6;
  v69[0] = type metadata accessor for DetectedDoor(0);
  v7 = (a1 + *(v69[0] + 44));
  v8 = *v7;
  v9 = *(a2 + 16);
  v10 = MEMORY[0x277D70398];
  v70 = a1;
  if (v9 < 2)
  {
    memset(v96, 0, 40);
    sub_257ECD180();
    sub_257BE4084(v96, &qword_27F8F6E68);
  }

  else
  {
    type metadata accessor for MAGUtilities();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v12 = [objc_opt_self() bundleForClass_];
    v13 = sub_257ECF4C0();
    v14 = sub_257ECF4C0();
    v15 = [v12 localizedStringForKey:v13 value:0 table:v14];

    sub_257ECF500();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F58E0);
    v16 = swift_allocObject();
    v17 = MEMORY[0x277D83B88];
    *(v16 + 16) = xmmword_257ED6D30;
    v18 = MEMORY[0x277D83C10];
    *(v16 + 56) = v17;
    *(v16 + 64) = v18;
    *(v16 + 32) = v9;
    sub_257ECF540();

    *(&v85 + 1) = sub_257ECD1A0();
    *&v86 = v10;
    __swift_allocate_boxed_opaque_existential_1(&v84);
    sub_257ECD1B0();
    sub_257ECD130();
    __swift_destroy_boxed_opaque_existential_0(&v84);
    sub_257ECD130();
    sub_257C024BC(&v84, &v79);
    sub_257ECD180();
    sub_257BE4084(&v79, &qword_27F8F6E68);
    __swift_destroy_boxed_opaque_existential_0(&v84);
    __swift_destroy_boxed_opaque_existential_0(v96);
  }

  v19 = *(v3 + *(type metadata accessor for MAGOutputEvent(0) + 32));
  v20 = (v19 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__selectedAttributes);
  swift_beginAccess();
  v21 = v20[1];
  v22 = v20[2];
  *&v96[0] = *v20;
  *(&v96[0] + 1) = v21;
  *&v96[1] = v22;
  v23 = qword_2815447E0;

  if (v23 != -1)
  {
    goto LABEL_37;
  }

  while (1)
  {
    MEMORY[0x28223BE20](v24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5A90);
    sub_257ECFD50();

    sub_257C592D0(4u, v84);

    type metadata accessor for MAGUtilities();
    v25 = swift_getObjCClassFromMetadata();
    v26 = [objc_opt_self() bundleForClass_];
    sub_257ECC900();
    v27 = MEMORY[0x277D70398];

    v28 = sub_257ECD1A0();
    *(&v96[1] + 1) = v28;
    *&v96[2] = v27;
    __swift_allocate_boxed_opaque_existential_1(v96);
    sub_257ECD1B0();
    sub_257ECD130();
    __swift_destroy_boxed_opaque_existential_0(v96);
    v71 = v28;
    if (v73)
    {
      *(&v85 + 1) = v28;
      *&v86 = v27;
      __swift_allocate_boxed_opaque_existential_1(&v84);
      sub_257ECD1B0();
      sub_257ECD130();
      __swift_destroy_boxed_opaque_existential_0(&v84);
      sub_257ECD130();
      sub_257C024BC(&v84, &v79);
      sub_257ECD180();
      sub_257BE4084(&v79, &qword_27F8F6E68);
      __swift_destroy_boxed_opaque_existential_0(&v84);
      __swift_destroy_boxed_opaque_existential_0(v96);
    }

    else
    {
      memset(v96, 0, 40);
      sub_257ECD180();
      sub_257BE4084(v96, &qword_27F8F6E68);
    }

    v29 = v19 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__doorDetectionAttributes;
    v30 = swift_beginAccess();
    v31 = *(v29 + 8);
    v32 = *(v29 + 16);
    *&v96[0] = *v29;
    *(&v96[0] + 1) = v31;
    LOBYTE(v96[1]) = v32;
    MEMORY[0x28223BE20](v30);

    sub_257ECFD50();

    if (v84 == 1)
    {
      if (v8)
      {
        *&v96[0] = v8;
        *(&v96[2] + 8) = *(v7 + 40);
        *(&v96[3] + 8) = *(v7 + 56);
        *(&v96[4] + 8) = *(v7 + 72);
        *(&v96[5] + 8) = *(v7 + 88);
        *(v96 + 8) = *(v7 + 8);
        *(&v96[1] + 8) = *(v7 + 24);
        sub_257D7634C();
      }

      *(&v80 + 1) = v71;
      *&v81 = v27;
      __swift_allocate_boxed_opaque_existential_1(&v79);
      sub_257ECD1B0();
      sub_257ECD130();
      __swift_destroy_boxed_opaque_existential_0(&v79);
      sub_257ECD130();
      sub_257C024BC(&v79, v75);
      sub_257ECD180();
      sub_257BE4084(v75, &qword_27F8F6E68);
      __swift_destroy_boxed_opaque_existential_0(&v79);
      __swift_destroy_boxed_opaque_existential_0(&v84);
    }

    else
    {
      memset(v96, 0, 40);
      sub_257ECD180();
      sub_257BE4084(v96, &qword_27F8F6E68);
    }

    v33 = v19 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__doorDetectionDecorations;
    v34 = swift_beginAccess();
    v35 = *(v33 + 8);
    v36 = *(v33 + 16);
    *&v84 = *v33;
    *(&v84 + 1) = v35;
    LOBYTE(v85) = v36;
    MEMORY[0x28223BE20](v34);

    sub_257ECFD50();

    if (v79 != 1)
    {
      *&v81 = 0;
      v79 = 0u;
      v80 = 0u;
      sub_257ECD180();
      sub_257BE4084(&v79, &qword_27F8F6E68);
      goto LABEL_35;
    }

    v37 = *&v70[*(v69[0] + 48)];
    sub_257C96B18(v37);
    if (v38)
    {
      *(&v80 + 1) = v71;
      *&v81 = v27;
      __swift_allocate_boxed_opaque_existential_1(&v79);
      sub_257ECD1B0();
      sub_257ECD130();
      __swift_destroy_boxed_opaque_existential_0(&v79);
      sub_257ECD130();
      sub_257C024BC(&v79, v75);
      sub_257ECD180();
      sub_257BE4084(v75, &qword_27F8F6E68);
      __swift_destroy_boxed_opaque_existential_0(&v79);
      __swift_destroy_boxed_opaque_existential_0(&v84);
    }

    else
    {
      *&v86 = 0;
      v84 = 0u;
      v85 = 0u;
      sub_257ECD180();
      sub_257BE4084(&v84, &qword_27F8F6E68);
    }

    v39 = &unk_257ED9000;
    v73 = sub_257C966D8(v37);
    if (!v73)
    {
      break;
    }

    v40 = *(v73 + 16);
    v8 = MEMORY[0x277D84F90];
    if (!v40)
    {
LABEL_32:

      MEMORY[0x259C6FC40](&v84, v8);

      sub_257ECD130();
      sub_257C024BC(v75, v90);
      sub_257ECD180();
      sub_257BE4084(v90, &qword_27F8F6E68);
      __swift_destroy_boxed_opaque_existential_0(v75);
      __swift_destroy_boxed_opaque_existential_0(&v84);
      v39 = &unk_257ED9000;
      goto LABEL_34;
    }

    v41 = 0;
    v42 = (v73 + 32);
    v70 = "coration.type.sign";
    v72 = xmmword_257ED9BD0;
    while (v41 < v40)
    {
      v79 = *v42;
      v43 = v42[1];
      v44 = v42[2];
      v45 = v42[3];
      v83 = *(v42 + 8);
      v81 = v44;
      v82 = v45;
      v80 = v43;
      memmove(&v84, v42, 0x48uLL);
      if (v41)
      {
        v78 = 0;
        v76 = 0u;
        v77 = 0u;
        sub_257C241DC(&v79, v75);
        sub_257ECD180();
        sub_257BE4084(&v76, &qword_27F8F6E68);
      }

      else
      {
        type metadata accessor for MAGUtilities();
        v46 = swift_getObjCClassFromMetadata();
        v47 = objc_opt_self();
        sub_257C241DC(&v79, v75);
        v48 = [v47 bundleForClass_];
        v49 = sub_257ECF4C0();
        v50 = sub_257ECF4C0();
        v51 = [v48 localizedStringForKey:v49 value:0 table:v50];

        sub_257ECF500();
        v90[3] = v71;
        v90[4] = MEMORY[0x277D70398];
        __swift_allocate_boxed_opaque_existential_1(v90);
        sub_257ECD1B0();
        sub_257ECD130();
        __swift_destroy_boxed_opaque_existential_0(v90);
        sub_257ECD130();
        sub_257C024BC(&v76, v74);
        sub_257ECD180();
        sub_257BE4084(v74, &qword_27F8F6E68);
        __swift_destroy_boxed_opaque_existential_0(&v76);
        __swift_destroy_boxed_opaque_existential_0(v75);
      }

      v74[3] = &type metadata for DoorDecorationBlock;
      v52 = sub_257C9F1D4();
      v74[4] = v52;
      v53 = swift_allocObject();
      v74[0] = v53;
      v54 = v87;
      *(v53 + 48) = v86;
      *(v53 + 64) = v54;
      *(v53 + 80) = v88;
      v55 = v85;
      *(v53 + 16) = v84;
      *(v53 + 32) = v55;
      __swift_project_boxed_opaque_existential_1(v74, &type metadata for DoorDecorationBlock);
      v56 = *(v52 + 16);
      sub_257C241DC(&v84, v75);
      v57 = v56(&type metadata for DoorDecorationBlock, v52);
      MEMORY[0x28223BE20](v57);
      *(&v77 + 1) = sub_257ECD1C0();
      v78 = MEMORY[0x277D703A0];
      __swift_allocate_boxed_opaque_existential_1(&v76);
      sub_257ECD1D0();
      sub_257ECD130();
      __swift_destroy_boxed_opaque_existential_0(&v76);
      sub_257ECD130();
      __swift_destroy_boxed_opaque_existential_0(v75);
      __swift_destroy_boxed_opaque_existential_0(v74);
      sub_257ECD130();
      __swift_destroy_boxed_opaque_existential_0(&v76);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5A00);
      v58 = swift_allocObject();
      *(v58 + 16) = v72;
      sub_257C024BC(v90, v58 + 32);
      sub_257C024BC(v75, v58 + 72);
      MEMORY[0x259C6FC60](&v76, v58);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v89 = v8;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v8 = sub_257BFDA78(0, v8[2] + 1, 1, v8);
        v89 = v8;
      }

      v61 = v8[2];
      v60 = v8[3];
      if (v61 >= v60 >> 1)
      {
        v8 = sub_257BFDA78((v60 > 1), v61 + 1, 1, v8);
        sub_257C24238(&v84);
        v89 = v8;
      }

      else
      {
        sub_257C24238(&v84);
      }

      ++v41;
      __swift_destroy_boxed_opaque_existential_0(v75);
      __swift_destroy_boxed_opaque_existential_0(v90);
      v62 = *(&v77 + 1);
      v19 = v78;
      v63 = __swift_mutable_project_boxed_opaque_existential_1(&v76, *(&v77 + 1));
      MEMORY[0x28223BE20](v63);
      v7 = v69 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v65 + 16))(v7);
      sub_257C9D038(v61, v7, &v89, v62, v19);
      __swift_destroy_boxed_opaque_existential_0(&v76);
      v40 = *(v73 + 16);
      v42 = (v42 + 72);
      if (v41 == v40)
      {
        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_37:
    v24 = swift_once();
  }

  *&v86 = 0;
  v84 = 0u;
  v85 = 0u;
  sub_257ECD180();
  sub_257BE4084(&v84, &qword_27F8F6E68);
LABEL_34:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5A00);
  v66 = swift_allocObject();
  *(v66 + 16) = v39[189];
  sub_257C024BC(v91, v66 + 32);
  sub_257C024BC(&v79, v66 + 72);
  MEMORY[0x259C6FC60](v75, v66);

  sub_257C024BC(v75, v90);
  sub_257ECD180();
  sub_257BE4084(v90, &qword_27F8F6E68);
  __swift_destroy_boxed_opaque_existential_0(v75);
  __swift_destroy_boxed_opaque_existential_0(&v79);
  __swift_destroy_boxed_opaque_existential_0(v91);
LABEL_35:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5A00);
  v67 = swift_allocObject();
  *(v67 + 16) = xmmword_257EDC1F0;
  sub_257C024BC(v95, v67 + 32);
  sub_257C024BC(v94, v67 + 72);
  sub_257C024BC(v93, v67 + 112);
  sub_257C024BC(v92, v67 + 152);
  sub_257C024BC(&v84, v67 + 192);
  MEMORY[0x259C6FC60](v67);

  __swift_destroy_boxed_opaque_existential_0(&v84);
  __swift_destroy_boxed_opaque_existential_0(v92);
  __swift_destroy_boxed_opaque_existential_0(v93);
  __swift_destroy_boxed_opaque_existential_0(v94);
  return __swift_destroy_boxed_opaque_existential_0(v95);
}

uint64_t sub_257C8D0E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, Swift::Int32 a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v36 = a5;
  v9 = type metadata accessor for MAGOutputEvent.EventType(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6D50);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v34 - v13;
  v15 = type metadata accessor for MAGOutputEvent(0);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = generateTextToDisplay(depth:longUnitStyle:)(a3, 1);
  if (a2)
  {
    countAndFlagsBits = v19._countAndFlagsBits;
    sub_257BE401C(a4, v14, &qword_27F8F6D50);
    if ((*(v16 + 48))(v14, 1, v15) == 1)
    {

      sub_257BE4084(v14, &qword_27F8F6D50);
LABEL_14:
      v24 = sub_257ECD1A0();
      v25 = MEMORY[0x277D70398];
      *(&v41 + 1) = v24;
      v42 = MEMORY[0x277D70398];
      __swift_allocate_boxed_opaque_existential_1(&v40);
      sub_257ECD1B0();
      sub_257ECD130();
      __swift_destroy_boxed_opaque_existential_0(&v40);
      *(&v41 + 1) = v24;
      v42 = v25;
      __swift_allocate_boxed_opaque_existential_1(&v40);
      sub_257ECD1B0();
      sub_257ECD130();
      __swift_destroy_boxed_opaque_existential_0(&v40);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5A00);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_257ED9BD0;
      sub_257C024BC(v43, v26 + 32);
      sub_257C024BC(v39, v26 + 72);
      MEMORY[0x259C6FC60](v38, v26);

      sub_257ECD130();
      __swift_destroy_boxed_opaque_existential_0(v38);
      __swift_destroy_boxed_opaque_existential_0(v39);
      __swift_destroy_boxed_opaque_existential_0(v43);
LABEL_27:
      sub_257ECD130();
      sub_257C024BC(v39, v38);
      sub_257ECD180();
      sub_257BE4084(v38, &qword_27F8F6E68);
      __swift_destroy_boxed_opaque_existential_0(v39);
      __swift_destroy_boxed_opaque_existential_0(&v40);
      goto LABEL_28;
    }

    sub_257C9CF58(v14, v18, type metadata accessor for MAGOutputEvent);
    sub_257C9A79C(&v18[*(v15 + 20)], v11, type metadata accessor for MAGOutputEvent.EventType);
    if (swift_getEnumCaseMultiPayload() != 3)
    {

      sub_257C9A804(v18, type metadata accessor for MAGOutputEvent);
      sub_257C9A804(v11, type metadata accessor for MAGOutputEvent.EventType);
      goto LABEL_14;
    }

    v20 = *(v11 + 1);
    if (v20)
    {
      v21 = *(v11 + 4);
      if (*v11 == a1 && v20 == a2)
      {
      }

      else
      {
        v23 = sub_257ED0640();

        if ((v23 & 1) == 0)
        {
          goto LABEL_23;
        }
      }

      v27 = generateTextToDisplay(depth:longUnitStyle:)(v21, 1);
      if (countAndFlagsBits == v27._countAndFlagsBits && v19._object == v27._object)
      {

        goto LABEL_25;
      }

      v29 = sub_257ED0640();

      if (v29)
      {

LABEL_25:

        v42 = 0;
        v41 = 0u;
        v40 = 0u;
        sub_257ECD180();
        sub_257BE4084(&v40, &qword_27F8F6E68);
        goto LABEL_26;
      }
    }

    else
    {
    }

LABEL_23:
    v30 = sub_257ECD1A0();
    v31 = MEMORY[0x277D70398];
    v44 = v30;
    v45 = MEMORY[0x277D70398];
    __swift_allocate_boxed_opaque_existential_1(v43);
    sub_257ECD1B0();
    sub_257ECD130();
    __swift_destroy_boxed_opaque_existential_0(v43);
    v44 = v30;
    v45 = v31;
    __swift_allocate_boxed_opaque_existential_1(v43);
    sub_257ECD1B0();
    sub_257ECD130();
    __swift_destroy_boxed_opaque_existential_0(v43);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5A00);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_257ED9BD0;
    sub_257C024BC(&v40, v32 + 32);
    sub_257C024BC(v39, v32 + 72);
    MEMORY[0x259C6FC60](v38, v32);

    sub_257C024BC(v38, v37);
    sub_257ECD180();
    sub_257BE4084(v37, &qword_27F8F6E68);
    __swift_destroy_boxed_opaque_existential_0(v38);
    __swift_destroy_boxed_opaque_existential_0(v39);
    __swift_destroy_boxed_opaque_existential_0(&v40);
LABEL_26:
    sub_257ECD130();
    sub_257ECD130();
    __swift_destroy_boxed_opaque_existential_0(v39);
    __swift_destroy_boxed_opaque_existential_0(v43);
    sub_257C9A804(v18, type metadata accessor for MAGOutputEvent);
    goto LABEL_27;
  }

  v42 = 0;
  v41 = 0u;
  v40 = 0u;
  sub_257ECD180();
  sub_257BE4084(&v40, &qword_27F8F6E68);
LABEL_28:
  sub_257ECD130();
  return __swift_destroy_boxed_opaque_existential_0(v43);
}

uint64_t sub_257C8D780@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, __n128 a4@<Q0>)
{
  v39 = a4;
  v40 = a3;
  v41 = a1;
  v42 = 0;
  v6 = type metadata accessor for MAGOutputEvent.EventType(0);
  MEMORY[0x28223BE20](v6);
  v8 = v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6D50);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v37 - v10;
  v12 = type metadata accessor for MAGOutputEvent(0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257BE401C(a2, v11, &qword_27F8F6D50);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_257BE4084(v11, &qword_27F8F6D50);
LABEL_17:
    v26 = MEMORY[0x277D84F90];
    goto LABEL_18;
  }

  sub_257C9CF58(v11, v15, type metadata accessor for MAGOutputEvent);
  v16 = v4;
  v17 = MAGOutputEvent.itemIDs.getter();
  v18 = MAGOutputEvent.itemIDs.getter();
  if (v17)
  {
    if (!v18)
    {
LABEL_12:
      v4 = v16;
      goto LABEL_13;
    }

    v19 = sub_257C943E4(v17, v18);

    if ((v19 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else if (v18)
  {
LABEL_13:

LABEL_14:
    v24 = type metadata accessor for MAGOutputEvent;
    v25 = v15;
LABEL_16:
    sub_257C9A804(v25, v24);
    goto LABEL_17;
  }

  sub_257C9A79C(&v15[*(v12 + 20)], v8, type metadata accessor for MAGOutputEvent.EventType);
  if (swift_getEnumCaseMultiPayload() != 6)
  {
    sub_257C9A804(v15, type metadata accessor for MAGOutputEvent);
    v24 = type metadata accessor for MAGOutputEvent.EventType;
    v25 = v8;
    goto LABEL_16;
  }

  v20 = *v8;
  v38 = *(v8 + 1);
  v21 = *(v20 + 16);
  if (v21)
  {
    v22 = sub_257C63CD8(*(v20 + 16), 0);
    v23 = sub_257C67308(v43, v22 + 32, v21, v20);
    v16 = v43[2];
    v37[1] = v43[4];

    sub_257C02520();
    if (v23 != v21)
    {
      __break(1u);
      goto LABEL_12;
    }
  }

  else
  {
    v22 = MEMORY[0x277D84F90];
  }

  v43[0] = v22;
  v27 = v42;
  sub_257C9AA00(v43);
  if (v27)
  {
    goto LABEL_28;
  }

  v36 = v43[0];
  MEMORY[0x28223BE20](v35);
  v37[-4] = v4;
  *&v37[-2] = v38;
  v26 = sub_257C83BA8(sub_257C9F3CC, &v37[-6], v36);
  v42 = 0;

  sub_257C9A804(v15, type metadata accessor for MAGOutputEvent);
LABEL_18:
  v27 = v41;
  v28 = v41[2];
  if (v28)
  {
    v41 = v4;
    v29 = sub_257C63CD8(v28, 0);
    v30 = sub_257C67308(v43, v29 + 32, v28, v27);

    sub_257C02520();
    if (v30 != v28)
    {
      __break(1u);
      goto LABEL_28;
    }

    v4 = v41;
  }

  else
  {
    v29 = MEMORY[0x277D84F90];
  }

  v43[0] = v29;
  v27 = v42;
  v31 = sub_257C9AA00(v43);
  if (!v27)
  {
    v32 = v43[0];
    MEMORY[0x28223BE20](v31);
    v37[-4] = v4;
    *&v37[-2] = v39;
    v33 = sub_257C83BA8(sub_257C9F280, &v37[-6], v32);

    sub_257C991C0(v33, v26, v40);
  }

LABEL_28:

  __break(1u);
  return result;
}

uint64_t MAGOutputEvent.displayContent.getter()
{
  v1 = type metadata accessor for DetectedDoor(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v131 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MAGOutputEvent.EventType(0);
  MEMORY[0x28223BE20](v4);
  v6 = (&v131 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for MAGOutputEvent(0);
  sub_257C9A79C(v0 + v7[5], v6, type metadata accessor for MAGOutputEvent.EventType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 0:
      v47 = v6->i64[0];
      v48 = v6->i32[2];
      if ((*(v0 + v7[7]) & 1) == 0)
      {
        v49 = (*(v0 + v7[8]) + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__selectedPeopleDetectionFeedbacks);
        swift_beginAccess();
        v50 = v49[1];
        v51 = v49[2];
        v134.i64[0] = *v49;
        v134.i64[1] = v50;
        v135.i64[0] = v51;
        v52 = qword_2815447E0;

        if (v52 != -1)
        {
          v53 = swift_once();
        }

        MEMORY[0x28223BE20](v53);
        *(&v131 - 2) = &v134;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6AD8);
        sub_257ECFD50();

        v54 = sub_257C592D0(0, v133);

        if (!v54)
        {
          goto LABEL_80;
        }
      }

      v55 = sub_257C8F16C(v47, v48);
      goto LABEL_32;
    case 1:
      v47 = v6->i64[0];
      v56 = v6->i32[2];
      v58 = v6[1].i64[0];
      v57 = v6[1].i64[1];
      if ((*(v0 + v7[7]) & 1) == 0)
      {
        v59 = (*(v0 + v7[8]) + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__selectedPeopleDetectionFeedbacks);
        swift_beginAccess();
        v60 = v59[1];
        v61 = v59[2];
        v134.i64[0] = *v59;
        v134.i64[1] = v60;
        v135.i64[0] = v61;
        v62 = qword_2815447E0;

        if (v62 != -1)
        {
          v63 = swift_once();
        }

        MEMORY[0x28223BE20](v63);
        *(&v131 - 2) = &v134;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6AD8);
        sub_257ECFD50();

        v64 = sub_257C592D0(0, v133);

        if (!v64)
        {

LABEL_80:

          return 0;
        }
      }

      v55 = sub_257C8F480(v47, v56, v58, v57);

LABEL_32:

      return v55;
    case 2:
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F38);
      v21 = *(v6->i64 + *(v20 + 48));
      v22 = *(v6->f32 + *(v20 + 64));
      sub_257C9CF58(v6, v3, type metadata accessor for DetectedDoor);
      v23 = *(v21 + 16);
      if (*(v0 + v7[7]))
      {
        if (v23)
        {
          v24 = v3;
          v25 = v21;
          v26 = v22;
LABEL_54:
          v108 = sub_257C8F7CC(v24, v25, v26);

          goto LABEL_56;
        }
      }

      else if (v23)
      {
        v102 = (*(v0 + v7[8]) + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__selectedDoorDetectionFeedbacks);
        swift_beginAccess();
        v103 = v102[1];
        v104 = v102[2];
        v134.i64[0] = *v102;
        v134.i64[1] = v103;
        v135.i64[0] = v104;
        v105 = qword_2815447E0;

        if (v105 != -1)
        {
          v106 = swift_once();
        }

        MEMORY[0x28223BE20](v106);
        *(&v131 - 2) = &v134;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5880);
        sub_257ECFD50();

        v107 = sub_257C592D0(0, v133);

        if (v107)
        {
          v24 = v3;
          v25 = v21;
          v26 = v22;
          goto LABEL_54;
        }
      }

      v108 = 0;
LABEL_56:
      sub_257C9A804(v3, type metadata accessor for DetectedDoor);
      return v108;
    case 3:
      v28 = v6->i64[0];
      v27 = v6->i64[1];
      v29 = v6[1].i32[0];
      if ((*(v0 + v7[7]) & 1) == 0)
      {
        v30 = (*(v0 + v7[8]) + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__selectedObjectUnderstandingFeedbacks);
        swift_beginAccess();
        v31 = v30[1];
        v32 = v30[2];
        v134.i64[0] = *v30;
        v134.i64[1] = v31;
        v135.i64[0] = v32;
        v33 = qword_2815447E0;

        if (v33 != -1)
        {
          v34 = swift_once();
        }

        MEMORY[0x28223BE20](v34);
        *(&v131 - 2) = &v134;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F4B90);
        sub_257ECFD50();

        v35 = sub_257C592D0(0, v133);

        if (!v35)
        {
          goto LABEL_82;
        }
      }

      if (!v27)
      {
        return 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F58E0);
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_257ED9BD0;
      v37 = MEMORY[0x277D837D0];
      *(v36 + 56) = MEMORY[0x277D837D0];
      v38 = sub_257BFB13C();
      *(v36 + 64) = v38;
      *(v36 + 32) = v28;
      *(v36 + 40) = v27;
      v39 = generateTextToDisplay(depth:longUnitStyle:)(v29, 0);
      *(v36 + 96) = v37;
      *(v36 + 104) = v38;
      *(v36 + 72) = v39;
      return sub_257ECF540();
    case 4:
      v11 = v6[4];
      v10 = v6[5];
      v12 = v6[2];
      v142 = v6[3];
      v143 = v11;
      v13 = *v6;
      v140 = v6[1];
      v141 = v12;
      v139 = v13;
      v14 = v6[6].i64[0];
      if (*(v0 + v7[7]))
      {
        v15 = v6[3];
        v136 = v6[2];
        v137 = v15;
        v138 = v6[4];
        v16 = *v6;
        v135 = v6[1];
        v134 = v16;
        v17 = v14;
LABEL_47:
        v55 = sub_257C907B4(&v134, v17, v10);

        sub_257BE4084(&v139, &qword_27F8F9C90);
        return v55;
      }

      v131 = v10;
      v81 = (*(v0 + v7[8]) + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__selectedObjectUnderstandingFeedbacks);
      swift_beginAccess();
      v82 = v81[1];
      v83 = v81[2];
      v134.i64[0] = *v81;
      v134.i64[1] = v82;
      v135.i64[0] = v83;
      v84 = qword_2815447E0;

      if (v84 != -1)
      {
        v85 = swift_once();
      }

      MEMORY[0x28223BE20](v85);
      *(&v131 - 2) = &v134;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F4B90);
      sub_257ECFD50();

      v86 = sub_257C592D0(0, v132);

      if (v86)
      {
        v136 = v141;
        v137 = v142;
        v138 = v143;
        v135 = v140;
        v134 = v139;
        v10 = v131;
        v17 = v14;
        goto LABEL_47;
      }

      sub_257BE4084(&v139, &qword_27F8F9C90);
      return 0;
    case 5:
      v65 = v6->i64[0];
      v66 = v6[1];
      v67 = v6[2].i64[0];
      if (*(v0 + v7[7]))
      {
        v68 = v6->i64[0];
        v69 = v6[2].i64[0];
LABEL_61:
        v55 = sub_257C90A14(v68, v69, v66);

        goto LABEL_68;
      }

      v131 = v6[1];
      v109 = (*(v0 + v7[8]) + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__selectedObjectUnderstandingFeedbacks);
      swift_beginAccess();
      v110 = v109[1];
      v111 = v109[2];
      v134.i64[0] = *v109;
      v134.i64[1] = v110;
      v135.i64[0] = v111;
      v112 = qword_2815447E0;

      if (v112 != -1)
      {
        v113 = swift_once();
      }

      MEMORY[0x28223BE20](v113);
      *(&v131 - 2) = &v134;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F4B90);
      sub_257ECFD50();

      v114 = sub_257C592D0(0, v133);

      if (v114)
      {
        v68 = v65;
        v66 = v131;
        v69 = v67;
        goto LABEL_61;
      }

LABEL_82:

      return 0;
    case 6:
      v70 = v6->i64[0];
      v71 = v6[1];
      if (*(v0 + v7[7]))
      {
        v72 = v6->i64[0];
      }

      else
      {
        v131 = v6[1];
        v115 = (*(v0 + v7[8]) + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__selectedObjectUnderstandingFeedbacks);
        swift_beginAccess();
        v116 = v115[1];
        v117 = v115[2];
        v134.i64[0] = *v115;
        v134.i64[1] = v116;
        v135.i64[0] = v117;
        v118 = qword_2815447E0;

        if (v118 != -1)
        {
          v119 = swift_once();
        }

        MEMORY[0x28223BE20](v119);
        *(&v131 - 2) = &v134;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F4B90);
        sub_257ECFD50();

        v120 = sub_257C592D0(0, v133);

        if (!v120)
        {
          goto LABEL_82;
        }

        v72 = v70;
        v71 = v131;
      }

      v80 = sub_257C90C08(v72, v71);
LABEL_67:
      v55 = v80;
LABEL_68:

      return v55;
    case 7:
      result = v6->i64[0];
      if (*(v0 + v7[7]))
      {
        return result;
      }

      v40 = v6->i64[0];
      v41 = (*(v0 + v7[8]) + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__selectedImageCaptionFeedbacks);
      swift_beginAccess();
      v42 = v41[1];
      v43 = v41[2];
      v134.i64[0] = *v41;
      v134.i64[1] = v42;
      v135.i64[0] = v43;
      v44 = qword_2815447E0;

      if (v44 != -1)
      {
        v45 = swift_once();
      }

      MEMORY[0x28223BE20](v45);
      *(&v131 - 2) = &v134;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F8470);
      sub_257ECFD50();

      v46 = sub_257C592E8(0, v133);

      if (!v46)
      {
        goto LABEL_76;
      }

      return v40;
    case 8:
      v73 = v6->i64[0];
      if ((*(v0 + v7[7]) & 1) == 0)
      {
        v74 = (*(v0 + v7[8]) + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__selectedPointSpeakFeedbacks);
        swift_beginAccess();
        v75 = v74[1];
        v76 = v74[2];
        v134.i64[0] = *v74;
        v134.i64[1] = v75;
        v135.i64[0] = v76;
        v77 = qword_2815447E0;

        if (v77 != -1)
        {
          v78 = swift_once();
        }

        MEMORY[0x28223BE20](v78);
        *(&v131 - 2) = &v134;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F90);
        sub_257ECFD50();

        v79 = sub_257C592D0(0, v133);

        if (!v79)
        {
          goto LABEL_76;
        }
      }

      v80 = sub_257C90DC8(v73, 1);
      goto LABEL_67;
    case 9:
      v18 = v6->i64[0];
      if (*(v0 + v7[6]) != 1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F58E0);
        v87 = swift_allocObject();
        *(v87 + 16) = xmmword_257ED9BD0;
        type metadata accessor for MAGUtilities();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v89 = [objc_opt_self() bundleForClass_];
        v90 = sub_257ECF4C0();
        v91 = sub_257ECF4C0();
        v92 = [v89 localizedStringForKey:v90 value:0 table:v91];

        v93 = sub_257ECF500();
        v95 = v94;

        v96 = MEMORY[0x277D837D0];
        *(v87 + 56) = MEMORY[0x277D837D0];
        v97 = sub_257BFB13C();
        *(v87 + 64) = v97;
        *(v87 + 32) = v93;
        *(v87 + 40) = v95;
        MEMORY[0x28223BE20](v97);
        *(&v131 - 2) = v0;
        v98 = sub_257C833D4(sub_257C9CFC0, (&v131 - 2), v18);

        v139.i64[0] = v98;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9D90);
        sub_257BD2D4C(&qword_27F8F6D70, &qword_27F8F9D90);
        v99 = sub_257ECF420();
        v101 = v100;

        *(v87 + 96) = v96;
        *(v87 + 104) = v97;
        *(v87 + 72) = v99;
        *(v87 + 80) = v101;
        return sub_257ECF540();
      }

      if (*(v0 + v7[7]))
      {
        MEMORY[0x28223BE20](EnumCaseMultiPayload);
        *(&v131 - 2) = v0;
        v19 = sub_257C833D4(sub_257C9F324, (&v131 - 2), v18);

        v139.i64[0] = v19;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9D90);
        sub_257BD2D4C(&qword_27F8F6D70, &qword_27F8F9D90);
LABEL_75:
        v130 = sub_257ECF420();

        return v130;
      }

      v121 = v0;
      v122 = (*(v0 + v7[8]) + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__selectedTextDetectionFeedbacks);
      swift_beginAccess();
      v123 = v122[1];
      v124 = v122[2];
      v134.i64[0] = *v122;
      v134.i64[1] = v123;
      v135.i64[0] = v124;
      v125 = qword_2815447E0;

      if (v125 != -1)
      {
        v126 = swift_once();
      }

      MEMORY[0x28223BE20](v126);
      *(&v131 - 2) = &v134;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5540);
      sub_257ECFD50();

      v127 = sub_257C592E8(0, v133);

      if (v127)
      {
        MEMORY[0x28223BE20](v128);
        *(&v131 - 2) = v121;
        v129 = sub_257C833D4(sub_257C9F324, (&v131 - 2), v18);

        v134.i64[0] = v129;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9D90);
        sub_257BD2D4C(&qword_27F8F6D70, &qword_27F8F9D90);
        goto LABEL_75;
      }

LABEL_76:

      return 0;
    case 10:
    case 11:
    case 12:
      return v6->i64[0];
    default:
      sub_257C9A804(v6, type metadata accessor for MAGOutputEvent.EventType);
      return 0;
  }
}