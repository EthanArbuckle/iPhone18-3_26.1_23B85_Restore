uint64_t sub_22DF38168(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v94 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47BC0, &unk_22DF65300);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v106 = &v84 - v7;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47628, &unk_22DF68C40);
  v8 = *(*(v104 - 8) + 64);
  MEMORY[0x28223BE20](v104);
  v10 = &v84 - v9;
  v11 = type metadata accessor for ServiceEventValue();
  v103 = *(v11 - 8);
  v12 = *(v103 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v100 = &v84 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v99 = (&v84 - v16);
  v17 = MEMORY[0x28223BE20](v15);
  v98 = (&v84 - v18);
  v19 = MEMORY[0x28223BE20](v17);
  v97 = (&v84 - v20);
  v21 = MEMORY[0x28223BE20](v19);
  v101 = (&v84 - v22);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v84 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v85 = &v84 - v27;
  MEMORY[0x28223BE20](v26);
  v111 = &v84 - v28;
  v29 = *(a2 + 56);
  v93 = a2 + 56;
  v30 = 1 << *(a2 + 32);
  v31 = -1;
  if (v30 < 64)
  {
    v31 = ~(-1 << v30);
  }

  v32 = v31 & v29;
  v92 = (v30 + 63) >> 6;

  v34 = 0;
  v95 = MEMORY[0x277D84F90];
  v91 = a1;
  v86 = a2;
  while (v32)
  {
    v35 = v32;
LABEL_11:
    v32 = (v35 - 1) & v35;
    v37 = *(a1 + 16);
    if (!*(v37 + 16))
    {
      continue;
    }

    v96 = (v35 - 1) & v35;
    v38 = (*(a2 + 48) + ((v34 << 10) | (16 * __clz(__rbit64(v35)))));
    v39 = *v38;
    v40 = v38[1];

    v90 = v39;
    v41 = sub_22DEF08FC(v39, v40);
    if ((v42 & 1) == 0)
    {

      v32 = v96;
      continue;
    }

    v43 = *(v37 + 56);
    v105 = *(v103 + 72);
    v44 = v85;
    sub_22DEF0974(v43 + v105 * v41, v85);
    sub_22DEFE894(v44, v111);
    v45 = *(v94 + 16);
    if (!v45)
    {
LABEL_45:

      result = sub_22DF1904C(v111);
      a1 = v91;
      goto LABEL_46;
    }

    v46 = v94 + ((*(v103 + 80) + 32) & ~*(v103 + 80));
    v102 = v40;
    while (1)
    {
      sub_22DEF0974(v46, v25);
      v47 = &v10[*(v104 + 48)];
      sub_22DEF0974(v25, v10);
      sub_22DEF0974(v111, v47);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 1)
      {
        break;
      }

      if (EnumCaseMultiPayload == 2)
      {
        sub_22DF1904C(v25);
        sub_22DEF0974(v10, v98);
        if (swift_getEnumCaseMultiPayload() != 2)
        {
          goto LABEL_16;
        }

        v53 = v98;
LABEL_30:
        v54 = *v53;
        v55 = *v47;
        sub_22DF1904C(v10);
        v51 = v54 == *&v55;
LABEL_31:
        v40 = v102;
        if (v51)
        {
          goto LABEL_40;
        }

        goto LABEL_17;
      }

      if (EnumCaseMultiPayload != 3)
      {
        if (EnumCaseMultiPayload != 4)
        {
          goto LABEL_15;
        }

        sub_22DF1904C(v25);
        sub_22DEF0974(v10, v100);
        if (swift_getEnumCaseMultiPayload() != 4)
        {
          goto LABEL_16;
        }

        v49 = *v100;
        v50 = *v47;
        sub_22DF1904C(v10);
        v51 = v49 == v50;
        goto LABEL_31;
      }

      sub_22DF1904C(v25);
      sub_22DEF0974(v10, v99);
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_16;
      }

      v56 = *v99;
      v57 = *v47;
      sub_22DF1904C(v10);
      if (v56 == v57)
      {
        goto LABEL_40;
      }

LABEL_17:
      v46 += v105;
      if (!--v45)
      {
        goto LABEL_45;
      }
    }

    v52 = v101;
    if (EnumCaseMultiPayload)
    {
      v40 = v102;
      if (EnumCaseMultiPayload != 1)
      {
LABEL_15:
        sub_22DF1904C(v25);
LABEL_16:
        sub_22DEF1364(v10, &qword_27DA47628, &unk_22DF68C40);
        goto LABEL_17;
      }

      sub_22DF1904C(v25);
      sub_22DEF0974(v10, v97);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_16;
      }

      v53 = v97;
      goto LABEL_30;
    }

    sub_22DEF0974(v10, v101);
    v58 = v52[1];
    if (swift_getEnumCaseMultiPayload())
    {
      sub_22DF1904C(v25);

      v40 = v102;
      goto LABEL_16;
    }

    v88 = *v52;
    v59 = *v47;
    v60 = *(v47 + 1);
    v87 = sub_22DF63A24();
    v62 = v61;
    v89 = v61;

    v109 = v87;
    v110 = v62;
    v63 = sub_22DF63A24();
    v65 = v64;

    v107 = v63;
    v108 = v65;
    sub_22DF06E10();
    LOBYTE(v63) = sub_22DF63E34();

    sub_22DF1904C(v25);
    sub_22DF1904C(v10);
    v40 = v102;
    if ((v63 & 1) == 0)
    {
      goto LABEL_17;
    }

LABEL_40:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v95 = sub_22DF03FB0(0, *(v95 + 2) + 1, 1, v95);
    }

    a1 = v91;
    v67 = *(v95 + 2);
    v66 = *(v95 + 3);
    if (v67 >= v66 >> 1)
    {
      v95 = sub_22DF03FB0((v66 > 1), v67 + 1, 1, v95);
    }

    result = sub_22DF1904C(v111);
    v68 = v95;
    *(v95 + 2) = v67 + 1;
    v69 = &v68[16 * v67];
    *(v69 + 4) = v90;
    *(v69 + 5) = v40;
LABEL_46:
    a2 = v86;
    v32 = v96;
  }

  while (1)
  {
    v36 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      __break(1u);
      return result;
    }

    if (v36 >= v92)
    {
      break;
    }

    v35 = *(v93 + 8 * v36);
    ++v34;
    if (v35)
    {
      v34 = v36;
      goto LABEL_11;
    }
  }

  v70 = *(a1 + 16);
  v71 = *(v95 + 2);
  if (v71)
  {
    v72 = (v103 + 56);
    v73 = (v95 + 40);

    v74 = v111;
    do
    {
      v77 = *(v73 - 1);
      v78 = *v73;

      v79 = sub_22DEF08FC(v77, v78);
      v81 = v80;

      if (v81)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v109 = v74;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_22DEFD638();
          v74 = v109;
        }

        v83 = *(*(v74 + 48) + 16 * v79 + 8);

        v76 = v106;
        sub_22DEFE894(*(v74 + 56) + *(v103 + 72) * v79, v106);
        sub_22DEFDD18(v79, v74);
        v75 = 0;
      }

      else
      {
        v75 = 1;
        v76 = v106;
      }

      (*v72)(v76, v75, 1, v11);
      sub_22DEF1364(v76, &qword_27DA47BC0, &unk_22DF65300);
      v73 += 2;
      --v71;
    }

    while (v71);

    a1 = v91;
  }

  else
  {
    v74 = *(a1 + 16);
  }

  *(a1 + 16) = v74;
  return result;
}

uint64_t sub_22DF389EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47BC0, &unk_22DF65300);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v47[-v9];
  v57 = type metadata accessor for ServiceEventValue();
  v11 = *(v57 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v57);
  result = MEMORY[0x28223BE20](v13);
  if (!*(a3 + 16))
  {
    return result;
  }

  v50 = v16;
  v53 = v3;
  v54 = &v47[-v15];
  sub_22DEF0974(a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80)), &v47[-v15]);
  v18 = a2 + 56;
  v17 = *(a2 + 56);
  v52 = a1;
  v19 = *(a1 + 16);
  v20 = 1 << *(a2 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v17;
  v23 = (v20 + 63) >> 6;
  v55 = v11;
  v56 = (v11 + 56);

  v24 = 0;
  v51 = v19;
LABEL_5:
  v25 = v24;
  if (!v22)
  {
    goto LABEL_7;
  }

  do
  {
    v24 = v25;
LABEL_10:
    v26 = __clz(__rbit64(v22));
    v22 &= v22 - 1;
    v27 = a2;
    v28 = (*(a2 + 48) + ((v24 << 10) | (16 * v26)));
    v30 = *v28;
    v29 = v28[1];
    v31 = v19[2];

    if (!v31 || (v32 = sub_22DEF08FC(v30, v29), (v33 & 1) == 0))
    {
      (*v56)(v10, 1, 1, v57);
      sub_22DEF1364(v10, &qword_27DA47BC0, &unk_22DF65300);
      sub_22DEF0974(v54, v50);
      LODWORD(v49) = swift_isUniquelyReferenced_nonNull_native();
      v58 = v19;
      v36 = sub_22DEF08FC(v30, v29);
      v37 = v19[2];
      v38 = (v35 & 1) == 0;
      v39 = v37 + v38;
      if (__OFADD__(v37, v38))
      {
        goto LABEL_28;
      }

      if (v19[3] >= v39)
      {
        if (v49)
        {
          if (v35)
          {
            goto LABEL_21;
          }
        }

        else
        {
          v49 = v36;
          v48 = v35;
          sub_22DEFD638();
          v36 = v49;
          if (v48)
          {
            goto LABEL_21;
          }
        }
      }

      else
      {
        v48 = v35;
        sub_22DEFD044(v39, v49);
        v40 = sub_22DEF08FC(v30, v29);
        if ((v48 & 1) != (v41 & 1))
        {
          goto LABEL_30;
        }

        v36 = v40;
        if (v48)
        {
LABEL_21:
          v42 = v36;

          v19 = v58;
          sub_22DEFFB1C(v50, v58[7] + *(v55 + 72) * v42);
          a2 = v27;
          goto LABEL_5;
        }
      }

      v19 = v58;
      v58[(v36 >> 6) + 8] |= 1 << v36;
      v43 = (v19[6] + 16 * v36);
      *v43 = v30;
      v43[1] = v29;
      sub_22DEFE894(v50, v19[7] + *(v55 + 72) * v36);
      v44 = v19[2];
      v45 = __OFADD__(v44, 1);
      v46 = v44 + 1;
      if (v45)
      {
        goto LABEL_29;
      }

      v19[2] = v46;
      a2 = v27;
      goto LABEL_5;
    }

    v34 = v55;
    sub_22DEF0974(v19[7] + *(v55 + 72) * v32, v10);
    (*(v34 + 56))(v10, 0, 1, v57);

    sub_22DEF1364(v10, &qword_27DA47BC0, &unk_22DF65300);
    v25 = v24;
    a2 = v27;
  }

  while (v22);
LABEL_7:
  while (1)
  {
    v24 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v24 >= v23)
    {
      sub_22DF1904C(v54);

      *(v52 + 16) = v19;
      return result;
    }

    v22 = *(v18 + 8 * v24);
    ++v25;
    if (v22)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  result = sub_22DF64234();
  __break(1u);
  return result;
}

uint64_t sub_22DF38E54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for ServiceEventValue();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v55[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = MEMORY[0x28223BE20](v10);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v55[-v15];
  result = MEMORY[0x28223BE20](v14);
  v20 = &v55[-v18];
  if (!*(a3 + 16))
  {
    return result;
  }

  v65 = v19;
  sub_22DEF0974(a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), &v55[-v18]);
  if (swift_getEnumCaseMultiPayload())
  {
    return sub_22DF1904C(v20);
  }

  v61 = a1;
  v62 = v3;
  v21 = v20[1];
  v58 = *v20;
  v59 = v12;
  v63 = v21;
  v64 = v8;
  v22 = *(a1 + 16);
  v23 = a2 + 56;
  v24 = 1 << *(a2 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & *(a2 + 56);
  v27 = (v24 + 63) >> 6;

  v67 = a2;

  v28 = 0;
  v60 = v22;
  while (v26)
  {
    v29 = v26;
LABEL_14:
    v26 = (v29 - 1) & v29;
    if (v22[2])
    {
      v31 = (*(v67 + 48) + ((v28 << 10) | (16 * __clz(__rbit64(v29)))));
      v33 = *v31;
      v32 = v31[1];

      v66 = v33;
      v34 = sub_22DEF08FC(v33, v32);
      if (v35)
      {
        v36 = *(v64 + 72);
        sub_22DEF0974(v22[7] + v36 * v34, v16);
        if (swift_getEnumCaseMultiPayload())
        {

          sub_22DF1904C(v16);
        }

        else
        {
          v57 = v36;
          v37 = v16[1];
          v68 = *v16;
          v69 = v37;
          MEMORY[0x2318DCA20](v58, v63);
          v38 = v69;
          v39 = v65;
          *v65 = v68;
          *(v39 + 8) = v38;
          swift_storeEnumTagMultiPayload();
          sub_22DEFE894(v39, v59);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v70 = v22;
          v41 = sub_22DEF08FC(v66, v32);
          v42 = v22[2];
          v43 = (v40 & 1) == 0;
          v44 = v42 + v43;
          if (__OFADD__(v42, v43))
          {
            goto LABEL_32;
          }

          if (v22[3] >= v44)
          {
            v48 = v57;
            if (isUniquelyReferenced_nonNull_native)
            {
              goto LABEL_24;
            }

            v54 = v41;
            isUniquelyReferenced_nonNull_native = v40;
            sub_22DEFD638();
            LOBYTE(v40) = isUniquelyReferenced_nonNull_native;
            v41 = v54;
          }

          else
          {
            v45 = v40;
            sub_22DEFD044(v44, isUniquelyReferenced_nonNull_native);
            v46 = sub_22DEF08FC(v66, v32);
            if ((v45 & 1) != (v47 & 1))
            {
              goto LABEL_34;
            }

            v41 = v46;
            LOBYTE(v40) = v45;
          }

          v48 = v57;
LABEL_24:
          if (v40)
          {
            v49 = v41;

            v22 = v70;
            sub_22DEFFB1C(v59, v70[7] + v49 * v48);
          }

          else
          {
            v22 = v70;
            v70[(v41 >> 6) + 8] |= 1 << v41;
            v50 = (v22[6] + 16 * v41);
            *v50 = v66;
            v50[1] = v32;
            sub_22DEFE894(v59, v22[7] + v41 * v48);
            v51 = v22[2];
            v52 = __OFADD__(v51, 1);
            v53 = v51 + 1;
            if (v52)
            {
              goto LABEL_33;
            }

            v22[2] = v53;
          }
        }
      }

      else
      {
      }
    }
  }

  while (1)
  {
    v30 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v30 >= v27)
    {

      *(v61 + 16) = v22;
      return result;
    }

    v29 = *(v23 + 8 * v30);
    ++v28;
    if (v29)
    {
      v28 = v30;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  result = sub_22DF64234();
  __break(1u);
  return result;
}

uint64_t sub_22DF392B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for ServiceEventValue();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = (&v57 - v15);
  result = MEMORY[0x28223BE20](v14);
  v20 = (&v57 - v18);
  if (!*(a3 + 16))
  {
    return result;
  }

  v67 = v19;
  sub_22DEF0974(a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), &v57 - v18);
  if (swift_getEnumCaseMultiPayload())
  {
    return sub_22DF1904C(v20);
  }

  v63 = a1;
  v64 = v3;
  v21 = v20[1];
  v60 = *v20;
  v61 = v12;
  v65 = v21;
  v66 = v8;
  v22 = *(a1 + 16);
  v23 = a2 + 56;
  v24 = 1 << *(a2 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & *(a2 + 56);
  v27 = (v24 + 63) >> 6;

  v73 = a2;

  v28 = 0;
  v62 = v22;
  while (v26)
  {
    v29 = v26;
LABEL_14:
    v26 = (v29 - 1) & v29;
    if (v22[2])
    {
      v31 = (*(v73 + 48) + ((v28 << 10) | (16 * __clz(__rbit64(v29)))));
      v33 = *v31;
      v32 = v31[1];

      v68 = v33;
      v34 = sub_22DEF08FC(v33, v32);
      if (v35)
      {
        v36 = *(v66 + 72);
        sub_22DEF0974(v22[7] + v36 * v34, v16);
        if (swift_getEnumCaseMultiPayload())
        {

          sub_22DF1904C(v16);
        }

        else
        {
          v37 = *v16;
          v38 = v16[1];
          v58 = v36;
          v59 = v38;
          v71 = v37;
          v72 = v38;
          v69 = v60;
          v70 = v65;

          v69 = sub_22DF63B14();
          v70 = v39;
          sub_22DF63A84();

          v40 = v70;
          v41 = v67;
          *v67 = v69;
          *(v41 + 8) = v40;
          swift_storeEnumTagMultiPayload();
          sub_22DEFE894(v41, v61);
          LODWORD(v59) = swift_isUniquelyReferenced_nonNull_native();
          v71 = v22;
          v43 = sub_22DEF08FC(v68, v32);
          v44 = v22[2];
          v45 = (v42 & 1) == 0;
          v46 = v44 + v45;
          if (__OFADD__(v44, v45))
          {
            goto LABEL_32;
          }

          if (v22[3] >= v46)
          {
            v50 = v58;
            if (v59)
            {
              goto LABEL_24;
            }

            v56 = v43;
            LODWORD(v59) = v42;
            sub_22DEFD638();
            LOBYTE(v42) = v59;
            v43 = v56;
          }

          else
          {
            v47 = v42;
            sub_22DEFD044(v46, v59);
            v48 = sub_22DEF08FC(v68, v32);
            if ((v47 & 1) != (v49 & 1))
            {
              goto LABEL_34;
            }

            v43 = v48;
            LOBYTE(v42) = v47;
          }

          v50 = v58;
LABEL_24:
          if (v42)
          {
            v51 = v43;

            v22 = v71;
            sub_22DEFFB1C(v61, v71[7] + v51 * v50);
          }

          else
          {
            v22 = v71;
            v71[(v43 >> 6) + 8] |= 1 << v43;
            v52 = (v22[6] + 16 * v43);
            *v52 = v68;
            v52[1] = v32;
            sub_22DEFE894(v61, v22[7] + v43 * v50);
            v53 = v22[2];
            v54 = __OFADD__(v53, 1);
            v55 = v53 + 1;
            if (v54)
            {
              goto LABEL_33;
            }

            v22[2] = v55;
          }
        }
      }

      else
      {
      }
    }
  }

  while (1)
  {
    v30 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v30 >= v27)
    {

      *(v63 + 16) = v22;
      return result;
    }

    v29 = *(v23 + 8 * v30);
    ++v28;
    if (v29)
    {
      v28 = v30;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  result = sub_22DF64234();
  __break(1u);
  return result;
}

uint64_t sub_22DF39754(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47BC0, &unk_22DF65300);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v53 = &v48 - v6;
  v48 = a1;
  v7 = *(a1 + 16);
  v8 = v7 + 64;
  v9 = 1 << *(v7 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v7 + 64);
  v12 = (v9 + 63) >> 6;
  v13 = a2 + 56;
  result = swift_bridgeObjectRetain_n();
  v15 = 0;
  v50 = v7;
  v51 = MEMORY[0x277D84F90];
  v49 = v7 + 64;
  while (v11)
  {
LABEL_12:
    v17 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v18 = (*(v7 + 48) + ((v15 << 10) | (16 * v17)));
    v20 = *v18;
    v19 = v18[1];
    if (!*(a2 + 16))
    {

LABEL_21:
      v28 = v51;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_22DF03FB0(0, *(v28 + 2) + 1, 1, v28);
        v28 = result;
      }

      v30 = *(v28 + 2);
      v29 = *(v28 + 3);
      v51 = v28;
      if (v30 >= v29 >> 1)
      {
        result = sub_22DF03FB0((v29 > 1), v30 + 1, 1, v51);
        v51 = result;
      }

      v31 = v51;
      *(v51 + 2) = v30 + 1;
      v32 = &v31[16 * v30];
      *(v32 + 4) = v20;
      *(v32 + 5) = v19;
      goto LABEL_6;
    }

    v21 = *(a2 + 40);
    sub_22DF642A4();

    sub_22DF63A54();
    v22 = sub_22DF642D4();
    v23 = -1 << *(a2 + 32);
    v24 = v22 & ~v23;
    if (((*(v13 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
    {
      goto LABEL_21;
    }

    v25 = ~v23;
    while (1)
    {
      v26 = (*(a2 + 48) + 16 * v24);
      v27 = *v26 == v20 && v26[1] == v19;
      if (v27 || (sub_22DF64184() & 1) != 0)
      {
        break;
      }

      v24 = (v24 + 1) & v25;
      if (((*(v13 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
      {
        goto LABEL_21;
      }
    }

LABEL_6:
    v8 = v49;
    v7 = v50;
  }

  while (1)
  {
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
      return result;
    }

    if (v16 >= v12)
    {
      break;
    }

    v11 = *(v8 + 8 * v16);
    ++v15;
    if (v11)
    {
      v15 = v16;
      goto LABEL_12;
    }
  }

  v33 = *(v51 + 2);
  if (v33)
  {
    v34 = (v51 + 40);
    do
    {
      v38 = *(v34 - 1);
      v37 = *v34;

      v39 = sub_22DEF08FC(v38, v37);
      v41 = v40;

      if (v41)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v52 = v7;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_22DEFD638();
          v7 = v52;
        }

        v43 = *(*(v7 + 48) + 16 * v39 + 8);

        v44 = *(v7 + 56);
        v45 = type metadata accessor for ServiceEventValue();
        v46 = *(v45 - 8);
        v47 = v44 + *(v46 + 72) * v39;
        v36 = v53;
        sub_22DEFE894(v47, v53);
        sub_22DEFDD18(v39, v7);
        (*(v46 + 56))(v36, 0, 1, v45);
      }

      else
      {
        v35 = type metadata accessor for ServiceEventValue();
        v36 = v53;
        (*(*(v35 - 8) + 56))(v53, 1, 1, v35);
      }

      sub_22DEF1364(v36, &qword_27DA47BC0, &unk_22DF65300);
      v34 += 2;
      --v33;
    }

    while (v33);
  }

  *(v48 + 16) = v7;
  return result;
}

uint64_t sub_22DF39B78(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47BC0, &unk_22DF65300);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v32 - v6;
  v33 = a1;
  v8 = *(a1 + 16);
  v9 = a2 + 56;
  v10 = 1 << *(a2 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a2 + 56);
  v13 = (v10 + 63) >> 6;
  v14 = *(a1 + 16);

  v16 = 0;
  v32[1] = v8;
  v34 = a2;
  v35 = v7;
  while (v12)
  {
LABEL_11:
    v20 = (*(a2 + 48) + ((v16 << 10) | (16 * __clz(__rbit64(v12)))));
    v22 = *v20;
    v21 = v20[1];

    v23 = sub_22DEF08FC(v22, v21);
    v25 = v24;

    if (v25)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v36 = v8;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_22DEFD638();
        v8 = v36;
      }

      v27 = *(*(v8 + 48) + 16 * v23 + 8);

      v28 = *(v8 + 56);
      v29 = type metadata accessor for ServiceEventValue();
      v30 = *(v29 - 8);
      v31 = v28 + *(v30 + 72) * v23;
      v18 = v35;
      sub_22DEFE894(v31, v35);
      sub_22DEFDD18(v23, v8);
      (*(v30 + 56))(v18, 0, 1, v29);
      a2 = v34;
    }

    else
    {
      v17 = type metadata accessor for ServiceEventValue();
      v18 = v35;
      (*(*(v17 - 8) + 56))(v35, 1, 1, v17);
    }

    v12 &= v12 - 1;
    result = sub_22DEF1364(v18, &qword_27DA47BC0, &unk_22DF65300);
  }

  while (1)
  {
    v19 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v19 >= v13)
    {

      *(v33 + 16) = v8;
      return result;
    }

    v12 = *(v9 + 8 * v19);
    ++v16;
    if (v12)
    {
      v16 = v19;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22DF39E1C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47BC0, &unk_22DF65300);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v101 = &v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v113 = &v86 - v8;
  v103 = sub_22DF638B4();
  v9 = *(v103 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v103);
  v105 = &v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_22DF63A04();
  v12 = *(v100 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v100);
  v99 = &v86 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_22DF638A4();
  v15 = *(v102 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v102);
  v98 = &v86 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v104 = &v86 - v19;
  v115 = type metadata accessor for ServiceEventValue();
  v20 = *(*(v115 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v115);
  v94 = &v86 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v93 = (&v86 - v24);
  MEMORY[0x28223BE20](v23);
  v111 = (&v86 - v26);
  v112 = v25;
  v27 = *(a1 + 16);
  v28 = a2 + 56;
  v29 = 1 << *(a2 + 32);
  v30 = -1;
  if (v29 < 64)
  {
    v30 = ~(-1 << v29);
  }

  v31 = v30 & *(a2 + 56);
  v32 = (v29 + 63) >> 6;
  v114 = (v25 + 56);
  v97 = (v12 + 8);
  v96 = (v9 + 8);
  v95 = (v15 + 16);
  v92 = (v15 + 8);
  v33 = a2;

  v35 = 0;
  v108 = xmmword_22DF65900;
  v109 = v27;
  v36 = v27;
  while (v31)
  {
LABEL_10:
    v39 = __clz(__rbit64(v31));
    v31 &= v31 - 1;
    v40 = (*(v33 + 48) + ((v35 << 10) | (16 * v39)));
    v41 = *v40;
    v42 = v40[1];
    v43 = v36[2];

    if (!v43)
    {
      goto LABEL_4;
    }

    v118 = v41;
    v44 = sub_22DEF08FC(v41, v42);
    if (v45)
    {
      v46 = v111;
      sub_22DEF0974(v36[7] + *(v112 + 72) * v44, v111);
      if (swift_getEnumCaseMultiPayload())
      {
        sub_22DF1904C(v46);
        goto LABEL_14;
      }

      v86 = a1;
      v60 = *v46;
      v106 = v46[1];
      v107 = v60;
      v61 = v99;
      sub_22DF639F4();
      v107 = sub_22DF639C4();
      v63 = v62;

      (*v97)(v61, v100);
      v64 = v107;
      if (v63 >> 60 == 15)
      {
        v64 = 0;
      }

      v107 = v64;
      if (v63 >> 60 == 15)
      {
        v63 = 0xC000000000000000;
      }

      v106 = sub_22DF1213C(&qword_27DA47750, MEMORY[0x277CC5540]);
      sub_22DF63884();
      v65 = v107;
      v90 = v63;
      sub_22DEF7A88(v107, v63);
      v66 = v110;
      sub_22DF11DAC(v65, v63);
      v110 = v66;
      sub_22DEF7A34(v65, v63);
      v67 = v105;
      v68 = v103;
      sub_22DF63874();
      sub_22DEF7A34(v107, v90);
      (*v96)(v67, v68);
      (*v95)(v98, v104, v102);
      sub_22DF1213C(&qword_27DA47758, MEMORY[0x277CC5290]);
      result = sub_22DF63B34();
      v90 = v116;
      v69 = *(v116 + 16);
      v70 = MEMORY[0x277D84F90];
      v89 = v117;
      v88 = v69;
      if (v117 != v69)
      {
        v87 = v90 + 32;
        v76 = v89;
        v91 = v33;
        while ((v89 & 0x8000000000000000) == 0)
        {
          if (v76 >= *(v90 + 16))
          {
            goto LABEL_40;
          }

          v77 = *(v87 + v76);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47760, &unk_22DF66DB0);
          v78 = swift_allocObject();
          *(v78 + 16) = v108;
          *(v78 + 56) = MEMORY[0x277D84B78];
          *(v78 + 64) = MEMORY[0x277D84BC0];
          *(v78 + 32) = v77;
          v79 = sub_22DF639E4();
          v106 = v80;
          v107 = v79;
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_22DF03FB0(0, *(v70 + 2) + 1, 1, v70);
            v70 = result;
          }

          v82 = *(v70 + 2);
          v81 = *(v70 + 3);
          v83 = v70;
          if (v82 >= v81 >> 1)
          {
            result = sub_22DF03FB0((v81 > 1), v82 + 1, 1, v70);
            v83 = result;
          }

          ++v76;
          *(v83 + 2) = v82 + 1;
          v70 = v83;
          v84 = &v83[16 * v82];
          v85 = v106;
          *(v84 + 4) = v107;
          *(v84 + 5) = v85;
          v33 = v91;
          if (v88 == v76)
          {
            goto LABEL_25;
          }
        }

        goto LABEL_39;
      }

LABEL_25:
      v107 = v70;
      (*v92)(v104, v102);

      v116 = v70;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47670, &qword_22DF67510);
      sub_22DF18FE8();
      v106 = sub_22DF63954();
      v72 = v71;

      v73 = v93;
      *v93 = v106;
      *(v73 + 8) = v72;
      swift_storeEnumTagMultiPayload();
      v74 = v94;
      sub_22DEFE894(v73, v94);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v116 = v36;
      sub_22DEFDF04(v74, v118, v42, isUniquelyReferenced_nonNull_native);

      v36 = v116;
      a1 = v86;
    }

    else
    {
LABEL_14:
      if (v36[2] && (v47 = sub_22DEF08FC(v118, v42), (v48 & 1) != 0))
      {
        v91 = v33;
        v86 = a1;
        v49 = v36[7];
        v51 = v112;
        v50 = v113;
        v106 = *(v112 + 72);
        v52 = v118;
        sub_22DEF0974(v49 + v106 * v47, v113);
        v53 = *(v51 + 56);
        v54 = 1;
        v107 = v53;
        v53(v50, 0, 1, v115);
        sub_22DEF1364(v50, &qword_27DA47BC0, &unk_22DF65300);
        v55 = sub_22DEF08FC(v52, v42);
        LOBYTE(v50) = v56;

        if (v50)
        {
          v57 = swift_isUniquelyReferenced_nonNull_native();
          v116 = v36;
          if (!v57)
          {
            sub_22DEFD638();
            v36 = v116;
          }

          v58 = *(v36[6] + 16 * v55 + 8);

          v59 = v101;
          sub_22DEFE894(v36[7] + v55 * v106, v101);
          sub_22DEFDD18(v55, v36);
          v54 = 0;
        }

        else
        {
          v59 = v101;
        }

        v107(v59, v54, 1, v115);
        result = sub_22DEF1364(v59, &qword_27DA47BC0, &unk_22DF65300);
        a1 = v86;
        v33 = v91;
      }

      else
      {
LABEL_4:
        v37 = v113;
        (*v114)(v113, 1, 1, v115);

        result = sub_22DEF1364(v37, &qword_27DA47BC0, &unk_22DF65300);
      }
    }
  }

  while (1)
  {
    v38 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      break;
    }

    if (v38 >= v32)
    {

      *(a1 + 16) = v36;
      return result;
    }

    v31 = *(v28 + 8 * v38);
    ++v35;
    if (v31)
    {
      v35 = v38;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_22DF3A868(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_22DF3A8B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22DF3A99C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0x800000022DF6F3E0;
  v5 = 0x69745F7261646172;
  if (a1 == 4)
  {
    v5 = 0xD000000000000011;
  }

  else
  {
    v4 = 0xEB00000000656C74;
  }

  if (a1 == 3)
  {
    v6 = 0xD000000000000012;
  }

  else
  {
    v6 = v5;
  }

  if (a1 == 3)
  {
    v4 = 0x800000022DF6F3C0;
  }

  v7 = 0xE300000000000000;
  v8 = 0xD000000000000013;
  if (a1 == 1)
  {
    v8 = 7496054;
  }

  else
  {
    v7 = 0x800000022DF6F3A0;
  }

  if (a1)
  {
    v3 = v7;
  }

  else
  {
    v8 = 0x7972617262696CLL;
  }

  if (a1 <= 2u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v6;
  }

  if (v2 <= 2)
  {
    v10 = v3;
  }

  else
  {
    v10 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v11 = 0x800000022DF6F3C0;
      if (v9 != 0xD000000000000012)
      {
        goto LABEL_39;
      }
    }

    else if (a2 == 4)
    {
      v11 = 0x800000022DF6F3E0;
      if (v9 != 0xD000000000000011)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v11 = 0xEB00000000656C74;
      if (v9 != 0x69745F7261646172)
      {
LABEL_39:
        v12 = sub_22DF64184();
        goto LABEL_40;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v11 = 0xE300000000000000;
      if (v9 != 7496054)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v11 = 0x800000022DF6F3A0;
      if (v9 != 0xD000000000000013)
      {
        goto LABEL_39;
      }
    }
  }

  else
  {
    v11 = 0xE700000000000000;
    if (v9 != 0x7972617262696CLL)
    {
      goto LABEL_39;
    }
  }

  if (v10 != v11)
  {
    goto LABEL_39;
  }

  v12 = 1;
LABEL_40:

  return v12 & 1;
}

uint64_t sub_22DF3AB7C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x747069726373;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x63736A5F343662;
    }

    else
    {
      v4 = 0xD000000000000012;
    }

    if (v3 == 2)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0x800000022DF6F380;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x6E6F6973726576;
    }

    else
    {
      v4 = 0x747069726373;
    }

    if (v3)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  v6 = 0xE600000000000000;
  v7 = 0x63736A5F343662;
  v8 = 0x800000022DF6F380;
  if (a2 == 2)
  {
    v8 = 0xE700000000000000;
  }

  else
  {
    v7 = 0xD000000000000012;
  }

  if (a2)
  {
    v2 = 0x6E6F6973726576;
    v6 = 0xE700000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_22DF64184();
  }

  return v11 & 1;
}

uint64_t sub_22DF3ACB8()
{
  v1 = *v0;
  sub_22DF642A4();
  sub_22DF63A54();

  return sub_22DF642D4();
}

uint64_t sub_22DF3AD7C()
{
  sub_22DF642A4();
  sub_22DF63A54();

  return sub_22DF642D4();
}

uint64_t sub_22DF3AE8C()
{
  *v0;
  *v0;
  *v0;
  sub_22DF63A54();
}

uint64_t sub_22DF3AF3C()
{
  v1 = *v0;
  sub_22DF642A4();
  sub_22DF63A54();

  return sub_22DF642D4();
}

uint64_t sub_22DF3AFFC()
{
  sub_22DF642A4();
  sub_22DF63A54();

  return sub_22DF642D4();
}

uint64_t sub_22DF3B108@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_22DF3C03C();
  *a2 = result;
  return result;
}

void sub_22DF3B138(unint64_t *a1@<X8>)
{
  v2 = 0xE600000000000000;
  v3 = 0x747069726373;
  v4 = 0xE700000000000000;
  v5 = 0x63736A5F343662;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000012;
    v4 = 0x800000022DF6F380;
  }

  if (*v1)
  {
    v3 = 0x6E6F6973726576;
    v2 = 0xE700000000000000;
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

unint64_t sub_22DF3B1B8()
{
  v1 = 0x747069726373;
  v2 = 0x63736A5F343662;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000012;
  }

  if (*v0)
  {
    v1 = 0x6E6F6973726576;
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

uint64_t sub_22DF3B234@<X0>(_BYTE *a1@<X8>)
{
  result = sub_22DF3C03C();
  *a1 = result;
  return result;
}

uint64_t sub_22DF3B25C(uint64_t a1)
{
  v2 = sub_22DF3CC94();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22DF3B298(uint64_t a1)
{
  v2 = sub_22DF3CC94();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22DF3B2D4()
{
  v1 = v0;
  v2 = sub_22DF1B590();
  v3 = MEMORY[0x2318DC890](4, MEMORY[0x277D837D0], v2, MEMORY[0x277D837E0]);
  v4 = *v1;
  v5 = v1[1];
  v6 = sub_22DF63984();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v28[0] = v3;
  sub_22DF3BEC4(v6, 0x747069726373, 0xE600000000000000, isUniquelyReferenced_nonNull_native);
  v8 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithChar_];
  v9 = swift_isUniquelyReferenced_nonNull_native();
  *&v28[0] = v3;
  sub_22DF3BEC4(v8, 0x6E6F6973726576, 0xE700000000000000, v9);
  v10 = v1[3];
  v11 = v1[4];
  v12 = sub_22DF63984();
  v13 = swift_isUniquelyReferenced_nonNull_native();
  *&v28[0] = v3;
  sub_22DF3BEC4(v12, 0x63736A5F343662, 0xE700000000000000, v13);
  v14 = v1[5];
  v15 = *(v14 + 16);
  if (v15)
  {
    v27 = MEMORY[0x277D84F90];
    sub_22DF63FC4();
    v16 = v14 + 32;
    do
    {
      v17 = *(v16 + 16);
      v28[0] = *v16;
      v28[1] = v17;
      v18 = *(v16 + 32);
      v19 = *(v16 + 48);
      v20 = *(v16 + 64);
      v29 = *(v16 + 80);
      v28[3] = v19;
      v28[4] = v20;
      v28[2] = v18;
      sub_22DF3C088(v28, v26);
      sub_22DF3B634();
      sub_22DF3C0C0(v28);
      sub_22DF63FA4();
      v21 = *(v27 + 16);
      sub_22DF63FD4();
      sub_22DF63FE4();
      sub_22DF63FB4();
      v16 += 88;
      --v15;
    }

    while (v15);
  }

  v22 = sub_22DF63B74();

  v23 = swift_isUniquelyReferenced_nonNull_native();
  v26[0] = v3;
  sub_22DF3BEC4(v22, 0xD000000000000012, 0x800000022DF6F380, v23);
  v24 = sub_22DF638C4();

  return v24;
}

uint64_t sub_22DF3B53C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_22DF3BEC4(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v18;
  }

  else
  {
    v11 = *v3;
    v12 = sub_22DEF08FC(a2, a3);
    LOBYTE(v11) = v13;

    if (v11)
    {
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v19 = *v4;
      if (!v15)
      {
        sub_22DEFD87C();
        v16 = v19;
      }

      v17 = *(*(v16 + 48) + 16 * v12 + 8);

      result = sub_22DF3BD14(v12, v16);
      *v4 = v16;
    }
  }

  return result;
}

uint64_t sub_22DF3B634()
{
  v1 = v0;
  v2 = sub_22DF1B590();
  MEMORY[0x2318DC890](2, MEMORY[0x277D837D0], v2, MEMORY[0x277D837E0]);
  v3 = *v0;
  v4 = v0[1];
  v5 = sub_22DF63984();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_22DF3BEC4(v5, 0x7972617262696CLL, 0xE700000000000000, isUniquelyReferenced_nonNull_native);
  v7 = v0[2];
  v8 = v0[3];
  v9 = sub_22DF63984();
  v10 = swift_isUniquelyReferenced_nonNull_native();
  sub_22DF3BEC4(v9, 7496054, 0xE300000000000000, v10);
  if (v0[5])
  {
    v11 = v0[4];
    v12 = sub_22DF63984();
  }

  else
  {
    v12 = 0;
  }

  sub_22DF3B53C(v12, 0xD000000000000013, 0x800000022DF6F3A0);
  if (v0[7])
  {
    v13 = v0[6];
    v14 = sub_22DF63984();
  }

  else
  {
    v14 = 0;
  }

  sub_22DF3B53C(v14, 0xD000000000000012, 0x800000022DF6F3C0);
  v15 = v0[8];
  if (v15)
  {
    v28 = MEMORY[0x277D84F90];
    v16 = *(v15 + 16);
    sub_22DEFB4C0(v16);
    if (v16)
    {
      v17 = (v15 + 40);
      do
      {
        v18 = *(v17 - 1);
        v19 = *v17;

        sub_22DF63984();

        MEMORY[0x2318DCAF0](v20);
        if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v21 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_22DF63B94();
        }

        sub_22DF63BB4();
        v17 += 2;
        --v16;
      }

      while (v16);
    }

    v22 = sub_22DF63B74();

    v23 = swift_isUniquelyReferenced_nonNull_native();
    sub_22DF3BEC4(v22, 0xD000000000000011, 0x800000022DF6F3E0, v23);
  }

  if (v1[10])
  {
    v24 = v1[9];
    v25 = sub_22DF63984();
  }

  else
  {
    v25 = 0;
  }

  sub_22DF3B53C(v25, 0x69745F7261646172, 0xEB00000000656C74);
  v26 = sub_22DF638C4();

  return v26;
}

double sub_22DF3B904@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_22DF3C0F0(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

uint64_t sub_22DF3B95C()
{
  *v0;
  *v0;
  *v0;
  sub_22DF63A54();
}

uint64_t sub_22DF3BA5C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_22DF3C38C();
  *a2 = result;
  return result;
}

void sub_22DF3BA8C(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x7972617262696CLL;
  v5 = 0x800000022DF6F3C0;
  v6 = 0x800000022DF6F3E0;
  v7 = 0x69745F7261646172;
  if (v2 == 4)
  {
    v7 = 0xD000000000000011;
  }

  else
  {
    v6 = 0xEB00000000656C74;
  }

  if (v2 == 3)
  {
    v8 = 0xD000000000000012;
  }

  else
  {
    v8 = v7;
  }

  if (v2 != 3)
  {
    v5 = v6;
  }

  v9 = 0xE300000000000000;
  v10 = 0xD000000000000013;
  if (v2 == 1)
  {
    v10 = 7496054;
  }

  else
  {
    v9 = 0x800000022DF6F3A0;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v8;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

unint64_t sub_22DF3BB54()
{
  v1 = *v0;
  v2 = 0x7972617262696CLL;
  v3 = 0x69745F7261646172;
  if (v1 == 4)
  {
    v3 = 0xD000000000000011;
  }

  if (v1 == 3)
  {
    v4 = 0xD000000000000012;
  }

  else
  {
    v4 = v3;
  }

  v5 = 0xD000000000000013;
  if (v1 == 1)
  {
    v5 = 7496054;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_22DF3BC18@<X0>(_BYTE *a1@<X8>)
{
  result = sub_22DF3C38C();
  *a1 = result;
  return result;
}

uint64_t sub_22DF3BC40(uint64_t a1)
{
  v2 = sub_22DF3CC40();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22DF3BC7C(uint64_t a1)
{
  v2 = sub_22DF3CC40();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_22DF3BCB8@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_22DF3C3D8(a1, v7);
  if (!v2)
  {
    v5 = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v8;
    result = *v7;
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t sub_22DF3BD14(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22DF63E64() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_22DF642A4();

      sub_22DF63A54();
      v13 = sub_22DF642D4();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_22DF3BEC4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_22DEF08FC(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_22DEFD394(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_22DEF08FC(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        sub_22DF64234();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      v19 = v11;
      sub_22DEFD87C();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return MEMORY[0x2821F96F8]();
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v26 = v22[2];
  v15 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v27;
}

uint64_t sub_22DF3C03C()
{
  v0 = sub_22DF64064();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_22DF3C0F0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47B08, &qword_22DF69228);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22DF3CC94();
  sub_22DF64304();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v27 = 0;
  v11 = sub_22DF640C4();
  v13 = v12;
  v14 = v11;
  v26 = 1;
  v23 = sub_22DF640F4();
  v25 = 2;
  v20 = sub_22DF640C4();
  v21 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47898, &unk_22DF69230);
  v24 = 3;
  sub_22DF3CCE8();
  sub_22DF640E4();
  (*(v6 + 8))(v9, v5);
  v16 = v22;
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  *a2 = v14;
  *(a2 + 8) = v13;
  *(a2 + 16) = v23;
  v18 = v21;
  *(a2 + 24) = v20;
  *(a2 + 32) = v18;
  *(a2 + 40) = v16;
  return result;
}

uint64_t sub_22DF3C38C()
{
  v0 = sub_22DF64064();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_22DF3C3D8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47B00, &unk_22DF69218);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v28 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22DF3CC40();
  sub_22DF64304();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v43[0]) = 0;
  v11 = sub_22DF640C4();
  v13 = v12;
  LOBYTE(v43[0]) = 1;
  v34 = sub_22DF640C4();
  v36 = v14;
  LOBYTE(v43[0]) = 2;
  v15 = sub_22DF64074();
  v35 = v16;
  v31 = v15;
  LOBYTE(v43[0]) = 3;
  v33 = 0;
  v30 = sub_22DF64074();
  v32 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47670, &qword_22DF67510);
  LOBYTE(v37) = 4;
  sub_22DF08C50();
  sub_22DF64094();
  v29 = v43[0];
  v44 = 5;
  v18 = sub_22DF64074();
  v19 = *(v6 + 8);
  v20 = v18;
  v33 = v21;
  v19(v9, v5);
  *&v37 = v11;
  *(&v37 + 1) = v13;
  *&v38 = v34;
  *(&v38 + 1) = v36;
  *&v39 = v31;
  v22 = v35;
  *(&v39 + 1) = v35;
  *&v40 = v30;
  v23 = v32;
  *(&v40 + 1) = v32;
  *&v41 = v29;
  v24 = v33;
  *(&v41 + 1) = v20;
  v42 = v33;
  sub_22DF3C088(&v37, v43);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v43[0] = v11;
  v43[1] = v13;
  v43[2] = v34;
  v43[3] = v36;
  v43[4] = v31;
  v43[5] = v22;
  v43[6] = v30;
  v43[7] = v23;
  v43[8] = v29;
  v43[9] = v20;
  v43[10] = v24;
  result = sub_22DF3C0C0(v43);
  v26 = v40;
  *(a2 + 32) = v39;
  *(a2 + 48) = v26;
  *(a2 + 64) = v41;
  *(a2 + 80) = v42;
  v27 = v38;
  *a2 = v37;
  *(a2 + 16) = v27;
  return result;
}

unint64_t sub_22DF3C8B0()
{
  result = qword_27DA47AC0;
  if (!qword_27DA47AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA47AC0);
  }

  return result;
}

unint64_t sub_22DF3C908()
{
  result = qword_27DA47AC8;
  if (!qword_27DA47AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA47AC8);
  }

  return result;
}

unint64_t sub_22DF3C960()
{
  result = qword_27DA47AD0;
  if (!qword_27DA47AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA47AD0);
  }

  return result;
}

unint64_t sub_22DF3C9B8()
{
  result = qword_27DA47AD8;
  if (!qword_27DA47AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA47AD8);
  }

  return result;
}

unint64_t sub_22DF3CA10()
{
  result = qword_27DA47AE0;
  if (!qword_27DA47AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA47AE0);
  }

  return result;
}

unint64_t sub_22DF3CA68()
{
  result = qword_27DA47AE8;
  if (!qword_27DA47AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA47AE8);
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_22DF3CAD0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22DF3CB18(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22DF3CB84(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22DF3CBCC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_22DF3CC40()
{
  result = qword_27DA47AF0;
  if (!qword_27DA47AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA47AF0);
  }

  return result;
}

unint64_t sub_22DF3CC94()
{
  result = qword_27DA47AF8;
  if (!qword_27DA47AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA47AF8);
  }

  return result;
}

unint64_t sub_22DF3CCE8()
{
  result = qword_27DA47B10;
  if (!qword_27DA47B10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DA47898, &unk_22DF69230);
    sub_22DF3CD6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA47B10);
  }

  return result;
}

unint64_t sub_22DF3CD6C()
{
  result = qword_27DA47B18;
  if (!qword_27DA47B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA47B18);
  }

  return result;
}

uint64_t sub_22DF3CDDC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_22DF3CE0C(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
  }

  return result;
}

uint64_t sub_22DF3CE0C(uint64_t *a1)
{
  sub_22DEF2388(a1, v6);
  sub_22DF3D0D0();
  v3 = sub_22DF63BD4();
  if (v1)
  {

    sub_22DEF2388(a1, v6);
    sub_22DF3D124();
    v4 = sub_22DF63BD4();
  }

  else
  {
    v4 = v3;
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v4;
}

unint64_t sub_22DF3CF50()
{
  result = qword_27DA47B20;
  if (!qword_27DA47B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA47B20);
  }

  return result;
}

unint64_t sub_22DF3CFA8()
{
  result = qword_27DA47B28;
  if (!qword_27DA47B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA47B28);
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_22DF3D01C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_22DF3D064(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

unint64_t sub_22DF3D0D0()
{
  result = qword_27DA47B30;
  if (!qword_27DA47B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA47B30);
  }

  return result;
}

unint64_t sub_22DF3D124()
{
  result = qword_27DA47B38;
  if (!qword_27DA47B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA47B38);
  }

  return result;
}

uint64_t variable initialization expression of Listener.connectionQueue()
{
  v16 = sub_22DF63824();
  v0 = *(v16 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v16);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22DF63D54();
  v4 = *(v15 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v15);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22DF63D44();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = sub_22DF63854();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  sub_22DF3D47C();
  v14 = " any expected type";
  sub_22DF63834();
  v17 = MEMORY[0x277D84F90];
  sub_22DF401B0(&qword_27DA47B40, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA47B80, &qword_22DF69400);
  sub_22DF3D4C8();
  sub_22DF63E54();
  (*(v4 + 104))(v7, *MEMORY[0x277D85268], v15);
  v12 = v16;
  (*(v0 + 104))(v3, *MEMORY[0x277D851A8], v16);
  sub_22DF63D84();
  (*(v0 + 8))(v3, v12);
  return sub_22DF63D74();
}

unint64_t sub_22DF3D47C()
{
  result = qword_27DA47B70;
  if (!qword_27DA47B70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DA47B70);
  }

  return result;
}

unint64_t sub_22DF3D4C8()
{
  result = qword_27DA47B48;
  if (!qword_27DA47B48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DA47B80, &qword_22DF69400);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA47B48);
  }

  return result;
}

uint64_t variable initialization expression of Listener.clients()
{
  if (MEMORY[0x277D84F90] >> 62 && sub_22DF63E94())
  {
    v0 = sub_22DF3FC5C(MEMORY[0x277D84F90]);
  }

  else
  {
    v0 = MEMORY[0x277D84FA0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47B50, &qword_22DF69408);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = v0;
  return result;
}

uint64_t sub_22DF3D5AC()
{
  v0 = sub_22DF63734();
  __swift_allocate_value_buffer(v0, qword_27DA4D758);
  __swift_project_value_buffer(v0, qword_27DA4D758);
  return sub_22DF63724();
}

uint64_t Listener.__allocating_init(mode:clientBundleID:)(char a1, uint64_t a2, uint64_t a3)
{
  swift_allocObject();
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22DEF4014;

  return Listener.init(mode:clientBundleID:)(a1, a2, a3);
}

uint64_t Listener.init(mode:clientBundleID:)(char a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 168) = a3;
  *(v4 + 176) = v3;
  *(v4 + 160) = a2;
  *(v4 + 73) = a1;
  v5 = sub_22DF63824();
  *(v4 + 184) = v5;
  v6 = *(v5 - 8);
  *(v4 + 192) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 200) = swift_task_alloc();
  v8 = sub_22DF63D54();
  *(v4 + 208) = v8;
  v9 = *(v8 - 8);
  *(v4 + 216) = v9;
  v10 = *(v9 + 64) + 15;
  *(v4 + 224) = swift_task_alloc();
  v11 = sub_22DF63D44();
  *(v4 + 232) = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  *(v4 + 240) = swift_task_alloc();
  v13 = *(*(sub_22DF63854() - 8) + 64) + 15;
  *(v4 + 248) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22DF3D86C, 0, 0);
}

uint64_t sub_22DF3D86C()
{
  v1 = *(v0 + 240);
  v17 = *(v0 + 248);
  v2 = *(v0 + 232);
  v3 = *(v0 + 216);
  v15 = *(v0 + 224);
  v16 = *(v0 + 208);
  v4 = *(v0 + 192);
  v5 = *(v0 + 200);
  v6 = *(v0 + 184);
  v18 = *(v0 + 176);
  sub_22DF3D47C();
  sub_22DF63834();
  *(v0 + 152) = MEMORY[0x277D84F90];
  sub_22DF401B0(&qword_27DA47B40, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA47B80, &qword_22DF69400);
  sub_22DF3D4C8();
  sub_22DF63E54();
  (*(v3 + 104))(v15, *MEMORY[0x277D85268], v16);
  (*(v4 + 104))(v5, *MEMORY[0x277D851A8], v6);
  sub_22DF63D84();
  (*(v4 + 8))(v5, v6);
  *(v18 + 16) = sub_22DF63D74();
  if (MEMORY[0x277D84F90] >> 62 && sub_22DF63E94())
  {
    v7 = sub_22DF3FC5C(MEMORY[0x277D84F90]);
  }

  else
  {
    v7 = MEMORY[0x277D84FA0];
  }

  v8 = *(v0 + 176);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47B50, &qword_22DF69408);
  v9 = swift_allocObject();
  *(v9 + 24) = 0;
  *(v9 + 16) = v7;
  *(v8 + 24) = v9;
  *(v8 + 96) = 0;
  v10 = swift_task_alloc();
  *(v0 + 256) = v10;
  *v10 = v0;
  v10[1] = sub_22DF3DAFC;
  v11 = *(v0 + 160);
  v12 = *(v0 + 168);
  v13 = *(v0 + 73);

  return Daemon.init(mode:clientBundleID:)(v0 + 16, v13, v11, v12);
}

uint64_t sub_22DF3DAFC()
{
  v1 = *(*v0 + 256);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_22DF3DBF8, 0, 0);
}

uint64_t sub_22DF3DBF8()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 73);
  v3 = *(v0 + 16);
  v4 = *(v0 + 32);
  v5 = *(v0 + 48);
  *(v1 + 73) = *(v0 + 57);
  v1[3] = v4;
  v1[4] = v5;
  v1[2] = v3;
  v6 = *(v0 + 176);
  if (v2)
  {
    v7 = *(v6 + 16);
    if (v2 == 1)
    {
      type metadata accessor for XPCConnection();
      swift_allocObject();

      XPCConnection.init(serviceName:targetQ:listen:delegate:)(0xD000000000000023, 0x800000022DF6F490, v7, 1, v6, &protocol witness table for Listener);
    }

    else
    {
      type metadata accessor for XPCConnection();
      swift_allocObject();

      v8 = XPCConnection.init(machService:targetQ:listen:delegate:)(0xD000000000000019, 0x800000022DF6F470, v7, 1, v6, &protocol witness table for Listener);
    }
  }

  else
  {
    v9 = *(v6 + 16);
    type metadata accessor for XPCConnection();
    swift_allocObject();
    v10 = v9;

    v8 = XPCConnection.init(targetQ:delegate:)(v10, v6, &protocol witness table for Listener);
  }

  v11 = v8;
  v13 = *(v0 + 240);
  v12 = *(v0 + 248);
  v14 = *(v0 + 224);
  v15 = *(v0 + 200);
  v16 = *(v0 + 176);
  swift_beginAccess();
  v17 = *(v16 + 96);
  *(v16 + 96) = v11;

  v18 = *(v0 + 8);
  v19 = *(v0 + 176);

  return v18(v19);
}

uint64_t Listener.connection(targetQ:delegate:)(void *a1, uint64_t a2, uint64_t a3)
{
  result = swift_beginAccess();
  v8 = *(v3 + 96);
  if (v8)
  {
    type metadata accessor for XPCConnection();
    swift_allocObject();
    swift_unknownObjectRetain();

    return XPCConnection.init(listener:targetQ:delegate:)(v8, a1, a2, a3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t Listener.handle(message:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47460, &qword_22DF65310);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v36 - v2;
  v4 = type metadata accessor for XPCObject();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v36 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA47600, &unk_22DF660C0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v36 - v17;
  v19 = swift_unknownObjectRetain();
  v20 = XPCIncomingConnection.init(conn:)(v19);
  XPCIncomingConnection.entitlementValue(forKey:)(v18);
  sub_22DEF12FC(v18, v16, &unk_27DA47600, &unk_22DF660C0);
  if ((*(v5 + 48))(v16, 1, v4) == 1)
  {
    sub_22DEF1364(v16, &unk_27DA47600, &unk_22DF660C0);
LABEL_14:
    pid = xpc_connection_get_pid(v20);
    if (qword_27DA4D750 != -1)
    {
      swift_once();
    }

    v29 = sub_22DF63734();
    __swift_project_value_buffer(v29, qword_27DA4D758);
    v30 = sub_22DF63714();
    v31 = sub_22DF63D04();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 67240192;
      *(v32 + 4) = pid;
      _os_log_impl(&dword_22DEEA000, v30, v31, "connection attempted by unentitled process %{public}d", v32, 8u);
      MEMORY[0x2318DDBE0](v32, -1, -1);
    }

    xpc_connection_cancel(v20);
    swift_unknownObjectRelease();
    return sub_22DEF1364(v18, &unk_27DA47600, &unk_22DF660C0);
  }

  sub_22DF3FF98(v16, v11);
  sub_22DF3FFFC(v11, v9);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_22DF40060(v11);
    v27 = v9;
LABEL_13:
    sub_22DF40060(v27);
    goto LABEL_14;
  }

  if ((*v9 & 1) == 0)
  {
    v27 = v11;
    goto LABEL_13;
  }

  v21 = v36;
  swift_beginAccess();
  if (*(v21 + 88))
  {
    v22 = xpc_connection_get_pid(v20);
    if (qword_27DA4D750 != -1)
    {
      swift_once();
    }

    v23 = sub_22DF63734();
    __swift_project_value_buffer(v23, qword_27DA4D758);
    v24 = sub_22DF63714();
    v25 = sub_22DF63D04();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 67240192;
      *(v26 + 4) = v22;
      _os_log_impl(&dword_22DEEA000, v24, v25, "rejecting connection from %{public}d while reporting is disabled", v26, 8u);
      MEMORY[0x2318DDBE0](v26, -1, -1);
    }

    xpc_connection_cancel(v20);
    swift_unknownObjectRelease();
  }

  else
  {
    v34 = sub_22DF63C34();
    (*(*(v34 - 8) + 56))(v3, 1, 1, v34);
    v35 = swift_allocObject();
    v35[2] = 0;
    v35[3] = 0;
    v35[4] = v21;
    v35[5] = v20;

    swift_unknownObjectRetain();
    sub_22DEEFE64(0, 0, v3, &unk_22DF69428, v35);
    swift_unknownObjectRelease();
  }

  sub_22DF40060(v11);
  return sub_22DEF1364(v18, &unk_27DA47600, &unk_22DF660C0);
}

uint64_t sub_22DF3E3D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  return MEMORY[0x2822009F8](sub_22DF3E3F4, 0, 0);
}

uint64_t sub_22DF3E3F4()
{
  v1 = v0[5];
  result = swift_beginAccess();
  v3 = *(v1 + 56);
  if (!v3)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = v0[5];
  v5 = v4[8];
  if (!v5)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v6 = v4[9];
  if (!v6)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v7 = v4[10];
  if (!v7)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v8 = v0[6];
  type metadata accessor for Client();

  swift_unknownObjectRetain();
  v9 = swift_task_alloc();
  v0[7] = v9;
  *v9 = v0;
  v9[1] = sub_22DF3E544;
  v10 = v0[5];
  v11 = v0[6];

  return sub_22DF40644(v3, v5, v6, v7, v10, v11);
}

uint64_t sub_22DF3E544(uint64_t a1)
{
  v2 = *(*v1 + 56);
  v4 = *v1;
  *(*v1 + 64) = a1;

  return MEMORY[0x2822009F8](sub_22DF3E644, 0, 0);
}

uint64_t sub_22DF3E644()
{
  v1 = v0[8];
  v2 = *(v0[5] + 24);

  os_unfair_lock_lock(v2 + 6);
  sub_22DF401F8();
  v3 = v0[8];
  os_unfair_lock_unlock(v2 + 6);

  v4 = v0[1];

  return v4();
}

uint64_t sub_22DF3E714()
{
  v1 = *(v0 + 24);

  os_unfair_lock_lock(v1 + 6);
  sub_22DF40154();
  os_unfair_lock_unlock(v1 + 6);
}

uint64_t Listener.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);
  v5 = *(v0 + 72);
  v6 = *(v0 + 80);

  v7 = *(v0 + 96);

  return v0;
}

uint64_t Listener.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);
  v5 = *(v0 + 72);
  v6 = *(v0 + 80);

  v7 = *(v0 + 96);

  return swift_deallocClassInstance();
}

uint64_t sub_22DF3E894(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = sub_22DF63EA4();

    if (v8)
    {

      type metadata accessor for Client();
      swift_dynamicCast();
      result = 0;
      *a1 = v21;
      return result;
    }

    result = sub_22DF63E94();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v18 = sub_22DF3EB34(v7, result + 1);
    v19 = *(v18 + 16);
    if (*(v18 + 24) <= v19)
    {
      sub_22DF3ED68(v19 + 1);
    }

    sub_22DF3EFFC(v20, v18);

    *v3 = v18;
    goto LABEL_16;
  }

  type metadata accessor for Client();
  v10 = *(v6 + 40);
  sub_22DF401B0(&unk_27DA47BA0, type metadata accessor for Client);
  v11 = sub_22DF63934();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    v15 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v2;

    sub_22DF3F0E4(v17, v13, isUniquelyReferenced_nonNull_native);
    *v2 = v23;
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v14 = ~v12;
  sub_22DF401B0(&qword_27DA47B58, type metadata accessor for Client);
  while (1)
  {
    v22 = *(*(v6 + 48) + 8 * v13);
    if (sub_22DF63974())
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *a1 = *(*(v6 + 48) + 8 * v13);

  return 0;
}

uint64_t sub_22DF3EB34(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47B60, &qword_22DF69478);
    v2 = sub_22DF63EF4();
    v16 = v2;
    sub_22DF63E84();
    if (sub_22DF63EB4())
    {
      type metadata accessor for Client();
      do
      {
        swift_dynamicCast();
        v10 = *(v2 + 16);
        if (*(v2 + 24) <= v10)
        {
          sub_22DF3ED68(v10 + 1);
        }

        v2 = v16;
        v3 = *(v16 + 40);
        sub_22DF401B0(&unk_27DA47BA0, type metadata accessor for Client);
        result = sub_22DF63934();
        v5 = v16 + 56;
        v6 = -1 << *(v16 + 32);
        v7 = result & ~v6;
        v8 = v7 >> 6;
        if (((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6))) != 0)
        {
          v9 = __clz(__rbit64((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v11 = 0;
          v12 = (63 - v6) >> 6;
          do
          {
            if (++v8 == v12 && (v11 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v13 = v8 == v12;
            if (v8 == v12)
            {
              v8 = 0;
            }

            v11 |= v13;
            v14 = *(v5 + 8 * v8);
          }

          while (v14 == -1);
          v9 = __clz(__rbit64(~v14)) + (v8 << 6);
        }

        *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
        *(*(v16 + 48) + 8 * v9) = v15;
        ++*(v16 + 16);
      }

      while (sub_22DF63EB4());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_22DF3ED68(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47B60, &qword_22DF69478);
  result = sub_22DF63EE4();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v29 = v3;
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
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      type metadata accessor for Client();
      sub_22DF401B0(&unk_27DA47BA0, type metadata accessor for Client);
      result = sub_22DF63934();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
      v3 = v29;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

unint64_t sub_22DF3EFFC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  type metadata accessor for Client();
  sub_22DF401B0(&unk_27DA47BA0, type metadata accessor for Client);
  sub_22DF63934();
  v5 = -1 << *(a2 + 32);
  result = sub_22DF63E74();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_22DF3F0E4(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_22DF3ED68(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_22DF3F2CC();
      goto LABEL_12;
    }

    sub_22DF3F41C(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  type metadata accessor for Client();
  sub_22DF401B0(&unk_27DA47BA0, type metadata accessor for Client);
  result = sub_22DF63934();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_22DF401B0(&qword_27DA47B58, type metadata accessor for Client);
    do
    {
      v16 = *(*(v8 + 48) + 8 * a2);
      result = sub_22DF63974();
      if (result)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = v5;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22DF64224();
  __break(1u);
  return result;
}

void *sub_22DF3F2CC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47B60, &qword_22DF69478);
  v2 = *v0;
  v3 = sub_22DF63ED4();
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
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
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

uint64_t sub_22DF3F41C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47B60, &qword_22DF69478);
  result = sub_22DF63EE4();
  v6 = result;
  if (*(v3 + 16))
  {
    v27 = v2;
    v28 = v3;
    v7 = 0;
    v8 = v3 + 56;
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
      v15 = __clz(__rbit64(v11));
      v29 = (v11 - 1) & v11;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      type metadata accessor for Client();
      sub_22DF401B0(&unk_27DA47BA0, type metadata accessor for Client);

      result = sub_22DF63934();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
      v3 = v28;
      v11 = v29;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v2 = v27;
        goto LABEL_28;
      }

      v17 = *(v8 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v29 = (v17 - 1) & v17;
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

uint64_t sub_22DF3F694()
{
  v1 = *v0;
  if ((*v0 & 0xC000000000000001) != 0)
  {
    if (v1 < 0)
    {
      v2 = *v0;
    }

    v3 = *v0;

    v4 = sub_22DF63EC4();

    if (v4)
    {
      v5 = sub_22DF3F894();

      return v5;
    }

    return 0;
  }

  type metadata accessor for Client();
  v7 = *(v1 + 40);
  sub_22DF401B0(&unk_27DA47BA0, type metadata accessor for Client);
  v8 = sub_22DF63934();
  v9 = -1 << *(v1 + 32);
  v10 = v8 & ~v9;
  if (((*(v1 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
    return 0;
  }

  v11 = ~v9;
  sub_22DF401B0(&qword_27DA47B58, type metadata accessor for Client);
  while (1)
  {
    v16 = *(*(v1 + 48) + 8 * v10);
    if (sub_22DF63974())
    {
      break;
    }

    v10 = (v10 + 1) & v11;
    if (((*(v1 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      return 0;
    }
  }

  v12 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v0;
  v17 = *v0;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_22DF3F2CC();
    v14 = v17;
  }

  v15 = *(*(v14 + 48) + 8 * v10);
  sub_22DF3FA70(v10);
  result = v15;
  *v0 = v17;
  return result;
}

uint64_t sub_22DF3F894()
{
  v1 = *v0;

  v2 = sub_22DF63E94();
  v3 = swift_unknownObjectRetain();
  v4 = sub_22DF3EB34(v3, v2);
  v12 = v4;
  v5 = *(v4 + 40);
  type metadata accessor for Client();
  sub_22DF401B0(&unk_27DA47BA0, type metadata accessor for Client);

  v6 = sub_22DF63934();
  v7 = -1 << *(v4 + 32);
  v8 = v6 & ~v7;
  if ((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    sub_22DF401B0(&qword_27DA47B58, type metadata accessor for Client);
    while (1)
    {
      v13 = *(*(v4 + 48) + 8 * v8);
      if (sub_22DF63974())
      {
        break;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v10 = *(*(v4 + 48) + 8 * v8);
  sub_22DF3FA70(v8);
  result = sub_22DF63974();
  if (result)
  {
    *v0 = v12;
    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_22DF3FA70(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_22DF63E64();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      type metadata accessor for Client();
      sub_22DF401B0(&unk_27DA47BA0, type metadata accessor for Client);
      do
      {
        v11 = *(v3 + 40);
        v21 = *(*(v3 + 48) + 8 * v6);
        v12 = sub_22DF63934() & v7;
        if (v2 >= v10)
        {
          if (v12 >= v10 && v2 >= v12)
          {
LABEL_16:
            v15 = *(v3 + 48);
            v16 = (v15 + 8 * v2);
            v17 = (v15 + 8 * v6);
            if (v2 != v6 || v16 >= v17 + 1)
            {
              *v16 = *v17;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v10 || v2 >= v12)
        {
          goto LABEL_16;
        }

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

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_22DF3FC5C(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = sub_22DF63E94();
    if (result)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47B60, &qword_22DF69478);
      result = sub_22DF63F04();
      v3 = result;
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = sub_22DF63E94();
      v5 = result;
      if (!result)
      {
        return v3;
      }

      goto LABEL_9;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x277D84FA0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return v3;
  }

LABEL_9:
  v6 = 0;
  v7 = v3 + 56;
  v22 = v1 & 0xC000000000000001;
  v19 = v1 + 32;
  v20 = v1 & 0xFFFFFFFFFFFFFF8;
  v21 = v1;
  while (v22)
  {
    result = MEMORY[0x2318DCED0](v6, v1);
    v8 = result;
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_26;
    }

LABEL_18:
    v10 = *(v3 + 40);
    type metadata accessor for Client();
    sub_22DF401B0(&unk_27DA47BA0, type metadata accessor for Client);
    result = sub_22DF63934();
    v11 = -1 << *(v3 + 32);
    v12 = result & ~v11;
    v13 = v12 >> 6;
    v14 = *(v7 + 8 * (v12 >> 6));
    v15 = 1 << v12;
    if (((1 << v12) & v14) != 0)
    {
      v16 = ~v11;
      sub_22DF401B0(&qword_27DA47B58, type metadata accessor for Client);
      do
      {
        v23 = *(*(v3 + 48) + 8 * v12);
        result = sub_22DF63974();
        if (result)
        {

          v1 = v21;
          goto LABEL_11;
        }

        v12 = (v12 + 1) & v16;
        v13 = v12 >> 6;
        v14 = *(v7 + 8 * (v12 >> 6));
        v15 = 1 << v12;
      }

      while (((1 << v12) & v14) != 0);
      v1 = v21;
    }

    *(v7 + 8 * v13) = v15 | v14;
    *(*(v3 + 48) + 8 * v12) = v8;
    v17 = *(v3 + 16);
    v9 = __OFADD__(v17, 1);
    v18 = v17 + 1;
    if (v9)
    {
      goto LABEL_27;
    }

    *(v3 + 16) = v18;
LABEL_11:
    if (v6 == v5)
    {
      return v3;
    }
  }

  if (v6 >= *(v20 + 16))
  {
    goto LABEL_28;
  }

  v8 = *(v19 + 8 * v6);

  v9 = __OFADD__(v6++, 1);
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

void _s19CloudTelemetryTools8ListenerC6handle5errorySo13OS_xpc_object_p_tF_0()
{
  MEMORY[0x2318DDEE0]();
  v0 = sub_22DF63AA4();
  v2 = v1;
  sub_22DF63F24();

  MEMORY[0x2318DCA20](v0, v2);
  sub_22DF64004();
  __break(1u);
}

uint64_t sub_22DF3FF98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for XPCObject();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22DF3FFFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for XPCObject();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22DF40060(uint64_t a1)
{
  v2 = type metadata accessor for XPCObject();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22DF400BC()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_22DEEFBD4;

  return sub_22DF3E3D4(v4, v5, v6, v2, v3);
}

uint64_t sub_22DF401B0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22DF401F8()
{

  sub_22DF3E894(&v2, v0);
}

BOOL sub_22DF40248(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = ~v2;
  v4 = *a2;
  v5 = v2 - 2;
  v6 = v3 & 1;
  if (v5 >= 5)
  {
    v7 = v6;
  }

  else
  {
    v7 = v5 + 2;
  }

  if ((v4 - 2) >= 5)
  {
    v8 = (v4 & 1) == 0;
  }

  else
  {
    v8 = (v4 - 2) + 2;
  }

  return v7 == v8;
}

uint64_t ServiceSamplingOutcome.rawValue.getter(char a1)
{
  if ((a1 - 2) >= 5u)
  {
    return (a1 & 1) == 0;
  }

  else
  {
    return (a1 - 2) + 2;
  }
}

uint64_t sub_22DF402BC@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s19CloudTelemetryTools22ServiceSamplingOutcomeO8rawValueACSgSi_tcfC_0(*a1);
  *a2 = result;
  return result;
}

void sub_22DF402E8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = ~v2;
  v4 = v2 - 2;
  v5 = v3 & 1;
  if (v4 >= 5)
  {
    v6 = v5;
  }

  else
  {
    v6 = v4 + 2;
  }

  *a1 = v6;
}

uint64_t _s19CloudTelemetryTools22ServiceSamplingOutcomeO8rawValueACSgSi_tcfC_0(unint64_t a1)
{
  if (a1 >= 7)
  {
    return 7;
  }

  else
  {
    return (0x6050403020001uLL >> (8 * a1));
  }
}

BOOL _s19CloudTelemetryTools22ServiceSamplingOutcomeO1loiySbAC_ACtFZ_0(char a1, char a2)
{
  v2 = (a1 - 2) + 2;
  if ((a1 - 2) >= 5u)
  {
    v2 = (a1 & 1) == 0;
  }

  v3 = (a2 - 2) + 2;
  if ((a2 - 2) >= 5u)
  {
    v3 = (a2 & 1) == 0;
  }

  return v2 < v3;
}

unint64_t sub_22DF403F8()
{
  result = qword_27DA47B68;
  if (!qword_27DA47B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA47B68);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ServiceSamplingOutcome(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_19;
  }

  v2 = a2 + 6;
  if (a2 + 6 >= 0xFFFF00)
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
        goto LABEL_19;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_19;
      }
    }

    return (*a1 | (v5 << 8)) - 6;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 6;
    }
  }

LABEL_19:
  v7 = *a1;
  if (v7 < 2)
  {
    return 0;
  }

  v8 = (v7 + 2147483646) & 0x7FFFFFFF;
  result = v8 - 4;
  if (v8 <= 4)
  {
    return 0;
  }

  return result;
}

uint64_t sub_22DF404EC(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_22DF40508(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t sub_22DF40530(char a1, char a2)
{
  if (a2)
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return v2 & 0xFFFFFFFE | a1 & 1;
}

uint64_t sub_22DF40550@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, __int16 a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *a8 = result;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5 & 1;
  *(a8 + 33) = HIBYTE(a5) & 1;
  *(a8 + 40) = a6;
  *(a8 + 48) = a7;
  return result;
}

uint64_t sub_22DF40570()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = *v0;
  v5 = v0[1];

  MEMORY[0x2318DCA20](58, 0xE100000000000000);
  MEMORY[0x2318DCA20](v1, v2);
  return v4;
}

uint64_t sub_22DF405D0()
{
  v0 = sub_22DF63734();
  __swift_allocate_value_buffer(v0, qword_27DA4D8F8);
  __swift_project_value_buffer(v0, qword_27DA4D8F8);
  return sub_22DF63724();
}

uint64_t sub_22DF40644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v19 = *MEMORY[0x277D85DE8];
  v7[11] = a6;
  v7[12] = v6;
  v7[9] = a4;
  v7[10] = a5;
  v7[7] = a2;
  v7[8] = a3;
  v7[6] = a1;
  v8 = sub_22DF63824();
  v7[13] = v8;
  v9 = *(v8 - 8);
  v7[14] = v9;
  v10 = *(v9 + 64) + 15;
  v7[15] = swift_task_alloc();
  v11 = sub_22DF63D54();
  v7[16] = v11;
  v12 = *(v11 - 8);
  v7[17] = v12;
  v13 = *(v12 + 64) + 15;
  v7[18] = swift_task_alloc();
  v14 = sub_22DF63D44();
  v7[19] = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  v7[20] = swift_task_alloc();
  v16 = *(*(sub_22DF63854() - 8) + 64) + 15;
  v7[21] = swift_task_alloc();
  v7[22] = swift_allocObject();
  v17 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_22DF40808, 0, 0);
}

uint64_t sub_22DF40808()
{
  v30 = v0;
  v29 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 176);
  v3 = *(v0 + 80);
  v2 = *(v0 + 88);
  v5 = *(v0 + 64);
  v4 = *(v0 + 72);
  v7 = *(v0 + 48);
  v6 = *(v0 + 56);
  swift_defaultActor_initialize();
  v1[14] = 0;
  v1[18] = v7;
  v1[19] = v6;
  v1[20] = v5;
  v1[21] = v4;
  v1[22] = v3;

  *(v0 + 184) = XPCIncomingConnection.auditToken.getter();
  *(v0 + 192) = v8;
  *(v0 + 200) = v9;
  *(v0 + 208) = v10;
  if (swift_stdlib_isStackAllocationSafe())
  {
    sub_22DF414D0(v0 + 216, (v0 + 184), v0 + 4312, &v27);
  }

  else
  {
    v11 = swift_slowAlloc();
    sub_22DF414D0(v11, (v0 + 184), v11 + 4096, &v27);
    MEMORY[0x2318DDBE0](v11, -1, -1);
  }

  v12 = v28;
  v13 = *(v0 + 176);
  v22 = *(v0 + 168);
  v14 = *(v0 + 152);
  v15 = *(v0 + 136);
  v23 = *(v0 + 160);
  v24 = *(v0 + 144);
  v16 = *(v0 + 120);
  v25 = *(v0 + 128);
  v17 = *(v0 + 112);
  v26 = *(v0 + 104);
  v13[16] = v27;
  v13[17] = v12;
  sub_22DF3D47C();
  v27 = 0;
  v28 = 0xE000000000000000;
  sub_22DF63F24();

  v27 = 0xD000000000000020;
  v28 = 0x800000022DF6F5A0;
  v18 = v13[16];
  v19 = v13[17];

  MEMORY[0x2318DCA20](v18, v19);

  sub_22DF63834();
  *(v0 + 40) = MEMORY[0x277D84F90];
  sub_22DF4B70C(&qword_27DA47B40, 255, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA47B80, &qword_22DF69400);
  sub_22DF3D4C8();
  sub_22DF63E54();
  (*(v15 + 104))(v24, *MEMORY[0x277D85268], v25);
  (*(v17 + 104))(v16, *MEMORY[0x277D851A8], v26);
  sub_22DF63D84();
  (*(v17 + 8))(v16, v26);
  v13[15] = sub_22DF63D74();
  v20 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_22DF40C08, v13, 0);
}

uint64_t sub_22DF40C08()
{
  v19 = *MEMORY[0x277D85DE8];
  v1 = v0[22];
  v15 = v0[21];
  v16 = v0[20];
  v17 = v0[18];
  v18 = v0[15];
  v3 = v0[10];
  v2 = v0[11];
  v5 = v0[8];
  v4 = v0[9];
  v6 = v0[6];
  v7 = v0[7];
  v8 = *(v1 + 120);

  v9 = XPCIncomingConnection.makeConnection(targetQ:delegate:)(v8, v1, &off_284195F38, v2);
  swift_unknownObjectRelease();

  swift_beginAccess();
  v10 = *(v1 + 112);
  *(v1 + 112) = v9;

  v11 = v0[1];
  v12 = v0[22];
  v13 = *MEMORY[0x277D85DE8];

  return v11(v12);
}

uint64_t sub_22DF40D80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v19 = *MEMORY[0x277D85DE8];
  v7[11] = a6;
  v7[12] = v6;
  v7[9] = a4;
  v7[10] = a5;
  v7[7] = a2;
  v7[8] = a3;
  v7[6] = a1;
  v7[13] = *v6;
  v8 = sub_22DF63824();
  v7[14] = v8;
  v9 = *(v8 - 8);
  v7[15] = v9;
  v10 = *(v9 + 64) + 15;
  v7[16] = swift_task_alloc();
  v11 = sub_22DF63D54();
  v7[17] = v11;
  v12 = *(v11 - 8);
  v7[18] = v12;
  v13 = *(v12 + 64) + 15;
  v7[19] = swift_task_alloc();
  v14 = sub_22DF63D44();
  v7[20] = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  v7[21] = swift_task_alloc();
  v16 = *(*(sub_22DF63854() - 8) + 64) + 15;
  v7[22] = swift_task_alloc();
  v17 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_22DF40F58, 0, 0);
}

uint64_t sub_22DF40F58()
{
  v30 = v0;
  v29 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  v4 = *(v0 + 72);
  v3 = *(v0 + 80);
  v6 = *(v0 + 56);
  v5 = *(v0 + 64);
  v7 = *(v0 + 48);
  swift_defaultActor_initialize();
  v2[14] = 0;
  v2[18] = v7;
  v2[19] = v6;
  v2[20] = v5;
  v2[21] = v4;
  v2[22] = v3;

  *(v0 + 184) = XPCIncomingConnection.auditToken.getter();
  *(v0 + 192) = v8;
  *(v0 + 200) = v9;
  *(v0 + 208) = v10;
  if (swift_stdlib_isStackAllocationSafe())
  {
    sub_22DF414D0(v0 + 216, (v0 + 184), v0 + 4312, &v27);
  }

  else
  {
    v11 = swift_slowAlloc();
    sub_22DF414D0(v11, (v0 + 184), v11 + 4096, &v27);
    MEMORY[0x2318DDBE0](v11, -1, -1);
  }

  v12 = v28;
  v22 = *(v0 + 176);
  v13 = *(v0 + 160);
  v23 = *(v0 + 168);
  v24 = *(v0 + 152);
  v14 = *(v0 + 144);
  v25 = *(v0 + 136);
  v16 = *(v0 + 120);
  v15 = *(v0 + 128);
  v26 = *(v0 + 112);
  v17 = *(v0 + 96);
  v17[16] = v27;
  v17[17] = v12;
  sub_22DF3D47C();
  v27 = 0;
  v28 = 0xE000000000000000;
  sub_22DF63F24();

  v27 = 0xD000000000000020;
  v28 = 0x800000022DF6F5A0;
  v18 = v17[16];
  v19 = v17[17];

  MEMORY[0x2318DCA20](v18, v19);

  sub_22DF63834();
  *(v0 + 40) = MEMORY[0x277D84F90];
  sub_22DF4B70C(&qword_27DA47B40, 255, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA47B80, &qword_22DF69400);
  sub_22DF3D4C8();
  sub_22DF63E54();
  (*(v14 + 104))(v24, *MEMORY[0x277D85268], v25);
  (*(v16 + 104))(v15, *MEMORY[0x277D851A8], v26);
  sub_22DF63D84();
  (*(v16 + 8))(v15, v26);
  v17[15] = sub_22DF63D74();
  v20 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_22DF41358, v17, 0);
}

uint64_t sub_22DF41358()
{
  v19 = *MEMORY[0x277D85DE8];
  v15 = v0[22];
  v16 = v0[21];
  v17 = v0[19];
  v18 = v0[16];
  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[7];
  v6 = v0[8];
  v7 = v0[6];
  v8 = *(v1 + 120);

  v9 = XPCIncomingConnection.makeConnection(targetQ:delegate:)(v8, v1, &off_284195F38, v2);
  swift_unknownObjectRelease();

  swift_beginAccess();
  v10 = *(v1 + 112);
  *(v1 + 112) = v9;

  v11 = v0[1];
  v12 = v0[12];
  v13 = *MEMORY[0x277D85DE8];

  return v11(v12);
}

uint64_t sub_22DF414D0@<X0>(uint64_t buffer@<X0>, audit_token_t *audittoken@<X2>, uint64_t a3@<X1>, uint64_t *a4@<X8>)
{
  *buffer = 0;
  if (!buffer)
  {
    goto LABEL_9;
  }

  if (a3 - buffer > 0xFFFFFFFFLL)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return buffer;
  }

  buffer = proc_pidpath_audittoken(audittoken, buffer, a3 - buffer);
  if (buffer < 1)
  {
    v7 = 0xE700000000000000;
    v5 = 0x6E776F6E6B6E75;
  }

  else
  {
    v5 = sub_22DF63AB4();
    v7 = v6;
    v19[0] = 47;
    v19[1] = 0xE100000000000000;
    MEMORY[0x28223BE20](v5);
    v18[2] = v19;
    buffer = sub_22DF4B174(sub_22DF14220, v18, v5, v7);
    if ((v8 & 1) == 0)
    {
      v9 = sub_22DF63A64();
      v10 = sub_22DF4B3A4(v9, v5, v7);
      v12 = v11;
      v14 = v13;
      v16 = v15;

      v5 = MEMORY[0x2318DC9D0](v10, v12, v14, v16);
      v7 = v17;
    }
  }

  *a4 = v5;
  a4[1] = v7;
  return buffer;
}

void sub_22DF41660()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47460, &qword_22DF65310);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  swift_unknownObjectRetain();
  XPCMessage.init(fromXPC:)();
}

void sub_22DF416DC(uint64_t a1, char a2)
{
  if (a1)
  {
    v7 = sub_22DF63C34();
    (*(*(v7 - 8) + 56))(v3, 1, 1, v7);
    v8 = swift_allocObject();
    *(v8 + 16) = 0;
    *(v8 + 24) = 0;
    *(v8 + 32) = v2;
    *(v8 + 40) = a1;
    *(v8 + 48) = a2;

    sub_22DEEFE64(0, 0, v3, &unk_22DF69578, v8);
  }

  else
  {
    if (qword_27DA4D8F0 != -1)
    {
      swift_once();
    }

    v9 = sub_22DF63734();
    __swift_project_value_buffer(v9, qword_27DA4D8F8);

    *(v4 - 64) = sub_22DF63714();
    v10 = sub_22DF63D04();

    if (os_log_type_enabled(*(v4 - 64), v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *(v4 - 56) = v12;
      *v11 = 136446210;
      *(v11 + 4) = sub_22DEF0354(*(v2 + 128), *(v2 + 136), (v4 - 56));
      _os_log_impl(&dword_22DEEA000, *(v4 - 64), v10, "received invalid XPC message from %{public}s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x2318DDBE0](v12, -1, -1);
      MEMORY[0x2318DDBE0](v11, -1, -1);
    }

    else
    {
      v13 = *(v4 - 64);
    }
  }
}

uint64_t sub_22DF418D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = sub_22DEEFBD4;

  return sub_22DF41980(a5, a6);
}

uint64_t sub_22DF41980(uint64_t a1, char a2)
{
  *(v3 + 1560) = v2;
  *(v3 + 2212) = a2;
  *(v3 + 1552) = a1;
  v4 = sub_22DF63594();
  *(v3 + 1568) = v4;
  v5 = *(v4 - 8);
  *(v3 + 1576) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 1584) = swift_task_alloc();
  v7 = *(type metadata accessor for SessionConfiguration.Backend(0) - 8);
  *(v3 + 1592) = v7;
  v8 = *(v7 + 64) + 15;
  *(v3 + 1600) = swift_task_alloc();
  *(v3 + 1608) = swift_task_alloc();
  *(v3 + 1616) = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47BC0, &unk_22DF65300) - 8) + 64) + 15;
  *(v3 + 1624) = swift_task_alloc();
  *(v3 + 1632) = swift_task_alloc();
  *(v3 + 1640) = swift_task_alloc();
  *(v3 + 1648) = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47BC8, &qword_22DF69770) - 8) + 64) + 15;
  *(v3 + 1656) = swift_task_alloc();
  *(v3 + 1664) = swift_task_alloc();
  v11 = type metadata accessor for CachedSession();
  *(v3 + 1672) = v11;
  v12 = *(v11 - 8);
  *(v3 + 1680) = v12;
  v13 = *(v12 + 64) + 15;
  *(v3 + 1688) = swift_task_alloc();
  *(v3 + 1696) = swift_task_alloc();
  *(v3 + 1704) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22DF41BCC, v2, 0);
}

uint64_t sub_22DF41BCC()
{
  v1 = *(v0 + 2212);
  if (v1 <= 1)
  {
    if (*(v0 + 2212))
    {
      v28 = *(v0 + 1560);
      type metadata accessor for SubmitEventsActivity();
      v29 = v28[18];
      v30 = v28[19];
      v31 = v28[20];

      v32 = sub_22DEEC750(v29, v30, v31);
      *(v0 + 2096) = v32;
      v33 = *(*v32 + 120);
      v38 = (v33 + *v33);
      v34 = v33[1];
      v35 = swift_task_alloc();
      *(v0 + 2104) = v35;
      *v35 = v0;
      v35[1] = sub_22DF4579C;
      v9 = v38;

      return v9();
    }

    if (qword_27DA4D8F0 != -1)
    {
      swift_once();
    }

    v10 = sub_22DF63734();
    *(v0 + 1712) = __swift_project_value_buffer(v10, qword_27DA4D8F8);
    v11 = sub_22DF63714();
    v12 = sub_22DF63CE4();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_22DEEA000, v11, v12, "SendOneMessage Request Received", v13, 2u);
      MEMORY[0x2318DDBE0](v13, -1, -1);
    }

    v14 = swift_task_alloc();
    *(v0 + 1720) = v14;
    *v14 = v0;
    v14[1] = sub_22DF421A8;
    v15 = *(v0 + 1664);
  }

  else
  {
    if (v1 == 2)
    {
      type metadata accessor for PostInstallActivity();
      v16 = sub_22DF05BD4();
      *(v0 + 2112) = v16;
      v17 = *(*v16 + 88);
      v37 = (v17 + *v17);
      v18 = v17[1];
      v19 = swift_task_alloc();
      *(v0 + 2120) = v19;
      *v19 = v0;
      v19[1] = sub_22DF45A48;
      v9 = v37;

      return v9();
    }

    if (v1 == 3)
    {
      v2 = *(v0 + 1560);
      type metadata accessor for CacheCleanupActivity();
      v3 = *(v2 + 144);

      v5 = sub_22DF27764(v4);
      *(v0 + 2128) = v5;
      v6 = *(*v5 + 104);
      v36 = (v6 + *v6);
      v7 = v6[1];
      v8 = swift_task_alloc();
      *(v0 + 2136) = v8;
      *v8 = v0;
      v8[1] = sub_22DF45CF4;
      v9 = v36;

      return v9();
    }

    if (qword_27DA4D8F0 != -1)
    {
      swift_once();
    }

    v20 = sub_22DF63734();
    *(v0 + 2144) = __swift_project_value_buffer(v20, qword_27DA4D8F8);
    v21 = sub_22DF63714();
    v22 = sub_22DF63CE4();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_22DEEA000, v21, v22, "CheckSamplingResult Request Received", v23, 2u);
      MEMORY[0x2318DDBE0](v23, -1, -1);
    }

    v24 = swift_task_alloc();
    *(v0 + 2152) = v24;
    *v24 = v0;
    v24[1] = sub_22DF45FA0;
    v15 = *(v0 + 1656);
  }

  v25 = *(v0 + 1560);
  v26 = *(v0 + 1552);

  return sub_22DF49704(v15, v26);
}

uint64_t sub_22DF421A8()
{
  v1 = *(*v0 + 1720);
  v2 = *(*v0 + 1560);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_22DF422B8, v2, 0);
}

uint64_t sub_22DF422B8()
{
  v1 = *(v0 + 1672);
  v2 = *(v0 + 1664);
  if ((*(*(v0 + 1680) + 48))(v2, 1, v1) == 1)
  {
    sub_22DEF1364(v2, &qword_27DA47BC8, &qword_22DF69770);
    v3 = *(v0 + 1704);
    v4 = *(v0 + 1696);
    v5 = *(v0 + 1688);
    v6 = *(v0 + 1664);
    v7 = *(v0 + 1656);
    v8 = *(v0 + 1648);
    v9 = *(v0 + 1640);
    v10 = *(v0 + 1632);
    v11 = *(v0 + 1624);
    v12 = *(v0 + 1616);
    v26 = *(v0 + 1608);
    v27 = *(v0 + 1600);
    v29 = *(v0 + 1584);

    v13 = *(v0 + 8);

    return v13();
  }

  else
  {
    v15 = *(v0 + 1704);
    v16 = *(v0 + 1560);
    sub_22DF4BA20(v2, v15, type metadata accessor for CachedSession);
    *(v0 + 1728) = *(v15 + *(v1 + 36));
    v17 = *v15;
    v18 = *(v15 + 16);
    v19 = *(v15 + 32);
    *(v0 + 792) = *(v15 + 48);
    *(v0 + 760) = v18;
    *(v0 + 776) = v19;
    *(v0 + 744) = v17;
    *(v0 + 1736) = *(v15 + 72);
    *(v0 + 1744) = *(v0 + 744);
    *(v0 + 1752) = *(v0 + 752);
    v20 = *(v16 + 152);
    *(v0 + 1760) = v20;
    v21 = *(*v20 + 232);

    v28 = (v21 + *v21);
    v22 = v21[1];
    v23 = swift_task_alloc();
    *(v0 + 1768) = v23;
    *v23 = v0;
    v23[1] = sub_22DF4259C;
    v24 = *(v0 + 1704);
    v25 = *(v0 + 1672);

    return (v28)(v0 + 856, v24, v25, &off_284194200);
  }
}

uint64_t sub_22DF4259C()
{
  v2 = *v1;
  v3 = *(*v1 + 1768);
  v9 = *v1;
  *(*v1 + 1776) = v0;

  if (v0)
  {
    v4 = *(v2 + 1560);
    v5 = sub_22DF46C30;
  }

  else
  {
    v6 = *(v2 + 1752);
    v7 = *(v2 + 1560);

    v5 = sub_22DF426C4;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_22DF426C4()
{
  v1 = *(v0 + 1760);
  *(v0 + 1784) = *(v0 + 864);
  *(v0 + 1792) = *(v0 + 856);
  *(v0 + 1464) = *(v0 + 880);
  v2 = *v1 + 248;
  *(v0 + 1800) = *v2;
  *(v0 + 1808) = v2 & 0xFFFFFFFFFFFFLL | 0xA469000000000000;

  return MEMORY[0x2822009F8](sub_22DF4276C, v1, 0);
}

uint64_t sub_22DF4276C()
{
  v1 = *(v0 + 1808);
  v2 = *(v0 + 1760);
  v3 = *(v0 + 1560);
  (*(v0 + 1800))(*(v0 + 1744), *(v0 + 1752));

  return MEMORY[0x2822009F8](sub_22DF427E8, v3, 0);
}

uint64_t sub_22DF427E8()
{
  v62 = v0;
  v1 = *(*(v0 + 1784) + 16);

  if (v1)
  {
    v2 = *(**(*(v0 + 1560) + 160) + 136);
    v59 = (v2 + *v2);
    v3 = v2[1];
    v4 = swift_task_alloc();
    *(v0 + 1816) = v4;
    *v4 = v0;
    v4[1] = sub_22DF42FC8;
    v5 = *(v0 + 1704);
    v6 = *(v0 + 1672);

    return (v59)(v0 + 856, v5, v6, &off_284194200);
  }

  v8 = 4079420;
  *(v0 + 1840) = 0u;
  v9 = *(v0 + 1728);
  if (*(v9 + 16) && (v10 = *(v0 + 1728), v11 = sub_22DEF08FC(0x646F6874656D5FLL, 0xE700000000000000), (v12 & 1) != 0))
  {
    v13 = v11;
    v14 = *(v0 + 1648);
    v15 = *(v0 + 1640);
    v16 = *(*(v0 + 1728) + 56);
    v17 = type metadata accessor for ServiceEventValue();
    v18 = *(v17 - 8);
    sub_22DF4B9B8(v16 + *(v18 + 72) * v13, v14, type metadata accessor for ServiceEventValue);
    (*(v18 + 56))(v14, 0, 1, v17);
    sub_22DEF12FC(v14, v15, &qword_27DA47BC0, &unk_22DF65300);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v20 = *(v0 + 1640);
    if (EnumCaseMultiPayload == 1)
    {
      *(v0 + 1544) = *v20;
      goto LABEL_13;
    }

    if (EnumCaseMultiPayload == 2)
    {
      *(v0 + 1536) = *v20;
LABEL_13:
      v24 = sub_22DF64154();
      v23 = v25;

      goto LABEL_14;
    }

    sub_22DF4B920(v20, type metadata accessor for ServiceEventValue);
  }

  else
  {
    v21 = *(v0 + 1648);
    v22 = type metadata accessor for ServiceEventValue();
    (*(*(v22 - 8) + 56))(v21, 1, 1, v22);
  }

  v23 = 0xE300000000000000;
  v24 = 4079420;
LABEL_14:
  *(v0 + 1864) = v23;
  *(v0 + 1856) = v24;
  sub_22DEF1364(*(v0 + 1648), &qword_27DA47BC0, &unk_22DF65300);
  if (*(v9 + 16) && (v26 = *(v0 + 1728), v27 = sub_22DEF08FC(0x7375746174735FLL, 0xE700000000000000), (v28 & 1) != 0))
  {
    v29 = v27;
    v30 = *(v0 + 1632);
    v31 = *(v0 + 1624);
    v32 = *(*(v0 + 1728) + 56);
    v33 = type metadata accessor for ServiceEventValue();
    v34 = *(v33 - 8);
    sub_22DF4B9B8(v32 + *(v34 + 72) * v29, v30, type metadata accessor for ServiceEventValue);
    (*(v34 + 56))(v30, 0, 1, v33);
    sub_22DEF12FC(v30, v31, &qword_27DA47BC0, &unk_22DF65300);
    v35 = swift_getEnumCaseMultiPayload();
    v36 = *(v0 + 1624);
    if (v35 == 1)
    {
      *(v0 + 1528) = *v36;
      goto LABEL_22;
    }

    if (v35 == 2)
    {
      *(v0 + 1520) = *v36;
LABEL_22:
      v8 = sub_22DF64154();
      v39 = v40;

      goto LABEL_23;
    }

    sub_22DF4B920(v36, type metadata accessor for ServiceEventValue);
  }

  else
  {
    v37 = *(v0 + 1632);
    v38 = type metadata accessor for ServiceEventValue();
    (*(*(v38 - 8) + 56))(v37, 1, 1, v38);
  }

  v39 = 0xE300000000000000;
LABEL_23:
  *(v0 + 1880) = v39;
  *(v0 + 1872) = v8;
  v41 = *(v0 + 1712);
  sub_22DEF1364(*(v0 + 1632), &qword_27DA47BC0, &unk_22DF65300);

  v42 = sub_22DF63714();
  v43 = sub_22DF63D24();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v61 = v45;
    *v44 = 136446466;
    v46 = sub_22DEF0354(v24, v23, &v61);

    *(v44 + 4) = v46;
    *(v44 + 12) = 2082;
    v47 = sub_22DEF0354(v8, v39, &v61);

    *(v44 + 14) = v47;
    _os_log_impl(&dword_22DEEA000, v42, v43, "sending one message %{public}s:%{public}s", v44, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2318DDBE0](v45, -1, -1);
    MEMORY[0x2318DDBE0](v44, -1, -1);
  }

  else
  {
  }

  v48 = *(v0 + 1792);
  v49 = *(v0 + 1784);
  v50 = *(v0 + 1728);
  v51 = *(v0 + 1560);

  *(v0 + 1200) = nullsub_1(0x4D656E4F646E6553, 0xEE00656761737365, v50);
  *(v0 + 1208) = v52;
  *(v0 + 1216) = v53;
  *(v0 + 1888) = sub_22DF4B3F0(v48);
  *(v0 + 1896) = v54;
  *(v0 + 1904) = v55;
  v56 = *(**(v51 + 160) + 152);
  v60 = (v56 + *v56);
  v57 = v56[1];
  v58 = swift_task_alloc();
  *(v0 + 1912) = v58;
  *v58 = v0;
  v58[1] = sub_22DF437D4;

  return v60(v0 + 744);
}

uint64_t sub_22DF42FC8(uint64_t a1, uint64_t a2)
{
  v7 = *v3;
  v6 = *v3;
  v8 = *(*v3 + 1816);
  v9 = *v3;

  v10 = *(v6 + 1560);
  if (v2)
  {

    v11 = sub_22DF46FFC;
  }

  else
  {
    *(v7 + 1824) = a2;
    *(v7 + 1832) = a1;
    v11 = sub_22DF43114;
  }

  return MEMORY[0x2822009F8](v11, v10, 0);
}

uint64_t sub_22DF43114()
{
  v56 = v0;
  v1 = 4079420;
  v2 = v0[229];
  v0[231] = v0[228];
  v0[230] = v2;
  v3 = v0[216];
  if (*(v3 + 16) && (v4 = v0[216], v5 = sub_22DEF08FC(0x646F6874656D5FLL, 0xE700000000000000), (v6 & 1) != 0))
  {
    v7 = v5;
    v8 = v0[206];
    v9 = v0[205];
    v10 = *(v0[216] + 56);
    v11 = type metadata accessor for ServiceEventValue();
    v12 = *(v11 - 8);
    sub_22DF4B9B8(v10 + *(v12 + 72) * v7, v8, type metadata accessor for ServiceEventValue);
    (*(v12 + 56))(v8, 0, 1, v11);
    sub_22DEF12FC(v8, v9, &qword_27DA47BC0, &unk_22DF65300);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v14 = v0[205];
    if (EnumCaseMultiPayload == 1)
    {
      v0[193] = *v14;
      goto LABEL_9;
    }

    if (EnumCaseMultiPayload == 2)
    {
      v0[192] = *v14;
LABEL_9:
      v18 = sub_22DF64154();
      v17 = v19;

      goto LABEL_10;
    }

    sub_22DF4B920(v14, type metadata accessor for ServiceEventValue);
  }

  else
  {
    v15 = v0[206];
    v16 = type metadata accessor for ServiceEventValue();
    (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  }

  v17 = 0xE300000000000000;
  v18 = 4079420;
LABEL_10:
  v0[233] = v17;
  v0[232] = v18;
  sub_22DEF1364(v0[206], &qword_27DA47BC0, &unk_22DF65300);
  if (!*(v3 + 16) || (v20 = v0[216], v21 = sub_22DEF08FC(0x7375746174735FLL, 0xE700000000000000), (v22 & 1) == 0))
  {
    v31 = v0[204];
    v32 = type metadata accessor for ServiceEventValue();
    (*(*(v32 - 8) + 56))(v31, 1, 1, v32);
LABEL_16:
    v33 = 0xE300000000000000;
    goto LABEL_19;
  }

  v23 = v21;
  v24 = v0[204];
  v25 = v0[203];
  v26 = *(v0[216] + 56);
  v27 = type metadata accessor for ServiceEventValue();
  v28 = *(v27 - 8);
  sub_22DF4B9B8(v26 + *(v28 + 72) * v23, v24, type metadata accessor for ServiceEventValue);
  (*(v28 + 56))(v24, 0, 1, v27);
  sub_22DEF12FC(v24, v25, &qword_27DA47BC0, &unk_22DF65300);
  v29 = swift_getEnumCaseMultiPayload();
  v30 = v0[203];
  if (v29 == 1)
  {
    v0[191] = *v30;
    goto LABEL_18;
  }

  if (v29 != 2)
  {
    sub_22DF4B920(v30, type metadata accessor for ServiceEventValue);
    goto LABEL_16;
  }

  v0[190] = *v30;
LABEL_18:
  v1 = sub_22DF64154();
  v33 = v34;

LABEL_19:
  v0[235] = v33;
  v0[234] = v1;
  v35 = v0[214];
  sub_22DEF1364(v0[204], &qword_27DA47BC0, &unk_22DF65300);

  v36 = sub_22DF63714();
  v37 = sub_22DF63D24();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v55 = v39;
    *v38 = 136446466;
    v40 = sub_22DEF0354(v18, v17, &v55);

    *(v38 + 4) = v40;
    *(v38 + 12) = 2082;
    v41 = sub_22DEF0354(v1, v33, &v55);

    *(v38 + 14) = v41;
    _os_log_impl(&dword_22DEEA000, v36, v37, "sending one message %{public}s:%{public}s", v38, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2318DDBE0](v39, -1, -1);
    MEMORY[0x2318DDBE0](v38, -1, -1);
  }

  else
  {
  }

  v42 = v0[224];
  v43 = v0[223];
  v44 = v0[216];
  v45 = v0[195];

  v0[150] = nullsub_1(0x4D656E4F646E6553, 0xEE00656761737365, v44);
  v0[151] = v46;
  v0[152] = v47;
  v0[236] = sub_22DF4B3F0(v42);
  v0[237] = v48;
  v0[238] = v49;
  v50 = *(**(v45 + 160) + 152);
  v54 = (v50 + *v50);
  v51 = v50[1];
  v52 = swift_task_alloc();
  v0[239] = v52;
  *v52 = v0;
  v52[1] = sub_22DF437D4;

  return v54(v0 + 93);
}

uint64_t sub_22DF437D4(uint64_t a1, uint64_t a2)
{
  v7 = *v3;
  v6 = *v3;
  v8 = *(*v3 + 1912);
  v9 = *v3;

  v10 = *(v6 + 1560);
  if (v2)
  {

    v11 = sub_22DF476B4;
  }

  else
  {
    *(v7 + 1920) = a2;
    *(v7 + 1928) = a1;
    v11 = sub_22DF43920;
  }

  return MEMORY[0x2822009F8](v11, v10, 0);
}

uint64_t sub_22DF43920()
{
  v1 = v0[238];
  v2 = v0[237];
  sub_22DF372A0(v0[236]);
  sub_22DF36394(v0 + 117);
  sub_22DEF0F4C((v0 + 93), (v0 + 72));
  v3 = swift_task_alloc();
  v0[242] = v3;
  *v3 = v0;
  v3[1] = sub_22DF43A20;
  v4 = v0[241];
  v5 = v0[240];
  v6 = v0[237];
  v7 = v0[236];
  v10 = v0[238];

  return sub_22DF36420((v0 + 44), (v0 + 93), v4, v5, 0x4D656E4F646E6553, 0xEE00656761737365, v7, v6);
}

uint64_t sub_22DF43A20()
{
  v2 = *v1;
  v3 = *(*v1 + 1936);
  v4 = *v1;
  *(*v1 + 1944) = v0;

  if (v0)
  {
    v5 = *(v2 + 1560);

    v6 = sub_22DF476B4;
    v7 = v5;
  }

  else
  {
    v7 = *(v2 + 1560);
    v6 = sub_22DF43B58;
  }

  return MEMORY[0x2822009F8](v6, v7, 0);
}

uint64_t sub_22DF43B58()
{
  v81 = v0;
  v1 = *(v0 + 1944);
  sub_22DEF12FC(v0 + 352, v0 + 16, &unk_27DA47BD0, qword_22DF69780);
  if (*(v0 + 40))
  {
    v2 = *(v0 + 160);
    *(v0 + 312) = *(v0 + 144);
    *(v0 + 328) = v2;
    *(v0 + 344) = *(v0 + 176);
    v3 = *(v0 + 96);
    *(v0 + 248) = *(v0 + 80);
    *(v0 + 264) = v3;
    v4 = *(v0 + 128);
    *(v0 + 280) = *(v0 + 112);
    *(v0 + 296) = v4;
    v5 = *(v0 + 32);
    *(v0 + 184) = *(v0 + 16);
    *(v0 + 200) = v5;
    v6 = *(v0 + 64);
    *(v0 + 216) = *(v0 + 48);
    *(v0 + 232) = v6;
    *(v0 + 1000) = &type metadata for AllEventFieldProvider;
    *(v0 + 1008) = &off_2841950F0;
    v7 = swift_allocObject();
    *(v0 + 976) = v7;
    sub_22DF4B870(v0 + 184, v7 + 16);
    sub_22DEF9ED8((v0 + 976));
    sub_22DF4B8CC(v0 + 184);
    __swift_destroy_boxed_opaque_existential_0((v0 + 976));
  }

  else
  {
    sub_22DEF1364(v0 + 16, &unk_27DA47BD0, qword_22DF69780);
  }

  *(v0 + 1952) = *(v0 + 1200);
  *(v0 + 1960) = *(v0 + 1208);
  v8 = sub_22DF2E5EC();
  swift_beginAccess();
  if (*v8 == 1)
  {
    v9 = *(v0 + 1792);
    v10 = *(v9 + 16);
    *(v0 + 1976) = v10;
    if (v10)
    {
      v11 = *(v0 + 1592);
      *(v0 + 1984) = *(*(v0 + 1560) + 168);
      v12 = *(v11 + 80);
      *(v0 + 2208) = v12;
      *(v0 + 1992) = *(v11 + 72);
      *(v0 + 2008) = 0;
      *(v0 + 2000) = v1;
      v13 = *(v0 + 1880);
      v14 = *(v0 + 1864);
      v15 = *(v0 + 1712);
      v16 = *(v0 + 1616);
      v17 = *(v0 + 1608);
      sub_22DF4B9B8(v9 + ((v12 + 32) & ~v12), v16, type metadata accessor for SessionConfiguration.Backend);
      sub_22DF4B9B8(v16, v17, type metadata accessor for SessionConfiguration.Backend);

      v18 = sub_22DF63714();
      v19 = sub_22DF63D24();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = *(v0 + 1880);
        v21 = *(v0 + 1872);
        v22 = *(v0 + 1864);
        v23 = *(v0 + 1856);
        v24 = *(v0 + 1608);
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v80 = v26;
        *v25 = 136446722;
        *(v25 + 4) = sub_22DEF0354(v23, v22, &v80);
        *(v25 + 12) = 2082;
        *(v25 + 14) = sub_22DEF0354(v21, v20, &v80);
        *(v25 + 22) = 2082;
        v27 = sub_22DF09280();
        v29 = v28;
        sub_22DF4B920(v24, type metadata accessor for SessionConfiguration.Backend);
        v30 = sub_22DEF0354(v27, v29, &v80);

        *(v25 + 24) = v30;
        _os_log_impl(&dword_22DEEA000, v18, v19, "writing sendOneMessage to transparency log %{public}s:%{public}s for backend %{public}s", v25, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x2318DDBE0](v26, -1, -1);
        MEMORY[0x2318DDBE0](v25, -1, -1);
      }

      else
      {
        v71 = *(v0 + 1608);

        sub_22DF4B920(v71, type metadata accessor for SessionConfiguration.Backend);
      }

      v72 = *(v0 + 1984);
      v73 = *(v0 + 1616);
      *(v0 + 2016) = sub_22DF09280();
      *(v0 + 2024) = v74;
      v75 = sub_22DF443AC;
      v76 = v72;
      goto LABEL_23;
    }
  }

  if (*(v0 + 1840))
  {
    v31 = *(v0 + 1880);
    v32 = *(v0 + 1864);
    v33 = *(v0 + 1712);

    swift_unknownObjectRetain();
    v34 = sub_22DF63714();
    v35 = sub_22DF63D24();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = *(v0 + 1880);
      v37 = *(v0 + 1872);
      v38 = *(v0 + 1864);
      v39 = *(v0 + 1856);
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v80 = v41;
      *v40 = 136446466;
      *(v40 + 4) = sub_22DEF0354(v39, v38, &v80);
      *(v40 + 12) = 2082;
      *(v40 + 14) = sub_22DEF0354(v37, v36, &v80);
      _os_log_impl(&dword_22DEEA000, v34, v35, "processing sendOneMessage, immediate %{public}s:%{public}s", v40, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2318DDBE0](v41, -1, -1);
      MEMORY[0x2318DDBE0](v40, -1, -1);
    }

    v42 = *(v0 + 1968);
    v43 = *(v0 + 1960);
    v44 = *(v0 + 1952);
    v79 = *(v0 + 1848);
    ObjectType = swift_getObjectType();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47298, &qword_22DF654C0);
    v46 = swift_allocObject();
    *(v0 + 2040) = v46;
    *(v46 + 16) = xmmword_22DF65900;
    *(v46 + 32) = v44;
    *(v46 + 40) = v43;
    *(v46 + 48) = v42;
    v47 = *(v79 + 8);

    v78 = (v47 + *v47);
    v48 = v47[1];
    v49 = swift_task_alloc();
    *(v0 + 2048) = v49;
    *v49 = v0;
    v49[1] = sub_22DF44BBC;
    v50 = *(v0 + 1848);

    return v78(v46, ObjectType, v50);
  }

  else
  {
    if (!*(*(v0 + 1792) + 16))
    {
      v76 = *(v0 + 1760);
      v77 = *v76 + 256;
      *(v0 + 2080) = *v77;
      *(v0 + 2088) = v77 & 0xFFFFFFFFFFFFLL | 0x1E4F000000000000;
      v75 = sub_22DF453C8;
LABEL_23:

      return MEMORY[0x2822009F8](v75, v76, 0);
    }

    v52 = *(v0 + 1880);
    v53 = *(v0 + 1864);
    v54 = *(v0 + 1712);

    v55 = sub_22DF63714();
    v56 = sub_22DF63D24();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = *(v0 + 1880);
      v58 = *(v0 + 1872);
      v59 = *(v0 + 1864);
      v60 = *(v0 + 1856);
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v80 = v62;
      *v61 = 136446466;
      *(v61 + 4) = sub_22DEF0354(v60, v59, &v80);
      *(v61 + 12) = 2082;
      *(v61 + 14) = sub_22DEF0354(v58, v57, &v80);
      _os_log_impl(&dword_22DEEA000, v55, v56, "caching sendOneMessage %{public}s:%{public}s", v61, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2318DDBE0](v62, -1, -1);
      MEMORY[0x2318DDBE0](v61, -1, -1);
    }

    v63 = *(v0 + 1584);
    v64 = *(*(v0 + 1560) + 144);
    sub_22DF63554();
    v65 = swift_task_alloc();
    *(v0 + 2064) = v65;
    *v65 = v0;
    v65[1] = sub_22DF45088;
    v66 = *(v0 + 1968);
    v67 = *(v0 + 1960);
    v68 = *(v0 + 1952);
    v69 = *(v0 + 1736);
    v70 = *(v0 + 1584);

    return sub_22DF01C9C(v0 + 744, v70, v69, v68, v67, v66);
  }
}

uint64_t sub_22DF443AC()
{
  v1 = *(v0 + 2000);
  v2 = *(v0 + 1984);
  sub_22DEF6968(*(v0 + 2016), *(v0 + 2024), *(v0 + 1952), *(v0 + 1960), *(v0 + 1968));
  *(v0 + 2032) = v1;
  if (v1)
  {
    v3 = *(v0 + 1560);
    v4 = sub_22DF47F20;
  }

  else
  {
    v5 = *(v0 + 2024);
    v6 = *(v0 + 1560);

    v4 = sub_22DF44460;
    v3 = v6;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22DF44460()
{
  v71 = v0;
  sub_22DF4B920(*(v0 + 1616), type metadata accessor for SessionConfiguration.Backend);
  v1 = *(v0 + 2008) + 1;
  if (v1 == *(v0 + 1976))
  {
    if (*(v0 + 1840))
    {
      v2 = *(v0 + 1880);
      v3 = *(v0 + 1864);
      v4 = *(v0 + 1712);

      swift_unknownObjectRetain();
      v5 = sub_22DF63714();
      v6 = sub_22DF63D24();

      if (os_log_type_enabled(v5, v6))
      {
        v7 = *(v0 + 1880);
        v8 = *(v0 + 1872);
        v9 = *(v0 + 1864);
        v10 = *(v0 + 1856);
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v70 = v12;
        *v11 = 136446466;
        *(v11 + 4) = sub_22DEF0354(v10, v9, &v70);
        *(v11 + 12) = 2082;
        *(v11 + 14) = sub_22DEF0354(v8, v7, &v70);
        _os_log_impl(&dword_22DEEA000, v5, v6, "processing sendOneMessage, immediate %{public}s:%{public}s", v11, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x2318DDBE0](v12, -1, -1);
        MEMORY[0x2318DDBE0](v11, -1, -1);
      }

      v13 = *(v0 + 1968);
      v14 = *(v0 + 1960);
      v15 = *(v0 + 1952);
      v69 = *(v0 + 1848);
      ObjectType = swift_getObjectType();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47298, &qword_22DF654C0);
      v17 = swift_allocObject();
      *(v0 + 2040) = v17;
      *(v17 + 16) = xmmword_22DF65900;
      *(v17 + 32) = v15;
      *(v17 + 40) = v14;
      *(v17 + 48) = v13;
      v18 = *(v69 + 8);

      v68 = (v18 + *v18);
      v19 = v18[1];
      v20 = swift_task_alloc();
      *(v0 + 2048) = v20;
      *v20 = v0;
      v20[1] = sub_22DF44BBC;
      v21 = *(v0 + 1848);

      return v68(v17, ObjectType, v21);
    }

    if (*(*(v0 + 1792) + 16))
    {
      v48 = *(v0 + 1880);
      v49 = *(v0 + 1864);
      v50 = *(v0 + 1712);

      v51 = sub_22DF63714();
      v52 = sub_22DF63D24();

      if (os_log_type_enabled(v51, v52))
      {
        v53 = *(v0 + 1880);
        v54 = *(v0 + 1872);
        v55 = *(v0 + 1864);
        v56 = *(v0 + 1856);
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        v70 = v58;
        *v57 = 136446466;
        *(v57 + 4) = sub_22DEF0354(v56, v55, &v70);
        *(v57 + 12) = 2082;
        *(v57 + 14) = sub_22DEF0354(v54, v53, &v70);
        _os_log_impl(&dword_22DEEA000, v51, v52, "caching sendOneMessage %{public}s:%{public}s", v57, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x2318DDBE0](v58, -1, -1);
        MEMORY[0x2318DDBE0](v57, -1, -1);
      }

      v59 = *(v0 + 1584);
      v60 = *(*(v0 + 1560) + 144);
      sub_22DF63554();
      v61 = swift_task_alloc();
      *(v0 + 2064) = v61;
      *v61 = v0;
      v61[1] = sub_22DF45088;
      v62 = *(v0 + 1968);
      v63 = *(v0 + 1960);
      v64 = *(v0 + 1952);
      v65 = *(v0 + 1736);
      v66 = *(v0 + 1584);

      return sub_22DF01C9C(v0 + 744, v66, v65, v64, v63, v62);
    }

    v47 = *(v0 + 1760);
    v67 = *v47 + 256;
    *(v0 + 2080) = *v67;
    *(v0 + 2088) = v67 & 0xFFFFFFFFFFFFLL | 0x1E4F000000000000;
    v46 = sub_22DF453C8;
  }

  else
  {
    v23 = *(v0 + 2032);
    *(v0 + 2008) = v1;
    *(v0 + 2000) = v23;
    v24 = *(v0 + 1880);
    v25 = *(v0 + 1864);
    v26 = *(v0 + 1712);
    v27 = *(v0 + 1616);
    v28 = *(v0 + 1608);
    sub_22DF4B9B8(*(v0 + 1792) + ((*(v0 + 2208) + 32) & ~*(v0 + 2208)) + *(v0 + 1992) * v1, v27, type metadata accessor for SessionConfiguration.Backend);
    sub_22DF4B9B8(v27, v28, type metadata accessor for SessionConfiguration.Backend);

    v29 = sub_22DF63714();
    v30 = sub_22DF63D24();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = *(v0 + 1880);
      v32 = *(v0 + 1872);
      v33 = *(v0 + 1864);
      v34 = *(v0 + 1856);
      v35 = *(v0 + 1608);
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v70 = v37;
      *v36 = 136446722;
      *(v36 + 4) = sub_22DEF0354(v34, v33, &v70);
      *(v36 + 12) = 2082;
      *(v36 + 14) = sub_22DEF0354(v32, v31, &v70);
      *(v36 + 22) = 2082;
      v38 = sub_22DF09280();
      v40 = v39;
      sub_22DF4B920(v35, type metadata accessor for SessionConfiguration.Backend);
      v41 = sub_22DEF0354(v38, v40, &v70);

      *(v36 + 24) = v41;
      _os_log_impl(&dword_22DEEA000, v29, v30, "writing sendOneMessage to transparency log %{public}s:%{public}s for backend %{public}s", v36, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x2318DDBE0](v37, -1, -1);
      MEMORY[0x2318DDBE0](v36, -1, -1);
    }

    else
    {
      v42 = *(v0 + 1608);

      sub_22DF4B920(v42, type metadata accessor for SessionConfiguration.Backend);
    }

    v43 = *(v0 + 1984);
    v44 = *(v0 + 1616);
    *(v0 + 2016) = sub_22DF09280();
    *(v0 + 2024) = v45;
    v46 = sub_22DF443AC;
    v47 = v43;
  }

  return MEMORY[0x2822009F8](v46, v47, 0);
}

uint64_t sub_22DF44BBC()
{
  v2 = *v1;
  v3 = *(*v1 + 2048);
  v9 = *v1;
  *(*v1 + 2056) = v0;

  if (v0)
  {
    v4 = *(v2 + 1560);
    v5 = sub_22DF488B8;
  }

  else
  {
    v6 = *(v2 + 2040);
    v7 = *(v2 + 1560);

    v5 = sub_22DF44CE4;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_22DF44CE4()
{
  v37 = v0;
  v1 = *(v0 + 235);
  v2 = *(v0 + 233);
  v3 = *(v0 + 214);

  v4 = sub_22DF63714();
  v5 = sub_22DF63D24();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 235);
    v7 = *(v0 + 234);
    v8 = *(v0 + 233);
    v9 = *(v0 + 232);
    v10 = *(v0 + 230);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v36 = v12;
    *v11 = 136446466;
    *(v11 + 4) = sub_22DEF0354(v9, v8, &v36);
    *(v11 + 12) = 2082;
    *(v11 + 14) = sub_22DEF0354(v7, v6, &v36);
    _os_log_impl(&dword_22DEEA000, v4, v5, "processed sendOneMessage, immediate %{public}s:%{public}s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2318DDBE0](v12, -1, -1);
    MEMORY[0x2318DDBE0](v11, -1, -1);
  }

  else
  {
    v13 = *(v0 + 230);
  }

  swift_unknownObjectRelease();
  if (*(*(v0 + 224) + 16))
  {
    v14 = *(v0 + 235);
    v15 = *(v0 + 233);
    v16 = *(v0 + 214);

    v17 = sub_22DF63714();
    v18 = sub_22DF63D24();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = *(v0 + 235);
      v20 = *(v0 + 234);
      v21 = *(v0 + 233);
      v22 = *(v0 + 232);
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v36 = v24;
      *v23 = 136446466;
      *(v23 + 4) = sub_22DEF0354(v22, v21, &v36);
      *(v23 + 12) = 2082;
      *(v23 + 14) = sub_22DEF0354(v20, v19, &v36);
      _os_log_impl(&dword_22DEEA000, v17, v18, "caching sendOneMessage %{public}s:%{public}s", v23, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2318DDBE0](v24, -1, -1);
      MEMORY[0x2318DDBE0](v23, -1, -1);
    }

    v25 = *(v0 + 198);
    v26 = *(*(v0 + 195) + 144);
    sub_22DF63554();
    v27 = swift_task_alloc();
    *(v0 + 258) = v27;
    *v27 = v0;
    v27[1] = sub_22DF45088;
    v28 = *(v0 + 246);
    v29 = *(v0 + 245);
    v30 = *(v0 + 244);
    v31 = v0[217];
    v32 = *(v0 + 198);

    return sub_22DF01C9C((v0 + 93), v32, v31, v30, v29, v28);
  }

  else
  {
    v34 = *(v0 + 220);
    v35 = *v34 + 256;
    v0[260] = *v35;
    *(v0 + 261) = v35 & 0xFFFFFFFFFFFFLL | 0x1E4F000000000000;

    return MEMORY[0x2822009F8](sub_22DF453C8, v34, 0);
  }
}

uint64_t sub_22DF45088()
{
  v2 = *v1;
  v3 = *(*v1 + 2064);
  v4 = *v1;
  *(*v1 + 2072) = v0;

  v5 = v2[198];
  v6 = v2[197];
  v7 = v2[196];
  v8 = v2[195];
  (*(v6 + 8))(v5, v7);
  if (v0)
  {
    v9 = sub_22DF48C60;
  }

  else
  {
    v9 = sub_22DF45204;
  }

  return MEMORY[0x2822009F8](v9, v8, 0);
}

uint64_t sub_22DF45204()
{
  v16 = v0;
  v1 = v0[235];
  v2 = v0[233];
  v3 = v0[214];

  v4 = sub_22DF63714();
  v5 = sub_22DF63D24();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[235];
    v7 = v0[234];
    v8 = v0[233];
    v9 = v0[232];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v15 = v11;
    *v10 = 136446466;
    *(v10 + 4) = sub_22DEF0354(v9, v8, &v15);
    *(v10 + 12) = 2082;
    *(v10 + 14) = sub_22DEF0354(v7, v6, &v15);
    _os_log_impl(&dword_22DEEA000, v4, v5, "cached sendOneMessage %{public}s:%{public}s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2318DDBE0](v11, -1, -1);
    MEMORY[0x2318DDBE0](v10, -1, -1);
  }

  v12 = v0[220];
  v13 = *v12 + 256;
  v0[260] = *v13;
  v0[261] = v13 & 0xFFFFFFFFFFFFLL | 0x1E4F000000000000;

  return MEMORY[0x2822009F8](sub_22DF453C8, v12, 0);
}

uint64_t sub_22DF453C8()
{
  v1 = *(v0 + 2088);
  v2 = *(v0 + 1760);
  v3 = *(v0 + 1560);
  (*(v0 + 2080))(*(v0 + 1744), *(v0 + 1752), 1);

  return MEMORY[0x2822009F8](sub_22DF45448, v3, 0);
}

uint64_t sub_22DF45448()
{
  reply = xpc_dictionary_create_reply(*(v0 + 1552));
  if (reply)
  {
    v2 = reply;
    v3 = *(v0 + 1560);
    result = swift_beginAccess();
    v5 = *(v3 + 112);
    if (v5)
    {
      message = v2;
      result = swift_beginAccess();
      v6 = *(v5 + 16);
      if (v6)
      {
        v7 = *(v0 + 1968);
        v8 = *(v0 + 1960);
        v9 = *(v0 + 1904);
        v10 = *(v0 + 1896);
        v11 = *(v0 + 1888);
        v12 = *(v0 + 1880);
        v13 = *(v0 + 1864);
        v14 = *(v0 + 1792);
        v40 = *(v0 + 1784);
        v42 = *(v0 + 1712);
        swift_unknownObjectRetain();
        sub_22DF4B824(v11);

        sub_22DF13A04(v0 + 1464);
        xpc_connection_send_message(v6, message);
        swift_unknownObjectRelease();
        v15 = sub_22DF63714();
        v16 = sub_22DF63CE4();
        v17 = os_log_type_enabled(v15, v16);
        v18 = *(v0 + 1840);
        if (v17)
        {
          v19 = swift_slowAlloc();
          *v19 = 0;
          _os_log_impl(&dword_22DEEA000, v15, v16, "SendOneMessage Reply Sent", v19, 2u);
          MEMORY[0x2318DDBE0](v19, -1, -1);
        }

        swift_unknownObjectRelease();

        swift_unknownObjectRelease();
        sub_22DEF1364(v0 + 352, &unk_27DA47BD0, qword_22DF69780);
        goto LABEL_8;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return result;
  }

  v20 = *(v0 + 1968);
  v21 = *(v0 + 1960);
  v22 = *(v0 + 1904);
  v23 = *(v0 + 1896);
  v24 = *(v0 + 1888);
  v25 = *(v0 + 1880);
  v26 = *(v0 + 1864);
  messagea = *(v0 + 1840);
  v27 = *(v0 + 1792);
  v28 = *(v0 + 1784);
  sub_22DEF1364(v0 + 352, &unk_27DA47BD0, qword_22DF69780);
  sub_22DF4B824(v24);

  swift_unknownObjectRelease();
  sub_22DF13A04(v0 + 1464);
LABEL_8:
  sub_22DF4B920(*(v0 + 1704), type metadata accessor for CachedSession);
  v29 = *(v0 + 1704);
  v30 = *(v0 + 1696);
  v31 = *(v0 + 1688);
  v32 = *(v0 + 1664);
  v33 = *(v0 + 1656);
  v34 = *(v0 + 1648);
  v35 = *(v0 + 1640);
  v36 = *(v0 + 1632);
  v37 = *(v0 + 1624);
  v38 = *(v0 + 1616);
  v41 = *(v0 + 1608);
  v43 = *(v0 + 1600);
  messageb = *(v0 + 1584);

  v39 = *(v0 + 8);

  return v39();
}

uint64_t sub_22DF4579C()
{
  v1 = *v0;
  v2 = *(*v0 + 2104);
  v3 = *(*v0 + 2096);
  v19 = *v0;

  v4 = v1[213];
  v5 = v1[212];
  v6 = v1[211];
  v7 = v1[208];
  v8 = v1[207];
  v9 = v1[206];
  v10 = v1[205];
  v11 = v1[204];
  v15 = v1[203];
  v16 = v1[202];
  v17 = v1[201];
  v18 = v1[200];
  v12 = v1[198];

  v13 = *(v19 + 8);

  return v13();
}

uint64_t sub_22DF45A48()
{
  v1 = *v0;
  v2 = *(*v0 + 2120);
  v3 = *(*v0 + 2112);
  v19 = *v0;

  v4 = v1[213];
  v5 = v1[212];
  v6 = v1[211];
  v7 = v1[208];
  v8 = v1[207];
  v9 = v1[206];
  v10 = v1[205];
  v11 = v1[204];
  v15 = v1[203];
  v16 = v1[202];
  v17 = v1[201];
  v18 = v1[200];
  v12 = v1[198];

  v13 = *(v19 + 8);

  return v13();
}

uint64_t sub_22DF45CF4()
{
  v1 = *v0;
  v2 = *(*v0 + 2136);
  v3 = *(*v0 + 2128);
  v19 = *v0;

  v4 = v1[213];
  v5 = v1[212];
  v6 = v1[211];
  v7 = v1[208];
  v8 = v1[207];
  v9 = v1[206];
  v10 = v1[205];
  v11 = v1[204];
  v15 = v1[203];
  v16 = v1[202];
  v17 = v1[201];
  v18 = v1[200];
  v12 = v1[198];

  v13 = *(v19 + 8);

  return v13();
}

uint64_t sub_22DF45FA0()
{
  v1 = *(*v0 + 2152);
  v2 = *(*v0 + 1560);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_22DF460B0, v2, 0);
}

uint64_t sub_22DF460B0()
{
  v1 = v0[209];
  v2 = v0[207];
  if ((*(v0[210] + 48))(v2, 1, v1) == 1)
  {
    sub_22DEF1364(v2, &qword_27DA47BC8, &qword_22DF69770);
    v3 = v0[213];
    v4 = v0[212];
    v5 = v0[211];
    v6 = v0[208];
    v7 = v0[207];
    v8 = v0[206];
    v9 = v0[205];
    v10 = v0[204];
    v11 = v0[203];
    v12 = v0[202];
    v23 = v0[201];
    v24 = v0[200];
    v26 = v0[198];

    v13 = v0[1];

    return v13();
  }

  else
  {
    v15 = v0[212];
    v16 = v0[195];
    sub_22DF4BA20(v2, v15, type metadata accessor for CachedSession);
    v17 = *(v16 + 152);
    v0[270] = v17;
    v18 = *(v17 + 112);
    v0[271] = v18;
    v0[115] = v1;
    v0[116] = &off_284194200;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 112);
    sub_22DF4B9B8(v15, boxed_opaque_existential_1, type metadata accessor for CachedSession);
    v20 = *(*v18 + 128);

    v25 = (v20 + *v20);
    v21 = v20[1];
    v22 = swift_task_alloc();
    v0[272] = v22;
    *v22 = v0;
    v22[1] = sub_22DF46388;

    return v25(v0 + 112);
  }
}

uint64_t sub_22DF46388(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 2176);
  v4 = *(*v1 + 2168);
  v5 = *(*v1 + 1560);
  v7 = *v1;
  *(v2 + 2213) = a1;

  __swift_destroy_boxed_opaque_existential_0((v2 + 896));

  return MEMORY[0x2822009F8](sub_22DF464CC, v5, 0);
}

_xpc_connection_s *sub_22DF464CC()
{
  if (sub_22DF4A88C(*(v0 + 2213), &unk_284195EE8))
  {
    v1 = *(v0 + 1696);
    v2 = *(v0 + 1672);
    v3 = *(*(v0 + 2160) + 112);
    *(v0 + 2184) = v3;
    *(v0 + 1040) = v2;
    *(v0 + 1048) = &off_284194200;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 1016));
    sub_22DF4B9B8(v1, boxed_opaque_existential_1, type metadata accessor for CachedSession);
    v5 = *(*v3 + 144);

    v36 = (v5 + *v5);
    v6 = v5[1];
    v7 = swift_task_alloc();
    *(v0 + 2192) = v7;
    *v7 = v0;
    v7[1] = sub_22DF46894;

    return v36(v0 + 1016);
  }

  reply = xpc_dictionary_create_reply(*(v0 + 1552));
  if (reply)
  {
    v10 = reply;
    v11 = *(v0 + 1560);
    v12 = MessageKeys.samplingOutcome.unsafeMutableAddressor();
    v13 = *v12;
    v14 = v12[1];

    v15 = ServiceSamplingOutcome.rawValue.getter(4);
    v16 = sub_22DF63A34();

    xpc_dictionary_set_int64(v10, (v16 + 32), v15);

    result = swift_beginAccess();
    v17 = *(v11 + 112);
    if (v17)
    {
      swift_beginAccess();
      result = *(v17 + 16);
      if (result)
      {
        v18 = *(v0 + 2144);
        xpc_connection_send_message(result, v10);
        v19 = sub_22DF63714();
        v20 = sub_22DF63CE4();
        v21 = os_log_type_enabled(v19, v20);
        v22 = *(v0 + 1696);
        if (v21)
        {
          v23 = swift_slowAlloc();
          *v23 = 0;
          _os_log_impl(&dword_22DEEA000, v19, v20, "CheckSamplingResult Reply Sent", v23, 2u);
          MEMORY[0x2318DDBE0](v23, -1, -1);
        }

        swift_unknownObjectRelease();

        goto LABEL_12;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return result;
  }

  v22 = *(v0 + 1696);
LABEL_12:
  sub_22DF4B920(v22, type metadata accessor for CachedSession);
  v24 = *(v0 + 1704);
  v25 = *(v0 + 1696);
  v26 = *(v0 + 1688);
  v27 = *(v0 + 1664);
  v28 = *(v0 + 1656);
  v29 = *(v0 + 1648);
  v30 = *(v0 + 1640);
  v31 = *(v0 + 1632);
  v32 = *(v0 + 1624);
  v33 = *(v0 + 1616);
  v35 = *(v0 + 1608);
  v37 = *(v0 + 1600);
  v38 = *(v0 + 1584);

  v34 = *(v0 + 8);

  return v34();
}

uint64_t sub_22DF46894(char a1)
{
  v3 = *v2;
  v4 = *(*v2 + 2192);
  v9 = *v2;
  *(v3 + 2214) = a1;
  *(v3 + 2200) = v1;

  v5 = *(v3 + 2184);
  if (v1)
  {
    v6 = *(v3 + 1560);

    v7 = sub_22DF48E14;
  }

  else
  {
    v6 = *(v3 + 1560);

    __swift_destroy_boxed_opaque_existential_0((v3 + 1016));
    v7 = sub_22DF469CC;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

_xpc_connection_s *sub_22DF469CC()
{
  reply = xpc_dictionary_create_reply(*(v0 + 1552));
  if (reply)
  {
    v2 = reply;
    v3 = *(v0 + 1560);
    v4 = *(v0 + 2214);
    v5 = MessageKeys.samplingOutcome.unsafeMutableAddressor();
    v6 = *v5;
    v7 = v5[1];

    v8 = ServiceSamplingOutcome.rawValue.getter(v4);
    v9 = sub_22DF63A34();

    xpc_dictionary_set_int64(v2, (v9 + 32), v8);

    result = swift_beginAccess();
    v11 = *(v3 + 112);
    if (v11)
    {
      swift_beginAccess();
      result = *(v11 + 16);
      if (result)
      {
        v12 = *(v0 + 2144);
        xpc_connection_send_message(result, v2);
        v13 = sub_22DF63714();
        v14 = sub_22DF63CE4();
        v15 = os_log_type_enabled(v13, v14);
        v16 = *(v0 + 1696);
        if (v15)
        {
          v17 = swift_slowAlloc();
          *v17 = 0;
          _os_log_impl(&dword_22DEEA000, v13, v14, "CheckSamplingResult Reply Sent", v17, 2u);
          MEMORY[0x2318DDBE0](v17, -1, -1);
        }

        swift_unknownObjectRelease();

        goto LABEL_8;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return result;
  }

  v16 = *(v0 + 1696);
LABEL_8:
  sub_22DF4B920(v16, type metadata accessor for CachedSession);
  v18 = *(v0 + 1704);
  v19 = *(v0 + 1696);
  v20 = *(v0 + 1688);
  v21 = *(v0 + 1664);
  v22 = *(v0 + 1656);
  v23 = *(v0 + 1648);
  v24 = *(v0 + 1640);
  v25 = *(v0 + 1632);
  v26 = *(v0 + 1624);
  v27 = *(v0 + 1616);
  v29 = *(v0 + 1608);
  v30 = *(v0 + 1600);
  v31 = *(v0 + 1584);

  v28 = *(v0 + 8);

  return v28();
}

_xpc_connection_s *sub_22DF46C30()
{
  v49 = v0;
  v1 = *(v0 + 1776);
  v2 = *(v0 + 1712);
  sub_22DEF0F4C(v0 + 744, v0 + 520);
  v3 = v1;
  v4 = sub_22DF63714();
  v5 = sub_22DF63D04();
  sub_22DEF0FA8(v0 + 744);

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 1776);
    v7 = *(v0 + 1752);
    v8 = *(v0 + 1744);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v46 = v10;
    v47 = v8;
    *v9 = 136446466;
    v11 = *(v0 + 760);
    v12 = *(v0 + 768);
    v48 = v7;
    sub_22DEF0F4C(v0 + 744, v0 + 800);
    MEMORY[0x2318DCA20](58, 0xE100000000000000);
    MEMORY[0x2318DCA20](v11, v12);
    sub_22DEF0FA8(v0 + 744);
    v13 = sub_22DEF0354(v47, v7, &v46);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    swift_getErrorValue();
    v14 = *(v0 + 1056);
    v15 = *(v0 + 1064);
    v16 = *(v0 + 1072);
    v17 = sub_22DF64244();
    v19 = sub_22DEF0354(v17, v18, &v46);

    *(v9 + 14) = v19;
    _os_log_impl(&dword_22DEEA000, v4, v5, "unable to find config for identity %{public}s with error %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2318DDBE0](v10, -1, -1);
    MEMORY[0x2318DDBE0](v9, -1, -1);
  }

  else
  {
    v20 = *(v0 + 1752);
  }

  reply = xpc_dictionary_create_reply(*(v0 + 1552));
  if (reply)
  {
    v22 = reply;
    v23 = *(v0 + 1560);
    xpc_dictionary_set_string(reply, "error", "missing required sendOneMessage event fields");
    result = swift_beginAccess();
    v25 = *(v23 + 112);
    if (v25)
    {
      swift_beginAccess();
      result = *(v25 + 16);
      if (result)
      {
        v26 = *(v0 + 1712);
        xpc_connection_send_message(result, v22);
        v27 = sub_22DF63714();
        v28 = sub_22DF63CE4();
        v29 = os_log_type_enabled(v27, v28);
        v30 = *(v0 + 1776);
        if (v29)
        {
          v31 = swift_slowAlloc();
          *v31 = 0;
          _os_log_impl(&dword_22DEEA000, v27, v28, "SendOneMessage Error Reply Sent", v31, 2u);
          MEMORY[0x2318DDBE0](v31, -1, -1);
        }

        swift_unknownObjectRelease();
        goto LABEL_11;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return result;
  }

LABEL_11:
  sub_22DF4B920(*(v0 + 1704), type metadata accessor for CachedSession);
  v32 = *(v0 + 1704);
  v33 = *(v0 + 1696);
  v34 = *(v0 + 1688);
  v35 = *(v0 + 1664);
  v36 = *(v0 + 1656);
  v37 = *(v0 + 1648);
  v38 = *(v0 + 1640);
  v39 = *(v0 + 1632);
  v40 = *(v0 + 1624);
  v41 = *(v0 + 1616);
  v43 = *(v0 + 1608);
  v44 = *(v0 + 1600);
  v45 = *(v0 + 1584);

  v42 = *(v0 + 8);

  return v42();
}

uint64_t sub_22DF46FFC()
{
  v55 = v0;
  v1 = 4079420;
  *(v0 + 1840) = 0u;
  v2 = *(v0 + 1728);
  if (*(v2 + 16) && (v3 = *(v0 + 1728), v4 = sub_22DEF08FC(0x646F6874656D5FLL, 0xE700000000000000), (v5 & 1) != 0))
  {
    v6 = v4;
    v7 = *(v0 + 1648);
    v8 = *(v0 + 1640);
    v9 = *(*(v0 + 1728) + 56);
    v10 = type metadata accessor for ServiceEventValue();
    v11 = *(v10 - 8);
    sub_22DF4B9B8(v9 + *(v11 + 72) * v6, v7, type metadata accessor for ServiceEventValue);
    (*(v11 + 56))(v7, 0, 1, v10);
    sub_22DEF12FC(v7, v8, &qword_27DA47BC0, &unk_22DF65300);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v13 = *(v0 + 1640);
    if (EnumCaseMultiPayload == 1)
    {
      *(v0 + 1544) = *v13;
      goto LABEL_9;
    }

    if (EnumCaseMultiPayload == 2)
    {
      *(v0 + 1536) = *v13;
LABEL_9:
      v17 = sub_22DF64154();
      v16 = v18;

      goto LABEL_10;
    }

    sub_22DF4B920(v13, type metadata accessor for ServiceEventValue);
  }

  else
  {
    v14 = *(v0 + 1648);
    v15 = type metadata accessor for ServiceEventValue();
    (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  }

  v16 = 0xE300000000000000;
  v17 = 4079420;
LABEL_10:
  *(v0 + 1864) = v16;
  *(v0 + 1856) = v17;
  sub_22DEF1364(*(v0 + 1648), &qword_27DA47BC0, &unk_22DF65300);
  if (!*(v2 + 16) || (v19 = *(v0 + 1728), v20 = sub_22DEF08FC(0x7375746174735FLL, 0xE700000000000000), (v21 & 1) == 0))
  {
    v30 = *(v0 + 1632);
    v31 = type metadata accessor for ServiceEventValue();
    (*(*(v31 - 8) + 56))(v30, 1, 1, v31);
LABEL_16:
    v32 = 0xE300000000000000;
    goto LABEL_19;
  }

  v22 = v20;
  v23 = *(v0 + 1632);
  v24 = *(v0 + 1624);
  v25 = *(*(v0 + 1728) + 56);
  v26 = type metadata accessor for ServiceEventValue();
  v27 = *(v26 - 8);
  sub_22DF4B9B8(v25 + *(v27 + 72) * v22, v23, type metadata accessor for ServiceEventValue);
  (*(v27 + 56))(v23, 0, 1, v26);
  sub_22DEF12FC(v23, v24, &qword_27DA47BC0, &unk_22DF65300);
  v28 = swift_getEnumCaseMultiPayload();
  v29 = *(v0 + 1624);
  if (v28 == 1)
  {
    *(v0 + 1528) = *v29;
    goto LABEL_18;
  }

  if (v28 != 2)
  {
    sub_22DF4B920(v29, type metadata accessor for ServiceEventValue);
    goto LABEL_16;
  }

  *(v0 + 1520) = *v29;
LABEL_18:
  v1 = sub_22DF64154();
  v32 = v33;

LABEL_19:
  *(v0 + 1880) = v32;
  *(v0 + 1872) = v1;
  v34 = *(v0 + 1712);
  sub_22DEF1364(*(v0 + 1632), &qword_27DA47BC0, &unk_22DF65300);

  v35 = sub_22DF63714();
  v36 = sub_22DF63D24();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v54 = v38;
    *v37 = 136446466;
    v39 = sub_22DEF0354(v17, v16, &v54);

    *(v37 + 4) = v39;
    *(v37 + 12) = 2082;
    v40 = sub_22DEF0354(v1, v32, &v54);

    *(v37 + 14) = v40;
    _os_log_impl(&dword_22DEEA000, v35, v36, "sending one message %{public}s:%{public}s", v37, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2318DDBE0](v38, -1, -1);
    MEMORY[0x2318DDBE0](v37, -1, -1);
  }

  else
  {
  }

  v41 = *(v0 + 1792);
  v42 = *(v0 + 1784);
  v43 = *(v0 + 1728);
  v44 = *(v0 + 1560);

  *(v0 + 1200) = nullsub_1(0x4D656E4F646E6553, 0xEE00656761737365, v43);
  *(v0 + 1208) = v45;
  *(v0 + 1216) = v46;
  *(v0 + 1888) = sub_22DF4B3F0(v41);
  *(v0 + 1896) = v47;
  *(v0 + 1904) = v48;
  v49 = *(**(v44 + 160) + 152);
  v53 = (v49 + *v49);
  v50 = v49[1];
  v51 = swift_task_alloc();
  *(v0 + 1912) = v51;
  *v51 = v0;
  v51[1] = sub_22DF437D4;

  return v53(v0 + 744);
}

uint64_t sub_22DF476B4()
{
  v80 = v0;
  *(v0 + 512) = 0;
  *(v0 + 480) = 0u;
  *(v0 + 496) = 0u;
  *(v0 + 448) = 0u;
  *(v0 + 464) = 0u;
  *(v0 + 416) = 0u;
  *(v0 + 432) = 0u;
  *(v0 + 384) = 0u;
  *(v0 + 400) = 0u;
  *(v0 + 352) = 0u;
  *(v0 + 368) = 0u;
  sub_22DEF12FC(v0 + 352, v0 + 16, &unk_27DA47BD0, qword_22DF69780);
  if (*(v0 + 40))
  {
    v1 = *(v0 + 160);
    *(v0 + 312) = *(v0 + 144);
    *(v0 + 328) = v1;
    *(v0 + 344) = *(v0 + 176);
    v2 = *(v0 + 96);
    *(v0 + 248) = *(v0 + 80);
    *(v0 + 264) = v2;
    v3 = *(v0 + 128);
    *(v0 + 280) = *(v0 + 112);
    *(v0 + 296) = v3;
    v4 = *(v0 + 32);
    *(v0 + 184) = *(v0 + 16);
    *(v0 + 200) = v4;
    v5 = *(v0 + 64);
    *(v0 + 216) = *(v0 + 48);
    *(v0 + 232) = v5;
    *(v0 + 1000) = &type metadata for AllEventFieldProvider;
    *(v0 + 1008) = &off_2841950F0;
    v6 = swift_allocObject();
    *(v0 + 976) = v6;
    sub_22DF4B870(v0 + 184, v6 + 16);
    sub_22DEF9ED8((v0 + 976));
    sub_22DF4B8CC(v0 + 184);
    __swift_destroy_boxed_opaque_existential_0((v0 + 976));
  }

  else
  {
    sub_22DEF1364(v0 + 16, &unk_27DA47BD0, qword_22DF69780);
  }

  *(v0 + 1952) = *(v0 + 1200);
  *(v0 + 1960) = *(v0 + 1208);
  v7 = sub_22DF2E5EC();
  swift_beginAccess();
  if (*v7 == 1)
  {
    v8 = *(v0 + 1792);
    v9 = *(v8 + 16);
    *(v0 + 1976) = v9;
    if (v9)
    {
      v10 = *(v0 + 1592);
      *(v0 + 1984) = *(*(v0 + 1560) + 168);
      v11 = *(v10 + 80);
      *(v0 + 2208) = v11;
      *(v0 + 1992) = *(v10 + 72);
      *(v0 + 2000) = 0u;
      v12 = *(v0 + 1880);
      v13 = *(v0 + 1864);
      v14 = *(v0 + 1712);
      v15 = *(v0 + 1616);
      v16 = *(v0 + 1608);
      sub_22DF4B9B8(v8 + ((v11 + 32) & ~v11), v15, type metadata accessor for SessionConfiguration.Backend);
      sub_22DF4B9B8(v15, v16, type metadata accessor for SessionConfiguration.Backend);

      v17 = sub_22DF63714();
      v18 = sub_22DF63D24();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = *(v0 + 1880);
        v20 = *(v0 + 1872);
        v21 = *(v0 + 1864);
        v22 = *(v0 + 1856);
        v23 = *(v0 + 1608);
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v79 = v25;
        *v24 = 136446722;
        *(v24 + 4) = sub_22DEF0354(v22, v21, &v79);
        *(v24 + 12) = 2082;
        *(v24 + 14) = sub_22DEF0354(v20, v19, &v79);
        *(v24 + 22) = 2082;
        v26 = sub_22DF09280();
        v28 = v27;
        sub_22DF4B920(v23, type metadata accessor for SessionConfiguration.Backend);
        v29 = sub_22DEF0354(v26, v28, &v79);

        *(v24 + 24) = v29;
        _os_log_impl(&dword_22DEEA000, v17, v18, "writing sendOneMessage to transparency log %{public}s:%{public}s for backend %{public}s", v24, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x2318DDBE0](v25, -1, -1);
        MEMORY[0x2318DDBE0](v24, -1, -1);
      }

      else
      {
        v70 = *(v0 + 1608);

        sub_22DF4B920(v70, type metadata accessor for SessionConfiguration.Backend);
      }

      v71 = *(v0 + 1984);
      v72 = *(v0 + 1616);
      *(v0 + 2016) = sub_22DF09280();
      *(v0 + 2024) = v73;
      v74 = sub_22DF443AC;
      v75 = v71;
      goto LABEL_23;
    }
  }

  if (*(v0 + 1840))
  {
    v30 = *(v0 + 1880);
    v31 = *(v0 + 1864);
    v32 = *(v0 + 1712);

    swift_unknownObjectRetain();
    v33 = sub_22DF63714();
    v34 = sub_22DF63D24();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = *(v0 + 1880);
      v36 = *(v0 + 1872);
      v37 = *(v0 + 1864);
      v38 = *(v0 + 1856);
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v79 = v40;
      *v39 = 136446466;
      *(v39 + 4) = sub_22DEF0354(v38, v37, &v79);
      *(v39 + 12) = 2082;
      *(v39 + 14) = sub_22DEF0354(v36, v35, &v79);
      _os_log_impl(&dword_22DEEA000, v33, v34, "processing sendOneMessage, immediate %{public}s:%{public}s", v39, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2318DDBE0](v40, -1, -1);
      MEMORY[0x2318DDBE0](v39, -1, -1);
    }

    v41 = *(v0 + 1968);
    v42 = *(v0 + 1960);
    v43 = *(v0 + 1952);
    v78 = *(v0 + 1848);
    ObjectType = swift_getObjectType();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47298, &qword_22DF654C0);
    v45 = swift_allocObject();
    *(v0 + 2040) = v45;
    *(v45 + 16) = xmmword_22DF65900;
    *(v45 + 32) = v43;
    *(v45 + 40) = v42;
    *(v45 + 48) = v41;
    v46 = *(v78 + 8);

    v77 = (v46 + *v46);
    v47 = v46[1];
    v48 = swift_task_alloc();
    *(v0 + 2048) = v48;
    *v48 = v0;
    v48[1] = sub_22DF44BBC;
    v49 = *(v0 + 1848);

    return v77(v45, ObjectType, v49);
  }

  else
  {
    if (!*(*(v0 + 1792) + 16))
    {
      v75 = *(v0 + 1760);
      v76 = *v75 + 256;
      *(v0 + 2080) = *v76;
      *(v0 + 2088) = v76 & 0xFFFFFFFFFFFFLL | 0x1E4F000000000000;
      v74 = sub_22DF453C8;
LABEL_23:

      return MEMORY[0x2822009F8](v74, v75, 0);
    }

    v51 = *(v0 + 1880);
    v52 = *(v0 + 1864);
    v53 = *(v0 + 1712);

    v54 = sub_22DF63714();
    v55 = sub_22DF63D24();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = *(v0 + 1880);
      v57 = *(v0 + 1872);
      v58 = *(v0 + 1864);
      v59 = *(v0 + 1856);
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v79 = v61;
      *v60 = 136446466;
      *(v60 + 4) = sub_22DEF0354(v59, v58, &v79);
      *(v60 + 12) = 2082;
      *(v60 + 14) = sub_22DEF0354(v57, v56, &v79);
      _os_log_impl(&dword_22DEEA000, v54, v55, "caching sendOneMessage %{public}s:%{public}s", v60, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2318DDBE0](v61, -1, -1);
      MEMORY[0x2318DDBE0](v60, -1, -1);
    }

    v62 = *(v0 + 1584);
    v63 = *(*(v0 + 1560) + 144);
    sub_22DF63554();
    v64 = swift_task_alloc();
    *(v0 + 2064) = v64;
    *v64 = v0;
    v64[1] = sub_22DF45088;
    v65 = *(v0 + 1968);
    v66 = *(v0 + 1960);
    v67 = *(v0 + 1952);
    v68 = *(v0 + 1736);
    v69 = *(v0 + 1584);

    return sub_22DF01C9C(v0 + 744, v69, v68, v67, v66, v65);
  }
}

uint64_t sub_22DF47F20()
{
  v103 = v0;
  v1 = *(v0 + 2032);
  v2 = *(v0 + 2024);
  v3 = *(v0 + 1880);
  v4 = *(v0 + 1864);
  v5 = *(v0 + 1712);
  v6 = *(v0 + 1616);
  v7 = *(v0 + 1600);

  sub_22DF4B9B8(v6, v7, type metadata accessor for SessionConfiguration.Backend);

  v8 = v1;
  v9 = sub_22DF63714();
  v10 = sub_22DF63D04();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = *(v0 + 1880);
    v12 = *(v0 + 1872);
    v13 = *(v0 + 1864);
    v14 = *(v0 + 1856);
    v98 = *(v0 + 2032);
    v100 = *(v0 + 1616);
    v15 = *(v0 + 1600);
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v102 = v17;
    *v16 = 136446978;
    *(v16 + 4) = sub_22DEF0354(v14, v13, &v102);
    *(v16 + 12) = 2082;
    *(v16 + 14) = sub_22DEF0354(v12, v11, &v102);
    *(v16 + 22) = 2082;
    v18 = sub_22DF09280();
    v20 = v19;
    sub_22DF4B920(v15, type metadata accessor for SessionConfiguration.Backend);
    v21 = sub_22DEF0354(v18, v20, &v102);

    *(v16 + 24) = v21;
    *(v16 + 32) = 2082;
    swift_getErrorValue();
    v22 = *(v0 + 1080);
    v23 = *(v0 + 1088);
    v24 = *(v0 + 1096);
    v25 = sub_22DF64244();
    v27 = sub_22DEF0354(v25, v26, &v102);

    *(v16 + 34) = v27;
    _os_log_impl(&dword_22DEEA000, v9, v10, "failed writing sendOneMessage to transparency log %{public}s:%{public}s for backend %{public}s with error %{public}s", v16, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x2318DDBE0](v17, -1, -1);
    MEMORY[0x2318DDBE0](v16, -1, -1);

    v28 = v100;
  }

  else
  {
    v29 = *(v0 + 2032);
    v30 = *(v0 + 1616);
    v31 = *(v0 + 1600);

    sub_22DF4B920(v31, type metadata accessor for SessionConfiguration.Backend);
    v28 = v30;
  }

  sub_22DF4B920(v28, type metadata accessor for SessionConfiguration.Backend);
  v32 = *(v0 + 2008) + 1;
  if (v32 == *(v0 + 1976))
  {
    if (*(v0 + 1840))
    {
      v33 = *(v0 + 1880);
      v34 = *(v0 + 1864);
      v35 = *(v0 + 1712);

      swift_unknownObjectRetain();
      v36 = sub_22DF63714();
      v37 = sub_22DF63D24();

      if (os_log_type_enabled(v36, v37))
      {
        v38 = *(v0 + 1880);
        v39 = *(v0 + 1872);
        v40 = *(v0 + 1864);
        v41 = *(v0 + 1856);
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v102 = v43;
        *v42 = 136446466;
        *(v42 + 4) = sub_22DEF0354(v41, v40, &v102);
        *(v42 + 12) = 2082;
        *(v42 + 14) = sub_22DEF0354(v39, v38, &v102);
        _os_log_impl(&dword_22DEEA000, v36, v37, "processing sendOneMessage, immediate %{public}s:%{public}s", v42, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x2318DDBE0](v43, -1, -1);
        MEMORY[0x2318DDBE0](v42, -1, -1);
      }

      v44 = *(v0 + 1968);
      v45 = *(v0 + 1960);
      v46 = *(v0 + 1952);
      v101 = *(v0 + 1848);
      ObjectType = swift_getObjectType();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47298, &qword_22DF654C0);
      v48 = swift_allocObject();
      *(v0 + 2040) = v48;
      *(v48 + 16) = xmmword_22DF65900;
      *(v48 + 32) = v46;
      *(v48 + 40) = v45;
      *(v48 + 48) = v44;
      v49 = *(v101 + 8);

      v99 = (v49 + *v49);
      v50 = v49[1];
      v51 = swift_task_alloc();
      *(v0 + 2048) = v51;
      *v51 = v0;
      v51[1] = sub_22DF44BBC;
      v52 = *(v0 + 1848);

      return v99(v48, ObjectType, v52);
    }

    if (*(*(v0 + 1792) + 16))
    {
      v78 = *(v0 + 1880);
      v79 = *(v0 + 1864);
      v80 = *(v0 + 1712);

      v81 = sub_22DF63714();
      v82 = sub_22DF63D24();

      if (os_log_type_enabled(v81, v82))
      {
        v83 = *(v0 + 1880);
        v84 = *(v0 + 1872);
        v85 = *(v0 + 1864);
        v86 = *(v0 + 1856);
        v87 = swift_slowAlloc();
        v88 = swift_slowAlloc();
        v102 = v88;
        *v87 = 136446466;
        *(v87 + 4) = sub_22DEF0354(v86, v85, &v102);
        *(v87 + 12) = 2082;
        *(v87 + 14) = sub_22DEF0354(v84, v83, &v102);
        _os_log_impl(&dword_22DEEA000, v81, v82, "caching sendOneMessage %{public}s:%{public}s", v87, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x2318DDBE0](v88, -1, -1);
        MEMORY[0x2318DDBE0](v87, -1, -1);
      }

      v89 = *(v0 + 1584);
      v90 = *(*(v0 + 1560) + 144);
      sub_22DF63554();
      v91 = swift_task_alloc();
      *(v0 + 2064) = v91;
      *v91 = v0;
      v91[1] = sub_22DF45088;
      v92 = *(v0 + 1968);
      v93 = *(v0 + 1960);
      v94 = *(v0 + 1952);
      v95 = *(v0 + 1736);
      v96 = *(v0 + 1584);

      return sub_22DF01C9C(v0 + 744, v96, v95, v94, v93, v92);
    }

    v77 = *(v0 + 1760);
    v97 = *v77 + 256;
    *(v0 + 2080) = *v97;
    *(v0 + 2088) = v97 & 0xFFFFFFFFFFFFLL | 0x1E4F000000000000;
    v76 = sub_22DF453C8;
  }

  else
  {
    *(v0 + 2008) = v32;
    *(v0 + 2000) = 0;
    v54 = *(v0 + 1880);
    v55 = *(v0 + 1864);
    v56 = *(v0 + 1712);
    v57 = *(v0 + 1616);
    v58 = *(v0 + 1608);
    sub_22DF4B9B8(*(v0 + 1792) + ((*(v0 + 2208) + 32) & ~*(v0 + 2208)) + *(v0 + 1992) * v32, v57, type metadata accessor for SessionConfiguration.Backend);
    sub_22DF4B9B8(v57, v58, type metadata accessor for SessionConfiguration.Backend);

    v59 = sub_22DF63714();
    v60 = sub_22DF63D24();

    if (os_log_type_enabled(v59, v60))
    {
      v61 = *(v0 + 1880);
      v62 = *(v0 + 1872);
      v63 = *(v0 + 1864);
      v64 = *(v0 + 1856);
      v65 = *(v0 + 1608);
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v102 = v67;
      *v66 = 136446722;
      *(v66 + 4) = sub_22DEF0354(v64, v63, &v102);
      *(v66 + 12) = 2082;
      *(v66 + 14) = sub_22DEF0354(v62, v61, &v102);
      *(v66 + 22) = 2082;
      v68 = sub_22DF09280();
      v70 = v69;
      sub_22DF4B920(v65, type metadata accessor for SessionConfiguration.Backend);
      v71 = sub_22DEF0354(v68, v70, &v102);

      *(v66 + 24) = v71;
      _os_log_impl(&dword_22DEEA000, v59, v60, "writing sendOneMessage to transparency log %{public}s:%{public}s for backend %{public}s", v66, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x2318DDBE0](v67, -1, -1);
      MEMORY[0x2318DDBE0](v66, -1, -1);
    }

    else
    {
      v72 = *(v0 + 1608);

      sub_22DF4B920(v72, type metadata accessor for SessionConfiguration.Backend);
    }

    v73 = *(v0 + 1984);
    v74 = *(v0 + 1616);
    *(v0 + 2016) = sub_22DF09280();
    *(v0 + 2024) = v75;
    v76 = sub_22DF443AC;
    v77 = v73;
  }

  return MEMORY[0x2822009F8](v76, v77, 0);
}

uint64_t sub_22DF488B8()
{
  v42 = v0;
  v1 = *(v0 + 257);
  v2 = *(v0 + 255);
  v3 = *(v0 + 214);

  v4 = v1;
  v5 = sub_22DF63714();
  v6 = sub_22DF63D04();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 257);
    v8 = *(v0 + 230);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v41 = v10;
    *v9 = 136446210;
    swift_getErrorValue();
    v11 = *(v0 + 180);
    v12 = *(v0 + 181);
    v13 = *(v0 + 182);
    v14 = sub_22DF64244();
    v16 = sub_22DEF0354(v14, v15, &v41);

    *(v9 + 4) = v16;
    _os_log_impl(&dword_22DEEA000, v5, v6, "immediate backend failed to send events: %{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x2318DDBE0](v10, -1, -1);
    MEMORY[0x2318DDBE0](v9, -1, -1);

    swift_unknownObjectRelease();
  }

  else
  {
    v17 = *(v0 + 257);
    v18 = *(v0 + 230);

    swift_unknownObjectRelease();
  }

  if (*(*(v0 + 224) + 16))
  {
    v19 = *(v0 + 235);
    v20 = *(v0 + 233);
    v21 = *(v0 + 214);

    v22 = sub_22DF63714();
    v23 = sub_22DF63D24();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = *(v0 + 235);
      v25 = *(v0 + 234);
      v26 = *(v0 + 233);
      v27 = *(v0 + 232);
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v41 = v29;
      *v28 = 136446466;
      *(v28 + 4) = sub_22DEF0354(v27, v26, &v41);
      *(v28 + 12) = 2082;
      *(v28 + 14) = sub_22DEF0354(v25, v24, &v41);
      _os_log_impl(&dword_22DEEA000, v22, v23, "caching sendOneMessage %{public}s:%{public}s", v28, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2318DDBE0](v29, -1, -1);
      MEMORY[0x2318DDBE0](v28, -1, -1);
    }

    v30 = *(v0 + 198);
    v31 = *(*(v0 + 195) + 144);
    sub_22DF63554();
    v32 = swift_task_alloc();
    *(v0 + 258) = v32;
    *v32 = v0;
    v32[1] = sub_22DF45088;
    v33 = *(v0 + 246);
    v34 = *(v0 + 245);
    v35 = *(v0 + 244);
    v36 = v0[217];
    v37 = *(v0 + 198);

    return sub_22DF01C9C((v0 + 93), v37, v36, v35, v34, v33);
  }

  else
  {
    v39 = *(v0 + 220);
    v40 = *v39 + 256;
    v0[260] = *v40;
    *(v0 + 261) = v40 & 0xFFFFFFFFFFFFLL | 0x1E4F000000000000;

    return MEMORY[0x2822009F8](sub_22DF453C8, v39, 0);
  }
}

uint64_t sub_22DF48C60()
{
  v20 = v0;
  v1 = v0[259];
  v2 = v0[214];
  v3 = v1;
  v4 = sub_22DF63714();
  v5 = sub_22DF63D04();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[259];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v7 = 136446210;
    swift_getErrorValue();
    v9 = v0[174];
    v10 = v0[175];
    v11 = v0[176];
    v12 = sub_22DF64244();
    v14 = sub_22DEF0354(v12, v13, &v19);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_22DEEA000, v4, v5, "failed to cache sendOneMessage event: %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x2318DDBE0](v8, -1, -1);
    MEMORY[0x2318DDBE0](v7, -1, -1);
  }

  else
  {
    v15 = v0[259];
  }

  v16 = v0[220];
  v17 = *v16 + 256;
  v0[260] = *v17;
  v0[261] = v17 & 0xFFFFFFFFFFFFLL | 0x1E4F000000000000;

  return MEMORY[0x2822009F8](sub_22DF453C8, v16, 0);
}

_xpc_connection_s *sub_22DF48E14()
{
  v62 = v0;
  v1 = *(v0 + 2200);
  v2 = *(v0 + 2144);
  v3 = *(v0 + 1696);
  v4 = *(v0 + 1688);
  __swift_destroy_boxed_opaque_existential_0((v0 + 1016));
  sub_22DF4B9B8(v3, v4, type metadata accessor for CachedSession);
  v5 = v1;
  v6 = sub_22DF63714();
  v7 = sub_22DF63D04();

  if (os_log_type_enabled(v6, v7))
  {
    v57 = *(v0 + 2200);
    v8 = *(v0 + 1688);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 136446466;
    v12 = *(v8 + 16);
    v11 = *(v8 + 32);
    v13 = *(v8 + 48);
    *(v0 + 632) = *v8;
    *(v0 + 648) = v12;
    *(v0 + 680) = v13;
    *(v0 + 664) = v11;
    v14 = *(v0 + 632);
    v15 = *(v0 + 640);
    v16 = *(v0 + 648);
    v17 = *(v0 + 656);
    v59 = v10;
    v60 = v14;
    v61 = v15;
    sub_22DEF0F4C(v0 + 632, v0 + 688);

    MEMORY[0x2318DCA20](58, 0xE100000000000000);
    MEMORY[0x2318DCA20](v16, v17);
    sub_22DF4B920(v8, type metadata accessor for CachedSession);
    sub_22DEF0FA8(v0 + 632);
    v18 = sub_22DEF0354(v60, v15, &v59);

    *(v9 + 4) = v18;
    *(v9 + 12) = 2080;
    swift_getErrorValue();
    v19 = *(v0 + 1176);
    v20 = *(v0 + 1184);
    v21 = *(v0 + 1192);
    v22 = sub_22DF64244();
    v24 = sub_22DEF0354(v22, v23, &v59);

    *(v9 + 14) = v24;
    _os_log_impl(&dword_22DEEA000, v6, v7, "unable to determine sampling for identity %{public}s with error %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2318DDBE0](v10, -1, -1);
    MEMORY[0x2318DDBE0](v9, -1, -1);
  }

  else
  {
    v25 = *(v0 + 1688);

    sub_22DF4B920(v25, type metadata accessor for CachedSession);
  }

  reply = xpc_dictionary_create_reply(*(v0 + 1552));
  if (reply)
  {
    v27 = reply;
    v28 = *(v0 + 1560);
    v29 = MessageKeys.samplingOutcome.unsafeMutableAddressor();
    v30 = *v29;
    v31 = v29[1];

    v32 = ServiceSamplingOutcome.rawValue.getter(6);
    v33 = sub_22DF63A34();

    xpc_dictionary_set_int64(v27, (v33 + 32), v32);

    result = swift_beginAccess();
    v35 = *(v28 + 112);
    if (v35)
    {
      swift_beginAccess();
      result = *(v35 + 16);
      if (result)
      {
        v36 = *(v0 + 2144);
        xpc_connection_send_message(result, v27);
        v37 = sub_22DF63714();
        v38 = sub_22DF63CE4();
        v39 = os_log_type_enabled(v37, v38);
        v40 = *(v0 + 2200);
        v41 = *(v0 + 1696);
        if (v39)
        {
          v42 = swift_slowAlloc();
          *v42 = 0;
          _os_log_impl(&dword_22DEEA000, v37, v38, "CheckSamplingResult Error Reply Sent", v42, 2u);
          MEMORY[0x2318DDBE0](v42, -1, -1);
          swift_unknownObjectRelease();
        }

        else
        {

          swift_unknownObjectRelease();
        }

        sub_22DF4B920(v41, type metadata accessor for CachedSession);
        goto LABEL_12;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return result;
  }

  v43 = *(v0 + 2200);
  sub_22DF4B920(*(v0 + 1696), type metadata accessor for CachedSession);

LABEL_12:
  v44 = *(v0 + 1704);
  v45 = *(v0 + 1696);
  v46 = *(v0 + 1688);
  v47 = *(v0 + 1664);
  v48 = *(v0 + 1656);
  v49 = *(v0 + 1648);
  v50 = *(v0 + 1640);
  v51 = *(v0 + 1632);
  v52 = *(v0 + 1624);
  v53 = *(v0 + 1616);
  v55 = *(v0 + 1608);
  v56 = *(v0 + 1600);
  v58 = *(v0 + 1584);

  v54 = *(v0 + 8);

  return v54();
}

void sub_22DF492D8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_22DF63744();
  swift_unknownObjectRelease();
  if (v4 == a1)
  {
    if (qword_27DA4D8F0 != -1)
    {
      swift_once();
    }

    v16 = sub_22DF63734();
    __swift_project_value_buffer(v16, qword_27DA4D8F8);

    v17 = sub_22DF63714();
    v18 = sub_22DF63CE4();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v28 = v20;
      *v19 = 136446210;
      *(v19 + 4) = sub_22DEF0354(v2[16], v2[17], &v28);
      _os_log_impl(&dword_22DEEA000, v17, v18, "XPC client %{public}s closed connection", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x2318DDBE0](v20, -1, -1);
      MEMORY[0x2318DDBE0](v19, -1, -1);
    }

    v21 = v2[22];
    sub_22DF3E714();
  }

  else
  {
    v5 = sub_22DF63754();
    swift_unknownObjectRelease();
    if (v5 == a1)
    {
      if (qword_27DA4D8F0 != -1)
      {
        swift_once();
      }

      v22 = sub_22DF63734();
      __swift_project_value_buffer(v22, qword_27DA4D8F8);

      oslog = sub_22DF63714();
      v23 = sub_22DF63CE4();

      if (os_log_type_enabled(oslog, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v28 = v25;
        *v24 = 136446210;
        *(v24 + 4) = sub_22DEF0354(v2[16], v2[17], &v28);
        _os_log_impl(&dword_22DEEA000, oslog, v23, "XPC client %{public}s interrupted connection", v24, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v25);
        MEMORY[0x2318DDBE0](v25, -1, -1);
        MEMORY[0x2318DDBE0](v24, -1, -1);
      }
    }

    else
    {
      v6 = MEMORY[0x2318DDEE0](a1);
      v7 = sub_22DF63AA4();
      v9 = v8;
      if (qword_27DA4D8F0 != -1)
      {
        swift_once();
      }

      v10 = sub_22DF63734();
      __swift_project_value_buffer(v10, qword_27DA4D8F8);

      v11 = sub_22DF63714();
      v12 = sub_22DF63CE4();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v28 = v14;
        *v13 = 136315138;
        v15 = sub_22DEF0354(v7, v9, &v28);

        *(v13 + 4) = v15;
        _os_log_impl(&dword_22DEEA000, v11, v12, "XPC connection triggered error: %s", v13, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v14);
        MEMORY[0x2318DDBE0](v14, -1, -1);
        MEMORY[0x2318DDBE0](v13, -1, -1);
      }

      else
      {
      }

      v26 = v2[22];
      sub_22DF3E714();

      free(v6);
    }
  }
}

uint64_t sub_22DF49704(uint64_t a1, uint64_t a2)
{
  v3[35] = a2;
  v3[36] = v2;
  v3[34] = a1;
  v3[37] = *v2;
  v4 = *(*(sub_22DF63594() - 8) + 64) + 15;
  v3[38] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA47600, &unk_22DF660C0) - 8) + 64) + 15;
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();
  v3[43] = swift_task_alloc();
  v3[44] = swift_task_alloc();
  v3[45] = swift_task_alloc();
  v3[46] = swift_task_alloc();
  v3[47] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22DF49858, v2, 0);
}

_xpc_connection_s *sub_22DF49858()
{
  v152 = v0;
  v1 = *(v0 + 376);
  v2 = *(v0 + 280);
  v3 = MessageKeys.sendOneMessageSessionInfo.unsafeMutableAddressor();
  v4 = *v3;
  v5 = v3[1];

  XPCDictionary.subscript.getter(v2, v1);

  v6 = type metadata accessor for XPCObject();
  v7 = *(*(v6 - 8) + 48);
  v8 = v7(v1, 1, v6);
  v9 = *(v0 + 376);
  if (v8 == 1)
  {
    sub_22DEF1364(*(v0 + 376), &unk_27DA47600, &unk_22DF660C0);
    goto LABEL_8;
  }

  v10 = *(v0 + 376);
  if (swift_getEnumCaseMultiPayload() == 12)
  {
    v11 = *(v0 + 368);
    v12 = *(v0 + 280);
    v13 = *v9;
    v14 = MessageKeys.sendOneMessageEvent.unsafeMutableAddressor();
    v15 = *v14;
    v16 = v14[1];

    XPCDictionary.subscript.getter(v12, v11);

    v17 = v7(v11, 1, v6);
    v18 = *(v0 + 368);
    if (v17 == 1)
    {
      swift_unknownObjectRelease();
      sub_22DEF1364(v18, &unk_27DA47600, &unk_22DF660C0);
      goto LABEL_8;
    }

    v49 = *(v0 + 368);
    if (swift_getEnumCaseMultiPayload() == 12)
    {
      v50 = *(v0 + 360);
      v51 = *v18;
      v52 = MessageKeys.eventType.unsafeMutableAddressor();
      v53 = *v52;
      v54 = v52[1];

      XPCDictionary.subscript.getter(v13, v50);

      v55 = v7(v50, 1, v6);
      v56 = *(v0 + 360);
      if (v55 == 1)
      {
LABEL_24:
        sub_22DEF1364(v56, &unk_27DA47600, &unk_22DF660C0);
LABEL_34:
        if (qword_27DA4D8F0 != -1)
        {
          swift_once();
        }

        v72 = *(v0 + 288);
        v73 = sub_22DF63734();
        __swift_project_value_buffer(v73, qword_27DA4D8F8);

        v74 = sub_22DF63714();
        v75 = sub_22DF63D04();

        if (os_log_type_enabled(v74, v75))
        {
          v76 = *(v0 + 288);
          v77 = swift_slowAlloc();
          v78 = swift_slowAlloc();
          v151 = v78;
          *v77 = 136446210;
          *(v77 + 4) = sub_22DEF0354(*(v76 + 128), *(v76 + 136), &v151);
          _os_log_impl(&dword_22DEEA000, v74, v75, "missing required values in create session from %{public}s", v77, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v78);
          MEMORY[0x2318DDBE0](v78, -1, -1);
          MEMORY[0x2318DDBE0](v77, -1, -1);
        }

        reply = xpc_dictionary_create_reply(*(v0 + 280));
        if (!reply)
        {
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          goto LABEL_18;
        }

        v80 = reply;
        v81 = *(v0 + 288);
        xpc_dictionary_set_string(reply, "error", "missing required sendOneMessage event fields");
        result = swift_beginAccess();
        v82 = *(v81 + 112);
        if (v82)
        {
          swift_beginAccess();
          result = *(v82 + 16);
          if (result)
          {
            xpc_connection_send_message(result, v80);
            v32 = sub_22DF63714();
            v83 = sub_22DF63CE4();
            if (os_log_type_enabled(v32, v83))
            {
              v84 = swift_slowAlloc();
              *v84 = 0;
              _os_log_impl(&dword_22DEEA000, v32, v83, "CheckSamplingResult Error Reply Sent", v84, 2u);
              MEMORY[0x2318DDBE0](v84, -1, -1);
            }

            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            goto LABEL_17;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        goto LABEL_81;
      }

      v57 = *(v0 + 360);
      if (swift_getEnumCaseMultiPayload() == 8)
      {
        v58 = *(v0 + 352);
        v59 = v56[1];
        v150 = *v56;
        v60 = MessageKeys.clientType.unsafeMutableAddressor();
        v61 = *v60;
        v62 = v60[1];

        XPCDictionary.subscript.getter(v13, v58);

        v63 = v7(v58, 1, v6);
        v56 = *(v0 + 352);
        if (v63 == 1)
        {

          goto LABEL_24;
        }

        v64 = *(v0 + 352);
        if (swift_getEnumCaseMultiPayload() == 8)
        {
          v65 = *(v0 + 344);
          v148 = *v56;
          xdict = v51;
          v66 = v56[1];
          v67 = MessageKeys.transportConfiguration.unsafeMutableAddressor();
          v68 = *v67;
          v69 = v67[1];

          XPCDictionary.subscript.getter(v13, v65);

          v70 = v7(v65, 1, v6);
          v71 = *(v0 + 344);
          if (v70 == 1)
          {

            sub_22DEF1364(v71, &unk_27DA47600, &unk_22DF660C0);
            goto LABEL_34;
          }

          v147 = v66;
          if (swift_getEnumCaseMultiPayload() != 12)
          {

            sub_22DF4B920(v71, type metadata accessor for XPCObject);
            goto LABEL_34;
          }

          v146 = v59;
          v85 = *(v0 + 336);
          v86 = *v71;
          v87 = MessageKeys.tcAllowsCellularAccess.unsafeMutableAddressor();
          v89 = *v87;
          v88 = v87[1];

          XPCDictionary.subscript.getter(v86, v85);

          v90 = v7(v85, 1, v6);
          v91 = *(v0 + 336);
          if (v90 == 1)
          {
            sub_22DEF1364(*(v0 + 336), &unk_27DA47600, &unk_22DF660C0);
            goto LABEL_56;
          }

          v92 = *(v0 + 336);
          if (swift_getEnumCaseMultiPayload() != 2)
          {
            goto LABEL_55;
          }

          v93 = *(v0 + 328);
          v145 = *v91;
          v94 = MessageKeys.tcAllowsExpensiveAccess.unsafeMutableAddressor();
          v96 = *v94;
          v95 = v94[1];

          XPCDictionary.subscript.getter(v86, v93);

          v97 = v7(v93, 1, v6);
          v91 = *(v0 + 328);
          if (v97 == 1)
          {
            sub_22DEF1364(*(v0 + 328), &unk_27DA47600, &unk_22DF660C0);
            goto LABEL_56;
          }

          v98 = *(v0 + 328);
          if (swift_getEnumCaseMultiPayload() == 2)
          {
            v99 = *(v0 + 320);
            v144 = *v91;
            v100 = MessageKeys.tcBundleID.unsafeMutableAddressor();
            v102 = *v100;
            v101 = v100[1];

            XPCDictionary.subscript.getter(v86, v99);

            v103 = v6;
            v104 = v7(v99, 1, v6);
            v105 = *(v0 + 320);
            if (v104 == 1)
            {
              sub_22DEF1364(*(v0 + 320), &unk_27DA47600, &unk_22DF660C0);
              goto LABEL_56;
            }

            v121 = *(v0 + 320);
            if (swift_getEnumCaseMultiPayload() == 8)
            {
              v122 = *(v0 + 296);
              v142 = v105[1];
              v143 = *v105;
              *(v0 + 264) = sub_22DEFF370(MEMORY[0x277D84F90]);
              xpc_dictionary_get_count(xdict);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47590, &unk_22DF65E20);
              sub_22DF63914();
              v123 = swift_allocObject();
              *(v123 + 16) = v0 + 264;
              *(v123 + 24) = v122;
              v124 = swift_allocObject();
              *(v124 + 16) = sub_22DF4B980;
              *(v124 + 24) = v123;
              *(v0 + 104) = sub_22DEFF554;
              *(v0 + 112) = v124;
              *(v0 + 72) = MEMORY[0x277D85DD0];
              *(v0 + 80) = 1107296256;
              *(v0 + 88) = sub_22DEFBBE8;
              *(v0 + 96) = &block_descriptor_2;
              v125 = _Block_copy((v0 + 72));
              v126 = *(v0 + 112);
              swift_unknownObjectRetain();

              xpc_dictionary_apply(xdict, v125);
              swift_unknownObjectRelease();
              _Block_release(v125);
              LOBYTE(v126) = swift_isEscapingClosureAtFileLocation();

              if (v126)
              {
LABEL_81:
                __break(1u);
                goto LABEL_82;
              }

              v127 = *(v0 + 312);
              v128 = MessageKeys.samplingUUID.unsafeMutableAddressor();
              v130 = *v128;
              v129 = *(v128 + 1);

              XPCDictionary.subscript.getter(v13, v127);

              v131 = v7(v127, 1, v103);
              v132 = *(v0 + 312);
              if (v131 == 1)
              {
                sub_22DEF1364(*(v0 + 312), &unk_27DA47600, &unk_22DF660C0);
              }

              else
              {
                v133 = *(v0 + 312);
                if (swift_getEnumCaseMultiPayload() == 8)
                {
                  v134 = *v132;
                  v135 = v132[1];
LABEL_75:
                  v136 = *(v0 + 304);
                  v137 = *(v0 + 272);
                  type metadata accessor for Session();
                  v138 = sub_22DF18860(v134, v135);

                  *(v0 + 16) = v148;
                  *(v0 + 24) = v147;
                  *(v0 + 32) = v150;
                  *(v0 + 40) = v146;
                  *(v0 + 48) = v145;
                  *(v0 + 49) = v144;
                  *(v0 + 56) = v143;
                  *(v0 + 64) = v142;
                  sub_22DF63554();
                  v139 = *(v0 + 264);

                  sub_22DF186B4(v0 + 16, 0x4D656E4F646E6553, 0xEE00656761737365, v136, v139, v137, v138);
                  swift_unknownObjectRelease();
                  swift_unknownObjectRelease();
                  swift_unknownObjectRelease();
                  v140 = type metadata accessor for CachedSession();
                  (*(*(v140 - 8) + 56))(v137, 0, 1, v140);
                  v141 = *(v0 + 264);

                  goto LABEL_19;
                }

                sub_22DF4B920(v132, type metadata accessor for XPCObject);
              }

              v134 = 0;
              v135 = 0;
              goto LABEL_75;
            }

            sub_22DF4B920(v105, type metadata accessor for XPCObject);
          }

          else
          {
LABEL_55:
            sub_22DF4B920(v91, type metadata accessor for XPCObject);
          }

LABEL_56:
          if (qword_27DA4D8F0 == -1)
          {
            goto LABEL_57;
          }

          goto LABEL_78;
        }
      }

      sub_22DF4B920(v56, type metadata accessor for XPCObject);
      goto LABEL_34;
    }

    swift_unknownObjectRelease();
    v19 = v18;
  }

  else
  {
    v19 = v9;
  }

  sub_22DF4B920(v19, type metadata accessor for XPCObject);
LABEL_8:
  if (qword_27DA4D8F0 != -1)
  {
    swift_once();
  }

  v20 = *(v0 + 288);
  v21 = sub_22DF63734();
  __swift_project_value_buffer(v21, qword_27DA4D8F8);

  v22 = sub_22DF63714();
  v23 = sub_22DF63D04();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = *(v0 + 288);
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v151 = v26;
    *v25 = 136446210;
    *(v25 + 4) = sub_22DEF0354(*(v24 + 128), *(v24 + 136), &v151);
    _os_log_impl(&dword_22DEEA000, v22, v23, "missing required values for sendOneMessage from %{public}s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v26);
    MEMORY[0x2318DDBE0](v26, -1, -1);
    MEMORY[0x2318DDBE0](v25, -1, -1);
  }

  v27 = xpc_dictionary_create_reply(*(v0 + 280));
  if (!v27)
  {
    goto LABEL_18;
  }

  v28 = v27;
  v29 = *(v0 + 288);
  xpc_dictionary_set_string(v27, "error", "missing required sendOneMessage fields");
  swift_beginAccess();
  v30 = *(v29 + 112);
  if (!v30)
  {
    __break(1u);
    goto LABEL_77;
  }

  swift_beginAccess();
  v31 = *(v30 + 16);
  if (!v31)
  {
LABEL_77:
    __break(1u);
LABEL_78:
    swift_once();
LABEL_57:
    v106 = *(v0 + 288);
    v107 = sub_22DF63734();
    __swift_project_value_buffer(v107, qword_27DA4D8F8);

    v108 = sub_22DF63714();
    v109 = sub_22DF63D04();

    if (os_log_type_enabled(v108, v109))
    {
      v110 = *(v0 + 288);
      v111 = swift_slowAlloc();
      v112 = swift_slowAlloc();
      v151 = v112;
      *v111 = 136446210;
      *(v111 + 4) = sub_22DEF0354(*(v110 + 128), *(v110 + 136), &v151);
      _os_log_impl(&dword_22DEEA000, v108, v109, "missing required values in transport configuration from %{public}s", v111, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v112);
      MEMORY[0x2318DDBE0](v112, -1, -1);
      MEMORY[0x2318DDBE0](v111, -1, -1);
    }

    v113 = xpc_dictionary_create_reply(*(v0 + 280));
    if (!v113)
    {
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      goto LABEL_18;
    }

    v114 = v113;
    v115 = *(v0 + 288);
    xpc_dictionary_set_string(v113, "error", "missing required sendOneMessage event fields");
    result = swift_beginAccess();
    v116 = *(v115 + 112);
    if (v116)
    {
      result = swift_beginAccess();
      v117 = *(v116 + 16);
      if (v117)
      {
        v118 = *(v116 + 16);
        swift_unknownObjectRetain();

        xpc_connection_send_message(v117, v114);
        swift_unknownObjectRelease();
        v32 = sub_22DF63714();
        v119 = sub_22DF63CE4();
        if (os_log_type_enabled(v32, v119))
        {
          v120 = swift_slowAlloc();
          *v120 = 0;
          _os_log_impl(&dword_22DEEA000, v32, v119, "CheckSamplingResult Error Reply Sent", v120, 2u);
          MEMORY[0x2318DDBE0](v120, -1, -1);
        }

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        goto LABEL_17;
      }

LABEL_83:
      __break(1u);
      return result;
    }

LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  xpc_connection_send_message(v31, v28);
  v32 = sub_22DF63714();
  v33 = sub_22DF63CE4();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_22DEEA000, v32, v33, "CheckSamplingResult Error Reply Sent", v34, 2u);
    MEMORY[0x2318DDBE0](v34, -1, -1);
  }

LABEL_17:
  swift_unknownObjectRelease();

LABEL_18:
  v35 = *(v0 + 272);
  v36 = type metadata accessor for CachedSession();
  (*(*(v36 - 8) + 56))(v35, 1, 1, v36);
LABEL_19:
  v38 = *(v0 + 368);
  v37 = *(v0 + 376);
  v40 = *(v0 + 352);
  v39 = *(v0 + 360);
  v42 = *(v0 + 336);
  v41 = *(v0 + 344);
  v44 = *(v0 + 320);
  v43 = *(v0 + 328);
  v46 = *(v0 + 304);
  v45 = *(v0 + 312);

  v47 = *(v0 + 8);

  return v47();
}

BOOL sub_22DF4A88C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
    sub_22DF096AC();
  }

  while ((sub_22DF63974() & 1) == 0);
  return v4 != 0;
}

uint64_t sub_22DF4A910()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 136);

  v3 = *(v0 + 144);

  v4 = *(v0 + 152);

  v5 = *(v0 + 160);

  v6 = *(v0 + 168);

  v7 = *(v0 + 176);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_22DF4A970()
{
  sub_22DF4A910();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_22DF4A99C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_22DF63F34();
  *a1 = result;
  return result;
}

uint64_t sub_22DF4A9C8()
{
  v2 = *v0;
  sub_22DF642A4();
  sub_22DF63944();
  return sub_22DF642D4();
}

uint64_t sub_22DF4AA2C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  sub_22DF4B70C(&unk_27DA47B90, a2, type metadata accessor for Client);
  v4 = sub_22DF63F34();
  return MEMORY[0x2318DD240](v4);
}

uint64_t sub_22DF4AAA4()
{
  v2 = *v0;
  sub_22DF642A4();
  sub_22DF63944();
  return sub_22DF642D4();
}

BOOL sub_22DF4AB0C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_22DF4B70C(&unk_27DA47B90, a2, type metadata accessor for Client);
  v4 = sub_22DF63F34();
  return v4 == sub_22DF63F34();
}

void sub_22DF4ABA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v47 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47BC0, &unk_22DF65300);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v46 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v44 - v8;
  v10 = type metadata accessor for ServiceEventValue();
  v48 = *(v10 - 8);
  v11 = *(v48 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA47600, &unk_22DF660C0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v44 - v16;
  v18 = type metadata accessor for XPCObject();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v44 - v24;
  v45 = sub_22DF63AA4();
  v27 = v26;
  v28 = swift_unknownObjectRetain();
  XPCObject.init(_:)(v28, v17);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {

    v29 = &unk_27DA47600;
    v30 = &unk_22DF660C0;
    v31 = v17;
  }

  else
  {
    sub_22DF4BA20(v17, v25, type metadata accessor for XPCObject);
    sub_22DF4B9B8(v25, v23, type metadata accessor for XPCObject);
    sub_22DEFADA0(v23, v9);
    v32 = v48;
    if ((*(v48 + 48))(v9, 1, v10) != 1)
    {
      sub_22DF4BA20(v9, v13, type metadata accessor for ServiceEventValue);
      v43 = v46;
      sub_22DF4B9B8(v13, v46, type metadata accessor for ServiceEventValue);
      (*(v32 + 56))(v43, 0, 1, v10);
      sub_22DEFBA28(v43, v45, v27);
      sub_22DF4B920(v13, type metadata accessor for ServiceEventValue);
      sub_22DF4B920(v25, type metadata accessor for XPCObject);
      return;
    }

    sub_22DF4B920(v25, type metadata accessor for XPCObject);

    v29 = &qword_27DA47BC0;
    v30 = &unk_22DF65300;
    v31 = v9;
  }

  sub_22DEF1364(v31, v29, v30);
  v33 = MEMORY[0x2318DE010](a2);
  xpc_type_get_name(v33);
  v34 = sub_22DF63AA4();
  v36 = v35;
  if (qword_27DA4D8F0 != -1)
  {
    swift_once();
  }

  v37 = sub_22DF63734();
  __swift_project_value_buffer(v37, qword_27DA4D8F8);

  v38 = sub_22DF63714();
  v39 = sub_22DF63D04();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v49 = v41;
    *v40 = 136446210;
    v42 = sub_22DEF0354(v34, v36, &v49);

    *(v40 + 4) = v42;
    _os_log_impl(&dword_22DEEA000, v38, v39, "skipping invalid payload value of type %{public}s", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v41);
    MEMORY[0x2318DDBE0](v41, -1, -1);
    MEMORY[0x2318DDBE0](v40, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_22DF4B0CC()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_22DEEFBD4;

  return sub_22DF418D4(v5, v6, v7, v2, v3, v4);
}

unint64_t sub_22DF4B174(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v6 = a3;
  }

  v7 = 7;
  if (((a4 >> 60) & ((a3 & 0x800000000000000) == 0)) != 0)
  {
    v7 = 11;
  }

  v8 = v7 | (v6 << 16);
  while (1)
  {
    if (v8 < 0x4000)
    {
      return 0;
    }

    v8 = sub_22DF63A74();
    v13[0] = sub_22DF63B04();
    v13[1] = v9;
    v10 = a1(v13);
    if (v4)
    {
      break;
    }

    v11 = v10;

    if (v11)
    {
      return v8;
    }
  }

  return v8;
}

uint64_t sub_22DF4B278(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v16 = v4 + v2;
  }

  else
  {
    v16 = v4;
  }

  v3 = sub_22DF0F210(isUniquelyReferenced_nonNull_native, v16, 1, v3);
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
  v9 = (v3[3] >> 1) - v3[2];
  result = type metadata accessor for SessionConfiguration.Backend(0);
  v10 = *(result - 8);
  if (v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v10 + 72);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v13 = v3[2];
  v14 = __OFADD__(v13, v2);
  v15 = v13 + v2;
  if (!v14)
  {
    v3[2] = v15;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_22DF4B3A4(unint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 < a1 >> 14)
  {
    __break(1u);
  }

  return MEMORY[0x2821FBFB0]();
}

uint64_t sub_22DF4B3F0(uint64_t a1)
{
  v2 = type metadata accessor for SessionConfiguration.Backend(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 8;
  v7 = type metadata accessor for SessionConfiguration.BackendHTTP(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0) + 8;
  v22[0] = a1;

  result = sub_22DF4B278(v11);
  v13 = v22[0];
  v14 = *(v22[0] + 16);
  if (v14)
  {
    v15 = 0;
    while (1)
    {
      if (v15 >= *(v13 + 16))
      {
        __break(1u);
        goto LABEL_17;
      }

      sub_22DF4B9B8(v13 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v15, v6, type metadata accessor for SessionConfiguration.Backend);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        break;
      }

      ++v15;
      result = sub_22DF4B920(v6, type metadata accessor for SessionConfiguration.Backend);
      if (v14 == v15)
      {
        goto LABEL_6;
      }
    }

    v16 = sub_22DF4BA20(v6, v10, type metadata accessor for SessionConfiguration.BackendHTTP);
    result = sub_22DF09568(v16);
    v17 = result;
    v18 = *(result + 16);
    if (!v18)
    {
LABEL_12:

      sub_22DF4B920(v10, type metadata accessor for SessionConfiguration.BackendHTTP);
      return 0;
    }

    v19 = 0;
    v20 = result + 32;
    while (v19 < *(v17 + 16))
    {
      sub_22DEF2388(v20, v22);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA47BB0, "2?");
      result = swift_dynamicCast();
      if (result)
      {

        sub_22DF4B920(v10, type metadata accessor for SessionConfiguration.BackendHTTP);
        return v21;
      }

      ++v19;
      v20 += 40;
      if (v18 == v19)
      {
        goto LABEL_12;
      }
    }

LABEL_17:
    __break(1u);
  }

  else
  {
LABEL_6:

    return 0;
  }

  return result;
}

uint64_t sub_22DF4B70C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_22DF4B780(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22DF4B7C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22DF4B824(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_22DF4B920(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22DF4B9B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22DF4BA20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22DF4BAA8()
{
  v1 = v0;
  v2 = sub_22DF630C4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CacheError(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (&v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_22DF51578(v1, v10, type metadata accessor for CacheError);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      (*(v3 + 32))(v6, v10, v2);
      v20 = 0;
      v21 = 0xE000000000000000;
      sub_22DF63F24();

      v15 = 0x800000022DF6F720;
      v16 = 0xD000000000000028;
    }

    else
    {
      (*(v3 + 32))(v6, v10, v2);
      v20 = 0;
      v21 = 0xE000000000000000;
      sub_22DF63F24();

      v15 = 0x800000022DF6F750;
      v16 = 0xD000000000000026;
    }

    v20 = v16;
    v21 = v15;
    goto LABEL_11;
  }

  if (EnumCaseMultiPayload == 2)
  {
    (*(v3 + 32))(v6, v10, v2);
    v20 = 0;
    v21 = 0xE000000000000000;
    sub_22DF63F24();
    MEMORY[0x2318DCA20](0xD000000000000031, 0x800000022DF6F6E0);
LABEL_11:
    sub_22DF4BFFC(&unk_27DA47330, MEMORY[0x277CC8620]);
    v17 = sub_22DF64244();
    MEMORY[0x2318DCA20](v17);

    v14 = v20;
    (*(v3 + 8))(v6, v2);
    return v14;
  }

  if (EnumCaseMultiPayload != 3)
  {
    return 0x727265206B636F6DLL;
  }

  v12 = *v10;
  v20 = 0;
  v21 = 0xE000000000000000;
  sub_22DF63F24();

  v20 = 0xD00000000000002BLL;
  v21 = 0x800000022DF6F6B0;
  swift_getErrorValue();
  v13 = sub_22DF64244();
  MEMORY[0x2318DCA20](v13);

  return v20;
}

uint64_t sub_22DF4BE38()
{
  v0 = sub_22DF63734();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22DF2E560();
  (*(v1 + 16))(v4, v5, v0);
  v6 = sub_22DF63714();
  v7 = sub_22DF63D14();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_22DEEA000, v6, v7, "mock error", v8, 2u);
    MEMORY[0x2318DDBE0](v8, -1, -1);
  }

  (*(v1 + 8))(v4, v0);
  type metadata accessor for CacheError(0);
  sub_22DF4BFFC(&qword_27DA47BE8, type metadata accessor for CacheError);
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  return swift_willThrow();
}

uint64_t sub_22DF4BFFC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22DF4C0B0(uint64_t a1, const char *a2, int a3)
{
  v35 = a2;
  v5 = sub_22DF630C4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22DF63734();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22DF2E560();
  v16 = *(v11 + 16);
  v36 = v10;
  v16(v14, v15, v10);
  v17 = *(v6 + 16);
  v38 = v6 + 16;
  v39 = a1;
  v18 = v5;
  v37 = v17;
  v17(v9, a1, v5);
  v19 = sub_22DF63714();
  v20 = sub_22DF63D14();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v32 = v21;
    v33 = swift_slowAlloc();
    v40 = v33;
    *v21 = 136446210;
    sub_22DF4BFFC(&unk_27DA47330, MEMORY[0x277CC8620]);
    v22 = sub_22DF64244();
    v34 = a3;
    v24 = v23;
    (*(v6 + 8))(v9, v18);
    v25 = sub_22DEF0354(v22, v24, &v40);

    v26 = v32;
    *(v32 + 1) = v25;
    v27 = v20;
    v28 = v26;
    _os_log_impl(&dword_22DEEA000, v19, v27, v35, v26, 0xCu);
    v29 = v33;
    __swift_destroy_boxed_opaque_existential_0(v33);
    MEMORY[0x2318DDBE0](v29, -1, -1);
    MEMORY[0x2318DDBE0](v28, -1, -1);
  }

  else
  {

    (*(v6 + 8))(v9, v5);
  }

  (*(v11 + 8))(v14, v36);
  type metadata accessor for CacheError(0);
  sub_22DF4BFFC(&qword_27DA47BE8, type metadata accessor for CacheError);
  swift_allocError();
  v37(v30, v39, v18);
  swift_storeEnumTagMultiPayload();
  return swift_willThrow();
}

id sub_22DF4C448(void *a1)
{
  v2 = sub_22DF63734();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22DF2E560();
  (*(v3 + 16))(v6, v7, v2);
  v8 = a1;
  v9 = sub_22DF63714();
  v10 = sub_22DF63D14();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v20 = v2;
    v12 = v11;
    v13 = swift_slowAlloc();
    v21 = v13;
    *v12 = 136446210;
    swift_getErrorValue();
    v14 = sub_22DF64244();
    v16 = sub_22DEF0354(v14, v15, &v21);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_22DEEA000, v9, v10, "unable to access storebag cache (UNKNOWN): %{public}s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x2318DDBE0](v13, -1, -1);
    MEMORY[0x2318DDBE0](v12, -1, -1);

    (*(v3 + 8))(v6, v20);
  }

  else
  {

    (*(v3 + 8))(v6, v2);
  }

  type metadata accessor for CacheError(0);
  sub_22DF4BFFC(&qword_27DA47BE8, type metadata accessor for CacheError);
  swift_allocError();
  *v17 = a1;
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  return a1;
}

uint64_t sub_22DF4C6C8()
{
  v0 = sub_22DF63734();
  __swift_allocate_value_buffer(v0, qword_27DA4E6C8);
  __swift_project_value_buffer(v0, qword_27DA4E6C8);
  return sub_22DF63724();
}

uint64_t sub_22DF4C74C()
{
  swift_beginAccess();
  v1 = *(v0 + 112);
}

uint64_t sub_22DF4C784(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 112);
  *(v1 + 112) = a1;
}

uint64_t sub_22DF4C81C()
{
  swift_beginAccess();
  v1 = *(v0 + 120);
}

uint64_t sub_22DF4C854(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 120);
  *(v1 + 120) = a1;
}

uint64_t sub_22DF4C8EC()
{
  swift_beginAccess();
  v1 = *(v0 + 128);
  return swift_unknownObjectRetain();
}

uint64_t sub_22DF4C924(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 128);
  *(v1 + 128) = a1;
  return swift_unknownObjectRelease();
}

void *sub_22DF4C9C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v32 = sub_22DF63444();
  v10 = *(v32 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v32);
  v31[0] = v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v31 - v14;
  v16 = *(v5 + 48);
  v17 = *(v5 + 52);
  v31[1] = v5;
  v18 = swift_allocObject();
  swift_defaultActor_initialize();
  v18[16] = 0;
  v18[15] = 0;
  v18[14] = a1;
  swift_beginAccess();
  v18[15] = a2;
  v19 = a4;
  swift_beginAccess();
  v18[16] = a3;
  swift_unknownObjectRetain();
  v31[3] = a2;

  v20 = v31[2];
  sub_22DF2FA30(a4, 0x67616265726F7473, 0xEA00000000002F73, v15);
  if (v20)
  {
    v23 = v18[14];

    v24 = v18[15];

    v25 = v18[16];
    swift_unknownObjectRelease();
    v26 = v32;
    swift_defaultActor_destroy();

    swift_unknownObjectRelease();
    (*(v10 + 8))(v19, v26);
    v27 = *(*v18 + 48);
    v28 = *(*v18 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v21 = v32;
    (*(v10 + 32))(v18 + OBJC_IVAR____TtC19CloudTelemetryTools13StorebagCache_storebagCacheURL, v15, v32);
    type metadata accessor for StorebagSource();
    v22 = v31[0];
    (*(v10 + 16))(v31[0], a4, v21);
    v30 = sub_22DF2A2FC(v22);
    (*(v10 + 8))(a4, v32);

    swift_unknownObjectRelease();
    *(v18 + OBJC_IVAR____TtC19CloudTelemetryTools13StorebagCache_storebagSource) = v30;
  }

  return v18;
}

uint64_t sub_22DF4CCDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v41 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA47BF0, &unk_22DF697A0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v40 = &v39 - v9;
  v10 = sub_22DF63594();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for CachedStorebag(0);
  v42 = *(v15 - 8);
  v16 = *(v42 + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v39 - v21;
  v23 = (*(*v3 + 128))(v20);
  if (*(v23 + 16) && (v24 = sub_22DEF08FC(a1, a2), (v25 & 1) != 0))
  {
    v39 = a2;
    sub_22DF51578(*(v23 + 56) + *(v42 + 72) * v24, v19, type metadata accessor for CachedStorebag);

    sub_22DF51640(v19, v22);
    v26 = *(v15 + 20);
    sub_22DF63554();
    LOBYTE(v26) = sub_22DF63524();
    (*(v11 + 8))(v14, v10);
    if (v26)
    {
      if (qword_27DA4DB90 != -1)
      {
        swift_once();
      }

      v27 = sub_22DF63734();
      __swift_project_value_buffer(v27, qword_27DA4E6C8);
      v28 = v39;

      v29 = sub_22DF63714();
      v30 = sub_22DF63D24();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v43[0] = v32;
        *v31 = 136446210;
        *(v31 + 4) = sub_22DEF0354(a1, v39, v43);
        _os_log_impl(&dword_22DEEA000, v29, v30, "removing expired storebag %{public}s from memory cache", v31, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v32);
        MEMORY[0x2318DDBE0](v32, -1, -1);
        v28 = v39;
        MEMORY[0x2318DDBE0](v31, -1, -1);
      }

      v33 = (*(*v4 + 144))(v43);
      v34 = v40;
      sub_22DF508B0(a1, v28, v40);
      sub_22DEF1364(v34, &unk_27DA47BF0, &unk_22DF697A0);
      v33(v43, 0);
      sub_22DF515E0(v22, type metadata accessor for CachedStorebag);
      return (*(v42 + 56))(v41, 1, 1, v15);
    }

    else
    {
      v38 = v41;
      sub_22DF51640(v22, v41);
      return (*(v42 + 56))(v38, 0, 1, v15);
    }
  }

  else
  {

    v36 = v41;
    v37 = *(v42 + 56);

    return v37(v36, 1, 1, v15);
  }
}

uint64_t sub_22DF4D18C(uint64_t a1, uint64_t a2)
{
  v16[0] = sub_22DF63444();
  v4 = *(v16[0] - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v16[0]);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA47BF0, &unk_22DF697A0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v16 - v10;
  sub_22DF4CCDC(a1, a2, v16 - v10);
  v12 = type metadata accessor for CachedStorebag(0);
  v13 = 1;
  v14 = (*(*(v12 - 8) + 48))(v11, 1, v12);
  sub_22DEF1364(v11, &unk_27DA47BF0, &unk_22DF697A0);
  if (v14 == 1)
  {
    v16[2] = a1;
    v16[3] = a2;

    MEMORY[0x2318DCA20](0x7473696C702ELL, 0xE600000000000000);
    sub_22DF633B4();

    v13 = sub_22DF633C4();
    (*(v4 + 8))(v7, v16[0]);
  }

  return v13 & 1;
}

uint64_t sub_22DF4D39C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v4[29] = a3;
  v4[30] = v3;
  v4[27] = a1;
  v4[28] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47468, &qword_22DF697B0) - 8) + 64) + 15;
  v4[31] = swift_task_alloc();
  v6 = sub_22DF632E4();
  v4[32] = v6;
  v7 = *(v6 - 8);
  v4[33] = v7;
  v8 = *(v7 + 64) + 15;
  v4[34] = swift_task_alloc();
  v9 = sub_22DF63594();
  v4[35] = v9;
  v10 = *(v9 - 8);
  v4[36] = v10;
  v11 = *(v10 + 64) + 15;
  v4[37] = swift_task_alloc();
  v4[38] = swift_task_alloc();
  v4[39] = swift_task_alloc();
  v12 = sub_22DF63444();
  v4[40] = v12;
  v13 = *(v12 - 8);
  v4[41] = v13;
  v14 = *(v13 + 64) + 15;
  v4[42] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA47BF0, &unk_22DF697A0) - 8) + 64) + 15;
  v4[43] = swift_task_alloc();
  v4[44] = swift_task_alloc();
  v16 = type metadata accessor for CachedStorebag(0);
  v4[45] = v16;
  v17 = *(v16 - 8);
  v4[46] = v17;
  v18 = *(v17 + 64) + 15;
  v4[47] = swift_task_alloc();
  v4[48] = swift_task_alloc();
  v19 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_22DF4D648, v3, 0);
}

uint64_t sub_22DF4D648()
{
  v135 = v0;
  v134[2] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 360);
  v2 = *(v0 + 368);
  v3 = *(v0 + 352);
  v4 = *(v0 + 240);
  sub_22DF4CCDC(*(v0 + 224), *(v0 + 232), v3);
  if ((*(v2 + 48))(v3, 1, v1) != 1)
  {
    v10 = *(v0 + 384);
    sub_22DF51640(*(v0 + 352), v10);
    v130 = *(v10 + 8);
    v11 = *(v10 + 24);
    v129 = *(v10 + 16);
    v12 = *(v10 + 32);
    v126 = *v10;

    v128 = v11;

    v133 = v12;

    sub_22DF515E0(v10, type metadata accessor for CachedStorebag);
    goto LABEL_4;
  }

  v5 = *(v0 + 336);
  v6 = *(v0 + 232);
  v7 = *(v0 + 240);
  v8 = *(v0 + 224);
  sub_22DEF1364(*(v0 + 352), &unk_27DA47BF0, &unk_22DF697A0);
  v134[0] = v8;
  v134[1] = v6;

  MEMORY[0x2318DCA20](0x7473696C702ELL, 0xE600000000000000);
  sub_22DF633B4();

  v9 = sub_22DF633C4();
  if (v9)
  {
    v26 = *(v0 + 336);
    v27 = *(v0 + 272);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47470, &unk_22DF65BC0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22DF65900;
    v29 = *MEMORY[0x277CBE7B0];
    *(inited + 32) = *MEMORY[0x277CBE7B0];
    v30 = v29;
    sub_22DEF9A50(inited);
    swift_setDeallocating();
    sub_22DF515E0(inited + 32, type metadata accessor for URLResourceKey);
    sub_22DF63354();
    v36 = *(v0 + 280);
    v37 = *(v0 + 288);
    v39 = *(v0 + 264);
    v38 = *(v0 + 272);
    v41 = *(v0 + 248);
    v40 = *(v0 + 256);

    sub_22DF632B4();
    (*(v39 + 8))(v38, v40);
    result = (*(v37 + 48))(v41, 1, v36);
    if (result == 1)
    {
      __break(1u);
      return result;
    }

    v42 = *(v0 + 336);
    (*(*(v0 + 288) + 32))(*(v0 + 312), *(v0 + 248), *(v0 + 280));
    v43 = sub_22DF63464();
    v45 = v44;
    v46 = sub_22DF0BE94();
    sub_22DF0C6B0(v43, v45, v46, v0 + 56);
    v58 = *(v0 + 304);
    v59 = *(v0 + 312);
    v61 = *(v0 + 288);
    v60 = *(v0 + 296);
    v62 = *(v0 + 280);
    v63 = *(v0 + 64);
    sub_22DF63504();
    sub_22DF63554();
    LOBYTE(v59) = sub_22DF63524();
    v64 = *(v61 + 8);
    *(v0 + 408) = v64;
    *(v0 + 416) = (v61 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v64(v60, v62);
    if (v59)
    {
      *(v0 + 184) = *(v0 + 56);
      sub_22DEF1364(v0 + 184, &qword_27DA477F8, &unk_22DF670D0);
      *(v0 + 168) = *(v0 + 72);
      sub_22DF13A04(v0 + 168);
      *(v0 + 192) = *(v0 + 88);
      sub_22DEF1364(v0 + 192, &qword_27DA47C00, &qword_22DF670A0);
      if (qword_27DA4DB90 != -1)
      {
        swift_once();
      }

      v65 = *(v0 + 232);
      v66 = sub_22DF63734();
      __swift_project_value_buffer(v66, qword_27DA4E6C8);

      v67 = sub_22DF63714();
      v68 = sub_22DF63D24();

      if (os_log_type_enabled(v67, v68))
      {
        v70 = *(v0 + 224);
        v69 = *(v0 + 232);
        v71 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        v134[0] = v72;
        *v71 = 136446210;
        *(v71 + 4) = sub_22DEF0354(v70, v69, v134);
        _os_log_impl(&dword_22DEEA000, v67, v68, "removing expired storebag %{public}s", v71, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v72);
        MEMORY[0x2318DDBE0](v72, -1, -1);
        MEMORY[0x2318DDBE0](v71, -1, -1);
      }

      v73 = *(v0 + 336);
      v74 = [objc_opt_self() defaultManager];
      v75 = sub_22DF63394();
      *(v0 + 208) = 0;
      v76 = [v74 removeItemAtURL:v75 error:v0 + 208];

      v77 = *(v0 + 208);
      if (v76)
      {
        v78 = *(**(v0 + 240) + 232);
        v79 = v77;
        v131 = (v78 + *v78);
        v80 = v78[1];
        v81 = swift_task_alloc();
        *(v0 + 424) = v81;
        *v81 = v0;
        v81[1] = sub_22DF4EFA8;
        v82 = *(v0 + 232);
        v83 = *(v0 + 240);
        v84 = *(v0 + 224);
        v85 = *MEMORY[0x277D85DE8];

        return v131(v0 + 16, v84, v82);
      }

      v113 = *(v0 + 328);
      v132 = *(v0 + 336);
      v115 = *(v0 + 312);
      v114 = *(v0 + 320);
      v116 = *(v0 + 304);
      v117 = v64;
      v118 = *(v0 + 280);
      v119 = v77;
      sub_22DF63334();

      swift_willThrow();
      v117(v116, v118);
      v117(v115, v118);
      (*(v113 + 8))(v132, v114);
      v48 = *(v0 + 376);
      v47 = *(v0 + 384);
      v50 = *(v0 + 344);
      v49 = *(v0 + 352);
      v51 = *(v0 + 336);
      v53 = *(v0 + 304);
      v52 = *(v0 + 312);
      v54 = *(v0 + 296);
      v55 = *(v0 + 272);
      v56 = *(v0 + 248);

      v23 = *(v0 + 8);
      v57 = *MEMORY[0x277D85DE8];
      goto LABEL_5;
    }

    v130 = v63;
    v125 = v64;
    v86 = *(v0 + 368);
    v87 = *(v0 + 376);
    v88 = *(v0 + 360);
    v89 = *(v0 + 344);
    v91 = *(v0 + 232);
    v90 = *(v0 + 240);
    v127 = *(v0 + 224);
    v92 = *(v0 + 56);
    v93 = *(v0 + 80);
    v129 = *(v0 + 72);
    v133 = *(v0 + 88);
    (*(*(v0 + 288) + 16))(v87 + *(v88 + 20), *(v0 + 304), *(v0 + 280));
    v94 = *(v0 + 88);
    v95 = *(v0 + 72);
    *v87 = *(v0 + 56);
    *(v87 + 16) = v95;
    *(v87 + 32) = v94;
    sub_22DF51578(v87, v89, type metadata accessor for CachedStorebag);
    (*(v86 + 56))(v89, 0, 1, v88);
    v96 = *(*v90 + 144);

    v128 = v93;

    v97 = v96(v0 + 136);
    sub_22DF4F520(v89, v127, v91);
    v97(v0 + 136, 0);
    if (qword_27DA4DB90 != -1)
    {
      swift_once();
    }

    v126 = v92;
    v98 = *(v0 + 232);
    v99 = sub_22DF63734();
    __swift_project_value_buffer(v99, qword_27DA4E6C8);

    v100 = sub_22DF63714();
    v101 = sub_22DF63CF4();

    v102 = os_log_type_enabled(v100, v101);
    v103 = *(v0 + 376);
    v104 = *(v0 + 328);
    v105 = *(v0 + 336);
    v107 = *(v0 + 312);
    v106 = *(v0 + 320);
    v108 = *(v0 + 304);
    v109 = *(v0 + 280);
    if (v102)
    {
      v120 = *(v0 + 232);
      v123 = *(v0 + 304);
      v110 = *(v0 + 224);
      v122 = *(v0 + 312);
      v111 = swift_slowAlloc();
      v121 = v106;
      v112 = swift_slowAlloc();
      v134[0] = v112;
      *v111 = 136446210;
      *(v111 + 4) = sub_22DEF0354(v110, v120, v134);
      _os_log_impl(&dword_22DEEA000, v100, v101, "storing storebag %{public}s in cache", v111, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v112);
      MEMORY[0x2318DDBE0](v112, -1, -1);
      MEMORY[0x2318DDBE0](v111, -1, -1);

      sub_22DF515E0(v103, type metadata accessor for CachedStorebag);
      v125(v123, v109);
      v125(v122, v109);
      (*(v104 + 8))(v105, v121);
    }

    else
    {

      sub_22DF515E0(v103, type metadata accessor for CachedStorebag);
      v125(v108, v109);
      v125(v107, v109);
      (*(v104 + 8))(v105, v106);
    }

LABEL_4:
    v14 = *(v0 + 376);
    v13 = *(v0 + 384);
    v16 = *(v0 + 344);
    v15 = *(v0 + 352);
    v17 = *(v0 + 336);
    v19 = *(v0 + 304);
    v18 = *(v0 + 312);
    v20 = *(v0 + 296);
    v21 = *(v0 + 272);
    v124 = *(v0 + 248);
    v22 = *(v0 + 216);

    *v22 = v126;
    *(v22 + 8) = v130;
    *(v22 + 16) = v129;
    *(v22 + 24) = v128;
    *(v22 + 32) = v133;
    v23 = *(v0 + 8);
    v24 = *MEMORY[0x277D85DE8];
LABEL_5:

    return v23();
  }

  v31 = swift_task_alloc();
  *(v0 + 392) = v31;
  *v31 = v0;
  v31[1] = sub_22DF4E330;
  v32 = *(v0 + 232);
  v33 = *(v0 + 240);
  v34 = *(v0 + 224);
  v35 = *MEMORY[0x277D85DE8];

  return sub_22DF4F6E0(v34, v32);
}